# Note that the output of the command used here gives different results based on
# whether it has run on the pipeline agent or my Mac, but it always gives the
# same output on the same machine. I have used the pipeline agent output here as
# that's where it needs to run correctly and I can always change it for local
# debugging if need be.
PATTERN=$(cat .github/workflows/https-ssl-certificates.txt)

# Send the `echo` to `openssl s_client`` otherwise it will wait for user input
# Remove `SSL-Session` section items as they vary across runs and are irrelevant
RAW=`echo | openssl s_client -showcerts -connect hubelbauer.net:443 | grep -v "^    "`

OUTPUT=''

# Convert BASE64 lines of certificate information into textual representation
while IFS= read -r LINE; do
  # Recognize start of BASE64 line set and mark the state variable tracking it
  if [[ "$LINE" == "-----BEGIN CERTIFICATE-----" ]]; then
    # Reset the temporary certificate file cert.crt - marker will be added below
    echo "" > cert.crt

    # Print the original line to the output to delineate the start of the cert
    OUTPUT+="$LINE
"

    # Mark the state signifying reading the BASE64 line set without printing it
    BASE64=1
  fi

  # Recognize end of BASE64 line set and dump the BASE64 text translation out
  if [[ "$LINE" == "-----END CERTIFICATE-----" ]]; then
    # Add the end of the certificate marker to the temporary certificate file
    echo "$LINE" >> cert.crt

    # Run the command to convert the lines to certificate textual representation
    # Use `-noout` to make sure the certificate BASE64 is not in the output too
    TEXT=`openssl x509 -in cert.crt -text -noout`

    # Print the output of the `openssl -text` command to replace the BASE64 text
    OUTPUT+="$TEXT
"

    # Delete the certificate temporary file to leave the FS tidy after our run
    rm cert.crt

    # Unmark the state tracking that we're in the BASE64 block of the text
    unset BASE64
  fi

  # Redirect the BASE64 lines to the temporary certificate content file cert.crt
  if [[ $BASE64 ]]; then
    echo "$LINE" >> cert.crt

    # Ignore the last statement in the loop to not print the BASE64 lines out
    continue
  fi

  OUTPUT+="$LINE
"
done <<< "$RAW"

echo "Output:"
echo "$OUTPUT" | tee output
echo

echo "Pattern:"
echo "$PATTERN" | tee pattern
echo

if [ "$OUTPUT" == "$PATTERN" ]; then
  echo "Match!"
else
  echo "Not a match! Diff:"
  echo "$PATTERN" > pattern.txt
  echo "$OUTPUT" > output.txt
  diff pattern.txt output.txt
  exit 1
fi

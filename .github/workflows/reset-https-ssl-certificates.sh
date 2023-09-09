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

# Drop the triailing newlines in the output to be comparable to the pattern
OUTPUT=$(echo "$OUTPUT" | sed -Ez '$ s/\n+$//')

echo "$OUTPUT" > .github/workflows/http-ssl-certificates.txt
cat .github/workflows/http-ssl-certificates.txt
git config --global user.email "41898282+github-actions[bot]@users.noreply.github.com"
git config --global user.name "github-actions[bot]"
git add .github/workflows/http-ssl-certificates.txt
git status

if git diff-index --quiet HEAD --; then
  exit
fi

git commit -m "Update the HTTPS SSL certificates" -m "This is a generated commit"
git pull --rebase
git push

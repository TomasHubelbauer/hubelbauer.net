PATTERN="Location: https://hubelbauer.net/"

# Convert the Nginx response from CRLF to LF
OUTPUT=`curl -I --no-progress-meter http://www.hubelbauer.net | grep "^Location" | tr -d "\r"`;

echo "Output:"
echo "$OUTPUT" | tee output
echo

echo "Pattern:"
echo "$PATTERN" | tee pattern
echo

if [ "$OUTPUT" == "$PATTERN" ]; then
  echo "Match!"
else
  echo "Not a match!"
  exit 1
fi

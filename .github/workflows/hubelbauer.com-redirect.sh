PATTERN="Location: https://hubelbauer.net/"

# Convert the Nginx response from CRLF to LF
OUTPUT=`curl -I --no-progress-meter http://hubelbauer.com | grep "^Location" | tr -d "\r"`;

# Retry the command if it returns an empty string the first time around which happens sometimes
# TODO: Investigate why this happens by inspecting the response
if [ -z "$OUTPUT" ]; then
  sleep 1
  OUTPUT=`curl -I --no-progress-meter http://hubelbauer.com | grep "^Location" | tr -d "\r"`;
fi

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

# https://redirect.pizza/support/dns-type
PATTERN="2a01:7c8:e001:1a:0:0:0:6ab2"

OUTPUT=`dig hubelbauer.art +short -t AAAA`;

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

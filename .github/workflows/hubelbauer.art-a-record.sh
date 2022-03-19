# https://redirect.pizza/support/dns-type
PATTERN="89.41.169.49"

OUTPUT=`dig hubelbauer.art +short -t A`;

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

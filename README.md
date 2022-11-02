# [hubelbauer.net](https://hubelbauer.net)

![](https://github.com/tomashubelbauer/hubelbauer.net/actions/workflows/pages/pages-build-deployment/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-a-records/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-aaaa-records/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-cname-record/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/https-ssl-certificates/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/http-https-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/http-www-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/https-www-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/hubelbauer.cz-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/hubelbauer.com-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/tomashubelbauer.cz-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/tomashubelbauer.net-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/tomashubelbauer.com-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/hubelbauer.art-a-record/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/hubelbauer.art-aaaa-record/badge.svg)

This repository hosts my personal website.

## To-Do

### Decode Base64 blocks in certificate patterns prior to the comparions

https://www.sslshopper.com/certificate-decoder.html

This will make the hard-coded patterns and the diffs generated when updating
them as the LE certificates get regenerated to update their validity windows
much more readable.

I tried this in pure Bash but failed: https://stackoverflow.com/q/74295101/2715716

This mix of Bash and Python works but it is ugly:

```bash
# Feed `echo` into `openssl` so it doesn't stall on interactivity
# Drop `openssl` standard error stream to not leak into the output
# Skip `SSL-Session` section as it is variable and irrelevant
# Extract `-----BEGIN CERTIFICATE-----…-----END CERTIFICATE-----`
# Save each Base64 payload to `temp.crt` for OpenSSL to read it from
# Run `openssl x509 -in temp.crt -text -noout` to get certificate text
# Delete `temp.crt` to clean up after self and prevent mismatches
# Replace the `CERTIFICATE` block with the textual representation
echo | openssl s_client -showcerts -connect hubelbauer.net:443 2>/dev/null | grep -v "^    " | python3 -c "
import fileinput
import re
import subprocess
import os

stdin=''.join(fileinput.input())

def replace(match):
  with open('temp.crt', 'w') as text_file:
    print(match.group(), file=text_file)

  process = subprocess.run(['openssl', 'x509', '-in', 'temp.crt', '-text', '-noout'], capture_output=True, text=True)
  os.remove('temp.crt')

  return '-----BEGIN CERTIFICATE-----\n' + process.stdout + '\n-----END CERTIFICATE-----'

stdout=re.sub(r'-----BEGIN CERTIFICATE-----(\n(.*\n)+?)-----END CERTIFICATE-----', replace, stdin)

print(stdout)
"
```

### Add a workflow to push into this repo once a month to keep workflows alive

GitHub now disables workflows after 60 days of repository inactivity.

### Collect workflow runs data using GitHub API and display uptime charts

Sometimes some of the redirects act out, I would like to see how often so let's
add some charts.

### Dump extra information in a case of a workflow failure

When checking for example a DNS record or an HTTP header, in case of failure,
dump the whole DNS recordset or the whole HTTP response including all headers
and the body to aid debugging.

### Add pipelines that check DNS records of the redirect domains

While I'm at it, why not also check the DNS records of the redirect domains to
make sure they don't contain records I don't expect to see. I will likely find
records to remove while setting this up. What should be left is basically just
Wedos DNS servers and Wedos email records. I should do this for hubelbauer.net,
too, but there the situation will be a bit more complex with the Fastmail email
setup and so on.

### Reuse the DNS and redirect checking pipelines for my other domains elsewhere

For `rhaeo.net`, `rhaeo.com`, `rhaeo.cz`, set up the pipelines in its respective
repository.

For `musicblackholes.com`, set up the pipeline in its respective repository.
Also look into extra stuff like proper email setup and uptime checks.

For `onewheelprague.cz` and other domains I have not discovered yet (there are
some in CloudFlare, maybe also in Namecheap and possibly even GoDaddy?), set up
a separate repository for checking these away from this repository.

### Add tomashubelbauer.today

Forgot about this one! Need to decide whether it should be a different site or a
redirect.

### Add tom.menu and create a GitHub Pages with optional HTTPS as a link tree

This is is the only domain I have in Namecheap it seems. HTTPS optional so I can
do `curl tom.menu/x | sh` without having to specify `https://` and `-L`.

### Add a workflow to check the landing page returns a 200

This will reveal any errors in the GitHub Pages setup.

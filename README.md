# [Hubelbauer.net](https://hubelbauer.net)

This repository hosts my personal website.

## To-Do

### Update the GitHub Actions pipeline to monitor the custom domain DNS/HTTPS

Right now the commands only print their outputs and the pipeline can never fail.

Compare the command responses to hard-coded values and exit if they don't match.
DNS values come from [apex domain][apex] and [subdomain][subdomain] GitHub docs.
HTTPS certificate taken from a known good command output.
HTTP document taken froma known good command output.

[apex]: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain
[subdomain]: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain-and-the-www-subdomain-variant

### Wait for the DNS changes to go live and check that apex, WWW and HTTPS work

Once this all works out, both the apex and subdomain variants should work and
hopefully the HTTPS setup will remain intact.

# [Hubelbauer.net](https://hubelbauer.net)

This repository hosts my personal website.

## To-Do

### Add a GitHub Actions pipeline to monitor the GitHub Pages custom domain DNS

Make sure the A and AAAA records are applied correctly:

- `dig hubelbauer.net +noall +answer -t A`
- `dig hubelbauer.net +noall +answer -t AAAA`
- `dig www.hubelbauer.net +nostats +nocomments +nocmd`

Responses should match these articles: [apex setup][apex], [www setup][www].

Also monitor that HTTPS works in this pipeline and that HTTP redirects.

[apex]: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain
[www]: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain-and-the-www-subdomain-variant

### Wait for the DNS changes to go live and check that apex, WWW and HTTPS work

Once this all works out, both the apex and subdomain variants should work and
hopefully the HTTPS setup will remain intact.

# [Hubelbauer.net](https://hubelbauer.net)

![](https://github.com/TomasHubelbauer/hubelbauer.net/actions/workflows/pages/pages-build-deployment/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-a-records/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-aaaa-records/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-cname-record/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/http-html-document/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/https-ssl-certificates/badge.svg)

This repository hosts my personal website.

## Pipelines

This repository has a few pipelines associated with it (see the badges above)
and they periodicaly check the GitHub Pages custom domain setup, including the
for [apex] domain and the [www][www] subdomain, HTTP to HTTPS redirect and Let's
Encrypt SSL certificate.

[apex]: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain
[www]: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain-and-the-www-subdomain-variant

## To-Do

### Add a pipeline that checks for the WWW subdomain to apex domain redirect

It seems that if both the WWW subdomain and the apex domain are set up, GitHub
Pages sets up a redirect. It can be seen in `curl -v https://www.hubelbauer.net`
where the `Location` response header points to the apex domain.

This is different from the HTTP to HTTPS redirect that also exists, because here
the WWW URL is already HTTPS. I will need to introduce new pipelines to replace
the current `http-html-document`:

- `www-apex-redirect` checks the `Location` header for `https://www.…`
- `http-https-apex-redirect` checks the `Location` header for `http://…`
- `http-https-www-redirect` checks the `Location` header for `http://www.…`

I might drop the HTML comparison or I might keep it on top of to the `Location`
response header check in the above three pipelines.

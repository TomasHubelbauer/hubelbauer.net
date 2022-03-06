# [Hubelbauer.net](https://hubelbauer.net)

![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-a-records/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-aaaa-records/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-cname-records/badge.svg)
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

This redirect happens when I type `www.hubelbauer.net` into my browser. When
typing `https://www.hubelbauer.net`, I get a certificate error for which I have
created a different task.

It seems to redirect which might be an artifact of my browser caches and not the
intended behavior? But if it is, let's add a pipeline for it.

### Figure out why https://www.hubelbauer.net displays a certificate error

I think this might be a caching issue with the browser or perhaps GitHub having
not refreshed the certificate to account for the subdomain yet? I need to test
this later or on a separate computer.

Maybe I just need to toggle Enforce HTTPS on and off so it noties the new DNS
entry for the WWW subdomain CNAME. I might do that, but I don't want to mess up
the apex domain SSL, so I will think about it.

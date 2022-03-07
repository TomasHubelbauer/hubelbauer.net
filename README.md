# [Hubelbauer.net](https://hubelbauer.net)

![](https://github.com/TomasHubelbauer/hubelbauer.net/actions/workflows/pages/pages-build-deployment/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-a-records/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-aaaa-records/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-cname-record/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/https-ssl-certificates/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/http-https-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/http-www-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/https-www-redirect/badge.svg)

This repository hosts my personal website.

## To-Do

### Add pipelines that check the redirects to the main domain from other ones

I also have `tomashubelbauer.net` and `hubelbauer.cz` and `tomashubelbauer.cz`
which all should redirect to `hubelbauer.net` and this should be checked using
a pipeline, too.

I might also add more hollistic checks other DNS entries here. Like checking my
email configuration stays solid and static on `hubelbauer.net` and there are no
new unknown DNS entries of any kind. I will probably find a bunch to remove.

Additionally, I might want to either set up a new repository for this, or just
keep a list of my other domains here and do similar checks for them. These would
include `onewheelprague.cz`, `async-await.net` and I might buy `async-await.cz`
too.

`rhaeo.net`, `rhaeo.com`, `rhaeo.cz` I will likely add logic for in its own
repository.

`musicblackholes.com` I will have logic for in its own repository for sure. I'll
want to check more things there specific to that domain (like email).

I have a bunch of domains with other registrars, I don't even know which all,
but definitely CloudFlare, probably Namecheap and maybe GoDaddy. I will look
through those later.

# [Hubelbauer.net](https://hubelbauer.net)

![](https://github.com/TomasHubelbauer/hubelbauer.net/actions/workflows/pages/pages-build-deployment/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-a-records/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-aaaa-records/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/dns-cname-record/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/https-ssl-certificates/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/http-https-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/http-www-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/https-www-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/hubelbauer.cz-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/tomashubelbauer.cz-redirect/badge.svg)
![](https://github.com/tomashubelbauer/hubelbauer.net/workflows/tomashubelbauer.net-redirect/badge.svg)

This repository hosts my personal website.

## To-Do

### Hear back from GitHub support about why the `chmod +x` step is needed

I had to add this step to the the `tomashubelbauer.cz-redirect.yml` and
`tomashubelbauer.net-redirect.yml` workflows. I thought it was because of the
two periods in the name, but the `hubelbauer.cz-redirect.sh` workflow introduced
at the same time just worked, so it's something else. I don't think I should
need to add the `chmod` call if other shell scripts don't need it. Let's see
what's up with that.

### Add pipelines that check DNS records of the redirect domains

While I'm at it, why not also check the DNS records of the redirect domains to
make sure they don't contain records I don't expect to see. I will likely find
records to remove while setting this up. What should be left is basically just
Wedos DNS servers and Wedos email records. I should do this for hubelbauer.net,
too, but there the situation will be a bit more complex with the Fastmail email
setup and so on.

### Reuse the DNS and redirect checking pipelines for my other domains elsewhere

For `async-await.net`, set up the pipelines in its repository repo and buy the
`.cz` as well.

For `rhaeo.net`, `rhaeo.com`, `rhaeo.cz`, set up the pipelines in its respective
repository.

For `musicblackholes.com`, set up the pipeline in its respective repository.
Also look into extra stuff like proper email setup and uptime checks.

For `onewheelprague.cz` and other domains I have not discovered yet (there are
some in CloudFlare, maybe also in Namecheap and possibly even GoDaddy?), set up
a separate repository for checking these away from this repository.

### Consider buying the `.com`s and adding redirect checks for them as well

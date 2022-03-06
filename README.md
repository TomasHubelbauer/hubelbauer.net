# [Hubelbauer.net](https://hubelbauer.net)

This repository hosts my personal website.

## To-Do

### Add a GitHub Actions pipeline to monitor the GitHub Pages custom domain DNS

Make sure the A and AAAA records are applied correctly:

- `dig EXAMPLE.COM +noall +answer -t A`
- `dig EXAMPLE.COM +noall +answer -t AAAA`

Responses should match this article:

https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain.

### Configure WWW subdomain in addition to the apex domain on GitHub Pages

https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain-and-the-www-subdomain-variant

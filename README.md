# Personal Webpage

Source code for my personal webpage. Notes are written in Markdown and converted to HTML via pandoc.

## Structure

```
assets/          CSS
src/
  index.html     Main page
  pages/         Static HTML pages
  notes/         Markdown notes (built with pandoc)
  templates/     Pandoc template + lua filter
static/          File sharing (gitignored, server-only)
```

## Deployment

The site is deployed via Docker (nginx + pandoc build stage) behind Traefik. The `Dockerfile` and `docker-compose.yml` live on the server, not in this repo.

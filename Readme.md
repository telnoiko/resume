Inspired by https://github.com/paskal/resume.

# Simple automated resume builder

> Enjoy your local Resume.io 🤩

Use cases:

- separate data and the view for cv
- create pdf versions on the fly
- use different themes
- serve cv from the web-site

# Usage

Just fork/download, update `resume.json`, then use provided commands to build nice resume locally.

# Prerequisites

- Docker installed

## Set Theme

Set `THEME` in [config file](docker/.env) to one
of [existing](https://jsonresume.org/themes/) [themes](https://www.npmjs.com/search?ranking=maintenance&q=jsonresume-theme)

## To build [JSON Resume](https://jsonresume.org) local image

Run from the console from the project root directory

```shell
make image
```

## Preview generated resume on [localhost:4000](http://localhost:4000)

```shell
make serve
```

## Build resume in HTML format

```shell
make html
```

## Build resume in PDF format

There are 2 options. First one is "native" and the second one was found during development and potentially more
[customisable](https://gotenberg.dev/docs/modules/chromium).
The default one provides better result, v2 is left for further investigations.

```shell
make pdf
```

This version requires html file created in cv directory

```shell
make html
make pdf_v2
```

## To create new resume.json template

Rename or delete existing `resume.json`, then

```shell
make init
```

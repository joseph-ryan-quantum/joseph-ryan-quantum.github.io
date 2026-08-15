# josephryan00-quantumize-it.github.io

Joseph M. Ryan's research website, built with [Jekyll](https://jekyllrb.com/) using the [academicpages](https://github.com/academicpages/academicpages.github.io) template, hosted on GitHub Pages.

## Editing content

- **Bio / homepage**: `_pages/about.md`
- **CV**: `_pages/cv.md`
- **Publications**: add a Markdown file per paper in `_publications/`
- **Projects**: add a Markdown file per project in `_portfolio/`
- **Site-wide settings** (name, email, links): `_config.yml`
- **Nav bar**: `_data/navigation.yml`
- **PDFs / files**: drop into `files/`, link to them as `/files/yourfile.pdf`

Push to `main` and GitHub Pages rebuilds the site automatically within a minute or two.

## Local preview (optional)

Requires Ruby + Bundler:

```bash
bundle install
bundle exec jekyll serve
```

Then open http://localhost:4000.

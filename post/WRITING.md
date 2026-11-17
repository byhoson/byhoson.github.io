# Writing technical posts

Edit `post/<slug>/index.qmd`: Markdown, LaTeX equations, and Quarto statement
blocks. Keep images, diagrams, bibliography files, and other post-specific
assets in that same directory. HTML is generated output, never the writing source.

## Preview as you write

From the repository root:

```bash
make preview
```

Open the URL printed in the terminal (normally `http://localhost:4200`). Keep the
command running and save `post/technical-example/index.qmd`: the browser refreshes
automatically. This still renders automatically behind the scenes; you do not
run a build or push after every edit. Stop with Ctrl+C.

For another post:

```bash
make preview POST=my-post
```

The Quarto VS Code extension also provides a Preview command for `.qmd` files.
Install it if you prefer an editor command to a terminal.

## Start a post

```bash
mkdir -p post/my-post
cp post/_template.qmd post/my-post/index.qmd
make preview POST=my-post
```

Change the title and date, then write. Single dollar signs mark inline math;
double dollar signs mark display math. The example post contains copyable
theorems, folded proofs, inference rules, and commutative diagrams.

Add a link in `post.md`, for example:

```markdown
* [My post](/post/my-post/)
```

For a figure saved as `post/my-post/figure.svg`, write:

```markdown
![A descriptive caption](figure.svg)
```

## Publish through the existing homepage

```bash
make render
```

Commit the `.qmd` source, the generated `index.html`, and any post-specific assets,
then push as usual. The existing Jekyll deployment copies the generated HTML to
`/post/<slug>/`; no GitHub Pages settings or custom build action is required.
Run `make render` before pushing so the published page matches your latest source.

Quarto embeds its CSS and JavaScript into each generated HTML file. There are no
handwritten support files to maintain in `asset/`. MathJax may still load math
fonts and extensions from a CDN, so fully offline mathematical preview is not
guaranteed.

## Quarto installation

This checkout has a portable Quarto copy in `.tools/quarto/`, which is ignored by
Git. `make` uses it automatically. On another machine, install Quarto from
<https://quarto.org/docs/get-started/> and use the same commands. No Python, R,
or Jupyter installation is needed for these prose-only posts.

Shared formatting options live in `post/_quarto.yml`. You can write future posts
without changing that file or editing HTML, CSS, or JavaScript.

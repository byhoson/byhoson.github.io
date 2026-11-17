# Use a system installation, or the portable copy in this checkout.
QUARTO ?= $(if $(wildcard .tools/quarto/bin/quarto),.tools/quarto/bin/quarto,quarto)
POST ?= technical-example
export XDG_CACHE_HOME := $(CURDIR)/.tools/cache
export XDG_DATA_HOME := $(CURDIR)/.tools/data

.PHONY: preview render

# Open the printed URL in your browser. Saving the source refreshes the page.
preview:
	$(QUARTO) preview post/$(POST)/index.qmd --no-browser --port 4200

# Generated HTML stays beside each post's source. Commit it before pushing.
render:
	$(QUARTO) render post

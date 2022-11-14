# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?= -W --keep-going
SOURCEDIR     = ./spec
BUILDDIR      = _site

.PHONY: all clean build

all: clean build

clean:
	-rm -rf $(BUILDDIR)
	-rm -rf $(SOURCEDIR)/**/generated

build:
	-mkdir -p $(BUILDDIR)
	-cp "$(SOURCEDIR)/_gitignore.txt" "$(BUILDDIR)/.gitignore"
	-cp "$(SOURCEDIR)/versions.json" "$(BUILDDIR)/versions.json"
	-cp "$(SOURCEDIR)/index.html" "$(BUILDDIR)/index.html"
	-touch "$(BUILDDIR)/.nojekyll"
	-sphinx-build "$(SOURCEDIR)/2021.12" "$(BUILDDIR)/2021.12" $(SPHINXOPTS)
	-cp -r "$(BUILDDIR)/2021.12" "$(BUILDDIR)/latest"
	-sphinx-build "$(SOURCEDIR)/draft" "$(BUILDDIR)/draft" $(SPHINXOPTS)

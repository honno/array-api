# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?= -W --keep-going
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile clean

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

clean:
	-rm -rf $(BUILDDIR)
	-rm -rf $(SOURCEDIR)/**/generated

build:
	-mkdir -p $(BUILDDIR)
	-cp "$(SOURCEDIR)/versions.json" "$(BUILDDIR)/versions.json"
	-$(SPHINXBUILD) "$(SOURCEDIR)/2021.12" "$(BUILDDIR)/2021.12" $(SPHINXOPTS)
	-cp -r "$(BUILDDIR)/2021.12" "$(BUILDDIR)/latest"
	-$(SPHINXBUILD) "$(SOURCEDIR)/draft" "$(BUILDDIR)/draft" $(SPHINXOPTS)
	-cp "$(SOURCEDIR)/index.html" "$(BUILDDIR)/index.html"
	-touch "$(BUILDDIR)/.nojekyll"

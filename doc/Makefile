export VISITORS_BUILDING_DOCUMENTATION=true

include ../Makefile.preprocess

# From test/ppx_import we read source files only, not preprocessed files.
# This allows us to build the manual without installing ppx_import, which
# is fortunate, as this package tends to be often late / unavailable.

export TEXINPUTS=.:../test:../test/ppx_import:

ML         := $(shell ls ../test/*.ml | grep -v cppo | grep -v processed)
PROCESSED  := $(patsubst %.ml,%.processed.ml,$(ML))

.PHONY: all loop view clean prerequisites sources

all: prerequisites
	make sources
	latexmk -g -pdf manual

loop: prerequisites
	make sources
	latexmk -pdf -pvc manual

view: all
	open manual.pdf

clean:
	rm -f $(PROCESSED)
	git clean -fdX

# We need the following packages, plus visitors itself,
# which we install in the current switch.
prerequisites:
	opam install --yes ocp-indent
	make -C .. install

sources: $(wildcard *.tex) $(wildcard *.bib) $(wildcard *.sty) $(ML) $(PROCESSED)

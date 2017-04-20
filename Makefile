# config.mk
PROJECT_NAME = fhtex
BUILD_DIRECTORY = build
MAIN_DIRECTORY = main

CHAPTER_LIST = chapter1,chapter2
#/config.mk

LATEX_ARGS = -output-directory ${BUILD_DIRECTORY}

fhtex.pdf: */*.tex
	pdflatex ${LATEX_ARGS} ${MAIN_DIRECTORY}/${PROJECT_NAME}.tex ; \
		mv ${BUILD_DIRECTORY}/*.pdf ./


.PHONY: build_directory
build_directory:
	mkdir -p ${BUILD_DIRECTORY}

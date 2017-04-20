# config.mk
PROJECT_NAME = fhtex
BUILD_DIRECTORY = build
MAIN_DIRECTORY = main

CHAPTER_LIST = chapter1,chapter2
#/config.mk

LATEX_ARGS = -output-directory ${BUILD_DIRECTORY}
MK_BUILD_DIRECTORY = mkdir -p ${BUILD_DIRECTORY}

${PROJECT_NAME}.pdf: */*.tex
	${MK_BUILD_DIRECTORY} ; \
	pdflatex ${LATEX_ARGS} ${MAIN_DIRECTORY}/${PROJECT_NAME}.tex ; \
		mv ${BUILD_DIRECTORY}/*.pdf ./

.PHONY: clean
clean:
	rm -r ${BUILD_DIRECTORY} ${PROJECT_NAME}

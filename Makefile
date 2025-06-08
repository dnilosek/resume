.PHONY: examples docker

CC = xelatex
RESUME_DIR = resume
OUTDIR = build
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

resume.pdf: resume.tex $(RESUME_SRCS)
	mkdir -p ${OUTDIR}
	$(CC) -output-directory=$(OUTDIR) $<

docker: resume.tex $(RESUME_SRCS)
	docker run -it --rm \
		--mount "type=bind,source=$(shell pwd),target=/data" \
		--name "latex-builder" \
		blang/latex:ctanfull \
		sh -c "cd /data && mkdir -p build && xelatex -output-directory=build resume.tex"

clean:
	rm -rf $(RESUME_DIR)/*.pdf
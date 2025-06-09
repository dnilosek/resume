# Dave Nilosek's Resume

This repository contains my resume built with [RenderCV](https://rendercv.com/).

## Download

The latest PDF version is available from the [releases page](https://github.com/dnilosek/resume/releases/latest/download/Dave_Nilosek_CV.pdf).

## Building Locally

Requirements:
- Python 3.10+

```bash
pip install -r requirements.txt
rendercv render "Dave_Nilosek_CV.yaml"
```

The PDF will be generated in `rendercv_output/Dave_Nilosek_CV.pdf`.

## Automatic Builds

The resume is automatically built and released on every push to the master branch via GitHub Actions.
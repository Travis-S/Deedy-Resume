Resume
=========================
My fork of the Deedy-Resume repository.

A **one page**, **two asymmetric column** resume template in **XeTeX** that caters particularly to an **undergraduate Computer Science** student.
As of **v1.3**, there is an option to choose from two templates:

1. **MacFonts** - uses fonts native to OSX - *Helvetica*, *Helvetica Neue* (and it's Light and Ultralight versions) and the CJK fonts *Heiti SC*, and *Heiti TC*. The EULA of these fonts prevents distribution on Open Source.
2. **OpenFonts** - uses free open sourced variants that resemble the above. We use *Lato* (and many of its variants) and *Raleway*.

It is licensed under the Apache License 2.0.

## Use

Users should modify the file `resume.xtx` with their own resume information. Then, to compile the resume into a font format `foo`, simply use the code `make foo`. The Makefile will take care of ensuring the correct font family is used in the compilation. See the Makefile for more information.


## Motivation

Common LaTeX resume-builders such as [**moderncv**](http://www.latextemplates.com/template/moderncv-cv-and-cover-letter)  and the [**friggeri-cv**](https://github.com/afriggeri/cv) look great if you're okay with a multipage resume with numerous citations, but usually isn't ideal for making a thorough single-page one. A lot of companies today search resumes based on [keywords](http://www.businessinsider.com/most-big-companies-have-a-tracking-system-that-scans-your-resume-for-keywords-2012-1) but at the same time require/prefer a one page resume, especially for undergraduates. 

This template attempts to **not look horrible**, allow **detail**, be a **single page**, and allow useful **LaTeX templating**.

## Preview
See the attached pdfs in the repository to preview how the resume would look.

## Dependencies

1. Compiles only with **XeTeX** and required **BibTex** for compiling publications and the .bib filetype.
2. Uses fonts that are usually only available to **Mac** users such as Helvetica Neue Light.

## Changelog

### v1.3
1. Merged together the OpenFonts and MacFonts directories in favor of  a single `fonts` directory,
and provided support for compiling into different font styles using a make file.

### v1.2
 1. Added publications in place of societies.
 2. Collapsed a portion of education.
 3. Fixed a bug with alignment of overflowing long last updated dates on the top right. 

### v1.1
 1. Fixed several compilation bugs with \renewcommand
 2. Got Open-source fonts (Windows/Linux support)
 3. Added Last Updated
 4. Move Title styling into .sty
 5. Commented .sty file.

## TODO
1. Provide explanation of the various input parameters to the resume, to facilitate
easy development of a new resume from the template.

## Known Issues:
1. Overflows onto second page if any column's contents are more than the vertical limit
2. Hacky space on the first bullet point on the second column.
3. Hacky redefinition of \refname to omit 'References' text for publications in the MacFonts version.

## License
    Copyright 2014 Debarghya Das

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

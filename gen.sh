#!/bin/bash
emacsclient --eval "(let ((file \"$(pwd)/resume.org\"))
    (with-current-buffer (find-file-noselect file)
    (progn
        (org-latex-export-to-pdf)
	(let ((org-export-with-drawers t))
        (org-md-export-to-markdown)))))"
cp resume.md README.md

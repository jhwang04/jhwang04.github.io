;; Copied from SystemCrafters.net's "Build Your Website with Org Mode"

;; Load the publishing system
(require 'ox-publish)

;; Define the publishing project
(setq org-publish-project-alist
      (list
       (list "Justin-Hwangs-Portfolio"
            :recursive t
            :base-directory "./content"
            :publishing-directory "./docs"
            :publishing-function 'org-html-publish-to-html
            :with-author nil        ;; Don't include author name
            :with-creator t         ;; Include Emacs and Org version in footer
            :with-toc t             ;; Table of contents
            :section-numbers nil    ;; Section numbers
            :time-stamp-file nil))) ;; Time stamp

(setq org-html-validation-link nil
      org-html-head-include-default-style nil)
;;      org-html-head "<link rel=\"stylesheet\" href=\"https://gongzhitaao.org/orgcss/org.css\"/>")

;; Generate the site output
(org-publish-all t)

(message "Build Complete!")

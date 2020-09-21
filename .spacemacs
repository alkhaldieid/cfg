;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(;;; prose
     (auto-completion :variables
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-complete-with-key-sequence-delay 0.0
                      auto-completion-minimum-prefix-length 1
                      auto-completion-idle-delay 0.0
                      auto-completion-private-snippets-directory nil
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip t
                      auto-completion-use-company-box nil
                      auto-completion-enable-sort-by-usage t)
     (spell-checking :variables
                     spell-checking-enable-by-default nil
                     spell-checking-enable-auto-dictionary t
                     enable-flyspell-auto-completion t
                     )
     (syntax-checking :variables
                      syntax-checking-enable-tooltips t
                      syntax-checking-enable-by-default t
                      syntax-checking-auto-hide-tooltips 5
                      )
     ;; Python stuff
     (python :variables
             python-backend 'anaconda
             python-formatter 'yapf
             python-format-on-save t
             python-fill-column 99
             python-sort-imports-on-save t

             )
     (conda :variables
            conda-anaconda-home "/home/alkhaldieid/anaconda3/"
            python-test-runner 'pytest
            python-formatter 'yapf
            python-format-on-save t
            python-save-before-test t
            python-fill-column 99
            python-sort-imports-on-save t
            )
     ipython-notebook
     bibtex
     (latex :variables
            latex-enable-folding t
            latex-enable-magic t
            latex-enable-auto-fill t
            magic-latex-enable-block-align t
            magic-latex-enable-inline-image t
            magic-latex-enable-pretty-symbols t
            magic-latex-enable-block-highlight t
            magic-latex-enable-suscript t
            )
     (org :variables
           org-enable-github-support t
           org-projectile-file "/home/alkhaldieid/Dropbox/TODOs.org"
           ;;; enables Twitter
           org-enable-bootstrap-support t
           org-enable-org-journal-support t
           org-journal-dir "~/Dropbox/org/roam"
           org-journal-file-format "%Y-%m-%d"
           org-journal-date-prefix "#+TITLE: "
           org-journal-date-format "%A, %B %d %Y"
           org-journal-time-prefix "* "
           org-journal-time-format ""
           org-enable-trello-support t
           org-projectile-file "~/Dropbox/TODOs.org"
           org-enable-sticky-header t
           )
     helm
     shell
     html
     pdf
     ( better-defaults :variables
                       better-defaults-move-to-beginning-of-code-first t
                       better-defaults-move-to-end-of-code-first t
     )
     helpful
     emacs-lisp
     git
     markdown
     quickurl
     semantic
     emoji
     (unicode-fonts :variables unicode-fonts-force-multi-color-on-mac t)
     spell-checking
     ;; multiple-cursors :variables multiple-cursors-backend 'evil-mc
     syntax-checking
     version-control
     ;; private layers
     org-roam
     org-roam-bibtex
     org-noter
     synosaurus
     (deft :variables
           deft-zetteldeft t
           deft-default-extension "org"
           deft-use-filename-as-title nil
           deft-use-filter-string-for-filename t
           ;; disable auto-save
           deft-auto-save-interval -1.0
           ;; converts the filter string into a readable file-name using kebab-case:
           deft-file-naming-rules
           '((noslash . "-")
             (nospace . "-")
             (case-fn . downcase))
           )
     ;; extras
     themes-megapack
     (search-engine :variables
                    browse-url-browser-function 'browse-url-generic
                    engine/browser-function 'browse-url-generic
                    browse-url-generic-program "brave-browser")
     github
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      helm-recoll
                                      )

   ;; (org-recoll :location (recipe :fetcher github :repo "alraban/org-recoll"));; awqat :location (recipe
                                       ;;                  :fetcher github
                                       ;;                  :repo "zkry/awqat")))
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))
;;(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
;;  TeX-view-program-list '(("PDF Tools" TeX-pdf-tools-sync-view))
;;  TeX-source-correlate-start-server t;;
;;)
(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `to/usedos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 8)
                                (projects . 7)
                                (agenda . 4)
                                (todos . 4))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         tango-dark)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 24
                               :weight normal
                               :width normal
                               :powerline-scale 1.2)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position `right-then-bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar nil
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 30
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers 'relative
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep" "recoll")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing
   dotspacemacs-mode-line-theme 'vim-powerline
   ;; dotspacemacs-configuration-layers '(pdf-tools)

   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first." ; then define packages you use
  ;; (load-file "/home/alkhaldieid/.ihsec/mybuild/org-recoll/")
  ;; (setq ein:use-auto-complete t)
  ;; (setq ein:complete-on-dot t)
  ;; (setq ein:completion-backend 'ein:use-company-backend)
  ;; (setq ein:use-auto-complete-superpack t)
  ;; (setq ein:use-smartrep nil)
;;; making org roam dir = org notes dir = deft dir
  (setq
   org_notes (concat (getenv "HOME") "/Dropbox/org/roam/")
   zot_bib (concat (getenv "HOME") "/Dropbox/mend/library.bib")
   org-directory org_notes
   deft-directory org_notes
   org-roam-directory org_notes
   )
  (setq
   bibtex-completion-notes-path "/home/alkhaldieid/Dropbox/org/roam/"
   bibtex-completion-bibliography "/Dropbox/mend/library.bib"
   bibtex-completion-pdf-field "file"
   bibtex-completion-notes-template-multiple-files
   (concat
    "#+TITLE: ${title}\n"
    "#+ROAM_KEY: cite:${=key=}\n"
    "* TODO Notes\n"
    ":PROPERTIES:\n"
    ":Custom_ID: ${=key=}\n"
    ":NOTER_DOCUMENT: %(orb-process-file-field \"${=key=}\")\n"
    ":AUTHOR: ${author-abbrev}\n"
    ":JOURNAL: ${journaltitle}\n"
    ":DATE: ${date}\n"
    ":YEAR: ${year}\n"
    ":DOI: ${doi}\n"
    ":URL: ${url}\n"
    ":END:\n\n"
    )
   )
;;;;;;;;;;;;;;;;;;;;;;;;;; My functions ;;;;;;;;;;;;;;;;;;
  (defun my-org-screenshot ()
    "Take a screenshot into a time stamped unique-named file in the
same directory as the org-buffer and insert a link to this file."
    (interactive)
    (setq filename
          (concat
           (make-temp-name
            (concat (buffer-file-name)
                    "_"
                    (format-time-string "%Y%m%d_%H%M%S_")) ) ".png"))
    (call-process "import" nil nil nil filename)
    (insert (concat "[[" filename "]]"))
    (org-display-inline-images))

  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;;;; to fix the 'no org-babel-execute function for latex' when evaluating
  ;;; src_block latex
  ;; org settings
  ;; org settings
  (setq user-full-name "Eid Alkhaldi")
  (require 'ox)
  (require 'ox-latex)
  (setq org-latex-create-formula-image-program 'dvipng)
  (org-babel-do-load-languages 'org-babel-load-languages '((latex . t)))
  (with-eval-after-load 'org-agenda
    (require 'org-projectile)
    (mapcar #'(lambda (file)
               (when (file-exists-p file)
                 (push file org-agenda-files)))
            (org-projectile-todo-files)))



  (global-company-mode)
  ;; (add-to-list 'load-path "/home/alkhaldieid/.emacs.d/private/org-recoll/org-recoll")
  ;; (require 'org-recoll)
  (menu-bar-mode 1)
  (add-to-list 'deft-extensions "tex")
  (setq
  bibtex-completion-notes-path "/home/alkhaldieid/Dropbox/org/roam/notes"
  bibtex-completion-bibliography "/home/alkhaldieid/Dropbox/mend/library.bib"
  bibtex-completion-pdf-field "file"
  bibtex-completion-notes-template-multiple-files
  (concat
    "#+TITLE: ${title}\n"
    "#+ROAM_KEY: cite:${=key=}\n"
    "* TODO Notes\n"
    ":PROPERTIES:\n"
    ":Custom_ID: ${=key=}\n"
    ":NOTER_DOCUMENT: %(orb-process-file-field \"${=key=}\")\n"
    ":AUTHOR: ${author-abbrev}\n"
    ":JOURNAL: ${journaltitle}\n"
    ":DATE: ${date}\n"
    ":YEAR: ${year}\n"
    ":DOI: ${doi}\n"
    ":URL: ${url}\n"
    ":END:\n\n"
    )
  )
  (setq
         org-ref-completion-library 'org-ref-ivy-cite
         org-ref-get-pdf-filename-function 'org-ref-get-pdf-filename-helm-bibtex
         org-ref-default-bibliography (list "/home/alkhaldieid/Dropbox/mend/library.bib")
         org-ref-bibliography-notes "/home/alkhaldieid/Dropbox/org/roam/bibnotes.org"
         org-ref-note-title-format "* TODO %y - %t\n :PROPERTIES:\n  :Custom_ID: %k\n  :NOTER_DOCUMENT: %F\n :ROAM_KEY: cite:%k\n  :AUTHOR: %9a\n  :JOURNAL: %j\n  :YEAR: %y\n  :VOLUME: %v\n  :PAGES: %p\n  :DOI: %D\n  :URL: %U\n :END:\n\n"
         org-ref-notes-directory "/home/alkhaldieid/Dropbox/org/roam/"
         org-ref-notes-function 'orb-edit-notes
    )
  (setq
   org-noter-default-notes-file-name '("/home/alkhaldieid/Dropbox/notes.org")
   org-noter-default-search-path '("/home/alkhaldieid/Dropbox/mend")

   )
;; open pdfs with zathura
  ;; (setq org-ref-open-pdf-function
  ;;       (lambda (fpath)
  ;;         (start-process "zathura" "*helm-bibtex-zathura*" "/usr/bin/zathura" fpath)))
  ;; (defun bibtex-completion-pdf-open-with-evince (entry)
  ;;   (let ((pdf (bibtex-completion-find-pdf entry)))
  ;;     (call-process "zathura" nil 0 nil (car pdf))))

  ;; (ivy-add-actions
  ;;  'ivy-bibtex
  ;;  '(("P" bibtex-completion-pdf-open-with-evince "Open PDF with Evince")))

  ;;;;;;;;;;DEFT config
  (setq deft-directory "~/Dropbox/org/roam")
  ;; (synosaurus-mode 1)
  ;; (synosaurus-backend (quote synosaurus-backend-wordnet))
  ;; (synosaurus-choose-method (quote default))
  ;; (spacemacs/declare-prefix "y" "synosaurus")
  ;; (spacemacs/set-leader-keys
  ;; "yr" 'synosaurus-choose-and-replace)
  ;; (spacemacs/declare-prefix "o" "own-menu")
  ;; (spacemacs/set-leader-keys "os" 'ispell-buffer)
  ;; (add-to-list 'load-path "/home/alkhaldieid/.ihsec/mybuild/elpa/synosaurus-20191125.552")
  ;; (require 'synosaurus)
  ;; Actually start using templates
  ;; (after! org-capture
          ;; Firefox and Chrome
          (add-to-list 'org-capture-templates
                       '("P" "Protocol" entry ; key, name, type
                         (file+headline +org-capture-notes-file "Inbox") ; target
                         "* %^{Title}\nSource: %u, %c\n #+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n\n%?"
                         :prepend t ; properties
                         :kill-buffer t))
          (add-to-list 'org-capture-templates
                       '("L" "Protocol Link" entry
                         (file+headline +org-capture-notes-file "Inbox")
                         "* %? [[%:link][%(transform-square-brackets-to-round-ones \"%:description\")]]\n"
                         :prepend t
                         :kill-buffer t))
   ;;; enables the live-preview of compiled pdfs
   (add-hook 'doc-view-mode-hook 'auto-revert-mode)

;; )
)
;;   (setq user-full-name "Eid Alkhaldi")
;;   (setq line-move-visual t)
  (global-visual-line-mode t)
  ;; (spacemacs/set-font "Source Code Pro"  24)
;;   ;; from  this article  https://www.fbxiang.com/blog/2017/11/01/write_papers_with_org_mode_and_spacemacs.html
;;   (setq org-latex-pdf-process
;;         '("latexmk -pdflatex='pdflatex -interaction nonstopmode' -pdf -bibtex -f %f"))
;;   ;; (require 'org)
;;   (require 'ox-latex)
;;   (setq org-latex-create-formula-image-program 'dvipng)
;;   (org-babel-do-load-languages 'org-babel-load-languages '((latex . t)))
;;   (with-eval-after-load 'org-agenda
;;     (require 'org-projectile)
;;     (mapcar '(lambda (file)
;;                (when (file-exists-p file)
;;                  (push file org-agenda-files)))
;;             (org-projectile-todo-files)))
;;   ;;; to fix no org-babel-execute function for python
  (org-babel-do-load-languages 'org-babel-load-languages '((python . t)))

;;   (global-company-mode)
;;   ;; (add-to-list 'load-path "/home/alkhaldieid/.emacs.d/private/org-recoll/org-recoll")
;;   ;; (require 'org-recoll)
;;   (menu-bar-mode 1)
;;   (add-to-list 'deft-extensions "tex")

;;   (setq
;;    bibtex-completion-notes-path "/home/alkhaldieid/Dropbox/org/roam/"
;;    bibtex-completion-bibliography "/Dropbox/mend/library.bib"
;;    bibtex-completion-pdf-field "file"
;;    bibtex-completion-notes-template-multiple-files
;;    (concat
;;     "#+TITLE: ${title}\n"
;;     "#+ROAM_KEY: cite:${=key=}\n"
;;     "* TODO Notes\n"
;;     ":PROPERTIES:\n"
;;     ":Custom_ID: ${=key=}\n"
;;     ":NOTER_DOCUMENT: %(orb-process-file-field \"${=key=}\")\n"
;;     ":AUTHOR: ${author-abbrev}\n"
;;     ":JOURNAL: ${journaltitle}\n"
;;     ":DATE: ${date}\n"
;;     ":YEAR: ${year}\n"
;;     ":DOI: ${doi}\n"
;;     ":URL: ${url}\n"
;;     ":END:\n\n"
;;     )
;;    )
;;   (setq
;;          org-ref-completion-library 'org-ref-ivy-cite
;;          org-ref-get-pdf-filename-function 'org-ref-get-pdf-filename-helm-bibtex
;;          org-ref-default-bibliography (list "/home/alkhaldieid/Dropbox/mend/library.bib")
;;          org-ref-bibliography-notes "/home/alkhaldieid/Dropbox/org/roam/bibnotes.org"
;;          org-ref-note-title-format "* TODO %y - %t\n :PROPERTIES:\n  :Custom_ID: %k\n  :NOTER_DOCUMENT: %F\n :ROAM_KEY: cite:%k\n  :AUTHOR: %9a\n  :JOURNAL: %j\n  :YEAR: %y\n  :VOLUME: %v\n  :PAGES: %p\n  :DOI: %D\n  :URL: %U\n :END:\n\n"
;;          org-ref-notes-directory "/home/alkhaldieid/Dropbox/org/roam/"
;;          org-ref-notes-function 'orb-edit-notes
;;     )
;;   (setq
;;    org-noter-default-notes-file-name '("/home/alkhaldieid/Dropbox/notes.org")
;;    org-noter-default-search-path '("/home/alkhaldieid/Dropbox/mend")

;;    )
;; ;;;;; enable copy to the system clipboard
;;   (defun copy-to-clipboard ()
;;     "Copies selection to x-clipboard."
;;     (interactive)
;;     (if (display-graphic-p)
;;         (progn
;;           (message "Yanked region to x-clipboard!")
;;           (call-interactively 'clipboard-kill-ring-save)
;;           )
;;       (if (region-active-p)
;;           (progn
;;             (shell-command-on-region (region-beginning) (region-end) "xsel -i -b")
;;             (message "Yanked region to clipboard!")
;;             (deactivate-mark))
;;         (message "No region active; can't yank to clipboard!")))
;;     )

;;   (defun paste-from-clipboard ()
;;     "Pastes from x-clipboard."
;;     (interactive)
;;     (if (display-graphic-p)
;;         (progn
;;           (clipboard-yank)
;;           (message "graphics active")
;;           )
;;       (insert (shell-command-to-string "xsel -o -b"))
;;       )
;;     )
;;   (evil-leader/set-key "o y" 'copy-to-clipboard)
;;   (evil-leader/set-key "o p" 'paste-from-clipboard)

;;   ;;;;;;;;;;DEFT config
;;   (setq deft-directory "~/Dropbox/org/roam")
;;   ;; (synosaurus-mode 1)
;;   ;; (synosaurus-backend (quote synosaurus-backend-wordnet))
;;   ;; (synosaurus-choose-method (quote default))
;;   ;; (spacemacs/declare-prefix "y" "synosaurus")
;;   ;; (spacemacs/set-leader-keys
;;   ;; "yr" 'synosaurus-choose-and-replace)
;;   ;; (spacemacs/declare-prefix "o" "own-menu")
;;   ;; (spacemacs/set-leader-keys "os" 'ispell-buffer)
;;   ;; (add-to-list 'load-path "/home/alkhaldieid/.ihsec/mybuild/elpa/synosaurus-20191125.552")
;;   ;; (require 'synosaurus)
;;   ;; Actually start using templates
;;   ;; (after! org-capture
;;           ;; Firefox and Chrome
;;           (add-to-list 'org-capture-templates
;;                        '("P" "Protocol" entry ; key, name, type
;;                          (file+headline +org-capture-notes-file "Inbox") ; target
;;                          "* %^{Title}\nSource: %u, %c\n #+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n\n%?"
;;                          :prepend t ; properties
;;                          :kill-buffer t))
;;           (add-to-list 'org-capture-templates
;;                        '("L" "Protocol Link" entry
;;                          (file+headline +org-capture-notes-file "Inbox")
;;                          "* %? [[%:link][%(transform-square-brackets-to-round-ones \"%:description\")]]\n"
;;                          :prepend t
;;                          :kill-buffer t))
;;    ;;; enables the live-preview of compiled pdfs
;;    (add-hook 'doc-view-mode-hook 'auto-revert-mode)

;; ;; )
;;    (with-eval-after-load 'ox-latex

;;       (add-to-list 'org-latex-classes
;;                     '("myieeeconf"
;;                       "\\documentclass[a4paper, 12 pt, conference]{ieeeconf}
;;             [NO-DEFAULT-PACKAGES]
;;             [PACKAGES]
;;             [EXTRA]"
;;                       ("\\section{%s}" . "\\section*{%s}")
;;                       ("\\subsection{%s}" . "\\subsection*{%s}")
;;                       ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;;                       ("\\paragraph{%s}" . "\\paragraph*{%s}")
;;                       ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
;;       (add-to-list 'org-latex-classes
;;                    '("org-article"
;;                      "\\documentclass{org-article}
;;             [NO-DEFAULT-PACKAGES]
;;             [PACKAGES]
;;             [EXTRA]"
;;                      ("\\section{%s}" . "\\section*{%s}")
;;                      ("\\subsection{%s}" . "\\subsection*{%s}")
;;                      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;;                      ("\\paragraph{%s}" . "\\paragraph*{%s}")
;;                      ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;;       )

;;    ;; (use-package emms
;;    ;;   :ensure t
;;    ;;   :config
;;    ;;   (require 'emms-setup)
;;    ;;   (require 'emms-player-mpd)
;;    ;;   (emms-all) ; don't change this to values you see on stackoverflow questions if you expect emms to work
;;    ;;   (setq emms-seek-seconds 5)
;;    ;;   (setq emms-player-list '(emms-player-mpd))
;;    ;;   (setq emms-info-functions '(emms-info-mpd))
;;    ;;   (setq emms-player-mpd-server-name "localhost")
;;    ;;   (setq emms-player-mpd-server-port "6607")
;;    ;;   :bind
;;    ;;   ("s-m p" . emms)
;;    ;;   ("s-m b" . emms-smart-browse)
;;    ;;   ("s-m r" . emms-player-mpd-update-all-reset-cache)
;;    ;;   ("<XF86AudioPrev>" . emms-previous)
;;    ;;   ("<XF86AudioNext>" . emms-next)
;;    ;;   ("<XF86AudioPlay>" . emms-pause)
;;    ;;   ("<XF86AudioStop>" . emms-stop))

;;    ;; (setq mpc-host "localhost:6607")
;;    ;; (defun mpd/start-music-daemon ()
;;    ;;   "Start MPD, connects to it and syncs the metadata cache."
;;    ;;   (interactive)
;;    ;;   (shell-command "mpd")
;;    ;;   (mpd/update-database)
;;    ;;   (emms-player-mpd-connect)
;;    ;;   (emms-cache-set-from-mpd-all)
;;    ;;   (message "MPD Started!"))
;;    ;; (global-set-key (kbd "s-m c") 'mpd/start-music-daemon)
;;    ;; (defun mpd/kill-music-daemon ()
;;    ;;   "Stops playback and kill the music daemon."
;;    ;;   (interactive)
;;    ;;   (emms-stop)
;;    ;;   (call-process "killall" nil nil nil "mpd")
;;    ;;   (message "MPD Killed!"))
;;    ;; (global-set-key (kbd "s-m k") 'mpd/kill-music-daemon)
;;    ;; (defun mpd/update-database ()
;;    ;;   "Updates the MPD database synchronously."
;;    ;;   (interactive)
;;    ;;   (call-process "mpc" nil nil nil "update")
;;    ;;   (message "MPD Database Updated!"))
;;    ;; (global-set-key (kbd "s-m u") 'mpd/update-database)
;; )
;; ;; Do not write anything past this comment. This is where Emacs will
;; ;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (unfill mwim bibtex-completion awqat magit-gh-pulls github-search github-clone github-browse-file gist gh marshal logito pcache ht engine-mode ranger auctex-latexmk yasnippet-classic-snippets web-mode tagedit slim-mode scss-mode sass-mode pug-mode org-ref pdf-tools key-chord ivy tablist insert-shebang helm-css-scss helm-bibtex parsebib haml-mode fish-mode emmet-mode ein polymode deferred anaphora websocket company-web web-completion-data company-shell biblio biblio-core org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download htmlize gnuplot mango-dark-theme xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help conda smeargle orgit magit-gitflow magit-popup helm-gitignore gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit git-commit with-editor transient helm-company helm-c-yasnippet fuzzy flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck company-statistics company-auctex company-anaconda company auto-yasnippet yasnippet auto-dictionary auctex ac-ispell auto-complete mmm-mode markdown-toc markdown-mode gh-md yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode dash-functional helm-pydoc cython-mode anaconda-mode pythonic ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra lv hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile projectile pkg-info epl helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async notmuch))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("f56eb33cd9f1e49c5df0080a3e8a292e83890a61a89bceeaa481a5f183e8e3ef" "82360e5f96244ce8cc6e765eeebe7788c2c5f3aeb96c1a765629c5c7937c0b5b" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa96a61e4eca5f339ad7f1f3442cb5a83696f6a45d9fe2a7bf3b75fc6912bb91" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "7325707722224b12180bfdcad597c5a79b2efe061f17df8fa24a8cb82839e854" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(helm-recoll-directories (quote (("~/Dropbox/mend/" . ""))))
 '(image-dired-thumb-margin 0)
 '(org-agenda-files
   (quote
    ("~/Dropbox/org/roam/2020-08-25-1144-fuzzy.org" "~/Dropbox/TODOs.org" "~/Dropbox/planning/8-24-20.org" "~/Dropbox/TODOs.org" "~/Dropbox/second_final/paper.org")))
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 2.0 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(org-latex-prefer-user-labels t)
 '(org-roam-directory "/home/alkhaldieid/Dropbox/org/roam")
 '(org-trello-current-prefix-keybinding "C-c o" nil (org-trello))
 '(package-selected-packages
   (quote
    (flyspell-popup unfill mwim bibtex-completion awqat magit-gh-pulls github-search github-clone github-browse-file gist gh marshal logito pcache ht engine-mode ranger auctex-latexmk yasnippet-classic-snippets web-mode tagedit slim-mode scss-mode sass-mode pug-mode org-ref pdf-tools key-chord ivy tablist insert-shebang helm-css-scss helm-bibtex parsebib haml-mode fish-mode emmet-mode ein polymode deferred anaphora websocket company-web web-completion-data company-shell biblio biblio-core org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download htmlize gnuplot mango-dark-theme xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help conda smeargle orgit magit-gitflow magit-popup helm-gitignore gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit git-commit with-editor transient helm-company helm-c-yasnippet fuzzy flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck company-statistics company-auctex company-anaconda company auto-yasnippet yasnippet auto-dictionary auctex ac-ispell auto-complete mmm-mode markdown-toc markdown-mode gh-md yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode dash-functional helm-pydoc cython-mode anaconda-mode pythonic ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra lv hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile projectile pkg-info epl helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async notmuch)))
 '(preview-scale-function 2)
 '(python-indent-guess-indent-offset t)
 '(python-indent-guess-indent-offset-verbose nil)
 '(synosaurus-backend (quote synosaurus-backend-wordnet))
 '(synosaurus-choose-method (quote default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)

;;; purpleburn-theme.el --- A lazily made high contrast color theme for Emacs.
;; Author: Sebastian Hubbard <randolm@gmail.com>
;; Credits: the rest of the file is largely unmodified!

;;; zenburn-theme.el --- A low contrast color theme for Emacs.

;; Copyright (C) 2011-2013 Bozhidar Batsov

;; Author: Bozhidar Batsov <bozhidar@batsov.com>
;; URL: http://github.com/bbatsov/zenburn-emacs
;; Version: 1.8

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; A port of the popular Vim theme Zenburn for Emacs 24, built on top
;; of the new built-in theme support in Emacs 24.
;;
;;; Credits:
;;
;; Jani Nurminen created the original theme for vim on such this port
;; is based.

;;; Code:
(deftheme purpleburn "The Purpleburn color theme")

(let ((class '((class color) (min-colors 89)))
      ;; Purpleburn palette
      ;; colors with +x are lighter, colors with -x are darker
      (purpleburn-fg "#dcdccc")

      ;; these colors are the only changes from my copy of zenburn
      (purpleburn-fg-1 "#6d5275")
      (purpleburn-bg-1 "#0d0205")
      (purpleburn-bg-05 "#1d0225")
      (purpleburn-bg "#1d1225")
      (purpleburn-bg+1 "#2d2235")
      (purpleburn-bg+2 "#3d3245")
      (purpleburn-bg+3 "#4d4255")
      ;; end of the changes from zenburn

      (purpleburn-red+1 "#dca3a3")
      (purpleburn-red "#cc9393")
      (purpleburn-red-1 "#bc8383")
      (purpleburn-red-2 "#ac7373")
      (purpleburn-red-3 "#9c6363")
      (purpleburn-red-4 "#8c5353")
      (purpleburn-orange "#dfaf8f")
      (purpleburn-yellow "#f0dfaf")
      (purpleburn-yellow-1 "#e0cf9f")
      (purpleburn-yellow-2 "#d0bf8f")
      (purpleburn-green-1 "#5f7f5f")
      (purpleburn-green "#7f9f7f")
      (purpleburn-green+1 "#8fb28f")
      (purpleburn-green+2 "#9fc59f")
      (purpleburn-green+3 "#afd8af")
      (purpleburn-green+4 "#bfebbf")
      (purpleburn-cyan "#93e0e3")
      (purpleburn-blue+1 "#94bff3")
      (purpleburn-blue "#8cd0d3")
      (purpleburn-blue-1 "#7cb8bb")
      (purpleburn-blue-2 "#6ca0a3")
      (purpleburn-blue-3 "#5c888b")
      (purpleburn-blue-4 "#4c7073")
      (purpleburn-blue-5 "#366060")
      (purpleburn-magenta "#dc8cc3"))
  (custom-theme-set-faces
   'purpleburn
   '(button ((t (:underline t))))
   `(link ((t (:foreground ,purpleburn-yellow :underline t :weight bold))))
   `(link-visited ((t (:foreground ,purpleburn-yellow-2 :underline t :weight normal))))

   ;;; basic coloring
   `(default ((t (:foreground ,purpleburn-fg :background ,purpleburn-bg))))
   `(cursor ((t (:foreground ,purpleburn-fg :background "white"))))
   `(escape-glyph ((t (:foreground ,purpleburn-yellow :bold t))))
   `(fringe ((t (:foreground ,purpleburn-fg :background ,purpleburn-bg+1))))
   `(header-line ((t (:foreground ,purpleburn-yellow
                                  :background ,purpleburn-bg-1
                                  :box (:line-width -1 :style released-button)))))
   `(highlight ((t (:background ,purpleburn-bg-05))))
   `(success ((t (:foreground ,purpleburn-green :weight bold))))
   `(warning ((t (:foreground ,purpleburn-orange :weight bold))))

   ;;; compilation
   `(compilation-column-face ((t (:foreground ,purpleburn-yellow))))
   `(compilation-enter-directory-face ((t (:foreground ,purpleburn-green))))
   `(compilation-error-face ((t (:foreground ,purpleburn-red-1 :weight bold :underline t))))
   `(compilation-face ((t (:foreground ,purpleburn-fg))))
   `(compilation-info-face ((t (:foreground ,purpleburn-blue))))
   `(compilation-info ((t (:foreground ,purpleburn-green+4 :underline t))))
   `(compilation-leave-directory-face ((t (:foreground ,purpleburn-green))))
   `(compilation-line-face ((t (:foreground ,purpleburn-yellow))))
   `(compilation-line-number ((t (:foreground ,purpleburn-yellow))))
   `(compilation-message-face ((t (:foreground ,purpleburn-blue))))
   `(compilation-warning-face ((t (:foreground ,purpleburn-orange :weight bold :underline t))))
   `(compilation-mode-line-exit ((t (:foreground ,purpleburn-green+2 :weight bold))))
   `(compilation-mode-line-fail ((t (:foreground ,purpleburn-red :weight bold))))
   `(compilation-mode-line-run ((t (:foreground ,purpleburn-yellow :weight bold))))

   ;;; grep
   `(grep-context-face ((t (:foreground ,purpleburn-fg))))
   `(grep-error-face ((t (:foreground ,purpleburn-red-1 :weight bold :underline t))))
   `(grep-hit-face ((t (:foreground ,purpleburn-blue))))
   `(grep-match-face ((t (:foreground ,purpleburn-orange :weight bold))))
   `(match ((t (:background ,purpleburn-bg-1 :foreground ,purpleburn-orange :weight bold))))

   ;; faces used by isearch
   `(isearch ((t (:foreground ,purpleburn-yellow-2 :weight bold :background ,purpleburn-bg-1))))
   `(isearch-fail ((t (:foreground ,purpleburn-fg :background ,purpleburn-red-4))))
   `(lazy-highlight ((t (:foreground ,purpleburn-yellow-2 :weight bold :background ,purpleburn-bg-05))))

   `(menu ((t (:foreground ,purpleburn-fg :background ,purpleburn-bg))))
   `(minibuffer-prompt ((t (:foreground ,purpleburn-yellow))))
   `(mode-line
     ((,class (:foreground ,purpleburn-green+1
                           :background ,purpleburn-bg-1
                           :box (:line-width -1 :style released-button)))
      (t :inverse-video t)))
   `(mode-line-buffer-id ((t (:foreground ,purpleburn-yellow :weight bold))))
   `(mode-line-inactive
     ((t (:foreground ,purpleburn-green-1
                      :background ,purpleburn-bg-05
                      :box (:line-width -1 :style released-button)))))
   `(region ((,class (:background ,purpleburn-bg-1))
             (t :inverse-video t)))
   `(secondary-selection ((t (:background ,purpleburn-bg+2))))
   `(trailing-whitespace ((t (:background ,purpleburn-red))))
   `(vertical-border ((t (:foreground ,purpleburn-fg))))

   ;;; font lock
   `(font-lock-builtin-face ((t (:foreground ,purpleburn-cyan))))
   `(font-lock-comment-face ((t (:foreground ,purpleburn-green))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,purpleburn-green))))
   `(font-lock-constant-face ((t (:foreground ,purpleburn-green+4))))
   `(font-lock-doc-face ((t (:foreground ,purpleburn-green+1))))
   `(font-lock-doc-string-face ((t (:foreground ,purpleburn-blue-2))))
   `(font-lock-function-name-face ((t (:foreground ,purpleburn-blue))))
   `(font-lock-keyword-face ((t (:foreground ,purpleburn-yellow :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,purpleburn-fg))))
   `(font-lock-preprocessor-face ((t (:foreground ,purpleburn-blue+1))))
   `(font-lock-string-face ((t (:foreground ,purpleburn-red))))
   `(font-lock-type-face ((t (:foreground ,purpleburn-blue-1))))
   `(font-lock-variable-name-face ((t (:foreground ,purpleburn-orange))))
   `(font-lock-warning-face ((t (:foreground ,purpleburn-yellow-2 :weight bold))))

   `(c-annotation-face ((t (:inherit font-lock-constant-face))))

   ;;; newsticker
   `(newsticker-date-face ((t (:foreground ,purpleburn-fg))))
   `(newsticker-default-face ((t (:foreground ,purpleburn-fg))))
   `(newsticker-enclosure-face ((t (:foreground ,purpleburn-green+3))))
   `(newsticker-extra-face ((t (:foreground ,purpleburn-bg+2 :height 0.8))))
   `(newsticker-feed-face ((t (:foreground ,purpleburn-fg))))
   `(newsticker-immortal-item-face ((t (:foreground ,purpleburn-green))))
   `(newsticker-new-item-face ((t (:foreground ,purpleburn-blue))))
   `(newsticker-obsolete-item-face ((t (:foreground ,purpleburn-red))))
   `(newsticker-old-item-face ((t (:foreground ,purpleburn-bg+3))))
   `(newsticker-statistics-face ((t (:foreground ,purpleburn-fg))))
   `(newsticker-treeview-face ((t (:foreground ,purpleburn-fg))))
   `(newsticker-treeview-immortal-face ((t (:foreground ,purpleburn-green))))
   `(newsticker-treeview-listwindow-face ((t (:foreground ,purpleburn-fg))))
   `(newsticker-treeview-new-face ((t (:foreground ,purpleburn-blue :weight bold))))
   `(newsticker-treeview-obsolete-face ((t (:foreground ,purpleburn-red))))
   `(newsticker-treeview-old-face ((t (:foreground ,purpleburn-bg+3))))
   `(newsticker-treeview-selection-face ((t (:foreground ,purpleburn-yellow))))

   ;;; external
   `(ace-jump-face-background
     ((t (:foreground ,purpleburn-fg-1 :background ,purpleburn-bg :inverse-video nil))))
   `(ace-jump-face-foreground
     ((t (:foreground ,purpleburn-green+2 :background ,purpleburn-bg :inverse-video nil))))

   ;; full-ack
   `(ack-separator ((t (:foreground ,purpleburn-fg))))
   `(ack-file ((t (:foreground ,purpleburn-blue))))
   `(ack-line ((t (:foreground ,purpleburn-yellow))))
   `(ack-match ((t (:foreground ,purpleburn-orange :background ,purpleburn-bg-1 :weight bold))))

   ;; auctex
   `(font-latex-bold ((t (:inherit bold))))
   `(font-latex-warning ((t (:inherit font-lock-warning))))
   `(font-latex-sedate ((t (:foreground ,purpleburn-yellow :weight bold ))))
   `(font-latex-title-4 ((t (:inherit variable-pitch :weight bold))))

   ;; auto-complete
   `(ac-candidate-face ((t (:background ,purpleburn-bg+3 :foreground "black"))))
   `(ac-selection-face ((t (:background ,purpleburn-blue-4 :foreground ,purpleburn-fg))))
   `(popup-tip-face ((t (:background ,purpleburn-yellow-2 :foreground "black"))))
   `(popup-scroll-bar-foreground-face ((t (:background ,purpleburn-blue-5))))
   `(popup-scroll-bar-background-face ((t (:background ,purpleburn-bg-1))))
   `(popup-isearch-match ((t (:background ,purpleburn-bg :foreground ,purpleburn-fg))))

   ;; android mode
   `(android-mode-debug-face ((t (:foreground ,purpleburn-green+1))))
   `(android-mode-error-face ((t (:foreground ,purpleburn-orange :weight bold))))
   `(android-mode-info-face ((t (:foreground ,purpleburn-fg))))
   `(android-mode-verbose-face ((t (:foreground ,purpleburn-green))))
   `(android-mode-warning-face ((t (:foreground ,purpleburn-yellow))))

   ;; bm
   `(bm-face ((t (:background ,purpleburn-yellow-1 :foreground ,purpleburn-bg))))
   `(bm-fringe-face ((t (:background ,purpleburn-yellow-1 :foreground ,purpleburn-bg))))
   `(bm-fringe-persistent-face ((t (:background ,purpleburn-green-1 :foreground ,purpleburn-bg))))
   `(bm-persistent-face ((t (:background ,purpleburn-green-1 :foreground ,purpleburn-bg))))

   ;; clojure-test-mode
   `(clojure-test-failure-face ((t (:foreground ,purpleburn-orange :weight bold :underline t))))
   `(clojure-test-error-face ((t (:foreground ,purpleburn-red :weight bold :underline t))))
   `(clojure-test-success-face ((t (:foreground ,purpleburn-green+1 :weight bold :underline t))))

   ;; ctable
   `(ctbl:face-cell-select ((t (:background ,purpleburn-blue :foreground ,purpleburn-bg))))
   `(ctbl:face-continue-bar ((t (:background ,purpleburn-bg-05 :foreground ,purpleburn-bg))))
   `(ctbl:face-row-select ((t (:background ,purpleburn-cyan :foreground ,purpleburn-bg))))

   ;; diff
   `(diff-added ((,class (:foreground ,purpleburn-green+4 :background nil))
                 (t (:foreground ,purpleburn-green-1 :background nil))))
   `(diff-changed ((t (:foreground ,purpleburn-yellow))))
   `(diff-removed ((,class (:foreground ,purpleburn-red :background nil))
                   (t (:foreground ,purpleburn-red-3 :background nil))))
   `(diff-refine-added ((t :inherit diff-added :weight bold)))
   `(diff-refine-change ((t :inherit diff-changed :weight bold)))
   `(diff-refine-removed ((t :inherit diff-removed :weight bold)))
   `(diff-header ((,class (:background ,purpleburn-bg+2))
                  (t (:background ,purpleburn-fg :foreground ,purpleburn-bg))))
   `(diff-file-header
     ((,class (:background ,purpleburn-bg+2 :foreground ,purpleburn-fg :bold t))
      (t (:background ,purpleburn-fg :foreground ,purpleburn-bg :bold t))))

   ;; dired+
   `(diredp-display-msg ((t (:foreground ,purpleburn-blue))))
   `(diredp-compressed-file-suffix ((t (:foreground ,purpleburn-orange))))
   `(diredp-date-time ((t (:foreground ,purpleburn-magenta))))
   `(diredp-deletion ((t (:foreground ,purpleburn-yellow))))
   `(diredp-deletion-file-name ((t (:foreground ,purpleburn-red))))
   `(diredp-dir-heading ((t (:foreground ,purpleburn-blue :background ,purpleburn-bg-1))))
   `(diredp-dir-priv ((t (:foreground ,purpleburn-cyan))))
   `(diredp-exec-priv ((t (:foreground ,purpleburn-red))))
   `(diredp-executable-tag ((t (:foreground ,purpleburn-green+1))))
   `(diredp-file-name ((t (:foreground ,purpleburn-blue))))
   `(diredp-file-suffix ((t (:foreground ,purpleburn-green))))
   `(diredp-flag-mark ((t (:foreground ,purpleburn-yellow))))
   `(diredp-flag-mark-line ((t (:foreground ,purpleburn-orange))))
   `(diredp-ignored-file-name ((t (:foreground ,purpleburn-red))))
   `(diredp-link-priv ((t (:foreground ,purpleburn-yellow))))
   `(diredp-mode-line-flagged ((t (:foreground ,purpleburn-yellow))))
   `(diredp-mode-line-marked ((t (:foreground ,purpleburn-orange))))
   `(diredp-no-priv ((t (:foreground ,purpleburn-fg))))
   `(diredp-number ((t (:foreground ,purpleburn-green+1))))
   `(diredp-other-priv ((t (:foreground ,purpleburn-yellow-1))))
   `(diredp-rare-priv ((t (:foreground ,purpleburn-red-1))))
   `(diredp-read-priv ((t (:foreground ,purpleburn-green-1))))
   `(diredp-symlink ((t (:foreground ,purpleburn-yellow))))
   `(diredp-write-priv ((t (:foreground ,purpleburn-magenta))))

   ;; ert
   `(ert-test-result-expected ((t (:foreground ,purpleburn-green+4 :background ,purpleburn-bg))))
   `(ert-test-result-unexpected ((t (:foreground ,purpleburn-red :background ,purpleburn-bg))))

   ;; eshell
   `(eshell-prompt ((t (:foreground ,purpleburn-yellow :weight bold))))
   `(eshell-ls-archive ((t (:foreground ,purpleburn-red-1 :weight bold))))
   `(eshell-ls-backup ((t (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((t (:inherit font-lock-comment))))
   `(eshell-ls-directory ((t (:foreground ,purpleburn-blue+1 :weight bold))))
   `(eshell-ls-executable ((t (:foreground ,purpleburn-red+1 :weight bold))))
   `(eshell-ls-unreadable ((t (:foreground ,purpleburn-fg))))
   `(eshell-ls-missing ((t (:inherit font-lock-warning))))
   `(eshell-ls-product ((t (:inherit font-lock-doc))))
   `(eshell-ls-special ((t (:foreground ,purpleburn-yellow :weight bold))))
   `(eshell-ls-symlink ((t (:foreground ,purpleburn-cyan :weight bold))))

   ;; flycheck
   `(flycheck-error-face ((t (:foreground ,purpleburn-red-1 :weight bold :underline t))))
   `(flycheck-warning-face ((t (:foreground ,purpleburn-orange :weight bold :underline t))))

   ;; flymake
   `(flymake-errline ((t (:foreground ,purpleburn-red-1 :weight bold :underline t))))
   `(flymake-warnline ((t (:foreground ,purpleburn-orange :weight bold :underline t))))

   ;; flyspell
   `(flyspell-duplicate ((t (:foreground ,purpleburn-orange :weight bold :underline t))))
   `(flyspell-incorrect ((t (:foreground ,purpleburn-red-1 :weight bold :underline t))))

   ;; erc
   `(erc-action-face ((t (:inherit erc-default-face))))
   `(erc-bold-face ((t (:weight bold))))
   `(erc-current-nick-face ((t (:foreground ,purpleburn-blue :weight bold))))
   `(erc-dangerous-host-face ((t (:inherit font-lock-warning))))
   `(erc-default-face ((t (:foreground ,purpleburn-fg))))
   `(erc-direct-msg-face ((t (:inherit erc-default))))
   `(erc-error-face ((t (:inherit font-lock-warning))))
   `(erc-fool-face ((t (:inherit erc-default))))
   `(erc-highlight-face ((t (:inherit hover-highlight))))
   `(erc-input-face ((t (:foreground ,purpleburn-yellow))))
   `(erc-keyword-face ((t (:foreground ,purpleburn-blue :weight bold))))
   `(erc-nick-default-face ((t (:foreground ,purpleburn-yellow :weight bold))))
   `(erc-my-nick-face ((t (:foreground ,purpleburn-red :weight bold))))
   `(erc-nick-msg-face ((t (:inherit erc-default))))
   `(erc-notice-face ((t (:foreground ,purpleburn-green))))
   `(erc-pal-face ((t (:foreground ,purpleburn-orange :weight bold))))
   `(erc-prompt-face ((t (:foreground ,purpleburn-orange :background ,purpleburn-bg :weight bold))))
   `(erc-timestamp-face ((t (:foreground ,purpleburn-green+1))))
   `(erc-underline-face ((t (:underline t))))

   ;; git-gutter
   `(git-gutter:added ((t (:foreground ,purpleburn-green :weight bold :inverse-video t))))
   `(git-gutter:deleted ((t (:foreground ,purpleburn-red :weight bold :inverse-video t))))
   `(git-gutter:modified ((t (:foreground ,purpleburn-magenta :weight bold :inverse-video t))))
   `(git-gutter:unchanged ((t (:foreground ,purpleburn-fg :weight bold :inverse-video t))))

   ;; git-gutter-fr
   `(git-gutter-fr:added ((t (:foreground ,purpleburn-green  :weight bold))))
   `(git-gutter-fr:deleted ((t (:foreground ,purpleburn-red :weight bold))))
   `(git-gutter-fr:modified ((t (:foreground ,purpleburn-magenta :weight bold))))

   ;; gnus
   `(gnus-group-mail-1 ((t (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty ((t (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2 ((t (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty ((t (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3 ((t (:bold t :inherit gnus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty ((t (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4 ((t (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty ((t (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5 ((t (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty ((t (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6 ((t (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty ((t (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low ((t (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty ((t (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1 ((t (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2 ((t (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3 ((t (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4 ((t (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5 ((t (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6 ((t (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low ((t (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content ((t (:inherit message-header-other))))
   `(gnus-header-from ((t (:inherit message-header-from))))
   `(gnus-header-name ((t (:inherit message-header-name))))
   `(gnus-header-newsgroups ((t (:inherit message-header-other))))
   `(gnus-header-subject ((t (:inherit message-header-subject))))
   `(gnus-summary-cancelled ((t (:foreground ,purpleburn-orange))))
   `(gnus-summary-high-ancient ((t (:foreground ,purpleburn-blue))))
   `(gnus-summary-high-read ((t (:foreground ,purpleburn-green :weight bold))))
   `(gnus-summary-high-ticked ((t (:foreground ,purpleburn-orange :weight bold))))
   `(gnus-summary-high-unread ((t (:foreground ,purpleburn-fg :weight bold))))
   `(gnus-summary-low-ancient ((t (:foreground ,purpleburn-blue))))
   `(gnus-summary-low-read ((t (:foreground ,purpleburn-green))))
   `(gnus-summary-low-ticked ((t (:foreground ,purpleburn-orange :weight bold))))
   `(gnus-summary-low-unread ((t (:foreground ,purpleburn-fg))))
   `(gnus-summary-normal-ancient ((t (:foreground ,purpleburn-blue))))
   `(gnus-summary-normal-read ((t (:foreground ,purpleburn-green))))
   `(gnus-summary-normal-ticked ((t (:foreground ,purpleburn-orange :weight bold))))
   `(gnus-summary-normal-unread ((t (:foreground ,purpleburn-fg))))
   `(gnus-summary-selected ((t (:foreground ,purpleburn-yellow :weight bold))))
   `(gnus-cite-1 ((t (:foreground ,purpleburn-blue))))
   `(gnus-cite-10 ((t (:foreground ,purpleburn-yellow-1))))
   `(gnus-cite-11 ((t (:foreground ,purpleburn-yellow))))
   `(gnus-cite-2 ((t (:foreground ,purpleburn-blue-1))))
   `(gnus-cite-3 ((t (:foreground ,purpleburn-blue-2))))
   `(gnus-cite-4 ((t (:foreground ,purpleburn-green+2))))
   `(gnus-cite-5 ((t (:foreground ,purpleburn-green+1))))
   `(gnus-cite-6 ((t (:foreground ,purpleburn-green))))
   `(gnus-cite-7 ((t (:foreground ,purpleburn-red))))
   `(gnus-cite-8 ((t (:foreground ,purpleburn-red-1))))
   `(gnus-cite-9 ((t (:foreground ,purpleburn-red-2))))
   `(gnus-group-news-1-empty ((t (:foreground ,purpleburn-yellow))))
   `(gnus-group-news-2-empty ((t (:foreground ,purpleburn-green+3))))
   `(gnus-group-news-3-empty ((t (:foreground ,purpleburn-green+1))))
   `(gnus-group-news-4-empty ((t (:foreground ,purpleburn-blue-2))))
   `(gnus-group-news-5-empty ((t (:foreground ,purpleburn-blue-3))))
   `(gnus-group-news-6-empty ((t (:foreground ,purpleburn-bg+2))))
   `(gnus-group-news-low-empty ((t (:foreground ,purpleburn-bg+2))))
   `(gnus-signature ((t (:foreground ,purpleburn-yellow))))
   `(gnus-x ((t (:background ,purpleburn-fg :foreground ,purpleburn-bg))))

   ;; guide-key
   `(guide-key/highlight-command-face ((t (:foreground ,purpleburn-blue))))
   `(guide-key/key-face ((t (:foreground ,purpleburn-green))))
   `(guide-key/prefix-command-face ((t (:foreground ,purpleburn-green+1))))

   ;; helm
   `(helm-header
     ((t (:foreground ,purpleburn-green
                      :background ,purpleburn-bg
                      :underline nil
                      :box nil))))
   `(helm-source-header
     ((t (:foreground ,purpleburn-yellow
                      :background ,purpleburn-bg-1
                      :underline nil
                      :weight bold
                      :box (:line-width -1 :style released-button)))))
   `(helm-selection ((t (:background ,purpleburn-bg+1 :underline nil))))
   `(helm-selection-line ((t (:background ,purpleburn-bg+1))))
   `(helm-visible-mark ((t (:foreground ,purpleburn-bg :background ,purpleburn-yellow-2))))
   `(helm-candidate-number ((t (:foreground ,purpleburn-green+4 :background ,purpleburn-bg-1))))
   `(helm-ff-directory ((t (:foreground ,purpleburn-magenta))))

   ;; hl-line-mode
   `(hl-line-face ((,class (:background ,purpleburn-bg-05))
                   (t :weight bold)))
   `(hl-line ((,class (:background ,purpleburn-bg-05)) ; old emacsen
              (t :weight bold)))

   ;; hl-sexp
   `(hl-sexp-face ((,class (:background ,purpleburn-bg+1))
                   (t :weight bold)))

   ;; ido-mode
   `(ido-first-match ((t (:foreground ,purpleburn-yellow :weight bold))))
   `(ido-only-match ((t (:foreground ,purpleburn-orange :weight bold))))
   `(ido-subdir ((t (:foreground ,purpleburn-yellow))))

   ;; js2-mode
   `(js2-warning-face ((t (:underline ,purpleburn-orange))))
   `(js2-error-face ((t (:foreground ,purpleburn-red :weight bold))))
   `(js2-jsdoc-tag-face ((t (:foreground ,purpleburn-green-1))))
   `(js2-jsdoc-type-face ((t (:foreground ,purpleburn-green+2))))
   `(js2-jsdoc-value-face ((t (:foreground ,purpleburn-green+3))))
   `(js2-function-param-face ((t (:foreground, purpleburn-green+3))))
   `(js2-external-variable-face ((t (:foreground ,purpleburn-orange))))

   ;; jabber-mode
   `(jabber-roster-user-away ((t (:foreground ,purpleburn-green+2))))
   `(jabber-roster-user-online ((t (:foreground ,purpleburn-blue-1))))
   `(jabber-roster-user-dnd ((t (:foreground ,purpleburn-red+1))))
   `(jabber-rare-time-face ((t (:foreground ,purpleburn-green+1))))
   `(jabber-chat-prompt-local ((t (:foreground ,purpleburn-blue-1))))
   `(jabber-chat-prompt-foreign ((t (:foreground ,purpleburn-red+1))))
   `(jabber-activity-face((t (:foreground ,purpleburn-red+1))))
   `(jabber-activity-personal-face ((t (:foreground ,purpleburn-blue+1))))
   `(jabber-title-small ((t (:height 1.1 :weight bold))))
   `(jabber-title-medium ((t (:height 1.2 :weight bold))))
   `(jabber-title-large ((t (:height 1.3 :weight bold))))

   ;; linum-mode
   `(linum ((t (:foreground ,purpleburn-green+2 :background ,purpleburn-bg))))

   ;; magit
   `(magit-section-title ((t (:foreground ,purpleburn-yellow :weight bold))))
   `(magit-branch ((t (:foreground ,purpleburn-orange :weight bold))))
   `(magit-item-highlight ((t (:background ,purpleburn-bg+1))))
   
   ;; egg
   `(egg-text-base ((t (:foreground ,purpleburn-fg))))
   `(egg-help-header-1 ((t (:foreground ,purpleburn-yellow))))
   `(egg-help-header-2 ((t (:foreground ,purpleburn-green+3))))
   `(egg-branch ((t (:foreground ,purpleburn-yellow))))
   `(egg-branch-mono ((t (:foreground ,purpleburn-yellow))))
   `(egg-term ((t (:foreground ,purpleburn-yellow))))
   `(egg-diff-add ((t (:foreground ,purpleburn-green+4))))
   `(egg-diff-del ((t (:foreground ,purpleburn-red+1))))
   `(egg-diff-file-header ((t (:foreground ,purpleburn-yellow-2))))
   `(egg-section-title ((t (:foreground ,purpleburn-yellow))))
   `(egg-stash-mono ((t (:foreground ,purpleburn-green+4))))

   ;; message-mode
   `(message-cited-text ((t (:inherit font-lock-comment))))
   `(message-header-name ((t (:foreground ,purpleburn-green+1))))
   `(message-header-other ((t (:foreground ,purpleburn-green))))
   `(message-header-to ((t (:foreground ,purpleburn-yellow :weight bold))))
   `(message-header-from ((t (:foreground ,purpleburn-yellow :weight bold))))
   `(message-header-cc ((t (:foreground ,purpleburn-yellow :weight bold))))
   `(message-header-newsgroups ((t (:foreground ,purpleburn-yellow :weight bold))))
   `(message-header-subject ((t (:foreground ,purpleburn-orange :weight bold))))
   `(message-header-xheader ((t (:foreground ,purpleburn-green))))
   `(message-mml ((t (:foreground ,purpleburn-yellow :weight bold))))
   `(message-separator ((t (:inherit font-lock-comment))))

   ;; mew
   `(mew-face-header-subject ((t (:foreground ,purpleburn-orange))))
   `(mew-face-header-from ((t (:foreground ,purpleburn-yellow))))
   `(mew-face-header-date ((t (:foreground ,purpleburn-green))))
   `(mew-face-header-to ((t (:foreground ,purpleburn-red))))
   `(mew-face-header-key ((t (:foreground ,purpleburn-green))))
   `(mew-face-header-private ((t (:foreground ,purpleburn-green))))
   `(mew-face-header-important ((t (:foreground ,purpleburn-blue))))
   `(mew-face-header-marginal ((t (:foreground ,purpleburn-fg :weight bold))))
   `(mew-face-header-warning ((t (:foreground ,purpleburn-red))))
   `(mew-face-header-xmew ((t (:foreground ,purpleburn-green))))
   `(mew-face-header-xmew-bad ((t (:foreground ,purpleburn-red))))
   `(mew-face-body-url ((t (:foreground ,purpleburn-orange))))
   `(mew-face-body-comment ((t (:foreground ,purpleburn-fg :slant italic))))
   `(mew-face-body-cite1 ((t (:foreground ,purpleburn-green))))
   `(mew-face-body-cite2 ((t (:foreground ,purpleburn-blue))))
   `(mew-face-body-cite3 ((t (:foreground ,purpleburn-orange))))
   `(mew-face-body-cite4 ((t (:foreground ,purpleburn-yellow))))
   `(mew-face-body-cite5 ((t (:foreground ,purpleburn-red))))
   `(mew-face-mark-review ((t (:foreground ,purpleburn-blue))))
   `(mew-face-mark-escape ((t (:foreground ,purpleburn-green))))
   `(mew-face-mark-delete ((t (:foreground ,purpleburn-red))))
   `(mew-face-mark-unlink ((t (:foreground ,purpleburn-yellow))))
   `(mew-face-mark-refile ((t (:foreground ,purpleburn-green))))
   `(mew-face-mark-unread ((t (:foreground ,purpleburn-red-2))))
   `(mew-face-eof-message ((t (:foreground ,purpleburn-green))))
   `(mew-face-eof-part ((t (:foreground ,purpleburn-yellow))))

   ;; mic-paren
   `(paren-face-match ((t (:foreground ,purpleburn-cyan :background ,purpleburn-bg :weight bold))))
   `(paren-face-mismatch ((t (:foreground ,purpleburn-bg :background ,purpleburn-magenta :weight bold))))
   `(paren-face-no-match ((t (:foreground ,purpleburn-bg :background ,purpleburn-red :weight bold))))

   ;; mingus
   `(mingus-directory-face ((t (:foreground ,purpleburn-blue))))
   `(mingus-pausing-face ((t (:foreground ,purpleburn-magenta))))
   `(mingus-playing-face ((t (:foreground ,purpleburn-cyan))))
   `(mingus-playlist-face ((t (:foreground ,purpleburn-cyan ))))
   `(mingus-song-file-face ((t (:foreground ,purpleburn-yellow))))
   `(mingus-stopped-face ((t (:foreground ,purpleburn-red))))

   ;; nav
   `(nav-face-heading ((t (:foreground ,purpleburn-yellow))))
   `(nav-face-button-num ((t (:foreground ,purpleburn-cyan))))
   `(nav-face-dir ((t (:foreground ,purpleburn-green))))
   `(nav-face-hdir ((t (:foreground ,purpleburn-red))))
   `(nav-face-file ((t (:foreground ,purpleburn-fg))))
   `(nav-face-hfile ((t (:foreground ,purpleburn-red-4))))

   ;; mu4e
   `(mu4e-cited-1-face ((t (:foreground ,purpleburn-blue    :slant italic))))
   `(mu4e-cited-2-face ((t (:foreground ,purpleburn-green+2 :slant italic))))
   `(mu4e-cited-3-face ((t (:foreground ,purpleburn-blue-2  :slant italic))))
   `(mu4e-cited-4-face ((t (:foreground ,purpleburn-green   :slant italic))))
   `(mu4e-cited-5-face ((t (:foreground ,purpleburn-blue-4  :slant italic))))
   `(mu4e-cited-6-face ((t (:foreground ,purpleburn-green-1 :slant italic))))
   `(mu4e-cited-7-face ((t (:foreground ,purpleburn-blue    :slant italic))))
   `(mu4e-replied-face ((t (:foreground ,purpleburn-bg+3))))
   `(mu4e-trashed-face ((t (:foreground ,purpleburn-bg+3 :strike-through t))))

   ;; mumamo
   `(mumamo-background-chunk-major ((t (:background nil))))
   `(mumamo-background-chunk-submode1 ((t (:background ,purpleburn-bg-1))))
   `(mumamo-background-chunk-submode2 ((t (:background ,purpleburn-bg+2))))
   `(mumamo-background-chunk-submode3 ((t (:background ,purpleburn-bg+3))))
   `(mumamo-background-chunk-submode4 ((t (:background ,purpleburn-bg+1))))

   ;; org-mode
   `(org-agenda-date-today
     ((t (:foreground "white" :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((t (:inherit font-lock-comment-face))))
   `(org-archived ((t (:foreground ,purpleburn-fg :weight bold))))
   `(org-checkbox ((t (:background ,purpleburn-bg+2 :foreground "white"
                                   :box (:line-width 1 :style released-button)))))
   `(org-date ((t (:foreground ,purpleburn-blue :underline t))))
   `(org-deadline-announce ((t (:foreground ,purpleburn-red-1))))
   `(org-done ((t (:bold t :weight bold :foreground ,purpleburn-green+3))))
   `(org-formula ((t (:foreground ,purpleburn-yellow-2))))
   `(org-headline-done ((t (:foreground ,purpleburn-green+3))))
   `(org-hide ((t (:foreground ,purpleburn-bg-1))))
   `(org-level-1 ((t (:foreground ,purpleburn-orange))))
   `(org-level-2 ((t (:foreground ,purpleburn-green+4))))
   `(org-level-3 ((t (:foreground ,purpleburn-blue-1))))
   `(org-level-4 ((t (:foreground ,purpleburn-yellow-2))))
   `(org-level-5 ((t (:foreground ,purpleburn-cyan))))
   `(org-level-6 ((t (:foreground ,purpleburn-green+2))))
   `(org-level-7 ((t (:foreground ,purpleburn-red-4))))
   `(org-level-8 ((t (:foreground ,purpleburn-blue-4))))
   `(org-link ((t (:foreground ,purpleburn-yellow-2 :underline t))))
   `(org-scheduled ((t (:foreground ,purpleburn-green+4))))
   `(org-scheduled-previously ((t (:foreground ,purpleburn-red-4))))
   `(org-scheduled-today ((t (:foreground ,purpleburn-blue+1))))
   `(org-special-keyword ((t (:foreground ,purpleburn-fg-1 :weight normal))))
   `(org-table ((t (:foreground ,purpleburn-green+2))))
   `(org-tag ((t (:bold t :weight bold))))
   `(org-time-grid ((t (:foreground ,purpleburn-orange))))
   `(org-todo ((t (:bold t :foreground ,purpleburn-red :weight bold))))
   `(org-upcoming-deadline ((t (:inherit font-lock-keyword-face))))
   `(org-warning ((t (:bold t :foreground ,purpleburn-red :weight bold :underline nil))))
   `(org-column ((t (:background ,purpleburn-bg-1))))
   `(org-column-title ((t (:background ,purpleburn-bg-1 :underline t :weight bold))))

   ;; outline
   `(outline-1 ((t (:foreground ,purpleburn-orange))))
   `(outline-2 ((t (:foreground ,purpleburn-green+4))))
   `(outline-3 ((t (:foreground ,purpleburn-blue-1))))
   `(outline-4 ((t (:foreground ,purpleburn-yellow-2))))
   `(outline-5 ((t (:foreground ,purpleburn-cyan))))
   `(outline-6 ((t (:foreground ,purpleburn-green+2))))
   `(outline-7 ((t (:foreground ,purpleburn-red-4))))
   `(outline-8 ((t (:foreground ,purpleburn-blue-4))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,purpleburn-fg))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,purpleburn-green+2))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,purpleburn-yellow-2))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,purpleburn-cyan))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,purpleburn-green-1))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,purpleburn-blue+1))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,purpleburn-yellow-1))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,purpleburn-green+1))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,purpleburn-blue-2))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,purpleburn-orange))))
   `(rainbow-delimiters-depth-11-face ((t (:foreground ,purpleburn-green))))
   `( rainbow-delimiters-depth-12-face ((t (:foreground ,purpleburn-blue-5))))

   ;;rcirc
   `(rcirc-my-nick ((t (:foreground ,purpleburn-blue))))
   `(rcirc-other-nick ((t (:foreground ,purpleburn-orange))))
   `(rcirc-bright-nick ((t (:foreground ,purpleburn-blue+1))))
   `(rcirc-dim-nick ((t (:foreground ,purpleburn-blue-2))))
   `(rcirc-server ((t (:foreground ,purpleburn-green))))
   `(rcirc-server-prefix ((t (:foreground ,purpleburn-green+1))))
   `(rcirc-timestamp ((t (:foreground ,purpleburn-green+2))))
   `(rcirc-nick-in-message ((t (:foreground ,purpleburn-yellow))))
   `(rcirc-nick-in-message-full-line ((t (:bold t))))
   `(rcirc-prompt ((t (:foreground ,purpleburn-yellow :bold t))))
   `(rcirc-track-nick ((t (:inverse-video t))))
   `(rcirc-track-keyword ((t (:bold t))))
   `(rcirc-url ((t (:bold t))))
   `(rcirc-keyword ((t (:foreground ,purpleburn-yellow :bold t))))

   ;; rpm-mode
   `(rpm-spec-dir-face ((t (:foreground ,purpleburn-green))))
   `(rpm-spec-doc-face ((t (:foreground ,purpleburn-green))))
   `(rpm-spec-ghost-face ((t (:foreground ,purpleburn-red))))
   `(rpm-spec-macro-face ((t (:foreground ,purpleburn-yellow))))
   `(rpm-spec-obsolete-tag-face ((t (:foreground ,purpleburn-red))))
   `(rpm-spec-package-face ((t (:foreground ,purpleburn-red))))
   `(rpm-spec-section-face ((t (:foreground ,purpleburn-yellow))))
   `(rpm-spec-tag-face ((t (:foreground ,purpleburn-blue))))
   `(rpm-spec-var-face ((t (:foreground ,purpleburn-red))))

   ;; rst-mode
   `(rst-level-1-face ((t (:foreground ,purpleburn-orange))))
   `(rst-level-2-face ((t (:foreground ,purpleburn-green+1))))
   `(rst-level-3-face ((t (:foreground ,purpleburn-blue-1))))
   `(rst-level-4-face ((t (:foreground ,purpleburn-yellow-2))))
   `(rst-level-5-face ((t (:foreground ,purpleburn-cyan))))
   `(rst-level-6-face ((t (:foreground ,purpleburn-green-1))))

   ;; show-paren
   `(show-paren-mismatch ((t (:foreground ,purpleburn-red-3 :background ,purpleburn-bg :weight bold))))
   `(show-paren-match ((t (:foreground ,purpleburn-blue-1 :background ,purpleburn-bg :weight bold))))

   ;; sml-mode-line
   '(sml-modeline-end-face ((t :inherit default :width condensed)))

   ;; SLIME
   `(slime-repl-inputed-output-face ((t (:foreground ,purpleburn-red))))

   ;; tabbar
   `(tabbar-button ((t (:foreground ,purpleburn-fg
                                    :background ,purpleburn-bg))))
   `(tabbar-selected ((t (:foreground ,purpleburn-fg
                                      :background ,purpleburn-bg
                                      :box (:line-width -1 :style pressed-button)))))
   `(tabbar-unselected ((t (:foreground ,purpleburn-fg
                                        :background ,purpleburn-bg+1
                                        :box (:line-width -1 :style released-button)))))

   ;; term
   `(term-color-black ((t (:foreground ,purpleburn-bg
                                       :background ,purpleburn-bg-1))))
   `(term-color-red ((t (:foreground ,purpleburn-red-2
                                       :background ,purpleburn-red-4))))
   `(term-color-green ((t (:foreground ,purpleburn-green
                                       :background ,purpleburn-green+2))))
   `(term-color-yellow ((t (:foreground ,purpleburn-orange
                                       :background ,purpleburn-yellow))))
   `(term-color-blue ((t (:foreground ,purpleburn-blue-1
                                      :background ,purpleburn-blue-4))))
   `(term-color-magenta ((t (:foreground ,purpleburn-magenta
                                         :background ,purpleburn-red))))
   `(term-color-cyan ((t (:foreground ,purpleburn-cyan
                                       :background ,purpleburn-blue))))
   `(term-color-white ((t (:foreground ,purpleburn-fg
                                       :background ,purpleburn-fg-1))))
   '(term-default-fg-color ((t (:inherit term-color-white))))
   '(term-default-bg-color ((t (:inherit term-color-black))))

   ;; volatile-highlights
   `(vhl/default-face ((t (:background ,purpleburn-bg-05))))

   ;; emacs-w3m
   `(w3m-anchor ((t (:foreground ,purpleburn-yellow :underline t
                                 :weight bold))))
   `(w3m-arrived-anchor ((t (:foreground ,purpleburn-yellow-2
                                         :underline t :weight normal))))
   `(w3m-form ((t (:foreground ,purpleburn-red-1 :underline t))))
   `(w3m-header-line-location-title ((t (:foreground ,purpleburn-yellow
                                                     :underline t :weight bold))))
   '(w3m-history-current-url ((t (:inherit match))))
   `(w3m-lnum ((t (:foreground ,purpleburn-green+2 :background ,purpleburn-bg))))
   `(w3m-lnum-match ((t (:background ,purpleburn-bg-1
                                     :foreground ,purpleburn-orange
                                     :weight bold))))
   `(w3m-lnum-minibuffer-prompt ((t (:foreground ,purpleburn-yellow))))

   ;; whitespace-mode
   `(whitespace-space ((t (:background ,purpleburn-bg+1 :foreground ,purpleburn-bg+1))))
   `(whitespace-hspace ((t (:background ,purpleburn-bg+1 :foreground ,purpleburn-bg+1))))
   `(whitespace-tab ((t (:background ,purpleburn-red-1))))
   `(whitespace-newline ((t (:foreground ,purpleburn-bg+1))))
   `(whitespace-trailing ((t (:background ,purpleburn-red))))
   `(whitespace-line ((t (:background ,purpleburn-bg :foreground ,purpleburn-magenta))))
   `(whitespace-space-before-tab ((t (:background ,purpleburn-orange :foreground ,purpleburn-orange))))
   `(whitespace-indentation ((t (:background ,purpleburn-yellow :foreground ,purpleburn-red))))
   `(whitespace-empty ((t (:background ,purpleburn-yellow))))
   `(whitespace-space-after-tab ((t (:background ,purpleburn-yellow :foreground ,purpleburn-red))))

   ;; wanderlust
   `(wl-highlight-folder-few-face ((t (:foreground ,purpleburn-red-2))))
   `(wl-highlight-folder-many-face ((t (:foreground ,purpleburn-red-1))))
   `(wl-highlight-folder-path-face ((t (:foreground ,purpleburn-orange))))
   `(wl-highlight-folder-unread-face ((t (:foreground ,purpleburn-blue))))
   `(wl-highlight-folder-zero-face ((t (:foreground ,purpleburn-fg))))
   `(wl-highlight-folder-unknown-face ((t (:foreground ,purpleburn-blue))))
   `(wl-highlight-message-citation-header ((t (:foreground ,purpleburn-red-1))))
   `(wl-highlight-message-cited-text-1 ((t (:foreground ,purpleburn-red))))
   `(wl-highlight-message-cited-text-2 ((t (:foreground ,purpleburn-green+2))))
   `(wl-highlight-message-cited-text-3 ((t (:foreground ,purpleburn-blue))))
   `(wl-highlight-message-cited-text-4 ((t (:foreground ,purpleburn-blue+1))))
   `(wl-highlight-message-header-contents-face ((t (:foreground ,purpleburn-green))))
   `(wl-highlight-message-headers-face ((t (:foreground ,purpleburn-red+1))))
   `(wl-highlight-message-important-header-contents ((t (:foreground ,purpleburn-green+2))))
   `(wl-highlight-message-header-contents ((t (:foreground ,purpleburn-green+1))))
   `(wl-highlight-message-important-header-contents2 ((t (:foreground ,purpleburn-green+2))))
   `(wl-highlight-message-signature ((t (:foreground ,purpleburn-green))))
   `(wl-highlight-message-unimportant-header-contents ((t (:foreground ,purpleburn-fg))))
   `(wl-highlight-summary-answered-face ((t (:foreground ,purpleburn-blue))))
   `(wl-highlight-summary-disposed-face ((t (:foreground ,purpleburn-fg
                                                         :slant italic))))
   `(wl-highlight-summary-new-face ((t (:foreground ,purpleburn-blue))))
   `(wl-highlight-summary-normal-face ((t (:foreground ,purpleburn-fg))))
   `(wl-highlight-summary-thread-top-face ((t (:foreground ,purpleburn-yellow))))
   `(wl-highlight-thread-indent-face ((t (:foreground ,purpleburn-magenta))))
   `(wl-highlight-summary-refiled-face ((t (:foreground ,purpleburn-fg))))
   `(wl-highlight-summary-displaying-face ((t (:underline t :weight bold))))

   ;; which-func-mode
   `(which-func ((t (:foreground ,purpleburn-green+4))))

   ;; yascroll
   `(yascroll:thumb-text-area ((t (:background ,purpleburn-bg-1))))
   `(yascroll:thumb-fringe ((t (:background ,purpleburn-bg-1 :foreground ,purpleburn-bg-1)))))

  ;;; custom theme variables
  (custom-theme-set-variables
   'purpleburn
   `(ansi-color-names-vector [,purpleburn-bg ,purpleburn-red ,purpleburn-green ,purpleburn-yellow
                                          ,purpleburn-blue ,purpleburn-magenta ,purpleburn-cyan ,purpleburn-fg])

   ;; fill-column-indicator
   `(fci-rule-color ,purpleburn-bg-05)))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'purpleburn)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; purpleburn-theme.el ends here

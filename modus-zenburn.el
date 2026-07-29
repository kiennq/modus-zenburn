;;; modus-zenburn.el --- Zenburn themes on Modus themes -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Kien Nguyen
;; Author: Kien Nguyen
;; Version: 0.1
;; Package-Requires: ((emacs "28.1") (modus-themes "5.0.0"))
;; Keywords: faces, theme

;; This file is NOT part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; This package provides the `modus-zenburn' and
;; `modus-zenburn-light' themes.  They combine Zenburn-inspired
;; palettes with the face coverage and customization framework of
;; Modus themes.

;;; Code:

(require 'modus-themes)

(defgroup modus-zenburn ()
  "Zenburn themes on the Modus themes infrastructure."
  :group 'faces
  :group 'modus-themes
  :prefix "modus-zenburn-"
  :tag "Modus Zenburn")

(defconst modus-zenburn-palette-mappings
  '((builtin fg-main)
    (comment green)
    (constant green-intense)
    (docstring green-cooler)
    (fnname cyan)
    (fnname-call cyan)
    (keyword yellow)
    (number blue)
    (preprocessor blue-warmer)
    (property cyan)
    (rx-backslash green)
    (rx-construct yellow)
    (string red)
    (type blue-faint)
    (variable yellow-warmer)
    (variable-use yellow-warmer)

    (fg-link yellow)
    (underline-link yellow)
    (fg-link-symbolic yellow)
    (underline-link-symbolic yellow)
    (fg-link-visited yellow-faint)
    (underline-link-visited yellow-faint)
    (fg-prompt yellow)

    (fg-completion-match-0 blue)
    (fg-completion-match-1 green-cooler)
    (fg-completion-match-2 yellow)
    (fg-completion-match-3 magenta)

    (fg-mode-line-active green-warmer)
    (fg-mode-line-inactive green-faint)
    (fg-region fg-main)
    (fg-paren-match fg-main)
    (fg-search-current yellow-faint)
    (fg-search-lazy yellow-faint)
    (fg-search-static yellow-faint)
    (fg-search-replace fg-main))
  "Semantic palette mappings shared by the Modus Zenburn themes.")

(defconst modus-zenburn-palette
  (modus-themes-generate-palette
   '((bg-main "#3F3F3F")
     (bg-dim "#383838")
     (bg-active "#4F4F4F")
     (bg-inactive "#494949")
     (border "#5F5F5F")
     (fg-main "#DCDCCC")
     (fg-dim "#989890")
     (fg-alt "#656555")
     (fringe "#2B2B2B")

     (red "#CC9393")
     (red-warmer "#DCA3A3")
     (red-cooler "#ECB3B3")
     (red-faint "#AC7373")
     (red-intense "#BC8383")
     (green "#7F9F7F")
     (green-warmer "#8FB28F")
     (green-cooler "#9FC59F")
     (green-faint "#5F7F5F")
     (green-intense "#BFEBBF")
     (yellow "#F0DFAF")
     (yellow-warmer "#DFAF8F")
     (yellow-cooler "#E0CF9F")
     (yellow-faint "#D0BF8F")
     (blue "#8CD0D3")
     (blue-warmer "#94BFF3")
     (blue-faint "#7CB8BB")
     (blue-intense "#BDE0F3")
     (magenta "#DC8CC3")
     (cyan "#93E0E3")

     (bg-popup "#4F4F4F")
     (bg-completion "#2B2B2B")
     (bg-hover "#2B2B2B")
     (bg-hover-secondary "#383838")
     (bg-hl-line "#383838")
     (bg-region "#2B2B2B")

     (bg-mode-line-active "#2B2B2B")
     (border-mode-line-active "#2B2B2B")
     (bg-mode-line-inactive "#383838")
     (border-mode-line-inactive "#383838")

     (bg-tab-bar "#2B2B2B")
     (bg-tab-current "#2B2B2B")
     (bg-tab-other "#2B2B2B")

     (fg-line-number-inactive "#6F6F6F")
     (fg-line-number-active "#D0BF8F")
     (bg-line-number-inactive "#383838")
     (bg-line-number-active "#383838")

     (bg-paren-match "#6F6F6F")

     (bg-search-current "#5F5F5F")
     (bg-search-lazy "#383838")
     (bg-search-static "#494949")
     (bg-search-replace "#8C5353")

     (cursor "#FFFFEF"))
   'cool
   modus-themes-vivendi-tinted-palette
   modus-zenburn-palette-mappings)
  "Palette for the `modus-zenburn' theme.")

(defcustom modus-zenburn-palette-overrides nil
  "Palette overrides for the `modus-zenburn' theme."
  :group 'modus-zenburn
  :package-version '(modus-zenburn . "0.1")
  :type '(repeat (list symbol (choice symbol string))))

(defconst modus-zenburn-light-palette
  (modus-themes-generate-palette
   '((bg-main "#F9F8F5")
     (bg-dim "#EFEEE8")
     (bg-active "#DCDCCC")
     (bg-inactive "#E8E6DF")
     (border "#C0C0C0")
     (fg-main "#3F3F3F")
     (fg-dim "#6F6F6F")
     (fg-alt "#656555")
     (fringe "#EFEEE8")

     (red "#8C5353")
     (green "#4F6F4F")
     (green-warmer "#405F40")
     (green-cooler "#3F6656")
     (green-faint "#566856")
     (green-intense "#3E653E")
     (yellow "#806000")
     (yellow-warmer "#8B572A")
     (yellow-faint "#6F5520")
     (blue "#4C7073")
     (blue-warmer "#475D78")
     (blue-faint "#3F6265")
     (magenta "#784367")
     (cyan "#366060")

     (bg-popup "#F3F1EB")
     (bg-completion "#E4E2D8")
     (bg-hover "#DCDCCC")
     (bg-hover-secondary "#E8E6DF")
     (bg-hl-line "#EFEEE8")
     (bg-region "#E4E2D8")

     (bg-mode-line-active "#DCDCCC")
     (border-mode-line-active "#989890")
     (bg-mode-line-inactive "#E8E6DF")
     (border-mode-line-inactive "#C0C0C0")

     (bg-tab-bar "#E8E6DF")
     (bg-tab-current "#F9F8F5")
     (bg-tab-other "#DCDCCC")

     (fg-line-number-inactive "#989890")
     (fg-line-number-active "#6F6F6F")
     (bg-line-number-inactive "#F9F8F5")
     (bg-line-number-active "#EFEEE8")

     (bg-paren-match "#DCDCCC")

     (bg-search-current "#E5D9A8")
     (bg-search-lazy "#D7E4E2")
     (bg-search-static "#E7D8E1")
     (bg-search-replace "#E6CCCC")

     (cursor "#8C5353"))
   'warm
   modus-themes-operandi-tinted-palette
   modus-zenburn-palette-mappings)
  "Palette for the `modus-zenburn-light' theme.")

(defcustom modus-zenburn-light-palette-overrides nil
  "Palette overrides for the `modus-zenburn-light' theme."
  :group 'modus-zenburn
  :package-version '(modus-zenburn . "0.1")
  :type '(repeat (list symbol (choice symbol string))))

(modus-themes-declare
 'modus-zenburn
 'modus-zenburn
 "Zenburn colors and semantic mappings on Modus Vivendi Tinted."
 'dark
 'modus-themes-vivendi-tinted-palette
 'modus-zenburn-palette
 'modus-zenburn-palette-overrides)

(modus-themes-declare
 'modus-zenburn-light
 'modus-zenburn
 "Original light adaptation of Zenburn colors and semantic mappings."
 'light
 'modus-themes-operandi-tinted-palette
 'modus-zenburn-light-palette
 'modus-zenburn-light-palette-overrides)

(modus-themes-register 'modus-zenburn)
(modus-themes-register 'modus-zenburn-light)

;;;###autoload
(when load-file-name
  (let ((dir (file-name-directory load-file-name)))
    (unless (file-equal-p dir (expand-file-name "themes/" data-directory))
      (add-to-list 'custom-theme-load-path dir))))

(provide 'modus-zenburn)
;;; modus-zenburn.el ends here

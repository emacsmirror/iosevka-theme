;;; iosevka-theme.el --- Theme using various stylistic sets of Iosevka font  -*- lexical-binding: t; -*-

;; Copyright (C) 2024 Free Software Foundation, Inc.

;; Author:                  Mekeor Melire <mekeor@posteo.de>
;; Created:                 2024
;; Homepage:                https://codeberg.org/mekeor/iosevka-theme
;; Keywords:                faces, theme
;; Maintainer:              Mekeor Melire <mekeor@posteo.de>
;; Package-Requires:        ((emacs "28.1"))
;; SPDX-License-Identifier: GPL-3.0-or-later
;; Version:                 0.1

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation, either version 3 of the
;; License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see
;; <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Use multiple stylistic sets of the Iosevka (Fixed) font family at
;; the same time.  They align perfectly.

;; For this package to work, you need to have all stylistic sets of
;; the Iosevka Fixed font family installed and available.

;;; Roadmap:

;; Add more face definitions.

;; Add user option to choose a variant other than `Iosevka Fixed'.

;;; Code:

(deftheme iosevka)

(let*
  ;; https://github.com/be5invis/iosevka/blob/main/doc/stylistic-sets.md
  ( (default    "Iosevka Fixed")
    (curly      "Iosevka Fixed Curly")
    (andale     "Iosevka Fixed SS01")
    (anonymous  "Iosevka Fixed SS02")
    (consolas   "Iosevka Fixed SS03")
    (menlo      "Iosevka Fixed SS04")
    (fira       "Iosevka Fixed SS05")
    (liberation "Iosevka Fixed SS06")
    (monaco     "Iosevka Fixed SS07")
    (pragmata   "Iosevka Fixed SS08")
    (source     "Iosevka Fixed SS09")
    (envy       "Iosevka Fixed SS10")
    (x-window   "Iosevka Fixed SS11")
    (ubuntu     "Iosevka Fixed SS12")
    (lucida     "Iosevka Fixed SS13")
    (jetbrains  "Iosevka Fixed SS14")
    (plex       "Iosevka Fixed SS15")
    (pt         "Iosevka Fixed SS16")
    (recursive  "Iosevka Fixed SS17")
    (input      "Iosevka Fixed SS18"))

  (custom-theme-set-faces 'iosevka
    `(default                ((t :family ,default)))
    `(font-lock-comment-face ((t :family ,recursive)))
    `(font-lock-doc-face     ((t :family ,pt)))
    `(font-lock-number-face  ((t :family ,pragmata)))
    `(font-lock-string-face  ((t :family ,plex)))
    `(tooltip                ((t :family ,curly)))))

;;;###autoload
(when load-file-name
  (require 'custom)
  (add-to-list 'custom-theme-load-path
    (file-name-directory load-file-name)))

(provide-theme 'iosevka)

;;; iosevka-theme.el ends here

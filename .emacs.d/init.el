;;; init.el --- Law Of Least Surprise Lattice  -*- lexical-binding: t; -*-

;; Copyright (C) 2021 p0txky

;; Author: p0txky
;; Keywords: Babel, Org-mode, Git
;; Version: 1.0.0
;; Package-Requires: ((emacs "27.1"))
;; Homepage: https://github.com/p0txky/dotfiles/tree/main/.emacs.d

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Intuitive impersonal settings complying with the Law Of Least Surprise
;; meant for inclusion with any initialization file especially useful to
;; first-time Emacs users or experienced Emacs users looking for focused
;; high-value content to copy.

;;; Code:
(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))

;;; init.el ends here

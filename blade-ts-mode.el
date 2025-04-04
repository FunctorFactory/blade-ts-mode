;;; blade-ts-mode.el --- Tree-sitter based major mode for Blade template files  -*- lexical-binding: t; -*-

;; Copyright (C) 2025  Jake Shilling

;; Author: Jake Shilling <jshilling@functorfactory.com>
;; Created: 03 Apr 2025
;; Keywords: languages, php, blade, web, tree-sitter
;; URL: https://github.com/FunctorFactory/blade-ts-mode
;; Version: 0.0.1
;; Package-Requires: ((emacs "29.1") (web-mode))
;; License: GPL-3.0-or-later
;; Keywords: languages, php, tree-sitter

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

;; Tree-sitter based major mode for Blade template files

;;; Code:

(require 'web-mode)
(require 'treesit)

(defun blade-ts-setup ()
  "Setup treesit for blade-ts-mode."
  (treesit-major-mode-setup))

;;;###autoload
(define-derived-mode blade-ts-mode web-mode "Blade[ts]"
  "Major mode for editing Blade template files."

  (when (treesit-ready-p 'blade)
    (treesit-parser-create 'blade)
    (blade-ts-setup)))

(provide 'blade-ts-mode)
;;; blade-ts-mode.el ends here

;;; fate-json.el ---                                 -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Binbin Ye

;; Author: Binbin Ye
;; Keywords: 

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

;; 

;;; Code:

(defun fate/json-setup-prettier ()
   "Tell prettier the content is to be parsed as JSON regardless of any file
extensions."
  (setq-local prettier-js-args '("--parser=json")))

(use-package json-mode
  :mode "\\.json?\\'"
  :hook
  (json-mode . fate/json-setup-prettier))

(use-package prettier-js
  :after json-mode
  :defines prettier-js-args
  :bind
  (:map json-mode-map
   ("C-c C-l" . prettier-js)))

(provide 'fate-json)
;;; fate-json.el ends here

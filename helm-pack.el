;;; helm-pack.el ---                                 -*- lexical-binding: t; -*-

;; Copyright (C) 2015  ardumont

;; Author: ardumont <eniotna.t@gmail.com>
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
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(use-package helm
  :config
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-x b") 'helm-buffers-list)
  (define-key helm-map (kbd "C-h") 'delete-backward-char)
  (define-key helm-map (kbd "C-d") 'delete-forward-char)
  (define-key helm-map (kbd "M-? C-d") 'helm-debug-output)
  (define-key helm-map (kbd "M-? h") 'helm-help))

(provide 'helm-pack)
;;; helm-pack.el ends here

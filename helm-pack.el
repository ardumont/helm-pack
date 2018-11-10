;;; helm-pack.el --- Helm default bindings

;; Copyright (C) 2015-2018  Antoine R. Dumont (@ardumont)

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

;;; Code:

(require 'helm)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-map (kbd "C-d") 'delete-forward-char)
(define-key helm-map (kbd "M-? C-d") 'helm-debug-output)
(define-key helm-map (kbd "M-? h") 'helm-help)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(add-to-list 'display-buffer-alist
	     `(,(rx bos "*helm" (* not-newline) "*" eos)
	       (display-buffer-in-side-window)
	       (inhibit-same-window . t)
	       (window-height . 0.3)))

(custom-set-variables '(helm-display-header-line nil))

(add-hook 'helm-find-files-after-init-hook
          (lambda ()
            (define-key helm-find-files-map (kbd "~") (lambda ()
                                                        (interactive)
                                                        (if (looking-back "/")
                                                            (insert "~/")
                                                          (call-interactively 'self-insert-command))))))

(provide 'helm-pack)
;;; helm-pack.el ends here

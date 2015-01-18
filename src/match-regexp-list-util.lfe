(defmodule match-regexp-list-util
  (export all))

(defun get-version ()
  (lutil:get-app-version 'match-regexp-list))

(defun get-versions ()
  (++ (lutil:get-versions)
      `(#(match-regexp-list ,(get-version)))))

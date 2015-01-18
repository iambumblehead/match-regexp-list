(defmodule unit-match-regexp-list-tests
  (behaviour ltest-unit)
  (export all)
  (import
    (from ltest
      (check-failed-assert 2)
      (check-wrong-assert-exception 2))))

(include-lib "ltest/include/ltest-macros.lfe")

(deftest match-found
  ;; 'meeprefix is not expanded in test correctly here
  (let (((tuple meeprefix Match)
        (match-regexp-list:match '(#('numprefix "^[0-9]*$")
                                   #('meeprefix "^mee.*$")) "mee-too")))
    'true))

(defmodule match-regexp-list
  (export all))

;; ex.
;;  > (match '(#('numprefix "^[0-9]*$")
;;             #('meeprefix "^mee.*$")) 
;;           "mee-too"))
;;  
;;  #('meeprefix ("mee-too"))
;;
;;  > (match '(#('numprefix "^[0-9]*$")
;;             #('meeprefix "^mee.*$")) 
;;           "universe"))
;;  
;;  'nomatch
;;
(defun match 
  "takes a list of tuples and a string. each tuple is an #(Atom RegExp) pair.
For first regexp match found against string, tuple is returned with atom and 
match result, else 'nomatch."
  (('() _) 'nomatch)
  (((cons (tuple Atom RE) RegExps) String) 
   (case (re:run String RE '(#(capture all list)))
     ((tuple 'match List) 
      (tuple Atom List))
     ('nomatch
      (match RegExps String)))))

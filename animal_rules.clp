
; Define the animal template
(deftemplate animal
   (slot type))

; Rule to print the type of animal if it is not a dog
(defrule check_animal
   (animal (type ?t&~dog))
   =>
   (printout t "The animal is a " ?t "." crlf))

; Rule to check if a number is a positive integer
(defrule pos_int
   ?f <- (number ?n)
   (test (and (integerp ?n) (> ?n 0)))
   =>
   (printout t "The number is a positive integer." crlf))

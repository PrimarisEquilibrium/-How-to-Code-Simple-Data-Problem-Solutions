;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname pluralize) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; String -> String
;; takes a string and pluralizes it

(check-expect (plural "cat") "cats")
(check-expect (plural "worm") (string-append "worm" "s"))

;(define (plural str) "")

;(define (plural str)
;  (... str))

(define (plural str)
  (string-append str "s"))
;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname image-comparison) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Design a function that consumes two images and produces true if the first is larger than the second.

(require 2htdp/image)

;; Signature:
;; Image Image -> Boolean

;; Purpose:
;; consumes two images, produces true if the the first image is larger than the second (area is greater) otherwise false

;; Examples:
(check-expect (larger-img? (rectangle 10 20 "solid" "red") (rectangle 5 10 "solid" "red")) true)
(check-expect (larger-img? (rectangle 5 10 "solid" "red") (rectangle 10 20 "solid" "red")) false)
(check-expect (larger-img? (rectangle 5 10 "solid" "red") (rectangle 5 10 "solid" "red")) false)
(check-expect (larger-img? (circle 10 "solid" "red") (circle 5 "solid" "red")) true)
(check-expect (larger-img? (circle 5 "solid" "red") (circle 10 "solid" "red")) false)
(check-expect (larger-img? (circle 5 "solid" "red") (circle 5 "solid" "red")) false)
(check-expect (larger-img? (rectangle 5 5 "solid" "green") (circle 10 "solid" "green")) false)
(check-expect (larger-img? (circle 10 "solid" "green") (rectangle 5 5 "solid" "green")) true)
(check-expect (larger-img? (rectangle 5 5 "solid" "green") (circle 5 "solid" "green")) false)

; Stub:
; (define (larger-img? img1 img2) false)

; Template
; (define (larger-img? img1 img2)
;   (... img1 img2))

(define (larger-img? img1 img2)
  (> (* (image-width img1) (image-height img1))
     (* (image-width img2) (image-height img2))))
---
layout: post
category: sessions
title: "Simple Recursive Session"
date: 2014-09-15T09:51:32-04:00
---

[Download]({{ site.baseurl }}/sessions/simple-recursive-session.txt)

~~~
[1]> (defun singletonp (the-list)
  (and (car the-list) (not (cdr the-list))))
SINGLETONP
[2]> (defun rac (the-list)
  (cond
    ((singletonp the-list) (car the-list))
    (T                     (rac (cdr the-list)))))
RAC
[3]> (trace rac)
;; Tracing function RAC.
(RAC)
[4]> (rac '(one two three four))
1. Trace: (RAC '(ONE TWO THREE FOUR))
2. Trace: (RAC '(TWO THREE FOUR))
3. Trace: (RAC '(THREE FOUR))
4. Trace: (RAC '(FOUR))
4. Trace: RAC ==> FOUR
3. Trace: RAC ==> FOUR
2. Trace: RAC ==> FOUR
1. Trace: RAC ==> FOUR
FOUR
[5]> (defun rdc (the-list)
  (cond
    ((singletonp the-list) ())
(T                     (cons (car the-list) (rdc (cdr the-list))))))
RDC
[6]> (rdc '(A B C D))
(A B C)
[7]> (rdc '(S))
NIL
[8]> (bye)
~~~
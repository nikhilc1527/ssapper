; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7758 () Bool)

(assert start!7758)

(declare-fun n!1575 () Int)

(declare-fun z!201 () Int)

(declare-fun s!1777 () Int)

(declare-fun d!45252 () Int)

(assert (=> start!7758 (and (>= n!1575 2) (>= s!1777 0) (>= z!201 1) (= (- z!201 (* 2 (ite (>= z!201 0) (div z!201 2) (- (div (- z!201) 2))))) 0) (= d!45252 (- n!1575 1)) (= d!45252 0))))

(assert (=> start!7758 true))

(push 1)

(check-sat)

(pop 1)


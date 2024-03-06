; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7760 () Bool)

(assert start!7760)

(declare-fun tmp!431 () Int)

(declare-fun d!45253 () Int)

(declare-fun n!1575 () Int)

(declare-fun z!201 () Int)

(declare-fun s!1777 () Int)

(assert (=> start!7760 (and (>= n!1575 2) (>= s!1777 0) (>= z!201 1) (= (- z!201 (* 2 (ite (>= z!201 0) (div z!201 2) (- (div (- z!201) 2))))) 0) (= tmp!431 (ite (>= s!1777 0) (div s!1777 (- n!1575 1)) (- (div (- s!1777) (- n!1575 1))))) (= d!45253 (- n!1575 1)) (= d!45253 0))))

(assert (=> start!7760 true))

(push 1)

(check-sat)

(pop 1)


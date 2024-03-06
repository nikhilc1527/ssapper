; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7762 () Bool)

(assert start!7762)

(declare-fun n!1575 () Int)

(declare-fun z!201 () Int)

(declare-fun d!45254 () Int)

(declare-fun s!1777 () Int)

(assert (=> start!7762 (and (>= n!1575 2) (>= s!1777 0) (>= z!201 1) (not (= (- z!201 (* 2 (ite (>= z!201 0) (div z!201 2) (- (div (- z!201) 2))))) 0)) (= d!45254 (- n!1575 1)) (= d!45254 0))))

(assert (=> start!7762 true))

(push 1)

(check-sat)

(pop 1)


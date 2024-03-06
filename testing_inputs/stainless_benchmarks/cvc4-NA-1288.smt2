; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9150 () Bool)

(assert start!9150)

(declare-datatypes () ((Option!430 (Some!408 (v!2350 (_ BitVec 32))) (None!409))))

(declare-fun m1!3 () (Array (_ BitVec 32) Option!430))

(declare-fun m2!5 () (Array (_ BitVec 32) Option!430))

(assert (=> start!9150 (and (= m1!3 ((as const (Array (_ BitVec 32) Option!430)) None!409)) (= m2!5 ((as const (Array (_ BitVec 32) Option!430)) None!409)) (not (= m1!3 m2!5)))))

(assert (=> start!9150 true))

(push 1)

(check-sat)

(pop 1)


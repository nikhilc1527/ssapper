; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2872 () Bool)

(assert start!2872)

(declare-fun x!7773 () (_ BitVec 32))

(declare-fun res!5162 () (_ BitVec 32))

(declare-fun n!245 () (_ BitVec 32))

(declare-fun n!244 () (_ BitVec 32))

(declare-fun x!7772 () (_ BitVec 32))

(assert (=> start!2872 (and (bvsge n!244 #b00000000000000000000000000000000) (bvslt n!244 #b00000000000000000000000000100000) (= res!5162 (bvor x!7772 (bvshl #b00000000000000000000000000000001 n!244))) (= x!7773 res!5162) (= n!245 n!244) (or (bvslt n!245 #b00000000000000000000000000000000) (bvsge n!245 #b00000000000000000000000000100000)))))

(assert (=> start!2872 true))

(push 1)

(check-sat)

(pop 1)


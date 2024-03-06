; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!572 () Bool)

(assert start!572)

(declare-datatypes () ((List!83 (Cons!83 (head!255 (_ BitVec 32)) (tail!267 List!83)) (Nil!84))))

(declare-fun list!138 () List!83)

(declare-fun x$1!187 () Int)

(assert (=> start!572 (and (is-Nil!84 list!138) (= x$1!187 0) (< x$1!187 0))))

(assert (=> start!572 true))

(push 1)

(check-sat)

(pop 1)


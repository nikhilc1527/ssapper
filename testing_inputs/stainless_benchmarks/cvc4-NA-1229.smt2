; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8754 () Bool)

(assert start!8754)

(declare-datatypes () ((List!546 (Cons!512 (head!857 (_ BitVec 32)) (tail!883 List!546)) (Nil!513))))

(declare-datatypes () ((LList!16 (LNil!15) (LCons!15 (head!858 List!546) (tail!884 LList!16)))))

(declare-fun llist!15 () LList!16)

(declare-fun x$2!313 () Int)

(assert (=> start!8754 (and (is-LNil!15 llist!15) (= x$2!313 0) (< x$2!313 0))))

(assert (=> start!8754 true))

(push 1)

(check-sat)

(pop 1)


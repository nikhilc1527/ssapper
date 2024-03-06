; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!388 () Bool)

(assert start!388)

(declare-datatypes () ((List!64 (Cons!64 (head!236 (_ BitVec 32)) (tail!248 List!64)) (Nil!65))))

(declare-fun list!135 () List!64)

(assert (=> start!388 (and (not (= list!135 Nil!65)) (not (is-Cons!64 list!135)))))

(assert (=> start!388 true))

(push 1)

(check-sat)

(pop 1)


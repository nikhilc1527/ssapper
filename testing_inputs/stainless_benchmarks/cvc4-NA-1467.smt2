; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10066 () Bool)

(assert start!10066)

(declare-datatypes () ((IList!4 (Cons!583 (head!1004 Int) (tail!1025 IList!4)) (Nil!585))))

(declare-fun v!2470 () IList!4)

(assert (=> start!10066 (and (= v!2470 Nil!585) (not (is-Nil!585 v!2470)))))

(assert (=> start!10066 true))

(push 1)

(check-sat)

(pop 1)


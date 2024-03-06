; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15610 () Bool)

(assert start!15610)

(declare-fun n!1953 () Int)

(declare-fun m!92585 () Int)

(assert (=> start!15610 (<= (+ n!1953 m!92585) n!1953)))

(assert (=> start!15610 true))

(push 1)

(check-sat)

(get-model)

(pop 1)


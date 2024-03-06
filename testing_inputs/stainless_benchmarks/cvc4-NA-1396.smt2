; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9732 () Bool)

(assert start!9732)

(declare-fun j!91 () Int)

(assert (=> start!9732 (and (= j!91 3) (< j!91 0))))

(assert (=> start!9732 true))

(push 1)

(check-sat)

(pop 1)


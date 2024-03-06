; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9738 () Bool)

(assert start!9738)

(declare-fun j!96 () Int)

(declare-fun k!285 () Int)

(declare-fun j!97 () Int)

(assert (=> start!9738 (and (>= j!96 0) (or (> j!96 0) (= j!96 k!285)) (not (= k!285 0)) (= j!97 (- j!96 1)) (< j!97 0))))

(assert (=> start!9738 true))

(push 1)

(check-sat)

(pop 1)


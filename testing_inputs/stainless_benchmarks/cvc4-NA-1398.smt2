; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9736 () Bool)

(assert start!9736)

(declare-fun j!93 () Int)

(declare-fun j!94 () Int)

(declare-fun k!283 () Int)

(assert (=> start!9736 (and (>= j!93 0) (= j!94 j!93) (= k!283 j!93) (<= j!94 0) (not (= j!94 k!283)))))

(assert (=> start!9736 true))

(push 1)

(check-sat)

(pop 1)


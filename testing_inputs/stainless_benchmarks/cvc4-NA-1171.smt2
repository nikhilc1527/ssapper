; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8420 () Bool)

(assert start!8420)

(declare-datatypes () ((List!506 (Cons!480 (head!757 (_ BitVec 32)) (tail!783 List!506)) (Nil!481))))

(declare-fun l!1270 () List!506)

(declare-fun acc!20 () Int)

(declare-fun l!1273 () List!506)

(declare-fun acc!21 () Int)

(assert (=> start!8420 (and (>= acc!20 0) (not (is-Nil!481 l!1270)) (= l!1273 (tail!783 l!1270)) (= acc!21 (+ acc!20 1)) (< acc!21 0))))

(assert (=> start!8420 true))

(push 1)

(check-sat)

(pop 1)


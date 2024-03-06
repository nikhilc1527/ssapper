; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12050 () Bool)

(assert start!12050)

(declare-fun x!31953 () Int)

(declare-fun y!2224 () Int)

(declare-fun x$1!1209 () Int)

(assert (=> start!12050 (and (> x!31953 y!2224) (= x$1!1209 (- x!31953 y!2224)) (< x$1!1209 0))))

(assert (=> start!12050 true))

(push 1)

(check-sat)

(pop 1)


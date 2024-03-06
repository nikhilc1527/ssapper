; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15472 () Bool)

(assert start!15472)

(declare-fun n!1900 () Int)

(declare-fun d!61737 () Int)

(assert (=> start!15472 (and (= n!1900 4000) (= d!61737 2) (= d!61737 0))))

(assert (=> start!15472 true))

(push 1)

(check-sat)

(pop 1)


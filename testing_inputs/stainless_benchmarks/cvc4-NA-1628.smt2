; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11364 () Bool)

(assert start!11364)

(declare-datatypes () ((Color!12 (Red!11) (Black!11))))

(declare-datatypes () ((Tree!109 (Empty!192) (Node!153 (color!42 Color!12) (left!1652 Tree!109) (value!6799 Int) (right!1655 Tree!109)))))

(declare-fun t!48193 () Tree!109)

(declare-fun x$1!1125 () Int)

(assert (=> start!11364 (and (is-Empty!192 t!48193) (= x$1!1125 0) (< x$1!1125 0))))

(assert (=> start!11364 true))

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2972 () Bool)

(assert start!2972)

(declare-datatypes () ((A!1099 (B!354 (size!169 (_ BitVec 32))) (C!48))))

(declare-fun v!481 () A!1099)

(assert (=> start!2972 (and (= v!481 C!48) (not (is-C!48 v!481)))))

(assert (=> start!2972 true))

(push 1)

(check-sat)

(pop 1)


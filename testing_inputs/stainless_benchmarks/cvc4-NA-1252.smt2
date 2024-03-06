; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8932 () Bool)

(assert start!8932)

(declare-datatypes () ((A!2624 (C!63 (x!26994 Int)) (E!15) (D!23))))

(declare-fun c!13621 () A!2624)

(assert (=> start!8932 (and (= c!13621 (C!63 42)) (not (is-C!63 c!13621)))))

(declare-fun inv!1120 (A!2624) Bool)

(assert (=> start!8932 (inv!1120 c!13621)))

(declare-fun bs!37383 () Bool)

(assert (= bs!37383 start!8932))

(declare-fun m!68054 () Bool)

(assert (=> bs!37383 m!68054))

(push 1)

(assert (not start!8932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


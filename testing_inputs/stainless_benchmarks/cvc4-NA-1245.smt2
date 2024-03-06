; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8910 () Bool)

(assert start!8910)

(declare-datatypes () ((A!2616 (C!57 (x!26983 Int)) (E!9) (D!17))))

(declare-fun thiss!8869 () A!2616)

(declare-fun thiss!8870 () A!2616)

(assert (=> start!8910 (and (or (is-C!57 thiss!8869) (is-E!9 thiss!8869)) (is-C!57 thiss!8869) (= thiss!8870 thiss!8869) (not (is-C!57 thiss!8870)))))

(declare-fun inv!1120 (A!2616) Bool)

(assert (=> start!8910 (inv!1120 thiss!8869)))

(assert (=> start!8910 (inv!1120 thiss!8870)))

(declare-fun bs!37371 () Bool)

(assert (= bs!37371 start!8910))

(declare-fun m!68026 () Bool)

(assert (=> bs!37371 m!68026))

(declare-fun m!68028 () Bool)

(assert (=> bs!37371 m!68028))

(push 1)

(assert (not start!8910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


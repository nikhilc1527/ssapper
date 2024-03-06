; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8926 () Bool)

(assert start!8926)

(declare-datatypes () ((A!2620 (C!61 (x!26987 Int)) (E!13) (D!21))))

(declare-fun c!13620 () A!2620)

(declare-fun thiss!8855 () A!2620)

(declare-fun i!476 () Int)

(assert (=> start!8926 (and (= c!13620 (C!61 42)) (= thiss!8855 c!13620) (= i!476 0) (not (is-C!61 thiss!8855)))))

(declare-fun inv!1120 (A!2620) Bool)

(assert (=> start!8926 (inv!1120 c!13620)))

(assert (=> start!8926 (inv!1120 thiss!8855)))

(assert (=> start!8926 true))

(declare-fun bs!37379 () Bool)

(assert (= bs!37379 start!8926))

(declare-fun m!68044 () Bool)

(assert (=> bs!37379 m!68044))

(declare-fun m!68046 () Bool)

(assert (=> bs!37379 m!68046))

(push 1)

(assert (not start!8926))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


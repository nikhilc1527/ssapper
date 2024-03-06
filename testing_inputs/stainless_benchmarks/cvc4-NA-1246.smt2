; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8912 () Bool)

(assert start!8912)

(declare-fun i!481 () Int)

(declare-datatypes () ((A!2617 (C!58 (x!26984 Int)) (E!10) (D!18))))

(declare-fun thiss!8865 () A!2617)

(declare-fun thiss!8866 () A!2617)

(declare-fun i!482 () Int)

(assert (=> start!8912 (and (or (is-C!58 thiss!8865) (is-E!10 thiss!8865)) (> i!481 0) (is-C!58 thiss!8865) (= thiss!8866 thiss!8865) (= i!482 i!481) (not (is-C!58 thiss!8866)))))

(declare-fun inv!1120 (A!2617) Bool)

(assert (=> start!8912 (inv!1120 thiss!8865)))

(assert (=> start!8912 true))

(assert (=> start!8912 (inv!1120 thiss!8866)))

(declare-fun bs!37373 () Bool)

(assert (= bs!37373 start!8912))

(declare-fun m!68030 () Bool)

(assert (=> bs!37373 m!68030))

(declare-fun m!68032 () Bool)

(assert (=> bs!37373 m!68032))

(push 1)

(assert (not start!8912))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


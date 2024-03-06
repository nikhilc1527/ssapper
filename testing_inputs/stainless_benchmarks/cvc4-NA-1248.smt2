; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8924 () Bool)

(assert start!8924)

(declare-datatypes () ((A!2619 (C!60 (x!26986 Int)) (E!12) (D!20))))

(declare-fun thiss!8865 () A!2619)

(declare-fun i!481 () Int)

(declare-fun x$1!857 () Int)

(assert (=> start!8924 (and (or (is-C!60 thiss!8865) (is-E!12 thiss!8865)) (> i!481 0) (not (is-C!60 thiss!8865)) (= x$1!857 (+ i!481 1)) (< x$1!857 0))))

(declare-fun inv!1120 (A!2619) Bool)

(assert (=> start!8924 (inv!1120 thiss!8865)))

(assert (=> start!8924 true))

(declare-fun bs!37377 () Bool)

(assert (= bs!37377 start!8924))

(declare-fun m!68042 () Bool)

(assert (=> bs!37377 m!68042))

(push 1)

(assert (not start!8924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


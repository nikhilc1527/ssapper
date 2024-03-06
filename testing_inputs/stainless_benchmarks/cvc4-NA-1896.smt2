; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12696 () Bool)

(assert start!12696)

(declare-fun a!1163 () (_ BitVec 32))

(declare-fun a!1166 () (_ BitVec 32))

(declare-datatypes () ((A!4655 (AExt!18 (__x!393 Int)) (BExt!11 (__x!394 Int)) (D!35) (C!103 (c!22853 (_ BitVec 32))))))

(declare-fun thiss!11170 () A!4655)

(declare-fun thiss!11167 () A!4655)

(assert (=> start!12696 (and (not (is-AExt!18 thiss!11167)) (= thiss!11170 thiss!11167) (= a!1166 a!1163) (not (is-BExt!11 thiss!11170)) (not (is-D!35 thiss!11170)) (not (is-C!103 thiss!11170)))))

(assert (=> start!12696 true))

(push 1)

(check-sat)

(pop 1)


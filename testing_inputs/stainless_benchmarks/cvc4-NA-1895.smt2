; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12694 () Bool)

(assert start!12694)

(declare-fun a!1163 () (_ BitVec 32))

(declare-datatypes () ((A!4654 (AExt!17 (__x!391 Int)) (BExt!10 (__x!392 Int)) (D!34) (C!102 (c!22852 (_ BitVec 32))))))

(declare-fun thiss!11168 () A!4654)

(declare-fun thiss!11167 () A!4654)

(declare-fun a!1164 () (_ BitVec 32))

(assert (=> start!12694 (and (is-AExt!17 thiss!11167) (= thiss!11168 thiss!11167) (= a!1164 a!1163) (not (is-AExt!17 thiss!11168)))))

(assert (=> start!12694 true))

(push 1)

(check-sat)

(pop 1)


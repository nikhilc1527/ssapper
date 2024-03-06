; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12698 () Bool)

(assert start!12698)

(declare-fun a!1163 () (_ BitVec 32))

(declare-fun a!1166 () (_ BitVec 32))

(declare-datatypes () ((A!4656 (AExt!19 (__x!395 Int)) (BExt!12 (__x!396 Int)) (D!36) (C!104 (c!22854 (_ BitVec 32))))))

(declare-fun thiss!11170 () A!4656)

(declare-fun thiss!11167 () A!4656)

(assert (=> start!12698 (and (not (is-AExt!19 thiss!11167)) (= thiss!11170 thiss!11167) (= a!1166 a!1163) (or (is-BExt!12 thiss!11170) (is-D!36 thiss!11170) (is-C!104 thiss!11170)) (bvsle a!1166 #b00000000000000000000000000000000))))

(assert (=> start!12698 true))

(push 1)

(check-sat)

(get-model)

(pop 1)


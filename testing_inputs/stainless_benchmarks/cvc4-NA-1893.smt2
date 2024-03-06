; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12674 () Bool)

(assert start!12674)

(declare-datatypes () ((tuple2!454 (tuple2!455 (_1!266 (_ BitVec 32)) (_2!266 (_ BitVec 32))))))

(declare-fun res!48948 () tuple2!454)

(declare-fun t!49212 () tuple2!454)

(assert (=> start!12674 (and (= res!48948 t!49212) (or (bvsle (_1!266 res!48948) #b00000000000000000000000000000000) (bvsle (_2!266 res!48948) #b00000000000000000000000000000001)))))

(assert (=> start!12674 true))

(push 1)

(check-sat)

(get-model)

(pop 1)


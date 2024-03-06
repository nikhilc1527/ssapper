; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12672 () Bool)

(assert start!12672)

(declare-datatypes () ((A!4610 (AExt!15 (__x!384 Int)) (B!799 (i!654 (_ BitVec 32))) (C!98 (a!1159 A!4610)))))

(declare-datatypes () ((tuple2!452 (tuple2!453 (_1!265 A!4610) (_2!265 A!4610)))))

(declare-fun t!49209 () tuple2!452)

(declare-fun x$1!1291 () (_ BitVec 32))

(assert (=> start!12672 (and (= t!49209 (tuple2!453 (B!799 #b00000000000000000000000000000010) (C!98 (B!799 #b00000000000000000000000000000011)))) (= x$1!1291 (i!654 (_1!265 t!49209))) (not (= x$1!1291 #b00000000000000000000000000000011)))))

(assert (=> start!12672 true))

(push 1)

(check-sat)

(get-model)

(pop 1)


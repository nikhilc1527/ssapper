; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9172 () Bool)

(assert start!9172)

(declare-datatypes () ((tuple2!352 (tuple2!353 (_1!209 (_ BitVec 32)) (_2!209 (_ BitVec 32))))))

(declare-datatypes () ((A!2904 (C!78 (a!702 A!2904)) (B!551 (t!47405 tuple2!352)))))

(declare-datatypes () ((tuple2!354 (tuple2!355 (_1!210 A!2904) (_2!210 (_ BitVec 32))))))

(declare-datatypes () ((tuple3!36 (tuple3!37 (_1!211 (_ BitVec 32)) (_2!211 tuple2!354) (_3!33 (_ BitVec 32))))))

(declare-fun t!47402 () tuple3!36)

(declare-fun x$1!873 () (_ BitVec 32))

(assert (=> start!9172 (and (= t!47402 (tuple3!37 #b00000000000000000000000000000001 (tuple2!355 (C!78 (B!551 (tuple2!353 #b00000000000000000000000000000100 #b00000000000000000000000000000101))) #b00000000000000000000000000000010) #b00000000000000000000000000000011)) (not (is-B!551 (_1!210 (_2!211 t!47402)))) (is-B!551 (a!702 (_1!210 (_2!211 t!47402)))) (= x$1!873 (_2!209 (t!47405 (a!702 (_1!210 (_2!211 t!47402)))))) (not (= x$1!873 #b00000000000000000000000000000101)))))

(assert (=> start!9172 true))

(push 1)

(check-sat)

(pop 1)


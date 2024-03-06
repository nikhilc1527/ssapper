; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9166 () Bool)

(assert start!9166)

(declare-datatypes () ((A!2889 (B!547 (i!496 (_ BitVec 32))) (C!75 (a!696 A!2889)))))

(declare-datatypes () ((tuple2!344 (tuple2!345 (_1!201 A!2889) (_2!201 (_ BitVec 32))))))

(declare-datatypes () ((tuple3!30 (tuple3!31 (_1!202 (_ BitVec 32)) (_2!202 tuple2!344) (_3!29 (_ BitVec 32))))))

(declare-fun t!47397 () tuple3!30)

(assert (=> start!9166 (and (= t!47397 (tuple3!31 #b00000000000000000000000000000001 (tuple2!345 (C!75 (B!547 #b00000000000000000000000000000100)) #b00000000000000000000000000000010) #b00000000000000000000000000000011)) (or (not (is-C!75 (_1!201 (_2!202 t!47397)))) (not (is-B!547 (a!696 (_1!201 (_2!202 t!47397)))))))))

(assert (=> start!9166 true))

(push 1)

(check-sat)

(pop 1)


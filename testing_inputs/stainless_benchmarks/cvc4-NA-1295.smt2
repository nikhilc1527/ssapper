; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9164 () Bool)

(assert start!9164)

(declare-datatypes () ((A!2888 (B!546 (i!495 (_ BitVec 32))) (C!74 (a!695 A!2888)))))

(declare-datatypes () ((tuple2!342 (tuple2!343 (_1!199 A!2888) (_2!199 (_ BitVec 32))))))

(declare-datatypes () ((tuple3!28 (tuple3!29 (_1!200 (_ BitVec 32)) (_2!200 tuple2!342) (_3!28 (_ BitVec 32))))))

(declare-fun t!47398 () tuple3!28)

(assert (=> start!9164 (and (= t!47398 (tuple3!29 #b00000000000000000000000000000001 (tuple2!343 (C!74 (B!546 #b00000000000000000000000000000100)) #b00000000000000000000000000000010) #b00000000000000000000000000000011)) (not (is-C!74 (_1!199 (_2!200 t!47398)))))))

(assert (=> start!9164 true))

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9174 () Bool)

(assert start!9174)

(declare-datatypes () ((tuple2!356 (tuple2!357 (_1!212 (_ BitVec 32)) (_2!212 (_ BitVec 32))))))

(declare-datatypes () ((A!2905 (C!79 (a!703 A!2905)) (B!552 (t!47406 tuple2!356)))))

(declare-datatypes () ((tuple2!358 (tuple2!359 (_1!213 A!2905) (_2!213 (_ BitVec 32))))))

(declare-datatypes () ((tuple3!38 (tuple3!39 (_1!214 (_ BitVec 32)) (_2!214 tuple2!358) (_3!34 (_ BitVec 32))))))

(declare-fun t!47402 () tuple3!38)

(declare-fun x$1!874 () (_ BitVec 32))

(assert (=> start!9174 (and (= t!47402 (tuple3!39 #b00000000000000000000000000000001 (tuple2!359 (C!79 (B!552 (tuple2!357 #b00000000000000000000000000000100 #b00000000000000000000000000000101))) #b00000000000000000000000000000010) #b00000000000000000000000000000011)) (not (is-B!552 (_1!213 (_2!214 t!47402)))) (not (is-B!552 (a!703 (_1!213 (_2!214 t!47402))))) (= x$1!874 (_3!34 t!47402)) (not (= x$1!874 #b00000000000000000000000000000101)))))

(assert (=> start!9174 true))

(push 1)

(check-sat)

(pop 1)


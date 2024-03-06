; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9156 () Bool)

(assert start!9156)

(declare-fun a2!22 () Bool)

(declare-fun a1!13 () (_ BitVec 32))

(declare-fun x$1!868 () (_ BitVec 32))

(declare-fun a3!4 () (_ BitVec 32))

(declare-datatypes () ((tuple3!26 (tuple3!27 (_1!194 (_ BitVec 32)) (_2!194 Bool) (_3!27 (_ BitVec 32))))))

(declare-fun t!47382 () tuple3!26)

(assert (=> start!9156 (and (= t!47382 (tuple3!27 #b00000000000000000000000000000001 true #b00000000000000000000000000000011)) (= a1!13 (_1!194 t!47382)) (= a2!22 (_2!194 t!47382)) (= a3!4 (_3!27 t!47382)) (= x$1!868 a3!4) (not (= x$1!868 #b00000000000000000000000000000011)))))

(assert (=> start!9156 true))

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12668 () Bool)

(assert start!12668)

(declare-fun a2!51 () Bool)

(declare-datatypes () ((tuple3!42 (tuple3!43 (_1!263 (_ BitVec 32)) (_2!263 Bool) (_3!38 (_ BitVec 32))))))

(declare-fun t!49204 () tuple3!42)

(declare-fun a3!6 () (_ BitVec 32))

(declare-fun x$1!1290 () (_ BitVec 32))

(declare-fun a1!21 () (_ BitVec 32))

(assert (=> start!12668 (and (= t!49204 (tuple3!43 #b00000000000000000000000000000001 true #b00000000000000000000000000000011)) (= a1!21 (_1!263 t!49204)) (= a2!51 (_2!263 t!49204)) (= a3!6 (_3!38 t!49204)) (= x$1!1290 a3!6) (not (= x$1!1290 #b00000000000000000000000000000001)))))

(assert (=> start!12668 true))

(push 1)

(check-sat)

(get-model)

(pop 1)


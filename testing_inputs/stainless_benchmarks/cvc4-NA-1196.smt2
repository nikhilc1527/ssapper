; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8480 () Bool)

(assert start!8480)

(declare-datatypes () ((tuple2!286 (tuple2!287 (_1!170 Int) (_2!170 Int)))))

(declare-fun t!47204 () tuple2!286)

(declare-datatypes () ((Option!374 (Some!355 (v!2252 Int)) (None!356))))

(declare-fun b!59085 () (Array Int Option!374))

(declare-fun a!679 () (Array Int Option!374))

(declare-fun c!12758 () (Array Int Option!374))

(assert (=> start!8480 (and (= (select a!679 0) None!356) (= t!47204 (tuple2!287 0 1)) (= b!59085 (store a!679 0 (Some!355 1))) (= c!12758 (store a!679 (_1!170 t!47204) (Some!355 (_2!170 t!47204)))) (not (is-Some!355 (select c!12758 0))))))

(assert (=> start!8480 true))

(declare-fun bs!36430 () Bool)

(assert (= bs!36430 start!8480))

(declare-fun m!63867 () Bool)

(assert (=> bs!36430 m!63867))

(declare-fun m!63869 () Bool)

(assert (=> bs!36430 m!63869))

(declare-fun m!63871 () Bool)

(assert (=> bs!36430 m!63871))

(declare-fun m!63873 () Bool)

(assert (=> bs!36430 m!63873))

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8476 () Bool)

(assert start!8476)

(declare-datatypes () ((tuple2!284 (tuple2!285 (_1!169 Int) (_2!169 Int)))))

(declare-fun t!47204 () tuple2!284)

(declare-datatypes () ((Option!373 (Some!354 (v!2251 Int)) (None!355))))

(declare-fun b!59085 () (Array Int Option!373))

(declare-fun a!679 () (Array Int Option!373))

(declare-fun c!12758 () (Array Int Option!373))

(assert (=> start!8476 (and (= (select a!679 0) None!355) (= t!47204 (tuple2!285 0 1)) (= b!59085 (store a!679 0 (Some!354 1))) (= c!12758 (store a!679 (_1!169 t!47204) (Some!354 (_2!169 t!47204)))) (not (is-Some!354 (select b!59085 0))))))

(assert (=> start!8476 true))

(declare-fun bs!36427 () Bool)

(assert (= bs!36427 start!8476))

(declare-fun m!63859 () Bool)

(assert (=> bs!36427 m!63859))

(declare-fun m!63861 () Bool)

(assert (=> bs!36427 m!63861))

(declare-fun m!63863 () Bool)

(assert (=> bs!36427 m!63863))

(declare-fun m!63865 () Bool)

(assert (=> bs!36427 m!63865))

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8484 () Bool)

(assert start!8484)

(declare-datatypes () ((tuple2!288 (tuple2!289 (_1!171 Int) (_2!171 Int)))))

(declare-fun t!47204 () tuple2!288)

(declare-datatypes () ((Option!375 (Some!356 (v!2253 Int)) (None!357))))

(declare-fun b!59085 () (Array Int Option!375))

(declare-fun a!679 () (Array Int Option!375))

(declare-fun c!12758 () (Array Int Option!375))

(assert (=> start!8484 (and (= (select a!679 0) None!357) (= t!47204 (tuple2!289 0 1)) (= b!59085 (store a!679 0 (Some!356 1))) (= c!12758 (store a!679 (_1!171 t!47204) (Some!356 (_2!171 t!47204)))) (not (= (v!2253 (select b!59085 0)) (v!2253 (select c!12758 0)))))))

(assert (=> start!8484 true))

(declare-fun bs!36433 () Bool)

(assert (= bs!36433 start!8484))

(declare-fun m!63875 () Bool)

(assert (=> bs!36433 m!63875))

(declare-fun m!63877 () Bool)

(assert (=> bs!36433 m!63877))

(declare-fun m!63879 () Bool)

(assert (=> bs!36433 m!63879))

(declare-fun m!63881 () Bool)

(assert (=> bs!36433 m!63881))

(declare-fun m!63883 () Bool)

(assert (=> bs!36433 m!63883))

(push 1)

(check-sat)

(pop 1)


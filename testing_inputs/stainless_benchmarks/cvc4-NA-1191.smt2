; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8470 () Bool)

(assert start!8470)

(declare-datatypes () ((Option!371 (Some!352 (v!2249 Int)) (None!353))))

(declare-fun a!678 () (Array Int Option!371))

(declare-fun b!59084 () (Array Int Option!371))

(declare-fun c!12757 () (Array Int Option!371))

(assert (=> start!8470 (and (= (select a!678 0) None!353) (= b!59084 (store a!678 0 (Some!352 1))) (= c!12757 (store a!678 0 (Some!352 1))) (not (is-Some!352 (select c!12757 0))))))

(assert (=> start!8470 true))

(declare-fun bs!36422 () Bool)

(assert (= bs!36422 start!8470))

(declare-fun m!63845 () Bool)

(assert (=> bs!36422 m!63845))

(declare-fun m!63847 () Bool)

(assert (=> bs!36422 m!63847))

(declare-fun m!63849 () Bool)

(assert (=> bs!36422 m!63849))

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8474 () Bool)

(assert start!8474)

(declare-datatypes () ((Option!372 (Some!353 (v!2250 Int)) (None!354))))

(declare-fun a!678 () (Array Int Option!372))

(declare-fun b!59084 () (Array Int Option!372))

(declare-fun c!12757 () (Array Int Option!372))

(assert (=> start!8474 (and (= (select a!678 0) None!354) (= b!59084 (store a!678 0 (Some!353 1))) (= c!12757 (store a!678 0 (Some!353 1))) (not (= (v!2250 (select b!59084 0)) (v!2250 (select c!12757 0)))))))

(assert (=> start!8474 true))

(declare-fun bs!36425 () Bool)

(assert (= bs!36425 start!8474))

(declare-fun m!63851 () Bool)

(assert (=> bs!36425 m!63851))

(declare-fun m!63853 () Bool)

(assert (=> bs!36425 m!63853))

(declare-fun m!63855 () Bool)

(assert (=> bs!36425 m!63855))

(declare-fun m!63857 () Bool)

(assert (=> bs!36425 m!63857))

(push 1)

(check-sat)

(pop 1)


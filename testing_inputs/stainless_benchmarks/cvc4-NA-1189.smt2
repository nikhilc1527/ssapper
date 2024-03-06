; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8466 () Bool)

(assert start!8466)

(declare-datatypes () ((Option!370 (Some!351 (v!2248 Int)) (None!352))))

(declare-fun a!678 () (Array Int Option!370))

(declare-fun b!59084 () (Array Int Option!370))

(declare-fun c!12757 () (Array Int Option!370))

(assert (=> start!8466 (and (= (select a!678 0) None!352) (= b!59084 (store a!678 0 (Some!351 1))) (= c!12757 (store a!678 0 (Some!351 1))) (not (is-Some!351 (select b!59084 0))))))

(assert (=> start!8466 true))

(declare-fun bs!36419 () Bool)

(assert (= bs!36419 start!8466))

(declare-fun m!63839 () Bool)

(assert (=> bs!36419 m!63839))

(declare-fun m!63841 () Bool)

(assert (=> bs!36419 m!63841))

(declare-fun m!63843 () Bool)

(assert (=> bs!36419 m!63843))

(push 1)

(check-sat)

(pop 1)


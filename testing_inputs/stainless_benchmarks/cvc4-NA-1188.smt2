; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8462 () Bool)

(assert start!8462)

(declare-fun res!27359 () Bool)

(declare-fun e!31447 () Bool)

(assert (=> start!8462 (=> (not res!27359) (not e!31447))))

(declare-datatypes () ((Option!366 (Some!348 (v!2232 Int)) (None!349))))

(declare-fun a!677 () (Array Int Option!366))

(assert (=> start!8462 (= res!27359 (= (select a!677 0) None!349))))

(assert (=> start!8462 e!31447))

(assert (=> start!8462 true))

(declare-fun b!59076 () Bool)

(declare-fun res!27360 () Bool)

(assert (=> b!59076 (=> (not res!27360) (not e!31447))))

(declare-fun x$2!312 () Int)

(declare-fun lambda!9108 () Int)

(declare-fun getOrElse!4 (Option!366 Int) Int)

(assert (=> b!59076 (= res!27360 (= x$2!312 (getOrElse!4 (select a!677 0) lambda!9108)))))

(declare-fun b!59077 () Bool)

(assert (=> b!59077 (= e!31447 (not (= x$2!312 0)))))

(assert (= (and start!8462 res!27359) b!59076))

(assert (= (and b!59076 res!27360) b!59077))

(declare-fun m!63833 () Bool)

(assert (=> start!8462 m!63833))

(assert (=> b!59076 m!63833))

(assert (=> b!59076 m!63833))

(declare-fun m!63835 () Bool)

(assert (=> b!59076 m!63835))

(push 1)

(assert (not b!59076))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50953 () Bool)

(declare-fun c!12756 () Bool)

(assert (=> d!50953 (= c!12756 (is-Some!348 (select a!677 0)))))

(declare-fun e!31450 () Int)

(assert (=> d!50953 (= (getOrElse!4 (select a!677 0) lambda!9108) e!31450)))

(declare-fun b!59082 () Bool)

(assert (=> b!59082 (= e!31450 (v!2232 (select a!677 0)))))

(declare-fun b!59083 () Bool)

(declare-fun dynLambda!932 (Int) Int)

(assert (=> b!59083 (= e!31450 (dynLambda!932 lambda!9108))))

(assert (= (and d!50953 c!12756) b!59082))

(assert (= (and d!50953 (not c!12756)) b!59083))

(declare-fun b_lambda!15551 () Bool)

(assert (=> (not b_lambda!15551) (not b!59083)))

(declare-fun m!63837 () Bool)

(assert (=> b!59083 m!63837))

(assert (=> b!59076 d!50953))

(declare-fun b_lambda!15553 () Bool)

(assert (= b_lambda!15551 (or b!59076 b_lambda!15553)))

(declare-fun bs!36417 () Bool)

(declare-fun d!50955 () Bool)

(assert (= bs!36417 (and d!50955 b!59076)))

(assert (=> bs!36417 (= (dynLambda!932 lambda!9108) 0)))

(assert (=> b!59083 d!50955))

(push 1)

(assert (not b_lambda!15553))

(check-sat)

(pop 1)


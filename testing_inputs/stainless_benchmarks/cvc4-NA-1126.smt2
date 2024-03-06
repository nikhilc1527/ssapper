; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8166 () Bool)

(assert start!8166)

(declare-fun b_free!7283 () Bool)

(declare-fun b_next!39045 () Bool)

(assert (=> start!8166 (= b_free!7283 (not b_next!39045))))

(declare-fun tp!16255 () Bool)

(declare-fun b_and!58529 () Bool)

(assert (=> start!8166 (= tp!16255 b_and!58529)))

(declare-fun f!3244 () Int)

(declare-datatypes () ((T!3698 (T!3699 (val!156 Int)))))

(declare-datatypes () ((List!458 (Cons!434 (h!671 T!3698) (t!47083 List!458)) (Nil!435))))

(declare-datatypes () ((U!36 (U!37 (val!157 Int)))))

(declare-datatypes () ((List!459 (Cons!435 (h!672 U!36) (t!47084 List!459)) (Nil!436))))

(declare-fun flatMap!17 (List!458 Int) List!459)

(assert (=> start!8166 (not (= (flatMap!17 Nil!435 f!3244) Nil!436))))

(assert (=> start!8166 tp!16255))

(declare-fun bs!36316 () Bool)

(assert (= bs!36316 start!8166))

(declare-fun m!62554 () Bool)

(assert (=> bs!36316 m!62554))

(push 1)

(assert (not start!8166))

(assert b_and!58529)

(assert (not b_next!39045))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58529)

(assert (not b_next!39045))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50422 () Bool)

(declare-fun c!12373 () Bool)

(assert (=> d!50422 (= c!12373 (is-Cons!434 Nil!435))))

(declare-fun e!30825 () List!459)

(assert (=> d!50422 (= (flatMap!17 Nil!435 f!3244) e!30825)))

(declare-fun b!57971 () Bool)

(declare-fun append!154 (List!459 List!459) List!459)

(declare-fun dynLambda!922 (Int T!3698) List!459)

(assert (=> b!57971 (= e!30825 (append!154 (dynLambda!922 f!3244 (h!671 Nil!435)) (flatMap!17 (t!47083 Nil!435) f!3244)))))

(declare-fun b!57972 () Bool)

(assert (=> b!57972 (= e!30825 Nil!436)))

(assert (= (and d!50422 c!12373) b!57971))

(assert (= (and d!50422 (not c!12373)) b!57972))

(declare-fun b_lambda!15453 () Bool)

(assert (=> (not b_lambda!15453) (not b!57971)))

(declare-fun t!47086 () Bool)

(declare-fun tb!46057 () Bool)

(assert (=> (and start!8166 (= f!3244 f!3244) t!47086) tb!46057))

(assert (=> b!57971 t!47086))

(declare-fun result!46435 () Bool)

(declare-fun b_and!58531 () Bool)

(assert (= b_and!58529 (and (=> t!47086 result!46435) b_and!58531)))

(declare-fun m!62556 () Bool)

(assert (=> b!57971 m!62556))

(declare-fun m!62558 () Bool)

(assert (=> b!57971 m!62558))

(assert (=> b!57971 m!62556))

(assert (=> b!57971 m!62558))

(declare-fun m!62560 () Bool)

(assert (=> b!57971 m!62560))

(assert (=> start!8166 d!50422))

(declare-fun b_lambda!15455 () Bool)

(assert (= b_lambda!15453 (or (and start!8166 b_free!7283) b_lambda!15455)))

(push 1)

(assert (not b!57971))

(assert (not tb!46057))

(assert (not b_lambda!15455))

(assert b_and!58531)

(assert (not b_next!39045))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58531)

(assert (not b_next!39045))

(check-sat)

(pop 1)


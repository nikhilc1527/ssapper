; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8160 () Bool)

(assert start!8160)

(declare-fun b_free!7281 () Bool)

(declare-fun b_next!39043 () Bool)

(assert (=> start!8160 (= b_free!7281 (not b_next!39043))))

(declare-fun tp!16247 () Bool)

(declare-fun b_and!58521 () Bool)

(assert (=> start!8160 (= tp!16247 b_and!58521)))

(declare-datatypes () ((T!3696 (T!3697 (val!154 Int)))))

(declare-fun x!25937 () T!3696)

(declare-fun f!3271 () Int)

(declare-datatypes () ((List!456 (Cons!432 (h!669 T!3696) (t!47077 List!456)) (Nil!433))))

(declare-datatypes () ((U!34 (U!35 (val!155 Int)))))

(declare-datatypes () ((List!457 (Cons!433 (h!670 U!34) (t!47078 List!457)) (Nil!434))))

(declare-fun flatMap!16 (List!456 Int) List!457)

(declare-fun dynLambda!921 (Int T!3696) List!457)

(assert (=> start!8160 (not (= (flatMap!16 (Cons!432 x!25937 Nil!433) f!3271) (dynLambda!921 f!3271 x!25937)))))

(declare-fun tp_is_empty!307 () Bool)

(assert (=> start!8160 tp_is_empty!307))

(assert (=> start!8160 tp!16247))

(declare-fun b_lambda!15441 () Bool)

(assert (=> (not b_lambda!15441) (not start!8160)))

(declare-fun t!47076 () Bool)

(declare-fun tb!46051 () Bool)

(assert (=> (and start!8160 (= f!3271 f!3271) t!47076) tb!46051))

(assert (=> start!8160 t!47076))

(declare-fun result!46427 () Bool)

(declare-fun b_and!58523 () Bool)

(assert (= b_and!58521 (and (=> t!47076 result!46427) b_and!58523)))

(declare-fun m!62536 () Bool)

(assert (=> start!8160 m!62536))

(declare-fun m!62538 () Bool)

(assert (=> start!8160 m!62538))

(push 1)

(assert (not b_next!39043))

(assert (not start!8160))

(assert (not b_lambda!15441))

(assert tp_is_empty!307)

(assert (not tb!46051))

(assert b_and!58523)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58523)

(assert (not b_next!39043))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15443 () Bool)

(assert (= b_lambda!15441 (or (and start!8160 b_free!7281) b_lambda!15443)))

(push 1)

(assert (not b_next!39043))

(assert (not start!8160))

(assert tp_is_empty!307)

(assert (not b_lambda!15443))

(assert (not tb!46051))

(assert b_and!58523)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58523)

(assert (not b_next!39043))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50416 () Bool)

(declare-fun c!12366 () Bool)

(assert (=> d!50416 (= c!12366 (is-Cons!432 (Cons!432 x!25937 Nil!433)))))

(declare-fun e!30813 () List!457)

(assert (=> d!50416 (= (flatMap!16 (Cons!432 x!25937 Nil!433) f!3271) e!30813)))

(declare-fun b!57950 () Bool)

(declare-fun append!153 (List!457 List!457) List!457)

(assert (=> b!57950 (= e!30813 (append!153 (dynLambda!921 f!3271 (h!669 (Cons!432 x!25937 Nil!433))) (flatMap!16 (t!47077 (Cons!432 x!25937 Nil!433)) f!3271)))))

(declare-fun b!57951 () Bool)

(assert (=> b!57951 (= e!30813 Nil!434)))

(assert (= (and d!50416 c!12366) b!57950))

(assert (= (and d!50416 (not c!12366)) b!57951))

(declare-fun b_lambda!15445 () Bool)

(assert (=> (not b_lambda!15445) (not b!57950)))

(declare-fun t!47080 () Bool)

(declare-fun tb!46053 () Bool)

(assert (=> (and start!8160 (= f!3271 f!3271) t!47080) tb!46053))

(assert (=> b!57950 t!47080))

(declare-fun result!46429 () Bool)

(declare-fun b_and!58525 () Bool)

(assert (= b_and!58523 (and (=> t!47080 result!46429) b_and!58525)))

(declare-fun m!62540 () Bool)

(assert (=> b!57950 m!62540))

(declare-fun m!62542 () Bool)

(assert (=> b!57950 m!62542))

(assert (=> b!57950 m!62540))

(assert (=> b!57950 m!62542))

(declare-fun m!62544 () Bool)

(assert (=> b!57950 m!62544))

(assert (=> start!8160 d!50416))

(declare-fun b!57956 () Bool)

(declare-fun e!30816 () Bool)

(declare-fun tp_is_empty!309 () Bool)

(declare-fun tp!16250 () Bool)

(assert (=> b!57956 (= e!30816 (and tp_is_empty!309 tp!16250))))

(assert (=> tb!46051 (= result!46427 e!30816)))

(assert (= (and tb!46051 (is-Cons!433 (dynLambda!921 f!3271 x!25937))) b!57956))

(declare-fun b_lambda!15447 () Bool)

(assert (= b_lambda!15445 (or (and start!8160 b_free!7281) b_lambda!15447)))

(push 1)

(assert (not b_next!39043))

(assert (not b!57956))

(assert (not b!57950))

(assert (not tb!46053))

(assert tp_is_empty!309)

(assert b_and!58525)

(assert (not b_lambda!15447))

(assert tp_is_empty!307)

(assert (not b_lambda!15443))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58525)

(assert (not b_next!39043))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50418 () Bool)

(declare-fun lt!10630 () List!457)

(assert (=> d!50418 (or (= lt!10630 (dynLambda!921 f!3271 (h!669 (Cons!432 x!25937 Nil!433)))) (not (= (flatMap!16 (t!47077 (Cons!432 x!25937 Nil!433)) f!3271) Nil!434)))))

(declare-fun e!30819 () List!457)

(assert (=> d!50418 (= lt!10630 e!30819)))

(declare-fun c!12369 () Bool)

(assert (=> d!50418 (= c!12369 (is-Cons!433 (dynLambda!921 f!3271 (h!669 (Cons!432 x!25937 Nil!433)))))))

(assert (=> d!50418 (= (append!153 (dynLambda!921 f!3271 (h!669 (Cons!432 x!25937 Nil!433))) (flatMap!16 (t!47077 (Cons!432 x!25937 Nil!433)) f!3271)) lt!10630)))

(declare-fun b!57961 () Bool)

(assert (=> b!57961 (= e!30819 (Cons!433 (h!670 (dynLambda!921 f!3271 (h!669 (Cons!432 x!25937 Nil!433)))) (append!153 (t!47078 (dynLambda!921 f!3271 (h!669 (Cons!432 x!25937 Nil!433)))) (flatMap!16 (t!47077 (Cons!432 x!25937 Nil!433)) f!3271))))))

(declare-fun b!57962 () Bool)

(assert (=> b!57962 (= e!30819 (flatMap!16 (t!47077 (Cons!432 x!25937 Nil!433)) f!3271))))

(assert (= (and d!50418 c!12369) b!57961))

(assert (= (and d!50418 (not c!12369)) b!57962))

(assert (=> b!57961 m!62542))

(declare-fun m!62546 () Bool)

(assert (=> b!57961 m!62546))

(assert (=> b!57950 d!50418))

(declare-fun d!50420 () Bool)

(declare-fun c!12370 () Bool)

(assert (=> d!50420 (= c!12370 (is-Cons!432 (t!47077 (Cons!432 x!25937 Nil!433))))))

(declare-fun e!30820 () List!457)

(assert (=> d!50420 (= (flatMap!16 (t!47077 (Cons!432 x!25937 Nil!433)) f!3271) e!30820)))

(declare-fun b!57963 () Bool)

(assert (=> b!57963 (= e!30820 (append!153 (dynLambda!921 f!3271 (h!669 (t!47077 (Cons!432 x!25937 Nil!433)))) (flatMap!16 (t!47077 (t!47077 (Cons!432 x!25937 Nil!433))) f!3271)))))

(declare-fun b!57964 () Bool)

(assert (=> b!57964 (= e!30820 Nil!434)))

(assert (= (and d!50420 c!12370) b!57963))

(assert (= (and d!50420 (not c!12370)) b!57964))

(declare-fun b_lambda!15449 () Bool)

(assert (=> (not b_lambda!15449) (not b!57963)))

(declare-fun t!47082 () Bool)

(declare-fun tb!46055 () Bool)

(assert (=> (and start!8160 (= f!3271 f!3271) t!47082) tb!46055))

(assert (=> b!57963 t!47082))

(declare-fun result!46433 () Bool)

(declare-fun b_and!58527 () Bool)

(assert (= b_and!58525 (and (=> t!47082 result!46433) b_and!58527)))

(declare-fun m!62548 () Bool)

(assert (=> b!57963 m!62548))

(declare-fun m!62550 () Bool)

(assert (=> b!57963 m!62550))

(assert (=> b!57963 m!62548))

(assert (=> b!57963 m!62550))

(declare-fun m!62552 () Bool)

(assert (=> b!57963 m!62552))

(assert (=> b!57950 d!50420))

(declare-fun b!57965 () Bool)

(declare-fun e!30821 () Bool)

(declare-fun tp!16251 () Bool)

(assert (=> b!57965 (= e!30821 (and tp_is_empty!309 tp!16251))))

(assert (=> tb!46053 (= result!46429 e!30821)))

(assert (= (and tb!46053 (is-Cons!433 (dynLambda!921 f!3271 (h!669 (Cons!432 x!25937 Nil!433))))) b!57965))

(declare-fun b!57966 () Bool)

(declare-fun e!30822 () Bool)

(declare-fun tp!16252 () Bool)

(assert (=> b!57966 (= e!30822 (and tp_is_empty!309 tp!16252))))

(assert (=> b!57956 (= tp!16250 e!30822)))

(assert (= (and b!57956 (is-Cons!433 (t!47078 (dynLambda!921 f!3271 x!25937)))) b!57966))

(declare-fun b_lambda!15451 () Bool)

(assert (= b_lambda!15449 (or (and start!8160 b_free!7281) b_lambda!15451)))

(push 1)

(assert (not b_next!39043))

(assert (not b!57963))

(assert (not tb!46055))

(assert (not b!57966))

(assert (not b!57961))

(assert (not b!57965))

(assert tp_is_empty!309)

(assert (not b_lambda!15451))

(assert (not b_lambda!15447))

(assert tp_is_empty!307)

(assert (not b_lambda!15443))

(assert b_and!58527)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58527)

(assert (not b_next!39043))

(check-sat)

(pop 1)


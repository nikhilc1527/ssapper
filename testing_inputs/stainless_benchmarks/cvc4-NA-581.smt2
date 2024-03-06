; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4326 () Bool)

(assert start!4326)

(declare-fun b_free!2067 () Bool)

(declare-fun b_next!4909 () Bool)

(assert (=> start!4326 (= b_free!2067 (not b_next!4909))))

(declare-fun tp!7130 () Bool)

(declare-fun b_and!7443 () Bool)

(assert (=> start!4326 (= tp!7130 b_and!7443)))

(declare-fun res!15808 () Bool)

(declare-fun e!17436 () Bool)

(assert (=> start!4326 (=> res!15808 e!17436)))

(declare-fun e!17435 () Bool)

(assert (=> start!4326 (= res!15808 e!17435)))

(declare-fun res!15809 () Bool)

(assert (=> start!4326 (=> (not res!15809) (not e!17435))))

(declare-datatypes () ((List!383 (Cons!376 (h!310 Int) (t!4605 List!383)) (Nil!377))))

(declare-fun l!939 () List!383)

(assert (=> start!4326 (= res!15809 (not (is-Nil!377 l!939)))))

(assert (=> start!4326 e!17436))

(assert (=> start!4326 true))

(assert (=> start!4326 tp!7130))

(declare-fun b!34538 () Bool)

(declare-fun p!464 () Int)

(declare-fun count_check!0 (Int List!383) Bool)

(declare-fun tail!567 (List!383) List!383)

(assert (=> b!34538 (= e!17435 (not (count_check!0 p!464 (tail!567 l!939))))))

(declare-fun b!34539 () Bool)

(declare-fun count1!0 (Int List!383) Int)

(declare-fun count2!0 (Int List!383) Int)

(assert (=> b!34539 (= e!17436 (not (= (count1!0 p!464 l!939) (count2!0 p!464 l!939))))))

(assert (= (and start!4326 res!15809) b!34538))

(assert (= (and start!4326 (not res!15808)) b!34539))

(declare-fun m!37145 () Bool)

(assert (=> b!34538 m!37145))

(assert (=> b!34538 m!37145))

(declare-fun m!37147 () Bool)

(assert (=> b!34538 m!37147))

(declare-fun m!37149 () Bool)

(assert (=> b!34539 m!37149))

(declare-fun m!37151 () Bool)

(assert (=> b!34539 m!37151))

(push 1)

(assert (not b!34539))

(assert (not b!34538))

(assert b_and!7443)

(assert (not b_next!4909))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7443)

(assert (not b_next!4909))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18038 () Bool)

(declare-fun c!7391 () Bool)

(assert (=> d!18038 (= c!7391 (is-Nil!377 l!939))))

(declare-fun e!17441 () Int)

(assert (=> d!18038 (= (count1!0 p!464 l!939) e!17441)))

(declare-fun b!34549 () Bool)

(declare-fun e!17442 () Int)

(assert (=> b!34549 (= e!17441 (+ e!17442 (count1!0 p!464 (tail!567 l!939))))))

(declare-fun c!7392 () Bool)

(declare-fun dynLambda!620 (Int Int) Bool)

(declare-fun head!540 (List!383) Int)

(assert (=> b!34549 (= c!7392 (dynLambda!620 p!464 (head!540 l!939)))))

(declare-fun b!34551 () Bool)

(assert (=> b!34551 (= e!17442 0)))

(declare-fun b!34550 () Bool)

(assert (=> b!34550 (= e!17442 1)))

(declare-fun b!34548 () Bool)

(assert (=> b!34548 (= e!17441 0)))

(assert (= (and b!34549 c!7392) b!34550))

(assert (= (and b!34549 (not c!7392)) b!34551))

(assert (= (and d!18038 c!7391) b!34548))

(assert (= (and d!18038 (not c!7391)) b!34549))

(declare-fun b_lambda!9373 () Bool)

(assert (=> (not b_lambda!9373) (not b!34549)))

(declare-fun t!4607 () Bool)

(declare-fun tb!3983 () Bool)

(assert (=> (and start!4326 (= p!464 p!464) t!4607) tb!3983))

(declare-fun result!4239 () Bool)

(assert (=> tb!3983 (= result!4239 true)))

(assert (=> b!34549 t!4607))

(declare-fun b_and!7445 () Bool)

(assert (= b_and!7443 (and (=> t!4607 result!4239) b_and!7445)))

(assert (=> b!34549 m!37145))

(assert (=> b!34549 m!37145))

(declare-fun m!37153 () Bool)

(assert (=> b!34549 m!37153))

(declare-fun m!37155 () Bool)

(assert (=> b!34549 m!37155))

(assert (=> b!34549 m!37155))

(declare-fun m!37157 () Bool)

(assert (=> b!34549 m!37157))

(assert (=> b!34539 d!18038))

(declare-fun d!18040 () Bool)

(declare-fun size!327 (List!383) Int)

(declare-fun filter!9 (List!383 Int) List!383)

(assert (=> d!18040 (= (count2!0 p!464 l!939) (size!327 (filter!9 l!939 p!464)))))

(declare-fun bs!11102 () Bool)

(assert (= bs!11102 d!18040))

(declare-fun m!37159 () Bool)

(assert (=> bs!11102 m!37159))

(assert (=> bs!11102 m!37159))

(declare-fun m!37161 () Bool)

(assert (=> bs!11102 m!37161))

(assert (=> b!34539 d!18040))

(declare-fun d!18042 () Bool)

(declare-fun e!17447 () Bool)

(assert (=> d!18042 e!17447))

(declare-fun res!15814 () Bool)

(assert (=> d!18042 (=> (not res!15814) (not e!17447))))

(declare-fun e!17448 () Bool)

(assert (=> d!18042 (= res!15814 e!17448)))

(declare-fun res!15815 () Bool)

(assert (=> d!18042 (=> res!15815 e!17448)))

(assert (=> d!18042 (= res!15815 (is-Nil!377 (tail!567 l!939)))))

(assert (=> d!18042 (= (count_check!0 p!464 (tail!567 l!939)) true)))

(declare-fun b!34556 () Bool)

(assert (=> b!34556 (= e!17448 (count_check!0 p!464 (tail!567 (tail!567 l!939))))))

(declare-fun b!34557 () Bool)

(assert (=> b!34557 (= e!17447 (= (count1!0 p!464 (tail!567 l!939)) (count2!0 p!464 (tail!567 l!939))))))

(assert (= (and d!18042 (not res!15815)) b!34556))

(assert (= (and d!18042 res!15814) b!34557))

(assert (=> b!34556 m!37145))

(declare-fun m!37163 () Bool)

(assert (=> b!34556 m!37163))

(assert (=> b!34556 m!37163))

(declare-fun m!37165 () Bool)

(assert (=> b!34556 m!37165))

(assert (=> b!34557 m!37145))

(assert (=> b!34557 m!37153))

(assert (=> b!34557 m!37145))

(declare-fun m!37167 () Bool)

(assert (=> b!34557 m!37167))

(assert (=> b!34538 d!18042))

(declare-fun d!18044 () Bool)

(assert (=> d!18044 (= (tail!567 l!939) (t!4605 l!939))))

(assert (=> b!34538 d!18044))

(declare-fun b_lambda!9375 () Bool)

(assert (= b_lambda!9373 (or (and start!4326 b_free!2067) b_lambda!9375)))

(push 1)

(assert (not b!34557))

(assert (not b_lambda!9375))

(assert b_and!7445)

(assert (not b!34556))

(assert (not b_next!4909))

(assert (not b!34549))

(assert (not d!18040))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7445)

(assert (not b_next!4909))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18046 () Bool)

(declare-fun c!7393 () Bool)

(assert (=> d!18046 (= c!7393 (is-Nil!377 (tail!567 l!939)))))

(declare-fun e!17449 () Int)

(assert (=> d!18046 (= (count1!0 p!464 (tail!567 l!939)) e!17449)))

(declare-fun e!17450 () Int)

(declare-fun b!34559 () Bool)

(assert (=> b!34559 (= e!17449 (+ e!17450 (count1!0 p!464 (tail!567 (tail!567 l!939)))))))

(declare-fun c!7394 () Bool)

(assert (=> b!34559 (= c!7394 (dynLambda!620 p!464 (head!540 (tail!567 l!939))))))

(declare-fun b!34561 () Bool)

(assert (=> b!34561 (= e!17450 0)))

(declare-fun b!34560 () Bool)

(assert (=> b!34560 (= e!17450 1)))

(declare-fun b!34558 () Bool)

(assert (=> b!34558 (= e!17449 0)))

(assert (= (and b!34559 c!7394) b!34560))

(assert (= (and b!34559 (not c!7394)) b!34561))

(assert (= (and d!18046 c!7393) b!34558))

(assert (= (and d!18046 (not c!7393)) b!34559))

(declare-fun b_lambda!9377 () Bool)

(assert (=> (not b_lambda!9377) (not b!34559)))

(declare-fun t!4610 () Bool)

(declare-fun tb!3985 () Bool)

(assert (=> (and start!4326 (= p!464 p!464) t!4610) tb!3985))

(declare-fun result!4241 () Bool)

(assert (=> tb!3985 (= result!4241 true)))

(assert (=> b!34559 t!4610))

(declare-fun b_and!7447 () Bool)

(assert (= b_and!7445 (and (=> t!4610 result!4241) b_and!7447)))

(assert (=> b!34559 m!37145))

(assert (=> b!34559 m!37163))

(assert (=> b!34559 m!37163))

(declare-fun m!37169 () Bool)

(assert (=> b!34559 m!37169))

(assert (=> b!34559 m!37145))

(declare-fun m!37171 () Bool)

(assert (=> b!34559 m!37171))

(assert (=> b!34559 m!37171))

(declare-fun m!37173 () Bool)

(assert (=> b!34559 m!37173))

(assert (=> b!34557 d!18046))

(declare-fun d!18048 () Bool)

(assert (=> d!18048 (= (count2!0 p!464 (tail!567 l!939)) (size!327 (filter!9 (tail!567 l!939) p!464)))))

(declare-fun bs!11103 () Bool)

(assert (= bs!11103 d!18048))

(assert (=> bs!11103 m!37145))

(declare-fun m!37175 () Bool)

(assert (=> bs!11103 m!37175))

(assert (=> bs!11103 m!37175))

(declare-fun m!37177 () Bool)

(assert (=> bs!11103 m!37177))

(assert (=> b!34557 d!18048))

(declare-fun d!18050 () Bool)

(declare-fun e!17451 () Bool)

(assert (=> d!18050 e!17451))

(declare-fun res!15816 () Bool)

(assert (=> d!18050 (=> (not res!15816) (not e!17451))))

(declare-fun e!17452 () Bool)

(assert (=> d!18050 (= res!15816 e!17452)))

(declare-fun res!15817 () Bool)

(assert (=> d!18050 (=> res!15817 e!17452)))

(assert (=> d!18050 (= res!15817 (is-Nil!377 (tail!567 (tail!567 l!939))))))

(assert (=> d!18050 (= (count_check!0 p!464 (tail!567 (tail!567 l!939))) true)))

(declare-fun b!34562 () Bool)

(assert (=> b!34562 (= e!17452 (count_check!0 p!464 (tail!567 (tail!567 (tail!567 l!939)))))))

(declare-fun b!34563 () Bool)

(assert (=> b!34563 (= e!17451 (= (count1!0 p!464 (tail!567 (tail!567 l!939))) (count2!0 p!464 (tail!567 (tail!567 l!939)))))))

(assert (= (and d!18050 (not res!15817)) b!34562))

(assert (= (and d!18050 res!15816) b!34563))

(assert (=> b!34562 m!37163))

(declare-fun m!37179 () Bool)

(assert (=> b!34562 m!37179))

(assert (=> b!34562 m!37179))

(declare-fun m!37181 () Bool)

(assert (=> b!34562 m!37181))

(assert (=> b!34563 m!37163))

(assert (=> b!34563 m!37169))

(assert (=> b!34563 m!37163))

(declare-fun m!37183 () Bool)

(assert (=> b!34563 m!37183))

(assert (=> b!34556 d!18050))

(declare-fun d!18052 () Bool)

(assert (=> d!18052 (= (tail!567 (tail!567 l!939)) (t!4605 (tail!567 l!939)))))

(assert (=> b!34556 d!18052))

(declare-fun d!18054 () Bool)

(declare-fun lt!6490 () Int)

(assert (=> d!18054 (>= lt!6490 0)))

(declare-fun e!17455 () Int)

(assert (=> d!18054 (= lt!6490 e!17455)))

(declare-fun c!7397 () Bool)

(assert (=> d!18054 (= c!7397 (is-Nil!377 (filter!9 l!939 p!464)))))

(assert (=> d!18054 (= (size!327 (filter!9 l!939 p!464)) lt!6490)))

(declare-fun b!34568 () Bool)

(assert (=> b!34568 (= e!17455 0)))

(declare-fun b!34569 () Bool)

(assert (=> b!34569 (= e!17455 (+ 1 (size!327 (t!4605 (filter!9 l!939 p!464)))))))

(assert (= (and d!18054 c!7397) b!34568))

(assert (= (and d!18054 (not c!7397)) b!34569))

(declare-fun m!37185 () Bool)

(assert (=> b!34569 m!37185))

(assert (=> d!18040 d!18054))

(declare-fun d!18056 () Bool)

(declare-fun e!17464 () Bool)

(assert (=> d!18056 e!17464))

(declare-fun res!15830 () Bool)

(assert (=> d!18056 (=> (not res!15830) (not e!17464))))

(declare-fun lt!6496 () List!383)

(assert (=> d!18056 (= res!15830 (<= (size!327 lt!6496) (size!327 l!939)))))

(declare-fun e!17465 () List!383)

(assert (=> d!18056 (= lt!6496 e!17465)))

(declare-fun c!7403 () Bool)

(assert (=> d!18056 (= c!7403 (is-Nil!377 l!939))))

(assert (=> d!18056 (= (filter!9 l!939 p!464) lt!6496)))

(declare-fun b!34584 () Bool)

(declare-fun e!17467 () Bool)

(assert (=> b!34584 (= e!17467 (dynLambda!620 p!464 (h!310 l!939)))))

(declare-fun b!34585 () Bool)

(assert (=> b!34585 (= e!17465 Nil!377)))

(declare-fun b!34586 () Bool)

(declare-fun e!17466 () List!383)

(assert (=> b!34586 (= e!17465 e!17466)))

(declare-fun c!7402 () Bool)

(assert (=> b!34586 (= c!7402 e!17467)))

(declare-fun res!15828 () Bool)

(assert (=> b!34586 (=> (not res!15828) (not e!17467))))

(assert (=> b!34586 (= res!15828 (is-Cons!376 l!939))))

(declare-fun lt!6495 () List!383)

(assert (=> b!34586 (= lt!6495 (filter!9 (t!4605 l!939) p!464))))

(declare-fun b!34587 () Bool)

(declare-fun res!15829 () Bool)

(assert (=> b!34587 (=> (not res!15829) (not e!17464))))

(declare-fun content!79 (List!383) (Set Int))

(assert (=> b!34587 (= res!15829 (subset (content!79 lt!6496) (content!79 l!939)))))

(declare-fun b!34588 () Bool)

(assert (=> b!34588 (= e!17466 (Cons!376 (h!310 l!939) lt!6495))))

(declare-fun b!34589 () Bool)

(declare-fun forall!11 (List!383 Int) Bool)

(assert (=> b!34589 (= e!17464 (forall!11 lt!6496 p!464))))

(declare-fun b!34590 () Bool)

(assert (=> b!34590 (= e!17466 lt!6495)))

(assert (= (and b!34586 res!15828) b!34584))

(assert (= (and b!34586 c!7402) b!34588))

(assert (= (and b!34586 (not c!7402)) b!34590))

(assert (= (and d!18056 c!7403) b!34585))

(assert (= (and d!18056 (not c!7403)) b!34586))

(assert (= (and d!18056 res!15830) b!34587))

(assert (= (and b!34587 res!15829) b!34589))

(declare-fun b_lambda!9379 () Bool)

(assert (=> (not b_lambda!9379) (not b!34584)))

(declare-fun t!4612 () Bool)

(declare-fun tb!3987 () Bool)

(assert (=> (and start!4326 (= p!464 p!464) t!4612) tb!3987))

(declare-fun result!4243 () Bool)

(assert (=> tb!3987 (= result!4243 true)))

(assert (=> b!34584 t!4612))

(declare-fun b_and!7449 () Bool)

(assert (= b_and!7447 (and (=> t!4612 result!4243) b_and!7449)))

(declare-fun m!37187 () Bool)

(assert (=> d!18056 m!37187))

(declare-fun m!37189 () Bool)

(assert (=> d!18056 m!37189))

(declare-fun m!37191 () Bool)

(assert (=> b!34586 m!37191))

(declare-fun m!37193 () Bool)

(assert (=> b!34589 m!37193))

(declare-fun m!37195 () Bool)

(assert (=> b!34587 m!37195))

(declare-fun m!37197 () Bool)

(assert (=> b!34587 m!37197))

(declare-fun m!37199 () Bool)

(assert (=> b!34584 m!37199))

(assert (=> d!18040 d!18056))

(assert (=> b!34549 d!18046))

(assert (=> b!34549 d!18044))

(declare-fun d!18058 () Bool)

(assert (=> d!18058 (= (head!540 l!939) (h!310 l!939))))

(assert (=> b!34549 d!18058))

(declare-fun b_lambda!9381 () Bool)

(assert (= b_lambda!9377 (or (and start!4326 b_free!2067) b_lambda!9381)))

(declare-fun b_lambda!9383 () Bool)

(assert (= b_lambda!9379 (or (and start!4326 b_free!2067) b_lambda!9383)))

(push 1)

(assert (not b!34562))

(assert (not b_lambda!9381))

(assert (not d!18056))

(assert (not b!34587))

(assert (not b_lambda!9375))

(assert (not b!34563))

(assert b_and!7449)

(assert (not b_lambda!9383))

(assert (not b!34569))

(assert (not d!18048))

(assert (not b_next!4909))

(assert (not b!34589))

(assert (not b!34586))

(assert (not b!34559))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7449)

(assert (not b_next!4909))

(check-sat)

(pop 1)


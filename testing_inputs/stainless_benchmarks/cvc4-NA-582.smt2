; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4342 () Bool)

(assert start!4342)

(declare-fun b_free!2069 () Bool)

(declare-fun b_next!4911 () Bool)

(assert (=> start!4342 (= b_free!2069 (not b_next!4911))))

(declare-fun tp!7136 () Bool)

(declare-fun b_and!7451 () Bool)

(assert (=> start!4342 (= tp!7136 b_and!7451)))

(declare-fun b_free!2071 () Bool)

(declare-fun b_next!4913 () Bool)

(assert (=> start!4342 (= b_free!2071 (not b_next!4913))))

(declare-fun tp!7135 () Bool)

(declare-fun b_and!7453 () Bool)

(assert (=> start!4342 (= tp!7135 b_and!7453)))

(assert (=> start!4342 true))

(declare-fun f!2168 () Int)

(declare-fun lambda!4024 () Int)

(declare-fun b_next!4915 () Bool)

(assert (=> start!4342 (= b_next!4911 (or (and start!4342 (= lambda!4024 f!2168)) b_next!4915))))

(declare-fun b!34595 () Bool)

(assert (=> b!34595 true))

(declare-fun lambda!4025 () Int)

(declare-fun g!53 () Int)

(declare-fun b_next!4917 () Bool)

(assert (=> start!4342 (= b_next!4913 (or (and b!34595 (= lambda!4025 g!53)) b_next!4917))))

(declare-fun b!34596 () Bool)

(assert (=> b!34596 true))

(declare-fun res!15840 () Bool)

(declare-fun e!17491 () Bool)

(assert (=> start!4342 (=> (not res!15840) (not e!17491))))

(assert (=> start!4342 (= res!15840 (= f!2168 lambda!4024))))

(assert (=> start!4342 e!17491))

(assert (=> start!4342 tp!7136))

(assert (=> start!4342 true))

(assert (=> start!4342 tp!7135))

(declare-fun res!15841 () Bool)

(assert (=> b!34595 (=> (not res!15841) (not e!17491))))

(assert (=> b!34595 (= res!15841 (= g!53 lambda!4025))))

(declare-datatypes () ((Countable!5 (CountableExt!1 (__x!45 Int)))))

(declare-fun e!17469 () Countable!5)

(declare-fun lambda!4026 () Int)

(declare-fun d!20 (Countable!5 Int) Int)

(declare-fun dynLambda!621 (Int Int) Int)

(declare-fun dynLambda!622 (Int Int) Int)

(declare-fun dynLambda!623 (Int Int) Int)

(assert (=> b!34596 (= e!17491 (not (= (d!20 e!17469 (dynLambda!621 f!2168 lambda!4026)) (+ (dynLambda!622 (dynLambda!623 g!53 (dynLambda!621 f!2168 lambda!4026)) (dynLambda!621 f!2168 lambda!4026)) 1))))))

(assert (= (and start!4342 res!15840) b!34595))

(assert (= (and b!34595 res!15841) b!34596))

(declare-fun b_lambda!9385 () Bool)

(assert (=> (not b_lambda!9385) (not b!34596)))

(declare-fun t!4646 () Bool)

(declare-fun tb!3989 () Bool)

(assert (=> (and start!4342 (= g!53 g!53) t!4646) tb!3989))

(declare-fun b_free!2073 () Bool)

(declare-fun b_next!4919 () Bool)

(assert (=> tb!3989 (= b_free!2073 (and (or (not b!34596) (not (= lambda!4026 (dynLambda!623 g!53 (dynLambda!621 f!2168 lambda!4026))))) (not b_next!4919)))))

(declare-fun result!4245 () Bool)

(declare-fun b_and!7455 () Bool)

(assert (=> tb!3989 (= result!4245 b_and!7455)))

(assert (=> b!34596 t!4646))

(declare-fun b_and!7457 () Bool)

(assert (= b_and!7453 (and (=> t!4646 result!4245) b_and!7457)))

(declare-fun b_lambda!9387 () Bool)

(assert (=> (not b_lambda!9387) (not b!34596)))

(declare-fun t!4648 () Bool)

(declare-fun tb!3991 () Bool)

(assert (=> (and start!4342 (= f!2168 f!2168) t!4648) tb!3991))

(declare-fun result!4247 () Bool)

(assert (=> tb!3991 (= result!4247 true)))

(assert (=> b!34596 t!4648))

(declare-fun b_and!7459 () Bool)

(assert (= b_and!7451 (and (=> t!4648 result!4247) b_and!7459)))

(declare-fun b_lambda!9389 () Bool)

(assert (=> (not b_lambda!9389) (not b!34596)))

(declare-fun tb!3993 () Bool)

(declare-fun t!4650 () Bool)

(assert (=> (and tb!3989 (= (dynLambda!623 g!53 (dynLambda!621 f!2168 lambda!4026)) (dynLambda!623 g!53 (dynLambda!621 f!2168 lambda!4026))) t!4650) tb!3993))

(declare-fun result!4249 () Bool)

(assert (=> tb!3993 (= result!4249 true)))

(assert (=> b!34596 t!4650))

(declare-fun b_and!7461 () Bool)

(assert (= b_and!7455 (and (=> t!4650 result!4249) b_and!7461)))

(declare-fun m!37201 () Bool)

(assert (=> b!34596 m!37201))

(declare-fun m!37203 () Bool)

(assert (=> b!34596 m!37203))

(assert (=> b!34596 m!37201))

(assert (=> b!34596 m!37201))

(assert (=> b!34596 m!37201))

(declare-fun m!37205 () Bool)

(assert (=> b!34596 m!37205))

(assert (=> b!34596 m!37201))

(assert (=> b!34596 m!37201))

(declare-fun m!37207 () Bool)

(assert (=> b!34596 m!37207))

(push 1)

(assert (not b_next!4919))

(assert (not b!34596))

(assert (not b_lambda!9385))

(assert b_and!7459)

(assert b_and!7461)

(assert (not b_next!4917))

(assert (not b_lambda!9389))

(assert b_and!7457)

(assert (not b_next!4915))

(assert (not b_lambda!9387))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4919))

(assert b_and!7459)

(assert b_and!7461)

(assert (not b_next!4917))

(assert b_and!7457)

(assert (not b_next!4915))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9391 () Bool)

(assert (= b_lambda!9385 (or (and b!34595 (= lambda!4025 g!53)) (and start!4342 b_free!2071) b_lambda!9391)))

(declare-fun bs!11105 () Bool)

(declare-fun d!18062 () Bool)

(assert (= bs!11105 (and d!18062 b!34595)))

(declare-fun g!64 (Countable!5 Int) Int)

(assert (=> bs!11105 (= (dynLambda!623 lambda!4025 (dynLambda!621 f!2168 lambda!4026)) (g!64 e!17469 (dynLambda!621 f!2168 lambda!4026)))))

(assert (=> bs!11105 m!37201))

(declare-fun m!37209 () Bool)

(assert (=> bs!11105 m!37209))

(assert (=> (and b!34595 (= lambda!4025 g!53) b!34596) d!18062))

(declare-fun b_lambda!9393 () Bool)

(assert (= b_lambda!9389 (or (and b!34596 (= lambda!4026 (dynLambda!623 g!53 (dynLambda!621 f!2168 lambda!4026)))) (and tb!3989 b_free!2073) b_lambda!9393)))

(declare-fun bs!11106 () Bool)

(declare-fun d!18064 () Bool)

(assert (= bs!11106 (and d!18064 b!34596)))

(assert (=> bs!11106 (= (dynLambda!622 lambda!4026 (dynLambda!621 f!2168 lambda!4026)) (d!20 e!17469 (dynLambda!621 f!2168 lambda!4026)))))

(assert (=> bs!11106 m!37201))

(assert (=> bs!11106 m!37207))

(assert (=> (and b!34596 (= lambda!4026 (dynLambda!623 g!53 (dynLambda!621 f!2168 lambda!4026)))) d!18064))

(declare-fun b_lambda!9395 () Bool)

(assert (= b_lambda!9387 (or (and start!4342 (= lambda!4024 f!2168)) (and start!4342 b_free!2069) b_lambda!9395)))

(declare-fun bs!11107 () Bool)

(declare-fun d!18066 () Bool)

(assert (= bs!11107 (and d!18066 start!4342)))

(declare-fun f!2187 (Countable!5 Int) Int)

(assert (=> bs!11107 (= (dynLambda!621 lambda!4024 lambda!4026) (f!2187 e!17469 lambda!4026))))

(declare-fun m!37211 () Bool)

(assert (=> bs!11107 m!37211))

(assert (=> (and start!4342 (= lambda!4024 f!2168) b!34596) d!18066))

(push 1)

(assert (not b_lambda!9395))

(assert (not b_lambda!9393))

(assert (not b_next!4919))

(assert (not b!34596))

(assert (not bs!11106))

(assert b_and!7459)

(assert b_and!7461)

(assert (not b_lambda!9391))

(assert (not b_next!4917))

(assert b_and!7457)

(assert (not b_next!4915))

(assert (not bs!11107))

(assert (not bs!11105))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4919))

(assert b_and!7459)

(assert b_and!7461)

(assert (not b_next!4917))

(assert b_and!7457)

(assert (not b_next!4915))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18068 () Bool)

(declare-fun f!2189 (Countable!5 Int) Int)

(assert (=> d!18068 (= (f!2187 e!17469 lambda!4026) (f!2189 e!17469 lambda!4026))))

(declare-fun bs!11108 () Bool)

(assert (= bs!11108 d!18068))

(declare-fun m!37213 () Bool)

(assert (=> bs!11108 m!37213))

(assert (=> bs!11107 d!18068))

(declare-fun d!18070 () Bool)

(assert (=> d!18070 (= (d!20 e!17469 (dynLambda!621 f!2168 lambda!4026)) (+ (dynLambda!622 (g!64 e!17469 (dynLambda!621 f!2168 lambda!4026)) (dynLambda!621 f!2168 lambda!4026)) 1))))

(declare-fun b_lambda!9397 () Bool)

(assert (=> (not b_lambda!9397) (not d!18070)))

(declare-fun tb!3995 () Bool)

(declare-fun t!4653 () Bool)

(assert (=> (and tb!3989 (= (dynLambda!623 g!53 (dynLambda!621 f!2168 lambda!4026)) (g!64 e!17469 (dynLambda!621 f!2168 lambda!4026))) t!4653) tb!3995))

(declare-fun result!4251 () Bool)

(assert (=> tb!3995 (= result!4251 true)))

(assert (=> d!18070 t!4653))

(declare-fun b_and!7463 () Bool)

(assert (= b_and!7461 (and (=> t!4653 result!4251) b_and!7463)))

(assert (=> d!18070 m!37201))

(assert (=> d!18070 m!37209))

(assert (=> d!18070 m!37201))

(declare-fun m!37215 () Bool)

(assert (=> d!18070 m!37215))

(assert (=> bs!11106 d!18070))

(declare-fun d!18072 () Bool)

(declare-fun g!66 (Countable!5 Int) Int)

(assert (=> d!18072 (= (g!64 e!17469 (dynLambda!621 f!2168 lambda!4026)) (g!66 e!17469 (dynLambda!621 f!2168 lambda!4026)))))

(declare-fun bs!11109 () Bool)

(assert (= bs!11109 d!18072))

(assert (=> bs!11109 m!37201))

(declare-fun m!37217 () Bool)

(assert (=> bs!11109 m!37217))

(assert (=> bs!11105 d!18072))

(assert (=> b!34596 d!18070))

(push 1)

(assert (not b_lambda!9395))

(assert (not b_lambda!9393))

(assert (not d!18072))

(assert (not b_next!4919))

(assert b_and!7459)

(assert b_and!7463)

(assert (not b_lambda!9391))

(assert (not b_next!4917))

(assert b_and!7457)

(assert (not b_next!4915))

(assert (not d!18070))

(assert (not d!18068))

(assert (not b_lambda!9397))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4919))

(assert b_and!7459)

(assert b_and!7463)

(assert (not b_next!4917))

(assert b_and!7457)

(assert (not b_next!4915))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4350 () Bool)

(assert start!4350)

(declare-fun b_free!2075 () Bool)

(declare-fun b_next!4921 () Bool)

(assert (=> start!4350 (= b_free!2075 (not b_next!4921))))

(declare-fun tp!7142 () Bool)

(declare-fun b_and!7465 () Bool)

(assert (=> start!4350 (= tp!7142 b_and!7465)))

(declare-fun b_free!2077 () Bool)

(declare-fun b_next!4923 () Bool)

(assert (=> start!4350 (= b_free!2077 (not b_next!4923))))

(declare-fun tp!7141 () Bool)

(declare-fun b_and!7467 () Bool)

(assert (=> start!4350 (= tp!7141 b_and!7467)))

(assert (=> start!4350 true))

(declare-fun f!2168 () Int)

(declare-fun lambda!4043 () Int)

(declare-fun b_next!4925 () Bool)

(assert (=> start!4350 (= b_next!4923 (or (and start!4350 (= lambda!4043 f!2168)) b_next!4925))))

(declare-fun b!34613 () Bool)

(assert (=> b!34613 true))

(declare-fun g!53 () Int)

(declare-fun lambda!4044 () Int)

(declare-fun b_next!4927 () Bool)

(assert (=> start!4350 (= b_next!4921 (or (and b!34613 (= lambda!4044 g!53)) b_next!4927))))

(declare-fun b!34615 () Bool)

(assert (=> b!34615 true))

(declare-fun res!15855 () Bool)

(declare-fun e!17495 () Bool)

(assert (=> b!34613 (=> (not res!15855) (not e!17495))))

(assert (=> b!34613 (= res!15855 (= g!53 lambda!4044))))

(declare-fun b!34614 () Bool)

(declare-fun res!15856 () Bool)

(assert (=> b!34614 (=> (not res!15856) (not e!17495))))

(declare-datatypes () ((Countable!6 (CountableExt!2 (__x!46 Int)))))

(declare-fun e!17469 () Countable!6)

(declare-fun lambda!4045 () Int)

(declare-fun prop!284 () Bool)

(declare-fun d!20 (Countable!6 Int) Int)

(declare-fun dynLambda!624 (Int Int) Int)

(assert (=> b!34614 (= res!15856 (= prop!284 (= (d!20 e!17469 (dynLambda!624 f!2168 lambda!4045)) (+ (d!20 e!17469 (dynLambda!624 f!2168 lambda!4045)) 1))))))

(declare-fun res!15853 () Bool)

(assert (=> b!34615 (=> (not res!15853) (not e!17495))))

(declare-fun dynLambda!625 (Int Int) Int)

(declare-fun dynLambda!626 (Int Int) Int)

(assert (=> b!34615 (= res!15853 (= (d!20 e!17469 (dynLambda!624 f!2168 lambda!4045)) (+ (dynLambda!625 (dynLambda!626 g!53 (dynLambda!624 f!2168 lambda!4045)) (dynLambda!624 f!2168 lambda!4045)) 1)))))

(declare-fun b!34616 () Bool)

(declare-fun res!15852 () Bool)

(assert (=> b!34616 (=> (not res!15852) (not e!17495))))

(declare-datatypes () ((Unit!198 (Unit!199))))

(declare-fun tmp!77 () Unit!198)

(declare-fun gof!2 (Countable!6 Int) Unit!198)

(assert (=> b!34616 (= res!15852 (= tmp!77 (gof!2 e!17469 lambda!4045)))))

(declare-fun b!34617 () Bool)

(assert (=> b!34617 (= e!17495 (not prop!284))))

(declare-fun res!15854 () Bool)

(assert (=> start!4350 (=> (not res!15854) (not e!17495))))

(assert (=> start!4350 (= res!15854 (= f!2168 lambda!4043))))

(assert (=> start!4350 e!17495))

(assert (=> start!4350 true))

(assert (=> start!4350 tp!7142))

(assert (=> start!4350 tp!7141))

(assert (= (and start!4350 res!15854) b!34613))

(assert (= (and b!34613 res!15855) b!34615))

(assert (= (and b!34615 res!15853) b!34616))

(assert (= (and b!34616 res!15852) b!34614))

(assert (= (and b!34614 res!15856) b!34617))

(declare-fun b_lambda!9399 () Bool)

(assert (=> (not b_lambda!9399) (not b!34614)))

(declare-fun t!4657 () Bool)

(declare-fun tb!3997 () Bool)

(assert (=> (and start!4350 (= f!2168 f!2168) t!4657) tb!3997))

(declare-fun result!4253 () Bool)

(assert (=> tb!3997 (= result!4253 true)))

(assert (=> b!34614 t!4657))

(declare-fun b_and!7469 () Bool)

(assert (= b_and!7467 (and (=> t!4657 result!4253) b_and!7469)))

(declare-fun b_lambda!9401 () Bool)

(assert (=> (not b_lambda!9401) (not b!34615)))

(assert (=> b!34615 t!4657))

(declare-fun b_and!7471 () Bool)

(assert (= b_and!7469 (and (=> t!4657 result!4253) b_and!7471)))

(declare-fun b_lambda!9403 () Bool)

(assert (=> (not b_lambda!9403) (not b!34615)))

(declare-fun t!4659 () Bool)

(declare-fun tb!3999 () Bool)

(assert (=> (and start!4350 (= g!53 g!53) t!4659) tb!3999))

(declare-fun b_free!2079 () Bool)

(declare-fun b_next!4929 () Bool)

(assert (=> tb!3999 (= b_free!2079 (and (or (not b!34615) (not (= lambda!4045 (dynLambda!626 g!53 (dynLambda!624 f!2168 lambda!4045))))) (not b_next!4929)))))

(declare-fun result!4255 () Bool)

(declare-fun b_and!7473 () Bool)

(assert (=> tb!3999 (= result!4255 b_and!7473)))

(assert (=> b!34615 t!4659))

(declare-fun b_and!7475 () Bool)

(assert (= b_and!7465 (and (=> t!4659 result!4255) b_and!7475)))

(declare-fun b_lambda!9405 () Bool)

(assert (=> (not b_lambda!9405) (not b!34615)))

(declare-fun tb!4001 () Bool)

(declare-fun t!4661 () Bool)

(assert (=> (and tb!3999 (= (dynLambda!626 g!53 (dynLambda!624 f!2168 lambda!4045)) (dynLambda!626 g!53 (dynLambda!624 f!2168 lambda!4045))) t!4661) tb!4001))

(declare-fun result!4257 () Bool)

(assert (=> tb!4001 (= result!4257 true)))

(assert (=> b!34615 t!4661))

(declare-fun b_and!7477 () Bool)

(assert (= b_and!7473 (and (=> t!4661 result!4257) b_and!7477)))

(declare-fun m!37219 () Bool)

(assert (=> b!34614 m!37219))

(assert (=> b!34614 m!37219))

(declare-fun m!37221 () Bool)

(assert (=> b!34614 m!37221))

(assert (=> b!34614 m!37219))

(assert (=> b!34614 m!37219))

(assert (=> b!34614 m!37221))

(assert (=> b!34615 m!37219))

(declare-fun m!37223 () Bool)

(assert (=> b!34615 m!37223))

(assert (=> b!34615 m!37219))

(assert (=> b!34615 m!37219))

(assert (=> b!34615 m!37219))

(declare-fun m!37225 () Bool)

(assert (=> b!34615 m!37225))

(assert (=> b!34615 m!37219))

(assert (=> b!34615 m!37221))

(assert (=> b!34615 m!37219))

(declare-fun m!37227 () Bool)

(assert (=> b!34616 m!37227))

(push 1)

(assert (not b_next!4925))

(assert (not b!34615))

(assert b_and!7471)

(assert (not b!34614))

(assert (not b_lambda!9399))

(assert (not b_lambda!9405))

(assert b_and!7477)

(assert (not b_next!4929))

(assert (not b!34616))

(assert (not b_next!4927))

(assert (not b_lambda!9403))

(assert b_and!7475)

(assert (not b_lambda!9401))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4925))

(assert b_and!7471)

(assert b_and!7477)

(assert (not b_next!4929))

(assert (not b_next!4927))

(assert b_and!7475)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9407 () Bool)

(assert (= b_lambda!9399 (or (and start!4350 (= lambda!4043 f!2168)) (and start!4350 b_free!2077) b_lambda!9407)))

(declare-fun bs!11111 () Bool)

(declare-fun d!18074 () Bool)

(assert (= bs!11111 (and d!18074 start!4350)))

(declare-fun f!2196 (Countable!6 Int) Int)

(assert (=> bs!11111 (= (dynLambda!624 lambda!4043 lambda!4045) (f!2196 e!17469 lambda!4045))))

(declare-fun m!37229 () Bool)

(assert (=> bs!11111 m!37229))

(assert (=> (and start!4350 (= lambda!4043 f!2168) b!34614) d!18074))

(declare-fun b_lambda!9409 () Bool)

(assert (= b_lambda!9403 (or (and b!34613 (= lambda!4044 g!53)) (and start!4350 b_free!2075) b_lambda!9409)))

(declare-fun bs!11112 () Bool)

(declare-fun d!18076 () Bool)

(assert (= bs!11112 (and d!18076 b!34613)))

(declare-fun g!67 (Countable!6 Int) Int)

(assert (=> bs!11112 (= (dynLambda!626 lambda!4044 (dynLambda!624 f!2168 lambda!4045)) (g!67 e!17469 (dynLambda!624 f!2168 lambda!4045)))))

(assert (=> bs!11112 m!37219))

(declare-fun m!37231 () Bool)

(assert (=> bs!11112 m!37231))

(assert (=> (and b!34613 (= lambda!4044 g!53) b!34615) d!18076))

(declare-fun b_lambda!9411 () Bool)

(assert (= b_lambda!9405 (or (and b!34615 (= lambda!4045 (dynLambda!626 g!53 (dynLambda!624 f!2168 lambda!4045)))) (and tb!3999 b_free!2079) b_lambda!9411)))

(declare-fun bs!11113 () Bool)

(declare-fun d!18078 () Bool)

(assert (= bs!11113 (and d!18078 b!34615)))

(assert (=> bs!11113 (= (dynLambda!625 lambda!4045 (dynLambda!624 f!2168 lambda!4045)) (d!20 e!17469 (dynLambda!624 f!2168 lambda!4045)))))

(assert (=> bs!11113 m!37219))

(assert (=> bs!11113 m!37221))

(assert (=> (and b!34615 (= lambda!4045 (dynLambda!626 g!53 (dynLambda!624 f!2168 lambda!4045)))) d!18078))

(declare-fun b_lambda!9413 () Bool)

(assert (= b_lambda!9401 (or (and start!4350 (= lambda!4043 f!2168)) (and start!4350 b_free!2077) b_lambda!9413)))

(assert (=> (and start!4350 (= lambda!4043 f!2168) b!34615) d!18074))

(push 1)

(assert (not b_next!4925))

(assert (not b!34615))

(assert b_and!7471)

(assert (not b!34614))

(assert b_and!7477)

(assert (not b_next!4929))

(assert (not bs!11111))

(assert (not b_lambda!9407))

(assert (not b!34616))

(assert (not b_next!4927))

(assert (not bs!11112))

(assert (not b_lambda!9409))

(assert b_and!7475)

(assert (not b_lambda!9411))

(assert (not bs!11113))

(assert (not b_lambda!9413))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4925))

(assert b_and!7471)

(assert b_and!7477)

(assert (not b_next!4929))

(assert (not b_next!4927))

(assert b_and!7475)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18080 () Bool)

(declare-fun f!2198 (Countable!6 Int) Int)

(assert (=> d!18080 (= (f!2196 e!17469 lambda!4045) (f!2198 e!17469 lambda!4045))))

(declare-fun bs!11114 () Bool)

(assert (= bs!11114 d!18080))

(declare-fun m!37233 () Bool)

(assert (=> bs!11114 m!37233))

(assert (=> bs!11111 d!18080))

(declare-fun d!18082 () Bool)

(assert (=> d!18082 (= (d!20 e!17469 (dynLambda!624 f!2168 lambda!4045)) (+ (dynLambda!625 (g!67 e!17469 (dynLambda!624 f!2168 lambda!4045)) (dynLambda!624 f!2168 lambda!4045)) 1))))

(declare-fun b_lambda!9415 () Bool)

(assert (=> (not b_lambda!9415) (not d!18082)))

(declare-fun tb!4003 () Bool)

(declare-fun t!4664 () Bool)

(assert (=> (and tb!3999 (= (dynLambda!626 g!53 (dynLambda!624 f!2168 lambda!4045)) (g!67 e!17469 (dynLambda!624 f!2168 lambda!4045))) t!4664) tb!4003))

(declare-fun result!4259 () Bool)

(assert (=> tb!4003 (= result!4259 true)))

(assert (=> d!18082 t!4664))

(declare-fun b_and!7479 () Bool)

(assert (= b_and!7477 (and (=> t!4664 result!4259) b_and!7479)))

(assert (=> d!18082 m!37219))

(assert (=> d!18082 m!37231))

(assert (=> d!18082 m!37219))

(declare-fun m!37235 () Bool)

(assert (=> d!18082 m!37235))

(assert (=> b!34614 d!18082))

(declare-fun d!18084 () Bool)

(assert (=> d!18084 (= (g!67 e!17469 (f!2196 e!17469 lambda!4045)) lambda!4045)))

(declare-fun lt!6499 () Unit!198)

(declare-fun gof!3 (Countable!6 Int) Unit!198)

(assert (=> d!18084 (= lt!6499 (gof!3 e!17469 lambda!4045))))

(assert (=> d!18084 (= (gof!2 e!17469 lambda!4045) lt!6499)))

(declare-fun bs!11115 () Bool)

(assert (= bs!11115 d!18084))

(assert (=> bs!11115 m!37229))

(assert (=> bs!11115 m!37229))

(declare-fun m!37237 () Bool)

(assert (=> bs!11115 m!37237))

(declare-fun m!37239 () Bool)

(assert (=> bs!11115 m!37239))

(assert (=> b!34616 d!18084))

(declare-fun d!18086 () Bool)

(declare-fun g!69 (Countable!6 Int) Int)

(assert (=> d!18086 (= (g!67 e!17469 (dynLambda!624 f!2168 lambda!4045)) (g!69 e!17469 (dynLambda!624 f!2168 lambda!4045)))))

(declare-fun bs!11116 () Bool)

(assert (= bs!11116 d!18086))

(assert (=> bs!11116 m!37219))

(declare-fun m!37241 () Bool)

(assert (=> bs!11116 m!37241))

(assert (=> bs!11112 d!18086))

(assert (=> bs!11113 d!18082))

(assert (=> b!34615 d!18082))

(push 1)

(assert (not b_next!4925))

(assert (not d!18086))

(assert b_and!7471)

(assert (not d!18082))

(assert (not b_next!4929))

(assert (not b_lambda!9407))

(assert b_and!7479)

(assert (not b_lambda!9415))

(assert (not b_next!4927))

(assert (not b_lambda!9409))

(assert b_and!7475)

(assert (not d!18080))

(assert (not b_lambda!9411))

(assert (not d!18084))

(assert (not b_lambda!9413))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4925))

(assert b_and!7471)

(assert (not b_next!4929))

(assert b_and!7479)

(assert (not b_next!4927))

(assert b_and!7475)

(check-sat)

(pop 1)


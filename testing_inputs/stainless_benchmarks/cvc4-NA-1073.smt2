; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7876 () Bool)

(assert start!7876)

(declare-fun b_free!7271 () Bool)

(declare-fun b_next!38929 () Bool)

(assert (=> start!7876 (= b_free!7271 (not b_next!38929))))

(declare-fun tp!16027 () Bool)

(declare-fun b_and!58455 () Bool)

(assert (=> start!7876 (= tp!16027 b_and!58455)))

(declare-fun lambda!8927 () Int)

(declare-fun b!56705 () Bool)

(declare-fun A!2194 () Int)

(declare-fun b_next!38931 () Bool)

(assert (=> start!7876 (= b_next!38929 (or (and b!56705 (= lambda!8927 A!2194)) b_next!38931))))

(declare-fun bs!35459 () Bool)

(declare-fun b!56701 () Bool)

(assert (= bs!35459 (and b!56701 b!56705)))

(declare-fun lambda!8928 () Int)

(assert (=> bs!35459 (= lambda!8928 lambda!8927)))

(declare-fun b_next!38933 () Bool)

(assert (=> start!7876 (= b_next!38931 (or (and b!56701 (= lambda!8928 A!2194)) b_next!38933))))

(declare-fun bs!35460 () Bool)

(declare-fun b!56696 () Bool)

(assert (= bs!35460 (and b!56696 b!56705)))

(declare-fun lambda!8929 () Int)

(assert (=> bs!35460 (= lambda!8929 lambda!8927)))

(declare-fun bs!35461 () Bool)

(assert (= bs!35461 (and b!56696 b!56701)))

(assert (=> bs!35461 (= lambda!8929 lambda!8928)))

(declare-fun b_next!38935 () Bool)

(assert (=> start!7876 (= b_next!38933 (or (and b!56696 (= lambda!8929 A!2194)) b_next!38935))))

(declare-fun b!56694 () Bool)

(declare-fun e!30064 () Bool)

(declare-fun lt!10340 () Bool)

(assert (=> b!56694 (= e!30064 (not lt!10340))))

(declare-datatypes () ((Option!307 (Some!298 (v!2045 Object!261)) (None!299)) (Object!261 (BigIntStructure!9) (StructureExt!9 (__x!139 Int)) (OptionStructure!9 (ev!19 Object!261)) (Option!308 (value!4087 Option!307)) (Integer!250 (value!4088 Int)) (Open!261 (value!4089 Int)))))

(declare-fun y!1782 () Object!261)

(declare-fun x!24384 () Object!261)

(declare-fun thiss!8058 () Object!261)

(declare-fun someLaw!7 (Object!261 Object!261 Object!261) Bool)

(assert (=> b!56694 (= lt!10340 (someLaw!7 thiss!8058 x!24384 y!1782))))

(declare-fun doSomething!1 (Int Object!261 Object!261 Object!261) Object!261)

(assert (=> b!56694 (= lt!10340 (= (doSomething!1 A!2194 thiss!8058 x!24384 y!1782) (doSomething!1 A!2194 thiss!8058 y!1782 x!24384)))))

(declare-fun b!56695 () Bool)

(declare-fun e!30062 () Bool)

(assert (=> b!56695 (= e!30062 e!30064)))

(declare-fun res!26222 () Bool)

(assert (=> b!56695 (=> res!26222 e!30064)))

(declare-fun res!25596 () Bool)

(assert (=> b!56695 (= res!26222 (not res!25596))))

(declare-fun tp!16026 () Bool)

(declare-fun lt!10337 () Object!261)

(declare-fun e!30066 () Bool)

(declare-fun isStructure!0 (Object!261 Int) Bool)

(assert (=> b!56696 (= e!30066 (and tp!16026 (isStructure!0 lt!10337 lambda!8929)))))

(assert (=> b!56696 (= lt!10337 (ev!19 thiss!8058))))

(declare-fun b!56697 () Bool)

(declare-fun res!26218 () Bool)

(assert (=> b!56697 (=> (not res!26218) (not e!30062))))

(declare-fun dynLambda!913 (Int Object!261) Bool)

(assert (=> b!56697 (= res!26218 (dynLambda!913 A!2194 x!24384))))

(declare-fun b!56698 () Bool)

(declare-fun e!30069 () Bool)

(assert (=> b!56698 (= e!30066 e!30069)))

(declare-fun b!56699 () Bool)

(declare-fun res!26221 () Bool)

(assert (=> b!56699 (=> (not res!26221) (not e!30062))))

(declare-fun isBigIntStructure!0 (Object!261) Bool)

(assert (=> b!56699 (= res!26221 (isBigIntStructure!0 thiss!8058))))

(declare-fun res!26220 () Bool)

(assert (=> start!7876 (=> (not res!26220) (not e!30062))))

(assert (=> start!7876 (= res!26220 (isStructure!0 thiss!8058 A!2194))))

(assert (=> start!7876 e!30062))

(declare-fun lt!10336 () Object!261)

(assert (=> start!7876 (= lt!10336 y!1782)))

(declare-fun e!30063 () Bool)

(assert (=> start!7876 (and e!30063 (dynLambda!913 A!2194 lt!10336))))

(assert (=> start!7876 tp!16027))

(assert (=> start!7876 true))

(declare-fun lt!10334 () Object!261)

(assert (=> start!7876 (= lt!10334 x!24384)))

(declare-fun e!30068 () Bool)

(assert (=> start!7876 (and e!30068 (dynLambda!913 A!2194 lt!10334))))

(declare-fun lt!10339 () Object!261)

(assert (=> start!7876 (= lt!10339 thiss!8058)))

(assert (=> start!7876 (and e!30066 (isStructure!0 lt!10339 A!2194))))

(declare-fun b!56700 () Bool)

(declare-fun tp!16028 () Bool)

(assert (=> b!56700 (= e!30069 tp!16028)))

(declare-fun tp!16029 () Bool)

(declare-fun lt!10335 () Object!261)

(assert (=> b!56701 (= e!30068 (and tp!16029 (isStructure!0 lt!10335 lambda!8928)))))

(assert (=> b!56701 (= lt!10335 (ev!19 x!24384))))

(declare-fun b!56702 () Bool)

(declare-fun res!26219 () Bool)

(assert (=> b!56702 (=> (not res!26219) (not e!30062))))

(assert (=> b!56702 (= res!26219 (dynLambda!913 A!2194 y!1782))))

(declare-fun b!56703 () Bool)

(declare-fun e!30067 () Bool)

(declare-fun tp!16025 () Bool)

(assert (=> b!56703 (= e!30067 tp!16025)))

(declare-fun b!56704 () Bool)

(declare-fun e!30065 () Bool)

(assert (=> b!56704 (= e!30063 e!30065)))

(declare-fun tp!16031 () Bool)

(declare-fun lt!10338 () Object!261)

(assert (=> b!56705 (= e!30063 (and tp!16031 (isStructure!0 lt!10338 lambda!8927)))))

(assert (=> b!56705 (= lt!10338 (ev!19 y!1782))))

(declare-fun b!56706 () Bool)

(assert (=> b!56706 (= e!30068 e!30067)))

(declare-fun b!56707 () Bool)

(declare-fun res!26223 () Bool)

(assert (=> b!56707 (=> (not res!26223) (not e!30062))))

(declare-fun someLaw!1 (Object!261 Int Int) Bool)

(assert (=> b!56707 (= res!26223 (= res!25596 (someLaw!1 thiss!8058 (value!4088 x!24384) (value!4088 y!1782))))))

(assert (=> b!56707 (is-Integer!250 y!1782)))

(assert (=> b!56707 (is-Integer!250 x!24384)))

(declare-fun b!56708 () Bool)

(declare-fun tp!16030 () Bool)

(assert (=> b!56708 (= e!30065 tp!16030)))

(assert (= (and start!7876 res!26220) b!56697))

(assert (= (and b!56697 res!26218) b!56702))

(assert (= (and b!56702 res!26219) b!56699))

(assert (= (and b!56699 res!26221) b!56707))

(assert (= (and b!56707 res!26223) b!56695))

(assert (= (and b!56695 (not res!26222)) b!56694))

(assert (= (and start!7876 (is-OptionStructure!9 y!1782)) b!56705))

(assert (= (and b!56704 (is-Some!298 (value!4087 y!1782))) b!56708))

(assert (= (and start!7876 (is-Option!308 y!1782)) b!56704))

(assert (= (and start!7876 (is-OptionStructure!9 x!24384)) b!56701))

(assert (= (and b!56706 (is-Some!298 (value!4087 x!24384))) b!56703))

(assert (= (and start!7876 (is-Option!308 x!24384)) b!56706))

(assert (= (and start!7876 (is-OptionStructure!9 thiss!8058)) b!56696))

(assert (= (and b!56698 (is-Some!298 (value!4087 thiss!8058))) b!56700))

(assert (= (and start!7876 (is-Option!308 thiss!8058)) b!56698))

(declare-fun b_lambda!15181 () Bool)

(assert (=> (not b_lambda!15181) (not b!56697)))

(declare-fun t!46996 () Bool)

(declare-fun tb!45995 () Bool)

(assert (=> (and start!7876 (= A!2194 A!2194) t!46996) tb!45995))

(declare-fun result!46351 () Bool)

(assert (=> tb!45995 (= result!46351 true)))

(assert (=> b!56697 t!46996))

(declare-fun b_and!58457 () Bool)

(assert (= b_and!58455 (and (=> t!46996 result!46351) b_and!58457)))

(declare-fun b_lambda!15183 () Bool)

(assert (=> (not b_lambda!15183) (not start!7876)))

(declare-fun t!46998 () Bool)

(declare-fun tb!45997 () Bool)

(assert (=> (and start!7876 (= A!2194 A!2194) t!46998) tb!45997))

(declare-fun result!46353 () Bool)

(assert (=> tb!45997 (= result!46353 true)))

(assert (=> start!7876 t!46998))

(declare-fun b_and!58459 () Bool)

(assert (= b_and!58457 (and (=> t!46998 result!46353) b_and!58459)))

(declare-fun b_lambda!15185 () Bool)

(assert (=> (not b_lambda!15185) (not start!7876)))

(declare-fun t!47000 () Bool)

(declare-fun tb!45999 () Bool)

(assert (=> (and start!7876 (= A!2194 A!2194) t!47000) tb!45999))

(declare-fun result!46355 () Bool)

(assert (=> tb!45999 (= result!46355 true)))

(assert (=> start!7876 t!47000))

(declare-fun b_and!58461 () Bool)

(assert (= b_and!58459 (and (=> t!47000 result!46355) b_and!58461)))

(declare-fun b_lambda!15187 () Bool)

(assert (=> (not b_lambda!15187) (not b!56702)))

(declare-fun t!47002 () Bool)

(declare-fun tb!46001 () Bool)

(assert (=> (and start!7876 (= A!2194 A!2194) t!47002) tb!46001))

(declare-fun result!46357 () Bool)

(assert (=> tb!46001 (= result!46357 true)))

(assert (=> b!56702 t!47002))

(declare-fun b_and!58463 () Bool)

(assert (= b_and!58461 (and (=> t!47002 result!46357) b_and!58463)))

(declare-fun m!61600 () Bool)

(assert (=> b!56707 m!61600))

(declare-fun m!61602 () Bool)

(assert (=> b!56696 m!61602))

(declare-fun m!61604 () Bool)

(assert (=> start!7876 m!61604))

(declare-fun m!61606 () Bool)

(assert (=> start!7876 m!61606))

(declare-fun m!61608 () Bool)

(assert (=> start!7876 m!61608))

(declare-fun m!61610 () Bool)

(assert (=> start!7876 m!61610))

(declare-fun m!61612 () Bool)

(assert (=> b!56701 m!61612))

(declare-fun m!61614 () Bool)

(assert (=> b!56702 m!61614))

(declare-fun m!61616 () Bool)

(assert (=> b!56694 m!61616))

(declare-fun m!61618 () Bool)

(assert (=> b!56694 m!61618))

(declare-fun m!61620 () Bool)

(assert (=> b!56694 m!61620))

(declare-fun m!61622 () Bool)

(assert (=> b!56697 m!61622))

(declare-fun m!61624 () Bool)

(assert (=> b!56699 m!61624))

(declare-fun m!61626 () Bool)

(assert (=> b!56705 m!61626))

(push 1)

(assert (not b!56700))

(assert (not b!56703))

(assert (not b!56701))

(assert (not b_lambda!15181))

(assert (not b!56694))

(assert (not b_next!38935))

(assert (not b!56708))

(assert (not b_lambda!15183))

(assert (not b_lambda!15185))

(assert (not start!7876))

(assert b_and!58463)

(assert (not b!56705))

(assert (not b!56699))

(assert (not b!56696))

(assert (not b_lambda!15187))

(assert (not b!56707))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58463)

(assert (not b_next!38935))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15189 () Bool)

(assert (= b_lambda!15185 (or (and b!56705 (= lambda!8927 A!2194)) (and b!56701 (= lambda!8928 A!2194)) (and b!56696 (= lambda!8929 A!2194)) (and start!7876 b_free!7271) b_lambda!15189)))

(declare-fun bs!35462 () Bool)

(declare-fun d!49588 () Bool)

(assert (= bs!35462 (and d!49588 b!56705)))

(assert (=> bs!35462 (= (dynLambda!913 lambda!8927 lt!10334) true)))

(assert (=> (and b!56705 (= lambda!8927 A!2194) start!7876) d!49588))

(declare-fun bs!35463 () Bool)

(declare-fun d!49590 () Bool)

(assert (= bs!35463 (and d!49590 b!56701)))

(assert (=> bs!35463 (= (dynLambda!913 lambda!8928 lt!10334) true)))

(assert (=> (and b!56701 (= lambda!8928 A!2194) start!7876) d!49590))

(declare-fun bs!35464 () Bool)

(declare-fun d!49592 () Bool)

(assert (= bs!35464 (and d!49592 b!56696)))

(assert (=> bs!35464 (= (dynLambda!913 lambda!8929 lt!10334) true)))

(assert (=> (and b!56696 (= lambda!8929 A!2194) start!7876) d!49592))

(declare-fun b_lambda!15191 () Bool)

(assert (= b_lambda!15181 (or (and b!56705 (= lambda!8927 A!2194)) (and b!56701 (= lambda!8928 A!2194)) (and b!56696 (= lambda!8929 A!2194)) (and start!7876 b_free!7271) b_lambda!15191)))

(declare-fun bs!35465 () Bool)

(declare-fun d!49594 () Bool)

(assert (= bs!35465 (and d!49594 b!56705)))

(assert (=> bs!35465 (= (dynLambda!913 lambda!8927 x!24384) true)))

(assert (=> (and b!56705 (= lambda!8927 A!2194) b!56697) d!49594))

(declare-fun bs!35466 () Bool)

(declare-fun d!49596 () Bool)

(assert (= bs!35466 (and d!49596 b!56701)))

(assert (=> bs!35466 (= (dynLambda!913 lambda!8928 x!24384) true)))

(assert (=> (and b!56701 (= lambda!8928 A!2194) b!56697) d!49596))

(declare-fun bs!35467 () Bool)

(declare-fun d!49598 () Bool)

(assert (= bs!35467 (and d!49598 b!56696)))

(assert (=> bs!35467 (= (dynLambda!913 lambda!8929 x!24384) true)))

(assert (=> (and b!56696 (= lambda!8929 A!2194) b!56697) d!49598))

(declare-fun b_lambda!15193 () Bool)

(assert (= b_lambda!15187 (or (and b!56705 (= lambda!8927 A!2194)) (and b!56701 (= lambda!8928 A!2194)) (and b!56696 (= lambda!8929 A!2194)) (and start!7876 b_free!7271) b_lambda!15193)))

(declare-fun bs!35468 () Bool)

(declare-fun d!49600 () Bool)

(assert (= bs!35468 (and d!49600 b!56705)))

(assert (=> bs!35468 (= (dynLambda!913 lambda!8927 y!1782) true)))

(assert (=> (and b!56705 (= lambda!8927 A!2194) b!56702) d!49600))

(declare-fun bs!35469 () Bool)

(declare-fun d!49602 () Bool)

(assert (= bs!35469 (and d!49602 b!56701)))

(assert (=> bs!35469 (= (dynLambda!913 lambda!8928 y!1782) true)))

(assert (=> (and b!56701 (= lambda!8928 A!2194) b!56702) d!49602))

(declare-fun bs!35470 () Bool)

(declare-fun d!49604 () Bool)

(assert (= bs!35470 (and d!49604 b!56696)))

(assert (=> bs!35470 (= (dynLambda!913 lambda!8929 y!1782) true)))

(assert (=> (and b!56696 (= lambda!8929 A!2194) b!56702) d!49604))

(declare-fun b_lambda!15195 () Bool)

(assert (= b_lambda!15183 (or (and b!56705 (= lambda!8927 A!2194)) (and b!56701 (= lambda!8928 A!2194)) (and b!56696 (= lambda!8929 A!2194)) (and start!7876 b_free!7271) b_lambda!15195)))

(declare-fun bs!35471 () Bool)

(declare-fun d!49606 () Bool)

(assert (= bs!35471 (and d!49606 b!56705)))

(assert (=> bs!35471 (= (dynLambda!913 lambda!8927 lt!10336) true)))

(assert (=> (and b!56705 (= lambda!8927 A!2194) start!7876) d!49606))

(declare-fun bs!35472 () Bool)

(declare-fun d!49608 () Bool)

(assert (= bs!35472 (and d!49608 b!56701)))

(assert (=> bs!35472 (= (dynLambda!913 lambda!8928 lt!10336) true)))

(assert (=> (and b!56701 (= lambda!8928 A!2194) start!7876) d!49608))

(declare-fun bs!35473 () Bool)

(declare-fun d!49610 () Bool)

(assert (= bs!35473 (and d!49610 b!56696)))

(assert (=> bs!35473 (= (dynLambda!913 lambda!8929 lt!10336) true)))

(assert (=> (and b!56696 (= lambda!8929 A!2194) start!7876) d!49610))

(push 1)

(assert (not b!56700))

(assert (not b_lambda!15191))

(assert (not b!56703))

(assert (not b!56701))

(assert (not b!56694))

(assert (not b_next!38935))

(assert (not b!56708))

(assert (not b_lambda!15195))

(assert (not start!7876))

(assert (not b_lambda!15193))

(assert b_and!58463)

(assert (not b_lambda!15189))

(assert (not b!56705))

(assert (not b!56699))

(assert (not b!56696))

(assert (not b!56707))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58463)

(assert (not b_next!38935))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!35474 () Bool)

(declare-fun d!49612 () Bool)

(assert (= bs!35474 (and d!49612 b!56705)))

(declare-fun lambda!8934 () Int)

(assert (=> bs!35474 (not (= lambda!8934 lambda!8927))))

(declare-fun bs!35475 () Bool)

(assert (= bs!35475 (and d!49612 b!56701)))

(assert (=> bs!35475 (not (= lambda!8934 lambda!8928))))

(declare-fun bs!35476 () Bool)

(assert (= bs!35476 (and d!49612 b!56696)))

(assert (=> bs!35476 (not (= lambda!8934 lambda!8929))))

(declare-fun b_next!38937 () Bool)

(assert (=> start!7876 (= b_next!38935 (or (and d!49612 (= lambda!8934 A!2194)) b_next!38937))))

(declare-fun e!30072 () Bool)

(assert (=> d!49612 e!30072))

(declare-fun res!26229 () Bool)

(assert (=> d!49612 (=> (not res!26229) (not e!30072))))

(declare-fun lt!10360 () Bool)

(assert (=> d!49612 (= res!26229 lt!10360)))

(declare-fun lt!10358 () Bool)

(declare-datatypes () ((ProofOps!312 (ProofOps!313 (prop!346 Bool)))))

(declare-fun because!1 (ProofOps!312 Bool) Bool)

(assert (=> d!49612 (= lt!10360 (because!1 (ProofOps!313 lt!10358) (= (+ (value!4088 x!24384) (value!4088 y!1782)) (+ (value!4088 y!1782) (value!4088 x!24384)))))))

(declare-fun lt!10357 () Object!261)

(declare-fun lt!10359 () Object!261)

(assert (=> d!49612 (= lt!10358 (someLaw!7 thiss!8058 lt!10357 lt!10359))))

(assert (=> d!49612 (= lt!10358 (= (doSomething!1 lambda!8934 thiss!8058 lt!10357 lt!10359) (doSomething!1 lambda!8934 thiss!8058 lt!10359 lt!10357)))))

(assert (=> d!49612 (= lt!10359 (Integer!250 (value!4088 y!1782)))))

(assert (=> d!49612 (= lt!10357 (Integer!250 (value!4088 x!24384)))))

(assert (=> d!49612 (= (someLaw!1 thiss!8058 (value!4088 x!24384) (value!4088 y!1782)) lt!10360)))

(declare-fun b!56711 () Bool)

(declare-fun lt!10356 () Bool)

(assert (=> b!56711 (= e!30072 lt!10356)))

(declare-fun lt!10361 () Object!261)

(declare-fun lt!10355 () Object!261)

(assert (=> b!56711 (= lt!10356 (someLaw!7 thiss!8058 lt!10361 lt!10355))))

(assert (=> b!56711 (= lt!10356 (= (doSomething!1 lambda!8934 thiss!8058 lt!10361 lt!10355) (doSomething!1 lambda!8934 thiss!8058 lt!10355 lt!10361)))))

(assert (=> b!56711 (= lt!10355 (Integer!250 (value!4088 y!1782)))))

(assert (=> b!56711 (= lt!10361 (Integer!250 (value!4088 x!24384)))))

(assert (= (and d!49612 res!26229) b!56711))

(declare-fun m!61628 () Bool)

(assert (=> d!49612 m!61628))

(declare-fun m!61630 () Bool)

(assert (=> d!49612 m!61630))

(declare-fun m!61632 () Bool)

(assert (=> d!49612 m!61632))

(declare-fun m!61634 () Bool)

(assert (=> d!49612 m!61634))

(declare-fun m!61636 () Bool)

(assert (=> b!56711 m!61636))

(declare-fun m!61638 () Bool)

(assert (=> b!56711 m!61638))

(declare-fun m!61640 () Bool)

(assert (=> b!56711 m!61640))

(assert (=> b!56707 d!49612))

(declare-fun bs!35477 () Bool)

(declare-fun b!56717 () Bool)

(assert (= bs!35477 (and b!56717 b!56705)))

(declare-fun lambda!8937 () Int)

(assert (=> bs!35477 (= lambda!8937 lambda!8927)))

(declare-fun bs!35478 () Bool)

(assert (= bs!35478 (and b!56717 b!56701)))

(assert (=> bs!35478 (= lambda!8937 lambda!8928)))

(declare-fun bs!35479 () Bool)

(assert (= bs!35479 (and b!56717 b!56696)))

(assert (=> bs!35479 (= lambda!8937 lambda!8929)))

(declare-fun bs!35480 () Bool)

(assert (= bs!35480 (and b!56717 d!49612)))

(assert (=> bs!35480 (not (= lambda!8937 lambda!8934))))

(declare-fun b_next!38939 () Bool)

(assert (=> start!7876 (= b_next!38937 (or (and b!56717 (= lambda!8937 A!2194)) b_next!38939))))

(declare-fun d!49614 () Bool)

(declare-fun res!26234 () Bool)

(declare-fun e!30075 () Bool)

(assert (=> d!49614 (=> res!26234 e!30075)))

(assert (=> d!49614 (= res!26234 (isBigIntStructure!0 lt!10338))))

(assert (=> d!49614 (= (isStructure!0 lt!10338 lambda!8927) e!30075)))

(declare-fun b!56716 () Bool)

(declare-fun res!26235 () Bool)

(assert (=> b!56716 (=> res!26235 e!30075)))

(declare-fun isStructureExt!0 (Object!261 Int) Bool)

(assert (=> b!56716 (= res!26235 (isStructureExt!0 lt!10338 lambda!8927))))

(declare-fun isOptionStructure!0 (Object!261 Int) Bool)

(assert (=> b!56717 (= e!30075 (isOptionStructure!0 lt!10338 lambda!8937))))

(assert (= (and d!49614 (not res!26234)) b!56716))

(assert (= (and b!56716 (not res!26235)) b!56717))

(declare-fun m!61642 () Bool)

(assert (=> d!49614 m!61642))

(declare-fun m!61644 () Bool)

(assert (=> b!56716 m!61644))

(declare-fun m!61646 () Bool)

(assert (=> b!56717 m!61646))

(assert (=> b!56705 d!49614))

(declare-fun bs!35481 () Bool)

(declare-fun b!56719 () Bool)

(assert (= bs!35481 (and b!56719 b!56717)))

(declare-fun lambda!8938 () Int)

(assert (=> bs!35481 (= lambda!8938 lambda!8937)))

(declare-fun bs!35482 () Bool)

(assert (= bs!35482 (and b!56719 d!49612)))

(assert (=> bs!35482 (not (= lambda!8938 lambda!8934))))

(declare-fun bs!35483 () Bool)

(assert (= bs!35483 (and b!56719 b!56705)))

(assert (=> bs!35483 (= lambda!8938 lambda!8927)))

(declare-fun bs!35484 () Bool)

(assert (= bs!35484 (and b!56719 b!56696)))

(assert (=> bs!35484 (= lambda!8938 lambda!8929)))

(declare-fun bs!35485 () Bool)

(assert (= bs!35485 (and b!56719 b!56701)))

(assert (=> bs!35485 (= lambda!8938 lambda!8928)))

(declare-fun b_next!38941 () Bool)

(assert (=> start!7876 (= b_next!38939 (or (and b!56719 (= lambda!8938 A!2194)) b_next!38941))))

(declare-fun d!49616 () Bool)

(declare-fun res!26236 () Bool)

(declare-fun e!30076 () Bool)

(assert (=> d!49616 (=> res!26236 e!30076)))

(assert (=> d!49616 (= res!26236 (isBigIntStructure!0 lt!10335))))

(assert (=> d!49616 (= (isStructure!0 lt!10335 lambda!8928) e!30076)))

(declare-fun b!56718 () Bool)

(declare-fun res!26237 () Bool)

(assert (=> b!56718 (=> res!26237 e!30076)))

(assert (=> b!56718 (= res!26237 (isStructureExt!0 lt!10335 lambda!8928))))

(assert (=> b!56719 (= e!30076 (isOptionStructure!0 lt!10335 lambda!8938))))

(assert (= (and d!49616 (not res!26236)) b!56718))

(assert (= (and b!56718 (not res!26237)) b!56719))

(declare-fun m!61648 () Bool)

(assert (=> d!49616 m!61648))

(declare-fun m!61650 () Bool)

(assert (=> b!56718 m!61650))

(declare-fun m!61652 () Bool)

(assert (=> b!56719 m!61652))

(assert (=> b!56701 d!49616))

(declare-fun d!49618 () Bool)

(assert (=> d!49618 true))

(assert (=> d!49618 true))

(declare-fun res!26240 () Bool)

(assert (=> d!49618 (= (someLaw!7 thiss!8058 x!24384 y!1782) res!26240)))

(assert (=> b!56694 d!49618))

(declare-fun bs!35486 () Bool)

(declare-fun b!56734 () Bool)

(assert (= bs!35486 (and b!56734 b!56719)))

(declare-fun lambda!8945 () Int)

(assert (=> bs!35486 (= lambda!8945 lambda!8938)))

(declare-fun bs!35487 () Bool)

(assert (= bs!35487 (and b!56734 b!56717)))

(assert (=> bs!35487 (= lambda!8945 lambda!8937)))

(declare-fun bs!35488 () Bool)

(assert (= bs!35488 (and b!56734 d!49612)))

(assert (=> bs!35488 (not (= lambda!8945 lambda!8934))))

(declare-fun bs!35489 () Bool)

(assert (= bs!35489 (and b!56734 b!56705)))

(assert (=> bs!35489 (= lambda!8945 lambda!8927)))

(declare-fun bs!35490 () Bool)

(assert (= bs!35490 (and b!56734 b!56696)))

(assert (=> bs!35490 (= lambda!8945 lambda!8929)))

(declare-fun bs!35491 () Bool)

(assert (= bs!35491 (and b!56734 b!56701)))

(assert (=> bs!35491 (= lambda!8945 lambda!8928)))

(declare-fun b_next!38943 () Bool)

(assert (=> start!7876 (= b_next!38941 (or (and b!56734 (= lambda!8945 A!2194)) b_next!38943))))

(declare-fun b!56732 () Bool)

(declare-fun e!30087 () Object!261)

(declare-fun e!30086 () Object!261)

(assert (=> b!56732 (= e!30087 e!30086)))

(declare-fun c!12149 () Bool)

(assert (=> b!56732 (= c!12149 (isStructureExt!0 thiss!8058 A!2194))))

(declare-fun lt!10369 () Object!261)

(declare-fun d!49620 () Bool)

(declare-fun doSomething!7 (Object!261 Object!261 Object!261) Object!261)

(assert (=> d!49620 (= lt!10369 (doSomething!7 thiss!8058 x!24384 y!1782))))

(assert (=> d!49620 (= lt!10369 e!30087)))

(declare-fun c!12148 () Bool)

(assert (=> d!49620 (= c!12148 (isBigIntStructure!0 thiss!8058))))

(assert (=> d!49620 (= (doSomething!1 A!2194 thiss!8058 x!24384 y!1782) lt!10369)))

(declare-fun b!56733 () Bool)

(declare-fun lt!10370 () Int)

(assert (=> b!56733 (= e!30087 (Integer!250 lt!10370))))

(assert (=> b!56733 (dynLambda!913 A!2194 (Integer!250 lt!10370))))

(declare-fun doSomething!2 (Object!261 Int Int) Int)

(assert (=> b!56733 (= lt!10370 (doSomething!2 thiss!8058 (value!4088 x!24384) (value!4088 y!1782)))))

(assert (=> b!56733 (is-Integer!250 y!1782)))

(assert (=> b!56733 (is-Integer!250 x!24384)))

(declare-fun lt!10368 () Option!307)

(assert (=> b!56734 (= e!30086 (Option!308 lt!10368))))

(assert (=> b!56734 (dynLambda!913 A!2194 (Option!308 lt!10368))))

(declare-fun doSomething!3 (Int Object!261 Option!307 Option!307) Option!307)

(assert (=> b!56734 (= lt!10368 (doSomething!3 lambda!8945 thiss!8058 (value!4087 x!24384) (value!4087 y!1782)))))

(declare-fun e!30085 () Bool)

(assert (=> b!56734 e!30085))

(declare-fun res!26246 () Bool)

(assert (=> b!56734 (=> (not res!26246) (not e!30085))))

(assert (=> b!56734 (= res!26246 (is-Option!308 y!1782))))

(declare-fun e!30088 () Bool)

(assert (=> b!56734 e!30088))

(declare-fun res!26247 () Bool)

(assert (=> b!56734 (=> (not res!26247) (not e!30088))))

(assert (=> b!56734 (= res!26247 (is-Option!308 x!24384))))

(declare-fun b!56735 () Bool)

(declare-fun doSomething!4 (Int Object!261 Object!261 Object!261) Object!261)

(assert (=> b!56735 (= e!30086 (doSomething!4 A!2194 thiss!8058 x!24384 y!1782))))

(declare-fun b!56736 () Bool)

(declare-fun isOption!17 (Option!307 Int) Bool)

(assert (=> b!56736 (= e!30088 (isOption!17 (value!4087 x!24384) lambda!8945))))

(declare-fun b!56737 () Bool)

(assert (=> b!56737 (= e!30085 (isOption!17 (value!4087 y!1782) lambda!8945))))

(assert (= (and b!56734 res!26247) b!56736))

(assert (= (and b!56734 res!26246) b!56737))

(assert (= (and b!56732 c!12149) b!56735))

(assert (= (and b!56732 (not c!12149)) b!56734))

(assert (= (and d!49620 c!12148) b!56733))

(assert (= (and d!49620 (not c!12148)) b!56732))

(declare-fun b_lambda!15197 () Bool)

(assert (=> (not b_lambda!15197) (not b!56733)))

(declare-fun t!47004 () Bool)

(declare-fun tb!46003 () Bool)

(assert (=> (and start!7876 (= A!2194 A!2194) t!47004) tb!46003))

(declare-fun result!46359 () Bool)

(assert (=> tb!46003 (= result!46359 true)))

(assert (=> b!56733 t!47004))

(declare-fun b_and!58465 () Bool)

(assert (= b_and!58463 (and (=> t!47004 result!46359) b_and!58465)))

(declare-fun b_lambda!15199 () Bool)

(assert (=> (not b_lambda!15199) (not b!56734)))

(declare-fun t!47006 () Bool)

(declare-fun tb!46005 () Bool)

(assert (=> (and start!7876 (= A!2194 A!2194) t!47006) tb!46005))

(declare-fun result!46361 () Bool)

(assert (=> tb!46005 (= result!46361 true)))

(assert (=> b!56734 t!47006))

(declare-fun b_and!58467 () Bool)

(assert (= b_and!58465 (and (=> t!47006 result!46361) b_and!58467)))

(declare-fun m!61654 () Bool)

(assert (=> b!56733 m!61654))

(declare-fun m!61656 () Bool)

(assert (=> b!56733 m!61656))

(declare-fun m!61658 () Bool)

(assert (=> b!56736 m!61658))

(declare-fun m!61660 () Bool)

(assert (=> b!56737 m!61660))

(declare-fun m!61662 () Bool)

(assert (=> b!56735 m!61662))

(declare-fun m!61664 () Bool)

(assert (=> b!56734 m!61664))

(declare-fun m!61666 () Bool)

(assert (=> b!56734 m!61666))

(declare-fun m!61668 () Bool)

(assert (=> b!56732 m!61668))

(declare-fun m!61670 () Bool)

(assert (=> d!49620 m!61670))

(assert (=> d!49620 m!61624))

(assert (=> b!56694 d!49620))

(declare-fun bs!35492 () Bool)

(declare-fun b!56740 () Bool)

(assert (= bs!35492 (and b!56740 b!56719)))

(declare-fun lambda!8946 () Int)

(assert (=> bs!35492 (= lambda!8946 lambda!8938)))

(declare-fun bs!35493 () Bool)

(assert (= bs!35493 (and b!56740 b!56717)))

(assert (=> bs!35493 (= lambda!8946 lambda!8937)))

(declare-fun bs!35494 () Bool)

(assert (= bs!35494 (and b!56740 d!49612)))

(assert (=> bs!35494 (not (= lambda!8946 lambda!8934))))

(declare-fun bs!35495 () Bool)

(assert (= bs!35495 (and b!56740 b!56705)))

(assert (=> bs!35495 (= lambda!8946 lambda!8927)))

(declare-fun bs!35496 () Bool)

(assert (= bs!35496 (and b!56740 b!56696)))

(assert (=> bs!35496 (= lambda!8946 lambda!8929)))

(declare-fun bs!35497 () Bool)

(assert (= bs!35497 (and b!56740 b!56734)))

(assert (=> bs!35497 (= lambda!8946 lambda!8945)))

(declare-fun bs!35498 () Bool)

(assert (= bs!35498 (and b!56740 b!56701)))

(assert (=> bs!35498 (= lambda!8946 lambda!8928)))

(declare-fun b_next!38945 () Bool)

(assert (=> start!7876 (= b_next!38943 (or (and b!56740 (= lambda!8946 A!2194)) b_next!38945))))

(declare-fun b!56738 () Bool)

(declare-fun e!30091 () Object!261)

(declare-fun e!30090 () Object!261)

(assert (=> b!56738 (= e!30091 e!30090)))

(declare-fun c!12151 () Bool)

(assert (=> b!56738 (= c!12151 (isStructureExt!0 thiss!8058 A!2194))))

(declare-fun lt!10372 () Object!261)

(declare-fun d!49622 () Bool)

(assert (=> d!49622 (= lt!10372 (doSomething!7 thiss!8058 y!1782 x!24384))))

(assert (=> d!49622 (= lt!10372 e!30091)))

(declare-fun c!12150 () Bool)

(assert (=> d!49622 (= c!12150 (isBigIntStructure!0 thiss!8058))))

(assert (=> d!49622 (= (doSomething!1 A!2194 thiss!8058 y!1782 x!24384) lt!10372)))

(declare-fun b!56739 () Bool)

(declare-fun lt!10373 () Int)

(assert (=> b!56739 (= e!30091 (Integer!250 lt!10373))))

(assert (=> b!56739 (dynLambda!913 A!2194 (Integer!250 lt!10373))))

(assert (=> b!56739 (= lt!10373 (doSomething!2 thiss!8058 (value!4088 y!1782) (value!4088 x!24384)))))

(assert (=> b!56739 (is-Integer!250 x!24384)))

(assert (=> b!56739 (is-Integer!250 y!1782)))

(declare-fun lt!10371 () Option!307)

(assert (=> b!56740 (= e!30090 (Option!308 lt!10371))))

(assert (=> b!56740 (dynLambda!913 A!2194 (Option!308 lt!10371))))

(assert (=> b!56740 (= lt!10371 (doSomething!3 lambda!8946 thiss!8058 (value!4087 y!1782) (value!4087 x!24384)))))

(declare-fun e!30089 () Bool)

(assert (=> b!56740 e!30089))

(declare-fun res!26248 () Bool)

(assert (=> b!56740 (=> (not res!26248) (not e!30089))))

(assert (=> b!56740 (= res!26248 (is-Option!308 x!24384))))

(declare-fun e!30092 () Bool)

(assert (=> b!56740 e!30092))

(declare-fun res!26249 () Bool)

(assert (=> b!56740 (=> (not res!26249) (not e!30092))))

(assert (=> b!56740 (= res!26249 (is-Option!308 y!1782))))

(declare-fun b!56741 () Bool)

(assert (=> b!56741 (= e!30090 (doSomething!4 A!2194 thiss!8058 y!1782 x!24384))))

(declare-fun b!56742 () Bool)

(assert (=> b!56742 (= e!30092 (isOption!17 (value!4087 y!1782) lambda!8946))))

(declare-fun b!56743 () Bool)

(assert (=> b!56743 (= e!30089 (isOption!17 (value!4087 x!24384) lambda!8946))))

(assert (= (and b!56740 res!26249) b!56742))

(assert (= (and b!56740 res!26248) b!56743))

(assert (= (and b!56738 c!12151) b!56741))

(assert (= (and b!56738 (not c!12151)) b!56740))

(assert (= (and d!49622 c!12150) b!56739))

(assert (= (and d!49622 (not c!12150)) b!56738))

(declare-fun b_lambda!15201 () Bool)

(assert (=> (not b_lambda!15201) (not b!56739)))

(declare-fun t!47008 () Bool)

(declare-fun tb!46007 () Bool)

(assert (=> (and start!7876 (= A!2194 A!2194) t!47008) tb!46007))

(declare-fun result!46363 () Bool)

(assert (=> tb!46007 (= result!46363 true)))

(assert (=> b!56739 t!47008))

(declare-fun b_and!58469 () Bool)

(assert (= b_and!58467 (and (=> t!47008 result!46363) b_and!58469)))

(declare-fun b_lambda!15203 () Bool)

(assert (=> (not b_lambda!15203) (not b!56740)))

(declare-fun t!47010 () Bool)

(declare-fun tb!46009 () Bool)

(assert (=> (and start!7876 (= A!2194 A!2194) t!47010) tb!46009))

(declare-fun result!46365 () Bool)

(assert (=> tb!46009 (= result!46365 true)))

(assert (=> b!56740 t!47010))

(declare-fun b_and!58471 () Bool)

(assert (= b_and!58469 (and (=> t!47010 result!46365) b_and!58471)))

(declare-fun m!61672 () Bool)

(assert (=> b!56739 m!61672))

(declare-fun m!61674 () Bool)

(assert (=> b!56739 m!61674))

(declare-fun m!61676 () Bool)

(assert (=> b!56742 m!61676))

(declare-fun m!61678 () Bool)

(assert (=> b!56743 m!61678))

(declare-fun m!61680 () Bool)

(assert (=> b!56741 m!61680))

(declare-fun m!61682 () Bool)

(assert (=> b!56740 m!61682))

(declare-fun m!61684 () Bool)

(assert (=> b!56740 m!61684))

(assert (=> b!56738 m!61668))

(declare-fun m!61686 () Bool)

(assert (=> d!49622 m!61686))

(assert (=> d!49622 m!61624))

(assert (=> b!56694 d!49622))

(declare-fun bs!35499 () Bool)

(declare-fun b!56745 () Bool)

(assert (= bs!35499 (and b!56745 b!56719)))

(declare-fun lambda!8947 () Int)

(assert (=> bs!35499 (= lambda!8947 lambda!8938)))

(declare-fun bs!35500 () Bool)

(assert (= bs!35500 (and b!56745 b!56717)))

(assert (=> bs!35500 (= lambda!8947 lambda!8937)))

(declare-fun bs!35501 () Bool)

(assert (= bs!35501 (and b!56745 d!49612)))

(assert (=> bs!35501 (not (= lambda!8947 lambda!8934))))

(declare-fun bs!35502 () Bool)

(assert (= bs!35502 (and b!56745 b!56705)))

(assert (=> bs!35502 (= lambda!8947 lambda!8927)))

(declare-fun bs!35503 () Bool)

(assert (= bs!35503 (and b!56745 b!56696)))

(assert (=> bs!35503 (= lambda!8947 lambda!8929)))

(declare-fun bs!35504 () Bool)

(assert (= bs!35504 (and b!56745 b!56734)))

(assert (=> bs!35504 (= lambda!8947 lambda!8945)))

(declare-fun bs!35505 () Bool)

(assert (= bs!35505 (and b!56745 b!56701)))

(assert (=> bs!35505 (= lambda!8947 lambda!8928)))

(declare-fun bs!35506 () Bool)

(assert (= bs!35506 (and b!56745 b!56740)))

(assert (=> bs!35506 (= lambda!8947 lambda!8946)))

(declare-fun b_next!38947 () Bool)

(assert (=> start!7876 (= b_next!38945 (or (and b!56745 (= lambda!8947 A!2194)) b_next!38947))))

(declare-fun d!49624 () Bool)

(declare-fun res!26250 () Bool)

(declare-fun e!30093 () Bool)

(assert (=> d!49624 (=> res!26250 e!30093)))

(assert (=> d!49624 (= res!26250 (isBigIntStructure!0 thiss!8058))))

(assert (=> d!49624 (= (isStructure!0 thiss!8058 A!2194) e!30093)))

(declare-fun b!56744 () Bool)

(declare-fun res!26251 () Bool)

(assert (=> b!56744 (=> res!26251 e!30093)))

(assert (=> b!56744 (= res!26251 (isStructureExt!0 thiss!8058 A!2194))))

(assert (=> b!56745 (= e!30093 (isOptionStructure!0 thiss!8058 lambda!8947))))

(assert (= (and d!49624 (not res!26250)) b!56744))

(assert (= (and b!56744 (not res!26251)) b!56745))

(assert (=> d!49624 m!61624))

(assert (=> b!56744 m!61668))

(declare-fun m!61688 () Bool)

(assert (=> b!56745 m!61688))

(assert (=> start!7876 d!49624))

(declare-fun bs!35507 () Bool)

(declare-fun b!56747 () Bool)

(assert (= bs!35507 (and b!56747 b!56719)))

(declare-fun lambda!8948 () Int)

(assert (=> bs!35507 (= lambda!8948 lambda!8938)))

(declare-fun bs!35508 () Bool)

(assert (= bs!35508 (and b!56747 b!56717)))

(assert (=> bs!35508 (= lambda!8948 lambda!8937)))

(declare-fun bs!35509 () Bool)

(assert (= bs!35509 (and b!56747 d!49612)))

(assert (=> bs!35509 (not (= lambda!8948 lambda!8934))))

(declare-fun bs!35510 () Bool)

(assert (= bs!35510 (and b!56747 b!56705)))

(assert (=> bs!35510 (= lambda!8948 lambda!8927)))

(declare-fun bs!35511 () Bool)

(assert (= bs!35511 (and b!56747 b!56745)))

(assert (=> bs!35511 (= lambda!8948 lambda!8947)))

(declare-fun bs!35512 () Bool)

(assert (= bs!35512 (and b!56747 b!56696)))

(assert (=> bs!35512 (= lambda!8948 lambda!8929)))

(declare-fun bs!35513 () Bool)

(assert (= bs!35513 (and b!56747 b!56734)))

(assert (=> bs!35513 (= lambda!8948 lambda!8945)))

(declare-fun bs!35514 () Bool)

(assert (= bs!35514 (and b!56747 b!56701)))

(assert (=> bs!35514 (= lambda!8948 lambda!8928)))

(declare-fun bs!35515 () Bool)

(assert (= bs!35515 (and b!56747 b!56740)))

(assert (=> bs!35515 (= lambda!8948 lambda!8946)))

(declare-fun b_next!38949 () Bool)

(assert (=> start!7876 (= b_next!38947 (or (and b!56747 (= lambda!8948 A!2194)) b_next!38949))))

(declare-fun d!49626 () Bool)

(declare-fun res!26252 () Bool)

(declare-fun e!30094 () Bool)

(assert (=> d!49626 (=> res!26252 e!30094)))

(assert (=> d!49626 (= res!26252 (isBigIntStructure!0 lt!10339))))

(assert (=> d!49626 (= (isStructure!0 lt!10339 A!2194) e!30094)))

(declare-fun b!56746 () Bool)

(declare-fun res!26253 () Bool)

(assert (=> b!56746 (=> res!26253 e!30094)))

(assert (=> b!56746 (= res!26253 (isStructureExt!0 lt!10339 A!2194))))

(assert (=> b!56747 (= e!30094 (isOptionStructure!0 lt!10339 lambda!8948))))

(assert (= (and d!49626 (not res!26252)) b!56746))

(assert (= (and b!56746 (not res!26253)) b!56747))

(declare-fun m!61690 () Bool)

(assert (=> d!49626 m!61690))

(declare-fun m!61692 () Bool)

(assert (=> b!56746 m!61692))

(declare-fun m!61694 () Bool)

(assert (=> b!56747 m!61694))

(assert (=> start!7876 d!49626))

(declare-fun bs!35516 () Bool)

(declare-fun b!56749 () Bool)

(assert (= bs!35516 (and b!56749 b!56719)))

(declare-fun lambda!8949 () Int)

(assert (=> bs!35516 (= lambda!8949 lambda!8938)))

(declare-fun bs!35517 () Bool)

(assert (= bs!35517 (and b!56749 b!56717)))

(assert (=> bs!35517 (= lambda!8949 lambda!8937)))

(declare-fun bs!35518 () Bool)

(assert (= bs!35518 (and b!56749 d!49612)))

(assert (=> bs!35518 (not (= lambda!8949 lambda!8934))))

(declare-fun bs!35519 () Bool)

(assert (= bs!35519 (and b!56749 b!56705)))

(assert (=> bs!35519 (= lambda!8949 lambda!8927)))

(declare-fun bs!35520 () Bool)

(assert (= bs!35520 (and b!56749 b!56745)))

(assert (=> bs!35520 (= lambda!8949 lambda!8947)))

(declare-fun bs!35521 () Bool)

(assert (= bs!35521 (and b!56749 b!56696)))

(assert (=> bs!35521 (= lambda!8949 lambda!8929)))

(declare-fun bs!35522 () Bool)

(assert (= bs!35522 (and b!56749 b!56734)))

(assert (=> bs!35522 (= lambda!8949 lambda!8945)))

(declare-fun bs!35523 () Bool)

(assert (= bs!35523 (and b!56749 b!56747)))

(assert (=> bs!35523 (= lambda!8949 lambda!8948)))

(declare-fun bs!35524 () Bool)

(assert (= bs!35524 (and b!56749 b!56701)))

(assert (=> bs!35524 (= lambda!8949 lambda!8928)))

(declare-fun bs!35525 () Bool)

(assert (= bs!35525 (and b!56749 b!56740)))

(assert (=> bs!35525 (= lambda!8949 lambda!8946)))

(declare-fun b_next!38951 () Bool)

(assert (=> start!7876 (= b_next!38949 (or (and b!56749 (= lambda!8949 A!2194)) b_next!38951))))

(declare-fun d!49628 () Bool)

(declare-fun res!26254 () Bool)

(declare-fun e!30095 () Bool)

(assert (=> d!49628 (=> res!26254 e!30095)))

(assert (=> d!49628 (= res!26254 (isBigIntStructure!0 lt!10337))))

(assert (=> d!49628 (= (isStructure!0 lt!10337 lambda!8929) e!30095)))

(declare-fun b!56748 () Bool)

(declare-fun res!26255 () Bool)

(assert (=> b!56748 (=> res!26255 e!30095)))

(assert (=> b!56748 (= res!26255 (isStructureExt!0 lt!10337 lambda!8929))))

(assert (=> b!56749 (= e!30095 (isOptionStructure!0 lt!10337 lambda!8949))))

(assert (= (and d!49628 (not res!26254)) b!56748))

(assert (= (and b!56748 (not res!26255)) b!56749))

(declare-fun m!61696 () Bool)

(assert (=> d!49628 m!61696))

(declare-fun m!61698 () Bool)

(assert (=> b!56748 m!61698))

(declare-fun m!61700 () Bool)

(assert (=> b!56749 m!61700))

(assert (=> b!56696 d!49628))

(declare-fun d!49630 () Bool)

(assert (=> d!49630 (= (isBigIntStructure!0 thiss!8058) (is-BigIntStructure!9 thiss!8058))))

(assert (=> b!56699 d!49630))

(declare-fun lt!10376 () Object!261)

(declare-fun b!56758 () Bool)

(declare-fun e!30101 () Bool)

(declare-fun tp!16036 () Bool)

(assert (=> b!56758 (= e!30101 (and tp!16036 (isStructure!0 lt!10376 lambda!8927)))))

(assert (=> b!56758 (= lt!10376 (ev!19 (ev!19 y!1782)))))

(declare-fun b!56760 () Bool)

(declare-fun e!30100 () Bool)

(declare-fun tp!16037 () Bool)

(assert (=> b!56760 (= e!30100 tp!16037)))

(declare-fun b!56759 () Bool)

(assert (=> b!56759 (= e!30101 e!30100)))

(assert (=> b!56705 (= tp!16031 e!30101)))

(assert (= (and b!56705 (is-OptionStructure!9 (ev!19 y!1782))) b!56758))

(assert (= (and b!56759 (is-Some!298 (value!4087 (ev!19 y!1782)))) b!56760))

(assert (= (and b!56705 (is-Option!308 (ev!19 y!1782))) b!56759))

(declare-fun m!61702 () Bool)

(assert (=> b!56758 m!61702))

(declare-fun b!56761 () Bool)

(declare-fun lt!10377 () Object!261)

(declare-fun e!30103 () Bool)

(declare-fun tp!16038 () Bool)

(assert (=> b!56761 (= e!30103 (and tp!16038 (isStructure!0 lt!10377 lambda!8928)))))

(assert (=> b!56761 (= lt!10377 (ev!19 (ev!19 x!24384)))))

(declare-fun b!56763 () Bool)

(declare-fun e!30102 () Bool)

(declare-fun tp!16039 () Bool)

(assert (=> b!56763 (= e!30102 tp!16039)))

(declare-fun b!56762 () Bool)

(assert (=> b!56762 (= e!30103 e!30102)))

(assert (=> b!56701 (= tp!16029 e!30103)))

(assert (= (and b!56701 (is-OptionStructure!9 (ev!19 x!24384))) b!56761))

(assert (= (and b!56762 (is-Some!298 (value!4087 (ev!19 x!24384)))) b!56763))

(assert (= (and b!56701 (is-Option!308 (ev!19 x!24384))) b!56762))

(declare-fun m!61704 () Bool)

(assert (=> b!56761 m!61704))

(declare-fun bs!35526 () Bool)

(declare-fun b!56764 () Bool)

(assert (= bs!35526 (and b!56764 b!56719)))

(declare-fun lambda!8952 () Int)

(assert (=> bs!35526 (= lambda!8952 lambda!8938)))

(declare-fun bs!35527 () Bool)

(assert (= bs!35527 (and b!56764 b!56717)))

(assert (=> bs!35527 (= lambda!8952 lambda!8937)))

(declare-fun bs!35528 () Bool)

(assert (= bs!35528 (and b!56764 d!49612)))

(assert (=> bs!35528 (not (= lambda!8952 lambda!8934))))

(declare-fun bs!35529 () Bool)

(assert (= bs!35529 (and b!56764 b!56705)))

(assert (=> bs!35529 (= lambda!8952 lambda!8927)))

(declare-fun bs!35530 () Bool)

(assert (= bs!35530 (and b!56764 b!56745)))

(assert (=> bs!35530 (= lambda!8952 lambda!8947)))

(declare-fun bs!35531 () Bool)

(assert (= bs!35531 (and b!56764 b!56696)))

(assert (=> bs!35531 (= lambda!8952 lambda!8929)))

(declare-fun bs!35532 () Bool)

(assert (= bs!35532 (and b!56764 b!56749)))

(assert (=> bs!35532 (= lambda!8952 lambda!8949)))

(declare-fun bs!35533 () Bool)

(assert (= bs!35533 (and b!56764 b!56734)))

(assert (=> bs!35533 (= lambda!8952 lambda!8945)))

(declare-fun bs!35534 () Bool)

(assert (= bs!35534 (and b!56764 b!56747)))

(assert (=> bs!35534 (= lambda!8952 lambda!8948)))

(declare-fun bs!35535 () Bool)

(assert (= bs!35535 (and b!56764 b!56701)))

(assert (=> bs!35535 (= lambda!8952 lambda!8928)))

(declare-fun bs!35536 () Bool)

(assert (= bs!35536 (and b!56764 b!56740)))

(assert (=> bs!35536 (= lambda!8952 lambda!8946)))

(declare-fun b_next!38953 () Bool)

(assert (=> start!7876 (= b_next!38951 (or (and b!56764 (= lambda!8952 A!2194)) b_next!38953))))

(declare-fun lt!10378 () Object!261)

(declare-fun tp!16040 () Bool)

(declare-fun e!30105 () Bool)

(assert (=> b!56764 (= e!30105 (and tp!16040 (isStructure!0 lt!10378 lambda!8952)))))

(assert (=> b!56764 (= lt!10378 (ev!19 (v!2045 (value!4087 x!24384))))))

(declare-fun b!56766 () Bool)

(declare-fun e!30104 () Bool)

(declare-fun tp!16041 () Bool)

(assert (=> b!56766 (= e!30104 tp!16041)))

(declare-fun b!56765 () Bool)

(assert (=> b!56765 (= e!30105 e!30104)))

(assert (=> b!56703 (= tp!16025 e!30105)))

(assert (= (and b!56703 (is-OptionStructure!9 (v!2045 (value!4087 x!24384)))) b!56764))

(assert (= (and b!56765 (is-Some!298 (value!4087 (v!2045 (value!4087 x!24384))))) b!56766))

(assert (= (and b!56703 (is-Option!308 (v!2045 (value!4087 x!24384)))) b!56765))

(declare-fun m!61706 () Bool)

(assert (=> b!56764 m!61706))

(declare-fun bs!35537 () Bool)

(declare-fun b!56767 () Bool)

(assert (= bs!35537 (and b!56767 b!56719)))

(declare-fun lambda!8953 () Int)

(assert (=> bs!35537 (= lambda!8953 lambda!8938)))

(declare-fun bs!35538 () Bool)

(assert (= bs!35538 (and b!56767 b!56717)))

(assert (=> bs!35538 (= lambda!8953 lambda!8937)))

(declare-fun bs!35539 () Bool)

(assert (= bs!35539 (and b!56767 d!49612)))

(assert (=> bs!35539 (not (= lambda!8953 lambda!8934))))

(declare-fun bs!35540 () Bool)

(assert (= bs!35540 (and b!56767 b!56705)))

(assert (=> bs!35540 (= lambda!8953 lambda!8927)))

(declare-fun bs!35541 () Bool)

(assert (= bs!35541 (and b!56767 b!56764)))

(assert (=> bs!35541 (= lambda!8953 lambda!8952)))

(declare-fun bs!35542 () Bool)

(assert (= bs!35542 (and b!56767 b!56745)))

(assert (=> bs!35542 (= lambda!8953 lambda!8947)))

(declare-fun bs!35543 () Bool)

(assert (= bs!35543 (and b!56767 b!56696)))

(assert (=> bs!35543 (= lambda!8953 lambda!8929)))

(declare-fun bs!35544 () Bool)

(assert (= bs!35544 (and b!56767 b!56749)))

(assert (=> bs!35544 (= lambda!8953 lambda!8949)))

(declare-fun bs!35545 () Bool)

(assert (= bs!35545 (and b!56767 b!56734)))

(assert (=> bs!35545 (= lambda!8953 lambda!8945)))

(declare-fun bs!35546 () Bool)

(assert (= bs!35546 (and b!56767 b!56747)))

(assert (=> bs!35546 (= lambda!8953 lambda!8948)))

(declare-fun bs!35547 () Bool)

(assert (= bs!35547 (and b!56767 b!56701)))

(assert (=> bs!35547 (= lambda!8953 lambda!8928)))

(declare-fun bs!35548 () Bool)

(assert (= bs!35548 (and b!56767 b!56740)))

(assert (=> bs!35548 (= lambda!8953 lambda!8946)))

(declare-fun b_next!38955 () Bool)

(assert (=> start!7876 (= b_next!38953 (or (and b!56767 (= lambda!8953 A!2194)) b_next!38955))))

(declare-fun tp!16042 () Bool)

(declare-fun lt!10379 () Object!261)

(declare-fun e!30107 () Bool)

(assert (=> b!56767 (= e!30107 (and tp!16042 (isStructure!0 lt!10379 lambda!8953)))))

(assert (=> b!56767 (= lt!10379 (ev!19 (v!2045 (value!4087 thiss!8058))))))

(declare-fun b!56769 () Bool)

(declare-fun e!30106 () Bool)

(declare-fun tp!16043 () Bool)

(assert (=> b!56769 (= e!30106 tp!16043)))

(declare-fun b!56768 () Bool)

(assert (=> b!56768 (= e!30107 e!30106)))

(assert (=> b!56700 (= tp!16028 e!30107)))

(assert (= (and b!56700 (is-OptionStructure!9 (v!2045 (value!4087 thiss!8058)))) b!56767))

(assert (= (and b!56768 (is-Some!298 (value!4087 (v!2045 (value!4087 thiss!8058))))) b!56769))

(assert (= (and b!56700 (is-Option!308 (v!2045 (value!4087 thiss!8058)))) b!56768))

(declare-fun m!61708 () Bool)

(assert (=> b!56767 m!61708))

(declare-fun bs!35549 () Bool)

(declare-fun b!56770 () Bool)

(assert (= bs!35549 (and b!56770 b!56719)))

(declare-fun lambda!8954 () Int)

(assert (=> bs!35549 (= lambda!8954 lambda!8938)))

(declare-fun bs!35550 () Bool)

(assert (= bs!35550 (and b!56770 b!56717)))

(assert (=> bs!35550 (= lambda!8954 lambda!8937)))

(declare-fun bs!35551 () Bool)

(assert (= bs!35551 (and b!56770 d!49612)))

(assert (=> bs!35551 (not (= lambda!8954 lambda!8934))))

(declare-fun bs!35552 () Bool)

(assert (= bs!35552 (and b!56770 b!56767)))

(assert (=> bs!35552 (= lambda!8954 lambda!8953)))

(declare-fun bs!35553 () Bool)

(assert (= bs!35553 (and b!56770 b!56705)))

(assert (=> bs!35553 (= lambda!8954 lambda!8927)))

(declare-fun bs!35554 () Bool)

(assert (= bs!35554 (and b!56770 b!56764)))

(assert (=> bs!35554 (= lambda!8954 lambda!8952)))

(declare-fun bs!35555 () Bool)

(assert (= bs!35555 (and b!56770 b!56745)))

(assert (=> bs!35555 (= lambda!8954 lambda!8947)))

(declare-fun bs!35556 () Bool)

(assert (= bs!35556 (and b!56770 b!56696)))

(assert (=> bs!35556 (= lambda!8954 lambda!8929)))

(declare-fun bs!35557 () Bool)

(assert (= bs!35557 (and b!56770 b!56749)))

(assert (=> bs!35557 (= lambda!8954 lambda!8949)))

(declare-fun bs!35558 () Bool)

(assert (= bs!35558 (and b!56770 b!56734)))

(assert (=> bs!35558 (= lambda!8954 lambda!8945)))

(declare-fun bs!35559 () Bool)

(assert (= bs!35559 (and b!56770 b!56747)))

(assert (=> bs!35559 (= lambda!8954 lambda!8948)))

(declare-fun bs!35560 () Bool)

(assert (= bs!35560 (and b!56770 b!56701)))

(assert (=> bs!35560 (= lambda!8954 lambda!8928)))

(declare-fun bs!35561 () Bool)

(assert (= bs!35561 (and b!56770 b!56740)))

(assert (=> bs!35561 (= lambda!8954 lambda!8946)))

(declare-fun b_next!38957 () Bool)

(assert (=> start!7876 (= b_next!38955 (or (and b!56770 (= lambda!8954 A!2194)) b_next!38957))))

(declare-fun e!30109 () Bool)

(declare-fun lt!10380 () Object!261)

(declare-fun tp!16044 () Bool)

(assert (=> b!56770 (= e!30109 (and tp!16044 (isStructure!0 lt!10380 lambda!8954)))))

(assert (=> b!56770 (= lt!10380 (ev!19 (v!2045 (value!4087 y!1782))))))

(declare-fun b!56772 () Bool)

(declare-fun e!30108 () Bool)

(declare-fun tp!16045 () Bool)

(assert (=> b!56772 (= e!30108 tp!16045)))

(declare-fun b!56771 () Bool)

(assert (=> b!56771 (= e!30109 e!30108)))

(assert (=> b!56708 (= tp!16030 e!30109)))

(assert (= (and b!56708 (is-OptionStructure!9 (v!2045 (value!4087 y!1782)))) b!56770))

(assert (= (and b!56771 (is-Some!298 (value!4087 (v!2045 (value!4087 y!1782))))) b!56772))

(assert (= (and b!56708 (is-Option!308 (v!2045 (value!4087 y!1782)))) b!56771))

(declare-fun m!61710 () Bool)

(assert (=> b!56770 m!61710))

(declare-fun e!30111 () Bool)

(declare-fun lt!10381 () Object!261)

(declare-fun tp!16046 () Bool)

(declare-fun b!56773 () Bool)

(assert (=> b!56773 (= e!30111 (and tp!16046 (isStructure!0 lt!10381 lambda!8929)))))

(assert (=> b!56773 (= lt!10381 (ev!19 (ev!19 thiss!8058)))))

(declare-fun b!56775 () Bool)

(declare-fun e!30110 () Bool)

(declare-fun tp!16047 () Bool)

(assert (=> b!56775 (= e!30110 tp!16047)))

(declare-fun b!56774 () Bool)

(assert (=> b!56774 (= e!30111 e!30110)))

(assert (=> b!56696 (= tp!16026 e!30111)))

(assert (= (and b!56696 (is-OptionStructure!9 (ev!19 thiss!8058))) b!56773))

(assert (= (and b!56774 (is-Some!298 (value!4087 (ev!19 thiss!8058)))) b!56775))

(assert (= (and b!56696 (is-Option!308 (ev!19 thiss!8058))) b!56774))

(declare-fun m!61712 () Bool)

(assert (=> b!56773 m!61712))

(declare-fun b_lambda!15205 () Bool)

(assert (= b_lambda!15199 (or (and b!56734 (= lambda!8945 A!2194)) (and b!56740 (= lambda!8946 A!2194)) (and d!49612 (= lambda!8934 A!2194)) (and b!56701 (= lambda!8928 A!2194)) (and b!56770 (= lambda!8954 A!2194)) (and start!7876 b_free!7271) (and b!56696 (= lambda!8929 A!2194)) (and b!56747 (= lambda!8948 A!2194)) (and b!56767 (= lambda!8953 A!2194)) (and b!56705 (= lambda!8927 A!2194)) (and b!56764 (= lambda!8952 A!2194)) (and b!56717 (= lambda!8937 A!2194)) (and b!56749 (= lambda!8949 A!2194)) (and b!56719 (= lambda!8938 A!2194)) (and b!56745 (= lambda!8947 A!2194)) b_lambda!15205)))

(declare-fun bs!35562 () Bool)

(declare-fun d!49632 () Bool)

(assert (= bs!35562 (and d!49632 b!56719)))

(assert (=> bs!35562 (= (dynLambda!913 lambda!8938 (Option!308 lt!10368)) true)))

(assert (=> (and b!56719 (= lambda!8938 A!2194) b!56734) d!49632))

(declare-fun bs!35563 () Bool)

(declare-fun d!49634 () Bool)

(assert (= bs!35563 (and d!49634 b!56745)))

(assert (=> bs!35563 (= (dynLambda!913 lambda!8947 (Option!308 lt!10368)) true)))

(assert (=> (and b!56745 (= lambda!8947 A!2194) b!56734) d!49634))

(declare-fun bs!35564 () Bool)

(declare-fun d!49636 () Bool)

(assert (= bs!35564 (and d!49636 b!56747)))

(assert (=> bs!35564 (= (dynLambda!913 lambda!8948 (Option!308 lt!10368)) true)))

(assert (=> (and b!56747 (= lambda!8948 A!2194) b!56734) d!49636))

(declare-fun bs!35565 () Bool)

(declare-fun d!49638 () Bool)

(assert (= bs!35565 (and d!49638 b!56705)))

(assert (=> bs!35565 (= (dynLambda!913 lambda!8927 (Option!308 lt!10368)) true)))

(assert (=> (and b!56705 (= lambda!8927 A!2194) b!56734) d!49638))

(declare-fun bs!35566 () Bool)

(declare-fun d!49640 () Bool)

(assert (= bs!35566 (and d!49640 b!56696)))

(assert (=> bs!35566 (= (dynLambda!913 lambda!8929 (Option!308 lt!10368)) true)))

(assert (=> (and b!56696 (= lambda!8929 A!2194) b!56734) d!49640))

(declare-fun bs!35567 () Bool)

(declare-fun d!49642 () Bool)

(assert (= bs!35567 (and d!49642 d!49612)))

(assert (=> bs!35567 (= (dynLambda!913 lambda!8934 (Option!308 lt!10368)) (is-Integer!250 (Option!308 lt!10368)))))

(assert (=> (and d!49612 (= lambda!8934 A!2194) b!56734) d!49642))

(declare-fun bs!35568 () Bool)

(declare-fun d!49644 () Bool)

(assert (= bs!35568 (and d!49644 b!56717)))

(assert (=> bs!35568 (= (dynLambda!913 lambda!8937 (Option!308 lt!10368)) true)))

(assert (=> (and b!56717 (= lambda!8937 A!2194) b!56734) d!49644))

(declare-fun bs!35569 () Bool)

(declare-fun d!49646 () Bool)

(assert (= bs!35569 (and d!49646 b!56770)))

(assert (=> bs!35569 (= (dynLambda!913 lambda!8954 (Option!308 lt!10368)) true)))

(assert (=> (and b!56770 (= lambda!8954 A!2194) b!56734) d!49646))

(declare-fun bs!35570 () Bool)

(declare-fun d!49648 () Bool)

(assert (= bs!35570 (and d!49648 b!56734)))

(assert (=> bs!35570 (= (dynLambda!913 lambda!8945 (Option!308 lt!10368)) true)))

(assert (=> (and b!56734 (= lambda!8945 A!2194)) d!49648))

(declare-fun bs!35571 () Bool)

(declare-fun d!49650 () Bool)

(assert (= bs!35571 (and d!49650 b!56749)))

(assert (=> bs!35571 (= (dynLambda!913 lambda!8949 (Option!308 lt!10368)) true)))

(assert (=> (and b!56749 (= lambda!8949 A!2194) b!56734) d!49650))

(declare-fun bs!35572 () Bool)

(declare-fun d!49652 () Bool)

(assert (= bs!35572 (and d!49652 b!56740)))

(assert (=> bs!35572 (= (dynLambda!913 lambda!8946 (Option!308 lt!10368)) true)))

(assert (=> (and b!56740 (= lambda!8946 A!2194) b!56734) d!49652))

(declare-fun bs!35573 () Bool)

(declare-fun d!49654 () Bool)

(assert (= bs!35573 (and d!49654 b!56701)))

(assert (=> bs!35573 (= (dynLambda!913 lambda!8928 (Option!308 lt!10368)) true)))

(assert (=> (and b!56701 (= lambda!8928 A!2194) b!56734) d!49654))

(declare-fun bs!35574 () Bool)

(declare-fun d!49656 () Bool)

(assert (= bs!35574 (and d!49656 b!56764)))

(assert (=> bs!35574 (= (dynLambda!913 lambda!8952 (Option!308 lt!10368)) true)))

(assert (=> (and b!56764 (= lambda!8952 A!2194) b!56734) d!49656))

(declare-fun bs!35575 () Bool)

(declare-fun d!49658 () Bool)

(assert (= bs!35575 (and d!49658 b!56767)))

(assert (=> bs!35575 (= (dynLambda!913 lambda!8953 (Option!308 lt!10368)) true)))

(assert (=> (and b!56767 (= lambda!8953 A!2194) b!56734) d!49658))

(declare-fun b_lambda!15207 () Bool)

(assert (= b_lambda!15197 (or (and b!56734 (= lambda!8945 A!2194)) (and b!56740 (= lambda!8946 A!2194)) (and d!49612 (= lambda!8934 A!2194)) (and b!56701 (= lambda!8928 A!2194)) (and b!56770 (= lambda!8954 A!2194)) (and start!7876 b_free!7271) (and b!56696 (= lambda!8929 A!2194)) (and b!56747 (= lambda!8948 A!2194)) (and b!56767 (= lambda!8953 A!2194)) (and b!56705 (= lambda!8927 A!2194)) (and b!56764 (= lambda!8952 A!2194)) (and b!56717 (= lambda!8937 A!2194)) (and b!56749 (= lambda!8949 A!2194)) (and b!56719 (= lambda!8938 A!2194)) (and b!56745 (= lambda!8947 A!2194)) b_lambda!15207)))

(declare-fun bs!35576 () Bool)

(declare-fun d!49660 () Bool)

(assert (= bs!35576 (and d!49660 b!56740)))

(assert (=> bs!35576 (= (dynLambda!913 lambda!8946 (Integer!250 lt!10370)) true)))

(assert (=> (and b!56740 (= lambda!8946 A!2194) b!56733) d!49660))

(declare-fun bs!35577 () Bool)

(declare-fun d!49662 () Bool)

(assert (= bs!35577 (and d!49662 b!56770)))

(assert (=> bs!35577 (= (dynLambda!913 lambda!8954 (Integer!250 lt!10370)) true)))

(assert (=> (and b!56770 (= lambda!8954 A!2194) b!56733) d!49662))

(declare-fun bs!35578 () Bool)

(declare-fun d!49664 () Bool)

(assert (= bs!35578 (and d!49664 b!56767)))

(assert (=> bs!35578 (= (dynLambda!913 lambda!8953 (Integer!250 lt!10370)) true)))

(assert (=> (and b!56767 (= lambda!8953 A!2194) b!56733) d!49664))

(declare-fun bs!35579 () Bool)

(declare-fun d!49666 () Bool)

(assert (= bs!35579 (and d!49666 b!56719)))

(assert (=> bs!35579 (= (dynLambda!913 lambda!8938 (Integer!250 lt!10370)) true)))

(assert (=> (and b!56719 (= lambda!8938 A!2194) b!56733) d!49666))

(declare-fun bs!35580 () Bool)

(declare-fun d!49668 () Bool)

(assert (= bs!35580 (and d!49668 b!56701)))

(assert (=> bs!35580 (= (dynLambda!913 lambda!8928 (Integer!250 lt!10370)) true)))

(assert (=> (and b!56701 (= lambda!8928 A!2194) b!56733) d!49668))

(declare-fun bs!35581 () Bool)

(declare-fun d!49670 () Bool)

(assert (= bs!35581 (and d!49670 b!56747)))

(assert (=> bs!35581 (= (dynLambda!913 lambda!8948 (Integer!250 lt!10370)) true)))

(assert (=> (and b!56747 (= lambda!8948 A!2194) b!56733) d!49670))

(declare-fun bs!35582 () Bool)

(declare-fun d!49672 () Bool)

(assert (= bs!35582 (and d!49672 b!56717)))

(assert (=> bs!35582 (= (dynLambda!913 lambda!8937 (Integer!250 lt!10370)) true)))

(assert (=> (and b!56717 (= lambda!8937 A!2194) b!56733) d!49672))

(declare-fun bs!35583 () Bool)

(declare-fun d!49674 () Bool)

(assert (= bs!35583 (and d!49674 b!56749)))

(assert (=> bs!35583 (= (dynLambda!913 lambda!8949 (Integer!250 lt!10370)) true)))

(assert (=> (and b!56749 (= lambda!8949 A!2194) b!56733) d!49674))

(declare-fun bs!35584 () Bool)

(declare-fun d!49676 () Bool)

(assert (= bs!35584 (and d!49676 d!49612)))

(assert (=> bs!35584 (= (dynLambda!913 lambda!8934 (Integer!250 lt!10370)) (is-Integer!250 (Integer!250 lt!10370)))))

(assert (=> (and d!49612 (= lambda!8934 A!2194) b!56733) d!49676))

(declare-fun bs!35585 () Bool)

(declare-fun d!49678 () Bool)

(assert (= bs!35585 (and d!49678 b!56734)))

(assert (=> bs!35585 (= (dynLambda!913 lambda!8945 (Integer!250 lt!10370)) true)))

(assert (=> (and b!56734 (= lambda!8945 A!2194) b!56733) d!49678))

(declare-fun bs!35586 () Bool)

(declare-fun d!49680 () Bool)

(assert (= bs!35586 (and d!49680 b!56764)))

(assert (=> bs!35586 (= (dynLambda!913 lambda!8952 (Integer!250 lt!10370)) true)))

(assert (=> (and b!56764 (= lambda!8952 A!2194) b!56733) d!49680))

(declare-fun bs!35587 () Bool)

(declare-fun d!49682 () Bool)

(assert (= bs!35587 (and d!49682 b!56705)))

(assert (=> bs!35587 (= (dynLambda!913 lambda!8927 (Integer!250 lt!10370)) true)))

(assert (=> (and b!56705 (= lambda!8927 A!2194) b!56733) d!49682))

(declare-fun bs!35588 () Bool)

(declare-fun d!49684 () Bool)

(assert (= bs!35588 (and d!49684 b!56745)))

(assert (=> bs!35588 (= (dynLambda!913 lambda!8947 (Integer!250 lt!10370)) true)))

(assert (=> (and b!56745 (= lambda!8947 A!2194) b!56733) d!49684))

(declare-fun bs!35589 () Bool)

(declare-fun d!49686 () Bool)

(assert (= bs!35589 (and d!49686 b!56696)))

(assert (=> bs!35589 (= (dynLambda!913 lambda!8929 (Integer!250 lt!10370)) true)))

(assert (=> (and b!56696 (= lambda!8929 A!2194) b!56733) d!49686))

(declare-fun b_lambda!15209 () Bool)

(assert (= b_lambda!15201 (or (and b!56734 (= lambda!8945 A!2194)) (and b!56740 (= lambda!8946 A!2194)) (and d!49612 (= lambda!8934 A!2194)) (and b!56701 (= lambda!8928 A!2194)) (and b!56770 (= lambda!8954 A!2194)) (and start!7876 b_free!7271) (and b!56696 (= lambda!8929 A!2194)) (and b!56747 (= lambda!8948 A!2194)) (and b!56767 (= lambda!8953 A!2194)) (and b!56705 (= lambda!8927 A!2194)) (and b!56764 (= lambda!8952 A!2194)) (and b!56717 (= lambda!8937 A!2194)) (and b!56749 (= lambda!8949 A!2194)) (and b!56719 (= lambda!8938 A!2194)) (and b!56745 (= lambda!8947 A!2194)) b_lambda!15209)))

(declare-fun bs!35590 () Bool)

(declare-fun d!49688 () Bool)

(assert (= bs!35590 (and d!49688 b!56764)))

(assert (=> bs!35590 (= (dynLambda!913 lambda!8952 (Integer!250 lt!10373)) true)))

(assert (=> (and b!56764 (= lambda!8952 A!2194) b!56739) d!49688))

(declare-fun bs!35591 () Bool)

(declare-fun d!49690 () Bool)

(assert (= bs!35591 (and d!49690 b!56740)))

(assert (=> bs!35591 (= (dynLambda!913 lambda!8946 (Integer!250 lt!10373)) true)))

(assert (=> (and b!56740 (= lambda!8946 A!2194) b!56739) d!49690))

(declare-fun bs!35592 () Bool)

(declare-fun d!49692 () Bool)

(assert (= bs!35592 (and d!49692 b!56767)))

(assert (=> bs!35592 (= (dynLambda!913 lambda!8953 (Integer!250 lt!10373)) true)))

(assert (=> (and b!56767 (= lambda!8953 A!2194) b!56739) d!49692))

(declare-fun bs!35593 () Bool)

(declare-fun d!49694 () Bool)

(assert (= bs!35593 (and d!49694 b!56701)))

(assert (=> bs!35593 (= (dynLambda!913 lambda!8928 (Integer!250 lt!10373)) true)))

(assert (=> (and b!56701 (= lambda!8928 A!2194) b!56739) d!49694))

(declare-fun bs!35594 () Bool)

(declare-fun d!49696 () Bool)

(assert (= bs!35594 (and d!49696 b!56705)))

(assert (=> bs!35594 (= (dynLambda!913 lambda!8927 (Integer!250 lt!10373)) true)))

(assert (=> (and b!56705 (= lambda!8927 A!2194) b!56739) d!49696))

(declare-fun bs!35595 () Bool)

(declare-fun d!49698 () Bool)

(assert (= bs!35595 (and d!49698 b!56749)))

(assert (=> bs!35595 (= (dynLambda!913 lambda!8949 (Integer!250 lt!10373)) true)))

(assert (=> (and b!56749 (= lambda!8949 A!2194) b!56739) d!49698))

(declare-fun bs!35596 () Bool)

(declare-fun d!49700 () Bool)

(assert (= bs!35596 (and d!49700 b!56747)))

(assert (=> bs!35596 (= (dynLambda!913 lambda!8948 (Integer!250 lt!10373)) true)))

(assert (=> (and b!56747 (= lambda!8948 A!2194) b!56739) d!49700))

(declare-fun bs!35597 () Bool)

(declare-fun d!49702 () Bool)

(assert (= bs!35597 (and d!49702 b!56745)))

(assert (=> bs!35597 (= (dynLambda!913 lambda!8947 (Integer!250 lt!10373)) true)))

(assert (=> (and b!56745 (= lambda!8947 A!2194) b!56739) d!49702))

(declare-fun bs!35598 () Bool)

(declare-fun d!49704 () Bool)

(assert (= bs!35598 (and d!49704 b!56734)))

(assert (=> bs!35598 (= (dynLambda!913 lambda!8945 (Integer!250 lt!10373)) true)))

(assert (=> (and b!56734 (= lambda!8945 A!2194) b!56739) d!49704))

(declare-fun bs!35599 () Bool)

(declare-fun d!49706 () Bool)

(assert (= bs!35599 (and d!49706 b!56717)))

(assert (=> bs!35599 (= (dynLambda!913 lambda!8937 (Integer!250 lt!10373)) true)))

(assert (=> (and b!56717 (= lambda!8937 A!2194) b!56739) d!49706))

(declare-fun bs!35600 () Bool)

(declare-fun d!49708 () Bool)

(assert (= bs!35600 (and d!49708 d!49612)))

(assert (=> bs!35600 (= (dynLambda!913 lambda!8934 (Integer!250 lt!10373)) (is-Integer!250 (Integer!250 lt!10373)))))

(assert (=> (and d!49612 (= lambda!8934 A!2194) b!56739) d!49708))

(declare-fun bs!35601 () Bool)

(declare-fun d!49710 () Bool)

(assert (= bs!35601 (and d!49710 b!56770)))

(assert (=> bs!35601 (= (dynLambda!913 lambda!8954 (Integer!250 lt!10373)) true)))

(assert (=> (and b!56770 (= lambda!8954 A!2194) b!56739) d!49710))

(declare-fun bs!35602 () Bool)

(declare-fun d!49712 () Bool)

(assert (= bs!35602 (and d!49712 b!56719)))

(assert (=> bs!35602 (= (dynLambda!913 lambda!8938 (Integer!250 lt!10373)) true)))

(assert (=> (and b!56719 (= lambda!8938 A!2194) b!56739) d!49712))

(declare-fun bs!35603 () Bool)

(declare-fun d!49714 () Bool)

(assert (= bs!35603 (and d!49714 b!56696)))

(assert (=> bs!35603 (= (dynLambda!913 lambda!8929 (Integer!250 lt!10373)) true)))

(assert (=> (and b!56696 (= lambda!8929 A!2194) b!56739) d!49714))

(declare-fun b_lambda!15211 () Bool)

(assert (= b_lambda!15203 (or (and b!56734 (= lambda!8945 A!2194)) (and b!56740 (= lambda!8946 A!2194)) (and d!49612 (= lambda!8934 A!2194)) (and b!56701 (= lambda!8928 A!2194)) (and b!56770 (= lambda!8954 A!2194)) (and start!7876 b_free!7271) (and b!56696 (= lambda!8929 A!2194)) (and b!56747 (= lambda!8948 A!2194)) (and b!56767 (= lambda!8953 A!2194)) (and b!56705 (= lambda!8927 A!2194)) (and b!56764 (= lambda!8952 A!2194)) (and b!56717 (= lambda!8937 A!2194)) (and b!56749 (= lambda!8949 A!2194)) (and b!56719 (= lambda!8938 A!2194)) (and b!56745 (= lambda!8947 A!2194)) b_lambda!15211)))

(declare-fun bs!35604 () Bool)

(declare-fun d!49716 () Bool)

(assert (= bs!35604 (and d!49716 b!56717)))

(assert (=> bs!35604 (= (dynLambda!913 lambda!8937 (Option!308 lt!10371)) true)))

(assert (=> (and b!56717 (= lambda!8937 A!2194) b!56740) d!49716))

(declare-fun bs!35605 () Bool)

(declare-fun d!49718 () Bool)

(assert (= bs!35605 (and d!49718 b!56764)))

(assert (=> bs!35605 (= (dynLambda!913 lambda!8952 (Option!308 lt!10371)) true)))

(assert (=> (and b!56764 (= lambda!8952 A!2194) b!56740) d!49718))

(declare-fun bs!35606 () Bool)

(declare-fun d!49720 () Bool)

(assert (= bs!35606 (and d!49720 b!56745)))

(assert (=> bs!35606 (= (dynLambda!913 lambda!8947 (Option!308 lt!10371)) true)))

(assert (=> (and b!56745 (= lambda!8947 A!2194) b!56740) d!49720))

(declare-fun bs!35607 () Bool)

(declare-fun d!49722 () Bool)

(assert (= bs!35607 (and d!49722 b!56705)))

(assert (=> bs!35607 (= (dynLambda!913 lambda!8927 (Option!308 lt!10371)) true)))

(assert (=> (and b!56705 (= lambda!8927 A!2194) b!56740) d!49722))

(declare-fun bs!35608 () Bool)

(declare-fun d!49724 () Bool)

(assert (= bs!35608 (and d!49724 b!56747)))

(assert (=> bs!35608 (= (dynLambda!913 lambda!8948 (Option!308 lt!10371)) true)))

(assert (=> (and b!56747 (= lambda!8948 A!2194) b!56740) d!49724))

(declare-fun bs!35609 () Bool)

(declare-fun d!49726 () Bool)

(assert (= bs!35609 (and d!49726 d!49612)))

(assert (=> bs!35609 (= (dynLambda!913 lambda!8934 (Option!308 lt!10371)) (is-Integer!250 (Option!308 lt!10371)))))

(assert (=> (and d!49612 (= lambda!8934 A!2194) b!56740) d!49726))

(declare-fun bs!35610 () Bool)

(declare-fun d!49728 () Bool)

(assert (= bs!35610 (and d!49728 b!56770)))

(assert (=> bs!35610 (= (dynLambda!913 lambda!8954 (Option!308 lt!10371)) true)))

(assert (=> (and b!56770 (= lambda!8954 A!2194) b!56740) d!49728))

(declare-fun bs!35611 () Bool)

(declare-fun d!49730 () Bool)

(assert (= bs!35611 (and d!49730 b!56767)))

(assert (=> bs!35611 (= (dynLambda!913 lambda!8953 (Option!308 lt!10371)) true)))

(assert (=> (and b!56767 (= lambda!8953 A!2194) b!56740) d!49730))

(declare-fun bs!35612 () Bool)

(declare-fun d!49732 () Bool)

(assert (= bs!35612 (and d!49732 b!56734)))

(assert (=> bs!35612 (= (dynLambda!913 lambda!8945 (Option!308 lt!10371)) true)))

(assert (=> (and b!56734 (= lambda!8945 A!2194) b!56740) d!49732))

(declare-fun bs!35613 () Bool)

(declare-fun d!49734 () Bool)

(assert (= bs!35613 (and d!49734 b!56740)))

(assert (=> bs!35613 (= (dynLambda!913 lambda!8946 (Option!308 lt!10371)) true)))

(assert (=> (and b!56740 (= lambda!8946 A!2194)) d!49734))

(declare-fun bs!35614 () Bool)

(declare-fun d!49736 () Bool)

(assert (= bs!35614 (and d!49736 b!56749)))

(assert (=> bs!35614 (= (dynLambda!913 lambda!8949 (Option!308 lt!10371)) true)))

(assert (=> (and b!56749 (= lambda!8949 A!2194) b!56740) d!49736))

(declare-fun bs!35615 () Bool)

(declare-fun d!49738 () Bool)

(assert (= bs!35615 (and d!49738 b!56696)))

(assert (=> bs!35615 (= (dynLambda!913 lambda!8929 (Option!308 lt!10371)) true)))

(assert (=> (and b!56696 (= lambda!8929 A!2194) b!56740) d!49738))

(declare-fun bs!35616 () Bool)

(declare-fun d!49740 () Bool)

(assert (= bs!35616 (and d!49740 b!56719)))

(assert (=> bs!35616 (= (dynLambda!913 lambda!8938 (Option!308 lt!10371)) true)))

(assert (=> (and b!56719 (= lambda!8938 A!2194) b!56740) d!49740))

(declare-fun bs!35617 () Bool)

(declare-fun d!49742 () Bool)

(assert (= bs!35617 (and d!49742 b!56701)))

(assert (=> bs!35617 (= (dynLambda!913 lambda!8928 (Option!308 lt!10371)) true)))

(assert (=> (and b!56701 (= lambda!8928 A!2194) b!56740) d!49742))

(push 1)

(assert (not b!56718))

(assert (not b!56770))

(assert (not b_next!38957))

(assert (not b!56767))

(assert (not b!56736))

(assert (not b!56742))

(assert (not b!56769))

(assert (not b_lambda!15191))

(assert (not d!49616))

(assert (not b!56739))

(assert (not b_lambda!15205))

(assert (not b!56745))

(assert (not b!56766))

(assert (not b!56738))

(assert (not b_lambda!15211))

(assert (not b!56764))

(assert (not b_lambda!15207))

(assert (not b!56743))

(assert (not b!56773))

(assert (not d!49626))

(assert (not b!56775))

(assert (not d!49628))

(assert (not b_lambda!15195))

(assert (not d!49622))

(assert (not b_lambda!15209))

(assert (not b!56748))

(assert (not b!56747))

(assert (not b!56717))

(assert (not b!56741))

(assert (not b!56716))

(assert (not b!56763))

(assert (not b!56740))

(assert (not b!56735))

(assert (not d!49620))

(assert (not b_lambda!15193))

(assert (not b!56711))

(assert (not b!56761))

(assert (not b!56737))

(assert (not b!56719))

(assert (not b!56734))

(assert (not b_lambda!15189))

(assert b_and!58471)

(assert (not d!49612))

(assert (not b!56744))

(assert (not b!56746))

(assert (not b!56733))

(assert (not d!49614))

(assert (not d!49624))

(assert (not b!56732))

(assert (not b!56772))

(assert (not b!56758))

(assert (not b!56760))

(assert (not b!56749))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58471)

(assert (not b_next!38957))

(check-sat)

(pop 1)


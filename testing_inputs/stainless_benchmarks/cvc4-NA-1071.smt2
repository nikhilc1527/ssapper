; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7864 () Bool)

(assert start!7864)

(declare-fun b_free!7265 () Bool)

(declare-fun b_next!38891 () Bool)

(assert (=> start!7864 (= b_free!7265 (not b_next!38891))))

(declare-fun tp!15978 () Bool)

(declare-fun b_and!58437 () Bool)

(assert (=> start!7864 (= tp!15978 b_and!58437)))

(declare-fun b_free!7267 () Bool)

(declare-fun b_next!38893 () Bool)

(assert (=> start!7864 (= b_free!7267 (not b_next!38893))))

(declare-fun tp!15982 () Bool)

(declare-fun b_and!58439 () Bool)

(assert (=> start!7864 (= tp!15982 b_and!58439)))

(declare-fun b!56575 () Bool)

(assert (=> b!56575 true))

(declare-fun order!437 () Int)

(declare-fun A!2096 () Int)

(declare-fun lambda!8897 () Int)

(declare-fun dynLambda!909 (Int Int) Int)

(assert (=> b!56575 (< (dynLambda!909 order!437 A!2096) (dynLambda!909 order!437 lambda!8897))))

(declare-fun A!2114 () Int)

(declare-fun b_next!38895 () Bool)

(assert (=> start!7864 (= b_next!38891 (or (and b!56575 (= lambda!8897 A!2114)) b_next!38895))))

(declare-fun bs!35422 () Bool)

(declare-fun b!56574 () Bool)

(assert (= bs!35422 (and b!56574 b!56575)))

(declare-fun lambda!8898 () Int)

(assert (=> bs!35422 (not (= lambda!8898 lambda!8897))))

(declare-fun b_next!38897 () Bool)

(assert (=> start!7864 (= b_next!38895 (or (and b!56574 (= lambda!8898 A!2114)) b_next!38897))))

(declare-fun b_next!38899 () Bool)

(assert (=> start!7864 (= b_next!38893 (or (and b!56574 (= lambda!8898 A!2096)) b_next!38899))))

(declare-fun b!56572 () Bool)

(declare-datatypes () ((Option!303 (Some!296 (v!2043 Object!259)) (None!297)) (Object!259 (BigIntStructure!7) (StructureExt!7 (__x!137 Int)) (OptionStructure!7 (ev!17 Object!259)) (Option!304 (value!4081 Option!303)) (Integer!248 (value!4082 Int)) (Open!259 (value!4083 Int)))))

(declare-fun lt!10276 () Object!259)

(declare-fun e!29987 () Bool)

(declare-fun tp!15980 () Bool)

(declare-fun dynLambda!910 (Int Object!259) Bool)

(assert (=> b!56572 (= e!29987 (and tp!15980 (dynLambda!910 A!2096 lt!10276)))))

(declare-fun x!23333 () Option!303)

(assert (=> b!56572 (= lt!10276 (v!2043 x!23333))))

(declare-fun b!56573 () Bool)

(declare-fun e!29989 () Bool)

(declare-fun tp!15979 () Bool)

(assert (=> b!56573 (= e!29989 tp!15979)))

(declare-fun e!29986 () Bool)

(declare-fun tp!15981 () Bool)

(declare-fun lt!10275 () Object!259)

(declare-fun isStructure!0 (Object!259 Int) Bool)

(assert (=> b!56574 (= e!29986 (and tp!15981 (isStructure!0 lt!10275 lambda!8898)))))

(declare-fun thiss!7987 () Object!259)

(assert (=> b!56574 (= lt!10275 (ev!17 thiss!7987))))

(declare-fun res!26168 () Bool)

(declare-fun e!29988 () Bool)

(assert (=> b!56575 (=> (not res!26168) (not e!29988))))

(declare-datatypes () ((ProofOps!308 (ProofOps!309 (prop!343 Bool)))))

(declare-fun thiss!7989 () ProofOps!308)

(declare-fun lt!10280 () Bool)

(assert (=> b!56575 (= res!26168 (= thiss!7989 (ProofOps!309 lt!10280)))))

(declare-fun lt!10278 () Object!259)

(declare-fun lt!10279 () Object!259)

(declare-fun someLaw!7 (Object!259 Object!259 Object!259) Bool)

(assert (=> b!56575 (= lt!10280 (someLaw!7 thiss!7987 lt!10278 lt!10279))))

(declare-fun doSomething!1 (Int Object!259 Object!259 Object!259) Object!259)

(assert (=> b!56575 (= lt!10280 (= (doSomething!1 lambda!8897 thiss!7987 lt!10278 lt!10279) (doSomething!1 lambda!8897 thiss!7987 lt!10279 lt!10278)))))

(declare-fun y!1715 () Option!303)

(assert (=> b!56575 (= lt!10279 (Option!304 y!1715))))

(assert (=> b!56575 (= lt!10278 (Option!304 x!23333))))

(declare-fun b!56576 () Bool)

(declare-fun tp!15983 () Bool)

(declare-fun e!29985 () Bool)

(declare-fun lt!10277 () Object!259)

(assert (=> b!56576 (= e!29985 (and tp!15983 (dynLambda!910 A!2096 lt!10277)))))

(assert (=> b!56576 (= lt!10277 (v!2043 y!1715))))

(declare-fun b!56577 () Bool)

(assert (=> b!56577 (= e!29986 e!29989)))

(declare-fun b!56578 () Bool)

(assert (=> b!56578 (= e!29988 (and (or (not (is-None!297 x!23333)) (not (is-None!297 y!1715))) (not (is-None!297 y!1715)) (not (is-None!297 x!23333)) (= A!2114 A!2096) (not (is-OptionStructure!7 thiss!7987))))))

(declare-fun res!26169 () Bool)

(assert (=> start!7864 (=> (not res!26169) (not e!29988))))

(declare-fun isOptionStructure!0 (Object!259 Int) Bool)

(assert (=> start!7864 (= res!26169 (isOptionStructure!0 thiss!7987 A!2096))))

(assert (=> start!7864 e!29988))

(declare-fun lt!10274 () Object!259)

(assert (=> start!7864 (= lt!10274 thiss!7987)))

(assert (=> start!7864 (and e!29986 (isOptionStructure!0 lt!10274 A!2096))))

(assert (=> start!7864 tp!15978))

(assert (=> start!7864 tp!15982))

(assert (=> start!7864 true))

(assert (=> start!7864 e!29985))

(assert (=> start!7864 e!29987))

(assert (= (and start!7864 res!26169) b!56575))

(assert (= (and b!56575 res!26168) b!56578))

(assert (= (and start!7864 (is-OptionStructure!7 thiss!7987)) b!56574))

(assert (= (and b!56577 (is-Some!296 (value!4081 thiss!7987))) b!56573))

(assert (= (and start!7864 (is-Option!304 thiss!7987)) b!56577))

(assert (= (and start!7864 (is-Some!296 y!1715)) b!56576))

(assert (= (and start!7864 (is-Some!296 x!23333)) b!56572))

(declare-fun b_lambda!15153 () Bool)

(assert (=> (not b_lambda!15153) (not b!56572)))

(declare-fun tb!45983 () Bool)

(declare-fun t!46984 () Bool)

(assert (=> (and start!7864 (= A!2114 A!2096) t!46984) tb!45983))

(declare-fun result!46337 () Bool)

(assert (=> tb!45983 (= result!46337 true)))

(assert (=> b!56572 t!46984))

(declare-fun b_and!58441 () Bool)

(assert (= b_and!58437 (and (=> t!46984 result!46337) b_and!58441)))

(declare-fun t!46986 () Bool)

(declare-fun tb!45985 () Bool)

(assert (=> (and start!7864 (= A!2096 A!2096) t!46986) tb!45985))

(declare-fun result!46339 () Bool)

(assert (=> tb!45985 (= result!46339 true)))

(assert (=> b!56572 t!46986))

(declare-fun b_and!58443 () Bool)

(assert (= b_and!58439 (and (=> t!46986 result!46339) b_and!58443)))

(declare-fun b_lambda!15155 () Bool)

(assert (=> (not b_lambda!15155) (not b!56576)))

(declare-fun tb!45987 () Bool)

(declare-fun t!46988 () Bool)

(assert (=> (and start!7864 (= A!2114 A!2096) t!46988) tb!45987))

(declare-fun result!46341 () Bool)

(assert (=> tb!45987 (= result!46341 true)))

(assert (=> b!56576 t!46988))

(declare-fun b_and!58445 () Bool)

(assert (= b_and!58441 (and (=> t!46988 result!46341) b_and!58445)))

(declare-fun t!46990 () Bool)

(declare-fun tb!45989 () Bool)

(assert (=> (and start!7864 (= A!2096 A!2096) t!46990) tb!45989))

(declare-fun result!46343 () Bool)

(assert (=> tb!45989 (= result!46343 true)))

(assert (=> b!56576 t!46990))

(declare-fun b_and!58447 () Bool)

(assert (= b_and!58443 (and (=> t!46990 result!46343) b_and!58447)))

(declare-fun m!61506 () Bool)

(assert (=> start!7864 m!61506))

(declare-fun m!61508 () Bool)

(assert (=> start!7864 m!61508))

(declare-fun m!61510 () Bool)

(assert (=> b!56575 m!61510))

(declare-fun m!61512 () Bool)

(assert (=> b!56575 m!61512))

(declare-fun m!61514 () Bool)

(assert (=> b!56575 m!61514))

(declare-fun m!61516 () Bool)

(assert (=> b!56574 m!61516))

(declare-fun m!61518 () Bool)

(assert (=> b!56576 m!61518))

(declare-fun m!61520 () Bool)

(assert (=> b!56572 m!61520))

(push 1)

(assert b_and!58445)

(assert (not b!56574))

(assert (not b!56573))

(assert (not start!7864))

(assert (not b!56575))

(assert (not b_next!38897))

(assert (not b!56572))

(assert b_and!58447)

(assert (not b!56576))

(assert (not b_lambda!15155))

(assert (not b_lambda!15153))

(assert (not b_next!38899))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58445)

(assert b_and!58447)

(assert (not b_next!38899))

(assert (not b_next!38897))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15157 () Bool)

(assert (= b_lambda!15153 (or (and b!56574 (= lambda!8898 A!2096)) (and start!7864 b_free!7265 (= A!2114 A!2096)) (and start!7864 b_free!7267) b_lambda!15157)))

(declare-fun bs!35423 () Bool)

(declare-fun d!49564 () Bool)

(assert (= bs!35423 (and d!49564 b!56574)))

(assert (=> bs!35423 (= (dynLambda!910 lambda!8898 lt!10276) true)))

(assert (=> (and b!56574 (= lambda!8898 A!2096) b!56572) d!49564))

(declare-fun b_lambda!15159 () Bool)

(assert (= b_lambda!15155 (or (and b!56574 (= lambda!8898 A!2096)) (and start!7864 b_free!7265 (= A!2114 A!2096)) (and start!7864 b_free!7267) b_lambda!15159)))

(declare-fun bs!35424 () Bool)

(declare-fun d!49566 () Bool)

(assert (= bs!35424 (and d!49566 b!56574)))

(assert (=> bs!35424 (= (dynLambda!910 lambda!8898 lt!10277) true)))

(assert (=> (and b!56574 (= lambda!8898 A!2096) b!56576) d!49566))

(push 1)

(assert b_and!58445)

(assert (not b!56574))

(assert (not b!56573))

(assert (not start!7864))

(assert (not b_lambda!15159))

(assert (not b!56575))

(assert (not b_next!38897))

(assert (not b!56572))

(assert b_and!58447)

(assert (not b_lambda!15157))

(assert (not b!56576))

(assert (not b_next!38899))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58445)

(assert b_and!58447)

(assert (not b_next!38899))

(assert (not b_next!38897))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!49568 () Bool)

(assert (=> d!49568 true))

(assert (=> d!49568 true))

(declare-fun res!26172 () Bool)

(assert (=> d!49568 (= (someLaw!7 thiss!7987 lt!10278 lt!10279) res!26172)))

(assert (=> b!56575 d!49568))

(declare-fun bs!35425 () Bool)

(declare-fun b!56596 () Bool)

(assert (= bs!35425 (and b!56596 b!56575)))

(declare-fun lambda!8905 () Int)

(assert (=> bs!35425 (not (= lambda!8905 lambda!8897))))

(declare-fun bs!35426 () Bool)

(assert (= bs!35426 (and b!56596 b!56574)))

(assert (=> bs!35426 (= lambda!8905 lambda!8898)))

(declare-fun b_next!38901 () Bool)

(assert (=> start!7864 (= b_next!38897 (or (and b!56596 (= lambda!8905 A!2114)) b_next!38901))))

(declare-fun b_next!38903 () Bool)

(assert (=> start!7864 (= b_next!38899 (or (and b!56596 (= lambda!8905 A!2096)) b_next!38903))))

(declare-fun b!56593 () Bool)

(declare-fun e!30000 () Object!259)

(declare-fun e!30001 () Object!259)

(assert (=> b!56593 (= e!30000 e!30001)))

(declare-fun c!12141 () Bool)

(declare-fun isStructureExt!0 (Object!259 Int) Bool)

(assert (=> b!56593 (= c!12141 (isStructureExt!0 thiss!7987 lambda!8897))))

(declare-fun b!56594 () Bool)

(declare-fun doSomething!4 (Int Object!259 Object!259 Object!259) Object!259)

(assert (=> b!56594 (= e!30001 (doSomething!4 lambda!8897 thiss!7987 lt!10278 lt!10279))))

(declare-fun b!56595 () Bool)

(declare-fun lt!10289 () Int)

(assert (=> b!56595 (= e!30000 (Integer!248 lt!10289))))

(assert (=> b!56595 (dynLambda!910 lambda!8897 (Integer!248 lt!10289))))

(declare-fun doSomething!2 (Object!259 Int Int) Int)

(assert (=> b!56595 (= lt!10289 (doSomething!2 thiss!7987 (value!4082 lt!10278) (value!4082 lt!10279)))))

(assert (=> b!56595 (is-Integer!248 lt!10279)))

(assert (=> b!56595 (is-Integer!248 lt!10278)))

(declare-fun lt!10288 () Object!259)

(declare-fun d!49570 () Bool)

(declare-fun doSomething!7 (Object!259 Object!259 Object!259) Object!259)

(assert (=> d!49570 (= lt!10288 (doSomething!7 thiss!7987 lt!10278 lt!10279))))

(assert (=> d!49570 (= lt!10288 e!30000)))

(declare-fun c!12140 () Bool)

(declare-fun isBigIntStructure!0 (Object!259) Bool)

(assert (=> d!49570 (= c!12140 (isBigIntStructure!0 thiss!7987))))

(assert (=> d!49570 (= (doSomething!1 lambda!8897 thiss!7987 lt!10278 lt!10279) lt!10288)))

(declare-fun lt!10287 () Option!303)

(assert (=> b!56596 (= e!30001 (Option!304 lt!10287))))

(assert (=> b!56596 (dynLambda!910 lambda!8897 (Option!304 lt!10287))))

(declare-fun doSomething!3 (Int Object!259 Option!303 Option!303) Option!303)

(assert (=> b!56596 (= lt!10287 (doSomething!3 lambda!8905 thiss!7987 (value!4081 lt!10278) (value!4081 lt!10279)))))

(declare-fun e!29998 () Bool)

(assert (=> b!56596 e!29998))

(declare-fun res!26178 () Bool)

(assert (=> b!56596 (=> (not res!26178) (not e!29998))))

(assert (=> b!56596 (= res!26178 (is-Option!304 lt!10279))))

(declare-fun e!29999 () Bool)

(assert (=> b!56596 e!29999))

(declare-fun res!26179 () Bool)

(assert (=> b!56596 (=> (not res!26179) (not e!29999))))

(assert (=> b!56596 (= res!26179 (is-Option!304 lt!10278))))

(declare-fun b!56597 () Bool)

(declare-fun isOption!16 (Option!303 Int) Bool)

(assert (=> b!56597 (= e!29998 (isOption!16 (value!4081 lt!10279) lambda!8905))))

(declare-fun b!56598 () Bool)

(assert (=> b!56598 (= e!29999 (isOption!16 (value!4081 lt!10278) lambda!8905))))

(assert (= (and b!56596 res!26179) b!56598))

(assert (= (and b!56596 res!26178) b!56597))

(assert (= (and b!56593 c!12141) b!56594))

(assert (= (and b!56593 (not c!12141)) b!56596))

(assert (= (and d!49570 c!12140) b!56595))

(assert (= (and d!49570 (not c!12140)) b!56593))

(declare-fun b_lambda!15161 () Bool)

(assert (=> (not b_lambda!15161) (not b!56595)))

(declare-fun b_lambda!15163 () Bool)

(assert (=> (not b_lambda!15163) (not b!56596)))

(declare-fun m!61522 () Bool)

(assert (=> b!56595 m!61522))

(declare-fun m!61524 () Bool)

(assert (=> b!56595 m!61524))

(declare-fun m!61526 () Bool)

(assert (=> b!56593 m!61526))

(declare-fun m!61528 () Bool)

(assert (=> b!56597 m!61528))

(declare-fun m!61530 () Bool)

(assert (=> d!49570 m!61530))

(declare-fun m!61532 () Bool)

(assert (=> d!49570 m!61532))

(declare-fun m!61534 () Bool)

(assert (=> b!56596 m!61534))

(declare-fun m!61536 () Bool)

(assert (=> b!56596 m!61536))

(declare-fun m!61538 () Bool)

(assert (=> b!56594 m!61538))

(declare-fun m!61540 () Bool)

(assert (=> b!56598 m!61540))

(assert (=> b!56575 d!49570))

(declare-fun bs!35427 () Bool)

(declare-fun b!56602 () Bool)

(assert (= bs!35427 (and b!56602 b!56575)))

(declare-fun lambda!8906 () Int)

(assert (=> bs!35427 (not (= lambda!8906 lambda!8897))))

(declare-fun bs!35428 () Bool)

(assert (= bs!35428 (and b!56602 b!56574)))

(assert (=> bs!35428 (= lambda!8906 lambda!8898)))

(declare-fun bs!35429 () Bool)

(assert (= bs!35429 (and b!56602 b!56596)))

(assert (=> bs!35429 (= lambda!8906 lambda!8905)))

(declare-fun b_next!38905 () Bool)

(assert (=> start!7864 (= b_next!38901 (or (and b!56602 (= lambda!8906 A!2114)) b_next!38905))))

(declare-fun b_next!38907 () Bool)

(assert (=> start!7864 (= b_next!38903 (or (and b!56602 (= lambda!8906 A!2096)) b_next!38907))))

(declare-fun b!56599 () Bool)

(declare-fun e!30004 () Object!259)

(declare-fun e!30005 () Object!259)

(assert (=> b!56599 (= e!30004 e!30005)))

(declare-fun c!12143 () Bool)

(assert (=> b!56599 (= c!12143 (isStructureExt!0 thiss!7987 lambda!8897))))

(declare-fun b!56600 () Bool)

(assert (=> b!56600 (= e!30005 (doSomething!4 lambda!8897 thiss!7987 lt!10279 lt!10278))))

(declare-fun b!56601 () Bool)

(declare-fun lt!10292 () Int)

(assert (=> b!56601 (= e!30004 (Integer!248 lt!10292))))

(assert (=> b!56601 (dynLambda!910 lambda!8897 (Integer!248 lt!10292))))

(assert (=> b!56601 (= lt!10292 (doSomething!2 thiss!7987 (value!4082 lt!10279) (value!4082 lt!10278)))))

(assert (=> b!56601 (is-Integer!248 lt!10278)))

(assert (=> b!56601 (is-Integer!248 lt!10279)))

(declare-fun lt!10291 () Object!259)

(declare-fun d!49572 () Bool)

(assert (=> d!49572 (= lt!10291 (doSomething!7 thiss!7987 lt!10279 lt!10278))))

(assert (=> d!49572 (= lt!10291 e!30004)))

(declare-fun c!12142 () Bool)

(assert (=> d!49572 (= c!12142 (isBigIntStructure!0 thiss!7987))))

(assert (=> d!49572 (= (doSomething!1 lambda!8897 thiss!7987 lt!10279 lt!10278) lt!10291)))

(declare-fun lt!10290 () Option!303)

(assert (=> b!56602 (= e!30005 (Option!304 lt!10290))))

(assert (=> b!56602 (dynLambda!910 lambda!8897 (Option!304 lt!10290))))

(assert (=> b!56602 (= lt!10290 (doSomething!3 lambda!8906 thiss!7987 (value!4081 lt!10279) (value!4081 lt!10278)))))

(declare-fun e!30002 () Bool)

(assert (=> b!56602 e!30002))

(declare-fun res!26180 () Bool)

(assert (=> b!56602 (=> (not res!26180) (not e!30002))))

(assert (=> b!56602 (= res!26180 (is-Option!304 lt!10278))))

(declare-fun e!30003 () Bool)

(assert (=> b!56602 e!30003))

(declare-fun res!26181 () Bool)

(assert (=> b!56602 (=> (not res!26181) (not e!30003))))

(assert (=> b!56602 (= res!26181 (is-Option!304 lt!10279))))

(declare-fun b!56603 () Bool)

(assert (=> b!56603 (= e!30002 (isOption!16 (value!4081 lt!10278) lambda!8906))))

(declare-fun b!56604 () Bool)

(assert (=> b!56604 (= e!30003 (isOption!16 (value!4081 lt!10279) lambda!8906))))

(assert (= (and b!56602 res!26181) b!56604))

(assert (= (and b!56602 res!26180) b!56603))

(assert (= (and b!56599 c!12143) b!56600))

(assert (= (and b!56599 (not c!12143)) b!56602))

(assert (= (and d!49572 c!12142) b!56601))

(assert (= (and d!49572 (not c!12142)) b!56599))

(declare-fun b_lambda!15165 () Bool)

(assert (=> (not b_lambda!15165) (not b!56601)))

(declare-fun b_lambda!15167 () Bool)

(assert (=> (not b_lambda!15167) (not b!56602)))

(declare-fun m!61542 () Bool)

(assert (=> b!56601 m!61542))

(declare-fun m!61544 () Bool)

(assert (=> b!56601 m!61544))

(assert (=> b!56599 m!61526))

(declare-fun m!61546 () Bool)

(assert (=> b!56603 m!61546))

(declare-fun m!61548 () Bool)

(assert (=> d!49572 m!61548))

(assert (=> d!49572 m!61532))

(declare-fun m!61550 () Bool)

(assert (=> b!56602 m!61550))

(declare-fun m!61552 () Bool)

(assert (=> b!56602 m!61552))

(declare-fun m!61554 () Bool)

(assert (=> b!56600 m!61554))

(declare-fun m!61556 () Bool)

(assert (=> b!56604 m!61556))

(assert (=> b!56575 d!49572))

(declare-fun bs!35430 () Bool)

(declare-fun b!56610 () Bool)

(assert (= bs!35430 (and b!56610 b!56575)))

(declare-fun lambda!8909 () Int)

(assert (=> bs!35430 (not (= lambda!8909 lambda!8897))))

(declare-fun bs!35431 () Bool)

(assert (= bs!35431 (and b!56610 b!56574)))

(assert (=> bs!35431 (= lambda!8909 lambda!8898)))

(declare-fun bs!35432 () Bool)

(assert (= bs!35432 (and b!56610 b!56596)))

(assert (=> bs!35432 (= lambda!8909 lambda!8905)))

(declare-fun bs!35433 () Bool)

(assert (= bs!35433 (and b!56610 b!56602)))

(assert (=> bs!35433 (= lambda!8909 lambda!8906)))

(declare-fun b_next!38909 () Bool)

(assert (=> start!7864 (= b_next!38905 (or (and b!56610 (= lambda!8909 A!2114)) b_next!38909))))

(declare-fun b_next!38911 () Bool)

(assert (=> start!7864 (= b_next!38907 (or (and b!56610 (= lambda!8909 A!2096)) b_next!38911))))

(declare-fun d!49574 () Bool)

(declare-fun res!26186 () Bool)

(declare-fun e!30008 () Bool)

(assert (=> d!49574 (=> res!26186 e!30008)))

(assert (=> d!49574 (= res!26186 (isBigIntStructure!0 lt!10275))))

(assert (=> d!49574 (= (isStructure!0 lt!10275 lambda!8898) e!30008)))

(declare-fun b!56609 () Bool)

(declare-fun res!26187 () Bool)

(assert (=> b!56609 (=> res!26187 e!30008)))

(assert (=> b!56609 (= res!26187 (isStructureExt!0 lt!10275 lambda!8898))))

(assert (=> b!56610 (= e!30008 (isOptionStructure!0 lt!10275 lambda!8909))))

(assert (= (and d!49574 (not res!26186)) b!56609))

(assert (= (and b!56609 (not res!26187)) b!56610))

(declare-fun m!61558 () Bool)

(assert (=> d!49574 m!61558))

(declare-fun m!61560 () Bool)

(assert (=> b!56609 m!61560))

(declare-fun m!61562 () Bool)

(assert (=> b!56610 m!61562))

(assert (=> b!56574 d!49574))

(declare-fun d!49576 () Bool)

(declare-fun res!26190 () Bool)

(declare-fun e!30011 () Bool)

(assert (=> d!49576 (=> (not res!26190) (not e!30011))))

(assert (=> d!49576 (= res!26190 (is-OptionStructure!7 thiss!7987))))

(assert (=> d!49576 (= (isOptionStructure!0 thiss!7987 A!2096) e!30011)))

(declare-fun b!56613 () Bool)

(assert (=> b!56613 (= e!30011 (isStructure!0 (ev!17 thiss!7987) A!2096))))

(assert (= (and d!49576 res!26190) b!56613))

(declare-fun m!61564 () Bool)

(assert (=> b!56613 m!61564))

(assert (=> start!7864 d!49576))

(declare-fun d!49578 () Bool)

(declare-fun res!26191 () Bool)

(declare-fun e!30012 () Bool)

(assert (=> d!49578 (=> (not res!26191) (not e!30012))))

(assert (=> d!49578 (= res!26191 (is-OptionStructure!7 lt!10274))))

(assert (=> d!49578 (= (isOptionStructure!0 lt!10274 A!2096) e!30012)))

(declare-fun b!56614 () Bool)

(assert (=> b!56614 (= e!30012 (isStructure!0 (ev!17 lt!10274) A!2096))))

(assert (= (and d!49578 res!26191) b!56614))

(declare-fun m!61566 () Bool)

(assert (=> b!56614 m!61566))

(assert (=> start!7864 d!49578))

(declare-fun bs!35434 () Bool)

(declare-fun b!56623 () Bool)

(assert (= bs!35434 (and b!56623 b!56610)))

(declare-fun lambda!8912 () Int)

(assert (=> bs!35434 (= lambda!8912 lambda!8909)))

(declare-fun bs!35435 () Bool)

(assert (= bs!35435 (and b!56623 b!56602)))

(assert (=> bs!35435 (= lambda!8912 lambda!8906)))

(declare-fun bs!35436 () Bool)

(assert (= bs!35436 (and b!56623 b!56574)))

(assert (=> bs!35436 (= lambda!8912 lambda!8898)))

(declare-fun bs!35437 () Bool)

(assert (= bs!35437 (and b!56623 b!56596)))

(assert (=> bs!35437 (= lambda!8912 lambda!8905)))

(declare-fun bs!35438 () Bool)

(assert (= bs!35438 (and b!56623 b!56575)))

(assert (=> bs!35438 (not (= lambda!8912 lambda!8897))))

(declare-fun b_next!38913 () Bool)

(assert (=> start!7864 (= b_next!38909 (or (and b!56623 (= lambda!8912 A!2114)) b_next!38913))))

(declare-fun b_next!38915 () Bool)

(assert (=> start!7864 (= b_next!38911 (or (and b!56623 (= lambda!8912 A!2096)) b_next!38915))))

(declare-fun e!30018 () Bool)

(declare-fun lt!10295 () Object!259)

(declare-fun tp!15989 () Bool)

(assert (=> b!56623 (= e!30018 (and tp!15989 (isStructure!0 lt!10295 lambda!8912)))))

(assert (=> b!56623 (= lt!10295 (ev!17 (v!2043 x!23333)))))

(declare-fun b!56625 () Bool)

(declare-fun e!30017 () Bool)

(declare-fun tp!15988 () Bool)

(assert (=> b!56625 (= e!30017 tp!15988)))

(declare-fun b!56624 () Bool)

(assert (=> b!56624 (= e!30018 e!30017)))

(assert (=> b!56572 (= tp!15980 e!30018)))

(assert (= (and b!56572 (is-OptionStructure!7 (v!2043 x!23333))) b!56623))

(assert (= (and b!56624 (is-Some!296 (value!4081 (v!2043 x!23333)))) b!56625))

(assert (= (and b!56572 (is-Option!304 (v!2043 x!23333))) b!56624))

(declare-fun m!61568 () Bool)

(assert (=> b!56623 m!61568))

(declare-fun lt!10296 () Object!259)

(declare-fun b!56626 () Bool)

(declare-fun tp!15991 () Bool)

(declare-fun e!30020 () Bool)

(assert (=> b!56626 (= e!30020 (and tp!15991 (isStructure!0 lt!10296 lambda!8898)))))

(assert (=> b!56626 (= lt!10296 (ev!17 (ev!17 thiss!7987)))))

(declare-fun b!56628 () Bool)

(declare-fun e!30019 () Bool)

(declare-fun tp!15990 () Bool)

(assert (=> b!56628 (= e!30019 tp!15990)))

(declare-fun b!56627 () Bool)

(assert (=> b!56627 (= e!30020 e!30019)))

(assert (=> b!56574 (= tp!15981 e!30020)))

(assert (= (and b!56574 (is-OptionStructure!7 (ev!17 thiss!7987))) b!56626))

(assert (= (and b!56627 (is-Some!296 (value!4081 (ev!17 thiss!7987)))) b!56628))

(assert (= (and b!56574 (is-Option!304 (ev!17 thiss!7987))) b!56627))

(declare-fun m!61570 () Bool)

(assert (=> b!56626 m!61570))

(declare-fun bs!35439 () Bool)

(declare-fun b!56629 () Bool)

(assert (= bs!35439 (and b!56629 b!56610)))

(declare-fun lambda!8913 () Int)

(assert (=> bs!35439 (= lambda!8913 lambda!8909)))

(declare-fun bs!35440 () Bool)

(assert (= bs!35440 (and b!56629 b!56602)))

(assert (=> bs!35440 (= lambda!8913 lambda!8906)))

(declare-fun bs!35441 () Bool)

(assert (= bs!35441 (and b!56629 b!56574)))

(assert (=> bs!35441 (= lambda!8913 lambda!8898)))

(declare-fun bs!35442 () Bool)

(assert (= bs!35442 (and b!56629 b!56596)))

(assert (=> bs!35442 (= lambda!8913 lambda!8905)))

(declare-fun bs!35443 () Bool)

(assert (= bs!35443 (and b!56629 b!56623)))

(assert (=> bs!35443 (= lambda!8913 lambda!8912)))

(declare-fun bs!35444 () Bool)

(assert (= bs!35444 (and b!56629 b!56575)))

(assert (=> bs!35444 (not (= lambda!8913 lambda!8897))))

(declare-fun b_next!38917 () Bool)

(assert (=> start!7864 (= b_next!38913 (or (and b!56629 (= lambda!8913 A!2114)) b_next!38917))))

(declare-fun b_next!38919 () Bool)

(assert (=> start!7864 (= b_next!38915 (or (and b!56629 (= lambda!8913 A!2096)) b_next!38919))))

(declare-fun tp!15993 () Bool)

(declare-fun lt!10297 () Object!259)

(declare-fun e!30022 () Bool)

(assert (=> b!56629 (= e!30022 (and tp!15993 (isStructure!0 lt!10297 lambda!8913)))))

(assert (=> b!56629 (= lt!10297 (ev!17 (v!2043 y!1715)))))

(declare-fun b!56631 () Bool)

(declare-fun e!30021 () Bool)

(declare-fun tp!15992 () Bool)

(assert (=> b!56631 (= e!30021 tp!15992)))

(declare-fun b!56630 () Bool)

(assert (=> b!56630 (= e!30022 e!30021)))

(assert (=> b!56576 (= tp!15983 e!30022)))

(assert (= (and b!56576 (is-OptionStructure!7 (v!2043 y!1715))) b!56629))

(assert (= (and b!56630 (is-Some!296 (value!4081 (v!2043 y!1715)))) b!56631))

(assert (= (and b!56576 (is-Option!304 (v!2043 y!1715))) b!56630))

(declare-fun m!61572 () Bool)

(assert (=> b!56629 m!61572))

(declare-fun bs!35445 () Bool)

(declare-fun b!56632 () Bool)

(assert (= bs!35445 (and b!56632 b!56610)))

(declare-fun lambda!8914 () Int)

(assert (=> bs!35445 (= lambda!8914 lambda!8909)))

(declare-fun bs!35446 () Bool)

(assert (= bs!35446 (and b!56632 b!56602)))

(assert (=> bs!35446 (= lambda!8914 lambda!8906)))

(declare-fun bs!35447 () Bool)

(assert (= bs!35447 (and b!56632 b!56629)))

(assert (=> bs!35447 (= lambda!8914 lambda!8913)))

(declare-fun bs!35448 () Bool)

(assert (= bs!35448 (and b!56632 b!56574)))

(assert (=> bs!35448 (= lambda!8914 lambda!8898)))

(declare-fun bs!35449 () Bool)

(assert (= bs!35449 (and b!56632 b!56596)))

(assert (=> bs!35449 (= lambda!8914 lambda!8905)))

(declare-fun bs!35450 () Bool)

(assert (= bs!35450 (and b!56632 b!56623)))

(assert (=> bs!35450 (= lambda!8914 lambda!8912)))

(declare-fun bs!35451 () Bool)

(assert (= bs!35451 (and b!56632 b!56575)))

(assert (=> bs!35451 (not (= lambda!8914 lambda!8897))))

(declare-fun b_next!38921 () Bool)

(assert (=> start!7864 (= b_next!38917 (or (and b!56632 (= lambda!8914 A!2114)) b_next!38921))))

(declare-fun b_next!38923 () Bool)

(assert (=> start!7864 (= b_next!38919 (or (and b!56632 (= lambda!8914 A!2096)) b_next!38923))))

(declare-fun tp!15995 () Bool)

(declare-fun lt!10298 () Object!259)

(declare-fun e!30024 () Bool)

(assert (=> b!56632 (= e!30024 (and tp!15995 (isStructure!0 lt!10298 lambda!8914)))))

(assert (=> b!56632 (= lt!10298 (ev!17 (v!2043 (value!4081 thiss!7987))))))

(declare-fun b!56634 () Bool)

(declare-fun e!30023 () Bool)

(declare-fun tp!15994 () Bool)

(assert (=> b!56634 (= e!30023 tp!15994)))

(declare-fun b!56633 () Bool)

(assert (=> b!56633 (= e!30024 e!30023)))

(assert (=> b!56573 (= tp!15979 e!30024)))

(assert (= (and b!56573 (is-OptionStructure!7 (v!2043 (value!4081 thiss!7987)))) b!56632))

(assert (= (and b!56633 (is-Some!296 (value!4081 (v!2043 (value!4081 thiss!7987))))) b!56634))

(assert (= (and b!56573 (is-Option!304 (v!2043 (value!4081 thiss!7987)))) b!56633))

(declare-fun m!61574 () Bool)

(assert (=> b!56632 m!61574))

(declare-fun b_lambda!15169 () Bool)

(assert (= b_lambda!15165 (or b!56575 b_lambda!15169)))

(declare-fun bs!35452 () Bool)

(declare-fun d!49580 () Bool)

(assert (= bs!35452 (and d!49580 b!56575)))

(declare-fun res!26192 () Bool)

(declare-fun e!30025 () Bool)

(assert (=> bs!35452 (=> (not res!26192) (not e!30025))))

(assert (=> bs!35452 (= res!26192 (is-Option!304 (Integer!248 lt!10292)))))

(assert (=> bs!35452 (= (dynLambda!910 lambda!8897 (Integer!248 lt!10292)) e!30025)))

(declare-fun b!56635 () Bool)

(assert (=> b!56635 (= e!30025 (isOption!16 (value!4081 (Integer!248 lt!10292)) A!2096))))

(assert (= (and bs!35452 res!26192) b!56635))

(declare-fun m!61576 () Bool)

(assert (=> b!56635 m!61576))

(assert (=> b!56601 d!49580))

(declare-fun b_lambda!15171 () Bool)

(assert (= b_lambda!15161 (or b!56575 b_lambda!15171)))

(declare-fun bs!35453 () Bool)

(declare-fun d!49582 () Bool)

(assert (= bs!35453 (and d!49582 b!56575)))

(declare-fun res!26193 () Bool)

(declare-fun e!30026 () Bool)

(assert (=> bs!35453 (=> (not res!26193) (not e!30026))))

(assert (=> bs!35453 (= res!26193 (is-Option!304 (Integer!248 lt!10289)))))

(assert (=> bs!35453 (= (dynLambda!910 lambda!8897 (Integer!248 lt!10289)) e!30026)))

(declare-fun b!56636 () Bool)

(assert (=> b!56636 (= e!30026 (isOption!16 (value!4081 (Integer!248 lt!10289)) A!2096))))

(assert (= (and bs!35453 res!26193) b!56636))

(declare-fun m!61578 () Bool)

(assert (=> b!56636 m!61578))

(assert (=> b!56595 d!49582))

(declare-fun b_lambda!15173 () Bool)

(assert (= b_lambda!15167 (or b!56575 b_lambda!15173)))

(declare-fun bs!35454 () Bool)

(declare-fun d!49584 () Bool)

(assert (= bs!35454 (and d!49584 b!56575)))

(declare-fun res!26194 () Bool)

(declare-fun e!30027 () Bool)

(assert (=> bs!35454 (=> (not res!26194) (not e!30027))))

(assert (=> bs!35454 (= res!26194 (is-Option!304 (Option!304 lt!10290)))))

(assert (=> bs!35454 (= (dynLambda!910 lambda!8897 (Option!304 lt!10290)) e!30027)))

(declare-fun b!56637 () Bool)

(assert (=> b!56637 (= e!30027 (isOption!16 (value!4081 (Option!304 lt!10290)) A!2096))))

(assert (= (and bs!35454 res!26194) b!56637))

(declare-fun m!61580 () Bool)

(assert (=> b!56637 m!61580))

(assert (=> b!56602 d!49584))

(declare-fun b_lambda!15175 () Bool)

(assert (= b_lambda!15163 (or b!56575 b_lambda!15175)))

(declare-fun bs!35455 () Bool)

(declare-fun d!49586 () Bool)

(assert (= bs!35455 (and d!49586 b!56575)))

(declare-fun res!26195 () Bool)

(declare-fun e!30028 () Bool)

(assert (=> bs!35455 (=> (not res!26195) (not e!30028))))

(assert (=> bs!35455 (= res!26195 (is-Option!304 (Option!304 lt!10287)))))

(assert (=> bs!35455 (= (dynLambda!910 lambda!8897 (Option!304 lt!10287)) e!30028)))

(declare-fun b!56638 () Bool)

(assert (=> b!56638 (= e!30028 (isOption!16 (value!4081 (Option!304 lt!10287)) A!2096))))

(assert (= (and bs!35455 res!26195) b!56638))

(declare-fun m!61582 () Bool)

(assert (=> b!56638 m!61582))

(assert (=> b!56596 d!49586))

(push 1)

(assert (not b!56594))

(assert (not b!56598))

(assert (not b!56596))

(assert (not b!56636))

(assert (not b!56601))

(assert (not b!56613))

(assert (not b!56614))

(assert (not b_lambda!15175))

(assert b_and!58445)

(assert (not b!56599))

(assert (not d!49570))

(assert (not b!56628))

(assert (not b!56635))

(assert (not b!56600))

(assert (not b!56629))

(assert (not b!56595))

(assert (not b!56604))

(assert (not b!56610))

(assert (not d!49572))

(assert (not b!56623))

(assert (not b!56625))

(assert (not b!56626))

(assert (not b!56632))

(assert (not b_lambda!15171))

(assert (not b_lambda!15159))

(assert (not b!56609))

(assert (not d!49574))

(assert (not b!56637))

(assert (not b!56634))

(assert (not b!56638))

(assert (not b!56597))

(assert (not b_next!38921))

(assert (not b!56631))

(assert (not b_next!38923))

(assert b_and!58447)

(assert (not b_lambda!15157))

(assert (not b!56602))

(assert (not b!56593))

(assert (not b_lambda!15173))

(assert (not b!56603))

(assert (not b_lambda!15169))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58445)

(assert b_and!58447)

(assert (not b_next!38923))

(assert (not b_next!38921))

(check-sat)

(pop 1)


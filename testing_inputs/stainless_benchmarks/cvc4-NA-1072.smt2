; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7874 () Bool)

(assert start!7874)

(declare-fun b_free!7269 () Bool)

(declare-fun b_next!38925 () Bool)

(assert (=> start!7874 (= b_free!7269 (not b_next!38925))))

(declare-fun tp!16009 () Bool)

(declare-fun b_and!58449 () Bool)

(assert (=> start!7874 (= tp!16009 b_and!58449)))

(declare-fun b!56658 () Bool)

(assert (=> b!56658 true))

(declare-fun order!439 () Int)

(declare-fun A!2096 () Int)

(declare-fun lambda!8919 () Int)

(declare-fun dynLambda!911 (Int Int) Int)

(assert (=> b!56658 (< (dynLambda!911 order!439 A!2096) (dynLambda!911 order!439 lambda!8919))))

(declare-fun bs!35457 () Bool)

(declare-fun b!56657 () Bool)

(assert (= bs!35457 (and b!56657 b!56658)))

(declare-fun lambda!8920 () Int)

(assert (=> bs!35457 (not (= lambda!8920 lambda!8919))))

(declare-fun b_next!38927 () Bool)

(assert (=> start!7874 (= b_next!38925 (or (and b!56657 (= lambda!8920 A!2096)) b_next!38927))))

(declare-fun b!56655 () Bool)

(declare-fun tp!16006 () Bool)

(declare-fun e!30041 () Bool)

(declare-datatypes () ((Option!305 (Some!297 (v!2044 Object!260)) (None!298)) (Object!260 (BigIntStructure!8) (StructureExt!8 (__x!138 Int)) (OptionStructure!8 (ev!18 Object!260)) (Option!306 (value!4084 Option!305)) (Integer!249 (value!4085 Int)) (Open!260 (value!4086 Int)))))

(declare-fun lt!10314 () Object!260)

(declare-fun dynLambda!912 (Int Object!260) Bool)

(assert (=> b!56655 (= e!30041 (and tp!16006 (dynLambda!912 A!2096 lt!10314)))))

(declare-fun x!23333 () Option!305)

(assert (=> b!56655 (= lt!10314 (v!2044 x!23333))))

(declare-fun b!56656 () Bool)

(declare-fun e!30045 () Bool)

(declare-fun tp!16010 () Bool)

(assert (=> b!56656 (= e!30045 tp!16010)))

(declare-fun lt!10313 () Object!260)

(declare-fun e!30044 () Bool)

(declare-fun tp!16007 () Bool)

(declare-fun isStructure!0 (Object!260 Int) Bool)

(assert (=> b!56657 (= e!30044 (and tp!16007 (isStructure!0 lt!10313 lambda!8920)))))

(declare-fun thiss!7987 () Object!260)

(assert (=> b!56657 (= lt!10313 (ev!18 thiss!7987))))

(declare-fun res!26204 () Bool)

(declare-fun e!30042 () Bool)

(assert (=> b!56658 (=> (not res!26204) (not e!30042))))

(declare-datatypes () ((ProofOps!310 (ProofOps!311 (prop!344 Bool)))))

(declare-fun thiss!7989 () ProofOps!310)

(declare-fun lt!10315 () Bool)

(assert (=> b!56658 (= res!26204 (= thiss!7989 (ProofOps!311 lt!10315)))))

(declare-fun lt!10316 () Object!260)

(declare-fun lt!10317 () Object!260)

(declare-fun someLaw!7 (Object!260 Object!260 Object!260) Bool)

(assert (=> b!56658 (= lt!10315 (someLaw!7 thiss!7987 lt!10317 lt!10316))))

(declare-fun doSomething!1 (Int Object!260 Object!260 Object!260) Object!260)

(assert (=> b!56658 (= lt!10315 (= (doSomething!1 lambda!8919 thiss!7987 lt!10317 lt!10316) (doSomething!1 lambda!8919 thiss!7987 lt!10316 lt!10317)))))

(declare-fun y!1715 () Option!305)

(assert (=> b!56658 (= lt!10316 (Option!306 y!1715))))

(assert (=> b!56658 (= lt!10317 (Option!306 x!23333))))

(declare-fun b!56659 () Bool)

(declare-fun lt!10319 () Object!260)

(declare-fun e!30043 () Bool)

(declare-fun tp!16008 () Bool)

(assert (=> b!56659 (= e!30043 (and tp!16008 (dynLambda!912 A!2096 lt!10319)))))

(assert (=> b!56659 (= lt!10319 (v!2044 y!1715))))

(declare-fun b!56660 () Bool)

(assert (=> b!56660 (= e!30044 e!30045)))

(declare-fun b!56661 () Bool)

(assert (=> b!56661 (= e!30042 false)))

(declare-fun res!26203 () Bool)

(assert (=> start!7874 (=> (not res!26203) (not e!30042))))

(declare-fun isOptionStructure!0 (Object!260 Int) Bool)

(assert (=> start!7874 (= res!26203 (isOptionStructure!0 thiss!7987 A!2096))))

(assert (=> start!7874 e!30042))

(declare-fun lt!10318 () Object!260)

(assert (=> start!7874 (= lt!10318 thiss!7987)))

(assert (=> start!7874 (and e!30044 (isOptionStructure!0 lt!10318 A!2096))))

(assert (=> start!7874 tp!16009))

(assert (=> start!7874 true))

(assert (=> start!7874 e!30043))

(assert (=> start!7874 e!30041))

(assert (= (and start!7874 res!26203) b!56658))

(assert (= (and b!56658 res!26204) b!56661))

(assert (= (and start!7874 (is-OptionStructure!8 thiss!7987)) b!56657))

(assert (= (and b!56660 (is-Some!297 (value!4084 thiss!7987))) b!56656))

(assert (= (and start!7874 (is-Option!306 thiss!7987)) b!56660))

(assert (= (and start!7874 (is-Some!297 y!1715)) b!56659))

(assert (= (and start!7874 (is-Some!297 x!23333)) b!56655))

(declare-fun b_lambda!15177 () Bool)

(assert (=> (not b_lambda!15177) (not b!56655)))

(declare-fun t!46992 () Bool)

(declare-fun tb!45991 () Bool)

(assert (=> (and start!7874 (= A!2096 A!2096) t!46992) tb!45991))

(declare-fun result!46347 () Bool)

(assert (=> tb!45991 (= result!46347 true)))

(assert (=> b!56655 t!46992))

(declare-fun b_and!58451 () Bool)

(assert (= b_and!58449 (and (=> t!46992 result!46347) b_and!58451)))

(declare-fun b_lambda!15179 () Bool)

(assert (=> (not b_lambda!15179) (not b!56659)))

(declare-fun t!46994 () Bool)

(declare-fun tb!45993 () Bool)

(assert (=> (and start!7874 (= A!2096 A!2096) t!46994) tb!45993))

(declare-fun result!46349 () Bool)

(assert (=> tb!45993 (= result!46349 true)))

(assert (=> b!56659 t!46994))

(declare-fun b_and!58453 () Bool)

(assert (= b_and!58451 (and (=> t!46994 result!46349) b_and!58453)))

(declare-fun m!61584 () Bool)

(assert (=> b!56659 m!61584))

(declare-fun m!61586 () Bool)

(assert (=> b!56655 m!61586))

(declare-fun m!61588 () Bool)

(assert (=> b!56658 m!61588))

(declare-fun m!61590 () Bool)

(assert (=> b!56658 m!61590))

(declare-fun m!61592 () Bool)

(assert (=> b!56658 m!61592))

(declare-fun m!61594 () Bool)

(assert (=> b!56657 m!61594))

(declare-fun m!61596 () Bool)

(assert (=> start!7874 m!61596))

(declare-fun m!61598 () Bool)

(assert (=> start!7874 m!61598))

(push 1)

(assert (not b_lambda!15179))

(assert (not b_next!38927))

(assert (not b_lambda!15177))

(assert (not b!56655))

(assert b_and!58453)

(assert (not start!7874))

(assert (not b!56657))

(assert (not b!56656))

(assert (not b!56658))

(assert (not b!56659))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58453)

(assert (not b_next!38927))

(check-sat)

(pop 1)


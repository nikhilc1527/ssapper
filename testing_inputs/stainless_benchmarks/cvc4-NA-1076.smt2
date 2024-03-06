; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7918 () Bool)

(assert start!7918)

(declare-fun bs!35946 () Bool)

(declare-fun b!57052 () Bool)

(declare-fun b!57055 () Bool)

(assert (= bs!35946 (and b!57052 b!57055)))

(declare-fun lambda!9032 () Int)

(declare-fun lambda!9031 () Int)

(assert (=> bs!35946 (not (= lambda!9032 lambda!9031))))

(declare-fun b!57051 () Bool)

(declare-fun e!30277 () Bool)

(declare-fun e!30279 () Bool)

(assert (=> b!57051 (= e!30277 e!30279)))

(declare-fun res!26404 () Bool)

(assert (=> b!57051 (=> res!26404 e!30279)))

(declare-fun res!25581 () Bool)

(assert (=> b!57051 (= res!26404 (not res!25581))))

(declare-datatypes () ((Option!313 (Some!301 (v!2048 Object!264)) (None!302)) (Object!264 (BigIntStructure!12) (StructureExt!12 (__x!142 Int)) (OptionStructure!12 (ev!22 Object!264)) (Option!314 (value!4096 Option!313)) (Integer!253 (value!4097 Int)) (Open!264 (value!4098 Int)))))

(declare-fun lt!10504 () Object!264)

(declare-fun tp!16127 () Bool)

(declare-fun e!30278 () Bool)

(declare-fun isStructure!0 (Object!264 Int) Bool)

(assert (=> b!57052 (= e!30278 (and tp!16127 (isStructure!0 lt!10504 lambda!9032)))))

(declare-fun thiss!8013 () Object!264)

(assert (=> b!57052 (= lt!10504 (ev!22 thiss!8013))))

(declare-fun b!57053 () Bool)

(declare-fun lt!10510 () Bool)

(assert (=> b!57053 (= e!30279 (not lt!10510))))

(declare-fun lt!10505 () Object!264)

(declare-fun lt!10509 () Object!264)

(declare-fun someLaw!7 (Object!264 Object!264 Object!264) Bool)

(assert (=> b!57053 (= lt!10510 (someLaw!7 thiss!8013 lt!10509 lt!10505))))

(declare-fun doSomething!1 (Int Object!264 Object!264 Object!264) Object!264)

(assert (=> b!57053 (= lt!10510 (= (doSomething!1 lambda!9031 thiss!8013 lt!10509 lt!10505) (doSomething!1 lambda!9031 thiss!8013 lt!10505 lt!10509)))))

(declare-fun y!1739 () Int)

(assert (=> b!57053 (= lt!10505 (Integer!253 y!1739))))

(declare-fun x!23767 () Int)

(assert (=> b!57053 (= lt!10509 (Integer!253 x!23767))))

(declare-fun b!57054 () Bool)

(declare-fun e!30280 () Bool)

(declare-fun tp!16126 () Bool)

(assert (=> b!57054 (= e!30280 tp!16126)))

(declare-fun res!26406 () Bool)

(assert (=> b!57055 (=> (not res!26406) (not e!30277))))

(declare-fun lt!10507 () Bool)

(declare-datatypes () ((ProofOps!316 (ProofOps!317 (prop!349 Bool)))))

(declare-fun because!1 (ProofOps!316 Bool) Bool)

(assert (=> b!57055 (= res!26406 (= res!25581 (because!1 (ProofOps!317 lt!10507) (= (+ x!23767 y!1739) (+ y!1739 x!23767)))))))

(declare-fun lt!10506 () Object!264)

(declare-fun lt!10511 () Object!264)

(assert (=> b!57055 (= lt!10507 (someLaw!7 thiss!8013 lt!10511 lt!10506))))

(assert (=> b!57055 (= lt!10507 (= (doSomething!1 lambda!9031 thiss!8013 lt!10511 lt!10506) (doSomething!1 lambda!9031 thiss!8013 lt!10506 lt!10511)))))

(assert (=> b!57055 (= lt!10506 (Integer!253 y!1739))))

(assert (=> b!57055 (= lt!10511 (Integer!253 x!23767))))

(declare-fun res!26405 () Bool)

(assert (=> start!7918 (=> (not res!26405) (not e!30277))))

(declare-fun isBigIntStructure!0 (Object!264) Bool)

(assert (=> start!7918 (= res!26405 (isBigIntStructure!0 thiss!8013))))

(assert (=> start!7918 e!30277))

(declare-fun lt!10508 () Object!264)

(assert (=> start!7918 (= lt!10508 thiss!8013)))

(assert (=> start!7918 (and e!30278 (isBigIntStructure!0 lt!10508))))

(assert (=> start!7918 true))

(declare-fun b!57056 () Bool)

(assert (=> b!57056 (= e!30278 e!30280)))

(assert (= (and start!7918 res!26405) b!57055))

(assert (= (and b!57055 res!26406) b!57051))

(assert (= (and b!57051 (not res!26404)) b!57053))

(assert (= (and start!7918 (is-OptionStructure!12 thiss!8013)) b!57052))

(assert (= (and b!57056 (is-Some!301 (value!4096 thiss!8013))) b!57054))

(assert (= (and start!7918 (is-Option!314 thiss!8013)) b!57056))

(declare-fun m!61950 () Bool)

(assert (=> b!57052 m!61950))

(declare-fun m!61952 () Bool)

(assert (=> b!57053 m!61952))

(declare-fun m!61954 () Bool)

(assert (=> b!57053 m!61954))

(declare-fun m!61956 () Bool)

(assert (=> b!57053 m!61956))

(declare-fun m!61958 () Bool)

(assert (=> b!57055 m!61958))

(declare-fun m!61960 () Bool)

(assert (=> b!57055 m!61960))

(declare-fun m!61962 () Bool)

(assert (=> b!57055 m!61962))

(declare-fun m!61964 () Bool)

(assert (=> b!57055 m!61964))

(declare-fun m!61966 () Bool)

(assert (=> start!7918 m!61966))

(declare-fun m!61968 () Bool)

(assert (=> start!7918 m!61968))

(push 1)

(assert (not b!57052))

(assert (not b!57055))

(assert (not b!57053))

(assert (not start!7918))

(assert (not b!57054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50076 () Bool)

(assert (=> d!50076 true))

(assert (=> d!50076 true))

(declare-fun res!26409 () Bool)

(assert (=> d!50076 (= (someLaw!7 thiss!8013 lt!10509 lt!10505) res!26409)))

(assert (=> b!57053 d!50076))

(declare-fun bs!35947 () Bool)

(declare-fun b!57072 () Bool)

(assert (= bs!35947 (and b!57072 b!57055)))

(declare-fun lambda!9039 () Int)

(assert (=> bs!35947 (not (= lambda!9039 lambda!9031))))

(declare-fun bs!35948 () Bool)

(assert (= bs!35948 (and b!57072 b!57052)))

(assert (=> bs!35948 (= lambda!9039 lambda!9032)))

(declare-fun b!57069 () Bool)

(declare-fun e!30292 () Object!264)

(declare-fun lt!10518 () Int)

(assert (=> b!57069 (= e!30292 (Integer!253 lt!10518))))

(declare-fun dynLambda!917 (Int Object!264) Bool)

(assert (=> b!57069 (dynLambda!917 lambda!9031 (Integer!253 lt!10518))))

(declare-fun doSomething!2 (Object!264 Int Int) Int)

(assert (=> b!57069 (= lt!10518 (doSomething!2 thiss!8013 (value!4097 lt!10509) (value!4097 lt!10505)))))

(assert (=> b!57069 (is-Integer!253 lt!10505)))

(assert (=> b!57069 (is-Integer!253 lt!10509)))

(declare-fun b!57070 () Bool)

(declare-fun e!30289 () Bool)

(declare-fun isOption!20 (Option!313 Int) Bool)

(assert (=> b!57070 (= e!30289 (isOption!20 (value!4096 lt!10505) lambda!9039))))

(declare-fun b!57071 () Bool)

(declare-fun e!30291 () Object!264)

(assert (=> b!57071 (= e!30292 e!30291)))

(declare-fun c!12173 () Bool)

(declare-fun isStructureExt!0 (Object!264 Int) Bool)

(assert (=> b!57071 (= c!12173 (isStructureExt!0 thiss!8013 lambda!9031))))

(declare-fun lt!10519 () Option!313)

(assert (=> b!57072 (= e!30291 (Option!314 lt!10519))))

(assert (=> b!57072 (dynLambda!917 lambda!9031 (Option!314 lt!10519))))

(declare-fun doSomething!3 (Int Object!264 Option!313 Option!313) Option!313)

(assert (=> b!57072 (= lt!10519 (doSomething!3 lambda!9039 thiss!8013 (value!4096 lt!10509) (value!4096 lt!10505)))))

(assert (=> b!57072 e!30289))

(declare-fun res!26416 () Bool)

(assert (=> b!57072 (=> (not res!26416) (not e!30289))))

(assert (=> b!57072 (= res!26416 (is-Option!314 lt!10505))))

(declare-fun e!30290 () Bool)

(assert (=> b!57072 e!30290))

(declare-fun res!26415 () Bool)

(assert (=> b!57072 (=> (not res!26415) (not e!30290))))

(assert (=> b!57072 (= res!26415 (is-Option!314 lt!10509))))

(declare-fun lt!10520 () Object!264)

(declare-fun d!50078 () Bool)

(declare-fun doSomething!7 (Object!264 Object!264 Object!264) Object!264)

(assert (=> d!50078 (= lt!10520 (doSomething!7 thiss!8013 lt!10509 lt!10505))))

(assert (=> d!50078 (= lt!10520 e!30292)))

(declare-fun c!12172 () Bool)

(assert (=> d!50078 (= c!12172 (isBigIntStructure!0 thiss!8013))))

(assert (=> d!50078 (= (doSomething!1 lambda!9031 thiss!8013 lt!10509 lt!10505) lt!10520)))

(declare-fun b!57073 () Bool)

(assert (=> b!57073 (= e!30290 (isOption!20 (value!4096 lt!10509) lambda!9039))))

(declare-fun b!57074 () Bool)

(declare-fun doSomething!4 (Int Object!264 Object!264 Object!264) Object!264)

(assert (=> b!57074 (= e!30291 (doSomething!4 lambda!9031 thiss!8013 lt!10509 lt!10505))))

(assert (= (and b!57072 res!26415) b!57073))

(assert (= (and b!57072 res!26416) b!57070))

(assert (= (and b!57071 c!12173) b!57074))

(assert (= (and b!57071 (not c!12173)) b!57072))

(assert (= (and d!50078 c!12172) b!57069))

(assert (= (and d!50078 (not c!12172)) b!57071))

(declare-fun b_lambda!15285 () Bool)

(assert (=> (not b_lambda!15285) (not b!57069)))

(declare-fun b_lambda!15287 () Bool)

(assert (=> (not b_lambda!15287) (not b!57072)))

(declare-fun m!61970 () Bool)

(assert (=> b!57069 m!61970))

(declare-fun m!61972 () Bool)

(assert (=> b!57069 m!61972))

(declare-fun m!61974 () Bool)

(assert (=> d!50078 m!61974))

(assert (=> d!50078 m!61966))

(declare-fun m!61976 () Bool)

(assert (=> b!57071 m!61976))

(declare-fun m!61978 () Bool)

(assert (=> b!57070 m!61978))

(declare-fun m!61980 () Bool)

(assert (=> b!57074 m!61980))

(declare-fun m!61982 () Bool)

(assert (=> b!57073 m!61982))

(declare-fun m!61984 () Bool)

(assert (=> b!57072 m!61984))

(declare-fun m!61986 () Bool)

(assert (=> b!57072 m!61986))

(assert (=> b!57053 d!50078))

(declare-fun bs!35949 () Bool)

(declare-fun b!57078 () Bool)

(assert (= bs!35949 (and b!57078 b!57055)))

(declare-fun lambda!9040 () Int)

(assert (=> bs!35949 (not (= lambda!9040 lambda!9031))))

(declare-fun bs!35950 () Bool)

(assert (= bs!35950 (and b!57078 b!57052)))

(assert (=> bs!35950 (= lambda!9040 lambda!9032)))

(declare-fun bs!35951 () Bool)

(assert (= bs!35951 (and b!57078 b!57072)))

(assert (=> bs!35951 (= lambda!9040 lambda!9039)))

(declare-fun b!57075 () Bool)

(declare-fun e!30296 () Object!264)

(declare-fun lt!10521 () Int)

(assert (=> b!57075 (= e!30296 (Integer!253 lt!10521))))

(assert (=> b!57075 (dynLambda!917 lambda!9031 (Integer!253 lt!10521))))

(assert (=> b!57075 (= lt!10521 (doSomething!2 thiss!8013 (value!4097 lt!10505) (value!4097 lt!10509)))))

(assert (=> b!57075 (is-Integer!253 lt!10509)))

(assert (=> b!57075 (is-Integer!253 lt!10505)))

(declare-fun b!57076 () Bool)

(declare-fun e!30293 () Bool)

(assert (=> b!57076 (= e!30293 (isOption!20 (value!4096 lt!10509) lambda!9040))))

(declare-fun b!57077 () Bool)

(declare-fun e!30295 () Object!264)

(assert (=> b!57077 (= e!30296 e!30295)))

(declare-fun c!12175 () Bool)

(assert (=> b!57077 (= c!12175 (isStructureExt!0 thiss!8013 lambda!9031))))

(declare-fun lt!10522 () Option!313)

(assert (=> b!57078 (= e!30295 (Option!314 lt!10522))))

(assert (=> b!57078 (dynLambda!917 lambda!9031 (Option!314 lt!10522))))

(assert (=> b!57078 (= lt!10522 (doSomething!3 lambda!9040 thiss!8013 (value!4096 lt!10505) (value!4096 lt!10509)))))

(assert (=> b!57078 e!30293))

(declare-fun res!26418 () Bool)

(assert (=> b!57078 (=> (not res!26418) (not e!30293))))

(assert (=> b!57078 (= res!26418 (is-Option!314 lt!10509))))

(declare-fun e!30294 () Bool)

(assert (=> b!57078 e!30294))

(declare-fun res!26417 () Bool)

(assert (=> b!57078 (=> (not res!26417) (not e!30294))))

(assert (=> b!57078 (= res!26417 (is-Option!314 lt!10505))))

(declare-fun lt!10523 () Object!264)

(declare-fun d!50080 () Bool)

(assert (=> d!50080 (= lt!10523 (doSomething!7 thiss!8013 lt!10505 lt!10509))))

(assert (=> d!50080 (= lt!10523 e!30296)))

(declare-fun c!12174 () Bool)

(assert (=> d!50080 (= c!12174 (isBigIntStructure!0 thiss!8013))))

(assert (=> d!50080 (= (doSomething!1 lambda!9031 thiss!8013 lt!10505 lt!10509) lt!10523)))

(declare-fun b!57079 () Bool)

(assert (=> b!57079 (= e!30294 (isOption!20 (value!4096 lt!10505) lambda!9040))))

(declare-fun b!57080 () Bool)

(assert (=> b!57080 (= e!30295 (doSomething!4 lambda!9031 thiss!8013 lt!10505 lt!10509))))

(assert (= (and b!57078 res!26417) b!57079))

(assert (= (and b!57078 res!26418) b!57076))

(assert (= (and b!57077 c!12175) b!57080))

(assert (= (and b!57077 (not c!12175)) b!57078))

(assert (= (and d!50080 c!12174) b!57075))

(assert (= (and d!50080 (not c!12174)) b!57077))

(declare-fun b_lambda!15289 () Bool)

(assert (=> (not b_lambda!15289) (not b!57075)))

(declare-fun b_lambda!15291 () Bool)

(assert (=> (not b_lambda!15291) (not b!57078)))

(declare-fun m!61988 () Bool)

(assert (=> b!57075 m!61988))

(declare-fun m!61990 () Bool)

(assert (=> b!57075 m!61990))

(declare-fun m!61992 () Bool)

(assert (=> d!50080 m!61992))

(assert (=> d!50080 m!61966))

(assert (=> b!57077 m!61976))

(declare-fun m!61994 () Bool)

(assert (=> b!57076 m!61994))

(declare-fun m!61996 () Bool)

(assert (=> b!57080 m!61996))

(declare-fun m!61998 () Bool)

(assert (=> b!57079 m!61998))

(declare-fun m!62000 () Bool)

(assert (=> b!57078 m!62000))

(declare-fun m!62002 () Bool)

(assert (=> b!57078 m!62002))

(assert (=> b!57053 d!50080))

(declare-fun d!50082 () Bool)

(assert (=> d!50082 (= (because!1 (ProofOps!317 lt!10507) (= (+ x!23767 y!1739) (+ y!1739 x!23767))) (and (= (+ x!23767 y!1739) (+ y!1739 x!23767)) (prop!349 (ProofOps!317 lt!10507))))))

(assert (=> b!57055 d!50082))

(declare-fun d!50084 () Bool)

(assert (=> d!50084 true))

(assert (=> d!50084 true))

(declare-fun res!26419 () Bool)

(assert (=> d!50084 (= (someLaw!7 thiss!8013 lt!10511 lt!10506) res!26419)))

(assert (=> b!57055 d!50084))

(declare-fun bs!35952 () Bool)

(declare-fun b!57084 () Bool)

(assert (= bs!35952 (and b!57084 b!57055)))

(declare-fun lambda!9041 () Int)

(assert (=> bs!35952 (not (= lambda!9041 lambda!9031))))

(declare-fun bs!35953 () Bool)

(assert (= bs!35953 (and b!57084 b!57052)))

(assert (=> bs!35953 (= lambda!9041 lambda!9032)))

(declare-fun bs!35954 () Bool)

(assert (= bs!35954 (and b!57084 b!57072)))

(assert (=> bs!35954 (= lambda!9041 lambda!9039)))

(declare-fun bs!35955 () Bool)

(assert (= bs!35955 (and b!57084 b!57078)))

(assert (=> bs!35955 (= lambda!9041 lambda!9040)))

(declare-fun b!57081 () Bool)

(declare-fun e!30300 () Object!264)

(declare-fun lt!10524 () Int)

(assert (=> b!57081 (= e!30300 (Integer!253 lt!10524))))

(assert (=> b!57081 (dynLambda!917 lambda!9031 (Integer!253 lt!10524))))

(assert (=> b!57081 (= lt!10524 (doSomething!2 thiss!8013 (value!4097 lt!10511) (value!4097 lt!10506)))))

(assert (=> b!57081 (is-Integer!253 lt!10506)))

(assert (=> b!57081 (is-Integer!253 lt!10511)))

(declare-fun b!57082 () Bool)

(declare-fun e!30297 () Bool)

(assert (=> b!57082 (= e!30297 (isOption!20 (value!4096 lt!10506) lambda!9041))))

(declare-fun b!57083 () Bool)

(declare-fun e!30299 () Object!264)

(assert (=> b!57083 (= e!30300 e!30299)))

(declare-fun c!12177 () Bool)

(assert (=> b!57083 (= c!12177 (isStructureExt!0 thiss!8013 lambda!9031))))

(declare-fun lt!10525 () Option!313)

(assert (=> b!57084 (= e!30299 (Option!314 lt!10525))))

(assert (=> b!57084 (dynLambda!917 lambda!9031 (Option!314 lt!10525))))

(assert (=> b!57084 (= lt!10525 (doSomething!3 lambda!9041 thiss!8013 (value!4096 lt!10511) (value!4096 lt!10506)))))

(assert (=> b!57084 e!30297))

(declare-fun res!26421 () Bool)

(assert (=> b!57084 (=> (not res!26421) (not e!30297))))

(assert (=> b!57084 (= res!26421 (is-Option!314 lt!10506))))

(declare-fun e!30298 () Bool)

(assert (=> b!57084 e!30298))

(declare-fun res!26420 () Bool)

(assert (=> b!57084 (=> (not res!26420) (not e!30298))))

(assert (=> b!57084 (= res!26420 (is-Option!314 lt!10511))))

(declare-fun d!50086 () Bool)

(declare-fun lt!10526 () Object!264)

(assert (=> d!50086 (= lt!10526 (doSomething!7 thiss!8013 lt!10511 lt!10506))))

(assert (=> d!50086 (= lt!10526 e!30300)))

(declare-fun c!12176 () Bool)

(assert (=> d!50086 (= c!12176 (isBigIntStructure!0 thiss!8013))))

(assert (=> d!50086 (= (doSomething!1 lambda!9031 thiss!8013 lt!10511 lt!10506) lt!10526)))

(declare-fun b!57085 () Bool)

(assert (=> b!57085 (= e!30298 (isOption!20 (value!4096 lt!10511) lambda!9041))))

(declare-fun b!57086 () Bool)

(assert (=> b!57086 (= e!30299 (doSomething!4 lambda!9031 thiss!8013 lt!10511 lt!10506))))

(assert (= (and b!57084 res!26420) b!57085))

(assert (= (and b!57084 res!26421) b!57082))

(assert (= (and b!57083 c!12177) b!57086))

(assert (= (and b!57083 (not c!12177)) b!57084))

(assert (= (and d!50086 c!12176) b!57081))

(assert (= (and d!50086 (not c!12176)) b!57083))

(declare-fun b_lambda!15293 () Bool)

(assert (=> (not b_lambda!15293) (not b!57081)))

(declare-fun b_lambda!15295 () Bool)

(assert (=> (not b_lambda!15295) (not b!57084)))

(declare-fun m!62004 () Bool)

(assert (=> b!57081 m!62004))

(declare-fun m!62006 () Bool)

(assert (=> b!57081 m!62006))

(declare-fun m!62008 () Bool)

(assert (=> d!50086 m!62008))

(assert (=> d!50086 m!61966))

(assert (=> b!57083 m!61976))

(declare-fun m!62010 () Bool)

(assert (=> b!57082 m!62010))

(declare-fun m!62012 () Bool)

(assert (=> b!57086 m!62012))

(declare-fun m!62014 () Bool)

(assert (=> b!57085 m!62014))

(declare-fun m!62016 () Bool)

(assert (=> b!57084 m!62016))

(declare-fun m!62018 () Bool)

(assert (=> b!57084 m!62018))

(assert (=> b!57055 d!50086))

(declare-fun bs!35956 () Bool)

(declare-fun b!57090 () Bool)

(assert (= bs!35956 (and b!57090 b!57084)))

(declare-fun lambda!9042 () Int)

(assert (=> bs!35956 (= lambda!9042 lambda!9041)))

(declare-fun bs!35957 () Bool)

(assert (= bs!35957 (and b!57090 b!57052)))

(assert (=> bs!35957 (= lambda!9042 lambda!9032)))

(declare-fun bs!35958 () Bool)

(assert (= bs!35958 (and b!57090 b!57078)))

(assert (=> bs!35958 (= lambda!9042 lambda!9040)))

(declare-fun bs!35959 () Bool)

(assert (= bs!35959 (and b!57090 b!57072)))

(assert (=> bs!35959 (= lambda!9042 lambda!9039)))

(declare-fun bs!35960 () Bool)

(assert (= bs!35960 (and b!57090 b!57055)))

(assert (=> bs!35960 (not (= lambda!9042 lambda!9031))))

(declare-fun b!57087 () Bool)

(declare-fun e!30304 () Object!264)

(declare-fun lt!10527 () Int)

(assert (=> b!57087 (= e!30304 (Integer!253 lt!10527))))

(assert (=> b!57087 (dynLambda!917 lambda!9031 (Integer!253 lt!10527))))

(assert (=> b!57087 (= lt!10527 (doSomething!2 thiss!8013 (value!4097 lt!10506) (value!4097 lt!10511)))))

(assert (=> b!57087 (is-Integer!253 lt!10511)))

(assert (=> b!57087 (is-Integer!253 lt!10506)))

(declare-fun b!57088 () Bool)

(declare-fun e!30301 () Bool)

(assert (=> b!57088 (= e!30301 (isOption!20 (value!4096 lt!10511) lambda!9042))))

(declare-fun b!57089 () Bool)

(declare-fun e!30303 () Object!264)

(assert (=> b!57089 (= e!30304 e!30303)))

(declare-fun c!12179 () Bool)

(assert (=> b!57089 (= c!12179 (isStructureExt!0 thiss!8013 lambda!9031))))

(declare-fun lt!10528 () Option!313)

(assert (=> b!57090 (= e!30303 (Option!314 lt!10528))))

(assert (=> b!57090 (dynLambda!917 lambda!9031 (Option!314 lt!10528))))

(assert (=> b!57090 (= lt!10528 (doSomething!3 lambda!9042 thiss!8013 (value!4096 lt!10506) (value!4096 lt!10511)))))

(assert (=> b!57090 e!30301))

(declare-fun res!26423 () Bool)

(assert (=> b!57090 (=> (not res!26423) (not e!30301))))

(assert (=> b!57090 (= res!26423 (is-Option!314 lt!10511))))

(declare-fun e!30302 () Bool)

(assert (=> b!57090 e!30302))

(declare-fun res!26422 () Bool)

(assert (=> b!57090 (=> (not res!26422) (not e!30302))))

(assert (=> b!57090 (= res!26422 (is-Option!314 lt!10506))))

(declare-fun lt!10529 () Object!264)

(declare-fun d!50088 () Bool)

(assert (=> d!50088 (= lt!10529 (doSomething!7 thiss!8013 lt!10506 lt!10511))))

(assert (=> d!50088 (= lt!10529 e!30304)))

(declare-fun c!12178 () Bool)

(assert (=> d!50088 (= c!12178 (isBigIntStructure!0 thiss!8013))))

(assert (=> d!50088 (= (doSomething!1 lambda!9031 thiss!8013 lt!10506 lt!10511) lt!10529)))

(declare-fun b!57091 () Bool)

(assert (=> b!57091 (= e!30302 (isOption!20 (value!4096 lt!10506) lambda!9042))))

(declare-fun b!57092 () Bool)

(assert (=> b!57092 (= e!30303 (doSomething!4 lambda!9031 thiss!8013 lt!10506 lt!10511))))

(assert (= (and b!57090 res!26422) b!57091))

(assert (= (and b!57090 res!26423) b!57088))

(assert (= (and b!57089 c!12179) b!57092))

(assert (= (and b!57089 (not c!12179)) b!57090))

(assert (= (and d!50088 c!12178) b!57087))

(assert (= (and d!50088 (not c!12178)) b!57089))

(declare-fun b_lambda!15297 () Bool)

(assert (=> (not b_lambda!15297) (not b!57087)))

(declare-fun b_lambda!15299 () Bool)

(assert (=> (not b_lambda!15299) (not b!57090)))

(declare-fun m!62020 () Bool)

(assert (=> b!57087 m!62020))

(declare-fun m!62022 () Bool)

(assert (=> b!57087 m!62022))

(declare-fun m!62024 () Bool)

(assert (=> d!50088 m!62024))

(assert (=> d!50088 m!61966))

(assert (=> b!57089 m!61976))

(declare-fun m!62026 () Bool)

(assert (=> b!57088 m!62026))

(declare-fun m!62028 () Bool)

(assert (=> b!57092 m!62028))

(declare-fun m!62030 () Bool)

(assert (=> b!57091 m!62030))

(declare-fun m!62032 () Bool)

(assert (=> b!57090 m!62032))

(declare-fun m!62034 () Bool)

(assert (=> b!57090 m!62034))

(assert (=> b!57055 d!50088))

(declare-fun bs!35961 () Bool)

(declare-fun b!57098 () Bool)

(assert (= bs!35961 (and b!57098 b!57090)))

(declare-fun lambda!9045 () Int)

(assert (=> bs!35961 (= lambda!9045 lambda!9042)))

(declare-fun bs!35962 () Bool)

(assert (= bs!35962 (and b!57098 b!57084)))

(assert (=> bs!35962 (= lambda!9045 lambda!9041)))

(declare-fun bs!35963 () Bool)

(assert (= bs!35963 (and b!57098 b!57052)))

(assert (=> bs!35963 (= lambda!9045 lambda!9032)))

(declare-fun bs!35964 () Bool)

(assert (= bs!35964 (and b!57098 b!57078)))

(assert (=> bs!35964 (= lambda!9045 lambda!9040)))

(declare-fun bs!35965 () Bool)

(assert (= bs!35965 (and b!57098 b!57072)))

(assert (=> bs!35965 (= lambda!9045 lambda!9039)))

(declare-fun bs!35966 () Bool)

(assert (= bs!35966 (and b!57098 b!57055)))

(assert (=> bs!35966 (not (= lambda!9045 lambda!9031))))

(declare-fun d!50090 () Bool)

(declare-fun res!26428 () Bool)

(declare-fun e!30307 () Bool)

(assert (=> d!50090 (=> res!26428 e!30307)))

(assert (=> d!50090 (= res!26428 (isBigIntStructure!0 lt!10504))))

(assert (=> d!50090 (= (isStructure!0 lt!10504 lambda!9032) e!30307)))

(declare-fun b!57097 () Bool)

(declare-fun res!26429 () Bool)

(assert (=> b!57097 (=> res!26429 e!30307)))

(assert (=> b!57097 (= res!26429 (isStructureExt!0 lt!10504 lambda!9032))))

(declare-fun isOptionStructure!0 (Object!264 Int) Bool)

(assert (=> b!57098 (= e!30307 (isOptionStructure!0 lt!10504 lambda!9045))))

(assert (= (and d!50090 (not res!26428)) b!57097))

(assert (= (and b!57097 (not res!26429)) b!57098))

(declare-fun m!62036 () Bool)

(assert (=> d!50090 m!62036))

(declare-fun m!62038 () Bool)

(assert (=> b!57097 m!62038))

(declare-fun m!62040 () Bool)

(assert (=> b!57098 m!62040))

(assert (=> b!57052 d!50090))

(declare-fun d!50092 () Bool)

(assert (=> d!50092 (= (isBigIntStructure!0 thiss!8013) (is-BigIntStructure!12 thiss!8013))))

(assert (=> start!7918 d!50092))

(declare-fun d!50094 () Bool)

(assert (=> d!50094 (= (isBigIntStructure!0 lt!10508) (is-BigIntStructure!12 lt!10508))))

(assert (=> start!7918 d!50094))

(declare-fun tp!16132 () Bool)

(declare-fun b!57107 () Bool)

(declare-fun lt!10532 () Object!264)

(declare-fun e!30313 () Bool)

(assert (=> b!57107 (= e!30313 (and tp!16132 (isStructure!0 lt!10532 lambda!9032)))))

(assert (=> b!57107 (= lt!10532 (ev!22 (ev!22 thiss!8013)))))

(declare-fun b!57109 () Bool)

(declare-fun e!30312 () Bool)

(declare-fun tp!16133 () Bool)

(assert (=> b!57109 (= e!30312 tp!16133)))

(declare-fun b!57108 () Bool)

(assert (=> b!57108 (= e!30313 e!30312)))

(assert (=> b!57052 (= tp!16127 e!30313)))

(assert (= (and b!57052 (is-OptionStructure!12 (ev!22 thiss!8013))) b!57107))

(assert (= (and b!57108 (is-Some!301 (value!4096 (ev!22 thiss!8013)))) b!57109))

(assert (= (and b!57052 (is-Option!314 (ev!22 thiss!8013))) b!57108))

(declare-fun m!62042 () Bool)

(assert (=> b!57107 m!62042))

(declare-fun bs!35967 () Bool)

(declare-fun b!57110 () Bool)

(assert (= bs!35967 (and b!57110 b!57090)))

(declare-fun lambda!9048 () Int)

(assert (=> bs!35967 (= lambda!9048 lambda!9042)))

(declare-fun bs!35968 () Bool)

(assert (= bs!35968 (and b!57110 b!57084)))

(assert (=> bs!35968 (= lambda!9048 lambda!9041)))

(declare-fun bs!35969 () Bool)

(assert (= bs!35969 (and b!57110 b!57098)))

(assert (=> bs!35969 (= lambda!9048 lambda!9045)))

(declare-fun bs!35970 () Bool)

(assert (= bs!35970 (and b!57110 b!57052)))

(assert (=> bs!35970 (= lambda!9048 lambda!9032)))

(declare-fun bs!35971 () Bool)

(assert (= bs!35971 (and b!57110 b!57078)))

(assert (=> bs!35971 (= lambda!9048 lambda!9040)))

(declare-fun bs!35972 () Bool)

(assert (= bs!35972 (and b!57110 b!57072)))

(assert (=> bs!35972 (= lambda!9048 lambda!9039)))

(declare-fun bs!35973 () Bool)

(assert (= bs!35973 (and b!57110 b!57055)))

(assert (=> bs!35973 (not (= lambda!9048 lambda!9031))))

(declare-fun tp!16134 () Bool)

(declare-fun e!30315 () Bool)

(declare-fun lt!10533 () Object!264)

(assert (=> b!57110 (= e!30315 (and tp!16134 (isStructure!0 lt!10533 lambda!9048)))))

(assert (=> b!57110 (= lt!10533 (ev!22 (v!2048 (value!4096 thiss!8013))))))

(declare-fun b!57112 () Bool)

(declare-fun e!30314 () Bool)

(declare-fun tp!16135 () Bool)

(assert (=> b!57112 (= e!30314 tp!16135)))

(declare-fun b!57111 () Bool)

(assert (=> b!57111 (= e!30315 e!30314)))

(assert (=> b!57054 (= tp!16126 e!30315)))

(assert (= (and b!57054 (is-OptionStructure!12 (v!2048 (value!4096 thiss!8013)))) b!57110))

(assert (= (and b!57111 (is-Some!301 (value!4096 (v!2048 (value!4096 thiss!8013))))) b!57112))

(assert (= (and b!57054 (is-Option!314 (v!2048 (value!4096 thiss!8013)))) b!57111))

(declare-fun m!62044 () Bool)

(assert (=> b!57110 m!62044))

(declare-fun b_lambda!15301 () Bool)

(assert (= b_lambda!15291 (or b!57055 b_lambda!15301)))

(declare-fun bs!35974 () Bool)

(declare-fun d!50096 () Bool)

(assert (= bs!35974 (and d!50096 b!57055)))

(assert (=> bs!35974 (= (dynLambda!917 lambda!9031 (Option!314 lt!10522)) (is-Integer!253 (Option!314 lt!10522)))))

(assert (=> b!57078 d!50096))

(declare-fun b_lambda!15303 () Bool)

(assert (= b_lambda!15285 (or b!57055 b_lambda!15303)))

(declare-fun bs!35975 () Bool)

(declare-fun d!50098 () Bool)

(assert (= bs!35975 (and d!50098 b!57055)))

(assert (=> bs!35975 (= (dynLambda!917 lambda!9031 (Integer!253 lt!10518)) (is-Integer!253 (Integer!253 lt!10518)))))

(assert (=> b!57069 d!50098))

(declare-fun b_lambda!15305 () Bool)

(assert (= b_lambda!15297 (or b!57055 b_lambda!15305)))

(declare-fun bs!35976 () Bool)

(declare-fun d!50100 () Bool)

(assert (= bs!35976 (and d!50100 b!57055)))

(assert (=> bs!35976 (= (dynLambda!917 lambda!9031 (Integer!253 lt!10527)) (is-Integer!253 (Integer!253 lt!10527)))))

(assert (=> b!57087 d!50100))

(declare-fun b_lambda!15307 () Bool)

(assert (= b_lambda!15287 (or b!57055 b_lambda!15307)))

(declare-fun bs!35977 () Bool)

(declare-fun d!50102 () Bool)

(assert (= bs!35977 (and d!50102 b!57055)))

(assert (=> bs!35977 (= (dynLambda!917 lambda!9031 (Option!314 lt!10519)) (is-Integer!253 (Option!314 lt!10519)))))

(assert (=> b!57072 d!50102))

(declare-fun b_lambda!15309 () Bool)

(assert (= b_lambda!15295 (or b!57055 b_lambda!15309)))

(declare-fun bs!35978 () Bool)

(declare-fun d!50104 () Bool)

(assert (= bs!35978 (and d!50104 b!57055)))

(assert (=> bs!35978 (= (dynLambda!917 lambda!9031 (Option!314 lt!10525)) (is-Integer!253 (Option!314 lt!10525)))))

(assert (=> b!57084 d!50104))

(declare-fun b_lambda!15311 () Bool)

(assert (= b_lambda!15293 (or b!57055 b_lambda!15311)))

(declare-fun bs!35979 () Bool)

(declare-fun d!50106 () Bool)

(assert (= bs!35979 (and d!50106 b!57055)))

(assert (=> bs!35979 (= (dynLambda!917 lambda!9031 (Integer!253 lt!10524)) (is-Integer!253 (Integer!253 lt!10524)))))

(assert (=> b!57081 d!50106))

(declare-fun b_lambda!15313 () Bool)

(assert (= b_lambda!15289 (or b!57055 b_lambda!15313)))

(declare-fun bs!35980 () Bool)

(declare-fun d!50108 () Bool)

(assert (= bs!35980 (and d!50108 b!57055)))

(assert (=> bs!35980 (= (dynLambda!917 lambda!9031 (Integer!253 lt!10521)) (is-Integer!253 (Integer!253 lt!10521)))))

(assert (=> b!57075 d!50108))

(declare-fun b_lambda!15315 () Bool)

(assert (= b_lambda!15299 (or b!57055 b_lambda!15315)))

(declare-fun bs!35981 () Bool)

(declare-fun d!50110 () Bool)

(assert (= bs!35981 (and d!50110 b!57055)))

(assert (=> bs!35981 (= (dynLambda!917 lambda!9031 (Option!314 lt!10528)) (is-Integer!253 (Option!314 lt!10528)))))

(assert (=> b!57090 d!50110))

(push 1)

(assert (not b!57076))

(assert (not b!57070))

(assert (not b!57091))

(assert (not b!57087))

(assert (not b!57110))

(assert (not b!57078))

(assert (not b!57097))

(assert (not d!50080))

(assert (not b!57081))

(assert (not b!57098))

(assert (not b_lambda!15307))

(assert (not b_lambda!15315))

(assert (not b_lambda!15309))

(assert (not b!57075))

(assert (not b!57082))

(assert (not b!57085))

(assert (not b!57069))

(assert (not b!57084))

(assert (not b!57109))

(assert (not b_lambda!15313))

(assert (not b!57083))

(assert (not b!57092))

(assert (not b!57107))

(assert (not b!57079))

(assert (not b!57080))

(assert (not b_lambda!15303))

(assert (not b_lambda!15305))

(assert (not b!57086))

(assert (not b!57088))

(assert (not b!57072))

(assert (not d!50090))

(assert (not b!57112))

(assert (not b!57077))

(assert (not b_lambda!15311))

(assert (not b_lambda!15301))

(assert (not b!57089))

(assert (not b!57074))

(assert (not d!50078))

(assert (not d!50088))

(assert (not b!57090))

(assert (not b!57073))

(assert (not b!57071))

(assert (not d!50086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50112 () Bool)

(declare-fun res!26434 () Bool)

(declare-fun e!30320 () Bool)

(assert (=> d!50112 (=> res!26434 e!30320)))

(declare-fun e!30321 () Bool)

(assert (=> d!50112 (= res!26434 e!30321)))

(declare-fun res!26435 () Bool)

(assert (=> d!50112 (=> (not res!26435) (not e!30321))))

(assert (=> d!50112 (= res!26435 (is-Some!301 (value!4096 lt!10511)))))

(assert (=> d!50112 (= (isOption!20 (value!4096 lt!10511) lambda!9042) e!30320)))

(declare-fun b!57117 () Bool)

(assert (=> b!57117 (= e!30321 (dynLambda!917 lambda!9042 (v!2048 (value!4096 lt!10511))))))

(declare-fun b!57118 () Bool)

(assert (=> b!57118 (= e!30320 (is-None!302 (value!4096 lt!10511)))))

(assert (= (and d!50112 res!26435) b!57117))

(assert (= (and d!50112 (not res!26434)) b!57118))

(declare-fun b_lambda!15317 () Bool)

(assert (=> (not b_lambda!15317) (not b!57117)))

(declare-fun m!62046 () Bool)

(assert (=> b!57117 m!62046))

(assert (=> b!57088 d!50112))

(declare-fun d!50114 () Bool)

(assert (=> d!50114 (= (isStructureExt!0 thiss!8013 lambda!9031) (is-StructureExt!12 thiss!8013))))

(assert (=> b!57083 d!50114))

(declare-fun tp!16138 () Bool)

(declare-fun e!30327 () Bool)

(declare-fun b!57129 () Bool)

(declare-fun lt!10539 () Object!264)

(assert (=> b!57129 (= e!30327 (and tp!16138 (dynLambda!917 lambda!9040 lt!10539)))))

(assert (=> b!57129 (= lt!10539 (v!2048 (doSomething!3 lambda!9040 thiss!8013 (value!4096 lt!10505) (value!4096 lt!10509))))))

(declare-fun d!50116 () Bool)

(assert (=> d!50116 (= true e!30327)))

(assert (= (and d!50116 (is-Some!301 (doSomething!3 lambda!9040 thiss!8013 (value!4096 lt!10505) (value!4096 lt!10509)))) b!57129))

(declare-fun b_lambda!15319 () Bool)

(assert (=> (not b_lambda!15319) (not b!57129)))

(declare-fun m!62048 () Bool)

(assert (=> b!57129 m!62048))

(declare-fun lt!10536 () Option!313)

(declare-fun doSomething!6 (Object!264 Option!313 Option!313) Option!313)

(assert (=> d!50116 (= lt!10536 (doSomething!6 thiss!8013 (value!4096 lt!10505) (value!4096 lt!10509)))))

(declare-fun e!30324 () Option!313)

(assert (=> d!50116 (= lt!10536 e!30324)))

(declare-fun c!12182 () Bool)

(assert (=> d!50116 (= c!12182 (or (and (is-None!302 (value!4096 lt!10505)) (is-None!302 (value!4096 lt!10509))) (is-None!302 (value!4096 lt!10509)) (is-None!302 (value!4096 lt!10505))))))

(assert (=> d!50116 (= (doSomething!3 lambda!9040 thiss!8013 (value!4096 lt!10505) (value!4096 lt!10509)) lt!10536)))

(declare-fun b!57123 () Bool)

(declare-fun A!2322 () Int)

(assert (=> b!57123 (= e!30324 None!302)))

(declare-fun b!57124 () Bool)

(assert (=> b!57124 (= e!30324 (Some!301 (doSomething!1 lambda!9040 (ev!22 thiss!8013) (v!2048 (value!4096 lt!10505)) (v!2048 (value!4096 lt!10509)))))))

(assert (= (and d!50116 c!12182) b!57123))

(assert (= (and d!50116 (not c!12182)) b!57124))

(declare-fun m!62050 () Bool)

(assert (=> d!50116 m!62050))

(declare-fun m!62052 () Bool)

(assert (=> b!57124 m!62052))

(assert (=> b!57078 d!50116))

(declare-fun d!50118 () Bool)

(declare-fun res!26437 () Bool)

(declare-fun e!30328 () Bool)

(assert (=> d!50118 (=> res!26437 e!30328)))

(declare-fun e!30329 () Bool)

(assert (=> d!50118 (= res!26437 e!30329)))

(declare-fun res!26438 () Bool)

(assert (=> d!50118 (=> (not res!26438) (not e!30329))))

(assert (=> d!50118 (= res!26438 (is-Some!301 (value!4096 lt!10509)))))

(assert (=> d!50118 (= (isOption!20 (value!4096 lt!10509) lambda!9039) e!30328)))

(declare-fun b!57130 () Bool)

(assert (=> b!57130 (= e!30329 (dynLambda!917 lambda!9039 (v!2048 (value!4096 lt!10509))))))

(declare-fun b!57131 () Bool)

(assert (=> b!57131 (= e!30328 (is-None!302 (value!4096 lt!10509)))))

(assert (= (and d!50118 res!26438) b!57130))

(assert (= (and d!50118 (not res!26437)) b!57131))

(declare-fun b_lambda!15321 () Bool)

(assert (=> (not b_lambda!15321) (not b!57130)))

(declare-fun m!62054 () Bool)

(assert (=> b!57130 m!62054))

(assert (=> b!57073 d!50118))

(declare-fun bs!35982 () Bool)

(declare-fun b!57138 () Bool)

(assert (= bs!35982 (and b!57138 b!57090)))

(declare-fun lambda!9051 () Int)

(assert (=> bs!35982 (= lambda!9051 lambda!9042)))

(declare-fun bs!35983 () Bool)

(assert (= bs!35983 (and b!57138 b!57084)))

(assert (=> bs!35983 (= lambda!9051 lambda!9041)))

(declare-fun bs!35984 () Bool)

(assert (= bs!35984 (and b!57138 b!57098)))

(assert (=> bs!35984 (= lambda!9051 lambda!9045)))

(declare-fun bs!35985 () Bool)

(assert (= bs!35985 (and b!57138 b!57052)))

(assert (=> bs!35985 (= lambda!9051 lambda!9032)))

(declare-fun bs!35986 () Bool)

(assert (= bs!35986 (and b!57138 b!57078)))

(assert (=> bs!35986 (= lambda!9051 lambda!9040)))

(declare-fun bs!35987 () Bool)

(assert (= bs!35987 (and b!57138 b!57072)))

(assert (=> bs!35987 (= lambda!9051 lambda!9039)))

(declare-fun bs!35988 () Bool)

(assert (= bs!35988 (and b!57138 b!57055)))

(assert (=> bs!35988 (not (= lambda!9051 lambda!9031))))

(declare-fun bs!35989 () Bool)

(assert (= bs!35989 (and b!57138 b!57110)))

(assert (=> bs!35989 (= lambda!9051 lambda!9048)))

(declare-fun d!50120 () Bool)

(declare-fun res!26441 () Object!264)

(declare-fun doSomething!5 (Object!264 Object!264 Object!264) Object!264)

(assert (=> d!50120 (= res!26441 (doSomething!5 thiss!8013 lt!10509 lt!10505))))

(declare-fun e!30334 () Bool)

(declare-fun lt!10545 () Object!264)

(assert (=> d!50120 (and e!30334 (dynLambda!917 lambda!9031 lt!10545))))

(assert (=> d!50120 (= lt!10545 res!26441)))

(assert (=> d!50120 (= (doSomething!4 lambda!9031 thiss!8013 lt!10509 lt!10505) res!26441)))

(declare-fun lt!10544 () Object!264)

(declare-fun tp!16144 () Bool)

(assert (=> b!57138 (= e!30334 (and tp!16144 (isStructure!0 lt!10544 lambda!9051)))))

(assert (=> b!57138 (= lt!10544 (ev!22 res!26441))))

(declare-fun b!57140 () Bool)

(declare-fun e!30335 () Bool)

(declare-fun tp!16143 () Bool)

(assert (=> b!57140 (= e!30335 tp!16143)))

(declare-fun b!57139 () Bool)

(assert (=> b!57139 (= e!30334 e!30335)))

(assert (= (and d!50120 (is-OptionStructure!12 res!26441)) b!57138))

(assert (= (and b!57139 (is-Some!301 (value!4096 res!26441))) b!57140))

(assert (= (and d!50120 (is-Option!314 res!26441)) b!57139))

(declare-fun b_lambda!15323 () Bool)

(assert (=> (not b_lambda!15323) (not d!50120)))

(declare-fun m!62056 () Bool)

(assert (=> d!50120 m!62056))

(declare-fun m!62058 () Bool)

(assert (=> d!50120 m!62058))

(declare-fun m!62060 () Bool)

(assert (=> b!57138 m!62060))

(assert (=> b!57074 d!50120))

(declare-fun bs!35990 () Bool)

(declare-fun b!57142 () Bool)

(assert (= bs!35990 (and b!57142 b!57090)))

(declare-fun lambda!9052 () Int)

(assert (=> bs!35990 (= lambda!9052 lambda!9042)))

(declare-fun bs!35991 () Bool)

(assert (= bs!35991 (and b!57142 b!57084)))

(assert (=> bs!35991 (= lambda!9052 lambda!9041)))

(declare-fun bs!35992 () Bool)

(assert (= bs!35992 (and b!57142 b!57098)))

(assert (=> bs!35992 (= lambda!9052 lambda!9045)))

(declare-fun bs!35993 () Bool)

(assert (= bs!35993 (and b!57142 b!57052)))

(assert (=> bs!35993 (= lambda!9052 lambda!9032)))

(declare-fun bs!35994 () Bool)

(assert (= bs!35994 (and b!57142 b!57078)))

(assert (=> bs!35994 (= lambda!9052 lambda!9040)))

(declare-fun bs!35995 () Bool)

(assert (= bs!35995 (and b!57142 b!57072)))

(assert (=> bs!35995 (= lambda!9052 lambda!9039)))

(declare-fun bs!35996 () Bool)

(assert (= bs!35996 (and b!57142 b!57055)))

(assert (=> bs!35996 (not (= lambda!9052 lambda!9031))))

(declare-fun bs!35997 () Bool)

(assert (= bs!35997 (and b!57142 b!57138)))

(assert (=> bs!35997 (= lambda!9052 lambda!9051)))

(declare-fun bs!35998 () Bool)

(assert (= bs!35998 (and b!57142 b!57110)))

(assert (=> bs!35998 (= lambda!9052 lambda!9048)))

(declare-fun d!50122 () Bool)

(declare-fun res!26442 () Bool)

(declare-fun e!30336 () Bool)

(assert (=> d!50122 (=> res!26442 e!30336)))

(assert (=> d!50122 (= res!26442 (isBigIntStructure!0 lt!10532))))

(assert (=> d!50122 (= (isStructure!0 lt!10532 lambda!9032) e!30336)))

(declare-fun b!57141 () Bool)

(declare-fun res!26443 () Bool)

(assert (=> b!57141 (=> res!26443 e!30336)))

(assert (=> b!57141 (= res!26443 (isStructureExt!0 lt!10532 lambda!9032))))

(assert (=> b!57142 (= e!30336 (isOptionStructure!0 lt!10532 lambda!9052))))

(assert (= (and d!50122 (not res!26442)) b!57141))

(assert (= (and b!57141 (not res!26443)) b!57142))

(declare-fun m!62062 () Bool)

(assert (=> d!50122 m!62062))

(declare-fun m!62064 () Bool)

(assert (=> b!57141 m!62064))

(declare-fun m!62066 () Bool)

(assert (=> b!57142 m!62066))

(assert (=> b!57107 d!50122))

(declare-fun d!50124 () Bool)

(assert (=> d!50124 (= (doSomething!2 thiss!8013 (value!4097 lt!10506) (value!4097 lt!10511)) (+ (value!4097 lt!10506) (value!4097 lt!10511)))))

(assert (=> b!57087 d!50124))

(declare-fun d!50126 () Bool)

(assert (=> d!50126 (= (isStructureExt!0 lt!10504 lambda!9032) (is-StructureExt!12 lt!10504))))

(assert (=> b!57097 d!50126))

(assert (=> b!57077 d!50114))

(declare-fun d!50128 () Bool)

(declare-fun res!26444 () Bool)

(declare-fun e!30337 () Bool)

(assert (=> d!50128 (=> res!26444 e!30337)))

(declare-fun e!30338 () Bool)

(assert (=> d!50128 (= res!26444 e!30338)))

(declare-fun res!26445 () Bool)

(assert (=> d!50128 (=> (not res!26445) (not e!30338))))

(assert (=> d!50128 (= res!26445 (is-Some!301 (value!4096 lt!10506)))))

(assert (=> d!50128 (= (isOption!20 (value!4096 lt!10506) lambda!9042) e!30337)))

(declare-fun b!57143 () Bool)

(assert (=> b!57143 (= e!30338 (dynLambda!917 lambda!9042 (v!2048 (value!4096 lt!10506))))))

(declare-fun b!57144 () Bool)

(assert (=> b!57144 (= e!30337 (is-None!302 (value!4096 lt!10506)))))

(assert (= (and d!50128 res!26445) b!57143))

(assert (= (and d!50128 (not res!26444)) b!57144))

(declare-fun b_lambda!15325 () Bool)

(assert (=> (not b_lambda!15325) (not b!57143)))

(declare-fun m!62068 () Bool)

(assert (=> b!57143 m!62068))

(assert (=> b!57091 d!50128))

(declare-fun bs!35999 () Bool)

(declare-fun b!57145 () Bool)

(assert (= bs!35999 (and b!57145 b!57090)))

(declare-fun lambda!9053 () Int)

(assert (=> bs!35999 (= lambda!9053 lambda!9042)))

(declare-fun bs!36000 () Bool)

(assert (= bs!36000 (and b!57145 b!57084)))

(assert (=> bs!36000 (= lambda!9053 lambda!9041)))

(declare-fun bs!36001 () Bool)

(assert (= bs!36001 (and b!57145 b!57098)))

(assert (=> bs!36001 (= lambda!9053 lambda!9045)))

(declare-fun bs!36002 () Bool)

(assert (= bs!36002 (and b!57145 b!57052)))

(assert (=> bs!36002 (= lambda!9053 lambda!9032)))

(declare-fun bs!36003 () Bool)

(assert (= bs!36003 (and b!57145 b!57078)))

(assert (=> bs!36003 (= lambda!9053 lambda!9040)))

(declare-fun bs!36004 () Bool)

(assert (= bs!36004 (and b!57145 b!57072)))

(assert (=> bs!36004 (= lambda!9053 lambda!9039)))

(declare-fun bs!36005 () Bool)

(assert (= bs!36005 (and b!57145 b!57055)))

(assert (=> bs!36005 (not (= lambda!9053 lambda!9031))))

(declare-fun bs!36006 () Bool)

(assert (= bs!36006 (and b!57145 b!57142)))

(assert (=> bs!36006 (= lambda!9053 lambda!9052)))

(declare-fun bs!36007 () Bool)

(assert (= bs!36007 (and b!57145 b!57138)))

(assert (=> bs!36007 (= lambda!9053 lambda!9051)))

(declare-fun bs!36008 () Bool)

(assert (= bs!36008 (and b!57145 b!57110)))

(assert (=> bs!36008 (= lambda!9053 lambda!9048)))

(declare-fun d!50130 () Bool)

(declare-fun res!26446 () Object!264)

(assert (=> d!50130 (= res!26446 (doSomething!5 thiss!8013 lt!10506 lt!10511))))

(declare-fun e!30339 () Bool)

(declare-fun lt!10547 () Object!264)

(assert (=> d!50130 (and e!30339 (dynLambda!917 lambda!9031 lt!10547))))

(assert (=> d!50130 (= lt!10547 res!26446)))

(assert (=> d!50130 (= (doSomething!4 lambda!9031 thiss!8013 lt!10506 lt!10511) res!26446)))

(declare-fun lt!10546 () Object!264)

(declare-fun tp!16146 () Bool)

(assert (=> b!57145 (= e!30339 (and tp!16146 (isStructure!0 lt!10546 lambda!9053)))))

(assert (=> b!57145 (= lt!10546 (ev!22 res!26446))))

(declare-fun b!57147 () Bool)

(declare-fun e!30340 () Bool)

(declare-fun tp!16145 () Bool)

(assert (=> b!57147 (= e!30340 tp!16145)))

(declare-fun b!57146 () Bool)

(assert (=> b!57146 (= e!30339 e!30340)))

(assert (= (and d!50130 (is-OptionStructure!12 res!26446)) b!57145))

(assert (= (and b!57146 (is-Some!301 (value!4096 res!26446))) b!57147))

(assert (= (and d!50130 (is-Option!314 res!26446)) b!57146))

(declare-fun b_lambda!15327 () Bool)

(assert (=> (not b_lambda!15327) (not d!50130)))

(declare-fun m!62070 () Bool)

(assert (=> d!50130 m!62070))

(declare-fun m!62072 () Bool)

(assert (=> d!50130 m!62072))

(declare-fun m!62074 () Bool)

(assert (=> b!57145 m!62074))

(assert (=> b!57092 d!50130))

(declare-fun d!50132 () Bool)

(declare-fun res!26447 () Bool)

(declare-fun e!30341 () Bool)

(assert (=> d!50132 (=> res!26447 e!30341)))

(declare-fun e!30342 () Bool)

(assert (=> d!50132 (= res!26447 e!30342)))

(declare-fun res!26448 () Bool)

(assert (=> d!50132 (=> (not res!26448) (not e!30342))))

(assert (=> d!50132 (= res!26448 (is-Some!301 (value!4096 lt!10509)))))

(assert (=> d!50132 (= (isOption!20 (value!4096 lt!10509) lambda!9040) e!30341)))

(declare-fun b!57148 () Bool)

(assert (=> b!57148 (= e!30342 (dynLambda!917 lambda!9040 (v!2048 (value!4096 lt!10509))))))

(declare-fun b!57149 () Bool)

(assert (=> b!57149 (= e!30341 (is-None!302 (value!4096 lt!10509)))))

(assert (= (and d!50132 res!26448) b!57148))

(assert (= (and d!50132 (not res!26447)) b!57149))

(declare-fun b_lambda!15329 () Bool)

(assert (=> (not b_lambda!15329) (not b!57148)))

(declare-fun m!62076 () Bool)

(assert (=> b!57148 m!62076))

(assert (=> b!57076 d!50132))

(declare-fun d!50134 () Bool)

(declare-fun res!26449 () Bool)

(declare-fun e!30343 () Bool)

(assert (=> d!50134 (=> res!26449 e!30343)))

(declare-fun e!30344 () Bool)

(assert (=> d!50134 (= res!26449 e!30344)))

(declare-fun res!26450 () Bool)

(assert (=> d!50134 (=> (not res!26450) (not e!30344))))

(assert (=> d!50134 (= res!26450 (is-Some!301 (value!4096 lt!10505)))))

(assert (=> d!50134 (= (isOption!20 (value!4096 lt!10505) lambda!9039) e!30343)))

(declare-fun b!57150 () Bool)

(assert (=> b!57150 (= e!30344 (dynLambda!917 lambda!9039 (v!2048 (value!4096 lt!10505))))))

(declare-fun b!57151 () Bool)

(assert (=> b!57151 (= e!30343 (is-None!302 (value!4096 lt!10505)))))

(assert (= (and d!50134 res!26450) b!57150))

(assert (= (and d!50134 (not res!26449)) b!57151))

(declare-fun b_lambda!15331 () Bool)

(assert (=> (not b_lambda!15331) (not b!57150)))

(declare-fun m!62078 () Bool)

(assert (=> b!57150 m!62078))

(assert (=> b!57070 d!50134))

(assert (=> b!57071 d!50114))

(declare-fun d!50136 () Bool)

(declare-fun res!26451 () Bool)

(declare-fun e!30345 () Bool)

(assert (=> d!50136 (=> res!26451 e!30345)))

(declare-fun e!30346 () Bool)

(assert (=> d!50136 (= res!26451 e!30346)))

(declare-fun res!26452 () Bool)

(assert (=> d!50136 (=> (not res!26452) (not e!30346))))

(assert (=> d!50136 (= res!26452 (is-Some!301 (value!4096 lt!10505)))))

(assert (=> d!50136 (= (isOption!20 (value!4096 lt!10505) lambda!9040) e!30345)))

(declare-fun b!57152 () Bool)

(assert (=> b!57152 (= e!30346 (dynLambda!917 lambda!9040 (v!2048 (value!4096 lt!10505))))))

(declare-fun b!57153 () Bool)

(assert (=> b!57153 (= e!30345 (is-None!302 (value!4096 lt!10505)))))

(assert (= (and d!50136 res!26452) b!57152))

(assert (= (and d!50136 (not res!26451)) b!57153))

(declare-fun b_lambda!15333 () Bool)

(assert (=> (not b_lambda!15333) (not b!57152)))

(declare-fun m!62080 () Bool)

(assert (=> b!57152 m!62080))

(assert (=> b!57079 d!50136))

(declare-fun d!50138 () Bool)

(assert (=> d!50138 (= (doSomething!2 thiss!8013 (value!4097 lt!10509) (value!4097 lt!10505)) (+ (value!4097 lt!10509) (value!4097 lt!10505)))))

(assert (=> b!57069 d!50138))

(assert (=> b!57089 d!50114))

(declare-fun bs!36009 () Bool)

(declare-fun b!57154 () Bool)

(assert (= bs!36009 (and b!57154 b!57090)))

(declare-fun lambda!9054 () Int)

(assert (=> bs!36009 (= lambda!9054 lambda!9042)))

(declare-fun bs!36010 () Bool)

(assert (= bs!36010 (and b!57154 b!57084)))

(assert (=> bs!36010 (= lambda!9054 lambda!9041)))

(declare-fun bs!36011 () Bool)

(assert (= bs!36011 (and b!57154 b!57098)))

(assert (=> bs!36011 (= lambda!9054 lambda!9045)))

(declare-fun bs!36012 () Bool)

(assert (= bs!36012 (and b!57154 b!57052)))

(assert (=> bs!36012 (= lambda!9054 lambda!9032)))

(declare-fun bs!36013 () Bool)

(assert (= bs!36013 (and b!57154 b!57078)))

(assert (=> bs!36013 (= lambda!9054 lambda!9040)))

(declare-fun bs!36014 () Bool)

(assert (= bs!36014 (and b!57154 b!57072)))

(assert (=> bs!36014 (= lambda!9054 lambda!9039)))

(declare-fun bs!36015 () Bool)

(assert (= bs!36015 (and b!57154 b!57055)))

(assert (=> bs!36015 (not (= lambda!9054 lambda!9031))))

(declare-fun bs!36016 () Bool)

(assert (= bs!36016 (and b!57154 b!57142)))

(assert (=> bs!36016 (= lambda!9054 lambda!9052)))

(declare-fun bs!36017 () Bool)

(assert (= bs!36017 (and b!57154 b!57138)))

(assert (=> bs!36017 (= lambda!9054 lambda!9051)))

(declare-fun bs!36018 () Bool)

(assert (= bs!36018 (and b!57154 b!57145)))

(assert (=> bs!36018 (= lambda!9054 lambda!9053)))

(declare-fun bs!36019 () Bool)

(assert (= bs!36019 (and b!57154 b!57110)))

(assert (=> bs!36019 (= lambda!9054 lambda!9048)))

(declare-fun d!50140 () Bool)

(declare-fun res!26453 () Object!264)

(assert (=> d!50140 (= res!26453 (doSomething!5 thiss!8013 lt!10511 lt!10506))))

(declare-fun e!30347 () Bool)

(declare-fun lt!10549 () Object!264)

(assert (=> d!50140 (and e!30347 (dynLambda!917 lambda!9031 lt!10549))))

(assert (=> d!50140 (= lt!10549 res!26453)))

(assert (=> d!50140 (= (doSomething!4 lambda!9031 thiss!8013 lt!10511 lt!10506) res!26453)))

(declare-fun lt!10548 () Object!264)

(declare-fun tp!16148 () Bool)

(assert (=> b!57154 (= e!30347 (and tp!16148 (isStructure!0 lt!10548 lambda!9054)))))

(assert (=> b!57154 (= lt!10548 (ev!22 res!26453))))

(declare-fun b!57156 () Bool)

(declare-fun e!30348 () Bool)

(declare-fun tp!16147 () Bool)

(assert (=> b!57156 (= e!30348 tp!16147)))

(declare-fun b!57155 () Bool)

(assert (=> b!57155 (= e!30347 e!30348)))

(assert (= (and d!50140 (is-OptionStructure!12 res!26453)) b!57154))

(assert (= (and b!57155 (is-Some!301 (value!4096 res!26453))) b!57156))

(assert (= (and d!50140 (is-Option!314 res!26453)) b!57155))

(declare-fun b_lambda!15335 () Bool)

(assert (=> (not b_lambda!15335) (not d!50140)))

(declare-fun m!62082 () Bool)

(assert (=> d!50140 m!62082))

(declare-fun m!62084 () Bool)

(assert (=> d!50140 m!62084))

(declare-fun m!62086 () Bool)

(assert (=> b!57154 m!62086))

(assert (=> b!57086 d!50140))

(declare-fun d!50142 () Bool)

(assert (=> d!50142 (= (doSomething!2 thiss!8013 (value!4097 lt!10505) (value!4097 lt!10509)) (+ (value!4097 lt!10505) (value!4097 lt!10509)))))

(assert (=> b!57075 d!50142))

(declare-fun bs!36020 () Bool)

(declare-fun b!57163 () Bool)

(assert (= bs!36020 (and b!57163 b!57090)))

(declare-fun lambda!9057 () Int)

(assert (=> bs!36020 (= lambda!9057 lambda!9042)))

(declare-fun bs!36021 () Bool)

(assert (= bs!36021 (and b!57163 b!57084)))

(assert (=> bs!36021 (= lambda!9057 lambda!9041)))

(declare-fun bs!36022 () Bool)

(assert (= bs!36022 (and b!57163 b!57154)))

(assert (=> bs!36022 (= lambda!9057 lambda!9054)))

(declare-fun bs!36023 () Bool)

(assert (= bs!36023 (and b!57163 b!57098)))

(assert (=> bs!36023 (= lambda!9057 lambda!9045)))

(declare-fun bs!36024 () Bool)

(assert (= bs!36024 (and b!57163 b!57052)))

(assert (=> bs!36024 (= lambda!9057 lambda!9032)))

(declare-fun bs!36025 () Bool)

(assert (= bs!36025 (and b!57163 b!57078)))

(assert (=> bs!36025 (= lambda!9057 lambda!9040)))

(declare-fun bs!36026 () Bool)

(assert (= bs!36026 (and b!57163 b!57072)))

(assert (=> bs!36026 (= lambda!9057 lambda!9039)))

(declare-fun bs!36027 () Bool)

(assert (= bs!36027 (and b!57163 b!57055)))

(assert (=> bs!36027 (not (= lambda!9057 lambda!9031))))

(declare-fun bs!36028 () Bool)

(assert (= bs!36028 (and b!57163 b!57142)))

(assert (=> bs!36028 (= lambda!9057 lambda!9052)))

(declare-fun bs!36029 () Bool)

(assert (= bs!36029 (and b!57163 b!57138)))

(assert (=> bs!36029 (= lambda!9057 lambda!9051)))

(declare-fun bs!36030 () Bool)

(assert (= bs!36030 (and b!57163 b!57145)))

(assert (=> bs!36030 (= lambda!9057 lambda!9053)))

(declare-fun bs!36031 () Bool)

(assert (= bs!36031 (and b!57163 b!57110)))

(assert (=> bs!36031 (= lambda!9057 lambda!9048)))

(declare-fun d!50144 () Bool)

(assert (=> d!50144 true))

(declare-fun e!30354 () Bool)

(assert (=> d!50144 e!30354))

(declare-fun res!26456 () Object!264)

(assert (=> d!50144 (= (doSomething!7 thiss!8013 lt!10511 lt!10506) res!26456)))

(declare-fun tp!16153 () Bool)

(declare-fun lt!10552 () Object!264)

(assert (=> b!57163 (= e!30354 (and tp!16153 (isStructure!0 lt!10552 lambda!9057)))))

(assert (=> b!57163 (= lt!10552 (ev!22 res!26456))))

(declare-fun b!57165 () Bool)

(declare-fun e!30353 () Bool)

(declare-fun tp!16154 () Bool)

(assert (=> b!57165 (= e!30353 tp!16154)))

(declare-fun b!57164 () Bool)

(assert (=> b!57164 (= e!30354 e!30353)))

(assert (= (and d!50144 (is-OptionStructure!12 res!26456)) b!57163))

(assert (= (and b!57164 (is-Some!301 (value!4096 res!26456))) b!57165))

(assert (= (and d!50144 (is-Option!314 res!26456)) b!57164))

(declare-fun m!62088 () Bool)

(assert (=> b!57163 m!62088))

(assert (=> d!50086 d!50144))

(assert (=> d!50086 d!50092))

(declare-fun d!50146 () Bool)

(declare-fun res!26459 () Bool)

(declare-fun e!30357 () Bool)

(assert (=> d!50146 (=> (not res!26459) (not e!30357))))

(assert (=> d!50146 (= res!26459 (is-OptionStructure!12 lt!10504))))

(assert (=> d!50146 (= (isOptionStructure!0 lt!10504 lambda!9045) e!30357)))

(declare-fun b!57168 () Bool)

(assert (=> b!57168 (= e!30357 (isStructure!0 (ev!22 lt!10504) lambda!9045))))

(assert (= (and d!50146 res!26459) b!57168))

(declare-fun m!62090 () Bool)

(assert (=> b!57168 m!62090))

(assert (=> b!57098 d!50146))

(declare-fun bs!36032 () Bool)

(declare-fun b!57169 () Bool)

(assert (= bs!36032 (and b!57169 b!57163)))

(declare-fun lambda!9058 () Int)

(assert (=> bs!36032 (= lambda!9058 lambda!9057)))

(declare-fun bs!36033 () Bool)

(assert (= bs!36033 (and b!57169 b!57090)))

(assert (=> bs!36033 (= lambda!9058 lambda!9042)))

(declare-fun bs!36034 () Bool)

(assert (= bs!36034 (and b!57169 b!57084)))

(assert (=> bs!36034 (= lambda!9058 lambda!9041)))

(declare-fun bs!36035 () Bool)

(assert (= bs!36035 (and b!57169 b!57154)))

(assert (=> bs!36035 (= lambda!9058 lambda!9054)))

(declare-fun bs!36036 () Bool)

(assert (= bs!36036 (and b!57169 b!57098)))

(assert (=> bs!36036 (= lambda!9058 lambda!9045)))

(declare-fun bs!36037 () Bool)

(assert (= bs!36037 (and b!57169 b!57052)))

(assert (=> bs!36037 (= lambda!9058 lambda!9032)))

(declare-fun bs!36038 () Bool)

(assert (= bs!36038 (and b!57169 b!57078)))

(assert (=> bs!36038 (= lambda!9058 lambda!9040)))

(declare-fun bs!36039 () Bool)

(assert (= bs!36039 (and b!57169 b!57072)))

(assert (=> bs!36039 (= lambda!9058 lambda!9039)))

(declare-fun bs!36040 () Bool)

(assert (= bs!36040 (and b!57169 b!57055)))

(assert (=> bs!36040 (not (= lambda!9058 lambda!9031))))

(declare-fun bs!36041 () Bool)

(assert (= bs!36041 (and b!57169 b!57142)))

(assert (=> bs!36041 (= lambda!9058 lambda!9052)))

(declare-fun bs!36042 () Bool)

(assert (= bs!36042 (and b!57169 b!57138)))

(assert (=> bs!36042 (= lambda!9058 lambda!9051)))

(declare-fun bs!36043 () Bool)

(assert (= bs!36043 (and b!57169 b!57145)))

(assert (=> bs!36043 (= lambda!9058 lambda!9053)))

(declare-fun bs!36044 () Bool)

(assert (= bs!36044 (and b!57169 b!57110)))

(assert (=> bs!36044 (= lambda!9058 lambda!9048)))

(declare-fun d!50148 () Bool)

(assert (=> d!50148 true))

(declare-fun e!30359 () Bool)

(assert (=> d!50148 e!30359))

(declare-fun res!26460 () Object!264)

(assert (=> d!50148 (= (doSomething!7 thiss!8013 lt!10506 lt!10511) res!26460)))

(declare-fun lt!10553 () Object!264)

(declare-fun tp!16155 () Bool)

(assert (=> b!57169 (= e!30359 (and tp!16155 (isStructure!0 lt!10553 lambda!9058)))))

(assert (=> b!57169 (= lt!10553 (ev!22 res!26460))))

(declare-fun b!57171 () Bool)

(declare-fun e!30358 () Bool)

(declare-fun tp!16156 () Bool)

(assert (=> b!57171 (= e!30358 tp!16156)))

(declare-fun b!57170 () Bool)

(assert (=> b!57170 (= e!30359 e!30358)))

(assert (= (and d!50148 (is-OptionStructure!12 res!26460)) b!57169))

(assert (= (and b!57170 (is-Some!301 (value!4096 res!26460))) b!57171))

(assert (= (and d!50148 (is-Option!314 res!26460)) b!57170))

(declare-fun m!62092 () Bool)

(assert (=> b!57169 m!62092))

(assert (=> d!50088 d!50148))

(assert (=> d!50088 d!50092))

(declare-fun d!50150 () Bool)

(declare-fun res!26461 () Bool)

(declare-fun e!30360 () Bool)

(assert (=> d!50150 (=> res!26461 e!30360)))

(declare-fun e!30361 () Bool)

(assert (=> d!50150 (= res!26461 e!30361)))

(declare-fun res!26462 () Bool)

(assert (=> d!50150 (=> (not res!26462) (not e!30361))))

(assert (=> d!50150 (= res!26462 (is-Some!301 (value!4096 lt!10506)))))

(assert (=> d!50150 (= (isOption!20 (value!4096 lt!10506) lambda!9041) e!30360)))

(declare-fun b!57172 () Bool)

(assert (=> b!57172 (= e!30361 (dynLambda!917 lambda!9041 (v!2048 (value!4096 lt!10506))))))

(declare-fun b!57173 () Bool)

(assert (=> b!57173 (= e!30360 (is-None!302 (value!4096 lt!10506)))))

(assert (= (and d!50150 res!26462) b!57172))

(assert (= (and d!50150 (not res!26461)) b!57173))

(declare-fun b_lambda!15337 () Bool)

(assert (=> (not b_lambda!15337) (not b!57172)))

(declare-fun m!62094 () Bool)

(assert (=> b!57172 m!62094))

(assert (=> b!57082 d!50150))

(declare-fun bs!36045 () Bool)

(declare-fun b!57174 () Bool)

(assert (= bs!36045 (and b!57174 b!57163)))

(declare-fun lambda!9059 () Int)

(assert (=> bs!36045 (= lambda!9059 lambda!9057)))

(declare-fun bs!36046 () Bool)

(assert (= bs!36046 (and b!57174 b!57090)))

(assert (=> bs!36046 (= lambda!9059 lambda!9042)))

(declare-fun bs!36047 () Bool)

(assert (= bs!36047 (and b!57174 b!57084)))

(assert (=> bs!36047 (= lambda!9059 lambda!9041)))

(declare-fun bs!36048 () Bool)

(assert (= bs!36048 (and b!57174 b!57154)))

(assert (=> bs!36048 (= lambda!9059 lambda!9054)))

(declare-fun bs!36049 () Bool)

(assert (= bs!36049 (and b!57174 b!57098)))

(assert (=> bs!36049 (= lambda!9059 lambda!9045)))

(declare-fun bs!36050 () Bool)

(assert (= bs!36050 (and b!57174 b!57052)))

(assert (=> bs!36050 (= lambda!9059 lambda!9032)))

(declare-fun bs!36051 () Bool)

(assert (= bs!36051 (and b!57174 b!57078)))

(assert (=> bs!36051 (= lambda!9059 lambda!9040)))

(declare-fun bs!36052 () Bool)

(assert (= bs!36052 (and b!57174 b!57072)))

(assert (=> bs!36052 (= lambda!9059 lambda!9039)))

(declare-fun bs!36053 () Bool)

(assert (= bs!36053 (and b!57174 b!57055)))

(assert (=> bs!36053 (not (= lambda!9059 lambda!9031))))

(declare-fun bs!36054 () Bool)

(assert (= bs!36054 (and b!57174 b!57142)))

(assert (=> bs!36054 (= lambda!9059 lambda!9052)))

(declare-fun bs!36055 () Bool)

(assert (= bs!36055 (and b!57174 b!57138)))

(assert (=> bs!36055 (= lambda!9059 lambda!9051)))

(declare-fun bs!36056 () Bool)

(assert (= bs!36056 (and b!57174 b!57145)))

(assert (=> bs!36056 (= lambda!9059 lambda!9053)))

(declare-fun bs!36057 () Bool)

(assert (= bs!36057 (and b!57174 b!57169)))

(assert (=> bs!36057 (= lambda!9059 lambda!9058)))

(declare-fun bs!36058 () Bool)

(assert (= bs!36058 (and b!57174 b!57110)))

(assert (=> bs!36058 (= lambda!9059 lambda!9048)))

(declare-fun d!50152 () Bool)

(assert (=> d!50152 true))

(declare-fun e!30363 () Bool)

(assert (=> d!50152 e!30363))

(declare-fun res!26463 () Object!264)

(assert (=> d!50152 (= (doSomething!7 thiss!8013 lt!10505 lt!10509) res!26463)))

(declare-fun lt!10554 () Object!264)

(declare-fun tp!16157 () Bool)

(assert (=> b!57174 (= e!30363 (and tp!16157 (isStructure!0 lt!10554 lambda!9059)))))

(assert (=> b!57174 (= lt!10554 (ev!22 res!26463))))

(declare-fun b!57176 () Bool)

(declare-fun e!30362 () Bool)

(declare-fun tp!16158 () Bool)

(assert (=> b!57176 (= e!30362 tp!16158)))

(declare-fun b!57175 () Bool)

(assert (=> b!57175 (= e!30363 e!30362)))

(assert (= (and d!50152 (is-OptionStructure!12 res!26463)) b!57174))

(assert (= (and b!57175 (is-Some!301 (value!4096 res!26463))) b!57176))

(assert (= (and d!50152 (is-Option!314 res!26463)) b!57175))

(declare-fun m!62096 () Bool)

(assert (=> b!57174 m!62096))

(assert (=> d!50080 d!50152))

(assert (=> d!50080 d!50092))

(declare-fun lt!10556 () Object!264)

(declare-fun b!57179 () Bool)

(declare-fun e!30365 () Bool)

(declare-fun tp!16159 () Bool)

(assert (=> b!57179 (= e!30365 (and tp!16159 (dynLambda!917 lambda!9039 lt!10556)))))

(assert (=> b!57179 (= lt!10556 (v!2048 (doSomething!3 lambda!9039 thiss!8013 (value!4096 lt!10509) (value!4096 lt!10505))))))

(declare-fun d!50154 () Bool)

(assert (=> d!50154 (= true e!30365)))

(assert (= (and d!50154 (is-Some!301 (doSomething!3 lambda!9039 thiss!8013 (value!4096 lt!10509) (value!4096 lt!10505)))) b!57179))

(declare-fun b_lambda!15339 () Bool)

(assert (=> (not b_lambda!15339) (not b!57179)))

(declare-fun m!62098 () Bool)

(assert (=> b!57179 m!62098))

(declare-fun lt!10555 () Option!313)

(assert (=> d!50154 (= lt!10555 (doSomething!6 thiss!8013 (value!4096 lt!10509) (value!4096 lt!10505)))))

(declare-fun e!30364 () Option!313)

(assert (=> d!50154 (= lt!10555 e!30364)))

(declare-fun c!12183 () Bool)

(assert (=> d!50154 (= c!12183 (or (and (is-None!302 (value!4096 lt!10509)) (is-None!302 (value!4096 lt!10505))) (is-None!302 (value!4096 lt!10505)) (is-None!302 (value!4096 lt!10509))))))

(assert (=> d!50154 (= (doSomething!3 lambda!9039 thiss!8013 (value!4096 lt!10509) (value!4096 lt!10505)) lt!10555)))

(declare-fun b!57177 () Bool)

(assert (=> b!57177 (= e!30364 None!302)))

(declare-fun b!57178 () Bool)

(assert (=> b!57178 (= e!30364 (Some!301 (doSomething!1 lambda!9039 (ev!22 thiss!8013) (v!2048 (value!4096 lt!10509)) (v!2048 (value!4096 lt!10505)))))))

(assert (= (and d!50154 c!12183) b!57177))

(assert (= (and d!50154 (not c!12183)) b!57178))

(declare-fun m!62100 () Bool)

(assert (=> d!50154 m!62100))

(declare-fun m!62102 () Bool)

(assert (=> b!57178 m!62102))

(assert (=> b!57072 d!50154))

(declare-fun bs!36059 () Bool)

(declare-fun b!57180 () Bool)

(assert (= bs!36059 (and b!57180 b!57163)))

(declare-fun lambda!9060 () Int)

(assert (=> bs!36059 (= lambda!9060 lambda!9057)))

(declare-fun bs!36060 () Bool)

(assert (= bs!36060 (and b!57180 b!57174)))

(assert (=> bs!36060 (= lambda!9060 lambda!9059)))

(declare-fun bs!36061 () Bool)

(assert (= bs!36061 (and b!57180 b!57090)))

(assert (=> bs!36061 (= lambda!9060 lambda!9042)))

(declare-fun bs!36062 () Bool)

(assert (= bs!36062 (and b!57180 b!57084)))

(assert (=> bs!36062 (= lambda!9060 lambda!9041)))

(declare-fun bs!36063 () Bool)

(assert (= bs!36063 (and b!57180 b!57154)))

(assert (=> bs!36063 (= lambda!9060 lambda!9054)))

(declare-fun bs!36064 () Bool)

(assert (= bs!36064 (and b!57180 b!57098)))

(assert (=> bs!36064 (= lambda!9060 lambda!9045)))

(declare-fun bs!36065 () Bool)

(assert (= bs!36065 (and b!57180 b!57052)))

(assert (=> bs!36065 (= lambda!9060 lambda!9032)))

(declare-fun bs!36066 () Bool)

(assert (= bs!36066 (and b!57180 b!57078)))

(assert (=> bs!36066 (= lambda!9060 lambda!9040)))

(declare-fun bs!36067 () Bool)

(assert (= bs!36067 (and b!57180 b!57072)))

(assert (=> bs!36067 (= lambda!9060 lambda!9039)))

(declare-fun bs!36068 () Bool)

(assert (= bs!36068 (and b!57180 b!57055)))

(assert (=> bs!36068 (not (= lambda!9060 lambda!9031))))

(declare-fun bs!36069 () Bool)

(assert (= bs!36069 (and b!57180 b!57142)))

(assert (=> bs!36069 (= lambda!9060 lambda!9052)))

(declare-fun bs!36070 () Bool)

(assert (= bs!36070 (and b!57180 b!57138)))

(assert (=> bs!36070 (= lambda!9060 lambda!9051)))

(declare-fun bs!36071 () Bool)

(assert (= bs!36071 (and b!57180 b!57145)))

(assert (=> bs!36071 (= lambda!9060 lambda!9053)))

(declare-fun bs!36072 () Bool)

(assert (= bs!36072 (and b!57180 b!57169)))

(assert (=> bs!36072 (= lambda!9060 lambda!9058)))

(declare-fun bs!36073 () Bool)

(assert (= bs!36073 (and b!57180 b!57110)))

(assert (=> bs!36073 (= lambda!9060 lambda!9048)))

(declare-fun d!50156 () Bool)

(assert (=> d!50156 true))

(declare-fun e!30367 () Bool)

(assert (=> d!50156 e!30367))

(declare-fun res!26464 () Object!264)

(assert (=> d!50156 (= (doSomething!7 thiss!8013 lt!10509 lt!10505) res!26464)))

(declare-fun tp!16160 () Bool)

(declare-fun lt!10557 () Object!264)

(assert (=> b!57180 (= e!30367 (and tp!16160 (isStructure!0 lt!10557 lambda!9060)))))

(assert (=> b!57180 (= lt!10557 (ev!22 res!26464))))

(declare-fun b!57182 () Bool)

(declare-fun e!30366 () Bool)

(declare-fun tp!16161 () Bool)

(assert (=> b!57182 (= e!30366 tp!16161)))

(declare-fun b!57181 () Bool)

(assert (=> b!57181 (= e!30367 e!30366)))

(assert (= (and d!50156 (is-OptionStructure!12 res!26464)) b!57180))

(assert (= (and b!57181 (is-Some!301 (value!4096 res!26464))) b!57182))

(assert (= (and d!50156 (is-Option!314 res!26464)) b!57181))

(declare-fun m!62104 () Bool)

(assert (=> b!57180 m!62104))

(assert (=> d!50078 d!50156))

(assert (=> d!50078 d!50092))

(declare-fun d!50158 () Bool)

(assert (=> d!50158 (= (doSomething!2 thiss!8013 (value!4097 lt!10511) (value!4097 lt!10506)) (+ (value!4097 lt!10511) (value!4097 lt!10506)))))

(assert (=> b!57081 d!50158))

(declare-fun bs!36074 () Bool)

(declare-fun b!57183 () Bool)

(assert (= bs!36074 (and b!57183 b!57163)))

(declare-fun lambda!9061 () Int)

(assert (=> bs!36074 (= lambda!9061 lambda!9057)))

(declare-fun bs!36075 () Bool)

(assert (= bs!36075 (and b!57183 b!57174)))

(assert (=> bs!36075 (= lambda!9061 lambda!9059)))

(declare-fun bs!36076 () Bool)

(assert (= bs!36076 (and b!57183 b!57090)))

(assert (=> bs!36076 (= lambda!9061 lambda!9042)))

(declare-fun bs!36077 () Bool)

(assert (= bs!36077 (and b!57183 b!57084)))

(assert (=> bs!36077 (= lambda!9061 lambda!9041)))

(declare-fun bs!36078 () Bool)

(assert (= bs!36078 (and b!57183 b!57154)))

(assert (=> bs!36078 (= lambda!9061 lambda!9054)))

(declare-fun bs!36079 () Bool)

(assert (= bs!36079 (and b!57183 b!57098)))

(assert (=> bs!36079 (= lambda!9061 lambda!9045)))

(declare-fun bs!36080 () Bool)

(assert (= bs!36080 (and b!57183 b!57052)))

(assert (=> bs!36080 (= lambda!9061 lambda!9032)))

(declare-fun bs!36081 () Bool)

(assert (= bs!36081 (and b!57183 b!57078)))

(assert (=> bs!36081 (= lambda!9061 lambda!9040)))

(declare-fun bs!36082 () Bool)

(assert (= bs!36082 (and b!57183 b!57072)))

(assert (=> bs!36082 (= lambda!9061 lambda!9039)))

(declare-fun bs!36083 () Bool)

(assert (= bs!36083 (and b!57183 b!57055)))

(assert (=> bs!36083 (not (= lambda!9061 lambda!9031))))

(declare-fun bs!36084 () Bool)

(assert (= bs!36084 (and b!57183 b!57180)))

(assert (=> bs!36084 (= lambda!9061 lambda!9060)))

(declare-fun bs!36085 () Bool)

(assert (= bs!36085 (and b!57183 b!57142)))

(assert (=> bs!36085 (= lambda!9061 lambda!9052)))

(declare-fun bs!36086 () Bool)

(assert (= bs!36086 (and b!57183 b!57138)))

(assert (=> bs!36086 (= lambda!9061 lambda!9051)))

(declare-fun bs!36087 () Bool)

(assert (= bs!36087 (and b!57183 b!57145)))

(assert (=> bs!36087 (= lambda!9061 lambda!9053)))

(declare-fun bs!36088 () Bool)

(assert (= bs!36088 (and b!57183 b!57169)))

(assert (=> bs!36088 (= lambda!9061 lambda!9058)))

(declare-fun bs!36089 () Bool)

(assert (= bs!36089 (and b!57183 b!57110)))

(assert (=> bs!36089 (= lambda!9061 lambda!9048)))

(declare-fun res!26465 () Object!264)

(declare-fun d!50160 () Bool)

(assert (=> d!50160 (= res!26465 (doSomething!5 thiss!8013 lt!10505 lt!10509))))

(declare-fun e!30368 () Bool)

(declare-fun lt!10559 () Object!264)

(assert (=> d!50160 (and e!30368 (dynLambda!917 lambda!9031 lt!10559))))

(assert (=> d!50160 (= lt!10559 res!26465)))

(assert (=> d!50160 (= (doSomething!4 lambda!9031 thiss!8013 lt!10505 lt!10509) res!26465)))

(declare-fun lt!10558 () Object!264)

(declare-fun tp!16163 () Bool)

(assert (=> b!57183 (= e!30368 (and tp!16163 (isStructure!0 lt!10558 lambda!9061)))))

(assert (=> b!57183 (= lt!10558 (ev!22 res!26465))))

(declare-fun b!57185 () Bool)

(declare-fun e!30369 () Bool)

(declare-fun tp!16162 () Bool)

(assert (=> b!57185 (= e!30369 tp!16162)))

(declare-fun b!57184 () Bool)

(assert (=> b!57184 (= e!30368 e!30369)))

(assert (= (and d!50160 (is-OptionStructure!12 res!26465)) b!57183))

(assert (= (and b!57184 (is-Some!301 (value!4096 res!26465))) b!57185))

(assert (= (and d!50160 (is-Option!314 res!26465)) b!57184))

(declare-fun b_lambda!15341 () Bool)

(assert (=> (not b_lambda!15341) (not d!50160)))

(declare-fun m!62106 () Bool)

(assert (=> d!50160 m!62106))

(declare-fun m!62108 () Bool)

(assert (=> d!50160 m!62108))

(declare-fun m!62110 () Bool)

(assert (=> b!57183 m!62110))

(assert (=> b!57080 d!50160))

(declare-fun b!57188 () Bool)

(declare-fun e!30371 () Bool)

(declare-fun tp!16164 () Bool)

(declare-fun lt!10561 () Object!264)

(assert (=> b!57188 (= e!30371 (and tp!16164 (dynLambda!917 lambda!9042 lt!10561)))))

(assert (=> b!57188 (= lt!10561 (v!2048 (doSomething!3 lambda!9042 thiss!8013 (value!4096 lt!10506) (value!4096 lt!10511))))))

(declare-fun d!50162 () Bool)

(assert (=> d!50162 (= true e!30371)))

(assert (= (and d!50162 (is-Some!301 (doSomething!3 lambda!9042 thiss!8013 (value!4096 lt!10506) (value!4096 lt!10511)))) b!57188))

(declare-fun b_lambda!15343 () Bool)

(assert (=> (not b_lambda!15343) (not b!57188)))

(declare-fun m!62112 () Bool)

(assert (=> b!57188 m!62112))

(declare-fun lt!10560 () Option!313)

(assert (=> d!50162 (= lt!10560 (doSomething!6 thiss!8013 (value!4096 lt!10506) (value!4096 lt!10511)))))

(declare-fun e!30370 () Option!313)

(assert (=> d!50162 (= lt!10560 e!30370)))

(declare-fun c!12184 () Bool)

(assert (=> d!50162 (= c!12184 (or (and (is-None!302 (value!4096 lt!10506)) (is-None!302 (value!4096 lt!10511))) (is-None!302 (value!4096 lt!10511)) (is-None!302 (value!4096 lt!10506))))))

(assert (=> d!50162 (= (doSomething!3 lambda!9042 thiss!8013 (value!4096 lt!10506) (value!4096 lt!10511)) lt!10560)))

(declare-fun b!57186 () Bool)

(assert (=> b!57186 (= e!30370 None!302)))

(declare-fun b!57187 () Bool)

(assert (=> b!57187 (= e!30370 (Some!301 (doSomething!1 lambda!9042 (ev!22 thiss!8013) (v!2048 (value!4096 lt!10506)) (v!2048 (value!4096 lt!10511)))))))

(assert (= (and d!50162 c!12184) b!57186))

(assert (= (and d!50162 (not c!12184)) b!57187))

(declare-fun m!62114 () Bool)

(assert (=> d!50162 m!62114))

(declare-fun m!62116 () Bool)

(assert (=> b!57187 m!62116))

(assert (=> b!57090 d!50162))

(declare-fun d!50164 () Bool)

(assert (=> d!50164 (= (isBigIntStructure!0 lt!10504) (is-BigIntStructure!12 lt!10504))))

(assert (=> d!50090 d!50164))

(declare-fun d!50166 () Bool)

(declare-fun res!26466 () Bool)

(declare-fun e!30372 () Bool)

(assert (=> d!50166 (=> res!26466 e!30372)))

(declare-fun e!30373 () Bool)

(assert (=> d!50166 (= res!26466 e!30373)))

(declare-fun res!26467 () Bool)

(assert (=> d!50166 (=> (not res!26467) (not e!30373))))

(assert (=> d!50166 (= res!26467 (is-Some!301 (value!4096 lt!10511)))))

(assert (=> d!50166 (= (isOption!20 (value!4096 lt!10511) lambda!9041) e!30372)))

(declare-fun b!57189 () Bool)

(assert (=> b!57189 (= e!30373 (dynLambda!917 lambda!9041 (v!2048 (value!4096 lt!10511))))))

(declare-fun b!57190 () Bool)

(assert (=> b!57190 (= e!30372 (is-None!302 (value!4096 lt!10511)))))

(assert (= (and d!50166 res!26467) b!57189))

(assert (= (and d!50166 (not res!26466)) b!57190))

(declare-fun b_lambda!15345 () Bool)

(assert (=> (not b_lambda!15345) (not b!57189)))

(declare-fun m!62118 () Bool)

(assert (=> b!57189 m!62118))

(assert (=> b!57085 d!50166))

(declare-fun bs!36090 () Bool)

(declare-fun b!57192 () Bool)

(assert (= bs!36090 (and b!57192 b!57163)))

(declare-fun lambda!9062 () Int)

(assert (=> bs!36090 (= lambda!9062 lambda!9057)))

(declare-fun bs!36091 () Bool)

(assert (= bs!36091 (and b!57192 b!57174)))

(assert (=> bs!36091 (= lambda!9062 lambda!9059)))

(declare-fun bs!36092 () Bool)

(assert (= bs!36092 (and b!57192 b!57090)))

(assert (=> bs!36092 (= lambda!9062 lambda!9042)))

(declare-fun bs!36093 () Bool)

(assert (= bs!36093 (and b!57192 b!57084)))

(assert (=> bs!36093 (= lambda!9062 lambda!9041)))

(declare-fun bs!36094 () Bool)

(assert (= bs!36094 (and b!57192 b!57154)))

(assert (=> bs!36094 (= lambda!9062 lambda!9054)))

(declare-fun bs!36095 () Bool)

(assert (= bs!36095 (and b!57192 b!57098)))

(assert (=> bs!36095 (= lambda!9062 lambda!9045)))

(declare-fun bs!36096 () Bool)

(assert (= bs!36096 (and b!57192 b!57052)))

(assert (=> bs!36096 (= lambda!9062 lambda!9032)))

(declare-fun bs!36097 () Bool)

(assert (= bs!36097 (and b!57192 b!57183)))

(assert (=> bs!36097 (= lambda!9062 lambda!9061)))

(declare-fun bs!36098 () Bool)

(assert (= bs!36098 (and b!57192 b!57078)))

(assert (=> bs!36098 (= lambda!9062 lambda!9040)))

(declare-fun bs!36099 () Bool)

(assert (= bs!36099 (and b!57192 b!57072)))

(assert (=> bs!36099 (= lambda!9062 lambda!9039)))

(declare-fun bs!36100 () Bool)

(assert (= bs!36100 (and b!57192 b!57055)))

(assert (=> bs!36100 (not (= lambda!9062 lambda!9031))))

(declare-fun bs!36101 () Bool)

(assert (= bs!36101 (and b!57192 b!57180)))

(assert (=> bs!36101 (= lambda!9062 lambda!9060)))

(declare-fun bs!36102 () Bool)

(assert (= bs!36102 (and b!57192 b!57142)))

(assert (=> bs!36102 (= lambda!9062 lambda!9052)))

(declare-fun bs!36103 () Bool)

(assert (= bs!36103 (and b!57192 b!57138)))

(assert (=> bs!36103 (= lambda!9062 lambda!9051)))

(declare-fun bs!36104 () Bool)

(assert (= bs!36104 (and b!57192 b!57145)))

(assert (=> bs!36104 (= lambda!9062 lambda!9053)))

(declare-fun bs!36105 () Bool)

(assert (= bs!36105 (and b!57192 b!57169)))

(assert (=> bs!36105 (= lambda!9062 lambda!9058)))

(declare-fun bs!36106 () Bool)

(assert (= bs!36106 (and b!57192 b!57110)))

(assert (=> bs!36106 (= lambda!9062 lambda!9048)))

(declare-fun d!50168 () Bool)

(declare-fun res!26468 () Bool)

(declare-fun e!30374 () Bool)

(assert (=> d!50168 (=> res!26468 e!30374)))

(assert (=> d!50168 (= res!26468 (isBigIntStructure!0 lt!10533))))

(assert (=> d!50168 (= (isStructure!0 lt!10533 lambda!9048) e!30374)))

(declare-fun b!57191 () Bool)

(declare-fun res!26469 () Bool)

(assert (=> b!57191 (=> res!26469 e!30374)))

(assert (=> b!57191 (= res!26469 (isStructureExt!0 lt!10533 lambda!9048))))

(assert (=> b!57192 (= e!30374 (isOptionStructure!0 lt!10533 lambda!9062))))

(assert (= (and d!50168 (not res!26468)) b!57191))

(assert (= (and b!57191 (not res!26469)) b!57192))

(declare-fun m!62120 () Bool)

(assert (=> d!50168 m!62120))

(declare-fun m!62122 () Bool)

(assert (=> b!57191 m!62122))

(declare-fun m!62124 () Bool)

(assert (=> b!57192 m!62124))

(assert (=> b!57110 d!50168))

(declare-fun tp!16165 () Bool)

(declare-fun lt!10563 () Object!264)

(declare-fun b!57195 () Bool)

(declare-fun e!30376 () Bool)

(assert (=> b!57195 (= e!30376 (and tp!16165 (dynLambda!917 lambda!9041 lt!10563)))))

(assert (=> b!57195 (= lt!10563 (v!2048 (doSomething!3 lambda!9041 thiss!8013 (value!4096 lt!10511) (value!4096 lt!10506))))))

(declare-fun d!50170 () Bool)

(assert (=> d!50170 (= true e!30376)))

(assert (= (and d!50170 (is-Some!301 (doSomething!3 lambda!9041 thiss!8013 (value!4096 lt!10511) (value!4096 lt!10506)))) b!57195))

(declare-fun b_lambda!15347 () Bool)

(assert (=> (not b_lambda!15347) (not b!57195)))

(declare-fun m!62126 () Bool)

(assert (=> b!57195 m!62126))

(declare-fun lt!10562 () Option!313)

(assert (=> d!50170 (= lt!10562 (doSomething!6 thiss!8013 (value!4096 lt!10511) (value!4096 lt!10506)))))

(declare-fun e!30375 () Option!313)

(assert (=> d!50170 (= lt!10562 e!30375)))

(declare-fun c!12185 () Bool)

(assert (=> d!50170 (= c!12185 (or (and (is-None!302 (value!4096 lt!10511)) (is-None!302 (value!4096 lt!10506))) (is-None!302 (value!4096 lt!10506)) (is-None!302 (value!4096 lt!10511))))))

(assert (=> d!50170 (= (doSomething!3 lambda!9041 thiss!8013 (value!4096 lt!10511) (value!4096 lt!10506)) lt!10562)))

(declare-fun b!57193 () Bool)

(assert (=> b!57193 (= e!30375 None!302)))

(declare-fun b!57194 () Bool)

(assert (=> b!57194 (= e!30375 (Some!301 (doSomething!1 lambda!9041 (ev!22 thiss!8013) (v!2048 (value!4096 lt!10511)) (v!2048 (value!4096 lt!10506)))))))

(assert (= (and d!50170 c!12185) b!57193))

(assert (= (and d!50170 (not c!12185)) b!57194))

(declare-fun m!62128 () Bool)

(assert (=> d!50170 m!62128))

(declare-fun m!62130 () Bool)

(assert (=> b!57194 m!62130))

(assert (=> b!57084 d!50170))

(declare-fun tp!16166 () Bool)

(declare-fun lt!10564 () Object!264)

(declare-fun e!30378 () Bool)

(declare-fun b!57196 () Bool)

(assert (=> b!57196 (= e!30378 (and tp!16166 (isStructure!0 lt!10564 lambda!9032)))))

(assert (=> b!57196 (= lt!10564 (ev!22 (ev!22 (ev!22 thiss!8013))))))

(declare-fun b!57198 () Bool)

(declare-fun e!30377 () Bool)

(declare-fun tp!16167 () Bool)

(assert (=> b!57198 (= e!30377 tp!16167)))

(declare-fun b!57197 () Bool)

(assert (=> b!57197 (= e!30378 e!30377)))

(assert (=> b!57107 (= tp!16132 e!30378)))

(assert (= (and b!57107 (is-OptionStructure!12 (ev!22 (ev!22 thiss!8013)))) b!57196))

(assert (= (and b!57197 (is-Some!301 (value!4096 (ev!22 (ev!22 thiss!8013))))) b!57198))

(assert (= (and b!57107 (is-Option!314 (ev!22 (ev!22 thiss!8013)))) b!57197))

(declare-fun m!62132 () Bool)

(assert (=> b!57196 m!62132))

(declare-fun e!30380 () Bool)

(declare-fun tp!16168 () Bool)

(declare-fun lt!10565 () Object!264)

(declare-fun b!57199 () Bool)

(assert (=> b!57199 (= e!30380 (and tp!16168 (isStructure!0 lt!10565 lambda!9032)))))

(assert (=> b!57199 (= lt!10565 (ev!22 (v!2048 (value!4096 (ev!22 thiss!8013)))))))

(declare-fun b!57201 () Bool)

(declare-fun e!30379 () Bool)

(declare-fun tp!16169 () Bool)

(assert (=> b!57201 (= e!30379 tp!16169)))

(declare-fun b!57200 () Bool)

(assert (=> b!57200 (= e!30380 e!30379)))

(assert (=> b!57109 (= tp!16133 e!30380)))

(assert (= (and b!57109 (is-OptionStructure!12 (v!2048 (value!4096 (ev!22 thiss!8013))))) b!57199))

(assert (= (and b!57200 (is-Some!301 (value!4096 (v!2048 (value!4096 (ev!22 thiss!8013)))))) b!57201))

(assert (= (and b!57109 (is-Option!314 (v!2048 (value!4096 (ev!22 thiss!8013))))) b!57200))

(declare-fun m!62134 () Bool)

(assert (=> b!57199 m!62134))

(declare-fun bs!36107 () Bool)

(declare-fun b!57210 () Bool)

(assert (= bs!36107 (and b!57210 b!57163)))

(declare-fun lambda!9065 () Int)

(assert (=> bs!36107 (= lambda!9065 lambda!9057)))

(declare-fun bs!36108 () Bool)

(assert (= bs!36108 (and b!57210 b!57174)))

(assert (=> bs!36108 (= lambda!9065 lambda!9059)))

(declare-fun bs!36109 () Bool)

(assert (= bs!36109 (and b!57210 b!57090)))

(assert (=> bs!36109 (= lambda!9065 lambda!9042)))

(declare-fun bs!36110 () Bool)

(assert (= bs!36110 (and b!57210 b!57084)))

(assert (=> bs!36110 (= lambda!9065 lambda!9041)))

(declare-fun bs!36111 () Bool)

(assert (= bs!36111 (and b!57210 b!57154)))

(assert (=> bs!36111 (= lambda!9065 lambda!9054)))

(declare-fun bs!36112 () Bool)

(assert (= bs!36112 (and b!57210 b!57192)))

(assert (=> bs!36112 (= lambda!9065 lambda!9062)))

(declare-fun bs!36113 () Bool)

(assert (= bs!36113 (and b!57210 b!57098)))

(assert (=> bs!36113 (= lambda!9065 lambda!9045)))

(declare-fun bs!36114 () Bool)

(assert (= bs!36114 (and b!57210 b!57052)))

(assert (=> bs!36114 (= lambda!9065 lambda!9032)))

(declare-fun bs!36115 () Bool)

(assert (= bs!36115 (and b!57210 b!57183)))

(assert (=> bs!36115 (= lambda!9065 lambda!9061)))

(declare-fun bs!36116 () Bool)

(assert (= bs!36116 (and b!57210 b!57078)))

(assert (=> bs!36116 (= lambda!9065 lambda!9040)))

(declare-fun bs!36117 () Bool)

(assert (= bs!36117 (and b!57210 b!57072)))

(assert (=> bs!36117 (= lambda!9065 lambda!9039)))

(declare-fun bs!36118 () Bool)

(assert (= bs!36118 (and b!57210 b!57055)))

(assert (=> bs!36118 (not (= lambda!9065 lambda!9031))))

(declare-fun bs!36119 () Bool)

(assert (= bs!36119 (and b!57210 b!57180)))

(assert (=> bs!36119 (= lambda!9065 lambda!9060)))

(declare-fun bs!36120 () Bool)

(assert (= bs!36120 (and b!57210 b!57142)))

(assert (=> bs!36120 (= lambda!9065 lambda!9052)))

(declare-fun bs!36121 () Bool)

(assert (= bs!36121 (and b!57210 b!57138)))

(assert (=> bs!36121 (= lambda!9065 lambda!9051)))

(declare-fun bs!36122 () Bool)

(assert (= bs!36122 (and b!57210 b!57145)))

(assert (=> bs!36122 (= lambda!9065 lambda!9053)))

(declare-fun bs!36123 () Bool)

(assert (= bs!36123 (and b!57210 b!57169)))

(assert (=> bs!36123 (= lambda!9065 lambda!9058)))

(declare-fun bs!36124 () Bool)

(assert (= bs!36124 (and b!57210 b!57110)))

(assert (=> bs!36124 (= lambda!9065 lambda!9048)))

(declare-fun lt!10571 () Object!264)

(assert (=> d!50086 (= lt!10571 (doSomething!1 lambda!9031 thiss!8013 lt!10511 lt!10506))))

(declare-fun e!30386 () Bool)

(assert (=> d!50086 (= true (and e!30386 (dynLambda!917 lambda!9031 lt!10571)))))

(declare-fun lt!10570 () Object!264)

(declare-fun tp!16175 () Bool)

(assert (=> b!57210 (= e!30386 (and tp!16175 (isStructure!0 lt!10570 lambda!9065)))))

(assert (=> b!57210 (= lt!10570 (ev!22 (doSomething!1 lambda!9031 thiss!8013 lt!10511 lt!10506)))))

(declare-fun b!57212 () Bool)

(declare-fun e!30385 () Bool)

(declare-fun tp!16174 () Bool)

(assert (=> b!57212 (= e!30385 tp!16174)))

(declare-fun b!57211 () Bool)

(assert (=> b!57211 (= e!30386 e!30385)))

(assert (= (and d!50086 (is-OptionStructure!12 (doSomething!1 lambda!9031 thiss!8013 lt!10511 lt!10506))) b!57210))

(assert (= (and b!57211 (is-Some!301 (value!4096 (doSomething!1 lambda!9031 thiss!8013 lt!10511 lt!10506)))) b!57212))

(assert (= (and d!50086 (is-Option!314 (doSomething!1 lambda!9031 thiss!8013 lt!10511 lt!10506))) b!57211))

(declare-fun b_lambda!15349 () Bool)

(assert (=> (not b_lambda!15349) (not d!50086)))

(declare-fun m!62136 () Bool)

(assert (=> d!50086 m!62136))

(declare-fun m!62138 () Bool)

(assert (=> b!57210 m!62138))

(declare-fun bs!36125 () Bool)

(declare-fun b!57213 () Bool)

(assert (= bs!36125 (and b!57213 b!57163)))

(declare-fun lambda!9066 () Int)

(assert (=> bs!36125 (= lambda!9066 lambda!9057)))

(declare-fun bs!36126 () Bool)

(assert (= bs!36126 (and b!57213 b!57174)))

(assert (=> bs!36126 (= lambda!9066 lambda!9059)))

(declare-fun bs!36127 () Bool)

(assert (= bs!36127 (and b!57213 b!57090)))

(assert (=> bs!36127 (= lambda!9066 lambda!9042)))

(declare-fun bs!36128 () Bool)

(assert (= bs!36128 (and b!57213 b!57084)))

(assert (=> bs!36128 (= lambda!9066 lambda!9041)))

(declare-fun bs!36129 () Bool)

(assert (= bs!36129 (and b!57213 b!57154)))

(assert (=> bs!36129 (= lambda!9066 lambda!9054)))

(declare-fun bs!36130 () Bool)

(assert (= bs!36130 (and b!57213 b!57192)))

(assert (=> bs!36130 (= lambda!9066 lambda!9062)))

(declare-fun bs!36131 () Bool)

(assert (= bs!36131 (and b!57213 b!57098)))

(assert (=> bs!36131 (= lambda!9066 lambda!9045)))

(declare-fun bs!36132 () Bool)

(assert (= bs!36132 (and b!57213 b!57052)))

(assert (=> bs!36132 (= lambda!9066 lambda!9032)))

(declare-fun bs!36133 () Bool)

(assert (= bs!36133 (and b!57213 b!57210)))

(assert (=> bs!36133 (= lambda!9066 lambda!9065)))

(declare-fun bs!36134 () Bool)

(assert (= bs!36134 (and b!57213 b!57183)))

(assert (=> bs!36134 (= lambda!9066 lambda!9061)))

(declare-fun bs!36135 () Bool)

(assert (= bs!36135 (and b!57213 b!57078)))

(assert (=> bs!36135 (= lambda!9066 lambda!9040)))

(declare-fun bs!36136 () Bool)

(assert (= bs!36136 (and b!57213 b!57072)))

(assert (=> bs!36136 (= lambda!9066 lambda!9039)))

(declare-fun bs!36137 () Bool)

(assert (= bs!36137 (and b!57213 b!57055)))

(assert (=> bs!36137 (not (= lambda!9066 lambda!9031))))

(declare-fun bs!36138 () Bool)

(assert (= bs!36138 (and b!57213 b!57180)))

(assert (=> bs!36138 (= lambda!9066 lambda!9060)))

(declare-fun bs!36139 () Bool)

(assert (= bs!36139 (and b!57213 b!57142)))

(assert (=> bs!36139 (= lambda!9066 lambda!9052)))

(declare-fun bs!36140 () Bool)

(assert (= bs!36140 (and b!57213 b!57138)))

(assert (=> bs!36140 (= lambda!9066 lambda!9051)))

(declare-fun bs!36141 () Bool)

(assert (= bs!36141 (and b!57213 b!57145)))

(assert (=> bs!36141 (= lambda!9066 lambda!9053)))

(declare-fun bs!36142 () Bool)

(assert (= bs!36142 (and b!57213 b!57169)))

(assert (=> bs!36142 (= lambda!9066 lambda!9058)))

(declare-fun bs!36143 () Bool)

(assert (= bs!36143 (and b!57213 b!57110)))

(assert (=> bs!36143 (= lambda!9066 lambda!9048)))

(declare-fun lt!10573 () Object!264)

(assert (=> d!50088 (= lt!10573 (doSomething!1 lambda!9031 thiss!8013 lt!10506 lt!10511))))

(declare-fun e!30388 () Bool)

(assert (=> d!50088 (= true (and e!30388 (dynLambda!917 lambda!9031 lt!10573)))))

(declare-fun tp!16177 () Bool)

(declare-fun lt!10572 () Object!264)

(assert (=> b!57213 (= e!30388 (and tp!16177 (isStructure!0 lt!10572 lambda!9066)))))

(assert (=> b!57213 (= lt!10572 (ev!22 (doSomething!1 lambda!9031 thiss!8013 lt!10506 lt!10511)))))

(declare-fun b!57215 () Bool)

(declare-fun e!30387 () Bool)

(declare-fun tp!16176 () Bool)

(assert (=> b!57215 (= e!30387 tp!16176)))

(declare-fun b!57214 () Bool)

(assert (=> b!57214 (= e!30388 e!30387)))

(assert (= (and d!50088 (is-OptionStructure!12 (doSomething!1 lambda!9031 thiss!8013 lt!10506 lt!10511))) b!57213))

(assert (= (and b!57214 (is-Some!301 (value!4096 (doSomething!1 lambda!9031 thiss!8013 lt!10506 lt!10511)))) b!57215))

(assert (= (and d!50088 (is-Option!314 (doSomething!1 lambda!9031 thiss!8013 lt!10506 lt!10511))) b!57214))

(declare-fun b_lambda!15351 () Bool)

(assert (=> (not b_lambda!15351) (not d!50088)))

(declare-fun m!62140 () Bool)

(assert (=> d!50088 m!62140))

(declare-fun m!62142 () Bool)

(assert (=> b!57213 m!62142))

(declare-fun bs!36144 () Bool)

(declare-fun b!57216 () Bool)

(assert (= bs!36144 (and b!57216 b!57163)))

(declare-fun lambda!9067 () Int)

(assert (=> bs!36144 (= lambda!9067 lambda!9057)))

(declare-fun bs!36145 () Bool)

(assert (= bs!36145 (and b!57216 b!57174)))

(assert (=> bs!36145 (= lambda!9067 lambda!9059)))

(declare-fun bs!36146 () Bool)

(assert (= bs!36146 (and b!57216 b!57090)))

(assert (=> bs!36146 (= lambda!9067 lambda!9042)))

(declare-fun bs!36147 () Bool)

(assert (= bs!36147 (and b!57216 b!57084)))

(assert (=> bs!36147 (= lambda!9067 lambda!9041)))

(declare-fun bs!36148 () Bool)

(assert (= bs!36148 (and b!57216 b!57154)))

(assert (=> bs!36148 (= lambda!9067 lambda!9054)))

(declare-fun bs!36149 () Bool)

(assert (= bs!36149 (and b!57216 b!57213)))

(assert (=> bs!36149 (= lambda!9067 lambda!9066)))

(declare-fun bs!36150 () Bool)

(assert (= bs!36150 (and b!57216 b!57192)))

(assert (=> bs!36150 (= lambda!9067 lambda!9062)))

(declare-fun bs!36151 () Bool)

(assert (= bs!36151 (and b!57216 b!57098)))

(assert (=> bs!36151 (= lambda!9067 lambda!9045)))

(declare-fun bs!36152 () Bool)

(assert (= bs!36152 (and b!57216 b!57052)))

(assert (=> bs!36152 (= lambda!9067 lambda!9032)))

(declare-fun bs!36153 () Bool)

(assert (= bs!36153 (and b!57216 b!57210)))

(assert (=> bs!36153 (= lambda!9067 lambda!9065)))

(declare-fun bs!36154 () Bool)

(assert (= bs!36154 (and b!57216 b!57183)))

(assert (=> bs!36154 (= lambda!9067 lambda!9061)))

(declare-fun bs!36155 () Bool)

(assert (= bs!36155 (and b!57216 b!57078)))

(assert (=> bs!36155 (= lambda!9067 lambda!9040)))

(declare-fun bs!36156 () Bool)

(assert (= bs!36156 (and b!57216 b!57072)))

(assert (=> bs!36156 (= lambda!9067 lambda!9039)))

(declare-fun bs!36157 () Bool)

(assert (= bs!36157 (and b!57216 b!57055)))

(assert (=> bs!36157 (not (= lambda!9067 lambda!9031))))

(declare-fun bs!36158 () Bool)

(assert (= bs!36158 (and b!57216 b!57180)))

(assert (=> bs!36158 (= lambda!9067 lambda!9060)))

(declare-fun bs!36159 () Bool)

(assert (= bs!36159 (and b!57216 b!57142)))

(assert (=> bs!36159 (= lambda!9067 lambda!9052)))

(declare-fun bs!36160 () Bool)

(assert (= bs!36160 (and b!57216 b!57138)))

(assert (=> bs!36160 (= lambda!9067 lambda!9051)))

(declare-fun bs!36161 () Bool)

(assert (= bs!36161 (and b!57216 b!57145)))

(assert (=> bs!36161 (= lambda!9067 lambda!9053)))

(declare-fun bs!36162 () Bool)

(assert (= bs!36162 (and b!57216 b!57169)))

(assert (=> bs!36162 (= lambda!9067 lambda!9058)))

(declare-fun bs!36163 () Bool)

(assert (= bs!36163 (and b!57216 b!57110)))

(assert (=> bs!36163 (= lambda!9067 lambda!9048)))

(declare-fun lt!10575 () Object!264)

(assert (=> d!50080 (= lt!10575 (doSomething!1 lambda!9031 thiss!8013 lt!10505 lt!10509))))

(declare-fun e!30390 () Bool)

(assert (=> d!50080 (= true (and e!30390 (dynLambda!917 lambda!9031 lt!10575)))))

(declare-fun tp!16179 () Bool)

(declare-fun lt!10574 () Object!264)

(assert (=> b!57216 (= e!30390 (and tp!16179 (isStructure!0 lt!10574 lambda!9067)))))

(assert (=> b!57216 (= lt!10574 (ev!22 (doSomething!1 lambda!9031 thiss!8013 lt!10505 lt!10509)))))

(declare-fun b!57218 () Bool)

(declare-fun e!30389 () Bool)

(declare-fun tp!16178 () Bool)

(assert (=> b!57218 (= e!30389 tp!16178)))

(declare-fun b!57217 () Bool)

(assert (=> b!57217 (= e!30390 e!30389)))

(assert (= (and d!50080 (is-OptionStructure!12 (doSomething!1 lambda!9031 thiss!8013 lt!10505 lt!10509))) b!57216))

(assert (= (and b!57217 (is-Some!301 (value!4096 (doSomething!1 lambda!9031 thiss!8013 lt!10505 lt!10509)))) b!57218))

(assert (= (and d!50080 (is-Option!314 (doSomething!1 lambda!9031 thiss!8013 lt!10505 lt!10509))) b!57217))

(declare-fun b_lambda!15353 () Bool)

(assert (=> (not b_lambda!15353) (not d!50080)))

(declare-fun m!62144 () Bool)

(assert (=> d!50080 m!62144))

(declare-fun m!62146 () Bool)

(assert (=> b!57216 m!62146))

(declare-fun bs!36164 () Bool)

(declare-fun b!57219 () Bool)

(assert (= bs!36164 (and b!57219 b!57163)))

(declare-fun lambda!9068 () Int)

(assert (=> bs!36164 (= lambda!9068 lambda!9057)))

(declare-fun bs!36165 () Bool)

(assert (= bs!36165 (and b!57219 b!57174)))

(assert (=> bs!36165 (= lambda!9068 lambda!9059)))

(declare-fun bs!36166 () Bool)

(assert (= bs!36166 (and b!57219 b!57090)))

(assert (=> bs!36166 (= lambda!9068 lambda!9042)))

(declare-fun bs!36167 () Bool)

(assert (= bs!36167 (and b!57219 b!57084)))

(assert (=> bs!36167 (= lambda!9068 lambda!9041)))

(declare-fun bs!36168 () Bool)

(assert (= bs!36168 (and b!57219 b!57154)))

(assert (=> bs!36168 (= lambda!9068 lambda!9054)))

(declare-fun bs!36169 () Bool)

(assert (= bs!36169 (and b!57219 b!57213)))

(assert (=> bs!36169 (= lambda!9068 lambda!9066)))

(declare-fun bs!36170 () Bool)

(assert (= bs!36170 (and b!57219 b!57192)))

(assert (=> bs!36170 (= lambda!9068 lambda!9062)))

(declare-fun bs!36171 () Bool)

(assert (= bs!36171 (and b!57219 b!57098)))

(assert (=> bs!36171 (= lambda!9068 lambda!9045)))

(declare-fun bs!36172 () Bool)

(assert (= bs!36172 (and b!57219 b!57052)))

(assert (=> bs!36172 (= lambda!9068 lambda!9032)))

(declare-fun bs!36173 () Bool)

(assert (= bs!36173 (and b!57219 b!57210)))

(assert (=> bs!36173 (= lambda!9068 lambda!9065)))

(declare-fun bs!36174 () Bool)

(assert (= bs!36174 (and b!57219 b!57183)))

(assert (=> bs!36174 (= lambda!9068 lambda!9061)))

(declare-fun bs!36175 () Bool)

(assert (= bs!36175 (and b!57219 b!57216)))

(assert (=> bs!36175 (= lambda!9068 lambda!9067)))

(declare-fun bs!36176 () Bool)

(assert (= bs!36176 (and b!57219 b!57078)))

(assert (=> bs!36176 (= lambda!9068 lambda!9040)))

(declare-fun bs!36177 () Bool)

(assert (= bs!36177 (and b!57219 b!57072)))

(assert (=> bs!36177 (= lambda!9068 lambda!9039)))

(declare-fun bs!36178 () Bool)

(assert (= bs!36178 (and b!57219 b!57055)))

(assert (=> bs!36178 (not (= lambda!9068 lambda!9031))))

(declare-fun bs!36179 () Bool)

(assert (= bs!36179 (and b!57219 b!57180)))

(assert (=> bs!36179 (= lambda!9068 lambda!9060)))

(declare-fun bs!36180 () Bool)

(assert (= bs!36180 (and b!57219 b!57142)))

(assert (=> bs!36180 (= lambda!9068 lambda!9052)))

(declare-fun bs!36181 () Bool)

(assert (= bs!36181 (and b!57219 b!57138)))

(assert (=> bs!36181 (= lambda!9068 lambda!9051)))

(declare-fun bs!36182 () Bool)

(assert (= bs!36182 (and b!57219 b!57145)))

(assert (=> bs!36182 (= lambda!9068 lambda!9053)))

(declare-fun bs!36183 () Bool)

(assert (= bs!36183 (and b!57219 b!57169)))

(assert (=> bs!36183 (= lambda!9068 lambda!9058)))

(declare-fun bs!36184 () Bool)

(assert (= bs!36184 (and b!57219 b!57110)))

(assert (=> bs!36184 (= lambda!9068 lambda!9048)))

(declare-fun lt!10577 () Object!264)

(assert (=> d!50078 (= lt!10577 (doSomething!1 lambda!9031 thiss!8013 lt!10509 lt!10505))))

(declare-fun e!30392 () Bool)

(assert (=> d!50078 (= true (and e!30392 (dynLambda!917 lambda!9031 lt!10577)))))

(declare-fun lt!10576 () Object!264)

(declare-fun tp!16181 () Bool)

(assert (=> b!57219 (= e!30392 (and tp!16181 (isStructure!0 lt!10576 lambda!9068)))))

(assert (=> b!57219 (= lt!10576 (ev!22 (doSomething!1 lambda!9031 thiss!8013 lt!10509 lt!10505)))))

(declare-fun b!57221 () Bool)

(declare-fun e!30391 () Bool)

(declare-fun tp!16180 () Bool)

(assert (=> b!57221 (= e!30391 tp!16180)))

(declare-fun b!57220 () Bool)

(assert (=> b!57220 (= e!30392 e!30391)))

(assert (= (and d!50078 (is-OptionStructure!12 (doSomething!1 lambda!9031 thiss!8013 lt!10509 lt!10505))) b!57219))

(assert (= (and b!57220 (is-Some!301 (value!4096 (doSomething!1 lambda!9031 thiss!8013 lt!10509 lt!10505)))) b!57221))

(assert (= (and d!50078 (is-Option!314 (doSomething!1 lambda!9031 thiss!8013 lt!10509 lt!10505))) b!57220))

(declare-fun b_lambda!15355 () Bool)

(assert (=> (not b_lambda!15355) (not d!50078)))

(declare-fun m!62148 () Bool)

(assert (=> d!50078 m!62148))

(declare-fun m!62150 () Bool)

(assert (=> b!57219 m!62150))

(declare-fun e!30394 () Bool)

(declare-fun lt!10578 () Object!264)

(declare-fun tp!16182 () Bool)

(declare-fun b!57222 () Bool)

(assert (=> b!57222 (= e!30394 (and tp!16182 (isStructure!0 lt!10578 lambda!9048)))))

(assert (=> b!57222 (= lt!10578 (ev!22 (ev!22 (v!2048 (value!4096 thiss!8013)))))))

(declare-fun b!57224 () Bool)

(declare-fun e!30393 () Bool)

(declare-fun tp!16183 () Bool)

(assert (=> b!57224 (= e!30393 tp!16183)))

(declare-fun b!57223 () Bool)

(assert (=> b!57223 (= e!30394 e!30393)))

(assert (=> b!57110 (= tp!16134 e!30394)))

(assert (= (and b!57110 (is-OptionStructure!12 (ev!22 (v!2048 (value!4096 thiss!8013))))) b!57222))

(assert (= (and b!57223 (is-Some!301 (value!4096 (ev!22 (v!2048 (value!4096 thiss!8013)))))) b!57224))

(assert (= (and b!57110 (is-Option!314 (ev!22 (v!2048 (value!4096 thiss!8013))))) b!57223))

(declare-fun m!62152 () Bool)

(assert (=> b!57222 m!62152))

(declare-fun bs!36185 () Bool)

(declare-fun b!57225 () Bool)

(assert (= bs!36185 (and b!57225 b!57163)))

(declare-fun lambda!9069 () Int)

(assert (=> bs!36185 (= lambda!9069 lambda!9057)))

(declare-fun bs!36186 () Bool)

(assert (= bs!36186 (and b!57225 b!57174)))

(assert (=> bs!36186 (= lambda!9069 lambda!9059)))

(declare-fun bs!36187 () Bool)

(assert (= bs!36187 (and b!57225 b!57090)))

(assert (=> bs!36187 (= lambda!9069 lambda!9042)))

(declare-fun bs!36188 () Bool)

(assert (= bs!36188 (and b!57225 b!57084)))

(assert (=> bs!36188 (= lambda!9069 lambda!9041)))

(declare-fun bs!36189 () Bool)

(assert (= bs!36189 (and b!57225 b!57154)))

(assert (=> bs!36189 (= lambda!9069 lambda!9054)))

(declare-fun bs!36190 () Bool)

(assert (= bs!36190 (and b!57225 b!57213)))

(assert (=> bs!36190 (= lambda!9069 lambda!9066)))

(declare-fun bs!36191 () Bool)

(assert (= bs!36191 (and b!57225 b!57192)))

(assert (=> bs!36191 (= lambda!9069 lambda!9062)))

(declare-fun bs!36192 () Bool)

(assert (= bs!36192 (and b!57225 b!57098)))

(assert (=> bs!36192 (= lambda!9069 lambda!9045)))

(declare-fun bs!36193 () Bool)

(assert (= bs!36193 (and b!57225 b!57052)))

(assert (=> bs!36193 (= lambda!9069 lambda!9032)))

(declare-fun bs!36194 () Bool)

(assert (= bs!36194 (and b!57225 b!57210)))

(assert (=> bs!36194 (= lambda!9069 lambda!9065)))

(declare-fun bs!36195 () Bool)

(assert (= bs!36195 (and b!57225 b!57183)))

(assert (=> bs!36195 (= lambda!9069 lambda!9061)))

(declare-fun bs!36196 () Bool)

(assert (= bs!36196 (and b!57225 b!57216)))

(assert (=> bs!36196 (= lambda!9069 lambda!9067)))

(declare-fun bs!36197 () Bool)

(assert (= bs!36197 (and b!57225 b!57219)))

(assert (=> bs!36197 (= lambda!9069 lambda!9068)))

(declare-fun bs!36198 () Bool)

(assert (= bs!36198 (and b!57225 b!57078)))

(assert (=> bs!36198 (= lambda!9069 lambda!9040)))

(declare-fun bs!36199 () Bool)

(assert (= bs!36199 (and b!57225 b!57072)))

(assert (=> bs!36199 (= lambda!9069 lambda!9039)))

(declare-fun bs!36200 () Bool)

(assert (= bs!36200 (and b!57225 b!57055)))

(assert (=> bs!36200 (not (= lambda!9069 lambda!9031))))

(declare-fun bs!36201 () Bool)

(assert (= bs!36201 (and b!57225 b!57180)))

(assert (=> bs!36201 (= lambda!9069 lambda!9060)))

(declare-fun bs!36202 () Bool)

(assert (= bs!36202 (and b!57225 b!57142)))

(assert (=> bs!36202 (= lambda!9069 lambda!9052)))

(declare-fun bs!36203 () Bool)

(assert (= bs!36203 (and b!57225 b!57138)))

(assert (=> bs!36203 (= lambda!9069 lambda!9051)))

(declare-fun bs!36204 () Bool)

(assert (= bs!36204 (and b!57225 b!57145)))

(assert (=> bs!36204 (= lambda!9069 lambda!9053)))

(declare-fun bs!36205 () Bool)

(assert (= bs!36205 (and b!57225 b!57169)))

(assert (=> bs!36205 (= lambda!9069 lambda!9058)))

(declare-fun bs!36206 () Bool)

(assert (= bs!36206 (and b!57225 b!57110)))

(assert (=> bs!36206 (= lambda!9069 lambda!9048)))

(declare-fun tp!16184 () Bool)

(declare-fun lt!10579 () Object!264)

(declare-fun e!30396 () Bool)

(assert (=> b!57225 (= e!30396 (and tp!16184 (isStructure!0 lt!10579 lambda!9069)))))

(assert (=> b!57225 (= lt!10579 (ev!22 (v!2048 (value!4096 (v!2048 (value!4096 thiss!8013))))))))

(declare-fun b!57227 () Bool)

(declare-fun e!30395 () Bool)

(declare-fun tp!16185 () Bool)

(assert (=> b!57227 (= e!30395 tp!16185)))

(declare-fun b!57226 () Bool)

(assert (=> b!57226 (= e!30396 e!30395)))

(assert (=> b!57112 (= tp!16135 e!30396)))

(assert (= (and b!57112 (is-OptionStructure!12 (v!2048 (value!4096 (v!2048 (value!4096 thiss!8013)))))) b!57225))

(assert (= (and b!57226 (is-Some!301 (value!4096 (v!2048 (value!4096 (v!2048 (value!4096 thiss!8013))))))) b!57227))

(assert (= (and b!57112 (is-Option!314 (v!2048 (value!4096 (v!2048 (value!4096 thiss!8013)))))) b!57226))

(declare-fun m!62154 () Bool)

(assert (=> b!57225 m!62154))

(declare-fun b_lambda!15357 () Bool)

(assert (= b_lambda!15345 (or b!57084 b_lambda!15357)))

(declare-fun bs!36207 () Bool)

(declare-fun d!50172 () Bool)

(assert (= bs!36207 (and d!50172 b!57084)))

(assert (=> bs!36207 (= (dynLambda!917 lambda!9041 (v!2048 (value!4096 lt!10511))) true)))

(assert (=> b!57189 d!50172))

(declare-fun b_lambda!15359 () Bool)

(assert (= b_lambda!15331 (or b!57072 b_lambda!15359)))

(declare-fun bs!36208 () Bool)

(declare-fun d!50174 () Bool)

(assert (= bs!36208 (and d!50174 b!57072)))

(assert (=> bs!36208 (= (dynLambda!917 lambda!9039 (v!2048 (value!4096 lt!10505))) true)))

(assert (=> b!57150 d!50174))

(declare-fun b_lambda!15361 () Bool)

(assert (= b_lambda!15317 (or b!57090 b_lambda!15361)))

(declare-fun bs!36209 () Bool)

(declare-fun d!50176 () Bool)

(assert (= bs!36209 (and d!50176 b!57090)))

(assert (=> bs!36209 (= (dynLambda!917 lambda!9042 (v!2048 (value!4096 lt!10511))) true)))

(assert (=> b!57117 d!50176))

(declare-fun b_lambda!15363 () Bool)

(assert (= b_lambda!15353 (or b!57055 b_lambda!15363)))

(declare-fun bs!36210 () Bool)

(declare-fun d!50178 () Bool)

(assert (= bs!36210 (and d!50178 b!57055)))

(assert (=> bs!36210 (= (dynLambda!917 lambda!9031 lt!10575) (is-Integer!253 lt!10575))))

(assert (=> d!50080 d!50178))

(declare-fun b_lambda!15365 () Bool)

(assert (= b_lambda!15351 (or b!57055 b_lambda!15365)))

(declare-fun bs!36211 () Bool)

(declare-fun d!50180 () Bool)

(assert (= bs!36211 (and d!50180 b!57055)))

(assert (=> bs!36211 (= (dynLambda!917 lambda!9031 lt!10573) (is-Integer!253 lt!10573))))

(assert (=> d!50088 d!50180))

(declare-fun b_lambda!15367 () Bool)

(assert (= b_lambda!15323 (or b!57055 b_lambda!15367)))

(declare-fun bs!36212 () Bool)

(declare-fun d!50182 () Bool)

(assert (= bs!36212 (and d!50182 b!57055)))

(assert (=> bs!36212 (= (dynLambda!917 lambda!9031 lt!10545) (is-Integer!253 lt!10545))))

(assert (=> d!50120 d!50182))

(declare-fun b_lambda!15369 () Bool)

(assert (= b_lambda!15337 (or b!57084 b_lambda!15369)))

(declare-fun bs!36213 () Bool)

(declare-fun d!50184 () Bool)

(assert (= bs!36213 (and d!50184 b!57084)))

(assert (=> bs!36213 (= (dynLambda!917 lambda!9041 (v!2048 (value!4096 lt!10506))) true)))

(assert (=> b!57172 d!50184))

(declare-fun b_lambda!15371 () Bool)

(assert (= b_lambda!15335 (or b!57055 b_lambda!15371)))

(declare-fun bs!36214 () Bool)

(declare-fun d!50186 () Bool)

(assert (= bs!36214 (and d!50186 b!57055)))

(assert (=> bs!36214 (= (dynLambda!917 lambda!9031 lt!10549) (is-Integer!253 lt!10549))))

(assert (=> d!50140 d!50186))

(declare-fun b_lambda!15373 () Bool)

(assert (= b_lambda!15347 (or b!57084 b_lambda!15373)))

(declare-fun bs!36215 () Bool)

(declare-fun d!50188 () Bool)

(assert (= bs!36215 (and d!50188 b!57084)))

(assert (=> bs!36215 (= (dynLambda!917 lambda!9041 lt!10563) true)))

(assert (=> b!57195 d!50188))

(declare-fun b_lambda!15375 () Bool)

(assert (= b_lambda!15341 (or b!57055 b_lambda!15375)))

(declare-fun bs!36216 () Bool)

(declare-fun d!50190 () Bool)

(assert (= bs!36216 (and d!50190 b!57055)))

(assert (=> bs!36216 (= (dynLambda!917 lambda!9031 lt!10559) (is-Integer!253 lt!10559))))

(assert (=> d!50160 d!50190))

(declare-fun b_lambda!15377 () Bool)

(assert (= b_lambda!15333 (or b!57078 b_lambda!15377)))

(declare-fun bs!36217 () Bool)

(declare-fun d!50192 () Bool)

(assert (= bs!36217 (and d!50192 b!57078)))

(assert (=> bs!36217 (= (dynLambda!917 lambda!9040 (v!2048 (value!4096 lt!10505))) true)))

(assert (=> b!57152 d!50192))

(declare-fun b_lambda!15379 () Bool)

(assert (= b_lambda!15343 (or b!57090 b_lambda!15379)))

(declare-fun bs!36218 () Bool)

(declare-fun d!50194 () Bool)

(assert (= bs!36218 (and d!50194 b!57090)))

(assert (=> bs!36218 (= (dynLambda!917 lambda!9042 lt!10561) true)))

(assert (=> b!57188 d!50194))

(declare-fun b_lambda!15381 () Bool)

(assert (= b_lambda!15327 (or b!57055 b_lambda!15381)))

(declare-fun bs!36219 () Bool)

(declare-fun d!50196 () Bool)

(assert (= bs!36219 (and d!50196 b!57055)))

(assert (=> bs!36219 (= (dynLambda!917 lambda!9031 lt!10547) (is-Integer!253 lt!10547))))

(assert (=> d!50130 d!50196))

(declare-fun b_lambda!15383 () Bool)

(assert (= b_lambda!15321 (or b!57072 b_lambda!15383)))

(declare-fun bs!36220 () Bool)

(declare-fun d!50198 () Bool)

(assert (= bs!36220 (and d!50198 b!57072)))

(assert (=> bs!36220 (= (dynLambda!917 lambda!9039 (v!2048 (value!4096 lt!10509))) true)))

(assert (=> b!57130 d!50198))

(declare-fun b_lambda!15385 () Bool)

(assert (= b_lambda!15325 (or b!57090 b_lambda!15385)))

(declare-fun bs!36221 () Bool)

(declare-fun d!50200 () Bool)

(assert (= bs!36221 (and d!50200 b!57090)))

(assert (=> bs!36221 (= (dynLambda!917 lambda!9042 (v!2048 (value!4096 lt!10506))) true)))

(assert (=> b!57143 d!50200))

(declare-fun b_lambda!15387 () Bool)

(assert (= b_lambda!15339 (or b!57072 b_lambda!15387)))

(declare-fun bs!36222 () Bool)

(declare-fun d!50202 () Bool)

(assert (= bs!36222 (and d!50202 b!57072)))

(assert (=> bs!36222 (= (dynLambda!917 lambda!9039 lt!10556) true)))

(assert (=> b!57179 d!50202))

(declare-fun b_lambda!15389 () Bool)

(assert (= b_lambda!15355 (or b!57055 b_lambda!15389)))

(declare-fun bs!36223 () Bool)

(declare-fun d!50204 () Bool)

(assert (= bs!36223 (and d!50204 b!57055)))

(assert (=> bs!36223 (= (dynLambda!917 lambda!9031 lt!10577) (is-Integer!253 lt!10577))))

(assert (=> d!50078 d!50204))

(declare-fun b_lambda!15391 () Bool)

(assert (= b_lambda!15319 (or b!57078 b_lambda!15391)))

(declare-fun bs!36224 () Bool)

(declare-fun d!50206 () Bool)

(assert (= bs!36224 (and d!50206 b!57078)))

(assert (=> bs!36224 (= (dynLambda!917 lambda!9040 lt!10539) true)))

(assert (=> b!57129 d!50206))

(declare-fun b_lambda!15393 () Bool)

(assert (= b_lambda!15329 (or b!57078 b_lambda!15393)))

(declare-fun bs!36225 () Bool)

(declare-fun d!50208 () Bool)

(assert (= bs!36225 (and d!50208 b!57078)))

(assert (=> bs!36225 (= (dynLambda!917 lambda!9040 (v!2048 (value!4096 lt!10509))) true)))

(assert (=> b!57148 d!50208))

(declare-fun b_lambda!15395 () Bool)

(assert (= b_lambda!15349 (or b!57055 b_lambda!15395)))

(declare-fun bs!36226 () Bool)

(declare-fun d!50210 () Bool)

(assert (= bs!36226 (and d!50210 b!57055)))

(assert (=> bs!36226 (= (dynLambda!917 lambda!9031 lt!10571) (is-Integer!253 lt!10571))))

(assert (=> d!50086 d!50210))

(push 1)

(assert (not b_lambda!15365))

(assert (not b!57168))

(assert (not b!57210))

(assert (not b!57169))

(assert (not b_lambda!15387))

(assert (not b!57195))

(assert (not d!50140))

(assert (not d!50120))

(assert (not b!57174))

(assert (not b_lambda!15369))

(assert (not b!57147))

(assert (not b!57222))

(assert (not b!57196))

(assert (not b!57201))

(assert (not b_lambda!15359))

(assert (not b!57213))

(assert (not b!57179))

(assert (not b!57187))

(assert (not b_lambda!15381))

(assert (not b_lambda!15391))

(assert (not d!50116))

(assert (not b_lambda!15307))

(assert (not b!57165))

(assert (not d!50144))

(assert (not b!57176))

(assert (not b!57221))

(assert (not d!50156))

(assert (not b!57140))

(assert (not b!57215))

(assert (not b_lambda!15367))

(assert (not b_lambda!15379))

(assert (not b_lambda!15389))

(assert (not b_lambda!15315))

(assert (not b_lambda!15361))

(assert (not b_lambda!15309))

(assert (not b!57227))

(assert (not d!50148))

(assert (not b!57219))

(assert (not b_lambda!15371))

(assert (not b!57145))

(assert (not b_lambda!15313))

(assert (not b_lambda!15363))

(assert (not b_lambda!15377))

(assert (not b!57154))

(assert (not b!57194))

(assert (not b!57198))

(assert (not d!50160))

(assert (not b!57129))

(assert (not b!57216))

(assert (not b!57218))

(assert (not b!57124))

(assert (not b!57192))

(assert (not b!57182))

(assert (not b_lambda!15357))

(assert (not d!50152))

(assert (not d!50130))

(assert (not b!57191))

(assert (not b_lambda!15383))

(assert (not b_lambda!15303))

(assert (not b_lambda!15305))

(assert (not b!57171))

(assert (not b!57225))

(assert (not b_lambda!15393))

(assert (not b!57185))

(assert (not b!57212))

(assert (not b!57199))

(assert (not b_lambda!15385))

(assert (not b!57178))

(assert (not b_lambda!15311))

(assert (not d!50162))

(assert (not d!50170))

(assert (not b_lambda!15301))

(assert (not b!57156))

(assert (not d!50168))

(assert (not b_lambda!15375))

(assert (not b_lambda!15373))

(assert (not b!57163))

(assert (not b!57142))

(assert (not b!57183))

(assert (not b!57141))

(assert (not d!50154))

(assert (not b!57138))

(assert (not b!57224))

(assert (not b!57180))

(assert (not b!57188))

(assert (not b_lambda!15395))

(assert (not d!50122))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


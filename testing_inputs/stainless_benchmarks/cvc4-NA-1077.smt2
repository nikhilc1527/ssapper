; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7944 () Bool)

(assert start!7944)

(declare-fun b_free!7277 () Bool)

(declare-fun b_next!39019 () Bool)

(assert (=> start!7944 (= b_free!7277 (not b_next!39019))))

(declare-fun tp!16203 () Bool)

(declare-fun b_and!58509 () Bool)

(assert (=> start!7944 (= tp!16203 b_and!58509)))

(declare-fun b_free!7279 () Bool)

(declare-fun b_next!39021 () Bool)

(assert (=> start!7944 (= b_free!7279 (not b_next!39021))))

(declare-fun tp!16198 () Bool)

(declare-fun b_and!58511 () Bool)

(assert (=> start!7944 (= tp!16198 b_and!58511)))

(declare-fun A!2067 () Int)

(declare-fun b!57241 () Bool)

(declare-fun lambda!9072 () Int)

(declare-fun b_next!39023 () Bool)

(assert (=> start!7944 (= b_next!39019 (or (and b!57241 (= lambda!9072 A!2067)) b_next!39023))))

(declare-fun b_next!39025 () Bool)

(declare-fun A!2072 () Int)

(assert (=> start!7944 (= b_next!39021 (or (and b!57241 (= lambda!9072 A!2072)) b_next!39025))))

(declare-fun b!57240 () Bool)

(declare-fun e!30411 () Bool)

(declare-datatypes () ((Option!315 (Some!302 (v!2049 Object!265)) (None!303)) (Object!265 (BigIntStructure!13) (StructureExt!13 (__x!143 Int)) (OptionStructure!13 (ev!23 Object!265)) (Option!316 (value!4099 Option!315)) (Integer!254 (value!4100 Int)) (Open!265 (value!4101 Int)))))

(declare-fun thiss!7962 () Object!265)

(declare-fun x!22968 () Option!315)

(declare-fun y!1690 () Option!315)

(assert (=> b!57240 (= e!30411 (and (or (not (is-None!303 x!22968)) (not (is-None!303 y!1690))) (not (is-None!303 y!1690)) (not (is-None!303 x!22968)) (= A!2072 A!2067) (not (is-OptionStructure!13 thiss!7962))))))

(declare-fun res!26472 () Bool)

(assert (=> start!7944 (=> (not res!26472) (not e!30411))))

(declare-fun isOptionStructure!0 (Object!265 Int) Bool)

(assert (=> start!7944 (= res!26472 (isOptionStructure!0 thiss!7962 A!2067))))

(assert (=> start!7944 e!30411))

(assert (=> start!7944 tp!16203))

(declare-fun lt!10588 () Object!265)

(assert (=> start!7944 (= lt!10588 thiss!7962)))

(declare-fun e!30408 () Bool)

(assert (=> start!7944 (and e!30408 (isOptionStructure!0 lt!10588 A!2067))))

(declare-fun e!30409 () Bool)

(assert (=> start!7944 e!30409))

(assert (=> start!7944 tp!16198))

(declare-fun e!30410 () Bool)

(assert (=> start!7944 e!30410))

(declare-fun lt!10591 () Object!265)

(declare-fun tp!16200 () Bool)

(declare-fun isStructure!0 (Object!265 Int) Bool)

(assert (=> b!57241 (= e!30408 (and tp!16200 (isStructure!0 lt!10591 lambda!9072)))))

(assert (=> b!57241 (= lt!10591 (ev!23 thiss!7962))))

(declare-fun lt!10590 () Object!265)

(declare-fun tp!16202 () Bool)

(declare-fun b!57242 () Bool)

(declare-fun dynLambda!918 (Int Object!265) Bool)

(assert (=> b!57242 (= e!30409 (and tp!16202 (dynLambda!918 A!2067 lt!10590)))))

(assert (=> b!57242 (= lt!10590 (v!2049 x!22968))))

(declare-fun b!57243 () Bool)

(declare-fun e!30407 () Bool)

(declare-fun tp!16201 () Bool)

(assert (=> b!57243 (= e!30407 tp!16201)))

(declare-fun lt!10589 () Object!265)

(declare-fun tp!16199 () Bool)

(declare-fun b!57244 () Bool)

(assert (=> b!57244 (= e!30410 (and tp!16199 (dynLambda!918 A!2067 lt!10589)))))

(assert (=> b!57244 (= lt!10589 (v!2049 y!1690))))

(declare-fun b!57245 () Bool)

(assert (=> b!57245 (= e!30408 e!30407)))

(assert (= (and start!7944 res!26472) b!57240))

(assert (= (and start!7944 (is-OptionStructure!13 thiss!7962)) b!57241))

(assert (= (and b!57245 (is-Some!302 (value!4099 thiss!7962))) b!57243))

(assert (= (and start!7944 (is-Option!316 thiss!7962)) b!57245))

(assert (= (and start!7944 (is-Some!302 x!22968)) b!57242))

(assert (= (and start!7944 (is-Some!302 y!1690)) b!57244))

(declare-fun b_lambda!15397 () Bool)

(assert (=> (not b_lambda!15397) (not b!57242)))

(declare-fun t!47044 () Bool)

(declare-fun tb!46043 () Bool)

(assert (=> (and start!7944 (= A!2067 A!2067) t!47044) tb!46043))

(declare-fun result!46411 () Bool)

(assert (=> tb!46043 (= result!46411 true)))

(assert (=> b!57242 t!47044))

(declare-fun b_and!58513 () Bool)

(assert (= b_and!58509 (and (=> t!47044 result!46411) b_and!58513)))

(declare-fun tb!46045 () Bool)

(declare-fun t!47046 () Bool)

(assert (=> (and start!7944 (= A!2072 A!2067) t!47046) tb!46045))

(declare-fun result!46413 () Bool)

(assert (=> tb!46045 (= result!46413 true)))

(assert (=> b!57242 t!47046))

(declare-fun b_and!58515 () Bool)

(assert (= b_and!58511 (and (=> t!47046 result!46413) b_and!58515)))

(declare-fun b_lambda!15399 () Bool)

(assert (=> (not b_lambda!15399) (not b!57244)))

(declare-fun t!47048 () Bool)

(declare-fun tb!46047 () Bool)

(assert (=> (and start!7944 (= A!2067 A!2067) t!47048) tb!46047))

(declare-fun result!46415 () Bool)

(assert (=> tb!46047 (= result!46415 true)))

(assert (=> b!57244 t!47048))

(declare-fun b_and!58517 () Bool)

(assert (= b_and!58513 (and (=> t!47048 result!46415) b_and!58517)))

(declare-fun tb!46049 () Bool)

(declare-fun t!47050 () Bool)

(assert (=> (and start!7944 (= A!2072 A!2067) t!47050) tb!46049))

(declare-fun result!46417 () Bool)

(assert (=> tb!46049 (= result!46417 true)))

(assert (=> b!57244 t!47050))

(declare-fun b_and!58519 () Bool)

(assert (= b_and!58515 (and (=> t!47050 result!46417) b_and!58519)))

(declare-fun m!62156 () Bool)

(assert (=> start!7944 m!62156))

(declare-fun m!62158 () Bool)

(assert (=> start!7944 m!62158))

(declare-fun m!62160 () Bool)

(assert (=> b!57241 m!62160))

(declare-fun m!62162 () Bool)

(assert (=> b!57242 m!62162))

(declare-fun m!62164 () Bool)

(assert (=> b!57244 m!62164))

(push 1)

(assert (not b!57241))

(assert (not b_next!39025))

(assert (not b!57242))

(assert (not start!7944))

(assert (not b_lambda!15397))

(assert b_and!58517)

(assert (not b_lambda!15399))

(assert (not b!57243))

(assert b_and!58519)

(assert (not b_next!39023))

(assert (not b!57244))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58517)

(assert b_and!58519)

(assert (not b_next!39025))

(assert (not b_next!39023))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15401 () Bool)

(assert (= b_lambda!15397 (or (and b!57241 (= lambda!9072 A!2067)) (and start!7944 b_free!7277) (and start!7944 b_free!7279 (= A!2072 A!2067)) b_lambda!15401)))

(declare-fun bs!36228 () Bool)

(declare-fun d!50212 () Bool)

(assert (= bs!36228 (and d!50212 b!57241)))

(assert (=> bs!36228 (= (dynLambda!918 lambda!9072 lt!10590) true)))

(assert (=> (and b!57241 (= lambda!9072 A!2067) b!57242) d!50212))

(declare-fun b_lambda!15403 () Bool)

(assert (= b_lambda!15399 (or (and b!57241 (= lambda!9072 A!2067)) (and start!7944 b_free!7277) (and start!7944 b_free!7279 (= A!2072 A!2067)) b_lambda!15403)))

(declare-fun bs!36229 () Bool)

(declare-fun d!50214 () Bool)

(assert (= bs!36229 (and d!50214 b!57241)))

(assert (=> bs!36229 (= (dynLambda!918 lambda!9072 lt!10589) true)))

(assert (=> (and b!57241 (= lambda!9072 A!2067) b!57244) d!50214))

(push 1)

(assert (not b!57241))

(assert (not b_next!39025))

(assert (not b!57242))

(assert (not start!7944))

(assert b_and!58517)

(assert (not b_lambda!15403))

(assert (not b!57243))

(assert b_and!58519)

(assert (not b_next!39023))

(assert (not b_lambda!15401))

(assert (not b!57244))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58517)

(assert b_and!58519)

(assert (not b_next!39025))

(assert (not b_next!39023))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50216 () Bool)

(declare-fun res!26475 () Bool)

(declare-fun e!30414 () Bool)

(assert (=> d!50216 (=> (not res!26475) (not e!30414))))

(assert (=> d!50216 (= res!26475 (is-OptionStructure!13 thiss!7962))))

(assert (=> d!50216 (= (isOptionStructure!0 thiss!7962 A!2067) e!30414)))

(declare-fun b!57248 () Bool)

(assert (=> b!57248 (= e!30414 (isStructure!0 (ev!23 thiss!7962) A!2067))))

(assert (= (and d!50216 res!26475) b!57248))

(declare-fun m!62166 () Bool)

(assert (=> b!57248 m!62166))

(assert (=> start!7944 d!50216))

(declare-fun d!50218 () Bool)

(declare-fun res!26476 () Bool)

(declare-fun e!30415 () Bool)

(assert (=> d!50218 (=> (not res!26476) (not e!30415))))

(assert (=> d!50218 (= res!26476 (is-OptionStructure!13 lt!10588))))

(assert (=> d!50218 (= (isOptionStructure!0 lt!10588 A!2067) e!30415)))

(declare-fun b!57249 () Bool)

(assert (=> b!57249 (= e!30415 (isStructure!0 (ev!23 lt!10588) A!2067))))

(assert (= (and d!50218 res!26476) b!57249))

(declare-fun m!62168 () Bool)

(assert (=> b!57249 m!62168))

(assert (=> start!7944 d!50218))

(declare-fun bs!36230 () Bool)

(declare-fun b!57255 () Bool)

(assert (= bs!36230 (and b!57255 b!57241)))

(declare-fun lambda!9075 () Int)

(assert (=> bs!36230 (= lambda!9075 lambda!9072)))

(declare-fun b_next!39027 () Bool)

(assert (=> start!7944 (= b_next!39023 (or (and b!57255 (= lambda!9075 A!2067)) b_next!39027))))

(declare-fun b_next!39029 () Bool)

(assert (=> start!7944 (= b_next!39025 (or (and b!57255 (= lambda!9075 A!2072)) b_next!39029))))

(declare-fun d!50220 () Bool)

(declare-fun res!26481 () Bool)

(declare-fun e!30418 () Bool)

(assert (=> d!50220 (=> res!26481 e!30418)))

(declare-fun isBigIntStructure!0 (Object!265) Bool)

(assert (=> d!50220 (= res!26481 (isBigIntStructure!0 lt!10591))))

(assert (=> d!50220 (= (isStructure!0 lt!10591 lambda!9072) e!30418)))

(declare-fun b!57254 () Bool)

(declare-fun res!26482 () Bool)

(assert (=> b!57254 (=> res!26482 e!30418)))

(declare-fun isStructureExt!0 (Object!265 Int) Bool)

(assert (=> b!57254 (= res!26482 (isStructureExt!0 lt!10591 lambda!9072))))

(assert (=> b!57255 (= e!30418 (isOptionStructure!0 lt!10591 lambda!9075))))

(assert (= (and d!50220 (not res!26481)) b!57254))

(assert (= (and b!57254 (not res!26482)) b!57255))

(declare-fun m!62170 () Bool)

(assert (=> d!50220 m!62170))

(declare-fun m!62172 () Bool)

(assert (=> b!57254 m!62172))

(declare-fun m!62174 () Bool)

(assert (=> b!57255 m!62174))

(assert (=> b!57241 d!50220))

(declare-fun bs!36231 () Bool)

(declare-fun b!57264 () Bool)

(assert (= bs!36231 (and b!57264 b!57241)))

(declare-fun lambda!9078 () Int)

(assert (=> bs!36231 (= lambda!9078 lambda!9072)))

(declare-fun bs!36232 () Bool)

(assert (= bs!36232 (and b!57264 b!57255)))

(assert (=> bs!36232 (= lambda!9078 lambda!9075)))

(declare-fun b_next!39031 () Bool)

(assert (=> start!7944 (= b_next!39027 (or (and b!57264 (= lambda!9078 A!2067)) b_next!39031))))

(declare-fun b_next!39033 () Bool)

(assert (=> start!7944 (= b_next!39029 (or (and b!57264 (= lambda!9078 A!2072)) b_next!39033))))

(declare-fun lt!10594 () Object!265)

(declare-fun e!30423 () Bool)

(declare-fun tp!16208 () Bool)

(assert (=> b!57264 (= e!30423 (and tp!16208 (isStructure!0 lt!10594 lambda!9078)))))

(assert (=> b!57264 (= lt!10594 (ev!23 (v!2049 x!22968)))))

(declare-fun b!57266 () Bool)

(declare-fun e!30424 () Bool)

(declare-fun tp!16209 () Bool)

(assert (=> b!57266 (= e!30424 tp!16209)))

(declare-fun b!57265 () Bool)

(assert (=> b!57265 (= e!30423 e!30424)))

(assert (=> b!57242 (= tp!16202 e!30423)))

(assert (= (and b!57242 (is-OptionStructure!13 (v!2049 x!22968))) b!57264))

(assert (= (and b!57265 (is-Some!302 (value!4099 (v!2049 x!22968)))) b!57266))

(assert (= (and b!57242 (is-Option!316 (v!2049 x!22968))) b!57265))

(declare-fun m!62176 () Bool)

(assert (=> b!57264 m!62176))

(declare-fun bs!36233 () Bool)

(declare-fun b!57267 () Bool)

(assert (= bs!36233 (and b!57267 b!57241)))

(declare-fun lambda!9079 () Int)

(assert (=> bs!36233 (= lambda!9079 lambda!9072)))

(declare-fun bs!36234 () Bool)

(assert (= bs!36234 (and b!57267 b!57255)))

(assert (=> bs!36234 (= lambda!9079 lambda!9075)))

(declare-fun bs!36235 () Bool)

(assert (= bs!36235 (and b!57267 b!57264)))

(assert (=> bs!36235 (= lambda!9079 lambda!9078)))

(declare-fun b_next!39035 () Bool)

(assert (=> start!7944 (= b_next!39031 (or (and b!57267 (= lambda!9079 A!2067)) b_next!39035))))

(declare-fun b_next!39037 () Bool)

(assert (=> start!7944 (= b_next!39033 (or (and b!57267 (= lambda!9079 A!2072)) b_next!39037))))

(declare-fun e!30425 () Bool)

(declare-fun tp!16210 () Bool)

(declare-fun lt!10595 () Object!265)

(assert (=> b!57267 (= e!30425 (and tp!16210 (isStructure!0 lt!10595 lambda!9079)))))

(assert (=> b!57267 (= lt!10595 (ev!23 (v!2049 y!1690)))))

(declare-fun b!57269 () Bool)

(declare-fun e!30426 () Bool)

(declare-fun tp!16211 () Bool)

(assert (=> b!57269 (= e!30426 tp!16211)))

(declare-fun b!57268 () Bool)

(assert (=> b!57268 (= e!30425 e!30426)))

(assert (=> b!57244 (= tp!16199 e!30425)))

(assert (= (and b!57244 (is-OptionStructure!13 (v!2049 y!1690))) b!57267))

(assert (= (and b!57268 (is-Some!302 (value!4099 (v!2049 y!1690)))) b!57269))

(assert (= (and b!57244 (is-Option!316 (v!2049 y!1690))) b!57268))

(declare-fun m!62178 () Bool)

(assert (=> b!57267 m!62178))

(declare-fun e!30427 () Bool)

(declare-fun tp!16212 () Bool)

(declare-fun lt!10596 () Object!265)

(declare-fun b!57270 () Bool)

(assert (=> b!57270 (= e!30427 (and tp!16212 (isStructure!0 lt!10596 lambda!9072)))))

(assert (=> b!57270 (= lt!10596 (ev!23 (ev!23 thiss!7962)))))

(declare-fun b!57272 () Bool)

(declare-fun e!30428 () Bool)

(declare-fun tp!16213 () Bool)

(assert (=> b!57272 (= e!30428 tp!16213)))

(declare-fun b!57271 () Bool)

(assert (=> b!57271 (= e!30427 e!30428)))

(assert (=> b!57241 (= tp!16200 e!30427)))

(assert (= (and b!57241 (is-OptionStructure!13 (ev!23 thiss!7962))) b!57270))

(assert (= (and b!57271 (is-Some!302 (value!4099 (ev!23 thiss!7962)))) b!57272))

(assert (= (and b!57241 (is-Option!316 (ev!23 thiss!7962))) b!57271))

(declare-fun m!62180 () Bool)

(assert (=> b!57270 m!62180))

(declare-fun bs!36236 () Bool)

(declare-fun b!57273 () Bool)

(assert (= bs!36236 (and b!57273 b!57241)))

(declare-fun lambda!9080 () Int)

(assert (=> bs!36236 (= lambda!9080 lambda!9072)))

(declare-fun bs!36237 () Bool)

(assert (= bs!36237 (and b!57273 b!57255)))

(assert (=> bs!36237 (= lambda!9080 lambda!9075)))

(declare-fun bs!36238 () Bool)

(assert (= bs!36238 (and b!57273 b!57264)))

(assert (=> bs!36238 (= lambda!9080 lambda!9078)))

(declare-fun bs!36239 () Bool)

(assert (= bs!36239 (and b!57273 b!57267)))

(assert (=> bs!36239 (= lambda!9080 lambda!9079)))

(declare-fun b_next!39039 () Bool)

(assert (=> start!7944 (= b_next!39035 (or (and b!57273 (= lambda!9080 A!2067)) b_next!39039))))

(declare-fun b_next!39041 () Bool)

(assert (=> start!7944 (= b_next!39037 (or (and b!57273 (= lambda!9080 A!2072)) b_next!39041))))

(declare-fun e!30429 () Bool)

(declare-fun lt!10597 () Object!265)

(declare-fun tp!16214 () Bool)

(assert (=> b!57273 (= e!30429 (and tp!16214 (isStructure!0 lt!10597 lambda!9080)))))

(assert (=> b!57273 (= lt!10597 (ev!23 (v!2049 (value!4099 thiss!7962))))))

(declare-fun b!57275 () Bool)

(declare-fun e!30430 () Bool)

(declare-fun tp!16215 () Bool)

(assert (=> b!57275 (= e!30430 tp!16215)))

(declare-fun b!57274 () Bool)

(assert (=> b!57274 (= e!30429 e!30430)))

(assert (=> b!57243 (= tp!16201 e!30429)))

(assert (= (and b!57243 (is-OptionStructure!13 (v!2049 (value!4099 thiss!7962)))) b!57273))

(assert (= (and b!57274 (is-Some!302 (value!4099 (v!2049 (value!4099 thiss!7962))))) b!57275))

(assert (= (and b!57243 (is-Option!316 (v!2049 (value!4099 thiss!7962)))) b!57274))

(declare-fun m!62182 () Bool)

(assert (=> b!57273 m!62182))

(push 1)

(assert (not b_next!39041))

(assert (not b!57264))

(assert (not b!57248))

(assert (not b!57269))

(assert (not b!57273))

(assert b_and!58517)

(assert (not b_lambda!15403))

(assert (not b!57270))

(assert (not b!57254))

(assert (not b!57249))

(assert (not b!57266))

(assert (not b!57255))

(assert (not d!50220))

(assert (not b!57272))

(assert b_and!58519)

(assert (not b_lambda!15401))

(assert (not b!57267))

(assert (not b!57275))

(assert (not b_next!39039))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58517)

(assert b_and!58519)

(assert (not b_next!39041))

(assert (not b_next!39039))

(check-sat)

(pop 1)


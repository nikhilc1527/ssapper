; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11166 () Bool)

(assert start!11166)

(declare-fun b_free!7429 () Bool)

(declare-fun b_next!39613 () Bool)

(assert (=> start!11166 (= b_free!7429 (not b_next!39613))))

(declare-fun tp!17056 () Bool)

(declare-fun b_and!59111 () Bool)

(assert (=> start!11166 (= tp!17056 b_and!59111)))

(declare-fun b!85395 () Bool)

(declare-fun res!44328 () Bool)

(declare-fun e!46288 () Bool)

(assert (=> b!85395 (=> (not res!44328) (not e!46288))))

(declare-fun inductVal!909 () Bool)

(declare-fun p!802 () Int)

(declare-datatypes () ((List!704 (Cons!661 (h!1034 Int) (t!48137 List!704)) (Nil!663))))

(declare-fun ls!66 () List!704)

(declare-fun forall_last!0 (List!704 Int) Bool)

(assert (=> b!85395 (= res!44328 (= inductVal!909 (forall_last!0 (t!48137 ls!66) p!802)))))

(declare-fun b!85397 () Bool)

(declare-fun res!44330 () Bool)

(assert (=> b!85397 (=> (not res!44330) (not e!46288))))

(declare-fun isEmpty!696 (List!704) Bool)

(assert (=> b!85397 (= res!44330 (not (isEmpty!696 ls!66)))))

(declare-fun b!85398 () Bool)

(declare-fun dynLambda!1013 (Int Int) Bool)

(declare-fun last!32 (List!704) Int)

(assert (=> b!85398 (= e!46288 (not (dynLambda!1013 p!802 (last!32 ls!66))))))

(declare-fun res!44329 () Bool)

(assert (=> start!11166 (=> (not res!44329) (not e!46288))))

(assert (=> start!11166 (= res!44329 (is-Cons!661 ls!66))))

(assert (=> start!11166 e!46288))

(assert (=> start!11166 true))

(assert (=> start!11166 tp!17056))

(declare-fun b!85396 () Bool)

(declare-fun res!44331 () Bool)

(assert (=> b!85396 (=> (not res!44331) (not e!46288))))

(declare-fun forall!52 (List!704 Int) Bool)

(assert (=> b!85396 (= res!44331 (forall!52 ls!66 p!802))))

(assert (= (and start!11166 res!44329) b!85395))

(assert (= (and b!85395 res!44328) b!85396))

(assert (= (and b!85396 res!44331) b!85397))

(assert (= (and b!85397 res!44330) b!85398))

(declare-fun b_lambda!16799 () Bool)

(assert (=> (not b_lambda!16799) (not b!85398)))

(declare-fun t!48136 () Bool)

(declare-fun tb!46361 () Bool)

(assert (=> (and start!11166 (= p!802 p!802) t!48136) tb!46361))

(declare-fun result!46791 () Bool)

(assert (=> tb!46361 (= result!46791 true)))

(assert (=> b!85398 t!48136))

(declare-fun b_and!59113 () Bool)

(assert (= b_and!59111 (and (=> t!48136 result!46791) b_and!59113)))

(declare-fun m!81240 () Bool)

(assert (=> b!85395 m!81240))

(declare-fun m!81242 () Bool)

(assert (=> b!85397 m!81242))

(declare-fun m!81244 () Bool)

(assert (=> b!85398 m!81244))

(assert (=> b!85398 m!81244))

(declare-fun m!81246 () Bool)

(assert (=> b!85398 m!81246))

(declare-fun m!81248 () Bool)

(assert (=> b!85396 m!81248))

(push 1)

(assert b_and!59113)

(assert (not b_lambda!16799))

(assert (not b!85398))

(assert (not b!85397))

(assert (not b_next!39613))

(assert (not b!85396))

(assert (not b!85395))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59113)

(assert (not b_next!39613))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!16801 () Bool)

(assert (= b_lambda!16799 (or (and start!11166 b_free!7429) b_lambda!16801)))

(push 1)

(assert b_and!59113)

(assert (not b!85398))

(assert (not b_lambda!16801))

(assert (not b!85397))

(assert (not b_next!39613))

(assert (not b!85396))

(assert (not b!85395))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59113)

(assert (not b_next!39613))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!85411 () Bool)

(declare-fun e!46296 () Bool)

(declare-fun e!46297 () Bool)

(assert (=> b!85411 (= e!46296 e!46297)))

(declare-fun res!44343 () Bool)

(assert (=> b!85411 (=> res!44343 e!46297)))

(assert (=> b!85411 (= res!44343 (not (forall!52 (t!48137 ls!66) p!802)))))

(declare-fun lt!19899 () Bool)

(assert (=> b!85411 (= lt!19899 (forall_last!0 (t!48137 (t!48137 ls!66)) p!802))))

(declare-fun b!85412 () Bool)

(assert (=> b!85412 (= e!46297 (dynLambda!1013 p!802 (last!32 (t!48137 ls!66))))))

(declare-fun b!85413 () Bool)

(declare-fun res!44341 () Bool)

(declare-fun e!46295 () Bool)

(assert (=> b!85413 (=> res!44341 e!46295)))

(assert (=> b!85413 (= res!44341 (isEmpty!696 (t!48137 ls!66)))))

(declare-fun b!85414 () Bool)

(declare-fun res!44342 () Bool)

(assert (=> b!85414 (=> res!44342 e!46297)))

(assert (=> b!85414 (= res!44342 (isEmpty!696 (t!48137 ls!66)))))

(declare-fun b!85415 () Bool)

(assert (=> b!85415 (= e!46295 (dynLambda!1013 p!802 (last!32 (t!48137 ls!66))))))

(declare-fun d!57327 () Bool)

(assert (=> d!57327 e!46296))

(declare-fun c!21215 () Bool)

(assert (=> d!57327 (= c!21215 (is-Cons!661 (t!48137 ls!66)))))

(assert (=> d!57327 (= (forall_last!0 (t!48137 ls!66) p!802) true)))

(declare-fun b!85416 () Bool)

(assert (=> b!85416 (= e!46296 e!46295)))

(declare-fun res!44340 () Bool)

(assert (=> b!85416 (=> res!44340 e!46295)))

(assert (=> b!85416 (= res!44340 (not (forall!52 (t!48137 ls!66) p!802)))))

(assert (= (and b!85411 (not res!44343)) b!85414))

(assert (= (and b!85414 (not res!44342)) b!85412))

(assert (= (and b!85416 (not res!44340)) b!85413))

(assert (= (and b!85413 (not res!44341)) b!85415))

(assert (= (and d!57327 c!21215) b!85411))

(assert (= (and d!57327 (not c!21215)) b!85416))

(declare-fun b_lambda!16803 () Bool)

(assert (=> (not b_lambda!16803) (not b!85412)))

(declare-fun t!48139 () Bool)

(declare-fun tb!46363 () Bool)

(assert (=> (and start!11166 (= p!802 p!802) t!48139) tb!46363))

(declare-fun result!46793 () Bool)

(assert (=> tb!46363 (= result!46793 true)))

(assert (=> b!85412 t!48139))

(declare-fun b_and!59115 () Bool)

(assert (= b_and!59113 (and (=> t!48139 result!46793) b_and!59115)))

(declare-fun b_lambda!16805 () Bool)

(assert (=> (not b_lambda!16805) (not b!85415)))

(assert (=> b!85415 t!48139))

(declare-fun b_and!59117 () Bool)

(assert (= b_and!59115 (and (=> t!48139 result!46793) b_and!59117)))

(declare-fun m!81250 () Bool)

(assert (=> b!85415 m!81250))

(assert (=> b!85415 m!81250))

(declare-fun m!81252 () Bool)

(assert (=> b!85415 m!81252))

(declare-fun m!81254 () Bool)

(assert (=> b!85414 m!81254))

(declare-fun m!81256 () Bool)

(assert (=> b!85411 m!81256))

(declare-fun m!81258 () Bool)

(assert (=> b!85411 m!81258))

(assert (=> b!85416 m!81256))

(assert (=> b!85413 m!81254))

(assert (=> b!85412 m!81250))

(assert (=> b!85412 m!81250))

(assert (=> b!85412 m!81252))

(assert (=> b!85395 d!57327))

(declare-fun d!57329 () Bool)

(assert (=> d!57329 (= (isEmpty!696 ls!66) (is-Nil!663 ls!66))))

(assert (=> b!85397 d!57329))

(declare-fun d!57331 () Bool)

(declare-fun res!44348 () Bool)

(declare-fun e!46302 () Bool)

(assert (=> d!57331 (=> res!44348 e!46302)))

(assert (=> d!57331 (= res!44348 (is-Nil!663 ls!66))))

(assert (=> d!57331 (= (forall!52 ls!66 p!802) e!46302)))

(declare-fun b!85421 () Bool)

(declare-fun e!46303 () Bool)

(assert (=> b!85421 (= e!46302 e!46303)))

(declare-fun res!44349 () Bool)

(assert (=> b!85421 (=> (not res!44349) (not e!46303))))

(assert (=> b!85421 (= res!44349 (dynLambda!1013 p!802 (h!1034 ls!66)))))

(declare-fun b!85422 () Bool)

(assert (=> b!85422 (= e!46303 (forall!52 (t!48137 ls!66) p!802))))

(assert (= (and d!57331 (not res!44348)) b!85421))

(assert (= (and b!85421 res!44349) b!85422))

(declare-fun b_lambda!16807 () Bool)

(assert (=> (not b_lambda!16807) (not b!85421)))

(declare-fun t!48141 () Bool)

(declare-fun tb!46365 () Bool)

(assert (=> (and start!11166 (= p!802 p!802) t!48141) tb!46365))

(declare-fun result!46795 () Bool)

(assert (=> tb!46365 (= result!46795 true)))

(assert (=> b!85421 t!48141))

(declare-fun b_and!59119 () Bool)

(assert (= b_and!59117 (and (=> t!48141 result!46795) b_and!59119)))

(declare-fun m!81260 () Bool)

(assert (=> b!85421 m!81260))

(assert (=> b!85422 m!81256))

(assert (=> b!85396 d!57331))

(declare-fun d!57333 () Bool)

(declare-fun lt!19902 () Int)

(declare-fun contains!61 (List!704 Int) Bool)

(assert (=> d!57333 (contains!61 ls!66 lt!19902)))

(declare-fun e!46306 () Int)

(assert (=> d!57333 (= lt!19902 e!46306)))

(declare-fun c!21218 () Bool)

(assert (=> d!57333 (= c!21218 (and (is-Cons!661 ls!66) (is-Nil!663 (t!48137 ls!66))))))

(assert (=> d!57333 (not (isEmpty!696 ls!66))))

(assert (=> d!57333 (= (last!32 ls!66) lt!19902)))

(declare-fun b!85427 () Bool)

(assert (=> b!85427 (= e!46306 (h!1034 ls!66))))

(declare-fun b!85428 () Bool)

(assert (=> b!85428 (= e!46306 (last!32 (t!48137 ls!66)))))

(assert (= (and d!57333 c!21218) b!85427))

(assert (= (and d!57333 (not c!21218)) b!85428))

(declare-fun m!81262 () Bool)

(assert (=> d!57333 m!81262))

(assert (=> d!57333 m!81242))

(assert (=> b!85428 m!81250))

(assert (=> b!85398 d!57333))

(declare-fun b_lambda!16809 () Bool)

(assert (= b_lambda!16803 (or (and start!11166 b_free!7429) b_lambda!16809)))

(declare-fun b_lambda!16811 () Bool)

(assert (= b_lambda!16807 (or (and start!11166 b_free!7429) b_lambda!16811)))

(declare-fun b_lambda!16813 () Bool)

(assert (= b_lambda!16805 (or (and start!11166 b_free!7429) b_lambda!16813)))

(push 1)

(assert (not b!85414))

(assert (not b_lambda!16811))

(assert (not b!85416))

(assert (not b!85412))

(assert b_and!59119)

(assert (not b!85413))

(assert (not b_lambda!16809))

(assert (not b!85428))

(assert (not b_lambda!16801))

(assert (not d!57333))

(assert (not b!85415))

(assert (not b_lambda!16813))

(assert (not b!85411))

(assert (not b_next!39613))

(assert (not b!85422))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59119)

(assert (not b_next!39613))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57335 () Bool)

(declare-fun res!44350 () Bool)

(declare-fun e!46307 () Bool)

(assert (=> d!57335 (=> res!44350 e!46307)))

(assert (=> d!57335 (= res!44350 (is-Nil!663 (t!48137 ls!66)))))

(assert (=> d!57335 (= (forall!52 (t!48137 ls!66) p!802) e!46307)))

(declare-fun b!85429 () Bool)

(declare-fun e!46308 () Bool)

(assert (=> b!85429 (= e!46307 e!46308)))

(declare-fun res!44351 () Bool)

(assert (=> b!85429 (=> (not res!44351) (not e!46308))))

(assert (=> b!85429 (= res!44351 (dynLambda!1013 p!802 (h!1034 (t!48137 ls!66))))))

(declare-fun b!85430 () Bool)

(assert (=> b!85430 (= e!46308 (forall!52 (t!48137 (t!48137 ls!66)) p!802))))

(assert (= (and d!57335 (not res!44350)) b!85429))

(assert (= (and b!85429 res!44351) b!85430))

(declare-fun b_lambda!16815 () Bool)

(assert (=> (not b_lambda!16815) (not b!85429)))

(declare-fun t!48143 () Bool)

(declare-fun tb!46367 () Bool)

(assert (=> (and start!11166 (= p!802 p!802) t!48143) tb!46367))

(declare-fun result!46797 () Bool)

(assert (=> tb!46367 (= result!46797 true)))

(assert (=> b!85429 t!48143))

(declare-fun b_and!59121 () Bool)

(assert (= b_and!59119 (and (=> t!48143 result!46797) b_and!59121)))

(declare-fun m!81264 () Bool)

(assert (=> b!85429 m!81264))

(declare-fun m!81266 () Bool)

(assert (=> b!85430 m!81266))

(assert (=> b!85422 d!57335))

(assert (=> b!85416 d!57335))

(declare-fun d!57337 () Bool)

(declare-fun lt!19903 () Int)

(assert (=> d!57337 (contains!61 (t!48137 ls!66) lt!19903)))

(declare-fun e!46309 () Int)

(assert (=> d!57337 (= lt!19903 e!46309)))

(declare-fun c!21219 () Bool)

(assert (=> d!57337 (= c!21219 (and (is-Cons!661 (t!48137 ls!66)) (is-Nil!663 (t!48137 (t!48137 ls!66)))))))

(assert (=> d!57337 (not (isEmpty!696 (t!48137 ls!66)))))

(assert (=> d!57337 (= (last!32 (t!48137 ls!66)) lt!19903)))

(declare-fun b!85431 () Bool)

(assert (=> b!85431 (= e!46309 (h!1034 (t!48137 ls!66)))))

(declare-fun b!85432 () Bool)

(assert (=> b!85432 (= e!46309 (last!32 (t!48137 (t!48137 ls!66))))))

(assert (= (and d!57337 c!21219) b!85431))

(assert (= (and d!57337 (not c!21219)) b!85432))

(declare-fun m!81268 () Bool)

(assert (=> d!57337 m!81268))

(assert (=> d!57337 m!81254))

(declare-fun m!81270 () Bool)

(assert (=> b!85432 m!81270))

(assert (=> b!85412 d!57337))

(assert (=> b!85415 d!57337))

(declare-fun d!57339 () Bool)

(assert (=> d!57339 (= (isEmpty!696 (t!48137 ls!66)) (is-Nil!663 (t!48137 ls!66)))))

(assert (=> b!85413 d!57339))

(declare-fun d!57341 () Bool)

(declare-fun lt!19906 () Bool)

(declare-fun content!153 (List!704) (Set Int))

(assert (=> d!57341 (= lt!19906 (member lt!19902 (content!153 ls!66)))))

(declare-fun e!46314 () Bool)

(assert (=> d!57341 (= lt!19906 e!46314)))

(declare-fun res!44357 () Bool)

(assert (=> d!57341 (=> (not res!44357) (not e!46314))))

(assert (=> d!57341 (= res!44357 (is-Cons!661 ls!66))))

(assert (=> d!57341 (= (contains!61 ls!66 lt!19902) lt!19906)))

(declare-fun b!85437 () Bool)

(declare-fun e!46315 () Bool)

(assert (=> b!85437 (= e!46314 e!46315)))

(declare-fun res!44356 () Bool)

(assert (=> b!85437 (=> res!44356 e!46315)))

(assert (=> b!85437 (= res!44356 (= (h!1034 ls!66) lt!19902))))

(declare-fun b!85438 () Bool)

(assert (=> b!85438 (= e!46315 (contains!61 (t!48137 ls!66) lt!19902))))

(assert (= (and d!57341 res!44357) b!85437))

(assert (= (and b!85437 (not res!44356)) b!85438))

(declare-fun m!81272 () Bool)

(assert (=> d!57341 m!81272))

(declare-fun m!81274 () Bool)

(assert (=> d!57341 m!81274))

(declare-fun m!81276 () Bool)

(assert (=> b!85438 m!81276))

(assert (=> d!57333 d!57341))

(assert (=> d!57333 d!57329))

(assert (=> b!85411 d!57335))

(declare-fun b!85439 () Bool)

(declare-fun e!46317 () Bool)

(declare-fun e!46318 () Bool)

(assert (=> b!85439 (= e!46317 e!46318)))

(declare-fun res!44361 () Bool)

(assert (=> b!85439 (=> res!44361 e!46318)))

(assert (=> b!85439 (= res!44361 (not (forall!52 (t!48137 (t!48137 ls!66)) p!802)))))

(declare-fun lt!19907 () Bool)

(assert (=> b!85439 (= lt!19907 (forall_last!0 (t!48137 (t!48137 (t!48137 ls!66))) p!802))))

(declare-fun b!85440 () Bool)

(assert (=> b!85440 (= e!46318 (dynLambda!1013 p!802 (last!32 (t!48137 (t!48137 ls!66)))))))

(declare-fun b!85441 () Bool)

(declare-fun res!44359 () Bool)

(declare-fun e!46316 () Bool)

(assert (=> b!85441 (=> res!44359 e!46316)))

(assert (=> b!85441 (= res!44359 (isEmpty!696 (t!48137 (t!48137 ls!66))))))

(declare-fun b!85442 () Bool)

(declare-fun res!44360 () Bool)

(assert (=> b!85442 (=> res!44360 e!46318)))

(assert (=> b!85442 (= res!44360 (isEmpty!696 (t!48137 (t!48137 ls!66))))))

(declare-fun b!85443 () Bool)

(assert (=> b!85443 (= e!46316 (dynLambda!1013 p!802 (last!32 (t!48137 (t!48137 ls!66)))))))

(declare-fun d!57343 () Bool)

(assert (=> d!57343 e!46317))

(declare-fun c!21220 () Bool)

(assert (=> d!57343 (= c!21220 (is-Cons!661 (t!48137 (t!48137 ls!66))))))

(assert (=> d!57343 (= (forall_last!0 (t!48137 (t!48137 ls!66)) p!802) true)))

(declare-fun b!85444 () Bool)

(assert (=> b!85444 (= e!46317 e!46316)))

(declare-fun res!44358 () Bool)

(assert (=> b!85444 (=> res!44358 e!46316)))

(assert (=> b!85444 (= res!44358 (not (forall!52 (t!48137 (t!48137 ls!66)) p!802)))))

(assert (= (and b!85439 (not res!44361)) b!85442))

(assert (= (and b!85442 (not res!44360)) b!85440))

(assert (= (and b!85444 (not res!44358)) b!85441))

(assert (= (and b!85441 (not res!44359)) b!85443))

(assert (= (and d!57343 c!21220) b!85439))

(assert (= (and d!57343 (not c!21220)) b!85444))

(declare-fun b_lambda!16817 () Bool)

(assert (=> (not b_lambda!16817) (not b!85440)))

(declare-fun t!48145 () Bool)

(declare-fun tb!46369 () Bool)

(assert (=> (and start!11166 (= p!802 p!802) t!48145) tb!46369))

(declare-fun result!46799 () Bool)

(assert (=> tb!46369 (= result!46799 true)))

(assert (=> b!85440 t!48145))

(declare-fun b_and!59123 () Bool)

(assert (= b_and!59121 (and (=> t!48145 result!46799) b_and!59123)))

(declare-fun b_lambda!16819 () Bool)

(assert (=> (not b_lambda!16819) (not b!85443)))

(assert (=> b!85443 t!48145))

(declare-fun b_and!59125 () Bool)

(assert (= b_and!59123 (and (=> t!48145 result!46799) b_and!59125)))

(assert (=> b!85443 m!81270))

(assert (=> b!85443 m!81270))

(declare-fun m!81278 () Bool)

(assert (=> b!85443 m!81278))

(declare-fun m!81280 () Bool)

(assert (=> b!85442 m!81280))

(assert (=> b!85439 m!81266))

(declare-fun m!81282 () Bool)

(assert (=> b!85439 m!81282))

(assert (=> b!85444 m!81266))

(assert (=> b!85441 m!81280))

(assert (=> b!85440 m!81270))

(assert (=> b!85440 m!81270))

(assert (=> b!85440 m!81278))

(assert (=> b!85411 d!57343))

(assert (=> b!85414 d!57339))

(assert (=> b!85428 d!57337))

(declare-fun b_lambda!16821 () Bool)

(assert (= b_lambda!16817 (or (and start!11166 b_free!7429) b_lambda!16821)))

(declare-fun b_lambda!16823 () Bool)

(assert (= b_lambda!16819 (or (and start!11166 b_free!7429) b_lambda!16823)))

(declare-fun b_lambda!16825 () Bool)

(assert (= b_lambda!16815 (or (and start!11166 b_free!7429) b_lambda!16825)))

(push 1)

(assert (not b_lambda!16823))

(assert (not d!57337))

(assert (not b!85442))

(assert (not b!85430))

(assert (not b_lambda!16811))

(assert (not b!85440))

(assert (not b_lambda!16809))

(assert (not b_lambda!16801))

(assert (not b!85432))

(assert (not b!85443))

(assert (not b!85441))

(assert (not d!57341))

(assert (not b_lambda!16813))

(assert (not b!85438))

(assert (not b!85439))

(assert (not b!85444))

(assert b_and!59125)

(assert (not b_next!39613))

(assert (not b_lambda!16821))

(assert (not b_lambda!16825))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59125)

(assert (not b_next!39613))

(check-sat)

(pop 1)


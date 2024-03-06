; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9356 () Bool)

(assert start!9356)

(declare-fun b!67240 () Bool)

(declare-fun e!36398 () Bool)

(declare-datatypes () ((Formula!32 (And!37 (lhs!899 Formula!32) (rhs!899 Formula!32)) (Literal!31 (id!4812 Int)) (Implies!37 (lhs!900 Formula!32) (rhs!900 Formula!32)) (Or!37 (lhs!901 Formula!32) (rhs!901 Formula!32)) (Not!37 (f!4152 Formula!32)))))

(declare-fun f!3724 () Formula!32)

(declare-fun isNNF!1 (Formula!32) Bool)

(declare-fun simplify!1 (Formula!32) Formula!32)

(assert (=> b!67240 (= e!36398 (not (isNNF!1 (simplify!1 f!3724))))))

(declare-fun b!67237 () Bool)

(declare-fun res!32156 () Bool)

(assert (=> b!67237 (=> (not res!32156) (not e!36398))))

(assert (=> b!67237 (= res!32156 (and (not (is-And!37 f!3724)) (not (is-Literal!31 f!3724)) (not (is-Implies!37 f!3724)) (is-Or!37 f!3724)))))

(declare-fun b!67238 () Bool)

(declare-fun res!32157 () Bool)

(assert (=> b!67238 (=> (not res!32157) (not e!36398))))

(declare-fun inductVal!284 () Bool)

(declare-fun simplifyPreservesNNF!0 (Formula!32) Bool)

(assert (=> b!67238 (= res!32157 (= inductVal!284 (simplifyPreservesNNF!0 (rhs!901 f!3724))))))

(declare-fun b!67239 () Bool)

(declare-fun res!32155 () Bool)

(assert (=> b!67239 (=> (not res!32155) (not e!36398))))

(declare-fun inductVal!292 () Bool)

(assert (=> b!67239 (= res!32155 (= inductVal!292 (simplifyPreservesNNF!0 (lhs!901 f!3724))))))

(declare-fun res!32158 () Bool)

(assert (=> start!9356 (=> (not res!32158) (not e!36398))))

(assert (=> start!9356 (= res!32158 (isNNF!1 f!3724))))

(assert (=> start!9356 e!36398))

(assert (=> start!9356 true))

(assert (= (and start!9356 res!32158) b!67237))

(assert (= (and b!67237 res!32156) b!67238))

(assert (= (and b!67238 res!32157) b!67239))

(assert (= (and b!67239 res!32155) b!67240))

(declare-fun m!69905 () Bool)

(assert (=> b!67240 m!69905))

(assert (=> b!67240 m!69905))

(declare-fun m!69907 () Bool)

(assert (=> b!67240 m!69907))

(declare-fun m!69909 () Bool)

(assert (=> b!67238 m!69909))

(declare-fun m!69911 () Bool)

(assert (=> b!67239 m!69911))

(declare-fun m!69913 () Bool)

(assert (=> start!9356 m!69913))

(push 1)

(assert (not b!67240))

(assert (not b!67239))

(assert (not start!9356))

(assert (not b!67238))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!67255 () Bool)

(declare-fun e!36407 () Bool)

(declare-fun e!36409 () Bool)

(assert (=> b!67255 (= e!36407 e!36409)))

(declare-fun res!32172 () Bool)

(assert (=> b!67255 (=> (not res!32172) (not e!36409))))

(declare-fun lt!13354 () Bool)

(assert (=> b!67255 (= res!32172 lt!13354)))

(declare-fun b!67256 () Bool)

(assert (=> b!67256 (= e!36407 (and (not (is-Implies!37 (simplify!1 f!3724))) (or (and (is-Not!37 (simplify!1 f!3724)) (is-Literal!31 (f!4152 (simplify!1 f!3724)))) (not (is-Not!37 (simplify!1 f!3724))))))))

(declare-fun b!67257 () Bool)

(declare-fun e!36408 () Bool)

(declare-fun res!32173 () Bool)

(assert (=> b!67257 (= e!36408 res!32173)))

(assert (=> b!67257 true))

(assert (=> b!67257 true))

(declare-fun b!67258 () Bool)

(declare-fun e!36410 () Bool)

(declare-fun res!32171 () Bool)

(assert (=> b!67258 (= e!36410 res!32171)))

(assert (=> b!67258 true))

(declare-fun b!67259 () Bool)

(declare-fun lt!13353 () Bool)

(assert (=> b!67259 (= e!36408 (isNNF!1 (ite lt!13353 (rhs!899 (simplify!1 f!3724)) (rhs!901 (simplify!1 f!3724)))))))

(declare-fun d!53472 () Bool)

(declare-fun c!15434 () Bool)

(declare-fun lt!13352 () Bool)

(assert (=> d!53472 (= c!15434 (or lt!13352 (is-Or!37 (simplify!1 f!3724))))))

(assert (=> d!53472 (= lt!13353 (and lt!13352 lt!13354))))

(assert (=> d!53472 (= lt!13354 e!36410)))

(declare-fun c!15433 () Bool)

(assert (=> d!53472 (= c!15433 (or lt!13352 (is-Or!37 (simplify!1 f!3724))))))

(assert (=> d!53472 (= lt!13352 (is-And!37 (simplify!1 f!3724)))))

(assert (=> d!53472 (= (isNNF!1 (simplify!1 f!3724)) e!36407)))

(declare-fun b!67260 () Bool)

(assert (=> b!67260 (= e!36409 e!36408)))

(declare-fun c!15435 () Bool)

(assert (=> b!67260 (= c!15435 (or lt!13353 (and (not lt!13352) (is-Or!37 (simplify!1 f!3724)) lt!13354)))))

(declare-fun b!67261 () Bool)

(assert (=> b!67261 (= e!36410 (isNNF!1 (ite lt!13352 (lhs!899 (simplify!1 f!3724)) (lhs!901 (simplify!1 f!3724)))))))

(assert (= (and d!53472 c!15433) b!67261))

(assert (= (and d!53472 (not c!15433)) b!67258))

(assert (= (and b!67255 res!32172) b!67260))

(assert (= (and b!67260 c!15435) b!67259))

(assert (= (and b!67260 (not c!15435)) b!67257))

(assert (= (and d!53472 c!15434) b!67255))

(assert (= (and d!53472 (not c!15434)) b!67256))

(declare-fun m!69915 () Bool)

(assert (=> b!67259 m!69915))

(declare-fun m!69917 () Bool)

(assert (=> b!67261 m!69917))

(assert (=> b!67240 d!53472))

(declare-fun b!67290 () Bool)

(declare-fun e!36425 () Formula!32)

(declare-fun lt!13379 () Formula!32)

(declare-fun lt!13380 () Formula!32)

(assert (=> b!67290 (= e!36425 (Or!37 lt!13379 lt!13380))))

(declare-fun b!67291 () Bool)

(declare-fun e!36427 () Formula!32)

(declare-fun res!32200 () Formula!32)

(assert (=> b!67291 (= e!36427 res!32200)))

(assert (=> b!67291 true))

(assert (=> b!67291 true))

(declare-fun b!67292 () Bool)

(assert (=> b!67292 (= e!36427 lt!13379)))

(declare-fun b!67293 () Bool)

(declare-fun e!36431 () Formula!32)

(assert (=> b!67293 (= e!36431 e!36425)))

(declare-fun c!15451 () Bool)

(declare-fun lt!13376 () Bool)

(assert (=> b!67293 (= c!15451 lt!13376)))

(declare-fun e!36426 () Formula!32)

(assert (=> b!67293 (= lt!13380 e!36426)))

(declare-fun c!15456 () Bool)

(assert (=> b!67293 (= c!15456 (or lt!13376 (is-Implies!37 f!3724)))))

(declare-fun e!36429 () Formula!32)

(assert (=> b!67293 (= lt!13379 e!36429)))

(declare-fun c!15453 () Bool)

(assert (=> b!67293 (= c!15453 (or lt!13376 (is-Implies!37 f!3724) (is-Not!37 f!3724)))))

(assert (=> b!67293 (= lt!13376 (is-Or!37 f!3724))))

(declare-fun b!67294 () Bool)

(declare-fun res!32199 () Formula!32)

(assert (=> b!67294 (= e!36429 res!32199)))

(assert (=> b!67294 true))

(declare-fun b!67295 () Bool)

(declare-fun e!36428 () Formula!32)

(declare-fun res!32202 () Formula!32)

(assert (=> b!67295 (= e!36428 res!32202)))

(assert (=> b!67295 true))

(declare-fun b!67296 () Bool)

(declare-fun lt!13373 () Formula!32)

(assert (=> b!67296 (= e!36426 lt!13373)))

(declare-fun b!67297 () Bool)

(declare-fun e!36430 () Formula!32)

(declare-fun lt!13375 () Bool)

(assert (=> b!67297 (= e!36430 (simplify!1 (ite lt!13375 (rhs!899 f!3724) (ite (is-Or!37 f!3724) (rhs!901 f!3724) (rhs!900 f!3724)))))))

(declare-fun b!67298 () Bool)

(assert (=> b!67298 (= e!36428 (simplify!1 (ite lt!13375 (lhs!899 f!3724) (ite (is-Or!37 f!3724) (lhs!901 f!3724) (ite (is-Implies!37 f!3724) (lhs!900 f!3724) (f!4152 f!3724))))))))

(declare-fun d!53474 () Bool)

(declare-fun lt!13377 () Formula!32)

(declare-fun isSimplified!1 (Formula!32) Bool)

(assert (=> d!53474 (isSimplified!1 lt!13377)))

(assert (=> d!53474 (= lt!13377 e!36431)))

(declare-fun c!15454 () Bool)

(assert (=> d!53474 (= c!15454 lt!13375)))

(assert (=> d!53474 (= lt!13373 e!36430)))

(declare-fun c!15450 () Bool)

(assert (=> d!53474 (= c!15450 (or lt!13375 (is-Or!37 f!3724) (is-Implies!37 f!3724)))))

(declare-fun lt!13374 () Formula!32)

(assert (=> d!53474 (= lt!13374 e!36428)))

(declare-fun c!15452 () Bool)

(assert (=> d!53474 (= c!15452 (or lt!13375 (is-Or!37 f!3724) (is-Implies!37 f!3724) (is-Not!37 f!3724)))))

(assert (=> d!53474 (= lt!13375 (is-And!37 f!3724))))

(assert (=> d!53474 (= (simplify!1 f!3724) lt!13377)))

(declare-fun lt!13378 () Formula!32)

(declare-fun b!67299 () Bool)

(declare-fun lt!13381 () Bool)

(assert (=> b!67299 (= e!36425 (ite lt!13381 (Or!37 (Not!37 lt!13378) lt!13380) (ite (is-Not!37 f!3724) (Not!37 lt!13378) f!3724)))))

(assert (=> b!67299 (= lt!13378 e!36427)))

(declare-fun c!15455 () Bool)

(assert (=> b!67299 (= c!15455 (or lt!13381 (is-Not!37 f!3724)))))

(assert (=> b!67299 (= lt!13381 (is-Implies!37 f!3724))))

(declare-fun b!67300 () Bool)

(assert (=> b!67300 (= e!36431 (And!37 lt!13374 lt!13373))))

(declare-fun b!67301 () Bool)

(assert (=> b!67301 (= e!36429 lt!13374)))

(declare-fun b!67302 () Bool)

(declare-fun res!32201 () Formula!32)

(assert (=> b!67302 (= e!36426 res!32201)))

(assert (=> b!67302 true))

(declare-fun b!67303 () Bool)

(declare-fun res!32203 () Formula!32)

(assert (=> b!67303 (= e!36430 res!32203)))

(assert (=> b!67303 true))

(assert (= (and d!53474 c!15452) b!67298))

(assert (= (and d!53474 (not c!15452)) b!67295))

(assert (= (and d!53474 c!15450) b!67297))

(assert (= (and d!53474 (not c!15450)) b!67303))

(assert (= (and b!67293 c!15453) b!67301))

(assert (= (and b!67293 (not c!15453)) b!67294))

(assert (= (and b!67293 c!15456) b!67296))

(assert (= (and b!67293 (not c!15456)) b!67302))

(assert (= (and b!67299 c!15455) b!67292))

(assert (= (and b!67299 (not c!15455)) b!67291))

(assert (= (and b!67293 c!15451) b!67290))

(assert (= (and b!67293 (not c!15451)) b!67299))

(assert (= (and d!53474 c!15454) b!67300))

(assert (= (and d!53474 (not c!15454)) b!67293))

(declare-fun m!69919 () Bool)

(assert (=> b!67297 m!69919))

(declare-fun m!69921 () Bool)

(assert (=> b!67298 m!69921))

(declare-fun m!69923 () Bool)

(assert (=> d!53474 m!69923))

(assert (=> b!67240 d!53474))

(declare-fun b!67336 () Bool)

(declare-fun e!36448 () Formula!32)

(declare-fun res!32248 () Formula!32)

(assert (=> b!67336 (= e!36448 res!32248)))

(assert (=> b!67336 true))

(declare-fun b!67337 () Bool)

(declare-fun e!36450 () Bool)

(declare-fun res!32247 () Bool)

(assert (=> b!67337 (= e!36450 res!32247)))

(assert (=> b!67337 true))

(declare-fun b!67338 () Bool)

(declare-fun e!36454 () Bool)

(declare-fun e!36451 () Bool)

(assert (=> b!67338 (= e!36454 e!36451)))

(declare-fun c!15479 () Bool)

(declare-fun lt!13398 () Bool)

(assert (=> b!67338 (= c!15479 (or lt!13398 (and (not lt!13398) (is-Literal!31 (lhs!901 f!3724)))))))

(declare-fun b!67339 () Bool)

(assert (=> b!67339 (= e!36450 (simplifyPreservesNNF!0 (ite lt!13398 (lhs!899 (lhs!901 f!3724)) (ite (is-Implies!37 (lhs!901 f!3724)) (lhs!900 (lhs!901 f!3724)) (lhs!901 (lhs!901 f!3724))))))))

(declare-fun b!67340 () Bool)

(declare-fun e!36452 () Bool)

(declare-fun e!36449 () Bool)

(assert (=> b!67340 (= e!36452 e!36449)))

(declare-fun c!15476 () Bool)

(declare-fun lt!13394 () Bool)

(assert (=> b!67340 (= c!15476 (or lt!13394 (and (not lt!13394) (is-Or!37 (lhs!901 f!3724)))))))

(declare-fun b!67341 () Bool)

(declare-fun res!32245 () Bool)

(assert (=> b!67341 (= e!36449 res!32245)))

(assert (=> b!67341 true))

(assert (=> b!67341 true))

(declare-fun b!67342 () Bool)

(declare-fun e!36455 () Formula!32)

(assert (=> b!67342 (= e!36455 (simplify!1 (lhs!901 f!3724)))))

(declare-fun b!67343 () Bool)

(declare-fun lt!13396 () Formula!32)

(assert (=> b!67343 (= e!36449 (isNNF!1 lt!13396))))

(declare-fun b!67344 () Bool)

(declare-fun res!32246 () Bool)

(assert (=> b!67344 (= e!36451 res!32246)))

(assert (=> b!67344 true))

(declare-fun b!67345 () Bool)

(declare-fun e!36453 () Bool)

(assert (=> b!67345 (= e!36453 (simplifyPreservesNNF!0 (ite lt!13398 (rhs!899 (lhs!901 f!3724)) (ite (is-Implies!37 (lhs!901 f!3724)) (rhs!900 (lhs!901 f!3724)) (ite (is-Or!37 (lhs!901 f!3724)) (rhs!901 (lhs!901 f!3724)) (f!4152 (lhs!901 f!3724)))))))))

(declare-fun b!67346 () Bool)

(assert (=> b!67346 (= e!36454 e!36452)))

(declare-fun c!15475 () Bool)

(assert (=> b!67346 (= c!15475 (or lt!13394 (is-Or!37 (lhs!901 f!3724))))))

(assert (=> b!67346 (= lt!13396 e!36455)))

(declare-fun c!15478 () Bool)

(assert (=> b!67346 (= c!15478 (or lt!13394 (is-Or!37 (lhs!901 f!3724))))))

(assert (=> b!67346 (= lt!13394 (is-Implies!37 (lhs!901 f!3724)))))

(declare-fun b!67347 () Bool)

(assert (=> b!67347 (= e!36448 (simplify!1 (lhs!901 f!3724)))))

(declare-fun b!67348 () Bool)

(declare-fun res!32244 () Formula!32)

(assert (=> b!67348 (= e!36455 res!32244)))

(assert (=> b!67348 true))

(declare-fun b!67349 () Bool)

(declare-fun lt!13395 () Formula!32)

(assert (=> b!67349 (= e!36451 (isNNF!1 lt!13395))))

(declare-fun b!67350 () Bool)

(declare-fun res!32243 () Bool)

(assert (=> b!67350 (= e!36453 res!32243)))

(assert (=> b!67350 true))

(declare-fun d!53476 () Bool)

(assert (=> d!53476 e!36454))

(declare-fun c!15473 () Bool)

(assert (=> d!53476 (= c!15473 (or lt!13398 (is-Literal!31 (lhs!901 f!3724))))))

(assert (=> d!53476 (= lt!13395 e!36448)))

(declare-fun c!15480 () Bool)

(assert (=> d!53476 (= c!15480 (or lt!13398 (is-Literal!31 (lhs!901 f!3724))))))

(declare-fun lt!13397 () Bool)

(assert (=> d!53476 (= lt!13397 e!36450)))

(declare-fun c!15474 () Bool)

(assert (=> d!53476 (= c!15474 (or lt!13398 (and (not (is-Literal!31 (lhs!901 f!3724))) (or (is-Implies!37 (lhs!901 f!3724)) (is-Or!37 (lhs!901 f!3724))))))))

(declare-fun lt!13399 () Bool)

(assert (=> d!53476 (= lt!13399 e!36453)))

(declare-fun c!15477 () Bool)

(assert (=> d!53476 (= c!15477 (or lt!13398 (not (is-Literal!31 (lhs!901 f!3724)))))))

(assert (=> d!53476 (= lt!13398 (is-And!37 (lhs!901 f!3724)))))

(assert (=> d!53476 (isNNF!1 (lhs!901 f!3724))))

(assert (=> d!53476 (= (simplifyPreservesNNF!0 (lhs!901 f!3724)) true)))

(declare-fun b!67351 () Bool)

(assert (=> b!67351 (= e!36452 (isNNF!1 (simplify!1 (lhs!901 f!3724))))))

(assert (= (and d!53476 c!15477) b!67345))

(assert (= (and d!53476 (not c!15477)) b!67350))

(assert (= (and d!53476 c!15474) b!67339))

(assert (= (and d!53476 (not c!15474)) b!67337))

(assert (= (and d!53476 c!15480) b!67347))

(assert (= (and d!53476 (not c!15480)) b!67336))

(assert (= (and b!67338 c!15479) b!67349))

(assert (= (and b!67338 (not c!15479)) b!67344))

(assert (= (and b!67346 c!15478) b!67342))

(assert (= (and b!67346 (not c!15478)) b!67348))

(assert (= (and b!67340 c!15476) b!67343))

(assert (= (and b!67340 (not c!15476)) b!67341))

(assert (= (and b!67346 c!15475) b!67340))

(assert (= (and b!67346 (not c!15475)) b!67351))

(assert (= (and d!53476 c!15473) b!67338))

(assert (= (and d!53476 (not c!15473)) b!67346))

(declare-fun m!69925 () Bool)

(assert (=> b!67349 m!69925))

(declare-fun m!69927 () Bool)

(assert (=> b!67339 m!69927))

(declare-fun m!69929 () Bool)

(assert (=> b!67351 m!69929))

(assert (=> b!67351 m!69929))

(declare-fun m!69931 () Bool)

(assert (=> b!67351 m!69931))

(declare-fun m!69933 () Bool)

(assert (=> b!67343 m!69933))

(assert (=> b!67347 m!69929))

(declare-fun m!69935 () Bool)

(assert (=> d!53476 m!69935))

(assert (=> b!67342 m!69929))

(declare-fun m!69937 () Bool)

(assert (=> b!67345 m!69937))

(assert (=> b!67239 d!53476))

(declare-fun b!67352 () Bool)

(declare-fun e!36456 () Bool)

(declare-fun e!36458 () Bool)

(assert (=> b!67352 (= e!36456 e!36458)))

(declare-fun res!32250 () Bool)

(assert (=> b!67352 (=> (not res!32250) (not e!36458))))

(declare-fun lt!13402 () Bool)

(assert (=> b!67352 (= res!32250 lt!13402)))

(declare-fun b!67353 () Bool)

(assert (=> b!67353 (= e!36456 (and (not (is-Implies!37 f!3724)) (or (and (is-Not!37 f!3724) (is-Literal!31 (f!4152 f!3724))) (not (is-Not!37 f!3724)))))))

(declare-fun b!67354 () Bool)

(declare-fun e!36457 () Bool)

(declare-fun res!32251 () Bool)

(assert (=> b!67354 (= e!36457 res!32251)))

(assert (=> b!67354 true))

(assert (=> b!67354 true))

(declare-fun b!67355 () Bool)

(declare-fun e!36459 () Bool)

(declare-fun res!32249 () Bool)

(assert (=> b!67355 (= e!36459 res!32249)))

(assert (=> b!67355 true))

(declare-fun b!67356 () Bool)

(declare-fun lt!13401 () Bool)

(assert (=> b!67356 (= e!36457 (isNNF!1 (ite lt!13401 (rhs!899 f!3724) (rhs!901 f!3724))))))

(declare-fun d!53478 () Bool)

(declare-fun c!15482 () Bool)

(declare-fun lt!13400 () Bool)

(assert (=> d!53478 (= c!15482 (or lt!13400 (is-Or!37 f!3724)))))

(assert (=> d!53478 (= lt!13401 (and lt!13400 lt!13402))))

(assert (=> d!53478 (= lt!13402 e!36459)))

(declare-fun c!15481 () Bool)

(assert (=> d!53478 (= c!15481 (or lt!13400 (is-Or!37 f!3724)))))

(assert (=> d!53478 (= lt!13400 (is-And!37 f!3724))))

(assert (=> d!53478 (= (isNNF!1 f!3724) e!36456)))

(declare-fun b!67357 () Bool)

(assert (=> b!67357 (= e!36458 e!36457)))

(declare-fun c!15483 () Bool)

(assert (=> b!67357 (= c!15483 (or lt!13401 (and (not lt!13400) (is-Or!37 f!3724) lt!13402)))))

(declare-fun b!67358 () Bool)

(assert (=> b!67358 (= e!36459 (isNNF!1 (ite lt!13400 (lhs!899 f!3724) (lhs!901 f!3724))))))

(assert (= (and d!53478 c!15481) b!67358))

(assert (= (and d!53478 (not c!15481)) b!67355))

(assert (= (and b!67352 res!32250) b!67357))

(assert (= (and b!67357 c!15483) b!67356))

(assert (= (and b!67357 (not c!15483)) b!67354))

(assert (= (and d!53478 c!15482) b!67352))

(assert (= (and d!53478 (not c!15482)) b!67353))

(declare-fun m!69939 () Bool)

(assert (=> b!67356 m!69939))

(declare-fun m!69941 () Bool)

(assert (=> b!67358 m!69941))

(assert (=> start!9356 d!53478))

(declare-fun b!67359 () Bool)

(declare-fun e!36460 () Formula!32)

(declare-fun res!32257 () Formula!32)

(assert (=> b!67359 (= e!36460 res!32257)))

(assert (=> b!67359 true))

(declare-fun b!67360 () Bool)

(declare-fun e!36462 () Bool)

(declare-fun res!32256 () Bool)

(assert (=> b!67360 (= e!36462 res!32256)))

(assert (=> b!67360 true))

(declare-fun b!67361 () Bool)

(declare-fun e!36466 () Bool)

(declare-fun e!36463 () Bool)

(assert (=> b!67361 (= e!36466 e!36463)))

(declare-fun c!15490 () Bool)

(declare-fun lt!13407 () Bool)

(assert (=> b!67361 (= c!15490 (or lt!13407 (and (not lt!13407) (is-Literal!31 (rhs!901 f!3724)))))))

(declare-fun b!67362 () Bool)

(assert (=> b!67362 (= e!36462 (simplifyPreservesNNF!0 (ite lt!13407 (lhs!899 (rhs!901 f!3724)) (ite (is-Implies!37 (rhs!901 f!3724)) (lhs!900 (rhs!901 f!3724)) (lhs!901 (rhs!901 f!3724))))))))

(declare-fun b!67363 () Bool)

(declare-fun e!36464 () Bool)

(declare-fun e!36461 () Bool)

(assert (=> b!67363 (= e!36464 e!36461)))

(declare-fun c!15487 () Bool)

(declare-fun lt!13403 () Bool)

(assert (=> b!67363 (= c!15487 (or lt!13403 (and (not lt!13403) (is-Or!37 (rhs!901 f!3724)))))))

(declare-fun b!67364 () Bool)

(declare-fun res!32254 () Bool)

(assert (=> b!67364 (= e!36461 res!32254)))

(assert (=> b!67364 true))

(assert (=> b!67364 true))

(declare-fun b!67365 () Bool)

(declare-fun e!36467 () Formula!32)

(assert (=> b!67365 (= e!36467 (simplify!1 (rhs!901 f!3724)))))

(declare-fun b!67366 () Bool)

(declare-fun lt!13405 () Formula!32)

(assert (=> b!67366 (= e!36461 (isNNF!1 lt!13405))))

(declare-fun b!67367 () Bool)

(declare-fun res!32255 () Bool)

(assert (=> b!67367 (= e!36463 res!32255)))

(assert (=> b!67367 true))

(declare-fun b!67368 () Bool)

(declare-fun e!36465 () Bool)

(assert (=> b!67368 (= e!36465 (simplifyPreservesNNF!0 (ite lt!13407 (rhs!899 (rhs!901 f!3724)) (ite (is-Implies!37 (rhs!901 f!3724)) (rhs!900 (rhs!901 f!3724)) (ite (is-Or!37 (rhs!901 f!3724)) (rhs!901 (rhs!901 f!3724)) (f!4152 (rhs!901 f!3724)))))))))

(declare-fun b!67369 () Bool)

(assert (=> b!67369 (= e!36466 e!36464)))

(declare-fun c!15486 () Bool)

(assert (=> b!67369 (= c!15486 (or lt!13403 (is-Or!37 (rhs!901 f!3724))))))

(assert (=> b!67369 (= lt!13405 e!36467)))

(declare-fun c!15489 () Bool)

(assert (=> b!67369 (= c!15489 (or lt!13403 (is-Or!37 (rhs!901 f!3724))))))

(assert (=> b!67369 (= lt!13403 (is-Implies!37 (rhs!901 f!3724)))))

(declare-fun b!67370 () Bool)

(assert (=> b!67370 (= e!36460 (simplify!1 (rhs!901 f!3724)))))

(declare-fun b!67371 () Bool)

(declare-fun res!32253 () Formula!32)

(assert (=> b!67371 (= e!36467 res!32253)))

(assert (=> b!67371 true))

(declare-fun b!67372 () Bool)

(declare-fun lt!13404 () Formula!32)

(assert (=> b!67372 (= e!36463 (isNNF!1 lt!13404))))

(declare-fun b!67373 () Bool)

(declare-fun res!32252 () Bool)

(assert (=> b!67373 (= e!36465 res!32252)))

(assert (=> b!67373 true))

(declare-fun d!53480 () Bool)

(assert (=> d!53480 e!36466))

(declare-fun c!15484 () Bool)

(assert (=> d!53480 (= c!15484 (or lt!13407 (is-Literal!31 (rhs!901 f!3724))))))

(assert (=> d!53480 (= lt!13404 e!36460)))

(declare-fun c!15491 () Bool)

(assert (=> d!53480 (= c!15491 (or lt!13407 (is-Literal!31 (rhs!901 f!3724))))))

(declare-fun lt!13406 () Bool)

(assert (=> d!53480 (= lt!13406 e!36462)))

(declare-fun c!15485 () Bool)

(assert (=> d!53480 (= c!15485 (or lt!13407 (and (not (is-Literal!31 (rhs!901 f!3724))) (or (is-Implies!37 (rhs!901 f!3724)) (is-Or!37 (rhs!901 f!3724))))))))

(declare-fun lt!13408 () Bool)

(assert (=> d!53480 (= lt!13408 e!36465)))

(declare-fun c!15488 () Bool)

(assert (=> d!53480 (= c!15488 (or lt!13407 (not (is-Literal!31 (rhs!901 f!3724)))))))

(assert (=> d!53480 (= lt!13407 (is-And!37 (rhs!901 f!3724)))))

(assert (=> d!53480 (isNNF!1 (rhs!901 f!3724))))

(assert (=> d!53480 (= (simplifyPreservesNNF!0 (rhs!901 f!3724)) true)))

(declare-fun b!67374 () Bool)

(assert (=> b!67374 (= e!36464 (isNNF!1 (simplify!1 (rhs!901 f!3724))))))

(assert (= (and d!53480 c!15488) b!67368))

(assert (= (and d!53480 (not c!15488)) b!67373))

(assert (= (and d!53480 c!15485) b!67362))

(assert (= (and d!53480 (not c!15485)) b!67360))

(assert (= (and d!53480 c!15491) b!67370))

(assert (= (and d!53480 (not c!15491)) b!67359))

(assert (= (and b!67361 c!15490) b!67372))

(assert (= (and b!67361 (not c!15490)) b!67367))

(assert (= (and b!67369 c!15489) b!67365))

(assert (= (and b!67369 (not c!15489)) b!67371))

(assert (= (and b!67363 c!15487) b!67366))

(assert (= (and b!67363 (not c!15487)) b!67364))

(assert (= (and b!67369 c!15486) b!67363))

(assert (= (and b!67369 (not c!15486)) b!67374))

(assert (= (and d!53480 c!15484) b!67361))

(assert (= (and d!53480 (not c!15484)) b!67369))

(declare-fun m!69943 () Bool)

(assert (=> b!67372 m!69943))

(declare-fun m!69945 () Bool)

(assert (=> b!67362 m!69945))

(declare-fun m!69947 () Bool)

(assert (=> b!67374 m!69947))

(assert (=> b!67374 m!69947))

(declare-fun m!69949 () Bool)

(assert (=> b!67374 m!69949))

(declare-fun m!69951 () Bool)

(assert (=> b!67366 m!69951))

(assert (=> b!67370 m!69947))

(declare-fun m!69953 () Bool)

(assert (=> d!53480 m!69953))

(assert (=> b!67365 m!69947))

(declare-fun m!69955 () Bool)

(assert (=> b!67368 m!69955))

(assert (=> b!67238 d!53480))

(push 1)

(assert (not b!67365))

(assert (not b!67339))

(assert (not d!53476))

(assert (not b!67374))

(assert (not b!67297))

(assert (not b!67370))

(assert (not b!67362))

(assert (not b!67372))

(assert (not b!67298))

(assert (not b!67261))

(assert (not b!67343))

(assert (not d!53480))

(assert (not b!67368))

(assert (not b!67342))

(assert (not b!67347))

(assert (not b!67259))

(assert (not d!53474))

(assert (not b!67356))

(assert (not b!67345))

(assert (not b!67351))

(assert (not b!67366))

(assert (not b!67349))

(assert (not b!67358))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


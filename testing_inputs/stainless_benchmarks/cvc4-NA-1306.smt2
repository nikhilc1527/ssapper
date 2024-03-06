; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9212 () Bool)

(assert start!9212)

(declare-fun res!30442 () Bool)

(declare-fun e!35223 () Bool)

(assert (=> start!9212 (=> (not res!30442) (not e!35223))))

(declare-datatypes () ((Formula!8 (And!13 (lhs!827 Formula!8) (rhs!827 Formula!8)) (Literal!7 (id!4788 Int)) (Implies!13 (lhs!828 Formula!8) (rhs!828 Formula!8)) (Or!13 (lhs!829 Formula!8) (rhs!829 Formula!8)) (Not!13 (f!4087 Formula!8)))))

(declare-fun f!3964 () Formula!8)

(assert (=> start!9212 (= res!30442 (and (not (is-And!13 f!3964)) (not (is-Literal!7 f!3964)) (not (is-Implies!13 f!3964)) (not (is-Or!13 f!3964))))))

(assert (=> start!9212 e!35223))

(assert (=> start!9212 true))

(declare-fun b!64941 () Bool)

(declare-fun res!30443 () Bool)

(assert (=> b!64941 (=> (not res!30443) (not e!35223))))

(declare-fun inductVal!468 () Bool)

(declare-fun simplifySemantics!0 (Formula!8) Bool)

(assert (=> b!64941 (= res!30443 (= inductVal!468 (simplifySemantics!0 (f!4087 f!3964))))))

(declare-fun b!64942 () Bool)

(declare-fun eval!0 (Formula!8) Bool)

(declare-fun simplify!1 (Formula!8) Formula!8)

(assert (=> b!64942 (= e!35223 (not (= (eval!0 f!3964) (eval!0 (simplify!1 f!3964)))))))

(assert (= (and start!9212 res!30442) b!64941))

(assert (= (and b!64941 res!30443) b!64942))

(declare-fun m!69345 () Bool)

(assert (=> b!64941 m!69345))

(declare-fun m!69347 () Bool)

(assert (=> b!64942 m!69347))

(declare-fun m!69349 () Bool)

(assert (=> b!64942 m!69349))

(assert (=> b!64942 m!69349))

(declare-fun m!69351 () Bool)

(assert (=> b!64942 m!69351))

(push 1)

(assert (not b!64942))

(assert (not b!64941))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!65021 () Bool)

(declare-fun e!35279 () Formula!8)

(assert (=> b!65021 (= e!35279 (rhs!828 f!3964))))

(declare-fun b!65022 () Bool)

(assert (=> b!65022 (= e!35279 (rhs!829 f!3964))))

(declare-fun b!65023 () Bool)

(declare-fun e!35281 () Bool)

(declare-fun res!30505 () Bool)

(assert (=> b!65023 (= e!35281 res!30505)))

(assert (=> b!65023 true))

(declare-fun b!65024 () Bool)

(declare-fun e!35292 () Bool)

(declare-fun res!30508 () Bool)

(assert (=> b!65024 (= e!35292 res!30508)))

(assert (=> b!65024 true))

(declare-fun b!65025 () Bool)

(declare-fun e!35272 () Bool)

(declare-fun res!30504 () Bool)

(assert (=> b!65025 (= e!35272 res!30504)))

(assert (=> b!65025 true))

(declare-fun b!65026 () Bool)

(declare-fun e!35285 () Bool)

(declare-fun e!35275 () Formula!8)

(assert (=> b!65026 (= e!35285 (eval!0 e!35275))))

(declare-fun c!14484 () Bool)

(declare-fun lt!12389 () Bool)

(assert (=> b!65026 (= c!14484 lt!12389)))

(declare-fun b!65027 () Bool)

(declare-fun lt!12380 () Bool)

(assert (=> b!65027 (= e!35292 lt!12380)))

(declare-fun b!65028 () Bool)

(declare-fun res!30517 () Bool)

(assert (=> b!65028 (= e!35285 res!30517)))

(assert (=> b!65028 true))

(declare-fun b!65029 () Bool)

(declare-fun e!35291 () Bool)

(assert (=> b!65029 (= e!35291 e!35292)))

(declare-fun c!14487 () Bool)

(declare-fun lt!12382 () Bool)

(assert (=> b!65029 (= c!14487 (or lt!12382 (is-Not!13 f!3964)))))

(declare-fun b!65030 () Bool)

(declare-fun e!35286 () Bool)

(declare-fun lt!12383 () Bool)

(assert (=> b!65030 (= e!35286 (or lt!12380 lt!12383))))

(declare-fun b!65031 () Bool)

(declare-fun e!35287 () Bool)

(declare-fun e!35278 () Bool)

(assert (=> b!65031 (= e!35287 e!35278)))

(declare-fun res!30509 () Bool)

(assert (=> b!65031 (=> (not res!30509) (not e!35278))))

(declare-fun lt!12379 () Bool)

(assert (=> b!65031 (= res!30509 (not lt!12379))))

(declare-fun d!53334 () Bool)

(declare-fun c!14477 () Bool)

(declare-fun lt!12377 () Bool)

(assert (=> d!53334 (= c!14477 lt!12377)))

(declare-fun lt!12381 () Bool)

(assert (=> d!53334 (= lt!12381 e!35285)))

(declare-fun c!14478 () Bool)

(declare-fun e!35280 () Bool)

(assert (=> d!53334 (= c!14478 e!35280)))

(declare-fun res!30513 () Bool)

(assert (=> d!53334 (=> res!30513 e!35280)))

(assert (=> d!53334 (= res!30513 lt!12389)))

(declare-fun lt!12376 () Bool)

(assert (=> d!53334 (= lt!12389 (and lt!12377 lt!12376))))

(declare-fun e!35273 () Bool)

(assert (=> d!53334 (= lt!12376 e!35273)))

(declare-fun c!14482 () Bool)

(assert (=> d!53334 (= c!14482 (or lt!12377 (is-Or!13 f!3964) (is-Implies!13 f!3964) (is-Not!13 f!3964)))))

(assert (=> d!53334 (= lt!12377 (is-And!13 f!3964))))

(declare-fun e!35274 () Bool)

(assert (=> d!53334 (= (eval!0 f!3964) e!35274)))

(declare-fun b!65032 () Bool)

(declare-fun e!35294 () Bool)

(assert (=> b!65032 (= e!35294 lt!12376)))

(declare-fun b!65033 () Bool)

(declare-fun e!35283 () Bool)

(assert (=> b!65033 (= e!35283 lt!12380)))

(declare-fun b!65034 () Bool)

(declare-fun res!30503 () Bool)

(assert (=> b!65034 (= e!35283 res!30503)))

(assert (=> b!65034 true))

(assert (=> b!65034 true))

(declare-fun b!65035 () Bool)

(assert (=> b!65035 (= e!35272 lt!12376)))

(declare-fun b!65036 () Bool)

(assert (=> b!65036 (= e!35275 e!35279)))

(declare-fun c!14488 () Bool)

(declare-fun e!35276 () Bool)

(assert (=> b!65036 (= c!14488 e!35276)))

(declare-fun res!30514 () Bool)

(assert (=> b!65036 (=> (not res!30514) (not e!35276))))

(declare-fun lt!12387 () Bool)

(assert (=> b!65036 (= res!30514 lt!12387)))

(assert (=> b!65036 (= lt!12387 (is-Or!13 f!3964))))

(declare-fun b!65037 () Bool)

(declare-fun e!35293 () Bool)

(assert (=> b!65037 (= e!35286 e!35293)))

(declare-fun c!14485 () Bool)

(declare-fun lt!12385 () Bool)

(assert (=> b!65037 (= c!14485 lt!12385)))

(declare-fun lt!12384 () Bool)

(assert (=> b!65037 (= lt!12384 e!35283)))

(declare-fun c!14475 () Bool)

(assert (=> b!65037 (= c!14475 (or lt!12385 (is-Not!13 f!3964)))))

(assert (=> b!65037 (= lt!12385 (is-Implies!13 f!3964))))

(declare-fun b!65038 () Bool)

(assert (=> b!65038 (= e!35274 e!35286)))

(declare-fun c!14480 () Bool)

(assert (=> b!65038 (= c!14480 lt!12379)))

(declare-fun e!35295 () Bool)

(assert (=> b!65038 (= lt!12383 e!35295)))

(declare-fun c!14483 () Bool)

(assert (=> b!65038 (= c!14483 e!35287)))

(declare-fun res!30506 () Bool)

(assert (=> b!65038 (=> res!30506 e!35287)))

(assert (=> b!65038 (= res!30506 (and lt!12379 (not lt!12380)))))

(assert (=> b!65038 (= lt!12380 e!35272)))

(declare-fun c!14476 () Bool)

(assert (=> b!65038 (= c!14476 (or lt!12379 (is-Implies!13 f!3964) (is-Not!13 f!3964)))))

(assert (=> b!65038 (= lt!12379 (is-Or!13 f!3964))))

(declare-fun b!65039 () Bool)

(assert (=> b!65039 (= e!35275 (rhs!827 f!3964))))

(declare-fun b!65040 () Bool)

(declare-fun res!30511 () Bool)

(assert (=> b!65040 (= e!35294 res!30511)))

(assert (=> b!65040 true))

(declare-fun b!65041 () Bool)

(declare-fun e!35277 () Bool)

(assert (=> b!65041 (= e!35280 e!35277)))

(declare-fun res!30501 () Bool)

(assert (=> b!65041 (=> (not res!30501) (not e!35277))))

(assert (=> b!65041 (= res!30501 (not lt!12377))))

(declare-fun b!65042 () Bool)

(declare-fun res!30516 () Bool)

(assert (=> b!65042 (= e!35295 res!30516)))

(assert (=> b!65042 true))

(declare-fun b!65043 () Bool)

(declare-fun e!35290 () Bool)

(assert (=> b!65043 (= e!35277 e!35290)))

(declare-fun res!30512 () Bool)

(assert (=> b!65043 (=> res!30512 e!35290)))

(declare-fun lt!12388 () Bool)

(declare-fun lt!12386 () Bool)

(assert (=> b!65043 (= res!30512 (and lt!12388 (not lt!12386)))))

(assert (=> b!65043 (= lt!12386 e!35294)))

(declare-fun c!14486 () Bool)

(assert (=> b!65043 (= c!14486 (or lt!12388 (is-Implies!13 f!3964) (is-Not!13 f!3964)))))

(assert (=> b!65043 (= lt!12388 (is-Or!13 f!3964))))

(declare-fun b!65044 () Bool)

(declare-fun e!35284 () Bool)

(declare-fun e!35289 () Bool)

(assert (=> b!65044 (= e!35284 e!35289)))

(declare-fun res!30515 () Bool)

(assert (=> b!65044 (=> (not res!30515) (not e!35289))))

(declare-fun lt!12378 () Bool)

(assert (=> b!65044 (= res!30515 lt!12378)))

(assert (=> b!65044 (= lt!12378 (is-Implies!13 f!3964))))

(declare-fun b!65045 () Bool)

(declare-fun e!35282 () Bool)

(assert (=> b!65045 (= e!35282 lt!12386)))

(declare-fun b!65046 () Bool)

(declare-fun res!30510 () Bool)

(assert (=> b!65046 (= e!35282 res!30510)))

(assert (=> b!65046 true))

(declare-fun b!65047 () Bool)

(assert (=> b!65047 (= e!35278 e!35291)))

(declare-fun res!30500 () Bool)

(assert (=> b!65047 (=> (not res!30500) (not e!35291))))

(assert (=> b!65047 (= res!30500 lt!12382)))

(assert (=> b!65047 (= lt!12382 (is-Implies!13 f!3964))))

(declare-fun b!65048 () Bool)

(declare-fun e!35288 () Bool)

(declare-fun evalLit!0 (Int) Bool)

(assert (=> b!65048 (= e!35288 (evalLit!0 (id!4788 f!3964)))))

(declare-fun b!65049 () Bool)

(assert (=> b!65049 (= e!35289 e!35282)))

(declare-fun c!14479 () Bool)

(assert (=> b!65049 (= c!14479 (or lt!12378 (is-Not!13 f!3964)))))

(declare-fun b!65050 () Bool)

(assert (=> b!65050 (= e!35276 (not e!35281))))

(declare-fun c!14489 () Bool)

(assert (=> b!65050 (= c!14489 (or lt!12387 (is-Implies!13 f!3964) (is-Not!13 f!3964)))))

(declare-fun b!65051 () Bool)

(assert (=> b!65051 (= e!35274 (and lt!12376 lt!12381))))

(declare-fun b!65052 () Bool)

(assert (=> b!65052 (= e!35295 lt!12381)))

(declare-fun b!65053 () Bool)

(assert (=> b!65053 (= e!35288 (not lt!12384))))

(declare-fun b!65054 () Bool)

(assert (=> b!65054 (= e!35290 e!35284)))

(declare-fun res!30502 () Bool)

(assert (=> b!65054 (=> (not res!30502) (not e!35284))))

(assert (=> b!65054 (= res!30502 (not lt!12388))))

(declare-fun b!65055 () Bool)

(assert (=> b!65055 (= e!35273 (eval!0 (ite lt!12377 (lhs!827 f!3964) (ite (is-Or!13 f!3964) (lhs!829 f!3964) (ite (is-Implies!13 f!3964) (lhs!828 f!3964) (f!4087 f!3964))))))))

(declare-fun b!65056 () Bool)

(assert (=> b!65056 (= e!35293 e!35288)))

(declare-fun c!14481 () Bool)

(assert (=> b!65056 (= c!14481 (is-Not!13 f!3964))))

(declare-fun b!65057 () Bool)

(assert (=> b!65057 (= e!35281 lt!12376)))

(declare-fun b!65058 () Bool)

(declare-fun res!30507 () Bool)

(assert (=> b!65058 (= e!35273 res!30507)))

(assert (=> b!65058 true))

(declare-fun b!65059 () Bool)

(assert (=> b!65059 (= e!35293 (or (not lt!12384) lt!12383))))

(assert (= (and d!53334 c!14482) b!65055))

(assert (= (and d!53334 (not c!14482)) b!65058))

(assert (= (and d!53334 (not res!30513)) b!65041))

(assert (= (and b!65041 res!30501) b!65043))

(assert (= (and b!65043 c!14486) b!65032))

(assert (= (and b!65043 (not c!14486)) b!65040))

(assert (= (and b!65043 (not res!30512)) b!65054))

(assert (= (and b!65054 res!30502) b!65044))

(assert (= (and b!65044 res!30515) b!65049))

(assert (= (and b!65049 c!14479) b!65045))

(assert (= (and b!65049 (not c!14479)) b!65046))

(assert (= (and b!65036 res!30514) b!65050))

(assert (= (and b!65050 c!14489) b!65057))

(assert (= (and b!65050 (not c!14489)) b!65023))

(assert (= (and b!65036 c!14488) b!65022))

(assert (= (and b!65036 (not c!14488)) b!65021))

(assert (= (and b!65026 c!14484) b!65039))

(assert (= (and b!65026 (not c!14484)) b!65036))

(assert (= (and d!53334 c!14478) b!65026))

(assert (= (and d!53334 (not c!14478)) b!65028))

(assert (= (and b!65038 c!14476) b!65035))

(assert (= (and b!65038 (not c!14476)) b!65025))

(assert (= (and b!65038 (not res!30506)) b!65031))

(assert (= (and b!65031 res!30509) b!65047))

(assert (= (and b!65047 res!30500) b!65029))

(assert (= (and b!65029 c!14487) b!65027))

(assert (= (and b!65029 (not c!14487)) b!65024))

(assert (= (and b!65038 c!14483) b!65052))

(assert (= (and b!65038 (not c!14483)) b!65042))

(assert (= (and b!65037 c!14475) b!65033))

(assert (= (and b!65037 (not c!14475)) b!65034))

(assert (= (and b!65056 c!14481) b!65053))

(assert (= (and b!65056 (not c!14481)) b!65048))

(assert (= (and b!65037 c!14485) b!65059))

(assert (= (and b!65037 (not c!14485)) b!65056))

(assert (= (and b!65038 c!14480) b!65030))

(assert (= (and b!65038 (not c!14480)) b!65037))

(assert (= (and d!53334 c!14477) b!65051))

(assert (= (and d!53334 (not c!14477)) b!65038))

(declare-fun m!69353 () Bool)

(assert (=> b!65026 m!69353))

(declare-fun m!69355 () Bool)

(assert (=> b!65048 m!69355))

(declare-fun m!69357 () Bool)

(assert (=> b!65055 m!69357))

(assert (=> b!64942 d!53334))

(declare-fun b!65060 () Bool)

(declare-fun e!35303 () Formula!8)

(assert (=> b!65060 (= e!35303 (rhs!828 (simplify!1 f!3964)))))

(declare-fun b!65061 () Bool)

(assert (=> b!65061 (= e!35303 (rhs!829 (simplify!1 f!3964)))))

(declare-fun b!65062 () Bool)

(declare-fun e!35305 () Bool)

(declare-fun res!30523 () Bool)

(assert (=> b!65062 (= e!35305 res!30523)))

(assert (=> b!65062 true))

(declare-fun b!65063 () Bool)

(declare-fun e!35316 () Bool)

(declare-fun res!30526 () Bool)

(assert (=> b!65063 (= e!35316 res!30526)))

(assert (=> b!65063 true))

(declare-fun b!65064 () Bool)

(declare-fun e!35296 () Bool)

(declare-fun res!30522 () Bool)

(assert (=> b!65064 (= e!35296 res!30522)))

(assert (=> b!65064 true))

(declare-fun b!65065 () Bool)

(declare-fun e!35309 () Bool)

(declare-fun e!35299 () Formula!8)

(assert (=> b!65065 (= e!35309 (eval!0 e!35299))))

(declare-fun c!14499 () Bool)

(declare-fun lt!12403 () Bool)

(assert (=> b!65065 (= c!14499 lt!12403)))

(declare-fun b!65066 () Bool)

(declare-fun lt!12394 () Bool)

(assert (=> b!65066 (= e!35316 lt!12394)))

(declare-fun b!65067 () Bool)

(declare-fun res!30535 () Bool)

(assert (=> b!65067 (= e!35309 res!30535)))

(assert (=> b!65067 true))

(declare-fun b!65068 () Bool)

(declare-fun e!35315 () Bool)

(assert (=> b!65068 (= e!35315 e!35316)))

(declare-fun c!14502 () Bool)

(declare-fun lt!12396 () Bool)

(assert (=> b!65068 (= c!14502 (or lt!12396 (is-Not!13 (simplify!1 f!3964))))))

(declare-fun b!65069 () Bool)

(declare-fun e!35310 () Bool)

(declare-fun lt!12397 () Bool)

(assert (=> b!65069 (= e!35310 (or lt!12394 lt!12397))))

(declare-fun b!65070 () Bool)

(declare-fun e!35311 () Bool)

(declare-fun e!35302 () Bool)

(assert (=> b!65070 (= e!35311 e!35302)))

(declare-fun res!30527 () Bool)

(assert (=> b!65070 (=> (not res!30527) (not e!35302))))

(declare-fun lt!12393 () Bool)

(assert (=> b!65070 (= res!30527 (not lt!12393))))

(declare-fun d!53336 () Bool)

(declare-fun c!14492 () Bool)

(declare-fun lt!12391 () Bool)

(assert (=> d!53336 (= c!14492 lt!12391)))

(declare-fun lt!12395 () Bool)

(assert (=> d!53336 (= lt!12395 e!35309)))

(declare-fun c!14493 () Bool)

(declare-fun e!35304 () Bool)

(assert (=> d!53336 (= c!14493 e!35304)))

(declare-fun res!30531 () Bool)

(assert (=> d!53336 (=> res!30531 e!35304)))

(assert (=> d!53336 (= res!30531 lt!12403)))

(declare-fun lt!12390 () Bool)

(assert (=> d!53336 (= lt!12403 (and lt!12391 lt!12390))))

(declare-fun e!35297 () Bool)

(assert (=> d!53336 (= lt!12390 e!35297)))

(declare-fun c!14497 () Bool)

(assert (=> d!53336 (= c!14497 (or lt!12391 (is-Or!13 (simplify!1 f!3964)) (is-Implies!13 (simplify!1 f!3964)) (is-Not!13 (simplify!1 f!3964))))))

(assert (=> d!53336 (= lt!12391 (is-And!13 (simplify!1 f!3964)))))

(declare-fun e!35298 () Bool)

(assert (=> d!53336 (= (eval!0 (simplify!1 f!3964)) e!35298)))

(declare-fun b!65071 () Bool)

(declare-fun e!35318 () Bool)

(assert (=> b!65071 (= e!35318 lt!12390)))

(declare-fun b!65072 () Bool)

(declare-fun e!35307 () Bool)

(assert (=> b!65072 (= e!35307 lt!12394)))

(declare-fun b!65073 () Bool)

(declare-fun res!30521 () Bool)

(assert (=> b!65073 (= e!35307 res!30521)))

(assert (=> b!65073 true))

(assert (=> b!65073 true))

(declare-fun b!65074 () Bool)

(assert (=> b!65074 (= e!35296 lt!12390)))

(declare-fun b!65075 () Bool)

(assert (=> b!65075 (= e!35299 e!35303)))

(declare-fun c!14503 () Bool)

(declare-fun e!35300 () Bool)

(assert (=> b!65075 (= c!14503 e!35300)))

(declare-fun res!30532 () Bool)

(assert (=> b!65075 (=> (not res!30532) (not e!35300))))

(declare-fun lt!12401 () Bool)

(assert (=> b!65075 (= res!30532 lt!12401)))

(assert (=> b!65075 (= lt!12401 (is-Or!13 (simplify!1 f!3964)))))

(declare-fun b!65076 () Bool)

(declare-fun e!35317 () Bool)

(assert (=> b!65076 (= e!35310 e!35317)))

(declare-fun c!14500 () Bool)

(declare-fun lt!12399 () Bool)

(assert (=> b!65076 (= c!14500 lt!12399)))

(declare-fun lt!12398 () Bool)

(assert (=> b!65076 (= lt!12398 e!35307)))

(declare-fun c!14490 () Bool)

(assert (=> b!65076 (= c!14490 (or lt!12399 (is-Not!13 (simplify!1 f!3964))))))

(assert (=> b!65076 (= lt!12399 (is-Implies!13 (simplify!1 f!3964)))))

(declare-fun b!65077 () Bool)

(assert (=> b!65077 (= e!35298 e!35310)))

(declare-fun c!14495 () Bool)

(assert (=> b!65077 (= c!14495 lt!12393)))

(declare-fun e!35319 () Bool)

(assert (=> b!65077 (= lt!12397 e!35319)))

(declare-fun c!14498 () Bool)

(assert (=> b!65077 (= c!14498 e!35311)))

(declare-fun res!30524 () Bool)

(assert (=> b!65077 (=> res!30524 e!35311)))

(assert (=> b!65077 (= res!30524 (and lt!12393 (not lt!12394)))))

(assert (=> b!65077 (= lt!12394 e!35296)))

(declare-fun c!14491 () Bool)

(assert (=> b!65077 (= c!14491 (or lt!12393 (is-Implies!13 (simplify!1 f!3964)) (is-Not!13 (simplify!1 f!3964))))))

(assert (=> b!65077 (= lt!12393 (is-Or!13 (simplify!1 f!3964)))))

(declare-fun b!65078 () Bool)

(assert (=> b!65078 (= e!35299 (rhs!827 (simplify!1 f!3964)))))

(declare-fun b!65079 () Bool)

(declare-fun res!30529 () Bool)

(assert (=> b!65079 (= e!35318 res!30529)))

(assert (=> b!65079 true))

(declare-fun b!65080 () Bool)

(declare-fun e!35301 () Bool)

(assert (=> b!65080 (= e!35304 e!35301)))

(declare-fun res!30519 () Bool)

(assert (=> b!65080 (=> (not res!30519) (not e!35301))))

(assert (=> b!65080 (= res!30519 (not lt!12391))))

(declare-fun b!65081 () Bool)

(declare-fun res!30534 () Bool)

(assert (=> b!65081 (= e!35319 res!30534)))

(assert (=> b!65081 true))

(declare-fun b!65082 () Bool)

(declare-fun e!35314 () Bool)

(assert (=> b!65082 (= e!35301 e!35314)))

(declare-fun res!30530 () Bool)

(assert (=> b!65082 (=> res!30530 e!35314)))

(declare-fun lt!12402 () Bool)

(declare-fun lt!12400 () Bool)

(assert (=> b!65082 (= res!30530 (and lt!12402 (not lt!12400)))))

(assert (=> b!65082 (= lt!12400 e!35318)))

(declare-fun c!14501 () Bool)

(assert (=> b!65082 (= c!14501 (or lt!12402 (is-Implies!13 (simplify!1 f!3964)) (is-Not!13 (simplify!1 f!3964))))))

(assert (=> b!65082 (= lt!12402 (is-Or!13 (simplify!1 f!3964)))))

(declare-fun b!65083 () Bool)

(declare-fun e!35308 () Bool)

(declare-fun e!35313 () Bool)

(assert (=> b!65083 (= e!35308 e!35313)))

(declare-fun res!30533 () Bool)

(assert (=> b!65083 (=> (not res!30533) (not e!35313))))

(declare-fun lt!12392 () Bool)

(assert (=> b!65083 (= res!30533 lt!12392)))

(assert (=> b!65083 (= lt!12392 (is-Implies!13 (simplify!1 f!3964)))))

(declare-fun b!65084 () Bool)

(declare-fun e!35306 () Bool)

(assert (=> b!65084 (= e!35306 lt!12400)))

(declare-fun b!65085 () Bool)

(declare-fun res!30528 () Bool)

(assert (=> b!65085 (= e!35306 res!30528)))

(assert (=> b!65085 true))

(declare-fun b!65086 () Bool)

(assert (=> b!65086 (= e!35302 e!35315)))

(declare-fun res!30518 () Bool)

(assert (=> b!65086 (=> (not res!30518) (not e!35315))))

(assert (=> b!65086 (= res!30518 lt!12396)))

(assert (=> b!65086 (= lt!12396 (is-Implies!13 (simplify!1 f!3964)))))

(declare-fun b!65087 () Bool)

(declare-fun e!35312 () Bool)

(assert (=> b!65087 (= e!35312 (evalLit!0 (id!4788 (simplify!1 f!3964))))))

(declare-fun b!65088 () Bool)

(assert (=> b!65088 (= e!35313 e!35306)))

(declare-fun c!14494 () Bool)

(assert (=> b!65088 (= c!14494 (or lt!12392 (is-Not!13 (simplify!1 f!3964))))))

(declare-fun b!65089 () Bool)

(assert (=> b!65089 (= e!35300 (not e!35305))))

(declare-fun c!14504 () Bool)

(assert (=> b!65089 (= c!14504 (or lt!12401 (is-Implies!13 (simplify!1 f!3964)) (is-Not!13 (simplify!1 f!3964))))))

(declare-fun b!65090 () Bool)

(assert (=> b!65090 (= e!35298 (and lt!12390 lt!12395))))

(declare-fun b!65091 () Bool)

(assert (=> b!65091 (= e!35319 lt!12395)))

(declare-fun b!65092 () Bool)

(assert (=> b!65092 (= e!35312 (not lt!12398))))

(declare-fun b!65093 () Bool)

(assert (=> b!65093 (= e!35314 e!35308)))

(declare-fun res!30520 () Bool)

(assert (=> b!65093 (=> (not res!30520) (not e!35308))))

(assert (=> b!65093 (= res!30520 (not lt!12402))))

(declare-fun b!65094 () Bool)

(assert (=> b!65094 (= e!35297 (eval!0 (ite lt!12391 (lhs!827 (simplify!1 f!3964)) (ite (is-Or!13 (simplify!1 f!3964)) (lhs!829 (simplify!1 f!3964)) (ite (is-Implies!13 (simplify!1 f!3964)) (lhs!828 (simplify!1 f!3964)) (f!4087 (simplify!1 f!3964)))))))))

(declare-fun b!65095 () Bool)

(assert (=> b!65095 (= e!35317 e!35312)))

(declare-fun c!14496 () Bool)

(assert (=> b!65095 (= c!14496 (is-Not!13 (simplify!1 f!3964)))))

(declare-fun b!65096 () Bool)

(assert (=> b!65096 (= e!35305 lt!12390)))

(declare-fun b!65097 () Bool)

(declare-fun res!30525 () Bool)

(assert (=> b!65097 (= e!35297 res!30525)))

(assert (=> b!65097 true))

(declare-fun b!65098 () Bool)

(assert (=> b!65098 (= e!35317 (or (not lt!12398) lt!12397))))

(assert (= (and d!53336 c!14497) b!65094))

(assert (= (and d!53336 (not c!14497)) b!65097))

(assert (= (and d!53336 (not res!30531)) b!65080))

(assert (= (and b!65080 res!30519) b!65082))

(assert (= (and b!65082 c!14501) b!65071))

(assert (= (and b!65082 (not c!14501)) b!65079))

(assert (= (and b!65082 (not res!30530)) b!65093))

(assert (= (and b!65093 res!30520) b!65083))

(assert (= (and b!65083 res!30533) b!65088))

(assert (= (and b!65088 c!14494) b!65084))

(assert (= (and b!65088 (not c!14494)) b!65085))

(assert (= (and b!65075 res!30532) b!65089))

(assert (= (and b!65089 c!14504) b!65096))

(assert (= (and b!65089 (not c!14504)) b!65062))

(assert (= (and b!65075 c!14503) b!65061))

(assert (= (and b!65075 (not c!14503)) b!65060))

(assert (= (and b!65065 c!14499) b!65078))

(assert (= (and b!65065 (not c!14499)) b!65075))

(assert (= (and d!53336 c!14493) b!65065))

(assert (= (and d!53336 (not c!14493)) b!65067))

(assert (= (and b!65077 c!14491) b!65074))

(assert (= (and b!65077 (not c!14491)) b!65064))

(assert (= (and b!65077 (not res!30524)) b!65070))

(assert (= (and b!65070 res!30527) b!65086))

(assert (= (and b!65086 res!30518) b!65068))

(assert (= (and b!65068 c!14502) b!65066))

(assert (= (and b!65068 (not c!14502)) b!65063))

(assert (= (and b!65077 c!14498) b!65091))

(assert (= (and b!65077 (not c!14498)) b!65081))

(assert (= (and b!65076 c!14490) b!65072))

(assert (= (and b!65076 (not c!14490)) b!65073))

(assert (= (and b!65095 c!14496) b!65092))

(assert (= (and b!65095 (not c!14496)) b!65087))

(assert (= (and b!65076 c!14500) b!65098))

(assert (= (and b!65076 (not c!14500)) b!65095))

(assert (= (and b!65077 c!14495) b!65069))

(assert (= (and b!65077 (not c!14495)) b!65076))

(assert (= (and d!53336 c!14492) b!65090))

(assert (= (and d!53336 (not c!14492)) b!65077))

(declare-fun m!69359 () Bool)

(assert (=> b!65065 m!69359))

(declare-fun m!69361 () Bool)

(assert (=> b!65087 m!69361))

(declare-fun m!69363 () Bool)

(assert (=> b!65094 m!69363))

(assert (=> b!64942 d!53336))

(declare-fun b!65127 () Bool)

(declare-fun e!35338 () Formula!8)

(declare-fun lt!12430 () Formula!8)

(assert (=> b!65127 (= e!35338 lt!12430)))

(declare-fun b!65128 () Bool)

(declare-fun e!35340 () Formula!8)

(declare-fun lt!12428 () Formula!8)

(assert (=> b!65128 (= e!35340 (Or!13 lt!12430 lt!12428))))

(declare-fun b!65129 () Bool)

(declare-fun e!35336 () Formula!8)

(declare-fun lt!12429 () Bool)

(assert (=> b!65129 (= e!35336 (simplify!1 (ite lt!12429 (rhs!827 f!3964) (ite (is-Or!13 f!3964) (rhs!829 f!3964) (rhs!828 f!3964)))))))

(declare-fun b!65130 () Bool)

(declare-fun e!35337 () Formula!8)

(declare-fun res!30561 () Formula!8)

(assert (=> b!65130 (= e!35337 res!30561)))

(assert (=> b!65130 true))

(declare-fun b!65131 () Bool)

(declare-fun e!35339 () Formula!8)

(declare-fun res!30563 () Formula!8)

(assert (=> b!65131 (= e!35339 res!30563)))

(assert (=> b!65131 true))

(declare-fun b!65132 () Bool)

(declare-fun e!35334 () Formula!8)

(declare-fun lt!12427 () Formula!8)

(declare-fun lt!12423 () Formula!8)

(assert (=> b!65132 (= e!35334 (And!13 lt!12427 lt!12423))))

(declare-fun b!65133 () Bool)

(declare-fun e!35335 () Formula!8)

(declare-fun res!30562 () Formula!8)

(assert (=> b!65133 (= e!35335 res!30562)))

(assert (=> b!65133 true))

(declare-fun b!65134 () Bool)

(declare-fun lt!12425 () Bool)

(declare-fun lt!12422 () Formula!8)

(assert (=> b!65134 (= e!35340 (ite lt!12425 (Or!13 (Not!13 lt!12422) lt!12428) (ite (is-Not!13 f!3964) (Not!13 lt!12422) f!3964)))))

(assert (=> b!65134 (= lt!12422 e!35338)))

(declare-fun c!14522 () Bool)

(assert (=> b!65134 (= c!14522 (or lt!12425 (is-Not!13 f!3964)))))

(assert (=> b!65134 (= lt!12425 (is-Implies!13 f!3964))))

(declare-fun b!65135 () Bool)

(assert (=> b!65135 (= e!35334 e!35340)))

(declare-fun c!14519 () Bool)

(declare-fun lt!12426 () Bool)

(assert (=> b!65135 (= c!14519 lt!12426)))

(assert (=> b!65135 (= lt!12428 e!35339)))

(declare-fun c!14520 () Bool)

(assert (=> b!65135 (= c!14520 (or lt!12426 (is-Implies!13 f!3964)))))

(assert (=> b!65135 (= lt!12430 e!35337)))

(declare-fun c!14524 () Bool)

(assert (=> b!65135 (= c!14524 (or lt!12426 (is-Implies!13 f!3964) (is-Not!13 f!3964)))))

(assert (=> b!65135 (= lt!12426 (is-Or!13 f!3964))))

(declare-fun b!65136 () Bool)

(assert (=> b!65136 (= e!35339 lt!12423)))

(declare-fun b!65137 () Bool)

(declare-fun res!30565 () Formula!8)

(assert (=> b!65137 (= e!35336 res!30565)))

(assert (=> b!65137 true))

(declare-fun d!53338 () Bool)

(declare-fun lt!12424 () Formula!8)

(declare-fun isSimplified!1 (Formula!8) Bool)

(assert (=> d!53338 (isSimplified!1 lt!12424)))

(assert (=> d!53338 (= lt!12424 e!35334)))

(declare-fun c!14523 () Bool)

(assert (=> d!53338 (= c!14523 lt!12429)))

(assert (=> d!53338 (= lt!12423 e!35336)))

(declare-fun c!14521 () Bool)

(assert (=> d!53338 (= c!14521 (or lt!12429 (is-Or!13 f!3964) (is-Implies!13 f!3964)))))

(assert (=> d!53338 (= lt!12427 e!35335)))

(declare-fun c!14525 () Bool)

(assert (=> d!53338 (= c!14525 (or lt!12429 (is-Or!13 f!3964) (is-Implies!13 f!3964) (is-Not!13 f!3964)))))

(assert (=> d!53338 (= lt!12429 (is-And!13 f!3964))))

(assert (=> d!53338 (= (simplify!1 f!3964) lt!12424)))

(declare-fun b!65138 () Bool)

(declare-fun res!30564 () Formula!8)

(assert (=> b!65138 (= e!35338 res!30564)))

(assert (=> b!65138 true))

(assert (=> b!65138 true))

(declare-fun b!65139 () Bool)

(assert (=> b!65139 (= e!35335 (simplify!1 (ite lt!12429 (lhs!827 f!3964) (ite (is-Or!13 f!3964) (lhs!829 f!3964) (ite (is-Implies!13 f!3964) (lhs!828 f!3964) (f!4087 f!3964))))))))

(declare-fun b!65140 () Bool)

(assert (=> b!65140 (= e!35337 lt!12427)))

(assert (= (and d!53338 c!14525) b!65139))

(assert (= (and d!53338 (not c!14525)) b!65133))

(assert (= (and d!53338 c!14521) b!65129))

(assert (= (and d!53338 (not c!14521)) b!65137))

(assert (= (and b!65135 c!14524) b!65140))

(assert (= (and b!65135 (not c!14524)) b!65130))

(assert (= (and b!65135 c!14520) b!65136))

(assert (= (and b!65135 (not c!14520)) b!65131))

(assert (= (and b!65134 c!14522) b!65127))

(assert (= (and b!65134 (not c!14522)) b!65138))

(assert (= (and b!65135 c!14519) b!65128))

(assert (= (and b!65135 (not c!14519)) b!65134))

(assert (= (and d!53338 c!14523) b!65132))

(assert (= (and d!53338 (not c!14523)) b!65135))

(declare-fun m!69365 () Bool)

(assert (=> b!65129 m!69365))

(declare-fun m!69367 () Bool)

(assert (=> d!53338 m!69367))

(declare-fun m!69369 () Bool)

(assert (=> b!65139 m!69369))

(assert (=> b!64942 d!53338))

(declare-fun b!65185 () Bool)

(declare-fun e!35373 () Bool)

(declare-fun lt!12450 () Bool)

(assert (=> b!65185 (= e!35373 (simplifySemantics!0 (ite lt!12450 (lhs!827 (f!4087 f!3964)) (ite (is-Implies!13 (f!4087 f!3964)) (lhs!828 (f!4087 f!3964)) (lhs!829 (f!4087 f!3964))))))))

(declare-fun b!65186 () Bool)

(declare-fun e!35370 () Bool)

(declare-fun lt!12452 () Bool)

(assert (=> b!65186 (= e!35370 (= lt!12452 (eval!0 (simplify!1 (f!4087 f!3964)))))))

(declare-fun b!65187 () Bool)

(declare-fun e!35368 () Bool)

(declare-fun e!35367 () Bool)

(declare-fun e!35363 () Bool)

(assert (=> b!65187 (= e!35368 (= e!35367 e!35363))))

(declare-fun c!14558 () Bool)

(assert (=> b!65187 (= c!14558 (or lt!12450 (and (not lt!12450) (is-Literal!7 (f!4087 f!3964)))))))

(declare-fun c!14551 () Bool)

(assert (=> b!65187 (= c!14551 (or lt!12450 (is-Literal!7 (f!4087 f!3964))))))

(declare-fun b!65188 () Bool)

(declare-fun e!35366 () Formula!8)

(declare-fun res!30620 () Formula!8)

(assert (=> b!65188 (= e!35366 res!30620)))

(assert (=> b!65188 true))

(declare-fun b!65189 () Bool)

(declare-fun e!35364 () Bool)

(assert (=> b!65189 (= e!35364 (simplifySemantics!0 (ite lt!12450 (rhs!827 (f!4087 f!3964)) (ite (is-Implies!13 (f!4087 f!3964)) (rhs!828 (f!4087 f!3964)) (ite (is-Or!13 (f!4087 f!3964)) (rhs!829 (f!4087 f!3964)) (f!4087 (f!4087 f!3964)))))))))

(declare-fun b!65190 () Bool)

(declare-fun res!30622 () Bool)

(assert (=> b!65190 (= e!35363 res!30622)))

(assert (=> b!65190 true))

(declare-fun b!65191 () Bool)

(declare-fun e!35371 () Formula!8)

(declare-fun res!30617 () Formula!8)

(assert (=> b!65191 (= e!35371 res!30617)))

(assert (=> b!65191 true))

(declare-fun b!65192 () Bool)

(declare-fun res!30616 () Bool)

(assert (=> b!65192 (= e!35364 res!30616)))

(assert (=> b!65192 true))

(declare-fun b!65193 () Bool)

(declare-fun e!35369 () Bool)

(assert (=> b!65193 (= e!35369 (eval!0 (f!4087 f!3964)))))

(declare-fun b!65194 () Bool)

(declare-fun res!30618 () Bool)

(assert (=> b!65194 (= e!35373 res!30618)))

(assert (=> b!65194 true))

(declare-fun b!65195 () Bool)

(assert (=> b!65195 (= e!35367 (eval!0 (f!4087 f!3964)))))

(declare-fun b!65196 () Bool)

(assert (=> b!65196 (= e!35366 (simplify!1 (f!4087 f!3964)))))

(declare-fun b!65197 () Bool)

(declare-fun lt!12454 () Formula!8)

(assert (=> b!65197 (= e!35363 (eval!0 lt!12454))))

(declare-fun b!65198 () Bool)

(assert (=> b!65198 (= e!35371 (simplify!1 (f!4087 f!3964)))))

(declare-fun b!65199 () Bool)

(declare-fun lt!12457 () Bool)

(declare-fun lt!12451 () Formula!8)

(assert (=> b!65199 (= e!35370 (= lt!12457 (eval!0 lt!12451)))))

(declare-fun b!65200 () Bool)

(declare-fun e!35372 () Bool)

(declare-fun res!30619 () Bool)

(assert (=> b!65200 (= e!35372 res!30619)))

(assert (=> b!65200 true))

(assert (=> b!65200 true))

(declare-fun b!65201 () Bool)

(declare-fun lt!12449 () Bool)

(assert (=> b!65201 (= e!35372 (eval!0 (ite lt!12449 lt!12451 (f!4087 f!3964))))))

(declare-fun b!65202 () Bool)

(declare-fun res!30621 () Bool)

(assert (=> b!65202 (= e!35367 res!30621)))

(assert (=> b!65202 true))

(declare-fun b!65203 () Bool)

(declare-fun res!30615 () Bool)

(assert (=> b!65203 (= e!35369 res!30615)))

(assert (=> b!65203 true))

(declare-fun d!53340 () Bool)

(assert (=> d!53340 e!35368))

(declare-fun c!14553 () Bool)

(assert (=> d!53340 (= c!14553 (or lt!12450 (is-Literal!7 (f!4087 f!3964))))))

(assert (=> d!53340 (= lt!12454 e!35371)))

(declare-fun c!14557 () Bool)

(assert (=> d!53340 (= c!14557 (or lt!12450 (is-Literal!7 (f!4087 f!3964))))))

(declare-fun lt!12455 () Bool)

(assert (=> d!53340 (= lt!12455 e!35373)))

(declare-fun c!14555 () Bool)

(assert (=> d!53340 (= c!14555 (or lt!12450 (and (not (is-Literal!7 (f!4087 f!3964))) (or (is-Implies!13 (f!4087 f!3964)) (is-Or!13 (f!4087 f!3964))))))))

(declare-fun lt!12453 () Bool)

(assert (=> d!53340 (= lt!12453 e!35364)))

(declare-fun c!14549 () Bool)

(assert (=> d!53340 (= c!14549 (or lt!12450 (not (is-Literal!7 (f!4087 f!3964)))))))

(assert (=> d!53340 (= lt!12450 (is-And!13 (f!4087 f!3964)))))

(assert (=> d!53340 (= (simplifySemantics!0 (f!4087 f!3964)) true)))

(declare-fun b!65204 () Bool)

(declare-fun e!35365 () Bool)

(assert (=> b!65204 (= e!35365 (= lt!12457 lt!12452))))

(declare-fun b!65205 () Bool)

(assert (=> b!65205 (= e!35368 e!35365)))

(declare-fun c!14550 () Bool)

(declare-fun lt!12456 () Bool)

(assert (=> b!65205 (= c!14550 lt!12456)))

(assert (=> b!65205 (= lt!12452 e!35372)))

(declare-fun c!14554 () Bool)

(assert (=> b!65205 (= c!14554 (or lt!12449 (and (not lt!12456) (not (is-Or!13 (f!4087 f!3964))))))))

(assert (=> b!65205 (= lt!12449 lt!12456)))

(assert (=> b!65205 (= lt!12451 e!35366)))

(declare-fun c!14552 () Bool)

(assert (=> b!65205 (= c!14552 (or lt!12456 (is-Or!13 (f!4087 f!3964))))))

(assert (=> b!65205 (= lt!12457 e!35369)))

(declare-fun c!14556 () Bool)

(assert (=> b!65205 (= c!14556 (or lt!12456 (is-Or!13 (f!4087 f!3964))))))

(assert (=> b!65205 (= lt!12456 (is-Implies!13 (f!4087 f!3964)))))

(declare-fun b!65206 () Bool)

(assert (=> b!65206 (= e!35365 e!35370)))

(declare-fun c!14548 () Bool)

(assert (=> b!65206 (= c!14548 (is-Or!13 (f!4087 f!3964)))))

(assert (= (and d!53340 c!14549) b!65189))

(assert (= (and d!53340 (not c!14549)) b!65192))

(assert (= (and d!53340 c!14555) b!65185))

(assert (= (and d!53340 (not c!14555)) b!65194))

(assert (= (and d!53340 c!14557) b!65198))

(assert (= (and d!53340 (not c!14557)) b!65191))

(assert (= (and b!65187 c!14551) b!65195))

(assert (= (and b!65187 (not c!14551)) b!65202))

(assert (= (and b!65187 c!14558) b!65197))

(assert (= (and b!65187 (not c!14558)) b!65190))

(assert (= (and b!65205 c!14556) b!65193))

(assert (= (and b!65205 (not c!14556)) b!65203))

(assert (= (and b!65205 c!14552) b!65196))

(assert (= (and b!65205 (not c!14552)) b!65188))

(assert (= (and b!65205 c!14554) b!65201))

(assert (= (and b!65205 (not c!14554)) b!65200))

(assert (= (and b!65206 c!14548) b!65199))

(assert (= (and b!65206 (not c!14548)) b!65186))

(assert (= (and b!65205 c!14550) b!65204))

(assert (= (and b!65205 (not c!14550)) b!65206))

(assert (= (and d!53340 c!14553) b!65187))

(assert (= (and d!53340 (not c!14553)) b!65205))

(declare-fun m!69371 () Bool)

(assert (=> b!65193 m!69371))

(assert (=> b!65195 m!69371))

(declare-fun m!69373 () Bool)

(assert (=> b!65185 m!69373))

(declare-fun m!69375 () Bool)

(assert (=> b!65201 m!69375))

(declare-fun m!69377 () Bool)

(assert (=> b!65189 m!69377))

(declare-fun m!69379 () Bool)

(assert (=> b!65197 m!69379))

(declare-fun m!69381 () Bool)

(assert (=> b!65196 m!69381))

(assert (=> b!65198 m!69381))

(assert (=> b!65186 m!69381))

(assert (=> b!65186 m!69381))

(declare-fun m!69383 () Bool)

(assert (=> b!65186 m!69383))

(declare-fun m!69385 () Bool)

(assert (=> b!65199 m!69385))

(assert (=> b!64941 d!53340))

(push 1)

(assert (not b!65199))

(assert (not d!53338))

(assert (not b!65193))

(assert (not b!65195))

(assert (not b!65198))

(assert (not b!65129))

(assert (not b!65189))

(assert (not b!65087))

(assert (not b!65048))

(assert (not b!65197))

(assert (not b!65185))

(assert (not b!65094))

(assert (not b!65196))

(assert (not b!65201))

(assert (not b!65055))

(assert (not b!65065))

(assert (not b!65186))

(assert (not b!65026))

(assert (not b!65139))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


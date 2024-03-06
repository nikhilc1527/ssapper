; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3660 () Bool)

(assert start!3660)

(declare-fun b!23565 () Bool)

(declare-fun res!10456 () Bool)

(declare-fun e!12240 () Bool)

(assert (=> b!23565 (=> (not res!10456) (not e!12240))))

(declare-fun i!252 () Int)

(declare-datatypes () ((T!1795 (T!1796 (val!70 Int)))))

(declare-datatypes () ((Conc!47 (CC!46 (left!691 Conc!47) (right!694 Conc!47)) (Single!46 (x!8850 T!1795)) (Empty!57))))

(declare-fun xs!572 () Conc!47)

(declare-fun size!252 (Conc!47) Int)

(assert (=> b!23565 (= res!10456 (< i!252 (size!252 (left!691 xs!572))))))

(declare-fun b!23566 () Bool)

(declare-fun res!10454 () Bool)

(assert (=> b!23566 (=> (not res!10454) (not e!12240))))

(declare-fun balanced!44 (Conc!47) Bool)

(assert (=> b!23566 (= res!10454 (balanced!44 xs!572))))

(declare-fun res!10461 () Bool)

(assert (=> start!3660 (=> (not res!10461) (not e!12240))))

(declare-fun concInv!43 (Conc!47) Bool)

(assert (=> start!3660 (= res!10461 (concInv!43 xs!572))))

(assert (=> start!3660 e!12240))

(declare-fun e!12242 () Bool)

(assert (=> start!3660 e!12242))

(assert (=> start!3660 true))

(declare-fun tp_is_empty!139 () Bool)

(assert (=> start!3660 tp_is_empty!139))

(declare-fun b!23567 () Bool)

(declare-fun res!10460 () Bool)

(assert (=> b!23567 (=> (not res!10460) (not e!12240))))

(assert (=> b!23567 (= res!10460 (>= i!252 0))))

(declare-fun e!12241 () Bool)

(declare-fun b!23568 () Bool)

(declare-fun res!5554 () T!1795)

(declare-datatypes () ((List!351 (Cons!345 (h!260 T!1795) (t!4351 List!351)) (Nil!346))))

(declare-fun apply!46 (List!351 Int) T!1795)

(declare-fun toList!106 (Conc!47) List!351)

(assert (=> b!23568 (= e!12241 (not (= res!5554 (apply!46 (toList!106 xs!572) i!252))))))

(declare-fun b!23569 () Bool)

(assert (=> b!23569 (= e!12242 tp_is_empty!139)))

(declare-fun b!23570 () Bool)

(declare-fun res!10457 () Bool)

(assert (=> b!23570 (=> (not res!10457) (not e!12240))))

(declare-fun lookup!7 (Conc!47 Int) T!1795)

(assert (=> b!23570 (= res!10457 (= res!5554 (lookup!7 (left!691 xs!572) i!252)))))

(declare-fun b!23571 () Bool)

(declare-fun res!10462 () Bool)

(assert (=> b!23571 (=> (not res!10462) (not e!12240))))

(declare-fun isEmpty!306 (Conc!47) Bool)

(assert (=> b!23571 (= res!10462 (not (isEmpty!306 xs!572)))))

(declare-fun b!23572 () Bool)

(declare-fun tp!5133 () Bool)

(declare-fun tp!5132 () Bool)

(assert (=> b!23572 (= e!12242 (and tp!5133 tp!5132))))

(declare-fun b!23573 () Bool)

(declare-fun res!10459 () Bool)

(assert (=> b!23573 (=> (not res!10459) (not e!12240))))

(assert (=> b!23573 (= res!10459 (< i!252 (size!252 xs!572)))))

(declare-fun b!23574 () Bool)

(declare-fun res!10455 () Bool)

(assert (=> b!23574 (=> (not res!10455) (not e!12240))))

(assert (=> b!23574 (= res!10455 (not (is-Single!46 xs!572)))))

(declare-fun b!23575 () Bool)

(assert (=> b!23575 (= e!12240 e!12241)))

(declare-fun res!10458 () Bool)

(assert (=> b!23575 (=> res!10458 e!12241)))

(declare-fun instAppendIndexAxiom!7 (Conc!47 Int) Bool)

(assert (=> b!23575 (= res!10458 (not (instAppendIndexAxiom!7 xs!572 i!252)))))

(assert (= (and start!3660 res!10461) b!23566))

(assert (= (and b!23566 res!10454) b!23571))

(assert (= (and b!23571 res!10462) b!23567))

(assert (= (and b!23567 res!10460) b!23573))

(assert (= (and b!23573 res!10459) b!23574))

(assert (= (and b!23574 res!10455) b!23565))

(assert (= (and b!23565 res!10456) b!23570))

(assert (= (and b!23570 res!10457) b!23575))

(assert (= (and b!23575 (not res!10458)) b!23568))

(assert (= (and start!3660 (is-CC!46 xs!572)) b!23572))

(assert (= (and start!3660 (is-Single!46 xs!572)) b!23569))

(declare-fun m!25053 () Bool)

(assert (=> b!23568 m!25053))

(assert (=> b!23568 m!25053))

(declare-fun m!25055 () Bool)

(assert (=> b!23568 m!25055))

(declare-fun m!25057 () Bool)

(assert (=> b!23565 m!25057))

(declare-fun m!25059 () Bool)

(assert (=> start!3660 m!25059))

(declare-fun m!25061 () Bool)

(assert (=> b!23566 m!25061))

(declare-fun m!25063 () Bool)

(assert (=> b!23573 m!25063))

(declare-fun m!25065 () Bool)

(assert (=> b!23575 m!25065))

(declare-fun m!25067 () Bool)

(assert (=> b!23570 m!25067))

(declare-fun m!25069 () Bool)

(assert (=> b!23571 m!25069))

(push 1)

(assert (not b!23573))

(assert (not start!3660))

(assert (not b!23566))

(assert (not b!23570))

(assert (not b!23565))

(assert (not b!23575))

(assert tp_is_empty!139)

(assert (not b!23568))

(assert (not b!23572))

(assert (not b!23571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13343 () Bool)

(declare-fun e!12253 () Bool)

(assert (=> d!13343 e!12253))

(declare-fun res!10478 () Bool)

(assert (=> d!13343 (=> (not res!10478) (not e!12253))))

(assert (=> d!13343 (= res!10478 (instAppendIndexAxiom!7 (left!691 xs!572) i!252))))

(declare-fun lt!3654 () T!1795)

(declare-fun e!12256 () T!1795)

(assert (=> d!13343 (= lt!3654 e!12256)))

(declare-fun c!5497 () Bool)

(assert (=> d!13343 (= c!5497 (is-Single!46 (left!691 xs!572)))))

(declare-fun e!12257 () Bool)

(assert (=> d!13343 e!12257))

(declare-fun res!10474 () Bool)

(assert (=> d!13343 (=> (not res!10474) (not e!12257))))

(declare-fun e!12254 () Bool)

(assert (=> d!13343 (= res!10474 e!12254)))

(declare-fun res!10475 () Bool)

(assert (=> d!13343 (=> (not res!10475) (not e!12254))))

(assert (=> d!13343 (= res!10475 (concInv!43 (left!691 xs!572)))))

(assert (=> d!13343 (= (lookup!7 (left!691 xs!572) i!252) lt!3654)))

(declare-fun b!23594 () Bool)

(declare-fun res!10477 () Bool)

(assert (=> b!23594 (=> (not res!10477) (not e!12257))))

(assert (=> b!23594 (= res!10477 (not (isEmpty!306 (left!691 xs!572))))))

(declare-fun b!23595 () Bool)

(declare-fun res!10476 () Bool)

(assert (=> b!23595 (=> (not res!10476) (not e!12257))))

(assert (=> b!23595 (= res!10476 (>= i!252 0))))

(declare-fun b!23596 () Bool)

(assert (=> b!23596 (= e!12256 (x!8850 (left!691 xs!572)))))

(declare-fun b!23597 () Bool)

(assert (=> b!23597 (= e!12253 (= lt!3654 (apply!46 (toList!106 (left!691 xs!572)) i!252)))))

(declare-fun b!23598 () Bool)

(assert (=> b!23598 (= e!12254 (balanced!44 (left!691 xs!572)))))

(declare-fun b!23599 () Bool)

(declare-fun e!12255 () T!1795)

(assert (=> b!23599 (= e!12256 e!12255)))

(declare-fun c!5496 () Bool)

(assert (=> b!23599 (= c!5496 (< i!252 (size!252 (left!691 (left!691 xs!572)))))))

(declare-fun b!23600 () Bool)

(assert (=> b!23600 (= e!12255 (lookup!7 (right!694 (left!691 xs!572)) (- i!252 (size!252 (left!691 (left!691 xs!572))))))))

(declare-fun b!23601 () Bool)

(assert (=> b!23601 (= e!12257 (< i!252 (size!252 (left!691 xs!572))))))

(declare-fun b!23602 () Bool)

(assert (=> b!23602 (= e!12255 (lookup!7 (left!691 (left!691 xs!572)) i!252))))

(assert (= (and d!13343 res!10475) b!23598))

(assert (= (and d!13343 res!10474) b!23594))

(assert (= (and b!23594 res!10477) b!23595))

(assert (= (and b!23595 res!10476) b!23601))

(assert (= (and b!23599 c!5496) b!23602))

(assert (= (and b!23599 (not c!5496)) b!23600))

(assert (= (and d!13343 c!5497) b!23596))

(assert (= (and d!13343 (not c!5497)) b!23599))

(assert (= (and d!13343 res!10478) b!23597))

(declare-fun m!25071 () Bool)

(assert (=> d!13343 m!25071))

(declare-fun m!25073 () Bool)

(assert (=> d!13343 m!25073))

(declare-fun m!25075 () Bool)

(assert (=> b!23597 m!25075))

(assert (=> b!23597 m!25075))

(declare-fun m!25077 () Bool)

(assert (=> b!23597 m!25077))

(declare-fun m!25079 () Bool)

(assert (=> b!23600 m!25079))

(declare-fun m!25081 () Bool)

(assert (=> b!23600 m!25081))

(declare-fun m!25083 () Bool)

(assert (=> b!23598 m!25083))

(declare-fun m!25085 () Bool)

(assert (=> b!23602 m!25085))

(declare-fun m!25087 () Bool)

(assert (=> b!23594 m!25087))

(assert (=> b!23601 m!25057))

(assert (=> b!23599 m!25079))

(assert (=> b!23570 d!13343))

(declare-fun b!23611 () Bool)

(declare-fun e!12263 () Bool)

(declare-fun e!12262 () Bool)

(assert (=> b!23611 (= e!12263 e!12262)))

(declare-fun res!10487 () Bool)

(assert (=> b!23611 (=> (not res!10487) (not e!12262))))

(assert (=> b!23611 (= res!10487 (not (isEmpty!306 (left!691 xs!572))))))

(declare-fun b!23613 () Bool)

(declare-fun res!10489 () Bool)

(assert (=> b!23613 (=> (not res!10489) (not e!12262))))

(assert (=> b!23613 (= res!10489 (concInv!43 (left!691 xs!572)))))

(declare-fun b!23612 () Bool)

(declare-fun res!10488 () Bool)

(assert (=> b!23612 (=> (not res!10488) (not e!12262))))

(assert (=> b!23612 (= res!10488 (not (isEmpty!306 (right!694 xs!572))))))

(declare-fun b!23614 () Bool)

(assert (=> b!23614 (= e!12262 (concInv!43 (right!694 xs!572)))))

(declare-fun d!13345 () Bool)

(declare-fun res!10490 () Bool)

(assert (=> d!13345 (=> res!10490 e!12263)))

(assert (=> d!13345 (= res!10490 (not (is-CC!46 xs!572)))))

(assert (=> d!13345 (= (concInv!43 xs!572) e!12263)))

(assert (= (and d!13345 (not res!10490)) b!23611))

(assert (= (and b!23611 res!10487) b!23612))

(assert (= (and b!23612 res!10488) b!23613))

(assert (= (and b!23613 res!10489) b!23614))

(assert (=> b!23611 m!25087))

(assert (=> b!23613 m!25073))

(declare-fun m!25089 () Bool)

(assert (=> b!23612 m!25089))

(declare-fun m!25091 () Bool)

(assert (=> b!23614 m!25091))

(assert (=> start!3660 d!13345))

(declare-fun b!23623 () Bool)

(declare-fun e!12269 () Int)

(assert (=> b!23623 (= e!12269 0)))

(declare-fun d!13347 () Bool)

(declare-fun lt!3657 () Int)

(assert (=> d!13347 (>= lt!3657 0)))

(assert (=> d!13347 (= lt!3657 e!12269)))

(declare-fun c!5502 () Bool)

(assert (=> d!13347 (= c!5502 (is-Empty!57 xs!572))))

(assert (=> d!13347 (= (size!252 xs!572) lt!3657)))

(declare-fun b!23625 () Bool)

(declare-fun e!12268 () Int)

(assert (=> b!23625 (= e!12268 1)))

(declare-fun b!23624 () Bool)

(assert (=> b!23624 (= e!12269 e!12268)))

(declare-fun c!5503 () Bool)

(assert (=> b!23624 (= c!5503 (is-Single!46 xs!572))))

(declare-fun b!23626 () Bool)

(assert (=> b!23626 (= e!12268 (+ (size!252 (left!691 xs!572)) (size!252 (right!694 xs!572))))))

(assert (= (and b!23624 c!5503) b!23625))

(assert (= (and b!23624 (not c!5503)) b!23626))

(assert (= (and d!13347 c!5502) b!23623))

(assert (= (and d!13347 (not c!5502)) b!23624))

(assert (=> b!23626 m!25057))

(declare-fun m!25093 () Bool)

(assert (=> b!23626 m!25093))

(assert (=> b!23573 d!13347))

(declare-fun d!13349 () Bool)

(declare-fun c!5506 () Bool)

(assert (=> d!13349 (= c!5506 (= i!252 0))))

(declare-fun e!12272 () T!1795)

(assert (=> d!13349 (= (apply!46 (toList!106 xs!572) i!252) e!12272)))

(declare-fun b!23631 () Bool)

(declare-fun head!538 (List!351) T!1795)

(assert (=> b!23631 (= e!12272 (head!538 (toList!106 xs!572)))))

(declare-fun b!23632 () Bool)

(declare-fun tail!565 (List!351) List!351)

(assert (=> b!23632 (= e!12272 (apply!46 (tail!565 (toList!106 xs!572)) (- i!252 1)))))

(assert (= (and d!13349 c!5506) b!23631))

(assert (= (and d!13349 (not c!5506)) b!23632))

(assert (=> b!23631 m!25053))

(declare-fun m!25095 () Bool)

(assert (=> b!23631 m!25095))

(assert (=> b!23632 m!25053))

(declare-fun m!25097 () Bool)

(assert (=> b!23632 m!25097))

(assert (=> b!23632 m!25097))

(declare-fun m!25099 () Bool)

(assert (=> b!23632 m!25099))

(assert (=> b!23568 d!13349))

(declare-fun b!23643 () Bool)

(declare-fun e!12277 () List!351)

(assert (=> b!23643 (= e!12277 (Cons!345 (x!8850 xs!572) Nil!346))))

(declare-fun d!13351 () Bool)

(declare-fun lt!3660 () List!351)

(declare-fun size!253 (List!351) Int)

(assert (=> d!13351 (= (size!253 lt!3660) (size!252 xs!572))))

(declare-fun e!12278 () List!351)

(assert (=> d!13351 (= lt!3660 e!12278)))

(declare-fun c!5511 () Bool)

(assert (=> d!13351 (= c!5511 (is-Empty!57 xs!572))))

(assert (=> d!13351 (= (toList!106 xs!572) lt!3660)))

(declare-fun b!23641 () Bool)

(assert (=> b!23641 (= e!12278 Nil!346)))

(declare-fun b!23644 () Bool)

(declare-fun ++!31 (List!351 List!351) List!351)

(assert (=> b!23644 (= e!12277 (++!31 (toList!106 (left!691 xs!572)) (toList!106 (right!694 xs!572))))))

(declare-fun b!23642 () Bool)

(assert (=> b!23642 (= e!12278 e!12277)))

(declare-fun c!5512 () Bool)

(assert (=> b!23642 (= c!5512 (is-Single!46 xs!572))))

(assert (= (and b!23642 c!5512) b!23643))

(assert (= (and b!23642 (not c!5512)) b!23644))

(assert (= (and d!13351 c!5511) b!23641))

(assert (= (and d!13351 (not c!5511)) b!23642))

(declare-fun m!25101 () Bool)

(assert (=> d!13351 m!25101))

(assert (=> d!13351 m!25063))

(assert (=> b!23644 m!25075))

(declare-fun m!25103 () Bool)

(assert (=> b!23644 m!25103))

(assert (=> b!23644 m!25075))

(assert (=> b!23644 m!25103))

(declare-fun m!25105 () Bool)

(assert (=> b!23644 m!25105))

(assert (=> b!23568 d!13351))

(declare-fun b!23645 () Bool)

(declare-fun e!12280 () Int)

(assert (=> b!23645 (= e!12280 0)))

(declare-fun d!13353 () Bool)

(declare-fun lt!3661 () Int)

(assert (=> d!13353 (>= lt!3661 0)))

(assert (=> d!13353 (= lt!3661 e!12280)))

(declare-fun c!5513 () Bool)

(assert (=> d!13353 (= c!5513 (is-Empty!57 (left!691 xs!572)))))

(assert (=> d!13353 (= (size!252 (left!691 xs!572)) lt!3661)))

(declare-fun b!23647 () Bool)

(declare-fun e!12279 () Int)

(assert (=> b!23647 (= e!12279 1)))

(declare-fun b!23646 () Bool)

(assert (=> b!23646 (= e!12280 e!12279)))

(declare-fun c!5514 () Bool)

(assert (=> b!23646 (= c!5514 (is-Single!46 (left!691 xs!572)))))

(declare-fun b!23648 () Bool)

(assert (=> b!23648 (= e!12279 (+ (size!252 (left!691 (left!691 xs!572))) (size!252 (right!694 (left!691 xs!572)))))))

(assert (= (and b!23646 c!5514) b!23647))

(assert (= (and b!23646 (not c!5514)) b!23648))

(assert (= (and d!13353 c!5513) b!23645))

(assert (= (and d!13353 (not c!5513)) b!23646))

(assert (=> b!23648 m!25079))

(declare-fun m!25107 () Bool)

(assert (=> b!23648 m!25107))

(assert (=> b!23565 d!13353))

(declare-fun d!13355 () Bool)

(assert (=> d!13355 (= (isEmpty!306 xs!572) (= xs!572 Empty!57))))

(assert (=> b!23571 d!13355))

(declare-fun b!23660 () Bool)

(declare-fun e!12285 () Bool)

(assert (=> b!23660 (= e!12285 (balanced!44 (right!694 xs!572)))))

(declare-fun b!23658 () Bool)

(declare-fun res!10503 () Bool)

(assert (=> b!23658 (=> (not res!10503) (not e!12285))))

(declare-fun level!38 (Conc!47) Int)

(assert (=> b!23658 (= res!10503 (<= (- (level!38 (left!691 xs!572)) (level!38 (right!694 xs!572))) 1))))

(declare-fun b!23657 () Bool)

(declare-fun e!12286 () Bool)

(assert (=> b!23657 (= e!12286 e!12285)))

(declare-fun res!10500 () Bool)

(assert (=> b!23657 (=> (not res!10500) (not e!12285))))

(assert (=> b!23657 (= res!10500 (>= (- (level!38 (left!691 xs!572)) (level!38 (right!694 xs!572))) (- 1)))))

(declare-fun b!23659 () Bool)

(declare-fun res!10501 () Bool)

(assert (=> b!23659 (=> (not res!10501) (not e!12285))))

(assert (=> b!23659 (= res!10501 (balanced!44 (left!691 xs!572)))))

(declare-fun d!13357 () Bool)

(declare-fun res!10502 () Bool)

(assert (=> d!13357 (=> res!10502 e!12286)))

(assert (=> d!13357 (= res!10502 (not (is-CC!46 xs!572)))))

(assert (=> d!13357 (= (balanced!44 xs!572) e!12286)))

(assert (= (and d!13357 (not res!10502)) b!23657))

(assert (= (and b!23657 res!10500) b!23658))

(assert (= (and b!23658 res!10503) b!23659))

(assert (= (and b!23659 res!10501) b!23660))

(declare-fun m!25109 () Bool)

(assert (=> b!23660 m!25109))

(declare-fun m!25111 () Bool)

(assert (=> b!23658 m!25111))

(declare-fun m!25113 () Bool)

(assert (=> b!23658 m!25113))

(assert (=> b!23657 m!25111))

(assert (=> b!23657 m!25113))

(assert (=> b!23659 m!25083))

(assert (=> b!23566 d!13357))

(declare-fun d!13359 () Bool)

(declare-fun e!12292 () Bool)

(assert (=> d!13359 e!12292))

(declare-fun res!10509 () Bool)

(assert (=> d!13359 (=> res!10509 e!12292)))

(assert (=> d!13359 (= res!10509 (not (is-CC!46 xs!572)))))

(declare-fun e!12291 () Bool)

(assert (=> d!13359 e!12291))

(declare-fun res!10508 () Bool)

(assert (=> d!13359 (=> (not res!10508) (not e!12291))))

(assert (=> d!13359 (= res!10508 (<= 0 i!252))))

(assert (=> d!13359 (= (instAppendIndexAxiom!7 xs!572 i!252) true)))

(declare-fun b!23665 () Bool)

(assert (=> b!23665 (= e!12291 (< i!252 (size!252 xs!572)))))

(declare-fun b!23666 () Bool)

(declare-fun appendIndex!6 (List!351 List!351 Int) Bool)

(assert (=> b!23666 (= e!12292 (appendIndex!6 (toList!106 (left!691 xs!572)) (toList!106 (right!694 xs!572)) i!252))))

(assert (= (and d!13359 res!10508) b!23665))

(assert (= (and d!13359 (not res!10509)) b!23666))

(assert (=> b!23665 m!25063))

(assert (=> b!23666 m!25075))

(assert (=> b!23666 m!25103))

(assert (=> b!23666 m!25075))

(assert (=> b!23666 m!25103))

(declare-fun m!25115 () Bool)

(assert (=> b!23666 m!25115))

(assert (=> b!23575 d!13359))

(declare-fun b!23673 () Bool)

(declare-fun e!12295 () Bool)

(declare-fun tp!5138 () Bool)

(declare-fun tp!5139 () Bool)

(assert (=> b!23673 (= e!12295 (and tp!5138 tp!5139))))

(declare-fun b!23674 () Bool)

(assert (=> b!23674 (= e!12295 tp_is_empty!139)))

(assert (=> b!23572 (= tp!5133 e!12295)))

(assert (= (and b!23572 (is-CC!46 (left!691 xs!572))) b!23673))

(assert (= (and b!23572 (is-Single!46 (left!691 xs!572))) b!23674))

(declare-fun b!23675 () Bool)

(declare-fun e!12296 () Bool)

(declare-fun tp!5140 () Bool)

(declare-fun tp!5141 () Bool)

(assert (=> b!23675 (= e!12296 (and tp!5140 tp!5141))))

(declare-fun b!23676 () Bool)

(assert (=> b!23676 (= e!12296 tp_is_empty!139)))

(assert (=> b!23572 (= tp!5132 e!12296)))

(assert (= (and b!23572 (is-CC!46 (right!694 xs!572))) b!23675))

(assert (= (and b!23572 (is-Single!46 (right!694 xs!572))) b!23676))

(push 1)

(assert (not b!23602))

(assert (not b!23594))

(assert (not b!23631))

(assert (not b!23644))

(assert (not b!23598))

(assert (not b!23601))

(assert (not b!23658))

(assert (not b!23665))

(assert (not b!23660))

(assert (not b!23597))

(assert (not b!23613))

(assert (not b!23648))

(assert (not b!23675))

(assert (not d!13351))

(assert (not b!23632))

(assert (not b!23614))

(assert (not b!23673))

(assert tp_is_empty!139)

(assert (not b!23659))

(assert (not b!23600))

(assert (not b!23612))

(assert (not b!23626))

(assert (not b!23599))

(assert (not b!23666))

(assert (not b!23657))

(assert (not d!13343))

(assert (not b!23611))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13361 () Bool)

(assert (=> d!13361 (= (isEmpty!306 (left!691 xs!572)) (= (left!691 xs!572) Empty!57))))

(assert (=> b!23611 d!13361))

(declare-fun b!23682 () Bool)

(declare-fun e!12299 () Int)

(declare-fun lt!3669 () Int)

(declare-fun lt!3670 () Int)

(assert (=> b!23682 (= e!12299 (+ 1 (ite (>= lt!3669 lt!3670) lt!3669 lt!3670)))))

(assert (=> b!23682 (= lt!3670 (level!38 (right!694 (left!691 xs!572))))))

(assert (=> b!23682 (= lt!3669 (level!38 (left!691 (left!691 xs!572))))))

(declare-fun d!13363 () Bool)

(declare-fun lt!3668 () Int)

(assert (=> d!13363 (>= lt!3668 0)))

(assert (=> d!13363 (= lt!3668 e!12299)))

(declare-fun c!5517 () Bool)

(assert (=> d!13363 (= c!5517 (or (is-Empty!57 (left!691 xs!572)) (is-Single!46 (left!691 xs!572))))))

(assert (=> d!13363 (= (level!38 (left!691 xs!572)) lt!3668)))

(declare-fun b!23681 () Bool)

(assert (=> b!23681 (= e!12299 0)))

(assert (= (and d!13363 c!5517) b!23681))

(assert (= (and d!13363 (not c!5517)) b!23682))

(declare-fun m!25117 () Bool)

(assert (=> b!23682 m!25117))

(declare-fun m!25119 () Bool)

(assert (=> b!23682 m!25119))

(assert (=> b!23658 d!13363))

(declare-fun b!23684 () Bool)

(declare-fun e!12300 () Int)

(declare-fun lt!3672 () Int)

(declare-fun lt!3673 () Int)

(assert (=> b!23684 (= e!12300 (+ 1 (ite (>= lt!3672 lt!3673) lt!3672 lt!3673)))))

(assert (=> b!23684 (= lt!3673 (level!38 (right!694 (right!694 xs!572))))))

(assert (=> b!23684 (= lt!3672 (level!38 (left!691 (right!694 xs!572))))))

(declare-fun d!13365 () Bool)

(declare-fun lt!3671 () Int)

(assert (=> d!13365 (>= lt!3671 0)))

(assert (=> d!13365 (= lt!3671 e!12300)))

(declare-fun c!5518 () Bool)

(assert (=> d!13365 (= c!5518 (or (is-Empty!57 (right!694 xs!572)) (is-Single!46 (right!694 xs!572))))))

(assert (=> d!13365 (= (level!38 (right!694 xs!572)) lt!3671)))

(declare-fun b!23683 () Bool)

(assert (=> b!23683 (= e!12300 0)))

(assert (= (and d!13365 c!5518) b!23683))

(assert (= (and d!13365 (not c!5518)) b!23684))

(declare-fun m!25121 () Bool)

(assert (=> b!23684 m!25121))

(declare-fun m!25123 () Bool)

(assert (=> b!23684 m!25123))

(assert (=> b!23658 d!13365))

(assert (=> b!23665 d!13347))

(declare-fun b!23688 () Bool)

(declare-fun e!12301 () Bool)

(assert (=> b!23688 (= e!12301 (balanced!44 (right!694 (left!691 xs!572))))))

(declare-fun b!23686 () Bool)

(declare-fun res!10513 () Bool)

(assert (=> b!23686 (=> (not res!10513) (not e!12301))))

(assert (=> b!23686 (= res!10513 (<= (- (level!38 (left!691 (left!691 xs!572))) (level!38 (right!694 (left!691 xs!572)))) 1))))

(declare-fun b!23685 () Bool)

(declare-fun e!12302 () Bool)

(assert (=> b!23685 (= e!12302 e!12301)))

(declare-fun res!10510 () Bool)

(assert (=> b!23685 (=> (not res!10510) (not e!12301))))

(assert (=> b!23685 (= res!10510 (>= (- (level!38 (left!691 (left!691 xs!572))) (level!38 (right!694 (left!691 xs!572)))) (- 1)))))

(declare-fun b!23687 () Bool)

(declare-fun res!10511 () Bool)

(assert (=> b!23687 (=> (not res!10511) (not e!12301))))

(assert (=> b!23687 (= res!10511 (balanced!44 (left!691 (left!691 xs!572))))))

(declare-fun d!13367 () Bool)

(declare-fun res!10512 () Bool)

(assert (=> d!13367 (=> res!10512 e!12302)))

(assert (=> d!13367 (= res!10512 (not (is-CC!46 (left!691 xs!572))))))

(assert (=> d!13367 (= (balanced!44 (left!691 xs!572)) e!12302)))

(assert (= (and d!13367 (not res!10512)) b!23685))

(assert (= (and b!23685 res!10510) b!23686))

(assert (= (and b!23686 res!10513) b!23687))

(assert (= (and b!23687 res!10511) b!23688))

(declare-fun m!25125 () Bool)

(assert (=> b!23688 m!25125))

(assert (=> b!23686 m!25119))

(assert (=> b!23686 m!25117))

(assert (=> b!23685 m!25119))

(assert (=> b!23685 m!25117))

(declare-fun m!25127 () Bool)

(assert (=> b!23687 m!25127))

(assert (=> b!23659 d!13367))

(declare-fun d!13369 () Bool)

(declare-fun e!12304 () Bool)

(assert (=> d!13369 e!12304))

(declare-fun res!10515 () Bool)

(assert (=> d!13369 (=> res!10515 e!12304)))

(assert (=> d!13369 (= res!10515 (not (is-CC!46 (left!691 xs!572))))))

(declare-fun e!12303 () Bool)

(assert (=> d!13369 e!12303))

(declare-fun res!10514 () Bool)

(assert (=> d!13369 (=> (not res!10514) (not e!12303))))

(assert (=> d!13369 (= res!10514 (<= 0 i!252))))

(assert (=> d!13369 (= (instAppendIndexAxiom!7 (left!691 xs!572) i!252) true)))

(declare-fun b!23689 () Bool)

(assert (=> b!23689 (= e!12303 (< i!252 (size!252 (left!691 xs!572))))))

(declare-fun b!23690 () Bool)

(assert (=> b!23690 (= e!12304 (appendIndex!6 (toList!106 (left!691 (left!691 xs!572))) (toList!106 (right!694 (left!691 xs!572))) i!252))))

(assert (= (and d!13369 res!10514) b!23689))

(assert (= (and d!13369 (not res!10515)) b!23690))

(assert (=> b!23689 m!25057))

(declare-fun m!25129 () Bool)

(assert (=> b!23690 m!25129))

(declare-fun m!25131 () Bool)

(assert (=> b!23690 m!25131))

(assert (=> b!23690 m!25129))

(assert (=> b!23690 m!25131))

(declare-fun m!25133 () Bool)

(assert (=> b!23690 m!25133))

(assert (=> d!13343 d!13369))

(declare-fun b!23691 () Bool)

(declare-fun e!12306 () Bool)

(declare-fun e!12305 () Bool)

(assert (=> b!23691 (= e!12306 e!12305)))

(declare-fun res!10516 () Bool)

(assert (=> b!23691 (=> (not res!10516) (not e!12305))))

(assert (=> b!23691 (= res!10516 (not (isEmpty!306 (left!691 (left!691 xs!572)))))))

(declare-fun b!23693 () Bool)

(declare-fun res!10518 () Bool)

(assert (=> b!23693 (=> (not res!10518) (not e!12305))))

(assert (=> b!23693 (= res!10518 (concInv!43 (left!691 (left!691 xs!572))))))

(declare-fun b!23692 () Bool)

(declare-fun res!10517 () Bool)

(assert (=> b!23692 (=> (not res!10517) (not e!12305))))

(assert (=> b!23692 (= res!10517 (not (isEmpty!306 (right!694 (left!691 xs!572)))))))

(declare-fun b!23694 () Bool)

(assert (=> b!23694 (= e!12305 (concInv!43 (right!694 (left!691 xs!572))))))

(declare-fun d!13371 () Bool)

(declare-fun res!10519 () Bool)

(assert (=> d!13371 (=> res!10519 e!12306)))

(assert (=> d!13371 (= res!10519 (not (is-CC!46 (left!691 xs!572))))))

(assert (=> d!13371 (= (concInv!43 (left!691 xs!572)) e!12306)))

(assert (= (and d!13371 (not res!10519)) b!23691))

(assert (= (and b!23691 res!10516) b!23692))

(assert (= (and b!23692 res!10517) b!23693))

(assert (= (and b!23693 res!10518) b!23694))

(declare-fun m!25135 () Bool)

(assert (=> b!23691 m!25135))

(declare-fun m!25137 () Bool)

(assert (=> b!23693 m!25137))

(declare-fun m!25139 () Bool)

(assert (=> b!23692 m!25139))

(declare-fun m!25141 () Bool)

(assert (=> b!23694 m!25141))

(assert (=> d!13343 d!13371))

(declare-fun d!13373 () Bool)

(declare-fun e!12307 () Bool)

(assert (=> d!13373 e!12307))

(declare-fun res!10524 () Bool)

(assert (=> d!13373 (=> (not res!10524) (not e!12307))))

(assert (=> d!13373 (= res!10524 (instAppendIndexAxiom!7 (right!694 (left!691 xs!572)) (- i!252 (size!252 (left!691 (left!691 xs!572))))))))

(declare-fun lt!3674 () T!1795)

(declare-fun e!12310 () T!1795)

(assert (=> d!13373 (= lt!3674 e!12310)))

(declare-fun c!5520 () Bool)

(assert (=> d!13373 (= c!5520 (is-Single!46 (right!694 (left!691 xs!572))))))

(declare-fun e!12311 () Bool)

(assert (=> d!13373 e!12311))

(declare-fun res!10520 () Bool)

(assert (=> d!13373 (=> (not res!10520) (not e!12311))))

(declare-fun e!12308 () Bool)

(assert (=> d!13373 (= res!10520 e!12308)))

(declare-fun res!10521 () Bool)

(assert (=> d!13373 (=> (not res!10521) (not e!12308))))

(assert (=> d!13373 (= res!10521 (concInv!43 (right!694 (left!691 xs!572))))))

(assert (=> d!13373 (= (lookup!7 (right!694 (left!691 xs!572)) (- i!252 (size!252 (left!691 (left!691 xs!572))))) lt!3674)))

(declare-fun b!23695 () Bool)

(declare-fun res!10523 () Bool)

(assert (=> b!23695 (=> (not res!10523) (not e!12311))))

(assert (=> b!23695 (= res!10523 (not (isEmpty!306 (right!694 (left!691 xs!572)))))))

(declare-fun b!23696 () Bool)

(declare-fun res!10522 () Bool)

(assert (=> b!23696 (=> (not res!10522) (not e!12311))))

(assert (=> b!23696 (= res!10522 (>= (- i!252 (size!252 (left!691 (left!691 xs!572)))) 0))))

(declare-fun b!23697 () Bool)

(assert (=> b!23697 (= e!12310 (x!8850 (right!694 (left!691 xs!572))))))

(declare-fun b!23698 () Bool)

(assert (=> b!23698 (= e!12307 (= lt!3674 (apply!46 (toList!106 (right!694 (left!691 xs!572))) (- i!252 (size!252 (left!691 (left!691 xs!572)))))))))

(declare-fun b!23699 () Bool)

(assert (=> b!23699 (= e!12308 (balanced!44 (right!694 (left!691 xs!572))))))

(declare-fun b!23700 () Bool)

(declare-fun e!12309 () T!1795)

(assert (=> b!23700 (= e!12310 e!12309)))

(declare-fun c!5519 () Bool)

(assert (=> b!23700 (= c!5519 (< (- i!252 (size!252 (left!691 (left!691 xs!572)))) (size!252 (left!691 (right!694 (left!691 xs!572))))))))

(declare-fun b!23701 () Bool)

(assert (=> b!23701 (= e!12309 (lookup!7 (right!694 (right!694 (left!691 xs!572))) (- (- i!252 (size!252 (left!691 (left!691 xs!572)))) (size!252 (left!691 (right!694 (left!691 xs!572)))))))))

(declare-fun b!23702 () Bool)

(assert (=> b!23702 (= e!12311 (< (- i!252 (size!252 (left!691 (left!691 xs!572)))) (size!252 (right!694 (left!691 xs!572)))))))

(declare-fun b!23703 () Bool)

(assert (=> b!23703 (= e!12309 (lookup!7 (left!691 (right!694 (left!691 xs!572))) (- i!252 (size!252 (left!691 (left!691 xs!572))))))))

(assert (= (and d!13373 res!10521) b!23699))

(assert (= (and d!13373 res!10520) b!23695))

(assert (= (and b!23695 res!10523) b!23696))

(assert (= (and b!23696 res!10522) b!23702))

(assert (= (and b!23700 c!5519) b!23703))

(assert (= (and b!23700 (not c!5519)) b!23701))

(assert (= (and d!13373 c!5520) b!23697))

(assert (= (and d!13373 (not c!5520)) b!23700))

(assert (= (and d!13373 res!10524) b!23698))

(declare-fun m!25143 () Bool)

(assert (=> d!13373 m!25143))

(assert (=> d!13373 m!25141))

(assert (=> b!23698 m!25131))

(assert (=> b!23698 m!25131))

(declare-fun m!25145 () Bool)

(assert (=> b!23698 m!25145))

(declare-fun m!25147 () Bool)

(assert (=> b!23701 m!25147))

(declare-fun m!25149 () Bool)

(assert (=> b!23701 m!25149))

(assert (=> b!23699 m!25125))

(declare-fun m!25151 () Bool)

(assert (=> b!23703 m!25151))

(assert (=> b!23695 m!25139))

(assert (=> b!23702 m!25107))

(assert (=> b!23700 m!25147))

(assert (=> b!23600 d!13373))

(declare-fun b!23704 () Bool)

(declare-fun e!12313 () Int)

(assert (=> b!23704 (= e!12313 0)))

(declare-fun d!13375 () Bool)

(declare-fun lt!3675 () Int)

(assert (=> d!13375 (>= lt!3675 0)))

(assert (=> d!13375 (= lt!3675 e!12313)))

(declare-fun c!5521 () Bool)

(assert (=> d!13375 (= c!5521 (is-Empty!57 (left!691 (left!691 xs!572))))))

(assert (=> d!13375 (= (size!252 (left!691 (left!691 xs!572))) lt!3675)))

(declare-fun b!23706 () Bool)

(declare-fun e!12312 () Int)

(assert (=> b!23706 (= e!12312 1)))

(declare-fun b!23705 () Bool)

(assert (=> b!23705 (= e!12313 e!12312)))

(declare-fun c!5522 () Bool)

(assert (=> b!23705 (= c!5522 (is-Single!46 (left!691 (left!691 xs!572))))))

(declare-fun b!23707 () Bool)

(assert (=> b!23707 (= e!12312 (+ (size!252 (left!691 (left!691 (left!691 xs!572)))) (size!252 (right!694 (left!691 (left!691 xs!572))))))))

(assert (= (and b!23705 c!5522) b!23706))

(assert (= (and b!23705 (not c!5522)) b!23707))

(assert (= (and d!13375 c!5521) b!23704))

(assert (= (and d!13375 (not c!5521)) b!23705))

(declare-fun m!25153 () Bool)

(assert (=> b!23707 m!25153))

(declare-fun m!25155 () Bool)

(assert (=> b!23707 m!25155))

(assert (=> b!23600 d!13375))

(declare-fun d!13377 () Bool)

(declare-fun lt!3678 () Int)

(assert (=> d!13377 (>= lt!3678 0)))

(declare-fun e!12316 () Int)

(assert (=> d!13377 (= lt!3678 e!12316)))

(declare-fun c!5525 () Bool)

(assert (=> d!13377 (= c!5525 (is-Nil!346 lt!3660))))

(assert (=> d!13377 (= (size!253 lt!3660) lt!3678)))

(declare-fun b!23712 () Bool)

(assert (=> b!23712 (= e!12316 0)))

(declare-fun b!23713 () Bool)

(assert (=> b!23713 (= e!12316 (+ 1 (size!253 (t!4351 lt!3660))))))

(assert (= (and d!13377 c!5525) b!23712))

(assert (= (and d!13377 (not c!5525)) b!23713))

(declare-fun m!25157 () Bool)

(assert (=> b!23713 m!25157))

(assert (=> d!13351 d!13377))

(assert (=> d!13351 d!13347))

(assert (=> b!23601 d!13353))

(declare-fun b!23724 () Bool)

(declare-fun res!10530 () Bool)

(declare-fun e!12321 () Bool)

(assert (=> b!23724 (=> (not res!10530) (not e!12321))))

(declare-fun lt!3681 () List!351)

(assert (=> b!23724 (= res!10530 (= (size!253 lt!3681) (+ (size!253 (toList!106 (left!691 xs!572))) (size!253 (toList!106 (right!694 xs!572))))))))

(declare-fun b!23725 () Bool)

(assert (=> b!23725 (= e!12321 (or (not (= (toList!106 (right!694 xs!572)) Nil!346)) (= lt!3681 (toList!106 (left!691 xs!572)))))))

(declare-fun b!23723 () Bool)

(declare-fun e!12322 () List!351)

(assert (=> b!23723 (= e!12322 (Cons!345 (h!260 (toList!106 (left!691 xs!572))) (++!31 (t!4351 (toList!106 (left!691 xs!572))) (toList!106 (right!694 xs!572)))))))

(declare-fun b!23722 () Bool)

(assert (=> b!23722 (= e!12322 (toList!106 (right!694 xs!572)))))

(declare-fun d!13379 () Bool)

(assert (=> d!13379 e!12321))

(declare-fun res!10531 () Bool)

(assert (=> d!13379 (=> (not res!10531) (not e!12321))))

(declare-fun content!64 (List!351) (Set T!1795))

(assert (=> d!13379 (= res!10531 (= (content!64 lt!3681) (union (content!64 (toList!106 (left!691 xs!572))) (content!64 (toList!106 (right!694 xs!572))))))))

(assert (=> d!13379 (= lt!3681 e!12322)))

(declare-fun c!5528 () Bool)

(assert (=> d!13379 (= c!5528 (is-Nil!346 (toList!106 (left!691 xs!572))))))

(assert (=> d!13379 (= (++!31 (toList!106 (left!691 xs!572)) (toList!106 (right!694 xs!572))) lt!3681)))

(assert (= (and d!13379 c!5528) b!23722))

(assert (= (and d!13379 (not c!5528)) b!23723))

(assert (= (and d!13379 res!10531) b!23724))

(assert (= (and b!23724 res!10530) b!23725))

(declare-fun m!25159 () Bool)

(assert (=> b!23724 m!25159))

(assert (=> b!23724 m!25075))

(declare-fun m!25161 () Bool)

(assert (=> b!23724 m!25161))

(assert (=> b!23724 m!25103))

(declare-fun m!25163 () Bool)

(assert (=> b!23724 m!25163))

(assert (=> b!23723 m!25103))

(declare-fun m!25165 () Bool)

(assert (=> b!23723 m!25165))

(declare-fun m!25167 () Bool)

(assert (=> d!13379 m!25167))

(assert (=> d!13379 m!25075))

(declare-fun m!25169 () Bool)

(assert (=> d!13379 m!25169))

(assert (=> d!13379 m!25103))

(declare-fun m!25171 () Bool)

(assert (=> d!13379 m!25171))

(assert (=> b!23644 d!13379))

(declare-fun b!23728 () Bool)

(declare-fun e!12323 () List!351)

(assert (=> b!23728 (= e!12323 (Cons!345 (x!8850 (left!691 xs!572)) Nil!346))))

(declare-fun d!13381 () Bool)

(declare-fun lt!3682 () List!351)

(assert (=> d!13381 (= (size!253 lt!3682) (size!252 (left!691 xs!572)))))

(declare-fun e!12324 () List!351)

(assert (=> d!13381 (= lt!3682 e!12324)))

(declare-fun c!5529 () Bool)

(assert (=> d!13381 (= c!5529 (is-Empty!57 (left!691 xs!572)))))

(assert (=> d!13381 (= (toList!106 (left!691 xs!572)) lt!3682)))

(declare-fun b!23726 () Bool)

(assert (=> b!23726 (= e!12324 Nil!346)))

(declare-fun b!23729 () Bool)

(assert (=> b!23729 (= e!12323 (++!31 (toList!106 (left!691 (left!691 xs!572))) (toList!106 (right!694 (left!691 xs!572)))))))

(declare-fun b!23727 () Bool)

(assert (=> b!23727 (= e!12324 e!12323)))

(declare-fun c!5530 () Bool)

(assert (=> b!23727 (= c!5530 (is-Single!46 (left!691 xs!572)))))

(assert (= (and b!23727 c!5530) b!23728))

(assert (= (and b!23727 (not c!5530)) b!23729))

(assert (= (and d!13381 c!5529) b!23726))

(assert (= (and d!13381 (not c!5529)) b!23727))

(declare-fun m!25173 () Bool)

(assert (=> d!13381 m!25173))

(assert (=> d!13381 m!25057))

(assert (=> b!23729 m!25129))

(assert (=> b!23729 m!25131))

(assert (=> b!23729 m!25129))

(assert (=> b!23729 m!25131))

(declare-fun m!25175 () Bool)

(assert (=> b!23729 m!25175))

(assert (=> b!23644 d!13381))

(declare-fun b!23732 () Bool)

(declare-fun e!12325 () List!351)

(assert (=> b!23732 (= e!12325 (Cons!345 (x!8850 (right!694 xs!572)) Nil!346))))

(declare-fun d!13383 () Bool)

(declare-fun lt!3683 () List!351)

(assert (=> d!13383 (= (size!253 lt!3683) (size!252 (right!694 xs!572)))))

(declare-fun e!12326 () List!351)

(assert (=> d!13383 (= lt!3683 e!12326)))

(declare-fun c!5531 () Bool)

(assert (=> d!13383 (= c!5531 (is-Empty!57 (right!694 xs!572)))))

(assert (=> d!13383 (= (toList!106 (right!694 xs!572)) lt!3683)))

(declare-fun b!23730 () Bool)

(assert (=> b!23730 (= e!12326 Nil!346)))

(declare-fun b!23733 () Bool)

(assert (=> b!23733 (= e!12325 (++!31 (toList!106 (left!691 (right!694 xs!572))) (toList!106 (right!694 (right!694 xs!572)))))))

(declare-fun b!23731 () Bool)

(assert (=> b!23731 (= e!12326 e!12325)))

(declare-fun c!5532 () Bool)

(assert (=> b!23731 (= c!5532 (is-Single!46 (right!694 xs!572)))))

(assert (= (and b!23731 c!5532) b!23732))

(assert (= (and b!23731 (not c!5532)) b!23733))

(assert (= (and d!13383 c!5531) b!23730))

(assert (= (and d!13383 (not c!5531)) b!23731))

(declare-fun m!25177 () Bool)

(assert (=> d!13383 m!25177))

(assert (=> d!13383 m!25093))

(declare-fun m!25179 () Bool)

(assert (=> b!23733 m!25179))

(declare-fun m!25181 () Bool)

(assert (=> b!23733 m!25181))

(assert (=> b!23733 m!25179))

(assert (=> b!23733 m!25181))

(declare-fun m!25183 () Bool)

(assert (=> b!23733 m!25183))

(assert (=> b!23644 d!13383))

(declare-fun b!23734 () Bool)

(declare-fun e!12328 () Bool)

(declare-fun e!12327 () Bool)

(assert (=> b!23734 (= e!12328 e!12327)))

(declare-fun res!10532 () Bool)

(assert (=> b!23734 (=> (not res!10532) (not e!12327))))

(assert (=> b!23734 (= res!10532 (not (isEmpty!306 (left!691 (right!694 xs!572)))))))

(declare-fun b!23736 () Bool)

(declare-fun res!10534 () Bool)

(assert (=> b!23736 (=> (not res!10534) (not e!12327))))

(assert (=> b!23736 (= res!10534 (concInv!43 (left!691 (right!694 xs!572))))))

(declare-fun b!23735 () Bool)

(declare-fun res!10533 () Bool)

(assert (=> b!23735 (=> (not res!10533) (not e!12327))))

(assert (=> b!23735 (= res!10533 (not (isEmpty!306 (right!694 (right!694 xs!572)))))))

(declare-fun b!23737 () Bool)

(assert (=> b!23737 (= e!12327 (concInv!43 (right!694 (right!694 xs!572))))))

(declare-fun d!13385 () Bool)

(declare-fun res!10535 () Bool)

(assert (=> d!13385 (=> res!10535 e!12328)))

(assert (=> d!13385 (= res!10535 (not (is-CC!46 (right!694 xs!572))))))

(assert (=> d!13385 (= (concInv!43 (right!694 xs!572)) e!12328)))

(assert (= (and d!13385 (not res!10535)) b!23734))

(assert (= (and b!23734 res!10532) b!23735))

(assert (= (and b!23735 res!10533) b!23736))

(assert (= (and b!23736 res!10534) b!23737))

(declare-fun m!25185 () Bool)

(assert (=> b!23734 m!25185))

(declare-fun m!25187 () Bool)

(assert (=> b!23736 m!25187))

(declare-fun m!25189 () Bool)

(assert (=> b!23735 m!25189))

(declare-fun m!25191 () Bool)

(assert (=> b!23737 m!25191))

(assert (=> b!23614 d!13385))

(assert (=> b!23598 d!13367))

(declare-fun d!13387 () Bool)

(declare-fun c!5533 () Bool)

(assert (=> d!13387 (= c!5533 (= (- i!252 1) 0))))

(declare-fun e!12329 () T!1795)

(assert (=> d!13387 (= (apply!46 (tail!565 (toList!106 xs!572)) (- i!252 1)) e!12329)))

(declare-fun b!23738 () Bool)

(assert (=> b!23738 (= e!12329 (head!538 (tail!565 (toList!106 xs!572))))))

(declare-fun b!23739 () Bool)

(assert (=> b!23739 (= e!12329 (apply!46 (tail!565 (tail!565 (toList!106 xs!572))) (- (- i!252 1) 1)))))

(assert (= (and d!13387 c!5533) b!23738))

(assert (= (and d!13387 (not c!5533)) b!23739))

(assert (=> b!23738 m!25097))

(declare-fun m!25193 () Bool)

(assert (=> b!23738 m!25193))

(assert (=> b!23739 m!25097))

(declare-fun m!25195 () Bool)

(assert (=> b!23739 m!25195))

(assert (=> b!23739 m!25195))

(declare-fun m!25197 () Bool)

(assert (=> b!23739 m!25197))

(assert (=> b!23632 d!13387))

(declare-fun d!13389 () Bool)

(assert (=> d!13389 (= (tail!565 (toList!106 xs!572)) (t!4351 (toList!106 xs!572)))))

(assert (=> b!23632 d!13389))

(declare-fun b!23743 () Bool)

(declare-fun e!12330 () Bool)

(assert (=> b!23743 (= e!12330 (balanced!44 (right!694 (right!694 xs!572))))))

(declare-fun b!23741 () Bool)

(declare-fun res!10539 () Bool)

(assert (=> b!23741 (=> (not res!10539) (not e!12330))))

(assert (=> b!23741 (= res!10539 (<= (- (level!38 (left!691 (right!694 xs!572))) (level!38 (right!694 (right!694 xs!572)))) 1))))

(declare-fun b!23740 () Bool)

(declare-fun e!12331 () Bool)

(assert (=> b!23740 (= e!12331 e!12330)))

(declare-fun res!10536 () Bool)

(assert (=> b!23740 (=> (not res!10536) (not e!12330))))

(assert (=> b!23740 (= res!10536 (>= (- (level!38 (left!691 (right!694 xs!572))) (level!38 (right!694 (right!694 xs!572)))) (- 1)))))

(declare-fun b!23742 () Bool)

(declare-fun res!10537 () Bool)

(assert (=> b!23742 (=> (not res!10537) (not e!12330))))

(assert (=> b!23742 (= res!10537 (balanced!44 (left!691 (right!694 xs!572))))))

(declare-fun d!13391 () Bool)

(declare-fun res!10538 () Bool)

(assert (=> d!13391 (=> res!10538 e!12331)))

(assert (=> d!13391 (= res!10538 (not (is-CC!46 (right!694 xs!572))))))

(assert (=> d!13391 (= (balanced!44 (right!694 xs!572)) e!12331)))

(assert (= (and d!13391 (not res!10538)) b!23740))

(assert (= (and b!23740 res!10536) b!23741))

(assert (= (and b!23741 res!10539) b!23742))

(assert (= (and b!23742 res!10537) b!23743))

(declare-fun m!25199 () Bool)

(assert (=> b!23743 m!25199))

(assert (=> b!23741 m!25123))

(assert (=> b!23741 m!25121))

(assert (=> b!23740 m!25123))

(assert (=> b!23740 m!25121))

(declare-fun m!25201 () Bool)

(assert (=> b!23742 m!25201))

(assert (=> b!23660 d!13391))

(assert (=> b!23613 d!13371))

(assert (=> b!23626 d!13353))

(declare-fun b!23744 () Bool)

(declare-fun e!12333 () Int)

(assert (=> b!23744 (= e!12333 0)))

(declare-fun d!13393 () Bool)

(declare-fun lt!3684 () Int)

(assert (=> d!13393 (>= lt!3684 0)))

(assert (=> d!13393 (= lt!3684 e!12333)))

(declare-fun c!5534 () Bool)

(assert (=> d!13393 (= c!5534 (is-Empty!57 (right!694 xs!572)))))

(assert (=> d!13393 (= (size!252 (right!694 xs!572)) lt!3684)))

(declare-fun b!23746 () Bool)

(declare-fun e!12332 () Int)

(assert (=> b!23746 (= e!12332 1)))

(declare-fun b!23745 () Bool)

(assert (=> b!23745 (= e!12333 e!12332)))

(declare-fun c!5535 () Bool)

(assert (=> b!23745 (= c!5535 (is-Single!46 (right!694 xs!572)))))

(declare-fun b!23747 () Bool)

(assert (=> b!23747 (= e!12332 (+ (size!252 (left!691 (right!694 xs!572))) (size!252 (right!694 (right!694 xs!572)))))))

(assert (= (and b!23745 c!5535) b!23746))

(assert (= (and b!23745 (not c!5535)) b!23747))

(assert (= (and d!13393 c!5534) b!23744))

(assert (= (and d!13393 (not c!5534)) b!23745))

(declare-fun m!25203 () Bool)

(assert (=> b!23747 m!25203))

(declare-fun m!25205 () Bool)

(assert (=> b!23747 m!25205))

(assert (=> b!23626 d!13393))

(declare-fun d!13395 () Bool)

(assert (=> d!13395 (= (head!538 (toList!106 xs!572)) (h!260 (toList!106 xs!572)))))

(assert (=> b!23631 d!13395))

(assert (=> b!23648 d!13375))

(declare-fun b!23748 () Bool)

(declare-fun e!12335 () Int)

(assert (=> b!23748 (= e!12335 0)))

(declare-fun d!13397 () Bool)

(declare-fun lt!3685 () Int)

(assert (=> d!13397 (>= lt!3685 0)))

(assert (=> d!13397 (= lt!3685 e!12335)))

(declare-fun c!5536 () Bool)

(assert (=> d!13397 (= c!5536 (is-Empty!57 (right!694 (left!691 xs!572))))))

(assert (=> d!13397 (= (size!252 (right!694 (left!691 xs!572))) lt!3685)))

(declare-fun b!23750 () Bool)

(declare-fun e!12334 () Int)

(assert (=> b!23750 (= e!12334 1)))

(declare-fun b!23749 () Bool)

(assert (=> b!23749 (= e!12335 e!12334)))

(declare-fun c!5537 () Bool)

(assert (=> b!23749 (= c!5537 (is-Single!46 (right!694 (left!691 xs!572))))))

(declare-fun b!23751 () Bool)

(assert (=> b!23751 (= e!12334 (+ (size!252 (left!691 (right!694 (left!691 xs!572)))) (size!252 (right!694 (right!694 (left!691 xs!572))))))))

(assert (= (and b!23749 c!5537) b!23750))

(assert (= (and b!23749 (not c!5537)) b!23751))

(assert (= (and d!13397 c!5536) b!23748))

(assert (= (and d!13397 (not c!5536)) b!23749))

(assert (=> b!23751 m!25147))

(declare-fun m!25207 () Bool)

(assert (=> b!23751 m!25207))

(assert (=> b!23648 d!13397))

(assert (=> b!23657 d!13363))

(assert (=> b!23657 d!13365))

(assert (=> b!23594 d!13361))

(assert (=> b!23599 d!13375))

(declare-fun d!13399 () Bool)

(declare-fun e!12336 () Bool)

(assert (=> d!13399 e!12336))

(declare-fun res!10544 () Bool)

(assert (=> d!13399 (=> (not res!10544) (not e!12336))))

(assert (=> d!13399 (= res!10544 (instAppendIndexAxiom!7 (left!691 (left!691 xs!572)) i!252))))

(declare-fun lt!3686 () T!1795)

(declare-fun e!12339 () T!1795)

(assert (=> d!13399 (= lt!3686 e!12339)))

(declare-fun c!5539 () Bool)

(assert (=> d!13399 (= c!5539 (is-Single!46 (left!691 (left!691 xs!572))))))

(declare-fun e!12340 () Bool)

(assert (=> d!13399 e!12340))

(declare-fun res!10540 () Bool)

(assert (=> d!13399 (=> (not res!10540) (not e!12340))))

(declare-fun e!12337 () Bool)

(assert (=> d!13399 (= res!10540 e!12337)))

(declare-fun res!10541 () Bool)

(assert (=> d!13399 (=> (not res!10541) (not e!12337))))

(assert (=> d!13399 (= res!10541 (concInv!43 (left!691 (left!691 xs!572))))))

(assert (=> d!13399 (= (lookup!7 (left!691 (left!691 xs!572)) i!252) lt!3686)))

(declare-fun b!23752 () Bool)

(declare-fun res!10543 () Bool)

(assert (=> b!23752 (=> (not res!10543) (not e!12340))))

(assert (=> b!23752 (= res!10543 (not (isEmpty!306 (left!691 (left!691 xs!572)))))))

(declare-fun b!23753 () Bool)

(declare-fun res!10542 () Bool)

(assert (=> b!23753 (=> (not res!10542) (not e!12340))))

(assert (=> b!23753 (= res!10542 (>= i!252 0))))

(declare-fun b!23754 () Bool)

(assert (=> b!23754 (= e!12339 (x!8850 (left!691 (left!691 xs!572))))))

(declare-fun b!23755 () Bool)

(assert (=> b!23755 (= e!12336 (= lt!3686 (apply!46 (toList!106 (left!691 (left!691 xs!572))) i!252)))))

(declare-fun b!23756 () Bool)

(assert (=> b!23756 (= e!12337 (balanced!44 (left!691 (left!691 xs!572))))))

(declare-fun b!23757 () Bool)

(declare-fun e!12338 () T!1795)

(assert (=> b!23757 (= e!12339 e!12338)))

(declare-fun c!5538 () Bool)

(assert (=> b!23757 (= c!5538 (< i!252 (size!252 (left!691 (left!691 (left!691 xs!572))))))))

(declare-fun b!23758 () Bool)

(assert (=> b!23758 (= e!12338 (lookup!7 (right!694 (left!691 (left!691 xs!572))) (- i!252 (size!252 (left!691 (left!691 (left!691 xs!572)))))))))

(declare-fun b!23759 () Bool)

(assert (=> b!23759 (= e!12340 (< i!252 (size!252 (left!691 (left!691 xs!572)))))))

(declare-fun b!23760 () Bool)

(assert (=> b!23760 (= e!12338 (lookup!7 (left!691 (left!691 (left!691 xs!572))) i!252))))

(assert (= (and d!13399 res!10541) b!23756))

(assert (= (and d!13399 res!10540) b!23752))

(assert (= (and b!23752 res!10543) b!23753))

(assert (= (and b!23753 res!10542) b!23759))

(assert (= (and b!23757 c!5538) b!23760))

(assert (= (and b!23757 (not c!5538)) b!23758))

(assert (= (and d!13399 c!5539) b!23754))

(assert (= (and d!13399 (not c!5539)) b!23757))

(assert (= (and d!13399 res!10544) b!23755))

(declare-fun m!25209 () Bool)

(assert (=> d!13399 m!25209))

(assert (=> d!13399 m!25137))

(assert (=> b!23755 m!25129))

(assert (=> b!23755 m!25129))

(declare-fun m!25211 () Bool)

(assert (=> b!23755 m!25211))

(assert (=> b!23758 m!25153))

(declare-fun m!25213 () Bool)

(assert (=> b!23758 m!25213))

(assert (=> b!23756 m!25127))

(declare-fun m!25215 () Bool)

(assert (=> b!23760 m!25215))

(assert (=> b!23752 m!25135))

(assert (=> b!23759 m!25079))

(assert (=> b!23757 m!25153))

(assert (=> b!23602 d!13399))

(declare-fun d!13401 () Bool)

(declare-fun c!5540 () Bool)

(assert (=> d!13401 (= c!5540 (= i!252 0))))

(declare-fun e!12341 () T!1795)

(assert (=> d!13401 (= (apply!46 (toList!106 (left!691 xs!572)) i!252) e!12341)))

(declare-fun b!23761 () Bool)

(assert (=> b!23761 (= e!12341 (head!538 (toList!106 (left!691 xs!572))))))

(declare-fun b!23762 () Bool)

(assert (=> b!23762 (= e!12341 (apply!46 (tail!565 (toList!106 (left!691 xs!572))) (- i!252 1)))))

(assert (= (and d!13401 c!5540) b!23761))

(assert (= (and d!13401 (not c!5540)) b!23762))

(assert (=> b!23761 m!25075))

(declare-fun m!25217 () Bool)

(assert (=> b!23761 m!25217))

(assert (=> b!23762 m!25075))

(declare-fun m!25219 () Bool)

(assert (=> b!23762 m!25219))

(assert (=> b!23762 m!25219))

(declare-fun m!25221 () Bool)

(assert (=> b!23762 m!25221))

(assert (=> b!23597 d!13401))

(assert (=> b!23597 d!13381))

(declare-fun d!13403 () Bool)

(assert (=> d!13403 (= (isEmpty!306 (right!694 xs!572)) (= (right!694 xs!572) Empty!57))))

(assert (=> b!23612 d!13403))

(declare-fun d!13405 () Bool)

(declare-fun e!12348 () T!1795)

(assert (=> d!13405 (= (apply!46 (++!31 (toList!106 (left!691 xs!572)) (toList!106 (right!694 xs!572))) i!252) e!12348)))

(declare-fun c!5543 () Bool)

(assert (=> d!13405 (= c!5543 (< i!252 (size!253 (toList!106 (left!691 xs!572)))))))

(declare-fun lt!3689 () Bool)

(declare-fun e!12350 () Bool)

(assert (=> d!13405 (= lt!3689 e!12350)))

(declare-fun res!10554 () Bool)

(assert (=> d!13405 (=> res!10554 e!12350)))

(assert (=> d!13405 (= res!10554 (or (is-Nil!346 (toList!106 (left!691 xs!572))) (= i!252 0)))))

(declare-fun e!12349 () Bool)

(assert (=> d!13405 e!12349))

(declare-fun res!10553 () Bool)

(assert (=> d!13405 (=> (not res!10553) (not e!12349))))

(assert (=> d!13405 (= res!10553 (<= 0 i!252))))

(assert (=> d!13405 (= (appendIndex!6 (toList!106 (left!691 xs!572)) (toList!106 (right!694 xs!572)) i!252) true)))

(declare-fun b!23772 () Bool)

(assert (=> b!23772 (= e!12350 (appendIndex!6 (t!4351 (toList!106 (left!691 xs!572))) (toList!106 (right!694 xs!572)) (- i!252 1)))))

(declare-fun b!23771 () Bool)

(assert (=> b!23771 (= e!12349 (< i!252 (+ (size!253 (toList!106 (left!691 xs!572))) (size!253 (toList!106 (right!694 xs!572))))))))

(declare-fun b!23774 () Bool)

(assert (=> b!23774 (= e!12348 (apply!46 (toList!106 (right!694 xs!572)) (- i!252 (size!253 (toList!106 (left!691 xs!572))))))))

(declare-fun b!23773 () Bool)

(assert (=> b!23773 (= e!12348 (apply!46 (toList!106 (left!691 xs!572)) i!252))))

(assert (= (and d!13405 res!10553) b!23771))

(assert (= (and d!13405 (not res!10554)) b!23772))

(assert (= (and d!13405 c!5543) b!23773))

(assert (= (and d!13405 (not c!5543)) b!23774))

(assert (=> b!23772 m!25103))

(declare-fun m!25223 () Bool)

(assert (=> b!23772 m!25223))

(assert (=> b!23771 m!25075))

(assert (=> b!23771 m!25161))

(assert (=> b!23771 m!25103))

(assert (=> b!23771 m!25163))

(assert (=> d!13405 m!25075))

(assert (=> d!13405 m!25103))

(assert (=> d!13405 m!25105))

(assert (=> d!13405 m!25105))

(declare-fun m!25225 () Bool)

(assert (=> d!13405 m!25225))

(assert (=> d!13405 m!25075))

(assert (=> d!13405 m!25161))

(assert (=> b!23774 m!25075))

(assert (=> b!23774 m!25161))

(assert (=> b!23774 m!25103))

(declare-fun m!25227 () Bool)

(assert (=> b!23774 m!25227))

(assert (=> b!23773 m!25075))

(assert (=> b!23773 m!25077))

(assert (=> b!23666 d!13405))

(assert (=> b!23666 d!13381))

(assert (=> b!23666 d!13383))

(declare-fun b!23775 () Bool)

(declare-fun e!12351 () Bool)

(declare-fun tp!5142 () Bool)

(declare-fun tp!5143 () Bool)

(assert (=> b!23775 (= e!12351 (and tp!5142 tp!5143))))

(declare-fun b!23776 () Bool)

(assert (=> b!23776 (= e!12351 tp_is_empty!139)))

(assert (=> b!23675 (= tp!5140 e!12351)))

(assert (= (and b!23675 (is-CC!46 (left!691 (right!694 xs!572)))) b!23775))

(assert (= (and b!23675 (is-Single!46 (left!691 (right!694 xs!572)))) b!23776))

(declare-fun b!23777 () Bool)

(declare-fun e!12352 () Bool)

(declare-fun tp!5144 () Bool)

(declare-fun tp!5145 () Bool)

(assert (=> b!23777 (= e!12352 (and tp!5144 tp!5145))))

(declare-fun b!23778 () Bool)

(assert (=> b!23778 (= e!12352 tp_is_empty!139)))

(assert (=> b!23675 (= tp!5141 e!12352)))

(assert (= (and b!23675 (is-CC!46 (right!694 (right!694 xs!572)))) b!23777))

(assert (= (and b!23675 (is-Single!46 (right!694 (right!694 xs!572)))) b!23778))

(declare-fun b!23779 () Bool)

(declare-fun e!12353 () Bool)

(declare-fun tp!5146 () Bool)

(declare-fun tp!5147 () Bool)

(assert (=> b!23779 (= e!12353 (and tp!5146 tp!5147))))

(declare-fun b!23780 () Bool)

(assert (=> b!23780 (= e!12353 tp_is_empty!139)))

(assert (=> b!23673 (= tp!5138 e!12353)))

(assert (= (and b!23673 (is-CC!46 (left!691 (left!691 xs!572)))) b!23779))

(assert (= (and b!23673 (is-Single!46 (left!691 (left!691 xs!572)))) b!23780))

(declare-fun b!23781 () Bool)

(declare-fun e!12354 () Bool)

(declare-fun tp!5148 () Bool)

(declare-fun tp!5149 () Bool)

(assert (=> b!23781 (= e!12354 (and tp!5148 tp!5149))))

(declare-fun b!23782 () Bool)

(assert (=> b!23782 (= e!12354 tp_is_empty!139)))

(assert (=> b!23673 (= tp!5139 e!12354)))

(assert (= (and b!23673 (is-CC!46 (right!694 (left!691 xs!572)))) b!23781))

(assert (= (and b!23673 (is-Single!46 (right!694 (left!691 xs!572)))) b!23782))

(push 1)

(assert (not b!23701))

(assert (not d!13381))

(assert (not b!23760))

(assert (not b!23781))

(assert (not b!23692))

(assert (not b!23772))

(assert (not b!23779))

(assert (not b!23691))

(assert (not b!23762))

(assert (not b!23737))

(assert (not b!23690))

(assert (not b!23689))

(assert (not b!23702))

(assert (not b!23777))

(assert (not b!23685))

(assert (not b!23759))

(assert (not b!23682))

(assert (not b!23729))

(assert (not b!23699))

(assert (not b!23741))

(assert (not b!23724))

(assert (not b!23733))

(assert (not b!23698))

(assert (not d!13383))

(assert (not b!23700))

(assert (not d!13373))

(assert (not b!23761))

(assert (not b!23747))

(assert (not b!23756))

(assert (not b!23742))

(assert (not b!23773))

(assert (not b!23694))

(assert (not b!23739))

(assert (not d!13379))

(assert (not b!23755))

(assert (not d!13399))

(assert tp_is_empty!139)

(assert (not b!23757))

(assert (not b!23774))

(assert (not b!23723))

(assert (not b!23703))

(assert (not b!23771))

(assert (not b!23687))

(assert (not b!23735))

(assert (not b!23751))

(assert (not b!23743))

(assert (not b!23695))

(assert (not b!23734))

(assert (not b!23738))

(assert (not b!23736))

(assert (not b!23693))

(assert (not d!13405))

(assert (not b!23775))

(assert (not b!23758))

(assert (not b!23713))

(assert (not b!23707))

(assert (not b!23688))

(assert (not b!23684))

(assert (not b!23686))

(assert (not b!23752))

(assert (not b!23740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


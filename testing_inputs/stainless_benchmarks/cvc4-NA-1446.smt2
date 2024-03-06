; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9950 () Bool)

(assert start!9950)

(declare-fun res!35299 () Bool)

(declare-fun e!39086 () Bool)

(assert (=> start!9950 (=> (not res!35299) (not e!39086))))

(declare-datatypes () ((List!605 (Nil!563) (Cons!562 (head!972 Int) (tail!993 List!605)))))

(declare-fun list!773 () List!605)

(assert (=> start!9950 (= res!35299 (is-Cons!562 list!773))))

(assert (=> start!9950 e!39086))

(assert (=> start!9950 true))

(declare-fun b!72289 () Bool)

(declare-fun res!35300 () Bool)

(declare-fun e!39087 () Bool)

(assert (=> b!72289 (=> (not res!35300) (not e!39087))))

(declare-fun res!34920 () List!605)

(declare-fun init!2 (List!605) List!605)

(assert (=> b!72289 (= res!35300 (= (init!2 res!34920) list!773))))

(declare-fun b!72287 () Bool)

(declare-fun res!35297 () Bool)

(assert (=> b!72287 (=> (not res!35297) (not e!39086))))

(declare-fun x!28593 () Int)

(declare-fun addLast!0 (List!605 Int) List!605)

(assert (=> b!72287 (= res!35297 (= res!34920 (Cons!562 (head!972 list!773) (addLast!0 (tail!993 list!773) x!28593))))))

(declare-fun b!72290 () Bool)

(declare-fun size!4 (List!605) Int)

(assert (=> b!72290 (= e!39087 (= (+ (size!4 list!773) 1) (size!4 res!34920)))))

(declare-fun b!72288 () Bool)

(assert (=> b!72288 (= e!39086 (not e!39087))))

(declare-fun res!35298 () Bool)

(assert (=> b!72288 (=> (not res!35298) (not e!39087))))

(declare-datatypes () ((Option!510 (Some!486 (x!28621 Int)) (None!487))))

(declare-fun lastOption!1 (List!605) Option!510)

(assert (=> b!72288 (= res!35298 (= (lastOption!1 res!34920) (Some!486 x!28593)))))

(assert (=> b!72288 (is-Cons!562 res!34920)))

(assert (= (and start!9950 res!35299) b!72287))

(assert (= (and b!72287 res!35297) b!72288))

(assert (= (and b!72288 res!35298) b!72289))

(assert (= (and b!72289 res!35300) b!72290))

(declare-fun m!72312 () Bool)

(assert (=> b!72289 m!72312))

(declare-fun m!72314 () Bool)

(assert (=> b!72287 m!72314))

(declare-fun m!72316 () Bool)

(assert (=> b!72290 m!72316))

(declare-fun m!72318 () Bool)

(assert (=> b!72290 m!72318))

(declare-fun m!72320 () Bool)

(assert (=> b!72288 m!72320))

(push 1)

(assert (not b!72288))

(assert (not b!72290))

(assert (not b!72287))

(assert (not b!72289))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!72300 () Bool)

(declare-fun e!39092 () Option!510)

(declare-fun e!39093 () Option!510)

(assert (=> b!72300 (= e!39092 e!39093)))

(declare-fun c!17392 () Bool)

(assert (=> b!72300 (= c!17392 (is-Cons!562 res!34920))))

(declare-fun b!72302 () Bool)

(assert (=> b!72302 (= e!39093 None!487)))

(declare-fun b!72299 () Bool)

(assert (=> b!72299 (= e!39092 (Some!486 (head!972 res!34920)))))

(declare-fun b!72301 () Bool)

(assert (=> b!72301 (= e!39093 (lastOption!1 (tail!993 res!34920)))))

(declare-fun d!54543 () Bool)

(declare-fun c!17391 () Bool)

(assert (=> d!54543 (= c!17391 (and (is-Cons!562 res!34920) (is-Nil!563 (tail!993 res!34920))))))

(assert (=> d!54543 (= (lastOption!1 res!34920) e!39092)))

(assert (= (and b!72300 c!17392) b!72301))

(assert (= (and b!72300 (not c!17392)) b!72302))

(assert (= (and d!54543 c!17391) b!72299))

(assert (= (and d!54543 (not c!17391)) b!72300))

(declare-fun m!72322 () Bool)

(assert (=> b!72301 m!72322))

(assert (=> b!72288 d!54543))

(declare-fun d!54545 () Bool)

(declare-fun lt!15333 () Int)

(assert (=> d!54545 (>= lt!15333 0)))

(declare-fun e!39096 () Int)

(assert (=> d!54545 (= lt!15333 e!39096)))

(declare-fun c!17395 () Bool)

(assert (=> d!54545 (= c!17395 (is-Nil!563 list!773))))

(assert (=> d!54545 (= (size!4 list!773) lt!15333)))

(declare-fun b!72307 () Bool)

(assert (=> b!72307 (= e!39096 0)))

(declare-fun b!72308 () Bool)

(assert (=> b!72308 (= e!39096 (+ 1 (size!4 (tail!993 list!773))))))

(assert (= (and d!54545 c!17395) b!72307))

(assert (= (and d!54545 (not c!17395)) b!72308))

(declare-fun m!72324 () Bool)

(assert (=> b!72308 m!72324))

(assert (=> b!72290 d!54545))

(declare-fun d!54547 () Bool)

(declare-fun lt!15334 () Int)

(assert (=> d!54547 (>= lt!15334 0)))

(declare-fun e!39097 () Int)

(assert (=> d!54547 (= lt!15334 e!39097)))

(declare-fun c!17396 () Bool)

(assert (=> d!54547 (= c!17396 (is-Nil!563 res!34920))))

(assert (=> d!54547 (= (size!4 res!34920) lt!15334)))

(declare-fun b!72309 () Bool)

(assert (=> b!72309 (= e!39097 0)))

(declare-fun b!72310 () Bool)

(assert (=> b!72310 (= e!39097 (+ 1 (size!4 (tail!993 res!34920))))))

(assert (= (and d!54547 c!17396) b!72309))

(assert (= (and d!54547 (not c!17396)) b!72310))

(declare-fun m!72326 () Bool)

(assert (=> b!72310 m!72326))

(assert (=> b!72290 d!54547))

(declare-fun d!54549 () Bool)

(declare-fun e!39103 () Bool)

(assert (=> d!54549 e!39103))

(declare-fun res!35310 () Bool)

(assert (=> d!54549 (=> (not res!35310) (not e!39103))))

(declare-fun lt!15337 () List!605)

(assert (=> d!54549 (= res!35310 (is-Cons!562 lt!15337))))

(declare-fun e!39102 () List!605)

(assert (=> d!54549 (= lt!15337 e!39102)))

(declare-fun c!17399 () Bool)

(assert (=> d!54549 (= c!17399 (is-Cons!562 (tail!993 list!773)))))

(assert (=> d!54549 (= (addLast!0 (tail!993 list!773) x!28593) lt!15337)))

(declare-fun b!72321 () Bool)

(declare-fun res!35308 () Bool)

(assert (=> b!72321 (=> (not res!35308) (not e!39103))))

(assert (=> b!72321 (= res!35308 (= (lastOption!1 lt!15337) (Some!486 x!28593)))))

(declare-fun b!72322 () Bool)

(declare-fun res!35309 () Bool)

(assert (=> b!72322 (=> (not res!35309) (not e!39103))))

(assert (=> b!72322 (= res!35309 (= (init!2 lt!15337) (tail!993 list!773)))))

(declare-fun b!72323 () Bool)

(assert (=> b!72323 (= e!39102 (Cons!562 x!28593 Nil!563))))

(declare-fun b!72324 () Bool)

(assert (=> b!72324 (= e!39102 (Cons!562 (head!972 (tail!993 list!773)) (addLast!0 (tail!993 (tail!993 list!773)) x!28593)))))

(declare-fun b!72325 () Bool)

(assert (=> b!72325 (= e!39103 (= (+ (size!4 (tail!993 list!773)) 1) (size!4 lt!15337)))))

(assert (= (and d!54549 c!17399) b!72324))

(assert (= (and d!54549 (not c!17399)) b!72323))

(assert (= (and d!54549 res!35310) b!72321))

(assert (= (and b!72321 res!35308) b!72322))

(assert (= (and b!72322 res!35309) b!72325))

(declare-fun m!72328 () Bool)

(assert (=> b!72321 m!72328))

(declare-fun m!72330 () Bool)

(assert (=> b!72322 m!72330))

(declare-fun m!72332 () Bool)

(assert (=> b!72324 m!72332))

(assert (=> b!72325 m!72324))

(declare-fun m!72334 () Bool)

(assert (=> b!72325 m!72334))

(assert (=> b!72287 d!54549))

(declare-fun b!72334 () Bool)

(declare-fun e!39108 () List!605)

(assert (=> b!72334 (= e!39108 Nil!563)))

(declare-fun b!72337 () Bool)

(declare-fun e!39109 () List!605)

(assert (=> b!72337 (= e!39109 Nil!563)))

(declare-fun d!54551 () Bool)

(declare-fun c!17404 () Bool)

(assert (=> d!54551 (= c!17404 (and (is-Cons!562 res!34920) (is-Nil!563 (tail!993 res!34920))))))

(assert (=> d!54551 (= (init!2 res!34920) e!39108)))

(declare-fun b!72336 () Bool)

(assert (=> b!72336 (= e!39109 (Cons!562 (head!972 res!34920) (init!2 (tail!993 res!34920))))))

(declare-fun b!72335 () Bool)

(assert (=> b!72335 (= e!39108 e!39109)))

(declare-fun c!17405 () Bool)

(assert (=> b!72335 (= c!17405 (is-Cons!562 res!34920))))

(assert (= (and b!72335 c!17405) b!72336))

(assert (= (and b!72335 (not c!17405)) b!72337))

(assert (= (and d!54551 c!17404) b!72334))

(assert (= (and d!54551 (not c!17404)) b!72335))

(declare-fun m!72336 () Bool)

(assert (=> b!72336 m!72336))

(assert (=> b!72289 d!54551))

(push 1)

(assert (not b!72321))

(assert (not b!72322))

(assert (not b!72324))

(assert (not b!72325))

(assert (not b!72301))

(assert (not b!72336))

(assert (not b!72310))

(assert (not b!72308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


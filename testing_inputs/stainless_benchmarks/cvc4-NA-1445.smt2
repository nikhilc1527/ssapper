; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9942 () Bool)

(assert start!9942)

(declare-fun res!35286 () Bool)

(declare-fun e!39069 () Bool)

(assert (=> start!9942 (=> (not res!35286) (not e!39069))))

(declare-datatypes () ((List!604 (Nil!562) (Cons!561 (head!971 Int) (tail!992 List!604)))))

(declare-fun list!735 () List!604)

(declare-fun res!34917 () List!604)

(assert (=> start!9942 (= res!35286 (and (not (is-Cons!561 list!735)) (= res!34917 Nil!562)))))

(assert (=> start!9942 e!39069))

(assert (=> start!9942 true))

(declare-fun b!72252 () Bool)

(declare-fun e!39068 () Bool)

(assert (=> b!72252 (= e!39069 e!39068)))

(declare-fun res!35288 () Bool)

(assert (=> b!72252 (=> res!35288 e!39068)))

(declare-datatypes () ((Option!509 (Some!485 (x!28620 Int)) (None!486))))

(declare-fun lastOption!1 (List!604) Option!509)

(declare-fun headOption!1 (List!604) Option!509)

(assert (=> b!72252 (= res!35288 (not (= (lastOption!1 res!34917) (headOption!1 list!735))))))

(declare-fun b!72253 () Bool)

(declare-fun res!35287 () Bool)

(assert (=> b!72253 (=> res!35287 e!39068)))

(assert (=> b!72253 (= res!35287 (not (= (lastOption!1 list!735) (headOption!1 res!34917))))))

(declare-fun b!72254 () Bool)

(declare-fun size!4 (List!604) Int)

(assert (=> b!72254 (= e!39068 (not (= (size!4 res!34917) (size!4 list!735))))))

(assert (= (and start!9942 res!35286) b!72252))

(assert (= (and b!72252 (not res!35288)) b!72253))

(assert (= (and b!72253 (not res!35287)) b!72254))

(declare-fun m!72292 () Bool)

(assert (=> b!72252 m!72292))

(declare-fun m!72294 () Bool)

(assert (=> b!72252 m!72294))

(declare-fun m!72296 () Bool)

(assert (=> b!72253 m!72296))

(declare-fun m!72298 () Bool)

(assert (=> b!72253 m!72298))

(declare-fun m!72300 () Bool)

(assert (=> b!72254 m!72300))

(declare-fun m!72302 () Bool)

(assert (=> b!72254 m!72302))

(push 1)

(assert (not b!72254))

(assert (not b!72253))

(assert (not b!72252))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54531 () Bool)

(declare-fun lt!15329 () Int)

(assert (=> d!54531 (>= lt!15329 0)))

(declare-fun e!39072 () Int)

(assert (=> d!54531 (= lt!15329 e!39072)))

(declare-fun c!17377 () Bool)

(assert (=> d!54531 (= c!17377 (is-Nil!562 res!34917))))

(assert (=> d!54531 (= (size!4 res!34917) lt!15329)))

(declare-fun b!72259 () Bool)

(assert (=> b!72259 (= e!39072 0)))

(declare-fun b!72260 () Bool)

(assert (=> b!72260 (= e!39072 (+ 1 (size!4 (tail!992 res!34917))))))

(assert (= (and d!54531 c!17377) b!72259))

(assert (= (and d!54531 (not c!17377)) b!72260))

(declare-fun m!72304 () Bool)

(assert (=> b!72260 m!72304))

(assert (=> b!72254 d!54531))

(declare-fun d!54533 () Bool)

(declare-fun lt!15330 () Int)

(assert (=> d!54533 (>= lt!15330 0)))

(declare-fun e!39073 () Int)

(assert (=> d!54533 (= lt!15330 e!39073)))

(declare-fun c!17378 () Bool)

(assert (=> d!54533 (= c!17378 (is-Nil!562 list!735))))

(assert (=> d!54533 (= (size!4 list!735) lt!15330)))

(declare-fun b!72261 () Bool)

(assert (=> b!72261 (= e!39073 0)))

(declare-fun b!72262 () Bool)

(assert (=> b!72262 (= e!39073 (+ 1 (size!4 (tail!992 list!735))))))

(assert (= (and d!54533 c!17378) b!72261))

(assert (= (and d!54533 (not c!17378)) b!72262))

(declare-fun m!72306 () Bool)

(assert (=> b!72262 m!72306))

(assert (=> b!72254 d!54533))

(declare-fun b!72273 () Bool)

(declare-fun e!39079 () Option!509)

(assert (=> b!72273 (= e!39079 (lastOption!1 (tail!992 list!735)))))

(declare-fun b!72274 () Bool)

(assert (=> b!72274 (= e!39079 None!486)))

(declare-fun b!72272 () Bool)

(declare-fun e!39078 () Option!509)

(assert (=> b!72272 (= e!39078 e!39079)))

(declare-fun c!17384 () Bool)

(assert (=> b!72272 (= c!17384 (is-Cons!561 list!735))))

(declare-fun d!54535 () Bool)

(declare-fun c!17383 () Bool)

(assert (=> d!54535 (= c!17383 (and (is-Cons!561 list!735) (is-Nil!562 (tail!992 list!735))))))

(assert (=> d!54535 (= (lastOption!1 list!735) e!39078)))

(declare-fun b!72271 () Bool)

(assert (=> b!72271 (= e!39078 (Some!485 (head!971 list!735)))))

(assert (= (and b!72272 c!17384) b!72273))

(assert (= (and b!72272 (not c!17384)) b!72274))

(assert (= (and d!54535 c!17383) b!72271))

(assert (= (and d!54535 (not c!17383)) b!72272))

(declare-fun m!72308 () Bool)

(assert (=> b!72273 m!72308))

(assert (=> b!72253 d!54535))

(declare-fun d!54537 () Bool)

(assert (=> d!54537 (= (headOption!1 res!34917) (ite (is-Cons!561 res!34917) (Some!485 (head!971 res!34917)) None!486))))

(assert (=> b!72253 d!54537))

(declare-fun b!72277 () Bool)

(declare-fun e!39081 () Option!509)

(assert (=> b!72277 (= e!39081 (lastOption!1 (tail!992 res!34917)))))

(declare-fun b!72278 () Bool)

(assert (=> b!72278 (= e!39081 None!486)))

(declare-fun b!72276 () Bool)

(declare-fun e!39080 () Option!509)

(assert (=> b!72276 (= e!39080 e!39081)))

(declare-fun c!17386 () Bool)

(assert (=> b!72276 (= c!17386 (is-Cons!561 res!34917))))

(declare-fun d!54539 () Bool)

(declare-fun c!17385 () Bool)

(assert (=> d!54539 (= c!17385 (and (is-Cons!561 res!34917) (is-Nil!562 (tail!992 res!34917))))))

(assert (=> d!54539 (= (lastOption!1 res!34917) e!39080)))

(declare-fun b!72275 () Bool)

(assert (=> b!72275 (= e!39080 (Some!485 (head!971 res!34917)))))

(assert (= (and b!72276 c!17386) b!72277))

(assert (= (and b!72276 (not c!17386)) b!72278))

(assert (= (and d!54539 c!17385) b!72275))

(assert (= (and d!54539 (not c!17385)) b!72276))

(declare-fun m!72310 () Bool)

(assert (=> b!72277 m!72310))

(assert (=> b!72252 d!54539))

(declare-fun d!54541 () Bool)

(assert (=> d!54541 (= (headOption!1 list!735) (ite (is-Cons!561 list!735) (Some!485 (head!971 list!735)) None!486))))

(assert (=> b!72252 d!54541))

(push 1)

(assert (not b!72273))

(assert (not b!72262))

(assert (not b!72277))

(assert (not b!72260))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


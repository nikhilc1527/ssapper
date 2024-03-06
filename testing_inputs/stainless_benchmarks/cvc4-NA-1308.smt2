; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9226 () Bool)

(assert start!9226)

(declare-fun res!30705 () Bool)

(declare-fun e!35436 () Bool)

(assert (=> start!9226 (=> (not res!30705) (not e!35436))))

(declare-datatypes () ((Formula!10 (And!15 (lhs!833 Formula!10) (rhs!833 Formula!10)) (Literal!9 (id!4790 Int)) (Implies!15 (lhs!834 Formula!10) (rhs!834 Formula!10)) (Or!15 (lhs!835 Formula!10) (rhs!835 Formula!10)) (Not!15 (f!4093 Formula!10)))))

(declare-fun f!3774 () Formula!10)

(declare-fun isNNF!1 (Formula!10) Bool)

(assert (=> start!9226 (= res!30705 (isNNF!1 f!3774))))

(assert (=> start!9226 e!35436))

(assert (=> start!9226 true))

(declare-fun b!65325 () Bool)

(declare-fun res!30706 () Bool)

(assert (=> b!65325 (=> (not res!30706) (not e!35436))))

(declare-fun f!3778 () Formula!10)

(assert (=> b!65325 (= res!30706 (and (is-And!15 f!3774) (= f!3778 (lhs!833 f!3774))))))

(declare-fun b!65326 () Bool)

(assert (=> b!65326 (= e!35436 (not (isNNF!1 f!3778)))))

(assert (= (and start!9226 res!30705) b!65325))

(assert (= (and b!65325 res!30706) b!65326))

(declare-fun m!69401 () Bool)

(assert (=> start!9226 m!69401))

(declare-fun m!69403 () Bool)

(assert (=> b!65326 m!69403))

(push 1)

(assert (not b!65326))

(assert (not start!9226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!65341 () Bool)

(declare-fun e!35448 () Bool)

(declare-fun res!30721 () Bool)

(assert (=> b!65341 (= e!35448 res!30721)))

(assert (=> b!65341 true))

(assert (=> b!65341 true))

(declare-fun b!65342 () Bool)

(declare-fun e!35446 () Bool)

(declare-fun res!30720 () Bool)

(assert (=> b!65342 (= e!35446 res!30720)))

(assert (=> b!65342 true))

(declare-fun d!53346 () Bool)

(declare-fun c!14620 () Bool)

(declare-fun lt!12526 () Bool)

(assert (=> d!53346 (= c!14620 (or lt!12526 (is-Or!15 f!3778)))))

(declare-fun lt!12524 () Bool)

(declare-fun lt!12525 () Bool)

(assert (=> d!53346 (= lt!12524 (and lt!12526 lt!12525))))

(assert (=> d!53346 (= lt!12525 e!35446)))

(declare-fun c!14619 () Bool)

(assert (=> d!53346 (= c!14619 (or lt!12526 (is-Or!15 f!3778)))))

(assert (=> d!53346 (= lt!12526 (is-And!15 f!3778))))

(declare-fun e!35447 () Bool)

(assert (=> d!53346 (= (isNNF!1 f!3778) e!35447)))

(declare-fun b!65343 () Bool)

(declare-fun e!35445 () Bool)

(assert (=> b!65343 (= e!35445 e!35448)))

(declare-fun c!14621 () Bool)

(assert (=> b!65343 (= c!14621 (or lt!12524 (and (not lt!12526) (is-Or!15 f!3778) lt!12525)))))

(declare-fun b!65344 () Bool)

(assert (=> b!65344 (= e!35447 (and (not (is-Implies!15 f!3778)) (or (and (is-Not!15 f!3778) (is-Literal!9 (f!4093 f!3778))) (not (is-Not!15 f!3778)))))))

(declare-fun b!65345 () Bool)

(assert (=> b!65345 (= e!35447 e!35445)))

(declare-fun res!30719 () Bool)

(assert (=> b!65345 (=> (not res!30719) (not e!35445))))

(assert (=> b!65345 (= res!30719 lt!12525)))

(declare-fun b!65346 () Bool)

(assert (=> b!65346 (= e!35448 (isNNF!1 (ite lt!12524 (rhs!833 f!3778) (rhs!835 f!3778))))))

(declare-fun b!65347 () Bool)

(assert (=> b!65347 (= e!35446 (isNNF!1 (ite lt!12526 (lhs!833 f!3778) (lhs!835 f!3778))))))

(assert (= (and d!53346 c!14619) b!65347))

(assert (= (and d!53346 (not c!14619)) b!65342))

(assert (= (and b!65345 res!30719) b!65343))

(assert (= (and b!65343 c!14621) b!65346))

(assert (= (and b!65343 (not c!14621)) b!65341))

(assert (= (and d!53346 c!14620) b!65345))

(assert (= (and d!53346 (not c!14620)) b!65344))

(declare-fun m!69405 () Bool)

(assert (=> b!65346 m!69405))

(declare-fun m!69407 () Bool)

(assert (=> b!65347 m!69407))

(assert (=> b!65326 d!53346))

(declare-fun b!65348 () Bool)

(declare-fun e!35452 () Bool)

(declare-fun res!30724 () Bool)

(assert (=> b!65348 (= e!35452 res!30724)))

(assert (=> b!65348 true))

(assert (=> b!65348 true))

(declare-fun b!65349 () Bool)

(declare-fun e!35450 () Bool)

(declare-fun res!30723 () Bool)

(assert (=> b!65349 (= e!35450 res!30723)))

(assert (=> b!65349 true))

(declare-fun d!53348 () Bool)

(declare-fun c!14623 () Bool)

(declare-fun lt!12529 () Bool)

(assert (=> d!53348 (= c!14623 (or lt!12529 (is-Or!15 f!3774)))))

(declare-fun lt!12527 () Bool)

(declare-fun lt!12528 () Bool)

(assert (=> d!53348 (= lt!12527 (and lt!12529 lt!12528))))

(assert (=> d!53348 (= lt!12528 e!35450)))

(declare-fun c!14622 () Bool)

(assert (=> d!53348 (= c!14622 (or lt!12529 (is-Or!15 f!3774)))))

(assert (=> d!53348 (= lt!12529 (is-And!15 f!3774))))

(declare-fun e!35451 () Bool)

(assert (=> d!53348 (= (isNNF!1 f!3774) e!35451)))

(declare-fun b!65350 () Bool)

(declare-fun e!35449 () Bool)

(assert (=> b!65350 (= e!35449 e!35452)))

(declare-fun c!14624 () Bool)

(assert (=> b!65350 (= c!14624 (or lt!12527 (and (not lt!12529) (is-Or!15 f!3774) lt!12528)))))

(declare-fun b!65351 () Bool)

(assert (=> b!65351 (= e!35451 (and (not (is-Implies!15 f!3774)) (or (and (is-Not!15 f!3774) (is-Literal!9 (f!4093 f!3774))) (not (is-Not!15 f!3774)))))))

(declare-fun b!65352 () Bool)

(assert (=> b!65352 (= e!35451 e!35449)))

(declare-fun res!30722 () Bool)

(assert (=> b!65352 (=> (not res!30722) (not e!35449))))

(assert (=> b!65352 (= res!30722 lt!12528)))

(declare-fun b!65353 () Bool)

(assert (=> b!65353 (= e!35452 (isNNF!1 (ite lt!12527 (rhs!833 f!3774) (rhs!835 f!3774))))))

(declare-fun b!65354 () Bool)

(assert (=> b!65354 (= e!35450 (isNNF!1 (ite lt!12529 (lhs!833 f!3774) (lhs!835 f!3774))))))

(assert (= (and d!53348 c!14622) b!65354))

(assert (= (and d!53348 (not c!14622)) b!65349))

(assert (= (and b!65352 res!30722) b!65350))

(assert (= (and b!65350 c!14624) b!65353))

(assert (= (and b!65350 (not c!14624)) b!65348))

(assert (= (and d!53348 c!14623) b!65352))

(assert (= (and d!53348 (not c!14623)) b!65351))

(declare-fun m!69409 () Bool)

(assert (=> b!65353 m!69409))

(declare-fun m!69411 () Bool)

(assert (=> b!65354 m!69411))

(assert (=> start!9226 d!53348))

(push 1)

(assert (not b!65353))

(assert (not b!65347))

(assert (not b!65346))

(assert (not b!65354))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


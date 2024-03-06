; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5158 () Bool)

(assert start!5158)

(declare-fun b!39472 () Bool)

(declare-fun res!18928 () Bool)

(declare-fun e!20345 () Bool)

(assert (=> b!39472 (=> (not res!18928) (not e!20345))))

(declare-datatypes () ((Unit!362 (Unit!363))))

(declare-fun tmp!181 () Unit!362)

(declare-datatypes () ((Nat!84 (Zero!68) (Succ!65 (n!1168 Nat!84)))))

(declare-fun n3!50 () Nat!84)

(declare-fun n1!194 () Nat!84)

(declare-fun plus_succ!0 (Nat!84 Nat!84) Unit!362)

(assert (=> b!39472 (= res!18928 (= tmp!181 (plus_succ!0 n1!194 (n!1168 n3!50))))))

(declare-fun b!39473 () Bool)

(declare-fun res!18930 () Bool)

(assert (=> b!39473 (=> (not res!18930) (not e!20345))))

(declare-fun n1!204 () Nat!84)

(declare-fun n3!51 () Nat!84)

(declare-fun n2!205 () Nat!84)

(declare-fun n2!215 () Nat!84)

(assert (=> b!39473 (= res!18930 (and (= n1!204 n1!194) (= n2!215 n2!205) (= n3!51 (n!1168 n3!50))))))

(declare-fun res!18929 () Bool)

(assert (=> start!5158 (=> (not res!18929) (not e!20345))))

(declare-fun <!2 (Nat!84 Nat!84) Bool)

(assert (=> start!5158 (= res!18929 (<!2 n2!205 n3!50))))

(assert (=> start!5158 e!20345))

(assert (=> start!5158 true))

(declare-fun b!39474 () Bool)

(declare-fun res!18927 () Bool)

(assert (=> b!39474 (=> (not res!18927) (not e!20345))))

(assert (=> b!39474 (= res!18927 (or (not (is-Succ!65 n3!50)) (not (= n2!205 (n!1168 n3!50)))))))

(declare-fun b!39475 () Bool)

(declare-fun res!18931 () Bool)

(assert (=> b!39475 (=> (not res!18931) (not e!20345))))

(declare-fun tmp!182 () Unit!362)

(declare-fun pred_<!0 (Nat!84 Nat!84) Unit!362)

(assert (=> b!39475 (= res!18931 (= tmp!182 (pred_<!0 n2!205 n3!50)))))

(declare-fun b!39476 () Bool)

(assert (=> b!39476 (= e!20345 (not (<!2 n2!215 n3!51)))))

(assert (= (and start!5158 res!18929) b!39474))

(assert (= (and b!39474 res!18927) b!39472))

(assert (= (and b!39472 res!18928) b!39475))

(assert (= (and b!39475 res!18931) b!39473))

(assert (= (and b!39473 res!18930) b!39476))

(declare-fun m!40619 () Bool)

(assert (=> b!39472 m!40619))

(declare-fun m!40621 () Bool)

(assert (=> start!5158 m!40621))

(declare-fun m!40623 () Bool)

(assert (=> b!39475 m!40623))

(declare-fun m!40625 () Bool)

(assert (=> b!39476 m!40625))

(push 1)

(assert (not b!39476))

(assert (not b!39475))

(assert (not start!5158))

(assert (not b!39472))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!20008 () Bool)

(declare-fun lt!7621 () Bool)

(declare-fun repr!0 (Nat!84) Int)

(assert (=> d!20008 (= lt!7621 (< (repr!0 n2!215) (repr!0 n3!51)))))

(declare-fun e!20348 () Bool)

(assert (=> d!20008 (= lt!7621 e!20348)))

(declare-fun c!8404 () Bool)

(assert (=> d!20008 (= c!8404 (and (is-Succ!65 n2!215) (is-Succ!65 n3!51)))))

(assert (=> d!20008 (= (<!2 n2!215 n3!51) lt!7621)))

(declare-fun b!39481 () Bool)

(assert (=> b!39481 (= e!20348 (<!2 (n!1168 n2!215) (n!1168 n3!51)))))

(declare-fun b!39482 () Bool)

(assert (=> b!39482 (= e!20348 (and (is-Zero!68 n2!215) (is-Succ!65 n3!51)))))

(assert (= (and d!20008 c!8404) b!39481))

(assert (= (and d!20008 (not c!8404)) b!39482))

(declare-fun m!40627 () Bool)

(assert (=> d!20008 m!40627))

(declare-fun m!40629 () Bool)

(assert (=> d!20008 m!40629))

(declare-fun m!40631 () Bool)

(assert (=> b!39481 m!40631))

(assert (=> b!39476 d!20008))

(declare-fun d!20010 () Bool)

(declare-fun e!20351 () Bool)

(assert (=> d!20010 e!20351))

(declare-fun res!18934 () Bool)

(assert (=> d!20010 (=> res!18934 e!20351)))

(declare-fun lt!7624 () Nat!84)

(assert (=> d!20010 (= res!18934 (= n2!205 lt!7624))))

(assert (=> d!20010 (= lt!7624 (n!1168 n3!50))))

(assert (=> d!20010 true))

(declare-fun x$45!69 () Unit!362)

(assert (=> d!20010 (= (pred_<!0 n2!205 n3!50) x$45!69)))

(declare-fun b!39485 () Bool)

(assert (=> b!39485 (= e!20351 (<!2 n2!205 lt!7624))))

(assert (= (and d!20010 (not res!18934)) b!39485))

(declare-fun m!40633 () Bool)

(assert (=> b!39485 m!40633))

(assert (=> b!39475 d!20010))

(declare-fun d!20012 () Bool)

(declare-fun lt!7625 () Bool)

(assert (=> d!20012 (= lt!7625 (< (repr!0 n2!205) (repr!0 n3!50)))))

(declare-fun e!20352 () Bool)

(assert (=> d!20012 (= lt!7625 e!20352)))

(declare-fun c!8405 () Bool)

(assert (=> d!20012 (= c!8405 (and (is-Succ!65 n2!205) (is-Succ!65 n3!50)))))

(assert (=> d!20012 (= (<!2 n2!205 n3!50) lt!7625)))

(declare-fun b!39486 () Bool)

(assert (=> b!39486 (= e!20352 (<!2 (n!1168 n2!205) (n!1168 n3!50)))))

(declare-fun b!39487 () Bool)

(assert (=> b!39487 (= e!20352 (and (is-Zero!68 n2!205) (is-Succ!65 n3!50)))))

(assert (= (and d!20012 c!8405) b!39486))

(assert (= (and d!20012 (not c!8405)) b!39487))

(declare-fun m!40635 () Bool)

(assert (=> d!20012 m!40635))

(declare-fun m!40637 () Bool)

(assert (=> d!20012 m!40637))

(declare-fun m!40639 () Bool)

(assert (=> b!39486 m!40639))

(assert (=> start!5158 d!20012))

(declare-fun d!20014 () Bool)

(declare-fun +!5 (Nat!84 Nat!84) Nat!84)

(assert (=> d!20014 (= (+!5 n1!194 (Succ!65 (n!1168 n3!50))) (Succ!65 (+!5 n1!194 (n!1168 n3!50))))))

(assert (=> d!20014 true))

(declare-fun x$7!70 () Unit!362)

(assert (=> d!20014 (= (plus_succ!0 n1!194 (n!1168 n3!50)) x$7!70)))

(declare-fun bs!12082 () Bool)

(assert (= bs!12082 d!20014))

(declare-fun m!40641 () Bool)

(assert (=> bs!12082 m!40641))

(declare-fun m!40643 () Bool)

(assert (=> bs!12082 m!40643))

(assert (=> b!39472 d!20014))

(push 1)

(assert (not d!20014))

(assert (not d!20008))

(assert (not b!39485))

(assert (not b!39486))

(assert (not b!39481))

(assert (not d!20012))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


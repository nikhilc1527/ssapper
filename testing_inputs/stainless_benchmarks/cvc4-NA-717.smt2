; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5112 () Bool)

(assert start!5112)

(declare-fun b!39297 () Bool)

(declare-fun res!18816 () Bool)

(declare-fun e!20265 () Bool)

(assert (=> b!39297 (=> (not res!18816) (not e!20265))))

(declare-datatypes () ((Nat!78 (Zero!62) (Succ!59 (n!1159 Nat!78)))))

(declare-fun n1!376 () Nat!78)

(declare-fun n3!65 () Nat!78)

(declare-datatypes () ((Unit!351 (Unit!352))))

(declare-fun tmp!244 () Unit!351)

(declare-fun pred_<!0 (Nat!78 Nat!78) Unit!351)

(assert (=> b!39297 (= res!18816 (= tmp!244 (pred_<!0 n1!376 n3!65)))))

(declare-fun b!39298 () Bool)

(declare-fun e!20266 () Bool)

(declare-fun n2!397 () Nat!78)

(declare-fun n4!4 () Nat!78)

(declare-fun <=!2 (Nat!78 Nat!78) Bool)

(assert (=> b!39298 (= e!20266 (not (<=!2 n2!397 n4!4)))))

(declare-fun b!39299 () Bool)

(declare-fun res!18817 () Bool)

(assert (=> b!39299 (=> (not res!18817) (not e!20265))))

(declare-fun n2!392 () Nat!78)

(declare-fun n4!3 () Nat!78)

(assert (=> b!39299 (= res!18817 (and (not (is-Zero!62 n3!65)) (or (not (= n1!376 n3!65)) (not (= n2!392 n4!3))) (not (= n1!376 n3!65))))))

(declare-fun b!39300 () Bool)

(declare-fun res!18821 () Bool)

(assert (=> b!39300 (=> (not res!18821) (not e!20265))))

(assert (=> b!39300 (= res!18821 (<=!2 n2!392 n4!3))))

(declare-fun res!18818 () Bool)

(assert (=> start!5112 (=> (not res!18818) (not e!20265))))

(assert (=> start!5112 (= res!18818 (<=!2 n1!376 n3!65))))

(assert (=> start!5112 e!20265))

(assert (=> start!5112 true))

(declare-fun b!39301 () Bool)

(assert (=> b!39301 (= e!20265 e!20266)))

(declare-fun res!18819 () Bool)

(assert (=> b!39301 (=> res!18819 e!20266)))

(declare-fun n1!381 () Nat!78)

(declare-fun n3!68 () Nat!78)

(assert (=> b!39301 (= res!18819 (not (<=!2 n1!381 n3!68)))))

(declare-fun b!39302 () Bool)

(declare-fun res!18820 () Bool)

(assert (=> b!39302 (=> (not res!18820) (not e!20265))))

(assert (=> b!39302 (= res!18820 (and (= n1!381 n1!376) (= n2!397 n2!392) (= n3!68 (n!1159 n3!65)) (= n4!4 n4!3)))))

(assert (= (and start!5112 res!18818) b!39300))

(assert (= (and b!39300 res!18821) b!39299))

(assert (= (and b!39299 res!18817) b!39297))

(assert (= (and b!39297 res!18816) b!39302))

(assert (= (and b!39302 res!18820) b!39301))

(assert (= (and b!39301 (not res!18819)) b!39298))

(declare-fun m!40463 () Bool)

(assert (=> start!5112 m!40463))

(declare-fun m!40465 () Bool)

(assert (=> b!39298 m!40465))

(declare-fun m!40467 () Bool)

(assert (=> b!39301 m!40467))

(declare-fun m!40469 () Bool)

(assert (=> b!39297 m!40469))

(declare-fun m!40471 () Bool)

(assert (=> b!39300 m!40471))

(push 1)

(assert (not b!39297))

(assert (not b!39300))

(assert (not b!39301))

(assert (not start!5112))

(assert (not b!39298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!19936 () Bool)

(declare-fun res!18824 () Bool)

(declare-fun e!20269 () Bool)

(assert (=> d!19936 (=> res!18824 e!20269)))

(declare-fun <!2 (Nat!78 Nat!78) Bool)

(assert (=> d!19936 (= res!18824 (<!2 n2!392 n4!3))))

(assert (=> d!19936 (= (<=!2 n2!392 n4!3) e!20269)))

(declare-fun b!39305 () Bool)

(assert (=> b!39305 (= e!20269 (= n2!392 n4!3))))

(assert (= (and d!19936 (not res!18824)) b!39305))

(declare-fun m!40473 () Bool)

(assert (=> d!19936 m!40473))

(assert (=> b!39300 d!19936))

(declare-fun d!19938 () Bool)

(declare-fun res!18825 () Bool)

(declare-fun e!20270 () Bool)

(assert (=> d!19938 (=> res!18825 e!20270)))

(assert (=> d!19938 (= res!18825 (<!2 n1!376 n3!65))))

(assert (=> d!19938 (= (<=!2 n1!376 n3!65) e!20270)))

(declare-fun b!39306 () Bool)

(assert (=> b!39306 (= e!20270 (= n1!376 n3!65))))

(assert (= (and d!19938 (not res!18825)) b!39306))

(declare-fun m!40475 () Bool)

(assert (=> d!19938 m!40475))

(assert (=> start!5112 d!19938))

(declare-fun d!19940 () Bool)

(declare-fun res!18826 () Bool)

(declare-fun e!20271 () Bool)

(assert (=> d!19940 (=> res!18826 e!20271)))

(assert (=> d!19940 (= res!18826 (<!2 n2!397 n4!4))))

(assert (=> d!19940 (= (<=!2 n2!397 n4!4) e!20271)))

(declare-fun b!39307 () Bool)

(assert (=> b!39307 (= e!20271 (= n2!397 n4!4))))

(assert (= (and d!19940 (not res!18826)) b!39307))

(declare-fun m!40477 () Bool)

(assert (=> d!19940 m!40477))

(assert (=> b!39298 d!19940))

(declare-fun d!19942 () Bool)

(declare-fun e!20274 () Bool)

(assert (=> d!19942 e!20274))

(declare-fun res!18829 () Bool)

(assert (=> d!19942 (=> res!18829 e!20274)))

(declare-fun lt!7595 () Nat!78)

(assert (=> d!19942 (= res!18829 (= n1!376 lt!7595))))

(assert (=> d!19942 (= lt!7595 (n!1159 n3!65))))

(assert (=> d!19942 true))

(declare-fun x$45!60 () Unit!351)

(assert (=> d!19942 (= (pred_<!0 n1!376 n3!65) x$45!60)))

(declare-fun b!39310 () Bool)

(assert (=> b!39310 (= e!20274 (<!2 n1!376 lt!7595))))

(assert (= (and d!19942 (not res!18829)) b!39310))

(declare-fun m!40479 () Bool)

(assert (=> b!39310 m!40479))

(assert (=> b!39297 d!19942))

(declare-fun d!19944 () Bool)

(declare-fun res!18830 () Bool)

(declare-fun e!20275 () Bool)

(assert (=> d!19944 (=> res!18830 e!20275)))

(assert (=> d!19944 (= res!18830 (<!2 n1!381 n3!68))))

(assert (=> d!19944 (= (<=!2 n1!381 n3!68) e!20275)))

(declare-fun b!39311 () Bool)

(assert (=> b!39311 (= e!20275 (= n1!381 n3!68))))

(assert (= (and d!19944 (not res!18830)) b!39311))

(declare-fun m!40481 () Bool)

(assert (=> d!19944 m!40481))

(assert (=> b!39301 d!19944))

(push 1)

(assert (not d!19936))

(assert (not b!39310))

(assert (not d!19940))

(assert (not d!19938))

(assert (not d!19944))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


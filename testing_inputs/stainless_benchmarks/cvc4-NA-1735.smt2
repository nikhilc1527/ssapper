; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11946 () Bool)

(assert start!11946)

(declare-fun res!47355 () Bool)

(declare-fun e!49291 () Bool)

(assert (=> start!11946 (=> (not res!47355) (not e!49291))))

(declare-datatypes () ((Monoid!34 (AdditiveMonoid!22) (MonoidExt!28 (__x!286 Int)))))

(declare-fun thiss!10262 () Monoid!34)

(assert (=> start!11946 (= res!47355 (not (is-AdditiveMonoid!22 thiss!10262)))))

(assert (=> start!11946 e!49291))

(assert (=> start!11946 true))

(declare-fun b!90317 () Bool)

(declare-fun res!47356 () Bool)

(assert (=> b!90317 (=> (not res!47356) (not e!49291))))

(declare-datatypes () ((Nat!294 (Succ!268 (prev!842 Nat!294)) (Zero!274))))

(declare-fun x!31833 () Nat!294)

(declare-fun res!47289 () Bool)

(declare-fun law_leftIdentity!14 (Monoid!34 Nat!294) Bool)

(assert (=> b!90317 (= res!47356 (= res!47289 (law_leftIdentity!14 thiss!10262 x!31833)))))

(declare-fun b!90318 () Bool)

(declare-fun e!49292 () Bool)

(assert (=> b!90318 (= e!49291 e!49292)))

(declare-fun res!47354 () Bool)

(assert (=> b!90318 (=> res!47354 e!49292)))

(assert (=> b!90318 (= res!47354 (not res!47289))))

(declare-fun b!90319 () Bool)

(declare-fun append!6 (Monoid!34 Nat!294 Nat!294) Nat!294)

(declare-fun empty!11 (Monoid!34) Nat!294)

(assert (=> b!90319 (= e!49292 (not (= (append!6 thiss!10262 (empty!11 thiss!10262) x!31833) x!31833)))))

(assert (= (and start!11946 res!47355) b!90317))

(assert (= (and b!90317 res!47356) b!90318))

(assert (= (and b!90318 (not res!47354)) b!90319))

(declare-fun m!86138 () Bool)

(assert (=> b!90317 m!86138))

(declare-fun m!86140 () Bool)

(assert (=> b!90319 m!86140))

(assert (=> b!90319 m!86140))

(declare-fun m!86142 () Bool)

(assert (=> b!90319 m!86142))

(push 1)

(assert (not b!90317))

(assert (not b!90319))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59523 () Bool)

(declare-fun e!49295 () Bool)

(assert (=> d!59523 e!49295))

(declare-fun res!47362 () Bool)

(assert (=> d!59523 (=> (not res!47362) (not e!49295))))

(declare-fun res!47361 () Bool)

(assert (=> d!59523 (= res!47362 res!47361)))

(assert (=> d!59523 true))

(assert (=> d!59523 (= (law_leftIdentity!14 thiss!10262 x!31833) res!47361)))

(declare-fun b!90322 () Bool)

(assert (=> b!90322 (= e!49295 (= (append!6 thiss!10262 (empty!11 thiss!10262) x!31833) x!31833))))

(assert (= (and d!59523 res!47362) b!90322))

(assert (=> b!90322 m!86140))

(assert (=> b!90322 m!86140))

(assert (=> b!90322 m!86142))

(assert (=> b!90317 d!59523))

(declare-fun d!59525 () Bool)

(declare-fun c!22068 () Bool)

(assert (=> d!59525 (= c!22068 (is-AdditiveMonoid!22 thiss!10262))))

(declare-fun e!49298 () Nat!294)

(assert (=> d!59525 (= (append!6 thiss!10262 (empty!11 thiss!10262) x!31833) e!49298)))

(declare-fun b!90327 () Bool)

(declare-fun append!7 (Monoid!34 Nat!294 Nat!294) Nat!294)

(assert (=> b!90327 (= e!49298 (append!7 thiss!10262 (empty!11 thiss!10262) x!31833))))

(declare-fun b!90328 () Bool)

(declare-fun append!169 (Monoid!34 Nat!294 Nat!294) Nat!294)

(assert (=> b!90328 (= e!49298 (append!169 thiss!10262 (empty!11 thiss!10262) x!31833))))

(assert (= (and d!59525 c!22068) b!90327))

(assert (= (and d!59525 (not c!22068)) b!90328))

(assert (=> b!90327 m!86140))

(declare-fun m!86144 () Bool)

(assert (=> b!90327 m!86144))

(assert (=> b!90328 m!86140))

(declare-fun m!86146 () Bool)

(assert (=> b!90328 m!86146))

(assert (=> b!90319 d!59525))

(declare-fun d!59527 () Bool)

(declare-fun c!22071 () Bool)

(assert (=> d!59527 (= c!22071 (is-AdditiveMonoid!22 thiss!10262))))

(declare-fun e!49301 () Nat!294)

(assert (=> d!59527 (= (empty!11 thiss!10262) e!49301)))

(declare-fun b!90333 () Bool)

(declare-fun empty!12 (Monoid!34) Nat!294)

(assert (=> b!90333 (= e!49301 (empty!12 thiss!10262))))

(declare-fun b!90334 () Bool)

(declare-fun empty!154 (Monoid!34) Nat!294)

(assert (=> b!90334 (= e!49301 (empty!154 thiss!10262))))

(assert (= (and d!59527 c!22071) b!90333))

(assert (= (and d!59527 (not c!22071)) b!90334))

(declare-fun m!86148 () Bool)

(assert (=> b!90333 m!86148))

(declare-fun m!86150 () Bool)

(assert (=> b!90334 m!86150))

(assert (=> b!90319 d!59527))

(push 1)

(assert (not b!90327))

(assert (not b!90333))

(assert (not b!90328))

(assert (not b!90334))

(assert (not b!90322))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


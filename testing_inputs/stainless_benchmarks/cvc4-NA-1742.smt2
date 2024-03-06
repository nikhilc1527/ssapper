; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12002 () Bool)

(assert start!12002)

(declare-fun res!47424 () Bool)

(declare-fun e!49378 () Bool)

(assert (=> start!12002 (=> (not res!47424) (not e!49378))))

(declare-datatypes () ((Monoid!39 (AdditiveMonoid!27) (MonoidExt!33 (__x!291 Int)))))

(declare-fun thiss!10239 () Monoid!39)

(assert (=> start!12002 (= res!47424 (not (is-AdditiveMonoid!27 thiss!10239)))))

(assert (=> start!12002 e!49378))

(assert (=> start!12002 true))

(declare-fun b!90452 () Bool)

(declare-fun res!47425 () Bool)

(assert (=> b!90452 (=> (not res!47425) (not e!49378))))

(declare-datatypes () ((Nat!301 (Succ!275 (prev!849 Nat!301)) (Zero!281))))

(declare-fun x!31810 () Nat!301)

(declare-fun res!47286 () Bool)

(declare-fun y!2171 () Nat!301)

(declare-fun z!282 () Nat!301)

(declare-fun law_associativity!15 (Monoid!39 Nat!301 Nat!301 Nat!301) Bool)

(assert (=> b!90452 (= res!47425 (= res!47286 (law_associativity!15 thiss!10239 x!31810 y!2171 z!282)))))

(declare-fun b!90453 () Bool)

(declare-fun e!49379 () Bool)

(assert (=> b!90453 (= e!49378 e!49379)))

(declare-fun res!47426 () Bool)

(assert (=> b!90453 (=> res!47426 e!49379)))

(assert (=> b!90453 (= res!47426 (not res!47286))))

(declare-fun b!90454 () Bool)

(declare-fun append!6 (Monoid!39 Nat!301 Nat!301) Nat!301)

(assert (=> b!90454 (= e!49379 (not (= (append!6 thiss!10239 x!31810 (append!6 thiss!10239 y!2171 z!282)) (append!6 thiss!10239 (append!6 thiss!10239 x!31810 y!2171) z!282))))))

(assert (= (and start!12002 res!47424) b!90452))

(assert (= (and b!90452 res!47425) b!90453))

(assert (= (and b!90453 (not res!47426)) b!90454))

(declare-fun m!86274 () Bool)

(assert (=> b!90452 m!86274))

(declare-fun m!86276 () Bool)

(assert (=> b!90454 m!86276))

(assert (=> b!90454 m!86276))

(declare-fun m!86278 () Bool)

(assert (=> b!90454 m!86278))

(declare-fun m!86280 () Bool)

(assert (=> b!90454 m!86280))

(assert (=> b!90454 m!86280))

(declare-fun m!86282 () Bool)

(assert (=> b!90454 m!86282))

(push 1)

(assert (not b!90452))

(assert (not b!90454))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59589 () Bool)

(declare-fun e!49382 () Bool)

(assert (=> d!59589 e!49382))

(declare-fun res!47432 () Bool)

(assert (=> d!59589 (=> (not res!47432) (not e!49382))))

(declare-fun res!47431 () Bool)

(assert (=> d!59589 (= res!47432 res!47431)))

(assert (=> d!59589 true))

(assert (=> d!59589 (= (law_associativity!15 thiss!10239 x!31810 y!2171 z!282) res!47431)))

(declare-fun b!90457 () Bool)

(assert (=> b!90457 (= e!49382 (= (append!6 thiss!10239 x!31810 (append!6 thiss!10239 y!2171 z!282)) (append!6 thiss!10239 (append!6 thiss!10239 x!31810 y!2171) z!282)))))

(assert (= (and d!59589 res!47432) b!90457))

(assert (=> b!90457 m!86276))

(assert (=> b!90457 m!86276))

(assert (=> b!90457 m!86278))

(assert (=> b!90457 m!86280))

(assert (=> b!90457 m!86280))

(assert (=> b!90457 m!86282))

(assert (=> b!90452 d!59589))

(declare-fun d!59591 () Bool)

(declare-fun c!22107 () Bool)

(assert (=> d!59591 (= c!22107 (is-AdditiveMonoid!27 thiss!10239))))

(declare-fun e!49385 () Nat!301)

(assert (=> d!59591 (= (append!6 thiss!10239 x!31810 (append!6 thiss!10239 y!2171 z!282)) e!49385)))

(declare-fun b!90462 () Bool)

(declare-fun append!7 (Monoid!39 Nat!301 Nat!301) Nat!301)

(assert (=> b!90462 (= e!49385 (append!7 thiss!10239 x!31810 (append!6 thiss!10239 y!2171 z!282)))))

(declare-fun b!90463 () Bool)

(declare-fun append!169 (Monoid!39 Nat!301 Nat!301) Nat!301)

(assert (=> b!90463 (= e!49385 (append!169 thiss!10239 x!31810 (append!6 thiss!10239 y!2171 z!282)))))

(assert (= (and d!59591 c!22107) b!90462))

(assert (= (and d!59591 (not c!22107)) b!90463))

(assert (=> b!90462 m!86276))

(declare-fun m!86284 () Bool)

(assert (=> b!90462 m!86284))

(assert (=> b!90463 m!86276))

(declare-fun m!86286 () Bool)

(assert (=> b!90463 m!86286))

(assert (=> b!90454 d!59591))

(declare-fun d!59593 () Bool)

(declare-fun c!22108 () Bool)

(assert (=> d!59593 (= c!22108 (is-AdditiveMonoid!27 thiss!10239))))

(declare-fun e!49386 () Nat!301)

(assert (=> d!59593 (= (append!6 thiss!10239 y!2171 z!282) e!49386)))

(declare-fun b!90464 () Bool)

(assert (=> b!90464 (= e!49386 (append!7 thiss!10239 y!2171 z!282))))

(declare-fun b!90465 () Bool)

(assert (=> b!90465 (= e!49386 (append!169 thiss!10239 y!2171 z!282))))

(assert (= (and d!59593 c!22108) b!90464))

(assert (= (and d!59593 (not c!22108)) b!90465))

(declare-fun m!86288 () Bool)

(assert (=> b!90464 m!86288))

(declare-fun m!86290 () Bool)

(assert (=> b!90465 m!86290))

(assert (=> b!90454 d!59593))

(declare-fun d!59595 () Bool)

(declare-fun c!22109 () Bool)

(assert (=> d!59595 (= c!22109 (is-AdditiveMonoid!27 thiss!10239))))

(declare-fun e!49387 () Nat!301)

(assert (=> d!59595 (= (append!6 thiss!10239 (append!6 thiss!10239 x!31810 y!2171) z!282) e!49387)))

(declare-fun b!90466 () Bool)

(assert (=> b!90466 (= e!49387 (append!7 thiss!10239 (append!6 thiss!10239 x!31810 y!2171) z!282))))

(declare-fun b!90467 () Bool)

(assert (=> b!90467 (= e!49387 (append!169 thiss!10239 (append!6 thiss!10239 x!31810 y!2171) z!282))))

(assert (= (and d!59595 c!22109) b!90466))

(assert (= (and d!59595 (not c!22109)) b!90467))

(assert (=> b!90466 m!86280))

(declare-fun m!86292 () Bool)

(assert (=> b!90466 m!86292))

(assert (=> b!90467 m!86280))

(declare-fun m!86294 () Bool)

(assert (=> b!90467 m!86294))

(assert (=> b!90454 d!59595))

(declare-fun d!59597 () Bool)

(declare-fun c!22110 () Bool)

(assert (=> d!59597 (= c!22110 (is-AdditiveMonoid!27 thiss!10239))))

(declare-fun e!49388 () Nat!301)

(assert (=> d!59597 (= (append!6 thiss!10239 x!31810 y!2171) e!49388)))

(declare-fun b!90468 () Bool)

(assert (=> b!90468 (= e!49388 (append!7 thiss!10239 x!31810 y!2171))))

(declare-fun b!90469 () Bool)

(assert (=> b!90469 (= e!49388 (append!169 thiss!10239 x!31810 y!2171))))

(assert (= (and d!59597 c!22110) b!90468))

(assert (= (and d!59597 (not c!22110)) b!90469))

(declare-fun m!86296 () Bool)

(assert (=> b!90468 m!86296))

(declare-fun m!86298 () Bool)

(assert (=> b!90469 m!86298))

(assert (=> b!90454 d!59597))

(push 1)

(assert (not b!90465))

(assert (not b!90457))

(assert (not b!90469))

(assert (not b!90462))

(assert (not b!90468))

(assert (not b!90466))

(assert (not b!90463))

(assert (not b!90464))

(assert (not b!90467))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


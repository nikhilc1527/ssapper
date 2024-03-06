; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12318 () Bool)

(assert start!12318)

(declare-fun res!48026 () Bool)

(declare-fun e!50036 () Bool)

(assert (=> start!12318 (=> (not res!48026) (not e!50036))))

(declare-datatypes () ((Monoid!52 (MonoidExt!46 (__x!306 Int)) (WrongProductMonoid!9) (WrongAdditiveMonoid!9))))

(declare-fun thiss!10725 () Monoid!52)

(assert (=> start!12318 (= res!48026 (and (not (is-MonoidExt!46 thiss!10725)) (not (is-WrongProductMonoid!9 thiss!10725))))))

(assert (=> start!12318 e!50036))

(assert (=> start!12318 true))

(declare-fun b!91438 () Bool)

(declare-fun res!48027 () Bool)

(assert (=> b!91438 (=> (not res!48027) (not e!50036))))

(declare-fun res!47957 () Bool)

(declare-fun x!33248 () Int)

(declare-fun law_rightIdentity!17 (Monoid!52 Int) Bool)

(assert (=> b!91438 (= res!48027 (= res!47957 (law_rightIdentity!17 thiss!10725 x!33248)))))

(declare-fun b!91439 () Bool)

(declare-fun e!50037 () Bool)

(assert (=> b!91439 (= e!50036 e!50037)))

(declare-fun res!48025 () Bool)

(assert (=> b!91439 (=> res!48025 e!50037)))

(assert (=> b!91439 (= res!48025 (not res!47957))))

(declare-fun b!91440 () Bool)

(declare-fun append!28 (Monoid!52 Int Int) Int)

(declare-fun empty!37 (Monoid!52) Int)

(assert (=> b!91440 (= e!50037 (not (= (append!28 thiss!10725 x!33248 (empty!37 thiss!10725)) x!33248)))))

(assert (= (and start!12318 res!48026) b!91438))

(assert (= (and b!91438 res!48027) b!91439))

(assert (= (and b!91439 (not res!48025)) b!91440))

(declare-fun m!87194 () Bool)

(assert (=> b!91438 m!87194))

(declare-fun m!87196 () Bool)

(assert (=> b!91440 m!87196))

(assert (=> b!91440 m!87196))

(declare-fun m!87198 () Bool)

(assert (=> b!91440 m!87198))

(push 1)

(assert (not b!91438))

(assert (not b!91440))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60086 () Bool)

(assert (=> d!60086 (= (append!28 thiss!10725 x!33248 (empty!37 thiss!10725)) x!33248)))

(assert (=> d!60086 (= (law_rightIdentity!17 thiss!10725 x!33248) true)))

(declare-fun bs!41896 () Bool)

(assert (= bs!41896 d!60086))

(assert (=> bs!41896 m!87196))

(assert (=> bs!41896 m!87196))

(assert (=> bs!41896 m!87198))

(assert (=> b!91438 d!60086))

(declare-fun d!60088 () Bool)

(declare-fun c!22271 () Bool)

(assert (=> d!60088 (= c!22271 (is-MonoidExt!46 thiss!10725))))

(declare-fun e!50042 () Int)

(assert (=> d!60088 (= (append!28 thiss!10725 x!33248 (empty!37 thiss!10725)) e!50042)))

(declare-fun b!91449 () Bool)

(declare-fun append!170 (Monoid!52 Int Int) Int)

(assert (=> b!91449 (= e!50042 (append!170 thiss!10725 x!33248 (empty!37 thiss!10725)))))

(declare-fun b!91452 () Bool)

(declare-fun e!50043 () Int)

(declare-fun append!30 (Monoid!52 Int Int) Int)

(assert (=> b!91452 (= e!50043 (append!30 thiss!10725 x!33248 (empty!37 thiss!10725)))))

(declare-fun b!91450 () Bool)

(assert (=> b!91450 (= e!50042 e!50043)))

(declare-fun c!22272 () Bool)

(assert (=> b!91450 (= c!22272 (is-WrongProductMonoid!9 thiss!10725))))

(declare-fun b!91451 () Bool)

(declare-fun append!29 (Monoid!52 Int Int) Int)

(assert (=> b!91451 (= e!50043 (append!29 thiss!10725 x!33248 (empty!37 thiss!10725)))))

(assert (= (and b!91450 c!22272) b!91451))

(assert (= (and b!91450 (not c!22272)) b!91452))

(assert (= (and d!60088 c!22271) b!91449))

(assert (= (and d!60088 (not c!22271)) b!91450))

(assert (=> b!91449 m!87196))

(declare-fun m!87200 () Bool)

(assert (=> b!91449 m!87200))

(assert (=> b!91452 m!87196))

(declare-fun m!87202 () Bool)

(assert (=> b!91452 m!87202))

(assert (=> b!91451 m!87196))

(declare-fun m!87204 () Bool)

(assert (=> b!91451 m!87204))

(assert (=> b!91440 d!60088))

(declare-fun b!91462 () Bool)

(declare-fun e!50048 () Int)

(declare-fun e!50049 () Int)

(assert (=> b!91462 (= e!50048 e!50049)))

(declare-fun c!22278 () Bool)

(assert (=> b!91462 (= c!22278 (is-WrongProductMonoid!9 thiss!10725))))

(declare-fun b!91463 () Bool)

(declare-fun empty!38 (Monoid!52) Int)

(assert (=> b!91463 (= e!50049 (empty!38 thiss!10725))))

(declare-fun b!91464 () Bool)

(declare-fun empty!39 (Monoid!52) Int)

(assert (=> b!91464 (= e!50049 (empty!39 thiss!10725))))

(declare-fun b!91461 () Bool)

(declare-fun empty!165 (Monoid!52) Int)

(assert (=> b!91461 (= e!50048 (empty!165 thiss!10725))))

(declare-fun d!60090 () Bool)

(declare-fun c!22277 () Bool)

(assert (=> d!60090 (= c!22277 (is-MonoidExt!46 thiss!10725))))

(assert (=> d!60090 (= (empty!37 thiss!10725) e!50048)))

(assert (= (and b!91462 c!22278) b!91463))

(assert (= (and b!91462 (not c!22278)) b!91464))

(assert (= (and d!60090 c!22277) b!91461))

(assert (= (and d!60090 (not c!22277)) b!91462))

(declare-fun m!87206 () Bool)

(assert (=> b!91463 m!87206))

(declare-fun m!87208 () Bool)

(assert (=> b!91464 m!87208))

(declare-fun m!87210 () Bool)

(assert (=> b!91461 m!87210))

(assert (=> b!91440 d!60090))

(push 1)

(assert (not b!91449))

(assert (not b!91452))

(assert (not b!91451))

(assert (not d!60086))

(assert (not b!91461))

(assert (not b!91463))

(assert (not b!91464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


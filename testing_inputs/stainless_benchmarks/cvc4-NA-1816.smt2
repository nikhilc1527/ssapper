; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12302 () Bool)

(assert start!12302)

(declare-fun res!48001 () Bool)

(declare-fun e!49997 () Bool)

(assert (=> start!12302 (=> (not res!48001) (not e!49997))))

(declare-datatypes () ((Monoid!50 (MonoidExt!44 (__x!304 Int)) (WrongProductMonoid!7) (WrongAdditiveMonoid!7))))

(declare-fun thiss!10725 () Monoid!50)

(assert (=> start!12302 (= res!48001 (is-MonoidExt!44 thiss!10725))))

(assert (=> start!12302 e!49997))

(assert (=> start!12302 true))

(declare-fun b!91369 () Bool)

(declare-fun res!48000 () Bool)

(assert (=> b!91369 (=> (not res!48000) (not e!49997))))

(declare-fun res!47953 () Bool)

(declare-fun x!33248 () Int)

(declare-fun law_rightIdentity!18 (Monoid!50 Int) Bool)

(assert (=> b!91369 (= res!48000 (= res!47953 (law_rightIdentity!18 thiss!10725 x!33248)))))

(declare-fun b!91370 () Bool)

(declare-fun e!49998 () Bool)

(assert (=> b!91370 (= e!49997 e!49998)))

(declare-fun res!48002 () Bool)

(assert (=> b!91370 (=> res!48002 e!49998)))

(assert (=> b!91370 (= res!48002 (not res!47953))))

(declare-fun b!91371 () Bool)

(declare-fun append!28 (Monoid!50 Int Int) Int)

(declare-fun empty!37 (Monoid!50) Int)

(assert (=> b!91371 (= e!49998 (not (= (append!28 thiss!10725 x!33248 (empty!37 thiss!10725)) x!33248)))))

(assert (= (and start!12302 res!48001) b!91369))

(assert (= (and b!91369 res!48000) b!91370))

(assert (= (and b!91370 (not res!48002)) b!91371))

(declare-fun m!87158 () Bool)

(assert (=> b!91369 m!87158))

(declare-fun m!87160 () Bool)

(assert (=> b!91371 m!87160))

(assert (=> b!91371 m!87160))

(declare-fun m!87162 () Bool)

(assert (=> b!91371 m!87162))

(push 1)

(assert (not b!91369))

(assert (not b!91371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60074 () Bool)

(declare-fun e!50001 () Bool)

(assert (=> d!60074 e!50001))

(declare-fun res!48008 () Bool)

(assert (=> d!60074 (=> (not res!48008) (not e!50001))))

(declare-fun res!48007 () Bool)

(assert (=> d!60074 (= res!48008 res!48007)))

(assert (=> d!60074 true))

(assert (=> d!60074 (= (law_rightIdentity!18 thiss!10725 x!33248) res!48007)))

(declare-fun b!91374 () Bool)

(assert (=> b!91374 (= e!50001 (= (append!28 thiss!10725 x!33248 (empty!37 thiss!10725)) x!33248))))

(assert (= (and d!60074 res!48008) b!91374))

(assert (=> b!91374 m!87160))

(assert (=> b!91374 m!87160))

(assert (=> b!91374 m!87162))

(assert (=> b!91369 d!60074))

(declare-fun b!91386 () Bool)

(declare-fun e!50007 () Int)

(declare-fun append!30 (Monoid!50 Int Int) Int)

(assert (=> b!91386 (= e!50007 (append!30 thiss!10725 x!33248 (empty!37 thiss!10725)))))

(declare-fun b!91383 () Bool)

(declare-fun e!50006 () Int)

(declare-fun append!170 (Monoid!50 Int Int) Int)

(assert (=> b!91383 (= e!50006 (append!170 thiss!10725 x!33248 (empty!37 thiss!10725)))))

(declare-fun b!91385 () Bool)

(declare-fun append!29 (Monoid!50 Int Int) Int)

(assert (=> b!91385 (= e!50007 (append!29 thiss!10725 x!33248 (empty!37 thiss!10725)))))

(declare-fun b!91384 () Bool)

(assert (=> b!91384 (= e!50006 e!50007)))

(declare-fun c!22248 () Bool)

(assert (=> b!91384 (= c!22248 (is-WrongProductMonoid!7 thiss!10725))))

(declare-fun d!60076 () Bool)

(declare-fun c!22247 () Bool)

(assert (=> d!60076 (= c!22247 (is-MonoidExt!44 thiss!10725))))

(assert (=> d!60076 (= (append!28 thiss!10725 x!33248 (empty!37 thiss!10725)) e!50006)))

(assert (= (and b!91384 c!22248) b!91385))

(assert (= (and b!91384 (not c!22248)) b!91386))

(assert (= (and d!60076 c!22247) b!91383))

(assert (= (and d!60076 (not c!22247)) b!91384))

(assert (=> b!91386 m!87160))

(declare-fun m!87164 () Bool)

(assert (=> b!91386 m!87164))

(assert (=> b!91383 m!87160))

(declare-fun m!87166 () Bool)

(assert (=> b!91383 m!87166))

(assert (=> b!91385 m!87160))

(declare-fun m!87168 () Bool)

(assert (=> b!91385 m!87168))

(assert (=> b!91371 d!60076))

(declare-fun b!91396 () Bool)

(declare-fun e!50012 () Int)

(declare-fun e!50013 () Int)

(assert (=> b!91396 (= e!50012 e!50013)))

(declare-fun c!22254 () Bool)

(assert (=> b!91396 (= c!22254 (is-WrongProductMonoid!7 thiss!10725))))

(declare-fun b!91398 () Bool)

(declare-fun empty!39 (Monoid!50) Int)

(assert (=> b!91398 (= e!50013 (empty!39 thiss!10725))))

(declare-fun b!91397 () Bool)

(declare-fun empty!38 (Monoid!50) Int)

(assert (=> b!91397 (= e!50013 (empty!38 thiss!10725))))

(declare-fun b!91395 () Bool)

(declare-fun empty!165 (Monoid!50) Int)

(assert (=> b!91395 (= e!50012 (empty!165 thiss!10725))))

(declare-fun d!60078 () Bool)

(declare-fun c!22253 () Bool)

(assert (=> d!60078 (= c!22253 (is-MonoidExt!44 thiss!10725))))

(assert (=> d!60078 (= (empty!37 thiss!10725) e!50012)))

(assert (= (and b!91396 c!22254) b!91397))

(assert (= (and b!91396 (not c!22254)) b!91398))

(assert (= (and d!60078 c!22253) b!91395))

(assert (= (and d!60078 (not c!22253)) b!91396))

(declare-fun m!87170 () Bool)

(assert (=> b!91398 m!87170))

(declare-fun m!87172 () Bool)

(assert (=> b!91397 m!87172))

(declare-fun m!87174 () Bool)

(assert (=> b!91395 m!87174))

(assert (=> b!91371 d!60078))

(push 1)

(assert (not b!91383))

(assert (not b!91397))

(assert (not b!91398))

(assert (not b!91374))

(assert (not b!91395))

(assert (not b!91385))

(assert (not b!91386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


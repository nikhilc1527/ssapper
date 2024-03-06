; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12344 () Bool)

(assert start!12344)

(declare-fun res!48045 () Bool)

(declare-fun e!50067 () Bool)

(assert (=> start!12344 (=> (not res!48045) (not e!50067))))

(declare-datatypes () ((Monoid!54 (MonoidExt!48 (__x!308 Int)) (WrongProductMonoid!11) (WrongAdditiveMonoid!11))))

(declare-fun thiss!10664 () Monoid!54)

(declare-fun x!33204 () Int)

(declare-fun x!33205 () Int)

(declare-fun thiss!10665 () Monoid!54)

(declare-fun res!47948 () Bool)

(assert (=> start!12344 (= res!48045 (and (is-WrongProductMonoid!11 thiss!10664) (= res!47948 true) (= thiss!10665 thiss!10664) (= x!33205 x!33204)))))

(assert (=> start!12344 e!50067))

(assert (=> start!12344 true))

(declare-fun b!91499 () Bool)

(declare-fun res!48046 () Bool)

(assert (=> b!91499 (=> (not res!48046) (not e!50067))))

(declare-fun inlined!7071 () Bool)

(declare-fun append!28 (Monoid!54 Int Int) Int)

(declare-fun empty!37 (Monoid!54) Int)

(assert (=> b!91499 (= res!48046 (= inlined!7071 (= (append!28 thiss!10665 x!33205 (empty!37 thiss!10665)) x!33205)))))

(declare-fun b!91500 () Bool)

(assert (=> b!91500 (= e!50067 (not inlined!7071))))

(assert (= (and start!12344 res!48045) b!91499))

(assert (= (and b!91499 res!48046) b!91500))

(declare-fun m!87228 () Bool)

(assert (=> b!91499 m!87228))

(assert (=> b!91499 m!87228))

(declare-fun m!87230 () Bool)

(assert (=> b!91499 m!87230))

(push 1)

(assert (not b!91499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60108 () Bool)

(declare-fun c!22295 () Bool)

(assert (=> d!60108 (= c!22295 (is-MonoidExt!48 thiss!10665))))

(declare-fun e!50072 () Int)

(assert (=> d!60108 (= (append!28 thiss!10665 x!33205 (empty!37 thiss!10665)) e!50072)))

(declare-fun b!91510 () Bool)

(declare-fun e!50073 () Int)

(assert (=> b!91510 (= e!50072 e!50073)))

(declare-fun c!22296 () Bool)

(assert (=> b!91510 (= c!22296 (is-WrongProductMonoid!11 thiss!10665))))

(declare-fun b!91512 () Bool)

(declare-fun append!30 (Monoid!54 Int Int) Int)

(assert (=> b!91512 (= e!50073 (append!30 thiss!10665 x!33205 (empty!37 thiss!10665)))))

(declare-fun b!91509 () Bool)

(declare-fun append!170 (Monoid!54 Int Int) Int)

(assert (=> b!91509 (= e!50072 (append!170 thiss!10665 x!33205 (empty!37 thiss!10665)))))

(declare-fun b!91511 () Bool)

(declare-fun append!29 (Monoid!54 Int Int) Int)

(assert (=> b!91511 (= e!50073 (append!29 thiss!10665 x!33205 (empty!37 thiss!10665)))))

(assert (= (and b!91510 c!22296) b!91511))

(assert (= (and b!91510 (not c!22296)) b!91512))

(assert (= (and d!60108 c!22295) b!91509))

(assert (= (and d!60108 (not c!22295)) b!91510))

(assert (=> b!91512 m!87228))

(declare-fun m!87232 () Bool)

(assert (=> b!91512 m!87232))

(assert (=> b!91509 m!87228))

(declare-fun m!87234 () Bool)

(assert (=> b!91509 m!87234))

(assert (=> b!91511 m!87228))

(declare-fun m!87236 () Bool)

(assert (=> b!91511 m!87236))

(assert (=> b!91499 d!60108))

(declare-fun b!91523 () Bool)

(declare-fun e!50079 () Int)

(declare-fun empty!38 (Monoid!54) Int)

(assert (=> b!91523 (= e!50079 (empty!38 thiss!10665))))

(declare-fun b!91522 () Bool)

(declare-fun e!50078 () Int)

(assert (=> b!91522 (= e!50078 e!50079)))

(declare-fun c!22302 () Bool)

(assert (=> b!91522 (= c!22302 (is-WrongProductMonoid!11 thiss!10665))))

(declare-fun b!91521 () Bool)

(declare-fun empty!165 (Monoid!54) Int)

(assert (=> b!91521 (= e!50078 (empty!165 thiss!10665))))

(declare-fun b!91524 () Bool)

(declare-fun empty!39 (Monoid!54) Int)

(assert (=> b!91524 (= e!50079 (empty!39 thiss!10665))))

(declare-fun d!60110 () Bool)

(declare-fun c!22301 () Bool)

(assert (=> d!60110 (= c!22301 (is-MonoidExt!48 thiss!10665))))

(assert (=> d!60110 (= (empty!37 thiss!10665) e!50078)))

(assert (= (and b!91522 c!22302) b!91523))

(assert (= (and b!91522 (not c!22302)) b!91524))

(assert (= (and d!60110 c!22301) b!91521))

(assert (= (and d!60110 (not c!22301)) b!91522))

(declare-fun m!87238 () Bool)

(assert (=> b!91523 m!87238))

(declare-fun m!87240 () Bool)

(assert (=> b!91521 m!87240))

(declare-fun m!87242 () Bool)

(assert (=> b!91524 m!87242))

(assert (=> b!91499 d!60110))

(push 1)

(assert (not b!91521))

(assert (not b!91512))

(assert (not b!91524))

(assert (not b!91509))

(assert (not b!91511))

(assert (not b!91523))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60112 () Bool)

(assert (=> d!60112 (= (empty!38 thiss!10665) 1)))

(assert (=> b!91523 d!60112))

(declare-fun d!60114 () Bool)

(assert (=> d!60114 true))

(assert (=> d!60114 true))

(declare-fun res!48049 () Int)

(assert (=> d!60114 (= (empty!165 thiss!10665) res!48049)))

(assert (=> b!91521 d!60114))

(declare-fun d!60116 () Bool)

(assert (=> d!60116 true))

(assert (=> d!60116 true))

(declare-fun res!48052 () Int)

(assert (=> d!60116 (= (append!170 thiss!10665 x!33205 (empty!37 thiss!10665)) res!48052)))

(assert (=> b!91509 d!60116))

(declare-fun d!60118 () Bool)

(assert (=> d!60118 (= (empty!39 thiss!10665) 0)))

(assert (=> b!91524 d!60118))

(declare-fun d!60120 () Bool)

(assert (=> d!60120 (= (append!30 thiss!10665 x!33205 (empty!37 thiss!10665)) (- x!33205 (empty!37 thiss!10665)))))

(assert (=> b!91512 d!60120))

(declare-fun d!60122 () Bool)

(assert (=> d!60122 (= (append!29 thiss!10665 x!33205 (empty!37 thiss!10665)) (+ x!33205 (empty!37 thiss!10665)))))

(assert (=> b!91511 d!60122))

(push 1)

(check-sat)

(get-model)

(pop 1)


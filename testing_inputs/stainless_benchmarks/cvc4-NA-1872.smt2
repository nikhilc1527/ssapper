; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12558 () Bool)

(assert start!12558)

(declare-fun b_free!7715 () Bool)

(declare-fun b_next!40105 () Bool)

(assert (=> start!12558 (= b_free!7715 (not b_next!40105))))

(declare-fun tp!18014 () Bool)

(declare-fun b_and!60909 () Bool)

(assert (=> start!12558 (= tp!18014 b_and!60909)))

(declare-fun b_free!7717 () Bool)

(declare-fun b_next!40107 () Bool)

(assert (=> start!12558 (= b_free!7717 (not b_next!40107))))

(declare-fun tp!18015 () Bool)

(declare-fun b_and!60911 () Bool)

(assert (=> start!12558 (= tp!18015 b_and!60911)))

(declare-fun b!92475 () Bool)

(assert (=> b!92475 true))

(declare-fun lambda!11139 () Int)

(declare-fun f2!7 () Int)

(declare-fun b_next!40109 () Bool)

(assert (=> start!12558 (= b_next!40105 (or (and b!92475 (= lambda!11139 f2!7)) b_next!40109))))

(declare-fun b_next!40111 () Bool)

(declare-fun f1!5 () Int)

(assert (=> start!12558 (= b_next!40107 (or (and b!92475 (= lambda!11139 f1!5)) b_next!40111))))

(declare-fun bs!41965 () Bool)

(declare-fun b!92476 () Bool)

(assert (= bs!41965 (and b!92476 b!92475)))

(declare-fun lambda!11140 () Int)

(declare-datatypes () ((Nat!308 (Zero!287) (Succ!281 (n!1870 Nat!308)))))

(declare-fun p!1112 () Nat!308)

(declare-fun a!1137 () Nat!308)

(assert (=> bs!41965 (= (= p!1112 a!1137) (= lambda!11140 lambda!11139))))

(assert (=> b!92476 true))

(declare-fun b_next!40113 () Bool)

(assert (=> start!12558 (= b_next!40109 (or (and b!92476 (= lambda!11140 f2!7)) b_next!40113))))

(declare-fun b_next!40115 () Bool)

(assert (=> start!12558 (= b_next!40111 (or (and b!92476 (= lambda!11140 f1!5)) b_next!40115))))

(declare-fun res!48648 () Bool)

(declare-fun e!50617 () Bool)

(assert (=> b!92475 (=> (not res!48648) (not e!50617))))

(assert (=> b!92475 (= res!48648 (= f1!5 lambda!11139))))

(declare-fun res!48647 () Bool)

(assert (=> b!92476 (=> (not res!48647) (not e!50617))))

(assert (=> b!92476 (= res!48647 (= f2!7 lambda!11140))))

(declare-fun b!92477 () Bool)

(declare-fun res!48649 () Bool)

(assert (=> b!92477 (=> (not res!48649) (not e!50617))))

(assert (=> b!92477 (= res!48649 (not (= f1!5 f2!7)))))

(declare-fun b!92478 () Bool)

(declare-fun res!48646 () Bool)

(assert (=> b!92478 (=> (not res!48646) (not e!50617))))

(declare-fun plusZero!0 (Nat!308) Bool)

(assert (=> b!92478 (= res!48646 (plusZero!0 a!1137))))

(declare-fun res!48650 () Bool)

(assert (=> start!12558 (=> (not res!48650) (not e!50617))))

(declare-fun plus!4 (Nat!308 Nat!308) Nat!308)

(assert (=> start!12558 (= res!48650 (= p!1112 (plus!4 a!1137 Zero!287)))))

(assert (=> start!12558 e!50617))

(assert (=> start!12558 true))

(assert (=> start!12558 tp!18014))

(assert (=> start!12558 tp!18015))

(declare-fun b!92479 () Bool)

(declare-fun y2!1 () Nat!308)

(declare-fun y1!6 () Nat!308)

(assert (=> b!92479 (= e!50617 (and (= y1!6 a!1137) (= y2!1 p!1112) (not (= y1!6 y2!1))))))

(assert (= (and start!12558 res!48650) b!92475))

(assert (= (and b!92475 res!48648) b!92476))

(assert (= (and b!92476 res!48647) b!92477))

(assert (= (and b!92477 res!48649) b!92478))

(assert (= (and b!92478 res!48646) b!92479))

(declare-fun m!88142 () Bool)

(assert (=> b!92478 m!88142))

(declare-fun m!88144 () Bool)

(assert (=> start!12558 m!88144))

(push 1)

(assert b_and!60911)

(assert b_and!60909)

(assert (not b_next!40113))

(assert (not start!12558))

(assert (not b_next!40115))

(assert (not b!92478))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60909)

(assert b_and!60911)

(assert (not b_next!40113))

(assert (not b_next!40115))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!92487 () Bool)

(declare-fun e!50620 () Bool)

(assert (=> b!92487 (= e!50620 (= (plus!4 a!1137 Zero!287) a!1137))))

(declare-fun lt!20894 () Bool)

(assert (=> b!92487 (= lt!20894 (plusZero!0 (n!1870 a!1137)))))

(declare-fun d!60616 () Bool)

(assert (=> d!60616 e!50620))

(declare-fun c!22520 () Bool)

(assert (=> d!60616 (= c!22520 (is-Zero!287 a!1137))))

(assert (=> d!60616 (= (plusZero!0 a!1137) true)))

(declare-fun b!92486 () Bool)

(assert (=> b!92486 (= e!50620 (= (plus!4 a!1137 Zero!287) a!1137))))

(assert (= (and d!60616 c!22520) b!92486))

(assert (= (and d!60616 (not c!22520)) b!92487))

(assert (=> b!92487 m!88144))

(declare-fun m!88146 () Bool)

(assert (=> b!92487 m!88146))

(assert (=> b!92486 m!88144))

(assert (=> b!92478 d!60616))

(declare-fun d!60618 () Bool)

(declare-fun c!22523 () Bool)

(assert (=> d!60618 (= c!22523 (is-Zero!287 a!1137))))

(declare-fun e!50623 () Nat!308)

(assert (=> d!60618 (= (plus!4 a!1137 Zero!287) e!50623)))

(declare-fun b!92493 () Bool)

(assert (=> b!92493 (= e!50623 Zero!287)))

(declare-fun b!92494 () Bool)

(assert (=> b!92494 (= e!50623 (Succ!281 (plus!4 (n!1870 a!1137) Zero!287)))))

(assert (= (and d!60618 c!22523) b!92493))

(assert (= (and d!60618 (not c!22523)) b!92494))

(declare-fun m!88148 () Bool)

(assert (=> b!92494 m!88148))

(assert (=> start!12558 d!60618))

(push 1)

(assert (not b!92494))

(assert b_and!60911)

(assert (not b!92487))

(assert b_and!60909)

(assert (not b!92486))

(assert (not b_next!40113))

(assert (not b_next!40115))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60909)

(assert b_and!60911)

(assert (not b_next!40113))

(assert (not b_next!40115))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10046 () Bool)

(assert start!10046)

(declare-fun res!35445 () Bool)

(declare-fun e!39232 () Bool)

(assert (=> start!10046 (=> (not res!35445) (not e!39232))))

(declare-fun res!34934 () Bool)

(declare-fun failed!1 () Bool)

(declare-datatypes () ((List!622 (Nil!580) (Cons!579 (head!989 Int) (tail!1010 List!622)))))

(declare-fun list!826 () List!622)

(declare-fun counter!32 () Int)

(assert (=> start!10046 (= res!35445 (and (or (>= counter!32 0) failed!1) (not (is-Cons!579 list!826)) (= res!34934 (and (not failed!1) (= counter!32 0))) (not failed!1)))))

(assert (=> start!10046 e!39232))

(assert (=> start!10046 true))

(declare-fun b!72588 () Bool)

(declare-fun balanced_nonEarly!0 (List!622 Int) Bool)

(assert (=> b!72588 (= e!39232 (not (= res!34934 (balanced_nonEarly!0 list!826 counter!32))))))

(assert (= (and start!10046 res!35445) b!72588))

(declare-fun m!72514 () Bool)

(assert (=> b!72588 m!72514))

(push 1)

(assert (not b!72588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!72597 () Bool)

(declare-fun e!39238 () Bool)

(declare-fun e!39237 () Bool)

(assert (=> b!72597 (= e!39238 e!39237)))

(declare-fun c!17491 () Bool)

(assert (=> b!72597 (= c!17491 (< counter!32 0))))

(declare-fun b!72599 () Bool)

(assert (=> b!72599 (= e!39237 (balanced_nonEarly!0 (tail!1010 list!826) counter!32))))

(declare-fun b!72598 () Bool)

(assert (=> b!72598 (= e!39238 (= counter!32 0))))

(declare-fun b!72600 () Bool)

(assert (=> b!72600 (= e!39237 (balanced_nonEarly!0 (tail!1010 list!826) (ite (= (head!989 list!826) 1) (+ counter!32 1) (ite (= (head!989 list!826) 2) (- counter!32 1) counter!32))))))

(declare-fun d!54641 () Bool)

(declare-fun lt!15397 () Bool)

(declare-fun balanced!0 (List!622 Int) Bool)

(assert (=> d!54641 (= lt!15397 (balanced!0 list!826 counter!32))))

(assert (=> d!54641 (= lt!15397 e!39238)))

(declare-fun c!17490 () Bool)

(assert (=> d!54641 (= c!17490 (is-Cons!579 list!826))))

(assert (=> d!54641 (= (balanced_nonEarly!0 list!826 counter!32) lt!15397)))

(assert (= (and b!72597 c!17491) b!72599))

(assert (= (and b!72597 (not c!17491)) b!72600))

(assert (= (and d!54641 c!17490) b!72597))

(assert (= (and d!54641 (not c!17490)) b!72598))

(declare-fun m!72516 () Bool)

(assert (=> b!72599 m!72516))

(declare-fun m!72518 () Bool)

(assert (=> b!72600 m!72518))

(declare-fun m!72520 () Bool)

(assert (=> d!54641 m!72520))

(assert (=> b!72588 d!54641))

(push 1)

(assert (not b!72599))

(assert (not b!72600))

(assert (not d!54641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


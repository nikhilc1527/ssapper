; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6820 () Bool)

(assert start!6820)

(declare-fun res!23233 () Bool)

(declare-fun e!26276 () Bool)

(assert (=> start!6820 (=> (not res!23233) (not e!26276))))

(declare-datatypes () ((Nat!254 (Zero!238) (Succ!235 (n!1391 Nat!254)))))

(declare-fun n1!178 () Nat!254)

(assert (=> start!6820 (= res!23233 (is-Zero!238 n1!178))))

(assert (=> start!6820 e!26276))

(assert (=> start!6820 true))

(declare-fun b!50618 () Bool)

(declare-fun res!23234 () Bool)

(assert (=> b!50618 (=> (not res!23234) (not e!26276))))

(declare-datatypes () ((Unit!808 (Unit!809))))

(declare-fun x$13!39 () Unit!808)

(declare-fun n2!189 () Nat!254)

(declare-fun plus_zero!0 (Nat!254) Unit!808)

(assert (=> b!50618 (= res!23234 (= x$13!39 (plus_zero!0 n2!189)))))

(declare-fun b!50619 () Bool)

(declare-fun +!5 (Nat!254 Nat!254) Nat!254)

(assert (=> b!50619 (= e!26276 (not (= (+!5 n1!178 n2!189) (+!5 n2!189 n1!178))))))

(assert (= (and start!6820 res!23233) b!50618))

(assert (= (and b!50618 res!23234) b!50619))

(declare-fun m!54243 () Bool)

(assert (=> b!50618 m!54243))

(declare-fun m!54245 () Bool)

(assert (=> b!50619 m!54245))

(declare-fun m!54247 () Bool)

(assert (=> b!50619 m!54247))

(push 1)

(assert (not b!50618))

(assert (not b!50619))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!50625 () Bool)

(declare-fun e!26279 () Unit!808)

(declare-fun Unit!810 () Unit!808)

(assert (=> b!50625 (= e!26279 Unit!810)))

(declare-fun lt!8865 () Unit!808)

(assert (=> b!50625 (= lt!8865 (plus_zero!0 (n!1391 n2!189)))))

(declare-fun d!43138 () Bool)

(assert (=> d!43138 (= (+!5 n2!189 Zero!238) n2!189)))

(declare-fun lt!8864 () Unit!808)

(assert (=> d!43138 (= lt!8864 e!26279)))

(declare-fun c!10727 () Bool)

(assert (=> d!43138 (= c!10727 (is-Zero!238 n2!189))))

(assert (=> d!43138 (= (plus_zero!0 n2!189) lt!8864)))

(declare-fun b!50624 () Bool)

(declare-fun Unit!811 () Unit!808)

(assert (=> b!50624 (= e!26279 Unit!811)))

(assert (= (and d!43138 c!10727) b!50624))

(assert (= (and d!43138 (not c!10727)) b!50625))

(declare-fun m!54249 () Bool)

(assert (=> b!50625 m!54249))

(declare-fun m!54251 () Bool)

(assert (=> d!43138 m!54251))

(assert (=> b!50618 d!43138))

(declare-fun d!43140 () Bool)

(declare-fun c!10730 () Bool)

(assert (=> d!43140 (= c!10730 (is-Zero!238 n1!178))))

(declare-fun e!26282 () Nat!254)

(assert (=> d!43140 (= (+!5 n1!178 n2!189) e!26282)))

(declare-fun b!50630 () Bool)

(assert (=> b!50630 (= e!26282 n2!189)))

(declare-fun b!50631 () Bool)

(assert (=> b!50631 (= e!26282 (Succ!235 (+!5 (n!1391 n1!178) n2!189)))))

(assert (= (and d!43140 c!10730) b!50630))

(assert (= (and d!43140 (not c!10730)) b!50631))

(declare-fun m!54253 () Bool)

(assert (=> b!50631 m!54253))

(assert (=> b!50619 d!43140))

(declare-fun d!43142 () Bool)

(declare-fun c!10731 () Bool)

(assert (=> d!43142 (= c!10731 (is-Zero!238 n2!189))))

(declare-fun e!26283 () Nat!254)

(assert (=> d!43142 (= (+!5 n2!189 n1!178) e!26283)))

(declare-fun b!50632 () Bool)

(assert (=> b!50632 (= e!26283 n1!178)))

(declare-fun b!50633 () Bool)

(assert (=> b!50633 (= e!26283 (Succ!235 (+!5 (n!1391 n2!189) n1!178)))))

(assert (= (and d!43142 c!10731) b!50632))

(assert (= (and d!43142 (not c!10731)) b!50633))

(declare-fun m!54255 () Bool)

(assert (=> b!50633 m!54255))

(assert (=> b!50619 d!43142))

(push 1)

(assert (not d!43138))

(assert (not b!50633))

(assert (not b!50631))

(assert (not b!50625))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


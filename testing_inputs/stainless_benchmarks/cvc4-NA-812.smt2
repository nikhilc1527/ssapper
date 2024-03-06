; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6146 () Bool)

(assert start!6146)

(declare-fun res!21526 () Bool)

(declare-fun e!23652 () Bool)

(assert (=> start!6146 (=> (not res!21526) (not e!23652))))

(declare-datatypes () ((Nat!173 (Zero!157) (Succ!154 (n!1305 Nat!173)))))

(declare-fun n1!354 () Nat!173)

(declare-fun n2!370 () Nat!173)

(declare-datatypes () ((Unit!550 (Unit!551))))

(declare-fun x$48!40 () Unit!550)

(declare-fun Unit!552 () Unit!550)

(assert (=> start!6146 (= res!21526 (and (or (not (is-Succ!154 n1!354)) (not (is-Succ!154 n2!370))) (= x$48!40 Unit!552)))))

(assert (=> start!6146 e!23652))

(assert (=> start!6146 true))

(declare-fun b!45575 () Bool)

(declare-fun <!2 (Nat!173 Nat!173) Bool)

(declare-fun <=!2 (Nat!173 Nat!173) Bool)

(assert (=> b!45575 (= e!23652 (not (= (<!2 n1!354 n2!370) (not (<=!2 n2!370 n1!354)))))))

(assert (= (and start!6146 res!21526) b!45575))

(declare-fun m!48601 () Bool)

(assert (=> b!45575 m!48601))

(declare-fun m!48603 () Bool)

(assert (=> b!45575 m!48603))

(push 1)

(assert (not b!45575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!32020 () Bool)

(declare-fun lt!8339 () Bool)

(declare-fun repr!0 (Nat!173) Int)

(assert (=> d!32020 (= lt!8339 (< (repr!0 n1!354) (repr!0 n2!370)))))

(declare-fun e!23655 () Bool)

(assert (=> d!32020 (= lt!8339 e!23655)))

(declare-fun c!9673 () Bool)

(assert (=> d!32020 (= c!9673 (and (is-Succ!154 n1!354) (is-Succ!154 n2!370)))))

(assert (=> d!32020 (= (<!2 n1!354 n2!370) lt!8339)))

(declare-fun b!45580 () Bool)

(assert (=> b!45580 (= e!23655 (<!2 (n!1305 n1!354) (n!1305 n2!370)))))

(declare-fun b!45581 () Bool)

(assert (=> b!45581 (= e!23655 (and (is-Zero!157 n1!354) (is-Succ!154 n2!370)))))

(assert (= (and d!32020 c!9673) b!45580))

(assert (= (and d!32020 (not c!9673)) b!45581))

(declare-fun m!48605 () Bool)

(assert (=> d!32020 m!48605))

(declare-fun m!48607 () Bool)

(assert (=> d!32020 m!48607))

(declare-fun m!48609 () Bool)

(assert (=> b!45580 m!48609))

(assert (=> b!45575 d!32020))

(declare-fun d!32022 () Bool)

(declare-fun res!21529 () Bool)

(declare-fun e!23658 () Bool)

(assert (=> d!32022 (=> res!21529 e!23658)))

(assert (=> d!32022 (= res!21529 (<!2 n2!370 n1!354))))

(assert (=> d!32022 (= (<=!2 n2!370 n1!354) e!23658)))

(declare-fun b!45584 () Bool)

(assert (=> b!45584 (= e!23658 (= n2!370 n1!354))))

(assert (= (and d!32022 (not res!21529)) b!45584))

(declare-fun m!48611 () Bool)

(assert (=> d!32022 m!48611))

(assert (=> b!45575 d!32022))

(push 1)

(assert (not b!45580))

(assert (not d!32022))

(assert (not d!32020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!32024 () Bool)

(declare-fun lt!8340 () Bool)

(assert (=> d!32024 (= lt!8340 (< (repr!0 (n!1305 n1!354)) (repr!0 (n!1305 n2!370))))))

(declare-fun e!23659 () Bool)

(assert (=> d!32024 (= lt!8340 e!23659)))

(declare-fun c!9674 () Bool)

(assert (=> d!32024 (= c!9674 (and (is-Succ!154 (n!1305 n1!354)) (is-Succ!154 (n!1305 n2!370))))))

(assert (=> d!32024 (= (<!2 (n!1305 n1!354) (n!1305 n2!370)) lt!8340)))

(declare-fun b!45585 () Bool)

(assert (=> b!45585 (= e!23659 (<!2 (n!1305 (n!1305 n1!354)) (n!1305 (n!1305 n2!370))))))

(declare-fun b!45586 () Bool)

(assert (=> b!45586 (= e!23659 (and (is-Zero!157 (n!1305 n1!354)) (is-Succ!154 (n!1305 n2!370))))))

(assert (= (and d!32024 c!9674) b!45585))

(assert (= (and d!32024 (not c!9674)) b!45586))

(declare-fun m!48613 () Bool)

(assert (=> d!32024 m!48613))

(declare-fun m!48615 () Bool)

(assert (=> d!32024 m!48615))

(declare-fun m!48617 () Bool)

(assert (=> b!45585 m!48617))

(assert (=> b!45580 d!32024))

(declare-fun d!32026 () Bool)

(declare-fun lt!8341 () Bool)

(assert (=> d!32026 (= lt!8341 (< (repr!0 n2!370) (repr!0 n1!354)))))

(declare-fun e!23660 () Bool)

(assert (=> d!32026 (= lt!8341 e!23660)))

(declare-fun c!9675 () Bool)

(assert (=> d!32026 (= c!9675 (and (is-Succ!154 n2!370) (is-Succ!154 n1!354)))))

(assert (=> d!32026 (= (<!2 n2!370 n1!354) lt!8341)))

(declare-fun b!45587 () Bool)

(assert (=> b!45587 (= e!23660 (<!2 (n!1305 n2!370) (n!1305 n1!354)))))

(declare-fun b!45588 () Bool)

(assert (=> b!45588 (= e!23660 (and (is-Zero!157 n2!370) (is-Succ!154 n1!354)))))

(assert (= (and d!32026 c!9675) b!45587))

(assert (= (and d!32026 (not c!9675)) b!45588))

(assert (=> d!32026 m!48607))

(assert (=> d!32026 m!48605))

(declare-fun m!48619 () Bool)

(assert (=> b!45587 m!48619))

(assert (=> d!32022 d!32026))

(declare-fun d!32028 () Bool)

(declare-fun lt!8344 () Int)

(assert (=> d!32028 (>= lt!8344 0)))

(declare-fun e!23663 () Int)

(assert (=> d!32028 (= lt!8344 e!23663)))

(declare-fun c!9678 () Bool)

(assert (=> d!32028 (= c!9678 (is-Zero!157 n1!354))))

(assert (=> d!32028 (= (repr!0 n1!354) lt!8344)))

(declare-fun b!45593 () Bool)

(assert (=> b!45593 (= e!23663 0)))

(declare-fun b!45594 () Bool)

(assert (=> b!45594 (= e!23663 (+ (repr!0 (n!1305 n1!354)) 1))))

(assert (= (and d!32028 c!9678) b!45593))

(assert (= (and d!32028 (not c!9678)) b!45594))

(assert (=> b!45594 m!48613))

(assert (=> d!32020 d!32028))

(declare-fun d!32030 () Bool)

(declare-fun lt!8345 () Int)

(assert (=> d!32030 (>= lt!8345 0)))

(declare-fun e!23664 () Int)

(assert (=> d!32030 (= lt!8345 e!23664)))

(declare-fun c!9679 () Bool)

(assert (=> d!32030 (= c!9679 (is-Zero!157 n2!370))))

(assert (=> d!32030 (= (repr!0 n2!370) lt!8345)))

(declare-fun b!45595 () Bool)

(assert (=> b!45595 (= e!23664 0)))

(declare-fun b!45596 () Bool)

(assert (=> b!45596 (= e!23664 (+ (repr!0 (n!1305 n2!370)) 1))))

(assert (= (and d!32030 c!9679) b!45595))

(assert (= (and d!32030 (not c!9679)) b!45596))

(assert (=> b!45596 m!48615))

(assert (=> d!32020 d!32030))

(push 1)

(assert (not d!32026))

(assert (not b!45596))

(assert (not d!32024))

(assert (not b!45587))

(assert (not b!45594))

(assert (not b!45585))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


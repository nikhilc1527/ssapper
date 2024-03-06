; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!144 () Bool)

(assert start!144)

(declare-fun b!738 () Bool)

(declare-fun res!584 () Bool)

(declare-fun e!536 () Bool)

(assert (=> b!738 (=> (not res!584) (not e!536))))

(declare-datatypes () ((Acc!8 (Acc!9 (checking!9 Int) (savings!9 Int)))))

(declare-fun a!304 () Acc!8)

(declare-fun notRed!0 (Acc!8) Bool)

(assert (=> b!738 (= res!584 (notRed!0 a!304))))

(declare-fun b!741 () Bool)

(declare-fun e!537 () Bool)

(declare-fun r!154 () Acc!8)

(declare-fun sameTotal!0 (Acc!8 Acc!8) Bool)

(assert (=> b!741 (= e!537 (not (sameTotal!0 a!304 r!154)))))

(declare-fun b!739 () Bool)

(declare-fun res!585 () Bool)

(assert (=> b!739 (=> (not res!585) (not e!536))))

(declare-fun x!1367 () Int)

(assert (=> b!739 (= res!585 (and (>= (checking!9 a!304) x!1367) (= r!154 (Acc!9 (- (checking!9 a!304) x!1367) (+ (savings!9 a!304) x!1367)))))))

(declare-fun b!740 () Bool)

(assert (=> b!740 (= e!536 e!537)))

(declare-fun res!586 () Bool)

(assert (=> b!740 (=> res!586 e!537)))

(assert (=> b!740 (= res!586 (not (notRed!0 r!154)))))

(declare-fun res!583 () Bool)

(assert (=> start!144 (=> (not res!583) (not e!536))))

(assert (=> start!144 (= res!583 (> x!1367 0))))

(assert (=> start!144 e!536))

(assert (=> start!144 true))

(assert (= (and start!144 res!583) b!738))

(assert (= (and b!738 res!584) b!739))

(assert (= (and b!739 res!585) b!740))

(assert (= (and b!740 (not res!586)) b!741))

(declare-fun m!507 () Bool)

(assert (=> b!738 m!507))

(declare-fun m!509 () Bool)

(assert (=> b!741 m!509))

(declare-fun m!511 () Bool)

(assert (=> b!740 m!511))

(push 1)

(assert (not b!741))

(assert (not b!738))

(assert (not b!740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!210 () Bool)

(assert (=> d!210 (= (sameTotal!0 a!304 r!154) (= (+ (checking!9 a!304) (savings!9 a!304)) (+ (checking!9 r!154) (savings!9 r!154))))))

(assert (=> b!741 d!210))

(declare-fun d!212 () Bool)

(assert (=> d!212 (= (notRed!0 a!304) (and (>= (checking!9 a!304) 0) (>= (savings!9 a!304) 0)))))

(assert (=> b!738 d!212))

(declare-fun d!214 () Bool)

(assert (=> d!214 (= (notRed!0 r!154) (and (>= (checking!9 r!154) 0) (>= (savings!9 r!154) 0)))))

(assert (=> b!740 d!214))

(push 1)

(check-sat)

(pop 1)


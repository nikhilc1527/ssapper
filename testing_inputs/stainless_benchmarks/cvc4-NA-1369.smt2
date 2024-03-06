; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9556 () Bool)

(assert start!9556)

(declare-fun res!34614 () Bool)

(declare-fun e!38215 () Bool)

(assert (=> start!9556 (=> (not res!34614) (not e!38215))))

(declare-datatypes () ((NatMonoid!5 (AdditiveMonoid!6) (NatMonoidExt!4 (__x!263 Int)))))

(declare-fun thiss!9195 () NatMonoid!5)

(assert (=> start!9556 (= res!34614 (not (is-AdditiveMonoid!6 thiss!9195)))))

(assert (=> start!9556 e!38215))

(assert (=> start!9556 true))

(declare-fun b!70660 () Bool)

(declare-fun res!34616 () Bool)

(assert (=> b!70660 (=> (not res!34616) (not e!38215))))

(declare-fun res!34586 () Bool)

(declare-datatypes () ((Nat!271 (Succ!249 (prev!810 Nat!271)) (Zero!254))))

(declare-fun z!242 () Nat!271)

(declare-fun x!27968 () Nat!271)

(declare-fun y!1991 () Nat!271)

(declare-fun law_associativity!13 (NatMonoid!5 Nat!271 Nat!271 Nat!271) Bool)

(assert (=> b!70660 (= res!34616 (= res!34586 (law_associativity!13 thiss!9195 x!27968 y!1991 z!242)))))

(declare-fun b!70661 () Bool)

(declare-fun e!38216 () Bool)

(assert (=> b!70661 (= e!38215 e!38216)))

(declare-fun res!34615 () Bool)

(assert (=> b!70661 (=> res!34615 e!38216)))

(assert (=> b!70661 (= res!34615 (not res!34586))))

(declare-fun b!70662 () Bool)

(declare-fun append!2 (NatMonoid!5 Nat!271 Nat!271) Nat!271)

(assert (=> b!70662 (= e!38216 (not (= (append!2 thiss!9195 x!27968 (append!2 thiss!9195 y!1991 z!242)) (append!2 thiss!9195 (append!2 thiss!9195 x!27968 y!1991) z!242))))))

(assert (= (and start!9556 res!34614) b!70660))

(assert (= (and b!70660 res!34616) b!70661))

(assert (= (and b!70661 (not res!34615)) b!70662))

(declare-fun m!70707 () Bool)

(assert (=> b!70660 m!70707))

(declare-fun m!70709 () Bool)

(assert (=> b!70662 m!70709))

(assert (=> b!70662 m!70709))

(declare-fun m!70711 () Bool)

(assert (=> b!70662 m!70711))

(declare-fun m!70713 () Bool)

(assert (=> b!70662 m!70713))

(assert (=> b!70662 m!70713))

(declare-fun m!70715 () Bool)

(assert (=> b!70662 m!70715))

(push 1)

(assert (not b!70662))

(assert (not b!70660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53694 () Bool)

(declare-fun c!16901 () Bool)

(assert (=> d!53694 (= c!16901 (is-AdditiveMonoid!6 thiss!9195))))

(declare-fun e!38219 () Nat!271)

(assert (=> d!53694 (= (append!2 thiss!9195 x!27968 (append!2 thiss!9195 y!1991 z!242)) e!38219)))

(declare-fun b!70667 () Bool)

(declare-fun append!3 (NatMonoid!5 Nat!271 Nat!271) Nat!271)

(assert (=> b!70667 (= e!38219 (append!3 thiss!9195 x!27968 (append!2 thiss!9195 y!1991 z!242)))))

(declare-fun b!70668 () Bool)

(declare-fun append!168 (NatMonoid!5 Nat!271 Nat!271) Nat!271)

(assert (=> b!70668 (= e!38219 (append!168 thiss!9195 x!27968 (append!2 thiss!9195 y!1991 z!242)))))

(assert (= (and d!53694 c!16901) b!70667))

(assert (= (and d!53694 (not c!16901)) b!70668))

(assert (=> b!70667 m!70709))

(declare-fun m!70717 () Bool)

(assert (=> b!70667 m!70717))

(assert (=> b!70668 m!70709))

(declare-fun m!70719 () Bool)

(assert (=> b!70668 m!70719))

(assert (=> b!70662 d!53694))

(declare-fun d!53696 () Bool)

(declare-fun c!16902 () Bool)

(assert (=> d!53696 (= c!16902 (is-AdditiveMonoid!6 thiss!9195))))

(declare-fun e!38220 () Nat!271)

(assert (=> d!53696 (= (append!2 thiss!9195 y!1991 z!242) e!38220)))

(declare-fun b!70669 () Bool)

(assert (=> b!70669 (= e!38220 (append!3 thiss!9195 y!1991 z!242))))

(declare-fun b!70670 () Bool)

(assert (=> b!70670 (= e!38220 (append!168 thiss!9195 y!1991 z!242))))

(assert (= (and d!53696 c!16902) b!70669))

(assert (= (and d!53696 (not c!16902)) b!70670))

(declare-fun m!70721 () Bool)

(assert (=> b!70669 m!70721))

(declare-fun m!70723 () Bool)

(assert (=> b!70670 m!70723))

(assert (=> b!70662 d!53696))

(declare-fun d!53698 () Bool)

(declare-fun c!16903 () Bool)

(assert (=> d!53698 (= c!16903 (is-AdditiveMonoid!6 thiss!9195))))

(declare-fun e!38221 () Nat!271)

(assert (=> d!53698 (= (append!2 thiss!9195 (append!2 thiss!9195 x!27968 y!1991) z!242) e!38221)))

(declare-fun b!70671 () Bool)

(assert (=> b!70671 (= e!38221 (append!3 thiss!9195 (append!2 thiss!9195 x!27968 y!1991) z!242))))

(declare-fun b!70672 () Bool)

(assert (=> b!70672 (= e!38221 (append!168 thiss!9195 (append!2 thiss!9195 x!27968 y!1991) z!242))))

(assert (= (and d!53698 c!16903) b!70671))

(assert (= (and d!53698 (not c!16903)) b!70672))

(assert (=> b!70671 m!70713))

(declare-fun m!70725 () Bool)

(assert (=> b!70671 m!70725))

(assert (=> b!70672 m!70713))

(declare-fun m!70727 () Bool)

(assert (=> b!70672 m!70727))

(assert (=> b!70662 d!53698))

(declare-fun d!53700 () Bool)

(declare-fun c!16904 () Bool)

(assert (=> d!53700 (= c!16904 (is-AdditiveMonoid!6 thiss!9195))))

(declare-fun e!38222 () Nat!271)

(assert (=> d!53700 (= (append!2 thiss!9195 x!27968 y!1991) e!38222)))

(declare-fun b!70673 () Bool)

(assert (=> b!70673 (= e!38222 (append!3 thiss!9195 x!27968 y!1991))))

(declare-fun b!70674 () Bool)

(assert (=> b!70674 (= e!38222 (append!168 thiss!9195 x!27968 y!1991))))

(assert (= (and d!53700 c!16904) b!70673))

(assert (= (and d!53700 (not c!16904)) b!70674))

(declare-fun m!70729 () Bool)

(assert (=> b!70673 m!70729))

(declare-fun m!70731 () Bool)

(assert (=> b!70674 m!70731))

(assert (=> b!70662 d!53700))

(declare-fun d!53702 () Bool)

(declare-fun e!38225 () Bool)

(assert (=> d!53702 e!38225))

(declare-fun res!34622 () Bool)

(assert (=> d!53702 (=> (not res!34622) (not e!38225))))

(declare-fun res!34621 () Bool)

(assert (=> d!53702 (= res!34622 res!34621)))

(assert (=> d!53702 true))

(assert (=> d!53702 (= (law_associativity!13 thiss!9195 x!27968 y!1991 z!242) res!34621)))

(declare-fun b!70677 () Bool)

(assert (=> b!70677 (= e!38225 (= (append!2 thiss!9195 x!27968 (append!2 thiss!9195 y!1991 z!242)) (append!2 thiss!9195 (append!2 thiss!9195 x!27968 y!1991) z!242)))))

(assert (= (and d!53702 res!34622) b!70677))

(assert (=> b!70677 m!70709))

(assert (=> b!70677 m!70709))

(assert (=> b!70677 m!70711))

(assert (=> b!70677 m!70713))

(assert (=> b!70677 m!70713))

(assert (=> b!70677 m!70715))

(assert (=> b!70660 d!53702))

(push 1)

(assert (not b!70677))

(assert (not b!70667))

(assert (not b!70669))

(assert (not b!70673))

(assert (not b!70671))

(assert (not b!70674))

(assert (not b!70670))

(assert (not b!70668))

(assert (not b!70672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


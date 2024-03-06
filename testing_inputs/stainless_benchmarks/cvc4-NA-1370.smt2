; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9562 () Bool)

(assert start!9562)

(declare-fun res!34630 () Bool)

(declare-fun e!38231 () Bool)

(assert (=> start!9562 (=> (not res!34630) (not e!38231))))

(declare-datatypes () ((NatMonoid!6 (AdditiveMonoid!7) (NatMonoidExt!5 (__x!264 Int)))))

(declare-fun thiss!9287 () NatMonoid!6)

(assert (=> start!9562 (= res!34630 (is-AdditiveMonoid!7 thiss!9287))))

(assert (=> start!9562 e!38231))

(assert (=> start!9562 true))

(declare-fun b!70684 () Bool)

(declare-fun res!34631 () Bool)

(assert (=> b!70684 (=> (not res!34631) (not e!38231))))

(declare-datatypes () ((Nat!272 (Succ!250 (prev!811 Nat!272)) (Zero!255))))

(declare-fun y!2044 () Nat!272)

(declare-fun x!28043 () Nat!272)

(declare-fun res!34594 () Bool)

(declare-fun z!254 () Nat!272)

(declare-datatypes () ((ProofOps!358 (ProofOps!359 (prop!468 Bool)))))

(declare-fun because!1 (ProofOps!358 Bool) Bool)

(declare-fun append!2 (NatMonoid!6 Nat!272 Nat!272) Nat!272)

(declare-fun lemma_associativity_plus!0 (Nat!272 Nat!272 Nat!272) Bool)

(assert (=> b!70684 (= res!34631 (= res!34594 (because!1 (ProofOps!359 (= (append!2 thiss!9287 x!28043 (append!2 thiss!9287 y!2044 z!254)) (append!2 thiss!9287 (append!2 thiss!9287 x!28043 y!2044) z!254))) (lemma_associativity_plus!0 x!28043 y!2044 z!254))))))

(declare-fun b!70685 () Bool)

(declare-fun e!38230 () Bool)

(assert (=> b!70685 (= e!38231 e!38230)))

(declare-fun res!34629 () Bool)

(assert (=> b!70685 (=> res!34629 e!38230)))

(assert (=> b!70685 (= res!34629 (not res!34594))))

(declare-fun b!70686 () Bool)

(assert (=> b!70686 (= e!38230 (not (= (append!2 thiss!9287 x!28043 (append!2 thiss!9287 y!2044 z!254)) (append!2 thiss!9287 (append!2 thiss!9287 x!28043 y!2044) z!254))))))

(assert (= (and start!9562 res!34630) b!70684))

(assert (= (and b!70684 res!34631) b!70685))

(assert (= (and b!70685 (not res!34629)) b!70686))

(declare-fun m!70733 () Bool)

(assert (=> b!70684 m!70733))

(declare-fun m!70735 () Bool)

(assert (=> b!70684 m!70735))

(declare-fun m!70737 () Bool)

(assert (=> b!70684 m!70737))

(declare-fun m!70739 () Bool)

(assert (=> b!70684 m!70739))

(assert (=> b!70684 m!70737))

(declare-fun m!70741 () Bool)

(assert (=> b!70684 m!70741))

(declare-fun m!70743 () Bool)

(assert (=> b!70684 m!70743))

(assert (=> b!70684 m!70741))

(assert (=> b!70684 m!70733))

(assert (=> b!70686 m!70741))

(assert (=> b!70686 m!70741))

(assert (=> b!70686 m!70743))

(assert (=> b!70686 m!70733))

(assert (=> b!70686 m!70733))

(assert (=> b!70686 m!70735))

(push 1)

(assert (not b!70684))

(assert (not b!70686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53704 () Bool)

(declare-fun c!16907 () Bool)

(assert (=> d!53704 (= c!16907 (is-AdditiveMonoid!7 thiss!9287))))

(declare-fun e!38234 () Nat!272)

(assert (=> d!53704 (= (append!2 thiss!9287 (append!2 thiss!9287 x!28043 y!2044) z!254) e!38234)))

(declare-fun b!70691 () Bool)

(declare-fun append!3 (NatMonoid!6 Nat!272 Nat!272) Nat!272)

(assert (=> b!70691 (= e!38234 (append!3 thiss!9287 (append!2 thiss!9287 x!28043 y!2044) z!254))))

(declare-fun b!70692 () Bool)

(declare-fun append!168 (NatMonoid!6 Nat!272 Nat!272) Nat!272)

(assert (=> b!70692 (= e!38234 (append!168 thiss!9287 (append!2 thiss!9287 x!28043 y!2044) z!254))))

(assert (= (and d!53704 c!16907) b!70691))

(assert (= (and d!53704 (not c!16907)) b!70692))

(assert (=> b!70691 m!70733))

(declare-fun m!70745 () Bool)

(assert (=> b!70691 m!70745))

(assert (=> b!70692 m!70733))

(declare-fun m!70747 () Bool)

(assert (=> b!70692 m!70747))

(assert (=> b!70684 d!53704))

(declare-fun d!53706 () Bool)

(declare-fun c!16908 () Bool)

(assert (=> d!53706 (= c!16908 (is-AdditiveMonoid!7 thiss!9287))))

(declare-fun e!38235 () Nat!272)

(assert (=> d!53706 (= (append!2 thiss!9287 x!28043 (append!2 thiss!9287 y!2044 z!254)) e!38235)))

(declare-fun b!70693 () Bool)

(assert (=> b!70693 (= e!38235 (append!3 thiss!9287 x!28043 (append!2 thiss!9287 y!2044 z!254)))))

(declare-fun b!70694 () Bool)

(assert (=> b!70694 (= e!38235 (append!168 thiss!9287 x!28043 (append!2 thiss!9287 y!2044 z!254)))))

(assert (= (and d!53706 c!16908) b!70693))

(assert (= (and d!53706 (not c!16908)) b!70694))

(assert (=> b!70693 m!70741))

(declare-fun m!70749 () Bool)

(assert (=> b!70693 m!70749))

(assert (=> b!70694 m!70741))

(declare-fun m!70751 () Bool)

(assert (=> b!70694 m!70751))

(assert (=> b!70684 d!53706))

(declare-fun d!53708 () Bool)

(declare-fun c!16909 () Bool)

(assert (=> d!53708 (= c!16909 (is-AdditiveMonoid!7 thiss!9287))))

(declare-fun e!38236 () Nat!272)

(assert (=> d!53708 (= (append!2 thiss!9287 x!28043 y!2044) e!38236)))

(declare-fun b!70695 () Bool)

(assert (=> b!70695 (= e!38236 (append!3 thiss!9287 x!28043 y!2044))))

(declare-fun b!70696 () Bool)

(assert (=> b!70696 (= e!38236 (append!168 thiss!9287 x!28043 y!2044))))

(assert (= (and d!53708 c!16909) b!70695))

(assert (= (and d!53708 (not c!16909)) b!70696))

(declare-fun m!70753 () Bool)

(assert (=> b!70695 m!70753))

(declare-fun m!70755 () Bool)

(assert (=> b!70696 m!70755))

(assert (=> b!70684 d!53708))

(declare-fun e!38239 () Bool)

(declare-fun b!70701 () Bool)

(declare-fun +!3 (Nat!272 Nat!272) Nat!272)

(assert (=> b!70701 (= e!38239 (= (+!3 x!28043 (+!3 y!2044 z!254)) (+!3 (+!3 x!28043 y!2044) z!254)))))

(declare-fun lt!15097 () Bool)

(assert (=> b!70701 (= lt!15097 (lemma_associativity_plus!0 (prev!811 x!28043) y!2044 z!254))))

(declare-fun d!53710 () Bool)

(assert (=> d!53710 e!38239))

(declare-fun c!16912 () Bool)

(assert (=> d!53710 (= c!16912 (is-Succ!250 x!28043))))

(assert (=> d!53710 (= (lemma_associativity_plus!0 x!28043 y!2044 z!254) true)))

(declare-fun b!70702 () Bool)

(assert (=> b!70702 (= e!38239 (= (+!3 x!28043 (+!3 y!2044 z!254)) (+!3 (+!3 x!28043 y!2044) z!254)))))

(assert (= (and d!53710 c!16912) b!70701))

(assert (= (and d!53710 (not c!16912)) b!70702))

(declare-fun m!70757 () Bool)

(assert (=> b!70701 m!70757))

(declare-fun m!70759 () Bool)

(assert (=> b!70701 m!70759))

(declare-fun m!70761 () Bool)

(assert (=> b!70701 m!70761))

(declare-fun m!70763 () Bool)

(assert (=> b!70701 m!70763))

(declare-fun m!70765 () Bool)

(assert (=> b!70701 m!70765))

(assert (=> b!70701 m!70757))

(assert (=> b!70701 m!70763))

(assert (=> b!70702 m!70763))

(assert (=> b!70702 m!70763))

(assert (=> b!70702 m!70765))

(assert (=> b!70702 m!70757))

(assert (=> b!70702 m!70757))

(assert (=> b!70702 m!70759))

(assert (=> b!70684 d!53710))

(declare-fun d!53712 () Bool)

(assert (=> d!53712 (= (because!1 (ProofOps!359 (= (append!2 thiss!9287 x!28043 (append!2 thiss!9287 y!2044 z!254)) (append!2 thiss!9287 (append!2 thiss!9287 x!28043 y!2044) z!254))) (lemma_associativity_plus!0 x!28043 y!2044 z!254)) (and (lemma_associativity_plus!0 x!28043 y!2044 z!254) (prop!468 (ProofOps!359 (= (append!2 thiss!9287 x!28043 (append!2 thiss!9287 y!2044 z!254)) (append!2 thiss!9287 (append!2 thiss!9287 x!28043 y!2044) z!254))))))))

(assert (=> b!70684 d!53712))

(declare-fun d!53714 () Bool)

(declare-fun c!16913 () Bool)

(assert (=> d!53714 (= c!16913 (is-AdditiveMonoid!7 thiss!9287))))

(declare-fun e!38240 () Nat!272)

(assert (=> d!53714 (= (append!2 thiss!9287 y!2044 z!254) e!38240)))

(declare-fun b!70703 () Bool)

(assert (=> b!70703 (= e!38240 (append!3 thiss!9287 y!2044 z!254))))

(declare-fun b!70704 () Bool)

(assert (=> b!70704 (= e!38240 (append!168 thiss!9287 y!2044 z!254))))

(assert (= (and d!53714 c!16913) b!70703))

(assert (= (and d!53714 (not c!16913)) b!70704))

(declare-fun m!70767 () Bool)

(assert (=> b!70703 m!70767))

(declare-fun m!70769 () Bool)

(assert (=> b!70704 m!70769))

(assert (=> b!70684 d!53714))

(assert (=> b!70686 d!53706))

(assert (=> b!70686 d!53714))

(assert (=> b!70686 d!53704))

(assert (=> b!70686 d!53708))

(push 1)

(assert (not b!70691))

(assert (not b!70701))

(assert (not b!70694))

(assert (not b!70703))

(assert (not b!70693))

(assert (not b!70695))

(assert (not b!70692))

(assert (not b!70696))

(assert (not b!70704))

(assert (not b!70702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53716 () Bool)

(assert (=> d!53716 true))

(assert (=> d!53716 true))

(declare-fun res!34634 () Nat!272)

(assert (=> d!53716 (= (append!168 thiss!9287 x!28043 y!2044) res!34634)))

(assert (=> b!70696 d!53716))

(declare-fun d!53718 () Bool)

(assert (=> d!53718 true))

(assert (=> d!53718 true))

(declare-fun res!34635 () Nat!272)

(assert (=> d!53718 (= (append!168 thiss!9287 y!2044 z!254) res!34635)))

(assert (=> b!70704 d!53718))

(declare-fun d!53720 () Bool)

(assert (=> d!53720 true))

(assert (=> d!53720 true))

(declare-fun res!34636 () Nat!272)

(assert (=> d!53720 (= (append!168 thiss!9287 (append!2 thiss!9287 x!28043 y!2044) z!254) res!34636)))

(assert (=> b!70692 d!53720))

(declare-fun d!53722 () Bool)

(assert (=> d!53722 true))

(assert (=> d!53722 true))

(declare-fun res!34637 () Nat!272)

(assert (=> d!53722 (= (append!168 thiss!9287 x!28043 (append!2 thiss!9287 y!2044 z!254)) res!34637)))

(assert (=> b!70694 d!53722))

(declare-fun d!53724 () Bool)

(assert (=> d!53724 (= (append!3 thiss!9287 x!28043 (append!2 thiss!9287 y!2044 z!254)) (+!3 x!28043 (append!2 thiss!9287 y!2044 z!254)))))

(declare-fun bs!37645 () Bool)

(assert (= bs!37645 d!53724))

(assert (=> bs!37645 m!70741))

(declare-fun m!70771 () Bool)

(assert (=> bs!37645 m!70771))

(assert (=> b!70693 d!53724))

(declare-fun d!53726 () Bool)

(assert (=> d!53726 (= (append!3 thiss!9287 x!28043 y!2044) (+!3 x!28043 y!2044))))

(declare-fun bs!37646 () Bool)

(assert (= bs!37646 d!53726))

(assert (=> bs!37646 m!70757))

(assert (=> b!70695 d!53726))

(declare-fun d!53728 () Bool)

(assert (=> d!53728 (= (append!3 thiss!9287 y!2044 z!254) (+!3 y!2044 z!254))))

(declare-fun bs!37647 () Bool)

(assert (= bs!37647 d!53728))

(assert (=> bs!37647 m!70763))

(assert (=> b!70703 d!53728))

(declare-fun d!53730 () Bool)

(assert (=> d!53730 (= (append!3 thiss!9287 (append!2 thiss!9287 x!28043 y!2044) z!254) (+!3 (append!2 thiss!9287 x!28043 y!2044) z!254))))

(declare-fun bs!37648 () Bool)

(assert (= bs!37648 d!53730))

(assert (=> bs!37648 m!70733))

(declare-fun m!70773 () Bool)

(assert (=> bs!37648 m!70773))

(assert (=> b!70691 d!53730))

(declare-fun d!53732 () Bool)

(declare-fun c!16916 () Bool)

(assert (=> d!53732 (= c!16916 (is-Zero!255 x!28043))))

(declare-fun e!38243 () Nat!272)

(assert (=> d!53732 (= (+!3 x!28043 (+!3 y!2044 z!254)) e!38243)))

(declare-fun b!70709 () Bool)

(assert (=> b!70709 (= e!38243 (+!3 y!2044 z!254))))

(declare-fun b!70710 () Bool)

(assert (=> b!70710 (= e!38243 (Succ!250 (+!3 (prev!811 x!28043) (+!3 y!2044 z!254))))))

(assert (= (and d!53732 c!16916) b!70709))

(assert (= (and d!53732 (not c!16916)) b!70710))

(assert (=> b!70710 m!70763))

(declare-fun m!70776 () Bool)

(assert (=> b!70710 m!70776))

(assert (=> b!70702 d!53732))

(declare-fun d!53734 () Bool)

(declare-fun c!16917 () Bool)

(assert (=> d!53734 (= c!16917 (is-Zero!255 y!2044))))

(declare-fun e!38244 () Nat!272)

(assert (=> d!53734 (= (+!3 y!2044 z!254) e!38244)))

(declare-fun b!70711 () Bool)

(assert (=> b!70711 (= e!38244 z!254)))

(declare-fun b!70712 () Bool)

(assert (=> b!70712 (= e!38244 (Succ!250 (+!3 (prev!811 y!2044) z!254)))))

(assert (= (and d!53734 c!16917) b!70711))

(assert (= (and d!53734 (not c!16917)) b!70712))

(declare-fun m!70778 () Bool)

(assert (=> b!70712 m!70778))

(assert (=> b!70702 d!53734))

(declare-fun d!53736 () Bool)

(declare-fun c!16918 () Bool)

(assert (=> d!53736 (= c!16918 (is-Zero!255 (+!3 x!28043 y!2044)))))

(declare-fun e!38245 () Nat!272)

(assert (=> d!53736 (= (+!3 (+!3 x!28043 y!2044) z!254) e!38245)))

(declare-fun b!70713 () Bool)

(assert (=> b!70713 (= e!38245 z!254)))

(declare-fun b!70714 () Bool)

(assert (=> b!70714 (= e!38245 (Succ!250 (+!3 (prev!811 (+!3 x!28043 y!2044)) z!254)))))

(assert (= (and d!53736 c!16918) b!70713))

(assert (= (and d!53736 (not c!16918)) b!70714))

(declare-fun m!70780 () Bool)

(assert (=> b!70714 m!70780))

(assert (=> b!70702 d!53736))

(declare-fun d!53738 () Bool)

(declare-fun c!16919 () Bool)

(assert (=> d!53738 (= c!16919 (is-Zero!255 x!28043))))

(declare-fun e!38246 () Nat!272)

(assert (=> d!53738 (= (+!3 x!28043 y!2044) e!38246)))

(declare-fun b!70715 () Bool)

(assert (=> b!70715 (= e!38246 y!2044)))

(declare-fun b!70716 () Bool)

(assert (=> b!70716 (= e!38246 (Succ!250 (+!3 (prev!811 x!28043) y!2044)))))

(assert (= (and d!53738 c!16919) b!70715))

(assert (= (and d!53738 (not c!16919)) b!70716))

(declare-fun m!70782 () Bool)

(assert (=> b!70716 m!70782))

(assert (=> b!70702 d!53738))

(declare-fun b!70717 () Bool)

(declare-fun e!38247 () Bool)

(assert (=> b!70717 (= e!38247 (= (+!3 (prev!811 x!28043) (+!3 y!2044 z!254)) (+!3 (+!3 (prev!811 x!28043) y!2044) z!254)))))

(declare-fun lt!15098 () Bool)

(assert (=> b!70717 (= lt!15098 (lemma_associativity_plus!0 (prev!811 (prev!811 x!28043)) y!2044 z!254))))

(declare-fun d!53740 () Bool)

(assert (=> d!53740 e!38247))

(declare-fun c!16920 () Bool)

(assert (=> d!53740 (= c!16920 (is-Succ!250 (prev!811 x!28043)))))

(assert (=> d!53740 (= (lemma_associativity_plus!0 (prev!811 x!28043) y!2044 z!254) true)))

(declare-fun b!70718 () Bool)

(assert (=> b!70718 (= e!38247 (= (+!3 (prev!811 x!28043) (+!3 y!2044 z!254)) (+!3 (+!3 (prev!811 x!28043) y!2044) z!254)))))

(assert (= (and d!53740 c!16920) b!70717))

(assert (= (and d!53740 (not c!16920)) b!70718))

(assert (=> b!70717 m!70782))

(declare-fun m!70784 () Bool)

(assert (=> b!70717 m!70784))

(declare-fun m!70786 () Bool)

(assert (=> b!70717 m!70786))

(assert (=> b!70717 m!70763))

(assert (=> b!70717 m!70776))

(assert (=> b!70717 m!70782))

(assert (=> b!70717 m!70763))

(assert (=> b!70718 m!70763))

(assert (=> b!70718 m!70763))

(assert (=> b!70718 m!70776))

(assert (=> b!70718 m!70782))

(assert (=> b!70718 m!70782))

(assert (=> b!70718 m!70784))

(assert (=> b!70701 d!53740))

(assert (=> b!70701 d!53734))

(assert (=> b!70701 d!53736))

(assert (=> b!70701 d!53738))

(assert (=> b!70701 d!53732))

(push 1)

(assert (not d!53724))

(assert (not b!70718))

(assert (not b!70712))

(assert (not b!70716))

(assert (not d!53728))

(assert (not d!53726))

(assert (not b!70714))

(assert (not b!70710))

(assert (not d!53730))

(assert (not b!70717))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


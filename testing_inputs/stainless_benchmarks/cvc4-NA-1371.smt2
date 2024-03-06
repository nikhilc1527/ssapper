; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9576 () Bool)

(assert start!9576)

(declare-fun res!34642 () Bool)

(declare-fun e!38250 () Bool)

(assert (=> start!9576 (=> (not res!34642) (not e!38250))))

(declare-datatypes () ((Nat!273 (Succ!251 (prev!812 Nat!273)) (Zero!256))))

(declare-fun x!27963 () Nat!273)

(assert (=> start!9576 (= res!34642 (is-Succ!251 x!27963))))

(assert (=> start!9576 e!38250))

(assert (=> start!9576 true))

(declare-fun b!70723 () Bool)

(declare-fun res!34643 () Bool)

(assert (=> b!70723 (=> (not res!34643) (not e!38250))))

(declare-fun y!1988 () Nat!273)

(declare-fun inductVal!653 () Bool)

(declare-fun z!239 () Nat!273)

(declare-fun lemma_associativity_plus!0 (Nat!273 Nat!273 Nat!273) Bool)

(assert (=> b!70723 (= res!34643 (= inductVal!653 (lemma_associativity_plus!0 (prev!812 x!27963) y!1988 z!239)))))

(declare-fun b!70724 () Bool)

(declare-fun +!3 (Nat!273 Nat!273) Nat!273)

(assert (=> b!70724 (= e!38250 (not (= (+!3 x!27963 (+!3 y!1988 z!239)) (+!3 (+!3 x!27963 y!1988) z!239))))))

(assert (= (and start!9576 res!34642) b!70723))

(assert (= (and b!70723 res!34643) b!70724))

(declare-fun m!70788 () Bool)

(assert (=> b!70723 m!70788))

(declare-fun m!70790 () Bool)

(assert (=> b!70724 m!70790))

(assert (=> b!70724 m!70790))

(declare-fun m!70792 () Bool)

(assert (=> b!70724 m!70792))

(declare-fun m!70794 () Bool)

(assert (=> b!70724 m!70794))

(assert (=> b!70724 m!70794))

(declare-fun m!70796 () Bool)

(assert (=> b!70724 m!70796))

(push 1)

(assert (not b!70723))

(assert (not b!70724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!70729 () Bool)

(declare-fun e!38253 () Bool)

(assert (=> b!70729 (= e!38253 (= (+!3 (prev!812 x!27963) (+!3 y!1988 z!239)) (+!3 (+!3 (prev!812 x!27963) y!1988) z!239)))))

(declare-fun lt!15101 () Bool)

(assert (=> b!70729 (= lt!15101 (lemma_associativity_plus!0 (prev!812 (prev!812 x!27963)) y!1988 z!239))))

(declare-fun d!53742 () Bool)

(assert (=> d!53742 e!38253))

(declare-fun c!16923 () Bool)

(assert (=> d!53742 (= c!16923 (is-Succ!251 (prev!812 x!27963)))))

(assert (=> d!53742 (= (lemma_associativity_plus!0 (prev!812 x!27963) y!1988 z!239) true)))

(declare-fun b!70730 () Bool)

(assert (=> b!70730 (= e!38253 (= (+!3 (prev!812 x!27963) (+!3 y!1988 z!239)) (+!3 (+!3 (prev!812 x!27963) y!1988) z!239)))))

(assert (= (and d!53742 c!16923) b!70729))

(assert (= (and d!53742 (not c!16923)) b!70730))

(declare-fun m!70798 () Bool)

(assert (=> b!70729 m!70798))

(declare-fun m!70800 () Bool)

(assert (=> b!70729 m!70800))

(declare-fun m!70802 () Bool)

(assert (=> b!70729 m!70802))

(assert (=> b!70729 m!70790))

(declare-fun m!70804 () Bool)

(assert (=> b!70729 m!70804))

(assert (=> b!70729 m!70790))

(assert (=> b!70729 m!70800))

(assert (=> b!70730 m!70790))

(assert (=> b!70730 m!70790))

(assert (=> b!70730 m!70804))

(assert (=> b!70730 m!70800))

(assert (=> b!70730 m!70800))

(assert (=> b!70730 m!70802))

(assert (=> b!70723 d!53742))

(declare-fun d!53744 () Bool)

(declare-fun c!16926 () Bool)

(assert (=> d!53744 (= c!16926 (is-Zero!256 x!27963))))

(declare-fun e!38256 () Nat!273)

(assert (=> d!53744 (= (+!3 x!27963 (+!3 y!1988 z!239)) e!38256)))

(declare-fun b!70735 () Bool)

(assert (=> b!70735 (= e!38256 (+!3 y!1988 z!239))))

(declare-fun b!70736 () Bool)

(assert (=> b!70736 (= e!38256 (Succ!251 (+!3 (prev!812 x!27963) (+!3 y!1988 z!239))))))

(assert (= (and d!53744 c!16926) b!70735))

(assert (= (and d!53744 (not c!16926)) b!70736))

(assert (=> b!70736 m!70790))

(assert (=> b!70736 m!70804))

(assert (=> b!70724 d!53744))

(declare-fun d!53746 () Bool)

(declare-fun c!16927 () Bool)

(assert (=> d!53746 (= c!16927 (is-Zero!256 y!1988))))

(declare-fun e!38257 () Nat!273)

(assert (=> d!53746 (= (+!3 y!1988 z!239) e!38257)))

(declare-fun b!70737 () Bool)

(assert (=> b!70737 (= e!38257 z!239)))

(declare-fun b!70738 () Bool)

(assert (=> b!70738 (= e!38257 (Succ!251 (+!3 (prev!812 y!1988) z!239)))))

(assert (= (and d!53746 c!16927) b!70737))

(assert (= (and d!53746 (not c!16927)) b!70738))

(declare-fun m!70807 () Bool)

(assert (=> b!70738 m!70807))

(assert (=> b!70724 d!53746))

(declare-fun d!53748 () Bool)

(declare-fun c!16928 () Bool)

(assert (=> d!53748 (= c!16928 (is-Zero!256 (+!3 x!27963 y!1988)))))

(declare-fun e!38258 () Nat!273)

(assert (=> d!53748 (= (+!3 (+!3 x!27963 y!1988) z!239) e!38258)))

(declare-fun b!70739 () Bool)

(assert (=> b!70739 (= e!38258 z!239)))

(declare-fun b!70740 () Bool)

(assert (=> b!70740 (= e!38258 (Succ!251 (+!3 (prev!812 (+!3 x!27963 y!1988)) z!239)))))

(assert (= (and d!53748 c!16928) b!70739))

(assert (= (and d!53748 (not c!16928)) b!70740))

(declare-fun m!70809 () Bool)

(assert (=> b!70740 m!70809))

(assert (=> b!70724 d!53748))

(declare-fun d!53750 () Bool)

(declare-fun c!16929 () Bool)

(assert (=> d!53750 (= c!16929 (is-Zero!256 x!27963))))

(declare-fun e!38259 () Nat!273)

(assert (=> d!53750 (= (+!3 x!27963 y!1988) e!38259)))

(declare-fun b!70741 () Bool)

(assert (=> b!70741 (= e!38259 y!1988)))

(declare-fun b!70742 () Bool)

(assert (=> b!70742 (= e!38259 (Succ!251 (+!3 (prev!812 x!27963) y!1988)))))

(assert (= (and d!53750 c!16929) b!70741))

(assert (= (and d!53750 (not c!16929)) b!70742))

(assert (=> b!70742 m!70800))

(assert (=> b!70724 d!53750))

(push 1)

(assert (not b!70730))

(assert (not b!70729))

(assert (not b!70740))

(assert (not b!70742))

(assert (not b!70738))

(assert (not b!70736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


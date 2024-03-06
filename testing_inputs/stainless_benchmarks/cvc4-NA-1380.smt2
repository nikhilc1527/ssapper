; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9654 () Bool)

(assert start!9654)

(declare-fun res!34728 () Bool)

(declare-fun e!38350 () Bool)

(assert (=> start!9654 (=> (not res!34728) (not e!38350))))

(declare-datatypes () ((Nat!282 (Succ!260 (prev!821 Nat!282)) (Zero!265))))

(declare-fun x!28010 () Nat!282)

(assert (=> start!9654 (= res!34728 (is-Succ!260 x!28010))))

(assert (=> start!9654 e!38350))

(assert (=> start!9654 true))

(declare-fun b!70899 () Bool)

(declare-fun res!34729 () Bool)

(assert (=> b!70899 (=> (not res!34729) (not e!38350))))

(declare-fun inductVal!656 () Bool)

(declare-fun lemma_rightIdentity_plus!0 (Nat!282) Bool)

(assert (=> b!70899 (= res!34729 (= inductVal!656 (lemma_rightIdentity_plus!0 (prev!821 x!28010))))))

(declare-fun b!70900 () Bool)

(declare-fun +!3 (Nat!282 Nat!282) Nat!282)

(assert (=> b!70900 (= e!38350 (not (= (+!3 x!28010 Zero!265) x!28010)))))

(assert (= (and start!9654 res!34728) b!70899))

(assert (= (and b!70899 res!34729) b!70900))

(declare-fun m!70915 () Bool)

(assert (=> b!70899 m!70915))

(declare-fun m!70917 () Bool)

(assert (=> b!70900 m!70917))

(push 1)

(assert (not b!70899))

(assert (not b!70900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!70905 () Bool)

(declare-fun e!38353 () Bool)

(assert (=> b!70905 (= e!38353 (= (+!3 (prev!821 x!28010) Zero!265) (prev!821 x!28010)))))

(declare-fun lt!15111 () Bool)

(assert (=> b!70905 (= lt!15111 (lemma_rightIdentity_plus!0 (prev!821 (prev!821 x!28010))))))

(declare-fun d!53810 () Bool)

(assert (=> d!53810 e!38353))

(declare-fun c!16978 () Bool)

(assert (=> d!53810 (= c!16978 (is-Succ!260 (prev!821 x!28010)))))

(assert (=> d!53810 (= (lemma_rightIdentity_plus!0 (prev!821 x!28010)) true)))

(declare-fun b!70906 () Bool)

(assert (=> b!70906 (= e!38353 (= (+!3 (prev!821 x!28010) Zero!265) (prev!821 x!28010)))))

(assert (= (and d!53810 c!16978) b!70905))

(assert (= (and d!53810 (not c!16978)) b!70906))

(declare-fun m!70919 () Bool)

(assert (=> b!70905 m!70919))

(declare-fun m!70921 () Bool)

(assert (=> b!70905 m!70921))

(assert (=> b!70906 m!70919))

(assert (=> b!70899 d!53810))

(declare-fun d!53812 () Bool)

(declare-fun c!16981 () Bool)

(assert (=> d!53812 (= c!16981 (is-Zero!265 x!28010))))

(declare-fun e!38356 () Nat!282)

(assert (=> d!53812 (= (+!3 x!28010 Zero!265) e!38356)))

(declare-fun b!70911 () Bool)

(assert (=> b!70911 (= e!38356 Zero!265)))

(declare-fun b!70912 () Bool)

(assert (=> b!70912 (= e!38356 (Succ!260 (+!3 (prev!821 x!28010) Zero!265)))))

(assert (= (and d!53812 c!16981) b!70911))

(assert (= (and d!53812 (not c!16981)) b!70912))

(assert (=> b!70912 m!70919))

(assert (=> b!70900 d!53812))

(push 1)

(assert (not b!70905))

(assert (not b!70912))

(assert (not b!70906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


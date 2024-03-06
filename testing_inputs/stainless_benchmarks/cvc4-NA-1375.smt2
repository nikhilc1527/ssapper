; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9594 () Bool)

(assert start!9594)

(declare-fun res!34662 () Bool)

(declare-fun e!38277 () Bool)

(assert (=> start!9594 (=> (not res!34662) (not e!38277))))

(declare-datatypes () ((NatMonoid!10 (AdditiveMonoid!11) (NatMonoidExt!9 (__x!268 Int)))))

(declare-fun thiss!9150 () NatMonoid!10)

(assert (=> start!9594 (= res!34662 (not (is-AdditiveMonoid!11 thiss!9150)))))

(assert (=> start!9594 e!38277))

(assert (=> start!9594 true))

(declare-fun b!70770 () Bool)

(declare-fun res!34661 () Bool)

(assert (=> b!70770 (=> (not res!34661) (not e!38277))))

(declare-datatypes () ((Nat!277 (Succ!255 (prev!816 Nat!277)) (Zero!260))))

(declare-fun x!27943 () Nat!277)

(declare-fun res!34580 () Bool)

(declare-fun law_leftIdentity!12 (NatMonoid!10 Nat!277) Bool)

(assert (=> b!70770 (= res!34661 (= res!34580 (law_leftIdentity!12 thiss!9150 x!27943)))))

(declare-fun b!70771 () Bool)

(declare-fun e!38276 () Bool)

(assert (=> b!70771 (= e!38277 e!38276)))

(declare-fun res!34660 () Bool)

(assert (=> b!70771 (=> res!34660 e!38276)))

(assert (=> b!70771 (= res!34660 (not res!34580))))

(declare-fun b!70772 () Bool)

(declare-fun append!2 (NatMonoid!10 Nat!277 Nat!277) Nat!277)

(declare-fun empty!6 (NatMonoid!10) Nat!277)

(assert (=> b!70772 (= e!38276 (not (= (append!2 thiss!9150 (empty!6 thiss!9150) x!27943) x!27943)))))

(assert (= (and start!9594 res!34662) b!70770))

(assert (= (and b!70770 res!34661) b!70771))

(assert (= (and b!70771 (not res!34660)) b!70772))

(declare-fun m!70825 () Bool)

(assert (=> b!70770 m!70825))

(declare-fun m!70827 () Bool)

(assert (=> b!70772 m!70827))

(assert (=> b!70772 m!70827))

(declare-fun m!70829 () Bool)

(assert (=> b!70772 m!70829))

(push 1)

(assert (not b!70772))

(assert (not b!70770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53758 () Bool)

(declare-fun c!16938 () Bool)

(assert (=> d!53758 (= c!16938 (is-AdditiveMonoid!11 thiss!9150))))

(declare-fun e!38280 () Nat!277)

(assert (=> d!53758 (= (append!2 thiss!9150 (empty!6 thiss!9150) x!27943) e!38280)))

(declare-fun b!70777 () Bool)

(declare-fun append!3 (NatMonoid!10 Nat!277 Nat!277) Nat!277)

(assert (=> b!70777 (= e!38280 (append!3 thiss!9150 (empty!6 thiss!9150) x!27943))))

(declare-fun b!70778 () Bool)

(declare-fun append!168 (NatMonoid!10 Nat!277 Nat!277) Nat!277)

(assert (=> b!70778 (= e!38280 (append!168 thiss!9150 (empty!6 thiss!9150) x!27943))))

(assert (= (and d!53758 c!16938) b!70777))

(assert (= (and d!53758 (not c!16938)) b!70778))

(assert (=> b!70777 m!70827))

(declare-fun m!70831 () Bool)

(assert (=> b!70777 m!70831))

(assert (=> b!70778 m!70827))

(declare-fun m!70833 () Bool)

(assert (=> b!70778 m!70833))

(assert (=> b!70772 d!53758))

(declare-fun d!53760 () Bool)

(declare-fun c!16941 () Bool)

(assert (=> d!53760 (= c!16941 (is-AdditiveMonoid!11 thiss!9150))))

(declare-fun e!38283 () Nat!277)

(assert (=> d!53760 (= (empty!6 thiss!9150) e!38283)))

(declare-fun b!70783 () Bool)

(declare-fun empty!7 (NatMonoid!10) Nat!277)

(assert (=> b!70783 (= e!38283 (empty!7 thiss!9150))))

(declare-fun b!70784 () Bool)

(declare-fun empty!139 (NatMonoid!10) Nat!277)

(assert (=> b!70784 (= e!38283 (empty!139 thiss!9150))))

(assert (= (and d!53760 c!16941) b!70783))

(assert (= (and d!53760 (not c!16941)) b!70784))

(declare-fun m!70835 () Bool)

(assert (=> b!70783 m!70835))

(declare-fun m!70837 () Bool)

(assert (=> b!70784 m!70837))

(assert (=> b!70772 d!53760))

(declare-fun d!53762 () Bool)

(declare-fun e!38286 () Bool)

(assert (=> d!53762 e!38286))

(declare-fun res!34668 () Bool)

(assert (=> d!53762 (=> (not res!34668) (not e!38286))))

(declare-fun res!34667 () Bool)

(assert (=> d!53762 (= res!34668 res!34667)))

(assert (=> d!53762 true))

(assert (=> d!53762 (= (law_leftIdentity!12 thiss!9150 x!27943) res!34667)))

(declare-fun b!70787 () Bool)

(assert (=> b!70787 (= e!38286 (= (append!2 thiss!9150 (empty!6 thiss!9150) x!27943) x!27943))))

(assert (= (and d!53762 res!34668) b!70787))

(assert (=> b!70787 m!70827))

(assert (=> b!70787 m!70827))

(assert (=> b!70787 m!70829))

(assert (=> b!70770 d!53762))

(push 1)

(assert (not b!70783))

(assert (not b!70787))

(assert (not b!70777))

(assert (not b!70778))

(assert (not b!70784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


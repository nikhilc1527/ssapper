; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9626 () Bool)

(assert start!9626)

(declare-fun res!34700 () Bool)

(declare-fun e!38318 () Bool)

(assert (=> start!9626 (=> (not res!34700) (not e!38318))))

(declare-datatypes () ((NatMonoid!13 (AdditiveMonoid!14) (NatMonoidExt!12 (__x!271 Int)))))

(declare-fun thiss!9253 () NatMonoid!13)

(assert (=> start!9626 (= res!34700 (not (is-AdditiveMonoid!14 thiss!9253)))))

(assert (=> start!9626 e!38318))

(assert (=> start!9626 true))

(declare-fun b!70842 () Bool)

(declare-fun res!34701 () Bool)

(assert (=> b!70842 (=> (not res!34701) (not e!38318))))

(declare-datatypes () ((Nat!280 (Succ!258 (prev!819 Nat!280)) (Zero!263))))

(declare-fun x!28019 () Nat!280)

(declare-fun res!34592 () Bool)

(declare-fun law_rightIdentity!12 (NatMonoid!13 Nat!280) Bool)

(assert (=> b!70842 (= res!34701 (= res!34592 (law_rightIdentity!12 thiss!9253 x!28019)))))

(declare-fun b!70843 () Bool)

(declare-fun e!38319 () Bool)

(assert (=> b!70843 (= e!38318 e!38319)))

(declare-fun res!34702 () Bool)

(assert (=> b!70843 (=> res!34702 e!38319)))

(assert (=> b!70843 (= res!34702 (not res!34592))))

(declare-fun b!70844 () Bool)

(declare-fun append!2 (NatMonoid!13 Nat!280 Nat!280) Nat!280)

(declare-fun empty!6 (NatMonoid!13) Nat!280)

(assert (=> b!70844 (= e!38319 (not (= (append!2 thiss!9253 x!28019 (empty!6 thiss!9253)) x!28019)))))

(assert (= (and start!9626 res!34700) b!70842))

(assert (= (and b!70842 res!34701) b!70843))

(assert (= (and b!70843 (not res!34702)) b!70844))

(declare-fun m!70874 () Bool)

(assert (=> b!70842 m!70874))

(declare-fun m!70876 () Bool)

(assert (=> b!70844 m!70876))

(assert (=> b!70844 m!70876))

(declare-fun m!70878 () Bool)

(assert (=> b!70844 m!70878))

(push 1)

(assert (not b!70844))

(assert (not b!70842))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53784 () Bool)

(declare-fun c!16959 () Bool)

(assert (=> d!53784 (= c!16959 (is-AdditiveMonoid!14 thiss!9253))))

(declare-fun e!38322 () Nat!280)

(assert (=> d!53784 (= (append!2 thiss!9253 x!28019 (empty!6 thiss!9253)) e!38322)))

(declare-fun b!70849 () Bool)

(declare-fun append!3 (NatMonoid!13 Nat!280 Nat!280) Nat!280)

(assert (=> b!70849 (= e!38322 (append!3 thiss!9253 x!28019 (empty!6 thiss!9253)))))

(declare-fun b!70850 () Bool)

(declare-fun append!168 (NatMonoid!13 Nat!280 Nat!280) Nat!280)

(assert (=> b!70850 (= e!38322 (append!168 thiss!9253 x!28019 (empty!6 thiss!9253)))))

(assert (= (and d!53784 c!16959) b!70849))

(assert (= (and d!53784 (not c!16959)) b!70850))

(assert (=> b!70849 m!70876))

(declare-fun m!70880 () Bool)

(assert (=> b!70849 m!70880))

(assert (=> b!70850 m!70876))

(declare-fun m!70882 () Bool)

(assert (=> b!70850 m!70882))

(assert (=> b!70844 d!53784))

(declare-fun d!53786 () Bool)

(declare-fun c!16962 () Bool)

(assert (=> d!53786 (= c!16962 (is-AdditiveMonoid!14 thiss!9253))))

(declare-fun e!38325 () Nat!280)

(assert (=> d!53786 (= (empty!6 thiss!9253) e!38325)))

(declare-fun b!70855 () Bool)

(declare-fun empty!7 (NatMonoid!13) Nat!280)

(assert (=> b!70855 (= e!38325 (empty!7 thiss!9253))))

(declare-fun b!70856 () Bool)

(declare-fun empty!139 (NatMonoid!13) Nat!280)

(assert (=> b!70856 (= e!38325 (empty!139 thiss!9253))))

(assert (= (and d!53786 c!16962) b!70855))

(assert (= (and d!53786 (not c!16962)) b!70856))

(declare-fun m!70884 () Bool)

(assert (=> b!70855 m!70884))

(declare-fun m!70886 () Bool)

(assert (=> b!70856 m!70886))

(assert (=> b!70844 d!53786))

(declare-fun d!53788 () Bool)

(declare-fun e!38328 () Bool)

(assert (=> d!53788 e!38328))

(declare-fun res!34708 () Bool)

(assert (=> d!53788 (=> (not res!34708) (not e!38328))))

(declare-fun res!34707 () Bool)

(assert (=> d!53788 (= res!34708 res!34707)))

(assert (=> d!53788 true))

(assert (=> d!53788 (= (law_rightIdentity!12 thiss!9253 x!28019) res!34707)))

(declare-fun b!70859 () Bool)

(assert (=> b!70859 (= e!38328 (= (append!2 thiss!9253 x!28019 (empty!6 thiss!9253)) x!28019))))

(assert (= (and d!53788 res!34708) b!70859))

(assert (=> b!70859 m!70876))

(assert (=> b!70859 m!70876))

(assert (=> b!70859 m!70878))

(assert (=> b!70842 d!53788))

(push 1)

(assert (not b!70859))

(assert (not b!70850))

(assert (not b!70855))

(assert (not b!70856))

(assert (not b!70849))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


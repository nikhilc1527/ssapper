; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9618 () Bool)

(assert start!9618)

(declare-fun res!34689 () Bool)

(declare-fun e!38304 () Bool)

(assert (=> start!9618 (=> (not res!34689) (not e!38304))))

(declare-datatypes () ((NatMonoid!12 (AdditiveMonoid!13) (NatMonoidExt!11 (__x!270 Int)))))

(declare-fun thiss!9253 () NatMonoid!12)

(assert (=> start!9618 (= res!34689 (is-AdditiveMonoid!13 thiss!9253))))

(assert (=> start!9618 e!38304))

(assert (=> start!9618 true))

(declare-fun b!70818 () Bool)

(declare-fun res!34687 () Bool)

(assert (=> b!70818 (=> (not res!34687) (not e!38304))))

(declare-datatypes () ((Nat!279 (Succ!257 (prev!818 Nat!279)) (Zero!262))))

(declare-fun x!28019 () Nat!279)

(declare-fun res!34590 () Bool)

(declare-fun law_rightIdentity!1 (NatMonoid!12 Nat!279) Bool)

(assert (=> b!70818 (= res!34687 (= res!34590 (law_rightIdentity!1 thiss!9253 x!28019)))))

(declare-fun b!70819 () Bool)

(declare-fun e!38303 () Bool)

(assert (=> b!70819 (= e!38304 e!38303)))

(declare-fun res!34688 () Bool)

(assert (=> b!70819 (=> res!34688 e!38303)))

(assert (=> b!70819 (= res!34688 (not res!34590))))

(declare-fun b!70820 () Bool)

(declare-fun append!2 (NatMonoid!12 Nat!279 Nat!279) Nat!279)

(declare-fun empty!6 (NatMonoid!12) Nat!279)

(assert (=> b!70820 (= e!38303 (not (= (append!2 thiss!9253 x!28019 (empty!6 thiss!9253)) x!28019)))))

(assert (= (and start!9618 res!34689) b!70818))

(assert (= (and b!70818 res!34687) b!70819))

(assert (= (and b!70819 (not res!34688)) b!70820))

(declare-fun m!70856 () Bool)

(assert (=> b!70818 m!70856))

(declare-fun m!70858 () Bool)

(assert (=> b!70820 m!70858))

(assert (=> b!70820 m!70858))

(declare-fun m!70860 () Bool)

(assert (=> b!70820 m!70860))

(push 1)

(assert (not b!70818))

(assert (not b!70820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53778 () Bool)

(declare-fun e!38307 () Bool)

(assert (=> d!53778 e!38307))

(declare-fun res!34693 () Bool)

(assert (=> d!53778 (=> (not res!34693) (not e!38307))))

(declare-fun lt!15104 () Bool)

(assert (=> d!53778 (= res!34693 lt!15104)))

(declare-datatypes () ((ProofOps!360 (ProofOps!361 (prop!470 Bool)))))

(declare-fun because!1 (ProofOps!360 Bool) Bool)

(declare-fun lemma_rightIdentity_plus!0 (Nat!279) Bool)

(assert (=> d!53778 (= lt!15104 (because!1 (ProofOps!361 (= (append!2 thiss!9253 x!28019 (empty!6 thiss!9253)) x!28019)) (lemma_rightIdentity_plus!0 x!28019)))))

(assert (=> d!53778 (= (law_rightIdentity!1 thiss!9253 x!28019) lt!15104)))

(declare-fun b!70823 () Bool)

(assert (=> b!70823 (= e!38307 (= (append!2 thiss!9253 x!28019 (empty!6 thiss!9253)) x!28019))))

(assert (= (and d!53778 res!34693) b!70823))

(assert (=> d!53778 m!70858))

(assert (=> d!53778 m!70858))

(assert (=> d!53778 m!70860))

(declare-fun m!70862 () Bool)

(assert (=> d!53778 m!70862))

(assert (=> d!53778 m!70862))

(declare-fun m!70864 () Bool)

(assert (=> d!53778 m!70864))

(assert (=> b!70823 m!70858))

(assert (=> b!70823 m!70858))

(assert (=> b!70823 m!70860))

(assert (=> b!70818 d!53778))

(declare-fun d!53780 () Bool)

(declare-fun c!16953 () Bool)

(assert (=> d!53780 (= c!16953 (is-AdditiveMonoid!13 thiss!9253))))

(declare-fun e!38310 () Nat!279)

(assert (=> d!53780 (= (append!2 thiss!9253 x!28019 (empty!6 thiss!9253)) e!38310)))

(declare-fun b!70828 () Bool)

(declare-fun append!3 (NatMonoid!12 Nat!279 Nat!279) Nat!279)

(assert (=> b!70828 (= e!38310 (append!3 thiss!9253 x!28019 (empty!6 thiss!9253)))))

(declare-fun b!70829 () Bool)

(declare-fun append!168 (NatMonoid!12 Nat!279 Nat!279) Nat!279)

(assert (=> b!70829 (= e!38310 (append!168 thiss!9253 x!28019 (empty!6 thiss!9253)))))

(assert (= (and d!53780 c!16953) b!70828))

(assert (= (and d!53780 (not c!16953)) b!70829))

(assert (=> b!70828 m!70858))

(declare-fun m!70866 () Bool)

(assert (=> b!70828 m!70866))

(assert (=> b!70829 m!70858))

(declare-fun m!70868 () Bool)

(assert (=> b!70829 m!70868))

(assert (=> b!70820 d!53780))

(declare-fun d!53782 () Bool)

(declare-fun c!16956 () Bool)

(assert (=> d!53782 (= c!16956 (is-AdditiveMonoid!13 thiss!9253))))

(declare-fun e!38313 () Nat!279)

(assert (=> d!53782 (= (empty!6 thiss!9253) e!38313)))

(declare-fun b!70834 () Bool)

(declare-fun empty!7 (NatMonoid!12) Nat!279)

(assert (=> b!70834 (= e!38313 (empty!7 thiss!9253))))

(declare-fun b!70835 () Bool)

(declare-fun empty!139 (NatMonoid!12) Nat!279)

(assert (=> b!70835 (= e!38313 (empty!139 thiss!9253))))

(assert (= (and d!53782 c!16956) b!70834))

(assert (= (and d!53782 (not c!16956)) b!70835))

(declare-fun m!70870 () Bool)

(assert (=> b!70834 m!70870))

(declare-fun m!70872 () Bool)

(assert (=> b!70835 m!70872))

(assert (=> b!70820 d!53782))

(push 1)

(assert (not d!53778))

(assert (not b!70829))

(assert (not b!70823))

(assert (not b!70834))

(assert (not b!70828))

(assert (not b!70835))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


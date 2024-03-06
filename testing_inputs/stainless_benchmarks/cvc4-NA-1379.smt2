; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9634 () Bool)

(assert start!9634)

(declare-fun res!34715 () Bool)

(declare-fun e!38334 () Bool)

(assert (=> start!9634 (=> (not res!34715) (not e!38334))))

(declare-datatypes () ((NatMonoid!14 (AdditiveMonoid!15) (NatMonoidExt!13 (__x!272 Int)))))

(declare-fun thiss!9225 () NatMonoid!14)

(assert (=> start!9634 (= res!34715 (is-AdditiveMonoid!15 thiss!9225))))

(assert (=> start!9634 e!38334))

(assert (=> start!9634 true))

(declare-fun b!70866 () Bool)

(declare-fun res!34717 () Bool)

(assert (=> b!70866 (=> (not res!34717) (not e!38334))))

(declare-fun res!34588 () Bool)

(declare-datatypes () ((Nat!281 (Succ!259 (prev!820 Nat!281)) (Zero!264))))

(declare-fun x!27996 () Nat!281)

(declare-datatypes () ((ProofOps!362 (ProofOps!363 (prop!471 Bool)))))

(declare-fun because!1 (ProofOps!362 Bool) Bool)

(declare-fun append!2 (NatMonoid!14 Nat!281 Nat!281) Nat!281)

(declare-fun empty!6 (NatMonoid!14) Nat!281)

(declare-fun lemma_rightIdentity_plus!0 (Nat!281) Bool)

(assert (=> b!70866 (= res!34717 (= res!34588 (because!1 (ProofOps!363 (= (append!2 thiss!9225 x!27996 (empty!6 thiss!9225)) x!27996)) (lemma_rightIdentity_plus!0 x!27996))))))

(declare-fun b!70867 () Bool)

(declare-fun e!38333 () Bool)

(assert (=> b!70867 (= e!38334 e!38333)))

(declare-fun res!34716 () Bool)

(assert (=> b!70867 (=> res!34716 e!38333)))

(assert (=> b!70867 (= res!34716 (not res!34588))))

(declare-fun b!70868 () Bool)

(assert (=> b!70868 (= e!38333 (not (= (append!2 thiss!9225 x!27996 (empty!6 thiss!9225)) x!27996)))))

(assert (= (and start!9634 res!34715) b!70866))

(assert (= (and b!70866 res!34717) b!70867))

(assert (= (and b!70867 (not res!34716)) b!70868))

(declare-fun m!70888 () Bool)

(assert (=> b!70866 m!70888))

(assert (=> b!70866 m!70888))

(declare-fun m!70890 () Bool)

(assert (=> b!70866 m!70890))

(declare-fun m!70892 () Bool)

(assert (=> b!70866 m!70892))

(assert (=> b!70866 m!70892))

(declare-fun m!70894 () Bool)

(assert (=> b!70866 m!70894))

(assert (=> b!70868 m!70888))

(assert (=> b!70868 m!70888))

(assert (=> b!70868 m!70890))

(push 1)

(assert (not b!70866))

(assert (not b!70868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53790 () Bool)

(assert (=> d!53790 (= (because!1 (ProofOps!363 (= (append!2 thiss!9225 x!27996 (empty!6 thiss!9225)) x!27996)) (lemma_rightIdentity_plus!0 x!27996)) (and (lemma_rightIdentity_plus!0 x!27996) (prop!471 (ProofOps!363 (= (append!2 thiss!9225 x!27996 (empty!6 thiss!9225)) x!27996)))))))

(assert (=> b!70866 d!53790))

(declare-fun d!53792 () Bool)

(declare-fun c!16965 () Bool)

(assert (=> d!53792 (= c!16965 (is-AdditiveMonoid!15 thiss!9225))))

(declare-fun e!38337 () Nat!281)

(assert (=> d!53792 (= (append!2 thiss!9225 x!27996 (empty!6 thiss!9225)) e!38337)))

(declare-fun b!70873 () Bool)

(declare-fun append!3 (NatMonoid!14 Nat!281 Nat!281) Nat!281)

(assert (=> b!70873 (= e!38337 (append!3 thiss!9225 x!27996 (empty!6 thiss!9225)))))

(declare-fun b!70874 () Bool)

(declare-fun append!168 (NatMonoid!14 Nat!281 Nat!281) Nat!281)

(assert (=> b!70874 (= e!38337 (append!168 thiss!9225 x!27996 (empty!6 thiss!9225)))))

(assert (= (and d!53792 c!16965) b!70873))

(assert (= (and d!53792 (not c!16965)) b!70874))

(assert (=> b!70873 m!70888))

(declare-fun m!70896 () Bool)

(assert (=> b!70873 m!70896))

(assert (=> b!70874 m!70888))

(declare-fun m!70898 () Bool)

(assert (=> b!70874 m!70898))

(assert (=> b!70866 d!53792))

(declare-fun d!53794 () Bool)

(declare-fun c!16968 () Bool)

(assert (=> d!53794 (= c!16968 (is-AdditiveMonoid!15 thiss!9225))))

(declare-fun e!38340 () Nat!281)

(assert (=> d!53794 (= (empty!6 thiss!9225) e!38340)))

(declare-fun b!70879 () Bool)

(declare-fun empty!7 (NatMonoid!14) Nat!281)

(assert (=> b!70879 (= e!38340 (empty!7 thiss!9225))))

(declare-fun b!70880 () Bool)

(declare-fun empty!139 (NatMonoid!14) Nat!281)

(assert (=> b!70880 (= e!38340 (empty!139 thiss!9225))))

(assert (= (and d!53794 c!16968) b!70879))

(assert (= (and d!53794 (not c!16968)) b!70880))

(declare-fun m!70900 () Bool)

(assert (=> b!70879 m!70900))

(declare-fun m!70902 () Bool)

(assert (=> b!70880 m!70902))

(assert (=> b!70866 d!53794))

(declare-fun b!70885 () Bool)

(declare-fun e!38343 () Bool)

(declare-fun +!3 (Nat!281 Nat!281) Nat!281)

(assert (=> b!70885 (= e!38343 (= (+!3 x!27996 Zero!264) x!27996))))

(declare-fun lt!15107 () Bool)

(assert (=> b!70885 (= lt!15107 (lemma_rightIdentity_plus!0 (prev!820 x!27996)))))

(declare-fun d!53796 () Bool)

(assert (=> d!53796 e!38343))

(declare-fun c!16971 () Bool)

(assert (=> d!53796 (= c!16971 (is-Succ!259 x!27996))))

(assert (=> d!53796 (= (lemma_rightIdentity_plus!0 x!27996) true)))

(declare-fun b!70886 () Bool)

(assert (=> b!70886 (= e!38343 (= (+!3 x!27996 Zero!264) x!27996))))

(assert (= (and d!53796 c!16971) b!70885))

(assert (= (and d!53796 (not c!16971)) b!70886))

(declare-fun m!70904 () Bool)

(assert (=> b!70885 m!70904))

(declare-fun m!70906 () Bool)

(assert (=> b!70885 m!70906))

(assert (=> b!70886 m!70904))

(assert (=> b!70866 d!53796))

(assert (=> b!70868 d!53792))

(assert (=> b!70868 d!53794))

(push 1)

(assert (not b!70873))

(assert (not b!70886))

(assert (not b!70874))

(assert (not b!70879))

(assert (not b!70885))

(assert (not b!70880))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53798 () Bool)

(assert (=> d!53798 (is-AdditiveMonoid!15 thiss!9225)))

(assert (=> d!53798 (= (empty!7 thiss!9225) Zero!264)))

(assert (=> b!70879 d!53798))

(declare-fun d!53800 () Bool)

(declare-fun c!16974 () Bool)

(assert (=> d!53800 (= c!16974 (is-Zero!264 x!27996))))

(declare-fun e!38346 () Nat!281)

(assert (=> d!53800 (= (+!3 x!27996 Zero!264) e!38346)))

(declare-fun b!70891 () Bool)

(assert (=> b!70891 (= e!38346 Zero!264)))

(declare-fun b!70892 () Bool)

(assert (=> b!70892 (= e!38346 (Succ!259 (+!3 (prev!820 x!27996) Zero!264)))))

(assert (= (and d!53800 c!16974) b!70891))

(assert (= (and d!53800 (not c!16974)) b!70892))

(declare-fun m!70909 () Bool)

(assert (=> b!70892 m!70909))

(assert (=> b!70885 d!53800))

(declare-fun b!70893 () Bool)

(declare-fun e!38347 () Bool)

(assert (=> b!70893 (= e!38347 (= (+!3 (prev!820 x!27996) Zero!264) (prev!820 x!27996)))))

(declare-fun lt!15108 () Bool)

(assert (=> b!70893 (= lt!15108 (lemma_rightIdentity_plus!0 (prev!820 (prev!820 x!27996))))))

(declare-fun d!53802 () Bool)

(assert (=> d!53802 e!38347))

(declare-fun c!16975 () Bool)

(assert (=> d!53802 (= c!16975 (is-Succ!259 (prev!820 x!27996)))))

(assert (=> d!53802 (= (lemma_rightIdentity_plus!0 (prev!820 x!27996)) true)))

(declare-fun b!70894 () Bool)

(assert (=> b!70894 (= e!38347 (= (+!3 (prev!820 x!27996) Zero!264) (prev!820 x!27996)))))

(assert (= (and d!53802 c!16975) b!70893))

(assert (= (and d!53802 (not c!16975)) b!70894))

(assert (=> b!70893 m!70909))

(declare-fun m!70911 () Bool)

(assert (=> b!70893 m!70911))

(assert (=> b!70894 m!70909))

(assert (=> b!70885 d!53802))

(declare-fun d!53804 () Bool)

(assert (=> d!53804 true))

(assert (=> d!53804 true))

(declare-fun res!34720 () Nat!281)

(assert (=> d!53804 (= (append!168 thiss!9225 x!27996 (empty!6 thiss!9225)) res!34720)))

(assert (=> b!70874 d!53804))

(declare-fun d!53806 () Bool)

(assert (=> d!53806 (= (append!3 thiss!9225 x!27996 (empty!6 thiss!9225)) (+!3 x!27996 (empty!6 thiss!9225)))))

(declare-fun bs!37660 () Bool)

(assert (= bs!37660 d!53806))

(assert (=> bs!37660 m!70888))

(declare-fun m!70913 () Bool)

(assert (=> bs!37660 m!70913))

(assert (=> b!70873 d!53806))

(assert (=> b!70886 d!53800))

(declare-fun d!53808 () Bool)

(assert (=> d!53808 true))

(assert (=> d!53808 true))

(declare-fun res!34723 () Nat!281)

(assert (=> d!53808 (= (empty!139 thiss!9225) res!34723)))

(assert (=> b!70880 d!53808))

(push 1)

(assert (not b!70894))

(assert (not d!53806))

(assert (not b!70893))

(assert (not b!70892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


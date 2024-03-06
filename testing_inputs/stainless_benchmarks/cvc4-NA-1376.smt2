; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9602 () Bool)

(assert start!9602)

(declare-fun res!34673 () Bool)

(declare-fun e!38289 () Bool)

(assert (=> start!9602 (=> (not res!34673) (not e!38289))))

(declare-fun res!34582 () Bool)

(declare-datatypes () ((Nat!278 (Succ!256 (prev!817 Nat!278)) (Zero!261))))

(declare-fun x!27960 () Nat!278)

(declare-datatypes () ((NatMonoid!11 (AdditiveMonoid!12) (NatMonoidExt!10 (__x!269 Int)))))

(declare-fun thiss!9173 () NatMonoid!11)

(declare-fun x!27959 () Nat!278)

(declare-fun thiss!9174 () NatMonoid!11)

(assert (=> start!9602 (= res!34673 (and (is-AdditiveMonoid!12 thiss!9173) (= res!34582 true) (= thiss!9174 thiss!9173) (= x!27960 x!27959)))))

(assert (=> start!9602 e!38289))

(assert (=> start!9602 true))

(declare-fun b!70792 () Bool)

(declare-fun res!34674 () Bool)

(assert (=> b!70792 (=> (not res!34674) (not e!38289))))

(declare-fun inlined!6750 () Bool)

(declare-fun append!2 (NatMonoid!11 Nat!278 Nat!278) Nat!278)

(declare-fun empty!6 (NatMonoid!11) Nat!278)

(assert (=> b!70792 (= res!34674 (= inlined!6750 (= (append!2 thiss!9174 (empty!6 thiss!9174) x!27960) x!27960)))))

(declare-fun b!70793 () Bool)

(assert (=> b!70793 (= e!38289 (not inlined!6750))))

(assert (= (and start!9602 res!34673) b!70792))

(assert (= (and b!70792 res!34674) b!70793))

(declare-fun m!70839 () Bool)

(assert (=> b!70792 m!70839))

(assert (=> b!70792 m!70839))

(declare-fun m!70841 () Bool)

(assert (=> b!70792 m!70841))

(push 1)

(assert (not b!70792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53764 () Bool)

(declare-fun c!16944 () Bool)

(assert (=> d!53764 (= c!16944 (is-AdditiveMonoid!12 thiss!9174))))

(declare-fun e!38292 () Nat!278)

(assert (=> d!53764 (= (append!2 thiss!9174 (empty!6 thiss!9174) x!27960) e!38292)))

(declare-fun b!70798 () Bool)

(declare-fun append!3 (NatMonoid!11 Nat!278 Nat!278) Nat!278)

(assert (=> b!70798 (= e!38292 (append!3 thiss!9174 (empty!6 thiss!9174) x!27960))))

(declare-fun b!70799 () Bool)

(declare-fun append!168 (NatMonoid!11 Nat!278 Nat!278) Nat!278)

(assert (=> b!70799 (= e!38292 (append!168 thiss!9174 (empty!6 thiss!9174) x!27960))))

(assert (= (and d!53764 c!16944) b!70798))

(assert (= (and d!53764 (not c!16944)) b!70799))

(assert (=> b!70798 m!70839))

(declare-fun m!70843 () Bool)

(assert (=> b!70798 m!70843))

(assert (=> b!70799 m!70839))

(declare-fun m!70845 () Bool)

(assert (=> b!70799 m!70845))

(assert (=> b!70792 d!53764))

(declare-fun d!53766 () Bool)

(declare-fun c!16947 () Bool)

(assert (=> d!53766 (= c!16947 (is-AdditiveMonoid!12 thiss!9174))))

(declare-fun e!38295 () Nat!278)

(assert (=> d!53766 (= (empty!6 thiss!9174) e!38295)))

(declare-fun b!70804 () Bool)

(declare-fun empty!7 (NatMonoid!11) Nat!278)

(assert (=> b!70804 (= e!38295 (empty!7 thiss!9174))))

(declare-fun b!70805 () Bool)

(declare-fun empty!139 (NatMonoid!11) Nat!278)

(assert (=> b!70805 (= e!38295 (empty!139 thiss!9174))))

(assert (= (and d!53766 c!16947) b!70804))

(assert (= (and d!53766 (not c!16947)) b!70805))

(declare-fun m!70847 () Bool)

(assert (=> b!70804 m!70847))

(declare-fun m!70849 () Bool)

(assert (=> b!70805 m!70849))

(assert (=> b!70792 d!53766))

(push 1)

(assert (not b!70799))

(assert (not b!70805))

(assert (not b!70798))

(assert (not b!70804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53768 () Bool)

(assert (=> d!53768 true))

(assert (=> d!53768 true))

(declare-fun res!34677 () Nat!278)

(assert (=> d!53768 (= (append!168 thiss!9174 (empty!6 thiss!9174) x!27960) res!34677)))

(assert (=> b!70799 d!53768))

(declare-fun d!53770 () Bool)

(assert (=> d!53770 true))

(assert (=> d!53770 true))

(declare-fun res!34680 () Nat!278)

(assert (=> d!53770 (= (empty!139 thiss!9174) res!34680)))

(assert (=> b!70805 d!53770))

(declare-fun d!53772 () Bool)

(declare-fun +!3 (Nat!278 Nat!278) Nat!278)

(assert (=> d!53772 (= (append!3 thiss!9174 (empty!6 thiss!9174) x!27960) (+!3 (empty!6 thiss!9174) x!27960))))

(declare-fun bs!37656 () Bool)

(assert (= bs!37656 d!53772))

(assert (=> bs!37656 m!70839))

(declare-fun m!70851 () Bool)

(assert (=> bs!37656 m!70851))

(assert (=> b!70798 d!53772))

(declare-fun d!53774 () Bool)

(assert (=> d!53774 (is-AdditiveMonoid!12 thiss!9174)))

(assert (=> d!53774 (= (empty!7 thiss!9174) Zero!261)))

(assert (=> b!70804 d!53774))

(push 1)

(assert (not d!53772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53776 () Bool)

(declare-fun c!16950 () Bool)

(assert (=> d!53776 (= c!16950 (is-Zero!261 (empty!6 thiss!9174)))))

(declare-fun e!38298 () Nat!278)

(assert (=> d!53776 (= (+!3 (empty!6 thiss!9174) x!27960) e!38298)))

(declare-fun b!70810 () Bool)

(assert (=> b!70810 (= e!38298 x!27960)))

(declare-fun b!70811 () Bool)

(assert (=> b!70811 (= e!38298 (Succ!256 (+!3 (prev!817 (empty!6 thiss!9174)) x!27960)))))

(assert (= (and d!53776 c!16950) b!70810))

(assert (= (and d!53776 (not c!16950)) b!70811))

(declare-fun m!70854 () Bool)

(assert (=> b!70811 m!70854))

(assert (=> d!53772 d!53776))

(push 1)

(assert (not b!70811))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


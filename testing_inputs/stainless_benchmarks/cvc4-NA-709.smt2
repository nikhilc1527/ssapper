; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5062 () Bool)

(assert start!5062)

(declare-fun b!39103 () Bool)

(declare-fun b_free!3075 () Bool)

(declare-fun b_next!7683 () Bool)

(assert (=> b!39103 (= b_free!3075 (not b_next!7683))))

(declare-fun tp!8674 () Bool)

(declare-fun b_and!10757 () Bool)

(assert (=> b!39103 (= tp!8674 b_and!10757)))

(declare-fun b_free!3077 () Bool)

(declare-fun b_next!7685 () Bool)

(assert (=> b!39103 (= b_free!3077 (not b_next!7685))))

(declare-fun tp!8673 () Bool)

(declare-fun b_and!10759 () Bool)

(assert (=> b!39103 (= tp!8673 b_and!10759)))

(declare-fun b_free!3079 () Bool)

(declare-fun b_next!7687 () Bool)

(assert (=> b!39103 (= b_free!3079 (not b_next!7687))))

(declare-fun tp!8672 () Bool)

(declare-fun b_and!10761 () Bool)

(assert (=> b!39103 (= tp!8672 b_and!10761)))

(declare-fun b!39105 () Bool)

(assert (=> b!39105 true))

(assert (=> b!39105 true))

(declare-datatypes () ((Nat!70 (Zero!54) (Succ!51 (n!1147 Nat!70)))))

(declare-datatypes () ((tuple2!218 (tuple2!219 (_1!135 Nat!70) (_2!135 Nat!70)))))

(declare-datatypes () ((RAEqEvidence!126 (RAEqEvidence!127 (x!13540 Int) (y!1402 Int) (evidence!515 Int)))))

(declare-fun thiss!6210 () RAEqEvidence!126)

(declare-fun b_next!7689 () Bool)

(declare-fun lambda!4695 () Int)

(assert (=> b!39103 (= b_next!7683 (or (and b!39105 (= lambda!4695 (x!13540 thiss!6210))) b_next!7689))))

(declare-fun b_next!7691 () Bool)

(assert (=> b!39103 (= b_next!7685 (or (and b!39105 (= lambda!4695 (y!1402 thiss!6210))) b_next!7691))))

(declare-fun lambda!4696 () Int)

(assert (=> b!39105 (not (= lambda!4696 lambda!4695))))

(assert (=> b!39105 true))

(assert (=> b!39105 true))

(declare-fun dynLambda!705 (Int) tuple2!218)

(assert (=> (and b!39103 b!39105 (= (dynLambda!705 lambda!4696) (dynLambda!705 (x!13540 thiss!6210)))) (= lambda!4696 (x!13540 thiss!6210))))

(assert (=> (and b!39103 b!39105 (= (dynLambda!705 lambda!4696) (dynLambda!705 (y!1402 thiss!6210)))) (= lambda!4696 (y!1402 thiss!6210))))

(declare-fun b_next!7693 () Bool)

(assert (=> b!39103 (= b_next!7689 (or (and b!39105 (= lambda!4696 (x!13540 thiss!6210))) b_next!7693))))

(declare-fun b_next!7695 () Bool)

(assert (=> b!39103 (= b_next!7691 (or (and b!39105 (= lambda!4696 (y!1402 thiss!6210))) b_next!7695))))

(declare-fun m!40301 () Bool)

(assert (=> b!39105 m!40301))

(declare-fun lambda!4697 () Int)

(declare-fun dynLambda!706 (Int) Bool)

(assert (=> (and b!39103 b!39105 (= (dynLambda!706 lambda!4697) (dynLambda!706 (evidence!515 thiss!6210)))) (= lambda!4697 (evidence!515 thiss!6210))))

(declare-fun b_next!7697 () Bool)

(assert (=> b!39103 (= b_next!7687 (or (and b!39105 (= lambda!4697 (evidence!515 thiss!6210))) b_next!7697))))

(declare-fun b!39102 () Bool)

(declare-fun res!18686 () Bool)

(declare-fun e!20157 () Bool)

(assert (=> b!39102 (=> (not res!18686) (not e!20157))))

(declare-datatypes () ((Unit!343 (Unit!344))))

(declare-fun x$105!1 () Unit!343)

(declare-fun inlined!5532 () Unit!343)

(assert (=> b!39102 (= res!18686 (= x$105!1 inlined!5532))))

(declare-fun e!20158 () Bool)

(assert (=> b!39103 (= e!20158 (and tp!8674 tp!8673 tp!8672))))

(declare-fun b!39104 () Bool)

(declare-fun n1!316 () Nat!70)

(declare-fun n2!332 () Nat!70)

(declare-fun project!0 (Nat!70) tuple2!218)

(declare-fun pair!0 (Nat!70 Nat!70) Nat!70)

(assert (=> b!39104 (= e!20157 (not (= (project!0 (pair!0 n1!316 n2!332)) (tuple2!219 n1!316 n2!332))))))

(declare-fun res!18688 () Bool)

(assert (=> b!39105 (=> (not res!18688) (not e!20157))))

(assert (=> b!39105 (= res!18688 (= thiss!6210 (RAEqEvidence!127 lambda!4695 lambda!4696 lambda!4697)))))

(declare-fun res!18685 () Bool)

(assert (=> start!5062 (=> (not res!18685) (not e!20157))))

(declare-fun x$98!1 () tuple2!218)

(declare-fun log2_and_remainder!0 (Nat!70) tuple2!218)

(assert (=> start!5062 (= res!18685 (= x$98!1 (tuple2!219 (_1!135 (log2_and_remainder!0 (Succ!51 (pair!0 n1!316 n2!332)))) (_2!135 (log2_and_remainder!0 (Succ!51 (pair!0 n1!316 n2!332)))))))))

(assert (=> start!5062 e!20157))

(assert (=> start!5062 true))

(declare-fun inv!712 (RAEqEvidence!126) Bool)

(assert (=> start!5062 (and (inv!712 thiss!6210) e!20158)))

(declare-fun b!39106 () Bool)

(declare-fun res!18689 () Bool)

(assert (=> b!39106 (=> (not res!18689) (not e!20157))))

(declare-fun Unit!345 () Unit!343)

(assert (=> b!39106 (= res!18689 (= inlined!5532 Unit!345))))

(assert (=> b!39106 (= (dynLambda!705 (x!13540 thiss!6210)) (dynLambda!705 (y!1402 thiss!6210)))))

(declare-fun b!39107 () Bool)

(declare-fun res!18687 () Bool)

(assert (=> b!39107 (=> (not res!18687) (not e!20157))))

(declare-fun remainder!2 () Nat!70)

(declare-fun p1!72 () Nat!70)

(assert (=> b!39107 (= res!18687 (and (= p1!72 (_1!135 x$98!1)) (= remainder!2 (_2!135 x$98!1))))))

(declare-fun b!39108 () Bool)

(declare-fun res!18690 () Bool)

(assert (=> b!39108 (=> (not res!18690) (not e!20157))))

(declare-fun p2!66 () Nat!70)

(declare-fun /!2 (Nat!70 Nat!70) Nat!70)

(declare-fun -!4 (Nat!70 Nat!70) Nat!70)

(assert (=> b!39108 (= res!18690 (= p2!66 (/!2 (-!4 remainder!2 (Succ!51 Zero!54)) (Succ!51 (Succ!51 Zero!54)))))))

(assert (= (and start!5062 res!18685) b!39107))

(assert (= (and b!39107 res!18687) b!39108))

(assert (= (and b!39108 res!18690) b!39105))

(assert (= (and b!39105 res!18688) b!39106))

(assert (= (and b!39106 res!18689) b!39102))

(assert (= (and b!39102 res!18686) b!39104))

(assert (= start!5062 b!39103))

(declare-fun b_lambda!10337 () Bool)

(assert (=> (not b_lambda!10337) (not b!39106)))

(declare-fun t!6810 () Bool)

(declare-fun tb!5989 () Bool)

(assert (=> (and b!39103 (= (x!13540 thiss!6210) (x!13540 thiss!6210)) t!6810) tb!5989))

(declare-fun result!6265 () Bool)

(assert (=> tb!5989 (= result!6265 true)))

(assert (=> b!39106 t!6810))

(declare-fun b_and!10763 () Bool)

(assert (= b_and!10757 (and (=> t!6810 result!6265) b_and!10763)))

(declare-fun t!6812 () Bool)

(declare-fun tb!5991 () Bool)

(assert (=> (and b!39103 (= (y!1402 thiss!6210) (x!13540 thiss!6210)) t!6812) tb!5991))

(declare-fun result!6267 () Bool)

(assert (=> tb!5991 (= result!6267 true)))

(assert (=> b!39106 t!6812))

(declare-fun b_and!10765 () Bool)

(assert (= b_and!10759 (and (=> t!6812 result!6267) b_and!10765)))

(declare-fun b_lambda!10339 () Bool)

(assert (=> (not b_lambda!10339) (not b!39106)))

(declare-fun t!6814 () Bool)

(declare-fun tb!5993 () Bool)

(assert (=> (and b!39103 (= (x!13540 thiss!6210) (y!1402 thiss!6210)) t!6814) tb!5993))

(declare-fun result!6269 () Bool)

(assert (=> tb!5993 (= result!6269 true)))

(assert (=> b!39106 t!6814))

(declare-fun b_and!10767 () Bool)

(assert (= b_and!10763 (and (=> t!6814 result!6269) b_and!10767)))

(declare-fun t!6816 () Bool)

(declare-fun tb!5995 () Bool)

(assert (=> (and b!39103 (= (y!1402 thiss!6210) (y!1402 thiss!6210)) t!6816) tb!5995))

(declare-fun result!6271 () Bool)

(assert (=> tb!5995 (= result!6271 true)))

(assert (=> b!39106 t!6816))

(declare-fun b_and!10769 () Bool)

(assert (= b_and!10765 (and (=> t!6816 result!6271) b_and!10769)))

(declare-fun m!40303 () Bool)

(assert (=> b!39104 m!40303))

(assert (=> b!39104 m!40303))

(declare-fun m!40305 () Bool)

(assert (=> b!39104 m!40305))

(assert (=> start!5062 m!40303))

(declare-fun m!40307 () Bool)

(assert (=> start!5062 m!40307))

(declare-fun m!40309 () Bool)

(assert (=> start!5062 m!40309))

(declare-fun m!40311 () Bool)

(assert (=> b!39106 m!40311))

(declare-fun m!40313 () Bool)

(assert (=> b!39106 m!40313))

(declare-fun m!40315 () Bool)

(assert (=> b!39108 m!40315))

(assert (=> b!39108 m!40315))

(declare-fun m!40317 () Bool)

(assert (=> b!39108 m!40317))

(push 1)

(assert b_and!10769)

(assert (not b_lambda!10337))

(assert b_and!10761)

(assert (not b_lambda!10339))

(assert b_and!10767)

(assert (not start!5062))

(assert (not b!39108))

(assert (not b_next!7697))

(assert (not b_next!7693))

(assert (not b!39104))

(assert (not b_next!7695))

(assert (not b!39105))

(check-sat)

(pop 1)

(push 1)

(assert b_and!10769)

(assert b_and!10761)

(assert b_and!10767)

(assert (not b_next!7697))

(assert (not b_next!7693))

(assert (not b_next!7695))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6172 () Bool)

(assert start!6172)

(declare-fun b!45843 () Bool)

(declare-fun b_free!5043 () Bool)

(declare-fun b_next!23641 () Bool)

(assert (=> b!45843 (= b_free!5043 (not b_next!23641))))

(declare-fun tp!11624 () Bool)

(declare-fun b_and!34783 () Bool)

(assert (=> b!45843 (= tp!11624 b_and!34783)))

(declare-fun b_free!5045 () Bool)

(declare-fun b_next!23643 () Bool)

(assert (=> b!45843 (= b_free!5045 (not b_next!23643))))

(declare-fun tp!11626 () Bool)

(declare-fun b_and!34785 () Bool)

(assert (=> b!45843 (= tp!11626 b_and!34785)))

(declare-fun b_free!5047 () Bool)

(declare-fun b_next!23645 () Bool)

(assert (=> b!45843 (= b_free!5047 (not b_next!23645))))

(declare-fun tp!11625 () Bool)

(declare-fun b_and!34787 () Bool)

(assert (=> b!45843 (= tp!11625 b_and!34787)))

(declare-fun b!45840 () Bool)

(assert (=> b!45840 true))

(declare-datatypes () ((Unit!566 (Unit!567))))

(declare-datatypes () ((RAEqEvidence!286 (RAEqEvidence!287 (x!16987 Int) (y!1482 Int) (evidence!595 Int)))))

(declare-fun thiss!5647 () RAEqEvidence!286)

(declare-fun lambda!6558 () Int)

(declare-fun b_next!23647 () Bool)

(assert (=> b!45843 (= b_next!23641 (or (and b!45840 (= lambda!6558 (x!16987 thiss!5647))) b_next!23647))))

(declare-fun b_next!23649 () Bool)

(assert (=> b!45843 (= b_next!23643 (or (and b!45840 (= lambda!6558 (y!1482 thiss!5647))) b_next!23649))))

(declare-fun lambda!6559 () Int)

(assert (=> b!45840 (not (= lambda!6559 lambda!6558))))

(declare-fun dynLambda!779 (Int) Bool)

(assert (=> (and b!45843 b!45840 (= (dynLambda!779 lambda!6559) (dynLambda!779 (x!16987 thiss!5647)))) (= lambda!6559 (x!16987 thiss!5647))))

(assert (=> (and b!45843 b!45840 (= (dynLambda!779 lambda!6559) (dynLambda!779 (y!1482 thiss!5647)))) (= lambda!6559 (y!1482 thiss!5647))))

(declare-fun b_next!23651 () Bool)

(assert (=> b!45843 (= b_next!23647 (or (and b!45840 (= lambda!6559 (x!16987 thiss!5647))) b_next!23651))))

(declare-fun b_next!23653 () Bool)

(assert (=> b!45843 (= b_next!23649 (or (and b!45840 (= lambda!6559 (y!1482 thiss!5647))) b_next!23653))))

(assert (=> b!45840 true))

(declare-fun b_next!23655 () Bool)

(declare-fun lambda!6560 () Int)

(assert (=> b!45843 (= b_next!23645 (or (and b!45840 (= lambda!6560 (evidence!595 thiss!5647))) b_next!23655))))

(declare-fun res!21657 () Bool)

(declare-fun e!23782 () Bool)

(assert (=> b!45840 (=> (not res!21657) (not e!23782))))

(assert (=> b!45840 (= res!21657 (= thiss!5647 (RAEqEvidence!287 lambda!6558 lambda!6559 lambda!6560)))))

(declare-fun b!45841 () Bool)

(declare-fun res!21658 () Bool)

(assert (=> b!45841 (=> (not res!21658) (not e!23782))))

(declare-fun x$73!19 () Unit!566)

(declare-fun inlined!4827 () Unit!566)

(assert (=> b!45841 (= res!21658 (= x$73!19 inlined!4827))))

(declare-fun b!45842 () Bool)

(declare-datatypes () ((Nat!180 (Zero!164) (Succ!161 (n!1313 Nat!180)))))

(declare-fun n!723 () Nat!180)

(declare-fun isEven!1 (Nat!180) Bool)

(declare-fun *!4 (Nat!180 Nat!180) Nat!180)

(assert (=> b!45842 (= e!23782 (not (isEven!1 (*!4 (Succ!161 (Succ!161 Zero!164)) n!723))))))

(declare-fun e!23783 () Bool)

(assert (=> b!45843 (= e!23783 (and tp!11624 tp!11626 tp!11625))))

(declare-fun res!21656 () Bool)

(assert (=> start!6172 (=> (not res!21656) (not e!23782))))

(assert (=> start!6172 (= res!21656 (not (is-Zero!164 n!723)))))

(assert (=> start!6172 e!23782))

(assert (=> start!6172 true))

(declare-fun inv!792 (RAEqEvidence!286) Bool)

(assert (=> start!6172 (and (inv!792 thiss!5647) e!23783)))

(declare-fun b!45844 () Bool)

(declare-fun res!21659 () Bool)

(assert (=> b!45844 (=> (not res!21659) (not e!23782))))

(declare-fun Unit!568 () Unit!566)

(assert (=> b!45844 (= res!21659 (= inlined!4827 Unit!568))))

(assert (=> b!45844 (= (dynLambda!779 (x!16987 thiss!5647)) (dynLambda!779 (y!1482 thiss!5647)))))

(assert (= (and start!6172 res!21656) b!45840))

(assert (= (and b!45840 res!21657) b!45844))

(assert (= (and b!45844 res!21659) b!45841))

(assert (= (and b!45841 res!21658) b!45842))

(assert (= start!6172 b!45843))

(declare-fun b_lambda!12205 () Bool)

(assert (=> (not b_lambda!12205) (not b!45844)))

(declare-fun t!27269 () Bool)

(declare-fun tb!26447 () Bool)

(assert (=> (and b!45843 (= (x!16987 thiss!5647) (x!16987 thiss!5647)) t!27269) tb!26447))

(declare-fun result!26723 () Bool)

(assert (=> tb!26447 (= result!26723 true)))

(assert (=> b!45844 t!27269))

(declare-fun b_and!34789 () Bool)

(assert (= b_and!34783 (and (=> t!27269 result!26723) b_and!34789)))

(declare-fun t!27271 () Bool)

(declare-fun tb!26449 () Bool)

(assert (=> (and b!45843 (= (y!1482 thiss!5647) (x!16987 thiss!5647)) t!27271) tb!26449))

(declare-fun result!26725 () Bool)

(assert (=> tb!26449 (= result!26725 true)))

(assert (=> b!45844 t!27271))

(declare-fun b_and!34791 () Bool)

(assert (= b_and!34785 (and (=> t!27271 result!26725) b_and!34791)))

(declare-fun b_lambda!12207 () Bool)

(assert (=> (not b_lambda!12207) (not b!45844)))

(declare-fun t!27273 () Bool)

(declare-fun tb!26451 () Bool)

(assert (=> (and b!45843 (= (x!16987 thiss!5647) (y!1482 thiss!5647)) t!27273) tb!26451))

(declare-fun result!26727 () Bool)

(assert (=> tb!26451 (= result!26727 true)))

(assert (=> b!45844 t!27273))

(declare-fun b_and!34793 () Bool)

(assert (= b_and!34789 (and (=> t!27273 result!26727) b_and!34793)))

(declare-fun t!27275 () Bool)

(declare-fun tb!26453 () Bool)

(assert (=> (and b!45843 (= (y!1482 thiss!5647) (y!1482 thiss!5647)) t!27275) tb!26453))

(declare-fun result!26729 () Bool)

(assert (=> tb!26453 (= result!26729 true)))

(assert (=> b!45844 t!27275))

(declare-fun b_and!34795 () Bool)

(assert (= b_and!34791 (and (=> t!27275 result!26729) b_and!34795)))

(declare-fun m!48749 () Bool)

(assert (=> b!45842 m!48749))

(assert (=> b!45842 m!48749))

(declare-fun m!48751 () Bool)

(assert (=> b!45842 m!48751))

(declare-fun m!48753 () Bool)

(assert (=> start!6172 m!48753))

(declare-fun m!48755 () Bool)

(assert (=> b!45844 m!48755))

(declare-fun m!48757 () Bool)

(assert (=> b!45844 m!48757))

(push 1)

(assert (not b!45842))

(assert (not b_lambda!12205))

(assert (not b_next!23655))

(assert b_and!34793)

(assert (not b_lambda!12207))

(assert (not b_next!23651))

(assert b_and!34795)

(assert b_and!34787)

(assert (not b_next!23653))

(assert (not start!6172))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!23655))

(assert b_and!34793)

(assert (not b_next!23651))

(assert b_and!34795)

(assert b_and!34787)

(assert (not b_next!23653))

(check-sat)

(pop 1)


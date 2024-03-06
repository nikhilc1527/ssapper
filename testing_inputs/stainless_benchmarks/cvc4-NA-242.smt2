; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1858 () Bool)

(assert start!1858)

(declare-fun b!9280 () Bool)

(declare-fun b_free!1055 () Bool)

(declare-fun b_next!2589 () Bool)

(assert (=> b!9280 (= b_free!1055 (not b_next!2589))))

(declare-fun tp!1721 () Bool)

(declare-fun b_and!3947 () Bool)

(assert (=> b!9280 (= tp!1721 b_and!3947)))

(declare-fun b_free!1057 () Bool)

(declare-fun b_next!2591 () Bool)

(assert (=> b!9280 (= b_free!1057 (not b_next!2591))))

(declare-fun tp!1718 () Bool)

(declare-fun b_and!3949 () Bool)

(assert (=> b!9280 (= tp!1718 b_and!3949)))

(declare-fun b_free!1059 () Bool)

(declare-fun b_next!2593 () Bool)

(assert (=> b!9280 (= b_free!1059 (not b_next!2593))))

(declare-fun tp!1720 () Bool)

(declare-fun b_and!3951 () Bool)

(assert (=> b!9280 (= tp!1720 b_and!3951)))

(declare-fun b_free!1061 () Bool)

(declare-fun b_next!2595 () Bool)

(assert (=> start!1858 (= b_free!1061 (not b_next!2595))))

(declare-fun tp!1722 () Bool)

(declare-fun b_and!3953 () Bool)

(assert (=> start!1858 (= tp!1722 b_and!3953)))

(declare-fun b!9281 () Bool)

(declare-fun b_free!1063 () Bool)

(declare-fun b_next!2597 () Bool)

(assert (=> b!9281 (= b_free!1063 (not b_next!2597))))

(declare-fun tp!1723 () Bool)

(declare-fun b_and!3955 () Bool)

(assert (=> b!9281 (= tp!1723 b_and!3955)))

(declare-fun b_free!1065 () Bool)

(declare-fun b_next!2599 () Bool)

(assert (=> b!9281 (= b_free!1065 (not b_next!2599))))

(declare-fun tp!1717 () Bool)

(declare-fun b_and!3957 () Bool)

(assert (=> b!9281 (= tp!1717 b_and!3957)))

(declare-fun b_free!1067 () Bool)

(declare-fun b_next!2601 () Bool)

(assert (=> b!9281 (= b_free!1067 (not b_next!2601))))

(declare-fun tp!1719 () Bool)

(declare-fun b_and!3959 () Bool)

(assert (=> b!9281 (= tp!1719 b_and!3959)))

(declare-fun f!585 () Int)

(declare-fun lambda!2299 () Int)

(declare-fun b_next!2603 () Bool)

(assert (=> start!1858 (= b_next!2595 (or (and start!1858 (= lambda!2299 f!585)) b_next!2603))))

(declare-fun b!9279 () Bool)

(declare-fun e!5479 () Bool)

(assert (=> b!9279 (= e!5479 false)))

(declare-fun e!5477 () Bool)

(assert (=> b!9280 (= e!5477 (and tp!1721 tp!1718 tp!1720))))

(declare-fun b!9278 () Bool)

(declare-fun res!2991 () Bool)

(assert (=> b!9278 (=> (not res!2991) (not e!5479))))

(declare-datatypes () ((ProofOps!150 (ProofOps!151 (prop!195 Bool)))))

(declare-fun thiss!829 () ProofOps!150)

(declare-datatypes () ((Balance!203 (Balance!204 (extraOpen!142 Int) (extraClose!142 Int)))))

(declare-datatypes () ((Tree!64 (Branch!55 (left!433 Tree!64) (right!436 Tree!64)) (Leaf!137 (value!1306 Balance!203)))))

(declare-fun tree!25 () Tree!64)

(declare-fun fold!40 (Tree!64 Int) Balance!203)

(declare-datatypes () ((List!218 (Nil!216) (Cons!215 (head!433 Balance!203) (tail!445 List!218)))))

(declare-fun foldRight1!71 (List!218 Int) Balance!203)

(declare-fun toList!64 (Tree!64) List!218)

(assert (=> b!9278 (= res!2991 (= thiss!829 (ProofOps!151 (= (fold!40 tree!25 f!585) (foldRight1!71 (toList!64 tree!25) f!585)))))))

(declare-fun e!5478 () Bool)

(assert (=> b!9281 (= e!5478 (and tp!1723 tp!1717 tp!1719))))

(declare-fun res!2992 () Bool)

(assert (=> start!1858 (=> (not res!2992) (not e!5479))))

(assert (=> start!1858 (= res!2992 (= f!585 lambda!2299))))

(assert (=> start!1858 e!5479))

(assert (=> start!1858 true))

(declare-datatypes () ((EqEvidence!166 (EqEvidence!167 (x!5194 Int) (y!571 Int) (evidence!150 Int)))))

(declare-fun that!232 () EqEvidence!166)

(declare-fun inv!326 (EqEvidence!166) Bool)

(assert (=> start!1858 (and (inv!326 that!232) e!5477)))

(assert (=> start!1858 tp!1722))

(declare-fun thiss!854 () EqEvidence!166)

(assert (=> start!1858 (and (inv!326 thiss!854) e!5478)))

(assert (= (and start!1858 res!2992) b!9278))

(assert (= (and b!9278 res!2991) b!9279))

(assert (= start!1858 b!9280))

(assert (= start!1858 b!9281))

(declare-fun m!12317 () Bool)

(assert (=> b!9278 m!12317))

(declare-fun m!12319 () Bool)

(assert (=> b!9278 m!12319))

(assert (=> b!9278 m!12319))

(declare-fun m!12321 () Bool)

(assert (=> b!9278 m!12321))

(declare-fun m!12323 () Bool)

(assert (=> start!1858 m!12323))

(declare-fun m!12325 () Bool)

(assert (=> start!1858 m!12325))

(push 1)

(assert (not b_next!2591))

(assert b_and!3957)

(assert (not b!9278))

(assert b_and!3947)

(assert b_and!3949)

(assert (not b_next!2603))

(assert b_and!3953)

(assert (not b_next!2593))

(assert (not b_next!2601))

(assert b_and!3959)

(assert (not b_next!2599))

(assert (not start!1858))

(assert b_and!3955)

(assert (not b_next!2597))

(assert (not b_next!2589))

(assert b_and!3951)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2591))

(assert b_and!3957)

(assert b_and!3947)

(assert b_and!3949)

(assert (not b_next!2603))

(assert b_and!3953)

(assert (not b_next!2593))

(assert (not b_next!2601))

(assert b_and!3959)

(assert (not b_next!2599))

(assert b_and!3955)

(assert (not b_next!2597))

(assert (not b_next!2589))

(assert b_and!3951)

(check-sat)

(pop 1)


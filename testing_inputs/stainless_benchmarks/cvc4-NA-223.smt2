; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1718 () Bool)

(assert start!1718)

(declare-fun b_free!801 () Bool)

(declare-fun b_next!1813 () Bool)

(assert (=> start!1718 (= b_free!801 (not b_next!1813))))

(declare-fun tp!1339 () Bool)

(declare-fun b_and!3113 () Bool)

(assert (=> start!1718 (= tp!1339 b_and!3113)))

(declare-fun b!8654 () Bool)

(declare-fun b_free!803 () Bool)

(declare-fun b_next!1815 () Bool)

(assert (=> b!8654 (= b_free!803 (not b_next!1815))))

(declare-fun tp!1338 () Bool)

(declare-fun b_and!3115 () Bool)

(assert (=> b!8654 (= tp!1338 b_and!3115)))

(declare-fun b_free!805 () Bool)

(declare-fun b_next!1817 () Bool)

(assert (=> b!8654 (= b_free!805 (not b_next!1817))))

(declare-fun tp!1342 () Bool)

(declare-fun b_and!3117 () Bool)

(assert (=> b!8654 (= tp!1342 b_and!3117)))

(declare-fun b_free!807 () Bool)

(declare-fun b_next!1819 () Bool)

(assert (=> b!8654 (= b_free!807 (not b_next!1819))))

(declare-fun tp!1341 () Bool)

(declare-fun b_and!3119 () Bool)

(assert (=> b!8654 (= tp!1341 b_and!3119)))

(declare-fun b!8655 () Bool)

(declare-fun b_free!809 () Bool)

(declare-fun b_next!1821 () Bool)

(assert (=> b!8655 (= b_free!809 (not b_next!1821))))

(declare-fun tp!1336 () Bool)

(declare-fun b_and!3121 () Bool)

(assert (=> b!8655 (= tp!1336 b_and!3121)))

(declare-fun b_free!811 () Bool)

(declare-fun b_next!1823 () Bool)

(assert (=> b!8655 (= b_free!811 (not b_next!1823))))

(declare-fun tp!1337 () Bool)

(declare-fun b_and!3123 () Bool)

(assert (=> b!8655 (= tp!1337 b_and!3123)))

(declare-fun b_free!813 () Bool)

(declare-fun b_next!1825 () Bool)

(assert (=> b!8655 (= b_free!813 (not b_next!1825))))

(declare-fun tp!1340 () Bool)

(declare-fun b_and!3125 () Bool)

(assert (=> b!8655 (= tp!1340 b_and!3125)))

(declare-fun b_next!1827 () Bool)

(declare-fun f!585 () Int)

(declare-fun lambda!2002 () Int)

(assert (=> start!1718 (= b_next!1813 (or (and start!1718 (= lambda!2002 f!585)) b_next!1827))))

(declare-fun e!5015 () Bool)

(assert (=> b!8654 (= e!5015 (and tp!1338 tp!1342 tp!1341))))

(declare-fun res!2681 () Bool)

(declare-fun e!5017 () Bool)

(assert (=> start!1718 (=> (not res!2681) (not e!5017))))

(assert (=> start!1718 (= res!2681 (= f!585 lambda!2002))))

(assert (=> start!1718 e!5017))

(assert (=> start!1718 true))

(assert (=> start!1718 tp!1339))

(declare-datatypes () ((Balance!165 (Balance!166 (extraOpen!123 Int) (extraClose!123 Int)))))

(declare-datatypes () ((EqEvidence!130 (EqEvidence!131 (x!4720 Int) (y!525 Int) (evidence!132 Int)))))

(declare-fun thiss!839 () EqEvidence!130)

(declare-fun inv!300 (EqEvidence!130) Bool)

(assert (=> start!1718 (and (inv!300 thiss!839) e!5015)))

(declare-fun that!211 () EqEvidence!130)

(declare-fun e!5016 () Bool)

(assert (=> start!1718 (and (inv!300 that!211) e!5016)))

(declare-fun b!8653 () Bool)

(assert (=> b!8653 (= e!5017 false)))

(declare-fun b!8652 () Bool)

(declare-fun res!2680 () Bool)

(assert (=> b!8652 (=> (not res!2680) (not e!5017))))

(declare-datatypes () ((ProofOps!112 (ProofOps!113 (prop!170 Bool)))))

(declare-fun thiss!829 () ProofOps!112)

(declare-datatypes () ((Tree!45 (Branch!36 (left!384 Tree!45) (right!387 Tree!45)) (Leaf!118 (value!1287 Balance!165)))))

(declare-fun tree!25 () Tree!45)

(declare-fun fold!21 (Tree!45 Int) Balance!165)

(declare-datatypes () ((List!199 (Nil!197) (Cons!196 (head!414 Balance!165) (tail!426 List!199)))))

(declare-fun foldRight1!52 (List!199 Int) Balance!165)

(declare-fun toList!45 (Tree!45) List!199)

(assert (=> b!8652 (= res!2680 (= thiss!829 (ProofOps!113 (= (fold!21 tree!25 f!585) (foldRight1!52 (toList!45 tree!25) f!585)))))))

(assert (=> b!8655 (= e!5016 (and tp!1336 tp!1337 tp!1340))))

(assert (= (and start!1718 res!2681) b!8652))

(assert (= (and b!8652 res!2680) b!8653))

(assert (= start!1718 b!8654))

(assert (= start!1718 b!8655))

(declare-fun m!11545 () Bool)

(assert (=> start!1718 m!11545))

(declare-fun m!11547 () Bool)

(assert (=> start!1718 m!11547))

(declare-fun m!11549 () Bool)

(assert (=> b!8652 m!11549))

(declare-fun m!11551 () Bool)

(assert (=> b!8652 m!11551))

(assert (=> b!8652 m!11551))

(declare-fun m!11553 () Bool)

(assert (=> b!8652 m!11553))

(push 1)

(assert (not b_next!1819))

(assert b_and!3125)

(assert b_and!3115)

(assert b_and!3117)

(assert (not b!8652))

(assert (not b_next!1823))

(assert b_and!3123)

(assert b_and!3119)

(assert (not b_next!1815))

(assert (not start!1718))

(assert (not b_next!1825))

(assert b_and!3121)

(assert b_and!3113)

(assert (not b_next!1827))

(assert (not b_next!1821))

(assert (not b_next!1817))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1819))

(assert b_and!3125)

(assert b_and!3115)

(assert b_and!3117)

(assert (not b_next!1823))

(assert b_and!3123)

(assert b_and!3119)

(assert (not b_next!1815))

(assert (not b_next!1825))

(assert b_and!3121)

(assert b_and!3113)

(assert (not b_next!1827))

(assert (not b_next!1821))

(assert (not b_next!1817))

(check-sat)

(pop 1)


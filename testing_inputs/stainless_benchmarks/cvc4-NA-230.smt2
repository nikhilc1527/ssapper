; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1758 () Bool)

(assert start!1758)

(declare-fun b!8853 () Bool)

(declare-fun b_free!897 () Bool)

(declare-fun b_next!2047 () Bool)

(assert (=> b!8853 (= b_free!897 (not b_next!2047))))

(declare-fun tp!1483 () Bool)

(declare-fun b_and!3383 () Bool)

(assert (=> b!8853 (= tp!1483 b_and!3383)))

(declare-fun b_free!899 () Bool)

(declare-fun b_next!2049 () Bool)

(assert (=> b!8853 (= b_free!899 (not b_next!2049))))

(declare-fun tp!1478 () Bool)

(declare-fun b_and!3385 () Bool)

(assert (=> b!8853 (= tp!1478 b_and!3385)))

(declare-fun b_free!901 () Bool)

(declare-fun b_next!2051 () Bool)

(assert (=> b!8853 (= b_free!901 (not b_next!2051))))

(declare-fun tp!1481 () Bool)

(declare-fun b_and!3387 () Bool)

(assert (=> b!8853 (= tp!1481 b_and!3387)))

(declare-fun b_free!903 () Bool)

(declare-fun b_next!2053 () Bool)

(assert (=> start!1758 (= b_free!903 (not b_next!2053))))

(declare-fun tp!1482 () Bool)

(declare-fun b_and!3389 () Bool)

(assert (=> start!1758 (= tp!1482 b_and!3389)))

(declare-fun b!8854 () Bool)

(declare-fun b_free!905 () Bool)

(declare-fun b_next!2055 () Bool)

(assert (=> b!8854 (= b_free!905 (not b_next!2055))))

(declare-fun tp!1480 () Bool)

(declare-fun b_and!3391 () Bool)

(assert (=> b!8854 (= tp!1480 b_and!3391)))

(declare-fun b_free!907 () Bool)

(declare-fun b_next!2057 () Bool)

(assert (=> b!8854 (= b_free!907 (not b_next!2057))))

(declare-fun tp!1479 () Bool)

(declare-fun b_and!3393 () Bool)

(assert (=> b!8854 (= tp!1479 b_and!3393)))

(declare-fun f!585 () Int)

(declare-fun b_next!2059 () Bool)

(declare-fun lambda!2088 () Int)

(assert (=> start!1758 (= b_next!2053 (or (and start!1758 (= lambda!2088 f!585)) b_next!2059))))

(declare-fun b!8851 () Bool)

(declare-fun res!2773 () Bool)

(declare-fun e!5167 () Bool)

(assert (=> b!8851 (=> (not res!2773) (not e!5167))))

(declare-datatypes () ((ProofOps!126 (ProofOps!127 (prop!177 Bool)))))

(declare-fun thiss!829 () ProofOps!126)

(declare-datatypes () ((Balance!179 (Balance!180 (extraOpen!130 Int) (extraClose!130 Int)))))

(declare-datatypes () ((Tree!52 (Branch!43 (left!400 Tree!52) (right!403 Tree!52)) (Leaf!125 (value!1294 Balance!179)))))

(declare-fun tree!25 () Tree!52)

(declare-fun fold!28 (Tree!52 Int) Balance!179)

(declare-datatypes () ((List!206 (Nil!204) (Cons!203 (head!421 Balance!179) (tail!433 List!206)))))

(declare-fun foldRight1!59 (List!206 Int) Balance!179)

(declare-fun toList!52 (Tree!52) List!206)

(assert (=> b!8851 (= res!2773 (= thiss!829 (ProofOps!127 (= (fold!28 tree!25 f!585) (foldRight1!59 (toList!52 tree!25) f!585)))))))

(declare-fun e!5165 () Bool)

(assert (=> b!8854 (= e!5165 (and tp!1480 tp!1479))))

(declare-fun e!5166 () Bool)

(assert (=> b!8853 (= e!5166 (and tp!1483 tp!1478 tp!1481))))

(declare-fun b!8852 () Bool)

(assert (=> b!8852 (= e!5167 false)))

(declare-fun res!2772 () Bool)

(assert (=> start!1758 (=> (not res!2772) (not e!5167))))

(assert (=> start!1758 (= res!2772 (= f!585 lambda!2088))))

(assert (=> start!1758 e!5167))

(assert (=> start!1758 true))

(declare-datatypes () ((EqEvidence!144 (EqEvidence!145 (x!4837 Int) (y!540 Int) (evidence!139 Int)))))

(declare-fun thiss!837 () EqEvidence!144)

(declare-fun inv!309 (EqEvidence!144) Bool)

(assert (=> start!1758 (and (inv!309 thiss!837) e!5166)))

(assert (=> start!1758 tp!1482))

(declare-datatypes () ((EqProof!66 (EqProof!67 (x!4838 Int) (y!541 Int)))))

(declare-fun that!213 () EqProof!66)

(declare-fun inv!310 (EqProof!66) Bool)

(assert (=> start!1758 (and (inv!310 that!213) e!5165)))

(assert (= (and start!1758 res!2772) b!8851))

(assert (= (and b!8851 res!2773) b!8852))

(assert (= start!1758 b!8853))

(assert (= start!1758 b!8854))

(declare-fun m!11745 () Bool)

(assert (=> b!8851 m!11745))

(declare-fun m!11747 () Bool)

(assert (=> b!8851 m!11747))

(assert (=> b!8851 m!11747))

(declare-fun m!11749 () Bool)

(assert (=> b!8851 m!11749))

(declare-fun m!11751 () Bool)

(assert (=> start!1758 m!11751))

(declare-fun m!11753 () Bool)

(assert (=> start!1758 m!11753))

(push 1)

(assert b_and!3383)

(assert (not b!8851))

(assert b_and!3385)

(assert b_and!3389)

(assert (not b_next!2051))

(assert (not b_next!2049))

(assert b_and!3387)

(assert b_and!3391)

(assert (not b_next!2047))

(assert (not b_next!2057))

(assert (not b_next!2055))

(assert (not b_next!2059))

(assert (not start!1758))

(assert b_and!3393)

(check-sat)

(pop 1)

(push 1)

(assert b_and!3383)

(assert b_and!3385)

(assert b_and!3389)

(assert (not b_next!2051))

(assert (not b_next!2049))

(assert b_and!3387)

(assert b_and!3391)

(assert (not b_next!2047))

(assert (not b_next!2057))

(assert (not b_next!2055))

(assert (not b_next!2059))

(assert b_and!3393)

(check-sat)

(pop 1)


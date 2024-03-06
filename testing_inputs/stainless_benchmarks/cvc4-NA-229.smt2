; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1756 () Bool)

(assert start!1756)

(declare-fun b!8841 () Bool)

(declare-fun b_free!885 () Bool)

(declare-fun b_next!2033 () Bool)

(assert (=> b!8841 (= b_free!885 (not b_next!2033))))

(declare-fun tp!1463 () Bool)

(declare-fun b_and!3371 () Bool)

(assert (=> b!8841 (= tp!1463 b_and!3371)))

(declare-fun b_free!887 () Bool)

(declare-fun b_next!2035 () Bool)

(assert (=> b!8841 (= b_free!887 (not b_next!2035))))

(declare-fun tp!1460 () Bool)

(declare-fun b_and!3373 () Bool)

(assert (=> b!8841 (= tp!1460 b_and!3373)))

(declare-fun b_free!889 () Bool)

(declare-fun b_next!2037 () Bool)

(assert (=> b!8841 (= b_free!889 (not b_next!2037))))

(declare-fun tp!1461 () Bool)

(declare-fun b_and!3375 () Bool)

(assert (=> b!8841 (= tp!1461 b_and!3375)))

(declare-fun b_free!891 () Bool)

(declare-fun b_next!2039 () Bool)

(assert (=> start!1756 (= b_free!891 (not b_next!2039))))

(declare-fun tp!1464 () Bool)

(declare-fun b_and!3377 () Bool)

(assert (=> start!1756 (= tp!1464 b_and!3377)))

(declare-fun b!8842 () Bool)

(declare-fun b_free!893 () Bool)

(declare-fun b_next!2041 () Bool)

(assert (=> b!8842 (= b_free!893 (not b_next!2041))))

(declare-fun tp!1462 () Bool)

(declare-fun b_and!3379 () Bool)

(assert (=> b!8842 (= tp!1462 b_and!3379)))

(declare-fun b_free!895 () Bool)

(declare-fun b_next!2043 () Bool)

(assert (=> b!8842 (= b_free!895 (not b_next!2043))))

(declare-fun tp!1465 () Bool)

(declare-fun b_and!3381 () Bool)

(assert (=> b!8842 (= tp!1465 b_and!3381)))

(declare-fun f!585 () Int)

(declare-fun b_next!2045 () Bool)

(declare-fun lambda!2085 () Int)

(assert (=> start!1756 (= b_next!2039 (or (and start!1756 (= lambda!2085 f!585)) b_next!2045))))

(declare-fun b!8840 () Bool)

(declare-fun e!5156 () Bool)

(assert (=> b!8840 (= e!5156 false)))

(declare-fun e!5157 () Bool)

(assert (=> b!8841 (= e!5157 (and tp!1463 tp!1460 tp!1461))))

(declare-fun res!2767 () Bool)

(assert (=> start!1756 (=> (not res!2767) (not e!5156))))

(assert (=> start!1756 (= res!2767 (= f!585 lambda!2085))))

(assert (=> start!1756 e!5156))

(assert (=> start!1756 true))

(declare-datatypes () ((Balance!177 (Balance!178 (extraOpen!129 Int) (extraClose!129 Int)))))

(declare-datatypes () ((EqEvidence!142 (EqEvidence!143 (x!4831 Int) (y!538 Int) (evidence!138 Int)))))

(declare-fun thiss!837 () EqEvidence!142)

(declare-fun inv!307 (EqEvidence!142) Bool)

(assert (=> start!1756 (and (inv!307 thiss!837) e!5157)))

(assert (=> start!1756 tp!1464))

(declare-datatypes () ((EqProof!64 (EqProof!65 (x!4832 Int) (y!539 Int)))))

(declare-fun that!213 () EqProof!64)

(declare-fun e!5158 () Bool)

(declare-fun inv!308 (EqProof!64) Bool)

(assert (=> start!1756 (and (inv!308 that!213) e!5158)))

(declare-fun b!8839 () Bool)

(declare-fun res!2766 () Bool)

(assert (=> b!8839 (=> (not res!2766) (not e!5156))))

(declare-datatypes () ((ProofOps!124 (ProofOps!125 (prop!176 Bool)))))

(declare-fun thiss!829 () ProofOps!124)

(declare-datatypes () ((Tree!51 (Branch!42 (left!399 Tree!51) (right!402 Tree!51)) (Leaf!124 (value!1293 Balance!177)))))

(declare-fun tree!25 () Tree!51)

(declare-fun fold!27 (Tree!51 Int) Balance!177)

(declare-datatypes () ((List!205 (Nil!203) (Cons!202 (head!420 Balance!177) (tail!432 List!205)))))

(declare-fun foldRight1!58 (List!205 Int) Balance!177)

(declare-fun toList!51 (Tree!51) List!205)

(assert (=> b!8839 (= res!2766 (= thiss!829 (ProofOps!125 (= (fold!27 tree!25 f!585) (foldRight1!58 (toList!51 tree!25) f!585)))))))

(assert (=> b!8842 (= e!5158 (and tp!1462 tp!1465))))

(assert (= (and start!1756 res!2767) b!8839))

(assert (= (and b!8839 res!2766) b!8840))

(assert (= start!1756 b!8841))

(assert (= start!1756 b!8842))

(declare-fun m!11735 () Bool)

(assert (=> start!1756 m!11735))

(declare-fun m!11737 () Bool)

(assert (=> start!1756 m!11737))

(declare-fun m!11739 () Bool)

(assert (=> b!8839 m!11739))

(declare-fun m!11741 () Bool)

(assert (=> b!8839 m!11741))

(assert (=> b!8839 m!11741))

(declare-fun m!11743 () Bool)

(assert (=> b!8839 m!11743))

(push 1)

(assert (not b_next!2037))

(assert (not b!8839))

(assert (not b_next!2041))

(assert (not start!1756))

(assert (not b_next!2043))

(assert b_and!3381)

(assert (not b_next!2033))

(assert b_and!3379)

(assert b_and!3377)

(assert b_and!3373)

(assert (not b_next!2035))

(assert b_and!3371)

(assert b_and!3375)

(assert (not b_next!2045))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2037))

(assert (not b_next!2041))

(assert (not b_next!2043))

(assert b_and!3381)

(assert (not b_next!2033))

(assert b_and!3379)

(assert b_and!3377)

(assert b_and!3373)

(assert (not b_next!2035))

(assert b_and!3371)

(assert b_and!3375)

(assert (not b_next!2045))

(check-sat)

(pop 1)


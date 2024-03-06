; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1716 () Bool)

(assert start!1716)

(declare-fun b_free!787 () Bool)

(declare-fun b_next!1797 () Bool)

(assert (=> start!1716 (= b_free!787 (not b_next!1797))))

(declare-fun tp!1321 () Bool)

(declare-fun b_and!3099 () Bool)

(assert (=> start!1716 (= tp!1321 b_and!3099)))

(declare-fun b!8642 () Bool)

(declare-fun b_free!789 () Bool)

(declare-fun b_next!1799 () Bool)

(assert (=> b!8642 (= b_free!789 (not b_next!1799))))

(declare-fun tp!1317 () Bool)

(declare-fun b_and!3101 () Bool)

(assert (=> b!8642 (= tp!1317 b_and!3101)))

(declare-fun b_free!791 () Bool)

(declare-fun b_next!1801 () Bool)

(assert (=> b!8642 (= b_free!791 (not b_next!1801))))

(declare-fun tp!1318 () Bool)

(declare-fun b_and!3103 () Bool)

(assert (=> b!8642 (= tp!1318 b_and!3103)))

(declare-fun b_free!793 () Bool)

(declare-fun b_next!1803 () Bool)

(assert (=> b!8642 (= b_free!793 (not b_next!1803))))

(declare-fun tp!1320 () Bool)

(declare-fun b_and!3105 () Bool)

(assert (=> b!8642 (= tp!1320 b_and!3105)))

(declare-fun b!8643 () Bool)

(declare-fun b_free!795 () Bool)

(declare-fun b_next!1805 () Bool)

(assert (=> b!8643 (= b_free!795 (not b_next!1805))))

(declare-fun tp!1316 () Bool)

(declare-fun b_and!3107 () Bool)

(assert (=> b!8643 (= tp!1316 b_and!3107)))

(declare-fun b_free!797 () Bool)

(declare-fun b_next!1807 () Bool)

(assert (=> b!8643 (= b_free!797 (not b_next!1807))))

(declare-fun tp!1319 () Bool)

(declare-fun b_and!3109 () Bool)

(assert (=> b!8643 (= tp!1319 b_and!3109)))

(declare-fun b_free!799 () Bool)

(declare-fun b_next!1809 () Bool)

(assert (=> b!8643 (= b_free!799 (not b_next!1809))))

(declare-fun tp!1315 () Bool)

(declare-fun b_and!3111 () Bool)

(assert (=> b!8643 (= tp!1315 b_and!3111)))

(declare-fun b_next!1811 () Bool)

(declare-fun f!585 () Int)

(declare-fun lambda!1999 () Int)

(assert (=> start!1716 (= b_next!1797 (or (and start!1716 (= lambda!1999 f!585)) b_next!1811))))

(declare-fun res!2674 () Bool)

(declare-fun e!5007 () Bool)

(assert (=> start!1716 (=> (not res!2674) (not e!5007))))

(assert (=> start!1716 (= res!2674 (= f!585 lambda!1999))))

(assert (=> start!1716 e!5007))

(assert (=> start!1716 true))

(assert (=> start!1716 tp!1321))

(declare-datatypes () ((Balance!163 (Balance!164 (extraOpen!122 Int) (extraClose!122 Int)))))

(declare-datatypes () ((EqEvidence!128 (EqEvidence!129 (x!4715 Int) (y!524 Int) (evidence!131 Int)))))

(declare-fun thiss!839 () EqEvidence!128)

(declare-fun e!5008 () Bool)

(declare-fun inv!299 (EqEvidence!128) Bool)

(assert (=> start!1716 (and (inv!299 thiss!839) e!5008)))

(declare-fun that!211 () EqEvidence!128)

(declare-fun e!5006 () Bool)

(assert (=> start!1716 (and (inv!299 that!211) e!5006)))

(declare-fun b!8641 () Bool)

(assert (=> b!8641 (= e!5007 false)))

(assert (=> b!8642 (= e!5008 (and tp!1317 tp!1318 tp!1320))))

(declare-fun b!8640 () Bool)

(declare-fun res!2675 () Bool)

(assert (=> b!8640 (=> (not res!2675) (not e!5007))))

(declare-datatypes () ((ProofOps!110 (ProofOps!111 (prop!169 Bool)))))

(declare-fun thiss!829 () ProofOps!110)

(declare-datatypes () ((Tree!44 (Branch!35 (left!383 Tree!44) (right!386 Tree!44)) (Leaf!117 (value!1286 Balance!163)))))

(declare-fun tree!25 () Tree!44)

(declare-fun fold!20 (Tree!44 Int) Balance!163)

(declare-datatypes () ((List!198 (Nil!196) (Cons!195 (head!413 Balance!163) (tail!425 List!198)))))

(declare-fun foldRight1!51 (List!198 Int) Balance!163)

(declare-fun toList!44 (Tree!44) List!198)

(assert (=> b!8640 (= res!2675 (= thiss!829 (ProofOps!111 (= (fold!20 tree!25 f!585) (foldRight1!51 (toList!44 tree!25) f!585)))))))

(assert (=> b!8643 (= e!5006 (and tp!1316 tp!1319 tp!1315))))

(assert (= (and start!1716 res!2674) b!8640))

(assert (= (and b!8640 res!2675) b!8641))

(assert (= start!1716 b!8642))

(assert (= start!1716 b!8643))

(declare-fun m!11535 () Bool)

(assert (=> start!1716 m!11535))

(declare-fun m!11537 () Bool)

(assert (=> start!1716 m!11537))

(declare-fun m!11539 () Bool)

(assert (=> b!8640 m!11539))

(declare-fun m!11541 () Bool)

(assert (=> b!8640 m!11541))

(assert (=> b!8640 m!11541))

(declare-fun m!11543 () Bool)

(assert (=> b!8640 m!11543))

(push 1)

(assert (not b_next!1809))

(assert b_and!3099)

(assert (not start!1716))

(assert (not b_next!1801))

(assert b_and!3105)

(assert b_and!3109)

(assert (not b_next!1803))

(assert b_and!3111)

(assert (not b!8640))

(assert (not b_next!1807))

(assert (not b_next!1811))

(assert (not b_next!1805))

(assert b_and!3103)

(assert b_and!3107)

(assert (not b_next!1799))

(assert b_and!3101)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1809))

(assert b_and!3099)

(assert (not b_next!1801))

(assert b_and!3105)

(assert b_and!3109)

(assert (not b_next!1803))

(assert b_and!3111)

(assert (not b_next!1807))

(assert (not b_next!1811))

(assert (not b_next!1805))

(assert b_and!3103)

(assert b_and!3107)

(assert (not b_next!1799))

(assert b_and!3101)

(check-sat)

(pop 1)


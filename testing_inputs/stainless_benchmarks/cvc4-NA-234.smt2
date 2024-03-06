; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1796 () Bool)

(assert start!1796)

(declare-fun b!9007 () Bool)

(declare-fun b_free!943 () Bool)

(declare-fun b_next!2199 () Bool)

(assert (=> b!9007 (= b_free!943 (not b_next!2199))))

(declare-fun tp!1554 () Bool)

(declare-fun b_and!3553 () Bool)

(assert (=> b!9007 (= tp!1554 b_and!3553)))

(declare-fun b_free!945 () Bool)

(declare-fun b_next!2201 () Bool)

(assert (=> b!9007 (= b_free!945 (not b_next!2201))))

(declare-fun tp!1553 () Bool)

(declare-fun b_and!3555 () Bool)

(assert (=> b!9007 (= tp!1553 b_and!3555)))

(declare-fun b_free!947 () Bool)

(declare-fun b_next!2203 () Bool)

(assert (=> b!9007 (= b_free!947 (not b_next!2203))))

(declare-fun tp!1552 () Bool)

(declare-fun b_and!3557 () Bool)

(assert (=> b!9007 (= tp!1552 b_and!3557)))

(declare-fun b_free!949 () Bool)

(declare-fun b_next!2205 () Bool)

(assert (=> start!1796 (= b_free!949 (not b_next!2205))))

(declare-fun tp!1549 () Bool)

(declare-fun b_and!3559 () Bool)

(assert (=> start!1796 (= tp!1549 b_and!3559)))

(declare-fun b!9008 () Bool)

(declare-fun b_free!951 () Bool)

(declare-fun b_next!2207 () Bool)

(assert (=> b!9008 (= b_free!951 (not b_next!2207))))

(declare-fun tp!1555 () Bool)

(declare-fun b_and!3561 () Bool)

(assert (=> b!9008 (= tp!1555 b_and!3561)))

(declare-fun b_free!953 () Bool)

(declare-fun b_next!2209 () Bool)

(assert (=> b!9008 (= b_free!953 (not b_next!2209))))

(declare-fun tp!1550 () Bool)

(declare-fun b_and!3563 () Bool)

(assert (=> b!9008 (= tp!1550 b_and!3563)))

(declare-fun b_free!955 () Bool)

(declare-fun b_next!2211 () Bool)

(assert (=> b!9008 (= b_free!955 (not b_next!2211))))

(declare-fun tp!1551 () Bool)

(declare-fun b_and!3565 () Bool)

(assert (=> b!9008 (= tp!1551 b_and!3565)))

(declare-fun f!585 () Int)

(declare-fun b_next!2213 () Bool)

(declare-fun lambda!2159 () Int)

(assert (=> start!1796 (= b_next!2205 (or (and start!1796 (= lambda!2159 f!585)) b_next!2213))))

(declare-fun b!9006 () Bool)

(declare-fun e!5282 () Bool)

(assert (=> b!9006 (= e!5282 false)))

(declare-fun e!5280 () Bool)

(assert (=> b!9007 (= e!5280 (and tp!1554 tp!1553 tp!1552))))

(declare-fun e!5281 () Bool)

(assert (=> b!9008 (= e!5281 (and tp!1555 tp!1550 tp!1551))))

(declare-fun res!2844 () Bool)

(assert (=> start!1796 (=> (not res!2844) (not e!5282))))

(assert (=> start!1796 (= res!2844 (= f!585 lambda!2159))))

(assert (=> start!1796 e!5282))

(assert (=> start!1796 true))

(declare-datatypes () ((Balance!187 (Balance!188 (extraOpen!134 Int) (extraClose!134 Int)))))

(declare-datatypes () ((EqEvidence!150 (EqEvidence!151 (x!4956 Int) (y!553 Int) (evidence!142 Int)))))

(declare-fun that!214 () EqEvidence!150)

(declare-fun inv!316 (EqEvidence!150) Bool)

(assert (=> start!1796 (and (inv!316 that!214) e!5280)))

(assert (=> start!1796 tp!1549))

(declare-fun thiss!856 () EqEvidence!150)

(assert (=> start!1796 (and (inv!316 thiss!856) e!5281)))

(declare-fun b!9005 () Bool)

(declare-fun res!2845 () Bool)

(assert (=> b!9005 (=> (not res!2845) (not e!5282))))

(declare-datatypes () ((ProofOps!134 (ProofOps!135 (prop!182 Bool)))))

(declare-fun thiss!829 () ProofOps!134)

(declare-datatypes () ((Tree!56 (Branch!47 (left!413 Tree!56) (right!416 Tree!56)) (Leaf!129 (value!1298 Balance!187)))))

(declare-fun tree!25 () Tree!56)

(declare-fun fold!32 (Tree!56 Int) Balance!187)

(declare-datatypes () ((List!210 (Nil!208) (Cons!207 (head!425 Balance!187) (tail!437 List!210)))))

(declare-fun foldRight1!63 (List!210 Int) Balance!187)

(declare-fun toList!56 (Tree!56) List!210)

(assert (=> b!9005 (= res!2845 (= thiss!829 (ProofOps!135 (= (fold!32 tree!25 f!585) (foldRight1!63 (toList!56 tree!25) f!585)))))))

(assert (= (and start!1796 res!2844) b!9005))

(assert (= (and b!9005 res!2845) b!9006))

(assert (= start!1796 b!9007))

(assert (= start!1796 b!9008))

(declare-fun m!11913 () Bool)

(assert (=> start!1796 m!11913))

(declare-fun m!11915 () Bool)

(assert (=> start!1796 m!11915))

(declare-fun m!11917 () Bool)

(assert (=> b!9005 m!11917))

(declare-fun m!11919 () Bool)

(assert (=> b!9005 m!11919))

(assert (=> b!9005 m!11919))

(declare-fun m!11921 () Bool)

(assert (=> b!9005 m!11921))

(push 1)

(assert b_and!3559)

(assert (not b_next!2201))

(assert (not b!9005))

(assert (not start!1796))

(assert (not b_next!2199))

(assert b_and!3555)

(assert b_and!3553)

(assert b_and!3563)

(assert (not b_next!2213))

(assert (not b_next!2211))

(assert (not b_next!2203))

(assert b_and!3561)

(assert (not b_next!2207))

(assert b_and!3557)

(assert (not b_next!2209))

(assert b_and!3565)

(check-sat)

(pop 1)

(push 1)

(assert b_and!3559)

(assert (not b_next!2201))

(assert (not b_next!2199))

(assert b_and!3555)

(assert b_and!3553)

(assert b_and!3563)

(assert (not b_next!2213))

(assert (not b_next!2211))

(assert (not b_next!2203))

(assert b_and!3561)

(assert (not b_next!2207))

(assert b_and!3557)

(assert (not b_next!2209))

(assert b_and!3565)

(check-sat)

(pop 1)


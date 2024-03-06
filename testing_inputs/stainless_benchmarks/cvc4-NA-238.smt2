; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1826 () Bool)

(assert start!1826)

(declare-fun b!9138 () Bool)

(declare-fun b_free!999 () Bool)

(declare-fun b_next!2389 () Bool)

(assert (=> b!9138 (= b_free!999 (not b_next!2389))))

(declare-fun tp!1639 () Bool)

(declare-fun b_and!3745 () Bool)

(assert (=> b!9138 (= tp!1639 b_and!3745)))

(declare-fun b_free!1001 () Bool)

(declare-fun b_next!2391 () Bool)

(assert (=> b!9138 (= b_free!1001 (not b_next!2391))))

(declare-fun tp!1638 () Bool)

(declare-fun b_and!3747 () Bool)

(assert (=> b!9138 (= tp!1638 b_and!3747)))

(declare-fun b_free!1003 () Bool)

(declare-fun b_next!2393 () Bool)

(assert (=> b!9138 (= b_free!1003 (not b_next!2393))))

(declare-fun tp!1637 () Bool)

(declare-fun b_and!3749 () Bool)

(assert (=> b!9138 (= tp!1637 b_and!3749)))

(declare-fun b_free!1005 () Bool)

(declare-fun b_next!2395 () Bool)

(assert (=> start!1826 (= b_free!1005 (not b_next!2395))))

(declare-fun tp!1633 () Bool)

(declare-fun b_and!3751 () Bool)

(assert (=> start!1826 (= tp!1633 b_and!3751)))

(declare-fun b!9139 () Bool)

(declare-fun b_free!1007 () Bool)

(declare-fun b_next!2397 () Bool)

(assert (=> b!9139 (= b_free!1007 (not b_next!2397))))

(declare-fun tp!1635 () Bool)

(declare-fun b_and!3753 () Bool)

(assert (=> b!9139 (= tp!1635 b_and!3753)))

(declare-fun b_free!1009 () Bool)

(declare-fun b_next!2399 () Bool)

(assert (=> b!9139 (= b_free!1009 (not b_next!2399))))

(declare-fun tp!1636 () Bool)

(declare-fun b_and!3755 () Bool)

(assert (=> b!9139 (= tp!1636 b_and!3755)))

(declare-fun b_free!1011 () Bool)

(declare-fun b_next!2401 () Bool)

(assert (=> b!9139 (= b_free!1011 (not b_next!2401))))

(declare-fun tp!1634 () Bool)

(declare-fun b_and!3757 () Bool)

(assert (=> b!9139 (= tp!1634 b_and!3757)))

(declare-fun f!585 () Int)

(declare-fun b_next!2403 () Bool)

(declare-fun lambda!2227 () Int)

(assert (=> start!1826 (= b_next!2395 (or (and start!1826 (= lambda!2227 f!585)) b_next!2403))))

(declare-fun res!2913 () Bool)

(declare-fun e!5376 () Bool)

(assert (=> start!1826 (=> (not res!2913) (not e!5376))))

(assert (=> start!1826 (= res!2913 (= f!585 lambda!2227))))

(assert (=> start!1826 e!5376))

(assert (=> start!1826 true))

(declare-datatypes () ((Balance!195 (Balance!196 (extraOpen!138 Int) (extraClose!138 Int)))))

(declare-datatypes () ((EqEvidence!158 (EqEvidence!159 (x!5068 Int) (y!562 Int) (evidence!146 Int)))))

(declare-fun that!223 () EqEvidence!158)

(declare-fun e!5377 () Bool)

(declare-fun inv!321 (EqEvidence!158) Bool)

(assert (=> start!1826 (and (inv!321 that!223) e!5377)))

(assert (=> start!1826 tp!1633))

(declare-fun thiss!855 () EqEvidence!158)

(declare-fun e!5375 () Bool)

(assert (=> start!1826 (and (inv!321 thiss!855) e!5375)))

(declare-fun b!9136 () Bool)

(declare-fun res!2914 () Bool)

(assert (=> b!9136 (=> (not res!2914) (not e!5376))))

(declare-datatypes () ((ProofOps!142 (ProofOps!143 (prop!188 Bool)))))

(declare-fun thiss!829 () ProofOps!142)

(declare-datatypes () ((Tree!60 (Branch!51 (left!423 Tree!60) (right!426 Tree!60)) (Leaf!133 (value!1302 Balance!195)))))

(declare-fun tree!25 () Tree!60)

(declare-fun fold!36 (Tree!60 Int) Balance!195)

(declare-datatypes () ((List!214 (Nil!212) (Cons!211 (head!429 Balance!195) (tail!441 List!214)))))

(declare-fun foldRight1!67 (List!214 Int) Balance!195)

(declare-fun toList!60 (Tree!60) List!214)

(assert (=> b!9136 (= res!2914 (= thiss!829 (ProofOps!143 (= (fold!36 tree!25 f!585) (foldRight1!67 (toList!60 tree!25) f!585)))))))

(declare-fun b!9137 () Bool)

(assert (=> b!9137 (= e!5376 false)))

(assert (=> b!9139 (= e!5375 (and tp!1635 tp!1636 tp!1634))))

(assert (=> b!9138 (= e!5377 (and tp!1639 tp!1638 tp!1637))))

(assert (= (and start!1826 res!2913) b!9136))

(assert (= (and b!9136 res!2914) b!9137))

(assert (= start!1826 b!9138))

(assert (= start!1826 b!9139))

(declare-fun m!12089 () Bool)

(assert (=> start!1826 m!12089))

(declare-fun m!12091 () Bool)

(assert (=> start!1826 m!12091))

(declare-fun m!12093 () Bool)

(assert (=> b!9136 m!12093))

(declare-fun m!12095 () Bool)

(assert (=> b!9136 m!12095))

(assert (=> b!9136 m!12095))

(declare-fun m!12097 () Bool)

(assert (=> b!9136 m!12097))

(push 1)

(assert b_and!3753)

(assert (not b_next!2393))

(assert b_and!3749)

(assert b_and!3751)

(assert (not b_next!2391))

(assert b_and!3747)

(assert (not start!1826))

(assert b_and!3745)

(assert b_and!3757)

(assert (not b_next!2403))

(assert b_and!3755)

(assert (not b_next!2399))

(assert (not b_next!2397))

(assert (not b!9136))

(assert (not b_next!2401))

(assert (not b_next!2389))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3753)

(assert (not b_next!2393))

(assert b_and!3749)

(assert b_and!3751)

(assert (not b_next!2391))

(assert b_and!3747)

(assert b_and!3745)

(assert b_and!3757)

(assert (not b_next!2403))

(assert b_and!3755)

(assert (not b_next!2399))

(assert (not b_next!2397))

(assert (not b_next!2401))

(assert (not b_next!2389))

(check-sat)

(pop 1)


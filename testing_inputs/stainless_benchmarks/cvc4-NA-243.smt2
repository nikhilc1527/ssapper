; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1860 () Bool)

(assert start!1860)

(declare-fun b!9292 () Bool)

(declare-fun b_free!1069 () Bool)

(declare-fun b_next!2605 () Bool)

(assert (=> b!9292 (= b_free!1069 (not b_next!2605))))

(declare-fun tp!1744 () Bool)

(declare-fun b_and!3961 () Bool)

(assert (=> b!9292 (= tp!1744 b_and!3961)))

(declare-fun b_free!1071 () Bool)

(declare-fun b_next!2607 () Bool)

(assert (=> b!9292 (= b_free!1071 (not b_next!2607))))

(declare-fun tp!1738 () Bool)

(declare-fun b_and!3963 () Bool)

(assert (=> b!9292 (= tp!1738 b_and!3963)))

(declare-fun b_free!1073 () Bool)

(declare-fun b_next!2609 () Bool)

(assert (=> b!9292 (= b_free!1073 (not b_next!2609))))

(declare-fun tp!1739 () Bool)

(declare-fun b_and!3965 () Bool)

(assert (=> b!9292 (= tp!1739 b_and!3965)))

(declare-fun b_free!1075 () Bool)

(declare-fun b_next!2611 () Bool)

(assert (=> start!1860 (= b_free!1075 (not b_next!2611))))

(declare-fun tp!1741 () Bool)

(declare-fun b_and!3967 () Bool)

(assert (=> start!1860 (= tp!1741 b_and!3967)))

(declare-fun b!9293 () Bool)

(declare-fun b_free!1077 () Bool)

(declare-fun b_next!2613 () Bool)

(assert (=> b!9293 (= b_free!1077 (not b_next!2613))))

(declare-fun tp!1742 () Bool)

(declare-fun b_and!3969 () Bool)

(assert (=> b!9293 (= tp!1742 b_and!3969)))

(declare-fun b_free!1079 () Bool)

(declare-fun b_next!2615 () Bool)

(assert (=> b!9293 (= b_free!1079 (not b_next!2615))))

(declare-fun tp!1743 () Bool)

(declare-fun b_and!3971 () Bool)

(assert (=> b!9293 (= tp!1743 b_and!3971)))

(declare-fun b_free!1081 () Bool)

(declare-fun b_next!2617 () Bool)

(assert (=> b!9293 (= b_free!1081 (not b_next!2617))))

(declare-fun tp!1740 () Bool)

(declare-fun b_and!3973 () Bool)

(assert (=> b!9293 (= tp!1740 b_and!3973)))

(declare-fun f!585 () Int)

(declare-fun lambda!2302 () Int)

(declare-fun b_next!2619 () Bool)

(assert (=> start!1860 (= b_next!2611 (or (and start!1860 (= lambda!2302 f!585)) b_next!2619))))

(declare-fun b!9290 () Bool)

(declare-fun res!2998 () Bool)

(declare-fun e!5486 () Bool)

(assert (=> b!9290 (=> (not res!2998) (not e!5486))))

(declare-datatypes () ((ProofOps!152 (ProofOps!153 (prop!196 Bool)))))

(declare-fun thiss!829 () ProofOps!152)

(declare-datatypes () ((Balance!205 (Balance!206 (extraOpen!143 Int) (extraClose!143 Int)))))

(declare-datatypes () ((Tree!65 (Branch!56 (left!434 Tree!65) (right!437 Tree!65)) (Leaf!138 (value!1307 Balance!205)))))

(declare-fun tree!25 () Tree!65)

(declare-fun fold!41 (Tree!65 Int) Balance!205)

(declare-datatypes () ((List!219 (Nil!217) (Cons!216 (head!434 Balance!205) (tail!446 List!219)))))

(declare-fun foldRight1!72 (List!219 Int) Balance!205)

(declare-fun toList!65 (Tree!65) List!219)

(assert (=> b!9290 (= res!2998 (= thiss!829 (ProofOps!153 (= (fold!41 tree!25 f!585) (foldRight1!72 (toList!65 tree!25) f!585)))))))

(declare-fun res!2997 () Bool)

(assert (=> start!1860 (=> (not res!2997) (not e!5486))))

(assert (=> start!1860 (= res!2997 (= f!585 lambda!2302))))

(assert (=> start!1860 e!5486))

(assert (=> start!1860 true))

(declare-datatypes () ((EqEvidence!168 (EqEvidence!169 (x!5199 Int) (y!572 Int) (evidence!151 Int)))))

(declare-fun that!232 () EqEvidence!168)

(declare-fun e!5488 () Bool)

(declare-fun inv!327 (EqEvidence!168) Bool)

(assert (=> start!1860 (and (inv!327 that!232) e!5488)))

(assert (=> start!1860 tp!1741))

(declare-fun thiss!854 () EqEvidence!168)

(declare-fun e!5487 () Bool)

(assert (=> start!1860 (and (inv!327 thiss!854) e!5487)))

(assert (=> b!9292 (= e!5488 (and tp!1744 tp!1738 tp!1739))))

(declare-fun b!9291 () Bool)

(assert (=> b!9291 (= e!5486 false)))

(assert (=> b!9293 (= e!5487 (and tp!1742 tp!1743 tp!1740))))

(assert (= (and start!1860 res!2997) b!9290))

(assert (= (and b!9290 res!2998) b!9291))

(assert (= start!1860 b!9292))

(assert (= start!1860 b!9293))

(declare-fun m!12327 () Bool)

(assert (=> b!9290 m!12327))

(declare-fun m!12329 () Bool)

(assert (=> b!9290 m!12329))

(assert (=> b!9290 m!12329))

(declare-fun m!12331 () Bool)

(assert (=> b!9290 m!12331))

(declare-fun m!12333 () Bool)

(assert (=> start!1860 m!12333))

(declare-fun m!12335 () Bool)

(assert (=> start!1860 m!12335))

(push 1)

(assert (not b_next!2615))

(assert (not b_next!2607))

(assert (not start!1860))

(assert b_and!3963)

(assert (not b_next!2617))

(assert (not b_next!2619))

(assert b_and!3961)

(assert b_and!3971)

(assert b_and!3967)

(assert (not b_next!2605))

(assert b_and!3969)

(assert (not b_next!2613))

(assert (not b_next!2609))

(assert b_and!3973)

(assert b_and!3965)

(assert (not b!9290))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2615))

(assert (not b_next!2607))

(assert b_and!3963)

(assert (not b_next!2617))

(assert (not b_next!2619))

(assert b_and!3961)

(assert b_and!3971)

(assert b_and!3967)

(assert (not b_next!2605))

(assert b_and!3969)

(assert (not b_next!2613))

(assert (not b_next!2609))

(assert b_and!3973)

(assert b_and!3965)

(check-sat)

(pop 1)


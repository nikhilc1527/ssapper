; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1798 () Bool)

(assert start!1798)

(declare-fun b!9019 () Bool)

(declare-fun b_free!957 () Bool)

(declare-fun b_next!2215 () Bool)

(assert (=> b!9019 (= b_free!957 (not b_next!2215))))

(declare-fun tp!1576 () Bool)

(declare-fun b_and!3567 () Bool)

(assert (=> b!9019 (= tp!1576 b_and!3567)))

(declare-fun b_free!959 () Bool)

(declare-fun b_next!2217 () Bool)

(assert (=> b!9019 (= b_free!959 (not b_next!2217))))

(declare-fun tp!1571 () Bool)

(declare-fun b_and!3569 () Bool)

(assert (=> b!9019 (= tp!1571 b_and!3569)))

(declare-fun b_free!961 () Bool)

(declare-fun b_next!2219 () Bool)

(assert (=> b!9019 (= b_free!961 (not b_next!2219))))

(declare-fun tp!1573 () Bool)

(declare-fun b_and!3571 () Bool)

(assert (=> b!9019 (= tp!1573 b_and!3571)))

(declare-fun b_free!963 () Bool)

(declare-fun b_next!2221 () Bool)

(assert (=> start!1798 (= b_free!963 (not b_next!2221))))

(declare-fun tp!1575 () Bool)

(declare-fun b_and!3573 () Bool)

(assert (=> start!1798 (= tp!1575 b_and!3573)))

(declare-fun b!9020 () Bool)

(declare-fun b_free!965 () Bool)

(declare-fun b_next!2223 () Bool)

(assert (=> b!9020 (= b_free!965 (not b_next!2223))))

(declare-fun tp!1574 () Bool)

(declare-fun b_and!3575 () Bool)

(assert (=> b!9020 (= tp!1574 b_and!3575)))

(declare-fun b_free!967 () Bool)

(declare-fun b_next!2225 () Bool)

(assert (=> b!9020 (= b_free!967 (not b_next!2225))))

(declare-fun tp!1570 () Bool)

(declare-fun b_and!3577 () Bool)

(assert (=> b!9020 (= tp!1570 b_and!3577)))

(declare-fun b_free!969 () Bool)

(declare-fun b_next!2227 () Bool)

(assert (=> b!9020 (= b_free!969 (not b_next!2227))))

(declare-fun tp!1572 () Bool)

(declare-fun b_and!3579 () Bool)

(assert (=> b!9020 (= tp!1572 b_and!3579)))

(declare-fun f!585 () Int)

(declare-fun b_next!2229 () Bool)

(declare-fun lambda!2162 () Int)

(assert (=> start!1798 (= b_next!2221 (or (and start!1798 (= lambda!2162 f!585)) b_next!2229))))

(declare-fun b!9017 () Bool)

(declare-fun res!2851 () Bool)

(declare-fun e!5290 () Bool)

(assert (=> b!9017 (=> (not res!2851) (not e!5290))))

(declare-datatypes () ((ProofOps!136 (ProofOps!137 (prop!183 Bool)))))

(declare-fun thiss!829 () ProofOps!136)

(declare-datatypes () ((Balance!189 (Balance!190 (extraOpen!135 Int) (extraClose!135 Int)))))

(declare-datatypes () ((Tree!57 (Branch!48 (left!414 Tree!57) (right!417 Tree!57)) (Leaf!130 (value!1299 Balance!189)))))

(declare-fun tree!25 () Tree!57)

(declare-fun fold!33 (Tree!57 Int) Balance!189)

(declare-datatypes () ((List!211 (Nil!209) (Cons!208 (head!426 Balance!189) (tail!438 List!211)))))

(declare-fun foldRight1!64 (List!211 Int) Balance!189)

(declare-fun toList!57 (Tree!57) List!211)

(assert (=> b!9017 (= res!2851 (= thiss!829 (ProofOps!137 (= (fold!33 tree!25 f!585) (foldRight1!64 (toList!57 tree!25) f!585)))))))

(declare-fun e!5289 () Bool)

(assert (=> b!9019 (= e!5289 (and tp!1576 tp!1571 tp!1573))))

(declare-fun b!9018 () Bool)

(assert (=> b!9018 (= e!5290 false)))

(declare-fun res!2850 () Bool)

(assert (=> start!1798 (=> (not res!2850) (not e!5290))))

(assert (=> start!1798 (= res!2850 (= f!585 lambda!2162))))

(assert (=> start!1798 e!5290))

(assert (=> start!1798 true))

(declare-datatypes () ((EqEvidence!152 (EqEvidence!153 (x!4961 Int) (y!554 Int) (evidence!143 Int)))))

(declare-fun that!214 () EqEvidence!152)

(declare-fun inv!317 (EqEvidence!152) Bool)

(assert (=> start!1798 (and (inv!317 that!214) e!5289)))

(assert (=> start!1798 tp!1575))

(declare-fun thiss!856 () EqEvidence!152)

(declare-fun e!5291 () Bool)

(assert (=> start!1798 (and (inv!317 thiss!856) e!5291)))

(assert (=> b!9020 (= e!5291 (and tp!1574 tp!1570 tp!1572))))

(assert (= (and start!1798 res!2850) b!9017))

(assert (= (and b!9017 res!2851) b!9018))

(assert (= start!1798 b!9019))

(assert (= start!1798 b!9020))

(declare-fun m!11923 () Bool)

(assert (=> b!9017 m!11923))

(declare-fun m!11925 () Bool)

(assert (=> b!9017 m!11925))

(assert (=> b!9017 m!11925))

(declare-fun m!11927 () Bool)

(assert (=> b!9017 m!11927))

(declare-fun m!11929 () Bool)

(assert (=> start!1798 m!11929))

(declare-fun m!11931 () Bool)

(assert (=> start!1798 m!11931))

(push 1)

(assert (not b_next!2215))

(assert (not b_next!2225))

(assert (not start!1798))

(assert (not b_next!2229))

(assert (not b_next!2223))

(assert b_and!3575)

(assert b_and!3567)

(assert (not b_next!2227))

(assert b_and!3577)

(assert b_and!3579)

(assert (not b_next!2217))

(assert (not b!9017))

(assert (not b_next!2219))

(assert b_and!3569)

(assert b_and!3571)

(assert b_and!3573)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2215))

(assert (not b_next!2225))

(assert (not b_next!2229))

(assert (not b_next!2223))

(assert b_and!3575)

(assert b_and!3567)

(assert (not b_next!2227))

(assert b_and!3577)

(assert b_and!3579)

(assert (not b_next!2217))

(assert (not b_next!2219))

(assert b_and!3569)

(assert b_and!3571)

(assert b_and!3573)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1744 () Bool)

(assert start!1744)

(declare-fun b!8777 () Bool)

(declare-fun b_free!857 () Bool)

(declare-fun b_next!1957 () Bool)

(assert (=> b!8777 (= b_free!857 (not b_next!1957))))

(declare-fun tp!1420 () Bool)

(declare-fun b_and!3277 () Bool)

(assert (=> b!8777 (= tp!1420 b_and!3277)))

(declare-fun b_free!859 () Bool)

(declare-fun b_next!1959 () Bool)

(assert (=> b!8777 (= b_free!859 (not b_next!1959))))

(declare-fun tp!1423 () Bool)

(declare-fun b_and!3279 () Bool)

(assert (=> b!8777 (= tp!1423 b_and!3279)))

(declare-fun b_free!861 () Bool)

(declare-fun b_next!1961 () Bool)

(assert (=> b!8777 (= b_free!861 (not b_next!1961))))

(declare-fun tp!1425 () Bool)

(declare-fun b_and!3281 () Bool)

(assert (=> b!8777 (= tp!1425 b_and!3281)))

(declare-fun b_free!863 () Bool)

(declare-fun b_next!1963 () Bool)

(assert (=> start!1744 (= b_free!863 (not b_next!1963))))

(declare-fun tp!1422 () Bool)

(declare-fun b_and!3283 () Bool)

(assert (=> start!1744 (= tp!1422 b_and!3283)))

(declare-fun b!8778 () Bool)

(declare-fun b_free!865 () Bool)

(declare-fun b_next!1965 () Bool)

(assert (=> b!8778 (= b_free!865 (not b_next!1965))))

(declare-fun tp!1421 () Bool)

(declare-fun b_and!3285 () Bool)

(assert (=> b!8778 (= tp!1421 b_and!3285)))

(declare-fun b_free!867 () Bool)

(declare-fun b_next!1967 () Bool)

(assert (=> b!8778 (= b_free!867 (not b_next!1967))))

(declare-fun tp!1424 () Bool)

(declare-fun b_and!3287 () Bool)

(assert (=> b!8778 (= tp!1424 b_and!3287)))

(declare-fun b_free!869 () Bool)

(declare-fun b_next!1969 () Bool)

(assert (=> b!8778 (= b_free!869 (not b_next!1969))))

(declare-fun tp!1426 () Bool)

(declare-fun b_and!3289 () Bool)

(assert (=> b!8778 (= tp!1426 b_and!3289)))

(declare-fun b_next!1971 () Bool)

(declare-fun f!585 () Int)

(declare-fun lambda!2057 () Int)

(assert (=> start!1744 (= b_next!1963 (or (and start!1744 (= lambda!2057 f!585)) b_next!1971))))

(declare-fun e!5109 () Bool)

(assert (=> b!8778 (= e!5109 (and tp!1421 tp!1424 tp!1426))))

(declare-fun b!8775 () Bool)

(declare-fun res!2737 () Bool)

(declare-fun e!5108 () Bool)

(assert (=> b!8775 (=> (not res!2737) (not e!5108))))

(declare-datatypes () ((ProofOps!120 (ProofOps!121 (prop!174 Bool)))))

(declare-fun thiss!829 () ProofOps!120)

(declare-datatypes () ((Balance!173 (Balance!174 (extraOpen!127 Int) (extraClose!127 Int)))))

(declare-datatypes () ((Tree!49 (Branch!40 (left!394 Tree!49) (right!397 Tree!49)) (Leaf!122 (value!1291 Balance!173)))))

(declare-fun tree!25 () Tree!49)

(declare-fun fold!25 (Tree!49 Int) Balance!173)

(declare-datatypes () ((List!203 (Nil!201) (Cons!200 (head!418 Balance!173) (tail!430 List!203)))))

(declare-fun foldRight1!56 (List!203 Int) Balance!173)

(declare-fun toList!49 (Tree!49) List!203)

(assert (=> b!8775 (= res!2737 (= thiss!829 (ProofOps!121 (= (fold!25 tree!25 f!585) (foldRight1!56 (toList!49 tree!25) f!585)))))))

(declare-fun b!8776 () Bool)

(assert (=> b!8776 (= e!5108 false)))

(declare-fun res!2738 () Bool)

(assert (=> start!1744 (=> (not res!2738) (not e!5108))))

(assert (=> start!1744 (= res!2738 (= f!585 lambda!2057))))

(assert (=> start!1744 e!5108))

(assert (=> start!1744 true))

(declare-datatypes () ((EqEvidence!138 (EqEvidence!139 (x!4794 Int) (y!534 Int) (evidence!136 Int)))))

(declare-fun that!212 () EqEvidence!138)

(declare-fun e!5110 () Bool)

(declare-fun inv!305 (EqEvidence!138) Bool)

(assert (=> start!1744 (and (inv!305 that!212) e!5110)))

(assert (=> start!1744 tp!1422))

(declare-fun thiss!838 () EqEvidence!138)

(assert (=> start!1744 (and (inv!305 thiss!838) e!5109)))

(assert (=> b!8777 (= e!5110 (and tp!1420 tp!1423 tp!1425))))

(assert (= (and start!1744 res!2738) b!8775))

(assert (= (and b!8775 res!2737) b!8776))

(assert (= start!1744 b!8777))

(assert (= start!1744 b!8778))

(declare-fun m!11667 () Bool)

(assert (=> b!8775 m!11667))

(declare-fun m!11669 () Bool)

(assert (=> b!8775 m!11669))

(assert (=> b!8775 m!11669))

(declare-fun m!11671 () Bool)

(assert (=> b!8775 m!11671))

(declare-fun m!11673 () Bool)

(assert (=> start!1744 m!11673))

(declare-fun m!11675 () Bool)

(assert (=> start!1744 m!11675))

(push 1)

(assert (not b_next!1969))

(assert b_and!3279)

(assert b_and!3277)

(assert b_and!3281)

(assert b_and!3283)

(assert (not b_next!1959))

(assert (not b_next!1957))

(assert (not b_next!1971))

(assert (not b_next!1967))

(assert b_and!3289)

(assert (not b!8775))

(assert (not b_next!1965))

(assert (not b_next!1961))

(assert b_and!3287)

(assert (not start!1744))

(assert b_and!3285)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1969))

(assert b_and!3279)

(assert b_and!3277)

(assert b_and!3281)

(assert b_and!3283)

(assert (not b_next!1959))

(assert (not b_next!1957))

(assert (not b_next!1971))

(assert (not b_next!1967))

(assert b_and!3289)

(assert (not b_next!1965))

(assert (not b_next!1961))

(assert b_and!3287)

(assert b_and!3285)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1742 () Bool)

(assert start!1742)

(declare-fun b!8765 () Bool)

(declare-fun b_free!843 () Bool)

(declare-fun b_next!1941 () Bool)

(assert (=> b!8765 (= b_free!843 (not b_next!1941))))

(declare-fun tp!1400 () Bool)

(declare-fun b_and!3263 () Bool)

(assert (=> b!8765 (= tp!1400 b_and!3263)))

(declare-fun b_free!845 () Bool)

(declare-fun b_next!1943 () Bool)

(assert (=> b!8765 (= b_free!845 (not b_next!1943))))

(declare-fun tp!1401 () Bool)

(declare-fun b_and!3265 () Bool)

(assert (=> b!8765 (= tp!1401 b_and!3265)))

(declare-fun b_free!847 () Bool)

(declare-fun b_next!1945 () Bool)

(assert (=> b!8765 (= b_free!847 (not b_next!1945))))

(declare-fun tp!1402 () Bool)

(declare-fun b_and!3267 () Bool)

(assert (=> b!8765 (= tp!1402 b_and!3267)))

(declare-fun b_free!849 () Bool)

(declare-fun b_next!1947 () Bool)

(assert (=> start!1742 (= b_free!849 (not b_next!1947))))

(declare-fun tp!1399 () Bool)

(declare-fun b_and!3269 () Bool)

(assert (=> start!1742 (= tp!1399 b_and!3269)))

(declare-fun b!8766 () Bool)

(declare-fun b_free!851 () Bool)

(declare-fun b_next!1949 () Bool)

(assert (=> b!8766 (= b_free!851 (not b_next!1949))))

(declare-fun tp!1403 () Bool)

(declare-fun b_and!3271 () Bool)

(assert (=> b!8766 (= tp!1403 b_and!3271)))

(declare-fun b_free!853 () Bool)

(declare-fun b_next!1951 () Bool)

(assert (=> b!8766 (= b_free!853 (not b_next!1951))))

(declare-fun tp!1404 () Bool)

(declare-fun b_and!3273 () Bool)

(assert (=> b!8766 (= tp!1404 b_and!3273)))

(declare-fun b_free!855 () Bool)

(declare-fun b_next!1953 () Bool)

(assert (=> b!8766 (= b_free!855 (not b_next!1953))))

(declare-fun tp!1405 () Bool)

(declare-fun b_and!3275 () Bool)

(assert (=> b!8766 (= tp!1405 b_and!3275)))

(declare-fun f!585 () Int)

(declare-fun b_next!1955 () Bool)

(declare-fun lambda!2054 () Int)

(assert (=> start!1742 (= b_next!1947 (or (and start!1742 (= lambda!2054 f!585)) b_next!1955))))

(declare-fun b!8764 () Bool)

(declare-fun e!5099 () Bool)

(assert (=> b!8764 (= e!5099 false)))

(declare-fun e!5101 () Bool)

(assert (=> b!8765 (= e!5101 (and tp!1400 tp!1401 tp!1402))))

(declare-fun e!5100 () Bool)

(assert (=> b!8766 (= e!5100 (and tp!1403 tp!1404 tp!1405))))

(declare-fun res!2731 () Bool)

(assert (=> start!1742 (=> (not res!2731) (not e!5099))))

(assert (=> start!1742 (= res!2731 (= f!585 lambda!2054))))

(assert (=> start!1742 e!5099))

(assert (=> start!1742 true))

(declare-datatypes () ((Balance!171 (Balance!172 (extraOpen!126 Int) (extraClose!126 Int)))))

(declare-datatypes () ((EqEvidence!136 (EqEvidence!137 (x!4789 Int) (y!533 Int) (evidence!135 Int)))))

(declare-fun that!212 () EqEvidence!136)

(declare-fun inv!304 (EqEvidence!136) Bool)

(assert (=> start!1742 (and (inv!304 that!212) e!5101)))

(assert (=> start!1742 tp!1399))

(declare-fun thiss!838 () EqEvidence!136)

(assert (=> start!1742 (and (inv!304 thiss!838) e!5100)))

(declare-fun b!8763 () Bool)

(declare-fun res!2732 () Bool)

(assert (=> b!8763 (=> (not res!2732) (not e!5099))))

(declare-datatypes () ((ProofOps!118 (ProofOps!119 (prop!173 Bool)))))

(declare-fun thiss!829 () ProofOps!118)

(declare-datatypes () ((Tree!48 (Branch!39 (left!393 Tree!48) (right!396 Tree!48)) (Leaf!121 (value!1290 Balance!171)))))

(declare-fun tree!25 () Tree!48)

(declare-fun fold!24 (Tree!48 Int) Balance!171)

(declare-datatypes () ((List!202 (Nil!200) (Cons!199 (head!417 Balance!171) (tail!429 List!202)))))

(declare-fun foldRight1!55 (List!202 Int) Balance!171)

(declare-fun toList!48 (Tree!48) List!202)

(assert (=> b!8763 (= res!2732 (= thiss!829 (ProofOps!119 (= (fold!24 tree!25 f!585) (foldRight1!55 (toList!48 tree!25) f!585)))))))

(assert (= (and start!1742 res!2731) b!8763))

(assert (= (and b!8763 res!2732) b!8764))

(assert (= start!1742 b!8765))

(assert (= start!1742 b!8766))

(declare-fun m!11657 () Bool)

(assert (=> start!1742 m!11657))

(declare-fun m!11659 () Bool)

(assert (=> start!1742 m!11659))

(declare-fun m!11661 () Bool)

(assert (=> b!8763 m!11661))

(declare-fun m!11663 () Bool)

(assert (=> b!8763 m!11663))

(assert (=> b!8763 m!11663))

(declare-fun m!11665 () Bool)

(assert (=> b!8763 m!11665))

(push 1)

(assert b_and!3265)

(assert (not b_next!1951))

(assert b_and!3269)

(assert (not start!1742))

(assert (not b_next!1943))

(assert (not b_next!1953))

(assert b_and!3267)

(assert (not b_next!1949))

(assert b_and!3263)

(assert (not b!8763))

(assert (not b_next!1941))

(assert (not b_next!1955))

(assert b_and!3273)

(assert b_and!3275)

(assert b_and!3271)

(assert (not b_next!1945))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3265)

(assert (not b_next!1951))

(assert b_and!3269)

(assert (not b_next!1943))

(assert (not b_next!1953))

(assert b_and!3267)

(assert (not b_next!1949))

(assert b_and!3263)

(assert (not b_next!1941))

(assert (not b_next!1955))

(assert b_and!3273)

(assert b_and!3275)

(assert b_and!3271)

(assert (not b_next!1945))

(check-sat)

(pop 1)


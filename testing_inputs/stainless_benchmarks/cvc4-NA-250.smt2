; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1910 () Bool)

(assert start!1910)

(declare-fun b!9534 () Bool)

(declare-fun b_free!1165 () Bool)

(declare-fun b_next!2883 () Bool)

(assert (=> b!9534 (= b_free!1165 (not b_next!2883))))

(declare-fun tp!1884 () Bool)

(declare-fun b_and!4273 () Bool)

(assert (=> b!9534 (= tp!1884 b_and!4273)))

(declare-fun b_free!1167 () Bool)

(declare-fun b_next!2885 () Bool)

(assert (=> b!9534 (= b_free!1167 (not b_next!2885))))

(declare-fun tp!1881 () Bool)

(declare-fun b_and!4275 () Bool)

(assert (=> b!9534 (= tp!1881 b_and!4275)))

(declare-fun b_free!1169 () Bool)

(declare-fun b_next!2887 () Bool)

(assert (=> start!1910 (= b_free!1169 (not b_next!2887))))

(declare-fun tp!1885 () Bool)

(declare-fun b_and!4277 () Bool)

(assert (=> start!1910 (= tp!1885 b_and!4277)))

(declare-fun b!9535 () Bool)

(declare-fun b_free!1171 () Bool)

(declare-fun b_next!2889 () Bool)

(assert (=> b!9535 (= b_free!1171 (not b_next!2889))))

(declare-fun tp!1880 () Bool)

(declare-fun b_and!4279 () Bool)

(assert (=> b!9535 (= tp!1880 b_and!4279)))

(declare-fun b_free!1173 () Bool)

(declare-fun b_next!2891 () Bool)

(assert (=> b!9535 (= b_free!1173 (not b_next!2891))))

(declare-fun tp!1882 () Bool)

(declare-fun b_and!4281 () Bool)

(assert (=> b!9535 (= tp!1882 b_and!4281)))

(declare-fun b_free!1175 () Bool)

(declare-fun b_next!2893 () Bool)

(assert (=> b!9535 (= b_free!1175 (not b_next!2893))))

(declare-fun tp!1883 () Bool)

(declare-fun b_and!4283 () Bool)

(assert (=> b!9535 (= tp!1883 b_and!4283)))

(declare-fun lambda!2406 () Int)

(declare-fun f!585 () Int)

(declare-fun b_next!2895 () Bool)

(assert (=> start!1910 (= b_next!2887 (or (and start!1910 (= lambda!2406 f!585)) b_next!2895))))

(declare-fun b!9533 () Bool)

(declare-fun e!5659 () Bool)

(assert (=> b!9533 (= e!5659 false)))

(declare-fun e!5660 () Bool)

(assert (=> b!9535 (= e!5660 (and tp!1880 tp!1882 tp!1883))))

(declare-fun res!3122 () Bool)

(assert (=> start!1910 (=> (not res!3122) (not e!5659))))

(assert (=> start!1910 (= res!3122 (= f!585 lambda!2406))))

(assert (=> start!1910 e!5659))

(assert (=> start!1910 true))

(declare-datatypes () ((Balance!219 (Balance!220 (extraOpen!150 Int) (extraClose!150 Int)))))

(declare-datatypes () ((EqProof!82 (EqProof!83 (x!5380 Int) (y!587 Int)))))

(declare-fun that!244 () EqProof!82)

(declare-fun e!5661 () Bool)

(declare-fun inv!336 (EqProof!82) Bool)

(assert (=> start!1910 (and (inv!336 that!244) e!5661)))

(assert (=> start!1910 tp!1885))

(declare-datatypes () ((EqEvidence!182 (EqEvidence!183 (x!5381 Int) (y!588 Int) (evidence!158 Int)))))

(declare-fun thiss!852 () EqEvidence!182)

(declare-fun inv!337 (EqEvidence!182) Bool)

(assert (=> start!1910 (and (inv!337 thiss!852) e!5660)))

(assert (=> b!9534 (= e!5661 (and tp!1884 tp!1881))))

(declare-fun b!9532 () Bool)

(declare-fun res!3123 () Bool)

(assert (=> b!9532 (=> (not res!3123) (not e!5659))))

(declare-datatypes () ((ProofOps!166 (ProofOps!167 (prop!207 Bool)))))

(declare-fun thiss!829 () ProofOps!166)

(declare-datatypes () ((Tree!72 (Branch!63 (left!450 Tree!72) (right!453 Tree!72)) (Leaf!145 (value!1314 Balance!219)))))

(declare-fun tree!25 () Tree!72)

(declare-fun fold!48 (Tree!72 Int) Balance!219)

(declare-datatypes () ((List!226 (Nil!224) (Cons!223 (head!441 Balance!219) (tail!453 List!226)))))

(declare-fun foldRight1!79 (List!226 Int) Balance!219)

(declare-fun toList!72 (Tree!72) List!226)

(assert (=> b!9532 (= res!3123 (= thiss!829 (ProofOps!167 (= (fold!48 tree!25 f!585) (foldRight1!79 (toList!72 tree!25) f!585)))))))

(assert (= (and start!1910 res!3122) b!9532))

(assert (= (and b!9532 res!3123) b!9533))

(assert (= start!1910 b!9534))

(assert (= start!1910 b!9535))

(declare-fun m!12693 () Bool)

(assert (=> start!1910 m!12693))

(declare-fun m!12695 () Bool)

(assert (=> start!1910 m!12695))

(declare-fun m!12697 () Bool)

(assert (=> b!9532 m!12697))

(declare-fun m!12699 () Bool)

(assert (=> b!9532 m!12699))

(assert (=> b!9532 m!12699))

(declare-fun m!12701 () Bool)

(assert (=> b!9532 m!12701))

(push 1)

(assert (not b_next!2891))

(assert b_and!4273)

(assert (not b_next!2883))

(assert b_and!4279)

(assert (not b_next!2889))

(assert b_and!4283)

(assert b_and!4281)

(assert b_and!4277)

(assert (not b_next!2893))

(assert (not b_next!2895))

(assert b_and!4275)

(assert (not b_next!2885))

(assert (not start!1910))

(assert (not b!9532))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2891))

(assert b_and!4273)

(assert (not b_next!2883))

(assert b_and!4279)

(assert (not b_next!2889))

(assert b_and!4283)

(assert b_and!4281)

(assert b_and!4277)

(assert (not b_next!2893))

(assert (not b_next!2895))

(assert b_and!4275)

(assert (not b_next!2885))

(check-sat)

(pop 1)


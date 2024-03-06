; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1926 () Bool)

(assert start!1926)

(declare-fun b_free!1189 () Bool)

(declare-fun b_next!2953 () Bool)

(assert (=> start!1926 (= b_free!1189 (not b_next!2953))))

(declare-fun tp!1906 () Bool)

(declare-fun b_and!4355 () Bool)

(assert (=> start!1926 (= tp!1906 b_and!4355)))

(declare-fun f!585 () Int)

(declare-fun lambda!2432 () Int)

(declare-fun b_next!2955 () Bool)

(assert (=> start!1926 (= b_next!2953 (or (and start!1926 (= lambda!2432 f!585)) b_next!2955))))

(declare-fun res!3150 () Bool)

(declare-fun e!5707 () Bool)

(assert (=> start!1926 (=> (not res!3150) (not e!5707))))

(assert (=> start!1926 (= res!3150 (= f!585 lambda!2432))))

(assert (=> start!1926 e!5707))

(assert (=> start!1926 tp!1906))

(assert (=> start!1926 true))

(declare-fun b!9601 () Bool)

(declare-fun res!3151 () Bool)

(assert (=> b!9601 (=> (not res!3151) (not e!5707))))

(declare-datatypes () ((ProofOps!170 (ProofOps!171 (prop!209 Bool)))))

(declare-fun thiss!829 () ProofOps!170)

(declare-datatypes () ((Balance!223 (Balance!224 (extraOpen!152 Int) (extraClose!152 Int)))))

(declare-datatypes () ((Tree!74 (Branch!65 (left!455 Tree!74) (right!458 Tree!74)) (Leaf!147 (value!1316 Balance!223)))))

(declare-fun tree!25 () Tree!74)

(declare-fun fold!50 (Tree!74 Int) Balance!223)

(declare-datatypes () ((List!228 (Nil!226) (Cons!225 (head!443 Balance!223) (tail!455 List!228)))))

(declare-fun foldRight1!81 (List!228 Int) Balance!223)

(declare-fun toList!74 (Tree!74) List!228)

(assert (=> b!9601 (= res!3151 (= thiss!829 (ProofOps!171 (= (fold!50 tree!25 f!585) (foldRight1!81 (toList!74 tree!25) f!585)))))))

(declare-fun b!9602 () Bool)

(assert (=> b!9602 (= e!5707 false)))

(assert (= (and start!1926 res!3150) b!9601))

(assert (= (and b!9601 res!3151) b!9602))

(declare-fun m!12777 () Bool)

(assert (=> b!9601 m!12777))

(declare-fun m!12779 () Bool)

(assert (=> b!9601 m!12779))

(assert (=> b!9601 m!12779))

(declare-fun m!12781 () Bool)

(assert (=> b!9601 m!12781))

(push 1)

(assert (not b!9601))

(assert b_and!4355)

(assert (not b_next!2955))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4355)

(assert (not b_next!2955))

(check-sat)

(pop 1)


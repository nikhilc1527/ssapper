; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1908 () Bool)

(assert start!1908)

(declare-fun b!9522 () Bool)

(declare-fun b_free!1153 () Bool)

(declare-fun b_next!2869 () Bool)

(assert (=> b!9522 (= b_free!1153 (not b_next!2869))))

(declare-fun tp!1862 () Bool)

(declare-fun b_and!4261 () Bool)

(assert (=> b!9522 (= tp!1862 b_and!4261)))

(declare-fun b_free!1155 () Bool)

(declare-fun b_next!2871 () Bool)

(assert (=> b!9522 (= b_free!1155 (not b_next!2871))))

(declare-fun tp!1866 () Bool)

(declare-fun b_and!4263 () Bool)

(assert (=> b!9522 (= tp!1866 b_and!4263)))

(declare-fun b_free!1157 () Bool)

(declare-fun b_next!2873 () Bool)

(assert (=> start!1908 (= b_free!1157 (not b_next!2873))))

(declare-fun tp!1867 () Bool)

(declare-fun b_and!4265 () Bool)

(assert (=> start!1908 (= tp!1867 b_and!4265)))

(declare-fun b!9523 () Bool)

(declare-fun b_free!1159 () Bool)

(declare-fun b_next!2875 () Bool)

(assert (=> b!9523 (= b_free!1159 (not b_next!2875))))

(declare-fun tp!1865 () Bool)

(declare-fun b_and!4267 () Bool)

(assert (=> b!9523 (= tp!1865 b_and!4267)))

(declare-fun b_free!1161 () Bool)

(declare-fun b_next!2877 () Bool)

(assert (=> b!9523 (= b_free!1161 (not b_next!2877))))

(declare-fun tp!1864 () Bool)

(declare-fun b_and!4269 () Bool)

(assert (=> b!9523 (= tp!1864 b_and!4269)))

(declare-fun b_free!1163 () Bool)

(declare-fun b_next!2879 () Bool)

(assert (=> b!9523 (= b_free!1163 (not b_next!2879))))

(declare-fun tp!1863 () Bool)

(declare-fun b_and!4271 () Bool)

(assert (=> b!9523 (= tp!1863 b_and!4271)))

(declare-fun f!585 () Int)

(declare-fun lambda!2403 () Int)

(declare-fun b_next!2881 () Bool)

(assert (=> start!1908 (= b_next!2873 (or (and start!1908 (= lambda!2403 f!585)) b_next!2881))))

(declare-fun b!9520 () Bool)

(declare-fun res!3116 () Bool)

(declare-fun e!5652 () Bool)

(assert (=> b!9520 (=> (not res!3116) (not e!5652))))

(declare-datatypes () ((ProofOps!164 (ProofOps!165 (prop!206 Bool)))))

(declare-fun thiss!829 () ProofOps!164)

(declare-datatypes () ((Balance!217 (Balance!218 (extraOpen!149 Int) (extraClose!149 Int)))))

(declare-datatypes () ((Tree!71 (Branch!62 (left!449 Tree!71) (right!452 Tree!71)) (Leaf!144 (value!1313 Balance!217)))))

(declare-fun tree!25 () Tree!71)

(declare-fun fold!47 (Tree!71 Int) Balance!217)

(declare-datatypes () ((List!225 (Nil!223) (Cons!222 (head!440 Balance!217) (tail!452 List!225)))))

(declare-fun foldRight1!78 (List!225 Int) Balance!217)

(declare-fun toList!71 (Tree!71) List!225)

(assert (=> b!9520 (= res!3116 (= thiss!829 (ProofOps!165 (= (fold!47 tree!25 f!585) (foldRight1!78 (toList!71 tree!25) f!585)))))))

(declare-fun res!3117 () Bool)

(assert (=> start!1908 (=> (not res!3117) (not e!5652))))

(assert (=> start!1908 (= res!3117 (= f!585 lambda!2403))))

(assert (=> start!1908 e!5652))

(assert (=> start!1908 true))

(declare-datatypes () ((EqProof!80 (EqProof!81 (x!5374 Int) (y!585 Int)))))

(declare-fun that!244 () EqProof!80)

(declare-fun e!5650 () Bool)

(declare-fun inv!334 (EqProof!80) Bool)

(assert (=> start!1908 (and (inv!334 that!244) e!5650)))

(assert (=> start!1908 tp!1867))

(declare-datatypes () ((EqEvidence!180 (EqEvidence!181 (x!5375 Int) (y!586 Int) (evidence!157 Int)))))

(declare-fun thiss!852 () EqEvidence!180)

(declare-fun e!5651 () Bool)

(declare-fun inv!335 (EqEvidence!180) Bool)

(assert (=> start!1908 (and (inv!335 thiss!852) e!5651)))

(assert (=> b!9522 (= e!5650 (and tp!1862 tp!1866))))

(declare-fun b!9521 () Bool)

(assert (=> b!9521 (= e!5652 false)))

(assert (=> b!9523 (= e!5651 (and tp!1865 tp!1864 tp!1863))))

(assert (= (and start!1908 res!3117) b!9520))

(assert (= (and b!9520 res!3116) b!9521))

(assert (= start!1908 b!9522))

(assert (= start!1908 b!9523))

(declare-fun m!12683 () Bool)

(assert (=> b!9520 m!12683))

(declare-fun m!12685 () Bool)

(assert (=> b!9520 m!12685))

(assert (=> b!9520 m!12685))

(declare-fun m!12687 () Bool)

(assert (=> b!9520 m!12687))

(declare-fun m!12689 () Bool)

(assert (=> start!1908 m!12689))

(declare-fun m!12691 () Bool)

(assert (=> start!1908 m!12691))

(push 1)

(assert (not b_next!2879))

(assert (not b_next!2877))

(assert (not b_next!2869))

(assert b_and!4271)

(assert b_and!4269)

(assert (not start!1908))

(assert (not b_next!2871))

(assert (not b_next!2881))

(assert b_and!4267)

(assert (not b!9520))

(assert b_and!4263)

(assert (not b_next!2875))

(assert b_and!4265)

(assert b_and!4261)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2879))

(assert (not b_next!2877))

(assert (not b_next!2869))

(assert b_and!4271)

(assert b_and!4269)

(assert (not b_next!2871))

(assert (not b_next!2881))

(assert b_and!4267)

(assert b_and!4263)

(assert (not b_next!2875))

(assert b_and!4265)

(assert b_and!4261)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2016 () Bool)

(assert start!2016)

(declare-fun b!10040 () Bool)

(declare-fun b_free!1269 () Bool)

(declare-fun b_next!3141 () Bool)

(assert (=> b!10040 (= b_free!1269 (not b_next!3141))))

(declare-fun tp!2039 () Bool)

(declare-fun b_and!4555 () Bool)

(assert (=> b!10040 (= tp!2039 b_and!4555)))

(declare-fun b_free!1271 () Bool)

(declare-fun b_next!3143 () Bool)

(assert (=> b!10040 (= b_free!1271 (not b_next!3143))))

(declare-fun tp!2038 () Bool)

(declare-fun b_and!4557 () Bool)

(assert (=> b!10040 (= tp!2038 b_and!4557)))

(declare-fun b_free!1273 () Bool)

(declare-fun b_next!3145 () Bool)

(assert (=> b!10040 (= b_free!1273 (not b_next!3145))))

(declare-fun tp!2040 () Bool)

(declare-fun b_and!4559 () Bool)

(assert (=> b!10040 (= tp!2040 b_and!4559)))

(declare-fun b!10046 () Bool)

(declare-fun b_free!1275 () Bool)

(declare-fun b_next!3147 () Bool)

(assert (=> b!10046 (= b_free!1275 (not b_next!3147))))

(declare-fun tp!2037 () Bool)

(declare-fun b_and!4561 () Bool)

(assert (=> b!10046 (= tp!2037 b_and!4561)))

(declare-fun b_free!1277 () Bool)

(declare-fun b_next!3149 () Bool)

(assert (=> b!10046 (= b_free!1277 (not b_next!3149))))

(declare-fun tp!2036 () Bool)

(declare-fun b_and!4563 () Bool)

(assert (=> b!10046 (= tp!2036 b_and!4563)))

(declare-fun b_free!1279 () Bool)

(declare-fun b_next!3151 () Bool)

(assert (=> b!10046 (= b_free!1279 (not b_next!3151))))

(declare-fun tp!2041 () Bool)

(declare-fun b_and!4565 () Bool)

(assert (=> b!10046 (= tp!2041 b_and!4565)))

(declare-fun b!10039 () Bool)

(declare-fun res!3417 () Bool)

(declare-fun e!5908 () Bool)

(assert (=> b!10039 (=> (not res!3417) (not e!5908))))

(declare-datatypes () ((Parenthesis!61 (CloseParenthesis!60) (OpenParenthesis!60))))

(declare-datatypes () ((List!238 (Nil!236) (Cons!235 (head!453 Parenthesis!61) (tail!465 List!238)))))

(declare-fun xs!280 () List!238)

(declare-fun original_sequential_helper!0 (List!238) Bool)

(assert (=> b!10039 (= res!3417 (original_sequential_helper!0 (tail!465 xs!280)))))

(declare-fun e!5906 () Bool)

(assert (=> b!10040 (= e!5906 (and tp!2039 tp!2038 tp!2040))))

(declare-fun b!10041 () Bool)

(declare-fun e!5905 () Bool)

(declare-datatypes () ((Balance!243 (Balance!244 (extraOpen!162 Int) (extraClose!162 Int)))))

(declare-fun balance!3 () Balance!243)

(declare-fun nonNegative!0 (Balance!243) Bool)

(assert (=> b!10041 (= e!5905 (nonNegative!0 balance!3))))

(declare-fun b!10042 () Bool)

(assert (=> b!10042 (= e!5908 false)))

(declare-fun b!10043 () Bool)

(declare-fun res!3413 () Bool)

(assert (=> b!10043 (=> (not res!3413) (not e!5908))))

(declare-fun lambda!2635 () Int)

(declare-fun counter!4 () Int)

(declare-fun foldRight!45 (List!238 Int Int) Int)

(assert (=> b!10043 (= res!3413 (= counter!4 (foldRight!45 xs!280 0 lambda!2635)))))

(declare-fun b!10044 () Bool)

(declare-fun res!3412 () Bool)

(assert (=> b!10044 (=> (not res!3412) (not e!5908))))

(declare-datatypes () ((ProofOps!190 (ProofOps!191 (prop!223 Bool)))))

(declare-fun thiss!651 () ProofOps!190)

(assert (=> b!10044 (= res!3412 (= thiss!651 (ProofOps!191 e!5905)))))

(declare-fun res!3416 () Bool)

(assert (=> b!10044 (=> (not res!3416) (not e!5905))))

(declare-fun balanceToCounter!0 (Balance!243) Int)

(assert (=> b!10044 (= res!3416 (= (balanceToCounter!0 balance!3) counter!4))))

(declare-fun b!10045 () Bool)

(declare-fun res!3415 () Bool)

(assert (=> b!10045 (=> (not res!3415) (not e!5908))))

(assert (=> b!10045 (= res!3415 (not (is-Nil!236 xs!280)))))

(declare-fun e!5907 () Bool)

(assert (=> b!10046 (= e!5907 (and tp!2037 tp!2036 tp!2041))))

(declare-fun res!3414 () Bool)

(assert (=> start!2016 (=> (not res!3414) (not e!5908))))

(declare-fun lambda!2634 () Int)

(declare-fun foldRight!46 (List!238 Balance!243 Int) Balance!243)

(assert (=> start!2016 (= res!3414 (= balance!3 (foldRight!46 xs!280 (Balance!244 0 0) lambda!2634)))))

(assert (=> start!2016 e!5908))

(assert (=> start!2016 true))

(declare-datatypes () ((EqEvidence!198 (EqEvidence!199 (x!5690 Int) (y!605 Int) (evidence!166 Int)))))

(declare-fun thiss!672 () EqEvidence!198)

(declare-fun inv!350 (EqEvidence!198) Bool)

(assert (=> start!2016 (and (inv!350 thiss!672) e!5906)))

(declare-fun that!165 () EqEvidence!198)

(assert (=> start!2016 (and (inv!350 that!165) e!5907)))

(assert (= (and start!2016 res!3414) b!10043))

(assert (= (and b!10043 res!3413) b!10044))

(assert (= (and b!10044 res!3416) b!10041))

(assert (= (and b!10044 res!3412) b!10045))

(assert (= (and b!10045 res!3415) b!10039))

(assert (= (and b!10039 res!3417) b!10042))

(assert (= start!2016 b!10040))

(assert (= start!2016 b!10046))

(declare-fun m!13171 () Bool)

(assert (=> b!10039 m!13171))

(declare-fun m!13173 () Bool)

(assert (=> start!2016 m!13173))

(declare-fun m!13175 () Bool)

(assert (=> start!2016 m!13175))

(declare-fun m!13177 () Bool)

(assert (=> start!2016 m!13177))

(declare-fun m!13179 () Bool)

(assert (=> b!10041 m!13179))

(declare-fun m!13181 () Bool)

(assert (=> b!10043 m!13181))

(declare-fun m!13183 () Bool)

(assert (=> b!10044 m!13183))

(push 1)

(assert b_and!4557)

(assert (not b!10041))

(assert (not b_next!3147))

(assert (not b_next!3141))

(assert b_and!4565)

(assert (not b_next!3149))

(assert b_and!4561)

(assert (not b_next!3151))

(assert (not b_next!3145))

(assert b_and!4559)

(assert (not b!10039))

(assert (not b_next!3143))

(assert b_and!4563)

(assert (not b!10044))

(assert (not start!2016))

(assert b_and!4555)

(assert (not b!10043))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4557)

(assert (not b_next!3147))

(assert (not b_next!3141))

(assert b_and!4565)

(assert (not b_next!3149))

(assert b_and!4561)

(assert (not b_next!3151))

(assert (not b_next!3145))

(assert b_and!4559)

(assert (not b_next!3143))

(assert b_and!4563)

(assert b_and!4555)

(check-sat)

(pop 1)


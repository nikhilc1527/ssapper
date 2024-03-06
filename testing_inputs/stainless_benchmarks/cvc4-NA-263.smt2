; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2018 () Bool)

(assert start!2018)

(declare-fun b!10066 () Bool)

(declare-fun b_free!1281 () Bool)

(declare-fun b_next!3153 () Bool)

(assert (=> b!10066 (= b_free!1281 (not b_next!3153))))

(declare-fun tp!2056 () Bool)

(declare-fun b_and!4567 () Bool)

(assert (=> b!10066 (= tp!2056 b_and!4567)))

(declare-fun b_free!1283 () Bool)

(declare-fun b_next!3155 () Bool)

(assert (=> b!10066 (= b_free!1283 (not b_next!3155))))

(declare-fun tp!2057 () Bool)

(declare-fun b_and!4569 () Bool)

(assert (=> b!10066 (= tp!2057 b_and!4569)))

(declare-fun b_free!1285 () Bool)

(declare-fun b_next!3157 () Bool)

(assert (=> b!10066 (= b_free!1285 (not b_next!3157))))

(declare-fun tp!2058 () Bool)

(declare-fun b_and!4571 () Bool)

(assert (=> b!10066 (= tp!2058 b_and!4571)))

(declare-fun b!10064 () Bool)

(declare-fun b_free!1287 () Bool)

(declare-fun b_next!3159 () Bool)

(assert (=> b!10064 (= b_free!1287 (not b_next!3159))))

(declare-fun tp!2055 () Bool)

(declare-fun b_and!4573 () Bool)

(assert (=> b!10064 (= tp!2055 b_and!4573)))

(declare-fun b_free!1289 () Bool)

(declare-fun b_next!3161 () Bool)

(assert (=> b!10064 (= b_free!1289 (not b_next!3161))))

(declare-fun tp!2054 () Bool)

(declare-fun b_and!4575 () Bool)

(assert (=> b!10064 (= tp!2054 b_and!4575)))

(declare-fun b_free!1291 () Bool)

(declare-fun b_next!3163 () Bool)

(assert (=> b!10064 (= b_free!1291 (not b_next!3163))))

(declare-fun tp!2059 () Bool)

(declare-fun b_and!4577 () Bool)

(assert (=> b!10064 (= tp!2059 b_and!4577)))

(declare-fun b!10063 () Bool)

(declare-fun e!5917 () Bool)

(assert (=> b!10063 (= e!5917 false)))

(declare-fun e!5918 () Bool)

(assert (=> b!10064 (= e!5918 (and tp!2055 tp!2054 tp!2059))))

(declare-fun b!10065 () Bool)

(declare-fun res!3431 () Bool)

(assert (=> b!10065 (=> (not res!3431) (not e!5917))))

(declare-datatypes () ((Parenthesis!62 (CloseParenthesis!61) (OpenParenthesis!61))))

(declare-datatypes () ((List!239 (Nil!237) (Cons!236 (head!454 Parenthesis!62) (tail!466 List!239)))))

(declare-fun xs!280 () List!239)

(declare-fun original_sequential_helper!0 (List!239) Bool)

(assert (=> b!10065 (= res!3431 (original_sequential_helper!0 (tail!466 xs!280)))))

(declare-fun e!5919 () Bool)

(assert (=> b!10066 (= e!5919 (and tp!2056 tp!2057 tp!2058))))

(declare-fun res!3435 () Bool)

(assert (=> start!2018 (=> (not res!3435) (not e!5917))))

(declare-datatypes () ((Balance!245 (Balance!246 (extraOpen!163 Int) (extraClose!163 Int)))))

(declare-fun balance!3 () Balance!245)

(declare-fun lambda!2640 () Int)

(declare-fun foldRight!47 (List!239 Balance!245 Int) Balance!245)

(assert (=> start!2018 (= res!3435 (= balance!3 (foldRight!47 xs!280 (Balance!246 0 0) lambda!2640)))))

(assert (=> start!2018 e!5917))

(assert (=> start!2018 true))

(declare-datatypes () ((EqEvidence!200 (EqEvidence!201 (x!5699 Int) (y!606 Int) (evidence!167 Int)))))

(declare-fun thiss!672 () EqEvidence!200)

(declare-fun inv!351 (EqEvidence!200) Bool)

(assert (=> start!2018 (and (inv!351 thiss!672) e!5919)))

(declare-fun that!165 () EqEvidence!200)

(assert (=> start!2018 (and (inv!351 that!165) e!5918)))

(declare-fun b!10067 () Bool)

(declare-fun e!5920 () Bool)

(declare-fun nonNegative!0 (Balance!245) Bool)

(assert (=> b!10067 (= e!5920 (nonNegative!0 balance!3))))

(declare-fun b!10068 () Bool)

(declare-fun res!3430 () Bool)

(assert (=> b!10068 (=> (not res!3430) (not e!5917))))

(declare-datatypes () ((ProofOps!192 (ProofOps!193 (prop!224 Bool)))))

(declare-fun thiss!651 () ProofOps!192)

(assert (=> b!10068 (= res!3430 (= thiss!651 (ProofOps!193 e!5920)))))

(declare-fun res!3433 () Bool)

(assert (=> b!10068 (=> (not res!3433) (not e!5920))))

(declare-fun counter!4 () Int)

(declare-fun balanceToCounter!0 (Balance!245) Int)

(assert (=> b!10068 (= res!3433 (= (balanceToCounter!0 balance!3) counter!4))))

(declare-fun b!10069 () Bool)

(declare-fun res!3432 () Bool)

(assert (=> b!10069 (=> (not res!3432) (not e!5917))))

(declare-fun lambda!2641 () Int)

(declare-fun foldRight!48 (List!239 Int Int) Int)

(assert (=> b!10069 (= res!3432 (= counter!4 (foldRight!48 xs!280 0 lambda!2641)))))

(declare-fun b!10070 () Bool)

(declare-fun res!3434 () Bool)

(assert (=> b!10070 (=> (not res!3434) (not e!5917))))

(assert (=> b!10070 (= res!3434 (not (is-Nil!237 xs!280)))))

(assert (= (and start!2018 res!3435) b!10069))

(assert (= (and b!10069 res!3432) b!10068))

(assert (= (and b!10068 res!3433) b!10067))

(assert (= (and b!10068 res!3430) b!10070))

(assert (= (and b!10070 res!3434) b!10065))

(assert (= (and b!10065 res!3431) b!10063))

(assert (= start!2018 b!10066))

(assert (= start!2018 b!10064))

(declare-fun m!13185 () Bool)

(assert (=> start!2018 m!13185))

(declare-fun m!13187 () Bool)

(assert (=> start!2018 m!13187))

(declare-fun m!13189 () Bool)

(assert (=> start!2018 m!13189))

(declare-fun m!13191 () Bool)

(assert (=> b!10067 m!13191))

(declare-fun m!13193 () Bool)

(assert (=> b!10065 m!13193))

(declare-fun m!13195 () Bool)

(assert (=> b!10068 m!13195))

(declare-fun m!13197 () Bool)

(assert (=> b!10069 m!13197))

(push 1)

(assert (not b!10065))

(assert (not b!10069))

(assert (not b_next!3153))

(assert (not b!10067))

(assert (not b!10068))

(assert (not start!2018))

(assert b_and!4569)

(assert (not b_next!3157))

(assert (not b_next!3155))

(assert b_and!4567)

(assert (not b_next!3161))

(assert (not b_next!3163))

(assert b_and!4575)

(assert (not b_next!3159))

(assert b_and!4573)

(assert b_and!4577)

(assert b_and!4571)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3153))

(assert b_and!4569)

(assert (not b_next!3157))

(assert (not b_next!3155))

(assert b_and!4567)

(assert (not b_next!3161))

(assert (not b_next!3163))

(assert b_and!4575)

(assert (not b_next!3159))

(assert b_and!4573)

(assert b_and!4577)

(assert b_and!4571)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2058 () Bool)

(assert start!2058)

(declare-fun b!10267 () Bool)

(declare-fun b_free!1329 () Bool)

(declare-fun b_next!3265 () Bool)

(assert (=> b!10267 (= b_free!1329 (not b_next!3265))))

(declare-fun tp!2131 () Bool)

(declare-fun b_and!4715 () Bool)

(assert (=> b!10267 (= tp!2131 b_and!4715)))

(declare-fun b_free!1331 () Bool)

(declare-fun b_next!3267 () Bool)

(assert (=> b!10267 (= b_free!1331 (not b_next!3267))))

(declare-fun tp!2126 () Bool)

(declare-fun b_and!4717 () Bool)

(assert (=> b!10267 (= tp!2126 b_and!4717)))

(declare-fun b_free!1333 () Bool)

(declare-fun b_next!3269 () Bool)

(assert (=> b!10267 (= b_free!1333 (not b_next!3269))))

(declare-fun tp!2128 () Bool)

(declare-fun b_and!4719 () Bool)

(assert (=> b!10267 (= tp!2128 b_and!4719)))

(declare-fun b!10264 () Bool)

(declare-fun b_free!1335 () Bool)

(declare-fun b_next!3271 () Bool)

(assert (=> b!10264 (= b_free!1335 (not b_next!3271))))

(declare-fun tp!2129 () Bool)

(declare-fun b_and!4721 () Bool)

(assert (=> b!10264 (= tp!2129 b_and!4721)))

(declare-fun b_free!1337 () Bool)

(declare-fun b_next!3273 () Bool)

(assert (=> b!10264 (= b_free!1337 (not b_next!3273))))

(declare-fun tp!2127 () Bool)

(declare-fun b_and!4723 () Bool)

(assert (=> b!10264 (= tp!2127 b_and!4723)))

(declare-fun b_free!1339 () Bool)

(declare-fun b_next!3275 () Bool)

(assert (=> b!10264 (= b_free!1339 (not b_next!3275))))

(declare-fun tp!2130 () Bool)

(declare-fun b_and!4725 () Bool)

(assert (=> b!10264 (= tp!2130 b_and!4725)))

(declare-fun b!10261 () Bool)

(declare-fun e!6007 () Bool)

(assert (=> b!10261 (= e!6007 false)))

(declare-fun b!10262 () Bool)

(declare-fun e!6004 () Bool)

(declare-datatypes () ((Balance!253 (Balance!254 (extraOpen!167 Int) (extraClose!167 Int)))))

(declare-fun balance!3 () Balance!253)

(declare-fun nonNegative!0 (Balance!253) Bool)

(assert (=> b!10262 (= e!6004 (nonNegative!0 balance!3))))

(declare-fun b!10263 () Bool)

(declare-fun res!3555 () Bool)

(assert (=> b!10263 (=> (not res!3555) (not e!6007))))

(declare-datatypes () ((Parenthesis!66 (CloseParenthesis!65) (OpenParenthesis!65))))

(declare-datatypes () ((List!243 (Nil!241) (Cons!240 (head!458 Parenthesis!66) (tail!470 List!243)))))

(declare-fun xs!280 () List!243)

(declare-fun original_sequential_helper!0 (List!243) Bool)

(assert (=> b!10263 (= res!3555 (original_sequential_helper!0 (tail!470 xs!280)))))

(declare-fun e!6006 () Bool)

(assert (=> b!10264 (= e!6006 (and tp!2129 tp!2127 tp!2130))))

(declare-fun b!10265 () Bool)

(declare-fun res!3553 () Bool)

(assert (=> b!10265 (=> (not res!3553) (not e!6007))))

(declare-datatypes () ((ProofOps!200 (ProofOps!201 (prop!230 Bool)))))

(declare-fun thiss!651 () ProofOps!200)

(assert (=> b!10265 (= res!3553 (= thiss!651 (ProofOps!201 e!6004)))))

(declare-fun res!3556 () Bool)

(assert (=> b!10265 (=> (not res!3556) (not e!6004))))

(declare-fun counter!4 () Int)

(declare-fun balanceToCounter!0 (Balance!253) Int)

(assert (=> b!10265 (= res!3556 (= (balanceToCounter!0 balance!3) counter!4))))

(declare-fun b!10266 () Bool)

(declare-fun res!3552 () Bool)

(assert (=> b!10266 (=> (not res!3552) (not e!6007))))

(declare-fun lambda!2733 () Int)

(declare-fun foldRight!55 (List!243 Int Int) Int)

(assert (=> b!10266 (= res!3552 (= counter!4 (foldRight!55 xs!280 0 lambda!2733)))))

(declare-fun res!3554 () Bool)

(assert (=> start!2058 (=> (not res!3554) (not e!6007))))

(declare-fun lambda!2732 () Int)

(declare-fun foldRight!56 (List!243 Balance!253 Int) Balance!253)

(assert (=> start!2058 (= res!3554 (= balance!3 (foldRight!56 xs!280 (Balance!254 0 0) lambda!2732)))))

(assert (=> start!2058 e!6007))

(assert (=> start!2058 true))

(declare-datatypes () ((EqEvidence!208 (EqEvidence!209 (x!5821 Int) (y!611 Int) (evidence!171 Int)))))

(declare-fun thiss!671 () EqEvidence!208)

(declare-fun e!6005 () Bool)

(declare-fun inv!356 (EqEvidence!208) Bool)

(assert (=> start!2058 (and (inv!356 thiss!671) e!6005)))

(declare-fun that!170 () EqEvidence!208)

(assert (=> start!2058 (and (inv!356 that!170) e!6006)))

(assert (=> b!10267 (= e!6005 (and tp!2131 tp!2126 tp!2128))))

(declare-fun b!10268 () Bool)

(declare-fun res!3551 () Bool)

(assert (=> b!10268 (=> (not res!3551) (not e!6007))))

(assert (=> b!10268 (= res!3551 (not (is-Nil!241 xs!280)))))

(assert (= (and start!2058 res!3554) b!10266))

(assert (= (and b!10266 res!3552) b!10265))

(assert (= (and b!10265 res!3556) b!10262))

(assert (= (and b!10265 res!3553) b!10268))

(assert (= (and b!10268 res!3551) b!10263))

(assert (= (and b!10263 res!3555) b!10261))

(assert (= start!2058 b!10267))

(assert (= start!2058 b!10264))

(declare-fun m!13351 () Bool)

(assert (=> start!2058 m!13351))

(declare-fun m!13353 () Bool)

(assert (=> start!2058 m!13353))

(declare-fun m!13355 () Bool)

(assert (=> start!2058 m!13355))

(declare-fun m!13357 () Bool)

(assert (=> b!10263 m!13357))

(declare-fun m!13359 () Bool)

(assert (=> b!10265 m!13359))

(declare-fun m!13361 () Bool)

(assert (=> b!10262 m!13361))

(declare-fun m!13363 () Bool)

(assert (=> b!10266 m!13363))

(push 1)

(assert b_and!4717)

(assert (not b_next!3267))

(assert b_and!4715)

(assert (not b_next!3271))

(assert b_and!4719)

(assert (not b!10262))

(assert (not start!2058))

(assert (not b_next!3273))

(assert (not b_next!3265))

(assert (not b!10265))

(assert b_and!4723)

(assert (not b!10263))

(assert b_and!4725)

(assert b_and!4721)

(assert (not b_next!3275))

(assert (not b_next!3269))

(assert (not b!10266))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4717)

(assert (not b_next!3267))

(assert b_and!4715)

(assert (not b_next!3271))

(assert b_and!4719)

(assert (not b_next!3273))

(assert (not b_next!3265))

(assert b_and!4723)

(assert b_and!4725)

(assert b_and!4721)

(assert (not b_next!3275))

(assert (not b_next!3269))

(check-sat)

(pop 1)


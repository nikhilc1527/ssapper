; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2056 () Bool)

(assert start!2056)

(declare-fun b!10243 () Bool)

(declare-fun b_free!1317 () Bool)

(declare-fun b_next!3253 () Bool)

(assert (=> b!10243 (= b_free!1317 (not b_next!3253))))

(declare-fun tp!2110 () Bool)

(declare-fun b_and!4703 () Bool)

(assert (=> b!10243 (= tp!2110 b_and!4703)))

(declare-fun b_free!1319 () Bool)

(declare-fun b_next!3255 () Bool)

(assert (=> b!10243 (= b_free!1319 (not b_next!3255))))

(declare-fun tp!2109 () Bool)

(declare-fun b_and!4705 () Bool)

(assert (=> b!10243 (= tp!2109 b_and!4705)))

(declare-fun b_free!1321 () Bool)

(declare-fun b_next!3257 () Bool)

(assert (=> b!10243 (= b_free!1321 (not b_next!3257))))

(declare-fun tp!2108 () Bool)

(declare-fun b_and!4707 () Bool)

(assert (=> b!10243 (= tp!2108 b_and!4707)))

(declare-fun b!10240 () Bool)

(declare-fun b_free!1323 () Bool)

(declare-fun b_next!3259 () Bool)

(assert (=> b!10240 (= b_free!1323 (not b_next!3259))))

(declare-fun tp!2112 () Bool)

(declare-fun b_and!4709 () Bool)

(assert (=> b!10240 (= tp!2112 b_and!4709)))

(declare-fun b_free!1325 () Bool)

(declare-fun b_next!3261 () Bool)

(assert (=> b!10240 (= b_free!1325 (not b_next!3261))))

(declare-fun tp!2113 () Bool)

(declare-fun b_and!4711 () Bool)

(assert (=> b!10240 (= tp!2113 b_and!4711)))

(declare-fun b_free!1327 () Bool)

(declare-fun b_next!3263 () Bool)

(assert (=> b!10240 (= b_free!1327 (not b_next!3263))))

(declare-fun tp!2111 () Bool)

(declare-fun b_and!4713 () Bool)

(assert (=> b!10240 (= tp!2111 b_and!4713)))

(declare-fun b!10237 () Bool)

(declare-fun e!5994 () Bool)

(assert (=> b!10237 (= e!5994 false)))

(declare-fun b!10238 () Bool)

(declare-fun res!3537 () Bool)

(assert (=> b!10238 (=> (not res!3537) (not e!5994))))

(declare-datatypes () ((Parenthesis!65 (CloseParenthesis!64) (OpenParenthesis!64))))

(declare-datatypes () ((List!242 (Nil!240) (Cons!239 (head!457 Parenthesis!65) (tail!469 List!242)))))

(declare-fun xs!280 () List!242)

(declare-fun counter!4 () Int)

(declare-fun lambda!2727 () Int)

(declare-fun foldRight!53 (List!242 Int Int) Int)

(assert (=> b!10238 (= res!3537 (= counter!4 (foldRight!53 xs!280 0 lambda!2727)))))

(declare-fun b!10239 () Bool)

(declare-fun e!5995 () Bool)

(declare-datatypes () ((Balance!251 (Balance!252 (extraOpen!166 Int) (extraClose!166 Int)))))

(declare-fun balance!3 () Balance!251)

(declare-fun nonNegative!0 (Balance!251) Bool)

(assert (=> b!10239 (= e!5995 (nonNegative!0 balance!3))))

(declare-fun e!5992 () Bool)

(assert (=> b!10240 (= e!5992 (and tp!2112 tp!2113 tp!2111))))

(declare-fun b!10241 () Bool)

(declare-fun res!3538 () Bool)

(assert (=> b!10241 (=> (not res!3538) (not e!5994))))

(declare-fun original_sequential_helper!0 (List!242) Bool)

(assert (=> b!10241 (= res!3538 (original_sequential_helper!0 (tail!469 xs!280)))))

(declare-fun res!3536 () Bool)

(assert (=> start!2056 (=> (not res!3536) (not e!5994))))

(declare-fun lambda!2726 () Int)

(declare-fun foldRight!54 (List!242 Balance!251 Int) Balance!251)

(assert (=> start!2056 (= res!3536 (= balance!3 (foldRight!54 xs!280 (Balance!252 0 0) lambda!2726)))))

(assert (=> start!2056 e!5994))

(assert (=> start!2056 true))

(declare-datatypes () ((EqEvidence!206 (EqEvidence!207 (x!5812 Int) (y!610 Int) (evidence!170 Int)))))

(declare-fun thiss!671 () EqEvidence!206)

(declare-fun e!5993 () Bool)

(declare-fun inv!355 (EqEvidence!206) Bool)

(assert (=> start!2056 (and (inv!355 thiss!671) e!5993)))

(declare-fun that!170 () EqEvidence!206)

(assert (=> start!2056 (and (inv!355 that!170) e!5992)))

(declare-fun b!10242 () Bool)

(declare-fun res!3534 () Bool)

(assert (=> b!10242 (=> (not res!3534) (not e!5994))))

(declare-datatypes () ((ProofOps!198 (ProofOps!199 (prop!229 Bool)))))

(declare-fun thiss!651 () ProofOps!198)

(assert (=> b!10242 (= res!3534 (= thiss!651 (ProofOps!199 e!5995)))))

(declare-fun res!3533 () Bool)

(assert (=> b!10242 (=> (not res!3533) (not e!5995))))

(declare-fun balanceToCounter!0 (Balance!251) Int)

(assert (=> b!10242 (= res!3533 (= (balanceToCounter!0 balance!3) counter!4))))

(assert (=> b!10243 (= e!5993 (and tp!2110 tp!2109 tp!2108))))

(declare-fun b!10244 () Bool)

(declare-fun res!3535 () Bool)

(assert (=> b!10244 (=> (not res!3535) (not e!5994))))

(assert (=> b!10244 (= res!3535 (not (is-Nil!240 xs!280)))))

(assert (= (and start!2056 res!3536) b!10238))

(assert (= (and b!10238 res!3537) b!10242))

(assert (= (and b!10242 res!3533) b!10239))

(assert (= (and b!10242 res!3534) b!10244))

(assert (= (and b!10244 res!3535) b!10241))

(assert (= (and b!10241 res!3538) b!10237))

(assert (= start!2056 b!10243))

(assert (= start!2056 b!10240))

(declare-fun m!13337 () Bool)

(assert (=> b!10242 m!13337))

(declare-fun m!13339 () Bool)

(assert (=> b!10239 m!13339))

(declare-fun m!13341 () Bool)

(assert (=> start!2056 m!13341))

(declare-fun m!13343 () Bool)

(assert (=> start!2056 m!13343))

(declare-fun m!13345 () Bool)

(assert (=> start!2056 m!13345))

(declare-fun m!13347 () Bool)

(assert (=> b!10241 m!13347))

(declare-fun m!13349 () Bool)

(assert (=> b!10238 m!13349))

(push 1)

(assert (not b!10241))

(assert (not b_next!3255))

(assert b_and!4707)

(assert b_and!4703)

(assert (not b!10238))

(assert b_and!4713)

(assert (not b!10242))

(assert (not b_next!3259))

(assert (not start!2056))

(assert b_and!4711)

(assert (not b_next!3253))

(assert (not b_next!3257))

(assert (not b_next!3261))

(assert (not b_next!3263))

(assert b_and!4705)

(assert (not b!10239))

(assert b_and!4709)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3255))

(assert b_and!4707)

(assert b_and!4703)

(assert b_and!4713)

(assert (not b_next!3259))

(assert b_and!4711)

(assert (not b_next!3253))

(assert (not b_next!3257))

(assert (not b_next!3261))

(assert (not b_next!3263))

(assert b_and!4705)

(assert b_and!4709)

(check-sat)

(pop 1)


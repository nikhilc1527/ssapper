; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2076 () Bool)

(assert start!2076)

(declare-fun b!10364 () Bool)

(declare-fun b_free!1353 () Bool)

(declare-fun b_next!3321 () Bool)

(assert (=> b!10364 (= b_free!1353 (not b_next!3321))))

(declare-fun tp!2164 () Bool)

(declare-fun b_and!4799 () Bool)

(assert (=> b!10364 (= tp!2164 b_and!4799)))

(declare-fun b_free!1355 () Bool)

(declare-fun b_next!3323 () Bool)

(assert (=> b!10364 (= b_free!1355 (not b_next!3323))))

(declare-fun tp!2161 () Bool)

(declare-fun b_and!4801 () Bool)

(assert (=> b!10364 (= tp!2161 b_and!4801)))

(declare-fun b_free!1357 () Bool)

(declare-fun b_next!3325 () Bool)

(assert (=> b!10364 (= b_free!1357 (not b_next!3325))))

(declare-fun tp!2160 () Bool)

(declare-fun b_and!4803 () Bool)

(assert (=> b!10364 (= tp!2160 b_and!4803)))

(declare-fun b!10366 () Bool)

(declare-fun b_free!1359 () Bool)

(declare-fun b_next!3327 () Bool)

(assert (=> b!10366 (= b_free!1359 (not b_next!3327))))

(declare-fun tp!2162 () Bool)

(declare-fun b_and!4805 () Bool)

(assert (=> b!10366 (= tp!2162 b_and!4805)))

(declare-fun b_free!1361 () Bool)

(declare-fun b_next!3329 () Bool)

(assert (=> b!10366 (= b_free!1361 (not b_next!3329))))

(declare-fun tp!2163 () Bool)

(declare-fun b_and!4807 () Bool)

(assert (=> b!10366 (= tp!2163 b_and!4807)))

(declare-fun b!10361 () Bool)

(declare-fun res!3616 () Bool)

(declare-fun e!6050 () Bool)

(assert (=> b!10361 (=> (not res!3616) (not e!6050))))

(declare-fun lambda!2778 () Int)

(declare-datatypes () ((Parenthesis!68 (CloseParenthesis!67) (OpenParenthesis!67))))

(declare-datatypes () ((List!245 (Nil!243) (Cons!242 (head!460 Parenthesis!68) (tail!472 List!245)))))

(declare-fun xs!280 () List!245)

(declare-fun counter!4 () Int)

(declare-fun foldRight!59 (List!245 Int Int) Int)

(assert (=> b!10361 (= res!3616 (= counter!4 (foldRight!59 xs!280 0 lambda!2778)))))

(declare-fun b!10362 () Bool)

(declare-fun e!6051 () Bool)

(declare-datatypes () ((Balance!257 (Balance!258 (extraOpen!169 Int) (extraClose!169 Int)))))

(declare-fun balance!3 () Balance!257)

(declare-fun nonNegative!0 (Balance!257) Bool)

(assert (=> b!10362 (= e!6051 (nonNegative!0 balance!3))))

(declare-fun b!10363 () Bool)

(declare-fun res!3615 () Bool)

(assert (=> b!10363 (=> (not res!3615) (not e!6050))))

(assert (=> b!10363 (= res!3615 (not (is-Nil!243 xs!280)))))

(declare-fun res!3613 () Bool)

(assert (=> start!2076 (=> (not res!3613) (not e!6050))))

(declare-fun lambda!2777 () Int)

(declare-fun foldRight!60 (List!245 Balance!257 Int) Balance!257)

(assert (=> start!2076 (= res!3613 (= balance!3 (foldRight!60 xs!280 (Balance!258 0 0) lambda!2777)))))

(assert (=> start!2076 e!6050))

(assert (=> start!2076 true))

(declare-datatypes () ((EqEvidence!212 (EqEvidence!213 (x!5879 Int) (y!613 Int) (evidence!173 Int)))))

(declare-fun thiss!670 () EqEvidence!212)

(declare-fun e!6049 () Bool)

(declare-fun inv!358 (EqEvidence!212) Bool)

(assert (=> start!2076 (and (inv!358 thiss!670) e!6049)))

(declare-datatypes () ((EqProof!96 (EqProof!97 (x!5880 Int) (y!614 Int)))))

(declare-fun that!171 () EqProof!96)

(declare-fun e!6052 () Bool)

(declare-fun inv!359 (EqProof!96) Bool)

(assert (=> start!2076 (and (inv!359 that!171) e!6052)))

(assert (=> b!10364 (= e!6049 (and tp!2164 tp!2161 tp!2160))))

(declare-fun b!10365 () Bool)

(declare-fun res!3612 () Bool)

(assert (=> b!10365 (=> (not res!3612) (not e!6050))))

(declare-datatypes () ((ProofOps!204 (ProofOps!205 (prop!233 Bool)))))

(declare-fun thiss!651 () ProofOps!204)

(assert (=> b!10365 (= res!3612 (= thiss!651 (ProofOps!205 e!6051)))))

(declare-fun res!3614 () Bool)

(assert (=> b!10365 (=> (not res!3614) (not e!6051))))

(declare-fun balanceToCounter!0 (Balance!257) Int)

(assert (=> b!10365 (= res!3614 (= (balanceToCounter!0 balance!3) counter!4))))

(assert (=> b!10366 (= e!6052 (and tp!2162 tp!2163))))

(declare-fun b!10367 () Bool)

(declare-fun res!3617 () Bool)

(assert (=> b!10367 (=> (not res!3617) (not e!6050))))

(declare-fun original_sequential_helper!0 (List!245) Bool)

(assert (=> b!10367 (= res!3617 (original_sequential_helper!0 (tail!472 xs!280)))))

(declare-fun b!10368 () Bool)

(assert (=> b!10368 (= e!6050 false)))

(assert (= (and start!2076 res!3613) b!10361))

(assert (= (and b!10361 res!3616) b!10365))

(assert (= (and b!10365 res!3614) b!10362))

(assert (= (and b!10365 res!3612) b!10363))

(assert (= (and b!10363 res!3615) b!10367))

(assert (= (and b!10367 res!3617) b!10368))

(assert (= start!2076 b!10364))

(assert (= start!2076 b!10366))

(declare-fun m!13439 () Bool)

(assert (=> start!2076 m!13439))

(declare-fun m!13441 () Bool)

(assert (=> start!2076 m!13441))

(declare-fun m!13443 () Bool)

(assert (=> start!2076 m!13443))

(declare-fun m!13445 () Bool)

(assert (=> b!10367 m!13445))

(declare-fun m!13447 () Bool)

(assert (=> b!10365 m!13447))

(declare-fun m!13449 () Bool)

(assert (=> b!10361 m!13449))

(declare-fun m!13451 () Bool)

(assert (=> b!10362 m!13451))

(push 1)

(assert (not b_next!3321))

(assert b_and!4801)

(assert (not b!10365))

(assert (not start!2076))

(assert (not b!10362))

(assert (not b!10361))

(assert (not b_next!3329))

(assert (not b_next!3325))

(assert (not b_next!3327))

(assert b_and!4799)

(assert b_and!4805)

(assert (not b!10367))

(assert b_and!4807)

(assert b_and!4803)

(assert (not b_next!3323))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3321))

(assert b_and!4801)

(assert (not b_next!3329))

(assert (not b_next!3325))

(assert (not b_next!3327))

(assert b_and!4799)

(assert b_and!4805)

(assert b_and!4807)

(assert b_and!4803)

(assert (not b_next!3323))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2172 () Bool)

(assert start!2172)

(declare-fun b_free!1411 () Bool)

(declare-fun b_next!3421 () Bool)

(assert (=> start!2172 (= b_free!1411 (not b_next!3421))))

(declare-fun tp!2274 () Bool)

(declare-fun b_and!4927 () Bool)

(assert (=> start!2172 (= tp!2274 b_and!4927)))

(declare-fun b_free!1413 () Bool)

(declare-fun b_next!3423 () Bool)

(assert (=> start!2172 (= b_free!1413 (not b_next!3423))))

(declare-fun tp!2275 () Bool)

(declare-fun b_and!4929 () Bool)

(assert (=> start!2172 (= tp!2275 b_and!4929)))

(declare-fun f!539 () Int)

(declare-fun lambda!2849 () Int)

(declare-fun b!10759 () Bool)

(declare-fun b_next!3425 () Bool)

(assert (=> start!2172 (= b_next!3421 (or (and b!10759 (= lambda!2849 f!539)) b_next!3425))))

(declare-fun b_next!3427 () Bool)

(declare-fun f!548 () Int)

(assert (=> start!2172 (= b_next!3423 (or (and b!10759 (= lambda!2849 f!548)) b_next!3427))))

(declare-fun b!10755 () Bool)

(declare-fun res!3802 () Bool)

(declare-fun e!6233 () Bool)

(assert (=> b!10755 (=> (not res!3802) (not e!6233))))

(declare-datatypes () ((Balance!275 (Balance!276 (extraOpen!178 Int) (extraClose!178 Int)))))

(declare-datatypes () ((List!257 (Nil!255) (Cons!254 (head!472 Balance!275) (tail!484 List!257)))))

(declare-fun ys!54 () List!257)

(declare-fun thiss!726 () List!257)

(declare-fun xs!292 () List!257)

(assert (=> b!10755 (= res!3802 (and (is-Cons!254 xs!292) (is-Nil!255 (tail!484 xs!292)) (= thiss!726 ys!54) (= f!548 f!539)))))

(declare-fun b!10756 () Bool)

(declare-fun res!3804 () Bool)

(assert (=> b!10756 (=> (not res!3804) (not e!6233))))

(declare-fun isEmpty!185 (List!257) Bool)

(assert (=> b!10756 (= res!3804 (not (isEmpty!185 ys!54)))))

(declare-fun res!3806 () Bool)

(assert (=> start!2172 (=> (not res!3806) (not e!6233))))

(assert (=> start!2172 (= res!3806 (not (isEmpty!185 xs!292)))))

(assert (=> start!2172 e!6233))

(assert (=> start!2172 tp!2274))

(assert (=> start!2172 true))

(assert (=> start!2172 tp!2275))

(declare-fun b!10757 () Bool)

(assert (=> b!10757 (= e!6233 (isEmpty!185 thiss!726))))

(declare-fun b!10758 () Bool)

(declare-fun res!3805 () Bool)

(assert (=> b!10758 (=> (not res!3805) (not e!6233))))

(declare-datatypes () ((ProofOps!214 (ProofOps!215 (prop!240 Bool)))))

(declare-fun thiss!710 () ProofOps!214)

(declare-fun dynLambda!354 (Int Balance!275 Balance!275) Balance!275)

(declare-fun foldRight1!87 (List!257 Int) Balance!275)

(declare-fun append!106 (List!257 List!257) List!257)

(assert (=> b!10758 (= res!3805 (= thiss!710 (ProofOps!215 (= (dynLambda!354 f!539 (foldRight1!87 xs!292 f!539) (foldRight1!87 ys!54 f!539)) (foldRight1!87 (append!106 xs!292 ys!54) f!539)))))))

(declare-fun res!3803 () Bool)

(assert (=> b!10759 (=> (not res!3803) (not e!6233))))

(assert (=> b!10759 (= res!3803 (= f!539 lambda!2849))))

(assert (= (and start!2172 res!3806) b!10756))

(assert (= (and b!10756 res!3804) b!10759))

(assert (= (and b!10759 res!3803) b!10758))

(assert (= (and b!10758 res!3805) b!10755))

(assert (= (and b!10755 res!3802) b!10757))

(declare-fun b_lambda!5581 () Bool)

(assert (=> (not b_lambda!5581) (not b!10758)))

(declare-fun t!2949 () Bool)

(declare-fun tb!2609 () Bool)

(assert (=> (and start!2172 (= f!539 f!539) t!2949) tb!2609))

(declare-fun result!2661 () Bool)

(assert (=> tb!2609 (= result!2661 true)))

(assert (=> b!10758 t!2949))

(declare-fun b_and!4931 () Bool)

(assert (= b_and!4927 (and (=> t!2949 result!2661) b_and!4931)))

(declare-fun tb!2611 () Bool)

(declare-fun t!2951 () Bool)

(assert (=> (and start!2172 (= f!548 f!539) t!2951) tb!2611))

(declare-fun result!2663 () Bool)

(assert (=> tb!2611 (= result!2663 true)))

(assert (=> b!10758 t!2951))

(declare-fun b_and!4933 () Bool)

(assert (= b_and!4929 (and (=> t!2951 result!2663) b_and!4933)))

(declare-fun m!13751 () Bool)

(assert (=> b!10756 m!13751))

(declare-fun m!13753 () Bool)

(assert (=> start!2172 m!13753))

(declare-fun m!13755 () Bool)

(assert (=> b!10757 m!13755))

(declare-fun m!13757 () Bool)

(assert (=> b!10758 m!13757))

(declare-fun m!13759 () Bool)

(assert (=> b!10758 m!13759))

(declare-fun m!13761 () Bool)

(assert (=> b!10758 m!13761))

(assert (=> b!10758 m!13759))

(assert (=> b!10758 m!13761))

(declare-fun m!13763 () Bool)

(assert (=> b!10758 m!13763))

(assert (=> b!10758 m!13757))

(declare-fun m!13765 () Bool)

(assert (=> b!10758 m!13765))

(push 1)

(assert (not b_next!3427))

(assert (not b!10756))

(assert b_and!4931)

(assert b_and!4933)

(assert (not b!10758))

(assert (not start!2172))

(assert (not b!10757))

(assert (not b_lambda!5581))

(assert (not b_next!3425))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4931)

(assert b_and!4933)

(assert (not b_next!3425))

(assert (not b_next!3427))

(check-sat)

(pop 1)


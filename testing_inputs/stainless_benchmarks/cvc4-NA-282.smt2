; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2170 () Bool)

(assert start!2170)

(declare-fun b_free!1407 () Bool)

(declare-fun b_next!3413 () Bool)

(assert (=> start!2170 (= b_free!1407 (not b_next!3413))))

(declare-fun tp!2268 () Bool)

(declare-fun b_and!4919 () Bool)

(assert (=> start!2170 (= tp!2268 b_and!4919)))

(declare-fun b_free!1409 () Bool)

(declare-fun b_next!3415 () Bool)

(assert (=> start!2170 (= b_free!1409 (not b_next!3415))))

(declare-fun tp!2269 () Bool)

(declare-fun b_and!4921 () Bool)

(assert (=> start!2170 (= tp!2269 b_and!4921)))

(declare-fun f!539 () Int)

(declare-fun b_next!3417 () Bool)

(declare-fun b!10741 () Bool)

(declare-fun lambda!2846 () Int)

(assert (=> start!2170 (= b_next!3413 (or (and b!10741 (= lambda!2846 f!539)) b_next!3417))))

(declare-fun b_next!3419 () Bool)

(declare-fun f!546 () Int)

(assert (=> start!2170 (= b_next!3415 (or (and b!10741 (= lambda!2846 f!546)) b_next!3419))))

(declare-fun res!3790 () Bool)

(declare-fun e!6230 () Bool)

(assert (=> start!2170 (=> (not res!3790) (not e!6230))))

(declare-datatypes () ((Balance!273 (Balance!274 (extraOpen!177 Int) (extraClose!177 Int)))))

(declare-datatypes () ((List!256 (Nil!254) (Cons!253 (head!471 Balance!273) (tail!483 List!256)))))

(declare-fun xs!292 () List!256)

(declare-fun isEmpty!184 (List!256) Bool)

(assert (=> start!2170 (= res!3790 (not (isEmpty!184 xs!292)))))

(assert (=> start!2170 e!6230))

(assert (=> start!2170 tp!2268))

(assert (=> start!2170 true))

(assert (=> start!2170 tp!2269))

(declare-fun b!10740 () Bool)

(declare-fun res!3787 () Bool)

(assert (=> b!10740 (=> (not res!3787) (not e!6230))))

(declare-fun ys!54 () List!256)

(declare-datatypes () ((ProofOps!212 (ProofOps!213 (prop!239 Bool)))))

(declare-fun thiss!710 () ProofOps!212)

(declare-fun dynLambda!353 (Int Balance!273 Balance!273) Balance!273)

(declare-fun foldRight1!86 (List!256 Int) Balance!273)

(declare-fun append!105 (List!256 List!256) List!256)

(assert (=> b!10740 (= res!3787 (= thiss!710 (ProofOps!213 (= (dynLambda!353 f!539 (foldRight1!86 xs!292 f!539) (foldRight1!86 ys!54 f!539)) (foldRight1!86 (append!105 xs!292 ys!54) f!539)))))))

(declare-fun res!3791 () Bool)

(assert (=> b!10741 (=> (not res!3791) (not e!6230))))

(assert (=> b!10741 (= res!3791 (= f!539 lambda!2846))))

(declare-fun b!10742 () Bool)

(declare-fun res!3789 () Bool)

(assert (=> b!10742 (=> (not res!3789) (not e!6230))))

(declare-fun thiss!724 () List!256)

(assert (=> b!10742 (= res!3789 (and (is-Cons!253 xs!292) (is-Nil!254 (tail!483 xs!292)) (= thiss!724 xs!292) (= f!546 f!539)))))

(declare-fun b!10743 () Bool)

(declare-fun res!3788 () Bool)

(assert (=> b!10743 (=> (not res!3788) (not e!6230))))

(assert (=> b!10743 (= res!3788 (not (isEmpty!184 ys!54)))))

(declare-fun b!10744 () Bool)

(assert (=> b!10744 (= e!6230 (isEmpty!184 thiss!724))))

(assert (= (and start!2170 res!3790) b!10743))

(assert (= (and b!10743 res!3788) b!10741))

(assert (= (and b!10741 res!3791) b!10740))

(assert (= (and b!10740 res!3787) b!10742))

(assert (= (and b!10742 res!3789) b!10744))

(declare-fun b_lambda!5579 () Bool)

(assert (=> (not b_lambda!5579) (not b!10740)))

(declare-fun t!2945 () Bool)

(declare-fun tb!2605 () Bool)

(assert (=> (and start!2170 (= f!539 f!539) t!2945) tb!2605))

(declare-fun result!2657 () Bool)

(assert (=> tb!2605 (= result!2657 true)))

(assert (=> b!10740 t!2945))

(declare-fun b_and!4923 () Bool)

(assert (= b_and!4919 (and (=> t!2945 result!2657) b_and!4923)))

(declare-fun tb!2607 () Bool)

(declare-fun t!2947 () Bool)

(assert (=> (and start!2170 (= f!546 f!539) t!2947) tb!2607))

(declare-fun result!2659 () Bool)

(assert (=> tb!2607 (= result!2659 true)))

(assert (=> b!10740 t!2947))

(declare-fun b_and!4925 () Bool)

(assert (= b_and!4921 (and (=> t!2947 result!2659) b_and!4925)))

(declare-fun m!13735 () Bool)

(assert (=> start!2170 m!13735))

(declare-fun m!13737 () Bool)

(assert (=> b!10740 m!13737))

(declare-fun m!13739 () Bool)

(assert (=> b!10740 m!13739))

(declare-fun m!13741 () Bool)

(assert (=> b!10740 m!13741))

(assert (=> b!10740 m!13739))

(assert (=> b!10740 m!13741))

(declare-fun m!13743 () Bool)

(assert (=> b!10740 m!13743))

(assert (=> b!10740 m!13737))

(declare-fun m!13745 () Bool)

(assert (=> b!10740 m!13745))

(declare-fun m!13747 () Bool)

(assert (=> b!10743 m!13747))

(declare-fun m!13749 () Bool)

(assert (=> b!10744 m!13749))

(push 1)

(assert (not b!10740))

(assert (not b!10744))

(assert (not b!10743))

(assert (not b_next!3419))

(assert b_and!4923)

(assert (not start!2170))

(assert (not b_next!3417))

(assert (not b_lambda!5579))

(assert b_and!4925)

(check-sat)

(pop 1)

(push 1)

(assert b_and!4923)

(assert b_and!4925)

(assert (not b_next!3419))

(assert (not b_next!3417))

(check-sat)

(pop 1)


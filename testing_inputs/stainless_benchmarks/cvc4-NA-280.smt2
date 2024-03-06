; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2162 () Bool)

(assert start!2162)

(declare-fun b_free!1399 () Bool)

(declare-fun b_next!3397 () Bool)

(assert (=> start!2162 (= b_free!1399 (not b_next!3397))))

(declare-fun tp!2257 () Bool)

(declare-fun b_and!4911 () Bool)

(assert (=> start!2162 (= tp!2257 b_and!4911)))

(declare-fun b_free!1401 () Bool)

(declare-fun b_next!3399 () Bool)

(assert (=> start!2162 (= b_free!1401 (not b_next!3399))))

(declare-fun tp!2256 () Bool)

(declare-fun b_and!4913 () Bool)

(assert (=> start!2162 (= tp!2256 b_and!4913)))

(declare-fun f!539 () Int)

(declare-fun b!10706 () Bool)

(declare-fun lambda!2840 () Int)

(declare-fun b_next!3401 () Bool)

(assert (=> start!2162 (= b_next!3397 (or (and b!10706 (= lambda!2840 f!539)) b_next!3401))))

(declare-fun f!542 () Int)

(declare-fun b_next!3403 () Bool)

(assert (=> start!2162 (= b_next!3399 (or (and b!10706 (= lambda!2840 f!542)) b_next!3403))))

(declare-fun b!10705 () Bool)

(declare-fun res!3759 () Bool)

(declare-fun e!6221 () Bool)

(assert (=> b!10705 (=> (not res!3759) (not e!6221))))

(declare-datatypes () ((Balance!269 (Balance!270 (extraOpen!175 Int) (extraClose!175 Int)))))

(declare-datatypes () ((List!254 (Nil!252) (Cons!251 (head!469 Balance!269) (tail!481 List!254)))))

(declare-fun ys!54 () List!254)

(declare-fun isEmpty!182 (List!254) Bool)

(assert (=> b!10705 (= res!3759 (not (isEmpty!182 ys!54)))))

(declare-fun res!3758 () Bool)

(assert (=> b!10706 (=> (not res!3758) (not e!6221))))

(assert (=> b!10706 (= res!3758 (= f!539 lambda!2840))))

(declare-fun b!10707 () Bool)

(declare-fun res!3761 () Bool)

(assert (=> b!10707 (=> (not res!3761) (not e!6221))))

(declare-fun thiss!713 () List!254)

(assert (=> b!10707 (= res!3761 (and (= thiss!713 ys!54) (= f!542 f!539)))))

(declare-fun b!10708 () Bool)

(assert (=> b!10708 (= e!6221 (isEmpty!182 thiss!713))))

(declare-fun res!3760 () Bool)

(assert (=> start!2162 (=> (not res!3760) (not e!6221))))

(declare-fun xs!292 () List!254)

(assert (=> start!2162 (= res!3760 (not (isEmpty!182 xs!292)))))

(assert (=> start!2162 e!6221))

(assert (=> start!2162 tp!2257))

(assert (=> start!2162 true))

(assert (=> start!2162 tp!2256))

(assert (= (and start!2162 res!3760) b!10705))

(assert (= (and b!10705 res!3759) b!10706))

(assert (= (and b!10706 res!3758) b!10707))

(assert (= (and b!10707 res!3761) b!10708))

(declare-fun m!13719 () Bool)

(assert (=> b!10705 m!13719))

(declare-fun m!13721 () Bool)

(assert (=> b!10708 m!13721))

(declare-fun m!13723 () Bool)

(assert (=> start!2162 m!13723))

(push 1)

(assert (not b_next!3403))

(assert (not b!10705))

(assert (not b_next!3401))

(assert b_and!4911)

(assert (not start!2162))

(assert (not b!10708))

(assert b_and!4913)

(check-sat)

(pop 1)

(push 1)

(assert b_and!4911)

(assert b_and!4913)

(assert (not b_next!3401))

(assert (not b_next!3403))

(check-sat)

(pop 1)


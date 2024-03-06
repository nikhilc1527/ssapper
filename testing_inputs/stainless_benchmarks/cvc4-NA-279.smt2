; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2160 () Bool)

(assert start!2160)

(declare-fun b_free!1395 () Bool)

(declare-fun b_next!3389 () Bool)

(assert (=> start!2160 (= b_free!1395 (not b_next!3389))))

(declare-fun tp!2251 () Bool)

(declare-fun b_and!4907 () Bool)

(assert (=> start!2160 (= tp!2251 b_and!4907)))

(declare-fun b_free!1397 () Bool)

(declare-fun b_next!3391 () Bool)

(assert (=> start!2160 (= b_free!1397 (not b_next!3391))))

(declare-fun tp!2250 () Bool)

(declare-fun b_and!4909 () Bool)

(assert (=> start!2160 (= tp!2250 b_and!4909)))

(declare-fun f!539 () Int)

(declare-fun lambda!2837 () Int)

(declare-fun b!10694 () Bool)

(declare-fun b_next!3393 () Bool)

(assert (=> start!2160 (= b_next!3389 (or (and b!10694 (= lambda!2837 f!539)) b_next!3393))))

(declare-fun f!540 () Int)

(declare-fun b_next!3395 () Bool)

(assert (=> start!2160 (= b_next!3391 (or (and b!10694 (= lambda!2837 f!540)) b_next!3395))))

(declare-fun res!3746 () Bool)

(declare-fun e!6218 () Bool)

(assert (=> b!10694 (=> (not res!3746) (not e!6218))))

(assert (=> b!10694 (= res!3746 (= f!539 lambda!2837))))

(declare-fun b!10696 () Bool)

(declare-datatypes () ((Balance!267 (Balance!268 (extraOpen!174 Int) (extraClose!174 Int)))))

(declare-datatypes () ((List!253 (Nil!251) (Cons!250 (head!468 Balance!267) (tail!480 List!253)))))

(declare-fun thiss!711 () List!253)

(declare-fun isEmpty!181 (List!253) Bool)

(assert (=> b!10696 (= e!6218 (isEmpty!181 thiss!711))))

(declare-fun b!10693 () Bool)

(declare-fun res!3747 () Bool)

(assert (=> b!10693 (=> (not res!3747) (not e!6218))))

(declare-fun ys!54 () List!253)

(assert (=> b!10693 (= res!3747 (not (isEmpty!181 ys!54)))))

(declare-fun res!3748 () Bool)

(assert (=> start!2160 (=> (not res!3748) (not e!6218))))

(declare-fun xs!292 () List!253)

(assert (=> start!2160 (= res!3748 (not (isEmpty!181 xs!292)))))

(assert (=> start!2160 e!6218))

(assert (=> start!2160 tp!2251))

(assert (=> start!2160 tp!2250))

(assert (=> start!2160 true))

(declare-fun b!10695 () Bool)

(declare-fun res!3749 () Bool)

(assert (=> b!10695 (=> (not res!3749) (not e!6218))))

(assert (=> b!10695 (= res!3749 (and (= thiss!711 xs!292) (= f!540 f!539)))))

(assert (= (and start!2160 res!3748) b!10693))

(assert (= (and b!10693 res!3747) b!10694))

(assert (= (and b!10694 res!3746) b!10695))

(assert (= (and b!10695 res!3749) b!10696))

(declare-fun m!13713 () Bool)

(assert (=> b!10696 m!13713))

(declare-fun m!13715 () Bool)

(assert (=> b!10693 m!13715))

(declare-fun m!13717 () Bool)

(assert (=> start!2160 m!13717))

(push 1)

(assert (not b!10693))

(assert b_and!4907)

(assert (not b_next!3393))

(assert (not b!10696))

(assert (not b_next!3395))

(assert b_and!4909)

(assert (not start!2160))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4907)

(assert b_and!4909)

(assert (not b_next!3395))

(assert (not b_next!3393))

(check-sat)

(pop 1)


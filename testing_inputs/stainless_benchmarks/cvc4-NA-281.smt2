; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2164 () Bool)

(assert start!2164)

(declare-fun b_free!1403 () Bool)

(declare-fun b_next!3405 () Bool)

(assert (=> start!2164 (= b_free!1403 (not b_next!3405))))

(declare-fun tp!2262 () Bool)

(declare-fun b_and!4915 () Bool)

(assert (=> start!2164 (= tp!2262 b_and!4915)))

(declare-fun b_free!1405 () Bool)

(declare-fun b_next!3407 () Bool)

(assert (=> start!2164 (= b_free!1405 (not b_next!3407))))

(declare-fun tp!2263 () Bool)

(declare-fun b_and!4917 () Bool)

(assert (=> start!2164 (= tp!2263 b_and!4917)))

(declare-fun f!539 () Int)

(declare-fun b!10722 () Bool)

(declare-fun lambda!2843 () Int)

(declare-fun b_next!3409 () Bool)

(assert (=> start!2164 (= b_next!3405 (or (and b!10722 (= lambda!2843 f!539)) b_next!3409))))

(declare-fun f!544 () Int)

(declare-fun b_next!3411 () Bool)

(assert (=> start!2164 (= b_next!3407 (or (and b!10722 (= lambda!2843 f!544)) b_next!3411))))

(declare-fun b!10719 () Bool)

(declare-fun e!6224 () Bool)

(declare-datatypes () ((Balance!271 (Balance!272 (extraOpen!176 Int) (extraClose!176 Int)))))

(declare-datatypes () ((List!255 (Nil!253) (Cons!252 (head!470 Balance!271) (tail!482 List!255)))))

(declare-fun thiss!715 () List!255)

(declare-fun isEmpty!183 (List!255) Bool)

(assert (=> b!10719 (= e!6224 (isEmpty!183 thiss!715))))

(declare-fun b!10720 () Bool)

(declare-fun res!3775 () Bool)

(assert (=> b!10720 (=> (not res!3775) (not e!6224))))

(declare-fun ys!54 () List!255)

(declare-fun xs!292 () List!255)

(declare-fun append!104 (List!255 List!255) List!255)

(assert (=> b!10720 (= res!3775 (= thiss!715 (append!104 xs!292 ys!54)))))

(declare-fun b!10721 () Bool)

(declare-fun res!3773 () Bool)

(assert (=> b!10721 (=> (not res!3773) (not e!6224))))

(assert (=> b!10721 (= res!3773 (not (isEmpty!183 ys!54)))))

(declare-fun res!3772 () Bool)

(assert (=> start!2164 (=> (not res!3772) (not e!6224))))

(assert (=> start!2164 (= res!3772 (not (isEmpty!183 xs!292)))))

(assert (=> start!2164 e!6224))

(assert (=> start!2164 true))

(assert (=> start!2164 tp!2262))

(assert (=> start!2164 tp!2263))

(declare-fun res!3776 () Bool)

(assert (=> b!10722 (=> (not res!3776) (not e!6224))))

(assert (=> b!10722 (= res!3776 (= f!539 lambda!2843))))

(declare-fun b!10723 () Bool)

(declare-fun res!3774 () Bool)

(assert (=> b!10723 (=> (not res!3774) (not e!6224))))

(assert (=> b!10723 (= res!3774 (= f!544 f!539))))

(assert (= (and start!2164 res!3772) b!10721))

(assert (= (and b!10721 res!3773) b!10722))

(assert (= (and b!10722 res!3776) b!10720))

(assert (= (and b!10720 res!3775) b!10723))

(assert (= (and b!10723 res!3774) b!10719))

(declare-fun m!13725 () Bool)

(assert (=> b!10719 m!13725))

(declare-fun m!13727 () Bool)

(assert (=> b!10720 m!13727))

(declare-fun m!13729 () Bool)

(assert (=> b!10721 m!13729))

(declare-fun m!13731 () Bool)

(assert (=> start!2164 m!13731))

(push 1)

(assert (not b!10720))

(assert (not b!10721))

(assert (not start!2164))

(assert b_and!4915)

(assert (not b!10719))

(assert b_and!4917)

(assert (not b_next!3411))

(assert (not b_next!3409))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4915)

(assert b_and!4917)

(assert (not b_next!3409))

(assert (not b_next!3411))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8507 () Bool)

(assert (=> d!8507 (= (isEmpty!183 thiss!715) (is-Nil!253 thiss!715))))

(assert (=> b!10719 d!8507))

(declare-fun d!8509 () Bool)

(assert (=> d!8509 (= (isEmpty!183 ys!54) (is-Nil!253 ys!54))))

(assert (=> b!10721 d!8509))

(declare-fun d!8511 () Bool)

(assert (=> d!8511 (= (isEmpty!183 xs!292) (is-Nil!253 xs!292))))

(assert (=> start!2164 d!8511))

(declare-fun d!8513 () Bool)

(declare-fun c!3314 () Bool)

(assert (=> d!8513 (= c!3314 (is-Nil!253 xs!292))))

(declare-fun e!6227 () List!255)

(assert (=> d!8513 (= (append!104 xs!292 ys!54) e!6227)))

(declare-fun b!10728 () Bool)

(assert (=> b!10728 (= e!6227 ys!54)))

(declare-fun b!10729 () Bool)

(assert (=> b!10729 (= e!6227 (Cons!252 (head!470 xs!292) (append!104 (tail!482 xs!292) ys!54)))))

(assert (= (and d!8513 c!3314) b!10728))

(assert (= (and d!8513 (not c!3314)) b!10729))

(declare-fun m!13733 () Bool)

(assert (=> b!10729 m!13733))

(assert (=> b!10720 d!8513))

(push 1)

(assert (not b!10729))

(assert b_and!4915)

(assert b_and!4917)

(assert (not b_next!3411))

(assert (not b_next!3409))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4915)

(assert b_and!4917)

(assert (not b_next!3409))

(assert (not b_next!3411))

(check-sat)

(pop 1)


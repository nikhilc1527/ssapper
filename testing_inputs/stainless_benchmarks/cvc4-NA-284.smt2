; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2174 () Bool)

(assert start!2174)

(declare-fun b_free!1415 () Bool)

(declare-fun b_next!3429 () Bool)

(assert (=> start!2174 (= b_free!1415 (not b_next!3429))))

(declare-fun tp!2287 () Bool)

(declare-fun b_and!4935 () Bool)

(assert (=> start!2174 (= tp!2287 b_and!4935)))

(declare-fun b_free!1417 () Bool)

(declare-fun b_next!3431 () Bool)

(assert (=> start!2174 (= b_free!1417 (not b_next!3431))))

(declare-fun tp!2284 () Bool)

(declare-fun b_and!4937 () Bool)

(assert (=> start!2174 (= tp!2284 b_and!4937)))

(declare-fun b!10781 () Bool)

(declare-fun b_free!1419 () Bool)

(declare-fun b_next!3433 () Bool)

(assert (=> b!10781 (= b_free!1419 (not b_next!3433))))

(declare-fun tp!2285 () Bool)

(declare-fun b_and!4939 () Bool)

(assert (=> b!10781 (= tp!2285 b_and!4939)))

(declare-fun b_free!1421 () Bool)

(declare-fun b_next!3435 () Bool)

(assert (=> b!10781 (= b_free!1421 (not b_next!3435))))

(declare-fun tp!2286 () Bool)

(declare-fun b_and!4941 () Bool)

(assert (=> b!10781 (= tp!2286 b_and!4941)))

(declare-fun f!539 () Int)

(declare-fun lambda!2856 () Int)

(declare-fun b_next!3437 () Bool)

(declare-fun b!10782 () Bool)

(assert (=> start!2174 (= b_next!3429 (or (and b!10782 (= lambda!2856 f!539)) b_next!3437))))

(declare-fun f!550 () Int)

(declare-fun b_next!3439 () Bool)

(assert (=> start!2174 (= b_next!3431 (or (and b!10782 (= lambda!2856 f!550)) b_next!3439))))

(declare-fun b!10778 () Bool)

(assert (=> b!10778 true))

(declare-fun lambda!2857 () Int)

(declare-fun order!157 () Int)

(declare-fun order!159 () Int)

(declare-fun dynLambda!355 (Int Int) Int)

(declare-fun dynLambda!356 (Int Int) Int)

(assert (=> b!10778 (< (dynLambda!355 order!157 f!539) (dynLambda!356 order!159 lambda!2857))))

(assert (=> b!10778 true))

(assert (=> b!10778 true))

(declare-datatypes () ((Balance!277 (Balance!278 (extraOpen!179 Int) (extraClose!179 Int)))))

(declare-datatypes () ((EqProof!102 (EqProof!103 (x!6027 Int) (y!619 Int)))))

(declare-fun thiss!723 () EqProof!102)

(declare-fun b_next!3441 () Bool)

(assert (=> b!10781 (= b_next!3433 (or (and b!10778 (= lambda!2857 (x!6027 thiss!723))) b_next!3441))))

(declare-fun b_next!3443 () Bool)

(assert (=> b!10781 (= b_next!3435 (or (and b!10778 (= lambda!2857 (y!619 thiss!723))) b_next!3443))))

(declare-fun res!3823 () Bool)

(declare-fun e!6238 () Bool)

(assert (=> start!2174 (=> (not res!3823) (not e!6238))))

(declare-datatypes () ((List!258 (Nil!256) (Cons!255 (head!473 Balance!277) (tail!485 List!258)))))

(declare-fun xs!292 () List!258)

(declare-fun isEmpty!186 (List!258) Bool)

(assert (=> start!2174 (= res!3823 (not (isEmpty!186 xs!292)))))

(assert (=> start!2174 e!6238))

(assert (=> start!2174 tp!2287))

(declare-fun e!6239 () Bool)

(declare-fun inv!364 (EqProof!102) Bool)

(assert (=> start!2174 (and (inv!364 thiss!723) e!6239)))

(assert (=> start!2174 true))

(assert (=> start!2174 tp!2284))

(declare-fun b!10776 () Bool)

(declare-fun res!3825 () Bool)

(assert (=> b!10776 (=> (not res!3825) (not e!6238))))

(declare-fun ys!54 () List!258)

(assert (=> b!10776 (= res!3825 (not (isEmpty!186 ys!54)))))

(declare-fun b!10777 () Bool)

(declare-fun res!3821 () Bool)

(assert (=> b!10777 (=> (not res!3821) (not e!6238))))

(assert (=> b!10777 (= res!3821 (and (is-Cons!255 xs!292) (is-Nil!256 (tail!485 xs!292))))))

(declare-fun res!3827 () Bool)

(assert (=> b!10778 (=> (not res!3827) (not e!6238))))

(assert (=> b!10778 (= res!3827 (= thiss!723 (EqProof!103 lambda!2857 lambda!2857)))))

(declare-fun b!10779 () Bool)

(declare-fun thiss!728 () List!258)

(assert (=> b!10779 (= e!6238 (isEmpty!186 thiss!728))))

(declare-fun b!10780 () Bool)

(declare-fun res!3822 () Bool)

(assert (=> b!10780 (=> (not res!3822) (not e!6238))))

(assert (=> b!10780 (= res!3822 (and (= thiss!728 xs!292) (= f!550 f!539)))))

(assert (=> b!10781 (= e!6239 (and tp!2285 tp!2286))))

(declare-fun res!3824 () Bool)

(assert (=> b!10782 (=> (not res!3824) (not e!6238))))

(assert (=> b!10782 (= res!3824 (= f!539 lambda!2856))))

(declare-fun b!10783 () Bool)

(declare-fun res!3826 () Bool)

(assert (=> b!10783 (=> (not res!3826) (not e!6238))))

(declare-datatypes () ((ProofOps!216 (ProofOps!217 (prop!241 Bool)))))

(declare-fun thiss!710 () ProofOps!216)

(declare-fun dynLambda!357 (Int Balance!277 Balance!277) Balance!277)

(declare-fun foldRight1!88 (List!258 Int) Balance!277)

(declare-fun append!107 (List!258 List!258) List!258)

(assert (=> b!10783 (= res!3826 (= thiss!710 (ProofOps!217 (= (dynLambda!357 f!539 (foldRight1!88 xs!292 f!539) (foldRight1!88 ys!54 f!539)) (foldRight1!88 (append!107 xs!292 ys!54) f!539)))))))

(assert (= (and start!2174 res!3823) b!10776))

(assert (= (and b!10776 res!3825) b!10782))

(assert (= (and b!10782 res!3824) b!10783))

(assert (= (and b!10783 res!3826) b!10777))

(assert (= (and b!10777 res!3821) b!10778))

(assert (= (and b!10778 res!3827) b!10780))

(assert (= (and b!10780 res!3822) b!10779))

(assert (= start!2174 b!10781))

(declare-fun b_lambda!5583 () Bool)

(assert (=> (not b_lambda!5583) (not b!10783)))

(declare-fun t!2953 () Bool)

(declare-fun tb!2613 () Bool)

(assert (=> (and start!2174 (= f!539 f!539) t!2953) tb!2613))

(declare-fun result!2665 () Bool)

(assert (=> tb!2613 (= result!2665 true)))

(assert (=> b!10783 t!2953))

(declare-fun b_and!4943 () Bool)

(assert (= b_and!4935 (and (=> t!2953 result!2665) b_and!4943)))

(declare-fun tb!2615 () Bool)

(declare-fun t!2955 () Bool)

(assert (=> (and start!2174 (= f!550 f!539) t!2955) tb!2615))

(declare-fun result!2667 () Bool)

(assert (=> tb!2615 (= result!2667 true)))

(assert (=> b!10783 t!2955))

(declare-fun b_and!4945 () Bool)

(assert (= b_and!4937 (and (=> t!2955 result!2667) b_and!4945)))

(declare-fun m!13767 () Bool)

(assert (=> start!2174 m!13767))

(declare-fun m!13769 () Bool)

(assert (=> start!2174 m!13769))

(declare-fun m!13771 () Bool)

(assert (=> b!10776 m!13771))

(declare-fun m!13773 () Bool)

(assert (=> b!10779 m!13773))

(declare-fun m!13775 () Bool)

(assert (=> b!10783 m!13775))

(declare-fun m!13777 () Bool)

(assert (=> b!10783 m!13777))

(declare-fun m!13779 () Bool)

(assert (=> b!10783 m!13779))

(assert (=> b!10783 m!13777))

(assert (=> b!10783 m!13779))

(declare-fun m!13781 () Bool)

(assert (=> b!10783 m!13781))

(assert (=> b!10783 m!13775))

(declare-fun m!13783 () Bool)

(assert (=> b!10783 m!13783))

(push 1)

(assert b_and!4939)

(assert (not b_next!3441))

(assert b_and!4945)

(assert (not b!10776))

(assert (not b_next!3443))

(assert (not b!10783))

(assert (not b!10779))

(assert b_and!4941)

(assert (not b_next!3439))

(assert (not start!2174))

(assert (not b_next!3437))

(assert (not b_lambda!5583))

(assert b_and!4943)

(check-sat)

(pop 1)

(push 1)

(assert b_and!4939)

(assert (not b_next!3441))

(assert b_and!4945)

(assert (not b_next!3443))

(assert b_and!4941)

(assert (not b_next!3439))

(assert (not b_next!3437))

(assert b_and!4943)

(check-sat)

(pop 1)


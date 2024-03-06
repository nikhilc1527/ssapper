; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2202 () Bool)

(assert start!2202)

(declare-fun b_free!1453 () Bool)

(declare-fun b_next!3513 () Bool)

(assert (=> start!2202 (= b_free!1453 (not b_next!3513))))

(declare-fun tp!2337 () Bool)

(declare-fun b_and!5057 () Bool)

(assert (=> start!2202 (= tp!2337 b_and!5057)))

(declare-fun b_free!1455 () Bool)

(declare-fun b_next!3515 () Bool)

(assert (=> start!2202 (= b_free!1455 (not b_next!3515))))

(declare-fun tp!2338 () Bool)

(declare-fun b_and!5059 () Bool)

(assert (=> start!2202 (= tp!2338 b_and!5059)))

(declare-fun f!539 () Int)

(declare-fun b!10932 () Bool)

(declare-fun lambda!2895 () Int)

(declare-fun b_next!3517 () Bool)

(assert (=> start!2202 (= b_next!3513 (or (and b!10932 (= lambda!2895 f!539)) b_next!3517))))

(declare-fun b_next!3519 () Bool)

(declare-fun f!558 () Int)

(assert (=> start!2202 (= b_next!3515 (or (and b!10932 (= lambda!2895 f!558)) b_next!3519))))

(declare-fun res!3914 () Bool)

(declare-fun e!6282 () Bool)

(assert (=> start!2202 (=> (not res!3914) (not e!6282))))

(declare-datatypes () ((Balance!285 (Balance!286 (extraOpen!183 Int) (extraClose!183 Int)))))

(declare-datatypes () ((List!262 (Nil!260) (Cons!259 (head!477 Balance!285) (tail!489 List!262)))))

(declare-fun xs!292 () List!262)

(declare-fun isEmpty!190 (List!262) Bool)

(assert (=> start!2202 (= res!3914 (not (isEmpty!190 xs!292)))))

(assert (=> start!2202 e!6282))

(assert (=> start!2202 tp!2337))

(assert (=> start!2202 true))

(assert (=> start!2202 tp!2338))

(declare-fun b!10929 () Bool)

(declare-fun res!3912 () Bool)

(assert (=> b!10929 (=> (not res!3912) (not e!6282))))

(declare-fun ys!54 () List!262)

(assert (=> b!10929 (= res!3912 (not (isEmpty!190 ys!54)))))

(declare-fun b!10930 () Bool)

(declare-fun thiss!749 () List!262)

(assert (=> b!10930 (= e!6282 (isEmpty!190 thiss!749))))

(declare-fun b!10931 () Bool)

(declare-fun res!3911 () Bool)

(assert (=> b!10931 (=> (not res!3911) (not e!6282))))

(declare-datatypes () ((ProofOps!224 (ProofOps!225 (prop!245 Bool)))))

(declare-fun thiss!710 () ProofOps!224)

(declare-fun dynLambda!372 (Int Balance!285 Balance!285) Balance!285)

(declare-fun foldRight1!92 (List!262 Int) Balance!285)

(declare-fun append!111 (List!262 List!262) List!262)

(assert (=> b!10931 (= res!3911 (= thiss!710 (ProofOps!225 (= (dynLambda!372 f!539 (foldRight1!92 xs!292 f!539) (foldRight1!92 ys!54 f!539)) (foldRight1!92 (append!111 xs!292 ys!54) f!539)))))))

(declare-fun res!3913 () Bool)

(assert (=> b!10932 (=> (not res!3913) (not e!6282))))

(assert (=> b!10932 (= res!3913 (= f!539 lambda!2895))))

(declare-fun b!10933 () Bool)

(declare-fun res!3910 () Bool)

(assert (=> b!10933 (=> (not res!3910) (not e!6282))))

(assert (=> b!10933 (= res!3910 (and (or (not (is-Cons!259 xs!292)) (not (is-Nil!260 (tail!489 xs!292)))) (= thiss!749 xs!292) (= f!558 f!539)))))

(assert (= (and start!2202 res!3914) b!10929))

(assert (= (and b!10929 res!3912) b!10932))

(assert (= (and b!10932 res!3913) b!10931))

(assert (= (and b!10931 res!3911) b!10933))

(assert (= (and b!10933 res!3910) b!10930))

(declare-fun b_lambda!5655 () Bool)

(assert (=> (not b_lambda!5655) (not b!10931)))

(declare-fun t!3017 () Bool)

(declare-fun tb!2677 () Bool)

(assert (=> (and start!2202 (= f!539 f!539) t!3017) tb!2677))

(declare-fun result!2729 () Bool)

(assert (=> tb!2677 (= result!2729 true)))

(assert (=> b!10931 t!3017))

(declare-fun b_and!5061 () Bool)

(assert (= b_and!5057 (and (=> t!3017 result!2729) b_and!5061)))

(declare-fun t!3019 () Bool)

(declare-fun tb!2679 () Bool)

(assert (=> (and start!2202 (= f!558 f!539) t!3019) tb!2679))

(declare-fun result!2731 () Bool)

(assert (=> tb!2679 (= result!2731 true)))

(assert (=> b!10931 t!3019))

(declare-fun b_and!5063 () Bool)

(assert (= b_and!5059 (and (=> t!3019 result!2731) b_and!5063)))

(declare-fun m!13905 () Bool)

(assert (=> start!2202 m!13905))

(declare-fun m!13907 () Bool)

(assert (=> b!10929 m!13907))

(declare-fun m!13909 () Bool)

(assert (=> b!10930 m!13909))

(declare-fun m!13911 () Bool)

(assert (=> b!10931 m!13911))

(declare-fun m!13913 () Bool)

(assert (=> b!10931 m!13913))

(declare-fun m!13915 () Bool)

(assert (=> b!10931 m!13915))

(assert (=> b!10931 m!13913))

(assert (=> b!10931 m!13915))

(declare-fun m!13917 () Bool)

(assert (=> b!10931 m!13917))

(assert (=> b!10931 m!13911))

(declare-fun m!13919 () Bool)

(assert (=> b!10931 m!13919))

(push 1)

(assert (not b!10930))

(assert (not b_next!3519))

(assert (not b!10931))

(assert b_and!5063)

(assert (not b_lambda!5655))

(assert (not start!2202))

(assert (not b_next!3517))

(assert (not b!10929))

(assert b_and!5061)

(check-sat)

(pop 1)

(push 1)

(assert b_and!5061)

(assert b_and!5063)

(assert (not b_next!3519))

(assert (not b_next!3517))

(check-sat)

(pop 1)


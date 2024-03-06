; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2232 () Bool)

(assert start!2232)

(declare-fun b!11095 () Bool)

(declare-fun b_free!1487 () Bool)

(declare-fun b_next!3581 () Bool)

(assert (=> b!11095 (= b_free!1487 (not b_next!3581))))

(declare-fun tp!2394 () Bool)

(declare-fun b_and!5169 () Bool)

(assert (=> b!11095 (= tp!2394 b_and!5169)))

(declare-fun b_free!1489 () Bool)

(declare-fun b_next!3583 () Bool)

(assert (=> b!11095 (= b_free!1489 (not b_next!3583))))

(declare-fun tp!2397 () Bool)

(declare-fun b_and!5171 () Bool)

(assert (=> b!11095 (= tp!2397 b_and!5171)))

(declare-fun b_free!1491 () Bool)

(declare-fun b_next!3585 () Bool)

(assert (=> b!11095 (= b_free!1491 (not b_next!3585))))

(declare-fun tp!2395 () Bool)

(declare-fun b_and!5173 () Bool)

(assert (=> b!11095 (= tp!2395 b_and!5173)))

(declare-fun b_free!1493 () Bool)

(declare-fun b_next!3587 () Bool)

(assert (=> start!2232 (= b_free!1493 (not b_next!3587))))

(declare-fun tp!2398 () Bool)

(declare-fun b_and!5175 () Bool)

(assert (=> start!2232 (= tp!2398 b_and!5175)))

(declare-fun b_free!1495 () Bool)

(declare-fun b_next!3589 () Bool)

(assert (=> start!2232 (= b_free!1495 (not b_next!3589))))

(declare-fun tp!2396 () Bool)

(declare-fun b_and!5177 () Bool)

(assert (=> start!2232 (= tp!2396 b_and!5177)))

(declare-fun f!539 () Int)

(declare-fun lambda!2939 () Int)

(declare-fun b!11096 () Bool)

(declare-fun b_next!3591 () Bool)

(assert (=> start!2232 (= b_next!3587 (or (and b!11096 (= lambda!2939 f!539)) b_next!3591))))

(declare-fun f!568 () Int)

(declare-fun b_next!3593 () Bool)

(assert (=> start!2232 (= b_next!3589 (or (and b!11096 (= lambda!2939 f!568)) b_next!3593))))

(declare-fun b!11098 () Bool)

(assert (=> b!11098 true))

(declare-fun order!191 () Int)

(declare-fun lambda!2940 () Int)

(declare-fun order!193 () Int)

(declare-fun dynLambda!389 (Int Int) Int)

(declare-fun dynLambda!390 (Int Int) Int)

(assert (=> b!11098 (< (dynLambda!389 order!191 f!539) (dynLambda!390 order!193 lambda!2940))))

(assert (=> b!11098 true))

(assert (=> b!11098 true))

(declare-datatypes () ((Balance!295 (Balance!296 (extraOpen!188 Int) (extraClose!188 Int)))))

(declare-datatypes () ((EqEvidence!226 (EqEvidence!227 (x!6215 Int) (y!626 Int) (evidence!180 Int)))))

(declare-fun thiss!747 () EqEvidence!226)

(declare-fun b_next!3595 () Bool)

(assert (=> b!11095 (= b_next!3581 (or (and b!11098 (= lambda!2940 (x!6215 thiss!747))) b_next!3595))))

(declare-fun b_next!3597 () Bool)

(assert (=> b!11095 (= b_next!3583 (or (and b!11098 (= lambda!2940 (y!626 thiss!747))) b_next!3597))))

(assert (=> b!11098 true))

(declare-fun order!195 () Int)

(declare-fun lambda!2942 () Int)

(declare-fun dynLambda!391 (Int Int) Int)

(assert (=> b!11098 (< (dynLambda!389 order!191 f!539) (dynLambda!391 order!195 lambda!2942))))

(assert (=> b!11098 true))

(assert (=> b!11098 true))

(declare-fun lambda!2941 () Int)

(declare-fun order!197 () Int)

(declare-fun dynLambda!392 (Int Int) Int)

(assert (=> b!11098 (< (dynLambda!389 order!191 f!539) (dynLambda!392 order!197 lambda!2941))))

(assert (=> b!11098 true))

(declare-fun b_next!3599 () Bool)

(assert (=> b!11095 (= b_next!3585 (or (and b!11098 (= lambda!2941 (evidence!180 thiss!747))) b_next!3599))))

(declare-fun res!4015 () Bool)

(declare-fun e!6328 () Bool)

(assert (=> start!2232 (=> (not res!4015) (not e!6328))))

(declare-datatypes () ((List!267 (Nil!265) (Cons!264 (head!482 Balance!295) (tail!494 List!267)))))

(declare-fun xs!292 () List!267)

(declare-fun isEmpty!195 (List!267) Bool)

(assert (=> start!2232 (= res!4015 (not (isEmpty!195 xs!292)))))

(assert (=> start!2232 e!6328))

(declare-fun e!6327 () Bool)

(declare-fun inv!371 (EqEvidence!226) Bool)

(assert (=> start!2232 (and (inv!371 thiss!747) e!6327)))

(assert (=> start!2232 tp!2398))

(assert (=> start!2232 true))

(assert (=> start!2232 tp!2396))

(declare-fun b!11092 () Bool)

(declare-fun res!4013 () Bool)

(assert (=> b!11092 (=> (not res!4013) (not e!6328))))

(assert (=> b!11092 (= res!4013 (or (not (is-Cons!264 xs!292)) (not (is-Nil!265 (tail!494 xs!292)))))))

(declare-fun b!11093 () Bool)

(declare-fun thiss!760 () List!267)

(assert (=> b!11093 (= e!6328 (isEmpty!195 thiss!760))))

(declare-fun b!11094 () Bool)

(declare-fun res!4016 () Bool)

(assert (=> b!11094 (=> (not res!4016) (not e!6328))))

(declare-fun ys!54 () List!267)

(declare-datatypes () ((ProofOps!234 (ProofOps!235 (prop!250 Bool)))))

(declare-fun thiss!710 () ProofOps!234)

(declare-fun dynLambda!393 (Int Balance!295 Balance!295) Balance!295)

(declare-fun foldRight1!97 (List!267 Int) Balance!295)

(declare-fun append!116 (List!267 List!267) List!267)

(assert (=> b!11094 (= res!4016 (= thiss!710 (ProofOps!235 (= (dynLambda!393 f!539 (foldRight1!97 xs!292 f!539) (foldRight1!97 ys!54 f!539)) (foldRight1!97 (append!116 xs!292 ys!54) f!539)))))))

(assert (=> b!11095 (= e!6327 (and tp!2394 tp!2397 tp!2395))))

(declare-fun res!4014 () Bool)

(assert (=> b!11096 (=> (not res!4014) (not e!6328))))

(assert (=> b!11096 (= res!4014 (= f!539 lambda!2939))))

(declare-fun b!11097 () Bool)

(declare-fun res!4011 () Bool)

(assert (=> b!11097 (=> (not res!4011) (not e!6328))))

(assert (=> b!11097 (= res!4011 (and (= thiss!760 ys!54) (= f!568 f!539)))))

(declare-fun res!4010 () Bool)

(assert (=> b!11098 (=> (not res!4010) (not e!6328))))

(assert (=> b!11098 (= res!4010 (= thiss!747 (EqEvidence!227 lambda!2940 lambda!2940 lambda!2941)))))

(declare-fun b!11099 () Bool)

(declare-fun res!4012 () Bool)

(assert (=> b!11099 (=> (not res!4012) (not e!6328))))

(assert (=> b!11099 (= res!4012 (not (isEmpty!195 ys!54)))))

(assert (= (and start!2232 res!4015) b!11099))

(assert (= (and b!11099 res!4012) b!11096))

(assert (= (and b!11096 res!4014) b!11094))

(assert (= (and b!11094 res!4016) b!11092))

(assert (= (and b!11092 res!4013) b!11098))

(assert (= (and b!11098 res!4010) b!11097))

(assert (= (and b!11097 res!4011) b!11093))

(assert (= start!2232 b!11095))

(declare-fun b_lambda!5723 () Bool)

(assert (=> (not b_lambda!5723) (not b!11094)))

(declare-fun t!3079 () Bool)

(declare-fun tb!2739 () Bool)

(assert (=> (and start!2232 (= f!539 f!539) t!3079) tb!2739))

(declare-fun result!2791 () Bool)

(assert (=> tb!2739 (= result!2791 true)))

(assert (=> b!11094 t!3079))

(declare-fun b_and!5179 () Bool)

(assert (= b_and!5175 (and (=> t!3079 result!2791) b_and!5179)))

(declare-fun tb!2741 () Bool)

(declare-fun t!3081 () Bool)

(assert (=> (and start!2232 (= f!568 f!539) t!3081) tb!2741))

(declare-fun result!2793 () Bool)

(assert (=> tb!2741 (= result!2793 true)))

(assert (=> b!11094 t!3081))

(declare-fun b_and!5181 () Bool)

(assert (= b_and!5177 (and (=> t!3081 result!2793) b_and!5181)))

(declare-fun m!14051 () Bool)

(assert (=> start!2232 m!14051))

(declare-fun m!14053 () Bool)

(assert (=> start!2232 m!14053))

(declare-fun m!14055 () Bool)

(assert (=> b!11093 m!14055))

(declare-fun m!14057 () Bool)

(assert (=> b!11094 m!14057))

(declare-fun m!14059 () Bool)

(assert (=> b!11094 m!14059))

(declare-fun m!14061 () Bool)

(assert (=> b!11094 m!14061))

(assert (=> b!11094 m!14059))

(assert (=> b!11094 m!14061))

(declare-fun m!14063 () Bool)

(assert (=> b!11094 m!14063))

(assert (=> b!11094 m!14057))

(declare-fun m!14065 () Bool)

(assert (=> b!11094 m!14065))

(declare-fun m!14067 () Bool)

(assert (=> b!11099 m!14067))

(push 1)

(assert (not start!2232))

(assert (not b!11094))

(assert (not b_next!3595))

(assert (not b_next!3591))

(assert (not b_next!3599))

(assert b_and!5179)

(assert b_and!5169)

(assert b_and!5173)

(assert b_and!5181)

(assert (not b_next!3597))

(assert (not b_lambda!5723))

(assert b_and!5171)

(assert (not b!11093))

(assert (not b_next!3593))

(assert (not b!11099))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3595))

(assert (not b_next!3591))

(assert (not b_next!3599))

(assert b_and!5179)

(assert b_and!5169)

(assert b_and!5173)

(assert b_and!5181)

(assert (not b_next!3597))

(assert b_and!5171)

(assert (not b_next!3593))

(check-sat)

(pop 1)


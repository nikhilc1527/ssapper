; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2416 () Bool)

(assert start!2416)

(declare-fun b_free!1807 () Bool)

(declare-fun b_next!4269 () Bool)

(assert (=> start!2416 (= b_free!1807 (not b_next!4269))))

(declare-fun tp!2884 () Bool)

(declare-fun b_and!6245 () Bool)

(assert (=> start!2416 (= tp!2884 b_and!6245)))

(declare-fun b_free!1809 () Bool)

(declare-fun b_next!4271 () Bool)

(assert (=> start!2416 (= b_free!1809 (not b_next!4271))))

(declare-fun tp!2879 () Bool)

(declare-fun b_and!6247 () Bool)

(assert (=> start!2416 (= tp!2879 b_and!6247)))

(declare-fun b!12064 () Bool)

(declare-fun b_free!1811 () Bool)

(declare-fun b_next!4273 () Bool)

(assert (=> b!12064 (= b_free!1811 (not b_next!4273))))

(declare-fun tp!2878 () Bool)

(declare-fun b_and!6249 () Bool)

(assert (=> b!12064 (= tp!2878 b_and!6249)))

(declare-fun b_free!1813 () Bool)

(declare-fun b_next!4275 () Bool)

(assert (=> b!12064 (= b_free!1813 (not b_next!4275))))

(declare-fun tp!2883 () Bool)

(declare-fun b_and!6251 () Bool)

(assert (=> b!12064 (= tp!2883 b_and!6251)))

(declare-fun b_free!1815 () Bool)

(declare-fun b_next!4277 () Bool)

(assert (=> b!12064 (= b_free!1815 (not b_next!4277))))

(declare-fun tp!2881 () Bool)

(declare-fun b_and!6253 () Bool)

(assert (=> b!12064 (= tp!2881 b_and!6253)))

(declare-fun b!12069 () Bool)

(declare-fun b_free!1817 () Bool)

(declare-fun b_next!4279 () Bool)

(assert (=> b!12069 (= b_free!1817 (not b_next!4279))))

(declare-fun tp!2880 () Bool)

(declare-fun b_and!6255 () Bool)

(assert (=> b!12069 (= tp!2880 b_and!6255)))

(declare-fun b_free!1819 () Bool)

(declare-fun b_next!4281 () Bool)

(assert (=> b!12069 (= b_free!1819 (not b_next!4281))))

(declare-fun tp!2882 () Bool)

(declare-fun b_and!6257 () Bool)

(assert (=> b!12069 (= tp!2882 b_and!6257)))

(declare-fun f!539 () Int)

(declare-fun b!12067 () Bool)

(declare-fun lambda!3263 () Int)

(declare-fun b_next!4283 () Bool)

(assert (=> start!2416 (= b_next!4271 (or (and b!12067 (= lambda!3263 f!539)) b_next!4283))))

(declare-fun b!12070 () Bool)

(assert (=> b!12070 true))

(declare-fun order!305 () Int)

(declare-fun order!307 () Int)

(declare-fun lambda!3264 () Int)

(declare-fun dynLambda!500 (Int Int) Int)

(declare-fun dynLambda!501 (Int Int) Int)

(assert (=> b!12070 (< (dynLambda!500 order!305 f!539) (dynLambda!501 order!307 lambda!3264))))

(assert (=> b!12070 true))

(assert (=> b!12070 true))

(declare-fun b_next!4285 () Bool)

(declare-datatypes () ((Balance!347 (Balance!348 (extraOpen!214 Int) (extraClose!214 Int)))))

(declare-datatypes () ((EqEvidence!274 (EqEvidence!275 (x!6925 Int) (y!661 Int) (evidence!204 Int)))))

(declare-fun thiss!746 () EqEvidence!274)

(assert (=> b!12064 (= b_next!4273 (or (and b!12070 (= lambda!3264 (x!6925 thiss!746))) b_next!4285))))

(declare-fun b_next!4287 () Bool)

(assert (=> b!12064 (= b_next!4275 (or (and b!12070 (= lambda!3264 (y!661 thiss!746))) b_next!4287))))

(declare-fun b_next!4289 () Bool)

(declare-datatypes () ((EqProof!130 (EqProof!131 (x!6926 Int) (y!662 Int)))))

(declare-fun thiss!766 () EqProof!130)

(assert (=> b!12069 (= b_next!4279 (or (and b!12070 (= lambda!3264 (x!6926 thiss!766))) b_next!4289))))

(declare-fun b_next!4291 () Bool)

(assert (=> b!12069 (= b_next!4281 (or (and b!12070 (= lambda!3264 (y!662 thiss!766))) b_next!4291))))

(assert (=> b!12070 true))

(declare-fun lambda!3265 () Int)

(declare-fun order!309 () Int)

(declare-fun dynLambda!502 (Int Int) Int)

(assert (=> b!12070 (< (dynLambda!500 order!305 f!539) (dynLambda!502 order!309 lambda!3265))))

(assert (=> b!12070 true))

(declare-fun lambda!3266 () Int)

(assert (=> b!12070 (not (= lambda!3266 lambda!3264))))

(assert (=> b!12070 true))

(assert (=> b!12070 (< (dynLambda!500 order!305 f!539) (dynLambda!501 order!307 lambda!3266))))

(assert (=> b!12070 true))

(assert (=> b!12070 true))

(declare-fun b_next!4293 () Bool)

(assert (=> b!12064 (= b_next!4285 (or (and b!12070 (= lambda!3266 (x!6925 thiss!746))) b_next!4293))))

(declare-fun b_next!4295 () Bool)

(assert (=> b!12064 (= b_next!4287 (or (and b!12070 (= lambda!3266 (y!661 thiss!746))) b_next!4295))))

(declare-fun b_next!4297 () Bool)

(assert (=> b!12069 (= b_next!4289 (or (and b!12070 (= lambda!3266 (x!6926 thiss!766))) b_next!4297))))

(declare-fun b_next!4299 () Bool)

(assert (=> b!12069 (= b_next!4291 (or (and b!12070 (= lambda!3266 (y!662 thiss!766))) b_next!4299))))

(assert (=> b!12070 true))

(declare-fun lambda!3267 () Int)

(declare-fun order!311 () Int)

(declare-fun dynLambda!503 (Int Int) Int)

(assert (=> b!12070 (< (dynLambda!500 order!305 f!539) (dynLambda!503 order!311 lambda!3267))))

(assert (=> b!12070 true))

(assert (=> b!12070 true))

(declare-fun proof!211 () Int)

(declare-fun b_next!4301 () Bool)

(assert (=> start!2416 (= b_next!4269 (or (and b!12070 (= lambda!3267 proof!211)) b_next!4301))))

(declare-fun b_next!4303 () Bool)

(assert (=> b!12064 (= b_next!4277 (or (and b!12070 (= lambda!3267 (evidence!204 thiss!746))) b_next!4303))))

(declare-fun bs!3106 () Bool)

(declare-fun b!12062 () Bool)

(assert (= bs!3106 (and b!12062 b!12070)))

(declare-fun lambda!3268 () Int)

(assert (=> bs!3106 (not (= lambda!3268 lambda!3264))))

(assert (=> bs!3106 (not (= lambda!3268 lambda!3266))))

(assert (=> b!12062 true))

(assert (=> b!12062 (< (dynLambda!500 order!305 f!539) (dynLambda!501 order!307 lambda!3268))))

(assert (=> b!12062 true))

(assert (=> b!12062 true))

(declare-fun b_next!4305 () Bool)

(assert (=> b!12064 (= b_next!4293 (or (and b!12062 (= lambda!3268 (x!6925 thiss!746))) b_next!4305))))

(declare-fun b_next!4307 () Bool)

(assert (=> b!12064 (= b_next!4295 (or (and b!12062 (= lambda!3268 (y!661 thiss!746))) b_next!4307))))

(declare-fun b_next!4309 () Bool)

(assert (=> b!12069 (= b_next!4297 (or (and b!12062 (= lambda!3268 (x!6926 thiss!766))) b_next!4309))))

(declare-fun b_next!4311 () Bool)

(assert (=> b!12069 (= b_next!4299 (or (and b!12062 (= lambda!3268 (y!662 thiss!766))) b_next!4311))))

(declare-fun bs!3107 () Bool)

(declare-fun b!12066 () Bool)

(assert (= bs!3107 (and b!12066 b!12070)))

(declare-fun lambda!3269 () Int)

(assert (=> bs!3107 (not (= lambda!3269 lambda!3267))))

(assert (=> b!12066 true))

(assert (=> b!12066 true))

(declare-fun b_next!4313 () Bool)

(assert (=> start!2416 (= b_next!4301 (or (and b!12066 (= lambda!3269 proof!211)) b_next!4313))))

(declare-fun b_next!4315 () Bool)

(assert (=> b!12064 (= b_next!4303 (or (and b!12066 (= lambda!3269 (evidence!204 thiss!746))) b_next!4315))))

(declare-fun b!12061 () Bool)

(declare-fun res!4474 () Bool)

(declare-fun e!6654 () Bool)

(assert (=> b!12061 (=> (not res!4474) (not e!6654))))

(declare-datatypes () ((List!285 (Nil!283) (Cons!282 (head!500 Balance!347) (tail!512 List!285)))))

(declare-fun ys!54 () List!285)

(declare-fun isEmpty!213 (List!285) Bool)

(assert (=> b!12061 (= res!4474 (not (isEmpty!213 ys!54)))))

(declare-fun res!4472 () Bool)

(assert (=> b!12062 (=> (not res!4472) (not e!6654))))

(assert (=> b!12062 (= res!4472 (= thiss!766 (EqProof!131 lambda!3268 lambda!3268)))))

(declare-fun b!12063 () Bool)

(declare-fun dynLambda!504 (Int) Bool)

(assert (=> b!12063 (= e!6654 (not (dynLambda!504 proof!211)))))

(declare-fun e!6655 () Bool)

(assert (=> b!12064 (= e!6655 (and tp!2878 tp!2883 tp!2881))))

(declare-fun b!12065 () Bool)

(declare-fun res!4471 () Bool)

(assert (=> b!12065 (=> (not res!4471) (not e!6654))))

(declare-datatypes () ((ProofOps!270 (ProofOps!271 (prop!268 Bool)))))

(declare-fun thiss!710 () ProofOps!270)

(declare-fun xs!292 () List!285)

(declare-fun dynLambda!505 (Int Balance!347 Balance!347) Balance!347)

(declare-fun foldRight1!115 (List!285 Int) Balance!347)

(declare-fun append!134 (List!285 List!285) List!285)

(assert (=> b!12065 (= res!4471 (= thiss!710 (ProofOps!271 (= (dynLambda!505 f!539 (foldRight1!115 xs!292 f!539) (foldRight1!115 ys!54 f!539)) (foldRight1!115 (append!134 xs!292 ys!54) f!539)))))))

(declare-fun res!4476 () Bool)

(assert (=> b!12066 (=> (not res!4476) (not e!6654))))

(assert (=> b!12066 (= res!4476 (= proof!211 lambda!3269))))

(declare-fun res!4470 () Bool)

(assert (=> b!12067 (=> (not res!4470) (not e!6654))))

(assert (=> b!12067 (= res!4470 (= f!539 lambda!3263))))

(declare-fun b!12068 () Bool)

(declare-fun res!4473 () Bool)

(assert (=> b!12068 (=> (not res!4473) (not e!6654))))

(assert (=> b!12068 (= res!4473 (or (not (is-Cons!282 xs!292)) (not (is-Nil!283 (tail!512 xs!292)))))))

(declare-fun res!4475 () Bool)

(assert (=> start!2416 (=> (not res!4475) (not e!6654))))

(assert (=> start!2416 (= res!4475 (not (isEmpty!213 xs!292)))))

(assert (=> start!2416 e!6654))

(assert (=> start!2416 tp!2884))

(assert (=> start!2416 tp!2879))

(assert (=> start!2416 true))

(declare-fun inv!406 (EqEvidence!274) Bool)

(assert (=> start!2416 (and (inv!406 thiss!746) e!6655)))

(declare-fun e!6656 () Bool)

(declare-fun inv!407 (EqProof!130) Bool)

(assert (=> start!2416 (and (inv!407 thiss!766) e!6656)))

(assert (=> b!12069 (= e!6656 (and tp!2880 tp!2882))))

(declare-fun res!4469 () Bool)

(assert (=> b!12070 (=> (not res!4469) (not e!6654))))

(assert (=> b!12070 (= res!4469 (= thiss!746 (EqEvidence!275 lambda!3264 lambda!3266 lambda!3267)))))

(assert (= (and start!2416 res!4475) b!12061))

(assert (= (and b!12061 res!4474) b!12067))

(assert (= (and b!12067 res!4470) b!12065))

(assert (= (and b!12065 res!4471) b!12068))

(assert (= (and b!12068 res!4473) b!12070))

(assert (= (and b!12070 res!4469) b!12062))

(assert (= (and b!12062 res!4472) b!12066))

(assert (= (and b!12066 res!4476) b!12063))

(assert (= start!2416 b!12064))

(assert (= start!2416 b!12069))

(declare-fun b_lambda!6489 () Bool)

(assert (=> (not b_lambda!6489) (not b!12063)))

(declare-fun t!3629 () Bool)

(declare-fun tb!3289 () Bool)

(assert (=> (and start!2416 (= proof!211 proof!211) t!3629) tb!3289))

(declare-fun result!3341 () Bool)

(assert (=> tb!3289 (= result!3341 true)))

(assert (=> b!12063 t!3629))

(declare-fun b_and!6259 () Bool)

(assert (= b_and!6245 (and (=> t!3629 result!3341) b_and!6259)))

(declare-fun tb!3291 () Bool)

(declare-fun t!3631 () Bool)

(assert (=> (and b!12064 (= (evidence!204 thiss!746) proof!211) t!3631) tb!3291))

(declare-fun result!3343 () Bool)

(assert (=> tb!3291 (= result!3343 true)))

(assert (=> b!12063 t!3631))

(declare-fun b_and!6261 () Bool)

(assert (= b_and!6253 (and (=> t!3631 result!3343) b_and!6261)))

(declare-fun b_lambda!6491 () Bool)

(assert (=> (not b_lambda!6491) (not b!12065)))

(declare-fun t!3633 () Bool)

(declare-fun tb!3293 () Bool)

(assert (=> (and start!2416 (= f!539 f!539) t!3633) tb!3293))

(declare-fun result!3345 () Bool)

(assert (=> tb!3293 (= result!3345 true)))

(assert (=> b!12065 t!3633))

(declare-fun b_and!6263 () Bool)

(assert (= b_and!6247 (and (=> t!3633 result!3345) b_and!6263)))

(declare-fun m!14963 () Bool)

(assert (=> b!12061 m!14963))

(declare-fun m!14965 () Bool)

(assert (=> b!12063 m!14965))

(declare-fun m!14967 () Bool)

(assert (=> b!12065 m!14967))

(declare-fun m!14969 () Bool)

(assert (=> b!12065 m!14969))

(declare-fun m!14971 () Bool)

(assert (=> b!12065 m!14971))

(assert (=> b!12065 m!14969))

(assert (=> b!12065 m!14971))

(declare-fun m!14973 () Bool)

(assert (=> b!12065 m!14973))

(assert (=> b!12065 m!14967))

(declare-fun m!14975 () Bool)

(assert (=> b!12065 m!14975))

(declare-fun m!14977 () Bool)

(assert (=> start!2416 m!14977))

(declare-fun m!14979 () Bool)

(assert (=> start!2416 m!14979))

(declare-fun m!14981 () Bool)

(assert (=> start!2416 m!14981))

(push 1)

(assert (not b_next!4315))

(assert (not b_next!4311))

(assert (not b_next!4309))

(assert (not start!2416))

(assert (not b!12065))

(assert (not b_next!4313))

(assert b_and!6263)

(assert (not b_next!4305))

(assert b_and!6249)

(assert (not b_next!4307))

(assert b_and!6261)

(assert b_and!6257)

(assert b_and!6255)

(assert b_and!6259)

(assert b_and!6251)

(assert (not b_next!4283))

(assert (not b!12061))

(assert (not b_lambda!6489))

(assert (not b_lambda!6491))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4315))

(assert (not b_next!4311))

(assert (not b_next!4309))

(assert (not b_next!4313))

(assert b_and!6263)

(assert (not b_next!4305))

(assert b_and!6249)

(assert (not b_next!4307))

(assert b_and!6261)

(assert b_and!6257)

(assert b_and!6255)

(assert b_and!6259)

(assert b_and!6251)

(assert (not b_next!4283))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6493 () Bool)

(assert (= b_lambda!6489 (or (and b!12070 (= lambda!3267 proof!211)) (and b!12066 (= lambda!3269 proof!211)) (and start!2416 b_free!1807) (and b!12064 b_free!1815 (= (evidence!204 thiss!746) proof!211)) b_lambda!6493)))

(declare-fun bs!3108 () Bool)

(declare-fun d!9277 () Bool)

(assert (= bs!3108 (and d!9277 b!12070)))

(declare-fun append_is_associative!0 (Balance!347 Balance!347 Balance!347) Bool)

(assert (=> bs!3108 (= (dynLambda!504 lambda!3267) (append_is_associative!0 (head!500 xs!292) (foldRight1!115 (tail!512 xs!292) f!539) (foldRight1!115 ys!54 f!539)))))

(declare-fun m!14983 () Bool)

(assert (=> bs!3108 m!14983))

(assert (=> bs!3108 m!14971))

(assert (=> bs!3108 m!14983))

(assert (=> bs!3108 m!14971))

(declare-fun m!14985 () Bool)

(assert (=> bs!3108 m!14985))

(assert (=> (and b!12070 (= lambda!3267 proof!211) b!12063) d!9277))

(declare-fun bs!3109 () Bool)

(declare-fun d!9279 () Bool)

(assert (= bs!3109 (and d!9279 b!12066)))

(declare-fun append!24 (List!285 List!285) Bool)

(assert (=> bs!3109 (= (dynLambda!504 lambda!3269) (append!24 (tail!512 xs!292) ys!54))))

(declare-fun m!14987 () Bool)

(assert (=> bs!3109 m!14987))

(assert (=> (and b!12066 (= lambda!3269 proof!211) b!12063) d!9279))

(declare-fun b_lambda!6495 () Bool)

(assert (= b_lambda!6491 (or (and b!12067 (= lambda!3263 f!539)) (and start!2416 b_free!1809) b_lambda!6495)))

(declare-fun bs!3110 () Bool)

(declare-fun d!9281 () Bool)

(assert (= bs!3110 (and d!9281 b!12067)))

(declare-fun ++!3 (Balance!347 Balance!347) Balance!347)

(assert (=> bs!3110 (= (dynLambda!505 lambda!3263 (foldRight1!115 xs!292 f!539) (foldRight1!115 ys!54 f!539)) (++!3 (foldRight1!115 xs!292 f!539) (foldRight1!115 ys!54 f!539)))))

(assert (=> bs!3110 m!14969))

(assert (=> bs!3110 m!14971))

(declare-fun m!14989 () Bool)

(assert (=> bs!3110 m!14989))

(assert (=> (and b!12067 (= lambda!3263 f!539) b!12065) d!9281))

(push 1)

(assert (not b_next!4315))

(assert (not b_next!4311))

(assert (not b_next!4309))

(assert (not start!2416))

(assert (not b!12065))

(assert (not b_next!4313))

(assert b_and!6263)

(assert (not bs!3108))

(assert (not b_next!4305))

(assert b_and!6249)

(assert (not b_next!4307))

(assert b_and!6261)

(assert b_and!6257)

(assert b_and!6255)

(assert (not b_lambda!6493))

(assert (not bs!3109))

(assert b_and!6259)

(assert (not bs!3110))

(assert b_and!6251)

(assert (not b_next!4283))

(assert (not b!12061))

(assert (not b_lambda!6495))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4315))

(assert (not b_next!4311))

(assert (not b_next!4309))

(assert (not b_next!4313))

(assert b_and!6263)

(assert (not b_next!4305))

(assert b_and!6249)

(assert (not b_next!4307))

(assert b_and!6261)

(assert b_and!6257)

(assert b_and!6255)

(assert b_and!6259)

(assert b_and!6251)

(assert (not b_next!4283))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9283 () Bool)

(assert (=> d!9283 (= (isEmpty!213 ys!54) (is-Nil!283 ys!54))))

(assert (=> b!12061 d!9283))

(declare-fun d!9285 () Bool)

(declare-fun lt!1791 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!9285 (= lt!1791 (min!4 (extraOpen!214 (foldRight1!115 xs!292 f!539)) (extraClose!214 (foldRight1!115 ys!54 f!539))))))

(assert (=> d!9285 (= (++!3 (foldRight1!115 xs!292 f!539) (foldRight1!115 ys!54 f!539)) (Balance!348 (- (+ (extraOpen!214 (foldRight1!115 xs!292 f!539)) (extraOpen!214 (foldRight1!115 ys!54 f!539))) lt!1791) (- (+ (extraClose!214 (foldRight1!115 xs!292 f!539)) (extraClose!214 (foldRight1!115 ys!54 f!539))) lt!1791)))))

(declare-fun bs!3111 () Bool)

(assert (= bs!3111 d!9285))

(declare-fun m!14991 () Bool)

(assert (=> bs!3111 m!14991))

(assert (=> bs!3110 d!9285))

(declare-fun bs!3112 () Bool)

(declare-fun d!9287 () Bool)

(assert (= bs!3112 (and d!9287 b!12067)))

(declare-fun lambda!3272 () Int)

(assert (=> bs!3112 (= lambda!3272 lambda!3263)))

(declare-fun b_next!4317 () Bool)

(assert (=> start!2416 (= b_next!4283 (or (and d!9287 (= lambda!3272 f!539)) b_next!4317))))

(declare-fun because!2 (ProofOps!270 Bool) Bool)

(assert (=> d!9287 (because!2 (ProofOps!271 (= (++!3 (foldRight1!115 (tail!512 xs!292) lambda!3272) (foldRight1!115 ys!54 lambda!3272)) (foldRight1!115 (append!134 (tail!512 xs!292) ys!54) lambda!3272))) true)))

(assert (=> d!9287 (= (++!3 (foldRight1!115 (tail!512 xs!292) lambda!3272) (foldRight1!115 ys!54 lambda!3272)) (foldRight1!115 (append!134 (tail!512 xs!292) ys!54) lambda!3272))))

(declare-fun e!6659 () Bool)

(assert (=> d!9287 e!6659))

(declare-fun res!4485 () Bool)

(assert (=> d!9287 (=> (not res!4485) (not e!6659))))

(assert (=> d!9287 (= res!4485 (not (isEmpty!213 (tail!512 xs!292))))))

(assert (=> d!9287 (= (append!24 (tail!512 xs!292) ys!54) true)))

(declare-fun b!12085 () Bool)

(assert (=> b!12085 (= e!6659 (not (isEmpty!213 ys!54)))))

(assert (= (and d!9287 res!4485) b!12085))

(declare-fun m!14993 () Bool)

(assert (=> d!9287 m!14993))

(declare-fun m!14995 () Bool)

(assert (=> d!9287 m!14995))

(declare-fun m!14997 () Bool)

(assert (=> d!9287 m!14997))

(declare-fun m!14999 () Bool)

(assert (=> d!9287 m!14999))

(declare-fun m!15001 () Bool)

(assert (=> d!9287 m!15001))

(assert (=> d!9287 m!14997))

(declare-fun m!15003 () Bool)

(assert (=> d!9287 m!15003))

(assert (=> d!9287 m!15003))

(declare-fun m!15005 () Bool)

(assert (=> d!9287 m!15005))

(assert (=> d!9287 m!14995))

(assert (=> b!12085 m!14963))

(assert (=> bs!3109 d!9287))

(declare-fun d!9289 () Bool)

(assert (=> d!9289 (= (++!3 (head!500 xs!292) (++!3 (foldRight1!115 (tail!512 xs!292) f!539) (foldRight1!115 ys!54 f!539))) (++!3 (++!3 (head!500 xs!292) (foldRight1!115 (tail!512 xs!292) f!539)) (foldRight1!115 ys!54 f!539)))))

(assert (=> d!9289 (= (append_is_associative!0 (head!500 xs!292) (foldRight1!115 (tail!512 xs!292) f!539) (foldRight1!115 ys!54 f!539)) true)))

(declare-fun bs!3113 () Bool)

(assert (= bs!3113 d!9289))

(assert (=> bs!3113 m!14983))

(assert (=> bs!3113 m!14971))

(declare-fun m!15007 () Bool)

(assert (=> bs!3113 m!15007))

(assert (=> bs!3113 m!15007))

(declare-fun m!15009 () Bool)

(assert (=> bs!3113 m!15009))

(assert (=> bs!3113 m!14983))

(declare-fun m!15011 () Bool)

(assert (=> bs!3113 m!15011))

(assert (=> bs!3113 m!15011))

(assert (=> bs!3113 m!14971))

(declare-fun m!15013 () Bool)

(assert (=> bs!3113 m!15013))

(assert (=> bs!3108 d!9289))

(declare-fun d!9291 () Bool)

(declare-fun c!3456 () Bool)

(assert (=> d!9291 (= c!3456 (and (is-Cons!282 (tail!512 xs!292)) (is-Nil!283 (tail!512 (tail!512 xs!292)))))))

(declare-fun e!6662 () Balance!347)

(assert (=> d!9291 (= (foldRight1!115 (tail!512 xs!292) f!539) e!6662)))

(declare-fun b!12091 () Bool)

(assert (=> b!12091 (= e!6662 (head!500 (tail!512 xs!292)))))

(declare-fun b!12092 () Bool)

(assert (=> b!12092 (= e!6662 (dynLambda!505 f!539 (head!500 (tail!512 xs!292)) (foldRight1!115 (tail!512 (tail!512 xs!292)) f!539)))))

(assert (= (and d!9291 c!3456) b!12091))

(assert (= (and d!9291 (not c!3456)) b!12092))

(declare-fun b_lambda!6497 () Bool)

(assert (=> (not b_lambda!6497) (not b!12092)))

(declare-fun t!3635 () Bool)

(declare-fun tb!3295 () Bool)

(assert (=> (and start!2416 (= f!539 f!539) t!3635) tb!3295))

(declare-fun result!3347 () Bool)

(assert (=> tb!3295 (= result!3347 true)))

(assert (=> b!12092 t!3635))

(declare-fun b_and!6265 () Bool)

(assert (= b_and!6263 (and (=> t!3635 result!3347) b_and!6265)))

(declare-fun m!15015 () Bool)

(assert (=> b!12092 m!15015))

(assert (=> b!12092 m!15015))

(declare-fun m!15017 () Bool)

(assert (=> b!12092 m!15017))

(assert (=> bs!3108 d!9291))

(declare-fun d!9293 () Bool)

(declare-fun c!3457 () Bool)

(assert (=> d!9293 (= c!3457 (and (is-Cons!282 ys!54) (is-Nil!283 (tail!512 ys!54))))))

(declare-fun e!6663 () Balance!347)

(assert (=> d!9293 (= (foldRight1!115 ys!54 f!539) e!6663)))

(declare-fun b!12093 () Bool)

(assert (=> b!12093 (= e!6663 (head!500 ys!54))))

(declare-fun b!12094 () Bool)

(assert (=> b!12094 (= e!6663 (dynLambda!505 f!539 (head!500 ys!54) (foldRight1!115 (tail!512 ys!54) f!539)))))

(assert (= (and d!9293 c!3457) b!12093))

(assert (= (and d!9293 (not c!3457)) b!12094))

(declare-fun b_lambda!6499 () Bool)

(assert (=> (not b_lambda!6499) (not b!12094)))

(declare-fun t!3637 () Bool)

(declare-fun tb!3297 () Bool)

(assert (=> (and start!2416 (= f!539 f!539) t!3637) tb!3297))

(declare-fun result!3349 () Bool)

(assert (=> tb!3297 (= result!3349 true)))

(assert (=> b!12094 t!3637))

(declare-fun b_and!6267 () Bool)

(assert (= b_and!6265 (and (=> t!3637 result!3349) b_and!6267)))

(declare-fun m!15019 () Bool)

(assert (=> b!12094 m!15019))

(assert (=> b!12094 m!15019))

(declare-fun m!15021 () Bool)

(assert (=> b!12094 m!15021))

(assert (=> bs!3108 d!9293))

(declare-fun d!9295 () Bool)

(declare-fun c!3458 () Bool)

(assert (=> d!9295 (= c!3458 (and (is-Cons!282 xs!292) (is-Nil!283 (tail!512 xs!292))))))

(declare-fun e!6664 () Balance!347)

(assert (=> d!9295 (= (foldRight1!115 xs!292 f!539) e!6664)))

(declare-fun b!12095 () Bool)

(assert (=> b!12095 (= e!6664 (head!500 xs!292))))

(declare-fun b!12096 () Bool)

(assert (=> b!12096 (= e!6664 (dynLambda!505 f!539 (head!500 xs!292) (foldRight1!115 (tail!512 xs!292) f!539)))))

(assert (= (and d!9295 c!3458) b!12095))

(assert (= (and d!9295 (not c!3458)) b!12096))

(declare-fun b_lambda!6501 () Bool)

(assert (=> (not b_lambda!6501) (not b!12096)))

(declare-fun t!3639 () Bool)

(declare-fun tb!3299 () Bool)

(assert (=> (and start!2416 (= f!539 f!539) t!3639) tb!3299))

(declare-fun result!3351 () Bool)

(assert (=> tb!3299 (= result!3351 true)))

(assert (=> b!12096 t!3639))

(declare-fun b_and!6269 () Bool)

(assert (= b_and!6267 (and (=> t!3639 result!3351) b_and!6269)))

(assert (=> b!12096 m!14983))

(assert (=> b!12096 m!14983))

(declare-fun m!15023 () Bool)

(assert (=> b!12096 m!15023))

(assert (=> b!12065 d!9295))

(assert (=> b!12065 d!9293))

(declare-fun d!9297 () Bool)

(declare-fun c!3459 () Bool)

(assert (=> d!9297 (= c!3459 (and (is-Cons!282 (append!134 xs!292 ys!54)) (is-Nil!283 (tail!512 (append!134 xs!292 ys!54)))))))

(declare-fun e!6665 () Balance!347)

(assert (=> d!9297 (= (foldRight1!115 (append!134 xs!292 ys!54) f!539) e!6665)))

(declare-fun b!12097 () Bool)

(assert (=> b!12097 (= e!6665 (head!500 (append!134 xs!292 ys!54)))))

(declare-fun b!12098 () Bool)

(assert (=> b!12098 (= e!6665 (dynLambda!505 f!539 (head!500 (append!134 xs!292 ys!54)) (foldRight1!115 (tail!512 (append!134 xs!292 ys!54)) f!539)))))

(assert (= (and d!9297 c!3459) b!12097))

(assert (= (and d!9297 (not c!3459)) b!12098))

(declare-fun b_lambda!6503 () Bool)

(assert (=> (not b_lambda!6503) (not b!12098)))

(declare-fun t!3641 () Bool)

(declare-fun tb!3301 () Bool)

(assert (=> (and start!2416 (= f!539 f!539) t!3641) tb!3301))

(declare-fun result!3353 () Bool)

(assert (=> tb!3301 (= result!3353 true)))

(assert (=> b!12098 t!3641))

(declare-fun b_and!6271 () Bool)

(assert (= b_and!6269 (and (=> t!3641 result!3353) b_and!6271)))

(declare-fun m!15025 () Bool)

(assert (=> b!12098 m!15025))

(assert (=> b!12098 m!15025))

(declare-fun m!15027 () Bool)

(assert (=> b!12098 m!15027))

(assert (=> b!12065 d!9297))

(declare-fun d!9299 () Bool)

(declare-fun c!3462 () Bool)

(assert (=> d!9299 (= c!3462 (is-Nil!283 xs!292))))

(declare-fun e!6668 () List!285)

(assert (=> d!9299 (= (append!134 xs!292 ys!54) e!6668)))

(declare-fun b!12103 () Bool)

(assert (=> b!12103 (= e!6668 ys!54)))

(declare-fun b!12104 () Bool)

(assert (=> b!12104 (= e!6668 (Cons!282 (head!500 xs!292) (append!134 (tail!512 xs!292) ys!54)))))

(assert (= (and d!9299 c!3462) b!12103))

(assert (= (and d!9299 (not c!3462)) b!12104))

(assert (=> b!12104 m!15003))

(assert (=> b!12065 d!9299))

(declare-fun d!9301 () Bool)

(assert (=> d!9301 (= (isEmpty!213 xs!292) (is-Nil!283 xs!292))))

(assert (=> start!2416 d!9301))

(declare-fun d!9303 () Bool)

(declare-fun res!4488 () Bool)

(declare-fun e!6671 () Bool)

(assert (=> d!9303 (=> (not res!4488) (not e!6671))))

(declare-fun dynLambda!506 (Int) Balance!347)

(assert (=> d!9303 (= res!4488 (= (dynLambda!506 (x!6925 thiss!746)) (dynLambda!506 (y!661 thiss!746))))))

(assert (=> d!9303 (= (inv!406 thiss!746) e!6671)))

(declare-fun b!12107 () Bool)

(assert (=> b!12107 (= e!6671 (dynLambda!504 (evidence!204 thiss!746)))))

(assert (= (and d!9303 res!4488) b!12107))

(declare-fun b_lambda!6505 () Bool)

(assert (=> (not b_lambda!6505) (not d!9303)))

(declare-fun t!3643 () Bool)

(declare-fun tb!3303 () Bool)

(assert (=> (and b!12064 (= (x!6925 thiss!746) (x!6925 thiss!746)) t!3643) tb!3303))

(declare-fun result!3355 () Bool)

(assert (=> tb!3303 (= result!3355 true)))

(assert (=> d!9303 t!3643))

(declare-fun b_and!6273 () Bool)

(assert (= b_and!6249 (and (=> t!3643 result!3355) b_and!6273)))

(declare-fun t!3645 () Bool)

(declare-fun tb!3305 () Bool)

(assert (=> (and b!12064 (= (y!661 thiss!746) (x!6925 thiss!746)) t!3645) tb!3305))

(declare-fun result!3357 () Bool)

(assert (=> tb!3305 (= result!3357 true)))

(assert (=> d!9303 t!3645))

(declare-fun b_and!6275 () Bool)

(assert (= b_and!6251 (and (=> t!3645 result!3357) b_and!6275)))

(declare-fun t!3647 () Bool)

(declare-fun tb!3307 () Bool)

(assert (=> (and b!12069 (= (x!6926 thiss!766) (x!6925 thiss!746)) t!3647) tb!3307))

(declare-fun result!3359 () Bool)

(assert (=> tb!3307 (= result!3359 true)))

(assert (=> d!9303 t!3647))

(declare-fun b_and!6277 () Bool)

(assert (= b_and!6255 (and (=> t!3647 result!3359) b_and!6277)))

(declare-fun t!3649 () Bool)

(declare-fun tb!3309 () Bool)

(assert (=> (and b!12069 (= (y!662 thiss!766) (x!6925 thiss!746)) t!3649) tb!3309))

(declare-fun result!3361 () Bool)

(assert (=> tb!3309 (= result!3361 true)))

(assert (=> d!9303 t!3649))

(declare-fun b_and!6279 () Bool)

(assert (= b_and!6257 (and (=> t!3649 result!3361) b_and!6279)))

(declare-fun b_lambda!6507 () Bool)

(assert (=> (not b_lambda!6507) (not d!9303)))

(declare-fun t!3651 () Bool)

(declare-fun tb!3311 () Bool)

(assert (=> (and b!12064 (= (x!6925 thiss!746) (y!661 thiss!746)) t!3651) tb!3311))

(declare-fun result!3363 () Bool)

(assert (=> tb!3311 (= result!3363 true)))

(assert (=> d!9303 t!3651))

(declare-fun b_and!6281 () Bool)

(assert (= b_and!6273 (and (=> t!3651 result!3363) b_and!6281)))

(declare-fun t!3653 () Bool)

(declare-fun tb!3313 () Bool)

(assert (=> (and b!12064 (= (y!661 thiss!746) (y!661 thiss!746)) t!3653) tb!3313))

(declare-fun result!3365 () Bool)

(assert (=> tb!3313 (= result!3365 true)))

(assert (=> d!9303 t!3653))

(declare-fun b_and!6283 () Bool)

(assert (= b_and!6275 (and (=> t!3653 result!3365) b_and!6283)))

(declare-fun tb!3315 () Bool)

(declare-fun t!3655 () Bool)

(assert (=> (and b!12069 (= (x!6926 thiss!766) (y!661 thiss!746)) t!3655) tb!3315))

(declare-fun result!3367 () Bool)

(assert (=> tb!3315 (= result!3367 true)))

(assert (=> d!9303 t!3655))

(declare-fun b_and!6285 () Bool)

(assert (= b_and!6277 (and (=> t!3655 result!3367) b_and!6285)))

(declare-fun t!3657 () Bool)

(declare-fun tb!3317 () Bool)

(assert (=> (and b!12069 (= (y!662 thiss!766) (y!661 thiss!746)) t!3657) tb!3317))

(declare-fun result!3369 () Bool)

(assert (=> tb!3317 (= result!3369 true)))

(assert (=> d!9303 t!3657))

(declare-fun b_and!6287 () Bool)

(assert (= b_and!6279 (and (=> t!3657 result!3369) b_and!6287)))

(declare-fun b_lambda!6509 () Bool)

(assert (=> (not b_lambda!6509) (not b!12107)))

(declare-fun tb!3319 () Bool)

(declare-fun t!3659 () Bool)

(assert (=> (and start!2416 (= proof!211 (evidence!204 thiss!746)) t!3659) tb!3319))

(declare-fun result!3371 () Bool)

(assert (=> tb!3319 (= result!3371 true)))

(assert (=> b!12107 t!3659))

(declare-fun b_and!6289 () Bool)

(assert (= b_and!6259 (and (=> t!3659 result!3371) b_and!6289)))

(declare-fun t!3661 () Bool)

(declare-fun tb!3321 () Bool)

(assert (=> (and b!12064 (= (evidence!204 thiss!746) (evidence!204 thiss!746)) t!3661) tb!3321))

(declare-fun result!3373 () Bool)

(assert (=> tb!3321 (= result!3373 true)))

(assert (=> b!12107 t!3661))

(declare-fun b_and!6291 () Bool)

(assert (= b_and!6261 (and (=> t!3661 result!3373) b_and!6291)))

(declare-fun m!15029 () Bool)

(assert (=> d!9303 m!15029))

(declare-fun m!15031 () Bool)

(assert (=> d!9303 m!15031))

(declare-fun m!15033 () Bool)

(assert (=> b!12107 m!15033))

(assert (=> start!2416 d!9303))

(declare-fun d!9305 () Bool)

(assert (=> d!9305 (= (inv!407 thiss!766) (= (dynLambda!506 (x!6926 thiss!766)) (dynLambda!506 (y!662 thiss!766))))))

(declare-fun b_lambda!6511 () Bool)

(assert (=> (not b_lambda!6511) (not d!9305)))

(declare-fun tb!3323 () Bool)

(declare-fun t!3663 () Bool)

(assert (=> (and b!12064 (= (x!6925 thiss!746) (x!6926 thiss!766)) t!3663) tb!3323))

(declare-fun result!3375 () Bool)

(assert (=> tb!3323 (= result!3375 true)))

(assert (=> d!9305 t!3663))

(declare-fun b_and!6293 () Bool)

(assert (= b_and!6281 (and (=> t!3663 result!3375) b_and!6293)))

(declare-fun t!3665 () Bool)

(declare-fun tb!3325 () Bool)

(assert (=> (and b!12064 (= (y!661 thiss!746) (x!6926 thiss!766)) t!3665) tb!3325))

(declare-fun result!3377 () Bool)

(assert (=> tb!3325 (= result!3377 true)))

(assert (=> d!9305 t!3665))

(declare-fun b_and!6295 () Bool)

(assert (= b_and!6283 (and (=> t!3665 result!3377) b_and!6295)))

(declare-fun t!3667 () Bool)

(declare-fun tb!3327 () Bool)

(assert (=> (and b!12069 (= (x!6926 thiss!766) (x!6926 thiss!766)) t!3667) tb!3327))

(declare-fun result!3379 () Bool)

(assert (=> tb!3327 (= result!3379 true)))

(assert (=> d!9305 t!3667))

(declare-fun b_and!6297 () Bool)

(assert (= b_and!6285 (and (=> t!3667 result!3379) b_and!6297)))

(declare-fun t!3669 () Bool)

(declare-fun tb!3329 () Bool)

(assert (=> (and b!12069 (= (y!662 thiss!766) (x!6926 thiss!766)) t!3669) tb!3329))

(declare-fun result!3381 () Bool)

(assert (=> tb!3329 (= result!3381 true)))

(assert (=> d!9305 t!3669))

(declare-fun b_and!6299 () Bool)

(assert (= b_and!6287 (and (=> t!3669 result!3381) b_and!6299)))

(declare-fun b_lambda!6513 () Bool)

(assert (=> (not b_lambda!6513) (not d!9305)))

(declare-fun tb!3331 () Bool)

(declare-fun t!3671 () Bool)

(assert (=> (and b!12064 (= (x!6925 thiss!746) (y!662 thiss!766)) t!3671) tb!3331))

(declare-fun result!3383 () Bool)

(assert (=> tb!3331 (= result!3383 true)))

(assert (=> d!9305 t!3671))

(declare-fun b_and!6301 () Bool)

(assert (= b_and!6293 (and (=> t!3671 result!3383) b_and!6301)))

(declare-fun tb!3333 () Bool)

(declare-fun t!3673 () Bool)

(assert (=> (and b!12064 (= (y!661 thiss!746) (y!662 thiss!766)) t!3673) tb!3333))

(declare-fun result!3385 () Bool)

(assert (=> tb!3333 (= result!3385 true)))

(assert (=> d!9305 t!3673))

(declare-fun b_and!6303 () Bool)

(assert (= b_and!6295 (and (=> t!3673 result!3385) b_and!6303)))

(declare-fun t!3675 () Bool)

(declare-fun tb!3335 () Bool)

(assert (=> (and b!12069 (= (x!6926 thiss!766) (y!662 thiss!766)) t!3675) tb!3335))

(declare-fun result!3387 () Bool)

(assert (=> tb!3335 (= result!3387 true)))

(assert (=> d!9305 t!3675))

(declare-fun b_and!6305 () Bool)

(assert (= b_and!6297 (and (=> t!3675 result!3387) b_and!6305)))

(declare-fun t!3677 () Bool)

(declare-fun tb!3337 () Bool)

(assert (=> (and b!12069 (= (y!662 thiss!766) (y!662 thiss!766)) t!3677) tb!3337))

(declare-fun result!3389 () Bool)

(assert (=> tb!3337 (= result!3389 true)))

(assert (=> d!9305 t!3677))

(declare-fun b_and!6307 () Bool)

(assert (= b_and!6299 (and (=> t!3677 result!3389) b_and!6307)))

(declare-fun m!15035 () Bool)

(assert (=> d!9305 m!15035))

(declare-fun m!15037 () Bool)

(assert (=> d!9305 m!15037))

(assert (=> start!2416 d!9305))

(declare-fun b_lambda!6515 () Bool)

(assert (= b_lambda!6499 (or (and b!12067 (= lambda!3263 f!539)) (and d!9287 (= lambda!3272 f!539)) (and start!2416 b_free!1809) b_lambda!6515)))

(declare-fun bs!3114 () Bool)

(declare-fun d!9307 () Bool)

(assert (= bs!3114 (and d!9307 b!12067)))

(assert (=> bs!3114 (= (dynLambda!505 lambda!3263 (head!500 ys!54) (foldRight1!115 (tail!512 ys!54) f!539)) (++!3 (head!500 ys!54) (foldRight1!115 (tail!512 ys!54) f!539)))))

(assert (=> bs!3114 m!15019))

(declare-fun m!15039 () Bool)

(assert (=> bs!3114 m!15039))

(assert (=> (and b!12067 (= lambda!3263 f!539) b!12094) d!9307))

(declare-fun bs!3115 () Bool)

(declare-fun d!9309 () Bool)

(assert (= bs!3115 (and d!9309 d!9287)))

(assert (=> bs!3115 (= (dynLambda!505 lambda!3272 (head!500 ys!54) (foldRight1!115 (tail!512 ys!54) f!539)) (++!3 (head!500 ys!54) (foldRight1!115 (tail!512 ys!54) f!539)))))

(assert (=> bs!3115 m!15019))

(assert (=> bs!3115 m!15039))

(assert (=> (and d!9287 (= lambda!3272 f!539) b!12094) d!9309))

(declare-fun b_lambda!6517 () Bool)

(assert (= b_lambda!6507 (or (and b!12064 b_free!1813) (and b!12070 (= lambda!3264 (y!661 thiss!746))) (and b!12069 b_free!1819 (= (y!662 thiss!766) (y!661 thiss!746))) (and b!12069 b_free!1817 (= (x!6926 thiss!766) (y!661 thiss!746))) (and b!12062 (= lambda!3268 (y!661 thiss!746))) (and b!12070 (= lambda!3266 (y!661 thiss!746))) (and b!12064 b_free!1811 (= (x!6925 thiss!746) (y!661 thiss!746))) b_lambda!6517)))

(declare-fun bs!3116 () Bool)

(declare-fun d!9311 () Bool)

(assert (= bs!3116 (and d!9311 b!12070)))

(declare-fun dynLambda!507 (Int Balance!347) Balance!347)

(assert (=> bs!3116 (= (dynLambda!506 lambda!3266) (dynLambda!505 f!539 (dynLambda!507 lambda!3265 (foldRight1!115 (tail!512 xs!292) f!539)) (foldRight1!115 ys!54 f!539)))))

(declare-fun b_lambda!6533 () Bool)

(assert (=> (not b_lambda!6533) (not bs!3116)))

(declare-fun t!3679 () Bool)

(declare-fun tb!3339 () Bool)

(assert (=> (and start!2416 (= f!539 f!539) t!3679) tb!3339))

(declare-fun result!3391 () Bool)

(assert (=> tb!3339 (= result!3391 true)))

(assert (=> bs!3116 t!3679))

(declare-fun b_and!6309 () Bool)

(assert (= b_and!6271 (and (=> t!3679 result!3391) b_and!6309)))

(declare-fun b_lambda!6535 () Bool)

(assert (=> (not b_lambda!6535) (not bs!3116)))

(assert (=> bs!3116 m!14983))

(assert (=> bs!3116 m!14983))

(declare-fun m!15041 () Bool)

(assert (=> bs!3116 m!15041))

(assert (=> bs!3116 m!14971))

(assert (=> bs!3116 m!15041))

(assert (=> bs!3116 m!14971))

(declare-fun m!15043 () Bool)

(assert (=> bs!3116 m!15043))

(assert (=> (and b!12070 (= lambda!3266 (y!661 thiss!746)) d!9303) d!9311))

(declare-fun bs!3117 () Bool)

(declare-fun d!9313 () Bool)

(assert (= bs!3117 (and d!9313 b!12070)))

(assert (=> bs!3117 (= (dynLambda!506 lambda!3264) (dynLambda!505 f!539 (foldRight1!115 xs!292 f!539) (foldRight1!115 ys!54 f!539)))))

(declare-fun b_lambda!6537 () Bool)

(assert (=> (not b_lambda!6537) (not bs!3117)))

(assert (=> bs!3117 t!3633))

(declare-fun b_and!6311 () Bool)

(assert (= b_and!6309 (and (=> t!3633 result!3345) b_and!6311)))

(assert (=> bs!3117 m!14969))

(assert (=> bs!3117 m!14971))

(assert (=> bs!3117 m!14969))

(assert (=> bs!3117 m!14971))

(assert (=> bs!3117 m!14973))

(assert (=> (and b!12070 (= lambda!3264 (y!661 thiss!746)) d!9303) d!9313))

(declare-fun bs!3118 () Bool)

(declare-fun d!9315 () Bool)

(assert (= bs!3118 (and d!9315 b!12062)))

(assert (=> bs!3118 (= (dynLambda!506 lambda!3268) (dynLambda!505 f!539 (head!500 xs!292) (dynLambda!505 f!539 (foldRight1!115 (tail!512 xs!292) f!539) (foldRight1!115 ys!54 f!539))))))

(declare-fun b_lambda!6539 () Bool)

(assert (=> (not b_lambda!6539) (not bs!3118)))

(declare-fun t!3681 () Bool)

(declare-fun tb!3341 () Bool)

(assert (=> (and start!2416 (= f!539 f!539) t!3681) tb!3341))

(declare-fun result!3393 () Bool)

(assert (=> tb!3341 (= result!3393 true)))

(assert (=> bs!3118 t!3681))

(declare-fun b_and!6313 () Bool)

(assert (= b_and!6311 (and (=> t!3681 result!3393) b_and!6313)))

(declare-fun b_lambda!6541 () Bool)

(assert (=> (not b_lambda!6541) (not bs!3118)))

(declare-fun t!3683 () Bool)

(declare-fun tb!3343 () Bool)

(assert (=> (and start!2416 (= f!539 f!539) t!3683) tb!3343))

(declare-fun result!3395 () Bool)

(assert (=> tb!3343 (= result!3395 true)))

(assert (=> bs!3118 t!3683))

(declare-fun b_and!6315 () Bool)

(assert (= b_and!6313 (and (=> t!3683 result!3395) b_and!6315)))

(assert (=> bs!3118 m!14983))

(declare-fun m!15045 () Bool)

(assert (=> bs!3118 m!15045))

(declare-fun m!15047 () Bool)

(assert (=> bs!3118 m!15047))

(assert (=> bs!3118 m!14971))

(assert (=> bs!3118 m!14983))

(assert (=> bs!3118 m!14971))

(assert (=> bs!3118 m!15045))

(assert (=> (and b!12062 (= lambda!3268 (y!661 thiss!746)) d!9303) d!9315))

(declare-fun b_lambda!6519 () Bool)

(assert (= b_lambda!6501 (or (and b!12067 (= lambda!3263 f!539)) (and d!9287 (= lambda!3272 f!539)) (and start!2416 b_free!1809) b_lambda!6519)))

(declare-fun bs!3119 () Bool)

(declare-fun d!9317 () Bool)

(assert (= bs!3119 (and d!9317 b!12067)))

(assert (=> bs!3119 (= (dynLambda!505 lambda!3263 (head!500 xs!292) (foldRight1!115 (tail!512 xs!292) f!539)) (++!3 (head!500 xs!292) (foldRight1!115 (tail!512 xs!292) f!539)))))

(assert (=> bs!3119 m!14983))

(assert (=> bs!3119 m!15011))

(assert (=> (and b!12067 (= lambda!3263 f!539) b!12096) d!9317))

(declare-fun bs!3120 () Bool)

(declare-fun d!9319 () Bool)

(assert (= bs!3120 (and d!9319 d!9287)))

(assert (=> bs!3120 (= (dynLambda!505 lambda!3272 (head!500 xs!292) (foldRight1!115 (tail!512 xs!292) f!539)) (++!3 (head!500 xs!292) (foldRight1!115 (tail!512 xs!292) f!539)))))

(assert (=> bs!3120 m!14983))

(assert (=> bs!3120 m!15011))

(assert (=> (and d!9287 (= lambda!3272 f!539) b!12096) d!9319))

(declare-fun b_lambda!6521 () Bool)

(assert (= b_lambda!6497 (or (and b!12067 (= lambda!3263 f!539)) (and d!9287 (= lambda!3272 f!539)) (and start!2416 b_free!1809) b_lambda!6521)))

(declare-fun bs!3121 () Bool)

(declare-fun d!9321 () Bool)

(assert (= bs!3121 (and d!9321 b!12067)))

(assert (=> bs!3121 (= (dynLambda!505 lambda!3263 (head!500 (tail!512 xs!292)) (foldRight1!115 (tail!512 (tail!512 xs!292)) f!539)) (++!3 (head!500 (tail!512 xs!292)) (foldRight1!115 (tail!512 (tail!512 xs!292)) f!539)))))

(assert (=> bs!3121 m!15015))

(declare-fun m!15049 () Bool)

(assert (=> bs!3121 m!15049))

(assert (=> (and b!12067 (= lambda!3263 f!539) b!12092) d!9321))

(declare-fun bs!3122 () Bool)

(declare-fun d!9323 () Bool)

(assert (= bs!3122 (and d!9323 d!9287)))

(assert (=> bs!3122 (= (dynLambda!505 lambda!3272 (head!500 (tail!512 xs!292)) (foldRight1!115 (tail!512 (tail!512 xs!292)) f!539)) (++!3 (head!500 (tail!512 xs!292)) (foldRight1!115 (tail!512 (tail!512 xs!292)) f!539)))))

(assert (=> bs!3122 m!15015))

(assert (=> bs!3122 m!15049))

(assert (=> (and d!9287 (= lambda!3272 f!539) b!12092) d!9323))

(declare-fun b_lambda!6523 () Bool)

(assert (= b_lambda!6503 (or (and b!12067 (= lambda!3263 f!539)) (and d!9287 (= lambda!3272 f!539)) (and start!2416 b_free!1809) b_lambda!6523)))

(declare-fun bs!3123 () Bool)

(declare-fun d!9325 () Bool)

(assert (= bs!3123 (and d!9325 b!12067)))

(assert (=> bs!3123 (= (dynLambda!505 lambda!3263 (head!500 (append!134 xs!292 ys!54)) (foldRight1!115 (tail!512 (append!134 xs!292 ys!54)) f!539)) (++!3 (head!500 (append!134 xs!292 ys!54)) (foldRight1!115 (tail!512 (append!134 xs!292 ys!54)) f!539)))))

(assert (=> bs!3123 m!15025))

(declare-fun m!15051 () Bool)

(assert (=> bs!3123 m!15051))

(assert (=> (and b!12067 (= lambda!3263 f!539) b!12098) d!9325))

(declare-fun bs!3124 () Bool)

(declare-fun d!9327 () Bool)

(assert (= bs!3124 (and d!9327 d!9287)))

(assert (=> bs!3124 (= (dynLambda!505 lambda!3272 (head!500 (append!134 xs!292 ys!54)) (foldRight1!115 (tail!512 (append!134 xs!292 ys!54)) f!539)) (++!3 (head!500 (append!134 xs!292 ys!54)) (foldRight1!115 (tail!512 (append!134 xs!292 ys!54)) f!539)))))

(assert (=> bs!3124 m!15025))

(assert (=> bs!3124 m!15051))

(assert (=> (and d!9287 (= lambda!3272 f!539) b!12098) d!9327))

(declare-fun b_lambda!6525 () Bool)

(assert (= b_lambda!6511 (or (and b!12064 b_free!1811 (= (x!6925 thiss!746) (x!6926 thiss!766))) (and b!12062 (= lambda!3268 (x!6926 thiss!766))) (and b!12070 (= lambda!3266 (x!6926 thiss!766))) (and b!12069 b_free!1817) (and b!12064 b_free!1813 (= (y!661 thiss!746) (x!6926 thiss!766))) (and b!12069 b_free!1819 (= (y!662 thiss!766) (x!6926 thiss!766))) (and b!12070 (= lambda!3264 (x!6926 thiss!766))) b_lambda!6525)))

(declare-fun bs!3125 () Bool)

(declare-fun d!9329 () Bool)

(assert (= bs!3125 (and d!9329 b!12070)))

(assert (=> bs!3125 (= (dynLambda!506 lambda!3264) (dynLambda!505 f!539 (foldRight1!115 xs!292 f!539) (foldRight1!115 ys!54 f!539)))))

(declare-fun b_lambda!6543 () Bool)

(assert (=> (not b_lambda!6543) (not bs!3125)))

(assert (=> bs!3125 t!3633))

(declare-fun b_and!6317 () Bool)

(assert (= b_and!6315 (and (=> t!3633 result!3345) b_and!6317)))

(assert (=> bs!3125 m!14969))

(assert (=> bs!3125 m!14971))

(assert (=> bs!3125 m!14969))

(assert (=> bs!3125 m!14971))

(assert (=> bs!3125 m!14973))

(assert (=> (and b!12070 (= lambda!3264 (x!6926 thiss!766)) d!9305) d!9329))

(declare-fun bs!3126 () Bool)

(declare-fun d!9331 () Bool)

(assert (= bs!3126 (and d!9331 b!12062)))

(assert (=> bs!3126 (= (dynLambda!506 lambda!3268) (dynLambda!505 f!539 (head!500 xs!292) (dynLambda!505 f!539 (foldRight1!115 (tail!512 xs!292) f!539) (foldRight1!115 ys!54 f!539))))))

(declare-fun b_lambda!6545 () Bool)

(assert (=> (not b_lambda!6545) (not bs!3126)))

(assert (=> bs!3126 t!3681))

(declare-fun b_and!6319 () Bool)

(assert (= b_and!6317 (and (=> t!3681 result!3393) b_and!6319)))

(declare-fun b_lambda!6547 () Bool)

(assert (=> (not b_lambda!6547) (not bs!3126)))

(assert (=> bs!3126 t!3683))

(declare-fun b_and!6321 () Bool)

(assert (= b_and!6319 (and (=> t!3683 result!3395) b_and!6321)))

(assert (=> bs!3126 m!14983))

(assert (=> bs!3126 m!15045))

(assert (=> bs!3126 m!15047))

(assert (=> bs!3126 m!14971))

(assert (=> bs!3126 m!14983))

(assert (=> bs!3126 m!14971))

(assert (=> bs!3126 m!15045))

(assert (=> (and b!12062 (= lambda!3268 (x!6926 thiss!766)) d!9305) d!9331))

(declare-fun bs!3127 () Bool)

(declare-fun d!9333 () Bool)

(assert (= bs!3127 (and d!9333 b!12070)))

(assert (=> bs!3127 (= (dynLambda!506 lambda!3266) (dynLambda!505 f!539 (dynLambda!507 lambda!3265 (foldRight1!115 (tail!512 xs!292) f!539)) (foldRight1!115 ys!54 f!539)))))

(declare-fun b_lambda!6549 () Bool)

(assert (=> (not b_lambda!6549) (not bs!3127)))

(assert (=> bs!3127 t!3679))

(declare-fun b_and!6323 () Bool)

(assert (= b_and!6321 (and (=> t!3679 result!3391) b_and!6323)))

(declare-fun b_lambda!6551 () Bool)

(assert (=> (not b_lambda!6551) (not bs!3127)))

(assert (=> bs!3127 m!14983))

(assert (=> bs!3127 m!14983))

(assert (=> bs!3127 m!15041))

(assert (=> bs!3127 m!14971))

(assert (=> bs!3127 m!15041))

(assert (=> bs!3127 m!14971))

(assert (=> bs!3127 m!15043))

(assert (=> (and b!12070 (= lambda!3266 (x!6926 thiss!766)) d!9305) d!9333))

(declare-fun b_lambda!6527 () Bool)

(assert (= b_lambda!6505 (or (and b!12069 b_free!1817 (= (x!6926 thiss!766) (x!6925 thiss!746))) (and b!12064 b_free!1811) (and b!12070 (= lambda!3266 (x!6925 thiss!746))) (and b!12070 (= lambda!3264 (x!6925 thiss!746))) (and b!12064 b_free!1813 (= (y!661 thiss!746) (x!6925 thiss!746))) (and b!12062 (= lambda!3268 (x!6925 thiss!746))) (and b!12069 b_free!1819 (= (y!662 thiss!766) (x!6925 thiss!746))) b_lambda!6527)))

(declare-fun bs!3128 () Bool)

(declare-fun d!9335 () Bool)

(assert (= bs!3128 (and d!9335 b!12070)))

(assert (=> bs!3128 (= (dynLambda!506 lambda!3264) (dynLambda!505 f!539 (foldRight1!115 xs!292 f!539) (foldRight1!115 ys!54 f!539)))))

(declare-fun b_lambda!6553 () Bool)

(assert (=> (not b_lambda!6553) (not bs!3128)))

(assert (=> bs!3128 t!3633))

(declare-fun b_and!6325 () Bool)

(assert (= b_and!6323 (and (=> t!3633 result!3345) b_and!6325)))

(assert (=> bs!3128 m!14969))

(assert (=> bs!3128 m!14971))

(assert (=> bs!3128 m!14969))

(assert (=> bs!3128 m!14971))

(assert (=> bs!3128 m!14973))

(assert (=> (and b!12070 (= lambda!3264 (x!6925 thiss!746)) d!9303) d!9335))

(declare-fun bs!3129 () Bool)

(declare-fun d!9337 () Bool)

(assert (= bs!3129 (and d!9337 b!12062)))

(assert (=> bs!3129 (= (dynLambda!506 lambda!3268) (dynLambda!505 f!539 (head!500 xs!292) (dynLambda!505 f!539 (foldRight1!115 (tail!512 xs!292) f!539) (foldRight1!115 ys!54 f!539))))))

(declare-fun b_lambda!6555 () Bool)

(assert (=> (not b_lambda!6555) (not bs!3129)))

(assert (=> bs!3129 t!3681))

(declare-fun b_and!6327 () Bool)

(assert (= b_and!6325 (and (=> t!3681 result!3393) b_and!6327)))

(declare-fun b_lambda!6557 () Bool)

(assert (=> (not b_lambda!6557) (not bs!3129)))

(assert (=> bs!3129 t!3683))

(declare-fun b_and!6329 () Bool)

(assert (= b_and!6327 (and (=> t!3683 result!3395) b_and!6329)))

(assert (=> bs!3129 m!14983))

(assert (=> bs!3129 m!15045))

(assert (=> bs!3129 m!15047))

(assert (=> bs!3129 m!14971))

(assert (=> bs!3129 m!14983))

(assert (=> bs!3129 m!14971))

(assert (=> bs!3129 m!15045))

(assert (=> (and b!12062 (= lambda!3268 (x!6925 thiss!746)) d!9303) d!9337))

(declare-fun bs!3130 () Bool)

(declare-fun d!9339 () Bool)

(assert (= bs!3130 (and d!9339 b!12070)))

(assert (=> bs!3130 (= (dynLambda!506 lambda!3266) (dynLambda!505 f!539 (dynLambda!507 lambda!3265 (foldRight1!115 (tail!512 xs!292) f!539)) (foldRight1!115 ys!54 f!539)))))

(declare-fun b_lambda!6559 () Bool)

(assert (=> (not b_lambda!6559) (not bs!3130)))

(assert (=> bs!3130 t!3679))

(declare-fun b_and!6331 () Bool)

(assert (= b_and!6329 (and (=> t!3679 result!3391) b_and!6331)))

(declare-fun b_lambda!6561 () Bool)

(assert (=> (not b_lambda!6561) (not bs!3130)))

(assert (=> bs!3130 m!14983))

(assert (=> bs!3130 m!14983))

(assert (=> bs!3130 m!15041))

(assert (=> bs!3130 m!14971))

(assert (=> bs!3130 m!15041))

(assert (=> bs!3130 m!14971))

(assert (=> bs!3130 m!15043))

(assert (=> (and b!12070 (= lambda!3266 (x!6925 thiss!746)) d!9303) d!9339))

(declare-fun b_lambda!6529 () Bool)

(assert (= b_lambda!6513 (or (and b!12062 (= lambda!3268 (y!662 thiss!766))) (and b!12064 b_free!1813 (= (y!661 thiss!746) (y!662 thiss!766))) (and b!12064 b_free!1811 (= (x!6925 thiss!746) (y!662 thiss!766))) (and b!12070 (= lambda!3266 (y!662 thiss!766))) (and b!12069 b_free!1819) (and b!12070 (= lambda!3264 (y!662 thiss!766))) (and b!12069 b_free!1817 (= (x!6926 thiss!766) (y!662 thiss!766))) b_lambda!6529)))

(declare-fun bs!3131 () Bool)

(declare-fun d!9341 () Bool)

(assert (= bs!3131 (and d!9341 b!12062)))

(assert (=> bs!3131 (= (dynLambda!506 lambda!3268) (dynLambda!505 f!539 (head!500 xs!292) (dynLambda!505 f!539 (foldRight1!115 (tail!512 xs!292) f!539) (foldRight1!115 ys!54 f!539))))))

(declare-fun b_lambda!6563 () Bool)

(assert (=> (not b_lambda!6563) (not bs!3131)))

(assert (=> bs!3131 t!3681))

(declare-fun b_and!6333 () Bool)

(assert (= b_and!6331 (and (=> t!3681 result!3393) b_and!6333)))

(declare-fun b_lambda!6565 () Bool)

(assert (=> (not b_lambda!6565) (not bs!3131)))

(assert (=> bs!3131 t!3683))

(declare-fun b_and!6335 () Bool)

(assert (= b_and!6333 (and (=> t!3683 result!3395) b_and!6335)))

(assert (=> bs!3131 m!14983))

(assert (=> bs!3131 m!15045))

(assert (=> bs!3131 m!15047))

(assert (=> bs!3131 m!14971))

(assert (=> bs!3131 m!14983))

(assert (=> bs!3131 m!14971))

(assert (=> bs!3131 m!15045))

(assert (=> (and b!12062 (= lambda!3268 (y!662 thiss!766)) d!9305) d!9341))

(declare-fun bs!3132 () Bool)

(declare-fun d!9343 () Bool)

(assert (= bs!3132 (and d!9343 b!12070)))

(assert (=> bs!3132 (= (dynLambda!506 lambda!3264) (dynLambda!505 f!539 (foldRight1!115 xs!292 f!539) (foldRight1!115 ys!54 f!539)))))

(declare-fun b_lambda!6567 () Bool)

(assert (=> (not b_lambda!6567) (not bs!3132)))

(assert (=> bs!3132 t!3633))

(declare-fun b_and!6337 () Bool)

(assert (= b_and!6335 (and (=> t!3633 result!3345) b_and!6337)))

(assert (=> bs!3132 m!14969))

(assert (=> bs!3132 m!14971))

(assert (=> bs!3132 m!14969))

(assert (=> bs!3132 m!14971))

(assert (=> bs!3132 m!14973))

(assert (=> (and b!12070 (= lambda!3264 (y!662 thiss!766)) d!9305) d!9343))

(declare-fun bs!3133 () Bool)

(declare-fun d!9345 () Bool)

(assert (= bs!3133 (and d!9345 b!12070)))

(assert (=> bs!3133 (= (dynLambda!506 lambda!3266) (dynLambda!505 f!539 (dynLambda!507 lambda!3265 (foldRight1!115 (tail!512 xs!292) f!539)) (foldRight1!115 ys!54 f!539)))))

(declare-fun b_lambda!6569 () Bool)

(assert (=> (not b_lambda!6569) (not bs!3133)))

(assert (=> bs!3133 t!3679))

(declare-fun b_and!6339 () Bool)

(assert (= b_and!6337 (and (=> t!3679 result!3391) b_and!6339)))

(declare-fun b_lambda!6571 () Bool)

(assert (=> (not b_lambda!6571) (not bs!3133)))

(assert (=> bs!3133 m!14983))

(assert (=> bs!3133 m!14983))

(assert (=> bs!3133 m!15041))

(assert (=> bs!3133 m!14971))

(assert (=> bs!3133 m!15041))

(assert (=> bs!3133 m!14971))

(assert (=> bs!3133 m!15043))

(assert (=> (and b!12070 (= lambda!3266 (y!662 thiss!766)) d!9305) d!9345))

(declare-fun b_lambda!6531 () Bool)

(assert (= b_lambda!6509 (or (and b!12070 (= lambda!3267 (evidence!204 thiss!746))) (and b!12066 (= lambda!3269 (evidence!204 thiss!746))) (and start!2416 b_free!1807 (= proof!211 (evidence!204 thiss!746))) (and b!12064 b_free!1815) b_lambda!6531)))

(declare-fun bs!3134 () Bool)

(declare-fun d!9347 () Bool)

(assert (= bs!3134 (and d!9347 b!12070)))

(assert (=> bs!3134 (= (dynLambda!504 lambda!3267) (append_is_associative!0 (head!500 xs!292) (foldRight1!115 (tail!512 xs!292) f!539) (foldRight1!115 ys!54 f!539)))))

(assert (=> bs!3134 m!14983))

(assert (=> bs!3134 m!14971))

(assert (=> bs!3134 m!14983))

(assert (=> bs!3134 m!14971))

(assert (=> bs!3134 m!14985))

(assert (=> (and b!12070 (= lambda!3267 (evidence!204 thiss!746)) b!12107) d!9347))

(declare-fun bs!3135 () Bool)

(declare-fun d!9349 () Bool)

(assert (= bs!3135 (and d!9349 b!12066)))

(assert (=> bs!3135 (= (dynLambda!504 lambda!3269) (append!24 (tail!512 xs!292) ys!54))))

(assert (=> bs!3135 m!14987))

(assert (=> (and b!12066 (= lambda!3269 (evidence!204 thiss!746)) b!12107) d!9349))

(push 1)

(assert (not bs!3123))

(assert (not bs!3131))

(assert (not b_next!4315))

(assert (not b!12092))

(assert (not b!12098))

(assert (not b_lambda!6551))

(assert (not b_lambda!6565))

(assert (not b_next!4311))

(assert b_and!6301)

(assert (not b_lambda!6533))

(assert b_and!6303)

(assert (not b_next!4317))

(assert (not bs!3130))

(assert (not b_next!4309))

(assert (not b_next!4313))

(assert (not b!12104))

(assert (not b_lambda!6553))

(assert (not b_lambda!6569))

(assert (not bs!3132))

(assert (not bs!3127))

(assert (not b_lambda!6535))

(assert (not b_next!4305))

(assert (not b_lambda!6571))

(assert (not b_next!4307))

(assert (not b_lambda!6525))

(assert (not b_lambda!6521))

(assert (not b_lambda!6567))

(assert b_and!6307)

(assert (not bs!3133))

(assert (not b!12094))

(assert (not bs!3122))

(assert (not bs!3118))

(assert (not b_lambda!6541))

(assert (not d!9285))

(assert (not b_lambda!6537))

(assert (not b_lambda!6517))

(assert (not d!9289))

(assert (not b_lambda!6519))

(assert b_and!6305)

(assert (not b_lambda!6543))

(assert (not bs!3121))

(assert (not b_lambda!6539))

(assert (not b_lambda!6515))

(assert (not b_lambda!6523))

(assert (not b_lambda!6493))

(assert (not b_lambda!6549))

(assert (not bs!3135))

(assert (not b_lambda!6527))

(assert (not bs!3129))

(assert b_and!6339)

(assert (not bs!3126))

(assert (not b_lambda!6555))

(assert (not b_lambda!6529))

(assert (not bs!3119))

(assert (not bs!3134))

(assert (not bs!3115))

(assert (not b!12096))

(assert (not b_lambda!6545))

(assert (not b_lambda!6559))

(assert (not bs!3117))

(assert (not b_lambda!6557))

(assert b_and!6289)

(assert (not bs!3120))

(assert (not bs!3128))

(assert (not b_lambda!6547))

(assert (not bs!3124))

(assert (not d!9287))

(assert (not b_lambda!6531))

(assert (not b_lambda!6561))

(assert (not b_lambda!6495))

(assert (not bs!3116))

(assert (not bs!3125))

(assert (not b!12085))

(assert (not bs!3114))

(assert (not b_lambda!6563))

(assert b_and!6291)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4315))

(assert (not b_next!4311))

(assert b_and!6301)

(assert b_and!6303)

(assert (not b_next!4317))

(assert (not b_next!4309))

(assert (not b_next!4313))

(assert (not b_next!4305))

(assert (not b_next!4307))

(assert b_and!6307)

(assert b_and!6305)

(assert b_and!6339)

(assert b_and!6289)

(assert b_and!6291)

(check-sat)

(pop 1)


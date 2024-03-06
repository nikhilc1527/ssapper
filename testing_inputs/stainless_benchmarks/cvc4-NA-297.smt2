; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2262 () Bool)

(assert start!2262)

(declare-fun b_free!1535 () Bool)

(declare-fun b_next!3697 () Bool)

(assert (=> start!2262 (= b_free!1535 (not b_next!3697))))

(declare-fun tp!2470 () Bool)

(declare-fun b_and!5349 () Bool)

(assert (=> start!2262 (= tp!2470 b_and!5349)))

(declare-fun b_free!1537 () Bool)

(declare-fun b_next!3699 () Bool)

(assert (=> start!2262 (= b_free!1537 (not b_next!3699))))

(declare-fun tp!2467 () Bool)

(declare-fun b_and!5351 () Bool)

(assert (=> start!2262 (= tp!2467 b_and!5351)))

(declare-fun b!11296 () Bool)

(declare-fun b_free!1539 () Bool)

(declare-fun b_next!3701 () Bool)

(assert (=> b!11296 (= b_free!1539 (not b_next!3701))))

(declare-fun tp!2468 () Bool)

(declare-fun b_and!5353 () Bool)

(assert (=> b!11296 (= tp!2468 b_and!5353)))

(declare-fun b_free!1541 () Bool)

(declare-fun b_next!3703 () Bool)

(assert (=> b!11296 (= b_free!1541 (not b_next!3703))))

(declare-fun tp!2466 () Bool)

(declare-fun b_and!5355 () Bool)

(assert (=> b!11296 (= tp!2466 b_and!5355)))

(declare-fun b_free!1543 () Bool)

(declare-fun b_next!3705 () Bool)

(assert (=> b!11296 (= b_free!1543 (not b_next!3705))))

(declare-fun tp!2469 () Bool)

(declare-fun b_and!5357 () Bool)

(assert (=> b!11296 (= tp!2469 b_and!5357)))

(declare-fun f!539 () Int)

(declare-fun b!11295 () Bool)

(declare-fun b_next!3707 () Bool)

(declare-fun lambda!3014 () Int)

(assert (=> start!2262 (= b_next!3697 (or (and b!11295 (= lambda!3014 f!539)) b_next!3707))))

(declare-fun f!576 () Int)

(declare-fun b_next!3709 () Bool)

(assert (=> start!2262 (= b_next!3699 (or (and b!11295 (= lambda!3014 f!576)) b_next!3709))))

(declare-fun b!11293 () Bool)

(assert (=> b!11293 true))

(declare-fun order!223 () Int)

(declare-fun order!225 () Int)

(declare-fun lambda!3015 () Int)

(declare-fun dynLambda!415 (Int Int) Int)

(declare-fun dynLambda!416 (Int Int) Int)

(assert (=> b!11293 (< (dynLambda!415 order!223 f!539) (dynLambda!416 order!225 lambda!3015))))

(assert (=> b!11293 true))

(assert (=> b!11293 true))

(declare-fun b_next!3711 () Bool)

(declare-datatypes () ((Balance!303 (Balance!304 (extraOpen!192 Int) (extraClose!192 Int)))))

(declare-datatypes () ((EqEvidence!234 (EqEvidence!235 (x!6403 Int) (y!632 Int) (evidence!184 Int)))))

(declare-fun thiss!746 () EqEvidence!234)

(assert (=> b!11296 (= b_next!3701 (or (and b!11293 (= lambda!3015 (x!6403 thiss!746))) b_next!3711))))

(declare-fun b_next!3713 () Bool)

(assert (=> b!11296 (= b_next!3703 (or (and b!11293 (= lambda!3015 (y!632 thiss!746))) b_next!3713))))

(assert (=> b!11293 true))

(declare-fun order!227 () Int)

(declare-fun lambda!3016 () Int)

(declare-fun dynLambda!417 (Int Int) Int)

(assert (=> b!11293 (< (dynLambda!415 order!223 f!539) (dynLambda!417 order!227 lambda!3016))))

(assert (=> b!11293 true))

(declare-fun lambda!3017 () Int)

(assert (=> b!11293 (not (= lambda!3017 lambda!3015))))

(assert (=> b!11293 true))

(assert (=> b!11293 (< (dynLambda!415 order!223 f!539) (dynLambda!416 order!225 lambda!3017))))

(assert (=> b!11293 true))

(assert (=> b!11293 true))

(declare-fun b_next!3715 () Bool)

(assert (=> b!11296 (= b_next!3711 (or (and b!11293 (= lambda!3017 (x!6403 thiss!746))) b_next!3715))))

(declare-fun b_next!3717 () Bool)

(assert (=> b!11296 (= b_next!3713 (or (and b!11293 (= lambda!3017 (y!632 thiss!746))) b_next!3717))))

(assert (=> b!11293 true))

(declare-fun order!229 () Int)

(declare-fun lambda!3018 () Int)

(declare-fun dynLambda!418 (Int Int) Int)

(assert (=> b!11293 (< (dynLambda!415 order!223 f!539) (dynLambda!418 order!229 lambda!3018))))

(assert (=> b!11293 true))

(assert (=> b!11293 true))

(declare-fun b_next!3719 () Bool)

(assert (=> b!11296 (= b_next!3705 (or (and b!11293 (= lambda!3018 (evidence!184 thiss!746))) b_next!3719))))

(declare-fun b!11292 () Bool)

(declare-fun res!4117 () Bool)

(declare-fun e!6379 () Bool)

(assert (=> b!11292 (=> (not res!4117) (not e!6379))))

(declare-datatypes () ((List!271 (Nil!269) (Cons!268 (head!486 Balance!303) (tail!498 List!271)))))

(declare-fun ys!54 () List!271)

(declare-fun isEmpty!199 (List!271) Bool)

(assert (=> b!11292 (= res!4117 (not (isEmpty!199 ys!54)))))

(declare-fun res!4118 () Bool)

(assert (=> b!11293 (=> (not res!4118) (not e!6379))))

(assert (=> b!11293 (= res!4118 (= thiss!746 (EqEvidence!235 lambda!3015 lambda!3017 lambda!3018)))))

(declare-fun b!11294 () Bool)

(declare-fun thiss!769 () List!271)

(assert (=> b!11294 (= e!6379 (isEmpty!199 thiss!769))))

(declare-fun res!4116 () Bool)

(assert (=> b!11295 (=> (not res!4116) (not e!6379))))

(assert (=> b!11295 (= res!4116 (= f!539 lambda!3014))))

(declare-fun res!4114 () Bool)

(assert (=> start!2262 (=> (not res!4114) (not e!6379))))

(declare-fun xs!292 () List!271)

(assert (=> start!2262 (= res!4114 (not (isEmpty!199 xs!292)))))

(assert (=> start!2262 e!6379))

(assert (=> start!2262 tp!2470))

(assert (=> start!2262 tp!2467))

(assert (=> start!2262 true))

(declare-fun e!6380 () Bool)

(declare-fun inv!377 (EqEvidence!234) Bool)

(assert (=> start!2262 (and (inv!377 thiss!746) e!6380)))

(assert (=> b!11296 (= e!6380 (and tp!2468 tp!2466 tp!2469))))

(declare-fun b!11297 () Bool)

(declare-fun res!4115 () Bool)

(assert (=> b!11297 (=> (not res!4115) (not e!6379))))

(declare-datatypes () ((ProofOps!242 (ProofOps!243 (prop!254 Bool)))))

(declare-fun thiss!710 () ProofOps!242)

(declare-fun dynLambda!419 (Int Balance!303 Balance!303) Balance!303)

(declare-fun foldRight1!101 (List!271 Int) Balance!303)

(declare-fun append!120 (List!271 List!271) List!271)

(assert (=> b!11297 (= res!4115 (= thiss!710 (ProofOps!243 (= (dynLambda!419 f!539 (foldRight1!101 xs!292 f!539) (foldRight1!101 ys!54 f!539)) (foldRight1!101 (append!120 xs!292 ys!54) f!539)))))))

(declare-fun b!11298 () Bool)

(declare-fun res!4113 () Bool)

(assert (=> b!11298 (=> (not res!4113) (not e!6379))))

(assert (=> b!11298 (= res!4113 (or (not (is-Cons!268 xs!292)) (not (is-Nil!269 (tail!498 xs!292)))))))

(declare-fun b!11299 () Bool)

(declare-fun res!4112 () Bool)

(assert (=> b!11299 (=> (not res!4112) (not e!6379))))

(assert (=> b!11299 (= res!4112 (and (= thiss!769 ys!54) (= f!576 f!539)))))

(assert (= (and start!2262 res!4114) b!11292))

(assert (= (and b!11292 res!4117) b!11295))

(assert (= (and b!11295 res!4116) b!11297))

(assert (= (and b!11297 res!4115) b!11298))

(assert (= (and b!11298 res!4113) b!11293))

(assert (= (and b!11293 res!4118) b!11299))

(assert (= (and b!11299 res!4112) b!11294))

(assert (= start!2262 b!11296))

(declare-fun b_lambda!5829 () Bool)

(assert (=> (not b_lambda!5829) (not b!11297)))

(declare-fun t!3171 () Bool)

(declare-fun tb!2831 () Bool)

(assert (=> (and start!2262 (= f!539 f!539) t!3171) tb!2831))

(declare-fun result!2883 () Bool)

(assert (=> tb!2831 (= result!2883 true)))

(assert (=> b!11297 t!3171))

(declare-fun b_and!5359 () Bool)

(assert (= b_and!5349 (and (=> t!3171 result!2883) b_and!5359)))

(declare-fun t!3173 () Bool)

(declare-fun tb!2833 () Bool)

(assert (=> (and start!2262 (= f!576 f!539) t!3173) tb!2833))

(declare-fun result!2885 () Bool)

(assert (=> tb!2833 (= result!2885 true)))

(assert (=> b!11297 t!3173))

(declare-fun b_and!5361 () Bool)

(assert (= b_and!5351 (and (=> t!3173 result!2885) b_and!5361)))

(declare-fun m!14203 () Bool)

(assert (=> b!11292 m!14203))

(declare-fun m!14205 () Bool)

(assert (=> b!11294 m!14205))

(declare-fun m!14207 () Bool)

(assert (=> start!2262 m!14207))

(declare-fun m!14209 () Bool)

(assert (=> start!2262 m!14209))

(declare-fun m!14211 () Bool)

(assert (=> b!11297 m!14211))

(declare-fun m!14213 () Bool)

(assert (=> b!11297 m!14213))

(declare-fun m!14215 () Bool)

(assert (=> b!11297 m!14215))

(assert (=> b!11297 m!14213))

(assert (=> b!11297 m!14215))

(declare-fun m!14217 () Bool)

(assert (=> b!11297 m!14217))

(assert (=> b!11297 m!14211))

(declare-fun m!14219 () Bool)

(assert (=> b!11297 m!14219))

(push 1)

(assert (not b!11297))

(assert b_and!5355)

(assert (not b!11292))

(assert (not b_lambda!5829))

(assert (not b_next!3719))

(assert (not b_next!3707))

(assert b_and!5353)

(assert (not b_next!3717))

(assert (not b_next!3715))

(assert b_and!5361)

(assert b_and!5357)

(assert (not b_next!3709))

(assert (not start!2262))

(assert b_and!5359)

(assert (not b!11294))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5355)

(assert (not b_next!3719))

(assert (not b_next!3707))

(assert b_and!5353)

(assert (not b_next!3717))

(assert (not b_next!3715))

(assert b_and!5361)

(assert b_and!5357)

(assert (not b_next!3709))

(assert b_and!5359)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2438 () Bool)

(assert start!2438)

(declare-fun b_free!1849 () Bool)

(declare-fun b_next!4347 () Bool)

(assert (=> start!2438 (= b_free!1849 (not b_next!4347))))

(declare-fun tp!2944 () Bool)

(declare-fun b_and!6369 () Bool)

(assert (=> start!2438 (= tp!2944 b_and!6369)))

(declare-fun b!12148 () Bool)

(declare-fun b_free!1851 () Bool)

(declare-fun b_next!4349 () Bool)

(assert (=> b!12148 (= b_free!1851 (not b_next!4349))))

(declare-fun tp!2945 () Bool)

(declare-fun b_and!6371 () Bool)

(assert (=> b!12148 (= tp!2945 b_and!6371)))

(declare-fun b_free!1853 () Bool)

(declare-fun b_next!4351 () Bool)

(assert (=> b!12148 (= b_free!1853 (not b_next!4351))))

(declare-fun tp!2942 () Bool)

(declare-fun b_and!6373 () Bool)

(assert (=> b!12148 (= tp!2942 b_and!6373)))

(declare-fun b_free!1855 () Bool)

(declare-fun b_next!4353 () Bool)

(assert (=> b!12148 (= b_free!1855 (not b_next!4353))))

(declare-fun tp!2946 () Bool)

(declare-fun b_and!6375 () Bool)

(assert (=> b!12148 (= tp!2946 b_and!6375)))

(declare-fun b!12140 () Bool)

(declare-fun b_free!1857 () Bool)

(declare-fun b_next!4355 () Bool)

(assert (=> b!12140 (= b_free!1857 (not b_next!4355))))

(declare-fun tp!2941 () Bool)

(declare-fun b_and!6377 () Bool)

(assert (=> b!12140 (= tp!2941 b_and!6377)))

(declare-fun b_free!1859 () Bool)

(declare-fun b_next!4357 () Bool)

(assert (=> b!12140 (= b_free!1859 (not b_next!4357))))

(declare-fun tp!2947 () Bool)

(declare-fun b_and!6379 () Bool)

(assert (=> b!12140 (= tp!2947 b_and!6379)))

(declare-fun b_free!1861 () Bool)

(declare-fun b_next!4359 () Bool)

(assert (=> b!12140 (= b_free!1861 (not b_next!4359))))

(declare-fun tp!2943 () Bool)

(declare-fun b_and!6381 () Bool)

(assert (=> b!12140 (= tp!2943 b_and!6381)))

(declare-fun f!539 () Int)

(declare-fun b_next!4361 () Bool)

(declare-fun lambda!3289 () Int)

(declare-fun b!12143 () Bool)

(assert (=> start!2438 (= b_next!4347 (or (and b!12143 (= lambda!3289 f!539)) b_next!4361))))

(declare-fun b!12144 () Bool)

(assert (=> b!12144 true))

(declare-fun order!313 () Int)

(declare-fun lambda!3290 () Int)

(declare-fun order!315 () Int)

(declare-fun dynLambda!508 (Int Int) Int)

(declare-fun dynLambda!509 (Int Int) Int)

(assert (=> b!12144 (< (dynLambda!508 order!313 f!539) (dynLambda!509 order!315 lambda!3290))))

(assert (=> b!12144 true))

(assert (=> b!12144 true))

(declare-fun b_next!4363 () Bool)

(declare-datatypes () ((Balance!353 (Balance!354 (extraOpen!217 Int) (extraClose!217 Int)))))

(declare-datatypes () ((EqEvidence!280 (EqEvidence!281 (x!6995 Int) (y!665 Int) (evidence!207 Int)))))

(declare-fun that!184 () EqEvidence!280)

(assert (=> b!12148 (= b_next!4349 (or (and b!12144 (= lambda!3290 (x!6995 that!184))) b_next!4363))))

(declare-fun b_next!4365 () Bool)

(assert (=> b!12148 (= b_next!4351 (or (and b!12144 (= lambda!3290 (y!665 that!184))) b_next!4365))))

(declare-fun b_next!4367 () Bool)

(declare-fun thiss!746 () EqEvidence!280)

(assert (=> b!12140 (= b_next!4355 (or (and b!12144 (= lambda!3290 (x!6995 thiss!746))) b_next!4367))))

(declare-fun b_next!4369 () Bool)

(assert (=> b!12140 (= b_next!4357 (or (and b!12144 (= lambda!3290 (y!665 thiss!746))) b_next!4369))))

(assert (=> b!12144 true))

(declare-fun lambda!3291 () Int)

(declare-fun order!317 () Int)

(declare-fun dynLambda!510 (Int Int) Int)

(assert (=> b!12144 (< (dynLambda!508 order!313 f!539) (dynLambda!510 order!317 lambda!3291))))

(assert (=> b!12144 true))

(declare-fun lambda!3292 () Int)

(assert (=> b!12144 (not (= lambda!3292 lambda!3290))))

(assert (=> b!12144 true))

(assert (=> b!12144 (< (dynLambda!508 order!313 f!539) (dynLambda!509 order!315 lambda!3292))))

(assert (=> b!12144 true))

(assert (=> b!12144 true))

(declare-fun b_next!4371 () Bool)

(assert (=> b!12148 (= b_next!4363 (or (and b!12144 (= lambda!3292 (x!6995 that!184))) b_next!4371))))

(declare-fun b_next!4373 () Bool)

(assert (=> b!12148 (= b_next!4365 (or (and b!12144 (= lambda!3292 (y!665 that!184))) b_next!4373))))

(declare-fun b_next!4375 () Bool)

(assert (=> b!12140 (= b_next!4367 (or (and b!12144 (= lambda!3292 (x!6995 thiss!746))) b_next!4375))))

(declare-fun b_next!4377 () Bool)

(assert (=> b!12140 (= b_next!4369 (or (and b!12144 (= lambda!3292 (y!665 thiss!746))) b_next!4377))))

(assert (=> b!12144 true))

(declare-fun lambda!3293 () Int)

(declare-fun order!319 () Int)

(declare-fun dynLambda!511 (Int Int) Int)

(assert (=> b!12144 (< (dynLambda!508 order!313 f!539) (dynLambda!511 order!319 lambda!3293))))

(assert (=> b!12144 true))

(assert (=> b!12144 true))

(declare-fun b_next!4379 () Bool)

(assert (=> b!12148 (= b_next!4353 (or (and b!12144 (= lambda!3293 (evidence!207 that!184))) b_next!4379))))

(declare-fun b_next!4381 () Bool)

(assert (=> b!12140 (= b_next!4359 (or (and b!12144 (= lambda!3293 (evidence!207 thiss!746))) b_next!4381))))

(declare-fun bs!3139 () Bool)

(declare-fun b!12147 () Bool)

(assert (= bs!3139 (and b!12147 b!12144)))

(declare-fun lambda!3294 () Int)

(assert (=> bs!3139 (not (= lambda!3294 lambda!3290))))

(assert (=> bs!3139 (not (= lambda!3294 lambda!3292))))

(assert (=> b!12147 true))

(assert (=> b!12147 (< (dynLambda!508 order!313 f!539) (dynLambda!509 order!315 lambda!3294))))

(assert (=> b!12147 true))

(assert (=> b!12147 true))

(declare-fun b_next!4383 () Bool)

(assert (=> b!12148 (= b_next!4371 (or (and b!12147 (= lambda!3294 (x!6995 that!184))) b_next!4383))))

(declare-fun b_next!4385 () Bool)

(assert (=> b!12148 (= b_next!4373 (or (and b!12147 (= lambda!3294 (y!665 that!184))) b_next!4385))))

(declare-fun b_next!4387 () Bool)

(assert (=> b!12140 (= b_next!4375 (or (and b!12147 (= lambda!3294 (x!6995 thiss!746))) b_next!4387))))

(declare-fun b_next!4389 () Bool)

(assert (=> b!12140 (= b_next!4377 (or (and b!12147 (= lambda!3294 (y!665 thiss!746))) b_next!4389))))

(declare-fun lambda!3295 () Int)

(assert (=> bs!3139 (not (= lambda!3295 lambda!3293))))

(assert (=> b!12147 true))

(assert (=> b!12147 true))

(declare-fun b_next!4391 () Bool)

(assert (=> b!12148 (= b_next!4379 (or (and b!12147 (= lambda!3295 (evidence!207 that!184))) b_next!4391))))

(declare-fun b_next!4393 () Bool)

(assert (=> b!12140 (= b_next!4381 (or (and b!12147 (= lambda!3295 (evidence!207 thiss!746))) b_next!4393))))

(declare-fun e!6692 () Bool)

(assert (=> b!12140 (= e!6692 (and tp!2941 tp!2947 tp!2943))))

(declare-fun b!12141 () Bool)

(declare-fun res!4510 () Bool)

(declare-fun e!6691 () Bool)

(assert (=> b!12141 (=> (not res!4510) (not e!6691))))

(declare-fun dynLambda!512 (Int) Bool)

(assert (=> b!12141 (= res!4510 (dynLambda!512 (evidence!207 thiss!746)))))

(declare-fun b!12142 () Bool)

(declare-fun res!4507 () Bool)

(assert (=> b!12142 (=> (not res!4507) (not e!6691))))

(declare-datatypes () ((List!286 (Nil!284) (Cons!283 (head!501 Balance!353) (tail!513 List!286)))))

(declare-fun xs!292 () List!286)

(assert (=> b!12142 (= res!4507 (or (not (is-Cons!283 xs!292)) (not (is-Nil!284 (tail!513 xs!292)))))))

(declare-fun res!4509 () Bool)

(assert (=> b!12143 (=> (not res!4509) (not e!6691))))

(assert (=> b!12143 (= res!4509 (= f!539 lambda!3289))))

(declare-fun res!4508 () Bool)

(assert (=> b!12144 (=> (not res!4508) (not e!6691))))

(assert (=> b!12144 (= res!4508 (= thiss!746 (EqEvidence!281 lambda!3290 lambda!3292 lambda!3293)))))

(declare-fun b!12145 () Bool)

(declare-fun res!4512 () Bool)

(assert (=> b!12145 (=> (not res!4512) (not e!6691))))

(declare-fun ys!54 () List!286)

(declare-datatypes () ((ProofOps!272 (ProofOps!273 (prop!270 Bool)))))

(declare-fun thiss!710 () ProofOps!272)

(declare-fun dynLambda!513 (Int Balance!353 Balance!353) Balance!353)

(declare-fun foldRight1!116 (List!286 Int) Balance!353)

(declare-fun append!135 (List!286 List!286) List!286)

(assert (=> b!12145 (= res!4512 (= thiss!710 (ProofOps!273 (= (dynLambda!513 f!539 (foldRight1!116 xs!292 f!539) (foldRight1!116 ys!54 f!539)) (foldRight1!116 (append!135 xs!292 ys!54) f!539)))))))

(declare-fun res!4506 () Bool)

(assert (=> start!2438 (=> (not res!4506) (not e!6691))))

(declare-fun isEmpty!214 (List!286) Bool)

(assert (=> start!2438 (= res!4506 (not (isEmpty!214 xs!292)))))

(assert (=> start!2438 e!6691))

(assert (=> start!2438 tp!2944))

(assert (=> start!2438 true))

(declare-fun e!6690 () Bool)

(declare-fun inv!410 (EqEvidence!280) Bool)

(assert (=> start!2438 (and (inv!410 that!184) e!6690)))

(assert (=> start!2438 (and (inv!410 thiss!746) e!6692)))

(declare-fun b!12146 () Bool)

(declare-fun res!4511 () Bool)

(assert (=> b!12146 (=> (not res!4511) (not e!6691))))

(assert (=> b!12146 (= res!4511 (not (isEmpty!214 ys!54)))))

(declare-fun res!4505 () Bool)

(assert (=> b!12147 (=> (not res!4505) (not e!6691))))

(assert (=> b!12147 (= res!4505 (= that!184 (EqEvidence!281 lambda!3294 lambda!3294 lambda!3295)))))

(assert (=> b!12148 (= e!6690 (and tp!2945 tp!2942 tp!2946))))

(declare-fun b!12149 () Bool)

(declare-fun dynLambda!514 (Int) Balance!353)

(assert (=> b!12149 (= e!6691 (not (= (dynLambda!514 (y!665 thiss!746)) (dynLambda!514 (x!6995 that!184)))))))

(assert (= (and start!2438 res!4506) b!12146))

(assert (= (and b!12146 res!4511) b!12143))

(assert (= (and b!12143 res!4509) b!12145))

(assert (= (and b!12145 res!4512) b!12142))

(assert (= (and b!12142 res!4507) b!12144))

(assert (= (and b!12144 res!4508) b!12147))

(assert (= (and b!12147 res!4505) b!12141))

(assert (= (and b!12141 res!4510) b!12149))

(assert (= start!2438 b!12148))

(assert (= start!2438 b!12140))

(declare-fun b_lambda!6573 () Bool)

(assert (=> (not b_lambda!6573) (not b!12141)))

(declare-fun tb!3345 () Bool)

(declare-fun t!3685 () Bool)

(assert (=> (and b!12148 (= (evidence!207 that!184) (evidence!207 thiss!746)) t!3685) tb!3345))

(declare-fun result!3397 () Bool)

(assert (=> tb!3345 (= result!3397 true)))

(assert (=> b!12141 t!3685))

(declare-fun b_and!6383 () Bool)

(assert (= b_and!6375 (and (=> t!3685 result!3397) b_and!6383)))

(declare-fun t!3687 () Bool)

(declare-fun tb!3347 () Bool)

(assert (=> (and b!12140 (= (evidence!207 thiss!746) (evidence!207 thiss!746)) t!3687) tb!3347))

(declare-fun result!3399 () Bool)

(assert (=> tb!3347 (= result!3399 true)))

(assert (=> b!12141 t!3687))

(declare-fun b_and!6385 () Bool)

(assert (= b_and!6381 (and (=> t!3687 result!3399) b_and!6385)))

(declare-fun b_lambda!6575 () Bool)

(assert (=> (not b_lambda!6575) (not b!12145)))

(declare-fun t!3689 () Bool)

(declare-fun tb!3349 () Bool)

(assert (=> (and start!2438 (= f!539 f!539) t!3689) tb!3349))

(declare-fun result!3401 () Bool)

(assert (=> tb!3349 (= result!3401 true)))

(assert (=> b!12145 t!3689))

(declare-fun b_and!6387 () Bool)

(assert (= b_and!6369 (and (=> t!3689 result!3401) b_and!6387)))

(declare-fun b_lambda!6577 () Bool)

(assert (=> (not b_lambda!6577) (not b!12149)))

(declare-fun t!3691 () Bool)

(declare-fun tb!3351 () Bool)

(assert (=> (and b!12148 (= (x!6995 that!184) (y!665 thiss!746)) t!3691) tb!3351))

(declare-fun result!3403 () Bool)

(assert (=> tb!3351 (= result!3403 true)))

(assert (=> b!12149 t!3691))

(declare-fun b_and!6389 () Bool)

(assert (= b_and!6371 (and (=> t!3691 result!3403) b_and!6389)))

(declare-fun t!3693 () Bool)

(declare-fun tb!3353 () Bool)

(assert (=> (and b!12148 (= (y!665 that!184) (y!665 thiss!746)) t!3693) tb!3353))

(declare-fun result!3405 () Bool)

(assert (=> tb!3353 (= result!3405 true)))

(assert (=> b!12149 t!3693))

(declare-fun b_and!6391 () Bool)

(assert (= b_and!6373 (and (=> t!3693 result!3405) b_and!6391)))

(declare-fun t!3695 () Bool)

(declare-fun tb!3355 () Bool)

(assert (=> (and b!12140 (= (x!6995 thiss!746) (y!665 thiss!746)) t!3695) tb!3355))

(declare-fun result!3407 () Bool)

(assert (=> tb!3355 (= result!3407 true)))

(assert (=> b!12149 t!3695))

(declare-fun b_and!6393 () Bool)

(assert (= b_and!6377 (and (=> t!3695 result!3407) b_and!6393)))

(declare-fun t!3697 () Bool)

(declare-fun tb!3357 () Bool)

(assert (=> (and b!12140 (= (y!665 thiss!746) (y!665 thiss!746)) t!3697) tb!3357))

(declare-fun result!3409 () Bool)

(assert (=> tb!3357 (= result!3409 true)))

(assert (=> b!12149 t!3697))

(declare-fun b_and!6395 () Bool)

(assert (= b_and!6379 (and (=> t!3697 result!3409) b_and!6395)))

(declare-fun b_lambda!6579 () Bool)

(assert (=> (not b_lambda!6579) (not b!12149)))

(declare-fun t!3699 () Bool)

(declare-fun tb!3359 () Bool)

(assert (=> (and b!12148 (= (x!6995 that!184) (x!6995 that!184)) t!3699) tb!3359))

(declare-fun result!3411 () Bool)

(assert (=> tb!3359 (= result!3411 true)))

(assert (=> b!12149 t!3699))

(declare-fun b_and!6397 () Bool)

(assert (= b_and!6389 (and (=> t!3699 result!3411) b_and!6397)))

(declare-fun t!3701 () Bool)

(declare-fun tb!3361 () Bool)

(assert (=> (and b!12148 (= (y!665 that!184) (x!6995 that!184)) t!3701) tb!3361))

(declare-fun result!3413 () Bool)

(assert (=> tb!3361 (= result!3413 true)))

(assert (=> b!12149 t!3701))

(declare-fun b_and!6399 () Bool)

(assert (= b_and!6391 (and (=> t!3701 result!3413) b_and!6399)))

(declare-fun tb!3363 () Bool)

(declare-fun t!3703 () Bool)

(assert (=> (and b!12140 (= (x!6995 thiss!746) (x!6995 that!184)) t!3703) tb!3363))

(declare-fun result!3415 () Bool)

(assert (=> tb!3363 (= result!3415 true)))

(assert (=> b!12149 t!3703))

(declare-fun b_and!6401 () Bool)

(assert (= b_and!6393 (and (=> t!3703 result!3415) b_and!6401)))

(declare-fun tb!3365 () Bool)

(declare-fun t!3705 () Bool)

(assert (=> (and b!12140 (= (y!665 thiss!746) (x!6995 that!184)) t!3705) tb!3365))

(declare-fun result!3417 () Bool)

(assert (=> tb!3365 (= result!3417 true)))

(assert (=> b!12149 t!3705))

(declare-fun b_and!6403 () Bool)

(assert (= b_and!6395 (and (=> t!3705 result!3417) b_and!6403)))

(declare-fun m!15061 () Bool)

(assert (=> b!12146 m!15061))

(declare-fun m!15063 () Bool)

(assert (=> b!12141 m!15063))

(declare-fun m!15065 () Bool)

(assert (=> b!12149 m!15065))

(declare-fun m!15067 () Bool)

(assert (=> b!12149 m!15067))

(declare-fun m!15069 () Bool)

(assert (=> start!2438 m!15069))

(declare-fun m!15071 () Bool)

(assert (=> start!2438 m!15071))

(declare-fun m!15073 () Bool)

(assert (=> start!2438 m!15073))

(declare-fun m!15075 () Bool)

(assert (=> b!12145 m!15075))

(declare-fun m!15077 () Bool)

(assert (=> b!12145 m!15077))

(declare-fun m!15079 () Bool)

(assert (=> b!12145 m!15079))

(assert (=> b!12145 m!15077))

(assert (=> b!12145 m!15079))

(declare-fun m!15081 () Bool)

(assert (=> b!12145 m!15081))

(assert (=> b!12145 m!15075))

(declare-fun m!15083 () Bool)

(assert (=> b!12145 m!15083))

(push 1)

(assert (not b!12145))

(assert (not b_lambda!6579))

(assert (not b_next!4383))

(assert (not b_next!4393))

(assert (not b!12146))

(assert b_and!6399)

(assert (not b_lambda!6575))

(assert b_and!6383)

(assert (not b_next!4391))

(assert (not b_lambda!6577))

(assert b_and!6385)

(assert (not b_lambda!6573))

(assert b_and!6387)

(assert (not b_next!4389))

(assert b_and!6401)

(assert (not b_next!4361))

(assert b_and!6403)

(assert b_and!6397)

(assert (not b_next!4387))

(assert (not start!2438))

(assert (not b_next!4385))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4383))

(assert (not b_next!4393))

(assert b_and!6399)

(assert b_and!6383)

(assert (not b_next!4391))

(assert b_and!6385)

(assert b_and!6387)

(assert (not b_next!4389))

(assert b_and!6401)

(assert (not b_next!4361))

(assert b_and!6403)

(assert b_and!6397)

(assert (not b_next!4387))

(assert (not b_next!4385))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6581 () Bool)

(assert (= b_lambda!6575 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) b_lambda!6581)))

(declare-fun bs!3140 () Bool)

(declare-fun d!9351 () Bool)

(assert (= bs!3140 (and d!9351 b!12143)))

(declare-fun ++!3 (Balance!353 Balance!353) Balance!353)

(assert (=> bs!3140 (= (dynLambda!513 lambda!3289 (foldRight1!116 xs!292 f!539) (foldRight1!116 ys!54 f!539)) (++!3 (foldRight1!116 xs!292 f!539) (foldRight1!116 ys!54 f!539)))))

(assert (=> bs!3140 m!15077))

(assert (=> bs!3140 m!15079))

(declare-fun m!15085 () Bool)

(assert (=> bs!3140 m!15085))

(assert (=> (and b!12143 (= lambda!3289 f!539) b!12145) d!9351))

(declare-fun b_lambda!6583 () Bool)

(assert (= b_lambda!6577 (or (and b!12147 (= lambda!3294 (y!665 thiss!746))) (and b!12144 (= lambda!3290 (y!665 thiss!746))) (and b!12140 b_free!1857 (= (x!6995 thiss!746) (y!665 thiss!746))) (and b!12148 b_free!1851 (= (x!6995 that!184) (y!665 thiss!746))) (and b!12140 b_free!1859) (and b!12144 (= lambda!3292 (y!665 thiss!746))) (and b!12148 b_free!1853 (= (y!665 that!184) (y!665 thiss!746))) b_lambda!6583)))

(declare-fun bs!3141 () Bool)

(declare-fun d!9353 () Bool)

(assert (= bs!3141 (and d!9353 b!12144)))

(assert (=> bs!3141 (= (dynLambda!514 lambda!3290) (dynLambda!513 f!539 (foldRight1!116 xs!292 f!539) (foldRight1!116 ys!54 f!539)))))

(declare-fun b_lambda!6589 () Bool)

(assert (=> (not b_lambda!6589) (not bs!3141)))

(assert (=> bs!3141 t!3689))

(declare-fun b_and!6405 () Bool)

(assert (= b_and!6387 (and (=> t!3689 result!3401) b_and!6405)))

(assert (=> bs!3141 m!15077))

(assert (=> bs!3141 m!15079))

(assert (=> bs!3141 m!15077))

(assert (=> bs!3141 m!15079))

(assert (=> bs!3141 m!15081))

(assert (=> (and b!12144 (= lambda!3290 (y!665 thiss!746)) b!12149) d!9353))

(declare-fun bs!3142 () Bool)

(declare-fun d!9355 () Bool)

(assert (= bs!3142 (and d!9355 b!12144)))

(declare-fun dynLambda!515 (Int Balance!353) Balance!353)

(assert (=> bs!3142 (= (dynLambda!514 lambda!3292) (dynLambda!513 f!539 (dynLambda!515 lambda!3291 (foldRight1!116 (tail!513 xs!292) f!539)) (foldRight1!116 ys!54 f!539)))))

(declare-fun b_lambda!6591 () Bool)

(assert (=> (not b_lambda!6591) (not bs!3142)))

(declare-fun t!3707 () Bool)

(declare-fun tb!3367 () Bool)

(assert (=> (and start!2438 (= f!539 f!539) t!3707) tb!3367))

(declare-fun result!3419 () Bool)

(assert (=> tb!3367 (= result!3419 true)))

(assert (=> bs!3142 t!3707))

(declare-fun b_and!6407 () Bool)

(assert (= b_and!6405 (and (=> t!3707 result!3419) b_and!6407)))

(declare-fun b_lambda!6593 () Bool)

(assert (=> (not b_lambda!6593) (not bs!3142)))

(declare-fun m!15087 () Bool)

(assert (=> bs!3142 m!15087))

(assert (=> bs!3142 m!15087))

(declare-fun m!15089 () Bool)

(assert (=> bs!3142 m!15089))

(assert (=> bs!3142 m!15089))

(assert (=> bs!3142 m!15079))

(declare-fun m!15091 () Bool)

(assert (=> bs!3142 m!15091))

(assert (=> bs!3142 m!15079))

(assert (=> (and b!12144 (= lambda!3292 (y!665 thiss!746)) b!12149) d!9355))

(declare-fun bs!3143 () Bool)

(declare-fun d!9357 () Bool)

(assert (= bs!3143 (and d!9357 b!12147)))

(assert (=> bs!3143 (= (dynLambda!514 lambda!3294) (dynLambda!513 f!539 (head!501 xs!292) (dynLambda!513 f!539 (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539))))))

(declare-fun b_lambda!6595 () Bool)

(assert (=> (not b_lambda!6595) (not bs!3143)))

(declare-fun t!3709 () Bool)

(declare-fun tb!3369 () Bool)

(assert (=> (and start!2438 (= f!539 f!539) t!3709) tb!3369))

(declare-fun result!3421 () Bool)

(assert (=> tb!3369 (= result!3421 true)))

(assert (=> bs!3143 t!3709))

(declare-fun b_and!6409 () Bool)

(assert (= b_and!6407 (and (=> t!3709 result!3421) b_and!6409)))

(declare-fun b_lambda!6597 () Bool)

(assert (=> (not b_lambda!6597) (not bs!3143)))

(declare-fun t!3711 () Bool)

(declare-fun tb!3371 () Bool)

(assert (=> (and start!2438 (= f!539 f!539) t!3711) tb!3371))

(declare-fun result!3423 () Bool)

(assert (=> tb!3371 (= result!3423 true)))

(assert (=> bs!3143 t!3711))

(declare-fun b_and!6411 () Bool)

(assert (= b_and!6409 (and (=> t!3711 result!3423) b_and!6411)))

(assert (=> bs!3143 m!15087))

(declare-fun m!15093 () Bool)

(assert (=> bs!3143 m!15093))

(declare-fun m!15095 () Bool)

(assert (=> bs!3143 m!15095))

(assert (=> bs!3143 m!15079))

(assert (=> bs!3143 m!15087))

(assert (=> bs!3143 m!15079))

(assert (=> bs!3143 m!15093))

(assert (=> (and b!12147 (= lambda!3294 (y!665 thiss!746)) b!12149) d!9357))

(declare-fun b_lambda!6585 () Bool)

(assert (= b_lambda!6573 (or (and b!12144 (= lambda!3293 (evidence!207 thiss!746))) (and b!12147 (= lambda!3295 (evidence!207 thiss!746))) (and b!12148 b_free!1855 (= (evidence!207 that!184) (evidence!207 thiss!746))) (and b!12140 b_free!1861) b_lambda!6585)))

(declare-fun bs!3144 () Bool)

(declare-fun d!9359 () Bool)

(assert (= bs!3144 (and d!9359 b!12144)))

(declare-fun append_is_associative!0 (Balance!353 Balance!353 Balance!353) Bool)

(assert (=> bs!3144 (= (dynLambda!512 lambda!3293) (append_is_associative!0 (head!501 xs!292) (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539)))))

(assert (=> bs!3144 m!15087))

(assert (=> bs!3144 m!15079))

(assert (=> bs!3144 m!15087))

(assert (=> bs!3144 m!15079))

(declare-fun m!15097 () Bool)

(assert (=> bs!3144 m!15097))

(assert (=> (and b!12144 (= lambda!3293 (evidence!207 thiss!746)) b!12141) d!9359))

(declare-fun bs!3145 () Bool)

(declare-fun d!9361 () Bool)

(assert (= bs!3145 (and d!9361 b!12147)))

(declare-fun append!24 (List!286 List!286) Bool)

(assert (=> bs!3145 (= (dynLambda!512 lambda!3295) (append!24 (tail!513 xs!292) ys!54))))

(declare-fun m!15099 () Bool)

(assert (=> bs!3145 m!15099))

(assert (=> (and b!12147 (= lambda!3295 (evidence!207 thiss!746)) b!12141) d!9361))

(declare-fun b_lambda!6587 () Bool)

(assert (= b_lambda!6579 (or (and b!12144 (= lambda!3292 (x!6995 that!184))) (and b!12148 b_free!1851) (and b!12140 b_free!1857 (= (x!6995 thiss!746) (x!6995 that!184))) (and b!12144 (= lambda!3290 (x!6995 that!184))) (and b!12148 b_free!1853 (= (y!665 that!184) (x!6995 that!184))) (and b!12147 (= lambda!3294 (x!6995 that!184))) (and b!12140 b_free!1859 (= (y!665 thiss!746) (x!6995 that!184))) b_lambda!6587)))

(declare-fun bs!3146 () Bool)

(declare-fun d!9363 () Bool)

(assert (= bs!3146 (and d!9363 b!12147)))

(assert (=> bs!3146 (= (dynLambda!514 lambda!3294) (dynLambda!513 f!539 (head!501 xs!292) (dynLambda!513 f!539 (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539))))))

(declare-fun b_lambda!6599 () Bool)

(assert (=> (not b_lambda!6599) (not bs!3146)))

(assert (=> bs!3146 t!3709))

(declare-fun b_and!6413 () Bool)

(assert (= b_and!6411 (and (=> t!3709 result!3421) b_and!6413)))

(declare-fun b_lambda!6601 () Bool)

(assert (=> (not b_lambda!6601) (not bs!3146)))

(assert (=> bs!3146 t!3711))

(declare-fun b_and!6415 () Bool)

(assert (= b_and!6413 (and (=> t!3711 result!3423) b_and!6415)))

(assert (=> bs!3146 m!15087))

(assert (=> bs!3146 m!15093))

(assert (=> bs!3146 m!15095))

(assert (=> bs!3146 m!15079))

(assert (=> bs!3146 m!15087))

(assert (=> bs!3146 m!15079))

(assert (=> bs!3146 m!15093))

(assert (=> (and b!12147 (= lambda!3294 (x!6995 that!184)) b!12149) d!9363))

(declare-fun bs!3147 () Bool)

(declare-fun d!9365 () Bool)

(assert (= bs!3147 (and d!9365 b!12144)))

(assert (=> bs!3147 (= (dynLambda!514 lambda!3290) (dynLambda!513 f!539 (foldRight1!116 xs!292 f!539) (foldRight1!116 ys!54 f!539)))))

(declare-fun b_lambda!6603 () Bool)

(assert (=> (not b_lambda!6603) (not bs!3147)))

(assert (=> bs!3147 t!3689))

(declare-fun b_and!6417 () Bool)

(assert (= b_and!6415 (and (=> t!3689 result!3401) b_and!6417)))

(assert (=> bs!3147 m!15077))

(assert (=> bs!3147 m!15079))

(assert (=> bs!3147 m!15077))

(assert (=> bs!3147 m!15079))

(assert (=> bs!3147 m!15081))

(assert (=> (and b!12144 (= lambda!3290 (x!6995 that!184)) b!12149) d!9365))

(declare-fun bs!3148 () Bool)

(declare-fun d!9367 () Bool)

(assert (= bs!3148 (and d!9367 b!12144)))

(assert (=> bs!3148 (= (dynLambda!514 lambda!3292) (dynLambda!513 f!539 (dynLambda!515 lambda!3291 (foldRight1!116 (tail!513 xs!292) f!539)) (foldRight1!116 ys!54 f!539)))))

(declare-fun b_lambda!6605 () Bool)

(assert (=> (not b_lambda!6605) (not bs!3148)))

(assert (=> bs!3148 t!3707))

(declare-fun b_and!6419 () Bool)

(assert (= b_and!6417 (and (=> t!3707 result!3419) b_and!6419)))

(declare-fun b_lambda!6607 () Bool)

(assert (=> (not b_lambda!6607) (not bs!3148)))

(assert (=> bs!3148 m!15087))

(assert (=> bs!3148 m!15087))

(assert (=> bs!3148 m!15089))

(assert (=> bs!3148 m!15089))

(assert (=> bs!3148 m!15079))

(assert (=> bs!3148 m!15091))

(assert (=> bs!3148 m!15079))

(assert (=> (and b!12144 (= lambda!3292 (x!6995 that!184)) b!12149) d!9367))

(push 1)

(assert (not bs!3143))

(assert (not b_lambda!6605))

(assert (not b_lambda!6581))

(assert (not b_lambda!6601))

(assert (not b_lambda!6603))

(assert (not b!12145))

(assert (not b_next!4383))

(assert (not b_lambda!6585))

(assert (not b_next!4393))

(assert (not b!12146))

(assert (not bs!3141))

(assert b_and!6399)

(assert (not bs!3144))

(assert (not b_lambda!6593))

(assert b_and!6383)

(assert (not b_next!4391))

(assert (not b_lambda!6591))

(assert (not b_lambda!6597))

(assert (not bs!3148))

(assert (not b_lambda!6589))

(assert (not b_lambda!6587))

(assert (not b_lambda!6607))

(assert b_and!6385)

(assert (not bs!3145))

(assert (not b_lambda!6595))

(assert b_and!6419)

(assert (not bs!3146))

(assert (not bs!3140))

(assert (not b_lambda!6599))

(assert (not bs!3147))

(assert (not bs!3142))

(assert (not b_next!4389))

(assert (not b_lambda!6583))

(assert b_and!6401)

(assert (not b_next!4361))

(assert b_and!6403)

(assert b_and!6397)

(assert (not b_next!4387))

(assert (not start!2438))

(assert (not b_next!4385))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4383))

(assert (not b_next!4393))

(assert b_and!6399)

(assert b_and!6383)

(assert (not b_next!4391))

(assert b_and!6385)

(assert b_and!6419)

(assert (not b_next!4389))

(assert b_and!6401)

(assert (not b_next!4361))

(assert b_and!6403)

(assert b_and!6397)

(assert (not b_next!4387))

(assert (not b_next!4385))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6609 () Bool)

(assert (= b_lambda!6589 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) b_lambda!6609)))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3141) d!9351))

(declare-fun b_lambda!6611 () Bool)

(assert (= b_lambda!6603 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) b_lambda!6611)))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3147) d!9351))

(declare-fun b_lambda!6613 () Bool)

(assert (= b_lambda!6605 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) b_lambda!6613)))

(declare-fun bs!3149 () Bool)

(declare-fun d!9369 () Bool)

(assert (= bs!3149 (and d!9369 b!12143)))

(assert (=> bs!3149 (= (dynLambda!513 lambda!3289 (dynLambda!515 lambda!3291 (foldRight1!116 (tail!513 xs!292) f!539)) (foldRight1!116 ys!54 f!539)) (++!3 (dynLambda!515 lambda!3291 (foldRight1!116 (tail!513 xs!292) f!539)) (foldRight1!116 ys!54 f!539)))))

(assert (=> bs!3149 m!15089))

(assert (=> bs!3149 m!15079))

(declare-fun m!15101 () Bool)

(assert (=> bs!3149 m!15101))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3148) d!9369))

(declare-fun b_lambda!6615 () Bool)

(assert (= b_lambda!6599 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) b_lambda!6615)))

(declare-fun bs!3150 () Bool)

(declare-fun d!9371 () Bool)

(assert (= bs!3150 (and d!9371 b!12143)))

(assert (=> bs!3150 (= (dynLambda!513 lambda!3289 (head!501 xs!292) (dynLambda!513 f!539 (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539))) (++!3 (head!501 xs!292) (dynLambda!513 f!539 (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539))))))

(assert (=> bs!3150 m!15093))

(declare-fun m!15103 () Bool)

(assert (=> bs!3150 m!15103))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3146) d!9371))

(declare-fun b_lambda!6617 () Bool)

(assert (= b_lambda!6601 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) b_lambda!6617)))

(declare-fun bs!3151 () Bool)

(declare-fun d!9373 () Bool)

(assert (= bs!3151 (and d!9373 b!12143)))

(assert (=> bs!3151 (= (dynLambda!513 lambda!3289 (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539)) (++!3 (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539)))))

(assert (=> bs!3151 m!15087))

(assert (=> bs!3151 m!15079))

(declare-fun m!15105 () Bool)

(assert (=> bs!3151 m!15105))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3146) d!9373))

(declare-fun b_lambda!6619 () Bool)

(assert (= b_lambda!6593 (or b!12144 b_lambda!6619)))

(declare-fun bs!3152 () Bool)

(declare-fun d!9375 () Bool)

(assert (= bs!3152 (and d!9375 b!12144)))

(assert (=> bs!3152 (= (dynLambda!515 lambda!3291 (foldRight1!116 (tail!513 xs!292) f!539)) (dynLambda!513 f!539 (head!501 xs!292) (foldRight1!116 (tail!513 xs!292) f!539)))))

(declare-fun b_lambda!6629 () Bool)

(assert (=> (not b_lambda!6629) (not bs!3152)))

(declare-fun t!3713 () Bool)

(declare-fun tb!3373 () Bool)

(assert (=> (and start!2438 (= f!539 f!539) t!3713) tb!3373))

(declare-fun result!3425 () Bool)

(assert (=> tb!3373 (= result!3425 true)))

(assert (=> bs!3152 t!3713))

(declare-fun b_and!6421 () Bool)

(assert (= b_and!6419 (and (=> t!3713 result!3425) b_and!6421)))

(assert (=> bs!3152 m!15087))

(declare-fun m!15107 () Bool)

(assert (=> bs!3152 m!15107))

(assert (=> bs!3142 d!9375))

(declare-fun b_lambda!6621 () Bool)

(assert (= b_lambda!6597 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) b_lambda!6621)))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3143) d!9373))

(declare-fun b_lambda!6623 () Bool)

(assert (= b_lambda!6607 (or b!12144 b_lambda!6623)))

(assert (=> bs!3148 d!9375))

(declare-fun b_lambda!6625 () Bool)

(assert (= b_lambda!6595 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) b_lambda!6625)))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3143) d!9371))

(declare-fun b_lambda!6627 () Bool)

(assert (= b_lambda!6591 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) b_lambda!6627)))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3142) d!9369))

(push 1)

(assert (not bs!3143))

(assert (not b_lambda!6621))

(assert (not b_lambda!6615))

(assert (not b_lambda!6581))

(assert (not b_lambda!6613))

(assert b_and!6421)

(assert (not b_lambda!6623))

(assert (not b!12145))

(assert (not b_lambda!6619))

(assert (not b_next!4383))

(assert (not b_lambda!6585))

(assert (not b_lambda!6627))

(assert (not b_lambda!6617))

(assert (not b_next!4393))

(assert (not b!12146))

(assert (not bs!3141))

(assert b_and!6399)

(assert (not bs!3144))

(assert (not bs!3150))

(assert b_and!6383)

(assert (not b_next!4391))

(assert (not bs!3148))

(assert (not b_lambda!6587))

(assert b_and!6385)

(assert (not b_lambda!6629))

(assert (not bs!3145))

(assert (not bs!3151))

(assert (not b_lambda!6625))

(assert (not bs!3146))

(assert (not bs!3140))

(assert (not bs!3147))

(assert (not bs!3142))

(assert (not b_lambda!6611))

(assert (not b_next!4389))

(assert (not bs!3149))

(assert (not b_lambda!6583))

(assert b_and!6401)

(assert (not b_next!4361))

(assert b_and!6403)

(assert b_and!6397)

(assert (not b_next!4387))

(assert (not b_lambda!6609))

(assert (not start!2438))

(assert (not b_next!4385))

(check-sat)

(pop 1)

(push 1)

(assert b_and!6421)

(assert (not b_next!4383))

(assert (not b_next!4393))

(assert b_and!6399)

(assert b_and!6383)

(assert (not b_next!4391))

(assert b_and!6385)

(assert (not b_next!4389))

(assert b_and!6401)

(assert (not b_next!4361))

(assert b_and!6403)

(assert b_and!6397)

(assert (not b_next!4387))

(assert (not b_next!4385))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9377 () Bool)

(declare-fun c!3465 () Bool)

(assert (=> d!9377 (= c!3465 (and (is-Cons!283 xs!292) (is-Nil!284 (tail!513 xs!292))))))

(declare-fun e!6695 () Balance!353)

(assert (=> d!9377 (= (foldRight1!116 xs!292 f!539) e!6695)))

(declare-fun b!12166 () Bool)

(assert (=> b!12166 (= e!6695 (head!501 xs!292))))

(declare-fun b!12167 () Bool)

(assert (=> b!12167 (= e!6695 (dynLambda!513 f!539 (head!501 xs!292) (foldRight1!116 (tail!513 xs!292) f!539)))))

(assert (= (and d!9377 c!3465) b!12166))

(assert (= (and d!9377 (not c!3465)) b!12167))

(declare-fun b_lambda!6631 () Bool)

(assert (=> (not b_lambda!6631) (not b!12167)))

(assert (=> b!12167 t!3713))

(declare-fun b_and!6423 () Bool)

(assert (= b_and!6421 (and (=> t!3713 result!3425) b_and!6423)))

(assert (=> b!12167 m!15087))

(assert (=> b!12167 m!15087))

(assert (=> b!12167 m!15107))

(assert (=> b!12145 d!9377))

(declare-fun d!9379 () Bool)

(declare-fun c!3466 () Bool)

(assert (=> d!9379 (= c!3466 (and (is-Cons!283 ys!54) (is-Nil!284 (tail!513 ys!54))))))

(declare-fun e!6696 () Balance!353)

(assert (=> d!9379 (= (foldRight1!116 ys!54 f!539) e!6696)))

(declare-fun b!12168 () Bool)

(assert (=> b!12168 (= e!6696 (head!501 ys!54))))

(declare-fun b!12169 () Bool)

(assert (=> b!12169 (= e!6696 (dynLambda!513 f!539 (head!501 ys!54) (foldRight1!116 (tail!513 ys!54) f!539)))))

(assert (= (and d!9379 c!3466) b!12168))

(assert (= (and d!9379 (not c!3466)) b!12169))

(declare-fun b_lambda!6633 () Bool)

(assert (=> (not b_lambda!6633) (not b!12169)))

(declare-fun t!3715 () Bool)

(declare-fun tb!3375 () Bool)

(assert (=> (and start!2438 (= f!539 f!539) t!3715) tb!3375))

(declare-fun result!3427 () Bool)

(assert (=> tb!3375 (= result!3427 true)))

(assert (=> b!12169 t!3715))

(declare-fun b_and!6425 () Bool)

(assert (= b_and!6423 (and (=> t!3715 result!3427) b_and!6425)))

(declare-fun m!15109 () Bool)

(assert (=> b!12169 m!15109))

(assert (=> b!12169 m!15109))

(declare-fun m!15111 () Bool)

(assert (=> b!12169 m!15111))

(assert (=> b!12145 d!9379))

(declare-fun d!9381 () Bool)

(declare-fun c!3467 () Bool)

(assert (=> d!9381 (= c!3467 (and (is-Cons!283 (append!135 xs!292 ys!54)) (is-Nil!284 (tail!513 (append!135 xs!292 ys!54)))))))

(declare-fun e!6697 () Balance!353)

(assert (=> d!9381 (= (foldRight1!116 (append!135 xs!292 ys!54) f!539) e!6697)))

(declare-fun b!12170 () Bool)

(assert (=> b!12170 (= e!6697 (head!501 (append!135 xs!292 ys!54)))))

(declare-fun b!12171 () Bool)

(assert (=> b!12171 (= e!6697 (dynLambda!513 f!539 (head!501 (append!135 xs!292 ys!54)) (foldRight1!116 (tail!513 (append!135 xs!292 ys!54)) f!539)))))

(assert (= (and d!9381 c!3467) b!12170))

(assert (= (and d!9381 (not c!3467)) b!12171))

(declare-fun b_lambda!6635 () Bool)

(assert (=> (not b_lambda!6635) (not b!12171)))

(declare-fun t!3717 () Bool)

(declare-fun tb!3377 () Bool)

(assert (=> (and start!2438 (= f!539 f!539) t!3717) tb!3377))

(declare-fun result!3429 () Bool)

(assert (=> tb!3377 (= result!3429 true)))

(assert (=> b!12171 t!3717))

(declare-fun b_and!6427 () Bool)

(assert (= b_and!6425 (and (=> t!3717 result!3429) b_and!6427)))

(declare-fun m!15113 () Bool)

(assert (=> b!12171 m!15113))

(assert (=> b!12171 m!15113))

(declare-fun m!15115 () Bool)

(assert (=> b!12171 m!15115))

(assert (=> b!12145 d!9381))

(declare-fun d!9383 () Bool)

(declare-fun c!3470 () Bool)

(assert (=> d!9383 (= c!3470 (is-Nil!284 xs!292))))

(declare-fun e!6700 () List!286)

(assert (=> d!9383 (= (append!135 xs!292 ys!54) e!6700)))

(declare-fun b!12176 () Bool)

(assert (=> b!12176 (= e!6700 ys!54)))

(declare-fun b!12177 () Bool)

(assert (=> b!12177 (= e!6700 (Cons!283 (head!501 xs!292) (append!135 (tail!513 xs!292) ys!54)))))

(assert (= (and d!9383 c!3470) b!12176))

(assert (= (and d!9383 (not c!3470)) b!12177))

(declare-fun m!15117 () Bool)

(assert (=> b!12177 m!15117))

(assert (=> b!12145 d!9383))

(declare-fun d!9385 () Bool)

(assert (=> d!9385 (= (isEmpty!214 ys!54) (is-Nil!284 ys!54))))

(assert (=> b!12146 d!9385))

(declare-fun d!9387 () Bool)

(assert (=> d!9387 (= (isEmpty!214 xs!292) (is-Nil!284 xs!292))))

(assert (=> start!2438 d!9387))

(declare-fun d!9389 () Bool)

(declare-fun res!4515 () Bool)

(declare-fun e!6703 () Bool)

(assert (=> d!9389 (=> (not res!4515) (not e!6703))))

(assert (=> d!9389 (= res!4515 (= (dynLambda!514 (x!6995 that!184)) (dynLambda!514 (y!665 that!184))))))

(assert (=> d!9389 (= (inv!410 that!184) e!6703)))

(declare-fun b!12180 () Bool)

(assert (=> b!12180 (= e!6703 (dynLambda!512 (evidence!207 that!184)))))

(assert (= (and d!9389 res!4515) b!12180))

(declare-fun b_lambda!6637 () Bool)

(assert (=> (not b_lambda!6637) (not d!9389)))

(assert (=> d!9389 t!3699))

(declare-fun b_and!6429 () Bool)

(assert (= b_and!6397 (and (=> t!3699 result!3411) b_and!6429)))

(assert (=> d!9389 t!3701))

(declare-fun b_and!6431 () Bool)

(assert (= b_and!6399 (and (=> t!3701 result!3413) b_and!6431)))

(assert (=> d!9389 t!3703))

(declare-fun b_and!6433 () Bool)

(assert (= b_and!6401 (and (=> t!3703 result!3415) b_and!6433)))

(assert (=> d!9389 t!3705))

(declare-fun b_and!6435 () Bool)

(assert (= b_and!6403 (and (=> t!3705 result!3417) b_and!6435)))

(declare-fun b_lambda!6639 () Bool)

(assert (=> (not b_lambda!6639) (not d!9389)))

(declare-fun t!3719 () Bool)

(declare-fun tb!3379 () Bool)

(assert (=> (and b!12148 (= (x!6995 that!184) (y!665 that!184)) t!3719) tb!3379))

(declare-fun result!3431 () Bool)

(assert (=> tb!3379 (= result!3431 true)))

(assert (=> d!9389 t!3719))

(declare-fun b_and!6437 () Bool)

(assert (= b_and!6429 (and (=> t!3719 result!3431) b_and!6437)))

(declare-fun t!3721 () Bool)

(declare-fun tb!3381 () Bool)

(assert (=> (and b!12148 (= (y!665 that!184) (y!665 that!184)) t!3721) tb!3381))

(declare-fun result!3433 () Bool)

(assert (=> tb!3381 (= result!3433 true)))

(assert (=> d!9389 t!3721))

(declare-fun b_and!6439 () Bool)

(assert (= b_and!6431 (and (=> t!3721 result!3433) b_and!6439)))

(declare-fun t!3723 () Bool)

(declare-fun tb!3383 () Bool)

(assert (=> (and b!12140 (= (x!6995 thiss!746) (y!665 that!184)) t!3723) tb!3383))

(declare-fun result!3435 () Bool)

(assert (=> tb!3383 (= result!3435 true)))

(assert (=> d!9389 t!3723))

(declare-fun b_and!6441 () Bool)

(assert (= b_and!6433 (and (=> t!3723 result!3435) b_and!6441)))

(declare-fun tb!3385 () Bool)

(declare-fun t!3725 () Bool)

(assert (=> (and b!12140 (= (y!665 thiss!746) (y!665 that!184)) t!3725) tb!3385))

(declare-fun result!3437 () Bool)

(assert (=> tb!3385 (= result!3437 true)))

(assert (=> d!9389 t!3725))

(declare-fun b_and!6443 () Bool)

(assert (= b_and!6435 (and (=> t!3725 result!3437) b_and!6443)))

(declare-fun b_lambda!6641 () Bool)

(assert (=> (not b_lambda!6641) (not b!12180)))

(declare-fun t!3727 () Bool)

(declare-fun tb!3387 () Bool)

(assert (=> (and b!12148 (= (evidence!207 that!184) (evidence!207 that!184)) t!3727) tb!3387))

(declare-fun result!3439 () Bool)

(assert (=> tb!3387 (= result!3439 true)))

(assert (=> b!12180 t!3727))

(declare-fun b_and!6445 () Bool)

(assert (= b_and!6383 (and (=> t!3727 result!3439) b_and!6445)))

(declare-fun tb!3389 () Bool)

(declare-fun t!3729 () Bool)

(assert (=> (and b!12140 (= (evidence!207 thiss!746) (evidence!207 that!184)) t!3729) tb!3389))

(declare-fun result!3441 () Bool)

(assert (=> tb!3389 (= result!3441 true)))

(assert (=> b!12180 t!3729))

(declare-fun b_and!6447 () Bool)

(assert (= b_and!6385 (and (=> t!3729 result!3441) b_and!6447)))

(assert (=> d!9389 m!15067))

(declare-fun m!15119 () Bool)

(assert (=> d!9389 m!15119))

(declare-fun m!15121 () Bool)

(assert (=> b!12180 m!15121))

(assert (=> start!2438 d!9389))

(declare-fun d!9391 () Bool)

(declare-fun res!4516 () Bool)

(declare-fun e!6704 () Bool)

(assert (=> d!9391 (=> (not res!4516) (not e!6704))))

(assert (=> d!9391 (= res!4516 (= (dynLambda!514 (x!6995 thiss!746)) (dynLambda!514 (y!665 thiss!746))))))

(assert (=> d!9391 (= (inv!410 thiss!746) e!6704)))

(declare-fun b!12181 () Bool)

(assert (=> b!12181 (= e!6704 (dynLambda!512 (evidence!207 thiss!746)))))

(assert (= (and d!9391 res!4516) b!12181))

(declare-fun b_lambda!6643 () Bool)

(assert (=> (not b_lambda!6643) (not d!9391)))

(declare-fun t!3731 () Bool)

(declare-fun tb!3391 () Bool)

(assert (=> (and b!12148 (= (x!6995 that!184) (x!6995 thiss!746)) t!3731) tb!3391))

(declare-fun result!3443 () Bool)

(assert (=> tb!3391 (= result!3443 true)))

(assert (=> d!9391 t!3731))

(declare-fun b_and!6449 () Bool)

(assert (= b_and!6437 (and (=> t!3731 result!3443) b_and!6449)))

(declare-fun t!3733 () Bool)

(declare-fun tb!3393 () Bool)

(assert (=> (and b!12148 (= (y!665 that!184) (x!6995 thiss!746)) t!3733) tb!3393))

(declare-fun result!3445 () Bool)

(assert (=> tb!3393 (= result!3445 true)))

(assert (=> d!9391 t!3733))

(declare-fun b_and!6451 () Bool)

(assert (= b_and!6439 (and (=> t!3733 result!3445) b_and!6451)))

(declare-fun t!3735 () Bool)

(declare-fun tb!3395 () Bool)

(assert (=> (and b!12140 (= (x!6995 thiss!746) (x!6995 thiss!746)) t!3735) tb!3395))

(declare-fun result!3447 () Bool)

(assert (=> tb!3395 (= result!3447 true)))

(assert (=> d!9391 t!3735))

(declare-fun b_and!6453 () Bool)

(assert (= b_and!6441 (and (=> t!3735 result!3447) b_and!6453)))

(declare-fun t!3737 () Bool)

(declare-fun tb!3397 () Bool)

(assert (=> (and b!12140 (= (y!665 thiss!746) (x!6995 thiss!746)) t!3737) tb!3397))

(declare-fun result!3449 () Bool)

(assert (=> tb!3397 (= result!3449 true)))

(assert (=> d!9391 t!3737))

(declare-fun b_and!6455 () Bool)

(assert (= b_and!6443 (and (=> t!3737 result!3449) b_and!6455)))

(declare-fun b_lambda!6645 () Bool)

(assert (=> (not b_lambda!6645) (not d!9391)))

(assert (=> d!9391 t!3691))

(declare-fun b_and!6457 () Bool)

(assert (= b_and!6449 (and (=> t!3691 result!3403) b_and!6457)))

(assert (=> d!9391 t!3693))

(declare-fun b_and!6459 () Bool)

(assert (= b_and!6451 (and (=> t!3693 result!3405) b_and!6459)))

(assert (=> d!9391 t!3695))

(declare-fun b_and!6461 () Bool)

(assert (= b_and!6453 (and (=> t!3695 result!3407) b_and!6461)))

(assert (=> d!9391 t!3697))

(declare-fun b_and!6463 () Bool)

(assert (= b_and!6455 (and (=> t!3697 result!3409) b_and!6463)))

(declare-fun b_lambda!6647 () Bool)

(assert (=> (not b_lambda!6647) (not b!12181)))

(assert (=> b!12181 t!3685))

(declare-fun b_and!6465 () Bool)

(assert (= b_and!6445 (and (=> t!3685 result!3397) b_and!6465)))

(assert (=> b!12181 t!3687))

(declare-fun b_and!6467 () Bool)

(assert (= b_and!6447 (and (=> t!3687 result!3399) b_and!6467)))

(declare-fun m!15123 () Bool)

(assert (=> d!9391 m!15123))

(assert (=> d!9391 m!15065))

(assert (=> b!12181 m!15063))

(assert (=> start!2438 d!9391))

(declare-fun b_lambda!6649 () Bool)

(assert (= b_lambda!6647 (or (and b!12144 (= lambda!3293 (evidence!207 thiss!746))) (and b!12147 (= lambda!3295 (evidence!207 thiss!746))) (and b!12148 b_free!1855 (= (evidence!207 that!184) (evidence!207 thiss!746))) (and b!12140 b_free!1861) b_lambda!6649)))

(assert (=> (and b!12144 (= lambda!3293 (evidence!207 thiss!746)) b!12181) d!9359))

(assert (=> (and b!12147 (= lambda!3295 (evidence!207 thiss!746)) b!12181) d!9361))

(declare-fun b_lambda!6651 () Bool)

(assert (= b_lambda!6645 (or (and b!12147 (= lambda!3294 (y!665 thiss!746))) (and b!12144 (= lambda!3290 (y!665 thiss!746))) (and b!12140 b_free!1857 (= (x!6995 thiss!746) (y!665 thiss!746))) (and b!12148 b_free!1851 (= (x!6995 that!184) (y!665 thiss!746))) (and b!12140 b_free!1859) (and b!12144 (= lambda!3292 (y!665 thiss!746))) (and b!12148 b_free!1853 (= (y!665 that!184) (y!665 thiss!746))) b_lambda!6651)))

(assert (=> (and b!12144 (= lambda!3290 (y!665 thiss!746)) d!9391) d!9353))

(assert (=> (and b!12144 (= lambda!3292 (y!665 thiss!746)) d!9391) d!9355))

(assert (=> (and b!12147 (= lambda!3294 (y!665 thiss!746)) d!9391) d!9357))

(declare-fun b_lambda!6653 () Bool)

(assert (= b_lambda!6629 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) b_lambda!6653)))

(declare-fun bs!3153 () Bool)

(declare-fun d!9393 () Bool)

(assert (= bs!3153 (and d!9393 b!12143)))

(assert (=> bs!3153 (= (dynLambda!513 lambda!3289 (head!501 xs!292) (foldRight1!116 (tail!513 xs!292) f!539)) (++!3 (head!501 xs!292) (foldRight1!116 (tail!513 xs!292) f!539)))))

(assert (=> bs!3153 m!15087))

(declare-fun m!15125 () Bool)

(assert (=> bs!3153 m!15125))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3152) d!9393))

(declare-fun b_lambda!6655 () Bool)

(assert (= b_lambda!6635 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) b_lambda!6655)))

(declare-fun bs!3154 () Bool)

(declare-fun d!9395 () Bool)

(assert (= bs!3154 (and d!9395 b!12143)))

(assert (=> bs!3154 (= (dynLambda!513 lambda!3289 (head!501 (append!135 xs!292 ys!54)) (foldRight1!116 (tail!513 (append!135 xs!292 ys!54)) f!539)) (++!3 (head!501 (append!135 xs!292 ys!54)) (foldRight1!116 (tail!513 (append!135 xs!292 ys!54)) f!539)))))

(assert (=> bs!3154 m!15113))

(declare-fun m!15127 () Bool)

(assert (=> bs!3154 m!15127))

(assert (=> (and b!12143 (= lambda!3289 f!539) b!12171) d!9395))

(declare-fun b_lambda!6657 () Bool)

(assert (= b_lambda!6633 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) b_lambda!6657)))

(declare-fun bs!3155 () Bool)

(declare-fun d!9397 () Bool)

(assert (= bs!3155 (and d!9397 b!12143)))

(assert (=> bs!3155 (= (dynLambda!513 lambda!3289 (head!501 ys!54) (foldRight1!116 (tail!513 ys!54) f!539)) (++!3 (head!501 ys!54) (foldRight1!116 (tail!513 ys!54) f!539)))))

(assert (=> bs!3155 m!15109))

(declare-fun m!15129 () Bool)

(assert (=> bs!3155 m!15129))

(assert (=> (and b!12143 (= lambda!3289 f!539) b!12169) d!9397))

(declare-fun b_lambda!6659 () Bool)

(assert (= b_lambda!6639 (or (and b!12140 b_free!1857 (= (x!6995 thiss!746) (y!665 that!184))) (and b!12148 b_free!1851 (= (x!6995 that!184) (y!665 that!184))) (and b!12144 (= lambda!3290 (y!665 that!184))) (and b!12144 (= lambda!3292 (y!665 that!184))) (and b!12148 b_free!1853) (and b!12147 (= lambda!3294 (y!665 that!184))) (and b!12140 b_free!1859 (= (y!665 thiss!746) (y!665 that!184))) b_lambda!6659)))

(declare-fun bs!3156 () Bool)

(declare-fun d!9399 () Bool)

(assert (= bs!3156 (and d!9399 b!12144)))

(assert (=> bs!3156 (= (dynLambda!514 lambda!3292) (dynLambda!513 f!539 (dynLambda!515 lambda!3291 (foldRight1!116 (tail!513 xs!292) f!539)) (foldRight1!116 ys!54 f!539)))))

(declare-fun b_lambda!6669 () Bool)

(assert (=> (not b_lambda!6669) (not bs!3156)))

(assert (=> bs!3156 t!3707))

(declare-fun b_and!6469 () Bool)

(assert (= b_and!6427 (and (=> t!3707 result!3419) b_and!6469)))

(declare-fun b_lambda!6671 () Bool)

(assert (=> (not b_lambda!6671) (not bs!3156)))

(assert (=> bs!3156 m!15087))

(assert (=> bs!3156 m!15087))

(assert (=> bs!3156 m!15089))

(assert (=> bs!3156 m!15089))

(assert (=> bs!3156 m!15079))

(assert (=> bs!3156 m!15091))

(assert (=> bs!3156 m!15079))

(assert (=> (and b!12144 (= lambda!3292 (y!665 that!184)) d!9389) d!9399))

(declare-fun bs!3157 () Bool)

(declare-fun d!9401 () Bool)

(assert (= bs!3157 (and d!9401 b!12147)))

(assert (=> bs!3157 (= (dynLambda!514 lambda!3294) (dynLambda!513 f!539 (head!501 xs!292) (dynLambda!513 f!539 (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539))))))

(declare-fun b_lambda!6673 () Bool)

(assert (=> (not b_lambda!6673) (not bs!3157)))

(assert (=> bs!3157 t!3709))

(declare-fun b_and!6471 () Bool)

(assert (= b_and!6469 (and (=> t!3709 result!3421) b_and!6471)))

(declare-fun b_lambda!6675 () Bool)

(assert (=> (not b_lambda!6675) (not bs!3157)))

(assert (=> bs!3157 t!3711))

(declare-fun b_and!6473 () Bool)

(assert (= b_and!6471 (and (=> t!3711 result!3423) b_and!6473)))

(assert (=> bs!3157 m!15087))

(assert (=> bs!3157 m!15093))

(assert (=> bs!3157 m!15095))

(assert (=> bs!3157 m!15079))

(assert (=> bs!3157 m!15087))

(assert (=> bs!3157 m!15079))

(assert (=> bs!3157 m!15093))

(assert (=> (and b!12147 (= lambda!3294 (y!665 that!184)) d!9389) d!9401))

(declare-fun bs!3158 () Bool)

(declare-fun d!9403 () Bool)

(assert (= bs!3158 (and d!9403 b!12144)))

(assert (=> bs!3158 (= (dynLambda!514 lambda!3290) (dynLambda!513 f!539 (foldRight1!116 xs!292 f!539) (foldRight1!116 ys!54 f!539)))))

(declare-fun b_lambda!6677 () Bool)

(assert (=> (not b_lambda!6677) (not bs!3158)))

(assert (=> bs!3158 t!3689))

(declare-fun b_and!6475 () Bool)

(assert (= b_and!6473 (and (=> t!3689 result!3401) b_and!6475)))

(assert (=> bs!3158 m!15077))

(assert (=> bs!3158 m!15079))

(assert (=> bs!3158 m!15077))

(assert (=> bs!3158 m!15079))

(assert (=> bs!3158 m!15081))

(assert (=> (and b!12144 (= lambda!3290 (y!665 that!184)) d!9389) d!9403))

(declare-fun b_lambda!6661 () Bool)

(assert (= b_lambda!6643 (or (and b!12140 b_free!1857) (and b!12140 b_free!1859 (= (y!665 thiss!746) (x!6995 thiss!746))) (and b!12148 b_free!1851 (= (x!6995 that!184) (x!6995 thiss!746))) (and b!12147 (= lambda!3294 (x!6995 thiss!746))) (and b!12148 b_free!1853 (= (y!665 that!184) (x!6995 thiss!746))) (and b!12144 (= lambda!3290 (x!6995 thiss!746))) (and b!12144 (= lambda!3292 (x!6995 thiss!746))) b_lambda!6661)))

(declare-fun bs!3159 () Bool)

(declare-fun d!9405 () Bool)

(assert (= bs!3159 (and d!9405 b!12147)))

(assert (=> bs!3159 (= (dynLambda!514 lambda!3294) (dynLambda!513 f!539 (head!501 xs!292) (dynLambda!513 f!539 (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539))))))

(declare-fun b_lambda!6679 () Bool)

(assert (=> (not b_lambda!6679) (not bs!3159)))

(assert (=> bs!3159 t!3709))

(declare-fun b_and!6477 () Bool)

(assert (= b_and!6475 (and (=> t!3709 result!3421) b_and!6477)))

(declare-fun b_lambda!6681 () Bool)

(assert (=> (not b_lambda!6681) (not bs!3159)))

(assert (=> bs!3159 t!3711))

(declare-fun b_and!6479 () Bool)

(assert (= b_and!6477 (and (=> t!3711 result!3423) b_and!6479)))

(assert (=> bs!3159 m!15087))

(assert (=> bs!3159 m!15093))

(assert (=> bs!3159 m!15095))

(assert (=> bs!3159 m!15079))

(assert (=> bs!3159 m!15087))

(assert (=> bs!3159 m!15079))

(assert (=> bs!3159 m!15093))

(assert (=> (and b!12147 (= lambda!3294 (x!6995 thiss!746)) d!9391) d!9405))

(declare-fun bs!3160 () Bool)

(declare-fun d!9407 () Bool)

(assert (= bs!3160 (and d!9407 b!12144)))

(assert (=> bs!3160 (= (dynLambda!514 lambda!3290) (dynLambda!513 f!539 (foldRight1!116 xs!292 f!539) (foldRight1!116 ys!54 f!539)))))

(declare-fun b_lambda!6683 () Bool)

(assert (=> (not b_lambda!6683) (not bs!3160)))

(assert (=> bs!3160 t!3689))

(declare-fun b_and!6481 () Bool)

(assert (= b_and!6479 (and (=> t!3689 result!3401) b_and!6481)))

(assert (=> bs!3160 m!15077))

(assert (=> bs!3160 m!15079))

(assert (=> bs!3160 m!15077))

(assert (=> bs!3160 m!15079))

(assert (=> bs!3160 m!15081))

(assert (=> (and b!12144 (= lambda!3290 (x!6995 thiss!746)) d!9391) d!9407))

(declare-fun bs!3161 () Bool)

(declare-fun d!9409 () Bool)

(assert (= bs!3161 (and d!9409 b!12144)))

(assert (=> bs!3161 (= (dynLambda!514 lambda!3292) (dynLambda!513 f!539 (dynLambda!515 lambda!3291 (foldRight1!116 (tail!513 xs!292) f!539)) (foldRight1!116 ys!54 f!539)))))

(declare-fun b_lambda!6685 () Bool)

(assert (=> (not b_lambda!6685) (not bs!3161)))

(assert (=> bs!3161 t!3707))

(declare-fun b_and!6483 () Bool)

(assert (= b_and!6481 (and (=> t!3707 result!3419) b_and!6483)))

(declare-fun b_lambda!6687 () Bool)

(assert (=> (not b_lambda!6687) (not bs!3161)))

(assert (=> bs!3161 m!15087))

(assert (=> bs!3161 m!15087))

(assert (=> bs!3161 m!15089))

(assert (=> bs!3161 m!15089))

(assert (=> bs!3161 m!15079))

(assert (=> bs!3161 m!15091))

(assert (=> bs!3161 m!15079))

(assert (=> (and b!12144 (= lambda!3292 (x!6995 thiss!746)) d!9391) d!9409))

(declare-fun b_lambda!6663 () Bool)

(assert (= b_lambda!6637 (or (and b!12144 (= lambda!3292 (x!6995 that!184))) (and b!12148 b_free!1851) (and b!12140 b_free!1857 (= (x!6995 thiss!746) (x!6995 that!184))) (and b!12144 (= lambda!3290 (x!6995 that!184))) (and b!12148 b_free!1853 (= (y!665 that!184) (x!6995 that!184))) (and b!12147 (= lambda!3294 (x!6995 that!184))) (and b!12140 b_free!1859 (= (y!665 thiss!746) (x!6995 that!184))) b_lambda!6663)))

(assert (=> (and b!12147 (= lambda!3294 (x!6995 that!184)) d!9389) d!9363))

(assert (=> (and b!12144 (= lambda!3290 (x!6995 that!184)) d!9389) d!9365))

(assert (=> (and b!12144 (= lambda!3292 (x!6995 that!184)) d!9389) d!9367))

(declare-fun b_lambda!6665 () Bool)

(assert (= b_lambda!6641 (or (and b!12144 (= lambda!3293 (evidence!207 that!184))) (and b!12147 (= lambda!3295 (evidence!207 that!184))) (and b!12148 b_free!1855) (and b!12140 b_free!1861 (= (evidence!207 thiss!746) (evidence!207 that!184))) b_lambda!6665)))

(declare-fun bs!3162 () Bool)

(declare-fun d!9411 () Bool)

(assert (= bs!3162 (and d!9411 b!12144)))

(assert (=> bs!3162 (= (dynLambda!512 lambda!3293) (append_is_associative!0 (head!501 xs!292) (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539)))))

(assert (=> bs!3162 m!15087))

(assert (=> bs!3162 m!15079))

(assert (=> bs!3162 m!15087))

(assert (=> bs!3162 m!15079))

(assert (=> bs!3162 m!15097))

(assert (=> (and b!12144 (= lambda!3293 (evidence!207 that!184)) b!12180) d!9411))

(declare-fun bs!3163 () Bool)

(declare-fun d!9413 () Bool)

(assert (= bs!3163 (and d!9413 b!12147)))

(assert (=> bs!3163 (= (dynLambda!512 lambda!3295) (append!24 (tail!513 xs!292) ys!54))))

(assert (=> bs!3163 m!15099))

(assert (=> (and b!12147 (= lambda!3295 (evidence!207 that!184)) b!12180) d!9413))

(declare-fun b_lambda!6667 () Bool)

(assert (= b_lambda!6631 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) b_lambda!6667)))

(assert (=> (and b!12143 (= lambda!3289 f!539) b!12167) d!9393))

(push 1)

(assert (not bs!3143))

(assert (not b_lambda!6651))

(assert (not b_lambda!6621))

(assert (not b_lambda!6615))

(assert (not bs!3159))

(assert (not b_lambda!6581))

(assert (not b_lambda!6613))

(assert b_and!6457)

(assert (not b_lambda!6673))

(assert (not b_lambda!6659))

(assert b_and!6463)

(assert (not b!12177))

(assert (not b_lambda!6623))

(assert (not b_lambda!6657))

(assert (not b_lambda!6653))

(assert (not b_lambda!6619))

(assert (not bs!3155))

(assert (not b!12169))

(assert (not b_lambda!6683))

(assert (not b_lambda!6669))

(assert (not b_lambda!6675))

(assert (not b_next!4383))

(assert (not b_lambda!6585))

(assert (not b_lambda!6627))

(assert (not b_lambda!6617))

(assert (not b_lambda!6679))

(assert (not b_lambda!6671))

(assert (not b_next!4393))

(assert (not bs!3141))

(assert (not b_lambda!6661))

(assert (not bs!3144))

(assert (not bs!3161))

(assert (not bs!3150))

(assert (not bs!3162))

(assert (not b_lambda!6649))

(assert b_and!6467)

(assert (not b_next!4391))

(assert (not b_lambda!6685))

(assert (not b_lambda!6681))

(assert (not bs!3148))

(assert (not b_lambda!6587))

(assert (not bs!3157))

(assert b_and!6465)

(assert (not bs!3145))

(assert (not b!12171))

(assert (not bs!3151))

(assert (not b_lambda!6625))

(assert (not bs!3154))

(assert (not bs!3146))

(assert (not b_lambda!6667))

(assert (not b_lambda!6665))

(assert b_and!6461)

(assert (not b_lambda!6663))

(assert (not bs!3158))

(assert (not bs!3156))

(assert (not bs!3140))

(assert (not bs!3147))

(assert (not bs!3142))

(assert (not bs!3153))

(assert b_and!6483)

(assert b_and!6459)

(assert (not bs!3160))

(assert (not b_lambda!6611))

(assert (not b_lambda!6677))

(assert (not b_next!4389))

(assert (not bs!3149))

(assert (not b_lambda!6655))

(assert (not b_lambda!6583))

(assert (not b!12167))

(assert (not b_next!4361))

(assert (not b_next!4387))

(assert (not b_lambda!6609))

(assert (not b_lambda!6687))

(assert (not b_next!4385))

(assert (not bs!3163))

(check-sat)

(pop 1)

(push 1)

(assert b_and!6457)

(assert b_and!6463)

(assert (not b_next!4383))

(assert (not b_next!4393))

(assert b_and!6467)

(assert (not b_next!4391))

(assert b_and!6465)

(assert b_and!6461)

(assert b_and!6483)

(assert b_and!6459)

(assert (not b_next!4389))

(assert (not b_next!4361))

(assert (not b_next!4387))

(assert (not b_next!4385))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!3164 () Bool)

(declare-fun d!9415 () Bool)

(assert (= bs!3164 (and d!9415 b!12143)))

(declare-fun lambda!3298 () Int)

(assert (=> bs!3164 (= lambda!3298 lambda!3289)))

(declare-fun b_next!4395 () Bool)

(assert (=> start!2438 (= b_next!4361 (or (and d!9415 (= lambda!3298 f!539)) b_next!4395))))

(declare-fun because!2 (ProofOps!272 Bool) Bool)

(assert (=> d!9415 (because!2 (ProofOps!273 (= (++!3 (foldRight1!116 (tail!513 xs!292) lambda!3298) (foldRight1!116 ys!54 lambda!3298)) (foldRight1!116 (append!135 (tail!513 xs!292) ys!54) lambda!3298))) true)))

(assert (=> d!9415 (= (++!3 (foldRight1!116 (tail!513 xs!292) lambda!3298) (foldRight1!116 ys!54 lambda!3298)) (foldRight1!116 (append!135 (tail!513 xs!292) ys!54) lambda!3298))))

(declare-fun e!6707 () Bool)

(assert (=> d!9415 e!6707))

(declare-fun res!4525 () Bool)

(assert (=> d!9415 (=> (not res!4525) (not e!6707))))

(assert (=> d!9415 (= res!4525 (not (isEmpty!214 (tail!513 xs!292))))))

(assert (=> d!9415 (= (append!24 (tail!513 xs!292) ys!54) true)))

(declare-fun b!12184 () Bool)

(assert (=> b!12184 (= e!6707 (not (isEmpty!214 ys!54)))))

(assert (= (and d!9415 res!4525) b!12184))

(declare-fun m!15131 () Bool)

(assert (=> d!9415 m!15131))

(declare-fun m!15133 () Bool)

(assert (=> d!9415 m!15133))

(declare-fun m!15135 () Bool)

(assert (=> d!9415 m!15135))

(declare-fun m!15137 () Bool)

(assert (=> d!9415 m!15137))

(assert (=> d!9415 m!15133))

(assert (=> d!9415 m!15117))

(assert (=> d!9415 m!15117))

(declare-fun m!15139 () Bool)

(assert (=> d!9415 m!15139))

(assert (=> d!9415 m!15135))

(declare-fun m!15141 () Bool)

(assert (=> d!9415 m!15141))

(assert (=> b!12184 m!15061))

(assert (=> bs!3145 d!9415))

(assert (=> bs!3141 d!9377))

(assert (=> bs!3141 d!9379))

(declare-fun lt!1794 () Int)

(declare-fun d!9417 () Bool)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!9417 (= lt!1794 (min!4 (extraOpen!217 (foldRight1!116 xs!292 f!539)) (extraClose!217 (foldRight1!116 ys!54 f!539))))))

(assert (=> d!9417 (= (++!3 (foldRight1!116 xs!292 f!539) (foldRight1!116 ys!54 f!539)) (Balance!354 (- (+ (extraOpen!217 (foldRight1!116 xs!292 f!539)) (extraOpen!217 (foldRight1!116 ys!54 f!539))) lt!1794) (- (+ (extraClose!217 (foldRight1!116 xs!292 f!539)) (extraClose!217 (foldRight1!116 ys!54 f!539))) lt!1794)))))

(declare-fun bs!3165 () Bool)

(assert (= bs!3165 d!9417))

(declare-fun m!15143 () Bool)

(assert (=> bs!3165 m!15143))

(assert (=> bs!3140 d!9417))

(declare-fun d!9419 () Bool)

(declare-fun c!3471 () Bool)

(assert (=> d!9419 (= c!3471 (and (is-Cons!283 (tail!513 xs!292)) (is-Nil!284 (tail!513 (tail!513 xs!292)))))))

(declare-fun e!6708 () Balance!353)

(assert (=> d!9419 (= (foldRight1!116 (tail!513 xs!292) f!539) e!6708)))

(declare-fun b!12185 () Bool)

(assert (=> b!12185 (= e!6708 (head!501 (tail!513 xs!292)))))

(declare-fun b!12186 () Bool)

(assert (=> b!12186 (= e!6708 (dynLambda!513 f!539 (head!501 (tail!513 xs!292)) (foldRight1!116 (tail!513 (tail!513 xs!292)) f!539)))))

(assert (= (and d!9419 c!3471) b!12185))

(assert (= (and d!9419 (not c!3471)) b!12186))

(declare-fun b_lambda!6689 () Bool)

(assert (=> (not b_lambda!6689) (not b!12186)))

(declare-fun t!3739 () Bool)

(declare-fun tb!3399 () Bool)

(assert (=> (and start!2438 (= f!539 f!539) t!3739) tb!3399))

(declare-fun result!3451 () Bool)

(assert (=> tb!3399 (= result!3451 true)))

(assert (=> b!12186 t!3739))

(declare-fun b_and!6485 () Bool)

(assert (= b_and!6483 (and (=> t!3739 result!3451) b_and!6485)))

(declare-fun m!15145 () Bool)

(assert (=> b!12186 m!15145))

(assert (=> b!12186 m!15145))

(declare-fun m!15147 () Bool)

(assert (=> b!12186 m!15147))

(assert (=> bs!3142 d!9419))

(assert (=> bs!3142 d!9379))

(assert (=> bs!3143 d!9419))

(assert (=> bs!3143 d!9379))

(declare-fun d!9421 () Bool)

(assert (=> d!9421 (= (++!3 (head!501 xs!292) (++!3 (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539))) (++!3 (++!3 (head!501 xs!292) (foldRight1!116 (tail!513 xs!292) f!539)) (foldRight1!116 ys!54 f!539)))))

(assert (=> d!9421 (= (append_is_associative!0 (head!501 xs!292) (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539)) true)))

(declare-fun bs!3166 () Bool)

(assert (= bs!3166 d!9421))

(assert (=> bs!3166 m!15087))

(assert (=> bs!3166 m!15079))

(assert (=> bs!3166 m!15105))

(assert (=> bs!3166 m!15105))

(declare-fun m!15149 () Bool)

(assert (=> bs!3166 m!15149))

(assert (=> bs!3166 m!15087))

(assert (=> bs!3166 m!15125))

(assert (=> bs!3166 m!15125))

(assert (=> bs!3166 m!15079))

(declare-fun m!15151 () Bool)

(assert (=> bs!3166 m!15151))

(assert (=> bs!3144 d!9421))

(assert (=> bs!3144 d!9419))

(assert (=> bs!3144 d!9379))

(assert (=> bs!3147 d!9377))

(assert (=> bs!3147 d!9379))

(assert (=> bs!3148 d!9419))

(assert (=> bs!3148 d!9379))

(assert (=> bs!3146 d!9419))

(assert (=> bs!3146 d!9379))

(declare-fun b_lambda!6691 () Bool)

(assert (= b_lambda!6673 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) (and d!9415 (= lambda!3298 f!539)) b_lambda!6691)))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3157) d!9371))

(declare-fun bs!3167 () Bool)

(declare-fun d!9423 () Bool)

(assert (= bs!3167 (and d!9423 d!9415)))

(assert (=> bs!3167 (= (dynLambda!513 lambda!3298 (head!501 xs!292) (dynLambda!513 f!539 (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539))) (++!3 (head!501 xs!292) (dynLambda!513 f!539 (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539))))))

(assert (=> bs!3167 m!15093))

(assert (=> bs!3167 m!15103))

(assert (=> (and d!9415 (= lambda!3298 f!539) bs!3157) d!9423))

(declare-fun b_lambda!6693 () Bool)

(assert (= b_lambda!6689 (or (and b!12143 (= lambda!3289 f!539)) (and d!9415 (= lambda!3298 f!539)) (and start!2438 b_free!1849) b_lambda!6693)))

(declare-fun bs!3168 () Bool)

(declare-fun d!9425 () Bool)

(assert (= bs!3168 (and d!9425 b!12143)))

(assert (=> bs!3168 (= (dynLambda!513 lambda!3289 (head!501 (tail!513 xs!292)) (foldRight1!116 (tail!513 (tail!513 xs!292)) f!539)) (++!3 (head!501 (tail!513 xs!292)) (foldRight1!116 (tail!513 (tail!513 xs!292)) f!539)))))

(assert (=> bs!3168 m!15145))

(declare-fun m!15153 () Bool)

(assert (=> bs!3168 m!15153))

(assert (=> (and b!12143 (= lambda!3289 f!539) b!12186) d!9425))

(declare-fun bs!3169 () Bool)

(declare-fun d!9427 () Bool)

(assert (= bs!3169 (and d!9427 d!9415)))

(assert (=> bs!3169 (= (dynLambda!513 lambda!3298 (head!501 (tail!513 xs!292)) (foldRight1!116 (tail!513 (tail!513 xs!292)) f!539)) (++!3 (head!501 (tail!513 xs!292)) (foldRight1!116 (tail!513 (tail!513 xs!292)) f!539)))))

(assert (=> bs!3169 m!15145))

(assert (=> bs!3169 m!15153))

(assert (=> (and d!9415 (= lambda!3298 f!539) b!12186) d!9427))

(declare-fun b_lambda!6695 () Bool)

(assert (= b_lambda!6679 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) (and d!9415 (= lambda!3298 f!539)) b_lambda!6695)))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3159) d!9371))

(assert (=> (and d!9415 (= lambda!3298 f!539) bs!3159) d!9423))

(declare-fun b_lambda!6697 () Bool)

(assert (= b_lambda!6671 (or b!12144 b_lambda!6697)))

(assert (=> bs!3156 d!9375))

(declare-fun b_lambda!6699 () Bool)

(assert (= b_lambda!6677 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) (and d!9415 (= lambda!3298 f!539)) b_lambda!6699)))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3158) d!9351))

(declare-fun bs!3170 () Bool)

(declare-fun d!9429 () Bool)

(assert (= bs!3170 (and d!9429 d!9415)))

(assert (=> bs!3170 (= (dynLambda!513 lambda!3298 (foldRight1!116 xs!292 f!539) (foldRight1!116 ys!54 f!539)) (++!3 (foldRight1!116 xs!292 f!539) (foldRight1!116 ys!54 f!539)))))

(assert (=> bs!3170 m!15077))

(assert (=> bs!3170 m!15079))

(assert (=> bs!3170 m!15085))

(assert (=> (and d!9415 (= lambda!3298 f!539) bs!3158) d!9429))

(declare-fun b_lambda!6701 () Bool)

(assert (= b_lambda!6687 (or b!12144 b_lambda!6701)))

(assert (=> bs!3161 d!9375))

(declare-fun b_lambda!6703 () Bool)

(assert (= b_lambda!6675 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) (and d!9415 (= lambda!3298 f!539)) b_lambda!6703)))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3157) d!9373))

(declare-fun bs!3171 () Bool)

(declare-fun d!9431 () Bool)

(assert (= bs!3171 (and d!9431 d!9415)))

(assert (=> bs!3171 (= (dynLambda!513 lambda!3298 (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539)) (++!3 (foldRight1!116 (tail!513 xs!292) f!539) (foldRight1!116 ys!54 f!539)))))

(assert (=> bs!3171 m!15087))

(assert (=> bs!3171 m!15079))

(assert (=> bs!3171 m!15105))

(assert (=> (and d!9415 (= lambda!3298 f!539) bs!3157) d!9431))

(declare-fun b_lambda!6705 () Bool)

(assert (= b_lambda!6685 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) (and d!9415 (= lambda!3298 f!539)) b_lambda!6705)))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3161) d!9369))

(declare-fun bs!3172 () Bool)

(declare-fun d!9433 () Bool)

(assert (= bs!3172 (and d!9433 d!9415)))

(assert (=> bs!3172 (= (dynLambda!513 lambda!3298 (dynLambda!515 lambda!3291 (foldRight1!116 (tail!513 xs!292) f!539)) (foldRight1!116 ys!54 f!539)) (++!3 (dynLambda!515 lambda!3291 (foldRight1!116 (tail!513 xs!292) f!539)) (foldRight1!116 ys!54 f!539)))))

(assert (=> bs!3172 m!15089))

(assert (=> bs!3172 m!15079))

(assert (=> bs!3172 m!15101))

(assert (=> (and d!9415 (= lambda!3298 f!539) bs!3161) d!9433))

(declare-fun b_lambda!6707 () Bool)

(assert (= b_lambda!6669 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) (and d!9415 (= lambda!3298 f!539)) b_lambda!6707)))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3156) d!9369))

(assert (=> (and d!9415 (= lambda!3298 f!539) bs!3156) d!9433))

(declare-fun b_lambda!6709 () Bool)

(assert (= b_lambda!6683 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) (and d!9415 (= lambda!3298 f!539)) b_lambda!6709)))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3160) d!9351))

(assert (=> (and d!9415 (= lambda!3298 f!539) bs!3160) d!9429))

(declare-fun b_lambda!6711 () Bool)

(assert (= b_lambda!6681 (or (and b!12143 (= lambda!3289 f!539)) (and start!2438 b_free!1849) (and d!9415 (= lambda!3298 f!539)) b_lambda!6711)))

(assert (=> (and b!12143 (= lambda!3289 f!539) bs!3159) d!9373))

(assert (=> (and d!9415 (= lambda!3298 f!539) bs!3159) d!9431))

(push 1)

(assert (not b_lambda!6695))

(assert (not b_lambda!6651))

(assert (not d!9421))

(assert b_and!6485)

(assert (not b_lambda!6621))

(assert (not b_lambda!6703))

(assert (not b_lambda!6615))

(assert (not bs!3159))

(assert (not b_lambda!6581))

(assert (not b_lambda!6613))

(assert (not b_lambda!6705))

(assert b_and!6457)

(assert (not b!12186))

(assert (not b_lambda!6659))

(assert b_and!6463)

(assert (not b!12177))

(assert (not b_lambda!6623))

(assert (not b_lambda!6657))

(assert (not d!9415))

(assert (not b_lambda!6653))

(assert (not b_lambda!6619))

(assert (not bs!3168))

(assert (not b_lambda!6709))

(assert (not bs!3155))

(assert (not b!12169))

(assert (not b_next!4383))

(assert (not b_lambda!6585))

(assert (not b_lambda!6627))

(assert (not b_lambda!6617))

(assert (not b_next!4393))

(assert (not b_lambda!6661))

(assert (not b_lambda!6697))

(assert (not bs!3161))

(assert (not b_lambda!6691))

(assert (not bs!3150))

(assert (not bs!3162))

(assert (not b_lambda!6649))

(assert b_and!6467)

(assert (not b_next!4391))

(assert (not b!12184))

(assert (not b_lambda!6699))

(assert (not b_lambda!6587))

(assert (not bs!3167))

(assert (not bs!3172))

(assert (not bs!3157))

(assert b_and!6465)

(assert (not b_lambda!6707))

(assert (not b!12171))

(assert (not bs!3151))

(assert (not b_lambda!6625))

(assert (not b_next!4395))

(assert (not b_lambda!6693))

(assert (not bs!3154))

(assert (not b_lambda!6667))

(assert (not b_lambda!6665))

(assert b_and!6461)

(assert (not b_lambda!6663))

(assert (not b_lambda!6701))

(assert (not bs!3158))

(assert (not b_lambda!6711))

(assert (not bs!3156))

(assert (not bs!3171))

(assert (not bs!3153))

(assert b_and!6459)

(assert (not bs!3160))

(assert (not b_lambda!6611))

(assert (not b_next!4389))

(assert (not bs!3149))

(assert (not b_lambda!6655))

(assert (not b_lambda!6583))

(assert (not d!9417))

(assert (not bs!3170))

(assert (not b!12167))

(assert (not b_next!4387))

(assert (not b_lambda!6609))

(assert (not bs!3169))

(assert (not b_next!4385))

(assert (not bs!3163))

(check-sat)

(pop 1)

(push 1)

(assert b_and!6485)

(assert b_and!6457)

(assert b_and!6463)

(assert (not b_next!4383))

(assert (not b_next!4393))

(assert b_and!6467)

(assert (not b_next!4391))

(assert b_and!6465)

(assert (not b_next!4395))

(assert b_and!6461)

(assert b_and!6459)

(assert (not b_next!4389))

(assert (not b_next!4387))

(assert (not b_next!4385))

(check-sat)

(pop 1)


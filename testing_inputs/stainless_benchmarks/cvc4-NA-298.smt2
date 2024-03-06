; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2264 () Bool)

(assert start!2264)

(declare-fun b_free!1545 () Bool)

(declare-fun b_next!3721 () Bool)

(assert (=> start!2264 (= b_free!1545 (not b_next!3721))))

(declare-fun tp!2487 () Bool)

(declare-fun b_and!5363 () Bool)

(assert (=> start!2264 (= tp!2487 b_and!5363)))

(declare-fun b!11343 () Bool)

(declare-fun b_free!1547 () Bool)

(declare-fun b_next!3723 () Bool)

(assert (=> b!11343 (= b_free!1547 (not b_next!3723))))

(declare-fun tp!2483 () Bool)

(declare-fun b_and!5365 () Bool)

(assert (=> b!11343 (= tp!2483 b_and!5365)))

(declare-fun b_free!1549 () Bool)

(declare-fun b_next!3725 () Bool)

(assert (=> b!11343 (= b_free!1549 (not b_next!3725))))

(declare-fun tp!2488 () Bool)

(declare-fun b_and!5367 () Bool)

(assert (=> b!11343 (= tp!2488 b_and!5367)))

(declare-fun b_free!1551 () Bool)

(declare-fun b_next!3727 () Bool)

(assert (=> b!11343 (= b_free!1551 (not b_next!3727))))

(declare-fun tp!2486 () Bool)

(declare-fun b_and!5369 () Bool)

(assert (=> b!11343 (= tp!2486 b_and!5369)))

(declare-fun b!11335 () Bool)

(declare-fun b_free!1553 () Bool)

(declare-fun b_next!3729 () Bool)

(assert (=> b!11335 (= b_free!1553 (not b_next!3729))))

(declare-fun tp!2485 () Bool)

(declare-fun b_and!5371 () Bool)

(assert (=> b!11335 (= tp!2485 b_and!5371)))

(declare-fun b_free!1555 () Bool)

(declare-fun b_next!3731 () Bool)

(assert (=> b!11335 (= b_free!1555 (not b_next!3731))))

(declare-fun tp!2484 () Bool)

(declare-fun b_and!5373 () Bool)

(assert (=> b!11335 (= tp!2484 b_and!5373)))

(declare-fun f!539 () Int)

(declare-fun lambda!3033 () Int)

(declare-fun b!11341 () Bool)

(declare-fun b_next!3733 () Bool)

(assert (=> start!2264 (= b_next!3721 (or (and b!11341 (= lambda!3033 f!539)) b_next!3733))))

(declare-fun b!11334 () Bool)

(assert (=> b!11334 true))

(declare-fun order!233 () Int)

(declare-fun lambda!3034 () Int)

(declare-fun order!231 () Int)

(declare-fun dynLambda!420 (Int Int) Int)

(declare-fun dynLambda!421 (Int Int) Int)

(assert (=> b!11334 (< (dynLambda!420 order!231 f!539) (dynLambda!421 order!233 lambda!3034))))

(assert (=> b!11334 true))

(assert (=> b!11334 true))

(declare-datatypes () ((Balance!305 (Balance!306 (extraOpen!193 Int) (extraClose!193 Int)))))

(declare-datatypes () ((EqEvidence!236 (EqEvidence!237 (x!6454 Int) (y!633 Int) (evidence!185 Int)))))

(declare-fun thiss!746 () EqEvidence!236)

(declare-fun b_next!3735 () Bool)

(assert (=> b!11343 (= b_next!3723 (or (and b!11334 (= lambda!3034 (x!6454 thiss!746))) b_next!3735))))

(declare-fun b_next!3737 () Bool)

(assert (=> b!11343 (= b_next!3725 (or (and b!11334 (= lambda!3034 (y!633 thiss!746))) b_next!3737))))

(declare-fun b_next!3739 () Bool)

(declare-datatypes () ((EqProof!112 (EqProof!113 (x!6455 Int) (y!634 Int)))))

(declare-fun thiss!766 () EqProof!112)

(assert (=> b!11335 (= b_next!3729 (or (and b!11334 (= lambda!3034 (x!6455 thiss!766))) b_next!3739))))

(declare-fun b_next!3741 () Bool)

(assert (=> b!11335 (= b_next!3731 (or (and b!11334 (= lambda!3034 (y!634 thiss!766))) b_next!3741))))

(assert (=> b!11334 true))

(declare-fun order!235 () Int)

(declare-fun lambda!3035 () Int)

(declare-fun dynLambda!422 (Int Int) Int)

(assert (=> b!11334 (< (dynLambda!420 order!231 f!539) (dynLambda!422 order!235 lambda!3035))))

(assert (=> b!11334 true))

(declare-fun lambda!3036 () Int)

(assert (=> b!11334 (not (= lambda!3036 lambda!3034))))

(assert (=> b!11334 true))

(assert (=> b!11334 (< (dynLambda!420 order!231 f!539) (dynLambda!421 order!233 lambda!3036))))

(assert (=> b!11334 true))

(assert (=> b!11334 true))

(declare-fun b_next!3743 () Bool)

(assert (=> b!11343 (= b_next!3735 (or (and b!11334 (= lambda!3036 (x!6454 thiss!746))) b_next!3743))))

(declare-fun b_next!3745 () Bool)

(assert (=> b!11343 (= b_next!3737 (or (and b!11334 (= lambda!3036 (y!633 thiss!746))) b_next!3745))))

(declare-fun b_next!3747 () Bool)

(assert (=> b!11335 (= b_next!3739 (or (and b!11334 (= lambda!3036 (x!6455 thiss!766))) b_next!3747))))

(declare-fun b_next!3749 () Bool)

(assert (=> b!11335 (= b_next!3741 (or (and b!11334 (= lambda!3036 (y!634 thiss!766))) b_next!3749))))

(assert (=> b!11334 true))

(declare-fun order!237 () Int)

(declare-fun lambda!3037 () Int)

(declare-fun dynLambda!423 (Int Int) Int)

(assert (=> b!11334 (< (dynLambda!420 order!231 f!539) (dynLambda!423 order!237 lambda!3037))))

(assert (=> b!11334 true))

(assert (=> b!11334 true))

(declare-fun b_next!3751 () Bool)

(assert (=> b!11343 (= b_next!3727 (or (and b!11334 (= lambda!3037 (evidence!185 thiss!746))) b_next!3751))))

(declare-fun bs!2897 () Bool)

(declare-fun b!11342 () Bool)

(assert (= bs!2897 (and b!11342 b!11334)))

(declare-fun lambda!3038 () Int)

(assert (=> bs!2897 (not (= lambda!3038 lambda!3034))))

(assert (=> bs!2897 (not (= lambda!3038 lambda!3036))))

(assert (=> b!11342 true))

(assert (=> b!11342 (< (dynLambda!420 order!231 f!539) (dynLambda!421 order!233 lambda!3038))))

(assert (=> b!11342 true))

(assert (=> b!11342 true))

(declare-fun b_next!3753 () Bool)

(assert (=> b!11343 (= b_next!3743 (or (and b!11342 (= lambda!3038 (x!6454 thiss!746))) b_next!3753))))

(declare-fun b_next!3755 () Bool)

(assert (=> b!11343 (= b_next!3745 (or (and b!11342 (= lambda!3038 (y!633 thiss!746))) b_next!3755))))

(declare-fun b_next!3757 () Bool)

(assert (=> b!11335 (= b_next!3747 (or (and b!11342 (= lambda!3038 (x!6455 thiss!766))) b_next!3757))))

(declare-fun b_next!3759 () Bool)

(assert (=> b!11335 (= b_next!3749 (or (and b!11342 (= lambda!3038 (y!634 thiss!766))) b_next!3759))))

(declare-fun res!4144 () Bool)

(declare-fun e!6389 () Bool)

(assert (=> b!11334 (=> (not res!4144) (not e!6389))))

(assert (=> b!11334 (= res!4144 (= thiss!746 (EqEvidence!237 lambda!3034 lambda!3036 lambda!3037)))))

(declare-fun e!6392 () Bool)

(assert (=> b!11335 (= e!6392 (and tp!2485 tp!2484))))

(declare-fun res!4140 () Bool)

(assert (=> start!2264 (=> (not res!4140) (not e!6389))))

(declare-datatypes () ((List!272 (Nil!270) (Cons!269 (head!487 Balance!305) (tail!499 List!272)))))

(declare-fun xs!292 () List!272)

(declare-fun isEmpty!200 (List!272) Bool)

(assert (=> start!2264 (= res!4140 (not (isEmpty!200 xs!292)))))

(assert (=> start!2264 e!6389))

(assert (=> start!2264 true))

(assert (=> start!2264 tp!2487))

(declare-fun e!6390 () Bool)

(declare-fun inv!378 (EqEvidence!236) Bool)

(assert (=> start!2264 (and (inv!378 thiss!746) e!6390)))

(declare-fun inv!379 (EqProof!112) Bool)

(assert (=> start!2264 (and (inv!379 thiss!766) e!6392)))

(declare-fun b!11336 () Bool)

(declare-fun res!4137 () Bool)

(assert (=> b!11336 (=> (not res!4137) (not e!6389))))

(declare-fun xs!315 () List!272)

(declare-fun ys!55 () List!272)

(declare-fun ys!54 () List!272)

(assert (=> b!11336 (= res!4137 (and (= xs!315 (tail!499 xs!292)) (= ys!55 ys!54)))))

(declare-fun b!11337 () Bool)

(declare-fun res!4141 () Bool)

(assert (=> b!11337 (=> (not res!4141) (not e!6389))))

(assert (=> b!11337 (= res!4141 (not (isEmpty!200 ys!54)))))

(declare-fun b!11338 () Bool)

(declare-fun res!4139 () Bool)

(assert (=> b!11338 (=> (not res!4139) (not e!6389))))

(declare-datatypes () ((ProofOps!244 (ProofOps!245 (prop!255 Bool)))))

(declare-fun thiss!710 () ProofOps!244)

(declare-fun dynLambda!424 (Int Balance!305 Balance!305) Balance!305)

(declare-fun foldRight1!102 (List!272 Int) Balance!305)

(declare-fun append!121 (List!272 List!272) List!272)

(assert (=> b!11338 (= res!4139 (= thiss!710 (ProofOps!245 (= (dynLambda!424 f!539 (foldRight1!102 xs!292 f!539) (foldRight1!102 ys!54 f!539)) (foldRight1!102 (append!121 xs!292 ys!54) f!539)))))))

(declare-fun b!11339 () Bool)

(declare-fun e!6391 () Bool)

(assert (=> b!11339 (= e!6389 e!6391)))

(declare-fun res!4145 () Bool)

(assert (=> b!11339 (=> res!4145 e!6391)))

(assert (=> b!11339 (= res!4145 (isEmpty!200 xs!315))))

(declare-fun b!11340 () Bool)

(declare-fun res!4138 () Bool)

(assert (=> b!11340 (=> (not res!4138) (not e!6389))))

(assert (=> b!11340 (= res!4138 (or (not (is-Cons!269 xs!292)) (not (is-Nil!270 (tail!499 xs!292)))))))

(declare-fun res!4143 () Bool)

(assert (=> b!11341 (=> (not res!4143) (not e!6389))))

(assert (=> b!11341 (= res!4143 (= f!539 lambda!3033))))

(declare-fun res!4142 () Bool)

(assert (=> b!11342 (=> (not res!4142) (not e!6389))))

(assert (=> b!11342 (= res!4142 (= thiss!766 (EqProof!113 lambda!3038 lambda!3038)))))

(assert (=> b!11343 (= e!6390 (and tp!2483 tp!2488 tp!2486))))

(declare-fun b!11344 () Bool)

(assert (=> b!11344 (= e!6391 (isEmpty!200 ys!55))))

(assert (= (and start!2264 res!4140) b!11337))

(assert (= (and b!11337 res!4141) b!11341))

(assert (= (and b!11341 res!4143) b!11338))

(assert (= (and b!11338 res!4139) b!11340))

(assert (= (and b!11340 res!4138) b!11334))

(assert (= (and b!11334 res!4144) b!11342))

(assert (= (and b!11342 res!4142) b!11336))

(assert (= (and b!11336 res!4137) b!11339))

(assert (= (and b!11339 (not res!4145)) b!11344))

(assert (= start!2264 b!11343))

(assert (= start!2264 b!11335))

(declare-fun b_lambda!5831 () Bool)

(assert (=> (not b_lambda!5831) (not b!11338)))

(declare-fun t!3175 () Bool)

(declare-fun tb!2835 () Bool)

(assert (=> (and start!2264 (= f!539 f!539) t!3175) tb!2835))

(declare-fun result!2887 () Bool)

(assert (=> tb!2835 (= result!2887 true)))

(assert (=> b!11338 t!3175))

(declare-fun b_and!5375 () Bool)

(assert (= b_and!5363 (and (=> t!3175 result!2887) b_and!5375)))

(declare-fun m!14221 () Bool)

(assert (=> b!11337 m!14221))

(declare-fun m!14223 () Bool)

(assert (=> b!11339 m!14223))

(declare-fun m!14225 () Bool)

(assert (=> b!11344 m!14225))

(declare-fun m!14227 () Bool)

(assert (=> start!2264 m!14227))

(declare-fun m!14229 () Bool)

(assert (=> start!2264 m!14229))

(declare-fun m!14231 () Bool)

(assert (=> start!2264 m!14231))

(declare-fun m!14233 () Bool)

(assert (=> b!11338 m!14233))

(declare-fun m!14235 () Bool)

(assert (=> b!11338 m!14235))

(declare-fun m!14237 () Bool)

(assert (=> b!11338 m!14237))

(assert (=> b!11338 m!14235))

(assert (=> b!11338 m!14237))

(declare-fun m!14239 () Bool)

(assert (=> b!11338 m!14239))

(assert (=> b!11338 m!14233))

(declare-fun m!14241 () Bool)

(assert (=> b!11338 m!14241))

(push 1)

(assert (not b!11344))

(assert (not b_lambda!5831))

(assert (not b_next!3733))

(assert b_and!5371)

(assert (not b_next!3753))

(assert (not b_next!3751))

(assert b_and!5373)

(assert (not b!11337))

(assert (not b!11338))

(assert (not start!2264))

(assert (not b_next!3757))

(assert (not b_next!3759))

(assert (not b!11339))

(assert b_and!5365)

(assert b_and!5367)

(assert (not b_next!3755))

(assert b_and!5375)

(assert b_and!5369)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3733))

(assert b_and!5371)

(assert (not b_next!3753))

(assert (not b_next!3751))

(assert b_and!5373)

(assert (not b_next!3757))

(assert (not b_next!3759))

(assert b_and!5365)

(assert b_and!5367)

(assert (not b_next!3755))

(assert b_and!5375)

(assert b_and!5369)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5833 () Bool)

(assert (= b_lambda!5831 (or (and b!11341 (= lambda!3033 f!539)) (and start!2264 b_free!1545) b_lambda!5833)))

(declare-fun bs!2898 () Bool)

(declare-fun d!8733 () Bool)

(assert (= bs!2898 (and d!8733 b!11341)))

(declare-fun ++!3 (Balance!305 Balance!305) Balance!305)

(assert (=> bs!2898 (= (dynLambda!424 lambda!3033 (foldRight1!102 xs!292 f!539) (foldRight1!102 ys!54 f!539)) (++!3 (foldRight1!102 xs!292 f!539) (foldRight1!102 ys!54 f!539)))))

(assert (=> bs!2898 m!14235))

(assert (=> bs!2898 m!14237))

(declare-fun m!14243 () Bool)

(assert (=> bs!2898 m!14243))

(assert (=> (and b!11341 (= lambda!3033 f!539) b!11338) d!8733))

(push 1)

(assert (not b!11344))

(assert (not bs!2898))

(assert (not b_next!3733))

(assert b_and!5371)

(assert (not b_next!3753))

(assert (not b_next!3751))

(assert b_and!5373)

(assert (not b!11337))

(assert (not b_lambda!5833))

(assert (not b!11338))

(assert (not start!2264))

(assert (not b_next!3757))

(assert (not b_next!3759))

(assert (not b!11339))

(assert b_and!5365)

(assert b_and!5367)

(assert (not b_next!3755))

(assert b_and!5375)

(assert b_and!5369)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3733))

(assert b_and!5371)

(assert (not b_next!3753))

(assert (not b_next!3751))

(assert b_and!5373)

(assert (not b_next!3757))

(assert (not b_next!3759))

(assert b_and!5365)

(assert b_and!5367)

(assert (not b_next!3755))

(assert b_and!5375)

(assert b_and!5369)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8735 () Bool)

(assert (=> d!8735 (= (isEmpty!200 xs!292) (is-Nil!270 xs!292))))

(assert (=> start!2264 d!8735))

(declare-fun d!8737 () Bool)

(declare-fun res!4148 () Bool)

(declare-fun e!6395 () Bool)

(assert (=> d!8737 (=> (not res!4148) (not e!6395))))

(declare-fun dynLambda!425 (Int) Balance!305)

(assert (=> d!8737 (= res!4148 (= (dynLambda!425 (x!6454 thiss!746)) (dynLambda!425 (y!633 thiss!746))))))

(assert (=> d!8737 (= (inv!378 thiss!746) e!6395)))

(declare-fun b!11359 () Bool)

(declare-fun dynLambda!426 (Int) Bool)

(assert (=> b!11359 (= e!6395 (dynLambda!426 (evidence!185 thiss!746)))))

(assert (= (and d!8737 res!4148) b!11359))

(declare-fun b_lambda!5835 () Bool)

(assert (=> (not b_lambda!5835) (not d!8737)))

(declare-fun t!3177 () Bool)

(declare-fun tb!2837 () Bool)

(assert (=> (and b!11343 (= (x!6454 thiss!746) (x!6454 thiss!746)) t!3177) tb!2837))

(declare-fun result!2889 () Bool)

(assert (=> tb!2837 (= result!2889 true)))

(assert (=> d!8737 t!3177))

(declare-fun b_and!5377 () Bool)

(assert (= b_and!5365 (and (=> t!3177 result!2889) b_and!5377)))

(declare-fun t!3179 () Bool)

(declare-fun tb!2839 () Bool)

(assert (=> (and b!11343 (= (y!633 thiss!746) (x!6454 thiss!746)) t!3179) tb!2839))

(declare-fun result!2891 () Bool)

(assert (=> tb!2839 (= result!2891 true)))

(assert (=> d!8737 t!3179))

(declare-fun b_and!5379 () Bool)

(assert (= b_and!5367 (and (=> t!3179 result!2891) b_and!5379)))

(declare-fun t!3181 () Bool)

(declare-fun tb!2841 () Bool)

(assert (=> (and b!11335 (= (x!6455 thiss!766) (x!6454 thiss!746)) t!3181) tb!2841))

(declare-fun result!2893 () Bool)

(assert (=> tb!2841 (= result!2893 true)))

(assert (=> d!8737 t!3181))

(declare-fun b_and!5381 () Bool)

(assert (= b_and!5371 (and (=> t!3181 result!2893) b_and!5381)))

(declare-fun tb!2843 () Bool)

(declare-fun t!3183 () Bool)

(assert (=> (and b!11335 (= (y!634 thiss!766) (x!6454 thiss!746)) t!3183) tb!2843))

(declare-fun result!2895 () Bool)

(assert (=> tb!2843 (= result!2895 true)))

(assert (=> d!8737 t!3183))

(declare-fun b_and!5383 () Bool)

(assert (= b_and!5373 (and (=> t!3183 result!2895) b_and!5383)))

(declare-fun b_lambda!5837 () Bool)

(assert (=> (not b_lambda!5837) (not d!8737)))

(declare-fun t!3185 () Bool)

(declare-fun tb!2845 () Bool)

(assert (=> (and b!11343 (= (x!6454 thiss!746) (y!633 thiss!746)) t!3185) tb!2845))

(declare-fun result!2897 () Bool)

(assert (=> tb!2845 (= result!2897 true)))

(assert (=> d!8737 t!3185))

(declare-fun b_and!5385 () Bool)

(assert (= b_and!5377 (and (=> t!3185 result!2897) b_and!5385)))

(declare-fun t!3187 () Bool)

(declare-fun tb!2847 () Bool)

(assert (=> (and b!11343 (= (y!633 thiss!746) (y!633 thiss!746)) t!3187) tb!2847))

(declare-fun result!2899 () Bool)

(assert (=> tb!2847 (= result!2899 true)))

(assert (=> d!8737 t!3187))

(declare-fun b_and!5387 () Bool)

(assert (= b_and!5379 (and (=> t!3187 result!2899) b_and!5387)))

(declare-fun t!3189 () Bool)

(declare-fun tb!2849 () Bool)

(assert (=> (and b!11335 (= (x!6455 thiss!766) (y!633 thiss!746)) t!3189) tb!2849))

(declare-fun result!2901 () Bool)

(assert (=> tb!2849 (= result!2901 true)))

(assert (=> d!8737 t!3189))

(declare-fun b_and!5389 () Bool)

(assert (= b_and!5381 (and (=> t!3189 result!2901) b_and!5389)))

(declare-fun tb!2851 () Bool)

(declare-fun t!3191 () Bool)

(assert (=> (and b!11335 (= (y!634 thiss!766) (y!633 thiss!746)) t!3191) tb!2851))

(declare-fun result!2903 () Bool)

(assert (=> tb!2851 (= result!2903 true)))

(assert (=> d!8737 t!3191))

(declare-fun b_and!5391 () Bool)

(assert (= b_and!5383 (and (=> t!3191 result!2903) b_and!5391)))

(declare-fun b_lambda!5839 () Bool)

(assert (=> (not b_lambda!5839) (not b!11359)))

(declare-fun t!3193 () Bool)

(declare-fun tb!2853 () Bool)

(assert (=> (and b!11343 (= (evidence!185 thiss!746) (evidence!185 thiss!746)) t!3193) tb!2853))

(declare-fun result!2905 () Bool)

(assert (=> tb!2853 (= result!2905 true)))

(assert (=> b!11359 t!3193))

(declare-fun b_and!5393 () Bool)

(assert (= b_and!5369 (and (=> t!3193 result!2905) b_and!5393)))

(declare-fun m!14245 () Bool)

(assert (=> d!8737 m!14245))

(declare-fun m!14247 () Bool)

(assert (=> d!8737 m!14247))

(declare-fun m!14249 () Bool)

(assert (=> b!11359 m!14249))

(assert (=> start!2264 d!8737))

(declare-fun d!8739 () Bool)

(assert (=> d!8739 (= (inv!379 thiss!766) (= (dynLambda!425 (x!6455 thiss!766)) (dynLambda!425 (y!634 thiss!766))))))

(declare-fun b_lambda!5841 () Bool)

(assert (=> (not b_lambda!5841) (not d!8739)))

(declare-fun tb!2855 () Bool)

(declare-fun t!3195 () Bool)

(assert (=> (and b!11343 (= (x!6454 thiss!746) (x!6455 thiss!766)) t!3195) tb!2855))

(declare-fun result!2907 () Bool)

(assert (=> tb!2855 (= result!2907 true)))

(assert (=> d!8739 t!3195))

(declare-fun b_and!5395 () Bool)

(assert (= b_and!5385 (and (=> t!3195 result!2907) b_and!5395)))

(declare-fun tb!2857 () Bool)

(declare-fun t!3197 () Bool)

(assert (=> (and b!11343 (= (y!633 thiss!746) (x!6455 thiss!766)) t!3197) tb!2857))

(declare-fun result!2909 () Bool)

(assert (=> tb!2857 (= result!2909 true)))

(assert (=> d!8739 t!3197))

(declare-fun b_and!5397 () Bool)

(assert (= b_and!5387 (and (=> t!3197 result!2909) b_and!5397)))

(declare-fun t!3199 () Bool)

(declare-fun tb!2859 () Bool)

(assert (=> (and b!11335 (= (x!6455 thiss!766) (x!6455 thiss!766)) t!3199) tb!2859))

(declare-fun result!2911 () Bool)

(assert (=> tb!2859 (= result!2911 true)))

(assert (=> d!8739 t!3199))

(declare-fun b_and!5399 () Bool)

(assert (= b_and!5389 (and (=> t!3199 result!2911) b_and!5399)))

(declare-fun t!3201 () Bool)

(declare-fun tb!2861 () Bool)

(assert (=> (and b!11335 (= (y!634 thiss!766) (x!6455 thiss!766)) t!3201) tb!2861))

(declare-fun result!2913 () Bool)

(assert (=> tb!2861 (= result!2913 true)))

(assert (=> d!8739 t!3201))

(declare-fun b_and!5401 () Bool)

(assert (= b_and!5391 (and (=> t!3201 result!2913) b_and!5401)))

(declare-fun b_lambda!5843 () Bool)

(assert (=> (not b_lambda!5843) (not d!8739)))

(declare-fun tb!2863 () Bool)

(declare-fun t!3203 () Bool)

(assert (=> (and b!11343 (= (x!6454 thiss!746) (y!634 thiss!766)) t!3203) tb!2863))

(declare-fun result!2915 () Bool)

(assert (=> tb!2863 (= result!2915 true)))

(assert (=> d!8739 t!3203))

(declare-fun b_and!5403 () Bool)

(assert (= b_and!5395 (and (=> t!3203 result!2915) b_and!5403)))

(declare-fun tb!2865 () Bool)

(declare-fun t!3205 () Bool)

(assert (=> (and b!11343 (= (y!633 thiss!746) (y!634 thiss!766)) t!3205) tb!2865))

(declare-fun result!2917 () Bool)

(assert (=> tb!2865 (= result!2917 true)))

(assert (=> d!8739 t!3205))

(declare-fun b_and!5405 () Bool)

(assert (= b_and!5397 (and (=> t!3205 result!2917) b_and!5405)))

(declare-fun t!3207 () Bool)

(declare-fun tb!2867 () Bool)

(assert (=> (and b!11335 (= (x!6455 thiss!766) (y!634 thiss!766)) t!3207) tb!2867))

(declare-fun result!2919 () Bool)

(assert (=> tb!2867 (= result!2919 true)))

(assert (=> d!8739 t!3207))

(declare-fun b_and!5407 () Bool)

(assert (= b_and!5399 (and (=> t!3207 result!2919) b_and!5407)))

(declare-fun t!3209 () Bool)

(declare-fun tb!2869 () Bool)

(assert (=> (and b!11335 (= (y!634 thiss!766) (y!634 thiss!766)) t!3209) tb!2869))

(declare-fun result!2921 () Bool)

(assert (=> tb!2869 (= result!2921 true)))

(assert (=> d!8739 t!3209))

(declare-fun b_and!5409 () Bool)

(assert (= b_and!5401 (and (=> t!3209 result!2921) b_and!5409)))

(declare-fun m!14251 () Bool)

(assert (=> d!8739 m!14251))

(declare-fun m!14253 () Bool)

(assert (=> d!8739 m!14253))

(assert (=> start!2264 d!8739))

(declare-fun d!8741 () Bool)

(assert (=> d!8741 (= (isEmpty!200 xs!315) (is-Nil!270 xs!315))))

(assert (=> b!11339 d!8741))

(declare-fun d!8743 () Bool)

(assert (=> d!8743 (= (isEmpty!200 ys!54) (is-Nil!270 ys!54))))

(assert (=> b!11337 d!8743))

(declare-fun d!8745 () Bool)

(declare-fun c!3365 () Bool)

(assert (=> d!8745 (= c!3365 (and (is-Cons!269 xs!292) (is-Nil!270 (tail!499 xs!292))))))

(declare-fun e!6398 () Balance!305)

(assert (=> d!8745 (= (foldRight1!102 xs!292 f!539) e!6398)))

(declare-fun b!11364 () Bool)

(assert (=> b!11364 (= e!6398 (head!487 xs!292))))

(declare-fun b!11365 () Bool)

(assert (=> b!11365 (= e!6398 (dynLambda!424 f!539 (head!487 xs!292) (foldRight1!102 (tail!499 xs!292) f!539)))))

(assert (= (and d!8745 c!3365) b!11364))

(assert (= (and d!8745 (not c!3365)) b!11365))

(declare-fun b_lambda!5845 () Bool)

(assert (=> (not b_lambda!5845) (not b!11365)))

(declare-fun t!3211 () Bool)

(declare-fun tb!2871 () Bool)

(assert (=> (and start!2264 (= f!539 f!539) t!3211) tb!2871))

(declare-fun result!2923 () Bool)

(assert (=> tb!2871 (= result!2923 true)))

(assert (=> b!11365 t!3211))

(declare-fun b_and!5411 () Bool)

(assert (= b_and!5375 (and (=> t!3211 result!2923) b_and!5411)))

(declare-fun m!14255 () Bool)

(assert (=> b!11365 m!14255))

(assert (=> b!11365 m!14255))

(declare-fun m!14257 () Bool)

(assert (=> b!11365 m!14257))

(assert (=> b!11338 d!8745))

(declare-fun d!8747 () Bool)

(declare-fun c!3366 () Bool)

(assert (=> d!8747 (= c!3366 (and (is-Cons!269 ys!54) (is-Nil!270 (tail!499 ys!54))))))

(declare-fun e!6399 () Balance!305)

(assert (=> d!8747 (= (foldRight1!102 ys!54 f!539) e!6399)))

(declare-fun b!11366 () Bool)

(assert (=> b!11366 (= e!6399 (head!487 ys!54))))

(declare-fun b!11367 () Bool)

(assert (=> b!11367 (= e!6399 (dynLambda!424 f!539 (head!487 ys!54) (foldRight1!102 (tail!499 ys!54) f!539)))))

(assert (= (and d!8747 c!3366) b!11366))

(assert (= (and d!8747 (not c!3366)) b!11367))

(declare-fun b_lambda!5847 () Bool)

(assert (=> (not b_lambda!5847) (not b!11367)))

(declare-fun t!3213 () Bool)

(declare-fun tb!2873 () Bool)

(assert (=> (and start!2264 (= f!539 f!539) t!3213) tb!2873))

(declare-fun result!2925 () Bool)

(assert (=> tb!2873 (= result!2925 true)))

(assert (=> b!11367 t!3213))

(declare-fun b_and!5413 () Bool)

(assert (= b_and!5411 (and (=> t!3213 result!2925) b_and!5413)))

(declare-fun m!14259 () Bool)

(assert (=> b!11367 m!14259))

(assert (=> b!11367 m!14259))

(declare-fun m!14261 () Bool)

(assert (=> b!11367 m!14261))

(assert (=> b!11338 d!8747))

(declare-fun d!8749 () Bool)

(declare-fun c!3367 () Bool)

(assert (=> d!8749 (= c!3367 (and (is-Cons!269 (append!121 xs!292 ys!54)) (is-Nil!270 (tail!499 (append!121 xs!292 ys!54)))))))

(declare-fun e!6400 () Balance!305)

(assert (=> d!8749 (= (foldRight1!102 (append!121 xs!292 ys!54) f!539) e!6400)))

(declare-fun b!11368 () Bool)

(assert (=> b!11368 (= e!6400 (head!487 (append!121 xs!292 ys!54)))))

(declare-fun b!11369 () Bool)

(assert (=> b!11369 (= e!6400 (dynLambda!424 f!539 (head!487 (append!121 xs!292 ys!54)) (foldRight1!102 (tail!499 (append!121 xs!292 ys!54)) f!539)))))

(assert (= (and d!8749 c!3367) b!11368))

(assert (= (and d!8749 (not c!3367)) b!11369))

(declare-fun b_lambda!5849 () Bool)

(assert (=> (not b_lambda!5849) (not b!11369)))

(declare-fun t!3215 () Bool)

(declare-fun tb!2875 () Bool)

(assert (=> (and start!2264 (= f!539 f!539) t!3215) tb!2875))

(declare-fun result!2927 () Bool)

(assert (=> tb!2875 (= result!2927 true)))

(assert (=> b!11369 t!3215))

(declare-fun b_and!5415 () Bool)

(assert (= b_and!5413 (and (=> t!3215 result!2927) b_and!5415)))

(declare-fun m!14263 () Bool)

(assert (=> b!11369 m!14263))

(assert (=> b!11369 m!14263))

(declare-fun m!14265 () Bool)

(assert (=> b!11369 m!14265))

(assert (=> b!11338 d!8749))

(declare-fun d!8751 () Bool)

(declare-fun c!3370 () Bool)

(assert (=> d!8751 (= c!3370 (is-Nil!270 xs!292))))

(declare-fun e!6403 () List!272)

(assert (=> d!8751 (= (append!121 xs!292 ys!54) e!6403)))

(declare-fun b!11374 () Bool)

(assert (=> b!11374 (= e!6403 ys!54)))

(declare-fun b!11375 () Bool)

(assert (=> b!11375 (= e!6403 (Cons!269 (head!487 xs!292) (append!121 (tail!499 xs!292) ys!54)))))

(assert (= (and d!8751 c!3370) b!11374))

(assert (= (and d!8751 (not c!3370)) b!11375))

(declare-fun m!14267 () Bool)

(assert (=> b!11375 m!14267))

(assert (=> b!11338 d!8751))

(declare-fun d!8753 () Bool)

(assert (=> d!8753 (= (isEmpty!200 ys!55) (is-Nil!270 ys!55))))

(assert (=> b!11344 d!8753))

(declare-fun d!8755 () Bool)

(declare-fun lt!1760 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!8755 (= lt!1760 (min!4 (extraOpen!193 (foldRight1!102 xs!292 f!539)) (extraClose!193 (foldRight1!102 ys!54 f!539))))))

(assert (=> d!8755 (= (++!3 (foldRight1!102 xs!292 f!539) (foldRight1!102 ys!54 f!539)) (Balance!306 (- (+ (extraOpen!193 (foldRight1!102 xs!292 f!539)) (extraOpen!193 (foldRight1!102 ys!54 f!539))) lt!1760) (- (+ (extraClose!193 (foldRight1!102 xs!292 f!539)) (extraClose!193 (foldRight1!102 ys!54 f!539))) lt!1760)))))

(declare-fun bs!2899 () Bool)

(assert (= bs!2899 d!8755))

(declare-fun m!14269 () Bool)

(assert (=> bs!2899 m!14269))

(assert (=> bs!2898 d!8755))

(declare-fun b_lambda!5851 () Bool)

(assert (= b_lambda!5839 (or (and b!11334 (= lambda!3037 (evidence!185 thiss!746))) (and b!11343 b_free!1551) b_lambda!5851)))

(declare-fun bs!2900 () Bool)

(declare-fun d!8757 () Bool)

(assert (= bs!2900 (and d!8757 b!11334)))

(declare-fun append_is_associative!0 (Balance!305 Balance!305 Balance!305) Bool)

(assert (=> bs!2900 (= (dynLambda!426 lambda!3037) (append_is_associative!0 (head!487 xs!292) (foldRight1!102 (tail!499 xs!292) f!539) (foldRight1!102 ys!54 f!539)))))

(assert (=> bs!2900 m!14255))

(assert (=> bs!2900 m!14237))

(assert (=> bs!2900 m!14255))

(assert (=> bs!2900 m!14237))

(declare-fun m!14271 () Bool)

(assert (=> bs!2900 m!14271))

(assert (=> (and b!11334 (= lambda!3037 (evidence!185 thiss!746)) b!11359) d!8757))

(declare-fun b_lambda!5853 () Bool)

(assert (= b_lambda!5841 (or (and b!11334 (= lambda!3036 (x!6455 thiss!766))) (and b!11335 b_free!1555 (= (y!634 thiss!766) (x!6455 thiss!766))) (and b!11334 (= lambda!3034 (x!6455 thiss!766))) (and b!11342 (= lambda!3038 (x!6455 thiss!766))) (and b!11343 b_free!1549 (= (y!633 thiss!746) (x!6455 thiss!766))) (and b!11343 b_free!1547 (= (x!6454 thiss!746) (x!6455 thiss!766))) (and b!11335 b_free!1553) b_lambda!5853)))

(declare-fun bs!2901 () Bool)

(declare-fun d!8759 () Bool)

(assert (= bs!2901 (and d!8759 b!11342)))

(assert (=> bs!2901 (= (dynLambda!425 lambda!3038) (dynLambda!424 f!539 (head!487 xs!292) (dynLambda!424 f!539 (foldRight1!102 (tail!499 xs!292) f!539) (foldRight1!102 ys!54 f!539))))))

(declare-fun b_lambda!5867 () Bool)

(assert (=> (not b_lambda!5867) (not bs!2901)))

(declare-fun t!3217 () Bool)

(declare-fun tb!2877 () Bool)

(assert (=> (and start!2264 (= f!539 f!539) t!3217) tb!2877))

(declare-fun result!2929 () Bool)

(assert (=> tb!2877 (= result!2929 true)))

(assert (=> bs!2901 t!3217))

(declare-fun b_and!5417 () Bool)

(assert (= b_and!5415 (and (=> t!3217 result!2929) b_and!5417)))

(declare-fun b_lambda!5869 () Bool)

(assert (=> (not b_lambda!5869) (not bs!2901)))

(declare-fun t!3219 () Bool)

(declare-fun tb!2879 () Bool)

(assert (=> (and start!2264 (= f!539 f!539) t!3219) tb!2879))

(declare-fun result!2931 () Bool)

(assert (=> tb!2879 (= result!2931 true)))

(assert (=> bs!2901 t!3219))

(declare-fun b_and!5419 () Bool)

(assert (= b_and!5417 (and (=> t!3219 result!2931) b_and!5419)))

(assert (=> bs!2901 m!14255))

(declare-fun m!14273 () Bool)

(assert (=> bs!2901 m!14273))

(declare-fun m!14275 () Bool)

(assert (=> bs!2901 m!14275))

(assert (=> bs!2901 m!14237))

(assert (=> bs!2901 m!14255))

(assert (=> bs!2901 m!14237))

(assert (=> bs!2901 m!14273))

(assert (=> (and b!11342 (= lambda!3038 (x!6455 thiss!766)) d!8739) d!8759))

(declare-fun bs!2902 () Bool)

(declare-fun d!8761 () Bool)

(assert (= bs!2902 (and d!8761 b!11334)))

(assert (=> bs!2902 (= (dynLambda!425 lambda!3034) (dynLambda!424 f!539 (foldRight1!102 xs!292 f!539) (foldRight1!102 ys!54 f!539)))))

(declare-fun b_lambda!5871 () Bool)

(assert (=> (not b_lambda!5871) (not bs!2902)))

(assert (=> bs!2902 t!3175))

(declare-fun b_and!5421 () Bool)

(assert (= b_and!5419 (and (=> t!3175 result!2887) b_and!5421)))

(assert (=> bs!2902 m!14235))

(assert (=> bs!2902 m!14237))

(assert (=> bs!2902 m!14235))

(assert (=> bs!2902 m!14237))

(assert (=> bs!2902 m!14239))

(assert (=> (and b!11334 (= lambda!3034 (x!6455 thiss!766)) d!8739) d!8761))

(declare-fun bs!2903 () Bool)

(declare-fun d!8763 () Bool)

(assert (= bs!2903 (and d!8763 b!11334)))

(declare-fun dynLambda!427 (Int Balance!305) Balance!305)

(assert (=> bs!2903 (= (dynLambda!425 lambda!3036) (dynLambda!424 f!539 (dynLambda!427 lambda!3035 (foldRight1!102 (tail!499 xs!292) f!539)) (foldRight1!102 ys!54 f!539)))))

(declare-fun b_lambda!5873 () Bool)

(assert (=> (not b_lambda!5873) (not bs!2903)))

(declare-fun t!3221 () Bool)

(declare-fun tb!2881 () Bool)

(assert (=> (and start!2264 (= f!539 f!539) t!3221) tb!2881))

(declare-fun result!2933 () Bool)

(assert (=> tb!2881 (= result!2933 true)))

(assert (=> bs!2903 t!3221))

(declare-fun b_and!5423 () Bool)

(assert (= b_and!5421 (and (=> t!3221 result!2933) b_and!5423)))

(declare-fun b_lambda!5875 () Bool)

(assert (=> (not b_lambda!5875) (not bs!2903)))

(declare-fun m!14277 () Bool)

(assert (=> bs!2903 m!14277))

(assert (=> bs!2903 m!14237))

(declare-fun m!14279 () Bool)

(assert (=> bs!2903 m!14279))

(assert (=> bs!2903 m!14255))

(assert (=> bs!2903 m!14237))

(assert (=> bs!2903 m!14255))

(assert (=> bs!2903 m!14277))

(assert (=> (and b!11334 (= lambda!3036 (x!6455 thiss!766)) d!8739) d!8763))

(declare-fun b_lambda!5855 () Bool)

(assert (= b_lambda!5835 (or (and b!11343 b_free!1547) (and b!11335 b_free!1553 (= (x!6455 thiss!766) (x!6454 thiss!746))) (and b!11335 b_free!1555 (= (y!634 thiss!766) (x!6454 thiss!746))) (and b!11343 b_free!1549 (= (y!633 thiss!746) (x!6454 thiss!746))) (and b!11342 (= lambda!3038 (x!6454 thiss!746))) (and b!11334 (= lambda!3034 (x!6454 thiss!746))) (and b!11334 (= lambda!3036 (x!6454 thiss!746))) b_lambda!5855)))

(declare-fun bs!2904 () Bool)

(declare-fun d!8765 () Bool)

(assert (= bs!2904 (and d!8765 b!11334)))

(assert (=> bs!2904 (= (dynLambda!425 lambda!3034) (dynLambda!424 f!539 (foldRight1!102 xs!292 f!539) (foldRight1!102 ys!54 f!539)))))

(declare-fun b_lambda!5877 () Bool)

(assert (=> (not b_lambda!5877) (not bs!2904)))

(assert (=> bs!2904 t!3175))

(declare-fun b_and!5425 () Bool)

(assert (= b_and!5423 (and (=> t!3175 result!2887) b_and!5425)))

(assert (=> bs!2904 m!14235))

(assert (=> bs!2904 m!14237))

(assert (=> bs!2904 m!14235))

(assert (=> bs!2904 m!14237))

(assert (=> bs!2904 m!14239))

(assert (=> (and b!11334 (= lambda!3034 (x!6454 thiss!746)) d!8737) d!8765))

(declare-fun bs!2905 () Bool)

(declare-fun d!8767 () Bool)

(assert (= bs!2905 (and d!8767 b!11334)))

(assert (=> bs!2905 (= (dynLambda!425 lambda!3036) (dynLambda!424 f!539 (dynLambda!427 lambda!3035 (foldRight1!102 (tail!499 xs!292) f!539)) (foldRight1!102 ys!54 f!539)))))

(declare-fun b_lambda!5879 () Bool)

(assert (=> (not b_lambda!5879) (not bs!2905)))

(assert (=> bs!2905 t!3221))

(declare-fun b_and!5427 () Bool)

(assert (= b_and!5425 (and (=> t!3221 result!2933) b_and!5427)))

(declare-fun b_lambda!5881 () Bool)

(assert (=> (not b_lambda!5881) (not bs!2905)))

(assert (=> bs!2905 m!14277))

(assert (=> bs!2905 m!14237))

(assert (=> bs!2905 m!14279))

(assert (=> bs!2905 m!14255))

(assert (=> bs!2905 m!14237))

(assert (=> bs!2905 m!14255))

(assert (=> bs!2905 m!14277))

(assert (=> (and b!11334 (= lambda!3036 (x!6454 thiss!746)) d!8737) d!8767))

(declare-fun bs!2906 () Bool)

(declare-fun d!8769 () Bool)

(assert (= bs!2906 (and d!8769 b!11342)))

(assert (=> bs!2906 (= (dynLambda!425 lambda!3038) (dynLambda!424 f!539 (head!487 xs!292) (dynLambda!424 f!539 (foldRight1!102 (tail!499 xs!292) f!539) (foldRight1!102 ys!54 f!539))))))

(declare-fun b_lambda!5883 () Bool)

(assert (=> (not b_lambda!5883) (not bs!2906)))

(assert (=> bs!2906 t!3217))

(declare-fun b_and!5429 () Bool)

(assert (= b_and!5427 (and (=> t!3217 result!2929) b_and!5429)))

(declare-fun b_lambda!5885 () Bool)

(assert (=> (not b_lambda!5885) (not bs!2906)))

(assert (=> bs!2906 t!3219))

(declare-fun b_and!5431 () Bool)

(assert (= b_and!5429 (and (=> t!3219 result!2931) b_and!5431)))

(assert (=> bs!2906 m!14255))

(assert (=> bs!2906 m!14273))

(assert (=> bs!2906 m!14275))

(assert (=> bs!2906 m!14237))

(assert (=> bs!2906 m!14255))

(assert (=> bs!2906 m!14237))

(assert (=> bs!2906 m!14273))

(assert (=> (and b!11342 (= lambda!3038 (x!6454 thiss!746)) d!8737) d!8769))

(declare-fun b_lambda!5857 () Bool)

(assert (= b_lambda!5845 (or (and b!11341 (= lambda!3033 f!539)) (and start!2264 b_free!1545) b_lambda!5857)))

(declare-fun bs!2907 () Bool)

(declare-fun d!8771 () Bool)

(assert (= bs!2907 (and d!8771 b!11341)))

(assert (=> bs!2907 (= (dynLambda!424 lambda!3033 (head!487 xs!292) (foldRight1!102 (tail!499 xs!292) f!539)) (++!3 (head!487 xs!292) (foldRight1!102 (tail!499 xs!292) f!539)))))

(assert (=> bs!2907 m!14255))

(declare-fun m!14281 () Bool)

(assert (=> bs!2907 m!14281))

(assert (=> (and b!11341 (= lambda!3033 f!539) b!11365) d!8771))

(declare-fun b_lambda!5859 () Bool)

(assert (= b_lambda!5849 (or (and b!11341 (= lambda!3033 f!539)) (and start!2264 b_free!1545) b_lambda!5859)))

(declare-fun bs!2908 () Bool)

(declare-fun d!8773 () Bool)

(assert (= bs!2908 (and d!8773 b!11341)))

(assert (=> bs!2908 (= (dynLambda!424 lambda!3033 (head!487 (append!121 xs!292 ys!54)) (foldRight1!102 (tail!499 (append!121 xs!292 ys!54)) f!539)) (++!3 (head!487 (append!121 xs!292 ys!54)) (foldRight1!102 (tail!499 (append!121 xs!292 ys!54)) f!539)))))

(assert (=> bs!2908 m!14263))

(declare-fun m!14283 () Bool)

(assert (=> bs!2908 m!14283))

(assert (=> (and b!11341 (= lambda!3033 f!539) b!11369) d!8773))

(declare-fun b_lambda!5861 () Bool)

(assert (= b_lambda!5837 (or (and b!11342 (= lambda!3038 (y!633 thiss!746))) (and b!11334 (= lambda!3036 (y!633 thiss!746))) (and b!11343 b_free!1549) (and b!11335 b_free!1555 (= (y!634 thiss!766) (y!633 thiss!746))) (and b!11334 (= lambda!3034 (y!633 thiss!746))) (and b!11335 b_free!1553 (= (x!6455 thiss!766) (y!633 thiss!746))) (and b!11343 b_free!1547 (= (x!6454 thiss!746) (y!633 thiss!746))) b_lambda!5861)))

(declare-fun bs!2909 () Bool)

(declare-fun d!8775 () Bool)

(assert (= bs!2909 (and d!8775 b!11342)))

(assert (=> bs!2909 (= (dynLambda!425 lambda!3038) (dynLambda!424 f!539 (head!487 xs!292) (dynLambda!424 f!539 (foldRight1!102 (tail!499 xs!292) f!539) (foldRight1!102 ys!54 f!539))))))

(declare-fun b_lambda!5887 () Bool)

(assert (=> (not b_lambda!5887) (not bs!2909)))

(assert (=> bs!2909 t!3217))

(declare-fun b_and!5433 () Bool)

(assert (= b_and!5431 (and (=> t!3217 result!2929) b_and!5433)))

(declare-fun b_lambda!5889 () Bool)

(assert (=> (not b_lambda!5889) (not bs!2909)))

(assert (=> bs!2909 t!3219))

(declare-fun b_and!5435 () Bool)

(assert (= b_and!5433 (and (=> t!3219 result!2931) b_and!5435)))

(assert (=> bs!2909 m!14255))

(assert (=> bs!2909 m!14273))

(assert (=> bs!2909 m!14275))

(assert (=> bs!2909 m!14237))

(assert (=> bs!2909 m!14255))

(assert (=> bs!2909 m!14237))

(assert (=> bs!2909 m!14273))

(assert (=> (and b!11342 (= lambda!3038 (y!633 thiss!746)) d!8737) d!8775))

(declare-fun bs!2910 () Bool)

(declare-fun d!8777 () Bool)

(assert (= bs!2910 (and d!8777 b!11334)))

(assert (=> bs!2910 (= (dynLambda!425 lambda!3036) (dynLambda!424 f!539 (dynLambda!427 lambda!3035 (foldRight1!102 (tail!499 xs!292) f!539)) (foldRight1!102 ys!54 f!539)))))

(declare-fun b_lambda!5891 () Bool)

(assert (=> (not b_lambda!5891) (not bs!2910)))

(assert (=> bs!2910 t!3221))

(declare-fun b_and!5437 () Bool)

(assert (= b_and!5435 (and (=> t!3221 result!2933) b_and!5437)))

(declare-fun b_lambda!5893 () Bool)

(assert (=> (not b_lambda!5893) (not bs!2910)))

(assert (=> bs!2910 m!14277))

(assert (=> bs!2910 m!14237))

(assert (=> bs!2910 m!14279))

(assert (=> bs!2910 m!14255))

(assert (=> bs!2910 m!14237))

(assert (=> bs!2910 m!14255))

(assert (=> bs!2910 m!14277))

(assert (=> (and b!11334 (= lambda!3036 (y!633 thiss!746)) d!8737) d!8777))

(declare-fun bs!2911 () Bool)

(declare-fun d!8779 () Bool)

(assert (= bs!2911 (and d!8779 b!11334)))

(assert (=> bs!2911 (= (dynLambda!425 lambda!3034) (dynLambda!424 f!539 (foldRight1!102 xs!292 f!539) (foldRight1!102 ys!54 f!539)))))

(declare-fun b_lambda!5895 () Bool)

(assert (=> (not b_lambda!5895) (not bs!2911)))

(assert (=> bs!2911 t!3175))

(declare-fun b_and!5439 () Bool)

(assert (= b_and!5437 (and (=> t!3175 result!2887) b_and!5439)))

(assert (=> bs!2911 m!14235))

(assert (=> bs!2911 m!14237))

(assert (=> bs!2911 m!14235))

(assert (=> bs!2911 m!14237))

(assert (=> bs!2911 m!14239))

(assert (=> (and b!11334 (= lambda!3034 (y!633 thiss!746)) d!8737) d!8779))

(declare-fun b_lambda!5863 () Bool)

(assert (= b_lambda!5847 (or (and b!11341 (= lambda!3033 f!539)) (and start!2264 b_free!1545) b_lambda!5863)))

(declare-fun bs!2912 () Bool)

(declare-fun d!8781 () Bool)

(assert (= bs!2912 (and d!8781 b!11341)))

(assert (=> bs!2912 (= (dynLambda!424 lambda!3033 (head!487 ys!54) (foldRight1!102 (tail!499 ys!54) f!539)) (++!3 (head!487 ys!54) (foldRight1!102 (tail!499 ys!54) f!539)))))

(assert (=> bs!2912 m!14259))

(declare-fun m!14285 () Bool)

(assert (=> bs!2912 m!14285))

(assert (=> (and b!11341 (= lambda!3033 f!539) b!11367) d!8781))

(declare-fun b_lambda!5865 () Bool)

(assert (= b_lambda!5843 (or (and b!11342 (= lambda!3038 (y!634 thiss!766))) (and b!11343 b_free!1549 (= (y!633 thiss!746) (y!634 thiss!766))) (and b!11334 (= lambda!3036 (y!634 thiss!766))) (and b!11334 (= lambda!3034 (y!634 thiss!766))) (and b!11343 b_free!1547 (= (x!6454 thiss!746) (y!634 thiss!766))) (and b!11335 b_free!1553 (= (x!6455 thiss!766) (y!634 thiss!766))) (and b!11335 b_free!1555) b_lambda!5865)))

(declare-fun bs!2913 () Bool)

(declare-fun d!8783 () Bool)

(assert (= bs!2913 (and d!8783 b!11334)))

(assert (=> bs!2913 (= (dynLambda!425 lambda!3034) (dynLambda!424 f!539 (foldRight1!102 xs!292 f!539) (foldRight1!102 ys!54 f!539)))))

(declare-fun b_lambda!5897 () Bool)

(assert (=> (not b_lambda!5897) (not bs!2913)))

(assert (=> bs!2913 t!3175))

(declare-fun b_and!5441 () Bool)

(assert (= b_and!5439 (and (=> t!3175 result!2887) b_and!5441)))

(assert (=> bs!2913 m!14235))

(assert (=> bs!2913 m!14237))

(assert (=> bs!2913 m!14235))

(assert (=> bs!2913 m!14237))

(assert (=> bs!2913 m!14239))

(assert (=> (and b!11334 (= lambda!3034 (y!634 thiss!766)) d!8739) d!8783))

(declare-fun bs!2914 () Bool)

(declare-fun d!8785 () Bool)

(assert (= bs!2914 (and d!8785 b!11342)))

(assert (=> bs!2914 (= (dynLambda!425 lambda!3038) (dynLambda!424 f!539 (head!487 xs!292) (dynLambda!424 f!539 (foldRight1!102 (tail!499 xs!292) f!539) (foldRight1!102 ys!54 f!539))))))

(declare-fun b_lambda!5899 () Bool)

(assert (=> (not b_lambda!5899) (not bs!2914)))

(assert (=> bs!2914 t!3217))

(declare-fun b_and!5443 () Bool)

(assert (= b_and!5441 (and (=> t!3217 result!2929) b_and!5443)))

(declare-fun b_lambda!5901 () Bool)

(assert (=> (not b_lambda!5901) (not bs!2914)))

(assert (=> bs!2914 t!3219))

(declare-fun b_and!5445 () Bool)

(assert (= b_and!5443 (and (=> t!3219 result!2931) b_and!5445)))

(assert (=> bs!2914 m!14255))

(assert (=> bs!2914 m!14273))

(assert (=> bs!2914 m!14275))

(assert (=> bs!2914 m!14237))

(assert (=> bs!2914 m!14255))

(assert (=> bs!2914 m!14237))

(assert (=> bs!2914 m!14273))

(assert (=> (and b!11342 (= lambda!3038 (y!634 thiss!766)) d!8739) d!8785))

(declare-fun bs!2915 () Bool)

(declare-fun d!8787 () Bool)

(assert (= bs!2915 (and d!8787 b!11334)))

(assert (=> bs!2915 (= (dynLambda!425 lambda!3036) (dynLambda!424 f!539 (dynLambda!427 lambda!3035 (foldRight1!102 (tail!499 xs!292) f!539)) (foldRight1!102 ys!54 f!539)))))

(declare-fun b_lambda!5903 () Bool)

(assert (=> (not b_lambda!5903) (not bs!2915)))

(assert (=> bs!2915 t!3221))

(declare-fun b_and!5447 () Bool)

(assert (= b_and!5445 (and (=> t!3221 result!2933) b_and!5447)))

(declare-fun b_lambda!5905 () Bool)

(assert (=> (not b_lambda!5905) (not bs!2915)))

(assert (=> bs!2915 m!14277))

(assert (=> bs!2915 m!14237))

(assert (=> bs!2915 m!14279))

(assert (=> bs!2915 m!14255))

(assert (=> bs!2915 m!14237))

(assert (=> bs!2915 m!14255))

(assert (=> bs!2915 m!14277))

(assert (=> (and b!11334 (= lambda!3036 (y!634 thiss!766)) d!8739) d!8787))

(push 1)

(assert (not b_lambda!5861))

(assert (not b_lambda!5879))

(assert (not b!11365))

(assert (not b_lambda!5869))

(assert b_and!5407)

(assert (not b_next!3733))

(assert (not bs!2912))

(assert (not bs!2900))

(assert (not b_next!3753))

(assert (not bs!2909))

(assert (not b_next!3751))

(assert (not b_lambda!5893))

(assert (not bs!2905))

(assert (not bs!2901))

(assert (not b_lambda!5895))

(assert (not b_lambda!5875))

(assert (not b_lambda!5877))

(assert (not b_lambda!5871))

(assert (not bs!2903))

(assert (not b_lambda!5833))

(assert (not b_lambda!5859))

(assert (not b_lambda!5903))

(assert (not b_lambda!5857))

(assert (not b_next!3757))

(assert (not bs!2908))

(assert (not b_next!3759))

(assert (not bs!2914))

(assert (not b_lambda!5899))

(assert (not bs!2913))

(assert (not b_lambda!5905))

(assert (not b_lambda!5889))

(assert (not bs!2902))

(assert (not b!11369))

(assert (not b_lambda!5855))

(assert (not b_lambda!5901))

(assert (not bs!2907))

(assert (not b_lambda!5891))

(assert (not b_lambda!5867))

(assert (not bs!2904))

(assert b_and!5405)

(assert (not b_lambda!5851))

(assert (not bs!2915))

(assert b_and!5393)

(assert (not bs!2910))

(assert (not b_next!3755))

(assert (not b!11367))

(assert b_and!5403)

(assert (not b_lambda!5881))

(assert (not b_lambda!5897))

(assert (not bs!2906))

(assert (not b_lambda!5865))

(assert (not bs!2911))

(assert (not b_lambda!5873))

(assert (not b_lambda!5887))

(assert (not b_lambda!5885))

(assert (not b_lambda!5863))

(assert b_and!5409)

(assert (not b!11375))

(assert (not b_lambda!5883))

(assert b_and!5447)

(assert (not b_lambda!5853))

(assert (not d!8755))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5407)

(assert (not b_next!3733))

(assert (not b_next!3753))

(assert (not b_next!3751))

(assert (not b_next!3757))

(assert (not b_next!3759))

(assert b_and!5405)

(assert b_and!5393)

(assert (not b_next!3755))

(assert b_and!5403)

(assert b_and!5409)

(assert b_and!5447)

(check-sat)

(pop 1)


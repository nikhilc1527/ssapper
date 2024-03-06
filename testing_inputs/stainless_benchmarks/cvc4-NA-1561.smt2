; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10594 () Bool)

(assert start!10594)

(declare-fun b!80441 () Bool)

(assert (=> b!80441 true))

(declare-fun bs!38289 () Bool)

(declare-fun b!80438 () Bool)

(assert (= bs!38289 (and b!80438 b!80441)))

(declare-fun lambda!9234 () Int)

(declare-fun lambda!9233 () Int)

(assert (=> bs!38289 (not (= lambda!9234 lambda!9233))))

(assert (=> b!80438 true))

(declare-fun bs!38290 () Bool)

(declare-fun b!80440 () Bool)

(assert (= bs!38290 (and b!80440 b!80441)))

(declare-fun lambda!9235 () Int)

(assert (=> bs!38290 (not (= lambda!9235 lambda!9233))))

(declare-fun bs!38291 () Bool)

(assert (= bs!38291 (and b!80440 b!80438)))

(assert (=> bs!38291 (not (= lambda!9235 lambda!9234))))

(assert (=> b!80440 true))

(declare-fun b!80434 () Bool)

(declare-fun res!40928 () Bool)

(declare-fun e!43634 () Bool)

(assert (=> b!80434 (=> (not res!40928) (not e!43634))))

(declare-datatypes () ((List!659 (Cons!616 (h!984 Int) (t!47782 List!659)) (Nil!618))))

(declare-fun l1!440 () List!659)

(declare-fun less!5 () List!659)

(declare-fun quickSort!0 (List!659) List!659)

(assert (=> b!80434 (= res!40928 (= l1!440 (quickSort!0 less!5)))))

(declare-fun b!80435 () Bool)

(declare-fun res!40929 () Bool)

(declare-fun e!43636 () Bool)

(assert (=> b!80435 (=> res!40929 e!43636)))

(declare-fun l2!433 () List!659)

(declare-fun isSorted!1 (List!659) Bool)

(assert (=> b!80435 (= res!40929 (not (isSorted!1 l2!433)))))

(declare-fun b!80436 () Bool)

(declare-fun res!40925 () Bool)

(assert (=> b!80436 (=> (not res!40925) (not e!43634))))

(declare-fun sorted_lemma!0 (List!659) Bool)

(assert (=> b!80436 (= res!40925 (sorted_lemma!0 less!5))))

(declare-fun b!80437 () Bool)

(declare-fun res!40921 () Bool)

(assert (=> b!80437 (=> (not res!40921) (not e!43634))))

(declare-fun ls!96 () List!659)

(declare-fun cons_filter_equal_sorted!0 (List!659 Int) Bool)

(assert (=> b!80437 (= res!40921 (cons_filter_equal_sorted!0 (t!47782 ls!96) (h!984 ls!96)))))

(declare-fun res!40922 () Bool)

(assert (=> b!80438 (=> (not res!40922) (not e!43634))))

(declare-fun equal!10 () List!659)

(declare-fun filter!12 (List!659 Int) List!659)

(assert (=> b!80438 (= res!40922 (= equal!10 (Cons!616 (h!984 ls!96) (filter!12 (t!47782 ls!96) lambda!9234))))))

(declare-fun b!80439 () Bool)

(declare-fun e!43635 () Bool)

(declare-fun last!11 (List!659) Int)

(declare-fun head!1049 (List!659) Int)

(assert (=> b!80439 (= e!43635 (> (last!11 l1!440) (head!1049 l2!433)))))

(declare-fun res!40918 () Bool)

(assert (=> b!80440 (=> (not res!40918) (not e!43634))))

(declare-fun more!5 () List!659)

(assert (=> b!80440 (= res!40918 (= more!5 (filter!12 (t!47782 ls!96) lambda!9235)))))

(declare-fun res!40920 () Bool)

(assert (=> b!80441 (=> (not res!40920) (not e!43634))))

(assert (=> b!80441 (= res!40920 (= less!5 (filter!12 (t!47782 ls!96) lambda!9233)))))

(declare-fun b!80442 () Bool)

(declare-fun res!40919 () Bool)

(assert (=> b!80442 (=> (not res!40919) (not e!43634))))

(declare-fun forall_last!0 (List!659 Int) Bool)

(assert (=> b!80442 (= res!40919 (forall_last!0 (quickSort!0 less!5) lambda!9233))))

(declare-fun b!80443 () Bool)

(declare-fun res!40926 () Bool)

(assert (=> b!80443 (=> (not res!40926) (not e!43635))))

(declare-fun isEmpty!671 (List!659) Bool)

(assert (=> b!80443 (= res!40926 (not (isEmpty!671 l2!433)))))

(declare-fun b!80444 () Bool)

(declare-fun res!40917 () Bool)

(assert (=> b!80444 (=> (not res!40917) (not e!43634))))

(declare-fun sort_preserves_forall!0 (List!659 Int) Bool)

(assert (=> b!80444 (= res!40917 (sort_preserves_forall!0 less!5 lambda!9233))))

(declare-fun b!80445 () Bool)

(declare-fun res!40923 () Bool)

(assert (=> b!80445 (=> (not res!40923) (not e!43634))))

(assert (=> b!80445 (= res!40923 (= l2!433 equal!10))))

(declare-fun res!40927 () Bool)

(assert (=> start!10594 (=> (not res!40927) (not e!43634))))

(assert (=> start!10594 (= res!40927 (and (not (is-Nil!618 ls!96)) (not (is-Nil!618 (t!47782 ls!96)))))))

(assert (=> start!10594 e!43634))

(assert (=> start!10594 true))

(declare-fun b!80446 () Bool)

(assert (=> b!80446 (= e!43634 e!43636)))

(declare-fun res!40924 () Bool)

(assert (=> b!80446 (=> res!40924 e!43636)))

(assert (=> b!80446 (= res!40924 (not (isSorted!1 l1!440)))))

(declare-fun b!80447 () Bool)

(assert (=> b!80447 (= e!43636 e!43635)))

(declare-fun res!40930 () Bool)

(assert (=> b!80447 (=> (not res!40930) (not e!43635))))

(assert (=> b!80447 (= res!40930 (not (isEmpty!671 l1!440)))))

(assert (= (and start!10594 res!40927) b!80441))

(assert (= (and b!80441 res!40920) b!80438))

(assert (= (and b!80438 res!40922) b!80440))

(assert (= (and b!80440 res!40918) b!80436))

(assert (= (and b!80436 res!40925) b!80444))

(assert (= (and b!80444 res!40917) b!80442))

(assert (= (and b!80442 res!40919) b!80437))

(assert (= (and b!80437 res!40921) b!80434))

(assert (= (and b!80434 res!40928) b!80445))

(assert (= (and b!80445 res!40923) b!80446))

(assert (= (and b!80446 (not res!40924)) b!80435))

(assert (= (and b!80435 (not res!40929)) b!80447))

(assert (= (and b!80447 res!40930) b!80443))

(assert (= (and b!80443 res!40926) b!80439))

(declare-fun m!75212 () Bool)

(assert (=> b!80444 m!75212))

(declare-fun m!75214 () Bool)

(assert (=> b!80435 m!75214))

(declare-fun m!75216 () Bool)

(assert (=> b!80441 m!75216))

(declare-fun m!75218 () Bool)

(assert (=> b!80434 m!75218))

(declare-fun m!75220 () Bool)

(assert (=> b!80440 m!75220))

(declare-fun m!75222 () Bool)

(assert (=> b!80437 m!75222))

(declare-fun m!75224 () Bool)

(assert (=> b!80438 m!75224))

(declare-fun m!75226 () Bool)

(assert (=> b!80443 m!75226))

(declare-fun m!75228 () Bool)

(assert (=> b!80447 m!75228))

(assert (=> b!80442 m!75218))

(assert (=> b!80442 m!75218))

(declare-fun m!75230 () Bool)

(assert (=> b!80442 m!75230))

(declare-fun m!75232 () Bool)

(assert (=> b!80446 m!75232))

(declare-fun m!75234 () Bool)

(assert (=> b!80439 m!75234))

(declare-fun m!75236 () Bool)

(assert (=> b!80439 m!75236))

(declare-fun m!75238 () Bool)

(assert (=> b!80436 m!75238))

(push 1)

(assert (not b!80439))

(assert (not b!80437))

(assert (not b!80442))

(assert (not b!80440))

(assert (not b!80447))

(assert (not b!80443))

(assert (not b!80435))

(assert (not b!80444))

(assert (not b!80446))

(assert (not b!80436))

(assert (not b!80441))

(assert (not b!80438))

(assert (not b!80434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55469 () Bool)

(declare-fun e!43643 () Bool)

(assert (=> d!55469 e!43643))

(declare-fun c!20345 () Bool)

(assert (=> d!55469 (= c!20345 (is-Cons!616 (quickSort!0 less!5)))))

(assert (=> d!55469 (= (forall_last!0 (quickSort!0 less!5) lambda!9233) true)))

(declare-fun b!80462 () Bool)

(declare-fun res!40942 () Bool)

(declare-fun e!43645 () Bool)

(assert (=> b!80462 (=> res!40942 e!43645)))

(assert (=> b!80462 (= res!40942 (isEmpty!671 (quickSort!0 less!5)))))

(declare-fun b!80463 () Bool)

(declare-fun e!43644 () Bool)

(declare-fun dynLambda!978 (Int Int) Bool)

(assert (=> b!80463 (= e!43644 (dynLambda!978 lambda!9233 (last!11 (quickSort!0 less!5))))))

(declare-fun b!80464 () Bool)

(declare-fun res!40941 () Bool)

(assert (=> b!80464 (=> res!40941 e!43644)))

(assert (=> b!80464 (= res!40941 (isEmpty!671 (quickSort!0 less!5)))))

(declare-fun b!80465 () Bool)

(assert (=> b!80465 (= e!43643 e!43644)))

(declare-fun res!40939 () Bool)

(assert (=> b!80465 (=> res!40939 e!43644)))

(declare-fun forall!14 (List!659 Int) Bool)

(assert (=> b!80465 (= res!40939 (not (forall!14 (quickSort!0 less!5) lambda!9233)))))

(declare-fun b!80466 () Bool)

(assert (=> b!80466 (= e!43645 (dynLambda!978 lambda!9233 (last!11 (quickSort!0 less!5))))))

(declare-fun b!80467 () Bool)

(assert (=> b!80467 (= e!43643 e!43645)))

(declare-fun res!40940 () Bool)

(assert (=> b!80467 (=> res!40940 e!43645)))

(assert (=> b!80467 (= res!40940 (not (forall!14 (quickSort!0 less!5) lambda!9233)))))

(declare-fun lt!18368 () Bool)

(assert (=> b!80467 (= lt!18368 (forall_last!0 (t!47782 (quickSort!0 less!5)) lambda!9233))))

(assert (= (and b!80467 (not res!40940)) b!80462))

(assert (= (and b!80462 (not res!40942)) b!80466))

(assert (= (and b!80465 (not res!40939)) b!80464))

(assert (= (and b!80464 (not res!40941)) b!80463))

(assert (= (and d!55469 c!20345) b!80467))

(assert (= (and d!55469 (not c!20345)) b!80465))

(declare-fun b_lambda!15923 () Bool)

(assert (=> (not b_lambda!15923) (not b!80463)))

(declare-fun b_lambda!15925 () Bool)

(assert (=> (not b_lambda!15925) (not b!80466)))

(assert (=> b!80465 m!75218))

(declare-fun m!75240 () Bool)

(assert (=> b!80465 m!75240))

(assert (=> b!80462 m!75218))

(declare-fun m!75242 () Bool)

(assert (=> b!80462 m!75242))

(assert (=> b!80466 m!75218))

(declare-fun m!75244 () Bool)

(assert (=> b!80466 m!75244))

(assert (=> b!80466 m!75244))

(declare-fun m!75246 () Bool)

(assert (=> b!80466 m!75246))

(assert (=> b!80464 m!75218))

(assert (=> b!80464 m!75242))

(assert (=> b!80463 m!75218))

(assert (=> b!80463 m!75244))

(assert (=> b!80463 m!75244))

(assert (=> b!80463 m!75246))

(assert (=> b!80467 m!75218))

(assert (=> b!80467 m!75240))

(declare-fun m!75248 () Bool)

(assert (=> b!80467 m!75248))

(assert (=> b!80442 d!55469))

(declare-fun bs!38292 () Bool)

(declare-fun b!80479 () Bool)

(assert (= bs!38292 (and b!80479 b!80441)))

(declare-fun lambda!9242 () Int)

(assert (=> bs!38292 (= (= (h!984 less!5) (h!984 ls!96)) (= lambda!9242 lambda!9233))))

(declare-fun bs!38293 () Bool)

(assert (= bs!38293 (and b!80479 b!80438)))

(assert (=> bs!38293 (not (= lambda!9242 lambda!9234))))

(declare-fun bs!38294 () Bool)

(assert (= bs!38294 (and b!80479 b!80440)))

(assert (=> bs!38294 (not (= lambda!9242 lambda!9235))))

(assert (=> b!80479 true))

(declare-fun lambda!9243 () Int)

(assert (=> bs!38292 (not (= lambda!9243 lambda!9233))))

(assert (=> bs!38293 (= (= (h!984 less!5) (h!984 ls!96)) (= lambda!9243 lambda!9234))))

(assert (=> bs!38294 (not (= lambda!9243 lambda!9235))))

(assert (=> b!80479 (not (= lambda!9243 lambda!9242))))

(assert (=> b!80479 true))

(declare-fun lambda!9244 () Int)

(assert (=> bs!38293 (not (= lambda!9244 lambda!9234))))

(assert (=> bs!38294 (= (= (h!984 less!5) (h!984 ls!96)) (= lambda!9244 lambda!9235))))

(assert (=> b!80479 (not (= lambda!9244 lambda!9243))))

(assert (=> b!80479 (not (= lambda!9244 lambda!9242))))

(assert (=> bs!38292 (not (= lambda!9244 lambda!9233))))

(assert (=> b!80479 true))

(declare-fun e!43651 () List!659)

(declare-fun ++!67 (List!659 List!659) List!659)

(assert (=> b!80479 (= e!43651 (++!67 (++!67 (quickSort!0 (filter!12 (t!47782 less!5) lambda!9242)) (Cons!616 (h!984 less!5) (filter!12 (t!47782 less!5) lambda!9243))) (quickSort!0 (filter!12 (t!47782 less!5) lambda!9244))))))

(declare-fun b!80477 () Bool)

(declare-fun e!43650 () List!659)

(assert (=> b!80477 (= e!43650 e!43651)))

(declare-fun c!20351 () Bool)

(assert (=> b!80477 (= c!20351 (and (is-Cons!616 less!5) (is-Nil!618 (t!47782 less!5))))))

(declare-fun b!80476 () Bool)

(assert (=> b!80476 (= e!43650 Nil!618)))

(declare-fun b!80478 () Bool)

(assert (=> b!80478 (= e!43651 less!5)))

(declare-fun d!55471 () Bool)

(declare-fun c!20350 () Bool)

(assert (=> d!55471 (= c!20350 (is-Nil!618 less!5))))

(assert (=> d!55471 (= (quickSort!0 less!5) e!43650)))

(assert (= (and b!80477 c!20351) b!80478))

(assert (= (and b!80477 (not c!20351)) b!80479))

(assert (= (and d!55471 c!20350) b!80476))

(assert (= (and d!55471 (not c!20350)) b!80477))

(declare-fun m!75250 () Bool)

(assert (=> b!80479 m!75250))

(declare-fun m!75252 () Bool)

(assert (=> b!80479 m!75252))

(declare-fun m!75254 () Bool)

(assert (=> b!80479 m!75254))

(declare-fun m!75256 () Bool)

(assert (=> b!80479 m!75256))

(assert (=> b!80479 m!75250))

(declare-fun m!75258 () Bool)

(assert (=> b!80479 m!75258))

(declare-fun m!75260 () Bool)

(assert (=> b!80479 m!75260))

(assert (=> b!80479 m!75258))

(assert (=> b!80479 m!75252))

(declare-fun m!75262 () Bool)

(assert (=> b!80479 m!75262))

(assert (=> b!80479 m!75262))

(assert (=> b!80479 m!75254))

(assert (=> b!80442 d!55471))

(declare-fun b!80494 () Bool)

(declare-fun e!43662 () List!659)

(declare-fun e!43661 () List!659)

(assert (=> b!80494 (= e!43662 e!43661)))

(declare-fun c!20356 () Bool)

(declare-fun e!43660 () Bool)

(assert (=> b!80494 (= c!20356 e!43660)))

(declare-fun res!40953 () Bool)

(assert (=> b!80494 (=> (not res!40953) (not e!43660))))

(assert (=> b!80494 (= res!40953 (is-Cons!616 (t!47782 ls!96)))))

(declare-fun lt!18374 () List!659)

(assert (=> b!80494 (= lt!18374 (filter!12 (t!47782 (t!47782 ls!96)) lambda!9235))))

(declare-fun b!80495 () Bool)

(declare-fun res!40954 () Bool)

(declare-fun e!43663 () Bool)

(assert (=> b!80495 (=> (not res!40954) (not e!43663))))

(declare-fun lt!18373 () List!659)

(declare-fun content!118 (List!659) (Set Int))

(assert (=> b!80495 (= res!40954 (subset (content!118 lt!18373) (content!118 (t!47782 ls!96))))))

(declare-fun b!80496 () Bool)

(assert (=> b!80496 (= e!43663 (forall!14 lt!18373 lambda!9235))))

(declare-fun b!80497 () Bool)

(assert (=> b!80497 (= e!43661 (Cons!616 (h!984 (t!47782 ls!96)) lt!18374))))

(declare-fun b!80498 () Bool)

(assert (=> b!80498 (= e!43661 lt!18374)))

(declare-fun d!55473 () Bool)

(assert (=> d!55473 e!43663))

(declare-fun res!40955 () Bool)

(assert (=> d!55473 (=> (not res!40955) (not e!43663))))

(declare-fun size!647 (List!659) Int)

(assert (=> d!55473 (= res!40955 (<= (size!647 lt!18373) (size!647 (t!47782 ls!96))))))

(assert (=> d!55473 (= lt!18373 e!43662)))

(declare-fun c!20357 () Bool)

(assert (=> d!55473 (= c!20357 (is-Nil!618 (t!47782 ls!96)))))

(assert (=> d!55473 (= (filter!12 (t!47782 ls!96) lambda!9235) lt!18373)))

(declare-fun b!80499 () Bool)

(assert (=> b!80499 (= e!43662 Nil!618)))

(declare-fun b!80500 () Bool)

(assert (=> b!80500 (= e!43660 (dynLambda!978 lambda!9235 (h!984 (t!47782 ls!96))))))

(assert (= (and b!80494 res!40953) b!80500))

(assert (= (and b!80494 c!20356) b!80497))

(assert (= (and b!80494 (not c!20356)) b!80498))

(assert (= (and d!55473 c!20357) b!80499))

(assert (= (and d!55473 (not c!20357)) b!80494))

(assert (= (and d!55473 res!40955) b!80495))

(assert (= (and b!80495 res!40954) b!80496))

(declare-fun b_lambda!15927 () Bool)

(assert (=> (not b_lambda!15927) (not b!80500)))

(declare-fun m!75264 () Bool)

(assert (=> d!55473 m!75264))

(declare-fun m!75266 () Bool)

(assert (=> d!55473 m!75266))

(declare-fun m!75268 () Bool)

(assert (=> b!80500 m!75268))

(declare-fun m!75270 () Bool)

(assert (=> b!80496 m!75270))

(declare-fun m!75272 () Bool)

(assert (=> b!80495 m!75272))

(declare-fun m!75274 () Bool)

(assert (=> b!80495 m!75274))

(declare-fun m!75276 () Bool)

(assert (=> b!80494 m!75276))

(assert (=> b!80440 d!55473))

(declare-fun d!55475 () Bool)

(assert (=> d!55475 (= (isEmpty!671 l2!433) (is-Nil!618 l2!433))))

(assert (=> b!80443 d!55475))

(declare-fun bs!38295 () Bool)

(declare-fun b!80514 () Bool)

(assert (= bs!38295 (and b!80514 b!80438)))

(declare-fun lambda!9257 () Int)

(assert (=> bs!38295 (not (= lambda!9257 lambda!9234))))

(declare-fun bs!38296 () Bool)

(assert (= bs!38296 (and b!80514 b!80440)))

(assert (=> bs!38296 (not (= lambda!9257 lambda!9235))))

(declare-fun bs!38297 () Bool)

(assert (= bs!38297 (and b!80514 b!80479)))

(assert (=> bs!38297 (not (= lambda!9257 lambda!9244))))

(assert (=> bs!38297 (not (= lambda!9257 lambda!9243))))

(assert (=> bs!38297 (= lambda!9257 lambda!9242)))

(declare-fun bs!38298 () Bool)

(assert (= bs!38298 (and b!80514 b!80441)))

(assert (=> bs!38298 (= (= (h!984 less!5) (h!984 ls!96)) (= lambda!9257 lambda!9233))))

(assert (=> b!80514 true))

(declare-fun lambda!9258 () Int)

(assert (=> bs!38295 (= (= (h!984 less!5) (h!984 ls!96)) (= lambda!9258 lambda!9234))))

(assert (=> bs!38296 (not (= lambda!9258 lambda!9235))))

(assert (=> bs!38297 (not (= lambda!9258 lambda!9244))))

(assert (=> bs!38297 (= lambda!9258 lambda!9243)))

(assert (=> bs!38297 (not (= lambda!9258 lambda!9242))))

(assert (=> b!80514 (not (= lambda!9258 lambda!9257))))

(assert (=> bs!38298 (not (= lambda!9258 lambda!9233))))

(assert (=> b!80514 true))

(declare-fun lambda!9259 () Int)

(assert (=> bs!38295 (not (= lambda!9259 lambda!9234))))

(assert (=> bs!38296 (= (= (h!984 less!5) (h!984 ls!96)) (= lambda!9259 lambda!9235))))

(assert (=> bs!38297 (= lambda!9259 lambda!9244)))

(assert (=> bs!38297 (not (= lambda!9259 lambda!9243))))

(assert (=> bs!38297 (not (= lambda!9259 lambda!9242))))

(assert (=> b!80514 (not (= lambda!9259 lambda!9258))))

(assert (=> b!80514 (not (= lambda!9259 lambda!9257))))

(assert (=> bs!38298 (not (= lambda!9259 lambda!9233))))

(assert (=> b!80514 true))

(declare-fun d!55477 () Bool)

(assert (=> d!55477 (forall!14 (quickSort!0 less!5) lambda!9233)))

(declare-fun lt!18392 () Bool)

(declare-fun e!43678 () Bool)

(assert (=> d!55477 (= lt!18392 e!43678)))

(declare-fun res!40975 () Bool)

(assert (=> d!55477 (=> res!40975 e!43678)))

(assert (=> d!55477 (= res!40975 (or (is-Nil!618 less!5) (and (is-Cons!616 less!5) (is-Nil!618 (t!47782 less!5)))))))

(assert (=> d!55477 (forall!14 less!5 lambda!9233)))

(assert (=> d!55477 (= (sort_preserves_forall!0 less!5 lambda!9233) true)))

(declare-fun e!43676 () Bool)

(declare-fun b!80511 () Bool)

(declare-fun filter_preserves_forall!0 (List!659 Int Int) Bool)

(assert (=> b!80511 (= e!43676 (filter_preserves_forall!0 (t!47782 less!5) lambda!9259 lambda!9233))))

(declare-fun b!80512 () Bool)

(declare-fun e!43674 () Bool)

(declare-fun lt!18387 () List!659)

(assert (=> b!80512 (= e!43674 (sort_preserves_forall!0 lt!18387 lambda!9233))))

(declare-fun lt!18388 () List!659)

(declare-fun lt!18390 () List!659)

(declare-fun e!43677 () Bool)

(declare-fun b!80513 () Bool)

(declare-fun append_preserves_forall!0 (List!659 List!659 Int) Bool)

(assert (=> b!80513 (= e!43677 (append_preserves_forall!0 (++!67 (quickSort!0 lt!18390) lt!18388) (quickSort!0 lt!18387) lambda!9233))))

(assert (=> b!80514 (= e!43678 e!43677)))

(declare-fun res!40971 () Bool)

(assert (=> b!80514 (=> (not res!40971) (not e!43677))))

(assert (=> b!80514 (= res!40971 (append_preserves_forall!0 (quickSort!0 lt!18390) lt!18388 lambda!9233))))

(declare-fun lt!18389 () Bool)

(assert (=> b!80514 (= lt!18389 e!43674)))

(declare-fun res!40973 () Bool)

(assert (=> b!80514 (=> (not res!40973) (not e!43674))))

(assert (=> b!80514 (= res!40973 (sort_preserves_forall!0 lt!18390 lambda!9233))))

(declare-fun lt!18391 () Bool)

(assert (=> b!80514 (= lt!18391 e!43676)))

(declare-fun res!40972 () Bool)

(assert (=> b!80514 (=> (not res!40972) (not e!43676))))

(declare-fun e!43675 () Bool)

(assert (=> b!80514 (= res!40972 e!43675)))

(declare-fun res!40974 () Bool)

(assert (=> b!80514 (=> (not res!40974) (not e!43675))))

(assert (=> b!80514 (= res!40974 (filter_preserves_forall!0 (t!47782 less!5) lambda!9257 lambda!9233))))

(assert (=> b!80514 (= lt!18387 (filter!12 (t!47782 less!5) lambda!9259))))

(assert (=> b!80514 (= lt!18388 (Cons!616 (h!984 less!5) (filter!12 (t!47782 less!5) lambda!9258)))))

(assert (=> b!80514 (= lt!18390 (filter!12 (t!47782 less!5) lambda!9257))))

(declare-fun b!80515 () Bool)

(assert (=> b!80515 (= e!43675 (filter_preserves_forall!0 (t!47782 less!5) lambda!9258 lambda!9233))))

(assert (= (and d!55477 (not res!40975)) b!80514))

(assert (= (and b!80514 res!40974) b!80515))

(assert (= (and b!80514 res!40972) b!80511))

(assert (= (and b!80514 res!40973) b!80512))

(assert (= (and b!80514 res!40971) b!80513))

(declare-fun m!75278 () Bool)

(assert (=> b!80511 m!75278))

(assert (=> d!55477 m!75218))

(assert (=> d!55477 m!75218))

(assert (=> d!55477 m!75240))

(declare-fun m!75280 () Bool)

(assert (=> d!55477 m!75280))

(declare-fun m!75282 () Bool)

(assert (=> b!80512 m!75282))

(declare-fun m!75284 () Bool)

(assert (=> b!80513 m!75284))

(assert (=> b!80513 m!75284))

(declare-fun m!75286 () Bool)

(assert (=> b!80513 m!75286))

(declare-fun m!75288 () Bool)

(assert (=> b!80513 m!75288))

(assert (=> b!80513 m!75286))

(assert (=> b!80513 m!75288))

(declare-fun m!75290 () Bool)

(assert (=> b!80513 m!75290))

(declare-fun m!75292 () Bool)

(assert (=> b!80515 m!75292))

(assert (=> b!80514 m!75284))

(declare-fun m!75294 () Bool)

(assert (=> b!80514 m!75294))

(declare-fun m!75296 () Bool)

(assert (=> b!80514 m!75296))

(declare-fun m!75298 () Bool)

(assert (=> b!80514 m!75298))

(declare-fun m!75300 () Bool)

(assert (=> b!80514 m!75300))

(declare-fun m!75302 () Bool)

(assert (=> b!80514 m!75302))

(assert (=> b!80514 m!75284))

(declare-fun m!75304 () Bool)

(assert (=> b!80514 m!75304))

(assert (=> b!80444 d!55477))

(declare-fun d!55479 () Bool)

(assert (=> d!55479 (= (isEmpty!671 l1!440) (is-Nil!618 l1!440))))

(assert (=> b!80447 d!55479))

(declare-fun d!55481 () Bool)

(declare-fun res!40980 () Bool)

(declare-fun e!43683 () Bool)

(assert (=> d!55481 (=> res!40980 e!43683)))

(assert (=> d!55481 (= res!40980 (not (and (is-Cons!616 l2!433) (is-Cons!616 (t!47782 l2!433)))))))

(assert (=> d!55481 (= (isSorted!1 l2!433) e!43683)))

(declare-fun b!80520 () Bool)

(declare-fun e!43684 () Bool)

(assert (=> b!80520 (= e!43683 e!43684)))

(declare-fun res!40981 () Bool)

(assert (=> b!80520 (=> (not res!40981) (not e!43684))))

(assert (=> b!80520 (= res!40981 (<= (h!984 l2!433) (h!984 (t!47782 l2!433))))))

(declare-fun b!80521 () Bool)

(assert (=> b!80521 (= e!43684 (isSorted!1 (t!47782 l2!433)))))

(assert (= (and d!55481 (not res!40980)) b!80520))

(assert (= (and b!80520 res!40981) b!80521))

(declare-fun m!75306 () Bool)

(assert (=> b!80521 m!75306))

(assert (=> b!80435 d!55481))

(declare-fun b!80522 () Bool)

(declare-fun e!43687 () List!659)

(declare-fun e!43686 () List!659)

(assert (=> b!80522 (= e!43687 e!43686)))

(declare-fun c!20358 () Bool)

(declare-fun e!43685 () Bool)

(assert (=> b!80522 (= c!20358 e!43685)))

(declare-fun res!40982 () Bool)

(assert (=> b!80522 (=> (not res!40982) (not e!43685))))

(assert (=> b!80522 (= res!40982 (is-Cons!616 (t!47782 ls!96)))))

(declare-fun lt!18394 () List!659)

(assert (=> b!80522 (= lt!18394 (filter!12 (t!47782 (t!47782 ls!96)) lambda!9234))))

(declare-fun b!80523 () Bool)

(declare-fun res!40983 () Bool)

(declare-fun e!43688 () Bool)

(assert (=> b!80523 (=> (not res!40983) (not e!43688))))

(declare-fun lt!18393 () List!659)

(assert (=> b!80523 (= res!40983 (subset (content!118 lt!18393) (content!118 (t!47782 ls!96))))))

(declare-fun b!80524 () Bool)

(assert (=> b!80524 (= e!43688 (forall!14 lt!18393 lambda!9234))))

(declare-fun b!80525 () Bool)

(assert (=> b!80525 (= e!43686 (Cons!616 (h!984 (t!47782 ls!96)) lt!18394))))

(declare-fun b!80526 () Bool)

(assert (=> b!80526 (= e!43686 lt!18394)))

(declare-fun d!55483 () Bool)

(assert (=> d!55483 e!43688))

(declare-fun res!40984 () Bool)

(assert (=> d!55483 (=> (not res!40984) (not e!43688))))

(assert (=> d!55483 (= res!40984 (<= (size!647 lt!18393) (size!647 (t!47782 ls!96))))))

(assert (=> d!55483 (= lt!18393 e!43687)))

(declare-fun c!20359 () Bool)

(assert (=> d!55483 (= c!20359 (is-Nil!618 (t!47782 ls!96)))))

(assert (=> d!55483 (= (filter!12 (t!47782 ls!96) lambda!9234) lt!18393)))

(declare-fun b!80527 () Bool)

(assert (=> b!80527 (= e!43687 Nil!618)))

(declare-fun b!80528 () Bool)

(assert (=> b!80528 (= e!43685 (dynLambda!978 lambda!9234 (h!984 (t!47782 ls!96))))))

(assert (= (and b!80522 res!40982) b!80528))

(assert (= (and b!80522 c!20358) b!80525))

(assert (= (and b!80522 (not c!20358)) b!80526))

(assert (= (and d!55483 c!20359) b!80527))

(assert (= (and d!55483 (not c!20359)) b!80522))

(assert (= (and d!55483 res!40984) b!80523))

(assert (= (and b!80523 res!40983) b!80524))

(declare-fun b_lambda!15929 () Bool)

(assert (=> (not b_lambda!15929) (not b!80528)))

(declare-fun m!75308 () Bool)

(assert (=> d!55483 m!75308))

(assert (=> d!55483 m!75266))

(declare-fun m!75310 () Bool)

(assert (=> b!80528 m!75310))

(declare-fun m!75312 () Bool)

(assert (=> b!80524 m!75312))

(declare-fun m!75314 () Bool)

(assert (=> b!80523 m!75314))

(assert (=> b!80523 m!75274))

(declare-fun m!75316 () Bool)

(assert (=> b!80522 m!75316))

(assert (=> b!80438 d!55483))

(declare-fun b!80529 () Bool)

(declare-fun e!43691 () List!659)

(declare-fun e!43690 () List!659)

(assert (=> b!80529 (= e!43691 e!43690)))

(declare-fun c!20360 () Bool)

(declare-fun e!43689 () Bool)

(assert (=> b!80529 (= c!20360 e!43689)))

(declare-fun res!40985 () Bool)

(assert (=> b!80529 (=> (not res!40985) (not e!43689))))

(assert (=> b!80529 (= res!40985 (is-Cons!616 (t!47782 ls!96)))))

(declare-fun lt!18396 () List!659)

(assert (=> b!80529 (= lt!18396 (filter!12 (t!47782 (t!47782 ls!96)) lambda!9233))))

(declare-fun b!80530 () Bool)

(declare-fun res!40986 () Bool)

(declare-fun e!43692 () Bool)

(assert (=> b!80530 (=> (not res!40986) (not e!43692))))

(declare-fun lt!18395 () List!659)

(assert (=> b!80530 (= res!40986 (subset (content!118 lt!18395) (content!118 (t!47782 ls!96))))))

(declare-fun b!80531 () Bool)

(assert (=> b!80531 (= e!43692 (forall!14 lt!18395 lambda!9233))))

(declare-fun b!80532 () Bool)

(assert (=> b!80532 (= e!43690 (Cons!616 (h!984 (t!47782 ls!96)) lt!18396))))

(declare-fun b!80533 () Bool)

(assert (=> b!80533 (= e!43690 lt!18396)))

(declare-fun d!55485 () Bool)

(assert (=> d!55485 e!43692))

(declare-fun res!40987 () Bool)

(assert (=> d!55485 (=> (not res!40987) (not e!43692))))

(assert (=> d!55485 (= res!40987 (<= (size!647 lt!18395) (size!647 (t!47782 ls!96))))))

(assert (=> d!55485 (= lt!18395 e!43691)))

(declare-fun c!20361 () Bool)

(assert (=> d!55485 (= c!20361 (is-Nil!618 (t!47782 ls!96)))))

(assert (=> d!55485 (= (filter!12 (t!47782 ls!96) lambda!9233) lt!18395)))

(declare-fun b!80534 () Bool)

(assert (=> b!80534 (= e!43691 Nil!618)))

(declare-fun b!80535 () Bool)

(assert (=> b!80535 (= e!43689 (dynLambda!978 lambda!9233 (h!984 (t!47782 ls!96))))))

(assert (= (and b!80529 res!40985) b!80535))

(assert (= (and b!80529 c!20360) b!80532))

(assert (= (and b!80529 (not c!20360)) b!80533))

(assert (= (and d!55485 c!20361) b!80534))

(assert (= (and d!55485 (not c!20361)) b!80529))

(assert (= (and d!55485 res!40987) b!80530))

(assert (= (and b!80530 res!40986) b!80531))

(declare-fun b_lambda!15931 () Bool)

(assert (=> (not b_lambda!15931) (not b!80535)))

(declare-fun m!75318 () Bool)

(assert (=> d!55485 m!75318))

(assert (=> d!55485 m!75266))

(declare-fun m!75320 () Bool)

(assert (=> b!80535 m!75320))

(declare-fun m!75322 () Bool)

(assert (=> b!80531 m!75322))

(declare-fun m!75324 () Bool)

(assert (=> b!80530 m!75324))

(assert (=> b!80530 m!75274))

(declare-fun m!75326 () Bool)

(assert (=> b!80529 m!75326))

(assert (=> b!80441 d!55485))

(declare-fun d!55487 () Bool)

(declare-fun res!40988 () Bool)

(declare-fun e!43693 () Bool)

(assert (=> d!55487 (=> res!40988 e!43693)))

(assert (=> d!55487 (= res!40988 (not (and (is-Cons!616 l1!440) (is-Cons!616 (t!47782 l1!440)))))))

(assert (=> d!55487 (= (isSorted!1 l1!440) e!43693)))

(declare-fun b!80536 () Bool)

(declare-fun e!43694 () Bool)

(assert (=> b!80536 (= e!43693 e!43694)))

(declare-fun res!40989 () Bool)

(assert (=> b!80536 (=> (not res!40989) (not e!43694))))

(assert (=> b!80536 (= res!40989 (<= (h!984 l1!440) (h!984 (t!47782 l1!440))))))

(declare-fun b!80537 () Bool)

(assert (=> b!80537 (= e!43694 (isSorted!1 (t!47782 l1!440)))))

(assert (= (and d!55487 (not res!40988)) b!80536))

(assert (= (and b!80536 res!40989) b!80537))

(declare-fun m!75328 () Bool)

(assert (=> b!80537 m!75328))

(assert (=> b!80446 d!55487))

(assert (=> b!80434 d!55471))

(declare-fun d!55489 () Bool)

(declare-fun lt!18399 () Int)

(declare-fun contains!56 (List!659 Int) Bool)

(assert (=> d!55489 (contains!56 l1!440 lt!18399)))

(declare-fun e!43697 () Int)

(assert (=> d!55489 (= lt!18399 e!43697)))

(declare-fun c!20364 () Bool)

(assert (=> d!55489 (= c!20364 (and (is-Cons!616 l1!440) (is-Nil!618 (t!47782 l1!440))))))

(assert (=> d!55489 (not (isEmpty!671 l1!440))))

(assert (=> d!55489 (= (last!11 l1!440) lt!18399)))

(declare-fun b!80542 () Bool)

(assert (=> b!80542 (= e!43697 (h!984 l1!440))))

(declare-fun b!80543 () Bool)

(assert (=> b!80543 (= e!43697 (last!11 (t!47782 l1!440)))))

(assert (= (and d!55489 c!20364) b!80542))

(assert (= (and d!55489 (not c!20364)) b!80543))

(declare-fun m!75330 () Bool)

(assert (=> d!55489 m!75330))

(assert (=> d!55489 m!75228))

(declare-fun m!75332 () Bool)

(assert (=> b!80543 m!75332))

(assert (=> b!80439 d!55489))

(declare-fun d!55491 () Bool)

(assert (=> d!55491 (= (head!1049 l2!433) (h!984 l2!433))))

(assert (=> b!80439 d!55491))

(declare-fun bs!38299 () Bool)

(declare-fun b!80548 () Bool)

(assert (= bs!38299 (and b!80548 b!80438)))

(declare-fun lambda!9266 () Int)

(assert (=> bs!38299 (not (= lambda!9266 lambda!9234))))

(declare-fun bs!38300 () Bool)

(assert (= bs!38300 (and b!80548 b!80440)))

(assert (=> bs!38300 (not (= lambda!9266 lambda!9235))))

(declare-fun bs!38301 () Bool)

(assert (= bs!38301 (and b!80548 b!80479)))

(assert (=> bs!38301 (not (= lambda!9266 lambda!9244))))

(assert (=> bs!38301 (not (= lambda!9266 lambda!9243))))

(assert (=> bs!38301 (= lambda!9266 lambda!9242)))

(declare-fun bs!38302 () Bool)

(assert (= bs!38302 (and b!80548 b!80514)))

(assert (=> bs!38302 (not (= lambda!9266 lambda!9259))))

(assert (=> bs!38302 (not (= lambda!9266 lambda!9258))))

(assert (=> bs!38302 (= lambda!9266 lambda!9257)))

(declare-fun bs!38303 () Bool)

(assert (= bs!38303 (and b!80548 b!80441)))

(assert (=> bs!38303 (= (= (h!984 less!5) (h!984 ls!96)) (= lambda!9266 lambda!9233))))

(assert (=> b!80548 true))

(declare-fun lambda!9267 () Int)

(assert (=> b!80548 (not (= lambda!9267 lambda!9266))))

(assert (=> bs!38299 (= (= (h!984 less!5) (h!984 ls!96)) (= lambda!9267 lambda!9234))))

(assert (=> bs!38300 (not (= lambda!9267 lambda!9235))))

(assert (=> bs!38301 (not (= lambda!9267 lambda!9244))))

(assert (=> bs!38301 (= lambda!9267 lambda!9243)))

(assert (=> bs!38301 (not (= lambda!9267 lambda!9242))))

(assert (=> bs!38302 (not (= lambda!9267 lambda!9259))))

(assert (=> bs!38302 (= lambda!9267 lambda!9258)))

(assert (=> bs!38302 (not (= lambda!9267 lambda!9257))))

(assert (=> bs!38303 (not (= lambda!9267 lambda!9233))))

(assert (=> b!80548 true))

(declare-fun lambda!9268 () Int)

(assert (=> b!80548 (not (= lambda!9268 lambda!9267))))

(assert (=> b!80548 (not (= lambda!9268 lambda!9266))))

(assert (=> bs!38299 (not (= lambda!9268 lambda!9234))))

(assert (=> bs!38300 (= (= (h!984 less!5) (h!984 ls!96)) (= lambda!9268 lambda!9235))))

(assert (=> bs!38301 (= lambda!9268 lambda!9244)))

(assert (=> bs!38301 (not (= lambda!9268 lambda!9243))))

(assert (=> bs!38301 (not (= lambda!9268 lambda!9242))))

(assert (=> bs!38302 (= lambda!9268 lambda!9259)))

(assert (=> bs!38302 (not (= lambda!9268 lambda!9258))))

(assert (=> bs!38302 (not (= lambda!9268 lambda!9257))))

(assert (=> bs!38303 (not (= lambda!9268 lambda!9233))))

(assert (=> b!80548 true))

(declare-fun d!55493 () Bool)

(assert (=> d!55493 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!18410 () Bool)

(declare-fun e!43702 () Bool)

(assert (=> d!55493 (= lt!18410 e!43702)))

(declare-fun res!40997 () Bool)

(assert (=> d!55493 (=> res!40997 e!43702)))

(assert (=> d!55493 (= res!40997 (or (is-Nil!618 less!5) (and (is-Cons!616 less!5) (is-Nil!618 (t!47782 less!5)))))))

(assert (=> d!55493 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!43703 () Bool)

(assert (=> b!80548 (= e!43702 e!43703)))

(declare-fun res!40996 () Bool)

(assert (=> b!80548 (=> (not res!40996) (not e!43703))))

(declare-fun lt!18408 () List!659)

(declare-fun lt!18409 () List!659)

(declare-fun append_sorted!0 (List!659 List!659) Bool)

(assert (=> b!80548 (= res!40996 (append_sorted!0 (quickSort!0 lt!18408) lt!18409))))

(declare-fun lt!18411 () List!659)

(assert (=> b!80548 (= lt!18411 (filter!12 (t!47782 less!5) lambda!9268))))

(assert (=> b!80548 (= lt!18409 (Cons!616 (h!984 less!5) (filter!12 (t!47782 less!5) lambda!9267)))))

(assert (=> b!80548 (= lt!18408 (filter!12 (t!47782 less!5) lambda!9266))))

(declare-fun b!80549 () Bool)

(assert (=> b!80549 (= e!43703 (append_sorted!0 (++!67 (quickSort!0 lt!18408) lt!18409) (quickSort!0 lt!18411)))))

(assert (= (and d!55493 (not res!40997)) b!80548))

(assert (= (and b!80548 res!40996) b!80549))

(assert (=> d!55493 m!75218))

(assert (=> d!55493 m!75218))

(declare-fun m!75334 () Bool)

(assert (=> d!55493 m!75334))

(declare-fun m!75336 () Bool)

(assert (=> b!80548 m!75336))

(declare-fun m!75338 () Bool)

(assert (=> b!80548 m!75338))

(declare-fun m!75340 () Bool)

(assert (=> b!80548 m!75340))

(declare-fun m!75342 () Bool)

(assert (=> b!80548 m!75342))

(assert (=> b!80548 m!75338))

(declare-fun m!75344 () Bool)

(assert (=> b!80548 m!75344))

(assert (=> b!80549 m!75338))

(assert (=> b!80549 m!75338))

(declare-fun m!75346 () Bool)

(assert (=> b!80549 m!75346))

(declare-fun m!75348 () Bool)

(assert (=> b!80549 m!75348))

(assert (=> b!80549 m!75346))

(assert (=> b!80549 m!75348))

(declare-fun m!75350 () Bool)

(assert (=> b!80549 m!75350))

(assert (=> b!80436 d!55493))

(declare-fun bs!38304 () Bool)

(declare-fun d!55495 () Bool)

(assert (= bs!38304 (and d!55495 b!80548)))

(declare-fun lambda!9271 () Int)

(assert (=> bs!38304 (not (= lambda!9271 lambda!9268))))

(assert (=> bs!38304 (= (= (h!984 ls!96) (h!984 less!5)) (= lambda!9271 lambda!9267))))

(assert (=> bs!38304 (not (= lambda!9271 lambda!9266))))

(declare-fun bs!38305 () Bool)

(assert (= bs!38305 (and d!55495 b!80438)))

(assert (=> bs!38305 (= lambda!9271 lambda!9234)))

(declare-fun bs!38306 () Bool)

(assert (= bs!38306 (and d!55495 b!80440)))

(assert (=> bs!38306 (not (= lambda!9271 lambda!9235))))

(declare-fun bs!38307 () Bool)

(assert (= bs!38307 (and d!55495 b!80479)))

(assert (=> bs!38307 (not (= lambda!9271 lambda!9244))))

(assert (=> bs!38307 (= (= (h!984 ls!96) (h!984 less!5)) (= lambda!9271 lambda!9243))))

(assert (=> bs!38307 (not (= lambda!9271 lambda!9242))))

(declare-fun bs!38308 () Bool)

(assert (= bs!38308 (and d!55495 b!80514)))

(assert (=> bs!38308 (not (= lambda!9271 lambda!9259))))

(assert (=> bs!38308 (= (= (h!984 ls!96) (h!984 less!5)) (= lambda!9271 lambda!9258))))

(assert (=> bs!38308 (not (= lambda!9271 lambda!9257))))

(declare-fun bs!38309 () Bool)

(assert (= bs!38309 (and d!55495 b!80441)))

(assert (=> bs!38309 (not (= lambda!9271 lambda!9233))))

(assert (=> d!55495 true))

(assert (=> d!55495 (isSorted!1 (Cons!616 (h!984 ls!96) (filter!12 (t!47782 ls!96) lambda!9271)))))

(declare-datatypes () ((Unit!1160 (Unit!1161))))

(declare-fun lt!18414 () Unit!1160)

(declare-fun Unit!1162 () Unit!1160)

(assert (=> d!55495 (= lt!18414 Unit!1162)))

(declare-fun filter_equal_sorted!0 (List!659 Int) Bool)

(assert (=> d!55495 (filter_equal_sorted!0 (t!47782 ls!96) (h!984 ls!96))))

(assert (=> d!55495 (= (cons_filter_equal_sorted!0 (t!47782 ls!96) (h!984 ls!96)) true)))

(declare-fun bs!38310 () Bool)

(assert (= bs!38310 d!55495))

(declare-fun m!75352 () Bool)

(assert (=> bs!38310 m!75352))

(declare-fun m!75354 () Bool)

(assert (=> bs!38310 m!75354))

(declare-fun m!75356 () Bool)

(assert (=> bs!38310 m!75356))

(assert (=> b!80437 d!55495))

(declare-fun b_lambda!15933 () Bool)

(assert (= b_lambda!15931 (or b!80441 b_lambda!15933)))

(declare-fun bs!38311 () Bool)

(declare-fun d!55497 () Bool)

(assert (= bs!38311 (and d!55497 b!80441)))

(assert (=> bs!38311 (= (dynLambda!978 lambda!9233 (h!984 (t!47782 ls!96))) (< (h!984 (t!47782 ls!96)) (h!984 ls!96)))))

(assert (=> b!80535 d!55497))

(declare-fun b_lambda!15935 () Bool)

(assert (= b_lambda!15923 (or b!80441 b_lambda!15935)))

(declare-fun bs!38312 () Bool)

(declare-fun d!55499 () Bool)

(assert (= bs!38312 (and d!55499 b!80441)))

(assert (=> bs!38312 (= (dynLambda!978 lambda!9233 (last!11 (quickSort!0 less!5))) (< (last!11 (quickSort!0 less!5)) (h!984 ls!96)))))

(assert (=> b!80463 d!55499))

(declare-fun b_lambda!15937 () Bool)

(assert (= b_lambda!15927 (or b!80440 b_lambda!15937)))

(declare-fun bs!38313 () Bool)

(declare-fun d!55501 () Bool)

(assert (= bs!38313 (and d!55501 b!80440)))

(assert (=> bs!38313 (= (dynLambda!978 lambda!9235 (h!984 (t!47782 ls!96))) (> (h!984 (t!47782 ls!96)) (h!984 ls!96)))))

(assert (=> b!80500 d!55501))

(declare-fun b_lambda!15939 () Bool)

(assert (= b_lambda!15925 (or b!80441 b_lambda!15939)))

(assert (=> b!80466 d!55499))

(declare-fun b_lambda!15941 () Bool)

(assert (= b_lambda!15929 (or b!80438 b_lambda!15941)))

(declare-fun bs!38314 () Bool)

(declare-fun d!55503 () Bool)

(assert (= bs!38314 (and d!55503 b!80438)))

(assert (=> bs!38314 (= (dynLambda!978 lambda!9234 (h!984 (t!47782 ls!96))) (= (h!984 (t!47782 ls!96)) (h!984 ls!96)))))

(assert (=> b!80528 d!55503))

(push 1)

(assert (not b!80511))

(assert (not b!80549))

(assert (not b!80530))

(assert (not b!80524))

(assert (not b!80523))

(assert (not d!55493))

(assert (not b!80522))

(assert (not b_lambda!15935))

(assert (not b!80495))

(assert (not b_lambda!15933))

(assert (not b!80479))

(assert (not d!55483))

(assert (not b_lambda!15939))

(assert (not d!55489))

(assert (not d!55473))

(assert (not b!80465))

(assert (not b!80512))

(assert (not b!80531))

(assert (not b_lambda!15941))

(assert (not b!80537))

(assert (not b!80494))

(assert (not b!80496))

(assert (not b_lambda!15937))

(assert (not b!80514))

(assert (not b!80467))

(assert (not b!80543))

(assert (not d!55495))

(assert (not b!80463))

(assert (not b!80466))

(assert (not b!80515))

(assert (not b!80521))

(assert (not b!80462))

(assert (not b!80548))

(assert (not b!80513))

(assert (not b!80529))

(assert (not d!55485))

(assert (not d!55477))

(assert (not b!80464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


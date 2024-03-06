; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2474 () Bool)

(assert start!2474)

(declare-fun b_free!1905 () Bool)

(declare-fun b_next!4475 () Bool)

(assert (=> start!2474 (= b_free!1905 (not b_next!4475))))

(declare-fun tp!3031 () Bool)

(declare-fun b_and!6609 () Bool)

(assert (=> start!2474 (= tp!3031 b_and!6609)))

(declare-fun b!12281 () Bool)

(declare-fun b_free!1907 () Bool)

(declare-fun b_next!4477 () Bool)

(assert (=> b!12281 (= b_free!1907 (not b_next!4477))))

(declare-fun tp!3025 () Bool)

(declare-fun b_and!6611 () Bool)

(assert (=> b!12281 (= tp!3025 b_and!6611)))

(declare-fun b_free!1909 () Bool)

(declare-fun b_next!4479 () Bool)

(assert (=> b!12281 (= b_free!1909 (not b_next!4479))))

(declare-fun tp!3030 () Bool)

(declare-fun b_and!6613 () Bool)

(assert (=> b!12281 (= tp!3030 b_and!6613)))

(declare-fun b_free!1911 () Bool)

(declare-fun b_next!4481 () Bool)

(assert (=> b!12281 (= b_free!1911 (not b_next!4481))))

(declare-fun tp!3026 () Bool)

(declare-fun b_and!6615 () Bool)

(assert (=> b!12281 (= tp!3026 b_and!6615)))

(declare-fun b!12278 () Bool)

(declare-fun b_free!1913 () Bool)

(declare-fun b_next!4483 () Bool)

(assert (=> b!12278 (= b_free!1913 (not b_next!4483))))

(declare-fun tp!3028 () Bool)

(declare-fun b_and!6617 () Bool)

(assert (=> b!12278 (= tp!3028 b_and!6617)))

(declare-fun b_free!1915 () Bool)

(declare-fun b_next!4485 () Bool)

(assert (=> b!12278 (= b_free!1915 (not b_next!4485))))

(declare-fun tp!3027 () Bool)

(declare-fun b_and!6619 () Bool)

(assert (=> b!12278 (= tp!3027 b_and!6619)))

(declare-fun b_free!1917 () Bool)

(declare-fun b_next!4487 () Bool)

(assert (=> b!12278 (= b_free!1917 (not b_next!4487))))

(declare-fun tp!3029 () Bool)

(declare-fun b_and!6621 () Bool)

(assert (=> b!12278 (= tp!3029 b_and!6621)))

(declare-fun f!539 () Int)

(declare-fun b_next!4489 () Bool)

(declare-fun lambda!3336 () Int)

(declare-fun b!12287 () Bool)

(assert (=> start!2474 (= b_next!4475 (or (and b!12287 (= lambda!3336 f!539)) b_next!4489))))

(declare-fun b!12286 () Bool)

(assert (=> b!12286 true))

(declare-fun lambda!3337 () Int)

(declare-fun order!325 () Int)

(declare-fun order!327 () Int)

(declare-fun dynLambda!521 (Int Int) Int)

(declare-fun dynLambda!522 (Int Int) Int)

(assert (=> b!12286 (< (dynLambda!521 order!325 f!539) (dynLambda!522 order!327 lambda!3337))))

(assert (=> b!12286 true))

(assert (=> b!12286 true))

(declare-datatypes () ((Balance!361 (Balance!362 (extraOpen!221 Int) (extraClose!221 Int)))))

(declare-datatypes () ((EqEvidence!288 (EqEvidence!289 (x!7096 Int) (y!670 Int) (evidence!211 Int)))))

(declare-fun that!193 () EqEvidence!288)

(declare-fun b_next!4491 () Bool)

(assert (=> b!12281 (= b_next!4477 (or (and b!12286 (= lambda!3337 (x!7096 that!193))) b_next!4491))))

(declare-fun b_next!4493 () Bool)

(assert (=> b!12281 (= b_next!4479 (or (and b!12286 (= lambda!3337 (y!670 that!193))) b_next!4493))))

(declare-fun b_next!4495 () Bool)

(declare-fun thiss!745 () EqEvidence!288)

(assert (=> b!12278 (= b_next!4483 (or (and b!12286 (= lambda!3337 (x!7096 thiss!745))) b_next!4495))))

(declare-fun b_next!4497 () Bool)

(assert (=> b!12278 (= b_next!4485 (or (and b!12286 (= lambda!3337 (y!670 thiss!745))) b_next!4497))))

(declare-fun lambda!3338 () Int)

(assert (=> b!12286 (not (= lambda!3338 lambda!3337))))

(assert (=> b!12286 true))

(assert (=> b!12286 (< (dynLambda!521 order!325 f!539) (dynLambda!522 order!327 lambda!3338))))

(assert (=> b!12286 true))

(assert (=> b!12286 true))

(declare-fun b_next!4499 () Bool)

(assert (=> b!12281 (= b_next!4491 (or (and b!12286 (= lambda!3338 (x!7096 that!193))) b_next!4499))))

(declare-fun b_next!4501 () Bool)

(assert (=> b!12281 (= b_next!4493 (or (and b!12286 (= lambda!3338 (y!670 that!193))) b_next!4501))))

(declare-fun b_next!4503 () Bool)

(assert (=> b!12278 (= b_next!4495 (or (and b!12286 (= lambda!3338 (x!7096 thiss!745))) b_next!4503))))

(declare-fun b_next!4505 () Bool)

(assert (=> b!12278 (= b_next!4497 (or (and b!12286 (= lambda!3338 (y!670 thiss!745))) b_next!4505))))

(assert (=> b!12286 true))

(assert (=> b!12286 true))

(declare-fun b_next!4507 () Bool)

(declare-fun lambda!3339 () Int)

(assert (=> b!12281 (= b_next!4481 (or (and b!12286 (= lambda!3339 (evidence!211 that!193))) b_next!4507))))

(declare-fun b_next!4509 () Bool)

(assert (=> b!12278 (= b_next!4487 (or (and b!12286 (= lambda!3339 (evidence!211 thiss!745))) b_next!4509))))

(declare-fun bs!3204 () Bool)

(declare-fun b!12279 () Bool)

(assert (= bs!3204 (and b!12279 b!12286)))

(declare-fun lambda!3340 () Int)

(assert (=> bs!3204 (not (= lambda!3340 lambda!3337))))

(assert (=> bs!3204 (not (= lambda!3340 lambda!3338))))

(assert (=> b!12279 true))

(assert (=> b!12279 (< (dynLambda!521 order!325 f!539) (dynLambda!522 order!327 lambda!3340))))

(assert (=> b!12279 true))

(assert (=> b!12279 true))

(declare-fun b_next!4511 () Bool)

(assert (=> b!12281 (= b_next!4499 (or (and b!12279 (= lambda!3340 (x!7096 that!193))) b_next!4511))))

(declare-fun b_next!4513 () Bool)

(assert (=> b!12281 (= b_next!4501 (or (and b!12279 (= lambda!3340 (y!670 that!193))) b_next!4513))))

(declare-fun b_next!4515 () Bool)

(assert (=> b!12278 (= b_next!4503 (or (and b!12279 (= lambda!3340 (x!7096 thiss!745))) b_next!4515))))

(declare-fun b_next!4517 () Bool)

(assert (=> b!12278 (= b_next!4505 (or (and b!12279 (= lambda!3340 (y!670 thiss!745))) b_next!4517))))

(declare-fun m!15241 () Bool)

(assert (=> b!12279 m!15241))

(declare-fun lambda!3341 () Int)

(assert (=> bs!3204 (not (= lambda!3341 lambda!3339))))

(declare-fun dynLambda!523 (Int) Bool)

(assert (=> (and b!12281 b!12279 (= (dynLambda!523 lambda!3341) (dynLambda!523 (evidence!211 that!193)))) (= lambda!3341 (evidence!211 that!193))))

(assert (=> (and b!12278 b!12279 (= (dynLambda!523 lambda!3341) (dynLambda!523 (evidence!211 thiss!745)))) (= lambda!3341 (evidence!211 thiss!745))))

(declare-fun b_next!4519 () Bool)

(assert (=> b!12281 (= b_next!4507 (or (and b!12279 (= lambda!3341 (evidence!211 that!193))) b_next!4519))))

(declare-fun b_next!4521 () Bool)

(assert (=> b!12278 (= b_next!4509 (or (and b!12279 (= lambda!3341 (evidence!211 thiss!745))) b_next!4521))))

(declare-fun e!6750 () Bool)

(assert (=> b!12278 (= e!6750 (and tp!3028 tp!3027 tp!3029))))

(declare-fun res!4582 () Bool)

(declare-fun e!6751 () Bool)

(assert (=> b!12279 (=> (not res!4582) (not e!6751))))

(assert (=> b!12279 (= res!4582 (= that!193 (EqEvidence!289 lambda!3340 lambda!3340 lambda!3341)))))

(declare-fun b!12280 () Bool)

(declare-fun res!4581 () Bool)

(assert (=> b!12280 (=> (not res!4581) (not e!6751))))

(assert (=> b!12280 (= res!4581 (dynLambda!523 (evidence!211 thiss!745)))))

(declare-fun e!6752 () Bool)

(assert (=> b!12281 (= e!6752 (and tp!3025 tp!3030 tp!3026))))

(declare-fun b!12282 () Bool)

(declare-fun res!4585 () Bool)

(assert (=> b!12282 (=> (not res!4585) (not e!6751))))

(declare-datatypes () ((List!288 (Nil!286) (Cons!285 (head!503 Balance!361) (tail!515 List!288)))))

(declare-fun ys!54 () List!288)

(declare-fun isEmpty!216 (List!288) Bool)

(assert (=> b!12282 (= res!4585 (not (isEmpty!216 ys!54)))))

(declare-fun b!12283 () Bool)

(declare-fun res!4579 () Bool)

(assert (=> b!12283 (=> (not res!4579) (not e!6751))))

(declare-datatypes () ((ProofOps!276 (ProofOps!277 (prop!274 Bool)))))

(declare-fun thiss!710 () ProofOps!276)

(declare-fun xs!292 () List!288)

(declare-fun dynLambda!524 (Int Balance!361 Balance!361) Balance!361)

(declare-fun foldRight1!118 (List!288 Int) Balance!361)

(declare-fun append!137 (List!288 List!288) List!288)

(assert (=> b!12283 (= res!4579 (= thiss!710 (ProofOps!277 (= (dynLambda!524 f!539 (foldRight1!118 xs!292 f!539) (foldRight1!118 ys!54 f!539)) (foldRight1!118 (append!137 xs!292 ys!54) f!539)))))))

(declare-fun res!4580 () Bool)

(assert (=> start!2474 (=> (not res!4580) (not e!6751))))

(assert (=> start!2474 (= res!4580 (not (isEmpty!216 xs!292)))))

(assert (=> start!2474 e!6751))

(assert (=> start!2474 tp!3031))

(declare-fun inv!415 (EqEvidence!288) Bool)

(assert (=> start!2474 (and (inv!415 that!193) e!6752)))

(assert (=> start!2474 true))

(assert (=> start!2474 (and (inv!415 thiss!745) e!6750)))

(declare-fun b!12284 () Bool)

(declare-fun dynLambda!525 (Int) Balance!361)

(assert (=> b!12284 (= e!6751 (not (= (dynLambda!525 (y!670 thiss!745)) (dynLambda!525 (x!7096 that!193)))))))

(declare-fun b!12285 () Bool)

(declare-fun res!4578 () Bool)

(assert (=> b!12285 (=> (not res!4578) (not e!6751))))

(assert (=> b!12285 (= res!4578 (or (not (is-Cons!285 xs!292)) (not (is-Nil!286 (tail!515 xs!292)))))))

(declare-fun res!4583 () Bool)

(assert (=> b!12286 (=> (not res!4583) (not e!6751))))

(assert (=> b!12286 (= res!4583 (= thiss!745 (EqEvidence!289 lambda!3337 lambda!3338 lambda!3339)))))

(declare-fun res!4584 () Bool)

(assert (=> b!12287 (=> (not res!4584) (not e!6751))))

(assert (=> b!12287 (= res!4584 (= f!539 lambda!3336))))

(assert (= (and start!2474 res!4580) b!12282))

(assert (= (and b!12282 res!4585) b!12287))

(assert (= (and b!12287 res!4584) b!12283))

(assert (= (and b!12283 res!4579) b!12285))

(assert (= (and b!12285 res!4578) b!12286))

(assert (= (and b!12286 res!4583) b!12279))

(assert (= (and b!12279 res!4582) b!12280))

(assert (= (and b!12280 res!4581) b!12284))

(assert (= start!2474 b!12281))

(assert (= start!2474 b!12278))

(declare-fun b_lambda!6785 () Bool)

(assert (=> (not b_lambda!6785) (not b!12280)))

(declare-fun t!3795 () Bool)

(declare-fun tb!3455 () Bool)

(assert (=> (and b!12281 (= (evidence!211 that!193) (evidence!211 thiss!745)) t!3795) tb!3455))

(declare-fun result!3507 () Bool)

(assert (=> tb!3455 (= result!3507 true)))

(assert (=> b!12280 t!3795))

(declare-fun b_and!6623 () Bool)

(assert (= b_and!6615 (and (=> t!3795 result!3507) b_and!6623)))

(declare-fun t!3797 () Bool)

(declare-fun tb!3457 () Bool)

(assert (=> (and b!12278 (= (evidence!211 thiss!745) (evidence!211 thiss!745)) t!3797) tb!3457))

(declare-fun result!3509 () Bool)

(assert (=> tb!3457 (= result!3509 true)))

(assert (=> b!12280 t!3797))

(declare-fun b_and!6625 () Bool)

(assert (= b_and!6621 (and (=> t!3797 result!3509) b_and!6625)))

(declare-fun b_lambda!6787 () Bool)

(assert (=> (not b_lambda!6787) (not b!12283)))

(declare-fun t!3799 () Bool)

(declare-fun tb!3459 () Bool)

(assert (=> (and start!2474 (= f!539 f!539) t!3799) tb!3459))

(declare-fun result!3511 () Bool)

(assert (=> tb!3459 (= result!3511 true)))

(assert (=> b!12283 t!3799))

(declare-fun b_and!6627 () Bool)

(assert (= b_and!6609 (and (=> t!3799 result!3511) b_and!6627)))

(declare-fun b_lambda!6789 () Bool)

(assert (=> (not b_lambda!6789) (not b!12284)))

(declare-fun tb!3461 () Bool)

(declare-fun t!3801 () Bool)

(assert (=> (and b!12281 (= (x!7096 that!193) (y!670 thiss!745)) t!3801) tb!3461))

(declare-fun result!3513 () Bool)

(assert (=> tb!3461 (= result!3513 true)))

(assert (=> b!12284 t!3801))

(declare-fun b_and!6629 () Bool)

(assert (= b_and!6611 (and (=> t!3801 result!3513) b_and!6629)))

(declare-fun tb!3463 () Bool)

(declare-fun t!3803 () Bool)

(assert (=> (and b!12281 (= (y!670 that!193) (y!670 thiss!745)) t!3803) tb!3463))

(declare-fun result!3515 () Bool)

(assert (=> tb!3463 (= result!3515 true)))

(assert (=> b!12284 t!3803))

(declare-fun b_and!6631 () Bool)

(assert (= b_and!6613 (and (=> t!3803 result!3515) b_and!6631)))

(declare-fun t!3805 () Bool)

(declare-fun tb!3465 () Bool)

(assert (=> (and b!12278 (= (x!7096 thiss!745) (y!670 thiss!745)) t!3805) tb!3465))

(declare-fun result!3517 () Bool)

(assert (=> tb!3465 (= result!3517 true)))

(assert (=> b!12284 t!3805))

(declare-fun b_and!6633 () Bool)

(assert (= b_and!6617 (and (=> t!3805 result!3517) b_and!6633)))

(declare-fun t!3807 () Bool)

(declare-fun tb!3467 () Bool)

(assert (=> (and b!12278 (= (y!670 thiss!745) (y!670 thiss!745)) t!3807) tb!3467))

(declare-fun result!3519 () Bool)

(assert (=> tb!3467 (= result!3519 true)))

(assert (=> b!12284 t!3807))

(declare-fun b_and!6635 () Bool)

(assert (= b_and!6619 (and (=> t!3807 result!3519) b_and!6635)))

(declare-fun b_lambda!6791 () Bool)

(assert (=> (not b_lambda!6791) (not b!12284)))

(declare-fun t!3809 () Bool)

(declare-fun tb!3469 () Bool)

(assert (=> (and b!12281 (= (x!7096 that!193) (x!7096 that!193)) t!3809) tb!3469))

(declare-fun result!3521 () Bool)

(assert (=> tb!3469 (= result!3521 true)))

(assert (=> b!12284 t!3809))

(declare-fun b_and!6637 () Bool)

(assert (= b_and!6629 (and (=> t!3809 result!3521) b_and!6637)))

(declare-fun t!3811 () Bool)

(declare-fun tb!3471 () Bool)

(assert (=> (and b!12281 (= (y!670 that!193) (x!7096 that!193)) t!3811) tb!3471))

(declare-fun result!3523 () Bool)

(assert (=> tb!3471 (= result!3523 true)))

(assert (=> b!12284 t!3811))

(declare-fun b_and!6639 () Bool)

(assert (= b_and!6631 (and (=> t!3811 result!3523) b_and!6639)))

(declare-fun t!3813 () Bool)

(declare-fun tb!3473 () Bool)

(assert (=> (and b!12278 (= (x!7096 thiss!745) (x!7096 that!193)) t!3813) tb!3473))

(declare-fun result!3525 () Bool)

(assert (=> tb!3473 (= result!3525 true)))

(assert (=> b!12284 t!3813))

(declare-fun b_and!6641 () Bool)

(assert (= b_and!6633 (and (=> t!3813 result!3525) b_and!6641)))

(declare-fun t!3815 () Bool)

(declare-fun tb!3475 () Bool)

(assert (=> (and b!12278 (= (y!670 thiss!745) (x!7096 that!193)) t!3815) tb!3475))

(declare-fun result!3527 () Bool)

(assert (=> tb!3475 (= result!3527 true)))

(assert (=> b!12284 t!3815))

(declare-fun b_and!6643 () Bool)

(assert (= b_and!6635 (and (=> t!3815 result!3527) b_and!6643)))

(declare-fun m!15243 () Bool)

(assert (=> b!12283 m!15243))

(declare-fun m!15245 () Bool)

(assert (=> b!12283 m!15245))

(declare-fun m!15247 () Bool)

(assert (=> b!12283 m!15247))

(assert (=> b!12283 m!15245))

(assert (=> b!12283 m!15247))

(declare-fun m!15249 () Bool)

(assert (=> b!12283 m!15249))

(assert (=> b!12283 m!15243))

(declare-fun m!15251 () Bool)

(assert (=> b!12283 m!15251))

(declare-fun m!15253 () Bool)

(assert (=> b!12284 m!15253))

(declare-fun m!15255 () Bool)

(assert (=> b!12284 m!15255))

(declare-fun m!15257 () Bool)

(assert (=> b!12282 m!15257))

(declare-fun m!15259 () Bool)

(assert (=> start!2474 m!15259))

(declare-fun m!15261 () Bool)

(assert (=> start!2474 m!15261))

(declare-fun m!15263 () Bool)

(assert (=> start!2474 m!15263))

(declare-fun m!15265 () Bool)

(assert (=> b!12280 m!15265))

(push 1)

(assert (not b!12282))

(assert b_and!6641)

(assert (not b_lambda!6787))

(assert (not b_next!4511))

(assert b_and!6623)

(assert b_and!6639)

(assert (not b_lambda!6789))

(assert b_and!6637)

(assert (not b_next!4521))

(assert (not b_next!4515))

(assert (not b_next!4489))

(assert (not b!12283))

(assert (not b_next!4517))

(assert (not start!2474))

(assert (not b_lambda!6791))

(assert (not b!12279))

(assert b_and!6625)

(assert (not b_lambda!6785))

(assert (not b_next!4519))

(assert b_and!6627)

(assert (not b_next!4513))

(assert b_and!6643)

(check-sat)

(pop 1)

(push 1)

(assert b_and!6641)

(assert (not b_next!4511))

(assert b_and!6623)

(assert b_and!6639)

(assert b_and!6637)

(assert (not b_next!4521))

(assert (not b_next!4515))

(assert (not b_next!4489))

(assert (not b_next!4517))

(assert b_and!6625)

(assert (not b_next!4519))

(assert b_and!6627)

(assert (not b_next!4513))

(assert b_and!6643)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6793 () Bool)

(assert (= b_lambda!6791 (or (and b!12286 (= lambda!3337 (x!7096 that!193))) (and b!12281 b_free!1907) (and b!12279 (= lambda!3340 (x!7096 that!193))) (and b!12286 (= lambda!3338 (x!7096 that!193))) (and b!12278 b_free!1915 (= (y!670 thiss!745) (x!7096 that!193))) (and b!12278 b_free!1913 (= (x!7096 thiss!745) (x!7096 that!193))) (and b!12281 b_free!1909 (= (y!670 that!193) (x!7096 that!193))) b_lambda!6793)))

(declare-fun bs!3205 () Bool)

(declare-fun d!9503 () Bool)

(assert (= bs!3205 (and d!9503 b!12286)))

(assert (=> bs!3205 (= (dynLambda!525 lambda!3337) (dynLambda!524 f!539 (foldRight1!118 xs!292 f!539) (foldRight1!118 ys!54 f!539)))))

(declare-fun b_lambda!6801 () Bool)

(assert (=> (not b_lambda!6801) (not bs!3205)))

(assert (=> bs!3205 t!3799))

(declare-fun b_and!6645 () Bool)

(assert (= b_and!6627 (and (=> t!3799 result!3511) b_and!6645)))

(assert (=> bs!3205 m!15245))

(assert (=> bs!3205 m!15247))

(assert (=> bs!3205 m!15245))

(assert (=> bs!3205 m!15247))

(assert (=> bs!3205 m!15249))

(assert (=> (and b!12286 (= lambda!3337 (x!7096 that!193)) b!12284) d!9503))

(declare-fun bs!3206 () Bool)

(declare-fun d!9505 () Bool)

(assert (= bs!3206 (and d!9505 b!12279)))

(assert (=> bs!3206 (= (dynLambda!525 lambda!3340) (dynLambda!524 f!539 (head!503 xs!292) (foldRight1!118 (append!137 (tail!515 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!6803 () Bool)

(assert (=> (not b_lambda!6803) (not bs!3206)))

(declare-fun t!3817 () Bool)

(declare-fun tb!3477 () Bool)

(assert (=> (and start!2474 (= f!539 f!539) t!3817) tb!3477))

(declare-fun result!3529 () Bool)

(assert (=> tb!3477 (= result!3529 true)))

(assert (=> bs!3206 t!3817))

(declare-fun b_and!6647 () Bool)

(assert (= b_and!6645 (and (=> t!3817 result!3529) b_and!6647)))

(declare-fun m!15267 () Bool)

(assert (=> bs!3206 m!15267))

(assert (=> bs!3206 m!15267))

(declare-fun m!15269 () Bool)

(assert (=> bs!3206 m!15269))

(assert (=> bs!3206 m!15269))

(declare-fun m!15271 () Bool)

(assert (=> bs!3206 m!15271))

(assert (=> (and b!12279 (= lambda!3340 (x!7096 that!193)) b!12284) d!9505))

(declare-fun bs!3207 () Bool)

(declare-fun d!9507 () Bool)

(assert (= bs!3207 (and d!9507 b!12286)))

(assert (=> bs!3207 (= (dynLambda!525 lambda!3338) (dynLambda!524 f!539 (head!503 xs!292) (dynLambda!524 f!539 (foldRight1!118 (tail!515 xs!292) f!539) (foldRight1!118 ys!54 f!539))))))

(declare-fun b_lambda!6805 () Bool)

(assert (=> (not b_lambda!6805) (not bs!3207)))

(declare-fun t!3819 () Bool)

(declare-fun tb!3479 () Bool)

(assert (=> (and start!2474 (= f!539 f!539) t!3819) tb!3479))

(declare-fun result!3531 () Bool)

(assert (=> tb!3479 (= result!3531 true)))

(assert (=> bs!3207 t!3819))

(declare-fun b_and!6649 () Bool)

(assert (= b_and!6647 (and (=> t!3819 result!3531) b_and!6649)))

(declare-fun b_lambda!6807 () Bool)

(assert (=> (not b_lambda!6807) (not bs!3207)))

(declare-fun t!3821 () Bool)

(declare-fun tb!3481 () Bool)

(assert (=> (and start!2474 (= f!539 f!539) t!3821) tb!3481))

(declare-fun result!3533 () Bool)

(assert (=> tb!3481 (= result!3533 true)))

(assert (=> bs!3207 t!3821))

(declare-fun b_and!6651 () Bool)

(assert (= b_and!6649 (and (=> t!3821 result!3533) b_and!6651)))

(declare-fun m!15273 () Bool)

(assert (=> bs!3207 m!15273))

(declare-fun m!15275 () Bool)

(assert (=> bs!3207 m!15275))

(declare-fun m!15277 () Bool)

(assert (=> bs!3207 m!15277))

(assert (=> bs!3207 m!15247))

(assert (=> bs!3207 m!15273))

(assert (=> bs!3207 m!15247))

(assert (=> bs!3207 m!15275))

(assert (=> (and b!12286 (= lambda!3338 (x!7096 that!193)) b!12284) d!9507))

(declare-fun b_lambda!6795 () Bool)

(assert (= b_lambda!6787 (or (and b!12287 (= lambda!3336 f!539)) (and start!2474 b_free!1905) b_lambda!6795)))

(declare-fun bs!3208 () Bool)

(declare-fun d!9509 () Bool)

(assert (= bs!3208 (and d!9509 b!12287)))

(declare-fun ++!3 (Balance!361 Balance!361) Balance!361)

(assert (=> bs!3208 (= (dynLambda!524 lambda!3336 (foldRight1!118 xs!292 f!539) (foldRight1!118 ys!54 f!539)) (++!3 (foldRight1!118 xs!292 f!539) (foldRight1!118 ys!54 f!539)))))

(assert (=> bs!3208 m!15245))

(assert (=> bs!3208 m!15247))

(declare-fun m!15279 () Bool)

(assert (=> bs!3208 m!15279))

(assert (=> (and b!12287 (= lambda!3336 f!539) b!12283) d!9509))

(declare-fun b_lambda!6797 () Bool)

(assert (= b_lambda!6789 (or (and b!12286 (= lambda!3338 (y!670 thiss!745))) (and b!12281 b_free!1907 (= (x!7096 that!193) (y!670 thiss!745))) (and b!12279 (= lambda!3340 (y!670 thiss!745))) (and b!12278 b_free!1915) (and b!12286 (= lambda!3337 (y!670 thiss!745))) (and b!12278 b_free!1913 (= (x!7096 thiss!745) (y!670 thiss!745))) (and b!12281 b_free!1909 (= (y!670 that!193) (y!670 thiss!745))) b_lambda!6797)))

(declare-fun bs!3209 () Bool)

(declare-fun d!9511 () Bool)

(assert (= bs!3209 (and d!9511 b!12286)))

(assert (=> bs!3209 (= (dynLambda!525 lambda!3338) (dynLambda!524 f!539 (head!503 xs!292) (dynLambda!524 f!539 (foldRight1!118 (tail!515 xs!292) f!539) (foldRight1!118 ys!54 f!539))))))

(declare-fun b_lambda!6809 () Bool)

(assert (=> (not b_lambda!6809) (not bs!3209)))

(assert (=> bs!3209 t!3819))

(declare-fun b_and!6653 () Bool)

(assert (= b_and!6651 (and (=> t!3819 result!3531) b_and!6653)))

(declare-fun b_lambda!6811 () Bool)

(assert (=> (not b_lambda!6811) (not bs!3209)))

(assert (=> bs!3209 t!3821))

(declare-fun b_and!6655 () Bool)

(assert (= b_and!6653 (and (=> t!3821 result!3533) b_and!6655)))

(assert (=> bs!3209 m!15273))

(assert (=> bs!3209 m!15275))

(assert (=> bs!3209 m!15277))

(assert (=> bs!3209 m!15247))

(assert (=> bs!3209 m!15273))

(assert (=> bs!3209 m!15247))

(assert (=> bs!3209 m!15275))

(assert (=> (and b!12286 (= lambda!3338 (y!670 thiss!745)) b!12284) d!9511))

(declare-fun bs!3210 () Bool)

(declare-fun d!9513 () Bool)

(assert (= bs!3210 (and d!9513 b!12279)))

(assert (=> bs!3210 (= (dynLambda!525 lambda!3340) (dynLambda!524 f!539 (head!503 xs!292) (foldRight1!118 (append!137 (tail!515 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!6813 () Bool)

(assert (=> (not b_lambda!6813) (not bs!3210)))

(assert (=> bs!3210 t!3817))

(declare-fun b_and!6657 () Bool)

(assert (= b_and!6655 (and (=> t!3817 result!3529) b_and!6657)))

(assert (=> bs!3210 m!15267))

(assert (=> bs!3210 m!15267))

(assert (=> bs!3210 m!15269))

(assert (=> bs!3210 m!15269))

(assert (=> bs!3210 m!15271))

(assert (=> (and b!12279 (= lambda!3340 (y!670 thiss!745)) b!12284) d!9513))

(declare-fun bs!3211 () Bool)

(declare-fun d!9515 () Bool)

(assert (= bs!3211 (and d!9515 b!12286)))

(assert (=> bs!3211 (= (dynLambda!525 lambda!3337) (dynLambda!524 f!539 (foldRight1!118 xs!292 f!539) (foldRight1!118 ys!54 f!539)))))

(declare-fun b_lambda!6815 () Bool)

(assert (=> (not b_lambda!6815) (not bs!3211)))

(assert (=> bs!3211 t!3799))

(declare-fun b_and!6659 () Bool)

(assert (= b_and!6657 (and (=> t!3799 result!3511) b_and!6659)))

(assert (=> bs!3211 m!15245))

(assert (=> bs!3211 m!15247))

(assert (=> bs!3211 m!15245))

(assert (=> bs!3211 m!15247))

(assert (=> bs!3211 m!15249))

(assert (=> (and b!12286 (= lambda!3337 (y!670 thiss!745)) b!12284) d!9515))

(declare-fun b_lambda!6799 () Bool)

(assert (= b_lambda!6785 (or (and b!12286 (= lambda!3339 (evidence!211 thiss!745))) (and b!12279 (= lambda!3341 (evidence!211 thiss!745))) (and b!12281 b_free!1911 (= (evidence!211 that!193) (evidence!211 thiss!745))) (and b!12278 b_free!1917) b_lambda!6799)))

(declare-fun bs!3212 () Bool)

(declare-fun d!9517 () Bool)

(assert (= bs!3212 (and d!9517 b!12286)))

(declare-fun append!24 (List!288 List!288) Bool)

(assert (=> bs!3212 (= (dynLambda!523 lambda!3339) (append!24 (tail!515 xs!292) ys!54))))

(declare-fun m!15281 () Bool)

(assert (=> bs!3212 m!15281))

(assert (=> (and b!12286 (= lambda!3339 (evidence!211 thiss!745)) b!12280) d!9517))

(declare-fun bs!3213 () Bool)

(declare-fun d!9519 () Bool)

(assert (= bs!3213 (and d!9519 b!12279)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!3213 (= (dynLambda!523 lambda!3341) trivial!1)))

(assert (=> (and b!12279 (= lambda!3341 (evidence!211 thiss!745)) b!12280) d!9519))

(push 1)

(assert (not b_lambda!6795))

(assert (not b!12282))

(assert b_and!6641)

(assert b_and!6659)

(assert (not bs!3207))

(assert (not b_next!4511))

(assert b_and!6623)

(assert b_and!6639)

(assert b_and!6637)

(assert (not bs!3206))

(assert (not b_next!4521))

(assert (not b_next!4515))

(assert (not bs!3205))

(assert (not b_lambda!6805))

(assert (not b_next!4489))

(assert (not b!12283))

(assert (not b_lambda!6809))

(assert (not bs!3209))

(assert (not bs!3208))

(assert (not b_next!4517))

(assert (not start!2474))

(assert (not b_lambda!6801))

(assert (not b_lambda!6807))

(assert (not b_lambda!6803))

(assert (not b_lambda!6811))

(assert (not b_lambda!6797))

(assert (not b_lambda!6793))

(assert (not b_lambda!6813))

(assert (not b!12279))

(assert (not bs!3212))

(assert (not b_lambda!6815))

(assert b_and!6625)

(assert (not bs!3210))

(assert (not b_next!4519))

(assert (not b_lambda!6799))

(assert (not b_next!4513))

(assert (not bs!3211))

(assert b_and!6643)

(check-sat)

(pop 1)

(push 1)

(assert b_and!6641)

(assert b_and!6659)

(assert (not b_next!4511))

(assert b_and!6623)

(assert b_and!6639)

(assert b_and!6637)

(assert (not b_next!4521))

(assert (not b_next!4515))

(assert (not b_next!4489))

(assert (not b_next!4517))

(assert b_and!6625)

(assert (not b_next!4519))

(assert (not b_next!4513))

(assert b_and!6643)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6817 () Bool)

(assert (= b_lambda!6811 (or (and b!12287 (= lambda!3336 f!539)) (and start!2474 b_free!1905) b_lambda!6817)))

(declare-fun bs!3214 () Bool)

(declare-fun d!9521 () Bool)

(assert (= bs!3214 (and d!9521 b!12287)))

(assert (=> bs!3214 (= (dynLambda!524 lambda!3336 (foldRight1!118 (tail!515 xs!292) f!539) (foldRight1!118 ys!54 f!539)) (++!3 (foldRight1!118 (tail!515 xs!292) f!539) (foldRight1!118 ys!54 f!539)))))

(assert (=> bs!3214 m!15273))

(assert (=> bs!3214 m!15247))

(declare-fun m!15283 () Bool)

(assert (=> bs!3214 m!15283))

(assert (=> (and b!12287 (= lambda!3336 f!539) bs!3209) d!9521))

(declare-fun b_lambda!6819 () Bool)

(assert (= b_lambda!6801 (or (and b!12287 (= lambda!3336 f!539)) (and start!2474 b_free!1905) b_lambda!6819)))

(assert (=> (and b!12287 (= lambda!3336 f!539) bs!3205) d!9509))

(declare-fun b_lambda!6821 () Bool)

(assert (= b_lambda!6809 (or (and b!12287 (= lambda!3336 f!539)) (and start!2474 b_free!1905) b_lambda!6821)))

(declare-fun bs!3215 () Bool)

(declare-fun d!9523 () Bool)

(assert (= bs!3215 (and d!9523 b!12287)))

(assert (=> bs!3215 (= (dynLambda!524 lambda!3336 (head!503 xs!292) (dynLambda!524 f!539 (foldRight1!118 (tail!515 xs!292) f!539) (foldRight1!118 ys!54 f!539))) (++!3 (head!503 xs!292) (dynLambda!524 f!539 (foldRight1!118 (tail!515 xs!292) f!539) (foldRight1!118 ys!54 f!539))))))

(assert (=> bs!3215 m!15275))

(declare-fun m!15285 () Bool)

(assert (=> bs!3215 m!15285))

(assert (=> (and b!12287 (= lambda!3336 f!539) bs!3209) d!9523))

(declare-fun b_lambda!6823 () Bool)

(assert (= b_lambda!6807 (or (and b!12287 (= lambda!3336 f!539)) (and start!2474 b_free!1905) b_lambda!6823)))

(assert (=> (and b!12287 (= lambda!3336 f!539) bs!3207) d!9521))

(declare-fun b_lambda!6825 () Bool)

(assert (= b_lambda!6805 (or (and b!12287 (= lambda!3336 f!539)) (and start!2474 b_free!1905) b_lambda!6825)))

(assert (=> (and b!12287 (= lambda!3336 f!539) bs!3207) d!9523))

(declare-fun b_lambda!6827 () Bool)

(assert (= b_lambda!6803 (or (and b!12287 (= lambda!3336 f!539)) (and start!2474 b_free!1905) b_lambda!6827)))

(declare-fun bs!3216 () Bool)

(declare-fun d!9525 () Bool)

(assert (= bs!3216 (and d!9525 b!12287)))

(assert (=> bs!3216 (= (dynLambda!524 lambda!3336 (head!503 xs!292) (foldRight1!118 (append!137 (tail!515 xs!292) ys!54) f!539)) (++!3 (head!503 xs!292) (foldRight1!118 (append!137 (tail!515 xs!292) ys!54) f!539)))))

(assert (=> bs!3216 m!15269))

(declare-fun m!15287 () Bool)

(assert (=> bs!3216 m!15287))

(assert (=> (and b!12287 (= lambda!3336 f!539) bs!3206) d!9525))

(declare-fun b_lambda!6829 () Bool)

(assert (= b_lambda!6813 (or (and b!12287 (= lambda!3336 f!539)) (and start!2474 b_free!1905) b_lambda!6829)))

(assert (=> (and b!12287 (= lambda!3336 f!539) bs!3210) d!9525))

(declare-fun b_lambda!6831 () Bool)

(assert (= b_lambda!6815 (or (and b!12287 (= lambda!3336 f!539)) (and start!2474 b_free!1905) b_lambda!6831)))

(assert (=> (and b!12287 (= lambda!3336 f!539) bs!3211) d!9509))

(push 1)

(assert (not b_lambda!6831))

(assert (not b_lambda!6795))

(assert (not b!12282))

(assert b_and!6641)

(assert b_and!6659)

(assert (not bs!3207))

(assert (not b_lambda!6829))

(assert (not b_next!4511))

(assert b_and!6623)

(assert b_and!6639)

(assert (not bs!3216))

(assert b_and!6637)

(assert (not bs!3206))

(assert (not b_next!4521))

(assert (not b_next!4515))

(assert (not bs!3205))

(assert (not b_lambda!6823))

(assert (not bs!3214))

(assert (not b_lambda!6821))

(assert (not b_next!4489))

(assert (not b!12283))

(assert (not bs!3209))

(assert (not bs!3208))

(assert (not b_next!4517))

(assert (not start!2474))

(assert (not b_lambda!6827))

(assert (not bs!3215))

(assert (not b_lambda!6797))

(assert (not b_lambda!6793))

(assert (not b_lambda!6817))

(assert (not b!12279))

(assert (not b_lambda!6825))

(assert (not bs!3212))

(assert b_and!6625)

(assert (not b_lambda!6819))

(assert (not bs!3210))

(assert (not b_next!4519))

(assert (not b_lambda!6799))

(assert (not b_next!4513))

(assert (not bs!3211))

(assert b_and!6643)

(check-sat)

(pop 1)

(push 1)

(assert b_and!6641)

(assert b_and!6659)

(assert (not b_next!4511))

(assert b_and!6623)

(assert b_and!6639)

(assert b_and!6637)

(assert (not b_next!4521))

(assert (not b_next!4515))

(assert (not b_next!4489))

(assert (not b_next!4517))

(assert b_and!6625)

(assert (not b_next!4519))

(assert (not b_next!4513))

(assert b_and!6643)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9527 () Bool)

(declare-fun c!3483 () Bool)

(assert (=> d!9527 (= c!3483 (and (is-Cons!285 (append!137 (tail!515 xs!292) ys!54)) (is-Nil!286 (tail!515 (append!137 (tail!515 xs!292) ys!54)))))))

(declare-fun e!6755 () Balance!361)

(assert (=> d!9527 (= (foldRight1!118 (append!137 (tail!515 xs!292) ys!54) f!539) e!6755)))

(declare-fun b!12298 () Bool)

(assert (=> b!12298 (= e!6755 (head!503 (append!137 (tail!515 xs!292) ys!54)))))

(declare-fun b!12299 () Bool)

(assert (=> b!12299 (= e!6755 (dynLambda!524 f!539 (head!503 (append!137 (tail!515 xs!292) ys!54)) (foldRight1!118 (tail!515 (append!137 (tail!515 xs!292) ys!54)) f!539)))))

(assert (= (and d!9527 c!3483) b!12298))

(assert (= (and d!9527 (not c!3483)) b!12299))

(declare-fun b_lambda!6833 () Bool)

(assert (=> (not b_lambda!6833) (not b!12299)))

(declare-fun t!3823 () Bool)

(declare-fun tb!3483 () Bool)

(assert (=> (and start!2474 (= f!539 f!539) t!3823) tb!3483))

(declare-fun result!3535 () Bool)

(assert (=> tb!3483 (= result!3535 true)))

(assert (=> b!12299 t!3823))

(declare-fun b_and!6661 () Bool)

(assert (= b_and!6659 (and (=> t!3823 result!3535) b_and!6661)))

(declare-fun m!15289 () Bool)

(assert (=> b!12299 m!15289))

(assert (=> b!12299 m!15289))

(declare-fun m!15291 () Bool)

(assert (=> b!12299 m!15291))

(assert (=> bs!3206 d!9527))

(declare-fun d!9529 () Bool)

(declare-fun c!3486 () Bool)

(assert (=> d!9529 (= c!3486 (is-Nil!286 (tail!515 xs!292)))))

(declare-fun e!6758 () List!288)

(assert (=> d!9529 (= (append!137 (tail!515 xs!292) ys!54) e!6758)))

(declare-fun b!12304 () Bool)

(assert (=> b!12304 (= e!6758 ys!54)))

(declare-fun b!12305 () Bool)

(assert (=> b!12305 (= e!6758 (Cons!285 (head!503 (tail!515 xs!292)) (append!137 (tail!515 (tail!515 xs!292)) ys!54)))))

(assert (= (and d!9529 c!3486) b!12304))

(assert (= (and d!9529 (not c!3486)) b!12305))

(declare-fun m!15293 () Bool)

(assert (=> b!12305 m!15293))

(assert (=> bs!3206 d!9529))

(declare-fun d!9531 () Bool)

(declare-fun c!3487 () Bool)

(assert (=> d!9531 (= c!3487 (and (is-Cons!285 xs!292) (is-Nil!286 (tail!515 xs!292))))))

(declare-fun e!6759 () Balance!361)

(assert (=> d!9531 (= (foldRight1!118 xs!292 f!539) e!6759)))

(declare-fun b!12306 () Bool)

(assert (=> b!12306 (= e!6759 (head!503 xs!292))))

(declare-fun b!12307 () Bool)

(assert (=> b!12307 (= e!6759 (dynLambda!524 f!539 (head!503 xs!292) (foldRight1!118 (tail!515 xs!292) f!539)))))

(assert (= (and d!9531 c!3487) b!12306))

(assert (= (and d!9531 (not c!3487)) b!12307))

(declare-fun b_lambda!6835 () Bool)

(assert (=> (not b_lambda!6835) (not b!12307)))

(declare-fun t!3825 () Bool)

(declare-fun tb!3485 () Bool)

(assert (=> (and start!2474 (= f!539 f!539) t!3825) tb!3485))

(declare-fun result!3537 () Bool)

(assert (=> tb!3485 (= result!3537 true)))

(assert (=> b!12307 t!3825))

(declare-fun b_and!6663 () Bool)

(assert (= b_and!6661 (and (=> t!3825 result!3537) b_and!6663)))

(assert (=> b!12307 m!15273))

(assert (=> b!12307 m!15273))

(declare-fun m!15295 () Bool)

(assert (=> b!12307 m!15295))

(assert (=> b!12283 d!9531))

(declare-fun d!9533 () Bool)

(declare-fun c!3488 () Bool)

(assert (=> d!9533 (= c!3488 (and (is-Cons!285 ys!54) (is-Nil!286 (tail!515 ys!54))))))

(declare-fun e!6760 () Balance!361)

(assert (=> d!9533 (= (foldRight1!118 ys!54 f!539) e!6760)))

(declare-fun b!12308 () Bool)

(assert (=> b!12308 (= e!6760 (head!503 ys!54))))

(declare-fun b!12309 () Bool)

(assert (=> b!12309 (= e!6760 (dynLambda!524 f!539 (head!503 ys!54) (foldRight1!118 (tail!515 ys!54) f!539)))))

(assert (= (and d!9533 c!3488) b!12308))

(assert (= (and d!9533 (not c!3488)) b!12309))

(declare-fun b_lambda!6837 () Bool)

(assert (=> (not b_lambda!6837) (not b!12309)))

(declare-fun t!3827 () Bool)

(declare-fun tb!3487 () Bool)

(assert (=> (and start!2474 (= f!539 f!539) t!3827) tb!3487))

(declare-fun result!3539 () Bool)

(assert (=> tb!3487 (= result!3539 true)))

(assert (=> b!12309 t!3827))

(declare-fun b_and!6665 () Bool)

(assert (= b_and!6663 (and (=> t!3827 result!3539) b_and!6665)))

(declare-fun m!15297 () Bool)

(assert (=> b!12309 m!15297))

(assert (=> b!12309 m!15297))

(declare-fun m!15299 () Bool)

(assert (=> b!12309 m!15299))

(assert (=> b!12283 d!9533))

(declare-fun d!9535 () Bool)

(declare-fun c!3489 () Bool)

(assert (=> d!9535 (= c!3489 (and (is-Cons!285 (append!137 xs!292 ys!54)) (is-Nil!286 (tail!515 (append!137 xs!292 ys!54)))))))

(declare-fun e!6761 () Balance!361)

(assert (=> d!9535 (= (foldRight1!118 (append!137 xs!292 ys!54) f!539) e!6761)))

(declare-fun b!12310 () Bool)

(assert (=> b!12310 (= e!6761 (head!503 (append!137 xs!292 ys!54)))))

(declare-fun b!12311 () Bool)

(assert (=> b!12311 (= e!6761 (dynLambda!524 f!539 (head!503 (append!137 xs!292 ys!54)) (foldRight1!118 (tail!515 (append!137 xs!292 ys!54)) f!539)))))

(assert (= (and d!9535 c!3489) b!12310))

(assert (= (and d!9535 (not c!3489)) b!12311))

(declare-fun b_lambda!6839 () Bool)

(assert (=> (not b_lambda!6839) (not b!12311)))

(declare-fun t!3829 () Bool)

(declare-fun tb!3489 () Bool)

(assert (=> (and start!2474 (= f!539 f!539) t!3829) tb!3489))

(declare-fun result!3541 () Bool)

(assert (=> tb!3489 (= result!3541 true)))

(assert (=> b!12311 t!3829))

(declare-fun b_and!6667 () Bool)

(assert (= b_and!6665 (and (=> t!3829 result!3541) b_and!6667)))

(declare-fun m!15301 () Bool)

(assert (=> b!12311 m!15301))

(assert (=> b!12311 m!15301))

(declare-fun m!15303 () Bool)

(assert (=> b!12311 m!15303))

(assert (=> b!12283 d!9535))

(declare-fun d!9537 () Bool)

(declare-fun c!3490 () Bool)

(assert (=> d!9537 (= c!3490 (is-Nil!286 xs!292))))

(declare-fun e!6762 () List!288)

(assert (=> d!9537 (= (append!137 xs!292 ys!54) e!6762)))

(declare-fun b!12312 () Bool)

(assert (=> b!12312 (= e!6762 ys!54)))

(declare-fun b!12313 () Bool)

(assert (=> b!12313 (= e!6762 (Cons!285 (head!503 xs!292) (append!137 (tail!515 xs!292) ys!54)))))

(assert (= (and d!9537 c!3490) b!12312))

(assert (= (and d!9537 (not c!3490)) b!12313))

(assert (=> b!12313 m!15267))

(assert (=> b!12283 d!9537))

(assert (=> bs!3211 d!9531))

(assert (=> bs!3211 d!9533))

(assert (=> bs!3210 d!9527))

(assert (=> bs!3210 d!9529))

(declare-fun d!9539 () Bool)

(assert (=> d!9539 (= trivial!1 true)))

(assert (=> b!12279 d!9539))

(declare-fun d!9541 () Bool)

(assert (=> d!9541 (= (isEmpty!216 ys!54) (is-Nil!286 ys!54))))

(assert (=> b!12282 d!9541))

(declare-fun d!9543 () Bool)

(declare-fun c!3491 () Bool)

(assert (=> d!9543 (= c!3491 (and (is-Cons!285 (tail!515 xs!292)) (is-Nil!286 (tail!515 (tail!515 xs!292)))))))

(declare-fun e!6763 () Balance!361)

(assert (=> d!9543 (= (foldRight1!118 (tail!515 xs!292) f!539) e!6763)))

(declare-fun b!12314 () Bool)

(assert (=> b!12314 (= e!6763 (head!503 (tail!515 xs!292)))))

(declare-fun b!12315 () Bool)

(assert (=> b!12315 (= e!6763 (dynLambda!524 f!539 (head!503 (tail!515 xs!292)) (foldRight1!118 (tail!515 (tail!515 xs!292)) f!539)))))

(assert (= (and d!9543 c!3491) b!12314))

(assert (= (and d!9543 (not c!3491)) b!12315))

(declare-fun b_lambda!6841 () Bool)

(assert (=> (not b_lambda!6841) (not b!12315)))

(declare-fun t!3831 () Bool)

(declare-fun tb!3491 () Bool)

(assert (=> (and start!2474 (= f!539 f!539) t!3831) tb!3491))

(declare-fun result!3543 () Bool)

(assert (=> tb!3491 (= result!3543 true)))

(assert (=> b!12315 t!3831))

(declare-fun b_and!6669 () Bool)

(assert (= b_and!6667 (and (=> t!3831 result!3543) b_and!6669)))

(declare-fun m!15305 () Bool)

(assert (=> b!12315 m!15305))

(assert (=> b!12315 m!15305))

(declare-fun m!15307 () Bool)

(assert (=> b!12315 m!15307))

(assert (=> bs!3209 d!9543))

(assert (=> bs!3209 d!9533))

(declare-fun d!9545 () Bool)

(assert (=> d!9545 (= (isEmpty!216 xs!292) (is-Nil!286 xs!292))))

(assert (=> start!2474 d!9545))

(declare-fun d!9547 () Bool)

(declare-fun res!4588 () Bool)

(declare-fun e!6766 () Bool)

(assert (=> d!9547 (=> (not res!4588) (not e!6766))))

(assert (=> d!9547 (= res!4588 (= (dynLambda!525 (x!7096 that!193)) (dynLambda!525 (y!670 that!193))))))

(assert (=> d!9547 (= (inv!415 that!193) e!6766)))

(declare-fun b!12318 () Bool)

(assert (=> b!12318 (= e!6766 (dynLambda!523 (evidence!211 that!193)))))

(assert (= (and d!9547 res!4588) b!12318))

(declare-fun b_lambda!6843 () Bool)

(assert (=> (not b_lambda!6843) (not d!9547)))

(assert (=> d!9547 t!3809))

(declare-fun b_and!6671 () Bool)

(assert (= b_and!6637 (and (=> t!3809 result!3521) b_and!6671)))

(assert (=> d!9547 t!3811))

(declare-fun b_and!6673 () Bool)

(assert (= b_and!6639 (and (=> t!3811 result!3523) b_and!6673)))

(assert (=> d!9547 t!3813))

(declare-fun b_and!6675 () Bool)

(assert (= b_and!6641 (and (=> t!3813 result!3525) b_and!6675)))

(assert (=> d!9547 t!3815))

(declare-fun b_and!6677 () Bool)

(assert (= b_and!6643 (and (=> t!3815 result!3527) b_and!6677)))

(declare-fun b_lambda!6845 () Bool)

(assert (=> (not b_lambda!6845) (not d!9547)))

(declare-fun t!3833 () Bool)

(declare-fun tb!3493 () Bool)

(assert (=> (and b!12281 (= (x!7096 that!193) (y!670 that!193)) t!3833) tb!3493))

(declare-fun result!3545 () Bool)

(assert (=> tb!3493 (= result!3545 true)))

(assert (=> d!9547 t!3833))

(declare-fun b_and!6679 () Bool)

(assert (= b_and!6671 (and (=> t!3833 result!3545) b_and!6679)))

(declare-fun t!3835 () Bool)

(declare-fun tb!3495 () Bool)

(assert (=> (and b!12281 (= (y!670 that!193) (y!670 that!193)) t!3835) tb!3495))

(declare-fun result!3547 () Bool)

(assert (=> tb!3495 (= result!3547 true)))

(assert (=> d!9547 t!3835))

(declare-fun b_and!6681 () Bool)

(assert (= b_and!6673 (and (=> t!3835 result!3547) b_and!6681)))

(declare-fun t!3837 () Bool)

(declare-fun tb!3497 () Bool)

(assert (=> (and b!12278 (= (x!7096 thiss!745) (y!670 that!193)) t!3837) tb!3497))

(declare-fun result!3549 () Bool)

(assert (=> tb!3497 (= result!3549 true)))

(assert (=> d!9547 t!3837))

(declare-fun b_and!6683 () Bool)

(assert (= b_and!6675 (and (=> t!3837 result!3549) b_and!6683)))

(declare-fun tb!3499 () Bool)

(declare-fun t!3839 () Bool)

(assert (=> (and b!12278 (= (y!670 thiss!745) (y!670 that!193)) t!3839) tb!3499))

(declare-fun result!3551 () Bool)

(assert (=> tb!3499 (= result!3551 true)))

(assert (=> d!9547 t!3839))

(declare-fun b_and!6685 () Bool)

(assert (= b_and!6677 (and (=> t!3839 result!3551) b_and!6685)))

(declare-fun b_lambda!6847 () Bool)

(assert (=> (not b_lambda!6847) (not b!12318)))

(declare-fun t!3841 () Bool)

(declare-fun tb!3501 () Bool)

(assert (=> (and b!12281 (= (evidence!211 that!193) (evidence!211 that!193)) t!3841) tb!3501))

(declare-fun result!3553 () Bool)

(assert (=> tb!3501 (= result!3553 true)))

(assert (=> b!12318 t!3841))

(declare-fun b_and!6687 () Bool)

(assert (= b_and!6623 (and (=> t!3841 result!3553) b_and!6687)))

(declare-fun t!3843 () Bool)

(declare-fun tb!3503 () Bool)

(assert (=> (and b!12278 (= (evidence!211 thiss!745) (evidence!211 that!193)) t!3843) tb!3503))

(declare-fun result!3555 () Bool)

(assert (=> tb!3503 (= result!3555 true)))

(assert (=> b!12318 t!3843))

(declare-fun b_and!6689 () Bool)

(assert (= b_and!6625 (and (=> t!3843 result!3555) b_and!6689)))

(assert (=> d!9547 m!15255))

(declare-fun m!15309 () Bool)

(assert (=> d!9547 m!15309))

(declare-fun m!15311 () Bool)

(assert (=> b!12318 m!15311))

(assert (=> start!2474 d!9547))

(declare-fun d!9549 () Bool)

(declare-fun res!4589 () Bool)

(declare-fun e!6767 () Bool)

(assert (=> d!9549 (=> (not res!4589) (not e!6767))))

(assert (=> d!9549 (= res!4589 (= (dynLambda!525 (x!7096 thiss!745)) (dynLambda!525 (y!670 thiss!745))))))

(assert (=> d!9549 (= (inv!415 thiss!745) e!6767)))

(declare-fun b!12319 () Bool)

(assert (=> b!12319 (= e!6767 (dynLambda!523 (evidence!211 thiss!745)))))

(assert (= (and d!9549 res!4589) b!12319))

(declare-fun b_lambda!6849 () Bool)

(assert (=> (not b_lambda!6849) (not d!9549)))

(declare-fun tb!3505 () Bool)

(declare-fun t!3845 () Bool)

(assert (=> (and b!12281 (= (x!7096 that!193) (x!7096 thiss!745)) t!3845) tb!3505))

(declare-fun result!3557 () Bool)

(assert (=> tb!3505 (= result!3557 true)))

(assert (=> d!9549 t!3845))

(declare-fun b_and!6691 () Bool)

(assert (= b_and!6679 (and (=> t!3845 result!3557) b_and!6691)))

(declare-fun t!3847 () Bool)

(declare-fun tb!3507 () Bool)

(assert (=> (and b!12281 (= (y!670 that!193) (x!7096 thiss!745)) t!3847) tb!3507))

(declare-fun result!3559 () Bool)

(assert (=> tb!3507 (= result!3559 true)))

(assert (=> d!9549 t!3847))

(declare-fun b_and!6693 () Bool)

(assert (= b_and!6681 (and (=> t!3847 result!3559) b_and!6693)))

(declare-fun t!3849 () Bool)

(declare-fun tb!3509 () Bool)

(assert (=> (and b!12278 (= (x!7096 thiss!745) (x!7096 thiss!745)) t!3849) tb!3509))

(declare-fun result!3561 () Bool)

(assert (=> tb!3509 (= result!3561 true)))

(assert (=> d!9549 t!3849))

(declare-fun b_and!6695 () Bool)

(assert (= b_and!6683 (and (=> t!3849 result!3561) b_and!6695)))

(declare-fun t!3851 () Bool)

(declare-fun tb!3511 () Bool)

(assert (=> (and b!12278 (= (y!670 thiss!745) (x!7096 thiss!745)) t!3851) tb!3511))

(declare-fun result!3563 () Bool)

(assert (=> tb!3511 (= result!3563 true)))

(assert (=> d!9549 t!3851))

(declare-fun b_and!6697 () Bool)

(assert (= b_and!6685 (and (=> t!3851 result!3563) b_and!6697)))

(declare-fun b_lambda!6851 () Bool)

(assert (=> (not b_lambda!6851) (not d!9549)))

(assert (=> d!9549 t!3801))

(declare-fun b_and!6699 () Bool)

(assert (= b_and!6691 (and (=> t!3801 result!3513) b_and!6699)))

(assert (=> d!9549 t!3803))

(declare-fun b_and!6701 () Bool)

(assert (= b_and!6693 (and (=> t!3803 result!3515) b_and!6701)))

(assert (=> d!9549 t!3805))

(declare-fun b_and!6703 () Bool)

(assert (= b_and!6695 (and (=> t!3805 result!3517) b_and!6703)))

(assert (=> d!9549 t!3807))

(declare-fun b_and!6705 () Bool)

(assert (= b_and!6697 (and (=> t!3807 result!3519) b_and!6705)))

(declare-fun b_lambda!6853 () Bool)

(assert (=> (not b_lambda!6853) (not b!12319)))

(assert (=> b!12319 t!3795))

(declare-fun b_and!6707 () Bool)

(assert (= b_and!6687 (and (=> t!3795 result!3507) b_and!6707)))

(assert (=> b!12319 t!3797))

(declare-fun b_and!6709 () Bool)

(assert (= b_and!6689 (and (=> t!3797 result!3509) b_and!6709)))

(declare-fun m!15313 () Bool)

(assert (=> d!9549 m!15313))

(assert (=> d!9549 m!15253))

(assert (=> b!12319 m!15265))

(assert (=> start!2474 d!9549))

(declare-fun lt!1800 () Int)

(declare-fun d!9551 () Bool)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!9551 (= lt!1800 (min!4 (extraOpen!221 (foldRight1!118 xs!292 f!539)) (extraClose!221 (foldRight1!118 ys!54 f!539))))))

(assert (=> d!9551 (= (++!3 (foldRight1!118 xs!292 f!539) (foldRight1!118 ys!54 f!539)) (Balance!362 (- (+ (extraOpen!221 (foldRight1!118 xs!292 f!539)) (extraOpen!221 (foldRight1!118 ys!54 f!539))) lt!1800) (- (+ (extraClose!221 (foldRight1!118 xs!292 f!539)) (extraClose!221 (foldRight1!118 ys!54 f!539))) lt!1800)))))

(declare-fun bs!3217 () Bool)

(assert (= bs!3217 d!9551))

(declare-fun m!15315 () Bool)

(assert (=> bs!3217 m!15315))

(assert (=> bs!3208 d!9551))

(assert (=> bs!3207 d!9543))

(assert (=> bs!3207 d!9533))

(declare-fun bs!3218 () Bool)

(declare-fun d!9553 () Bool)

(assert (= bs!3218 (and d!9553 b!12287)))

(declare-fun lambda!3344 () Int)

(assert (=> bs!3218 (= lambda!3344 lambda!3336)))

(declare-fun b_next!4523 () Bool)

(assert (=> start!2474 (= b_next!4489 (or (and d!9553 (= lambda!3344 f!539)) b_next!4523))))

(declare-fun because!2 (ProofOps!276 Bool) Bool)

(assert (=> d!9553 (because!2 (ProofOps!277 (= (++!3 (foldRight1!118 (tail!515 xs!292) lambda!3344) (foldRight1!118 ys!54 lambda!3344)) (foldRight1!118 (append!137 (tail!515 xs!292) ys!54) lambda!3344))) true)))

(assert (=> d!9553 (= (++!3 (foldRight1!118 (tail!515 xs!292) lambda!3344) (foldRight1!118 ys!54 lambda!3344)) (foldRight1!118 (append!137 (tail!515 xs!292) ys!54) lambda!3344))))

(declare-fun e!6770 () Bool)

(assert (=> d!9553 e!6770))

(declare-fun res!4598 () Bool)

(assert (=> d!9553 (=> (not res!4598) (not e!6770))))

(assert (=> d!9553 (= res!4598 (not (isEmpty!216 (tail!515 xs!292))))))

(assert (=> d!9553 (= (append!24 (tail!515 xs!292) ys!54) true)))

(declare-fun b!12322 () Bool)

(assert (=> b!12322 (= e!6770 (not (isEmpty!216 ys!54)))))

(assert (= (and d!9553 res!4598) b!12322))

(declare-fun m!15317 () Bool)

(assert (=> d!9553 m!15317))

(declare-fun m!15319 () Bool)

(assert (=> d!9553 m!15319))

(declare-fun m!15321 () Bool)

(assert (=> d!9553 m!15321))

(declare-fun m!15323 () Bool)

(assert (=> d!9553 m!15323))

(assert (=> d!9553 m!15267))

(declare-fun m!15325 () Bool)

(assert (=> d!9553 m!15325))

(declare-fun m!15327 () Bool)

(assert (=> d!9553 m!15327))

(assert (=> d!9553 m!15317))

(assert (=> d!9553 m!15267))

(assert (=> d!9553 m!15319))

(assert (=> b!12322 m!15257))

(assert (=> bs!3212 d!9553))

(assert (=> bs!3205 d!9531))

(assert (=> bs!3205 d!9533))

(declare-fun b_lambda!6855 () Bool)

(assert (= b_lambda!6853 (or (and b!12286 (= lambda!3339 (evidence!211 thiss!745))) (and b!12279 (= lambda!3341 (evidence!211 thiss!745))) (and b!12281 b_free!1911 (= (evidence!211 that!193) (evidence!211 thiss!745))) (and b!12278 b_free!1917) b_lambda!6855)))

(assert (=> (and b!12286 (= lambda!3339 (evidence!211 thiss!745)) b!12319) d!9517))

(assert (=> (and b!12279 (= lambda!3341 (evidence!211 thiss!745)) b!12319) d!9519))

(declare-fun b_lambda!6857 () Bool)

(assert (= b_lambda!6839 (or (and b!12287 (= lambda!3336 f!539)) (and start!2474 b_free!1905) (and d!9553 (= lambda!3344 f!539)) b_lambda!6857)))

(declare-fun bs!3219 () Bool)

(declare-fun d!9555 () Bool)

(assert (= bs!3219 (and d!9555 b!12287)))

(assert (=> bs!3219 (= (dynLambda!524 lambda!3336 (head!503 (append!137 xs!292 ys!54)) (foldRight1!118 (tail!515 (append!137 xs!292 ys!54)) f!539)) (++!3 (head!503 (append!137 xs!292 ys!54)) (foldRight1!118 (tail!515 (append!137 xs!292 ys!54)) f!539)))))

(assert (=> bs!3219 m!15301))

(declare-fun m!15329 () Bool)

(assert (=> bs!3219 m!15329))

(assert (=> (and b!12287 (= lambda!3336 f!539) b!12311) d!9555))

(declare-fun bs!3220 () Bool)

(declare-fun d!9557 () Bool)

(assert (= bs!3220 (and d!9557 d!9553)))

(assert (=> bs!3220 (= (dynLambda!524 lambda!3344 (head!503 (append!137 xs!292 ys!54)) (foldRight1!118 (tail!515 (append!137 xs!292 ys!54)) f!539)) (++!3 (head!503 (append!137 xs!292 ys!54)) (foldRight1!118 (tail!515 (append!137 xs!292 ys!54)) f!539)))))

(assert (=> bs!3220 m!15301))

(assert (=> bs!3220 m!15329))

(assert (=> (and d!9553 (= lambda!3344 f!539) b!12311) d!9557))

(declare-fun b_lambda!6859 () Bool)

(assert (= b_lambda!6833 (or (and b!12287 (= lambda!3336 f!539)) (and start!2474 b_free!1905) (and d!9553 (= lambda!3344 f!539)) b_lambda!6859)))

(declare-fun bs!3221 () Bool)

(declare-fun d!9559 () Bool)

(assert (= bs!3221 (and d!9559 b!12287)))

(assert (=> bs!3221 (= (dynLambda!524 lambda!3336 (head!503 (append!137 (tail!515 xs!292) ys!54)) (foldRight1!118 (tail!515 (append!137 (tail!515 xs!292) ys!54)) f!539)) (++!3 (head!503 (append!137 (tail!515 xs!292) ys!54)) (foldRight1!118 (tail!515 (append!137 (tail!515 xs!292) ys!54)) f!539)))))

(assert (=> bs!3221 m!15289))

(declare-fun m!15331 () Bool)

(assert (=> bs!3221 m!15331))

(assert (=> (and b!12287 (= lambda!3336 f!539) b!12299) d!9559))

(declare-fun bs!3222 () Bool)

(declare-fun d!9561 () Bool)

(assert (= bs!3222 (and d!9561 d!9553)))

(assert (=> bs!3222 (= (dynLambda!524 lambda!3344 (head!503 (append!137 (tail!515 xs!292) ys!54)) (foldRight1!118 (tail!515 (append!137 (tail!515 xs!292) ys!54)) f!539)) (++!3 (head!503 (append!137 (tail!515 xs!292) ys!54)) (foldRight1!118 (tail!515 (append!137 (tail!515 xs!292) ys!54)) f!539)))))

(assert (=> bs!3222 m!15289))

(assert (=> bs!3222 m!15331))

(assert (=> (and d!9553 (= lambda!3344 f!539) b!12299) d!9561))

(declare-fun b_lambda!6861 () Bool)

(assert (= b_lambda!6849 (or (and b!12278 b_free!1913) (and b!12281 b_free!1907 (= (x!7096 that!193) (x!7096 thiss!745))) (and b!12278 b_free!1915 (= (y!670 thiss!745) (x!7096 thiss!745))) (and b!12286 (= lambda!3338 (x!7096 thiss!745))) (and b!12281 b_free!1909 (= (y!670 that!193) (x!7096 thiss!745))) (and b!12286 (= lambda!3337 (x!7096 thiss!745))) (and b!12279 (= lambda!3340 (x!7096 thiss!745))) b_lambda!6861)))

(declare-fun bs!3223 () Bool)

(declare-fun d!9563 () Bool)

(assert (= bs!3223 (and d!9563 b!12286)))

(assert (=> bs!3223 (= (dynLambda!525 lambda!3337) (dynLambda!524 f!539 (foldRight1!118 xs!292 f!539) (foldRight1!118 ys!54 f!539)))))

(declare-fun b_lambda!6877 () Bool)

(assert (=> (not b_lambda!6877) (not bs!3223)))

(assert (=> bs!3223 t!3799))

(declare-fun b_and!6711 () Bool)

(assert (= b_and!6669 (and (=> t!3799 result!3511) b_and!6711)))

(assert (=> bs!3223 m!15245))

(assert (=> bs!3223 m!15247))

(assert (=> bs!3223 m!15245))

(assert (=> bs!3223 m!15247))

(assert (=> bs!3223 m!15249))

(assert (=> (and b!12286 (= lambda!3337 (x!7096 thiss!745)) d!9549) d!9563))

(declare-fun bs!3224 () Bool)

(declare-fun d!9565 () Bool)

(assert (= bs!3224 (and d!9565 b!12279)))

(assert (=> bs!3224 (= (dynLambda!525 lambda!3340) (dynLambda!524 f!539 (head!503 xs!292) (foldRight1!118 (append!137 (tail!515 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!6879 () Bool)

(assert (=> (not b_lambda!6879) (not bs!3224)))

(assert (=> bs!3224 t!3817))

(declare-fun b_and!6713 () Bool)

(assert (= b_and!6711 (and (=> t!3817 result!3529) b_and!6713)))

(assert (=> bs!3224 m!15267))

(assert (=> bs!3224 m!15267))

(assert (=> bs!3224 m!15269))

(assert (=> bs!3224 m!15269))

(assert (=> bs!3224 m!15271))

(assert (=> (and b!12279 (= lambda!3340 (x!7096 thiss!745)) d!9549) d!9565))

(declare-fun bs!3225 () Bool)

(declare-fun d!9567 () Bool)

(assert (= bs!3225 (and d!9567 b!12286)))

(assert (=> bs!3225 (= (dynLambda!525 lambda!3338) (dynLambda!524 f!539 (head!503 xs!292) (dynLambda!524 f!539 (foldRight1!118 (tail!515 xs!292) f!539) (foldRight1!118 ys!54 f!539))))))

(declare-fun b_lambda!6881 () Bool)

(assert (=> (not b_lambda!6881) (not bs!3225)))

(assert (=> bs!3225 t!3819))

(declare-fun b_and!6715 () Bool)

(assert (= b_and!6713 (and (=> t!3819 result!3531) b_and!6715)))

(declare-fun b_lambda!6883 () Bool)

(assert (=> (not b_lambda!6883) (not bs!3225)))

(assert (=> bs!3225 t!3821))

(declare-fun b_and!6717 () Bool)

(assert (= b_and!6715 (and (=> t!3821 result!3533) b_and!6717)))

(assert (=> bs!3225 m!15273))

(assert (=> bs!3225 m!15275))

(assert (=> bs!3225 m!15277))

(assert (=> bs!3225 m!15247))

(assert (=> bs!3225 m!15273))

(assert (=> bs!3225 m!15247))

(assert (=> bs!3225 m!15275))

(assert (=> (and b!12286 (= lambda!3338 (x!7096 thiss!745)) d!9549) d!9567))

(declare-fun b_lambda!6863 () Bool)

(assert (= b_lambda!6851 (or (and b!12286 (= lambda!3338 (y!670 thiss!745))) (and b!12281 b_free!1907 (= (x!7096 that!193) (y!670 thiss!745))) (and b!12279 (= lambda!3340 (y!670 thiss!745))) (and b!12278 b_free!1915) (and b!12286 (= lambda!3337 (y!670 thiss!745))) (and b!12278 b_free!1913 (= (x!7096 thiss!745) (y!670 thiss!745))) (and b!12281 b_free!1909 (= (y!670 that!193) (y!670 thiss!745))) b_lambda!6863)))

(assert (=> (and b!12286 (= lambda!3338 (y!670 thiss!745)) d!9549) d!9511))

(assert (=> (and b!12279 (= lambda!3340 (y!670 thiss!745)) d!9549) d!9513))

(assert (=> (and b!12286 (= lambda!3337 (y!670 thiss!745)) d!9549) d!9515))

(declare-fun b_lambda!6865 () Bool)

(assert (= b_lambda!6835 (or (and b!12287 (= lambda!3336 f!539)) (and start!2474 b_free!1905) (and d!9553 (= lambda!3344 f!539)) b_lambda!6865)))

(declare-fun bs!3226 () Bool)

(declare-fun d!9569 () Bool)

(assert (= bs!3226 (and d!9569 b!12287)))

(assert (=> bs!3226 (= (dynLambda!524 lambda!3336 (head!503 xs!292) (foldRight1!118 (tail!515 xs!292) f!539)) (++!3 (head!503 xs!292) (foldRight1!118 (tail!515 xs!292) f!539)))))

(assert (=> bs!3226 m!15273))

(declare-fun m!15333 () Bool)

(assert (=> bs!3226 m!15333))

(assert (=> (and b!12287 (= lambda!3336 f!539) b!12307) d!9569))

(declare-fun bs!3227 () Bool)

(declare-fun d!9571 () Bool)

(assert (= bs!3227 (and d!9571 d!9553)))

(assert (=> bs!3227 (= (dynLambda!524 lambda!3344 (head!503 xs!292) (foldRight1!118 (tail!515 xs!292) f!539)) (++!3 (head!503 xs!292) (foldRight1!118 (tail!515 xs!292) f!539)))))

(assert (=> bs!3227 m!15273))

(assert (=> bs!3227 m!15333))

(assert (=> (and d!9553 (= lambda!3344 f!539) b!12307) d!9571))

(declare-fun b_lambda!6867 () Bool)

(assert (= b_lambda!6847 (or (and b!12286 (= lambda!3339 (evidence!211 that!193))) (and b!12279 (= lambda!3341 (evidence!211 that!193))) (and b!12281 b_free!1911) (and b!12278 b_free!1917 (= (evidence!211 thiss!745) (evidence!211 that!193))) b_lambda!6867)))

(declare-fun bs!3228 () Bool)

(declare-fun d!9573 () Bool)

(assert (= bs!3228 (and d!9573 b!12286)))

(assert (=> bs!3228 (= (dynLambda!523 lambda!3339) (append!24 (tail!515 xs!292) ys!54))))

(assert (=> bs!3228 m!15281))

(assert (=> (and b!12286 (= lambda!3339 (evidence!211 that!193)) b!12318) d!9573))

(declare-fun bs!3229 () Bool)

(declare-fun d!9575 () Bool)

(assert (= bs!3229 (and d!9575 b!12279)))

(assert (=> bs!3229 (= (dynLambda!523 lambda!3341) trivial!1)))

(assert (=> (and b!12279 (= lambda!3341 (evidence!211 that!193)) b!12318) d!9575))

(declare-fun b_lambda!6869 () Bool)

(assert (= b_lambda!6843 (or (and b!12286 (= lambda!3337 (x!7096 that!193))) (and b!12281 b_free!1907) (and b!12279 (= lambda!3340 (x!7096 that!193))) (and b!12286 (= lambda!3338 (x!7096 that!193))) (and b!12278 b_free!1915 (= (y!670 thiss!745) (x!7096 that!193))) (and b!12278 b_free!1913 (= (x!7096 thiss!745) (x!7096 that!193))) (and b!12281 b_free!1909 (= (y!670 that!193) (x!7096 that!193))) b_lambda!6869)))

(assert (=> (and b!12286 (= lambda!3337 (x!7096 that!193)) d!9547) d!9503))

(assert (=> (and b!12279 (= lambda!3340 (x!7096 that!193)) d!9547) d!9505))

(assert (=> (and b!12286 (= lambda!3338 (x!7096 that!193)) d!9547) d!9507))

(declare-fun b_lambda!6871 () Bool)

(assert (= b_lambda!6845 (or (and b!12281 b_free!1907 (= (x!7096 that!193) (y!670 that!193))) (and b!12279 (= lambda!3340 (y!670 that!193))) (and b!12281 b_free!1909) (and b!12286 (= lambda!3337 (y!670 that!193))) (and b!12286 (= lambda!3338 (y!670 that!193))) (and b!12278 b_free!1913 (= (x!7096 thiss!745) (y!670 that!193))) (and b!12278 b_free!1915 (= (y!670 thiss!745) (y!670 that!193))) b_lambda!6871)))

(declare-fun bs!3230 () Bool)

(declare-fun d!9577 () Bool)

(assert (= bs!3230 (and d!9577 b!12279)))

(assert (=> bs!3230 (= (dynLambda!525 lambda!3340) (dynLambda!524 f!539 (head!503 xs!292) (foldRight1!118 (append!137 (tail!515 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!6885 () Bool)

(assert (=> (not b_lambda!6885) (not bs!3230)))

(assert (=> bs!3230 t!3817))

(declare-fun b_and!6719 () Bool)

(assert (= b_and!6717 (and (=> t!3817 result!3529) b_and!6719)))

(assert (=> bs!3230 m!15267))

(assert (=> bs!3230 m!15267))

(assert (=> bs!3230 m!15269))

(assert (=> bs!3230 m!15269))

(assert (=> bs!3230 m!15271))

(assert (=> (and b!12279 (= lambda!3340 (y!670 that!193)) d!9547) d!9577))

(declare-fun bs!3231 () Bool)

(declare-fun d!9579 () Bool)

(assert (= bs!3231 (and d!9579 b!12286)))

(assert (=> bs!3231 (= (dynLambda!525 lambda!3338) (dynLambda!524 f!539 (head!503 xs!292) (dynLambda!524 f!539 (foldRight1!118 (tail!515 xs!292) f!539) (foldRight1!118 ys!54 f!539))))))

(declare-fun b_lambda!6887 () Bool)

(assert (=> (not b_lambda!6887) (not bs!3231)))

(assert (=> bs!3231 t!3819))

(declare-fun b_and!6721 () Bool)

(assert (= b_and!6719 (and (=> t!3819 result!3531) b_and!6721)))

(declare-fun b_lambda!6889 () Bool)

(assert (=> (not b_lambda!6889) (not bs!3231)))

(assert (=> bs!3231 t!3821))

(declare-fun b_and!6723 () Bool)

(assert (= b_and!6721 (and (=> t!3821 result!3533) b_and!6723)))

(assert (=> bs!3231 m!15273))

(assert (=> bs!3231 m!15275))

(assert (=> bs!3231 m!15277))

(assert (=> bs!3231 m!15247))

(assert (=> bs!3231 m!15273))

(assert (=> bs!3231 m!15247))

(assert (=> bs!3231 m!15275))

(assert (=> (and b!12286 (= lambda!3338 (y!670 that!193)) d!9547) d!9579))

(declare-fun bs!3232 () Bool)

(declare-fun d!9581 () Bool)

(assert (= bs!3232 (and d!9581 b!12286)))

(assert (=> bs!3232 (= (dynLambda!525 lambda!3337) (dynLambda!524 f!539 (foldRight1!118 xs!292 f!539) (foldRight1!118 ys!54 f!539)))))

(declare-fun b_lambda!6891 () Bool)

(assert (=> (not b_lambda!6891) (not bs!3232)))

(assert (=> bs!3232 t!3799))

(declare-fun b_and!6725 () Bool)

(assert (= b_and!6723 (and (=> t!3799 result!3511) b_and!6725)))

(assert (=> bs!3232 m!15245))

(assert (=> bs!3232 m!15247))

(assert (=> bs!3232 m!15245))

(assert (=> bs!3232 m!15247))

(assert (=> bs!3232 m!15249))

(assert (=> (and b!12286 (= lambda!3337 (y!670 that!193)) d!9547) d!9581))

(declare-fun b_lambda!6873 () Bool)

(assert (= b_lambda!6837 (or (and b!12287 (= lambda!3336 f!539)) (and start!2474 b_free!1905) (and d!9553 (= lambda!3344 f!539)) b_lambda!6873)))

(declare-fun bs!3233 () Bool)

(declare-fun d!9583 () Bool)

(assert (= bs!3233 (and d!9583 b!12287)))

(assert (=> bs!3233 (= (dynLambda!524 lambda!3336 (head!503 ys!54) (foldRight1!118 (tail!515 ys!54) f!539)) (++!3 (head!503 ys!54) (foldRight1!118 (tail!515 ys!54) f!539)))))

(assert (=> bs!3233 m!15297))

(declare-fun m!15335 () Bool)

(assert (=> bs!3233 m!15335))

(assert (=> (and b!12287 (= lambda!3336 f!539) b!12309) d!9583))

(declare-fun bs!3234 () Bool)

(declare-fun d!9585 () Bool)

(assert (= bs!3234 (and d!9585 d!9553)))

(assert (=> bs!3234 (= (dynLambda!524 lambda!3344 (head!503 ys!54) (foldRight1!118 (tail!515 ys!54) f!539)) (++!3 (head!503 ys!54) (foldRight1!118 (tail!515 ys!54) f!539)))))

(assert (=> bs!3234 m!15297))

(assert (=> bs!3234 m!15335))

(assert (=> (and d!9553 (= lambda!3344 f!539) b!12309) d!9585))

(declare-fun b_lambda!6875 () Bool)

(assert (= b_lambda!6841 (or (and b!12287 (= lambda!3336 f!539)) (and start!2474 b_free!1905) (and d!9553 (= lambda!3344 f!539)) b_lambda!6875)))

(declare-fun bs!3235 () Bool)

(declare-fun d!9587 () Bool)

(assert (= bs!3235 (and d!9587 b!12287)))

(assert (=> bs!3235 (= (dynLambda!524 lambda!3336 (head!503 (tail!515 xs!292)) (foldRight1!118 (tail!515 (tail!515 xs!292)) f!539)) (++!3 (head!503 (tail!515 xs!292)) (foldRight1!118 (tail!515 (tail!515 xs!292)) f!539)))))

(assert (=> bs!3235 m!15305))

(declare-fun m!15337 () Bool)

(assert (=> bs!3235 m!15337))

(assert (=> (and b!12287 (= lambda!3336 f!539) b!12315) d!9587))

(declare-fun bs!3236 () Bool)

(declare-fun d!9589 () Bool)

(assert (= bs!3236 (and d!9589 d!9553)))

(assert (=> bs!3236 (= (dynLambda!524 lambda!3344 (head!503 (tail!515 xs!292)) (foldRight1!118 (tail!515 (tail!515 xs!292)) f!539)) (++!3 (head!503 (tail!515 xs!292)) (foldRight1!118 (tail!515 (tail!515 xs!292)) f!539)))))

(assert (=> bs!3236 m!15305))

(assert (=> bs!3236 m!15337))

(assert (=> (and d!9553 (= lambda!3344 f!539) b!12315) d!9589))

(push 1)

(assert (not b_lambda!6831))

(assert (not b_lambda!6867))

(assert (not b_lambda!6795))

(assert (not bs!3228))

(assert (not bs!3225))

(assert (not bs!3220))

(assert (not b!12305))

(assert (not b_lambda!6861))

(assert (not b_lambda!6829))

(assert b_and!6705)

(assert (not b_next!4511))

(assert (not b_lambda!6855))

(assert b_and!6709)

(assert (not bs!3221))

(assert (not b_lambda!6857))

(assert (not b_next!4523))

(assert (not bs!3223))

(assert (not b!12311))

(assert (not bs!3234))

(assert (not bs!3224))

(assert (not bs!3216))

(assert (not bs!3232))

(assert (not b!12309))

(assert (not b_lambda!6869))

(assert (not b_lambda!6863))

(assert (not b!12299))

(assert (not b_next!4521))

(assert (not b_next!4515))

(assert (not bs!3235))

(assert (not b_lambda!6885))

(assert b_and!6699)

(assert (not b_lambda!6823))

(assert (not bs!3214))

(assert (not b_lambda!6887))

(assert (not b_lambda!6821))

(assert (not b_lambda!6889))

(assert (not bs!3233))

(assert (not b_next!4517))

(assert (not b_lambda!6827))

(assert (not b_lambda!6859))

(assert (not bs!3219))

(assert (not bs!3230))

(assert b_and!6703)

(assert (not b_lambda!6865))

(assert (not d!9551))

(assert (not b!12315))

(assert (not bs!3215))

(assert (not d!9553))

(assert (not b_lambda!6797))

(assert (not b_lambda!6793))

(assert (not b_lambda!6875))

(assert (not b_lambda!6881))

(assert (not b_lambda!6871))

(assert (not bs!3227))

(assert (not b_lambda!6817))

(assert (not b_lambda!6825))

(assert (not b_lambda!6873))

(assert (not b_lambda!6891))

(assert (not b_lambda!6819))

(assert (not b!12322))

(assert b_and!6701)

(assert (not b_lambda!6879))

(assert (not b_lambda!6883))

(assert (not bs!3231))

(assert (not bs!3222))

(assert (not b!12307))

(assert (not bs!3226))

(assert (not b_lambda!6877))

(assert (not b_next!4519))

(assert (not b_lambda!6799))

(assert (not b!12313))

(assert (not b_next!4513))

(assert (not bs!3236))

(assert b_and!6707)

(assert b_and!6725)

(check-sat)

(pop 1)

(push 1)

(assert b_and!6705)

(assert (not b_next!4511))

(assert b_and!6709)

(assert (not b_next!4523))

(assert (not b_next!4521))

(assert (not b_next!4515))

(assert b_and!6699)

(assert (not b_next!4517))

(assert b_and!6703)

(assert b_and!6701)

(assert (not b_next!4519))

(assert (not b_next!4513))

(assert b_and!6707)

(assert b_and!6725)

(check-sat)

(pop 1)


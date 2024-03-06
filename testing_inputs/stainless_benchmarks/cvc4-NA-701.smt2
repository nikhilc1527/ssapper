; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5008 () Bool)

(assert start!5008)

(declare-fun b!38807 () Bool)

(declare-fun b_free!2913 () Bool)

(declare-fun b_next!7291 () Bool)

(assert (=> b!38807 (= b_free!2913 (not b_next!7291))))

(declare-fun tp!8466 () Bool)

(declare-fun b_and!10209 () Bool)

(assert (=> b!38807 (= tp!8466 b_and!10209)))

(declare-fun b_free!2915 () Bool)

(declare-fun b_next!7293 () Bool)

(assert (=> b!38807 (= b_free!2915 (not b_next!7293))))

(declare-fun tp!8455 () Bool)

(declare-fun b_and!10211 () Bool)

(assert (=> b!38807 (= tp!8455 b_and!10211)))

(declare-fun b_free!2917 () Bool)

(declare-fun b_next!7295 () Bool)

(assert (=> b!38807 (= b_free!2917 (not b_next!7295))))

(declare-fun tp!8463 () Bool)

(declare-fun b_and!10213 () Bool)

(assert (=> b!38807 (= tp!8463 b_and!10213)))

(declare-fun b!38812 () Bool)

(declare-fun b_free!2919 () Bool)

(declare-fun b_next!7297 () Bool)

(assert (=> b!38812 (= b_free!2919 (not b_next!7297))))

(declare-fun tp!8454 () Bool)

(declare-fun b_and!10215 () Bool)

(assert (=> b!38812 (= tp!8454 b_and!10215)))

(declare-fun b_free!2921 () Bool)

(declare-fun b_next!7299 () Bool)

(assert (=> b!38812 (= b_free!2921 (not b_next!7299))))

(declare-fun tp!8464 () Bool)

(declare-fun b_and!10217 () Bool)

(assert (=> b!38812 (= tp!8464 b_and!10217)))

(declare-fun b_free!2923 () Bool)

(declare-fun b_next!7301 () Bool)

(assert (=> b!38812 (= b_free!2923 (not b_next!7301))))

(declare-fun tp!8456 () Bool)

(declare-fun b_and!10219 () Bool)

(assert (=> b!38812 (= tp!8456 b_and!10219)))

(declare-fun b!38817 () Bool)

(declare-fun b_free!2925 () Bool)

(declare-fun b_next!7303 () Bool)

(assert (=> b!38817 (= b_free!2925 (not b_next!7303))))

(declare-fun tp!8458 () Bool)

(declare-fun b_and!10221 () Bool)

(assert (=> b!38817 (= tp!8458 b_and!10221)))

(declare-fun b_free!2927 () Bool)

(declare-fun b_next!7305 () Bool)

(assert (=> b!38817 (= b_free!2927 (not b_next!7305))))

(declare-fun tp!8461 () Bool)

(declare-fun b_and!10223 () Bool)

(assert (=> b!38817 (= tp!8461 b_and!10223)))

(declare-fun b_free!2929 () Bool)

(declare-fun b_next!7307 () Bool)

(assert (=> b!38817 (= b_free!2929 (not b_next!7307))))

(declare-fun tp!8459 () Bool)

(declare-fun b_and!10225 () Bool)

(assert (=> b!38817 (= tp!8459 b_and!10225)))

(declare-fun b!38809 () Bool)

(declare-fun b_free!2931 () Bool)

(declare-fun b_next!7309 () Bool)

(assert (=> b!38809 (= b_free!2931 (not b_next!7309))))

(declare-fun tp!8467 () Bool)

(declare-fun b_and!10227 () Bool)

(assert (=> b!38809 (= tp!8467 b_and!10227)))

(declare-fun b_free!2933 () Bool)

(declare-fun b_next!7311 () Bool)

(assert (=> b!38809 (= b_free!2933 (not b_next!7311))))

(declare-fun tp!8453 () Bool)

(declare-fun b_and!10229 () Bool)

(assert (=> b!38809 (= tp!8453 b_and!10229)))

(declare-fun b_free!2935 () Bool)

(declare-fun b_next!7313 () Bool)

(assert (=> b!38809 (= b_free!2935 (not b_next!7313))))

(declare-fun tp!8460 () Bool)

(declare-fun b_and!10231 () Bool)

(assert (=> b!38809 (= tp!8460 b_and!10231)))

(declare-fun b!38816 () Bool)

(declare-fun b_free!2937 () Bool)

(declare-fun b_next!7315 () Bool)

(assert (=> b!38816 (= b_free!2937 (not b_next!7315))))

(declare-fun tp!8457 () Bool)

(declare-fun b_and!10233 () Bool)

(assert (=> b!38816 (= tp!8457 b_and!10233)))

(declare-fun b_free!2939 () Bool)

(declare-fun b_next!7317 () Bool)

(assert (=> b!38816 (= b_free!2939 (not b_next!7317))))

(declare-fun tp!8462 () Bool)

(declare-fun b_and!10235 () Bool)

(assert (=> b!38816 (= tp!8462 b_and!10235)))

(declare-fun b_free!2941 () Bool)

(declare-fun b_next!7319 () Bool)

(assert (=> b!38816 (= b_free!2941 (not b_next!7319))))

(declare-fun tp!8465 () Bool)

(declare-fun b_and!10237 () Bool)

(assert (=> b!38816 (= tp!8465 b_and!10237)))

(declare-fun b!38805 () Bool)

(assert (=> b!38805 true))

(assert (=> b!38805 true))

(declare-datatypes () ((Nat!62 (Zero!46) (Succ!43 (n!1135 Nat!62)))))

(declare-datatypes () ((tuple2!202 (tuple2!203 (_1!127 Nat!62) (_2!127 Nat!62)))))

(declare-datatypes () ((RAEqEvidence!102 (RAEqEvidence!103 (x!13491 Int) (y!1390 Int) (evidence!503 Int)))))

(declare-fun x$103!3 () RAEqEvidence!102)

(declare-fun b_next!7321 () Bool)

(declare-fun lambda!4641 () Int)

(assert (=> b!38816 (= b_next!7315 (or (and b!38805 (= lambda!4641 (x!13491 x$103!3))) b_next!7321))))

(declare-fun x$104!2 () RAEqEvidence!102)

(declare-fun b_next!7323 () Bool)

(assert (=> b!38817 (= b_next!7305 (or (and b!38805 (= lambda!4641 (y!1390 x$104!2))) b_next!7323))))

(declare-fun b_next!7325 () Bool)

(assert (=> b!38816 (= b_next!7317 (or (and b!38805 (= lambda!4641 (y!1390 x$103!3))) b_next!7325))))

(declare-datatypes () ((Unit!335 (Unit!336))))

(declare-datatypes () ((RAEqEvidence!104 (RAEqEvidence!105 (x!13492 Int) (y!1391 Int) (evidence!504 Int)))))

(declare-fun prev!738 () RAEqEvidence!104)

(declare-fun b_next!7327 () Bool)

(assert (=> b!38807 (= b_next!7293 (or (and b!38805 (= lambda!4641 (y!1391 prev!738))) b_next!7327))))

(declare-fun x$102!4 () RAEqEvidence!104)

(declare-fun b_next!7329 () Bool)

(assert (=> b!38809 (= b_next!7309 (or (and b!38805 (= lambda!4641 (x!13492 x$102!4))) b_next!7329))))

(declare-fun b_next!7331 () Bool)

(declare-fun thiss!6256 () RAEqEvidence!104)

(assert (=> b!38812 (= b_next!7299 (or (and b!38805 (= lambda!4641 (y!1391 thiss!6256))) b_next!7331))))

(declare-fun b_next!7333 () Bool)

(assert (=> b!38807 (= b_next!7291 (or (and b!38805 (= lambda!4641 (x!13492 prev!738))) b_next!7333))))

(declare-fun b_next!7335 () Bool)

(assert (=> b!38809 (= b_next!7311 (or (and b!38805 (= lambda!4641 (y!1391 x$102!4))) b_next!7335))))

(declare-fun b_next!7337 () Bool)

(assert (=> b!38812 (= b_next!7297 (or (and b!38805 (= lambda!4641 (x!13492 thiss!6256))) b_next!7337))))

(declare-fun b_next!7339 () Bool)

(assert (=> b!38817 (= b_next!7303 (or (and b!38805 (= lambda!4641 (x!13491 x$104!2))) b_next!7339))))

(declare-fun m!39993 () Bool)

(assert (=> b!38805 m!39993))

(declare-fun lambda!4642 () Int)

(declare-fun dynLambda!698 (Int) Bool)

(assert (=> (and b!38817 b!38805 (= (dynLambda!698 lambda!4642) (dynLambda!698 (evidence!503 x$104!2)))) (= lambda!4642 (evidence!503 x$104!2))))

(assert (=> (and b!38816 b!38805 (= (dynLambda!698 lambda!4642) (dynLambda!698 (evidence!503 x$103!3)))) (= lambda!4642 (evidence!503 x$103!3))))

(declare-fun b_next!7341 () Bool)

(assert (=> b!38817 (= b_next!7307 (or (and b!38805 (= lambda!4642 (evidence!503 x$104!2))) b_next!7341))))

(declare-fun b_next!7343 () Bool)

(assert (=> b!38816 (= b_next!7319 (or (and b!38805 (= lambda!4642 (evidence!503 x$103!3))) b_next!7343))))

(declare-fun bs!11958 () Bool)

(declare-fun b!38814 () Bool)

(assert (= bs!11958 (and b!38814 b!38805)))

(declare-fun lambda!4643 () Int)

(assert (=> bs!11958 (not (= lambda!4643 lambda!4641))))

(assert (=> b!38814 true))

(assert (=> b!38814 true))

(declare-fun dynLambda!699 (Int) tuple2!202)

(assert (=> (and b!38816 b!38814 (= (dynLambda!699 lambda!4643) (dynLambda!699 (x!13491 x$103!3)))) (= lambda!4643 (x!13491 x$103!3))))

(assert (=> (and b!38817 b!38814 (= (dynLambda!699 lambda!4643) (dynLambda!699 (y!1390 x$104!2)))) (= lambda!4643 (y!1390 x$104!2))))

(assert (=> (and b!38816 b!38814 (= (dynLambda!699 lambda!4643) (dynLambda!699 (y!1390 x$103!3)))) (= lambda!4643 (y!1390 x$103!3))))

(assert (=> (and b!38807 b!38814 (= (dynLambda!699 lambda!4643) (dynLambda!699 (y!1391 prev!738)))) (= lambda!4643 (y!1391 prev!738))))

(assert (=> (and b!38809 b!38814 (= (dynLambda!699 lambda!4643) (dynLambda!699 (x!13492 x$102!4)))) (= lambda!4643 (x!13492 x$102!4))))

(assert (=> (and b!38812 b!38814 (= (dynLambda!699 lambda!4643) (dynLambda!699 (y!1391 thiss!6256)))) (= lambda!4643 (y!1391 thiss!6256))))

(assert (=> (and b!38807 b!38814 (= (dynLambda!699 lambda!4643) (dynLambda!699 (x!13492 prev!738)))) (= lambda!4643 (x!13492 prev!738))))

(assert (=> (and b!38809 b!38814 (= (dynLambda!699 lambda!4643) (dynLambda!699 (y!1391 x$102!4)))) (= lambda!4643 (y!1391 x$102!4))))

(assert (=> (and b!38812 b!38814 (= (dynLambda!699 lambda!4643) (dynLambda!699 (x!13492 thiss!6256)))) (= lambda!4643 (x!13492 thiss!6256))))

(assert (=> (and b!38817 b!38814 (= (dynLambda!699 lambda!4643) (dynLambda!699 (x!13491 x$104!2)))) (= lambda!4643 (x!13491 x$104!2))))

(declare-fun b_next!7345 () Bool)

(assert (=> b!38816 (= b_next!7321 (or (and b!38814 (= lambda!4643 (x!13491 x$103!3))) b_next!7345))))

(declare-fun b_next!7347 () Bool)

(assert (=> b!38817 (= b_next!7323 (or (and b!38814 (= lambda!4643 (y!1390 x$104!2))) b_next!7347))))

(declare-fun b_next!7349 () Bool)

(assert (=> b!38816 (= b_next!7325 (or (and b!38814 (= lambda!4643 (y!1390 x$103!3))) b_next!7349))))

(declare-fun b_next!7351 () Bool)

(assert (=> b!38807 (= b_next!7327 (or (and b!38814 (= lambda!4643 (y!1391 prev!738))) b_next!7351))))

(declare-fun b_next!7353 () Bool)

(assert (=> b!38809 (= b_next!7329 (or (and b!38814 (= lambda!4643 (x!13492 x$102!4))) b_next!7353))))

(declare-fun b_next!7355 () Bool)

(assert (=> b!38812 (= b_next!7331 (or (and b!38814 (= lambda!4643 (y!1391 thiss!6256))) b_next!7355))))

(declare-fun b_next!7357 () Bool)

(assert (=> b!38807 (= b_next!7333 (or (and b!38814 (= lambda!4643 (x!13492 prev!738))) b_next!7357))))

(declare-fun b_next!7359 () Bool)

(assert (=> b!38809 (= b_next!7335 (or (and b!38814 (= lambda!4643 (y!1391 x$102!4))) b_next!7359))))

(declare-fun b_next!7361 () Bool)

(assert (=> b!38812 (= b_next!7337 (or (and b!38814 (= lambda!4643 (x!13492 thiss!6256))) b_next!7361))))

(declare-fun b_next!7363 () Bool)

(assert (=> b!38817 (= b_next!7339 (or (and b!38814 (= lambda!4643 (x!13491 x$104!2))) b_next!7363))))

(declare-fun bs!11959 () Bool)

(declare-fun b!38815 () Bool)

(assert (= bs!11959 (and b!38815 b!38805)))

(declare-fun lambda!4644 () Int)

(assert (=> bs!11959 (not (= lambda!4644 lambda!4641))))

(declare-fun bs!11960 () Bool)

(assert (= bs!11960 (and b!38815 b!38814)))

(assert (=> bs!11960 (not (= lambda!4644 lambda!4643))))

(assert (=> b!38815 true))

(assert (=> b!38815 true))

(declare-fun b_next!7365 () Bool)

(assert (=> b!38816 (= b_next!7345 (or (and b!38815 (= lambda!4644 (x!13491 x$103!3))) b_next!7365))))

(declare-fun b_next!7367 () Bool)

(assert (=> b!38817 (= b_next!7347 (or (and b!38815 (= lambda!4644 (y!1390 x$104!2))) b_next!7367))))

(declare-fun b_next!7369 () Bool)

(assert (=> b!38816 (= b_next!7349 (or (and b!38815 (= lambda!4644 (y!1390 x$103!3))) b_next!7369))))

(declare-fun b_next!7371 () Bool)

(assert (=> b!38807 (= b_next!7351 (or (and b!38815 (= lambda!4644 (y!1391 prev!738))) b_next!7371))))

(declare-fun b_next!7373 () Bool)

(assert (=> b!38809 (= b_next!7353 (or (and b!38815 (= lambda!4644 (x!13492 x$102!4))) b_next!7373))))

(declare-fun b_next!7375 () Bool)

(assert (=> b!38812 (= b_next!7355 (or (and b!38815 (= lambda!4644 (y!1391 thiss!6256))) b_next!7375))))

(declare-fun b_next!7377 () Bool)

(assert (=> b!38807 (= b_next!7357 (or (and b!38815 (= lambda!4644 (x!13492 prev!738))) b_next!7377))))

(declare-fun b_next!7379 () Bool)

(assert (=> b!38809 (= b_next!7359 (or (and b!38815 (= lambda!4644 (y!1391 x$102!4))) b_next!7379))))

(declare-fun b_next!7381 () Bool)

(assert (=> b!38812 (= b_next!7361 (or (and b!38815 (= lambda!4644 (x!13492 thiss!6256))) b_next!7381))))

(declare-fun b_next!7383 () Bool)

(assert (=> b!38817 (= b_next!7363 (or (and b!38815 (= lambda!4644 (x!13491 x$104!2))) b_next!7383))))

(assert (=> b!38815 true))

(assert (=> b!38815 true))

(declare-fun lambda!4645 () Int)

(declare-fun b_next!7385 () Bool)

(assert (=> b!38807 (= b_next!7295 (or (and b!38815 (= lambda!4645 (evidence!504 prev!738))) b_next!7385))))

(declare-fun b_next!7387 () Bool)

(assert (=> b!38812 (= b_next!7301 (or (and b!38815 (= lambda!4645 (evidence!504 thiss!6256))) b_next!7387))))

(declare-fun b_next!7389 () Bool)

(assert (=> b!38809 (= b_next!7313 (or (and b!38815 (= lambda!4645 (evidence!504 x$102!4))) b_next!7389))))

(declare-fun bs!11961 () Bool)

(declare-fun b!38804 () Bool)

(assert (= bs!11961 (and b!38804 b!38805)))

(declare-fun lambda!4646 () Int)

(assert (=> bs!11961 (not (= lambda!4646 lambda!4641))))

(declare-fun bs!11962 () Bool)

(assert (= bs!11962 (and b!38804 b!38814)))

(assert (=> bs!11962 (not (= lambda!4646 lambda!4643))))

(declare-fun bs!11963 () Bool)

(assert (= bs!11963 (and b!38804 b!38815)))

(assert (=> bs!11963 (not (= lambda!4646 lambda!4644))))

(assert (=> b!38804 true))

(assert (=> b!38804 true))

(declare-fun b_next!7391 () Bool)

(assert (=> b!38816 (= b_next!7365 (or (and b!38804 (= lambda!4646 (x!13491 x$103!3))) b_next!7391))))

(declare-fun b_next!7393 () Bool)

(assert (=> b!38817 (= b_next!7367 (or (and b!38804 (= lambda!4646 (y!1390 x$104!2))) b_next!7393))))

(declare-fun b_next!7395 () Bool)

(assert (=> b!38816 (= b_next!7369 (or (and b!38804 (= lambda!4646 (y!1390 x$103!3))) b_next!7395))))

(declare-fun b_next!7397 () Bool)

(assert (=> b!38807 (= b_next!7371 (or (and b!38804 (= lambda!4646 (y!1391 prev!738))) b_next!7397))))

(declare-fun b_next!7399 () Bool)

(assert (=> b!38809 (= b_next!7373 (or (and b!38804 (= lambda!4646 (x!13492 x$102!4))) b_next!7399))))

(declare-fun b_next!7401 () Bool)

(assert (=> b!38812 (= b_next!7375 (or (and b!38804 (= lambda!4646 (y!1391 thiss!6256))) b_next!7401))))

(declare-fun b_next!7403 () Bool)

(assert (=> b!38807 (= b_next!7377 (or (and b!38804 (= lambda!4646 (x!13492 prev!738))) b_next!7403))))

(declare-fun b_next!7405 () Bool)

(assert (=> b!38809 (= b_next!7379 (or (and b!38804 (= lambda!4646 (y!1391 x$102!4))) b_next!7405))))

(declare-fun b_next!7407 () Bool)

(assert (=> b!38812 (= b_next!7381 (or (and b!38804 (= lambda!4646 (x!13492 thiss!6256))) b_next!7407))))

(declare-fun b_next!7409 () Bool)

(assert (=> b!38817 (= b_next!7383 (or (and b!38804 (= lambda!4646 (x!13491 x$104!2))) b_next!7409))))

(declare-fun lambda!4647 () Int)

(assert (=> bs!11961 (not (= lambda!4647 lambda!4641))))

(declare-fun p2!66 () Nat!62)

(declare-fun n2!332 () Nat!62)

(declare-fun n1!316 () Nat!62)

(declare-fun p1!72 () Nat!62)

(assert (=> bs!11962 (= (= (tuple2!203 n1!316 n2!332) (tuple2!203 p1!72 p2!66)) (= lambda!4647 lambda!4643))))

(assert (=> bs!11963 (not (= lambda!4647 lambda!4644))))

(assert (=> b!38804 (not (= lambda!4647 lambda!4646))))

(assert (=> b!38804 true))

(assert (=> b!38804 true))

(assert (=> (and b!38816 b!38804 (= (dynLambda!699 lambda!4647) (dynLambda!699 (x!13491 x$103!3)))) (= lambda!4647 (x!13491 x$103!3))))

(assert (=> (and b!38817 b!38804 (= (dynLambda!699 lambda!4647) (dynLambda!699 (y!1390 x$104!2)))) (= lambda!4647 (y!1390 x$104!2))))

(assert (=> (and b!38816 b!38804 (= (dynLambda!699 lambda!4647) (dynLambda!699 (y!1390 x$103!3)))) (= lambda!4647 (y!1390 x$103!3))))

(assert (=> (and b!38807 b!38804 (= (dynLambda!699 lambda!4647) (dynLambda!699 (y!1391 prev!738)))) (= lambda!4647 (y!1391 prev!738))))

(assert (=> (and b!38809 b!38804 (= (dynLambda!699 lambda!4647) (dynLambda!699 (x!13492 x$102!4)))) (= lambda!4647 (x!13492 x$102!4))))

(assert (=> (and b!38812 b!38804 (= (dynLambda!699 lambda!4647) (dynLambda!699 (y!1391 thiss!6256)))) (= lambda!4647 (y!1391 thiss!6256))))

(assert (=> (and b!38807 b!38804 (= (dynLambda!699 lambda!4647) (dynLambda!699 (x!13492 prev!738)))) (= lambda!4647 (x!13492 prev!738))))

(assert (=> (and b!38809 b!38804 (= (dynLambda!699 lambda!4647) (dynLambda!699 (y!1391 x$102!4)))) (= lambda!4647 (y!1391 x$102!4))))

(assert (=> (and b!38812 b!38804 (= (dynLambda!699 lambda!4647) (dynLambda!699 (x!13492 thiss!6256)))) (= lambda!4647 (x!13492 thiss!6256))))

(assert (=> (and b!38817 b!38804 (= (dynLambda!699 lambda!4647) (dynLambda!699 (x!13491 x$104!2)))) (= lambda!4647 (x!13491 x$104!2))))

(declare-fun b_next!7411 () Bool)

(assert (=> b!38816 (= b_next!7391 (or (and b!38804 (= lambda!4647 (x!13491 x$103!3))) b_next!7411))))

(declare-fun b_next!7413 () Bool)

(assert (=> b!38817 (= b_next!7393 (or (and b!38804 (= lambda!4647 (y!1390 x$104!2))) b_next!7413))))

(declare-fun b_next!7415 () Bool)

(assert (=> b!38816 (= b_next!7395 (or (and b!38804 (= lambda!4647 (y!1390 x$103!3))) b_next!7415))))

(declare-fun b_next!7417 () Bool)

(assert (=> b!38807 (= b_next!7397 (or (and b!38804 (= lambda!4647 (y!1391 prev!738))) b_next!7417))))

(declare-fun b_next!7419 () Bool)

(assert (=> b!38809 (= b_next!7399 (or (and b!38804 (= lambda!4647 (x!13492 x$102!4))) b_next!7419))))

(declare-fun b_next!7421 () Bool)

(assert (=> b!38812 (= b_next!7401 (or (and b!38804 (= lambda!4647 (y!1391 thiss!6256))) b_next!7421))))

(declare-fun b_next!7423 () Bool)

(assert (=> b!38807 (= b_next!7403 (or (and b!38804 (= lambda!4647 (x!13492 prev!738))) b_next!7423))))

(declare-fun b_next!7425 () Bool)

(assert (=> b!38809 (= b_next!7405 (or (and b!38804 (= lambda!4647 (y!1391 x$102!4))) b_next!7425))))

(declare-fun b_next!7427 () Bool)

(assert (=> b!38812 (= b_next!7407 (or (and b!38804 (= lambda!4647 (x!13492 thiss!6256))) b_next!7427))))

(declare-fun b_next!7429 () Bool)

(assert (=> b!38817 (= b_next!7409 (or (and b!38804 (= lambda!4647 (x!13491 x$104!2))) b_next!7429))))

(declare-fun lambda!4648 () Int)

(assert (=> bs!11963 (not (= lambda!4648 lambda!4645))))

(assert (=> b!38804 true))

(declare-fun b_next!7431 () Bool)

(assert (=> b!38807 (= b_next!7385 (or (and b!38804 (= lambda!4648 (evidence!504 prev!738))) b_next!7431))))

(declare-fun b_next!7433 () Bool)

(assert (=> b!38812 (= b_next!7387 (or (and b!38804 (= lambda!4648 (evidence!504 thiss!6256))) b_next!7433))))

(declare-fun b_next!7435 () Bool)

(assert (=> b!38809 (= b_next!7389 (or (and b!38804 (= lambda!4648 (evidence!504 x$102!4))) b_next!7435))))

(declare-fun res!18529 () Bool)

(declare-fun e!20000 () Bool)

(assert (=> b!38804 (=> (not res!18529) (not e!20000))))

(assert (=> b!38804 (= res!18529 (= thiss!6256 (RAEqEvidence!105 lambda!4646 lambda!4647 lambda!4648)))))

(declare-fun res!18530 () Bool)

(assert (=> b!38805 (=> (not res!18530) (not e!20000))))

(assert (=> b!38805 (= res!18530 (= x$104!2 (RAEqEvidence!103 lambda!4641 lambda!4641 lambda!4642)))))

(declare-fun b!38806 () Bool)

(declare-fun res!18523 () Bool)

(assert (=> b!38806 (=> (not res!18523) (not e!20000))))

(declare-fun keepEvidence!10 (Unit!335) Bool)

(declare-fun dynLambda!700 (Int) Unit!335)

(assert (=> b!38806 (= res!18523 (keepEvidence!10 (dynLambda!700 (evidence!504 prev!738))))))

(declare-fun res!18522 () Bool)

(assert (=> start!5008 (=> (not res!18522) (not e!20000))))

(declare-fun x$98!1 () tuple2!202)

(declare-fun log2_and_remainder!0 (Nat!62) tuple2!202)

(declare-fun pair!0 (Nat!62 Nat!62) Nat!62)

(assert (=> start!5008 (= res!18522 (= x$98!1 (tuple2!203 (_1!127 (log2_and_remainder!0 (Succ!43 (pair!0 n1!316 n2!332)))) (_2!127 (log2_and_remainder!0 (Succ!43 (pair!0 n1!316 n2!332)))))))))

(assert (=> start!5008 e!20000))

(assert (=> start!5008 true))

(declare-fun e!20001 () Bool)

(declare-fun inv!700 (RAEqEvidence!104) Bool)

(assert (=> start!5008 (and (inv!700 prev!738) e!20001)))

(declare-fun e!20004 () Bool)

(declare-fun inv!701 (RAEqEvidence!102) Bool)

(assert (=> start!5008 (and (inv!701 x$103!3) e!20004)))

(declare-fun e!20005 () Bool)

(assert (=> start!5008 (and (inv!700 x$102!4) e!20005)))

(declare-fun e!20002 () Bool)

(assert (=> start!5008 (and (inv!700 thiss!6256) e!20002)))

(declare-fun e!20003 () Bool)

(assert (=> start!5008 (and (inv!701 x$104!2) e!20003)))

(assert (=> b!38807 (= e!20001 (and tp!8466 tp!8455 tp!8463))))

(declare-fun b!38808 () Bool)

(declare-fun res!18527 () Bool)

(assert (=> b!38808 (=> (not res!18527) (not e!20000))))

(declare-fun remainder!2 () Nat!62)

(assert (=> b!38808 (= res!18527 (and (= p1!72 (_1!127 x$98!1)) (= remainder!2 (_2!127 x$98!1))))))

(assert (=> b!38809 (= e!20005 (and tp!8467 tp!8453 tp!8460))))

(declare-fun b!38810 () Bool)

(declare-fun res!18526 () Bool)

(assert (=> b!38810 (=> (not res!18526) (not e!20000))))

(declare-fun /!2 (Nat!62 Nat!62) Nat!62)

(declare-fun -!4 (Nat!62 Nat!62) Nat!62)

(assert (=> b!38810 (= res!18526 (= p2!66 (/!2 (-!4 remainder!2 (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(declare-fun b!38811 () Bool)

(declare-fun res!18524 () Bool)

(assert (=> b!38811 (=> (not res!18524) (not e!20000))))

(assert (=> b!38811 (= res!18524 (= prev!738 x$102!4))))

(assert (=> b!38812 (= e!20002 (and tp!8454 tp!8464 tp!8456))))

(declare-fun b!38813 () Bool)

(assert (=> b!38813 (= e!20000 (not (= (dynLambda!699 (y!1391 prev!738)) (dynLambda!699 (x!13492 thiss!6256)))))))

(declare-fun res!18525 () Bool)

(assert (=> b!38814 (=> (not res!18525) (not e!20000))))

(assert (=> b!38814 (= res!18525 (= x$103!3 (RAEqEvidence!103 lambda!4643 lambda!4643 lambda!4642)))))

(declare-fun res!18528 () Bool)

(assert (=> b!38815 (=> (not res!18528) (not e!20000))))

(assert (=> b!38815 (= res!18528 (= x$102!4 (RAEqEvidence!105 lambda!4644 lambda!4644 lambda!4645)))))

(assert (=> b!38816 (= e!20004 (and tp!8457 tp!8462 tp!8465))))

(assert (=> b!38817 (= e!20003 (and tp!8458 tp!8461 tp!8459))))

(assert (= (and start!5008 res!18522) b!38808))

(assert (= (and b!38808 res!18527) b!38810))

(assert (= (and b!38810 res!18526) b!38805))

(assert (= (and b!38805 res!18530) b!38814))

(assert (= (and b!38814 res!18525) b!38815))

(assert (= (and b!38815 res!18528) b!38804))

(assert (= (and b!38804 res!18529) b!38811))

(assert (= (and b!38811 res!18524) b!38806))

(assert (= (and b!38806 res!18523) b!38813))

(assert (= start!5008 b!38807))

(assert (= start!5008 b!38816))

(assert (= start!5008 b!38809))

(assert (= start!5008 b!38812))

(assert (= start!5008 b!38817))

(declare-fun b_lambda!10237 () Bool)

(assert (=> (not b_lambda!10237) (not b!38806)))

(declare-fun t!6488 () Bool)

(declare-fun tb!5667 () Bool)

(assert (=> (and b!38807 (= (evidence!504 prev!738) (evidence!504 prev!738)) t!6488) tb!5667))

(declare-fun result!5943 () Bool)

(assert (=> tb!5667 (= result!5943 true)))

(assert (=> b!38806 t!6488))

(declare-fun b_and!10239 () Bool)

(assert (= b_and!10213 (and (=> t!6488 result!5943) b_and!10239)))

(declare-fun tb!5669 () Bool)

(declare-fun t!6490 () Bool)

(assert (=> (and b!38812 (= (evidence!504 thiss!6256) (evidence!504 prev!738)) t!6490) tb!5669))

(declare-fun result!5945 () Bool)

(assert (=> tb!5669 (= result!5945 true)))

(assert (=> b!38806 t!6490))

(declare-fun b_and!10241 () Bool)

(assert (= b_and!10219 (and (=> t!6490 result!5945) b_and!10241)))

(declare-fun tb!5671 () Bool)

(declare-fun t!6492 () Bool)

(assert (=> (and b!38809 (= (evidence!504 x$102!4) (evidence!504 prev!738)) t!6492) tb!5671))

(declare-fun result!5947 () Bool)

(assert (=> tb!5671 (= result!5947 true)))

(assert (=> b!38806 t!6492))

(declare-fun b_and!10243 () Bool)

(assert (= b_and!10231 (and (=> t!6492 result!5947) b_and!10243)))

(declare-fun b_lambda!10239 () Bool)

(assert (=> (not b_lambda!10239) (not b!38813)))

(declare-fun t!6494 () Bool)

(declare-fun tb!5673 () Bool)

(assert (=> (and b!38816 (= (x!13491 x$103!3) (y!1391 prev!738)) t!6494) tb!5673))

(declare-fun result!5949 () Bool)

(assert (=> tb!5673 (= result!5949 true)))

(assert (=> b!38813 t!6494))

(declare-fun b_and!10245 () Bool)

(assert (= b_and!10233 (and (=> t!6494 result!5949) b_and!10245)))

(declare-fun t!6496 () Bool)

(declare-fun tb!5675 () Bool)

(assert (=> (and b!38807 (= (y!1391 prev!738) (y!1391 prev!738)) t!6496) tb!5675))

(declare-fun result!5951 () Bool)

(assert (=> tb!5675 (= result!5951 true)))

(assert (=> b!38813 t!6496))

(declare-fun b_and!10247 () Bool)

(assert (= b_and!10211 (and (=> t!6496 result!5951) b_and!10247)))

(declare-fun t!6498 () Bool)

(declare-fun tb!5677 () Bool)

(assert (=> (and b!38809 (= (x!13492 x$102!4) (y!1391 prev!738)) t!6498) tb!5677))

(declare-fun result!5953 () Bool)

(assert (=> tb!5677 (= result!5953 true)))

(assert (=> b!38813 t!6498))

(declare-fun b_and!10249 () Bool)

(assert (= b_and!10227 (and (=> t!6498 result!5953) b_and!10249)))

(declare-fun tb!5679 () Bool)

(declare-fun t!6500 () Bool)

(assert (=> (and b!38816 (= (y!1390 x$103!3) (y!1391 prev!738)) t!6500) tb!5679))

(declare-fun result!5955 () Bool)

(assert (=> tb!5679 (= result!5955 true)))

(assert (=> b!38813 t!6500))

(declare-fun b_and!10251 () Bool)

(assert (= b_and!10235 (and (=> t!6500 result!5955) b_and!10251)))

(declare-fun t!6502 () Bool)

(declare-fun tb!5681 () Bool)

(assert (=> (and b!38807 (= (x!13492 prev!738) (y!1391 prev!738)) t!6502) tb!5681))

(declare-fun result!5957 () Bool)

(assert (=> tb!5681 (= result!5957 true)))

(assert (=> b!38813 t!6502))

(declare-fun b_and!10253 () Bool)

(assert (= b_and!10209 (and (=> t!6502 result!5957) b_and!10253)))

(declare-fun t!6504 () Bool)

(declare-fun tb!5683 () Bool)

(assert (=> (and b!38812 (= (x!13492 thiss!6256) (y!1391 prev!738)) t!6504) tb!5683))

(declare-fun result!5959 () Bool)

(assert (=> tb!5683 (= result!5959 true)))

(assert (=> b!38813 t!6504))

(declare-fun b_and!10255 () Bool)

(assert (= b_and!10215 (and (=> t!6504 result!5959) b_and!10255)))

(declare-fun t!6506 () Bool)

(declare-fun tb!5685 () Bool)

(assert (=> (and b!38817 (= (x!13491 x$104!2) (y!1391 prev!738)) t!6506) tb!5685))

(declare-fun result!5961 () Bool)

(assert (=> tb!5685 (= result!5961 true)))

(assert (=> b!38813 t!6506))

(declare-fun b_and!10257 () Bool)

(assert (= b_and!10221 (and (=> t!6506 result!5961) b_and!10257)))

(declare-fun t!6508 () Bool)

(declare-fun tb!5687 () Bool)

(assert (=> (and b!38812 (= (y!1391 thiss!6256) (y!1391 prev!738)) t!6508) tb!5687))

(declare-fun result!5963 () Bool)

(assert (=> tb!5687 (= result!5963 true)))

(assert (=> b!38813 t!6508))

(declare-fun b_and!10259 () Bool)

(assert (= b_and!10217 (and (=> t!6508 result!5963) b_and!10259)))

(declare-fun tb!5689 () Bool)

(declare-fun t!6510 () Bool)

(assert (=> (and b!38817 (= (y!1390 x$104!2) (y!1391 prev!738)) t!6510) tb!5689))

(declare-fun result!5965 () Bool)

(assert (=> tb!5689 (= result!5965 true)))

(assert (=> b!38813 t!6510))

(declare-fun b_and!10261 () Bool)

(assert (= b_and!10223 (and (=> t!6510 result!5965) b_and!10261)))

(declare-fun tb!5691 () Bool)

(declare-fun t!6512 () Bool)

(assert (=> (and b!38809 (= (y!1391 x$102!4) (y!1391 prev!738)) t!6512) tb!5691))

(declare-fun result!5967 () Bool)

(assert (=> tb!5691 (= result!5967 true)))

(assert (=> b!38813 t!6512))

(declare-fun b_and!10263 () Bool)

(assert (= b_and!10229 (and (=> t!6512 result!5967) b_and!10263)))

(declare-fun b_lambda!10241 () Bool)

(assert (=> (not b_lambda!10241) (not b!38813)))

(declare-fun t!6514 () Bool)

(declare-fun tb!5693 () Bool)

(assert (=> (and b!38812 (= (y!1391 thiss!6256) (x!13492 thiss!6256)) t!6514) tb!5693))

(declare-fun result!5969 () Bool)

(assert (=> tb!5693 (= result!5969 true)))

(assert (=> b!38813 t!6514))

(declare-fun b_and!10265 () Bool)

(assert (= b_and!10259 (and (=> t!6514 result!5969) b_and!10265)))

(declare-fun t!6516 () Bool)

(declare-fun tb!5695 () Bool)

(assert (=> (and b!38816 (= (y!1390 x$103!3) (x!13492 thiss!6256)) t!6516) tb!5695))

(declare-fun result!5971 () Bool)

(assert (=> tb!5695 (= result!5971 true)))

(assert (=> b!38813 t!6516))

(declare-fun b_and!10267 () Bool)

(assert (= b_and!10251 (and (=> t!6516 result!5971) b_and!10267)))

(declare-fun tb!5697 () Bool)

(declare-fun t!6518 () Bool)

(assert (=> (and b!38816 (= (x!13491 x$103!3) (x!13492 thiss!6256)) t!6518) tb!5697))

(declare-fun result!5973 () Bool)

(assert (=> tb!5697 (= result!5973 true)))

(assert (=> b!38813 t!6518))

(declare-fun b_and!10269 () Bool)

(assert (= b_and!10245 (and (=> t!6518 result!5973) b_and!10269)))

(declare-fun t!6520 () Bool)

(declare-fun tb!5699 () Bool)

(assert (=> (and b!38812 (= (x!13492 thiss!6256) (x!13492 thiss!6256)) t!6520) tb!5699))

(declare-fun result!5975 () Bool)

(assert (=> tb!5699 (= result!5975 true)))

(assert (=> b!38813 t!6520))

(declare-fun b_and!10271 () Bool)

(assert (= b_and!10255 (and (=> t!6520 result!5975) b_and!10271)))

(declare-fun t!6522 () Bool)

(declare-fun tb!5701 () Bool)

(assert (=> (and b!38809 (= (y!1391 x$102!4) (x!13492 thiss!6256)) t!6522) tb!5701))

(declare-fun result!5977 () Bool)

(assert (=> tb!5701 (= result!5977 true)))

(assert (=> b!38813 t!6522))

(declare-fun b_and!10273 () Bool)

(assert (= b_and!10263 (and (=> t!6522 result!5977) b_and!10273)))

(declare-fun tb!5703 () Bool)

(declare-fun t!6524 () Bool)

(assert (=> (and b!38807 (= (y!1391 prev!738) (x!13492 thiss!6256)) t!6524) tb!5703))

(declare-fun result!5979 () Bool)

(assert (=> tb!5703 (= result!5979 true)))

(assert (=> b!38813 t!6524))

(declare-fun b_and!10275 () Bool)

(assert (= b_and!10247 (and (=> t!6524 result!5979) b_and!10275)))

(declare-fun tb!5705 () Bool)

(declare-fun t!6526 () Bool)

(assert (=> (and b!38807 (= (x!13492 prev!738) (x!13492 thiss!6256)) t!6526) tb!5705))

(declare-fun result!5981 () Bool)

(assert (=> tb!5705 (= result!5981 true)))

(assert (=> b!38813 t!6526))

(declare-fun b_and!10277 () Bool)

(assert (= b_and!10253 (and (=> t!6526 result!5981) b_and!10277)))

(declare-fun tb!5707 () Bool)

(declare-fun t!6528 () Bool)

(assert (=> (and b!38809 (= (x!13492 x$102!4) (x!13492 thiss!6256)) t!6528) tb!5707))

(declare-fun result!5983 () Bool)

(assert (=> tb!5707 (= result!5983 true)))

(assert (=> b!38813 t!6528))

(declare-fun b_and!10279 () Bool)

(assert (= b_and!10249 (and (=> t!6528 result!5983) b_and!10279)))

(declare-fun tb!5709 () Bool)

(declare-fun t!6530 () Bool)

(assert (=> (and b!38817 (= (x!13491 x$104!2) (x!13492 thiss!6256)) t!6530) tb!5709))

(declare-fun result!5985 () Bool)

(assert (=> tb!5709 (= result!5985 true)))

(assert (=> b!38813 t!6530))

(declare-fun b_and!10281 () Bool)

(assert (= b_and!10257 (and (=> t!6530 result!5985) b_and!10281)))

(declare-fun tb!5711 () Bool)

(declare-fun t!6532 () Bool)

(assert (=> (and b!38817 (= (y!1390 x$104!2) (x!13492 thiss!6256)) t!6532) tb!5711))

(declare-fun result!5987 () Bool)

(assert (=> tb!5711 (= result!5987 true)))

(assert (=> b!38813 t!6532))

(declare-fun b_and!10283 () Bool)

(assert (= b_and!10261 (and (=> t!6532 result!5987) b_and!10283)))

(declare-fun m!39995 () Bool)

(assert (=> b!38806 m!39995))

(assert (=> b!38806 m!39995))

(declare-fun m!39997 () Bool)

(assert (=> b!38806 m!39997))

(declare-fun m!39999 () Bool)

(assert (=> start!5008 m!39999))

(declare-fun m!40001 () Bool)

(assert (=> start!5008 m!40001))

(declare-fun m!40003 () Bool)

(assert (=> start!5008 m!40003))

(declare-fun m!40005 () Bool)

(assert (=> start!5008 m!40005))

(declare-fun m!40007 () Bool)

(assert (=> start!5008 m!40007))

(declare-fun m!40009 () Bool)

(assert (=> start!5008 m!40009))

(declare-fun m!40011 () Bool)

(assert (=> start!5008 m!40011))

(declare-fun m!40013 () Bool)

(assert (=> b!38810 m!40013))

(assert (=> b!38810 m!40013))

(declare-fun m!40015 () Bool)

(assert (=> b!38810 m!40015))

(declare-fun m!40017 () Bool)

(assert (=> b!38813 m!40017))

(declare-fun m!40019 () Bool)

(assert (=> b!38813 m!40019))

(push 1)

(assert (not b_next!7413))

(assert b_and!10243)

(assert (not b_next!7341))

(assert (not b_next!7433))

(assert (not b_next!7343))

(assert (not b_next!7425))

(assert b_and!10275)

(assert (not b_lambda!10239))

(assert (not b_next!7415))

(assert b_and!10239)

(assert b_and!10267)

(assert (not b!38814))

(assert b_and!10283)

(assert (not b_next!7429))

(assert b_and!10237)

(assert b_and!10241)

(assert (not b_next!7427))

(assert b_and!10269)

(assert (not start!5008))

(assert b_and!10265)

(assert b_and!10281)

(assert b_and!10271)

(assert b_and!10279)

(assert (not b_next!7423))

(assert (not b_lambda!10237))

(assert b_and!10225)

(assert (not b!38805))

(assert (not b_next!7417))

(assert (not b_next!7421))

(assert (not b!38810))

(assert b_and!10277)

(assert b_and!10273)

(assert (not b_next!7419))

(assert (not b_lambda!10241))

(assert (not b_next!7431))

(assert (not b_next!7435))

(assert (not b!38806))

(assert (not b_next!7411))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!7413))

(assert b_and!10243)

(assert (not b_next!7341))

(assert (not b_next!7433))

(assert (not b_next!7343))

(assert (not b_next!7425))

(assert b_and!10275)

(assert (not b_next!7415))

(assert b_and!10239)

(assert b_and!10267)

(assert b_and!10283)

(assert (not b_next!7429))

(assert b_and!10237)

(assert b_and!10241)

(assert (not b_next!7427))

(assert b_and!10269)

(assert b_and!10265)

(assert b_and!10281)

(assert b_and!10271)

(assert b_and!10279)

(assert (not b_next!7423))

(assert b_and!10225)

(assert (not b_next!7417))

(assert (not b_next!7421))

(assert b_and!10277)

(assert b_and!10273)

(assert (not b_next!7419))

(assert (not b_next!7431))

(assert (not b_next!7435))

(assert (not b_next!7411))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!10243 () Bool)

(assert (= b_lambda!10239 (or (and b!38805 (= lambda!4641 (y!1391 prev!738))) (and b!38812 b_free!2921 (= (y!1391 thiss!6256) (y!1391 prev!738))) (and b!38809 b_free!2931 (= (x!13492 x$102!4) (y!1391 prev!738))) (and b!38807 b_free!2915) (and b!38817 b_free!2925 (= (x!13491 x$104!2) (y!1391 prev!738))) (and b!38804 (= lambda!4646 (y!1391 prev!738))) (and b!38804 (= lambda!4647 (y!1391 prev!738))) (and b!38816 b_free!2937 (= (x!13491 x$103!3) (y!1391 prev!738))) (and b!38816 b_free!2939 (= (y!1390 x$103!3) (y!1391 prev!738))) (and b!38812 b_free!2919 (= (x!13492 thiss!6256) (y!1391 prev!738))) (and b!38814 (= lambda!4643 (y!1391 prev!738))) (and b!38815 (= lambda!4644 (y!1391 prev!738))) (and b!38817 b_free!2927 (= (y!1390 x$104!2) (y!1391 prev!738))) (and b!38807 b_free!2913 (= (x!13492 prev!738) (y!1391 prev!738))) (and b!38809 b_free!2933 (= (y!1391 x$102!4) (y!1391 prev!738))) b_lambda!10243)))

(declare-fun bs!11964 () Bool)

(declare-fun d!19668 () Bool)

(assert (= bs!11964 (and d!19668 b!38804)))

(assert (=> bs!11964 (= (dynLambda!699 lambda!4647) (tuple2!203 n1!316 n2!332))))

(assert (=> (and b!38804 (= lambda!4647 (y!1391 prev!738)) b!38813) d!19668))

(declare-fun bs!11965 () Bool)

(declare-fun d!19670 () Bool)

(assert (= bs!11965 (and d!19670 b!38805)))

(declare-fun project!0 (Nat!62) tuple2!202)

(assert (=> bs!11965 (= (dynLambda!699 lambda!4641) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11965 m!40011))

(assert (=> bs!11965 m!40011))

(declare-fun m!40021 () Bool)

(assert (=> bs!11965 m!40021))

(assert (=> (and b!38805 (= lambda!4641 (y!1391 prev!738)) b!38813) d!19670))

(declare-fun bs!11966 () Bool)

(declare-fun d!19672 () Bool)

(assert (= bs!11966 (and d!19672 b!38815)))

(assert (=> bs!11966 (= (dynLambda!699 lambda!4644) (tuple2!203 p1!72 (/!2 (-!4 remainder!2 (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!11966 m!40013))

(assert (=> bs!11966 m!40013))

(assert (=> bs!11966 m!40015))

(assert (=> (and b!38815 (= lambda!4644 (y!1391 prev!738)) b!38813) d!19672))

(declare-fun bs!11967 () Bool)

(declare-fun d!19674 () Bool)

(assert (= bs!11967 (and d!19674 b!38804)))

(declare-fun +!5 (Nat!62 Nat!62) Nat!62)

(declare-fun *!4 (Nat!62 Nat!62) Nat!62)

(assert (=> bs!11967 (= (dynLambda!699 lambda!4646) (tuple2!203 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(declare-fun m!40023 () Bool)

(assert (=> bs!11967 m!40023))

(declare-fun m!40025 () Bool)

(assert (=> bs!11967 m!40025))

(declare-fun m!40027 () Bool)

(assert (=> bs!11967 m!40027))

(assert (=> bs!11967 m!40023))

(declare-fun m!40029 () Bool)

(assert (=> bs!11967 m!40029))

(assert (=> bs!11967 m!40027))

(assert (=> bs!11967 m!40029))

(assert (=> (and b!38804 (= lambda!4646 (y!1391 prev!738)) b!38813) d!19674))

(declare-fun bs!11968 () Bool)

(declare-fun d!19676 () Bool)

(assert (= bs!11968 (and d!19676 b!38814)))

(assert (=> bs!11968 (= (dynLambda!699 lambda!4643) (tuple2!203 p1!72 p2!66))))

(assert (=> (and b!38814 (= lambda!4643 (y!1391 prev!738)) b!38813) d!19676))

(declare-fun b_lambda!10245 () Bool)

(assert (= b_lambda!10241 (or (and b!38815 (= lambda!4644 (x!13492 thiss!6256))) (and b!38817 b_free!2925 (= (x!13491 x$104!2) (x!13492 thiss!6256))) (and b!38807 b_free!2913 (= (x!13492 prev!738) (x!13492 thiss!6256))) (and b!38805 (= lambda!4641 (x!13492 thiss!6256))) (and b!38804 (= lambda!4646 (x!13492 thiss!6256))) (and b!38804 (= lambda!4647 (x!13492 thiss!6256))) (and b!38814 (= lambda!4643 (x!13492 thiss!6256))) (and b!38809 b_free!2931 (= (x!13492 x$102!4) (x!13492 thiss!6256))) (and b!38816 b_free!2939 (= (y!1390 x$103!3) (x!13492 thiss!6256))) (and b!38812 b_free!2921 (= (y!1391 thiss!6256) (x!13492 thiss!6256))) (and b!38816 b_free!2937 (= (x!13491 x$103!3) (x!13492 thiss!6256))) (and b!38812 b_free!2919) (and b!38809 b_free!2933 (= (y!1391 x$102!4) (x!13492 thiss!6256))) (and b!38817 b_free!2927 (= (y!1390 x$104!2) (x!13492 thiss!6256))) (and b!38807 b_free!2915 (= (y!1391 prev!738) (x!13492 thiss!6256))) b_lambda!10245)))

(declare-fun bs!11969 () Bool)

(declare-fun d!19678 () Bool)

(assert (= bs!11969 (and d!19678 b!38814)))

(assert (=> bs!11969 (= (dynLambda!699 lambda!4643) (tuple2!203 p1!72 p2!66))))

(assert (=> (and b!38814 (= lambda!4643 (x!13492 thiss!6256)) b!38813) d!19678))

(declare-fun bs!11970 () Bool)

(declare-fun d!19680 () Bool)

(assert (= bs!11970 (and d!19680 b!38804)))

(assert (=> bs!11970 (= (dynLambda!699 lambda!4647) (tuple2!203 n1!316 n2!332))))

(assert (=> (and b!38804 (= lambda!4647 (x!13492 thiss!6256)) b!38813) d!19680))

(declare-fun bs!11971 () Bool)

(declare-fun d!19682 () Bool)

(assert (= bs!11971 (and d!19682 b!38804)))

(assert (=> bs!11971 (= (dynLambda!699 lambda!4646) (tuple2!203 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!11971 m!40023))

(assert (=> bs!11971 m!40025))

(assert (=> bs!11971 m!40027))

(assert (=> bs!11971 m!40023))

(assert (=> bs!11971 m!40029))

(assert (=> bs!11971 m!40027))

(assert (=> bs!11971 m!40029))

(assert (=> (and b!38804 (= lambda!4646 (x!13492 thiss!6256)) b!38813) d!19682))

(declare-fun bs!11972 () Bool)

(declare-fun d!19684 () Bool)

(assert (= bs!11972 (and d!19684 b!38805)))

(assert (=> bs!11972 (= (dynLambda!699 lambda!4641) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11972 m!40011))

(assert (=> bs!11972 m!40011))

(assert (=> bs!11972 m!40021))

(assert (=> (and b!38805 (= lambda!4641 (x!13492 thiss!6256)) b!38813) d!19684))

(declare-fun bs!11973 () Bool)

(declare-fun d!19686 () Bool)

(assert (= bs!11973 (and d!19686 b!38815)))

(assert (=> bs!11973 (= (dynLambda!699 lambda!4644) (tuple2!203 p1!72 (/!2 (-!4 remainder!2 (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!11973 m!40013))

(assert (=> bs!11973 m!40013))

(assert (=> bs!11973 m!40015))

(assert (=> (and b!38815 (= lambda!4644 (x!13492 thiss!6256)) b!38813) d!19686))

(declare-fun b_lambda!10247 () Bool)

(assert (= b_lambda!10237 (or (and b!38809 b_free!2935 (= (evidence!504 x$102!4) (evidence!504 prev!738))) (and b!38804 (= lambda!4648 (evidence!504 prev!738))) (and b!38815 (= lambda!4645 (evidence!504 prev!738))) (and b!38807 b_free!2917) (and b!38812 b_free!2923 (= (evidence!504 thiss!6256) (evidence!504 prev!738))) b_lambda!10247)))

(declare-fun bs!11974 () Bool)

(declare-fun d!19688 () Bool)

(assert (= bs!11974 (and d!19688 b!38804)))

(declare-fun additive_inverse!0 (Nat!62 Nat!62) Unit!335)

(assert (=> bs!11974 (= (dynLambda!700 lambda!4648) (additive_inverse!0 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)))))

(assert (=> bs!11974 m!40029))

(assert (=> bs!11974 m!40029))

(declare-fun m!40031 () Bool)

(assert (=> bs!11974 m!40031))

(assert (=> (and b!38804 (= lambda!4648 (evidence!504 prev!738)) b!38806) d!19688))

(declare-fun bs!11975 () Bool)

(declare-fun d!19690 () Bool)

(assert (= bs!11975 (and d!19690 b!38815)))

(declare-fun project_1_inverse!0 (Nat!62 Nat!62) Unit!335)

(assert (=> bs!11975 (= (dynLambda!700 lambda!4645) (project_1_inverse!0 n1!316 n2!332))))

(declare-fun m!40033 () Bool)

(assert (=> bs!11975 m!40033))

(assert (=> (and b!38815 (= lambda!4645 (evidence!504 prev!738)) b!38806) d!19690))

(push 1)

(assert (not b_next!7413))

(assert b_and!10243)

(assert (not b_next!7341))

(assert (not b_next!7433))

(assert (not bs!11973))

(assert (not b_next!7343))

(assert (not b_lambda!10243))

(assert (not b_next!7425))

(assert (not b_lambda!10247))

(assert b_and!10275)

(assert (not bs!11974))

(assert (not b_next!7415))

(assert b_and!10239)

(assert b_and!10267)

(assert (not b!38814))

(assert b_and!10283)

(assert (not b_next!7429))

(assert b_and!10237)

(assert b_and!10241)

(assert (not b_next!7427))

(assert (not bs!11967))

(assert b_and!10269)

(assert (not start!5008))

(assert b_and!10265)

(assert b_and!10281)

(assert b_and!10271)

(assert (not bs!11965))

(assert b_and!10279)

(assert (not b_next!7423))

(assert b_and!10225)

(assert (not b!38805))

(assert (not bs!11972))

(assert (not b_next!7417))

(assert (not b_next!7421))

(assert (not b!38810))

(assert b_and!10277)

(assert b_and!10273)

(assert (not b_lambda!10245))

(assert (not b_next!7419))

(assert (not bs!11975))

(assert (not b_next!7431))

(assert (not bs!11971))

(assert (not b_next!7435))

(assert (not bs!11966))

(assert (not b!38806))

(assert (not b_next!7411))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!7413))

(assert b_and!10243)

(assert (not b_next!7341))

(assert (not b_next!7433))

(assert (not b_next!7343))

(assert (not b_next!7425))

(assert b_and!10275)

(assert (not b_next!7415))

(assert b_and!10239)

(assert b_and!10267)

(assert b_and!10283)

(assert (not b_next!7429))

(assert b_and!10237)

(assert b_and!10241)

(assert (not b_next!7427))

(assert b_and!10269)

(assert b_and!10265)

(assert b_and!10281)

(assert b_and!10271)

(assert b_and!10279)

(assert (not b_next!7423))

(assert b_and!10225)

(assert (not b_next!7417))

(assert (not b_next!7421))

(assert b_and!10277)

(assert b_and!10273)

(assert (not b_next!7419))

(assert (not b_next!7431))

(assert (not b_next!7435))

(assert (not b_next!7411))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!38832 () Bool)

(declare-fun e!20013 () Bool)

(declare-fun lt!7561 () Nat!62)

(declare-fun repr!0 (Nat!62) Int)

(assert (=> b!38832 (= e!20013 (< (repr!0 lt!7561) (repr!0 (-!4 remainder!2 (Succ!43 Zero!46)))))))

(declare-fun d!19692 () Bool)

(declare-fun e!20012 () Bool)

(assert (=> d!19692 e!20012))

(declare-fun res!18540 () Bool)

(assert (=> d!19692 (=> (not res!18540) (not e!20012))))

(assert (=> d!19692 (= res!18540 (<= (repr!0 lt!7561) (repr!0 (-!4 remainder!2 (Succ!43 Zero!46)))))))

(declare-fun e!20014 () Nat!62)

(assert (=> d!19692 (= lt!7561 e!20014)))

(declare-fun c!8315 () Bool)

(declare-fun <!2 (Nat!62 Nat!62) Bool)

(assert (=> d!19692 (= c!8315 (<!2 (-!4 remainder!2 (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46))))))

(declare-fun >!2 (Nat!62 Nat!62) Bool)

(assert (=> d!19692 (>!2 (Succ!43 (Succ!43 Zero!46)) Zero!46)))

(assert (=> d!19692 (= (/!2 (-!4 remainder!2 (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46))) lt!7561)))

(declare-fun b!38833 () Bool)

(declare-fun res!18538 () Bool)

(assert (=> b!38833 (=> res!18538 e!20013)))

(assert (=> b!38833 (= res!18538 (not (>!2 (Succ!43 (Succ!43 Zero!46)) (Succ!43 Zero!46))))))

(declare-fun b!38834 () Bool)

(assert (=> b!38834 (= e!20012 e!20013)))

(declare-fun res!18539 () Bool)

(assert (=> b!38834 (=> res!18539 e!20013)))

(assert (=> b!38834 (= res!18539 (not (>!2 (-!4 remainder!2 (Succ!43 Zero!46)) Zero!46)))))

(declare-fun b!38835 () Bool)

(assert (=> b!38835 (= e!20014 (Succ!43 (/!2 (-!4 (-!4 remainder!2 (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46))) (Succ!43 (Succ!43 Zero!46)))))))

(declare-fun b!38836 () Bool)

(assert (=> b!38836 (= e!20014 Zero!46)))

(assert (= (and d!19692 c!8315) b!38836))

(assert (= (and d!19692 (not c!8315)) b!38835))

(assert (= (and d!19692 res!18540) b!38834))

(assert (= (and b!38834 (not res!18539)) b!38833))

(assert (= (and b!38833 (not res!18538)) b!38832))

(assert (=> b!38835 m!40013))

(declare-fun m!40035 () Bool)

(assert (=> b!38835 m!40035))

(assert (=> b!38835 m!40035))

(declare-fun m!40037 () Bool)

(assert (=> b!38835 m!40037))

(declare-fun m!40039 () Bool)

(assert (=> b!38833 m!40039))

(declare-fun m!40041 () Bool)

(assert (=> b!38832 m!40041))

(assert (=> b!38832 m!40013))

(declare-fun m!40043 () Bool)

(assert (=> b!38832 m!40043))

(assert (=> d!19692 m!40041))

(assert (=> d!19692 m!40013))

(assert (=> d!19692 m!40043))

(assert (=> d!19692 m!40013))

(declare-fun m!40045 () Bool)

(assert (=> d!19692 m!40045))

(declare-fun m!40047 () Bool)

(assert (=> d!19692 m!40047))

(assert (=> b!38834 m!40013))

(declare-fun m!40049 () Bool)

(assert (=> b!38834 m!40049))

(assert (=> b!38810 d!19692))

(declare-fun b!38847 () Bool)

(declare-fun e!20023 () Bool)

(declare-fun lt!7564 () Nat!62)

(assert (=> b!38847 (= e!20023 (< (repr!0 lt!7564) (repr!0 remainder!2)))))

(declare-fun b!38848 () Bool)

(declare-fun e!20022 () Nat!62)

(assert (=> b!38848 (= e!20022 (-!4 (n!1135 remainder!2) (n!1135 (Succ!43 Zero!46))))))

(declare-fun b!38849 () Bool)

(declare-fun e!20021 () Bool)

(assert (=> b!38849 (= e!20021 e!20023)))

(declare-fun res!18548 () Bool)

(assert (=> b!38849 (=> res!18548 e!20023)))

(assert (=> b!38849 (= res!18548 (not (>!2 remainder!2 Zero!46)))))

(declare-fun b!38850 () Bool)

(declare-fun res!18550 () Bool)

(assert (=> b!38850 (=> res!18550 e!20023)))

(assert (=> b!38850 (= res!18550 (not (>!2 (Succ!43 Zero!46) Zero!46)))))

(declare-fun d!19694 () Bool)

(assert (=> d!19694 e!20021))

(declare-fun res!18549 () Bool)

(assert (=> d!19694 (=> (not res!18549) (not e!20021))))

(assert (=> d!19694 (= res!18549 (<= (repr!0 lt!7564) (repr!0 remainder!2)))))

(assert (=> d!19694 (= lt!7564 e!20022)))

(declare-fun c!8318 () Bool)

(assert (=> d!19694 (= c!8318 (and (is-Succ!43 remainder!2) (is-Succ!43 (Succ!43 Zero!46))))))

(assert (=> d!19694 (= (-!4 remainder!2 (Succ!43 Zero!46)) lt!7564)))

(declare-fun b!38851 () Bool)

(assert (=> b!38851 (= e!20022 remainder!2)))

(assert (= (and d!19694 c!8318) b!38848))

(assert (= (and d!19694 (not c!8318)) b!38851))

(assert (= (and d!19694 res!18549) b!38849))

(assert (= (and b!38849 (not res!18548)) b!38850))

(assert (= (and b!38850 (not res!18550)) b!38847))

(declare-fun m!40051 () Bool)

(assert (=> b!38848 m!40051))

(declare-fun m!40053 () Bool)

(assert (=> b!38847 m!40053))

(declare-fun m!40055 () Bool)

(assert (=> b!38847 m!40055))

(assert (=> d!19694 m!40053))

(assert (=> d!19694 m!40055))

(declare-fun m!40057 () Bool)

(assert (=> b!38849 m!40057))

(declare-fun m!40059 () Bool)

(assert (=> b!38850 m!40059))

(assert (=> b!38810 d!19694))

(declare-fun d!19696 () Bool)

(declare-fun pow!0 (Nat!62 Nat!62) Nat!62)

(assert (=> d!19696 (= (pair!0 n1!316 n2!332) (-!4 (*!4 (pow!0 (Succ!43 (Succ!43 Zero!46)) n1!316) (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46))) (Succ!43 Zero!46)))))

(declare-fun bs!11976 () Bool)

(assert (= bs!11976 d!19696))

(assert (=> bs!11976 m!40029))

(declare-fun m!40061 () Bool)

(assert (=> bs!11976 m!40061))

(assert (=> bs!11976 m!40061))

(assert (=> bs!11976 m!40027))

(declare-fun m!40063 () Bool)

(assert (=> bs!11976 m!40063))

(assert (=> bs!11976 m!40063))

(declare-fun m!40065 () Bool)

(assert (=> bs!11976 m!40065))

(assert (=> bs!11976 m!40029))

(assert (=> bs!11976 m!40027))

(assert (=> start!5008 d!19696))

(declare-fun d!19698 () Bool)

(assert (=> d!19698 (= (inv!701 x$104!2) (= (dynLambda!699 (x!13491 x$104!2)) (dynLambda!699 (y!1390 x$104!2))))))

(declare-fun b_lambda!10249 () Bool)

(assert (=> (not b_lambda!10249) (not d!19698)))

(declare-fun tb!5713 () Bool)

(declare-fun t!6534 () Bool)

(assert (=> (and b!38816 (= (x!13491 x$103!3) (x!13491 x$104!2)) t!6534) tb!5713))

(declare-fun result!5989 () Bool)

(assert (=> tb!5713 (= result!5989 true)))

(assert (=> d!19698 t!6534))

(declare-fun b_and!10285 () Bool)

(assert (= b_and!10269 (and (=> t!6534 result!5989) b_and!10285)))

(declare-fun t!6536 () Bool)

(declare-fun tb!5715 () Bool)

(assert (=> (and b!38809 (= (y!1391 x$102!4) (x!13491 x$104!2)) t!6536) tb!5715))

(declare-fun result!5991 () Bool)

(assert (=> tb!5715 (= result!5991 true)))

(assert (=> d!19698 t!6536))

(declare-fun b_and!10287 () Bool)

(assert (= b_and!10273 (and (=> t!6536 result!5991) b_and!10287)))

(declare-fun t!6538 () Bool)

(declare-fun tb!5717 () Bool)

(assert (=> (and b!38817 (= (y!1390 x$104!2) (x!13491 x$104!2)) t!6538) tb!5717))

(declare-fun result!5993 () Bool)

(assert (=> tb!5717 (= result!5993 true)))

(assert (=> d!19698 t!6538))

(declare-fun b_and!10289 () Bool)

(assert (= b_and!10283 (and (=> t!6538 result!5993) b_and!10289)))

(declare-fun tb!5719 () Bool)

(declare-fun t!6540 () Bool)

(assert (=> (and b!38807 (= (y!1391 prev!738) (x!13491 x$104!2)) t!6540) tb!5719))

(declare-fun result!5995 () Bool)

(assert (=> tb!5719 (= result!5995 true)))

(assert (=> d!19698 t!6540))

(declare-fun b_and!10291 () Bool)

(assert (= b_and!10275 (and (=> t!6540 result!5995) b_and!10291)))

(declare-fun t!6542 () Bool)

(declare-fun tb!5721 () Bool)

(assert (=> (and b!38807 (= (x!13492 prev!738) (x!13491 x$104!2)) t!6542) tb!5721))

(declare-fun result!5997 () Bool)

(assert (=> tb!5721 (= result!5997 true)))

(assert (=> d!19698 t!6542))

(declare-fun b_and!10293 () Bool)

(assert (= b_and!10277 (and (=> t!6542 result!5997) b_and!10293)))

(declare-fun t!6544 () Bool)

(declare-fun tb!5723 () Bool)

(assert (=> (and b!38817 (= (x!13491 x$104!2) (x!13491 x$104!2)) t!6544) tb!5723))

(declare-fun result!5999 () Bool)

(assert (=> tb!5723 (= result!5999 true)))

(assert (=> d!19698 t!6544))

(declare-fun b_and!10295 () Bool)

(assert (= b_and!10281 (and (=> t!6544 result!5999) b_and!10295)))

(declare-fun tb!5725 () Bool)

(declare-fun t!6546 () Bool)

(assert (=> (and b!38809 (= (x!13492 x$102!4) (x!13491 x$104!2)) t!6546) tb!5725))

(declare-fun result!6001 () Bool)

(assert (=> tb!5725 (= result!6001 true)))

(assert (=> d!19698 t!6546))

(declare-fun b_and!10297 () Bool)

(assert (= b_and!10279 (and (=> t!6546 result!6001) b_and!10297)))

(declare-fun tb!5727 () Bool)

(declare-fun t!6548 () Bool)

(assert (=> (and b!38812 (= (y!1391 thiss!6256) (x!13491 x$104!2)) t!6548) tb!5727))

(declare-fun result!6003 () Bool)

(assert (=> tb!5727 (= result!6003 true)))

(assert (=> d!19698 t!6548))

(declare-fun b_and!10299 () Bool)

(assert (= b_and!10265 (and (=> t!6548 result!6003) b_and!10299)))

(declare-fun t!6550 () Bool)

(declare-fun tb!5729 () Bool)

(assert (=> (and b!38816 (= (y!1390 x$103!3) (x!13491 x$104!2)) t!6550) tb!5729))

(declare-fun result!6005 () Bool)

(assert (=> tb!5729 (= result!6005 true)))

(assert (=> d!19698 t!6550))

(declare-fun b_and!10301 () Bool)

(assert (= b_and!10267 (and (=> t!6550 result!6005) b_and!10301)))

(declare-fun tb!5731 () Bool)

(declare-fun t!6552 () Bool)

(assert (=> (and b!38812 (= (x!13492 thiss!6256) (x!13491 x$104!2)) t!6552) tb!5731))

(declare-fun result!6007 () Bool)

(assert (=> tb!5731 (= result!6007 true)))

(assert (=> d!19698 t!6552))

(declare-fun b_and!10303 () Bool)

(assert (= b_and!10271 (and (=> t!6552 result!6007) b_and!10303)))

(declare-fun b_lambda!10251 () Bool)

(assert (=> (not b_lambda!10251) (not d!19698)))

(declare-fun t!6554 () Bool)

(declare-fun tb!5733 () Bool)

(assert (=> (and b!38817 (= (x!13491 x$104!2) (y!1390 x$104!2)) t!6554) tb!5733))

(declare-fun result!6009 () Bool)

(assert (=> tb!5733 (= result!6009 true)))

(assert (=> d!19698 t!6554))

(declare-fun b_and!10305 () Bool)

(assert (= b_and!10295 (and (=> t!6554 result!6009) b_and!10305)))

(declare-fun tb!5735 () Bool)

(declare-fun t!6556 () Bool)

(assert (=> (and b!38816 (= (x!13491 x$103!3) (y!1390 x$104!2)) t!6556) tb!5735))

(declare-fun result!6011 () Bool)

(assert (=> tb!5735 (= result!6011 true)))

(assert (=> d!19698 t!6556))

(declare-fun b_and!10307 () Bool)

(assert (= b_and!10285 (and (=> t!6556 result!6011) b_and!10307)))

(declare-fun t!6558 () Bool)

(declare-fun tb!5737 () Bool)

(assert (=> (and b!38807 (= (y!1391 prev!738) (y!1390 x$104!2)) t!6558) tb!5737))

(declare-fun result!6013 () Bool)

(assert (=> tb!5737 (= result!6013 true)))

(assert (=> d!19698 t!6558))

(declare-fun b_and!10309 () Bool)

(assert (= b_and!10291 (and (=> t!6558 result!6013) b_and!10309)))

(declare-fun tb!5739 () Bool)

(declare-fun t!6560 () Bool)

(assert (=> (and b!38809 (= (x!13492 x$102!4) (y!1390 x$104!2)) t!6560) tb!5739))

(declare-fun result!6015 () Bool)

(assert (=> tb!5739 (= result!6015 true)))

(assert (=> d!19698 t!6560))

(declare-fun b_and!10311 () Bool)

(assert (= b_and!10297 (and (=> t!6560 result!6015) b_and!10311)))

(declare-fun tb!5741 () Bool)

(declare-fun t!6562 () Bool)

(assert (=> (and b!38812 (= (y!1391 thiss!6256) (y!1390 x$104!2)) t!6562) tb!5741))

(declare-fun result!6017 () Bool)

(assert (=> tb!5741 (= result!6017 true)))

(assert (=> d!19698 t!6562))

(declare-fun b_and!10313 () Bool)

(assert (= b_and!10299 (and (=> t!6562 result!6017) b_and!10313)))

(declare-fun t!6564 () Bool)

(declare-fun tb!5743 () Bool)

(assert (=> (and b!38817 (= (y!1390 x$104!2) (y!1390 x$104!2)) t!6564) tb!5743))

(declare-fun result!6019 () Bool)

(assert (=> tb!5743 (= result!6019 true)))

(assert (=> d!19698 t!6564))

(declare-fun b_and!10315 () Bool)

(assert (= b_and!10289 (and (=> t!6564 result!6019) b_and!10315)))

(declare-fun tb!5745 () Bool)

(declare-fun t!6566 () Bool)

(assert (=> (and b!38812 (= (x!13492 thiss!6256) (y!1390 x$104!2)) t!6566) tb!5745))

(declare-fun result!6021 () Bool)

(assert (=> tb!5745 (= result!6021 true)))

(assert (=> d!19698 t!6566))

(declare-fun b_and!10317 () Bool)

(assert (= b_and!10303 (and (=> t!6566 result!6021) b_and!10317)))

(declare-fun tb!5747 () Bool)

(declare-fun t!6568 () Bool)

(assert (=> (and b!38809 (= (y!1391 x$102!4) (y!1390 x$104!2)) t!6568) tb!5747))

(declare-fun result!6023 () Bool)

(assert (=> tb!5747 (= result!6023 true)))

(assert (=> d!19698 t!6568))

(declare-fun b_and!10319 () Bool)

(assert (= b_and!10287 (and (=> t!6568 result!6023) b_and!10319)))

(declare-fun tb!5749 () Bool)

(declare-fun t!6570 () Bool)

(assert (=> (and b!38816 (= (y!1390 x$103!3) (y!1390 x$104!2)) t!6570) tb!5749))

(declare-fun result!6025 () Bool)

(assert (=> tb!5749 (= result!6025 true)))

(assert (=> d!19698 t!6570))

(declare-fun b_and!10321 () Bool)

(assert (= b_and!10301 (and (=> t!6570 result!6025) b_and!10321)))

(declare-fun t!6572 () Bool)

(declare-fun tb!5751 () Bool)

(assert (=> (and b!38807 (= (x!13492 prev!738) (y!1390 x$104!2)) t!6572) tb!5751))

(declare-fun result!6027 () Bool)

(assert (=> tb!5751 (= result!6027 true)))

(assert (=> d!19698 t!6572))

(declare-fun b_and!10323 () Bool)

(assert (= b_and!10293 (and (=> t!6572 result!6027) b_and!10323)))

(declare-fun m!40067 () Bool)

(assert (=> d!19698 m!40067))

(declare-fun m!40069 () Bool)

(assert (=> d!19698 m!40069))

(assert (=> start!5008 d!19698))

(declare-fun d!19700 () Bool)

(assert (=> d!19700 (= (inv!700 x$102!4) (= (dynLambda!699 (x!13492 x$102!4)) (dynLambda!699 (y!1391 x$102!4))))))

(declare-fun b_lambda!10253 () Bool)

(assert (=> (not b_lambda!10253) (not d!19700)))

(declare-fun t!6574 () Bool)

(declare-fun tb!5753 () Bool)

(assert (=> (and b!38807 (= (x!13492 prev!738) (x!13492 x$102!4)) t!6574) tb!5753))

(declare-fun result!6029 () Bool)

(assert (=> tb!5753 (= result!6029 true)))

(assert (=> d!19700 t!6574))

(declare-fun b_and!10325 () Bool)

(assert (= b_and!10323 (and (=> t!6574 result!6029) b_and!10325)))

(declare-fun t!6576 () Bool)

(declare-fun tb!5755 () Bool)

(assert (=> (and b!38817 (= (x!13491 x$104!2) (x!13492 x$102!4)) t!6576) tb!5755))

(declare-fun result!6031 () Bool)

(assert (=> tb!5755 (= result!6031 true)))

(assert (=> d!19700 t!6576))

(declare-fun b_and!10327 () Bool)

(assert (= b_and!10305 (and (=> t!6576 result!6031) b_and!10327)))

(declare-fun t!6578 () Bool)

(declare-fun tb!5757 () Bool)

(assert (=> (and b!38809 (= (x!13492 x$102!4) (x!13492 x$102!4)) t!6578) tb!5757))

(declare-fun result!6033 () Bool)

(assert (=> tb!5757 (= result!6033 true)))

(assert (=> d!19700 t!6578))

(declare-fun b_and!10329 () Bool)

(assert (= b_and!10311 (and (=> t!6578 result!6033) b_and!10329)))

(declare-fun t!6580 () Bool)

(declare-fun tb!5759 () Bool)

(assert (=> (and b!38809 (= (y!1391 x$102!4) (x!13492 x$102!4)) t!6580) tb!5759))

(declare-fun result!6035 () Bool)

(assert (=> tb!5759 (= result!6035 true)))

(assert (=> d!19700 t!6580))

(declare-fun b_and!10331 () Bool)

(assert (= b_and!10319 (and (=> t!6580 result!6035) b_and!10331)))

(declare-fun t!6582 () Bool)

(declare-fun tb!5761 () Bool)

(assert (=> (and b!38812 (= (x!13492 thiss!6256) (x!13492 x$102!4)) t!6582) tb!5761))

(declare-fun result!6037 () Bool)

(assert (=> tb!5761 (= result!6037 true)))

(assert (=> d!19700 t!6582))

(declare-fun b_and!10333 () Bool)

(assert (= b_and!10317 (and (=> t!6582 result!6037) b_and!10333)))

(declare-fun t!6584 () Bool)

(declare-fun tb!5763 () Bool)

(assert (=> (and b!38817 (= (y!1390 x$104!2) (x!13492 x$102!4)) t!6584) tb!5763))

(declare-fun result!6039 () Bool)

(assert (=> tb!5763 (= result!6039 true)))

(assert (=> d!19700 t!6584))

(declare-fun b_and!10335 () Bool)

(assert (= b_and!10315 (and (=> t!6584 result!6039) b_and!10335)))

(declare-fun tb!5765 () Bool)

(declare-fun t!6586 () Bool)

(assert (=> (and b!38812 (= (y!1391 thiss!6256) (x!13492 x$102!4)) t!6586) tb!5765))

(declare-fun result!6041 () Bool)

(assert (=> tb!5765 (= result!6041 true)))

(assert (=> d!19700 t!6586))

(declare-fun b_and!10337 () Bool)

(assert (= b_and!10313 (and (=> t!6586 result!6041) b_and!10337)))

(declare-fun tb!5767 () Bool)

(declare-fun t!6588 () Bool)

(assert (=> (and b!38816 (= (x!13491 x$103!3) (x!13492 x$102!4)) t!6588) tb!5767))

(declare-fun result!6043 () Bool)

(assert (=> tb!5767 (= result!6043 true)))

(assert (=> d!19700 t!6588))

(declare-fun b_and!10339 () Bool)

(assert (= b_and!10307 (and (=> t!6588 result!6043) b_and!10339)))

(declare-fun t!6590 () Bool)

(declare-fun tb!5769 () Bool)

(assert (=> (and b!38807 (= (y!1391 prev!738) (x!13492 x$102!4)) t!6590) tb!5769))

(declare-fun result!6045 () Bool)

(assert (=> tb!5769 (= result!6045 true)))

(assert (=> d!19700 t!6590))

(declare-fun b_and!10341 () Bool)

(assert (= b_and!10309 (and (=> t!6590 result!6045) b_and!10341)))

(declare-fun t!6592 () Bool)

(declare-fun tb!5771 () Bool)

(assert (=> (and b!38816 (= (y!1390 x$103!3) (x!13492 x$102!4)) t!6592) tb!5771))

(declare-fun result!6047 () Bool)

(assert (=> tb!5771 (= result!6047 true)))

(assert (=> d!19700 t!6592))

(declare-fun b_and!10343 () Bool)

(assert (= b_and!10321 (and (=> t!6592 result!6047) b_and!10343)))

(declare-fun b_lambda!10255 () Bool)

(assert (=> (not b_lambda!10255) (not d!19700)))

(declare-fun t!6594 () Bool)

(declare-fun tb!5773 () Bool)

(assert (=> (and b!38809 (= (y!1391 x$102!4) (y!1391 x$102!4)) t!6594) tb!5773))

(declare-fun result!6049 () Bool)

(assert (=> tb!5773 (= result!6049 true)))

(assert (=> d!19700 t!6594))

(declare-fun b_and!10345 () Bool)

(assert (= b_and!10331 (and (=> t!6594 result!6049) b_and!10345)))

(declare-fun t!6596 () Bool)

(declare-fun tb!5775 () Bool)

(assert (=> (and b!38809 (= (x!13492 x$102!4) (y!1391 x$102!4)) t!6596) tb!5775))

(declare-fun result!6051 () Bool)

(assert (=> tb!5775 (= result!6051 true)))

(assert (=> d!19700 t!6596))

(declare-fun b_and!10347 () Bool)

(assert (= b_and!10329 (and (=> t!6596 result!6051) b_and!10347)))

(declare-fun t!6598 () Bool)

(declare-fun tb!5777 () Bool)

(assert (=> (and b!38812 (= (x!13492 thiss!6256) (y!1391 x$102!4)) t!6598) tb!5777))

(declare-fun result!6053 () Bool)

(assert (=> tb!5777 (= result!6053 true)))

(assert (=> d!19700 t!6598))

(declare-fun b_and!10349 () Bool)

(assert (= b_and!10333 (and (=> t!6598 result!6053) b_and!10349)))

(declare-fun tb!5779 () Bool)

(declare-fun t!6600 () Bool)

(assert (=> (and b!38817 (= (y!1390 x$104!2) (y!1391 x$102!4)) t!6600) tb!5779))

(declare-fun result!6055 () Bool)

(assert (=> tb!5779 (= result!6055 true)))

(assert (=> d!19700 t!6600))

(declare-fun b_and!10351 () Bool)

(assert (= b_and!10335 (and (=> t!6600 result!6055) b_and!10351)))

(declare-fun t!6602 () Bool)

(declare-fun tb!5781 () Bool)

(assert (=> (and b!38817 (= (x!13491 x$104!2) (y!1391 x$102!4)) t!6602) tb!5781))

(declare-fun result!6057 () Bool)

(assert (=> tb!5781 (= result!6057 true)))

(assert (=> d!19700 t!6602))

(declare-fun b_and!10353 () Bool)

(assert (= b_and!10327 (and (=> t!6602 result!6057) b_and!10353)))

(declare-fun tb!5783 () Bool)

(declare-fun t!6604 () Bool)

(assert (=> (and b!38812 (= (y!1391 thiss!6256) (y!1391 x$102!4)) t!6604) tb!5783))

(declare-fun result!6059 () Bool)

(assert (=> tb!5783 (= result!6059 true)))

(assert (=> d!19700 t!6604))

(declare-fun b_and!10355 () Bool)

(assert (= b_and!10337 (and (=> t!6604 result!6059) b_and!10355)))

(declare-fun t!6606 () Bool)

(declare-fun tb!5785 () Bool)

(assert (=> (and b!38807 (= (x!13492 prev!738) (y!1391 x$102!4)) t!6606) tb!5785))

(declare-fun result!6061 () Bool)

(assert (=> tb!5785 (= result!6061 true)))

(assert (=> d!19700 t!6606))

(declare-fun b_and!10357 () Bool)

(assert (= b_and!10325 (and (=> t!6606 result!6061) b_and!10357)))

(declare-fun tb!5787 () Bool)

(declare-fun t!6608 () Bool)

(assert (=> (and b!38807 (= (y!1391 prev!738) (y!1391 x$102!4)) t!6608) tb!5787))

(declare-fun result!6063 () Bool)

(assert (=> tb!5787 (= result!6063 true)))

(assert (=> d!19700 t!6608))

(declare-fun b_and!10359 () Bool)

(assert (= b_and!10341 (and (=> t!6608 result!6063) b_and!10359)))

(declare-fun tb!5789 () Bool)

(declare-fun t!6610 () Bool)

(assert (=> (and b!38816 (= (y!1390 x$103!3) (y!1391 x$102!4)) t!6610) tb!5789))

(declare-fun result!6065 () Bool)

(assert (=> tb!5789 (= result!6065 true)))

(assert (=> d!19700 t!6610))

(declare-fun b_and!10361 () Bool)

(assert (= b_and!10343 (and (=> t!6610 result!6065) b_and!10361)))

(declare-fun t!6612 () Bool)

(declare-fun tb!5791 () Bool)

(assert (=> (and b!38816 (= (x!13491 x$103!3) (y!1391 x$102!4)) t!6612) tb!5791))

(declare-fun result!6067 () Bool)

(assert (=> tb!5791 (= result!6067 true)))

(assert (=> d!19700 t!6612))

(declare-fun b_and!10363 () Bool)

(assert (= b_and!10339 (and (=> t!6612 result!6067) b_and!10363)))

(declare-fun m!40071 () Bool)

(assert (=> d!19700 m!40071))

(declare-fun m!40073 () Bool)

(assert (=> d!19700 m!40073))

(assert (=> start!5008 d!19700))

(declare-fun d!19702 () Bool)

(assert (=> d!19702 (= (inv!701 x$103!3) (= (dynLambda!699 (x!13491 x$103!3)) (dynLambda!699 (y!1390 x$103!3))))))

(declare-fun b_lambda!10257 () Bool)

(assert (=> (not b_lambda!10257) (not d!19702)))

(declare-fun tb!5793 () Bool)

(declare-fun t!6614 () Bool)

(assert (=> (and b!38807 (= (x!13492 prev!738) (x!13491 x$103!3)) t!6614) tb!5793))

(declare-fun result!6069 () Bool)

(assert (=> tb!5793 (= result!6069 true)))

(assert (=> d!19702 t!6614))

(declare-fun b_and!10365 () Bool)

(assert (= b_and!10357 (and (=> t!6614 result!6069) b_and!10365)))

(declare-fun t!6616 () Bool)

(declare-fun tb!5795 () Bool)

(assert (=> (and b!38816 (= (y!1390 x$103!3) (x!13491 x$103!3)) t!6616) tb!5795))

(declare-fun result!6071 () Bool)

(assert (=> tb!5795 (= result!6071 true)))

(assert (=> d!19702 t!6616))

(declare-fun b_and!10367 () Bool)

(assert (= b_and!10361 (and (=> t!6616 result!6071) b_and!10367)))

(declare-fun t!6618 () Bool)

(declare-fun tb!5797 () Bool)

(assert (=> (and b!38816 (= (x!13491 x$103!3) (x!13491 x$103!3)) t!6618) tb!5797))

(declare-fun result!6073 () Bool)

(assert (=> tb!5797 (= result!6073 true)))

(assert (=> d!19702 t!6618))

(declare-fun b_and!10369 () Bool)

(assert (= b_and!10363 (and (=> t!6618 result!6073) b_and!10369)))

(declare-fun t!6620 () Bool)

(declare-fun tb!5799 () Bool)

(assert (=> (and b!38817 (= (x!13491 x$104!2) (x!13491 x$103!3)) t!6620) tb!5799))

(declare-fun result!6075 () Bool)

(assert (=> tb!5799 (= result!6075 true)))

(assert (=> d!19702 t!6620))

(declare-fun b_and!10371 () Bool)

(assert (= b_and!10353 (and (=> t!6620 result!6075) b_and!10371)))

(declare-fun tb!5801 () Bool)

(declare-fun t!6622 () Bool)

(assert (=> (and b!38812 (= (x!13492 thiss!6256) (x!13491 x$103!3)) t!6622) tb!5801))

(declare-fun result!6077 () Bool)

(assert (=> tb!5801 (= result!6077 true)))

(assert (=> d!19702 t!6622))

(declare-fun b_and!10373 () Bool)

(assert (= b_and!10349 (and (=> t!6622 result!6077) b_and!10373)))

(declare-fun tb!5803 () Bool)

(declare-fun t!6624 () Bool)

(assert (=> (and b!38817 (= (y!1390 x$104!2) (x!13491 x$103!3)) t!6624) tb!5803))

(declare-fun result!6079 () Bool)

(assert (=> tb!5803 (= result!6079 true)))

(assert (=> d!19702 t!6624))

(declare-fun b_and!10375 () Bool)

(assert (= b_and!10351 (and (=> t!6624 result!6079) b_and!10375)))

(declare-fun tb!5805 () Bool)

(declare-fun t!6626 () Bool)

(assert (=> (and b!38809 (= (y!1391 x$102!4) (x!13491 x$103!3)) t!6626) tb!5805))

(declare-fun result!6081 () Bool)

(assert (=> tb!5805 (= result!6081 true)))

(assert (=> d!19702 t!6626))

(declare-fun b_and!10377 () Bool)

(assert (= b_and!10345 (and (=> t!6626 result!6081) b_and!10377)))

(declare-fun tb!5807 () Bool)

(declare-fun t!6628 () Bool)

(assert (=> (and b!38807 (= (y!1391 prev!738) (x!13491 x$103!3)) t!6628) tb!5807))

(declare-fun result!6083 () Bool)

(assert (=> tb!5807 (= result!6083 true)))

(assert (=> d!19702 t!6628))

(declare-fun b_and!10379 () Bool)

(assert (= b_and!10359 (and (=> t!6628 result!6083) b_and!10379)))

(declare-fun tb!5809 () Bool)

(declare-fun t!6630 () Bool)

(assert (=> (and b!38809 (= (x!13492 x$102!4) (x!13491 x$103!3)) t!6630) tb!5809))

(declare-fun result!6085 () Bool)

(assert (=> tb!5809 (= result!6085 true)))

(assert (=> d!19702 t!6630))

(declare-fun b_and!10381 () Bool)

(assert (= b_and!10347 (and (=> t!6630 result!6085) b_and!10381)))

(declare-fun tb!5811 () Bool)

(declare-fun t!6632 () Bool)

(assert (=> (and b!38812 (= (y!1391 thiss!6256) (x!13491 x$103!3)) t!6632) tb!5811))

(declare-fun result!6087 () Bool)

(assert (=> tb!5811 (= result!6087 true)))

(assert (=> d!19702 t!6632))

(declare-fun b_and!10383 () Bool)

(assert (= b_and!10355 (and (=> t!6632 result!6087) b_and!10383)))

(declare-fun b_lambda!10259 () Bool)

(assert (=> (not b_lambda!10259) (not d!19702)))

(declare-fun t!6634 () Bool)

(declare-fun tb!5813 () Bool)

(assert (=> (and b!38809 (= (y!1391 x$102!4) (y!1390 x$103!3)) t!6634) tb!5813))

(declare-fun result!6089 () Bool)

(assert (=> tb!5813 (= result!6089 true)))

(assert (=> d!19702 t!6634))

(declare-fun b_and!10385 () Bool)

(assert (= b_and!10377 (and (=> t!6634 result!6089) b_and!10385)))

(declare-fun t!6636 () Bool)

(declare-fun tb!5815 () Bool)

(assert (=> (and b!38816 (= (x!13491 x$103!3) (y!1390 x$103!3)) t!6636) tb!5815))

(declare-fun result!6091 () Bool)

(assert (=> tb!5815 (= result!6091 true)))

(assert (=> d!19702 t!6636))

(declare-fun b_and!10387 () Bool)

(assert (= b_and!10369 (and (=> t!6636 result!6091) b_and!10387)))

(declare-fun t!6638 () Bool)

(declare-fun tb!5817 () Bool)

(assert (=> (and b!38812 (= (y!1391 thiss!6256) (y!1390 x$103!3)) t!6638) tb!5817))

(declare-fun result!6093 () Bool)

(assert (=> tb!5817 (= result!6093 true)))

(assert (=> d!19702 t!6638))

(declare-fun b_and!10389 () Bool)

(assert (= b_and!10383 (and (=> t!6638 result!6093) b_and!10389)))

(declare-fun tb!5819 () Bool)

(declare-fun t!6640 () Bool)

(assert (=> (and b!38817 (= (x!13491 x$104!2) (y!1390 x$103!3)) t!6640) tb!5819))

(declare-fun result!6095 () Bool)

(assert (=> tb!5819 (= result!6095 true)))

(assert (=> d!19702 t!6640))

(declare-fun b_and!10391 () Bool)

(assert (= b_and!10371 (and (=> t!6640 result!6095) b_and!10391)))

(declare-fun t!6642 () Bool)

(declare-fun tb!5821 () Bool)

(assert (=> (and b!38809 (= (x!13492 x$102!4) (y!1390 x$103!3)) t!6642) tb!5821))

(declare-fun result!6097 () Bool)

(assert (=> tb!5821 (= result!6097 true)))

(assert (=> d!19702 t!6642))

(declare-fun b_and!10393 () Bool)

(assert (= b_and!10381 (and (=> t!6642 result!6097) b_and!10393)))

(declare-fun t!6644 () Bool)

(declare-fun tb!5823 () Bool)

(assert (=> (and b!38812 (= (x!13492 thiss!6256) (y!1390 x$103!3)) t!6644) tb!5823))

(declare-fun result!6099 () Bool)

(assert (=> tb!5823 (= result!6099 true)))

(assert (=> d!19702 t!6644))

(declare-fun b_and!10395 () Bool)

(assert (= b_and!10373 (and (=> t!6644 result!6099) b_and!10395)))

(declare-fun tb!5825 () Bool)

(declare-fun t!6646 () Bool)

(assert (=> (and b!38807 (= (x!13492 prev!738) (y!1390 x$103!3)) t!6646) tb!5825))

(declare-fun result!6101 () Bool)

(assert (=> tb!5825 (= result!6101 true)))

(assert (=> d!19702 t!6646))

(declare-fun b_and!10397 () Bool)

(assert (= b_and!10365 (and (=> t!6646 result!6101) b_and!10397)))

(declare-fun tb!5827 () Bool)

(declare-fun t!6648 () Bool)

(assert (=> (and b!38807 (= (y!1391 prev!738) (y!1390 x$103!3)) t!6648) tb!5827))

(declare-fun result!6103 () Bool)

(assert (=> tb!5827 (= result!6103 true)))

(assert (=> d!19702 t!6648))

(declare-fun b_and!10399 () Bool)

(assert (= b_and!10379 (and (=> t!6648 result!6103) b_and!10399)))

(declare-fun tb!5829 () Bool)

(declare-fun t!6650 () Bool)

(assert (=> (and b!38817 (= (y!1390 x$104!2) (y!1390 x$103!3)) t!6650) tb!5829))

(declare-fun result!6105 () Bool)

(assert (=> tb!5829 (= result!6105 true)))

(assert (=> d!19702 t!6650))

(declare-fun b_and!10401 () Bool)

(assert (= b_and!10375 (and (=> t!6650 result!6105) b_and!10401)))

(declare-fun t!6652 () Bool)

(declare-fun tb!5831 () Bool)

(assert (=> (and b!38816 (= (y!1390 x$103!3) (y!1390 x$103!3)) t!6652) tb!5831))

(declare-fun result!6107 () Bool)

(assert (=> tb!5831 (= result!6107 true)))

(assert (=> d!19702 t!6652))

(declare-fun b_and!10403 () Bool)

(assert (= b_and!10367 (and (=> t!6652 result!6107) b_and!10403)))

(declare-fun m!40075 () Bool)

(assert (=> d!19702 m!40075))

(declare-fun m!40077 () Bool)

(assert (=> d!19702 m!40077))

(assert (=> start!5008 d!19702))

(declare-fun d!19704 () Bool)

(assert (=> d!19704 (= (inv!700 thiss!6256) (= (dynLambda!699 (x!13492 thiss!6256)) (dynLambda!699 (y!1391 thiss!6256))))))

(declare-fun b_lambda!10261 () Bool)

(assert (=> (not b_lambda!10261) (not d!19704)))

(assert (=> d!19704 t!6518))

(declare-fun b_and!10405 () Bool)

(assert (= b_and!10387 (and (=> t!6518 result!5973) b_and!10405)))

(assert (=> d!19704 t!6526))

(declare-fun b_and!10407 () Bool)

(assert (= b_and!10397 (and (=> t!6526 result!5981) b_and!10407)))

(assert (=> d!19704 t!6516))

(declare-fun b_and!10409 () Bool)

(assert (= b_and!10403 (and (=> t!6516 result!5971) b_and!10409)))

(assert (=> d!19704 t!6520))

(declare-fun b_and!10411 () Bool)

(assert (= b_and!10395 (and (=> t!6520 result!5975) b_and!10411)))

(assert (=> d!19704 t!6530))

(declare-fun b_and!10413 () Bool)

(assert (= b_and!10391 (and (=> t!6530 result!5985) b_and!10413)))

(assert (=> d!19704 t!6514))

(declare-fun b_and!10415 () Bool)

(assert (= b_and!10389 (and (=> t!6514 result!5969) b_and!10415)))

(assert (=> d!19704 t!6532))

(declare-fun b_and!10417 () Bool)

(assert (= b_and!10401 (and (=> t!6532 result!5987) b_and!10417)))

(assert (=> d!19704 t!6522))

(declare-fun b_and!10419 () Bool)

(assert (= b_and!10385 (and (=> t!6522 result!5977) b_and!10419)))

(assert (=> d!19704 t!6524))

(declare-fun b_and!10421 () Bool)

(assert (= b_and!10399 (and (=> t!6524 result!5979) b_and!10421)))

(assert (=> d!19704 t!6528))

(declare-fun b_and!10423 () Bool)

(assert (= b_and!10393 (and (=> t!6528 result!5983) b_and!10423)))

(declare-fun b_lambda!10263 () Bool)

(assert (=> (not b_lambda!10263) (not d!19704)))

(declare-fun t!6654 () Bool)

(declare-fun tb!5833 () Bool)

(assert (=> (and b!38817 (= (y!1390 x$104!2) (y!1391 thiss!6256)) t!6654) tb!5833))

(declare-fun result!6109 () Bool)

(assert (=> tb!5833 (= result!6109 true)))

(assert (=> d!19704 t!6654))

(declare-fun b_and!10425 () Bool)

(assert (= b_and!10417 (and (=> t!6654 result!6109) b_and!10425)))

(declare-fun t!6656 () Bool)

(declare-fun tb!5835 () Bool)

(assert (=> (and b!38817 (= (x!13491 x$104!2) (y!1391 thiss!6256)) t!6656) tb!5835))

(declare-fun result!6111 () Bool)

(assert (=> tb!5835 (= result!6111 true)))

(assert (=> d!19704 t!6656))

(declare-fun b_and!10427 () Bool)

(assert (= b_and!10413 (and (=> t!6656 result!6111) b_and!10427)))

(declare-fun tb!5837 () Bool)

(declare-fun t!6658 () Bool)

(assert (=> (and b!38816 (= (x!13491 x$103!3) (y!1391 thiss!6256)) t!6658) tb!5837))

(declare-fun result!6113 () Bool)

(assert (=> tb!5837 (= result!6113 true)))

(assert (=> d!19704 t!6658))

(declare-fun b_and!10429 () Bool)

(assert (= b_and!10405 (and (=> t!6658 result!6113) b_and!10429)))

(declare-fun t!6660 () Bool)

(declare-fun tb!5839 () Bool)

(assert (=> (and b!38809 (= (x!13492 x$102!4) (y!1391 thiss!6256)) t!6660) tb!5839))

(declare-fun result!6115 () Bool)

(assert (=> tb!5839 (= result!6115 true)))

(assert (=> d!19704 t!6660))

(declare-fun b_and!10431 () Bool)

(assert (= b_and!10423 (and (=> t!6660 result!6115) b_and!10431)))

(declare-fun t!6662 () Bool)

(declare-fun tb!5841 () Bool)

(assert (=> (and b!38807 (= (x!13492 prev!738) (y!1391 thiss!6256)) t!6662) tb!5841))

(declare-fun result!6117 () Bool)

(assert (=> tb!5841 (= result!6117 true)))

(assert (=> d!19704 t!6662))

(declare-fun b_and!10433 () Bool)

(assert (= b_and!10407 (and (=> t!6662 result!6117) b_and!10433)))

(declare-fun t!6664 () Bool)

(declare-fun tb!5843 () Bool)

(assert (=> (and b!38816 (= (y!1390 x$103!3) (y!1391 thiss!6256)) t!6664) tb!5843))

(declare-fun result!6119 () Bool)

(assert (=> tb!5843 (= result!6119 true)))

(assert (=> d!19704 t!6664))

(declare-fun b_and!10435 () Bool)

(assert (= b_and!10409 (and (=> t!6664 result!6119) b_and!10435)))

(declare-fun tb!5845 () Bool)

(declare-fun t!6666 () Bool)

(assert (=> (and b!38809 (= (y!1391 x$102!4) (y!1391 thiss!6256)) t!6666) tb!5845))

(declare-fun result!6121 () Bool)

(assert (=> tb!5845 (= result!6121 true)))

(assert (=> d!19704 t!6666))

(declare-fun b_and!10437 () Bool)

(assert (= b_and!10419 (and (=> t!6666 result!6121) b_and!10437)))

(declare-fun t!6668 () Bool)

(declare-fun tb!5847 () Bool)

(assert (=> (and b!38812 (= (x!13492 thiss!6256) (y!1391 thiss!6256)) t!6668) tb!5847))

(declare-fun result!6123 () Bool)

(assert (=> tb!5847 (= result!6123 true)))

(assert (=> d!19704 t!6668))

(declare-fun b_and!10439 () Bool)

(assert (= b_and!10411 (and (=> t!6668 result!6123) b_and!10439)))

(declare-fun t!6670 () Bool)

(declare-fun tb!5849 () Bool)

(assert (=> (and b!38812 (= (y!1391 thiss!6256) (y!1391 thiss!6256)) t!6670) tb!5849))

(declare-fun result!6125 () Bool)

(assert (=> tb!5849 (= result!6125 true)))

(assert (=> d!19704 t!6670))

(declare-fun b_and!10441 () Bool)

(assert (= b_and!10415 (and (=> t!6670 result!6125) b_and!10441)))

(declare-fun tb!5851 () Bool)

(declare-fun t!6672 () Bool)

(assert (=> (and b!38807 (= (y!1391 prev!738) (y!1391 thiss!6256)) t!6672) tb!5851))

(declare-fun result!6127 () Bool)

(assert (=> tb!5851 (= result!6127 true)))

(assert (=> d!19704 t!6672))

(declare-fun b_and!10443 () Bool)

(assert (= b_and!10421 (and (=> t!6672 result!6127) b_and!10443)))

(assert (=> d!19704 m!40019))

(declare-fun m!40079 () Bool)

(assert (=> d!19704 m!40079))

(assert (=> start!5008 d!19704))

(declare-fun d!19706 () Bool)

(declare-fun c!8321 () Bool)

(declare-fun e!20029 () Bool)

(assert (=> d!19706 (= c!8321 e!20029)))

(declare-fun res!18553 () Bool)

(assert (=> d!19706 (=> (not res!18553) (not e!20029))))

(declare-fun isEven!1 (Nat!62) Bool)

(assert (=> d!19706 (= res!18553 (isEven!1 (Succ!43 (pair!0 n1!316 n2!332))))))

(declare-fun e!20028 () tuple2!202)

(assert (=> d!19706 (= (log2_and_remainder!0 (Succ!43 (pair!0 n1!316 n2!332))) e!20028)))

(declare-fun b!38861 () Bool)

(assert (=> b!38861 (= e!20029 (>!2 (Succ!43 (pair!0 n1!316 n2!332)) Zero!46))))

(declare-fun b!38859 () Bool)

(assert (=> b!38859 (= e!20028 (tuple2!203 (Succ!43 (_1!127 (log2_and_remainder!0 (/!2 (Succ!43 (pair!0 n1!316 n2!332)) (Succ!43 (Succ!43 Zero!46)))))) (_2!127 (log2_and_remainder!0 (/!2 (Succ!43 (pair!0 n1!316 n2!332)) (Succ!43 (Succ!43 Zero!46)))))))))

(declare-fun b!38860 () Bool)

(assert (=> b!38860 (= e!20028 (tuple2!203 Zero!46 (Succ!43 (pair!0 n1!316 n2!332))))))

(assert (= (and d!19706 res!18553) b!38861))

(assert (= (and d!19706 c!8321) b!38859))

(assert (= (and d!19706 (not c!8321)) b!38860))

(declare-fun m!40081 () Bool)

(assert (=> d!19706 m!40081))

(declare-fun m!40083 () Bool)

(assert (=> b!38861 m!40083))

(declare-fun m!40085 () Bool)

(assert (=> b!38859 m!40085))

(assert (=> b!38859 m!40085))

(declare-fun m!40087 () Bool)

(assert (=> b!38859 m!40087))

(assert (=> start!5008 d!19706))

(declare-fun d!19708 () Bool)

(assert (=> d!19708 (= (inv!700 prev!738) (= (dynLambda!699 (x!13492 prev!738)) (dynLambda!699 (y!1391 prev!738))))))

(declare-fun b_lambda!10265 () Bool)

(assert (=> (not b_lambda!10265) (not d!19708)))

(declare-fun tb!5853 () Bool)

(declare-fun t!6674 () Bool)

(assert (=> (and b!38817 (= (x!13491 x$104!2) (x!13492 prev!738)) t!6674) tb!5853))

(declare-fun result!6129 () Bool)

(assert (=> tb!5853 (= result!6129 true)))

(assert (=> d!19708 t!6674))

(declare-fun b_and!10445 () Bool)

(assert (= b_and!10427 (and (=> t!6674 result!6129) b_and!10445)))

(declare-fun tb!5855 () Bool)

(declare-fun t!6676 () Bool)

(assert (=> (and b!38816 (= (y!1390 x$103!3) (x!13492 prev!738)) t!6676) tb!5855))

(declare-fun result!6131 () Bool)

(assert (=> tb!5855 (= result!6131 true)))

(assert (=> d!19708 t!6676))

(declare-fun b_and!10447 () Bool)

(assert (= b_and!10435 (and (=> t!6676 result!6131) b_and!10447)))

(declare-fun t!6678 () Bool)

(declare-fun tb!5857 () Bool)

(assert (=> (and b!38807 (= (x!13492 prev!738) (x!13492 prev!738)) t!6678) tb!5857))

(declare-fun result!6133 () Bool)

(assert (=> tb!5857 (= result!6133 true)))

(assert (=> d!19708 t!6678))

(declare-fun b_and!10449 () Bool)

(assert (= b_and!10433 (and (=> t!6678 result!6133) b_and!10449)))

(declare-fun tb!5859 () Bool)

(declare-fun t!6680 () Bool)

(assert (=> (and b!38809 (= (x!13492 x$102!4) (x!13492 prev!738)) t!6680) tb!5859))

(declare-fun result!6135 () Bool)

(assert (=> tb!5859 (= result!6135 true)))

(assert (=> d!19708 t!6680))

(declare-fun b_and!10451 () Bool)

(assert (= b_and!10431 (and (=> t!6680 result!6135) b_and!10451)))

(declare-fun t!6682 () Bool)

(declare-fun tb!5861 () Bool)

(assert (=> (and b!38817 (= (y!1390 x$104!2) (x!13492 prev!738)) t!6682) tb!5861))

(declare-fun result!6137 () Bool)

(assert (=> tb!5861 (= result!6137 true)))

(assert (=> d!19708 t!6682))

(declare-fun b_and!10453 () Bool)

(assert (= b_and!10425 (and (=> t!6682 result!6137) b_and!10453)))

(declare-fun tb!5863 () Bool)

(declare-fun t!6684 () Bool)

(assert (=> (and b!38816 (= (x!13491 x$103!3) (x!13492 prev!738)) t!6684) tb!5863))

(declare-fun result!6139 () Bool)

(assert (=> tb!5863 (= result!6139 true)))

(assert (=> d!19708 t!6684))

(declare-fun b_and!10455 () Bool)

(assert (= b_and!10429 (and (=> t!6684 result!6139) b_and!10455)))

(declare-fun t!6686 () Bool)

(declare-fun tb!5865 () Bool)

(assert (=> (and b!38809 (= (y!1391 x$102!4) (x!13492 prev!738)) t!6686) tb!5865))

(declare-fun result!6141 () Bool)

(assert (=> tb!5865 (= result!6141 true)))

(assert (=> d!19708 t!6686))

(declare-fun b_and!10457 () Bool)

(assert (= b_and!10437 (and (=> t!6686 result!6141) b_and!10457)))

(declare-fun tb!5867 () Bool)

(declare-fun t!6688 () Bool)

(assert (=> (and b!38812 (= (x!13492 thiss!6256) (x!13492 prev!738)) t!6688) tb!5867))

(declare-fun result!6143 () Bool)

(assert (=> tb!5867 (= result!6143 true)))

(assert (=> d!19708 t!6688))

(declare-fun b_and!10459 () Bool)

(assert (= b_and!10439 (and (=> t!6688 result!6143) b_and!10459)))

(declare-fun t!6690 () Bool)

(declare-fun tb!5869 () Bool)

(assert (=> (and b!38812 (= (y!1391 thiss!6256) (x!13492 prev!738)) t!6690) tb!5869))

(declare-fun result!6145 () Bool)

(assert (=> tb!5869 (= result!6145 true)))

(assert (=> d!19708 t!6690))

(declare-fun b_and!10461 () Bool)

(assert (= b_and!10441 (and (=> t!6690 result!6145) b_and!10461)))

(declare-fun t!6692 () Bool)

(declare-fun tb!5871 () Bool)

(assert (=> (and b!38807 (= (y!1391 prev!738) (x!13492 prev!738)) t!6692) tb!5871))

(declare-fun result!6147 () Bool)

(assert (=> tb!5871 (= result!6147 true)))

(assert (=> d!19708 t!6692))

(declare-fun b_and!10463 () Bool)

(assert (= b_and!10443 (and (=> t!6692 result!6147) b_and!10463)))

(declare-fun b_lambda!10267 () Bool)

(assert (=> (not b_lambda!10267) (not d!19708)))

(assert (=> d!19708 t!6504))

(declare-fun b_and!10465 () Bool)

(assert (= b_and!10459 (and (=> t!6504 result!5959) b_and!10465)))

(assert (=> d!19708 t!6508))

(declare-fun b_and!10467 () Bool)

(assert (= b_and!10461 (and (=> t!6508 result!5963) b_and!10467)))

(assert (=> d!19708 t!6506))

(declare-fun b_and!10469 () Bool)

(assert (= b_and!10445 (and (=> t!6506 result!5961) b_and!10469)))

(assert (=> d!19708 t!6500))

(declare-fun b_and!10471 () Bool)

(assert (= b_and!10447 (and (=> t!6500 result!5955) b_and!10471)))

(assert (=> d!19708 t!6498))

(declare-fun b_and!10473 () Bool)

(assert (= b_and!10451 (and (=> t!6498 result!5953) b_and!10473)))

(assert (=> d!19708 t!6502))

(declare-fun b_and!10475 () Bool)

(assert (= b_and!10449 (and (=> t!6502 result!5957) b_and!10475)))

(assert (=> d!19708 t!6510))

(declare-fun b_and!10477 () Bool)

(assert (= b_and!10453 (and (=> t!6510 result!5965) b_and!10477)))

(assert (=> d!19708 t!6512))

(declare-fun b_and!10479 () Bool)

(assert (= b_and!10457 (and (=> t!6512 result!5967) b_and!10479)))

(assert (=> d!19708 t!6496))

(declare-fun b_and!10481 () Bool)

(assert (= b_and!10463 (and (=> t!6496 result!5951) b_and!10481)))

(assert (=> d!19708 t!6494))

(declare-fun b_and!10483 () Bool)

(assert (= b_and!10455 (and (=> t!6494 result!5949) b_and!10483)))

(declare-fun m!40089 () Bool)

(assert (=> d!19708 m!40089))

(assert (=> d!19708 m!40017))

(assert (=> start!5008 d!19708))

(declare-fun d!19710 () Bool)

(assert (=> d!19710 (= (log2_and_remainder!0 (Succ!43 (pair!0 n1!316 n2!332))) (tuple2!203 n1!316 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46))))))

(assert (=> d!19710 true))

(declare-fun x$97!12 () Unit!335)

(assert (=> d!19710 (= (project_1_inverse!0 n1!316 n2!332) x$97!12)))

(declare-fun bs!11977 () Bool)

(assert (= bs!11977 d!19710))

(assert (=> bs!11977 m!40011))

(assert (=> bs!11977 m!40007))

(assert (=> bs!11977 m!40029))

(assert (=> bs!11977 m!40029))

(assert (=> bs!11977 m!40027))

(assert (=> bs!11975 d!19710))

(declare-fun d!19712 () Bool)

(assert (=> d!19712 (= (keepEvidence!10 (dynLambda!700 (evidence!504 prev!738))) true)))

(assert (=> b!38806 d!19712))

(assert (=> bs!11966 d!19692))

(assert (=> bs!11966 d!19694))

(declare-fun b!38862 () Bool)

(declare-fun e!20031 () Bool)

(declare-fun lt!7565 () Nat!62)

(assert (=> b!38862 (= e!20031 (< (repr!0 lt!7565) (repr!0 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)))))))

(declare-fun d!19714 () Bool)

(declare-fun e!20030 () Bool)

(assert (=> d!19714 e!20030))

(declare-fun res!18556 () Bool)

(assert (=> d!19714 (=> (not res!18556) (not e!20030))))

(assert (=> d!19714 (= res!18556 (<= (repr!0 lt!7565) (repr!0 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)))))))

(declare-fun e!20032 () Nat!62)

(assert (=> d!19714 (= lt!7565 e!20032)))

(declare-fun c!8322 () Bool)

(assert (=> d!19714 (= c!8322 (<!2 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46))))))

(assert (=> d!19714 (>!2 (Succ!43 (Succ!43 Zero!46)) Zero!46)))

(assert (=> d!19714 (= (/!2 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46))) lt!7565)))

(declare-fun b!38863 () Bool)

(declare-fun res!18554 () Bool)

(assert (=> b!38863 (=> res!18554 e!20031)))

(assert (=> b!38863 (= res!18554 (not (>!2 (Succ!43 (Succ!43 Zero!46)) (Succ!43 Zero!46))))))

(declare-fun b!38864 () Bool)

(assert (=> b!38864 (= e!20030 e!20031)))

(declare-fun res!18555 () Bool)

(assert (=> b!38864 (=> res!18555 e!20031)))

(assert (=> b!38864 (= res!18555 (not (>!2 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) Zero!46)))))

(declare-fun b!38865 () Bool)

(assert (=> b!38865 (= e!20032 (Succ!43 (/!2 (-!4 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46))) (Succ!43 (Succ!43 Zero!46)))))))

(declare-fun b!38866 () Bool)

(assert (=> b!38866 (= e!20032 Zero!46)))

(assert (= (and d!19714 c!8322) b!38866))

(assert (= (and d!19714 (not c!8322)) b!38865))

(assert (= (and d!19714 res!18556) b!38864))

(assert (= (and b!38864 (not res!18555)) b!38863))

(assert (= (and b!38863 (not res!18554)) b!38862))

(assert (=> b!38865 m!40023))

(declare-fun m!40091 () Bool)

(assert (=> b!38865 m!40091))

(assert (=> b!38865 m!40091))

(declare-fun m!40093 () Bool)

(assert (=> b!38865 m!40093))

(assert (=> b!38863 m!40039))

(declare-fun m!40095 () Bool)

(assert (=> b!38862 m!40095))

(assert (=> b!38862 m!40023))

(declare-fun m!40097 () Bool)

(assert (=> b!38862 m!40097))

(assert (=> d!19714 m!40095))

(assert (=> d!19714 m!40023))

(assert (=> d!19714 m!40097))

(assert (=> d!19714 m!40023))

(declare-fun m!40099 () Bool)

(assert (=> d!19714 m!40099))

(assert (=> d!19714 m!40047))

(assert (=> b!38864 m!40023))

(declare-fun m!40101 () Bool)

(assert (=> b!38864 m!40101))

(assert (=> bs!11971 d!19714))

(declare-fun b!38867 () Bool)

(declare-fun e!20035 () Bool)

(declare-fun lt!7566 () Nat!62)

(assert (=> b!38867 (= e!20035 (< (repr!0 lt!7566) (repr!0 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)))))))

(declare-fun b!38868 () Bool)

(declare-fun e!20034 () Nat!62)

(assert (=> b!38868 (= e!20034 (-!4 (n!1135 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46))) (n!1135 (Succ!43 Zero!46))))))

(declare-fun b!38869 () Bool)

(declare-fun e!20033 () Bool)

(assert (=> b!38869 (= e!20033 e!20035)))

(declare-fun res!18557 () Bool)

(assert (=> b!38869 (=> res!18557 e!20035)))

(assert (=> b!38869 (= res!18557 (not (>!2 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) Zero!46)))))

(declare-fun b!38870 () Bool)

(declare-fun res!18559 () Bool)

(assert (=> b!38870 (=> res!18559 e!20035)))

(assert (=> b!38870 (= res!18559 (not (>!2 (Succ!43 Zero!46) Zero!46)))))

(declare-fun d!19716 () Bool)

(assert (=> d!19716 e!20033))

(declare-fun res!18558 () Bool)

(assert (=> d!19716 (=> (not res!18558) (not e!20033))))

(assert (=> d!19716 (= res!18558 (<= (repr!0 lt!7566) (repr!0 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)))))))

(assert (=> d!19716 (= lt!7566 e!20034)))

(declare-fun c!8323 () Bool)

(assert (=> d!19716 (= c!8323 (and (is-Succ!43 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46))) (is-Succ!43 (Succ!43 Zero!46))))))

(assert (=> d!19716 (= (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) lt!7566)))

(declare-fun b!38871 () Bool)

(assert (=> b!38871 (= e!20034 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)))))

(assert (= (and d!19716 c!8323) b!38868))

(assert (= (and d!19716 (not c!8323)) b!38871))

(assert (= (and d!19716 res!18558) b!38869))

(assert (= (and b!38869 (not res!18557)) b!38870))

(assert (= (and b!38870 (not res!18559)) b!38867))

(declare-fun m!40103 () Bool)

(assert (=> b!38868 m!40103))

(declare-fun m!40105 () Bool)

(assert (=> b!38867 m!40105))

(assert (=> b!38867 m!40027))

(declare-fun m!40107 () Bool)

(assert (=> b!38867 m!40107))

(assert (=> d!19716 m!40105))

(assert (=> d!19716 m!40027))

(assert (=> d!19716 m!40107))

(assert (=> b!38869 m!40027))

(declare-fun m!40109 () Bool)

(assert (=> b!38869 m!40109))

(assert (=> b!38870 m!40059))

(assert (=> bs!11971 d!19716))

(declare-fun d!19718 () Bool)

(declare-fun c!8326 () Bool)

(assert (=> d!19718 (= c!8326 (is-Zero!46 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332)))))

(declare-fun e!20038 () Nat!62)

(assert (=> d!19718 (= (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) e!20038)))

(declare-fun b!38876 () Bool)

(assert (=> b!38876 (= e!20038 (Succ!43 Zero!46))))

(declare-fun b!38877 () Bool)

(assert (=> b!38877 (= e!20038 (Succ!43 (+!5 (n!1135 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332)) (Succ!43 Zero!46))))))

(assert (= (and d!19718 c!8326) b!38876))

(assert (= (and d!19718 (not c!8326)) b!38877))

(declare-fun m!40111 () Bool)

(assert (=> b!38877 m!40111))

(assert (=> bs!11971 d!19718))

(declare-fun d!19720 () Bool)

(declare-fun c!8329 () Bool)

(assert (=> d!19720 (= c!8329 (is-Zero!46 (Succ!43 (Succ!43 Zero!46))))))

(declare-fun e!20041 () Nat!62)

(assert (=> d!19720 (= (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) e!20041)))

(declare-fun b!38882 () Bool)

(assert (=> b!38882 (= e!20041 Zero!46)))

(declare-fun b!38883 () Bool)

(assert (=> b!38883 (= e!20041 (+!5 (*!4 (n!1135 (Succ!43 (Succ!43 Zero!46))) n2!332) n2!332))))

(assert (= (and d!19720 c!8329) b!38882))

(assert (= (and d!19720 (not c!8329)) b!38883))

(declare-fun m!40113 () Bool)

(assert (=> b!38883 m!40113))

(assert (=> b!38883 m!40113))

(declare-fun m!40115 () Bool)

(assert (=> b!38883 m!40115))

(assert (=> bs!11971 d!19720))

(declare-fun d!19722 () Bool)

(assert (=> d!19722 (= (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332))))

(assert (=> d!19722 true))

(declare-fun x$58!72 () Unit!335)

(assert (=> d!19722 (= (additive_inverse!0 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) x$58!72)))

(declare-fun bs!11978 () Bool)

(assert (= bs!11978 d!19722))

(assert (=> bs!11978 m!40029))

(assert (=> bs!11978 m!40027))

(assert (=> bs!11978 m!40027))

(assert (=> bs!11978 m!40023))

(assert (=> bs!11974 d!19722))

(assert (=> bs!11974 d!19720))

(declare-fun d!19724 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!19724 (= trivial!1 true)))

(assert (=> b!38814 d!19724))

(assert (=> bs!11973 d!19692))

(assert (=> bs!11973 d!19694))

(assert (=> b!38805 d!19724))

(declare-fun d!19726 () Bool)

(assert (=> d!19726 (= (project!0 (pair!0 n1!316 n2!332)) (tuple2!203 (_1!127 (log2_and_remainder!0 (Succ!43 (pair!0 n1!316 n2!332)))) (/!2 (-!4 (_2!127 (log2_and_remainder!0 (Succ!43 (pair!0 n1!316 n2!332)))) (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(declare-fun bs!11979 () Bool)

(assert (= bs!11979 d!19726))

(assert (=> bs!11979 m!40007))

(declare-fun m!40117 () Bool)

(assert (=> bs!11979 m!40117))

(assert (=> bs!11979 m!40117))

(declare-fun m!40119 () Bool)

(assert (=> bs!11979 m!40119))

(assert (=> bs!11965 d!19726))

(assert (=> bs!11965 d!19696))

(assert (=> bs!11967 d!19714))

(assert (=> bs!11967 d!19716))

(assert (=> bs!11967 d!19718))

(assert (=> bs!11967 d!19720))

(assert (=> bs!11972 d!19726))

(assert (=> bs!11972 d!19696))

(declare-fun b_lambda!10269 () Bool)

(assert (= b_lambda!10261 (or (and b!38815 (= lambda!4644 (x!13492 thiss!6256))) (and b!38817 b_free!2925 (= (x!13491 x$104!2) (x!13492 thiss!6256))) (and b!38807 b_free!2913 (= (x!13492 prev!738) (x!13492 thiss!6256))) (and b!38805 (= lambda!4641 (x!13492 thiss!6256))) (and b!38804 (= lambda!4646 (x!13492 thiss!6256))) (and b!38804 (= lambda!4647 (x!13492 thiss!6256))) (and b!38814 (= lambda!4643 (x!13492 thiss!6256))) (and b!38809 b_free!2931 (= (x!13492 x$102!4) (x!13492 thiss!6256))) (and b!38816 b_free!2939 (= (y!1390 x$103!3) (x!13492 thiss!6256))) (and b!38812 b_free!2921 (= (y!1391 thiss!6256) (x!13492 thiss!6256))) (and b!38816 b_free!2937 (= (x!13491 x$103!3) (x!13492 thiss!6256))) (and b!38812 b_free!2919) (and b!38809 b_free!2933 (= (y!1391 x$102!4) (x!13492 thiss!6256))) (and b!38817 b_free!2927 (= (y!1390 x$104!2) (x!13492 thiss!6256))) (and b!38807 b_free!2915 (= (y!1391 prev!738) (x!13492 thiss!6256))) b_lambda!10269)))

(assert (=> (and b!38814 (= lambda!4643 (x!13492 thiss!6256)) d!19704) d!19678))

(assert (=> (and b!38804 (= lambda!4647 (x!13492 thiss!6256)) d!19704) d!19680))

(assert (=> (and b!38804 (= lambda!4646 (x!13492 thiss!6256)) d!19704) d!19682))

(assert (=> (and b!38805 (= lambda!4641 (x!13492 thiss!6256)) d!19704) d!19684))

(assert (=> (and b!38815 (= lambda!4644 (x!13492 thiss!6256)) d!19704) d!19686))

(declare-fun b_lambda!10271 () Bool)

(assert (= b_lambda!10257 (or (and b!38816 b_free!2937) (and b!38809 b_free!2933 (= (y!1391 x$102!4) (x!13491 x$103!3))) (and b!38805 (= lambda!4641 (x!13491 x$103!3))) (and b!38814 (= lambda!4643 (x!13491 x$103!3))) (and b!38812 b_free!2921 (= (y!1391 thiss!6256) (x!13491 x$103!3))) (and b!38812 b_free!2919 (= (x!13492 thiss!6256) (x!13491 x$103!3))) (and b!38807 b_free!2913 (= (x!13492 prev!738) (x!13491 x$103!3))) (and b!38809 b_free!2931 (= (x!13492 x$102!4) (x!13491 x$103!3))) (and b!38817 b_free!2927 (= (y!1390 x$104!2) (x!13491 x$103!3))) (and b!38815 (= lambda!4644 (x!13491 x$103!3))) (and b!38804 (= lambda!4647 (x!13491 x$103!3))) (and b!38816 b_free!2939 (= (y!1390 x$103!3) (x!13491 x$103!3))) (and b!38807 b_free!2915 (= (y!1391 prev!738) (x!13491 x$103!3))) (and b!38817 b_free!2925 (= (x!13491 x$104!2) (x!13491 x$103!3))) (and b!38804 (= lambda!4646 (x!13491 x$103!3))) b_lambda!10271)))

(declare-fun bs!11980 () Bool)

(declare-fun d!19728 () Bool)

(assert (= bs!11980 (and d!19728 b!38814)))

(assert (=> bs!11980 (= (dynLambda!699 lambda!4643) (tuple2!203 p1!72 p2!66))))

(assert (=> (and b!38814 (= lambda!4643 (x!13491 x$103!3)) d!19702) d!19728))

(declare-fun bs!11981 () Bool)

(declare-fun d!19730 () Bool)

(assert (= bs!11981 (and d!19730 b!38804)))

(assert (=> bs!11981 (= (dynLambda!699 lambda!4647) (tuple2!203 n1!316 n2!332))))

(assert (=> (and b!38804 (= lambda!4647 (x!13491 x$103!3)) d!19702) d!19730))

(declare-fun bs!11982 () Bool)

(declare-fun d!19732 () Bool)

(assert (= bs!11982 (and d!19732 b!38805)))

(assert (=> bs!11982 (= (dynLambda!699 lambda!4641) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11982 m!40011))

(assert (=> bs!11982 m!40011))

(assert (=> bs!11982 m!40021))

(assert (=> (and b!38805 (= lambda!4641 (x!13491 x$103!3)) d!19702) d!19732))

(declare-fun bs!11983 () Bool)

(declare-fun d!19734 () Bool)

(assert (= bs!11983 (and d!19734 b!38804)))

(assert (=> bs!11983 (= (dynLambda!699 lambda!4646) (tuple2!203 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!11983 m!40023))

(assert (=> bs!11983 m!40025))

(assert (=> bs!11983 m!40027))

(assert (=> bs!11983 m!40023))

(assert (=> bs!11983 m!40029))

(assert (=> bs!11983 m!40027))

(assert (=> bs!11983 m!40029))

(assert (=> (and b!38804 (= lambda!4646 (x!13491 x$103!3)) d!19702) d!19734))

(declare-fun bs!11984 () Bool)

(declare-fun d!19736 () Bool)

(assert (= bs!11984 (and d!19736 b!38815)))

(assert (=> bs!11984 (= (dynLambda!699 lambda!4644) (tuple2!203 p1!72 (/!2 (-!4 remainder!2 (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!11984 m!40013))

(assert (=> bs!11984 m!40013))

(assert (=> bs!11984 m!40015))

(assert (=> (and b!38815 (= lambda!4644 (x!13491 x$103!3)) d!19702) d!19736))

(declare-fun b_lambda!10273 () Bool)

(assert (= b_lambda!10255 (or (and b!38804 (= lambda!4646 (y!1391 x$102!4))) (and b!38812 b_free!2921 (= (y!1391 thiss!6256) (y!1391 x$102!4))) (and b!38807 b_free!2913 (= (x!13492 prev!738) (y!1391 x$102!4))) (and b!38805 (= lambda!4641 (y!1391 x$102!4))) (and b!38809 b_free!2933) (and b!38815 (= lambda!4644 (y!1391 x$102!4))) (and b!38809 b_free!2931 (= (x!13492 x$102!4) (y!1391 x$102!4))) (and b!38804 (= lambda!4647 (y!1391 x$102!4))) (and b!38816 b_free!2939 (= (y!1390 x$103!3) (y!1391 x$102!4))) (and b!38817 b_free!2927 (= (y!1390 x$104!2) (y!1391 x$102!4))) (and b!38814 (= lambda!4643 (y!1391 x$102!4))) (and b!38817 b_free!2925 (= (x!13491 x$104!2) (y!1391 x$102!4))) (and b!38807 b_free!2915 (= (y!1391 prev!738) (y!1391 x$102!4))) (and b!38816 b_free!2937 (= (x!13491 x$103!3) (y!1391 x$102!4))) (and b!38812 b_free!2919 (= (x!13492 thiss!6256) (y!1391 x$102!4))) b_lambda!10273)))

(declare-fun bs!11985 () Bool)

(declare-fun d!19738 () Bool)

(assert (= bs!11985 (and d!19738 b!38805)))

(assert (=> bs!11985 (= (dynLambda!699 lambda!4641) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11985 m!40011))

(assert (=> bs!11985 m!40011))

(assert (=> bs!11985 m!40021))

(assert (=> (and b!38805 (= lambda!4641 (y!1391 x$102!4)) d!19700) d!19738))

(declare-fun bs!11986 () Bool)

(declare-fun d!19740 () Bool)

(assert (= bs!11986 (and d!19740 b!38814)))

(assert (=> bs!11986 (= (dynLambda!699 lambda!4643) (tuple2!203 p1!72 p2!66))))

(assert (=> (and b!38814 (= lambda!4643 (y!1391 x$102!4)) d!19700) d!19740))

(declare-fun bs!11987 () Bool)

(declare-fun d!19742 () Bool)

(assert (= bs!11987 (and d!19742 b!38804)))

(assert (=> bs!11987 (= (dynLambda!699 lambda!4646) (tuple2!203 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!11987 m!40023))

(assert (=> bs!11987 m!40025))

(assert (=> bs!11987 m!40027))

(assert (=> bs!11987 m!40023))

(assert (=> bs!11987 m!40029))

(assert (=> bs!11987 m!40027))

(assert (=> bs!11987 m!40029))

(assert (=> (and b!38804 (= lambda!4646 (y!1391 x$102!4)) d!19700) d!19742))

(declare-fun bs!11988 () Bool)

(declare-fun d!19744 () Bool)

(assert (= bs!11988 (and d!19744 b!38815)))

(assert (=> bs!11988 (= (dynLambda!699 lambda!4644) (tuple2!203 p1!72 (/!2 (-!4 remainder!2 (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!11988 m!40013))

(assert (=> bs!11988 m!40013))

(assert (=> bs!11988 m!40015))

(assert (=> (and b!38815 (= lambda!4644 (y!1391 x$102!4)) d!19700) d!19744))

(declare-fun bs!11989 () Bool)

(declare-fun d!19746 () Bool)

(assert (= bs!11989 (and d!19746 b!38804)))

(assert (=> bs!11989 (= (dynLambda!699 lambda!4647) (tuple2!203 n1!316 n2!332))))

(assert (=> (and b!38804 (= lambda!4647 (y!1391 x$102!4)) d!19700) d!19746))

(declare-fun b_lambda!10275 () Bool)

(assert (= b_lambda!10251 (or (and b!38812 b_free!2919 (= (x!13492 thiss!6256) (y!1390 x$104!2))) (and b!38809 b_free!2933 (= (y!1391 x$102!4) (y!1390 x$104!2))) (and b!38812 b_free!2921 (= (y!1391 thiss!6256) (y!1390 x$104!2))) (and b!38817 b_free!2925 (= (x!13491 x$104!2) (y!1390 x$104!2))) (and b!38816 b_free!2937 (= (x!13491 x$103!3) (y!1390 x$104!2))) (and b!38815 (= lambda!4644 (y!1390 x$104!2))) (and b!38814 (= lambda!4643 (y!1390 x$104!2))) (and b!38804 (= lambda!4647 (y!1390 x$104!2))) (and b!38809 b_free!2931 (= (x!13492 x$102!4) (y!1390 x$104!2))) (and b!38807 b_free!2913 (= (x!13492 prev!738) (y!1390 x$104!2))) (and b!38807 b_free!2915 (= (y!1391 prev!738) (y!1390 x$104!2))) (and b!38804 (= lambda!4646 (y!1390 x$104!2))) (and b!38816 b_free!2939 (= (y!1390 x$103!3) (y!1390 x$104!2))) (and b!38805 (= lambda!4641 (y!1390 x$104!2))) (and b!38817 b_free!2927) b_lambda!10275)))

(declare-fun bs!11990 () Bool)

(declare-fun d!19748 () Bool)

(assert (= bs!11990 (and d!19748 b!38805)))

(assert (=> bs!11990 (= (dynLambda!699 lambda!4641) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11990 m!40011))

(assert (=> bs!11990 m!40011))

(assert (=> bs!11990 m!40021))

(assert (=> (and b!38805 (= lambda!4641 (y!1390 x$104!2)) d!19698) d!19748))

(declare-fun bs!11991 () Bool)

(declare-fun d!19750 () Bool)

(assert (= bs!11991 (and d!19750 b!38804)))

(assert (=> bs!11991 (= (dynLambda!699 lambda!4647) (tuple2!203 n1!316 n2!332))))

(assert (=> (and b!38804 (= lambda!4647 (y!1390 x$104!2)) d!19698) d!19750))

(declare-fun bs!11992 () Bool)

(declare-fun d!19752 () Bool)

(assert (= bs!11992 (and d!19752 b!38804)))

(assert (=> bs!11992 (= (dynLambda!699 lambda!4646) (tuple2!203 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!11992 m!40023))

(assert (=> bs!11992 m!40025))

(assert (=> bs!11992 m!40027))

(assert (=> bs!11992 m!40023))

(assert (=> bs!11992 m!40029))

(assert (=> bs!11992 m!40027))

(assert (=> bs!11992 m!40029))

(assert (=> (and b!38804 (= lambda!4646 (y!1390 x$104!2)) d!19698) d!19752))

(declare-fun bs!11993 () Bool)

(declare-fun d!19754 () Bool)

(assert (= bs!11993 (and d!19754 b!38814)))

(assert (=> bs!11993 (= (dynLambda!699 lambda!4643) (tuple2!203 p1!72 p2!66))))

(assert (=> (and b!38814 (= lambda!4643 (y!1390 x$104!2)) d!19698) d!19754))

(declare-fun bs!11994 () Bool)

(declare-fun d!19756 () Bool)

(assert (= bs!11994 (and d!19756 b!38815)))

(assert (=> bs!11994 (= (dynLambda!699 lambda!4644) (tuple2!203 p1!72 (/!2 (-!4 remainder!2 (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!11994 m!40013))

(assert (=> bs!11994 m!40013))

(assert (=> bs!11994 m!40015))

(assert (=> (and b!38815 (= lambda!4644 (y!1390 x$104!2)) d!19698) d!19756))

(declare-fun b_lambda!10277 () Bool)

(assert (= b_lambda!10253 (or (and b!38805 (= lambda!4641 (x!13492 x$102!4))) (and b!38812 b_free!2919 (= (x!13492 thiss!6256) (x!13492 x$102!4))) (and b!38804 (= lambda!4647 (x!13492 x$102!4))) (and b!38809 b_free!2931) (and b!38816 b_free!2937 (= (x!13491 x$103!3) (x!13492 x$102!4))) (and b!38804 (= lambda!4646 (x!13492 x$102!4))) (and b!38814 (= lambda!4643 (x!13492 x$102!4))) (and b!38809 b_free!2933 (= (y!1391 x$102!4) (x!13492 x$102!4))) (and b!38817 b_free!2925 (= (x!13491 x$104!2) (x!13492 x$102!4))) (and b!38815 (= lambda!4644 (x!13492 x$102!4))) (and b!38807 b_free!2913 (= (x!13492 prev!738) (x!13492 x$102!4))) (and b!38816 b_free!2939 (= (y!1390 x$103!3) (x!13492 x$102!4))) (and b!38812 b_free!2921 (= (y!1391 thiss!6256) (x!13492 x$102!4))) (and b!38817 b_free!2927 (= (y!1390 x$104!2) (x!13492 x$102!4))) (and b!38807 b_free!2915 (= (y!1391 prev!738) (x!13492 x$102!4))) b_lambda!10277)))

(declare-fun bs!11995 () Bool)

(declare-fun d!19758 () Bool)

(assert (= bs!11995 (and d!19758 b!38814)))

(assert (=> bs!11995 (= (dynLambda!699 lambda!4643) (tuple2!203 p1!72 p2!66))))

(assert (=> (and b!38814 (= lambda!4643 (x!13492 x$102!4)) d!19700) d!19758))

(declare-fun bs!11996 () Bool)

(declare-fun d!19760 () Bool)

(assert (= bs!11996 (and d!19760 b!38805)))

(assert (=> bs!11996 (= (dynLambda!699 lambda!4641) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11996 m!40011))

(assert (=> bs!11996 m!40011))

(assert (=> bs!11996 m!40021))

(assert (=> (and b!38805 (= lambda!4641 (x!13492 x$102!4)) d!19700) d!19760))

(declare-fun bs!11997 () Bool)

(declare-fun d!19762 () Bool)

(assert (= bs!11997 (and d!19762 b!38815)))

(assert (=> bs!11997 (= (dynLambda!699 lambda!4644) (tuple2!203 p1!72 (/!2 (-!4 remainder!2 (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!11997 m!40013))

(assert (=> bs!11997 m!40013))

(assert (=> bs!11997 m!40015))

(assert (=> (and b!38815 (= lambda!4644 (x!13492 x$102!4)) d!19700) d!19762))

(declare-fun bs!11998 () Bool)

(declare-fun d!19764 () Bool)

(assert (= bs!11998 (and d!19764 b!38804)))

(assert (=> bs!11998 (= (dynLambda!699 lambda!4646) (tuple2!203 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!11998 m!40023))

(assert (=> bs!11998 m!40025))

(assert (=> bs!11998 m!40027))

(assert (=> bs!11998 m!40023))

(assert (=> bs!11998 m!40029))

(assert (=> bs!11998 m!40027))

(assert (=> bs!11998 m!40029))

(assert (=> (and b!38804 (= lambda!4646 (x!13492 x$102!4)) d!19700) d!19764))

(declare-fun bs!11999 () Bool)

(declare-fun d!19766 () Bool)

(assert (= bs!11999 (and d!19766 b!38804)))

(assert (=> bs!11999 (= (dynLambda!699 lambda!4647) (tuple2!203 n1!316 n2!332))))

(assert (=> (and b!38804 (= lambda!4647 (x!13492 x$102!4)) d!19700) d!19766))

(declare-fun b_lambda!10279 () Bool)

(assert (= b_lambda!10263 (or (and b!38816 b_free!2939 (= (y!1390 x$103!3) (y!1391 thiss!6256))) (and b!38804 (= lambda!4647 (y!1391 thiss!6256))) (and b!38809 b_free!2931 (= (x!13492 x$102!4) (y!1391 thiss!6256))) (and b!38814 (= lambda!4643 (y!1391 thiss!6256))) (and b!38809 b_free!2933 (= (y!1391 x$102!4) (y!1391 thiss!6256))) (and b!38817 b_free!2925 (= (x!13491 x$104!2) (y!1391 thiss!6256))) (and b!38812 b_free!2919 (= (x!13492 thiss!6256) (y!1391 thiss!6256))) (and b!38807 b_free!2913 (= (x!13492 prev!738) (y!1391 thiss!6256))) (and b!38817 b_free!2927 (= (y!1390 x$104!2) (y!1391 thiss!6256))) (and b!38805 (= lambda!4641 (y!1391 thiss!6256))) (and b!38812 b_free!2921) (and b!38807 b_free!2915 (= (y!1391 prev!738) (y!1391 thiss!6256))) (and b!38815 (= lambda!4644 (y!1391 thiss!6256))) (and b!38804 (= lambda!4646 (y!1391 thiss!6256))) (and b!38816 b_free!2937 (= (x!13491 x$103!3) (y!1391 thiss!6256))) b_lambda!10279)))

(declare-fun bs!12000 () Bool)

(declare-fun d!19768 () Bool)

(assert (= bs!12000 (and d!19768 b!38804)))

(assert (=> bs!12000 (= (dynLambda!699 lambda!4646) (tuple2!203 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!12000 m!40023))

(assert (=> bs!12000 m!40025))

(assert (=> bs!12000 m!40027))

(assert (=> bs!12000 m!40023))

(assert (=> bs!12000 m!40029))

(assert (=> bs!12000 m!40027))

(assert (=> bs!12000 m!40029))

(assert (=> (and b!38804 (= lambda!4646 (y!1391 thiss!6256)) d!19704) d!19768))

(declare-fun bs!12001 () Bool)

(declare-fun d!19770 () Bool)

(assert (= bs!12001 (and d!19770 b!38815)))

(assert (=> bs!12001 (= (dynLambda!699 lambda!4644) (tuple2!203 p1!72 (/!2 (-!4 remainder!2 (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!12001 m!40013))

(assert (=> bs!12001 m!40013))

(assert (=> bs!12001 m!40015))

(assert (=> (and b!38815 (= lambda!4644 (y!1391 thiss!6256)) d!19704) d!19770))

(declare-fun bs!12002 () Bool)

(declare-fun d!19772 () Bool)

(assert (= bs!12002 (and d!19772 b!38805)))

(assert (=> bs!12002 (= (dynLambda!699 lambda!4641) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!12002 m!40011))

(assert (=> bs!12002 m!40011))

(assert (=> bs!12002 m!40021))

(assert (=> (and b!38805 (= lambda!4641 (y!1391 thiss!6256)) d!19704) d!19772))

(declare-fun bs!12003 () Bool)

(declare-fun d!19774 () Bool)

(assert (= bs!12003 (and d!19774 b!38814)))

(assert (=> bs!12003 (= (dynLambda!699 lambda!4643) (tuple2!203 p1!72 p2!66))))

(assert (=> (and b!38814 (= lambda!4643 (y!1391 thiss!6256)) d!19704) d!19774))

(declare-fun bs!12004 () Bool)

(declare-fun d!19776 () Bool)

(assert (= bs!12004 (and d!19776 b!38804)))

(assert (=> bs!12004 (= (dynLambda!699 lambda!4647) (tuple2!203 n1!316 n2!332))))

(assert (=> (and b!38804 (= lambda!4647 (y!1391 thiss!6256)) d!19704) d!19776))

(declare-fun b_lambda!10281 () Bool)

(assert (= b_lambda!10259 (or (and b!38804 (= lambda!4647 (y!1390 x$103!3))) (and b!38805 (= lambda!4641 (y!1390 x$103!3))) (and b!38816 b_free!2937 (= (x!13491 x$103!3) (y!1390 x$103!3))) (and b!38807 b_free!2915 (= (y!1391 prev!738) (y!1390 x$103!3))) (and b!38815 (= lambda!4644 (y!1390 x$103!3))) (and b!38804 (= lambda!4646 (y!1390 x$103!3))) (and b!38817 b_free!2927 (= (y!1390 x$104!2) (y!1390 x$103!3))) (and b!38812 b_free!2919 (= (x!13492 thiss!6256) (y!1390 x$103!3))) (and b!38817 b_free!2925 (= (x!13491 x$104!2) (y!1390 x$103!3))) (and b!38812 b_free!2921 (= (y!1391 thiss!6256) (y!1390 x$103!3))) (and b!38809 b_free!2933 (= (y!1391 x$102!4) (y!1390 x$103!3))) (and b!38809 b_free!2931 (= (x!13492 x$102!4) (y!1390 x$103!3))) (and b!38814 (= lambda!4643 (y!1390 x$103!3))) (and b!38807 b_free!2913 (= (x!13492 prev!738) (y!1390 x$103!3))) (and b!38816 b_free!2939) b_lambda!10281)))

(declare-fun bs!12005 () Bool)

(declare-fun d!19778 () Bool)

(assert (= bs!12005 (and d!19778 b!38804)))

(assert (=> bs!12005 (= (dynLambda!699 lambda!4646) (tuple2!203 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!12005 m!40023))

(assert (=> bs!12005 m!40025))

(assert (=> bs!12005 m!40027))

(assert (=> bs!12005 m!40023))

(assert (=> bs!12005 m!40029))

(assert (=> bs!12005 m!40027))

(assert (=> bs!12005 m!40029))

(assert (=> (and b!38804 (= lambda!4646 (y!1390 x$103!3)) d!19702) d!19778))

(declare-fun bs!12006 () Bool)

(declare-fun d!19780 () Bool)

(assert (= bs!12006 (and d!19780 b!38814)))

(assert (=> bs!12006 (= (dynLambda!699 lambda!4643) (tuple2!203 p1!72 p2!66))))

(assert (=> (and b!38814 (= lambda!4643 (y!1390 x$103!3)) d!19702) d!19780))

(declare-fun bs!12007 () Bool)

(declare-fun d!19782 () Bool)

(assert (= bs!12007 (and d!19782 b!38815)))

(assert (=> bs!12007 (= (dynLambda!699 lambda!4644) (tuple2!203 p1!72 (/!2 (-!4 remainder!2 (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!12007 m!40013))

(assert (=> bs!12007 m!40013))

(assert (=> bs!12007 m!40015))

(assert (=> (and b!38815 (= lambda!4644 (y!1390 x$103!3)) d!19702) d!19782))

(declare-fun bs!12008 () Bool)

(declare-fun d!19784 () Bool)

(assert (= bs!12008 (and d!19784 b!38805)))

(assert (=> bs!12008 (= (dynLambda!699 lambda!4641) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!12008 m!40011))

(assert (=> bs!12008 m!40011))

(assert (=> bs!12008 m!40021))

(assert (=> (and b!38805 (= lambda!4641 (y!1390 x$103!3)) d!19702) d!19784))

(declare-fun bs!12009 () Bool)

(declare-fun d!19786 () Bool)

(assert (= bs!12009 (and d!19786 b!38804)))

(assert (=> bs!12009 (= (dynLambda!699 lambda!4647) (tuple2!203 n1!316 n2!332))))

(assert (=> (and b!38804 (= lambda!4647 (y!1390 x$103!3)) d!19702) d!19786))

(declare-fun b_lambda!10283 () Bool)

(assert (= b_lambda!10249 (or (and b!38807 b_free!2913 (= (x!13492 prev!738) (x!13491 x$104!2))) (and b!38814 (= lambda!4643 (x!13491 x$104!2))) (and b!38817 b_free!2925) (and b!38804 (= lambda!4647 (x!13491 x$104!2))) (and b!38809 b_free!2933 (= (y!1391 x$102!4) (x!13491 x$104!2))) (and b!38805 (= lambda!4641 (x!13491 x$104!2))) (and b!38812 b_free!2919 (= (x!13492 thiss!6256) (x!13491 x$104!2))) (and b!38809 b_free!2931 (= (x!13492 x$102!4) (x!13491 x$104!2))) (and b!38817 b_free!2927 (= (y!1390 x$104!2) (x!13491 x$104!2))) (and b!38812 b_free!2921 (= (y!1391 thiss!6256) (x!13491 x$104!2))) (and b!38816 b_free!2939 (= (y!1390 x$103!3) (x!13491 x$104!2))) (and b!38816 b_free!2937 (= (x!13491 x$103!3) (x!13491 x$104!2))) (and b!38807 b_free!2915 (= (y!1391 prev!738) (x!13491 x$104!2))) (and b!38804 (= lambda!4646 (x!13491 x$104!2))) (and b!38815 (= lambda!4644 (x!13491 x$104!2))) b_lambda!10283)))

(declare-fun bs!12010 () Bool)

(declare-fun d!19788 () Bool)

(assert (= bs!12010 (and d!19788 b!38804)))

(assert (=> bs!12010 (= (dynLambda!699 lambda!4647) (tuple2!203 n1!316 n2!332))))

(assert (=> (and b!38804 (= lambda!4647 (x!13491 x$104!2)) d!19698) d!19788))

(declare-fun bs!12011 () Bool)

(declare-fun d!19790 () Bool)

(assert (= bs!12011 (and d!19790 b!38804)))

(assert (=> bs!12011 (= (dynLambda!699 lambda!4646) (tuple2!203 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!12011 m!40023))

(assert (=> bs!12011 m!40025))

(assert (=> bs!12011 m!40027))

(assert (=> bs!12011 m!40023))

(assert (=> bs!12011 m!40029))

(assert (=> bs!12011 m!40027))

(assert (=> bs!12011 m!40029))

(assert (=> (and b!38804 (= lambda!4646 (x!13491 x$104!2)) d!19698) d!19790))

(declare-fun bs!12012 () Bool)

(declare-fun d!19792 () Bool)

(assert (= bs!12012 (and d!19792 b!38814)))

(assert (=> bs!12012 (= (dynLambda!699 lambda!4643) (tuple2!203 p1!72 p2!66))))

(assert (=> (and b!38814 (= lambda!4643 (x!13491 x$104!2)) d!19698) d!19792))

(declare-fun bs!12013 () Bool)

(declare-fun d!19794 () Bool)

(assert (= bs!12013 (and d!19794 b!38805)))

(assert (=> bs!12013 (= (dynLambda!699 lambda!4641) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!12013 m!40011))

(assert (=> bs!12013 m!40011))

(assert (=> bs!12013 m!40021))

(assert (=> (and b!38805 (= lambda!4641 (x!13491 x$104!2)) d!19698) d!19794))

(declare-fun bs!12014 () Bool)

(declare-fun d!19796 () Bool)

(assert (= bs!12014 (and d!19796 b!38815)))

(assert (=> bs!12014 (= (dynLambda!699 lambda!4644) (tuple2!203 p1!72 (/!2 (-!4 remainder!2 (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!12014 m!40013))

(assert (=> bs!12014 m!40013))

(assert (=> bs!12014 m!40015))

(assert (=> (and b!38815 (= lambda!4644 (x!13491 x$104!2)) d!19698) d!19796))

(declare-fun b_lambda!10285 () Bool)

(assert (= b_lambda!10267 (or (and b!38805 (= lambda!4641 (y!1391 prev!738))) (and b!38812 b_free!2921 (= (y!1391 thiss!6256) (y!1391 prev!738))) (and b!38809 b_free!2931 (= (x!13492 x$102!4) (y!1391 prev!738))) (and b!38807 b_free!2915) (and b!38817 b_free!2925 (= (x!13491 x$104!2) (y!1391 prev!738))) (and b!38804 (= lambda!4646 (y!1391 prev!738))) (and b!38804 (= lambda!4647 (y!1391 prev!738))) (and b!38816 b_free!2937 (= (x!13491 x$103!3) (y!1391 prev!738))) (and b!38816 b_free!2939 (= (y!1390 x$103!3) (y!1391 prev!738))) (and b!38812 b_free!2919 (= (x!13492 thiss!6256) (y!1391 prev!738))) (and b!38814 (= lambda!4643 (y!1391 prev!738))) (and b!38815 (= lambda!4644 (y!1391 prev!738))) (and b!38817 b_free!2927 (= (y!1390 x$104!2) (y!1391 prev!738))) (and b!38807 b_free!2913 (= (x!13492 prev!738) (y!1391 prev!738))) (and b!38809 b_free!2933 (= (y!1391 x$102!4) (y!1391 prev!738))) b_lambda!10285)))

(assert (=> (and b!38804 (= lambda!4647 (y!1391 prev!738)) d!19708) d!19668))

(assert (=> (and b!38805 (= lambda!4641 (y!1391 prev!738)) d!19708) d!19670))

(assert (=> (and b!38815 (= lambda!4644 (y!1391 prev!738)) d!19708) d!19672))

(assert (=> (and b!38804 (= lambda!4646 (y!1391 prev!738)) d!19708) d!19674))

(assert (=> (and b!38814 (= lambda!4643 (y!1391 prev!738)) d!19708) d!19676))

(declare-fun b_lambda!10287 () Bool)

(assert (= b_lambda!10265 (or (and b!38817 b_free!2925 (= (x!13491 x$104!2) (x!13492 prev!738))) (and b!38807 b_free!2913) (and b!38814 (= lambda!4643 (x!13492 prev!738))) (and b!38812 b_free!2919 (= (x!13492 thiss!6256) (x!13492 prev!738))) (and b!38809 b_free!2933 (= (y!1391 x$102!4) (x!13492 prev!738))) (and b!38804 (= lambda!4647 (x!13492 prev!738))) (and b!38805 (= lambda!4641 (x!13492 prev!738))) (and b!38804 (= lambda!4646 (x!13492 prev!738))) (and b!38817 b_free!2927 (= (y!1390 x$104!2) (x!13492 prev!738))) (and b!38809 b_free!2931 (= (x!13492 x$102!4) (x!13492 prev!738))) (and b!38807 b_free!2915 (= (y!1391 prev!738) (x!13492 prev!738))) (and b!38816 b_free!2939 (= (y!1390 x$103!3) (x!13492 prev!738))) (and b!38816 b_free!2937 (= (x!13491 x$103!3) (x!13492 prev!738))) (and b!38815 (= lambda!4644 (x!13492 prev!738))) (and b!38812 b_free!2921 (= (y!1391 thiss!6256) (x!13492 prev!738))) b_lambda!10287)))

(declare-fun bs!12015 () Bool)

(declare-fun d!19798 () Bool)

(assert (= bs!12015 (and d!19798 b!38804)))

(assert (=> bs!12015 (= (dynLambda!699 lambda!4647) (tuple2!203 n1!316 n2!332))))

(assert (=> (and b!38804 (= lambda!4647 (x!13492 prev!738)) d!19708) d!19798))

(declare-fun bs!12016 () Bool)

(declare-fun d!19800 () Bool)

(assert (= bs!12016 (and d!19800 b!38804)))

(assert (=> bs!12016 (= (dynLambda!699 lambda!4646) (tuple2!203 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!43 (Succ!43 Zero!46)) n2!332) (Succ!43 Zero!46)) (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!12016 m!40023))

(assert (=> bs!12016 m!40025))

(assert (=> bs!12016 m!40027))

(assert (=> bs!12016 m!40023))

(assert (=> bs!12016 m!40029))

(assert (=> bs!12016 m!40027))

(assert (=> bs!12016 m!40029))

(assert (=> (and b!38804 (= lambda!4646 (x!13492 prev!738)) d!19708) d!19800))

(declare-fun bs!12017 () Bool)

(declare-fun d!19802 () Bool)

(assert (= bs!12017 (and d!19802 b!38814)))

(assert (=> bs!12017 (= (dynLambda!699 lambda!4643) (tuple2!203 p1!72 p2!66))))

(assert (=> (and b!38814 (= lambda!4643 (x!13492 prev!738)) d!19708) d!19802))

(declare-fun bs!12018 () Bool)

(declare-fun d!19804 () Bool)

(assert (= bs!12018 (and d!19804 b!38815)))

(assert (=> bs!12018 (= (dynLambda!699 lambda!4644) (tuple2!203 p1!72 (/!2 (-!4 remainder!2 (Succ!43 Zero!46)) (Succ!43 (Succ!43 Zero!46)))))))

(assert (=> bs!12018 m!40013))

(assert (=> bs!12018 m!40013))

(assert (=> bs!12018 m!40015))

(assert (=> (and b!38815 (= lambda!4644 (x!13492 prev!738)) d!19708) d!19804))

(declare-fun bs!12019 () Bool)

(declare-fun d!19806 () Bool)

(assert (= bs!12019 (and d!19806 b!38805)))

(assert (=> bs!12019 (= (dynLambda!699 lambda!4641) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!12019 m!40011))

(assert (=> bs!12019 m!40011))

(assert (=> bs!12019 m!40021))

(assert (=> (and b!38805 (= lambda!4641 (x!13492 prev!738)) d!19708) d!19806))

(push 1)

(assert (not bs!12013))

(assert (not b_next!7413))

(assert (not d!19694))

(assert b_and!10465)

(assert (not d!19726))

(assert (not bs!11982))

(assert (not b!38877))

(assert b_and!10243)

(assert (not b_next!7341))

(assert (not b_next!7433))

(assert b_and!10469)

(assert (not bs!11983))

(assert (not b!38863))

(assert (not b_next!7343))

(assert (not b_lambda!10243))

(assert (not b_lambda!10277))

(assert (not b_next!7425))

(assert (not b!38859))

(assert (not b!38833))

(assert (not b_lambda!10247))

(assert b_and!10473)

(assert (not d!19722))

(assert (not bs!11987))

(assert (not b_next!7415))

(assert (not bs!11990))

(assert b_and!10239)

(assert (not d!19696))

(assert (not b!38850))

(assert (not b!38870))

(assert (not bs!11988))

(assert (not b!38883))

(assert (not b!38861))

(assert b_and!10479)

(assert (not b_lambda!10269))

(assert (not d!19706))

(assert (not bs!12014))

(assert (not b!38849))

(assert (not bs!11997))

(assert (not b_next!7429))

(assert b_and!10237)

(assert b_and!10241)

(assert (not b_next!7427))

(assert (not bs!11998))

(assert (not b!38862))

(assert (not b!38832))

(assert (not d!19710))

(assert (not d!19714))

(assert (not d!19716))

(assert (not bs!12016))

(assert (not b_lambda!10281))

(assert (not b!38865))

(assert (not bs!12001))

(assert (not b!38864))

(assert (not b!38848))

(assert (not b_lambda!10283))

(assert b_and!10481)

(assert (not bs!12008))

(assert (not b_next!7423))

(assert b_and!10483)

(assert (not b_lambda!10285))

(assert (not bs!12000))

(assert b_and!10477)

(assert (not d!19692))

(assert (not b_lambda!10279))

(assert (not bs!11992))

(assert b_and!10225)

(assert (not bs!11985))

(assert (not bs!11994))

(assert b_and!10475)

(assert (not b_lambda!10287))

(assert (not b_lambda!10271))

(assert (not bs!12011))

(assert (not b_next!7417))

(assert (not bs!12019))

(assert (not b_next!7421))

(assert (not b_lambda!10273))

(assert (not bs!11996))

(assert (not b!38835))

(assert (not bs!12007))

(assert (not bs!11984))

(assert (not b_lambda!10245))

(assert (not b!38869))

(assert (not b_lambda!10275))

(assert (not b_next!7419))

(assert b_and!10471)

(assert (not b_next!7431))

(assert (not b!38868))

(assert (not b!38847))

(assert (not bs!12002))

(assert (not bs!12005))

(assert (not bs!12018))

(assert (not b!38834))

(assert (not b_next!7435))

(assert b_and!10467)

(assert (not b!38867))

(assert (not b_next!7411))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!7413))

(assert b_and!10465)

(assert b_and!10243)

(assert (not b_next!7341))

(assert (not b_next!7433))

(assert b_and!10469)

(assert (not b_next!7343))

(assert (not b_next!7425))

(assert b_and!10473)

(assert (not b_next!7415))

(assert b_and!10239)

(assert b_and!10479)

(assert (not b_next!7429))

(assert b_and!10237)

(assert b_and!10241)

(assert (not b_next!7427))

(assert b_and!10481)

(assert (not b_next!7423))

(assert b_and!10483)

(assert b_and!10477)

(assert b_and!10225)

(assert b_and!10475)

(assert (not b_next!7417))

(assert (not b_next!7421))

(assert (not b_next!7419))

(assert b_and!10471)

(assert (not b_next!7431))

(assert (not b_next!7435))

(assert b_and!10467)

(assert (not b_next!7411))

(check-sat)

(pop 1)


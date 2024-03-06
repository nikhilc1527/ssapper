; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5038 () Bool)

(assert start!5038)

(declare-fun b!38952 () Bool)

(declare-fun b_free!2991 () Bool)

(declare-fun b_next!7485 () Bool)

(assert (=> b!38952 (= b_free!2991 (not b_next!7485))))

(declare-fun tp!8572 () Bool)

(declare-fun b_and!10533 () Bool)

(assert (=> b!38952 (= tp!8572 b_and!10533)))

(declare-fun b_free!2993 () Bool)

(declare-fun b_next!7487 () Bool)

(assert (=> b!38952 (= b_free!2993 (not b_next!7487))))

(declare-fun tp!8569 () Bool)

(declare-fun b_and!10535 () Bool)

(assert (=> b!38952 (= tp!8569 b_and!10535)))

(declare-fun b_free!2995 () Bool)

(declare-fun b_next!7489 () Bool)

(assert (=> b!38952 (= b_free!2995 (not b_next!7489))))

(declare-fun tp!8564 () Bool)

(declare-fun b_and!10537 () Bool)

(assert (=> b!38952 (= tp!8564 b_and!10537)))

(declare-fun b!38953 () Bool)

(declare-fun b_free!2997 () Bool)

(declare-fun b_next!7491 () Bool)

(assert (=> b!38953 (= b_free!2997 (not b_next!7491))))

(declare-fun tp!8570 () Bool)

(declare-fun b_and!10539 () Bool)

(assert (=> b!38953 (= tp!8570 b_and!10539)))

(declare-fun b_free!2999 () Bool)

(declare-fun b_next!7493 () Bool)

(assert (=> b!38953 (= b_free!2999 (not b_next!7493))))

(declare-fun tp!8568 () Bool)

(declare-fun b_and!10541 () Bool)

(assert (=> b!38953 (= tp!8568 b_and!10541)))

(declare-fun b_free!3001 () Bool)

(declare-fun b_next!7495 () Bool)

(assert (=> b!38953 (= b_free!3001 (not b_next!7495))))

(declare-fun tp!8567 () Bool)

(declare-fun b_and!10543 () Bool)

(assert (=> b!38953 (= tp!8567 b_and!10543)))

(declare-fun b!38956 () Bool)

(declare-fun b_free!3003 () Bool)

(declare-fun b_next!7497 () Bool)

(assert (=> b!38956 (= b_free!3003 (not b_next!7497))))

(declare-fun tp!8566 () Bool)

(declare-fun b_and!10545 () Bool)

(assert (=> b!38956 (= tp!8566 b_and!10545)))

(declare-fun b_free!3005 () Bool)

(declare-fun b_next!7499 () Bool)

(assert (=> b!38956 (= b_free!3005 (not b_next!7499))))

(declare-fun tp!8575 () Bool)

(declare-fun b_and!10547 () Bool)

(assert (=> b!38956 (= tp!8575 b_and!10547)))

(declare-fun b_free!3007 () Bool)

(declare-fun b_next!7501 () Bool)

(assert (=> b!38956 (= b_free!3007 (not b_next!7501))))

(declare-fun tp!8574 () Bool)

(declare-fun b_and!10549 () Bool)

(assert (=> b!38956 (= tp!8574 b_and!10549)))

(declare-fun b!38959 () Bool)

(declare-fun b_free!3009 () Bool)

(declare-fun b_next!7503 () Bool)

(assert (=> b!38959 (= b_free!3009 (not b_next!7503))))

(declare-fun tp!8571 () Bool)

(declare-fun b_and!10551 () Bool)

(assert (=> b!38959 (= tp!8571 b_and!10551)))

(declare-fun b_free!3011 () Bool)

(declare-fun b_next!7505 () Bool)

(assert (=> b!38959 (= b_free!3011 (not b_next!7505))))

(declare-fun tp!8573 () Bool)

(declare-fun b_and!10553 () Bool)

(assert (=> b!38959 (= tp!8573 b_and!10553)))

(declare-fun b_free!3013 () Bool)

(declare-fun b_next!7507 () Bool)

(assert (=> b!38959 (= b_free!3013 (not b_next!7507))))

(declare-fun tp!8565 () Bool)

(declare-fun b_and!10555 () Bool)

(assert (=> b!38959 (= tp!8565 b_and!10555)))

(declare-fun b!38957 () Bool)

(assert (=> b!38957 true))

(assert (=> b!38957 true))

(declare-fun lambda!4667 () Int)

(declare-datatypes () ((Nat!65 (Zero!49) (Succ!46 (n!1140 Nat!65)))))

(declare-datatypes () ((tuple2!208 (tuple2!209 (_1!130 Nat!65) (_2!130 Nat!65)))))

(declare-datatypes () ((RAEqEvidence!114 (RAEqEvidence!115 (x!13517 Int) (y!1396 Int) (evidence!509 Int)))))

(declare-fun prev!739 () RAEqEvidence!114)

(declare-fun b_next!7509 () Bool)

(assert (=> b!38956 (= b_next!7497 (or (and b!38957 (= lambda!4667 (x!13517 prev!739))) b_next!7509))))

(declare-fun b_next!7511 () Bool)

(assert (=> b!38956 (= b_next!7499 (or (and b!38957 (= lambda!4667 (y!1396 prev!739))) b_next!7511))))

(declare-fun b_next!7513 () Bool)

(declare-fun x$104!2 () RAEqEvidence!114)

(assert (=> b!38959 (= b_next!7503 (or (and b!38957 (= lambda!4667 (x!13517 x$104!2))) b_next!7513))))

(declare-fun b_next!7515 () Bool)

(declare-fun x$103!3 () RAEqEvidence!114)

(assert (=> b!38952 (= b_next!7485 (or (and b!38957 (= lambda!4667 (x!13517 x$103!3))) b_next!7515))))

(declare-fun b_next!7517 () Bool)

(assert (=> b!38952 (= b_next!7487 (or (and b!38957 (= lambda!4667 (y!1396 x$103!3))) b_next!7517))))

(declare-datatypes () ((Unit!341 (Unit!342))))

(declare-datatypes () ((RAEqEvidence!116 (RAEqEvidence!117 (x!13518 Int) (y!1397 Int) (evidence!510 Int)))))

(declare-fun thiss!6214 () RAEqEvidence!116)

(declare-fun b_next!7519 () Bool)

(assert (=> b!38953 (= b_next!7491 (or (and b!38957 (= lambda!4667 (x!13518 thiss!6214))) b_next!7519))))

(declare-fun b_next!7521 () Bool)

(assert (=> b!38953 (= b_next!7493 (or (and b!38957 (= lambda!4667 (y!1397 thiss!6214))) b_next!7521))))

(declare-fun b_next!7523 () Bool)

(assert (=> b!38959 (= b_next!7505 (or (and b!38957 (= lambda!4667 (y!1396 x$104!2))) b_next!7523))))

(declare-fun m!40153 () Bool)

(assert (=> b!38957 m!40153))

(declare-fun lambda!4668 () Int)

(declare-fun dynLambda!701 (Int) Bool)

(assert (=> (and b!38952 b!38957 (= (dynLambda!701 lambda!4668) (dynLambda!701 (evidence!509 x$103!3)))) (= lambda!4668 (evidence!509 x$103!3))))

(assert (=> (and b!38956 b!38957 (= (dynLambda!701 lambda!4668) (dynLambda!701 (evidence!509 prev!739)))) (= lambda!4668 (evidence!509 prev!739))))

(assert (=> (and b!38959 b!38957 (= (dynLambda!701 lambda!4668) (dynLambda!701 (evidence!509 x$104!2)))) (= lambda!4668 (evidence!509 x$104!2))))

(declare-fun b_next!7525 () Bool)

(assert (=> b!38952 (= b_next!7489 (or (and b!38957 (= lambda!4668 (evidence!509 x$103!3))) b_next!7525))))

(declare-fun b_next!7527 () Bool)

(assert (=> b!38956 (= b_next!7501 (or (and b!38957 (= lambda!4668 (evidence!509 prev!739))) b_next!7527))))

(declare-fun b_next!7529 () Bool)

(assert (=> b!38959 (= b_next!7507 (or (and b!38957 (= lambda!4668 (evidence!509 x$104!2))) b_next!7529))))

(declare-fun bs!12023 () Bool)

(declare-fun b!38955 () Bool)

(assert (= bs!12023 (and b!38955 b!38957)))

(declare-fun lambda!4669 () Int)

(assert (=> bs!12023 (not (= lambda!4669 lambda!4667))))

(assert (=> b!38955 true))

(assert (=> b!38955 true))

(declare-fun dynLambda!702 (Int) tuple2!208)

(assert (=> (and b!38956 b!38955 (= (dynLambda!702 lambda!4669) (dynLambda!702 (x!13517 prev!739)))) (= lambda!4669 (x!13517 prev!739))))

(assert (=> (and b!38956 b!38955 (= (dynLambda!702 lambda!4669) (dynLambda!702 (y!1396 prev!739)))) (= lambda!4669 (y!1396 prev!739))))

(assert (=> (and b!38959 b!38955 (= (dynLambda!702 lambda!4669) (dynLambda!702 (x!13517 x$104!2)))) (= lambda!4669 (x!13517 x$104!2))))

(assert (=> (and b!38952 b!38955 (= (dynLambda!702 lambda!4669) (dynLambda!702 (x!13517 x$103!3)))) (= lambda!4669 (x!13517 x$103!3))))

(assert (=> (and b!38952 b!38955 (= (dynLambda!702 lambda!4669) (dynLambda!702 (y!1396 x$103!3)))) (= lambda!4669 (y!1396 x$103!3))))

(assert (=> (and b!38953 b!38955 (= (dynLambda!702 lambda!4669) (dynLambda!702 (x!13518 thiss!6214)))) (= lambda!4669 (x!13518 thiss!6214))))

(assert (=> (and b!38953 b!38955 (= (dynLambda!702 lambda!4669) (dynLambda!702 (y!1397 thiss!6214)))) (= lambda!4669 (y!1397 thiss!6214))))

(assert (=> (and b!38959 b!38955 (= (dynLambda!702 lambda!4669) (dynLambda!702 (y!1396 x$104!2)))) (= lambda!4669 (y!1396 x$104!2))))

(declare-fun b_next!7531 () Bool)

(assert (=> b!38956 (= b_next!7509 (or (and b!38955 (= lambda!4669 (x!13517 prev!739))) b_next!7531))))

(declare-fun b_next!7533 () Bool)

(assert (=> b!38956 (= b_next!7511 (or (and b!38955 (= lambda!4669 (y!1396 prev!739))) b_next!7533))))

(declare-fun b_next!7535 () Bool)

(assert (=> b!38959 (= b_next!7513 (or (and b!38955 (= lambda!4669 (x!13517 x$104!2))) b_next!7535))))

(declare-fun b_next!7537 () Bool)

(assert (=> b!38952 (= b_next!7515 (or (and b!38955 (= lambda!4669 (x!13517 x$103!3))) b_next!7537))))

(declare-fun b_next!7539 () Bool)

(assert (=> b!38952 (= b_next!7517 (or (and b!38955 (= lambda!4669 (y!1396 x$103!3))) b_next!7539))))

(declare-fun b_next!7541 () Bool)

(assert (=> b!38953 (= b_next!7519 (or (and b!38955 (= lambda!4669 (x!13518 thiss!6214))) b_next!7541))))

(declare-fun b_next!7543 () Bool)

(assert (=> b!38953 (= b_next!7521 (or (and b!38955 (= lambda!4669 (y!1397 thiss!6214))) b_next!7543))))

(declare-fun b_next!7545 () Bool)

(assert (=> b!38959 (= b_next!7523 (or (and b!38955 (= lambda!4669 (y!1396 x$104!2))) b_next!7545))))

(declare-fun bs!12024 () Bool)

(declare-fun b!38962 () Bool)

(assert (= bs!12024 (and b!38962 b!38957)))

(declare-fun lambda!4670 () Int)

(assert (=> bs!12024 (not (= lambda!4670 lambda!4667))))

(declare-fun bs!12025 () Bool)

(assert (= bs!12025 (and b!38962 b!38955)))

(assert (=> bs!12025 (not (= lambda!4670 lambda!4669))))

(assert (=> b!38962 true))

(assert (=> b!38962 true))

(declare-fun b_next!7547 () Bool)

(assert (=> b!38956 (= b_next!7531 (or (and b!38962 (= lambda!4670 (x!13517 prev!739))) b_next!7547))))

(declare-fun b_next!7549 () Bool)

(assert (=> b!38956 (= b_next!7533 (or (and b!38962 (= lambda!4670 (y!1396 prev!739))) b_next!7549))))

(declare-fun b_next!7551 () Bool)

(assert (=> b!38959 (= b_next!7535 (or (and b!38962 (= lambda!4670 (x!13517 x$104!2))) b_next!7551))))

(declare-fun b_next!7553 () Bool)

(assert (=> b!38952 (= b_next!7537 (or (and b!38962 (= lambda!4670 (x!13517 x$103!3))) b_next!7553))))

(declare-fun b_next!7555 () Bool)

(assert (=> b!38952 (= b_next!7539 (or (and b!38962 (= lambda!4670 (y!1396 x$103!3))) b_next!7555))))

(declare-fun b_next!7557 () Bool)

(assert (=> b!38953 (= b_next!7541 (or (and b!38962 (= lambda!4670 (x!13518 thiss!6214))) b_next!7557))))

(declare-fun b_next!7559 () Bool)

(assert (=> b!38953 (= b_next!7543 (or (and b!38962 (= lambda!4670 (y!1397 thiss!6214))) b_next!7559))))

(declare-fun b_next!7561 () Bool)

(assert (=> b!38959 (= b_next!7545 (or (and b!38962 (= lambda!4670 (y!1396 x$104!2))) b_next!7561))))

(declare-fun lambda!4671 () Int)

(assert (=> bs!12024 (not (= lambda!4671 lambda!4667))))

(declare-fun p2!66 () Nat!65)

(declare-fun n2!332 () Nat!65)

(declare-fun n1!316 () Nat!65)

(declare-fun p1!72 () Nat!65)

(assert (=> bs!12025 (= (= (tuple2!209 n1!316 n2!332) (tuple2!209 p1!72 p2!66)) (= lambda!4671 lambda!4669))))

(assert (=> b!38962 (not (= lambda!4671 lambda!4670))))

(assert (=> b!38962 true))

(assert (=> b!38962 true))

(assert (=> (and b!38956 b!38962 (= (dynLambda!702 lambda!4671) (dynLambda!702 (x!13517 prev!739)))) (= lambda!4671 (x!13517 prev!739))))

(assert (=> (and b!38956 b!38962 (= (dynLambda!702 lambda!4671) (dynLambda!702 (y!1396 prev!739)))) (= lambda!4671 (y!1396 prev!739))))

(assert (=> (and b!38959 b!38962 (= (dynLambda!702 lambda!4671) (dynLambda!702 (x!13517 x$104!2)))) (= lambda!4671 (x!13517 x$104!2))))

(assert (=> (and b!38952 b!38962 (= (dynLambda!702 lambda!4671) (dynLambda!702 (x!13517 x$103!3)))) (= lambda!4671 (x!13517 x$103!3))))

(assert (=> (and b!38952 b!38962 (= (dynLambda!702 lambda!4671) (dynLambda!702 (y!1396 x$103!3)))) (= lambda!4671 (y!1396 x$103!3))))

(assert (=> (and b!38953 b!38962 (= (dynLambda!702 lambda!4671) (dynLambda!702 (x!13518 thiss!6214)))) (= lambda!4671 (x!13518 thiss!6214))))

(assert (=> (and b!38953 b!38962 (= (dynLambda!702 lambda!4671) (dynLambda!702 (y!1397 thiss!6214)))) (= lambda!4671 (y!1397 thiss!6214))))

(assert (=> (and b!38959 b!38962 (= (dynLambda!702 lambda!4671) (dynLambda!702 (y!1396 x$104!2)))) (= lambda!4671 (y!1396 x$104!2))))

(declare-fun b_next!7563 () Bool)

(assert (=> b!38956 (= b_next!7547 (or (and b!38962 (= lambda!4671 (x!13517 prev!739))) b_next!7563))))

(declare-fun b_next!7565 () Bool)

(assert (=> b!38956 (= b_next!7549 (or (and b!38962 (= lambda!4671 (y!1396 prev!739))) b_next!7565))))

(declare-fun b_next!7567 () Bool)

(assert (=> b!38959 (= b_next!7551 (or (and b!38962 (= lambda!4671 (x!13517 x$104!2))) b_next!7567))))

(declare-fun b_next!7569 () Bool)

(assert (=> b!38952 (= b_next!7553 (or (and b!38962 (= lambda!4671 (x!13517 x$103!3))) b_next!7569))))

(declare-fun b_next!7571 () Bool)

(assert (=> b!38952 (= b_next!7555 (or (and b!38962 (= lambda!4671 (y!1396 x$103!3))) b_next!7571))))

(declare-fun b_next!7573 () Bool)

(assert (=> b!38953 (= b_next!7557 (or (and b!38962 (= lambda!4671 (x!13518 thiss!6214))) b_next!7573))))

(declare-fun b_next!7575 () Bool)

(assert (=> b!38953 (= b_next!7559 (or (and b!38962 (= lambda!4671 (y!1397 thiss!6214))) b_next!7575))))

(declare-fun b_next!7577 () Bool)

(assert (=> b!38959 (= b_next!7561 (or (and b!38962 (= lambda!4671 (y!1396 x$104!2))) b_next!7577))))

(assert (=> b!38962 true))

(assert (=> b!38962 true))

(declare-fun lambda!4672 () Int)

(declare-fun b_next!7579 () Bool)

(assert (=> b!38953 (= b_next!7495 (or (and b!38962 (= lambda!4672 (evidence!510 thiss!6214))) b_next!7579))))

(declare-fun b!38951 () Bool)

(declare-fun res!18599 () Bool)

(declare-fun e!20084 () Bool)

(assert (=> b!38951 (=> (not res!18599) (not e!20084))))

(declare-fun remainder!2 () Nat!65)

(declare-fun x$98!1 () tuple2!208)

(assert (=> b!38951 (= res!18599 (and (= p1!72 (_1!130 x$98!1)) (= remainder!2 (_2!130 x$98!1))))))

(declare-fun res!18601 () Bool)

(assert (=> start!5038 (=> (not res!18601) (not e!20084))))

(declare-fun log2_and_remainder!0 (Nat!65) tuple2!208)

(declare-fun pair!0 (Nat!65 Nat!65) Nat!65)

(assert (=> start!5038 (= res!18601 (= x$98!1 (tuple2!209 (_1!130 (log2_and_remainder!0 (Succ!46 (pair!0 n1!316 n2!332)))) (_2!130 (log2_and_remainder!0 (Succ!46 (pair!0 n1!316 n2!332)))))))))

(assert (=> start!5038 e!20084))

(assert (=> start!5038 true))

(declare-fun e!20082 () Bool)

(declare-fun inv!706 (RAEqEvidence!114) Bool)

(assert (=> start!5038 (and (inv!706 x$103!3) e!20082)))

(declare-fun e!20085 () Bool)

(declare-fun inv!707 (RAEqEvidence!116) Bool)

(assert (=> start!5038 (and (inv!707 thiss!6214) e!20085)))

(declare-fun e!20086 () Bool)

(assert (=> start!5038 (and (inv!706 prev!739) e!20086)))

(declare-fun e!20083 () Bool)

(assert (=> start!5038 (and (inv!706 x$104!2) e!20083)))

(assert (=> b!38952 (= e!20082 (and tp!8572 tp!8569 tp!8564))))

(assert (=> b!38953 (= e!20085 (and tp!8570 tp!8568 tp!8567))))

(declare-fun b!38954 () Bool)

(declare-fun res!18594 () Bool)

(assert (=> b!38954 (=> (not res!18594) (not e!20084))))

(assert (=> b!38954 (= res!18594 (= prev!739 x$103!3))))

(declare-fun res!18597 () Bool)

(assert (=> b!38955 (=> (not res!18597) (not e!20084))))

(assert (=> b!38955 (= res!18597 (= x$103!3 (RAEqEvidence!115 lambda!4669 lambda!4669 lambda!4668)))))

(assert (=> b!38956 (= e!20086 (and tp!8566 tp!8575 tp!8574))))

(declare-fun res!18595 () Bool)

(assert (=> b!38957 (=> (not res!18595) (not e!20084))))

(assert (=> b!38957 (= res!18595 (= x$104!2 (RAEqEvidence!115 lambda!4667 lambda!4667 lambda!4668)))))

(declare-fun b!38958 () Bool)

(declare-fun res!18596 () Bool)

(assert (=> b!38958 (=> (not res!18596) (not e!20084))))

(declare-fun /!2 (Nat!65 Nat!65) Nat!65)

(declare-fun -!4 (Nat!65 Nat!65) Nat!65)

(assert (=> b!38958 (= res!18596 (= p2!66 (/!2 (-!4 remainder!2 (Succ!46 Zero!49)) (Succ!46 (Succ!46 Zero!49)))))))

(assert (=> b!38959 (= e!20083 (and tp!8571 tp!8573 tp!8565))))

(declare-fun b!38960 () Bool)

(declare-fun res!18600 () Bool)

(assert (=> b!38960 (=> (not res!18600) (not e!20084))))

(declare-fun keepEvidence!11 (Bool) Bool)

(assert (=> b!38960 (= res!18600 (keepEvidence!11 (dynLambda!701 (evidence!509 prev!739))))))

(declare-fun b!38961 () Bool)

(assert (=> b!38961 (= e!20084 (not (= (dynLambda!702 (y!1396 prev!739)) (dynLambda!702 (x!13518 thiss!6214)))))))

(declare-fun res!18598 () Bool)

(assert (=> b!38962 (=> (not res!18598) (not e!20084))))

(assert (=> b!38962 (= res!18598 (= thiss!6214 (RAEqEvidence!117 lambda!4670 lambda!4671 lambda!4672)))))

(assert (= (and start!5038 res!18601) b!38951))

(assert (= (and b!38951 res!18599) b!38958))

(assert (= (and b!38958 res!18596) b!38957))

(assert (= (and b!38957 res!18595) b!38955))

(assert (= (and b!38955 res!18597) b!38962))

(assert (= (and b!38962 res!18598) b!38954))

(assert (= (and b!38954 res!18594) b!38960))

(assert (= (and b!38960 res!18600) b!38961))

(assert (= start!5038 b!38952))

(assert (= start!5038 b!38953))

(assert (= start!5038 b!38956))

(assert (= start!5038 b!38959))

(declare-fun b_lambda!10289 () Bool)

(assert (=> (not b_lambda!10289) (not b!38960)))

(declare-fun tb!5873 () Bool)

(declare-fun t!6694 () Bool)

(assert (=> (and b!38952 (= (evidence!509 x$103!3) (evidence!509 prev!739)) t!6694) tb!5873))

(declare-fun result!6149 () Bool)

(assert (=> tb!5873 (= result!6149 true)))

(assert (=> b!38960 t!6694))

(declare-fun b_and!10557 () Bool)

(assert (= b_and!10537 (and (=> t!6694 result!6149) b_and!10557)))

(declare-fun t!6696 () Bool)

(declare-fun tb!5875 () Bool)

(assert (=> (and b!38956 (= (evidence!509 prev!739) (evidence!509 prev!739)) t!6696) tb!5875))

(declare-fun result!6151 () Bool)

(assert (=> tb!5875 (= result!6151 true)))

(assert (=> b!38960 t!6696))

(declare-fun b_and!10559 () Bool)

(assert (= b_and!10549 (and (=> t!6696 result!6151) b_and!10559)))

(declare-fun t!6698 () Bool)

(declare-fun tb!5877 () Bool)

(assert (=> (and b!38959 (= (evidence!509 x$104!2) (evidence!509 prev!739)) t!6698) tb!5877))

(declare-fun result!6153 () Bool)

(assert (=> tb!5877 (= result!6153 true)))

(assert (=> b!38960 t!6698))

(declare-fun b_and!10561 () Bool)

(assert (= b_and!10555 (and (=> t!6698 result!6153) b_and!10561)))

(declare-fun b_lambda!10291 () Bool)

(assert (=> (not b_lambda!10291) (not b!38961)))

(declare-fun t!6700 () Bool)

(declare-fun tb!5879 () Bool)

(assert (=> (and b!38952 (= (x!13517 x$103!3) (y!1396 prev!739)) t!6700) tb!5879))

(declare-fun result!6155 () Bool)

(assert (=> tb!5879 (= result!6155 true)))

(assert (=> b!38961 t!6700))

(declare-fun b_and!10563 () Bool)

(assert (= b_and!10533 (and (=> t!6700 result!6155) b_and!10563)))

(declare-fun t!6702 () Bool)

(declare-fun tb!5881 () Bool)

(assert (=> (and b!38956 (= (x!13517 prev!739) (y!1396 prev!739)) t!6702) tb!5881))

(declare-fun result!6157 () Bool)

(assert (=> tb!5881 (= result!6157 true)))

(assert (=> b!38961 t!6702))

(declare-fun b_and!10565 () Bool)

(assert (= b_and!10545 (and (=> t!6702 result!6157) b_and!10565)))

(declare-fun tb!5883 () Bool)

(declare-fun t!6704 () Bool)

(assert (=> (and b!38959 (= (y!1396 x$104!2) (y!1396 prev!739)) t!6704) tb!5883))

(declare-fun result!6159 () Bool)

(assert (=> tb!5883 (= result!6159 true)))

(assert (=> b!38961 t!6704))

(declare-fun b_and!10567 () Bool)

(assert (= b_and!10553 (and (=> t!6704 result!6159) b_and!10567)))

(declare-fun t!6706 () Bool)

(declare-fun tb!5885 () Bool)

(assert (=> (and b!38959 (= (x!13517 x$104!2) (y!1396 prev!739)) t!6706) tb!5885))

(declare-fun result!6161 () Bool)

(assert (=> tb!5885 (= result!6161 true)))

(assert (=> b!38961 t!6706))

(declare-fun b_and!10569 () Bool)

(assert (= b_and!10551 (and (=> t!6706 result!6161) b_and!10569)))

(declare-fun t!6708 () Bool)

(declare-fun tb!5887 () Bool)

(assert (=> (and b!38956 (= (y!1396 prev!739) (y!1396 prev!739)) t!6708) tb!5887))

(declare-fun result!6163 () Bool)

(assert (=> tb!5887 (= result!6163 true)))

(assert (=> b!38961 t!6708))

(declare-fun b_and!10571 () Bool)

(assert (= b_and!10547 (and (=> t!6708 result!6163) b_and!10571)))

(declare-fun t!6710 () Bool)

(declare-fun tb!5889 () Bool)

(assert (=> (and b!38953 (= (x!13518 thiss!6214) (y!1396 prev!739)) t!6710) tb!5889))

(declare-fun result!6165 () Bool)

(assert (=> tb!5889 (= result!6165 true)))

(assert (=> b!38961 t!6710))

(declare-fun b_and!10573 () Bool)

(assert (= b_and!10539 (and (=> t!6710 result!6165) b_and!10573)))

(declare-fun tb!5891 () Bool)

(declare-fun t!6712 () Bool)

(assert (=> (and b!38952 (= (y!1396 x$103!3) (y!1396 prev!739)) t!6712) tb!5891))

(declare-fun result!6167 () Bool)

(assert (=> tb!5891 (= result!6167 true)))

(assert (=> b!38961 t!6712))

(declare-fun b_and!10575 () Bool)

(assert (= b_and!10535 (and (=> t!6712 result!6167) b_and!10575)))

(declare-fun t!6714 () Bool)

(declare-fun tb!5893 () Bool)

(assert (=> (and b!38953 (= (y!1397 thiss!6214) (y!1396 prev!739)) t!6714) tb!5893))

(declare-fun result!6169 () Bool)

(assert (=> tb!5893 (= result!6169 true)))

(assert (=> b!38961 t!6714))

(declare-fun b_and!10577 () Bool)

(assert (= b_and!10541 (and (=> t!6714 result!6169) b_and!10577)))

(declare-fun b_lambda!10293 () Bool)

(assert (=> (not b_lambda!10293) (not b!38961)))

(declare-fun t!6716 () Bool)

(declare-fun tb!5895 () Bool)

(assert (=> (and b!38953 (= (y!1397 thiss!6214) (x!13518 thiss!6214)) t!6716) tb!5895))

(declare-fun result!6171 () Bool)

(assert (=> tb!5895 (= result!6171 true)))

(assert (=> b!38961 t!6716))

(declare-fun b_and!10579 () Bool)

(assert (= b_and!10577 (and (=> t!6716 result!6171) b_and!10579)))

(declare-fun tb!5897 () Bool)

(declare-fun t!6718 () Bool)

(assert (=> (and b!38956 (= (y!1396 prev!739) (x!13518 thiss!6214)) t!6718) tb!5897))

(declare-fun result!6173 () Bool)

(assert (=> tb!5897 (= result!6173 true)))

(assert (=> b!38961 t!6718))

(declare-fun b_and!10581 () Bool)

(assert (= b_and!10571 (and (=> t!6718 result!6173) b_and!10581)))

(declare-fun t!6720 () Bool)

(declare-fun tb!5899 () Bool)

(assert (=> (and b!38952 (= (x!13517 x$103!3) (x!13518 thiss!6214)) t!6720) tb!5899))

(declare-fun result!6175 () Bool)

(assert (=> tb!5899 (= result!6175 true)))

(assert (=> b!38961 t!6720))

(declare-fun b_and!10583 () Bool)

(assert (= b_and!10563 (and (=> t!6720 result!6175) b_and!10583)))

(declare-fun t!6722 () Bool)

(declare-fun tb!5901 () Bool)

(assert (=> (and b!38953 (= (x!13518 thiss!6214) (x!13518 thiss!6214)) t!6722) tb!5901))

(declare-fun result!6177 () Bool)

(assert (=> tb!5901 (= result!6177 true)))

(assert (=> b!38961 t!6722))

(declare-fun b_and!10585 () Bool)

(assert (= b_and!10573 (and (=> t!6722 result!6177) b_and!10585)))

(declare-fun tb!5903 () Bool)

(declare-fun t!6724 () Bool)

(assert (=> (and b!38959 (= (y!1396 x$104!2) (x!13518 thiss!6214)) t!6724) tb!5903))

(declare-fun result!6179 () Bool)

(assert (=> tb!5903 (= result!6179 true)))

(assert (=> b!38961 t!6724))

(declare-fun b_and!10587 () Bool)

(assert (= b_and!10567 (and (=> t!6724 result!6179) b_and!10587)))

(declare-fun tb!5905 () Bool)

(declare-fun t!6726 () Bool)

(assert (=> (and b!38952 (= (y!1396 x$103!3) (x!13518 thiss!6214)) t!6726) tb!5905))

(declare-fun result!6181 () Bool)

(assert (=> tb!5905 (= result!6181 true)))

(assert (=> b!38961 t!6726))

(declare-fun b_and!10589 () Bool)

(assert (= b_and!10575 (and (=> t!6726 result!6181) b_and!10589)))

(declare-fun t!6728 () Bool)

(declare-fun tb!5907 () Bool)

(assert (=> (and b!38956 (= (x!13517 prev!739) (x!13518 thiss!6214)) t!6728) tb!5907))

(declare-fun result!6183 () Bool)

(assert (=> tb!5907 (= result!6183 true)))

(assert (=> b!38961 t!6728))

(declare-fun b_and!10591 () Bool)

(assert (= b_and!10565 (and (=> t!6728 result!6183) b_and!10591)))

(declare-fun tb!5909 () Bool)

(declare-fun t!6730 () Bool)

(assert (=> (and b!38959 (= (x!13517 x$104!2) (x!13518 thiss!6214)) t!6730) tb!5909))

(declare-fun result!6185 () Bool)

(assert (=> tb!5909 (= result!6185 true)))

(assert (=> b!38961 t!6730))

(declare-fun b_and!10593 () Bool)

(assert (= b_and!10569 (and (=> t!6730 result!6185) b_and!10593)))

(declare-fun m!40155 () Bool)

(assert (=> start!5038 m!40155))

(declare-fun m!40157 () Bool)

(assert (=> start!5038 m!40157))

(declare-fun m!40159 () Bool)

(assert (=> start!5038 m!40159))

(declare-fun m!40161 () Bool)

(assert (=> start!5038 m!40161))

(declare-fun m!40163 () Bool)

(assert (=> start!5038 m!40163))

(declare-fun m!40165 () Bool)

(assert (=> start!5038 m!40165))

(declare-fun m!40167 () Bool)

(assert (=> b!38958 m!40167))

(assert (=> b!38958 m!40167))

(declare-fun m!40169 () Bool)

(assert (=> b!38958 m!40169))

(declare-fun m!40171 () Bool)

(assert (=> b!38960 m!40171))

(assert (=> b!38960 m!40171))

(declare-fun m!40173 () Bool)

(assert (=> b!38960 m!40173))

(declare-fun m!40175 () Bool)

(assert (=> b!38961 m!40175))

(declare-fun m!40177 () Bool)

(assert (=> b!38961 m!40177))

(push 1)

(assert b_and!10587)

(assert b_and!10585)

(assert (not b_lambda!10289))

(assert b_and!10561)

(assert (not b_next!7565))

(assert b_and!10559)

(assert (not b_next!7577))

(assert (not b!38957))

(assert b_and!10593)

(assert (not b_lambda!10291))

(assert b_and!10591)

(assert (not b_next!7567))

(assert b_and!10557)

(assert (not b_next!7569))

(assert b_and!10579)

(assert (not b_next!7571))

(assert (not b_lambda!10293))

(assert (not b_next!7575))

(assert (not b!38958))

(assert (not b_next!7563))

(assert (not b_next!7525))

(assert b_and!10543)

(assert b_and!10583)

(assert (not b_next!7527))

(assert (not b_next!7529))

(assert (not b_next!7579))

(assert (not b!38955))

(assert (not b!38960))

(assert b_and!10589)

(assert (not start!5038))

(assert (not b_next!7573))

(assert b_and!10581)

(check-sat)

(pop 1)

(push 1)

(assert b_and!10587)

(assert b_and!10585)

(assert b_and!10561)

(assert (not b_next!7565))

(assert b_and!10559)

(assert (not b_next!7577))

(assert b_and!10593)

(assert b_and!10591)

(assert (not b_next!7567))

(assert b_and!10557)

(assert (not b_next!7569))

(assert b_and!10579)

(assert (not b_next!7571))

(assert (not b_next!7575))

(assert (not b_next!7563))

(assert (not b_next!7525))

(assert b_and!10543)

(assert b_and!10583)

(assert (not b_next!7527))

(assert (not b_next!7529))

(assert (not b_next!7579))

(assert b_and!10589)

(assert (not b_next!7573))

(assert b_and!10581)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!10295 () Bool)

(assert (= b_lambda!10289 (or (and b!38957 (= lambda!4668 (evidence!509 prev!739))) (and b!38952 b_free!2995 (= (evidence!509 x$103!3) (evidence!509 prev!739))) (and b!38956 b_free!3007) (and b!38959 b_free!3013 (= (evidence!509 x$104!2) (evidence!509 prev!739))) b_lambda!10295)))

(declare-fun bs!12026 () Bool)

(declare-fun d!19808 () Bool)

(assert (= bs!12026 (and d!19808 b!38957)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!12026 (= (dynLambda!701 lambda!4668) trivial!1)))

(assert (=> (and b!38957 (= lambda!4668 (evidence!509 prev!739)) b!38960) d!19808))

(declare-fun b_lambda!10297 () Bool)

(assert (= b_lambda!10293 (or (and b!38953 b_free!2997) (and b!38956 b_free!3003 (= (x!13517 prev!739) (x!13518 thiss!6214))) (and b!38952 b_free!2991 (= (x!13517 x$103!3) (x!13518 thiss!6214))) (and b!38952 b_free!2993 (= (y!1396 x$103!3) (x!13518 thiss!6214))) (and b!38959 b_free!3009 (= (x!13517 x$104!2) (x!13518 thiss!6214))) (and b!38957 (= lambda!4667 (x!13518 thiss!6214))) (and b!38956 b_free!3005 (= (y!1396 prev!739) (x!13518 thiss!6214))) (and b!38953 b_free!2999 (= (y!1397 thiss!6214) (x!13518 thiss!6214))) (and b!38962 (= lambda!4671 (x!13518 thiss!6214))) (and b!38955 (= lambda!4669 (x!13518 thiss!6214))) (and b!38962 (= lambda!4670 (x!13518 thiss!6214))) (and b!38959 b_free!3011 (= (y!1396 x$104!2) (x!13518 thiss!6214))) b_lambda!10297)))

(declare-fun bs!12027 () Bool)

(declare-fun d!19810 () Bool)

(assert (= bs!12027 (and d!19810 b!38955)))

(assert (=> bs!12027 (= (dynLambda!702 lambda!4669) (tuple2!209 p1!72 p2!66))))

(assert (=> (and b!38955 (= lambda!4669 (x!13518 thiss!6214)) b!38961) d!19810))

(declare-fun bs!12028 () Bool)

(declare-fun d!19812 () Bool)

(assert (= bs!12028 (and d!19812 b!38957)))

(declare-fun project!0 (Nat!65) tuple2!208)

(assert (=> bs!12028 (= (dynLambda!702 lambda!4667) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!12028 m!40163))

(assert (=> bs!12028 m!40163))

(declare-fun m!40179 () Bool)

(assert (=> bs!12028 m!40179))

(assert (=> (and b!38957 (= lambda!4667 (x!13518 thiss!6214)) b!38961) d!19812))

(declare-fun bs!12029 () Bool)

(declare-fun d!19814 () Bool)

(assert (= bs!12029 (and d!19814 b!38962)))

(assert (=> bs!12029 (= (dynLambda!702 lambda!4671) (tuple2!209 n1!316 n2!332))))

(assert (=> (and b!38962 (= lambda!4671 (x!13518 thiss!6214)) b!38961) d!19814))

(declare-fun bs!12030 () Bool)

(declare-fun d!19816 () Bool)

(assert (= bs!12030 (and d!19816 b!38962)))

(assert (=> bs!12030 (= (dynLambda!702 lambda!4670) (tuple2!209 p1!72 (/!2 (-!4 remainder!2 (Succ!46 Zero!49)) (Succ!46 (Succ!46 Zero!49)))))))

(assert (=> bs!12030 m!40167))

(assert (=> bs!12030 m!40167))

(assert (=> bs!12030 m!40169))

(assert (=> (and b!38962 (= lambda!4670 (x!13518 thiss!6214)) b!38961) d!19816))

(declare-fun b_lambda!10299 () Bool)

(assert (= b_lambda!10291 (or (and b!38957 (= lambda!4667 (y!1396 prev!739))) (and b!38962 (= lambda!4670 (y!1396 prev!739))) (and b!38956 b_free!3005) (and b!38952 b_free!2991 (= (x!13517 x$103!3) (y!1396 prev!739))) (and b!38955 (= lambda!4669 (y!1396 prev!739))) (and b!38953 b_free!2999 (= (y!1397 thiss!6214) (y!1396 prev!739))) (and b!38959 b_free!3009 (= (x!13517 x$104!2) (y!1396 prev!739))) (and b!38952 b_free!2993 (= (y!1396 x$103!3) (y!1396 prev!739))) (and b!38953 b_free!2997 (= (x!13518 thiss!6214) (y!1396 prev!739))) (and b!38962 (= lambda!4671 (y!1396 prev!739))) (and b!38959 b_free!3011 (= (y!1396 x$104!2) (y!1396 prev!739))) (and b!38956 b_free!3003 (= (x!13517 prev!739) (y!1396 prev!739))) b_lambda!10299)))

(declare-fun bs!12031 () Bool)

(declare-fun d!19818 () Bool)

(assert (= bs!12031 (and d!19818 b!38955)))

(assert (=> bs!12031 (= (dynLambda!702 lambda!4669) (tuple2!209 p1!72 p2!66))))

(assert (=> (and b!38955 (= lambda!4669 (y!1396 prev!739)) b!38961) d!19818))

(declare-fun bs!12032 () Bool)

(declare-fun d!19820 () Bool)

(assert (= bs!12032 (and d!19820 b!38962)))

(assert (=> bs!12032 (= (dynLambda!702 lambda!4671) (tuple2!209 n1!316 n2!332))))

(assert (=> (and b!38962 (= lambda!4671 (y!1396 prev!739)) b!38961) d!19820))

(declare-fun bs!12033 () Bool)

(declare-fun d!19822 () Bool)

(assert (= bs!12033 (and d!19822 b!38957)))

(assert (=> bs!12033 (= (dynLambda!702 lambda!4667) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!12033 m!40163))

(assert (=> bs!12033 m!40163))

(assert (=> bs!12033 m!40179))

(assert (=> (and b!38957 (= lambda!4667 (y!1396 prev!739)) b!38961) d!19822))

(declare-fun bs!12034 () Bool)

(declare-fun d!19824 () Bool)

(assert (= bs!12034 (and d!19824 b!38962)))

(assert (=> bs!12034 (= (dynLambda!702 lambda!4670) (tuple2!209 p1!72 (/!2 (-!4 remainder!2 (Succ!46 Zero!49)) (Succ!46 (Succ!46 Zero!49)))))))

(assert (=> bs!12034 m!40167))

(assert (=> bs!12034 m!40167))

(assert (=> bs!12034 m!40169))

(assert (=> (and b!38962 (= lambda!4670 (y!1396 prev!739)) b!38961) d!19824))

(push 1)

(assert b_and!10587)

(assert b_and!10585)

(assert (not bs!12028))

(assert b_and!10561)

(assert (not b_next!7565))

(assert b_and!10559)

(assert (not b_next!7577))

(assert (not bs!12034))

(assert (not b!38957))

(assert b_and!10593)

(assert b_and!10591)

(assert (not b_next!7567))

(assert (not b_lambda!10299))

(assert b_and!10557)

(assert (not b_next!7569))

(assert b_and!10579)

(assert (not b_next!7571))

(assert (not b_lambda!10295))

(assert (not b_next!7575))

(assert (not b!38958))

(assert (not b_next!7563))

(assert (not bs!12033))

(assert (not b_next!7525))

(assert b_and!10543)

(assert b_and!10583)

(assert (not b_next!7527))

(assert (not bs!12030))

(assert (not b_next!7529))

(assert (not b_next!7579))

(assert (not b!38955))

(assert (not b!38960))

(assert b_and!10589)

(assert (not start!5038))

(assert (not b_lambda!10297))

(assert (not b_next!7573))

(assert b_and!10581)

(check-sat)

(pop 1)

(push 1)

(assert b_and!10587)

(assert b_and!10585)

(assert b_and!10561)

(assert (not b_next!7565))

(assert b_and!10559)

(assert (not b_next!7577))

(assert b_and!10593)

(assert b_and!10591)

(assert (not b_next!7567))

(assert b_and!10557)

(assert (not b_next!7569))

(assert b_and!10579)

(assert (not b_next!7571))

(assert (not b_next!7575))

(assert (not b_next!7563))

(assert (not b_next!7525))

(assert b_and!10543)

(assert b_and!10583)

(assert (not b_next!7527))

(assert (not b_next!7529))

(assert (not b_next!7579))

(assert b_and!10589)

(assert (not b_next!7573))

(assert b_and!10581)

(check-sat)

(pop 1)


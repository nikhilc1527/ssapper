; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10376 () Bool)

(assert start!10376)

(declare-fun res!38837 () Bool)

(declare-fun e!41874 () Bool)

(assert (=> start!10376 (=> (not res!38837) (not e!41874))))

(declare-datatypes () ((Formula!102 (Implies!106 (lhs!1419 Formula!102) (rhs!1419 Formula!102)) (And!106 (lhs!1420 Formula!102) (rhs!1420 Formula!102)) (Or!106 (lhs!1421 Formula!102) (rhs!1421 Formula!102)) (Literal!100 (id!4963 (_ BitVec 32))) (Not!106 (f!4749 Formula!102)))))

(declare-fun f!4501 () Formula!102)

(declare-fun isNNF!0 (Formula!102) Bool)

(assert (=> start!10376 (= res!38837 (isNNF!0 f!4501))))

(assert (=> start!10376 e!41874))

(assert (=> start!10376 true))

(declare-fun b!77458 () Bool)

(declare-fun res!38838 () Bool)

(assert (=> b!77458 (=> (not res!38838) (not e!41874))))

(declare-fun f!4514 () Formula!102)

(assert (=> b!77458 (= res!38838 (and (not (is-And!106 f!4501)) (not (is-Or!106 f!4501)) (is-Implies!106 f!4501) (= f!4514 (rhs!1419 f!4501))))))

(declare-fun b!77459 () Bool)

(assert (=> b!77459 (= e!41874 (not (isNNF!0 f!4514)))))

(assert (= (and start!10376 res!38837) b!77458))

(assert (= (and b!77458 res!38838) b!77459))

(declare-fun m!73478 () Bool)

(assert (=> start!10376 m!73478))

(declare-fun m!73480 () Bool)

(assert (=> b!77459 m!73480))

(push 1)

(assert (not b!77459))

(assert (not start!10376))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!77508 () Bool)

(declare-fun e!41911 () Formula!102)

(assert (=> b!77508 (= e!41911 (rhs!1421 f!4514))))

(declare-fun e!41905 () Bool)

(declare-fun lt!17429 () Bool)

(declare-fun b!77509 () Bool)

(declare-fun lt!17425 () Bool)

(assert (=> b!77509 (= e!41905 (or (and lt!17429 lt!17425) (and (not lt!17429) (is-Implies!106 f!4514) lt!17425)))))

(declare-fun e!41910 () Bool)

(assert (=> b!77509 (= lt!17425 e!41910)))

(declare-fun c!19407 () Bool)

(assert (=> b!77509 (= c!19407 (or lt!17429 (is-Implies!106 f!4514)))))

(assert (=> b!77509 (= lt!17429 (is-Or!106 f!4514))))

(declare-fun b!77510 () Bool)

(declare-fun e!41913 () Bool)

(declare-fun res!38876 () Bool)

(assert (=> b!77510 (= e!41913 res!38876)))

(assert (=> b!77510 true))

(declare-fun b!77511 () Bool)

(declare-fun e!41904 () Bool)

(declare-fun res!38882 () Bool)

(assert (=> b!77511 (= e!41904 res!38882)))

(assert (=> b!77511 true))

(declare-fun b!77512 () Bool)

(declare-fun e!41903 () Formula!102)

(assert (=> b!77512 (= e!41903 e!41911)))

(declare-fun c!19406 () Bool)

(declare-fun e!41914 () Bool)

(assert (=> b!77512 (= c!19406 e!41914)))

(declare-fun res!38873 () Bool)

(assert (=> b!77512 (=> (not res!38873) (not e!41914))))

(declare-fun lt!17424 () Bool)

(assert (=> b!77512 (= res!38873 lt!17424)))

(assert (=> b!77512 (= lt!17424 (is-Or!106 f!4514))))

(declare-fun b!77513 () Bool)

(assert (=> b!77513 (= e!41903 (rhs!1420 f!4514))))

(declare-fun b!77514 () Bool)

(assert (=> b!77514 (= e!41914 e!41904)))

(declare-fun c!19411 () Bool)

(assert (=> b!77514 (= c!19411 (or lt!17424 (is-Implies!106 f!4514)))))

(declare-fun d!54957 () Bool)

(declare-fun c!19408 () Bool)

(declare-fun lt!17432 () Bool)

(assert (=> d!54957 (= c!19408 lt!17432)))

(declare-fun lt!17431 () Bool)

(declare-fun e!41907 () Bool)

(assert (=> d!54957 (= lt!17431 e!41907)))

(declare-fun c!19409 () Bool)

(declare-fun e!41908 () Bool)

(assert (=> d!54957 (= c!19409 e!41908)))

(declare-fun res!38880 () Bool)

(assert (=> d!54957 (=> res!38880 e!41908)))

(declare-fun lt!17426 () Bool)

(assert (=> d!54957 (= res!38880 lt!17426)))

(declare-fun lt!17430 () Bool)

(assert (=> d!54957 (= lt!17426 (and lt!17432 lt!17430))))

(declare-fun e!41909 () Bool)

(assert (=> d!54957 (= lt!17430 e!41909)))

(declare-fun c!19413 () Bool)

(assert (=> d!54957 (= c!19413 (or lt!17432 (is-Or!106 f!4514) (is-Implies!106 f!4514)))))

(assert (=> d!54957 (= lt!17432 (is-And!106 f!4514))))

(declare-fun e!41916 () Bool)

(assert (=> d!54957 (= (isNNF!0 f!4514) e!41916)))

(declare-fun b!77515 () Bool)

(declare-fun e!41912 () Bool)

(assert (=> b!77515 (= e!41916 e!41912)))

(declare-fun c!19412 () Bool)

(declare-fun lt!17428 () Bool)

(assert (=> b!77515 (= c!19412 (or lt!17428 (is-Implies!106 f!4514)))))

(declare-fun lt!17427 () Bool)

(assert (=> b!77515 (= lt!17427 e!41913)))

(declare-fun c!19405 () Bool)

(assert (=> b!77515 (= c!19405 (or lt!17428 (is-Implies!106 f!4514)))))

(assert (=> b!77515 (= lt!17428 (is-Or!106 f!4514))))

(declare-fun b!77516 () Bool)

(declare-fun e!41915 () Bool)

(assert (=> b!77516 (= e!41912 e!41915)))

(declare-fun res!38881 () Bool)

(assert (=> b!77516 (=> (not res!38881) (not e!41915))))

(assert (=> b!77516 (= res!38881 lt!17427)))

(declare-fun b!77517 () Bool)

(assert (=> b!77517 (= e!41911 (rhs!1419 f!4514))))

(declare-fun b!77518 () Bool)

(declare-fun res!38874 () Bool)

(assert (=> b!77518 (= e!41909 res!38874)))

(assert (=> b!77518 true))

(declare-fun b!77519 () Bool)

(assert (=> b!77519 (= e!41909 (isNNF!0 (ite lt!17432 (lhs!1420 f!4514) (ite (is-Or!106 f!4514) (lhs!1421 f!4514) (lhs!1419 f!4514)))))))

(declare-fun b!77520 () Bool)

(declare-fun e!41906 () Bool)

(assert (=> b!77520 (= e!41906 lt!17431)))

(declare-fun b!77521 () Bool)

(assert (=> b!77521 (= e!41915 e!41906)))

(declare-fun c!19404 () Bool)

(assert (=> b!77521 (= c!19404 (or (and lt!17428 lt!17427) (and (not lt!17428) (is-Implies!106 f!4514) lt!17427)))))

(declare-fun b!77522 () Bool)

(assert (=> b!77522 (= e!41908 e!41905)))

(declare-fun res!38879 () Bool)

(assert (=> b!77522 (=> (not res!38879) (not e!41905))))

(assert (=> b!77522 (= res!38879 (not lt!17432))))

(declare-fun b!77523 () Bool)

(declare-fun res!38878 () Bool)

(assert (=> b!77523 (= e!41907 res!38878)))

(assert (=> b!77523 true))

(declare-fun b!77524 () Bool)

(assert (=> b!77524 (= e!41907 (isNNF!0 e!41903))))

(declare-fun c!19410 () Bool)

(assert (=> b!77524 (= c!19410 lt!17426)))

(declare-fun b!77525 () Bool)

(declare-fun res!38877 () Bool)

(assert (=> b!77525 (= e!41910 res!38877)))

(assert (=> b!77525 true))

(declare-fun b!77526 () Bool)

(assert (=> b!77526 (= e!41910 lt!17430)))

(declare-fun b!77527 () Bool)

(declare-fun res!38875 () Bool)

(assert (=> b!77527 (= e!41906 res!38875)))

(assert (=> b!77527 true))

(assert (=> b!77527 true))

(declare-fun b!77528 () Bool)

(assert (=> b!77528 (= e!41912 (or (and (is-Not!106 f!4514) (is-Literal!100 (f!4749 f!4514))) (not (is-Not!106 f!4514))))))

(declare-fun b!77529 () Bool)

(assert (=> b!77529 (= e!41916 (and lt!17430 lt!17431))))

(declare-fun b!77530 () Bool)

(assert (=> b!77530 (= e!41913 lt!17430)))

(declare-fun b!77531 () Bool)

(assert (=> b!77531 (= e!41904 lt!17430)))

(assert (= (and d!54957 c!19413) b!77519))

(assert (= (and d!54957 (not c!19413)) b!77518))

(assert (= (and d!54957 (not res!38880)) b!77522))

(assert (= (and b!77522 res!38879) b!77509))

(assert (= (and b!77509 c!19407) b!77526))

(assert (= (and b!77509 (not c!19407)) b!77525))

(assert (= (and b!77512 res!38873) b!77514))

(assert (= (and b!77514 c!19411) b!77531))

(assert (= (and b!77514 (not c!19411)) b!77511))

(assert (= (and b!77512 c!19406) b!77508))

(assert (= (and b!77512 (not c!19406)) b!77517))

(assert (= (and b!77524 c!19410) b!77513))

(assert (= (and b!77524 (not c!19410)) b!77512))

(assert (= (and d!54957 c!19409) b!77524))

(assert (= (and d!54957 (not c!19409)) b!77523))

(assert (= (and b!77515 c!19405) b!77530))

(assert (= (and b!77515 (not c!19405)) b!77510))

(assert (= (and b!77516 res!38881) b!77521))

(assert (= (and b!77521 c!19404) b!77520))

(assert (= (and b!77521 (not c!19404)) b!77527))

(assert (= (and b!77515 c!19412) b!77516))

(assert (= (and b!77515 (not c!19412)) b!77528))

(assert (= (and d!54957 c!19408) b!77529))

(assert (= (and d!54957 (not c!19408)) b!77515))

(declare-fun m!73482 () Bool)

(assert (=> b!77519 m!73482))

(declare-fun m!73484 () Bool)

(assert (=> b!77524 m!73484))

(assert (=> b!77459 d!54957))

(declare-fun b!77532 () Bool)

(declare-fun e!41925 () Formula!102)

(assert (=> b!77532 (= e!41925 (rhs!1421 f!4501))))

(declare-fun b!77533 () Bool)

(declare-fun lt!17434 () Bool)

(declare-fun e!41919 () Bool)

(declare-fun lt!17438 () Bool)

(assert (=> b!77533 (= e!41919 (or (and lt!17438 lt!17434) (and (not lt!17438) (is-Implies!106 f!4501) lt!17434)))))

(declare-fun e!41924 () Bool)

(assert (=> b!77533 (= lt!17434 e!41924)))

(declare-fun c!19417 () Bool)

(assert (=> b!77533 (= c!19417 (or lt!17438 (is-Implies!106 f!4501)))))

(assert (=> b!77533 (= lt!17438 (is-Or!106 f!4501))))

(declare-fun b!77534 () Bool)

(declare-fun e!41927 () Bool)

(declare-fun res!38886 () Bool)

(assert (=> b!77534 (= e!41927 res!38886)))

(assert (=> b!77534 true))

(declare-fun b!77535 () Bool)

(declare-fun e!41918 () Bool)

(declare-fun res!38892 () Bool)

(assert (=> b!77535 (= e!41918 res!38892)))

(assert (=> b!77535 true))

(declare-fun b!77536 () Bool)

(declare-fun e!41917 () Formula!102)

(assert (=> b!77536 (= e!41917 e!41925)))

(declare-fun c!19416 () Bool)

(declare-fun e!41928 () Bool)

(assert (=> b!77536 (= c!19416 e!41928)))

(declare-fun res!38883 () Bool)

(assert (=> b!77536 (=> (not res!38883) (not e!41928))))

(declare-fun lt!17433 () Bool)

(assert (=> b!77536 (= res!38883 lt!17433)))

(assert (=> b!77536 (= lt!17433 (is-Or!106 f!4501))))

(declare-fun b!77537 () Bool)

(assert (=> b!77537 (= e!41917 (rhs!1420 f!4501))))

(declare-fun b!77538 () Bool)

(assert (=> b!77538 (= e!41928 e!41918)))

(declare-fun c!19421 () Bool)

(assert (=> b!77538 (= c!19421 (or lt!17433 (is-Implies!106 f!4501)))))

(declare-fun d!54959 () Bool)

(declare-fun c!19418 () Bool)

(declare-fun lt!17441 () Bool)

(assert (=> d!54959 (= c!19418 lt!17441)))

(declare-fun lt!17440 () Bool)

(declare-fun e!41921 () Bool)

(assert (=> d!54959 (= lt!17440 e!41921)))

(declare-fun c!19419 () Bool)

(declare-fun e!41922 () Bool)

(assert (=> d!54959 (= c!19419 e!41922)))

(declare-fun res!38890 () Bool)

(assert (=> d!54959 (=> res!38890 e!41922)))

(declare-fun lt!17435 () Bool)

(assert (=> d!54959 (= res!38890 lt!17435)))

(declare-fun lt!17439 () Bool)

(assert (=> d!54959 (= lt!17435 (and lt!17441 lt!17439))))

(declare-fun e!41923 () Bool)

(assert (=> d!54959 (= lt!17439 e!41923)))

(declare-fun c!19423 () Bool)

(assert (=> d!54959 (= c!19423 (or lt!17441 (is-Or!106 f!4501) (is-Implies!106 f!4501)))))

(assert (=> d!54959 (= lt!17441 (is-And!106 f!4501))))

(declare-fun e!41930 () Bool)

(assert (=> d!54959 (= (isNNF!0 f!4501) e!41930)))

(declare-fun b!77539 () Bool)

(declare-fun e!41926 () Bool)

(assert (=> b!77539 (= e!41930 e!41926)))

(declare-fun c!19422 () Bool)

(declare-fun lt!17437 () Bool)

(assert (=> b!77539 (= c!19422 (or lt!17437 (is-Implies!106 f!4501)))))

(declare-fun lt!17436 () Bool)

(assert (=> b!77539 (= lt!17436 e!41927)))

(declare-fun c!19415 () Bool)

(assert (=> b!77539 (= c!19415 (or lt!17437 (is-Implies!106 f!4501)))))

(assert (=> b!77539 (= lt!17437 (is-Or!106 f!4501))))

(declare-fun b!77540 () Bool)

(declare-fun e!41929 () Bool)

(assert (=> b!77540 (= e!41926 e!41929)))

(declare-fun res!38891 () Bool)

(assert (=> b!77540 (=> (not res!38891) (not e!41929))))

(assert (=> b!77540 (= res!38891 lt!17436)))

(declare-fun b!77541 () Bool)

(assert (=> b!77541 (= e!41925 (rhs!1419 f!4501))))

(declare-fun b!77542 () Bool)

(declare-fun res!38884 () Bool)

(assert (=> b!77542 (= e!41923 res!38884)))

(assert (=> b!77542 true))

(declare-fun b!77543 () Bool)

(assert (=> b!77543 (= e!41923 (isNNF!0 (ite lt!17441 (lhs!1420 f!4501) (ite (is-Or!106 f!4501) (lhs!1421 f!4501) (lhs!1419 f!4501)))))))

(declare-fun b!77544 () Bool)

(declare-fun e!41920 () Bool)

(assert (=> b!77544 (= e!41920 lt!17440)))

(declare-fun b!77545 () Bool)

(assert (=> b!77545 (= e!41929 e!41920)))

(declare-fun c!19414 () Bool)

(assert (=> b!77545 (= c!19414 (or (and lt!17437 lt!17436) (and (not lt!17437) (is-Implies!106 f!4501) lt!17436)))))

(declare-fun b!77546 () Bool)

(assert (=> b!77546 (= e!41922 e!41919)))

(declare-fun res!38889 () Bool)

(assert (=> b!77546 (=> (not res!38889) (not e!41919))))

(assert (=> b!77546 (= res!38889 (not lt!17441))))

(declare-fun b!77547 () Bool)

(declare-fun res!38888 () Bool)

(assert (=> b!77547 (= e!41921 res!38888)))

(assert (=> b!77547 true))

(declare-fun b!77548 () Bool)

(assert (=> b!77548 (= e!41921 (isNNF!0 e!41917))))

(declare-fun c!19420 () Bool)

(assert (=> b!77548 (= c!19420 lt!17435)))

(declare-fun b!77549 () Bool)

(declare-fun res!38887 () Bool)

(assert (=> b!77549 (= e!41924 res!38887)))

(assert (=> b!77549 true))

(declare-fun b!77550 () Bool)

(assert (=> b!77550 (= e!41924 lt!17439)))

(declare-fun b!77551 () Bool)

(declare-fun res!38885 () Bool)

(assert (=> b!77551 (= e!41920 res!38885)))

(assert (=> b!77551 true))

(assert (=> b!77551 true))

(declare-fun b!77552 () Bool)

(assert (=> b!77552 (= e!41926 (or (and (is-Not!106 f!4501) (is-Literal!100 (f!4749 f!4501))) (not (is-Not!106 f!4501))))))

(declare-fun b!77553 () Bool)

(assert (=> b!77553 (= e!41930 (and lt!17439 lt!17440))))

(declare-fun b!77554 () Bool)

(assert (=> b!77554 (= e!41927 lt!17439)))

(declare-fun b!77555 () Bool)

(assert (=> b!77555 (= e!41918 lt!17439)))

(assert (= (and d!54959 c!19423) b!77543))

(assert (= (and d!54959 (not c!19423)) b!77542))

(assert (= (and d!54959 (not res!38890)) b!77546))

(assert (= (and b!77546 res!38889) b!77533))

(assert (= (and b!77533 c!19417) b!77550))

(assert (= (and b!77533 (not c!19417)) b!77549))

(assert (= (and b!77536 res!38883) b!77538))

(assert (= (and b!77538 c!19421) b!77555))

(assert (= (and b!77538 (not c!19421)) b!77535))

(assert (= (and b!77536 c!19416) b!77532))

(assert (= (and b!77536 (not c!19416)) b!77541))

(assert (= (and b!77548 c!19420) b!77537))

(assert (= (and b!77548 (not c!19420)) b!77536))

(assert (= (and d!54959 c!19419) b!77548))

(assert (= (and d!54959 (not c!19419)) b!77547))

(assert (= (and b!77539 c!19415) b!77554))

(assert (= (and b!77539 (not c!19415)) b!77534))

(assert (= (and b!77540 res!38891) b!77545))

(assert (= (and b!77545 c!19414) b!77544))

(assert (= (and b!77545 (not c!19414)) b!77551))

(assert (= (and b!77539 c!19422) b!77540))

(assert (= (and b!77539 (not c!19422)) b!77552))

(assert (= (and d!54959 c!19418) b!77553))

(assert (= (and d!54959 (not c!19418)) b!77539))

(declare-fun m!73486 () Bool)

(assert (=> b!77543 m!73486))

(declare-fun m!73488 () Bool)

(assert (=> b!77548 m!73488))

(assert (=> start!10376 d!54959))

(push 1)

(assert (not b!77524))

(assert (not b!77519))

(assert (not b!77548))

(assert (not b!77543))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


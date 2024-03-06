; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10340 () Bool)

(assert start!10340)

(declare-fun res!38321 () Bool)

(declare-fun e!41411 () Bool)

(assert (=> start!10340 (=> (not res!38321) (not e!41411))))

(declare-datatypes () ((Formula!94 (Implies!98 (lhs!1395 Formula!94) (rhs!1395 Formula!94)) (And!98 (lhs!1396 Formula!94) (rhs!1396 Formula!94)) (Or!98 (lhs!1397 Formula!94) (rhs!1397 Formula!94)) (Literal!92 (id!4955 (_ BitVec 32))) (Not!98 (f!4732 Formula!94)))))

(declare-fun f!4516 () Formula!94)

(assert (=> start!10340 (= res!38321 (and (not (is-And!98 f!4516)) (not (is-Or!98 f!4516)) (not (is-Implies!98 f!4516)) (is-Not!98 f!4516)))))

(assert (=> start!10340 e!41411))

(assert (=> start!10340 true))

(declare-fun b!76648 () Bool)

(declare-fun res!38322 () Bool)

(assert (=> b!76648 (=> (not res!38322) (not e!41411))))

(declare-fun x$1!1032 () Formula!94)

(declare-fun simplify!0 (Formula!94) Formula!94)

(assert (=> b!76648 (= res!38322 (= x$1!1032 (Not!98 (simplify!0 (f!4732 f!4516)))))))

(declare-fun b!76649 () Bool)

(declare-fun isSimplified!0 (Formula!94) Bool)

(assert (=> b!76649 (= e!41411 (not (isSimplified!0 x$1!1032)))))

(assert (= (and start!10340 res!38321) b!76648))

(assert (= (and b!76648 res!38322) b!76649))

(declare-fun m!73384 () Bool)

(assert (=> b!76648 m!73384))

(declare-fun m!73386 () Bool)

(assert (=> b!76649 m!73386))

(push 1)

(assert (not b!76649))

(assert (not b!76648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!76676 () Bool)

(declare-fun e!41433 () Bool)

(declare-fun res!38349 () Bool)

(assert (=> b!76676 (= e!41433 res!38349)))

(assert (=> b!76676 true))

(declare-fun b!76677 () Bool)

(declare-fun e!41428 () Bool)

(declare-fun res!38354 () Bool)

(assert (=> b!76677 (= e!41428 res!38354)))

(assert (=> b!76677 true))

(assert (=> b!76677 true))

(declare-fun b!76678 () Bool)

(declare-fun lt!17092 () Bool)

(assert (=> b!76678 (= e!41433 (isSimplified!0 (ite lt!17092 (rhs!1396 x$1!1032) (rhs!1397 x$1!1032))))))

(declare-fun b!76679 () Bool)

(declare-fun e!41435 () Bool)

(declare-fun lt!17096 () Bool)

(assert (=> b!76679 (= e!41435 (isSimplified!0 (ite lt!17096 (lhs!1396 x$1!1032) (ite (is-Or!98 x$1!1032) (lhs!1397 x$1!1032) (f!4732 x$1!1032)))))))

(declare-fun b!76680 () Bool)

(declare-fun e!41429 () Bool)

(declare-fun lt!17090 () Bool)

(assert (=> b!76680 (= e!41429 lt!17090)))

(declare-fun b!76681 () Bool)

(declare-fun res!38350 () Bool)

(assert (=> b!76681 (= e!41429 res!38350)))

(assert (=> b!76681 true))

(declare-fun b!76682 () Bool)

(declare-fun e!41431 () Bool)

(declare-fun e!41432 () Bool)

(assert (=> b!76682 (= e!41431 e!41432)))

(declare-fun res!38348 () Bool)

(assert (=> b!76682 (=> (not res!38348) (not e!41432))))

(declare-fun lt!17093 () Bool)

(assert (=> b!76682 (= res!38348 lt!17093)))

(assert (=> b!76682 (= lt!17093 (is-Or!98 x$1!1032))))

(declare-fun b!76683 () Bool)

(assert (=> b!76683 (= e!41432 e!41429)))

(declare-fun c!19065 () Bool)

(assert (=> b!76683 (= c!19065 (or lt!17093 (and (not (is-Implies!98 x$1!1032)) (is-Not!98 x$1!1032))))))

(declare-fun b!76684 () Bool)

(assert (=> b!76684 (= e!41428 lt!17090)))

(declare-fun b!76685 () Bool)

(declare-fun e!41430 () Bool)

(assert (=> b!76685 (= e!41430 e!41431)))

(declare-fun res!38352 () Bool)

(assert (=> b!76685 (=> (not res!38352) (not e!41431))))

(assert (=> b!76685 (= res!38352 (not lt!17096))))

(declare-fun d!54927 () Bool)

(declare-fun c!19068 () Bool)

(assert (=> d!54927 (= c!19068 lt!17096)))

(declare-fun lt!17091 () Bool)

(assert (=> d!54927 (= lt!17091 e!41433)))

(declare-fun c!19067 () Bool)

(assert (=> d!54927 (= c!19067 e!41430)))

(declare-fun res!38353 () Bool)

(assert (=> d!54927 (=> res!38353 e!41430)))

(assert (=> d!54927 (= res!38353 lt!17092)))

(assert (=> d!54927 (= lt!17092 (and lt!17096 lt!17090))))

(assert (=> d!54927 (= lt!17090 e!41435)))

(declare-fun c!19069 () Bool)

(assert (=> d!54927 (= c!19069 (or lt!17096 (is-Or!98 x$1!1032) (and (not (is-Implies!98 x$1!1032)) (is-Not!98 x$1!1032))))))

(assert (=> d!54927 (= lt!17096 (is-And!98 x$1!1032))))

(declare-fun e!41434 () Bool)

(assert (=> d!54927 (= (isSimplified!0 x$1!1032) e!41434)))

(declare-fun b!76686 () Bool)

(declare-fun lt!17095 () Bool)

(declare-fun lt!17094 () Bool)

(assert (=> b!76686 (= e!41434 (ite lt!17095 (and lt!17094 lt!17091) (and (not (is-Implies!98 x$1!1032)) (or (not (is-Not!98 x$1!1032)) lt!17094))))))

(assert (=> b!76686 (= lt!17094 e!41428)))

(declare-fun c!19066 () Bool)

(assert (=> b!76686 (= c!19066 (or lt!17095 (and (not (is-Implies!98 x$1!1032)) (is-Not!98 x$1!1032))))))

(assert (=> b!76686 (= lt!17095 (is-Or!98 x$1!1032))))

(declare-fun b!76687 () Bool)

(assert (=> b!76687 (= e!41434 (and lt!17090 lt!17091))))

(declare-fun b!76688 () Bool)

(declare-fun res!38351 () Bool)

(assert (=> b!76688 (= e!41435 res!38351)))

(assert (=> b!76688 true))

(assert (= (and d!54927 c!19069) b!76679))

(assert (= (and d!54927 (not c!19069)) b!76688))

(assert (= (and d!54927 (not res!38353)) b!76685))

(assert (= (and b!76685 res!38352) b!76682))

(assert (= (and b!76682 res!38348) b!76683))

(assert (= (and b!76683 c!19065) b!76680))

(assert (= (and b!76683 (not c!19065)) b!76681))

(assert (= (and d!54927 c!19067) b!76678))

(assert (= (and d!54927 (not c!19067)) b!76676))

(assert (= (and b!76686 c!19066) b!76684))

(assert (= (and b!76686 (not c!19066)) b!76677))

(assert (= (and d!54927 c!19068) b!76687))

(assert (= (and d!54927 (not c!19068)) b!76686))

(declare-fun m!73388 () Bool)

(assert (=> b!76678 m!73388))

(declare-fun m!73390 () Bool)

(assert (=> b!76679 m!73390))

(assert (=> b!76649 d!54927))

(declare-fun b!76717 () Bool)

(declare-fun e!41455 () Formula!94)

(declare-fun res!38383 () Formula!94)

(assert (=> b!76717 (= e!41455 res!38383)))

(assert (=> b!76717 true))

(declare-fun b!76718 () Bool)

(declare-fun e!41456 () Formula!94)

(declare-fun e!41452 () Formula!94)

(assert (=> b!76718 (= e!41456 e!41452)))

(declare-fun c!19089 () Bool)

(declare-fun lt!17121 () Bool)

(assert (=> b!76718 (= c!19089 lt!17121)))

(declare-fun lt!17123 () Formula!94)

(declare-fun e!41454 () Formula!94)

(assert (=> b!76718 (= lt!17123 e!41454)))

(declare-fun c!19086 () Bool)

(assert (=> b!76718 (= c!19086 (or lt!17121 (is-Implies!98 (f!4732 f!4516))))))

(declare-fun lt!17119 () Formula!94)

(declare-fun e!41451 () Formula!94)

(assert (=> b!76718 (= lt!17119 e!41451)))

(declare-fun c!19084 () Bool)

(assert (=> b!76718 (= c!19084 (or lt!17121 (is-Implies!98 (f!4732 f!4516)) (is-Not!98 (f!4732 f!4516))))))

(assert (=> b!76718 (= lt!17121 (is-Or!98 (f!4732 f!4516)))))

(declare-fun b!76719 () Bool)

(declare-fun lt!17117 () Bool)

(assert (=> b!76719 (= e!41455 (simplify!0 (ite lt!17117 (rhs!1396 (f!4732 f!4516)) (ite (is-Or!98 (f!4732 f!4516)) (rhs!1397 (f!4732 f!4516)) (rhs!1395 (f!4732 f!4516))))))))

(declare-fun lt!17118 () Bool)

(declare-fun b!76720 () Bool)

(declare-fun lt!17120 () Formula!94)

(assert (=> b!76720 (= e!41452 (ite lt!17118 (Or!98 (Not!98 lt!17120) lt!17123) (ite (is-Not!98 (f!4732 f!4516)) (Not!98 lt!17120) (f!4732 f!4516))))))

(declare-fun e!41450 () Formula!94)

(assert (=> b!76720 (= lt!17120 e!41450)))

(declare-fun c!19087 () Bool)

(assert (=> b!76720 (= c!19087 (or lt!17118 (is-Not!98 (f!4732 f!4516))))))

(assert (=> b!76720 (= lt!17118 (is-Implies!98 (f!4732 f!4516)))))

(declare-fun b!76721 () Bool)

(assert (=> b!76721 (= e!41450 lt!17119)))

(declare-fun b!76722 () Bool)

(declare-fun res!38382 () Formula!94)

(assert (=> b!76722 (= e!41450 res!38382)))

(assert (=> b!76722 true))

(assert (=> b!76722 true))

(declare-fun b!76723 () Bool)

(declare-fun e!41453 () Formula!94)

(assert (=> b!76723 (= e!41453 (simplify!0 (ite lt!17117 (lhs!1396 (f!4732 f!4516)) (ite (is-Or!98 (f!4732 f!4516)) (lhs!1397 (f!4732 f!4516)) (ite (is-Implies!98 (f!4732 f!4516)) (lhs!1395 (f!4732 f!4516)) (f!4732 (f!4732 f!4516)))))))))

(declare-fun b!76724 () Bool)

(declare-fun lt!17116 () Formula!94)

(declare-fun lt!17115 () Formula!94)

(assert (=> b!76724 (= e!41456 (And!98 lt!17116 lt!17115))))

(declare-fun b!76725 () Bool)

(declare-fun res!38381 () Formula!94)

(assert (=> b!76725 (= e!41451 res!38381)))

(assert (=> b!76725 true))

(declare-fun b!76726 () Bool)

(assert (=> b!76726 (= e!41454 lt!17115)))

(declare-fun b!76727 () Bool)

(assert (=> b!76727 (= e!41451 lt!17116)))

(declare-fun b!76728 () Bool)

(declare-fun res!38384 () Formula!94)

(assert (=> b!76728 (= e!41453 res!38384)))

(assert (=> b!76728 true))

(declare-fun d!54929 () Bool)

(declare-fun lt!17122 () Formula!94)

(assert (=> d!54929 (isSimplified!0 lt!17122)))

(assert (=> d!54929 (= lt!17122 e!41456)))

(declare-fun c!19090 () Bool)

(assert (=> d!54929 (= c!19090 lt!17117)))

(assert (=> d!54929 (= lt!17115 e!41455)))

(declare-fun c!19088 () Bool)

(assert (=> d!54929 (= c!19088 (or lt!17117 (is-Or!98 (f!4732 f!4516)) (is-Implies!98 (f!4732 f!4516))))))

(assert (=> d!54929 (= lt!17116 e!41453)))

(declare-fun c!19085 () Bool)

(assert (=> d!54929 (= c!19085 (or lt!17117 (is-Or!98 (f!4732 f!4516)) (is-Implies!98 (f!4732 f!4516)) (is-Not!98 (f!4732 f!4516))))))

(assert (=> d!54929 (= lt!17117 (is-And!98 (f!4732 f!4516)))))

(assert (=> d!54929 (= (simplify!0 (f!4732 f!4516)) lt!17122)))

(declare-fun b!76729 () Bool)

(declare-fun res!38380 () Formula!94)

(assert (=> b!76729 (= e!41454 res!38380)))

(assert (=> b!76729 true))

(declare-fun b!76730 () Bool)

(assert (=> b!76730 (= e!41452 (Or!98 lt!17119 lt!17123))))

(assert (= (and d!54929 c!19085) b!76723))

(assert (= (and d!54929 (not c!19085)) b!76728))

(assert (= (and d!54929 c!19088) b!76719))

(assert (= (and d!54929 (not c!19088)) b!76717))

(assert (= (and b!76718 c!19084) b!76727))

(assert (= (and b!76718 (not c!19084)) b!76725))

(assert (= (and b!76718 c!19086) b!76726))

(assert (= (and b!76718 (not c!19086)) b!76729))

(assert (= (and b!76720 c!19087) b!76721))

(assert (= (and b!76720 (not c!19087)) b!76722))

(assert (= (and b!76718 c!19089) b!76730))

(assert (= (and b!76718 (not c!19089)) b!76720))

(assert (= (and d!54929 c!19090) b!76724))

(assert (= (and d!54929 (not c!19090)) b!76718))

(declare-fun m!73392 () Bool)

(assert (=> b!76719 m!73392))

(declare-fun m!73394 () Bool)

(assert (=> b!76723 m!73394))

(declare-fun m!73396 () Bool)

(assert (=> d!54929 m!73396))

(assert (=> b!76648 d!54929))

(push 1)

(assert (not b!76719))

(assert (not d!54929))

(assert (not b!76678))

(assert (not b!76679))

(assert (not b!76723))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


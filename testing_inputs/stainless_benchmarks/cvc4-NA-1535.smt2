; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10384 () Bool)

(assert start!10384)

(declare-fun res!38944 () Bool)

(declare-fun e!41978 () Bool)

(assert (=> start!10384 (=> (not res!38944) (not e!41978))))

(declare-datatypes () ((Formula!104 (Implies!108 (lhs!1425 Formula!104) (rhs!1425 Formula!104)) (And!108 (lhs!1426 Formula!104) (rhs!1426 Formula!104)) (Or!108 (lhs!1427 Formula!104) (rhs!1427 Formula!104)) (Literal!102 (id!4965 (_ BitVec 32))) (Not!108 (f!4753 Formula!104)))))

(declare-fun formula!94 () Formula!104)

(assert (=> start!10384 (= res!38944 (is-And!108 formula!94))))

(assert (=> start!10384 e!41978))

(assert (=> start!10384 true))

(declare-fun b!77635 () Bool)

(declare-fun res!38945 () Bool)

(assert (=> b!77635 (=> (not res!38945) (not e!41978))))

(declare-fun x$2!413 () Formula!104)

(declare-fun nnf!0 (Formula!104) Formula!104)

(assert (=> b!77635 (= res!38945 (= x$2!413 (And!108 (nnf!0 (lhs!1426 formula!94)) (nnf!0 (rhs!1426 formula!94)))))))

(declare-fun b!77636 () Bool)

(declare-fun isNNF!0 (Formula!104) Bool)

(assert (=> b!77636 (= e!41978 (not (isNNF!0 x$2!413)))))

(assert (= (and start!10384 res!38944) b!77635))

(assert (= (and b!77635 res!38945) b!77636))

(declare-fun m!73496 () Bool)

(assert (=> b!77635 m!73496))

(declare-fun m!73498 () Bool)

(assert (=> b!77635 m!73498))

(declare-fun m!73500 () Bool)

(assert (=> b!77636 m!73500))

(push 1)

(assert (not b!77635))

(assert (not b!77636))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!77701 () Bool)

(declare-fun e!42011 () Formula!104)

(declare-fun lt!17514 () Formula!104)

(assert (=> b!77701 (= e!42011 lt!17514)))

(declare-fun b!77702 () Bool)

(declare-fun e!42023 () Formula!104)

(declare-fun lt!17520 () Formula!104)

(declare-fun lt!17511 () Formula!104)

(assert (=> b!77702 (= e!42023 (And!108 lt!17520 lt!17511))))

(declare-fun b!77703 () Bool)

(declare-fun e!42026 () Formula!104)

(assert (=> b!77703 (= e!42026 lt!17520)))

(declare-fun b!77704 () Bool)

(declare-fun e!42017 () Formula!104)

(declare-fun lt!17518 () Formula!104)

(declare-fun lt!17509 () Formula!104)

(assert (=> b!77704 (= e!42017 (And!108 lt!17518 lt!17509))))

(declare-fun b!77705 () Bool)

(declare-fun e!42014 () Formula!104)

(declare-fun e!42018 () Formula!104)

(assert (=> b!77705 (= e!42014 e!42018)))

(declare-fun c!19499 () Bool)

(declare-fun lt!17522 () Bool)

(assert (=> b!77705 (= c!19499 lt!17522)))

(declare-fun lt!17506 () Formula!104)

(assert (=> b!77705 (= lt!17506 e!42011)))

(declare-fun c!19495 () Bool)

(assert (=> b!77705 (= c!19495 (or lt!17522 (and (is-Not!108 (lhs!1426 formula!94)) (is-And!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Or!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Implies!108 (f!4753 (lhs!1426 formula!94))))))))

(declare-fun lt!17517 () Formula!104)

(declare-fun e!42020 () Formula!104)

(assert (=> b!77705 (= lt!17517 e!42020)))

(declare-fun c!19490 () Bool)

(assert (=> b!77705 (= c!19490 (or lt!17522 (and (is-Not!108 (lhs!1426 formula!94)) (is-And!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Or!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Implies!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Not!108 (f!4753 (lhs!1426 formula!94))))))))

(assert (=> b!77705 (= lt!17522 (is-Implies!108 (lhs!1426 formula!94)))))

(declare-fun b!77706 () Bool)

(declare-fun e!42016 () Formula!104)

(declare-fun res!39005 () Formula!104)

(assert (=> b!77706 (= e!42016 res!39005)))

(assert (=> b!77706 true))

(declare-fun b!77707 () Bool)

(assert (=> b!77707 (= e!42023 e!42014)))

(declare-fun c!19501 () Bool)

(declare-fun lt!17505 () Bool)

(assert (=> b!77707 (= c!19501 lt!17505)))

(declare-fun e!42015 () Formula!104)

(assert (=> b!77707 (= lt!17514 e!42015)))

(declare-fun c!19498 () Bool)

(assert (=> b!77707 (= c!19498 (or lt!17505 (is-Implies!108 (lhs!1426 formula!94)) (and (is-Not!108 (lhs!1426 formula!94)) (is-And!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Or!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Implies!108 (f!4753 (lhs!1426 formula!94))))))))

(declare-fun lt!17519 () Formula!104)

(assert (=> b!77707 (= lt!17519 e!42026)))

(declare-fun c!19497 () Bool)

(assert (=> b!77707 (= c!19497 (or lt!17505 (is-Implies!108 (lhs!1426 formula!94)) (and (is-Not!108 (lhs!1426 formula!94)) (is-And!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Or!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Implies!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Not!108 (f!4753 (lhs!1426 formula!94))))))))

(assert (=> b!77707 (= lt!17505 (is-Or!108 (lhs!1426 formula!94)))))

(declare-fun b!77708 () Bool)

(declare-fun res!39002 () Formula!104)

(assert (=> b!77708 (= e!42015 res!39002)))

(assert (=> b!77708 true))

(declare-fun b!77709 () Bool)

(declare-fun e!42025 () Formula!104)

(declare-fun res!39003 () Formula!104)

(assert (=> b!77709 (= e!42025 res!39003)))

(assert (=> b!77709 true))

(assert (=> b!77709 true))

(declare-fun lt!17507 () Bool)

(declare-fun b!77710 () Bool)

(declare-fun lt!17512 () Formula!104)

(assert (=> b!77710 (= e!42017 (ite lt!17507 (And!108 lt!17512 lt!17509) (ite (and (is-Not!108 (lhs!1426 formula!94)) (is-Not!108 (f!4753 (lhs!1426 formula!94)))) lt!17512 (lhs!1426 formula!94))))))

(assert (=> b!77710 (= lt!17512 e!42025)))

(declare-fun c!19496 () Bool)

(assert (=> b!77710 (= c!19496 (or lt!17507 (and (is-Not!108 (lhs!1426 formula!94)) (is-Not!108 (f!4753 (lhs!1426 formula!94))))))))

(assert (=> b!77710 (= lt!17507 (and (is-Not!108 (lhs!1426 formula!94)) (is-Implies!108 (f!4753 (lhs!1426 formula!94)))))))

(declare-fun b!77711 () Bool)

(declare-fun e!42013 () Formula!104)

(declare-fun lt!17521 () Formula!104)

(assert (=> b!77711 (= e!42013 lt!17521)))

(declare-fun b!77712 () Bool)

(assert (=> b!77712 (= e!42014 (Or!108 lt!17519 lt!17514))))

(declare-fun b!77713 () Bool)

(declare-fun e!42019 () Formula!104)

(declare-fun res!39006 () Formula!104)

(assert (=> b!77713 (= e!42019 res!39006)))

(assert (=> b!77713 true))

(declare-fun b!77714 () Bool)

(declare-fun e!42024 () Formula!104)

(declare-fun lt!17508 () Formula!104)

(assert (=> b!77714 (= e!42024 lt!17508)))

(declare-fun b!77715 () Bool)

(assert (=> b!77715 (= e!42015 lt!17511)))

(declare-fun b!77716 () Bool)

(declare-fun res!39008 () Formula!104)

(assert (=> b!77716 (= e!42020 res!39008)))

(assert (=> b!77716 true))

(declare-fun b!77717 () Bool)

(declare-fun res!39010 () Formula!104)

(assert (=> b!77717 (= e!42024 res!39010)))

(assert (=> b!77717 true))

(declare-fun b!77718 () Bool)

(declare-fun res!39001 () Formula!104)

(assert (=> b!77718 (= e!42011 res!39001)))

(assert (=> b!77718 true))

(declare-fun b!77719 () Bool)

(declare-fun e!42012 () Formula!104)

(assert (=> b!77719 (= e!42012 lt!17506)))

(declare-fun b!77720 () Bool)

(declare-fun res!39007 () Formula!104)

(assert (=> b!77720 (= e!42026 res!39007)))

(assert (=> b!77720 true))

(declare-fun b!77721 () Bool)

(assert (=> b!77721 (= e!42018 (Implies!108 lt!17517 lt!17506))))

(declare-fun d!54963 () Bool)

(declare-fun lt!17516 () Formula!104)

(assert (=> d!54963 (isNNF!0 lt!17516)))

(assert (=> d!54963 (= lt!17516 e!42023)))

(declare-fun c!19491 () Bool)

(declare-fun lt!17515 () Bool)

(assert (=> d!54963 (= c!19491 lt!17515)))

(declare-fun e!42022 () Formula!104)

(assert (=> d!54963 (= lt!17511 e!42022)))

(declare-fun c!19492 () Bool)

(assert (=> d!54963 (= c!19492 (or lt!17515 (is-Or!108 (lhs!1426 formula!94)) (is-Implies!108 (lhs!1426 formula!94)) (and (is-Not!108 (lhs!1426 formula!94)) (is-And!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Or!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Implies!108 (f!4753 (lhs!1426 formula!94))))))))

(assert (=> d!54963 (= lt!17520 e!42019)))

(declare-fun c!19486 () Bool)

(assert (=> d!54963 (= c!19486 (or lt!17515 (is-Or!108 (lhs!1426 formula!94)) (is-Implies!108 (lhs!1426 formula!94)) (and (is-Not!108 (lhs!1426 formula!94)) (is-And!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Or!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Implies!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Not!108 (f!4753 (lhs!1426 formula!94))))))))

(assert (=> d!54963 (= lt!17515 (is-And!108 (lhs!1426 formula!94)))))

(assert (=> d!54963 (= (nnf!0 (lhs!1426 formula!94)) lt!17516)))

(declare-fun b!77722 () Bool)

(assert (=> b!77722 (= e!42016 lt!17517)))

(declare-fun b!77723 () Bool)

(assert (=> b!77723 (= e!42022 (nnf!0 (ite lt!17515 (rhs!1426 (lhs!1426 formula!94)) (ite (is-Or!108 (lhs!1426 formula!94)) (rhs!1427 (lhs!1426 formula!94)) (ite (is-Implies!108 (lhs!1426 formula!94)) (rhs!1425 (lhs!1426 formula!94)) (ite (and (is-Not!108 (lhs!1426 formula!94)) (is-And!108 (f!4753 (lhs!1426 formula!94)))) (Not!108 (rhs!1426 (f!4753 (lhs!1426 formula!94)))) (ite (and (is-Not!108 (lhs!1426 formula!94)) (is-Or!108 (f!4753 (lhs!1426 formula!94)))) (Not!108 (rhs!1427 (f!4753 (lhs!1426 formula!94)))) (Not!108 (rhs!1425 (f!4753 (lhs!1426 formula!94)))))))))))))

(declare-fun b!77724 () Bool)

(assert (=> b!77724 (= e!42019 (nnf!0 (ite lt!17515 (lhs!1426 (lhs!1426 formula!94)) (ite (is-Or!108 (lhs!1426 formula!94)) (lhs!1427 (lhs!1426 formula!94)) (ite (is-Implies!108 (lhs!1426 formula!94)) (lhs!1425 (lhs!1426 formula!94)) (ite (and (is-Not!108 (lhs!1426 formula!94)) (is-And!108 (f!4753 (lhs!1426 formula!94)))) (Not!108 (lhs!1426 (f!4753 (lhs!1426 formula!94)))) (ite (and (is-Not!108 (lhs!1426 formula!94)) (is-Or!108 (f!4753 (lhs!1426 formula!94)))) (Not!108 (lhs!1427 (f!4753 (lhs!1426 formula!94)))) (ite (and (is-Not!108 (lhs!1426 formula!94)) (is-Implies!108 (f!4753 (lhs!1426 formula!94)))) (lhs!1425 (f!4753 (lhs!1426 formula!94))) (f!4753 (f!4753 (lhs!1426 formula!94)))))))))))))

(declare-fun b!77725 () Bool)

(declare-fun res!39009 () Formula!104)

(assert (=> b!77725 (= e!42013 res!39009)))

(assert (=> b!77725 true))

(declare-fun b!77726 () Bool)

(declare-fun res!39004 () Formula!104)

(assert (=> b!77726 (= e!42022 res!39004)))

(assert (=> b!77726 true))

(declare-fun b!77727 () Bool)

(declare-fun e!42021 () Formula!104)

(assert (=> b!77727 (= e!42021 (Or!108 lt!17521 lt!17508))))

(declare-fun b!77728 () Bool)

(assert (=> b!77728 (= e!42018 e!42021)))

(declare-fun c!19493 () Bool)

(declare-fun lt!17513 () Bool)

(assert (=> b!77728 (= c!19493 lt!17513)))

(assert (=> b!77728 (= lt!17508 e!42012)))

(declare-fun c!19489 () Bool)

(assert (=> b!77728 (= c!19489 (or lt!17513 (and (is-Not!108 (lhs!1426 formula!94)) (is-Or!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Implies!108 (f!4753 (lhs!1426 formula!94))))))))

(assert (=> b!77728 (= lt!17521 e!42016)))

(declare-fun c!19488 () Bool)

(assert (=> b!77728 (= c!19488 (or lt!17513 (and (is-Not!108 (lhs!1426 formula!94)) (is-Or!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Implies!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Not!108 (f!4753 (lhs!1426 formula!94))))))))

(assert (=> b!77728 (= lt!17513 (and (is-Not!108 (lhs!1426 formula!94)) (is-And!108 (f!4753 (lhs!1426 formula!94)))))))

(declare-fun b!77729 () Bool)

(declare-fun res!39011 () Formula!104)

(assert (=> b!77729 (= e!42012 res!39011)))

(assert (=> b!77729 true))

(declare-fun b!77730 () Bool)

(assert (=> b!77730 (= e!42021 e!42017)))

(declare-fun c!19500 () Bool)

(declare-fun lt!17510 () Bool)

(assert (=> b!77730 (= c!19500 lt!17510)))

(assert (=> b!77730 (= lt!17509 e!42024)))

(declare-fun c!19487 () Bool)

(assert (=> b!77730 (= c!19487 (or lt!17510 (and (is-Not!108 (lhs!1426 formula!94)) (is-Implies!108 (f!4753 (lhs!1426 formula!94))))))))

(assert (=> b!77730 (= lt!17518 e!42013)))

(declare-fun c!19494 () Bool)

(assert (=> b!77730 (= c!19494 (or lt!17510 (and (is-Not!108 (lhs!1426 formula!94)) (is-Implies!108 (f!4753 (lhs!1426 formula!94)))) (and (is-Not!108 (lhs!1426 formula!94)) (is-Not!108 (f!4753 (lhs!1426 formula!94))))))))

(assert (=> b!77730 (= lt!17510 (and (is-Not!108 (lhs!1426 formula!94)) (is-Or!108 (f!4753 (lhs!1426 formula!94)))))))

(declare-fun b!77731 () Bool)

(assert (=> b!77731 (= e!42025 lt!17518)))

(declare-fun b!77732 () Bool)

(assert (=> b!77732 (= e!42020 lt!17519)))

(assert (= (and d!54963 c!19486) b!77724))

(assert (= (and d!54963 (not c!19486)) b!77713))

(assert (= (and d!54963 c!19492) b!77723))

(assert (= (and d!54963 (not c!19492)) b!77726))

(assert (= (and b!77707 c!19497) b!77703))

(assert (= (and b!77707 (not c!19497)) b!77720))

(assert (= (and b!77707 c!19498) b!77715))

(assert (= (and b!77707 (not c!19498)) b!77708))

(assert (= (and b!77705 c!19490) b!77732))

(assert (= (and b!77705 (not c!19490)) b!77716))

(assert (= (and b!77705 c!19495) b!77701))

(assert (= (and b!77705 (not c!19495)) b!77718))

(assert (= (and b!77728 c!19488) b!77722))

(assert (= (and b!77728 (not c!19488)) b!77706))

(assert (= (and b!77728 c!19489) b!77719))

(assert (= (and b!77728 (not c!19489)) b!77729))

(assert (= (and b!77730 c!19494) b!77711))

(assert (= (and b!77730 (not c!19494)) b!77725))

(assert (= (and b!77730 c!19487) b!77714))

(assert (= (and b!77730 (not c!19487)) b!77717))

(assert (= (and b!77710 c!19496) b!77731))

(assert (= (and b!77710 (not c!19496)) b!77709))

(assert (= (and b!77730 c!19500) b!77704))

(assert (= (and b!77730 (not c!19500)) b!77710))

(assert (= (and b!77728 c!19493) b!77727))

(assert (= (and b!77728 (not c!19493)) b!77730))

(assert (= (and b!77705 c!19499) b!77721))

(assert (= (and b!77705 (not c!19499)) b!77728))

(assert (= (and b!77707 c!19501) b!77712))

(assert (= (and b!77707 (not c!19501)) b!77705))

(assert (= (and d!54963 c!19491) b!77702))

(assert (= (and d!54963 (not c!19491)) b!77707))

(declare-fun m!73502 () Bool)

(assert (=> d!54963 m!73502))

(declare-fun m!73504 () Bool)

(assert (=> b!77723 m!73504))

(declare-fun m!73506 () Bool)

(assert (=> b!77724 m!73506))

(assert (=> b!77635 d!54963))

(declare-fun b!77733 () Bool)

(declare-fun e!42027 () Formula!104)

(declare-fun lt!17532 () Formula!104)

(assert (=> b!77733 (= e!42027 lt!17532)))

(declare-fun b!77734 () Bool)

(declare-fun e!42039 () Formula!104)

(declare-fun lt!17538 () Formula!104)

(declare-fun lt!17529 () Formula!104)

(assert (=> b!77734 (= e!42039 (And!108 lt!17538 lt!17529))))

(declare-fun b!77735 () Bool)

(declare-fun e!42042 () Formula!104)

(assert (=> b!77735 (= e!42042 lt!17538)))

(declare-fun b!77736 () Bool)

(declare-fun e!42033 () Formula!104)

(declare-fun lt!17536 () Formula!104)

(declare-fun lt!17527 () Formula!104)

(assert (=> b!77736 (= e!42033 (And!108 lt!17536 lt!17527))))

(declare-fun b!77737 () Bool)

(declare-fun e!42030 () Formula!104)

(declare-fun e!42034 () Formula!104)

(assert (=> b!77737 (= e!42030 e!42034)))

(declare-fun c!19515 () Bool)

(declare-fun lt!17540 () Bool)

(assert (=> b!77737 (= c!19515 lt!17540)))

(declare-fun lt!17524 () Formula!104)

(assert (=> b!77737 (= lt!17524 e!42027)))

(declare-fun c!19511 () Bool)

(assert (=> b!77737 (= c!19511 (or lt!17540 (and (is-Not!108 (rhs!1426 formula!94)) (is-And!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Or!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Implies!108 (f!4753 (rhs!1426 formula!94))))))))

(declare-fun lt!17535 () Formula!104)

(declare-fun e!42036 () Formula!104)

(assert (=> b!77737 (= lt!17535 e!42036)))

(declare-fun c!19506 () Bool)

(assert (=> b!77737 (= c!19506 (or lt!17540 (and (is-Not!108 (rhs!1426 formula!94)) (is-And!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Or!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Implies!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Not!108 (f!4753 (rhs!1426 formula!94))))))))

(assert (=> b!77737 (= lt!17540 (is-Implies!108 (rhs!1426 formula!94)))))

(declare-fun b!77738 () Bool)

(declare-fun e!42032 () Formula!104)

(declare-fun res!39016 () Formula!104)

(assert (=> b!77738 (= e!42032 res!39016)))

(assert (=> b!77738 true))

(declare-fun b!77739 () Bool)

(assert (=> b!77739 (= e!42039 e!42030)))

(declare-fun c!19517 () Bool)

(declare-fun lt!17523 () Bool)

(assert (=> b!77739 (= c!19517 lt!17523)))

(declare-fun e!42031 () Formula!104)

(assert (=> b!77739 (= lt!17532 e!42031)))

(declare-fun c!19514 () Bool)

(assert (=> b!77739 (= c!19514 (or lt!17523 (is-Implies!108 (rhs!1426 formula!94)) (and (is-Not!108 (rhs!1426 formula!94)) (is-And!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Or!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Implies!108 (f!4753 (rhs!1426 formula!94))))))))

(declare-fun lt!17537 () Formula!104)

(assert (=> b!77739 (= lt!17537 e!42042)))

(declare-fun c!19513 () Bool)

(assert (=> b!77739 (= c!19513 (or lt!17523 (is-Implies!108 (rhs!1426 formula!94)) (and (is-Not!108 (rhs!1426 formula!94)) (is-And!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Or!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Implies!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Not!108 (f!4753 (rhs!1426 formula!94))))))))

(assert (=> b!77739 (= lt!17523 (is-Or!108 (rhs!1426 formula!94)))))

(declare-fun b!77740 () Bool)

(declare-fun res!39013 () Formula!104)

(assert (=> b!77740 (= e!42031 res!39013)))

(assert (=> b!77740 true))

(declare-fun b!77741 () Bool)

(declare-fun e!42041 () Formula!104)

(declare-fun res!39014 () Formula!104)

(assert (=> b!77741 (= e!42041 res!39014)))

(assert (=> b!77741 true))

(assert (=> b!77741 true))

(declare-fun b!77742 () Bool)

(declare-fun lt!17525 () Bool)

(declare-fun lt!17530 () Formula!104)

(assert (=> b!77742 (= e!42033 (ite lt!17525 (And!108 lt!17530 lt!17527) (ite (and (is-Not!108 (rhs!1426 formula!94)) (is-Not!108 (f!4753 (rhs!1426 formula!94)))) lt!17530 (rhs!1426 formula!94))))))

(assert (=> b!77742 (= lt!17530 e!42041)))

(declare-fun c!19512 () Bool)

(assert (=> b!77742 (= c!19512 (or lt!17525 (and (is-Not!108 (rhs!1426 formula!94)) (is-Not!108 (f!4753 (rhs!1426 formula!94))))))))

(assert (=> b!77742 (= lt!17525 (and (is-Not!108 (rhs!1426 formula!94)) (is-Implies!108 (f!4753 (rhs!1426 formula!94)))))))

(declare-fun b!77743 () Bool)

(declare-fun e!42029 () Formula!104)

(declare-fun lt!17539 () Formula!104)

(assert (=> b!77743 (= e!42029 lt!17539)))

(declare-fun b!77744 () Bool)

(assert (=> b!77744 (= e!42030 (Or!108 lt!17537 lt!17532))))

(declare-fun b!77745 () Bool)

(declare-fun e!42035 () Formula!104)

(declare-fun res!39017 () Formula!104)

(assert (=> b!77745 (= e!42035 res!39017)))

(assert (=> b!77745 true))

(declare-fun b!77746 () Bool)

(declare-fun e!42040 () Formula!104)

(declare-fun lt!17526 () Formula!104)

(assert (=> b!77746 (= e!42040 lt!17526)))

(declare-fun b!77747 () Bool)

(assert (=> b!77747 (= e!42031 lt!17529)))

(declare-fun b!77748 () Bool)

(declare-fun res!39019 () Formula!104)

(assert (=> b!77748 (= e!42036 res!39019)))

(assert (=> b!77748 true))

(declare-fun b!77749 () Bool)

(declare-fun res!39021 () Formula!104)

(assert (=> b!77749 (= e!42040 res!39021)))

(assert (=> b!77749 true))

(declare-fun b!77750 () Bool)

(declare-fun res!39012 () Formula!104)

(assert (=> b!77750 (= e!42027 res!39012)))

(assert (=> b!77750 true))

(declare-fun b!77751 () Bool)

(declare-fun e!42028 () Formula!104)

(assert (=> b!77751 (= e!42028 lt!17524)))

(declare-fun b!77752 () Bool)

(declare-fun res!39018 () Formula!104)

(assert (=> b!77752 (= e!42042 res!39018)))

(assert (=> b!77752 true))

(declare-fun b!77753 () Bool)

(assert (=> b!77753 (= e!42034 (Implies!108 lt!17535 lt!17524))))

(declare-fun d!54965 () Bool)

(declare-fun lt!17534 () Formula!104)

(assert (=> d!54965 (isNNF!0 lt!17534)))

(assert (=> d!54965 (= lt!17534 e!42039)))

(declare-fun c!19507 () Bool)

(declare-fun lt!17533 () Bool)

(assert (=> d!54965 (= c!19507 lt!17533)))

(declare-fun e!42038 () Formula!104)

(assert (=> d!54965 (= lt!17529 e!42038)))

(declare-fun c!19508 () Bool)

(assert (=> d!54965 (= c!19508 (or lt!17533 (is-Or!108 (rhs!1426 formula!94)) (is-Implies!108 (rhs!1426 formula!94)) (and (is-Not!108 (rhs!1426 formula!94)) (is-And!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Or!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Implies!108 (f!4753 (rhs!1426 formula!94))))))))

(assert (=> d!54965 (= lt!17538 e!42035)))

(declare-fun c!19502 () Bool)

(assert (=> d!54965 (= c!19502 (or lt!17533 (is-Or!108 (rhs!1426 formula!94)) (is-Implies!108 (rhs!1426 formula!94)) (and (is-Not!108 (rhs!1426 formula!94)) (is-And!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Or!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Implies!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Not!108 (f!4753 (rhs!1426 formula!94))))))))

(assert (=> d!54965 (= lt!17533 (is-And!108 (rhs!1426 formula!94)))))

(assert (=> d!54965 (= (nnf!0 (rhs!1426 formula!94)) lt!17534)))

(declare-fun b!77754 () Bool)

(assert (=> b!77754 (= e!42032 lt!17535)))

(declare-fun b!77755 () Bool)

(assert (=> b!77755 (= e!42038 (nnf!0 (ite lt!17533 (rhs!1426 (rhs!1426 formula!94)) (ite (is-Or!108 (rhs!1426 formula!94)) (rhs!1427 (rhs!1426 formula!94)) (ite (is-Implies!108 (rhs!1426 formula!94)) (rhs!1425 (rhs!1426 formula!94)) (ite (and (is-Not!108 (rhs!1426 formula!94)) (is-And!108 (f!4753 (rhs!1426 formula!94)))) (Not!108 (rhs!1426 (f!4753 (rhs!1426 formula!94)))) (ite (and (is-Not!108 (rhs!1426 formula!94)) (is-Or!108 (f!4753 (rhs!1426 formula!94)))) (Not!108 (rhs!1427 (f!4753 (rhs!1426 formula!94)))) (Not!108 (rhs!1425 (f!4753 (rhs!1426 formula!94)))))))))))))

(declare-fun b!77756 () Bool)

(assert (=> b!77756 (= e!42035 (nnf!0 (ite lt!17533 (lhs!1426 (rhs!1426 formula!94)) (ite (is-Or!108 (rhs!1426 formula!94)) (lhs!1427 (rhs!1426 formula!94)) (ite (is-Implies!108 (rhs!1426 formula!94)) (lhs!1425 (rhs!1426 formula!94)) (ite (and (is-Not!108 (rhs!1426 formula!94)) (is-And!108 (f!4753 (rhs!1426 formula!94)))) (Not!108 (lhs!1426 (f!4753 (rhs!1426 formula!94)))) (ite (and (is-Not!108 (rhs!1426 formula!94)) (is-Or!108 (f!4753 (rhs!1426 formula!94)))) (Not!108 (lhs!1427 (f!4753 (rhs!1426 formula!94)))) (ite (and (is-Not!108 (rhs!1426 formula!94)) (is-Implies!108 (f!4753 (rhs!1426 formula!94)))) (lhs!1425 (f!4753 (rhs!1426 formula!94))) (f!4753 (f!4753 (rhs!1426 formula!94)))))))))))))

(declare-fun b!77757 () Bool)

(declare-fun res!39020 () Formula!104)

(assert (=> b!77757 (= e!42029 res!39020)))

(assert (=> b!77757 true))

(declare-fun b!77758 () Bool)

(declare-fun res!39015 () Formula!104)

(assert (=> b!77758 (= e!42038 res!39015)))

(assert (=> b!77758 true))

(declare-fun b!77759 () Bool)

(declare-fun e!42037 () Formula!104)

(assert (=> b!77759 (= e!42037 (Or!108 lt!17539 lt!17526))))

(declare-fun b!77760 () Bool)

(assert (=> b!77760 (= e!42034 e!42037)))

(declare-fun c!19509 () Bool)

(declare-fun lt!17531 () Bool)

(assert (=> b!77760 (= c!19509 lt!17531)))

(assert (=> b!77760 (= lt!17526 e!42028)))

(declare-fun c!19505 () Bool)

(assert (=> b!77760 (= c!19505 (or lt!17531 (and (is-Not!108 (rhs!1426 formula!94)) (is-Or!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Implies!108 (f!4753 (rhs!1426 formula!94))))))))

(assert (=> b!77760 (= lt!17539 e!42032)))

(declare-fun c!19504 () Bool)

(assert (=> b!77760 (= c!19504 (or lt!17531 (and (is-Not!108 (rhs!1426 formula!94)) (is-Or!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Implies!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Not!108 (f!4753 (rhs!1426 formula!94))))))))

(assert (=> b!77760 (= lt!17531 (and (is-Not!108 (rhs!1426 formula!94)) (is-And!108 (f!4753 (rhs!1426 formula!94)))))))

(declare-fun b!77761 () Bool)

(declare-fun res!39022 () Formula!104)

(assert (=> b!77761 (= e!42028 res!39022)))

(assert (=> b!77761 true))

(declare-fun b!77762 () Bool)

(assert (=> b!77762 (= e!42037 e!42033)))

(declare-fun c!19516 () Bool)

(declare-fun lt!17528 () Bool)

(assert (=> b!77762 (= c!19516 lt!17528)))

(assert (=> b!77762 (= lt!17527 e!42040)))

(declare-fun c!19503 () Bool)

(assert (=> b!77762 (= c!19503 (or lt!17528 (and (is-Not!108 (rhs!1426 formula!94)) (is-Implies!108 (f!4753 (rhs!1426 formula!94))))))))

(assert (=> b!77762 (= lt!17536 e!42029)))

(declare-fun c!19510 () Bool)

(assert (=> b!77762 (= c!19510 (or lt!17528 (and (is-Not!108 (rhs!1426 formula!94)) (is-Implies!108 (f!4753 (rhs!1426 formula!94)))) (and (is-Not!108 (rhs!1426 formula!94)) (is-Not!108 (f!4753 (rhs!1426 formula!94))))))))

(assert (=> b!77762 (= lt!17528 (and (is-Not!108 (rhs!1426 formula!94)) (is-Or!108 (f!4753 (rhs!1426 formula!94)))))))

(declare-fun b!77763 () Bool)

(assert (=> b!77763 (= e!42041 lt!17536)))

(declare-fun b!77764 () Bool)

(assert (=> b!77764 (= e!42036 lt!17537)))

(assert (= (and d!54965 c!19502) b!77756))

(assert (= (and d!54965 (not c!19502)) b!77745))

(assert (= (and d!54965 c!19508) b!77755))

(assert (= (and d!54965 (not c!19508)) b!77758))

(assert (= (and b!77739 c!19513) b!77735))

(assert (= (and b!77739 (not c!19513)) b!77752))

(assert (= (and b!77739 c!19514) b!77747))

(assert (= (and b!77739 (not c!19514)) b!77740))

(assert (= (and b!77737 c!19506) b!77764))

(assert (= (and b!77737 (not c!19506)) b!77748))

(assert (= (and b!77737 c!19511) b!77733))

(assert (= (and b!77737 (not c!19511)) b!77750))

(assert (= (and b!77760 c!19504) b!77754))

(assert (= (and b!77760 (not c!19504)) b!77738))

(assert (= (and b!77760 c!19505) b!77751))

(assert (= (and b!77760 (not c!19505)) b!77761))

(assert (= (and b!77762 c!19510) b!77743))

(assert (= (and b!77762 (not c!19510)) b!77757))

(assert (= (and b!77762 c!19503) b!77746))

(assert (= (and b!77762 (not c!19503)) b!77749))

(assert (= (and b!77742 c!19512) b!77763))

(assert (= (and b!77742 (not c!19512)) b!77741))

(assert (= (and b!77762 c!19516) b!77736))

(assert (= (and b!77762 (not c!19516)) b!77742))

(assert (= (and b!77760 c!19509) b!77759))

(assert (= (and b!77760 (not c!19509)) b!77762))

(assert (= (and b!77737 c!19515) b!77753))

(assert (= (and b!77737 (not c!19515)) b!77760))

(assert (= (and b!77739 c!19517) b!77744))

(assert (= (and b!77739 (not c!19517)) b!77737))

(assert (= (and d!54965 c!19507) b!77734))

(assert (= (and d!54965 (not c!19507)) b!77739))

(declare-fun m!73508 () Bool)

(assert (=> d!54965 m!73508))

(declare-fun m!73510 () Bool)

(assert (=> b!77755 m!73510))

(declare-fun m!73512 () Bool)

(assert (=> b!77756 m!73512))

(assert (=> b!77635 d!54965))

(declare-fun b!77813 () Bool)

(declare-fun e!42076 () Bool)

(declare-fun e!42072 () Bool)

(assert (=> b!77813 (= e!42076 e!42072)))

(declare-fun res!39057 () Bool)

(assert (=> b!77813 (=> (not res!39057) (not e!42072))))

(declare-fun lt!17565 () Bool)

(assert (=> b!77813 (= res!39057 (not lt!17565))))

(declare-fun b!77814 () Bool)

(declare-fun e!42074 () Formula!104)

(assert (=> b!77814 (= e!42074 (rhs!1425 x$2!413))))

(declare-fun b!77815 () Bool)

(declare-fun e!42075 () Bool)

(declare-fun e!42082 () Bool)

(assert (=> b!77815 (= e!42075 e!42082)))

(declare-fun res!39061 () Bool)

(assert (=> b!77815 (=> (not res!39061) (not e!42082))))

(declare-fun lt!17562 () Bool)

(assert (=> b!77815 (= res!39061 lt!17562)))

(declare-fun b!77816 () Bool)

(declare-fun e!42077 () Bool)

(declare-fun lt!17566 () Bool)

(assert (=> b!77816 (= e!42077 lt!17566)))

(declare-fun b!77817 () Bool)

(declare-fun e!42081 () Bool)

(assert (=> b!77817 (= e!42081 (isNNF!0 (ite lt!17565 (lhs!1426 x$2!413) (ite (is-Or!108 x$2!413) (lhs!1427 x$2!413) (lhs!1425 x$2!413)))))))

(declare-fun b!77818 () Bool)

(declare-fun e!42080 () Bool)

(assert (=> b!77818 (= e!42080 e!42077)))

(declare-fun c!19545 () Bool)

(declare-fun lt!17564 () Bool)

(assert (=> b!77818 (= c!19545 (or lt!17564 (is-Implies!108 x$2!413)))))

(declare-fun b!77819 () Bool)

(declare-fun e!42079 () Bool)

(declare-fun e!42071 () Formula!104)

(assert (=> b!77819 (= e!42079 (isNNF!0 e!42071))))

(declare-fun c!19538 () Bool)

(declare-fun lt!17560 () Bool)

(assert (=> b!77819 (= c!19538 lt!17560)))

(declare-fun b!77820 () Bool)

(assert (=> b!77820 (= e!42074 (rhs!1427 x$2!413))))

(declare-fun b!77821 () Bool)

(declare-fun e!42073 () Bool)

(declare-fun res!39062 () Bool)

(assert (=> b!77821 (= e!42073 res!39062)))

(assert (=> b!77821 true))

(declare-fun b!77822 () Bool)

(assert (=> b!77822 (= e!42075 (or (and (is-Not!108 x$2!413) (is-Literal!102 (f!4753 x$2!413))) (not (is-Not!108 x$2!413))))))

(declare-fun b!77823 () Bool)

(assert (=> b!77823 (= e!42073 lt!17566)))

(declare-fun b!77824 () Bool)

(declare-fun e!42078 () Bool)

(assert (=> b!77824 (= e!42078 e!42075)))

(declare-fun c!19542 () Bool)

(declare-fun lt!17559 () Bool)

(assert (=> b!77824 (= c!19542 (or lt!17559 (is-Implies!108 x$2!413)))))

(declare-fun e!42083 () Bool)

(assert (=> b!77824 (= lt!17562 e!42083)))

(declare-fun c!19543 () Bool)

(assert (=> b!77824 (= c!19543 (or lt!17559 (is-Implies!108 x$2!413)))))

(assert (=> b!77824 (= lt!17559 (is-Or!108 x$2!413))))

(declare-fun b!77825 () Bool)

(declare-fun e!42084 () Bool)

(declare-fun res!39059 () Bool)

(assert (=> b!77825 (= e!42084 res!39059)))

(assert (=> b!77825 true))

(assert (=> b!77825 true))

(declare-fun b!77826 () Bool)

(declare-fun res!39066 () Bool)

(assert (=> b!77826 (= e!42079 res!39066)))

(assert (=> b!77826 true))

(declare-fun b!77827 () Bool)

(assert (=> b!77827 (= e!42082 e!42084)))

(declare-fun c!19539 () Bool)

(assert (=> b!77827 (= c!19539 (or (and lt!17559 lt!17562) (and (not lt!17559) (is-Implies!108 x$2!413) lt!17562)))))

(declare-fun b!77828 () Bool)

(assert (=> b!77828 (= e!42071 e!42074)))

(declare-fun c!19541 () Bool)

(assert (=> b!77828 (= c!19541 e!42080)))

(declare-fun res!39060 () Bool)

(assert (=> b!77828 (=> (not res!39060) (not e!42080))))

(assert (=> b!77828 (= res!39060 lt!17564)))

(assert (=> b!77828 (= lt!17564 (is-Or!108 x$2!413))))

(declare-fun b!77829 () Bool)

(declare-fun lt!17567 () Bool)

(declare-fun lt!17563 () Bool)

(assert (=> b!77829 (= e!42072 (or (and lt!17567 lt!17563) (and (not lt!17567) (is-Implies!108 x$2!413) lt!17563)))))

(assert (=> b!77829 (= lt!17563 e!42073)))

(declare-fun c!19546 () Bool)

(assert (=> b!77829 (= c!19546 (or lt!17567 (is-Implies!108 x$2!413)))))

(assert (=> b!77829 (= lt!17567 (is-Or!108 x$2!413))))

(declare-fun d!54967 () Bool)

(declare-fun c!19547 () Bool)

(assert (=> d!54967 (= c!19547 lt!17565)))

(declare-fun lt!17561 () Bool)

(assert (=> d!54967 (= lt!17561 e!42079)))

(declare-fun c!19544 () Bool)

(assert (=> d!54967 (= c!19544 e!42076)))

(declare-fun res!39065 () Bool)

(assert (=> d!54967 (=> res!39065 e!42076)))

(assert (=> d!54967 (= res!39065 lt!17560)))

(assert (=> d!54967 (= lt!17560 (and lt!17565 lt!17566))))

(assert (=> d!54967 (= lt!17566 e!42081)))

(declare-fun c!19540 () Bool)

(assert (=> d!54967 (= c!19540 (or lt!17565 (is-Or!108 x$2!413) (is-Implies!108 x$2!413)))))

(assert (=> d!54967 (= lt!17565 (is-And!108 x$2!413))))

(assert (=> d!54967 (= (isNNF!0 x$2!413) e!42078)))

(declare-fun b!77830 () Bool)

(assert (=> b!77830 (= e!42078 (and lt!17566 lt!17561))))

(declare-fun b!77831 () Bool)

(declare-fun res!39058 () Bool)

(assert (=> b!77831 (= e!42083 res!39058)))

(assert (=> b!77831 true))

(declare-fun b!77832 () Bool)

(declare-fun res!39063 () Bool)

(assert (=> b!77832 (= e!42081 res!39063)))

(assert (=> b!77832 true))

(declare-fun b!77833 () Bool)

(assert (=> b!77833 (= e!42083 lt!17566)))

(declare-fun b!77834 () Bool)

(assert (=> b!77834 (= e!42084 lt!17561)))

(declare-fun b!77835 () Bool)

(declare-fun res!39064 () Bool)

(assert (=> b!77835 (= e!42077 res!39064)))

(assert (=> b!77835 true))

(declare-fun b!77836 () Bool)

(assert (=> b!77836 (= e!42071 (rhs!1426 x$2!413))))

(assert (= (and d!54967 c!19540) b!77817))

(assert (= (and d!54967 (not c!19540)) b!77832))

(assert (= (and d!54967 (not res!39065)) b!77813))

(assert (= (and b!77813 res!39057) b!77829))

(assert (= (and b!77829 c!19546) b!77823))

(assert (= (and b!77829 (not c!19546)) b!77821))

(assert (= (and b!77828 res!39060) b!77818))

(assert (= (and b!77818 c!19545) b!77816))

(assert (= (and b!77818 (not c!19545)) b!77835))

(assert (= (and b!77828 c!19541) b!77820))

(assert (= (and b!77828 (not c!19541)) b!77814))

(assert (= (and b!77819 c!19538) b!77836))

(assert (= (and b!77819 (not c!19538)) b!77828))

(assert (= (and d!54967 c!19544) b!77819))

(assert (= (and d!54967 (not c!19544)) b!77826))

(assert (= (and b!77824 c!19543) b!77833))

(assert (= (and b!77824 (not c!19543)) b!77831))

(assert (= (and b!77815 res!39061) b!77827))

(assert (= (and b!77827 c!19539) b!77834))

(assert (= (and b!77827 (not c!19539)) b!77825))

(assert (= (and b!77824 c!19542) b!77815))

(assert (= (and b!77824 (not c!19542)) b!77822))

(assert (= (and d!54967 c!19547) b!77830))

(assert (= (and d!54967 (not c!19547)) b!77824))

(declare-fun m!73514 () Bool)

(assert (=> b!77817 m!73514))

(declare-fun m!73516 () Bool)

(assert (=> b!77819 m!73516))

(assert (=> b!77636 d!54967))

(push 1)

(assert (not b!77724))

(assert (not b!77817))

(assert (not b!77723))

(assert (not b!77756))

(assert (not b!77755))

(assert (not d!54965))

(assert (not b!77819))

(assert (not d!54963))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11232 () Bool)

(assert start!11232)

(declare-fun b!85685 () Bool)

(assert (=> b!85685 true))

(declare-fun res!44517 () Bool)

(declare-fun e!46468 () Bool)

(assert (=> start!11232 (=> (not res!44517) (not e!46468))))

(declare-datatypes () ((List!714 (Cons!671 (h!1044 Int) (t!48159 List!714)) (Nil!673))))

(declare-fun ls!53 () List!714)

(assert (=> start!11232 (= res!44517 (is-Cons!671 ls!53))))

(assert (=> start!11232 e!46468))

(assert (=> start!11232 true))

(declare-fun b!85684 () Bool)

(declare-fun res!44518 () Bool)

(assert (=> b!85684 (=> (not res!44518) (not e!46468))))

(declare-fun x!29255 () Int)

(declare-fun inductVal!905 () Bool)

(declare-fun filter_equal_sorted!0 (List!714 Int) Bool)

(assert (=> b!85684 (= res!44518 (= inductVal!905 (filter_equal_sorted!0 (t!48159 ls!53) x!29255)))))

(declare-fun lambda!10805 () Int)

(declare-fun isSorted!1 (List!714) Bool)

(declare-fun filter!47 (List!714 Int) List!714)

(assert (=> b!85685 (= e!46468 (not (isSorted!1 (filter!47 ls!53 lambda!10805))))))

(assert (= (and start!11232 res!44517) b!85684))

(assert (= (and b!85684 res!44518) b!85685))

(declare-fun m!81498 () Bool)

(assert (=> b!85684 m!81498))

(declare-fun m!81500 () Bool)

(assert (=> b!85685 m!81500))

(assert (=> b!85685 m!81500))

(declare-fun m!81502 () Bool)

(assert (=> b!85685 m!81502))

(push 1)

(assert (not b!85685))

(assert (not b!85684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57445 () Bool)

(declare-fun res!44523 () Bool)

(declare-fun e!46473 () Bool)

(assert (=> d!57445 (=> res!44523 e!46473)))

(assert (=> d!57445 (= res!44523 (not (and (is-Cons!671 (filter!47 ls!53 lambda!10805)) (is-Cons!671 (t!48159 (filter!47 ls!53 lambda!10805))))))))

(assert (=> d!57445 (= (isSorted!1 (filter!47 ls!53 lambda!10805)) e!46473)))

(declare-fun b!85692 () Bool)

(declare-fun e!46474 () Bool)

(assert (=> b!85692 (= e!46473 e!46474)))

(declare-fun res!44524 () Bool)

(assert (=> b!85692 (=> (not res!44524) (not e!46474))))

(assert (=> b!85692 (= res!44524 (<= (h!1044 (filter!47 ls!53 lambda!10805)) (h!1044 (t!48159 (filter!47 ls!53 lambda!10805)))))))

(declare-fun b!85693 () Bool)

(assert (=> b!85693 (= e!46474 (isSorted!1 (t!48159 (filter!47 ls!53 lambda!10805))))))

(assert (= (and d!57445 (not res!44523)) b!85692))

(assert (= (and b!85692 res!44524) b!85693))

(declare-fun m!81504 () Bool)

(assert (=> b!85693 m!81504))

(assert (=> b!85685 d!57445))

(declare-fun b!85708 () Bool)

(declare-fun e!46484 () List!714)

(declare-fun lt!19944 () List!714)

(assert (=> b!85708 (= e!46484 (Cons!671 (h!1044 ls!53) lt!19944))))

(declare-fun b!85709 () Bool)

(declare-fun e!46485 () List!714)

(assert (=> b!85709 (= e!46485 Nil!673)))

(declare-fun b!85710 () Bool)

(declare-fun res!44535 () Bool)

(declare-fun e!46483 () Bool)

(assert (=> b!85710 (=> (not res!44535) (not e!46483))))

(declare-fun lt!19945 () List!714)

(declare-fun content!155 (List!714) (Set Int))

(assert (=> b!85710 (= res!44535 (subset (content!155 lt!19945) (content!155 ls!53)))))

(declare-fun b!85711 () Bool)

(assert (=> b!85711 (= e!46485 e!46484)))

(declare-fun c!21261 () Bool)

(declare-fun e!46486 () Bool)

(assert (=> b!85711 (= c!21261 e!46486)))

(declare-fun res!44536 () Bool)

(assert (=> b!85711 (=> (not res!44536) (not e!46486))))

(assert (=> b!85711 (= res!44536 (is-Cons!671 ls!53))))

(assert (=> b!85711 (= lt!19944 (filter!47 (t!48159 ls!53) lambda!10805))))

(declare-fun b!85712 () Bool)

(declare-fun forall!61 (List!714 Int) Bool)

(assert (=> b!85712 (= e!46483 (forall!61 lt!19945 lambda!10805))))

(declare-fun d!57447 () Bool)

(assert (=> d!57447 e!46483))

(declare-fun res!44537 () Bool)

(assert (=> d!57447 (=> (not res!44537) (not e!46483))))

(declare-fun size!683 (List!714) Int)

(assert (=> d!57447 (= res!44537 (<= (size!683 lt!19945) (size!683 ls!53)))))

(assert (=> d!57447 (= lt!19945 e!46485)))

(declare-fun c!21262 () Bool)

(assert (=> d!57447 (= c!21262 (is-Nil!673 ls!53))))

(assert (=> d!57447 (= (filter!47 ls!53 lambda!10805) lt!19945)))

(declare-fun b!85713 () Bool)

(assert (=> b!85713 (= e!46484 lt!19944)))

(declare-fun b!85714 () Bool)

(declare-fun dynLambda!1022 (Int Int) Bool)

(assert (=> b!85714 (= e!46486 (dynLambda!1022 lambda!10805 (h!1044 ls!53)))))

(assert (= (and b!85711 res!44536) b!85714))

(assert (= (and b!85711 c!21261) b!85708))

(assert (= (and b!85711 (not c!21261)) b!85713))

(assert (= (and d!57447 c!21262) b!85709))

(assert (= (and d!57447 (not c!21262)) b!85711))

(assert (= (and d!57447 res!44537) b!85710))

(assert (= (and b!85710 res!44535) b!85712))

(declare-fun b_lambda!16903 () Bool)

(assert (=> (not b_lambda!16903) (not b!85714)))

(declare-fun m!81506 () Bool)

(assert (=> b!85714 m!81506))

(declare-fun m!81508 () Bool)

(assert (=> b!85710 m!81508))

(declare-fun m!81510 () Bool)

(assert (=> b!85710 m!81510))

(declare-fun m!81512 () Bool)

(assert (=> b!85711 m!81512))

(declare-fun m!81514 () Bool)

(assert (=> b!85712 m!81514))

(declare-fun m!81516 () Bool)

(assert (=> d!57447 m!81516))

(declare-fun m!81518 () Bool)

(assert (=> d!57447 m!81518))

(assert (=> b!85685 d!57447))

(declare-fun bs!41085 () Bool)

(declare-fun b!85719 () Bool)

(assert (= bs!41085 (and b!85719 b!85685)))

(declare-fun lambda!10810 () Int)

(assert (=> bs!41085 (= lambda!10810 lambda!10805)))

(assert (=> b!85719 true))

(declare-fun bs!41086 () Bool)

(declare-fun b!85720 () Bool)

(assert (= bs!41086 (and b!85720 b!85685)))

(declare-fun lambda!10811 () Int)

(assert (=> bs!41086 (= lambda!10811 lambda!10805)))

(declare-fun bs!41087 () Bool)

(assert (= bs!41087 (and b!85720 b!85719)))

(assert (=> bs!41087 (= lambda!10811 lambda!10810)))

(assert (=> b!85720 true))

(declare-fun e!46489 () Bool)

(assert (=> b!85719 (= e!46489 (isSorted!1 (filter!47 (t!48159 ls!53) lambda!10810)))))

(declare-fun lt!19948 () Bool)

(assert (=> b!85719 (= lt!19948 (filter_equal_sorted!0 (t!48159 (t!48159 ls!53)) x!29255))))

(declare-fun d!57449 () Bool)

(assert (=> d!57449 e!46489))

(declare-fun c!21265 () Bool)

(assert (=> d!57449 (= c!21265 (is-Cons!671 (t!48159 ls!53)))))

(assert (=> d!57449 (= (filter_equal_sorted!0 (t!48159 ls!53) x!29255) true)))

(assert (=> b!85720 (= e!46489 (isSorted!1 (filter!47 (t!48159 ls!53) lambda!10811)))))

(assert (= (and d!57449 c!21265) b!85719))

(assert (= (and d!57449 (not c!21265)) b!85720))

(declare-fun m!81520 () Bool)

(assert (=> b!85719 m!81520))

(assert (=> b!85719 m!81520))

(declare-fun m!81522 () Bool)

(assert (=> b!85719 m!81522))

(declare-fun m!81524 () Bool)

(assert (=> b!85719 m!81524))

(declare-fun m!81526 () Bool)

(assert (=> b!85720 m!81526))

(assert (=> b!85720 m!81526))

(declare-fun m!81528 () Bool)

(assert (=> b!85720 m!81528))

(assert (=> b!85684 d!57449))

(declare-fun b_lambda!16905 () Bool)

(assert (= b_lambda!16903 (or b!85685 b_lambda!16905)))

(declare-fun bs!41088 () Bool)

(declare-fun d!57451 () Bool)

(assert (= bs!41088 (and d!57451 b!85685)))

(assert (=> bs!41088 (= (dynLambda!1022 lambda!10805 (h!1044 ls!53)) (= (h!1044 ls!53) x!29255))))

(assert (=> b!85714 d!57451))

(push 1)

(assert (not b_lambda!16905))

(assert (not b!85711))

(assert (not b!85719))

(assert (not b!85712))

(assert (not b!85710))

(assert (not d!57447))

(assert (not b!85693))

(assert (not b!85720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57453 () Bool)

(declare-fun res!44542 () Bool)

(declare-fun e!46494 () Bool)

(assert (=> d!57453 (=> res!44542 e!46494)))

(assert (=> d!57453 (= res!44542 (is-Nil!673 lt!19945))))

(assert (=> d!57453 (= (forall!61 lt!19945 lambda!10805) e!46494)))

(declare-fun b!85725 () Bool)

(declare-fun e!46495 () Bool)

(assert (=> b!85725 (= e!46494 e!46495)))

(declare-fun res!44543 () Bool)

(assert (=> b!85725 (=> (not res!44543) (not e!46495))))

(assert (=> b!85725 (= res!44543 (dynLambda!1022 lambda!10805 (h!1044 lt!19945)))))

(declare-fun b!85726 () Bool)

(assert (=> b!85726 (= e!46495 (forall!61 (t!48159 lt!19945) lambda!10805))))

(assert (= (and d!57453 (not res!44542)) b!85725))

(assert (= (and b!85725 res!44543) b!85726))

(declare-fun b_lambda!16907 () Bool)

(assert (=> (not b_lambda!16907) (not b!85725)))

(declare-fun m!81530 () Bool)

(assert (=> b!85725 m!81530))

(declare-fun m!81532 () Bool)

(assert (=> b!85726 m!81532))

(assert (=> b!85712 d!57453))

(declare-fun d!57455 () Bool)

(declare-fun res!44544 () Bool)

(declare-fun e!46496 () Bool)

(assert (=> d!57455 (=> res!44544 e!46496)))

(assert (=> d!57455 (= res!44544 (not (and (is-Cons!671 (filter!47 (t!48159 ls!53) lambda!10811)) (is-Cons!671 (t!48159 (filter!47 (t!48159 ls!53) lambda!10811))))))))

(assert (=> d!57455 (= (isSorted!1 (filter!47 (t!48159 ls!53) lambda!10811)) e!46496)))

(declare-fun b!85727 () Bool)

(declare-fun e!46497 () Bool)

(assert (=> b!85727 (= e!46496 e!46497)))

(declare-fun res!44545 () Bool)

(assert (=> b!85727 (=> (not res!44545) (not e!46497))))

(assert (=> b!85727 (= res!44545 (<= (h!1044 (filter!47 (t!48159 ls!53) lambda!10811)) (h!1044 (t!48159 (filter!47 (t!48159 ls!53) lambda!10811)))))))

(declare-fun b!85728 () Bool)

(assert (=> b!85728 (= e!46497 (isSorted!1 (t!48159 (filter!47 (t!48159 ls!53) lambda!10811))))))

(assert (= (and d!57455 (not res!44544)) b!85727))

(assert (= (and b!85727 res!44545) b!85728))

(declare-fun m!81534 () Bool)

(assert (=> b!85728 m!81534))

(assert (=> b!85720 d!57455))

(declare-fun b!85729 () Bool)

(declare-fun e!46499 () List!714)

(declare-fun lt!19949 () List!714)

(assert (=> b!85729 (= e!46499 (Cons!671 (h!1044 (t!48159 ls!53)) lt!19949))))

(declare-fun b!85730 () Bool)

(declare-fun e!46500 () List!714)

(assert (=> b!85730 (= e!46500 Nil!673)))

(declare-fun b!85731 () Bool)

(declare-fun res!44546 () Bool)

(declare-fun e!46498 () Bool)

(assert (=> b!85731 (=> (not res!44546) (not e!46498))))

(declare-fun lt!19950 () List!714)

(assert (=> b!85731 (= res!44546 (subset (content!155 lt!19950) (content!155 (t!48159 ls!53))))))

(declare-fun b!85732 () Bool)

(assert (=> b!85732 (= e!46500 e!46499)))

(declare-fun c!21266 () Bool)

(declare-fun e!46501 () Bool)

(assert (=> b!85732 (= c!21266 e!46501)))

(declare-fun res!44547 () Bool)

(assert (=> b!85732 (=> (not res!44547) (not e!46501))))

(assert (=> b!85732 (= res!44547 (is-Cons!671 (t!48159 ls!53)))))

(assert (=> b!85732 (= lt!19949 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10811))))

(declare-fun b!85733 () Bool)

(assert (=> b!85733 (= e!46498 (forall!61 lt!19950 lambda!10811))))

(declare-fun d!57457 () Bool)

(assert (=> d!57457 e!46498))

(declare-fun res!44548 () Bool)

(assert (=> d!57457 (=> (not res!44548) (not e!46498))))

(assert (=> d!57457 (= res!44548 (<= (size!683 lt!19950) (size!683 (t!48159 ls!53))))))

(assert (=> d!57457 (= lt!19950 e!46500)))

(declare-fun c!21267 () Bool)

(assert (=> d!57457 (= c!21267 (is-Nil!673 (t!48159 ls!53)))))

(assert (=> d!57457 (= (filter!47 (t!48159 ls!53) lambda!10811) lt!19950)))

(declare-fun b!85734 () Bool)

(assert (=> b!85734 (= e!46499 lt!19949)))

(declare-fun b!85735 () Bool)

(assert (=> b!85735 (= e!46501 (dynLambda!1022 lambda!10811 (h!1044 (t!48159 ls!53))))))

(assert (= (and b!85732 res!44547) b!85735))

(assert (= (and b!85732 c!21266) b!85729))

(assert (= (and b!85732 (not c!21266)) b!85734))

(assert (= (and d!57457 c!21267) b!85730))

(assert (= (and d!57457 (not c!21267)) b!85732))

(assert (= (and d!57457 res!44548) b!85731))

(assert (= (and b!85731 res!44546) b!85733))

(declare-fun b_lambda!16909 () Bool)

(assert (=> (not b_lambda!16909) (not b!85735)))

(declare-fun m!81536 () Bool)

(assert (=> b!85735 m!81536))

(declare-fun m!81538 () Bool)

(assert (=> b!85731 m!81538))

(declare-fun m!81540 () Bool)

(assert (=> b!85731 m!81540))

(declare-fun m!81542 () Bool)

(assert (=> b!85732 m!81542))

(declare-fun m!81544 () Bool)

(assert (=> b!85733 m!81544))

(declare-fun m!81546 () Bool)

(assert (=> d!57457 m!81546))

(declare-fun m!81548 () Bool)

(assert (=> d!57457 m!81548))

(assert (=> b!85720 d!57457))

(declare-fun d!57459 () Bool)

(declare-fun res!44549 () Bool)

(declare-fun e!46502 () Bool)

(assert (=> d!57459 (=> res!44549 e!46502)))

(assert (=> d!57459 (= res!44549 (not (and (is-Cons!671 (filter!47 (t!48159 ls!53) lambda!10810)) (is-Cons!671 (t!48159 (filter!47 (t!48159 ls!53) lambda!10810))))))))

(assert (=> d!57459 (= (isSorted!1 (filter!47 (t!48159 ls!53) lambda!10810)) e!46502)))

(declare-fun b!85736 () Bool)

(declare-fun e!46503 () Bool)

(assert (=> b!85736 (= e!46502 e!46503)))

(declare-fun res!44550 () Bool)

(assert (=> b!85736 (=> (not res!44550) (not e!46503))))

(assert (=> b!85736 (= res!44550 (<= (h!1044 (filter!47 (t!48159 ls!53) lambda!10810)) (h!1044 (t!48159 (filter!47 (t!48159 ls!53) lambda!10810)))))))

(declare-fun b!85737 () Bool)

(assert (=> b!85737 (= e!46503 (isSorted!1 (t!48159 (filter!47 (t!48159 ls!53) lambda!10810))))))

(assert (= (and d!57459 (not res!44549)) b!85736))

(assert (= (and b!85736 res!44550) b!85737))

(declare-fun m!81550 () Bool)

(assert (=> b!85737 m!81550))

(assert (=> b!85719 d!57459))

(declare-fun b!85738 () Bool)

(declare-fun e!46505 () List!714)

(declare-fun lt!19951 () List!714)

(assert (=> b!85738 (= e!46505 (Cons!671 (h!1044 (t!48159 ls!53)) lt!19951))))

(declare-fun b!85739 () Bool)

(declare-fun e!46506 () List!714)

(assert (=> b!85739 (= e!46506 Nil!673)))

(declare-fun b!85740 () Bool)

(declare-fun res!44551 () Bool)

(declare-fun e!46504 () Bool)

(assert (=> b!85740 (=> (not res!44551) (not e!46504))))

(declare-fun lt!19952 () List!714)

(assert (=> b!85740 (= res!44551 (subset (content!155 lt!19952) (content!155 (t!48159 ls!53))))))

(declare-fun b!85741 () Bool)

(assert (=> b!85741 (= e!46506 e!46505)))

(declare-fun c!21268 () Bool)

(declare-fun e!46507 () Bool)

(assert (=> b!85741 (= c!21268 e!46507)))

(declare-fun res!44552 () Bool)

(assert (=> b!85741 (=> (not res!44552) (not e!46507))))

(assert (=> b!85741 (= res!44552 (is-Cons!671 (t!48159 ls!53)))))

(assert (=> b!85741 (= lt!19951 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10810))))

(declare-fun b!85742 () Bool)

(assert (=> b!85742 (= e!46504 (forall!61 lt!19952 lambda!10810))))

(declare-fun d!57461 () Bool)

(assert (=> d!57461 e!46504))

(declare-fun res!44553 () Bool)

(assert (=> d!57461 (=> (not res!44553) (not e!46504))))

(assert (=> d!57461 (= res!44553 (<= (size!683 lt!19952) (size!683 (t!48159 ls!53))))))

(assert (=> d!57461 (= lt!19952 e!46506)))

(declare-fun c!21269 () Bool)

(assert (=> d!57461 (= c!21269 (is-Nil!673 (t!48159 ls!53)))))

(assert (=> d!57461 (= (filter!47 (t!48159 ls!53) lambda!10810) lt!19952)))

(declare-fun b!85743 () Bool)

(assert (=> b!85743 (= e!46505 lt!19951)))

(declare-fun b!85744 () Bool)

(assert (=> b!85744 (= e!46507 (dynLambda!1022 lambda!10810 (h!1044 (t!48159 ls!53))))))

(assert (= (and b!85741 res!44552) b!85744))

(assert (= (and b!85741 c!21268) b!85738))

(assert (= (and b!85741 (not c!21268)) b!85743))

(assert (= (and d!57461 c!21269) b!85739))

(assert (= (and d!57461 (not c!21269)) b!85741))

(assert (= (and d!57461 res!44553) b!85740))

(assert (= (and b!85740 res!44551) b!85742))

(declare-fun b_lambda!16911 () Bool)

(assert (=> (not b_lambda!16911) (not b!85744)))

(declare-fun m!81552 () Bool)

(assert (=> b!85744 m!81552))

(declare-fun m!81554 () Bool)

(assert (=> b!85740 m!81554))

(assert (=> b!85740 m!81540))

(declare-fun m!81556 () Bool)

(assert (=> b!85741 m!81556))

(declare-fun m!81558 () Bool)

(assert (=> b!85742 m!81558))

(declare-fun m!81560 () Bool)

(assert (=> d!57461 m!81560))

(assert (=> d!57461 m!81548))

(assert (=> b!85719 d!57461))

(declare-fun bs!41089 () Bool)

(declare-fun b!85745 () Bool)

(assert (= bs!41089 (and b!85745 b!85685)))

(declare-fun lambda!10812 () Int)

(assert (=> bs!41089 (= lambda!10812 lambda!10805)))

(declare-fun bs!41090 () Bool)

(assert (= bs!41090 (and b!85745 b!85719)))

(assert (=> bs!41090 (= lambda!10812 lambda!10810)))

(declare-fun bs!41091 () Bool)

(assert (= bs!41091 (and b!85745 b!85720)))

(assert (=> bs!41091 (= lambda!10812 lambda!10811)))

(assert (=> b!85745 true))

(declare-fun bs!41092 () Bool)

(declare-fun b!85746 () Bool)

(assert (= bs!41092 (and b!85746 b!85685)))

(declare-fun lambda!10813 () Int)

(assert (=> bs!41092 (= lambda!10813 lambda!10805)))

(declare-fun bs!41093 () Bool)

(assert (= bs!41093 (and b!85746 b!85719)))

(assert (=> bs!41093 (= lambda!10813 lambda!10810)))

(declare-fun bs!41094 () Bool)

(assert (= bs!41094 (and b!85746 b!85720)))

(assert (=> bs!41094 (= lambda!10813 lambda!10811)))

(declare-fun bs!41095 () Bool)

(assert (= bs!41095 (and b!85746 b!85745)))

(assert (=> bs!41095 (= lambda!10813 lambda!10812)))

(assert (=> b!85746 true))

(declare-fun e!46508 () Bool)

(assert (=> b!85745 (= e!46508 (isSorted!1 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10812)))))

(declare-fun lt!19953 () Bool)

(assert (=> b!85745 (= lt!19953 (filter_equal_sorted!0 (t!48159 (t!48159 (t!48159 ls!53))) x!29255))))

(declare-fun d!57463 () Bool)

(assert (=> d!57463 e!46508))

(declare-fun c!21270 () Bool)

(assert (=> d!57463 (= c!21270 (is-Cons!671 (t!48159 (t!48159 ls!53))))))

(assert (=> d!57463 (= (filter_equal_sorted!0 (t!48159 (t!48159 ls!53)) x!29255) true)))

(assert (=> b!85746 (= e!46508 (isSorted!1 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10813)))))

(assert (= (and d!57463 c!21270) b!85745))

(assert (= (and d!57463 (not c!21270)) b!85746))

(declare-fun m!81562 () Bool)

(assert (=> b!85745 m!81562))

(assert (=> b!85745 m!81562))

(declare-fun m!81564 () Bool)

(assert (=> b!85745 m!81564))

(declare-fun m!81566 () Bool)

(assert (=> b!85745 m!81566))

(declare-fun m!81568 () Bool)

(assert (=> b!85746 m!81568))

(assert (=> b!85746 m!81568))

(declare-fun m!81570 () Bool)

(assert (=> b!85746 m!81570))

(assert (=> b!85719 d!57463))

(declare-fun d!57465 () Bool)

(declare-fun lt!19956 () Int)

(assert (=> d!57465 (>= lt!19956 0)))

(declare-fun e!46511 () Int)

(assert (=> d!57465 (= lt!19956 e!46511)))

(declare-fun c!21273 () Bool)

(assert (=> d!57465 (= c!21273 (is-Nil!673 lt!19945))))

(assert (=> d!57465 (= (size!683 lt!19945) lt!19956)))

(declare-fun b!85751 () Bool)

(assert (=> b!85751 (= e!46511 0)))

(declare-fun b!85752 () Bool)

(assert (=> b!85752 (= e!46511 (+ 1 (size!683 (t!48159 lt!19945))))))

(assert (= (and d!57465 c!21273) b!85751))

(assert (= (and d!57465 (not c!21273)) b!85752))

(declare-fun m!81572 () Bool)

(assert (=> b!85752 m!81572))

(assert (=> d!57447 d!57465))

(declare-fun d!57467 () Bool)

(declare-fun lt!19957 () Int)

(assert (=> d!57467 (>= lt!19957 0)))

(declare-fun e!46512 () Int)

(assert (=> d!57467 (= lt!19957 e!46512)))

(declare-fun c!21274 () Bool)

(assert (=> d!57467 (= c!21274 (is-Nil!673 ls!53))))

(assert (=> d!57467 (= (size!683 ls!53) lt!19957)))

(declare-fun b!85753 () Bool)

(assert (=> b!85753 (= e!46512 0)))

(declare-fun b!85754 () Bool)

(assert (=> b!85754 (= e!46512 (+ 1 (size!683 (t!48159 ls!53))))))

(assert (= (and d!57467 c!21274) b!85753))

(assert (= (and d!57467 (not c!21274)) b!85754))

(assert (=> b!85754 m!81548))

(assert (=> d!57447 d!57467))

(declare-fun d!57469 () Bool)

(declare-fun res!44554 () Bool)

(declare-fun e!46513 () Bool)

(assert (=> d!57469 (=> res!44554 e!46513)))

(assert (=> d!57469 (= res!44554 (not (and (is-Cons!671 (t!48159 (filter!47 ls!53 lambda!10805))) (is-Cons!671 (t!48159 (t!48159 (filter!47 ls!53 lambda!10805)))))))))

(assert (=> d!57469 (= (isSorted!1 (t!48159 (filter!47 ls!53 lambda!10805))) e!46513)))

(declare-fun b!85755 () Bool)

(declare-fun e!46514 () Bool)

(assert (=> b!85755 (= e!46513 e!46514)))

(declare-fun res!44555 () Bool)

(assert (=> b!85755 (=> (not res!44555) (not e!46514))))

(assert (=> b!85755 (= res!44555 (<= (h!1044 (t!48159 (filter!47 ls!53 lambda!10805))) (h!1044 (t!48159 (t!48159 (filter!47 ls!53 lambda!10805))))))))

(declare-fun b!85756 () Bool)

(assert (=> b!85756 (= e!46514 (isSorted!1 (t!48159 (t!48159 (filter!47 ls!53 lambda!10805)))))))

(assert (= (and d!57469 (not res!44554)) b!85755))

(assert (= (and b!85755 res!44555) b!85756))

(declare-fun m!81574 () Bool)

(assert (=> b!85756 m!81574))

(assert (=> b!85693 d!57469))

(declare-fun b!85757 () Bool)

(declare-fun e!46516 () List!714)

(declare-fun lt!19958 () List!714)

(assert (=> b!85757 (= e!46516 (Cons!671 (h!1044 (t!48159 ls!53)) lt!19958))))

(declare-fun b!85758 () Bool)

(declare-fun e!46517 () List!714)

(assert (=> b!85758 (= e!46517 Nil!673)))

(declare-fun b!85759 () Bool)

(declare-fun res!44556 () Bool)

(declare-fun e!46515 () Bool)

(assert (=> b!85759 (=> (not res!44556) (not e!46515))))

(declare-fun lt!19959 () List!714)

(assert (=> b!85759 (= res!44556 (subset (content!155 lt!19959) (content!155 (t!48159 ls!53))))))

(declare-fun b!85760 () Bool)

(assert (=> b!85760 (= e!46517 e!46516)))

(declare-fun c!21275 () Bool)

(declare-fun e!46518 () Bool)

(assert (=> b!85760 (= c!21275 e!46518)))

(declare-fun res!44557 () Bool)

(assert (=> b!85760 (=> (not res!44557) (not e!46518))))

(assert (=> b!85760 (= res!44557 (is-Cons!671 (t!48159 ls!53)))))

(assert (=> b!85760 (= lt!19958 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10805))))

(declare-fun b!85761 () Bool)

(assert (=> b!85761 (= e!46515 (forall!61 lt!19959 lambda!10805))))

(declare-fun d!57471 () Bool)

(assert (=> d!57471 e!46515))

(declare-fun res!44558 () Bool)

(assert (=> d!57471 (=> (not res!44558) (not e!46515))))

(assert (=> d!57471 (= res!44558 (<= (size!683 lt!19959) (size!683 (t!48159 ls!53))))))

(assert (=> d!57471 (= lt!19959 e!46517)))

(declare-fun c!21276 () Bool)

(assert (=> d!57471 (= c!21276 (is-Nil!673 (t!48159 ls!53)))))

(assert (=> d!57471 (= (filter!47 (t!48159 ls!53) lambda!10805) lt!19959)))

(declare-fun b!85762 () Bool)

(assert (=> b!85762 (= e!46516 lt!19958)))

(declare-fun b!85763 () Bool)

(assert (=> b!85763 (= e!46518 (dynLambda!1022 lambda!10805 (h!1044 (t!48159 ls!53))))))

(assert (= (and b!85760 res!44557) b!85763))

(assert (= (and b!85760 c!21275) b!85757))

(assert (= (and b!85760 (not c!21275)) b!85762))

(assert (= (and d!57471 c!21276) b!85758))

(assert (= (and d!57471 (not c!21276)) b!85760))

(assert (= (and d!57471 res!44558) b!85759))

(assert (= (and b!85759 res!44556) b!85761))

(declare-fun b_lambda!16913 () Bool)

(assert (=> (not b_lambda!16913) (not b!85763)))

(declare-fun m!81576 () Bool)

(assert (=> b!85763 m!81576))

(declare-fun m!81578 () Bool)

(assert (=> b!85759 m!81578))

(assert (=> b!85759 m!81540))

(declare-fun m!81580 () Bool)

(assert (=> b!85760 m!81580))

(declare-fun m!81582 () Bool)

(assert (=> b!85761 m!81582))

(declare-fun m!81584 () Bool)

(assert (=> d!57471 m!81584))

(assert (=> d!57471 m!81548))

(assert (=> b!85711 d!57471))

(declare-fun d!57473 () Bool)

(declare-fun c!21279 () Bool)

(assert (=> d!57473 (= c!21279 (is-Nil!673 lt!19945))))

(declare-fun e!46521 () (Set Int))

(assert (=> d!57473 (= (content!155 lt!19945) e!46521)))

(declare-fun b!85768 () Bool)

(assert (=> b!85768 (= e!46521 (as emptyset (Set Int)))))

(declare-fun b!85769 () Bool)

(assert (=> b!85769 (= e!46521 (union (insert (h!1044 lt!19945) (as emptyset (Set Int))) (content!155 (t!48159 lt!19945))))))

(assert (= (and d!57473 c!21279) b!85768))

(assert (= (and d!57473 (not c!21279)) b!85769))

(declare-fun m!81586 () Bool)

(assert (=> b!85769 m!81586))

(declare-fun m!81588 () Bool)

(assert (=> b!85769 m!81588))

(assert (=> b!85710 d!57473))

(declare-fun d!57475 () Bool)

(declare-fun c!21280 () Bool)

(assert (=> d!57475 (= c!21280 (is-Nil!673 ls!53))))

(declare-fun e!46522 () (Set Int))

(assert (=> d!57475 (= (content!155 ls!53) e!46522)))

(declare-fun b!85770 () Bool)

(assert (=> b!85770 (= e!46522 (as emptyset (Set Int)))))

(declare-fun b!85771 () Bool)

(assert (=> b!85771 (= e!46522 (union (insert (h!1044 ls!53) (as emptyset (Set Int))) (content!155 (t!48159 ls!53))))))

(assert (= (and d!57475 c!21280) b!85770))

(assert (= (and d!57475 (not c!21280)) b!85771))

(declare-fun m!81590 () Bool)

(assert (=> b!85771 m!81590))

(assert (=> b!85771 m!81540))

(assert (=> b!85710 d!57475))

(declare-fun b_lambda!16915 () Bool)

(assert (= b_lambda!16911 (or b!85719 b_lambda!16915)))

(declare-fun bs!41096 () Bool)

(declare-fun d!57477 () Bool)

(assert (= bs!41096 (and d!57477 b!85719)))

(assert (=> bs!41096 (= (dynLambda!1022 lambda!10810 (h!1044 (t!48159 ls!53))) (= (h!1044 (t!48159 ls!53)) x!29255))))

(assert (=> b!85744 d!57477))

(declare-fun b_lambda!16917 () Bool)

(assert (= b_lambda!16913 (or b!85685 b_lambda!16917)))

(declare-fun bs!41097 () Bool)

(declare-fun d!57479 () Bool)

(assert (= bs!41097 (and d!57479 b!85685)))

(assert (=> bs!41097 (= (dynLambda!1022 lambda!10805 (h!1044 (t!48159 ls!53))) (= (h!1044 (t!48159 ls!53)) x!29255))))

(assert (=> b!85763 d!57479))

(declare-fun b_lambda!16919 () Bool)

(assert (= b_lambda!16909 (or b!85720 b_lambda!16919)))

(declare-fun bs!41098 () Bool)

(declare-fun d!57481 () Bool)

(assert (= bs!41098 (and d!57481 b!85720)))

(assert (=> bs!41098 (= (dynLambda!1022 lambda!10811 (h!1044 (t!48159 ls!53))) (= (h!1044 (t!48159 ls!53)) x!29255))))

(assert (=> b!85735 d!57481))

(declare-fun b_lambda!16921 () Bool)

(assert (= b_lambda!16907 (or b!85685 b_lambda!16921)))

(declare-fun bs!41099 () Bool)

(declare-fun d!57483 () Bool)

(assert (= bs!41099 (and d!57483 b!85685)))

(assert (=> bs!41099 (= (dynLambda!1022 lambda!10805 (h!1044 lt!19945)) (= (h!1044 lt!19945) x!29255))))

(assert (=> b!85725 d!57483))

(push 1)

(assert (not b!85754))

(assert (not b!85752))

(assert (not b!85737))

(assert (not d!57457))

(assert (not b_lambda!16921))

(assert (not b!85741))

(assert (not b!85726))

(assert (not b!85731))

(assert (not b_lambda!16919))

(assert (not b!85740))

(assert (not d!57461))

(assert (not b!85746))

(assert (not b_lambda!16905))

(assert (not b!85732))

(assert (not b_lambda!16917))

(assert (not b!85771))

(assert (not b_lambda!16915))

(assert (not b!85759))

(assert (not b!85756))

(assert (not b!85733))

(assert (not b!85760))

(assert (not b!85742))

(assert (not d!57471))

(assert (not b!85728))

(assert (not b!85769))

(assert (not b!85761))

(assert (not b!85745))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57485 () Bool)

(declare-fun res!44559 () Bool)

(declare-fun e!46523 () Bool)

(assert (=> d!57485 (=> res!44559 e!46523)))

(assert (=> d!57485 (= res!44559 (is-Nil!673 lt!19952))))

(assert (=> d!57485 (= (forall!61 lt!19952 lambda!10810) e!46523)))

(declare-fun b!85772 () Bool)

(declare-fun e!46524 () Bool)

(assert (=> b!85772 (= e!46523 e!46524)))

(declare-fun res!44560 () Bool)

(assert (=> b!85772 (=> (not res!44560) (not e!46524))))

(assert (=> b!85772 (= res!44560 (dynLambda!1022 lambda!10810 (h!1044 lt!19952)))))

(declare-fun b!85773 () Bool)

(assert (=> b!85773 (= e!46524 (forall!61 (t!48159 lt!19952) lambda!10810))))

(assert (= (and d!57485 (not res!44559)) b!85772))

(assert (= (and b!85772 res!44560) b!85773))

(declare-fun b_lambda!16923 () Bool)

(assert (=> (not b_lambda!16923) (not b!85772)))

(declare-fun m!81592 () Bool)

(assert (=> b!85772 m!81592))

(declare-fun m!81594 () Bool)

(assert (=> b!85773 m!81594))

(assert (=> b!85742 d!57485))

(declare-fun d!57487 () Bool)

(declare-fun lt!19960 () Int)

(assert (=> d!57487 (>= lt!19960 0)))

(declare-fun e!46525 () Int)

(assert (=> d!57487 (= lt!19960 e!46525)))

(declare-fun c!21281 () Bool)

(assert (=> d!57487 (= c!21281 (is-Nil!673 lt!19952))))

(assert (=> d!57487 (= (size!683 lt!19952) lt!19960)))

(declare-fun b!85774 () Bool)

(assert (=> b!85774 (= e!46525 0)))

(declare-fun b!85775 () Bool)

(assert (=> b!85775 (= e!46525 (+ 1 (size!683 (t!48159 lt!19952))))))

(assert (= (and d!57487 c!21281) b!85774))

(assert (= (and d!57487 (not c!21281)) b!85775))

(declare-fun m!81596 () Bool)

(assert (=> b!85775 m!81596))

(assert (=> d!57461 d!57487))

(declare-fun d!57489 () Bool)

(declare-fun lt!19961 () Int)

(assert (=> d!57489 (>= lt!19961 0)))

(declare-fun e!46526 () Int)

(assert (=> d!57489 (= lt!19961 e!46526)))

(declare-fun c!21282 () Bool)

(assert (=> d!57489 (= c!21282 (is-Nil!673 (t!48159 ls!53)))))

(assert (=> d!57489 (= (size!683 (t!48159 ls!53)) lt!19961)))

(declare-fun b!85776 () Bool)

(assert (=> b!85776 (= e!46526 0)))

(declare-fun b!85777 () Bool)

(assert (=> b!85777 (= e!46526 (+ 1 (size!683 (t!48159 (t!48159 ls!53)))))))

(assert (= (and d!57489 c!21282) b!85776))

(assert (= (and d!57489 (not c!21282)) b!85777))

(declare-fun m!81598 () Bool)

(assert (=> b!85777 m!81598))

(assert (=> d!57461 d!57489))

(declare-fun d!57491 () Bool)

(declare-fun res!44561 () Bool)

(declare-fun e!46527 () Bool)

(assert (=> d!57491 (=> res!44561 e!46527)))

(assert (=> d!57491 (= res!44561 (is-Nil!673 lt!19950))))

(assert (=> d!57491 (= (forall!61 lt!19950 lambda!10811) e!46527)))

(declare-fun b!85778 () Bool)

(declare-fun e!46528 () Bool)

(assert (=> b!85778 (= e!46527 e!46528)))

(declare-fun res!44562 () Bool)

(assert (=> b!85778 (=> (not res!44562) (not e!46528))))

(assert (=> b!85778 (= res!44562 (dynLambda!1022 lambda!10811 (h!1044 lt!19950)))))

(declare-fun b!85779 () Bool)

(assert (=> b!85779 (= e!46528 (forall!61 (t!48159 lt!19950) lambda!10811))))

(assert (= (and d!57491 (not res!44561)) b!85778))

(assert (= (and b!85778 res!44562) b!85779))

(declare-fun b_lambda!16925 () Bool)

(assert (=> (not b_lambda!16925) (not b!85778)))

(declare-fun m!81600 () Bool)

(assert (=> b!85778 m!81600))

(declare-fun m!81602 () Bool)

(assert (=> b!85779 m!81602))

(assert (=> b!85733 d!57491))

(declare-fun b!85780 () Bool)

(declare-fun e!46530 () List!714)

(declare-fun lt!19962 () List!714)

(assert (=> b!85780 (= e!46530 (Cons!671 (h!1044 (t!48159 (t!48159 ls!53))) lt!19962))))

(declare-fun b!85781 () Bool)

(declare-fun e!46531 () List!714)

(assert (=> b!85781 (= e!46531 Nil!673)))

(declare-fun b!85782 () Bool)

(declare-fun res!44563 () Bool)

(declare-fun e!46529 () Bool)

(assert (=> b!85782 (=> (not res!44563) (not e!46529))))

(declare-fun lt!19963 () List!714)

(assert (=> b!85782 (= res!44563 (subset (content!155 lt!19963) (content!155 (t!48159 (t!48159 ls!53)))))))

(declare-fun b!85783 () Bool)

(assert (=> b!85783 (= e!46531 e!46530)))

(declare-fun c!21283 () Bool)

(declare-fun e!46532 () Bool)

(assert (=> b!85783 (= c!21283 e!46532)))

(declare-fun res!44564 () Bool)

(assert (=> b!85783 (=> (not res!44564) (not e!46532))))

(assert (=> b!85783 (= res!44564 (is-Cons!671 (t!48159 (t!48159 ls!53))))))

(assert (=> b!85783 (= lt!19962 (filter!47 (t!48159 (t!48159 (t!48159 ls!53))) lambda!10805))))

(declare-fun b!85784 () Bool)

(assert (=> b!85784 (= e!46529 (forall!61 lt!19963 lambda!10805))))

(declare-fun d!57493 () Bool)

(assert (=> d!57493 e!46529))

(declare-fun res!44565 () Bool)

(assert (=> d!57493 (=> (not res!44565) (not e!46529))))

(assert (=> d!57493 (= res!44565 (<= (size!683 lt!19963) (size!683 (t!48159 (t!48159 ls!53)))))))

(assert (=> d!57493 (= lt!19963 e!46531)))

(declare-fun c!21284 () Bool)

(assert (=> d!57493 (= c!21284 (is-Nil!673 (t!48159 (t!48159 ls!53))))))

(assert (=> d!57493 (= (filter!47 (t!48159 (t!48159 ls!53)) lambda!10805) lt!19963)))

(declare-fun b!85785 () Bool)

(assert (=> b!85785 (= e!46530 lt!19962)))

(declare-fun b!85786 () Bool)

(assert (=> b!85786 (= e!46532 (dynLambda!1022 lambda!10805 (h!1044 (t!48159 (t!48159 ls!53)))))))

(assert (= (and b!85783 res!44564) b!85786))

(assert (= (and b!85783 c!21283) b!85780))

(assert (= (and b!85783 (not c!21283)) b!85785))

(assert (= (and d!57493 c!21284) b!85781))

(assert (= (and d!57493 (not c!21284)) b!85783))

(assert (= (and d!57493 res!44565) b!85782))

(assert (= (and b!85782 res!44563) b!85784))

(declare-fun b_lambda!16927 () Bool)

(assert (=> (not b_lambda!16927) (not b!85786)))

(declare-fun m!81604 () Bool)

(assert (=> b!85786 m!81604))

(declare-fun m!81606 () Bool)

(assert (=> b!85782 m!81606))

(declare-fun m!81608 () Bool)

(assert (=> b!85782 m!81608))

(declare-fun m!81610 () Bool)

(assert (=> b!85783 m!81610))

(declare-fun m!81612 () Bool)

(assert (=> b!85784 m!81612))

(declare-fun m!81614 () Bool)

(assert (=> d!57493 m!81614))

(assert (=> d!57493 m!81598))

(assert (=> b!85760 d!57493))

(declare-fun b!85787 () Bool)

(declare-fun e!46534 () List!714)

(declare-fun lt!19964 () List!714)

(assert (=> b!85787 (= e!46534 (Cons!671 (h!1044 (t!48159 (t!48159 ls!53))) lt!19964))))

(declare-fun b!85788 () Bool)

(declare-fun e!46535 () List!714)

(assert (=> b!85788 (= e!46535 Nil!673)))

(declare-fun b!85789 () Bool)

(declare-fun res!44566 () Bool)

(declare-fun e!46533 () Bool)

(assert (=> b!85789 (=> (not res!44566) (not e!46533))))

(declare-fun lt!19965 () List!714)

(assert (=> b!85789 (= res!44566 (subset (content!155 lt!19965) (content!155 (t!48159 (t!48159 ls!53)))))))

(declare-fun b!85790 () Bool)

(assert (=> b!85790 (= e!46535 e!46534)))

(declare-fun c!21285 () Bool)

(declare-fun e!46536 () Bool)

(assert (=> b!85790 (= c!21285 e!46536)))

(declare-fun res!44567 () Bool)

(assert (=> b!85790 (=> (not res!44567) (not e!46536))))

(assert (=> b!85790 (= res!44567 (is-Cons!671 (t!48159 (t!48159 ls!53))))))

(assert (=> b!85790 (= lt!19964 (filter!47 (t!48159 (t!48159 (t!48159 ls!53))) lambda!10810))))

(declare-fun b!85791 () Bool)

(assert (=> b!85791 (= e!46533 (forall!61 lt!19965 lambda!10810))))

(declare-fun d!57495 () Bool)

(assert (=> d!57495 e!46533))

(declare-fun res!44568 () Bool)

(assert (=> d!57495 (=> (not res!44568) (not e!46533))))

(assert (=> d!57495 (= res!44568 (<= (size!683 lt!19965) (size!683 (t!48159 (t!48159 ls!53)))))))

(assert (=> d!57495 (= lt!19965 e!46535)))

(declare-fun c!21286 () Bool)

(assert (=> d!57495 (= c!21286 (is-Nil!673 (t!48159 (t!48159 ls!53))))))

(assert (=> d!57495 (= (filter!47 (t!48159 (t!48159 ls!53)) lambda!10810) lt!19965)))

(declare-fun b!85792 () Bool)

(assert (=> b!85792 (= e!46534 lt!19964)))

(declare-fun b!85793 () Bool)

(assert (=> b!85793 (= e!46536 (dynLambda!1022 lambda!10810 (h!1044 (t!48159 (t!48159 ls!53)))))))

(assert (= (and b!85790 res!44567) b!85793))

(assert (= (and b!85790 c!21285) b!85787))

(assert (= (and b!85790 (not c!21285)) b!85792))

(assert (= (and d!57495 c!21286) b!85788))

(assert (= (and d!57495 (not c!21286)) b!85790))

(assert (= (and d!57495 res!44568) b!85789))

(assert (= (and b!85789 res!44566) b!85791))

(declare-fun b_lambda!16929 () Bool)

(assert (=> (not b_lambda!16929) (not b!85793)))

(declare-fun m!81616 () Bool)

(assert (=> b!85793 m!81616))

(declare-fun m!81618 () Bool)

(assert (=> b!85789 m!81618))

(assert (=> b!85789 m!81608))

(declare-fun m!81620 () Bool)

(assert (=> b!85790 m!81620))

(declare-fun m!81622 () Bool)

(assert (=> b!85791 m!81622))

(declare-fun m!81624 () Bool)

(assert (=> d!57495 m!81624))

(assert (=> d!57495 m!81598))

(assert (=> b!85741 d!57495))

(declare-fun d!57497 () Bool)

(declare-fun c!21287 () Bool)

(assert (=> d!57497 (= c!21287 (is-Nil!673 lt!19950))))

(declare-fun e!46537 () (Set Int))

(assert (=> d!57497 (= (content!155 lt!19950) e!46537)))

(declare-fun b!85794 () Bool)

(assert (=> b!85794 (= e!46537 (as emptyset (Set Int)))))

(declare-fun b!85795 () Bool)

(assert (=> b!85795 (= e!46537 (union (insert (h!1044 lt!19950) (as emptyset (Set Int))) (content!155 (t!48159 lt!19950))))))

(assert (= (and d!57497 c!21287) b!85794))

(assert (= (and d!57497 (not c!21287)) b!85795))

(declare-fun m!81626 () Bool)

(assert (=> b!85795 m!81626))

(declare-fun m!81628 () Bool)

(assert (=> b!85795 m!81628))

(assert (=> b!85731 d!57497))

(declare-fun d!57499 () Bool)

(declare-fun c!21288 () Bool)

(assert (=> d!57499 (= c!21288 (is-Nil!673 (t!48159 ls!53)))))

(declare-fun e!46538 () (Set Int))

(assert (=> d!57499 (= (content!155 (t!48159 ls!53)) e!46538)))

(declare-fun b!85796 () Bool)

(assert (=> b!85796 (= e!46538 (as emptyset (Set Int)))))

(declare-fun b!85797 () Bool)

(assert (=> b!85797 (= e!46538 (union (insert (h!1044 (t!48159 ls!53)) (as emptyset (Set Int))) (content!155 (t!48159 (t!48159 ls!53)))))))

(assert (= (and d!57499 c!21288) b!85796))

(assert (= (and d!57499 (not c!21288)) b!85797))

(declare-fun m!81630 () Bool)

(assert (=> b!85797 m!81630))

(assert (=> b!85797 m!81608))

(assert (=> b!85731 d!57499))

(declare-fun d!57501 () Bool)

(declare-fun lt!19966 () Int)

(assert (=> d!57501 (>= lt!19966 0)))

(declare-fun e!46539 () Int)

(assert (=> d!57501 (= lt!19966 e!46539)))

(declare-fun c!21289 () Bool)

(assert (=> d!57501 (= c!21289 (is-Nil!673 lt!19950))))

(assert (=> d!57501 (= (size!683 lt!19950) lt!19966)))

(declare-fun b!85798 () Bool)

(assert (=> b!85798 (= e!46539 0)))

(declare-fun b!85799 () Bool)

(assert (=> b!85799 (= e!46539 (+ 1 (size!683 (t!48159 lt!19950))))))

(assert (= (and d!57501 c!21289) b!85798))

(assert (= (and d!57501 (not c!21289)) b!85799))

(declare-fun m!81632 () Bool)

(assert (=> b!85799 m!81632))

(assert (=> d!57457 d!57501))

(assert (=> d!57457 d!57489))

(declare-fun d!57503 () Bool)

(declare-fun res!44569 () Bool)

(declare-fun e!46540 () Bool)

(assert (=> d!57503 (=> res!44569 e!46540)))

(assert (=> d!57503 (= res!44569 (not (and (is-Cons!671 (t!48159 (filter!47 (t!48159 ls!53) lambda!10810))) (is-Cons!671 (t!48159 (t!48159 (filter!47 (t!48159 ls!53) lambda!10810)))))))))

(assert (=> d!57503 (= (isSorted!1 (t!48159 (filter!47 (t!48159 ls!53) lambda!10810))) e!46540)))

(declare-fun b!85800 () Bool)

(declare-fun e!46541 () Bool)

(assert (=> b!85800 (= e!46540 e!46541)))

(declare-fun res!44570 () Bool)

(assert (=> b!85800 (=> (not res!44570) (not e!46541))))

(assert (=> b!85800 (= res!44570 (<= (h!1044 (t!48159 (filter!47 (t!48159 ls!53) lambda!10810))) (h!1044 (t!48159 (t!48159 (filter!47 (t!48159 ls!53) lambda!10810))))))))

(declare-fun b!85801 () Bool)

(assert (=> b!85801 (= e!46541 (isSorted!1 (t!48159 (t!48159 (filter!47 (t!48159 ls!53) lambda!10810)))))))

(assert (= (and d!57503 (not res!44569)) b!85800))

(assert (= (and b!85800 res!44570) b!85801))

(declare-fun m!81634 () Bool)

(assert (=> b!85801 m!81634))

(assert (=> b!85737 d!57503))

(declare-fun d!57505 () Bool)

(declare-fun res!44571 () Bool)

(declare-fun e!46542 () Bool)

(assert (=> d!57505 (=> res!44571 e!46542)))

(assert (=> d!57505 (= res!44571 (not (and (is-Cons!671 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10813)) (is-Cons!671 (t!48159 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10813))))))))

(assert (=> d!57505 (= (isSorted!1 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10813)) e!46542)))

(declare-fun b!85802 () Bool)

(declare-fun e!46543 () Bool)

(assert (=> b!85802 (= e!46542 e!46543)))

(declare-fun res!44572 () Bool)

(assert (=> b!85802 (=> (not res!44572) (not e!46543))))

(assert (=> b!85802 (= res!44572 (<= (h!1044 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10813)) (h!1044 (t!48159 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10813)))))))

(declare-fun b!85803 () Bool)

(assert (=> b!85803 (= e!46543 (isSorted!1 (t!48159 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10813))))))

(assert (= (and d!57505 (not res!44571)) b!85802))

(assert (= (and b!85802 res!44572) b!85803))

(declare-fun m!81636 () Bool)

(assert (=> b!85803 m!81636))

(assert (=> b!85746 d!57505))

(declare-fun b!85804 () Bool)

(declare-fun e!46545 () List!714)

(declare-fun lt!19967 () List!714)

(assert (=> b!85804 (= e!46545 (Cons!671 (h!1044 (t!48159 (t!48159 ls!53))) lt!19967))))

(declare-fun b!85805 () Bool)

(declare-fun e!46546 () List!714)

(assert (=> b!85805 (= e!46546 Nil!673)))

(declare-fun b!85806 () Bool)

(declare-fun res!44573 () Bool)

(declare-fun e!46544 () Bool)

(assert (=> b!85806 (=> (not res!44573) (not e!46544))))

(declare-fun lt!19968 () List!714)

(assert (=> b!85806 (= res!44573 (subset (content!155 lt!19968) (content!155 (t!48159 (t!48159 ls!53)))))))

(declare-fun b!85807 () Bool)

(assert (=> b!85807 (= e!46546 e!46545)))

(declare-fun c!21290 () Bool)

(declare-fun e!46547 () Bool)

(assert (=> b!85807 (= c!21290 e!46547)))

(declare-fun res!44574 () Bool)

(assert (=> b!85807 (=> (not res!44574) (not e!46547))))

(assert (=> b!85807 (= res!44574 (is-Cons!671 (t!48159 (t!48159 ls!53))))))

(assert (=> b!85807 (= lt!19967 (filter!47 (t!48159 (t!48159 (t!48159 ls!53))) lambda!10813))))

(declare-fun b!85808 () Bool)

(assert (=> b!85808 (= e!46544 (forall!61 lt!19968 lambda!10813))))

(declare-fun d!57507 () Bool)

(assert (=> d!57507 e!46544))

(declare-fun res!44575 () Bool)

(assert (=> d!57507 (=> (not res!44575) (not e!46544))))

(assert (=> d!57507 (= res!44575 (<= (size!683 lt!19968) (size!683 (t!48159 (t!48159 ls!53)))))))

(assert (=> d!57507 (= lt!19968 e!46546)))

(declare-fun c!21291 () Bool)

(assert (=> d!57507 (= c!21291 (is-Nil!673 (t!48159 (t!48159 ls!53))))))

(assert (=> d!57507 (= (filter!47 (t!48159 (t!48159 ls!53)) lambda!10813) lt!19968)))

(declare-fun b!85809 () Bool)

(assert (=> b!85809 (= e!46545 lt!19967)))

(declare-fun b!85810 () Bool)

(assert (=> b!85810 (= e!46547 (dynLambda!1022 lambda!10813 (h!1044 (t!48159 (t!48159 ls!53)))))))

(assert (= (and b!85807 res!44574) b!85810))

(assert (= (and b!85807 c!21290) b!85804))

(assert (= (and b!85807 (not c!21290)) b!85809))

(assert (= (and d!57507 c!21291) b!85805))

(assert (= (and d!57507 (not c!21291)) b!85807))

(assert (= (and d!57507 res!44575) b!85806))

(assert (= (and b!85806 res!44573) b!85808))

(declare-fun b_lambda!16931 () Bool)

(assert (=> (not b_lambda!16931) (not b!85810)))

(declare-fun m!81638 () Bool)

(assert (=> b!85810 m!81638))

(declare-fun m!81640 () Bool)

(assert (=> b!85806 m!81640))

(assert (=> b!85806 m!81608))

(declare-fun m!81642 () Bool)

(assert (=> b!85807 m!81642))

(declare-fun m!81644 () Bool)

(assert (=> b!85808 m!81644))

(declare-fun m!81646 () Bool)

(assert (=> d!57507 m!81646))

(assert (=> d!57507 m!81598))

(assert (=> b!85746 d!57507))

(declare-fun d!57509 () Bool)

(declare-fun res!44576 () Bool)

(declare-fun e!46548 () Bool)

(assert (=> d!57509 (=> res!44576 e!46548)))

(assert (=> d!57509 (= res!44576 (not (and (is-Cons!671 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10812)) (is-Cons!671 (t!48159 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10812))))))))

(assert (=> d!57509 (= (isSorted!1 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10812)) e!46548)))

(declare-fun b!85811 () Bool)

(declare-fun e!46549 () Bool)

(assert (=> b!85811 (= e!46548 e!46549)))

(declare-fun res!44577 () Bool)

(assert (=> b!85811 (=> (not res!44577) (not e!46549))))

(assert (=> b!85811 (= res!44577 (<= (h!1044 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10812)) (h!1044 (t!48159 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10812)))))))

(declare-fun b!85812 () Bool)

(assert (=> b!85812 (= e!46549 (isSorted!1 (t!48159 (filter!47 (t!48159 (t!48159 ls!53)) lambda!10812))))))

(assert (= (and d!57509 (not res!44576)) b!85811))

(assert (= (and b!85811 res!44577) b!85812))

(declare-fun m!81648 () Bool)

(assert (=> b!85812 m!81648))

(assert (=> b!85745 d!57509))

(declare-fun b!85813 () Bool)

(declare-fun e!46551 () List!714)

(declare-fun lt!19969 () List!714)

(assert (=> b!85813 (= e!46551 (Cons!671 (h!1044 (t!48159 (t!48159 ls!53))) lt!19969))))

(declare-fun b!85814 () Bool)

(declare-fun e!46552 () List!714)

(assert (=> b!85814 (= e!46552 Nil!673)))

(declare-fun b!85815 () Bool)

(declare-fun res!44578 () Bool)

(declare-fun e!46550 () Bool)

(assert (=> b!85815 (=> (not res!44578) (not e!46550))))

(declare-fun lt!19970 () List!714)

(assert (=> b!85815 (= res!44578 (subset (content!155 lt!19970) (content!155 (t!48159 (t!48159 ls!53)))))))

(declare-fun b!85816 () Bool)

(assert (=> b!85816 (= e!46552 e!46551)))

(declare-fun c!21292 () Bool)

(declare-fun e!46553 () Bool)

(assert (=> b!85816 (= c!21292 e!46553)))

(declare-fun res!44579 () Bool)

(assert (=> b!85816 (=> (not res!44579) (not e!46553))))

(assert (=> b!85816 (= res!44579 (is-Cons!671 (t!48159 (t!48159 ls!53))))))

(assert (=> b!85816 (= lt!19969 (filter!47 (t!48159 (t!48159 (t!48159 ls!53))) lambda!10812))))

(declare-fun b!85817 () Bool)

(assert (=> b!85817 (= e!46550 (forall!61 lt!19970 lambda!10812))))

(declare-fun d!57511 () Bool)

(assert (=> d!57511 e!46550))

(declare-fun res!44580 () Bool)

(assert (=> d!57511 (=> (not res!44580) (not e!46550))))

(assert (=> d!57511 (= res!44580 (<= (size!683 lt!19970) (size!683 (t!48159 (t!48159 ls!53)))))))

(assert (=> d!57511 (= lt!19970 e!46552)))

(declare-fun c!21293 () Bool)

(assert (=> d!57511 (= c!21293 (is-Nil!673 (t!48159 (t!48159 ls!53))))))

(assert (=> d!57511 (= (filter!47 (t!48159 (t!48159 ls!53)) lambda!10812) lt!19970)))

(declare-fun b!85818 () Bool)

(assert (=> b!85818 (= e!46551 lt!19969)))

(declare-fun b!85819 () Bool)

(assert (=> b!85819 (= e!46553 (dynLambda!1022 lambda!10812 (h!1044 (t!48159 (t!48159 ls!53)))))))

(assert (= (and b!85816 res!44579) b!85819))

(assert (= (and b!85816 c!21292) b!85813))

(assert (= (and b!85816 (not c!21292)) b!85818))

(assert (= (and d!57511 c!21293) b!85814))

(assert (= (and d!57511 (not c!21293)) b!85816))

(assert (= (and d!57511 res!44580) b!85815))

(assert (= (and b!85815 res!44578) b!85817))

(declare-fun b_lambda!16933 () Bool)

(assert (=> (not b_lambda!16933) (not b!85819)))

(declare-fun m!81650 () Bool)

(assert (=> b!85819 m!81650))

(declare-fun m!81652 () Bool)

(assert (=> b!85815 m!81652))

(assert (=> b!85815 m!81608))

(declare-fun m!81654 () Bool)

(assert (=> b!85816 m!81654))

(declare-fun m!81656 () Bool)

(assert (=> b!85817 m!81656))

(declare-fun m!81658 () Bool)

(assert (=> d!57511 m!81658))

(assert (=> d!57511 m!81598))

(assert (=> b!85745 d!57511))

(declare-fun bs!41100 () Bool)

(declare-fun b!85820 () Bool)

(assert (= bs!41100 (and b!85820 b!85745)))

(declare-fun lambda!10814 () Int)

(assert (=> bs!41100 (= lambda!10814 lambda!10812)))

(declare-fun bs!41101 () Bool)

(assert (= bs!41101 (and b!85820 b!85746)))

(assert (=> bs!41101 (= lambda!10814 lambda!10813)))

(declare-fun bs!41102 () Bool)

(assert (= bs!41102 (and b!85820 b!85720)))

(assert (=> bs!41102 (= lambda!10814 lambda!10811)))

(declare-fun bs!41103 () Bool)

(assert (= bs!41103 (and b!85820 b!85685)))

(assert (=> bs!41103 (= lambda!10814 lambda!10805)))

(declare-fun bs!41104 () Bool)

(assert (= bs!41104 (and b!85820 b!85719)))

(assert (=> bs!41104 (= lambda!10814 lambda!10810)))

(assert (=> b!85820 true))

(declare-fun bs!41105 () Bool)

(declare-fun b!85821 () Bool)

(assert (= bs!41105 (and b!85821 b!85820)))

(declare-fun lambda!10815 () Int)

(assert (=> bs!41105 (= lambda!10815 lambda!10814)))

(declare-fun bs!41106 () Bool)

(assert (= bs!41106 (and b!85821 b!85745)))

(assert (=> bs!41106 (= lambda!10815 lambda!10812)))

(declare-fun bs!41107 () Bool)

(assert (= bs!41107 (and b!85821 b!85746)))

(assert (=> bs!41107 (= lambda!10815 lambda!10813)))

(declare-fun bs!41108 () Bool)

(assert (= bs!41108 (and b!85821 b!85720)))

(assert (=> bs!41108 (= lambda!10815 lambda!10811)))

(declare-fun bs!41109 () Bool)

(assert (= bs!41109 (and b!85821 b!85685)))

(assert (=> bs!41109 (= lambda!10815 lambda!10805)))

(declare-fun bs!41110 () Bool)

(assert (= bs!41110 (and b!85821 b!85719)))

(assert (=> bs!41110 (= lambda!10815 lambda!10810)))

(assert (=> b!85821 true))

(declare-fun e!46554 () Bool)

(assert (=> b!85820 (= e!46554 (isSorted!1 (filter!47 (t!48159 (t!48159 (t!48159 ls!53))) lambda!10814)))))

(declare-fun lt!19971 () Bool)

(assert (=> b!85820 (= lt!19971 (filter_equal_sorted!0 (t!48159 (t!48159 (t!48159 (t!48159 ls!53)))) x!29255))))

(declare-fun d!57513 () Bool)

(assert (=> d!57513 e!46554))

(declare-fun c!21294 () Bool)

(assert (=> d!57513 (= c!21294 (is-Cons!671 (t!48159 (t!48159 (t!48159 ls!53)))))))

(assert (=> d!57513 (= (filter_equal_sorted!0 (t!48159 (t!48159 (t!48159 ls!53))) x!29255) true)))

(assert (=> b!85821 (= e!46554 (isSorted!1 (filter!47 (t!48159 (t!48159 (t!48159 ls!53))) lambda!10815)))))

(assert (= (and d!57513 c!21294) b!85820))

(assert (= (and d!57513 (not c!21294)) b!85821))

(declare-fun m!81660 () Bool)

(assert (=> b!85820 m!81660))

(assert (=> b!85820 m!81660))

(declare-fun m!81662 () Bool)

(assert (=> b!85820 m!81662))

(declare-fun m!81664 () Bool)

(assert (=> b!85820 m!81664))

(declare-fun m!81666 () Bool)

(assert (=> b!85821 m!81666))

(assert (=> b!85821 m!81666))

(declare-fun m!81668 () Bool)

(assert (=> b!85821 m!81668))

(assert (=> b!85745 d!57513))

(declare-fun d!57515 () Bool)

(declare-fun lt!19972 () Int)

(assert (=> d!57515 (>= lt!19972 0)))

(declare-fun e!46555 () Int)

(assert (=> d!57515 (= lt!19972 e!46555)))

(declare-fun c!21295 () Bool)

(assert (=> d!57515 (= c!21295 (is-Nil!673 lt!19959))))

(assert (=> d!57515 (= (size!683 lt!19959) lt!19972)))

(declare-fun b!85822 () Bool)

(assert (=> b!85822 (= e!46555 0)))

(declare-fun b!85823 () Bool)

(assert (=> b!85823 (= e!46555 (+ 1 (size!683 (t!48159 lt!19959))))))

(assert (= (and d!57515 c!21295) b!85822))

(assert (= (and d!57515 (not c!21295)) b!85823))

(declare-fun m!81670 () Bool)

(assert (=> b!85823 m!81670))

(assert (=> d!57471 d!57515))

(assert (=> d!57471 d!57489))

(declare-fun d!57517 () Bool)

(declare-fun res!44581 () Bool)

(declare-fun e!46556 () Bool)

(assert (=> d!57517 (=> res!44581 e!46556)))

(assert (=> d!57517 (= res!44581 (is-Nil!673 lt!19959))))

(assert (=> d!57517 (= (forall!61 lt!19959 lambda!10805) e!46556)))

(declare-fun b!85824 () Bool)

(declare-fun e!46557 () Bool)

(assert (=> b!85824 (= e!46556 e!46557)))

(declare-fun res!44582 () Bool)

(assert (=> b!85824 (=> (not res!44582) (not e!46557))))

(assert (=> b!85824 (= res!44582 (dynLambda!1022 lambda!10805 (h!1044 lt!19959)))))

(declare-fun b!85825 () Bool)

(assert (=> b!85825 (= e!46557 (forall!61 (t!48159 lt!19959) lambda!10805))))

(assert (= (and d!57517 (not res!44581)) b!85824))

(assert (= (and b!85824 res!44582) b!85825))

(declare-fun b_lambda!16935 () Bool)

(assert (=> (not b_lambda!16935) (not b!85824)))

(declare-fun m!81672 () Bool)

(assert (=> b!85824 m!81672))

(declare-fun m!81674 () Bool)

(assert (=> b!85825 m!81674))

(assert (=> b!85761 d!57517))

(assert (=> b!85754 d!57489))

(declare-fun d!57519 () Bool)

(declare-fun res!44583 () Bool)

(declare-fun e!46558 () Bool)

(assert (=> d!57519 (=> res!44583 e!46558)))

(assert (=> d!57519 (= res!44583 (not (and (is-Cons!671 (t!48159 (t!48159 (filter!47 ls!53 lambda!10805)))) (is-Cons!671 (t!48159 (t!48159 (t!48159 (filter!47 ls!53 lambda!10805))))))))))

(assert (=> d!57519 (= (isSorted!1 (t!48159 (t!48159 (filter!47 ls!53 lambda!10805)))) e!46558)))

(declare-fun b!85826 () Bool)

(declare-fun e!46559 () Bool)

(assert (=> b!85826 (= e!46558 e!46559)))

(declare-fun res!44584 () Bool)

(assert (=> b!85826 (=> (not res!44584) (not e!46559))))

(assert (=> b!85826 (= res!44584 (<= (h!1044 (t!48159 (t!48159 (filter!47 ls!53 lambda!10805)))) (h!1044 (t!48159 (t!48159 (t!48159 (filter!47 ls!53 lambda!10805)))))))))

(declare-fun b!85827 () Bool)

(assert (=> b!85827 (= e!46559 (isSorted!1 (t!48159 (t!48159 (t!48159 (filter!47 ls!53 lambda!10805))))))))

(assert (= (and d!57519 (not res!44583)) b!85826))

(assert (= (and b!85826 res!44584) b!85827))

(declare-fun m!81676 () Bool)

(assert (=> b!85827 m!81676))

(assert (=> b!85756 d!57519))

(declare-fun d!57521 () Bool)

(declare-fun res!44585 () Bool)

(declare-fun e!46560 () Bool)

(assert (=> d!57521 (=> res!44585 e!46560)))

(assert (=> d!57521 (= res!44585 (not (and (is-Cons!671 (t!48159 (filter!47 (t!48159 ls!53) lambda!10811))) (is-Cons!671 (t!48159 (t!48159 (filter!47 (t!48159 ls!53) lambda!10811)))))))))

(assert (=> d!57521 (= (isSorted!1 (t!48159 (filter!47 (t!48159 ls!53) lambda!10811))) e!46560)))

(declare-fun b!85828 () Bool)

(declare-fun e!46561 () Bool)

(assert (=> b!85828 (= e!46560 e!46561)))

(declare-fun res!44586 () Bool)

(assert (=> b!85828 (=> (not res!44586) (not e!46561))))

(assert (=> b!85828 (= res!44586 (<= (h!1044 (t!48159 (filter!47 (t!48159 ls!53) lambda!10811))) (h!1044 (t!48159 (t!48159 (filter!47 (t!48159 ls!53) lambda!10811))))))))

(declare-fun b!85829 () Bool)

(assert (=> b!85829 (= e!46561 (isSorted!1 (t!48159 (t!48159 (filter!47 (t!48159 ls!53) lambda!10811)))))))

(assert (= (and d!57521 (not res!44585)) b!85828))

(assert (= (and b!85828 res!44586) b!85829))

(declare-fun m!81678 () Bool)

(assert (=> b!85829 m!81678))

(assert (=> b!85728 d!57521))

(assert (=> b!85771 d!57499))

(declare-fun d!57523 () Bool)

(declare-fun c!21296 () Bool)

(assert (=> d!57523 (= c!21296 (is-Nil!673 (t!48159 lt!19945)))))

(declare-fun e!46562 () (Set Int))

(assert (=> d!57523 (= (content!155 (t!48159 lt!19945)) e!46562)))

(declare-fun b!85830 () Bool)

(assert (=> b!85830 (= e!46562 (as emptyset (Set Int)))))

(declare-fun b!85831 () Bool)

(assert (=> b!85831 (= e!46562 (union (insert (h!1044 (t!48159 lt!19945)) (as emptyset (Set Int))) (content!155 (t!48159 (t!48159 lt!19945)))))))

(assert (= (and d!57523 c!21296) b!85830))

(assert (= (and d!57523 (not c!21296)) b!85831))

(declare-fun m!81680 () Bool)

(assert (=> b!85831 m!81680))

(declare-fun m!81682 () Bool)

(assert (=> b!85831 m!81682))

(assert (=> b!85769 d!57523))

(declare-fun b!85832 () Bool)

(declare-fun e!46564 () List!714)

(declare-fun lt!19973 () List!714)

(assert (=> b!85832 (= e!46564 (Cons!671 (h!1044 (t!48159 (t!48159 ls!53))) lt!19973))))

(declare-fun b!85833 () Bool)

(declare-fun e!46565 () List!714)

(assert (=> b!85833 (= e!46565 Nil!673)))

(declare-fun b!85834 () Bool)

(declare-fun res!44587 () Bool)

(declare-fun e!46563 () Bool)

(assert (=> b!85834 (=> (not res!44587) (not e!46563))))

(declare-fun lt!19974 () List!714)

(assert (=> b!85834 (= res!44587 (subset (content!155 lt!19974) (content!155 (t!48159 (t!48159 ls!53)))))))

(declare-fun b!85835 () Bool)

(assert (=> b!85835 (= e!46565 e!46564)))

(declare-fun c!21297 () Bool)

(declare-fun e!46566 () Bool)

(assert (=> b!85835 (= c!21297 e!46566)))

(declare-fun res!44588 () Bool)

(assert (=> b!85835 (=> (not res!44588) (not e!46566))))

(assert (=> b!85835 (= res!44588 (is-Cons!671 (t!48159 (t!48159 ls!53))))))

(assert (=> b!85835 (= lt!19973 (filter!47 (t!48159 (t!48159 (t!48159 ls!53))) lambda!10811))))

(declare-fun b!85836 () Bool)

(assert (=> b!85836 (= e!46563 (forall!61 lt!19974 lambda!10811))))

(declare-fun d!57525 () Bool)

(assert (=> d!57525 e!46563))

(declare-fun res!44589 () Bool)

(assert (=> d!57525 (=> (not res!44589) (not e!46563))))

(assert (=> d!57525 (= res!44589 (<= (size!683 lt!19974) (size!683 (t!48159 (t!48159 ls!53)))))))

(assert (=> d!57525 (= lt!19974 e!46565)))

(declare-fun c!21298 () Bool)

(assert (=> d!57525 (= c!21298 (is-Nil!673 (t!48159 (t!48159 ls!53))))))

(assert (=> d!57525 (= (filter!47 (t!48159 (t!48159 ls!53)) lambda!10811) lt!19974)))

(declare-fun b!85837 () Bool)

(assert (=> b!85837 (= e!46564 lt!19973)))

(declare-fun b!85838 () Bool)

(assert (=> b!85838 (= e!46566 (dynLambda!1022 lambda!10811 (h!1044 (t!48159 (t!48159 ls!53)))))))

(assert (= (and b!85835 res!44588) b!85838))

(assert (= (and b!85835 c!21297) b!85832))

(assert (= (and b!85835 (not c!21297)) b!85837))

(assert (= (and d!57525 c!21298) b!85833))

(assert (= (and d!57525 (not c!21298)) b!85835))

(assert (= (and d!57525 res!44589) b!85834))

(assert (= (and b!85834 res!44587) b!85836))

(declare-fun b_lambda!16937 () Bool)

(assert (=> (not b_lambda!16937) (not b!85838)))

(declare-fun m!81684 () Bool)

(assert (=> b!85838 m!81684))

(declare-fun m!81686 () Bool)

(assert (=> b!85834 m!81686))

(assert (=> b!85834 m!81608))

(declare-fun m!81688 () Bool)

(assert (=> b!85835 m!81688))

(declare-fun m!81690 () Bool)

(assert (=> b!85836 m!81690))

(declare-fun m!81692 () Bool)

(assert (=> d!57525 m!81692))

(assert (=> d!57525 m!81598))

(assert (=> b!85732 d!57525))

(declare-fun d!57527 () Bool)

(declare-fun lt!19975 () Int)

(assert (=> d!57527 (>= lt!19975 0)))

(declare-fun e!46567 () Int)

(assert (=> d!57527 (= lt!19975 e!46567)))

(declare-fun c!21299 () Bool)

(assert (=> d!57527 (= c!21299 (is-Nil!673 (t!48159 lt!19945)))))

(assert (=> d!57527 (= (size!683 (t!48159 lt!19945)) lt!19975)))

(declare-fun b!85839 () Bool)

(assert (=> b!85839 (= e!46567 0)))

(declare-fun b!85840 () Bool)

(assert (=> b!85840 (= e!46567 (+ 1 (size!683 (t!48159 (t!48159 lt!19945)))))))

(assert (= (and d!57527 c!21299) b!85839))

(assert (= (and d!57527 (not c!21299)) b!85840))

(declare-fun m!81694 () Bool)

(assert (=> b!85840 m!81694))

(assert (=> b!85752 d!57527))

(declare-fun d!57529 () Bool)

(declare-fun c!21300 () Bool)

(assert (=> d!57529 (= c!21300 (is-Nil!673 lt!19959))))

(declare-fun e!46568 () (Set Int))

(assert (=> d!57529 (= (content!155 lt!19959) e!46568)))

(declare-fun b!85841 () Bool)

(assert (=> b!85841 (= e!46568 (as emptyset (Set Int)))))

(declare-fun b!85842 () Bool)

(assert (=> b!85842 (= e!46568 (union (insert (h!1044 lt!19959) (as emptyset (Set Int))) (content!155 (t!48159 lt!19959))))))

(assert (= (and d!57529 c!21300) b!85841))

(assert (= (and d!57529 (not c!21300)) b!85842))

(declare-fun m!81696 () Bool)

(assert (=> b!85842 m!81696))

(declare-fun m!81698 () Bool)

(assert (=> b!85842 m!81698))

(assert (=> b!85759 d!57529))

(assert (=> b!85759 d!57499))

(declare-fun d!57531 () Bool)

(declare-fun res!44590 () Bool)

(declare-fun e!46569 () Bool)

(assert (=> d!57531 (=> res!44590 e!46569)))

(assert (=> d!57531 (= res!44590 (is-Nil!673 (t!48159 lt!19945)))))

(assert (=> d!57531 (= (forall!61 (t!48159 lt!19945) lambda!10805) e!46569)))

(declare-fun b!85843 () Bool)

(declare-fun e!46570 () Bool)

(assert (=> b!85843 (= e!46569 e!46570)))

(declare-fun res!44591 () Bool)

(assert (=> b!85843 (=> (not res!44591) (not e!46570))))

(assert (=> b!85843 (= res!44591 (dynLambda!1022 lambda!10805 (h!1044 (t!48159 lt!19945))))))

(declare-fun b!85844 () Bool)

(assert (=> b!85844 (= e!46570 (forall!61 (t!48159 (t!48159 lt!19945)) lambda!10805))))

(assert (= (and d!57531 (not res!44590)) b!85843))

(assert (= (and b!85843 res!44591) b!85844))

(declare-fun b_lambda!16939 () Bool)

(assert (=> (not b_lambda!16939) (not b!85843)))

(declare-fun m!81700 () Bool)

(assert (=> b!85843 m!81700))

(declare-fun m!81702 () Bool)

(assert (=> b!85844 m!81702))

(assert (=> b!85726 d!57531))

(declare-fun d!57533 () Bool)

(declare-fun c!21301 () Bool)

(assert (=> d!57533 (= c!21301 (is-Nil!673 lt!19952))))

(declare-fun e!46571 () (Set Int))

(assert (=> d!57533 (= (content!155 lt!19952) e!46571)))

(declare-fun b!85845 () Bool)

(assert (=> b!85845 (= e!46571 (as emptyset (Set Int)))))

(declare-fun b!85846 () Bool)

(assert (=> b!85846 (= e!46571 (union (insert (h!1044 lt!19952) (as emptyset (Set Int))) (content!155 (t!48159 lt!19952))))))

(assert (= (and d!57533 c!21301) b!85845))

(assert (= (and d!57533 (not c!21301)) b!85846))

(declare-fun m!81704 () Bool)

(assert (=> b!85846 m!81704))

(declare-fun m!81706 () Bool)

(assert (=> b!85846 m!81706))

(assert (=> b!85740 d!57533))

(assert (=> b!85740 d!57499))

(declare-fun b_lambda!16941 () Bool)

(assert (= b_lambda!16927 (or b!85685 b_lambda!16941)))

(declare-fun bs!41111 () Bool)

(declare-fun d!57535 () Bool)

(assert (= bs!41111 (and d!57535 b!85685)))

(assert (=> bs!41111 (= (dynLambda!1022 lambda!10805 (h!1044 (t!48159 (t!48159 ls!53)))) (= (h!1044 (t!48159 (t!48159 ls!53))) x!29255))))

(assert (=> b!85786 d!57535))

(declare-fun b_lambda!16943 () Bool)

(assert (= b_lambda!16939 (or b!85685 b_lambda!16943)))

(declare-fun bs!41112 () Bool)

(declare-fun d!57537 () Bool)

(assert (= bs!41112 (and d!57537 b!85685)))

(assert (=> bs!41112 (= (dynLambda!1022 lambda!10805 (h!1044 (t!48159 lt!19945))) (= (h!1044 (t!48159 lt!19945)) x!29255))))

(assert (=> b!85843 d!57537))

(declare-fun b_lambda!16945 () Bool)

(assert (= b_lambda!16929 (or b!85719 b_lambda!16945)))

(declare-fun bs!41113 () Bool)

(declare-fun d!57539 () Bool)

(assert (= bs!41113 (and d!57539 b!85719)))

(assert (=> bs!41113 (= (dynLambda!1022 lambda!10810 (h!1044 (t!48159 (t!48159 ls!53)))) (= (h!1044 (t!48159 (t!48159 ls!53))) x!29255))))

(assert (=> b!85793 d!57539))

(declare-fun b_lambda!16947 () Bool)

(assert (= b_lambda!16935 (or b!85685 b_lambda!16947)))

(declare-fun bs!41114 () Bool)

(declare-fun d!57541 () Bool)

(assert (= bs!41114 (and d!57541 b!85685)))

(assert (=> bs!41114 (= (dynLambda!1022 lambda!10805 (h!1044 lt!19959)) (= (h!1044 lt!19959) x!29255))))

(assert (=> b!85824 d!57541))

(declare-fun b_lambda!16949 () Bool)

(assert (= b_lambda!16931 (or b!85746 b_lambda!16949)))

(declare-fun bs!41115 () Bool)

(declare-fun d!57543 () Bool)

(assert (= bs!41115 (and d!57543 b!85746)))

(assert (=> bs!41115 (= (dynLambda!1022 lambda!10813 (h!1044 (t!48159 (t!48159 ls!53)))) (= (h!1044 (t!48159 (t!48159 ls!53))) x!29255))))

(assert (=> b!85810 d!57543))

(declare-fun b_lambda!16951 () Bool)

(assert (= b_lambda!16933 (or b!85745 b_lambda!16951)))

(declare-fun bs!41116 () Bool)

(declare-fun d!57545 () Bool)

(assert (= bs!41116 (and d!57545 b!85745)))

(assert (=> bs!41116 (= (dynLambda!1022 lambda!10812 (h!1044 (t!48159 (t!48159 ls!53)))) (= (h!1044 (t!48159 (t!48159 ls!53))) x!29255))))

(assert (=> b!85819 d!57545))

(declare-fun b_lambda!16953 () Bool)

(assert (= b_lambda!16923 (or b!85719 b_lambda!16953)))

(declare-fun bs!41117 () Bool)

(declare-fun d!57547 () Bool)

(assert (= bs!41117 (and d!57547 b!85719)))

(assert (=> bs!41117 (= (dynLambda!1022 lambda!10810 (h!1044 lt!19952)) (= (h!1044 lt!19952) x!29255))))

(assert (=> b!85772 d!57547))

(declare-fun b_lambda!16955 () Bool)

(assert (= b_lambda!16937 (or b!85720 b_lambda!16955)))

(declare-fun bs!41118 () Bool)

(declare-fun d!57549 () Bool)

(assert (= bs!41118 (and d!57549 b!85720)))

(assert (=> bs!41118 (= (dynLambda!1022 lambda!10811 (h!1044 (t!48159 (t!48159 ls!53)))) (= (h!1044 (t!48159 (t!48159 ls!53))) x!29255))))

(assert (=> b!85838 d!57549))

(declare-fun b_lambda!16957 () Bool)

(assert (= b_lambda!16925 (or b!85720 b_lambda!16957)))

(declare-fun bs!41119 () Bool)

(declare-fun d!57551 () Bool)

(assert (= bs!41119 (and d!57551 b!85720)))

(assert (=> bs!41119 (= (dynLambda!1022 lambda!10811 (h!1044 lt!19950)) (= (h!1044 lt!19950) x!29255))))

(assert (=> b!85778 d!57551))

(push 1)

(assert (not b!85820))

(assert (not b!85789))

(assert (not b_lambda!16947))

(assert (not b_lambda!16921))

(assert (not b!85840))

(assert (not b!85821))

(assert (not b_lambda!16941))

(assert (not b!85825))

(assert (not b_lambda!16919))

(assert (not b!85806))

(assert (not b_lambda!16943))

(assert (not b!85784))

(assert (not b!85842))

(assert (not b!85795))

(assert (not b!85836))

(assert (not b!85823))

(assert (not d!57511))

(assert (not b!85801))

(assert (not d!57493))

(assert (not b!85827))

(assert (not b!85817))

(assert (not d!57525))

(assert (not b!85803))

(assert (not b_lambda!16905))

(assert (not b_lambda!16917))

(assert (not b!85773))

(assert (not b_lambda!16955))

(assert (not b_lambda!16915))

(assert (not b!85777))

(assert (not b!85846))

(assert (not b!85807))

(assert (not b!85829))

(assert (not b!85775))

(assert (not b!85783))

(assert (not b!85812))

(assert (not b!85834))

(assert (not b!85797))

(assert (not b!85815))

(assert (not b!85808))

(assert (not b!85790))

(assert (not b!85779))

(assert (not b_lambda!16953))

(assert (not d!57495))

(assert (not b_lambda!16957))

(assert (not b_lambda!16949))

(assert (not b!85831))

(assert (not d!57507))

(assert (not b!85835))

(assert (not b!85799))

(assert (not b!85791))

(assert (not b!85816))

(assert (not b!85782))

(assert (not b_lambda!16951))

(assert (not b!85844))

(assert (not b_lambda!16945))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


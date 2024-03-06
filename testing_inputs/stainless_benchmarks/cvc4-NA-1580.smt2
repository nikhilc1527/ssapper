; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10958 () Bool)

(assert start!10958)

(declare-fun b!83717 () Bool)

(assert (=> b!83717 true))

(declare-fun lambda!10442 () Int)

(declare-fun lambda!10441 () Int)

(assert (=> b!83717 (not (= lambda!10442 lambda!10441))))

(assert (=> b!83717 true))

(declare-fun lambda!10443 () Int)

(assert (=> b!83717 (not (= lambda!10443 lambda!10441))))

(assert (=> b!83717 (not (= lambda!10443 lambda!10442))))

(assert (=> b!83717 true))

(declare-fun e!45395 () Bool)

(declare-fun e!45393 () Bool)

(assert (=> b!83717 (= e!45395 e!45393)))

(declare-fun res!43116 () Bool)

(assert (=> b!83717 (=> (not res!43116) (not e!45393))))

(declare-datatypes () ((List!678 (Cons!635 (h!1005 Int) (t!47930 List!678)) (Nil!637))))

(declare-fun lt!19541 () List!678)

(declare-fun lt!19539 () List!678)

(declare-fun append_sorted!0 (List!678 List!678) Bool)

(declare-fun quickSort!0 (List!678) List!678)

(assert (=> b!83717 (= res!43116 (append_sorted!0 (quickSort!0 lt!19541) lt!19539))))

(declare-fun lt!19540 () List!678)

(declare-fun ls!96 () List!678)

(declare-fun filter!31 (List!678 Int) List!678)

(assert (=> b!83717 (= lt!19540 (filter!31 (t!47930 ls!96) lambda!10443))))

(assert (=> b!83717 (= lt!19539 (Cons!635 (h!1005 ls!96) (filter!31 (t!47930 ls!96) lambda!10442)))))

(assert (=> b!83717 (= lt!19541 (filter!31 (t!47930 ls!96) lambda!10441))))

(declare-fun b!83718 () Bool)

(declare-fun ++!85 (List!678 List!678) List!678)

(assert (=> b!83718 (= e!45393 (append_sorted!0 (++!85 (quickSort!0 lt!19541) lt!19539) (quickSort!0 lt!19540)))))

(declare-fun res!43114 () Bool)

(declare-fun e!45394 () Bool)

(assert (=> start!10958 (=> (not res!43114) (not e!45394))))

(declare-fun t!47742 () Bool)

(assert (=> start!10958 (= res!43114 (= t!47742 e!45395))))

(declare-fun res!43117 () Bool)

(assert (=> start!10958 (=> res!43117 e!45395)))

(assert (=> start!10958 (= res!43117 (or (is-Nil!637 ls!96) (and (is-Cons!635 ls!96) (is-Nil!637 (t!47930 ls!96)))))))

(assert (=> start!10958 e!45394))

(assert (=> start!10958 true))

(declare-fun b!83719 () Bool)

(declare-fun res!43115 () Bool)

(assert (=> b!83719 (=> (not res!43115) (not e!45394))))

(declare-fun tmp!534 () Bool)

(declare-fun res!40834 () Bool)

(assert (=> b!83719 (= res!43115 (and (= res!40834 t!47742) (= tmp!534 res!40834)))))

(declare-fun b!83720 () Bool)

(declare-fun isSorted!1 (List!678) Bool)

(assert (=> b!83720 (= e!45394 (not (isSorted!1 (quickSort!0 ls!96))))))

(assert (= (and start!10958 (not res!43117)) b!83717))

(assert (= (and b!83717 res!43116) b!83718))

(assert (= (and start!10958 res!43114) b!83719))

(assert (= (and b!83719 res!43115) b!83720))

(declare-fun m!79584 () Bool)

(assert (=> b!83717 m!79584))

(declare-fun m!79586 () Bool)

(assert (=> b!83717 m!79586))

(declare-fun m!79588 () Bool)

(assert (=> b!83717 m!79588))

(declare-fun m!79590 () Bool)

(assert (=> b!83717 m!79590))

(declare-fun m!79592 () Bool)

(assert (=> b!83717 m!79592))

(assert (=> b!83717 m!79590))

(assert (=> b!83718 m!79590))

(assert (=> b!83718 m!79590))

(declare-fun m!79594 () Bool)

(assert (=> b!83718 m!79594))

(declare-fun m!79596 () Bool)

(assert (=> b!83718 m!79596))

(assert (=> b!83718 m!79594))

(assert (=> b!83718 m!79596))

(declare-fun m!79598 () Bool)

(assert (=> b!83718 m!79598))

(declare-fun m!79600 () Bool)

(assert (=> b!83720 m!79600))

(assert (=> b!83720 m!79600))

(declare-fun m!79602 () Bool)

(assert (=> b!83720 m!79602))

(push 1)

(assert (not b!83720))

(assert (not b!83717))

(assert (not b!83718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!56583 () Bool)

(declare-fun res!43122 () Bool)

(declare-fun e!45400 () Bool)

(assert (=> d!56583 (=> res!43122 e!45400)))

(assert (=> d!56583 (= res!43122 (not (and (is-Cons!635 (quickSort!0 ls!96)) (is-Cons!635 (t!47930 (quickSort!0 ls!96))))))))

(assert (=> d!56583 (= (isSorted!1 (quickSort!0 ls!96)) e!45400)))

(declare-fun b!83727 () Bool)

(declare-fun e!45401 () Bool)

(assert (=> b!83727 (= e!45400 e!45401)))

(declare-fun res!43123 () Bool)

(assert (=> b!83727 (=> (not res!43123) (not e!45401))))

(assert (=> b!83727 (= res!43123 (<= (h!1005 (quickSort!0 ls!96)) (h!1005 (t!47930 (quickSort!0 ls!96)))))))

(declare-fun b!83728 () Bool)

(assert (=> b!83728 (= e!45401 (isSorted!1 (t!47930 (quickSort!0 ls!96))))))

(assert (= (and d!56583 (not res!43122)) b!83727))

(assert (= (and b!83727 res!43123) b!83728))

(declare-fun m!79604 () Bool)

(assert (=> b!83728 m!79604))

(assert (=> b!83720 d!56583))

(declare-fun bs!40710 () Bool)

(declare-fun b!83740 () Bool)

(assert (= bs!40710 (and b!83740 b!83717)))

(declare-fun lambda!10450 () Int)

(assert (=> bs!40710 (= lambda!10450 lambda!10441)))

(assert (=> bs!40710 (not (= lambda!10450 lambda!10442))))

(assert (=> bs!40710 (not (= lambda!10450 lambda!10443))))

(assert (=> b!83740 true))

(declare-fun lambda!10451 () Int)

(assert (=> bs!40710 (not (= lambda!10451 lambda!10441))))

(assert (=> bs!40710 (= lambda!10451 lambda!10442)))

(assert (=> bs!40710 (not (= lambda!10451 lambda!10443))))

(assert (=> b!83740 (not (= lambda!10451 lambda!10450))))

(assert (=> b!83740 true))

(declare-fun lambda!10452 () Int)

(assert (=> b!83740 (not (= lambda!10452 lambda!10451))))

(assert (=> b!83740 (not (= lambda!10452 lambda!10450))))

(assert (=> bs!40710 (= lambda!10452 lambda!10443)))

(assert (=> bs!40710 (not (= lambda!10452 lambda!10442))))

(assert (=> bs!40710 (not (= lambda!10452 lambda!10441))))

(assert (=> b!83740 true))

(declare-fun b!83738 () Bool)

(declare-fun e!45406 () List!678)

(declare-fun e!45407 () List!678)

(assert (=> b!83738 (= e!45406 e!45407)))

(declare-fun c!20956 () Bool)

(assert (=> b!83738 (= c!20956 (and (is-Cons!635 ls!96) (is-Nil!637 (t!47930 ls!96))))))

(declare-fun b!83737 () Bool)

(assert (=> b!83737 (= e!45406 Nil!637)))

(declare-fun b!83739 () Bool)

(assert (=> b!83739 (= e!45407 ls!96)))

(declare-fun d!56585 () Bool)

(declare-fun c!20955 () Bool)

(assert (=> d!56585 (= c!20955 (is-Nil!637 ls!96))))

(assert (=> d!56585 (= (quickSort!0 ls!96) e!45406)))

(assert (=> b!83740 (= e!45407 (++!85 (++!85 (quickSort!0 (filter!31 (t!47930 ls!96) lambda!10450)) (Cons!635 (h!1005 ls!96) (filter!31 (t!47930 ls!96) lambda!10451))) (quickSort!0 (filter!31 (t!47930 ls!96) lambda!10452))))))

(assert (= (and b!83738 c!20956) b!83739))

(assert (= (and b!83738 (not c!20956)) b!83740))

(assert (= (and d!56585 c!20955) b!83737))

(assert (= (and d!56585 (not c!20955)) b!83738))

(declare-fun m!79606 () Bool)

(assert (=> b!83740 m!79606))

(declare-fun m!79608 () Bool)

(assert (=> b!83740 m!79608))

(assert (=> b!83740 m!79608))

(declare-fun m!79610 () Bool)

(assert (=> b!83740 m!79610))

(declare-fun m!79612 () Bool)

(assert (=> b!83740 m!79612))

(declare-fun m!79614 () Bool)

(assert (=> b!83740 m!79614))

(declare-fun m!79616 () Bool)

(assert (=> b!83740 m!79616))

(assert (=> b!83740 m!79616))

(assert (=> b!83740 m!79610))

(assert (=> b!83740 m!79614))

(assert (=> b!83740 m!79606))

(declare-fun m!79618 () Bool)

(assert (=> b!83740 m!79618))

(assert (=> b!83720 d!56585))

(declare-fun b!83755 () Bool)

(declare-fun e!45417 () List!678)

(declare-fun e!45416 () List!678)

(assert (=> b!83755 (= e!45417 e!45416)))

(declare-fun c!20962 () Bool)

(declare-fun e!45419 () Bool)

(assert (=> b!83755 (= c!20962 e!45419)))

(declare-fun res!43134 () Bool)

(assert (=> b!83755 (=> (not res!43134) (not e!45419))))

(assert (=> b!83755 (= res!43134 (is-Cons!635 (t!47930 ls!96)))))

(declare-fun lt!19546 () List!678)

(assert (=> b!83755 (= lt!19546 (filter!31 (t!47930 (t!47930 ls!96)) lambda!10442))))

(declare-fun b!83756 () Bool)

(declare-fun e!45418 () Bool)

(declare-fun lt!19547 () List!678)

(declare-fun forall!32 (List!678 Int) Bool)

(assert (=> b!83756 (= e!45418 (forall!32 lt!19547 lambda!10442))))

(declare-fun d!56587 () Bool)

(assert (=> d!56587 e!45418))

(declare-fun res!43136 () Bool)

(assert (=> d!56587 (=> (not res!43136) (not e!45418))))

(declare-fun size!665 (List!678) Int)

(assert (=> d!56587 (= res!43136 (<= (size!665 lt!19547) (size!665 (t!47930 ls!96))))))

(assert (=> d!56587 (= lt!19547 e!45417)))

(declare-fun c!20961 () Bool)

(assert (=> d!56587 (= c!20961 (is-Nil!637 (t!47930 ls!96)))))

(assert (=> d!56587 (= (filter!31 (t!47930 ls!96) lambda!10442) lt!19547)))

(declare-fun b!83757 () Bool)

(assert (=> b!83757 (= e!45417 Nil!637)))

(declare-fun b!83758 () Bool)

(assert (=> b!83758 (= e!45416 lt!19546)))

(declare-fun b!83759 () Bool)

(declare-fun res!43135 () Bool)

(assert (=> b!83759 (=> (not res!43135) (not e!45418))))

(declare-fun content!136 (List!678) (Set Int))

(assert (=> b!83759 (= res!43135 (subset (content!136 lt!19547) (content!136 (t!47930 ls!96))))))

(declare-fun b!83760 () Bool)

(assert (=> b!83760 (= e!45416 (Cons!635 (h!1005 (t!47930 ls!96)) lt!19546))))

(declare-fun b!83761 () Bool)

(declare-fun dynLambda!996 (Int Int) Bool)

(assert (=> b!83761 (= e!45419 (dynLambda!996 lambda!10442 (h!1005 (t!47930 ls!96))))))

(assert (= (and b!83755 res!43134) b!83761))

(assert (= (and b!83755 c!20962) b!83760))

(assert (= (and b!83755 (not c!20962)) b!83758))

(assert (= (and d!56587 c!20961) b!83757))

(assert (= (and d!56587 (not c!20961)) b!83755))

(assert (= (and d!56587 res!43136) b!83759))

(assert (= (and b!83759 res!43135) b!83756))

(declare-fun b_lambda!16515 () Bool)

(assert (=> (not b_lambda!16515) (not b!83761)))

(declare-fun m!79620 () Bool)

(assert (=> d!56587 m!79620))

(declare-fun m!79622 () Bool)

(assert (=> d!56587 m!79622))

(declare-fun m!79624 () Bool)

(assert (=> b!83756 m!79624))

(declare-fun m!79626 () Bool)

(assert (=> b!83761 m!79626))

(declare-fun m!79628 () Bool)

(assert (=> b!83759 m!79628))

(declare-fun m!79630 () Bool)

(assert (=> b!83759 m!79630))

(declare-fun m!79632 () Bool)

(assert (=> b!83755 m!79632))

(assert (=> b!83717 d!56587))

(declare-fun b!83762 () Bool)

(declare-fun e!45421 () List!678)

(declare-fun e!45420 () List!678)

(assert (=> b!83762 (= e!45421 e!45420)))

(declare-fun c!20964 () Bool)

(declare-fun e!45423 () Bool)

(assert (=> b!83762 (= c!20964 e!45423)))

(declare-fun res!43137 () Bool)

(assert (=> b!83762 (=> (not res!43137) (not e!45423))))

(assert (=> b!83762 (= res!43137 (is-Cons!635 (t!47930 ls!96)))))

(declare-fun lt!19548 () List!678)

(assert (=> b!83762 (= lt!19548 (filter!31 (t!47930 (t!47930 ls!96)) lambda!10443))))

(declare-fun b!83763 () Bool)

(declare-fun e!45422 () Bool)

(declare-fun lt!19549 () List!678)

(assert (=> b!83763 (= e!45422 (forall!32 lt!19549 lambda!10443))))

(declare-fun d!56589 () Bool)

(assert (=> d!56589 e!45422))

(declare-fun res!43139 () Bool)

(assert (=> d!56589 (=> (not res!43139) (not e!45422))))

(assert (=> d!56589 (= res!43139 (<= (size!665 lt!19549) (size!665 (t!47930 ls!96))))))

(assert (=> d!56589 (= lt!19549 e!45421)))

(declare-fun c!20963 () Bool)

(assert (=> d!56589 (= c!20963 (is-Nil!637 (t!47930 ls!96)))))

(assert (=> d!56589 (= (filter!31 (t!47930 ls!96) lambda!10443) lt!19549)))

(declare-fun b!83764 () Bool)

(assert (=> b!83764 (= e!45421 Nil!637)))

(declare-fun b!83765 () Bool)

(assert (=> b!83765 (= e!45420 lt!19548)))

(declare-fun b!83766 () Bool)

(declare-fun res!43138 () Bool)

(assert (=> b!83766 (=> (not res!43138) (not e!45422))))

(assert (=> b!83766 (= res!43138 (subset (content!136 lt!19549) (content!136 (t!47930 ls!96))))))

(declare-fun b!83767 () Bool)

(assert (=> b!83767 (= e!45420 (Cons!635 (h!1005 (t!47930 ls!96)) lt!19548))))

(declare-fun b!83768 () Bool)

(assert (=> b!83768 (= e!45423 (dynLambda!996 lambda!10443 (h!1005 (t!47930 ls!96))))))

(assert (= (and b!83762 res!43137) b!83768))

(assert (= (and b!83762 c!20964) b!83767))

(assert (= (and b!83762 (not c!20964)) b!83765))

(assert (= (and d!56589 c!20963) b!83764))

(assert (= (and d!56589 (not c!20963)) b!83762))

(assert (= (and d!56589 res!43139) b!83766))

(assert (= (and b!83766 res!43138) b!83763))

(declare-fun b_lambda!16517 () Bool)

(assert (=> (not b_lambda!16517) (not b!83768)))

(declare-fun m!79634 () Bool)

(assert (=> d!56589 m!79634))

(assert (=> d!56589 m!79622))

(declare-fun m!79636 () Bool)

(assert (=> b!83763 m!79636))

(declare-fun m!79638 () Bool)

(assert (=> b!83768 m!79638))

(declare-fun m!79640 () Bool)

(assert (=> b!83766 m!79640))

(assert (=> b!83766 m!79630))

(declare-fun m!79642 () Bool)

(assert (=> b!83762 m!79642))

(assert (=> b!83717 d!56589))

(declare-fun b!83781 () Bool)

(declare-fun res!43148 () Bool)

(declare-fun e!45432 () Bool)

(assert (=> b!83781 (=> res!43148 e!45432)))

(declare-fun isEmpty!687 (List!678) Bool)

(assert (=> b!83781 (= res!43148 (isEmpty!687 lt!19539))))

(declare-fun d!56591 () Bool)

(declare-fun e!45431 () Bool)

(assert (=> d!56591 e!45431))

(declare-fun c!20967 () Bool)

(assert (=> d!56591 (= c!20967 (is-Cons!635 (quickSort!0 lt!19541)))))

(declare-fun e!45430 () Bool)

(assert (=> d!56591 e!45430))

(declare-fun res!43150 () Bool)

(assert (=> d!56591 (=> (not res!43150) (not e!45430))))

(assert (=> d!56591 (= res!43150 (isSorted!1 (quickSort!0 lt!19541)))))

(assert (=> d!56591 (= (append_sorted!0 (quickSort!0 lt!19541) lt!19539) true)))

(declare-fun b!83782 () Bool)

(declare-fun last!27 (List!678) Int)

(declare-fun head!1063 (List!678) Int)

(assert (=> b!83782 (= e!45432 (<= (last!27 (quickSort!0 lt!19541)) (head!1063 lt!19539)))))

(declare-fun b!83783 () Bool)

(assert (=> b!83783 (= e!45431 (isSorted!1 (++!85 (quickSort!0 lt!19541) lt!19539)))))

(declare-fun lt!19552 () Bool)

(assert (=> b!83783 (= lt!19552 (append_sorted!0 (t!47930 (quickSort!0 lt!19541)) lt!19539))))

(declare-fun b!83784 () Bool)

(declare-fun res!43151 () Bool)

(assert (=> b!83784 (=> (not res!43151) (not e!45430))))

(assert (=> b!83784 (= res!43151 (isSorted!1 lt!19539))))

(declare-fun b!83785 () Bool)

(assert (=> b!83785 (= e!45430 e!45432)))

(declare-fun res!43149 () Bool)

(assert (=> b!83785 (=> res!43149 e!45432)))

(assert (=> b!83785 (= res!43149 (isEmpty!687 (quickSort!0 lt!19541)))))

(declare-fun b!83786 () Bool)

(assert (=> b!83786 (= e!45431 (isSorted!1 (++!85 (quickSort!0 lt!19541) lt!19539)))))

(assert (= (and d!56591 res!43150) b!83784))

(assert (= (and b!83784 res!43151) b!83785))

(assert (= (and b!83785 (not res!43149)) b!83781))

(assert (= (and b!83781 (not res!43148)) b!83782))

(assert (= (and d!56591 c!20967) b!83783))

(assert (= (and d!56591 (not c!20967)) b!83786))

(assert (=> b!83785 m!79590))

(declare-fun m!79644 () Bool)

(assert (=> b!83785 m!79644))

(declare-fun m!79646 () Bool)

(assert (=> b!83781 m!79646))

(assert (=> b!83786 m!79590))

(assert (=> b!83786 m!79594))

(assert (=> b!83786 m!79594))

(declare-fun m!79648 () Bool)

(assert (=> b!83786 m!79648))

(assert (=> d!56591 m!79590))

(declare-fun m!79650 () Bool)

(assert (=> d!56591 m!79650))

(declare-fun m!79652 () Bool)

(assert (=> b!83784 m!79652))

(assert (=> b!83782 m!79590))

(declare-fun m!79654 () Bool)

(assert (=> b!83782 m!79654))

(declare-fun m!79656 () Bool)

(assert (=> b!83782 m!79656))

(assert (=> b!83783 m!79590))

(assert (=> b!83783 m!79594))

(assert (=> b!83783 m!79594))

(assert (=> b!83783 m!79648))

(declare-fun m!79658 () Bool)

(assert (=> b!83783 m!79658))

(assert (=> b!83717 d!56591))

(declare-fun bs!40711 () Bool)

(declare-fun b!83790 () Bool)

(assert (= bs!40711 (and b!83790 b!83740)))

(declare-fun lambda!10453 () Int)

(assert (=> bs!40711 (not (= lambda!10453 lambda!10452))))

(assert (=> bs!40711 (not (= lambda!10453 lambda!10451))))

(assert (=> bs!40711 (= (= (h!1005 lt!19541) (h!1005 ls!96)) (= lambda!10453 lambda!10450))))

(declare-fun bs!40712 () Bool)

(assert (= bs!40712 (and b!83790 b!83717)))

(assert (=> bs!40712 (not (= lambda!10453 lambda!10443))))

(assert (=> bs!40712 (not (= lambda!10453 lambda!10442))))

(assert (=> bs!40712 (= (= (h!1005 lt!19541) (h!1005 ls!96)) (= lambda!10453 lambda!10441))))

(assert (=> b!83790 true))

(declare-fun lambda!10454 () Int)

(assert (=> b!83790 (not (= lambda!10454 lambda!10453))))

(assert (=> bs!40711 (not (= lambda!10454 lambda!10452))))

(assert (=> bs!40711 (= (= (h!1005 lt!19541) (h!1005 ls!96)) (= lambda!10454 lambda!10451))))

(assert (=> bs!40711 (not (= lambda!10454 lambda!10450))))

(assert (=> bs!40712 (not (= lambda!10454 lambda!10443))))

(assert (=> bs!40712 (= (= (h!1005 lt!19541) (h!1005 ls!96)) (= lambda!10454 lambda!10442))))

(assert (=> bs!40712 (not (= lambda!10454 lambda!10441))))

(assert (=> b!83790 true))

(declare-fun lambda!10455 () Int)

(assert (=> b!83790 (not (= lambda!10455 lambda!10454))))

(assert (=> b!83790 (not (= lambda!10455 lambda!10453))))

(assert (=> bs!40711 (= (= (h!1005 lt!19541) (h!1005 ls!96)) (= lambda!10455 lambda!10452))))

(assert (=> bs!40711 (not (= lambda!10455 lambda!10451))))

(assert (=> bs!40711 (not (= lambda!10455 lambda!10450))))

(assert (=> bs!40712 (= (= (h!1005 lt!19541) (h!1005 ls!96)) (= lambda!10455 lambda!10443))))

(assert (=> bs!40712 (not (= lambda!10455 lambda!10442))))

(assert (=> bs!40712 (not (= lambda!10455 lambda!10441))))

(assert (=> b!83790 true))

(declare-fun b!83788 () Bool)

(declare-fun e!45433 () List!678)

(declare-fun e!45434 () List!678)

(assert (=> b!83788 (= e!45433 e!45434)))

(declare-fun c!20969 () Bool)

(assert (=> b!83788 (= c!20969 (and (is-Cons!635 lt!19541) (is-Nil!637 (t!47930 lt!19541))))))

(declare-fun b!83787 () Bool)

(assert (=> b!83787 (= e!45433 Nil!637)))

(declare-fun b!83789 () Bool)

(assert (=> b!83789 (= e!45434 lt!19541)))

(declare-fun d!56593 () Bool)

(declare-fun c!20968 () Bool)

(assert (=> d!56593 (= c!20968 (is-Nil!637 lt!19541))))

(assert (=> d!56593 (= (quickSort!0 lt!19541) e!45433)))

(assert (=> b!83790 (= e!45434 (++!85 (++!85 (quickSort!0 (filter!31 (t!47930 lt!19541) lambda!10453)) (Cons!635 (h!1005 lt!19541) (filter!31 (t!47930 lt!19541) lambda!10454))) (quickSort!0 (filter!31 (t!47930 lt!19541) lambda!10455))))))

(assert (= (and b!83788 c!20969) b!83789))

(assert (= (and b!83788 (not c!20969)) b!83790))

(assert (= (and d!56593 c!20968) b!83787))

(assert (= (and d!56593 (not c!20968)) b!83788))

(declare-fun m!79660 () Bool)

(assert (=> b!83790 m!79660))

(declare-fun m!79662 () Bool)

(assert (=> b!83790 m!79662))

(assert (=> b!83790 m!79662))

(declare-fun m!79664 () Bool)

(assert (=> b!83790 m!79664))

(declare-fun m!79666 () Bool)

(assert (=> b!83790 m!79666))

(declare-fun m!79668 () Bool)

(assert (=> b!83790 m!79668))

(declare-fun m!79670 () Bool)

(assert (=> b!83790 m!79670))

(assert (=> b!83790 m!79670))

(assert (=> b!83790 m!79664))

(assert (=> b!83790 m!79668))

(assert (=> b!83790 m!79660))

(declare-fun m!79672 () Bool)

(assert (=> b!83790 m!79672))

(assert (=> b!83717 d!56593))

(declare-fun b!83791 () Bool)

(declare-fun e!45436 () List!678)

(declare-fun e!45435 () List!678)

(assert (=> b!83791 (= e!45436 e!45435)))

(declare-fun c!20971 () Bool)

(declare-fun e!45438 () Bool)

(assert (=> b!83791 (= c!20971 e!45438)))

(declare-fun res!43152 () Bool)

(assert (=> b!83791 (=> (not res!43152) (not e!45438))))

(assert (=> b!83791 (= res!43152 (is-Cons!635 (t!47930 ls!96)))))

(declare-fun lt!19553 () List!678)

(assert (=> b!83791 (= lt!19553 (filter!31 (t!47930 (t!47930 ls!96)) lambda!10441))))

(declare-fun b!83792 () Bool)

(declare-fun e!45437 () Bool)

(declare-fun lt!19554 () List!678)

(assert (=> b!83792 (= e!45437 (forall!32 lt!19554 lambda!10441))))

(declare-fun d!56595 () Bool)

(assert (=> d!56595 e!45437))

(declare-fun res!43154 () Bool)

(assert (=> d!56595 (=> (not res!43154) (not e!45437))))

(assert (=> d!56595 (= res!43154 (<= (size!665 lt!19554) (size!665 (t!47930 ls!96))))))

(assert (=> d!56595 (= lt!19554 e!45436)))

(declare-fun c!20970 () Bool)

(assert (=> d!56595 (= c!20970 (is-Nil!637 (t!47930 ls!96)))))

(assert (=> d!56595 (= (filter!31 (t!47930 ls!96) lambda!10441) lt!19554)))

(declare-fun b!83793 () Bool)

(assert (=> b!83793 (= e!45436 Nil!637)))

(declare-fun b!83794 () Bool)

(assert (=> b!83794 (= e!45435 lt!19553)))

(declare-fun b!83795 () Bool)

(declare-fun res!43153 () Bool)

(assert (=> b!83795 (=> (not res!43153) (not e!45437))))

(assert (=> b!83795 (= res!43153 (subset (content!136 lt!19554) (content!136 (t!47930 ls!96))))))

(declare-fun b!83796 () Bool)

(assert (=> b!83796 (= e!45435 (Cons!635 (h!1005 (t!47930 ls!96)) lt!19553))))

(declare-fun b!83797 () Bool)

(assert (=> b!83797 (= e!45438 (dynLambda!996 lambda!10441 (h!1005 (t!47930 ls!96))))))

(assert (= (and b!83791 res!43152) b!83797))

(assert (= (and b!83791 c!20971) b!83796))

(assert (= (and b!83791 (not c!20971)) b!83794))

(assert (= (and d!56595 c!20970) b!83793))

(assert (= (and d!56595 (not c!20970)) b!83791))

(assert (= (and d!56595 res!43154) b!83795))

(assert (= (and b!83795 res!43153) b!83792))

(declare-fun b_lambda!16519 () Bool)

(assert (=> (not b_lambda!16519) (not b!83797)))

(declare-fun m!79674 () Bool)

(assert (=> d!56595 m!79674))

(assert (=> d!56595 m!79622))

(declare-fun m!79676 () Bool)

(assert (=> b!83792 m!79676))

(declare-fun m!79678 () Bool)

(assert (=> b!83797 m!79678))

(declare-fun m!79680 () Bool)

(assert (=> b!83795 m!79680))

(assert (=> b!83795 m!79630))

(declare-fun m!79682 () Bool)

(assert (=> b!83791 m!79682))

(assert (=> b!83717 d!56595))

(declare-fun b!83798 () Bool)

(declare-fun res!43155 () Bool)

(declare-fun e!45441 () Bool)

(assert (=> b!83798 (=> res!43155 e!45441)))

(assert (=> b!83798 (= res!43155 (isEmpty!687 (quickSort!0 lt!19540)))))

(declare-fun d!56597 () Bool)

(declare-fun e!45440 () Bool)

(assert (=> d!56597 e!45440))

(declare-fun c!20972 () Bool)

(assert (=> d!56597 (= c!20972 (is-Cons!635 (++!85 (quickSort!0 lt!19541) lt!19539)))))

(declare-fun e!45439 () Bool)

(assert (=> d!56597 e!45439))

(declare-fun res!43157 () Bool)

(assert (=> d!56597 (=> (not res!43157) (not e!45439))))

(assert (=> d!56597 (= res!43157 (isSorted!1 (++!85 (quickSort!0 lt!19541) lt!19539)))))

(assert (=> d!56597 (= (append_sorted!0 (++!85 (quickSort!0 lt!19541) lt!19539) (quickSort!0 lt!19540)) true)))

(declare-fun b!83799 () Bool)

(assert (=> b!83799 (= e!45441 (<= (last!27 (++!85 (quickSort!0 lt!19541) lt!19539)) (head!1063 (quickSort!0 lt!19540))))))

(declare-fun b!83800 () Bool)

(assert (=> b!83800 (= e!45440 (isSorted!1 (++!85 (++!85 (quickSort!0 lt!19541) lt!19539) (quickSort!0 lt!19540))))))

(declare-fun lt!19555 () Bool)

(assert (=> b!83800 (= lt!19555 (append_sorted!0 (t!47930 (++!85 (quickSort!0 lt!19541) lt!19539)) (quickSort!0 lt!19540)))))

(declare-fun b!83801 () Bool)

(declare-fun res!43158 () Bool)

(assert (=> b!83801 (=> (not res!43158) (not e!45439))))

(assert (=> b!83801 (= res!43158 (isSorted!1 (quickSort!0 lt!19540)))))

(declare-fun b!83802 () Bool)

(assert (=> b!83802 (= e!45439 e!45441)))

(declare-fun res!43156 () Bool)

(assert (=> b!83802 (=> res!43156 e!45441)))

(assert (=> b!83802 (= res!43156 (isEmpty!687 (++!85 (quickSort!0 lt!19541) lt!19539)))))

(declare-fun b!83803 () Bool)

(assert (=> b!83803 (= e!45440 (isSorted!1 (++!85 (++!85 (quickSort!0 lt!19541) lt!19539) (quickSort!0 lt!19540))))))

(assert (= (and d!56597 res!43157) b!83801))

(assert (= (and b!83801 res!43158) b!83802))

(assert (= (and b!83802 (not res!43156)) b!83798))

(assert (= (and b!83798 (not res!43155)) b!83799))

(assert (= (and d!56597 c!20972) b!83800))

(assert (= (and d!56597 (not c!20972)) b!83803))

(assert (=> b!83802 m!79594))

(declare-fun m!79684 () Bool)

(assert (=> b!83802 m!79684))

(assert (=> b!83798 m!79596))

(declare-fun m!79686 () Bool)

(assert (=> b!83798 m!79686))

(assert (=> b!83803 m!79594))

(assert (=> b!83803 m!79596))

(declare-fun m!79688 () Bool)

(assert (=> b!83803 m!79688))

(assert (=> b!83803 m!79688))

(declare-fun m!79690 () Bool)

(assert (=> b!83803 m!79690))

(assert (=> d!56597 m!79594))

(assert (=> d!56597 m!79648))

(assert (=> b!83801 m!79596))

(declare-fun m!79692 () Bool)

(assert (=> b!83801 m!79692))

(assert (=> b!83799 m!79594))

(declare-fun m!79694 () Bool)

(assert (=> b!83799 m!79694))

(assert (=> b!83799 m!79596))

(declare-fun m!79696 () Bool)

(assert (=> b!83799 m!79696))

(assert (=> b!83800 m!79594))

(assert (=> b!83800 m!79596))

(assert (=> b!83800 m!79688))

(assert (=> b!83800 m!79688))

(assert (=> b!83800 m!79690))

(assert (=> b!83800 m!79596))

(declare-fun m!79698 () Bool)

(assert (=> b!83800 m!79698))

(assert (=> b!83718 d!56597))

(declare-fun b!83814 () Bool)

(declare-fun res!43164 () Bool)

(declare-fun e!45446 () Bool)

(assert (=> b!83814 (=> (not res!43164) (not e!45446))))

(declare-fun lt!19558 () List!678)

(assert (=> b!83814 (= res!43164 (= (size!665 lt!19558) (+ (size!665 (quickSort!0 lt!19541)) (size!665 lt!19539))))))

(declare-fun d!56599 () Bool)

(assert (=> d!56599 e!45446))

(declare-fun res!43165 () Bool)

(assert (=> d!56599 (=> (not res!43165) (not e!45446))))

(assert (=> d!56599 (= res!43165 (= (content!136 lt!19558) (union (content!136 (quickSort!0 lt!19541)) (content!136 lt!19539))))))

(declare-fun e!45447 () List!678)

(assert (=> d!56599 (= lt!19558 e!45447)))

(declare-fun c!20975 () Bool)

(assert (=> d!56599 (= c!20975 (is-Nil!637 (quickSort!0 lt!19541)))))

(assert (=> d!56599 (= (++!85 (quickSort!0 lt!19541) lt!19539) lt!19558)))

(declare-fun b!83812 () Bool)

(assert (=> b!83812 (= e!45447 lt!19539)))

(declare-fun b!83813 () Bool)

(assert (=> b!83813 (= e!45447 (Cons!635 (h!1005 (quickSort!0 lt!19541)) (++!85 (t!47930 (quickSort!0 lt!19541)) lt!19539)))))

(declare-fun b!83815 () Bool)

(assert (=> b!83815 (= e!45446 (or (not (= lt!19539 Nil!637)) (= lt!19558 (quickSort!0 lt!19541))))))

(assert (= (and d!56599 c!20975) b!83812))

(assert (= (and d!56599 (not c!20975)) b!83813))

(assert (= (and d!56599 res!43165) b!83814))

(assert (= (and b!83814 res!43164) b!83815))

(declare-fun m!79700 () Bool)

(assert (=> b!83814 m!79700))

(assert (=> b!83814 m!79590))

(declare-fun m!79702 () Bool)

(assert (=> b!83814 m!79702))

(declare-fun m!79704 () Bool)

(assert (=> b!83814 m!79704))

(declare-fun m!79706 () Bool)

(assert (=> d!56599 m!79706))

(assert (=> d!56599 m!79590))

(declare-fun m!79708 () Bool)

(assert (=> d!56599 m!79708))

(declare-fun m!79710 () Bool)

(assert (=> d!56599 m!79710))

(declare-fun m!79712 () Bool)

(assert (=> b!83813 m!79712))

(assert (=> b!83718 d!56599))

(assert (=> b!83718 d!56593))

(declare-fun bs!40713 () Bool)

(declare-fun b!83819 () Bool)

(assert (= bs!40713 (and b!83819 b!83790)))

(declare-fun lambda!10456 () Int)

(assert (=> bs!40713 (not (= lambda!10456 lambda!10455))))

(assert (=> bs!40713 (not (= lambda!10456 lambda!10454))))

(assert (=> bs!40713 (= (= (h!1005 lt!19540) (h!1005 lt!19541)) (= lambda!10456 lambda!10453))))

(declare-fun bs!40714 () Bool)

(assert (= bs!40714 (and b!83819 b!83740)))

(assert (=> bs!40714 (not (= lambda!10456 lambda!10452))))

(assert (=> bs!40714 (not (= lambda!10456 lambda!10451))))

(assert (=> bs!40714 (= (= (h!1005 lt!19540) (h!1005 ls!96)) (= lambda!10456 lambda!10450))))

(declare-fun bs!40715 () Bool)

(assert (= bs!40715 (and b!83819 b!83717)))

(assert (=> bs!40715 (not (= lambda!10456 lambda!10443))))

(assert (=> bs!40715 (not (= lambda!10456 lambda!10442))))

(assert (=> bs!40715 (= (= (h!1005 lt!19540) (h!1005 ls!96)) (= lambda!10456 lambda!10441))))

(assert (=> b!83819 true))

(declare-fun lambda!10457 () Int)

(assert (=> b!83819 (not (= lambda!10457 lambda!10456))))

(assert (=> bs!40713 (not (= lambda!10457 lambda!10455))))

(assert (=> bs!40713 (= (= (h!1005 lt!19540) (h!1005 lt!19541)) (= lambda!10457 lambda!10454))))

(assert (=> bs!40713 (not (= lambda!10457 lambda!10453))))

(assert (=> bs!40714 (not (= lambda!10457 lambda!10452))))

(assert (=> bs!40714 (= (= (h!1005 lt!19540) (h!1005 ls!96)) (= lambda!10457 lambda!10451))))

(assert (=> bs!40714 (not (= lambda!10457 lambda!10450))))

(assert (=> bs!40715 (not (= lambda!10457 lambda!10443))))

(assert (=> bs!40715 (= (= (h!1005 lt!19540) (h!1005 ls!96)) (= lambda!10457 lambda!10442))))

(assert (=> bs!40715 (not (= lambda!10457 lambda!10441))))

(assert (=> b!83819 true))

(declare-fun lambda!10458 () Int)

(assert (=> b!83819 (not (= lambda!10458 lambda!10457))))

(assert (=> b!83819 (not (= lambda!10458 lambda!10456))))

(assert (=> bs!40713 (= (= (h!1005 lt!19540) (h!1005 lt!19541)) (= lambda!10458 lambda!10455))))

(assert (=> bs!40713 (not (= lambda!10458 lambda!10454))))

(assert (=> bs!40713 (not (= lambda!10458 lambda!10453))))

(assert (=> bs!40714 (= (= (h!1005 lt!19540) (h!1005 ls!96)) (= lambda!10458 lambda!10452))))

(assert (=> bs!40714 (not (= lambda!10458 lambda!10451))))

(assert (=> bs!40714 (not (= lambda!10458 lambda!10450))))

(assert (=> bs!40715 (= (= (h!1005 lt!19540) (h!1005 ls!96)) (= lambda!10458 lambda!10443))))

(assert (=> bs!40715 (not (= lambda!10458 lambda!10442))))

(assert (=> bs!40715 (not (= lambda!10458 lambda!10441))))

(assert (=> b!83819 true))

(declare-fun b!83817 () Bool)

(declare-fun e!45448 () List!678)

(declare-fun e!45449 () List!678)

(assert (=> b!83817 (= e!45448 e!45449)))

(declare-fun c!20977 () Bool)

(assert (=> b!83817 (= c!20977 (and (is-Cons!635 lt!19540) (is-Nil!637 (t!47930 lt!19540))))))

(declare-fun b!83816 () Bool)

(assert (=> b!83816 (= e!45448 Nil!637)))

(declare-fun b!83818 () Bool)

(assert (=> b!83818 (= e!45449 lt!19540)))

(declare-fun d!56601 () Bool)

(declare-fun c!20976 () Bool)

(assert (=> d!56601 (= c!20976 (is-Nil!637 lt!19540))))

(assert (=> d!56601 (= (quickSort!0 lt!19540) e!45448)))

(assert (=> b!83819 (= e!45449 (++!85 (++!85 (quickSort!0 (filter!31 (t!47930 lt!19540) lambda!10456)) (Cons!635 (h!1005 lt!19540) (filter!31 (t!47930 lt!19540) lambda!10457))) (quickSort!0 (filter!31 (t!47930 lt!19540) lambda!10458))))))

(assert (= (and b!83817 c!20977) b!83818))

(assert (= (and b!83817 (not c!20977)) b!83819))

(assert (= (and d!56601 c!20976) b!83816))

(assert (= (and d!56601 (not c!20976)) b!83817))

(declare-fun m!79714 () Bool)

(assert (=> b!83819 m!79714))

(declare-fun m!79716 () Bool)

(assert (=> b!83819 m!79716))

(assert (=> b!83819 m!79716))

(declare-fun m!79718 () Bool)

(assert (=> b!83819 m!79718))

(declare-fun m!79720 () Bool)

(assert (=> b!83819 m!79720))

(declare-fun m!79722 () Bool)

(assert (=> b!83819 m!79722))

(declare-fun m!79724 () Bool)

(assert (=> b!83819 m!79724))

(assert (=> b!83819 m!79724))

(assert (=> b!83819 m!79718))

(assert (=> b!83819 m!79722))

(assert (=> b!83819 m!79714))

(declare-fun m!79726 () Bool)

(assert (=> b!83819 m!79726))

(assert (=> b!83718 d!56601))

(declare-fun b_lambda!16521 () Bool)

(assert (= b_lambda!16519 (or b!83717 b_lambda!16521)))

(declare-fun bs!40716 () Bool)

(declare-fun d!56603 () Bool)

(assert (= bs!40716 (and d!56603 b!83717)))

(assert (=> bs!40716 (= (dynLambda!996 lambda!10441 (h!1005 (t!47930 ls!96))) (< (h!1005 (t!47930 ls!96)) (h!1005 ls!96)))))

(assert (=> b!83797 d!56603))

(declare-fun b_lambda!16523 () Bool)

(assert (= b_lambda!16517 (or b!83717 b_lambda!16523)))

(declare-fun bs!40717 () Bool)

(declare-fun d!56605 () Bool)

(assert (= bs!40717 (and d!56605 b!83717)))

(assert (=> bs!40717 (= (dynLambda!996 lambda!10443 (h!1005 (t!47930 ls!96))) (> (h!1005 (t!47930 ls!96)) (h!1005 ls!96)))))

(assert (=> b!83768 d!56605))

(declare-fun b_lambda!16525 () Bool)

(assert (= b_lambda!16515 (or b!83717 b_lambda!16525)))

(declare-fun bs!40718 () Bool)

(declare-fun d!56607 () Bool)

(assert (= bs!40718 (and d!56607 b!83717)))

(assert (=> bs!40718 (= (dynLambda!996 lambda!10442 (h!1005 (t!47930 ls!96))) (= (h!1005 (t!47930 ls!96)) (h!1005 ls!96)))))

(assert (=> b!83761 d!56607))

(push 1)

(assert (not b!83792))

(assert (not d!56597))

(assert (not b!83799))

(assert (not b!83790))

(assert (not b!83784))

(assert (not b!83740))

(assert (not b!83762))

(assert (not b!83819))

(assert (not b!83766))

(assert (not d!56589))

(assert (not d!56591))

(assert (not b!83728))

(assert (not b!83800))

(assert (not b!83785))

(assert (not b!83802))

(assert (not b!83763))

(assert (not b!83781))

(assert (not b_lambda!16523))

(assert (not d!56587))

(assert (not b_lambda!16525))

(assert (not d!56595))

(assert (not b!83814))

(assert (not b!83798))

(assert (not d!56599))

(assert (not b_lambda!16521))

(assert (not b!83801))

(assert (not b!83791))

(assert (not b!83786))

(assert (not b!83795))

(assert (not b!83756))

(assert (not b!83803))

(assert (not b!83782))

(assert (not b!83783))

(assert (not b!83755))

(assert (not b!83759))

(assert (not b!83813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


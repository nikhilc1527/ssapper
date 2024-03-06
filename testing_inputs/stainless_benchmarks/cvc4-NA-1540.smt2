; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10414 () Bool)

(assert start!10414)

(declare-fun res!39579 () Bool)

(declare-fun e!42523 () Bool)

(assert (=> start!10414 (=> (not res!39579) (not e!42523))))

(declare-datatypes () ((Formula!109 (Implies!113 (lhs!1440 Formula!109) (rhs!1440 Formula!109)) (And!113 (lhs!1441 Formula!109) (rhs!1441 Formula!109)) (Or!113 (lhs!1442 Formula!109) (rhs!1442 Formula!109)) (Literal!107 (id!4970 (_ BitVec 32))) (Not!113 (f!4763 Formula!109)))))

(declare-fun formula!94 () Formula!109)

(assert (=> start!10414 (= res!39579 (and (not (is-And!113 formula!94)) (not (is-Or!113 formula!94)) (not (is-Implies!113 formula!94)) (or (not (is-Not!113 formula!94)) (not (is-And!113 (f!4763 formula!94)))) (or (not (is-Not!113 formula!94)) (not (is-Or!113 (f!4763 formula!94)))) (is-Not!113 formula!94) (is-Implies!113 (f!4763 formula!94))))))

(assert (=> start!10414 e!42523))

(assert (=> start!10414 true))

(declare-fun b!78665 () Bool)

(declare-fun res!39580 () Bool)

(assert (=> b!78665 (=> (not res!39580) (not e!42523))))

(declare-fun x$2!428 () Formula!109)

(declare-fun nnf!0 (Formula!109) Formula!109)

(assert (=> b!78665 (= res!39580 (= x$2!428 (And!113 (nnf!0 (lhs!1440 (f!4763 formula!94))) (nnf!0 (Not!113 (rhs!1440 (f!4763 formula!94)))))))))

(declare-fun b!78666 () Bool)

(declare-fun isNNF!0 (Formula!109) Bool)

(assert (=> b!78666 (= e!42523 (not (isNNF!0 x$2!428)))))

(assert (= (and start!10414 res!39579) b!78665))

(assert (= (and b!78665 res!39580) b!78666))

(declare-fun m!73606 () Bool)

(assert (=> b!78665 m!73606))

(declare-fun m!73608 () Bool)

(assert (=> b!78665 m!73608))

(declare-fun m!73610 () Bool)

(assert (=> b!78666 m!73610))

(push 1)

(assert (not b!78665))

(assert (not b!78666))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!78731 () Bool)

(declare-fun e!42564 () Formula!109)

(declare-fun res!39646 () Formula!109)

(assert (=> b!78731 (= e!42564 res!39646)))

(assert (=> b!78731 true))

(declare-fun b!78732 () Bool)

(declare-fun e!42571 () Formula!109)

(declare-fun e!42566 () Formula!109)

(assert (=> b!78732 (= e!42571 e!42566)))

(declare-fun c!19965 () Bool)

(declare-fun lt!18008 () Bool)

(assert (=> b!78732 (= c!19965 lt!18008)))

(declare-fun lt!18011 () Formula!109)

(declare-fun e!42562 () Formula!109)

(assert (=> b!78732 (= lt!18011 e!42562)))

(declare-fun c!19957 () Bool)

(assert (=> b!78732 (= c!19957 (or lt!18008 (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Or!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Implies!113 (f!4763 (lhs!1440 (f!4763 formula!94)))))))))

(declare-fun lt!18005 () Formula!109)

(declare-fun e!42557 () Formula!109)

(assert (=> b!78732 (= lt!18005 e!42557)))

(declare-fun c!19967 () Bool)

(assert (=> b!78732 (= c!19967 (or lt!18008 (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Or!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Implies!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Not!113 (f!4763 (lhs!1440 (f!4763 formula!94)))))))))

(assert (=> b!78732 (= lt!18008 (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-And!113 (f!4763 (lhs!1440 (f!4763 formula!94))))))))

(declare-fun b!78733 () Bool)

(declare-fun e!42567 () Formula!109)

(declare-fun res!39640 () Formula!109)

(assert (=> b!78733 (= e!42567 res!39640)))

(assert (=> b!78733 true))

(declare-fun b!78734 () Bool)

(declare-fun e!42565 () Formula!109)

(declare-fun res!39641 () Formula!109)

(assert (=> b!78734 (= e!42565 res!39641)))

(assert (=> b!78734 true))

(assert (=> b!78734 true))

(declare-fun b!78735 () Bool)

(declare-fun lt!18014 () Formula!109)

(assert (=> b!78735 (= e!42565 lt!18014)))

(declare-fun b!78736 () Bool)

(declare-fun lt!18015 () Formula!109)

(assert (=> b!78736 (= e!42567 lt!18015)))

(declare-fun b!78737 () Bool)

(declare-fun e!42560 () Formula!109)

(declare-fun res!39642 () Formula!109)

(assert (=> b!78737 (= e!42560 res!39642)))

(assert (=> b!78737 true))

(declare-fun b!78738 () Bool)

(declare-fun res!39645 () Formula!109)

(assert (=> b!78738 (= e!42562 res!39645)))

(assert (=> b!78738 true))

(declare-fun b!78739 () Bool)

(declare-fun e!42568 () Formula!109)

(declare-fun lt!18009 () Formula!109)

(assert (=> b!78739 (= e!42568 lt!18009)))

(declare-fun b!78740 () Bool)

(declare-fun lt!18012 () Bool)

(assert (=> b!78740 (= e!42560 (nnf!0 (ite lt!18012 (lhs!1441 (lhs!1440 (f!4763 formula!94))) (ite (is-Or!113 (lhs!1440 (f!4763 formula!94))) (lhs!1442 (lhs!1440 (f!4763 formula!94))) (ite (is-Implies!113 (lhs!1440 (f!4763 formula!94))) (lhs!1440 (lhs!1440 (f!4763 formula!94))) (ite (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-And!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (Not!113 (lhs!1441 (f!4763 (lhs!1440 (f!4763 formula!94))))) (ite (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Or!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (Not!113 (lhs!1442 (f!4763 (lhs!1440 (f!4763 formula!94))))) (ite (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Implies!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (lhs!1440 (f!4763 (lhs!1440 (f!4763 formula!94)))) (f!4763 (f!4763 (lhs!1440 (f!4763 formula!94))))))))))))))

(declare-fun b!78741 () Bool)

(declare-fun e!42559 () Formula!109)

(assert (=> b!78741 (= e!42559 e!42571)))

(declare-fun c!19958 () Bool)

(declare-fun lt!18004 () Bool)

(assert (=> b!78741 (= c!19958 lt!18004)))

(declare-fun lt!18001 () Formula!109)

(declare-fun e!42561 () Formula!109)

(assert (=> b!78741 (= lt!18001 e!42561)))

(declare-fun c!19960 () Bool)

(assert (=> b!78741 (= c!19960 (or lt!18004 (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-And!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Or!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Implies!113 (f!4763 (lhs!1440 (f!4763 formula!94)))))))))

(declare-fun lt!18013 () Formula!109)

(assert (=> b!78741 (= lt!18013 e!42567)))

(declare-fun c!19966 () Bool)

(assert (=> b!78741 (= c!19966 (or lt!18004 (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-And!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Or!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Implies!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Not!113 (f!4763 (lhs!1440 (f!4763 formula!94)))))))))

(assert (=> b!78741 (= lt!18004 (is-Implies!113 (lhs!1440 (f!4763 formula!94))))))

(declare-fun d!54993 () Bool)

(declare-fun lt!18000 () Formula!109)

(assert (=> d!54993 (isNNF!0 lt!18000)))

(declare-fun e!42556 () Formula!109)

(assert (=> d!54993 (= lt!18000 e!42556)))

(declare-fun c!19963 () Bool)

(assert (=> d!54993 (= c!19963 lt!18012)))

(declare-fun e!42563 () Formula!109)

(assert (=> d!54993 (= lt!18009 e!42563)))

(declare-fun c!19961 () Bool)

(assert (=> d!54993 (= c!19961 (or lt!18012 (is-Or!113 (lhs!1440 (f!4763 formula!94))) (is-Implies!113 (lhs!1440 (f!4763 formula!94))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-And!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Or!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Implies!113 (f!4763 (lhs!1440 (f!4763 formula!94)))))))))

(declare-fun lt!18002 () Formula!109)

(assert (=> d!54993 (= lt!18002 e!42560)))

(declare-fun c!19970 () Bool)

(assert (=> d!54993 (= c!19970 (or lt!18012 (is-Or!113 (lhs!1440 (f!4763 formula!94))) (is-Implies!113 (lhs!1440 (f!4763 formula!94))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-And!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Or!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Implies!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Not!113 (f!4763 (lhs!1440 (f!4763 formula!94)))))))))

(assert (=> d!54993 (= lt!18012 (is-And!113 (lhs!1440 (f!4763 formula!94))))))

(assert (=> d!54993 (= (nnf!0 (lhs!1440 (f!4763 formula!94))) lt!18000)))

(declare-fun b!78742 () Bool)

(declare-fun e!42570 () Formula!109)

(assert (=> b!78742 (= e!42566 e!42570)))

(declare-fun c!19968 () Bool)

(declare-fun lt!18016 () Bool)

(assert (=> b!78742 (= c!19968 lt!18016)))

(declare-fun lt!18006 () Formula!109)

(assert (=> b!78742 (= lt!18006 e!42564)))

(declare-fun c!19964 () Bool)

(assert (=> b!78742 (= c!19964 (or lt!18016 (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Implies!113 (f!4763 (lhs!1440 (f!4763 formula!94)))))))))

(declare-fun e!42558 () Formula!109)

(assert (=> b!78742 (= lt!18014 e!42558)))

(declare-fun c!19959 () Bool)

(assert (=> b!78742 (= c!19959 (or lt!18016 (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Implies!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Not!113 (f!4763 (lhs!1440 (f!4763 formula!94)))))))))

(assert (=> b!78742 (= lt!18016 (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Or!113 (f!4763 (lhs!1440 (f!4763 formula!94))))))))

(declare-fun b!78743 () Bool)

(declare-fun e!42569 () Formula!109)

(declare-fun res!39639 () Formula!109)

(assert (=> b!78743 (= e!42569 res!39639)))

(assert (=> b!78743 true))

(declare-fun b!78744 () Bool)

(assert (=> b!78744 (= e!42566 (Or!113 lt!18005 lt!18011))))

(declare-fun b!78745 () Bool)

(assert (=> b!78745 (= e!42571 (Implies!113 lt!18013 lt!18001))))

(declare-fun lt!18017 () Bool)

(declare-fun b!78746 () Bool)

(declare-fun lt!18003 () Formula!109)

(assert (=> b!78746 (= e!42570 (ite lt!18017 (And!113 lt!18003 lt!18006) (ite (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Not!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) lt!18003 (lhs!1440 (f!4763 formula!94)))))))

(assert (=> b!78746 (= lt!18003 e!42565)))

(declare-fun c!19971 () Bool)

(assert (=> b!78746 (= c!19971 (or lt!18017 (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Not!113 (f!4763 (lhs!1440 (f!4763 formula!94)))))))))

(assert (=> b!78746 (= lt!18017 (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Implies!113 (f!4763 (lhs!1440 (f!4763 formula!94))))))))

(declare-fun b!78747 () Bool)

(assert (=> b!78747 (= e!42558 lt!18005)))

(declare-fun b!78748 () Bool)

(declare-fun lt!18007 () Formula!109)

(assert (=> b!78748 (= e!42559 (Or!113 lt!18015 lt!18007))))

(declare-fun b!78749 () Bool)

(declare-fun res!39637 () Formula!109)

(assert (=> b!78749 (= e!42563 res!39637)))

(assert (=> b!78749 true))

(declare-fun b!78750 () Bool)

(assert (=> b!78750 (= e!42564 lt!18011)))

(declare-fun b!78751 () Bool)

(assert (=> b!78751 (= e!42557 lt!18013)))

(declare-fun b!78752 () Bool)

(assert (=> b!78752 (= e!42561 lt!18007)))

(declare-fun b!78753 () Bool)

(declare-fun res!39644 () Formula!109)

(assert (=> b!78753 (= e!42561 res!39644)))

(assert (=> b!78753 true))

(declare-fun b!78754 () Bool)

(assert (=> b!78754 (= e!42562 lt!18001)))

(declare-fun b!78755 () Bool)

(assert (=> b!78755 (= e!42563 (nnf!0 (ite lt!18012 (rhs!1441 (lhs!1440 (f!4763 formula!94))) (ite (is-Or!113 (lhs!1440 (f!4763 formula!94))) (rhs!1442 (lhs!1440 (f!4763 formula!94))) (ite (is-Implies!113 (lhs!1440 (f!4763 formula!94))) (rhs!1440 (lhs!1440 (f!4763 formula!94))) (ite (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-And!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (Not!113 (rhs!1441 (f!4763 (lhs!1440 (f!4763 formula!94))))) (ite (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Or!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (Not!113 (rhs!1442 (f!4763 (lhs!1440 (f!4763 formula!94))))) (Not!113 (rhs!1440 (f!4763 (lhs!1440 (f!4763 formula!94))))))))))))))

(declare-fun b!78756 () Bool)

(declare-fun res!39636 () Formula!109)

(assert (=> b!78756 (= e!42568 res!39636)))

(assert (=> b!78756 true))

(declare-fun b!78757 () Bool)

(assert (=> b!78757 (= e!42569 lt!18002)))

(declare-fun b!78758 () Bool)

(declare-fun res!39643 () Formula!109)

(assert (=> b!78758 (= e!42558 res!39643)))

(assert (=> b!78758 true))

(declare-fun b!78759 () Bool)

(assert (=> b!78759 (= e!42570 (And!113 lt!18014 lt!18006))))

(declare-fun b!78760 () Bool)

(declare-fun res!39638 () Formula!109)

(assert (=> b!78760 (= e!42557 res!39638)))

(assert (=> b!78760 true))

(declare-fun b!78761 () Bool)

(assert (=> b!78761 (= e!42556 (And!113 lt!18002 lt!18009))))

(declare-fun b!78762 () Bool)

(assert (=> b!78762 (= e!42556 e!42559)))

(declare-fun c!19956 () Bool)

(declare-fun lt!18010 () Bool)

(assert (=> b!78762 (= c!19956 lt!18010)))

(assert (=> b!78762 (= lt!18007 e!42568)))

(declare-fun c!19969 () Bool)

(assert (=> b!78762 (= c!19969 (or lt!18010 (is-Implies!113 (lhs!1440 (f!4763 formula!94))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-And!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Or!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Implies!113 (f!4763 (lhs!1440 (f!4763 formula!94)))))))))

(assert (=> b!78762 (= lt!18015 e!42569)))

(declare-fun c!19962 () Bool)

(assert (=> b!78762 (= c!19962 (or lt!18010 (is-Implies!113 (lhs!1440 (f!4763 formula!94))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-And!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Or!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Implies!113 (f!4763 (lhs!1440 (f!4763 formula!94))))) (and (is-Not!113 (lhs!1440 (f!4763 formula!94))) (is-Not!113 (f!4763 (lhs!1440 (f!4763 formula!94)))))))))

(assert (=> b!78762 (= lt!18010 (is-Or!113 (lhs!1440 (f!4763 formula!94))))))

(assert (= (and d!54993 c!19970) b!78740))

(assert (= (and d!54993 (not c!19970)) b!78737))

(assert (= (and d!54993 c!19961) b!78755))

(assert (= (and d!54993 (not c!19961)) b!78749))

(assert (= (and b!78762 c!19962) b!78757))

(assert (= (and b!78762 (not c!19962)) b!78743))

(assert (= (and b!78762 c!19969) b!78739))

(assert (= (and b!78762 (not c!19969)) b!78756))

(assert (= (and b!78741 c!19966) b!78736))

(assert (= (and b!78741 (not c!19966)) b!78733))

(assert (= (and b!78741 c!19960) b!78752))

(assert (= (and b!78741 (not c!19960)) b!78753))

(assert (= (and b!78732 c!19967) b!78751))

(assert (= (and b!78732 (not c!19967)) b!78760))

(assert (= (and b!78732 c!19957) b!78754))

(assert (= (and b!78732 (not c!19957)) b!78738))

(assert (= (and b!78742 c!19959) b!78747))

(assert (= (and b!78742 (not c!19959)) b!78758))

(assert (= (and b!78742 c!19964) b!78750))

(assert (= (and b!78742 (not c!19964)) b!78731))

(assert (= (and b!78746 c!19971) b!78735))

(assert (= (and b!78746 (not c!19971)) b!78734))

(assert (= (and b!78742 c!19968) b!78759))

(assert (= (and b!78742 (not c!19968)) b!78746))

(assert (= (and b!78732 c!19965) b!78744))

(assert (= (and b!78732 (not c!19965)) b!78742))

(assert (= (and b!78741 c!19958) b!78745))

(assert (= (and b!78741 (not c!19958)) b!78732))

(assert (= (and b!78762 c!19956) b!78748))

(assert (= (and b!78762 (not c!19956)) b!78741))

(assert (= (and d!54993 c!19963) b!78761))

(assert (= (and d!54993 (not c!19963)) b!78762))

(declare-fun m!73612 () Bool)

(assert (=> b!78740 m!73612))

(declare-fun m!73614 () Bool)

(assert (=> d!54993 m!73614))

(declare-fun m!73616 () Bool)

(assert (=> b!78755 m!73616))

(assert (=> b!78665 d!54993))

(declare-fun b!78763 () Bool)

(declare-fun e!42580 () Formula!109)

(declare-fun res!39657 () Formula!109)

(assert (=> b!78763 (= e!42580 res!39657)))

(assert (=> b!78763 true))

(declare-fun b!78764 () Bool)

(declare-fun e!42587 () Formula!109)

(declare-fun e!42582 () Formula!109)

(assert (=> b!78764 (= e!42587 e!42582)))

(declare-fun c!19981 () Bool)

(declare-fun lt!18026 () Bool)

(assert (=> b!78764 (= c!19981 lt!18026)))

(declare-fun lt!18029 () Formula!109)

(declare-fun e!42578 () Formula!109)

(assert (=> b!78764 (= lt!18029 e!42578)))

(declare-fun c!19973 () Bool)

(assert (=> b!78764 (= c!19973 (or lt!18026 (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Or!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Implies!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94))))))))))

(declare-fun lt!18023 () Formula!109)

(declare-fun e!42573 () Formula!109)

(assert (=> b!78764 (= lt!18023 e!42573)))

(declare-fun c!19983 () Bool)

(assert (=> b!78764 (= c!19983 (or lt!18026 (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Or!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Implies!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Not!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94))))))))))

(assert (=> b!78764 (= lt!18026 (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-And!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))))))

(declare-fun b!78765 () Bool)

(declare-fun e!42583 () Formula!109)

(declare-fun res!39651 () Formula!109)

(assert (=> b!78765 (= e!42583 res!39651)))

(assert (=> b!78765 true))

(declare-fun b!78766 () Bool)

(declare-fun e!42581 () Formula!109)

(declare-fun res!39652 () Formula!109)

(assert (=> b!78766 (= e!42581 res!39652)))

(assert (=> b!78766 true))

(assert (=> b!78766 true))

(declare-fun b!78767 () Bool)

(declare-fun lt!18032 () Formula!109)

(assert (=> b!78767 (= e!42581 lt!18032)))

(declare-fun b!78768 () Bool)

(declare-fun lt!18033 () Formula!109)

(assert (=> b!78768 (= e!42583 lt!18033)))

(declare-fun b!78769 () Bool)

(declare-fun e!42576 () Formula!109)

(declare-fun res!39653 () Formula!109)

(assert (=> b!78769 (= e!42576 res!39653)))

(assert (=> b!78769 true))

(declare-fun b!78770 () Bool)

(declare-fun res!39656 () Formula!109)

(assert (=> b!78770 (= e!42578 res!39656)))

(assert (=> b!78770 true))

(declare-fun b!78771 () Bool)

(declare-fun e!42584 () Formula!109)

(declare-fun lt!18027 () Formula!109)

(assert (=> b!78771 (= e!42584 lt!18027)))

(declare-fun b!78772 () Bool)

(declare-fun lt!18030 () Bool)

(assert (=> b!78772 (= e!42576 (nnf!0 (ite lt!18030 (lhs!1441 (Not!113 (rhs!1440 (f!4763 formula!94)))) (ite (is-Or!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (lhs!1442 (Not!113 (rhs!1440 (f!4763 formula!94)))) (ite (is-Implies!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (lhs!1440 (Not!113 (rhs!1440 (f!4763 formula!94)))) (ite (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-And!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (Not!113 (lhs!1441 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (ite (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Or!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (Not!113 (lhs!1442 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (ite (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Implies!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (lhs!1440 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94))))) (f!4763 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))))))))))))

(declare-fun b!78773 () Bool)

(declare-fun e!42575 () Formula!109)

(assert (=> b!78773 (= e!42575 e!42587)))

(declare-fun c!19974 () Bool)

(declare-fun lt!18022 () Bool)

(assert (=> b!78773 (= c!19974 lt!18022)))

(declare-fun lt!18019 () Formula!109)

(declare-fun e!42577 () Formula!109)

(assert (=> b!78773 (= lt!18019 e!42577)))

(declare-fun c!19976 () Bool)

(assert (=> b!78773 (= c!19976 (or lt!18022 (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-And!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Or!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Implies!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94))))))))))

(declare-fun lt!18031 () Formula!109)

(assert (=> b!78773 (= lt!18031 e!42583)))

(declare-fun c!19982 () Bool)

(assert (=> b!78773 (= c!19982 (or lt!18022 (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-And!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Or!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Implies!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Not!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94))))))))))

(assert (=> b!78773 (= lt!18022 (is-Implies!113 (Not!113 (rhs!1440 (f!4763 formula!94)))))))

(declare-fun d!54995 () Bool)

(declare-fun lt!18018 () Formula!109)

(assert (=> d!54995 (isNNF!0 lt!18018)))

(declare-fun e!42572 () Formula!109)

(assert (=> d!54995 (= lt!18018 e!42572)))

(declare-fun c!19979 () Bool)

(assert (=> d!54995 (= c!19979 lt!18030)))

(declare-fun e!42579 () Formula!109)

(assert (=> d!54995 (= lt!18027 e!42579)))

(declare-fun c!19977 () Bool)

(assert (=> d!54995 (= c!19977 (or lt!18030 (is-Or!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Implies!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-And!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Or!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Implies!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94))))))))))

(declare-fun lt!18020 () Formula!109)

(assert (=> d!54995 (= lt!18020 e!42576)))

(declare-fun c!19986 () Bool)

(assert (=> d!54995 (= c!19986 (or lt!18030 (is-Or!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Implies!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-And!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Or!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Implies!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Not!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94))))))))))

(assert (=> d!54995 (= lt!18030 (is-And!113 (Not!113 (rhs!1440 (f!4763 formula!94)))))))

(assert (=> d!54995 (= (nnf!0 (Not!113 (rhs!1440 (f!4763 formula!94)))) lt!18018)))

(declare-fun b!78774 () Bool)

(declare-fun e!42586 () Formula!109)

(assert (=> b!78774 (= e!42582 e!42586)))

(declare-fun c!19984 () Bool)

(declare-fun lt!18034 () Bool)

(assert (=> b!78774 (= c!19984 lt!18034)))

(declare-fun lt!18024 () Formula!109)

(assert (=> b!78774 (= lt!18024 e!42580)))

(declare-fun c!19980 () Bool)

(assert (=> b!78774 (= c!19980 (or lt!18034 (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Implies!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94))))))))))

(declare-fun e!42574 () Formula!109)

(assert (=> b!78774 (= lt!18032 e!42574)))

(declare-fun c!19975 () Bool)

(assert (=> b!78774 (= c!19975 (or lt!18034 (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Implies!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Not!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94))))))))))

(assert (=> b!78774 (= lt!18034 (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Or!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))))))

(declare-fun b!78775 () Bool)

(declare-fun e!42585 () Formula!109)

(declare-fun res!39650 () Formula!109)

(assert (=> b!78775 (= e!42585 res!39650)))

(assert (=> b!78775 true))

(declare-fun b!78776 () Bool)

(assert (=> b!78776 (= e!42582 (Or!113 lt!18023 lt!18029))))

(declare-fun b!78777 () Bool)

(assert (=> b!78777 (= e!42587 (Implies!113 lt!18031 lt!18019))))

(declare-fun b!78778 () Bool)

(declare-fun lt!18021 () Formula!109)

(declare-fun lt!18035 () Bool)

(assert (=> b!78778 (= e!42586 (ite lt!18035 (And!113 lt!18021 lt!18024) (ite (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Not!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) lt!18021 (Not!113 (rhs!1440 (f!4763 formula!94))))))))

(assert (=> b!78778 (= lt!18021 e!42581)))

(declare-fun c!19987 () Bool)

(assert (=> b!78778 (= c!19987 (or lt!18035 (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Not!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94))))))))))

(assert (=> b!78778 (= lt!18035 (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Implies!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))))))

(declare-fun b!78779 () Bool)

(assert (=> b!78779 (= e!42574 lt!18023)))

(declare-fun b!78780 () Bool)

(declare-fun lt!18025 () Formula!109)

(assert (=> b!78780 (= e!42575 (Or!113 lt!18033 lt!18025))))

(declare-fun b!78781 () Bool)

(declare-fun res!39648 () Formula!109)

(assert (=> b!78781 (= e!42579 res!39648)))

(assert (=> b!78781 true))

(declare-fun b!78782 () Bool)

(assert (=> b!78782 (= e!42580 lt!18029)))

(declare-fun b!78783 () Bool)

(assert (=> b!78783 (= e!42573 lt!18031)))

(declare-fun b!78784 () Bool)

(assert (=> b!78784 (= e!42577 lt!18025)))

(declare-fun b!78785 () Bool)

(declare-fun res!39655 () Formula!109)

(assert (=> b!78785 (= e!42577 res!39655)))

(assert (=> b!78785 true))

(declare-fun b!78786 () Bool)

(assert (=> b!78786 (= e!42578 lt!18019)))

(declare-fun b!78787 () Bool)

(assert (=> b!78787 (= e!42579 (nnf!0 (ite lt!18030 (rhs!1441 (Not!113 (rhs!1440 (f!4763 formula!94)))) (ite (is-Or!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (rhs!1442 (Not!113 (rhs!1440 (f!4763 formula!94)))) (ite (is-Implies!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (rhs!1440 (Not!113 (rhs!1440 (f!4763 formula!94)))) (ite (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-And!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (Not!113 (rhs!1441 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (ite (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Or!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (Not!113 (rhs!1442 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (Not!113 (rhs!1440 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))))))))))))

(declare-fun b!78788 () Bool)

(declare-fun res!39647 () Formula!109)

(assert (=> b!78788 (= e!42584 res!39647)))

(assert (=> b!78788 true))

(declare-fun b!78789 () Bool)

(assert (=> b!78789 (= e!42585 lt!18020)))

(declare-fun b!78790 () Bool)

(declare-fun res!39654 () Formula!109)

(assert (=> b!78790 (= e!42574 res!39654)))

(assert (=> b!78790 true))

(declare-fun b!78791 () Bool)

(assert (=> b!78791 (= e!42586 (And!113 lt!18032 lt!18024))))

(declare-fun b!78792 () Bool)

(declare-fun res!39649 () Formula!109)

(assert (=> b!78792 (= e!42573 res!39649)))

(assert (=> b!78792 true))

(declare-fun b!78793 () Bool)

(assert (=> b!78793 (= e!42572 (And!113 lt!18020 lt!18027))))

(declare-fun b!78794 () Bool)

(assert (=> b!78794 (= e!42572 e!42575)))

(declare-fun c!19972 () Bool)

(declare-fun lt!18028 () Bool)

(assert (=> b!78794 (= c!19972 lt!18028)))

(assert (=> b!78794 (= lt!18025 e!42584)))

(declare-fun c!19985 () Bool)

(assert (=> b!78794 (= c!19985 (or lt!18028 (is-Implies!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-And!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Or!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Implies!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94))))))))))

(assert (=> b!78794 (= lt!18033 e!42585)))

(declare-fun c!19978 () Bool)

(assert (=> b!78794 (= c!19978 (or lt!18028 (is-Implies!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-And!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Or!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Implies!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94)))))) (and (is-Not!113 (Not!113 (rhs!1440 (f!4763 formula!94)))) (is-Not!113 (f!4763 (Not!113 (rhs!1440 (f!4763 formula!94))))))))))

(assert (=> b!78794 (= lt!18028 (is-Or!113 (Not!113 (rhs!1440 (f!4763 formula!94)))))))

(assert (= (and d!54995 c!19986) b!78772))

(assert (= (and d!54995 (not c!19986)) b!78769))

(assert (= (and d!54995 c!19977) b!78787))

(assert (= (and d!54995 (not c!19977)) b!78781))

(assert (= (and b!78794 c!19978) b!78789))

(assert (= (and b!78794 (not c!19978)) b!78775))

(assert (= (and b!78794 c!19985) b!78771))

(assert (= (and b!78794 (not c!19985)) b!78788))

(assert (= (and b!78773 c!19982) b!78768))

(assert (= (and b!78773 (not c!19982)) b!78765))

(assert (= (and b!78773 c!19976) b!78784))

(assert (= (and b!78773 (not c!19976)) b!78785))

(assert (= (and b!78764 c!19983) b!78783))

(assert (= (and b!78764 (not c!19983)) b!78792))

(assert (= (and b!78764 c!19973) b!78786))

(assert (= (and b!78764 (not c!19973)) b!78770))

(assert (= (and b!78774 c!19975) b!78779))

(assert (= (and b!78774 (not c!19975)) b!78790))

(assert (= (and b!78774 c!19980) b!78782))

(assert (= (and b!78774 (not c!19980)) b!78763))

(assert (= (and b!78778 c!19987) b!78767))

(assert (= (and b!78778 (not c!19987)) b!78766))

(assert (= (and b!78774 c!19984) b!78791))

(assert (= (and b!78774 (not c!19984)) b!78778))

(assert (= (and b!78764 c!19981) b!78776))

(assert (= (and b!78764 (not c!19981)) b!78774))

(assert (= (and b!78773 c!19974) b!78777))

(assert (= (and b!78773 (not c!19974)) b!78764))

(assert (= (and b!78794 c!19972) b!78780))

(assert (= (and b!78794 (not c!19972)) b!78773))

(assert (= (and d!54995 c!19979) b!78793))

(assert (= (and d!54995 (not c!19979)) b!78794))

(declare-fun m!73618 () Bool)

(assert (=> b!78772 m!73618))

(declare-fun m!73620 () Bool)

(assert (=> d!54995 m!73620))

(declare-fun m!73622 () Bool)

(assert (=> b!78787 m!73622))

(assert (=> b!78665 d!54995))

(declare-fun b!78843 () Bool)

(declare-fun e!42625 () Bool)

(declare-fun lt!18062 () Bool)

(assert (=> b!78843 (= e!42625 lt!18062)))

(declare-fun b!78844 () Bool)

(declare-fun e!42616 () Bool)

(assert (=> b!78844 (= e!42616 (or (and (is-Not!113 x$2!428) (is-Literal!107 (f!4763 x$2!428))) (not (is-Not!113 x$2!428))))))

(declare-fun b!78845 () Bool)

(declare-fun e!42621 () Bool)

(declare-fun lt!18055 () Bool)

(assert (=> b!78845 (= e!42621 lt!18055)))

(declare-fun b!78846 () Bool)

(declare-fun e!42629 () Bool)

(declare-fun res!39698 () Bool)

(assert (=> b!78846 (= e!42629 res!39698)))

(assert (=> b!78846 true))

(declare-fun b!78847 () Bool)

(declare-fun res!39701 () Bool)

(assert (=> b!78847 (= e!42625 res!39701)))

(assert (=> b!78847 true))

(assert (=> b!78847 true))

(declare-fun b!78848 () Bool)

(declare-fun e!42617 () Bool)

(declare-fun e!42626 () Bool)

(assert (=> b!78848 (= e!42617 e!42626)))

(declare-fun c!20011 () Bool)

(declare-fun lt!18060 () Bool)

(assert (=> b!78848 (= c!20011 (or lt!18060 (is-Implies!113 x$2!428)))))

(declare-fun b!78849 () Bool)

(declare-fun e!42619 () Bool)

(declare-fun e!42620 () Bool)

(assert (=> b!78849 (= e!42619 e!42620)))

(declare-fun res!39695 () Bool)

(assert (=> b!78849 (=> (not res!39695) (not e!42620))))

(declare-fun lt!18056 () Bool)

(assert (=> b!78849 (= res!39695 (not lt!18056))))

(declare-fun b!78850 () Bool)

(declare-fun e!42628 () Bool)

(assert (=> b!78850 (= e!42628 e!42616)))

(declare-fun c!20013 () Bool)

(declare-fun lt!18061 () Bool)

(assert (=> b!78850 (= c!20013 (or lt!18061 (is-Implies!113 x$2!428)))))

(declare-fun lt!18054 () Bool)

(assert (=> b!78850 (= lt!18054 e!42621)))

(declare-fun c!20009 () Bool)

(assert (=> b!78850 (= c!20009 (or lt!18061 (is-Implies!113 x$2!428)))))

(assert (=> b!78850 (= lt!18061 (is-Or!113 x$2!428))))

(declare-fun b!78851 () Bool)

(declare-fun e!42622 () Formula!109)

(assert (=> b!78851 (= e!42622 (rhs!1442 x$2!428))))

(declare-fun b!78852 () Bool)

(assert (=> b!78852 (= e!42628 (and lt!18055 lt!18062))))

(declare-fun b!78853 () Bool)

(assert (=> b!78853 (= e!42629 lt!18055)))

(declare-fun b!78854 () Bool)

(declare-fun e!42627 () Bool)

(declare-fun res!39700 () Bool)

(assert (=> b!78854 (= e!42627 res!39700)))

(assert (=> b!78854 true))

(declare-fun b!78855 () Bool)

(assert (=> b!78855 (= e!42627 (isNNF!0 (ite lt!18056 (lhs!1441 x$2!428) (ite (is-Or!113 x$2!428) (lhs!1442 x$2!428) (lhs!1440 x$2!428)))))))

(declare-fun b!78856 () Bool)

(declare-fun e!42618 () Formula!109)

(assert (=> b!78856 (= e!42618 e!42622)))

(declare-fun c!20014 () Bool)

(assert (=> b!78856 (= c!20014 e!42617)))

(declare-fun res!39692 () Bool)

(assert (=> b!78856 (=> (not res!39692) (not e!42617))))

(assert (=> b!78856 (= res!39692 lt!18060)))

(assert (=> b!78856 (= lt!18060 (is-Or!113 x$2!428))))

(declare-fun b!78857 () Bool)

(declare-fun e!42623 () Bool)

(assert (=> b!78857 (= e!42616 e!42623)))

(declare-fun res!39693 () Bool)

(assert (=> b!78857 (=> (not res!39693) (not e!42623))))

(assert (=> b!78857 (= res!39693 lt!18054)))

(declare-fun b!78858 () Bool)

(declare-fun res!39697 () Bool)

(assert (=> b!78858 (= e!42621 res!39697)))

(assert (=> b!78858 true))

(declare-fun b!78859 () Bool)

(declare-fun e!42624 () Bool)

(assert (=> b!78859 (= e!42624 (isNNF!0 e!42618))))

(declare-fun c!20016 () Bool)

(declare-fun lt!18058 () Bool)

(assert (=> b!78859 (= c!20016 lt!18058)))

(declare-fun b!78860 () Bool)

(declare-fun res!39694 () Bool)

(assert (=> b!78860 (= e!42626 res!39694)))

(assert (=> b!78860 true))

(declare-fun b!78861 () Bool)

(assert (=> b!78861 (= e!42622 (rhs!1440 x$2!428))))

(declare-fun b!78862 () Bool)

(assert (=> b!78862 (= e!42626 lt!18055)))

(declare-fun b!78863 () Bool)

(declare-fun lt!18059 () Bool)

(declare-fun lt!18057 () Bool)

(assert (=> b!78863 (= e!42620 (or (and lt!18059 lt!18057) (and (not lt!18059) (is-Implies!113 x$2!428) lt!18057)))))

(assert (=> b!78863 (= lt!18057 e!42629)))

(declare-fun c!20015 () Bool)

(assert (=> b!78863 (= c!20015 (or lt!18059 (is-Implies!113 x$2!428)))))

(assert (=> b!78863 (= lt!18059 (is-Or!113 x$2!428))))

(declare-fun b!78864 () Bool)

(assert (=> b!78864 (= e!42623 e!42625)))

(declare-fun c!20008 () Bool)

(assert (=> b!78864 (= c!20008 (or (and lt!18061 lt!18054) (and (not lt!18061) (is-Implies!113 x$2!428) lt!18054)))))

(declare-fun b!78865 () Bool)

(declare-fun res!39699 () Bool)

(assert (=> b!78865 (= e!42624 res!39699)))

(assert (=> b!78865 true))

(declare-fun b!78866 () Bool)

(assert (=> b!78866 (= e!42618 (rhs!1441 x$2!428))))

(declare-fun d!54997 () Bool)

(declare-fun c!20017 () Bool)

(assert (=> d!54997 (= c!20017 lt!18056)))

(assert (=> d!54997 (= lt!18062 e!42624)))

(declare-fun c!20012 () Bool)

(assert (=> d!54997 (= c!20012 e!42619)))

(declare-fun res!39696 () Bool)

(assert (=> d!54997 (=> res!39696 e!42619)))

(assert (=> d!54997 (= res!39696 lt!18058)))

(assert (=> d!54997 (= lt!18058 (and lt!18056 lt!18055))))

(assert (=> d!54997 (= lt!18055 e!42627)))

(declare-fun c!20010 () Bool)

(assert (=> d!54997 (= c!20010 (or lt!18056 (is-Or!113 x$2!428) (is-Implies!113 x$2!428)))))

(assert (=> d!54997 (= lt!18056 (is-And!113 x$2!428))))

(assert (=> d!54997 (= (isNNF!0 x$2!428) e!42628)))

(assert (= (and d!54997 c!20010) b!78855))

(assert (= (and d!54997 (not c!20010)) b!78854))

(assert (= (and d!54997 (not res!39696)) b!78849))

(assert (= (and b!78849 res!39695) b!78863))

(assert (= (and b!78863 c!20015) b!78853))

(assert (= (and b!78863 (not c!20015)) b!78846))

(assert (= (and b!78856 res!39692) b!78848))

(assert (= (and b!78848 c!20011) b!78862))

(assert (= (and b!78848 (not c!20011)) b!78860))

(assert (= (and b!78856 c!20014) b!78851))

(assert (= (and b!78856 (not c!20014)) b!78861))

(assert (= (and b!78859 c!20016) b!78866))

(assert (= (and b!78859 (not c!20016)) b!78856))

(assert (= (and d!54997 c!20012) b!78859))

(assert (= (and d!54997 (not c!20012)) b!78865))

(assert (= (and b!78850 c!20009) b!78845))

(assert (= (and b!78850 (not c!20009)) b!78858))

(assert (= (and b!78857 res!39693) b!78864))

(assert (= (and b!78864 c!20008) b!78843))

(assert (= (and b!78864 (not c!20008)) b!78847))

(assert (= (and b!78850 c!20013) b!78857))

(assert (= (and b!78850 (not c!20013)) b!78844))

(assert (= (and d!54997 c!20017) b!78852))

(assert (= (and d!54997 (not c!20017)) b!78850))

(declare-fun m!73624 () Bool)

(assert (=> b!78855 m!73624))

(declare-fun m!73626 () Bool)

(assert (=> b!78859 m!73626))

(assert (=> b!78666 d!54997))

(push 1)

(assert (not b!78755))

(assert (not b!78855))

(assert (not d!54993))

(assert (not b!78787))

(assert (not b!78772))

(assert (not d!54995))

(assert (not b!78740))

(assert (not b!78859))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


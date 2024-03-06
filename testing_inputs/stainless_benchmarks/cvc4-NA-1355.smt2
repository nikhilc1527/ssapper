; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9500 () Bool)

(assert start!9500)

(declare-fun res!34108 () Bool)

(declare-fun e!37841 () Bool)

(assert (=> start!9500 (=> (not res!34108) (not e!37841))))

(declare-datatypes () ((Formula!55 (And!60 (lhs!968 Formula!55) (rhs!968 Formula!55)) (Literal!54 (id!4835 Int)) (Implies!60 (lhs!969 Formula!55) (rhs!969 Formula!55)) (Or!60 (lhs!970 Formula!55) (rhs!970 Formula!55)) (Not!60 (f!4219 Formula!55)))))

(declare-fun formula!50 () Formula!55)

(assert (=> start!9500 (= res!34108 (and (not (is-And!60 formula!50)) (not (is-Or!60 formula!50)) (not (is-Implies!60 formula!50)) (or (not (is-Not!60 formula!50)) (not (is-And!60 (f!4219 formula!50)))) (is-Not!60 formula!50) (is-Or!60 (f!4219 formula!50))))))

(assert (=> start!9500 e!37841))

(assert (=> start!9500 true))

(declare-fun b!69941 () Bool)

(declare-fun res!34109 () Bool)

(assert (=> b!69941 (=> (not res!34109) (not e!37841))))

(declare-fun x$2!369 () Formula!55)

(declare-fun nnf!1 (Formula!55) Formula!55)

(assert (=> b!69941 (= res!34109 (= x$2!369 (And!60 (nnf!1 (Not!60 (lhs!970 (f!4219 formula!50)))) (nnf!1 (Not!60 (rhs!970 (f!4219 formula!50)))))))))

(declare-fun b!69942 () Bool)

(declare-fun isNNF!1 (Formula!55) Bool)

(assert (=> b!69942 (= e!37841 (not (isNNF!1 x$2!369)))))

(assert (= (and start!9500 res!34108) b!69941))

(assert (= (and b!69941 res!34109) b!69942))

(declare-fun m!70535 () Bool)

(assert (=> b!69941 m!70535))

(declare-fun m!70537 () Bool)

(assert (=> b!69941 m!70537))

(declare-fun m!70539 () Bool)

(assert (=> b!69942 m!70539))

(push 1)

(assert (not b!69941))

(assert (not b!69942))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!14762 () Formula!55)

(declare-fun lt!14759 () Formula!55)

(declare-fun b!70003 () Bool)

(declare-fun e!37875 () Formula!55)

(declare-fun lt!14767 () Bool)

(assert (=> b!70003 (= e!37875 (ite lt!14767 (And!60 lt!14759 lt!14762) (ite (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Not!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) lt!14759 (Not!60 (lhs!970 (f!4219 formula!50))))))))

(declare-fun e!37884 () Formula!55)

(assert (=> b!70003 (= lt!14759 e!37884)))

(declare-fun c!16612 () Bool)

(assert (=> b!70003 (= c!16612 (or lt!14767 (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Not!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50))))))))))

(assert (=> b!70003 (= lt!14767 (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))))))

(declare-fun b!70004 () Bool)

(declare-fun e!37880 () Formula!55)

(declare-fun lt!14772 () Formula!55)

(assert (=> b!70004 (= e!37880 lt!14772)))

(declare-fun b!70005 () Bool)

(declare-fun e!37883 () Formula!55)

(declare-fun res!34162 () Formula!55)

(assert (=> b!70005 (= e!37883 res!34162)))

(assert (=> b!70005 true))

(declare-fun b!70006 () Bool)

(declare-fun lt!14761 () Formula!55)

(assert (=> b!70006 (= e!37883 lt!14761)))

(declare-fun b!70007 () Bool)

(declare-fun e!37886 () Formula!55)

(declare-fun res!34167 () Formula!55)

(assert (=> b!70007 (= e!37886 res!34167)))

(assert (=> b!70007 true))

(declare-fun b!70008 () Bool)

(declare-fun e!37878 () Formula!55)

(assert (=> b!70008 (= e!37878 e!37875)))

(declare-fun c!16618 () Bool)

(declare-fun lt!14760 () Bool)

(assert (=> b!70008 (= c!16618 lt!14760)))

(declare-fun e!37882 () Formula!55)

(assert (=> b!70008 (= lt!14762 e!37882)))

(declare-fun c!16620 () Bool)

(assert (=> b!70008 (= c!16620 (or lt!14760 (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50))))))))))

(declare-fun lt!14768 () Formula!55)

(assert (=> b!70008 (= lt!14768 e!37883)))

(declare-fun c!16610 () Bool)

(assert (=> b!70008 (= c!16610 (or lt!14760 (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Not!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50))))))))))

(assert (=> b!70008 (= lt!14760 (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))))))

(declare-fun b!70009 () Bool)

(declare-fun e!37876 () Formula!55)

(assert (=> b!70009 (= e!37876 lt!14772)))

(declare-fun b!70010 () Bool)

(declare-fun lt!14769 () Formula!55)

(assert (=> b!70010 (= e!37878 (Or!60 lt!14761 lt!14769))))

(declare-fun b!70011 () Bool)

(assert (=> b!70011 (= e!37882 lt!14769)))

(declare-fun d!53648 () Bool)

(declare-fun lt!14775 () Formula!55)

(assert (=> d!53648 (isNNF!1 lt!14775)))

(declare-fun e!37873 () Formula!55)

(assert (=> d!53648 (= lt!14775 e!37873)))

(declare-fun c!16617 () Bool)

(declare-fun lt!14773 () Bool)

(assert (=> d!53648 (= c!16617 lt!14773)))

(declare-fun lt!14770 () Formula!55)

(declare-fun e!37872 () Formula!55)

(assert (=> d!53648 (= lt!14770 e!37872)))

(declare-fun c!16614 () Bool)

(assert (=> d!53648 (= c!16614 (or lt!14773 (is-Or!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (and (not (is-Implies!60 (Not!60 (lhs!970 (f!4219 formula!50))))) (or (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50))))))))))))

(declare-fun lt!14766 () Formula!55)

(declare-fun e!37877 () Formula!55)

(assert (=> d!53648 (= lt!14766 e!37877)))

(declare-fun c!16621 () Bool)

(assert (=> d!53648 (= c!16621 (or lt!14773 (is-Or!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Implies!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Not!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50))))))))))

(assert (=> d!53648 (= lt!14773 (is-And!60 (Not!60 (lhs!970 (f!4219 formula!50)))))))

(assert (=> d!53648 (= (nnf!1 (Not!60 (lhs!970 (f!4219 formula!50)))) lt!14775)))

(declare-fun b!70012 () Bool)

(assert (=> b!70012 (= e!37880 e!37878)))

(declare-fun c!16611 () Bool)

(declare-fun lt!14771 () Bool)

(assert (=> b!70012 (= c!16611 lt!14771)))

(declare-fun e!37879 () Formula!55)

(assert (=> b!70012 (= lt!14769 e!37879)))

(declare-fun c!16622 () Bool)

(assert (=> b!70012 (= c!16622 (or lt!14771 (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50))))))))))

(assert (=> b!70012 (= lt!14761 e!37876)))

(declare-fun c!16608 () Bool)

(assert (=> b!70012 (= c!16608 (or lt!14771 (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Not!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50))))))))))

(assert (=> b!70012 (= lt!14771 (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))))))

(declare-fun b!70013 () Bool)

(declare-fun e!37874 () Formula!55)

(declare-fun lt!14774 () Formula!55)

(declare-fun lt!14764 () Formula!55)

(assert (=> b!70013 (= e!37874 (Or!60 lt!14774 lt!14764))))

(declare-fun b!70014 () Bool)

(declare-fun e!37885 () Formula!55)

(assert (=> b!70014 (= e!37885 lt!14770)))

(declare-fun b!70015 () Bool)

(assert (=> b!70015 (= e!37873 e!37874)))

(declare-fun c!16615 () Bool)

(declare-fun lt!14763 () Bool)

(assert (=> b!70015 (= c!16615 lt!14763)))

(assert (=> b!70015 (= lt!14764 e!37885)))

(declare-fun c!16619 () Bool)

(assert (=> b!70015 (= c!16619 (or lt!14763 (and (not (is-Implies!60 (Not!60 (lhs!970 (f!4219 formula!50))))) (or (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50))))))))))))

(assert (=> b!70015 (= lt!14774 e!37886)))

(declare-fun c!16616 () Bool)

(assert (=> b!70015 (= c!16616 (or lt!14763 (is-Implies!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Not!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50))))))))))

(assert (=> b!70015 (= lt!14763 (is-Or!60 (Not!60 (lhs!970 (f!4219 formula!50)))))))

(declare-fun b!70016 () Bool)

(assert (=> b!70016 (= e!37872 (nnf!1 (ite lt!14773 (rhs!968 (Not!60 (lhs!970 (f!4219 formula!50)))) (ite (is-Or!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (rhs!970 (Not!60 (lhs!970 (f!4219 formula!50)))) (ite (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (Not!60 (rhs!968 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (ite (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (Not!60 (rhs!970 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (Not!60 (rhs!969 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50))))))))))))))

(declare-fun b!70017 () Bool)

(assert (=> b!70017 (= e!37886 lt!14766)))

(declare-fun b!70018 () Bool)

(declare-fun res!34164 () Formula!55)

(assert (=> b!70018 (= e!37879 res!34164)))

(assert (=> b!70018 true))

(declare-fun b!70019 () Bool)

(declare-fun res!34169 () Formula!55)

(assert (=> b!70019 (= e!37876 res!34169)))

(assert (=> b!70019 true))

(declare-fun b!70020 () Bool)

(declare-fun res!34160 () Formula!55)

(assert (=> b!70020 (= e!37884 res!34160)))

(assert (=> b!70020 true))

(assert (=> b!70020 true))

(declare-fun b!70021 () Bool)

(declare-fun res!34161 () Formula!55)

(assert (=> b!70021 (= e!37885 res!34161)))

(assert (=> b!70021 true))

(declare-fun b!70022 () Bool)

(assert (=> b!70022 (= e!37874 e!37880)))

(declare-fun c!16609 () Bool)

(declare-fun lt!14765 () Bool)

(assert (=> b!70022 (= c!16609 lt!14765)))

(declare-fun e!37881 () Formula!55)

(assert (=> b!70022 (= lt!14772 e!37881)))

(declare-fun c!16613 () Bool)

(assert (=> b!70022 (= c!16613 (or lt!14765 (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Not!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50))))))))))

(assert (=> b!70022 (= lt!14765 (is-Implies!60 (Not!60 (lhs!970 (f!4219 formula!50)))))))

(declare-fun b!70023 () Bool)

(declare-fun res!34168 () Formula!55)

(assert (=> b!70023 (= e!37872 res!34168)))

(assert (=> b!70023 true))

(declare-fun b!70024 () Bool)

(declare-fun res!34166 () Formula!55)

(assert (=> b!70024 (= e!37877 res!34166)))

(assert (=> b!70024 true))

(declare-fun b!70025 () Bool)

(assert (=> b!70025 (= e!37881 lt!14774)))

(declare-fun b!70026 () Bool)

(assert (=> b!70026 (= e!37873 (And!60 lt!14766 lt!14770))))

(declare-fun b!70027 () Bool)

(assert (=> b!70027 (= e!37884 lt!14768)))

(declare-fun b!70028 () Bool)

(declare-fun res!34165 () Formula!55)

(assert (=> b!70028 (= e!37881 res!34165)))

(assert (=> b!70028 true))

(declare-fun b!70029 () Bool)

(assert (=> b!70029 (= e!37877 (nnf!1 (ite lt!14773 (lhs!968 (Not!60 (lhs!970 (f!4219 formula!50)))) (ite (is-Or!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (lhs!970 (Not!60 (lhs!970 (f!4219 formula!50)))) (ite (is-Implies!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (Or!60 (Not!60 (lhs!969 (Not!60 (lhs!970 (f!4219 formula!50))))) (rhs!969 (Not!60 (lhs!970 (f!4219 formula!50))))) (ite (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (Not!60 (lhs!968 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (ite (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (Not!60 (lhs!970 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (ite (and (is-Not!60 (Not!60 (lhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))) (lhs!969 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50))))) (f!4219 (f!4219 (Not!60 (lhs!970 (f!4219 formula!50)))))))))))))))

(declare-fun b!70030 () Bool)

(assert (=> b!70030 (= e!37875 (And!60 lt!14768 lt!14762))))

(declare-fun b!70031 () Bool)

(assert (=> b!70031 (= e!37879 lt!14764)))

(declare-fun b!70032 () Bool)

(declare-fun res!34163 () Formula!55)

(assert (=> b!70032 (= e!37882 res!34163)))

(assert (=> b!70032 true))

(assert (= (and d!53648 c!16621) b!70029))

(assert (= (and d!53648 (not c!16621)) b!70024))

(assert (= (and d!53648 c!16614) b!70016))

(assert (= (and d!53648 (not c!16614)) b!70023))

(assert (= (and b!70015 c!16616) b!70017))

(assert (= (and b!70015 (not c!16616)) b!70007))

(assert (= (and b!70015 c!16619) b!70014))

(assert (= (and b!70015 (not c!16619)) b!70021))

(assert (= (and b!70022 c!16613) b!70025))

(assert (= (and b!70022 (not c!16613)) b!70028))

(assert (= (and b!70012 c!16608) b!70009))

(assert (= (and b!70012 (not c!16608)) b!70019))

(assert (= (and b!70012 c!16622) b!70031))

(assert (= (and b!70012 (not c!16622)) b!70018))

(assert (= (and b!70008 c!16610) b!70006))

(assert (= (and b!70008 (not c!16610)) b!70005))

(assert (= (and b!70008 c!16620) b!70011))

(assert (= (and b!70008 (not c!16620)) b!70032))

(assert (= (and b!70003 c!16612) b!70027))

(assert (= (and b!70003 (not c!16612)) b!70020))

(assert (= (and b!70008 c!16618) b!70030))

(assert (= (and b!70008 (not c!16618)) b!70003))

(assert (= (and b!70012 c!16611) b!70010))

(assert (= (and b!70012 (not c!16611)) b!70008))

(assert (= (and b!70022 c!16609) b!70004))

(assert (= (and b!70022 (not c!16609)) b!70012))

(assert (= (and b!70015 c!16615) b!70013))

(assert (= (and b!70015 (not c!16615)) b!70022))

(assert (= (and d!53648 c!16617) b!70026))

(assert (= (and d!53648 (not c!16617)) b!70015))

(declare-fun m!70541 () Bool)

(assert (=> d!53648 m!70541))

(declare-fun m!70543 () Bool)

(assert (=> b!70016 m!70543))

(declare-fun m!70545 () Bool)

(assert (=> b!70029 m!70545))

(assert (=> b!69941 d!53648))

(declare-fun lt!14776 () Formula!55)

(declare-fun lt!14779 () Formula!55)

(declare-fun lt!14784 () Bool)

(declare-fun e!37890 () Formula!55)

(declare-fun b!70033 () Bool)

(assert (=> b!70033 (= e!37890 (ite lt!14784 (And!60 lt!14776 lt!14779) (ite (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Not!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) lt!14776 (Not!60 (rhs!970 (f!4219 formula!50))))))))

(declare-fun e!37899 () Formula!55)

(assert (=> b!70033 (= lt!14776 e!37899)))

(declare-fun c!16627 () Bool)

(assert (=> b!70033 (= c!16627 (or lt!14784 (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Not!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50))))))))))

(assert (=> b!70033 (= lt!14784 (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))))))

(declare-fun b!70034 () Bool)

(declare-fun e!37895 () Formula!55)

(declare-fun lt!14789 () Formula!55)

(assert (=> b!70034 (= e!37895 lt!14789)))

(declare-fun b!70035 () Bool)

(declare-fun e!37898 () Formula!55)

(declare-fun res!34172 () Formula!55)

(assert (=> b!70035 (= e!37898 res!34172)))

(assert (=> b!70035 true))

(declare-fun b!70036 () Bool)

(declare-fun lt!14778 () Formula!55)

(assert (=> b!70036 (= e!37898 lt!14778)))

(declare-fun b!70037 () Bool)

(declare-fun e!37901 () Formula!55)

(declare-fun res!34177 () Formula!55)

(assert (=> b!70037 (= e!37901 res!34177)))

(assert (=> b!70037 true))

(declare-fun b!70038 () Bool)

(declare-fun e!37893 () Formula!55)

(assert (=> b!70038 (= e!37893 e!37890)))

(declare-fun c!16633 () Bool)

(declare-fun lt!14777 () Bool)

(assert (=> b!70038 (= c!16633 lt!14777)))

(declare-fun e!37897 () Formula!55)

(assert (=> b!70038 (= lt!14779 e!37897)))

(declare-fun c!16635 () Bool)

(assert (=> b!70038 (= c!16635 (or lt!14777 (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50))))))))))

(declare-fun lt!14785 () Formula!55)

(assert (=> b!70038 (= lt!14785 e!37898)))

(declare-fun c!16625 () Bool)

(assert (=> b!70038 (= c!16625 (or lt!14777 (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Not!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50))))))))))

(assert (=> b!70038 (= lt!14777 (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))))))

(declare-fun b!70039 () Bool)

(declare-fun e!37891 () Formula!55)

(assert (=> b!70039 (= e!37891 lt!14789)))

(declare-fun b!70040 () Bool)

(declare-fun lt!14786 () Formula!55)

(assert (=> b!70040 (= e!37893 (Or!60 lt!14778 lt!14786))))

(declare-fun b!70041 () Bool)

(assert (=> b!70041 (= e!37897 lt!14786)))

(declare-fun d!53650 () Bool)

(declare-fun lt!14792 () Formula!55)

(assert (=> d!53650 (isNNF!1 lt!14792)))

(declare-fun e!37888 () Formula!55)

(assert (=> d!53650 (= lt!14792 e!37888)))

(declare-fun c!16632 () Bool)

(declare-fun lt!14790 () Bool)

(assert (=> d!53650 (= c!16632 lt!14790)))

(declare-fun lt!14787 () Formula!55)

(declare-fun e!37887 () Formula!55)

(assert (=> d!53650 (= lt!14787 e!37887)))

(declare-fun c!16629 () Bool)

(assert (=> d!53650 (= c!16629 (or lt!14790 (is-Or!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (and (not (is-Implies!60 (Not!60 (rhs!970 (f!4219 formula!50))))) (or (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50))))))))))))

(declare-fun lt!14783 () Formula!55)

(declare-fun e!37892 () Formula!55)

(assert (=> d!53650 (= lt!14783 e!37892)))

(declare-fun c!16636 () Bool)

(assert (=> d!53650 (= c!16636 (or lt!14790 (is-Or!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Implies!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Not!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50))))))))))

(assert (=> d!53650 (= lt!14790 (is-And!60 (Not!60 (rhs!970 (f!4219 formula!50)))))))

(assert (=> d!53650 (= (nnf!1 (Not!60 (rhs!970 (f!4219 formula!50)))) lt!14792)))

(declare-fun b!70042 () Bool)

(assert (=> b!70042 (= e!37895 e!37893)))

(declare-fun c!16626 () Bool)

(declare-fun lt!14788 () Bool)

(assert (=> b!70042 (= c!16626 lt!14788)))

(declare-fun e!37894 () Formula!55)

(assert (=> b!70042 (= lt!14786 e!37894)))

(declare-fun c!16637 () Bool)

(assert (=> b!70042 (= c!16637 (or lt!14788 (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50))))))))))

(assert (=> b!70042 (= lt!14778 e!37891)))

(declare-fun c!16623 () Bool)

(assert (=> b!70042 (= c!16623 (or lt!14788 (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Not!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50))))))))))

(assert (=> b!70042 (= lt!14788 (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))))))

(declare-fun b!70043 () Bool)

(declare-fun e!37889 () Formula!55)

(declare-fun lt!14791 () Formula!55)

(declare-fun lt!14781 () Formula!55)

(assert (=> b!70043 (= e!37889 (Or!60 lt!14791 lt!14781))))

(declare-fun b!70044 () Bool)

(declare-fun e!37900 () Formula!55)

(assert (=> b!70044 (= e!37900 lt!14787)))

(declare-fun b!70045 () Bool)

(assert (=> b!70045 (= e!37888 e!37889)))

(declare-fun c!16630 () Bool)

(declare-fun lt!14780 () Bool)

(assert (=> b!70045 (= c!16630 lt!14780)))

(assert (=> b!70045 (= lt!14781 e!37900)))

(declare-fun c!16634 () Bool)

(assert (=> b!70045 (= c!16634 (or lt!14780 (and (not (is-Implies!60 (Not!60 (rhs!970 (f!4219 formula!50))))) (or (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50))))))))))))

(assert (=> b!70045 (= lt!14791 e!37901)))

(declare-fun c!16631 () Bool)

(assert (=> b!70045 (= c!16631 (or lt!14780 (is-Implies!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Not!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50))))))))))

(assert (=> b!70045 (= lt!14780 (is-Or!60 (Not!60 (rhs!970 (f!4219 formula!50)))))))

(declare-fun b!70046 () Bool)

(assert (=> b!70046 (= e!37887 (nnf!1 (ite lt!14790 (rhs!968 (Not!60 (rhs!970 (f!4219 formula!50)))) (ite (is-Or!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (rhs!970 (Not!60 (rhs!970 (f!4219 formula!50)))) (ite (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (Not!60 (rhs!968 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (ite (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (Not!60 (rhs!970 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (Not!60 (rhs!969 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50))))))))))))))

(declare-fun b!70047 () Bool)

(assert (=> b!70047 (= e!37901 lt!14783)))

(declare-fun b!70048 () Bool)

(declare-fun res!34174 () Formula!55)

(assert (=> b!70048 (= e!37894 res!34174)))

(assert (=> b!70048 true))

(declare-fun b!70049 () Bool)

(declare-fun res!34179 () Formula!55)

(assert (=> b!70049 (= e!37891 res!34179)))

(assert (=> b!70049 true))

(declare-fun b!70050 () Bool)

(declare-fun res!34170 () Formula!55)

(assert (=> b!70050 (= e!37899 res!34170)))

(assert (=> b!70050 true))

(assert (=> b!70050 true))

(declare-fun b!70051 () Bool)

(declare-fun res!34171 () Formula!55)

(assert (=> b!70051 (= e!37900 res!34171)))

(assert (=> b!70051 true))

(declare-fun b!70052 () Bool)

(assert (=> b!70052 (= e!37889 e!37895)))

(declare-fun c!16624 () Bool)

(declare-fun lt!14782 () Bool)

(assert (=> b!70052 (= c!16624 lt!14782)))

(declare-fun e!37896 () Formula!55)

(assert (=> b!70052 (= lt!14789 e!37896)))

(declare-fun c!16628 () Bool)

(assert (=> b!70052 (= c!16628 (or lt!14782 (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Not!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50))))))))))

(assert (=> b!70052 (= lt!14782 (is-Implies!60 (Not!60 (rhs!970 (f!4219 formula!50)))))))

(declare-fun b!70053 () Bool)

(declare-fun res!34178 () Formula!55)

(assert (=> b!70053 (= e!37887 res!34178)))

(assert (=> b!70053 true))

(declare-fun b!70054 () Bool)

(declare-fun res!34176 () Formula!55)

(assert (=> b!70054 (= e!37892 res!34176)))

(assert (=> b!70054 true))

(declare-fun b!70055 () Bool)

(assert (=> b!70055 (= e!37896 lt!14791)))

(declare-fun b!70056 () Bool)

(assert (=> b!70056 (= e!37888 (And!60 lt!14783 lt!14787))))

(declare-fun b!70057 () Bool)

(assert (=> b!70057 (= e!37899 lt!14785)))

(declare-fun b!70058 () Bool)

(declare-fun res!34175 () Formula!55)

(assert (=> b!70058 (= e!37896 res!34175)))

(assert (=> b!70058 true))

(declare-fun b!70059 () Bool)

(assert (=> b!70059 (= e!37892 (nnf!1 (ite lt!14790 (lhs!968 (Not!60 (rhs!970 (f!4219 formula!50)))) (ite (is-Or!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (lhs!970 (Not!60 (rhs!970 (f!4219 formula!50)))) (ite (is-Implies!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (Or!60 (Not!60 (lhs!969 (Not!60 (rhs!970 (f!4219 formula!50))))) (rhs!969 (Not!60 (rhs!970 (f!4219 formula!50))))) (ite (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-And!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (Not!60 (lhs!968 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (ite (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Or!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (Not!60 (lhs!970 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (ite (and (is-Not!60 (Not!60 (rhs!970 (f!4219 formula!50)))) (is-Implies!60 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))) (lhs!969 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50))))) (f!4219 (f!4219 (Not!60 (rhs!970 (f!4219 formula!50)))))))))))))))

(declare-fun b!70060 () Bool)

(assert (=> b!70060 (= e!37890 (And!60 lt!14785 lt!14779))))

(declare-fun b!70061 () Bool)

(assert (=> b!70061 (= e!37894 lt!14781)))

(declare-fun b!70062 () Bool)

(declare-fun res!34173 () Formula!55)

(assert (=> b!70062 (= e!37897 res!34173)))

(assert (=> b!70062 true))

(assert (= (and d!53650 c!16636) b!70059))

(assert (= (and d!53650 (not c!16636)) b!70054))

(assert (= (and d!53650 c!16629) b!70046))

(assert (= (and d!53650 (not c!16629)) b!70053))

(assert (= (and b!70045 c!16631) b!70047))

(assert (= (and b!70045 (not c!16631)) b!70037))

(assert (= (and b!70045 c!16634) b!70044))

(assert (= (and b!70045 (not c!16634)) b!70051))

(assert (= (and b!70052 c!16628) b!70055))

(assert (= (and b!70052 (not c!16628)) b!70058))

(assert (= (and b!70042 c!16623) b!70039))

(assert (= (and b!70042 (not c!16623)) b!70049))

(assert (= (and b!70042 c!16637) b!70061))

(assert (= (and b!70042 (not c!16637)) b!70048))

(assert (= (and b!70038 c!16625) b!70036))

(assert (= (and b!70038 (not c!16625)) b!70035))

(assert (= (and b!70038 c!16635) b!70041))

(assert (= (and b!70038 (not c!16635)) b!70062))

(assert (= (and b!70033 c!16627) b!70057))

(assert (= (and b!70033 (not c!16627)) b!70050))

(assert (= (and b!70038 c!16633) b!70060))

(assert (= (and b!70038 (not c!16633)) b!70033))

(assert (= (and b!70042 c!16626) b!70040))

(assert (= (and b!70042 (not c!16626)) b!70038))

(assert (= (and b!70052 c!16624) b!70034))

(assert (= (and b!70052 (not c!16624)) b!70042))

(assert (= (and b!70045 c!16630) b!70043))

(assert (= (and b!70045 (not c!16630)) b!70052))

(assert (= (and d!53650 c!16632) b!70056))

(assert (= (and d!53650 (not c!16632)) b!70045))

(declare-fun m!70547 () Bool)

(assert (=> d!53650 m!70547))

(declare-fun m!70549 () Bool)

(assert (=> b!70046 m!70549))

(declare-fun m!70551 () Bool)

(assert (=> b!70059 m!70551))

(assert (=> b!69941 d!53650))

(declare-fun b!70077 () Bool)

(declare-fun e!37912 () Bool)

(declare-fun res!34192 () Bool)

(assert (=> b!70077 (= e!37912 res!34192)))

(assert (=> b!70077 true))

(assert (=> b!70077 true))

(declare-fun b!70078 () Bool)

(declare-fun e!37910 () Bool)

(declare-fun lt!14799 () Bool)

(assert (=> b!70078 (= e!37910 (isNNF!1 (ite lt!14799 (lhs!968 x$2!369) (lhs!970 x$2!369))))))

(declare-fun b!70079 () Bool)

(declare-fun e!37911 () Bool)

(assert (=> b!70079 (= e!37911 (and (not (is-Implies!60 x$2!369)) (or (and (is-Not!60 x$2!369) (is-Literal!54 (f!4219 x$2!369))) (not (is-Not!60 x$2!369)))))))

(declare-fun b!70080 () Bool)

(declare-fun e!37913 () Bool)

(assert (=> b!70080 (= e!37911 e!37913)))

(declare-fun res!34194 () Bool)

(assert (=> b!70080 (=> (not res!34194) (not e!37913))))

(declare-fun lt!14800 () Bool)

(assert (=> b!70080 (= res!34194 lt!14800)))

(declare-fun b!70081 () Bool)

(assert (=> b!70081 (= e!37913 e!37912)))

(declare-fun lt!14801 () Bool)

(declare-fun c!16644 () Bool)

(assert (=> b!70081 (= c!16644 (or lt!14801 (and (not lt!14799) (is-Or!60 x$2!369) lt!14800)))))

(declare-fun b!70082 () Bool)

(assert (=> b!70082 (= e!37912 (isNNF!1 (ite lt!14801 (rhs!968 x$2!369) (rhs!970 x$2!369))))))

(declare-fun d!53652 () Bool)

(declare-fun c!16646 () Bool)

(assert (=> d!53652 (= c!16646 (or lt!14799 (is-Or!60 x$2!369)))))

(assert (=> d!53652 (= lt!14801 (and lt!14799 lt!14800))))

(assert (=> d!53652 (= lt!14800 e!37910)))

(declare-fun c!16645 () Bool)

(assert (=> d!53652 (= c!16645 (or lt!14799 (is-Or!60 x$2!369)))))

(assert (=> d!53652 (= lt!14799 (is-And!60 x$2!369))))

(assert (=> d!53652 (= (isNNF!1 x$2!369) e!37911)))

(declare-fun b!70083 () Bool)

(declare-fun res!34193 () Bool)

(assert (=> b!70083 (= e!37910 res!34193)))

(assert (=> b!70083 true))

(assert (= (and d!53652 c!16645) b!70078))

(assert (= (and d!53652 (not c!16645)) b!70083))

(assert (= (and b!70080 res!34194) b!70081))

(assert (= (and b!70081 c!16644) b!70082))

(assert (= (and b!70081 (not c!16644)) b!70077))

(assert (= (and d!53652 c!16646) b!70080))

(assert (= (and d!53652 (not c!16646)) b!70079))

(declare-fun m!70553 () Bool)

(assert (=> b!70078 m!70553))

(declare-fun m!70555 () Bool)

(assert (=> b!70082 m!70555))

(assert (=> b!69942 d!53652))

(push 1)

(assert (not d!53650))

(assert (not b!70016))

(assert (not b!70082))

(assert (not d!53648))

(assert (not b!70046))

(assert (not b!70078))

(assert (not b!70059))

(assert (not b!70029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


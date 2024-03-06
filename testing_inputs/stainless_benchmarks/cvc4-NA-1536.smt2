; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10390 () Bool)

(assert start!10390)

(declare-fun res!39071 () Bool)

(declare-fun e!42087 () Bool)

(assert (=> start!10390 (=> (not res!39071) (not e!42087))))

(declare-datatypes () ((Formula!105 (Implies!109 (lhs!1428 Formula!105) (rhs!1428 Formula!105)) (And!109 (lhs!1429 Formula!105) (rhs!1429 Formula!105)) (Or!109 (lhs!1430 Formula!105) (rhs!1430 Formula!105)) (Literal!103 (id!4966 (_ BitVec 32))) (Not!109 (f!4755 Formula!105)))))

(declare-fun formula!94 () Formula!105)

(assert (=> start!10390 (= res!39071 (and (not (is-And!109 formula!94)) (is-Or!109 formula!94)))))

(assert (=> start!10390 e!42087))

(assert (=> start!10390 true))

(declare-fun b!77841 () Bool)

(declare-fun res!39072 () Bool)

(assert (=> b!77841 (=> (not res!39072) (not e!42087))))

(declare-fun x$2!416 () Formula!105)

(declare-fun nnf!0 (Formula!105) Formula!105)

(assert (=> b!77841 (= res!39072 (= x$2!416 (Or!109 (nnf!0 (lhs!1430 formula!94)) (nnf!0 (rhs!1430 formula!94)))))))

(declare-fun b!77842 () Bool)

(declare-fun isNNF!0 (Formula!105) Bool)

(assert (=> b!77842 (= e!42087 (not (isNNF!0 x$2!416)))))

(assert (= (and start!10390 res!39071) b!77841))

(assert (= (and b!77841 res!39072) b!77842))

(declare-fun m!73518 () Bool)

(assert (=> b!77841 m!73518))

(declare-fun m!73520 () Bool)

(assert (=> b!77841 m!73520))

(declare-fun m!73522 () Bool)

(assert (=> b!77842 m!73522))

(push 1)

(assert (not b!77842))

(assert (not b!77841))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!77891 () Bool)

(declare-fun e!42119 () Bool)

(declare-fun lt!17586 () Bool)

(assert (=> b!77891 (= e!42119 lt!17586)))

(declare-fun b!77892 () Bool)

(declare-fun e!42121 () Bool)

(declare-fun res!39110 () Bool)

(assert (=> b!77892 (= e!42121 res!39110)))

(assert (=> b!77892 true))

(declare-fun d!54969 () Bool)

(declare-fun c!19574 () Bool)

(declare-fun lt!17590 () Bool)

(assert (=> d!54969 (= c!19574 lt!17590)))

(declare-fun lt!17593 () Bool)

(declare-fun e!42116 () Bool)

(assert (=> d!54969 (= lt!17593 e!42116)))

(declare-fun c!19572 () Bool)

(declare-fun e!42126 () Bool)

(assert (=> d!54969 (= c!19572 e!42126)))

(declare-fun res!39111 () Bool)

(assert (=> d!54969 (=> res!39111 e!42126)))

(declare-fun lt!17588 () Bool)

(assert (=> d!54969 (= res!39111 lt!17588)))

(assert (=> d!54969 (= lt!17588 (and lt!17590 lt!17586))))

(assert (=> d!54969 (= lt!17586 e!42121)))

(declare-fun c!19568 () Bool)

(assert (=> d!54969 (= c!19568 (or lt!17590 (is-Or!109 x$2!416) (is-Implies!109 x$2!416)))))

(assert (=> d!54969 (= lt!17590 (is-And!109 x$2!416))))

(declare-fun e!42123 () Bool)

(assert (=> d!54969 (= (isNNF!0 x$2!416) e!42123)))

(declare-fun b!77893 () Bool)

(declare-fun e!42118 () Bool)

(declare-fun res!39107 () Bool)

(assert (=> b!77893 (= e!42118 res!39107)))

(assert (=> b!77893 true))

(assert (=> b!77893 true))

(declare-fun b!77894 () Bool)

(declare-fun e!42124 () Formula!105)

(declare-fun e!42128 () Formula!105)

(assert (=> b!77894 (= e!42124 e!42128)))

(declare-fun c!19577 () Bool)

(declare-fun e!42125 () Bool)

(assert (=> b!77894 (= c!19577 e!42125)))

(declare-fun res!39108 () Bool)

(assert (=> b!77894 (=> (not res!39108) (not e!42125))))

(declare-fun lt!17589 () Bool)

(assert (=> b!77894 (= res!39108 lt!17589)))

(assert (=> b!77894 (= lt!17589 (is-Or!109 x$2!416))))

(declare-fun b!77895 () Bool)

(assert (=> b!77895 (= e!42123 (and lt!17586 lt!17593))))

(declare-fun b!77896 () Bool)

(declare-fun e!42127 () Bool)

(assert (=> b!77896 (= e!42127 e!42118)))

(declare-fun lt!17587 () Bool)

(declare-fun lt!17592 () Bool)

(declare-fun c!19576 () Bool)

(assert (=> b!77896 (= c!19576 (or (and lt!17587 lt!17592) (and (not lt!17587) (is-Implies!109 x$2!416) lt!17592)))))

(declare-fun b!77897 () Bool)

(assert (=> b!77897 (= e!42118 lt!17593)))

(declare-fun b!77898 () Bool)

(declare-fun res!39112 () Bool)

(assert (=> b!77898 (= e!42119 res!39112)))

(assert (=> b!77898 true))

(declare-fun b!77899 () Bool)

(assert (=> b!77899 (= e!42128 (rhs!1428 x$2!416))))

(declare-fun b!77900 () Bool)

(declare-fun e!42117 () Bool)

(assert (=> b!77900 (= e!42126 e!42117)))

(declare-fun res!39114 () Bool)

(assert (=> b!77900 (=> (not res!39114) (not e!42117))))

(assert (=> b!77900 (= res!39114 (not lt!17590))))

(declare-fun b!77901 () Bool)

(declare-fun e!42129 () Bool)

(assert (=> b!77901 (= e!42129 lt!17586)))

(declare-fun lt!17594 () Bool)

(declare-fun lt!17591 () Bool)

(declare-fun b!77902 () Bool)

(assert (=> b!77902 (= e!42117 (or (and lt!17594 lt!17591) (and (not lt!17594) (is-Implies!109 x$2!416) lt!17591)))))

(declare-fun e!42122 () Bool)

(assert (=> b!77902 (= lt!17591 e!42122)))

(declare-fun c!19575 () Bool)

(assert (=> b!77902 (= c!19575 (or lt!17594 (is-Implies!109 x$2!416)))))

(assert (=> b!77902 (= lt!17594 (is-Or!109 x$2!416))))

(declare-fun b!77903 () Bool)

(declare-fun res!39115 () Bool)

(assert (=> b!77903 (= e!42129 res!39115)))

(assert (=> b!77903 true))

(declare-fun b!77904 () Bool)

(assert (=> b!77904 (= e!42122 lt!17586)))

(declare-fun b!77905 () Bool)

(assert (=> b!77905 (= e!42125 e!42119)))

(declare-fun c!19570 () Bool)

(assert (=> b!77905 (= c!19570 (or lt!17589 (is-Implies!109 x$2!416)))))

(declare-fun b!77906 () Bool)

(assert (=> b!77906 (= e!42124 (rhs!1429 x$2!416))))

(declare-fun b!77907 () Bool)

(declare-fun res!39109 () Bool)

(assert (=> b!77907 (= e!42116 res!39109)))

(assert (=> b!77907 true))

(declare-fun b!77908 () Bool)

(declare-fun e!42120 () Bool)

(assert (=> b!77908 (= e!42123 e!42120)))

(declare-fun c!19571 () Bool)

(assert (=> b!77908 (= c!19571 (or lt!17587 (is-Implies!109 x$2!416)))))

(assert (=> b!77908 (= lt!17592 e!42129)))

(declare-fun c!19573 () Bool)

(assert (=> b!77908 (= c!19573 (or lt!17587 (is-Implies!109 x$2!416)))))

(assert (=> b!77908 (= lt!17587 (is-Or!109 x$2!416))))

(declare-fun b!77909 () Bool)

(assert (=> b!77909 (= e!42120 (or (and (is-Not!109 x$2!416) (is-Literal!103 (f!4755 x$2!416))) (not (is-Not!109 x$2!416))))))

(declare-fun b!77910 () Bool)

(assert (=> b!77910 (= e!42120 e!42127)))

(declare-fun res!39113 () Bool)

(assert (=> b!77910 (=> (not res!39113) (not e!42127))))

(assert (=> b!77910 (= res!39113 lt!17592)))

(declare-fun b!77911 () Bool)

(declare-fun res!39116 () Bool)

(assert (=> b!77911 (= e!42122 res!39116)))

(assert (=> b!77911 true))

(declare-fun b!77912 () Bool)

(assert (=> b!77912 (= e!42128 (rhs!1430 x$2!416))))

(declare-fun b!77913 () Bool)

(assert (=> b!77913 (= e!42121 (isNNF!0 (ite lt!17590 (lhs!1429 x$2!416) (ite (is-Or!109 x$2!416) (lhs!1430 x$2!416) (lhs!1428 x$2!416)))))))

(declare-fun b!77914 () Bool)

(assert (=> b!77914 (= e!42116 (isNNF!0 e!42124))))

(declare-fun c!19569 () Bool)

(assert (=> b!77914 (= c!19569 lt!17588)))

(assert (= (and d!54969 c!19568) b!77913))

(assert (= (and d!54969 (not c!19568)) b!77892))

(assert (= (and d!54969 (not res!39111)) b!77900))

(assert (= (and b!77900 res!39114) b!77902))

(assert (= (and b!77902 c!19575) b!77904))

(assert (= (and b!77902 (not c!19575)) b!77911))

(assert (= (and b!77894 res!39108) b!77905))

(assert (= (and b!77905 c!19570) b!77891))

(assert (= (and b!77905 (not c!19570)) b!77898))

(assert (= (and b!77894 c!19577) b!77912))

(assert (= (and b!77894 (not c!19577)) b!77899))

(assert (= (and b!77914 c!19569) b!77906))

(assert (= (and b!77914 (not c!19569)) b!77894))

(assert (= (and d!54969 c!19572) b!77914))

(assert (= (and d!54969 (not c!19572)) b!77907))

(assert (= (and b!77908 c!19573) b!77901))

(assert (= (and b!77908 (not c!19573)) b!77903))

(assert (= (and b!77910 res!39113) b!77896))

(assert (= (and b!77896 c!19576) b!77897))

(assert (= (and b!77896 (not c!19576)) b!77893))

(assert (= (and b!77908 c!19571) b!77910))

(assert (= (and b!77908 (not c!19571)) b!77909))

(assert (= (and d!54969 c!19574) b!77895))

(assert (= (and d!54969 (not c!19574)) b!77908))

(declare-fun m!73524 () Bool)

(assert (=> b!77913 m!73524))

(declare-fun m!73526 () Bool)

(assert (=> b!77914 m!73526))

(assert (=> b!77842 d!54969))

(declare-fun b!77979 () Bool)

(declare-fun e!42173 () Formula!105)

(declare-fun res!39180 () Formula!105)

(assert (=> b!77979 (= e!42173 res!39180)))

(assert (=> b!77979 true))

(declare-fun b!77980 () Bool)

(declare-fun e!42174 () Formula!105)

(declare-fun lt!17647 () Formula!105)

(assert (=> b!77980 (= e!42174 lt!17647)))

(declare-fun b!77981 () Bool)

(declare-fun e!42166 () Formula!105)

(declare-fun e!42167 () Formula!105)

(assert (=> b!77981 (= e!42166 e!42167)))

(declare-fun c!19623 () Bool)

(declare-fun lt!17648 () Bool)

(assert (=> b!77981 (= c!19623 lt!17648)))

(declare-fun lt!17643 () Formula!105)

(declare-fun e!42175 () Formula!105)

(assert (=> b!77981 (= lt!17643 e!42175)))

(declare-fun c!19625 () Bool)

(assert (=> b!77981 (= c!19625 (or lt!17648 (and (is-Not!109 (lhs!1430 formula!94)) (is-Or!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Implies!109 (f!4755 (lhs!1430 formula!94))))))))

(declare-fun lt!17645 () Formula!105)

(declare-fun e!42177 () Formula!105)

(assert (=> b!77981 (= lt!17645 e!42177)))

(declare-fun c!19618 () Bool)

(assert (=> b!77981 (= c!19618 (or lt!17648 (and (is-Not!109 (lhs!1430 formula!94)) (is-Or!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Implies!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Not!109 (f!4755 (lhs!1430 formula!94))))))))

(assert (=> b!77981 (= lt!17648 (and (is-Not!109 (lhs!1430 formula!94)) (is-And!109 (f!4755 (lhs!1430 formula!94)))))))

(declare-fun b!77982 () Bool)

(declare-fun e!42165 () Formula!105)

(declare-fun res!39172 () Formula!105)

(assert (=> b!77982 (= e!42165 res!39172)))

(assert (=> b!77982 true))

(declare-fun b!77983 () Bool)

(declare-fun e!42176 () Formula!105)

(declare-fun lt!17634 () Formula!105)

(declare-fun lt!17644 () Formula!105)

(assert (=> b!77983 (= e!42176 (And!109 lt!17634 lt!17644))))

(declare-fun b!77984 () Bool)

(assert (=> b!77984 (= e!42167 e!42176)))

(declare-fun c!19622 () Bool)

(declare-fun lt!17641 () Bool)

(assert (=> b!77984 (= c!19622 lt!17641)))

(declare-fun e!42168 () Formula!105)

(assert (=> b!77984 (= lt!17644 e!42168)))

(declare-fun c!19613 () Bool)

(assert (=> b!77984 (= c!19613 (or lt!17641 (and (is-Not!109 (lhs!1430 formula!94)) (is-Implies!109 (f!4755 (lhs!1430 formula!94))))))))

(assert (=> b!77984 (= lt!17634 e!42173)))

(declare-fun c!19619 () Bool)

(assert (=> b!77984 (= c!19619 (or lt!17641 (and (is-Not!109 (lhs!1430 formula!94)) (is-Implies!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Not!109 (f!4755 (lhs!1430 formula!94))))))))

(assert (=> b!77984 (= lt!17641 (and (is-Not!109 (lhs!1430 formula!94)) (is-Or!109 (f!4755 (lhs!1430 formula!94)))))))

(declare-fun b!77985 () Bool)

(declare-fun e!42170 () Formula!105)

(declare-fun e!42162 () Formula!105)

(assert (=> b!77985 (= e!42170 e!42162)))

(declare-fun c!19610 () Bool)

(declare-fun lt!17636 () Bool)

(assert (=> b!77985 (= c!19610 lt!17636)))

(declare-fun lt!17637 () Formula!105)

(declare-fun e!42163 () Formula!105)

(assert (=> b!77985 (= lt!17637 e!42163)))

(declare-fun c!19621 () Bool)

(assert (=> b!77985 (= c!19621 (or lt!17636 (is-Implies!109 (lhs!1430 formula!94)) (and (is-Not!109 (lhs!1430 formula!94)) (is-And!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Or!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Implies!109 (f!4755 (lhs!1430 formula!94))))))))

(declare-fun lt!17631 () Formula!105)

(assert (=> b!77985 (= lt!17631 e!42174)))

(declare-fun c!19611 () Bool)

(assert (=> b!77985 (= c!19611 (or lt!17636 (is-Implies!109 (lhs!1430 formula!94)) (and (is-Not!109 (lhs!1430 formula!94)) (is-And!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Or!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Implies!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Not!109 (f!4755 (lhs!1430 formula!94))))))))

(assert (=> b!77985 (= lt!17636 (is-Or!109 (lhs!1430 formula!94)))))

(declare-fun b!77986 () Bool)

(declare-fun e!42164 () Formula!105)

(declare-fun lt!17635 () Bool)

(assert (=> b!77986 (= e!42164 (nnf!0 (ite lt!17635 (rhs!1429 (lhs!1430 formula!94)) (ite (is-Or!109 (lhs!1430 formula!94)) (rhs!1430 (lhs!1430 formula!94)) (ite (is-Implies!109 (lhs!1430 formula!94)) (rhs!1428 (lhs!1430 formula!94)) (ite (and (is-Not!109 (lhs!1430 formula!94)) (is-And!109 (f!4755 (lhs!1430 formula!94)))) (Not!109 (rhs!1429 (f!4755 (lhs!1430 formula!94)))) (ite (and (is-Not!109 (lhs!1430 formula!94)) (is-Or!109 (f!4755 (lhs!1430 formula!94)))) (Not!109 (rhs!1430 (f!4755 (lhs!1430 formula!94)))) (Not!109 (rhs!1428 (f!4755 (lhs!1430 formula!94)))))))))))))

(declare-fun b!77987 () Bool)

(declare-fun res!39178 () Formula!105)

(assert (=> b!77987 (= e!42177 res!39178)))

(assert (=> b!77987 true))

(declare-fun b!77988 () Bool)

(declare-fun lt!17642 () Formula!105)

(assert (=> b!77988 (= e!42170 (And!109 lt!17647 lt!17642))))

(declare-fun b!77989 () Bool)

(declare-fun res!39181 () Formula!105)

(assert (=> b!77989 (= e!42175 res!39181)))

(assert (=> b!77989 true))

(declare-fun lt!17638 () Formula!105)

(declare-fun lt!17639 () Bool)

(declare-fun b!77990 () Bool)

(assert (=> b!77990 (= e!42176 (ite lt!17639 (And!109 lt!17638 lt!17644) (ite (and (is-Not!109 (lhs!1430 formula!94)) (is-Not!109 (f!4755 (lhs!1430 formula!94)))) lt!17638 (lhs!1430 formula!94))))))

(declare-fun e!42172 () Formula!105)

(assert (=> b!77990 (= lt!17638 e!42172)))

(declare-fun c!19616 () Bool)

(assert (=> b!77990 (= c!19616 (or lt!17639 (and (is-Not!109 (lhs!1430 formula!94)) (is-Not!109 (f!4755 (lhs!1430 formula!94))))))))

(assert (=> b!77990 (= lt!17639 (and (is-Not!109 (lhs!1430 formula!94)) (is-Implies!109 (f!4755 (lhs!1430 formula!94)))))))

(declare-fun b!77991 () Bool)

(assert (=> b!77991 (= e!42165 (nnf!0 (ite lt!17635 (lhs!1429 (lhs!1430 formula!94)) (ite (is-Or!109 (lhs!1430 formula!94)) (lhs!1430 (lhs!1430 formula!94)) (ite (is-Implies!109 (lhs!1430 formula!94)) (lhs!1428 (lhs!1430 formula!94)) (ite (and (is-Not!109 (lhs!1430 formula!94)) (is-And!109 (f!4755 (lhs!1430 formula!94)))) (Not!109 (lhs!1429 (f!4755 (lhs!1430 formula!94)))) (ite (and (is-Not!109 (lhs!1430 formula!94)) (is-Or!109 (f!4755 (lhs!1430 formula!94)))) (Not!109 (lhs!1430 (f!4755 (lhs!1430 formula!94)))) (ite (and (is-Not!109 (lhs!1430 formula!94)) (is-Implies!109 (f!4755 (lhs!1430 formula!94)))) (lhs!1428 (f!4755 (lhs!1430 formula!94))) (f!4755 (f!4755 (lhs!1430 formula!94)))))))))))))

(declare-fun d!54971 () Bool)

(declare-fun lt!17646 () Formula!105)

(assert (=> d!54971 (isNNF!0 lt!17646)))

(assert (=> d!54971 (= lt!17646 e!42170)))

(declare-fun c!19615 () Bool)

(assert (=> d!54971 (= c!19615 lt!17635)))

(assert (=> d!54971 (= lt!17642 e!42164)))

(declare-fun c!19620 () Bool)

(assert (=> d!54971 (= c!19620 (or lt!17635 (is-Or!109 (lhs!1430 formula!94)) (is-Implies!109 (lhs!1430 formula!94)) (and (is-Not!109 (lhs!1430 formula!94)) (is-And!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Or!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Implies!109 (f!4755 (lhs!1430 formula!94))))))))

(assert (=> d!54971 (= lt!17647 e!42165)))

(declare-fun c!19614 () Bool)

(assert (=> d!54971 (= c!19614 (or lt!17635 (is-Or!109 (lhs!1430 formula!94)) (is-Implies!109 (lhs!1430 formula!94)) (and (is-Not!109 (lhs!1430 formula!94)) (is-And!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Or!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Implies!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Not!109 (f!4755 (lhs!1430 formula!94))))))))

(assert (=> d!54971 (= lt!17635 (is-And!109 (lhs!1430 formula!94)))))

(assert (=> d!54971 (= (nnf!0 (lhs!1430 formula!94)) lt!17646)))

(declare-fun b!77992 () Bool)

(assert (=> b!77992 (= e!42162 e!42166)))

(declare-fun c!19617 () Bool)

(declare-fun lt!17632 () Bool)

(assert (=> b!77992 (= c!19617 lt!17632)))

(declare-fun lt!17640 () Formula!105)

(declare-fun e!42171 () Formula!105)

(assert (=> b!77992 (= lt!17640 e!42171)))

(declare-fun c!19612 () Bool)

(assert (=> b!77992 (= c!19612 (or lt!17632 (and (is-Not!109 (lhs!1430 formula!94)) (is-And!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Or!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Implies!109 (f!4755 (lhs!1430 formula!94))))))))

(declare-fun lt!17633 () Formula!105)

(declare-fun e!42169 () Formula!105)

(assert (=> b!77992 (= lt!17633 e!42169)))

(declare-fun c!19624 () Bool)

(assert (=> b!77992 (= c!19624 (or lt!17632 (and (is-Not!109 (lhs!1430 formula!94)) (is-And!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Or!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Implies!109 (f!4755 (lhs!1430 formula!94)))) (and (is-Not!109 (lhs!1430 formula!94)) (is-Not!109 (f!4755 (lhs!1430 formula!94))))))))

(assert (=> b!77992 (= lt!17632 (is-Implies!109 (lhs!1430 formula!94)))))

(declare-fun b!77993 () Bool)

(assert (=> b!77993 (= e!42167 (Or!109 lt!17645 lt!17643))))

(declare-fun b!77994 () Bool)

(assert (=> b!77994 (= e!42166 (Implies!109 lt!17633 lt!17640))))

(declare-fun b!77995 () Bool)

(declare-fun res!39182 () Formula!105)

(assert (=> b!77995 (= e!42174 res!39182)))

(assert (=> b!77995 true))

(declare-fun b!77996 () Bool)

(assert (=> b!77996 (= e!42169 lt!17631)))

(declare-fun b!77997 () Bool)

(declare-fun res!39175 () Formula!105)

(assert (=> b!77997 (= e!42172 res!39175)))

(assert (=> b!77997 true))

(assert (=> b!77997 true))

(declare-fun b!77998 () Bool)

(assert (=> b!77998 (= e!42175 lt!17640)))

(declare-fun b!77999 () Bool)

(assert (=> b!77999 (= e!42168 lt!17643)))

(declare-fun b!78000 () Bool)

(declare-fun res!39174 () Formula!105)

(assert (=> b!78000 (= e!42169 res!39174)))

(assert (=> b!78000 true))

(declare-fun b!78001 () Bool)

(assert (=> b!78001 (= e!42172 lt!17634)))

(declare-fun b!78002 () Bool)

(declare-fun res!39176 () Formula!105)

(assert (=> b!78002 (= e!42164 res!39176)))

(assert (=> b!78002 true))

(declare-fun b!78003 () Bool)

(assert (=> b!78003 (= e!42177 lt!17633)))

(declare-fun b!78004 () Bool)

(assert (=> b!78004 (= e!42163 lt!17642)))

(declare-fun b!78005 () Bool)

(declare-fun res!39177 () Formula!105)

(assert (=> b!78005 (= e!42163 res!39177)))

(assert (=> b!78005 true))

(declare-fun b!78006 () Bool)

(assert (=> b!78006 (= e!42171 lt!17637)))

(declare-fun b!78007 () Bool)

(declare-fun res!39173 () Formula!105)

(assert (=> b!78007 (= e!42171 res!39173)))

(assert (=> b!78007 true))

(declare-fun b!78008 () Bool)

(assert (=> b!78008 (= e!42162 (Or!109 lt!17631 lt!17637))))

(declare-fun b!78009 () Bool)

(assert (=> b!78009 (= e!42173 lt!17645)))

(declare-fun b!78010 () Bool)

(declare-fun res!39179 () Formula!105)

(assert (=> b!78010 (= e!42168 res!39179)))

(assert (=> b!78010 true))

(assert (= (and d!54971 c!19614) b!77991))

(assert (= (and d!54971 (not c!19614)) b!77982))

(assert (= (and d!54971 c!19620) b!77986))

(assert (= (and d!54971 (not c!19620)) b!78002))

(assert (= (and b!77985 c!19611) b!77980))

(assert (= (and b!77985 (not c!19611)) b!77995))

(assert (= (and b!77985 c!19621) b!78004))

(assert (= (and b!77985 (not c!19621)) b!78005))

(assert (= (and b!77992 c!19624) b!77996))

(assert (= (and b!77992 (not c!19624)) b!78000))

(assert (= (and b!77992 c!19612) b!78006))

(assert (= (and b!77992 (not c!19612)) b!78007))

(assert (= (and b!77981 c!19618) b!78003))

(assert (= (and b!77981 (not c!19618)) b!77987))

(assert (= (and b!77981 c!19625) b!77998))

(assert (= (and b!77981 (not c!19625)) b!77989))

(assert (= (and b!77984 c!19619) b!78009))

(assert (= (and b!77984 (not c!19619)) b!77979))

(assert (= (and b!77984 c!19613) b!77999))

(assert (= (and b!77984 (not c!19613)) b!78010))

(assert (= (and b!77990 c!19616) b!78001))

(assert (= (and b!77990 (not c!19616)) b!77997))

(assert (= (and b!77984 c!19622) b!77983))

(assert (= (and b!77984 (not c!19622)) b!77990))

(assert (= (and b!77981 c!19623) b!77993))

(assert (= (and b!77981 (not c!19623)) b!77984))

(assert (= (and b!77992 c!19617) b!77994))

(assert (= (and b!77992 (not c!19617)) b!77981))

(assert (= (and b!77985 c!19610) b!78008))

(assert (= (and b!77985 (not c!19610)) b!77992))

(assert (= (and d!54971 c!19615) b!77988))

(assert (= (and d!54971 (not c!19615)) b!77985))

(declare-fun m!73528 () Bool)

(assert (=> b!77986 m!73528))

(declare-fun m!73530 () Bool)

(assert (=> b!77991 m!73530))

(declare-fun m!73532 () Bool)

(assert (=> d!54971 m!73532))

(assert (=> b!77841 d!54971))

(declare-fun b!78011 () Bool)

(declare-fun e!42189 () Formula!105)

(declare-fun res!39191 () Formula!105)

(assert (=> b!78011 (= e!42189 res!39191)))

(assert (=> b!78011 true))

(declare-fun b!78012 () Bool)

(declare-fun e!42190 () Formula!105)

(declare-fun lt!17665 () Formula!105)

(assert (=> b!78012 (= e!42190 lt!17665)))

(declare-fun b!78013 () Bool)

(declare-fun e!42182 () Formula!105)

(declare-fun e!42183 () Formula!105)

(assert (=> b!78013 (= e!42182 e!42183)))

(declare-fun c!19639 () Bool)

(declare-fun lt!17666 () Bool)

(assert (=> b!78013 (= c!19639 lt!17666)))

(declare-fun lt!17661 () Formula!105)

(declare-fun e!42191 () Formula!105)

(assert (=> b!78013 (= lt!17661 e!42191)))

(declare-fun c!19641 () Bool)

(assert (=> b!78013 (= c!19641 (or lt!17666 (and (is-Not!109 (rhs!1430 formula!94)) (is-Or!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Implies!109 (f!4755 (rhs!1430 formula!94))))))))

(declare-fun lt!17663 () Formula!105)

(declare-fun e!42193 () Formula!105)

(assert (=> b!78013 (= lt!17663 e!42193)))

(declare-fun c!19634 () Bool)

(assert (=> b!78013 (= c!19634 (or lt!17666 (and (is-Not!109 (rhs!1430 formula!94)) (is-Or!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Implies!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Not!109 (f!4755 (rhs!1430 formula!94))))))))

(assert (=> b!78013 (= lt!17666 (and (is-Not!109 (rhs!1430 formula!94)) (is-And!109 (f!4755 (rhs!1430 formula!94)))))))

(declare-fun b!78014 () Bool)

(declare-fun e!42181 () Formula!105)

(declare-fun res!39183 () Formula!105)

(assert (=> b!78014 (= e!42181 res!39183)))

(assert (=> b!78014 true))

(declare-fun b!78015 () Bool)

(declare-fun e!42192 () Formula!105)

(declare-fun lt!17652 () Formula!105)

(declare-fun lt!17662 () Formula!105)

(assert (=> b!78015 (= e!42192 (And!109 lt!17652 lt!17662))))

(declare-fun b!78016 () Bool)

(assert (=> b!78016 (= e!42183 e!42192)))

(declare-fun c!19638 () Bool)

(declare-fun lt!17659 () Bool)

(assert (=> b!78016 (= c!19638 lt!17659)))

(declare-fun e!42184 () Formula!105)

(assert (=> b!78016 (= lt!17662 e!42184)))

(declare-fun c!19629 () Bool)

(assert (=> b!78016 (= c!19629 (or lt!17659 (and (is-Not!109 (rhs!1430 formula!94)) (is-Implies!109 (f!4755 (rhs!1430 formula!94))))))))

(assert (=> b!78016 (= lt!17652 e!42189)))

(declare-fun c!19635 () Bool)

(assert (=> b!78016 (= c!19635 (or lt!17659 (and (is-Not!109 (rhs!1430 formula!94)) (is-Implies!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Not!109 (f!4755 (rhs!1430 formula!94))))))))

(assert (=> b!78016 (= lt!17659 (and (is-Not!109 (rhs!1430 formula!94)) (is-Or!109 (f!4755 (rhs!1430 formula!94)))))))

(declare-fun b!78017 () Bool)

(declare-fun e!42186 () Formula!105)

(declare-fun e!42178 () Formula!105)

(assert (=> b!78017 (= e!42186 e!42178)))

(declare-fun c!19626 () Bool)

(declare-fun lt!17654 () Bool)

(assert (=> b!78017 (= c!19626 lt!17654)))

(declare-fun lt!17655 () Formula!105)

(declare-fun e!42179 () Formula!105)

(assert (=> b!78017 (= lt!17655 e!42179)))

(declare-fun c!19637 () Bool)

(assert (=> b!78017 (= c!19637 (or lt!17654 (is-Implies!109 (rhs!1430 formula!94)) (and (is-Not!109 (rhs!1430 formula!94)) (is-And!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Or!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Implies!109 (f!4755 (rhs!1430 formula!94))))))))

(declare-fun lt!17649 () Formula!105)

(assert (=> b!78017 (= lt!17649 e!42190)))

(declare-fun c!19627 () Bool)

(assert (=> b!78017 (= c!19627 (or lt!17654 (is-Implies!109 (rhs!1430 formula!94)) (and (is-Not!109 (rhs!1430 formula!94)) (is-And!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Or!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Implies!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Not!109 (f!4755 (rhs!1430 formula!94))))))))

(assert (=> b!78017 (= lt!17654 (is-Or!109 (rhs!1430 formula!94)))))

(declare-fun b!78018 () Bool)

(declare-fun e!42180 () Formula!105)

(declare-fun lt!17653 () Bool)

(assert (=> b!78018 (= e!42180 (nnf!0 (ite lt!17653 (rhs!1429 (rhs!1430 formula!94)) (ite (is-Or!109 (rhs!1430 formula!94)) (rhs!1430 (rhs!1430 formula!94)) (ite (is-Implies!109 (rhs!1430 formula!94)) (rhs!1428 (rhs!1430 formula!94)) (ite (and (is-Not!109 (rhs!1430 formula!94)) (is-And!109 (f!4755 (rhs!1430 formula!94)))) (Not!109 (rhs!1429 (f!4755 (rhs!1430 formula!94)))) (ite (and (is-Not!109 (rhs!1430 formula!94)) (is-Or!109 (f!4755 (rhs!1430 formula!94)))) (Not!109 (rhs!1430 (f!4755 (rhs!1430 formula!94)))) (Not!109 (rhs!1428 (f!4755 (rhs!1430 formula!94)))))))))))))

(declare-fun b!78019 () Bool)

(declare-fun res!39189 () Formula!105)

(assert (=> b!78019 (= e!42193 res!39189)))

(assert (=> b!78019 true))

(declare-fun b!78020 () Bool)

(declare-fun lt!17660 () Formula!105)

(assert (=> b!78020 (= e!42186 (And!109 lt!17665 lt!17660))))

(declare-fun b!78021 () Bool)

(declare-fun res!39192 () Formula!105)

(assert (=> b!78021 (= e!42191 res!39192)))

(assert (=> b!78021 true))

(declare-fun lt!17657 () Bool)

(declare-fun lt!17656 () Formula!105)

(declare-fun b!78022 () Bool)

(assert (=> b!78022 (= e!42192 (ite lt!17657 (And!109 lt!17656 lt!17662) (ite (and (is-Not!109 (rhs!1430 formula!94)) (is-Not!109 (f!4755 (rhs!1430 formula!94)))) lt!17656 (rhs!1430 formula!94))))))

(declare-fun e!42188 () Formula!105)

(assert (=> b!78022 (= lt!17656 e!42188)))

(declare-fun c!19632 () Bool)

(assert (=> b!78022 (= c!19632 (or lt!17657 (and (is-Not!109 (rhs!1430 formula!94)) (is-Not!109 (f!4755 (rhs!1430 formula!94))))))))

(assert (=> b!78022 (= lt!17657 (and (is-Not!109 (rhs!1430 formula!94)) (is-Implies!109 (f!4755 (rhs!1430 formula!94)))))))

(declare-fun b!78023 () Bool)

(assert (=> b!78023 (= e!42181 (nnf!0 (ite lt!17653 (lhs!1429 (rhs!1430 formula!94)) (ite (is-Or!109 (rhs!1430 formula!94)) (lhs!1430 (rhs!1430 formula!94)) (ite (is-Implies!109 (rhs!1430 formula!94)) (lhs!1428 (rhs!1430 formula!94)) (ite (and (is-Not!109 (rhs!1430 formula!94)) (is-And!109 (f!4755 (rhs!1430 formula!94)))) (Not!109 (lhs!1429 (f!4755 (rhs!1430 formula!94)))) (ite (and (is-Not!109 (rhs!1430 formula!94)) (is-Or!109 (f!4755 (rhs!1430 formula!94)))) (Not!109 (lhs!1430 (f!4755 (rhs!1430 formula!94)))) (ite (and (is-Not!109 (rhs!1430 formula!94)) (is-Implies!109 (f!4755 (rhs!1430 formula!94)))) (lhs!1428 (f!4755 (rhs!1430 formula!94))) (f!4755 (f!4755 (rhs!1430 formula!94)))))))))))))

(declare-fun d!54973 () Bool)

(declare-fun lt!17664 () Formula!105)

(assert (=> d!54973 (isNNF!0 lt!17664)))

(assert (=> d!54973 (= lt!17664 e!42186)))

(declare-fun c!19631 () Bool)

(assert (=> d!54973 (= c!19631 lt!17653)))

(assert (=> d!54973 (= lt!17660 e!42180)))

(declare-fun c!19636 () Bool)

(assert (=> d!54973 (= c!19636 (or lt!17653 (is-Or!109 (rhs!1430 formula!94)) (is-Implies!109 (rhs!1430 formula!94)) (and (is-Not!109 (rhs!1430 formula!94)) (is-And!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Or!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Implies!109 (f!4755 (rhs!1430 formula!94))))))))

(assert (=> d!54973 (= lt!17665 e!42181)))

(declare-fun c!19630 () Bool)

(assert (=> d!54973 (= c!19630 (or lt!17653 (is-Or!109 (rhs!1430 formula!94)) (is-Implies!109 (rhs!1430 formula!94)) (and (is-Not!109 (rhs!1430 formula!94)) (is-And!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Or!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Implies!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Not!109 (f!4755 (rhs!1430 formula!94))))))))

(assert (=> d!54973 (= lt!17653 (is-And!109 (rhs!1430 formula!94)))))

(assert (=> d!54973 (= (nnf!0 (rhs!1430 formula!94)) lt!17664)))

(declare-fun b!78024 () Bool)

(assert (=> b!78024 (= e!42178 e!42182)))

(declare-fun c!19633 () Bool)

(declare-fun lt!17650 () Bool)

(assert (=> b!78024 (= c!19633 lt!17650)))

(declare-fun lt!17658 () Formula!105)

(declare-fun e!42187 () Formula!105)

(assert (=> b!78024 (= lt!17658 e!42187)))

(declare-fun c!19628 () Bool)

(assert (=> b!78024 (= c!19628 (or lt!17650 (and (is-Not!109 (rhs!1430 formula!94)) (is-And!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Or!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Implies!109 (f!4755 (rhs!1430 formula!94))))))))

(declare-fun lt!17651 () Formula!105)

(declare-fun e!42185 () Formula!105)

(assert (=> b!78024 (= lt!17651 e!42185)))

(declare-fun c!19640 () Bool)

(assert (=> b!78024 (= c!19640 (or lt!17650 (and (is-Not!109 (rhs!1430 formula!94)) (is-And!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Or!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Implies!109 (f!4755 (rhs!1430 formula!94)))) (and (is-Not!109 (rhs!1430 formula!94)) (is-Not!109 (f!4755 (rhs!1430 formula!94))))))))

(assert (=> b!78024 (= lt!17650 (is-Implies!109 (rhs!1430 formula!94)))))

(declare-fun b!78025 () Bool)

(assert (=> b!78025 (= e!42183 (Or!109 lt!17663 lt!17661))))

(declare-fun b!78026 () Bool)

(assert (=> b!78026 (= e!42182 (Implies!109 lt!17651 lt!17658))))

(declare-fun b!78027 () Bool)

(declare-fun res!39193 () Formula!105)

(assert (=> b!78027 (= e!42190 res!39193)))

(assert (=> b!78027 true))

(declare-fun b!78028 () Bool)

(assert (=> b!78028 (= e!42185 lt!17649)))

(declare-fun b!78029 () Bool)

(declare-fun res!39186 () Formula!105)

(assert (=> b!78029 (= e!42188 res!39186)))

(assert (=> b!78029 true))

(assert (=> b!78029 true))

(declare-fun b!78030 () Bool)

(assert (=> b!78030 (= e!42191 lt!17658)))

(declare-fun b!78031 () Bool)

(assert (=> b!78031 (= e!42184 lt!17661)))

(declare-fun b!78032 () Bool)

(declare-fun res!39185 () Formula!105)

(assert (=> b!78032 (= e!42185 res!39185)))

(assert (=> b!78032 true))

(declare-fun b!78033 () Bool)

(assert (=> b!78033 (= e!42188 lt!17652)))

(declare-fun b!78034 () Bool)

(declare-fun res!39187 () Formula!105)

(assert (=> b!78034 (= e!42180 res!39187)))

(assert (=> b!78034 true))

(declare-fun b!78035 () Bool)

(assert (=> b!78035 (= e!42193 lt!17651)))

(declare-fun b!78036 () Bool)

(assert (=> b!78036 (= e!42179 lt!17660)))

(declare-fun b!78037 () Bool)

(declare-fun res!39188 () Formula!105)

(assert (=> b!78037 (= e!42179 res!39188)))

(assert (=> b!78037 true))

(declare-fun b!78038 () Bool)

(assert (=> b!78038 (= e!42187 lt!17655)))

(declare-fun b!78039 () Bool)

(declare-fun res!39184 () Formula!105)

(assert (=> b!78039 (= e!42187 res!39184)))

(assert (=> b!78039 true))

(declare-fun b!78040 () Bool)

(assert (=> b!78040 (= e!42178 (Or!109 lt!17649 lt!17655))))

(declare-fun b!78041 () Bool)

(assert (=> b!78041 (= e!42189 lt!17663)))

(declare-fun b!78042 () Bool)

(declare-fun res!39190 () Formula!105)

(assert (=> b!78042 (= e!42184 res!39190)))

(assert (=> b!78042 true))

(assert (= (and d!54973 c!19630) b!78023))

(assert (= (and d!54973 (not c!19630)) b!78014))

(assert (= (and d!54973 c!19636) b!78018))

(assert (= (and d!54973 (not c!19636)) b!78034))

(assert (= (and b!78017 c!19627) b!78012))

(assert (= (and b!78017 (not c!19627)) b!78027))

(assert (= (and b!78017 c!19637) b!78036))

(assert (= (and b!78017 (not c!19637)) b!78037))

(assert (= (and b!78024 c!19640) b!78028))

(assert (= (and b!78024 (not c!19640)) b!78032))

(assert (= (and b!78024 c!19628) b!78038))

(assert (= (and b!78024 (not c!19628)) b!78039))

(assert (= (and b!78013 c!19634) b!78035))

(assert (= (and b!78013 (not c!19634)) b!78019))

(assert (= (and b!78013 c!19641) b!78030))

(assert (= (and b!78013 (not c!19641)) b!78021))

(assert (= (and b!78016 c!19635) b!78041))

(assert (= (and b!78016 (not c!19635)) b!78011))

(assert (= (and b!78016 c!19629) b!78031))

(assert (= (and b!78016 (not c!19629)) b!78042))

(assert (= (and b!78022 c!19632) b!78033))

(assert (= (and b!78022 (not c!19632)) b!78029))

(assert (= (and b!78016 c!19638) b!78015))

(assert (= (and b!78016 (not c!19638)) b!78022))

(assert (= (and b!78013 c!19639) b!78025))

(assert (= (and b!78013 (not c!19639)) b!78016))

(assert (= (and b!78024 c!19633) b!78026))

(assert (= (and b!78024 (not c!19633)) b!78013))

(assert (= (and b!78017 c!19626) b!78040))

(assert (= (and b!78017 (not c!19626)) b!78024))

(assert (= (and d!54973 c!19631) b!78020))

(assert (= (and d!54973 (not c!19631)) b!78017))

(declare-fun m!73534 () Bool)

(assert (=> b!78018 m!73534))

(declare-fun m!73536 () Bool)

(assert (=> b!78023 m!73536))

(declare-fun m!73538 () Bool)

(assert (=> d!54973 m!73538))

(assert (=> b!77841 d!54973))

(push 1)

(assert (not d!54971))

(assert (not d!54973))

(assert (not b!78018))

(assert (not b!77913))

(assert (not b!77914))

(assert (not b!77986))

(assert (not b!77991))

(assert (not b!78023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


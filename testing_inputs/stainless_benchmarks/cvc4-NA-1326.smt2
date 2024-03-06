; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9322 () Bool)

(assert start!9322)

(declare-fun b!66695 () Bool)

(declare-fun res!31732 () Bool)

(declare-fun e!36128 () Bool)

(assert (=> b!66695 (=> (not res!31732) (not e!36128))))

(declare-datatypes () ((Formula!27 (And!32 (lhs!884 Formula!27) (rhs!884 Formula!27)) (Literal!26 (id!4807 Int)) (Implies!32 (lhs!885 Formula!27) (rhs!885 Formula!27)) (Or!32 (lhs!886 Formula!27) (rhs!886 Formula!27)) (Not!32 (f!4135 Formula!27)))))

(declare-fun f!3747 () Formula!27)

(declare-fun f!3724 () Formula!27)

(assert (=> b!66695 (= res!31732 (= f!3747 (lhs!885 f!3724)))))

(declare-fun b!66693 () Bool)

(declare-fun res!31729 () Bool)

(assert (=> b!66693 (=> (not res!31729) (not e!36128))))

(assert (=> b!66693 (= res!31729 (and (not (is-And!32 f!3724)) (not (is-Literal!26 f!3724)) (is-Implies!32 f!3724)))))

(declare-fun res!31730 () Bool)

(assert (=> start!9322 (=> (not res!31730) (not e!36128))))

(declare-fun isNNF!1 (Formula!27) Bool)

(assert (=> start!9322 (= res!31730 (isNNF!1 f!3724))))

(assert (=> start!9322 e!36128))

(assert (=> start!9322 true))

(declare-fun b!66694 () Bool)

(declare-fun res!31731 () Bool)

(assert (=> b!66694 (=> (not res!31731) (not e!36128))))

(declare-fun inductVal!268 () Bool)

(declare-fun simplifyPreservesNNF!0 (Formula!27) Bool)

(assert (=> b!66694 (= res!31731 (= inductVal!268 (simplifyPreservesNNF!0 (rhs!885 f!3724))))))

(declare-fun b!66696 () Bool)

(assert (=> b!66696 (= e!36128 (not (isNNF!1 f!3747)))))

(assert (= (and start!9322 res!31730) b!66693))

(assert (= (and b!66693 res!31729) b!66694))

(assert (= (and b!66694 res!31731) b!66695))

(assert (= (and b!66695 res!31732) b!66696))

(declare-fun m!69725 () Bool)

(assert (=> start!9322 m!69725))

(declare-fun m!69727 () Bool)

(assert (=> b!66694 m!69727))

(declare-fun m!69729 () Bool)

(assert (=> b!66696 m!69729))

(push 1)

(assert (not b!66694))

(assert (not b!66696))

(assert (not start!9322))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!66729 () Bool)

(declare-fun e!36146 () Bool)

(declare-fun res!31774 () Bool)

(assert (=> b!66729 (= e!36146 res!31774)))

(assert (=> b!66729 true))

(assert (=> b!66729 true))

(declare-fun d!53434 () Bool)

(declare-fun e!36148 () Bool)

(assert (=> d!53434 e!36148))

(declare-fun c!15209 () Bool)

(declare-fun lt!13136 () Bool)

(assert (=> d!53434 (= c!15209 (or lt!13136 (is-Literal!26 (rhs!885 f!3724))))))

(declare-fun lt!13138 () Formula!27)

(declare-fun e!36145 () Formula!27)

(assert (=> d!53434 (= lt!13138 e!36145)))

(declare-fun c!15210 () Bool)

(assert (=> d!53434 (= c!15210 (or lt!13136 (is-Literal!26 (rhs!885 f!3724))))))

(declare-fun lt!13137 () Bool)

(declare-fun e!36147 () Bool)

(assert (=> d!53434 (= lt!13137 e!36147)))

(declare-fun c!15208 () Bool)

(assert (=> d!53434 (= c!15208 (or lt!13136 (and (not (is-Literal!26 (rhs!885 f!3724))) (or (is-Implies!32 (rhs!885 f!3724)) (is-Or!32 (rhs!885 f!3724))))))))

(declare-fun lt!13134 () Bool)

(declare-fun e!36149 () Bool)

(assert (=> d!53434 (= lt!13134 e!36149)))

(declare-fun c!15212 () Bool)

(assert (=> d!53434 (= c!15212 (or lt!13136 (not (is-Literal!26 (rhs!885 f!3724)))))))

(assert (=> d!53434 (= lt!13136 (is-And!32 (rhs!885 f!3724)))))

(assert (=> d!53434 (isNNF!1 (rhs!885 f!3724))))

(assert (=> d!53434 (= (simplifyPreservesNNF!0 (rhs!885 f!3724)) true)))

(declare-fun b!66730 () Bool)

(declare-fun e!36150 () Bool)

(declare-fun res!31777 () Bool)

(assert (=> b!66730 (= e!36150 res!31777)))

(assert (=> b!66730 true))

(declare-fun b!66731 () Bool)

(assert (=> b!66731 (= e!36148 e!36150)))

(declare-fun c!15215 () Bool)

(assert (=> b!66731 (= c!15215 (or lt!13136 (and (not lt!13136) (is-Literal!26 (rhs!885 f!3724)))))))

(declare-fun b!66732 () Bool)

(declare-fun e!36152 () Bool)

(declare-fun simplify!1 (Formula!27) Formula!27)

(assert (=> b!66732 (= e!36152 (isNNF!1 (simplify!1 (rhs!885 f!3724))))))

(declare-fun b!66733 () Bool)

(assert (=> b!66733 (= e!36148 e!36152)))

(declare-fun c!15211 () Bool)

(declare-fun lt!13133 () Bool)

(assert (=> b!66733 (= c!15211 (or lt!13133 (is-Or!32 (rhs!885 f!3724))))))

(declare-fun lt!13135 () Formula!27)

(declare-fun e!36151 () Formula!27)

(assert (=> b!66733 (= lt!13135 e!36151)))

(declare-fun c!15214 () Bool)

(assert (=> b!66733 (= c!15214 (or lt!13133 (is-Or!32 (rhs!885 f!3724))))))

(assert (=> b!66733 (= lt!13133 (is-Implies!32 (rhs!885 f!3724)))))

(declare-fun b!66734 () Bool)

(declare-fun res!31772 () Bool)

(assert (=> b!66734 (= e!36149 res!31772)))

(assert (=> b!66734 true))

(declare-fun b!66735 () Bool)

(assert (=> b!66735 (= e!36147 (simplifyPreservesNNF!0 (ite lt!13136 (lhs!884 (rhs!885 f!3724)) (ite (is-Implies!32 (rhs!885 f!3724)) (lhs!885 (rhs!885 f!3724)) (lhs!886 (rhs!885 f!3724))))))))

(declare-fun b!66736 () Bool)

(declare-fun res!31775 () Formula!27)

(assert (=> b!66736 (= e!36151 res!31775)))

(assert (=> b!66736 true))

(declare-fun b!66737 () Bool)

(assert (=> b!66737 (= e!36149 (simplifyPreservesNNF!0 (ite lt!13136 (rhs!884 (rhs!885 f!3724)) (ite (is-Implies!32 (rhs!885 f!3724)) (rhs!885 (rhs!885 f!3724)) (ite (is-Or!32 (rhs!885 f!3724)) (rhs!886 (rhs!885 f!3724)) (f!4135 (rhs!885 f!3724)))))))))

(declare-fun b!66738 () Bool)

(assert (=> b!66738 (= e!36152 e!36146)))

(declare-fun c!15213 () Bool)

(assert (=> b!66738 (= c!15213 (or lt!13133 (and (not lt!13133) (is-Or!32 (rhs!885 f!3724)))))))

(declare-fun b!66739 () Bool)

(assert (=> b!66739 (= e!36151 (simplify!1 (rhs!885 f!3724)))))

(declare-fun b!66740 () Bool)

(declare-fun res!31776 () Formula!27)

(assert (=> b!66740 (= e!36145 res!31776)))

(assert (=> b!66740 true))

(declare-fun b!66741 () Bool)

(declare-fun res!31773 () Bool)

(assert (=> b!66741 (= e!36147 res!31773)))

(assert (=> b!66741 true))

(declare-fun b!66742 () Bool)

(assert (=> b!66742 (= e!36146 (isNNF!1 lt!13135))))

(declare-fun b!66743 () Bool)

(assert (=> b!66743 (= e!36145 (simplify!1 (rhs!885 f!3724)))))

(declare-fun b!66744 () Bool)

(assert (=> b!66744 (= e!36150 (isNNF!1 lt!13138))))

(assert (= (and d!53434 c!15212) b!66737))

(assert (= (and d!53434 (not c!15212)) b!66734))

(assert (= (and d!53434 c!15208) b!66735))

(assert (= (and d!53434 (not c!15208)) b!66741))

(assert (= (and d!53434 c!15210) b!66743))

(assert (= (and d!53434 (not c!15210)) b!66740))

(assert (= (and b!66731 c!15215) b!66744))

(assert (= (and b!66731 (not c!15215)) b!66730))

(assert (= (and b!66733 c!15214) b!66739))

(assert (= (and b!66733 (not c!15214)) b!66736))

(assert (= (and b!66738 c!15213) b!66742))

(assert (= (and b!66738 (not c!15213)) b!66729))

(assert (= (and b!66733 c!15211) b!66738))

(assert (= (and b!66733 (not c!15211)) b!66732))

(assert (= (and d!53434 c!15209) b!66731))

(assert (= (and d!53434 (not c!15209)) b!66733))

(declare-fun m!69731 () Bool)

(assert (=> b!66742 m!69731))

(declare-fun m!69733 () Bool)

(assert (=> b!66732 m!69733))

(assert (=> b!66732 m!69733))

(declare-fun m!69735 () Bool)

(assert (=> b!66732 m!69735))

(declare-fun m!69737 () Bool)

(assert (=> b!66737 m!69737))

(declare-fun m!69739 () Bool)

(assert (=> b!66735 m!69739))

(assert (=> b!66739 m!69733))

(declare-fun m!69741 () Bool)

(assert (=> d!53434 m!69741))

(declare-fun m!69743 () Bool)

(assert (=> b!66744 m!69743))

(assert (=> b!66743 m!69733))

(assert (=> b!66694 d!53434))

(declare-fun b!66759 () Bool)

(declare-fun e!36163 () Bool)

(assert (=> b!66759 (= e!36163 (and (not (is-Implies!32 f!3747)) (or (and (is-Not!32 f!3747) (is-Literal!26 (f!4135 f!3747))) (not (is-Not!32 f!3747)))))))

(declare-fun b!66760 () Bool)

(declare-fun e!36164 () Bool)

(declare-fun lt!13147 () Bool)

(assert (=> b!66760 (= e!36164 (isNNF!1 (ite lt!13147 (lhs!884 f!3747) (lhs!886 f!3747))))))

(declare-fun d!53436 () Bool)

(declare-fun c!15223 () Bool)

(assert (=> d!53436 (= c!15223 (or lt!13147 (is-Or!32 f!3747)))))

(declare-fun lt!13146 () Bool)

(declare-fun lt!13145 () Bool)

(assert (=> d!53436 (= lt!13146 (and lt!13147 lt!13145))))

(assert (=> d!53436 (= lt!13145 e!36164)))

(declare-fun c!15222 () Bool)

(assert (=> d!53436 (= c!15222 (or lt!13147 (is-Or!32 f!3747)))))

(assert (=> d!53436 (= lt!13147 (is-And!32 f!3747))))

(assert (=> d!53436 (= (isNNF!1 f!3747) e!36163)))

(declare-fun b!66761 () Bool)

(declare-fun e!36162 () Bool)

(declare-fun e!36161 () Bool)

(assert (=> b!66761 (= e!36162 e!36161)))

(declare-fun c!15224 () Bool)

(assert (=> b!66761 (= c!15224 (or lt!13146 (and (not lt!13147) (is-Or!32 f!3747) lt!13145)))))

(declare-fun b!66762 () Bool)

(assert (=> b!66762 (= e!36163 e!36162)))

(declare-fun res!31791 () Bool)

(assert (=> b!66762 (=> (not res!31791) (not e!36162))))

(assert (=> b!66762 (= res!31791 lt!13145)))

(declare-fun b!66763 () Bool)

(declare-fun res!31790 () Bool)

(assert (=> b!66763 (= e!36164 res!31790)))

(assert (=> b!66763 true))

(declare-fun b!66764 () Bool)

(declare-fun res!31792 () Bool)

(assert (=> b!66764 (= e!36161 res!31792)))

(assert (=> b!66764 true))

(assert (=> b!66764 true))

(declare-fun b!66765 () Bool)

(assert (=> b!66765 (= e!36161 (isNNF!1 (ite lt!13146 (rhs!884 f!3747) (rhs!886 f!3747))))))

(assert (= (and d!53436 c!15222) b!66760))

(assert (= (and d!53436 (not c!15222)) b!66763))

(assert (= (and b!66762 res!31791) b!66761))

(assert (= (and b!66761 c!15224) b!66765))

(assert (= (and b!66761 (not c!15224)) b!66764))

(assert (= (and d!53436 c!15223) b!66762))

(assert (= (and d!53436 (not c!15223)) b!66759))

(declare-fun m!69745 () Bool)

(assert (=> b!66760 m!69745))

(declare-fun m!69747 () Bool)

(assert (=> b!66765 m!69747))

(assert (=> b!66696 d!53436))

(declare-fun b!66766 () Bool)

(declare-fun e!36167 () Bool)

(assert (=> b!66766 (= e!36167 (and (not (is-Implies!32 f!3724)) (or (and (is-Not!32 f!3724) (is-Literal!26 (f!4135 f!3724))) (not (is-Not!32 f!3724)))))))

(declare-fun b!66767 () Bool)

(declare-fun e!36168 () Bool)

(declare-fun lt!13150 () Bool)

(assert (=> b!66767 (= e!36168 (isNNF!1 (ite lt!13150 (lhs!884 f!3724) (lhs!886 f!3724))))))

(declare-fun d!53438 () Bool)

(declare-fun c!15226 () Bool)

(assert (=> d!53438 (= c!15226 (or lt!13150 (is-Or!32 f!3724)))))

(declare-fun lt!13149 () Bool)

(declare-fun lt!13148 () Bool)

(assert (=> d!53438 (= lt!13149 (and lt!13150 lt!13148))))

(assert (=> d!53438 (= lt!13148 e!36168)))

(declare-fun c!15225 () Bool)

(assert (=> d!53438 (= c!15225 (or lt!13150 (is-Or!32 f!3724)))))

(assert (=> d!53438 (= lt!13150 (is-And!32 f!3724))))

(assert (=> d!53438 (= (isNNF!1 f!3724) e!36167)))

(declare-fun b!66768 () Bool)

(declare-fun e!36166 () Bool)

(declare-fun e!36165 () Bool)

(assert (=> b!66768 (= e!36166 e!36165)))

(declare-fun c!15227 () Bool)

(assert (=> b!66768 (= c!15227 (or lt!13149 (and (not lt!13150) (is-Or!32 f!3724) lt!13148)))))

(declare-fun b!66769 () Bool)

(assert (=> b!66769 (= e!36167 e!36166)))

(declare-fun res!31794 () Bool)

(assert (=> b!66769 (=> (not res!31794) (not e!36166))))

(assert (=> b!66769 (= res!31794 lt!13148)))

(declare-fun b!66770 () Bool)

(declare-fun res!31793 () Bool)

(assert (=> b!66770 (= e!36168 res!31793)))

(assert (=> b!66770 true))

(declare-fun b!66771 () Bool)

(declare-fun res!31795 () Bool)

(assert (=> b!66771 (= e!36165 res!31795)))

(assert (=> b!66771 true))

(assert (=> b!66771 true))

(declare-fun b!66772 () Bool)

(assert (=> b!66772 (= e!36165 (isNNF!1 (ite lt!13149 (rhs!884 f!3724) (rhs!886 f!3724))))))

(assert (= (and d!53438 c!15225) b!66767))

(assert (= (and d!53438 (not c!15225)) b!66770))

(assert (= (and b!66769 res!31794) b!66768))

(assert (= (and b!66768 c!15227) b!66772))

(assert (= (and b!66768 (not c!15227)) b!66771))

(assert (= (and d!53438 c!15226) b!66769))

(assert (= (and d!53438 (not c!15226)) b!66766))

(declare-fun m!69749 () Bool)

(assert (=> b!66767 m!69749))

(declare-fun m!69751 () Bool)

(assert (=> b!66772 m!69751))

(assert (=> start!9322 d!53438))

(push 1)

(assert (not b!66735))

(assert (not b!66739))

(assert (not b!66760))

(assert (not b!66743))

(assert (not d!53434))

(assert (not b!66772))

(assert (not b!66765))

(assert (not b!66742))

(assert (not b!66744))

(assert (not b!66767))

(assert (not b!66732))

(assert (not b!66737))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


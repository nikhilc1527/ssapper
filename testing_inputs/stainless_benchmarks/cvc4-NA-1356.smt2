; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9506 () Bool)

(assert start!9506)

(declare-fun res!34199 () Bool)

(declare-fun e!37916 () Bool)

(assert (=> start!9506 (=> (not res!34199) (not e!37916))))

(declare-datatypes () ((Formula!56 (And!61 (lhs!971 Formula!56) (rhs!971 Formula!56)) (Literal!55 (id!4836 Int)) (Implies!61 (lhs!972 Formula!56) (rhs!972 Formula!56)) (Or!61 (lhs!973 Formula!56) (rhs!973 Formula!56)) (Not!61 (f!4221 Formula!56)))))

(declare-fun formula!50 () Formula!56)

(assert (=> start!9506 (= res!34199 (and (not (is-And!61 formula!50)) (not (is-Or!61 formula!50)) (not (is-Implies!61 formula!50)) (or (not (is-Not!61 formula!50)) (not (is-And!61 (f!4221 formula!50)))) (or (not (is-Not!61 formula!50)) (not (is-Or!61 (f!4221 formula!50)))) (is-Not!61 formula!50) (is-Implies!61 (f!4221 formula!50))))))

(assert (=> start!9506 e!37916))

(assert (=> start!9506 true))

(declare-fun b!70088 () Bool)

(declare-fun res!34200 () Bool)

(assert (=> b!70088 (=> (not res!34200) (not e!37916))))

(declare-fun x$2!372 () Formula!56)

(declare-fun nnf!1 (Formula!56) Formula!56)

(assert (=> b!70088 (= res!34200 (= x$2!372 (And!61 (nnf!1 (lhs!972 (f!4221 formula!50))) (nnf!1 (Not!61 (rhs!972 (f!4221 formula!50)))))))))

(declare-fun b!70089 () Bool)

(declare-fun isNNF!1 (Formula!56) Bool)

(assert (=> b!70089 (= e!37916 (not (isNNF!1 x$2!372)))))

(assert (= (and start!9506 res!34199) b!70088))

(assert (= (and b!70088 res!34200) b!70089))

(declare-fun m!70557 () Bool)

(assert (=> b!70088 m!70557))

(declare-fun m!70559 () Bool)

(assert (=> b!70088 m!70559))

(declare-fun m!70561 () Bool)

(assert (=> b!70089 m!70561))

(push 1)

(assert (not b!70088))

(assert (not b!70089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!70150 () Bool)

(declare-fun e!37957 () Formula!56)

(declare-fun e!37954 () Formula!56)

(assert (=> b!70150 (= e!37957 e!37954)))

(declare-fun c!16681 () Bool)

(declare-fun lt!14844 () Bool)

(assert (=> b!70150 (= c!16681 lt!14844)))

(declare-fun lt!14839 () Formula!56)

(declare-fun e!37956 () Formula!56)

(assert (=> b!70150 (= lt!14839 e!37956)))

(declare-fun c!16679 () Bool)

(assert (=> b!70150 (= c!16679 (or lt!14844 (and (not (is-Implies!61 (lhs!972 (f!4221 formula!50)))) (or (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-And!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Or!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Implies!61 (f!4221 (lhs!972 (f!4221 formula!50)))))))))))

(declare-fun lt!14848 () Formula!56)

(declare-fun e!37947 () Formula!56)

(assert (=> b!70150 (= lt!14848 e!37947)))

(declare-fun c!16686 () Bool)

(assert (=> b!70150 (= c!16686 (or lt!14844 (is-Implies!61 (lhs!972 (f!4221 formula!50))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-And!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Or!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Implies!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Not!61 (f!4221 (lhs!972 (f!4221 formula!50)))))))))

(assert (=> b!70150 (= lt!14844 (is-Or!61 (lhs!972 (f!4221 formula!50))))))

(declare-fun b!70151 () Bool)

(declare-fun e!37958 () Formula!56)

(declare-fun lt!14841 () Bool)

(assert (=> b!70151 (= e!37958 (nnf!1 (ite lt!14841 (lhs!971 (lhs!972 (f!4221 formula!50))) (ite (is-Or!61 (lhs!972 (f!4221 formula!50))) (lhs!973 (lhs!972 (f!4221 formula!50))) (ite (is-Implies!61 (lhs!972 (f!4221 formula!50))) (Or!61 (Not!61 (lhs!972 (lhs!972 (f!4221 formula!50)))) (rhs!972 (lhs!972 (f!4221 formula!50)))) (ite (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-And!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (Not!61 (lhs!971 (f!4221 (lhs!972 (f!4221 formula!50))))) (ite (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Or!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (Not!61 (lhs!973 (f!4221 (lhs!972 (f!4221 formula!50))))) (ite (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Implies!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (lhs!972 (f!4221 (lhs!972 (f!4221 formula!50)))) (f!4221 (f!4221 (lhs!972 (f!4221 formula!50))))))))))))))

(declare-fun b!70152 () Bool)

(declare-fun e!37951 () Formula!56)

(assert (=> b!70152 (= e!37951 lt!14839)))

(declare-fun b!70153 () Bool)

(declare-fun e!37952 () Formula!56)

(assert (=> b!70153 (= e!37952 (nnf!1 (ite lt!14841 (rhs!971 (lhs!972 (f!4221 formula!50))) (ite (is-Or!61 (lhs!972 (f!4221 formula!50))) (rhs!973 (lhs!972 (f!4221 formula!50))) (ite (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-And!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (Not!61 (rhs!971 (f!4221 (lhs!972 (f!4221 formula!50))))) (ite (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Or!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (Not!61 (rhs!973 (f!4221 (lhs!972 (f!4221 formula!50))))) (Not!61 (rhs!972 (f!4221 (lhs!972 (f!4221 formula!50)))))))))))))

(declare-fun b!70154 () Bool)

(declare-fun e!37959 () Formula!56)

(declare-fun lt!14849 () Formula!56)

(assert (=> b!70154 (= e!37959 lt!14849)))

(declare-fun b!70155 () Bool)

(declare-fun e!37950 () Formula!56)

(declare-fun lt!14845 () Formula!56)

(declare-fun lt!14836 () Formula!56)

(assert (=> b!70155 (= e!37950 (And!61 lt!14845 lt!14836))))

(declare-fun b!70156 () Bool)

(declare-fun e!37960 () Formula!56)

(assert (=> b!70156 (= e!37960 e!37950)))

(declare-fun c!16690 () Bool)

(declare-fun lt!14850 () Bool)

(assert (=> b!70156 (= c!16690 lt!14850)))

(assert (=> b!70156 (= lt!14836 e!37959)))

(declare-fun c!16687 () Bool)

(assert (=> b!70156 (= c!16687 (or lt!14850 (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Implies!61 (f!4221 (lhs!972 (f!4221 formula!50)))))))))

(declare-fun e!37955 () Formula!56)

(assert (=> b!70156 (= lt!14845 e!37955)))

(declare-fun c!16680 () Bool)

(assert (=> b!70156 (= c!16680 (or lt!14850 (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Implies!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Not!61 (f!4221 (lhs!972 (f!4221 formula!50)))))))))

(assert (=> b!70156 (= lt!14850 (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Or!61 (f!4221 (lhs!972 (f!4221 formula!50))))))))

(declare-fun d!53654 () Bool)

(declare-fun lt!14846 () Formula!56)

(assert (=> d!53654 (isNNF!1 lt!14846)))

(assert (=> d!53654 (= lt!14846 e!37957)))

(declare-fun c!16677 () Bool)

(assert (=> d!53654 (= c!16677 lt!14841)))

(declare-fun lt!14837 () Formula!56)

(assert (=> d!53654 (= lt!14837 e!37952)))

(declare-fun c!16691 () Bool)

(assert (=> d!53654 (= c!16691 (or lt!14841 (is-Or!61 (lhs!972 (f!4221 formula!50))) (and (not (is-Implies!61 (lhs!972 (f!4221 formula!50)))) (or (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-And!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Or!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Implies!61 (f!4221 (lhs!972 (f!4221 formula!50)))))))))))

(declare-fun lt!14851 () Formula!56)

(assert (=> d!53654 (= lt!14851 e!37958)))

(declare-fun c!16683 () Bool)

(assert (=> d!53654 (= c!16683 (or lt!14841 (is-Or!61 (lhs!972 (f!4221 formula!50))) (is-Implies!61 (lhs!972 (f!4221 formula!50))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-And!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Or!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Implies!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Not!61 (f!4221 (lhs!972 (f!4221 formula!50)))))))))

(assert (=> d!53654 (= lt!14841 (is-And!61 (lhs!972 (f!4221 formula!50))))))

(assert (=> d!53654 (= (nnf!1 (lhs!972 (f!4221 formula!50))) lt!14846)))

(declare-fun b!70157 () Bool)

(declare-fun e!37953 () Formula!56)

(assert (=> b!70157 (= e!37953 lt!14848)))

(declare-fun b!70158 () Bool)

(declare-fun res!34253 () Formula!56)

(assert (=> b!70158 (= e!37956 res!34253)))

(assert (=> b!70158 true))

(declare-fun b!70159 () Bool)

(assert (=> b!70159 (= e!37947 lt!14851)))

(declare-fun b!70160 () Bool)

(declare-fun res!34254 () Formula!56)

(assert (=> b!70160 (= e!37959 res!34254)))

(assert (=> b!70160 true))

(declare-fun b!70161 () Bool)

(assert (=> b!70161 (= e!37956 lt!14837)))

(declare-fun b!70162 () Bool)

(declare-fun res!34260 () Formula!56)

(assert (=> b!70162 (= e!37955 res!34260)))

(assert (=> b!70162 true))

(declare-fun b!70163 () Bool)

(declare-fun res!34252 () Formula!56)

(assert (=> b!70163 (= e!37947 res!34252)))

(assert (=> b!70163 true))

(declare-fun b!70164 () Bool)

(declare-fun res!34258 () Formula!56)

(assert (=> b!70164 (= e!37958 res!34258)))

(assert (=> b!70164 true))

(declare-fun b!70165 () Bool)

(declare-fun e!37949 () Formula!56)

(assert (=> b!70165 (= e!37954 e!37949)))

(declare-fun c!16682 () Bool)

(declare-fun lt!14838 () Bool)

(assert (=> b!70165 (= c!16682 lt!14838)))

(declare-fun lt!14847 () Formula!56)

(assert (=> b!70165 (= lt!14847 e!37953)))

(declare-fun c!16688 () Bool)

(assert (=> b!70165 (= c!16688 (or lt!14838 (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-And!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Or!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Implies!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Not!61 (f!4221 (lhs!972 (f!4221 formula!50)))))))))

(assert (=> b!70165 (= lt!14838 (is-Implies!61 (lhs!972 (f!4221 formula!50))))))

(declare-fun b!70166 () Bool)

(declare-fun e!37948 () Formula!56)

(declare-fun res!34251 () Formula!56)

(assert (=> b!70166 (= e!37948 res!34251)))

(assert (=> b!70166 true))

(assert (=> b!70166 true))

(declare-fun b!70167 () Bool)

(assert (=> b!70167 (= e!37949 lt!14847)))

(declare-fun b!70168 () Bool)

(declare-fun lt!14840 () Formula!56)

(assert (=> b!70168 (= e!37960 (Or!61 lt!14840 lt!14849))))

(declare-fun b!70169 () Bool)

(declare-fun e!37961 () Formula!56)

(declare-fun res!34256 () Formula!56)

(assert (=> b!70169 (= e!37961 res!34256)))

(assert (=> b!70169 true))

(declare-fun b!70170 () Bool)

(assert (=> b!70170 (= e!37961 lt!14847)))

(declare-fun b!70171 () Bool)

(declare-fun res!34259 () Formula!56)

(assert (=> b!70171 (= e!37953 res!34259)))

(assert (=> b!70171 true))

(declare-fun b!70172 () Bool)

(declare-fun res!34257 () Formula!56)

(assert (=> b!70172 (= e!37951 res!34257)))

(assert (=> b!70172 true))

(declare-fun b!70173 () Bool)

(declare-fun res!34255 () Formula!56)

(assert (=> b!70173 (= e!37952 res!34255)))

(assert (=> b!70173 true))

(declare-fun lt!14843 () Formula!56)

(declare-fun lt!14842 () Bool)

(declare-fun b!70174 () Bool)

(assert (=> b!70174 (= e!37950 (ite lt!14842 (And!61 lt!14843 lt!14836) (ite (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Not!61 (f!4221 (lhs!972 (f!4221 formula!50))))) lt!14843 (lhs!972 (f!4221 formula!50)))))))

(assert (=> b!70174 (= lt!14843 e!37948)))

(declare-fun c!16684 () Bool)

(assert (=> b!70174 (= c!16684 (or lt!14842 (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Not!61 (f!4221 (lhs!972 (f!4221 formula!50)))))))))

(assert (=> b!70174 (= lt!14842 (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Implies!61 (f!4221 (lhs!972 (f!4221 formula!50))))))))

(declare-fun b!70175 () Bool)

(assert (=> b!70175 (= e!37948 lt!14845)))

(declare-fun b!70176 () Bool)

(assert (=> b!70176 (= e!37955 lt!14840)))

(declare-fun b!70177 () Bool)

(assert (=> b!70177 (= e!37957 (And!61 lt!14851 lt!14837))))

(declare-fun b!70178 () Bool)

(assert (=> b!70178 (= e!37954 (Or!61 lt!14848 lt!14839))))

(declare-fun b!70179 () Bool)

(assert (=> b!70179 (= e!37949 e!37960)))

(declare-fun c!16685 () Bool)

(declare-fun lt!14852 () Bool)

(assert (=> b!70179 (= c!16685 lt!14852)))

(assert (=> b!70179 (= lt!14849 e!37951)))

(declare-fun c!16678 () Bool)

(assert (=> b!70179 (= c!16678 (or lt!14852 (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Or!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Implies!61 (f!4221 (lhs!972 (f!4221 formula!50)))))))))

(assert (=> b!70179 (= lt!14840 e!37961)))

(declare-fun c!16689 () Bool)

(assert (=> b!70179 (= c!16689 (or lt!14852 (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Or!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Implies!61 (f!4221 (lhs!972 (f!4221 formula!50))))) (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-Not!61 (f!4221 (lhs!972 (f!4221 formula!50)))))))))

(assert (=> b!70179 (= lt!14852 (and (is-Not!61 (lhs!972 (f!4221 formula!50))) (is-And!61 (f!4221 (lhs!972 (f!4221 formula!50))))))))

(assert (= (and d!53654 c!16683) b!70151))

(assert (= (and d!53654 (not c!16683)) b!70164))

(assert (= (and d!53654 c!16691) b!70153))

(assert (= (and d!53654 (not c!16691)) b!70173))

(assert (= (and b!70150 c!16686) b!70159))

(assert (= (and b!70150 (not c!16686)) b!70163))

(assert (= (and b!70150 c!16679) b!70161))

(assert (= (and b!70150 (not c!16679)) b!70158))

(assert (= (and b!70165 c!16688) b!70157))

(assert (= (and b!70165 (not c!16688)) b!70171))

(assert (= (and b!70179 c!16689) b!70170))

(assert (= (and b!70179 (not c!16689)) b!70169))

(assert (= (and b!70179 c!16678) b!70152))

(assert (= (and b!70179 (not c!16678)) b!70172))

(assert (= (and b!70156 c!16680) b!70176))

(assert (= (and b!70156 (not c!16680)) b!70162))

(assert (= (and b!70156 c!16687) b!70154))

(assert (= (and b!70156 (not c!16687)) b!70160))

(assert (= (and b!70174 c!16684) b!70175))

(assert (= (and b!70174 (not c!16684)) b!70166))

(assert (= (and b!70156 c!16690) b!70155))

(assert (= (and b!70156 (not c!16690)) b!70174))

(assert (= (and b!70179 c!16685) b!70168))

(assert (= (and b!70179 (not c!16685)) b!70156))

(assert (= (and b!70165 c!16682) b!70167))

(assert (= (and b!70165 (not c!16682)) b!70179))

(assert (= (and b!70150 c!16681) b!70178))

(assert (= (and b!70150 (not c!16681)) b!70165))

(assert (= (and d!53654 c!16677) b!70177))

(assert (= (and d!53654 (not c!16677)) b!70150))

(declare-fun m!70563 () Bool)

(assert (=> b!70151 m!70563))

(declare-fun m!70565 () Bool)

(assert (=> b!70153 m!70565))

(declare-fun m!70567 () Bool)

(assert (=> d!53654 m!70567))

(assert (=> b!70088 d!53654))

(declare-fun b!70180 () Bool)

(declare-fun e!37972 () Formula!56)

(declare-fun e!37969 () Formula!56)

(assert (=> b!70180 (= e!37972 e!37969)))

(declare-fun c!16696 () Bool)

(declare-fun lt!14861 () Bool)

(assert (=> b!70180 (= c!16696 lt!14861)))

(declare-fun lt!14856 () Formula!56)

(declare-fun e!37971 () Formula!56)

(assert (=> b!70180 (= lt!14856 e!37971)))

(declare-fun c!16694 () Bool)

(assert (=> b!70180 (= c!16694 (or lt!14861 (and (not (is-Implies!61 (Not!61 (rhs!972 (f!4221 formula!50))))) (or (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-And!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Or!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Implies!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50))))))))))))

(declare-fun lt!14865 () Formula!56)

(declare-fun e!37962 () Formula!56)

(assert (=> b!70180 (= lt!14865 e!37962)))

(declare-fun c!16701 () Bool)

(assert (=> b!70180 (= c!16701 (or lt!14861 (is-Implies!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-And!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Or!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Implies!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Not!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50))))))))))

(assert (=> b!70180 (= lt!14861 (is-Or!61 (Not!61 (rhs!972 (f!4221 formula!50)))))))

(declare-fun b!70181 () Bool)

(declare-fun e!37973 () Formula!56)

(declare-fun lt!14858 () Bool)

(assert (=> b!70181 (= e!37973 (nnf!1 (ite lt!14858 (lhs!971 (Not!61 (rhs!972 (f!4221 formula!50)))) (ite (is-Or!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (lhs!973 (Not!61 (rhs!972 (f!4221 formula!50)))) (ite (is-Implies!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (Or!61 (Not!61 (lhs!972 (Not!61 (rhs!972 (f!4221 formula!50))))) (rhs!972 (Not!61 (rhs!972 (f!4221 formula!50))))) (ite (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-And!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (Not!61 (lhs!971 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (ite (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Or!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (Not!61 (lhs!973 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (ite (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Implies!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (lhs!972 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50))))) (f!4221 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))))))))))))

(declare-fun b!70182 () Bool)

(declare-fun e!37966 () Formula!56)

(assert (=> b!70182 (= e!37966 lt!14856)))

(declare-fun b!70183 () Bool)

(declare-fun e!37967 () Formula!56)

(assert (=> b!70183 (= e!37967 (nnf!1 (ite lt!14858 (rhs!971 (Not!61 (rhs!972 (f!4221 formula!50)))) (ite (is-Or!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (rhs!973 (Not!61 (rhs!972 (f!4221 formula!50)))) (ite (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-And!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (Not!61 (rhs!971 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (ite (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Or!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (Not!61 (rhs!973 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (Not!61 (rhs!972 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50))))))))))))))

(declare-fun b!70184 () Bool)

(declare-fun e!37974 () Formula!56)

(declare-fun lt!14866 () Formula!56)

(assert (=> b!70184 (= e!37974 lt!14866)))

(declare-fun b!70185 () Bool)

(declare-fun e!37965 () Formula!56)

(declare-fun lt!14862 () Formula!56)

(declare-fun lt!14853 () Formula!56)

(assert (=> b!70185 (= e!37965 (And!61 lt!14862 lt!14853))))

(declare-fun b!70186 () Bool)

(declare-fun e!37975 () Formula!56)

(assert (=> b!70186 (= e!37975 e!37965)))

(declare-fun c!16705 () Bool)

(declare-fun lt!14867 () Bool)

(assert (=> b!70186 (= c!16705 lt!14867)))

(assert (=> b!70186 (= lt!14853 e!37974)))

(declare-fun c!16702 () Bool)

(assert (=> b!70186 (= c!16702 (or lt!14867 (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Implies!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50))))))))))

(declare-fun e!37970 () Formula!56)

(assert (=> b!70186 (= lt!14862 e!37970)))

(declare-fun c!16695 () Bool)

(assert (=> b!70186 (= c!16695 (or lt!14867 (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Implies!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Not!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50))))))))))

(assert (=> b!70186 (= lt!14867 (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Or!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))))))

(declare-fun d!53656 () Bool)

(declare-fun lt!14863 () Formula!56)

(assert (=> d!53656 (isNNF!1 lt!14863)))

(assert (=> d!53656 (= lt!14863 e!37972)))

(declare-fun c!16692 () Bool)

(assert (=> d!53656 (= c!16692 lt!14858)))

(declare-fun lt!14854 () Formula!56)

(assert (=> d!53656 (= lt!14854 e!37967)))

(declare-fun c!16706 () Bool)

(assert (=> d!53656 (= c!16706 (or lt!14858 (is-Or!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (and (not (is-Implies!61 (Not!61 (rhs!972 (f!4221 formula!50))))) (or (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-And!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Or!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Implies!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50))))))))))))

(declare-fun lt!14868 () Formula!56)

(assert (=> d!53656 (= lt!14868 e!37973)))

(declare-fun c!16698 () Bool)

(assert (=> d!53656 (= c!16698 (or lt!14858 (is-Or!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Implies!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-And!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Or!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Implies!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Not!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50))))))))))

(assert (=> d!53656 (= lt!14858 (is-And!61 (Not!61 (rhs!972 (f!4221 formula!50)))))))

(assert (=> d!53656 (= (nnf!1 (Not!61 (rhs!972 (f!4221 formula!50)))) lt!14863)))

(declare-fun b!70187 () Bool)

(declare-fun e!37968 () Formula!56)

(assert (=> b!70187 (= e!37968 lt!14865)))

(declare-fun b!70188 () Bool)

(declare-fun res!34263 () Formula!56)

(assert (=> b!70188 (= e!37971 res!34263)))

(assert (=> b!70188 true))

(declare-fun b!70189 () Bool)

(assert (=> b!70189 (= e!37962 lt!14868)))

(declare-fun b!70190 () Bool)

(declare-fun res!34264 () Formula!56)

(assert (=> b!70190 (= e!37974 res!34264)))

(assert (=> b!70190 true))

(declare-fun b!70191 () Bool)

(assert (=> b!70191 (= e!37971 lt!14854)))

(declare-fun b!70192 () Bool)

(declare-fun res!34270 () Formula!56)

(assert (=> b!70192 (= e!37970 res!34270)))

(assert (=> b!70192 true))

(declare-fun b!70193 () Bool)

(declare-fun res!34262 () Formula!56)

(assert (=> b!70193 (= e!37962 res!34262)))

(assert (=> b!70193 true))

(declare-fun b!70194 () Bool)

(declare-fun res!34268 () Formula!56)

(assert (=> b!70194 (= e!37973 res!34268)))

(assert (=> b!70194 true))

(declare-fun b!70195 () Bool)

(declare-fun e!37964 () Formula!56)

(assert (=> b!70195 (= e!37969 e!37964)))

(declare-fun c!16697 () Bool)

(declare-fun lt!14855 () Bool)

(assert (=> b!70195 (= c!16697 lt!14855)))

(declare-fun lt!14864 () Formula!56)

(assert (=> b!70195 (= lt!14864 e!37968)))

(declare-fun c!16703 () Bool)

(assert (=> b!70195 (= c!16703 (or lt!14855 (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-And!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Or!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Implies!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Not!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50))))))))))

(assert (=> b!70195 (= lt!14855 (is-Implies!61 (Not!61 (rhs!972 (f!4221 formula!50)))))))

(declare-fun b!70196 () Bool)

(declare-fun e!37963 () Formula!56)

(declare-fun res!34261 () Formula!56)

(assert (=> b!70196 (= e!37963 res!34261)))

(assert (=> b!70196 true))

(assert (=> b!70196 true))

(declare-fun b!70197 () Bool)

(assert (=> b!70197 (= e!37964 lt!14864)))

(declare-fun b!70198 () Bool)

(declare-fun lt!14857 () Formula!56)

(assert (=> b!70198 (= e!37975 (Or!61 lt!14857 lt!14866))))

(declare-fun b!70199 () Bool)

(declare-fun e!37976 () Formula!56)

(declare-fun res!34266 () Formula!56)

(assert (=> b!70199 (= e!37976 res!34266)))

(assert (=> b!70199 true))

(declare-fun b!70200 () Bool)

(assert (=> b!70200 (= e!37976 lt!14864)))

(declare-fun b!70201 () Bool)

(declare-fun res!34269 () Formula!56)

(assert (=> b!70201 (= e!37968 res!34269)))

(assert (=> b!70201 true))

(declare-fun b!70202 () Bool)

(declare-fun res!34267 () Formula!56)

(assert (=> b!70202 (= e!37966 res!34267)))

(assert (=> b!70202 true))

(declare-fun b!70203 () Bool)

(declare-fun res!34265 () Formula!56)

(assert (=> b!70203 (= e!37967 res!34265)))

(assert (=> b!70203 true))

(declare-fun b!70204 () Bool)

(declare-fun lt!14859 () Bool)

(declare-fun lt!14860 () Formula!56)

(assert (=> b!70204 (= e!37965 (ite lt!14859 (And!61 lt!14860 lt!14853) (ite (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Not!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) lt!14860 (Not!61 (rhs!972 (f!4221 formula!50))))))))

(assert (=> b!70204 (= lt!14860 e!37963)))

(declare-fun c!16699 () Bool)

(assert (=> b!70204 (= c!16699 (or lt!14859 (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Not!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50))))))))))

(assert (=> b!70204 (= lt!14859 (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Implies!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))))))

(declare-fun b!70205 () Bool)

(assert (=> b!70205 (= e!37963 lt!14862)))

(declare-fun b!70206 () Bool)

(assert (=> b!70206 (= e!37970 lt!14857)))

(declare-fun b!70207 () Bool)

(assert (=> b!70207 (= e!37972 (And!61 lt!14868 lt!14854))))

(declare-fun b!70208 () Bool)

(assert (=> b!70208 (= e!37969 (Or!61 lt!14865 lt!14856))))

(declare-fun b!70209 () Bool)

(assert (=> b!70209 (= e!37964 e!37975)))

(declare-fun c!16700 () Bool)

(declare-fun lt!14869 () Bool)

(assert (=> b!70209 (= c!16700 lt!14869)))

(assert (=> b!70209 (= lt!14866 e!37966)))

(declare-fun c!16693 () Bool)

(assert (=> b!70209 (= c!16693 (or lt!14869 (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Or!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Implies!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50))))))))))

(assert (=> b!70209 (= lt!14857 e!37976)))

(declare-fun c!16704 () Bool)

(assert (=> b!70209 (= c!16704 (or lt!14869 (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Or!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Implies!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))) (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-Not!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50))))))))))

(assert (=> b!70209 (= lt!14869 (and (is-Not!61 (Not!61 (rhs!972 (f!4221 formula!50)))) (is-And!61 (f!4221 (Not!61 (rhs!972 (f!4221 formula!50)))))))))

(assert (= (and d!53656 c!16698) b!70181))

(assert (= (and d!53656 (not c!16698)) b!70194))

(assert (= (and d!53656 c!16706) b!70183))

(assert (= (and d!53656 (not c!16706)) b!70203))

(assert (= (and b!70180 c!16701) b!70189))

(assert (= (and b!70180 (not c!16701)) b!70193))

(assert (= (and b!70180 c!16694) b!70191))

(assert (= (and b!70180 (not c!16694)) b!70188))

(assert (= (and b!70195 c!16703) b!70187))

(assert (= (and b!70195 (not c!16703)) b!70201))

(assert (= (and b!70209 c!16704) b!70200))

(assert (= (and b!70209 (not c!16704)) b!70199))

(assert (= (and b!70209 c!16693) b!70182))

(assert (= (and b!70209 (not c!16693)) b!70202))

(assert (= (and b!70186 c!16695) b!70206))

(assert (= (and b!70186 (not c!16695)) b!70192))

(assert (= (and b!70186 c!16702) b!70184))

(assert (= (and b!70186 (not c!16702)) b!70190))

(assert (= (and b!70204 c!16699) b!70205))

(assert (= (and b!70204 (not c!16699)) b!70196))

(assert (= (and b!70186 c!16705) b!70185))

(assert (= (and b!70186 (not c!16705)) b!70204))

(assert (= (and b!70209 c!16700) b!70198))

(assert (= (and b!70209 (not c!16700)) b!70186))

(assert (= (and b!70195 c!16697) b!70197))

(assert (= (and b!70195 (not c!16697)) b!70209))

(assert (= (and b!70180 c!16696) b!70208))

(assert (= (and b!70180 (not c!16696)) b!70195))

(assert (= (and d!53656 c!16692) b!70207))

(assert (= (and d!53656 (not c!16692)) b!70180))

(declare-fun m!70569 () Bool)

(assert (=> b!70181 m!70569))

(declare-fun m!70571 () Bool)

(assert (=> b!70183 m!70571))

(declare-fun m!70573 () Bool)

(assert (=> d!53656 m!70573))

(assert (=> b!70088 d!53656))

(declare-fun b!70224 () Bool)

(declare-fun e!37987 () Bool)

(declare-fun e!37988 () Bool)

(assert (=> b!70224 (= e!37987 e!37988)))

(declare-fun c!16713 () Bool)

(declare-fun lt!14878 () Bool)

(declare-fun lt!14876 () Bool)

(declare-fun lt!14877 () Bool)

(assert (=> b!70224 (= c!16713 (or lt!14878 (and (not lt!14877) (is-Or!61 x$2!372) lt!14876)))))

(declare-fun b!70225 () Bool)

(declare-fun e!37986 () Bool)

(assert (=> b!70225 (= e!37986 (isNNF!1 (ite lt!14877 (lhs!971 x$2!372) (lhs!973 x$2!372))))))

(declare-fun d!53658 () Bool)

(declare-fun c!16715 () Bool)

(assert (=> d!53658 (= c!16715 (or lt!14877 (is-Or!61 x$2!372)))))

(assert (=> d!53658 (= lt!14878 (and lt!14877 lt!14876))))

(assert (=> d!53658 (= lt!14876 e!37986)))

(declare-fun c!16714 () Bool)

(assert (=> d!53658 (= c!16714 (or lt!14877 (is-Or!61 x$2!372)))))

(assert (=> d!53658 (= lt!14877 (is-And!61 x$2!372))))

(declare-fun e!37985 () Bool)

(assert (=> d!53658 (= (isNNF!1 x$2!372) e!37985)))

(declare-fun b!70226 () Bool)

(assert (=> b!70226 (= e!37985 (and (not (is-Implies!61 x$2!372)) (or (and (is-Not!61 x$2!372) (is-Literal!55 (f!4221 x$2!372))) (not (is-Not!61 x$2!372)))))))

(declare-fun b!70227 () Bool)

(declare-fun res!34283 () Bool)

(assert (=> b!70227 (= e!37988 res!34283)))

(assert (=> b!70227 true))

(assert (=> b!70227 true))

(declare-fun b!70228 () Bool)

(assert (=> b!70228 (= e!37985 e!37987)))

(declare-fun res!34285 () Bool)

(assert (=> b!70228 (=> (not res!34285) (not e!37987))))

(assert (=> b!70228 (= res!34285 lt!14876)))

(declare-fun b!70229 () Bool)

(assert (=> b!70229 (= e!37988 (isNNF!1 (ite lt!14878 (rhs!971 x$2!372) (rhs!973 x$2!372))))))

(declare-fun b!70230 () Bool)

(declare-fun res!34284 () Bool)

(assert (=> b!70230 (= e!37986 res!34284)))

(assert (=> b!70230 true))

(assert (= (and d!53658 c!16714) b!70225))

(assert (= (and d!53658 (not c!16714)) b!70230))

(assert (= (and b!70228 res!34285) b!70224))

(assert (= (and b!70224 c!16713) b!70229))

(assert (= (and b!70224 (not c!16713)) b!70227))

(assert (= (and d!53658 c!16715) b!70228))

(assert (= (and d!53658 (not c!16715)) b!70226))

(declare-fun m!70575 () Bool)

(assert (=> b!70225 m!70575))

(declare-fun m!70577 () Bool)

(assert (=> b!70229 m!70577))

(assert (=> b!70089 d!53658))

(push 1)

(assert (not d!53654))

(assert (not d!53656))

(assert (not b!70229))

(assert (not b!70225))

(assert (not b!70153))

(assert (not b!70181))

(assert (not b!70151))

(assert (not b!70183))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


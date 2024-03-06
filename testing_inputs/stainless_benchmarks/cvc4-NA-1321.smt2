; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9290 () Bool)

(assert start!9290)

(declare-fun b!66107 () Bool)

(declare-fun res!31289 () Bool)

(declare-fun e!35839 () Bool)

(assert (=> b!66107 (=> (not res!31289) (not e!35839))))

(declare-datatypes () ((Formula!23 (And!28 (lhs!872 Formula!23) (rhs!872 Formula!23)) (Literal!22 (id!4803 Int)) (Implies!28 (lhs!873 Formula!23) (rhs!873 Formula!23)) (Or!28 (lhs!874 Formula!23) (rhs!874 Formula!23)) (Not!28 (f!4123 Formula!23)))))

(declare-fun f!3790 () Formula!23)

(assert (=> b!66107 (= res!31289 (and (not (is-And!28 f!3790)) (not (is-Literal!22 f!3790)) (is-Implies!28 f!3790)))))

(declare-fun res!31292 () Bool)

(assert (=> start!9290 (=> (not res!31292) (not e!35839))))

(declare-fun isNNF!1 (Formula!23) Bool)

(assert (=> start!9290 (= res!31292 (isNNF!1 f!3790))))

(assert (=> start!9290 e!35839))

(assert (=> start!9290 true))

(declare-fun b!66110 () Bool)

(declare-fun nnf!1 (Formula!23) Formula!23)

(assert (=> b!66110 (= e!35839 (not (= (nnf!1 f!3790) f!3790)))))

(declare-fun b!66109 () Bool)

(declare-fun res!31291 () Bool)

(assert (=> b!66109 (=> (not res!31291) (not e!35839))))

(declare-fun inductVal!332 () Bool)

(declare-fun nnfIsStable!1 (Formula!23) Bool)

(assert (=> b!66109 (= res!31291 (= inductVal!332 (nnfIsStable!1 (lhs!873 f!3790))))))

(declare-fun b!66108 () Bool)

(declare-fun res!31290 () Bool)

(assert (=> b!66108 (=> (not res!31290) (not e!35839))))

(declare-fun inductVal!324 () Bool)

(assert (=> b!66108 (= res!31290 (= inductVal!324 (nnfIsStable!1 (rhs!873 f!3790))))))

(assert (= (and start!9290 res!31292) b!66107))

(assert (= (and b!66107 res!31289) b!66108))

(assert (= (and b!66108 res!31290) b!66109))

(assert (= (and b!66109 res!31291) b!66110))

(declare-fun m!69605 () Bool)

(assert (=> start!9290 m!69605))

(declare-fun m!69607 () Bool)

(assert (=> b!66110 m!69607))

(declare-fun m!69609 () Bool)

(assert (=> b!66109 m!69609))

(declare-fun m!69611 () Bool)

(assert (=> b!66108 m!69611))

(push 1)

(assert (not b!66110))

(assert (not b!66109))

(assert (not b!66108))

(assert (not start!9290))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!66171 () Bool)

(declare-fun e!35871 () Formula!23)

(declare-fun lt!12879 () Formula!23)

(declare-fun lt!12892 () Formula!23)

(assert (=> b!66171 (= e!35871 (Or!28 lt!12879 lt!12892))))

(declare-fun b!66172 () Bool)

(declare-fun e!35872 () Formula!23)

(declare-fun res!31351 () Formula!23)

(assert (=> b!66172 (= e!35872 res!31351)))

(assert (=> b!66172 true))

(declare-fun b!66173 () Bool)

(declare-fun e!35876 () Formula!23)

(declare-fun lt!12884 () Formula!23)

(assert (=> b!66173 (= e!35876 lt!12884)))

(declare-fun b!66174 () Bool)

(declare-fun e!35878 () Formula!23)

(declare-fun lt!12885 () Formula!23)

(assert (=> b!66174 (= e!35878 lt!12885)))

(declare-fun b!66175 () Bool)

(declare-fun e!35874 () Formula!23)

(assert (=> b!66175 (= e!35871 e!35874)))

(declare-fun c!14971 () Bool)

(declare-fun lt!12891 () Bool)

(assert (=> b!66175 (= c!14971 lt!12891)))

(declare-fun lt!12895 () Formula!23)

(declare-fun e!35883 () Formula!23)

(assert (=> b!66175 (= lt!12895 e!35883)))

(declare-fun c!14967 () Bool)

(assert (=> b!66175 (= c!14967 (or lt!12891 (and (is-Not!28 f!3790) (is-And!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Or!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Implies!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Not!28 (f!4123 f!3790)))))))

(assert (=> b!66175 (= lt!12891 (is-Implies!28 f!3790))))

(declare-fun d!53406 () Bool)

(declare-fun lt!12889 () Formula!23)

(assert (=> d!53406 (isNNF!1 lt!12889)))

(declare-fun e!35881 () Formula!23)

(assert (=> d!53406 (= lt!12889 e!35881)))

(declare-fun c!14964 () Bool)

(declare-fun lt!12883 () Bool)

(assert (=> d!53406 (= c!14964 lt!12883)))

(declare-fun lt!12886 () Formula!23)

(declare-fun e!35873 () Formula!23)

(assert (=> d!53406 (= lt!12886 e!35873)))

(declare-fun c!14968 () Bool)

(assert (=> d!53406 (= c!14968 (or lt!12883 (is-Or!28 f!3790) (and (not (is-Implies!28 f!3790)) (or (and (is-Not!28 f!3790) (is-And!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Or!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Implies!28 (f!4123 f!3790)))))))))

(declare-fun lt!12880 () Formula!23)

(declare-fun e!35875 () Formula!23)

(assert (=> d!53406 (= lt!12880 e!35875)))

(declare-fun c!14970 () Bool)

(assert (=> d!53406 (= c!14970 (or lt!12883 (is-Or!28 f!3790) (is-Implies!28 f!3790) (and (is-Not!28 f!3790) (is-And!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Or!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Implies!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Not!28 (f!4123 f!3790)))))))

(assert (=> d!53406 (= lt!12883 (is-And!28 f!3790))))

(assert (=> d!53406 (= (nnf!1 f!3790) lt!12889)))

(declare-fun b!66176 () Bool)

(declare-fun res!31344 () Formula!23)

(assert (=> b!66176 (= e!35873 res!31344)))

(assert (=> b!66176 true))

(declare-fun b!66177 () Bool)

(declare-fun res!31350 () Formula!23)

(assert (=> b!66177 (= e!35883 res!31350)))

(assert (=> b!66177 true))

(declare-fun b!66178 () Bool)

(declare-fun e!35879 () Formula!23)

(assert (=> b!66178 (= e!35879 lt!12892)))

(declare-fun b!66179 () Bool)

(assert (=> b!66179 (= e!35872 lt!12895)))

(declare-fun b!66180 () Bool)

(assert (=> b!66180 (= e!35881 (And!28 lt!12880 lt!12886))))

(declare-fun b!66181 () Bool)

(assert (=> b!66181 (= e!35875 (nnf!1 (ite lt!12883 (lhs!872 f!3790) (ite (is-Or!28 f!3790) (lhs!874 f!3790) (ite (is-Implies!28 f!3790) (Or!28 (Not!28 (lhs!873 f!3790)) (rhs!873 f!3790)) (ite (and (is-Not!28 f!3790) (is-And!28 (f!4123 f!3790))) (Not!28 (lhs!872 (f!4123 f!3790))) (ite (and (is-Not!28 f!3790) (is-Or!28 (f!4123 f!3790))) (Not!28 (lhs!874 (f!4123 f!3790))) (ite (and (is-Not!28 f!3790) (is-Implies!28 (f!4123 f!3790))) (lhs!873 (f!4123 f!3790)) (f!4123 (f!4123 f!3790))))))))))))

(declare-fun b!66182 () Bool)

(declare-fun res!31345 () Formula!23)

(assert (=> b!66182 (= e!35878 res!31345)))

(assert (=> b!66182 true))

(declare-fun b!66183 () Bool)

(assert (=> b!66183 (= e!35874 lt!12895)))

(declare-fun b!66184 () Bool)

(declare-fun e!35870 () Formula!23)

(declare-fun e!35877 () Formula!23)

(assert (=> b!66184 (= e!35870 e!35877)))

(declare-fun c!14966 () Bool)

(declare-fun lt!12888 () Bool)

(assert (=> b!66184 (= c!14966 lt!12888)))

(declare-fun lt!12894 () Formula!23)

(declare-fun e!35880 () Formula!23)

(assert (=> b!66184 (= lt!12894 e!35880)))

(declare-fun c!14965 () Bool)

(assert (=> b!66184 (= c!14965 (or lt!12888 (and (is-Not!28 f!3790) (is-Implies!28 (f!4123 f!3790)))))))

(assert (=> b!66184 (= lt!12884 e!35878)))

(declare-fun c!14969 () Bool)

(assert (=> b!66184 (= c!14969 (or lt!12888 (and (is-Not!28 f!3790) (is-Implies!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Not!28 (f!4123 f!3790)))))))

(assert (=> b!66184 (= lt!12888 (and (is-Not!28 f!3790) (is-Or!28 (f!4123 f!3790))))))

(declare-fun b!66185 () Bool)

(declare-fun res!31343 () Formula!23)

(assert (=> b!66185 (= e!35880 res!31343)))

(assert (=> b!66185 true))

(declare-fun b!66186 () Bool)

(declare-fun lt!12882 () Formula!23)

(assert (=> b!66186 (= e!35880 lt!12882)))

(declare-fun b!66187 () Bool)

(assert (=> b!66187 (= e!35881 e!35871)))

(declare-fun c!14959 () Bool)

(declare-fun lt!12890 () Bool)

(assert (=> b!66187 (= c!14959 lt!12890)))

(declare-fun e!35882 () Formula!23)

(assert (=> b!66187 (= lt!12892 e!35882)))

(declare-fun c!14958 () Bool)

(assert (=> b!66187 (= c!14958 (or lt!12890 (and (not (is-Implies!28 f!3790)) (or (and (is-Not!28 f!3790) (is-And!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Or!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Implies!28 (f!4123 f!3790)))))))))

(declare-fun e!35884 () Formula!23)

(assert (=> b!66187 (= lt!12879 e!35884)))

(declare-fun c!14963 () Bool)

(assert (=> b!66187 (= c!14963 (or lt!12890 (is-Implies!28 f!3790) (and (is-Not!28 f!3790) (is-And!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Or!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Implies!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Not!28 (f!4123 f!3790)))))))

(assert (=> b!66187 (= lt!12890 (is-Or!28 f!3790))))

(declare-fun lt!12881 () Bool)

(declare-fun lt!12893 () Formula!23)

(declare-fun b!66188 () Bool)

(assert (=> b!66188 (= e!35877 (ite lt!12881 (And!28 lt!12893 lt!12894) (ite (and (is-Not!28 f!3790) (is-Not!28 (f!4123 f!3790))) lt!12893 f!3790)))))

(assert (=> b!66188 (= lt!12893 e!35876)))

(declare-fun c!14961 () Bool)

(assert (=> b!66188 (= c!14961 (or lt!12881 (and (is-Not!28 f!3790) (is-Not!28 (f!4123 f!3790)))))))

(assert (=> b!66188 (= lt!12881 (and (is-Not!28 f!3790) (is-Implies!28 (f!4123 f!3790))))))

(declare-fun b!66189 () Bool)

(assert (=> b!66189 (= e!35877 (And!28 lt!12884 lt!12894))))

(declare-fun b!66190 () Bool)

(declare-fun res!31346 () Formula!23)

(assert (=> b!66190 (= e!35875 res!31346)))

(assert (=> b!66190 true))

(declare-fun b!66191 () Bool)

(assert (=> b!66191 (= e!35873 (nnf!1 (ite lt!12883 (rhs!872 f!3790) (ite (is-Or!28 f!3790) (rhs!874 f!3790) (ite (and (is-Not!28 f!3790) (is-And!28 (f!4123 f!3790))) (Not!28 (rhs!872 (f!4123 f!3790))) (ite (and (is-Not!28 f!3790) (is-Or!28 (f!4123 f!3790))) (Not!28 (rhs!874 (f!4123 f!3790))) (Not!28 (rhs!873 (f!4123 f!3790)))))))))))

(declare-fun b!66192 () Bool)

(assert (=> b!66192 (= e!35884 lt!12880)))

(declare-fun b!66193 () Bool)

(declare-fun res!31347 () Formula!23)

(assert (=> b!66193 (= e!35876 res!31347)))

(assert (=> b!66193 true))

(assert (=> b!66193 true))

(declare-fun b!66194 () Bool)

(assert (=> b!66194 (= e!35870 (Or!28 lt!12885 lt!12882))))

(declare-fun b!66195 () Bool)

(assert (=> b!66195 (= e!35883 lt!12879)))

(declare-fun b!66196 () Bool)

(declare-fun res!31348 () Formula!23)

(assert (=> b!66196 (= e!35882 res!31348)))

(assert (=> b!66196 true))

(declare-fun b!66197 () Bool)

(assert (=> b!66197 (= e!35882 lt!12886)))

(declare-fun b!66198 () Bool)

(assert (=> b!66198 (= e!35874 e!35870)))

(declare-fun c!14962 () Bool)

(declare-fun lt!12887 () Bool)

(assert (=> b!66198 (= c!14962 lt!12887)))

(assert (=> b!66198 (= lt!12882 e!35879)))

(declare-fun c!14960 () Bool)

(assert (=> b!66198 (= c!14960 (or lt!12887 (and (is-Not!28 f!3790) (is-Or!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Implies!28 (f!4123 f!3790)))))))

(assert (=> b!66198 (= lt!12885 e!35872)))

(declare-fun c!14972 () Bool)

(assert (=> b!66198 (= c!14972 (or lt!12887 (and (is-Not!28 f!3790) (is-Or!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Implies!28 (f!4123 f!3790))) (and (is-Not!28 f!3790) (is-Not!28 (f!4123 f!3790)))))))

(assert (=> b!66198 (= lt!12887 (and (is-Not!28 f!3790) (is-And!28 (f!4123 f!3790))))))

(declare-fun b!66199 () Bool)

(declare-fun res!31352 () Formula!23)

(assert (=> b!66199 (= e!35884 res!31352)))

(assert (=> b!66199 true))

(declare-fun b!66200 () Bool)

(declare-fun res!31349 () Formula!23)

(assert (=> b!66200 (= e!35879 res!31349)))

(assert (=> b!66200 true))

(assert (= (and d!53406 c!14970) b!66181))

(assert (= (and d!53406 (not c!14970)) b!66190))

(assert (= (and d!53406 c!14968) b!66191))

(assert (= (and d!53406 (not c!14968)) b!66176))

(assert (= (and b!66187 c!14963) b!66192))

(assert (= (and b!66187 (not c!14963)) b!66199))

(assert (= (and b!66187 c!14958) b!66197))

(assert (= (and b!66187 (not c!14958)) b!66196))

(assert (= (and b!66175 c!14967) b!66195))

(assert (= (and b!66175 (not c!14967)) b!66177))

(assert (= (and b!66198 c!14972) b!66179))

(assert (= (and b!66198 (not c!14972)) b!66172))

(assert (= (and b!66198 c!14960) b!66178))

(assert (= (and b!66198 (not c!14960)) b!66200))

(assert (= (and b!66184 c!14969) b!66174))

(assert (= (and b!66184 (not c!14969)) b!66182))

(assert (= (and b!66184 c!14965) b!66186))

(assert (= (and b!66184 (not c!14965)) b!66185))

(assert (= (and b!66188 c!14961) b!66173))

(assert (= (and b!66188 (not c!14961)) b!66193))

(assert (= (and b!66184 c!14966) b!66189))

(assert (= (and b!66184 (not c!14966)) b!66188))

(assert (= (and b!66198 c!14962) b!66194))

(assert (= (and b!66198 (not c!14962)) b!66184))

(assert (= (and b!66175 c!14971) b!66183))

(assert (= (and b!66175 (not c!14971)) b!66198))

(assert (= (and b!66187 c!14959) b!66171))

(assert (= (and b!66187 (not c!14959)) b!66175))

(assert (= (and d!53406 c!14964) b!66180))

(assert (= (and d!53406 (not c!14964)) b!66187))

(declare-fun m!69613 () Bool)

(assert (=> d!53406 m!69613))

(declare-fun m!69615 () Bool)

(assert (=> b!66181 m!69615))

(declare-fun m!69617 () Bool)

(assert (=> b!66191 m!69617))

(assert (=> b!66110 d!53406))

(declare-fun b!66225 () Bool)

(declare-fun e!35902 () Bool)

(declare-fun lt!12908 () Bool)

(assert (=> b!66225 (= e!35902 (nnfIsStable!1 (ite lt!12908 (lhs!872 (lhs!873 f!3790)) (ite (is-Implies!28 (lhs!873 f!3790)) (lhs!873 (lhs!873 f!3790)) (lhs!874 (lhs!873 f!3790))))))))

(declare-fun b!66226 () Bool)

(declare-fun e!35900 () Formula!23)

(declare-fun res!31382 () Formula!23)

(assert (=> b!66226 (= e!35900 res!31382)))

(assert (=> b!66226 true))

(declare-fun b!66227 () Bool)

(declare-fun e!35901 () Bool)

(declare-fun lt!12913 () Formula!23)

(assert (=> b!66227 (= e!35901 (= lt!12913 (lhs!873 f!3790)))))

(declare-fun b!66228 () Bool)

(assert (=> b!66228 (= e!35900 (nnf!1 (lhs!873 f!3790)))))

(declare-fun b!66229 () Bool)

(declare-fun e!35897 () Bool)

(assert (=> b!66229 (= e!35897 (nnfIsStable!1 (ite lt!12908 (rhs!872 (lhs!873 f!3790)) (ite (is-Implies!28 (lhs!873 f!3790)) (rhs!873 (lhs!873 f!3790)) (ite (is-Or!28 (lhs!873 f!3790)) (rhs!874 (lhs!873 f!3790)) (f!4123 (lhs!873 f!3790)))))))))

(declare-fun b!66230 () Bool)

(declare-fun e!35899 () Formula!23)

(assert (=> b!66230 (= e!35899 (nnf!1 (lhs!873 f!3790)))))

(declare-fun b!66231 () Bool)

(declare-fun res!31383 () Bool)

(assert (=> b!66231 (= e!35902 res!31383)))

(assert (=> b!66231 true))

(declare-fun b!66232 () Bool)

(declare-fun e!35898 () Bool)

(declare-fun lt!12910 () Formula!23)

(assert (=> b!66232 (= e!35898 (= lt!12910 (lhs!873 f!3790)))))

(declare-fun b!66233 () Bool)

(declare-fun res!31384 () Formula!23)

(assert (=> b!66233 (= e!35899 res!31384)))

(assert (=> b!66233 true))

(assert (=> b!66233 true))

(declare-fun d!53408 () Bool)

(assert (=> d!53408 e!35898))

(declare-fun c!14987 () Bool)

(assert (=> d!53408 (= c!14987 (or lt!12908 (is-Literal!22 (lhs!873 f!3790))))))

(assert (=> d!53408 (= lt!12910 e!35900)))

(declare-fun c!14985 () Bool)

(assert (=> d!53408 (= c!14985 (or lt!12908 (is-Literal!22 (lhs!873 f!3790))))))

(declare-fun lt!12911 () Bool)

(assert (=> d!53408 (= lt!12911 e!35902)))

(declare-fun c!14990 () Bool)

(assert (=> d!53408 (= c!14990 (or lt!12908 (and (not (is-Literal!22 (lhs!873 f!3790))) (or (is-Implies!28 (lhs!873 f!3790)) (is-Or!28 (lhs!873 f!3790))))))))

(declare-fun lt!12909 () Bool)

(assert (=> d!53408 (= lt!12909 e!35897)))

(declare-fun c!14986 () Bool)

(assert (=> d!53408 (= c!14986 (or lt!12908 (not (is-Literal!22 (lhs!873 f!3790)))))))

(assert (=> d!53408 (= lt!12908 (is-And!28 (lhs!873 f!3790)))))

(assert (=> d!53408 (isNNF!1 (lhs!873 f!3790))))

(assert (=> d!53408 (= (nnfIsStable!1 (lhs!873 f!3790)) true)))

(declare-fun b!66234 () Bool)

(assert (=> b!66234 (= e!35898 e!35901)))

(declare-fun c!14989 () Bool)

(declare-fun lt!12912 () Bool)

(assert (=> b!66234 (= c!14989 (or lt!12912 (is-Or!28 (lhs!873 f!3790))))))

(assert (=> b!66234 (= lt!12913 e!35899)))

(declare-fun c!14988 () Bool)

(assert (=> b!66234 (= c!14988 (or lt!12912 (is-Or!28 (lhs!873 f!3790))))))

(assert (=> b!66234 (= lt!12912 (is-Implies!28 (lhs!873 f!3790)))))

(declare-fun b!66235 () Bool)

(declare-fun res!31385 () Bool)

(assert (=> b!66235 (= e!35897 res!31385)))

(assert (=> b!66235 true))

(declare-fun b!66236 () Bool)

(assert (=> b!66236 (= e!35901 (= (nnf!1 (lhs!873 f!3790)) (lhs!873 f!3790)))))

(assert (= (and d!53408 c!14986) b!66229))

(assert (= (and d!53408 (not c!14986)) b!66235))

(assert (= (and d!53408 c!14990) b!66225))

(assert (= (and d!53408 (not c!14990)) b!66231))

(assert (= (and d!53408 c!14985) b!66228))

(assert (= (and d!53408 (not c!14985)) b!66226))

(assert (= (and b!66234 c!14988) b!66230))

(assert (= (and b!66234 (not c!14988)) b!66233))

(assert (= (and b!66234 c!14989) b!66227))

(assert (= (and b!66234 (not c!14989)) b!66236))

(assert (= (and d!53408 c!14987) b!66232))

(assert (= (and d!53408 (not c!14987)) b!66234))

(declare-fun m!69619 () Bool)

(assert (=> b!66225 m!69619))

(declare-fun m!69621 () Bool)

(assert (=> b!66230 m!69621))

(declare-fun m!69623 () Bool)

(assert (=> b!66229 m!69623))

(declare-fun m!69625 () Bool)

(assert (=> d!53408 m!69625))

(assert (=> b!66228 m!69621))

(assert (=> b!66236 m!69621))

(assert (=> b!66109 d!53408))

(declare-fun b!66237 () Bool)

(declare-fun e!35908 () Bool)

(declare-fun lt!12914 () Bool)

(assert (=> b!66237 (= e!35908 (nnfIsStable!1 (ite lt!12914 (lhs!872 (rhs!873 f!3790)) (ite (is-Implies!28 (rhs!873 f!3790)) (lhs!873 (rhs!873 f!3790)) (lhs!874 (rhs!873 f!3790))))))))

(declare-fun b!66238 () Bool)

(declare-fun e!35906 () Formula!23)

(declare-fun res!31386 () Formula!23)

(assert (=> b!66238 (= e!35906 res!31386)))

(assert (=> b!66238 true))

(declare-fun b!66239 () Bool)

(declare-fun e!35907 () Bool)

(declare-fun lt!12919 () Formula!23)

(assert (=> b!66239 (= e!35907 (= lt!12919 (rhs!873 f!3790)))))

(declare-fun b!66240 () Bool)

(assert (=> b!66240 (= e!35906 (nnf!1 (rhs!873 f!3790)))))

(declare-fun b!66241 () Bool)

(declare-fun e!35903 () Bool)

(assert (=> b!66241 (= e!35903 (nnfIsStable!1 (ite lt!12914 (rhs!872 (rhs!873 f!3790)) (ite (is-Implies!28 (rhs!873 f!3790)) (rhs!873 (rhs!873 f!3790)) (ite (is-Or!28 (rhs!873 f!3790)) (rhs!874 (rhs!873 f!3790)) (f!4123 (rhs!873 f!3790)))))))))

(declare-fun b!66242 () Bool)

(declare-fun e!35905 () Formula!23)

(assert (=> b!66242 (= e!35905 (nnf!1 (rhs!873 f!3790)))))

(declare-fun b!66243 () Bool)

(declare-fun res!31387 () Bool)

(assert (=> b!66243 (= e!35908 res!31387)))

(assert (=> b!66243 true))

(declare-fun b!66244 () Bool)

(declare-fun e!35904 () Bool)

(declare-fun lt!12916 () Formula!23)

(assert (=> b!66244 (= e!35904 (= lt!12916 (rhs!873 f!3790)))))

(declare-fun b!66245 () Bool)

(declare-fun res!31388 () Formula!23)

(assert (=> b!66245 (= e!35905 res!31388)))

(assert (=> b!66245 true))

(assert (=> b!66245 true))

(declare-fun d!53410 () Bool)

(assert (=> d!53410 e!35904))

(declare-fun c!14993 () Bool)

(assert (=> d!53410 (= c!14993 (or lt!12914 (is-Literal!22 (rhs!873 f!3790))))))

(assert (=> d!53410 (= lt!12916 e!35906)))

(declare-fun c!14991 () Bool)

(assert (=> d!53410 (= c!14991 (or lt!12914 (is-Literal!22 (rhs!873 f!3790))))))

(declare-fun lt!12917 () Bool)

(assert (=> d!53410 (= lt!12917 e!35908)))

(declare-fun c!14996 () Bool)

(assert (=> d!53410 (= c!14996 (or lt!12914 (and (not (is-Literal!22 (rhs!873 f!3790))) (or (is-Implies!28 (rhs!873 f!3790)) (is-Or!28 (rhs!873 f!3790))))))))

(declare-fun lt!12915 () Bool)

(assert (=> d!53410 (= lt!12915 e!35903)))

(declare-fun c!14992 () Bool)

(assert (=> d!53410 (= c!14992 (or lt!12914 (not (is-Literal!22 (rhs!873 f!3790)))))))

(assert (=> d!53410 (= lt!12914 (is-And!28 (rhs!873 f!3790)))))

(assert (=> d!53410 (isNNF!1 (rhs!873 f!3790))))

(assert (=> d!53410 (= (nnfIsStable!1 (rhs!873 f!3790)) true)))

(declare-fun b!66246 () Bool)

(assert (=> b!66246 (= e!35904 e!35907)))

(declare-fun c!14995 () Bool)

(declare-fun lt!12918 () Bool)

(assert (=> b!66246 (= c!14995 (or lt!12918 (is-Or!28 (rhs!873 f!3790))))))

(assert (=> b!66246 (= lt!12919 e!35905)))

(declare-fun c!14994 () Bool)

(assert (=> b!66246 (= c!14994 (or lt!12918 (is-Or!28 (rhs!873 f!3790))))))

(assert (=> b!66246 (= lt!12918 (is-Implies!28 (rhs!873 f!3790)))))

(declare-fun b!66247 () Bool)

(declare-fun res!31389 () Bool)

(assert (=> b!66247 (= e!35903 res!31389)))

(assert (=> b!66247 true))

(declare-fun b!66248 () Bool)

(assert (=> b!66248 (= e!35907 (= (nnf!1 (rhs!873 f!3790)) (rhs!873 f!3790)))))

(assert (= (and d!53410 c!14992) b!66241))

(assert (= (and d!53410 (not c!14992)) b!66247))

(assert (= (and d!53410 c!14996) b!66237))

(assert (= (and d!53410 (not c!14996)) b!66243))

(assert (= (and d!53410 c!14991) b!66240))

(assert (= (and d!53410 (not c!14991)) b!66238))

(assert (= (and b!66246 c!14994) b!66242))

(assert (= (and b!66246 (not c!14994)) b!66245))

(assert (= (and b!66246 c!14995) b!66239))

(assert (= (and b!66246 (not c!14995)) b!66248))

(assert (= (and d!53410 c!14993) b!66244))

(assert (= (and d!53410 (not c!14993)) b!66246))

(declare-fun m!69627 () Bool)

(assert (=> b!66237 m!69627))

(declare-fun m!69629 () Bool)

(assert (=> b!66242 m!69629))

(declare-fun m!69631 () Bool)

(assert (=> b!66241 m!69631))

(declare-fun m!69633 () Bool)

(assert (=> d!53410 m!69633))

(assert (=> b!66240 m!69629))

(assert (=> b!66248 m!69629))

(assert (=> b!66108 d!53410))

(declare-fun b!66263 () Bool)

(declare-fun e!35917 () Bool)

(declare-fun lt!12928 () Bool)

(assert (=> b!66263 (= e!35917 (isNNF!1 (ite lt!12928 (lhs!872 f!3790) (lhs!874 f!3790))))))

(declare-fun b!66264 () Bool)

(declare-fun e!35918 () Bool)

(assert (=> b!66264 (= e!35918 (and (not (is-Implies!28 f!3790)) (or (and (is-Not!28 f!3790) (is-Literal!22 (f!4123 f!3790))) (not (is-Not!28 f!3790)))))))

(declare-fun b!66265 () Bool)

(declare-fun res!31403 () Bool)

(assert (=> b!66265 (= e!35917 res!31403)))

(assert (=> b!66265 true))

(declare-fun d!53412 () Bool)

(declare-fun c!15004 () Bool)

(assert (=> d!53412 (= c!15004 (or lt!12928 (is-Or!28 f!3790)))))

(declare-fun lt!12927 () Bool)

(declare-fun lt!12926 () Bool)

(assert (=> d!53412 (= lt!12927 (and lt!12928 lt!12926))))

(assert (=> d!53412 (= lt!12926 e!35917)))

(declare-fun c!15003 () Bool)

(assert (=> d!53412 (= c!15003 (or lt!12928 (is-Or!28 f!3790)))))

(assert (=> d!53412 (= lt!12928 (is-And!28 f!3790))))

(assert (=> d!53412 (= (isNNF!1 f!3790) e!35918)))

(declare-fun b!66266 () Bool)

(declare-fun e!35920 () Bool)

(declare-fun e!35919 () Bool)

(assert (=> b!66266 (= e!35920 e!35919)))

(declare-fun c!15005 () Bool)

(assert (=> b!66266 (= c!15005 (or lt!12927 (and (not lt!12928) (is-Or!28 f!3790) lt!12926)))))

(declare-fun b!66267 () Bool)

(assert (=> b!66267 (= e!35918 e!35920)))

(declare-fun res!31404 () Bool)

(assert (=> b!66267 (=> (not res!31404) (not e!35920))))

(assert (=> b!66267 (= res!31404 lt!12926)))

(declare-fun b!66268 () Bool)

(declare-fun res!31402 () Bool)

(assert (=> b!66268 (= e!35919 res!31402)))

(assert (=> b!66268 true))

(assert (=> b!66268 true))

(declare-fun b!66269 () Bool)

(assert (=> b!66269 (= e!35919 (isNNF!1 (ite lt!12927 (rhs!872 f!3790) (rhs!874 f!3790))))))

(assert (= (and d!53412 c!15003) b!66263))

(assert (= (and d!53412 (not c!15003)) b!66265))

(assert (= (and b!66267 res!31404) b!66266))

(assert (= (and b!66266 c!15005) b!66269))

(assert (= (and b!66266 (not c!15005)) b!66268))

(assert (= (and d!53412 c!15004) b!66267))

(assert (= (and d!53412 (not c!15004)) b!66264))

(declare-fun m!69635 () Bool)

(assert (=> b!66263 m!69635))

(declare-fun m!69637 () Bool)

(assert (=> b!66269 m!69637))

(assert (=> start!9290 d!53412))

(push 1)

(assert (not b!66240))

(assert (not b!66237))

(assert (not b!66225))

(assert (not b!66181))

(assert (not b!66230))

(assert (not b!66236))

(assert (not b!66241))

(assert (not b!66242))

(assert (not d!53410))

(assert (not d!53408))

(assert (not d!53406))

(assert (not b!66229))

(assert (not b!66228))

(assert (not b!66269))

(assert (not b!66248))

(assert (not b!66191))

(assert (not b!66263))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


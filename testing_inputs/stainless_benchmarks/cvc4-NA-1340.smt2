; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9408 () Bool)

(assert start!9408)

(declare-fun res!32884 () Bool)

(declare-fun e!36926 () Bool)

(assert (=> start!9408 (=> (not res!32884) (not e!36926))))

(declare-datatypes () ((Formula!41 (And!46 (lhs!926 Formula!41) (rhs!926 Formula!41)) (Literal!40 (id!4821 Int)) (Implies!46 (lhs!927 Formula!41) (rhs!927 Formula!41)) (Or!46 (lhs!928 Formula!41) (rhs!928 Formula!41)) (Not!46 (f!4178 Formula!41)))))

(declare-fun f!3683 () Formula!41)

(declare-fun isSimplified!1 (Formula!41) Bool)

(assert (=> start!9408 (= res!32884 (isSimplified!1 f!3683))))

(assert (=> start!9408 e!36926))

(assert (=> start!9408 true))

(declare-fun b!68212 () Bool)

(declare-fun res!32883 () Bool)

(assert (=> b!68212 (=> (not res!32883) (not e!36926))))

(declare-fun inductVal!196 () Bool)

(declare-fun simplifyIsStable!1 (Formula!41) Bool)

(assert (=> b!68212 (= res!32883 (= inductVal!196 (simplifyIsStable!1 (rhs!926 f!3683))))))

(declare-fun b!68211 () Bool)

(declare-fun res!32885 () Bool)

(assert (=> b!68211 (=> (not res!32885) (not e!36926))))

(assert (=> b!68211 (= res!32885 (is-And!46 f!3683))))

(declare-fun b!68214 () Bool)

(declare-fun simplify!1 (Formula!41) Formula!41)

(assert (=> b!68214 (= e!36926 (not (= (simplify!1 f!3683) f!3683)))))

(declare-fun b!68213 () Bool)

(declare-fun res!32886 () Bool)

(assert (=> b!68213 (=> (not res!32886) (not e!36926))))

(declare-fun inductVal!204 () Bool)

(assert (=> b!68213 (= res!32886 (= inductVal!204 (simplifyIsStable!1 (lhs!926 f!3683))))))

(assert (= (and start!9408 res!32884) b!68211))

(assert (= (and b!68211 res!32885) b!68212))

(assert (= (and b!68212 res!32883) b!68213))

(assert (= (and b!68213 res!32886) b!68214))

(declare-fun m!70189 () Bool)

(assert (=> start!9408 m!70189))

(declare-fun m!70191 () Bool)

(assert (=> b!68212 m!70191))

(declare-fun m!70193 () Bool)

(assert (=> b!68214 m!70193))

(declare-fun m!70195 () Bool)

(assert (=> b!68213 m!70195))

(push 1)

(assert (not start!9408))

(assert (not b!68214))

(assert (not b!68213))

(assert (not b!68212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!68241 () Bool)

(declare-fun e!36947 () Bool)

(declare-fun res!32914 () Bool)

(assert (=> b!68241 (= e!36947 res!32914)))

(assert (=> b!68241 true))

(assert (=> b!68241 true))

(declare-fun d!53552 () Bool)

(declare-fun c!15833 () Bool)

(declare-fun lt!13817 () Bool)

(assert (=> d!53552 (= c!15833 lt!13817)))

(declare-fun lt!13814 () Bool)

(declare-fun e!36944 () Bool)

(assert (=> d!53552 (= lt!13814 e!36944)))

(declare-fun c!15832 () Bool)

(declare-fun e!36945 () Bool)

(assert (=> d!53552 (= c!15832 e!36945)))

(declare-fun res!32916 () Bool)

(assert (=> d!53552 (=> res!32916 e!36945)))

(declare-fun lt!13815 () Bool)

(assert (=> d!53552 (= res!32916 lt!13815)))

(declare-fun lt!13819 () Bool)

(assert (=> d!53552 (= lt!13815 (and lt!13817 lt!13819))))

(declare-fun e!36949 () Bool)

(assert (=> d!53552 (= lt!13819 e!36949)))

(declare-fun c!15830 () Bool)

(assert (=> d!53552 (= c!15830 (or lt!13817 (is-Or!46 f!3683) (and (not (is-Implies!46 f!3683)) (is-Not!46 f!3683))))))

(assert (=> d!53552 (= lt!13817 (is-And!46 f!3683))))

(declare-fun e!36950 () Bool)

(assert (=> d!53552 (= (isSimplified!1 f!3683) e!36950)))

(declare-fun b!68242 () Bool)

(declare-fun res!32918 () Bool)

(assert (=> b!68242 (= e!36949 res!32918)))

(assert (=> b!68242 true))

(declare-fun b!68243 () Bool)

(assert (=> b!68243 (= e!36944 (isSimplified!1 (ite lt!13815 (rhs!926 f!3683) (rhs!928 f!3683))))))

(declare-fun b!68244 () Bool)

(assert (=> b!68244 (= e!36947 lt!13819)))

(declare-fun lt!13818 () Bool)

(declare-fun lt!13816 () Bool)

(declare-fun b!68245 () Bool)

(assert (=> b!68245 (= e!36950 (ite lt!13818 (and lt!13816 lt!13814) (and (not (is-Implies!46 f!3683)) (or (not (is-Not!46 f!3683)) lt!13816))))))

(assert (=> b!68245 (= lt!13816 e!36947)))

(declare-fun c!15831 () Bool)

(assert (=> b!68245 (= c!15831 (or lt!13818 (and (not (is-Implies!46 f!3683)) (is-Not!46 f!3683))))))

(assert (=> b!68245 (= lt!13818 (is-Or!46 f!3683))))

(declare-fun b!68246 () Bool)

(declare-fun res!32912 () Bool)

(assert (=> b!68246 (= e!36944 res!32912)))

(assert (=> b!68246 true))

(declare-fun b!68247 () Bool)

(declare-fun e!36946 () Bool)

(declare-fun e!36948 () Bool)

(assert (=> b!68247 (= e!36946 e!36948)))

(declare-fun res!32913 () Bool)

(assert (=> b!68247 (=> (not res!32913) (not e!36948))))

(declare-fun lt!13820 () Bool)

(assert (=> b!68247 (= res!32913 lt!13820)))

(assert (=> b!68247 (= lt!13820 (is-Or!46 f!3683))))

(declare-fun b!68248 () Bool)

(assert (=> b!68248 (= e!36950 (and lt!13819 lt!13814))))

(declare-fun b!68249 () Bool)

(declare-fun e!36943 () Bool)

(assert (=> b!68249 (= e!36943 lt!13819)))

(declare-fun b!68250 () Bool)

(assert (=> b!68250 (= e!36948 e!36943)))

(declare-fun c!15829 () Bool)

(assert (=> b!68250 (= c!15829 (or lt!13820 (and (not (is-Implies!46 f!3683)) (is-Not!46 f!3683))))))

(declare-fun b!68251 () Bool)

(assert (=> b!68251 (= e!36949 (isSimplified!1 (ite lt!13817 (lhs!926 f!3683) (ite (is-Or!46 f!3683) (lhs!928 f!3683) (f!4178 f!3683)))))))

(declare-fun b!68252 () Bool)

(declare-fun res!32915 () Bool)

(assert (=> b!68252 (= e!36943 res!32915)))

(assert (=> b!68252 true))

(declare-fun b!68253 () Bool)

(assert (=> b!68253 (= e!36945 e!36946)))

(declare-fun res!32917 () Bool)

(assert (=> b!68253 (=> (not res!32917) (not e!36946))))

(assert (=> b!68253 (= res!32917 (not lt!13817))))

(assert (= (and d!53552 c!15830) b!68251))

(assert (= (and d!53552 (not c!15830)) b!68242))

(assert (= (and d!53552 (not res!32916)) b!68253))

(assert (= (and b!68253 res!32917) b!68247))

(assert (= (and b!68247 res!32913) b!68250))

(assert (= (and b!68250 c!15829) b!68249))

(assert (= (and b!68250 (not c!15829)) b!68252))

(assert (= (and d!53552 c!15832) b!68243))

(assert (= (and d!53552 (not c!15832)) b!68246))

(assert (= (and b!68245 c!15831) b!68244))

(assert (= (and b!68245 (not c!15831)) b!68241))

(assert (= (and d!53552 c!15833) b!68248))

(assert (= (and d!53552 (not c!15833)) b!68245))

(declare-fun m!70197 () Bool)

(assert (=> b!68243 m!70197))

(declare-fun m!70199 () Bool)

(assert (=> b!68251 m!70199))

(assert (=> start!9408 d!53552))

(declare-fun lt!13847 () Formula!41)

(declare-fun b!68282 () Bool)

(declare-fun lt!13846 () Bool)

(declare-fun e!36970 () Formula!41)

(declare-fun lt!13842 () Formula!41)

(assert (=> b!68282 (= e!36970 (ite lt!13846 (Or!46 (Not!46 lt!13842) lt!13847) (ite (is-Not!46 f!3683) (Not!46 lt!13842) f!3683)))))

(declare-fun e!36966 () Formula!41)

(assert (=> b!68282 (= lt!13842 e!36966)))

(declare-fun c!15848 () Bool)

(assert (=> b!68282 (= c!15848 (or lt!13846 (is-Not!46 f!3683)))))

(assert (=> b!68282 (= lt!13846 (is-Implies!46 f!3683))))

(declare-fun b!68283 () Bool)

(declare-fun e!36969 () Formula!41)

(declare-fun lt!13839 () Formula!41)

(declare-fun lt!13843 () Formula!41)

(assert (=> b!68283 (= e!36969 (And!46 lt!13839 lt!13843))))

(declare-fun b!68284 () Bool)

(declare-fun lt!13845 () Formula!41)

(assert (=> b!68284 (= e!36966 lt!13845)))

(declare-fun b!68285 () Bool)

(declare-fun e!36971 () Formula!41)

(assert (=> b!68285 (= e!36971 lt!13843)))

(declare-fun b!68286 () Bool)

(declare-fun e!36965 () Formula!41)

(declare-fun res!32948 () Formula!41)

(assert (=> b!68286 (= e!36965 res!32948)))

(assert (=> b!68286 true))

(declare-fun b!68287 () Bool)

(declare-fun e!36968 () Formula!41)

(declare-fun res!32944 () Formula!41)

(assert (=> b!68287 (= e!36968 res!32944)))

(assert (=> b!68287 true))

(declare-fun b!68288 () Bool)

(declare-fun e!36967 () Formula!41)

(declare-fun lt!13844 () Bool)

(assert (=> b!68288 (= e!36967 (simplify!1 (ite lt!13844 (lhs!926 f!3683) (ite (is-Or!46 f!3683) (lhs!928 f!3683) (ite (is-Implies!46 f!3683) (lhs!927 f!3683) (f!4178 f!3683))))))))

(declare-fun d!53554 () Bool)

(declare-fun lt!13841 () Formula!41)

(assert (=> d!53554 (isSimplified!1 lt!13841)))

(assert (=> d!53554 (= lt!13841 e!36969)))

(declare-fun c!15852 () Bool)

(assert (=> d!53554 (= c!15852 lt!13844)))

(assert (=> d!53554 (= lt!13843 e!36968)))

(declare-fun c!15849 () Bool)

(assert (=> d!53554 (= c!15849 (or lt!13844 (is-Or!46 f!3683) (is-Implies!46 f!3683)))))

(assert (=> d!53554 (= lt!13839 e!36967)))

(declare-fun c!15853 () Bool)

(assert (=> d!53554 (= c!15853 (or lt!13844 (is-Or!46 f!3683) (is-Implies!46 f!3683) (is-Not!46 f!3683)))))

(assert (=> d!53554 (= lt!13844 (is-And!46 f!3683))))

(assert (=> d!53554 (= (simplify!1 f!3683) lt!13841)))

(declare-fun b!68289 () Bool)

(assert (=> b!68289 (= e!36968 (simplify!1 (ite lt!13844 (rhs!926 f!3683) (ite (is-Or!46 f!3683) (rhs!928 f!3683) (rhs!927 f!3683)))))))

(declare-fun b!68290 () Bool)

(declare-fun res!32947 () Formula!41)

(assert (=> b!68290 (= e!36971 res!32947)))

(assert (=> b!68290 true))

(declare-fun b!68291 () Bool)

(assert (=> b!68291 (= e!36965 lt!13839)))

(declare-fun b!68292 () Bool)

(assert (=> b!68292 (= e!36969 e!36970)))

(declare-fun c!15850 () Bool)

(declare-fun lt!13840 () Bool)

(assert (=> b!68292 (= c!15850 lt!13840)))

(assert (=> b!68292 (= lt!13847 e!36971)))

(declare-fun c!15854 () Bool)

(assert (=> b!68292 (= c!15854 (or lt!13840 (is-Implies!46 f!3683)))))

(assert (=> b!68292 (= lt!13845 e!36965)))

(declare-fun c!15851 () Bool)

(assert (=> b!68292 (= c!15851 (or lt!13840 (is-Implies!46 f!3683) (is-Not!46 f!3683)))))

(assert (=> b!68292 (= lt!13840 (is-Or!46 f!3683))))

(declare-fun b!68293 () Bool)

(declare-fun res!32945 () Formula!41)

(assert (=> b!68293 (= e!36967 res!32945)))

(assert (=> b!68293 true))

(declare-fun b!68294 () Bool)

(declare-fun res!32946 () Formula!41)

(assert (=> b!68294 (= e!36966 res!32946)))

(assert (=> b!68294 true))

(assert (=> b!68294 true))

(declare-fun b!68295 () Bool)

(assert (=> b!68295 (= e!36970 (Or!46 lt!13845 lt!13847))))

(assert (= (and d!53554 c!15853) b!68288))

(assert (= (and d!53554 (not c!15853)) b!68293))

(assert (= (and d!53554 c!15849) b!68289))

(assert (= (and d!53554 (not c!15849)) b!68287))

(assert (= (and b!68292 c!15851) b!68291))

(assert (= (and b!68292 (not c!15851)) b!68286))

(assert (= (and b!68292 c!15854) b!68285))

(assert (= (and b!68292 (not c!15854)) b!68290))

(assert (= (and b!68282 c!15848) b!68284))

(assert (= (and b!68282 (not c!15848)) b!68294))

(assert (= (and b!68292 c!15850) b!68295))

(assert (= (and b!68292 (not c!15850)) b!68282))

(assert (= (and d!53554 c!15852) b!68283))

(assert (= (and d!53554 (not c!15852)) b!68292))

(declare-fun m!70201 () Bool)

(assert (=> b!68288 m!70201))

(declare-fun m!70203 () Bool)

(assert (=> d!53554 m!70203))

(declare-fun m!70205 () Bool)

(assert (=> b!68289 m!70205))

(assert (=> b!68214 d!53554))

(declare-fun b!68320 () Bool)

(declare-fun e!36987 () Bool)

(assert (=> b!68320 (= e!36987 (= (simplify!1 (lhs!926 f!3683)) (lhs!926 f!3683)))))

(declare-fun b!68321 () Bool)

(declare-fun e!36988 () Bool)

(assert (=> b!68321 (= e!36988 e!36987)))

(declare-fun c!15870 () Bool)

(declare-fun lt!13864 () Bool)

(assert (=> b!68321 (= c!15870 (or lt!13864 (is-Or!46 (lhs!926 f!3683))))))

(declare-fun lt!13865 () Formula!41)

(declare-fun e!36989 () Formula!41)

(assert (=> b!68321 (= lt!13865 e!36989)))

(declare-fun c!15872 () Bool)

(assert (=> b!68321 (= c!15872 (or lt!13864 (is-Or!46 (lhs!926 f!3683))))))

(assert (=> b!68321 (= lt!13864 (is-Implies!46 (lhs!926 f!3683)))))

(declare-fun b!68322 () Bool)

(declare-fun e!36986 () Bool)

(declare-fun res!32978 () Bool)

(assert (=> b!68322 (= e!36986 res!32978)))

(assert (=> b!68322 true))

(declare-fun b!68323 () Bool)

(declare-fun e!36984 () Formula!41)

(declare-fun res!32981 () Formula!41)

(assert (=> b!68323 (= e!36984 res!32981)))

(assert (=> b!68323 true))

(declare-fun b!68324 () Bool)

(declare-fun e!36985 () Bool)

(declare-fun lt!13861 () Bool)

(assert (=> b!68324 (= e!36985 (simplifyIsStable!1 (ite lt!13861 (rhs!926 (lhs!926 f!3683)) (ite (is-Implies!46 (lhs!926 f!3683)) (rhs!927 (lhs!926 f!3683)) (ite (is-Or!46 (lhs!926 f!3683)) (rhs!928 (lhs!926 f!3683)) (f!4178 (lhs!926 f!3683)))))))))

(declare-fun d!53556 () Bool)

(assert (=> d!53556 e!36988))

(declare-fun c!15869 () Bool)

(assert (=> d!53556 (= c!15869 (or lt!13861 (is-Literal!40 (lhs!926 f!3683))))))

(declare-fun lt!13863 () Formula!41)

(assert (=> d!53556 (= lt!13863 e!36984)))

(declare-fun c!15867 () Bool)

(assert (=> d!53556 (= c!15867 (or lt!13861 (is-Literal!40 (lhs!926 f!3683))))))

(declare-fun lt!13862 () Bool)

(assert (=> d!53556 (= lt!13862 e!36986)))

(declare-fun c!15871 () Bool)

(assert (=> d!53556 (= c!15871 (or lt!13861 (and (not (is-Literal!40 (lhs!926 f!3683))) (or (is-Implies!46 (lhs!926 f!3683)) (is-Or!46 (lhs!926 f!3683))))))))

(declare-fun lt!13860 () Bool)

(assert (=> d!53556 (= lt!13860 e!36985)))

(declare-fun c!15868 () Bool)

(assert (=> d!53556 (= c!15868 (or lt!13861 (not (is-Literal!40 (lhs!926 f!3683)))))))

(assert (=> d!53556 (= lt!13861 (is-And!46 (lhs!926 f!3683)))))

(assert (=> d!53556 (isSimplified!1 (lhs!926 f!3683))))

(assert (=> d!53556 (= (simplifyIsStable!1 (lhs!926 f!3683)) true)))

(declare-fun b!68325 () Bool)

(assert (=> b!68325 (= e!36986 (simplifyIsStable!1 (ite lt!13861 (lhs!926 (lhs!926 f!3683)) (ite (is-Implies!46 (lhs!926 f!3683)) (lhs!927 (lhs!926 f!3683)) (lhs!928 (lhs!926 f!3683))))))))

(declare-fun b!68326 () Bool)

(assert (=> b!68326 (= e!36989 (simplify!1 (lhs!926 f!3683)))))

(declare-fun b!68327 () Bool)

(assert (=> b!68327 (= e!36988 (= lt!13863 (lhs!926 f!3683)))))

(declare-fun b!68328 () Bool)

(declare-fun res!32980 () Bool)

(assert (=> b!68328 (= e!36985 res!32980)))

(assert (=> b!68328 true))

(declare-fun b!68329 () Bool)

(assert (=> b!68329 (= e!36984 (simplify!1 (lhs!926 f!3683)))))

(declare-fun b!68330 () Bool)

(declare-fun res!32979 () Formula!41)

(assert (=> b!68330 (= e!36989 res!32979)))

(assert (=> b!68330 true))

(assert (=> b!68330 true))

(declare-fun b!68331 () Bool)

(assert (=> b!68331 (= e!36987 (= lt!13865 (lhs!926 f!3683)))))

(assert (= (and d!53556 c!15868) b!68324))

(assert (= (and d!53556 (not c!15868)) b!68328))

(assert (= (and d!53556 c!15871) b!68325))

(assert (= (and d!53556 (not c!15871)) b!68322))

(assert (= (and d!53556 c!15867) b!68329))

(assert (= (and d!53556 (not c!15867)) b!68323))

(assert (= (and b!68321 c!15872) b!68326))

(assert (= (and b!68321 (not c!15872)) b!68330))

(assert (= (and b!68321 c!15870) b!68331))

(assert (= (and b!68321 (not c!15870)) b!68320))

(assert (= (and d!53556 c!15869) b!68327))

(assert (= (and d!53556 (not c!15869)) b!68321))

(declare-fun m!70207 () Bool)

(assert (=> b!68324 m!70207))

(declare-fun m!70209 () Bool)

(assert (=> b!68325 m!70209))

(declare-fun m!70211 () Bool)

(assert (=> b!68326 m!70211))

(declare-fun m!70213 () Bool)

(assert (=> d!53556 m!70213))

(assert (=> b!68320 m!70211))

(assert (=> b!68329 m!70211))

(assert (=> b!68213 d!53556))

(declare-fun b!68332 () Bool)

(declare-fun e!36993 () Bool)

(assert (=> b!68332 (= e!36993 (= (simplify!1 (rhs!926 f!3683)) (rhs!926 f!3683)))))

(declare-fun b!68333 () Bool)

(declare-fun e!36994 () Bool)

(assert (=> b!68333 (= e!36994 e!36993)))

(declare-fun c!15876 () Bool)

(declare-fun lt!13870 () Bool)

(assert (=> b!68333 (= c!15876 (or lt!13870 (is-Or!46 (rhs!926 f!3683))))))

(declare-fun lt!13871 () Formula!41)

(declare-fun e!36995 () Formula!41)

(assert (=> b!68333 (= lt!13871 e!36995)))

(declare-fun c!15878 () Bool)

(assert (=> b!68333 (= c!15878 (or lt!13870 (is-Or!46 (rhs!926 f!3683))))))

(assert (=> b!68333 (= lt!13870 (is-Implies!46 (rhs!926 f!3683)))))

(declare-fun b!68334 () Bool)

(declare-fun e!36992 () Bool)

(declare-fun res!32982 () Bool)

(assert (=> b!68334 (= e!36992 res!32982)))

(assert (=> b!68334 true))

(declare-fun b!68335 () Bool)

(declare-fun e!36990 () Formula!41)

(declare-fun res!32985 () Formula!41)

(assert (=> b!68335 (= e!36990 res!32985)))

(assert (=> b!68335 true))

(declare-fun b!68336 () Bool)

(declare-fun e!36991 () Bool)

(declare-fun lt!13867 () Bool)

(assert (=> b!68336 (= e!36991 (simplifyIsStable!1 (ite lt!13867 (rhs!926 (rhs!926 f!3683)) (ite (is-Implies!46 (rhs!926 f!3683)) (rhs!927 (rhs!926 f!3683)) (ite (is-Or!46 (rhs!926 f!3683)) (rhs!928 (rhs!926 f!3683)) (f!4178 (rhs!926 f!3683)))))))))

(declare-fun d!53558 () Bool)

(assert (=> d!53558 e!36994))

(declare-fun c!15875 () Bool)

(assert (=> d!53558 (= c!15875 (or lt!13867 (is-Literal!40 (rhs!926 f!3683))))))

(declare-fun lt!13869 () Formula!41)

(assert (=> d!53558 (= lt!13869 e!36990)))

(declare-fun c!15873 () Bool)

(assert (=> d!53558 (= c!15873 (or lt!13867 (is-Literal!40 (rhs!926 f!3683))))))

(declare-fun lt!13868 () Bool)

(assert (=> d!53558 (= lt!13868 e!36992)))

(declare-fun c!15877 () Bool)

(assert (=> d!53558 (= c!15877 (or lt!13867 (and (not (is-Literal!40 (rhs!926 f!3683))) (or (is-Implies!46 (rhs!926 f!3683)) (is-Or!46 (rhs!926 f!3683))))))))

(declare-fun lt!13866 () Bool)

(assert (=> d!53558 (= lt!13866 e!36991)))

(declare-fun c!15874 () Bool)

(assert (=> d!53558 (= c!15874 (or lt!13867 (not (is-Literal!40 (rhs!926 f!3683)))))))

(assert (=> d!53558 (= lt!13867 (is-And!46 (rhs!926 f!3683)))))

(assert (=> d!53558 (isSimplified!1 (rhs!926 f!3683))))

(assert (=> d!53558 (= (simplifyIsStable!1 (rhs!926 f!3683)) true)))

(declare-fun b!68337 () Bool)

(assert (=> b!68337 (= e!36992 (simplifyIsStable!1 (ite lt!13867 (lhs!926 (rhs!926 f!3683)) (ite (is-Implies!46 (rhs!926 f!3683)) (lhs!927 (rhs!926 f!3683)) (lhs!928 (rhs!926 f!3683))))))))

(declare-fun b!68338 () Bool)

(assert (=> b!68338 (= e!36995 (simplify!1 (rhs!926 f!3683)))))

(declare-fun b!68339 () Bool)

(assert (=> b!68339 (= e!36994 (= lt!13869 (rhs!926 f!3683)))))

(declare-fun b!68340 () Bool)

(declare-fun res!32984 () Bool)

(assert (=> b!68340 (= e!36991 res!32984)))

(assert (=> b!68340 true))

(declare-fun b!68341 () Bool)

(assert (=> b!68341 (= e!36990 (simplify!1 (rhs!926 f!3683)))))

(declare-fun b!68342 () Bool)

(declare-fun res!32983 () Formula!41)

(assert (=> b!68342 (= e!36995 res!32983)))

(assert (=> b!68342 true))

(assert (=> b!68342 true))

(declare-fun b!68343 () Bool)

(assert (=> b!68343 (= e!36993 (= lt!13871 (rhs!926 f!3683)))))

(assert (= (and d!53558 c!15874) b!68336))

(assert (= (and d!53558 (not c!15874)) b!68340))

(assert (= (and d!53558 c!15877) b!68337))

(assert (= (and d!53558 (not c!15877)) b!68334))

(assert (= (and d!53558 c!15873) b!68341))

(assert (= (and d!53558 (not c!15873)) b!68335))

(assert (= (and b!68333 c!15878) b!68338))

(assert (= (and b!68333 (not c!15878)) b!68342))

(assert (= (and b!68333 c!15876) b!68343))

(assert (= (and b!68333 (not c!15876)) b!68332))

(assert (= (and d!53558 c!15875) b!68339))

(assert (= (and d!53558 (not c!15875)) b!68333))

(declare-fun m!70215 () Bool)

(assert (=> b!68336 m!70215))

(declare-fun m!70217 () Bool)

(assert (=> b!68337 m!70217))

(declare-fun m!70219 () Bool)

(assert (=> b!68338 m!70219))

(declare-fun m!70221 () Bool)

(assert (=> d!53558 m!70221))

(assert (=> b!68332 m!70219))

(assert (=> b!68341 m!70219))

(assert (=> b!68212 d!53558))

(push 1)

(assert (not b!68251))

(assert (not b!68325))

(assert (not b!68336))

(assert (not d!53558))

(assert (not b!68329))

(assert (not b!68341))

(assert (not b!68288))

(assert (not d!53554))

(assert (not b!68289))

(assert (not d!53556))

(assert (not b!68324))

(assert (not b!68332))

(assert (not b!68243))

(assert (not b!68338))

(assert (not b!68320))

(assert (not b!68337))

(assert (not b!68326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


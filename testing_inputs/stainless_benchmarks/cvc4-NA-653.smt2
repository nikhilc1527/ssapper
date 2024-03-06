; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4680 () Bool)

(assert start!4680)

(declare-fun res!17356 () Bool)

(declare-fun e!18852 () Bool)

(assert (=> start!4680 (=> (not res!17356) (not e!18852))))

(declare-datatypes () ((Expr!7 (And!8 (lhs!210 Expr!7) (rhs!210 Expr!7)) (Implies!8 (lhs!211 Expr!7) (rhs!211 Expr!7)) (BoolLiteral!5 (i!417 Int)) (Or!8 (lhs!212 Expr!7) (rhs!212 Expr!7)) (Not!8 (e!18854 Expr!7)))))

(declare-fun e!17837 () Expr!7)

(declare-fun out!58 () Expr!7)

(assert (=> start!4680 (= res!17356 (and (not (is-And!8 e!17837)) (not (is-Or!8 e!17837)) (not (is-Implies!8 e!17837)) (not (is-Not!8 e!17837)) (= out!58 e!17837)))))

(assert (=> start!4680 e!18852))

(assert (=> start!4680 true))

(declare-fun b!36769 () Bool)

(declare-fun e!18853 () Bool)

(assert (=> b!36769 (= e!18852 e!18853)))

(declare-fun res!17357 () Bool)

(assert (=> b!36769 (=> res!17357 e!18853)))

(declare-fun existsImplies!0 (Expr!7) Bool)

(assert (=> b!36769 (= res!17357 (existsImplies!0 out!58))))

(declare-fun b!36770 () Bool)

(declare-fun lambda!4214 () Int)

(declare-fun exists!6 (Expr!7 Int) Bool)

(assert (=> b!36770 (= e!18853 (exists!6 out!58 lambda!4214))))

(assert (= (and start!4680 res!17356) b!36769))

(assert (= (and b!36769 (not res!17357)) b!36770))

(declare-fun m!38279 () Bool)

(assert (=> b!36769 m!38279))

(declare-fun m!38281 () Bool)

(assert (=> b!36770 m!38281))

(push 1)

(assert (not b!36770))

(assert (not b!36769))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!7367 () Bool)

(declare-fun b!36843 () Bool)

(declare-fun e!18923 () Bool)

(assert (=> b!36843 (= e!18923 (exists!6 (ite lt!7367 (lhs!210 out!58) (ite (is-Or!8 out!58) (lhs!212 out!58) (ite (is-Implies!8 out!58) (lhs!211 out!58) (e!18854 out!58)))) lambda!4214))))

(declare-fun b!36844 () Bool)

(declare-fun e!18907 () Bool)

(declare-fun lt!7358 () Bool)

(assert (=> b!36844 (= e!18907 lt!7358)))

(declare-fun b!36845 () Bool)

(declare-fun e!18906 () Bool)

(declare-fun e!18912 () Bool)

(assert (=> b!36845 (= e!18906 e!18912)))

(declare-fun res!17433 () Bool)

(assert (=> b!36845 (=> (not res!17433) (not e!18912))))

(assert (=> b!36845 (= res!17433 (not lt!7367))))

(declare-fun b!36846 () Bool)

(declare-fun e!18922 () Bool)

(declare-fun lt!7364 () Bool)

(assert (=> b!36846 (= e!18922 lt!7364)))

(declare-fun b!36847 () Bool)

(declare-fun e!18902 () Bool)

(declare-fun res!17427 () Bool)

(assert (=> b!36847 (= e!18902 res!17427)))

(assert (=> b!36847 true))

(assert (=> b!36847 true))

(declare-fun b!36848 () Bool)

(declare-fun e!18915 () Bool)

(declare-fun e!18918 () Bool)

(assert (=> b!36848 (= e!18915 e!18918)))

(declare-fun res!17425 () Bool)

(assert (=> b!36848 (=> (not res!17425) (not e!18918))))

(declare-fun lt!7366 () Bool)

(assert (=> b!36848 (= res!17425 lt!7366)))

(assert (=> b!36848 (= lt!7366 (is-Implies!8 out!58))))

(declare-fun b!36849 () Bool)

(declare-fun e!18909 () Bool)

(declare-fun e!18916 () Bool)

(assert (=> b!36849 (= e!18909 e!18916)))

(declare-fun res!17426 () Bool)

(assert (=> b!36849 (=> (not res!17426) (not e!18916))))

(declare-fun lt!7369 () Bool)

(assert (=> b!36849 (= res!17426 (not lt!7369))))

(declare-fun b!36850 () Bool)

(declare-fun e!18914 () Bool)

(declare-fun lt!7371 () Bool)

(assert (=> b!36850 (= e!18914 lt!7371)))

(declare-fun b!36851 () Bool)

(declare-fun e!18911 () Bool)

(assert (=> b!36851 (= e!18911 (not e!18907))))

(declare-fun c!8072 () Bool)

(declare-fun lt!7365 () Bool)

(assert (=> b!36851 (= c!8072 (or lt!7365 (is-Not!8 out!58)))))

(declare-fun b!36852 () Bool)

(declare-fun e!18904 () Bool)

(declare-fun e!18917 () Bool)

(assert (=> b!36852 (= e!18904 e!18917)))

(declare-fun c!8074 () Bool)

(declare-fun lt!7368 () Bool)

(assert (=> b!36852 (= c!8074 lt!7368)))

(declare-fun lt!7360 () Bool)

(assert (=> b!36852 (= lt!7360 e!18914)))

(declare-fun c!8075 () Bool)

(declare-fun e!18924 () Bool)

(assert (=> b!36852 (= c!8075 e!18924)))

(declare-fun res!17435 () Bool)

(assert (=> b!36852 (=> res!17435 e!18924)))

(declare-fun lt!7359 () Bool)

(assert (=> b!36852 (= res!17435 (and lt!7368 (not lt!7359)))))

(declare-fun e!18921 () Bool)

(assert (=> b!36852 (= lt!7359 e!18921)))

(declare-fun c!8071 () Bool)

(assert (=> b!36852 (= c!8071 (or lt!7368 (is-Implies!8 out!58) (is-Not!8 out!58)))))

(assert (=> b!36852 (= lt!7368 (is-Or!8 out!58))))

(declare-fun b!36853 () Bool)

(assert (=> b!36853 (= e!18916 e!18911)))

(declare-fun res!17428 () Bool)

(assert (=> b!36853 (=> (not res!17428) (not e!18911))))

(assert (=> b!36853 (= res!17428 lt!7365)))

(assert (=> b!36853 (= lt!7365 (is-Implies!8 out!58))))

(declare-fun b!36854 () Bool)

(assert (=> b!36854 (= e!18921 lt!7364)))

(declare-fun b!36855 () Bool)

(declare-fun e!18920 () Expr!7)

(assert (=> b!36855 (= e!18920 (rhs!211 out!58))))

(declare-fun b!36856 () Bool)

(declare-fun e!18903 () Bool)

(assert (=> b!36856 (= e!18903 e!18904)))

(declare-fun c!8069 () Bool)

(assert (=> b!36856 (= c!8069 lt!7367)))

(declare-fun e!18910 () Bool)

(assert (=> b!36856 (= lt!7371 e!18910)))

(declare-fun c!8066 () Bool)

(assert (=> b!36856 (= c!8066 e!18906)))

(declare-fun res!17436 () Bool)

(assert (=> b!36856 (=> res!17436 e!18906)))

(declare-fun lt!7361 () Bool)

(assert (=> b!36856 (= res!17436 lt!7361)))

(assert (=> b!36856 (= lt!7361 (and lt!7367 (not lt!7364)))))

(assert (=> b!36856 (= lt!7364 e!18923)))

(declare-fun c!8065 () Bool)

(assert (=> b!36856 (= c!8065 (or lt!7367 (is-Or!8 out!58) (is-Implies!8 out!58) (is-Not!8 out!58)))))

(assert (=> b!36856 (= lt!7367 (is-And!8 out!58))))

(declare-fun b!36857 () Bool)

(assert (=> b!36857 (= e!18902 lt!7359)))

(declare-fun b!36858 () Bool)

(declare-fun e!18913 () Expr!7)

(assert (=> b!36858 (= e!18913 (rhs!210 out!58))))

(declare-fun b!36859 () Bool)

(declare-fun e!18905 () Bool)

(assert (=> b!36859 (= e!18905 lt!7359)))

(declare-fun b!36860 () Bool)

(declare-fun res!17423 () Bool)

(assert (=> b!36860 (= e!18922 res!17423)))

(assert (=> b!36860 true))

(declare-fun b!36861 () Bool)

(declare-fun e!18919 () Bool)

(assert (=> b!36861 (= e!18919 lt!7364)))

(declare-fun b!36862 () Bool)

(assert (=> b!36862 (= e!18912 e!18909)))

(declare-fun res!17432 () Bool)

(assert (=> b!36862 (=> res!17432 e!18909)))

(assert (=> b!36862 (= res!17432 (and lt!7369 (not lt!7358)))))

(assert (=> b!36862 (= lt!7358 e!18919)))

(declare-fun c!8067 () Bool)

(assert (=> b!36862 (= c!8067 (or lt!7369 (is-Implies!8 out!58) (is-Not!8 out!58)))))

(assert (=> b!36862 (= lt!7369 (is-Or!8 out!58))))

(declare-fun b!36863 () Bool)

(declare-fun lt!7370 () Bool)

(declare-fun lt!7362 () Bool)

(assert (=> b!36863 (= e!18917 (ite lt!7370 (or lt!7362 lt!7360) (and (is-Not!8 out!58) lt!7362)))))

(assert (=> b!36863 (= lt!7362 e!18902)))

(declare-fun c!8076 () Bool)

(assert (=> b!36863 (= c!8076 (or lt!7370 (is-Not!8 out!58)))))

(assert (=> b!36863 (= lt!7370 (is-Implies!8 out!58))))

(declare-fun b!36864 () Bool)

(declare-fun res!17424 () Bool)

(assert (=> b!36864 (= e!18921 res!17424)))

(assert (=> b!36864 true))

(declare-fun b!36865 () Bool)

(declare-fun res!17434 () Bool)

(assert (=> b!36865 (= e!18923 res!17434)))

(assert (=> b!36865 true))

(declare-fun b!36866 () Bool)

(assert (=> b!36866 (= e!18913 e!18920)))

(declare-fun c!8077 () Bool)

(declare-fun e!18908 () Bool)

(assert (=> b!36866 (= c!8077 e!18908)))

(declare-fun res!17420 () Bool)

(assert (=> b!36866 (=> (not res!17420) (not e!18908))))

(declare-fun lt!7363 () Bool)

(assert (=> b!36866 (= res!17420 lt!7363)))

(assert (=> b!36866 (= lt!7363 (is-Or!8 out!58))))

(declare-fun b!36867 () Bool)

(assert (=> b!36867 (= e!18918 (not e!18905))))

(declare-fun c!8070 () Bool)

(assert (=> b!36867 (= c!8070 (or lt!7366 (is-Not!8 out!58)))))

(declare-fun b!36868 () Bool)

(assert (=> b!36868 (= e!18917 (or lt!7359 lt!7360))))

(declare-fun b!36869 () Bool)

(declare-fun res!17430 () Bool)

(assert (=> b!36869 (= e!18907 res!17430)))

(assert (=> b!36869 true))

(declare-fun d!18568 () Bool)

(declare-fun res!17431 () Bool)

(assert (=> d!18568 (=> res!17431 e!18903)))

(declare-fun dynLambda!649 (Int Expr!7) Bool)

(assert (=> d!18568 (= res!17431 (dynLambda!649 lambda!4214 out!58))))

(assert (=> d!18568 (= (exists!6 out!58 lambda!4214) e!18903)))

(declare-fun b!36870 () Bool)

(assert (=> b!36870 (= e!18908 (not e!18922))))

(declare-fun c!8073 () Bool)

(assert (=> b!36870 (= c!8073 (or lt!7363 (is-Implies!8 out!58) (is-Not!8 out!58)))))

(declare-fun b!36871 () Bool)

(assert (=> b!36871 (= e!18910 (exists!6 e!18913 lambda!4214))))

(declare-fun c!8068 () Bool)

(assert (=> b!36871 (= c!8068 lt!7361)))

(declare-fun b!36872 () Bool)

(assert (=> b!36872 (= e!18924 e!18915)))

(declare-fun res!17419 () Bool)

(assert (=> b!36872 (=> (not res!17419) (not e!18915))))

(assert (=> b!36872 (= res!17419 (not lt!7368))))

(declare-fun b!36873 () Bool)

(assert (=> b!36873 (= e!18904 (or lt!7364 lt!7371))))

(declare-fun b!36874 () Bool)

(declare-fun res!17422 () Bool)

(assert (=> b!36874 (= e!18905 res!17422)))

(assert (=> b!36874 true))

(declare-fun b!36875 () Bool)

(declare-fun res!17421 () Bool)

(assert (=> b!36875 (= e!18910 res!17421)))

(assert (=> b!36875 true))

(declare-fun b!36876 () Bool)

(assert (=> b!36876 (= e!18920 (rhs!212 out!58))))

(declare-fun b!36877 () Bool)

(declare-fun res!17418 () Bool)

(assert (=> b!36877 (= e!18919 res!17418)))

(assert (=> b!36877 true))

(declare-fun b!36878 () Bool)

(declare-fun res!17429 () Bool)

(assert (=> b!36878 (= e!18914 res!17429)))

(assert (=> b!36878 true))

(assert (= (and d!18568 (not res!17431)) b!36856))

(assert (= (and b!36856 c!8065) b!36843))

(assert (= (and b!36856 (not c!8065)) b!36865))

(assert (= (and b!36856 (not res!17436)) b!36845))

(assert (= (and b!36845 res!17433) b!36862))

(assert (= (and b!36862 c!8067) b!36861))

(assert (= (and b!36862 (not c!8067)) b!36877))

(assert (= (and b!36862 (not res!17432)) b!36849))

(assert (= (and b!36849 res!17426) b!36853))

(assert (= (and b!36853 res!17428) b!36851))

(assert (= (and b!36851 c!8072) b!36844))

(assert (= (and b!36851 (not c!8072)) b!36869))

(assert (= (and b!36866 res!17420) b!36870))

(assert (= (and b!36870 c!8073) b!36846))

(assert (= (and b!36870 (not c!8073)) b!36860))

(assert (= (and b!36866 c!8077) b!36876))

(assert (= (and b!36866 (not c!8077)) b!36855))

(assert (= (and b!36871 c!8068) b!36858))

(assert (= (and b!36871 (not c!8068)) b!36866))

(assert (= (and b!36856 c!8066) b!36871))

(assert (= (and b!36856 (not c!8066)) b!36875))

(assert (= (and b!36852 c!8071) b!36854))

(assert (= (and b!36852 (not c!8071)) b!36864))

(assert (= (and b!36852 (not res!17435)) b!36872))

(assert (= (and b!36872 res!17419) b!36848))

(assert (= (and b!36848 res!17425) b!36867))

(assert (= (and b!36867 c!8070) b!36859))

(assert (= (and b!36867 (not c!8070)) b!36874))

(assert (= (and b!36852 c!8075) b!36850))

(assert (= (and b!36852 (not c!8075)) b!36878))

(assert (= (and b!36863 c!8076) b!36857))

(assert (= (and b!36863 (not c!8076)) b!36847))

(assert (= (and b!36852 c!8074) b!36868))

(assert (= (and b!36852 (not c!8074)) b!36863))

(assert (= (and b!36856 c!8069) b!36873))

(assert (= (and b!36856 (not c!8069)) b!36852))

(declare-fun b_lambda!9615 () Bool)

(assert (=> (not b_lambda!9615) (not d!18568)))

(declare-fun m!38283 () Bool)

(assert (=> b!36843 m!38283))

(declare-fun m!38285 () Bool)

(assert (=> d!18568 m!38285))

(declare-fun m!38287 () Bool)

(assert (=> b!36871 m!38287))

(assert (=> b!36770 d!18568))

(declare-fun b!36951 () Bool)

(declare-fun e!18975 () Expr!7)

(assert (=> b!36951 (= e!18975 (rhs!211 out!58))))

(declare-fun b!36952 () Bool)

(declare-fun e!18984 () Bool)

(declare-fun res!17499 () Bool)

(assert (=> b!36952 (= e!18984 res!17499)))

(assert (=> b!36952 true))

(declare-fun b!36953 () Bool)

(declare-fun e!18986 () Bool)

(declare-fun res!17500 () Bool)

(assert (=> b!36953 (= e!18986 res!17500)))

(assert (=> b!36953 true))

(assert (=> b!36953 true))

(declare-fun e!18991 () Bool)

(declare-fun lt!7412 () Bool)

(declare-fun b!36954 () Bool)

(declare-fun lt!7410 () Bool)

(declare-fun lt!7403 () Bool)

(assert (=> b!36954 (= e!18991 (ite lt!7410 (or lt!7412 lt!7403) (and (is-Not!8 out!58) lt!7412)))))

(assert (=> b!36954 (= lt!7412 e!18986)))

(declare-fun c!8106 () Bool)

(assert (=> b!36954 (= c!8106 (or lt!7410 (is-Not!8 out!58)))))

(assert (=> b!36954 (= lt!7410 false)))

(declare-fun d!18570 () Bool)

(declare-fun res!17507 () Bool)

(declare-fun e!18974 () Bool)

(assert (=> d!18570 (=> res!17507 e!18974)))

(assert (=> d!18570 (= res!17507 (is-Implies!8 out!58))))

(assert (=> d!18570 (= (existsImplies!0 out!58) e!18974)))

(declare-fun b!36955 () Bool)

(declare-fun e!18985 () Bool)

(declare-fun lt!7408 () Bool)

(assert (=> b!36955 (= e!18985 lt!7408)))

(declare-fun b!36956 () Bool)

(declare-fun e!18992 () Bool)

(declare-fun res!17503 () Bool)

(assert (=> b!36956 (= e!18992 res!17503)))

(assert (=> b!36956 true))

(declare-fun b!36957 () Bool)

(declare-fun e!18982 () Bool)

(declare-fun lt!7400 () Bool)

(assert (=> b!36957 (= e!18982 lt!7400)))

(declare-fun b!36958 () Bool)

(declare-fun lt!7407 () Bool)

(assert (=> b!36958 (= e!18992 (existsImplies!0 (ite lt!7407 (lhs!210 out!58) (ite (is-Or!8 out!58) (lhs!212 out!58) (ite false (lhs!211 out!58) (e!18854 out!58))))))))

(declare-fun b!36959 () Bool)

(declare-fun e!18972 () Bool)

(declare-fun e!18993 () Expr!7)

(assert (=> b!36959 (= e!18972 (existsImplies!0 e!18993))))

(declare-fun c!8109 () Bool)

(declare-fun lt!7411 () Bool)

(assert (=> b!36959 (= c!8109 lt!7411)))

(declare-fun b!36960 () Bool)

(declare-fun e!18976 () Bool)

(declare-fun e!18981 () Bool)

(assert (=> b!36960 (= e!18976 e!18981)))

(declare-fun res!17505 () Bool)

(assert (=> b!36960 (=> (not res!17505) (not e!18981))))

(declare-fun lt!7401 () Bool)

(assert (=> b!36960 (= res!17505 (not lt!7401))))

(declare-fun b!36961 () Bool)

(declare-fun lt!7413 () Bool)

(assert (=> b!36961 (= e!18984 lt!7413)))

(declare-fun b!36962 () Bool)

(declare-fun e!18978 () Bool)

(assert (=> b!36962 (= e!18974 e!18978)))

(declare-fun c!8104 () Bool)

(assert (=> b!36962 (= c!8104 lt!7407)))

(assert (=> b!36962 (= lt!7400 e!18972)))

(declare-fun c!8116 () Bool)

(declare-fun e!18994 () Bool)

(assert (=> b!36962 (= c!8116 e!18994)))

(declare-fun res!17511 () Bool)

(assert (=> b!36962 (=> res!17511 e!18994)))

(assert (=> b!36962 (= res!17511 lt!7411)))

(assert (=> b!36962 (= lt!7411 (and lt!7407 (not lt!7408)))))

(assert (=> b!36962 (= lt!7408 e!18992)))

(declare-fun c!8110 () Bool)

(assert (=> b!36962 (= c!8110 (or lt!7407 (is-Or!8 out!58) (is-Not!8 out!58)))))

(assert (=> b!36962 (= lt!7407 (is-And!8 out!58))))

(declare-fun b!36963 () Bool)

(declare-fun e!18990 () Bool)

(assert (=> b!36963 (= e!18994 e!18990)))

(declare-fun res!17509 () Bool)

(assert (=> b!36963 (=> (not res!17509) (not e!18990))))

(assert (=> b!36963 (= res!17509 (not lt!7407))))

(declare-fun b!36964 () Bool)

(declare-fun res!17496 () Bool)

(assert (=> b!36964 (= e!18972 res!17496)))

(assert (=> b!36964 true))

(declare-fun b!36965 () Bool)

(declare-fun e!18988 () Bool)

(declare-fun res!17504 () Bool)

(assert (=> b!36965 (= e!18988 res!17504)))

(assert (=> b!36965 true))

(declare-fun b!36966 () Bool)

(declare-fun e!18973 () Bool)

(declare-fun res!17502 () Bool)

(assert (=> b!36966 (= e!18973 res!17502)))

(assert (=> b!36966 true))

(declare-fun b!36967 () Bool)

(declare-fun e!18983 () Bool)

(declare-fun e!18980 () Bool)

(assert (=> b!36967 (= e!18983 e!18980)))

(declare-fun res!17498 () Bool)

(assert (=> b!36967 (=> (not res!17498) (not e!18980))))

(declare-fun lt!7404 () Bool)

(assert (=> b!36967 (= res!17498 (not lt!7404))))

(declare-fun b!36968 () Bool)

(assert (=> b!36968 (= e!18990 e!18976)))

(declare-fun res!17510 () Bool)

(assert (=> b!36968 (=> res!17510 e!18976)))

(declare-fun lt!7405 () Bool)

(assert (=> b!36968 (= res!17510 (and lt!7401 (not lt!7405)))))

(assert (=> b!36968 (= lt!7405 e!18988)))

(declare-fun c!8111 () Bool)

(assert (=> b!36968 (= c!8111 (or lt!7401 (is-Not!8 out!58)))))

(assert (=> b!36968 (= lt!7401 (is-Or!8 out!58))))

(declare-fun b!36969 () Bool)

(assert (=> b!36969 (= e!18988 lt!7408)))

(declare-fun b!36970 () Bool)

(declare-fun e!18977 () Bool)

(assert (=> b!36970 (= e!18977 (not e!18984))))

(declare-fun c!8113 () Bool)

(declare-fun lt!7402 () Bool)

(assert (=> b!36970 (= c!8113 (or lt!7402 (is-Not!8 out!58)))))

(declare-fun b!36971 () Bool)

(assert (=> b!36971 (= e!18991 (or lt!7413 lt!7403))))

(declare-fun b!36972 () Bool)

(declare-fun res!17506 () Bool)

(assert (=> b!36972 (= e!18982 res!17506)))

(assert (=> b!36972 true))

(declare-fun b!36973 () Bool)

(declare-fun e!18989 () Bool)

(assert (=> b!36973 (= e!18989 lt!7405)))

(declare-fun b!36974 () Bool)

(declare-fun e!18979 () Bool)

(assert (=> b!36974 (= e!18979 (not e!18973))))

(declare-fun c!8108 () Bool)

(declare-fun lt!7406 () Bool)

(assert (=> b!36974 (= c!8108 (or lt!7406 (is-Not!8 out!58)))))

(declare-fun b!36975 () Bool)

(declare-fun res!17497 () Bool)

(assert (=> b!36975 (= e!18985 res!17497)))

(assert (=> b!36975 true))

(declare-fun b!36976 () Bool)

(declare-fun res!17501 () Bool)

(assert (=> b!36976 (= e!18989 res!17501)))

(assert (=> b!36976 true))

(declare-fun b!36977 () Bool)

(assert (=> b!36977 (= e!18975 (rhs!212 out!58))))

(declare-fun b!36978 () Bool)

(assert (=> b!36978 (= e!18993 (rhs!210 out!58))))

(declare-fun b!36979 () Bool)

(assert (=> b!36979 (= e!18978 (or lt!7408 lt!7400))))

(declare-fun b!36980 () Bool)

(declare-fun e!18987 () Bool)

(assert (=> b!36980 (= e!18987 (not e!18989))))

(declare-fun c!8112 () Bool)

(declare-fun lt!7409 () Bool)

(assert (=> b!36980 (= c!8112 (or lt!7409 (is-Not!8 out!58)))))

(declare-fun b!36981 () Bool)

(assert (=> b!36981 (= e!18993 e!18975)))

(declare-fun c!8115 () Bool)

(assert (=> b!36981 (= c!8115 e!18979)))

(declare-fun res!17513 () Bool)

(assert (=> b!36981 (=> (not res!17513) (not e!18979))))

(assert (=> b!36981 (= res!17513 lt!7406)))

(assert (=> b!36981 (= lt!7406 (is-Or!8 out!58))))

(declare-fun b!36982 () Bool)

(assert (=> b!36982 (= e!18986 lt!7413)))

(declare-fun b!36983 () Bool)

(assert (=> b!36983 (= e!18981 e!18987)))

(declare-fun res!17495 () Bool)

(assert (=> b!36983 (=> (not res!17495) (not e!18987))))

(assert (=> b!36983 (= res!17495 lt!7409)))

(assert (=> b!36983 (= lt!7409 false)))

(declare-fun b!36984 () Bool)

(assert (=> b!36984 (= e!18973 lt!7408)))

(declare-fun b!36985 () Bool)

(assert (=> b!36985 (= e!18978 e!18991)))

(declare-fun c!8114 () Bool)

(assert (=> b!36985 (= c!8114 lt!7404)))

(assert (=> b!36985 (= lt!7403 e!18982)))

(declare-fun c!8105 () Bool)

(assert (=> b!36985 (= c!8105 e!18983)))

(declare-fun res!17508 () Bool)

(assert (=> b!36985 (=> res!17508 e!18983)))

(assert (=> b!36985 (= res!17508 (and lt!7404 (not lt!7413)))))

(assert (=> b!36985 (= lt!7413 e!18985)))

(declare-fun c!8107 () Bool)

(assert (=> b!36985 (= c!8107 (or lt!7404 (is-Not!8 out!58)))))

(assert (=> b!36985 (= lt!7404 (is-Or!8 out!58))))

(declare-fun b!36986 () Bool)

(assert (=> b!36986 (= e!18980 e!18977)))

(declare-fun res!17512 () Bool)

(assert (=> b!36986 (=> (not res!17512) (not e!18977))))

(assert (=> b!36986 (= res!17512 lt!7402)))

(assert (=> b!36986 (= lt!7402 false)))

(assert (= (and d!18570 (not res!17507)) b!36962))

(assert (= (and b!36962 c!8110) b!36958))

(assert (= (and b!36962 (not c!8110)) b!36956))

(assert (= (and b!36962 (not res!17511)) b!36963))

(assert (= (and b!36963 res!17509) b!36968))

(assert (= (and b!36968 c!8111) b!36969))

(assert (= (and b!36968 (not c!8111)) b!36965))

(assert (= (and b!36968 (not res!17510)) b!36960))

(assert (= (and b!36960 res!17505) b!36983))

(assert (= (and b!36983 res!17495) b!36980))

(assert (= (and b!36980 c!8112) b!36973))

(assert (= (and b!36980 (not c!8112)) b!36976))

(assert (= (and b!36981 res!17513) b!36974))

(assert (= (and b!36974 c!8108) b!36984))

(assert (= (and b!36974 (not c!8108)) b!36966))

(assert (= (and b!36981 c!8115) b!36977))

(assert (= (and b!36981 (not c!8115)) b!36951))

(assert (= (and b!36959 c!8109) b!36978))

(assert (= (and b!36959 (not c!8109)) b!36981))

(assert (= (and b!36962 c!8116) b!36959))

(assert (= (and b!36962 (not c!8116)) b!36964))

(assert (= (and b!36985 c!8107) b!36955))

(assert (= (and b!36985 (not c!8107)) b!36975))

(assert (= (and b!36985 (not res!17508)) b!36967))

(assert (= (and b!36967 res!17498) b!36986))

(assert (= (and b!36986 res!17512) b!36970))

(assert (= (and b!36970 c!8113) b!36961))

(assert (= (and b!36970 (not c!8113)) b!36952))

(assert (= (and b!36985 c!8105) b!36957))

(assert (= (and b!36985 (not c!8105)) b!36972))

(assert (= (and b!36954 c!8106) b!36982))

(assert (= (and b!36954 (not c!8106)) b!36953))

(assert (= (and b!36985 c!8114) b!36971))

(assert (= (and b!36985 (not c!8114)) b!36954))

(assert (= (and b!36962 c!8104) b!36979))

(assert (= (and b!36962 (not c!8104)) b!36985))

(declare-fun m!38289 () Bool)

(assert (=> b!36958 m!38289))

(declare-fun m!38291 () Bool)

(assert (=> b!36959 m!38291))

(assert (=> b!36769 d!18570))

(declare-fun b_lambda!9617 () Bool)

(assert (= b_lambda!9615 (or b!36770 b_lambda!9617)))

(declare-fun bs!11340 () Bool)

(declare-fun d!18572 () Bool)

(assert (= bs!11340 (and d!18572 b!36770)))

(assert (=> bs!11340 (= (dynLambda!649 lambda!4214 out!58) (is-Implies!8 out!58))))

(assert (=> d!18568 d!18572))

(push 1)

(assert (not b_lambda!9617))

(assert (not b!36843))

(assert (not b!36959))

(assert (not b!36871))

(assert (not b!36958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10212 () Bool)

(assert start!10212)

(declare-fun b!74003 () Bool)

(declare-fun res!36379 () Bool)

(declare-fun e!40002 () Bool)

(assert (=> b!74003 (=> (not res!36379) (not e!40002))))

(declare-fun inductVal!737 () Bool)

(declare-datatypes () ((Formula!74 (Implies!78 (lhs!1335 Formula!74) (rhs!1335 Formula!74)) (And!78 (lhs!1336 Formula!74) (rhs!1336 Formula!74)) (Or!78 (lhs!1337 Formula!74) (rhs!1337 Formula!74)) (Literal!72 (id!4935 (_ BitVec 32))) (Not!78 (f!4673 Formula!74)))))

(declare-fun f!4611 () Formula!74)

(declare-fun nnfIsStable!0 (Formula!74) Bool)

(assert (=> b!74003 (= res!36379 (= inductVal!737 (nnfIsStable!0 (rhs!1335 f!4611))))))

(declare-fun b!74002 () Bool)

(declare-fun res!36376 () Bool)

(assert (=> b!74002 (=> (not res!36376) (not e!40002))))

(assert (=> b!74002 (= res!36376 (is-Implies!78 f!4611))))

(declare-fun b!74004 () Bool)

(declare-fun res!36378 () Bool)

(assert (=> b!74004 (=> (not res!36378) (not e!40002))))

(declare-fun inductVal!745 () Bool)

(assert (=> b!74004 (= res!36378 (= inductVal!745 (nnfIsStable!0 (lhs!1335 f!4611))))))

(declare-fun res!36377 () Bool)

(assert (=> start!10212 (=> (not res!36377) (not e!40002))))

(declare-fun isNNF!0 (Formula!74) Bool)

(assert (=> start!10212 (= res!36377 (isNNF!0 f!4611))))

(assert (=> start!10212 e!40002))

(assert (=> start!10212 true))

(declare-fun b!74005 () Bool)

(declare-fun nnf!0 (Formula!74) Formula!74)

(assert (=> b!74005 (= e!40002 (not (= (nnf!0 f!4611) f!4611)))))

(assert (= (and start!10212 res!36377) b!74002))

(assert (= (and b!74002 res!36376) b!74003))

(assert (= (and b!74003 res!36379) b!74004))

(assert (= (and b!74004 res!36378) b!74005))

(declare-fun m!72884 () Bool)

(assert (=> b!74003 m!72884))

(declare-fun m!72886 () Bool)

(assert (=> b!74004 m!72886))

(declare-fun m!72888 () Bool)

(assert (=> start!10212 m!72888))

(declare-fun m!72890 () Bool)

(assert (=> b!74005 m!72890))

(push 1)

(assert (not b!74005))

(assert (not b!74004))

(assert (not b!74003))

(assert (not start!10212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!74070 () Bool)

(declare-fun e!40047 () Formula!74)

(declare-fun lt!15845 () Bool)

(assert (=> b!74070 (= e!40047 (nnf!0 (ite lt!15845 (rhs!1336 f!4611) (ite (is-Or!78 f!4611) (rhs!1337 f!4611) (ite (is-Implies!78 f!4611) (rhs!1335 f!4611) (ite (and (is-Not!78 f!4611) (is-And!78 (f!4673 f!4611))) (Not!78 (rhs!1336 (f!4673 f!4611))) (ite (and (is-Not!78 f!4611) (is-Or!78 (f!4673 f!4611))) (Not!78 (rhs!1337 (f!4673 f!4611))) (Not!78 (rhs!1335 (f!4673 f!4611))))))))))))

(declare-fun b!74071 () Bool)

(declare-fun e!40036 () Formula!74)

(declare-fun lt!15853 () Formula!74)

(assert (=> b!74071 (= e!40036 lt!15853)))

(declare-fun b!74072 () Bool)

(declare-fun e!40038 () Formula!74)

(declare-fun res!36435 () Formula!74)

(assert (=> b!74072 (= e!40038 res!36435)))

(assert (=> b!74072 true))

(declare-fun b!74073 () Bool)

(declare-fun e!40042 () Formula!74)

(declare-fun res!36441 () Formula!74)

(assert (=> b!74073 (= e!40042 res!36441)))

(assert (=> b!74073 true))

(declare-fun b!74074 () Bool)

(declare-fun e!40050 () Formula!74)

(declare-fun e!40041 () Formula!74)

(assert (=> b!74074 (= e!40050 e!40041)))

(declare-fun c!17970 () Bool)

(declare-fun lt!15847 () Bool)

(assert (=> b!74074 (= c!17970 lt!15847)))

(declare-fun lt!15855 () Formula!74)

(assert (=> b!74074 (= lt!15855 e!40038)))

(declare-fun c!17974 () Bool)

(assert (=> b!74074 (= c!17974 (or lt!15847 (and (is-Not!78 f!4611) (is-Or!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Implies!78 (f!4673 f!4611)))))))

(declare-fun lt!15849 () Formula!74)

(declare-fun e!40049 () Formula!74)

(assert (=> b!74074 (= lt!15849 e!40049)))

(declare-fun c!17968 () Bool)

(assert (=> b!74074 (= c!17968 (or lt!15847 (and (is-Not!78 f!4611) (is-Or!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Implies!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Not!78 (f!4673 f!4611)))))))

(assert (=> b!74074 (= lt!15847 (and (is-Not!78 f!4611) (is-And!78 (f!4673 f!4611))))))

(declare-fun b!74075 () Bool)

(declare-fun e!40045 () Formula!74)

(declare-fun res!36437 () Formula!74)

(assert (=> b!74075 (= e!40045 res!36437)))

(assert (=> b!74075 true))

(declare-fun b!74076 () Bool)

(assert (=> b!74076 (= e!40041 (Or!78 lt!15849 lt!15855))))

(declare-fun b!74077 () Bool)

(declare-fun e!40046 () Formula!74)

(declare-fun lt!15852 () Formula!74)

(declare-fun lt!15846 () Formula!74)

(assert (=> b!74077 (= e!40046 (And!78 lt!15852 lt!15846))))

(declare-fun lt!15858 () Bool)

(declare-fun b!74078 () Bool)

(declare-fun lt!15841 () Formula!74)

(assert (=> b!74078 (= e!40046 (ite lt!15858 (And!78 lt!15841 lt!15846) (ite (and (is-Not!78 f!4611) (is-Not!78 (f!4673 f!4611))) lt!15841 f!4611)))))

(declare-fun e!40039 () Formula!74)

(assert (=> b!74078 (= lt!15841 e!40039)))

(declare-fun c!17980 () Bool)

(assert (=> b!74078 (= c!17980 (or lt!15858 (and (is-Not!78 f!4611) (is-Not!78 (f!4673 f!4611)))))))

(assert (=> b!74078 (= lt!15858 (and (is-Not!78 f!4611) (is-Implies!78 (f!4673 f!4611))))))

(declare-fun b!74079 () Bool)

(declare-fun lt!15854 () Formula!74)

(assert (=> b!74079 (= e!40042 lt!15854)))

(declare-fun b!74080 () Bool)

(declare-fun e!40037 () Formula!74)

(assert (=> b!74080 (= e!40037 lt!15849)))

(declare-fun b!74081 () Bool)

(declare-fun e!40043 () Formula!74)

(declare-fun res!36444 () Formula!74)

(assert (=> b!74081 (= e!40043 res!36444)))

(assert (=> b!74081 true))

(declare-fun b!74082 () Bool)

(declare-fun lt!15844 () Formula!74)

(assert (=> b!74082 (= e!40038 lt!15844)))

(declare-fun b!74083 () Bool)

(assert (=> b!74083 (= e!40039 lt!15852)))

(declare-fun b!74084 () Bool)

(declare-fun e!40040 () Formula!74)

(declare-fun lt!15842 () Formula!74)

(assert (=> b!74084 (= e!40040 lt!15842)))

(declare-fun b!74085 () Bool)

(declare-fun lt!15857 () Formula!74)

(assert (=> b!74085 (= e!40050 (Implies!78 lt!15857 lt!15844))))

(declare-fun b!74086 () Bool)

(declare-fun lt!15850 () Formula!74)

(assert (=> b!74086 (= e!40043 lt!15850)))

(declare-fun b!74087 () Bool)

(declare-fun e!40048 () Formula!74)

(assert (=> b!74087 (= e!40048 (Or!78 lt!15854 lt!15850))))

(declare-fun b!74088 () Bool)

(assert (=> b!74088 (= e!40041 e!40046)))

(declare-fun c!17972 () Bool)

(declare-fun lt!15851 () Bool)

(assert (=> b!74088 (= c!17972 lt!15851)))

(declare-fun e!40035 () Formula!74)

(assert (=> b!74088 (= lt!15846 e!40035)))

(declare-fun c!17973 () Bool)

(assert (=> b!74088 (= c!17973 (or lt!15851 (and (is-Not!78 f!4611) (is-Implies!78 (f!4673 f!4611)))))))

(assert (=> b!74088 (= lt!15852 e!40037)))

(declare-fun c!17975 () Bool)

(assert (=> b!74088 (= c!17975 (or lt!15851 (and (is-Not!78 f!4611) (is-Implies!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Not!78 (f!4673 f!4611)))))))

(assert (=> b!74088 (= lt!15851 (and (is-Not!78 f!4611) (is-Or!78 (f!4673 f!4611))))))

(declare-fun b!74089 () Bool)

(declare-fun res!36436 () Formula!74)

(assert (=> b!74089 (= e!40047 res!36436)))

(assert (=> b!74089 true))

(declare-fun b!74090 () Bool)

(assert (=> b!74090 (= e!40049 lt!15857)))

(declare-fun b!74091 () Bool)

(declare-fun res!36443 () Formula!74)

(assert (=> b!74091 (= e!40037 res!36443)))

(assert (=> b!74091 true))

(declare-fun b!74092 () Bool)

(declare-fun res!36442 () Formula!74)

(assert (=> b!74092 (= e!40036 res!36442)))

(assert (=> b!74092 true))

(declare-fun b!74093 () Bool)

(assert (=> b!74093 (= e!40048 e!40050)))

(declare-fun c!17981 () Bool)

(declare-fun lt!15848 () Bool)

(assert (=> b!74093 (= c!17981 lt!15848)))

(assert (=> b!74093 (= lt!15844 e!40043)))

(declare-fun c!17976 () Bool)

(assert (=> b!74093 (= c!17976 (or lt!15848 (and (is-Not!78 f!4611) (is-And!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Or!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Implies!78 (f!4673 f!4611)))))))

(assert (=> b!74093 (= lt!15857 e!40042)))

(declare-fun c!17978 () Bool)

(assert (=> b!74093 (= c!17978 (or lt!15848 (and (is-Not!78 f!4611) (is-And!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Or!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Implies!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Not!78 (f!4673 f!4611)))))))

(assert (=> b!74093 (= lt!15848 (is-Implies!78 f!4611))))

(declare-fun b!74094 () Bool)

(declare-fun res!36438 () Formula!74)

(assert (=> b!74094 (= e!40049 res!36438)))

(assert (=> b!74094 true))

(declare-fun b!74095 () Bool)

(declare-fun res!36440 () Formula!74)

(assert (=> b!74095 (= e!40040 res!36440)))

(assert (=> b!74095 true))

(declare-fun b!74096 () Bool)

(declare-fun e!40044 () Formula!74)

(assert (=> b!74096 (= e!40044 e!40048)))

(declare-fun c!17969 () Bool)

(declare-fun lt!15856 () Bool)

(assert (=> b!74096 (= c!17969 lt!15856)))

(assert (=> b!74096 (= lt!15850 e!40036)))

(declare-fun c!17967 () Bool)

(assert (=> b!74096 (= c!17967 (or lt!15856 (is-Implies!78 f!4611) (and (is-Not!78 f!4611) (is-And!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Or!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Implies!78 (f!4673 f!4611)))))))

(assert (=> b!74096 (= lt!15854 e!40040)))

(declare-fun c!17979 () Bool)

(assert (=> b!74096 (= c!17979 (or lt!15856 (is-Implies!78 f!4611) (and (is-Not!78 f!4611) (is-And!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Or!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Implies!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Not!78 (f!4673 f!4611)))))))

(assert (=> b!74096 (= lt!15856 (is-Or!78 f!4611))))

(declare-fun b!74097 () Bool)

(assert (=> b!74097 (= e!40035 lt!15855)))

(declare-fun b!74098 () Bool)

(assert (=> b!74098 (= e!40045 (nnf!0 (ite lt!15845 (lhs!1336 f!4611) (ite (is-Or!78 f!4611) (lhs!1337 f!4611) (ite (is-Implies!78 f!4611) (lhs!1335 f!4611) (ite (and (is-Not!78 f!4611) (is-And!78 (f!4673 f!4611))) (Not!78 (lhs!1336 (f!4673 f!4611))) (ite (and (is-Not!78 f!4611) (is-Or!78 (f!4673 f!4611))) (Not!78 (lhs!1337 (f!4673 f!4611))) (ite (and (is-Not!78 f!4611) (is-Implies!78 (f!4673 f!4611))) (lhs!1335 (f!4673 f!4611)) (f!4673 (f!4673 f!4611))))))))))))

(declare-fun b!74099 () Bool)

(declare-fun res!36439 () Formula!74)

(assert (=> b!74099 (= e!40039 res!36439)))

(assert (=> b!74099 true))

(assert (=> b!74099 true))

(declare-fun b!74100 () Bool)

(assert (=> b!74100 (= e!40044 (And!78 lt!15842 lt!15853))))

(declare-fun b!74101 () Bool)

(declare-fun res!36445 () Formula!74)

(assert (=> b!74101 (= e!40035 res!36445)))

(assert (=> b!74101 true))

(declare-fun d!54791 () Bool)

(declare-fun lt!15843 () Formula!74)

(assert (=> d!54791 (isNNF!0 lt!15843)))

(assert (=> d!54791 (= lt!15843 e!40044)))

(declare-fun c!17977 () Bool)

(assert (=> d!54791 (= c!17977 lt!15845)))

(assert (=> d!54791 (= lt!15853 e!40047)))

(declare-fun c!17971 () Bool)

(assert (=> d!54791 (= c!17971 (or lt!15845 (is-Or!78 f!4611) (is-Implies!78 f!4611) (and (is-Not!78 f!4611) (is-And!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Or!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Implies!78 (f!4673 f!4611)))))))

(assert (=> d!54791 (= lt!15842 e!40045)))

(declare-fun c!17966 () Bool)

(assert (=> d!54791 (= c!17966 (or lt!15845 (is-Or!78 f!4611) (is-Implies!78 f!4611) (and (is-Not!78 f!4611) (is-And!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Or!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Implies!78 (f!4673 f!4611))) (and (is-Not!78 f!4611) (is-Not!78 (f!4673 f!4611)))))))

(assert (=> d!54791 (= lt!15845 (is-And!78 f!4611))))

(assert (=> d!54791 (= (nnf!0 f!4611) lt!15843)))

(assert (= (and d!54791 c!17966) b!74098))

(assert (= (and d!54791 (not c!17966)) b!74075))

(assert (= (and d!54791 c!17971) b!74070))

(assert (= (and d!54791 (not c!17971)) b!74089))

(assert (= (and b!74096 c!17979) b!74084))

(assert (= (and b!74096 (not c!17979)) b!74095))

(assert (= (and b!74096 c!17967) b!74071))

(assert (= (and b!74096 (not c!17967)) b!74092))

(assert (= (and b!74093 c!17978) b!74079))

(assert (= (and b!74093 (not c!17978)) b!74073))

(assert (= (and b!74093 c!17976) b!74086))

(assert (= (and b!74093 (not c!17976)) b!74081))

(assert (= (and b!74074 c!17968) b!74090))

(assert (= (and b!74074 (not c!17968)) b!74094))

(assert (= (and b!74074 c!17974) b!74082))

(assert (= (and b!74074 (not c!17974)) b!74072))

(assert (= (and b!74088 c!17975) b!74080))

(assert (= (and b!74088 (not c!17975)) b!74091))

(assert (= (and b!74088 c!17973) b!74097))

(assert (= (and b!74088 (not c!17973)) b!74101))

(assert (= (and b!74078 c!17980) b!74083))

(assert (= (and b!74078 (not c!17980)) b!74099))

(assert (= (and b!74088 c!17972) b!74077))

(assert (= (and b!74088 (not c!17972)) b!74078))

(assert (= (and b!74074 c!17970) b!74076))

(assert (= (and b!74074 (not c!17970)) b!74088))

(assert (= (and b!74093 c!17981) b!74085))

(assert (= (and b!74093 (not c!17981)) b!74074))

(assert (= (and b!74096 c!17969) b!74087))

(assert (= (and b!74096 (not c!17969)) b!74093))

(assert (= (and d!54791 c!17977) b!74100))

(assert (= (and d!54791 (not c!17977)) b!74096))

(declare-fun m!72892 () Bool)

(assert (=> b!74070 m!72892))

(declare-fun m!72894 () Bool)

(assert (=> b!74098 m!72894))

(declare-fun m!72896 () Bool)

(assert (=> d!54791 m!72896))

(assert (=> b!74005 d!54791))

(declare-fun b!74126 () Bool)

(declare-fun e!40066 () Bool)

(declare-fun e!40065 () Bool)

(assert (=> b!74126 (= e!40066 e!40065)))

(declare-fun c!17994 () Bool)

(declare-fun lt!15873 () Bool)

(assert (=> b!74126 (= c!17994 (or lt!15873 (is-Or!78 (lhs!1335 f!4611))))))

(assert (=> b!74126 (= lt!15873 (is-And!78 (lhs!1335 f!4611)))))

(declare-fun b!74127 () Bool)

(declare-fun e!40068 () Formula!74)

(declare-fun lt!15872 () Formula!74)

(assert (=> b!74127 (= e!40068 lt!15872)))

(declare-fun b!74128 () Bool)

(declare-fun e!40064 () Bool)

(declare-fun res!36478 () Bool)

(assert (=> b!74128 (= e!40064 res!36478)))

(assert (=> b!74128 true))

(declare-fun b!74129 () Bool)

(declare-fun e!40067 () Formula!74)

(assert (=> b!74129 (= e!40067 (nnf!0 (lhs!1335 f!4611)))))

(declare-fun b!74130 () Bool)

(declare-fun e!40063 () Bool)

(declare-fun lt!15869 () Bool)

(assert (=> b!74130 (= e!40063 (nnfIsStable!0 (ite lt!15869 (rhs!1335 (lhs!1335 f!4611)) (ite (is-And!78 (lhs!1335 f!4611)) (rhs!1336 (lhs!1335 f!4611)) (ite (is-Or!78 (lhs!1335 f!4611)) (rhs!1337 (lhs!1335 f!4611)) (f!4673 (lhs!1335 f!4611)))))))))

(declare-fun b!74131 () Bool)

(assert (=> b!74131 (= e!40066 (= lt!15872 (lhs!1335 f!4611)))))

(declare-fun b!74132 () Bool)

(declare-fun res!36476 () Formula!74)

(assert (=> b!74132 (= e!40067 res!36476)))

(assert (=> b!74132 true))

(declare-fun d!54793 () Bool)

(assert (=> d!54793 e!40066))

(declare-fun c!17997 () Bool)

(assert (=> d!54793 (= c!17997 lt!15869)))

(assert (=> d!54793 (= lt!15872 e!40067)))

(declare-fun c!17999 () Bool)

(assert (=> d!54793 (= c!17999 (or lt!15869 (is-And!78 (lhs!1335 f!4611)) (is-Or!78 (lhs!1335 f!4611))))))

(declare-fun lt!15870 () Bool)

(assert (=> d!54793 (= lt!15870 e!40064)))

(declare-fun c!17996 () Bool)

(assert (=> d!54793 (= c!17996 (or lt!15869 (is-And!78 (lhs!1335 f!4611)) (is-Or!78 (lhs!1335 f!4611))))))

(declare-fun lt!15871 () Bool)

(assert (=> d!54793 (= lt!15871 e!40063)))

(declare-fun c!17998 () Bool)

(assert (=> d!54793 (= c!17998 (or lt!15869 (is-And!78 (lhs!1335 f!4611)) (is-Or!78 (lhs!1335 f!4611)) (not (is-Literal!72 (lhs!1335 f!4611)))))))

(assert (=> d!54793 (= lt!15869 (is-Implies!78 (lhs!1335 f!4611)))))

(assert (=> d!54793 (isNNF!0 (lhs!1335 f!4611))))

(assert (=> d!54793 (= (nnfIsStable!0 (lhs!1335 f!4611)) true)))

(declare-fun b!74133 () Bool)

(assert (=> b!74133 (= e!40064 (nnfIsStable!0 (ite lt!15869 (lhs!1335 (lhs!1335 f!4611)) (ite (is-And!78 (lhs!1335 f!4611)) (lhs!1336 (lhs!1335 f!4611)) (lhs!1337 (lhs!1335 f!4611))))))))

(declare-fun b!74134 () Bool)

(assert (=> b!74134 (= e!40065 (= e!40068 (lhs!1335 f!4611)))))

(declare-fun c!17995 () Bool)

(assert (=> b!74134 (= c!17995 (or lt!15873 (is-Or!78 (lhs!1335 f!4611))))))

(declare-fun b!74135 () Bool)

(assert (=> b!74135 (= e!40065 (= (nnf!0 (lhs!1335 f!4611)) (lhs!1335 f!4611)))))

(declare-fun b!74136 () Bool)

(declare-fun res!36477 () Bool)

(assert (=> b!74136 (= e!40063 res!36477)))

(assert (=> b!74136 true))

(declare-fun b!74137 () Bool)

(declare-fun res!36475 () Formula!74)

(assert (=> b!74137 (= e!40068 res!36475)))

(assert (=> b!74137 true))

(assert (=> b!74137 true))

(assert (= (and d!54793 c!17998) b!74130))

(assert (= (and d!54793 (not c!17998)) b!74136))

(assert (= (and d!54793 c!17996) b!74133))

(assert (= (and d!54793 (not c!17996)) b!74128))

(assert (= (and d!54793 c!17999) b!74129))

(assert (= (and d!54793 (not c!17999)) b!74132))

(assert (= (and b!74134 c!17995) b!74127))

(assert (= (and b!74134 (not c!17995)) b!74137))

(assert (= (and b!74126 c!17994) b!74134))

(assert (= (and b!74126 (not c!17994)) b!74135))

(assert (= (and d!54793 c!17997) b!74131))

(assert (= (and d!54793 (not c!17997)) b!74126))

(declare-fun m!72898 () Bool)

(assert (=> b!74135 m!72898))

(declare-fun m!72900 () Bool)

(assert (=> d!54793 m!72900))

(declare-fun m!72902 () Bool)

(assert (=> b!74130 m!72902))

(declare-fun m!72904 () Bool)

(assert (=> b!74133 m!72904))

(assert (=> b!74129 m!72898))

(assert (=> b!74004 d!54793))

(declare-fun b!74138 () Bool)

(declare-fun e!40072 () Bool)

(declare-fun e!40071 () Bool)

(assert (=> b!74138 (= e!40072 e!40071)))

(declare-fun c!18000 () Bool)

(declare-fun lt!15878 () Bool)

(assert (=> b!74138 (= c!18000 (or lt!15878 (is-Or!78 (rhs!1335 f!4611))))))

(assert (=> b!74138 (= lt!15878 (is-And!78 (rhs!1335 f!4611)))))

(declare-fun b!74139 () Bool)

(declare-fun e!40074 () Formula!74)

(declare-fun lt!15877 () Formula!74)

(assert (=> b!74139 (= e!40074 lt!15877)))

(declare-fun b!74140 () Bool)

(declare-fun e!40070 () Bool)

(declare-fun res!36482 () Bool)

(assert (=> b!74140 (= e!40070 res!36482)))

(assert (=> b!74140 true))

(declare-fun b!74141 () Bool)

(declare-fun e!40073 () Formula!74)

(assert (=> b!74141 (= e!40073 (nnf!0 (rhs!1335 f!4611)))))

(declare-fun b!74142 () Bool)

(declare-fun e!40069 () Bool)

(declare-fun lt!15874 () Bool)

(assert (=> b!74142 (= e!40069 (nnfIsStable!0 (ite lt!15874 (rhs!1335 (rhs!1335 f!4611)) (ite (is-And!78 (rhs!1335 f!4611)) (rhs!1336 (rhs!1335 f!4611)) (ite (is-Or!78 (rhs!1335 f!4611)) (rhs!1337 (rhs!1335 f!4611)) (f!4673 (rhs!1335 f!4611)))))))))

(declare-fun b!74143 () Bool)

(assert (=> b!74143 (= e!40072 (= lt!15877 (rhs!1335 f!4611)))))

(declare-fun b!74144 () Bool)

(declare-fun res!36480 () Formula!74)

(assert (=> b!74144 (= e!40073 res!36480)))

(assert (=> b!74144 true))

(declare-fun d!54795 () Bool)

(assert (=> d!54795 e!40072))

(declare-fun c!18003 () Bool)

(assert (=> d!54795 (= c!18003 lt!15874)))

(assert (=> d!54795 (= lt!15877 e!40073)))

(declare-fun c!18005 () Bool)

(assert (=> d!54795 (= c!18005 (or lt!15874 (is-And!78 (rhs!1335 f!4611)) (is-Or!78 (rhs!1335 f!4611))))))

(declare-fun lt!15875 () Bool)

(assert (=> d!54795 (= lt!15875 e!40070)))

(declare-fun c!18002 () Bool)

(assert (=> d!54795 (= c!18002 (or lt!15874 (is-And!78 (rhs!1335 f!4611)) (is-Or!78 (rhs!1335 f!4611))))))

(declare-fun lt!15876 () Bool)

(assert (=> d!54795 (= lt!15876 e!40069)))

(declare-fun c!18004 () Bool)

(assert (=> d!54795 (= c!18004 (or lt!15874 (is-And!78 (rhs!1335 f!4611)) (is-Or!78 (rhs!1335 f!4611)) (not (is-Literal!72 (rhs!1335 f!4611)))))))

(assert (=> d!54795 (= lt!15874 (is-Implies!78 (rhs!1335 f!4611)))))

(assert (=> d!54795 (isNNF!0 (rhs!1335 f!4611))))

(assert (=> d!54795 (= (nnfIsStable!0 (rhs!1335 f!4611)) true)))

(declare-fun b!74145 () Bool)

(assert (=> b!74145 (= e!40070 (nnfIsStable!0 (ite lt!15874 (lhs!1335 (rhs!1335 f!4611)) (ite (is-And!78 (rhs!1335 f!4611)) (lhs!1336 (rhs!1335 f!4611)) (lhs!1337 (rhs!1335 f!4611))))))))

(declare-fun b!74146 () Bool)

(assert (=> b!74146 (= e!40071 (= e!40074 (rhs!1335 f!4611)))))

(declare-fun c!18001 () Bool)

(assert (=> b!74146 (= c!18001 (or lt!15878 (is-Or!78 (rhs!1335 f!4611))))))

(declare-fun b!74147 () Bool)

(assert (=> b!74147 (= e!40071 (= (nnf!0 (rhs!1335 f!4611)) (rhs!1335 f!4611)))))

(declare-fun b!74148 () Bool)

(declare-fun res!36481 () Bool)

(assert (=> b!74148 (= e!40069 res!36481)))

(assert (=> b!74148 true))

(declare-fun b!74149 () Bool)

(declare-fun res!36479 () Formula!74)

(assert (=> b!74149 (= e!40074 res!36479)))

(assert (=> b!74149 true))

(assert (=> b!74149 true))

(assert (= (and d!54795 c!18004) b!74142))

(assert (= (and d!54795 (not c!18004)) b!74148))

(assert (= (and d!54795 c!18002) b!74145))

(assert (= (and d!54795 (not c!18002)) b!74140))

(assert (= (and d!54795 c!18005) b!74141))

(assert (= (and d!54795 (not c!18005)) b!74144))

(assert (= (and b!74146 c!18001) b!74139))

(assert (= (and b!74146 (not c!18001)) b!74149))

(assert (= (and b!74138 c!18000) b!74146))

(assert (= (and b!74138 (not c!18000)) b!74147))

(assert (= (and d!54795 c!18003) b!74143))

(assert (= (and d!54795 (not c!18003)) b!74138))

(declare-fun m!72906 () Bool)

(assert (=> b!74147 m!72906))

(declare-fun m!72908 () Bool)

(assert (=> d!54795 m!72908))

(declare-fun m!72910 () Bool)

(assert (=> b!74142 m!72910))

(declare-fun m!72912 () Bool)

(assert (=> b!74145 m!72912))

(assert (=> b!74141 m!72906))

(assert (=> b!74003 d!54795))

(declare-fun b!74198 () Bool)

(declare-fun e!40114 () Bool)

(declare-fun lt!15901 () Bool)

(assert (=> b!74198 (= e!40114 lt!15901)))

(declare-fun b!74199 () Bool)

(declare-fun res!36520 () Bool)

(assert (=> b!74199 (= e!40114 res!36520)))

(assert (=> b!74199 true))

(declare-fun b!74200 () Bool)

(declare-fun e!40107 () Bool)

(assert (=> b!74200 (= e!40107 lt!15901)))

(declare-fun b!74201 () Bool)

(declare-fun e!40109 () Formula!74)

(assert (=> b!74201 (= e!40109 (rhs!1337 f!4611))))

(declare-fun b!74202 () Bool)

(declare-fun e!40116 () Bool)

(declare-fun e!40113 () Bool)

(assert (=> b!74202 (= e!40116 e!40113)))

(declare-fun lt!15899 () Bool)

(declare-fun c!18028 () Bool)

(declare-fun lt!15898 () Bool)

(assert (=> b!74202 (= c!18028 (or (and lt!15899 lt!15898) (and (not lt!15899) (is-Implies!78 f!4611) lt!15898)))))

(declare-fun b!74203 () Bool)

(declare-fun e!40105 () Formula!74)

(assert (=> b!74203 (= e!40105 e!40109)))

(declare-fun c!18034 () Bool)

(declare-fun e!40115 () Bool)

(assert (=> b!74203 (= c!18034 e!40115)))

(declare-fun res!36517 () Bool)

(assert (=> b!74203 (=> (not res!36517) (not e!40115))))

(declare-fun lt!15902 () Bool)

(assert (=> b!74203 (= res!36517 lt!15902)))

(assert (=> b!74203 (= lt!15902 (is-Or!78 f!4611))))

(declare-fun b!74204 () Bool)

(declare-fun res!36525 () Bool)

(assert (=> b!74204 (= e!40107 res!36525)))

(assert (=> b!74204 true))

(declare-fun d!54797 () Bool)

(declare-fun c!18032 () Bool)

(declare-fun lt!15900 () Bool)

(assert (=> d!54797 (= c!18032 lt!15900)))

(declare-fun lt!15904 () Bool)

(declare-fun e!40103 () Bool)

(assert (=> d!54797 (= lt!15904 e!40103)))

(declare-fun c!18026 () Bool)

(declare-fun e!40104 () Bool)

(assert (=> d!54797 (= c!18026 e!40104)))

(declare-fun res!36519 () Bool)

(assert (=> d!54797 (=> res!36519 e!40104)))

(declare-fun lt!15905 () Bool)

(assert (=> d!54797 (= res!36519 lt!15905)))

(assert (=> d!54797 (= lt!15905 (and lt!15900 lt!15901))))

(declare-fun e!40111 () Bool)

(assert (=> d!54797 (= lt!15901 e!40111)))

(declare-fun c!18031 () Bool)

(assert (=> d!54797 (= c!18031 (or lt!15900 (is-Or!78 f!4611) (is-Implies!78 f!4611)))))

(assert (=> d!54797 (= lt!15900 (is-And!78 f!4611))))

(declare-fun e!40108 () Bool)

(assert (=> d!54797 (= (isNNF!0 f!4611) e!40108)))

(declare-fun b!74205 () Bool)

(assert (=> b!74205 (= e!40113 lt!15904)))

(declare-fun b!74206 () Bool)

(assert (=> b!74206 (= e!40109 (rhs!1335 f!4611))))

(declare-fun b!74207 () Bool)

(declare-fun res!36522 () Bool)

(assert (=> b!74207 (= e!40103 res!36522)))

(assert (=> b!74207 true))

(declare-fun b!74208 () Bool)

(assert (=> b!74208 (= e!40115 e!40114)))

(declare-fun c!18030 () Bool)

(assert (=> b!74208 (= c!18030 (or lt!15902 (is-Implies!78 f!4611)))))

(declare-fun b!74209 () Bool)

(assert (=> b!74209 (= e!40103 (isNNF!0 e!40105))))

(declare-fun c!18035 () Bool)

(assert (=> b!74209 (= c!18035 lt!15905)))

(declare-fun b!74210 () Bool)

(assert (=> b!74210 (= e!40108 (and lt!15901 lt!15904))))

(declare-fun b!74211 () Bool)

(declare-fun e!40106 () Bool)

(assert (=> b!74211 (= e!40104 e!40106)))

(declare-fun res!36521 () Bool)

(assert (=> b!74211 (=> (not res!36521) (not e!40106))))

(assert (=> b!74211 (= res!36521 (not lt!15900))))

(declare-fun b!74212 () Bool)

(declare-fun e!40112 () Bool)

(assert (=> b!74212 (= e!40112 lt!15901)))

(declare-fun b!74213 () Bool)

(declare-fun e!40110 () Bool)

(assert (=> b!74213 (= e!40110 e!40116)))

(declare-fun res!36523 () Bool)

(assert (=> b!74213 (=> (not res!36523) (not e!40116))))

(assert (=> b!74213 (= res!36523 lt!15898)))

(declare-fun b!74214 () Bool)

(assert (=> b!74214 (= e!40108 e!40110)))

(declare-fun c!18029 () Bool)

(assert (=> b!74214 (= c!18029 (or lt!15899 (is-Implies!78 f!4611)))))

(assert (=> b!74214 (= lt!15898 e!40112)))

(declare-fun c!18033 () Bool)

(assert (=> b!74214 (= c!18033 (or lt!15899 (is-Implies!78 f!4611)))))

(assert (=> b!74214 (= lt!15899 (is-Or!78 f!4611))))

(declare-fun b!74215 () Bool)

(declare-fun res!36518 () Bool)

(assert (=> b!74215 (= e!40111 res!36518)))

(assert (=> b!74215 true))

(declare-fun b!74216 () Bool)

(assert (=> b!74216 (= e!40111 (isNNF!0 (ite lt!15900 (lhs!1336 f!4611) (ite (is-Or!78 f!4611) (lhs!1337 f!4611) (lhs!1335 f!4611)))))))

(declare-fun b!74217 () Bool)

(assert (=> b!74217 (= e!40105 (rhs!1336 f!4611))))

(declare-fun lt!15897 () Bool)

(declare-fun lt!15903 () Bool)

(declare-fun b!74218 () Bool)

(assert (=> b!74218 (= e!40106 (or (and lt!15897 lt!15903) (and (not lt!15897) (is-Implies!78 f!4611) lt!15903)))))

(assert (=> b!74218 (= lt!15903 e!40107)))

(declare-fun c!18027 () Bool)

(assert (=> b!74218 (= c!18027 (or lt!15897 (is-Implies!78 f!4611)))))

(assert (=> b!74218 (= lt!15897 (is-Or!78 f!4611))))

(declare-fun b!74219 () Bool)

(declare-fun res!36526 () Bool)

(assert (=> b!74219 (= e!40113 res!36526)))

(assert (=> b!74219 true))

(assert (=> b!74219 true))

(declare-fun b!74220 () Bool)

(assert (=> b!74220 (= e!40110 (or (and (is-Not!78 f!4611) (is-Literal!72 (f!4673 f!4611))) (not (is-Not!78 f!4611))))))

(declare-fun b!74221 () Bool)

(declare-fun res!36524 () Bool)

(assert (=> b!74221 (= e!40112 res!36524)))

(assert (=> b!74221 true))

(assert (= (and d!54797 c!18031) b!74216))

(assert (= (and d!54797 (not c!18031)) b!74215))

(assert (= (and d!54797 (not res!36519)) b!74211))

(assert (= (and b!74211 res!36521) b!74218))

(assert (= (and b!74218 c!18027) b!74200))

(assert (= (and b!74218 (not c!18027)) b!74204))

(assert (= (and b!74203 res!36517) b!74208))

(assert (= (and b!74208 c!18030) b!74198))

(assert (= (and b!74208 (not c!18030)) b!74199))

(assert (= (and b!74203 c!18034) b!74201))

(assert (= (and b!74203 (not c!18034)) b!74206))

(assert (= (and b!74209 c!18035) b!74217))

(assert (= (and b!74209 (not c!18035)) b!74203))

(assert (= (and d!54797 c!18026) b!74209))

(assert (= (and d!54797 (not c!18026)) b!74207))

(assert (= (and b!74214 c!18033) b!74212))

(assert (= (and b!74214 (not c!18033)) b!74221))

(assert (= (and b!74213 res!36523) b!74202))

(assert (= (and b!74202 c!18028) b!74205))

(assert (= (and b!74202 (not c!18028)) b!74219))

(assert (= (and b!74214 c!18029) b!74213))

(assert (= (and b!74214 (not c!18029)) b!74220))

(assert (= (and d!54797 c!18032) b!74210))

(assert (= (and d!54797 (not c!18032)) b!74214))

(declare-fun m!72914 () Bool)

(assert (=> b!74209 m!72914))

(declare-fun m!72916 () Bool)

(assert (=> b!74216 m!72916))

(assert (=> start!10212 d!54797))

(push 1)

(assert (not b!74142))

(assert (not b!74129))

(assert (not b!74133))

(assert (not b!74147))

(assert (not d!54791))

(assert (not b!74070))

(assert (not b!74130))

(assert (not d!54793))

(assert (not b!74141))

(assert (not b!74135))

(assert (not b!74209))

(assert (not b!74145))

(assert (not b!74216))

(assert (not d!54795))

(assert (not b!74098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


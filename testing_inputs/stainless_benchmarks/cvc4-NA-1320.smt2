; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9284 () Bool)

(assert start!9284)

(declare-fun res!31204 () Bool)

(declare-fun e!35779 () Bool)

(assert (=> start!9284 (=> (not res!31204) (not e!35779))))

(declare-datatypes () ((Formula!22 (And!27 (lhs!869 Formula!22) (rhs!869 Formula!22)) (Literal!21 (id!4802 Int)) (Implies!27 (lhs!870 Formula!22) (rhs!870 Formula!22)) (Or!27 (lhs!871 Formula!22) (rhs!871 Formula!22)) (Not!27 (f!4121 Formula!22)))))

(declare-fun f!3790 () Formula!22)

(declare-fun isNNF!1 (Formula!22) Bool)

(assert (=> start!9284 (= res!31204 (isNNF!1 f!3790))))

(assert (=> start!9284 e!35779))

(assert (=> start!9284 true))

(declare-fun b!65986 () Bool)

(declare-fun res!31205 () Bool)

(assert (=> b!65986 (=> (not res!31205) (not e!35779))))

(assert (=> b!65986 (= res!31205 (and (not (is-And!27 f!3790)) (is-Literal!21 f!3790)))))

(declare-fun b!65987 () Bool)

(declare-fun nnf!1 (Formula!22) Formula!22)

(assert (=> b!65987 (= e!35779 (not (= (nnf!1 f!3790) f!3790)))))

(assert (= (and start!9284 res!31204) b!65986))

(assert (= (and b!65986 res!31205) b!65987))

(declare-fun m!69591 () Bool)

(assert (=> start!9284 m!69591))

(declare-fun m!69593 () Bool)

(assert (=> b!65987 m!69593))

(push 1)

(assert (not start!9284))

(assert (not b!65987))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!66002 () Bool)

(declare-fun e!35789 () Bool)

(declare-fun res!31219 () Bool)

(assert (=> b!66002 (= e!35789 res!31219)))

(assert (=> b!66002 true))

(declare-fun b!66003 () Bool)

(declare-fun e!35791 () Bool)

(declare-fun e!35790 () Bool)

(assert (=> b!66003 (= e!35791 e!35790)))

(declare-fun c!14880 () Bool)

(declare-fun lt!12792 () Bool)

(declare-fun lt!12791 () Bool)

(declare-fun lt!12793 () Bool)

(assert (=> b!66003 (= c!14880 (or lt!12792 (and (not lt!12791) (is-Or!27 f!3790) lt!12793)))))

(declare-fun b!66004 () Bool)

(assert (=> b!66004 (= e!35790 (isNNF!1 (ite lt!12792 (rhs!869 f!3790) (rhs!871 f!3790))))))

(declare-fun d!53402 () Bool)

(declare-fun c!14881 () Bool)

(assert (=> d!53402 (= c!14881 (or lt!12791 (is-Or!27 f!3790)))))

(assert (=> d!53402 (= lt!12792 (and lt!12791 lt!12793))))

(assert (=> d!53402 (= lt!12793 e!35789)))

(declare-fun c!14882 () Bool)

(assert (=> d!53402 (= c!14882 (or lt!12791 (is-Or!27 f!3790)))))

(assert (=> d!53402 (= lt!12791 (is-And!27 f!3790))))

(declare-fun e!35788 () Bool)

(assert (=> d!53402 (= (isNNF!1 f!3790) e!35788)))

(declare-fun b!66005 () Bool)

(declare-fun res!31220 () Bool)

(assert (=> b!66005 (= e!35790 res!31220)))

(assert (=> b!66005 true))

(assert (=> b!66005 true))

(declare-fun b!66006 () Bool)

(assert (=> b!66006 (= e!35789 (isNNF!1 (ite lt!12791 (lhs!869 f!3790) (lhs!871 f!3790))))))

(declare-fun b!66007 () Bool)

(assert (=> b!66007 (= e!35788 (and (not (is-Implies!27 f!3790)) (or (and (is-Not!27 f!3790) (is-Literal!21 (f!4121 f!3790))) (not (is-Not!27 f!3790)))))))

(declare-fun b!66008 () Bool)

(assert (=> b!66008 (= e!35788 e!35791)))

(declare-fun res!31218 () Bool)

(assert (=> b!66008 (=> (not res!31218) (not e!35791))))

(assert (=> b!66008 (= res!31218 lt!12793)))

(assert (= (and d!53402 c!14882) b!66006))

(assert (= (and d!53402 (not c!14882)) b!66002))

(assert (= (and b!66008 res!31218) b!66003))

(assert (= (and b!66003 c!14880) b!66004))

(assert (= (and b!66003 (not c!14880)) b!66005))

(assert (= (and d!53402 c!14881) b!66008))

(assert (= (and d!53402 (not c!14881)) b!66007))

(declare-fun m!69595 () Bool)

(assert (=> b!66004 m!69595))

(declare-fun m!69597 () Bool)

(assert (=> b!66006 m!69597))

(assert (=> start!9284 d!53402))

(declare-fun b!66069 () Bool)

(declare-fun e!35836 () Formula!22)

(declare-fun lt!12838 () Formula!22)

(assert (=> b!66069 (= e!35836 lt!12838)))

(declare-fun b!66070 () Bool)

(declare-fun e!35832 () Formula!22)

(declare-fun lt!12840 () Formula!22)

(assert (=> b!66070 (= e!35832 (Or!27 lt!12838 lt!12840))))

(declare-fun b!66071 () Bool)

(declare-fun e!35822 () Formula!22)

(declare-fun res!31277 () Formula!22)

(assert (=> b!66071 (= e!35822 res!31277)))

(assert (=> b!66071 true))

(declare-fun b!66072 () Bool)

(declare-fun e!35834 () Formula!22)

(declare-fun lt!12843 () Formula!22)

(declare-fun lt!12833 () Formula!22)

(assert (=> b!66072 (= e!35834 (And!27 lt!12843 lt!12833))))

(declare-fun b!66073 () Bool)

(declare-fun lt!12834 () Formula!22)

(assert (=> b!66073 (= e!35822 lt!12834)))

(declare-fun b!66074 () Bool)

(declare-fun e!35833 () Formula!22)

(declare-fun res!31275 () Formula!22)

(assert (=> b!66074 (= e!35833 res!31275)))

(assert (=> b!66074 true))

(declare-fun b!66075 () Bool)

(declare-fun e!35831 () Formula!22)

(declare-fun e!35830 () Formula!22)

(assert (=> b!66075 (= e!35831 e!35830)))

(declare-fun c!14918 () Bool)

(declare-fun lt!12832 () Bool)

(assert (=> b!66075 (= c!14918 lt!12832)))

(declare-fun e!35824 () Formula!22)

(assert (=> b!66075 (= lt!12834 e!35824)))

(declare-fun c!14920 () Bool)

(assert (=> b!66075 (= c!14920 (or lt!12832 (and (is-Not!27 f!3790) (is-And!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Or!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Implies!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Not!27 (f!4121 f!3790)))))))

(assert (=> b!66075 (= lt!12832 (is-Implies!27 f!3790))))

(declare-fun b!66076 () Bool)

(declare-fun e!35825 () Formula!22)

(declare-fun res!31273 () Formula!22)

(assert (=> b!66076 (= e!35825 res!31273)))

(assert (=> b!66076 true))

(declare-fun d!53404 () Bool)

(declare-fun lt!12831 () Formula!22)

(assert (=> d!53404 (isNNF!1 lt!12831)))

(assert (=> d!53404 (= lt!12831 e!35834)))

(declare-fun c!14917 () Bool)

(declare-fun lt!12836 () Bool)

(assert (=> d!53404 (= c!14917 lt!12836)))

(assert (=> d!53404 (= lt!12833 e!35825)))

(declare-fun c!14914 () Bool)

(assert (=> d!53404 (= c!14914 (or lt!12836 (is-Or!27 f!3790) (and (not (is-Implies!27 f!3790)) (or (and (is-Not!27 f!3790) (is-And!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Or!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Implies!27 (f!4121 f!3790)))))))))

(assert (=> d!53404 (= lt!12843 e!35833)))

(declare-fun c!14923 () Bool)

(assert (=> d!53404 (= c!14923 (or lt!12836 (is-Or!27 f!3790) (is-Implies!27 f!3790) (and (is-Not!27 f!3790) (is-And!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Or!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Implies!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Not!27 (f!4121 f!3790)))))))

(assert (=> d!53404 (= lt!12836 (is-And!27 f!3790))))

(assert (=> d!53404 (= (nnf!1 f!3790) lt!12831)))

(declare-fun b!66077 () Bool)

(declare-fun res!31274 () Formula!22)

(assert (=> b!66077 (= e!35836 res!31274)))

(assert (=> b!66077 true))

(declare-fun b!66078 () Bool)

(declare-fun res!31278 () Formula!22)

(assert (=> b!66078 (= e!35824 res!31278)))

(assert (=> b!66078 true))

(declare-fun b!66079 () Bool)

(assert (=> b!66079 (= e!35834 e!35831)))

(declare-fun c!14925 () Bool)

(declare-fun lt!12839 () Bool)

(assert (=> b!66079 (= c!14925 lt!12839)))

(declare-fun lt!12841 () Formula!22)

(declare-fun e!35823 () Formula!22)

(assert (=> b!66079 (= lt!12841 e!35823)))

(declare-fun c!14922 () Bool)

(assert (=> b!66079 (= c!14922 (or lt!12839 (and (not (is-Implies!27 f!3790)) (or (and (is-Not!27 f!3790) (is-And!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Or!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Implies!27 (f!4121 f!3790)))))))))

(declare-fun lt!12844 () Formula!22)

(declare-fun e!35826 () Formula!22)

(assert (=> b!66079 (= lt!12844 e!35826)))

(declare-fun c!14924 () Bool)

(assert (=> b!66079 (= c!14924 (or lt!12839 (is-Implies!27 f!3790) (and (is-Not!27 f!3790) (is-And!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Or!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Implies!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Not!27 (f!4121 f!3790)))))))

(assert (=> b!66079 (= lt!12839 (is-Or!27 f!3790))))

(declare-fun b!66080 () Bool)

(declare-fun e!35828 () Formula!22)

(declare-fun res!31280 () Formula!22)

(assert (=> b!66080 (= e!35828 res!31280)))

(assert (=> b!66080 true))

(assert (=> b!66080 true))

(declare-fun b!66081 () Bool)

(assert (=> b!66081 (= e!35830 lt!12834)))

(declare-fun e!35829 () Formula!22)

(declare-fun lt!12828 () Bool)

(declare-fun lt!12842 () Formula!22)

(declare-fun lt!12835 () Formula!22)

(declare-fun b!66082 () Bool)

(assert (=> b!66082 (= e!35829 (ite lt!12828 (And!27 lt!12842 lt!12835) (ite (and (is-Not!27 f!3790) (is-Not!27 (f!4121 f!3790))) lt!12842 f!3790)))))

(assert (=> b!66082 (= lt!12842 e!35828)))

(declare-fun c!14921 () Bool)

(assert (=> b!66082 (= c!14921 (or lt!12828 (and (is-Not!27 f!3790) (is-Not!27 (f!4121 f!3790)))))))

(assert (=> b!66082 (= lt!12828 (and (is-Not!27 f!3790) (is-Implies!27 (f!4121 f!3790))))))

(declare-fun b!66083 () Bool)

(declare-fun res!31271 () Formula!22)

(assert (=> b!66083 (= e!35826 res!31271)))

(assert (=> b!66083 true))

(declare-fun b!66084 () Bool)

(assert (=> b!66084 (= e!35824 lt!12844)))

(declare-fun b!66085 () Bool)

(declare-fun res!31272 () Formula!22)

(assert (=> b!66085 (= e!35823 res!31272)))

(assert (=> b!66085 true))

(declare-fun b!66086 () Bool)

(assert (=> b!66086 (= e!35826 lt!12843)))

(declare-fun b!66087 () Bool)

(assert (=> b!66087 (= e!35832 e!35829)))

(declare-fun c!14926 () Bool)

(declare-fun lt!12837 () Bool)

(assert (=> b!66087 (= c!14926 lt!12837)))

(declare-fun e!35827 () Formula!22)

(assert (=> b!66087 (= lt!12835 e!35827)))

(declare-fun c!14919 () Bool)

(assert (=> b!66087 (= c!14919 (or lt!12837 (and (is-Not!27 f!3790) (is-Implies!27 (f!4121 f!3790)))))))

(declare-fun lt!12830 () Formula!22)

(assert (=> b!66087 (= lt!12830 e!35836)))

(declare-fun c!14916 () Bool)

(assert (=> b!66087 (= c!14916 (or lt!12837 (and (is-Not!27 f!3790) (is-Implies!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Not!27 (f!4121 f!3790)))))))

(assert (=> b!66087 (= lt!12837 (and (is-Not!27 f!3790) (is-Or!27 (f!4121 f!3790))))))

(declare-fun b!66088 () Bool)

(assert (=> b!66088 (= e!35827 lt!12840)))

(declare-fun b!66089 () Bool)

(assert (=> b!66089 (= e!35829 (And!27 lt!12830 lt!12835))))

(declare-fun b!66090 () Bool)

(assert (=> b!66090 (= e!35828 lt!12830)))

(declare-fun b!66091 () Bool)

(assert (=> b!66091 (= e!35831 (Or!27 lt!12844 lt!12841))))

(declare-fun b!66092 () Bool)

(assert (=> b!66092 (= e!35825 (nnf!1 (ite lt!12836 (rhs!869 f!3790) (ite (is-Or!27 f!3790) (rhs!871 f!3790) (ite (and (is-Not!27 f!3790) (is-And!27 (f!4121 f!3790))) (Not!27 (rhs!869 (f!4121 f!3790))) (ite (and (is-Not!27 f!3790) (is-Or!27 (f!4121 f!3790))) (Not!27 (rhs!871 (f!4121 f!3790))) (Not!27 (rhs!870 (f!4121 f!3790)))))))))))

(declare-fun b!66093 () Bool)

(assert (=> b!66093 (= e!35833 (nnf!1 (ite lt!12836 (lhs!869 f!3790) (ite (is-Or!27 f!3790) (lhs!871 f!3790) (ite (is-Implies!27 f!3790) (Or!27 (Not!27 (lhs!870 f!3790)) (rhs!870 f!3790)) (ite (and (is-Not!27 f!3790) (is-And!27 (f!4121 f!3790))) (Not!27 (lhs!869 (f!4121 f!3790))) (ite (and (is-Not!27 f!3790) (is-Or!27 (f!4121 f!3790))) (Not!27 (lhs!871 (f!4121 f!3790))) (ite (and (is-Not!27 f!3790) (is-Implies!27 (f!4121 f!3790))) (lhs!870 (f!4121 f!3790)) (f!4121 (f!4121 f!3790))))))))))))

(declare-fun b!66094 () Bool)

(declare-fun res!31279 () Formula!22)

(assert (=> b!66094 (= e!35827 res!31279)))

(assert (=> b!66094 true))

(declare-fun b!66095 () Bool)

(declare-fun e!35835 () Formula!22)

(assert (=> b!66095 (= e!35835 lt!12841)))

(declare-fun b!66096 () Bool)

(declare-fun res!31276 () Formula!22)

(assert (=> b!66096 (= e!35835 res!31276)))

(assert (=> b!66096 true))

(declare-fun b!66097 () Bool)

(assert (=> b!66097 (= e!35823 lt!12833)))

(declare-fun b!66098 () Bool)

(assert (=> b!66098 (= e!35830 e!35832)))

(declare-fun c!14927 () Bool)

(declare-fun lt!12829 () Bool)

(assert (=> b!66098 (= c!14927 lt!12829)))

(assert (=> b!66098 (= lt!12840 e!35835)))

(declare-fun c!14915 () Bool)

(assert (=> b!66098 (= c!14915 (or lt!12829 (and (is-Not!27 f!3790) (is-Or!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Implies!27 (f!4121 f!3790)))))))

(assert (=> b!66098 (= lt!12838 e!35822)))

(declare-fun c!14913 () Bool)

(assert (=> b!66098 (= c!14913 (or lt!12829 (and (is-Not!27 f!3790) (is-Or!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Implies!27 (f!4121 f!3790))) (and (is-Not!27 f!3790) (is-Not!27 (f!4121 f!3790)))))))

(assert (=> b!66098 (= lt!12829 (and (is-Not!27 f!3790) (is-And!27 (f!4121 f!3790))))))

(assert (= (and d!53404 c!14923) b!66093))

(assert (= (and d!53404 (not c!14923)) b!66074))

(assert (= (and d!53404 c!14914) b!66092))

(assert (= (and d!53404 (not c!14914)) b!66076))

(assert (= (and b!66079 c!14924) b!66086))

(assert (= (and b!66079 (not c!14924)) b!66083))

(assert (= (and b!66079 c!14922) b!66097))

(assert (= (and b!66079 (not c!14922)) b!66085))

(assert (= (and b!66075 c!14920) b!66084))

(assert (= (and b!66075 (not c!14920)) b!66078))

(assert (= (and b!66098 c!14913) b!66073))

(assert (= (and b!66098 (not c!14913)) b!66071))

(assert (= (and b!66098 c!14915) b!66095))

(assert (= (and b!66098 (not c!14915)) b!66096))

(assert (= (and b!66087 c!14916) b!66069))

(assert (= (and b!66087 (not c!14916)) b!66077))

(assert (= (and b!66087 c!14919) b!66088))

(assert (= (and b!66087 (not c!14919)) b!66094))

(assert (= (and b!66082 c!14921) b!66090))

(assert (= (and b!66082 (not c!14921)) b!66080))

(assert (= (and b!66087 c!14926) b!66089))

(assert (= (and b!66087 (not c!14926)) b!66082))

(assert (= (and b!66098 c!14927) b!66070))

(assert (= (and b!66098 (not c!14927)) b!66087))

(assert (= (and b!66075 c!14918) b!66081))

(assert (= (and b!66075 (not c!14918)) b!66098))

(assert (= (and b!66079 c!14925) b!66091))

(assert (= (and b!66079 (not c!14925)) b!66075))

(assert (= (and d!53404 c!14917) b!66072))

(assert (= (and d!53404 (not c!14917)) b!66079))

(declare-fun m!69599 () Bool)

(assert (=> d!53404 m!69599))

(declare-fun m!69601 () Bool)

(assert (=> b!66092 m!69601))

(declare-fun m!69603 () Bool)

(assert (=> b!66093 m!69603))

(assert (=> b!65987 d!53404))

(push 1)

(assert (not b!66004))

(assert (not b!66093))

(assert (not b!66006))

(assert (not b!66092))

(assert (not d!53404))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


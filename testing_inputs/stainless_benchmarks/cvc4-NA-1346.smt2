; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9448 () Bool)

(assert start!9448)

(declare-fun res!33384 () Bool)

(declare-fun e!37256 () Bool)

(assert (=> start!9448 (=> (not res!33384) (not e!37256))))

(declare-datatypes () ((Formula!46 (And!51 (lhs!941 Formula!46) (rhs!941 Formula!46)) (Literal!45 (id!4826 Int)) (Implies!51 (lhs!942 Formula!46) (rhs!942 Formula!46)) (Or!51 (lhs!943 Formula!46) (rhs!943 Formula!46)) (Not!51 (f!4197 Formula!46)))))

(declare-fun f!3853 () Formula!46)

(assert (=> start!9448 (= res!33384 (is-And!51 f!3853))))

(assert (=> start!9448 e!37256))

(assert (=> start!9448 true))

(declare-fun b!68843 () Bool)

(declare-fun res!33385 () Bool)

(assert (=> b!68843 (=> (not res!33385) (not e!37256))))

(declare-fun x$1!885 () Formula!46)

(declare-fun simplify!1 (Formula!46) Formula!46)

(assert (=> b!68843 (= res!33385 (= x$1!885 (And!51 (simplify!1 (lhs!941 f!3853)) (simplify!1 (rhs!941 f!3853)))))))

(declare-fun b!68844 () Bool)

(declare-fun isSimplified!1 (Formula!46) Bool)

(assert (=> b!68844 (= e!37256 (not (isSimplified!1 x$1!885)))))

(assert (= (and start!9448 res!33384) b!68843))

(assert (= (and b!68843 res!33385) b!68844))

(declare-fun m!70329 () Bool)

(assert (=> b!68843 m!70329))

(declare-fun m!70331 () Bool)

(assert (=> b!68843 m!70331))

(declare-fun m!70333 () Bool)

(assert (=> b!68844 m!70333))

(push 1)

(assert (not b!68844))

(assert (not b!68843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!68871 () Bool)

(declare-fun e!37278 () Bool)

(declare-fun lt!14146 () Bool)

(declare-fun lt!14145 () Bool)

(assert (=> b!68871 (= e!37278 (and lt!14146 lt!14145))))

(declare-fun d!53586 () Bool)

(declare-fun c!16099 () Bool)

(declare-fun lt!14149 () Bool)

(assert (=> d!53586 (= c!16099 lt!14149)))

(declare-fun e!37275 () Bool)

(assert (=> d!53586 (= lt!14145 e!37275)))

(declare-fun c!16101 () Bool)

(declare-fun e!37280 () Bool)

(assert (=> d!53586 (= c!16101 e!37280)))

(declare-fun res!33415 () Bool)

(assert (=> d!53586 (=> res!33415 e!37280)))

(declare-fun lt!14147 () Bool)

(assert (=> d!53586 (= res!33415 lt!14147)))

(assert (=> d!53586 (= lt!14147 (and lt!14149 lt!14146))))

(declare-fun e!37279 () Bool)

(assert (=> d!53586 (= lt!14146 e!37279)))

(declare-fun c!16102 () Bool)

(assert (=> d!53586 (= c!16102 (or lt!14149 (is-Or!51 x$1!885) (and (not (is-Implies!51 x$1!885)) (is-Not!51 x$1!885))))))

(assert (=> d!53586 (= lt!14149 (is-And!51 x$1!885))))

(assert (=> d!53586 (= (isSimplified!1 x$1!885) e!37278)))

(declare-fun b!68872 () Bool)

(declare-fun e!37276 () Bool)

(assert (=> b!68872 (= e!37280 e!37276)))

(declare-fun res!33414 () Bool)

(assert (=> b!68872 (=> (not res!33414) (not e!37276))))

(assert (=> b!68872 (= res!33414 (not lt!14149))))

(declare-fun b!68873 () Bool)

(declare-fun e!37277 () Bool)

(declare-fun res!33417 () Bool)

(assert (=> b!68873 (= e!37277 res!33417)))

(assert (=> b!68873 true))

(assert (=> b!68873 true))

(declare-fun b!68874 () Bool)

(declare-fun e!37274 () Bool)

(declare-fun e!37273 () Bool)

(assert (=> b!68874 (= e!37274 e!37273)))

(declare-fun c!16100 () Bool)

(declare-fun lt!14150 () Bool)

(assert (=> b!68874 (= c!16100 (or lt!14150 (and (not (is-Implies!51 x$1!885)) (is-Not!51 x$1!885))))))

(declare-fun b!68875 () Bool)

(assert (=> b!68875 (= e!37275 (isSimplified!1 (ite lt!14147 (rhs!941 x$1!885) (rhs!943 x$1!885))))))

(declare-fun b!68876 () Bool)

(declare-fun res!33411 () Bool)

(assert (=> b!68876 (= e!37279 res!33411)))

(assert (=> b!68876 true))

(declare-fun lt!14148 () Bool)

(declare-fun lt!14144 () Bool)

(declare-fun b!68877 () Bool)

(assert (=> b!68877 (= e!37278 (ite lt!14144 (and lt!14148 lt!14145) (and (not (is-Implies!51 x$1!885)) (or (not (is-Not!51 x$1!885)) lt!14148))))))

(assert (=> b!68877 (= lt!14148 e!37277)))

(declare-fun c!16103 () Bool)

(assert (=> b!68877 (= c!16103 (or lt!14144 (and (not (is-Implies!51 x$1!885)) (is-Not!51 x$1!885))))))

(assert (=> b!68877 (= lt!14144 (is-Or!51 x$1!885))))

(declare-fun b!68878 () Bool)

(assert (=> b!68878 (= e!37279 (isSimplified!1 (ite lt!14149 (lhs!941 x$1!885) (ite (is-Or!51 x$1!885) (lhs!943 x$1!885) (f!4197 x$1!885)))))))

(declare-fun b!68879 () Bool)

(assert (=> b!68879 (= e!37273 lt!14146)))

(declare-fun b!68880 () Bool)

(assert (=> b!68880 (= e!37276 e!37274)))

(declare-fun res!33416 () Bool)

(assert (=> b!68880 (=> (not res!33416) (not e!37274))))

(assert (=> b!68880 (= res!33416 lt!14150)))

(assert (=> b!68880 (= lt!14150 (is-Or!51 x$1!885))))

(declare-fun b!68881 () Bool)

(assert (=> b!68881 (= e!37277 lt!14146)))

(declare-fun b!68882 () Bool)

(declare-fun res!33412 () Bool)

(assert (=> b!68882 (= e!37273 res!33412)))

(assert (=> b!68882 true))

(declare-fun b!68883 () Bool)

(declare-fun res!33413 () Bool)

(assert (=> b!68883 (= e!37275 res!33413)))

(assert (=> b!68883 true))

(assert (= (and d!53586 c!16102) b!68878))

(assert (= (and d!53586 (not c!16102)) b!68876))

(assert (= (and d!53586 (not res!33415)) b!68872))

(assert (= (and b!68872 res!33414) b!68880))

(assert (= (and b!68880 res!33416) b!68874))

(assert (= (and b!68874 c!16100) b!68879))

(assert (= (and b!68874 (not c!16100)) b!68882))

(assert (= (and d!53586 c!16101) b!68875))

(assert (= (and d!53586 (not c!16101)) b!68883))

(assert (= (and b!68877 c!16103) b!68881))

(assert (= (and b!68877 (not c!16103)) b!68873))

(assert (= (and d!53586 c!16099) b!68871))

(assert (= (and d!53586 (not c!16099)) b!68877))

(declare-fun m!70335 () Bool)

(assert (=> b!68875 m!70335))

(declare-fun m!70337 () Bool)

(assert (=> b!68878 m!70337))

(assert (=> b!68844 d!53586))

(declare-fun b!68912 () Bool)

(declare-fun e!37300 () Formula!46)

(declare-fun lt!14175 () Formula!46)

(assert (=> b!68912 (= e!37300 lt!14175)))

(declare-fun b!68913 () Bool)

(declare-fun e!37298 () Formula!46)

(declare-fun lt!14174 () Formula!46)

(declare-fun lt!14172 () Formula!46)

(assert (=> b!68913 (= e!37298 (Or!51 lt!14174 lt!14172))))

(declare-fun b!68914 () Bool)

(declare-fun e!37301 () Formula!46)

(assert (=> b!68914 (= e!37301 lt!14174)))

(declare-fun b!68915 () Bool)

(declare-fun res!33443 () Formula!46)

(assert (=> b!68915 (= e!37301 res!33443)))

(assert (=> b!68915 true))

(assert (=> b!68915 true))

(declare-fun b!68916 () Bool)

(declare-fun e!37297 () Formula!46)

(declare-fun lt!14176 () Formula!46)

(assert (=> b!68916 (= e!37297 (And!51 lt!14175 lt!14176))))

(declare-fun b!68917 () Bool)

(declare-fun e!37296 () Formula!46)

(declare-fun lt!14171 () Bool)

(assert (=> b!68917 (= e!37296 (simplify!1 (ite lt!14171 (rhs!941 (lhs!941 f!3853)) (ite (is-Or!51 (lhs!941 f!3853)) (rhs!943 (lhs!941 f!3853)) (rhs!942 (lhs!941 f!3853))))))))

(declare-fun b!68918 () Bool)

(declare-fun e!37299 () Formula!46)

(declare-fun res!33446 () Formula!46)

(assert (=> b!68918 (= e!37299 res!33446)))

(assert (=> b!68918 true))

(declare-fun b!68919 () Bool)

(declare-fun e!37295 () Formula!46)

(declare-fun res!33447 () Formula!46)

(assert (=> b!68919 (= e!37295 res!33447)))

(assert (=> b!68919 true))

(declare-fun b!68920 () Bool)

(assert (=> b!68920 (= e!37299 (simplify!1 (ite lt!14171 (lhs!941 (lhs!941 f!3853)) (ite (is-Or!51 (lhs!941 f!3853)) (lhs!943 (lhs!941 f!3853)) (ite (is-Implies!51 (lhs!941 f!3853)) (lhs!942 (lhs!941 f!3853)) (f!4197 (lhs!941 f!3853)))))))))

(declare-fun b!68921 () Bool)

(declare-fun res!33444 () Formula!46)

(assert (=> b!68921 (= e!37296 res!33444)))

(assert (=> b!68921 true))

(declare-fun lt!14173 () Bool)

(declare-fun lt!14170 () Formula!46)

(declare-fun b!68922 () Bool)

(assert (=> b!68922 (= e!37298 (ite lt!14173 (Or!51 (Not!51 lt!14170) lt!14172) (ite (is-Not!51 (lhs!941 f!3853)) (Not!51 lt!14170) (lhs!941 f!3853))))))

(assert (=> b!68922 (= lt!14170 e!37301)))

(declare-fun c!16121 () Bool)

(assert (=> b!68922 (= c!16121 (or lt!14173 (is-Not!51 (lhs!941 f!3853))))))

(assert (=> b!68922 (= lt!14173 (is-Implies!51 (lhs!941 f!3853)))))

(declare-fun b!68923 () Bool)

(declare-fun res!33445 () Formula!46)

(assert (=> b!68923 (= e!37300 res!33445)))

(assert (=> b!68923 true))

(declare-fun b!68924 () Bool)

(assert (=> b!68924 (= e!37297 e!37298)))

(declare-fun c!16120 () Bool)

(declare-fun lt!14169 () Bool)

(assert (=> b!68924 (= c!16120 lt!14169)))

(assert (=> b!68924 (= lt!14172 e!37295)))

(declare-fun c!16122 () Bool)

(assert (=> b!68924 (= c!16122 (or lt!14169 (is-Implies!51 (lhs!941 f!3853))))))

(assert (=> b!68924 (= lt!14174 e!37300)))

(declare-fun c!16118 () Bool)

(assert (=> b!68924 (= c!16118 (or lt!14169 (is-Implies!51 (lhs!941 f!3853)) (is-Not!51 (lhs!941 f!3853))))))

(assert (=> b!68924 (= lt!14169 (is-Or!51 (lhs!941 f!3853)))))

(declare-fun b!68925 () Bool)

(assert (=> b!68925 (= e!37295 lt!14176)))

(declare-fun d!53588 () Bool)

(declare-fun lt!14177 () Formula!46)

(assert (=> d!53588 (isSimplified!1 lt!14177)))

(assert (=> d!53588 (= lt!14177 e!37297)))

(declare-fun c!16124 () Bool)

(assert (=> d!53588 (= c!16124 lt!14171)))

(assert (=> d!53588 (= lt!14176 e!37296)))

(declare-fun c!16123 () Bool)

(assert (=> d!53588 (= c!16123 (or lt!14171 (is-Or!51 (lhs!941 f!3853)) (is-Implies!51 (lhs!941 f!3853))))))

(assert (=> d!53588 (= lt!14175 e!37299)))

(declare-fun c!16119 () Bool)

(assert (=> d!53588 (= c!16119 (or lt!14171 (is-Or!51 (lhs!941 f!3853)) (is-Implies!51 (lhs!941 f!3853)) (is-Not!51 (lhs!941 f!3853))))))

(assert (=> d!53588 (= lt!14171 (is-And!51 (lhs!941 f!3853)))))

(assert (=> d!53588 (= (simplify!1 (lhs!941 f!3853)) lt!14177)))

(assert (= (and d!53588 c!16119) b!68920))

(assert (= (and d!53588 (not c!16119)) b!68918))

(assert (= (and d!53588 c!16123) b!68917))

(assert (= (and d!53588 (not c!16123)) b!68921))

(assert (= (and b!68924 c!16118) b!68912))

(assert (= (and b!68924 (not c!16118)) b!68923))

(assert (= (and b!68924 c!16122) b!68925))

(assert (= (and b!68924 (not c!16122)) b!68919))

(assert (= (and b!68922 c!16121) b!68914))

(assert (= (and b!68922 (not c!16121)) b!68915))

(assert (= (and b!68924 c!16120) b!68913))

(assert (= (and b!68924 (not c!16120)) b!68922))

(assert (= (and d!53588 c!16124) b!68916))

(assert (= (and d!53588 (not c!16124)) b!68924))

(declare-fun m!70339 () Bool)

(assert (=> b!68917 m!70339))

(declare-fun m!70341 () Bool)

(assert (=> b!68920 m!70341))

(declare-fun m!70343 () Bool)

(assert (=> d!53588 m!70343))

(assert (=> b!68843 d!53588))

(declare-fun b!68926 () Bool)

(declare-fun e!37307 () Formula!46)

(declare-fun lt!14184 () Formula!46)

(assert (=> b!68926 (= e!37307 lt!14184)))

(declare-fun b!68927 () Bool)

(declare-fun e!37305 () Formula!46)

(declare-fun lt!14183 () Formula!46)

(declare-fun lt!14181 () Formula!46)

(assert (=> b!68927 (= e!37305 (Or!51 lt!14183 lt!14181))))

(declare-fun b!68928 () Bool)

(declare-fun e!37308 () Formula!46)

(assert (=> b!68928 (= e!37308 lt!14183)))

(declare-fun b!68929 () Bool)

(declare-fun res!33448 () Formula!46)

(assert (=> b!68929 (= e!37308 res!33448)))

(assert (=> b!68929 true))

(assert (=> b!68929 true))

(declare-fun b!68930 () Bool)

(declare-fun e!37304 () Formula!46)

(declare-fun lt!14185 () Formula!46)

(assert (=> b!68930 (= e!37304 (And!51 lt!14184 lt!14185))))

(declare-fun b!68931 () Bool)

(declare-fun e!37303 () Formula!46)

(declare-fun lt!14180 () Bool)

(assert (=> b!68931 (= e!37303 (simplify!1 (ite lt!14180 (rhs!941 (rhs!941 f!3853)) (ite (is-Or!51 (rhs!941 f!3853)) (rhs!943 (rhs!941 f!3853)) (rhs!942 (rhs!941 f!3853))))))))

(declare-fun b!68932 () Bool)

(declare-fun e!37306 () Formula!46)

(declare-fun res!33451 () Formula!46)

(assert (=> b!68932 (= e!37306 res!33451)))

(assert (=> b!68932 true))

(declare-fun b!68933 () Bool)

(declare-fun e!37302 () Formula!46)

(declare-fun res!33452 () Formula!46)

(assert (=> b!68933 (= e!37302 res!33452)))

(assert (=> b!68933 true))

(declare-fun b!68934 () Bool)

(assert (=> b!68934 (= e!37306 (simplify!1 (ite lt!14180 (lhs!941 (rhs!941 f!3853)) (ite (is-Or!51 (rhs!941 f!3853)) (lhs!943 (rhs!941 f!3853)) (ite (is-Implies!51 (rhs!941 f!3853)) (lhs!942 (rhs!941 f!3853)) (f!4197 (rhs!941 f!3853)))))))))

(declare-fun b!68935 () Bool)

(declare-fun res!33449 () Formula!46)

(assert (=> b!68935 (= e!37303 res!33449)))

(assert (=> b!68935 true))

(declare-fun b!68936 () Bool)

(declare-fun lt!14182 () Bool)

(declare-fun lt!14179 () Formula!46)

(assert (=> b!68936 (= e!37305 (ite lt!14182 (Or!51 (Not!51 lt!14179) lt!14181) (ite (is-Not!51 (rhs!941 f!3853)) (Not!51 lt!14179) (rhs!941 f!3853))))))

(assert (=> b!68936 (= lt!14179 e!37308)))

(declare-fun c!16128 () Bool)

(assert (=> b!68936 (= c!16128 (or lt!14182 (is-Not!51 (rhs!941 f!3853))))))

(assert (=> b!68936 (= lt!14182 (is-Implies!51 (rhs!941 f!3853)))))

(declare-fun b!68937 () Bool)

(declare-fun res!33450 () Formula!46)

(assert (=> b!68937 (= e!37307 res!33450)))

(assert (=> b!68937 true))

(declare-fun b!68938 () Bool)

(assert (=> b!68938 (= e!37304 e!37305)))

(declare-fun c!16127 () Bool)

(declare-fun lt!14178 () Bool)

(assert (=> b!68938 (= c!16127 lt!14178)))

(assert (=> b!68938 (= lt!14181 e!37302)))

(declare-fun c!16129 () Bool)

(assert (=> b!68938 (= c!16129 (or lt!14178 (is-Implies!51 (rhs!941 f!3853))))))

(assert (=> b!68938 (= lt!14183 e!37307)))

(declare-fun c!16125 () Bool)

(assert (=> b!68938 (= c!16125 (or lt!14178 (is-Implies!51 (rhs!941 f!3853)) (is-Not!51 (rhs!941 f!3853))))))

(assert (=> b!68938 (= lt!14178 (is-Or!51 (rhs!941 f!3853)))))

(declare-fun b!68939 () Bool)

(assert (=> b!68939 (= e!37302 lt!14185)))

(declare-fun d!53590 () Bool)

(declare-fun lt!14186 () Formula!46)

(assert (=> d!53590 (isSimplified!1 lt!14186)))

(assert (=> d!53590 (= lt!14186 e!37304)))

(declare-fun c!16131 () Bool)

(assert (=> d!53590 (= c!16131 lt!14180)))

(assert (=> d!53590 (= lt!14185 e!37303)))

(declare-fun c!16130 () Bool)

(assert (=> d!53590 (= c!16130 (or lt!14180 (is-Or!51 (rhs!941 f!3853)) (is-Implies!51 (rhs!941 f!3853))))))

(assert (=> d!53590 (= lt!14184 e!37306)))

(declare-fun c!16126 () Bool)

(assert (=> d!53590 (= c!16126 (or lt!14180 (is-Or!51 (rhs!941 f!3853)) (is-Implies!51 (rhs!941 f!3853)) (is-Not!51 (rhs!941 f!3853))))))

(assert (=> d!53590 (= lt!14180 (is-And!51 (rhs!941 f!3853)))))

(assert (=> d!53590 (= (simplify!1 (rhs!941 f!3853)) lt!14186)))

(assert (= (and d!53590 c!16126) b!68934))

(assert (= (and d!53590 (not c!16126)) b!68932))

(assert (= (and d!53590 c!16130) b!68931))

(assert (= (and d!53590 (not c!16130)) b!68935))

(assert (= (and b!68938 c!16125) b!68926))

(assert (= (and b!68938 (not c!16125)) b!68937))

(assert (= (and b!68938 c!16129) b!68939))

(assert (= (and b!68938 (not c!16129)) b!68933))

(assert (= (and b!68936 c!16128) b!68928))

(assert (= (and b!68936 (not c!16128)) b!68929))

(assert (= (and b!68938 c!16127) b!68927))

(assert (= (and b!68938 (not c!16127)) b!68936))

(assert (= (and d!53590 c!16131) b!68930))

(assert (= (and d!53590 (not c!16131)) b!68938))

(declare-fun m!70345 () Bool)

(assert (=> b!68931 m!70345))

(declare-fun m!70347 () Bool)

(assert (=> b!68934 m!70347))

(declare-fun m!70349 () Bool)

(assert (=> d!53590 m!70349))

(assert (=> b!68843 d!53590))

(push 1)

(assert (not d!53588))

(assert (not b!68920))

(assert (not b!68878))

(assert (not d!53590))

(assert (not b!68931))

(assert (not b!68934))

(assert (not b!68917))

(assert (not b!68875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


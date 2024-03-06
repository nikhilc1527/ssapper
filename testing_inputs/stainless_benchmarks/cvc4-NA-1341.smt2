; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9416 () Bool)

(assert start!9416)

(declare-fun res!32990 () Bool)

(declare-fun e!36998 () Bool)

(assert (=> start!9416 (=> (not res!32990) (not e!36998))))

(declare-datatypes () ((Formula!42 (And!47 (lhs!929 Formula!42) (rhs!929 Formula!42)) (Literal!41 (id!4822 Int)) (Implies!47 (lhs!930 Formula!42) (rhs!930 Formula!42)) (Or!47 (lhs!931 Formula!42) (rhs!931 Formula!42)) (Not!47 (f!4182 Formula!42)))))

(declare-fun f!3683 () Formula!42)

(declare-fun isSimplified!1 (Formula!42) Bool)

(assert (=> start!9416 (= res!32990 (isSimplified!1 f!3683))))

(assert (=> start!9416 e!36998))

(assert (=> start!9416 true))

(declare-fun b!68348 () Bool)

(declare-fun res!32991 () Bool)

(assert (=> b!68348 (=> (not res!32991) (not e!36998))))

(assert (=> b!68348 (= res!32991 (and (not (is-And!47 f!3683)) (is-Literal!41 f!3683)))))

(declare-fun b!68349 () Bool)

(declare-fun simplify!1 (Formula!42) Formula!42)

(assert (=> b!68349 (= e!36998 (not (= (simplify!1 f!3683) f!3683)))))

(assert (= (and start!9416 res!32990) b!68348))

(assert (= (and b!68348 res!32991) b!68349))

(declare-fun m!70223 () Bool)

(assert (=> start!9416 m!70223))

(declare-fun m!70225 () Bool)

(assert (=> b!68349 m!70225))

(push 1)

(assert (not start!9416))

(assert (not b!68349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!68376 () Bool)

(declare-fun e!37022 () Bool)

(declare-fun res!33017 () Bool)

(assert (=> b!68376 (= e!37022 res!33017)))

(assert (=> b!68376 true))

(declare-fun b!68377 () Bool)

(declare-fun e!37017 () Bool)

(declare-fun lt!13890 () Bool)

(assert (=> b!68377 (= e!37017 lt!13890)))

(declare-fun b!68378 () Bool)

(declare-fun e!37021 () Bool)

(declare-fun res!33019 () Bool)

(assert (=> b!68378 (= e!37021 res!33019)))

(assert (=> b!68378 true))

(declare-fun b!68379 () Bool)

(declare-fun e!37020 () Bool)

(assert (=> b!68379 (= e!37020 lt!13890)))

(declare-fun b!68380 () Bool)

(declare-fun e!37016 () Bool)

(declare-fun lt!13889 () Bool)

(assert (=> b!68380 (= e!37016 (and lt!13890 lt!13889))))

(declare-fun b!68381 () Bool)

(declare-fun res!33018 () Bool)

(assert (=> b!68381 (= e!37020 res!33018)))

(assert (=> b!68381 true))

(declare-fun b!68382 () Bool)

(declare-fun e!37018 () Bool)

(declare-fun e!37015 () Bool)

(assert (=> b!68382 (= e!37018 e!37015)))

(declare-fun res!33021 () Bool)

(assert (=> b!68382 (=> (not res!33021) (not e!37015))))

(declare-fun lt!13891 () Bool)

(assert (=> b!68382 (= res!33021 lt!13891)))

(assert (=> b!68382 (= lt!13891 (is-Or!47 f!3683))))

(declare-fun d!53560 () Bool)

(declare-fun c!15889 () Bool)

(declare-fun lt!13887 () Bool)

(assert (=> d!53560 (= c!15889 lt!13887)))

(assert (=> d!53560 (= lt!13889 e!37021)))

(declare-fun c!15893 () Bool)

(declare-fun e!37019 () Bool)

(assert (=> d!53560 (= c!15893 e!37019)))

(declare-fun res!33020 () Bool)

(assert (=> d!53560 (=> res!33020 e!37019)))

(declare-fun lt!13886 () Bool)

(assert (=> d!53560 (= res!33020 lt!13886)))

(assert (=> d!53560 (= lt!13886 (and lt!13887 lt!13890))))

(assert (=> d!53560 (= lt!13890 e!37022)))

(declare-fun c!15890 () Bool)

(assert (=> d!53560 (= c!15890 (or lt!13887 (is-Or!47 f!3683) (and (not (is-Implies!47 f!3683)) (is-Not!47 f!3683))))))

(assert (=> d!53560 (= lt!13887 (is-And!47 f!3683))))

(assert (=> d!53560 (= (isSimplified!1 f!3683) e!37016)))

(declare-fun b!68383 () Bool)

(declare-fun res!33022 () Bool)

(assert (=> b!68383 (= e!37017 res!33022)))

(assert (=> b!68383 true))

(assert (=> b!68383 true))

(declare-fun b!68384 () Bool)

(assert (=> b!68384 (= e!37022 (isSimplified!1 (ite lt!13887 (lhs!929 f!3683) (ite (is-Or!47 f!3683) (lhs!931 f!3683) (f!4182 f!3683)))))))

(declare-fun b!68385 () Bool)

(assert (=> b!68385 (= e!37021 (isSimplified!1 (ite lt!13886 (rhs!929 f!3683) (rhs!931 f!3683))))))

(declare-fun b!68386 () Bool)

(assert (=> b!68386 (= e!37015 e!37020)))

(declare-fun c!15892 () Bool)

(assert (=> b!68386 (= c!15892 (or lt!13891 (and (not (is-Implies!47 f!3683)) (is-Not!47 f!3683))))))

(declare-fun b!68387 () Bool)

(assert (=> b!68387 (= e!37019 e!37018)))

(declare-fun res!33023 () Bool)

(assert (=> b!68387 (=> (not res!33023) (not e!37018))))

(assert (=> b!68387 (= res!33023 (not lt!13887))))

(declare-fun lt!13892 () Bool)

(declare-fun lt!13888 () Bool)

(declare-fun b!68388 () Bool)

(assert (=> b!68388 (= e!37016 (ite lt!13892 (and lt!13888 lt!13889) (and (not (is-Implies!47 f!3683)) (or (not (is-Not!47 f!3683)) lt!13888))))))

(assert (=> b!68388 (= lt!13888 e!37017)))

(declare-fun c!15891 () Bool)

(assert (=> b!68388 (= c!15891 (or lt!13892 (and (not (is-Implies!47 f!3683)) (is-Not!47 f!3683))))))

(assert (=> b!68388 (= lt!13892 (is-Or!47 f!3683))))

(assert (= (and d!53560 c!15890) b!68384))

(assert (= (and d!53560 (not c!15890)) b!68376))

(assert (= (and d!53560 (not res!33020)) b!68387))

(assert (= (and b!68387 res!33023) b!68382))

(assert (= (and b!68382 res!33021) b!68386))

(assert (= (and b!68386 c!15892) b!68379))

(assert (= (and b!68386 (not c!15892)) b!68381))

(assert (= (and d!53560 c!15893) b!68385))

(assert (= (and d!53560 (not c!15893)) b!68378))

(assert (= (and b!68388 c!15891) b!68377))

(assert (= (and b!68388 (not c!15891)) b!68383))

(assert (= (and d!53560 c!15889) b!68380))

(assert (= (and d!53560 (not c!15889)) b!68388))

(declare-fun m!70227 () Bool)

(assert (=> b!68384 m!70227))

(declare-fun m!70229 () Bool)

(assert (=> b!68385 m!70229))

(assert (=> start!9416 d!53560))

(declare-fun b!68417 () Bool)

(declare-fun e!37043 () Formula!42)

(declare-fun res!33051 () Formula!42)

(assert (=> b!68417 (= e!37043 res!33051)))

(assert (=> b!68417 true))

(declare-fun b!68418 () Bool)

(declare-fun lt!13917 () Formula!42)

(assert (=> b!68418 (= e!37043 lt!13917)))

(declare-fun b!68419 () Bool)

(declare-fun e!37037 () Formula!42)

(declare-fun res!33049 () Formula!42)

(assert (=> b!68419 (= e!37037 res!33049)))

(assert (=> b!68419 true))

(declare-fun b!68420 () Bool)

(declare-fun e!37042 () Formula!42)

(declare-fun lt!13919 () Formula!42)

(assert (=> b!68420 (= e!37042 lt!13919)))

(declare-fun b!68421 () Bool)

(declare-fun e!37038 () Formula!42)

(declare-fun lt!13911 () Bool)

(assert (=> b!68421 (= e!37038 (simplify!1 (ite lt!13911 (rhs!929 f!3683) (ite (is-Or!47 f!3683) (rhs!931 f!3683) (rhs!930 f!3683)))))))

(declare-fun b!68422 () Bool)

(declare-fun e!37041 () Formula!42)

(declare-fun lt!13915 () Formula!42)

(assert (=> b!68422 (= e!37041 lt!13915)))

(declare-fun b!68423 () Bool)

(declare-fun res!33052 () Formula!42)

(assert (=> b!68423 (= e!37042 res!33052)))

(assert (=> b!68423 true))

(assert (=> b!68423 true))

(declare-fun b!68424 () Bool)

(declare-fun e!37040 () Formula!42)

(assert (=> b!68424 (= e!37040 (And!47 lt!13917 lt!13915))))

(declare-fun b!68425 () Bool)

(declare-fun res!33050 () Formula!42)

(assert (=> b!68425 (= e!37038 res!33050)))

(assert (=> b!68425 true))

(declare-fun b!68426 () Bool)

(declare-fun res!33053 () Formula!42)

(assert (=> b!68426 (= e!37041 res!33053)))

(assert (=> b!68426 true))

(declare-fun b!68427 () Bool)

(declare-fun e!37039 () Formula!42)

(declare-fun lt!13913 () Formula!42)

(assert (=> b!68427 (= e!37039 (Or!47 lt!13919 lt!13913))))

(declare-fun b!68428 () Bool)

(assert (=> b!68428 (= e!37037 (simplify!1 (ite lt!13911 (lhs!929 f!3683) (ite (is-Or!47 f!3683) (lhs!931 f!3683) (ite (is-Implies!47 f!3683) (lhs!930 f!3683) (f!4182 f!3683))))))))

(declare-fun d!53562 () Bool)

(declare-fun lt!13918 () Formula!42)

(assert (=> d!53562 (isSimplified!1 lt!13918)))

(assert (=> d!53562 (= lt!13918 e!37040)))

(declare-fun c!15912 () Bool)

(assert (=> d!53562 (= c!15912 lt!13911)))

(assert (=> d!53562 (= lt!13915 e!37038)))

(declare-fun c!15913 () Bool)

(assert (=> d!53562 (= c!15913 (or lt!13911 (is-Or!47 f!3683) (is-Implies!47 f!3683)))))

(assert (=> d!53562 (= lt!13917 e!37037)))

(declare-fun c!15911 () Bool)

(assert (=> d!53562 (= c!15911 (or lt!13911 (is-Or!47 f!3683) (is-Implies!47 f!3683) (is-Not!47 f!3683)))))

(assert (=> d!53562 (= lt!13911 (is-And!47 f!3683))))

(assert (=> d!53562 (= (simplify!1 f!3683) lt!13918)))

(declare-fun b!68429 () Bool)

(assert (=> b!68429 (= e!37040 e!37039)))

(declare-fun c!15914 () Bool)

(declare-fun lt!13914 () Bool)

(assert (=> b!68429 (= c!15914 lt!13914)))

(assert (=> b!68429 (= lt!13913 e!37041)))

(declare-fun c!15909 () Bool)

(assert (=> b!68429 (= c!15909 (or lt!13914 (is-Implies!47 f!3683)))))

(assert (=> b!68429 (= lt!13919 e!37043)))

(declare-fun c!15910 () Bool)

(assert (=> b!68429 (= c!15910 (or lt!13914 (is-Implies!47 f!3683) (is-Not!47 f!3683)))))

(assert (=> b!68429 (= lt!13914 (is-Or!47 f!3683))))

(declare-fun b!68430 () Bool)

(declare-fun lt!13916 () Formula!42)

(declare-fun lt!13912 () Bool)

(assert (=> b!68430 (= e!37039 (ite lt!13912 (Or!47 (Not!47 lt!13916) lt!13913) (ite (is-Not!47 f!3683) (Not!47 lt!13916) f!3683)))))

(assert (=> b!68430 (= lt!13916 e!37042)))

(declare-fun c!15908 () Bool)

(assert (=> b!68430 (= c!15908 (or lt!13912 (is-Not!47 f!3683)))))

(assert (=> b!68430 (= lt!13912 (is-Implies!47 f!3683))))

(assert (= (and d!53562 c!15911) b!68428))

(assert (= (and d!53562 (not c!15911)) b!68419))

(assert (= (and d!53562 c!15913) b!68421))

(assert (= (and d!53562 (not c!15913)) b!68425))

(assert (= (and b!68429 c!15910) b!68418))

(assert (= (and b!68429 (not c!15910)) b!68417))

(assert (= (and b!68429 c!15909) b!68422))

(assert (= (and b!68429 (not c!15909)) b!68426))

(assert (= (and b!68430 c!15908) b!68420))

(assert (= (and b!68430 (not c!15908)) b!68423))

(assert (= (and b!68429 c!15914) b!68427))

(assert (= (and b!68429 (not c!15914)) b!68430))

(assert (= (and d!53562 c!15912) b!68424))

(assert (= (and d!53562 (not c!15912)) b!68429))

(declare-fun m!70231 () Bool)

(assert (=> b!68421 m!70231))

(declare-fun m!70233 () Bool)

(assert (=> b!68428 m!70233))

(declare-fun m!70235 () Bool)

(assert (=> d!53562 m!70235))

(assert (=> b!68349 d!53562))

(push 1)

(assert (not b!68384))

(assert (not d!53562))

(assert (not b!68421))

(assert (not b!68385))

(assert (not b!68428))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


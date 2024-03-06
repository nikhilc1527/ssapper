; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7352 () Bool)

(assert start!7352)

(declare-fun lambda!8566 () Int)

(declare-fun lambda!8567 () Int)

(declare-fun lambda!8568 () Int)

(declare-datatypes () ((String!657 (String!658 (value!3579 String)))))

(declare-datatypes () ((List!424 (Cons!409 (h!616 Object!222) (t!46700 List!424)) (Nil!410)) (Object!222 (TestExt!25 (__x!125 Int)) (FooBar!3 (bar!61 Object!222) (baz!16 Object!222) (b!53006 Int) (x!21041 Object!222) (y!1606 Int)) (Option!256 (value!3580 Option!255)) (List!425 (value!3581 List!424)) (Boolean!211 (value!3582 Bool)) (String!659 (value!3583 String!657)) (Open!222 (value!3584 Int))) (Option!255 (Some!258 (v!2001 Object!222)) (None!259))))

(declare-datatypes () ((Option!257 (Some!259 (v!2002 String!657)) (None!260))))

(declare-fun asOption!10 (Option!255 Int Int) Option!257)

(declare-fun something!0 (Int Object!222) Object!222)

(declare-fun foo!45 (Int Object!222 Int) Object!222)

(assert (=> start!7352 (not (= (asOption!10 (value!3580 (something!0 lambda!8566 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0))) lambda!8567 lambda!8568) (Some!259 (String!658 "TTeesstt"))))))

(declare-fun bs!23913 () Bool)

(assert (= bs!23913 start!7352))

(declare-fun m!57058 () Bool)

(assert (=> bs!23913 m!57058))

(assert (=> bs!23913 m!57058))

(declare-fun m!57060 () Bool)

(assert (=> bs!23913 m!57060))

(declare-fun m!57062 () Bool)

(assert (=> bs!23913 m!57062))

(push 1)

(assert (not start!7352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44565 () Bool)

(declare-fun c!11529 () Bool)

(assert (=> d!44565 (= c!11529 (is-Some!258 (value!3580 (something!0 lambda!8566 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0)))))))

(declare-fun e!27586 () Option!257)

(assert (=> d!44565 (= (asOption!10 (value!3580 (something!0 lambda!8566 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0))) lambda!8567 lambda!8568) e!27586)))

(declare-fun b!53011 () Bool)

(declare-fun dynLambda!891 (Int Object!222) String!657)

(assert (=> b!53011 (= e!27586 (Some!259 (dynLambda!891 lambda!8567 (v!2001 (value!3580 (something!0 lambda!8566 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0)))))))))

(declare-fun b!53012 () Bool)

(assert (=> b!53012 (= e!27586 None!260)))

(assert (= (and d!44565 c!11529) b!53011))

(assert (= (and d!44565 (not c!11529)) b!53012))

(declare-fun b_lambda!14555 () Bool)

(assert (=> (not b_lambda!14555) (not b!53011)))

(declare-fun m!57064 () Bool)

(assert (=> b!53011 m!57064))

(assert (=> start!7352 d!44565))

(declare-fun bs!23914 () Bool)

(declare-fun b!53018 () Bool)

(assert (= bs!23914 (and b!53018 start!7352)))

(declare-fun lambda!8573 () Int)

(assert (=> bs!23914 (not (= lambda!8573 lambda!8566))))

(declare-fun d!44567 () Bool)

(declare-fun lt!9261 () Object!222)

(declare-fun something!36 (Object!222) Object!222)

(assert (=> d!44567 (= lt!9261 (something!36 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0)))))

(declare-fun e!27589 () Object!222)

(assert (=> d!44567 (= lt!9261 e!27589)))

(declare-fun c!11532 () Bool)

(declare-fun isTestExt!0 (Object!222 Int) Bool)

(assert (=> d!44567 (= c!11532 (isTestExt!0 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0) lambda!8566))))

(assert (=> d!44567 (= (something!0 lambda!8566 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0)) lt!9261)))

(declare-fun b!53017 () Bool)

(declare-fun something!34 (Int Object!222) Object!222)

(assert (=> b!53017 (= e!27589 (something!34 lambda!8566 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0)))))

(declare-fun something!1 (Int Int Int Object!222) Object!222)

(assert (=> b!53018 (= e!27589 (something!1 lambda!8573 lambda!8573 lambda!8566 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0)))))

(assert (= (and d!44567 c!11532) b!53017))

(assert (= (and d!44567 (not c!11532)) b!53018))

(assert (=> d!44567 m!57058))

(declare-fun m!57066 () Bool)

(assert (=> d!44567 m!57066))

(assert (=> d!44567 m!57058))

(declare-fun m!57068 () Bool)

(assert (=> d!44567 m!57068))

(assert (=> b!53017 m!57058))

(declare-fun m!57070 () Bool)

(assert (=> b!53017 m!57070))

(assert (=> b!53018 m!57058))

(declare-fun m!57072 () Bool)

(assert (=> b!53018 m!57072))

(assert (=> start!7352 d!44567))

(declare-fun bs!23915 () Bool)

(declare-fun d!44569 () Bool)

(assert (= bs!23915 (and d!44569 start!7352)))

(declare-fun lambda!8578 () Int)

(assert (=> bs!23915 (not (= lambda!8578 lambda!8566))))

(declare-fun bs!23916 () Bool)

(assert (= bs!23916 (and d!44569 b!53018)))

(assert (=> bs!23916 (not (= lambda!8578 lambda!8573))))

(declare-fun lambda!8579 () Int)

(assert (=> bs!23915 (not (= lambda!8579 lambda!8566))))

(assert (=> bs!23916 (not (= lambda!8579 lambda!8573))))

(declare-fun bs!23917 () Bool)

(assert (= bs!23917 d!44569))

(assert (=> bs!23917 (not (= lambda!8579 lambda!8578))))

(declare-fun lt!9264 () Object!222)

(declare-fun foo!98 (Object!222 Int) Object!222)

(assert (=> d!44569 (= lt!9264 (foo!98 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0))))

(declare-fun bar!20 (Int Object!222 Int Int Object!222 Int) Object!222)

(assert (=> d!44569 (= lt!9264 (bar!20 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0 lambda!8579 (List!425 (Cons!409 (Boolean!211 true) (Cons!409 (Boolean!211 false) Nil!410))) 3))))

(assert (=> d!44569 (= 0 0)))

(assert (=> d!44569 (= (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0) lt!9264)))

(declare-fun m!57074 () Bool)

(assert (=> bs!23917 m!57074))

(declare-fun m!57076 () Bool)

(assert (=> bs!23917 m!57076))

(assert (=> start!7352 d!44569))

(declare-fun b_lambda!14557 () Bool)

(assert (= b_lambda!14555 (or start!7352 b_lambda!14557)))

(declare-fun bs!23918 () Bool)

(declare-fun d!44571 () Bool)

(assert (= bs!23918 (and d!44571 start!7352)))

(assert (=> bs!23918 (= (dynLambda!891 lambda!8567 (v!2001 (value!3580 (something!0 lambda!8566 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0))))) (value!3583 (v!2001 (value!3580 (something!0 lambda!8566 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0))))))))

(assert (=> b!53011 d!44571))

(push 1)

(assert (not d!44567))

(assert (not b!53018))

(assert (not b_lambda!14557))

(assert (not d!44569))

(assert (not b!53017))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44573 () Bool)

(declare-fun lt!9267 () Object!222)

(declare-fun something!35 (Object!222) Object!222)

(assert (=> d!44573 (= lt!9267 (something!35 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0)))))

(assert (=> d!44573 (= lt!9267 (x!21041 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0)))))

(assert (=> d!44573 (= (something!1 lambda!8573 lambda!8573 lambda!8566 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0)) lt!9267)))

(declare-fun bs!23919 () Bool)

(assert (= bs!23919 d!44573))

(assert (=> bs!23919 m!57058))

(declare-fun m!57078 () Bool)

(assert (=> bs!23919 m!57078))

(assert (=> b!53018 d!44573))

(declare-fun d!44575 () Bool)

(assert (=> d!44575 true))

(declare-fun e!27597 () Bool)

(assert (=> d!44575 e!27597))

(declare-fun res!24115 () Object!222)

(assert (=> d!44575 (= (something!36 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0)) res!24115)))

(declare-fun b!53025 () Bool)

(declare-fun tp!14973 () Bool)

(declare-fun tp!14974 () Bool)

(declare-fun tp!14975 () Bool)

(assert (=> b!53025 (= e!27597 (and tp!14974 tp!14973 tp!14975))))

(declare-fun b!53026 () Bool)

(declare-fun inv!959 (String!657) Bool)

(assert (=> b!53026 (= e!27597 (inv!959 (value!3583 res!24115)))))

(assert (= (and d!44575 (is-FooBar!3 res!24115)) b!53025))

(assert (= (and d!44575 (is-String!659 res!24115)) b!53026))

(declare-fun m!57080 () Bool)

(assert (=> b!53026 m!57080))

(assert (=> d!44567 d!44575))

(declare-fun d!44577 () Bool)

(assert (=> d!44577 (= (isTestExt!0 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0) lambda!8566) (is-TestExt!25 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0)))))

(assert (=> d!44567 d!44577))

(declare-fun d!44579 () Bool)

(assert (=> d!44579 true))

(declare-fun e!27603 () Bool)

(assert (=> d!44579 e!27603))

(declare-fun res!24118 () Object!222)

(assert (=> d!44579 (= (foo!98 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0) res!24118)))

(declare-fun tp!14984 () Bool)

(declare-fun tp!14982 () Bool)

(declare-fun b!53031 () Bool)

(declare-fun tp!14983 () Bool)

(assert (=> b!53031 (= e!27603 (and tp!14983 tp!14982 tp!14984))))

(declare-fun b!53032 () Bool)

(assert (=> b!53032 (= e!27603 (inv!959 (value!3583 res!24118)))))

(assert (= (and d!44579 (is-FooBar!3 res!24118)) b!53031))

(assert (= (and d!44579 (is-String!659 res!24118)) b!53032))

(declare-fun m!57082 () Bool)

(assert (=> b!53032 m!57082))

(assert (=> d!44569 d!44579))

(declare-fun d!44581 () Bool)

(assert (=> d!44581 (= (bar!20 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0 lambda!8579 (List!425 (Cons!409 (Boolean!211 true) (Cons!409 (Boolean!211 false) Nil!410))) 3) (FooBar!3 (List!425 (Cons!409 (Boolean!211 true) (Cons!409 (Boolean!211 false) Nil!410))) (String!659 (String!658 "BBaazz")) 3 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0))))

(assert (=> d!44569 d!44581))

(declare-fun d!44583 () Bool)

(declare-fun res!24121 () Object!222)

(declare-fun something!37 (Object!222) Object!222)

(assert (=> d!44583 (= res!24121 (something!37 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0)))))

(declare-fun e!27608 () Bool)

(declare-fun lt!9270 () Object!222)

(declare-fun dynLambda!892 (Int Object!222) Bool)

(assert (=> d!44583 (and e!27608 (dynLambda!892 lambda!8566 lt!9270))))

(assert (=> d!44583 (= lt!9270 res!24121)))

(assert (=> d!44583 (= (something!34 lambda!8566 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0)) res!24121)))

(declare-fun tp!14991 () Bool)

(declare-fun b!53038 () Bool)

(declare-fun tp!14993 () Bool)

(declare-fun tp!14992 () Bool)

(assert (=> b!53038 (= e!27608 (and tp!14993 tp!14991 tp!14992))))

(declare-fun b!53039 () Bool)

(assert (=> b!53039 (= e!27608 (inv!959 (value!3583 res!24121)))))

(assert (= (and d!44583 (is-FooBar!3 res!24121)) b!53038))

(assert (= (and d!44583 (is-String!659 res!24121)) b!53039))

(declare-fun b_lambda!14559 () Bool)

(assert (=> (not b_lambda!14559) (not d!44583)))

(assert (=> d!44583 m!57058))

(declare-fun m!57084 () Bool)

(assert (=> d!44583 m!57084))

(declare-fun m!57086 () Bool)

(assert (=> d!44583 m!57086))

(declare-fun m!57088 () Bool)

(assert (=> b!53039 m!57088))

(assert (=> b!53017 d!44583))

(declare-fun lt!9273 () Object!222)

(assert (=> d!44567 (= lt!9273 (something!0 lambda!8566 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0)))))

(assert (=> d!44567 (= true (dynLambda!892 lambda!8566 lt!9273))))

(declare-fun b_lambda!14561 () Bool)

(assert (=> (not b_lambda!14561) (not d!44567)))

(declare-fun m!57090 () Bool)

(assert (=> d!44567 m!57090))

(declare-fun lt!9276 () Object!222)

(assert (=> d!44569 (= lt!9276 (foo!45 lambda!8566 (Option!256 (Some!258 (String!659 (String!658 "TTeesstt")))) 0))))

(declare-fun isTest!3 (Object!222 Int) Bool)

(assert (=> d!44569 (= true (isTest!3 lt!9276 lambda!8566))))

(declare-fun m!57092 () Bool)

(assert (=> d!44569 m!57092))

(declare-fun b_lambda!14563 () Bool)

(assert (= b_lambda!14559 (or start!7352 b_lambda!14563)))

(declare-fun bs!23920 () Bool)

(declare-fun d!44585 () Bool)

(assert (= bs!23920 (and d!44585 start!7352)))

(assert (=> bs!23920 (= (dynLambda!892 lambda!8566 lt!9270) (is-Option!256 lt!9270))))

(assert (=> d!44583 d!44585))

(declare-fun b_lambda!14565 () Bool)

(assert (= b_lambda!14561 (or start!7352 b_lambda!14565)))

(declare-fun bs!23921 () Bool)

(declare-fun d!44587 () Bool)

(assert (= bs!23921 (and d!44587 start!7352)))

(assert (=> bs!23921 (= (dynLambda!892 lambda!8566 lt!9273) (is-Option!256 lt!9273))))

(assert (=> d!44567 d!44587))

(push 1)

(assert (not d!44583))

(assert (not b!53038))

(assert (not b_lambda!14563))

(assert (not d!44573))

(assert (not b_lambda!14565))

(assert (not b!53025))

(assert (not b!53031))

(assert (not b!53026))

(assert (not b!53032))

(assert (not b_lambda!14557))

(assert (not d!44581))

(assert (not d!44569))

(assert (not b!53039))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


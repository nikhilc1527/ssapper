; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9912 () Bool)

(assert start!9912)

(declare-datatypes () ((List!602 (Nil!560) (Cons!559 (head!969 Int) (tail!990 List!602)))))

(declare-fun list!764 () List!602)

(declare-fun reverse!1 (List!602) List!602)

(declare-fun tail!45 (List!602) List!602)

(declare-fun init!2 (List!602) List!602)

(assert (=> start!9912 (not (= (reverse!1 (tail!45 list!764)) (init!2 (reverse!1 list!764))))))

(assert (=> start!9912 true))

(declare-fun bs!37738 () Bool)

(assert (= bs!37738 start!9912))

(declare-fun m!72092 () Bool)

(assert (=> bs!37738 m!72092))

(assert (=> bs!37738 m!72092))

(declare-fun m!72094 () Bool)

(assert (=> bs!37738 m!72094))

(declare-fun m!72096 () Bool)

(assert (=> bs!37738 m!72096))

(assert (=> bs!37738 m!72096))

(declare-fun m!72098 () Bool)

(assert (=> bs!37738 m!72098))

(push 1)

(assert (not start!9912))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54443 () Bool)

(declare-fun e!38968 () Bool)

(assert (=> d!54443 e!38968))

(declare-fun res!35223 () Bool)

(assert (=> d!54443 (=> (not res!35223) (not e!38968))))

(declare-fun lt!15295 () List!602)

(declare-datatypes () ((Option!507 (Some!483 (x!28616 Int)) (None!484))))

(declare-fun lastOption!1 (List!602) Option!507)

(declare-fun headOption!1 (List!602) Option!507)

(assert (=> d!54443 (= res!35223 (= (lastOption!1 lt!15295) (headOption!1 (tail!45 list!764))))))

(declare-fun e!38967 () List!602)

(assert (=> d!54443 (= lt!15295 e!38967)))

(declare-fun c!17301 () Bool)

(assert (=> d!54443 (= c!17301 (is-Cons!559 (tail!45 list!764)))))

(assert (=> d!54443 (= (reverse!1 (tail!45 list!764)) lt!15295)))

(declare-fun b!72043 () Bool)

(declare-fun addLast!0 (List!602 Int) List!602)

(assert (=> b!72043 (= e!38967 (addLast!0 (reverse!1 (tail!990 (tail!45 list!764))) (head!969 (tail!45 list!764))))))

(declare-fun b!72045 () Bool)

(declare-fun res!35222 () Bool)

(assert (=> b!72045 (=> (not res!35222) (not e!38968))))

(assert (=> b!72045 (= res!35222 (= (lastOption!1 (tail!45 list!764)) (headOption!1 lt!15295)))))

(declare-fun b!72046 () Bool)

(declare-fun size!4 (List!602) Int)

(assert (=> b!72046 (= e!38968 (= (size!4 lt!15295) (size!4 (tail!45 list!764))))))

(declare-fun b!72044 () Bool)

(assert (=> b!72044 (= e!38967 Nil!560)))

(assert (= (and d!54443 c!17301) b!72043))

(assert (= (and d!54443 (not c!17301)) b!72044))

(assert (= (and d!54443 res!35223) b!72045))

(assert (= (and b!72045 res!35222) b!72046))

(declare-fun m!72100 () Bool)

(assert (=> d!54443 m!72100))

(assert (=> d!54443 m!72092))

(declare-fun m!72102 () Bool)

(assert (=> d!54443 m!72102))

(declare-fun m!72104 () Bool)

(assert (=> b!72043 m!72104))

(assert (=> b!72043 m!72104))

(declare-fun m!72106 () Bool)

(assert (=> b!72043 m!72106))

(assert (=> b!72045 m!72092))

(declare-fun m!72108 () Bool)

(assert (=> b!72045 m!72108))

(declare-fun m!72110 () Bool)

(assert (=> b!72045 m!72110))

(declare-fun m!72112 () Bool)

(assert (=> b!72046 m!72112))

(assert (=> b!72046 m!72092))

(declare-fun m!72114 () Bool)

(assert (=> b!72046 m!72114))

(assert (=> start!9912 d!54443))

(declare-fun d!54445 () Bool)

(assert (=> d!54445 (= (tail!45 list!764) (ite (is-Cons!559 list!764) (tail!990 list!764) Nil!560))))

(assert (=> start!9912 d!54445))

(declare-fun b!72058 () Bool)

(declare-fun e!38974 () List!602)

(assert (=> b!72058 (= e!38974 Nil!560)))

(declare-fun b!72057 () Bool)

(assert (=> b!72057 (= e!38974 (Cons!559 (head!969 (reverse!1 list!764)) (init!2 (tail!990 (reverse!1 list!764)))))))

(declare-fun d!54447 () Bool)

(declare-fun c!17306 () Bool)

(assert (=> d!54447 (= c!17306 (and (is-Cons!559 (reverse!1 list!764)) (is-Nil!560 (tail!990 (reverse!1 list!764)))))))

(declare-fun e!38973 () List!602)

(assert (=> d!54447 (= (init!2 (reverse!1 list!764)) e!38973)))

(declare-fun b!72055 () Bool)

(assert (=> b!72055 (= e!38973 Nil!560)))

(declare-fun b!72056 () Bool)

(assert (=> b!72056 (= e!38973 e!38974)))

(declare-fun c!17307 () Bool)

(assert (=> b!72056 (= c!17307 (is-Cons!559 (reverse!1 list!764)))))

(assert (= (and b!72056 c!17307) b!72057))

(assert (= (and b!72056 (not c!17307)) b!72058))

(assert (= (and d!54447 c!17306) b!72055))

(assert (= (and d!54447 (not c!17306)) b!72056))

(declare-fun m!72116 () Bool)

(assert (=> b!72057 m!72116))

(assert (=> start!9912 d!54447))

(declare-fun d!54449 () Bool)

(declare-fun e!38976 () Bool)

(assert (=> d!54449 e!38976))

(declare-fun res!35225 () Bool)

(assert (=> d!54449 (=> (not res!35225) (not e!38976))))

(declare-fun lt!15296 () List!602)

(assert (=> d!54449 (= res!35225 (= (lastOption!1 lt!15296) (headOption!1 list!764)))))

(declare-fun e!38975 () List!602)

(assert (=> d!54449 (= lt!15296 e!38975)))

(declare-fun c!17308 () Bool)

(assert (=> d!54449 (= c!17308 (is-Cons!559 list!764))))

(assert (=> d!54449 (= (reverse!1 list!764) lt!15296)))

(declare-fun b!72059 () Bool)

(assert (=> b!72059 (= e!38975 (addLast!0 (reverse!1 (tail!990 list!764)) (head!969 list!764)))))

(declare-fun b!72061 () Bool)

(declare-fun res!35224 () Bool)

(assert (=> b!72061 (=> (not res!35224) (not e!38976))))

(assert (=> b!72061 (= res!35224 (= (lastOption!1 list!764) (headOption!1 lt!15296)))))

(declare-fun b!72062 () Bool)

(assert (=> b!72062 (= e!38976 (= (size!4 lt!15296) (size!4 list!764)))))

(declare-fun b!72060 () Bool)

(assert (=> b!72060 (= e!38975 Nil!560)))

(assert (= (and d!54449 c!17308) b!72059))

(assert (= (and d!54449 (not c!17308)) b!72060))

(assert (= (and d!54449 res!35225) b!72061))

(assert (= (and b!72061 res!35224) b!72062))

(declare-fun m!72118 () Bool)

(assert (=> d!54449 m!72118))

(declare-fun m!72120 () Bool)

(assert (=> d!54449 m!72120))

(declare-fun m!72122 () Bool)

(assert (=> b!72059 m!72122))

(assert (=> b!72059 m!72122))

(declare-fun m!72124 () Bool)

(assert (=> b!72059 m!72124))

(declare-fun m!72126 () Bool)

(assert (=> b!72061 m!72126))

(declare-fun m!72128 () Bool)

(assert (=> b!72061 m!72128))

(declare-fun m!72130 () Bool)

(assert (=> b!72062 m!72130))

(declare-fun m!72132 () Bool)

(assert (=> b!72062 m!72132))

(assert (=> start!9912 d!54449))

(push 1)

(assert (not b!72059))

(assert (not b!72046))

(assert (not b!72045))

(assert (not b!72043))

(assert (not b!72061))

(assert (not b!72062))

(assert (not d!54449))

(assert (not d!54443))

(assert (not b!72057))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!72072 () Bool)

(declare-fun e!38981 () Option!507)

(declare-fun e!38982 () Option!507)

(assert (=> b!72072 (= e!38981 e!38982)))

(declare-fun c!17314 () Bool)

(assert (=> b!72072 (= c!17314 (is-Cons!559 (tail!45 list!764)))))

(declare-fun b!72074 () Bool)

(assert (=> b!72074 (= e!38982 None!484)))

(declare-fun b!72073 () Bool)

(assert (=> b!72073 (= e!38982 (lastOption!1 (tail!990 (tail!45 list!764))))))

(declare-fun d!54451 () Bool)

(declare-fun c!17313 () Bool)

(assert (=> d!54451 (= c!17313 (and (is-Cons!559 (tail!45 list!764)) (is-Nil!560 (tail!990 (tail!45 list!764)))))))

(assert (=> d!54451 (= (lastOption!1 (tail!45 list!764)) e!38981)))

(declare-fun b!72071 () Bool)

(assert (=> b!72071 (= e!38981 (Some!483 (head!969 (tail!45 list!764))))))

(assert (= (and b!72072 c!17314) b!72073))

(assert (= (and b!72072 (not c!17314)) b!72074))

(assert (= (and d!54451 c!17313) b!72071))

(assert (= (and d!54451 (not c!17313)) b!72072))

(declare-fun m!72134 () Bool)

(assert (=> b!72073 m!72134))

(assert (=> b!72045 d!54451))

(declare-fun d!54453 () Bool)

(assert (=> d!54453 (= (headOption!1 lt!15295) (ite (is-Cons!559 lt!15295) (Some!483 (head!969 lt!15295)) None!484))))

(assert (=> b!72045 d!54453))

(declare-fun b!72076 () Bool)

(declare-fun e!38983 () Option!507)

(declare-fun e!38984 () Option!507)

(assert (=> b!72076 (= e!38983 e!38984)))

(declare-fun c!17316 () Bool)

(assert (=> b!72076 (= c!17316 (is-Cons!559 list!764))))

(declare-fun b!72078 () Bool)

(assert (=> b!72078 (= e!38984 None!484)))

(declare-fun b!72077 () Bool)

(assert (=> b!72077 (= e!38984 (lastOption!1 (tail!990 list!764)))))

(declare-fun d!54455 () Bool)

(declare-fun c!17315 () Bool)

(assert (=> d!54455 (= c!17315 (and (is-Cons!559 list!764) (is-Nil!560 (tail!990 list!764))))))

(assert (=> d!54455 (= (lastOption!1 list!764) e!38983)))

(declare-fun b!72075 () Bool)

(assert (=> b!72075 (= e!38983 (Some!483 (head!969 list!764)))))

(assert (= (and b!72076 c!17316) b!72077))

(assert (= (and b!72076 (not c!17316)) b!72078))

(assert (= (and d!54455 c!17315) b!72075))

(assert (= (and d!54455 (not c!17315)) b!72076))

(declare-fun m!72136 () Bool)

(assert (=> b!72077 m!72136))

(assert (=> b!72061 d!54455))

(declare-fun d!54457 () Bool)

(assert (=> d!54457 (= (headOption!1 lt!15296) (ite (is-Cons!559 lt!15296) (Some!483 (head!969 lt!15296)) None!484))))

(assert (=> b!72061 d!54457))

(declare-fun b!72080 () Bool)

(declare-fun e!38985 () Option!507)

(declare-fun e!38986 () Option!507)

(assert (=> b!72080 (= e!38985 e!38986)))

(declare-fun c!17318 () Bool)

(assert (=> b!72080 (= c!17318 (is-Cons!559 lt!15295))))

(declare-fun b!72082 () Bool)

(assert (=> b!72082 (= e!38986 None!484)))

(declare-fun b!72081 () Bool)

(assert (=> b!72081 (= e!38986 (lastOption!1 (tail!990 lt!15295)))))

(declare-fun d!54459 () Bool)

(declare-fun c!17317 () Bool)

(assert (=> d!54459 (= c!17317 (and (is-Cons!559 lt!15295) (is-Nil!560 (tail!990 lt!15295))))))

(assert (=> d!54459 (= (lastOption!1 lt!15295) e!38985)))

(declare-fun b!72079 () Bool)

(assert (=> b!72079 (= e!38985 (Some!483 (head!969 lt!15295)))))

(assert (= (and b!72080 c!17318) b!72081))

(assert (= (and b!72080 (not c!17318)) b!72082))

(assert (= (and d!54459 c!17317) b!72079))

(assert (= (and d!54459 (not c!17317)) b!72080))

(declare-fun m!72138 () Bool)

(assert (=> b!72081 m!72138))

(assert (=> d!54443 d!54459))

(declare-fun d!54461 () Bool)

(assert (=> d!54461 (= (headOption!1 (tail!45 list!764)) (ite (is-Cons!559 (tail!45 list!764)) (Some!483 (head!969 (tail!45 list!764))) None!484))))

(assert (=> d!54443 d!54461))

(declare-fun d!54463 () Bool)

(declare-fun e!38992 () Bool)

(assert (=> d!54463 e!38992))

(declare-fun res!35234 () Bool)

(assert (=> d!54463 (=> (not res!35234) (not e!38992))))

(declare-fun lt!15299 () List!602)

(assert (=> d!54463 (= res!35234 (is-Cons!559 lt!15299))))

(declare-fun e!38991 () List!602)

(assert (=> d!54463 (= lt!15299 e!38991)))

(declare-fun c!17321 () Bool)

(assert (=> d!54463 (= c!17321 (is-Cons!559 (reverse!1 (tail!990 (tail!45 list!764)))))))

(assert (=> d!54463 (= (addLast!0 (reverse!1 (tail!990 (tail!45 list!764))) (head!969 (tail!45 list!764))) lt!15299)))

(declare-fun b!72093 () Bool)

(assert (=> b!72093 (= e!38991 (Cons!559 (head!969 (reverse!1 (tail!990 (tail!45 list!764)))) (addLast!0 (tail!990 (reverse!1 (tail!990 (tail!45 list!764)))) (head!969 (tail!45 list!764)))))))

(declare-fun b!72094 () Bool)

(assert (=> b!72094 (= e!38992 (= (+ (size!4 (reverse!1 (tail!990 (tail!45 list!764)))) 1) (size!4 lt!15299)))))

(declare-fun b!72095 () Bool)

(assert (=> b!72095 (= e!38991 (Cons!559 (head!969 (tail!45 list!764)) Nil!560))))

(declare-fun b!72096 () Bool)

(declare-fun res!35235 () Bool)

(assert (=> b!72096 (=> (not res!35235) (not e!38992))))

(assert (=> b!72096 (= res!35235 (= (init!2 lt!15299) (reverse!1 (tail!990 (tail!45 list!764)))))))

(declare-fun b!72097 () Bool)

(declare-fun res!35233 () Bool)

(assert (=> b!72097 (=> (not res!35233) (not e!38992))))

(assert (=> b!72097 (= res!35233 (= (lastOption!1 lt!15299) (Some!483 (head!969 (tail!45 list!764)))))))

(assert (= (and d!54463 c!17321) b!72093))

(assert (= (and d!54463 (not c!17321)) b!72095))

(assert (= (and d!54463 res!35234) b!72097))

(assert (= (and b!72097 res!35233) b!72096))

(assert (= (and b!72096 res!35235) b!72094))

(declare-fun m!72140 () Bool)

(assert (=> b!72093 m!72140))

(assert (=> b!72094 m!72104))

(declare-fun m!72142 () Bool)

(assert (=> b!72094 m!72142))

(declare-fun m!72144 () Bool)

(assert (=> b!72094 m!72144))

(declare-fun m!72146 () Bool)

(assert (=> b!72096 m!72146))

(declare-fun m!72148 () Bool)

(assert (=> b!72097 m!72148))

(assert (=> b!72043 d!54463))

(declare-fun d!54465 () Bool)

(declare-fun e!38994 () Bool)

(assert (=> d!54465 e!38994))

(declare-fun res!35237 () Bool)

(assert (=> d!54465 (=> (not res!35237) (not e!38994))))

(declare-fun lt!15300 () List!602)

(assert (=> d!54465 (= res!35237 (= (lastOption!1 lt!15300) (headOption!1 (tail!990 (tail!45 list!764)))))))

(declare-fun e!38993 () List!602)

(assert (=> d!54465 (= lt!15300 e!38993)))

(declare-fun c!17322 () Bool)

(assert (=> d!54465 (= c!17322 (is-Cons!559 (tail!990 (tail!45 list!764))))))

(assert (=> d!54465 (= (reverse!1 (tail!990 (tail!45 list!764))) lt!15300)))

(declare-fun b!72098 () Bool)

(assert (=> b!72098 (= e!38993 (addLast!0 (reverse!1 (tail!990 (tail!990 (tail!45 list!764)))) (head!969 (tail!990 (tail!45 list!764)))))))

(declare-fun b!72100 () Bool)

(declare-fun res!35236 () Bool)

(assert (=> b!72100 (=> (not res!35236) (not e!38994))))

(assert (=> b!72100 (= res!35236 (= (lastOption!1 (tail!990 (tail!45 list!764))) (headOption!1 lt!15300)))))

(declare-fun b!72101 () Bool)

(assert (=> b!72101 (= e!38994 (= (size!4 lt!15300) (size!4 (tail!990 (tail!45 list!764)))))))

(declare-fun b!72099 () Bool)

(assert (=> b!72099 (= e!38993 Nil!560)))

(assert (= (and d!54465 c!17322) b!72098))

(assert (= (and d!54465 (not c!17322)) b!72099))

(assert (= (and d!54465 res!35237) b!72100))

(assert (= (and b!72100 res!35236) b!72101))

(declare-fun m!72150 () Bool)

(assert (=> d!54465 m!72150))

(declare-fun m!72152 () Bool)

(assert (=> d!54465 m!72152))

(declare-fun m!72154 () Bool)

(assert (=> b!72098 m!72154))

(assert (=> b!72098 m!72154))

(declare-fun m!72156 () Bool)

(assert (=> b!72098 m!72156))

(assert (=> b!72100 m!72134))

(declare-fun m!72158 () Bool)

(assert (=> b!72100 m!72158))

(declare-fun m!72160 () Bool)

(assert (=> b!72101 m!72160))

(declare-fun m!72162 () Bool)

(assert (=> b!72101 m!72162))

(assert (=> b!72043 d!54465))

(declare-fun d!54467 () Bool)

(declare-fun lt!15303 () Int)

(assert (=> d!54467 (>= lt!15303 0)))

(declare-fun e!38997 () Int)

(assert (=> d!54467 (= lt!15303 e!38997)))

(declare-fun c!17325 () Bool)

(assert (=> d!54467 (= c!17325 (is-Nil!560 lt!15295))))

(assert (=> d!54467 (= (size!4 lt!15295) lt!15303)))

(declare-fun b!72106 () Bool)

(assert (=> b!72106 (= e!38997 0)))

(declare-fun b!72107 () Bool)

(assert (=> b!72107 (= e!38997 (+ 1 (size!4 (tail!990 lt!15295))))))

(assert (= (and d!54467 c!17325) b!72106))

(assert (= (and d!54467 (not c!17325)) b!72107))

(declare-fun m!72164 () Bool)

(assert (=> b!72107 m!72164))

(assert (=> b!72046 d!54467))

(declare-fun d!54469 () Bool)

(declare-fun lt!15304 () Int)

(assert (=> d!54469 (>= lt!15304 0)))

(declare-fun e!38998 () Int)

(assert (=> d!54469 (= lt!15304 e!38998)))

(declare-fun c!17326 () Bool)

(assert (=> d!54469 (= c!17326 (is-Nil!560 (tail!45 list!764)))))

(assert (=> d!54469 (= (size!4 (tail!45 list!764)) lt!15304)))

(declare-fun b!72108 () Bool)

(assert (=> b!72108 (= e!38998 0)))

(declare-fun b!72109 () Bool)

(assert (=> b!72109 (= e!38998 (+ 1 (size!4 (tail!990 (tail!45 list!764)))))))

(assert (= (and d!54469 c!17326) b!72108))

(assert (= (and d!54469 (not c!17326)) b!72109))

(assert (=> b!72109 m!72162))

(assert (=> b!72046 d!54469))

(declare-fun d!54471 () Bool)

(declare-fun e!39000 () Bool)

(assert (=> d!54471 e!39000))

(declare-fun res!35239 () Bool)

(assert (=> d!54471 (=> (not res!35239) (not e!39000))))

(declare-fun lt!15305 () List!602)

(assert (=> d!54471 (= res!35239 (is-Cons!559 lt!15305))))

(declare-fun e!38999 () List!602)

(assert (=> d!54471 (= lt!15305 e!38999)))

(declare-fun c!17327 () Bool)

(assert (=> d!54471 (= c!17327 (is-Cons!559 (reverse!1 (tail!990 list!764))))))

(assert (=> d!54471 (= (addLast!0 (reverse!1 (tail!990 list!764)) (head!969 list!764)) lt!15305)))

(declare-fun b!72110 () Bool)

(assert (=> b!72110 (= e!38999 (Cons!559 (head!969 (reverse!1 (tail!990 list!764))) (addLast!0 (tail!990 (reverse!1 (tail!990 list!764))) (head!969 list!764))))))

(declare-fun b!72111 () Bool)

(assert (=> b!72111 (= e!39000 (= (+ (size!4 (reverse!1 (tail!990 list!764))) 1) (size!4 lt!15305)))))

(declare-fun b!72112 () Bool)

(assert (=> b!72112 (= e!38999 (Cons!559 (head!969 list!764) Nil!560))))

(declare-fun b!72113 () Bool)

(declare-fun res!35240 () Bool)

(assert (=> b!72113 (=> (not res!35240) (not e!39000))))

(assert (=> b!72113 (= res!35240 (= (init!2 lt!15305) (reverse!1 (tail!990 list!764))))))

(declare-fun b!72114 () Bool)

(declare-fun res!35238 () Bool)

(assert (=> b!72114 (=> (not res!35238) (not e!39000))))

(assert (=> b!72114 (= res!35238 (= (lastOption!1 lt!15305) (Some!483 (head!969 list!764))))))

(assert (= (and d!54471 c!17327) b!72110))

(assert (= (and d!54471 (not c!17327)) b!72112))

(assert (= (and d!54471 res!35239) b!72114))

(assert (= (and b!72114 res!35238) b!72113))

(assert (= (and b!72113 res!35240) b!72111))

(declare-fun m!72166 () Bool)

(assert (=> b!72110 m!72166))

(assert (=> b!72111 m!72122))

(declare-fun m!72168 () Bool)

(assert (=> b!72111 m!72168))

(declare-fun m!72170 () Bool)

(assert (=> b!72111 m!72170))

(declare-fun m!72172 () Bool)

(assert (=> b!72113 m!72172))

(declare-fun m!72174 () Bool)

(assert (=> b!72114 m!72174))

(assert (=> b!72059 d!54471))

(declare-fun d!54473 () Bool)

(declare-fun e!39002 () Bool)

(assert (=> d!54473 e!39002))

(declare-fun res!35242 () Bool)

(assert (=> d!54473 (=> (not res!35242) (not e!39002))))

(declare-fun lt!15306 () List!602)

(assert (=> d!54473 (= res!35242 (= (lastOption!1 lt!15306) (headOption!1 (tail!990 list!764))))))

(declare-fun e!39001 () List!602)

(assert (=> d!54473 (= lt!15306 e!39001)))

(declare-fun c!17328 () Bool)

(assert (=> d!54473 (= c!17328 (is-Cons!559 (tail!990 list!764)))))

(assert (=> d!54473 (= (reverse!1 (tail!990 list!764)) lt!15306)))

(declare-fun b!72115 () Bool)

(assert (=> b!72115 (= e!39001 (addLast!0 (reverse!1 (tail!990 (tail!990 list!764))) (head!969 (tail!990 list!764))))))

(declare-fun b!72117 () Bool)

(declare-fun res!35241 () Bool)

(assert (=> b!72117 (=> (not res!35241) (not e!39002))))

(assert (=> b!72117 (= res!35241 (= (lastOption!1 (tail!990 list!764)) (headOption!1 lt!15306)))))

(declare-fun b!72118 () Bool)

(assert (=> b!72118 (= e!39002 (= (size!4 lt!15306) (size!4 (tail!990 list!764))))))

(declare-fun b!72116 () Bool)

(assert (=> b!72116 (= e!39001 Nil!560)))

(assert (= (and d!54473 c!17328) b!72115))

(assert (= (and d!54473 (not c!17328)) b!72116))

(assert (= (and d!54473 res!35242) b!72117))

(assert (= (and b!72117 res!35241) b!72118))

(declare-fun m!72176 () Bool)

(assert (=> d!54473 m!72176))

(declare-fun m!72178 () Bool)

(assert (=> d!54473 m!72178))

(declare-fun m!72180 () Bool)

(assert (=> b!72115 m!72180))

(assert (=> b!72115 m!72180))

(declare-fun m!72182 () Bool)

(assert (=> b!72115 m!72182))

(assert (=> b!72117 m!72136))

(declare-fun m!72184 () Bool)

(assert (=> b!72117 m!72184))

(declare-fun m!72186 () Bool)

(assert (=> b!72118 m!72186))

(declare-fun m!72188 () Bool)

(assert (=> b!72118 m!72188))

(assert (=> b!72059 d!54473))

(declare-fun b!72122 () Bool)

(declare-fun e!39004 () List!602)

(assert (=> b!72122 (= e!39004 Nil!560)))

(declare-fun b!72121 () Bool)

(assert (=> b!72121 (= e!39004 (Cons!559 (head!969 (tail!990 (reverse!1 list!764))) (init!2 (tail!990 (tail!990 (reverse!1 list!764))))))))

(declare-fun d!54475 () Bool)

(declare-fun c!17329 () Bool)

(assert (=> d!54475 (= c!17329 (and (is-Cons!559 (tail!990 (reverse!1 list!764))) (is-Nil!560 (tail!990 (tail!990 (reverse!1 list!764))))))))

(declare-fun e!39003 () List!602)

(assert (=> d!54475 (= (init!2 (tail!990 (reverse!1 list!764))) e!39003)))

(declare-fun b!72119 () Bool)

(assert (=> b!72119 (= e!39003 Nil!560)))

(declare-fun b!72120 () Bool)

(assert (=> b!72120 (= e!39003 e!39004)))

(declare-fun c!17330 () Bool)

(assert (=> b!72120 (= c!17330 (is-Cons!559 (tail!990 (reverse!1 list!764))))))

(assert (= (and b!72120 c!17330) b!72121))

(assert (= (and b!72120 (not c!17330)) b!72122))

(assert (= (and d!54475 c!17329) b!72119))

(assert (= (and d!54475 (not c!17329)) b!72120))

(declare-fun m!72190 () Bool)

(assert (=> b!72121 m!72190))

(assert (=> b!72057 d!54475))

(declare-fun d!54477 () Bool)

(declare-fun lt!15307 () Int)

(assert (=> d!54477 (>= lt!15307 0)))

(declare-fun e!39005 () Int)

(assert (=> d!54477 (= lt!15307 e!39005)))

(declare-fun c!17331 () Bool)

(assert (=> d!54477 (= c!17331 (is-Nil!560 lt!15296))))

(assert (=> d!54477 (= (size!4 lt!15296) lt!15307)))

(declare-fun b!72123 () Bool)

(assert (=> b!72123 (= e!39005 0)))

(declare-fun b!72124 () Bool)

(assert (=> b!72124 (= e!39005 (+ 1 (size!4 (tail!990 lt!15296))))))

(assert (= (and d!54477 c!17331) b!72123))

(assert (= (and d!54477 (not c!17331)) b!72124))

(declare-fun m!72192 () Bool)

(assert (=> b!72124 m!72192))

(assert (=> b!72062 d!54477))

(declare-fun d!54479 () Bool)

(declare-fun lt!15308 () Int)

(assert (=> d!54479 (>= lt!15308 0)))

(declare-fun e!39006 () Int)

(assert (=> d!54479 (= lt!15308 e!39006)))

(declare-fun c!17332 () Bool)

(assert (=> d!54479 (= c!17332 (is-Nil!560 list!764))))

(assert (=> d!54479 (= (size!4 list!764) lt!15308)))

(declare-fun b!72125 () Bool)

(assert (=> b!72125 (= e!39006 0)))

(declare-fun b!72126 () Bool)

(assert (=> b!72126 (= e!39006 (+ 1 (size!4 (tail!990 list!764))))))

(assert (= (and d!54479 c!17332) b!72125))

(assert (= (and d!54479 (not c!17332)) b!72126))

(assert (=> b!72126 m!72188))

(assert (=> b!72062 d!54479))

(declare-fun b!72128 () Bool)

(declare-fun e!39007 () Option!507)

(declare-fun e!39008 () Option!507)

(assert (=> b!72128 (= e!39007 e!39008)))

(declare-fun c!17334 () Bool)

(assert (=> b!72128 (= c!17334 (is-Cons!559 lt!15296))))

(declare-fun b!72130 () Bool)

(assert (=> b!72130 (= e!39008 None!484)))

(declare-fun b!72129 () Bool)

(assert (=> b!72129 (= e!39008 (lastOption!1 (tail!990 lt!15296)))))

(declare-fun d!54481 () Bool)

(declare-fun c!17333 () Bool)

(assert (=> d!54481 (= c!17333 (and (is-Cons!559 lt!15296) (is-Nil!560 (tail!990 lt!15296))))))

(assert (=> d!54481 (= (lastOption!1 lt!15296) e!39007)))

(declare-fun b!72127 () Bool)

(assert (=> b!72127 (= e!39007 (Some!483 (head!969 lt!15296)))))

(assert (= (and b!72128 c!17334) b!72129))

(assert (= (and b!72128 (not c!17334)) b!72130))

(assert (= (and d!54481 c!17333) b!72127))

(assert (= (and d!54481 (not c!17333)) b!72128))

(declare-fun m!72194 () Bool)

(assert (=> b!72129 m!72194))

(assert (=> d!54449 d!54481))

(declare-fun d!54483 () Bool)

(assert (=> d!54483 (= (headOption!1 list!764) (ite (is-Cons!559 list!764) (Some!483 (head!969 list!764)) None!484))))

(assert (=> d!54449 d!54483))

(push 1)

(assert (not b!72129))

(assert (not b!72101))

(assert (not b!72107))

(assert (not b!72117))

(assert (not d!54473))

(assert (not b!72073))

(assert (not b!72081))

(assert (not b!72077))

(assert (not b!72114))

(assert (not b!72126))

(assert (not d!54465))

(assert (not b!72121))

(assert (not b!72097))

(assert (not b!72113))

(assert (not b!72118))

(assert (not b!72115))

(assert (not b!72110))

(assert (not b!72109))

(assert (not b!72100))

(assert (not b!72111))

(assert (not b!72094))

(assert (not b!72098))

(assert (not b!72093))

(assert (not b!72096))

(assert (not b!72124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


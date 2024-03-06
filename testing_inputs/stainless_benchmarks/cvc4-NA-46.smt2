; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!340 () Bool)

(assert start!340)

(declare-fun res!1002 () Bool)

(declare-fun e!1829 () Bool)

(assert (=> start!340 (=> (not res!1002) (not e!1829))))

(declare-datatypes () ((List!59 (Cons!59 (head!231 (_ BitVec 32)) (tail!243 List!59)) (Nil!60))))

(declare-fun l1!116 () List!59)

(assert (=> start!340 (= res!1002 (is-Cons!59 l1!116))))

(assert (=> start!340 e!1829))

(assert (=> start!340 true))

(declare-fun b!3246 () Bool)

(declare-fun res!1003 () Bool)

(assert (=> b!3246 (=> (not res!1003) (not e!1829))))

(declare-fun inductVal!7 () Bool)

(declare-fun l2!110 () List!59)

(declare-fun l3!9 () List!59)

(declare-fun concatAssoc!0 (List!59 List!59 List!59) Bool)

(assert (=> b!3246 (= res!1003 (= inductVal!7 (concatAssoc!0 (tail!243 l1!116) l2!110 l3!9)))))

(declare-fun b!3247 () Bool)

(declare-fun concat!2 (List!59 List!59) List!59)

(assert (=> b!3247 (= e!1829 (not (= (concat!2 l1!116 (concat!2 l2!110 l3!9)) (concat!2 (concat!2 l1!116 l2!110) l3!9))))))

(assert (= (and start!340 res!1002) b!3246))

(assert (= (and b!3246 res!1003) b!3247))

(declare-fun m!5081 () Bool)

(assert (=> b!3246 m!5081))

(declare-fun m!5083 () Bool)

(assert (=> b!3247 m!5083))

(assert (=> b!3247 m!5083))

(declare-fun m!5085 () Bool)

(assert (=> b!3247 m!5085))

(declare-fun m!5087 () Bool)

(assert (=> b!3247 m!5087))

(assert (=> b!3247 m!5087))

(declare-fun m!5089 () Bool)

(assert (=> b!3247 m!5089))

(push 1)

(assert (not b!3246))

(assert (not b!3247))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!1832 () Bool)

(declare-fun b!3252 () Bool)

(assert (=> b!3252 (= e!1832 (= (concat!2 (tail!243 l1!116) (concat!2 l2!110 l3!9)) (concat!2 (concat!2 (tail!243 l1!116) l2!110) l3!9)))))

(declare-fun lt!915 () Bool)

(assert (=> b!3252 (= lt!915 (concatAssoc!0 (tail!243 (tail!243 l1!116)) l2!110 l3!9))))

(declare-fun d!2424 () Bool)

(assert (=> d!2424 e!1832))

(declare-fun c!1183 () Bool)

(assert (=> d!2424 (= c!1183 (is-Cons!59 (tail!243 l1!116)))))

(assert (=> d!2424 (= (concatAssoc!0 (tail!243 l1!116) l2!110 l3!9) true)))

(declare-fun b!3253 () Bool)

(assert (=> b!3253 (= e!1832 (= (concat!2 (tail!243 l1!116) (concat!2 l2!110 l3!9)) (concat!2 (concat!2 (tail!243 l1!116) l2!110) l3!9)))))

(assert (= (and d!2424 c!1183) b!3252))

(assert (= (and d!2424 (not c!1183)) b!3253))

(declare-fun m!5091 () Bool)

(assert (=> b!3252 m!5091))

(assert (=> b!3252 m!5083))

(declare-fun m!5093 () Bool)

(assert (=> b!3252 m!5093))

(assert (=> b!3252 m!5093))

(declare-fun m!5095 () Bool)

(assert (=> b!3252 m!5095))

(assert (=> b!3252 m!5083))

(declare-fun m!5097 () Bool)

(assert (=> b!3252 m!5097))

(assert (=> b!3253 m!5083))

(assert (=> b!3253 m!5083))

(assert (=> b!3253 m!5097))

(assert (=> b!3253 m!5093))

(assert (=> b!3253 m!5093))

(assert (=> b!3253 m!5095))

(assert (=> b!3246 d!2424))

(declare-fun d!2426 () Bool)

(declare-fun e!1837 () Bool)

(assert (=> d!2426 e!1837))

(declare-fun res!1007 () Bool)

(assert (=> d!2426 (=> (not res!1007) (not e!1837))))

(declare-fun lt!918 () List!59)

(declare-fun size!23 (List!59) Int)

(assert (=> d!2426 (= res!1007 (= (size!23 lt!918) (+ (size!23 l1!116) (size!23 (concat!2 l2!110 l3!9)))))))

(declare-fun e!1838 () List!59)

(assert (=> d!2426 (= lt!918 e!1838)))

(declare-fun c!1186 () Bool)

(assert (=> d!2426 (= c!1186 (is-Nil!60 l1!116))))

(assert (=> d!2426 (= (concat!2 l1!116 (concat!2 l2!110 l3!9)) lt!918)))

(declare-fun b!3260 () Bool)

(assert (=> b!3260 (= e!1838 (concat!2 l2!110 l3!9))))

(declare-fun b!3261 () Bool)

(assert (=> b!3261 (= e!1838 (Cons!59 (head!231 l1!116) (concat!2 (tail!243 l1!116) (concat!2 l2!110 l3!9))))))

(declare-fun b!3262 () Bool)

(declare-fun content!22 (List!59) (Set (_ BitVec 32)))

(assert (=> b!3262 (= e!1837 (= (content!22 lt!918) (union (content!22 l1!116) (content!22 (concat!2 l2!110 l3!9)))))))

(assert (= (and d!2426 c!1186) b!3260))

(assert (= (and d!2426 (not c!1186)) b!3261))

(assert (= (and d!2426 res!1007) b!3262))

(declare-fun m!5099 () Bool)

(assert (=> d!2426 m!5099))

(declare-fun m!5101 () Bool)

(assert (=> d!2426 m!5101))

(assert (=> d!2426 m!5083))

(declare-fun m!5103 () Bool)

(assert (=> d!2426 m!5103))

(assert (=> b!3261 m!5083))

(assert (=> b!3261 m!5097))

(declare-fun m!5105 () Bool)

(assert (=> b!3262 m!5105))

(declare-fun m!5107 () Bool)

(assert (=> b!3262 m!5107))

(assert (=> b!3262 m!5083))

(declare-fun m!5109 () Bool)

(assert (=> b!3262 m!5109))

(assert (=> b!3247 d!2426))

(declare-fun d!2428 () Bool)

(declare-fun e!1839 () Bool)

(assert (=> d!2428 e!1839))

(declare-fun res!1008 () Bool)

(assert (=> d!2428 (=> (not res!1008) (not e!1839))))

(declare-fun lt!919 () List!59)

(assert (=> d!2428 (= res!1008 (= (size!23 lt!919) (+ (size!23 l2!110) (size!23 l3!9))))))

(declare-fun e!1840 () List!59)

(assert (=> d!2428 (= lt!919 e!1840)))

(declare-fun c!1187 () Bool)

(assert (=> d!2428 (= c!1187 (is-Nil!60 l2!110))))

(assert (=> d!2428 (= (concat!2 l2!110 l3!9) lt!919)))

(declare-fun b!3263 () Bool)

(assert (=> b!3263 (= e!1840 l3!9)))

(declare-fun b!3264 () Bool)

(assert (=> b!3264 (= e!1840 (Cons!59 (head!231 l2!110) (concat!2 (tail!243 l2!110) l3!9)))))

(declare-fun b!3265 () Bool)

(assert (=> b!3265 (= e!1839 (= (content!22 lt!919) (union (content!22 l2!110) (content!22 l3!9))))))

(assert (= (and d!2428 c!1187) b!3263))

(assert (= (and d!2428 (not c!1187)) b!3264))

(assert (= (and d!2428 res!1008) b!3265))

(declare-fun m!5111 () Bool)

(assert (=> d!2428 m!5111))

(declare-fun m!5113 () Bool)

(assert (=> d!2428 m!5113))

(declare-fun m!5115 () Bool)

(assert (=> d!2428 m!5115))

(declare-fun m!5117 () Bool)

(assert (=> b!3264 m!5117))

(declare-fun m!5119 () Bool)

(assert (=> b!3265 m!5119))

(declare-fun m!5121 () Bool)

(assert (=> b!3265 m!5121))

(declare-fun m!5123 () Bool)

(assert (=> b!3265 m!5123))

(assert (=> b!3247 d!2428))

(declare-fun d!2430 () Bool)

(declare-fun e!1841 () Bool)

(assert (=> d!2430 e!1841))

(declare-fun res!1009 () Bool)

(assert (=> d!2430 (=> (not res!1009) (not e!1841))))

(declare-fun lt!920 () List!59)

(assert (=> d!2430 (= res!1009 (= (size!23 lt!920) (+ (size!23 (concat!2 l1!116 l2!110)) (size!23 l3!9))))))

(declare-fun e!1842 () List!59)

(assert (=> d!2430 (= lt!920 e!1842)))

(declare-fun c!1188 () Bool)

(assert (=> d!2430 (= c!1188 (is-Nil!60 (concat!2 l1!116 l2!110)))))

(assert (=> d!2430 (= (concat!2 (concat!2 l1!116 l2!110) l3!9) lt!920)))

(declare-fun b!3266 () Bool)

(assert (=> b!3266 (= e!1842 l3!9)))

(declare-fun b!3267 () Bool)

(assert (=> b!3267 (= e!1842 (Cons!59 (head!231 (concat!2 l1!116 l2!110)) (concat!2 (tail!243 (concat!2 l1!116 l2!110)) l3!9)))))

(declare-fun b!3268 () Bool)

(assert (=> b!3268 (= e!1841 (= (content!22 lt!920) (union (content!22 (concat!2 l1!116 l2!110)) (content!22 l3!9))))))

(assert (= (and d!2430 c!1188) b!3266))

(assert (= (and d!2430 (not c!1188)) b!3267))

(assert (= (and d!2430 res!1009) b!3268))

(declare-fun m!5125 () Bool)

(assert (=> d!2430 m!5125))

(assert (=> d!2430 m!5087))

(declare-fun m!5127 () Bool)

(assert (=> d!2430 m!5127))

(assert (=> d!2430 m!5115))

(declare-fun m!5129 () Bool)

(assert (=> b!3267 m!5129))

(declare-fun m!5131 () Bool)

(assert (=> b!3268 m!5131))

(assert (=> b!3268 m!5087))

(declare-fun m!5133 () Bool)

(assert (=> b!3268 m!5133))

(assert (=> b!3268 m!5123))

(assert (=> b!3247 d!2430))

(declare-fun d!2432 () Bool)

(declare-fun e!1843 () Bool)

(assert (=> d!2432 e!1843))

(declare-fun res!1010 () Bool)

(assert (=> d!2432 (=> (not res!1010) (not e!1843))))

(declare-fun lt!921 () List!59)

(assert (=> d!2432 (= res!1010 (= (size!23 lt!921) (+ (size!23 l1!116) (size!23 l2!110))))))

(declare-fun e!1844 () List!59)

(assert (=> d!2432 (= lt!921 e!1844)))

(declare-fun c!1189 () Bool)

(assert (=> d!2432 (= c!1189 (is-Nil!60 l1!116))))

(assert (=> d!2432 (= (concat!2 l1!116 l2!110) lt!921)))

(declare-fun b!3269 () Bool)

(assert (=> b!3269 (= e!1844 l2!110)))

(declare-fun b!3270 () Bool)

(assert (=> b!3270 (= e!1844 (Cons!59 (head!231 l1!116) (concat!2 (tail!243 l1!116) l2!110)))))

(declare-fun b!3271 () Bool)

(assert (=> b!3271 (= e!1843 (= (content!22 lt!921) (union (content!22 l1!116) (content!22 l2!110))))))

(assert (= (and d!2432 c!1189) b!3269))

(assert (= (and d!2432 (not c!1189)) b!3270))

(assert (= (and d!2432 res!1010) b!3271))

(declare-fun m!5135 () Bool)

(assert (=> d!2432 m!5135))

(assert (=> d!2432 m!5101))

(assert (=> d!2432 m!5113))

(assert (=> b!3270 m!5093))

(declare-fun m!5137 () Bool)

(assert (=> b!3271 m!5137))

(assert (=> b!3271 m!5107))

(assert (=> b!3271 m!5121))

(assert (=> b!3247 d!2432))

(push 1)

(assert (not d!2432))

(assert (not b!3252))

(assert (not b!3271))

(assert (not b!3268))

(assert (not b!3270))

(assert (not d!2430))

(assert (not b!3265))

(assert (not d!2426))

(assert (not b!3253))

(assert (not b!3267))

(assert (not b!3262))

(assert (not d!2428))

(assert (not b!3261))

(assert (not b!3264))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


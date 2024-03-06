; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!346 () Bool)

(assert start!346)

(declare-fun res!1013 () Bool)

(declare-fun e!1847 () Bool)

(assert (=> start!346 (=> (not res!1013) (not e!1847))))

(declare-datatypes () ((List!60 (Cons!60 (head!232 (_ BitVec 32)) (tail!244 List!60)) (Nil!61))))

(declare-fun l1!116 () List!60)

(assert (=> start!346 (= res!1013 (not (is-Cons!60 l1!116)))))

(assert (=> start!346 e!1847))

(assert (=> start!346 true))

(declare-fun l2!110 () List!60)

(declare-fun b!3274 () Bool)

(declare-fun l3!9 () List!60)

(declare-fun concat!2 (List!60 List!60) List!60)

(assert (=> b!3274 (= e!1847 (not (= (concat!2 l1!116 (concat!2 l2!110 l3!9)) (concat!2 (concat!2 l1!116 l2!110) l3!9))))))

(assert (= (and start!346 res!1013) b!3274))

(declare-fun m!5139 () Bool)

(assert (=> b!3274 m!5139))

(assert (=> b!3274 m!5139))

(declare-fun m!5141 () Bool)

(assert (=> b!3274 m!5141))

(declare-fun m!5143 () Bool)

(assert (=> b!3274 m!5143))

(assert (=> b!3274 m!5143))

(declare-fun m!5145 () Bool)

(assert (=> b!3274 m!5145))

(push 1)

(assert (not b!3274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2434 () Bool)

(declare-fun e!1853 () Bool)

(assert (=> d!2434 e!1853))

(declare-fun res!1017 () Bool)

(assert (=> d!2434 (=> (not res!1017) (not e!1853))))

(declare-fun lt!924 () List!60)

(declare-fun size!23 (List!60) Int)

(assert (=> d!2434 (= res!1017 (= (size!23 lt!924) (+ (size!23 l1!116) (size!23 (concat!2 l2!110 l3!9)))))))

(declare-fun e!1852 () List!60)

(assert (=> d!2434 (= lt!924 e!1852)))

(declare-fun c!1192 () Bool)

(assert (=> d!2434 (= c!1192 (is-Nil!61 l1!116))))

(assert (=> d!2434 (= (concat!2 l1!116 (concat!2 l2!110 l3!9)) lt!924)))

(declare-fun b!3281 () Bool)

(assert (=> b!3281 (= e!1852 (concat!2 l2!110 l3!9))))

(declare-fun b!3282 () Bool)

(assert (=> b!3282 (= e!1852 (Cons!60 (head!232 l1!116) (concat!2 (tail!244 l1!116) (concat!2 l2!110 l3!9))))))

(declare-fun b!3283 () Bool)

(declare-fun content!22 (List!60) (Set (_ BitVec 32)))

(assert (=> b!3283 (= e!1853 (= (content!22 lt!924) (union (content!22 l1!116) (content!22 (concat!2 l2!110 l3!9)))))))

(assert (= (and d!2434 c!1192) b!3281))

(assert (= (and d!2434 (not c!1192)) b!3282))

(assert (= (and d!2434 res!1017) b!3283))

(declare-fun m!5147 () Bool)

(assert (=> d!2434 m!5147))

(declare-fun m!5149 () Bool)

(assert (=> d!2434 m!5149))

(assert (=> d!2434 m!5139))

(declare-fun m!5151 () Bool)

(assert (=> d!2434 m!5151))

(assert (=> b!3282 m!5139))

(declare-fun m!5153 () Bool)

(assert (=> b!3282 m!5153))

(declare-fun m!5155 () Bool)

(assert (=> b!3283 m!5155))

(declare-fun m!5157 () Bool)

(assert (=> b!3283 m!5157))

(assert (=> b!3283 m!5139))

(declare-fun m!5159 () Bool)

(assert (=> b!3283 m!5159))

(assert (=> b!3274 d!2434))

(declare-fun d!2436 () Bool)

(declare-fun e!1855 () Bool)

(assert (=> d!2436 e!1855))

(declare-fun res!1018 () Bool)

(assert (=> d!2436 (=> (not res!1018) (not e!1855))))

(declare-fun lt!925 () List!60)

(assert (=> d!2436 (= res!1018 (= (size!23 lt!925) (+ (size!23 l2!110) (size!23 l3!9))))))

(declare-fun e!1854 () List!60)

(assert (=> d!2436 (= lt!925 e!1854)))

(declare-fun c!1193 () Bool)

(assert (=> d!2436 (= c!1193 (is-Nil!61 l2!110))))

(assert (=> d!2436 (= (concat!2 l2!110 l3!9) lt!925)))

(declare-fun b!3284 () Bool)

(assert (=> b!3284 (= e!1854 l3!9)))

(declare-fun b!3285 () Bool)

(assert (=> b!3285 (= e!1854 (Cons!60 (head!232 l2!110) (concat!2 (tail!244 l2!110) l3!9)))))

(declare-fun b!3286 () Bool)

(assert (=> b!3286 (= e!1855 (= (content!22 lt!925) (union (content!22 l2!110) (content!22 l3!9))))))

(assert (= (and d!2436 c!1193) b!3284))

(assert (= (and d!2436 (not c!1193)) b!3285))

(assert (= (and d!2436 res!1018) b!3286))

(declare-fun m!5161 () Bool)

(assert (=> d!2436 m!5161))

(declare-fun m!5163 () Bool)

(assert (=> d!2436 m!5163))

(declare-fun m!5165 () Bool)

(assert (=> d!2436 m!5165))

(declare-fun m!5167 () Bool)

(assert (=> b!3285 m!5167))

(declare-fun m!5169 () Bool)

(assert (=> b!3286 m!5169))

(declare-fun m!5171 () Bool)

(assert (=> b!3286 m!5171))

(declare-fun m!5173 () Bool)

(assert (=> b!3286 m!5173))

(assert (=> b!3274 d!2436))

(declare-fun d!2438 () Bool)

(declare-fun e!1857 () Bool)

(assert (=> d!2438 e!1857))

(declare-fun res!1019 () Bool)

(assert (=> d!2438 (=> (not res!1019) (not e!1857))))

(declare-fun lt!926 () List!60)

(assert (=> d!2438 (= res!1019 (= (size!23 lt!926) (+ (size!23 (concat!2 l1!116 l2!110)) (size!23 l3!9))))))

(declare-fun e!1856 () List!60)

(assert (=> d!2438 (= lt!926 e!1856)))

(declare-fun c!1194 () Bool)

(assert (=> d!2438 (= c!1194 (is-Nil!61 (concat!2 l1!116 l2!110)))))

(assert (=> d!2438 (= (concat!2 (concat!2 l1!116 l2!110) l3!9) lt!926)))

(declare-fun b!3287 () Bool)

(assert (=> b!3287 (= e!1856 l3!9)))

(declare-fun b!3288 () Bool)

(assert (=> b!3288 (= e!1856 (Cons!60 (head!232 (concat!2 l1!116 l2!110)) (concat!2 (tail!244 (concat!2 l1!116 l2!110)) l3!9)))))

(declare-fun b!3289 () Bool)

(assert (=> b!3289 (= e!1857 (= (content!22 lt!926) (union (content!22 (concat!2 l1!116 l2!110)) (content!22 l3!9))))))

(assert (= (and d!2438 c!1194) b!3287))

(assert (= (and d!2438 (not c!1194)) b!3288))

(assert (= (and d!2438 res!1019) b!3289))

(declare-fun m!5175 () Bool)

(assert (=> d!2438 m!5175))

(assert (=> d!2438 m!5143))

(declare-fun m!5177 () Bool)

(assert (=> d!2438 m!5177))

(assert (=> d!2438 m!5165))

(declare-fun m!5179 () Bool)

(assert (=> b!3288 m!5179))

(declare-fun m!5181 () Bool)

(assert (=> b!3289 m!5181))

(assert (=> b!3289 m!5143))

(declare-fun m!5183 () Bool)

(assert (=> b!3289 m!5183))

(assert (=> b!3289 m!5173))

(assert (=> b!3274 d!2438))

(declare-fun d!2440 () Bool)

(declare-fun e!1859 () Bool)

(assert (=> d!2440 e!1859))

(declare-fun res!1020 () Bool)

(assert (=> d!2440 (=> (not res!1020) (not e!1859))))

(declare-fun lt!927 () List!60)

(assert (=> d!2440 (= res!1020 (= (size!23 lt!927) (+ (size!23 l1!116) (size!23 l2!110))))))

(declare-fun e!1858 () List!60)

(assert (=> d!2440 (= lt!927 e!1858)))

(declare-fun c!1195 () Bool)

(assert (=> d!2440 (= c!1195 (is-Nil!61 l1!116))))

(assert (=> d!2440 (= (concat!2 l1!116 l2!110) lt!927)))

(declare-fun b!3290 () Bool)

(assert (=> b!3290 (= e!1858 l2!110)))

(declare-fun b!3291 () Bool)

(assert (=> b!3291 (= e!1858 (Cons!60 (head!232 l1!116) (concat!2 (tail!244 l1!116) l2!110)))))

(declare-fun b!3292 () Bool)

(assert (=> b!3292 (= e!1859 (= (content!22 lt!927) (union (content!22 l1!116) (content!22 l2!110))))))

(assert (= (and d!2440 c!1195) b!3290))

(assert (= (and d!2440 (not c!1195)) b!3291))

(assert (= (and d!2440 res!1020) b!3292))

(declare-fun m!5185 () Bool)

(assert (=> d!2440 m!5185))

(assert (=> d!2440 m!5149))

(assert (=> d!2440 m!5163))

(declare-fun m!5187 () Bool)

(assert (=> b!3291 m!5187))

(declare-fun m!5189 () Bool)

(assert (=> b!3292 m!5189))

(assert (=> b!3292 m!5157))

(assert (=> b!3292 m!5171))

(assert (=> b!3274 d!2440))

(push 1)

(assert (not b!3292))

(assert (not b!3285))

(assert (not b!3291))

(assert (not b!3289))

(assert (not b!3283))

(assert (not b!3286))

(assert (not d!2436))

(assert (not d!2438))

(assert (not b!3282))

(assert (not d!2434))

(assert (not d!2440))

(assert (not b!3288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


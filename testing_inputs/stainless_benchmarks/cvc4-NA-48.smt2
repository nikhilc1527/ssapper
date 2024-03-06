; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!350 () Bool)

(assert start!350)

(declare-fun res!1027 () Bool)

(declare-fun e!1862 () Bool)

(assert (=> start!350 (=> (not res!1027) (not e!1862))))

(declare-datatypes () ((List!61 (Cons!61 (head!233 (_ BitVec 32)) (tail!245 List!61)) (Nil!62))))

(declare-datatypes () ((AbsQueue!11 (Queue!10 (front!59 List!61) (rear!61 List!61)))))

(declare-fun queue!75 () AbsQueue!11)

(declare-fun isEmpty!12 (AbsQueue!11) Bool)

(assert (=> start!350 (= res!1027 (not (isEmpty!12 queue!75)))))

(assert (=> start!350 e!1862))

(assert (=> start!350 true))

(declare-fun b!3299 () Bool)

(declare-fun res!1028 () Bool)

(assert (=> b!3299 (=> (not res!1028) (not e!1862))))

(declare-fun isAmortized!0 (AbsQueue!11) Bool)

(assert (=> b!3299 (= res!1028 (isAmortized!0 queue!75))))

(declare-fun b!3300 () Bool)

(declare-fun res!1029 () Bool)

(assert (=> b!3300 (=> (not res!1029) (not e!1862))))

(declare-fun list!136 () List!61)

(declare-fun asList!0 (AbsQueue!11) List!61)

(assert (=> b!3300 (= res!1029 (= list!136 (asList!0 queue!75)))))

(declare-fun b!3301 () Bool)

(assert (=> b!3301 (= e!1862 (= list!136 Nil!62))))

(assert (= (and start!350 res!1027) b!3299))

(assert (= (and b!3299 res!1028) b!3300))

(assert (= (and b!3300 res!1029) b!3301))

(declare-fun m!5191 () Bool)

(assert (=> start!350 m!5191))

(declare-fun m!5193 () Bool)

(assert (=> b!3299 m!5193))

(declare-fun m!5195 () Bool)

(assert (=> b!3300 m!5195))

(push 1)

(assert (not start!350))

(assert (not b!3299))

(assert (not b!3300))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2442 () Bool)

(assert (=> d!2442 (= (isEmpty!12 queue!75) (and (is-Nil!62 (front!59 queue!75)) (is-Nil!62 (rear!61 queue!75))))))

(assert (=> start!350 d!2442))

(declare-fun d!2444 () Bool)

(declare-fun size!23 (List!61) Int)

(assert (=> d!2444 (= (isAmortized!0 queue!75) (>= (size!23 (front!59 queue!75)) (size!23 (rear!61 queue!75))))))

(declare-fun bs!235 () Bool)

(assert (= bs!235 d!2444))

(declare-fun m!5197 () Bool)

(assert (=> bs!235 m!5197))

(declare-fun m!5199 () Bool)

(assert (=> bs!235 m!5199))

(assert (=> b!3299 d!2444))

(declare-fun d!2446 () Bool)

(declare-fun concat!2 (List!61 List!61) List!61)

(declare-fun reverse!5 (List!61) List!61)

(assert (=> d!2446 (= (asList!0 queue!75) (concat!2 (front!59 queue!75) (reverse!5 (rear!61 queue!75))))))

(declare-fun bs!236 () Bool)

(assert (= bs!236 d!2446))

(declare-fun m!5201 () Bool)

(assert (=> bs!236 m!5201))

(assert (=> bs!236 m!5201))

(declare-fun m!5203 () Bool)

(assert (=> bs!236 m!5203))

(assert (=> b!3300 d!2446))

(push 1)

(assert (not d!2446))

(assert (not d!2444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2448 () Bool)

(declare-fun e!1868 () Bool)

(assert (=> d!2448 e!1868))

(declare-fun res!1033 () Bool)

(assert (=> d!2448 (=> (not res!1033) (not e!1868))))

(declare-fun lt!930 () List!61)

(assert (=> d!2448 (= res!1033 (= (size!23 lt!930) (+ (size!23 (front!59 queue!75)) (size!23 (reverse!5 (rear!61 queue!75))))))))

(declare-fun e!1867 () List!61)

(assert (=> d!2448 (= lt!930 e!1867)))

(declare-fun c!1198 () Bool)

(assert (=> d!2448 (= c!1198 (is-Nil!62 (front!59 queue!75)))))

(assert (=> d!2448 (= (concat!2 (front!59 queue!75) (reverse!5 (rear!61 queue!75))) lt!930)))

(declare-fun b!3308 () Bool)

(assert (=> b!3308 (= e!1867 (reverse!5 (rear!61 queue!75)))))

(declare-fun b!3309 () Bool)

(assert (=> b!3309 (= e!1867 (Cons!61 (head!233 (front!59 queue!75)) (concat!2 (tail!245 (front!59 queue!75)) (reverse!5 (rear!61 queue!75)))))))

(declare-fun b!3310 () Bool)

(declare-fun content!22 (List!61) (Set (_ BitVec 32)))

(assert (=> b!3310 (= e!1868 (= (content!22 lt!930) (union (content!22 (front!59 queue!75)) (content!22 (reverse!5 (rear!61 queue!75))))))))

(assert (= (and d!2448 c!1198) b!3308))

(assert (= (and d!2448 (not c!1198)) b!3309))

(assert (= (and d!2448 res!1033) b!3310))

(declare-fun m!5205 () Bool)

(assert (=> d!2448 m!5205))

(assert (=> d!2448 m!5197))

(assert (=> d!2448 m!5201))

(declare-fun m!5207 () Bool)

(assert (=> d!2448 m!5207))

(assert (=> b!3309 m!5201))

(declare-fun m!5209 () Bool)

(assert (=> b!3309 m!5209))

(declare-fun m!5211 () Bool)

(assert (=> b!3310 m!5211))

(declare-fun m!5213 () Bool)

(assert (=> b!3310 m!5213))

(assert (=> b!3310 m!5201))

(declare-fun m!5215 () Bool)

(assert (=> b!3310 m!5215))

(assert (=> d!2446 d!2448))

(declare-fun d!2450 () Bool)

(declare-fun lt!933 () List!61)

(assert (=> d!2450 (= (content!22 lt!933) (content!22 (rear!61 queue!75)))))

(declare-fun e!1871 () List!61)

(assert (=> d!2450 (= lt!933 e!1871)))

(declare-fun c!1201 () Bool)

(assert (=> d!2450 (= c!1201 (is-Nil!62 (rear!61 queue!75)))))

(assert (=> d!2450 (= (reverse!5 (rear!61 queue!75)) lt!933)))

(declare-fun b!3315 () Bool)

(assert (=> b!3315 (= e!1871 Nil!62)))

(declare-fun b!3316 () Bool)

(assert (=> b!3316 (= e!1871 (concat!2 (reverse!5 (tail!245 (rear!61 queue!75))) (Cons!61 (head!233 (rear!61 queue!75)) Nil!62)))))

(assert (= (and d!2450 c!1201) b!3315))

(assert (= (and d!2450 (not c!1201)) b!3316))

(declare-fun m!5217 () Bool)

(assert (=> d!2450 m!5217))

(declare-fun m!5219 () Bool)

(assert (=> d!2450 m!5219))

(declare-fun m!5221 () Bool)

(assert (=> b!3316 m!5221))

(assert (=> b!3316 m!5221))

(declare-fun m!5223 () Bool)

(assert (=> b!3316 m!5223))

(assert (=> d!2446 d!2450))

(declare-fun d!2452 () Bool)

(declare-fun lt!936 () Int)

(assert (=> d!2452 (>= lt!936 0)))

(declare-fun e!1874 () Int)

(assert (=> d!2452 (= lt!936 e!1874)))

(declare-fun c!1204 () Bool)

(assert (=> d!2452 (= c!1204 (is-Nil!62 (front!59 queue!75)))))

(assert (=> d!2452 (= (size!23 (front!59 queue!75)) lt!936)))

(declare-fun b!3321 () Bool)

(assert (=> b!3321 (= e!1874 0)))

(declare-fun b!3322 () Bool)

(assert (=> b!3322 (= e!1874 (+ 1 (size!23 (tail!245 (front!59 queue!75)))))))

(assert (= (and d!2452 c!1204) b!3321))

(assert (= (and d!2452 (not c!1204)) b!3322))

(declare-fun m!5225 () Bool)

(assert (=> b!3322 m!5225))

(assert (=> d!2444 d!2452))

(declare-fun d!2454 () Bool)

(declare-fun lt!937 () Int)

(assert (=> d!2454 (>= lt!937 0)))

(declare-fun e!1875 () Int)

(assert (=> d!2454 (= lt!937 e!1875)))

(declare-fun c!1205 () Bool)

(assert (=> d!2454 (= c!1205 (is-Nil!62 (rear!61 queue!75)))))

(assert (=> d!2454 (= (size!23 (rear!61 queue!75)) lt!937)))

(declare-fun b!3323 () Bool)

(assert (=> b!3323 (= e!1875 0)))

(declare-fun b!3324 () Bool)

(assert (=> b!3324 (= e!1875 (+ 1 (size!23 (tail!245 (rear!61 queue!75)))))))

(assert (= (and d!2454 c!1205) b!3323))

(assert (= (and d!2454 (not c!1205)) b!3324))

(declare-fun m!5227 () Bool)

(assert (=> b!3324 m!5227))

(assert (=> d!2444 d!2454))

(push 1)

(assert (not b!3309))

(assert (not b!3324))

(assert (not b!3310))

(assert (not b!3322))

(assert (not d!2448))

(assert (not d!2450))

(assert (not b!3316))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2456 () Bool)

(declare-fun c!1208 () Bool)

(assert (=> d!2456 (= c!1208 (is-Nil!62 lt!930))))

(declare-fun e!1878 () (Set (_ BitVec 32)))

(assert (=> d!2456 (= (content!22 lt!930) e!1878)))

(declare-fun b!3329 () Bool)

(assert (=> b!3329 (= e!1878 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3330 () Bool)

(assert (=> b!3330 (= e!1878 (union (insert (head!233 lt!930) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!245 lt!930))))))

(assert (= (and d!2456 c!1208) b!3329))

(assert (= (and d!2456 (not c!1208)) b!3330))

(declare-fun m!5229 () Bool)

(assert (=> b!3330 m!5229))

(declare-fun m!5231 () Bool)

(assert (=> b!3330 m!5231))

(assert (=> b!3310 d!2456))

(declare-fun d!2458 () Bool)

(declare-fun c!1209 () Bool)

(assert (=> d!2458 (= c!1209 (is-Nil!62 (front!59 queue!75)))))

(declare-fun e!1879 () (Set (_ BitVec 32)))

(assert (=> d!2458 (= (content!22 (front!59 queue!75)) e!1879)))

(declare-fun b!3331 () Bool)

(assert (=> b!3331 (= e!1879 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3332 () Bool)

(assert (=> b!3332 (= e!1879 (union (insert (head!233 (front!59 queue!75)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!245 (front!59 queue!75)))))))

(assert (= (and d!2458 c!1209) b!3331))

(assert (= (and d!2458 (not c!1209)) b!3332))

(declare-fun m!5233 () Bool)

(assert (=> b!3332 m!5233))

(declare-fun m!5235 () Bool)

(assert (=> b!3332 m!5235))

(assert (=> b!3310 d!2458))

(declare-fun d!2460 () Bool)

(declare-fun c!1210 () Bool)

(assert (=> d!2460 (= c!1210 (is-Nil!62 (reverse!5 (rear!61 queue!75))))))

(declare-fun e!1880 () (Set (_ BitVec 32)))

(assert (=> d!2460 (= (content!22 (reverse!5 (rear!61 queue!75))) e!1880)))

(declare-fun b!3333 () Bool)

(assert (=> b!3333 (= e!1880 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3334 () Bool)

(assert (=> b!3334 (= e!1880 (union (insert (head!233 (reverse!5 (rear!61 queue!75))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!245 (reverse!5 (rear!61 queue!75))))))))

(assert (= (and d!2460 c!1210) b!3333))

(assert (= (and d!2460 (not c!1210)) b!3334))

(declare-fun m!5237 () Bool)

(assert (=> b!3334 m!5237))

(declare-fun m!5239 () Bool)

(assert (=> b!3334 m!5239))

(assert (=> b!3310 d!2460))

(declare-fun d!2462 () Bool)

(declare-fun c!1211 () Bool)

(assert (=> d!2462 (= c!1211 (is-Nil!62 lt!933))))

(declare-fun e!1881 () (Set (_ BitVec 32)))

(assert (=> d!2462 (= (content!22 lt!933) e!1881)))

(declare-fun b!3335 () Bool)

(assert (=> b!3335 (= e!1881 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3336 () Bool)

(assert (=> b!3336 (= e!1881 (union (insert (head!233 lt!933) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!245 lt!933))))))

(assert (= (and d!2462 c!1211) b!3335))

(assert (= (and d!2462 (not c!1211)) b!3336))

(declare-fun m!5241 () Bool)

(assert (=> b!3336 m!5241))

(declare-fun m!5243 () Bool)

(assert (=> b!3336 m!5243))

(assert (=> d!2450 d!2462))

(declare-fun d!2464 () Bool)

(declare-fun c!1212 () Bool)

(assert (=> d!2464 (= c!1212 (is-Nil!62 (rear!61 queue!75)))))

(declare-fun e!1882 () (Set (_ BitVec 32)))

(assert (=> d!2464 (= (content!22 (rear!61 queue!75)) e!1882)))

(declare-fun b!3337 () Bool)

(assert (=> b!3337 (= e!1882 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3338 () Bool)

(assert (=> b!3338 (= e!1882 (union (insert (head!233 (rear!61 queue!75)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!245 (rear!61 queue!75)))))))

(assert (= (and d!2464 c!1212) b!3337))

(assert (= (and d!2464 (not c!1212)) b!3338))

(declare-fun m!5245 () Bool)

(assert (=> b!3338 m!5245))

(declare-fun m!5247 () Bool)

(assert (=> b!3338 m!5247))

(assert (=> d!2450 d!2464))

(declare-fun d!2466 () Bool)

(declare-fun lt!938 () Int)

(assert (=> d!2466 (>= lt!938 0)))

(declare-fun e!1883 () Int)

(assert (=> d!2466 (= lt!938 e!1883)))

(declare-fun c!1213 () Bool)

(assert (=> d!2466 (= c!1213 (is-Nil!62 (tail!245 (rear!61 queue!75))))))

(assert (=> d!2466 (= (size!23 (tail!245 (rear!61 queue!75))) lt!938)))

(declare-fun b!3339 () Bool)

(assert (=> b!3339 (= e!1883 0)))

(declare-fun b!3340 () Bool)

(assert (=> b!3340 (= e!1883 (+ 1 (size!23 (tail!245 (tail!245 (rear!61 queue!75))))))))

(assert (= (and d!2466 c!1213) b!3339))

(assert (= (and d!2466 (not c!1213)) b!3340))

(declare-fun m!5249 () Bool)

(assert (=> b!3340 m!5249))

(assert (=> b!3324 d!2466))

(declare-fun d!2468 () Bool)

(declare-fun lt!939 () Int)

(assert (=> d!2468 (>= lt!939 0)))

(declare-fun e!1884 () Int)

(assert (=> d!2468 (= lt!939 e!1884)))

(declare-fun c!1214 () Bool)

(assert (=> d!2468 (= c!1214 (is-Nil!62 lt!930))))

(assert (=> d!2468 (= (size!23 lt!930) lt!939)))

(declare-fun b!3341 () Bool)

(assert (=> b!3341 (= e!1884 0)))

(declare-fun b!3342 () Bool)

(assert (=> b!3342 (= e!1884 (+ 1 (size!23 (tail!245 lt!930))))))

(assert (= (and d!2468 c!1214) b!3341))

(assert (= (and d!2468 (not c!1214)) b!3342))

(declare-fun m!5251 () Bool)

(assert (=> b!3342 m!5251))

(assert (=> d!2448 d!2468))

(assert (=> d!2448 d!2452))

(declare-fun d!2470 () Bool)

(declare-fun lt!940 () Int)

(assert (=> d!2470 (>= lt!940 0)))

(declare-fun e!1885 () Int)

(assert (=> d!2470 (= lt!940 e!1885)))

(declare-fun c!1215 () Bool)

(assert (=> d!2470 (= c!1215 (is-Nil!62 (reverse!5 (rear!61 queue!75))))))

(assert (=> d!2470 (= (size!23 (reverse!5 (rear!61 queue!75))) lt!940)))

(declare-fun b!3343 () Bool)

(assert (=> b!3343 (= e!1885 0)))

(declare-fun b!3344 () Bool)

(assert (=> b!3344 (= e!1885 (+ 1 (size!23 (tail!245 (reverse!5 (rear!61 queue!75))))))))

(assert (= (and d!2470 c!1215) b!3343))

(assert (= (and d!2470 (not c!1215)) b!3344))

(declare-fun m!5253 () Bool)

(assert (=> b!3344 m!5253))

(assert (=> d!2448 d!2470))

(declare-fun d!2472 () Bool)

(declare-fun e!1887 () Bool)

(assert (=> d!2472 e!1887))

(declare-fun res!1034 () Bool)

(assert (=> d!2472 (=> (not res!1034) (not e!1887))))

(declare-fun lt!941 () List!61)

(assert (=> d!2472 (= res!1034 (= (size!23 lt!941) (+ (size!23 (tail!245 (front!59 queue!75))) (size!23 (reverse!5 (rear!61 queue!75))))))))

(declare-fun e!1886 () List!61)

(assert (=> d!2472 (= lt!941 e!1886)))

(declare-fun c!1216 () Bool)

(assert (=> d!2472 (= c!1216 (is-Nil!62 (tail!245 (front!59 queue!75))))))

(assert (=> d!2472 (= (concat!2 (tail!245 (front!59 queue!75)) (reverse!5 (rear!61 queue!75))) lt!941)))

(declare-fun b!3345 () Bool)

(assert (=> b!3345 (= e!1886 (reverse!5 (rear!61 queue!75)))))

(declare-fun b!3346 () Bool)

(assert (=> b!3346 (= e!1886 (Cons!61 (head!233 (tail!245 (front!59 queue!75))) (concat!2 (tail!245 (tail!245 (front!59 queue!75))) (reverse!5 (rear!61 queue!75)))))))

(declare-fun b!3347 () Bool)

(assert (=> b!3347 (= e!1887 (= (content!22 lt!941) (union (content!22 (tail!245 (front!59 queue!75))) (content!22 (reverse!5 (rear!61 queue!75))))))))

(assert (= (and d!2472 c!1216) b!3345))

(assert (= (and d!2472 (not c!1216)) b!3346))

(assert (= (and d!2472 res!1034) b!3347))

(declare-fun m!5255 () Bool)

(assert (=> d!2472 m!5255))

(assert (=> d!2472 m!5225))

(assert (=> d!2472 m!5201))

(assert (=> d!2472 m!5207))

(assert (=> b!3346 m!5201))

(declare-fun m!5257 () Bool)

(assert (=> b!3346 m!5257))

(declare-fun m!5259 () Bool)

(assert (=> b!3347 m!5259))

(assert (=> b!3347 m!5235))

(assert (=> b!3347 m!5201))

(assert (=> b!3347 m!5215))

(assert (=> b!3309 d!2472))

(declare-fun d!2474 () Bool)

(declare-fun lt!942 () Int)

(assert (=> d!2474 (>= lt!942 0)))

(declare-fun e!1888 () Int)

(assert (=> d!2474 (= lt!942 e!1888)))

(declare-fun c!1217 () Bool)

(assert (=> d!2474 (= c!1217 (is-Nil!62 (tail!245 (front!59 queue!75))))))

(assert (=> d!2474 (= (size!23 (tail!245 (front!59 queue!75))) lt!942)))

(declare-fun b!3348 () Bool)

(assert (=> b!3348 (= e!1888 0)))

(declare-fun b!3349 () Bool)

(assert (=> b!3349 (= e!1888 (+ 1 (size!23 (tail!245 (tail!245 (front!59 queue!75))))))))

(assert (= (and d!2474 c!1217) b!3348))

(assert (= (and d!2474 (not c!1217)) b!3349))

(declare-fun m!5261 () Bool)

(assert (=> b!3349 m!5261))

(assert (=> b!3322 d!2474))

(declare-fun d!2476 () Bool)

(declare-fun e!1890 () Bool)

(assert (=> d!2476 e!1890))

(declare-fun res!1035 () Bool)

(assert (=> d!2476 (=> (not res!1035) (not e!1890))))

(declare-fun lt!943 () List!61)

(assert (=> d!2476 (= res!1035 (= (size!23 lt!943) (+ (size!23 (reverse!5 (tail!245 (rear!61 queue!75)))) (size!23 (Cons!61 (head!233 (rear!61 queue!75)) Nil!62)))))))

(declare-fun e!1889 () List!61)

(assert (=> d!2476 (= lt!943 e!1889)))

(declare-fun c!1218 () Bool)

(assert (=> d!2476 (= c!1218 (is-Nil!62 (reverse!5 (tail!245 (rear!61 queue!75)))))))

(assert (=> d!2476 (= (concat!2 (reverse!5 (tail!245 (rear!61 queue!75))) (Cons!61 (head!233 (rear!61 queue!75)) Nil!62)) lt!943)))

(declare-fun b!3350 () Bool)

(assert (=> b!3350 (= e!1889 (Cons!61 (head!233 (rear!61 queue!75)) Nil!62))))

(declare-fun b!3351 () Bool)

(assert (=> b!3351 (= e!1889 (Cons!61 (head!233 (reverse!5 (tail!245 (rear!61 queue!75)))) (concat!2 (tail!245 (reverse!5 (tail!245 (rear!61 queue!75)))) (Cons!61 (head!233 (rear!61 queue!75)) Nil!62))))))

(declare-fun b!3352 () Bool)

(assert (=> b!3352 (= e!1890 (= (content!22 lt!943) (union (content!22 (reverse!5 (tail!245 (rear!61 queue!75)))) (content!22 (Cons!61 (head!233 (rear!61 queue!75)) Nil!62)))))))

(assert (= (and d!2476 c!1218) b!3350))

(assert (= (and d!2476 (not c!1218)) b!3351))

(assert (= (and d!2476 res!1035) b!3352))

(declare-fun m!5263 () Bool)

(assert (=> d!2476 m!5263))

(assert (=> d!2476 m!5221))

(declare-fun m!5265 () Bool)

(assert (=> d!2476 m!5265))

(declare-fun m!5267 () Bool)

(assert (=> d!2476 m!5267))

(declare-fun m!5269 () Bool)

(assert (=> b!3351 m!5269))

(declare-fun m!5271 () Bool)

(assert (=> b!3352 m!5271))

(assert (=> b!3352 m!5221))

(declare-fun m!5273 () Bool)

(assert (=> b!3352 m!5273))

(declare-fun m!5275 () Bool)

(assert (=> b!3352 m!5275))

(assert (=> b!3316 d!2476))

(declare-fun d!2478 () Bool)

(declare-fun lt!944 () List!61)

(assert (=> d!2478 (= (content!22 lt!944) (content!22 (tail!245 (rear!61 queue!75))))))

(declare-fun e!1891 () List!61)

(assert (=> d!2478 (= lt!944 e!1891)))

(declare-fun c!1219 () Bool)

(assert (=> d!2478 (= c!1219 (is-Nil!62 (tail!245 (rear!61 queue!75))))))

(assert (=> d!2478 (= (reverse!5 (tail!245 (rear!61 queue!75))) lt!944)))

(declare-fun b!3353 () Bool)

(assert (=> b!3353 (= e!1891 Nil!62)))

(declare-fun b!3354 () Bool)

(assert (=> b!3354 (= e!1891 (concat!2 (reverse!5 (tail!245 (tail!245 (rear!61 queue!75)))) (Cons!61 (head!233 (tail!245 (rear!61 queue!75))) Nil!62)))))

(assert (= (and d!2478 c!1219) b!3353))

(assert (= (and d!2478 (not c!1219)) b!3354))

(declare-fun m!5277 () Bool)

(assert (=> d!2478 m!5277))

(assert (=> d!2478 m!5247))

(declare-fun m!5279 () Bool)

(assert (=> b!3354 m!5279))

(assert (=> b!3354 m!5279))

(declare-fun m!5281 () Bool)

(assert (=> b!3354 m!5281))

(assert (=> b!3316 d!2478))

(push 1)

(assert (not b!3340))

(assert (not b!3342))

(assert (not b!3338))

(assert (not b!3336))

(assert (not b!3349))

(assert (not b!3354))

(assert (not b!3351))

(assert (not d!2472))

(assert (not d!2478))

(assert (not b!3347))

(assert (not b!3332))

(assert (not b!3344))

(assert (not b!3330))

(assert (not d!2476))

(assert (not b!3352))

(assert (not b!3346))

(assert (not b!3334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


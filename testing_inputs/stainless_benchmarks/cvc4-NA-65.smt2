; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!534 () Bool)

(assert start!534)

(declare-fun res!1228 () Bool)

(declare-fun e!2252 () Bool)

(assert (=> start!534 (=> (not res!1228) (not e!2252))))

(declare-datatypes () ((List!78 (Cons!78 (head!250 (_ BitVec 32)) (tail!262 List!78)) (Nil!79))))

(declare-fun rear!18 () List!78)

(declare-fun front!19 () List!78)

(declare-fun size!23 (List!78) Int)

(assert (=> start!534 (= res!1228 (> (size!23 rear!18) (size!23 front!19)))))

(assert (=> start!534 e!2252))

(assert (=> start!534 true))

(declare-fun b!4043 () Bool)

(declare-fun res!1229 () Bool)

(assert (=> b!4043 (=> (not res!1229) (not e!2252))))

(declare-datatypes () ((AbsQueue!25 (Queue!24 (front!78 List!78) (rear!80 List!78)))))

(declare-fun x$3!44 () AbsQueue!25)

(declare-fun concat!2 (List!78 List!78) List!78)

(declare-fun reverse!5 (List!78) List!78)

(assert (=> b!4043 (= res!1229 (= x$3!44 (Queue!24 (concat!2 front!19 (reverse!5 rear!18)) Nil!79)))))

(declare-fun b!4044 () Bool)

(declare-fun isAmortized!0 (AbsQueue!25) Bool)

(assert (=> b!4044 (= e!2252 (not (isAmortized!0 x$3!44)))))

(assert (= (and start!534 res!1228) b!4043))

(assert (= (and b!4043 res!1229) b!4044))

(declare-fun m!6367 () Bool)

(assert (=> start!534 m!6367))

(declare-fun m!6369 () Bool)

(assert (=> start!534 m!6369))

(declare-fun m!6371 () Bool)

(assert (=> b!4043 m!6371))

(assert (=> b!4043 m!6371))

(declare-fun m!6373 () Bool)

(assert (=> b!4043 m!6373))

(declare-fun m!6375 () Bool)

(assert (=> b!4044 m!6375))

(push 1)

(assert (not b!4044))

(assert (not start!534))

(assert (not b!4043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2928 () Bool)

(assert (=> d!2928 (= (isAmortized!0 x$3!44) (>= (size!23 (front!78 x$3!44)) (size!23 (rear!80 x$3!44))))))

(declare-fun bs!277 () Bool)

(assert (= bs!277 d!2928))

(declare-fun m!6377 () Bool)

(assert (=> bs!277 m!6377))

(declare-fun m!6379 () Bool)

(assert (=> bs!277 m!6379))

(assert (=> b!4044 d!2928))

(declare-fun d!2930 () Bool)

(declare-fun lt!1153 () Int)

(assert (=> d!2930 (>= lt!1153 0)))

(declare-fun e!2255 () Int)

(assert (=> d!2930 (= lt!1153 e!2255)))

(declare-fun c!1476 () Bool)

(assert (=> d!2930 (= c!1476 (is-Nil!79 rear!18))))

(assert (=> d!2930 (= (size!23 rear!18) lt!1153)))

(declare-fun b!4049 () Bool)

(assert (=> b!4049 (= e!2255 0)))

(declare-fun b!4050 () Bool)

(assert (=> b!4050 (= e!2255 (+ 1 (size!23 (tail!262 rear!18))))))

(assert (= (and d!2930 c!1476) b!4049))

(assert (= (and d!2930 (not c!1476)) b!4050))

(declare-fun m!6381 () Bool)

(assert (=> b!4050 m!6381))

(assert (=> start!534 d!2930))

(declare-fun d!2932 () Bool)

(declare-fun lt!1154 () Int)

(assert (=> d!2932 (>= lt!1154 0)))

(declare-fun e!2256 () Int)

(assert (=> d!2932 (= lt!1154 e!2256)))

(declare-fun c!1477 () Bool)

(assert (=> d!2932 (= c!1477 (is-Nil!79 front!19))))

(assert (=> d!2932 (= (size!23 front!19) lt!1154)))

(declare-fun b!4051 () Bool)

(assert (=> b!4051 (= e!2256 0)))

(declare-fun b!4052 () Bool)

(assert (=> b!4052 (= e!2256 (+ 1 (size!23 (tail!262 front!19))))))

(assert (= (and d!2932 c!1477) b!4051))

(assert (= (and d!2932 (not c!1477)) b!4052))

(declare-fun m!6383 () Bool)

(assert (=> b!4052 m!6383))

(assert (=> start!534 d!2932))

(declare-fun d!2934 () Bool)

(declare-fun e!2261 () Bool)

(assert (=> d!2934 e!2261))

(declare-fun res!1233 () Bool)

(assert (=> d!2934 (=> (not res!1233) (not e!2261))))

(declare-fun lt!1157 () List!78)

(assert (=> d!2934 (= res!1233 (= (size!23 lt!1157) (+ (size!23 front!19) (size!23 (reverse!5 rear!18)))))))

(declare-fun e!2262 () List!78)

(assert (=> d!2934 (= lt!1157 e!2262)))

(declare-fun c!1480 () Bool)

(assert (=> d!2934 (= c!1480 (is-Nil!79 front!19))))

(assert (=> d!2934 (= (concat!2 front!19 (reverse!5 rear!18)) lt!1157)))

(declare-fun b!4059 () Bool)

(assert (=> b!4059 (= e!2262 (reverse!5 rear!18))))

(declare-fun b!4060 () Bool)

(assert (=> b!4060 (= e!2262 (Cons!78 (head!250 front!19) (concat!2 (tail!262 front!19) (reverse!5 rear!18))))))

(declare-fun b!4061 () Bool)

(declare-fun content!22 (List!78) (Set (_ BitVec 32)))

(assert (=> b!4061 (= e!2261 (= (content!22 lt!1157) (union (content!22 front!19) (content!22 (reverse!5 rear!18)))))))

(assert (= (and d!2934 c!1480) b!4059))

(assert (= (and d!2934 (not c!1480)) b!4060))

(assert (= (and d!2934 res!1233) b!4061))

(declare-fun m!6385 () Bool)

(assert (=> d!2934 m!6385))

(assert (=> d!2934 m!6369))

(assert (=> d!2934 m!6371))

(declare-fun m!6387 () Bool)

(assert (=> d!2934 m!6387))

(assert (=> b!4060 m!6371))

(declare-fun m!6389 () Bool)

(assert (=> b!4060 m!6389))

(declare-fun m!6391 () Bool)

(assert (=> b!4061 m!6391))

(declare-fun m!6393 () Bool)

(assert (=> b!4061 m!6393))

(assert (=> b!4061 m!6371))

(declare-fun m!6395 () Bool)

(assert (=> b!4061 m!6395))

(assert (=> b!4043 d!2934))

(declare-fun d!2936 () Bool)

(declare-fun lt!1160 () List!78)

(assert (=> d!2936 (= (content!22 lt!1160) (content!22 rear!18))))

(declare-fun e!2265 () List!78)

(assert (=> d!2936 (= lt!1160 e!2265)))

(declare-fun c!1483 () Bool)

(assert (=> d!2936 (= c!1483 (is-Nil!79 rear!18))))

(assert (=> d!2936 (= (reverse!5 rear!18) lt!1160)))

(declare-fun b!4066 () Bool)

(assert (=> b!4066 (= e!2265 Nil!79)))

(declare-fun b!4067 () Bool)

(assert (=> b!4067 (= e!2265 (concat!2 (reverse!5 (tail!262 rear!18)) (Cons!78 (head!250 rear!18) Nil!79)))))

(assert (= (and d!2936 c!1483) b!4066))

(assert (= (and d!2936 (not c!1483)) b!4067))

(declare-fun m!6397 () Bool)

(assert (=> d!2936 m!6397))

(declare-fun m!6399 () Bool)

(assert (=> d!2936 m!6399))

(declare-fun m!6401 () Bool)

(assert (=> b!4067 m!6401))

(assert (=> b!4067 m!6401))

(declare-fun m!6403 () Bool)

(assert (=> b!4067 m!6403))

(assert (=> b!4043 d!2936))

(push 1)

(assert (not b!4061))

(assert (not b!4067))

(assert (not d!2934))

(assert (not b!4050))

(assert (not b!4060))

(assert (not d!2928))

(assert (not d!2936))

(assert (not b!4052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2938 () Bool)

(declare-fun lt!1161 () Int)

(assert (=> d!2938 (>= lt!1161 0)))

(declare-fun e!2266 () Int)

(assert (=> d!2938 (= lt!1161 e!2266)))

(declare-fun c!1484 () Bool)

(assert (=> d!2938 (= c!1484 (is-Nil!79 (tail!262 front!19)))))

(assert (=> d!2938 (= (size!23 (tail!262 front!19)) lt!1161)))

(declare-fun b!4068 () Bool)

(assert (=> b!4068 (= e!2266 0)))

(declare-fun b!4069 () Bool)

(assert (=> b!4069 (= e!2266 (+ 1 (size!23 (tail!262 (tail!262 front!19)))))))

(assert (= (and d!2938 c!1484) b!4068))

(assert (= (and d!2938 (not c!1484)) b!4069))

(declare-fun m!6405 () Bool)

(assert (=> b!4069 m!6405))

(assert (=> b!4052 d!2938))

(declare-fun d!2940 () Bool)

(declare-fun lt!1162 () Int)

(assert (=> d!2940 (>= lt!1162 0)))

(declare-fun e!2267 () Int)

(assert (=> d!2940 (= lt!1162 e!2267)))

(declare-fun c!1485 () Bool)

(assert (=> d!2940 (= c!1485 (is-Nil!79 lt!1157))))

(assert (=> d!2940 (= (size!23 lt!1157) lt!1162)))

(declare-fun b!4070 () Bool)

(assert (=> b!4070 (= e!2267 0)))

(declare-fun b!4071 () Bool)

(assert (=> b!4071 (= e!2267 (+ 1 (size!23 (tail!262 lt!1157))))))

(assert (= (and d!2940 c!1485) b!4070))

(assert (= (and d!2940 (not c!1485)) b!4071))

(declare-fun m!6407 () Bool)

(assert (=> b!4071 m!6407))

(assert (=> d!2934 d!2940))

(assert (=> d!2934 d!2932))

(declare-fun d!2942 () Bool)

(declare-fun lt!1163 () Int)

(assert (=> d!2942 (>= lt!1163 0)))

(declare-fun e!2268 () Int)

(assert (=> d!2942 (= lt!1163 e!2268)))

(declare-fun c!1486 () Bool)

(assert (=> d!2942 (= c!1486 (is-Nil!79 (reverse!5 rear!18)))))

(assert (=> d!2942 (= (size!23 (reverse!5 rear!18)) lt!1163)))

(declare-fun b!4072 () Bool)

(assert (=> b!4072 (= e!2268 0)))

(declare-fun b!4073 () Bool)

(assert (=> b!4073 (= e!2268 (+ 1 (size!23 (tail!262 (reverse!5 rear!18)))))))

(assert (= (and d!2942 c!1486) b!4072))

(assert (= (and d!2942 (not c!1486)) b!4073))

(declare-fun m!6409 () Bool)

(assert (=> b!4073 m!6409))

(assert (=> d!2934 d!2942))

(declare-fun d!2944 () Bool)

(declare-fun c!1489 () Bool)

(assert (=> d!2944 (= c!1489 (is-Nil!79 lt!1160))))

(declare-fun e!2271 () (Set (_ BitVec 32)))

(assert (=> d!2944 (= (content!22 lt!1160) e!2271)))

(declare-fun b!4078 () Bool)

(assert (=> b!4078 (= e!2271 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4079 () Bool)

(assert (=> b!4079 (= e!2271 (union (insert (head!250 lt!1160) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!262 lt!1160))))))

(assert (= (and d!2944 c!1489) b!4078))

(assert (= (and d!2944 (not c!1489)) b!4079))

(declare-fun m!6411 () Bool)

(assert (=> b!4079 m!6411))

(declare-fun m!6413 () Bool)

(assert (=> b!4079 m!6413))

(assert (=> d!2936 d!2944))

(declare-fun d!2946 () Bool)

(declare-fun c!1490 () Bool)

(assert (=> d!2946 (= c!1490 (is-Nil!79 rear!18))))

(declare-fun e!2272 () (Set (_ BitVec 32)))

(assert (=> d!2946 (= (content!22 rear!18) e!2272)))

(declare-fun b!4080 () Bool)

(assert (=> b!4080 (= e!2272 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4081 () Bool)

(assert (=> b!4081 (= e!2272 (union (insert (head!250 rear!18) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!262 rear!18))))))

(assert (= (and d!2946 c!1490) b!4080))

(assert (= (and d!2946 (not c!1490)) b!4081))

(declare-fun m!6415 () Bool)

(assert (=> b!4081 m!6415))

(declare-fun m!6417 () Bool)

(assert (=> b!4081 m!6417))

(assert (=> d!2936 d!2946))

(declare-fun d!2948 () Bool)

(declare-fun lt!1164 () Int)

(assert (=> d!2948 (>= lt!1164 0)))

(declare-fun e!2273 () Int)

(assert (=> d!2948 (= lt!1164 e!2273)))

(declare-fun c!1491 () Bool)

(assert (=> d!2948 (= c!1491 (is-Nil!79 (front!78 x$3!44)))))

(assert (=> d!2948 (= (size!23 (front!78 x$3!44)) lt!1164)))

(declare-fun b!4082 () Bool)

(assert (=> b!4082 (= e!2273 0)))

(declare-fun b!4083 () Bool)

(assert (=> b!4083 (= e!2273 (+ 1 (size!23 (tail!262 (front!78 x$3!44)))))))

(assert (= (and d!2948 c!1491) b!4082))

(assert (= (and d!2948 (not c!1491)) b!4083))

(declare-fun m!6419 () Bool)

(assert (=> b!4083 m!6419))

(assert (=> d!2928 d!2948))

(declare-fun d!2950 () Bool)

(declare-fun lt!1165 () Int)

(assert (=> d!2950 (>= lt!1165 0)))

(declare-fun e!2274 () Int)

(assert (=> d!2950 (= lt!1165 e!2274)))

(declare-fun c!1492 () Bool)

(assert (=> d!2950 (= c!1492 (is-Nil!79 (rear!80 x$3!44)))))

(assert (=> d!2950 (= (size!23 (rear!80 x$3!44)) lt!1165)))

(declare-fun b!4084 () Bool)

(assert (=> b!4084 (= e!2274 0)))

(declare-fun b!4085 () Bool)

(assert (=> b!4085 (= e!2274 (+ 1 (size!23 (tail!262 (rear!80 x$3!44)))))))

(assert (= (and d!2950 c!1492) b!4084))

(assert (= (and d!2950 (not c!1492)) b!4085))

(declare-fun m!6421 () Bool)

(assert (=> b!4085 m!6421))

(assert (=> d!2928 d!2950))

(declare-fun d!2952 () Bool)

(declare-fun lt!1166 () Int)

(assert (=> d!2952 (>= lt!1166 0)))

(declare-fun e!2275 () Int)

(assert (=> d!2952 (= lt!1166 e!2275)))

(declare-fun c!1493 () Bool)

(assert (=> d!2952 (= c!1493 (is-Nil!79 (tail!262 rear!18)))))

(assert (=> d!2952 (= (size!23 (tail!262 rear!18)) lt!1166)))

(declare-fun b!4086 () Bool)

(assert (=> b!4086 (= e!2275 0)))

(declare-fun b!4087 () Bool)

(assert (=> b!4087 (= e!2275 (+ 1 (size!23 (tail!262 (tail!262 rear!18)))))))

(assert (= (and d!2952 c!1493) b!4086))

(assert (= (and d!2952 (not c!1493)) b!4087))

(declare-fun m!6423 () Bool)

(assert (=> b!4087 m!6423))

(assert (=> b!4050 d!2952))

(declare-fun d!2954 () Bool)

(declare-fun e!2276 () Bool)

(assert (=> d!2954 e!2276))

(declare-fun res!1234 () Bool)

(assert (=> d!2954 (=> (not res!1234) (not e!2276))))

(declare-fun lt!1167 () List!78)

(assert (=> d!2954 (= res!1234 (= (size!23 lt!1167) (+ (size!23 (tail!262 front!19)) (size!23 (reverse!5 rear!18)))))))

(declare-fun e!2277 () List!78)

(assert (=> d!2954 (= lt!1167 e!2277)))

(declare-fun c!1494 () Bool)

(assert (=> d!2954 (= c!1494 (is-Nil!79 (tail!262 front!19)))))

(assert (=> d!2954 (= (concat!2 (tail!262 front!19) (reverse!5 rear!18)) lt!1167)))

(declare-fun b!4088 () Bool)

(assert (=> b!4088 (= e!2277 (reverse!5 rear!18))))

(declare-fun b!4089 () Bool)

(assert (=> b!4089 (= e!2277 (Cons!78 (head!250 (tail!262 front!19)) (concat!2 (tail!262 (tail!262 front!19)) (reverse!5 rear!18))))))

(declare-fun b!4090 () Bool)

(assert (=> b!4090 (= e!2276 (= (content!22 lt!1167) (union (content!22 (tail!262 front!19)) (content!22 (reverse!5 rear!18)))))))

(assert (= (and d!2954 c!1494) b!4088))

(assert (= (and d!2954 (not c!1494)) b!4089))

(assert (= (and d!2954 res!1234) b!4090))

(declare-fun m!6425 () Bool)

(assert (=> d!2954 m!6425))

(assert (=> d!2954 m!6383))

(assert (=> d!2954 m!6371))

(assert (=> d!2954 m!6387))

(assert (=> b!4089 m!6371))

(declare-fun m!6427 () Bool)

(assert (=> b!4089 m!6427))

(declare-fun m!6429 () Bool)

(assert (=> b!4090 m!6429))

(declare-fun m!6431 () Bool)

(assert (=> b!4090 m!6431))

(assert (=> b!4090 m!6371))

(assert (=> b!4090 m!6395))

(assert (=> b!4060 d!2954))

(declare-fun d!2956 () Bool)

(declare-fun e!2278 () Bool)

(assert (=> d!2956 e!2278))

(declare-fun res!1235 () Bool)

(assert (=> d!2956 (=> (not res!1235) (not e!2278))))

(declare-fun lt!1168 () List!78)

(assert (=> d!2956 (= res!1235 (= (size!23 lt!1168) (+ (size!23 (reverse!5 (tail!262 rear!18))) (size!23 (Cons!78 (head!250 rear!18) Nil!79)))))))

(declare-fun e!2279 () List!78)

(assert (=> d!2956 (= lt!1168 e!2279)))

(declare-fun c!1495 () Bool)

(assert (=> d!2956 (= c!1495 (is-Nil!79 (reverse!5 (tail!262 rear!18))))))

(assert (=> d!2956 (= (concat!2 (reverse!5 (tail!262 rear!18)) (Cons!78 (head!250 rear!18) Nil!79)) lt!1168)))

(declare-fun b!4091 () Bool)

(assert (=> b!4091 (= e!2279 (Cons!78 (head!250 rear!18) Nil!79))))

(declare-fun b!4092 () Bool)

(assert (=> b!4092 (= e!2279 (Cons!78 (head!250 (reverse!5 (tail!262 rear!18))) (concat!2 (tail!262 (reverse!5 (tail!262 rear!18))) (Cons!78 (head!250 rear!18) Nil!79))))))

(declare-fun b!4093 () Bool)

(assert (=> b!4093 (= e!2278 (= (content!22 lt!1168) (union (content!22 (reverse!5 (tail!262 rear!18))) (content!22 (Cons!78 (head!250 rear!18) Nil!79)))))))

(assert (= (and d!2956 c!1495) b!4091))

(assert (= (and d!2956 (not c!1495)) b!4092))

(assert (= (and d!2956 res!1235) b!4093))

(declare-fun m!6433 () Bool)

(assert (=> d!2956 m!6433))

(assert (=> d!2956 m!6401))

(declare-fun m!6435 () Bool)

(assert (=> d!2956 m!6435))

(declare-fun m!6437 () Bool)

(assert (=> d!2956 m!6437))

(declare-fun m!6439 () Bool)

(assert (=> b!4092 m!6439))

(declare-fun m!6441 () Bool)

(assert (=> b!4093 m!6441))

(assert (=> b!4093 m!6401))

(declare-fun m!6443 () Bool)

(assert (=> b!4093 m!6443))

(declare-fun m!6445 () Bool)

(assert (=> b!4093 m!6445))

(assert (=> b!4067 d!2956))

(declare-fun d!2958 () Bool)

(declare-fun lt!1169 () List!78)

(assert (=> d!2958 (= (content!22 lt!1169) (content!22 (tail!262 rear!18)))))

(declare-fun e!2280 () List!78)

(assert (=> d!2958 (= lt!1169 e!2280)))

(declare-fun c!1496 () Bool)

(assert (=> d!2958 (= c!1496 (is-Nil!79 (tail!262 rear!18)))))

(assert (=> d!2958 (= (reverse!5 (tail!262 rear!18)) lt!1169)))

(declare-fun b!4094 () Bool)

(assert (=> b!4094 (= e!2280 Nil!79)))

(declare-fun b!4095 () Bool)

(assert (=> b!4095 (= e!2280 (concat!2 (reverse!5 (tail!262 (tail!262 rear!18))) (Cons!78 (head!250 (tail!262 rear!18)) Nil!79)))))

(assert (= (and d!2958 c!1496) b!4094))

(assert (= (and d!2958 (not c!1496)) b!4095))

(declare-fun m!6447 () Bool)

(assert (=> d!2958 m!6447))

(assert (=> d!2958 m!6417))

(declare-fun m!6449 () Bool)

(assert (=> b!4095 m!6449))

(assert (=> b!4095 m!6449))

(declare-fun m!6451 () Bool)

(assert (=> b!4095 m!6451))

(assert (=> b!4067 d!2958))

(declare-fun d!2960 () Bool)

(declare-fun c!1497 () Bool)

(assert (=> d!2960 (= c!1497 (is-Nil!79 lt!1157))))

(declare-fun e!2281 () (Set (_ BitVec 32)))

(assert (=> d!2960 (= (content!22 lt!1157) e!2281)))

(declare-fun b!4096 () Bool)

(assert (=> b!4096 (= e!2281 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4097 () Bool)

(assert (=> b!4097 (= e!2281 (union (insert (head!250 lt!1157) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!262 lt!1157))))))

(assert (= (and d!2960 c!1497) b!4096))

(assert (= (and d!2960 (not c!1497)) b!4097))

(declare-fun m!6453 () Bool)

(assert (=> b!4097 m!6453))

(declare-fun m!6455 () Bool)

(assert (=> b!4097 m!6455))

(assert (=> b!4061 d!2960))

(declare-fun d!2962 () Bool)

(declare-fun c!1498 () Bool)

(assert (=> d!2962 (= c!1498 (is-Nil!79 front!19))))

(declare-fun e!2282 () (Set (_ BitVec 32)))

(assert (=> d!2962 (= (content!22 front!19) e!2282)))

(declare-fun b!4098 () Bool)

(assert (=> b!4098 (= e!2282 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4099 () Bool)

(assert (=> b!4099 (= e!2282 (union (insert (head!250 front!19) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!262 front!19))))))

(assert (= (and d!2962 c!1498) b!4098))

(assert (= (and d!2962 (not c!1498)) b!4099))

(declare-fun m!6457 () Bool)

(assert (=> b!4099 m!6457))

(assert (=> b!4099 m!6431))

(assert (=> b!4061 d!2962))

(declare-fun d!2964 () Bool)

(declare-fun c!1499 () Bool)

(assert (=> d!2964 (= c!1499 (is-Nil!79 (reverse!5 rear!18)))))

(declare-fun e!2283 () (Set (_ BitVec 32)))

(assert (=> d!2964 (= (content!22 (reverse!5 rear!18)) e!2283)))

(declare-fun b!4100 () Bool)

(assert (=> b!4100 (= e!2283 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4101 () Bool)

(assert (=> b!4101 (= e!2283 (union (insert (head!250 (reverse!5 rear!18)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!262 (reverse!5 rear!18)))))))

(assert (= (and d!2964 c!1499) b!4100))

(assert (= (and d!2964 (not c!1499)) b!4101))

(declare-fun m!6459 () Bool)

(assert (=> b!4101 m!6459))

(declare-fun m!6461 () Bool)

(assert (=> b!4101 m!6461))

(assert (=> b!4061 d!2964))

(push 1)

(assert (not b!4099))

(assert (not b!4101))

(assert (not b!4073))

(assert (not b!4092))

(assert (not d!2956))

(assert (not b!4093))

(assert (not b!4083))

(assert (not b!4079))

(assert (not b!4087))

(assert (not b!4069))

(assert (not b!4085))

(assert (not b!4095))

(assert (not b!4097))

(assert (not b!4071))

(assert (not b!4090))

(assert (not b!4081))

(assert (not d!2958))

(assert (not b!4089))

(assert (not d!2954))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


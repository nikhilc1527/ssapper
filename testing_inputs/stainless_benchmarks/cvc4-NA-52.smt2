; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!390 () Bool)

(assert start!390)

(declare-fun res!1069 () Bool)

(declare-fun e!1934 () Bool)

(assert (=> start!390 (=> (not res!1069) (not e!1934))))

(declare-datatypes () ((List!65 (Cons!65 (head!237 (_ BitVec 32)) (tail!249 List!65)) (Nil!66))))

(declare-datatypes () ((AbsQueue!14 (Queue!13 (front!62 List!65) (rear!64 List!65)))))

(declare-fun queue!45 () AbsQueue!14)

(declare-fun isEmpty!12 (AbsQueue!14) Bool)

(assert (=> start!390 (= res!1069 (isEmpty!12 queue!45))))

(assert (=> start!390 e!1934))

(assert (=> start!390 true))

(declare-fun b!3432 () Bool)

(declare-fun res!1068 () Bool)

(assert (=> b!3432 (=> (not res!1068) (not e!1934))))

(declare-fun elem!55 () (_ BitVec 32))

(declare-fun queue!48 () AbsQueue!14)

(declare-fun enqueue!0 (AbsQueue!14 (_ BitVec 32)) AbsQueue!14)

(assert (=> b!3432 (= res!1068 (= queue!48 (enqueue!0 queue!45 elem!55)))))

(declare-fun b!3433 () Bool)

(declare-fun e!1935 () Bool)

(assert (=> b!3433 (= e!1934 e!1935)))

(declare-fun res!1067 () Bool)

(assert (=> b!3433 (=> res!1067 e!1935)))

(declare-fun isAmortized!0 (AbsQueue!14) Bool)

(assert (=> b!3433 (= res!1067 (not (isAmortized!0 queue!48)))))

(declare-fun b!3434 () Bool)

(assert (=> b!3434 (= e!1935 (isEmpty!12 queue!48))))

(assert (= (and start!390 res!1069) b!3432))

(assert (= (and b!3432 res!1068) b!3433))

(assert (= (and b!3433 (not res!1067)) b!3434))

(declare-fun m!5387 () Bool)

(assert (=> start!390 m!5387))

(declare-fun m!5389 () Bool)

(assert (=> b!3432 m!5389))

(declare-fun m!5391 () Bool)

(assert (=> b!3433 m!5391))

(declare-fun m!5393 () Bool)

(assert (=> b!3434 m!5393))

(push 1)

(assert (not b!3433))

(assert (not start!390))

(assert (not b!3432))

(assert (not b!3434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2522 () Bool)

(declare-fun size!23 (List!65) Int)

(assert (=> d!2522 (= (isAmortized!0 queue!48) (>= (size!23 (front!62 queue!48)) (size!23 (rear!64 queue!48))))))

(declare-fun bs!243 () Bool)

(assert (= bs!243 d!2522))

(declare-fun m!5395 () Bool)

(assert (=> bs!243 m!5395))

(declare-fun m!5397 () Bool)

(assert (=> bs!243 m!5397))

(assert (=> b!3433 d!2522))

(declare-fun d!2524 () Bool)

(assert (=> d!2524 (= (isEmpty!12 queue!45) (and (is-Nil!66 (front!62 queue!45)) (is-Nil!66 (rear!64 queue!45))))))

(assert (=> start!390 d!2524))

(declare-fun d!2526 () Bool)

(declare-fun lt!964 () AbsQueue!14)

(assert (=> d!2526 (isAmortized!0 lt!964)))

(declare-fun amortizedQueue!0 (List!65 List!65) AbsQueue!14)

(assert (=> d!2526 (= lt!964 (amortizedQueue!0 (front!62 queue!45) (Cons!65 elem!55 (rear!64 queue!45))))))

(assert (=> d!2526 (= (enqueue!0 queue!45 elem!55) lt!964)))

(declare-fun bs!244 () Bool)

(assert (= bs!244 d!2526))

(declare-fun m!5399 () Bool)

(assert (=> bs!244 m!5399))

(declare-fun m!5401 () Bool)

(assert (=> bs!244 m!5401))

(assert (=> b!3432 d!2526))

(declare-fun d!2528 () Bool)

(assert (=> d!2528 (= (isEmpty!12 queue!48) (and (is-Nil!66 (front!62 queue!48)) (is-Nil!66 (rear!64 queue!48))))))

(assert (=> b!3434 d!2528))

(push 1)

(assert (not d!2526))

(assert (not d!2522))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2530 () Bool)

(assert (=> d!2530 (= (isAmortized!0 lt!964) (>= (size!23 (front!62 lt!964)) (size!23 (rear!64 lt!964))))))

(declare-fun bs!245 () Bool)

(assert (= bs!245 d!2530))

(declare-fun m!5403 () Bool)

(assert (=> bs!245 m!5403))

(declare-fun m!5405 () Bool)

(assert (=> bs!245 m!5405))

(assert (=> d!2526 d!2530))

(declare-fun d!2532 () Bool)

(declare-fun lt!967 () AbsQueue!14)

(assert (=> d!2532 (isAmortized!0 lt!967)))

(declare-fun e!1938 () AbsQueue!14)

(assert (=> d!2532 (= lt!967 e!1938)))

(declare-fun c!1246 () Bool)

(assert (=> d!2532 (= c!1246 (<= (size!23 (Cons!65 elem!55 (rear!64 queue!45))) (size!23 (front!62 queue!45))))))

(assert (=> d!2532 (= (amortizedQueue!0 (front!62 queue!45) (Cons!65 elem!55 (rear!64 queue!45))) lt!967)))

(declare-fun b!3439 () Bool)

(assert (=> b!3439 (= e!1938 (Queue!13 (front!62 queue!45) (Cons!65 elem!55 (rear!64 queue!45))))))

(declare-fun b!3440 () Bool)

(declare-fun concat!2 (List!65 List!65) List!65)

(declare-fun reverse!5 (List!65) List!65)

(assert (=> b!3440 (= e!1938 (Queue!13 (concat!2 (front!62 queue!45) (reverse!5 (Cons!65 elem!55 (rear!64 queue!45)))) Nil!66))))

(assert (= (and d!2532 c!1246) b!3439))

(assert (= (and d!2532 (not c!1246)) b!3440))

(declare-fun m!5407 () Bool)

(assert (=> d!2532 m!5407))

(declare-fun m!5409 () Bool)

(assert (=> d!2532 m!5409))

(declare-fun m!5411 () Bool)

(assert (=> d!2532 m!5411))

(declare-fun m!5413 () Bool)

(assert (=> b!3440 m!5413))

(assert (=> b!3440 m!5413))

(declare-fun m!5415 () Bool)

(assert (=> b!3440 m!5415))

(assert (=> d!2526 d!2532))

(declare-fun d!2534 () Bool)

(declare-fun lt!970 () Int)

(assert (=> d!2534 (>= lt!970 0)))

(declare-fun e!1941 () Int)

(assert (=> d!2534 (= lt!970 e!1941)))

(declare-fun c!1249 () Bool)

(assert (=> d!2534 (= c!1249 (is-Nil!66 (front!62 queue!48)))))

(assert (=> d!2534 (= (size!23 (front!62 queue!48)) lt!970)))

(declare-fun b!3445 () Bool)

(assert (=> b!3445 (= e!1941 0)))

(declare-fun b!3446 () Bool)

(assert (=> b!3446 (= e!1941 (+ 1 (size!23 (tail!249 (front!62 queue!48)))))))

(assert (= (and d!2534 c!1249) b!3445))

(assert (= (and d!2534 (not c!1249)) b!3446))

(declare-fun m!5417 () Bool)

(assert (=> b!3446 m!5417))

(assert (=> d!2522 d!2534))

(declare-fun d!2536 () Bool)

(declare-fun lt!971 () Int)

(assert (=> d!2536 (>= lt!971 0)))

(declare-fun e!1942 () Int)

(assert (=> d!2536 (= lt!971 e!1942)))

(declare-fun c!1250 () Bool)

(assert (=> d!2536 (= c!1250 (is-Nil!66 (rear!64 queue!48)))))

(assert (=> d!2536 (= (size!23 (rear!64 queue!48)) lt!971)))

(declare-fun b!3447 () Bool)

(assert (=> b!3447 (= e!1942 0)))

(declare-fun b!3448 () Bool)

(assert (=> b!3448 (= e!1942 (+ 1 (size!23 (tail!249 (rear!64 queue!48)))))))

(assert (= (and d!2536 c!1250) b!3447))

(assert (= (and d!2536 (not c!1250)) b!3448))

(declare-fun m!5419 () Bool)

(assert (=> b!3448 m!5419))

(assert (=> d!2522 d!2536))

(push 1)

(assert (not b!3448))

(assert (not b!3446))

(assert (not b!3440))

(assert (not d!2530))

(assert (not d!2532))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2538 () Bool)

(declare-fun lt!972 () Int)

(assert (=> d!2538 (>= lt!972 0)))

(declare-fun e!1943 () Int)

(assert (=> d!2538 (= lt!972 e!1943)))

(declare-fun c!1251 () Bool)

(assert (=> d!2538 (= c!1251 (is-Nil!66 (tail!249 (rear!64 queue!48))))))

(assert (=> d!2538 (= (size!23 (tail!249 (rear!64 queue!48))) lt!972)))

(declare-fun b!3449 () Bool)

(assert (=> b!3449 (= e!1943 0)))

(declare-fun b!3450 () Bool)

(assert (=> b!3450 (= e!1943 (+ 1 (size!23 (tail!249 (tail!249 (rear!64 queue!48))))))))

(assert (= (and d!2538 c!1251) b!3449))

(assert (= (and d!2538 (not c!1251)) b!3450))

(declare-fun m!5421 () Bool)

(assert (=> b!3450 m!5421))

(assert (=> b!3448 d!2538))

(declare-fun d!2540 () Bool)

(declare-fun lt!973 () Int)

(assert (=> d!2540 (>= lt!973 0)))

(declare-fun e!1944 () Int)

(assert (=> d!2540 (= lt!973 e!1944)))

(declare-fun c!1252 () Bool)

(assert (=> d!2540 (= c!1252 (is-Nil!66 (tail!249 (front!62 queue!48))))))

(assert (=> d!2540 (= (size!23 (tail!249 (front!62 queue!48))) lt!973)))

(declare-fun b!3451 () Bool)

(assert (=> b!3451 (= e!1944 0)))

(declare-fun b!3452 () Bool)

(assert (=> b!3452 (= e!1944 (+ 1 (size!23 (tail!249 (tail!249 (front!62 queue!48))))))))

(assert (= (and d!2540 c!1252) b!3451))

(assert (= (and d!2540 (not c!1252)) b!3452))

(declare-fun m!5423 () Bool)

(assert (=> b!3452 m!5423))

(assert (=> b!3446 d!2540))

(declare-fun d!2542 () Bool)

(assert (=> d!2542 (= (isAmortized!0 lt!967) (>= (size!23 (front!62 lt!967)) (size!23 (rear!64 lt!967))))))

(declare-fun bs!246 () Bool)

(assert (= bs!246 d!2542))

(declare-fun m!5425 () Bool)

(assert (=> bs!246 m!5425))

(declare-fun m!5427 () Bool)

(assert (=> bs!246 m!5427))

(assert (=> d!2532 d!2542))

(declare-fun d!2544 () Bool)

(declare-fun lt!974 () Int)

(assert (=> d!2544 (>= lt!974 0)))

(declare-fun e!1945 () Int)

(assert (=> d!2544 (= lt!974 e!1945)))

(declare-fun c!1253 () Bool)

(assert (=> d!2544 (= c!1253 (is-Nil!66 (Cons!65 elem!55 (rear!64 queue!45))))))

(assert (=> d!2544 (= (size!23 (Cons!65 elem!55 (rear!64 queue!45))) lt!974)))

(declare-fun b!3453 () Bool)

(assert (=> b!3453 (= e!1945 0)))

(declare-fun b!3454 () Bool)

(assert (=> b!3454 (= e!1945 (+ 1 (size!23 (tail!249 (Cons!65 elem!55 (rear!64 queue!45))))))))

(assert (= (and d!2544 c!1253) b!3453))

(assert (= (and d!2544 (not c!1253)) b!3454))

(declare-fun m!5429 () Bool)

(assert (=> b!3454 m!5429))

(assert (=> d!2532 d!2544))

(declare-fun d!2546 () Bool)

(declare-fun lt!975 () Int)

(assert (=> d!2546 (>= lt!975 0)))

(declare-fun e!1946 () Int)

(assert (=> d!2546 (= lt!975 e!1946)))

(declare-fun c!1254 () Bool)

(assert (=> d!2546 (= c!1254 (is-Nil!66 (front!62 queue!45)))))

(assert (=> d!2546 (= (size!23 (front!62 queue!45)) lt!975)))

(declare-fun b!3455 () Bool)

(assert (=> b!3455 (= e!1946 0)))

(declare-fun b!3456 () Bool)

(assert (=> b!3456 (= e!1946 (+ 1 (size!23 (tail!249 (front!62 queue!45)))))))

(assert (= (and d!2546 c!1254) b!3455))

(assert (= (and d!2546 (not c!1254)) b!3456))

(declare-fun m!5431 () Bool)

(assert (=> b!3456 m!5431))

(assert (=> d!2532 d!2546))

(declare-fun d!2548 () Bool)

(declare-fun e!1951 () Bool)

(assert (=> d!2548 e!1951))

(declare-fun res!1073 () Bool)

(assert (=> d!2548 (=> (not res!1073) (not e!1951))))

(declare-fun lt!978 () List!65)

(assert (=> d!2548 (= res!1073 (= (size!23 lt!978) (+ (size!23 (front!62 queue!45)) (size!23 (reverse!5 (Cons!65 elem!55 (rear!64 queue!45)))))))))

(declare-fun e!1952 () List!65)

(assert (=> d!2548 (= lt!978 e!1952)))

(declare-fun c!1257 () Bool)

(assert (=> d!2548 (= c!1257 (is-Nil!66 (front!62 queue!45)))))

(assert (=> d!2548 (= (concat!2 (front!62 queue!45) (reverse!5 (Cons!65 elem!55 (rear!64 queue!45)))) lt!978)))

(declare-fun b!3463 () Bool)

(assert (=> b!3463 (= e!1952 (reverse!5 (Cons!65 elem!55 (rear!64 queue!45))))))

(declare-fun b!3464 () Bool)

(assert (=> b!3464 (= e!1952 (Cons!65 (head!237 (front!62 queue!45)) (concat!2 (tail!249 (front!62 queue!45)) (reverse!5 (Cons!65 elem!55 (rear!64 queue!45))))))))

(declare-fun b!3465 () Bool)

(declare-fun content!22 (List!65) (Set (_ BitVec 32)))

(assert (=> b!3465 (= e!1951 (= (content!22 lt!978) (union (content!22 (front!62 queue!45)) (content!22 (reverse!5 (Cons!65 elem!55 (rear!64 queue!45)))))))))

(assert (= (and d!2548 c!1257) b!3463))

(assert (= (and d!2548 (not c!1257)) b!3464))

(assert (= (and d!2548 res!1073) b!3465))

(declare-fun m!5433 () Bool)

(assert (=> d!2548 m!5433))

(assert (=> d!2548 m!5411))

(assert (=> d!2548 m!5413))

(declare-fun m!5435 () Bool)

(assert (=> d!2548 m!5435))

(assert (=> b!3464 m!5413))

(declare-fun m!5437 () Bool)

(assert (=> b!3464 m!5437))

(declare-fun m!5439 () Bool)

(assert (=> b!3465 m!5439))

(declare-fun m!5441 () Bool)

(assert (=> b!3465 m!5441))

(assert (=> b!3465 m!5413))

(declare-fun m!5443 () Bool)

(assert (=> b!3465 m!5443))

(assert (=> b!3440 d!2548))

(declare-fun d!2550 () Bool)

(declare-fun lt!981 () List!65)

(assert (=> d!2550 (= (content!22 lt!981) (content!22 (Cons!65 elem!55 (rear!64 queue!45))))))

(declare-fun e!1955 () List!65)

(assert (=> d!2550 (= lt!981 e!1955)))

(declare-fun c!1260 () Bool)

(assert (=> d!2550 (= c!1260 (is-Nil!66 (Cons!65 elem!55 (rear!64 queue!45))))))

(assert (=> d!2550 (= (reverse!5 (Cons!65 elem!55 (rear!64 queue!45))) lt!981)))

(declare-fun b!3470 () Bool)

(assert (=> b!3470 (= e!1955 Nil!66)))

(declare-fun b!3471 () Bool)

(assert (=> b!3471 (= e!1955 (concat!2 (reverse!5 (tail!249 (Cons!65 elem!55 (rear!64 queue!45)))) (Cons!65 (head!237 (Cons!65 elem!55 (rear!64 queue!45))) Nil!66)))))

(assert (= (and d!2550 c!1260) b!3470))

(assert (= (and d!2550 (not c!1260)) b!3471))

(declare-fun m!5445 () Bool)

(assert (=> d!2550 m!5445))

(declare-fun m!5447 () Bool)

(assert (=> d!2550 m!5447))

(declare-fun m!5449 () Bool)

(assert (=> b!3471 m!5449))

(assert (=> b!3471 m!5449))

(declare-fun m!5451 () Bool)

(assert (=> b!3471 m!5451))

(assert (=> b!3440 d!2550))

(declare-fun d!2552 () Bool)

(declare-fun lt!982 () Int)

(assert (=> d!2552 (>= lt!982 0)))

(declare-fun e!1956 () Int)

(assert (=> d!2552 (= lt!982 e!1956)))

(declare-fun c!1261 () Bool)

(assert (=> d!2552 (= c!1261 (is-Nil!66 (front!62 lt!964)))))

(assert (=> d!2552 (= (size!23 (front!62 lt!964)) lt!982)))

(declare-fun b!3472 () Bool)

(assert (=> b!3472 (= e!1956 0)))

(declare-fun b!3473 () Bool)

(assert (=> b!3473 (= e!1956 (+ 1 (size!23 (tail!249 (front!62 lt!964)))))))

(assert (= (and d!2552 c!1261) b!3472))

(assert (= (and d!2552 (not c!1261)) b!3473))

(declare-fun m!5453 () Bool)

(assert (=> b!3473 m!5453))

(assert (=> d!2530 d!2552))

(declare-fun d!2554 () Bool)

(declare-fun lt!983 () Int)

(assert (=> d!2554 (>= lt!983 0)))

(declare-fun e!1957 () Int)

(assert (=> d!2554 (= lt!983 e!1957)))

(declare-fun c!1262 () Bool)

(assert (=> d!2554 (= c!1262 (is-Nil!66 (rear!64 lt!964)))))

(assert (=> d!2554 (= (size!23 (rear!64 lt!964)) lt!983)))

(declare-fun b!3474 () Bool)

(assert (=> b!3474 (= e!1957 0)))

(declare-fun b!3475 () Bool)

(assert (=> b!3475 (= e!1957 (+ 1 (size!23 (tail!249 (rear!64 lt!964)))))))

(assert (= (and d!2554 c!1262) b!3474))

(assert (= (and d!2554 (not c!1262)) b!3475))

(declare-fun m!5455 () Bool)

(assert (=> b!3475 m!5455))

(assert (=> d!2530 d!2554))

(push 1)

(assert (not d!2548))

(assert (not b!3456))

(assert (not b!3471))

(assert (not b!3465))

(assert (not d!2550))

(assert (not b!3473))

(assert (not b!3452))

(assert (not b!3454))

(assert (not d!2542))

(assert (not b!3450))

(assert (not b!3464))

(assert (not b!3475))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2556 () Bool)

(declare-fun lt!984 () Int)

(assert (=> d!2556 (>= lt!984 0)))

(declare-fun e!1958 () Int)

(assert (=> d!2556 (= lt!984 e!1958)))

(declare-fun c!1263 () Bool)

(assert (=> d!2556 (= c!1263 (is-Nil!66 (tail!249 (tail!249 (rear!64 queue!48)))))))

(assert (=> d!2556 (= (size!23 (tail!249 (tail!249 (rear!64 queue!48)))) lt!984)))

(declare-fun b!3476 () Bool)

(assert (=> b!3476 (= e!1958 0)))

(declare-fun b!3477 () Bool)

(assert (=> b!3477 (= e!1958 (+ 1 (size!23 (tail!249 (tail!249 (tail!249 (rear!64 queue!48)))))))))

(assert (= (and d!2556 c!1263) b!3476))

(assert (= (and d!2556 (not c!1263)) b!3477))

(declare-fun m!5457 () Bool)

(assert (=> b!3477 m!5457))

(assert (=> b!3450 d!2556))

(declare-fun d!2558 () Bool)

(declare-fun c!1266 () Bool)

(assert (=> d!2558 (= c!1266 (is-Nil!66 lt!981))))

(declare-fun e!1961 () (Set (_ BitVec 32)))

(assert (=> d!2558 (= (content!22 lt!981) e!1961)))

(declare-fun b!3482 () Bool)

(assert (=> b!3482 (= e!1961 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3483 () Bool)

(assert (=> b!3483 (= e!1961 (union (insert (head!237 lt!981) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!249 lt!981))))))

(assert (= (and d!2558 c!1266) b!3482))

(assert (= (and d!2558 (not c!1266)) b!3483))

(declare-fun m!5459 () Bool)

(assert (=> b!3483 m!5459))

(declare-fun m!5461 () Bool)

(assert (=> b!3483 m!5461))

(assert (=> d!2550 d!2558))

(declare-fun d!2560 () Bool)

(declare-fun c!1267 () Bool)

(assert (=> d!2560 (= c!1267 (is-Nil!66 (Cons!65 elem!55 (rear!64 queue!45))))))

(declare-fun e!1962 () (Set (_ BitVec 32)))

(assert (=> d!2560 (= (content!22 (Cons!65 elem!55 (rear!64 queue!45))) e!1962)))

(declare-fun b!3484 () Bool)

(assert (=> b!3484 (= e!1962 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3485 () Bool)

(assert (=> b!3485 (= e!1962 (union (insert (head!237 (Cons!65 elem!55 (rear!64 queue!45))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!249 (Cons!65 elem!55 (rear!64 queue!45))))))))

(assert (= (and d!2560 c!1267) b!3484))

(assert (= (and d!2560 (not c!1267)) b!3485))

(declare-fun m!5463 () Bool)

(assert (=> b!3485 m!5463))

(declare-fun m!5465 () Bool)

(assert (=> b!3485 m!5465))

(assert (=> d!2550 d!2560))

(declare-fun d!2562 () Bool)

(declare-fun lt!985 () Int)

(assert (=> d!2562 (>= lt!985 0)))

(declare-fun e!1963 () Int)

(assert (=> d!2562 (= lt!985 e!1963)))

(declare-fun c!1268 () Bool)

(assert (=> d!2562 (= c!1268 (is-Nil!66 (tail!249 (front!62 queue!45))))))

(assert (=> d!2562 (= (size!23 (tail!249 (front!62 queue!45))) lt!985)))

(declare-fun b!3486 () Bool)

(assert (=> b!3486 (= e!1963 0)))

(declare-fun b!3487 () Bool)

(assert (=> b!3487 (= e!1963 (+ 1 (size!23 (tail!249 (tail!249 (front!62 queue!45))))))))

(assert (= (and d!2562 c!1268) b!3486))

(assert (= (and d!2562 (not c!1268)) b!3487))

(declare-fun m!5467 () Bool)

(assert (=> b!3487 m!5467))

(assert (=> b!3456 d!2562))

(declare-fun d!2564 () Bool)

(declare-fun lt!986 () Int)

(assert (=> d!2564 (>= lt!986 0)))

(declare-fun e!1964 () Int)

(assert (=> d!2564 (= lt!986 e!1964)))

(declare-fun c!1269 () Bool)

(assert (=> d!2564 (= c!1269 (is-Nil!66 (tail!249 (tail!249 (front!62 queue!48)))))))

(assert (=> d!2564 (= (size!23 (tail!249 (tail!249 (front!62 queue!48)))) lt!986)))

(declare-fun b!3488 () Bool)

(assert (=> b!3488 (= e!1964 0)))

(declare-fun b!3489 () Bool)

(assert (=> b!3489 (= e!1964 (+ 1 (size!23 (tail!249 (tail!249 (tail!249 (front!62 queue!48)))))))))

(assert (= (and d!2564 c!1269) b!3488))

(assert (= (and d!2564 (not c!1269)) b!3489))

(declare-fun m!5469 () Bool)

(assert (=> b!3489 m!5469))

(assert (=> b!3452 d!2564))

(declare-fun d!2566 () Bool)

(declare-fun c!1270 () Bool)

(assert (=> d!2566 (= c!1270 (is-Nil!66 lt!978))))

(declare-fun e!1965 () (Set (_ BitVec 32)))

(assert (=> d!2566 (= (content!22 lt!978) e!1965)))

(declare-fun b!3490 () Bool)

(assert (=> b!3490 (= e!1965 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3491 () Bool)

(assert (=> b!3491 (= e!1965 (union (insert (head!237 lt!978) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!249 lt!978))))))

(assert (= (and d!2566 c!1270) b!3490))

(assert (= (and d!2566 (not c!1270)) b!3491))

(declare-fun m!5471 () Bool)

(assert (=> b!3491 m!5471))

(declare-fun m!5473 () Bool)

(assert (=> b!3491 m!5473))

(assert (=> b!3465 d!2566))

(declare-fun d!2568 () Bool)

(declare-fun c!1271 () Bool)

(assert (=> d!2568 (= c!1271 (is-Nil!66 (front!62 queue!45)))))

(declare-fun e!1966 () (Set (_ BitVec 32)))

(assert (=> d!2568 (= (content!22 (front!62 queue!45)) e!1966)))

(declare-fun b!3492 () Bool)

(assert (=> b!3492 (= e!1966 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3493 () Bool)

(assert (=> b!3493 (= e!1966 (union (insert (head!237 (front!62 queue!45)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!249 (front!62 queue!45)))))))

(assert (= (and d!2568 c!1271) b!3492))

(assert (= (and d!2568 (not c!1271)) b!3493))

(declare-fun m!5475 () Bool)

(assert (=> b!3493 m!5475))

(declare-fun m!5477 () Bool)

(assert (=> b!3493 m!5477))

(assert (=> b!3465 d!2568))

(declare-fun d!2570 () Bool)

(declare-fun c!1272 () Bool)

(assert (=> d!2570 (= c!1272 (is-Nil!66 (reverse!5 (Cons!65 elem!55 (rear!64 queue!45)))))))

(declare-fun e!1967 () (Set (_ BitVec 32)))

(assert (=> d!2570 (= (content!22 (reverse!5 (Cons!65 elem!55 (rear!64 queue!45)))) e!1967)))

(declare-fun b!3494 () Bool)

(assert (=> b!3494 (= e!1967 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3495 () Bool)

(assert (=> b!3495 (= e!1967 (union (insert (head!237 (reverse!5 (Cons!65 elem!55 (rear!64 queue!45)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!249 (reverse!5 (Cons!65 elem!55 (rear!64 queue!45)))))))))

(assert (= (and d!2570 c!1272) b!3494))

(assert (= (and d!2570 (not c!1272)) b!3495))

(declare-fun m!5479 () Bool)

(assert (=> b!3495 m!5479))

(declare-fun m!5481 () Bool)

(assert (=> b!3495 m!5481))

(assert (=> b!3465 d!2570))

(declare-fun d!2572 () Bool)

(declare-fun lt!987 () Int)

(assert (=> d!2572 (>= lt!987 0)))

(declare-fun e!1968 () Int)

(assert (=> d!2572 (= lt!987 e!1968)))

(declare-fun c!1273 () Bool)

(assert (=> d!2572 (= c!1273 (is-Nil!66 (tail!249 (Cons!65 elem!55 (rear!64 queue!45)))))))

(assert (=> d!2572 (= (size!23 (tail!249 (Cons!65 elem!55 (rear!64 queue!45)))) lt!987)))

(declare-fun b!3496 () Bool)

(assert (=> b!3496 (= e!1968 0)))

(declare-fun b!3497 () Bool)

(assert (=> b!3497 (= e!1968 (+ 1 (size!23 (tail!249 (tail!249 (Cons!65 elem!55 (rear!64 queue!45)))))))))

(assert (= (and d!2572 c!1273) b!3496))

(assert (= (and d!2572 (not c!1273)) b!3497))

(declare-fun m!5483 () Bool)

(assert (=> b!3497 m!5483))

(assert (=> b!3454 d!2572))

(declare-fun d!2574 () Bool)

(declare-fun lt!988 () Int)

(assert (=> d!2574 (>= lt!988 0)))

(declare-fun e!1969 () Int)

(assert (=> d!2574 (= lt!988 e!1969)))

(declare-fun c!1274 () Bool)

(assert (=> d!2574 (= c!1274 (is-Nil!66 (tail!249 (rear!64 lt!964))))))

(assert (=> d!2574 (= (size!23 (tail!249 (rear!64 lt!964))) lt!988)))

(declare-fun b!3498 () Bool)

(assert (=> b!3498 (= e!1969 0)))

(declare-fun b!3499 () Bool)

(assert (=> b!3499 (= e!1969 (+ 1 (size!23 (tail!249 (tail!249 (rear!64 lt!964))))))))

(assert (= (and d!2574 c!1274) b!3498))

(assert (= (and d!2574 (not c!1274)) b!3499))

(declare-fun m!5485 () Bool)

(assert (=> b!3499 m!5485))

(assert (=> b!3475 d!2574))

(declare-fun d!2576 () Bool)

(declare-fun e!1970 () Bool)

(assert (=> d!2576 e!1970))

(declare-fun res!1074 () Bool)

(assert (=> d!2576 (=> (not res!1074) (not e!1970))))

(declare-fun lt!989 () List!65)

(assert (=> d!2576 (= res!1074 (= (size!23 lt!989) (+ (size!23 (tail!249 (front!62 queue!45))) (size!23 (reverse!5 (Cons!65 elem!55 (rear!64 queue!45)))))))))

(declare-fun e!1971 () List!65)

(assert (=> d!2576 (= lt!989 e!1971)))

(declare-fun c!1275 () Bool)

(assert (=> d!2576 (= c!1275 (is-Nil!66 (tail!249 (front!62 queue!45))))))

(assert (=> d!2576 (= (concat!2 (tail!249 (front!62 queue!45)) (reverse!5 (Cons!65 elem!55 (rear!64 queue!45)))) lt!989)))

(declare-fun b!3500 () Bool)

(assert (=> b!3500 (= e!1971 (reverse!5 (Cons!65 elem!55 (rear!64 queue!45))))))

(declare-fun b!3501 () Bool)

(assert (=> b!3501 (= e!1971 (Cons!65 (head!237 (tail!249 (front!62 queue!45))) (concat!2 (tail!249 (tail!249 (front!62 queue!45))) (reverse!5 (Cons!65 elem!55 (rear!64 queue!45))))))))

(declare-fun b!3502 () Bool)

(assert (=> b!3502 (= e!1970 (= (content!22 lt!989) (union (content!22 (tail!249 (front!62 queue!45))) (content!22 (reverse!5 (Cons!65 elem!55 (rear!64 queue!45)))))))))

(assert (= (and d!2576 c!1275) b!3500))

(assert (= (and d!2576 (not c!1275)) b!3501))

(assert (= (and d!2576 res!1074) b!3502))

(declare-fun m!5487 () Bool)

(assert (=> d!2576 m!5487))

(assert (=> d!2576 m!5431))

(assert (=> d!2576 m!5413))

(assert (=> d!2576 m!5435))

(assert (=> b!3501 m!5413))

(declare-fun m!5489 () Bool)

(assert (=> b!3501 m!5489))

(declare-fun m!5491 () Bool)

(assert (=> b!3502 m!5491))

(assert (=> b!3502 m!5477))

(assert (=> b!3502 m!5413))

(assert (=> b!3502 m!5443))

(assert (=> b!3464 d!2576))

(declare-fun d!2578 () Bool)

(declare-fun lt!990 () Int)

(assert (=> d!2578 (>= lt!990 0)))

(declare-fun e!1972 () Int)

(assert (=> d!2578 (= lt!990 e!1972)))

(declare-fun c!1276 () Bool)

(assert (=> d!2578 (= c!1276 (is-Nil!66 (front!62 lt!967)))))

(assert (=> d!2578 (= (size!23 (front!62 lt!967)) lt!990)))

(declare-fun b!3503 () Bool)

(assert (=> b!3503 (= e!1972 0)))

(declare-fun b!3504 () Bool)

(assert (=> b!3504 (= e!1972 (+ 1 (size!23 (tail!249 (front!62 lt!967)))))))

(assert (= (and d!2578 c!1276) b!3503))

(assert (= (and d!2578 (not c!1276)) b!3504))

(declare-fun m!5493 () Bool)

(assert (=> b!3504 m!5493))

(assert (=> d!2542 d!2578))

(declare-fun d!2580 () Bool)

(declare-fun lt!991 () Int)

(assert (=> d!2580 (>= lt!991 0)))

(declare-fun e!1973 () Int)

(assert (=> d!2580 (= lt!991 e!1973)))

(declare-fun c!1277 () Bool)

(assert (=> d!2580 (= c!1277 (is-Nil!66 (rear!64 lt!967)))))

(assert (=> d!2580 (= (size!23 (rear!64 lt!967)) lt!991)))

(declare-fun b!3505 () Bool)

(assert (=> b!3505 (= e!1973 0)))

(declare-fun b!3506 () Bool)

(assert (=> b!3506 (= e!1973 (+ 1 (size!23 (tail!249 (rear!64 lt!967)))))))

(assert (= (and d!2580 c!1277) b!3505))

(assert (= (and d!2580 (not c!1277)) b!3506))

(declare-fun m!5495 () Bool)

(assert (=> b!3506 m!5495))

(assert (=> d!2542 d!2580))

(declare-fun d!2582 () Bool)

(declare-fun lt!992 () Int)

(assert (=> d!2582 (>= lt!992 0)))

(declare-fun e!1974 () Int)

(assert (=> d!2582 (= lt!992 e!1974)))

(declare-fun c!1278 () Bool)

(assert (=> d!2582 (= c!1278 (is-Nil!66 (tail!249 (front!62 lt!964))))))

(assert (=> d!2582 (= (size!23 (tail!249 (front!62 lt!964))) lt!992)))

(declare-fun b!3507 () Bool)

(assert (=> b!3507 (= e!1974 0)))

(declare-fun b!3508 () Bool)

(assert (=> b!3508 (= e!1974 (+ 1 (size!23 (tail!249 (tail!249 (front!62 lt!964))))))))

(assert (= (and d!2582 c!1278) b!3507))

(assert (= (and d!2582 (not c!1278)) b!3508))

(declare-fun m!5497 () Bool)

(assert (=> b!3508 m!5497))

(assert (=> b!3473 d!2582))

(declare-fun d!2584 () Bool)

(declare-fun lt!993 () Int)

(assert (=> d!2584 (>= lt!993 0)))

(declare-fun e!1975 () Int)

(assert (=> d!2584 (= lt!993 e!1975)))

(declare-fun c!1279 () Bool)

(assert (=> d!2584 (= c!1279 (is-Nil!66 lt!978))))

(assert (=> d!2584 (= (size!23 lt!978) lt!993)))

(declare-fun b!3509 () Bool)

(assert (=> b!3509 (= e!1975 0)))

(declare-fun b!3510 () Bool)

(assert (=> b!3510 (= e!1975 (+ 1 (size!23 (tail!249 lt!978))))))

(assert (= (and d!2584 c!1279) b!3509))

(assert (= (and d!2584 (not c!1279)) b!3510))

(declare-fun m!5499 () Bool)

(assert (=> b!3510 m!5499))

(assert (=> d!2548 d!2584))

(assert (=> d!2548 d!2546))

(declare-fun d!2586 () Bool)

(declare-fun lt!994 () Int)

(assert (=> d!2586 (>= lt!994 0)))

(declare-fun e!1976 () Int)

(assert (=> d!2586 (= lt!994 e!1976)))

(declare-fun c!1280 () Bool)

(assert (=> d!2586 (= c!1280 (is-Nil!66 (reverse!5 (Cons!65 elem!55 (rear!64 queue!45)))))))

(assert (=> d!2586 (= (size!23 (reverse!5 (Cons!65 elem!55 (rear!64 queue!45)))) lt!994)))

(declare-fun b!3511 () Bool)

(assert (=> b!3511 (= e!1976 0)))

(declare-fun b!3512 () Bool)

(assert (=> b!3512 (= e!1976 (+ 1 (size!23 (tail!249 (reverse!5 (Cons!65 elem!55 (rear!64 queue!45)))))))))

(assert (= (and d!2586 c!1280) b!3511))

(assert (= (and d!2586 (not c!1280)) b!3512))

(declare-fun m!5501 () Bool)

(assert (=> b!3512 m!5501))

(assert (=> d!2548 d!2586))

(declare-fun d!2588 () Bool)

(declare-fun e!1977 () Bool)

(assert (=> d!2588 e!1977))

(declare-fun res!1075 () Bool)

(assert (=> d!2588 (=> (not res!1075) (not e!1977))))

(declare-fun lt!995 () List!65)

(assert (=> d!2588 (= res!1075 (= (size!23 lt!995) (+ (size!23 (reverse!5 (tail!249 (Cons!65 elem!55 (rear!64 queue!45))))) (size!23 (Cons!65 (head!237 (Cons!65 elem!55 (rear!64 queue!45))) Nil!66)))))))

(declare-fun e!1978 () List!65)

(assert (=> d!2588 (= lt!995 e!1978)))

(declare-fun c!1281 () Bool)

(assert (=> d!2588 (= c!1281 (is-Nil!66 (reverse!5 (tail!249 (Cons!65 elem!55 (rear!64 queue!45))))))))

(assert (=> d!2588 (= (concat!2 (reverse!5 (tail!249 (Cons!65 elem!55 (rear!64 queue!45)))) (Cons!65 (head!237 (Cons!65 elem!55 (rear!64 queue!45))) Nil!66)) lt!995)))

(declare-fun b!3513 () Bool)

(assert (=> b!3513 (= e!1978 (Cons!65 (head!237 (Cons!65 elem!55 (rear!64 queue!45))) Nil!66))))

(declare-fun b!3514 () Bool)

(assert (=> b!3514 (= e!1978 (Cons!65 (head!237 (reverse!5 (tail!249 (Cons!65 elem!55 (rear!64 queue!45))))) (concat!2 (tail!249 (reverse!5 (tail!249 (Cons!65 elem!55 (rear!64 queue!45))))) (Cons!65 (head!237 (Cons!65 elem!55 (rear!64 queue!45))) Nil!66))))))

(declare-fun b!3515 () Bool)

(assert (=> b!3515 (= e!1977 (= (content!22 lt!995) (union (content!22 (reverse!5 (tail!249 (Cons!65 elem!55 (rear!64 queue!45))))) (content!22 (Cons!65 (head!237 (Cons!65 elem!55 (rear!64 queue!45))) Nil!66)))))))

(assert (= (and d!2588 c!1281) b!3513))

(assert (= (and d!2588 (not c!1281)) b!3514))

(assert (= (and d!2588 res!1075) b!3515))

(declare-fun m!5503 () Bool)

(assert (=> d!2588 m!5503))

(assert (=> d!2588 m!5449))

(declare-fun m!5505 () Bool)

(assert (=> d!2588 m!5505))

(declare-fun m!5507 () Bool)

(assert (=> d!2588 m!5507))

(declare-fun m!5509 () Bool)

(assert (=> b!3514 m!5509))

(declare-fun m!5511 () Bool)

(assert (=> b!3515 m!5511))

(assert (=> b!3515 m!5449))

(declare-fun m!5513 () Bool)

(assert (=> b!3515 m!5513))

(declare-fun m!5515 () Bool)

(assert (=> b!3515 m!5515))

(assert (=> b!3471 d!2588))

(declare-fun d!2590 () Bool)

(declare-fun lt!996 () List!65)

(assert (=> d!2590 (= (content!22 lt!996) (content!22 (tail!249 (Cons!65 elem!55 (rear!64 queue!45)))))))

(declare-fun e!1979 () List!65)

(assert (=> d!2590 (= lt!996 e!1979)))

(declare-fun c!1282 () Bool)

(assert (=> d!2590 (= c!1282 (is-Nil!66 (tail!249 (Cons!65 elem!55 (rear!64 queue!45)))))))

(assert (=> d!2590 (= (reverse!5 (tail!249 (Cons!65 elem!55 (rear!64 queue!45)))) lt!996)))

(declare-fun b!3516 () Bool)

(assert (=> b!3516 (= e!1979 Nil!66)))

(declare-fun b!3517 () Bool)

(assert (=> b!3517 (= e!1979 (concat!2 (reverse!5 (tail!249 (tail!249 (Cons!65 elem!55 (rear!64 queue!45))))) (Cons!65 (head!237 (tail!249 (Cons!65 elem!55 (rear!64 queue!45)))) Nil!66)))))

(assert (= (and d!2590 c!1282) b!3516))

(assert (= (and d!2590 (not c!1282)) b!3517))

(declare-fun m!5517 () Bool)

(assert (=> d!2590 m!5517))

(assert (=> d!2590 m!5465))

(declare-fun m!5519 () Bool)

(assert (=> b!3517 m!5519))

(assert (=> b!3517 m!5519))

(declare-fun m!5521 () Bool)

(assert (=> b!3517 m!5521))

(assert (=> b!3471 d!2590))

(push 1)

(assert (not b!3493))

(assert (not b!3517))

(assert (not b!3489))

(assert (not b!3491))

(assert (not b!3504))

(assert (not b!3499))

(assert (not b!3477))

(assert (not b!3483))

(assert (not b!3495))

(assert (not b!3501))

(assert (not b!3506))

(assert (not b!3512))

(assert (not d!2588))

(assert (not b!3508))

(assert (not b!3502))

(assert (not b!3514))

(assert (not b!3497))

(assert (not d!2576))

(assert (not b!3487))

(assert (not b!3485))

(assert (not d!2590))

(assert (not b!3515))

(assert (not b!3510))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


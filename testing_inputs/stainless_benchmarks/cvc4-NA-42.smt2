; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!280 () Bool)

(assert start!280)

(declare-fun b!2321 () Bool)

(declare-fun res!899 () Bool)

(declare-fun e!1339 () Bool)

(assert (=> b!2321 (=> (not res!899) (not e!1339))))

(declare-datatypes () ((List!55 (Cons!55 (head!227 (_ BitVec 32)) (tail!239 List!55)) (Nil!56))))

(declare-datatypes () ((AbsQueue!7 (Queue!6 (front!53 List!55) (rear!55 List!55)))))

(declare-fun q1!1 () AbsQueue!7)

(declare-fun e1!2 () (_ BitVec 32))

(declare-fun queue!56 () AbsQueue!7)

(declare-fun enqueue!0 (AbsQueue!7 (_ BitVec 32)) AbsQueue!7)

(assert (=> b!2321 (= res!899 (= q1!1 (enqueue!0 queue!56 e1!2)))))

(declare-fun b!2322 () Bool)

(declare-fun res!902 () Bool)

(assert (=> b!2322 (=> (not res!902) (not e!1339))))

(declare-fun e1prime!1 () (_ BitVec 32))

(declare-fun q3!1 () AbsQueue!7)

(declare-fun front!8 (AbsQueue!7) (_ BitVec 32))

(assert (=> b!2322 (= res!902 (= e1prime!1 (front!8 q3!1)))))

(declare-fun b!2323 () Bool)

(declare-fun res!898 () Bool)

(assert (=> b!2323 (=> (not res!898) (not e!1339))))

(declare-fun q4!1 () AbsQueue!7)

(declare-fun tail!159 (AbsQueue!7) AbsQueue!7)

(assert (=> b!2323 (= res!898 (= q4!1 (tail!159 q3!1)))))

(declare-fun b!2324 () Bool)

(declare-fun res!894 () Bool)

(assert (=> b!2324 (=> (not res!894) (not e!1339))))

(declare-fun q5!1 () AbsQueue!7)

(assert (=> b!2324 (= res!894 (= q5!1 (tail!159 q4!1)))))

(declare-fun b!2325 () Bool)

(declare-fun res!897 () Bool)

(assert (=> b!2325 (=> (not res!897) (not e!1339))))

(declare-fun e2prime!1 () (_ BitVec 32))

(assert (=> b!2325 (= res!897 (= e2prime!1 (front!8 q4!1)))))

(declare-fun b!2326 () Bool)

(declare-fun res!900 () Bool)

(assert (=> b!2326 (=> (not res!900) (not e!1339))))

(declare-fun e3prime!1 () (_ BitVec 32))

(assert (=> b!2326 (= res!900 (= e3prime!1 (front!8 q5!1)))))

(declare-fun e3!1 () (_ BitVec 32))

(declare-fun b!2327 () Bool)

(declare-fun e2!3 () (_ BitVec 32))

(assert (=> b!2327 (= e!1339 (or (not (= e1!2 e1prime!1)) (not (= e2!3 e2prime!1)) (not (= e3!1 e3prime!1))))))

(declare-fun res!896 () Bool)

(assert (=> start!280 (=> (not res!896) (not e!1339))))

(declare-fun isEmpty!12 (AbsQueue!7) Bool)

(assert (=> start!280 (= res!896 (isEmpty!12 queue!56))))

(assert (=> start!280 e!1339))

(assert (=> start!280 true))

(declare-fun b!2328 () Bool)

(declare-fun res!895 () Bool)

(assert (=> b!2328 (=> (not res!895) (not e!1339))))

(declare-fun q2!1 () AbsQueue!7)

(assert (=> b!2328 (= res!895 (= q3!1 (enqueue!0 q2!1 e3!1)))))

(declare-fun b!2329 () Bool)

(declare-fun res!901 () Bool)

(assert (=> b!2329 (=> (not res!901) (not e!1339))))

(assert (=> b!2329 (= res!901 (= q2!1 (enqueue!0 q1!1 e2!3)))))

(assert (= (and start!280 res!896) b!2321))

(assert (= (and b!2321 res!899) b!2329))

(assert (= (and b!2329 res!901) b!2328))

(assert (= (and b!2328 res!895) b!2322))

(assert (= (and b!2322 res!902) b!2323))

(assert (= (and b!2323 res!898) b!2325))

(assert (= (and b!2325 res!897) b!2324))

(assert (= (and b!2324 res!894) b!2326))

(assert (= (and b!2326 res!900) b!2327))

(declare-fun m!3323 () Bool)

(assert (=> b!2324 m!3323))

(declare-fun m!3325 () Bool)

(assert (=> b!2323 m!3325))

(declare-fun m!3327 () Bool)

(assert (=> b!2328 m!3327))

(declare-fun m!3329 () Bool)

(assert (=> b!2322 m!3329))

(declare-fun m!3331 () Bool)

(assert (=> start!280 m!3331))

(declare-fun m!3333 () Bool)

(assert (=> b!2325 m!3333))

(declare-fun m!3335 () Bool)

(assert (=> b!2326 m!3335))

(declare-fun m!3337 () Bool)

(assert (=> b!2329 m!3337))

(declare-fun m!3339 () Bool)

(assert (=> b!2321 m!3339))

(push 1)

(assert (not b!2322))

(assert (not b!2321))

(assert (not start!280))

(assert (not b!2324))

(assert (not b!2323))

(assert (not b!2325))

(assert (not b!2329))

(assert (not b!2326))

(assert (not b!2328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1618 () Bool)

(assert (=> d!1618 (= (isEmpty!12 queue!56) (and (is-Nil!56 (front!53 queue!56)) (is-Nil!56 (rear!55 queue!56))))))

(assert (=> start!280 d!1618))

(declare-fun d!1620 () Bool)

(assert (=> d!1620 (= (front!8 q3!1) (head!227 (front!53 q3!1)))))

(assert (=> b!2322 d!1620))

(declare-fun d!1622 () Bool)

(declare-fun lt!614 () AbsQueue!7)

(declare-fun isAmortized!0 (AbsQueue!7) Bool)

(assert (=> d!1622 (isAmortized!0 lt!614)))

(declare-fun amortizedQueue!0 (List!55 List!55) AbsQueue!7)

(assert (=> d!1622 (= lt!614 (amortizedQueue!0 (front!53 q2!1) (Cons!55 e3!1 (rear!55 q2!1))))))

(assert (=> d!1622 (= (enqueue!0 q2!1 e3!1) lt!614)))

(declare-fun bs!209 () Bool)

(assert (= bs!209 d!1622))

(declare-fun m!3341 () Bool)

(assert (=> bs!209 m!3341))

(declare-fun m!3343 () Bool)

(assert (=> bs!209 m!3343))

(assert (=> b!2328 d!1622))

(declare-fun d!1624 () Bool)

(declare-fun lt!615 () AbsQueue!7)

(assert (=> d!1624 (isAmortized!0 lt!615)))

(assert (=> d!1624 (= lt!615 (amortizedQueue!0 (front!53 q1!1) (Cons!55 e2!3 (rear!55 q1!1))))))

(assert (=> d!1624 (= (enqueue!0 q1!1 e2!3) lt!615)))

(declare-fun bs!210 () Bool)

(assert (= bs!210 d!1624))

(declare-fun m!3345 () Bool)

(assert (=> bs!210 m!3345))

(declare-fun m!3347 () Bool)

(assert (=> bs!210 m!3347))

(assert (=> b!2329 d!1624))

(declare-fun d!1626 () Bool)

(declare-fun lt!618 () AbsQueue!7)

(assert (=> d!1626 (isAmortized!0 lt!618)))

(assert (=> d!1626 (= lt!618 (amortizedQueue!0 (tail!239 (front!53 q4!1)) (rear!55 q4!1)))))

(declare-fun e!1342 () Bool)

(assert (=> d!1626 e!1342))

(declare-fun res!905 () Bool)

(assert (=> d!1626 (=> (not res!905) (not e!1342))))

(assert (=> d!1626 (= res!905 (isAmortized!0 q4!1))))

(assert (=> d!1626 (= (tail!159 q4!1) lt!618)))

(declare-fun b!2332 () Bool)

(assert (=> b!2332 (= e!1342 (not (isEmpty!12 q4!1)))))

(assert (= (and d!1626 res!905) b!2332))

(declare-fun m!3349 () Bool)

(assert (=> d!1626 m!3349))

(declare-fun m!3351 () Bool)

(assert (=> d!1626 m!3351))

(declare-fun m!3353 () Bool)

(assert (=> d!1626 m!3353))

(declare-fun m!3355 () Bool)

(assert (=> b!2332 m!3355))

(assert (=> b!2324 d!1626))

(declare-fun d!1628 () Bool)

(assert (=> d!1628 (= (front!8 q5!1) (head!227 (front!53 q5!1)))))

(assert (=> b!2326 d!1628))

(declare-fun d!1630 () Bool)

(declare-fun lt!619 () AbsQueue!7)

(assert (=> d!1630 (isAmortized!0 lt!619)))

(assert (=> d!1630 (= lt!619 (amortizedQueue!0 (front!53 queue!56) (Cons!55 e1!2 (rear!55 queue!56))))))

(assert (=> d!1630 (= (enqueue!0 queue!56 e1!2) lt!619)))

(declare-fun bs!211 () Bool)

(assert (= bs!211 d!1630))

(declare-fun m!3357 () Bool)

(assert (=> bs!211 m!3357))

(declare-fun m!3359 () Bool)

(assert (=> bs!211 m!3359))

(assert (=> b!2321 d!1630))

(declare-fun d!1632 () Bool)

(assert (=> d!1632 (= (front!8 q4!1) (head!227 (front!53 q4!1)))))

(assert (=> b!2325 d!1632))

(declare-fun d!1634 () Bool)

(declare-fun lt!620 () AbsQueue!7)

(assert (=> d!1634 (isAmortized!0 lt!620)))

(assert (=> d!1634 (= lt!620 (amortizedQueue!0 (tail!239 (front!53 q3!1)) (rear!55 q3!1)))))

(declare-fun e!1343 () Bool)

(assert (=> d!1634 e!1343))

(declare-fun res!906 () Bool)

(assert (=> d!1634 (=> (not res!906) (not e!1343))))

(assert (=> d!1634 (= res!906 (isAmortized!0 q3!1))))

(assert (=> d!1634 (= (tail!159 q3!1) lt!620)))

(declare-fun b!2333 () Bool)

(assert (=> b!2333 (= e!1343 (not (isEmpty!12 q3!1)))))

(assert (= (and d!1634 res!906) b!2333))

(declare-fun m!3361 () Bool)

(assert (=> d!1634 m!3361))

(declare-fun m!3363 () Bool)

(assert (=> d!1634 m!3363))

(declare-fun m!3365 () Bool)

(assert (=> d!1634 m!3365))

(declare-fun m!3367 () Bool)

(assert (=> b!2333 m!3367))

(assert (=> b!2323 d!1634))

(push 1)

(assert (not d!1622))

(assert (not d!1626))

(assert (not d!1624))

(assert (not b!2332))

(assert (not d!1630))

(assert (not b!2333))

(assert (not d!1634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1636 () Bool)

(assert (=> d!1636 (= (isEmpty!12 q3!1) (and (is-Nil!56 (front!53 q3!1)) (is-Nil!56 (rear!55 q3!1))))))

(assert (=> b!2333 d!1636))

(declare-fun d!1638 () Bool)

(declare-fun size!23 (List!55) Int)

(assert (=> d!1638 (= (isAmortized!0 lt!615) (>= (size!23 (front!53 lt!615)) (size!23 (rear!55 lt!615))))))

(declare-fun bs!212 () Bool)

(assert (= bs!212 d!1638))

(declare-fun m!3369 () Bool)

(assert (=> bs!212 m!3369))

(declare-fun m!3371 () Bool)

(assert (=> bs!212 m!3371))

(assert (=> d!1624 d!1638))

(declare-fun d!1640 () Bool)

(declare-fun lt!623 () AbsQueue!7)

(assert (=> d!1640 (isAmortized!0 lt!623)))

(declare-fun e!1346 () AbsQueue!7)

(assert (=> d!1640 (= lt!623 e!1346)))

(declare-fun c!773 () Bool)

(assert (=> d!1640 (= c!773 (<= (size!23 (Cons!55 e2!3 (rear!55 q1!1))) (size!23 (front!53 q1!1))))))

(assert (=> d!1640 (= (amortizedQueue!0 (front!53 q1!1) (Cons!55 e2!3 (rear!55 q1!1))) lt!623)))

(declare-fun b!2338 () Bool)

(assert (=> b!2338 (= e!1346 (Queue!6 (front!53 q1!1) (Cons!55 e2!3 (rear!55 q1!1))))))

(declare-fun b!2339 () Bool)

(declare-fun concat!2 (List!55 List!55) List!55)

(declare-fun reverse!5 (List!55) List!55)

(assert (=> b!2339 (= e!1346 (Queue!6 (concat!2 (front!53 q1!1) (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))) Nil!56))))

(assert (= (and d!1640 c!773) b!2338))

(assert (= (and d!1640 (not c!773)) b!2339))

(declare-fun m!3373 () Bool)

(assert (=> d!1640 m!3373))

(declare-fun m!3375 () Bool)

(assert (=> d!1640 m!3375))

(declare-fun m!3377 () Bool)

(assert (=> d!1640 m!3377))

(declare-fun m!3379 () Bool)

(assert (=> b!2339 m!3379))

(assert (=> b!2339 m!3379))

(declare-fun m!3381 () Bool)

(assert (=> b!2339 m!3381))

(assert (=> d!1624 d!1640))

(declare-fun d!1642 () Bool)

(assert (=> d!1642 (= (isEmpty!12 q4!1) (and (is-Nil!56 (front!53 q4!1)) (is-Nil!56 (rear!55 q4!1))))))

(assert (=> b!2332 d!1642))

(declare-fun d!1644 () Bool)

(assert (=> d!1644 (= (isAmortized!0 lt!614) (>= (size!23 (front!53 lt!614)) (size!23 (rear!55 lt!614))))))

(declare-fun bs!213 () Bool)

(assert (= bs!213 d!1644))

(declare-fun m!3383 () Bool)

(assert (=> bs!213 m!3383))

(declare-fun m!3385 () Bool)

(assert (=> bs!213 m!3385))

(assert (=> d!1622 d!1644))

(declare-fun d!1646 () Bool)

(declare-fun lt!624 () AbsQueue!7)

(assert (=> d!1646 (isAmortized!0 lt!624)))

(declare-fun e!1347 () AbsQueue!7)

(assert (=> d!1646 (= lt!624 e!1347)))

(declare-fun c!774 () Bool)

(assert (=> d!1646 (= c!774 (<= (size!23 (Cons!55 e3!1 (rear!55 q2!1))) (size!23 (front!53 q2!1))))))

(assert (=> d!1646 (= (amortizedQueue!0 (front!53 q2!1) (Cons!55 e3!1 (rear!55 q2!1))) lt!624)))

(declare-fun b!2340 () Bool)

(assert (=> b!2340 (= e!1347 (Queue!6 (front!53 q2!1) (Cons!55 e3!1 (rear!55 q2!1))))))

(declare-fun b!2341 () Bool)

(assert (=> b!2341 (= e!1347 (Queue!6 (concat!2 (front!53 q2!1) (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))) Nil!56))))

(assert (= (and d!1646 c!774) b!2340))

(assert (= (and d!1646 (not c!774)) b!2341))

(declare-fun m!3387 () Bool)

(assert (=> d!1646 m!3387))

(declare-fun m!3389 () Bool)

(assert (=> d!1646 m!3389))

(declare-fun m!3391 () Bool)

(assert (=> d!1646 m!3391))

(declare-fun m!3393 () Bool)

(assert (=> b!2341 m!3393))

(assert (=> b!2341 m!3393))

(declare-fun m!3395 () Bool)

(assert (=> b!2341 m!3395))

(assert (=> d!1622 d!1646))

(declare-fun d!1648 () Bool)

(assert (=> d!1648 (= (isAmortized!0 lt!620) (>= (size!23 (front!53 lt!620)) (size!23 (rear!55 lt!620))))))

(declare-fun bs!214 () Bool)

(assert (= bs!214 d!1648))

(declare-fun m!3397 () Bool)

(assert (=> bs!214 m!3397))

(declare-fun m!3399 () Bool)

(assert (=> bs!214 m!3399))

(assert (=> d!1634 d!1648))

(declare-fun d!1650 () Bool)

(declare-fun lt!625 () AbsQueue!7)

(assert (=> d!1650 (isAmortized!0 lt!625)))

(declare-fun e!1348 () AbsQueue!7)

(assert (=> d!1650 (= lt!625 e!1348)))

(declare-fun c!775 () Bool)

(assert (=> d!1650 (= c!775 (<= (size!23 (rear!55 q3!1)) (size!23 (tail!239 (front!53 q3!1)))))))

(assert (=> d!1650 (= (amortizedQueue!0 (tail!239 (front!53 q3!1)) (rear!55 q3!1)) lt!625)))

(declare-fun b!2342 () Bool)

(assert (=> b!2342 (= e!1348 (Queue!6 (tail!239 (front!53 q3!1)) (rear!55 q3!1)))))

(declare-fun b!2343 () Bool)

(assert (=> b!2343 (= e!1348 (Queue!6 (concat!2 (tail!239 (front!53 q3!1)) (reverse!5 (rear!55 q3!1))) Nil!56))))

(assert (= (and d!1650 c!775) b!2342))

(assert (= (and d!1650 (not c!775)) b!2343))

(declare-fun m!3401 () Bool)

(assert (=> d!1650 m!3401))

(declare-fun m!3403 () Bool)

(assert (=> d!1650 m!3403))

(declare-fun m!3405 () Bool)

(assert (=> d!1650 m!3405))

(declare-fun m!3407 () Bool)

(assert (=> b!2343 m!3407))

(assert (=> b!2343 m!3407))

(declare-fun m!3409 () Bool)

(assert (=> b!2343 m!3409))

(assert (=> d!1634 d!1650))

(declare-fun d!1652 () Bool)

(assert (=> d!1652 (= (isAmortized!0 q3!1) (>= (size!23 (front!53 q3!1)) (size!23 (rear!55 q3!1))))))

(declare-fun bs!215 () Bool)

(assert (= bs!215 d!1652))

(declare-fun m!3411 () Bool)

(assert (=> bs!215 m!3411))

(assert (=> bs!215 m!3403))

(assert (=> d!1634 d!1652))

(declare-fun d!1654 () Bool)

(assert (=> d!1654 (= (isAmortized!0 lt!618) (>= (size!23 (front!53 lt!618)) (size!23 (rear!55 lt!618))))))

(declare-fun bs!216 () Bool)

(assert (= bs!216 d!1654))

(declare-fun m!3413 () Bool)

(assert (=> bs!216 m!3413))

(declare-fun m!3415 () Bool)

(assert (=> bs!216 m!3415))

(assert (=> d!1626 d!1654))

(declare-fun d!1656 () Bool)

(declare-fun lt!626 () AbsQueue!7)

(assert (=> d!1656 (isAmortized!0 lt!626)))

(declare-fun e!1349 () AbsQueue!7)

(assert (=> d!1656 (= lt!626 e!1349)))

(declare-fun c!776 () Bool)

(assert (=> d!1656 (= c!776 (<= (size!23 (rear!55 q4!1)) (size!23 (tail!239 (front!53 q4!1)))))))

(assert (=> d!1656 (= (amortizedQueue!0 (tail!239 (front!53 q4!1)) (rear!55 q4!1)) lt!626)))

(declare-fun b!2344 () Bool)

(assert (=> b!2344 (= e!1349 (Queue!6 (tail!239 (front!53 q4!1)) (rear!55 q4!1)))))

(declare-fun b!2345 () Bool)

(assert (=> b!2345 (= e!1349 (Queue!6 (concat!2 (tail!239 (front!53 q4!1)) (reverse!5 (rear!55 q4!1))) Nil!56))))

(assert (= (and d!1656 c!776) b!2344))

(assert (= (and d!1656 (not c!776)) b!2345))

(declare-fun m!3417 () Bool)

(assert (=> d!1656 m!3417))

(declare-fun m!3419 () Bool)

(assert (=> d!1656 m!3419))

(declare-fun m!3421 () Bool)

(assert (=> d!1656 m!3421))

(declare-fun m!3423 () Bool)

(assert (=> b!2345 m!3423))

(assert (=> b!2345 m!3423))

(declare-fun m!3425 () Bool)

(assert (=> b!2345 m!3425))

(assert (=> d!1626 d!1656))

(declare-fun d!1658 () Bool)

(assert (=> d!1658 (= (isAmortized!0 q4!1) (>= (size!23 (front!53 q4!1)) (size!23 (rear!55 q4!1))))))

(declare-fun bs!217 () Bool)

(assert (= bs!217 d!1658))

(declare-fun m!3427 () Bool)

(assert (=> bs!217 m!3427))

(assert (=> bs!217 m!3419))

(assert (=> d!1626 d!1658))

(declare-fun d!1660 () Bool)

(assert (=> d!1660 (= (isAmortized!0 lt!619) (>= (size!23 (front!53 lt!619)) (size!23 (rear!55 lt!619))))))

(declare-fun bs!218 () Bool)

(assert (= bs!218 d!1660))

(declare-fun m!3429 () Bool)

(assert (=> bs!218 m!3429))

(declare-fun m!3431 () Bool)

(assert (=> bs!218 m!3431))

(assert (=> d!1630 d!1660))

(declare-fun d!1662 () Bool)

(declare-fun lt!627 () AbsQueue!7)

(assert (=> d!1662 (isAmortized!0 lt!627)))

(declare-fun e!1350 () AbsQueue!7)

(assert (=> d!1662 (= lt!627 e!1350)))

(declare-fun c!777 () Bool)

(assert (=> d!1662 (= c!777 (<= (size!23 (Cons!55 e1!2 (rear!55 queue!56))) (size!23 (front!53 queue!56))))))

(assert (=> d!1662 (= (amortizedQueue!0 (front!53 queue!56) (Cons!55 e1!2 (rear!55 queue!56))) lt!627)))

(declare-fun b!2346 () Bool)

(assert (=> b!2346 (= e!1350 (Queue!6 (front!53 queue!56) (Cons!55 e1!2 (rear!55 queue!56))))))

(declare-fun b!2347 () Bool)

(assert (=> b!2347 (= e!1350 (Queue!6 (concat!2 (front!53 queue!56) (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))) Nil!56))))

(assert (= (and d!1662 c!777) b!2346))

(assert (= (and d!1662 (not c!777)) b!2347))

(declare-fun m!3433 () Bool)

(assert (=> d!1662 m!3433))

(declare-fun m!3435 () Bool)

(assert (=> d!1662 m!3435))

(declare-fun m!3437 () Bool)

(assert (=> d!1662 m!3437))

(declare-fun m!3439 () Bool)

(assert (=> b!2347 m!3439))

(assert (=> b!2347 m!3439))

(declare-fun m!3441 () Bool)

(assert (=> b!2347 m!3441))

(assert (=> d!1630 d!1662))

(push 1)

(assert (not d!1644))

(assert (not b!2341))

(assert (not d!1638))

(assert (not d!1660))

(assert (not d!1654))

(assert (not b!2339))

(assert (not d!1648))

(assert (not b!2347))

(assert (not b!2343))

(assert (not d!1656))

(assert (not b!2345))

(assert (not d!1646))

(assert (not d!1662))

(assert (not d!1652))

(assert (not d!1640))

(assert (not d!1658))

(assert (not d!1650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1664 () Bool)

(declare-fun lt!630 () Int)

(assert (=> d!1664 (>= lt!630 0)))

(declare-fun e!1353 () Int)

(assert (=> d!1664 (= lt!630 e!1353)))

(declare-fun c!780 () Bool)

(assert (=> d!1664 (= c!780 (is-Nil!56 (front!53 lt!615)))))

(assert (=> d!1664 (= (size!23 (front!53 lt!615)) lt!630)))

(declare-fun b!2352 () Bool)

(assert (=> b!2352 (= e!1353 0)))

(declare-fun b!2353 () Bool)

(assert (=> b!2353 (= e!1353 (+ 1 (size!23 (tail!239 (front!53 lt!615)))))))

(assert (= (and d!1664 c!780) b!2352))

(assert (= (and d!1664 (not c!780)) b!2353))

(declare-fun m!3443 () Bool)

(assert (=> b!2353 m!3443))

(assert (=> d!1638 d!1664))

(declare-fun d!1666 () Bool)

(declare-fun lt!631 () Int)

(assert (=> d!1666 (>= lt!631 0)))

(declare-fun e!1354 () Int)

(assert (=> d!1666 (= lt!631 e!1354)))

(declare-fun c!781 () Bool)

(assert (=> d!1666 (= c!781 (is-Nil!56 (rear!55 lt!615)))))

(assert (=> d!1666 (= (size!23 (rear!55 lt!615)) lt!631)))

(declare-fun b!2354 () Bool)

(assert (=> b!2354 (= e!1354 0)))

(declare-fun b!2355 () Bool)

(assert (=> b!2355 (= e!1354 (+ 1 (size!23 (tail!239 (rear!55 lt!615)))))))

(assert (= (and d!1666 c!781) b!2354))

(assert (= (and d!1666 (not c!781)) b!2355))

(declare-fun m!3445 () Bool)

(assert (=> b!2355 m!3445))

(assert (=> d!1638 d!1666))

(declare-fun d!1668 () Bool)

(declare-fun lt!632 () Int)

(assert (=> d!1668 (>= lt!632 0)))

(declare-fun e!1355 () Int)

(assert (=> d!1668 (= lt!632 e!1355)))

(declare-fun c!782 () Bool)

(assert (=> d!1668 (= c!782 (is-Nil!56 (front!53 lt!618)))))

(assert (=> d!1668 (= (size!23 (front!53 lt!618)) lt!632)))

(declare-fun b!2356 () Bool)

(assert (=> b!2356 (= e!1355 0)))

(declare-fun b!2357 () Bool)

(assert (=> b!2357 (= e!1355 (+ 1 (size!23 (tail!239 (front!53 lt!618)))))))

(assert (= (and d!1668 c!782) b!2356))

(assert (= (and d!1668 (not c!782)) b!2357))

(declare-fun m!3447 () Bool)

(assert (=> b!2357 m!3447))

(assert (=> d!1654 d!1668))

(declare-fun d!1670 () Bool)

(declare-fun lt!633 () Int)

(assert (=> d!1670 (>= lt!633 0)))

(declare-fun e!1356 () Int)

(assert (=> d!1670 (= lt!633 e!1356)))

(declare-fun c!783 () Bool)

(assert (=> d!1670 (= c!783 (is-Nil!56 (rear!55 lt!618)))))

(assert (=> d!1670 (= (size!23 (rear!55 lt!618)) lt!633)))

(declare-fun b!2358 () Bool)

(assert (=> b!2358 (= e!1356 0)))

(declare-fun b!2359 () Bool)

(assert (=> b!2359 (= e!1356 (+ 1 (size!23 (tail!239 (rear!55 lt!618)))))))

(assert (= (and d!1670 c!783) b!2358))

(assert (= (and d!1670 (not c!783)) b!2359))

(declare-fun m!3449 () Bool)

(assert (=> b!2359 m!3449))

(assert (=> d!1654 d!1670))

(declare-fun d!1672 () Bool)

(assert (=> d!1672 (= (isAmortized!0 lt!627) (>= (size!23 (front!53 lt!627)) (size!23 (rear!55 lt!627))))))

(declare-fun bs!219 () Bool)

(assert (= bs!219 d!1672))

(declare-fun m!3451 () Bool)

(assert (=> bs!219 m!3451))

(declare-fun m!3453 () Bool)

(assert (=> bs!219 m!3453))

(assert (=> d!1662 d!1672))

(declare-fun d!1674 () Bool)

(declare-fun lt!634 () Int)

(assert (=> d!1674 (>= lt!634 0)))

(declare-fun e!1357 () Int)

(assert (=> d!1674 (= lt!634 e!1357)))

(declare-fun c!784 () Bool)

(assert (=> d!1674 (= c!784 (is-Nil!56 (Cons!55 e1!2 (rear!55 queue!56))))))

(assert (=> d!1674 (= (size!23 (Cons!55 e1!2 (rear!55 queue!56))) lt!634)))

(declare-fun b!2360 () Bool)

(assert (=> b!2360 (= e!1357 0)))

(declare-fun b!2361 () Bool)

(assert (=> b!2361 (= e!1357 (+ 1 (size!23 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))))))

(assert (= (and d!1674 c!784) b!2360))

(assert (= (and d!1674 (not c!784)) b!2361))

(declare-fun m!3455 () Bool)

(assert (=> b!2361 m!3455))

(assert (=> d!1662 d!1674))

(declare-fun d!1676 () Bool)

(declare-fun lt!635 () Int)

(assert (=> d!1676 (>= lt!635 0)))

(declare-fun e!1358 () Int)

(assert (=> d!1676 (= lt!635 e!1358)))

(declare-fun c!785 () Bool)

(assert (=> d!1676 (= c!785 (is-Nil!56 (front!53 queue!56)))))

(assert (=> d!1676 (= (size!23 (front!53 queue!56)) lt!635)))

(declare-fun b!2362 () Bool)

(assert (=> b!2362 (= e!1358 0)))

(declare-fun b!2363 () Bool)

(assert (=> b!2363 (= e!1358 (+ 1 (size!23 (tail!239 (front!53 queue!56)))))))

(assert (= (and d!1676 c!785) b!2362))

(assert (= (and d!1676 (not c!785)) b!2363))

(declare-fun m!3457 () Bool)

(assert (=> b!2363 m!3457))

(assert (=> d!1662 d!1676))

(declare-fun d!1678 () Bool)

(declare-fun lt!636 () Int)

(assert (=> d!1678 (>= lt!636 0)))

(declare-fun e!1359 () Int)

(assert (=> d!1678 (= lt!636 e!1359)))

(declare-fun c!786 () Bool)

(assert (=> d!1678 (= c!786 (is-Nil!56 (front!53 lt!614)))))

(assert (=> d!1678 (= (size!23 (front!53 lt!614)) lt!636)))

(declare-fun b!2364 () Bool)

(assert (=> b!2364 (= e!1359 0)))

(declare-fun b!2365 () Bool)

(assert (=> b!2365 (= e!1359 (+ 1 (size!23 (tail!239 (front!53 lt!614)))))))

(assert (= (and d!1678 c!786) b!2364))

(assert (= (and d!1678 (not c!786)) b!2365))

(declare-fun m!3459 () Bool)

(assert (=> b!2365 m!3459))

(assert (=> d!1644 d!1678))

(declare-fun d!1680 () Bool)

(declare-fun lt!637 () Int)

(assert (=> d!1680 (>= lt!637 0)))

(declare-fun e!1360 () Int)

(assert (=> d!1680 (= lt!637 e!1360)))

(declare-fun c!787 () Bool)

(assert (=> d!1680 (= c!787 (is-Nil!56 (rear!55 lt!614)))))

(assert (=> d!1680 (= (size!23 (rear!55 lt!614)) lt!637)))

(declare-fun b!2366 () Bool)

(assert (=> b!2366 (= e!1360 0)))

(declare-fun b!2367 () Bool)

(assert (=> b!2367 (= e!1360 (+ 1 (size!23 (tail!239 (rear!55 lt!614)))))))

(assert (= (and d!1680 c!787) b!2366))

(assert (= (and d!1680 (not c!787)) b!2367))

(declare-fun m!3461 () Bool)

(assert (=> b!2367 m!3461))

(assert (=> d!1644 d!1680))

(declare-fun d!1682 () Bool)

(declare-fun e!1366 () Bool)

(assert (=> d!1682 e!1366))

(declare-fun res!910 () Bool)

(assert (=> d!1682 (=> (not res!910) (not e!1366))))

(declare-fun lt!640 () List!55)

(assert (=> d!1682 (= res!910 (= (size!23 lt!640) (+ (size!23 (front!53 q1!1)) (size!23 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))))))))

(declare-fun e!1365 () List!55)

(assert (=> d!1682 (= lt!640 e!1365)))

(declare-fun c!790 () Bool)

(assert (=> d!1682 (= c!790 (is-Nil!56 (front!53 q1!1)))))

(assert (=> d!1682 (= (concat!2 (front!53 q1!1) (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))) lt!640)))

(declare-fun b!2374 () Bool)

(assert (=> b!2374 (= e!1365 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1))))))

(declare-fun b!2375 () Bool)

(assert (=> b!2375 (= e!1365 (Cons!55 (head!227 (front!53 q1!1)) (concat!2 (tail!239 (front!53 q1!1)) (reverse!5 (Cons!55 e2!3 (rear!55 q1!1))))))))

(declare-fun b!2376 () Bool)

(declare-fun content!22 (List!55) (Set (_ BitVec 32)))

(assert (=> b!2376 (= e!1366 (= (content!22 lt!640) (union (content!22 (front!53 q1!1)) (content!22 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))))))))

(assert (= (and d!1682 c!790) b!2374))

(assert (= (and d!1682 (not c!790)) b!2375))

(assert (= (and d!1682 res!910) b!2376))

(declare-fun m!3463 () Bool)

(assert (=> d!1682 m!3463))

(assert (=> d!1682 m!3377))

(assert (=> d!1682 m!3379))

(declare-fun m!3465 () Bool)

(assert (=> d!1682 m!3465))

(assert (=> b!2375 m!3379))

(declare-fun m!3467 () Bool)

(assert (=> b!2375 m!3467))

(declare-fun m!3469 () Bool)

(assert (=> b!2376 m!3469))

(declare-fun m!3471 () Bool)

(assert (=> b!2376 m!3471))

(assert (=> b!2376 m!3379))

(declare-fun m!3473 () Bool)

(assert (=> b!2376 m!3473))

(assert (=> b!2339 d!1682))

(declare-fun d!1684 () Bool)

(declare-fun lt!643 () List!55)

(assert (=> d!1684 (= (content!22 lt!643) (content!22 (Cons!55 e2!3 (rear!55 q1!1))))))

(declare-fun e!1369 () List!55)

(assert (=> d!1684 (= lt!643 e!1369)))

(declare-fun c!793 () Bool)

(assert (=> d!1684 (= c!793 (is-Nil!56 (Cons!55 e2!3 (rear!55 q1!1))))))

(assert (=> d!1684 (= (reverse!5 (Cons!55 e2!3 (rear!55 q1!1))) lt!643)))

(declare-fun b!2381 () Bool)

(assert (=> b!2381 (= e!1369 Nil!56)))

(declare-fun b!2382 () Bool)

(assert (=> b!2382 (= e!1369 (concat!2 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))) (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56)))))

(assert (= (and d!1684 c!793) b!2381))

(assert (= (and d!1684 (not c!793)) b!2382))

(declare-fun m!3475 () Bool)

(assert (=> d!1684 m!3475))

(declare-fun m!3477 () Bool)

(assert (=> d!1684 m!3477))

(declare-fun m!3479 () Bool)

(assert (=> b!2382 m!3479))

(assert (=> b!2382 m!3479))

(declare-fun m!3481 () Bool)

(assert (=> b!2382 m!3481))

(assert (=> b!2339 d!1684))

(declare-fun d!1686 () Bool)

(declare-fun lt!644 () Int)

(assert (=> d!1686 (>= lt!644 0)))

(declare-fun e!1370 () Int)

(assert (=> d!1686 (= lt!644 e!1370)))

(declare-fun c!794 () Bool)

(assert (=> d!1686 (= c!794 (is-Nil!56 (front!53 q3!1)))))

(assert (=> d!1686 (= (size!23 (front!53 q3!1)) lt!644)))

(declare-fun b!2383 () Bool)

(assert (=> b!2383 (= e!1370 0)))

(declare-fun b!2384 () Bool)

(assert (=> b!2384 (= e!1370 (+ 1 (size!23 (tail!239 (front!53 q3!1)))))))

(assert (= (and d!1686 c!794) b!2383))

(assert (= (and d!1686 (not c!794)) b!2384))

(assert (=> b!2384 m!3405))

(assert (=> d!1652 d!1686))

(declare-fun d!1688 () Bool)

(declare-fun lt!645 () Int)

(assert (=> d!1688 (>= lt!645 0)))

(declare-fun e!1371 () Int)

(assert (=> d!1688 (= lt!645 e!1371)))

(declare-fun c!795 () Bool)

(assert (=> d!1688 (= c!795 (is-Nil!56 (rear!55 q3!1)))))

(assert (=> d!1688 (= (size!23 (rear!55 q3!1)) lt!645)))

(declare-fun b!2385 () Bool)

(assert (=> b!2385 (= e!1371 0)))

(declare-fun b!2386 () Bool)

(assert (=> b!2386 (= e!1371 (+ 1 (size!23 (tail!239 (rear!55 q3!1)))))))

(assert (= (and d!1688 c!795) b!2385))

(assert (= (and d!1688 (not c!795)) b!2386))

(declare-fun m!3483 () Bool)

(assert (=> b!2386 m!3483))

(assert (=> d!1652 d!1688))

(declare-fun d!1690 () Bool)

(declare-fun lt!646 () Int)

(assert (=> d!1690 (>= lt!646 0)))

(declare-fun e!1372 () Int)

(assert (=> d!1690 (= lt!646 e!1372)))

(declare-fun c!796 () Bool)

(assert (=> d!1690 (= c!796 (is-Nil!56 (front!53 lt!620)))))

(assert (=> d!1690 (= (size!23 (front!53 lt!620)) lt!646)))

(declare-fun b!2387 () Bool)

(assert (=> b!2387 (= e!1372 0)))

(declare-fun b!2388 () Bool)

(assert (=> b!2388 (= e!1372 (+ 1 (size!23 (tail!239 (front!53 lt!620)))))))

(assert (= (and d!1690 c!796) b!2387))

(assert (= (and d!1690 (not c!796)) b!2388))

(declare-fun m!3485 () Bool)

(assert (=> b!2388 m!3485))

(assert (=> d!1648 d!1690))

(declare-fun d!1692 () Bool)

(declare-fun lt!647 () Int)

(assert (=> d!1692 (>= lt!647 0)))

(declare-fun e!1373 () Int)

(assert (=> d!1692 (= lt!647 e!1373)))

(declare-fun c!797 () Bool)

(assert (=> d!1692 (= c!797 (is-Nil!56 (rear!55 lt!620)))))

(assert (=> d!1692 (= (size!23 (rear!55 lt!620)) lt!647)))

(declare-fun b!2389 () Bool)

(assert (=> b!2389 (= e!1373 0)))

(declare-fun b!2390 () Bool)

(assert (=> b!2390 (= e!1373 (+ 1 (size!23 (tail!239 (rear!55 lt!620)))))))

(assert (= (and d!1692 c!797) b!2389))

(assert (= (and d!1692 (not c!797)) b!2390))

(declare-fun m!3487 () Bool)

(assert (=> b!2390 m!3487))

(assert (=> d!1648 d!1692))

(declare-fun d!1694 () Bool)

(declare-fun e!1375 () Bool)

(assert (=> d!1694 e!1375))

(declare-fun res!911 () Bool)

(assert (=> d!1694 (=> (not res!911) (not e!1375))))

(declare-fun lt!648 () List!55)

(assert (=> d!1694 (= res!911 (= (size!23 lt!648) (+ (size!23 (tail!239 (front!53 q3!1))) (size!23 (reverse!5 (rear!55 q3!1))))))))

(declare-fun e!1374 () List!55)

(assert (=> d!1694 (= lt!648 e!1374)))

(declare-fun c!798 () Bool)

(assert (=> d!1694 (= c!798 (is-Nil!56 (tail!239 (front!53 q3!1))))))

(assert (=> d!1694 (= (concat!2 (tail!239 (front!53 q3!1)) (reverse!5 (rear!55 q3!1))) lt!648)))

(declare-fun b!2391 () Bool)

(assert (=> b!2391 (= e!1374 (reverse!5 (rear!55 q3!1)))))

(declare-fun b!2392 () Bool)

(assert (=> b!2392 (= e!1374 (Cons!55 (head!227 (tail!239 (front!53 q3!1))) (concat!2 (tail!239 (tail!239 (front!53 q3!1))) (reverse!5 (rear!55 q3!1)))))))

(declare-fun b!2393 () Bool)

(assert (=> b!2393 (= e!1375 (= (content!22 lt!648) (union (content!22 (tail!239 (front!53 q3!1))) (content!22 (reverse!5 (rear!55 q3!1))))))))

(assert (= (and d!1694 c!798) b!2391))

(assert (= (and d!1694 (not c!798)) b!2392))

(assert (= (and d!1694 res!911) b!2393))

(declare-fun m!3489 () Bool)

(assert (=> d!1694 m!3489))

(assert (=> d!1694 m!3405))

(assert (=> d!1694 m!3407))

(declare-fun m!3491 () Bool)

(assert (=> d!1694 m!3491))

(assert (=> b!2392 m!3407))

(declare-fun m!3493 () Bool)

(assert (=> b!2392 m!3493))

(declare-fun m!3495 () Bool)

(assert (=> b!2393 m!3495))

(declare-fun m!3497 () Bool)

(assert (=> b!2393 m!3497))

(assert (=> b!2393 m!3407))

(declare-fun m!3499 () Bool)

(assert (=> b!2393 m!3499))

(assert (=> b!2343 d!1694))

(declare-fun d!1696 () Bool)

(declare-fun lt!649 () List!55)

(assert (=> d!1696 (= (content!22 lt!649) (content!22 (rear!55 q3!1)))))

(declare-fun e!1376 () List!55)

(assert (=> d!1696 (= lt!649 e!1376)))

(declare-fun c!799 () Bool)

(assert (=> d!1696 (= c!799 (is-Nil!56 (rear!55 q3!1)))))

(assert (=> d!1696 (= (reverse!5 (rear!55 q3!1)) lt!649)))

(declare-fun b!2394 () Bool)

(assert (=> b!2394 (= e!1376 Nil!56)))

(declare-fun b!2395 () Bool)

(assert (=> b!2395 (= e!1376 (concat!2 (reverse!5 (tail!239 (rear!55 q3!1))) (Cons!55 (head!227 (rear!55 q3!1)) Nil!56)))))

(assert (= (and d!1696 c!799) b!2394))

(assert (= (and d!1696 (not c!799)) b!2395))

(declare-fun m!3501 () Bool)

(assert (=> d!1696 m!3501))

(declare-fun m!3503 () Bool)

(assert (=> d!1696 m!3503))

(declare-fun m!3505 () Bool)

(assert (=> b!2395 m!3505))

(assert (=> b!2395 m!3505))

(declare-fun m!3507 () Bool)

(assert (=> b!2395 m!3507))

(assert (=> b!2343 d!1696))

(declare-fun d!1698 () Bool)

(declare-fun lt!650 () Int)

(assert (=> d!1698 (>= lt!650 0)))

(declare-fun e!1377 () Int)

(assert (=> d!1698 (= lt!650 e!1377)))

(declare-fun c!800 () Bool)

(assert (=> d!1698 (= c!800 (is-Nil!56 (front!53 q4!1)))))

(assert (=> d!1698 (= (size!23 (front!53 q4!1)) lt!650)))

(declare-fun b!2396 () Bool)

(assert (=> b!2396 (= e!1377 0)))

(declare-fun b!2397 () Bool)

(assert (=> b!2397 (= e!1377 (+ 1 (size!23 (tail!239 (front!53 q4!1)))))))

(assert (= (and d!1698 c!800) b!2396))

(assert (= (and d!1698 (not c!800)) b!2397))

(assert (=> b!2397 m!3421))

(assert (=> d!1658 d!1698))

(declare-fun d!1700 () Bool)

(declare-fun lt!651 () Int)

(assert (=> d!1700 (>= lt!651 0)))

(declare-fun e!1378 () Int)

(assert (=> d!1700 (= lt!651 e!1378)))

(declare-fun c!801 () Bool)

(assert (=> d!1700 (= c!801 (is-Nil!56 (rear!55 q4!1)))))

(assert (=> d!1700 (= (size!23 (rear!55 q4!1)) lt!651)))

(declare-fun b!2398 () Bool)

(assert (=> b!2398 (= e!1378 0)))

(declare-fun b!2399 () Bool)

(assert (=> b!2399 (= e!1378 (+ 1 (size!23 (tail!239 (rear!55 q4!1)))))))

(assert (= (and d!1700 c!801) b!2398))

(assert (= (and d!1700 (not c!801)) b!2399))

(declare-fun m!3509 () Bool)

(assert (=> b!2399 m!3509))

(assert (=> d!1658 d!1700))

(declare-fun d!1702 () Bool)

(assert (=> d!1702 (= (isAmortized!0 lt!623) (>= (size!23 (front!53 lt!623)) (size!23 (rear!55 lt!623))))))

(declare-fun bs!220 () Bool)

(assert (= bs!220 d!1702))

(declare-fun m!3511 () Bool)

(assert (=> bs!220 m!3511))

(declare-fun m!3513 () Bool)

(assert (=> bs!220 m!3513))

(assert (=> d!1640 d!1702))

(declare-fun d!1704 () Bool)

(declare-fun lt!652 () Int)

(assert (=> d!1704 (>= lt!652 0)))

(declare-fun e!1379 () Int)

(assert (=> d!1704 (= lt!652 e!1379)))

(declare-fun c!802 () Bool)

(assert (=> d!1704 (= c!802 (is-Nil!56 (Cons!55 e2!3 (rear!55 q1!1))))))

(assert (=> d!1704 (= (size!23 (Cons!55 e2!3 (rear!55 q1!1))) lt!652)))

(declare-fun b!2400 () Bool)

(assert (=> b!2400 (= e!1379 0)))

(declare-fun b!2401 () Bool)

(assert (=> b!2401 (= e!1379 (+ 1 (size!23 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))))))

(assert (= (and d!1704 c!802) b!2400))

(assert (= (and d!1704 (not c!802)) b!2401))

(declare-fun m!3515 () Bool)

(assert (=> b!2401 m!3515))

(assert (=> d!1640 d!1704))

(declare-fun d!1706 () Bool)

(declare-fun lt!653 () Int)

(assert (=> d!1706 (>= lt!653 0)))

(declare-fun e!1380 () Int)

(assert (=> d!1706 (= lt!653 e!1380)))

(declare-fun c!803 () Bool)

(assert (=> d!1706 (= c!803 (is-Nil!56 (front!53 q1!1)))))

(assert (=> d!1706 (= (size!23 (front!53 q1!1)) lt!653)))

(declare-fun b!2402 () Bool)

(assert (=> b!2402 (= e!1380 0)))

(declare-fun b!2403 () Bool)

(assert (=> b!2403 (= e!1380 (+ 1 (size!23 (tail!239 (front!53 q1!1)))))))

(assert (= (and d!1706 c!803) b!2402))

(assert (= (and d!1706 (not c!803)) b!2403))

(declare-fun m!3517 () Bool)

(assert (=> b!2403 m!3517))

(assert (=> d!1640 d!1706))

(declare-fun d!1708 () Bool)

(assert (=> d!1708 (= (isAmortized!0 lt!624) (>= (size!23 (front!53 lt!624)) (size!23 (rear!55 lt!624))))))

(declare-fun bs!221 () Bool)

(assert (= bs!221 d!1708))

(declare-fun m!3519 () Bool)

(assert (=> bs!221 m!3519))

(declare-fun m!3521 () Bool)

(assert (=> bs!221 m!3521))

(assert (=> d!1646 d!1708))

(declare-fun d!1710 () Bool)

(declare-fun lt!654 () Int)

(assert (=> d!1710 (>= lt!654 0)))

(declare-fun e!1381 () Int)

(assert (=> d!1710 (= lt!654 e!1381)))

(declare-fun c!804 () Bool)

(assert (=> d!1710 (= c!804 (is-Nil!56 (Cons!55 e3!1 (rear!55 q2!1))))))

(assert (=> d!1710 (= (size!23 (Cons!55 e3!1 (rear!55 q2!1))) lt!654)))

(declare-fun b!2404 () Bool)

(assert (=> b!2404 (= e!1381 0)))

(declare-fun b!2405 () Bool)

(assert (=> b!2405 (= e!1381 (+ 1 (size!23 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))))))

(assert (= (and d!1710 c!804) b!2404))

(assert (= (and d!1710 (not c!804)) b!2405))

(declare-fun m!3523 () Bool)

(assert (=> b!2405 m!3523))

(assert (=> d!1646 d!1710))

(declare-fun d!1712 () Bool)

(declare-fun lt!655 () Int)

(assert (=> d!1712 (>= lt!655 0)))

(declare-fun e!1382 () Int)

(assert (=> d!1712 (= lt!655 e!1382)))

(declare-fun c!805 () Bool)

(assert (=> d!1712 (= c!805 (is-Nil!56 (front!53 q2!1)))))

(assert (=> d!1712 (= (size!23 (front!53 q2!1)) lt!655)))

(declare-fun b!2406 () Bool)

(assert (=> b!2406 (= e!1382 0)))

(declare-fun b!2407 () Bool)

(assert (=> b!2407 (= e!1382 (+ 1 (size!23 (tail!239 (front!53 q2!1)))))))

(assert (= (and d!1712 c!805) b!2406))

(assert (= (and d!1712 (not c!805)) b!2407))

(declare-fun m!3525 () Bool)

(assert (=> b!2407 m!3525))

(assert (=> d!1646 d!1712))

(declare-fun d!1714 () Bool)

(declare-fun e!1384 () Bool)

(assert (=> d!1714 e!1384))

(declare-fun res!912 () Bool)

(assert (=> d!1714 (=> (not res!912) (not e!1384))))

(declare-fun lt!656 () List!55)

(assert (=> d!1714 (= res!912 (= (size!23 lt!656) (+ (size!23 (front!53 queue!56)) (size!23 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))))))))

(declare-fun e!1383 () List!55)

(assert (=> d!1714 (= lt!656 e!1383)))

(declare-fun c!806 () Bool)

(assert (=> d!1714 (= c!806 (is-Nil!56 (front!53 queue!56)))))

(assert (=> d!1714 (= (concat!2 (front!53 queue!56) (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))) lt!656)))

(declare-fun b!2408 () Bool)

(assert (=> b!2408 (= e!1383 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56))))))

(declare-fun b!2409 () Bool)

(assert (=> b!2409 (= e!1383 (Cons!55 (head!227 (front!53 queue!56)) (concat!2 (tail!239 (front!53 queue!56)) (reverse!5 (Cons!55 e1!2 (rear!55 queue!56))))))))

(declare-fun b!2410 () Bool)

(assert (=> b!2410 (= e!1384 (= (content!22 lt!656) (union (content!22 (front!53 queue!56)) (content!22 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))))))))

(assert (= (and d!1714 c!806) b!2408))

(assert (= (and d!1714 (not c!806)) b!2409))

(assert (= (and d!1714 res!912) b!2410))

(declare-fun m!3527 () Bool)

(assert (=> d!1714 m!3527))

(assert (=> d!1714 m!3437))

(assert (=> d!1714 m!3439))

(declare-fun m!3529 () Bool)

(assert (=> d!1714 m!3529))

(assert (=> b!2409 m!3439))

(declare-fun m!3531 () Bool)

(assert (=> b!2409 m!3531))

(declare-fun m!3533 () Bool)

(assert (=> b!2410 m!3533))

(declare-fun m!3535 () Bool)

(assert (=> b!2410 m!3535))

(assert (=> b!2410 m!3439))

(declare-fun m!3537 () Bool)

(assert (=> b!2410 m!3537))

(assert (=> b!2347 d!1714))

(declare-fun d!1716 () Bool)

(declare-fun lt!657 () List!55)

(assert (=> d!1716 (= (content!22 lt!657) (content!22 (Cons!55 e1!2 (rear!55 queue!56))))))

(declare-fun e!1385 () List!55)

(assert (=> d!1716 (= lt!657 e!1385)))

(declare-fun c!807 () Bool)

(assert (=> d!1716 (= c!807 (is-Nil!56 (Cons!55 e1!2 (rear!55 queue!56))))))

(assert (=> d!1716 (= (reverse!5 (Cons!55 e1!2 (rear!55 queue!56))) lt!657)))

(declare-fun b!2411 () Bool)

(assert (=> b!2411 (= e!1385 Nil!56)))

(declare-fun b!2412 () Bool)

(assert (=> b!2412 (= e!1385 (concat!2 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))) (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56)))))

(assert (= (and d!1716 c!807) b!2411))

(assert (= (and d!1716 (not c!807)) b!2412))

(declare-fun m!3539 () Bool)

(assert (=> d!1716 m!3539))

(declare-fun m!3541 () Bool)

(assert (=> d!1716 m!3541))

(declare-fun m!3543 () Bool)

(assert (=> b!2412 m!3543))

(assert (=> b!2412 m!3543))

(declare-fun m!3545 () Bool)

(assert (=> b!2412 m!3545))

(assert (=> b!2347 d!1716))

(declare-fun d!1718 () Bool)

(declare-fun lt!658 () Int)

(assert (=> d!1718 (>= lt!658 0)))

(declare-fun e!1386 () Int)

(assert (=> d!1718 (= lt!658 e!1386)))

(declare-fun c!808 () Bool)

(assert (=> d!1718 (= c!808 (is-Nil!56 (front!53 lt!619)))))

(assert (=> d!1718 (= (size!23 (front!53 lt!619)) lt!658)))

(declare-fun b!2413 () Bool)

(assert (=> b!2413 (= e!1386 0)))

(declare-fun b!2414 () Bool)

(assert (=> b!2414 (= e!1386 (+ 1 (size!23 (tail!239 (front!53 lt!619)))))))

(assert (= (and d!1718 c!808) b!2413))

(assert (= (and d!1718 (not c!808)) b!2414))

(declare-fun m!3547 () Bool)

(assert (=> b!2414 m!3547))

(assert (=> d!1660 d!1718))

(declare-fun d!1720 () Bool)

(declare-fun lt!659 () Int)

(assert (=> d!1720 (>= lt!659 0)))

(declare-fun e!1387 () Int)

(assert (=> d!1720 (= lt!659 e!1387)))

(declare-fun c!809 () Bool)

(assert (=> d!1720 (= c!809 (is-Nil!56 (rear!55 lt!619)))))

(assert (=> d!1720 (= (size!23 (rear!55 lt!619)) lt!659)))

(declare-fun b!2415 () Bool)

(assert (=> b!2415 (= e!1387 0)))

(declare-fun b!2416 () Bool)

(assert (=> b!2416 (= e!1387 (+ 1 (size!23 (tail!239 (rear!55 lt!619)))))))

(assert (= (and d!1720 c!809) b!2415))

(assert (= (and d!1720 (not c!809)) b!2416))

(declare-fun m!3549 () Bool)

(assert (=> b!2416 m!3549))

(assert (=> d!1660 d!1720))

(declare-fun d!1722 () Bool)

(declare-fun e!1389 () Bool)

(assert (=> d!1722 e!1389))

(declare-fun res!913 () Bool)

(assert (=> d!1722 (=> (not res!913) (not e!1389))))

(declare-fun lt!660 () List!55)

(assert (=> d!1722 (= res!913 (= (size!23 lt!660) (+ (size!23 (tail!239 (front!53 q4!1))) (size!23 (reverse!5 (rear!55 q4!1))))))))

(declare-fun e!1388 () List!55)

(assert (=> d!1722 (= lt!660 e!1388)))

(declare-fun c!810 () Bool)

(assert (=> d!1722 (= c!810 (is-Nil!56 (tail!239 (front!53 q4!1))))))

(assert (=> d!1722 (= (concat!2 (tail!239 (front!53 q4!1)) (reverse!5 (rear!55 q4!1))) lt!660)))

(declare-fun b!2417 () Bool)

(assert (=> b!2417 (= e!1388 (reverse!5 (rear!55 q4!1)))))

(declare-fun b!2418 () Bool)

(assert (=> b!2418 (= e!1388 (Cons!55 (head!227 (tail!239 (front!53 q4!1))) (concat!2 (tail!239 (tail!239 (front!53 q4!1))) (reverse!5 (rear!55 q4!1)))))))

(declare-fun b!2419 () Bool)

(assert (=> b!2419 (= e!1389 (= (content!22 lt!660) (union (content!22 (tail!239 (front!53 q4!1))) (content!22 (reverse!5 (rear!55 q4!1))))))))

(assert (= (and d!1722 c!810) b!2417))

(assert (= (and d!1722 (not c!810)) b!2418))

(assert (= (and d!1722 res!913) b!2419))

(declare-fun m!3551 () Bool)

(assert (=> d!1722 m!3551))

(assert (=> d!1722 m!3421))

(assert (=> d!1722 m!3423))

(declare-fun m!3553 () Bool)

(assert (=> d!1722 m!3553))

(assert (=> b!2418 m!3423))

(declare-fun m!3555 () Bool)

(assert (=> b!2418 m!3555))

(declare-fun m!3557 () Bool)

(assert (=> b!2419 m!3557))

(declare-fun m!3559 () Bool)

(assert (=> b!2419 m!3559))

(assert (=> b!2419 m!3423))

(declare-fun m!3561 () Bool)

(assert (=> b!2419 m!3561))

(assert (=> b!2345 d!1722))

(declare-fun d!1724 () Bool)

(declare-fun lt!661 () List!55)

(assert (=> d!1724 (= (content!22 lt!661) (content!22 (rear!55 q4!1)))))

(declare-fun e!1390 () List!55)

(assert (=> d!1724 (= lt!661 e!1390)))

(declare-fun c!811 () Bool)

(assert (=> d!1724 (= c!811 (is-Nil!56 (rear!55 q4!1)))))

(assert (=> d!1724 (= (reverse!5 (rear!55 q4!1)) lt!661)))

(declare-fun b!2420 () Bool)

(assert (=> b!2420 (= e!1390 Nil!56)))

(declare-fun b!2421 () Bool)

(assert (=> b!2421 (= e!1390 (concat!2 (reverse!5 (tail!239 (rear!55 q4!1))) (Cons!55 (head!227 (rear!55 q4!1)) Nil!56)))))

(assert (= (and d!1724 c!811) b!2420))

(assert (= (and d!1724 (not c!811)) b!2421))

(declare-fun m!3563 () Bool)

(assert (=> d!1724 m!3563))

(declare-fun m!3565 () Bool)

(assert (=> d!1724 m!3565))

(declare-fun m!3567 () Bool)

(assert (=> b!2421 m!3567))

(assert (=> b!2421 m!3567))

(declare-fun m!3569 () Bool)

(assert (=> b!2421 m!3569))

(assert (=> b!2345 d!1724))

(declare-fun d!1726 () Bool)

(assert (=> d!1726 (= (isAmortized!0 lt!626) (>= (size!23 (front!53 lt!626)) (size!23 (rear!55 lt!626))))))

(declare-fun bs!222 () Bool)

(assert (= bs!222 d!1726))

(declare-fun m!3571 () Bool)

(assert (=> bs!222 m!3571))

(declare-fun m!3573 () Bool)

(assert (=> bs!222 m!3573))

(assert (=> d!1656 d!1726))

(assert (=> d!1656 d!1700))

(declare-fun d!1728 () Bool)

(declare-fun lt!662 () Int)

(assert (=> d!1728 (>= lt!662 0)))

(declare-fun e!1391 () Int)

(assert (=> d!1728 (= lt!662 e!1391)))

(declare-fun c!812 () Bool)

(assert (=> d!1728 (= c!812 (is-Nil!56 (tail!239 (front!53 q4!1))))))

(assert (=> d!1728 (= (size!23 (tail!239 (front!53 q4!1))) lt!662)))

(declare-fun b!2422 () Bool)

(assert (=> b!2422 (= e!1391 0)))

(declare-fun b!2423 () Bool)

(assert (=> b!2423 (= e!1391 (+ 1 (size!23 (tail!239 (tail!239 (front!53 q4!1))))))))

(assert (= (and d!1728 c!812) b!2422))

(assert (= (and d!1728 (not c!812)) b!2423))

(declare-fun m!3575 () Bool)

(assert (=> b!2423 m!3575))

(assert (=> d!1656 d!1728))

(declare-fun d!1730 () Bool)

(assert (=> d!1730 (= (isAmortized!0 lt!625) (>= (size!23 (front!53 lt!625)) (size!23 (rear!55 lt!625))))))

(declare-fun bs!223 () Bool)

(assert (= bs!223 d!1730))

(declare-fun m!3577 () Bool)

(assert (=> bs!223 m!3577))

(declare-fun m!3579 () Bool)

(assert (=> bs!223 m!3579))

(assert (=> d!1650 d!1730))

(assert (=> d!1650 d!1688))

(declare-fun d!1732 () Bool)

(declare-fun lt!663 () Int)

(assert (=> d!1732 (>= lt!663 0)))

(declare-fun e!1392 () Int)

(assert (=> d!1732 (= lt!663 e!1392)))

(declare-fun c!813 () Bool)

(assert (=> d!1732 (= c!813 (is-Nil!56 (tail!239 (front!53 q3!1))))))

(assert (=> d!1732 (= (size!23 (tail!239 (front!53 q3!1))) lt!663)))

(declare-fun b!2424 () Bool)

(assert (=> b!2424 (= e!1392 0)))

(declare-fun b!2425 () Bool)

(assert (=> b!2425 (= e!1392 (+ 1 (size!23 (tail!239 (tail!239 (front!53 q3!1))))))))

(assert (= (and d!1732 c!813) b!2424))

(assert (= (and d!1732 (not c!813)) b!2425))

(declare-fun m!3581 () Bool)

(assert (=> b!2425 m!3581))

(assert (=> d!1650 d!1732))

(declare-fun d!1734 () Bool)

(declare-fun e!1394 () Bool)

(assert (=> d!1734 e!1394))

(declare-fun res!914 () Bool)

(assert (=> d!1734 (=> (not res!914) (not e!1394))))

(declare-fun lt!664 () List!55)

(assert (=> d!1734 (= res!914 (= (size!23 lt!664) (+ (size!23 (front!53 q2!1)) (size!23 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))))))))

(declare-fun e!1393 () List!55)

(assert (=> d!1734 (= lt!664 e!1393)))

(declare-fun c!814 () Bool)

(assert (=> d!1734 (= c!814 (is-Nil!56 (front!53 q2!1)))))

(assert (=> d!1734 (= (concat!2 (front!53 q2!1) (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))) lt!664)))

(declare-fun b!2426 () Bool)

(assert (=> b!2426 (= e!1393 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1))))))

(declare-fun b!2427 () Bool)

(assert (=> b!2427 (= e!1393 (Cons!55 (head!227 (front!53 q2!1)) (concat!2 (tail!239 (front!53 q2!1)) (reverse!5 (Cons!55 e3!1 (rear!55 q2!1))))))))

(declare-fun b!2428 () Bool)

(assert (=> b!2428 (= e!1394 (= (content!22 lt!664) (union (content!22 (front!53 q2!1)) (content!22 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))))))))

(assert (= (and d!1734 c!814) b!2426))

(assert (= (and d!1734 (not c!814)) b!2427))

(assert (= (and d!1734 res!914) b!2428))

(declare-fun m!3583 () Bool)

(assert (=> d!1734 m!3583))

(assert (=> d!1734 m!3391))

(assert (=> d!1734 m!3393))

(declare-fun m!3585 () Bool)

(assert (=> d!1734 m!3585))

(assert (=> b!2427 m!3393))

(declare-fun m!3587 () Bool)

(assert (=> b!2427 m!3587))

(declare-fun m!3589 () Bool)

(assert (=> b!2428 m!3589))

(declare-fun m!3591 () Bool)

(assert (=> b!2428 m!3591))

(assert (=> b!2428 m!3393))

(declare-fun m!3593 () Bool)

(assert (=> b!2428 m!3593))

(assert (=> b!2341 d!1734))

(declare-fun d!1736 () Bool)

(declare-fun lt!665 () List!55)

(assert (=> d!1736 (= (content!22 lt!665) (content!22 (Cons!55 e3!1 (rear!55 q2!1))))))

(declare-fun e!1395 () List!55)

(assert (=> d!1736 (= lt!665 e!1395)))

(declare-fun c!815 () Bool)

(assert (=> d!1736 (= c!815 (is-Nil!56 (Cons!55 e3!1 (rear!55 q2!1))))))

(assert (=> d!1736 (= (reverse!5 (Cons!55 e3!1 (rear!55 q2!1))) lt!665)))

(declare-fun b!2429 () Bool)

(assert (=> b!2429 (= e!1395 Nil!56)))

(declare-fun b!2430 () Bool)

(assert (=> b!2430 (= e!1395 (concat!2 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))) (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56)))))

(assert (= (and d!1736 c!815) b!2429))

(assert (= (and d!1736 (not c!815)) b!2430))

(declare-fun m!3595 () Bool)

(assert (=> d!1736 m!3595))

(declare-fun m!3597 () Bool)

(assert (=> d!1736 m!3597))

(declare-fun m!3599 () Bool)

(assert (=> b!2430 m!3599))

(assert (=> b!2430 m!3599))

(declare-fun m!3601 () Bool)

(assert (=> b!2430 m!3601))

(assert (=> b!2341 d!1736))

(push 1)

(assert (not b!2421))

(assert (not b!2401))

(assert (not b!2399))

(assert (not d!1736))

(assert (not b!2395))

(assert (not b!2361))

(assert (not b!2419))

(assert (not d!1696))

(assert (not b!2427))

(assert (not b!2390))

(assert (not b!2359))

(assert (not d!1672))

(assert (not b!2353))

(assert (not b!2405))

(assert (not b!2430))

(assert (not b!2428))

(assert (not d!1726))

(assert (not d!1722))

(assert (not d!1684))

(assert (not d!1734))

(assert (not b!2355))

(assert (not b!2376))

(assert (not b!2407))

(assert (not b!2392))

(assert (not d!1730))

(assert (not b!2414))

(assert (not d!1714))

(assert (not b!2423))

(assert (not b!2375))

(assert (not b!2382))

(assert (not b!2425))

(assert (not b!2365))

(assert (not b!2388))

(assert (not b!2403))

(assert (not d!1702))

(assert (not b!2397))

(assert (not b!2363))

(assert (not d!1724))

(assert (not d!1694))

(assert (not d!1716))

(assert (not b!2367))

(assert (not b!2410))

(assert (not b!2412))

(assert (not b!2416))

(assert (not b!2409))

(assert (not d!1708))

(assert (not b!2418))

(assert (not b!2386))

(assert (not d!1682))

(assert (not b!2393))

(assert (not b!2384))

(assert (not b!2357))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1738 () Bool)

(declare-fun c!818 () Bool)

(assert (=> d!1738 (= c!818 (is-Nil!56 lt!660))))

(declare-fun e!1398 () (Set (_ BitVec 32)))

(assert (=> d!1738 (= (content!22 lt!660) e!1398)))

(declare-fun b!2435 () Bool)

(assert (=> b!2435 (= e!1398 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2436 () Bool)

(assert (=> b!2436 (= e!1398 (union (insert (head!227 lt!660) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!660))))))

(assert (= (and d!1738 c!818) b!2435))

(assert (= (and d!1738 (not c!818)) b!2436))

(declare-fun m!3603 () Bool)

(assert (=> b!2436 m!3603))

(declare-fun m!3605 () Bool)

(assert (=> b!2436 m!3605))

(assert (=> b!2419 d!1738))

(declare-fun d!1740 () Bool)

(declare-fun c!819 () Bool)

(assert (=> d!1740 (= c!819 (is-Nil!56 (tail!239 (front!53 q4!1))))))

(declare-fun e!1399 () (Set (_ BitVec 32)))

(assert (=> d!1740 (= (content!22 (tail!239 (front!53 q4!1))) e!1399)))

(declare-fun b!2437 () Bool)

(assert (=> b!2437 (= e!1399 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2438 () Bool)

(assert (=> b!2438 (= e!1399 (union (insert (head!227 (tail!239 (front!53 q4!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (front!53 q4!1))))))))

(assert (= (and d!1740 c!819) b!2437))

(assert (= (and d!1740 (not c!819)) b!2438))

(declare-fun m!3607 () Bool)

(assert (=> b!2438 m!3607))

(declare-fun m!3609 () Bool)

(assert (=> b!2438 m!3609))

(assert (=> b!2419 d!1740))

(declare-fun d!1742 () Bool)

(declare-fun c!820 () Bool)

(assert (=> d!1742 (= c!820 (is-Nil!56 (reverse!5 (rear!55 q4!1))))))

(declare-fun e!1400 () (Set (_ BitVec 32)))

(assert (=> d!1742 (= (content!22 (reverse!5 (rear!55 q4!1))) e!1400)))

(declare-fun b!2439 () Bool)

(assert (=> b!2439 (= e!1400 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2440 () Bool)

(assert (=> b!2440 (= e!1400 (union (insert (head!227 (reverse!5 (rear!55 q4!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (reverse!5 (rear!55 q4!1))))))))

(assert (= (and d!1742 c!820) b!2439))

(assert (= (and d!1742 (not c!820)) b!2440))

(declare-fun m!3611 () Bool)

(assert (=> b!2440 m!3611))

(declare-fun m!3613 () Bool)

(assert (=> b!2440 m!3613))

(assert (=> b!2419 d!1742))

(declare-fun d!1744 () Bool)

(declare-fun lt!666 () Int)

(assert (=> d!1744 (>= lt!666 0)))

(declare-fun e!1401 () Int)

(assert (=> d!1744 (= lt!666 e!1401)))

(declare-fun c!821 () Bool)

(assert (=> d!1744 (= c!821 (is-Nil!56 (tail!239 (rear!55 lt!619))))))

(assert (=> d!1744 (= (size!23 (tail!239 (rear!55 lt!619))) lt!666)))

(declare-fun b!2441 () Bool)

(assert (=> b!2441 (= e!1401 0)))

(declare-fun b!2442 () Bool)

(assert (=> b!2442 (= e!1401 (+ 1 (size!23 (tail!239 (tail!239 (rear!55 lt!619))))))))

(assert (= (and d!1744 c!821) b!2441))

(assert (= (and d!1744 (not c!821)) b!2442))

(declare-fun m!3615 () Bool)

(assert (=> b!2442 m!3615))

(assert (=> b!2416 d!1744))

(declare-fun d!1746 () Bool)

(declare-fun e!1403 () Bool)

(assert (=> d!1746 e!1403))

(declare-fun res!915 () Bool)

(assert (=> d!1746 (=> (not res!915) (not e!1403))))

(declare-fun lt!667 () List!55)

(assert (=> d!1746 (= res!915 (= (size!23 lt!667) (+ (size!23 (tail!239 (tail!239 (front!53 q4!1)))) (size!23 (reverse!5 (rear!55 q4!1))))))))

(declare-fun e!1402 () List!55)

(assert (=> d!1746 (= lt!667 e!1402)))

(declare-fun c!822 () Bool)

(assert (=> d!1746 (= c!822 (is-Nil!56 (tail!239 (tail!239 (front!53 q4!1)))))))

(assert (=> d!1746 (= (concat!2 (tail!239 (tail!239 (front!53 q4!1))) (reverse!5 (rear!55 q4!1))) lt!667)))

(declare-fun b!2443 () Bool)

(assert (=> b!2443 (= e!1402 (reverse!5 (rear!55 q4!1)))))

(declare-fun b!2444 () Bool)

(assert (=> b!2444 (= e!1402 (Cons!55 (head!227 (tail!239 (tail!239 (front!53 q4!1)))) (concat!2 (tail!239 (tail!239 (tail!239 (front!53 q4!1)))) (reverse!5 (rear!55 q4!1)))))))

(declare-fun b!2445 () Bool)

(assert (=> b!2445 (= e!1403 (= (content!22 lt!667) (union (content!22 (tail!239 (tail!239 (front!53 q4!1)))) (content!22 (reverse!5 (rear!55 q4!1))))))))

(assert (= (and d!1746 c!822) b!2443))

(assert (= (and d!1746 (not c!822)) b!2444))

(assert (= (and d!1746 res!915) b!2445))

(declare-fun m!3617 () Bool)

(assert (=> d!1746 m!3617))

(assert (=> d!1746 m!3575))

(assert (=> d!1746 m!3423))

(assert (=> d!1746 m!3553))

(assert (=> b!2444 m!3423))

(declare-fun m!3619 () Bool)

(assert (=> b!2444 m!3619))

(declare-fun m!3621 () Bool)

(assert (=> b!2445 m!3621))

(assert (=> b!2445 m!3609))

(assert (=> b!2445 m!3423))

(assert (=> b!2445 m!3561))

(assert (=> b!2418 d!1746))

(declare-fun d!1748 () Bool)

(declare-fun lt!668 () Int)

(assert (=> d!1748 (>= lt!668 0)))

(declare-fun e!1404 () Int)

(assert (=> d!1748 (= lt!668 e!1404)))

(declare-fun c!823 () Bool)

(assert (=> d!1748 (= c!823 (is-Nil!56 (tail!239 (front!53 lt!618))))))

(assert (=> d!1748 (= (size!23 (tail!239 (front!53 lt!618))) lt!668)))

(declare-fun b!2446 () Bool)

(assert (=> b!2446 (= e!1404 0)))

(declare-fun b!2447 () Bool)

(assert (=> b!2447 (= e!1404 (+ 1 (size!23 (tail!239 (tail!239 (front!53 lt!618))))))))

(assert (= (and d!1748 c!823) b!2446))

(assert (= (and d!1748 (not c!823)) b!2447))

(declare-fun m!3623 () Bool)

(assert (=> b!2447 m!3623))

(assert (=> b!2357 d!1748))

(declare-fun d!1750 () Bool)

(declare-fun lt!669 () Int)

(assert (=> d!1750 (>= lt!669 0)))

(declare-fun e!1405 () Int)

(assert (=> d!1750 (= lt!669 e!1405)))

(declare-fun c!824 () Bool)

(assert (=> d!1750 (= c!824 (is-Nil!56 lt!656))))

(assert (=> d!1750 (= (size!23 lt!656) lt!669)))

(declare-fun b!2448 () Bool)

(assert (=> b!2448 (= e!1405 0)))

(declare-fun b!2449 () Bool)

(assert (=> b!2449 (= e!1405 (+ 1 (size!23 (tail!239 lt!656))))))

(assert (= (and d!1750 c!824) b!2448))

(assert (= (and d!1750 (not c!824)) b!2449))

(declare-fun m!3625 () Bool)

(assert (=> b!2449 m!3625))

(assert (=> d!1714 d!1750))

(assert (=> d!1714 d!1676))

(declare-fun d!1752 () Bool)

(declare-fun lt!670 () Int)

(assert (=> d!1752 (>= lt!670 0)))

(declare-fun e!1406 () Int)

(assert (=> d!1752 (= lt!670 e!1406)))

(declare-fun c!825 () Bool)

(assert (=> d!1752 (= c!825 (is-Nil!56 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))))))

(assert (=> d!1752 (= (size!23 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))) lt!670)))

(declare-fun b!2450 () Bool)

(assert (=> b!2450 (= e!1406 0)))

(declare-fun b!2451 () Bool)

(assert (=> b!2451 (= e!1406 (+ 1 (size!23 (tail!239 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))))))))

(assert (= (and d!1752 c!825) b!2450))

(assert (= (and d!1752 (not c!825)) b!2451))

(declare-fun m!3627 () Bool)

(assert (=> b!2451 m!3627))

(assert (=> d!1714 d!1752))

(declare-fun d!1754 () Bool)

(declare-fun lt!671 () Int)

(assert (=> d!1754 (>= lt!671 0)))

(declare-fun e!1407 () Int)

(assert (=> d!1754 (= lt!671 e!1407)))

(declare-fun c!826 () Bool)

(assert (=> d!1754 (= c!826 (is-Nil!56 (tail!239 (front!53 queue!56))))))

(assert (=> d!1754 (= (size!23 (tail!239 (front!53 queue!56))) lt!671)))

(declare-fun b!2452 () Bool)

(assert (=> b!2452 (= e!1407 0)))

(declare-fun b!2453 () Bool)

(assert (=> b!2453 (= e!1407 (+ 1 (size!23 (tail!239 (tail!239 (front!53 queue!56))))))))

(assert (= (and d!1754 c!826) b!2452))

(assert (= (and d!1754 (not c!826)) b!2453))

(declare-fun m!3629 () Bool)

(assert (=> b!2453 m!3629))

(assert (=> b!2363 d!1754))

(declare-fun d!1756 () Bool)

(declare-fun c!827 () Bool)

(assert (=> d!1756 (= c!827 (is-Nil!56 lt!649))))

(declare-fun e!1408 () (Set (_ BitVec 32)))

(assert (=> d!1756 (= (content!22 lt!649) e!1408)))

(declare-fun b!2454 () Bool)

(assert (=> b!2454 (= e!1408 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2455 () Bool)

(assert (=> b!2455 (= e!1408 (union (insert (head!227 lt!649) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!649))))))

(assert (= (and d!1756 c!827) b!2454))

(assert (= (and d!1756 (not c!827)) b!2455))

(declare-fun m!3631 () Bool)

(assert (=> b!2455 m!3631))

(declare-fun m!3633 () Bool)

(assert (=> b!2455 m!3633))

(assert (=> d!1696 d!1756))

(declare-fun d!1758 () Bool)

(declare-fun c!828 () Bool)

(assert (=> d!1758 (= c!828 (is-Nil!56 (rear!55 q3!1)))))

(declare-fun e!1409 () (Set (_ BitVec 32)))

(assert (=> d!1758 (= (content!22 (rear!55 q3!1)) e!1409)))

(declare-fun b!2456 () Bool)

(assert (=> b!2456 (= e!1409 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2457 () Bool)

(assert (=> b!2457 (= e!1409 (union (insert (head!227 (rear!55 q3!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (rear!55 q3!1)))))))

(assert (= (and d!1758 c!828) b!2456))

(assert (= (and d!1758 (not c!828)) b!2457))

(declare-fun m!3635 () Bool)

(assert (=> b!2457 m!3635))

(declare-fun m!3637 () Bool)

(assert (=> b!2457 m!3637))

(assert (=> d!1696 d!1758))

(declare-fun d!1760 () Bool)

(declare-fun lt!672 () Int)

(assert (=> d!1760 (>= lt!672 0)))

(declare-fun e!1410 () Int)

(assert (=> d!1760 (= lt!672 e!1410)))

(declare-fun c!829 () Bool)

(assert (=> d!1760 (= c!829 (is-Nil!56 (tail!239 (front!53 lt!615))))))

(assert (=> d!1760 (= (size!23 (tail!239 (front!53 lt!615))) lt!672)))

(declare-fun b!2458 () Bool)

(assert (=> b!2458 (= e!1410 0)))

(declare-fun b!2459 () Bool)

(assert (=> b!2459 (= e!1410 (+ 1 (size!23 (tail!239 (tail!239 (front!53 lt!615))))))))

(assert (= (and d!1760 c!829) b!2458))

(assert (= (and d!1760 (not c!829)) b!2459))

(declare-fun m!3639 () Bool)

(assert (=> b!2459 m!3639))

(assert (=> b!2353 d!1760))

(declare-fun d!1762 () Bool)

(declare-fun e!1412 () Bool)

(assert (=> d!1762 e!1412))

(declare-fun res!916 () Bool)

(assert (=> d!1762 (=> (not res!916) (not e!1412))))

(declare-fun lt!673 () List!55)

(assert (=> d!1762 (= res!916 (= (size!23 lt!673) (+ (size!23 (tail!239 (front!53 q2!1))) (size!23 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))))))))

(declare-fun e!1411 () List!55)

(assert (=> d!1762 (= lt!673 e!1411)))

(declare-fun c!830 () Bool)

(assert (=> d!1762 (= c!830 (is-Nil!56 (tail!239 (front!53 q2!1))))))

(assert (=> d!1762 (= (concat!2 (tail!239 (front!53 q2!1)) (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))) lt!673)))

(declare-fun b!2460 () Bool)

(assert (=> b!2460 (= e!1411 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1))))))

(declare-fun b!2461 () Bool)

(assert (=> b!2461 (= e!1411 (Cons!55 (head!227 (tail!239 (front!53 q2!1))) (concat!2 (tail!239 (tail!239 (front!53 q2!1))) (reverse!5 (Cons!55 e3!1 (rear!55 q2!1))))))))

(declare-fun b!2462 () Bool)

(assert (=> b!2462 (= e!1412 (= (content!22 lt!673) (union (content!22 (tail!239 (front!53 q2!1))) (content!22 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))))))))

(assert (= (and d!1762 c!830) b!2460))

(assert (= (and d!1762 (not c!830)) b!2461))

(assert (= (and d!1762 res!916) b!2462))

(declare-fun m!3641 () Bool)

(assert (=> d!1762 m!3641))

(assert (=> d!1762 m!3525))

(assert (=> d!1762 m!3393))

(assert (=> d!1762 m!3585))

(assert (=> b!2461 m!3393))

(declare-fun m!3643 () Bool)

(assert (=> b!2461 m!3643))

(declare-fun m!3645 () Bool)

(assert (=> b!2462 m!3645))

(declare-fun m!3647 () Bool)

(assert (=> b!2462 m!3647))

(assert (=> b!2462 m!3393))

(assert (=> b!2462 m!3593))

(assert (=> b!2427 d!1762))

(declare-fun d!1764 () Bool)

(declare-fun lt!674 () Int)

(assert (=> d!1764 (>= lt!674 0)))

(declare-fun e!1413 () Int)

(assert (=> d!1764 (= lt!674 e!1413)))

(declare-fun c!831 () Bool)

(assert (=> d!1764 (= c!831 (is-Nil!56 (front!53 lt!627)))))

(assert (=> d!1764 (= (size!23 (front!53 lt!627)) lt!674)))

(declare-fun b!2463 () Bool)

(assert (=> b!2463 (= e!1413 0)))

(declare-fun b!2464 () Bool)

(assert (=> b!2464 (= e!1413 (+ 1 (size!23 (tail!239 (front!53 lt!627)))))))

(assert (= (and d!1764 c!831) b!2463))

(assert (= (and d!1764 (not c!831)) b!2464))

(declare-fun m!3649 () Bool)

(assert (=> b!2464 m!3649))

(assert (=> d!1672 d!1764))

(declare-fun d!1766 () Bool)

(declare-fun lt!675 () Int)

(assert (=> d!1766 (>= lt!675 0)))

(declare-fun e!1414 () Int)

(assert (=> d!1766 (= lt!675 e!1414)))

(declare-fun c!832 () Bool)

(assert (=> d!1766 (= c!832 (is-Nil!56 (rear!55 lt!627)))))

(assert (=> d!1766 (= (size!23 (rear!55 lt!627)) lt!675)))

(declare-fun b!2465 () Bool)

(assert (=> b!2465 (= e!1414 0)))

(declare-fun b!2466 () Bool)

(assert (=> b!2466 (= e!1414 (+ 1 (size!23 (tail!239 (rear!55 lt!627)))))))

(assert (= (and d!1766 c!832) b!2465))

(assert (= (and d!1766 (not c!832)) b!2466))

(declare-fun m!3651 () Bool)

(assert (=> b!2466 m!3651))

(assert (=> d!1672 d!1766))

(declare-fun d!1768 () Bool)

(declare-fun c!833 () Bool)

(assert (=> d!1768 (= c!833 (is-Nil!56 lt!664))))

(declare-fun e!1415 () (Set (_ BitVec 32)))

(assert (=> d!1768 (= (content!22 lt!664) e!1415)))

(declare-fun b!2467 () Bool)

(assert (=> b!2467 (= e!1415 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2468 () Bool)

(assert (=> b!2468 (= e!1415 (union (insert (head!227 lt!664) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!664))))))

(assert (= (and d!1768 c!833) b!2467))

(assert (= (and d!1768 (not c!833)) b!2468))

(declare-fun m!3653 () Bool)

(assert (=> b!2468 m!3653))

(declare-fun m!3655 () Bool)

(assert (=> b!2468 m!3655))

(assert (=> b!2428 d!1768))

(declare-fun d!1770 () Bool)

(declare-fun c!834 () Bool)

(assert (=> d!1770 (= c!834 (is-Nil!56 (front!53 q2!1)))))

(declare-fun e!1416 () (Set (_ BitVec 32)))

(assert (=> d!1770 (= (content!22 (front!53 q2!1)) e!1416)))

(declare-fun b!2469 () Bool)

(assert (=> b!2469 (= e!1416 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2470 () Bool)

(assert (=> b!2470 (= e!1416 (union (insert (head!227 (front!53 q2!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (front!53 q2!1)))))))

(assert (= (and d!1770 c!834) b!2469))

(assert (= (and d!1770 (not c!834)) b!2470))

(declare-fun m!3657 () Bool)

(assert (=> b!2470 m!3657))

(assert (=> b!2470 m!3647))

(assert (=> b!2428 d!1770))

(declare-fun d!1772 () Bool)

(declare-fun c!835 () Bool)

(assert (=> d!1772 (= c!835 (is-Nil!56 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))))))

(declare-fun e!1417 () (Set (_ BitVec 32)))

(assert (=> d!1772 (= (content!22 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))) e!1417)))

(declare-fun b!2471 () Bool)

(assert (=> b!2471 (= e!1417 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2472 () Bool)

(assert (=> b!2472 (= e!1417 (union (insert (head!227 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))))))))

(assert (= (and d!1772 c!835) b!2471))

(assert (= (and d!1772 (not c!835)) b!2472))

(declare-fun m!3659 () Bool)

(assert (=> b!2472 m!3659))

(declare-fun m!3661 () Bool)

(assert (=> b!2472 m!3661))

(assert (=> b!2428 d!1772))

(declare-fun d!1774 () Bool)

(declare-fun c!836 () Bool)

(assert (=> d!1774 (= c!836 (is-Nil!56 lt!640))))

(declare-fun e!1418 () (Set (_ BitVec 32)))

(assert (=> d!1774 (= (content!22 lt!640) e!1418)))

(declare-fun b!2473 () Bool)

(assert (=> b!2473 (= e!1418 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2474 () Bool)

(assert (=> b!2474 (= e!1418 (union (insert (head!227 lt!640) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!640))))))

(assert (= (and d!1774 c!836) b!2473))

(assert (= (and d!1774 (not c!836)) b!2474))

(declare-fun m!3663 () Bool)

(assert (=> b!2474 m!3663))

(declare-fun m!3665 () Bool)

(assert (=> b!2474 m!3665))

(assert (=> b!2376 d!1774))

(declare-fun d!1776 () Bool)

(declare-fun c!837 () Bool)

(assert (=> d!1776 (= c!837 (is-Nil!56 (front!53 q1!1)))))

(declare-fun e!1419 () (Set (_ BitVec 32)))

(assert (=> d!1776 (= (content!22 (front!53 q1!1)) e!1419)))

(declare-fun b!2475 () Bool)

(assert (=> b!2475 (= e!1419 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2476 () Bool)

(assert (=> b!2476 (= e!1419 (union (insert (head!227 (front!53 q1!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (front!53 q1!1)))))))

(assert (= (and d!1776 c!837) b!2475))

(assert (= (and d!1776 (not c!837)) b!2476))

(declare-fun m!3667 () Bool)

(assert (=> b!2476 m!3667))

(declare-fun m!3669 () Bool)

(assert (=> b!2476 m!3669))

(assert (=> b!2376 d!1776))

(declare-fun d!1778 () Bool)

(declare-fun c!838 () Bool)

(assert (=> d!1778 (= c!838 (is-Nil!56 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))))))

(declare-fun e!1420 () (Set (_ BitVec 32)))

(assert (=> d!1778 (= (content!22 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))) e!1420)))

(declare-fun b!2477 () Bool)

(assert (=> b!2477 (= e!1420 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2478 () Bool)

(assert (=> b!2478 (= e!1420 (union (insert (head!227 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))))))))

(assert (= (and d!1778 c!838) b!2477))

(assert (= (and d!1778 (not c!838)) b!2478))

(declare-fun m!3671 () Bool)

(assert (=> b!2478 m!3671))

(declare-fun m!3673 () Bool)

(assert (=> b!2478 m!3673))

(assert (=> b!2376 d!1778))

(declare-fun d!1780 () Bool)

(declare-fun c!839 () Bool)

(assert (=> d!1780 (= c!839 (is-Nil!56 lt!657))))

(declare-fun e!1421 () (Set (_ BitVec 32)))

(assert (=> d!1780 (= (content!22 lt!657) e!1421)))

(declare-fun b!2479 () Bool)

(assert (=> b!2479 (= e!1421 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2480 () Bool)

(assert (=> b!2480 (= e!1421 (union (insert (head!227 lt!657) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!657))))))

(assert (= (and d!1780 c!839) b!2479))

(assert (= (and d!1780 (not c!839)) b!2480))

(declare-fun m!3675 () Bool)

(assert (=> b!2480 m!3675))

(declare-fun m!3677 () Bool)

(assert (=> b!2480 m!3677))

(assert (=> d!1716 d!1780))

(declare-fun d!1782 () Bool)

(declare-fun c!840 () Bool)

(assert (=> d!1782 (= c!840 (is-Nil!56 (Cons!55 e1!2 (rear!55 queue!56))))))

(declare-fun e!1422 () (Set (_ BitVec 32)))

(assert (=> d!1782 (= (content!22 (Cons!55 e1!2 (rear!55 queue!56))) e!1422)))

(declare-fun b!2481 () Bool)

(assert (=> b!2481 (= e!1422 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2482 () Bool)

(assert (=> b!2482 (= e!1422 (union (insert (head!227 (Cons!55 e1!2 (rear!55 queue!56))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))))))

(assert (= (and d!1782 c!840) b!2481))

(assert (= (and d!1782 (not c!840)) b!2482))

(declare-fun m!3679 () Bool)

(assert (=> b!2482 m!3679))

(declare-fun m!3681 () Bool)

(assert (=> b!2482 m!3681))

(assert (=> d!1716 d!1782))

(declare-fun d!1784 () Bool)

(declare-fun lt!676 () Int)

(assert (=> d!1784 (>= lt!676 0)))

(declare-fun e!1423 () Int)

(assert (=> d!1784 (= lt!676 e!1423)))

(declare-fun c!841 () Bool)

(assert (=> d!1784 (= c!841 (is-Nil!56 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))))

(assert (=> d!1784 (= (size!23 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))) lt!676)))

(declare-fun b!2483 () Bool)

(assert (=> b!2483 (= e!1423 0)))

(declare-fun b!2484 () Bool)

(assert (=> b!2484 (= e!1423 (+ 1 (size!23 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))))))

(assert (= (and d!1784 c!841) b!2483))

(assert (= (and d!1784 (not c!841)) b!2484))

(declare-fun m!3683 () Bool)

(assert (=> b!2484 m!3683))

(assert (=> b!2361 d!1784))

(declare-fun d!1786 () Bool)

(declare-fun lt!677 () Int)

(assert (=> d!1786 (>= lt!677 0)))

(declare-fun e!1424 () Int)

(assert (=> d!1786 (= lt!677 e!1424)))

(declare-fun c!842 () Bool)

(assert (=> d!1786 (= c!842 (is-Nil!56 (tail!239 (tail!239 (front!53 q3!1)))))))

(assert (=> d!1786 (= (size!23 (tail!239 (tail!239 (front!53 q3!1)))) lt!677)))

(declare-fun b!2485 () Bool)

(assert (=> b!2485 (= e!1424 0)))

(declare-fun b!2486 () Bool)

(assert (=> b!2486 (= e!1424 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (front!53 q3!1)))))))))

(assert (= (and d!1786 c!842) b!2485))

(assert (= (and d!1786 (not c!842)) b!2486))

(declare-fun m!3685 () Bool)

(assert (=> b!2486 m!3685))

(assert (=> b!2425 d!1786))

(declare-fun d!1788 () Bool)

(declare-fun c!843 () Bool)

(assert (=> d!1788 (= c!843 (is-Nil!56 lt!648))))

(declare-fun e!1425 () (Set (_ BitVec 32)))

(assert (=> d!1788 (= (content!22 lt!648) e!1425)))

(declare-fun b!2487 () Bool)

(assert (=> b!2487 (= e!1425 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2488 () Bool)

(assert (=> b!2488 (= e!1425 (union (insert (head!227 lt!648) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!648))))))

(assert (= (and d!1788 c!843) b!2487))

(assert (= (and d!1788 (not c!843)) b!2488))

(declare-fun m!3687 () Bool)

(assert (=> b!2488 m!3687))

(declare-fun m!3689 () Bool)

(assert (=> b!2488 m!3689))

(assert (=> b!2393 d!1788))

(declare-fun d!1790 () Bool)

(declare-fun c!844 () Bool)

(assert (=> d!1790 (= c!844 (is-Nil!56 (tail!239 (front!53 q3!1))))))

(declare-fun e!1426 () (Set (_ BitVec 32)))

(assert (=> d!1790 (= (content!22 (tail!239 (front!53 q3!1))) e!1426)))

(declare-fun b!2489 () Bool)

(assert (=> b!2489 (= e!1426 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2490 () Bool)

(assert (=> b!2490 (= e!1426 (union (insert (head!227 (tail!239 (front!53 q3!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (front!53 q3!1))))))))

(assert (= (and d!1790 c!844) b!2489))

(assert (= (and d!1790 (not c!844)) b!2490))

(declare-fun m!3691 () Bool)

(assert (=> b!2490 m!3691))

(declare-fun m!3693 () Bool)

(assert (=> b!2490 m!3693))

(assert (=> b!2393 d!1790))

(declare-fun d!1792 () Bool)

(declare-fun c!845 () Bool)

(assert (=> d!1792 (= c!845 (is-Nil!56 (reverse!5 (rear!55 q3!1))))))

(declare-fun e!1427 () (Set (_ BitVec 32)))

(assert (=> d!1792 (= (content!22 (reverse!5 (rear!55 q3!1))) e!1427)))

(declare-fun b!2491 () Bool)

(assert (=> b!2491 (= e!1427 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2492 () Bool)

(assert (=> b!2492 (= e!1427 (union (insert (head!227 (reverse!5 (rear!55 q3!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (reverse!5 (rear!55 q3!1))))))))

(assert (= (and d!1792 c!845) b!2491))

(assert (= (and d!1792 (not c!845)) b!2492))

(declare-fun m!3695 () Bool)

(assert (=> b!2492 m!3695))

(declare-fun m!3697 () Bool)

(assert (=> b!2492 m!3697))

(assert (=> b!2393 d!1792))

(declare-fun d!1794 () Bool)

(declare-fun lt!678 () Int)

(assert (=> d!1794 (>= lt!678 0)))

(declare-fun e!1428 () Int)

(assert (=> d!1794 (= lt!678 e!1428)))

(declare-fun c!846 () Bool)

(assert (=> d!1794 (= c!846 (is-Nil!56 (front!53 lt!626)))))

(assert (=> d!1794 (= (size!23 (front!53 lt!626)) lt!678)))

(declare-fun b!2493 () Bool)

(assert (=> b!2493 (= e!1428 0)))

(declare-fun b!2494 () Bool)

(assert (=> b!2494 (= e!1428 (+ 1 (size!23 (tail!239 (front!53 lt!626)))))))

(assert (= (and d!1794 c!846) b!2493))

(assert (= (and d!1794 (not c!846)) b!2494))

(declare-fun m!3699 () Bool)

(assert (=> b!2494 m!3699))

(assert (=> d!1726 d!1794))

(declare-fun d!1796 () Bool)

(declare-fun lt!679 () Int)

(assert (=> d!1796 (>= lt!679 0)))

(declare-fun e!1429 () Int)

(assert (=> d!1796 (= lt!679 e!1429)))

(declare-fun c!847 () Bool)

(assert (=> d!1796 (= c!847 (is-Nil!56 (rear!55 lt!626)))))

(assert (=> d!1796 (= (size!23 (rear!55 lt!626)) lt!679)))

(declare-fun b!2495 () Bool)

(assert (=> b!2495 (= e!1429 0)))

(declare-fun b!2496 () Bool)

(assert (=> b!2496 (= e!1429 (+ 1 (size!23 (tail!239 (rear!55 lt!626)))))))

(assert (= (and d!1796 c!847) b!2495))

(assert (= (and d!1796 (not c!847)) b!2496))

(declare-fun m!3701 () Bool)

(assert (=> b!2496 m!3701))

(assert (=> d!1726 d!1796))

(declare-fun d!1798 () Bool)

(declare-fun lt!680 () Int)

(assert (=> d!1798 (>= lt!680 0)))

(declare-fun e!1430 () Int)

(assert (=> d!1798 (= lt!680 e!1430)))

(declare-fun c!848 () Bool)

(assert (=> d!1798 (= c!848 (is-Nil!56 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))))

(assert (=> d!1798 (= (size!23 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))) lt!680)))

(declare-fun b!2497 () Bool)

(assert (=> b!2497 (= e!1430 0)))

(declare-fun b!2498 () Bool)

(assert (=> b!2498 (= e!1430 (+ 1 (size!23 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))))))

(assert (= (and d!1798 c!848) b!2497))

(assert (= (and d!1798 (not c!848)) b!2498))

(declare-fun m!3703 () Bool)

(assert (=> b!2498 m!3703))

(assert (=> b!2405 d!1798))

(declare-fun d!1800 () Bool)

(declare-fun lt!681 () Int)

(assert (=> d!1800 (>= lt!681 0)))

(declare-fun e!1431 () Int)

(assert (=> d!1800 (= lt!681 e!1431)))

(declare-fun c!849 () Bool)

(assert (=> d!1800 (= c!849 (is-Nil!56 lt!664))))

(assert (=> d!1800 (= (size!23 lt!664) lt!681)))

(declare-fun b!2499 () Bool)

(assert (=> b!2499 (= e!1431 0)))

(declare-fun b!2500 () Bool)

(assert (=> b!2500 (= e!1431 (+ 1 (size!23 (tail!239 lt!664))))))

(assert (= (and d!1800 c!849) b!2499))

(assert (= (and d!1800 (not c!849)) b!2500))

(declare-fun m!3705 () Bool)

(assert (=> b!2500 m!3705))

(assert (=> d!1734 d!1800))

(assert (=> d!1734 d!1712))

(declare-fun d!1802 () Bool)

(declare-fun lt!682 () Int)

(assert (=> d!1802 (>= lt!682 0)))

(declare-fun e!1432 () Int)

(assert (=> d!1802 (= lt!682 e!1432)))

(declare-fun c!850 () Bool)

(assert (=> d!1802 (= c!850 (is-Nil!56 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))))))

(assert (=> d!1802 (= (size!23 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))) lt!682)))

(declare-fun b!2501 () Bool)

(assert (=> b!2501 (= e!1432 0)))

(declare-fun b!2502 () Bool)

(assert (=> b!2502 (= e!1432 (+ 1 (size!23 (tail!239 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))))))))

(assert (= (and d!1802 c!850) b!2501))

(assert (= (and d!1802 (not c!850)) b!2502))

(declare-fun m!3707 () Bool)

(assert (=> b!2502 m!3707))

(assert (=> d!1734 d!1802))

(assert (=> b!2397 d!1728))

(declare-fun d!1804 () Bool)

(declare-fun lt!683 () Int)

(assert (=> d!1804 (>= lt!683 0)))

(declare-fun e!1433 () Int)

(assert (=> d!1804 (= lt!683 e!1433)))

(declare-fun c!851 () Bool)

(assert (=> d!1804 (= c!851 (is-Nil!56 (tail!239 (front!53 q2!1))))))

(assert (=> d!1804 (= (size!23 (tail!239 (front!53 q2!1))) lt!683)))

(declare-fun b!2503 () Bool)

(assert (=> b!2503 (= e!1433 0)))

(declare-fun b!2504 () Bool)

(assert (=> b!2504 (= e!1433 (+ 1 (size!23 (tail!239 (tail!239 (front!53 q2!1))))))))

(assert (= (and d!1804 c!851) b!2503))

(assert (= (and d!1804 (not c!851)) b!2504))

(declare-fun m!3709 () Bool)

(assert (=> b!2504 m!3709))

(assert (=> b!2407 d!1804))

(declare-fun d!1806 () Bool)

(declare-fun lt!684 () Int)

(assert (=> d!1806 (>= lt!684 0)))

(declare-fun e!1434 () Int)

(assert (=> d!1806 (= lt!684 e!1434)))

(declare-fun c!852 () Bool)

(assert (=> d!1806 (= c!852 (is-Nil!56 (tail!239 (rear!55 lt!618))))))

(assert (=> d!1806 (= (size!23 (tail!239 (rear!55 lt!618))) lt!684)))

(declare-fun b!2505 () Bool)

(assert (=> b!2505 (= e!1434 0)))

(declare-fun b!2506 () Bool)

(assert (=> b!2506 (= e!1434 (+ 1 (size!23 (tail!239 (tail!239 (rear!55 lt!618))))))))

(assert (= (and d!1806 c!852) b!2505))

(assert (= (and d!1806 (not c!852)) b!2506))

(declare-fun m!3711 () Bool)

(assert (=> b!2506 m!3711))

(assert (=> b!2359 d!1806))

(declare-fun d!1808 () Bool)

(declare-fun e!1436 () Bool)

(assert (=> d!1808 e!1436))

(declare-fun res!917 () Bool)

(assert (=> d!1808 (=> (not res!917) (not e!1436))))

(declare-fun lt!685 () List!55)

(assert (=> d!1808 (= res!917 (= (size!23 lt!685) (+ (size!23 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))) (size!23 (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56)))))))

(declare-fun e!1435 () List!55)

(assert (=> d!1808 (= lt!685 e!1435)))

(declare-fun c!853 () Bool)

(assert (=> d!1808 (= c!853 (is-Nil!56 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))))))

(assert (=> d!1808 (= (concat!2 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))) (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56)) lt!685)))

(declare-fun b!2507 () Bool)

(assert (=> b!2507 (= e!1435 (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56))))

(declare-fun b!2508 () Bool)

(assert (=> b!2508 (= e!1435 (Cons!55 (head!227 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))) (concat!2 (tail!239 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))) (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56))))))

(declare-fun b!2509 () Bool)

(assert (=> b!2509 (= e!1436 (= (content!22 lt!685) (union (content!22 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))) (content!22 (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56)))))))

(assert (= (and d!1808 c!853) b!2507))

(assert (= (and d!1808 (not c!853)) b!2508))

(assert (= (and d!1808 res!917) b!2509))

(declare-fun m!3713 () Bool)

(assert (=> d!1808 m!3713))

(assert (=> d!1808 m!3543))

(declare-fun m!3715 () Bool)

(assert (=> d!1808 m!3715))

(declare-fun m!3717 () Bool)

(assert (=> d!1808 m!3717))

(declare-fun m!3719 () Bool)

(assert (=> b!2508 m!3719))

(declare-fun m!3721 () Bool)

(assert (=> b!2509 m!3721))

(assert (=> b!2509 m!3543))

(declare-fun m!3723 () Bool)

(assert (=> b!2509 m!3723))

(declare-fun m!3725 () Bool)

(assert (=> b!2509 m!3725))

(assert (=> b!2412 d!1808))

(declare-fun d!1810 () Bool)

(declare-fun lt!686 () List!55)

(assert (=> d!1810 (= (content!22 lt!686) (content!22 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))))

(declare-fun e!1437 () List!55)

(assert (=> d!1810 (= lt!686 e!1437)))

(declare-fun c!854 () Bool)

(assert (=> d!1810 (= c!854 (is-Nil!56 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))))

(assert (=> d!1810 (= (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))) lt!686)))

(declare-fun b!2510 () Bool)

(assert (=> b!2510 (= e!1437 Nil!56)))

(declare-fun b!2511 () Bool)

(assert (=> b!2511 (= e!1437 (concat!2 (reverse!5 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))) (Cons!55 (head!227 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))) Nil!56)))))

(assert (= (and d!1810 c!854) b!2510))

(assert (= (and d!1810 (not c!854)) b!2511))

(declare-fun m!3727 () Bool)

(assert (=> d!1810 m!3727))

(assert (=> d!1810 m!3681))

(declare-fun m!3729 () Bool)

(assert (=> b!2511 m!3729))

(assert (=> b!2511 m!3729))

(declare-fun m!3731 () Bool)

(assert (=> b!2511 m!3731))

(assert (=> b!2412 d!1810))

(declare-fun d!1812 () Bool)

(declare-fun lt!687 () Int)

(assert (=> d!1812 (>= lt!687 0)))

(declare-fun e!1438 () Int)

(assert (=> d!1812 (= lt!687 e!1438)))

(declare-fun c!855 () Bool)

(assert (=> d!1812 (= c!855 (is-Nil!56 (tail!239 (rear!55 lt!620))))))

(assert (=> d!1812 (= (size!23 (tail!239 (rear!55 lt!620))) lt!687)))

(declare-fun b!2512 () Bool)

(assert (=> b!2512 (= e!1438 0)))

(declare-fun b!2513 () Bool)

(assert (=> b!2513 (= e!1438 (+ 1 (size!23 (tail!239 (tail!239 (rear!55 lt!620))))))))

(assert (= (and d!1812 c!855) b!2512))

(assert (= (and d!1812 (not c!855)) b!2513))

(declare-fun m!3733 () Bool)

(assert (=> b!2513 m!3733))

(assert (=> b!2390 d!1812))

(declare-fun d!1814 () Bool)

(declare-fun lt!688 () Int)

(assert (=> d!1814 (>= lt!688 0)))

(declare-fun e!1439 () Int)

(assert (=> d!1814 (= lt!688 e!1439)))

(declare-fun c!856 () Bool)

(assert (=> d!1814 (= c!856 (is-Nil!56 (front!53 lt!623)))))

(assert (=> d!1814 (= (size!23 (front!53 lt!623)) lt!688)))

(declare-fun b!2514 () Bool)

(assert (=> b!2514 (= e!1439 0)))

(declare-fun b!2515 () Bool)

(assert (=> b!2515 (= e!1439 (+ 1 (size!23 (tail!239 (front!53 lt!623)))))))

(assert (= (and d!1814 c!856) b!2514))

(assert (= (and d!1814 (not c!856)) b!2515))

(declare-fun m!3735 () Bool)

(assert (=> b!2515 m!3735))

(assert (=> d!1702 d!1814))

(declare-fun d!1816 () Bool)

(declare-fun lt!689 () Int)

(assert (=> d!1816 (>= lt!689 0)))

(declare-fun e!1440 () Int)

(assert (=> d!1816 (= lt!689 e!1440)))

(declare-fun c!857 () Bool)

(assert (=> d!1816 (= c!857 (is-Nil!56 (rear!55 lt!623)))))

(assert (=> d!1816 (= (size!23 (rear!55 lt!623)) lt!689)))

(declare-fun b!2516 () Bool)

(assert (=> b!2516 (= e!1440 0)))

(declare-fun b!2517 () Bool)

(assert (=> b!2517 (= e!1440 (+ 1 (size!23 (tail!239 (rear!55 lt!623)))))))

(assert (= (and d!1816 c!857) b!2516))

(assert (= (and d!1816 (not c!857)) b!2517))

(declare-fun m!3737 () Bool)

(assert (=> b!2517 m!3737))

(assert (=> d!1702 d!1816))

(declare-fun d!1818 () Bool)

(declare-fun c!858 () Bool)

(assert (=> d!1818 (= c!858 (is-Nil!56 lt!665))))

(declare-fun e!1441 () (Set (_ BitVec 32)))

(assert (=> d!1818 (= (content!22 lt!665) e!1441)))

(declare-fun b!2518 () Bool)

(assert (=> b!2518 (= e!1441 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2519 () Bool)

(assert (=> b!2519 (= e!1441 (union (insert (head!227 lt!665) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!665))))))

(assert (= (and d!1818 c!858) b!2518))

(assert (= (and d!1818 (not c!858)) b!2519))

(declare-fun m!3739 () Bool)

(assert (=> b!2519 m!3739))

(declare-fun m!3741 () Bool)

(assert (=> b!2519 m!3741))

(assert (=> d!1736 d!1818))

(declare-fun d!1820 () Bool)

(declare-fun c!859 () Bool)

(assert (=> d!1820 (= c!859 (is-Nil!56 (Cons!55 e3!1 (rear!55 q2!1))))))

(declare-fun e!1442 () (Set (_ BitVec 32)))

(assert (=> d!1820 (= (content!22 (Cons!55 e3!1 (rear!55 q2!1))) e!1442)))

(declare-fun b!2520 () Bool)

(assert (=> b!2520 (= e!1442 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2521 () Bool)

(assert (=> b!2521 (= e!1442 (union (insert (head!227 (Cons!55 e3!1 (rear!55 q2!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))))))

(assert (= (and d!1820 c!859) b!2520))

(assert (= (and d!1820 (not c!859)) b!2521))

(declare-fun m!3743 () Bool)

(assert (=> b!2521 m!3743))

(declare-fun m!3745 () Bool)

(assert (=> b!2521 m!3745))

(assert (=> d!1736 d!1820))

(declare-fun d!1822 () Bool)

(declare-fun lt!690 () Int)

(assert (=> d!1822 (>= lt!690 0)))

(declare-fun e!1443 () Int)

(assert (=> d!1822 (= lt!690 e!1443)))

(declare-fun c!860 () Bool)

(assert (=> d!1822 (= c!860 (is-Nil!56 (tail!239 (front!53 q1!1))))))

(assert (=> d!1822 (= (size!23 (tail!239 (front!53 q1!1))) lt!690)))

(declare-fun b!2522 () Bool)

(assert (=> b!2522 (= e!1443 0)))

(declare-fun b!2523 () Bool)

(assert (=> b!2523 (= e!1443 (+ 1 (size!23 (tail!239 (tail!239 (front!53 q1!1))))))))

(assert (= (and d!1822 c!860) b!2522))

(assert (= (and d!1822 (not c!860)) b!2523))

(declare-fun m!3747 () Bool)

(assert (=> b!2523 m!3747))

(assert (=> b!2403 d!1822))

(declare-fun d!1824 () Bool)

(declare-fun e!1445 () Bool)

(assert (=> d!1824 e!1445))

(declare-fun res!918 () Bool)

(assert (=> d!1824 (=> (not res!918) (not e!1445))))

(declare-fun lt!691 () List!55)

(assert (=> d!1824 (= res!918 (= (size!23 lt!691) (+ (size!23 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))) (size!23 (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56)))))))

(declare-fun e!1444 () List!55)

(assert (=> d!1824 (= lt!691 e!1444)))

(declare-fun c!861 () Bool)

(assert (=> d!1824 (= c!861 (is-Nil!56 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))))))

(assert (=> d!1824 (= (concat!2 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))) (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56)) lt!691)))

(declare-fun b!2524 () Bool)

(assert (=> b!2524 (= e!1444 (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56))))

(declare-fun b!2525 () Bool)

(assert (=> b!2525 (= e!1444 (Cons!55 (head!227 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))) (concat!2 (tail!239 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))) (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56))))))

(declare-fun b!2526 () Bool)

(assert (=> b!2526 (= e!1445 (= (content!22 lt!691) (union (content!22 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))) (content!22 (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56)))))))

(assert (= (and d!1824 c!861) b!2524))

(assert (= (and d!1824 (not c!861)) b!2525))

(assert (= (and d!1824 res!918) b!2526))

(declare-fun m!3749 () Bool)

(assert (=> d!1824 m!3749))

(assert (=> d!1824 m!3479))

(declare-fun m!3751 () Bool)

(assert (=> d!1824 m!3751))

(declare-fun m!3753 () Bool)

(assert (=> d!1824 m!3753))

(declare-fun m!3755 () Bool)

(assert (=> b!2525 m!3755))

(declare-fun m!3757 () Bool)

(assert (=> b!2526 m!3757))

(assert (=> b!2526 m!3479))

(declare-fun m!3759 () Bool)

(assert (=> b!2526 m!3759))

(declare-fun m!3761 () Bool)

(assert (=> b!2526 m!3761))

(assert (=> b!2382 d!1824))

(declare-fun d!1826 () Bool)

(declare-fun lt!692 () List!55)

(assert (=> d!1826 (= (content!22 lt!692) (content!22 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))))

(declare-fun e!1446 () List!55)

(assert (=> d!1826 (= lt!692 e!1446)))

(declare-fun c!862 () Bool)

(assert (=> d!1826 (= c!862 (is-Nil!56 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))))

(assert (=> d!1826 (= (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))) lt!692)))

(declare-fun b!2527 () Bool)

(assert (=> b!2527 (= e!1446 Nil!56)))

(declare-fun b!2528 () Bool)

(assert (=> b!2528 (= e!1446 (concat!2 (reverse!5 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))) (Cons!55 (head!227 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))) Nil!56)))))

(assert (= (and d!1826 c!862) b!2527))

(assert (= (and d!1826 (not c!862)) b!2528))

(declare-fun m!3763 () Bool)

(assert (=> d!1826 m!3763))

(declare-fun m!3765 () Bool)

(assert (=> d!1826 m!3765))

(declare-fun m!3767 () Bool)

(assert (=> b!2528 m!3767))

(assert (=> b!2528 m!3767))

(declare-fun m!3769 () Bool)

(assert (=> b!2528 m!3769))

(assert (=> b!2382 d!1826))

(declare-fun d!1828 () Bool)

(declare-fun e!1448 () Bool)

(assert (=> d!1828 e!1448))

(declare-fun res!919 () Bool)

(assert (=> d!1828 (=> (not res!919) (not e!1448))))

(declare-fun lt!693 () List!55)

(assert (=> d!1828 (= res!919 (= (size!23 lt!693) (+ (size!23 (reverse!5 (tail!239 (rear!55 q4!1)))) (size!23 (Cons!55 (head!227 (rear!55 q4!1)) Nil!56)))))))

(declare-fun e!1447 () List!55)

(assert (=> d!1828 (= lt!693 e!1447)))

(declare-fun c!863 () Bool)

(assert (=> d!1828 (= c!863 (is-Nil!56 (reverse!5 (tail!239 (rear!55 q4!1)))))))

(assert (=> d!1828 (= (concat!2 (reverse!5 (tail!239 (rear!55 q4!1))) (Cons!55 (head!227 (rear!55 q4!1)) Nil!56)) lt!693)))

(declare-fun b!2529 () Bool)

(assert (=> b!2529 (= e!1447 (Cons!55 (head!227 (rear!55 q4!1)) Nil!56))))

(declare-fun b!2530 () Bool)

(assert (=> b!2530 (= e!1447 (Cons!55 (head!227 (reverse!5 (tail!239 (rear!55 q4!1)))) (concat!2 (tail!239 (reverse!5 (tail!239 (rear!55 q4!1)))) (Cons!55 (head!227 (rear!55 q4!1)) Nil!56))))))

(declare-fun b!2531 () Bool)

(assert (=> b!2531 (= e!1448 (= (content!22 lt!693) (union (content!22 (reverse!5 (tail!239 (rear!55 q4!1)))) (content!22 (Cons!55 (head!227 (rear!55 q4!1)) Nil!56)))))))

(assert (= (and d!1828 c!863) b!2529))

(assert (= (and d!1828 (not c!863)) b!2530))

(assert (= (and d!1828 res!919) b!2531))

(declare-fun m!3771 () Bool)

(assert (=> d!1828 m!3771))

(assert (=> d!1828 m!3567))

(declare-fun m!3773 () Bool)

(assert (=> d!1828 m!3773))

(declare-fun m!3775 () Bool)

(assert (=> d!1828 m!3775))

(declare-fun m!3777 () Bool)

(assert (=> b!2530 m!3777))

(declare-fun m!3779 () Bool)

(assert (=> b!2531 m!3779))

(assert (=> b!2531 m!3567))

(declare-fun m!3781 () Bool)

(assert (=> b!2531 m!3781))

(declare-fun m!3783 () Bool)

(assert (=> b!2531 m!3783))

(assert (=> b!2421 d!1828))

(declare-fun d!1830 () Bool)

(declare-fun lt!694 () List!55)

(assert (=> d!1830 (= (content!22 lt!694) (content!22 (tail!239 (rear!55 q4!1))))))

(declare-fun e!1449 () List!55)

(assert (=> d!1830 (= lt!694 e!1449)))

(declare-fun c!864 () Bool)

(assert (=> d!1830 (= c!864 (is-Nil!56 (tail!239 (rear!55 q4!1))))))

(assert (=> d!1830 (= (reverse!5 (tail!239 (rear!55 q4!1))) lt!694)))

(declare-fun b!2532 () Bool)

(assert (=> b!2532 (= e!1449 Nil!56)))

(declare-fun b!2533 () Bool)

(assert (=> b!2533 (= e!1449 (concat!2 (reverse!5 (tail!239 (tail!239 (rear!55 q4!1)))) (Cons!55 (head!227 (tail!239 (rear!55 q4!1))) Nil!56)))))

(assert (= (and d!1830 c!864) b!2532))

(assert (= (and d!1830 (not c!864)) b!2533))

(declare-fun m!3785 () Bool)

(assert (=> d!1830 m!3785))

(declare-fun m!3787 () Bool)

(assert (=> d!1830 m!3787))

(declare-fun m!3789 () Bool)

(assert (=> b!2533 m!3789))

(assert (=> b!2533 m!3789))

(declare-fun m!3791 () Bool)

(assert (=> b!2533 m!3791))

(assert (=> b!2421 d!1830))

(declare-fun d!1832 () Bool)

(declare-fun lt!695 () Int)

(assert (=> d!1832 (>= lt!695 0)))

(declare-fun e!1450 () Int)

(assert (=> d!1832 (= lt!695 e!1450)))

(declare-fun c!865 () Bool)

(assert (=> d!1832 (= c!865 (is-Nil!56 (front!53 lt!625)))))

(assert (=> d!1832 (= (size!23 (front!53 lt!625)) lt!695)))

(declare-fun b!2534 () Bool)

(assert (=> b!2534 (= e!1450 0)))

(declare-fun b!2535 () Bool)

(assert (=> b!2535 (= e!1450 (+ 1 (size!23 (tail!239 (front!53 lt!625)))))))

(assert (= (and d!1832 c!865) b!2534))

(assert (= (and d!1832 (not c!865)) b!2535))

(declare-fun m!3793 () Bool)

(assert (=> b!2535 m!3793))

(assert (=> d!1730 d!1832))

(declare-fun d!1834 () Bool)

(declare-fun lt!696 () Int)

(assert (=> d!1834 (>= lt!696 0)))

(declare-fun e!1451 () Int)

(assert (=> d!1834 (= lt!696 e!1451)))

(declare-fun c!866 () Bool)

(assert (=> d!1834 (= c!866 (is-Nil!56 (rear!55 lt!625)))))

(assert (=> d!1834 (= (size!23 (rear!55 lt!625)) lt!696)))

(declare-fun b!2536 () Bool)

(assert (=> b!2536 (= e!1451 0)))

(declare-fun b!2537 () Bool)

(assert (=> b!2537 (= e!1451 (+ 1 (size!23 (tail!239 (rear!55 lt!625)))))))

(assert (= (and d!1834 c!866) b!2536))

(assert (= (and d!1834 (not c!866)) b!2537))

(declare-fun m!3795 () Bool)

(assert (=> b!2537 m!3795))

(assert (=> d!1730 d!1834))

(declare-fun d!1836 () Bool)

(declare-fun c!867 () Bool)

(assert (=> d!1836 (= c!867 (is-Nil!56 lt!656))))

(declare-fun e!1452 () (Set (_ BitVec 32)))

(assert (=> d!1836 (= (content!22 lt!656) e!1452)))

(declare-fun b!2538 () Bool)

(assert (=> b!2538 (= e!1452 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2539 () Bool)

(assert (=> b!2539 (= e!1452 (union (insert (head!227 lt!656) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!656))))))

(assert (= (and d!1836 c!867) b!2538))

(assert (= (and d!1836 (not c!867)) b!2539))

(declare-fun m!3797 () Bool)

(assert (=> b!2539 m!3797))

(declare-fun m!3799 () Bool)

(assert (=> b!2539 m!3799))

(assert (=> b!2410 d!1836))

(declare-fun d!1838 () Bool)

(declare-fun c!868 () Bool)

(assert (=> d!1838 (= c!868 (is-Nil!56 (front!53 queue!56)))))

(declare-fun e!1453 () (Set (_ BitVec 32)))

(assert (=> d!1838 (= (content!22 (front!53 queue!56)) e!1453)))

(declare-fun b!2540 () Bool)

(assert (=> b!2540 (= e!1453 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2541 () Bool)

(assert (=> b!2541 (= e!1453 (union (insert (head!227 (front!53 queue!56)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (front!53 queue!56)))))))

(assert (= (and d!1838 c!868) b!2540))

(assert (= (and d!1838 (not c!868)) b!2541))

(declare-fun m!3801 () Bool)

(assert (=> b!2541 m!3801))

(declare-fun m!3803 () Bool)

(assert (=> b!2541 m!3803))

(assert (=> b!2410 d!1838))

(declare-fun d!1840 () Bool)

(declare-fun c!869 () Bool)

(assert (=> d!1840 (= c!869 (is-Nil!56 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))))))

(declare-fun e!1454 () (Set (_ BitVec 32)))

(assert (=> d!1840 (= (content!22 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))) e!1454)))

(declare-fun b!2542 () Bool)

(assert (=> b!2542 (= e!1454 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2543 () Bool)

(assert (=> b!2543 (= e!1454 (union (insert (head!227 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))))))))

(assert (= (and d!1840 c!869) b!2542))

(assert (= (and d!1840 (not c!869)) b!2543))

(declare-fun m!3805 () Bool)

(assert (=> b!2543 m!3805))

(declare-fun m!3807 () Bool)

(assert (=> b!2543 m!3807))

(assert (=> b!2410 d!1840))

(declare-fun d!1842 () Bool)

(declare-fun lt!697 () Int)

(assert (=> d!1842 (>= lt!697 0)))

(declare-fun e!1455 () Int)

(assert (=> d!1842 (= lt!697 e!1455)))

(declare-fun c!870 () Bool)

(assert (=> d!1842 (= c!870 (is-Nil!56 lt!660))))

(assert (=> d!1842 (= (size!23 lt!660) lt!697)))

(declare-fun b!2544 () Bool)

(assert (=> b!2544 (= e!1455 0)))

(declare-fun b!2545 () Bool)

(assert (=> b!2545 (= e!1455 (+ 1 (size!23 (tail!239 lt!660))))))

(assert (= (and d!1842 c!870) b!2544))

(assert (= (and d!1842 (not c!870)) b!2545))

(declare-fun m!3809 () Bool)

(assert (=> b!2545 m!3809))

(assert (=> d!1722 d!1842))

(assert (=> d!1722 d!1728))

(declare-fun d!1844 () Bool)

(declare-fun lt!698 () Int)

(assert (=> d!1844 (>= lt!698 0)))

(declare-fun e!1456 () Int)

(assert (=> d!1844 (= lt!698 e!1456)))

(declare-fun c!871 () Bool)

(assert (=> d!1844 (= c!871 (is-Nil!56 (reverse!5 (rear!55 q4!1))))))

(assert (=> d!1844 (= (size!23 (reverse!5 (rear!55 q4!1))) lt!698)))

(declare-fun b!2546 () Bool)

(assert (=> b!2546 (= e!1456 0)))

(declare-fun b!2547 () Bool)

(assert (=> b!2547 (= e!1456 (+ 1 (size!23 (tail!239 (reverse!5 (rear!55 q4!1))))))))

(assert (= (and d!1844 c!871) b!2546))

(assert (= (and d!1844 (not c!871)) b!2547))

(declare-fun m!3811 () Bool)

(assert (=> b!2547 m!3811))

(assert (=> d!1722 d!1844))

(declare-fun d!1846 () Bool)

(declare-fun e!1458 () Bool)

(assert (=> d!1846 e!1458))

(declare-fun res!920 () Bool)

(assert (=> d!1846 (=> (not res!920) (not e!1458))))

(declare-fun lt!699 () List!55)

(assert (=> d!1846 (= res!920 (= (size!23 lt!699) (+ (size!23 (tail!239 (tail!239 (front!53 q3!1)))) (size!23 (reverse!5 (rear!55 q3!1))))))))

(declare-fun e!1457 () List!55)

(assert (=> d!1846 (= lt!699 e!1457)))

(declare-fun c!872 () Bool)

(assert (=> d!1846 (= c!872 (is-Nil!56 (tail!239 (tail!239 (front!53 q3!1)))))))

(assert (=> d!1846 (= (concat!2 (tail!239 (tail!239 (front!53 q3!1))) (reverse!5 (rear!55 q3!1))) lt!699)))

(declare-fun b!2548 () Bool)

(assert (=> b!2548 (= e!1457 (reverse!5 (rear!55 q3!1)))))

(declare-fun b!2549 () Bool)

(assert (=> b!2549 (= e!1457 (Cons!55 (head!227 (tail!239 (tail!239 (front!53 q3!1)))) (concat!2 (tail!239 (tail!239 (tail!239 (front!53 q3!1)))) (reverse!5 (rear!55 q3!1)))))))

(declare-fun b!2550 () Bool)

(assert (=> b!2550 (= e!1458 (= (content!22 lt!699) (union (content!22 (tail!239 (tail!239 (front!53 q3!1)))) (content!22 (reverse!5 (rear!55 q3!1))))))))

(assert (= (and d!1846 c!872) b!2548))

(assert (= (and d!1846 (not c!872)) b!2549))

(assert (= (and d!1846 res!920) b!2550))

(declare-fun m!3813 () Bool)

(assert (=> d!1846 m!3813))

(assert (=> d!1846 m!3581))

(assert (=> d!1846 m!3407))

(assert (=> d!1846 m!3491))

(assert (=> b!2549 m!3407))

(declare-fun m!3815 () Bool)

(assert (=> b!2549 m!3815))

(declare-fun m!3817 () Bool)

(assert (=> b!2550 m!3817))

(assert (=> b!2550 m!3693))

(assert (=> b!2550 m!3407))

(assert (=> b!2550 m!3499))

(assert (=> b!2392 d!1846))

(declare-fun d!1848 () Bool)

(declare-fun lt!700 () Int)

(assert (=> d!1848 (>= lt!700 0)))

(declare-fun e!1459 () Int)

(assert (=> d!1848 (= lt!700 e!1459)))

(declare-fun c!873 () Bool)

(assert (=> d!1848 (= c!873 (is-Nil!56 (tail!239 (rear!55 q4!1))))))

(assert (=> d!1848 (= (size!23 (tail!239 (rear!55 q4!1))) lt!700)))

(declare-fun b!2551 () Bool)

(assert (=> b!2551 (= e!1459 0)))

(declare-fun b!2552 () Bool)

(assert (=> b!2552 (= e!1459 (+ 1 (size!23 (tail!239 (tail!239 (rear!55 q4!1))))))))

(assert (= (and d!1848 c!873) b!2551))

(assert (= (and d!1848 (not c!873)) b!2552))

(declare-fun m!3819 () Bool)

(assert (=> b!2552 m!3819))

(assert (=> b!2399 d!1848))

(declare-fun d!1850 () Bool)

(declare-fun lt!701 () Int)

(assert (=> d!1850 (>= lt!701 0)))

(declare-fun e!1460 () Int)

(assert (=> d!1850 (= lt!701 e!1460)))

(declare-fun c!874 () Bool)

(assert (=> d!1850 (= c!874 (is-Nil!56 lt!640))))

(assert (=> d!1850 (= (size!23 lt!640) lt!701)))

(declare-fun b!2553 () Bool)

(assert (=> b!2553 (= e!1460 0)))

(declare-fun b!2554 () Bool)

(assert (=> b!2554 (= e!1460 (+ 1 (size!23 (tail!239 lt!640))))))

(assert (= (and d!1850 c!874) b!2553))

(assert (= (and d!1850 (not c!874)) b!2554))

(declare-fun m!3821 () Bool)

(assert (=> b!2554 m!3821))

(assert (=> d!1682 d!1850))

(assert (=> d!1682 d!1706))

(declare-fun d!1852 () Bool)

(declare-fun lt!702 () Int)

(assert (=> d!1852 (>= lt!702 0)))

(declare-fun e!1461 () Int)

(assert (=> d!1852 (= lt!702 e!1461)))

(declare-fun c!875 () Bool)

(assert (=> d!1852 (= c!875 (is-Nil!56 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))))))

(assert (=> d!1852 (= (size!23 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))) lt!702)))

(declare-fun b!2555 () Bool)

(assert (=> b!2555 (= e!1461 0)))

(declare-fun b!2556 () Bool)

(assert (=> b!2556 (= e!1461 (+ 1 (size!23 (tail!239 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))))))))

(assert (= (and d!1852 c!875) b!2555))

(assert (= (and d!1852 (not c!875)) b!2556))

(declare-fun m!3823 () Bool)

(assert (=> b!2556 m!3823))

(assert (=> d!1682 d!1852))

(declare-fun d!1854 () Bool)

(declare-fun e!1463 () Bool)

(assert (=> d!1854 e!1463))

(declare-fun res!921 () Bool)

(assert (=> d!1854 (=> (not res!921) (not e!1463))))

(declare-fun lt!703 () List!55)

(assert (=> d!1854 (= res!921 (= (size!23 lt!703) (+ (size!23 (tail!239 (front!53 queue!56))) (size!23 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))))))))

(declare-fun e!1462 () List!55)

(assert (=> d!1854 (= lt!703 e!1462)))

(declare-fun c!876 () Bool)

(assert (=> d!1854 (= c!876 (is-Nil!56 (tail!239 (front!53 queue!56))))))

(assert (=> d!1854 (= (concat!2 (tail!239 (front!53 queue!56)) (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))) lt!703)))

(declare-fun b!2557 () Bool)

(assert (=> b!2557 (= e!1462 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56))))))

(declare-fun b!2558 () Bool)

(assert (=> b!2558 (= e!1462 (Cons!55 (head!227 (tail!239 (front!53 queue!56))) (concat!2 (tail!239 (tail!239 (front!53 queue!56))) (reverse!5 (Cons!55 e1!2 (rear!55 queue!56))))))))

(declare-fun b!2559 () Bool)

(assert (=> b!2559 (= e!1463 (= (content!22 lt!703) (union (content!22 (tail!239 (front!53 queue!56))) (content!22 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))))))))

(assert (= (and d!1854 c!876) b!2557))

(assert (= (and d!1854 (not c!876)) b!2558))

(assert (= (and d!1854 res!921) b!2559))

(declare-fun m!3825 () Bool)

(assert (=> d!1854 m!3825))

(assert (=> d!1854 m!3457))

(assert (=> d!1854 m!3439))

(assert (=> d!1854 m!3529))

(assert (=> b!2558 m!3439))

(declare-fun m!3827 () Bool)

(assert (=> b!2558 m!3827))

(declare-fun m!3829 () Bool)

(assert (=> b!2559 m!3829))

(assert (=> b!2559 m!3803))

(assert (=> b!2559 m!3439))

(assert (=> b!2559 m!3537))

(assert (=> b!2409 d!1854))

(declare-fun d!1856 () Bool)

(declare-fun lt!704 () Int)

(assert (=> d!1856 (>= lt!704 0)))

(declare-fun e!1464 () Int)

(assert (=> d!1856 (= lt!704 e!1464)))

(declare-fun c!877 () Bool)

(assert (=> d!1856 (= c!877 (is-Nil!56 (tail!239 (rear!55 lt!614))))))

(assert (=> d!1856 (= (size!23 (tail!239 (rear!55 lt!614))) lt!704)))

(declare-fun b!2560 () Bool)

(assert (=> b!2560 (= e!1464 0)))

(declare-fun b!2561 () Bool)

(assert (=> b!2561 (= e!1464 (+ 1 (size!23 (tail!239 (tail!239 (rear!55 lt!614))))))))

(assert (= (and d!1856 c!877) b!2560))

(assert (= (and d!1856 (not c!877)) b!2561))

(declare-fun m!3831 () Bool)

(assert (=> b!2561 m!3831))

(assert (=> b!2367 d!1856))

(declare-fun d!1858 () Bool)

(declare-fun lt!705 () Int)

(assert (=> d!1858 (>= lt!705 0)))

(declare-fun e!1465 () Int)

(assert (=> d!1858 (= lt!705 e!1465)))

(declare-fun c!878 () Bool)

(assert (=> d!1858 (= c!878 (is-Nil!56 (front!53 lt!624)))))

(assert (=> d!1858 (= (size!23 (front!53 lt!624)) lt!705)))

(declare-fun b!2562 () Bool)

(assert (=> b!2562 (= e!1465 0)))

(declare-fun b!2563 () Bool)

(assert (=> b!2563 (= e!1465 (+ 1 (size!23 (tail!239 (front!53 lt!624)))))))

(assert (= (and d!1858 c!878) b!2562))

(assert (= (and d!1858 (not c!878)) b!2563))

(declare-fun m!3833 () Bool)

(assert (=> b!2563 m!3833))

(assert (=> d!1708 d!1858))

(declare-fun d!1860 () Bool)

(declare-fun lt!706 () Int)

(assert (=> d!1860 (>= lt!706 0)))

(declare-fun e!1466 () Int)

(assert (=> d!1860 (= lt!706 e!1466)))

(declare-fun c!879 () Bool)

(assert (=> d!1860 (= c!879 (is-Nil!56 (rear!55 lt!624)))))

(assert (=> d!1860 (= (size!23 (rear!55 lt!624)) lt!706)))

(declare-fun b!2564 () Bool)

(assert (=> b!2564 (= e!1466 0)))

(declare-fun b!2565 () Bool)

(assert (=> b!2565 (= e!1466 (+ 1 (size!23 (tail!239 (rear!55 lt!624)))))))

(assert (= (and d!1860 c!879) b!2564))

(assert (= (and d!1860 (not c!879)) b!2565))

(declare-fun m!3835 () Bool)

(assert (=> b!2565 m!3835))

(assert (=> d!1708 d!1860))

(declare-fun d!1862 () Bool)

(declare-fun lt!707 () Int)

(assert (=> d!1862 (>= lt!707 0)))

(declare-fun e!1467 () Int)

(assert (=> d!1862 (= lt!707 e!1467)))

(declare-fun c!880 () Bool)

(assert (=> d!1862 (= c!880 (is-Nil!56 lt!648))))

(assert (=> d!1862 (= (size!23 lt!648) lt!707)))

(declare-fun b!2566 () Bool)

(assert (=> b!2566 (= e!1467 0)))

(declare-fun b!2567 () Bool)

(assert (=> b!2567 (= e!1467 (+ 1 (size!23 (tail!239 lt!648))))))

(assert (= (and d!1862 c!880) b!2566))

(assert (= (and d!1862 (not c!880)) b!2567))

(declare-fun m!3837 () Bool)

(assert (=> b!2567 m!3837))

(assert (=> d!1694 d!1862))

(assert (=> d!1694 d!1732))

(declare-fun d!1864 () Bool)

(declare-fun lt!708 () Int)

(assert (=> d!1864 (>= lt!708 0)))

(declare-fun e!1468 () Int)

(assert (=> d!1864 (= lt!708 e!1468)))

(declare-fun c!881 () Bool)

(assert (=> d!1864 (= c!881 (is-Nil!56 (reverse!5 (rear!55 q3!1))))))

(assert (=> d!1864 (= (size!23 (reverse!5 (rear!55 q3!1))) lt!708)))

(declare-fun b!2568 () Bool)

(assert (=> b!2568 (= e!1468 0)))

(declare-fun b!2569 () Bool)

(assert (=> b!2569 (= e!1468 (+ 1 (size!23 (tail!239 (reverse!5 (rear!55 q3!1))))))))

(assert (= (and d!1864 c!881) b!2568))

(assert (= (and d!1864 (not c!881)) b!2569))

(declare-fun m!3839 () Bool)

(assert (=> b!2569 m!3839))

(assert (=> d!1694 d!1864))

(declare-fun d!1866 () Bool)

(declare-fun e!1470 () Bool)

(assert (=> d!1866 e!1470))

(declare-fun res!922 () Bool)

(assert (=> d!1866 (=> (not res!922) (not e!1470))))

(declare-fun lt!709 () List!55)

(assert (=> d!1866 (= res!922 (= (size!23 lt!709) (+ (size!23 (reverse!5 (tail!239 (rear!55 q3!1)))) (size!23 (Cons!55 (head!227 (rear!55 q3!1)) Nil!56)))))))

(declare-fun e!1469 () List!55)

(assert (=> d!1866 (= lt!709 e!1469)))

(declare-fun c!882 () Bool)

(assert (=> d!1866 (= c!882 (is-Nil!56 (reverse!5 (tail!239 (rear!55 q3!1)))))))

(assert (=> d!1866 (= (concat!2 (reverse!5 (tail!239 (rear!55 q3!1))) (Cons!55 (head!227 (rear!55 q3!1)) Nil!56)) lt!709)))

(declare-fun b!2570 () Bool)

(assert (=> b!2570 (= e!1469 (Cons!55 (head!227 (rear!55 q3!1)) Nil!56))))

(declare-fun b!2571 () Bool)

(assert (=> b!2571 (= e!1469 (Cons!55 (head!227 (reverse!5 (tail!239 (rear!55 q3!1)))) (concat!2 (tail!239 (reverse!5 (tail!239 (rear!55 q3!1)))) (Cons!55 (head!227 (rear!55 q3!1)) Nil!56))))))

(declare-fun b!2572 () Bool)

(assert (=> b!2572 (= e!1470 (= (content!22 lt!709) (union (content!22 (reverse!5 (tail!239 (rear!55 q3!1)))) (content!22 (Cons!55 (head!227 (rear!55 q3!1)) Nil!56)))))))

(assert (= (and d!1866 c!882) b!2570))

(assert (= (and d!1866 (not c!882)) b!2571))

(assert (= (and d!1866 res!922) b!2572))

(declare-fun m!3841 () Bool)

(assert (=> d!1866 m!3841))

(assert (=> d!1866 m!3505))

(declare-fun m!3843 () Bool)

(assert (=> d!1866 m!3843))

(declare-fun m!3845 () Bool)

(assert (=> d!1866 m!3845))

(declare-fun m!3847 () Bool)

(assert (=> b!2571 m!3847))

(declare-fun m!3849 () Bool)

(assert (=> b!2572 m!3849))

(assert (=> b!2572 m!3505))

(declare-fun m!3851 () Bool)

(assert (=> b!2572 m!3851))

(declare-fun m!3853 () Bool)

(assert (=> b!2572 m!3853))

(assert (=> b!2395 d!1866))

(declare-fun d!1868 () Bool)

(declare-fun lt!710 () List!55)

(assert (=> d!1868 (= (content!22 lt!710) (content!22 (tail!239 (rear!55 q3!1))))))

(declare-fun e!1471 () List!55)

(assert (=> d!1868 (= lt!710 e!1471)))

(declare-fun c!883 () Bool)

(assert (=> d!1868 (= c!883 (is-Nil!56 (tail!239 (rear!55 q3!1))))))

(assert (=> d!1868 (= (reverse!5 (tail!239 (rear!55 q3!1))) lt!710)))

(declare-fun b!2573 () Bool)

(assert (=> b!2573 (= e!1471 Nil!56)))

(declare-fun b!2574 () Bool)

(assert (=> b!2574 (= e!1471 (concat!2 (reverse!5 (tail!239 (tail!239 (rear!55 q3!1)))) (Cons!55 (head!227 (tail!239 (rear!55 q3!1))) Nil!56)))))

(assert (= (and d!1868 c!883) b!2573))

(assert (= (and d!1868 (not c!883)) b!2574))

(declare-fun m!3855 () Bool)

(assert (=> d!1868 m!3855))

(assert (=> d!1868 m!3637))

(declare-fun m!3857 () Bool)

(assert (=> b!2574 m!3857))

(assert (=> b!2574 m!3857))

(declare-fun m!3859 () Bool)

(assert (=> b!2574 m!3859))

(assert (=> b!2395 d!1868))

(declare-fun d!1870 () Bool)

(declare-fun lt!711 () Int)

(assert (=> d!1870 (>= lt!711 0)))

(declare-fun e!1472 () Int)

(assert (=> d!1870 (= lt!711 e!1472)))

(declare-fun c!884 () Bool)

(assert (=> d!1870 (= c!884 (is-Nil!56 (tail!239 (rear!55 lt!615))))))

(assert (=> d!1870 (= (size!23 (tail!239 (rear!55 lt!615))) lt!711)))

(declare-fun b!2575 () Bool)

(assert (=> b!2575 (= e!1472 0)))

(declare-fun b!2576 () Bool)

(assert (=> b!2576 (= e!1472 (+ 1 (size!23 (tail!239 (tail!239 (rear!55 lt!615))))))))

(assert (= (and d!1870 c!884) b!2575))

(assert (= (and d!1870 (not c!884)) b!2576))

(declare-fun m!3861 () Bool)

(assert (=> b!2576 m!3861))

(assert (=> b!2355 d!1870))

(declare-fun d!1872 () Bool)

(declare-fun lt!712 () Int)

(assert (=> d!1872 (>= lt!712 0)))

(declare-fun e!1473 () Int)

(assert (=> d!1872 (= lt!712 e!1473)))

(declare-fun c!885 () Bool)

(assert (=> d!1872 (= c!885 (is-Nil!56 (tail!239 (front!53 lt!620))))))

(assert (=> d!1872 (= (size!23 (tail!239 (front!53 lt!620))) lt!712)))

(declare-fun b!2577 () Bool)

(assert (=> b!2577 (= e!1473 0)))

(declare-fun b!2578 () Bool)

(assert (=> b!2578 (= e!1473 (+ 1 (size!23 (tail!239 (tail!239 (front!53 lt!620))))))))

(assert (= (and d!1872 c!885) b!2577))

(assert (= (and d!1872 (not c!885)) b!2578))

(declare-fun m!3863 () Bool)

(assert (=> b!2578 m!3863))

(assert (=> b!2388 d!1872))

(declare-fun d!1874 () Bool)

(declare-fun c!886 () Bool)

(assert (=> d!1874 (= c!886 (is-Nil!56 lt!643))))

(declare-fun e!1474 () (Set (_ BitVec 32)))

(assert (=> d!1874 (= (content!22 lt!643) e!1474)))

(declare-fun b!2579 () Bool)

(assert (=> b!2579 (= e!1474 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2580 () Bool)

(assert (=> b!2580 (= e!1474 (union (insert (head!227 lt!643) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!643))))))

(assert (= (and d!1874 c!886) b!2579))

(assert (= (and d!1874 (not c!886)) b!2580))

(declare-fun m!3865 () Bool)

(assert (=> b!2580 m!3865))

(declare-fun m!3867 () Bool)

(assert (=> b!2580 m!3867))

(assert (=> d!1684 d!1874))

(declare-fun d!1876 () Bool)

(declare-fun c!887 () Bool)

(assert (=> d!1876 (= c!887 (is-Nil!56 (Cons!55 e2!3 (rear!55 q1!1))))))

(declare-fun e!1475 () (Set (_ BitVec 32)))

(assert (=> d!1876 (= (content!22 (Cons!55 e2!3 (rear!55 q1!1))) e!1475)))

(declare-fun b!2581 () Bool)

(assert (=> b!2581 (= e!1475 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2582 () Bool)

(assert (=> b!2582 (= e!1475 (union (insert (head!227 (Cons!55 e2!3 (rear!55 q1!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))))))

(assert (= (and d!1876 c!887) b!2581))

(assert (= (and d!1876 (not c!887)) b!2582))

(declare-fun m!3869 () Bool)

(assert (=> b!2582 m!3869))

(assert (=> b!2582 m!3765))

(assert (=> d!1684 d!1876))

(declare-fun d!1878 () Bool)

(declare-fun lt!713 () Int)

(assert (=> d!1878 (>= lt!713 0)))

(declare-fun e!1476 () Int)

(assert (=> d!1878 (= lt!713 e!1476)))

(declare-fun c!888 () Bool)

(assert (=> d!1878 (= c!888 (is-Nil!56 (tail!239 (front!53 lt!614))))))

(assert (=> d!1878 (= (size!23 (tail!239 (front!53 lt!614))) lt!713)))

(declare-fun b!2583 () Bool)

(assert (=> b!2583 (= e!1476 0)))

(declare-fun b!2584 () Bool)

(assert (=> b!2584 (= e!1476 (+ 1 (size!23 (tail!239 (tail!239 (front!53 lt!614))))))))

(assert (= (and d!1878 c!888) b!2583))

(assert (= (and d!1878 (not c!888)) b!2584))

(declare-fun m!3871 () Bool)

(assert (=> b!2584 m!3871))

(assert (=> b!2365 d!1878))

(declare-fun d!1880 () Bool)

(declare-fun lt!714 () Int)

(assert (=> d!1880 (>= lt!714 0)))

(declare-fun e!1477 () Int)

(assert (=> d!1880 (= lt!714 e!1477)))

(declare-fun c!889 () Bool)

(assert (=> d!1880 (= c!889 (is-Nil!56 (tail!239 (front!53 lt!619))))))

(assert (=> d!1880 (= (size!23 (tail!239 (front!53 lt!619))) lt!714)))

(declare-fun b!2585 () Bool)

(assert (=> b!2585 (= e!1477 0)))

(declare-fun b!2586 () Bool)

(assert (=> b!2586 (= e!1477 (+ 1 (size!23 (tail!239 (tail!239 (front!53 lt!619))))))))

(assert (= (and d!1880 c!889) b!2585))

(assert (= (and d!1880 (not c!889)) b!2586))

(declare-fun m!3873 () Bool)

(assert (=> b!2586 m!3873))

(assert (=> b!2414 d!1880))

(declare-fun d!1882 () Bool)

(declare-fun e!1479 () Bool)

(assert (=> d!1882 e!1479))

(declare-fun res!923 () Bool)

(assert (=> d!1882 (=> (not res!923) (not e!1479))))

(declare-fun lt!715 () List!55)

(assert (=> d!1882 (= res!923 (= (size!23 lt!715) (+ (size!23 (tail!239 (front!53 q1!1))) (size!23 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))))))))

(declare-fun e!1478 () List!55)

(assert (=> d!1882 (= lt!715 e!1478)))

(declare-fun c!890 () Bool)

(assert (=> d!1882 (= c!890 (is-Nil!56 (tail!239 (front!53 q1!1))))))

(assert (=> d!1882 (= (concat!2 (tail!239 (front!53 q1!1)) (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))) lt!715)))

(declare-fun b!2587 () Bool)

(assert (=> b!2587 (= e!1478 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1))))))

(declare-fun b!2588 () Bool)

(assert (=> b!2588 (= e!1478 (Cons!55 (head!227 (tail!239 (front!53 q1!1))) (concat!2 (tail!239 (tail!239 (front!53 q1!1))) (reverse!5 (Cons!55 e2!3 (rear!55 q1!1))))))))

(declare-fun b!2589 () Bool)

(assert (=> b!2589 (= e!1479 (= (content!22 lt!715) (union (content!22 (tail!239 (front!53 q1!1))) (content!22 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))))))))

(assert (= (and d!1882 c!890) b!2587))

(assert (= (and d!1882 (not c!890)) b!2588))

(assert (= (and d!1882 res!923) b!2589))

(declare-fun m!3875 () Bool)

(assert (=> d!1882 m!3875))

(assert (=> d!1882 m!3517))

(assert (=> d!1882 m!3379))

(assert (=> d!1882 m!3465))

(assert (=> b!2588 m!3379))

(declare-fun m!3877 () Bool)

(assert (=> b!2588 m!3877))

(declare-fun m!3879 () Bool)

(assert (=> b!2589 m!3879))

(assert (=> b!2589 m!3669))

(assert (=> b!2589 m!3379))

(assert (=> b!2589 m!3473))

(assert (=> b!2375 d!1882))

(declare-fun d!1884 () Bool)

(declare-fun lt!716 () Int)

(assert (=> d!1884 (>= lt!716 0)))

(declare-fun e!1480 () Int)

(assert (=> d!1884 (= lt!716 e!1480)))

(declare-fun c!891 () Bool)

(assert (=> d!1884 (= c!891 (is-Nil!56 (tail!239 (rear!55 q3!1))))))

(assert (=> d!1884 (= (size!23 (tail!239 (rear!55 q3!1))) lt!716)))

(declare-fun b!2590 () Bool)

(assert (=> b!2590 (= e!1480 0)))

(declare-fun b!2591 () Bool)

(assert (=> b!2591 (= e!1480 (+ 1 (size!23 (tail!239 (tail!239 (rear!55 q3!1))))))))

(assert (= (and d!1884 c!891) b!2590))

(assert (= (and d!1884 (not c!891)) b!2591))

(declare-fun m!3881 () Bool)

(assert (=> b!2591 m!3881))

(assert (=> b!2386 d!1884))

(declare-fun d!1886 () Bool)

(declare-fun lt!717 () Int)

(assert (=> d!1886 (>= lt!717 0)))

(declare-fun e!1481 () Int)

(assert (=> d!1886 (= lt!717 e!1481)))

(declare-fun c!892 () Bool)

(assert (=> d!1886 (= c!892 (is-Nil!56 (tail!239 (tail!239 (front!53 q4!1)))))))

(assert (=> d!1886 (= (size!23 (tail!239 (tail!239 (front!53 q4!1)))) lt!717)))

(declare-fun b!2592 () Bool)

(assert (=> b!2592 (= e!1481 0)))

(declare-fun b!2593 () Bool)

(assert (=> b!2593 (= e!1481 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (front!53 q4!1)))))))))

(assert (= (and d!1886 c!892) b!2592))

(assert (= (and d!1886 (not c!892)) b!2593))

(declare-fun m!3883 () Bool)

(assert (=> b!2593 m!3883))

(assert (=> b!2423 d!1886))

(assert (=> b!2384 d!1732))

(declare-fun d!1888 () Bool)

(declare-fun lt!718 () Int)

(assert (=> d!1888 (>= lt!718 0)))

(declare-fun e!1482 () Int)

(assert (=> d!1888 (= lt!718 e!1482)))

(declare-fun c!893 () Bool)

(assert (=> d!1888 (= c!893 (is-Nil!56 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))))

(assert (=> d!1888 (= (size!23 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))) lt!718)))

(declare-fun b!2594 () Bool)

(assert (=> b!2594 (= e!1482 0)))

(declare-fun b!2595 () Bool)

(assert (=> b!2595 (= e!1482 (+ 1 (size!23 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))))))

(assert (= (and d!1888 c!893) b!2594))

(assert (= (and d!1888 (not c!893)) b!2595))

(declare-fun m!3885 () Bool)

(assert (=> b!2595 m!3885))

(assert (=> b!2401 d!1888))

(declare-fun d!1890 () Bool)

(declare-fun c!894 () Bool)

(assert (=> d!1890 (= c!894 (is-Nil!56 lt!661))))

(declare-fun e!1483 () (Set (_ BitVec 32)))

(assert (=> d!1890 (= (content!22 lt!661) e!1483)))

(declare-fun b!2596 () Bool)

(assert (=> b!2596 (= e!1483 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2597 () Bool)

(assert (=> b!2597 (= e!1483 (union (insert (head!227 lt!661) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!661))))))

(assert (= (and d!1890 c!894) b!2596))

(assert (= (and d!1890 (not c!894)) b!2597))

(declare-fun m!3887 () Bool)

(assert (=> b!2597 m!3887))

(declare-fun m!3889 () Bool)

(assert (=> b!2597 m!3889))

(assert (=> d!1724 d!1890))

(declare-fun d!1892 () Bool)

(declare-fun c!895 () Bool)

(assert (=> d!1892 (= c!895 (is-Nil!56 (rear!55 q4!1)))))

(declare-fun e!1484 () (Set (_ BitVec 32)))

(assert (=> d!1892 (= (content!22 (rear!55 q4!1)) e!1484)))

(declare-fun b!2598 () Bool)

(assert (=> b!2598 (= e!1484 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2599 () Bool)

(assert (=> b!2599 (= e!1484 (union (insert (head!227 (rear!55 q4!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (rear!55 q4!1)))))))

(assert (= (and d!1892 c!895) b!2598))

(assert (= (and d!1892 (not c!895)) b!2599))

(declare-fun m!3891 () Bool)

(assert (=> b!2599 m!3891))

(assert (=> b!2599 m!3787))

(assert (=> d!1724 d!1892))

(declare-fun d!1894 () Bool)

(declare-fun e!1486 () Bool)

(assert (=> d!1894 e!1486))

(declare-fun res!924 () Bool)

(assert (=> d!1894 (=> (not res!924) (not e!1486))))

(declare-fun lt!719 () List!55)

(assert (=> d!1894 (= res!924 (= (size!23 lt!719) (+ (size!23 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))) (size!23 (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56)))))))

(declare-fun e!1485 () List!55)

(assert (=> d!1894 (= lt!719 e!1485)))

(declare-fun c!896 () Bool)

(assert (=> d!1894 (= c!896 (is-Nil!56 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))))))

(assert (=> d!1894 (= (concat!2 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))) (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56)) lt!719)))

(declare-fun b!2600 () Bool)

(assert (=> b!2600 (= e!1485 (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56))))

(declare-fun b!2601 () Bool)

(assert (=> b!2601 (= e!1485 (Cons!55 (head!227 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))) (concat!2 (tail!239 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))) (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56))))))

(declare-fun b!2602 () Bool)

(assert (=> b!2602 (= e!1486 (= (content!22 lt!719) (union (content!22 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))) (content!22 (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56)))))))

(assert (= (and d!1894 c!896) b!2600))

(assert (= (and d!1894 (not c!896)) b!2601))

(assert (= (and d!1894 res!924) b!2602))

(declare-fun m!3893 () Bool)

(assert (=> d!1894 m!3893))

(assert (=> d!1894 m!3599))

(declare-fun m!3895 () Bool)

(assert (=> d!1894 m!3895))

(declare-fun m!3897 () Bool)

(assert (=> d!1894 m!3897))

(declare-fun m!3899 () Bool)

(assert (=> b!2601 m!3899))

(declare-fun m!3901 () Bool)

(assert (=> b!2602 m!3901))

(assert (=> b!2602 m!3599))

(declare-fun m!3903 () Bool)

(assert (=> b!2602 m!3903))

(declare-fun m!3905 () Bool)

(assert (=> b!2602 m!3905))

(assert (=> b!2430 d!1894))

(declare-fun d!1896 () Bool)

(declare-fun lt!720 () List!55)

(assert (=> d!1896 (= (content!22 lt!720) (content!22 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))))

(declare-fun e!1487 () List!55)

(assert (=> d!1896 (= lt!720 e!1487)))

(declare-fun c!897 () Bool)

(assert (=> d!1896 (= c!897 (is-Nil!56 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))))

(assert (=> d!1896 (= (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))) lt!720)))

(declare-fun b!2603 () Bool)

(assert (=> b!2603 (= e!1487 Nil!56)))

(declare-fun b!2604 () Bool)

(assert (=> b!2604 (= e!1487 (concat!2 (reverse!5 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))) (Cons!55 (head!227 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))) Nil!56)))))

(assert (= (and d!1896 c!897) b!2603))

(assert (= (and d!1896 (not c!897)) b!2604))

(declare-fun m!3907 () Bool)

(assert (=> d!1896 m!3907))

(assert (=> d!1896 m!3745))

(declare-fun m!3909 () Bool)

(assert (=> b!2604 m!3909))

(assert (=> b!2604 m!3909))

(declare-fun m!3911 () Bool)

(assert (=> b!2604 m!3911))

(assert (=> b!2430 d!1896))

(push 1)

(assert (not b!2549))

(assert (not b!2597))

(assert (not d!1866))

(assert (not d!1896))

(assert (not b!2506))

(assert (not b!2476))

(assert (not b!2530))

(assert (not d!1746))

(assert (not b!2442))

(assert (not b!2574))

(assert (not b!2445))

(assert (not d!1846))

(assert (not b!2571))

(assert (not b!2480))

(assert (not b!2509))

(assert (not b!2547))

(assert (not b!2447))

(assert (not b!2488))

(assert (not d!1828))

(assert (not b!2559))

(assert (not b!2531))

(assert (not b!2528))

(assert (not b!2461))

(assert (not b!2602))

(assert (not b!2453))

(assert (not b!2436))

(assert (not b!2496))

(assert (not b!2561))

(assert (not d!1810))

(assert (not d!1854))

(assert (not b!2593))

(assert (not b!2539))

(assert (not b!2604))

(assert (not b!2521))

(assert (not b!2552))

(assert (not b!2466))

(assert (not b!2537))

(assert (not b!2533))

(assert (not b!2580))

(assert (not b!2525))

(assert (not b!2550))

(assert (not b!2482))

(assert (not b!2541))

(assert (not d!1868))

(assert (not d!1808))

(assert (not b!2462))

(assert (not b!2572))

(assert (not b!2490))

(assert (not b!2486))

(assert (not b!2459))

(assert (not b!2494))

(assert (not b!2554))

(assert (not b!2478))

(assert (not b!2472))

(assert (not b!2500))

(assert (not b!2498))

(assert (not b!2502))

(assert (not b!2578))

(assert (not b!2535))

(assert (not b!2599))

(assert (not b!2545))

(assert (not b!2444))

(assert (not b!2523))

(assert (not d!1830))

(assert (not b!2563))

(assert (not b!2569))

(assert (not b!2591))

(assert (not b!2464))

(assert (not d!1824))

(assert (not b!2595))

(assert (not b!2504))

(assert (not b!2589))

(assert (not b!2470))

(assert (not b!2451))

(assert (not b!2474))

(assert (not d!1826))

(assert (not b!2438))

(assert (not b!2588))

(assert (not b!2565))

(assert (not b!2508))

(assert (not b!2457))

(assert (not b!2558))

(assert (not b!2511))

(assert (not b!2526))

(assert (not b!2582))

(assert (not b!2519))

(assert (not b!2517))

(assert (not b!2449))

(assert (not b!2601))

(assert (not d!1762))

(assert (not b!2584))

(assert (not b!2556))

(assert (not b!2484))

(assert (not d!1882))

(assert (not b!2515))

(assert (not b!2492))

(assert (not b!2455))

(assert (not b!2440))

(assert (not b!2543))

(assert (not b!2468))

(assert (not b!2513))

(assert (not d!1894))

(assert (not b!2586))

(assert (not b!2576))

(assert (not b!2567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1898 () Bool)

(declare-fun c!898 () Bool)

(assert (=> d!1898 (= c!898 (is-Nil!56 (tail!239 (reverse!5 (rear!55 q4!1)))))))

(declare-fun e!1488 () (Set (_ BitVec 32)))

(assert (=> d!1898 (= (content!22 (tail!239 (reverse!5 (rear!55 q4!1)))) e!1488)))

(declare-fun b!2605 () Bool)

(assert (=> b!2605 (= e!1488 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2606 () Bool)

(assert (=> b!2606 (= e!1488 (union (insert (head!227 (tail!239 (reverse!5 (rear!55 q4!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (reverse!5 (rear!55 q4!1)))))))))

(assert (= (and d!1898 c!898) b!2605))

(assert (= (and d!1898 (not c!898)) b!2606))

(declare-fun m!3913 () Bool)

(assert (=> b!2606 m!3913))

(declare-fun m!3915 () Bool)

(assert (=> b!2606 m!3915))

(assert (=> b!2440 d!1898))

(declare-fun d!1900 () Bool)

(declare-fun lt!721 () Int)

(assert (=> d!1900 (>= lt!721 0)))

(declare-fun e!1489 () Int)

(assert (=> d!1900 (= lt!721 e!1489)))

(declare-fun c!899 () Bool)

(assert (=> d!1900 (= c!899 (is-Nil!56 (tail!239 (front!53 lt!625))))))

(assert (=> d!1900 (= (size!23 (tail!239 (front!53 lt!625))) lt!721)))

(declare-fun b!2607 () Bool)

(assert (=> b!2607 (= e!1489 0)))

(declare-fun b!2608 () Bool)

(assert (=> b!2608 (= e!1489 (+ 1 (size!23 (tail!239 (tail!239 (front!53 lt!625))))))))

(assert (= (and d!1900 c!899) b!2607))

(assert (= (and d!1900 (not c!899)) b!2608))

(declare-fun m!3917 () Bool)

(assert (=> b!2608 m!3917))

(assert (=> b!2535 d!1900))

(declare-fun d!1902 () Bool)

(declare-fun lt!722 () Int)

(assert (=> d!1902 (>= lt!722 0)))

(declare-fun e!1490 () Int)

(assert (=> d!1902 (= lt!722 e!1490)))

(declare-fun c!900 () Bool)

(assert (=> d!1902 (= c!900 (is-Nil!56 lt!693))))

(assert (=> d!1902 (= (size!23 lt!693) lt!722)))

(declare-fun b!2609 () Bool)

(assert (=> b!2609 (= e!1490 0)))

(declare-fun b!2610 () Bool)

(assert (=> b!2610 (= e!1490 (+ 1 (size!23 (tail!239 lt!693))))))

(assert (= (and d!1902 c!900) b!2609))

(assert (= (and d!1902 (not c!900)) b!2610))

(declare-fun m!3919 () Bool)

(assert (=> b!2610 m!3919))

(assert (=> d!1828 d!1902))

(declare-fun d!1904 () Bool)

(declare-fun lt!723 () Int)

(assert (=> d!1904 (>= lt!723 0)))

(declare-fun e!1491 () Int)

(assert (=> d!1904 (= lt!723 e!1491)))

(declare-fun c!901 () Bool)

(assert (=> d!1904 (= c!901 (is-Nil!56 (reverse!5 (tail!239 (rear!55 q4!1)))))))

(assert (=> d!1904 (= (size!23 (reverse!5 (tail!239 (rear!55 q4!1)))) lt!723)))

(declare-fun b!2611 () Bool)

(assert (=> b!2611 (= e!1491 0)))

(declare-fun b!2612 () Bool)

(assert (=> b!2612 (= e!1491 (+ 1 (size!23 (tail!239 (reverse!5 (tail!239 (rear!55 q4!1)))))))))

(assert (= (and d!1904 c!901) b!2611))

(assert (= (and d!1904 (not c!901)) b!2612))

(declare-fun m!3921 () Bool)

(assert (=> b!2612 m!3921))

(assert (=> d!1828 d!1904))

(declare-fun d!1906 () Bool)

(declare-fun lt!724 () Int)

(assert (=> d!1906 (>= lt!724 0)))

(declare-fun e!1492 () Int)

(assert (=> d!1906 (= lt!724 e!1492)))

(declare-fun c!902 () Bool)

(assert (=> d!1906 (= c!902 (is-Nil!56 (Cons!55 (head!227 (rear!55 q4!1)) Nil!56)))))

(assert (=> d!1906 (= (size!23 (Cons!55 (head!227 (rear!55 q4!1)) Nil!56)) lt!724)))

(declare-fun b!2613 () Bool)

(assert (=> b!2613 (= e!1492 0)))

(declare-fun b!2614 () Bool)

(assert (=> b!2614 (= e!1492 (+ 1 (size!23 (tail!239 (Cons!55 (head!227 (rear!55 q4!1)) Nil!56)))))))

(assert (= (and d!1906 c!902) b!2613))

(assert (= (and d!1906 (not c!902)) b!2614))

(declare-fun m!3923 () Bool)

(assert (=> b!2614 m!3923))

(assert (=> d!1828 d!1906))

(declare-fun d!1908 () Bool)

(declare-fun c!903 () Bool)

(assert (=> d!1908 (= c!903 (is-Nil!56 lt!720))))

(declare-fun e!1493 () (Set (_ BitVec 32)))

(assert (=> d!1908 (= (content!22 lt!720) e!1493)))

(declare-fun b!2615 () Bool)

(assert (=> b!2615 (= e!1493 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2616 () Bool)

(assert (=> b!2616 (= e!1493 (union (insert (head!227 lt!720) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!720))))))

(assert (= (and d!1908 c!903) b!2615))

(assert (= (and d!1908 (not c!903)) b!2616))

(declare-fun m!3925 () Bool)

(assert (=> b!2616 m!3925))

(declare-fun m!3927 () Bool)

(assert (=> b!2616 m!3927))

(assert (=> d!1896 d!1908))

(declare-fun d!1910 () Bool)

(declare-fun c!904 () Bool)

(assert (=> d!1910 (= c!904 (is-Nil!56 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))))

(declare-fun e!1494 () (Set (_ BitVec 32)))

(assert (=> d!1910 (= (content!22 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))) e!1494)))

(declare-fun b!2617 () Bool)

(assert (=> b!2617 (= e!1494 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2618 () Bool)

(assert (=> b!2618 (= e!1494 (union (insert (head!227 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))))))

(assert (= (and d!1910 c!904) b!2617))

(assert (= (and d!1910 (not c!904)) b!2618))

(declare-fun m!3929 () Bool)

(assert (=> b!2618 m!3929))

(declare-fun m!3931 () Bool)

(assert (=> b!2618 m!3931))

(assert (=> d!1896 d!1910))

(declare-fun d!1912 () Bool)

(declare-fun lt!725 () Int)

(assert (=> d!1912 (>= lt!725 0)))

(declare-fun e!1495 () Int)

(assert (=> d!1912 (= lt!725 e!1495)))

(declare-fun c!905 () Bool)

(assert (=> d!1912 (= c!905 (is-Nil!56 (tail!239 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56))))))))

(assert (=> d!1912 (= (size!23 (tail!239 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56))))) lt!725)))

(declare-fun b!2619 () Bool)

(assert (=> b!2619 (= e!1495 0)))

(declare-fun b!2620 () Bool)

(assert (=> b!2620 (= e!1495 (+ 1 (size!23 (tail!239 (tail!239 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56))))))))))

(assert (= (and d!1912 c!905) b!2619))

(assert (= (and d!1912 (not c!905)) b!2620))

(declare-fun m!3933 () Bool)

(assert (=> b!2620 m!3933))

(assert (=> b!2451 d!1912))

(declare-fun d!1914 () Bool)

(declare-fun lt!726 () Int)

(assert (=> d!1914 (>= lt!726 0)))

(declare-fun e!1496 () Int)

(assert (=> d!1914 (= lt!726 e!1496)))

(declare-fun c!906 () Bool)

(assert (=> d!1914 (= c!906 (is-Nil!56 (tail!239 (tail!239 (front!53 lt!620)))))))

(assert (=> d!1914 (= (size!23 (tail!239 (tail!239 (front!53 lt!620)))) lt!726)))

(declare-fun b!2621 () Bool)

(assert (=> b!2621 (= e!1496 0)))

(declare-fun b!2622 () Bool)

(assert (=> b!2622 (= e!1496 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (front!53 lt!620)))))))))

(assert (= (and d!1914 c!906) b!2621))

(assert (= (and d!1914 (not c!906)) b!2622))

(declare-fun m!3935 () Bool)

(assert (=> b!2622 m!3935))

(assert (=> b!2578 d!1914))

(declare-fun d!1916 () Bool)

(declare-fun e!1498 () Bool)

(assert (=> d!1916 e!1498))

(declare-fun res!925 () Bool)

(assert (=> d!1916 (=> (not res!925) (not e!1498))))

(declare-fun lt!727 () List!55)

(assert (=> d!1916 (= res!925 (= (size!23 lt!727) (+ (size!23 (tail!239 (reverse!5 (tail!239 (rear!55 q3!1))))) (size!23 (Cons!55 (head!227 (rear!55 q3!1)) Nil!56)))))))

(declare-fun e!1497 () List!55)

(assert (=> d!1916 (= lt!727 e!1497)))

(declare-fun c!907 () Bool)

(assert (=> d!1916 (= c!907 (is-Nil!56 (tail!239 (reverse!5 (tail!239 (rear!55 q3!1))))))))

(assert (=> d!1916 (= (concat!2 (tail!239 (reverse!5 (tail!239 (rear!55 q3!1)))) (Cons!55 (head!227 (rear!55 q3!1)) Nil!56)) lt!727)))

(declare-fun b!2623 () Bool)

(assert (=> b!2623 (= e!1497 (Cons!55 (head!227 (rear!55 q3!1)) Nil!56))))

(declare-fun b!2624 () Bool)

(assert (=> b!2624 (= e!1497 (Cons!55 (head!227 (tail!239 (reverse!5 (tail!239 (rear!55 q3!1))))) (concat!2 (tail!239 (tail!239 (reverse!5 (tail!239 (rear!55 q3!1))))) (Cons!55 (head!227 (rear!55 q3!1)) Nil!56))))))

(declare-fun b!2625 () Bool)

(assert (=> b!2625 (= e!1498 (= (content!22 lt!727) (union (content!22 (tail!239 (reverse!5 (tail!239 (rear!55 q3!1))))) (content!22 (Cons!55 (head!227 (rear!55 q3!1)) Nil!56)))))))

(assert (= (and d!1916 c!907) b!2623))

(assert (= (and d!1916 (not c!907)) b!2624))

(assert (= (and d!1916 res!925) b!2625))

(declare-fun m!3937 () Bool)

(assert (=> d!1916 m!3937))

(declare-fun m!3939 () Bool)

(assert (=> d!1916 m!3939))

(assert (=> d!1916 m!3845))

(declare-fun m!3941 () Bool)

(assert (=> b!2624 m!3941))

(declare-fun m!3943 () Bool)

(assert (=> b!2625 m!3943))

(declare-fun m!3945 () Bool)

(assert (=> b!2625 m!3945))

(assert (=> b!2625 m!3853))

(assert (=> b!2571 d!1916))

(declare-fun d!1918 () Bool)

(declare-fun lt!728 () Int)

(assert (=> d!1918 (>= lt!728 0)))

(declare-fun e!1499 () Int)

(assert (=> d!1918 (= lt!728 e!1499)))

(declare-fun c!908 () Bool)

(assert (=> d!1918 (= c!908 (is-Nil!56 (tail!239 lt!664)))))

(assert (=> d!1918 (= (size!23 (tail!239 lt!664)) lt!728)))

(declare-fun b!2626 () Bool)

(assert (=> b!2626 (= e!1499 0)))

(declare-fun b!2627 () Bool)

(assert (=> b!2627 (= e!1499 (+ 1 (size!23 (tail!239 (tail!239 lt!664)))))))

(assert (= (and d!1918 c!908) b!2626))

(assert (= (and d!1918 (not c!908)) b!2627))

(declare-fun m!3947 () Bool)

(assert (=> b!2627 m!3947))

(assert (=> b!2500 d!1918))

(declare-fun d!1920 () Bool)

(declare-fun lt!729 () Int)

(assert (=> d!1920 (>= lt!729 0)))

(declare-fun e!1500 () Int)

(assert (=> d!1920 (= lt!729 e!1500)))

(declare-fun c!909 () Bool)

(assert (=> d!1920 (= c!909 (is-Nil!56 (tail!239 (tail!239 (rear!55 lt!620)))))))

(assert (=> d!1920 (= (size!23 (tail!239 (tail!239 (rear!55 lt!620)))) lt!729)))

(declare-fun b!2628 () Bool)

(assert (=> b!2628 (= e!1500 0)))

(declare-fun b!2629 () Bool)

(assert (=> b!2629 (= e!1500 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (rear!55 lt!620)))))))))

(assert (= (and d!1920 c!909) b!2628))

(assert (= (and d!1920 (not c!909)) b!2629))

(declare-fun m!3949 () Bool)

(assert (=> b!2629 m!3949))

(assert (=> b!2513 d!1920))

(declare-fun d!1922 () Bool)

(declare-fun lt!730 () Int)

(assert (=> d!1922 (>= lt!730 0)))

(declare-fun e!1501 () Int)

(assert (=> d!1922 (= lt!730 e!1501)))

(declare-fun c!910 () Bool)

(assert (=> d!1922 (= c!910 (is-Nil!56 (tail!239 lt!660)))))

(assert (=> d!1922 (= (size!23 (tail!239 lt!660)) lt!730)))

(declare-fun b!2630 () Bool)

(assert (=> b!2630 (= e!1501 0)))

(declare-fun b!2631 () Bool)

(assert (=> b!2631 (= e!1501 (+ 1 (size!23 (tail!239 (tail!239 lt!660)))))))

(assert (= (and d!1922 c!910) b!2630))

(assert (= (and d!1922 (not c!910)) b!2631))

(declare-fun m!3951 () Bool)

(assert (=> b!2631 m!3951))

(assert (=> b!2545 d!1922))

(declare-fun d!1924 () Bool)

(declare-fun e!1503 () Bool)

(assert (=> d!1924 e!1503))

(declare-fun res!926 () Bool)

(assert (=> d!1924 (=> (not res!926) (not e!1503))))

(declare-fun lt!731 () List!55)

(assert (=> d!1924 (= res!926 (= (size!23 lt!731) (+ (size!23 (tail!239 (tail!239 (front!53 q1!1)))) (size!23 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))))))))

(declare-fun e!1502 () List!55)

(assert (=> d!1924 (= lt!731 e!1502)))

(declare-fun c!911 () Bool)

(assert (=> d!1924 (= c!911 (is-Nil!56 (tail!239 (tail!239 (front!53 q1!1)))))))

(assert (=> d!1924 (= (concat!2 (tail!239 (tail!239 (front!53 q1!1))) (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))) lt!731)))

(declare-fun b!2632 () Bool)

(assert (=> b!2632 (= e!1502 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1))))))

(declare-fun b!2633 () Bool)

(assert (=> b!2633 (= e!1502 (Cons!55 (head!227 (tail!239 (tail!239 (front!53 q1!1)))) (concat!2 (tail!239 (tail!239 (tail!239 (front!53 q1!1)))) (reverse!5 (Cons!55 e2!3 (rear!55 q1!1))))))))

(declare-fun b!2634 () Bool)

(assert (=> b!2634 (= e!1503 (= (content!22 lt!731) (union (content!22 (tail!239 (tail!239 (front!53 q1!1)))) (content!22 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1)))))))))

(assert (= (and d!1924 c!911) b!2632))

(assert (= (and d!1924 (not c!911)) b!2633))

(assert (= (and d!1924 res!926) b!2634))

(declare-fun m!3953 () Bool)

(assert (=> d!1924 m!3953))

(assert (=> d!1924 m!3747))

(assert (=> d!1924 m!3379))

(assert (=> d!1924 m!3465))

(assert (=> b!2633 m!3379))

(declare-fun m!3955 () Bool)

(assert (=> b!2633 m!3955))

(declare-fun m!3957 () Bool)

(assert (=> b!2634 m!3957))

(declare-fun m!3959 () Bool)

(assert (=> b!2634 m!3959))

(assert (=> b!2634 m!3379))

(assert (=> b!2634 m!3473))

(assert (=> b!2588 d!1924))

(declare-fun d!1926 () Bool)

(declare-fun lt!732 () Int)

(assert (=> d!1926 (>= lt!732 0)))

(declare-fun e!1504 () Int)

(assert (=> d!1926 (= lt!732 e!1504)))

(declare-fun c!912 () Bool)

(assert (=> d!1926 (= c!912 (is-Nil!56 (tail!239 (tail!239 (rear!55 q4!1)))))))

(assert (=> d!1926 (= (size!23 (tail!239 (tail!239 (rear!55 q4!1)))) lt!732)))

(declare-fun b!2635 () Bool)

(assert (=> b!2635 (= e!1504 0)))

(declare-fun b!2636 () Bool)

(assert (=> b!2636 (= e!1504 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (rear!55 q4!1)))))))))

(assert (= (and d!1926 c!912) b!2635))

(assert (= (and d!1926 (not c!912)) b!2636))

(declare-fun m!3961 () Bool)

(assert (=> b!2636 m!3961))

(assert (=> b!2552 d!1926))

(declare-fun d!1928 () Bool)

(declare-fun lt!733 () Int)

(assert (=> d!1928 (>= lt!733 0)))

(declare-fun e!1505 () Int)

(assert (=> d!1928 (= lt!733 e!1505)))

(declare-fun c!913 () Bool)

(assert (=> d!1928 (= c!913 (is-Nil!56 (tail!239 lt!656)))))

(assert (=> d!1928 (= (size!23 (tail!239 lt!656)) lt!733)))

(declare-fun b!2637 () Bool)

(assert (=> b!2637 (= e!1505 0)))

(declare-fun b!2638 () Bool)

(assert (=> b!2638 (= e!1505 (+ 1 (size!23 (tail!239 (tail!239 lt!656)))))))

(assert (= (and d!1928 c!913) b!2637))

(assert (= (and d!1928 (not c!913)) b!2638))

(declare-fun m!3963 () Bool)

(assert (=> b!2638 m!3963))

(assert (=> b!2449 d!1928))

(declare-fun d!1930 () Bool)

(declare-fun lt!734 () Int)

(assert (=> d!1930 (>= lt!734 0)))

(declare-fun e!1506 () Int)

(assert (=> d!1930 (= lt!734 e!1506)))

(declare-fun c!914 () Bool)

(assert (=> d!1930 (= c!914 (is-Nil!56 (tail!239 (tail!239 (front!53 queue!56)))))))

(assert (=> d!1930 (= (size!23 (tail!239 (tail!239 (front!53 queue!56)))) lt!734)))

(declare-fun b!2639 () Bool)

(assert (=> b!2639 (= e!1506 0)))

(declare-fun b!2640 () Bool)

(assert (=> b!2640 (= e!1506 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (front!53 queue!56)))))))))

(assert (= (and d!1930 c!914) b!2639))

(assert (= (and d!1930 (not c!914)) b!2640))

(declare-fun m!3965 () Bool)

(assert (=> b!2640 m!3965))

(assert (=> b!2453 d!1930))

(declare-fun d!1932 () Bool)

(declare-fun lt!735 () Int)

(assert (=> d!1932 (>= lt!735 0)))

(declare-fun e!1507 () Int)

(assert (=> d!1932 (= lt!735 e!1507)))

(declare-fun c!915 () Bool)

(assert (=> d!1932 (= c!915 (is-Nil!56 lt!691))))

(assert (=> d!1932 (= (size!23 lt!691) lt!735)))

(declare-fun b!2641 () Bool)

(assert (=> b!2641 (= e!1507 0)))

(declare-fun b!2642 () Bool)

(assert (=> b!2642 (= e!1507 (+ 1 (size!23 (tail!239 lt!691))))))

(assert (= (and d!1932 c!915) b!2641))

(assert (= (and d!1932 (not c!915)) b!2642))

(declare-fun m!3967 () Bool)

(assert (=> b!2642 m!3967))

(assert (=> d!1824 d!1932))

(declare-fun d!1934 () Bool)

(declare-fun lt!736 () Int)

(assert (=> d!1934 (>= lt!736 0)))

(declare-fun e!1508 () Int)

(assert (=> d!1934 (= lt!736 e!1508)))

(declare-fun c!916 () Bool)

(assert (=> d!1934 (= c!916 (is-Nil!56 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))))))

(assert (=> d!1934 (= (size!23 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))) lt!736)))

(declare-fun b!2643 () Bool)

(assert (=> b!2643 (= e!1508 0)))

(declare-fun b!2644 () Bool)

(assert (=> b!2644 (= e!1508 (+ 1 (size!23 (tail!239 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))))))))

(assert (= (and d!1934 c!916) b!2643))

(assert (= (and d!1934 (not c!916)) b!2644))

(declare-fun m!3969 () Bool)

(assert (=> b!2644 m!3969))

(assert (=> d!1824 d!1934))

(declare-fun d!1936 () Bool)

(declare-fun lt!737 () Int)

(assert (=> d!1936 (>= lt!737 0)))

(declare-fun e!1509 () Int)

(assert (=> d!1936 (= lt!737 e!1509)))

(declare-fun c!917 () Bool)

(assert (=> d!1936 (= c!917 (is-Nil!56 (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56)))))

(assert (=> d!1936 (= (size!23 (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56)) lt!737)))

(declare-fun b!2645 () Bool)

(assert (=> b!2645 (= e!1509 0)))

(declare-fun b!2646 () Bool)

(assert (=> b!2646 (= e!1509 (+ 1 (size!23 (tail!239 (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56)))))))

(assert (= (and d!1936 c!917) b!2645))

(assert (= (and d!1936 (not c!917)) b!2646))

(declare-fun m!3971 () Bool)

(assert (=> b!2646 m!3971))

(assert (=> d!1824 d!1936))

(declare-fun d!1938 () Bool)

(declare-fun e!1511 () Bool)

(assert (=> d!1938 e!1511))

(declare-fun res!927 () Bool)

(assert (=> d!1938 (=> (not res!927) (not e!1511))))

(declare-fun lt!738 () List!55)

(assert (=> d!1938 (= res!927 (= (size!23 lt!738) (+ (size!23 (reverse!5 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))) (size!23 (Cons!55 (head!227 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))) Nil!56)))))))

(declare-fun e!1510 () List!55)

(assert (=> d!1938 (= lt!738 e!1510)))

(declare-fun c!918 () Bool)

(assert (=> d!1938 (= c!918 (is-Nil!56 (reverse!5 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))))))

(assert (=> d!1938 (= (concat!2 (reverse!5 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))) (Cons!55 (head!227 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))) Nil!56)) lt!738)))

(declare-fun b!2647 () Bool)

(assert (=> b!2647 (= e!1510 (Cons!55 (head!227 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))) Nil!56))))

(declare-fun b!2648 () Bool)

(assert (=> b!2648 (= e!1510 (Cons!55 (head!227 (reverse!5 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))) (concat!2 (tail!239 (reverse!5 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))) (Cons!55 (head!227 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))) Nil!56))))))

(declare-fun b!2649 () Bool)

(assert (=> b!2649 (= e!1511 (= (content!22 lt!738) (union (content!22 (reverse!5 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))) (content!22 (Cons!55 (head!227 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))) Nil!56)))))))

(assert (= (and d!1938 c!918) b!2647))

(assert (= (and d!1938 (not c!918)) b!2648))

(assert (= (and d!1938 res!927) b!2649))

(declare-fun m!3973 () Bool)

(assert (=> d!1938 m!3973))

(assert (=> d!1938 m!3767))

(declare-fun m!3975 () Bool)

(assert (=> d!1938 m!3975))

(declare-fun m!3977 () Bool)

(assert (=> d!1938 m!3977))

(declare-fun m!3979 () Bool)

(assert (=> b!2648 m!3979))

(declare-fun m!3981 () Bool)

(assert (=> b!2649 m!3981))

(assert (=> b!2649 m!3767))

(declare-fun m!3983 () Bool)

(assert (=> b!2649 m!3983))

(declare-fun m!3985 () Bool)

(assert (=> b!2649 m!3985))

(assert (=> b!2528 d!1938))

(declare-fun d!1940 () Bool)

(declare-fun lt!739 () List!55)

(assert (=> d!1940 (= (content!22 lt!739) (content!22 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))))))

(declare-fun e!1512 () List!55)

(assert (=> d!1940 (= lt!739 e!1512)))

(declare-fun c!919 () Bool)

(assert (=> d!1940 (= c!919 (is-Nil!56 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))))))

(assert (=> d!1940 (= (reverse!5 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))) lt!739)))

(declare-fun b!2650 () Bool)

(assert (=> b!2650 (= e!1512 Nil!56)))

(declare-fun b!2651 () Bool)

(assert (=> b!2651 (= e!1512 (concat!2 (reverse!5 (tail!239 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))) (Cons!55 (head!227 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))) Nil!56)))))

(assert (= (and d!1940 c!919) b!2650))

(assert (= (and d!1940 (not c!919)) b!2651))

(declare-fun m!3987 () Bool)

(assert (=> d!1940 m!3987))

(declare-fun m!3989 () Bool)

(assert (=> d!1940 m!3989))

(declare-fun m!3991 () Bool)

(assert (=> b!2651 m!3991))

(assert (=> b!2651 m!3991))

(declare-fun m!3993 () Bool)

(assert (=> b!2651 m!3993))

(assert (=> b!2528 d!1940))

(declare-fun d!1942 () Bool)

(declare-fun lt!740 () Int)

(assert (=> d!1942 (>= lt!740 0)))

(declare-fun e!1513 () Int)

(assert (=> d!1942 (= lt!740 e!1513)))

(declare-fun c!920 () Bool)

(assert (=> d!1942 (= c!920 (is-Nil!56 (tail!239 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1))))))))

(assert (=> d!1942 (= (size!23 (tail!239 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1))))) lt!740)))

(declare-fun b!2652 () Bool)

(assert (=> b!2652 (= e!1513 0)))

(declare-fun b!2653 () Bool)

(assert (=> b!2653 (= e!1513 (+ 1 (size!23 (tail!239 (tail!239 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1))))))))))

(assert (= (and d!1942 c!920) b!2652))

(assert (= (and d!1942 (not c!920)) b!2653))

(declare-fun m!3995 () Bool)

(assert (=> b!2653 m!3995))

(assert (=> b!2502 d!1942))

(declare-fun d!1944 () Bool)

(declare-fun c!921 () Bool)

(assert (=> d!1944 (= c!921 (is-Nil!56 (tail!239 (reverse!5 (rear!55 q3!1)))))))

(declare-fun e!1514 () (Set (_ BitVec 32)))

(assert (=> d!1944 (= (content!22 (tail!239 (reverse!5 (rear!55 q3!1)))) e!1514)))

(declare-fun b!2654 () Bool)

(assert (=> b!2654 (= e!1514 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2655 () Bool)

(assert (=> b!2655 (= e!1514 (union (insert (head!227 (tail!239 (reverse!5 (rear!55 q3!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (reverse!5 (rear!55 q3!1)))))))))

(assert (= (and d!1944 c!921) b!2654))

(assert (= (and d!1944 (not c!921)) b!2655))

(declare-fun m!3997 () Bool)

(assert (=> b!2655 m!3997))

(declare-fun m!3999 () Bool)

(assert (=> b!2655 m!3999))

(assert (=> b!2492 d!1944))

(declare-fun d!1946 () Bool)

(declare-fun e!1516 () Bool)

(assert (=> d!1946 e!1516))

(declare-fun res!928 () Bool)

(assert (=> d!1946 (=> (not res!928) (not e!1516))))

(declare-fun lt!741 () List!55)

(assert (=> d!1946 (= res!928 (= (size!23 lt!741) (+ (size!23 (tail!239 (tail!239 (tail!239 (front!53 q3!1))))) (size!23 (reverse!5 (rear!55 q3!1))))))))

(declare-fun e!1515 () List!55)

(assert (=> d!1946 (= lt!741 e!1515)))

(declare-fun c!922 () Bool)

(assert (=> d!1946 (= c!922 (is-Nil!56 (tail!239 (tail!239 (tail!239 (front!53 q3!1))))))))

(assert (=> d!1946 (= (concat!2 (tail!239 (tail!239 (tail!239 (front!53 q3!1)))) (reverse!5 (rear!55 q3!1))) lt!741)))

(declare-fun b!2656 () Bool)

(assert (=> b!2656 (= e!1515 (reverse!5 (rear!55 q3!1)))))

(declare-fun b!2657 () Bool)

(assert (=> b!2657 (= e!1515 (Cons!55 (head!227 (tail!239 (tail!239 (tail!239 (front!53 q3!1))))) (concat!2 (tail!239 (tail!239 (tail!239 (tail!239 (front!53 q3!1))))) (reverse!5 (rear!55 q3!1)))))))

(declare-fun b!2658 () Bool)

(assert (=> b!2658 (= e!1516 (= (content!22 lt!741) (union (content!22 (tail!239 (tail!239 (tail!239 (front!53 q3!1))))) (content!22 (reverse!5 (rear!55 q3!1))))))))

(assert (= (and d!1946 c!922) b!2656))

(assert (= (and d!1946 (not c!922)) b!2657))

(assert (= (and d!1946 res!928) b!2658))

(declare-fun m!4001 () Bool)

(assert (=> d!1946 m!4001))

(assert (=> d!1946 m!3685))

(assert (=> d!1946 m!3407))

(assert (=> d!1946 m!3491))

(assert (=> b!2657 m!3407))

(declare-fun m!4003 () Bool)

(assert (=> b!2657 m!4003))

(declare-fun m!4005 () Bool)

(assert (=> b!2658 m!4005))

(declare-fun m!4007 () Bool)

(assert (=> b!2658 m!4007))

(assert (=> b!2658 m!3407))

(assert (=> b!2658 m!3499))

(assert (=> b!2549 d!1946))

(declare-fun d!1948 () Bool)

(declare-fun c!923 () Bool)

(assert (=> d!1948 (= c!923 (is-Nil!56 (tail!239 (front!53 q1!1))))))

(declare-fun e!1517 () (Set (_ BitVec 32)))

(assert (=> d!1948 (= (content!22 (tail!239 (front!53 q1!1))) e!1517)))

(declare-fun b!2659 () Bool)

(assert (=> b!2659 (= e!1517 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2660 () Bool)

(assert (=> b!2660 (= e!1517 (union (insert (head!227 (tail!239 (front!53 q1!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (front!53 q1!1))))))))

(assert (= (and d!1948 c!923) b!2659))

(assert (= (and d!1948 (not c!923)) b!2660))

(declare-fun m!4009 () Bool)

(assert (=> b!2660 m!4009))

(assert (=> b!2660 m!3959))

(assert (=> b!2476 d!1948))

(declare-fun d!1950 () Bool)

(declare-fun lt!742 () Int)

(assert (=> d!1950 (>= lt!742 0)))

(declare-fun e!1518 () Int)

(assert (=> d!1950 (= lt!742 e!1518)))

(declare-fun c!924 () Bool)

(assert (=> d!1950 (= c!924 (is-Nil!56 (tail!239 (reverse!5 (rear!55 q3!1)))))))

(assert (=> d!1950 (= (size!23 (tail!239 (reverse!5 (rear!55 q3!1)))) lt!742)))

(declare-fun b!2661 () Bool)

(assert (=> b!2661 (= e!1518 0)))

(declare-fun b!2662 () Bool)

(assert (=> b!2662 (= e!1518 (+ 1 (size!23 (tail!239 (tail!239 (reverse!5 (rear!55 q3!1)))))))))

(assert (= (and d!1950 c!924) b!2661))

(assert (= (and d!1950 (not c!924)) b!2662))

(declare-fun m!4011 () Bool)

(assert (=> b!2662 m!4011))

(assert (=> b!2569 d!1950))

(declare-fun d!1952 () Bool)

(declare-fun e!1520 () Bool)

(assert (=> d!1952 e!1520))

(declare-fun res!929 () Bool)

(assert (=> d!1952 (=> (not res!929) (not e!1520))))

(declare-fun lt!743 () List!55)

(assert (=> d!1952 (= res!929 (= (size!23 lt!743) (+ (size!23 (tail!239 (tail!239 (front!53 q2!1)))) (size!23 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))))))))

(declare-fun e!1519 () List!55)

(assert (=> d!1952 (= lt!743 e!1519)))

(declare-fun c!925 () Bool)

(assert (=> d!1952 (= c!925 (is-Nil!56 (tail!239 (tail!239 (front!53 q2!1)))))))

(assert (=> d!1952 (= (concat!2 (tail!239 (tail!239 (front!53 q2!1))) (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))) lt!743)))

(declare-fun b!2663 () Bool)

(assert (=> b!2663 (= e!1519 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1))))))

(declare-fun b!2664 () Bool)

(assert (=> b!2664 (= e!1519 (Cons!55 (head!227 (tail!239 (tail!239 (front!53 q2!1)))) (concat!2 (tail!239 (tail!239 (tail!239 (front!53 q2!1)))) (reverse!5 (Cons!55 e3!1 (rear!55 q2!1))))))))

(declare-fun b!2665 () Bool)

(assert (=> b!2665 (= e!1520 (= (content!22 lt!743) (union (content!22 (tail!239 (tail!239 (front!53 q2!1)))) (content!22 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1)))))))))

(assert (= (and d!1952 c!925) b!2663))

(assert (= (and d!1952 (not c!925)) b!2664))

(assert (= (and d!1952 res!929) b!2665))

(declare-fun m!4013 () Bool)

(assert (=> d!1952 m!4013))

(assert (=> d!1952 m!3709))

(assert (=> d!1952 m!3393))

(assert (=> d!1952 m!3585))

(assert (=> b!2664 m!3393))

(declare-fun m!4015 () Bool)

(assert (=> b!2664 m!4015))

(declare-fun m!4017 () Bool)

(assert (=> b!2665 m!4017))

(declare-fun m!4019 () Bool)

(assert (=> b!2665 m!4019))

(assert (=> b!2665 m!3393))

(assert (=> b!2665 m!3593))

(assert (=> b!2461 d!1952))

(declare-fun d!1954 () Bool)

(declare-fun c!926 () Bool)

(assert (=> d!1954 (= c!926 (is-Nil!56 lt!686))))

(declare-fun e!1521 () (Set (_ BitVec 32)))

(assert (=> d!1954 (= (content!22 lt!686) e!1521)))

(declare-fun b!2666 () Bool)

(assert (=> b!2666 (= e!1521 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2667 () Bool)

(assert (=> b!2667 (= e!1521 (union (insert (head!227 lt!686) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!686))))))

(assert (= (and d!1954 c!926) b!2666))

(assert (= (and d!1954 (not c!926)) b!2667))

(declare-fun m!4021 () Bool)

(assert (=> b!2667 m!4021))

(declare-fun m!4023 () Bool)

(assert (=> b!2667 m!4023))

(assert (=> d!1810 d!1954))

(declare-fun d!1956 () Bool)

(declare-fun c!927 () Bool)

(assert (=> d!1956 (= c!927 (is-Nil!56 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))))

(declare-fun e!1522 () (Set (_ BitVec 32)))

(assert (=> d!1956 (= (content!22 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))) e!1522)))

(declare-fun b!2668 () Bool)

(assert (=> b!2668 (= e!1522 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2669 () Bool)

(assert (=> b!2669 (= e!1522 (union (insert (head!227 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))))))

(assert (= (and d!1956 c!927) b!2668))

(assert (= (and d!1956 (not c!927)) b!2669))

(declare-fun m!4025 () Bool)

(assert (=> b!2669 m!4025))

(declare-fun m!4027 () Bool)

(assert (=> b!2669 m!4027))

(assert (=> d!1810 d!1956))

(declare-fun d!1958 () Bool)

(declare-fun lt!744 () Int)

(assert (=> d!1958 (>= lt!744 0)))

(declare-fun e!1523 () Int)

(assert (=> d!1958 (= lt!744 e!1523)))

(declare-fun c!928 () Bool)

(assert (=> d!1958 (= c!928 (is-Nil!56 (tail!239 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1))))))))

(assert (=> d!1958 (= (size!23 (tail!239 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1))))) lt!744)))

(declare-fun b!2670 () Bool)

(assert (=> b!2670 (= e!1523 0)))

(declare-fun b!2671 () Bool)

(assert (=> b!2671 (= e!1523 (+ 1 (size!23 (tail!239 (tail!239 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1))))))))))

(assert (= (and d!1958 c!928) b!2670))

(assert (= (and d!1958 (not c!928)) b!2671))

(declare-fun m!4029 () Bool)

(assert (=> b!2671 m!4029))

(assert (=> b!2556 d!1958))

(declare-fun d!1960 () Bool)

(declare-fun c!929 () Bool)

(assert (=> d!1960 (= c!929 (is-Nil!56 lt!699))))

(declare-fun e!1524 () (Set (_ BitVec 32)))

(assert (=> d!1960 (= (content!22 lt!699) e!1524)))

(declare-fun b!2672 () Bool)

(assert (=> b!2672 (= e!1524 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2673 () Bool)

(assert (=> b!2673 (= e!1524 (union (insert (head!227 lt!699) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!699))))))

(assert (= (and d!1960 c!929) b!2672))

(assert (= (and d!1960 (not c!929)) b!2673))

(declare-fun m!4031 () Bool)

(assert (=> b!2673 m!4031))

(declare-fun m!4033 () Bool)

(assert (=> b!2673 m!4033))

(assert (=> b!2550 d!1960))

(declare-fun d!1962 () Bool)

(declare-fun c!930 () Bool)

(assert (=> d!1962 (= c!930 (is-Nil!56 (tail!239 (tail!239 (front!53 q3!1)))))))

(declare-fun e!1525 () (Set (_ BitVec 32)))

(assert (=> d!1962 (= (content!22 (tail!239 (tail!239 (front!53 q3!1)))) e!1525)))

(declare-fun b!2674 () Bool)

(assert (=> b!2674 (= e!1525 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2675 () Bool)

(assert (=> b!2675 (= e!1525 (union (insert (head!227 (tail!239 (tail!239 (front!53 q3!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (tail!239 (front!53 q3!1)))))))))

(assert (= (and d!1962 c!930) b!2674))

(assert (= (and d!1962 (not c!930)) b!2675))

(declare-fun m!4035 () Bool)

(assert (=> b!2675 m!4035))

(assert (=> b!2675 m!4007))

(assert (=> b!2550 d!1962))

(assert (=> b!2550 d!1792))

(declare-fun d!1964 () Bool)

(declare-fun e!1527 () Bool)

(assert (=> d!1964 e!1527))

(declare-fun res!930 () Bool)

(assert (=> d!1964 (=> (not res!930) (not e!1527))))

(declare-fun lt!745 () List!55)

(assert (=> d!1964 (= res!930 (= (size!23 lt!745) (+ (size!23 (tail!239 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))) (size!23 (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56)))))))

(declare-fun e!1526 () List!55)

(assert (=> d!1964 (= lt!745 e!1526)))

(declare-fun c!931 () Bool)

(assert (=> d!1964 (= c!931 (is-Nil!56 (tail!239 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))))))

(assert (=> d!1964 (= (concat!2 (tail!239 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))) (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56)) lt!745)))

(declare-fun b!2676 () Bool)

(assert (=> b!2676 (= e!1526 (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56))))

(declare-fun b!2677 () Bool)

(assert (=> b!2677 (= e!1526 (Cons!55 (head!227 (tail!239 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))) (concat!2 (tail!239 (tail!239 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))) (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56))))))

(declare-fun b!2678 () Bool)

(assert (=> b!2678 (= e!1527 (= (content!22 lt!745) (union (content!22 (tail!239 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))) (content!22 (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56)))))))

(assert (= (and d!1964 c!931) b!2676))

(assert (= (and d!1964 (not c!931)) b!2677))

(assert (= (and d!1964 res!930) b!2678))

(declare-fun m!4037 () Bool)

(assert (=> d!1964 m!4037))

(declare-fun m!4039 () Bool)

(assert (=> d!1964 m!4039))

(assert (=> d!1964 m!3897))

(declare-fun m!4041 () Bool)

(assert (=> b!2677 m!4041))

(declare-fun m!4043 () Bool)

(assert (=> b!2678 m!4043))

(declare-fun m!4045 () Bool)

(assert (=> b!2678 m!4045))

(assert (=> b!2678 m!3905))

(assert (=> b!2601 d!1964))

(declare-fun d!1966 () Bool)

(declare-fun lt!746 () Int)

(assert (=> d!1966 (>= lt!746 0)))

(declare-fun e!1528 () Int)

(assert (=> d!1966 (= lt!746 e!1528)))

(declare-fun c!932 () Bool)

(assert (=> d!1966 (= c!932 (is-Nil!56 (tail!239 (tail!239 (rear!55 q3!1)))))))

(assert (=> d!1966 (= (size!23 (tail!239 (tail!239 (rear!55 q3!1)))) lt!746)))

(declare-fun b!2679 () Bool)

(assert (=> b!2679 (= e!1528 0)))

(declare-fun b!2680 () Bool)

(assert (=> b!2680 (= e!1528 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (rear!55 q3!1)))))))))

(assert (= (and d!1966 c!932) b!2679))

(assert (= (and d!1966 (not c!932)) b!2680))

(declare-fun m!4047 () Bool)

(assert (=> b!2680 m!4047))

(assert (=> b!2591 d!1966))

(declare-fun d!1968 () Bool)

(declare-fun c!933 () Bool)

(assert (=> d!1968 (= c!933 (is-Nil!56 (tail!239 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1))))))))

(declare-fun e!1529 () (Set (_ BitVec 32)))

(assert (=> d!1968 (= (content!22 (tail!239 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1))))) e!1529)))

(declare-fun b!2681 () Bool)

(assert (=> b!2681 (= e!1529 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2682 () Bool)

(assert (=> b!2682 (= e!1529 (union (insert (head!227 (tail!239 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1))))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (reverse!5 (Cons!55 e2!3 (rear!55 q1!1))))))))))

(assert (= (and d!1968 c!933) b!2681))

(assert (= (and d!1968 (not c!933)) b!2682))

(declare-fun m!4049 () Bool)

(assert (=> b!2682 m!4049))

(declare-fun m!4051 () Bool)

(assert (=> b!2682 m!4051))

(assert (=> b!2478 d!1968))

(declare-fun d!1970 () Bool)

(declare-fun lt!747 () Int)

(assert (=> d!1970 (>= lt!747 0)))

(declare-fun e!1530 () Int)

(assert (=> d!1970 (= lt!747 e!1530)))

(declare-fun c!934 () Bool)

(assert (=> d!1970 (= c!934 (is-Nil!56 lt!685))))

(assert (=> d!1970 (= (size!23 lt!685) lt!747)))

(declare-fun b!2683 () Bool)

(assert (=> b!2683 (= e!1530 0)))

(declare-fun b!2684 () Bool)

(assert (=> b!2684 (= e!1530 (+ 1 (size!23 (tail!239 lt!685))))))

(assert (= (and d!1970 c!934) b!2683))

(assert (= (and d!1970 (not c!934)) b!2684))

(declare-fun m!4053 () Bool)

(assert (=> b!2684 m!4053))

(assert (=> d!1808 d!1970))

(declare-fun d!1972 () Bool)

(declare-fun lt!748 () Int)

(assert (=> d!1972 (>= lt!748 0)))

(declare-fun e!1531 () Int)

(assert (=> d!1972 (= lt!748 e!1531)))

(declare-fun c!935 () Bool)

(assert (=> d!1972 (= c!935 (is-Nil!56 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))))))

(assert (=> d!1972 (= (size!23 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))) lt!748)))

(declare-fun b!2685 () Bool)

(assert (=> b!2685 (= e!1531 0)))

(declare-fun b!2686 () Bool)

(assert (=> b!2686 (= e!1531 (+ 1 (size!23 (tail!239 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))))))))

(assert (= (and d!1972 c!935) b!2685))

(assert (= (and d!1972 (not c!935)) b!2686))

(declare-fun m!4055 () Bool)

(assert (=> b!2686 m!4055))

(assert (=> d!1808 d!1972))

(declare-fun d!1974 () Bool)

(declare-fun lt!749 () Int)

(assert (=> d!1974 (>= lt!749 0)))

(declare-fun e!1532 () Int)

(assert (=> d!1974 (= lt!749 e!1532)))

(declare-fun c!936 () Bool)

(assert (=> d!1974 (= c!936 (is-Nil!56 (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56)))))

(assert (=> d!1974 (= (size!23 (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56)) lt!749)))

(declare-fun b!2687 () Bool)

(assert (=> b!2687 (= e!1532 0)))

(declare-fun b!2688 () Bool)

(assert (=> b!2688 (= e!1532 (+ 1 (size!23 (tail!239 (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56)))))))

(assert (= (and d!1974 c!936) b!2687))

(assert (= (and d!1974 (not c!936)) b!2688))

(declare-fun m!4057 () Bool)

(assert (=> b!2688 m!4057))

(assert (=> d!1808 d!1974))

(declare-fun d!1976 () Bool)

(declare-fun c!937 () Bool)

(assert (=> d!1976 (= c!937 (is-Nil!56 (tail!239 lt!664)))))

(declare-fun e!1533 () (Set (_ BitVec 32)))

(assert (=> d!1976 (= (content!22 (tail!239 lt!664)) e!1533)))

(declare-fun b!2689 () Bool)

(assert (=> b!2689 (= e!1533 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2690 () Bool)

(assert (=> b!2690 (= e!1533 (union (insert (head!227 (tail!239 lt!664)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 lt!664)))))))

(assert (= (and d!1976 c!937) b!2689))

(assert (= (and d!1976 (not c!937)) b!2690))

(declare-fun m!4059 () Bool)

(assert (=> b!2690 m!4059))

(declare-fun m!4061 () Bool)

(assert (=> b!2690 m!4061))

(assert (=> b!2468 d!1976))

(declare-fun d!1978 () Bool)

(declare-fun c!938 () Bool)

(assert (=> d!1978 (= c!938 (is-Nil!56 lt!692))))

(declare-fun e!1534 () (Set (_ BitVec 32)))

(assert (=> d!1978 (= (content!22 lt!692) e!1534)))

(declare-fun b!2691 () Bool)

(assert (=> b!2691 (= e!1534 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2692 () Bool)

(assert (=> b!2692 (= e!1534 (union (insert (head!227 lt!692) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!692))))))

(assert (= (and d!1978 c!938) b!2691))

(assert (= (and d!1978 (not c!938)) b!2692))

(declare-fun m!4063 () Bool)

(assert (=> b!2692 m!4063))

(declare-fun m!4065 () Bool)

(assert (=> b!2692 m!4065))

(assert (=> d!1826 d!1978))

(declare-fun d!1980 () Bool)

(declare-fun c!939 () Bool)

(assert (=> d!1980 (= c!939 (is-Nil!56 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))))

(declare-fun e!1535 () (Set (_ BitVec 32)))

(assert (=> d!1980 (= (content!22 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))) e!1535)))

(declare-fun b!2693 () Bool)

(assert (=> b!2693 (= e!1535 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2694 () Bool)

(assert (=> b!2694 (= e!1535 (union (insert (head!227 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))))))

(assert (= (and d!1980 c!939) b!2693))

(assert (= (and d!1980 (not c!939)) b!2694))

(declare-fun m!4067 () Bool)

(assert (=> b!2694 m!4067))

(assert (=> b!2694 m!3989))

(assert (=> d!1826 d!1980))

(declare-fun d!1982 () Bool)

(declare-fun lt!750 () Int)

(assert (=> d!1982 (>= lt!750 0)))

(declare-fun e!1536 () Int)

(assert (=> d!1982 (= lt!750 e!1536)))

(declare-fun c!940 () Bool)

(assert (=> d!1982 (= c!940 (is-Nil!56 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))))))

(assert (=> d!1982 (= (size!23 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))) lt!750)))

(declare-fun b!2695 () Bool)

(assert (=> b!2695 (= e!1536 0)))

(declare-fun b!2696 () Bool)

(assert (=> b!2696 (= e!1536 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))))))))

(assert (= (and d!1982 c!940) b!2695))

(assert (= (and d!1982 (not c!940)) b!2696))

(declare-fun m!4069 () Bool)

(assert (=> b!2696 m!4069))

(assert (=> b!2595 d!1982))

(declare-fun d!1984 () Bool)

(declare-fun c!941 () Bool)

(assert (=> d!1984 (= c!941 (is-Nil!56 (tail!239 lt!657)))))

(declare-fun e!1537 () (Set (_ BitVec 32)))

(assert (=> d!1984 (= (content!22 (tail!239 lt!657)) e!1537)))

(declare-fun b!2697 () Bool)

(assert (=> b!2697 (= e!1537 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2698 () Bool)

(assert (=> b!2698 (= e!1537 (union (insert (head!227 (tail!239 lt!657)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 lt!657)))))))

(assert (= (and d!1984 c!941) b!2697))

(assert (= (and d!1984 (not c!941)) b!2698))

(declare-fun m!4071 () Bool)

(assert (=> b!2698 m!4071))

(declare-fun m!4073 () Bool)

(assert (=> b!2698 m!4073))

(assert (=> b!2480 d!1984))

(declare-fun d!1986 () Bool)

(declare-fun c!942 () Bool)

(assert (=> d!1986 (= c!942 (is-Nil!56 lt!685))))

(declare-fun e!1538 () (Set (_ BitVec 32)))

(assert (=> d!1986 (= (content!22 lt!685) e!1538)))

(declare-fun b!2699 () Bool)

(assert (=> b!2699 (= e!1538 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2700 () Bool)

(assert (=> b!2700 (= e!1538 (union (insert (head!227 lt!685) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!685))))))

(assert (= (and d!1986 c!942) b!2699))

(assert (= (and d!1986 (not c!942)) b!2700))

(declare-fun m!4075 () Bool)

(assert (=> b!2700 m!4075))

(declare-fun m!4077 () Bool)

(assert (=> b!2700 m!4077))

(assert (=> b!2509 d!1986))

(declare-fun d!1988 () Bool)

(declare-fun c!943 () Bool)

(assert (=> d!1988 (= c!943 (is-Nil!56 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))))))

(declare-fun e!1539 () (Set (_ BitVec 32)))

(assert (=> d!1988 (= (content!22 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))) e!1539)))

(declare-fun b!2701 () Bool)

(assert (=> b!2701 (= e!1539 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2702 () Bool)

(assert (=> b!2702 (= e!1539 (union (insert (head!227 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))))))))

(assert (= (and d!1988 c!943) b!2701))

(assert (= (and d!1988 (not c!943)) b!2702))

(declare-fun m!4079 () Bool)

(assert (=> b!2702 m!4079))

(declare-fun m!4081 () Bool)

(assert (=> b!2702 m!4081))

(assert (=> b!2509 d!1988))

(declare-fun d!1990 () Bool)

(declare-fun c!944 () Bool)

(assert (=> d!1990 (= c!944 (is-Nil!56 (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56)))))

(declare-fun e!1540 () (Set (_ BitVec 32)))

(assert (=> d!1990 (= (content!22 (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56)) e!1540)))

(declare-fun b!2703 () Bool)

(assert (=> b!2703 (= e!1540 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2704 () Bool)

(assert (=> b!2704 (= e!1540 (union (insert (head!227 (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56)))))))

(assert (= (and d!1990 c!944) b!2703))

(assert (= (and d!1990 (not c!944)) b!2704))

(declare-fun m!4083 () Bool)

(assert (=> b!2704 m!4083))

(declare-fun m!4085 () Bool)

(assert (=> b!2704 m!4085))

(assert (=> b!2509 d!1990))

(declare-fun d!1992 () Bool)

(declare-fun lt!751 () Int)

(assert (=> d!1992 (>= lt!751 0)))

(declare-fun e!1541 () Int)

(assert (=> d!1992 (= lt!751 e!1541)))

(declare-fun c!945 () Bool)

(assert (=> d!1992 (= c!945 (is-Nil!56 (tail!239 (tail!239 (front!53 lt!618)))))))

(assert (=> d!1992 (= (size!23 (tail!239 (tail!239 (front!53 lt!618)))) lt!751)))

(declare-fun b!2705 () Bool)

(assert (=> b!2705 (= e!1541 0)))

(declare-fun b!2706 () Bool)

(assert (=> b!2706 (= e!1541 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (front!53 lt!618)))))))))

(assert (= (and d!1992 c!945) b!2705))

(assert (= (and d!1992 (not c!945)) b!2706))

(declare-fun m!4087 () Bool)

(assert (=> b!2706 m!4087))

(assert (=> b!2447 d!1992))

(declare-fun d!1994 () Bool)

(declare-fun e!1543 () Bool)

(assert (=> d!1994 e!1543))

(declare-fun res!931 () Bool)

(assert (=> d!1994 (=> (not res!931) (not e!1543))))

(declare-fun lt!752 () List!55)

(assert (=> d!1994 (= res!931 (= (size!23 lt!752) (+ (size!23 (reverse!5 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))) (size!23 (Cons!55 (head!227 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))) Nil!56)))))))

(declare-fun e!1542 () List!55)

(assert (=> d!1994 (= lt!752 e!1542)))

(declare-fun c!946 () Bool)

(assert (=> d!1994 (= c!946 (is-Nil!56 (reverse!5 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))))))

(assert (=> d!1994 (= (concat!2 (reverse!5 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))) (Cons!55 (head!227 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))) Nil!56)) lt!752)))

(declare-fun b!2707 () Bool)

(assert (=> b!2707 (= e!1542 (Cons!55 (head!227 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))) Nil!56))))

(declare-fun b!2708 () Bool)

(assert (=> b!2708 (= e!1542 (Cons!55 (head!227 (reverse!5 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))) (concat!2 (tail!239 (reverse!5 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))) (Cons!55 (head!227 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))) Nil!56))))))

(declare-fun b!2709 () Bool)

(assert (=> b!2709 (= e!1543 (= (content!22 lt!752) (union (content!22 (reverse!5 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))) (content!22 (Cons!55 (head!227 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))) Nil!56)))))))

(assert (= (and d!1994 c!946) b!2707))

(assert (= (and d!1994 (not c!946)) b!2708))

(assert (= (and d!1994 res!931) b!2709))

(declare-fun m!4089 () Bool)

(assert (=> d!1994 m!4089))

(assert (=> d!1994 m!3729))

(declare-fun m!4091 () Bool)

(assert (=> d!1994 m!4091))

(declare-fun m!4093 () Bool)

(assert (=> d!1994 m!4093))

(declare-fun m!4095 () Bool)

(assert (=> b!2708 m!4095))

(declare-fun m!4097 () Bool)

(assert (=> b!2709 m!4097))

(assert (=> b!2709 m!3729))

(declare-fun m!4099 () Bool)

(assert (=> b!2709 m!4099))

(declare-fun m!4101 () Bool)

(assert (=> b!2709 m!4101))

(assert (=> b!2511 d!1994))

(declare-fun d!1996 () Bool)

(declare-fun lt!753 () List!55)

(assert (=> d!1996 (= (content!22 lt!753) (content!22 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))))))

(declare-fun e!1544 () List!55)

(assert (=> d!1996 (= lt!753 e!1544)))

(declare-fun c!947 () Bool)

(assert (=> d!1996 (= c!947 (is-Nil!56 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))))))

(assert (=> d!1996 (= (reverse!5 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))) lt!753)))

(declare-fun b!2710 () Bool)

(assert (=> b!2710 (= e!1544 Nil!56)))

(declare-fun b!2711 () Bool)

(assert (=> b!2711 (= e!1544 (concat!2 (reverse!5 (tail!239 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))) (Cons!55 (head!227 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))) Nil!56)))))

(assert (= (and d!1996 c!947) b!2710))

(assert (= (and d!1996 (not c!947)) b!2711))

(declare-fun m!4103 () Bool)

(assert (=> d!1996 m!4103))

(assert (=> d!1996 m!4027))

(declare-fun m!4105 () Bool)

(assert (=> b!2711 m!4105))

(assert (=> b!2711 m!4105))

(declare-fun m!4107 () Bool)

(assert (=> b!2711 m!4107))

(assert (=> b!2511 d!1996))

(declare-fun d!1998 () Bool)

(declare-fun lt!754 () Int)

(assert (=> d!1998 (>= lt!754 0)))

(declare-fun e!1545 () Int)

(assert (=> d!1998 (= lt!754 e!1545)))

(declare-fun c!948 () Bool)

(assert (=> d!1998 (= c!948 (is-Nil!56 (tail!239 (tail!239 (front!53 lt!614)))))))

(assert (=> d!1998 (= (size!23 (tail!239 (tail!239 (front!53 lt!614)))) lt!754)))

(declare-fun b!2712 () Bool)

(assert (=> b!2712 (= e!1545 0)))

(declare-fun b!2713 () Bool)

(assert (=> b!2713 (= e!1545 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (front!53 lt!614)))))))))

(assert (= (and d!1998 c!948) b!2712))

(assert (= (and d!1998 (not c!948)) b!2713))

(declare-fun m!4109 () Bool)

(assert (=> b!2713 m!4109))

(assert (=> b!2584 d!1998))

(declare-fun d!2000 () Bool)

(declare-fun c!949 () Bool)

(assert (=> d!2000 (= c!949 (is-Nil!56 (tail!239 lt!660)))))

(declare-fun e!1546 () (Set (_ BitVec 32)))

(assert (=> d!2000 (= (content!22 (tail!239 lt!660)) e!1546)))

(declare-fun b!2714 () Bool)

(assert (=> b!2714 (= e!1546 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2715 () Bool)

(assert (=> b!2715 (= e!1546 (union (insert (head!227 (tail!239 lt!660)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 lt!660)))))))

(assert (= (and d!2000 c!949) b!2714))

(assert (= (and d!2000 (not c!949)) b!2715))

(declare-fun m!4111 () Bool)

(assert (=> b!2715 m!4111))

(declare-fun m!4113 () Bool)

(assert (=> b!2715 m!4113))

(assert (=> b!2436 d!2000))

(declare-fun d!2002 () Bool)

(declare-fun lt!755 () Int)

(assert (=> d!2002 (>= lt!755 0)))

(declare-fun e!1547 () Int)

(assert (=> d!2002 (= lt!755 e!1547)))

(declare-fun c!950 () Bool)

(assert (=> d!2002 (= c!950 (is-Nil!56 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))))))

(assert (=> d!2002 (= (size!23 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))) lt!755)))

(declare-fun b!2716 () Bool)

(assert (=> b!2716 (= e!1547 0)))

(declare-fun b!2717 () Bool)

(assert (=> b!2717 (= e!1547 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))))))))

(assert (= (and d!2002 c!950) b!2716))

(assert (= (and d!2002 (not c!950)) b!2717))

(declare-fun m!4115 () Bool)

(assert (=> b!2717 m!4115))

(assert (=> b!2484 d!2002))

(declare-fun d!2004 () Bool)

(declare-fun c!951 () Bool)

(assert (=> d!2004 (= c!951 (is-Nil!56 (tail!239 (rear!55 q4!1))))))

(declare-fun e!1548 () (Set (_ BitVec 32)))

(assert (=> d!2004 (= (content!22 (tail!239 (rear!55 q4!1))) e!1548)))

(declare-fun b!2718 () Bool)

(assert (=> b!2718 (= e!1548 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2719 () Bool)

(assert (=> b!2719 (= e!1548 (union (insert (head!227 (tail!239 (rear!55 q4!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (rear!55 q4!1))))))))

(assert (= (and d!2004 c!951) b!2718))

(assert (= (and d!2004 (not c!951)) b!2719))

(declare-fun m!4117 () Bool)

(assert (=> b!2719 m!4117))

(declare-fun m!4119 () Bool)

(assert (=> b!2719 m!4119))

(assert (=> b!2599 d!2004))

(assert (=> b!2521 d!1910))

(declare-fun d!2006 () Bool)

(declare-fun lt!756 () Int)

(assert (=> d!2006 (>= lt!756 0)))

(declare-fun e!1549 () Int)

(assert (=> d!2006 (= lt!756 e!1549)))

(declare-fun c!952 () Bool)

(assert (=> d!2006 (= c!952 (is-Nil!56 (tail!239 (tail!239 (front!53 lt!619)))))))

(assert (=> d!2006 (= (size!23 (tail!239 (tail!239 (front!53 lt!619)))) lt!756)))

(declare-fun b!2720 () Bool)

(assert (=> b!2720 (= e!1549 0)))

(declare-fun b!2721 () Bool)

(assert (=> b!2721 (= e!1549 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (front!53 lt!619)))))))))

(assert (= (and d!2006 c!952) b!2720))

(assert (= (and d!2006 (not c!952)) b!2721))

(declare-fun m!4121 () Bool)

(assert (=> b!2721 m!4121))

(assert (=> b!2586 d!2006))

(declare-fun d!2008 () Bool)

(declare-fun e!1551 () Bool)

(assert (=> d!2008 e!1551))

(declare-fun res!932 () Bool)

(assert (=> d!2008 (=> (not res!932) (not e!1551))))

(declare-fun lt!757 () List!55)

(assert (=> d!2008 (= res!932 (= (size!23 lt!757) (+ (size!23 (tail!239 (tail!239 (front!53 queue!56)))) (size!23 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))))))))

(declare-fun e!1550 () List!55)

(assert (=> d!2008 (= lt!757 e!1550)))

(declare-fun c!953 () Bool)

(assert (=> d!2008 (= c!953 (is-Nil!56 (tail!239 (tail!239 (front!53 queue!56)))))))

(assert (=> d!2008 (= (concat!2 (tail!239 (tail!239 (front!53 queue!56))) (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))) lt!757)))

(declare-fun b!2722 () Bool)

(assert (=> b!2722 (= e!1550 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56))))))

(declare-fun b!2723 () Bool)

(assert (=> b!2723 (= e!1550 (Cons!55 (head!227 (tail!239 (tail!239 (front!53 queue!56)))) (concat!2 (tail!239 (tail!239 (tail!239 (front!53 queue!56)))) (reverse!5 (Cons!55 e1!2 (rear!55 queue!56))))))))

(declare-fun b!2724 () Bool)

(assert (=> b!2724 (= e!1551 (= (content!22 lt!757) (union (content!22 (tail!239 (tail!239 (front!53 queue!56)))) (content!22 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56)))))))))

(assert (= (and d!2008 c!953) b!2722))

(assert (= (and d!2008 (not c!953)) b!2723))

(assert (= (and d!2008 res!932) b!2724))

(declare-fun m!4123 () Bool)

(assert (=> d!2008 m!4123))

(assert (=> d!2008 m!3629))

(assert (=> d!2008 m!3439))

(assert (=> d!2008 m!3529))

(assert (=> b!2723 m!3439))

(declare-fun m!4125 () Bool)

(assert (=> b!2723 m!4125))

(declare-fun m!4127 () Bool)

(assert (=> b!2724 m!4127))

(declare-fun m!4129 () Bool)

(assert (=> b!2724 m!4129))

(assert (=> b!2724 m!3439))

(assert (=> b!2724 m!3537))

(assert (=> b!2558 d!2008))

(declare-fun d!2010 () Bool)

(declare-fun e!1553 () Bool)

(assert (=> d!2010 e!1553))

(declare-fun res!933 () Bool)

(assert (=> d!2010 (=> (not res!933) (not e!1553))))

(declare-fun lt!758 () List!55)

(assert (=> d!2010 (= res!933 (= (size!23 lt!758) (+ (size!23 (tail!239 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))) (size!23 (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56)))))))

(declare-fun e!1552 () List!55)

(assert (=> d!2010 (= lt!758 e!1552)))

(declare-fun c!954 () Bool)

(assert (=> d!2010 (= c!954 (is-Nil!56 (tail!239 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))))))

(assert (=> d!2010 (= (concat!2 (tail!239 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56))))) (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56)) lt!758)))

(declare-fun b!2725 () Bool)

(assert (=> b!2725 (= e!1552 (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56))))

(declare-fun b!2726 () Bool)

(assert (=> b!2726 (= e!1552 (Cons!55 (head!227 (tail!239 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))) (concat!2 (tail!239 (tail!239 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))) (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56))))))

(declare-fun b!2727 () Bool)

(assert (=> b!2727 (= e!1553 (= (content!22 lt!758) (union (content!22 (tail!239 (reverse!5 (tail!239 (Cons!55 e1!2 (rear!55 queue!56)))))) (content!22 (Cons!55 (head!227 (Cons!55 e1!2 (rear!55 queue!56))) Nil!56)))))))

(assert (= (and d!2010 c!954) b!2725))

(assert (= (and d!2010 (not c!954)) b!2726))

(assert (= (and d!2010 res!933) b!2727))

(declare-fun m!4131 () Bool)

(assert (=> d!2010 m!4131))

(assert (=> d!2010 m!4055))

(assert (=> d!2010 m!3717))

(declare-fun m!4133 () Bool)

(assert (=> b!2726 m!4133))

(declare-fun m!4135 () Bool)

(assert (=> b!2727 m!4135))

(assert (=> b!2727 m!4081))

(assert (=> b!2727 m!3725))

(assert (=> b!2508 d!2010))

(declare-fun d!2012 () Bool)

(declare-fun c!955 () Bool)

(assert (=> d!2012 (= c!955 (is-Nil!56 (tail!239 (front!53 queue!56))))))

(declare-fun e!1554 () (Set (_ BitVec 32)))

(assert (=> d!2012 (= (content!22 (tail!239 (front!53 queue!56))) e!1554)))

(declare-fun b!2728 () Bool)

(assert (=> b!2728 (= e!1554 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2729 () Bool)

(assert (=> b!2729 (= e!1554 (union (insert (head!227 (tail!239 (front!53 queue!56))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (front!53 queue!56))))))))

(assert (= (and d!2012 c!955) b!2728))

(assert (= (and d!2012 (not c!955)) b!2729))

(declare-fun m!4137 () Bool)

(assert (=> b!2729 m!4137))

(assert (=> b!2729 m!4129))

(assert (=> b!2541 d!2012))

(declare-fun d!2014 () Bool)

(declare-fun e!1556 () Bool)

(assert (=> d!2014 e!1556))

(declare-fun res!934 () Bool)

(assert (=> d!2014 (=> (not res!934) (not e!1556))))

(declare-fun lt!759 () List!55)

(assert (=> d!2014 (= res!934 (= (size!23 lt!759) (+ (size!23 (tail!239 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))) (size!23 (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56)))))))

(declare-fun e!1555 () List!55)

(assert (=> d!2014 (= lt!759 e!1555)))

(declare-fun c!956 () Bool)

(assert (=> d!2014 (= c!956 (is-Nil!56 (tail!239 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))))))

(assert (=> d!2014 (= (concat!2 (tail!239 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))) (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56)) lt!759)))

(declare-fun b!2730 () Bool)

(assert (=> b!2730 (= e!1555 (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56))))

(declare-fun b!2731 () Bool)

(assert (=> b!2731 (= e!1555 (Cons!55 (head!227 (tail!239 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))) (concat!2 (tail!239 (tail!239 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))) (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56))))))

(declare-fun b!2732 () Bool)

(assert (=> b!2732 (= e!1556 (= (content!22 lt!759) (union (content!22 (tail!239 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1)))))) (content!22 (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56)))))))

(assert (= (and d!2014 c!956) b!2730))

(assert (= (and d!2014 (not c!956)) b!2731))

(assert (= (and d!2014 res!934) b!2732))

(declare-fun m!4139 () Bool)

(assert (=> d!2014 m!4139))

(assert (=> d!2014 m!3969))

(assert (=> d!2014 m!3753))

(declare-fun m!4141 () Bool)

(assert (=> b!2731 m!4141))

(declare-fun m!4143 () Bool)

(assert (=> b!2732 m!4143))

(declare-fun m!4145 () Bool)

(assert (=> b!2732 m!4145))

(assert (=> b!2732 m!3761))

(assert (=> b!2525 d!2014))

(declare-fun d!2016 () Bool)

(declare-fun lt!760 () Int)

(assert (=> d!2016 (>= lt!760 0)))

(declare-fun e!1557 () Int)

(assert (=> d!2016 (= lt!760 e!1557)))

(declare-fun c!957 () Bool)

(assert (=> d!2016 (= c!957 (is-Nil!56 lt!709))))

(assert (=> d!2016 (= (size!23 lt!709) lt!760)))

(declare-fun b!2733 () Bool)

(assert (=> b!2733 (= e!1557 0)))

(declare-fun b!2734 () Bool)

(assert (=> b!2734 (= e!1557 (+ 1 (size!23 (tail!239 lt!709))))))

(assert (= (and d!2016 c!957) b!2733))

(assert (= (and d!2016 (not c!957)) b!2734))

(declare-fun m!4147 () Bool)

(assert (=> b!2734 m!4147))

(assert (=> d!1866 d!2016))

(declare-fun d!2018 () Bool)

(declare-fun lt!761 () Int)

(assert (=> d!2018 (>= lt!761 0)))

(declare-fun e!1558 () Int)

(assert (=> d!2018 (= lt!761 e!1558)))

(declare-fun c!958 () Bool)

(assert (=> d!2018 (= c!958 (is-Nil!56 (reverse!5 (tail!239 (rear!55 q3!1)))))))

(assert (=> d!2018 (= (size!23 (reverse!5 (tail!239 (rear!55 q3!1)))) lt!761)))

(declare-fun b!2735 () Bool)

(assert (=> b!2735 (= e!1558 0)))

(declare-fun b!2736 () Bool)

(assert (=> b!2736 (= e!1558 (+ 1 (size!23 (tail!239 (reverse!5 (tail!239 (rear!55 q3!1)))))))))

(assert (= (and d!2018 c!958) b!2735))

(assert (= (and d!2018 (not c!958)) b!2736))

(assert (=> b!2736 m!3939))

(assert (=> d!1866 d!2018))

(declare-fun d!2020 () Bool)

(declare-fun lt!762 () Int)

(assert (=> d!2020 (>= lt!762 0)))

(declare-fun e!1559 () Int)

(assert (=> d!2020 (= lt!762 e!1559)))

(declare-fun c!959 () Bool)

(assert (=> d!2020 (= c!959 (is-Nil!56 (Cons!55 (head!227 (rear!55 q3!1)) Nil!56)))))

(assert (=> d!2020 (= (size!23 (Cons!55 (head!227 (rear!55 q3!1)) Nil!56)) lt!762)))

(declare-fun b!2737 () Bool)

(assert (=> b!2737 (= e!1559 0)))

(declare-fun b!2738 () Bool)

(assert (=> b!2738 (= e!1559 (+ 1 (size!23 (tail!239 (Cons!55 (head!227 (rear!55 q3!1)) Nil!56)))))))

(assert (= (and d!2020 c!959) b!2737))

(assert (= (and d!2020 (not c!959)) b!2738))

(declare-fun m!4149 () Bool)

(assert (=> b!2738 m!4149))

(assert (=> d!1866 d!2020))

(declare-fun d!2022 () Bool)

(declare-fun c!960 () Bool)

(assert (=> d!2022 (= c!960 (is-Nil!56 (tail!239 lt!665)))))

(declare-fun e!1560 () (Set (_ BitVec 32)))

(assert (=> d!2022 (= (content!22 (tail!239 lt!665)) e!1560)))

(declare-fun b!2739 () Bool)

(assert (=> b!2739 (= e!1560 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2740 () Bool)

(assert (=> b!2740 (= e!1560 (union (insert (head!227 (tail!239 lt!665)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 lt!665)))))))

(assert (= (and d!2022 c!960) b!2739))

(assert (= (and d!2022 (not c!960)) b!2740))

(declare-fun m!4151 () Bool)

(assert (=> b!2740 m!4151))

(declare-fun m!4153 () Bool)

(assert (=> b!2740 m!4153))

(assert (=> b!2519 d!2022))

(declare-fun d!2024 () Bool)

(declare-fun lt!763 () Int)

(assert (=> d!2024 (>= lt!763 0)))

(declare-fun e!1561 () Int)

(assert (=> d!2024 (= lt!763 e!1561)))

(declare-fun c!961 () Bool)

(assert (=> d!2024 (= c!961 (is-Nil!56 (tail!239 (rear!55 lt!623))))))

(assert (=> d!2024 (= (size!23 (tail!239 (rear!55 lt!623))) lt!763)))

(declare-fun b!2741 () Bool)

(assert (=> b!2741 (= e!1561 0)))

(declare-fun b!2742 () Bool)

(assert (=> b!2742 (= e!1561 (+ 1 (size!23 (tail!239 (tail!239 (rear!55 lt!623))))))))

(assert (= (and d!2024 c!961) b!2741))

(assert (= (and d!2024 (not c!961)) b!2742))

(declare-fun m!4155 () Bool)

(assert (=> b!2742 m!4155))

(assert (=> b!2517 d!2024))

(declare-fun d!2026 () Bool)

(declare-fun c!962 () Bool)

(assert (=> d!2026 (= c!962 (is-Nil!56 (tail!239 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1))))))))

(declare-fun e!1562 () (Set (_ BitVec 32)))

(assert (=> d!2026 (= (content!22 (tail!239 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1))))) e!1562)))

(declare-fun b!2743 () Bool)

(assert (=> b!2743 (= e!1562 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2744 () Bool)

(assert (=> b!2744 (= e!1562 (union (insert (head!227 (tail!239 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1))))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (reverse!5 (Cons!55 e3!1 (rear!55 q2!1))))))))))

(assert (= (and d!2026 c!962) b!2743))

(assert (= (and d!2026 (not c!962)) b!2744))

(declare-fun m!4157 () Bool)

(assert (=> b!2744 m!4157))

(declare-fun m!4159 () Bool)

(assert (=> b!2744 m!4159))

(assert (=> b!2472 d!2026))

(declare-fun d!2028 () Bool)

(declare-fun lt!764 () Int)

(assert (=> d!2028 (>= lt!764 0)))

(declare-fun e!1563 () Int)

(assert (=> d!2028 (= lt!764 e!1563)))

(declare-fun c!963 () Bool)

(assert (=> d!2028 (= c!963 (is-Nil!56 (tail!239 (front!53 lt!627))))))

(assert (=> d!2028 (= (size!23 (tail!239 (front!53 lt!627))) lt!764)))

(declare-fun b!2745 () Bool)

(assert (=> b!2745 (= e!1563 0)))

(declare-fun b!2746 () Bool)

(assert (=> b!2746 (= e!1563 (+ 1 (size!23 (tail!239 (tail!239 (front!53 lt!627))))))))

(assert (= (and d!2028 c!963) b!2745))

(assert (= (and d!2028 (not c!963)) b!2746))

(declare-fun m!4161 () Bool)

(assert (=> b!2746 m!4161))

(assert (=> b!2464 d!2028))

(declare-fun d!2030 () Bool)

(declare-fun c!964 () Bool)

(assert (=> d!2030 (= c!964 (is-Nil!56 lt!710))))

(declare-fun e!1564 () (Set (_ BitVec 32)))

(assert (=> d!2030 (= (content!22 lt!710) e!1564)))

(declare-fun b!2747 () Bool)

(assert (=> b!2747 (= e!1564 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2748 () Bool)

(assert (=> b!2748 (= e!1564 (union (insert (head!227 lt!710) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!710))))))

(assert (= (and d!2030 c!964) b!2747))

(assert (= (and d!2030 (not c!964)) b!2748))

(declare-fun m!4163 () Bool)

(assert (=> b!2748 m!4163))

(declare-fun m!4165 () Bool)

(assert (=> b!2748 m!4165))

(assert (=> d!1868 d!2030))

(declare-fun d!2032 () Bool)

(declare-fun c!965 () Bool)

(assert (=> d!2032 (= c!965 (is-Nil!56 (tail!239 (rear!55 q3!1))))))

(declare-fun e!1565 () (Set (_ BitVec 32)))

(assert (=> d!2032 (= (content!22 (tail!239 (rear!55 q3!1))) e!1565)))

(declare-fun b!2749 () Bool)

(assert (=> b!2749 (= e!1565 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2750 () Bool)

(assert (=> b!2750 (= e!1565 (union (insert (head!227 (tail!239 (rear!55 q3!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (rear!55 q3!1))))))))

(assert (= (and d!2032 c!965) b!2749))

(assert (= (and d!2032 (not c!965)) b!2750))

(declare-fun m!4167 () Bool)

(assert (=> b!2750 m!4167))

(declare-fun m!4169 () Bool)

(assert (=> b!2750 m!4169))

(assert (=> d!1868 d!2032))

(declare-fun d!2034 () Bool)

(declare-fun lt!765 () Int)

(assert (=> d!2034 (>= lt!765 0)))

(declare-fun e!1566 () Int)

(assert (=> d!2034 (= lt!765 e!1566)))

(declare-fun c!966 () Bool)

(assert (=> d!2034 (= c!966 (is-Nil!56 lt!719))))

(assert (=> d!2034 (= (size!23 lt!719) lt!765)))

(declare-fun b!2751 () Bool)

(assert (=> b!2751 (= e!1566 0)))

(declare-fun b!2752 () Bool)

(assert (=> b!2752 (= e!1566 (+ 1 (size!23 (tail!239 lt!719))))))

(assert (= (and d!2034 c!966) b!2751))

(assert (= (and d!2034 (not c!966)) b!2752))

(declare-fun m!4171 () Bool)

(assert (=> b!2752 m!4171))

(assert (=> d!1894 d!2034))

(declare-fun d!2036 () Bool)

(declare-fun lt!766 () Int)

(assert (=> d!2036 (>= lt!766 0)))

(declare-fun e!1567 () Int)

(assert (=> d!2036 (= lt!766 e!1567)))

(declare-fun c!967 () Bool)

(assert (=> d!2036 (= c!967 (is-Nil!56 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))))))

(assert (=> d!2036 (= (size!23 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))) lt!766)))

(declare-fun b!2753 () Bool)

(assert (=> b!2753 (= e!1567 0)))

(declare-fun b!2754 () Bool)

(assert (=> b!2754 (= e!1567 (+ 1 (size!23 (tail!239 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))))))))

(assert (= (and d!2036 c!967) b!2753))

(assert (= (and d!2036 (not c!967)) b!2754))

(assert (=> b!2754 m!4039))

(assert (=> d!1894 d!2036))

(declare-fun d!2038 () Bool)

(declare-fun lt!767 () Int)

(assert (=> d!2038 (>= lt!767 0)))

(declare-fun e!1568 () Int)

(assert (=> d!2038 (= lt!767 e!1568)))

(declare-fun c!968 () Bool)

(assert (=> d!2038 (= c!968 (is-Nil!56 (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56)))))

(assert (=> d!2038 (= (size!23 (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56)) lt!767)))

(declare-fun b!2755 () Bool)

(assert (=> b!2755 (= e!1568 0)))

(declare-fun b!2756 () Bool)

(assert (=> b!2756 (= e!1568 (+ 1 (size!23 (tail!239 (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56)))))))

(assert (= (and d!2038 c!968) b!2755))

(assert (= (and d!2038 (not c!968)) b!2756))

(declare-fun m!4173 () Bool)

(assert (=> b!2756 m!4173))

(assert (=> d!1894 d!2038))

(declare-fun d!2040 () Bool)

(declare-fun lt!768 () Int)

(assert (=> d!2040 (>= lt!768 0)))

(declare-fun e!1569 () Int)

(assert (=> d!2040 (= lt!768 e!1569)))

(declare-fun c!969 () Bool)

(assert (=> d!2040 (= c!969 (is-Nil!56 (tail!239 (tail!239 (rear!55 lt!619)))))))

(assert (=> d!2040 (= (size!23 (tail!239 (tail!239 (rear!55 lt!619)))) lt!768)))

(declare-fun b!2757 () Bool)

(assert (=> b!2757 (= e!1569 0)))

(declare-fun b!2758 () Bool)

(assert (=> b!2758 (= e!1569 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (rear!55 lt!619)))))))))

(assert (= (and d!2040 c!969) b!2757))

(assert (= (and d!2040 (not c!969)) b!2758))

(declare-fun m!4175 () Bool)

(assert (=> b!2758 m!4175))

(assert (=> b!2442 d!2040))

(declare-fun d!2042 () Bool)

(declare-fun lt!769 () Int)

(assert (=> d!2042 (>= lt!769 0)))

(declare-fun e!1570 () Int)

(assert (=> d!2042 (= lt!769 e!1570)))

(declare-fun c!970 () Bool)

(assert (=> d!2042 (= c!970 (is-Nil!56 lt!667))))

(assert (=> d!2042 (= (size!23 lt!667) lt!769)))

(declare-fun b!2759 () Bool)

(assert (=> b!2759 (= e!1570 0)))

(declare-fun b!2760 () Bool)

(assert (=> b!2760 (= e!1570 (+ 1 (size!23 (tail!239 lt!667))))))

(assert (= (and d!2042 c!970) b!2759))

(assert (= (and d!2042 (not c!970)) b!2760))

(declare-fun m!4177 () Bool)

(assert (=> b!2760 m!4177))

(assert (=> d!1746 d!2042))

(assert (=> d!1746 d!1886))

(assert (=> d!1746 d!1844))

(declare-fun d!2044 () Bool)

(declare-fun e!1572 () Bool)

(assert (=> d!2044 e!1572))

(declare-fun res!935 () Bool)

(assert (=> d!2044 (=> (not res!935) (not e!1572))))

(declare-fun lt!770 () List!55)

(assert (=> d!2044 (= res!935 (= (size!23 lt!770) (+ (size!23 (reverse!5 (tail!239 (tail!239 (rear!55 q3!1))))) (size!23 (Cons!55 (head!227 (tail!239 (rear!55 q3!1))) Nil!56)))))))

(declare-fun e!1571 () List!55)

(assert (=> d!2044 (= lt!770 e!1571)))

(declare-fun c!971 () Bool)

(assert (=> d!2044 (= c!971 (is-Nil!56 (reverse!5 (tail!239 (tail!239 (rear!55 q3!1))))))))

(assert (=> d!2044 (= (concat!2 (reverse!5 (tail!239 (tail!239 (rear!55 q3!1)))) (Cons!55 (head!227 (tail!239 (rear!55 q3!1))) Nil!56)) lt!770)))

(declare-fun b!2761 () Bool)

(assert (=> b!2761 (= e!1571 (Cons!55 (head!227 (tail!239 (rear!55 q3!1))) Nil!56))))

(declare-fun b!2762 () Bool)

(assert (=> b!2762 (= e!1571 (Cons!55 (head!227 (reverse!5 (tail!239 (tail!239 (rear!55 q3!1))))) (concat!2 (tail!239 (reverse!5 (tail!239 (tail!239 (rear!55 q3!1))))) (Cons!55 (head!227 (tail!239 (rear!55 q3!1))) Nil!56))))))

(declare-fun b!2763 () Bool)

(assert (=> b!2763 (= e!1572 (= (content!22 lt!770) (union (content!22 (reverse!5 (tail!239 (tail!239 (rear!55 q3!1))))) (content!22 (Cons!55 (head!227 (tail!239 (rear!55 q3!1))) Nil!56)))))))

(assert (= (and d!2044 c!971) b!2761))

(assert (= (and d!2044 (not c!971)) b!2762))

(assert (= (and d!2044 res!935) b!2763))

(declare-fun m!4179 () Bool)

(assert (=> d!2044 m!4179))

(assert (=> d!2044 m!3857))

(declare-fun m!4181 () Bool)

(assert (=> d!2044 m!4181))

(declare-fun m!4183 () Bool)

(assert (=> d!2044 m!4183))

(declare-fun m!4185 () Bool)

(assert (=> b!2762 m!4185))

(declare-fun m!4187 () Bool)

(assert (=> b!2763 m!4187))

(assert (=> b!2763 m!3857))

(declare-fun m!4189 () Bool)

(assert (=> b!2763 m!4189))

(declare-fun m!4191 () Bool)

(assert (=> b!2763 m!4191))

(assert (=> b!2574 d!2044))

(declare-fun d!2046 () Bool)

(declare-fun lt!771 () List!55)

(assert (=> d!2046 (= (content!22 lt!771) (content!22 (tail!239 (tail!239 (rear!55 q3!1)))))))

(declare-fun e!1573 () List!55)

(assert (=> d!2046 (= lt!771 e!1573)))

(declare-fun c!972 () Bool)

(assert (=> d!2046 (= c!972 (is-Nil!56 (tail!239 (tail!239 (rear!55 q3!1)))))))

(assert (=> d!2046 (= (reverse!5 (tail!239 (tail!239 (rear!55 q3!1)))) lt!771)))

(declare-fun b!2764 () Bool)

(assert (=> b!2764 (= e!1573 Nil!56)))

(declare-fun b!2765 () Bool)

(assert (=> b!2765 (= e!1573 (concat!2 (reverse!5 (tail!239 (tail!239 (tail!239 (rear!55 q3!1))))) (Cons!55 (head!227 (tail!239 (tail!239 (rear!55 q3!1)))) Nil!56)))))

(assert (= (and d!2046 c!972) b!2764))

(assert (= (and d!2046 (not c!972)) b!2765))

(declare-fun m!4193 () Bool)

(assert (=> d!2046 m!4193))

(assert (=> d!2046 m!4169))

(declare-fun m!4195 () Bool)

(assert (=> b!2765 m!4195))

(assert (=> b!2765 m!4195))

(declare-fun m!4197 () Bool)

(assert (=> b!2765 m!4197))

(assert (=> b!2574 d!2046))

(declare-fun d!2048 () Bool)

(declare-fun c!973 () Bool)

(assert (=> d!2048 (= c!973 (is-Nil!56 lt!691))))

(declare-fun e!1574 () (Set (_ BitVec 32)))

(assert (=> d!2048 (= (content!22 lt!691) e!1574)))

(declare-fun b!2766 () Bool)

(assert (=> b!2766 (= e!1574 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2767 () Bool)

(assert (=> b!2767 (= e!1574 (union (insert (head!227 lt!691) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!691))))))

(assert (= (and d!2048 c!973) b!2766))

(assert (= (and d!2048 (not c!973)) b!2767))

(declare-fun m!4199 () Bool)

(assert (=> b!2767 m!4199))

(declare-fun m!4201 () Bool)

(assert (=> b!2767 m!4201))

(assert (=> b!2526 d!2048))

(declare-fun d!2050 () Bool)

(declare-fun c!974 () Bool)

(assert (=> d!2050 (= c!974 (is-Nil!56 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))))))

(declare-fun e!1575 () (Set (_ BitVec 32)))

(assert (=> d!2050 (= (content!22 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))) e!1575)))

(declare-fun b!2768 () Bool)

(assert (=> b!2768 (= e!1575 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2769 () Bool)

(assert (=> b!2769 (= e!1575 (union (insert (head!227 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (reverse!5 (tail!239 (Cons!55 e2!3 (rear!55 q1!1))))))))))

(assert (= (and d!2050 c!974) b!2768))

(assert (= (and d!2050 (not c!974)) b!2769))

(declare-fun m!4203 () Bool)

(assert (=> b!2769 m!4203))

(assert (=> b!2769 m!4145))

(assert (=> b!2526 d!2050))

(declare-fun d!2052 () Bool)

(declare-fun c!975 () Bool)

(assert (=> d!2052 (= c!975 (is-Nil!56 (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56)))))

(declare-fun e!1576 () (Set (_ BitVec 32)))

(assert (=> d!2052 (= (content!22 (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56)) e!1576)))

(declare-fun b!2770 () Bool)

(assert (=> b!2770 (= e!1576 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2771 () Bool)

(assert (=> b!2771 (= e!1576 (union (insert (head!227 (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (Cons!55 (head!227 (Cons!55 e2!3 (rear!55 q1!1))) Nil!56)))))))

(assert (= (and d!2052 c!975) b!2770))

(assert (= (and d!2052 (not c!975)) b!2771))

(declare-fun m!4205 () Bool)

(assert (=> b!2771 m!4205))

(declare-fun m!4207 () Bool)

(assert (=> b!2771 m!4207))

(assert (=> b!2526 d!2052))

(declare-fun d!2054 () Bool)

(declare-fun e!1578 () Bool)

(assert (=> d!2054 e!1578))

(declare-fun res!936 () Bool)

(assert (=> d!2054 (=> (not res!936) (not e!1578))))

(declare-fun lt!772 () List!55)

(assert (=> d!2054 (= res!936 (= (size!23 lt!772) (+ (size!23 (tail!239 (reverse!5 (tail!239 (rear!55 q4!1))))) (size!23 (Cons!55 (head!227 (rear!55 q4!1)) Nil!56)))))))

(declare-fun e!1577 () List!55)

(assert (=> d!2054 (= lt!772 e!1577)))

(declare-fun c!976 () Bool)

(assert (=> d!2054 (= c!976 (is-Nil!56 (tail!239 (reverse!5 (tail!239 (rear!55 q4!1))))))))

(assert (=> d!2054 (= (concat!2 (tail!239 (reverse!5 (tail!239 (rear!55 q4!1)))) (Cons!55 (head!227 (rear!55 q4!1)) Nil!56)) lt!772)))

(declare-fun b!2772 () Bool)

(assert (=> b!2772 (= e!1577 (Cons!55 (head!227 (rear!55 q4!1)) Nil!56))))

(declare-fun b!2773 () Bool)

(assert (=> b!2773 (= e!1577 (Cons!55 (head!227 (tail!239 (reverse!5 (tail!239 (rear!55 q4!1))))) (concat!2 (tail!239 (tail!239 (reverse!5 (tail!239 (rear!55 q4!1))))) (Cons!55 (head!227 (rear!55 q4!1)) Nil!56))))))

(declare-fun b!2774 () Bool)

(assert (=> b!2774 (= e!1578 (= (content!22 lt!772) (union (content!22 (tail!239 (reverse!5 (tail!239 (rear!55 q4!1))))) (content!22 (Cons!55 (head!227 (rear!55 q4!1)) Nil!56)))))))

(assert (= (and d!2054 c!976) b!2772))

(assert (= (and d!2054 (not c!976)) b!2773))

(assert (= (and d!2054 res!936) b!2774))

(declare-fun m!4209 () Bool)

(assert (=> d!2054 m!4209))

(assert (=> d!2054 m!3921))

(assert (=> d!2054 m!3775))

(declare-fun m!4211 () Bool)

(assert (=> b!2773 m!4211))

(declare-fun m!4213 () Bool)

(assert (=> b!2774 m!4213))

(declare-fun m!4215 () Bool)

(assert (=> b!2774 m!4215))

(assert (=> b!2774 m!3783))

(assert (=> b!2530 d!2054))

(declare-fun d!2056 () Bool)

(declare-fun lt!773 () Int)

(assert (=> d!2056 (>= lt!773 0)))

(declare-fun e!1579 () Int)

(assert (=> d!2056 (= lt!773 e!1579)))

(declare-fun c!977 () Bool)

(assert (=> d!2056 (= c!977 (is-Nil!56 (tail!239 (tail!239 (front!53 q2!1)))))))

(assert (=> d!2056 (= (size!23 (tail!239 (tail!239 (front!53 q2!1)))) lt!773)))

(declare-fun b!2775 () Bool)

(assert (=> b!2775 (= e!1579 0)))

(declare-fun b!2776 () Bool)

(assert (=> b!2776 (= e!1579 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (front!53 q2!1)))))))))

(assert (= (and d!2056 c!977) b!2775))

(assert (= (and d!2056 (not c!977)) b!2776))

(declare-fun m!4217 () Bool)

(assert (=> b!2776 m!4217))

(assert (=> b!2504 d!2056))

(declare-fun d!2058 () Bool)

(declare-fun lt!774 () Int)

(assert (=> d!2058 (>= lt!774 0)))

(declare-fun e!1580 () Int)

(assert (=> d!2058 (= lt!774 e!1580)))

(declare-fun c!978 () Bool)

(assert (=> d!2058 (= c!978 (is-Nil!56 lt!703))))

(assert (=> d!2058 (= (size!23 lt!703) lt!774)))

(declare-fun b!2777 () Bool)

(assert (=> b!2777 (= e!1580 0)))

(declare-fun b!2778 () Bool)

(assert (=> b!2778 (= e!1580 (+ 1 (size!23 (tail!239 lt!703))))))

(assert (= (and d!2058 c!978) b!2777))

(assert (= (and d!2058 (not c!978)) b!2778))

(declare-fun m!4219 () Bool)

(assert (=> b!2778 m!4219))

(assert (=> d!1854 d!2058))

(assert (=> d!1854 d!1754))

(assert (=> d!1854 d!1752))

(declare-fun d!2060 () Bool)

(declare-fun lt!775 () Int)

(assert (=> d!2060 (>= lt!775 0)))

(declare-fun e!1581 () Int)

(assert (=> d!2060 (= lt!775 e!1581)))

(declare-fun c!979 () Bool)

(assert (=> d!2060 (= c!979 (is-Nil!56 (tail!239 (tail!239 (tail!239 (front!53 q4!1))))))))

(assert (=> d!2060 (= (size!23 (tail!239 (tail!239 (tail!239 (front!53 q4!1))))) lt!775)))

(declare-fun b!2779 () Bool)

(assert (=> b!2779 (= e!1581 0)))

(declare-fun b!2780 () Bool)

(assert (=> b!2780 (= e!1581 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (tail!239 (front!53 q4!1))))))))))

(assert (= (and d!2060 c!979) b!2779))

(assert (= (and d!2060 (not c!979)) b!2780))

(declare-fun m!4221 () Bool)

(assert (=> b!2780 m!4221))

(assert (=> b!2593 d!2060))

(declare-fun d!2062 () Bool)

(declare-fun lt!776 () Int)

(assert (=> d!2062 (>= lt!776 0)))

(declare-fun e!1582 () Int)

(assert (=> d!2062 (= lt!776 e!1582)))

(declare-fun c!980 () Bool)

(assert (=> d!2062 (= c!980 (is-Nil!56 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))))))

(assert (=> d!2062 (= (size!23 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))) lt!776)))

(declare-fun b!2781 () Bool)

(assert (=> b!2781 (= e!1582 0)))

(declare-fun b!2782 () Bool)

(assert (=> b!2782 (= e!1582 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))))))))

(assert (= (and d!2062 c!980) b!2781))

(assert (= (and d!2062 (not c!980)) b!2782))

(declare-fun m!4223 () Bool)

(assert (=> b!2782 m!4223))

(assert (=> b!2498 d!2062))

(declare-fun d!2064 () Bool)

(declare-fun lt!777 () Int)

(assert (=> d!2064 (>= lt!777 0)))

(declare-fun e!1583 () Int)

(assert (=> d!2064 (= lt!777 e!1583)))

(declare-fun c!981 () Bool)

(assert (=> d!2064 (= c!981 (is-Nil!56 (tail!239 (tail!239 (front!53 lt!615)))))))

(assert (=> d!2064 (= (size!23 (tail!239 (tail!239 (front!53 lt!615)))) lt!777)))

(declare-fun b!2783 () Bool)

(assert (=> b!2783 (= e!1583 0)))

(declare-fun b!2784 () Bool)

(assert (=> b!2784 (= e!1583 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (front!53 lt!615)))))))))

(assert (= (and d!2064 c!981) b!2783))

(assert (= (and d!2064 (not c!981)) b!2784))

(declare-fun m!4225 () Bool)

(assert (=> b!2784 m!4225))

(assert (=> b!2459 d!2064))

(declare-fun d!2066 () Bool)

(declare-fun lt!778 () Int)

(assert (=> d!2066 (>= lt!778 0)))

(declare-fun e!1584 () Int)

(assert (=> d!2066 (= lt!778 e!1584)))

(declare-fun c!982 () Bool)

(assert (=> d!2066 (= c!982 (is-Nil!56 (tail!239 lt!648)))))

(assert (=> d!2066 (= (size!23 (tail!239 lt!648)) lt!778)))

(declare-fun b!2785 () Bool)

(assert (=> b!2785 (= e!1584 0)))

(declare-fun b!2786 () Bool)

(assert (=> b!2786 (= e!1584 (+ 1 (size!23 (tail!239 (tail!239 lt!648)))))))

(assert (= (and d!2066 c!982) b!2785))

(assert (= (and d!2066 (not c!982)) b!2786))

(declare-fun m!4227 () Bool)

(assert (=> b!2786 m!4227))

(assert (=> b!2567 d!2066))

(declare-fun d!2068 () Bool)

(declare-fun lt!779 () Int)

(assert (=> d!2068 (>= lt!779 0)))

(declare-fun e!1585 () Int)

(assert (=> d!2068 (= lt!779 e!1585)))

(declare-fun c!983 () Bool)

(assert (=> d!2068 (= c!983 (is-Nil!56 lt!673))))

(assert (=> d!2068 (= (size!23 lt!673) lt!779)))

(declare-fun b!2787 () Bool)

(assert (=> b!2787 (= e!1585 0)))

(declare-fun b!2788 () Bool)

(assert (=> b!2788 (= e!1585 (+ 1 (size!23 (tail!239 lt!673))))))

(assert (= (and d!2068 c!983) b!2787))

(assert (= (and d!2068 (not c!983)) b!2788))

(declare-fun m!4229 () Bool)

(assert (=> b!2788 m!4229))

(assert (=> d!1762 d!2068))

(assert (=> d!1762 d!1804))

(assert (=> d!1762 d!1802))

(declare-fun d!2070 () Bool)

(declare-fun lt!780 () Int)

(assert (=> d!2070 (>= lt!780 0)))

(declare-fun e!1586 () Int)

(assert (=> d!2070 (= lt!780 e!1586)))

(declare-fun c!984 () Bool)

(assert (=> d!2070 (= c!984 (is-Nil!56 (tail!239 (tail!239 (tail!239 (front!53 q3!1))))))))

(assert (=> d!2070 (= (size!23 (tail!239 (tail!239 (tail!239 (front!53 q3!1))))) lt!780)))

(declare-fun b!2789 () Bool)

(assert (=> b!2789 (= e!1586 0)))

(declare-fun b!2790 () Bool)

(assert (=> b!2790 (= e!1586 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (tail!239 (front!53 q3!1))))))))))

(assert (= (and d!2070 c!984) b!2789))

(assert (= (and d!2070 (not c!984)) b!2790))

(declare-fun m!4231 () Bool)

(assert (=> b!2790 m!4231))

(assert (=> b!2486 d!2070))

(declare-fun d!2072 () Bool)

(declare-fun lt!781 () Int)

(assert (=> d!2072 (>= lt!781 0)))

(declare-fun e!1587 () Int)

(assert (=> d!2072 (= lt!781 e!1587)))

(declare-fun c!985 () Bool)

(assert (=> d!2072 (= c!985 (is-Nil!56 (tail!239 (tail!239 (front!53 q1!1)))))))

(assert (=> d!2072 (= (size!23 (tail!239 (tail!239 (front!53 q1!1)))) lt!781)))

(declare-fun b!2791 () Bool)

(assert (=> b!2791 (= e!1587 0)))

(declare-fun b!2792 () Bool)

(assert (=> b!2792 (= e!1587 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (front!53 q1!1)))))))))

(assert (= (and d!2072 c!985) b!2791))

(assert (= (and d!2072 (not c!985)) b!2792))

(declare-fun m!4233 () Bool)

(assert (=> b!2792 m!4233))

(assert (=> b!2523 d!2072))

(assert (=> b!2482 d!1956))

(declare-fun d!2074 () Bool)

(declare-fun lt!782 () Int)

(assert (=> d!2074 (>= lt!782 0)))

(declare-fun e!1588 () Int)

(assert (=> d!2074 (= lt!782 e!1588)))

(declare-fun c!986 () Bool)

(assert (=> d!2074 (= c!986 (is-Nil!56 (tail!239 (rear!55 lt!626))))))

(assert (=> d!2074 (= (size!23 (tail!239 (rear!55 lt!626))) lt!782)))

(declare-fun b!2793 () Bool)

(assert (=> b!2793 (= e!1588 0)))

(declare-fun b!2794 () Bool)

(assert (=> b!2794 (= e!1588 (+ 1 (size!23 (tail!239 (tail!239 (rear!55 lt!626))))))))

(assert (= (and d!2074 c!986) b!2793))

(assert (= (and d!2074 (not c!986)) b!2794))

(declare-fun m!4235 () Bool)

(assert (=> b!2794 m!4235))

(assert (=> b!2496 d!2074))

(assert (=> b!2490 d!1962))

(declare-fun d!2076 () Bool)

(declare-fun c!987 () Bool)

(assert (=> d!2076 (= c!987 (is-Nil!56 lt!709))))

(declare-fun e!1589 () (Set (_ BitVec 32)))

(assert (=> d!2076 (= (content!22 lt!709) e!1589)))

(declare-fun b!2795 () Bool)

(assert (=> b!2795 (= e!1589 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2796 () Bool)

(assert (=> b!2796 (= e!1589 (union (insert (head!227 lt!709) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!709))))))

(assert (= (and d!2076 c!987) b!2795))

(assert (= (and d!2076 (not c!987)) b!2796))

(declare-fun m!4237 () Bool)

(assert (=> b!2796 m!4237))

(declare-fun m!4239 () Bool)

(assert (=> b!2796 m!4239))

(assert (=> b!2572 d!2076))

(declare-fun d!2078 () Bool)

(declare-fun c!988 () Bool)

(assert (=> d!2078 (= c!988 (is-Nil!56 (reverse!5 (tail!239 (rear!55 q3!1)))))))

(declare-fun e!1590 () (Set (_ BitVec 32)))

(assert (=> d!2078 (= (content!22 (reverse!5 (tail!239 (rear!55 q3!1)))) e!1590)))

(declare-fun b!2797 () Bool)

(assert (=> b!2797 (= e!1590 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2798 () Bool)

(assert (=> b!2798 (= e!1590 (union (insert (head!227 (reverse!5 (tail!239 (rear!55 q3!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (reverse!5 (tail!239 (rear!55 q3!1)))))))))

(assert (= (and d!2078 c!988) b!2797))

(assert (= (and d!2078 (not c!988)) b!2798))

(declare-fun m!4241 () Bool)

(assert (=> b!2798 m!4241))

(assert (=> b!2798 m!3945))

(assert (=> b!2572 d!2078))

(declare-fun d!2080 () Bool)

(declare-fun c!989 () Bool)

(assert (=> d!2080 (= c!989 (is-Nil!56 (Cons!55 (head!227 (rear!55 q3!1)) Nil!56)))))

(declare-fun e!1591 () (Set (_ BitVec 32)))

(assert (=> d!2080 (= (content!22 (Cons!55 (head!227 (rear!55 q3!1)) Nil!56)) e!1591)))

(declare-fun b!2799 () Bool)

(assert (=> b!2799 (= e!1591 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2800 () Bool)

(assert (=> b!2800 (= e!1591 (union (insert (head!227 (Cons!55 (head!227 (rear!55 q3!1)) Nil!56)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (Cons!55 (head!227 (rear!55 q3!1)) Nil!56)))))))

(assert (= (and d!2080 c!989) b!2799))

(assert (= (and d!2080 (not c!989)) b!2800))

(declare-fun m!4243 () Bool)

(assert (=> b!2800 m!4243))

(declare-fun m!4245 () Bool)

(assert (=> b!2800 m!4245))

(assert (=> b!2572 d!2080))

(assert (=> b!2457 d!2032))

(declare-fun d!2082 () Bool)

(declare-fun lt!783 () Int)

(assert (=> d!2082 (>= lt!783 0)))

(declare-fun e!1592 () Int)

(assert (=> d!2082 (= lt!783 e!1592)))

(declare-fun c!990 () Bool)

(assert (=> d!2082 (= c!990 (is-Nil!56 (tail!239 (rear!55 lt!627))))))

(assert (=> d!2082 (= (size!23 (tail!239 (rear!55 lt!627))) lt!783)))

(declare-fun b!2801 () Bool)

(assert (=> b!2801 (= e!1592 0)))

(declare-fun b!2802 () Bool)

(assert (=> b!2802 (= e!1592 (+ 1 (size!23 (tail!239 (tail!239 (rear!55 lt!627))))))))

(assert (= (and d!2082 c!990) b!2801))

(assert (= (and d!2082 (not c!990)) b!2802))

(declare-fun m!4247 () Bool)

(assert (=> b!2802 m!4247))

(assert (=> b!2466 d!2082))

(declare-fun d!2084 () Bool)

(declare-fun c!991 () Bool)

(assert (=> d!2084 (= c!991 (is-Nil!56 (tail!239 lt!661)))))

(declare-fun e!1593 () (Set (_ BitVec 32)))

(assert (=> d!2084 (= (content!22 (tail!239 lt!661)) e!1593)))

(declare-fun b!2803 () Bool)

(assert (=> b!2803 (= e!1593 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2804 () Bool)

(assert (=> b!2804 (= e!1593 (union (insert (head!227 (tail!239 lt!661)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 lt!661)))))))

(assert (= (and d!2084 c!991) b!2803))

(assert (= (and d!2084 (not c!991)) b!2804))

(declare-fun m!4249 () Bool)

(assert (=> b!2804 m!4249))

(declare-fun m!4251 () Bool)

(assert (=> b!2804 m!4251))

(assert (=> b!2597 d!2084))

(declare-fun d!2086 () Bool)

(declare-fun c!992 () Bool)

(assert (=> d!2086 (= c!992 (is-Nil!56 lt!667))))

(declare-fun e!1594 () (Set (_ BitVec 32)))

(assert (=> d!2086 (= (content!22 lt!667) e!1594)))

(declare-fun b!2805 () Bool)

(assert (=> b!2805 (= e!1594 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2806 () Bool)

(assert (=> b!2806 (= e!1594 (union (insert (head!227 lt!667) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!667))))))

(assert (= (and d!2086 c!992) b!2805))

(assert (= (and d!2086 (not c!992)) b!2806))

(declare-fun m!4253 () Bool)

(assert (=> b!2806 m!4253))

(declare-fun m!4255 () Bool)

(assert (=> b!2806 m!4255))

(assert (=> b!2445 d!2086))

(declare-fun d!2088 () Bool)

(declare-fun c!993 () Bool)

(assert (=> d!2088 (= c!993 (is-Nil!56 (tail!239 (tail!239 (front!53 q4!1)))))))

(declare-fun e!1595 () (Set (_ BitVec 32)))

(assert (=> d!2088 (= (content!22 (tail!239 (tail!239 (front!53 q4!1)))) e!1595)))

(declare-fun b!2807 () Bool)

(assert (=> b!2807 (= e!1595 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2808 () Bool)

(assert (=> b!2808 (= e!1595 (union (insert (head!227 (tail!239 (tail!239 (front!53 q4!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (tail!239 (front!53 q4!1)))))))))

(assert (= (and d!2088 c!993) b!2807))

(assert (= (and d!2088 (not c!993)) b!2808))

(declare-fun m!4257 () Bool)

(assert (=> b!2808 m!4257))

(declare-fun m!4259 () Bool)

(assert (=> b!2808 m!4259))

(assert (=> b!2445 d!2088))

(assert (=> b!2445 d!1742))

(declare-fun d!2090 () Bool)

(declare-fun c!994 () Bool)

(assert (=> d!2090 (= c!994 (is-Nil!56 lt!673))))

(declare-fun e!1596 () (Set (_ BitVec 32)))

(assert (=> d!2090 (= (content!22 lt!673) e!1596)))

(declare-fun b!2809 () Bool)

(assert (=> b!2809 (= e!1596 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2810 () Bool)

(assert (=> b!2810 (= e!1596 (union (insert (head!227 lt!673) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!673))))))

(assert (= (and d!2090 c!994) b!2809))

(assert (= (and d!2090 (not c!994)) b!2810))

(declare-fun m!4261 () Bool)

(assert (=> b!2810 m!4261))

(declare-fun m!4263 () Bool)

(assert (=> b!2810 m!4263))

(assert (=> b!2462 d!2090))

(declare-fun d!2092 () Bool)

(declare-fun c!995 () Bool)

(assert (=> d!2092 (= c!995 (is-Nil!56 (tail!239 (front!53 q2!1))))))

(declare-fun e!1597 () (Set (_ BitVec 32)))

(assert (=> d!2092 (= (content!22 (tail!239 (front!53 q2!1))) e!1597)))

(declare-fun b!2811 () Bool)

(assert (=> b!2811 (= e!1597 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2812 () Bool)

(assert (=> b!2812 (= e!1597 (union (insert (head!227 (tail!239 (front!53 q2!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (front!53 q2!1))))))))

(assert (= (and d!2092 c!995) b!2811))

(assert (= (and d!2092 (not c!995)) b!2812))

(declare-fun m!4265 () Bool)

(assert (=> b!2812 m!4265))

(assert (=> b!2812 m!4019))

(assert (=> b!2462 d!2092))

(assert (=> b!2462 d!1772))

(declare-fun d!2094 () Bool)

(declare-fun e!1599 () Bool)

(assert (=> d!2094 e!1599))

(declare-fun res!937 () Bool)

(assert (=> d!2094 (=> (not res!937) (not e!1599))))

(declare-fun lt!784 () List!55)

(assert (=> d!2094 (= res!937 (= (size!23 lt!784) (+ (size!23 (reverse!5 (tail!239 (tail!239 (rear!55 q4!1))))) (size!23 (Cons!55 (head!227 (tail!239 (rear!55 q4!1))) Nil!56)))))))

(declare-fun e!1598 () List!55)

(assert (=> d!2094 (= lt!784 e!1598)))

(declare-fun c!996 () Bool)

(assert (=> d!2094 (= c!996 (is-Nil!56 (reverse!5 (tail!239 (tail!239 (rear!55 q4!1))))))))

(assert (=> d!2094 (= (concat!2 (reverse!5 (tail!239 (tail!239 (rear!55 q4!1)))) (Cons!55 (head!227 (tail!239 (rear!55 q4!1))) Nil!56)) lt!784)))

(declare-fun b!2813 () Bool)

(assert (=> b!2813 (= e!1598 (Cons!55 (head!227 (tail!239 (rear!55 q4!1))) Nil!56))))

(declare-fun b!2814 () Bool)

(assert (=> b!2814 (= e!1598 (Cons!55 (head!227 (reverse!5 (tail!239 (tail!239 (rear!55 q4!1))))) (concat!2 (tail!239 (reverse!5 (tail!239 (tail!239 (rear!55 q4!1))))) (Cons!55 (head!227 (tail!239 (rear!55 q4!1))) Nil!56))))))

(declare-fun b!2815 () Bool)

(assert (=> b!2815 (= e!1599 (= (content!22 lt!784) (union (content!22 (reverse!5 (tail!239 (tail!239 (rear!55 q4!1))))) (content!22 (Cons!55 (head!227 (tail!239 (rear!55 q4!1))) Nil!56)))))))

(assert (= (and d!2094 c!996) b!2813))

(assert (= (and d!2094 (not c!996)) b!2814))

(assert (= (and d!2094 res!937) b!2815))

(declare-fun m!4267 () Bool)

(assert (=> d!2094 m!4267))

(assert (=> d!2094 m!3789))

(declare-fun m!4269 () Bool)

(assert (=> d!2094 m!4269))

(declare-fun m!4271 () Bool)

(assert (=> d!2094 m!4271))

(declare-fun m!4273 () Bool)

(assert (=> b!2814 m!4273))

(declare-fun m!4275 () Bool)

(assert (=> b!2815 m!4275))

(assert (=> b!2815 m!3789))

(declare-fun m!4277 () Bool)

(assert (=> b!2815 m!4277))

(declare-fun m!4279 () Bool)

(assert (=> b!2815 m!4279))

(assert (=> b!2533 d!2094))

(declare-fun d!2096 () Bool)

(declare-fun lt!785 () List!55)

(assert (=> d!2096 (= (content!22 lt!785) (content!22 (tail!239 (tail!239 (rear!55 q4!1)))))))

(declare-fun e!1600 () List!55)

(assert (=> d!2096 (= lt!785 e!1600)))

(declare-fun c!997 () Bool)

(assert (=> d!2096 (= c!997 (is-Nil!56 (tail!239 (tail!239 (rear!55 q4!1)))))))

(assert (=> d!2096 (= (reverse!5 (tail!239 (tail!239 (rear!55 q4!1)))) lt!785)))

(declare-fun b!2816 () Bool)

(assert (=> b!2816 (= e!1600 Nil!56)))

(declare-fun b!2817 () Bool)

(assert (=> b!2817 (= e!1600 (concat!2 (reverse!5 (tail!239 (tail!239 (tail!239 (rear!55 q4!1))))) (Cons!55 (head!227 (tail!239 (tail!239 (rear!55 q4!1)))) Nil!56)))))

(assert (= (and d!2096 c!997) b!2816))

(assert (= (and d!2096 (not c!997)) b!2817))

(declare-fun m!4281 () Bool)

(assert (=> d!2096 m!4281))

(assert (=> d!2096 m!4119))

(declare-fun m!4283 () Bool)

(assert (=> b!2817 m!4283))

(assert (=> b!2817 m!4283))

(declare-fun m!4285 () Bool)

(assert (=> b!2817 m!4285))

(assert (=> b!2533 d!2096))

(declare-fun d!2098 () Bool)

(declare-fun lt!786 () Int)

(assert (=> d!2098 (>= lt!786 0)))

(declare-fun e!1601 () Int)

(assert (=> d!2098 (= lt!786 e!1601)))

(declare-fun c!998 () Bool)

(assert (=> d!2098 (= c!998 (is-Nil!56 (tail!239 (front!53 lt!624))))))

(assert (=> d!2098 (= (size!23 (tail!239 (front!53 lt!624))) lt!786)))

(declare-fun b!2818 () Bool)

(assert (=> b!2818 (= e!1601 0)))

(declare-fun b!2819 () Bool)

(assert (=> b!2819 (= e!1601 (+ 1 (size!23 (tail!239 (tail!239 (front!53 lt!624))))))))

(assert (= (and d!2098 c!998) b!2818))

(assert (= (and d!2098 (not c!998)) b!2819))

(declare-fun m!4287 () Bool)

(assert (=> b!2819 m!4287))

(assert (=> b!2563 d!2098))

(declare-fun d!2100 () Bool)

(declare-fun c!999 () Bool)

(assert (=> d!2100 (= c!999 (is-Nil!56 (tail!239 lt!656)))))

(declare-fun e!1602 () (Set (_ BitVec 32)))

(assert (=> d!2100 (= (content!22 (tail!239 lt!656)) e!1602)))

(declare-fun b!2820 () Bool)

(assert (=> b!2820 (= e!1602 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2821 () Bool)

(assert (=> b!2821 (= e!1602 (union (insert (head!227 (tail!239 lt!656)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 lt!656)))))))

(assert (= (and d!2100 c!999) b!2820))

(assert (= (and d!2100 (not c!999)) b!2821))

(declare-fun m!4289 () Bool)

(assert (=> b!2821 m!4289))

(declare-fun m!4291 () Bool)

(assert (=> b!2821 m!4291))

(assert (=> b!2539 d!2100))

(declare-fun d!2102 () Bool)

(declare-fun lt!787 () Int)

(assert (=> d!2102 (>= lt!787 0)))

(declare-fun e!1603 () Int)

(assert (=> d!2102 (= lt!787 e!1603)))

(declare-fun c!1000 () Bool)

(assert (=> d!2102 (= c!1000 (is-Nil!56 (tail!239 lt!640)))))

(assert (=> d!2102 (= (size!23 (tail!239 lt!640)) lt!787)))

(declare-fun b!2822 () Bool)

(assert (=> b!2822 (= e!1603 0)))

(declare-fun b!2823 () Bool)

(assert (=> b!2823 (= e!1603 (+ 1 (size!23 (tail!239 (tail!239 lt!640)))))))

(assert (= (and d!2102 c!1000) b!2822))

(assert (= (and d!2102 (not c!1000)) b!2823))

(declare-fun m!4293 () Bool)

(assert (=> b!2823 m!4293))

(assert (=> b!2554 d!2102))

(declare-fun d!2104 () Bool)

(declare-fun lt!788 () Int)

(assert (=> d!2104 (>= lt!788 0)))

(declare-fun e!1604 () Int)

(assert (=> d!2104 (= lt!788 e!1604)))

(declare-fun c!1001 () Bool)

(assert (=> d!2104 (= c!1001 (is-Nil!56 (tail!239 (rear!55 lt!624))))))

(assert (=> d!2104 (= (size!23 (tail!239 (rear!55 lt!624))) lt!788)))

(declare-fun b!2824 () Bool)

(assert (=> b!2824 (= e!1604 0)))

(declare-fun b!2825 () Bool)

(assert (=> b!2825 (= e!1604 (+ 1 (size!23 (tail!239 (tail!239 (rear!55 lt!624))))))))

(assert (= (and d!2104 c!1001) b!2824))

(assert (= (and d!2104 (not c!1001)) b!2825))

(declare-fun m!4295 () Bool)

(assert (=> b!2825 m!4295))

(assert (=> b!2565 d!2104))

(declare-fun d!2106 () Bool)

(declare-fun c!1002 () Bool)

(assert (=> d!2106 (= c!1002 (is-Nil!56 lt!694))))

(declare-fun e!1605 () (Set (_ BitVec 32)))

(assert (=> d!2106 (= (content!22 lt!694) e!1605)))

(declare-fun b!2826 () Bool)

(assert (=> b!2826 (= e!1605 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2827 () Bool)

(assert (=> b!2827 (= e!1605 (union (insert (head!227 lt!694) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!694))))))

(assert (= (and d!2106 c!1002) b!2826))

(assert (= (and d!2106 (not c!1002)) b!2827))

(declare-fun m!4297 () Bool)

(assert (=> b!2827 m!4297))

(declare-fun m!4299 () Bool)

(assert (=> b!2827 m!4299))

(assert (=> d!1830 d!2106))

(assert (=> d!1830 d!2004))

(declare-fun d!2108 () Bool)

(declare-fun e!1607 () Bool)

(assert (=> d!2108 e!1607))

(declare-fun res!938 () Bool)

(assert (=> d!2108 (=> (not res!938) (not e!1607))))

(declare-fun lt!789 () List!55)

(assert (=> d!2108 (= res!938 (= (size!23 lt!789) (+ (size!23 (reverse!5 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))) (size!23 (Cons!55 (head!227 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))) Nil!56)))))))

(declare-fun e!1606 () List!55)

(assert (=> d!2108 (= lt!789 e!1606)))

(declare-fun c!1003 () Bool)

(assert (=> d!2108 (= c!1003 (is-Nil!56 (reverse!5 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))))))

(assert (=> d!2108 (= (concat!2 (reverse!5 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))) (Cons!55 (head!227 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))) Nil!56)) lt!789)))

(declare-fun b!2828 () Bool)

(assert (=> b!2828 (= e!1606 (Cons!55 (head!227 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))) Nil!56))))

(declare-fun b!2829 () Bool)

(assert (=> b!2829 (= e!1606 (Cons!55 (head!227 (reverse!5 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))) (concat!2 (tail!239 (reverse!5 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))) (Cons!55 (head!227 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))) Nil!56))))))

(declare-fun b!2830 () Bool)

(assert (=> b!2830 (= e!1607 (= (content!22 lt!789) (union (content!22 (reverse!5 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))) (content!22 (Cons!55 (head!227 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))) Nil!56)))))))

(assert (= (and d!2108 c!1003) b!2828))

(assert (= (and d!2108 (not c!1003)) b!2829))

(assert (= (and d!2108 res!938) b!2830))

(declare-fun m!4301 () Bool)

(assert (=> d!2108 m!4301))

(assert (=> d!2108 m!3909))

(declare-fun m!4303 () Bool)

(assert (=> d!2108 m!4303))

(declare-fun m!4305 () Bool)

(assert (=> d!2108 m!4305))

(declare-fun m!4307 () Bool)

(assert (=> b!2829 m!4307))

(declare-fun m!4309 () Bool)

(assert (=> b!2830 m!4309))

(assert (=> b!2830 m!3909))

(declare-fun m!4311 () Bool)

(assert (=> b!2830 m!4311))

(declare-fun m!4313 () Bool)

(assert (=> b!2830 m!4313))

(assert (=> b!2604 d!2108))

(declare-fun d!2110 () Bool)

(declare-fun lt!790 () List!55)

(assert (=> d!2110 (= (content!22 lt!790) (content!22 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))))))

(declare-fun e!1608 () List!55)

(assert (=> d!2110 (= lt!790 e!1608)))

(declare-fun c!1004 () Bool)

(assert (=> d!2110 (= c!1004 (is-Nil!56 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))))))

(assert (=> d!2110 (= (reverse!5 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))) lt!790)))

(declare-fun b!2831 () Bool)

(assert (=> b!2831 (= e!1608 Nil!56)))

(declare-fun b!2832 () Bool)

(assert (=> b!2832 (= e!1608 (concat!2 (reverse!5 (tail!239 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1)))))) (Cons!55 (head!227 (tail!239 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))) Nil!56)))))

(assert (= (and d!2110 c!1004) b!2831))

(assert (= (and d!2110 (not c!1004)) b!2832))

(declare-fun m!4315 () Bool)

(assert (=> d!2110 m!4315))

(assert (=> d!2110 m!3931))

(declare-fun m!4317 () Bool)

(assert (=> b!2832 m!4317))

(assert (=> b!2832 m!4317))

(declare-fun m!4319 () Bool)

(assert (=> b!2832 m!4319))

(assert (=> b!2604 d!2110))

(assert (=> b!2582 d!1980))

(assert (=> b!2438 d!2088))

(declare-fun d!2112 () Bool)

(declare-fun lt!791 () Int)

(assert (=> d!2112 (>= lt!791 0)))

(declare-fun e!1609 () Int)

(assert (=> d!2112 (= lt!791 e!1609)))

(declare-fun c!1005 () Bool)

(assert (=> d!2112 (= c!1005 (is-Nil!56 (tail!239 (front!53 lt!626))))))

(assert (=> d!2112 (= (size!23 (tail!239 (front!53 lt!626))) lt!791)))

(declare-fun b!2833 () Bool)

(assert (=> b!2833 (= e!1609 0)))

(declare-fun b!2834 () Bool)

(assert (=> b!2834 (= e!1609 (+ 1 (size!23 (tail!239 (tail!239 (front!53 lt!626))))))))

(assert (= (and d!2112 c!1005) b!2833))

(assert (= (and d!2112 (not c!1005)) b!2834))

(declare-fun m!4321 () Bool)

(assert (=> b!2834 m!4321))

(assert (=> b!2494 d!2112))

(declare-fun d!2114 () Bool)

(declare-fun c!1006 () Bool)

(assert (=> d!2114 (= c!1006 (is-Nil!56 (tail!239 lt!648)))))

(declare-fun e!1610 () (Set (_ BitVec 32)))

(assert (=> d!2114 (= (content!22 (tail!239 lt!648)) e!1610)))

(declare-fun b!2835 () Bool)

(assert (=> b!2835 (= e!1610 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2836 () Bool)

(assert (=> b!2836 (= e!1610 (union (insert (head!227 (tail!239 lt!648)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 lt!648)))))))

(assert (= (and d!2114 c!1006) b!2835))

(assert (= (and d!2114 (not c!1006)) b!2836))

(declare-fun m!4323 () Bool)

(assert (=> b!2836 m!4323))

(declare-fun m!4325 () Bool)

(assert (=> b!2836 m!4325))

(assert (=> b!2488 d!2114))

(declare-fun d!2116 () Bool)

(declare-fun c!1007 () Bool)

(assert (=> d!2116 (= c!1007 (is-Nil!56 lt!719))))

(declare-fun e!1611 () (Set (_ BitVec 32)))

(assert (=> d!2116 (= (content!22 lt!719) e!1611)))

(declare-fun b!2837 () Bool)

(assert (=> b!2837 (= e!1611 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2838 () Bool)

(assert (=> b!2838 (= e!1611 (union (insert (head!227 lt!719) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!719))))))

(assert (= (and d!2116 c!1007) b!2837))

(assert (= (and d!2116 (not c!1007)) b!2838))

(declare-fun m!4327 () Bool)

(assert (=> b!2838 m!4327))

(declare-fun m!4329 () Bool)

(assert (=> b!2838 m!4329))

(assert (=> b!2602 d!2116))

(declare-fun d!2118 () Bool)

(declare-fun c!1008 () Bool)

(assert (=> d!2118 (= c!1008 (is-Nil!56 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))))))

(declare-fun e!1612 () (Set (_ BitVec 32)))

(assert (=> d!2118 (= (content!22 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))) e!1612)))

(declare-fun b!2839 () Bool)

(assert (=> b!2839 (= e!1612 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2840 () Bool)

(assert (=> b!2840 (= e!1612 (union (insert (head!227 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (reverse!5 (tail!239 (Cons!55 e3!1 (rear!55 q2!1))))))))))

(assert (= (and d!2118 c!1008) b!2839))

(assert (= (and d!2118 (not c!1008)) b!2840))

(declare-fun m!4331 () Bool)

(assert (=> b!2840 m!4331))

(assert (=> b!2840 m!4045))

(assert (=> b!2602 d!2118))

(declare-fun d!2120 () Bool)

(declare-fun c!1009 () Bool)

(assert (=> d!2120 (= c!1009 (is-Nil!56 (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56)))))

(declare-fun e!1613 () (Set (_ BitVec 32)))

(assert (=> d!2120 (= (content!22 (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56)) e!1613)))

(declare-fun b!2841 () Bool)

(assert (=> b!2841 (= e!1613 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2842 () Bool)

(assert (=> b!2842 (= e!1613 (union (insert (head!227 (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (Cons!55 (head!227 (Cons!55 e3!1 (rear!55 q2!1))) Nil!56)))))))

(assert (= (and d!2120 c!1009) b!2841))

(assert (= (and d!2120 (not c!1009)) b!2842))

(declare-fun m!4333 () Bool)

(assert (=> b!2842 m!4333))

(declare-fun m!4335 () Bool)

(assert (=> b!2842 m!4335))

(assert (=> b!2602 d!2120))

(assert (=> b!2470 d!2092))

(declare-fun d!2122 () Bool)

(declare-fun lt!792 () Int)

(assert (=> d!2122 (>= lt!792 0)))

(declare-fun e!1614 () Int)

(assert (=> d!2122 (= lt!792 e!1614)))

(declare-fun c!1010 () Bool)

(assert (=> d!2122 (= c!1010 (is-Nil!56 (tail!239 (reverse!5 (rear!55 q4!1)))))))

(assert (=> d!2122 (= (size!23 (tail!239 (reverse!5 (rear!55 q4!1)))) lt!792)))

(declare-fun b!2843 () Bool)

(assert (=> b!2843 (= e!1614 0)))

(declare-fun b!2844 () Bool)

(assert (=> b!2844 (= e!1614 (+ 1 (size!23 (tail!239 (tail!239 (reverse!5 (rear!55 q4!1)))))))))

(assert (= (and d!2122 c!1010) b!2843))

(assert (= (and d!2122 (not c!1010)) b!2844))

(declare-fun m!4337 () Bool)

(assert (=> b!2844 m!4337))

(assert (=> b!2547 d!2122))

(declare-fun d!2124 () Bool)

(declare-fun c!1011 () Bool)

(assert (=> d!2124 (= c!1011 (is-Nil!56 (tail!239 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56))))))))

(declare-fun e!1615 () (Set (_ BitVec 32)))

(assert (=> d!2124 (= (content!22 (tail!239 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56))))) e!1615)))

(declare-fun b!2845 () Bool)

(assert (=> b!2845 (= e!1615 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2846 () Bool)

(assert (=> b!2846 (= e!1615 (union (insert (head!227 (tail!239 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56))))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 (reverse!5 (Cons!55 e1!2 (rear!55 queue!56))))))))))

(assert (= (and d!2124 c!1011) b!2845))

(assert (= (and d!2124 (not c!1011)) b!2846))

(declare-fun m!4339 () Bool)

(assert (=> b!2846 m!4339))

(declare-fun m!4341 () Bool)

(assert (=> b!2846 m!4341))

(assert (=> b!2543 d!2124))

(declare-fun d!2126 () Bool)

(declare-fun lt!793 () Int)

(assert (=> d!2126 (>= lt!793 0)))

(declare-fun e!1616 () Int)

(assert (=> d!2126 (= lt!793 e!1616)))

(declare-fun c!1012 () Bool)

(assert (=> d!2126 (= c!1012 (is-Nil!56 (tail!239 (tail!239 (rear!55 lt!618)))))))

(assert (=> d!2126 (= (size!23 (tail!239 (tail!239 (rear!55 lt!618)))) lt!793)))

(declare-fun b!2847 () Bool)

(assert (=> b!2847 (= e!1616 0)))

(declare-fun b!2848 () Bool)

(assert (=> b!2848 (= e!1616 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (rear!55 lt!618)))))))))

(assert (= (and d!2126 c!1012) b!2847))

(assert (= (and d!2126 (not c!1012)) b!2848))

(declare-fun m!4343 () Bool)

(assert (=> b!2848 m!4343))

(assert (=> b!2506 d!2126))

(declare-fun d!2128 () Bool)

(declare-fun lt!794 () Int)

(assert (=> d!2128 (>= lt!794 0)))

(declare-fun e!1617 () Int)

(assert (=> d!2128 (= lt!794 e!1617)))

(declare-fun c!1013 () Bool)

(assert (=> d!2128 (= c!1013 (is-Nil!56 lt!715))))

(assert (=> d!2128 (= (size!23 lt!715) lt!794)))

(declare-fun b!2849 () Bool)

(assert (=> b!2849 (= e!1617 0)))

(declare-fun b!2850 () Bool)

(assert (=> b!2850 (= e!1617 (+ 1 (size!23 (tail!239 lt!715))))))

(assert (= (and d!2128 c!1013) b!2849))

(assert (= (and d!2128 (not c!1013)) b!2850))

(declare-fun m!4345 () Bool)

(assert (=> b!2850 m!4345))

(assert (=> d!1882 d!2128))

(assert (=> d!1882 d!1822))

(assert (=> d!1882 d!1852))

(declare-fun d!2130 () Bool)

(declare-fun c!1014 () Bool)

(assert (=> d!2130 (= c!1014 (is-Nil!56 lt!715))))

(declare-fun e!1618 () (Set (_ BitVec 32)))

(assert (=> d!2130 (= (content!22 lt!715) e!1618)))

(declare-fun b!2851 () Bool)

(assert (=> b!2851 (= e!1618 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2852 () Bool)

(assert (=> b!2852 (= e!1618 (union (insert (head!227 lt!715) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!715))))))

(assert (= (and d!2130 c!1014) b!2851))

(assert (= (and d!2130 (not c!1014)) b!2852))

(declare-fun m!4347 () Bool)

(assert (=> b!2852 m!4347))

(declare-fun m!4349 () Bool)

(assert (=> b!2852 m!4349))

(assert (=> b!2589 d!2130))

(assert (=> b!2589 d!1948))

(assert (=> b!2589 d!1778))

(declare-fun d!2132 () Bool)

(declare-fun lt!795 () Int)

(assert (=> d!2132 (>= lt!795 0)))

(declare-fun e!1619 () Int)

(assert (=> d!2132 (= lt!795 e!1619)))

(declare-fun c!1015 () Bool)

(assert (=> d!2132 (= c!1015 (is-Nil!56 (tail!239 (tail!239 (rear!55 lt!615)))))))

(assert (=> d!2132 (= (size!23 (tail!239 (tail!239 (rear!55 lt!615)))) lt!795)))

(declare-fun b!2853 () Bool)

(assert (=> b!2853 (= e!1619 0)))

(declare-fun b!2854 () Bool)

(assert (=> b!2854 (= e!1619 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (rear!55 lt!615)))))))))

(assert (= (and d!2132 c!1015) b!2853))

(assert (= (and d!2132 (not c!1015)) b!2854))

(declare-fun m!4351 () Bool)

(assert (=> b!2854 m!4351))

(assert (=> b!2576 d!2132))

(declare-fun d!2134 () Bool)

(declare-fun lt!796 () Int)

(assert (=> d!2134 (>= lt!796 0)))

(declare-fun e!1620 () Int)

(assert (=> d!2134 (= lt!796 e!1620)))

(declare-fun c!1016 () Bool)

(assert (=> d!2134 (= c!1016 (is-Nil!56 lt!699))))

(assert (=> d!2134 (= (size!23 lt!699) lt!796)))

(declare-fun b!2855 () Bool)

(assert (=> b!2855 (= e!1620 0)))

(declare-fun b!2856 () Bool)

(assert (=> b!2856 (= e!1620 (+ 1 (size!23 (tail!239 lt!699))))))

(assert (= (and d!2134 c!1016) b!2855))

(assert (= (and d!2134 (not c!1016)) b!2856))

(declare-fun m!4353 () Bool)

(assert (=> b!2856 m!4353))

(assert (=> d!1846 d!2134))

(assert (=> d!1846 d!1786))

(assert (=> d!1846 d!1864))

(declare-fun d!2136 () Bool)

(declare-fun c!1017 () Bool)

(assert (=> d!2136 (= c!1017 (is-Nil!56 (tail!239 lt!643)))))

(declare-fun e!1621 () (Set (_ BitVec 32)))

(assert (=> d!2136 (= (content!22 (tail!239 lt!643)) e!1621)))

(declare-fun b!2857 () Bool)

(assert (=> b!2857 (= e!1621 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2858 () Bool)

(assert (=> b!2858 (= e!1621 (union (insert (head!227 (tail!239 lt!643)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 lt!643)))))))

(assert (= (and d!2136 c!1017) b!2857))

(assert (= (and d!2136 (not c!1017)) b!2858))

(declare-fun m!4355 () Bool)

(assert (=> b!2858 m!4355))

(declare-fun m!4357 () Bool)

(assert (=> b!2858 m!4357))

(assert (=> b!2580 d!2136))

(declare-fun d!2138 () Bool)

(declare-fun e!1623 () Bool)

(assert (=> d!2138 e!1623))

(declare-fun res!939 () Bool)

(assert (=> d!2138 (=> (not res!939) (not e!1623))))

(declare-fun lt!797 () List!55)

(assert (=> d!2138 (= res!939 (= (size!23 lt!797) (+ (size!23 (tail!239 (tail!239 (tail!239 (front!53 q4!1))))) (size!23 (reverse!5 (rear!55 q4!1))))))))

(declare-fun e!1622 () List!55)

(assert (=> d!2138 (= lt!797 e!1622)))

(declare-fun c!1018 () Bool)

(assert (=> d!2138 (= c!1018 (is-Nil!56 (tail!239 (tail!239 (tail!239 (front!53 q4!1))))))))

(assert (=> d!2138 (= (concat!2 (tail!239 (tail!239 (tail!239 (front!53 q4!1)))) (reverse!5 (rear!55 q4!1))) lt!797)))

(declare-fun b!2859 () Bool)

(assert (=> b!2859 (= e!1622 (reverse!5 (rear!55 q4!1)))))

(declare-fun b!2860 () Bool)

(assert (=> b!2860 (= e!1622 (Cons!55 (head!227 (tail!239 (tail!239 (tail!239 (front!53 q4!1))))) (concat!2 (tail!239 (tail!239 (tail!239 (tail!239 (front!53 q4!1))))) (reverse!5 (rear!55 q4!1)))))))

(declare-fun b!2861 () Bool)

(assert (=> b!2861 (= e!1623 (= (content!22 lt!797) (union (content!22 (tail!239 (tail!239 (tail!239 (front!53 q4!1))))) (content!22 (reverse!5 (rear!55 q4!1))))))))

(assert (= (and d!2138 c!1018) b!2859))

(assert (= (and d!2138 (not c!1018)) b!2860))

(assert (= (and d!2138 res!939) b!2861))

(declare-fun m!4359 () Bool)

(assert (=> d!2138 m!4359))

(assert (=> d!2138 m!3883))

(assert (=> d!2138 m!3423))

(assert (=> d!2138 m!3553))

(assert (=> b!2860 m!3423))

(declare-fun m!4361 () Bool)

(assert (=> b!2860 m!4361))

(declare-fun m!4363 () Bool)

(assert (=> b!2861 m!4363))

(assert (=> b!2861 m!4259))

(assert (=> b!2861 m!3423))

(assert (=> b!2861 m!3561))

(assert (=> b!2444 d!2138))

(declare-fun d!2140 () Bool)

(declare-fun c!1019 () Bool)

(assert (=> d!2140 (= c!1019 (is-Nil!56 (tail!239 lt!640)))))

(declare-fun e!1624 () (Set (_ BitVec 32)))

(assert (=> d!2140 (= (content!22 (tail!239 lt!640)) e!1624)))

(declare-fun b!2862 () Bool)

(assert (=> b!2862 (= e!1624 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2863 () Bool)

(assert (=> b!2863 (= e!1624 (union (insert (head!227 (tail!239 lt!640)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 lt!640)))))))

(assert (= (and d!2140 c!1019) b!2862))

(assert (= (and d!2140 (not c!1019)) b!2863))

(declare-fun m!4365 () Bool)

(assert (=> b!2863 m!4365))

(declare-fun m!4367 () Bool)

(assert (=> b!2863 m!4367))

(assert (=> b!2474 d!2140))

(declare-fun d!2142 () Bool)

(declare-fun c!1020 () Bool)

(assert (=> d!2142 (= c!1020 (is-Nil!56 (tail!239 lt!649)))))

(declare-fun e!1625 () (Set (_ BitVec 32)))

(assert (=> d!2142 (= (content!22 (tail!239 lt!649)) e!1625)))

(declare-fun b!2864 () Bool)

(assert (=> b!2864 (= e!1625 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2865 () Bool)

(assert (=> b!2865 (= e!1625 (union (insert (head!227 (tail!239 lt!649)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (tail!239 lt!649)))))))

(assert (= (and d!2142 c!1020) b!2864))

(assert (= (and d!2142 (not c!1020)) b!2865))

(declare-fun m!4369 () Bool)

(assert (=> b!2865 m!4369))

(declare-fun m!4371 () Bool)

(assert (=> b!2865 m!4371))

(assert (=> b!2455 d!2142))

(declare-fun d!2144 () Bool)

(declare-fun lt!798 () Int)

(assert (=> d!2144 (>= lt!798 0)))

(declare-fun e!1626 () Int)

(assert (=> d!2144 (= lt!798 e!1626)))

(declare-fun c!1021 () Bool)

(assert (=> d!2144 (= c!1021 (is-Nil!56 (tail!239 (tail!239 (rear!55 lt!614)))))))

(assert (=> d!2144 (= (size!23 (tail!239 (tail!239 (rear!55 lt!614)))) lt!798)))

(declare-fun b!2866 () Bool)

(assert (=> b!2866 (= e!1626 0)))

(declare-fun b!2867 () Bool)

(assert (=> b!2867 (= e!1626 (+ 1 (size!23 (tail!239 (tail!239 (tail!239 (rear!55 lt!614)))))))))

(assert (= (and d!2144 c!1021) b!2866))

(assert (= (and d!2144 (not c!1021)) b!2867))

(declare-fun m!4373 () Bool)

(assert (=> b!2867 m!4373))

(assert (=> b!2561 d!2144))

(declare-fun d!2146 () Bool)

(declare-fun lt!799 () Int)

(assert (=> d!2146 (>= lt!799 0)))

(declare-fun e!1627 () Int)

(assert (=> d!2146 (= lt!799 e!1627)))

(declare-fun c!1022 () Bool)

(assert (=> d!2146 (= c!1022 (is-Nil!56 (tail!239 (rear!55 lt!625))))))

(assert (=> d!2146 (= (size!23 (tail!239 (rear!55 lt!625))) lt!799)))

(declare-fun b!2868 () Bool)

(assert (=> b!2868 (= e!1627 0)))

(declare-fun b!2869 () Bool)

(assert (=> b!2869 (= e!1627 (+ 1 (size!23 (tail!239 (tail!239 (rear!55 lt!625))))))))

(assert (= (and d!2146 c!1022) b!2868))

(assert (= (and d!2146 (not c!1022)) b!2869))

(declare-fun m!4375 () Bool)

(assert (=> b!2869 m!4375))

(assert (=> b!2537 d!2146))

(declare-fun d!2148 () Bool)

(declare-fun lt!800 () Int)

(assert (=> d!2148 (>= lt!800 0)))

(declare-fun e!1628 () Int)

(assert (=> d!2148 (= lt!800 e!1628)))

(declare-fun c!1023 () Bool)

(assert (=> d!2148 (= c!1023 (is-Nil!56 (tail!239 (front!53 lt!623))))))

(assert (=> d!2148 (= (size!23 (tail!239 (front!53 lt!623))) lt!800)))

(declare-fun b!2870 () Bool)

(assert (=> b!2870 (= e!1628 0)))

(declare-fun b!2871 () Bool)

(assert (=> b!2871 (= e!1628 (+ 1 (size!23 (tail!239 (tail!239 (front!53 lt!623))))))))

(assert (= (and d!2148 c!1023) b!2870))

(assert (= (and d!2148 (not c!1023)) b!2871))

(declare-fun m!4377 () Bool)

(assert (=> b!2871 m!4377))

(assert (=> b!2515 d!2148))

(declare-fun d!2150 () Bool)

(declare-fun c!1024 () Bool)

(assert (=> d!2150 (= c!1024 (is-Nil!56 lt!693))))

(declare-fun e!1629 () (Set (_ BitVec 32)))

(assert (=> d!2150 (= (content!22 lt!693) e!1629)))

(declare-fun b!2872 () Bool)

(assert (=> b!2872 (= e!1629 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2873 () Bool)

(assert (=> b!2873 (= e!1629 (union (insert (head!227 lt!693) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!693))))))

(assert (= (and d!2150 c!1024) b!2872))

(assert (= (and d!2150 (not c!1024)) b!2873))

(declare-fun m!4379 () Bool)

(assert (=> b!2873 m!4379))

(declare-fun m!4381 () Bool)

(assert (=> b!2873 m!4381))

(assert (=> b!2531 d!2150))

(declare-fun d!2152 () Bool)

(declare-fun c!1025 () Bool)

(assert (=> d!2152 (= c!1025 (is-Nil!56 (reverse!5 (tail!239 (rear!55 q4!1)))))))

(declare-fun e!1630 () (Set (_ BitVec 32)))

(assert (=> d!2152 (= (content!22 (reverse!5 (tail!239 (rear!55 q4!1)))) e!1630)))

(declare-fun b!2874 () Bool)

(assert (=> b!2874 (= e!1630 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2875 () Bool)

(assert (=> b!2875 (= e!1630 (union (insert (head!227 (reverse!5 (tail!239 (rear!55 q4!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (reverse!5 (tail!239 (rear!55 q4!1)))))))))

(assert (= (and d!2152 c!1025) b!2874))

(assert (= (and d!2152 (not c!1025)) b!2875))

(declare-fun m!4383 () Bool)

(assert (=> b!2875 m!4383))

(assert (=> b!2875 m!4215))

(assert (=> b!2531 d!2152))

(declare-fun d!2154 () Bool)

(declare-fun c!1026 () Bool)

(assert (=> d!2154 (= c!1026 (is-Nil!56 (Cons!55 (head!227 (rear!55 q4!1)) Nil!56)))))

(declare-fun e!1631 () (Set (_ BitVec 32)))

(assert (=> d!2154 (= (content!22 (Cons!55 (head!227 (rear!55 q4!1)) Nil!56)) e!1631)))

(declare-fun b!2876 () Bool)

(assert (=> b!2876 (= e!1631 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2877 () Bool)

(assert (=> b!2877 (= e!1631 (union (insert (head!227 (Cons!55 (head!227 (rear!55 q4!1)) Nil!56)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 (Cons!55 (head!227 (rear!55 q4!1)) Nil!56)))))))

(assert (= (and d!2154 c!1026) b!2876))

(assert (= (and d!2154 (not c!1026)) b!2877))

(declare-fun m!4385 () Bool)

(assert (=> b!2877 m!4385))

(declare-fun m!4387 () Bool)

(assert (=> b!2877 m!4387))

(assert (=> b!2531 d!2154))

(declare-fun d!2156 () Bool)

(declare-fun c!1027 () Bool)

(assert (=> d!2156 (= c!1027 (is-Nil!56 lt!703))))

(declare-fun e!1632 () (Set (_ BitVec 32)))

(assert (=> d!2156 (= (content!22 lt!703) e!1632)))

(declare-fun b!2878 () Bool)

(assert (=> b!2878 (= e!1632 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2879 () Bool)

(assert (=> b!2879 (= e!1632 (union (insert (head!227 lt!703) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!239 lt!703))))))

(assert (= (and d!2156 c!1027) b!2878))

(assert (= (and d!2156 (not c!1027)) b!2879))

(declare-fun m!4389 () Bool)

(assert (=> b!2879 m!4389))

(declare-fun m!4391 () Bool)

(assert (=> b!2879 m!4391))

(assert (=> b!2559 d!2156))

(assert (=> b!2559 d!2012))

(assert (=> b!2559 d!1840))

(push 1)

(assert (not b!2774))

(assert (not b!2788))

(assert (not b!2860))

(assert (not d!1964))

(assert (not b!2784))

(assert (not b!2612))

(assert (not b!2634))

(assert (not b!2675))

(assert (not b!2815))

(assert (not b!2700))

(assert (not b!2664))

(assert (not b!2738))

(assert (not b!2861))

(assert (not b!2638))

(assert (not b!2631))

(assert (not b!2640))

(assert (not b!2834))

(assert (not b!2802))

(assert (not b!2744))

(assert (not d!2138))

(assert (not b!2706))

(assert (not b!2823))

(assert (not b!2771))

(assert (not d!1924))

(assert (not b!2827))

(assert (not b!2678))

(assert (not d!2008))

(assert (not b!2734))

(assert (not b!2829))

(assert (not b!2692))

(assert (not d!1952))

(assert (not b!2698))

(assert (not b!2796))

(assert (not b!2620))

(assert (not b!2765))

(assert (not b!2719))

(assert (not d!2044))

(assert (not d!2110))

(assert (not b!2763))

(assert (not b!2658))

(assert (not b!2844))

(assert (not d!2010))

(assert (not b!2736))

(assert (not b!2767))

(assert (not b!2867))

(assert (not b!2655))

(assert (not b!2854))

(assert (not b!2877))

(assert (not b!2614))

(assert (not b!2715))

(assert (not b!2875))

(assert (not b!2729))

(assert (not b!2773))

(assert (not b!2846))

(assert (not b!2660))

(assert (not b!2704))

(assert (not b!2713))

(assert (not b!2657))

(assert (not b!2682))

(assert (not b!2778))

(assert (not b!2686))

(assert (not b!2724))

(assert (not b!2622))

(assert (not b!2752))

(assert (not b!2653))

(assert (not b!2669))

(assert (not b!2731))

(assert (not b!2754))

(assert (not b!2838))

(assert (not b!2665))

(assert (not d!2054))

(assert (not b!2662))

(assert (not b!2832))

(assert (not b!2616))

(assert (not b!2780))

(assert (not b!2625))

(assert (not d!2014))

(assert (not b!2879))

(assert (not b!2852))

(assert (not b!2750))

(assert (not b!2680))

(assert (not b!2649))

(assert (not b!2858))

(assert (not b!2606))

(assert (not d!2094))

(assert (not b!2696))

(assert (not b!2792))

(assert (not b!2869))

(assert (not b!2636))

(assert (not b!2673))

(assert (not b!2740))

(assert (not b!2702))

(assert (not d!2096))

(assert (not b!2732))

(assert (not b!2694))

(assert (not b!2812))

(assert (not b!2762))

(assert (not b!2684))

(assert (not b!2794))

(assert (not b!2648))

(assert (not d!1938))

(assert (not b!2726))

(assert (not b!2800))

(assert (not b!2808))

(assert (not b!2821))

(assert (not d!1946))

(assert (not b!2769))

(assert (not b!2790))

(assert (not b!2806))

(assert (not b!2871))

(assert (not b!2721))

(assert (not b!2642))

(assert (not b!2817))

(assert (not b!2690))

(assert (not b!2748))

(assert (not b!2709))

(assert (not b!2644))

(assert (not b!2842))

(assert (not d!1916))

(assert (not b!2717))

(assert (not b!2850))

(assert (not b!2865))

(assert (not b!2810))

(assert (not b!2863))

(assert (not b!2760))

(assert (not b!2756))

(assert (not d!2108))

(assert (not b!2651))

(assert (not b!2836))

(assert (not d!1994))

(assert (not d!2046))

(assert (not b!2786))

(assert (not b!2618))

(assert (not b!2610))

(assert (not b!2677))

(assert (not b!2688))

(assert (not d!1940))

(assert (not b!2804))

(assert (not b!2873))

(assert (not b!2608))

(assert (not b!2627))

(assert (not d!1996))

(assert (not b!2671))

(assert (not b!2814))

(assert (not b!2742))

(assert (not b!2848))

(assert (not b!2819))

(assert (not b!2667))

(assert (not b!2840))

(assert (not b!2825))

(assert (not b!2856))

(assert (not b!2746))

(assert (not b!2708))

(assert (not b!2711))

(assert (not b!2776))

(assert (not b!2727))

(assert (not b!2629))

(assert (not b!2758))

(assert (not b!2798))

(assert (not b!2830))

(assert (not b!2624))

(assert (not b!2782))

(assert (not b!2723))

(assert (not b!2646))

(assert (not b!2633))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!368 () Bool)

(assert start!368)

(declare-fun res!1052 () Bool)

(declare-fun e!1900 () Bool)

(assert (=> start!368 (=> (not res!1052) (not e!1900))))

(declare-datatypes () ((List!63 (Cons!63 (head!235 (_ BitVec 32)) (tail!247 List!63)) (Nil!64))))

(declare-datatypes () ((AbsQueue!13 (Queue!12 (front!61 List!63) (rear!63 List!63)))))

(declare-fun queue!75 () AbsQueue!13)

(declare-fun isEmpty!12 (AbsQueue!13) Bool)

(assert (=> start!368 (= res!1052 (not (isEmpty!12 queue!75)))))

(assert (=> start!368 e!1900))

(assert (=> start!368 true))

(declare-fun b!3371 () Bool)

(declare-fun res!1053 () Bool)

(assert (=> b!3371 (=> (not res!1053) (not e!1900))))

(declare-fun isAmortized!0 (AbsQueue!13) Bool)

(assert (=> b!3371 (= res!1053 (isAmortized!0 queue!75))))

(declare-fun b!3372 () Bool)

(declare-fun head!150 (List!63) (_ BitVec 32))

(declare-fun asList!0 (AbsQueue!13) List!63)

(declare-fun front!8 (AbsQueue!13) (_ BitVec 32))

(assert (=> b!3372 (= e!1900 (not (= (head!150 (asList!0 queue!75)) (front!8 queue!75))))))

(assert (= (and start!368 res!1052) b!3371))

(assert (= (and b!3371 res!1053) b!3372))

(declare-fun m!5291 () Bool)

(assert (=> start!368 m!5291))

(declare-fun m!5293 () Bool)

(assert (=> b!3371 m!5293))

(declare-fun m!5295 () Bool)

(assert (=> b!3372 m!5295))

(assert (=> b!3372 m!5295))

(declare-fun m!5297 () Bool)

(assert (=> b!3372 m!5297))

(declare-fun m!5299 () Bool)

(assert (=> b!3372 m!5299))

(push 1)

(assert (not start!368))

(assert (not b!3372))

(assert (not b!3371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2480 () Bool)

(assert (=> d!2480 (= (isEmpty!12 queue!75) (and (is-Nil!64 (front!61 queue!75)) (is-Nil!64 (rear!63 queue!75))))))

(assert (=> start!368 d!2480))

(declare-fun d!2482 () Bool)

(assert (=> d!2482 (= (head!150 (asList!0 queue!75)) (head!235 (asList!0 queue!75)))))

(assert (=> b!3372 d!2482))

(declare-fun d!2484 () Bool)

(declare-fun concat!2 (List!63 List!63) List!63)

(declare-fun reverse!5 (List!63) List!63)

(assert (=> d!2484 (= (asList!0 queue!75) (concat!2 (front!61 queue!75) (reverse!5 (rear!63 queue!75))))))

(declare-fun bs!239 () Bool)

(assert (= bs!239 d!2484))

(declare-fun m!5301 () Bool)

(assert (=> bs!239 m!5301))

(assert (=> bs!239 m!5301))

(declare-fun m!5303 () Bool)

(assert (=> bs!239 m!5303))

(assert (=> b!3372 d!2484))

(declare-fun d!2486 () Bool)

(assert (=> d!2486 (= (front!8 queue!75) (head!235 (front!61 queue!75)))))

(assert (=> b!3372 d!2486))

(declare-fun d!2488 () Bool)

(declare-fun size!23 (List!63) Int)

(assert (=> d!2488 (= (isAmortized!0 queue!75) (>= (size!23 (front!61 queue!75)) (size!23 (rear!63 queue!75))))))

(declare-fun bs!240 () Bool)

(assert (= bs!240 d!2488))

(declare-fun m!5305 () Bool)

(assert (=> bs!240 m!5305))

(declare-fun m!5307 () Bool)

(assert (=> bs!240 m!5307))

(assert (=> b!3371 d!2488))

(push 1)

(assert (not d!2484))

(assert (not d!2488))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2490 () Bool)

(declare-fun e!1905 () Bool)

(assert (=> d!2490 e!1905))

(declare-fun res!1058 () Bool)

(assert (=> d!2490 (=> (not res!1058) (not e!1905))))

(declare-fun lt!947 () List!63)

(assert (=> d!2490 (= res!1058 (= (size!23 lt!947) (+ (size!23 (front!61 queue!75)) (size!23 (reverse!5 (rear!63 queue!75))))))))

(declare-fun e!1906 () List!63)

(assert (=> d!2490 (= lt!947 e!1906)))

(declare-fun c!1222 () Bool)

(assert (=> d!2490 (= c!1222 (is-Nil!64 (front!61 queue!75)))))

(assert (=> d!2490 (= (concat!2 (front!61 queue!75) (reverse!5 (rear!63 queue!75))) lt!947)))

(declare-fun b!3379 () Bool)

(assert (=> b!3379 (= e!1906 (reverse!5 (rear!63 queue!75)))))

(declare-fun b!3380 () Bool)

(assert (=> b!3380 (= e!1906 (Cons!63 (head!235 (front!61 queue!75)) (concat!2 (tail!247 (front!61 queue!75)) (reverse!5 (rear!63 queue!75)))))))

(declare-fun b!3381 () Bool)

(declare-fun content!22 (List!63) (Set (_ BitVec 32)))

(assert (=> b!3381 (= e!1905 (= (content!22 lt!947) (union (content!22 (front!61 queue!75)) (content!22 (reverse!5 (rear!63 queue!75))))))))

(assert (= (and d!2490 c!1222) b!3379))

(assert (= (and d!2490 (not c!1222)) b!3380))

(assert (= (and d!2490 res!1058) b!3381))

(declare-fun m!5309 () Bool)

(assert (=> d!2490 m!5309))

(assert (=> d!2490 m!5305))

(assert (=> d!2490 m!5301))

(declare-fun m!5311 () Bool)

(assert (=> d!2490 m!5311))

(assert (=> b!3380 m!5301))

(declare-fun m!5313 () Bool)

(assert (=> b!3380 m!5313))

(declare-fun m!5315 () Bool)

(assert (=> b!3381 m!5315))

(declare-fun m!5317 () Bool)

(assert (=> b!3381 m!5317))

(assert (=> b!3381 m!5301))

(declare-fun m!5319 () Bool)

(assert (=> b!3381 m!5319))

(assert (=> d!2484 d!2490))

(declare-fun d!2492 () Bool)

(declare-fun lt!950 () List!63)

(assert (=> d!2492 (= (content!22 lt!950) (content!22 (rear!63 queue!75)))))

(declare-fun e!1909 () List!63)

(assert (=> d!2492 (= lt!950 e!1909)))

(declare-fun c!1225 () Bool)

(assert (=> d!2492 (= c!1225 (is-Nil!64 (rear!63 queue!75)))))

(assert (=> d!2492 (= (reverse!5 (rear!63 queue!75)) lt!950)))

(declare-fun b!3386 () Bool)

(assert (=> b!3386 (= e!1909 Nil!64)))

(declare-fun b!3387 () Bool)

(assert (=> b!3387 (= e!1909 (concat!2 (reverse!5 (tail!247 (rear!63 queue!75))) (Cons!63 (head!235 (rear!63 queue!75)) Nil!64)))))

(assert (= (and d!2492 c!1225) b!3386))

(assert (= (and d!2492 (not c!1225)) b!3387))

(declare-fun m!5321 () Bool)

(assert (=> d!2492 m!5321))

(declare-fun m!5323 () Bool)

(assert (=> d!2492 m!5323))

(declare-fun m!5325 () Bool)

(assert (=> b!3387 m!5325))

(assert (=> b!3387 m!5325))

(declare-fun m!5327 () Bool)

(assert (=> b!3387 m!5327))

(assert (=> d!2484 d!2492))

(declare-fun d!2494 () Bool)

(declare-fun lt!953 () Int)

(assert (=> d!2494 (>= lt!953 0)))

(declare-fun e!1912 () Int)

(assert (=> d!2494 (= lt!953 e!1912)))

(declare-fun c!1228 () Bool)

(assert (=> d!2494 (= c!1228 (is-Nil!64 (front!61 queue!75)))))

(assert (=> d!2494 (= (size!23 (front!61 queue!75)) lt!953)))

(declare-fun b!3392 () Bool)

(assert (=> b!3392 (= e!1912 0)))

(declare-fun b!3393 () Bool)

(assert (=> b!3393 (= e!1912 (+ 1 (size!23 (tail!247 (front!61 queue!75)))))))

(assert (= (and d!2494 c!1228) b!3392))

(assert (= (and d!2494 (not c!1228)) b!3393))

(declare-fun m!5329 () Bool)

(assert (=> b!3393 m!5329))

(assert (=> d!2488 d!2494))

(declare-fun d!2496 () Bool)

(declare-fun lt!954 () Int)

(assert (=> d!2496 (>= lt!954 0)))

(declare-fun e!1913 () Int)

(assert (=> d!2496 (= lt!954 e!1913)))

(declare-fun c!1229 () Bool)

(assert (=> d!2496 (= c!1229 (is-Nil!64 (rear!63 queue!75)))))

(assert (=> d!2496 (= (size!23 (rear!63 queue!75)) lt!954)))

(declare-fun b!3394 () Bool)

(assert (=> b!3394 (= e!1913 0)))

(declare-fun b!3395 () Bool)

(assert (=> b!3395 (= e!1913 (+ 1 (size!23 (tail!247 (rear!63 queue!75)))))))

(assert (= (and d!2496 c!1229) b!3394))

(assert (= (and d!2496 (not c!1229)) b!3395))

(declare-fun m!5331 () Bool)

(assert (=> b!3395 m!5331))

(assert (=> d!2488 d!2496))

(push 1)

(assert (not d!2492))

(assert (not b!3395))

(assert (not d!2490))

(assert (not b!3387))

(assert (not b!3393))

(assert (not b!3381))

(assert (not b!3380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2498 () Bool)

(declare-fun lt!955 () Int)

(assert (=> d!2498 (>= lt!955 0)))

(declare-fun e!1914 () Int)

(assert (=> d!2498 (= lt!955 e!1914)))

(declare-fun c!1230 () Bool)

(assert (=> d!2498 (= c!1230 (is-Nil!64 (tail!247 (front!61 queue!75))))))

(assert (=> d!2498 (= (size!23 (tail!247 (front!61 queue!75))) lt!955)))

(declare-fun b!3396 () Bool)

(assert (=> b!3396 (= e!1914 0)))

(declare-fun b!3397 () Bool)

(assert (=> b!3397 (= e!1914 (+ 1 (size!23 (tail!247 (tail!247 (front!61 queue!75))))))))

(assert (= (and d!2498 c!1230) b!3396))

(assert (= (and d!2498 (not c!1230)) b!3397))

(declare-fun m!5333 () Bool)

(assert (=> b!3397 m!5333))

(assert (=> b!3393 d!2498))

(declare-fun d!2500 () Bool)

(declare-fun c!1233 () Bool)

(assert (=> d!2500 (= c!1233 (is-Nil!64 lt!947))))

(declare-fun e!1917 () (Set (_ BitVec 32)))

(assert (=> d!2500 (= (content!22 lt!947) e!1917)))

(declare-fun b!3402 () Bool)

(assert (=> b!3402 (= e!1917 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3403 () Bool)

(assert (=> b!3403 (= e!1917 (union (insert (head!235 lt!947) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!247 lt!947))))))

(assert (= (and d!2500 c!1233) b!3402))

(assert (= (and d!2500 (not c!1233)) b!3403))

(declare-fun m!5335 () Bool)

(assert (=> b!3403 m!5335))

(declare-fun m!5337 () Bool)

(assert (=> b!3403 m!5337))

(assert (=> b!3381 d!2500))

(declare-fun d!2502 () Bool)

(declare-fun c!1234 () Bool)

(assert (=> d!2502 (= c!1234 (is-Nil!64 (front!61 queue!75)))))

(declare-fun e!1918 () (Set (_ BitVec 32)))

(assert (=> d!2502 (= (content!22 (front!61 queue!75)) e!1918)))

(declare-fun b!3404 () Bool)

(assert (=> b!3404 (= e!1918 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3405 () Bool)

(assert (=> b!3405 (= e!1918 (union (insert (head!235 (front!61 queue!75)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!247 (front!61 queue!75)))))))

(assert (= (and d!2502 c!1234) b!3404))

(assert (= (and d!2502 (not c!1234)) b!3405))

(declare-fun m!5339 () Bool)

(assert (=> b!3405 m!5339))

(declare-fun m!5341 () Bool)

(assert (=> b!3405 m!5341))

(assert (=> b!3381 d!2502))

(declare-fun d!2504 () Bool)

(declare-fun c!1235 () Bool)

(assert (=> d!2504 (= c!1235 (is-Nil!64 (reverse!5 (rear!63 queue!75))))))

(declare-fun e!1919 () (Set (_ BitVec 32)))

(assert (=> d!2504 (= (content!22 (reverse!5 (rear!63 queue!75))) e!1919)))

(declare-fun b!3406 () Bool)

(assert (=> b!3406 (= e!1919 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3407 () Bool)

(assert (=> b!3407 (= e!1919 (union (insert (head!235 (reverse!5 (rear!63 queue!75))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!247 (reverse!5 (rear!63 queue!75))))))))

(assert (= (and d!2504 c!1235) b!3406))

(assert (= (and d!2504 (not c!1235)) b!3407))

(declare-fun m!5343 () Bool)

(assert (=> b!3407 m!5343))

(declare-fun m!5345 () Bool)

(assert (=> b!3407 m!5345))

(assert (=> b!3381 d!2504))

(declare-fun d!2506 () Bool)

(declare-fun e!1920 () Bool)

(assert (=> d!2506 e!1920))

(declare-fun res!1059 () Bool)

(assert (=> d!2506 (=> (not res!1059) (not e!1920))))

(declare-fun lt!956 () List!63)

(assert (=> d!2506 (= res!1059 (= (size!23 lt!956) (+ (size!23 (reverse!5 (tail!247 (rear!63 queue!75)))) (size!23 (Cons!63 (head!235 (rear!63 queue!75)) Nil!64)))))))

(declare-fun e!1921 () List!63)

(assert (=> d!2506 (= lt!956 e!1921)))

(declare-fun c!1236 () Bool)

(assert (=> d!2506 (= c!1236 (is-Nil!64 (reverse!5 (tail!247 (rear!63 queue!75)))))))

(assert (=> d!2506 (= (concat!2 (reverse!5 (tail!247 (rear!63 queue!75))) (Cons!63 (head!235 (rear!63 queue!75)) Nil!64)) lt!956)))

(declare-fun b!3408 () Bool)

(assert (=> b!3408 (= e!1921 (Cons!63 (head!235 (rear!63 queue!75)) Nil!64))))

(declare-fun b!3409 () Bool)

(assert (=> b!3409 (= e!1921 (Cons!63 (head!235 (reverse!5 (tail!247 (rear!63 queue!75)))) (concat!2 (tail!247 (reverse!5 (tail!247 (rear!63 queue!75)))) (Cons!63 (head!235 (rear!63 queue!75)) Nil!64))))))

(declare-fun b!3410 () Bool)

(assert (=> b!3410 (= e!1920 (= (content!22 lt!956) (union (content!22 (reverse!5 (tail!247 (rear!63 queue!75)))) (content!22 (Cons!63 (head!235 (rear!63 queue!75)) Nil!64)))))))

(assert (= (and d!2506 c!1236) b!3408))

(assert (= (and d!2506 (not c!1236)) b!3409))

(assert (= (and d!2506 res!1059) b!3410))

(declare-fun m!5347 () Bool)

(assert (=> d!2506 m!5347))

(assert (=> d!2506 m!5325))

(declare-fun m!5349 () Bool)

(assert (=> d!2506 m!5349))

(declare-fun m!5351 () Bool)

(assert (=> d!2506 m!5351))

(declare-fun m!5353 () Bool)

(assert (=> b!3409 m!5353))

(declare-fun m!5355 () Bool)

(assert (=> b!3410 m!5355))

(assert (=> b!3410 m!5325))

(declare-fun m!5357 () Bool)

(assert (=> b!3410 m!5357))

(declare-fun m!5359 () Bool)

(assert (=> b!3410 m!5359))

(assert (=> b!3387 d!2506))

(declare-fun d!2508 () Bool)

(declare-fun lt!957 () List!63)

(assert (=> d!2508 (= (content!22 lt!957) (content!22 (tail!247 (rear!63 queue!75))))))

(declare-fun e!1922 () List!63)

(assert (=> d!2508 (= lt!957 e!1922)))

(declare-fun c!1237 () Bool)

(assert (=> d!2508 (= c!1237 (is-Nil!64 (tail!247 (rear!63 queue!75))))))

(assert (=> d!2508 (= (reverse!5 (tail!247 (rear!63 queue!75))) lt!957)))

(declare-fun b!3411 () Bool)

(assert (=> b!3411 (= e!1922 Nil!64)))

(declare-fun b!3412 () Bool)

(assert (=> b!3412 (= e!1922 (concat!2 (reverse!5 (tail!247 (tail!247 (rear!63 queue!75)))) (Cons!63 (head!235 (tail!247 (rear!63 queue!75))) Nil!64)))))

(assert (= (and d!2508 c!1237) b!3411))

(assert (= (and d!2508 (not c!1237)) b!3412))

(declare-fun m!5361 () Bool)

(assert (=> d!2508 m!5361))

(declare-fun m!5363 () Bool)

(assert (=> d!2508 m!5363))

(declare-fun m!5365 () Bool)

(assert (=> b!3412 m!5365))

(assert (=> b!3412 m!5365))

(declare-fun m!5367 () Bool)

(assert (=> b!3412 m!5367))

(assert (=> b!3387 d!2508))

(declare-fun d!2510 () Bool)

(declare-fun lt!958 () Int)

(assert (=> d!2510 (>= lt!958 0)))

(declare-fun e!1923 () Int)

(assert (=> d!2510 (= lt!958 e!1923)))

(declare-fun c!1238 () Bool)

(assert (=> d!2510 (= c!1238 (is-Nil!64 lt!947))))

(assert (=> d!2510 (= (size!23 lt!947) lt!958)))

(declare-fun b!3413 () Bool)

(assert (=> b!3413 (= e!1923 0)))

(declare-fun b!3414 () Bool)

(assert (=> b!3414 (= e!1923 (+ 1 (size!23 (tail!247 lt!947))))))

(assert (= (and d!2510 c!1238) b!3413))

(assert (= (and d!2510 (not c!1238)) b!3414))

(declare-fun m!5369 () Bool)

(assert (=> b!3414 m!5369))

(assert (=> d!2490 d!2510))

(assert (=> d!2490 d!2494))

(declare-fun d!2512 () Bool)

(declare-fun lt!959 () Int)

(assert (=> d!2512 (>= lt!959 0)))

(declare-fun e!1924 () Int)

(assert (=> d!2512 (= lt!959 e!1924)))

(declare-fun c!1239 () Bool)

(assert (=> d!2512 (= c!1239 (is-Nil!64 (reverse!5 (rear!63 queue!75))))))

(assert (=> d!2512 (= (size!23 (reverse!5 (rear!63 queue!75))) lt!959)))

(declare-fun b!3415 () Bool)

(assert (=> b!3415 (= e!1924 0)))

(declare-fun b!3416 () Bool)

(assert (=> b!3416 (= e!1924 (+ 1 (size!23 (tail!247 (reverse!5 (rear!63 queue!75))))))))

(assert (= (and d!2512 c!1239) b!3415))

(assert (= (and d!2512 (not c!1239)) b!3416))

(declare-fun m!5371 () Bool)

(assert (=> b!3416 m!5371))

(assert (=> d!2490 d!2512))

(declare-fun d!2514 () Bool)

(declare-fun e!1925 () Bool)

(assert (=> d!2514 e!1925))

(declare-fun res!1060 () Bool)

(assert (=> d!2514 (=> (not res!1060) (not e!1925))))

(declare-fun lt!960 () List!63)

(assert (=> d!2514 (= res!1060 (= (size!23 lt!960) (+ (size!23 (tail!247 (front!61 queue!75))) (size!23 (reverse!5 (rear!63 queue!75))))))))

(declare-fun e!1926 () List!63)

(assert (=> d!2514 (= lt!960 e!1926)))

(declare-fun c!1240 () Bool)

(assert (=> d!2514 (= c!1240 (is-Nil!64 (tail!247 (front!61 queue!75))))))

(assert (=> d!2514 (= (concat!2 (tail!247 (front!61 queue!75)) (reverse!5 (rear!63 queue!75))) lt!960)))

(declare-fun b!3417 () Bool)

(assert (=> b!3417 (= e!1926 (reverse!5 (rear!63 queue!75)))))

(declare-fun b!3418 () Bool)

(assert (=> b!3418 (= e!1926 (Cons!63 (head!235 (tail!247 (front!61 queue!75))) (concat!2 (tail!247 (tail!247 (front!61 queue!75))) (reverse!5 (rear!63 queue!75)))))))

(declare-fun b!3419 () Bool)

(assert (=> b!3419 (= e!1925 (= (content!22 lt!960) (union (content!22 (tail!247 (front!61 queue!75))) (content!22 (reverse!5 (rear!63 queue!75))))))))

(assert (= (and d!2514 c!1240) b!3417))

(assert (= (and d!2514 (not c!1240)) b!3418))

(assert (= (and d!2514 res!1060) b!3419))

(declare-fun m!5373 () Bool)

(assert (=> d!2514 m!5373))

(assert (=> d!2514 m!5329))

(assert (=> d!2514 m!5301))

(assert (=> d!2514 m!5311))

(assert (=> b!3418 m!5301))

(declare-fun m!5375 () Bool)

(assert (=> b!3418 m!5375))

(declare-fun m!5377 () Bool)

(assert (=> b!3419 m!5377))

(assert (=> b!3419 m!5341))

(assert (=> b!3419 m!5301))

(assert (=> b!3419 m!5319))

(assert (=> b!3380 d!2514))

(declare-fun d!2516 () Bool)

(declare-fun lt!961 () Int)

(assert (=> d!2516 (>= lt!961 0)))

(declare-fun e!1927 () Int)

(assert (=> d!2516 (= lt!961 e!1927)))

(declare-fun c!1241 () Bool)

(assert (=> d!2516 (= c!1241 (is-Nil!64 (tail!247 (rear!63 queue!75))))))

(assert (=> d!2516 (= (size!23 (tail!247 (rear!63 queue!75))) lt!961)))

(declare-fun b!3420 () Bool)

(assert (=> b!3420 (= e!1927 0)))

(declare-fun b!3421 () Bool)

(assert (=> b!3421 (= e!1927 (+ 1 (size!23 (tail!247 (tail!247 (rear!63 queue!75))))))))

(assert (= (and d!2516 c!1241) b!3420))

(assert (= (and d!2516 (not c!1241)) b!3421))

(declare-fun m!5379 () Bool)

(assert (=> b!3421 m!5379))

(assert (=> b!3395 d!2516))

(declare-fun d!2518 () Bool)

(declare-fun c!1242 () Bool)

(assert (=> d!2518 (= c!1242 (is-Nil!64 lt!950))))

(declare-fun e!1928 () (Set (_ BitVec 32)))

(assert (=> d!2518 (= (content!22 lt!950) e!1928)))

(declare-fun b!3422 () Bool)

(assert (=> b!3422 (= e!1928 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3423 () Bool)

(assert (=> b!3423 (= e!1928 (union (insert (head!235 lt!950) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!247 lt!950))))))

(assert (= (and d!2518 c!1242) b!3422))

(assert (= (and d!2518 (not c!1242)) b!3423))

(declare-fun m!5381 () Bool)

(assert (=> b!3423 m!5381))

(declare-fun m!5383 () Bool)

(assert (=> b!3423 m!5383))

(assert (=> d!2492 d!2518))

(declare-fun d!2520 () Bool)

(declare-fun c!1243 () Bool)

(assert (=> d!2520 (= c!1243 (is-Nil!64 (rear!63 queue!75)))))

(declare-fun e!1929 () (Set (_ BitVec 32)))

(assert (=> d!2520 (= (content!22 (rear!63 queue!75)) e!1929)))

(declare-fun b!3424 () Bool)

(assert (=> b!3424 (= e!1929 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3425 () Bool)

(assert (=> b!3425 (= e!1929 (union (insert (head!235 (rear!63 queue!75)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!247 (rear!63 queue!75)))))))

(assert (= (and d!2520 c!1243) b!3424))

(assert (= (and d!2520 (not c!1243)) b!3425))

(declare-fun m!5385 () Bool)

(assert (=> b!3425 m!5385))

(assert (=> b!3425 m!5363))

(assert (=> d!2492 d!2520))

(push 1)

(assert (not b!3409))

(assert (not b!3419))

(assert (not b!3397))

(assert (not d!2506))

(assert (not b!3421))

(assert (not b!3425))

(assert (not b!3416))

(assert (not b!3410))

(assert (not b!3414))

(assert (not b!3423))

(assert (not b!3412))

(assert (not b!3418))

(assert (not b!3405))

(assert (not d!2508))

(assert (not b!3403))

(assert (not b!3407))

(assert (not d!2514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


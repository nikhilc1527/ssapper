; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2654 () Bool)

(assert start!2654)

(declare-fun res!4785 () Bool)

(declare-fun e!7123 () Bool)

(assert (=> start!2654 (=> (not res!4785) (not e!7123))))

(declare-datatypes () ((Parenthesis!80 (CloseParenthesis!79) (OpenParenthesis!79))))

(declare-datatypes () ((List!310 (Nil!308) (Cons!307 (head!525 Parenthesis!80) (tail!537 List!310)))))

(declare-fun xs!442 () List!310)

(assert (=> start!2654 (= res!4785 (not (is-Nil!308 xs!442)))))

(assert (=> start!2654 e!7123))

(assert (=> start!2654 true))

(declare-fun b!12993 () Bool)

(declare-fun res!4786 () Bool)

(assert (=> b!12993 (=> (not res!4786) (not e!7123))))

(declare-fun inductVal!37 () Bool)

(declare-fun foldRight_map_commutivity!0 (List!310) Bool)

(assert (=> b!12993 (= res!4786 (= inductVal!37 (foldRight_map_commutivity!0 (tail!537 xs!442))))))

(declare-fun b!12994 () Bool)

(declare-fun lambda!3467 () Int)

(declare-fun lambda!3469 () Int)

(declare-fun lambda!3468 () Int)

(declare-datatypes () ((Balance!397 (Balance!398 (extraOpen!239 Int) (extraClose!239 Int)))))

(declare-fun foldRight!74 (List!310 Balance!397 Int) Balance!397)

(declare-datatypes () ((List!311 (Nil!309) (Cons!308 (head!526 Balance!397) (tail!538 List!311)))))

(declare-fun foldRight!75 (List!311 Balance!397 Int) Balance!397)

(declare-fun map!168 (List!310 Int) List!311)

(assert (=> b!12994 (= e!7123 (not (= (foldRight!74 xs!442 (Balance!398 0 0) lambda!3467) (foldRight!75 (map!168 xs!442 lambda!3468) (Balance!398 0 0) lambda!3469))))))

(assert (= (and start!2654 res!4785) b!12993))

(assert (= (and b!12993 res!4786) b!12994))

(declare-fun m!16327 () Bool)

(assert (=> b!12993 m!16327))

(declare-fun m!16329 () Bool)

(assert (=> b!12994 m!16329))

(declare-fun m!16331 () Bool)

(assert (=> b!12994 m!16331))

(assert (=> b!12994 m!16331))

(declare-fun m!16333 () Bool)

(assert (=> b!12994 m!16333))

(push 1)

(assert (not b!12994))

(assert (not b!12993))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10177 () Bool)

(declare-fun c!3681 () Bool)

(assert (=> d!10177 (= c!3681 (is-Nil!308 xs!442))))

(declare-fun e!7126 () Balance!397)

(assert (=> d!10177 (= (foldRight!74 xs!442 (Balance!398 0 0) lambda!3467) e!7126)))

(declare-fun b!12999 () Bool)

(assert (=> b!12999 (= e!7126 (Balance!398 0 0))))

(declare-fun b!13000 () Bool)

(declare-fun dynLambda!554 (Int Parenthesis!80 Balance!397) Balance!397)

(assert (=> b!13000 (= e!7126 (dynLambda!554 lambda!3467 (head!525 xs!442) (foldRight!74 (tail!537 xs!442) (Balance!398 0 0) lambda!3467)))))

(assert (= (and d!10177 c!3681) b!12999))

(assert (= (and d!10177 (not c!3681)) b!13000))

(declare-fun b_lambda!7357 () Bool)

(assert (=> (not b_lambda!7357) (not b!13000)))

(declare-fun m!16335 () Bool)

(assert (=> b!13000 m!16335))

(assert (=> b!13000 m!16335))

(declare-fun m!16337 () Bool)

(assert (=> b!13000 m!16337))

(assert (=> b!12994 d!10177))

(declare-fun d!10179 () Bool)

(declare-fun c!3684 () Bool)

(assert (=> d!10179 (= c!3684 (is-Nil!309 (map!168 xs!442 lambda!3468)))))

(declare-fun e!7129 () Balance!397)

(assert (=> d!10179 (= (foldRight!75 (map!168 xs!442 lambda!3468) (Balance!398 0 0) lambda!3469) e!7129)))

(declare-fun b!13005 () Bool)

(assert (=> b!13005 (= e!7129 (Balance!398 0 0))))

(declare-fun b!13006 () Bool)

(declare-fun dynLambda!555 (Int Balance!397 Balance!397) Balance!397)

(assert (=> b!13006 (= e!7129 (dynLambda!555 lambda!3469 (head!526 (map!168 xs!442 lambda!3468)) (foldRight!75 (tail!538 (map!168 xs!442 lambda!3468)) (Balance!398 0 0) lambda!3469)))))

(assert (= (and d!10179 c!3684) b!13005))

(assert (= (and d!10179 (not c!3684)) b!13006))

(declare-fun b_lambda!7359 () Bool)

(assert (=> (not b_lambda!7359) (not b!13006)))

(declare-fun m!16339 () Bool)

(assert (=> b!13006 m!16339))

(assert (=> b!13006 m!16339))

(declare-fun m!16341 () Bool)

(assert (=> b!13006 m!16341))

(assert (=> b!12994 d!10179))

(declare-fun d!10181 () Bool)

(declare-fun c!3687 () Bool)

(assert (=> d!10181 (= c!3687 (is-Nil!308 xs!442))))

(declare-fun e!7132 () List!311)

(assert (=> d!10181 (= (map!168 xs!442 lambda!3468) e!7132)))

(declare-fun b!13011 () Bool)

(assert (=> b!13011 (= e!7132 Nil!309)))

(declare-fun b!13012 () Bool)

(declare-fun dynLambda!556 (Int Parenthesis!80) Balance!397)

(assert (=> b!13012 (= e!7132 (Cons!308 (dynLambda!556 lambda!3468 (head!525 xs!442)) (map!168 (tail!537 xs!442) lambda!3468)))))

(assert (= (and d!10181 c!3687) b!13011))

(assert (= (and d!10181 (not c!3687)) b!13012))

(declare-fun b_lambda!7361 () Bool)

(assert (=> (not b_lambda!7361) (not b!13012)))

(declare-fun m!16343 () Bool)

(assert (=> b!13012 m!16343))

(declare-fun m!16345 () Bool)

(assert (=> b!13012 m!16345))

(assert (=> b!12994 d!10181))

(declare-fun bs!3429 () Bool)

(declare-fun b!13017 () Bool)

(assert (= bs!3429 (and b!13017 b!12994)))

(declare-fun lambda!3482 () Int)

(assert (=> bs!3429 (= lambda!3482 lambda!3467)))

(declare-fun lambda!3483 () Int)

(assert (=> bs!3429 (= lambda!3483 lambda!3468)))

(declare-fun lambda!3484 () Int)

(assert (=> bs!3429 (= lambda!3484 lambda!3469)))

(declare-fun bs!3430 () Bool)

(declare-fun b!13018 () Bool)

(assert (= bs!3430 (and b!13018 b!12994)))

(declare-fun lambda!3485 () Int)

(assert (=> bs!3430 (= lambda!3485 lambda!3467)))

(declare-fun bs!3431 () Bool)

(assert (= bs!3431 (and b!13018 b!13017)))

(assert (=> bs!3431 (= lambda!3485 lambda!3482)))

(declare-fun lambda!3486 () Int)

(assert (=> bs!3430 (= lambda!3486 lambda!3468)))

(assert (=> bs!3431 (= lambda!3486 lambda!3483)))

(declare-fun lambda!3487 () Int)

(assert (=> bs!3430 (= lambda!3487 lambda!3469)))

(assert (=> bs!3431 (= lambda!3487 lambda!3484)))

(declare-fun e!7135 () Bool)

(assert (=> b!13018 (= e!7135 (= (foldRight!74 (tail!537 xs!442) (Balance!398 0 0) lambda!3485) (foldRight!75 (map!168 (tail!537 xs!442) lambda!3486) (Balance!398 0 0) lambda!3487)))))

(declare-fun lt!1884 () Bool)

(assert (=> b!13018 (= lt!1884 (foldRight_map_commutivity!0 (tail!537 (tail!537 xs!442))))))

(declare-fun d!10183 () Bool)

(assert (=> d!10183 e!7135))

(declare-fun c!3690 () Bool)

(assert (=> d!10183 (= c!3690 (is-Nil!308 (tail!537 xs!442)))))

(assert (=> d!10183 (= (foldRight_map_commutivity!0 (tail!537 xs!442)) true)))

(assert (=> b!13017 (= e!7135 (= (foldRight!74 (tail!537 xs!442) (Balance!398 0 0) lambda!3482) (foldRight!75 (map!168 (tail!537 xs!442) lambda!3483) (Balance!398 0 0) lambda!3484)))))

(assert (= (and d!10183 c!3690) b!13017))

(assert (= (and d!10183 (not c!3690)) b!13018))

(declare-fun m!16347 () Bool)

(assert (=> b!13018 m!16347))

(declare-fun m!16349 () Bool)

(assert (=> b!13018 m!16349))

(assert (=> b!13018 m!16349))

(declare-fun m!16351 () Bool)

(assert (=> b!13018 m!16351))

(declare-fun m!16353 () Bool)

(assert (=> b!13018 m!16353))

(declare-fun m!16355 () Bool)

(assert (=> b!13017 m!16355))

(declare-fun m!16357 () Bool)

(assert (=> b!13017 m!16357))

(assert (=> b!13017 m!16357))

(declare-fun m!16359 () Bool)

(assert (=> b!13017 m!16359))

(assert (=> b!12993 d!10183))

(declare-fun b_lambda!7363 () Bool)

(assert (= b_lambda!7359 (or b!12994 b_lambda!7363)))

(declare-fun bs!3432 () Bool)

(declare-fun d!10185 () Bool)

(assert (= bs!3432 (and d!10185 b!12994)))

(declare-fun ++!3 (Balance!397 Balance!397) Balance!397)

(assert (=> bs!3432 (= (dynLambda!555 lambda!3469 (head!526 (map!168 xs!442 lambda!3468)) (foldRight!75 (tail!538 (map!168 xs!442 lambda!3468)) (Balance!398 0 0) lambda!3469)) (++!3 (head!526 (map!168 xs!442 lambda!3468)) (foldRight!75 (tail!538 (map!168 xs!442 lambda!3468)) (Balance!398 0 0) lambda!3469)))))

(assert (=> bs!3432 m!16339))

(declare-fun m!16361 () Bool)

(assert (=> bs!3432 m!16361))

(assert (=> b!13006 d!10185))

(declare-fun b_lambda!7365 () Bool)

(assert (= b_lambda!7361 (or b!12994 b_lambda!7365)))

(declare-fun bs!3433 () Bool)

(declare-fun d!10187 () Bool)

(assert (= bs!3433 (and d!10187 b!12994)))

(declare-fun fromParenthesis!0 (Parenthesis!80) Balance!397)

(assert (=> bs!3433 (= (dynLambda!556 lambda!3468 (head!525 xs!442)) (fromParenthesis!0 (head!525 xs!442)))))

(declare-fun m!16363 () Bool)

(assert (=> bs!3433 m!16363))

(assert (=> b!13012 d!10187))

(declare-fun b_lambda!7367 () Bool)

(assert (= b_lambda!7357 (or b!12994 b_lambda!7367)))

(declare-fun bs!3434 () Bool)

(declare-fun d!10189 () Bool)

(assert (= bs!3434 (and d!10189 b!12994)))

(assert (=> bs!3434 (= (dynLambda!554 lambda!3467 (head!525 xs!442) (foldRight!74 (tail!537 xs!442) (Balance!398 0 0) lambda!3467)) (++!3 (fromParenthesis!0 (head!525 xs!442)) (foldRight!74 (tail!537 xs!442) (Balance!398 0 0) lambda!3467)))))

(assert (=> bs!3434 m!16363))

(assert (=> bs!3434 m!16363))

(assert (=> bs!3434 m!16335))

(declare-fun m!16365 () Bool)

(assert (=> bs!3434 m!16365))

(assert (=> b!13000 d!10189))

(push 1)

(assert (not b_lambda!7367))

(assert (not bs!3432))

(assert (not b_lambda!7363))

(assert (not b!13017))

(assert (not b!13018))

(assert (not b_lambda!7365))

(assert (not b!13000))

(assert (not bs!3433))

(assert (not b!13012))

(assert (not b!13006))

(assert (not bs!3434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


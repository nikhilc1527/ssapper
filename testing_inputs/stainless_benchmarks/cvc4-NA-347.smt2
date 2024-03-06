; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2646 () Bool)

(assert start!2646)

(declare-fun res!4780 () Bool)

(declare-fun e!7111 () Bool)

(assert (=> start!2646 (=> (not res!4780) (not e!7111))))

(declare-datatypes () ((Parenthesis!79 (CloseParenthesis!78) (OpenParenthesis!78))))

(declare-datatypes () ((List!308 (Nil!306) (Cons!305 (head!523 Parenthesis!79) (tail!535 List!308)))))

(declare-fun xs!442 () List!308)

(assert (=> start!2646 (= res!4780 (is-Nil!306 xs!442))))

(assert (=> start!2646 e!7111))

(assert (=> start!2646 true))

(declare-fun lambda!3459 () Int)

(declare-fun lambda!3460 () Int)

(declare-fun b!12970 () Bool)

(declare-fun lambda!3458 () Int)

(declare-datatypes () ((Balance!395 (Balance!396 (extraOpen!238 Int) (extraClose!238 Int)))))

(declare-fun foldRight!72 (List!308 Balance!395 Int) Balance!395)

(declare-datatypes () ((List!309 (Nil!307) (Cons!306 (head!524 Balance!395) (tail!536 List!309)))))

(declare-fun foldRight!73 (List!309 Balance!395 Int) Balance!395)

(declare-fun map!167 (List!308 Int) List!309)

(assert (=> b!12970 (= e!7111 (not (= (foldRight!72 xs!442 (Balance!396 0 0) lambda!3458) (foldRight!73 (map!167 xs!442 lambda!3459) (Balance!396 0 0) lambda!3460))))))

(assert (= (and start!2646 res!4780) b!12970))

(declare-fun m!16303 () Bool)

(assert (=> b!12970 m!16303))

(declare-fun m!16305 () Bool)

(assert (=> b!12970 m!16305))

(assert (=> b!12970 m!16305))

(declare-fun m!16307 () Bool)

(assert (=> b!12970 m!16307))

(push 1)

(assert (not b!12970))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10165 () Bool)

(declare-fun c!3672 () Bool)

(assert (=> d!10165 (= c!3672 (is-Nil!306 xs!442))))

(declare-fun e!7114 () Balance!395)

(assert (=> d!10165 (= (foldRight!72 xs!442 (Balance!396 0 0) lambda!3458) e!7114)))

(declare-fun b!12975 () Bool)

(assert (=> b!12975 (= e!7114 (Balance!396 0 0))))

(declare-fun b!12976 () Bool)

(declare-fun dynLambda!551 (Int Parenthesis!79 Balance!395) Balance!395)

(assert (=> b!12976 (= e!7114 (dynLambda!551 lambda!3458 (head!523 xs!442) (foldRight!72 (tail!535 xs!442) (Balance!396 0 0) lambda!3458)))))

(assert (= (and d!10165 c!3672) b!12975))

(assert (= (and d!10165 (not c!3672)) b!12976))

(declare-fun b_lambda!7345 () Bool)

(assert (=> (not b_lambda!7345) (not b!12976)))

(declare-fun m!16309 () Bool)

(assert (=> b!12976 m!16309))

(assert (=> b!12976 m!16309))

(declare-fun m!16311 () Bool)

(assert (=> b!12976 m!16311))

(assert (=> b!12970 d!10165))

(declare-fun d!10167 () Bool)

(declare-fun c!3675 () Bool)

(assert (=> d!10167 (= c!3675 (is-Nil!307 (map!167 xs!442 lambda!3459)))))

(declare-fun e!7117 () Balance!395)

(assert (=> d!10167 (= (foldRight!73 (map!167 xs!442 lambda!3459) (Balance!396 0 0) lambda!3460) e!7117)))

(declare-fun b!12981 () Bool)

(assert (=> b!12981 (= e!7117 (Balance!396 0 0))))

(declare-fun b!12982 () Bool)

(declare-fun dynLambda!552 (Int Balance!395 Balance!395) Balance!395)

(assert (=> b!12982 (= e!7117 (dynLambda!552 lambda!3460 (head!524 (map!167 xs!442 lambda!3459)) (foldRight!73 (tail!536 (map!167 xs!442 lambda!3459)) (Balance!396 0 0) lambda!3460)))))

(assert (= (and d!10167 c!3675) b!12981))

(assert (= (and d!10167 (not c!3675)) b!12982))

(declare-fun b_lambda!7347 () Bool)

(assert (=> (not b_lambda!7347) (not b!12982)))

(declare-fun m!16313 () Bool)

(assert (=> b!12982 m!16313))

(assert (=> b!12982 m!16313))

(declare-fun m!16315 () Bool)

(assert (=> b!12982 m!16315))

(assert (=> b!12970 d!10167))

(declare-fun d!10169 () Bool)

(declare-fun c!3678 () Bool)

(assert (=> d!10169 (= c!3678 (is-Nil!306 xs!442))))

(declare-fun e!7120 () List!309)

(assert (=> d!10169 (= (map!167 xs!442 lambda!3459) e!7120)))

(declare-fun b!12987 () Bool)

(assert (=> b!12987 (= e!7120 Nil!307)))

(declare-fun b!12988 () Bool)

(declare-fun dynLambda!553 (Int Parenthesis!79) Balance!395)

(assert (=> b!12988 (= e!7120 (Cons!306 (dynLambda!553 lambda!3459 (head!523 xs!442)) (map!167 (tail!535 xs!442) lambda!3459)))))

(assert (= (and d!10169 c!3678) b!12987))

(assert (= (and d!10169 (not c!3678)) b!12988))

(declare-fun b_lambda!7349 () Bool)

(assert (=> (not b_lambda!7349) (not b!12988)))

(declare-fun m!16317 () Bool)

(assert (=> b!12988 m!16317))

(declare-fun m!16319 () Bool)

(assert (=> b!12988 m!16319))

(assert (=> b!12970 d!10169))

(declare-fun b_lambda!7351 () Bool)

(assert (= b_lambda!7347 (or b!12970 b_lambda!7351)))

(declare-fun bs!3425 () Bool)

(declare-fun d!10171 () Bool)

(assert (= bs!3425 (and d!10171 b!12970)))

(declare-fun ++!3 (Balance!395 Balance!395) Balance!395)

(assert (=> bs!3425 (= (dynLambda!552 lambda!3460 (head!524 (map!167 xs!442 lambda!3459)) (foldRight!73 (tail!536 (map!167 xs!442 lambda!3459)) (Balance!396 0 0) lambda!3460)) (++!3 (head!524 (map!167 xs!442 lambda!3459)) (foldRight!73 (tail!536 (map!167 xs!442 lambda!3459)) (Balance!396 0 0) lambda!3460)))))

(assert (=> bs!3425 m!16313))

(declare-fun m!16321 () Bool)

(assert (=> bs!3425 m!16321))

(assert (=> b!12982 d!10171))

(declare-fun b_lambda!7353 () Bool)

(assert (= b_lambda!7345 (or b!12970 b_lambda!7353)))

(declare-fun bs!3426 () Bool)

(declare-fun d!10173 () Bool)

(assert (= bs!3426 (and d!10173 b!12970)))

(declare-fun fromParenthesis!0 (Parenthesis!79) Balance!395)

(assert (=> bs!3426 (= (dynLambda!551 lambda!3458 (head!523 xs!442) (foldRight!72 (tail!535 xs!442) (Balance!396 0 0) lambda!3458)) (++!3 (fromParenthesis!0 (head!523 xs!442)) (foldRight!72 (tail!535 xs!442) (Balance!396 0 0) lambda!3458)))))

(declare-fun m!16323 () Bool)

(assert (=> bs!3426 m!16323))

(assert (=> bs!3426 m!16323))

(assert (=> bs!3426 m!16309))

(declare-fun m!16325 () Bool)

(assert (=> bs!3426 m!16325))

(assert (=> b!12976 d!10173))

(declare-fun b_lambda!7355 () Bool)

(assert (= b_lambda!7349 (or b!12970 b_lambda!7355)))

(declare-fun bs!3427 () Bool)

(declare-fun d!10175 () Bool)

(assert (= bs!3427 (and d!10175 b!12970)))

(assert (=> bs!3427 (= (dynLambda!553 lambda!3459 (head!523 xs!442)) (fromParenthesis!0 (head!523 xs!442)))))

(assert (=> bs!3427 m!16323))

(assert (=> b!12988 d!10175))

(push 1)

(assert (not b_lambda!7355))

(assert (not b_lambda!7351))

(assert (not bs!3427))

(assert (not bs!3425))

(assert (not b!12976))

(assert (not b_lambda!7353))

(assert (not b!12988))

(assert (not bs!3426))

(assert (not b!12982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


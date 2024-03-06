; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1192 () Bool)

(assert start!1192)

(declare-fun res!1919 () Bool)

(declare-fun e!4030 () Bool)

(assert (=> start!1192 (=> (not res!1919) (not e!4030))))

(declare-datatypes () ((Parenthesis!28 (CloseParenthesis!27) (OpenParenthesis!27))))

(declare-datatypes () ((List!139 (Nil!137) (Cons!136 (head!354 Parenthesis!28) (tail!366 List!139)))))

(declare-fun xs!395 () List!139)

(declare-fun isEmpty!121 (List!139) Bool)

(assert (=> start!1192 (= res!1919 (not (isEmpty!121 xs!395)))))

(assert (=> start!1192 e!4030))

(assert (=> start!1192 true))

(declare-fun b!6846 () Bool)

(declare-datatypes () ((ProofOps!46 (ProofOps!47 (prop!133 Bool)))))

(declare-fun because!2 (ProofOps!46 Bool) Bool)

(declare-fun isMatchedSequential!0 (List!139) Bool)

(declare-fun isMatchedHybid!0 (List!139) Bool)

(assert (=> b!6846 (= e!4030 (not (because!2 (ProofOps!47 (= (isMatchedSequential!0 xs!395) (isMatchedHybid!0 xs!395))) true)))))

(declare-fun lambda!1031 () Int)

(declare-fun lambda!1030 () Int)

(declare-fun lambda!1032 () Int)

(declare-datatypes () ((Balance!67 (Balance!68 (extraOpen!74 Int) (extraClose!74 Int)))))

(declare-fun foldRight!28 (List!139 Balance!67 Int) Balance!67)

(declare-datatypes () ((List!140 (Nil!138) (Cons!137 (head!355 Balance!67) (tail!367 List!140)))))

(declare-fun foldRight1!19 (List!140 Int) Balance!67)

(declare-fun map!138 (List!139 Int) List!140)

(assert (=> b!6846 (= (foldRight!28 xs!395 (Balance!68 0 0) lambda!1030) (foldRight1!19 (map!138 xs!395 lambda!1031) lambda!1032))))

(assert (= (and start!1192 res!1919) b!6846))

(declare-fun m!9689 () Bool)

(assert (=> start!1192 m!9689))

(declare-fun m!9691 () Bool)

(assert (=> b!6846 m!9691))

(declare-fun m!9693 () Bool)

(assert (=> b!6846 m!9693))

(declare-fun m!9695 () Bool)

(assert (=> b!6846 m!9695))

(declare-fun m!9697 () Bool)

(assert (=> b!6846 m!9697))

(assert (=> b!6846 m!9691))

(declare-fun m!9699 () Bool)

(assert (=> b!6846 m!9699))

(declare-fun m!9701 () Bool)

(assert (=> b!6846 m!9701))

(push 1)

(assert (not start!1192))

(assert (not b!6846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5423 () Bool)

(assert (=> d!5423 (= (isEmpty!121 xs!395) (is-Nil!137 xs!395))))

(assert (=> start!1192 d!5423))

(declare-fun d!5425 () Bool)

(declare-fun c!2496 () Bool)

(assert (=> d!5425 (= c!2496 (is-Nil!137 xs!395))))

(declare-fun e!4033 () List!140)

(assert (=> d!5425 (= (map!138 xs!395 lambda!1031) e!4033)))

(declare-fun b!6851 () Bool)

(assert (=> b!6851 (= e!4033 Nil!138)))

(declare-fun b!6852 () Bool)

(declare-fun dynLambda!110 (Int Parenthesis!28) Balance!67)

(assert (=> b!6852 (= e!4033 (Cons!137 (dynLambda!110 lambda!1031 (head!354 xs!395)) (map!138 (tail!366 xs!395) lambda!1031)))))

(assert (= (and d!5425 c!2496) b!6851))

(assert (= (and d!5425 (not c!2496)) b!6852))

(declare-fun b_lambda!3275 () Bool)

(assert (=> (not b_lambda!3275) (not b!6852)))

(declare-fun m!9703 () Bool)

(assert (=> b!6852 m!9703))

(declare-fun m!9705 () Bool)

(assert (=> b!6852 m!9705))

(assert (=> b!6846 d!5425))

(declare-fun d!5427 () Bool)

(declare-fun c!2499 () Bool)

(assert (=> d!5427 (= c!2499 (is-Nil!137 xs!395))))

(declare-fun e!4036 () Balance!67)

(assert (=> d!5427 (= (foldRight!28 xs!395 (Balance!68 0 0) lambda!1030) e!4036)))

(declare-fun b!6857 () Bool)

(assert (=> b!6857 (= e!4036 (Balance!68 0 0))))

(declare-fun b!6858 () Bool)

(declare-fun dynLambda!111 (Int Parenthesis!28 Balance!67) Balance!67)

(assert (=> b!6858 (= e!4036 (dynLambda!111 lambda!1030 (head!354 xs!395) (foldRight!28 (tail!366 xs!395) (Balance!68 0 0) lambda!1030)))))

(assert (= (and d!5427 c!2499) b!6857))

(assert (= (and d!5427 (not c!2499)) b!6858))

(declare-fun b_lambda!3277 () Bool)

(assert (=> (not b_lambda!3277) (not b!6858)))

(declare-fun m!9707 () Bool)

(assert (=> b!6858 m!9707))

(assert (=> b!6858 m!9707))

(declare-fun m!9709 () Bool)

(assert (=> b!6858 m!9709))

(assert (=> b!6846 d!5427))

(declare-fun bs!1555 () Bool)

(declare-fun d!5429 () Bool)

(assert (= bs!1555 (and d!5429 b!6846)))

(declare-fun lambda!1037 () Int)

(assert (=> bs!1555 (= lambda!1037 lambda!1031)))

(declare-fun lambda!1038 () Int)

(assert (=> bs!1555 (= lambda!1038 lambda!1032)))

(declare-fun isBalanced!0 (Balance!67) Bool)

(assert (=> d!5429 (= (isMatchedHybid!0 xs!395) (isBalanced!0 (foldRight1!19 (map!138 xs!395 lambda!1037) lambda!1038)))))

(declare-fun bs!1556 () Bool)

(assert (= bs!1556 d!5429))

(declare-fun m!9711 () Bool)

(assert (=> bs!1556 m!9711))

(assert (=> bs!1556 m!9711))

(declare-fun m!9713 () Bool)

(assert (=> bs!1556 m!9713))

(assert (=> bs!1556 m!9713))

(declare-fun m!9715 () Bool)

(assert (=> bs!1556 m!9715))

(assert (=> b!6846 d!5429))

(declare-fun d!5431 () Bool)

(assert (=> d!5431 (= (because!2 (ProofOps!47 (= (isMatchedSequential!0 xs!395) (isMatchedHybid!0 xs!395))) true) (prop!133 (ProofOps!47 (= (isMatchedSequential!0 xs!395) (isMatchedHybid!0 xs!395)))))))

(assert (=> b!6846 d!5431))

(declare-fun bs!1557 () Bool)

(declare-fun d!5433 () Bool)

(assert (= bs!1557 (and d!5433 b!6846)))

(declare-fun lambda!1041 () Int)

(assert (=> bs!1557 (= lambda!1041 lambda!1030)))

(assert (=> d!5433 (= (isMatchedSequential!0 xs!395) (isBalanced!0 (foldRight!28 xs!395 (Balance!68 0 0) lambda!1041)))))

(declare-fun bs!1558 () Bool)

(assert (= bs!1558 d!5433))

(declare-fun m!9717 () Bool)

(assert (=> bs!1558 m!9717))

(assert (=> bs!1558 m!9717))

(declare-fun m!9719 () Bool)

(assert (=> bs!1558 m!9719))

(assert (=> b!6846 d!5433))

(declare-fun d!5435 () Bool)

(declare-fun c!2502 () Bool)

(assert (=> d!5435 (= c!2502 (and (is-Cons!137 (map!138 xs!395 lambda!1031)) (is-Nil!138 (tail!367 (map!138 xs!395 lambda!1031)))))))

(declare-fun e!4039 () Balance!67)

(assert (=> d!5435 (= (foldRight1!19 (map!138 xs!395 lambda!1031) lambda!1032) e!4039)))

(declare-fun b!6863 () Bool)

(assert (=> b!6863 (= e!4039 (head!355 (map!138 xs!395 lambda!1031)))))

(declare-fun b!6864 () Bool)

(declare-fun dynLambda!112 (Int Balance!67 Balance!67) Balance!67)

(assert (=> b!6864 (= e!4039 (dynLambda!112 lambda!1032 (head!355 (map!138 xs!395 lambda!1031)) (foldRight1!19 (tail!367 (map!138 xs!395 lambda!1031)) lambda!1032)))))

(assert (= (and d!5435 c!2502) b!6863))

(assert (= (and d!5435 (not c!2502)) b!6864))

(declare-fun b_lambda!3279 () Bool)

(assert (=> (not b_lambda!3279) (not b!6864)))

(declare-fun m!9721 () Bool)

(assert (=> b!6864 m!9721))

(assert (=> b!6864 m!9721))

(declare-fun m!9723 () Bool)

(assert (=> b!6864 m!9723))

(assert (=> b!6846 d!5435))

(declare-fun b_lambda!3281 () Bool)

(assert (= b_lambda!3277 (or b!6846 b_lambda!3281)))

(declare-fun bs!1559 () Bool)

(declare-fun d!5437 () Bool)

(assert (= bs!1559 (and d!5437 b!6846)))

(declare-fun +$colon!0 (Balance!67 Parenthesis!28) Balance!67)

(assert (=> bs!1559 (= (dynLambda!111 lambda!1030 (head!354 xs!395) (foldRight!28 (tail!366 xs!395) (Balance!68 0 0) lambda!1030)) (+$colon!0 (foldRight!28 (tail!366 xs!395) (Balance!68 0 0) lambda!1030) (head!354 xs!395)))))

(assert (=> bs!1559 m!9707))

(declare-fun m!9725 () Bool)

(assert (=> bs!1559 m!9725))

(assert (=> b!6858 d!5437))

(declare-fun b_lambda!3283 () Bool)

(assert (= b_lambda!3279 (or b!6846 b_lambda!3283)))

(declare-fun bs!1560 () Bool)

(declare-fun d!5439 () Bool)

(assert (= bs!1560 (and d!5439 b!6846)))

(declare-fun ++!3 (Balance!67 Balance!67) Balance!67)

(assert (=> bs!1560 (= (dynLambda!112 lambda!1032 (head!355 (map!138 xs!395 lambda!1031)) (foldRight1!19 (tail!367 (map!138 xs!395 lambda!1031)) lambda!1032)) (++!3 (head!355 (map!138 xs!395 lambda!1031)) (foldRight1!19 (tail!367 (map!138 xs!395 lambda!1031)) lambda!1032)))))

(assert (=> bs!1560 m!9721))

(declare-fun m!9727 () Bool)

(assert (=> bs!1560 m!9727))

(assert (=> b!6864 d!5439))

(declare-fun b_lambda!3285 () Bool)

(assert (= b_lambda!3275 (or b!6846 b_lambda!3285)))

(declare-fun bs!1561 () Bool)

(declare-fun d!5441 () Bool)

(assert (= bs!1561 (and d!5441 b!6846)))

(declare-fun fromParenthesis!0 (Parenthesis!28) Balance!67)

(assert (=> bs!1561 (= (dynLambda!110 lambda!1031 (head!354 xs!395)) (fromParenthesis!0 (head!354 xs!395)))))

(declare-fun m!9729 () Bool)

(assert (=> bs!1561 m!9729))

(assert (=> b!6852 d!5441))

(push 1)

(assert (not b!6864))

(assert (not d!5429))

(assert (not bs!1559))

(assert (not b!6858))

(assert (not b_lambda!3285))

(assert (not bs!1561))

(assert (not b_lambda!3283))

(assert (not d!5433))

(assert (not b_lambda!3281))

(assert (not bs!1560))

(assert (not b!6852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


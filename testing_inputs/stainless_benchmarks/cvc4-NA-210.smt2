; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1576 () Bool)

(assert start!1576)

(declare-fun res!2442 () Bool)

(declare-fun e!4637 () Bool)

(assert (=> start!1576 (=> (not res!2442) (not e!4637))))

(declare-datatypes () ((Balance!139 (Balance!140 (extraOpen!110 Int) (extraClose!110 Int)))))

(declare-fun b!5631 () Balance!139)

(declare-fun nonNegative!0 (Balance!139) Bool)

(assert (=> start!1576 (= res!2442 (nonNegative!0 b!5631))))

(assert (=> start!1576 e!4637))

(assert (=> start!1576 true))

(declare-fun b!8122 () Bool)

(declare-datatypes () ((Parenthesis!52 (CloseParenthesis!51) (OpenParenthesis!51))))

(declare-fun p!264 () Parenthesis!52)

(declare-fun +$colon!0 (Balance!139 Parenthesis!52) Balance!139)

(declare-fun ++!3 (Balance!139 Balance!139) Balance!139)

(declare-fun fromParenthesis!0 (Parenthesis!52) Balance!139)

(assert (=> b!8122 (= e!4637 (not (= (+$colon!0 b!5631 p!264) (++!3 (fromParenthesis!0 p!264) b!5631))))))

(assert (= (and start!1576 res!2442) b!8122))

(declare-fun m!10975 () Bool)

(assert (=> start!1576 m!10975))

(declare-fun m!10977 () Bool)

(assert (=> b!8122 m!10977))

(declare-fun m!10979 () Bool)

(assert (=> b!8122 m!10979))

(assert (=> b!8122 m!10979))

(declare-fun m!10981 () Bool)

(assert (=> b!8122 m!10981))

(push 1)

(assert (not b!8122))

(assert (not start!1576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6353 () Bool)

(assert (=> d!6353 (= (+$colon!0 b!5631 p!264) (ite (and (is-OpenParenthesis!51 p!264) (> (extraClose!110 b!5631) 0)) (Balance!140 (extraOpen!110 b!5631) (- (extraClose!110 b!5631) 1)) (ite (is-OpenParenthesis!51 p!264) (Balance!140 (+ (extraOpen!110 b!5631) 1) (extraClose!110 b!5631)) (Balance!140 (extraOpen!110 b!5631) (+ (extraClose!110 b!5631) 1)))))))

(assert (=> b!8122 d!6353))

(declare-fun d!6355 () Bool)

(declare-fun lt!1492 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!6355 (= lt!1492 (min!4 (extraOpen!110 (fromParenthesis!0 p!264)) (extraClose!110 b!5631)))))

(assert (=> d!6355 (= (++!3 (fromParenthesis!0 p!264) b!5631) (Balance!140 (- (+ (extraOpen!110 (fromParenthesis!0 p!264)) (extraOpen!110 b!5631)) lt!1492) (- (+ (extraClose!110 (fromParenthesis!0 p!264)) (extraClose!110 b!5631)) lt!1492)))))

(declare-fun bs!1865 () Bool)

(assert (= bs!1865 d!6355))

(declare-fun m!10983 () Bool)

(assert (=> bs!1865 m!10983))

(assert (=> b!8122 d!6355))

(declare-fun d!6357 () Bool)

(assert (=> d!6357 (= (fromParenthesis!0 p!264) (ite (is-OpenParenthesis!51 p!264) (Balance!140 1 0) (Balance!140 0 1)))))

(assert (=> b!8122 d!6357))

(declare-fun d!6359 () Bool)

(assert (=> d!6359 (= (nonNegative!0 b!5631) (and (>= (extraOpen!110 b!5631) 0) (>= (extraClose!110 b!5631) 0)))))

(assert (=> start!1576 d!6359))

(push 1)

(assert (not d!6355))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6361 () Bool)

(assert (=> d!6361 (= (min!4 (extraOpen!110 (fromParenthesis!0 p!264)) (extraClose!110 b!5631)) (ite (<= (extraOpen!110 (fromParenthesis!0 p!264)) (extraClose!110 b!5631)) (extraOpen!110 (fromParenthesis!0 p!264)) (extraClose!110 b!5631)))))

(assert (=> d!6355 d!6361))

(push 1)

(check-sat)

(pop 1)


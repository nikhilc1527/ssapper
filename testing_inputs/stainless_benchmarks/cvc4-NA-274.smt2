; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2118 () Bool)

(assert start!2118)

(declare-fun res!3707 () Bool)

(declare-fun e!6135 () Bool)

(assert (=> start!2118 (=> (not res!3707) (not e!6135))))

(declare-datatypes () ((Balance!265 (Balance!266 (extraOpen!173 Int) (extraClose!173 Int)))))

(declare-fun b!5626 () Balance!265)

(declare-fun nonNegative!0 (Balance!265) Bool)

(assert (=> start!2118 (= res!3707 (nonNegative!0 b!5626))))

(assert (=> start!2118 e!6135))

(assert (=> start!2118 true))

(declare-fun b!10538 () Bool)

(declare-datatypes () ((Parenthesis!72 (CloseParenthesis!71) (OpenParenthesis!71))))

(declare-fun p!256 () Parenthesis!72)

(declare-fun updateCounter!0 (Parenthesis!72 Int) Int)

(declare-fun balanceToCounter!0 (Balance!265) Int)

(declare-fun +$colon!0 (Balance!265 Parenthesis!72) Balance!265)

(assert (=> b!10538 (= e!6135 (not (= (updateCounter!0 p!256 (balanceToCounter!0 b!5626)) (balanceToCounter!0 (+$colon!0 b!5626 p!256)))))))

(assert (= (and start!2118 res!3707) b!10538))

(declare-fun m!13627 () Bool)

(assert (=> start!2118 m!13627))

(declare-fun m!13629 () Bool)

(assert (=> b!10538 m!13629))

(assert (=> b!10538 m!13629))

(declare-fun m!13631 () Bool)

(assert (=> b!10538 m!13631))

(declare-fun m!13633 () Bool)

(assert (=> b!10538 m!13633))

(assert (=> b!10538 m!13633))

(declare-fun m!13635 () Bool)

(assert (=> b!10538 m!13635))

(push 1)

(assert (not b!10538))

(assert (not start!2118))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8463 () Bool)

(assert (=> d!8463 (= (updateCounter!0 p!256 (balanceToCounter!0 b!5626)) (ite (< (balanceToCounter!0 b!5626) 0) (- 1) (ite (is-OpenParenthesis!71 p!256) (- (balanceToCounter!0 b!5626) 1) (+ (balanceToCounter!0 b!5626) 1))))))

(assert (=> b!10538 d!8463))

(declare-fun d!8465 () Bool)

(assert (=> d!8465 (= (balanceToCounter!0 b!5626) (ite (> (extraOpen!173 b!5626) 0) (- 1) (ite (and (= (extraOpen!173 b!5626) 0) (= (extraClose!173 b!5626) 0)) 0 (ite (>= (extraClose!173 b!5626) 0) (extraClose!173 b!5626) (- 1)))))))

(assert (=> b!10538 d!8465))

(declare-fun d!8467 () Bool)

(assert (=> d!8467 (= (balanceToCounter!0 (+$colon!0 b!5626 p!256)) (ite (> (extraOpen!173 (+$colon!0 b!5626 p!256)) 0) (- 1) (ite (and (= (extraOpen!173 (+$colon!0 b!5626 p!256)) 0) (= (extraClose!173 (+$colon!0 b!5626 p!256)) 0)) 0 (ite (>= (extraClose!173 (+$colon!0 b!5626 p!256)) 0) (extraClose!173 (+$colon!0 b!5626 p!256)) (- 1)))))))

(assert (=> b!10538 d!8467))

(declare-fun d!8469 () Bool)

(assert (=> d!8469 (= (+$colon!0 b!5626 p!256) (ite (and (is-OpenParenthesis!71 p!256) (> (extraClose!173 b!5626) 0)) (Balance!266 (extraOpen!173 b!5626) (- (extraClose!173 b!5626) 1)) (ite (is-OpenParenthesis!71 p!256) (Balance!266 (+ (extraOpen!173 b!5626) 1) (extraClose!173 b!5626)) (Balance!266 (extraOpen!173 b!5626) (+ (extraClose!173 b!5626) 1)))))))

(assert (=> b!10538 d!8469))

(declare-fun d!8471 () Bool)

(assert (=> d!8471 (= (nonNegative!0 b!5626) (and (>= (extraOpen!173 b!5626) 0) (>= (extraClose!173 b!5626) 0)))))

(assert (=> start!2118 d!8471))

(push 1)

(check-sat)

(pop 1)


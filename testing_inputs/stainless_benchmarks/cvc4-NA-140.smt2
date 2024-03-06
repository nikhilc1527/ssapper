; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!774 () Bool)

(assert start!774)

(declare-fun res!1503 () Bool)

(declare-fun e!3261 () Bool)

(assert (=> start!774 (=> (not res!1503) (not e!3261))))

(declare-datatypes () ((ProofOps!6 (ProofOps!7 (prop!99 Bool)))))

(declare-fun thiss!804 () ProofOps!6)

(declare-datatypes () ((Parenthesis!2 (CloseParenthesis!1) (OpenParenthesis!1))))

(declare-datatypes () ((Tree!10 (Branch!1 (left!235 Tree!10) (right!238 Tree!10)) (Leaf!83 (value!1252 Parenthesis!2)))))

(declare-fun tree!20 () Tree!10)

(declare-datatypes () ((List!95 (Nil!93) (Cons!92 (head!310 Parenthesis!2) (tail!322 List!95)))))

(declare-fun isMatched!0 (List!95) Bool)

(declare-fun toList!14 (Tree!10) List!95)

(declare-fun isMatchedParallel!0 (Tree!10) Bool)

(assert (=> start!774 (= res!1503 (= thiss!804 (ProofOps!7 (= (isMatched!0 (toList!14 tree!20)) (isMatchedParallel!0 tree!20)))))))

(assert (=> start!774 e!3261))

(assert (=> start!774 true))

(declare-fun b!5639 () Bool)

(declare-fun res!1504 () Bool)

(assert (=> b!5639 (=> (not res!1504) (not e!3261))))

(declare-fun original_sequential_equivalence!0 (List!95) Bool)

(assert (=> b!5639 (= res!1504 (original_sequential_equivalence!0 (toList!14 tree!20)))))

(declare-fun b!5640 () Bool)

(declare-fun res!1505 () Bool)

(assert (=> b!5640 (=> (not res!1505) (not e!3261))))

(declare-fun xs!327 () List!95)

(assert (=> b!5640 (= res!1505 (= xs!327 (toList!14 tree!20)))))

(declare-fun b!5641 () Bool)

(declare-fun isEmpty!93 (List!95) Bool)

(assert (=> b!5641 (= e!3261 (isEmpty!93 xs!327))))

(assert (= (and start!774 res!1503) b!5639))

(assert (= (and b!5639 res!1504) b!5640))

(assert (= (and b!5640 res!1505) b!5641))

(declare-fun m!7977 () Bool)

(assert (=> start!774 m!7977))

(assert (=> start!774 m!7977))

(declare-fun m!7979 () Bool)

(assert (=> start!774 m!7979))

(declare-fun m!7981 () Bool)

(assert (=> start!774 m!7981))

(assert (=> b!5639 m!7977))

(assert (=> b!5639 m!7977))

(declare-fun m!7983 () Bool)

(assert (=> b!5639 m!7983))

(assert (=> b!5640 m!7977))

(declare-fun m!7985 () Bool)

(assert (=> b!5641 m!7985))

(push 1)

(assert (not b!5640))

(assert (not b!5639))

(assert (not b!5641))

(assert (not start!774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4463 () Bool)

(declare-fun lt!1249 () List!95)

(assert (=> d!4463 (not (isEmpty!93 lt!1249))))

(declare-fun e!3264 () List!95)

(assert (=> d!4463 (= lt!1249 e!3264)))

(declare-fun c!2189 () Bool)

(assert (=> d!4463 (= c!2189 (is-Leaf!83 tree!20))))

(assert (=> d!4463 (= (toList!14 tree!20) lt!1249)))

(declare-fun b!5646 () Bool)

(assert (=> b!5646 (= e!3264 (Cons!92 (value!1252 tree!20) Nil!93))))

(declare-fun b!5647 () Bool)

(declare-fun append!32 (List!95 List!95) List!95)

(assert (=> b!5647 (= e!3264 (append!32 (toList!14 (left!235 tree!20)) (toList!14 (right!238 tree!20))))))

(assert (= (and d!4463 c!2189) b!5646))

(assert (= (and d!4463 (not c!2189)) b!5647))

(declare-fun m!7987 () Bool)

(assert (=> d!4463 m!7987))

(declare-fun m!7989 () Bool)

(assert (=> b!5647 m!7989))

(declare-fun m!7991 () Bool)

(assert (=> b!5647 m!7991))

(assert (=> b!5647 m!7989))

(assert (=> b!5647 m!7991))

(declare-fun m!7993 () Bool)

(assert (=> b!5647 m!7993))

(assert (=> b!5640 d!4463))

(declare-fun d!4465 () Bool)

(declare-fun because!2 (ProofOps!6 Bool) Bool)

(declare-fun isMatchedSequential!0 (List!95) Bool)

(declare-fun original_sequential_helper!0 (List!95) Bool)

(assert (=> d!4465 (because!2 (ProofOps!7 (= (isMatched!0 (toList!14 tree!20)) (isMatchedSequential!0 (toList!14 tree!20)))) (original_sequential_helper!0 (toList!14 tree!20)))))

(assert (=> d!4465 (= (original_sequential_equivalence!0 (toList!14 tree!20)) true)))

(declare-fun bs!1050 () Bool)

(assert (= bs!1050 d!4465))

(assert (=> bs!1050 m!7977))

(assert (=> bs!1050 m!7979))

(assert (=> bs!1050 m!7977))

(declare-fun m!7995 () Bool)

(assert (=> bs!1050 m!7995))

(assert (=> bs!1050 m!7977))

(declare-fun m!7997 () Bool)

(assert (=> bs!1050 m!7997))

(assert (=> bs!1050 m!7997))

(declare-fun m!7999 () Bool)

(assert (=> bs!1050 m!7999))

(assert (=> b!5639 d!4465))

(assert (=> b!5639 d!4463))

(declare-fun d!4467 () Bool)

(assert (=> d!4467 (= (isEmpty!93 xs!327) (is-Nil!93 xs!327))))

(assert (=> b!5641 d!4467))

(declare-fun d!4469 () Bool)

(declare-fun lambda!20 () Int)

(declare-fun foldRight!8 (List!95 Int Int) Int)

(assert (=> d!4469 (= (isMatched!0 (toList!14 tree!20)) (= (foldRight!8 (toList!14 tree!20) 0 lambda!20) 0))))

(declare-fun bs!1051 () Bool)

(assert (= bs!1051 d!4469))

(assert (=> bs!1051 m!7977))

(declare-fun m!8001 () Bool)

(assert (=> bs!1051 m!8001))

(assert (=> start!774 d!4469))

(assert (=> start!774 d!4463))

(declare-fun d!4471 () Bool)

(declare-fun lambda!25 () Int)

(declare-fun lambda!26 () Int)

(declare-datatypes () ((Balance!3 (Balance!4 (extraOpen!42 Int) (extraClose!42 Int)))))

(declare-fun isBalanced!0 (Balance!3) Bool)

(declare-datatypes () ((Tree!11 (Branch!2 (left!236 Tree!11) (right!239 Tree!11)) (Leaf!84 (value!1253 Balance!3)))))

(declare-fun fold!1 (Tree!11 Int) Balance!3)

(declare-fun map!111 (Tree!10 Int) Tree!11)

(assert (=> d!4471 (= (isMatchedParallel!0 tree!20) (isBalanced!0 (fold!1 (map!111 tree!20 lambda!25) lambda!26)))))

(declare-fun bs!1052 () Bool)

(assert (= bs!1052 d!4471))

(declare-fun m!8003 () Bool)

(assert (=> bs!1052 m!8003))

(assert (=> bs!1052 m!8003))

(declare-fun m!8005 () Bool)

(assert (=> bs!1052 m!8005))

(assert (=> bs!1052 m!8005))

(declare-fun m!8007 () Bool)

(assert (=> bs!1052 m!8007))

(assert (=> start!774 d!4471))

(push 1)

(assert (not b!5647))

(assert (not d!4471))

(assert (not d!4469))

(assert (not d!4463))

(assert (not d!4465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


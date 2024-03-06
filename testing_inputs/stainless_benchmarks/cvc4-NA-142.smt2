; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!826 () Bool)

(assert start!826)

(declare-fun res!1525 () Bool)

(declare-fun e!3341 () Bool)

(assert (=> start!826 (=> (not res!1525) (not e!3341))))

(declare-datatypes () ((Parenthesis!4 (CloseParenthesis!3) (OpenParenthesis!3))))

(declare-datatypes () ((List!98 (Nil!96) (Cons!95 (head!313 Parenthesis!4) (tail!325 List!98)))))

(declare-fun xs!355 () List!98)

(declare-datatypes () ((Tree!14 (Branch!5 (left!243 Tree!14) (right!246 Tree!14)) (Leaf!87 (value!1256 Parenthesis!4)))))

(declare-fun tree!30 () Tree!14)

(declare-fun toList!16 (Tree!14) List!98)

(assert (=> start!826 (= res!1525 (= xs!355 (toList!16 tree!30)))))

(assert (=> start!826 e!3341))

(assert (=> start!826 true))

(declare-fun b!5739 () Bool)

(declare-fun isEmpty!95 (List!98) Bool)

(assert (=> b!5739 (= e!3341 (isEmpty!95 xs!355))))

(assert (= (and start!826 res!1525) b!5739))

(declare-fun m!8191 () Bool)

(assert (=> start!826 m!8191))

(declare-fun m!8193 () Bool)

(assert (=> b!5739 m!8193))

(push 1)

(assert (not b!5739))

(assert (not start!826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4567 () Bool)

(assert (=> d!4567 (= (isEmpty!95 xs!355) (is-Nil!96 xs!355))))

(assert (=> b!5739 d!4567))

(declare-fun d!4569 () Bool)

(declare-fun lt!1271 () List!98)

(assert (=> d!4569 (not (isEmpty!95 lt!1271))))

(declare-fun e!3344 () List!98)

(assert (=> d!4569 (= lt!1271 e!3344)))

(declare-fun c!2231 () Bool)

(assert (=> d!4569 (= c!2231 (is-Leaf!87 tree!30))))

(assert (=> d!4569 (= (toList!16 tree!30) lt!1271)))

(declare-fun b!5744 () Bool)

(assert (=> b!5744 (= e!3344 (Cons!95 (value!1256 tree!30) Nil!96))))

(declare-fun b!5745 () Bool)

(declare-fun append!34 (List!98 List!98) List!98)

(assert (=> b!5745 (= e!3344 (append!34 (toList!16 (left!243 tree!30)) (toList!16 (right!246 tree!30))))))

(assert (= (and d!4569 c!2231) b!5744))

(assert (= (and d!4569 (not c!2231)) b!5745))

(declare-fun m!8195 () Bool)

(assert (=> d!4569 m!8195))

(declare-fun m!8197 () Bool)

(assert (=> b!5745 m!8197))

(declare-fun m!8199 () Bool)

(assert (=> b!5745 m!8199))

(assert (=> b!5745 m!8197))

(assert (=> b!5745 m!8199))

(declare-fun m!8201 () Bool)

(assert (=> b!5745 m!8201))

(assert (=> start!826 d!4569))

(push 1)

(assert (not b!5745))

(assert (not d!4569))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


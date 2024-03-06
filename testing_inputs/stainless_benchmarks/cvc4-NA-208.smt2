; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1554 () Bool)

(assert start!1554)

(declare-fun res!2411 () Bool)

(declare-fun e!4585 () Bool)

(assert (=> start!1554 (=> (not res!2411) (not e!4585))))

(declare-datatypes () ((Parenthesis!50 (CloseParenthesis!49) (OpenParenthesis!49))))

(declare-datatypes () ((List!183 (Nil!181) (Cons!180 (head!398 Parenthesis!50) (tail!410 List!183)))))

(declare-fun xs!372 () List!183)

(declare-fun isEmpty!151 (List!183) Bool)

(assert (=> start!1554 (= res!2411 (not (isEmpty!151 xs!372)))))

(assert (=> start!1554 e!4585))

(assert (=> start!1554 true))

(declare-fun b!8023 () Bool)

(declare-fun res!2412 () Bool)

(assert (=> b!8023 (=> (not res!2412) (not e!4585))))

(declare-fun lambda!1776 () Int)

(declare-datatypes () ((ProofOps!86 (ProofOps!87 (prop!157 Bool)))))

(declare-fun thiss!1106 () ProofOps!86)

(declare-fun lambda!1777 () Int)

(declare-datatypes () ((Balance!135 (Balance!136 (extraOpen!108 Int) (extraClose!108 Int)))))

(declare-datatypes () ((List!184 (Nil!182) (Cons!181 (head!399 Balance!135) (tail!411 List!184)))))

(declare-fun foldRight1!39 (List!184 Int) Balance!135)

(declare-fun append!72 (List!184 List!184) List!184)

(declare-fun map!160 (List!183 Int) List!184)

(assert (=> b!8023 (= res!2412 (= thiss!1106 (ProofOps!87 (= (foldRight1!39 (append!72 (map!160 xs!372 lambda!1776) (Cons!181 (Balance!136 0 0) Nil!182)) lambda!1777) (foldRight1!39 (map!160 xs!372 lambda!1776) lambda!1777)))))))

(declare-fun b!8024 () Bool)

(assert (=> b!8024 (= e!4585 (and (or (not (is-Cons!180 xs!372)) (not (is-Nil!181 (tail!410 xs!372)))) (not (is-Cons!180 xs!372))))))

(assert (= (and start!1554 res!2411) b!8023))

(assert (= (and b!8023 res!2412) b!8024))

(declare-fun m!10885 () Bool)

(assert (=> start!1554 m!10885))

(declare-fun m!10887 () Bool)

(assert (=> b!8023 m!10887))

(declare-fun m!10889 () Bool)

(assert (=> b!8023 m!10889))

(declare-fun m!10891 () Bool)

(assert (=> b!8023 m!10891))

(declare-fun m!10893 () Bool)

(assert (=> b!8023 m!10893))

(assert (=> b!8023 m!10891))

(assert (=> b!8023 m!10891))

(assert (=> b!8023 m!10891))

(assert (=> b!8023 m!10887))

(push 1)

(assert (not start!1554))

(assert (not b!8023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6309 () Bool)

(assert (=> d!6309 (= (isEmpty!151 xs!372) (is-Nil!181 xs!372))))

(assert (=> start!1554 d!6309))

(declare-fun d!6311 () Bool)

(declare-fun c!2780 () Bool)

(assert (=> d!6311 (= c!2780 (and (is-Cons!181 (append!72 (map!160 xs!372 lambda!1776) (Cons!181 (Balance!136 0 0) Nil!182))) (is-Nil!182 (tail!411 (append!72 (map!160 xs!372 lambda!1776) (Cons!181 (Balance!136 0 0) Nil!182))))))))

(declare-fun e!4588 () Balance!135)

(assert (=> d!6311 (= (foldRight1!39 (append!72 (map!160 xs!372 lambda!1776) (Cons!181 (Balance!136 0 0) Nil!182)) lambda!1777) e!4588)))

(declare-fun b!8029 () Bool)

(assert (=> b!8029 (= e!4588 (head!399 (append!72 (map!160 xs!372 lambda!1776) (Cons!181 (Balance!136 0 0) Nil!182))))))

(declare-fun b!8030 () Bool)

(declare-fun dynLambda!187 (Int Balance!135 Balance!135) Balance!135)

(assert (=> b!8030 (= e!4588 (dynLambda!187 lambda!1777 (head!399 (append!72 (map!160 xs!372 lambda!1776) (Cons!181 (Balance!136 0 0) Nil!182))) (foldRight1!39 (tail!411 (append!72 (map!160 xs!372 lambda!1776) (Cons!181 (Balance!136 0 0) Nil!182))) lambda!1777)))))

(assert (= (and d!6311 c!2780) b!8029))

(assert (= (and d!6311 (not c!2780)) b!8030))

(declare-fun b_lambda!3967 () Bool)

(assert (=> (not b_lambda!3967) (not b!8030)))

(declare-fun m!10895 () Bool)

(assert (=> b!8030 m!10895))

(assert (=> b!8030 m!10895))

(declare-fun m!10897 () Bool)

(assert (=> b!8030 m!10897))

(assert (=> b!8023 d!6311))

(declare-fun d!6313 () Bool)

(declare-fun c!2783 () Bool)

(assert (=> d!6313 (= c!2783 (is-Nil!182 (map!160 xs!372 lambda!1776)))))

(declare-fun e!4591 () List!184)

(assert (=> d!6313 (= (append!72 (map!160 xs!372 lambda!1776) (Cons!181 (Balance!136 0 0) Nil!182)) e!4591)))

(declare-fun b!8035 () Bool)

(assert (=> b!8035 (= e!4591 (Cons!181 (Balance!136 0 0) Nil!182))))

(declare-fun b!8036 () Bool)

(assert (=> b!8036 (= e!4591 (Cons!181 (head!399 (map!160 xs!372 lambda!1776)) (append!72 (tail!411 (map!160 xs!372 lambda!1776)) (Cons!181 (Balance!136 0 0) Nil!182))))))

(assert (= (and d!6313 c!2783) b!8035))

(assert (= (and d!6313 (not c!2783)) b!8036))

(declare-fun m!10899 () Bool)

(assert (=> b!8036 m!10899))

(assert (=> b!8023 d!6313))

(declare-fun d!6315 () Bool)

(declare-fun c!2786 () Bool)

(assert (=> d!6315 (= c!2786 (is-Nil!181 xs!372))))

(declare-fun e!4594 () List!184)

(assert (=> d!6315 (= (map!160 xs!372 lambda!1776) e!4594)))

(declare-fun b!8041 () Bool)

(assert (=> b!8041 (= e!4594 Nil!182)))

(declare-fun b!8042 () Bool)

(declare-fun dynLambda!188 (Int Parenthesis!50) Balance!135)

(assert (=> b!8042 (= e!4594 (Cons!181 (dynLambda!188 lambda!1776 (head!398 xs!372)) (map!160 (tail!410 xs!372) lambda!1776)))))

(assert (= (and d!6315 c!2786) b!8041))

(assert (= (and d!6315 (not c!2786)) b!8042))

(declare-fun b_lambda!3969 () Bool)

(assert (=> (not b_lambda!3969) (not b!8042)))

(declare-fun m!10901 () Bool)

(assert (=> b!8042 m!10901))

(declare-fun m!10903 () Bool)

(assert (=> b!8042 m!10903))

(assert (=> b!8023 d!6315))

(declare-fun d!6317 () Bool)

(declare-fun c!2787 () Bool)

(assert (=> d!6317 (= c!2787 (and (is-Cons!181 (map!160 xs!372 lambda!1776)) (is-Nil!182 (tail!411 (map!160 xs!372 lambda!1776)))))))

(declare-fun e!4595 () Balance!135)

(assert (=> d!6317 (= (foldRight1!39 (map!160 xs!372 lambda!1776) lambda!1777) e!4595)))

(declare-fun b!8043 () Bool)

(assert (=> b!8043 (= e!4595 (head!399 (map!160 xs!372 lambda!1776)))))

(declare-fun b!8044 () Bool)

(assert (=> b!8044 (= e!4595 (dynLambda!187 lambda!1777 (head!399 (map!160 xs!372 lambda!1776)) (foldRight1!39 (tail!411 (map!160 xs!372 lambda!1776)) lambda!1777)))))

(assert (= (and d!6317 c!2787) b!8043))

(assert (= (and d!6317 (not c!2787)) b!8044))

(declare-fun b_lambda!3971 () Bool)

(assert (=> (not b_lambda!3971) (not b!8044)))

(declare-fun m!10905 () Bool)

(assert (=> b!8044 m!10905))

(assert (=> b!8044 m!10905))

(declare-fun m!10907 () Bool)

(assert (=> b!8044 m!10907))

(assert (=> b!8023 d!6317))

(declare-fun b_lambda!3973 () Bool)

(assert (= b_lambda!3967 (or b!8023 b_lambda!3973)))

(declare-fun bs!1857 () Bool)

(declare-fun d!6319 () Bool)

(assert (= bs!1857 (and d!6319 b!8023)))

(declare-fun ++!3 (Balance!135 Balance!135) Balance!135)

(assert (=> bs!1857 (= (dynLambda!187 lambda!1777 (head!399 (append!72 (map!160 xs!372 lambda!1776) (Cons!181 (Balance!136 0 0) Nil!182))) (foldRight1!39 (tail!411 (append!72 (map!160 xs!372 lambda!1776) (Cons!181 (Balance!136 0 0) Nil!182))) lambda!1777)) (++!3 (head!399 (append!72 (map!160 xs!372 lambda!1776) (Cons!181 (Balance!136 0 0) Nil!182))) (foldRight1!39 (tail!411 (append!72 (map!160 xs!372 lambda!1776) (Cons!181 (Balance!136 0 0) Nil!182))) lambda!1777)))))

(assert (=> bs!1857 m!10895))

(declare-fun m!10909 () Bool)

(assert (=> bs!1857 m!10909))

(assert (=> b!8030 d!6319))

(declare-fun b_lambda!3975 () Bool)

(assert (= b_lambda!3969 (or b!8023 b_lambda!3975)))

(declare-fun bs!1858 () Bool)

(declare-fun d!6321 () Bool)

(assert (= bs!1858 (and d!6321 b!8023)))

(declare-fun fromParenthesis!0 (Parenthesis!50) Balance!135)

(assert (=> bs!1858 (= (dynLambda!188 lambda!1776 (head!398 xs!372)) (fromParenthesis!0 (head!398 xs!372)))))

(declare-fun m!10911 () Bool)

(assert (=> bs!1858 m!10911))

(assert (=> b!8042 d!6321))

(declare-fun b_lambda!3977 () Bool)

(assert (= b_lambda!3971 (or b!8023 b_lambda!3977)))

(declare-fun bs!1859 () Bool)

(declare-fun d!6323 () Bool)

(assert (= bs!1859 (and d!6323 b!8023)))

(assert (=> bs!1859 (= (dynLambda!187 lambda!1777 (head!399 (map!160 xs!372 lambda!1776)) (foldRight1!39 (tail!411 (map!160 xs!372 lambda!1776)) lambda!1777)) (++!3 (head!399 (map!160 xs!372 lambda!1776)) (foldRight1!39 (tail!411 (map!160 xs!372 lambda!1776)) lambda!1777)))))

(assert (=> bs!1859 m!10905))

(declare-fun m!10913 () Bool)

(assert (=> bs!1859 m!10913))

(assert (=> b!8044 d!6323))

(push 1)

(assert (not b_lambda!3977))

(assert (not bs!1859))

(assert (not bs!1857))

(assert (not bs!1858))

(assert (not b_lambda!3975))

(assert (not b!8042))

(assert (not b_lambda!3973))

(assert (not b!8044))

(assert (not b!8036))

(assert (not b!8030))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


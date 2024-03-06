; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1208 () Bool)

(assert start!1208)

(declare-fun b_free!365 () Bool)

(declare-fun b_next!777 () Bool)

(assert (=> start!1208 (= b_free!365 (not b_next!777))))

(declare-fun tp!670 () Bool)

(declare-fun b_and!1809 () Bool)

(assert (=> start!1208 (= tp!670 b_and!1809)))

(declare-fun lambda!1047 () Int)

(declare-fun b_next!779 () Bool)

(declare-fun b!6872 () Bool)

(declare-fun f!678 () Int)

(assert (=> start!1208 (= b_next!777 (or (and b!6872 (= lambda!1047 f!678)) b_next!779))))

(declare-fun res!1927 () Bool)

(declare-fun e!4042 () Bool)

(assert (=> start!1208 (=> (not res!1927) (not e!4042))))

(declare-datatypes () ((Parenthesis!29 (CloseParenthesis!28) (OpenParenthesis!28))))

(declare-datatypes () ((List!141 (Nil!139) (Cons!138 (head!356 Parenthesis!29) (tail!368 List!141)))))

(declare-fun xs!372 () List!141)

(declare-fun isEmpty!122 (List!141) Bool)

(assert (=> start!1208 (= res!1927 (not (isEmpty!122 xs!372)))))

(assert (=> start!1208 e!4042))

(assert (=> start!1208 true))

(assert (=> start!1208 tp!670))

(declare-fun b!6871 () Bool)

(declare-fun res!1926 () Bool)

(assert (=> b!6871 (=> (not res!1926) (not e!4042))))

(declare-datatypes () ((Balance!69 (Balance!70 (extraOpen!75 Int) (extraClose!75 Int)))))

(declare-datatypes () ((List!142 (Nil!140) (Cons!139 (head!357 Balance!69) (tail!369 List!142)))))

(declare-fun thiss!1107 () List!142)

(declare-fun lambda!1046 () Int)

(declare-fun append!52 (List!142 List!142) List!142)

(declare-fun map!139 (List!141 Int) List!142)

(assert (=> b!6871 (= res!1926 (= thiss!1107 (append!52 (map!139 xs!372 lambda!1046) (Cons!139 (Balance!70 0 0) Nil!140))))))

(declare-fun res!1928 () Bool)

(assert (=> b!6872 (=> (not res!1928) (not e!4042))))

(assert (=> b!6872 (= res!1928 (= f!678 lambda!1047))))

(declare-fun b!6873 () Bool)

(declare-fun isEmpty!123 (List!142) Bool)

(assert (=> b!6873 (= e!4042 (isEmpty!123 thiss!1107))))

(assert (= (and start!1208 res!1927) b!6871))

(assert (= (and b!6871 res!1926) b!6872))

(assert (= (and b!6872 res!1928) b!6873))

(declare-fun m!9731 () Bool)

(assert (=> start!1208 m!9731))

(declare-fun m!9733 () Bool)

(assert (=> b!6871 m!9733))

(assert (=> b!6871 m!9733))

(declare-fun m!9735 () Bool)

(assert (=> b!6871 m!9735))

(declare-fun m!9737 () Bool)

(assert (=> b!6873 m!9737))

(push 1)

(assert (not b!6871))

(assert (not b_next!779))

(assert (not start!1208))

(assert (not b!6873))

(assert b_and!1809)

(check-sat)

(pop 1)

(push 1)

(assert b_and!1809)

(assert (not b_next!779))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5443 () Bool)

(declare-fun c!2505 () Bool)

(assert (=> d!5443 (= c!2505 (is-Nil!140 (map!139 xs!372 lambda!1046)))))

(declare-fun e!4045 () List!142)

(assert (=> d!5443 (= (append!52 (map!139 xs!372 lambda!1046) (Cons!139 (Balance!70 0 0) Nil!140)) e!4045)))

(declare-fun b!6878 () Bool)

(assert (=> b!6878 (= e!4045 (Cons!139 (Balance!70 0 0) Nil!140))))

(declare-fun b!6879 () Bool)

(assert (=> b!6879 (= e!4045 (Cons!139 (head!357 (map!139 xs!372 lambda!1046)) (append!52 (tail!369 (map!139 xs!372 lambda!1046)) (Cons!139 (Balance!70 0 0) Nil!140))))))

(assert (= (and d!5443 c!2505) b!6878))

(assert (= (and d!5443 (not c!2505)) b!6879))

(declare-fun m!9739 () Bool)

(assert (=> b!6879 m!9739))

(assert (=> b!6871 d!5443))

(declare-fun d!5445 () Bool)

(declare-fun c!2508 () Bool)

(assert (=> d!5445 (= c!2508 (is-Nil!139 xs!372))))

(declare-fun e!4048 () List!142)

(assert (=> d!5445 (= (map!139 xs!372 lambda!1046) e!4048)))

(declare-fun b!6884 () Bool)

(assert (=> b!6884 (= e!4048 Nil!140)))

(declare-fun b!6885 () Bool)

(declare-fun dynLambda!113 (Int Parenthesis!29) Balance!69)

(assert (=> b!6885 (= e!4048 (Cons!139 (dynLambda!113 lambda!1046 (head!356 xs!372)) (map!139 (tail!368 xs!372) lambda!1046)))))

(assert (= (and d!5445 c!2508) b!6884))

(assert (= (and d!5445 (not c!2508)) b!6885))

(declare-fun b_lambda!3287 () Bool)

(assert (=> (not b_lambda!3287) (not b!6885)))

(declare-fun m!9741 () Bool)

(assert (=> b!6885 m!9741))

(declare-fun m!9743 () Bool)

(assert (=> b!6885 m!9743))

(assert (=> b!6871 d!5445))

(declare-fun d!5447 () Bool)

(assert (=> d!5447 (= (isEmpty!122 xs!372) (is-Nil!139 xs!372))))

(assert (=> start!1208 d!5447))

(declare-fun d!5449 () Bool)

(assert (=> d!5449 (= (isEmpty!123 thiss!1107) (is-Nil!140 thiss!1107))))

(assert (=> b!6873 d!5449))

(declare-fun b_lambda!3289 () Bool)

(assert (= b_lambda!3287 (or b!6871 b_lambda!3289)))

(declare-fun bs!1563 () Bool)

(declare-fun d!5451 () Bool)

(assert (= bs!1563 (and d!5451 b!6871)))

(declare-fun fromParenthesis!0 (Parenthesis!29) Balance!69)

(assert (=> bs!1563 (= (dynLambda!113 lambda!1046 (head!356 xs!372)) (fromParenthesis!0 (head!356 xs!372)))))

(declare-fun m!9745 () Bool)

(assert (=> bs!1563 m!9745))

(assert (=> b!6885 d!5451))

(push 1)

(assert (not b!6885))

(assert (not b!6879))

(assert (not bs!1563))

(assert (not b_next!779))

(assert (not b_lambda!3289))

(assert b_and!1809)

(check-sat)

(pop 1)

(push 1)

(assert b_and!1809)

(assert (not b_next!779))

(check-sat)

(pop 1)


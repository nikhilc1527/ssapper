; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1218 () Bool)

(assert start!1218)

(declare-fun b_free!367 () Bool)

(declare-fun b_next!781 () Bool)

(assert (=> start!1218 (= b_free!367 (not b_next!781))))

(declare-fun tp!673 () Bool)

(declare-fun b_and!1811 () Bool)

(assert (=> start!1218 (= tp!673 b_and!1811)))

(declare-fun f!682 () Int)

(declare-fun b_next!783 () Bool)

(declare-fun lambda!1053 () Int)

(declare-fun b!6893 () Bool)

(assert (=> start!1218 (= b_next!781 (or (and b!6893 (= lambda!1053 f!682)) b_next!783))))

(declare-fun res!1935 () Bool)

(declare-fun e!4051 () Bool)

(assert (=> start!1218 (=> (not res!1935) (not e!4051))))

(declare-datatypes () ((Parenthesis!30 (CloseParenthesis!29) (OpenParenthesis!29))))

(declare-datatypes () ((List!143 (Nil!141) (Cons!140 (head!358 Parenthesis!30) (tail!370 List!143)))))

(declare-fun xs!372 () List!143)

(declare-fun isEmpty!124 (List!143) Bool)

(assert (=> start!1218 (= res!1935 (not (isEmpty!124 xs!372)))))

(assert (=> start!1218 e!4051))

(assert (=> start!1218 true))

(assert (=> start!1218 tp!673))

(declare-fun b!6892 () Bool)

(declare-fun res!1937 () Bool)

(assert (=> b!6892 (=> (not res!1937) (not e!4051))))

(declare-datatypes () ((Balance!71 (Balance!72 (extraOpen!76 Int) (extraClose!76 Int)))))

(declare-datatypes () ((List!144 (Nil!142) (Cons!141 (head!359 Balance!71) (tail!371 List!144)))))

(declare-fun thiss!1115 () List!144)

(declare-fun lambda!1052 () Int)

(declare-fun map!140 (List!143 Int) List!144)

(assert (=> b!6892 (= res!1937 (= thiss!1115 (map!140 xs!372 lambda!1052)))))

(declare-fun res!1936 () Bool)

(assert (=> b!6893 (=> (not res!1936) (not e!4051))))

(assert (=> b!6893 (= res!1936 (= f!682 lambda!1053))))

(declare-fun b!6894 () Bool)

(declare-fun isEmpty!125 (List!144) Bool)

(assert (=> b!6894 (= e!4051 (isEmpty!125 thiss!1115))))

(assert (= (and start!1218 res!1935) b!6892))

(assert (= (and b!6892 res!1937) b!6893))

(assert (= (and b!6893 res!1936) b!6894))

(declare-fun m!9747 () Bool)

(assert (=> start!1218 m!9747))

(declare-fun m!9749 () Bool)

(assert (=> b!6892 m!9749))

(declare-fun m!9751 () Bool)

(assert (=> b!6894 m!9751))

(push 1)

(assert (not b!6894))

(assert (not start!1218))

(assert b_and!1811)

(assert (not b_next!783))

(assert (not b!6892))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1811)

(assert (not b_next!783))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5453 () Bool)

(declare-fun c!2511 () Bool)

(assert (=> d!5453 (= c!2511 (is-Nil!141 xs!372))))

(declare-fun e!4054 () List!144)

(assert (=> d!5453 (= (map!140 xs!372 lambda!1052) e!4054)))

(declare-fun b!6899 () Bool)

(assert (=> b!6899 (= e!4054 Nil!142)))

(declare-fun b!6900 () Bool)

(declare-fun dynLambda!114 (Int Parenthesis!30) Balance!71)

(assert (=> b!6900 (= e!4054 (Cons!141 (dynLambda!114 lambda!1052 (head!358 xs!372)) (map!140 (tail!370 xs!372) lambda!1052)))))

(assert (= (and d!5453 c!2511) b!6899))

(assert (= (and d!5453 (not c!2511)) b!6900))

(declare-fun b_lambda!3291 () Bool)

(assert (=> (not b_lambda!3291) (not b!6900)))

(declare-fun m!9753 () Bool)

(assert (=> b!6900 m!9753))

(declare-fun m!9755 () Bool)

(assert (=> b!6900 m!9755))

(assert (=> b!6892 d!5453))

(declare-fun d!5455 () Bool)

(assert (=> d!5455 (= (isEmpty!125 thiss!1115) (is-Nil!142 thiss!1115))))

(assert (=> b!6894 d!5455))

(declare-fun d!5457 () Bool)

(assert (=> d!5457 (= (isEmpty!124 xs!372) (is-Nil!141 xs!372))))

(assert (=> start!1218 d!5457))

(declare-fun b_lambda!3293 () Bool)

(assert (= b_lambda!3291 (or b!6892 b_lambda!3293)))

(declare-fun bs!1565 () Bool)

(declare-fun d!5459 () Bool)

(assert (= bs!1565 (and d!5459 b!6892)))

(declare-fun fromParenthesis!0 (Parenthesis!30) Balance!71)

(assert (=> bs!1565 (= (dynLambda!114 lambda!1052 (head!358 xs!372)) (fromParenthesis!0 (head!358 xs!372)))))

(declare-fun m!9757 () Bool)

(assert (=> bs!1565 m!9757))

(assert (=> b!6900 d!5459))

(push 1)

(assert (not b_lambda!3293))

(assert (not b!6900))

(assert b_and!1811)

(assert (not b_next!783))

(assert (not bs!1565))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1811)

(assert (not b_next!783))

(check-sat)

(pop 1)


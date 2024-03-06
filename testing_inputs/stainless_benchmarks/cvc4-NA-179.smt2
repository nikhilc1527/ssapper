; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1254 () Bool)

(assert start!1254)

(declare-fun b_free!379 () Bool)

(declare-fun b_next!809 () Bool)

(assert (=> start!1254 (= b_free!379 (not b_next!809))))

(declare-fun tp!691 () Bool)

(declare-fun b_and!1833 () Bool)

(assert (=> start!1254 (= tp!691 b_and!1833)))

(declare-fun b_next!811 () Bool)

(declare-fun lambda!1108 () Int)

(declare-fun f!694 () Int)

(declare-fun b!6994 () Bool)

(assert (=> start!1254 (= b_next!809 (or (and b!6994 (= lambda!1108 f!694)) b_next!811))))

(declare-fun b!6992 () Bool)

(declare-fun res!1987 () Bool)

(declare-fun e!4089 () Bool)

(assert (=> b!6992 (=> (not res!1987) (not e!4089))))

(assert (=> b!6992 (= res!1987 (= f!694 lambda!1108))))

(declare-fun b!6993 () Bool)

(declare-datatypes () ((Balance!77 (Balance!78 (extraOpen!79 Int) (extraClose!79 Int)))))

(declare-datatypes () ((List!149 (Nil!147) (Cons!146 (head!364 Balance!77) (tail!376 List!149)))))

(declare-fun thiss!1149 () List!149)

(declare-fun isEmpty!130 (List!149) Bool)

(assert (=> b!6993 (= e!4089 (isEmpty!130 thiss!1149))))

(declare-fun res!1986 () Bool)

(assert (=> b!6994 (=> (not res!1986) (not e!4089))))

(declare-datatypes () ((Parenthesis!33 (CloseParenthesis!32) (OpenParenthesis!32))))

(declare-datatypes () ((List!150 (Nil!148) (Cons!147 (head!365 Parenthesis!33) (tail!377 List!150)))))

(declare-fun xs!372 () List!150)

(declare-datatypes () ((ProofOps!52 (ProofOps!53 (prop!136 Bool)))))

(declare-fun thiss!1106 () ProofOps!52)

(declare-fun lambda!1107 () Int)

(declare-fun foldRight1!22 (List!149 Int) Balance!77)

(declare-fun append!55 (List!149 List!149) List!149)

(declare-fun map!143 (List!150 Int) List!149)

(assert (=> b!6994 (= res!1986 (= thiss!1106 (ProofOps!53 (= (foldRight1!22 (append!55 (map!143 xs!372 lambda!1107) (Cons!146 (Balance!78 0 0) Nil!147)) lambda!1108) (foldRight1!22 (map!143 xs!372 lambda!1107) lambda!1108)))))))

(declare-fun res!1985 () Bool)

(assert (=> start!1254 (=> (not res!1985) (not e!4089))))

(declare-fun isEmpty!131 (List!150) Bool)

(assert (=> start!1254 (= res!1985 (not (isEmpty!131 xs!372)))))

(assert (=> start!1254 e!4089))

(assert (=> start!1254 true))

(assert (=> start!1254 tp!691))

(declare-fun b!6995 () Bool)

(declare-fun res!1988 () Bool)

(assert (=> b!6995 (=> (not res!1988) (not e!4089))))

(assert (=> b!6995 (= res!1988 (= thiss!1149 (append!55 (map!143 xs!372 lambda!1107) (Cons!146 (Balance!78 0 0) Nil!147))))))

(declare-fun b!6996 () Bool)

(declare-fun res!1984 () Bool)

(assert (=> b!6996 (=> (not res!1984) (not e!4089))))

(assert (=> b!6996 (= res!1984 (or (not (is-Cons!147 xs!372)) (not (is-Nil!148 (tail!377 xs!372)))))))

(assert (= (and start!1254 res!1985) b!6994))

(assert (= (and b!6994 res!1986) b!6996))

(assert (= (and b!6996 res!1984) b!6995))

(assert (= (and b!6995 res!1988) b!6992))

(assert (= (and b!6992 res!1987) b!6993))

(declare-fun m!9833 () Bool)

(assert (=> b!6993 m!9833))

(declare-fun m!9835 () Bool)

(assert (=> b!6994 m!9835))

(assert (=> b!6994 m!9835))

(declare-fun m!9837 () Bool)

(assert (=> b!6994 m!9837))

(assert (=> b!6994 m!9835))

(declare-fun m!9839 () Bool)

(assert (=> b!6994 m!9839))

(assert (=> b!6994 m!9837))

(declare-fun m!9841 () Bool)

(assert (=> b!6994 m!9841))

(assert (=> b!6994 m!9835))

(declare-fun m!9843 () Bool)

(assert (=> start!1254 m!9843))

(assert (=> b!6995 m!9835))

(assert (=> b!6995 m!9835))

(assert (=> b!6995 m!9837))

(push 1)

(assert (not b!6994))

(assert (not start!1254))

(assert b_and!1833)

(assert (not b!6993))

(assert (not b_next!811))

(assert (not b!6995))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1833)

(assert (not b_next!811))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5513 () Bool)

(assert (=> d!5513 (= (isEmpty!130 thiss!1149) (is-Nil!147 thiss!1149))))

(assert (=> b!6993 d!5513))

(declare-fun d!5515 () Bool)

(declare-fun c!2534 () Bool)

(assert (=> d!5515 (= c!2534 (is-Nil!147 (map!143 xs!372 lambda!1107)))))

(declare-fun e!4092 () List!149)

(assert (=> d!5515 (= (append!55 (map!143 xs!372 lambda!1107) (Cons!146 (Balance!78 0 0) Nil!147)) e!4092)))

(declare-fun b!7001 () Bool)

(assert (=> b!7001 (= e!4092 (Cons!146 (Balance!78 0 0) Nil!147))))

(declare-fun b!7002 () Bool)

(assert (=> b!7002 (= e!4092 (Cons!146 (head!364 (map!143 xs!372 lambda!1107)) (append!55 (tail!376 (map!143 xs!372 lambda!1107)) (Cons!146 (Balance!78 0 0) Nil!147))))))

(assert (= (and d!5515 c!2534) b!7001))

(assert (= (and d!5515 (not c!2534)) b!7002))

(declare-fun m!9845 () Bool)

(assert (=> b!7002 m!9845))

(assert (=> b!6995 d!5515))

(declare-fun d!5517 () Bool)

(declare-fun c!2537 () Bool)

(assert (=> d!5517 (= c!2537 (is-Nil!148 xs!372))))

(declare-fun e!4095 () List!149)

(assert (=> d!5517 (= (map!143 xs!372 lambda!1107) e!4095)))

(declare-fun b!7007 () Bool)

(assert (=> b!7007 (= e!4095 Nil!147)))

(declare-fun b!7008 () Bool)

(declare-fun dynLambda!121 (Int Parenthesis!33) Balance!77)

(assert (=> b!7008 (= e!4095 (Cons!146 (dynLambda!121 lambda!1107 (head!365 xs!372)) (map!143 (tail!377 xs!372) lambda!1107)))))

(assert (= (and d!5517 c!2537) b!7007))

(assert (= (and d!5517 (not c!2537)) b!7008))

(declare-fun b_lambda!3331 () Bool)

(assert (=> (not b_lambda!3331) (not b!7008)))

(declare-fun m!9847 () Bool)

(assert (=> b!7008 m!9847))

(declare-fun m!9849 () Bool)

(assert (=> b!7008 m!9849))

(assert (=> b!6995 d!5517))

(declare-fun d!5519 () Bool)

(declare-fun c!2540 () Bool)

(assert (=> d!5519 (= c!2540 (and (is-Cons!146 (append!55 (map!143 xs!372 lambda!1107) (Cons!146 (Balance!78 0 0) Nil!147))) (is-Nil!147 (tail!376 (append!55 (map!143 xs!372 lambda!1107) (Cons!146 (Balance!78 0 0) Nil!147))))))))

(declare-fun e!4098 () Balance!77)

(assert (=> d!5519 (= (foldRight1!22 (append!55 (map!143 xs!372 lambda!1107) (Cons!146 (Balance!78 0 0) Nil!147)) lambda!1108) e!4098)))

(declare-fun b!7013 () Bool)

(assert (=> b!7013 (= e!4098 (head!364 (append!55 (map!143 xs!372 lambda!1107) (Cons!146 (Balance!78 0 0) Nil!147))))))

(declare-fun b!7014 () Bool)

(declare-fun dynLambda!122 (Int Balance!77 Balance!77) Balance!77)

(assert (=> b!7014 (= e!4098 (dynLambda!122 lambda!1108 (head!364 (append!55 (map!143 xs!372 lambda!1107) (Cons!146 (Balance!78 0 0) Nil!147))) (foldRight1!22 (tail!376 (append!55 (map!143 xs!372 lambda!1107) (Cons!146 (Balance!78 0 0) Nil!147))) lambda!1108)))))

(assert (= (and d!5519 c!2540) b!7013))

(assert (= (and d!5519 (not c!2540)) b!7014))

(declare-fun b_lambda!3333 () Bool)

(assert (=> (not b_lambda!3333) (not b!7014)))

(declare-fun m!9851 () Bool)

(assert (=> b!7014 m!9851))

(assert (=> b!7014 m!9851))

(declare-fun m!9853 () Bool)

(assert (=> b!7014 m!9853))

(assert (=> b!6994 d!5519))

(assert (=> b!6994 d!5515))

(declare-fun d!5521 () Bool)

(declare-fun c!2541 () Bool)

(assert (=> d!5521 (= c!2541 (and (is-Cons!146 (map!143 xs!372 lambda!1107)) (is-Nil!147 (tail!376 (map!143 xs!372 lambda!1107)))))))

(declare-fun e!4099 () Balance!77)

(assert (=> d!5521 (= (foldRight1!22 (map!143 xs!372 lambda!1107) lambda!1108) e!4099)))

(declare-fun b!7015 () Bool)

(assert (=> b!7015 (= e!4099 (head!364 (map!143 xs!372 lambda!1107)))))

(declare-fun b!7016 () Bool)

(assert (=> b!7016 (= e!4099 (dynLambda!122 lambda!1108 (head!364 (map!143 xs!372 lambda!1107)) (foldRight1!22 (tail!376 (map!143 xs!372 lambda!1107)) lambda!1108)))))

(assert (= (and d!5521 c!2541) b!7015))

(assert (= (and d!5521 (not c!2541)) b!7016))

(declare-fun b_lambda!3335 () Bool)

(assert (=> (not b_lambda!3335) (not b!7016)))

(declare-fun m!9855 () Bool)

(assert (=> b!7016 m!9855))

(assert (=> b!7016 m!9855))

(declare-fun m!9857 () Bool)

(assert (=> b!7016 m!9857))

(assert (=> b!6994 d!5521))

(assert (=> b!6994 d!5517))

(declare-fun d!5523 () Bool)

(assert (=> d!5523 (= (isEmpty!131 xs!372) (is-Nil!148 xs!372))))

(assert (=> start!1254 d!5523))

(declare-fun b_lambda!3337 () Bool)

(assert (= b_lambda!3335 (or b!6994 b_lambda!3337)))

(declare-fun bs!1580 () Bool)

(declare-fun d!5525 () Bool)

(assert (= bs!1580 (and d!5525 b!6994)))

(declare-fun ++!3 (Balance!77 Balance!77) Balance!77)

(assert (=> bs!1580 (= (dynLambda!122 lambda!1108 (head!364 (map!143 xs!372 lambda!1107)) (foldRight1!22 (tail!376 (map!143 xs!372 lambda!1107)) lambda!1108)) (++!3 (head!364 (map!143 xs!372 lambda!1107)) (foldRight1!22 (tail!376 (map!143 xs!372 lambda!1107)) lambda!1108)))))

(assert (=> bs!1580 m!9855))

(declare-fun m!9859 () Bool)

(assert (=> bs!1580 m!9859))

(assert (=> b!7016 d!5525))

(declare-fun b_lambda!3339 () Bool)

(assert (= b_lambda!3333 (or b!6994 b_lambda!3339)))

(declare-fun bs!1581 () Bool)

(declare-fun d!5527 () Bool)

(assert (= bs!1581 (and d!5527 b!6994)))

(assert (=> bs!1581 (= (dynLambda!122 lambda!1108 (head!364 (append!55 (map!143 xs!372 lambda!1107) (Cons!146 (Balance!78 0 0) Nil!147))) (foldRight1!22 (tail!376 (append!55 (map!143 xs!372 lambda!1107) (Cons!146 (Balance!78 0 0) Nil!147))) lambda!1108)) (++!3 (head!364 (append!55 (map!143 xs!372 lambda!1107) (Cons!146 (Balance!78 0 0) Nil!147))) (foldRight1!22 (tail!376 (append!55 (map!143 xs!372 lambda!1107) (Cons!146 (Balance!78 0 0) Nil!147))) lambda!1108)))))

(assert (=> bs!1581 m!9851))

(declare-fun m!9861 () Bool)

(assert (=> bs!1581 m!9861))

(assert (=> b!7014 d!5527))

(declare-fun b_lambda!3341 () Bool)

(assert (= b_lambda!3331 (or b!6994 b_lambda!3341)))

(declare-fun bs!1582 () Bool)

(declare-fun d!5529 () Bool)

(assert (= bs!1582 (and d!5529 b!6994)))

(declare-fun fromParenthesis!0 (Parenthesis!33) Balance!77)

(assert (=> bs!1582 (= (dynLambda!121 lambda!1107 (head!365 xs!372)) (fromParenthesis!0 (head!365 xs!372)))))

(declare-fun m!9863 () Bool)

(assert (=> bs!1582 m!9863))

(assert (=> b!7008 d!5529))

(push 1)

(assert (not bs!1580))

(assert (not b!7002))

(assert (not b_lambda!3339))

(assert (not b_lambda!3337))

(assert (not bs!1582))

(assert (not b_lambda!3341))

(assert b_and!1833)

(assert (not bs!1581))

(assert (not b_next!811))

(assert (not b!7008))

(assert (not b!7014))

(assert (not b!7016))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1833)

(assert (not b_next!811))

(check-sat)

(pop 1)


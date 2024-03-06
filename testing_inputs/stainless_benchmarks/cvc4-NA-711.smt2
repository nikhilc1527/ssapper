; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5066 () Bool)

(assert start!5066)

(declare-fun res!18707 () Bool)

(declare-fun e!20164 () Bool)

(assert (=> start!5066 (=> (not res!18707) (not e!20164))))

(declare-datatypes () ((Nat!72 (Zero!56) (Succ!53 (n!1149 Nat!72)))))

(declare-fun n!715 () Nat!72)

(declare-fun >!2 (Nat!72 Nat!72) Bool)

(assert (=> start!5066 (= res!18707 (>!2 n!715 Zero!56))))

(assert (=> start!5066 e!20164))

(assert (=> start!5066 true))

(declare-fun b!39127 () Bool)

(declare-fun res!18708 () Bool)

(assert (=> b!39127 (=> (not res!18708) (not e!20164))))

(declare-datatypes () ((Unit!346 (Unit!347))))

(declare-fun x$76!1 () Unit!346)

(declare-fun times_two_even!0 (Nat!72) Unit!346)

(declare-fun pow!0 (Nat!72 Nat!72) Nat!72)

(assert (=> b!39127 (= res!18708 (= x$76!1 (times_two_even!0 (pow!0 (Succ!53 (Succ!53 Zero!56)) (n!1149 n!715)))))))

(declare-fun b!39128 () Bool)

(declare-fun isEven!1 (Nat!72) Bool)

(assert (=> b!39128 (= e!20164 (not (isEven!1 (pow!0 (Succ!53 (Succ!53 Zero!56)) n!715))))))

(assert (= (and start!5066 res!18707) b!39127))

(assert (= (and b!39127 res!18708) b!39128))

(declare-fun m!40327 () Bool)

(assert (=> start!5066 m!40327))

(declare-fun m!40329 () Bool)

(assert (=> b!39127 m!40329))

(assert (=> b!39127 m!40329))

(declare-fun m!40331 () Bool)

(assert (=> b!39127 m!40331))

(declare-fun m!40333 () Bool)

(assert (=> b!39128 m!40333))

(assert (=> b!39128 m!40333))

(declare-fun m!40335 () Bool)

(assert (=> b!39128 m!40335))

(push 1)

(assert (not b!39127))

(assert (not start!5066))

(assert (not b!39128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!19884 () Bool)

(declare-fun *!4 (Nat!72 Nat!72) Nat!72)

(assert (=> d!19884 (isEven!1 (*!4 (Succ!53 (Succ!53 Zero!56)) (pow!0 (Succ!53 (Succ!53 Zero!56)) (n!1149 n!715))))))

(assert (=> d!19884 true))

(declare-fun x$73!24 () Unit!346)

(assert (=> d!19884 (= (times_two_even!0 (pow!0 (Succ!53 (Succ!53 Zero!56)) (n!1149 n!715))) x$73!24)))

(declare-fun bs!12064 () Bool)

(assert (= bs!12064 d!19884))

(assert (=> bs!12064 m!40329))

(declare-fun m!40337 () Bool)

(assert (=> bs!12064 m!40337))

(assert (=> bs!12064 m!40337))

(declare-fun m!40339 () Bool)

(assert (=> bs!12064 m!40339))

(assert (=> b!39127 d!19884))

(declare-fun d!19886 () Bool)

(declare-fun c!8341 () Bool)

(assert (=> d!19886 (= c!8341 (is-Succ!53 (n!1149 n!715)))))

(declare-fun e!20167 () Nat!72)

(assert (=> d!19886 (= (pow!0 (Succ!53 (Succ!53 Zero!56)) (n!1149 n!715)) e!20167)))

(declare-fun b!39133 () Bool)

(assert (=> b!39133 (= e!20167 (*!4 (Succ!53 (Succ!53 Zero!56)) (pow!0 (Succ!53 (Succ!53 Zero!56)) (n!1149 (n!1149 n!715)))))))

(declare-fun b!39134 () Bool)

(assert (=> b!39134 (= e!20167 (Succ!53 Zero!56))))

(assert (= (and d!19886 c!8341) b!39133))

(assert (= (and d!19886 (not c!8341)) b!39134))

(declare-fun m!40341 () Bool)

(assert (=> b!39133 m!40341))

(assert (=> b!39133 m!40341))

(declare-fun m!40343 () Bool)

(assert (=> b!39133 m!40343))

(assert (=> b!39127 d!19886))

(declare-fun d!19888 () Bool)

(declare-fun res!18711 () Bool)

(declare-fun e!20170 () Bool)

(assert (=> d!19888 (=> (not res!18711) (not e!20170))))

(declare-fun <!2 (Nat!72 Nat!72) Bool)

(assert (=> d!19888 (= res!18711 (not (<!2 n!715 Zero!56)))))

(assert (=> d!19888 (= (>!2 n!715 Zero!56) e!20170)))

(declare-fun b!39137 () Bool)

(assert (=> b!39137 (= e!20170 (not (= n!715 Zero!56)))))

(assert (= (and d!19888 res!18711) b!39137))

(declare-fun m!40345 () Bool)

(assert (=> d!19888 m!40345))

(assert (=> start!5066 d!19888))

(declare-fun d!19890 () Bool)

(declare-fun res!18716 () Bool)

(declare-fun e!20175 () Bool)

(assert (=> d!19890 (=> res!18716 e!20175)))

(assert (=> d!19890 (= res!18716 (is-Zero!56 (pow!0 (Succ!53 (Succ!53 Zero!56)) n!715)))))

(assert (=> d!19890 (= (isEven!1 (pow!0 (Succ!53 (Succ!53 Zero!56)) n!715)) e!20175)))

(declare-fun b!39142 () Bool)

(declare-fun e!20176 () Bool)

(assert (=> b!39142 (= e!20175 e!20176)))

(declare-fun res!18717 () Bool)

(assert (=> b!39142 (=> (not res!18717) (not e!20176))))

(assert (=> b!39142 (= res!18717 (not (and (is-Succ!53 (pow!0 (Succ!53 (Succ!53 Zero!56)) n!715)) (is-Zero!56 (n!1149 (pow!0 (Succ!53 (Succ!53 Zero!56)) n!715))))))))

(declare-fun b!39143 () Bool)

(assert (=> b!39143 (= e!20176 (not (isEven!1 (n!1149 (pow!0 (Succ!53 (Succ!53 Zero!56)) n!715)))))))

(assert (= (and d!19890 (not res!18716)) b!39142))

(assert (= (and b!39142 res!18717) b!39143))

(declare-fun m!40347 () Bool)

(assert (=> b!39143 m!40347))

(assert (=> b!39128 d!19890))

(declare-fun d!19892 () Bool)

(declare-fun c!8342 () Bool)

(assert (=> d!19892 (= c!8342 (is-Succ!53 n!715))))

(declare-fun e!20177 () Nat!72)

(assert (=> d!19892 (= (pow!0 (Succ!53 (Succ!53 Zero!56)) n!715) e!20177)))

(declare-fun b!39144 () Bool)

(assert (=> b!39144 (= e!20177 (*!4 (Succ!53 (Succ!53 Zero!56)) (pow!0 (Succ!53 (Succ!53 Zero!56)) (n!1149 n!715))))))

(declare-fun b!39145 () Bool)

(assert (=> b!39145 (= e!20177 (Succ!53 Zero!56))))

(assert (= (and d!19892 c!8342) b!39144))

(assert (= (and d!19892 (not c!8342)) b!39145))

(assert (=> b!39144 m!40329))

(assert (=> b!39144 m!40329))

(assert (=> b!39144 m!40337))

(assert (=> b!39128 d!19892))

(push 1)

(assert (not b!39144))

(assert (not d!19888))

(assert (not d!19884))

(assert (not b!39133))

(assert (not b!39143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


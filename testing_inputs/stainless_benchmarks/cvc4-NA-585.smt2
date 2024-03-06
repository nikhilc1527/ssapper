; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4362 () Bool)

(assert start!4362)

(declare-fun res!15871 () Bool)

(declare-fun e!17502 () Bool)

(assert (=> start!4362 (=> (not res!15871) (not e!17502))))

(declare-datatypes () ((Unit!203 (Unit!204))))

(declare-fun x$1!512 () Unit!203)

(declare-datatypes () ((Countable!8 (CountableExt!4 (__x!48 Int)))))

(declare-fun thiss!3869 () Countable!8)

(declare-datatypes () ((T!2187 (T!2188 (val!117 Int)))))

(declare-fun t!4636 () T!2187)

(declare-fun gof!5 (Countable!8 T!2187) Unit!203)

(assert (=> start!4362 (= res!15871 (= x$1!512 (gof!5 thiss!3869 t!4636)))))

(assert (=> start!4362 e!17502))

(assert (=> start!4362 true))

(declare-fun tp_is_empty!233 () Bool)

(assert (=> start!4362 tp_is_empty!233))

(declare-fun b!34644 () Bool)

(declare-fun g!70 (Countable!8 Int) T!2187)

(declare-fun f!2205 (Countable!8 T!2187) Int)

(assert (=> b!34644 (= e!17502 (not (= (g!70 thiss!3869 (f!2205 thiss!3869 t!4636)) t!4636)))))

(assert (= (and start!4362 res!15871) b!34644))

(declare-fun m!37253 () Bool)

(assert (=> start!4362 m!37253))

(declare-fun m!37255 () Bool)

(assert (=> b!34644 m!37255))

(assert (=> b!34644 m!37255))

(declare-fun m!37257 () Bool)

(assert (=> b!34644 m!37257))

(push 1)

(assert (not start!4362))

(assert (not b!34644))

(assert tp_is_empty!233)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18088 () Bool)

(assert (=> d!18088 (= (g!70 thiss!3869 (f!2205 thiss!3869 t!4636)) t!4636)))

(assert (=> d!18088 true))

(declare-fun x$1!517 () Unit!203)

(assert (=> d!18088 (= (gof!5 thiss!3869 t!4636) x$1!517)))

(declare-fun bs!11119 () Bool)

(assert (= bs!11119 d!18088))

(assert (=> bs!11119 m!37255))

(assert (=> bs!11119 m!37255))

(assert (=> bs!11119 m!37257))

(assert (=> start!4362 d!18088))

(declare-fun d!18090 () Bool)

(declare-fun g!71 (Countable!8 Int) T!2187)

(assert (=> d!18090 (= (g!70 thiss!3869 (f!2205 thiss!3869 t!4636)) (g!71 thiss!3869 (f!2205 thiss!3869 t!4636)))))

(declare-fun bs!11120 () Bool)

(assert (= bs!11120 d!18090))

(assert (=> bs!11120 m!37255))

(declare-fun m!37259 () Bool)

(assert (=> bs!11120 m!37259))

(assert (=> b!34644 d!18090))

(declare-fun d!18092 () Bool)

(declare-fun f!2206 (Countable!8 T!2187) Int)

(assert (=> d!18092 (= (f!2205 thiss!3869 t!4636) (f!2206 thiss!3869 t!4636))))

(declare-fun bs!11121 () Bool)

(assert (= bs!11121 d!18092))

(declare-fun m!37261 () Bool)

(assert (=> bs!11121 m!37261))

(assert (=> b!34644 d!18092))

(push 1)

(assert (not d!18092))

(assert (not d!18088))

(assert (not d!18090))

(assert tp_is_empty!233)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


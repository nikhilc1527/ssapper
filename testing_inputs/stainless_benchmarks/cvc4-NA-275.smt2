; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2128 () Bool)

(assert start!2128)

(declare-fun b_free!1383 () Bool)

(declare-fun b_next!3377 () Bool)

(assert (=> start!2128 (= b_free!1383 (not b_next!3377))))

(declare-fun tp!2205 () Bool)

(declare-fun b_and!4881 () Bool)

(assert (=> start!2128 (= tp!2205 b_and!4881)))

(declare-fun b_free!1385 () Bool)

(declare-fun b_next!3379 () Bool)

(assert (=> start!2128 (= b_free!1385 (not b_next!3379))))

(declare-fun tp!2206 () Bool)

(declare-fun b_and!4883 () Bool)

(assert (=> start!2128 (= tp!2206 b_and!4883)))

(declare-fun res!3715 () Bool)

(declare-fun e!6142 () Bool)

(assert (=> start!2128 (=> (not res!3715) (not e!6142))))

(declare-datatypes () ((A!926 (A!927 (val!14 Int)))))

(declare-datatypes () ((List!249 (Nil!247) (Cons!246 (head!464 A!926) (tail!476 List!249)))))

(declare-fun xs!433 () List!249)

(assert (=> start!2128 (= res!3715 (is-Nil!247 xs!433))))

(assert (=> start!2128 e!6142))

(declare-fun tp_is_empty!27 () Bool)

(assert (=> start!2128 tp_is_empty!27))

(declare-fun e!6144 () Bool)

(assert (=> start!2128 e!6144))

(assert (=> start!2128 tp!2205))

(declare-fun e!6143 () Bool)

(assert (=> start!2128 e!6143))

(assert (=> start!2128 tp!2206))

(declare-fun b!10550 () Bool)

(declare-fun res!3716 () Bool)

(assert (=> b!10550 (=> (not res!3716) (not e!6142))))

(declare-fun f!762 () Int)

(declare-fun f!759 () Int)

(assert (=> b!10550 (= res!3716 (= f!762 f!759))))

(declare-fun b!10551 () Bool)

(declare-fun tp!2204 () Bool)

(assert (=> b!10551 (= e!6143 (and tp_is_empty!27 tp!2204))))

(declare-fun b!10552 () Bool)

(declare-fun thiss!1310 () List!249)

(declare-fun isEmpty!179 (List!249) Bool)

(assert (=> b!10552 (= e!6142 (isEmpty!179 thiss!1310))))

(declare-fun b!10553 () Bool)

(declare-fun tp!2203 () Bool)

(assert (=> b!10553 (= e!6144 (and tp_is_empty!27 tp!2203))))

(declare-fun b!10554 () Bool)

(declare-fun res!3714 () Bool)

(assert (=> b!10554 (=> (not res!3714) (not e!6142))))

(declare-fun z!121 () A!926)

(declare-fun append!100 (List!249 List!249) List!249)

(assert (=> b!10554 (= res!3714 (= thiss!1310 (append!100 xs!433 (Cons!246 z!121 Nil!247))))))

(assert (= (and start!2128 res!3715) b!10554))

(assert (= (and b!10554 res!3714) b!10550))

(assert (= (and b!10550 res!3716) b!10552))

(assert (= (and start!2128 (is-Cons!246 xs!433)) b!10553))

(assert (= (and start!2128 (is-Cons!246 thiss!1310)) b!10551))

(declare-fun m!13637 () Bool)

(assert (=> b!10552 m!13637))

(declare-fun m!13639 () Bool)

(assert (=> b!10554 m!13639))

(push 1)

(assert (not b!10552))

(assert b_and!4883)

(assert b_and!4881)

(assert tp_is_empty!27)

(assert (not b_next!3377))

(assert (not b!10554))

(assert (not b!10553))

(assert (not b_next!3379))

(assert (not b!10551))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4881)

(assert b_and!4883)

(assert (not b_next!3379))

(assert (not b_next!3377))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8473 () Bool)

(declare-fun c!3279 () Bool)

(assert (=> d!8473 (= c!3279 (is-Nil!247 xs!433))))

(declare-fun e!6147 () List!249)

(assert (=> d!8473 (= (append!100 xs!433 (Cons!246 z!121 Nil!247)) e!6147)))

(declare-fun b!10559 () Bool)

(assert (=> b!10559 (= e!6147 (Cons!246 z!121 Nil!247))))

(declare-fun b!10560 () Bool)

(assert (=> b!10560 (= e!6147 (Cons!246 (head!464 xs!433) (append!100 (tail!476 xs!433) (Cons!246 z!121 Nil!247))))))

(assert (= (and d!8473 c!3279) b!10559))

(assert (= (and d!8473 (not c!3279)) b!10560))

(declare-fun m!13641 () Bool)

(assert (=> b!10560 m!13641))

(assert (=> b!10554 d!8473))

(declare-fun d!8475 () Bool)

(assert (=> d!8475 (= (isEmpty!179 thiss!1310) (is-Nil!247 thiss!1310))))

(assert (=> b!10552 d!8475))

(declare-fun b!10565 () Bool)

(declare-fun e!6150 () Bool)

(declare-fun tp!2209 () Bool)

(assert (=> b!10565 (= e!6150 (and tp_is_empty!27 tp!2209))))

(assert (=> b!10551 (= tp!2204 e!6150)))

(assert (= (and b!10551 (is-Cons!246 (tail!476 thiss!1310))) b!10565))

(declare-fun b!10566 () Bool)

(declare-fun e!6151 () Bool)

(declare-fun tp!2210 () Bool)

(assert (=> b!10566 (= e!6151 (and tp_is_empty!27 tp!2210))))

(assert (=> b!10553 (= tp!2203 e!6151)))

(assert (= (and b!10553 (is-Cons!246 (tail!476 xs!433))) b!10566))

(push 1)

(assert (not b!10560))

(assert b_and!4883)

(assert (not b!10565))

(assert b_and!4881)

(assert tp_is_empty!27)

(assert (not b!10566))

(assert (not b_next!3377))

(assert (not b_next!3379))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4881)

(assert b_and!4883)

(assert (not b_next!3379))

(assert (not b_next!3377))

(check-sat)

(pop 1)


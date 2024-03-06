; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9828 () Bool)

(assert start!9828)

(declare-fun b!71320 () Bool)

(declare-fun res!34900 () Bool)

(declare-fun e!38586 () Bool)

(assert (=> b!71320 (=> (not res!34900) (not e!38586))))

(declare-datatypes () ((A!3219 (A!3220 (val!181 Int)))))

(declare-datatypes () ((List!590 (Cons!548 (h!804 A!3219) (t!47460 List!590)) (Nil!549))))

(declare-datatypes () ((tuple2!362 (tuple2!363 (_1!216 A!3219) (_2!216 List!590)))))

(declare-datatypes () ((Option!498 (Some!475 (v!2444 tuple2!362)) (None!476))))

(declare-fun thiss!9436 () Option!498)

(declare-fun list!731 () List!590)

(declare-fun unapply!5 (List!590) Option!498)

(assert (=> b!71320 (= res!34900 (= thiss!9436 (unapply!5 list!731)))))

(declare-fun res!34899 () Bool)

(assert (=> start!9828 (=> (not res!34899) (not e!38586))))

(declare-fun isEmpty!626 (Option!498) Bool)

(assert (=> start!9828 (= res!34899 (not (isEmpty!626 (unapply!5 list!731))))))

(assert (=> start!9828 e!38586))

(declare-fun e!38588 () Bool)

(assert (=> start!9828 e!38588))

(declare-fun e!38587 () Bool)

(assert (=> start!9828 e!38587))

(declare-fun b!71322 () Bool)

(declare-fun tp_is_empty!357 () Bool)

(declare-fun tp!16839 () Bool)

(assert (=> b!71322 (= e!38588 (and tp_is_empty!357 tp!16839))))

(declare-fun b!71323 () Bool)

(declare-fun tp!16838 () Bool)

(assert (=> b!71323 (= e!38587 (and tp_is_empty!357 tp!16838))))

(declare-fun b!71321 () Bool)

(declare-fun isDefined!20 (Option!498) Bool)

(assert (=> b!71321 (= e!38586 (not (isDefined!20 thiss!9436)))))

(assert (= (and start!9828 res!34899) b!71320))

(assert (= (and b!71320 res!34900) b!71321))

(assert (= (and start!9828 (is-Cons!548 list!731)) b!71322))

(assert (= (and start!9828 (is-Some!475 thiss!9436)) b!71323))

(declare-fun m!71126 () Bool)

(assert (=> b!71320 m!71126))

(assert (=> start!9828 m!71126))

(assert (=> start!9828 m!71126))

(declare-fun m!71128 () Bool)

(assert (=> start!9828 m!71128))

(declare-fun m!71130 () Bool)

(assert (=> b!71321 m!71130))

(push 1)

(assert (not b!71320))

(assert (not start!9828))

(assert (not b!71322))

(assert tp_is_empty!357)

(assert (not b!71323))

(assert (not b!71321))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54041 () Bool)

(assert (=> d!54041 (= (isEmpty!626 (unapply!5 list!731)) (not (is-Some!475 (unapply!5 list!731))))))

(assert (=> start!9828 d!54041))

(declare-fun d!54043 () Bool)

(assert (=> d!54043 (= (unapply!5 list!731) (ite (is-Nil!549 list!731) None!476 (Some!475 (tuple2!363 (h!804 list!731) (t!47460 list!731)))))))

(assert (=> start!9828 d!54043))

(assert (=> b!71320 d!54043))

(declare-fun d!54045 () Bool)

(assert (=> d!54045 (= (isDefined!20 thiss!9436) (not (isEmpty!626 thiss!9436)))))

(declare-fun bs!37724 () Bool)

(assert (= bs!37724 d!54045))

(declare-fun m!71132 () Bool)

(assert (=> bs!37724 m!71132))

(assert (=> b!71321 d!54045))

(declare-fun b!71328 () Bool)

(declare-fun e!38591 () Bool)

(declare-fun tp!16842 () Bool)

(assert (=> b!71328 (= e!38591 (and tp_is_empty!357 tp!16842))))

(assert (=> b!71322 (= tp!16839 e!38591)))

(assert (= (and b!71322 (is-Cons!548 (t!47460 list!731))) b!71328))

(declare-fun b!71329 () Bool)

(declare-fun e!38592 () Bool)

(declare-fun tp!16843 () Bool)

(assert (=> b!71329 (= e!38592 (and tp_is_empty!357 tp!16843))))

(assert (=> b!71323 (= tp!16838 e!38592)))

(assert (= (and b!71323 (is-Cons!548 (_2!216 (v!2444 thiss!9436)))) b!71329))

(push 1)

(assert (not d!54045))

(assert (not b!71329))

(assert (not b!71328))

(assert tp_is_empty!357)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


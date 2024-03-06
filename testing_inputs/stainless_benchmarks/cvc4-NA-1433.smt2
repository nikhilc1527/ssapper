; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9836 () Bool)

(assert start!9836)

(declare-fun res!34906 () Bool)

(declare-fun e!38598 () Bool)

(assert (=> start!9836 (=> (not res!34906) (not e!38598))))

(declare-datatypes () ((A!3221 (A!3222 (val!182 Int)))))

(declare-datatypes () ((List!591 (Cons!549 (h!805 A!3221) (t!47461 List!591)) (Nil!550))))

(declare-fun list!731 () List!591)

(declare-datatypes () ((tuple2!364 (tuple2!365 (_1!217 A!3221) (_2!217 List!591)))))

(declare-datatypes () ((Option!499 (Some!476 (v!2445 tuple2!364)) (None!477))))

(declare-fun isEmpty!627 (Option!499) Bool)

(declare-fun unapply!6 (List!591) Option!499)

(assert (=> start!9836 (= res!34906 (not (isEmpty!627 (unapply!6 list!731))))))

(assert (=> start!9836 e!38598))

(declare-fun e!38597 () Bool)

(assert (=> start!9836 e!38597))

(assert (=> start!9836 true))

(declare-fun b!71336 () Bool)

(declare-fun res!34905 () Bool)

(assert (=> b!71336 (=> (not res!34905) (not e!38598))))

(declare-fun x$1!977 () Int)

(declare-fun size!613 (List!591) Int)

(declare-fun get!775 (Option!499) tuple2!364)

(assert (=> b!71336 (= res!34905 (= x$1!977 (+ 1 (size!613 (_2!217 (get!775 (unapply!6 list!731)))))))))

(declare-fun b!71337 () Bool)

(assert (=> b!71337 (= e!38598 (< x$1!977 0))))

(declare-fun b!71338 () Bool)

(declare-fun tp_is_empty!359 () Bool)

(declare-fun tp!16846 () Bool)

(assert (=> b!71338 (= e!38597 (and tp_is_empty!359 tp!16846))))

(assert (= (and start!9836 res!34906) b!71336))

(assert (= (and b!71336 res!34905) b!71337))

(assert (= (and start!9836 (is-Cons!549 list!731)) b!71338))

(declare-fun m!71134 () Bool)

(assert (=> start!9836 m!71134))

(assert (=> start!9836 m!71134))

(declare-fun m!71136 () Bool)

(assert (=> start!9836 m!71136))

(assert (=> b!71336 m!71134))

(assert (=> b!71336 m!71134))

(declare-fun m!71138 () Bool)

(assert (=> b!71336 m!71138))

(declare-fun m!71140 () Bool)

(assert (=> b!71336 m!71140))

(push 1)

(assert (not start!9836))

(assert (not b!71336))

(assert (not b!71338))

(assert tp_is_empty!359)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54047 () Bool)

(assert (=> d!54047 (= (isEmpty!627 (unapply!6 list!731)) (not (is-Some!476 (unapply!6 list!731))))))

(assert (=> start!9836 d!54047))

(declare-fun d!54049 () Bool)

(assert (=> d!54049 (= (unapply!6 list!731) (ite (is-Nil!550 list!731) None!477 (Some!476 (tuple2!365 (h!805 list!731) (t!47461 list!731)))))))

(assert (=> start!9836 d!54049))

(declare-fun d!54051 () Bool)

(declare-fun x$1!982 () Int)

(assert (=> d!54051 (>= x$1!982 0)))

(assert (=> d!54051 true))

(assert (=> d!54051 (= (size!613 (_2!217 (get!775 (unapply!6 list!731)))) x$1!982)))

(assert (=> b!71336 d!54051))

(declare-fun d!54053 () Bool)

(assert (=> d!54053 (= (get!775 (unapply!6 list!731)) (v!2445 (unapply!6 list!731)))))

(assert (=> b!71336 d!54053))

(assert (=> b!71336 d!54049))

(declare-fun b!71343 () Bool)

(declare-fun e!38601 () Bool)

(declare-fun tp!16849 () Bool)

(assert (=> b!71343 (= e!38601 (and tp_is_empty!359 tp!16849))))

(assert (=> b!71338 (= tp!16846 e!38601)))

(assert (= (and b!71338 (is-Cons!549 (t!47461 list!731))) b!71343))

(push 1)

(assert (not b!71343))

(assert tp_is_empty!359)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


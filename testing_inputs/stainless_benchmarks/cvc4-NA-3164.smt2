; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15550 () Bool)

(assert start!15550)

(declare-fun res!49838 () Bool)

(declare-fun e!52353 () Bool)

(assert (=> start!15550 (=> (not res!49838) (not e!52353))))

(declare-datatypes () ((A!4708 (A!4709 (val!258 Int)))))

(declare-datatypes () ((List!904 (Cons!841 (h!7810 A!4708) (t!56128 List!904)) (Nil!843))))

(declare-fun list!1112 () List!904)

(assert (=> start!15550 (= res!49838 (not (is-Nil!843 list!1112)))))

(assert (=> start!15550 e!52353))

(declare-fun e!52352 () Bool)

(assert (=> start!15550 e!52352))

(assert (=> start!15550 true))

(declare-fun b!95991 () Bool)

(declare-fun res!49837 () Bool)

(assert (=> b!95991 (=> (not res!49837) (not e!52353))))

(declare-fun res!49825 () Int)

(declare-fun sizeOf!5 (List!904) Int)

(assert (=> b!95991 (= res!49837 (= res!49825 (+ 1 (sizeOf!5 (t!56128 list!1112)))))))

(declare-fun b!95992 () Bool)

(assert (=> b!95992 (= e!52353 (or (< res!49825 0) (not (= res!49825 (ite false 0 (ite (is-Nil!843 (t!56128 list!1112)) 1 (ite true 2 res!49825)))))))))

(declare-fun b!95993 () Bool)

(declare-fun tp_is_empty!521 () Bool)

(declare-fun tp!18060 () Bool)

(assert (=> b!95993 (= e!52352 (and tp_is_empty!521 tp!18060))))

(assert (= (and start!15550 res!49838) b!95991))

(assert (= (and b!95991 res!49837) b!95992))

(assert (= (and start!15550 (is-Cons!841 list!1112)) b!95993))

(declare-fun m!91711 () Bool)

(assert (=> b!95991 m!91711))

(push 1)

(assert (not b!95991))

(assert (not b!95993))

(assert tp_is_empty!521)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!62906 () Bool)

(declare-fun lt!22064 () Int)

(assert (=> d!62906 (and (>= lt!22064 0) (= lt!22064 (ite (is-Nil!843 (t!56128 list!1112)) 0 (ite (and (is-Cons!841 (t!56128 list!1112)) (is-Nil!843 (t!56128 (t!56128 list!1112)))) 1 (ite (is-Cons!841 (t!56128 list!1112)) 2 lt!22064)))))))

(declare-fun e!52356 () Int)

(assert (=> d!62906 (= lt!22064 e!52356)))

(declare-fun c!23662 () Bool)

(assert (=> d!62906 (= c!23662 (is-Nil!843 (t!56128 list!1112)))))

(assert (=> d!62906 (= (sizeOf!5 (t!56128 list!1112)) lt!22064)))

(declare-fun b!95998 () Bool)

(assert (=> b!95998 (= e!52356 0)))

(declare-fun b!95999 () Bool)

(assert (=> b!95999 (= e!52356 (+ 1 (sizeOf!5 (t!56128 (t!56128 list!1112)))))))

(assert (= (and d!62906 c!23662) b!95998))

(assert (= (and d!62906 (not c!23662)) b!95999))

(declare-fun m!91713 () Bool)

(assert (=> b!95999 m!91713))

(assert (=> b!95991 d!62906))

(declare-fun b!96004 () Bool)

(declare-fun e!52359 () Bool)

(declare-fun tp!18063 () Bool)

(assert (=> b!96004 (= e!52359 (and tp_is_empty!521 tp!18063))))

(assert (=> b!95993 (= tp!18060 e!52359)))

(assert (= (and b!95993 (is-Cons!841 (t!56128 list!1112))) b!96004))

(push 1)

(assert (not b!95999))

(assert (not b!96004))

(assert tp_is_empty!521)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!62908 () Bool)

(declare-fun lt!22065 () Int)

(assert (=> d!62908 (and (>= lt!22065 0) (= lt!22065 (ite (is-Nil!843 (t!56128 (t!56128 list!1112))) 0 (ite (and (is-Cons!841 (t!56128 (t!56128 list!1112))) (is-Nil!843 (t!56128 (t!56128 (t!56128 list!1112))))) 1 (ite (is-Cons!841 (t!56128 (t!56128 list!1112))) 2 lt!22065)))))))

(declare-fun e!52360 () Int)

(assert (=> d!62908 (= lt!22065 e!52360)))

(declare-fun c!23663 () Bool)

(assert (=> d!62908 (= c!23663 (is-Nil!843 (t!56128 (t!56128 list!1112))))))

(assert (=> d!62908 (= (sizeOf!5 (t!56128 (t!56128 list!1112))) lt!22065)))

(declare-fun b!96005 () Bool)

(assert (=> b!96005 (= e!52360 0)))

(declare-fun b!96006 () Bool)

(assert (=> b!96006 (= e!52360 (+ 1 (sizeOf!5 (t!56128 (t!56128 (t!56128 list!1112))))))))

(assert (= (and d!62908 c!23663) b!96005))

(assert (= (and d!62908 (not c!23663)) b!96006))

(declare-fun m!91715 () Bool)

(assert (=> b!96006 m!91715))

(assert (=> b!95999 d!62908))

(declare-fun b!96007 () Bool)

(declare-fun e!52361 () Bool)

(declare-fun tp!18064 () Bool)

(assert (=> b!96007 (= e!52361 (and tp_is_empty!521 tp!18064))))

(assert (=> b!96004 (= tp!18063 e!52361)))

(assert (= (and b!96004 (is-Cons!841 (t!56128 (t!56128 list!1112)))) b!96007))

(push 1)

(assert (not b!96006))

(assert (not b!96007))

(assert tp_is_empty!521)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!62910 () Bool)

(declare-fun lt!22066 () Int)

(assert (=> d!62910 (and (>= lt!22066 0) (= lt!22066 (ite (is-Nil!843 (t!56128 (t!56128 (t!56128 list!1112)))) 0 (ite (and (is-Cons!841 (t!56128 (t!56128 (t!56128 list!1112)))) (is-Nil!843 (t!56128 (t!56128 (t!56128 (t!56128 list!1112)))))) 1 (ite (is-Cons!841 (t!56128 (t!56128 (t!56128 list!1112)))) 2 lt!22066)))))))

(declare-fun e!52362 () Int)

(assert (=> d!62910 (= lt!22066 e!52362)))

(declare-fun c!23664 () Bool)

(assert (=> d!62910 (= c!23664 (is-Nil!843 (t!56128 (t!56128 (t!56128 list!1112)))))))

(assert (=> d!62910 (= (sizeOf!5 (t!56128 (t!56128 (t!56128 list!1112)))) lt!22066)))

(declare-fun b!96008 () Bool)

(assert (=> b!96008 (= e!52362 0)))

(declare-fun b!96009 () Bool)

(assert (=> b!96009 (= e!52362 (+ 1 (sizeOf!5 (t!56128 (t!56128 (t!56128 (t!56128 list!1112)))))))))

(assert (= (and d!62910 c!23664) b!96008))

(assert (= (and d!62910 (not c!23664)) b!96009))

(declare-fun m!91717 () Bool)

(assert (=> b!96009 m!91717))

(assert (=> b!96006 d!62910))

(declare-fun b!96010 () Bool)

(declare-fun e!52363 () Bool)

(declare-fun tp!18065 () Bool)

(assert (=> b!96010 (= e!52363 (and tp_is_empty!521 tp!18065))))

(assert (=> b!96007 (= tp!18064 e!52363)))

(assert (= (and b!96007 (is-Cons!841 (t!56128 (t!56128 (t!56128 list!1112))))) b!96010))

(push 1)

(assert (not b!96009))

(assert (not b!96010))

(assert tp_is_empty!521)

(check-sat)

(get-model)

(pop 1)


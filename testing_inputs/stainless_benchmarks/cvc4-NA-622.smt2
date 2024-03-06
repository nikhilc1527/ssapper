; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4528 () Bool)

(assert start!4528)

(declare-fun b_free!2183 () Bool)

(declare-fun b_next!5293 () Bool)

(assert (=> start!4528 (= b_free!2183 (not b_next!5293))))

(declare-fun tp!7297 () Bool)

(declare-fun b_and!7931 () Bool)

(assert (=> start!4528 (= tp!7297 b_and!7931)))

(declare-fun b_free!2185 () Bool)

(declare-fun b_next!5295 () Bool)

(assert (=> start!4528 (= b_free!2185 (not b_next!5295))))

(declare-fun tp!7298 () Bool)

(declare-fun b_and!7933 () Bool)

(assert (=> start!4528 (= tp!7298 b_and!7933)))

(declare-fun b!35052 () Bool)

(declare-fun res!16199 () Bool)

(declare-fun e!17692 () Bool)

(assert (=> b!35052 (=> (not res!16199) (not e!17692))))

(declare-datatypes () ((List!393 (Cons!385 (h!337 Int) (t!5008 List!393)) (Nil!386))))

(declare-fun l!953 () List!393)

(declare-fun l!950 () List!393)

(declare-fun tail!570 (List!393) List!393)

(assert (=> b!35052 (= res!16199 (= l!953 (tail!570 l!950)))))

(declare-fun b!35053 () Bool)

(declare-fun res!16201 () Bool)

(assert (=> b!35053 (=> (not res!16201) (not e!17692))))

(declare-fun n!432 () Int)

(declare-fun n!429 () Int)

(assert (=> b!35053 (= res!16201 (= n!432 n!429))))

(declare-fun b!35054 () Bool)

(declare-fun res!16202 () Bool)

(assert (=> b!35054 (=> (not res!16202) (not e!17692))))

(declare-fun p!499 () Int)

(declare-fun dynLambda!641 (Int Int) Bool)

(declare-fun head!546 (List!393) Int)

(assert (=> b!35054 (= res!16202 (not (dynLambda!641 p!499 (head!546 l!950))))))

(declare-fun b!35055 () Bool)

(declare-fun res!16198 () Bool)

(assert (=> b!35055 (=> (not res!16198) (not e!17692))))

(declare-fun isEmpty!388 (List!393) Bool)

(assert (=> b!35055 (= res!16198 (not (isEmpty!388 l!950)))))

(declare-fun b!35056 () Bool)

(declare-fun size!368 (List!393) Int)

(assert (=> b!35056 (= e!17692 (> (size!368 l!953) n!432))))

(declare-fun b!35057 () Bool)

(declare-fun res!16197 () Bool)

(assert (=> b!35057 (=> (not res!16197) (not e!17692))))

(declare-fun p!502 () Int)

(assert (=> b!35057 (= res!16197 (= p!502 p!499))))

(declare-fun res!16200 () Bool)

(assert (=> start!4528 (=> (not res!16200) (not e!17692))))

(assert (=> start!4528 (= res!16200 (<= (size!368 l!950) n!429))))

(assert (=> start!4528 e!17692))

(assert (=> start!4528 tp!7297))

(assert (=> start!4528 true))

(assert (=> start!4528 tp!7298))

(assert (= (and start!4528 res!16200) b!35055))

(assert (= (and b!35055 res!16198) b!35054))

(assert (= (and b!35054 res!16202) b!35057))

(assert (= (and b!35057 res!16197) b!35052))

(assert (= (and b!35052 res!16199) b!35053))

(assert (= (and b!35053 res!16201) b!35056))

(declare-fun b_lambda!9543 () Bool)

(assert (=> (not b_lambda!9543) (not b!35054)))

(declare-fun t!5005 () Bool)

(declare-fun tb!4297 () Bool)

(assert (=> (and start!4528 (= p!502 p!499) t!5005) tb!4297))

(declare-fun result!4553 () Bool)

(assert (=> tb!4297 (= result!4553 true)))

(assert (=> b!35054 t!5005))

(declare-fun b_and!7935 () Bool)

(assert (= b_and!7931 (and (=> t!5005 result!4553) b_and!7935)))

(declare-fun t!5007 () Bool)

(declare-fun tb!4299 () Bool)

(assert (=> (and start!4528 (= p!499 p!499) t!5007) tb!4299))

(declare-fun result!4555 () Bool)

(assert (=> tb!4299 (= result!4555 true)))

(assert (=> b!35054 t!5007))

(declare-fun b_and!7937 () Bool)

(assert (= b_and!7933 (and (=> t!5007 result!4555) b_and!7937)))

(declare-fun m!37557 () Bool)

(assert (=> b!35052 m!37557))

(declare-fun m!37559 () Bool)

(assert (=> b!35054 m!37559))

(assert (=> b!35054 m!37559))

(declare-fun m!37561 () Bool)

(assert (=> b!35054 m!37561))

(declare-fun m!37563 () Bool)

(assert (=> start!4528 m!37563))

(declare-fun m!37565 () Bool)

(assert (=> b!35056 m!37565))

(declare-fun m!37567 () Bool)

(assert (=> b!35055 m!37567))

(push 1)

(assert (not b_next!5295))

(assert b_and!7937)

(assert (not start!4528))

(assert (not b!35056))

(assert (not b!35055))

(assert (not b_lambda!9543))

(assert (not b_next!5293))

(assert (not b!35054))

(assert b_and!7935)

(assert (not b!35052))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7935)

(assert b_and!7937)

(assert (not b_next!5293))

(assert (not b_next!5295))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9545 () Bool)

(assert (= b_lambda!9543 (or (and start!4528 b_free!2183 (= p!502 p!499)) (and start!4528 b_free!2185) b_lambda!9545)))

(push 1)

(assert (not b_next!5295))

(assert b_and!7937)

(assert (not b_lambda!9545))

(assert (not start!4528))

(assert (not b!35056))

(assert (not b!35055))

(assert (not b_next!5293))

(assert (not b!35054))

(assert b_and!7935)

(assert (not b!35052))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7935)

(assert b_and!7937)

(assert (not b_next!5293))

(assert (not b_next!5295))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18352 () Bool)

(assert (=> d!18352 (= (tail!570 l!950) (t!5008 l!950))))

(assert (=> b!35052 d!18352))

(declare-fun d!18354 () Bool)

(assert (=> d!18354 (= (isEmpty!388 l!950) (is-Nil!386 l!950))))

(assert (=> b!35055 d!18354))

(declare-fun d!18356 () Bool)

(declare-fun lt!6535 () Int)

(assert (=> d!18356 (>= lt!6535 0)))

(declare-fun e!17695 () Int)

(assert (=> d!18356 (= lt!6535 e!17695)))

(declare-fun c!7446 () Bool)

(assert (=> d!18356 (= c!7446 (is-Nil!386 l!953))))

(assert (=> d!18356 (= (size!368 l!953) lt!6535)))

(declare-fun b!35062 () Bool)

(assert (=> b!35062 (= e!17695 0)))

(declare-fun b!35063 () Bool)

(assert (=> b!35063 (= e!17695 (+ 1 (size!368 (t!5008 l!953))))))

(assert (= (and d!18356 c!7446) b!35062))

(assert (= (and d!18356 (not c!7446)) b!35063))

(declare-fun m!37569 () Bool)

(assert (=> b!35063 m!37569))

(assert (=> b!35056 d!18356))

(declare-fun d!18358 () Bool)

(declare-fun lt!6536 () Int)

(assert (=> d!18358 (>= lt!6536 0)))

(declare-fun e!17696 () Int)

(assert (=> d!18358 (= lt!6536 e!17696)))

(declare-fun c!7447 () Bool)

(assert (=> d!18358 (= c!7447 (is-Nil!386 l!950))))

(assert (=> d!18358 (= (size!368 l!950) lt!6536)))

(declare-fun b!35064 () Bool)

(assert (=> b!35064 (= e!17696 0)))

(declare-fun b!35065 () Bool)

(assert (=> b!35065 (= e!17696 (+ 1 (size!368 (t!5008 l!950))))))

(assert (= (and d!18358 c!7447) b!35064))

(assert (= (and d!18358 (not c!7447)) b!35065))

(declare-fun m!37571 () Bool)

(assert (=> b!35065 m!37571))

(assert (=> start!4528 d!18358))

(declare-fun d!18360 () Bool)

(assert (=> d!18360 (= (head!546 l!950) (h!337 l!950))))

(assert (=> b!35054 d!18360))

(push 1)

(assert (not b_next!5295))

(assert b_and!7937)

(assert (not b_lambda!9545))

(assert (not b!35063))

(assert (not b_next!5293))

(assert (not b!35065))

(assert b_and!7935)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7935)

(assert b_and!7937)

(assert (not b_next!5293))

(assert (not b_next!5295))

(check-sat)

(pop 1)


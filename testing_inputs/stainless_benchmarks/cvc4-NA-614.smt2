; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4462 () Bool)

(assert start!4462)

(declare-fun b_free!2159 () Bool)

(declare-fun b_next!5269 () Bool)

(assert (=> start!4462 (= b_free!2159 (not b_next!5269))))

(declare-fun tp!7261 () Bool)

(declare-fun b_and!7885 () Bool)

(assert (=> start!4462 (= tp!7261 b_and!7885)))

(declare-fun b_free!2161 () Bool)

(declare-fun b_next!5271 () Bool)

(assert (=> start!4462 (= b_free!2161 (not b_next!5271))))

(declare-fun tp!7262 () Bool)

(declare-fun b_and!7887 () Bool)

(assert (=> start!4462 (= tp!7262 b_and!7887)))

(declare-fun res!16084 () Bool)

(declare-fun e!17605 () Bool)

(assert (=> start!4462 (=> (not res!16084) (not e!17605))))

(declare-datatypes () ((List!385 (Cons!377 (h!324 Int) (t!4971 List!385)) (Nil!378))))

(declare-fun l!956 () List!385)

(declare-fun n!435 () Int)

(declare-fun size!360 (List!385) Int)

(assert (=> start!4462 (= res!16084 (<= (size!360 l!956) n!435))))

(assert (=> start!4462 e!17605))

(assert (=> start!4462 true))

(assert (=> start!4462 tp!7261))

(assert (=> start!4462 tp!7262))

(declare-fun b!34863 () Bool)

(declare-fun res!16085 () Bool)

(assert (=> b!34863 (=> (not res!16085) (not e!17605))))

(declare-fun p!507 () Int)

(declare-fun p!508 () Int)

(declare-fun n!436 () Int)

(declare-fun l!957 () List!385)

(assert (=> b!34863 (= res!16085 (and (not (is-Nil!378 l!956)) (= p!508 p!507) (= l!957 (t!4971 l!956)) (= n!436 n!435)))))

(declare-fun b!34864 () Bool)

(assert (=> b!34864 (= e!17605 (> (size!360 l!957) n!436))))

(assert (= (and start!4462 res!16084) b!34863))

(assert (= (and b!34863 res!16085) b!34864))

(declare-fun m!37417 () Bool)

(assert (=> start!4462 m!37417))

(declare-fun m!37419 () Bool)

(assert (=> b!34864 m!37419))

(push 1)

(assert b_and!7885)

(assert (not start!4462))

(assert (not b_next!5271))

(assert (not b!34864))

(assert (not b_next!5269))

(assert b_and!7887)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7885)

(assert b_and!7887)

(assert (not b_next!5271))

(assert (not b_next!5269))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18288 () Bool)

(declare-fun lt!6505 () Int)

(assert (=> d!18288 (>= lt!6505 0)))

(declare-fun e!17608 () Int)

(assert (=> d!18288 (= lt!6505 e!17608)))

(declare-fun c!7406 () Bool)

(assert (=> d!18288 (= c!7406 (is-Nil!378 l!957))))

(assert (=> d!18288 (= (size!360 l!957) lt!6505)))

(declare-fun b!34869 () Bool)

(assert (=> b!34869 (= e!17608 0)))

(declare-fun b!34870 () Bool)

(assert (=> b!34870 (= e!17608 (+ 1 (size!360 (t!4971 l!957))))))

(assert (= (and d!18288 c!7406) b!34869))

(assert (= (and d!18288 (not c!7406)) b!34870))

(declare-fun m!37421 () Bool)

(assert (=> b!34870 m!37421))

(assert (=> b!34864 d!18288))

(declare-fun d!18290 () Bool)

(declare-fun lt!6506 () Int)

(assert (=> d!18290 (>= lt!6506 0)))

(declare-fun e!17609 () Int)

(assert (=> d!18290 (= lt!6506 e!17609)))

(declare-fun c!7407 () Bool)

(assert (=> d!18290 (= c!7407 (is-Nil!378 l!956))))

(assert (=> d!18290 (= (size!360 l!956) lt!6506)))

(declare-fun b!34871 () Bool)

(assert (=> b!34871 (= e!17609 0)))

(declare-fun b!34872 () Bool)

(assert (=> b!34872 (= e!17609 (+ 1 (size!360 (t!4971 l!956))))))

(assert (= (and d!18290 c!7407) b!34871))

(assert (= (and d!18290 (not c!7407)) b!34872))

(declare-fun m!37423 () Bool)

(assert (=> b!34872 m!37423))

(assert (=> start!4462 d!18290))

(push 1)

(assert b_and!7885)

(assert (not b_next!5271))

(assert (not b_next!5269))

(assert (not b!34872))

(assert (not b!34870))

(assert b_and!7887)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7885)

(assert b_and!7887)

(assert (not b_next!5271))

(assert (not b_next!5269))

(check-sat)

(pop 1)


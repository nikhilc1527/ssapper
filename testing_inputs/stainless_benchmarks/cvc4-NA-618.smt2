; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4494 () Bool)

(assert start!4494)

(declare-fun b_free!2169 () Bool)

(declare-fun b_next!5279 () Bool)

(assert (=> start!4494 (= b_free!2169 (not b_next!5279))))

(declare-fun tp!7274 () Bool)

(declare-fun b_and!7903 () Bool)

(assert (=> start!4494 (= tp!7274 b_and!7903)))

(declare-fun res!16141 () Bool)

(declare-fun e!17667 () Bool)

(assert (=> start!4494 (=> (not res!16141) (not e!17667))))

(declare-datatypes () ((List!389 (Cons!381 (h!329 Int) (t!4987 List!389)) (Nil!382))))

(declare-fun l!950 () List!389)

(declare-fun n!429 () Int)

(declare-fun size!364 (List!389) Int)

(assert (=> start!4494 (= res!16141 (<= (size!364 l!950) n!429))))

(assert (=> start!4494 e!17667))

(assert (=> start!4494 true))

(assert (=> start!4494 tp!7274))

(declare-fun b!34969 () Bool)

(declare-fun res!16140 () Bool)

(assert (=> b!34969 (=> (not res!16140) (not e!17667))))

(declare-fun isEmpty!384 (List!389) Bool)

(assert (=> b!34969 (= res!16140 (not (isEmpty!384 l!950)))))

(declare-fun b!34970 () Bool)

(declare-fun res!16142 () Bool)

(assert (=> b!34970 (=> (not res!16142) (not e!17667))))

(declare-fun p!499 () Int)

(declare-fun dynLambda!637 (Int Int) Bool)

(declare-fun head!542 (List!389) Int)

(assert (=> b!34970 (= res!16142 (dynLambda!637 p!499 (head!542 l!950)))))

(declare-fun b!34971 () Bool)

(declare-fun thiss!4026 () List!389)

(assert (=> b!34971 (= e!17667 (and (= thiss!4026 l!950) (= thiss!4026 Nil!382)))))

(assert (= (and start!4494 res!16141) b!34969))

(assert (= (and b!34969 res!16140) b!34970))

(assert (= (and b!34970 res!16142) b!34971))

(declare-fun b_lambda!9527 () Bool)

(assert (=> (not b_lambda!9527) (not b!34970)))

(declare-fun t!4986 () Bool)

(declare-fun tb!4283 () Bool)

(assert (=> (and start!4494 (= p!499 p!499) t!4986) tb!4283))

(declare-fun result!4539 () Bool)

(assert (=> tb!4283 (= result!4539 true)))

(assert (=> b!34970 t!4986))

(declare-fun b_and!7905 () Bool)

(assert (= b_and!7903 (and (=> t!4986 result!4539) b_and!7905)))

(declare-fun m!37511 () Bool)

(assert (=> start!4494 m!37511))

(declare-fun m!37513 () Bool)

(assert (=> b!34969 m!37513))

(declare-fun m!37515 () Bool)

(assert (=> b!34970 m!37515))

(assert (=> b!34970 m!37515))

(declare-fun m!37517 () Bool)

(assert (=> b!34970 m!37517))

(push 1)

(assert b_and!7905)

(assert (not b!34969))

(assert (not b!34970))

(assert (not start!4494))

(assert (not b_lambda!9527))

(assert (not b_next!5279))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7905)

(assert (not b_next!5279))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9529 () Bool)

(assert (= b_lambda!9527 (or (and start!4494 b_free!2169) b_lambda!9529)))

(push 1)

(assert b_and!7905)

(assert (not b!34969))

(assert (not b!34970))

(assert (not start!4494))

(assert (not b_next!5279))

(assert (not b_lambda!9529))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7905)

(assert (not b_next!5279))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18324 () Bool)

(declare-fun lt!6522 () Int)

(assert (=> d!18324 (>= lt!6522 0)))

(declare-fun e!17670 () Int)

(assert (=> d!18324 (= lt!6522 e!17670)))

(declare-fun c!7433 () Bool)

(assert (=> d!18324 (= c!7433 (is-Nil!382 l!950))))

(assert (=> d!18324 (= (size!364 l!950) lt!6522)))

(declare-fun b!34976 () Bool)

(assert (=> b!34976 (= e!17670 0)))

(declare-fun b!34977 () Bool)

(assert (=> b!34977 (= e!17670 (+ 1 (size!364 (t!4987 l!950))))))

(assert (= (and d!18324 c!7433) b!34976))

(assert (= (and d!18324 (not c!7433)) b!34977))

(declare-fun m!37519 () Bool)

(assert (=> b!34977 m!37519))

(assert (=> start!4494 d!18324))

(declare-fun d!18326 () Bool)

(assert (=> d!18326 (= (head!542 l!950) (h!329 l!950))))

(assert (=> b!34970 d!18326))

(declare-fun d!18328 () Bool)

(assert (=> d!18328 (= (isEmpty!384 l!950) (is-Nil!382 l!950))))

(assert (=> b!34969 d!18328))

(push 1)

(assert (not b!34977))

(assert (not b_lambda!9529))

(assert b_and!7905)

(assert (not b_next!5279))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7905)

(assert (not b_next!5279))

(check-sat)

(pop 1)


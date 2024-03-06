; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4488 () Bool)

(assert start!4488)

(declare-fun res!16132 () Bool)

(declare-fun e!17661 () Bool)

(assert (=> start!4488 (=> (not res!16132) (not e!17661))))

(declare-datatypes () ((List!388 (Cons!380 (h!328 Int) (t!4984 List!388)) (Nil!381))))

(declare-fun l!950 () List!388)

(declare-fun n!429 () Int)

(declare-fun size!363 (List!388) Int)

(assert (=> start!4488 (= res!16132 (<= (size!363 l!950) n!429))))

(assert (=> start!4488 e!17661))

(assert (=> start!4488 true))

(declare-fun b!34955 () Bool)

(declare-fun res!16133 () Bool)

(assert (=> b!34955 (=> (not res!16133) (not e!17661))))

(declare-fun isEmpty!383 (List!388) Bool)

(assert (=> b!34955 (= res!16133 (not (isEmpty!383 l!950)))))

(declare-fun b!34956 () Bool)

(declare-fun thiss!4024 () List!388)

(assert (=> b!34956 (= e!17661 (and (= thiss!4024 l!950) (= thiss!4024 Nil!381)))))

(assert (= (and start!4488 res!16132) b!34955))

(assert (= (and b!34955 res!16133) b!34956))

(declare-fun m!37505 () Bool)

(assert (=> start!4488 m!37505))

(declare-fun m!37507 () Bool)

(assert (=> b!34955 m!37507))

(push 1)

(assert (not b!34955))

(assert (not start!4488))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18320 () Bool)

(assert (=> d!18320 (= (isEmpty!383 l!950) (is-Nil!381 l!950))))

(assert (=> b!34955 d!18320))

(declare-fun d!18322 () Bool)

(declare-fun lt!6519 () Int)

(assert (=> d!18322 (>= lt!6519 0)))

(declare-fun e!17664 () Int)

(assert (=> d!18322 (= lt!6519 e!17664)))

(declare-fun c!7430 () Bool)

(assert (=> d!18322 (= c!7430 (is-Nil!381 l!950))))

(assert (=> d!18322 (= (size!363 l!950) lt!6519)))

(declare-fun b!34961 () Bool)

(assert (=> b!34961 (= e!17664 0)))

(declare-fun b!34962 () Bool)

(assert (=> b!34962 (= e!17664 (+ 1 (size!363 (t!4984 l!950))))))

(assert (= (and d!18322 c!7430) b!34961))

(assert (= (and d!18322 (not c!7430)) b!34962))

(declare-fun m!37509 () Bool)

(assert (=> b!34962 m!37509))

(assert (=> start!4488 d!18322))

(push 1)

(assert (not b!34962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


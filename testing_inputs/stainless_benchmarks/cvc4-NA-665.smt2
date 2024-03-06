; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4756 () Bool)

(assert start!4756)

(declare-fun res!17602 () Bool)

(declare-fun e!19227 () Bool)

(assert (=> start!4756 (=> (not res!17602) (not e!19227))))

(declare-datatypes () ((T!2779 (T!2780 (val!137 Int)))))

(declare-datatypes () ((List!413 (Cons!401 (head!622 T!2779) (tail!646 List!413)) (Nil!402))))

(declare-fun l!984 () List!413)

(assert (=> start!4756 (= res!17602 (not (is-Nil!402 l!984)))))

(assert (=> start!4756 e!19227))

(declare-fun e!19226 () Bool)

(assert (=> start!4756 e!19226))

(assert (=> start!4756 true))

(declare-fun b!37338 () Bool)

(declare-fun res!17603 () Bool)

(assert (=> b!37338 (=> (not res!17603) (not e!19227))))

(declare-fun res!17571 () Int)

(declare-fun size!397 (List!413) Int)

(assert (=> b!37338 (= res!17603 (= res!17571 (+ (size!397 (tail!646 l!984)) 1)))))

(declare-fun b!37339 () Bool)

(assert (=> b!37339 (= e!19227 (< res!17571 0))))

(declare-fun b!37340 () Bool)

(declare-fun tp_is_empty!273 () Bool)

(declare-fun tp!7384 () Bool)

(assert (=> b!37340 (= e!19226 (and tp_is_empty!273 tp!7384))))

(assert (= (and start!4756 res!17602) b!37338))

(assert (= (and b!37338 res!17603) b!37339))

(assert (= (and start!4756 (is-Cons!401 l!984)) b!37340))

(declare-fun m!38687 () Bool)

(assert (=> b!37338 m!38687))

(push 1)

(assert (not b!37338))

(assert (not b!37340))

(assert tp_is_empty!273)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18828 () Bool)

(declare-fun lt!7468 () Int)

(assert (=> d!18828 (>= lt!7468 0)))

(declare-fun e!19230 () Int)

(assert (=> d!18828 (= lt!7468 e!19230)))

(declare-fun c!8180 () Bool)

(assert (=> d!18828 (= c!8180 (is-Nil!402 (tail!646 l!984)))))

(assert (=> d!18828 (= (size!397 (tail!646 l!984)) lt!7468)))

(declare-fun b!37345 () Bool)

(assert (=> b!37345 (= e!19230 0)))

(declare-fun b!37346 () Bool)

(assert (=> b!37346 (= e!19230 (+ (size!397 (tail!646 (tail!646 l!984))) 1))))

(assert (= (and d!18828 c!8180) b!37345))

(assert (= (and d!18828 (not c!8180)) b!37346))

(declare-fun m!38689 () Bool)

(assert (=> b!37346 m!38689))

(assert (=> b!37338 d!18828))

(declare-fun b!37351 () Bool)

(declare-fun e!19233 () Bool)

(declare-fun tp!7387 () Bool)

(assert (=> b!37351 (= e!19233 (and tp_is_empty!273 tp!7387))))

(assert (=> b!37340 (= tp!7384 e!19233)))

(assert (= (and b!37340 (is-Cons!401 (tail!646 l!984))) b!37351))

(push 1)

(assert (not b!37346))

(assert (not b!37351))

(assert tp_is_empty!273)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4738 () Bool)

(assert start!4738)

(declare-fun res!17566 () Bool)

(declare-fun e!19174 () Bool)

(assert (=> start!4738 (=> (not res!17566) (not e!19174))))

(declare-datatypes () ((T!2745 (T!2746 (val!135 Int)))))

(declare-datatypes () ((List!409 (Cons!398 (head!616 T!2745) (tail!640 List!409)) (Nil!399))))

(declare-fun l!978 () List!409)

(assert (=> start!4738 (= res!17566 (not (is-Nil!399 l!978)))))

(assert (=> start!4738 e!19174))

(declare-fun e!19173 () Bool)

(assert (=> start!4738 e!19173))

(assert (=> start!4738 true))

(declare-fun b!37259 () Bool)

(declare-fun res!17567 () Bool)

(assert (=> b!37259 (=> (not res!17567) (not e!19174))))

(declare-fun x$1!577 () Int)

(declare-fun size!392 (List!409) Int)

(assert (=> b!37259 (= res!17567 (= x$1!577 (+ 1 (size!392 (tail!640 l!978)))))))

(declare-fun b!37260 () Bool)

(assert (=> b!37260 (= e!19174 (< x$1!577 0))))

(declare-fun b!37261 () Bool)

(declare-fun tp_is_empty!269 () Bool)

(declare-fun tp!7368 () Bool)

(assert (=> b!37261 (= e!19173 (and tp_is_empty!269 tp!7368))))

(assert (= (and start!4738 res!17566) b!37259))

(assert (= (and b!37259 res!17567) b!37260))

(assert (= (and start!4738 (is-Cons!398 l!978)) b!37261))

(declare-fun m!38633 () Bool)

(assert (=> b!37259 m!38633))

(push 1)

(assert (not b!37259))

(assert (not b!37261))

(assert tp_is_empty!269)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18806 () Bool)

(declare-fun lt!7454 () Int)

(assert (=> d!18806 (>= lt!7454 0)))

(declare-fun e!19177 () Int)

(assert (=> d!18806 (= lt!7454 e!19177)))

(declare-fun c!8161 () Bool)

(assert (=> d!18806 (= c!8161 (is-Nil!399 (tail!640 l!978)))))

(assert (=> d!18806 (= (size!392 (tail!640 l!978)) lt!7454)))

(declare-fun b!37266 () Bool)

(assert (=> b!37266 (= e!19177 0)))

(declare-fun b!37267 () Bool)

(assert (=> b!37267 (= e!19177 (+ 1 (size!392 (tail!640 (tail!640 l!978)))))))

(assert (= (and d!18806 c!8161) b!37266))

(assert (= (and d!18806 (not c!8161)) b!37267))

(declare-fun m!38635 () Bool)

(assert (=> b!37267 m!38635))

(assert (=> b!37259 d!18806))

(declare-fun b!37272 () Bool)

(declare-fun e!19180 () Bool)

(declare-fun tp!7371 () Bool)

(assert (=> b!37272 (= e!19180 (and tp_is_empty!269 tp!7371))))

(assert (=> b!37261 (= tp!7368 e!19180)))

(assert (= (and b!37261 (is-Cons!398 (tail!640 l!978))) b!37272))

(push 1)

(assert (not b!37267))

(assert (not b!37272))

(assert tp_is_empty!269)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


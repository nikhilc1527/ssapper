; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4730 () Bool)

(assert start!4730)

(declare-fun b!37226 () Bool)

(declare-fun e!19152 () Bool)

(declare-fun tp_is_empty!265 () Bool)

(declare-fun tp!7357 () Bool)

(assert (=> b!37226 (= e!19152 (and tp_is_empty!265 tp!7357))))

(declare-fun res!17561 () Bool)

(declare-fun e!19150 () Bool)

(assert (=> start!4730 (=> (not res!17561) (not e!19150))))

(declare-datatypes () ((T!2741 (T!2742 (val!133 Int)))))

(declare-datatypes () ((List!407 (Cons!396 (head!614 T!2741) (tail!638 List!407)) (Nil!397))))

(declare-fun res!17555 () List!407)

(declare-fun l!966 () List!407)

(declare-fun a!496 () T!2741)

(assert (=> start!4730 (= res!17561 (= res!17555 (Cons!396 a!496 l!966)))))

(assert (=> start!4730 e!19150))

(assert (=> start!4730 e!19152))

(assert (=> start!4730 tp_is_empty!265))

(declare-fun e!19153 () Bool)

(assert (=> start!4730 e!19153))

(declare-fun b!37225 () Bool)

(declare-fun e!19151 () Bool)

(declare-fun content!87 (List!407) (Set T!2741))

(assert (=> b!37225 (= e!19151 (= (content!87 res!17555) (union (content!87 l!966) (insert a!496 (as emptyset (Set T!2741))))))))

(declare-fun b!37224 () Bool)

(assert (=> b!37224 (= e!19150 (not e!19151))))

(declare-fun res!17560 () Bool)

(assert (=> b!37224 (=> (not res!17560) (not e!19151))))

(declare-fun size!391 (List!407) Int)

(assert (=> b!37224 (= res!17560 (= (size!391 res!17555) (+ (size!391 l!966) 1)))))

(assert (=> b!37224 (is-Cons!396 res!17555)))

(declare-fun b!37227 () Bool)

(declare-fun tp!7358 () Bool)

(assert (=> b!37227 (= e!19153 (and tp_is_empty!265 tp!7358))))

(assert (= (and start!4730 res!17561) b!37224))

(assert (= (and b!37224 res!17560) b!37225))

(assert (= (and start!4730 (is-Cons!396 res!17555)) b!37226))

(assert (= (and start!4730 (is-Cons!396 l!966)) b!37227))

(declare-fun m!38611 () Bool)

(assert (=> b!37225 m!38611))

(declare-fun m!38613 () Bool)

(assert (=> b!37225 m!38613))

(declare-fun m!38615 () Bool)

(assert (=> b!37225 m!38615))

(declare-fun m!38617 () Bool)

(assert (=> b!37224 m!38617))

(declare-fun m!38619 () Bool)

(assert (=> b!37224 m!38619))

(push 1)

(assert (not b!37227))

(assert (not b!37225))

(assert tp_is_empty!265)

(assert (not b!37224))

(assert (not b!37226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18798 () Bool)

(declare-fun lt!7450 () Int)

(assert (=> d!18798 (>= lt!7450 0)))

(declare-fun e!19156 () Int)

(assert (=> d!18798 (= lt!7450 e!19156)))

(declare-fun c!8153 () Bool)

(assert (=> d!18798 (= c!8153 (is-Nil!397 res!17555))))

(assert (=> d!18798 (= (size!391 res!17555) lt!7450)))

(declare-fun b!37232 () Bool)

(assert (=> b!37232 (= e!19156 0)))

(declare-fun b!37233 () Bool)

(assert (=> b!37233 (= e!19156 (+ 1 (size!391 (tail!638 res!17555))))))

(assert (= (and d!18798 c!8153) b!37232))

(assert (= (and d!18798 (not c!8153)) b!37233))

(declare-fun m!38621 () Bool)

(assert (=> b!37233 m!38621))

(assert (=> b!37224 d!18798))

(declare-fun d!18800 () Bool)

(declare-fun lt!7451 () Int)

(assert (=> d!18800 (>= lt!7451 0)))

(declare-fun e!19157 () Int)

(assert (=> d!18800 (= lt!7451 e!19157)))

(declare-fun c!8154 () Bool)

(assert (=> d!18800 (= c!8154 (is-Nil!397 l!966))))

(assert (=> d!18800 (= (size!391 l!966) lt!7451)))

(declare-fun b!37234 () Bool)

(assert (=> b!37234 (= e!19157 0)))

(declare-fun b!37235 () Bool)

(assert (=> b!37235 (= e!19157 (+ 1 (size!391 (tail!638 l!966))))))

(assert (= (and d!18800 c!8154) b!37234))

(assert (= (and d!18800 (not c!8154)) b!37235))

(declare-fun m!38623 () Bool)

(assert (=> b!37235 m!38623))

(assert (=> b!37224 d!18800))

(declare-fun d!18802 () Bool)

(declare-fun c!8157 () Bool)

(assert (=> d!18802 (= c!8157 (is-Nil!397 res!17555))))

(declare-fun e!19160 () (Set T!2741))

(assert (=> d!18802 (= (content!87 res!17555) e!19160)))

(declare-fun b!37240 () Bool)

(assert (=> b!37240 (= e!19160 (as emptyset (Set T!2741)))))

(declare-fun b!37241 () Bool)

(assert (=> b!37241 (= e!19160 (union (insert (head!614 res!17555) (as emptyset (Set T!2741))) (content!87 (tail!638 res!17555))))))

(assert (= (and d!18802 c!8157) b!37240))

(assert (= (and d!18802 (not c!8157)) b!37241))

(declare-fun m!38625 () Bool)

(assert (=> b!37241 m!38625))

(declare-fun m!38627 () Bool)

(assert (=> b!37241 m!38627))

(assert (=> b!37225 d!18802))

(declare-fun d!18804 () Bool)

(declare-fun c!8158 () Bool)

(assert (=> d!18804 (= c!8158 (is-Nil!397 l!966))))

(declare-fun e!19161 () (Set T!2741))

(assert (=> d!18804 (= (content!87 l!966) e!19161)))

(declare-fun b!37242 () Bool)

(assert (=> b!37242 (= e!19161 (as emptyset (Set T!2741)))))

(declare-fun b!37243 () Bool)

(assert (=> b!37243 (= e!19161 (union (insert (head!614 l!966) (as emptyset (Set T!2741))) (content!87 (tail!638 l!966))))))

(assert (= (and d!18804 c!8158) b!37242))

(assert (= (and d!18804 (not c!8158)) b!37243))

(declare-fun m!38629 () Bool)

(assert (=> b!37243 m!38629))

(declare-fun m!38631 () Bool)

(assert (=> b!37243 m!38631))

(assert (=> b!37225 d!18804))

(declare-fun b!37248 () Bool)

(declare-fun e!19164 () Bool)

(declare-fun tp!7361 () Bool)

(assert (=> b!37248 (= e!19164 (and tp_is_empty!265 tp!7361))))

(assert (=> b!37227 (= tp!7358 e!19164)))

(assert (= (and b!37227 (is-Cons!396 (tail!638 l!966))) b!37248))

(declare-fun b!37249 () Bool)

(declare-fun e!19165 () Bool)

(declare-fun tp!7362 () Bool)

(assert (=> b!37249 (= e!19165 (and tp_is_empty!265 tp!7362))))

(assert (=> b!37226 (= tp!7357 e!19165)))

(assert (= (and b!37226 (is-Cons!396 (tail!638 res!17555))) b!37249))

(push 1)

(assert (not b!37243))

(assert (not b!37233))

(assert (not b!37241))

(assert tp_is_empty!265)

(assert (not b!37235))

(assert (not b!37249))

(assert (not b!37248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


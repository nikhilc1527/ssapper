; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4750 () Bool)

(assert start!4750)

(declare-fun b!37306 () Bool)

(declare-fun e!19209 () Bool)

(declare-fun e!19206 () Bool)

(assert (=> b!37306 (= e!19209 (not e!19206))))

(declare-fun res!17596 () Bool)

(assert (=> b!37306 (=> (not res!17596) (not e!19206))))

(declare-datatypes () ((T!2777 (T!2778 (val!136 Int)))))

(declare-datatypes () ((List!412 (Cons!400 (head!621 T!2777) (tail!645 List!412)) (Nil!401))))

(declare-fun res!17577 () List!412)

(declare-fun l!1001 () List!412)

(declare-fun size!396 (List!412) Int)

(assert (=> b!37306 (= res!17596 (= (size!396 res!17577) (+ (size!396 l!1001) 1)))))

(assert (=> b!37306 (is-Cons!400 res!17577)))

(declare-fun b!37308 () Bool)

(declare-fun e!19208 () Bool)

(declare-fun tp_is_empty!271 () Bool)

(declare-fun tp!7376 () Bool)

(assert (=> b!37308 (= e!19208 (and tp_is_empty!271 tp!7376))))

(declare-fun a!500 () T!2777)

(declare-fun b!37307 () Bool)

(declare-fun content!89 (List!412) (Set T!2777))

(assert (=> b!37307 (= e!19206 (= (content!89 res!17577) (union (content!89 l!1001) (insert a!500 (as emptyset (Set T!2777))))))))

(declare-fun b!37309 () Bool)

(declare-fun e!19207 () Bool)

(declare-fun tp!7377 () Bool)

(assert (=> b!37309 (= e!19207 (and tp_is_empty!271 tp!7377))))

(declare-fun res!17595 () Bool)

(assert (=> start!4750 (=> (not res!17595) (not e!19209))))

(assert (=> start!4750 (= res!17595 (= res!17577 (Cons!400 a!500 l!1001)))))

(assert (=> start!4750 e!19209))

(assert (=> start!4750 e!19208))

(assert (=> start!4750 tp_is_empty!271))

(assert (=> start!4750 e!19207))

(assert (= (and start!4750 res!17595) b!37306))

(assert (= (and b!37306 res!17596) b!37307))

(assert (= (and start!4750 (is-Cons!400 res!17577)) b!37308))

(assert (= (and start!4750 (is-Cons!400 l!1001)) b!37309))

(declare-fun m!38665 () Bool)

(assert (=> b!37306 m!38665))

(declare-fun m!38667 () Bool)

(assert (=> b!37306 m!38667))

(declare-fun m!38669 () Bool)

(assert (=> b!37307 m!38669))

(declare-fun m!38671 () Bool)

(assert (=> b!37307 m!38671))

(declare-fun m!38673 () Bool)

(assert (=> b!37307 m!38673))

(push 1)

(assert (not b!37309))

(assert (not b!37306))

(assert (not b!37307))

(assert (not b!37308))

(assert tp_is_empty!271)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18820 () Bool)

(declare-fun lt!7464 () Int)

(assert (=> d!18820 (>= lt!7464 0)))

(declare-fun e!19212 () Int)

(assert (=> d!18820 (= lt!7464 e!19212)))

(declare-fun c!8172 () Bool)

(assert (=> d!18820 (= c!8172 (is-Nil!401 res!17577))))

(assert (=> d!18820 (= (size!396 res!17577) lt!7464)))

(declare-fun b!37314 () Bool)

(assert (=> b!37314 (= e!19212 0)))

(declare-fun b!37315 () Bool)

(assert (=> b!37315 (= e!19212 (+ (size!396 (tail!645 res!17577)) 1))))

(assert (= (and d!18820 c!8172) b!37314))

(assert (= (and d!18820 (not c!8172)) b!37315))

(declare-fun m!38675 () Bool)

(assert (=> b!37315 m!38675))

(assert (=> b!37306 d!18820))

(declare-fun d!18822 () Bool)

(declare-fun lt!7465 () Int)

(assert (=> d!18822 (>= lt!7465 0)))

(declare-fun e!19213 () Int)

(assert (=> d!18822 (= lt!7465 e!19213)))

(declare-fun c!8173 () Bool)

(assert (=> d!18822 (= c!8173 (is-Nil!401 l!1001))))

(assert (=> d!18822 (= (size!396 l!1001) lt!7465)))

(declare-fun b!37316 () Bool)

(assert (=> b!37316 (= e!19213 0)))

(declare-fun b!37317 () Bool)

(assert (=> b!37317 (= e!19213 (+ (size!396 (tail!645 l!1001)) 1))))

(assert (= (and d!18822 c!8173) b!37316))

(assert (= (and d!18822 (not c!8173)) b!37317))

(declare-fun m!38677 () Bool)

(assert (=> b!37317 m!38677))

(assert (=> b!37306 d!18822))

(declare-fun d!18824 () Bool)

(declare-fun c!8176 () Bool)

(assert (=> d!18824 (= c!8176 (is-Nil!401 res!17577))))

(declare-fun e!19216 () (Set T!2777))

(assert (=> d!18824 (= (content!89 res!17577) e!19216)))

(declare-fun b!37322 () Bool)

(assert (=> b!37322 (= e!19216 (as emptyset (Set T!2777)))))

(declare-fun b!37323 () Bool)

(assert (=> b!37323 (= e!19216 (union (insert (head!621 res!17577) (as emptyset (Set T!2777))) (content!89 (tail!645 res!17577))))))

(assert (= (and d!18824 c!8176) b!37322))

(assert (= (and d!18824 (not c!8176)) b!37323))

(declare-fun m!38679 () Bool)

(assert (=> b!37323 m!38679))

(declare-fun m!38681 () Bool)

(assert (=> b!37323 m!38681))

(assert (=> b!37307 d!18824))

(declare-fun d!18826 () Bool)

(declare-fun c!8177 () Bool)

(assert (=> d!18826 (= c!8177 (is-Nil!401 l!1001))))

(declare-fun e!19217 () (Set T!2777))

(assert (=> d!18826 (= (content!89 l!1001) e!19217)))

(declare-fun b!37324 () Bool)

(assert (=> b!37324 (= e!19217 (as emptyset (Set T!2777)))))

(declare-fun b!37325 () Bool)

(assert (=> b!37325 (= e!19217 (union (insert (head!621 l!1001) (as emptyset (Set T!2777))) (content!89 (tail!645 l!1001))))))

(assert (= (and d!18826 c!8177) b!37324))

(assert (= (and d!18826 (not c!8177)) b!37325))

(declare-fun m!38683 () Bool)

(assert (=> b!37325 m!38683))

(declare-fun m!38685 () Bool)

(assert (=> b!37325 m!38685))

(assert (=> b!37307 d!18826))

(declare-fun b!37330 () Bool)

(declare-fun e!19220 () Bool)

(declare-fun tp!7380 () Bool)

(assert (=> b!37330 (= e!19220 (and tp_is_empty!271 tp!7380))))

(assert (=> b!37309 (= tp!7377 e!19220)))

(assert (= (and b!37309 (is-Cons!400 (tail!645 l!1001))) b!37330))

(declare-fun b!37331 () Bool)

(declare-fun e!19221 () Bool)

(declare-fun tp!7381 () Bool)

(assert (=> b!37331 (= e!19221 (and tp_is_empty!271 tp!7381))))

(assert (=> b!37308 (= tp!7376 e!19221)))

(assert (= (and b!37308 (is-Cons!400 (tail!645 res!17577))) b!37331))

(push 1)

(assert (not b!37317))

(assert (not b!37323))

(assert (not b!37331))

(assert (not b!37325))

(assert (not b!37315))

(assert tp_is_empty!271)

(assert (not b!37330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4742 () Bool)

(assert start!4742)

(declare-fun res!17584 () Bool)

(declare-fun e!19185 () Bool)

(assert (=> start!4742 (=> (not res!17584) (not e!19185))))

(declare-datatypes () ((List!411 (Cons!399 (head!620 Int) (tail!644 List!411)) (Nil!400))))

(declare-fun l!990 () List!411)

(declare-fun a!497 () Int)

(declare-fun res!17573 () List!411)

(declare-fun insert!26 (Int List!411) List!411)

(assert (=> start!4742 (= res!17584 (= res!17573 (insert!26 a!497 l!990)))))

(assert (=> start!4742 e!19185))

(assert (=> start!4742 true))

(declare-fun b!37277 () Bool)

(declare-fun e!19186 () Bool)

(assert (=> b!37277 (= e!19185 e!19186)))

(declare-fun res!17585 () Bool)

(assert (=> b!37277 (=> res!17585 e!19186)))

(declare-fun size!395 (List!411) Int)

(assert (=> b!37277 (= res!17585 (not (= (size!395 res!17573) (+ (size!395 l!990) 1))))))

(declare-fun b!37278 () Bool)

(declare-fun content!88 (List!411) (Set Int))

(assert (=> b!37278 (= e!19186 (not (= (content!88 res!17573) (union (content!88 l!990) (insert a!497 (as emptyset (Set Int)))))))))

(assert (= (and start!4742 res!17584) b!37277))

(assert (= (and b!37277 (not res!17585)) b!37278))

(declare-fun m!38637 () Bool)

(assert (=> start!4742 m!38637))

(declare-fun m!38639 () Bool)

(assert (=> b!37277 m!38639))

(declare-fun m!38641 () Bool)

(assert (=> b!37277 m!38641))

(declare-fun m!38643 () Bool)

(assert (=> b!37278 m!38643))

(declare-fun m!38645 () Bool)

(assert (=> b!37278 m!38645))

(declare-fun m!38647 () Bool)

(assert (=> b!37278 m!38647))

(push 1)

(assert (not start!4742))

(assert (not b!37277))

(assert (not b!37278))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18810 () Bool)

(declare-fun e!19189 () Bool)

(assert (=> d!18810 e!19189))

(declare-fun res!17589 () Bool)

(assert (=> d!18810 (=> (not res!17589) (not e!19189))))

(declare-fun lt!7457 () List!411)

(assert (=> d!18810 (= res!17589 (= (size!395 lt!7457) (+ (size!395 l!990) 1)))))

(assert (=> d!18810 (= lt!7457 (Cons!399 a!497 l!990))))

(assert (=> d!18810 (= (insert!26 a!497 l!990) lt!7457)))

(declare-fun b!37281 () Bool)

(assert (=> b!37281 (= e!19189 (= (content!88 lt!7457) (union (content!88 l!990) (insert a!497 (as emptyset (Set Int))))))))

(assert (= (and d!18810 res!17589) b!37281))

(declare-fun m!38649 () Bool)

(assert (=> d!18810 m!38649))

(assert (=> d!18810 m!38641))

(declare-fun m!38651 () Bool)

(assert (=> b!37281 m!38651))

(assert (=> b!37281 m!38645))

(assert (=> b!37281 m!38647))

(assert (=> start!4742 d!18810))

(declare-fun d!18812 () Bool)

(declare-fun lt!7460 () Int)

(assert (=> d!18812 (>= lt!7460 0)))

(declare-fun e!19192 () Int)

(assert (=> d!18812 (= lt!7460 e!19192)))

(declare-fun c!8164 () Bool)

(assert (=> d!18812 (= c!8164 (is-Nil!400 res!17573))))

(assert (=> d!18812 (= (size!395 res!17573) lt!7460)))

(declare-fun b!37286 () Bool)

(assert (=> b!37286 (= e!19192 0)))

(declare-fun b!37287 () Bool)

(assert (=> b!37287 (= e!19192 (+ (size!395 (tail!644 res!17573)) 1))))

(assert (= (and d!18812 c!8164) b!37286))

(assert (= (and d!18812 (not c!8164)) b!37287))

(declare-fun m!38653 () Bool)

(assert (=> b!37287 m!38653))

(assert (=> b!37277 d!18812))

(declare-fun d!18814 () Bool)

(declare-fun lt!7461 () Int)

(assert (=> d!18814 (>= lt!7461 0)))

(declare-fun e!19193 () Int)

(assert (=> d!18814 (= lt!7461 e!19193)))

(declare-fun c!8165 () Bool)

(assert (=> d!18814 (= c!8165 (is-Nil!400 l!990))))

(assert (=> d!18814 (= (size!395 l!990) lt!7461)))

(declare-fun b!37288 () Bool)

(assert (=> b!37288 (= e!19193 0)))

(declare-fun b!37289 () Bool)

(assert (=> b!37289 (= e!19193 (+ (size!395 (tail!644 l!990)) 1))))

(assert (= (and d!18814 c!8165) b!37288))

(assert (= (and d!18814 (not c!8165)) b!37289))

(declare-fun m!38655 () Bool)

(assert (=> b!37289 m!38655))

(assert (=> b!37277 d!18814))

(declare-fun d!18816 () Bool)

(declare-fun c!8168 () Bool)

(assert (=> d!18816 (= c!8168 (is-Nil!400 res!17573))))

(declare-fun e!19196 () (Set Int))

(assert (=> d!18816 (= (content!88 res!17573) e!19196)))

(declare-fun b!37294 () Bool)

(assert (=> b!37294 (= e!19196 (as emptyset (Set Int)))))

(declare-fun b!37295 () Bool)

(assert (=> b!37295 (= e!19196 (union (insert (head!620 res!17573) (as emptyset (Set Int))) (content!88 (tail!644 res!17573))))))

(assert (= (and d!18816 c!8168) b!37294))

(assert (= (and d!18816 (not c!8168)) b!37295))

(declare-fun m!38657 () Bool)

(assert (=> b!37295 m!38657))

(declare-fun m!38659 () Bool)

(assert (=> b!37295 m!38659))

(assert (=> b!37278 d!18816))

(declare-fun d!18818 () Bool)

(declare-fun c!8169 () Bool)

(assert (=> d!18818 (= c!8169 (is-Nil!400 l!990))))

(declare-fun e!19197 () (Set Int))

(assert (=> d!18818 (= (content!88 l!990) e!19197)))

(declare-fun b!37296 () Bool)

(assert (=> b!37296 (= e!19197 (as emptyset (Set Int)))))

(declare-fun b!37297 () Bool)

(assert (=> b!37297 (= e!19197 (union (insert (head!620 l!990) (as emptyset (Set Int))) (content!88 (tail!644 l!990))))))

(assert (= (and d!18818 c!8169) b!37296))

(assert (= (and d!18818 (not c!8169)) b!37297))

(declare-fun m!38661 () Bool)

(assert (=> b!37297 m!38661))

(declare-fun m!38663 () Bool)

(assert (=> b!37297 m!38663))

(assert (=> b!37278 d!18818))

(push 1)

(assert (not b!37297))

(assert (not b!37281))

(assert (not b!37289))

(assert (not d!18810))

(assert (not b!37295))

(assert (not b!37287))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3530 () Bool)

(assert start!3530)

(declare-fun b!22307 () Bool)

(declare-fun e!11660 () Bool)

(declare-fun i!292 () Int)

(declare-datatypes () ((T!1769 (T!1770 (val!57 Int)))))

(declare-datatypes () ((List!343 (Cons!337 (h!251 T!1769) (t!4338 List!343)) (Nil!338))))

(declare-fun l!725 () List!343)

(declare-fun size!235 (List!343) Int)

(assert (=> b!22307 (= e!11660 (> i!292 (size!235 l!725)))))

(declare-fun b!22308 () Bool)

(declare-fun e!11659 () Bool)

(assert (=> b!22308 (= e!11659 e!11660)))

(declare-fun res!9790 () Bool)

(assert (=> b!22308 (=> res!9790 e!11660)))

(assert (=> b!22308 (= res!9790 (> 0 i!292))))

(declare-fun b!22309 () Bool)

(declare-fun res!9789 () Bool)

(assert (=> b!22309 (=> (not res!9789) (not e!11659))))

(declare-fun y!814 () T!1769)

(declare-fun i!289 () Int)

(declare-fun y!811 () T!1769)

(assert (=> b!22309 (= res!9789 (and (= i!292 i!289) (= y!814 y!811)))))

(declare-fun e!11661 () Bool)

(declare-fun b!22310 () Bool)

(declare-fun l1!169 () List!343)

(declare-fun l2!163 () List!343)

(declare-fun appendInsertIndex!15 (List!343 List!343 Int T!1769) Bool)

(assert (=> b!22310 (= e!11661 (appendInsertIndex!15 (t!4338 l1!169) l2!163 (- i!289 1) y!811))))

(declare-fun b!22311 () Bool)

(declare-fun e!11663 () Bool)

(declare-fun tp_is_empty!113 () Bool)

(declare-fun tp!4922 () Bool)

(assert (=> b!22311 (= e!11663 (and tp_is_empty!113 tp!4922))))

(declare-fun b!22312 () Bool)

(declare-fun e!11658 () Bool)

(declare-fun tp!4921 () Bool)

(assert (=> b!22312 (= e!11658 (and tp_is_empty!113 tp!4921))))

(declare-fun b!22313 () Bool)

(declare-fun res!9794 () Bool)

(assert (=> b!22313 (=> (not res!9794) (not e!11659))))

(declare-fun ++!25 (List!343 List!343) List!343)

(assert (=> b!22313 (= res!9794 (= l!725 (++!25 l1!169 l2!163)))))

(declare-fun b!22314 () Bool)

(declare-fun res!9791 () Bool)

(assert (=> b!22314 (=> (not res!9791) (not e!11659))))

(assert (=> b!22314 (= res!9791 e!11661)))

(declare-fun res!9788 () Bool)

(assert (=> b!22314 (=> res!9788 e!11661)))

(assert (=> b!22314 (= res!9788 (or (is-Nil!338 l1!169) (= i!289 0)))))

(declare-fun b!22315 () Bool)

(declare-fun res!9792 () Bool)

(assert (=> b!22315 (=> (not res!9792) (not e!11659))))

(assert (=> b!22315 (= res!9792 (<= i!289 (+ (size!235 l1!169) (size!235 l2!163))))))

(declare-fun b!22316 () Bool)

(declare-fun e!11662 () Bool)

(declare-fun tp!4923 () Bool)

(assert (=> b!22316 (= e!11662 (and tp_is_empty!113 tp!4923))))

(declare-fun res!9793 () Bool)

(assert (=> start!3530 (=> (not res!9793) (not e!11659))))

(assert (=> start!3530 (= res!9793 (<= 0 i!289))))

(assert (=> start!3530 e!11659))

(assert (=> start!3530 tp_is_empty!113))

(assert (=> start!3530 e!11663))

(assert (=> start!3530 true))

(assert (=> start!3530 e!11658))

(assert (=> start!3530 e!11662))

(assert (= (and start!3530 res!9793) b!22315))

(assert (= (and b!22315 res!9792) b!22314))

(assert (= (and b!22314 (not res!9788)) b!22310))

(assert (= (and b!22314 res!9791) b!22313))

(assert (= (and b!22313 res!9794) b!22309))

(assert (= (and b!22309 res!9789) b!22308))

(assert (= (and b!22308 (not res!9790)) b!22307))

(assert (= (and start!3530 (is-Cons!337 l1!169)) b!22311))

(assert (= (and start!3530 (is-Cons!337 l!725)) b!22312))

(assert (= (and start!3530 (is-Cons!337 l2!163)) b!22316))

(declare-fun m!24369 () Bool)

(assert (=> b!22307 m!24369))

(declare-fun m!24371 () Bool)

(assert (=> b!22310 m!24371))

(declare-fun m!24373 () Bool)

(assert (=> b!22313 m!24373))

(declare-fun m!24375 () Bool)

(assert (=> b!22315 m!24375))

(declare-fun m!24377 () Bool)

(assert (=> b!22315 m!24377))

(push 1)

(assert (not b!22315))

(assert (not b!22307))

(assert tp_is_empty!113)

(assert (not b!22312))

(assert (not b!22310))

(assert (not b!22313))

(assert (not b!22311))

(assert (not b!22316))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13129 () Bool)

(declare-fun e!11669 () Bool)

(assert (=> d!13129 e!11669))

(declare-fun res!9801 () Bool)

(assert (=> d!13129 (=> (not res!9801) (not e!11669))))

(declare-fun lt!3549 () List!343)

(declare-fun content!61 (List!343) (Set T!1769))

(assert (=> d!13129 (= res!9801 (= (content!61 lt!3549) (union (content!61 l1!169) (content!61 l2!163))))))

(declare-fun e!11668 () List!343)

(assert (=> d!13129 (= lt!3549 e!11668)))

(declare-fun c!5308 () Bool)

(assert (=> d!13129 (= c!5308 (is-Nil!338 l1!169))))

(assert (=> d!13129 (= (++!25 l1!169 l2!163) lt!3549)))

(declare-fun b!22326 () Bool)

(assert (=> b!22326 (= e!11668 (Cons!337 (h!251 l1!169) (++!25 (t!4338 l1!169) l2!163)))))

(declare-fun b!22328 () Bool)

(assert (=> b!22328 (= e!11669 (or (not (= l2!163 Nil!338)) (= lt!3549 l1!169)))))

(declare-fun b!22325 () Bool)

(assert (=> b!22325 (= e!11668 l2!163)))

(declare-fun b!22327 () Bool)

(declare-fun res!9800 () Bool)

(assert (=> b!22327 (=> (not res!9800) (not e!11669))))

(assert (=> b!22327 (= res!9800 (= (size!235 lt!3549) (+ (size!235 l1!169) (size!235 l2!163))))))

(assert (= (and d!13129 c!5308) b!22325))

(assert (= (and d!13129 (not c!5308)) b!22326))

(assert (= (and d!13129 res!9801) b!22327))

(assert (= (and b!22327 res!9800) b!22328))

(declare-fun m!24379 () Bool)

(assert (=> d!13129 m!24379))

(declare-fun m!24381 () Bool)

(assert (=> d!13129 m!24381))

(declare-fun m!24383 () Bool)

(assert (=> d!13129 m!24383))

(declare-fun m!24385 () Bool)

(assert (=> b!22326 m!24385))

(declare-fun m!24387 () Bool)

(assert (=> b!22327 m!24387))

(assert (=> b!22327 m!24375))

(assert (=> b!22327 m!24377))

(assert (=> b!22313 d!13129))

(declare-fun d!13131 () Bool)

(declare-fun lt!3552 () Int)

(assert (=> d!13131 (>= lt!3552 0)))

(declare-fun e!11672 () Int)

(assert (=> d!13131 (= lt!3552 e!11672)))

(declare-fun c!5311 () Bool)

(assert (=> d!13131 (= c!5311 (is-Nil!338 l1!169))))

(assert (=> d!13131 (= (size!235 l1!169) lt!3552)))

(declare-fun b!22333 () Bool)

(assert (=> b!22333 (= e!11672 0)))

(declare-fun b!22334 () Bool)

(assert (=> b!22334 (= e!11672 (+ 1 (size!235 (t!4338 l1!169))))))

(assert (= (and d!13131 c!5311) b!22333))

(assert (= (and d!13131 (not c!5311)) b!22334))

(declare-fun m!24389 () Bool)

(assert (=> b!22334 m!24389))

(assert (=> b!22315 d!13131))

(declare-fun d!13133 () Bool)

(declare-fun lt!3553 () Int)

(assert (=> d!13133 (>= lt!3553 0)))

(declare-fun e!11673 () Int)

(assert (=> d!13133 (= lt!3553 e!11673)))

(declare-fun c!5312 () Bool)

(assert (=> d!13133 (= c!5312 (is-Nil!338 l2!163))))

(assert (=> d!13133 (= (size!235 l2!163) lt!3553)))

(declare-fun b!22335 () Bool)

(assert (=> b!22335 (= e!11673 0)))

(declare-fun b!22336 () Bool)

(assert (=> b!22336 (= e!11673 (+ 1 (size!235 (t!4338 l2!163))))))

(assert (= (and d!13133 c!5312) b!22335))

(assert (= (and d!13133 (not c!5312)) b!22336))

(declare-fun m!24391 () Bool)

(assert (=> b!22336 m!24391))

(assert (=> b!22315 d!13133))

(declare-fun b!22347 () Bool)

(declare-fun e!11682 () Bool)

(assert (=> b!22347 (= e!11682 (<= (- i!289 1) (+ (size!235 (t!4338 l1!169)) (size!235 l2!163))))))

(declare-fun e!11684 () List!343)

(declare-fun b!22348 () Bool)

(declare-fun insertAtIndex!14 (List!343 Int T!1769) List!343)

(assert (=> b!22348 (= e!11684 (++!25 (t!4338 l1!169) (insertAtIndex!14 l2!163 (- (- i!289 1) (size!235 (t!4338 l1!169))) y!811)))))

(declare-fun b!22349 () Bool)

(assert (=> b!22349 (= e!11684 (++!25 (insertAtIndex!14 (t!4338 l1!169) (- i!289 1) y!811) l2!163))))

(declare-fun e!11685 () Bool)

(declare-fun b!22350 () Bool)

(assert (=> b!22350 (= e!11685 (= (insertAtIndex!14 (++!25 (t!4338 l1!169) l2!163) (- i!289 1) y!811) e!11684))))

(declare-fun c!5315 () Bool)

(assert (=> b!22350 (= c!5315 (< (- i!289 1) (size!235 (t!4338 l1!169))))))

(declare-fun b!22351 () Bool)

(declare-fun e!11683 () Bool)

(assert (=> b!22351 (= e!11683 (appendInsertIndex!15 (t!4338 (t!4338 l1!169)) l2!163 (- (- i!289 1) 1) y!811))))

(declare-fun d!13135 () Bool)

(assert (=> d!13135 e!11685))

(declare-fun res!9810 () Bool)

(assert (=> d!13135 (=> (not res!9810) (not e!11685))))

(assert (=> d!13135 (= res!9810 e!11683)))

(declare-fun res!9809 () Bool)

(assert (=> d!13135 (=> res!9809 e!11683)))

(assert (=> d!13135 (= res!9809 (or (is-Nil!338 (t!4338 l1!169)) (= (- i!289 1) 0)))))

(assert (=> d!13135 e!11682))

(declare-fun res!9808 () Bool)

(assert (=> d!13135 (=> (not res!9808) (not e!11682))))

(assert (=> d!13135 (= res!9808 (<= 0 (- i!289 1)))))

(assert (=> d!13135 (= (appendInsertIndex!15 (t!4338 l1!169) l2!163 (- i!289 1) y!811) true)))

(assert (= (and d!13135 res!9808) b!22347))

(assert (= (and d!13135 (not res!9809)) b!22351))

(assert (= (and d!13135 res!9810) b!22350))

(assert (= (and b!22350 c!5315) b!22349))

(assert (= (and b!22350 (not c!5315)) b!22348))

(assert (=> b!22348 m!24389))

(declare-fun m!24393 () Bool)

(assert (=> b!22348 m!24393))

(assert (=> b!22348 m!24393))

(declare-fun m!24395 () Bool)

(assert (=> b!22348 m!24395))

(assert (=> b!22347 m!24389))

(assert (=> b!22347 m!24377))

(assert (=> b!22350 m!24385))

(assert (=> b!22350 m!24385))

(declare-fun m!24397 () Bool)

(assert (=> b!22350 m!24397))

(assert (=> b!22350 m!24389))

(declare-fun m!24399 () Bool)

(assert (=> b!22351 m!24399))

(declare-fun m!24401 () Bool)

(assert (=> b!22349 m!24401))

(assert (=> b!22349 m!24401))

(declare-fun m!24403 () Bool)

(assert (=> b!22349 m!24403))

(assert (=> b!22310 d!13135))

(declare-fun d!13137 () Bool)

(declare-fun lt!3554 () Int)

(assert (=> d!13137 (>= lt!3554 0)))

(declare-fun e!11686 () Int)

(assert (=> d!13137 (= lt!3554 e!11686)))

(declare-fun c!5316 () Bool)

(assert (=> d!13137 (= c!5316 (is-Nil!338 l!725))))

(assert (=> d!13137 (= (size!235 l!725) lt!3554)))

(declare-fun b!22352 () Bool)

(assert (=> b!22352 (= e!11686 0)))

(declare-fun b!22353 () Bool)

(assert (=> b!22353 (= e!11686 (+ 1 (size!235 (t!4338 l!725))))))

(assert (= (and d!13137 c!5316) b!22352))

(assert (= (and d!13137 (not c!5316)) b!22353))

(declare-fun m!24405 () Bool)

(assert (=> b!22353 m!24405))

(assert (=> b!22307 d!13137))

(declare-fun b!22358 () Bool)

(declare-fun e!11689 () Bool)

(declare-fun tp!4926 () Bool)

(assert (=> b!22358 (= e!11689 (and tp_is_empty!113 tp!4926))))

(assert (=> b!22316 (= tp!4923 e!11689)))

(assert (= (and b!22316 (is-Cons!337 (t!4338 l2!163))) b!22358))

(declare-fun b!22359 () Bool)

(declare-fun e!11690 () Bool)

(declare-fun tp!4927 () Bool)

(assert (=> b!22359 (= e!11690 (and tp_is_empty!113 tp!4927))))

(assert (=> b!22311 (= tp!4922 e!11690)))

(assert (= (and b!22311 (is-Cons!337 (t!4338 l1!169))) b!22359))

(declare-fun b!22360 () Bool)

(declare-fun e!11691 () Bool)

(declare-fun tp!4928 () Bool)

(assert (=> b!22360 (= e!11691 (and tp_is_empty!113 tp!4928))))

(assert (=> b!22312 (= tp!4921 e!11691)))

(assert (= (and b!22312 (is-Cons!337 (t!4338 l!725))) b!22360))

(push 1)

(assert (not b!22347))

(assert (not b!22353))

(assert (not b!22358))

(assert (not b!22327))

(assert (not b!22350))

(assert tp_is_empty!113)

(assert (not b!22349))

(assert (not d!13129))

(assert (not b!22348))

(assert (not b!22334))

(assert (not b!22326))

(assert (not b!22336))

(assert (not b!22351))

(assert (not b!22360))

(assert (not b!22359))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


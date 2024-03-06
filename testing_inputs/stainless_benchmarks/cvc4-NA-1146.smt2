; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8286 () Bool)

(assert start!8286)

(declare-fun res!27103 () Bool)

(declare-fun e!31147 () Bool)

(assert (=> start!8286 (=> (not res!27103) (not e!31147))))

(declare-fun res!26933 () Bool)

(declare-datatypes () ((List!484 (Cons!459 (h!698 Int) (t!47139 List!484)) (Nil!460))))

(declare-fun x!26074 () List!484)

(declare-datatypes () ((Monoid!23 (ListMonoid!15) (MonoidExt!15 (__x!247 Int)))))

(declare-fun thiss!8599 () Monoid!23)

(declare-fun thiss!8598 () Monoid!23)

(declare-fun x!26075 () List!484)

(assert (=> start!8286 (= res!27103 (and (is-ListMonoid!15 thiss!8598) (= res!26933 true) (= thiss!8599 thiss!8598) (= x!26075 x!26074)))))

(assert (=> start!8286 e!31147))

(assert (=> start!8286 true))

(declare-fun b!58518 () Bool)

(declare-fun res!27104 () Bool)

(assert (=> b!58518 (=> (not res!27104) (not e!31147))))

(declare-fun inlined!6495 () Bool)

(declare-fun append!10 (Monoid!23 List!484 List!484) List!484)

(declare-fun empty!15 (Monoid!23) List!484)

(assert (=> b!58518 (= res!27104 (= inlined!6495 (= (append!10 thiss!8599 x!26075 (empty!15 thiss!8599)) x!26075)))))

(declare-fun b!58519 () Bool)

(assert (=> b!58519 (= e!31147 (not inlined!6495))))

(assert (= (and start!8286 res!27103) b!58518))

(assert (= (and b!58518 res!27104) b!58519))

(declare-fun m!63092 () Bool)

(assert (=> b!58518 m!63092))

(assert (=> b!58518 m!63092))

(declare-fun m!63094 () Bool)

(assert (=> b!58518 m!63094))

(push 1)

(assert (not b!58518))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50642 () Bool)

(declare-fun c!12535 () Bool)

(assert (=> d!50642 (= c!12535 (is-ListMonoid!15 thiss!8599))))

(declare-fun e!31150 () List!484)

(assert (=> d!50642 (= (append!10 thiss!8599 x!26075 (empty!15 thiss!8599)) e!31150)))

(declare-fun b!58524 () Bool)

(declare-fun append!11 (Monoid!23 List!484 List!484) List!484)

(assert (=> b!58524 (= e!31150 (append!11 thiss!8599 x!26075 (empty!15 thiss!8599)))))

(declare-fun b!58525 () Bool)

(declare-fun append!161 (Monoid!23 List!484 List!484) List!484)

(assert (=> b!58525 (= e!31150 (append!161 thiss!8599 x!26075 (empty!15 thiss!8599)))))

(assert (= (and d!50642 c!12535) b!58524))

(assert (= (and d!50642 (not c!12535)) b!58525))

(assert (=> b!58524 m!63092))

(declare-fun m!63096 () Bool)

(assert (=> b!58524 m!63096))

(assert (=> b!58525 m!63092))

(declare-fun m!63098 () Bool)

(assert (=> b!58525 m!63098))

(assert (=> b!58518 d!50642))

(declare-fun d!50644 () Bool)

(declare-fun c!12538 () Bool)

(assert (=> d!50644 (= c!12538 (is-ListMonoid!15 thiss!8599))))

(declare-fun e!31153 () List!484)

(assert (=> d!50644 (= (empty!15 thiss!8599) e!31153)))

(declare-fun b!58530 () Bool)

(declare-fun empty!16 (Monoid!23) List!484)

(assert (=> b!58530 (= e!31153 (empty!16 thiss!8599))))

(declare-fun b!58531 () Bool)

(declare-fun empty!118 (Monoid!23) List!484)

(assert (=> b!58531 (= e!31153 (empty!118 thiss!8599))))

(assert (= (and d!50644 c!12538) b!58530))

(assert (= (and d!50644 (not c!12538)) b!58531))

(declare-fun m!63100 () Bool)

(assert (=> b!58530 m!63100))

(declare-fun m!63102 () Bool)

(assert (=> b!58531 m!63102))

(assert (=> b!58518 d!50644))

(push 1)

(assert (not b!58530))

(assert (not b!58525))

(assert (not b!58531))

(assert (not b!58524))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50646 () Bool)

(assert (=> d!50646 (is-ListMonoid!15 thiss!8599)))

(assert (=> d!50646 (= (empty!16 thiss!8599) Nil!460)))

(assert (=> b!58530 d!50646))

(declare-fun d!50648 () Bool)

(assert (=> d!50648 true))

(assert (=> d!50648 true))

(declare-fun res!27107 () List!484)

(assert (=> d!50648 (= (append!161 thiss!8599 x!26075 (empty!15 thiss!8599)) res!27107)))

(assert (=> b!58525 d!50648))

(declare-fun d!50650 () Bool)

(assert (=> d!50650 true))

(assert (=> d!50650 true))

(declare-fun res!27110 () List!484)

(assert (=> d!50650 (= (empty!118 thiss!8599) res!27110)))

(assert (=> b!58531 d!50650))

(declare-fun d!50652 () Bool)

(declare-fun ++!60 (List!484 List!484) List!484)

(assert (=> d!50652 (= (append!11 thiss!8599 x!26075 (empty!15 thiss!8599)) (++!60 x!26075 (empty!15 thiss!8599)))))

(declare-fun bs!36363 () Bool)

(assert (= bs!36363 d!50652))

(assert (=> bs!36363 m!63092))

(declare-fun m!63104 () Bool)

(assert (=> bs!36363 m!63104))

(assert (=> b!58524 d!50652))

(push 1)

(assert (not d!50652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!31159 () Bool)

(declare-fun b!58543 () Bool)

(declare-fun lt!10704 () List!484)

(assert (=> b!58543 (= e!31159 (or (not (= (empty!15 thiss!8599) Nil!460)) (= lt!10704 x!26075)))))

(declare-fun b!58541 () Bool)

(declare-fun e!31158 () List!484)

(assert (=> b!58541 (= e!31158 (Cons!459 (h!698 x!26075) (++!60 (t!47139 x!26075) (empty!15 thiss!8599))))))

(declare-fun b!58540 () Bool)

(assert (=> b!58540 (= e!31158 (empty!15 thiss!8599))))

(declare-fun d!50654 () Bool)

(assert (=> d!50654 e!31159))

(declare-fun res!27116 () Bool)

(assert (=> d!50654 (=> (not res!27116) (not e!31159))))

(declare-fun content!100 (List!484) (Set Int))

(assert (=> d!50654 (= res!27116 (= (content!100 lt!10704) (union (content!100 x!26075) (content!100 (empty!15 thiss!8599)))))))

(assert (=> d!50654 (= lt!10704 e!31158)))

(declare-fun c!12541 () Bool)

(assert (=> d!50654 (= c!12541 (is-Nil!460 x!26075))))

(assert (=> d!50654 (= (++!60 x!26075 (empty!15 thiss!8599)) lt!10704)))

(declare-fun b!58542 () Bool)

(declare-fun res!27117 () Bool)

(assert (=> b!58542 (=> (not res!27117) (not e!31159))))

(declare-fun size!479 (List!484) Int)

(assert (=> b!58542 (= res!27117 (= (size!479 lt!10704) (+ (size!479 x!26075) (size!479 (empty!15 thiss!8599)))))))

(assert (= (and d!50654 c!12541) b!58540))

(assert (= (and d!50654 (not c!12541)) b!58541))

(assert (= (and d!50654 res!27116) b!58542))

(assert (= (and b!58542 res!27117) b!58543))

(assert (=> b!58541 m!63092))

(declare-fun m!63106 () Bool)

(assert (=> b!58541 m!63106))

(declare-fun m!63108 () Bool)

(assert (=> d!50654 m!63108))

(declare-fun m!63110 () Bool)

(assert (=> d!50654 m!63110))

(assert (=> d!50654 m!63092))

(declare-fun m!63112 () Bool)

(assert (=> d!50654 m!63112))

(declare-fun m!63114 () Bool)

(assert (=> b!58542 m!63114))

(declare-fun m!63116 () Bool)

(assert (=> b!58542 m!63116))

(assert (=> b!58542 m!63092))

(declare-fun m!63118 () Bool)

(assert (=> b!58542 m!63118))

(assert (=> d!50652 d!50654))

(push 1)

(assert (not d!50654))

(assert (not b!58542))

(assert (not b!58541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9518 () Bool)

(assert start!9518)

(declare-fun res!34369 () Bool)

(declare-fun e!38051 () Bool)

(assert (=> start!9518 (=> (not res!34369) (not e!38051))))

(declare-datatypes () ((Formula!58 (And!63 (lhs!977 Formula!58) (rhs!977 Formula!58)) (Literal!57 (id!4838 Int)) (Implies!63 (lhs!978 Formula!58) (rhs!978 Formula!58)) (Or!63 (lhs!979 Formula!58) (rhs!979 Formula!58)) (Not!63 (f!4225 Formula!58)))))

(declare-fun formula!50 () Formula!58)

(declare-fun x$2!377 () Formula!58)

(assert (=> start!9518 (= res!34369 (and (not (is-And!63 formula!50)) (not (is-Or!63 formula!50)) (not (is-Implies!63 formula!50)) (or (not (is-Not!63 formula!50)) (not (is-And!63 (f!4225 formula!50)))) (or (not (is-Not!63 formula!50)) (not (is-Or!63 (f!4225 formula!50)))) (or (not (is-Not!63 formula!50)) (not (is-Implies!63 (f!4225 formula!50)))) (or (not (is-Not!63 formula!50)) (not (is-Not!63 (f!4225 formula!50)))) (is-Not!63 formula!50) (is-Literal!57 (f!4225 formula!50)) (= x$2!377 formula!50)))))

(assert (=> start!9518 e!38051))

(assert (=> start!9518 true))

(declare-fun b!70350 () Bool)

(declare-fun isNNF!1 (Formula!58) Bool)

(assert (=> b!70350 (= e!38051 (not (isNNF!1 x$2!377)))))

(assert (= (and start!9518 res!34369) b!70350))

(declare-fun m!70593 () Bool)

(assert (=> b!70350 m!70593))

(push 1)

(assert (not b!70350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!70365 () Bool)

(declare-fun e!38062 () Bool)

(declare-fun e!38060 () Bool)

(assert (=> b!70365 (= e!38062 e!38060)))

(declare-fun res!34383 () Bool)

(assert (=> b!70365 (=> (not res!34383) (not e!38060))))

(declare-fun lt!14945 () Bool)

(assert (=> b!70365 (= res!34383 lt!14945)))

(declare-fun b!70366 () Bool)

(assert (=> b!70366 (= e!38062 (and (not (is-Implies!63 x$2!377)) (or (and (is-Not!63 x$2!377) (is-Literal!57 (f!4225 x$2!377))) (not (is-Not!63 x$2!377)))))))

(declare-fun b!70367 () Bool)

(declare-fun e!38063 () Bool)

(declare-fun lt!14947 () Bool)

(assert (=> b!70367 (= e!38063 (isNNF!1 (ite lt!14947 (lhs!977 x$2!377) (lhs!979 x$2!377))))))

(declare-fun b!70368 () Bool)

(declare-fun e!38061 () Bool)

(declare-fun lt!14946 () Bool)

(assert (=> b!70368 (= e!38061 (isNNF!1 (ite lt!14946 (rhs!977 x$2!377) (rhs!979 x$2!377))))))

(declare-fun d!53664 () Bool)

(declare-fun c!16777 () Bool)

(assert (=> d!53664 (= c!16777 (or lt!14947 (is-Or!63 x$2!377)))))

(assert (=> d!53664 (= lt!14946 (and lt!14947 lt!14945))))

(assert (=> d!53664 (= lt!14945 e!38063)))

(declare-fun c!16776 () Bool)

(assert (=> d!53664 (= c!16776 (or lt!14947 (is-Or!63 x$2!377)))))

(assert (=> d!53664 (= lt!14947 (is-And!63 x$2!377))))

(assert (=> d!53664 (= (isNNF!1 x$2!377) e!38062)))

(declare-fun b!70369 () Bool)

(assert (=> b!70369 (= e!38060 e!38061)))

(declare-fun c!16778 () Bool)

(assert (=> b!70369 (= c!16778 (or lt!14946 (and (not lt!14947) (is-Or!63 x$2!377) lt!14945)))))

(declare-fun b!70370 () Bool)

(declare-fun res!34384 () Bool)

(assert (=> b!70370 (= e!38061 res!34384)))

(assert (=> b!70370 true))

(assert (=> b!70370 true))

(declare-fun b!70371 () Bool)

(declare-fun res!34382 () Bool)

(assert (=> b!70371 (= e!38063 res!34382)))

(assert (=> b!70371 true))

(assert (= (and d!53664 c!16776) b!70367))

(assert (= (and d!53664 (not c!16776)) b!70371))

(assert (= (and b!70365 res!34383) b!70369))

(assert (= (and b!70369 c!16778) b!70368))

(assert (= (and b!70369 (not c!16778)) b!70370))

(assert (= (and d!53664 c!16777) b!70365))

(assert (= (and d!53664 (not c!16777)) b!70366))

(declare-fun m!70595 () Bool)

(assert (=> b!70367 m!70595))

(declare-fun m!70597 () Bool)

(assert (=> b!70368 m!70597))

(assert (=> b!70350 d!53664))

(push 1)

(assert (not b!70368))

(assert (not b!70367))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


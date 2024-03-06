; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4558 () Bool)

(assert start!4558)

(declare-fun res!16225 () Bool)

(declare-fun e!17714 () Bool)

(assert (=> start!4558 (=> (not res!16225) (not e!17714))))

(declare-fun x1!16 () (_ BitVec 32))

(declare-fun x3!10 () (_ BitVec 32))

(declare-datatypes () ((tuple3!10 (tuple3!11 (_1!81 (_ BitVec 32)) (_2!81 (_ BitVec 32)) (_3!15 (_ BitVec 32))))))

(declare-fun x$4!79 () tuple3!10)

(declare-fun x2!18 () (_ BitVec 32))

(declare-fun sort3!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple3!10)

(assert (=> start!4558 (= res!16225 (= x$4!79 (tuple3!11 (_1!81 (sort3!0 x1!16 x2!18 x3!10)) (_2!81 (sort3!0 x1!16 x2!18 x3!10)) (_3!15 (sort3!0 x1!16 x2!18 x3!10)))))))

(assert (=> start!4558 e!17714))

(assert (=> start!4558 true))

(declare-fun x1s!19 () (_ BitVec 32))

(declare-datatypes () ((tuple4!10 (tuple4!11 (_1!82 (_ BitVec 32)) (_2!82 (_ BitVec 32)) (_3!16 (_ BitVec 32)) (_4!10 (_ BitVec 32))))))

(declare-fun x$5!41 () tuple4!10)

(declare-fun x4!7 () (_ BitVec 32))

(declare-fun x3s!8 () (_ BitVec 32))

(declare-fun x2s!19 () (_ BitVec 32))

(declare-fun b!35092 () Bool)

(assert (=> b!35092 (= e!17714 (and (= x1s!19 (_1!81 x$4!79)) (= x2s!19 (_2!81 x$4!79)) (= x3s!8 (_3!15 x$4!79)) (bvsle x3s!8 x4!7) (= x$5!41 (tuple4!11 x1s!19 x2s!19 x3s!8 x4!7)) (or (bvsgt (_1!82 x$5!41) (_2!82 x$5!41)) (bvsgt (_2!82 x$5!41) (_3!16 x$5!41)) (bvsgt (_3!16 x$5!41) (_4!10 x$5!41)) (not (= (insert (_4!10 x$5!41) (insert (_3!16 x$5!41) (insert (_2!82 x$5!41) (insert (_1!82 x$5!41) (as emptyset (Set (_ BitVec 32))))))) (insert x4!7 (insert x3!10 (insert x2!18 (insert x1!16 (as emptyset (Set (_ BitVec 32))))))))))))))

(assert (= (and start!4558 res!16225) b!35092))

(declare-fun m!37733 () Bool)

(assert (=> start!4558 m!37733))

(declare-fun m!37735 () Bool)

(assert (=> b!35092 m!37735))

(declare-fun m!37737 () Bool)

(assert (=> b!35092 m!37737))

(declare-fun m!37739 () Bool)

(assert (=> b!35092 m!37739))

(declare-fun m!37741 () Bool)

(assert (=> b!35092 m!37741))

(declare-fun m!37743 () Bool)

(assert (=> b!35092 m!37743))

(declare-fun m!37745 () Bool)

(assert (=> b!35092 m!37745))

(declare-fun m!37747 () Bool)

(assert (=> b!35092 m!37747))

(declare-fun m!37749 () Bool)

(assert (=> b!35092 m!37749))

(push 1)

(assert (not start!4558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!6652 () tuple3!10)

(declare-fun d!18380 () Bool)

(assert (=> d!18380 (and (bvsle (_1!81 lt!6652) (_2!81 lt!6652)) (bvsle (_2!81 lt!6652) (_3!15 lt!6652)) (= (insert (_3!15 lt!6652) (insert (_2!81 lt!6652) (insert (_1!81 lt!6652) (as emptyset (Set (_ BitVec 32)))))) (insert x3!10 (insert x2!18 (insert x1!16 (as emptyset (Set (_ BitVec 32))))))))))

(declare-fun lt!6653 () (_ BitVec 32))

(declare-fun lt!6654 () (_ BitVec 32))

(assert (=> d!18380 (= lt!6652 (ite (bvsle lt!6653 x3!10) (tuple3!11 lt!6654 lt!6653 x3!10) (ite (bvsle lt!6654 x3!10) (tuple3!11 lt!6654 x3!10 lt!6653) (tuple3!11 x3!10 lt!6654 lt!6653))))))

(declare-datatypes () ((tuple2!132 (tuple2!133 (_1!83 (_ BitVec 32)) (_2!83 (_ BitVec 32))))))

(declare-fun lt!6655 () tuple2!132)

(assert (=> d!18380 (= lt!6653 (_2!83 lt!6655))))

(declare-fun lt!6656 () tuple2!132)

(assert (=> d!18380 (= lt!6654 (_1!83 lt!6656))))

(declare-fun sort2!0 ((_ BitVec 32) (_ BitVec 32)) tuple2!132)

(assert (=> d!18380 (= lt!6655 (sort2!0 x1!16 x2!18))))

(assert (=> d!18380 (= lt!6656 (sort2!0 x1!16 x2!18))))

(assert (=> d!18380 (= (sort3!0 x1!16 x2!18 x3!10) lt!6652)))

(declare-fun bs!11246 () Bool)

(assert (= bs!11246 d!18380))

(declare-fun m!37751 () Bool)

(assert (=> bs!11246 m!37751))

(declare-fun m!37753 () Bool)

(assert (=> bs!11246 m!37753))

(assert (=> bs!11246 m!37749))

(declare-fun m!37755 () Bool)

(assert (=> bs!11246 m!37755))

(assert (=> bs!11246 m!37743))

(declare-fun m!37757 () Bool)

(assert (=> bs!11246 m!37757))

(assert (=> bs!11246 m!37745))

(assert (=> start!4558 d!18380))

(push 1)

(assert (not d!18380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


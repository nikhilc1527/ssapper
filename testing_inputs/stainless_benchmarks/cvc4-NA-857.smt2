; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6404 () Bool)

(assert start!6404)

(declare-fun res!22324 () Bool)

(declare-fun e!24796 () Bool)

(assert (=> start!6404 (=> (not res!22324) (not e!24796))))

(declare-datatypes () ((Nat!218 (Zero!202) (Succ!199 (n!1355 Nat!218)))))

(declare-fun thiss!6198 () Nat!218)

(assert (=> start!6404 (= res!22324 (not (is-Zero!202 thiss!6198)))))

(assert (=> start!6404 e!24796))

(assert (=> start!6404 true))

(declare-fun b!47545 () Bool)

(declare-fun res!22325 () Bool)

(assert (=> b!47545 (=> (not res!22325) (not e!24796))))

(declare-fun x$2!244 () Int)

(declare-fun repr!0 (Nat!218) Int)

(assert (=> b!47545 (= res!22325 (= x$2!244 (+ (repr!0 (n!1355 thiss!6198)) 1)))))

(declare-fun b!47546 () Bool)

(assert (=> b!47546 (= e!24796 (< x$2!244 0))))

(assert (= (and start!6404 res!22324) b!47545))

(assert (= (and b!47545 res!22325) b!47546))

(declare-fun m!50431 () Bool)

(assert (=> b!47545 m!50431))

(push 1)

(assert (not b!47545))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33342 () Bool)

(declare-fun lt!8680 () Int)

(assert (=> d!33342 (>= lt!8680 0)))

(declare-fun e!24799 () Int)

(assert (=> d!33342 (= lt!8680 e!24799)))

(declare-fun c!10039 () Bool)

(assert (=> d!33342 (= c!10039 (is-Zero!202 (n!1355 thiss!6198)))))

(assert (=> d!33342 (= (repr!0 (n!1355 thiss!6198)) lt!8680)))

(declare-fun b!47551 () Bool)

(assert (=> b!47551 (= e!24799 0)))

(declare-fun b!47552 () Bool)

(assert (=> b!47552 (= e!24799 (+ (repr!0 (n!1355 (n!1355 thiss!6198))) 1))))

(assert (= (and d!33342 c!10039) b!47551))

(assert (= (and d!33342 (not c!10039)) b!47552))

(declare-fun m!50433 () Bool)

(assert (=> b!47552 m!50433))

(assert (=> b!47545 d!33342))

(push 1)

(assert (not b!47552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


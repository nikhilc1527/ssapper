; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7552 () Bool)

(assert start!7552)

(declare-fun res!24762 () Bool)

(declare-fun e!28237 () Bool)

(assert (=> start!7552 (=> (not res!24762) (not e!28237))))

(declare-datatypes () ((Unit!898 (Unit!899))))

(declare-fun x$1!782 () Unit!898)

(declare-fun Unit!900 () Unit!898)

(assert (=> start!7552 (= res!24762 (= x$1!782 Unit!900))))

(assert (=> start!7552 e!28237))

(assert (=> start!7552 true))

(declare-fun b!54066 () Bool)

(declare-fun x!21393 () (_ BitVec 32))

(declare-datatypes () ((IntSet!25 (Empty!150) (Node!111 (left!1141 IntSet!25) (elem!211 (_ BitVec 32)) (right!1144 IntSet!25)))))

(declare-fun contains!11 (IntSet!25 (_ BitVec 32)) Bool)

(assert (=> b!54066 (= e!28237 (contains!11 Empty!150 x!21393))))

(assert (= (and start!7552 res!24762) b!54066))

(declare-fun m!57786 () Bool)

(assert (=> b!54066 m!57786))

(push 1)

(assert (not b!54066))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44822 () Bool)

(declare-fun lt!9527 () Bool)

(declare-fun content!17 (IntSet!25) (Set (_ BitVec 32)))

(assert (=> d!44822 (= lt!9527 (member x!21393 (content!17 Empty!150)))))

(declare-fun e!28242 () Bool)

(assert (=> d!44822 (= lt!9527 e!28242)))

(declare-fun res!24772 () Bool)

(assert (=> d!44822 (=> (not res!24772) (not e!28242))))

(assert (=> d!44822 (= res!24772 (not (is-Empty!150 Empty!150)))))

(assert (=> d!44822 (= (contains!11 Empty!150 x!21393) lt!9527)))

(declare-fun lt!9528 () Bool)

(declare-fun b!54073 () Bool)

(declare-fun lt!9526 () Bool)

(assert (=> b!54073 (= e!28242 (ite lt!9526 lt!9528 (or (not (bvsgt x!21393 (elem!211 Empty!150))) lt!9528)))))

(declare-fun e!28243 () Bool)

(assert (=> b!54073 (= lt!9528 e!28243)))

(declare-fun c!11764 () Bool)

(assert (=> b!54073 (= c!11764 (or lt!9526 (bvsgt x!21393 (elem!211 Empty!150))))))

(assert (=> b!54073 (= lt!9526 (bvslt x!21393 (elem!211 Empty!150)))))

(declare-fun b!54075 () Bool)

(declare-fun res!24771 () Bool)

(assert (=> b!54075 (= e!28243 res!24771)))

(assert (=> b!54075 true))

(assert (=> b!54075 true))

(declare-fun b!54074 () Bool)

(assert (=> b!54074 (= e!28243 (contains!11 (ite lt!9526 (left!1141 Empty!150) (right!1144 Empty!150)) x!21393))))

(assert (= (and d!44822 res!24772) b!54073))

(assert (= (and b!54073 c!11764) b!54074))

(assert (= (and b!54073 (not c!11764)) b!54075))

(declare-fun m!57788 () Bool)

(assert (=> d!44822 m!57788))

(declare-fun m!57790 () Bool)

(assert (=> d!44822 m!57790))

(declare-fun m!57792 () Bool)

(assert (=> b!54074 m!57792))

(assert (=> b!54066 d!44822))

(push 1)

(assert (not d!44822))

(assert (not b!54074))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


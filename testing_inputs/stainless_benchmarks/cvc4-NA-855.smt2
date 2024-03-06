; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6398 () Bool)

(assert start!6398)

(declare-fun res!22319 () Bool)

(declare-fun e!24789 () Bool)

(assert (=> start!6398 (=> (not res!22319) (not e!24789))))

(declare-fun x$1!633 () Bool)

(declare-datatypes () ((Nat!216 (Zero!200) (Succ!197 (n!1353 Nat!216)))))

(declare-fun thiss!5617 () Nat!216)

(declare-fun that!1176 () Nat!216)

(assert (=> start!6398 (= res!22319 (and (or (not (is-Succ!197 thiss!5617)) (not (is-Succ!197 that!1176))) (or (not (is-Zero!200 thiss!5617)) (not (is-Succ!197 that!1176))) (= x$1!633 false)))))

(assert (=> start!6398 e!24789))

(assert (=> start!6398 true))

(declare-fun b!47532 () Bool)

(declare-fun repr!0 (Nat!216) Int)

(assert (=> b!47532 (= e!24789 (not (= x$1!633 (< (repr!0 thiss!5617) (repr!0 that!1176)))))))

(assert (= (and start!6398 res!22319) b!47532))

(declare-fun m!50423 () Bool)

(assert (=> b!47532 m!50423))

(declare-fun m!50425 () Bool)

(assert (=> b!47532 m!50425))

(push 1)

(assert (not b!47532))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33338 () Bool)

(declare-fun lt!8676 () Int)

(assert (=> d!33338 (>= lt!8676 0)))

(declare-fun e!24792 () Int)

(assert (=> d!33338 (= lt!8676 e!24792)))

(declare-fun c!10035 () Bool)

(assert (=> d!33338 (= c!10035 (is-Zero!200 thiss!5617))))

(assert (=> d!33338 (= (repr!0 thiss!5617) lt!8676)))

(declare-fun b!47537 () Bool)

(assert (=> b!47537 (= e!24792 0)))

(declare-fun b!47538 () Bool)

(assert (=> b!47538 (= e!24792 (+ (repr!0 (n!1353 thiss!5617)) 1))))

(assert (= (and d!33338 c!10035) b!47537))

(assert (= (and d!33338 (not c!10035)) b!47538))

(declare-fun m!50427 () Bool)

(assert (=> b!47538 m!50427))

(assert (=> b!47532 d!33338))

(declare-fun d!33340 () Bool)

(declare-fun lt!8677 () Int)

(assert (=> d!33340 (>= lt!8677 0)))

(declare-fun e!24793 () Int)

(assert (=> d!33340 (= lt!8677 e!24793)))

(declare-fun c!10036 () Bool)

(assert (=> d!33340 (= c!10036 (is-Zero!200 that!1176))))

(assert (=> d!33340 (= (repr!0 that!1176) lt!8677)))

(declare-fun b!47539 () Bool)

(assert (=> b!47539 (= e!24793 0)))

(declare-fun b!47540 () Bool)

(assert (=> b!47540 (= e!24793 (+ (repr!0 (n!1353 that!1176)) 1))))

(assert (= (and d!33340 c!10036) b!47539))

(assert (= (and d!33340 (not c!10036)) b!47540))

(declare-fun m!50429 () Bool)

(assert (=> b!47540 m!50429))

(assert (=> b!47532 d!33340))

(push 1)

(assert (not b!47540))

(assert (not b!47538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


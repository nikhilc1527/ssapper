; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!38 () Bool)

(assert start!38)

(declare-fun res!354 () Bool)

(declare-fun e!139 () Bool)

(assert (=> start!38 (=> (not res!354) (not e!139))))

(declare-datatypes () ((A!410 (Cons!37 (head!198 Int) (tail!210 A!410)) (Nil!38 (i!199 Int)))))

(declare-fun thiss!19 () A!410)

(assert (=> start!38 (= res!354 (is-Nil!38 thiss!19))))

(assert (=> start!38 e!139))

(declare-fun e!140 () Bool)

(declare-fun inv!55 (A!410) Bool)

(assert (=> start!38 (and (inv!55 thiss!19) e!140)))

(declare-fun b!298 () Bool)

(declare-fun res!355 () Bool)

(assert (=> b!298 (=> (not res!355) (not e!139))))

(declare-fun B$inv!0 (A!410) Bool)

(assert (=> b!298 (= res!355 (B$inv!0 thiss!19))))

(declare-fun b!299 () Bool)

(assert (=> b!299 (= e!139 false)))

(declare-fun b!300 () Bool)

(declare-fun tp!34 () Bool)

(assert (=> b!300 (= e!140 (and (inv!55 (tail!210 thiss!19)) tp!34))))

(assert (= (and start!38 res!354) b!298))

(assert (= (and b!298 res!355) b!299))

(assert (= (and start!38 (is-Cons!37 thiss!19)) b!300))

(declare-fun m!161 () Bool)

(assert (=> start!38 m!161))

(declare-fun m!163 () Bool)

(assert (=> b!298 m!163))

(declare-fun m!165 () Bool)

(assert (=> b!300 m!165))

(push 1)

(assert (not b!298))

(assert (not b!300))

(assert (not start!38))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


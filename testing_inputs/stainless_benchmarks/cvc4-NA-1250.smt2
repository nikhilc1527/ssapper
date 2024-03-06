; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8928 () Bool)

(assert start!8928)

(declare-fun b!62223 () Bool)

(declare-datatypes () ((A!2621 (C!62 (x!26988 Int)) (E!14) (D!22))))

(declare-fun e!33322 () A!2621)

(declare-fun c!13620 () A!2621)

(assert (=> b!62223 (= e!33322 c!13620)))

(declare-fun res!28917 () Bool)

(declare-fun e!33320 () Bool)

(assert (=> start!8928 (=> (not res!28917) (not e!33320))))

(assert (=> start!8928 (= res!28917 (= c!13620 (C!62 42)))))

(assert (=> start!8928 e!33320))

(declare-fun inv!1120 (A!2621) Bool)

(assert (=> start!8928 (inv!1120 c!13620)))

(declare-fun thiss!8857 () A!2621)

(assert (=> start!8928 (inv!1120 thiss!8857)))

(assert (=> start!8928 true))

(declare-fun i!478 () Int)

(declare-fun b!62225 () Bool)

(assert (=> b!62225 (= e!33320 (and (= thiss!8857 c!13620) (= i!478 0) (not (is-C!62 thiss!8857))))))

(declare-fun b!62224 () Bool)

(assert (=> b!62224 (= e!33322 D!22)))

(declare-fun b!62222 () Bool)

(declare-fun res!28918 () Bool)

(assert (=> b!62222 (=> (not res!28918) (not e!33320))))

(assert (=> b!62222 (= res!28918 (not (is-C!62 e!33322)))))

(declare-fun c!13624 () Bool)

(declare-fun foo!44 (A!2621 Int) Int)

(assert (=> b!62222 (= c!13624 (> (+ (foo!44 c!13620 0) (x!26988 c!13620)) 0))))

(assert (= (and start!8928 res!28917) b!62222))

(assert (= (and b!62222 c!13624) b!62223))

(assert (= (and b!62222 (not c!13624)) b!62224))

(assert (= (and b!62222 res!28918) b!62225))

(declare-fun m!68048 () Bool)

(assert (=> start!8928 m!68048))

(declare-fun m!68050 () Bool)

(assert (=> start!8928 m!68050))

(declare-fun m!68052 () Bool)

(assert (=> b!62222 m!68052))

(push 1)

(assert (not b!62222))

(assert (not start!8928))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8938 () Bool)

(assert start!8938)

(declare-fun b!62254 () Bool)

(declare-datatypes () ((A!2627 (C!66 (x!26999 Int)) (E!18) (D!26))))

(declare-fun e!33348 () A!2627)

(declare-fun c!13620 () A!2627)

(assert (=> b!62254 (= e!33348 c!13620)))

(declare-fun b!62255 () Bool)

(assert (=> b!62255 (= e!33348 D!26)))

(declare-fun b!62256 () Bool)

(declare-fun e!33350 () Bool)

(assert (=> b!62256 (= e!33350 false)))

(declare-fun b!62257 () Bool)

(declare-fun res!28937 () Bool)

(assert (=> b!62257 (=> (not res!28937) (not e!33350))))

(declare-fun foo!44 (A!2627 Int) Int)

(assert (=> b!62257 (= res!28937 (<= (+ (foo!44 c!13620 0) (x!26999 c!13620)) 0))))

(declare-fun b!62258 () Bool)

(declare-fun res!28939 () Bool)

(assert (=> b!62258 (=> (not res!28939) (not e!33350))))

(assert (=> b!62258 (= res!28939 (not (is-C!66 e!33348)))))

(declare-fun c!13630 () Bool)

(assert (=> b!62258 (= c!13630 (> (+ (foo!44 c!13620 0) (x!26999 c!13620)) 0))))

(declare-fun res!28938 () Bool)

(assert (=> start!8938 (=> (not res!28938) (not e!33350))))

(assert (=> start!8938 (= res!28938 (= c!13620 (C!66 42)))))

(assert (=> start!8938 e!33350))

(declare-fun inv!1120 (A!2627) Bool)

(assert (=> start!8938 (inv!1120 c!13620)))

(assert (= (and start!8938 res!28938) b!62258))

(assert (= (and b!62258 c!13630) b!62254))

(assert (= (and b!62258 (not c!13630)) b!62255))

(assert (= (and b!62258 res!28939) b!62257))

(assert (= (and b!62257 res!28937) b!62256))

(declare-fun m!68064 () Bool)

(assert (=> b!62257 m!68064))

(assert (=> b!62258 m!68064))

(declare-fun m!68066 () Bool)

(assert (=> start!8938 m!68066))

(push 1)

(assert (not b!62257))

(assert (not start!8938))

(assert (not b!62258))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


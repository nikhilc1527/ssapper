; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8936 () Bool)

(assert start!8936)

(declare-fun b!62243 () Bool)

(declare-fun e!33339 () Bool)

(declare-datatypes () ((A!2626 (C!65 (x!26997 Int)) (E!17) (D!25))))

(declare-fun c!13620 () A!2626)

(assert (=> b!62243 (= e!33339 (not (is-C!65 c!13620)))))

(declare-fun b!62240 () Bool)

(declare-fun res!28930 () Bool)

(assert (=> b!62240 (=> (not res!28930) (not e!33339))))

(declare-fun e!33340 () A!2626)

(assert (=> b!62240 (= res!28930 (not (is-C!65 e!33340)))))

(declare-fun c!13627 () Bool)

(declare-fun foo!44 (A!2626 Int) Int)

(assert (=> b!62240 (= c!13627 (> (+ (foo!44 c!13620 0) (x!26997 c!13620)) 0))))

(declare-fun res!28929 () Bool)

(assert (=> start!8936 (=> (not res!28929) (not e!33339))))

(assert (=> start!8936 (= res!28929 (= c!13620 (C!65 42)))))

(assert (=> start!8936 e!33339))

(declare-fun inv!1120 (A!2626) Bool)

(assert (=> start!8936 (inv!1120 c!13620)))

(declare-fun b!62241 () Bool)

(assert (=> b!62241 (= e!33340 c!13620)))

(declare-fun b!62242 () Bool)

(assert (=> b!62242 (= e!33340 D!25)))

(assert (= (and start!8936 res!28929) b!62240))

(assert (= (and b!62240 c!13627) b!62241))

(assert (= (and b!62240 (not c!13627)) b!62242))

(assert (= (and b!62240 res!28930) b!62243))

(declare-fun m!68060 () Bool)

(assert (=> b!62240 m!68060))

(declare-fun m!68062 () Bool)

(assert (=> start!8936 m!68062))

(push 1)

(assert (not b!62240))

(assert (not start!8936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


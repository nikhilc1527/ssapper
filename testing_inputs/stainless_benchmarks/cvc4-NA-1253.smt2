; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8934 () Bool)

(assert start!8934)

(declare-fun res!28923 () Bool)

(declare-fun e!33331 () Bool)

(assert (=> start!8934 (=> (not res!28923) (not e!33331))))

(declare-datatypes () ((A!2625 (C!64 (x!26996 Int)) (E!16) (D!24))))

(declare-fun c!13620 () A!2625)

(assert (=> start!8934 (= res!28923 (= c!13620 (C!64 42)))))

(assert (=> start!8934 e!33331))

(declare-fun inv!1120 (A!2625) Bool)

(assert (=> start!8934 (inv!1120 c!13620)))

(declare-fun b!62230 () Bool)

(declare-fun res!28924 () Bool)

(assert (=> b!62230 (=> (not res!28924) (not e!33331))))

(declare-fun foo!44 (A!2625 Int) Int)

(assert (=> b!62230 (= res!28924 (<= (+ (foo!44 c!13620 0) (x!26996 c!13620)) 0))))

(declare-fun b!62231 () Bool)

(assert (=> b!62231 (= e!33331 false)))

(assert (= (and start!8934 res!28923) b!62230))

(assert (= (and b!62230 res!28924) b!62231))

(declare-fun m!68056 () Bool)

(assert (=> start!8934 m!68056))

(declare-fun m!68058 () Bool)

(assert (=> b!62230 m!68058))

(push 1)

(assert (not b!62230))

(assert (not start!8934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


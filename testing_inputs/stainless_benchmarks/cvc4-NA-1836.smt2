; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12422 () Bool)

(assert start!12422)

(declare-fun res!48302 () Bool)

(declare-fun e!50308 () Bool)

(assert (=> start!12422 (=> (not res!48302) (not e!50308))))

(declare-fun x!33490 () Int)

(declare-fun y!2388 () Int)

(assert (=> start!12422 (= res!48302 (= x!33490 y!2388))))

(assert (=> start!12422 e!50308))

(assert (=> start!12422 true))

(declare-fun b!91875 () Bool)

(declare-datatypes () ((Foo!103 (Foo!104 (x!33500 Int)))))

(declare-fun inv!36 (Foo!103) Bool)

(assert (=> b!91875 (= e!50308 (not (inv!36 (Foo!104 x!33490))))))

(assert (= (and start!12422 res!48302) b!91875))

(declare-fun m!87728 () Bool)

(assert (=> b!91875 m!87728))

(push 1)

(assert (not b!91875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60367 () Bool)

(assert (=> d!60367 (= (inv!36 (Foo!104 x!33490)) (> (x!33500 (Foo!104 x!33490)) 0))))

(assert (=> b!91875 d!60367))

(push 1)

(check-sat)

(get-model)

(pop 1)


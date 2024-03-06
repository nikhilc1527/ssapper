; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12456 () Bool)

(assert start!12456)

(declare-fun res!48341 () Bool)

(declare-fun e!50320 () Bool)

(assert (=> start!12456 (=> (not res!48341) (not e!50320))))

(declare-datatypes () ((Object!597 (Open!597 (value!9123 Int)))))

(declare-datatypes () ((Wrapper!11 (Wrapper!12 (stuff!5 Object!597)))))

(declare-fun a!1135 () Wrapper!11)

(declare-fun a!1134 () Wrapper!11)

(assert (=> start!12456 (= res!48341 (= a!1135 a!1134))))

(assert (=> start!12456 e!50320))

(assert (=> start!12456 true))

(declare-fun b!91898 () Bool)

(declare-fun res!48342 () Bool)

(assert (=> b!91898 (=> (not res!48342) (not e!50320))))

(declare-datatypes () ((Unit!1371 (Unit!1372))))

(declare-datatypes () ((tuple2!444 (tuple2!445 (_1!257 Unit!1371) (_2!257 Wrapper!11)))))

(declare-fun res!48335 () tuple2!444)

(declare-fun doStuff!0 (Wrapper!11) tuple2!444)

(assert (=> b!91898 (= res!48342 (= res!48335 (doStuff!0 a!1135)))))

(declare-fun res!48336 () tuple2!444)

(declare-fun b!91899 () Bool)

(declare-fun a!1136 () Wrapper!11)

(declare-fun tmp!596 () Unit!1371)

(declare-fun Unit!1373 () Unit!1371)

(assert (=> b!91899 (= e!50320 (and (= a!1136 (_2!257 res!48335)) (= tmp!596 Unit!1373) (= res!48336 (tuple2!445 (_1!257 res!48335) a!1136)) (not (= (_2!257 res!48336) a!1134))))))

(assert (= (and start!12456 res!48341) b!91898))

(assert (= (and b!91898 res!48342) b!91899))

(declare-fun m!87740 () Bool)

(assert (=> b!91898 m!87740))

(push 1)

(assert (not b!91898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60388 () Bool)

(assert (=> d!60388 true))

(assert (=> d!60388 true))

(declare-fun res!48345 () tuple2!444)

(assert (=> d!60388 (= (doStuff!0 a!1135) res!48345)))

(assert (=> b!91898 d!60388))

(push 1)

(check-sat)

(get-model)

(pop 1)


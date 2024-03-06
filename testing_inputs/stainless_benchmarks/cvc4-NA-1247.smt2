; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8914 () Bool)

(assert start!8914)

(declare-fun res!28908 () Bool)

(declare-fun e!33298 () Bool)

(assert (=> start!8914 (=> (not res!28908) (not e!33298))))

(declare-datatypes () ((A!2618 (C!59 (x!26985 Int)) (E!11) (D!19))))

(declare-fun thiss!8865 () A!2618)

(declare-fun i!481 () Int)

(assert (=> start!8914 (= res!28908 (and (or (is-C!59 thiss!8865) (is-E!11 thiss!8865)) (> i!481 0) (is-C!59 thiss!8865)))))

(assert (=> start!8914 e!33298))

(declare-fun inv!1120 (A!2618) Bool)

(assert (=> start!8914 (inv!1120 thiss!8865)))

(assert (=> start!8914 true))

(declare-fun b!62209 () Bool)

(declare-fun res!28909 () Bool)

(assert (=> b!62209 (=> (not res!28909) (not e!33298))))

(declare-fun x$1!856 () Int)

(declare-fun foo!44 (A!2618 Int) Int)

(assert (=> b!62209 (= res!28909 (= x$1!856 (foo!44 thiss!8865 i!481)))))

(declare-fun b!62210 () Bool)

(assert (=> b!62210 (= e!33298 (< x$1!856 0))))

(assert (= (and start!8914 res!28908) b!62209))

(assert (= (and b!62209 res!28909) b!62210))

(declare-fun m!68034 () Bool)

(assert (=> start!8914 m!68034))

(declare-fun m!68036 () Bool)

(assert (=> b!62209 m!68036))

(push 1)

(assert (not start!8914))

(assert (not b!62209))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52701 () Bool)

(declare-fun res!28912 () Bool)

(declare-fun e!33302 () Bool)

(assert (=> d!52701 (=> res!28912 e!33302)))

(assert (=> d!52701 (= res!28912 (not (is-C!59 thiss!8865)))))

(assert (=> d!52701 (= (inv!1120 thiss!8865) e!33302)))

(declare-fun b!62213 () Bool)

(declare-fun inv!19 (A!2618) Bool)

(assert (=> b!62213 (= e!33302 (inv!19 thiss!8865))))

(assert (= (and d!52701 (not res!28912)) b!62213))

(declare-fun m!68038 () Bool)

(assert (=> b!62213 m!68038))

(assert (=> start!8914 d!52701))

(declare-fun d!52703 () Bool)

(declare-fun lt!11460 () Int)

(assert (=> d!52703 (and (is-C!59 thiss!8865) (>= lt!11460 (x!26985 thiss!8865)))))

(declare-fun y!65 (A!2618) Int)

(assert (=> d!52703 (= lt!11460 (+ (+ (x!26985 thiss!8865) (y!65 thiss!8865)) (ite (> i!481 0) i!481 (- i!481))))))

(assert (=> d!52703 (= (foo!44 thiss!8865 i!481) lt!11460)))

(declare-fun bs!37375 () Bool)

(assert (= bs!37375 d!52703))

(declare-fun m!68040 () Bool)

(assert (=> bs!37375 m!68040))

(assert (=> b!62209 d!52703))

(push 1)

(assert (not d!52703))

(assert (not b!62213))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52705 () Bool)

(assert (=> d!52705 (= (y!65 thiss!8865) 42)))

(assert (=> d!52703 d!52705))

(declare-fun d!52707 () Bool)

(assert (=> d!52707 (= (inv!19 thiss!8865) (>= (x!26985 thiss!8865) 0))))

(assert (=> b!62213 d!52707))

(push 1)

(check-sat)

(pop 1)


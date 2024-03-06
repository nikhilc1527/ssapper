; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8952 () Bool)

(assert start!8952)

(declare-fun res!28953 () Bool)

(declare-fun e!33382 () Bool)

(assert (=> start!8952 (=> (not res!28953) (not e!33382))))

(declare-datatypes () ((A!2632 (C!71 (x!27004 Int)) (E!23) (D!31))))

(declare-fun thiss!8859 () A!2632)

(assert (=> start!8952 (= res!28953 (is-C!71 thiss!8859))))

(assert (=> start!8952 e!33382))

(declare-fun inv!1120 (A!2632) Bool)

(assert (=> start!8952 (inv!1120 thiss!8859)))

(assert (=> start!8952 true))

(declare-fun b!62284 () Bool)

(declare-fun res!28954 () Bool)

(assert (=> b!62284 (=> (not res!28954) (not e!33382))))

(declare-fun x$2!337 () Int)

(declare-fun i!480 () Int)

(declare-fun y!65 (A!2632) Int)

(assert (=> b!62284 (= res!28954 (= x$2!337 (+ (+ (x!27004 thiss!8859) (y!65 thiss!8859)) (ite (> i!480 0) i!480 (- i!480)))))))

(declare-fun b!62285 () Bool)

(assert (=> b!62285 (= e!33382 (< x$2!337 (x!27004 thiss!8859)))))

(assert (= (and start!8952 res!28953) b!62284))

(assert (= (and b!62284 res!28954) b!62285))

(declare-fun m!68084 () Bool)

(assert (=> start!8952 m!68084))

(declare-fun m!68086 () Bool)

(assert (=> b!62284 m!68086))

(push 1)

(assert (not b!62284))

(assert (not start!8952))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52714 () Bool)

(assert (=> d!52714 (= (y!65 thiss!8859) 42)))

(assert (=> b!62284 d!52714))

(declare-fun d!52716 () Bool)

(declare-fun res!28957 () Bool)

(declare-fun e!33386 () Bool)

(assert (=> d!52716 (=> res!28957 e!33386)))

(assert (=> d!52716 (= res!28957 (not (is-C!71 thiss!8859)))))

(assert (=> d!52716 (= (inv!1120 thiss!8859) e!33386)))

(declare-fun b!62288 () Bool)

(declare-fun inv!19 (A!2632) Bool)

(assert (=> b!62288 (= e!33386 (inv!19 thiss!8859))))

(assert (= (and d!52716 (not res!28957)) b!62288))

(declare-fun m!68088 () Bool)

(assert (=> b!62288 m!68088))

(assert (=> start!8952 d!52716))

(push 1)

(assert (not b!62288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


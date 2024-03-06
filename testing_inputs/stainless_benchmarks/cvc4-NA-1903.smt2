; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12710 () Bool)

(assert start!12710)

(declare-fun res!49064 () Bool)

(declare-fun e!51099 () Bool)

(assert (=> start!12710 (=> (not res!49064) (not e!51099))))

(declare-datatypes () ((Foo!120 (Baz!75 (y!2433 Int)) (FooExt!35 (__x!405 Int)) (Bar!81 (y!2434 Int)))))

(declare-fun thiss!11230 () Foo!120)

(assert (=> start!12710 (= res!49064 (is-Baz!75 thiss!11230))))

(assert (=> start!12710 e!51099))

(declare-fun inv!1766 (Foo!120) Bool)

(assert (=> start!12710 (inv!1766 thiss!11230)))

(assert (=> start!12710 true))

(declare-fun b!93328 () Bool)

(declare-fun res!49063 () Bool)

(assert (=> b!93328 (=> (not res!49063) (not e!51099))))

(declare-fun res!49050 () Bool)

(declare-fun inv!1763 (Foo!120) Bool)

(assert (=> b!93328 (= res!49063 (= res!49050 (inv!1763 thiss!11230)))))

(declare-fun b!93329 () Bool)

(declare-fun e!51097 () Bool)

(assert (=> b!93329 (= e!51099 e!51097)))

(declare-fun res!49062 () Bool)

(assert (=> b!93329 (=> res!49062 e!51097)))

(assert (=> b!93329 (= res!49062 (not res!49050))))

(declare-fun b!93330 () Bool)

(declare-fun foo!59 (Foo!120 Int) Int)

(assert (=> b!93330 (= e!51097 (not (= (foo!59 thiss!11230 0) 0)))))

(assert (= (and start!12710 res!49064) b!93328))

(assert (= (and b!93328 res!49063) b!93329))

(assert (= (and b!93329 (not res!49062)) b!93330))

(declare-fun m!89019 () Bool)

(assert (=> start!12710 m!89019))

(declare-fun m!89021 () Bool)

(assert (=> b!93328 m!89021))

(declare-fun m!89023 () Bool)

(assert (=> b!93330 m!89023))

(push 1)

(assert (not b!93328))

(assert (not b!93330))

(assert (not start!12710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61049 () Bool)

(assert (=> d!61049 (= (foo!59 thiss!11230 0) 0)))

(assert (=> d!61049 (= (inv!1763 thiss!11230) true)))

(declare-fun bs!42024 () Bool)

(assert (= bs!42024 d!61049))

(assert (=> bs!42024 m!89023))

(assert (=> b!93328 d!61049))

(declare-fun b!93341 () Bool)

(declare-fun e!51105 () Int)

(declare-fun foo!100 (Foo!120 Int) Int)

(assert (=> b!93341 (= e!51105 (foo!100 thiss!11230 0))))

(declare-fun b!93339 () Bool)

(declare-fun e!51104 () Int)

(declare-fun foo!61 (Foo!120 Int) Int)

(assert (=> b!93339 (= e!51104 (foo!61 thiss!11230 0))))

(declare-fun d!61051 () Bool)

(declare-fun c!22859 () Bool)

(assert (=> d!61051 (= c!22859 (is-Baz!75 thiss!11230))))

(assert (=> d!61051 (= (foo!59 thiss!11230 0) e!51104)))

(declare-fun b!93342 () Bool)

(declare-fun foo!60 (Foo!120 Int) Int)

(assert (=> b!93342 (= e!51105 (foo!60 thiss!11230 0))))

(declare-fun b!93340 () Bool)

(assert (=> b!93340 (= e!51104 e!51105)))

(declare-fun c!22860 () Bool)

(assert (=> b!93340 (= c!22860 (is-FooExt!35 thiss!11230))))

(assert (= (and b!93340 c!22860) b!93341))

(assert (= (and b!93340 (not c!22860)) b!93342))

(assert (= (and d!61051 c!22859) b!93339))

(assert (= (and d!61051 (not c!22859)) b!93340))

(declare-fun m!89025 () Bool)

(assert (=> b!93341 m!89025))

(declare-fun m!89027 () Bool)

(assert (=> b!93339 m!89027))

(declare-fun m!89029 () Bool)

(assert (=> b!93342 m!89029))

(assert (=> b!93330 d!61051))

(declare-fun b!93350 () Bool)

(declare-fun e!51110 () Bool)

(declare-fun e!51111 () Bool)

(assert (=> b!93350 (= e!51110 e!51111)))

(declare-fun res!49068 () Bool)

(assert (=> b!93350 (=> res!49068 e!51111)))

(assert (=> b!93350 (= res!49068 (not (is-Bar!81 thiss!11230)))))

(declare-fun b!93351 () Bool)

(declare-fun inv!34 (Foo!120) Bool)

(assert (=> b!93351 (= e!51111 (inv!34 thiss!11230))))

(declare-fun d!61053 () Bool)

(declare-fun c!22863 () Bool)

(assert (=> d!61053 (= c!22863 (is-Baz!75 thiss!11230))))

(assert (=> d!61053 (= (inv!1766 thiss!11230) e!51110)))

(declare-fun b!93349 () Bool)

(declare-fun inv!35 (Foo!120) Bool)

(assert (=> b!93349 (= e!51110 (inv!35 thiss!11230))))

(assert (= (and b!93350 (not res!49068)) b!93351))

(assert (= (and d!61053 c!22863) b!93349))

(assert (= (and d!61053 (not c!22863)) b!93350))

(declare-fun m!89031 () Bool)

(assert (=> b!93351 m!89031))

(declare-fun m!89033 () Bool)

(assert (=> b!93349 m!89033))

(assert (=> start!12710 d!61053))

(push 1)

(assert (not b!93351))

(assert (not b!93349))

(assert (not d!61049))

(assert (not b!93341))

(assert (not b!93342))

(assert (not b!93339))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


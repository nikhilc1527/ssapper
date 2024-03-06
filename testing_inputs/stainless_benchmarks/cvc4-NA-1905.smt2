; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12726 () Bool)

(assert start!12726)

(declare-fun res!49095 () Bool)

(declare-fun e!51143 () Bool)

(assert (=> start!12726 (=> (not res!49095) (not e!51143))))

(declare-datatypes () ((Foo!122 (Baz!77 (y!2437 Int)) (FooExt!37 (__x!407 Int)) (Bar!83 (y!2438 Int)))))

(declare-fun thiss!11230 () Foo!122)

(assert (=> start!12726 (= res!49095 (and (not (is-Baz!77 thiss!11230)) (not (is-FooExt!37 thiss!11230))))))

(assert (=> start!12726 e!51143))

(declare-fun inv!1766 (Foo!122) Bool)

(assert (=> start!12726 (inv!1766 thiss!11230)))

(assert (=> start!12726 true))

(declare-fun b!93391 () Bool)

(declare-fun res!49093 () Bool)

(assert (=> b!93391 (=> (not res!49093) (not e!51143))))

(declare-fun res!49054 () Bool)

(declare-fun inv!1764 (Foo!122) Bool)

(assert (=> b!93391 (= res!49093 (= res!49054 (inv!1764 thiss!11230)))))

(declare-fun b!93392 () Bool)

(declare-fun e!51144 () Bool)

(assert (=> b!93392 (= e!51143 e!51144)))

(declare-fun res!49094 () Bool)

(assert (=> b!93392 (=> res!49094 e!51144)))

(assert (=> b!93392 (= res!49094 (not res!49054))))

(declare-fun b!93393 () Bool)

(declare-fun foo!59 (Foo!122 Int) Int)

(assert (=> b!93393 (= e!51144 (not (= (foo!59 thiss!11230 0) 0)))))

(assert (= (and start!12726 res!49095) b!93391))

(assert (= (and b!93391 res!49093) b!93392))

(assert (= (and b!93392 (not res!49094)) b!93393))

(declare-fun m!89051 () Bool)

(assert (=> start!12726 m!89051))

(declare-fun m!89053 () Bool)

(assert (=> b!93391 m!89053))

(declare-fun m!89055 () Bool)

(assert (=> b!93393 m!89055))

(push 1)

(assert (not b!93391))

(assert (not b!93393))

(assert (not start!12726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61061 () Bool)

(assert (=> d!61061 (= (foo!59 thiss!11230 0) 0)))

(assert (=> d!61061 (= (inv!1764 thiss!11230) true)))

(declare-fun bs!42027 () Bool)

(assert (= bs!42027 d!61061))

(assert (=> bs!42027 m!89055))

(assert (=> b!93391 d!61061))

(declare-fun d!61063 () Bool)

(declare-fun c!22877 () Bool)

(assert (=> d!61063 (= c!22877 (is-Baz!77 thiss!11230))))

(declare-fun e!51149 () Int)

(assert (=> d!61063 (= (foo!59 thiss!11230 0) e!51149)))

(declare-fun b!93403 () Bool)

(declare-fun e!51150 () Int)

(assert (=> b!93403 (= e!51149 e!51150)))

(declare-fun c!22878 () Bool)

(assert (=> b!93403 (= c!22878 (is-FooExt!37 thiss!11230))))

(declare-fun b!93405 () Bool)

(declare-fun foo!60 (Foo!122 Int) Int)

(assert (=> b!93405 (= e!51150 (foo!60 thiss!11230 0))))

(declare-fun b!93402 () Bool)

(declare-fun foo!61 (Foo!122 Int) Int)

(assert (=> b!93402 (= e!51149 (foo!61 thiss!11230 0))))

(declare-fun b!93404 () Bool)

(declare-fun foo!100 (Foo!122 Int) Int)

(assert (=> b!93404 (= e!51150 (foo!100 thiss!11230 0))))

(assert (= (and b!93403 c!22878) b!93404))

(assert (= (and b!93403 (not c!22878)) b!93405))

(assert (= (and d!61063 c!22877) b!93402))

(assert (= (and d!61063 (not c!22877)) b!93403))

(declare-fun m!89057 () Bool)

(assert (=> b!93405 m!89057))

(declare-fun m!89059 () Bool)

(assert (=> b!93402 m!89059))

(declare-fun m!89061 () Bool)

(assert (=> b!93404 m!89061))

(assert (=> b!93393 d!61063))

(declare-fun b!93413 () Bool)

(declare-fun e!51155 () Bool)

(declare-fun e!51156 () Bool)

(assert (=> b!93413 (= e!51155 e!51156)))

(declare-fun res!49099 () Bool)

(assert (=> b!93413 (=> res!49099 e!51156)))

(assert (=> b!93413 (= res!49099 (not (is-Bar!83 thiss!11230)))))

(declare-fun b!93414 () Bool)

(declare-fun inv!34 (Foo!122) Bool)

(assert (=> b!93414 (= e!51156 (inv!34 thiss!11230))))

(declare-fun d!61065 () Bool)

(declare-fun c!22881 () Bool)

(assert (=> d!61065 (= c!22881 (is-Baz!77 thiss!11230))))

(assert (=> d!61065 (= (inv!1766 thiss!11230) e!51155)))

(declare-fun b!93412 () Bool)

(declare-fun inv!35 (Foo!122) Bool)

(assert (=> b!93412 (= e!51155 (inv!35 thiss!11230))))

(assert (= (and b!93413 (not res!49099)) b!93414))

(assert (= (and d!61065 c!22881) b!93412))

(assert (= (and d!61065 (not c!22881)) b!93413))

(declare-fun m!89063 () Bool)

(assert (=> b!93414 m!89063))

(declare-fun m!89065 () Bool)

(assert (=> b!93412 m!89065))

(assert (=> start!12726 d!61065))

(push 1)

(assert (not b!93402))

(assert (not b!93412))

(assert (not b!93414))

(assert (not b!93404))

(assert (not b!93405))

(assert (not d!61061))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


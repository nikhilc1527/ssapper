; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12734 () Bool)

(assert start!12734)

(declare-fun res!49105 () Bool)

(declare-fun e!51164 () Bool)

(assert (=> start!12734 (=> (not res!49105) (not e!51164))))

(declare-datatypes () ((Foo!123 (Baz!78 (y!2439 Int)) (FooExt!38 (__x!408 Int)) (Bar!84 (y!2440 Int)))))

(declare-fun thiss!11225 () Foo!123)

(declare-fun res!49049 () Bool)

(declare-fun thiss!11224 () Foo!123)

(assert (=> start!12734 (= res!49105 (and (is-Bar!84 thiss!11224) (= res!49049 true) (= thiss!11225 thiss!11224)))))

(assert (=> start!12734 e!51164))

(declare-fun inv!1766 (Foo!123) Bool)

(assert (=> start!12734 (inv!1766 thiss!11224)))

(assert (=> start!12734 true))

(assert (=> start!12734 (inv!1766 thiss!11225)))

(declare-fun b!93419 () Bool)

(declare-fun res!49104 () Bool)

(assert (=> b!93419 (=> (not res!49104) (not e!51164))))

(declare-fun inlined!7192 () Bool)

(declare-fun foo!59 (Foo!123 Int) Int)

(assert (=> b!93419 (= res!49104 (= inlined!7192 (= (foo!59 thiss!11225 0) 0)))))

(declare-fun b!93420 () Bool)

(assert (=> b!93420 (= e!51164 (not inlined!7192))))

(assert (= (and start!12734 res!49105) b!93419))

(assert (= (and b!93419 res!49104) b!93420))

(declare-fun m!89067 () Bool)

(assert (=> start!12734 m!89067))

(declare-fun m!89069 () Bool)

(assert (=> start!12734 m!89069))

(declare-fun m!89071 () Bool)

(assert (=> b!93419 m!89071))

(push 1)

(assert (not start!12734))

(assert (not b!93419))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!93428 () Bool)

(declare-fun e!51170 () Bool)

(declare-fun e!51171 () Bool)

(assert (=> b!93428 (= e!51170 e!51171)))

(declare-fun res!49108 () Bool)

(assert (=> b!93428 (=> res!49108 e!51171)))

(assert (=> b!93428 (= res!49108 (not (is-Bar!84 thiss!11224)))))

(declare-fun b!93429 () Bool)

(declare-fun inv!34 (Foo!123) Bool)

(assert (=> b!93429 (= e!51171 (inv!34 thiss!11224))))

(declare-fun d!61067 () Bool)

(declare-fun c!22884 () Bool)

(assert (=> d!61067 (= c!22884 (is-Baz!78 thiss!11224))))

(assert (=> d!61067 (= (inv!1766 thiss!11224) e!51170)))

(declare-fun b!93427 () Bool)

(declare-fun inv!35 (Foo!123) Bool)

(assert (=> b!93427 (= e!51170 (inv!35 thiss!11224))))

(assert (= (and b!93428 (not res!49108)) b!93429))

(assert (= (and d!61067 c!22884) b!93427))

(assert (= (and d!61067 (not c!22884)) b!93428))

(declare-fun m!89073 () Bool)

(assert (=> b!93429 m!89073))

(declare-fun m!89075 () Bool)

(assert (=> b!93427 m!89075))

(assert (=> start!12734 d!61067))

(declare-fun b!93431 () Bool)

(declare-fun e!51172 () Bool)

(declare-fun e!51173 () Bool)

(assert (=> b!93431 (= e!51172 e!51173)))

(declare-fun res!49109 () Bool)

(assert (=> b!93431 (=> res!49109 e!51173)))

(assert (=> b!93431 (= res!49109 (not (is-Bar!84 thiss!11225)))))

(declare-fun b!93432 () Bool)

(assert (=> b!93432 (= e!51173 (inv!34 thiss!11225))))

(declare-fun d!61069 () Bool)

(declare-fun c!22885 () Bool)

(assert (=> d!61069 (= c!22885 (is-Baz!78 thiss!11225))))

(assert (=> d!61069 (= (inv!1766 thiss!11225) e!51172)))

(declare-fun b!93430 () Bool)

(assert (=> b!93430 (= e!51172 (inv!35 thiss!11225))))

(assert (= (and b!93431 (not res!49109)) b!93432))

(assert (= (and d!61069 c!22885) b!93430))

(assert (= (and d!61069 (not c!22885)) b!93431))

(declare-fun m!89077 () Bool)

(assert (=> b!93432 m!89077))

(declare-fun m!89079 () Bool)

(assert (=> b!93430 m!89079))

(assert (=> start!12734 d!61069))

(declare-fun b!93441 () Bool)

(declare-fun e!51178 () Int)

(declare-fun foo!61 (Foo!123 Int) Int)

(assert (=> b!93441 (= e!51178 (foo!61 thiss!11225 0))))

(declare-fun b!93444 () Bool)

(declare-fun e!51179 () Int)

(declare-fun foo!60 (Foo!123 Int) Int)

(assert (=> b!93444 (= e!51179 (foo!60 thiss!11225 0))))

(declare-fun d!61071 () Bool)

(declare-fun c!22890 () Bool)

(assert (=> d!61071 (= c!22890 (is-Baz!78 thiss!11225))))

(assert (=> d!61071 (= (foo!59 thiss!11225 0) e!51178)))

(declare-fun b!93443 () Bool)

(declare-fun foo!100 (Foo!123 Int) Int)

(assert (=> b!93443 (= e!51179 (foo!100 thiss!11225 0))))

(declare-fun b!93442 () Bool)

(assert (=> b!93442 (= e!51178 e!51179)))

(declare-fun c!22891 () Bool)

(assert (=> b!93442 (= c!22891 (is-FooExt!38 thiss!11225))))

(assert (= (and b!93442 c!22891) b!93443))

(assert (= (and b!93442 (not c!22891)) b!93444))

(assert (= (and d!61071 c!22890) b!93441))

(assert (= (and d!61071 (not c!22890)) b!93442))

(declare-fun m!89081 () Bool)

(assert (=> b!93441 m!89081))

(declare-fun m!89083 () Bool)

(assert (=> b!93444 m!89083))

(declare-fun m!89085 () Bool)

(assert (=> b!93443 m!89085))

(assert (=> b!93419 d!61071))

(push 1)

(assert (not b!93444))

(assert (not b!93432))

(assert (not b!93430))

(assert (not b!93429))

(assert (not b!93427))

(assert (not b!93443))

(assert (not b!93441))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61073 () Bool)

(assert (=> d!61073 (= (foo!60 thiss!11225 0) (y!2440 thiss!11225))))

(assert (=> b!93444 d!61073))

(declare-fun d!61075 () Bool)

(assert (=> d!61075 (= (inv!34 thiss!11224) (not (= (y!2440 thiss!11224) 0)))))

(assert (=> b!93429 d!61075))

(declare-fun d!61077 () Bool)

(assert (=> d!61077 (= (foo!61 thiss!11225 0) (y!2439 thiss!11225))))

(assert (=> b!93441 d!61077))

(declare-fun d!61079 () Bool)

(assert (=> d!61079 (= (inv!34 thiss!11225) (not (= (y!2440 thiss!11225) 0)))))

(assert (=> b!93432 d!61079))

(declare-fun d!61081 () Bool)

(assert (=> d!61081 true))

(assert (=> d!61081 true))

(declare-fun res!49112 () Int)

(assert (=> d!61081 (= (foo!100 thiss!11225 0) res!49112)))

(assert (=> b!93443 d!61081))

(declare-fun d!61083 () Bool)

(assert (=> d!61083 (= (inv!35 thiss!11225) (= (y!2439 thiss!11225) 0))))

(assert (=> b!93430 d!61083))

(declare-fun d!61085 () Bool)

(assert (=> d!61085 (= (inv!35 thiss!11224) (= (y!2439 thiss!11224) 0))))

(assert (=> b!93427 d!61085))

(push 1)

(check-sat)

(get-model)

(pop 1)


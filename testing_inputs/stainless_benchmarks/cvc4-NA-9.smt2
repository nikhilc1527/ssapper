; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!48 () Bool)

(assert start!48)

(declare-fun b!334 () Bool)

(declare-fun e!167 () Bool)

(declare-fun e!164 () Bool)

(assert (=> b!334 (= e!167 e!164)))

(declare-fun b!332 () Bool)

(declare-fun e!165 () Bool)

(declare-fun e!166 () Bool)

(assert (=> b!332 (= e!165 e!166)))

(declare-fun tp!49 () Bool)

(declare-datatypes () ((Option!20 (Some!21 (v!144 Foo!14)) (None!21)) (Foo!14 (Bar!9 (bar!41 Option!20)) (FooExt!1 (__x!3 Int)))))

(declare-fun thiss!56 () Foo!14)

(declare-fun lt!18 () Foo!14)

(declare-fun b!335 () Bool)

(declare-fun inv!60 (Foo!14) Bool)

(assert (=> b!335 (= e!164 (and (inv!60 (v!144 (bar!41 thiss!56))) tp!49 (is-Bar!9 lt!18)))))

(assert (=> b!335 (= lt!18 (v!144 (bar!41 thiss!56)))))

(declare-fun thiss!55 () Foo!14)

(assert (=> start!48 (and (is-Bar!9 thiss!55) (= thiss!56 thiss!55) (not (is-Bar!9 thiss!56)))))

(assert (=> start!48 (and (inv!60 thiss!55) e!165)))

(assert (=> start!48 (and (inv!60 thiss!56) e!167)))

(declare-fun lt!17 () Foo!14)

(declare-fun b!333 () Bool)

(declare-fun tp!48 () Bool)

(assert (=> b!333 (= e!166 (and (inv!60 (v!144 (bar!41 thiss!55))) tp!48 (is-Bar!9 lt!17)))))

(assert (=> b!333 (= lt!17 (v!144 (bar!41 thiss!55)))))

(assert (= (and b!332 (is-Some!21 (bar!41 thiss!55))) b!333))

(assert (= (and start!48 (is-Bar!9 thiss!55)) b!332))

(assert (= (and b!334 (is-Some!21 (bar!41 thiss!56))) b!335))

(assert (= (and start!48 (is-Bar!9 thiss!56)) b!334))

(declare-fun m!185 () Bool)

(assert (=> b!335 m!185))

(declare-fun m!187 () Bool)

(assert (=> start!48 m!187))

(declare-fun m!189 () Bool)

(assert (=> start!48 m!189))

(declare-fun m!191 () Bool)

(assert (=> b!333 m!191))

(push 1)

(assert (not start!48))

(assert (not b!333))

(assert (not b!335))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


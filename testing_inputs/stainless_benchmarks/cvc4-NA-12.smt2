; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!64 () Bool)

(assert start!64)

(assert (=> start!64 false))

(declare-datatypes () ((Option!23 (Some!24 (v!147 Foo!17)) (None!24)) (Foo!17 (Bar!12 (bar!44 Option!23)) (FooExt!4 (__x!6 Int)))))

(declare-fun thiss!62 () Foo!17)

(declare-fun e!209 () Bool)

(declare-fun inv!60 (Foo!17) Bool)

(assert (=> start!64 (and (inv!60 thiss!62) e!209)))

(declare-fun tp!66 () Bool)

(declare-fun lt!35 () Foo!17)

(declare-fun e!210 () Bool)

(declare-fun b!380 () Bool)

(assert (=> b!380 (= e!210 (and (inv!60 (v!147 (bar!44 thiss!62))) tp!66 (is-Bar!12 lt!35)))))

(assert (=> b!380 (= lt!35 (v!147 (bar!44 thiss!62)))))

(declare-fun b!379 () Bool)

(assert (=> b!379 (= e!209 e!210)))

(assert (= (and b!379 (is-Some!24 (bar!44 thiss!62))) b!380))

(assert (= (and start!64 (is-Bar!12 thiss!62)) b!379))

(declare-fun m!231 () Bool)

(assert (=> start!64 m!231))

(declare-fun m!233 () Bool)

(assert (=> b!380 m!233))

(push 1)

(assert (not b!380))

(assert (not start!64))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!66 () Bool)

(assert start!66)

(declare-fun b!390 () Bool)

(declare-fun e!221 () Bool)

(declare-fun tp!71 () Bool)

(declare-datatypes () ((Option!24 (Some!25 (v!148 Foo!18)) (None!25)) (Foo!18 (Bar!13 (bar!45 Option!24)) (FooExt!5 (__x!7 Int)))))

(declare-fun thiss!62 () Foo!18)

(declare-fun lt!41 () Foo!18)

(declare-fun inv!60 (Foo!18) Bool)

(assert (=> b!390 (= e!221 (and (inv!60 (v!148 (bar!45 thiss!62))) tp!71 (is-Bar!13 lt!41)))))

(assert (=> b!390 (= lt!41 (v!148 (bar!45 thiss!62)))))

(declare-fun b!391 () Bool)

(declare-fun e!220 () Bool)

(declare-fun e!222 () Bool)

(assert (=> b!391 (= e!220 e!222)))

(declare-fun lt!40 () Foo!18)

(declare-fun b!392 () Bool)

(declare-fun tp!72 () Bool)

(declare-fun v!126 () Foo!18)

(assert (=> b!392 (= e!222 (and (inv!60 (v!148 (bar!45 v!126))) tp!72 (is-Bar!13 lt!40)))))

(assert (=> b!392 (= lt!40 (v!148 (bar!45 v!126)))))

(declare-fun b!389 () Bool)

(declare-fun e!219 () Bool)

(assert (=> b!389 (= e!219 e!221)))

(assert (=> start!66 false))

(assert (=> start!66 (and (inv!60 thiss!62) e!219)))

(assert (=> start!66 (and (inv!60 v!126) e!220)))

(assert (= (and b!389 (is-Some!25 (bar!45 thiss!62))) b!390))

(assert (= (and start!66 (is-Bar!13 thiss!62)) b!389))

(assert (= (and b!391 (is-Some!25 (bar!45 v!126))) b!392))

(assert (= (and start!66 (is-Bar!13 v!126)) b!391))

(declare-fun m!235 () Bool)

(assert (=> b!390 m!235))

(declare-fun m!237 () Bool)

(assert (=> b!392 m!237))

(declare-fun m!239 () Bool)

(assert (=> start!66 m!239))

(declare-fun m!241 () Bool)

(assert (=> start!66 m!241))

(push 1)

(assert (not b!392))

(assert (not start!66))

(assert (not b!390))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


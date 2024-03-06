; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!62 () Bool)

(assert start!62)

(declare-fun b!371 () Bool)

(declare-fun e!201 () Bool)

(declare-fun e!202 () Bool)

(assert (=> b!371 (= e!201 e!202)))

(declare-fun b!372 () Bool)

(declare-datatypes () ((Option!22 (Some!23 (v!146 Foo!16)) (None!23)) (Foo!16 (Bar!11 (bar!43 Option!22)) (FooExt!3 (__x!5 Int)))))

(declare-fun lt!31 () Foo!16)

(declare-fun tp!63 () Bool)

(declare-fun thiss!62 () Foo!16)

(declare-fun inv!60 (Foo!16) Bool)

(assert (=> b!372 (= e!202 (and (inv!60 (v!146 (bar!43 thiss!62))) tp!63 (is-Bar!11 lt!31)))))

(assert (=> b!372 (= lt!31 (v!146 (bar!43 thiss!62)))))

(declare-fun thiss!63 () Foo!16)

(assert (=> start!62 (and (not (is-Bar!11 thiss!62)) (= thiss!63 thiss!62) (not (is-FooExt!3 thiss!63)))))

(assert (=> start!62 (and (inv!60 thiss!62) e!201)))

(declare-fun e!203 () Bool)

(assert (=> start!62 (and (inv!60 thiss!63) e!203)))

(declare-fun b!374 () Bool)

(declare-fun lt!32 () Foo!16)

(declare-fun tp!62 () Bool)

(declare-fun e!204 () Bool)

(assert (=> b!374 (= e!204 (and (inv!60 (v!146 (bar!43 thiss!63))) tp!62 (is-Bar!11 lt!32)))))

(assert (=> b!374 (= lt!32 (v!146 (bar!43 thiss!63)))))

(declare-fun b!373 () Bool)

(assert (=> b!373 (= e!203 e!204)))

(assert (= (and b!371 (is-Some!23 (bar!43 thiss!62))) b!372))

(assert (= (and start!62 (is-Bar!11 thiss!62)) b!371))

(assert (= (and b!373 (is-Some!23 (bar!43 thiss!63))) b!374))

(assert (= (and start!62 (is-Bar!11 thiss!63)) b!373))

(declare-fun m!223 () Bool)

(assert (=> b!372 m!223))

(declare-fun m!225 () Bool)

(assert (=> start!62 m!225))

(declare-fun m!227 () Bool)

(assert (=> start!62 m!227))

(declare-fun m!229 () Bool)

(assert (=> b!374 m!229))

(push 1)

(assert (not start!62))

(assert (not b!372))

(assert (not b!374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


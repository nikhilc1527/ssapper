; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12478 () Bool)

(assert start!12478)

(declare-fun b!91969 () Bool)

(declare-fun e!50347 () Bool)

(declare-fun tp_is_empty!505 () Bool)

(assert (=> b!91969 (= e!50347 tp_is_empty!505)))

(declare-fun b!91970 () Bool)

(declare-fun e!50346 () Bool)

(assert (=> b!91970 (= e!50346 tp_is_empty!505)))

(declare-datatypes () ((B!773 (B!774 (val!250 Int)))))

(declare-datatypes () ((Foo!110 (Bar!72 (thisIsIt!31 Int) (weird!44 B!773)) (Baz!66 (weird!45 B!773)) (FooExt!25 (__x!345 Int) (thisIsIt!32 Int) (weird!46 B!773)))))

(declare-fun thiss!10853 () Foo!110)

(declare-fun thiss!10856 () Foo!110)

(assert (=> start!12478 (and (not (is-Bar!72 thiss!10853)) (is-Baz!66 thiss!10853) (= thiss!10856 thiss!10853) (not (is-Baz!66 thiss!10856)))))

(assert (=> start!12478 e!50346))

(assert (=> start!12478 e!50347))

(declare-fun b!91971 () Bool)

(assert (=> b!91971 (= e!50347 tp_is_empty!505)))

(declare-fun b!91972 () Bool)

(assert (=> b!91972 (= e!50346 tp_is_empty!505)))

(declare-fun b!91973 () Bool)

(assert (=> b!91973 (= e!50347 tp_is_empty!505)))

(declare-fun b!91974 () Bool)

(assert (=> b!91974 (= e!50346 tp_is_empty!505)))

(assert (= (and start!12478 (is-Bar!72 thiss!10853)) b!91974))

(assert (= (and start!12478 (is-Baz!66 thiss!10853)) b!91970))

(assert (= (and start!12478 (is-FooExt!25 thiss!10853)) b!91972))

(assert (= (and start!12478 (is-Bar!72 thiss!10856)) b!91973))

(assert (= (and start!12478 (is-Baz!66 thiss!10856)) b!91971))

(assert (= (and start!12478 (is-FooExt!25 thiss!10856)) b!91969))

(push 1)

(assert tp_is_empty!505)

(check-sat)

(pop 1)


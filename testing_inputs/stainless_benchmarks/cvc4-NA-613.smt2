; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4460 () Bool)

(assert start!4460)

(declare-datatypes () ((B!437 (B!438 (val!120 Int)))))

(declare-datatypes () ((Foo!37 (Baz!10 (weird!22 B!437)) (Bar!16 (thisIsIt!14 Int) (weird!23 B!437)))))

(declare-fun thiss!4005 () Foo!37)

(declare-fun thiss!4008 () Foo!37)

(assert (=> start!4460 (and (not (is-Baz!10 thiss!4005)) (= thiss!4008 thiss!4005) (not (is-Bar!16 thiss!4008)))))

(declare-fun e!17601 () Bool)

(assert (=> start!4460 e!17601))

(declare-fun e!17602 () Bool)

(assert (=> start!4460 e!17602))

(declare-fun b!34857 () Bool)

(declare-fun tp_is_empty!239 () Bool)

(assert (=> b!34857 (= e!17602 tp_is_empty!239)))

(declare-fun b!34858 () Bool)

(assert (=> b!34858 (= e!17602 tp_is_empty!239)))

(declare-fun b!34855 () Bool)

(assert (=> b!34855 (= e!17601 tp_is_empty!239)))

(declare-fun b!34856 () Bool)

(assert (=> b!34856 (= e!17601 tp_is_empty!239)))

(assert (= (and start!4460 (is-Baz!10 thiss!4005)) b!34855))

(assert (= (and start!4460 (is-Bar!16 thiss!4005)) b!34856))

(assert (= (and start!4460 (is-Baz!10 thiss!4008)) b!34857))

(assert (= (and start!4460 (is-Bar!16 thiss!4008)) b!34858))

(push 1)

(assert tp_is_empty!239)

(check-sat)

(pop 1)


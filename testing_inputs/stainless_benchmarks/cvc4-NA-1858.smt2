; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12480 () Bool)

(assert start!12480)

(declare-fun b!91987 () Bool)

(declare-fun e!50353 () Bool)

(declare-fun tp_is_empty!507 () Bool)

(assert (=> b!91987 (= e!50353 tp_is_empty!507)))

(declare-fun b!91988 () Bool)

(declare-fun e!50352 () Bool)

(assert (=> b!91988 (= e!50352 tp_is_empty!507)))

(declare-fun b!91989 () Bool)

(assert (=> b!91989 (= e!50352 tp_is_empty!507)))

(declare-fun b!91990 () Bool)

(assert (=> b!91990 (= e!50353 tp_is_empty!507)))

(declare-fun b!91991 () Bool)

(assert (=> b!91991 (= e!50353 tp_is_empty!507)))

(declare-fun b!91992 () Bool)

(assert (=> b!91992 (= e!50352 tp_is_empty!507)))

(declare-datatypes () ((B!775 (B!776 (val!251 Int)))))

(declare-datatypes () ((Foo!111 (Bar!73 (thisIsIt!33 Int) (weird!47 B!775)) (Baz!67 (weird!48 B!775)) (FooExt!26 (__x!346 Int) (thisIsIt!34 Int) (weird!49 B!775)))))

(declare-fun thiss!10853 () Foo!111)

(declare-fun thiss!10858 () Foo!111)

(assert (=> start!12480 (and (not (is-Bar!73 thiss!10853)) (not (is-Baz!67 thiss!10853)) (= thiss!10858 thiss!10853) (not (is-FooExt!26 thiss!10858)))))

(assert (=> start!12480 e!50352))

(assert (=> start!12480 e!50353))

(assert (= (and start!12480 (is-Bar!73 thiss!10853)) b!91992))

(assert (= (and start!12480 (is-Baz!67 thiss!10853)) b!91988))

(assert (= (and start!12480 (is-FooExt!26 thiss!10853)) b!91989))

(assert (= (and start!12480 (is-Bar!73 thiss!10858)) b!91987))

(assert (= (and start!12480 (is-Baz!67 thiss!10858)) b!91990))

(assert (= (and start!12480 (is-FooExt!26 thiss!10858)) b!91991))

(push 1)

(assert tp_is_empty!507)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8282 () Bool)

(assert start!8282)

(declare-fun res!27091 () Bool)

(declare-fun e!31141 () Bool)

(assert (=> start!8282 (=> (not res!27091) (not e!31141))))

(declare-datatypes () ((Monoid!21 (ListMonoid!13) (MonoidExt!13 (__x!245 Int)))))

(declare-fun thiss!8573 () Monoid!21)

(assert (=> start!8282 (= res!27091 (is-ListMonoid!13 thiss!8573))))

(assert (=> start!8282 e!31141))

(assert (=> start!8282 true))

(declare-fun b!58506 () Bool)

(declare-fun res!27092 () Bool)

(assert (=> b!58506 (=> (not res!27092) (not e!31141))))

(declare-datatypes () ((List!482 (Cons!457 (h!696 Int) (t!47137 List!482)) (Nil!458))))

(declare-fun zs!8 () List!482)

(declare-datatypes () ((ProofOps!334 (ProofOps!335 (prop!391 Bool)))))

(declare-fun thiss!8575 () ProofOps!334)

(declare-fun xxs!1 () List!482)

(declare-fun ys!180 () List!482)

(declare-fun append!10 (Monoid!21 List!482 List!482) List!482)

(assert (=> b!58506 (= res!27092 (= thiss!8575 (ProofOps!335 (= (append!10 thiss!8573 (append!10 thiss!8573 xxs!1 ys!180) zs!8) (append!10 thiss!8573 xxs!1 (append!10 thiss!8573 ys!180 zs!8))))))))

(declare-fun thiss!8585 () Monoid!21)

(declare-fun zs!9 () List!482)

(declare-fun b!58507 () Bool)

(declare-fun xxs!2 () List!482)

(declare-fun ys!181 () List!482)

(assert (=> b!58507 (= e!31141 (and (not (is-Nil!458 xxs!1)) (= thiss!8585 thiss!8573) (= xxs!2 (t!47137 xxs!1)) (= ys!181 ys!180) (= zs!9 zs!8) (not (is-ListMonoid!13 thiss!8585))))))

(assert (= (and start!8282 res!27091) b!58506))

(assert (= (and b!58506 res!27092) b!58507))

(declare-fun m!63076 () Bool)

(assert (=> b!58506 m!63076))

(assert (=> b!58506 m!63076))

(declare-fun m!63078 () Bool)

(assert (=> b!58506 m!63078))

(declare-fun m!63080 () Bool)

(assert (=> b!58506 m!63080))

(assert (=> b!58506 m!63080))

(declare-fun m!63082 () Bool)

(assert (=> b!58506 m!63082))

(push 1)

(assert (not b!58506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


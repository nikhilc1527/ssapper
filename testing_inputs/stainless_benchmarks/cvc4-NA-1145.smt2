; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8284 () Bool)

(assert start!8284)

(declare-fun res!27097 () Bool)

(declare-fun e!31144 () Bool)

(assert (=> start!8284 (=> (not res!27097) (not e!31144))))

(declare-datatypes () ((Monoid!22 (ListMonoid!14) (MonoidExt!14 (__x!246 Int)))))

(declare-fun thiss!8573 () Monoid!22)

(assert (=> start!8284 (= res!27097 (is-ListMonoid!14 thiss!8573))))

(assert (=> start!8284 e!31144))

(assert (=> start!8284 true))

(declare-fun b!58512 () Bool)

(declare-fun res!27098 () Bool)

(assert (=> b!58512 (=> (not res!27098) (not e!31144))))

(declare-datatypes () ((List!483 (Cons!458 (h!697 Int) (t!47138 List!483)) (Nil!459))))

(declare-fun zs!8 () List!483)

(declare-datatypes () ((ProofOps!336 (ProofOps!337 (prop!392 Bool)))))

(declare-fun thiss!8575 () ProofOps!336)

(declare-fun xxs!1 () List!483)

(declare-fun ys!180 () List!483)

(declare-fun append!10 (Monoid!22 List!483 List!483) List!483)

(assert (=> b!58512 (= res!27098 (= thiss!8575 (ProofOps!337 (= (append!10 thiss!8573 (append!10 thiss!8573 xxs!1 ys!180) zs!8) (append!10 thiss!8573 xxs!1 (append!10 thiss!8573 ys!180 zs!8))))))))

(declare-fun b!58513 () Bool)

(assert (=> b!58513 (= e!31144 false)))

(assert (= (and start!8284 res!27097) b!58512))

(assert (= (and b!58512 res!27098) b!58513))

(declare-fun m!63084 () Bool)

(assert (=> b!58512 m!63084))

(assert (=> b!58512 m!63084))

(declare-fun m!63086 () Bool)

(assert (=> b!58512 m!63086))

(declare-fun m!63088 () Bool)

(assert (=> b!58512 m!63088))

(assert (=> b!58512 m!63088))

(declare-fun m!63090 () Bool)

(assert (=> b!58512 m!63090))

(push 1)

(assert (not b!58512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7296 () Bool)

(assert start!7296)

(declare-fun res!24057 () Bool)

(declare-fun e!27522 () Bool)

(assert (=> start!7296 (=> (not res!24057) (not e!27522))))

(declare-fun x!20529 () Int)

(declare-datatypes () ((Test!10 (FooBarBaz!8 (a!615 Int) (l!1033 Int)) (TestExt!6 (__x!83 Int)))))

(declare-fun abc!29 () Test!10)

(declare-fun l!1023 () Int)

(assert (=> start!7296 (= res!24057 (and (> l!1023 1) (= abc!29 (FooBarBaz!8 x!20529 l!1023))))))

(assert (=> start!7296 e!27522))

(assert (=> start!7296 true))

(declare-fun inv!926 (Test!10) Bool)

(assert (=> start!7296 (inv!926 abc!29)))

(declare-fun b!52967 () Bool)

(assert (=> b!52967 (= e!27522 (not (inv!926 (FooBarBaz!8 (a!615 abc!29) l!1023))))))

(assert (= (and start!7296 res!24057) b!52967))

(declare-fun m!56991 () Bool)

(assert (=> start!7296 m!56991))

(declare-fun m!56993 () Bool)

(assert (=> b!52967 m!56993))

(push 1)

(assert (not start!7296))

(assert (not b!52967))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


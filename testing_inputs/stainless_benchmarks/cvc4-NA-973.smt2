; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7316 () Bool)

(assert start!7316)

(declare-fun res!24066 () Bool)

(declare-fun e!27550 () Bool)

(assert (=> start!7316 (=> (not res!24066) (not e!27550))))

(declare-fun m!57007 () Int)

(declare-fun l!1048 () Int)

(declare-fun o!9 () Int)

(assert (=> start!7316 (= res!24066 (and (> l!1048 1) (> m!57007 2) (> o!9 3)))))

(assert (=> start!7316 e!27550))

(assert (=> start!7316 true))

(declare-fun x!20585 () Bool)

(declare-fun y!1582 () Bool)

(declare-fun b!52977 () Bool)

(declare-fun z!198 () Bool)

(declare-datatypes () ((Test!17 (FooBarBaz!13 (a!630 Bool) (b!52978 Bool) (c!11518 Bool) (l!1060 Int) (m!57026 Int) (o!15 Int)) (TestExt!13 (__x!94 Int)))))

(declare-fun inv!942 (Test!17) Bool)

(assert (=> b!52977 (= e!27550 (not (inv!942 (FooBarBaz!13 x!20585 y!1582 z!198 l!1048 m!57007 o!9))))))

(assert (= (and start!7316 res!24066) b!52977))

(declare-fun m!57025 () Bool)

(assert (=> b!52977 m!57025))

(push 1)

(assert (not b!52977))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44557 () Bool)

(declare-fun res!24069 () Bool)

(declare-fun e!27553 () Bool)

(assert (=> d!44557 (=> res!24069 e!27553)))

(assert (=> d!44557 (= res!24069 (not (is-FooBarBaz!13 (FooBarBaz!13 x!20585 y!1582 z!198 l!1048 m!57007 o!9))))))

(assert (=> d!44557 (= (inv!942 (FooBarBaz!13 x!20585 y!1582 z!198 l!1048 m!57007 o!9)) e!27553)))

(declare-fun b!52981 () Bool)

(declare-fun inv!941 (Test!17) Bool)

(assert (=> b!52981 (= e!27553 (inv!941 (FooBarBaz!13 x!20585 y!1582 z!198 l!1048 m!57007 o!9)))))

(assert (= (and d!44557 (not res!24069)) b!52981))

(declare-fun m!57028 () Bool)

(assert (=> b!52981 m!57028))

(assert (=> b!52977 d!44557))

(push 1)

(assert (not b!52981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44559 () Bool)

(assert (=> d!44559 (= (inv!941 (FooBarBaz!13 x!20585 y!1582 z!198 l!1048 m!57007 o!9)) (and (> (l!1060 (FooBarBaz!13 x!20585 y!1582 z!198 l!1048 m!57007 o!9)) 1) (> (m!57026 (FooBarBaz!13 x!20585 y!1582 z!198 l!1048 m!57007 o!9)) 2) (> (o!15 (FooBarBaz!13 x!20585 y!1582 z!198 l!1048 m!57007 o!9)) 3)))))

(assert (=> b!52981 d!44559))

(push 1)

(check-sat)

(pop 1)


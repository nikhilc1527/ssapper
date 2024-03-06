; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7288 () Bool)

(assert start!7288)

(declare-fun res!24051 () Bool)

(declare-fun e!27511 () Bool)

(assert (=> start!7288 (=> (not res!24051) (not e!27511))))

(declare-fun l!1023 () Int)

(assert (=> start!7288 (= res!24051 (> l!1023 1))))

(assert (=> start!7288 e!27511))

(assert (=> start!7288 true))

(declare-fun b!52961 () Bool)

(declare-fun x!20529 () Int)

(declare-datatypes () ((Test!8 (FooBarBaz!6 (a!613 Int) (l!1031 Int)) (TestExt!4 (__x!81 Int)))))

(declare-fun inv!926 (Test!8) Bool)

(assert (=> b!52961 (= e!27511 (not (inv!926 (FooBarBaz!6 x!20529 l!1023))))))

(assert (= (and start!7288 res!24051) b!52961))

(declare-fun m!56985 () Bool)

(assert (=> b!52961 m!56985))

(push 1)

(assert (not b!52961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44547 () Bool)

(declare-fun res!24054 () Bool)

(declare-fun e!27514 () Bool)

(assert (=> d!44547 (=> res!24054 e!27514)))

(assert (=> d!44547 (= res!24054 (not (is-FooBarBaz!6 (FooBarBaz!6 x!20529 l!1023))))))

(assert (=> d!44547 (= (inv!926 (FooBarBaz!6 x!20529 l!1023)) e!27514)))

(declare-fun b!52964 () Bool)

(declare-fun inv!925 (Test!8) Bool)

(assert (=> b!52964 (= e!27514 (inv!925 (FooBarBaz!6 x!20529 l!1023)))))

(assert (= (and d!44547 (not res!24054)) b!52964))

(declare-fun m!56987 () Bool)

(assert (=> b!52964 m!56987))

(assert (=> b!52961 d!44547))

(push 1)

(assert (not b!52964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44549 () Bool)

(assert (=> d!44549 (= (inv!925 (FooBarBaz!6 x!20529 l!1023)) (> (l!1031 (FooBarBaz!6 x!20529 l!1023)) 1))))

(assert (=> b!52964 d!44549))

(push 1)

(check-sat)

(pop 1)


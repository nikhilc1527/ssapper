; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7350 () Bool)

(assert start!7350)

(declare-fun b_free!7231 () Bool)

(declare-fun b_next!38541 () Bool)

(assert (=> start!7350 (= b_free!7231 (not b_next!38541))))

(declare-fun tp!14966 () Bool)

(declare-fun b_and!58205 () Bool)

(assert (=> start!7350 (= tp!14966 b_and!58205)))

(declare-fun b_free!7233 () Bool)

(declare-fun b_next!38543 () Bool)

(assert (=> start!7350 (= b_free!7233 (not b_next!38543))))

(declare-fun tp!14965 () Bool)

(declare-fun b_and!58207 () Bool)

(assert (=> start!7350 (= tp!14965 b_and!58207)))

(assert (=> start!7350 false))

(assert (=> start!7350 tp!14966))

(assert (=> start!7350 tp!14965))

(declare-datatypes () ((String!654 (String!655 (value!3573 String)))))

(declare-datatypes () ((List!422 (Cons!408 (h!615 Object!221) (t!46699 List!422)) (Nil!409)) (Object!221 (TestExt!24 (__x!124 Int)) (FooBar!2 (bar!60 Object!221) (baz!15 Object!221) (b!53005 Int) (x!20941 Object!221) (y!1605 Int)) (Option!254 (value!3574 Option!253)) (List!423 (value!3575 List!422)) (Boolean!210 (value!3576 Bool)) (String!656 (value!3577 String!654)) (Open!221 (value!3578 Int))) (Option!253 (Some!257 (v!2000 Object!221)) (None!258))))

(declare-fun lt!9258 () Object!221)

(declare-fun x!20907 () Object!221)

(assert (=> start!7350 (= lt!9258 x!20907)))

(declare-fun e!27582 () Bool)

(declare-fun Foo!84 () Int)

(declare-fun dynLambda!890 (Int Object!221) Bool)

(assert (=> start!7350 (and e!27582 (dynLambda!890 Foo!84 lt!9258))))

(assert (=> start!7350 true))

(declare-fun b!53003 () Bool)

(declare-fun tp!14963 () Bool)

(declare-fun tp!14964 () Bool)

(declare-fun tp!14962 () Bool)

(assert (=> b!53003 (= e!27582 (and tp!14962 tp!14963 tp!14964))))

(declare-fun b!53004 () Bool)

(declare-fun inv!959 (String!654) Bool)

(assert (=> b!53004 (= e!27582 (inv!959 (value!3577 x!20907)))))

(assert (= (and start!7350 (is-FooBar!2 x!20907)) b!53003))

(assert (= (and start!7350 (is-String!656 x!20907)) b!53004))

(declare-fun b_lambda!14553 () Bool)

(assert (=> (not b_lambda!14553) (not start!7350)))

(declare-fun t!46696 () Bool)

(declare-fun tb!45785 () Bool)

(declare-fun A!1836 () Int)

(assert (=> (and start!7350 (= A!1836 Foo!84) t!46696) tb!45785))

(declare-fun result!46073 () Bool)

(assert (=> tb!45785 (= result!46073 true)))

(assert (=> start!7350 t!46696))

(declare-fun b_and!58209 () Bool)

(assert (= b_and!58205 (and (=> t!46696 result!46073) b_and!58209)))

(declare-fun t!46698 () Bool)

(declare-fun tb!45787 () Bool)

(assert (=> (and start!7350 (= Foo!84 Foo!84) t!46698) tb!45787))

(declare-fun result!46075 () Bool)

(assert (=> tb!45787 (= result!46075 true)))

(assert (=> start!7350 t!46698))

(declare-fun b_and!58211 () Bool)

(assert (= b_and!58207 (and (=> t!46698 result!46075) b_and!58211)))

(declare-fun m!57054 () Bool)

(assert (=> start!7350 m!57054))

(declare-fun m!57056 () Bool)

(assert (=> b!53004 m!57056))

(push 1)

(assert b_and!58209)

(assert (not b_next!38543))

(assert (not b_next!38541))

(assert b_and!58211)

(assert (not b!53004))

(assert (not b!53003))

(assert (not b_lambda!14553))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58209)

(assert b_and!58211)

(assert (not b_next!38543))

(assert (not b_next!38541))

(check-sat)

(pop 1)


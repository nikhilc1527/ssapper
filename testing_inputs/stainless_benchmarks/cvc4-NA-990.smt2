; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7372 () Bool)

(assert start!7372)

(declare-fun b_free!7235 () Bool)

(declare-fun b_next!38545 () Bool)

(assert (=> start!7372 (= b_free!7235 (not b_next!38545))))

(declare-fun tp!15026 () Bool)

(declare-fun b_and!58213 () Bool)

(assert (=> start!7372 (= tp!15026 b_and!58213)))

(declare-fun b_free!7237 () Bool)

(declare-fun b_next!38547 () Bool)

(assert (=> start!7372 (= b_free!7237 (not b_next!38547))))

(declare-fun tp!15027 () Bool)

(declare-fun b_and!58215 () Bool)

(assert (=> start!7372 (= tp!15027 b_and!58215)))

(declare-fun b_free!7239 () Bool)

(declare-fun b_next!38549 () Bool)

(assert (=> start!7372 (= b_free!7239 (not b_next!38549))))

(declare-fun tp!15018 () Bool)

(declare-fun b_and!58217 () Bool)

(assert (=> start!7372 (= tp!15018 b_and!58217)))

(declare-fun lambda!8585 () Int)

(declare-fun b!53070 () Bool)

(declare-fun Bar!53 () Int)

(declare-fun b_next!38551 () Bool)

(assert (=> start!7372 (= b_next!38545 (or (and b!53070 (= lambda!8585 Bar!53)) b_next!38551))))

(declare-fun b_next!38553 () Bool)

(declare-fun Foo!81 () Int)

(assert (=> start!7372 (= b_next!38547 (or (and b!53070 (= lambda!8585 Foo!81)) b_next!38553))))

(declare-fun b_next!38555 () Bool)

(declare-fun Foo!80 () Int)

(assert (=> start!7372 (= b_next!38549 (or (and b!53070 (= lambda!8585 Foo!80)) b_next!38555))))

(declare-fun lambda!8584 () Int)

(assert (=> b!53070 (not (= lambda!8584 lambda!8585))))

(declare-fun b_next!38557 () Bool)

(assert (=> start!7372 (= b_next!38551 (or (and b!53070 (= lambda!8584 Bar!53)) b_next!38557))))

(declare-fun b_next!38559 () Bool)

(assert (=> start!7372 (= b_next!38553 (or (and b!53070 (= lambda!8584 Foo!81)) b_next!38559))))

(declare-fun b_next!38561 () Bool)

(assert (=> start!7372 (= b_next!38555 (or (and b!53070 (= lambda!8584 Foo!80)) b_next!38561))))

(declare-fun res!24139 () Bool)

(declare-fun e!27632 () Bool)

(assert (=> b!53070 (=> (not res!24139) (not e!27632))))

(assert (=> b!53070 (= res!24139 (= Bar!53 lambda!8584))))

(declare-fun tp!15029 () Bool)

(declare-fun tp!15024 () Bool)

(declare-fun tp!15020 () Bool)

(declare-fun e!27630 () Bool)

(declare-fun b!53071 () Bool)

(assert (=> b!53071 (= e!27630 (and tp!15020 tp!15024 tp!15029))))

(declare-fun b!53072 () Bool)

(declare-fun res!24136 () Bool)

(assert (=> b!53072 (=> (not res!24136) (not e!27632))))

(declare-fun y!1594 () Int)

(assert (=> b!53072 (= res!24136 (and (= y!1594 0) (= Foo!81 Foo!80)))))

(declare-fun b!53073 () Bool)

(declare-fun e!27629 () Bool)

(declare-datatypes () ((String!660 (String!661 (value!3585 String)))))

(declare-datatypes () ((List!426 (Cons!410 (h!617 Object!223) (t!46737 List!426)) (Nil!411)) (Object!223 (TestExt!26 (__x!126 Int)) (FooBar!4 (bar!62 Object!223) (baz!17 Object!223) (b!53082 Int) (x!21136 Object!223) (y!1610 Int)) (Option!259 (value!3586 Option!258)) (List!427 (value!3587 List!426)) (Boolean!212 (value!3588 Bool)) (String!662 (value!3589 String!660)) (Open!223 (value!3590 Int))) (Option!258 (Some!260 (v!2003 Object!223)) (None!261))))

(declare-fun x!20865 () Object!223)

(declare-fun inv!959 (String!660) Bool)

(assert (=> b!53073 (= e!27629 (inv!959 (value!3589 x!20865)))))

(declare-fun b!53074 () Bool)

(declare-fun a!640 () Object!223)

(declare-fun b!52994 () Int)

(assert (=> b!53074 (= e!27632 (and (= a!640 (List!427 (Cons!410 (Boolean!212 true) (Cons!410 (Boolean!212 false) Nil!411)))) (= b!52994 3) (<= b!52994 2)))))

(declare-fun b!53075 () Bool)

(declare-fun res!24138 () Bool)

(assert (=> b!53075 (=> (not res!24138) (not e!27632))))

(declare-fun y!1595 () Int)

(declare-fun x!20862 () Object!223)

(assert (=> b!53075 (= res!24138 (and (= x!20865 x!20862) (= y!1595 y!1594)))))

(declare-fun b!53076 () Bool)

(declare-fun res!24140 () Bool)

(assert (=> b!53076 (=> (not res!24140) (not e!27632))))

(declare-fun dynLambda!893 (Int Object!223) Bool)

(assert (=> b!53076 (= res!24140 (dynLambda!893 Bar!53 a!640))))

(declare-fun b!53077 () Bool)

(declare-fun e!27626 () Bool)

(assert (=> b!53077 (= e!27626 (inv!959 (value!3589 x!20862)))))

(declare-fun res!24137 () Bool)

(assert (=> start!7372 (=> (not res!24137) (not e!27632))))

(assert (=> start!7372 (= res!24137 (dynLambda!893 Foo!80 x!20862))))

(assert (=> start!7372 e!27632))

(declare-fun lt!9285 () Object!223)

(assert (=> start!7372 (= lt!9285 a!640)))

(assert (=> start!7372 (and e!27630 (dynLambda!893 Bar!53 lt!9285))))

(assert (=> start!7372 true))

(assert (=> start!7372 tp!15026))

(assert (=> start!7372 tp!15027))

(declare-fun lt!9284 () Object!223)

(assert (=> start!7372 (= lt!9284 x!20862)))

(assert (=> start!7372 (and e!27626 (dynLambda!893 Foo!80 lt!9284))))

(assert (=> start!7372 tp!15018))

(declare-fun lt!9283 () Object!223)

(assert (=> start!7372 (= lt!9283 x!20865)))

(assert (=> start!7372 (and e!27629 (dynLambda!893 Foo!81 lt!9283))))

(declare-fun tp!15022 () Bool)

(declare-fun tp!15019 () Bool)

(declare-fun b!53078 () Bool)

(declare-fun tp!15021 () Bool)

(assert (=> b!53078 (= e!27629 (and tp!15019 tp!15021 tp!15022))))

(declare-fun tp!15025 () Bool)

(declare-fun b!53079 () Bool)

(declare-fun tp!15028 () Bool)

(declare-fun tp!15023 () Bool)

(assert (=> b!53079 (= e!27626 (and tp!15023 tp!15028 tp!15025))))

(declare-fun b!53080 () Bool)

(declare-fun res!24141 () Bool)

(assert (=> b!53080 (=> (not res!24141) (not e!27632))))

(assert (=> b!53080 (= res!24141 (dynLambda!893 Foo!81 x!20865))))

(declare-fun b!53081 () Bool)

(assert (=> b!53081 (= e!27630 (inv!959 (value!3589 a!640)))))

(assert (= (and start!7372 res!24137) b!53072))

(assert (= (and b!53072 res!24136) b!53080))

(assert (= (and b!53080 res!24141) b!53075))

(assert (= (and b!53075 res!24138) b!53070))

(assert (= (and b!53070 res!24139) b!53076))

(assert (= (and b!53076 res!24140) b!53074))

(assert (= (and start!7372 (is-FooBar!4 a!640)) b!53071))

(assert (= (and start!7372 (is-String!662 a!640)) b!53081))

(assert (= (and start!7372 (is-FooBar!4 x!20862)) b!53079))

(assert (= (and start!7372 (is-String!662 x!20862)) b!53077))

(assert (= (and start!7372 (is-FooBar!4 x!20865)) b!53078))

(assert (= (and start!7372 (is-String!662 x!20865)) b!53073))

(declare-fun b_lambda!14567 () Bool)

(assert (=> (not b_lambda!14567) (not b!53076)))

(declare-fun t!46702 () Bool)

(declare-fun tb!45789 () Bool)

(assert (=> (and start!7372 (= Bar!53 Bar!53) t!46702) tb!45789))

(declare-fun result!46081 () Bool)

(assert (=> tb!45789 (= result!46081 true)))

(assert (=> b!53076 t!46702))

(declare-fun b_and!58219 () Bool)

(assert (= b_and!58213 (and (=> t!46702 result!46081) b_and!58219)))

(declare-fun t!46704 () Bool)

(declare-fun tb!45791 () Bool)

(assert (=> (and start!7372 (= Foo!81 Bar!53) t!46704) tb!45791))

(declare-fun result!46083 () Bool)

(assert (=> tb!45791 (= result!46083 true)))

(assert (=> b!53076 t!46704))

(declare-fun b_and!58221 () Bool)

(assert (= b_and!58215 (and (=> t!46704 result!46083) b_and!58221)))

(declare-fun t!46706 () Bool)

(declare-fun tb!45793 () Bool)

(assert (=> (and start!7372 (= Foo!80 Bar!53) t!46706) tb!45793))

(declare-fun result!46085 () Bool)

(assert (=> tb!45793 (= result!46085 true)))

(assert (=> b!53076 t!46706))

(declare-fun b_and!58223 () Bool)

(assert (= b_and!58217 (and (=> t!46706 result!46085) b_and!58223)))

(declare-fun b_lambda!14569 () Bool)

(assert (=> (not b_lambda!14569) (not start!7372)))

(declare-fun tb!45795 () Bool)

(declare-fun t!46708 () Bool)

(assert (=> (and start!7372 (= Bar!53 Foo!80) t!46708) tb!45795))

(declare-fun result!46087 () Bool)

(assert (=> tb!45795 (= result!46087 true)))

(assert (=> start!7372 t!46708))

(declare-fun b_and!58225 () Bool)

(assert (= b_and!58219 (and (=> t!46708 result!46087) b_and!58225)))

(declare-fun tb!45797 () Bool)

(declare-fun t!46710 () Bool)

(assert (=> (and start!7372 (= Foo!81 Foo!80) t!46710) tb!45797))

(declare-fun result!46089 () Bool)

(assert (=> tb!45797 (= result!46089 true)))

(assert (=> start!7372 t!46710))

(declare-fun b_and!58227 () Bool)

(assert (= b_and!58221 (and (=> t!46710 result!46089) b_and!58227)))

(declare-fun t!46712 () Bool)

(declare-fun tb!45799 () Bool)

(assert (=> (and start!7372 (= Foo!80 Foo!80) t!46712) tb!45799))

(declare-fun result!46091 () Bool)

(assert (=> tb!45799 (= result!46091 true)))

(assert (=> start!7372 t!46712))

(declare-fun b_and!58229 () Bool)

(assert (= b_and!58223 (and (=> t!46712 result!46091) b_and!58229)))

(declare-fun b_lambda!14571 () Bool)

(assert (=> (not b_lambda!14571) (not start!7372)))

(declare-fun t!46714 () Bool)

(declare-fun tb!45801 () Bool)

(assert (=> (and start!7372 (= Bar!53 Bar!53) t!46714) tb!45801))

(declare-fun result!46093 () Bool)

(assert (=> tb!45801 (= result!46093 true)))

(assert (=> start!7372 t!46714))

(declare-fun b_and!58231 () Bool)

(assert (= b_and!58225 (and (=> t!46714 result!46093) b_and!58231)))

(declare-fun tb!45803 () Bool)

(declare-fun t!46716 () Bool)

(assert (=> (and start!7372 (= Foo!81 Bar!53) t!46716) tb!45803))

(declare-fun result!46095 () Bool)

(assert (=> tb!45803 (= result!46095 true)))

(assert (=> start!7372 t!46716))

(declare-fun b_and!58233 () Bool)

(assert (= b_and!58227 (and (=> t!46716 result!46095) b_and!58233)))

(declare-fun t!46718 () Bool)

(declare-fun tb!45805 () Bool)

(assert (=> (and start!7372 (= Foo!80 Bar!53) t!46718) tb!45805))

(declare-fun result!46097 () Bool)

(assert (=> tb!45805 (= result!46097 true)))

(assert (=> start!7372 t!46718))

(declare-fun b_and!58235 () Bool)

(assert (= b_and!58229 (and (=> t!46718 result!46097) b_and!58235)))

(declare-fun b_lambda!14573 () Bool)

(assert (=> (not b_lambda!14573) (not start!7372)))

(declare-fun t!46720 () Bool)

(declare-fun tb!45807 () Bool)

(assert (=> (and start!7372 (= Bar!53 Foo!80) t!46720) tb!45807))

(declare-fun result!46099 () Bool)

(assert (=> tb!45807 (= result!46099 true)))

(assert (=> start!7372 t!46720))

(declare-fun b_and!58237 () Bool)

(assert (= b_and!58231 (and (=> t!46720 result!46099) b_and!58237)))

(declare-fun tb!45809 () Bool)

(declare-fun t!46722 () Bool)

(assert (=> (and start!7372 (= Foo!81 Foo!80) t!46722) tb!45809))

(declare-fun result!46101 () Bool)

(assert (=> tb!45809 (= result!46101 true)))

(assert (=> start!7372 t!46722))

(declare-fun b_and!58239 () Bool)

(assert (= b_and!58233 (and (=> t!46722 result!46101) b_and!58239)))

(declare-fun t!46724 () Bool)

(declare-fun tb!45811 () Bool)

(assert (=> (and start!7372 (= Foo!80 Foo!80) t!46724) tb!45811))

(declare-fun result!46103 () Bool)

(assert (=> tb!45811 (= result!46103 true)))

(assert (=> start!7372 t!46724))

(declare-fun b_and!58241 () Bool)

(assert (= b_and!58235 (and (=> t!46724 result!46103) b_and!58241)))

(declare-fun b_lambda!14575 () Bool)

(assert (=> (not b_lambda!14575) (not start!7372)))

(declare-fun tb!45813 () Bool)

(declare-fun t!46726 () Bool)

(assert (=> (and start!7372 (= Bar!53 Foo!81) t!46726) tb!45813))

(declare-fun result!46105 () Bool)

(assert (=> tb!45813 (= result!46105 true)))

(assert (=> start!7372 t!46726))

(declare-fun b_and!58243 () Bool)

(assert (= b_and!58237 (and (=> t!46726 result!46105) b_and!58243)))

(declare-fun t!46728 () Bool)

(declare-fun tb!45815 () Bool)

(assert (=> (and start!7372 (= Foo!81 Foo!81) t!46728) tb!45815))

(declare-fun result!46107 () Bool)

(assert (=> tb!45815 (= result!46107 true)))

(assert (=> start!7372 t!46728))

(declare-fun b_and!58245 () Bool)

(assert (= b_and!58239 (and (=> t!46728 result!46107) b_and!58245)))

(declare-fun tb!45817 () Bool)

(declare-fun t!46730 () Bool)

(assert (=> (and start!7372 (= Foo!80 Foo!81) t!46730) tb!45817))

(declare-fun result!46109 () Bool)

(assert (=> tb!45817 (= result!46109 true)))

(assert (=> start!7372 t!46730))

(declare-fun b_and!58247 () Bool)

(assert (= b_and!58241 (and (=> t!46730 result!46109) b_and!58247)))

(declare-fun b_lambda!14577 () Bool)

(assert (=> (not b_lambda!14577) (not b!53080)))

(declare-fun tb!45819 () Bool)

(declare-fun t!46732 () Bool)

(assert (=> (and start!7372 (= Bar!53 Foo!81) t!46732) tb!45819))

(declare-fun result!46111 () Bool)

(assert (=> tb!45819 (= result!46111 true)))

(assert (=> b!53080 t!46732))

(declare-fun b_and!58249 () Bool)

(assert (= b_and!58243 (and (=> t!46732 result!46111) b_and!58249)))

(declare-fun t!46734 () Bool)

(declare-fun tb!45821 () Bool)

(assert (=> (and start!7372 (= Foo!81 Foo!81) t!46734) tb!45821))

(declare-fun result!46113 () Bool)

(assert (=> tb!45821 (= result!46113 true)))

(assert (=> b!53080 t!46734))

(declare-fun b_and!58251 () Bool)

(assert (= b_and!58245 (and (=> t!46734 result!46113) b_and!58251)))

(declare-fun tb!45823 () Bool)

(declare-fun t!46736 () Bool)

(assert (=> (and start!7372 (= Foo!80 Foo!81) t!46736) tb!45823))

(declare-fun result!46115 () Bool)

(assert (=> tb!45823 (= result!46115 true)))

(assert (=> b!53080 t!46736))

(declare-fun b_and!58253 () Bool)

(assert (= b_and!58247 (and (=> t!46736 result!46115) b_and!58253)))

(declare-fun m!57094 () Bool)

(assert (=> b!53080 m!57094))

(declare-fun m!57096 () Bool)

(assert (=> start!7372 m!57096))

(declare-fun m!57098 () Bool)

(assert (=> start!7372 m!57098))

(declare-fun m!57100 () Bool)

(assert (=> start!7372 m!57100))

(declare-fun m!57102 () Bool)

(assert (=> start!7372 m!57102))

(declare-fun m!57104 () Bool)

(assert (=> b!53077 m!57104))

(declare-fun m!57106 () Bool)

(assert (=> b!53073 m!57106))

(declare-fun m!57108 () Bool)

(assert (=> b!53076 m!57108))

(declare-fun m!57110 () Bool)

(assert (=> b!53081 m!57110))

(push 1)

(assert (not b!53078))

(assert (not b!53081))

(assert (not b_lambda!14571))

(assert b_and!58249)

(assert (not b!53071))

(assert (not b_next!38561))

(assert (not b_lambda!14567))

(assert (not b!53073))

(assert (not b!53077))

(assert (not b_lambda!14577))

(assert (not b_lambda!14569))

(assert b_and!58251)

(assert (not b_next!38557))

(assert (not b_lambda!14573))

(assert (not b!53079))

(assert b_and!58253)

(assert (not b_next!38559))

(assert (not b_lambda!14575))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58249)

(assert (not b_next!38561))

(assert b_and!58251)

(assert (not b_next!38557))

(assert b_and!58253)

(assert (not b_next!38559))

(check-sat)

(pop 1)


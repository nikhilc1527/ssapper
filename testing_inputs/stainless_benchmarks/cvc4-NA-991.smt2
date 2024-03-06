; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7374 () Bool)

(assert start!7374)

(declare-fun b_free!7241 () Bool)

(declare-fun b_next!38563 () Bool)

(assert (=> start!7374 (= b_free!7241 (not b_next!38563))))

(declare-fun tp!15043 () Bool)

(declare-fun b_and!58255 () Bool)

(assert (=> start!7374 (= tp!15043 b_and!58255)))

(declare-fun b_free!7243 () Bool)

(declare-fun b_next!38565 () Bool)

(assert (=> start!7374 (= b_free!7243 (not b_next!38565))))

(declare-fun tp!15045 () Bool)

(declare-fun b_and!58257 () Bool)

(assert (=> start!7374 (= tp!15045 b_and!58257)))

(declare-fun b_free!7245 () Bool)

(declare-fun b_next!38567 () Bool)

(assert (=> start!7374 (= b_free!7245 (not b_next!38567))))

(declare-fun tp!15047 () Bool)

(declare-fun b_and!58259 () Bool)

(assert (=> start!7374 (= tp!15047 b_and!58259)))

(declare-fun res!24144 () Bool)

(declare-fun e!27640 () Bool)

(assert (=> start!7374 (=> (not res!24144) (not e!27640))))

(declare-fun Baz!56 () Int)

(declare-fun Foo!88 () Int)

(declare-datatypes () ((String!663 (String!664 (value!3591 String)))))

(declare-datatypes () ((List!428 (Cons!411 (h!618 Object!224) (t!46738 List!428)) (Nil!412)) (Object!224 (TestExt!27 (__x!127 Int)) (FooBar!5 (bar!63 Object!224) (baz!18 Object!224) (b!53092 Int) (x!21137 Object!224) (y!1611 Int)) (Option!261 (value!3592 Option!260)) (List!429 (value!3593 List!428)) (Boolean!213 (value!3594 Bool)) (String!665 (value!3595 String!663)) (Open!224 (value!3596 Int))) (Option!260 (Some!261 (v!2004 Object!224)) (None!262))))

(declare-fun thiss!7473 () Object!224)

(declare-fun Bar!57 () Int)

(declare-fun isFooBar!0 (Object!224 Int Int Int) Bool)

(assert (=> start!7374 (= res!24144 (isFooBar!0 thiss!7473 Baz!56 Bar!57 Foo!88))))

(assert (=> start!7374 e!27640))

(declare-fun lt!9288 () Object!224)

(assert (=> start!7374 (= lt!9288 thiss!7473)))

(declare-fun e!27641 () Bool)

(assert (=> start!7374 (and e!27641 (isFooBar!0 lt!9288 Baz!56 Bar!57 Foo!88))))

(assert (=> start!7374 tp!15043))

(assert (=> start!7374 tp!15045))

(assert (=> start!7374 tp!15047))

(declare-fun b!53089 () Bool)

(assert (=> b!53089 (= e!27640 (not (is-FooBar!5 thiss!7473)))))

(declare-fun tp!15044 () Bool)

(declare-fun tp!15046 () Bool)

(declare-fun tp!15042 () Bool)

(declare-fun b!53090 () Bool)

(assert (=> b!53090 (= e!27641 (and tp!15044 tp!15042 tp!15046))))

(declare-fun b!53091 () Bool)

(declare-fun inv!959 (String!663) Bool)

(assert (=> b!53091 (= e!27641 (inv!959 (value!3595 thiss!7473)))))

(assert (= (and start!7374 res!24144) b!53089))

(assert (= (and start!7374 (is-FooBar!5 thiss!7473)) b!53090))

(assert (= (and start!7374 (is-String!665 thiss!7473)) b!53091))

(declare-fun m!57112 () Bool)

(assert (=> start!7374 m!57112))

(declare-fun m!57114 () Bool)

(assert (=> start!7374 m!57114))

(declare-fun m!57116 () Bool)

(assert (=> b!53091 m!57116))

(push 1)

(assert b_and!58259)

(assert (not b_next!38565))

(assert (not b_next!38563))

(assert (not b!53090))

(assert b_and!58257)

(assert (not b_next!38567))

(assert (not b!53091))

(assert (not start!7374))

(assert b_and!58255)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58259)

(assert (not b_next!38565))

(assert (not b_next!38563))

(assert b_and!58257)

(assert (not b_next!38567))

(assert b_and!58255)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44589 () Bool)

(assert (=> d!44589 (= (inv!959 (value!3595 thiss!7473)) (= (mod (str.len (value!3591 (value!3595 thiss!7473))) 2) 0))))

(assert (=> b!53091 d!44589))

(declare-fun d!44591 () Bool)

(declare-fun res!24151 () Bool)

(declare-fun e!27644 () Bool)

(assert (=> d!44591 (=> (not res!24151) (not e!27644))))

(assert (=> d!44591 (= res!24151 (is-FooBar!5 thiss!7473))))

(assert (=> d!44591 (= (isFooBar!0 thiss!7473 Baz!56 Bar!57 Foo!88) e!27644)))

(declare-fun b!53099 () Bool)

(declare-fun res!24152 () Bool)

(assert (=> b!53099 (=> (not res!24152) (not e!27644))))

(declare-fun dynLambda!894 (Int Object!224) Bool)

(assert (=> b!53099 (= res!24152 (dynLambda!894 Bar!57 (bar!63 thiss!7473)))))

(declare-fun b!53100 () Bool)

(declare-fun res!24153 () Bool)

(assert (=> b!53100 (=> (not res!24153) (not e!27644))))

(assert (=> b!53100 (= res!24153 (dynLambda!894 Baz!56 (baz!18 thiss!7473)))))

(declare-fun b!53101 () Bool)

(assert (=> b!53101 (= e!27644 (dynLambda!894 Foo!88 (x!21137 thiss!7473)))))

(assert (= (and d!44591 res!24151) b!53099))

(assert (= (and b!53099 res!24152) b!53100))

(assert (= (and b!53100 res!24153) b!53101))

(declare-fun b_lambda!14579 () Bool)

(assert (=> (not b_lambda!14579) (not b!53099)))

(declare-fun tb!45825 () Bool)

(declare-fun t!46740 () Bool)

(assert (=> (and start!7374 (= Baz!56 Bar!57) t!46740) tb!45825))

(declare-fun result!46117 () Bool)

(assert (=> tb!45825 (= result!46117 true)))

(assert (=> b!53099 t!46740))

(declare-fun b_and!58261 () Bool)

(assert (= b_and!58255 (and (=> t!46740 result!46117) b_and!58261)))

(declare-fun t!46742 () Bool)

(declare-fun tb!45827 () Bool)

(assert (=> (and start!7374 (= Bar!57 Bar!57) t!46742) tb!45827))

(declare-fun result!46119 () Bool)

(assert (=> tb!45827 (= result!46119 true)))

(assert (=> b!53099 t!46742))

(declare-fun b_and!58263 () Bool)

(assert (= b_and!58257 (and (=> t!46742 result!46119) b_and!58263)))

(declare-fun t!46744 () Bool)

(declare-fun tb!45829 () Bool)

(assert (=> (and start!7374 (= Foo!88 Bar!57) t!46744) tb!45829))

(declare-fun result!46121 () Bool)

(assert (=> tb!45829 (= result!46121 true)))

(assert (=> b!53099 t!46744))

(declare-fun b_and!58265 () Bool)

(assert (= b_and!58259 (and (=> t!46744 result!46121) b_and!58265)))

(declare-fun b_lambda!14581 () Bool)

(assert (=> (not b_lambda!14581) (not b!53100)))

(declare-fun t!46746 () Bool)

(declare-fun tb!45831 () Bool)

(assert (=> (and start!7374 (= Baz!56 Baz!56) t!46746) tb!45831))

(declare-fun result!46123 () Bool)

(assert (=> tb!45831 (= result!46123 true)))

(assert (=> b!53100 t!46746))

(declare-fun b_and!58267 () Bool)

(assert (= b_and!58261 (and (=> t!46746 result!46123) b_and!58267)))

(declare-fun t!46748 () Bool)

(declare-fun tb!45833 () Bool)

(assert (=> (and start!7374 (= Bar!57 Baz!56) t!46748) tb!45833))

(declare-fun result!46125 () Bool)

(assert (=> tb!45833 (= result!46125 true)))

(assert (=> b!53100 t!46748))

(declare-fun b_and!58269 () Bool)

(assert (= b_and!58263 (and (=> t!46748 result!46125) b_and!58269)))

(declare-fun t!46750 () Bool)

(declare-fun tb!45835 () Bool)

(assert (=> (and start!7374 (= Foo!88 Baz!56) t!46750) tb!45835))

(declare-fun result!46127 () Bool)

(assert (=> tb!45835 (= result!46127 true)))

(assert (=> b!53100 t!46750))

(declare-fun b_and!58271 () Bool)

(assert (= b_and!58265 (and (=> t!46750 result!46127) b_and!58271)))

(declare-fun b_lambda!14583 () Bool)

(assert (=> (not b_lambda!14583) (not b!53101)))

(declare-fun tb!45837 () Bool)

(declare-fun t!46752 () Bool)

(assert (=> (and start!7374 (= Baz!56 Foo!88) t!46752) tb!45837))

(declare-fun result!46129 () Bool)

(assert (=> tb!45837 (= result!46129 true)))

(assert (=> b!53101 t!46752))

(declare-fun b_and!58273 () Bool)

(assert (= b_and!58267 (and (=> t!46752 result!46129) b_and!58273)))

(declare-fun tb!45839 () Bool)

(declare-fun t!46754 () Bool)

(assert (=> (and start!7374 (= Bar!57 Foo!88) t!46754) tb!45839))

(declare-fun result!46131 () Bool)

(assert (=> tb!45839 (= result!46131 true)))

(assert (=> b!53101 t!46754))

(declare-fun b_and!58275 () Bool)

(assert (= b_and!58269 (and (=> t!46754 result!46131) b_and!58275)))

(declare-fun t!46756 () Bool)

(declare-fun tb!45841 () Bool)

(assert (=> (and start!7374 (= Foo!88 Foo!88) t!46756) tb!45841))

(declare-fun result!46133 () Bool)

(assert (=> tb!45841 (= result!46133 true)))

(assert (=> b!53101 t!46756))

(declare-fun b_and!58277 () Bool)

(assert (= b_and!58271 (and (=> t!46756 result!46133) b_and!58277)))

(declare-fun m!57118 () Bool)

(assert (=> b!53099 m!57118))

(declare-fun m!57120 () Bool)

(assert (=> b!53100 m!57120))

(declare-fun m!57122 () Bool)

(assert (=> b!53101 m!57122))

(assert (=> start!7374 d!44591))

(declare-fun d!44593 () Bool)

(declare-fun res!24154 () Bool)

(declare-fun e!27645 () Bool)

(assert (=> d!44593 (=> (not res!24154) (not e!27645))))

(assert (=> d!44593 (= res!24154 (is-FooBar!5 lt!9288))))

(assert (=> d!44593 (= (isFooBar!0 lt!9288 Baz!56 Bar!57 Foo!88) e!27645)))

(declare-fun b!53102 () Bool)

(declare-fun res!24155 () Bool)

(assert (=> b!53102 (=> (not res!24155) (not e!27645))))

(assert (=> b!53102 (= res!24155 (dynLambda!894 Bar!57 (bar!63 lt!9288)))))

(declare-fun b!53103 () Bool)

(declare-fun res!24156 () Bool)

(assert (=> b!53103 (=> (not res!24156) (not e!27645))))

(assert (=> b!53103 (= res!24156 (dynLambda!894 Baz!56 (baz!18 lt!9288)))))

(declare-fun b!53104 () Bool)

(assert (=> b!53104 (= e!27645 (dynLambda!894 Foo!88 (x!21137 lt!9288)))))

(assert (= (and d!44593 res!24154) b!53102))

(assert (= (and b!53102 res!24155) b!53103))

(assert (= (and b!53103 res!24156) b!53104))

(declare-fun b_lambda!14585 () Bool)

(assert (=> (not b_lambda!14585) (not b!53102)))

(declare-fun tb!45843 () Bool)

(declare-fun t!46758 () Bool)

(assert (=> (and start!7374 (= Baz!56 Bar!57) t!46758) tb!45843))

(declare-fun result!46135 () Bool)

(assert (=> tb!45843 (= result!46135 true)))

(assert (=> b!53102 t!46758))

(declare-fun b_and!58279 () Bool)

(assert (= b_and!58273 (and (=> t!46758 result!46135) b_and!58279)))

(declare-fun t!46760 () Bool)

(declare-fun tb!45845 () Bool)

(assert (=> (and start!7374 (= Bar!57 Bar!57) t!46760) tb!45845))

(declare-fun result!46137 () Bool)

(assert (=> tb!45845 (= result!46137 true)))

(assert (=> b!53102 t!46760))

(declare-fun b_and!58281 () Bool)

(assert (= b_and!58275 (and (=> t!46760 result!46137) b_and!58281)))

(declare-fun t!46762 () Bool)

(declare-fun tb!45847 () Bool)

(assert (=> (and start!7374 (= Foo!88 Bar!57) t!46762) tb!45847))

(declare-fun result!46139 () Bool)

(assert (=> tb!45847 (= result!46139 true)))

(assert (=> b!53102 t!46762))

(declare-fun b_and!58283 () Bool)

(assert (= b_and!58277 (and (=> t!46762 result!46139) b_and!58283)))

(declare-fun b_lambda!14587 () Bool)

(assert (=> (not b_lambda!14587) (not b!53103)))

(declare-fun t!46764 () Bool)

(declare-fun tb!45849 () Bool)

(assert (=> (and start!7374 (= Baz!56 Baz!56) t!46764) tb!45849))

(declare-fun result!46141 () Bool)

(assert (=> tb!45849 (= result!46141 true)))

(assert (=> b!53103 t!46764))

(declare-fun b_and!58285 () Bool)

(assert (= b_and!58279 (and (=> t!46764 result!46141) b_and!58285)))

(declare-fun t!46766 () Bool)

(declare-fun tb!45851 () Bool)

(assert (=> (and start!7374 (= Bar!57 Baz!56) t!46766) tb!45851))

(declare-fun result!46143 () Bool)

(assert (=> tb!45851 (= result!46143 true)))

(assert (=> b!53103 t!46766))

(declare-fun b_and!58287 () Bool)

(assert (= b_and!58281 (and (=> t!46766 result!46143) b_and!58287)))

(declare-fun tb!45853 () Bool)

(declare-fun t!46768 () Bool)

(assert (=> (and start!7374 (= Foo!88 Baz!56) t!46768) tb!45853))

(declare-fun result!46145 () Bool)

(assert (=> tb!45853 (= result!46145 true)))

(assert (=> b!53103 t!46768))

(declare-fun b_and!58289 () Bool)

(assert (= b_and!58283 (and (=> t!46768 result!46145) b_and!58289)))

(declare-fun b_lambda!14589 () Bool)

(assert (=> (not b_lambda!14589) (not b!53104)))

(declare-fun t!46770 () Bool)

(declare-fun tb!45855 () Bool)

(assert (=> (and start!7374 (= Baz!56 Foo!88) t!46770) tb!45855))

(declare-fun result!46147 () Bool)

(assert (=> tb!45855 (= result!46147 true)))

(assert (=> b!53104 t!46770))

(declare-fun b_and!58291 () Bool)

(assert (= b_and!58285 (and (=> t!46770 result!46147) b_and!58291)))

(declare-fun t!46772 () Bool)

(declare-fun tb!45857 () Bool)

(assert (=> (and start!7374 (= Bar!57 Foo!88) t!46772) tb!45857))

(declare-fun result!46149 () Bool)

(assert (=> tb!45857 (= result!46149 true)))

(assert (=> b!53104 t!46772))

(declare-fun b_and!58293 () Bool)

(assert (= b_and!58287 (and (=> t!46772 result!46149) b_and!58293)))

(declare-fun t!46774 () Bool)

(declare-fun tb!45859 () Bool)

(assert (=> (and start!7374 (= Foo!88 Foo!88) t!46774) tb!45859))

(declare-fun result!46151 () Bool)

(assert (=> tb!45859 (= result!46151 true)))

(assert (=> b!53104 t!46774))

(declare-fun b_and!58295 () Bool)

(assert (= b_and!58289 (and (=> t!46774 result!46151) b_and!58295)))

(declare-fun m!57124 () Bool)

(assert (=> b!53102 m!57124))

(declare-fun m!57126 () Bool)

(assert (=> b!53103 m!57126))

(declare-fun m!57128 () Bool)

(assert (=> b!53104 m!57128))

(assert (=> start!7374 d!44593))

(declare-fun tp!15054 () Bool)

(declare-fun tp!15055 () Bool)

(declare-fun tp!15056 () Bool)

(declare-fun e!27651 () Bool)

(declare-fun b!53111 () Bool)

(assert (=> b!53111 (= e!27651 (and tp!15054 tp!15056 tp!15055))))

(declare-fun b!53112 () Bool)

(assert (=> b!53112 (= e!27651 (inv!959 (value!3595 (bar!63 thiss!7473))))))

(assert (=> b!53090 (= tp!15044 e!27651)))

(assert (= (and b!53090 (is-FooBar!5 (bar!63 thiss!7473))) b!53111))

(assert (= (and b!53090 (is-String!665 (bar!63 thiss!7473))) b!53112))

(declare-fun m!57130 () Bool)

(assert (=> b!53112 m!57130))

(declare-fun tp!15057 () Bool)

(declare-fun tp!15059 () Bool)

(declare-fun b!53113 () Bool)

(declare-fun tp!15058 () Bool)

(declare-fun e!27653 () Bool)

(assert (=> b!53113 (= e!27653 (and tp!15057 tp!15059 tp!15058))))

(declare-fun b!53114 () Bool)

(assert (=> b!53114 (= e!27653 (inv!959 (value!3595 (baz!18 thiss!7473))))))

(assert (=> b!53090 (= tp!15042 e!27653)))

(assert (= (and b!53090 (is-FooBar!5 (baz!18 thiss!7473))) b!53113))

(assert (= (and b!53090 (is-String!665 (baz!18 thiss!7473))) b!53114))

(declare-fun m!57132 () Bool)

(assert (=> b!53114 m!57132))

(declare-fun b!53115 () Bool)

(declare-fun tp!15061 () Bool)

(declare-fun tp!15062 () Bool)

(declare-fun tp!15060 () Bool)

(declare-fun e!27655 () Bool)

(assert (=> b!53115 (= e!27655 (and tp!15060 tp!15062 tp!15061))))

(declare-fun b!53116 () Bool)

(assert (=> b!53116 (= e!27655 (inv!959 (value!3595 (x!21137 thiss!7473))))))

(assert (=> b!53090 (= tp!15046 e!27655)))

(assert (= (and b!53090 (is-FooBar!5 (x!21137 thiss!7473))) b!53115))

(assert (= (and b!53090 (is-String!665 (x!21137 thiss!7473))) b!53116))

(declare-fun m!57134 () Bool)

(assert (=> b!53116 m!57134))

(declare-fun b_lambda!14591 () Bool)

(assert (= b_lambda!14589 (or (and start!7374 b_free!7241 (= Baz!56 Foo!88)) (and start!7374 b_free!7243 (= Bar!57 Foo!88)) (and start!7374 b_free!7245) b_lambda!14591)))

(declare-fun b_lambda!14593 () Bool)

(assert (= b_lambda!14587 (or (and start!7374 b_free!7241) (and start!7374 b_free!7243 (= Bar!57 Baz!56)) (and start!7374 b_free!7245 (= Foo!88 Baz!56)) b_lambda!14593)))

(declare-fun b_lambda!14595 () Bool)

(assert (= b_lambda!14581 (or (and start!7374 b_free!7241) (and start!7374 b_free!7243 (= Bar!57 Baz!56)) (and start!7374 b_free!7245 (= Foo!88 Baz!56)) b_lambda!14595)))

(declare-fun b_lambda!14597 () Bool)

(assert (= b_lambda!14579 (or (and start!7374 b_free!7241 (= Baz!56 Bar!57)) (and start!7374 b_free!7243) (and start!7374 b_free!7245 (= Foo!88 Bar!57)) b_lambda!14597)))

(declare-fun b_lambda!14599 () Bool)

(assert (= b_lambda!14583 (or (and start!7374 b_free!7241 (= Baz!56 Foo!88)) (and start!7374 b_free!7243 (= Bar!57 Foo!88)) (and start!7374 b_free!7245) b_lambda!14599)))

(declare-fun b_lambda!14601 () Bool)

(assert (= b_lambda!14585 (or (and start!7374 b_free!7241 (= Baz!56 Bar!57)) (and start!7374 b_free!7243) (and start!7374 b_free!7245 (= Foo!88 Bar!57)) b_lambda!14601)))

(push 1)

(assert (not b_next!38565))

(assert (not b_lambda!14595))

(assert (not b!53116))

(assert (not b!53111))

(assert (not b_next!38563))

(assert (not b!53115))

(assert (not b_next!38567))

(assert (not b_lambda!14601))

(assert (not b!53112))

(assert (not b_lambda!14593))

(assert (not b!53114))

(assert (not b_lambda!14591))

(assert b_and!58291)

(assert b_and!58293)

(assert (not b_lambda!14597))

(assert (not b_lambda!14599))

(assert (not b!53113))

(assert b_and!58295)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!38565))

(assert (not b_next!38563))

(assert (not b_next!38567))

(assert b_and!58291)

(assert b_and!58293)

(assert b_and!58295)

(check-sat)

(pop 1)


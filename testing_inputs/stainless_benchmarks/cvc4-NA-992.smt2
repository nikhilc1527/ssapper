; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7380 () Bool)

(assert start!7380)

(declare-fun b_free!7247 () Bool)

(declare-fun b_next!38569 () Bool)

(assert (=> start!7380 (= b_free!7247 (not b_next!38569))))

(declare-fun tp!15079 () Bool)

(declare-fun b_and!58297 () Bool)

(assert (=> start!7380 (= tp!15079 b_and!58297)))

(declare-fun b_free!7249 () Bool)

(declare-fun b_next!38571 () Bool)

(assert (=> start!7380 (= b_free!7249 (not b_next!38571))))

(declare-fun tp!15078 () Bool)

(declare-fun b_and!58299 () Bool)

(assert (=> start!7380 (= tp!15078 b_and!58299)))

(declare-fun b_free!7251 () Bool)

(declare-fun b_next!38573 () Bool)

(assert (=> start!7380 (= b_free!7251 (not b_next!38573))))

(declare-fun tp!15076 () Bool)

(declare-fun b_and!58301 () Bool)

(assert (=> start!7380 (= tp!15076 b_and!58301)))

(declare-fun res!24159 () Bool)

(declare-fun e!27662 () Bool)

(assert (=> start!7380 (=> (not res!24159) (not e!27662))))

(declare-fun Baz!56 () Int)

(declare-fun Foo!88 () Int)

(declare-datatypes () ((String!666 (String!667 (value!3597 String)))))

(declare-datatypes () ((List!430 (Cons!412 (h!619 Object!225) (t!46775 List!430)) (Nil!413)) (Object!225 (TestExt!28 (__x!128 Int)) (FooBar!6 (bar!64 Object!225) (baz!19 Object!225) (b!53126 Int) (x!21143 Object!225) (y!1612 Int)) (Option!263 (value!3598 Option!262)) (List!431 (value!3599 List!430)) (Boolean!214 (value!3600 Bool)) (String!668 (value!3601 String!666)) (Open!225 (value!3602 Int))) (Option!262 (Some!262 (v!2005 Object!225)) (None!263))))

(declare-fun thiss!7473 () Object!225)

(declare-fun Bar!57 () Int)

(declare-fun isFooBar!0 (Object!225 Int Int Int) Bool)

(assert (=> start!7380 (= res!24159 (isFooBar!0 thiss!7473 Baz!56 Bar!57 Foo!88))))

(assert (=> start!7380 e!27662))

(declare-fun lt!9291 () Object!225)

(assert (=> start!7380 (= lt!9291 thiss!7473)))

(declare-fun e!27663 () Bool)

(assert (=> start!7380 (and e!27663 (isFooBar!0 lt!9291 Baz!56 Bar!57 Foo!88))))

(assert (=> start!7380 tp!15079))

(assert (=> start!7380 tp!15078))

(assert (=> start!7380 tp!15076))

(declare-fun b!53123 () Bool)

(assert (=> b!53123 (= e!27662 (and (= (y!1612 thiss!7473) 0) (not (is-FooBar!6 thiss!7473))))))

(declare-fun tp!15077 () Bool)

(declare-fun b!53124 () Bool)

(declare-fun tp!15080 () Bool)

(declare-fun tp!15075 () Bool)

(assert (=> b!53124 (= e!27663 (and tp!15080 tp!15077 tp!15075))))

(declare-fun b!53125 () Bool)

(declare-fun inv!959 (String!666) Bool)

(assert (=> b!53125 (= e!27663 (inv!959 (value!3601 thiss!7473)))))

(assert (= (and start!7380 res!24159) b!53123))

(assert (= (and start!7380 (is-FooBar!6 thiss!7473)) b!53124))

(assert (= (and start!7380 (is-String!668 thiss!7473)) b!53125))

(declare-fun m!57136 () Bool)

(assert (=> start!7380 m!57136))

(declare-fun m!57138 () Bool)

(assert (=> start!7380 m!57138))

(declare-fun m!57140 () Bool)

(assert (=> b!53125 m!57140))

(push 1)

(assert b_and!58299)

(assert (not start!7380))

(assert (not b_next!38569))

(assert (not b!53124))

(assert b_and!58297)

(assert (not b!53125))

(assert b_and!58301)

(assert (not b_next!38571))

(assert (not b_next!38573))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58299)

(assert (not b_next!38569))

(assert b_and!58297)

(assert b_and!58301)

(assert (not b_next!38571))

(assert (not b_next!38573))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44595 () Bool)

(assert (=> d!44595 (= (inv!959 (value!3601 thiss!7473)) (= (mod (str.len (value!3597 (value!3601 thiss!7473))) 2) 0))))

(assert (=> b!53125 d!44595))

(declare-fun d!44597 () Bool)

(declare-fun res!24166 () Bool)

(declare-fun e!27667 () Bool)

(assert (=> d!44597 (=> (not res!24166) (not e!27667))))

(assert (=> d!44597 (= res!24166 (is-FooBar!6 thiss!7473))))

(assert (=> d!44597 (= (isFooBar!0 thiss!7473 Baz!56 Bar!57 Foo!88) e!27667)))

(declare-fun b!53133 () Bool)

(declare-fun res!24167 () Bool)

(assert (=> b!53133 (=> (not res!24167) (not e!27667))))

(declare-fun dynLambda!895 (Int Object!225) Bool)

(assert (=> b!53133 (= res!24167 (dynLambda!895 Bar!57 (bar!64 thiss!7473)))))

(declare-fun b!53134 () Bool)

(declare-fun res!24168 () Bool)

(assert (=> b!53134 (=> (not res!24168) (not e!27667))))

(assert (=> b!53134 (= res!24168 (dynLambda!895 Baz!56 (baz!19 thiss!7473)))))

(declare-fun b!53135 () Bool)

(assert (=> b!53135 (= e!27667 (dynLambda!895 Foo!88 (x!21143 thiss!7473)))))

(assert (= (and d!44597 res!24166) b!53133))

(assert (= (and b!53133 res!24167) b!53134))

(assert (= (and b!53134 res!24168) b!53135))

(declare-fun b_lambda!14603 () Bool)

(assert (=> (not b_lambda!14603) (not b!53133)))

(declare-fun t!46777 () Bool)

(declare-fun tb!45861 () Bool)

(assert (=> (and start!7380 (= Baz!56 Bar!57) t!46777) tb!45861))

(declare-fun result!46155 () Bool)

(assert (=> tb!45861 (= result!46155 true)))

(assert (=> b!53133 t!46777))

(declare-fun b_and!58303 () Bool)

(assert (= b_and!58297 (and (=> t!46777 result!46155) b_and!58303)))

(declare-fun t!46779 () Bool)

(declare-fun tb!45863 () Bool)

(assert (=> (and start!7380 (= Bar!57 Bar!57) t!46779) tb!45863))

(declare-fun result!46157 () Bool)

(assert (=> tb!45863 (= result!46157 true)))

(assert (=> b!53133 t!46779))

(declare-fun b_and!58305 () Bool)

(assert (= b_and!58299 (and (=> t!46779 result!46157) b_and!58305)))

(declare-fun t!46781 () Bool)

(declare-fun tb!45865 () Bool)

(assert (=> (and start!7380 (= Foo!88 Bar!57) t!46781) tb!45865))

(declare-fun result!46159 () Bool)

(assert (=> tb!45865 (= result!46159 true)))

(assert (=> b!53133 t!46781))

(declare-fun b_and!58307 () Bool)

(assert (= b_and!58301 (and (=> t!46781 result!46159) b_and!58307)))

(declare-fun b_lambda!14605 () Bool)

(assert (=> (not b_lambda!14605) (not b!53134)))

(declare-fun t!46783 () Bool)

(declare-fun tb!45867 () Bool)

(assert (=> (and start!7380 (= Baz!56 Baz!56) t!46783) tb!45867))

(declare-fun result!46161 () Bool)

(assert (=> tb!45867 (= result!46161 true)))

(assert (=> b!53134 t!46783))

(declare-fun b_and!58309 () Bool)

(assert (= b_and!58303 (and (=> t!46783 result!46161) b_and!58309)))

(declare-fun t!46785 () Bool)

(declare-fun tb!45869 () Bool)

(assert (=> (and start!7380 (= Bar!57 Baz!56) t!46785) tb!45869))

(declare-fun result!46163 () Bool)

(assert (=> tb!45869 (= result!46163 true)))

(assert (=> b!53134 t!46785))

(declare-fun b_and!58311 () Bool)

(assert (= b_and!58305 (and (=> t!46785 result!46163) b_and!58311)))

(declare-fun tb!45871 () Bool)

(declare-fun t!46787 () Bool)

(assert (=> (and start!7380 (= Foo!88 Baz!56) t!46787) tb!45871))

(declare-fun result!46165 () Bool)

(assert (=> tb!45871 (= result!46165 true)))

(assert (=> b!53134 t!46787))

(declare-fun b_and!58313 () Bool)

(assert (= b_and!58307 (and (=> t!46787 result!46165) b_and!58313)))

(declare-fun b_lambda!14607 () Bool)

(assert (=> (not b_lambda!14607) (not b!53135)))

(declare-fun tb!45873 () Bool)

(declare-fun t!46789 () Bool)

(assert (=> (and start!7380 (= Baz!56 Foo!88) t!46789) tb!45873))

(declare-fun result!46167 () Bool)

(assert (=> tb!45873 (= result!46167 true)))

(assert (=> b!53135 t!46789))

(declare-fun b_and!58315 () Bool)

(assert (= b_and!58309 (and (=> t!46789 result!46167) b_and!58315)))

(declare-fun tb!45875 () Bool)

(declare-fun t!46791 () Bool)

(assert (=> (and start!7380 (= Bar!57 Foo!88) t!46791) tb!45875))

(declare-fun result!46169 () Bool)

(assert (=> tb!45875 (= result!46169 true)))

(assert (=> b!53135 t!46791))

(declare-fun b_and!58317 () Bool)

(assert (= b_and!58311 (and (=> t!46791 result!46169) b_and!58317)))

(declare-fun t!46793 () Bool)

(declare-fun tb!45877 () Bool)

(assert (=> (and start!7380 (= Foo!88 Foo!88) t!46793) tb!45877))

(declare-fun result!46171 () Bool)

(assert (=> tb!45877 (= result!46171 true)))

(assert (=> b!53135 t!46793))

(declare-fun b_and!58319 () Bool)

(assert (= b_and!58313 (and (=> t!46793 result!46171) b_and!58319)))

(declare-fun m!57142 () Bool)

(assert (=> b!53133 m!57142))

(declare-fun m!57144 () Bool)

(assert (=> b!53134 m!57144))

(declare-fun m!57146 () Bool)

(assert (=> b!53135 m!57146))

(assert (=> start!7380 d!44597))

(declare-fun d!44599 () Bool)

(declare-fun res!24169 () Bool)

(declare-fun e!27668 () Bool)

(assert (=> d!44599 (=> (not res!24169) (not e!27668))))

(assert (=> d!44599 (= res!24169 (is-FooBar!6 lt!9291))))

(assert (=> d!44599 (= (isFooBar!0 lt!9291 Baz!56 Bar!57 Foo!88) e!27668)))

(declare-fun b!53136 () Bool)

(declare-fun res!24170 () Bool)

(assert (=> b!53136 (=> (not res!24170) (not e!27668))))

(assert (=> b!53136 (= res!24170 (dynLambda!895 Bar!57 (bar!64 lt!9291)))))

(declare-fun b!53137 () Bool)

(declare-fun res!24171 () Bool)

(assert (=> b!53137 (=> (not res!24171) (not e!27668))))

(assert (=> b!53137 (= res!24171 (dynLambda!895 Baz!56 (baz!19 lt!9291)))))

(declare-fun b!53138 () Bool)

(assert (=> b!53138 (= e!27668 (dynLambda!895 Foo!88 (x!21143 lt!9291)))))

(assert (= (and d!44599 res!24169) b!53136))

(assert (= (and b!53136 res!24170) b!53137))

(assert (= (and b!53137 res!24171) b!53138))

(declare-fun b_lambda!14609 () Bool)

(assert (=> (not b_lambda!14609) (not b!53136)))

(declare-fun tb!45879 () Bool)

(declare-fun t!46795 () Bool)

(assert (=> (and start!7380 (= Baz!56 Bar!57) t!46795) tb!45879))

(declare-fun result!46173 () Bool)

(assert (=> tb!45879 (= result!46173 true)))

(assert (=> b!53136 t!46795))

(declare-fun b_and!58321 () Bool)

(assert (= b_and!58315 (and (=> t!46795 result!46173) b_and!58321)))

(declare-fun t!46797 () Bool)

(declare-fun tb!45881 () Bool)

(assert (=> (and start!7380 (= Bar!57 Bar!57) t!46797) tb!45881))

(declare-fun result!46175 () Bool)

(assert (=> tb!45881 (= result!46175 true)))

(assert (=> b!53136 t!46797))

(declare-fun b_and!58323 () Bool)

(assert (= b_and!58317 (and (=> t!46797 result!46175) b_and!58323)))

(declare-fun t!46799 () Bool)

(declare-fun tb!45883 () Bool)

(assert (=> (and start!7380 (= Foo!88 Bar!57) t!46799) tb!45883))

(declare-fun result!46177 () Bool)

(assert (=> tb!45883 (= result!46177 true)))

(assert (=> b!53136 t!46799))

(declare-fun b_and!58325 () Bool)

(assert (= b_and!58319 (and (=> t!46799 result!46177) b_and!58325)))

(declare-fun b_lambda!14611 () Bool)

(assert (=> (not b_lambda!14611) (not b!53137)))

(declare-fun t!46801 () Bool)

(declare-fun tb!45885 () Bool)

(assert (=> (and start!7380 (= Baz!56 Baz!56) t!46801) tb!45885))

(declare-fun result!46179 () Bool)

(assert (=> tb!45885 (= result!46179 true)))

(assert (=> b!53137 t!46801))

(declare-fun b_and!58327 () Bool)

(assert (= b_and!58321 (and (=> t!46801 result!46179) b_and!58327)))

(declare-fun t!46803 () Bool)

(declare-fun tb!45887 () Bool)

(assert (=> (and start!7380 (= Bar!57 Baz!56) t!46803) tb!45887))

(declare-fun result!46181 () Bool)

(assert (=> tb!45887 (= result!46181 true)))

(assert (=> b!53137 t!46803))

(declare-fun b_and!58329 () Bool)

(assert (= b_and!58323 (and (=> t!46803 result!46181) b_and!58329)))

(declare-fun t!46805 () Bool)

(declare-fun tb!45889 () Bool)

(assert (=> (and start!7380 (= Foo!88 Baz!56) t!46805) tb!45889))

(declare-fun result!46183 () Bool)

(assert (=> tb!45889 (= result!46183 true)))

(assert (=> b!53137 t!46805))

(declare-fun b_and!58331 () Bool)

(assert (= b_and!58325 (and (=> t!46805 result!46183) b_and!58331)))

(declare-fun b_lambda!14613 () Bool)

(assert (=> (not b_lambda!14613) (not b!53138)))

(declare-fun tb!45891 () Bool)

(declare-fun t!46807 () Bool)

(assert (=> (and start!7380 (= Baz!56 Foo!88) t!46807) tb!45891))

(declare-fun result!46185 () Bool)

(assert (=> tb!45891 (= result!46185 true)))

(assert (=> b!53138 t!46807))

(declare-fun b_and!58333 () Bool)

(assert (= b_and!58327 (and (=> t!46807 result!46185) b_and!58333)))

(declare-fun tb!45893 () Bool)

(declare-fun t!46809 () Bool)

(assert (=> (and start!7380 (= Bar!57 Foo!88) t!46809) tb!45893))

(declare-fun result!46187 () Bool)

(assert (=> tb!45893 (= result!46187 true)))

(assert (=> b!53138 t!46809))

(declare-fun b_and!58335 () Bool)

(assert (= b_and!58329 (and (=> t!46809 result!46187) b_and!58335)))

(declare-fun t!46811 () Bool)

(declare-fun tb!45895 () Bool)

(assert (=> (and start!7380 (= Foo!88 Foo!88) t!46811) tb!45895))

(declare-fun result!46189 () Bool)

(assert (=> tb!45895 (= result!46189 true)))

(assert (=> b!53138 t!46811))

(declare-fun b_and!58337 () Bool)

(assert (= b_and!58331 (and (=> t!46811 result!46189) b_and!58337)))

(declare-fun m!57148 () Bool)

(assert (=> b!53136 m!57148))

(declare-fun m!57150 () Bool)

(assert (=> b!53137 m!57150))

(declare-fun m!57152 () Bool)

(assert (=> b!53138 m!57152))

(assert (=> start!7380 d!44599))

(declare-fun tp!15089 () Bool)

(declare-fun tp!15087 () Bool)

(declare-fun tp!15088 () Bool)

(declare-fun e!27674 () Bool)

(declare-fun b!53145 () Bool)

(assert (=> b!53145 (= e!27674 (and tp!15088 tp!15089 tp!15087))))

(declare-fun b!53146 () Bool)

(assert (=> b!53146 (= e!27674 (inv!959 (value!3601 (bar!64 thiss!7473))))))

(assert (=> b!53124 (= tp!15080 e!27674)))

(assert (= (and b!53124 (is-FooBar!6 (bar!64 thiss!7473))) b!53145))

(assert (= (and b!53124 (is-String!668 (bar!64 thiss!7473))) b!53146))

(declare-fun m!57154 () Bool)

(assert (=> b!53146 m!57154))

(declare-fun tp!15091 () Bool)

(declare-fun tp!15090 () Bool)

(declare-fun tp!15092 () Bool)

(declare-fun e!27676 () Bool)

(declare-fun b!53147 () Bool)

(assert (=> b!53147 (= e!27676 (and tp!15091 tp!15092 tp!15090))))

(declare-fun b!53148 () Bool)

(assert (=> b!53148 (= e!27676 (inv!959 (value!3601 (baz!19 thiss!7473))))))

(assert (=> b!53124 (= tp!15077 e!27676)))

(assert (= (and b!53124 (is-FooBar!6 (baz!19 thiss!7473))) b!53147))

(assert (= (and b!53124 (is-String!668 (baz!19 thiss!7473))) b!53148))

(declare-fun m!57156 () Bool)

(assert (=> b!53148 m!57156))

(declare-fun tp!15093 () Bool)

(declare-fun tp!15095 () Bool)

(declare-fun b!53149 () Bool)

(declare-fun e!27678 () Bool)

(declare-fun tp!15094 () Bool)

(assert (=> b!53149 (= e!27678 (and tp!15094 tp!15095 tp!15093))))

(declare-fun b!53150 () Bool)

(assert (=> b!53150 (= e!27678 (inv!959 (value!3601 (x!21143 thiss!7473))))))

(assert (=> b!53124 (= tp!15075 e!27678)))

(assert (= (and b!53124 (is-FooBar!6 (x!21143 thiss!7473))) b!53149))

(assert (= (and b!53124 (is-String!668 (x!21143 thiss!7473))) b!53150))

(declare-fun m!57158 () Bool)

(assert (=> b!53150 m!57158))

(declare-fun b_lambda!14615 () Bool)

(assert (= b_lambda!14613 (or (and start!7380 b_free!7247 (= Baz!56 Foo!88)) (and start!7380 b_free!7249 (= Bar!57 Foo!88)) (and start!7380 b_free!7251) b_lambda!14615)))

(declare-fun b_lambda!14617 () Bool)

(assert (= b_lambda!14611 (or (and start!7380 b_free!7247) (and start!7380 b_free!7249 (= Bar!57 Baz!56)) (and start!7380 b_free!7251 (= Foo!88 Baz!56)) b_lambda!14617)))

(declare-fun b_lambda!14619 () Bool)

(assert (= b_lambda!14603 (or (and start!7380 b_free!7247 (= Baz!56 Bar!57)) (and start!7380 b_free!7249) (and start!7380 b_free!7251 (= Foo!88 Bar!57)) b_lambda!14619)))

(declare-fun b_lambda!14621 () Bool)

(assert (= b_lambda!14605 (or (and start!7380 b_free!7247) (and start!7380 b_free!7249 (= Bar!57 Baz!56)) (and start!7380 b_free!7251 (= Foo!88 Baz!56)) b_lambda!14621)))

(declare-fun b_lambda!14623 () Bool)

(assert (= b_lambda!14609 (or (and start!7380 b_free!7247 (= Baz!56 Bar!57)) (and start!7380 b_free!7249) (and start!7380 b_free!7251 (= Foo!88 Bar!57)) b_lambda!14623)))

(declare-fun b_lambda!14625 () Bool)

(assert (= b_lambda!14607 (or (and start!7380 b_free!7247 (= Baz!56 Foo!88)) (and start!7380 b_free!7249 (= Bar!57 Foo!88)) (and start!7380 b_free!7251) b_lambda!14625)))

(push 1)

(assert b_and!58335)

(assert (not b!53146))

(assert (not b_lambda!14615))

(assert (not b_next!38569))

(assert (not b_lambda!14617))

(assert (not b_lambda!14623))

(assert b_and!58337)

(assert (not b_lambda!14625))

(assert (not b!53149))

(assert (not b!53150))

(assert (not b_lambda!14621))

(assert (not b!53148))

(assert (not b!53147))

(assert (not b_lambda!14619))

(assert (not b_next!38571))

(assert b_and!58333)

(assert (not b!53145))

(assert (not b_next!38573))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58335)

(assert (not b_next!38569))

(assert b_and!58337)

(assert (not b_next!38571))

(assert b_and!58333)

(assert (not b_next!38573))

(check-sat)

(pop 1)


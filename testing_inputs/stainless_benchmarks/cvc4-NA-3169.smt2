; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15568 () Bool)

(assert start!15568)

(declare-fun b_free!7729 () Bool)

(declare-fun b_next!40135 () Bool)

(assert (=> start!15568 (= b_free!7729 (not b_next!40135))))

(declare-fun tp!18077 () Bool)

(declare-fun b_and!60941 () Bool)

(assert (=> start!15568 (= tp!18077 b_and!60941)))

(declare-fun res!49905 () Bool)

(declare-fun e!52395 () Bool)

(assert (=> start!15568 (=> (not res!49905) (not e!52395))))

(assert (=> start!15568 (= res!49905 true)))

(assert (=> start!15568 e!52395))

(assert (=> start!15568 tp!18077))

(assert (=> start!15568 true))

(declare-fun b!96068 () Bool)

(declare-fun res!49906 () Bool)

(assert (=> b!96068 (=> (not res!49906) (not e!52395))))

(declare-datatypes () ((List!911 (Nil!848) (ListExt!13 (__x!419 Int)) (Cons!846 (head!1204 Int) (tail!1199 List!911)))))

(declare-fun list!1129 () List!911)

(assert (=> b!96068 (= res!49906 (is-Cons!846 list!1129))))

(declare-fun b!96069 () Bool)

(declare-fun res!49907 () Bool)

(assert (=> b!96069 (=> (not res!49907) (not e!52395))))

(declare-fun f!7863 () Int)

(declare-fun res!49884 () List!911)

(declare-fun dynLambda!1164 (Int Int) Int)

(declare-fun positiveMap_failling_1!0 (Int List!911) List!911)

(assert (=> b!96069 (= res!49907 (= res!49884 (Cons!846 (dynLambda!1164 f!7863 (head!1204 list!1129)) (positiveMap_failling_1!0 f!7863 (tail!1199 list!1129)))))))

(declare-fun b!96070 () Bool)

(declare-fun positive!5 (List!911) Bool)

(assert (=> b!96070 (= e!52395 (not (positive!5 res!49884)))))

(assert (= (and start!15568 res!49905) b!96068))

(assert (= (and b!96068 res!49906) b!96069))

(assert (= (and b!96069 res!49907) b!96070))

(declare-fun b_lambda!19755 () Bool)

(assert (=> (not b_lambda!19755) (not b!96069)))

(declare-fun t!56146 () Bool)

(declare-fun tb!46879 () Bool)

(assert (=> (and start!15568 (= f!7863 f!7863) t!56146) tb!46879))

(declare-fun result!47421 () Bool)

(assert (=> tb!46879 (= result!47421 true)))

(assert (=> b!96069 t!56146))

(declare-fun b_and!60943 () Bool)

(assert (= b_and!60941 (and (=> t!56146 result!47421) b_and!60943)))

(declare-fun bs!43680 () Bool)

(declare-fun s!2915 () Bool)

(assert (= bs!43680 (and start!15568 s!2915)))

(assert (=> bs!43680 (=> true (> (dynLambda!1164 f!7863 (head!1204 list!1129)) (- 2)))))

(declare-fun b_lambda!19757 () Bool)

(assert (=> (not b_lambda!19757) (not bs!43680)))

(assert (=> bs!43680 t!56146))

(declare-fun b_and!60945 () Bool)

(assert (= b_and!60943 (and (=> t!56146 result!47421) b_and!60945)))

(declare-fun bs!43681 () Bool)

(declare-fun m!91751 () Bool)

(assert (= bs!43681 m!91751))

(assert (=> bs!43681 s!2915))

(assert (=> b!96069 m!91751))

(declare-fun m!91753 () Bool)

(assert (=> b!96069 m!91753))

(declare-fun m!91755 () Bool)

(assert (=> b!96070 m!91755))

(push 1)

(assert (not b_lambda!19757))

(assert (not b!96070))

(assert b_and!60945)

(assert (not b_next!40135))

(assert (not b_lambda!19755))

(assert (not b!96069))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60945)

(assert (not b_next!40135))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19759 () Bool)

(assert (= b_lambda!19755 (or (and start!15568 b_free!7729) b_lambda!19759)))

(declare-fun b_lambda!19761 () Bool)

(assert (= b_lambda!19757 (or (and start!15568 b_free!7729) b_lambda!19761)))

(push 1)

(assert (not b!96070))

(assert (not b_lambda!19761))

(assert (not b_lambda!19759))

(assert b_and!60945)

(assert (not b_next!40135))

(assert (not b!96069))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60945)

(assert (not b_next!40135))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!62928 () Bool)

(declare-fun res!49912 () Bool)

(declare-fun e!52400 () Bool)

(assert (=> d!62928 (=> res!49912 e!52400)))

(assert (=> d!62928 (= res!49912 (not (is-Cons!846 res!49884)))))

(assert (=> d!62928 (= (positive!5 res!49884) e!52400)))

(declare-fun b!96075 () Bool)

(declare-fun e!52401 () Bool)

(assert (=> b!96075 (= e!52400 e!52401)))

(declare-fun res!49913 () Bool)

(assert (=> b!96075 (=> (not res!49913) (not e!52401))))

(assert (=> b!96075 (= res!49913 (not (< (head!1204 res!49884) 0)))))

(declare-fun b!96076 () Bool)

(assert (=> b!96076 (= e!52401 (positive!5 (tail!1199 res!49884)))))

(assert (= (and d!62928 (not res!49912)) b!96075))

(assert (= (and b!96075 res!49913) b!96076))

(declare-fun m!91757 () Bool)

(assert (=> b!96076 m!91757))

(assert (=> b!96070 d!62928))

(declare-fun bs!43682 () Bool)

(declare-fun d!62930 () Bool)

(declare-fun s!2917 () Bool)

(assert (= bs!43682 (and d!62930 s!2917)))

(assert (=> bs!43682 (=> true (> (dynLambda!1164 f!7863 (head!1204 list!1129)) (- 2)))))

(declare-fun b_lambda!19763 () Bool)

(assert (=> (not b_lambda!19763) (not bs!43682)))

(assert (=> bs!43682 t!56146))

(declare-fun b_and!60947 () Bool)

(assert (= b_and!60945 (and (=> t!56146 result!47421) b_and!60947)))

(assert (=> m!91751 s!2917))

(declare-fun bs!43683 () Bool)

(assert (= bs!43683 (and d!62930 start!15568)))

(assert (=> bs!43683 (= true true)))

(declare-fun lt!22077 () List!911)

(assert (=> d!62930 (positive!5 lt!22077)))

(declare-fun e!52404 () List!911)

(assert (=> d!62930 (= lt!22077 e!52404)))

(declare-fun c!23671 () Bool)

(assert (=> d!62930 (= c!23671 (is-Cons!846 (tail!1199 list!1129)))))

(assert (=> d!62930 true))

(assert (=> d!62930 (= (positiveMap_failling_1!0 f!7863 (tail!1199 list!1129)) lt!22077)))

(declare-fun b!96081 () Bool)

(assert (=> b!96081 (= e!52404 (Cons!846 (dynLambda!1164 f!7863 (head!1204 (tail!1199 list!1129))) (positiveMap_failling_1!0 f!7863 (tail!1199 (tail!1199 list!1129)))))))

(declare-fun b!96082 () Bool)

(assert (=> b!96082 (= e!52404 Nil!848)))

(assert (= (and d!62930 c!23671) b!96081))

(assert (= (and d!62930 (not c!23671)) b!96082))

(declare-fun b_lambda!19765 () Bool)

(assert (=> (not b_lambda!19765) (not b!96081)))

(declare-fun t!56148 () Bool)

(declare-fun tb!46881 () Bool)

(assert (=> (and start!15568 (= f!7863 f!7863) t!56148) tb!46881))

(declare-fun result!47423 () Bool)

(assert (=> tb!46881 (= result!47423 true)))

(assert (=> b!96081 t!56148))

(declare-fun b_and!60949 () Bool)

(assert (= b_and!60947 (and (=> t!56148 result!47423) b_and!60949)))

(declare-fun m!91759 () Bool)

(assert (=> d!62930 m!91759))

(declare-fun bs!43684 () Bool)

(declare-fun s!2919 () Bool)

(assert (= bs!43684 (and start!15568 s!2919)))

(assert (=> bs!43684 (=> true (> (dynLambda!1164 f!7863 (head!1204 (tail!1199 list!1129))) (- 2)))))

(declare-fun b_lambda!19767 () Bool)

(assert (=> (not b_lambda!19767) (not bs!43684)))

(assert (=> bs!43684 t!56148))

(declare-fun b_and!60951 () Bool)

(assert (= b_and!60949 (and (=> t!56148 result!47423) b_and!60951)))

(declare-fun bs!43685 () Bool)

(declare-fun m!91761 () Bool)

(assert (= bs!43685 m!91761))

(assert (=> bs!43685 s!2919))

(declare-fun bs!43686 () Bool)

(declare-fun s!2921 () Bool)

(assert (= bs!43686 (and d!62930 s!2921)))

(assert (=> bs!43686 (=> true (> (dynLambda!1164 f!7863 (head!1204 (tail!1199 list!1129))) (- 2)))))

(declare-fun b_lambda!19769 () Bool)

(assert (=> (not b_lambda!19769) (not bs!43686)))

(assert (=> bs!43686 t!56148))

(declare-fun b_and!60953 () Bool)

(assert (= b_and!60951 (and (=> t!56148 result!47423) b_and!60953)))

(assert (=> bs!43685 s!2921))

(assert (=> b!96081 m!91761))

(declare-fun m!91763 () Bool)

(assert (=> b!96081 m!91763))

(assert (=> b!96069 d!62930))

(declare-fun b_lambda!19771 () Bool)

(assert (= b_lambda!19763 (or (and start!15568 b_free!7729) b_lambda!19771)))

(declare-fun b_lambda!19773 () Bool)

(assert (= b_lambda!19767 (or (and start!15568 b_free!7729) b_lambda!19773)))

(declare-fun b_lambda!19775 () Bool)

(assert (= b_lambda!19769 (or (and start!15568 b_free!7729) b_lambda!19775)))

(declare-fun b_lambda!19777 () Bool)

(assert (= b_lambda!19765 (or (and start!15568 b_free!7729) b_lambda!19777)))

(push 1)

(assert b_and!60953)

(assert (not b_lambda!19775))

(assert (not b_lambda!19761))

(assert (not b_lambda!19759))

(assert (not d!62930))

(assert (not b!96076))

(assert (not b_next!40135))

(assert (not b_lambda!19773))

(assert (not b_lambda!19771))

(assert (not b_lambda!19777))

(assert (not b!96081))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60953)

(assert (not b_next!40135))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!62932 () Bool)

(declare-fun res!49915 () Bool)

(declare-fun e!52405 () Bool)

(assert (=> d!62932 (=> res!49915 e!52405)))

(assert (=> d!62932 (= res!49915 (not (is-Cons!846 lt!22077)))))

(assert (=> d!62932 (= (positive!5 lt!22077) e!52405)))

(declare-fun b!96083 () Bool)

(declare-fun e!52406 () Bool)

(assert (=> b!96083 (= e!52405 e!52406)))

(declare-fun res!49916 () Bool)

(assert (=> b!96083 (=> (not res!49916) (not e!52406))))

(assert (=> b!96083 (= res!49916 (not (< (head!1204 lt!22077) 0)))))

(declare-fun b!96084 () Bool)

(assert (=> b!96084 (= e!52406 (positive!5 (tail!1199 lt!22077)))))

(assert (= (and d!62932 (not res!49915)) b!96083))

(assert (= (and b!96083 res!49916) b!96084))

(declare-fun m!91765 () Bool)

(assert (=> b!96084 m!91765))

(assert (=> d!62930 d!62932))

(push 1)

(assert (not b!96084))

(assert b_and!60953)

(assert (not b_lambda!19775))

(assert (not b_lambda!19761))

(assert (not b_lambda!19759))

(assert (not b!96076))

(assert (not b_next!40135))

(assert (not b_lambda!19773))

(assert (not b_lambda!19771))

(assert (not b_lambda!19777))

(assert (not b!96081))

(check-sat)

(get-model)

(pop 1)

(push 1)

(assert (not b!96084))

(assert (not b!96081))

(assert (not b!96076))

(assert (not b_lambda!19771))

(assert (not b_lambda!19773))

(assert (not b_lambda!19775))

(assert (not b_lambda!19759))

(assert (not b_lambda!19777))

(assert (not b_lambda!19761))

(assert b_and!60953)

(assert (not b_next!40135))

(check-sat)

(get-model)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10126 () Bool)

(assert start!10126)

(declare-fun b_free!7323 () Bool)

(declare-fun b_next!39099 () Bool)

(assert (=> start!10126 (= b_free!7323 (not b_next!39099))))

(declare-fun tp!16897 () Bool)

(declare-fun b_and!58773 () Bool)

(assert (=> start!10126 (= tp!16897 b_and!58773)))

(declare-fun res!35662 () Bool)

(declare-fun e!39439 () Bool)

(assert (=> start!10126 (=> (not res!35662) (not e!39439))))

(declare-datatypes () ((List!633 (Cons!594 (head!1023 Int) (tail!1044 List!633)) (Nil!596))))

(declare-fun list!962 () List!633)

(assert (=> start!10126 (= res!35662 (is-Cons!594 list!962))))

(assert (=> start!10126 e!39439))

(assert (=> start!10126 true))

(assert (=> start!10126 tp!16897))

(declare-fun b!72981 () Bool)

(declare-fun res!35661 () Bool)

(assert (=> b!72981 (=> (not res!35661) (not e!39439))))

(declare-fun f!4404 () Int)

(declare-fun fh!5 () Int)

(declare-fun dynLambda!966 (Int Int) Int)

(assert (=> b!72981 (= res!35661 (= fh!5 (dynLambda!966 f!4404 (head!1023 list!962))))))

(declare-fun b!72982 () Bool)

(declare-fun res!35663 () Bool)

(assert (=> b!72982 (=> (not res!35663) (not e!39439))))

(declare-fun nh!5 () Int)

(assert (=> b!72982 (= res!35663 (= nh!5 (ite (< fh!5 0) (- fh!5) fh!5)))))

(declare-fun b!72984 () Bool)

(declare-fun res!35621 () List!633)

(declare-fun positive!1 (List!633) Bool)

(assert (=> b!72984 (= e!39439 (not (positive!1 res!35621)))))

(declare-fun b!72983 () Bool)

(declare-fun res!35660 () Bool)

(assert (=> b!72983 (=> (not res!35660) (not e!39439))))

(declare-fun positiveMap_passing_2!1 (Int List!633) List!633)

(assert (=> b!72983 (= res!35660 (= res!35621 (Cons!594 nh!5 (positiveMap_passing_2!1 f!4404 (tail!1044 list!962)))))))

(assert (= (and start!10126 res!35662) b!72981))

(assert (= (and b!72981 res!35661) b!72982))

(assert (= (and b!72982 res!35663) b!72983))

(assert (= (and b!72983 res!35660) b!72984))

(declare-fun b_lambda!15821 () Bool)

(assert (=> (not b_lambda!15821) (not b!72981)))

(declare-fun t!47540 () Bool)

(declare-fun tb!46157 () Bool)

(assert (=> (and start!10126 (= f!4404 f!4404) t!47540) tb!46157))

(declare-fun result!46587 () Bool)

(assert (=> tb!46157 (= result!46587 true)))

(assert (=> b!72981 t!47540))

(declare-fun b_and!58775 () Bool)

(assert (= b_and!58773 (and (=> t!47540 result!46587) b_and!58775)))

(declare-fun m!72692 () Bool)

(assert (=> b!72981 m!72692))

(declare-fun m!72694 () Bool)

(assert (=> b!72984 m!72694))

(declare-fun m!72696 () Bool)

(assert (=> b!72983 m!72696))

(push 1)

(assert (not b!72983))

(assert (not b!72984))

(assert b_and!58775)

(assert (not b_lambda!15821))

(assert (not b_next!39099))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58775)

(assert (not b_next!39099))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15823 () Bool)

(assert (= b_lambda!15821 (or (and start!10126 b_free!7323) b_lambda!15823)))

(push 1)

(assert (not b!72983))

(assert (not b!72984))

(assert (not b_lambda!15823))

(assert b_and!58775)

(assert (not b_next!39099))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58775)

(assert (not b_next!39099))

(check-sat)

(get-model)

(pop 1)

(declare-fun e!39442 () List!633)

(declare-fun lt!15501 () Int)

(declare-fun b!72989 () Bool)

(assert (=> b!72989 (= e!39442 (Cons!594 (ite (< lt!15501 0) (- lt!15501) lt!15501) (positiveMap_passing_2!1 f!4404 (tail!1044 (tail!1044 list!962)))))))

(assert (=> b!72989 (= lt!15501 (dynLambda!966 f!4404 (head!1023 (tail!1044 list!962))))))

(declare-fun d!54721 () Bool)

(declare-fun lt!15500 () List!633)

(assert (=> d!54721 (positive!1 lt!15500)))

(assert (=> d!54721 (= lt!15500 e!39442)))

(declare-fun c!17593 () Bool)

(assert (=> d!54721 (= c!17593 (is-Cons!594 (tail!1044 list!962)))))

(assert (=> d!54721 (= (positiveMap_passing_2!1 f!4404 (tail!1044 list!962)) lt!15500)))

(declare-fun b!72990 () Bool)

(assert (=> b!72990 (= e!39442 Nil!596)))

(assert (= (and d!54721 c!17593) b!72989))

(assert (= (and d!54721 (not c!17593)) b!72990))

(declare-fun b_lambda!15825 () Bool)

(assert (=> (not b_lambda!15825) (not b!72989)))

(declare-fun t!47542 () Bool)

(declare-fun tb!46159 () Bool)

(assert (=> (and start!10126 (= f!4404 f!4404) t!47542) tb!46159))

(declare-fun result!46589 () Bool)

(assert (=> tb!46159 (= result!46589 true)))

(assert (=> b!72989 t!47542))

(declare-fun b_and!58777 () Bool)

(assert (= b_and!58775 (and (=> t!47542 result!46589) b_and!58777)))

(declare-fun m!72698 () Bool)

(assert (=> b!72989 m!72698))

(declare-fun m!72700 () Bool)

(assert (=> b!72989 m!72700))

(declare-fun m!72702 () Bool)

(assert (=> d!54721 m!72702))

(assert (=> b!72983 d!54721))

(declare-fun d!54723 () Bool)

(declare-fun res!35669 () Bool)

(declare-fun e!39447 () Bool)

(assert (=> d!54723 (=> res!35669 e!39447)))

(assert (=> d!54723 (= res!35669 (not (is-Cons!594 res!35621)))))

(assert (=> d!54723 (= (positive!1 res!35621) e!39447)))

(declare-fun b!72995 () Bool)

(declare-fun e!39448 () Bool)

(assert (=> b!72995 (= e!39447 e!39448)))

(declare-fun res!35670 () Bool)

(assert (=> b!72995 (=> (not res!35670) (not e!39448))))

(assert (=> b!72995 (= res!35670 (not (< (head!1023 res!35621) 0)))))

(declare-fun b!72996 () Bool)

(assert (=> b!72996 (= e!39448 (positive!1 (tail!1044 res!35621)))))

(assert (= (and d!54723 (not res!35669)) b!72995))

(assert (= (and b!72995 res!35670) b!72996))

(declare-fun m!72704 () Bool)

(assert (=> b!72996 m!72704))

(assert (=> b!72984 d!54723))

(declare-fun b_lambda!15827 () Bool)

(assert (= b_lambda!15825 (or (and start!10126 b_free!7323) b_lambda!15827)))

(push 1)

(assert (not b!72996))

(assert (not b_lambda!15823))

(assert (not b_lambda!15827))

(assert b_and!58777)

(assert (not b_next!39099))

(assert (not d!54721))

(assert (not b!72989))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58777)

(assert (not b_next!39099))

(check-sat)

(pop 1)


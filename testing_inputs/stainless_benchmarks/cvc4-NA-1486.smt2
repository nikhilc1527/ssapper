; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10140 () Bool)

(assert start!10140)

(declare-fun b_free!7331 () Bool)

(declare-fun b_next!39107 () Bool)

(assert (=> start!10140 (= b_free!7331 (not b_next!39107))))

(declare-fun tp!16909 () Bool)

(declare-fun b_and!58809 () Bool)

(assert (=> start!10140 (= tp!16909 b_and!58809)))

(declare-fun res!35711 () Bool)

(declare-fun e!39466 () Bool)

(assert (=> start!10140 (=> (not res!35711) (not e!39466))))

(assert (=> start!10140 (= res!35711 true)))

(assert (=> start!10140 e!39466))

(assert (=> start!10140 tp!16909))

(assert (=> start!10140 true))

(declare-fun b!73034 () Bool)

(declare-fun res!35712 () Bool)

(assert (=> b!73034 (=> (not res!35712) (not e!39466))))

(declare-datatypes () ((List!637 (Cons!597 (head!1037 Int) (tail!1058 List!637)) (Nil!599))))

(declare-fun list!974 () List!637)

(declare-fun res!35675 () List!637)

(assert (=> b!73034 (= res!35712 (and (not (is-Cons!597 list!974)) (= res!35675 Nil!599)))))

(declare-fun b!73035 () Bool)

(declare-fun positive!0 (List!637) Bool)

(assert (=> b!73035 (= e!39466 (not (positive!0 res!35675)))))

(assert (= (and start!10140 res!35711) b!73034))

(assert (= (and b!73034 res!35712) b!73035))

(declare-fun m!72724 () Bool)

(assert (=> b!73035 m!72724))

(push 1)

(assert (not b!73035))

(assert b_and!58809)

(assert (not b_next!39107))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58809)

(assert (not b_next!39107))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54731 () Bool)

(declare-fun res!35717 () Bool)

(declare-fun e!39471 () Bool)

(assert (=> d!54731 (=> res!35717 e!39471)))

(assert (=> d!54731 (= res!35717 (not (is-Cons!597 res!35675)))))

(assert (=> d!54731 (= (positive!0 res!35675) e!39471)))

(declare-fun b!73040 () Bool)

(declare-fun e!39472 () Bool)

(assert (=> b!73040 (= e!39471 e!39472)))

(declare-fun res!35718 () Bool)

(assert (=> b!73040 (=> (not res!35718) (not e!39472))))

(assert (=> b!73040 (= res!35718 (not (< (head!1037 res!35675) 0)))))

(declare-fun b!73041 () Bool)

(assert (=> b!73041 (= e!39472 (positive!0 (tail!1058 res!35675)))))

(assert (= (and d!54731 (not res!35717)) b!73040))

(assert (= (and b!73040 res!35718) b!73041))

(declare-fun m!72726 () Bool)

(assert (=> b!73041 m!72726))

(assert (=> b!73035 d!54731))

(declare-fun bs!37809 () Bool)

(declare-fun s!2062 () Bool)

(assert (= bs!37809 (and start!10140 s!2062)))

(declare-fun f!4413 () Int)

(declare-fun a!818 () Int)

(declare-fun dynLambda!969 (Int Int) Int)

(assert (=> bs!37809 (=> true (> (dynLambda!969 f!4413 a!818) 0))))

(declare-fun b_lambda!15859 () Bool)

(assert (=> (not b_lambda!15859) (not bs!37809)))

(declare-fun t!47557 () Bool)

(declare-fun tb!46173 () Bool)

(assert (=> (and start!10140 (= f!4413 f!4413) t!47557) tb!46173))

(declare-fun result!46603 () Bool)

(assert (=> tb!46173 (= result!46603 true)))

(assert (=> bs!37809 t!47557))

(declare-fun b_and!58811 () Bool)

(assert (= b_and!58809 (and (=> t!47557 result!46603) b_and!58811)))

(declare-fun bs!37810 () Bool)

(declare-fun m!72728 () Bool)

(assert (= bs!37810 m!72728))

(assert (=> bs!37810 s!2062))

(declare-fun bs!37811 () Bool)

(assert (= bs!37811 true))

(assert (=> bs!37811 m!72728))

(assert (=> bs!37811 s!2062))

(push 1)

(assert (not b!73041))

(assert (not b_lambda!15859))

(assert b_and!58811)

(assert (not b_next!39107))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58811)

(assert (not b_next!39107))

(check-sat)

(pop 1)


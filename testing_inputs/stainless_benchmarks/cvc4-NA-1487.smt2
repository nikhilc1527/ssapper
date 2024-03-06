; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10144 () Bool)

(assert start!10144)

(declare-fun b_free!7333 () Bool)

(declare-fun b_next!39109 () Bool)

(assert (=> start!10144 (= b_free!7333 (not b_next!39109))))

(declare-fun tp!16915 () Bool)

(declare-fun b_and!58813 () Bool)

(assert (=> start!10144 (= tp!16915 b_and!58813)))

(declare-fun b_free!7335 () Bool)

(declare-fun b_next!39111 () Bool)

(assert (=> start!10144 (= b_free!7335 (not b_next!39111))))

(declare-fun tp!16914 () Bool)

(declare-fun b_and!58815 () Bool)

(assert (=> start!10144 (= tp!16914 b_and!58815)))

(declare-fun b!73053 () Bool)

(declare-fun inst!467 () Bool)

(declare-fun f!4417 () Int)

(declare-fun x!28873 () Int)

(declare-fun dynLambda!970 (Int Int) Int)

(assert (=> b!73053 (= inst!467 (=> true (> (dynLambda!970 f!4417 x!28873) (- 1))))))

(declare-fun b_lambda!15861 () Bool)

(assert (=> (not b_lambda!15861) (not b!73053)))

(declare-fun t!47559 () Bool)

(declare-fun tb!46175 () Bool)

(assert (=> (and start!10144 (= f!4417 f!4417) t!47559) tb!46175))

(declare-fun result!46605 () Bool)

(assert (=> tb!46175 (= result!46605 true)))

(assert (=> b!73053 t!47559))

(declare-fun b_and!58817 () Bool)

(assert (= b_and!58813 (and (=> t!47559 result!46605) b_and!58817)))

(declare-fun tb!46177 () Bool)

(declare-fun f!4416 () Int)

(declare-fun t!47561 () Bool)

(assert (=> (and start!10144 (= f!4416 f!4417) t!47561) tb!46177))

(declare-fun result!46607 () Bool)

(assert (=> tb!46177 (= result!46607 true)))

(assert (=> b!73053 t!47561))

(declare-fun b_and!58819 () Bool)

(assert (= b_and!58815 (and (=> t!47561 result!46607) b_and!58819)))

(declare-fun m!72730 () Bool)

(assert (=> b!73053 m!72730))

(declare-fun bs!37813 () Bool)

(assert (= bs!37813 (and start!10144 b!73053)))

(assert (=> (and bs!37813 (= f!4416 f!4417)) (= true inst!467)))

(declare-fun b!73052 () Bool)

(declare-fun res!35728 () Bool)

(declare-fun e!39475 () Bool)

(assert (=> b!73052 (=> (not res!35728) (not e!39475))))

(declare-datatypes () ((List!638 (Cons!598 (head!1038 Int) (tail!1059 List!638)) (Nil!600))))

(declare-fun list!984 () List!638)

(declare-fun list!985 () List!638)

(assert (=> b!73052 (= res!35728 (and (= f!4417 f!4416) (= list!985 (tail!1059 list!984))))))

(declare-fun b!73050 () Bool)

(declare-fun res!35727 () Bool)

(assert (=> b!73050 (=> (not res!35727) (not e!39475))))

(assert (=> b!73050 (= res!35727 (is-Cons!598 list!984))))

(declare-fun b!73051 () Bool)

(declare-fun res!35729 () Bool)

(assert (=> b!73051 (=> (not res!35729) (not e!39475))))

(declare-fun head!1031 () Int)

(assert (=> b!73051 (= res!35729 (= head!1031 (dynLambda!970 f!4416 (head!1038 list!984))))))

(assert (=> b!73053 (= e!39475 (not inst!467))))

(declare-fun res!35730 () Bool)

(assert (=> start!10144 (=> (not res!35730) (not e!39475))))

(assert (=> start!10144 (= res!35730 true)))

(assert (=> start!10144 e!39475))

(assert (=> start!10144 true))

(assert (=> start!10144 tp!16915))

(assert (=> start!10144 tp!16914))

(assert (= (and start!10144 res!35730) b!73050))

(assert (= (and b!73050 res!35727) b!73051))

(assert (= (and b!73051 res!35729) b!73052))

(assert (= (and b!73052 res!35728) b!73053))

(declare-fun b_lambda!15863 () Bool)

(assert (=> (not b_lambda!15863) (not b!73051)))

(declare-fun t!47563 () Bool)

(declare-fun tb!46179 () Bool)

(assert (=> (and start!10144 (= f!4417 f!4416) t!47563) tb!46179))

(declare-fun result!46609 () Bool)

(assert (=> tb!46179 (= result!46609 true)))

(assert (=> b!73051 t!47563))

(declare-fun b_and!58821 () Bool)

(assert (= b_and!58817 (and (=> t!47563 result!46609) b_and!58821)))

(declare-fun t!47565 () Bool)

(declare-fun tb!46181 () Bool)

(assert (=> (and start!10144 (= f!4416 f!4416) t!47565) tb!46181))

(declare-fun result!46611 () Bool)

(assert (=> tb!46181 (= result!46611 true)))

(assert (=> b!73051 t!47565))

(declare-fun b_and!58823 () Bool)

(assert (= b_and!58819 (and (=> t!47565 result!46611) b_and!58823)))

(declare-fun bs!37814 () Bool)

(declare-fun s!2064 () Bool)

(assert (= bs!37814 (and start!10144 s!2064)))

(assert (=> bs!37814 (=> true (> (dynLambda!970 f!4416 (head!1038 list!984)) (- 1)))))

(declare-fun b_lambda!15865 () Bool)

(assert (=> (not b_lambda!15865) (not bs!37814)))

(assert (=> bs!37814 t!47563))

(declare-fun b_and!58825 () Bool)

(assert (= b_and!58821 (and (=> t!47563 result!46609) b_and!58825)))

(assert (=> bs!37814 t!47565))

(declare-fun b_and!58827 () Bool)

(assert (= b_and!58823 (and (=> t!47565 result!46611) b_and!58827)))

(declare-fun bs!37815 () Bool)

(declare-fun m!72732 () Bool)

(assert (= bs!37815 m!72732))

(assert (=> bs!37815 s!2064))

(assert (=> b!73051 m!72732))

(push 1)

(assert b_and!58827)

(assert (not b_next!39111))

(assert (not b_lambda!15863))

(assert b_and!58825)

(assert (not b_lambda!15861))

(assert (not b_next!39109))

(assert (not b_lambda!15865))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58825)

(assert b_and!58827)

(assert (not b_next!39111))

(assert (not b_next!39109))

(check-sat)

(pop 1)


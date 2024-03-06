; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10152 () Bool)

(assert start!10152)

(declare-fun b_free!7339 () Bool)

(declare-fun b_next!39115 () Bool)

(assert (=> start!10152 (= b_free!7339 (not b_next!39115))))

(declare-fun tp!16921 () Bool)

(declare-fun b_and!58843 () Bool)

(assert (=> start!10152 (= tp!16921 b_and!58843)))

(declare-fun res!35751 () Bool)

(declare-fun e!39490 () Bool)

(assert (=> start!10152 (=> (not res!35751) (not e!39490))))

(assert (=> start!10152 (= res!35751 true)))

(assert (=> start!10152 e!39490))

(assert (=> start!10152 tp!16921))

(assert (=> start!10152 true))

(declare-fun b!73079 () Bool)

(declare-fun res!35752 () Bool)

(assert (=> b!73079 (=> (not res!35752) (not e!39490))))

(declare-datatypes () ((List!640 (Cons!600 (head!1040 Int) (tail!1061 List!640)) (Nil!602))))

(declare-fun list!984 () List!640)

(declare-fun res!35678 () List!640)

(assert (=> b!73079 (= res!35752 (and (not (is-Cons!600 list!984)) (= res!35678 Nil!602)))))

(declare-fun b!73080 () Bool)

(declare-fun positive!0 (List!640) Bool)

(assert (=> b!73080 (= e!39490 (not (positive!0 res!35678)))))

(assert (= (and start!10152 res!35751) b!73079))

(assert (= (and b!73079 res!35752) b!73080))

(declare-fun m!72748 () Bool)

(assert (=> b!73080 m!72748))

(push 1)

(assert (not b!73080))

(assert b_and!58843)

(assert (not b_next!39115))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58843)

(assert (not b_next!39115))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54737 () Bool)

(declare-fun res!35757 () Bool)

(declare-fun e!39495 () Bool)

(assert (=> d!54737 (=> res!35757 e!39495)))

(assert (=> d!54737 (= res!35757 (not (is-Cons!600 res!35678)))))

(assert (=> d!54737 (= (positive!0 res!35678) e!39495)))

(declare-fun b!73085 () Bool)

(declare-fun e!39496 () Bool)

(assert (=> b!73085 (= e!39495 e!39496)))

(declare-fun res!35758 () Bool)

(assert (=> b!73085 (=> (not res!35758) (not e!39496))))

(assert (=> b!73085 (= res!35758 (not (< (head!1040 res!35678) 0)))))

(declare-fun b!73086 () Bool)

(assert (=> b!73086 (= e!39496 (positive!0 (tail!1061 res!35678)))))

(assert (= (and d!54737 (not res!35757)) b!73085))

(assert (= (and b!73085 res!35758) b!73086))

(declare-fun m!72750 () Bool)

(assert (=> b!73086 m!72750))

(assert (=> b!73080 d!54737))

(declare-fun bs!37825 () Bool)

(declare-fun s!2074 () Bool)

(assert (= bs!37825 (and start!10152 s!2074)))

(declare-fun f!4416 () Int)

(declare-fun a!828 () Int)

(declare-fun dynLambda!972 (Int Int) Int)

(assert (=> bs!37825 (=> true (> (dynLambda!972 f!4416 a!828) (- 1)))))

(declare-fun b_lambda!15891 () Bool)

(assert (=> (not b_lambda!15891) (not bs!37825)))

(declare-fun t!47571 () Bool)

(declare-fun tb!46187 () Bool)

(assert (=> (and start!10152 (= f!4416 f!4416) t!47571) tb!46187))

(declare-fun result!46617 () Bool)

(assert (=> tb!46187 (= result!46617 true)))

(assert (=> bs!37825 t!47571))

(declare-fun b_and!58845 () Bool)

(assert (= b_and!58843 (and (=> t!47571 result!46617) b_and!58845)))

(declare-fun bs!37826 () Bool)

(declare-fun m!72752 () Bool)

(assert (= bs!37826 m!72752))

(assert (=> bs!37826 s!2074))

(declare-fun bs!37827 () Bool)

(assert (= bs!37827 true))

(assert (=> bs!37827 m!72752))

(assert (=> bs!37827 s!2074))

(push 1)

(assert (not b!73086))

(assert (not b_lambda!15891))

(assert b_and!58845)

(assert (not b_next!39115))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58845)

(assert (not b_next!39115))

(check-sat)

(pop 1)


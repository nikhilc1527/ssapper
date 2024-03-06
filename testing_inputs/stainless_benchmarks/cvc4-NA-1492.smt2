; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10162 () Bool)

(assert start!10162)

(declare-fun b_free!7343 () Bool)

(declare-fun b_next!39119 () Bool)

(assert (=> start!10162 (= b_free!7343 (not b_next!39119))))

(declare-fun tp!16927 () Bool)

(declare-fun b_and!58853 () Bool)

(assert (=> start!10162 (= tp!16927 b_and!58853)))

(declare-fun b!73108 () Bool)

(declare-fun res!35791 () Bool)

(declare-fun e!39507 () Bool)

(assert (=> b!73108 (=> res!35791 e!39507)))

(declare-fun x!28925 () Int)

(assert (=> b!73108 (= res!35791 (<= x!28925 0))))

(declare-fun inst!473 () Bool)

(assert (=> b!73108 (= inst!473 (=> true e!39507))))

(declare-fun res!35766 () Int)

(declare-fun f!4430 () Int)

(declare-fun b!73109 () Bool)

(declare-fun dynLambda!974 (Int Int) Int)

(assert (=> b!73109 (= e!39507 (> res!35766 (dynLambda!974 f!4430 x!28925)))))

(assert (= (and b!73108 (not res!35791)) b!73109))

(declare-fun b_lambda!15897 () Bool)

(assert (=> (not b_lambda!15897) (not b!73109)))

(declare-fun t!47577 () Bool)

(declare-fun tb!46191 () Bool)

(assert (=> (and start!10162 (= f!4430 f!4430) t!47577) tb!46191))

(declare-fun result!46621 () Bool)

(assert (=> tb!46191 (= result!46621 true)))

(assert (=> b!73109 t!47577))

(declare-fun b_and!58855 () Bool)

(assert (= b_and!58853 (and (=> t!47577 result!46621) b_and!58855)))

(declare-fun m!72758 () Bool)

(assert (=> b!73109 m!72758))

(declare-fun bs!37833 () Bool)

(declare-fun b!73106 () Bool)

(declare-fun s!2082 () Bool)

(assert (= bs!37833 (and start!10162 b!73106 s!2082)))

(declare-fun res!35792 () Bool)

(declare-fun e!39508 () Bool)

(assert (=> bs!37833 (=> res!35792 e!39508)))

(assert (=> bs!37833 (= res!35792 (<= x!28925 0))))

(assert (=> bs!37833 (=> true e!39508)))

(declare-fun b!73110 () Bool)

(assert (=> b!73110 (= e!39508 (< (dynLambda!974 f!4430 x!28925) 0))))

(assert (= (and bs!37833 (not res!35792)) b!73110))

(declare-fun b_lambda!15899 () Bool)

(assert (=> (not b_lambda!15899) (not b!73110)))

(assert (=> b!73110 t!47577))

(declare-fun b_and!58857 () Bool)

(assert (= b_and!58855 (and (=> t!47577 result!46621) b_and!58857)))

(assert (=> m!72758 s!2082))

(declare-fun res!35790 () Bool)

(declare-fun e!39506 () Bool)

(assert (=> start!10162 (=> (not res!35790) (not e!39506))))

(declare-fun x!28909 () Int)

(assert (=> start!10162 (= res!35790 (>= x!28909 0))))

(assert (=> start!10162 e!39506))

(assert (=> start!10162 true))

(assert (=> start!10162 tp!16927))

(declare-fun res!35788 () Bool)

(assert (=> b!73106 (=> (not res!35788) (not e!39506))))

(assert (=> b!73106 (= res!35788 true)))

(declare-fun b!73107 () Bool)

(declare-fun res!35789 () Bool)

(assert (=> b!73107 (=> (not res!35789) (not e!39506))))

(assert (=> b!73107 (= res!35789 (= res!35766 x!28909))))

(assert (=> b!73108 (= e!39506 (not inst!473))))

(assert (= (and start!10162 res!35790) b!73106))

(assert (= (and b!73106 res!35788) b!73107))

(assert (= (and b!73107 res!35789) b!73108))

(push 1)

(assert (not b_lambda!15897))

(assert (not b_lambda!15899))

(assert b_and!58857)

(assert (not b_next!39119))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58857)

(assert (not b_next!39119))

(check-sat)

(pop 1)


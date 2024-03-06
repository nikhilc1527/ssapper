; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10166 () Bool)

(assert start!10166)

(declare-fun b_free!7349 () Bool)

(declare-fun b_next!39125 () Bool)

(assert (=> start!10166 (= b_free!7349 (not b_next!39125))))

(declare-fun tp!16936 () Bool)

(declare-fun b_and!58867 () Bool)

(assert (=> start!10166 (= tp!16936 b_and!58867)))

(declare-fun b_next!39127 () Bool)

(declare-fun res!35768 () Int)

(declare-fun lambda!9202 () Int)

(assert (=> start!10166 (= b_next!39125 (or (and start!10166 (= lambda!9202 res!35768)) b_next!39127))))

(declare-fun b!73119 () Bool)

(declare-fun inst!479 () Bool)

(declare-fun x!28937 () Int)

(declare-fun dynLambda!976 (Int Int) Int)

(assert (=> b!73119 (= inst!479 (=> true (> (dynLambda!976 res!35768 x!28937) x!28937)))))

(declare-fun b_lambda!15903 () Bool)

(assert (=> (not b_lambda!15903) (not b!73119)))

(declare-fun t!47583 () Bool)

(declare-fun tb!46197 () Bool)

(assert (=> (and start!10166 (= res!35768 res!35768) t!47583) tb!46197))

(declare-fun result!46627 () Bool)

(assert (=> tb!46197 (= result!46627 true)))

(assert (=> b!73119 t!47583))

(declare-fun b_and!58869 () Bool)

(assert (= b_and!58867 (and (=> t!47583 result!46627) b_and!58869)))

(declare-fun m!72762 () Bool)

(assert (=> b!73119 m!72762))

(declare-fun res!35801 () Bool)

(declare-fun e!39514 () Bool)

(assert (=> start!10166 (=> (not res!35801) (not e!39514))))

(assert (=> start!10166 (= res!35801 (= res!35768 lambda!9202))))

(assert (=> start!10166 e!39514))

(assert (=> start!10166 tp!16936))

(assert (=> b!73119 (= e!39514 (not inst!479))))

(assert (= (and start!10166 res!35801) b!73119))

(push 1)

(assert (not b_lambda!15903))

(assert b_and!58869)

(assert (not b_next!39127))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58869)

(assert (not b_next!39127))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15905 () Bool)

(assert (= b_lambda!15903 (or (and start!10166 (= lambda!9202 res!35768)) (and start!10166 b_free!7349) b_lambda!15905)))

(declare-fun bs!37837 () Bool)

(declare-fun d!54745 () Bool)

(assert (= bs!37837 (and d!54745 start!10166)))

(assert (=> bs!37837 (= (dynLambda!976 lambda!9202 x!28937) (+ x!28937 1))))

(assert (=> (and start!10166 (= lambda!9202 res!35768) b!73119) d!54745))

(push 1)

(assert (not b_lambda!15905))

(assert b_and!58869)

(assert (not b_next!39127))

(check-sat)

(pop 1)


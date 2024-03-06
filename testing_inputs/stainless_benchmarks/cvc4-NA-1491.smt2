; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10160 () Bool)

(assert start!10160)

(declare-fun b_free!7341 () Bool)

(declare-fun b_next!39117 () Bool)

(assert (=> start!10160 (= b_free!7341 (not b_next!39117))))

(declare-fun tp!16924 () Bool)

(declare-fun b_and!58847 () Bool)

(assert (=> start!10160 (= tp!16924 b_and!58847)))

(declare-fun x!28918 () Int)

(declare-fun f!4429 () Int)

(declare-fun inst!470 () Bool)

(declare-fun b!73095 () Bool)

(declare-fun res!35765 () Int)

(declare-fun dynLambda!973 (Int Int) Int)

(assert (=> b!73095 (= inst!470 (=> true (> res!35765 (dynLambda!973 f!4429 x!28918))))))

(declare-fun b_lambda!15893 () Bool)

(assert (=> (not b_lambda!15893) (not b!73095)))

(declare-fun t!47575 () Bool)

(declare-fun tb!46189 () Bool)

(assert (=> (and start!10160 (= f!4429 f!4429) t!47575) tb!46189))

(declare-fun result!46619 () Bool)

(assert (=> tb!46189 (= result!46619 true)))

(assert (=> b!73095 t!47575))

(declare-fun b_and!58849 () Bool)

(assert (= b_and!58847 (and (=> t!47575 result!46619) b_and!58849)))

(declare-fun m!72756 () Bool)

(assert (=> b!73095 m!72756))

(declare-fun bs!37831 () Bool)

(declare-fun b!73093 () Bool)

(declare-fun s!2080 () Bool)

(assert (= bs!37831 (and start!10160 b!73093 s!2080)))

(assert (=> bs!37831 (=> true (< (dynLambda!973 f!4429 x!28918) 0))))

(declare-fun b_lambda!15895 () Bool)

(assert (=> (not b_lambda!15895) (not bs!37831)))

(assert (=> bs!37831 t!47575))

(declare-fun b_and!58851 () Bool)

(assert (= b_and!58849 (and (=> t!47575 result!46619) b_and!58851)))

(assert (=> m!72756 s!2080))

(declare-fun res!35777 () Bool)

(declare-fun e!39499 () Bool)

(assert (=> start!10160 (=> (not res!35777) (not e!39499))))

(declare-fun x!28908 () Int)

(assert (=> start!10160 (= res!35777 (>= x!28908 0))))

(assert (=> start!10160 e!39499))

(assert (=> start!10160 true))

(assert (=> start!10160 tp!16924))

(declare-fun res!35775 () Bool)

(assert (=> b!73093 (=> (not res!35775) (not e!39499))))

(assert (=> b!73093 (= res!35775 true)))

(declare-fun b!73094 () Bool)

(declare-fun res!35776 () Bool)

(assert (=> b!73094 (=> (not res!35776) (not e!39499))))

(assert (=> b!73094 (= res!35776 (= res!35765 x!28908))))

(assert (=> b!73095 (= e!39499 (not inst!470))))

(assert (= (and start!10160 res!35777) b!73093))

(assert (= (and b!73093 res!35775) b!73094))

(assert (= (and b!73094 res!35776) b!73095))

(push 1)

(assert (not b_lambda!15893))

(assert (not b_lambda!15895))

(assert b_and!58851)

(assert (not b_next!39117))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58851)

(assert (not b_next!39117))

(check-sat)

(pop 1)


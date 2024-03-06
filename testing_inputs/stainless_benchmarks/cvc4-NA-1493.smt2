; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10164 () Bool)

(assert start!10164)

(declare-fun b_free!7345 () Bool)

(declare-fun b_next!39121 () Bool)

(assert (=> start!10164 (= b_free!7345 (not b_next!39121))))

(declare-fun tp!16932 () Bool)

(declare-fun b_and!58859 () Bool)

(assert (=> start!10164 (= tp!16932 b_and!58859)))

(declare-fun b_free!7347 () Bool)

(declare-fun b_next!39123 () Bool)

(assert (=> start!10164 (= b_free!7347 (not b_next!39123))))

(declare-fun tp!16933 () Bool)

(declare-fun b_and!58861 () Bool)

(assert (=> start!10164 (= tp!16933 b_and!58861)))

(declare-fun b!73116 () Bool)

(declare-fun inst!476 () Bool)

(declare-fun res!35767 () Int)

(declare-fun x!28930 () Int)

(declare-fun dynLambda!975 (Int Int) Int)

(assert (=> b!73116 (= inst!476 (=> true (> (dynLambda!975 res!35767 x!28930) 0)))))

(declare-fun b_lambda!15901 () Bool)

(assert (=> (not b_lambda!15901) (not b!73116)))

(declare-fun t!47579 () Bool)

(declare-fun tb!46193 () Bool)

(declare-fun f!4431 () Int)

(assert (=> (and start!10164 (= f!4431 res!35767) t!47579) tb!46193))

(declare-fun result!46623 () Bool)

(assert (=> tb!46193 (= result!46623 true)))

(assert (=> b!73116 t!47579))

(declare-fun b_and!58863 () Bool)

(assert (= b_and!58859 (and (=> t!47579 result!46623) b_and!58863)))

(declare-fun t!47581 () Bool)

(declare-fun tb!46195 () Bool)

(assert (=> (and start!10164 (= res!35767 res!35767) t!47581) tb!46195))

(declare-fun result!46625 () Bool)

(assert (=> tb!46195 (= result!46625 true)))

(assert (=> b!73116 t!47581))

(declare-fun b_and!58865 () Bool)

(assert (= b_and!58861 (and (=> t!47581 result!46625) b_and!58865)))

(declare-fun m!72760 () Bool)

(assert (=> b!73116 m!72760))

(declare-fun bs!37835 () Bool)

(assert (= bs!37835 (and start!10164 b!73116)))

(assert (=> (and bs!37835 (= f!4431 res!35767)) (= true inst!476)))

(declare-fun res!35798 () Bool)

(declare-fun e!39511 () Bool)

(assert (=> start!10164 (=> (not res!35798) (not e!39511))))

(assert (=> start!10164 (= res!35798 true)))

(assert (=> start!10164 e!39511))

(assert (=> start!10164 tp!16932))

(assert (=> start!10164 tp!16933))

(declare-fun b!73115 () Bool)

(declare-fun res!35797 () Bool)

(assert (=> b!73115 (=> (not res!35797) (not e!39511))))

(assert (=> b!73115 (= res!35797 (= res!35767 f!4431))))

(assert (=> b!73116 (= e!39511 (not inst!476))))

(assert (= (and start!10164 res!35798) b!73115))

(assert (= (and b!73115 res!35797) b!73116))

(push 1)

(assert b_and!58865)

(assert (not b_lambda!15901))

(assert (not b_next!39123))

(assert b_and!58863)

(assert (not b_next!39121))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58863)

(assert b_and!58865)

(assert (not b_next!39121))

(assert (not b_next!39123))

(check-sat)

(pop 1)


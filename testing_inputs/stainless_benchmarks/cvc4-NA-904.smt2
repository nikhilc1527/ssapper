; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6890 () Bool)

(assert start!6890)

(declare-fun b_free!7221 () Bool)

(declare-fun b_next!38529 () Bool)

(assert (=> start!6890 (= b_free!7221 (not b_next!38529))))

(declare-fun tp!14889 () Bool)

(declare-fun b_and!58177 () Bool)

(assert (=> start!6890 (= tp!14889 b_and!58177)))

(declare-fun b_free!7223 () Bool)

(declare-fun b_next!38531 () Bool)

(assert (=> start!6890 (= b_free!7223 (not b_next!38531))))

(declare-fun tp!14890 () Bool)

(declare-fun b_and!58179 () Bool)

(assert (=> start!6890 (= tp!14890 b_and!58179)))

(declare-fun res!23386 () Bool)

(declare-fun e!26428 () Bool)

(assert (=> start!6890 (=> (not res!23386) (not e!26428))))

(declare-fun x!19773 () (_ BitVec 32))

(assert (=> start!6890 (= res!23386 (bvsgt x!19773 #b00000000000000000000000000000000))))

(assert (=> start!6890 e!26428))

(assert (=> start!6890 true))

(assert (=> start!6890 tp!14889))

(assert (=> start!6890 tp!14890))

(declare-fun b!50945 () Bool)

(declare-fun res!23385 () Bool)

(assert (=> b!50945 (=> (not res!23385) (not e!26428))))

(declare-fun f!3032 () Int)

(declare-fun g!89 () Int)

(declare-fun res!23380 () (_ BitVec 32))

(declare-fun dynLambda!887 (Int (_ BitVec 32)) (_ BitVec 32))

(declare-fun switch!1 ((_ BitVec 32) Int Int) Int)

(assert (=> b!50945 (= res!23385 (= res!23380 (dynLambda!887 (switch!1 #b00000000000000000000000000000001 (switch!1 x!19773 f!3032 g!89) g!89) #b00000000000000000000000000000001)))))

(declare-fun b!50946 () Bool)

(assert (=> b!50946 (= e!26428 (not (= res!23380 (dynLambda!887 f!3032 #b00000000000000000000000000000001))))))

(assert (= (and start!6890 res!23386) b!50945))

(assert (= (and b!50945 res!23385) b!50946))

(declare-fun b_lambda!14533 () Bool)

(assert (=> (not b_lambda!14533) (not b!50945)))

(declare-fun tb!45767 () Bool)

(declare-fun t!46591 () Bool)

(assert (=> (and start!6890 (= f!3032 (switch!1 #b00000000000000000000000000000001 (switch!1 x!19773 f!3032 g!89) g!89)) t!46591) tb!45767))

(declare-fun result!46043 () Bool)

(assert (=> tb!45767 (= result!46043 true)))

(assert (=> b!50945 t!46591))

(declare-fun b_and!58181 () Bool)

(assert (= b_and!58177 (and (=> t!46591 result!46043) b_and!58181)))

(declare-fun tb!45769 () Bool)

(declare-fun t!46593 () Bool)

(assert (=> (and start!6890 (= g!89 (switch!1 #b00000000000000000000000000000001 (switch!1 x!19773 f!3032 g!89) g!89)) t!46593) tb!45769))

(declare-fun result!46045 () Bool)

(assert (=> tb!45769 (= result!46045 true)))

(assert (=> b!50945 t!46593))

(declare-fun b_and!58183 () Bool)

(assert (= b_and!58179 (and (=> t!46593 result!46045) b_and!58183)))

(declare-fun b_lambda!14535 () Bool)

(assert (=> (not b_lambda!14535) (not b!50946)))

(declare-fun t!46595 () Bool)

(declare-fun tb!45771 () Bool)

(assert (=> (and start!6890 (= f!3032 f!3032) t!46595) tb!45771))

(declare-fun result!46047 () Bool)

(assert (=> tb!45771 (= result!46047 true)))

(assert (=> b!50946 t!46595))

(declare-fun b_and!58185 () Bool)

(assert (= b_and!58181 (and (=> t!46595 result!46047) b_and!58185)))

(declare-fun t!46597 () Bool)

(declare-fun tb!45773 () Bool)

(assert (=> (and start!6890 (= g!89 f!3032) t!46597) tb!45773))

(declare-fun result!46049 () Bool)

(assert (=> tb!45773 (= result!46049 true)))

(assert (=> b!50946 t!46597))

(declare-fun b_and!58187 () Bool)

(assert (= b_and!58183 (and (=> t!46597 result!46049) b_and!58187)))

(declare-fun m!54497 () Bool)

(assert (=> b!50945 m!54497))

(assert (=> b!50945 m!54497))

(declare-fun m!54499 () Bool)

(assert (=> b!50945 m!54499))

(declare-fun m!54501 () Bool)

(assert (=> b!50945 m!54501))

(declare-fun m!54503 () Bool)

(assert (=> b!50946 m!54503))

(push 1)

(assert b_and!58187)

(assert b_and!58185)

(assert (not b!50945))

(assert (not b_lambda!14535))

(assert (not b_next!38529))

(assert (not b_next!38531))

(assert (not b_lambda!14533))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58185)

(assert b_and!58187)

(assert (not b_next!38531))

(assert (not b_next!38529))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!14537 () Bool)

(assert (= b_lambda!14535 (or (and start!6890 b_free!7221) (and start!6890 b_free!7223 (= g!89 f!3032)) b_lambda!14537)))

(push 1)

(assert b_and!58187)

(assert b_and!58185)

(assert (not b!50945))

(assert (not b_next!38529))

(assert (not b_next!38531))

(assert (not b_lambda!14533))

(assert (not b_lambda!14537))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58185)

(assert b_and!58187)

(assert (not b_next!38531))

(assert (not b_next!38529))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43478 () Bool)

(assert (=> d!43478 (= (switch!1 #b00000000000000000000000000000001 (switch!1 x!19773 f!3032 g!89) g!89) (ite (bvsgt #b00000000000000000000000000000001 #b00000000000000000000000000000000) (switch!1 x!19773 f!3032 g!89) g!89))))

(assert (=> b!50945 d!43478))

(declare-fun d!43480 () Bool)

(assert (=> d!43480 (= (switch!1 x!19773 f!3032 g!89) (ite (bvsgt x!19773 #b00000000000000000000000000000000) f!3032 g!89))))

(assert (=> b!50945 d!43480))

(declare-fun b_lambda!14539 () Bool)

(assert (= b_lambda!14533 (or (and start!6890 b_free!7221 (= f!3032 (switch!1 #b00000000000000000000000000000001 (switch!1 x!19773 f!3032 g!89) g!89))) (and start!6890 b_free!7223 (= g!89 (switch!1 #b00000000000000000000000000000001 (switch!1 x!19773 f!3032 g!89) g!89))) b_lambda!14539)))

(push 1)

(assert b_and!58187)

(assert b_and!58185)

(assert (not b_next!38529))

(assert (not b_next!38531))

(assert (not b_lambda!14539))

(assert (not b_lambda!14537))

(check-sat)

(pop 1)


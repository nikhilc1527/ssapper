; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6894 () Bool)

(assert start!6894)

(declare-fun b_free!7225 () Bool)

(declare-fun b_next!38533 () Bool)

(assert (=> start!6894 (= b_free!7225 (not b_next!38533))))

(declare-fun tp!14893 () Bool)

(declare-fun b_and!58189 () Bool)

(assert (=> start!6894 (= tp!14893 b_and!58189)))

(declare-fun f!3029 () Int)

(declare-fun lambda!8557 () Int)

(declare-fun b_next!38535 () Bool)

(assert (=> start!6894 (= b_next!38533 (or (and start!6894 (= lambda!8557 f!3029)) b_next!38535))))

(declare-fun res!23389 () Bool)

(declare-fun e!26431 () Bool)

(assert (=> start!6894 (=> (not res!23389) (not e!26431))))

(declare-fun res!23379 () (_ BitVec 32))

(declare-fun dynLambda!888 (Int (_ BitVec 32)) (_ BitVec 32))

(declare-fun switch!1 ((_ BitVec 32) Int Int) Int)

(assert (=> start!6894 (= res!23389 (= res!23379 (dynLambda!888 (switch!1 #b00000000000000000000000000001010 lambda!8557 f!3029) #b00000000000000000000000000000010)))))

(assert (=> start!6894 e!26431))

(assert (=> start!6894 true))

(assert (=> start!6894 tp!14893))

(declare-fun b!50949 () Bool)

(assert (=> b!50949 (= e!26431 (bvsle res!23379 #b00000000000000000000000000000000))))

(assert (= (and start!6894 res!23389) b!50949))

(declare-fun b_lambda!14541 () Bool)

(assert (=> (not b_lambda!14541) (not start!6894)))

(declare-fun tb!45775 () Bool)

(declare-fun t!46599 () Bool)

(assert (=> (and start!6894 (= f!3029 (switch!1 #b00000000000000000000000000001010 lambda!8557 f!3029)) t!46599) tb!45775))

(declare-fun result!46051 () Bool)

(assert (=> tb!45775 (= result!46051 true)))

(assert (=> start!6894 t!46599))

(declare-fun b_and!58191 () Bool)

(assert (= b_and!58189 (and (=> t!46599 result!46051) b_and!58191)))

(declare-fun m!54505 () Bool)

(assert (=> start!6894 m!54505))

(declare-fun m!54507 () Bool)

(assert (=> start!6894 m!54507))

(push 1)

(assert (not start!6894))

(assert (not b_lambda!14541))

(assert b_and!58191)

(assert (not b_next!38535))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58191)

(assert (not b_next!38535))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43482 () Bool)

(assert (=> d!43482 (= (switch!1 #b00000000000000000000000000001010 lambda!8557 f!3029) (ite (bvsgt #b00000000000000000000000000001010 #b00000000000000000000000000000000) lambda!8557 f!3029))))

(assert (=> start!6894 d!43482))

(declare-fun b_lambda!14543 () Bool)

(assert (= b_lambda!14541 (or (and start!6894 (= lambda!8557 (switch!1 #b00000000000000000000000000001010 lambda!8557 f!3029))) (and start!6894 b_free!7225 (= f!3029 (switch!1 #b00000000000000000000000000001010 lambda!8557 f!3029))) b_lambda!14543)))

(declare-fun bs!23703 () Bool)

(declare-fun d!43484 () Bool)

(assert (= bs!23703 (and d!43484 start!6894)))

(assert (=> bs!23703 (= (dynLambda!888 lambda!8557 #b00000000000000000000000000000010) (bvadd #b00000000000000000000000000000010 #b00000000000000000000000000000001))))

(assert (=> (and start!6894 (= lambda!8557 (switch!1 #b00000000000000000000000000001010 lambda!8557 f!3029))) d!43484))

(push 1)

(assert (not b_lambda!14543))

(assert b_and!58191)

(assert (not b_next!38535))

(check-sat)

(pop 1)


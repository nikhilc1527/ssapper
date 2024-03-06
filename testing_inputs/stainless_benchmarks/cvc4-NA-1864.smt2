; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12500 () Bool)

(assert start!12500)

(declare-fun b_free!7713 () Bool)

(declare-fun b_next!40101 () Bool)

(assert (=> start!12500 (= b_free!7713 (not b_next!40101))))

(declare-fun tp!18009 () Bool)

(declare-fun b_and!60905 () Bool)

(assert (=> start!12500 (= tp!18009 b_and!60905)))

(declare-fun lambda!11134 () Int)

(declare-fun b_next!40103 () Bool)

(declare-fun f!5418 () Int)

(assert (=> start!12500 (= b_next!40101 (or (and start!12500 (= lambda!11134 f!5418)) b_next!40103))))

(declare-fun res!48399 () Bool)

(declare-fun e!50382 () Bool)

(assert (=> start!12500 (=> (not res!48399) (not e!50382))))

(declare-fun res!48395 () (_ BitVec 32))

(declare-fun dynLambda!1134 (Int (_ BitVec 32)) (_ BitVec 32))

(declare-fun switch!2 ((_ BitVec 32) Int Int) Int)

(assert (=> start!12500 (= res!48399 (= res!48395 (dynLambda!1134 (switch!2 #b11111111111111111111111111110110 lambda!11134 f!5418) #b00000000000000000000000000000010)))))

(assert (=> start!12500 e!50382))

(assert (=> start!12500 true))

(assert (=> start!12500 tp!18009))

(declare-fun b!92044 () Bool)

(assert (=> b!92044 (= e!50382 (bvsle res!48395 #b00000000000000000000000000000000))))

(assert (= (and start!12500 res!48399) b!92044))

(declare-fun b_lambda!18883 () Bool)

(assert (=> (not b_lambda!18883) (not start!12500)))

(declare-fun t!49169 () Bool)

(declare-fun tb!46863 () Bool)

(assert (=> (and start!12500 (= f!5418 (switch!2 #b11111111111111111111111111110110 lambda!11134 f!5418)) t!49169) tb!46863))

(declare-fun result!47401 () Bool)

(assert (=> tb!46863 (= result!47401 true)))

(assert (=> start!12500 t!49169))

(declare-fun b_and!60907 () Bool)

(assert (= b_and!60905 (and (=> t!49169 result!47401) b_and!60907)))

(declare-fun m!87784 () Bool)

(assert (=> start!12500 m!87784))

(declare-fun m!87786 () Bool)

(assert (=> start!12500 m!87786))

(push 1)

(assert (not start!12500))

(assert (not b_lambda!18883))

(assert b_and!60907)

(assert (not b_next!40103))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60907)

(assert (not b_next!40103))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60420 () Bool)

(assert (=> d!60420 (= (switch!2 #b11111111111111111111111111110110 lambda!11134 f!5418) (ite (bvsgt #b11111111111111111111111111110110 #b00000000000000000000000000000000) lambda!11134 f!5418))))

(assert (=> start!12500 d!60420))

(declare-fun b_lambda!18885 () Bool)

(assert (= b_lambda!18883 (or (and start!12500 (= lambda!11134 (switch!2 #b11111111111111111111111111110110 lambda!11134 f!5418))) (and start!12500 b_free!7713 (= f!5418 (switch!2 #b11111111111111111111111111110110 lambda!11134 f!5418))) b_lambda!18885)))

(declare-fun bs!41955 () Bool)

(declare-fun d!60422 () Bool)

(assert (= bs!41955 (and d!60422 start!12500)))

(assert (=> bs!41955 (= (dynLambda!1134 lambda!11134 #b00000000000000000000000000000010) (bvadd #b00000000000000000000000000000010 #b00000000000000000000000000000001))))

(assert (=> (and start!12500 (= lambda!11134 (switch!2 #b11111111111111111111111111110110 lambda!11134 f!5418))) d!60422))

(push 1)

(assert (not b_lambda!18885))

(assert b_and!60907)

(assert (not b_next!40103))

(check-sat)

(get-model)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6898 () Bool)

(assert start!6898)

(declare-fun b_free!7227 () Bool)

(declare-fun b_next!38537 () Bool)

(assert (=> start!6898 (= b_free!7227 (not b_next!38537))))

(declare-fun tp!14898 () Bool)

(declare-fun b_and!58193 () Bool)

(assert (=> start!6898 (= tp!14898 b_and!58193)))

(declare-fun b_free!7229 () Bool)

(declare-fun b_next!38539 () Bool)

(assert (=> start!6898 (= b_free!7229 (not b_next!38539))))

(declare-fun tp!14899 () Bool)

(declare-fun b_and!58195 () Bool)

(assert (=> start!6898 (= tp!14899 b_and!58195)))

(declare-fun res!23401 () Bool)

(declare-fun e!26436 () Bool)

(assert (=> start!6898 (=> (not res!23401) (not e!26436))))

(declare-fun x!19804 () (_ BitVec 32))

(assert (=> start!6898 (= res!23401 (bvsgt x!19804 #b00000000000000000000000000000000))))

(assert (=> start!6898 e!26436))

(assert (=> start!6898 true))

(assert (=> start!6898 tp!14898))

(assert (=> start!6898 tp!14899))

(declare-fun b!50958 () Bool)

(declare-fun res!23403 () Bool)

(assert (=> b!50958 (=> (not res!23403) (not e!26436))))

(assert (=> b!50958 (= res!23403 true)))

(declare-fun b!50959 () Bool)

(declare-fun res!23402 () Bool)

(assert (=> b!50959 (=> (not res!23402) (not e!26436))))

(declare-fun g!99 () Int)

(declare-fun f!3049 () Int)

(declare-fun res!23392 () (_ BitVec 32))

(declare-fun dynLambda!889 (Int (_ BitVec 32)) (_ BitVec 32))

(declare-fun switch!0 ((_ BitVec 32) Int Int) Int)

(assert (=> b!50959 (= res!23402 (= res!23392 (dynLambda!889 (switch!0 #b00000000000000000000000000000001 (switch!0 x!19804 f!3049 g!99) g!99) #b00000000000000000000000000000001)))))

(declare-fun b!50960 () Bool)

(assert (=> b!50960 (= e!26436 (bvsle res!23392 #b00000000000000000000000000000000))))

(assert (= (and start!6898 res!23401) b!50958))

(assert (= (and b!50958 res!23403) b!50959))

(assert (= (and b!50959 res!23402) b!50960))

(declare-fun b_lambda!14545 () Bool)

(assert (=> (not b_lambda!14545) (not b!50959)))

(declare-fun t!46602 () Bool)

(declare-fun tb!45777 () Bool)

(assert (=> (and start!6898 (= f!3049 (switch!0 #b00000000000000000000000000000001 (switch!0 x!19804 f!3049 g!99) g!99)) t!46602) tb!45777))

(declare-fun result!46053 () Bool)

(assert (=> tb!45777 (= result!46053 true)))

(assert (=> b!50959 t!46602))

(declare-fun b_and!58197 () Bool)

(assert (= b_and!58193 (and (=> t!46602 result!46053) b_and!58197)))

(declare-fun t!46604 () Bool)

(declare-fun tb!45779 () Bool)

(assert (=> (and start!6898 (= g!99 (switch!0 #b00000000000000000000000000000001 (switch!0 x!19804 f!3049 g!99) g!99)) t!46604) tb!45779))

(declare-fun result!46055 () Bool)

(assert (=> tb!45779 (= result!46055 true)))

(assert (=> b!50959 t!46604))

(declare-fun b_and!58199 () Bool)

(assert (= b_and!58195 (and (=> t!46604 result!46055) b_and!58199)))

(declare-fun m!54509 () Bool)

(assert (=> b!50959 m!54509))

(assert (=> b!50959 m!54509))

(declare-fun m!54511 () Bool)

(assert (=> b!50959 m!54511))

(declare-fun m!54513 () Bool)

(assert (=> b!50959 m!54513))

(push 1)

(assert (not b_next!38539))

(assert (not b_lambda!14545))

(assert (not b!50959))

(assert b_and!58197)

(assert b_and!58199)

(assert (not b_next!38537))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58197)

(assert b_and!58199)

(assert (not b_next!38539))

(assert (not b_next!38537))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!23705 () Bool)

(declare-fun s!840 () Bool)

(assert (= bs!23705 (and start!6898 b!50958 s!840)))

(declare-fun res!23404 () Bool)

(declare-fun e!26437 () Bool)

(assert (=> bs!23705 (=> res!23404 e!26437)))

(assert (=> bs!23705 (= res!23404 (bvsle #b00000000000000000000000000000001 #b00000000000000000000000000000000))))

(assert (=> bs!23705 (=> true e!26437)))

(declare-fun b!50961 () Bool)

(assert (=> b!50961 (= e!26437 (bvsgt (dynLambda!889 f!3049 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (= (and bs!23705 (not res!23404)) b!50961))

(declare-fun b_lambda!14547 () Bool)

(assert (=> (not b_lambda!14547) (not b!50961)))

(declare-fun t!46606 () Bool)

(declare-fun tb!45781 () Bool)

(assert (=> (and start!6898 (= f!3049 f!3049) t!46606) tb!45781))

(declare-fun result!46057 () Bool)

(assert (=> tb!45781 (= result!46057 true)))

(assert (=> b!50961 t!46606))

(declare-fun b_and!58201 () Bool)

(assert (= b_and!58197 (and (=> t!46606 result!46057) b_and!58201)))

(declare-fun tb!45783 () Bool)

(declare-fun t!46608 () Bool)

(assert (=> (and start!6898 (= g!99 f!3049) t!46608) tb!45783))

(declare-fun result!46059 () Bool)

(assert (=> tb!45783 (= result!46059 true)))

(assert (=> b!50961 t!46608))

(declare-fun b_and!58203 () Bool)

(assert (= b_and!58199 (and (=> t!46608 result!46059) b_and!58203)))

(assert (=> m!54513 s!840))

(push 1)

(assert (not b_next!38539))

(assert (not b_lambda!14547))

(assert (not b_lambda!14545))

(assert b_and!58201)

(assert (not b!50959))

(assert b_and!58203)

(assert (not b_next!38537))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58201)

(assert b_and!58203)

(assert (not b_next!38539))

(assert (not b_next!38537))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43488 () Bool)

(assert (=> d!43488 (= (switch!0 #b00000000000000000000000000000001 (switch!0 x!19804 f!3049 g!99) g!99) (ite (bvsgt #b00000000000000000000000000000001 #b00000000000000000000000000000000) (switch!0 x!19804 f!3049 g!99) g!99))))

(assert (=> b!50959 d!43488))

(declare-fun d!43490 () Bool)

(assert (=> d!43490 (= (switch!0 x!19804 f!3049 g!99) (ite (bvsgt x!19804 #b00000000000000000000000000000000) f!3049 g!99))))

(assert (=> b!50959 d!43490))

(declare-fun b_lambda!14549 () Bool)

(assert (= b_lambda!14545 (or (and start!6898 b_free!7227 (= f!3049 (switch!0 #b00000000000000000000000000000001 (switch!0 x!19804 f!3049 g!99) g!99))) (and start!6898 b_free!7229 (= g!99 (switch!0 #b00000000000000000000000000000001 (switch!0 x!19804 f!3049 g!99) g!99))) b_lambda!14549)))

(declare-fun b_lambda!14551 () Bool)

(assert (= b_lambda!14547 (or (and start!6898 b_free!7227) (and start!6898 b_free!7229 (= g!99 f!3049)) b_lambda!14551)))

(declare-fun bs!23706 () Bool)

(assert (= bs!23706 (and m!54513 b!50961)))

(declare-fun m!54515 () Bool)

(assert (=> bs!23706 m!54515))

(push 1)

(assert (not b_next!38539))

(assert b_and!58201)

(assert (not b_lambda!14551))

(assert (not b_lambda!14549))

(assert b_and!58203)

(assert (not b_next!38537))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58201)

(assert b_and!58203)

(assert (not b_next!38539))

(assert (not b_next!38537))

(check-sat)

(pop 1)


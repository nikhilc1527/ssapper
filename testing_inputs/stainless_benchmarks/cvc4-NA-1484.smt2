; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10132 () Bool)

(assert start!10132)

(declare-fun b_free!7325 () Bool)

(declare-fun b_next!39101 () Bool)

(assert (=> start!10132 (= b_free!7325 (not b_next!39101))))

(declare-fun tp!16903 () Bool)

(declare-fun b_and!58779 () Bool)

(assert (=> start!10132 (= tp!16903 b_and!58779)))

(declare-fun b_free!7327 () Bool)

(declare-fun b_next!39103 () Bool)

(assert (=> start!10132 (= b_free!7327 (not b_next!39103))))

(declare-fun tp!16902 () Bool)

(declare-fun b_and!58781 () Bool)

(assert (=> start!10132 (= tp!16902 b_and!58781)))

(declare-fun b!73008 () Bool)

(declare-fun inst!464 () Bool)

(declare-fun f!4414 () Int)

(declare-fun x!28862 () Int)

(declare-fun dynLambda!967 (Int Int) Int)

(assert (=> b!73008 (= inst!464 (=> true (> (dynLambda!967 f!4414 x!28862) 0)))))

(declare-fun b_lambda!15829 () Bool)

(assert (=> (not b_lambda!15829) (not b!73008)))

(declare-fun t!47545 () Bool)

(declare-fun tb!46161 () Bool)

(assert (=> (and start!10132 (= f!4414 f!4414) t!47545) tb!46161))

(declare-fun result!46591 () Bool)

(assert (=> tb!46161 (= result!46591 true)))

(assert (=> b!73008 t!47545))

(declare-fun b_and!58783 () Bool)

(assert (= b_and!58779 (and (=> t!47545 result!46591) b_and!58783)))

(declare-fun tb!46163 () Bool)

(declare-fun f!4413 () Int)

(declare-fun t!47547 () Bool)

(assert (=> (and start!10132 (= f!4413 f!4414) t!47547) tb!46163))

(declare-fun result!46593 () Bool)

(assert (=> tb!46163 (= result!46593 true)))

(assert (=> b!73008 t!47547))

(declare-fun b_and!58785 () Bool)

(assert (= b_and!58781 (and (=> t!47547 result!46593) b_and!58785)))

(declare-fun m!72706 () Bool)

(assert (=> b!73008 m!72706))

(declare-fun bs!37797 () Bool)

(assert (= bs!37797 (and start!10132 b!73008)))

(assert (=> (and bs!37797 (= f!4413 f!4414)) (= true inst!464)))

(declare-fun e!39451 () Bool)

(assert (=> b!73008 (= e!39451 (not inst!464))))

(declare-fun res!35688 () Bool)

(assert (=> start!10132 (=> (not res!35688) (not e!39451))))

(assert (=> start!10132 (= res!35688 true)))

(assert (=> start!10132 e!39451))

(assert (=> start!10132 true))

(assert (=> start!10132 tp!16903))

(assert (=> start!10132 tp!16902))

(declare-fun b!73007 () Bool)

(declare-fun res!35690 () Bool)

(assert (=> b!73007 (=> (not res!35690) (not e!39451))))

(declare-datatypes () ((List!635 (Cons!595 (head!1035 Int) (tail!1056 List!635)) (Nil!597))))

(declare-fun list!975 () List!635)

(declare-fun list!974 () List!635)

(assert (=> b!73007 (= res!35690 (and (= f!4414 f!4413) (= list!975 (tail!1056 list!974))))))

(declare-fun b!73006 () Bool)

(declare-fun res!35689 () Bool)

(assert (=> b!73006 (=> (not res!35689) (not e!39451))))

(declare-fun head!1026 () Int)

(assert (=> b!73006 (= res!35689 (= head!1026 (dynLambda!967 f!4413 (head!1035 list!974))))))

(declare-fun b!73005 () Bool)

(declare-fun res!35687 () Bool)

(assert (=> b!73005 (=> (not res!35687) (not e!39451))))

(assert (=> b!73005 (= res!35687 (is-Cons!595 list!974))))

(assert (= (and start!10132 res!35688) b!73005))

(assert (= (and b!73005 res!35687) b!73006))

(assert (= (and b!73006 res!35689) b!73007))

(assert (= (and b!73007 res!35690) b!73008))

(declare-fun b_lambda!15831 () Bool)

(assert (=> (not b_lambda!15831) (not b!73006)))

(declare-fun t!47549 () Bool)

(declare-fun tb!46165 () Bool)

(assert (=> (and start!10132 (= f!4414 f!4413) t!47549) tb!46165))

(declare-fun result!46595 () Bool)

(assert (=> tb!46165 (= result!46595 true)))

(assert (=> b!73006 t!47549))

(declare-fun b_and!58787 () Bool)

(assert (= b_and!58783 (and (=> t!47549 result!46595) b_and!58787)))

(declare-fun t!47551 () Bool)

(declare-fun tb!46167 () Bool)

(assert (=> (and start!10132 (= f!4413 f!4413) t!47551) tb!46167))

(declare-fun result!46597 () Bool)

(assert (=> tb!46167 (= result!46597 true)))

(assert (=> b!73006 t!47551))

(declare-fun b_and!58789 () Bool)

(assert (= b_and!58785 (and (=> t!47551 result!46597) b_and!58789)))

(declare-fun bs!37798 () Bool)

(declare-fun s!2052 () Bool)

(assert (= bs!37798 (and start!10132 s!2052)))

(assert (=> bs!37798 (=> true (> (dynLambda!967 f!4413 (head!1035 list!974)) 0))))

(declare-fun b_lambda!15833 () Bool)

(assert (=> (not b_lambda!15833) (not bs!37798)))

(assert (=> bs!37798 t!47549))

(declare-fun b_and!58791 () Bool)

(assert (= b_and!58787 (and (=> t!47549 result!46595) b_and!58791)))

(assert (=> bs!37798 t!47551))

(declare-fun b_and!58793 () Bool)

(assert (= b_and!58789 (and (=> t!47551 result!46597) b_and!58793)))

(declare-fun bs!37799 () Bool)

(declare-fun m!72708 () Bool)

(assert (= bs!37799 m!72708))

(assert (=> bs!37799 s!2052))

(assert (=> b!73006 m!72708))

(push 1)

(assert (not b_lambda!15833))

(assert (not b_lambda!15831))

(assert (not b_next!39101))

(assert (not b_lambda!15829))

(assert (not b_next!39103))

(assert b_and!58793)

(assert b_and!58791)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58791)

(assert b_and!58793)

(assert (not b_next!39103))

(assert (not b_next!39101))

(check-sat)

(pop 1)


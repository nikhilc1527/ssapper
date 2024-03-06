; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11838 () Bool)

(assert start!11838)

(declare-fun b_free!7609 () Bool)

(declare-fun b_next!39977 () Bool)

(assert (=> start!11838 (= b_free!7609 (not b_next!39977))))

(declare-fun tp!17672 () Bool)

(declare-fun b_and!60639 () Bool)

(assert (=> start!11838 (= tp!17672 b_and!60639)))

(declare-fun b!90066 () Bool)

(declare-fun b_free!7611 () Bool)

(declare-fun b_next!39979 () Bool)

(assert (=> b!90066 (= b_free!7611 (not b_next!39979))))

(declare-fun tp!17671 () Bool)

(declare-fun b_and!60641 () Bool)

(assert (=> b!90066 (= tp!17671 b_and!60641)))

(declare-fun b!90067 () Bool)

(declare-fun b_free!7613 () Bool)

(declare-fun b_next!39981 () Bool)

(assert (=> b!90067 (= b_free!7613 (not b_next!39981))))

(declare-fun tp!17673 () Bool)

(declare-fun b_and!60643 () Bool)

(assert (=> b!90067 (= tp!17673 b_and!60643)))

(declare-fun b!90064 () Bool)

(declare-fun res!47154 () Bool)

(declare-fun e!49153 () Bool)

(assert (=> b!90064 (=> (not res!47154) (not e!49153))))

(declare-datatypes () ((Z!15 (Z!16 (val!219 Int)))))

(declare-fun head!1092 () Z!15)

(declare-fun f!5015 () Int)

(declare-datatypes () ((X!32 (X!33 (val!220 Int)))))

(declare-datatypes () ((Stream!24 (Stream!25 (head!1103 X!32) (tail!1098 Int)))))

(declare-fun s1!128 () Stream!24)

(declare-datatypes () ((Y!9 (Y!10 (val!221 Int)))))

(declare-datatypes () ((Stream!26 (Stream!27 (head!1104 Y!9) (tail!1099 Int)))))

(declare-fun s2!124 () Stream!26)

(declare-fun dynLambda!1094 (Int X!32 Y!9) Z!15)

(assert (=> b!90064 (= res!47154 (= head!1092 (dynLambda!1094 f!5015 (head!1103 s1!128) (head!1104 s2!124))))))

(declare-fun res!47155 () Bool)

(assert (=> start!11838 (=> (not res!47155) (not e!49153))))

(declare-fun n!1822 () Int)

(assert (=> start!11838 (= res!47155 (and (>= n!1822 0) (> n!1822 0)))))

(assert (=> start!11838 e!49153))

(assert (=> start!11838 true))

(declare-fun tp_is_empty!445 () Bool)

(assert (=> start!11838 tp_is_empty!445))

(assert (=> start!11838 tp!17672))

(declare-fun e!49152 () Bool)

(assert (=> start!11838 e!49152))

(declare-fun e!49151 () Bool)

(assert (=> start!11838 e!49151))

(declare-fun tp_is_empty!449 () Bool)

(assert (=> b!90067 (= e!49151 (and tp_is_empty!449 tp!17673))))

(declare-fun tp_is_empty!447 () Bool)

(assert (=> b!90066 (= e!49152 (and tp_is_empty!447 tp!17671))))

(declare-fun b!90065 () Bool)

(assert (=> b!90065 (= e!49153 (not (= (- n!1822 1) (- n!1822 1))))))

(assert (= (and start!11838 res!47155) b!90064))

(assert (= (and b!90064 res!47154) b!90065))

(assert (= start!11838 b!90066))

(assert (= start!11838 b!90067))

(declare-fun b_lambda!18427 () Bool)

(assert (=> (not b_lambda!18427) (not b!90064)))

(declare-fun t!48931 () Bool)

(declare-fun tb!46753 () Bool)

(assert (=> (and start!11838 (= f!5015 f!5015) t!48931) tb!46753))

(declare-fun result!47239 () Bool)

(assert (=> tb!46753 (= result!47239 tp_is_empty!445)))

(assert (=> b!90064 t!48931))

(declare-fun b_and!60645 () Bool)

(assert (= b_and!60639 (and (=> t!48931 result!47239) b_and!60645)))

(declare-fun m!85956 () Bool)

(assert (=> b!90064 m!85956))

(push 1)

(assert tp_is_empty!445)

(assert (not b_next!39977))

(assert b_and!60645)

(assert tp_is_empty!449)

(assert tp_is_empty!447)

(assert b_and!60643)

(assert (not b_next!39979))

(assert (not b_lambda!18427))

(assert (not b_next!39981))

(assert b_and!60641)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39977))

(assert b_and!60645)

(assert b_and!60643)

(assert (not b_next!39979))

(assert (not b_next!39981))

(assert b_and!60641)

(check-sat)

(pop 1)


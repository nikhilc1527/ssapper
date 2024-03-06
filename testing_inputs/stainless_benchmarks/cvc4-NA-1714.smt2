; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11842 () Bool)

(assert start!11842)

(declare-fun b!90105 () Bool)

(declare-fun b_free!7619 () Bool)

(declare-fun b_next!39989 () Bool)

(assert (=> b!90105 (= b_free!7619 (not b_next!39989))))

(declare-fun tp!17684 () Bool)

(declare-fun b_and!60663 () Bool)

(assert (=> b!90105 (= tp!17684 b_and!60663)))

(declare-fun b!90110 () Bool)

(declare-fun b_free!7621 () Bool)

(declare-fun b_next!39991 () Bool)

(assert (=> b!90110 (= b_free!7621 (not b_next!39991))))

(declare-fun tp!17685 () Bool)

(declare-fun b_and!60665 () Bool)

(assert (=> b!90110 (= tp!17685 b_and!60665)))

(declare-fun e!49173 () Bool)

(assert (=> b!90105 (= e!49173 tp!17684)))

(declare-fun b!90106 () Bool)

(declare-fun res!47179 () Bool)

(declare-fun e!49174 () Bool)

(assert (=> b!90106 (=> (not res!47179) (not e!49174))))

(declare-datatypes () ((Stream!30 (Stream!31 (head!1106 Int) (tail!1101 Int)))))

(declare-fun s!2622 () Stream!30)

(declare-fun s!2618 () Stream!30)

(declare-fun dynLambda!1097 (Int) Stream!30)

(assert (=> b!90106 (= res!47179 (= s!2622 (dynLambda!1097 (tail!1101 s!2618))))))

(declare-fun b!90107 () Bool)

(declare-fun res!47177 () Bool)

(assert (=> b!90107 (=> (not res!47177) (not e!49174))))

(declare-fun h2!46 () Int)

(assert (=> b!90107 (= res!47177 (= h2!46 (head!1106 (dynLambda!1097 (tail!1101 s!2618)))))))

(declare-fun b!90108 () Bool)

(declare-fun res!47176 () Bool)

(assert (=> b!90108 (=> (not res!47176) (not e!49174))))

(declare-fun head!1090 () Int)

(declare-fun h1!44 () Int)

(declare-fun n!1812 () Int)

(declare-fun n!1816 () Int)

(assert (=> b!90108 (= res!47176 (and (or (< h1!44 1) (>= h1!44 9) (not (= h2!46 1))) (> n!1812 0) (= head!1090 h1!44) (= n!1816 (- n!1812 1))))))

(declare-fun b!90109 () Bool)

(assert (=> b!90109 (= e!49174 (< n!1816 0))))

(declare-fun e!49172 () Bool)

(assert (=> b!90110 (= e!49172 tp!17685)))

(declare-fun res!47178 () Bool)

(assert (=> start!11842 (=> (not res!47178) (not e!49174))))

(assert (=> start!11842 (= res!47178 (and (>= n!1812 0) (= h1!44 (head!1106 s!2618))))))

(assert (=> start!11842 e!49174))

(assert (=> start!11842 true))

(assert (=> start!11842 e!49173))

(assert (=> start!11842 e!49172))

(assert (= (and start!11842 res!47178) b!90107))

(assert (= (and b!90107 res!47177) b!90108))

(assert (= (and b!90108 res!47176) b!90106))

(assert (= (and b!90106 res!47179) b!90109))

(assert (= start!11842 b!90105))

(assert (= start!11842 b!90110))

(declare-fun b_lambda!18435 () Bool)

(assert (=> (not b_lambda!18435) (not b!90106)))

(declare-fun tb!46763 () Bool)

(declare-fun t!48941 () Bool)

(assert (=> (and b!90105 (= (tail!1101 s!2622) (tail!1101 s!2618)) t!48941) tb!46763))

(assert (=> b!90106 t!48941))

(declare-fun result!47251 () Bool)

(declare-fun b_and!60667 () Bool)

(assert (= b_and!60663 (and (=> t!48941 result!47251) b_and!60667)))

(declare-fun t!48943 () Bool)

(declare-fun tb!46765 () Bool)

(assert (=> (and b!90110 (= (tail!1101 s!2618) (tail!1101 s!2618)) t!48943) tb!46765))

(assert (=> b!90106 t!48943))

(declare-fun result!47253 () Bool)

(declare-fun b_and!60669 () Bool)

(assert (= b_and!60665 (and (=> t!48943 result!47253) b_and!60669)))

(declare-fun b_lambda!18437 () Bool)

(assert (=> (not b_lambda!18437) (not b!90107)))

(assert (=> b!90107 t!48941))

(declare-fun b_and!60671 () Bool)

(assert (= b_and!60667 (and (=> t!48941 result!47251) b_and!60671)))

(assert (=> b!90107 t!48943))

(declare-fun b_and!60673 () Bool)

(assert (= b_and!60669 (and (=> t!48943 result!47253) b_and!60673)))

(declare-fun m!85962 () Bool)

(assert (=> b!90106 m!85962))

(assert (=> b!90107 m!85962))

(push 1)

(assert b_and!60671)

(assert (not tb!46763))

(assert (not b_next!39989))

(assert (not tb!46765))

(assert (not b_lambda!18435))

(assert (not b_next!39991))

(assert (not b_lambda!18437))

(assert b_and!60673)

(check-sat)

(pop 1)

(push 1)

(assert b_and!60671)

(assert b_and!60673)

(assert (not b_next!39991))

(assert (not b_next!39989))

(check-sat)

(pop 1)


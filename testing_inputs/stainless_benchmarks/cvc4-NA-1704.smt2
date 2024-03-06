; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11822 () Bool)

(assert start!11822)

(declare-fun b!89974 () Bool)

(declare-fun b_free!7557 () Bool)

(declare-fun b_next!39923 () Bool)

(assert (=> b!89974 (= b_free!7557 (not b_next!39923))))

(declare-fun tp!17591 () Bool)

(declare-fun b_and!60563 () Bool)

(assert (=> b!89974 (= tp!17591 b_and!60563)))

(declare-fun b_free!7559 () Bool)

(declare-fun b_next!39925 () Bool)

(assert (=> start!11822 (= b_free!7559 (not b_next!39925))))

(declare-fun tp!17592 () Bool)

(declare-fun b_and!60565 () Bool)

(assert (=> start!11822 (= tp!17592 b_and!60565)))

(declare-fun lambda!11087 () Int)

(declare-fun b_next!39927 () Bool)

(declare-fun b!89971 () Bool)

(declare-fun f!5014 () Int)

(assert (=> start!11822 (= b_next!39925 (or (and b!89971 (= lambda!11087 f!5014)) b_next!39927))))

(declare-fun b!89972 () Bool)

(declare-fun res!47116 () Bool)

(declare-fun e!49093 () Bool)

(assert (=> b!89972 (=> (not res!47116) (not e!49093))))

(declare-datatypes () ((Stream!10 (Stream!11 (head!1096 Int) (tail!1091 Int)))))

(declare-fun s1!127 () Stream!10)

(declare-fun n!1799 () Int)

(declare-fun fib!0 (Int) Stream!10)

(assert (=> b!89972 (= res!47116 (= s1!127 (fib!0 (- n!1799 2))))))

(declare-fun res!47114 () Bool)

(assert (=> b!89971 (=> (not res!47114) (not e!49093))))

(assert (=> b!89971 (= res!47114 (= f!5014 lambda!11087))))

(declare-fun b!89973 () Bool)

(declare-fun n!1802 () Int)

(assert (=> b!89973 (= e!49093 (not (= (- (- n!1799 1) 1) n!1802)))))

(declare-fun e!49092 () Bool)

(assert (=> b!89974 (= e!49092 tp!17591)))

(declare-fun res!47115 () Bool)

(assert (=> start!11822 (=> (not res!47115) (not e!49093))))

(declare-fun head!1085 () Int)

(declare-fun head!1087 () Int)

(assert (=> start!11822 (= res!47115 (and (>= n!1799 0) (> n!1799 0) (= head!1085 0) (> (- n!1799 1) 0) (= head!1087 1) (= n!1802 (- n!1799 2))))))

(assert (=> start!11822 e!49093))

(assert (=> start!11822 true))

(assert (=> start!11822 e!49092))

(assert (=> start!11822 tp!17592))

(assert (= (and start!11822 res!47115) b!89971))

(assert (= (and b!89971 res!47114) b!89972))

(assert (= (and b!89972 res!47116) b!89973))

(assert (= start!11822 b!89974))

(declare-fun m!85942 () Bool)

(assert (=> b!89972 m!85942))

(push 1)

(assert b_and!60563)

(assert (not b_next!39927))

(assert (not b!89972))

(assert b_and!60565)

(assert (not b_next!39923))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60565)

(assert b_and!60563)

(assert (not b_next!39923))

(assert (not b_next!39927))

(check-sat)

(pop 1)


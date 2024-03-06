; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9702 () Bool)

(assert start!9702)

(declare-fun b!70996 () Bool)

(declare-fun e!38400 () Bool)

(declare-fun tp_is_empty!347 () Bool)

(declare-fun tp!16763 () Bool)

(assert (=> b!70996 (= e!38400 (and tp_is_empty!347 tp!16763))))

(declare-fun b!70997 () Bool)

(declare-fun e!38402 () Bool)

(declare-fun tp!16764 () Bool)

(assert (=> b!70997 (= e!38402 (and tp_is_empty!347 tp!16764))))

(declare-fun b!70998 () Bool)

(declare-fun e!38401 () Bool)

(declare-fun tp!16761 () Bool)

(assert (=> b!70998 (= e!38401 (and tp_is_empty!347 tp!16761))))

(declare-fun b!70999 () Bool)

(declare-fun e!38399 () Bool)

(declare-fun tp!16762 () Bool)

(assert (=> b!70999 (= e!38399 (and tp_is_empty!347 tp!16762))))

(declare-fun res!34776 () Bool)

(declare-fun e!38398 () Bool)

(assert (=> start!9702 (=> (not res!34776) (not e!38398))))

(declare-datatypes () ((A!3038 (A!3039 (val!176 Int)))))

(declare-datatypes () ((List!581 (Cons!541 (h!796 A!3038) (t!47430 List!581)) (Nil!542))))

(declare-fun i!559 () List!581)

(declare-fun n!1655 () List!581)

(declare-datatypes () ((List!582 (Cons!542 (h!797 (_ BitVec 32)) (t!47431 List!582)) (Nil!543))))

(declare-fun l!1345 () List!582)

(declare-fun n!1654 () List!581)

(declare-fun j!81 () Int)

(declare-fun i!558 () List!581)

(assert (=> start!9702 (= res!34776 (and (= n!1654 i!558) (= i!559 i!558) (= l!1345 (Cons!542 #b00000000000000000000000000000001 (Cons!542 #b00000000000000000000000000000010 (Cons!542 #b00000000000000000000000000000011 Nil!543)))) (= j!81 2) (= n!1655 i!559)))))

(assert (=> start!9702 e!38398))

(assert (=> start!9702 e!38401))

(assert (=> start!9702 e!38400))

(assert (=> start!9702 true))

(assert (=> start!9702 e!38399))

(assert (=> start!9702 e!38402))

(declare-fun b!71000 () Bool)

(declare-fun nonEmpty!8 (List!582) Bool)

(assert (=> b!71000 (= e!38398 (not (nonEmpty!8 l!1345)))))

(assert (= (and start!9702 res!34776) b!71000))

(assert (= (and start!9702 (is-Cons!541 i!559)) b!70998))

(assert (= (and start!9702 (is-Cons!541 n!1655)) b!70996))

(assert (= (and start!9702 (is-Cons!541 n!1654)) b!70999))

(assert (= (and start!9702 (is-Cons!541 i!558)) b!70997))

(declare-fun m!70962 () Bool)

(assert (=> b!71000 m!70962))

(push 1)

(assert (not b!71000))

(assert (not b!70999))

(assert (not b!70998))

(assert (not b!70997))

(assert tp_is_empty!347)

(assert (not b!70996))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53866 () Bool)

(declare-fun isEmpty!592 (List!582) Bool)

(assert (=> d!53866 (= (nonEmpty!8 l!1345) (not (isEmpty!592 l!1345)))))

(declare-fun bs!37678 () Bool)

(assert (= bs!37678 d!53866))

(declare-fun m!70964 () Bool)

(assert (=> bs!37678 m!70964))

(assert (=> b!71000 d!53866))

(declare-fun b!71005 () Bool)

(declare-fun e!38405 () Bool)

(declare-fun tp!16767 () Bool)

(assert (=> b!71005 (= e!38405 (and tp_is_empty!347 tp!16767))))

(assert (=> b!70999 (= tp!16762 e!38405)))

(assert (= (and b!70999 (is-Cons!541 (t!47430 n!1654))) b!71005))

(declare-fun b!71006 () Bool)

(declare-fun e!38406 () Bool)

(declare-fun tp!16768 () Bool)

(assert (=> b!71006 (= e!38406 (and tp_is_empty!347 tp!16768))))

(assert (=> b!70996 (= tp!16763 e!38406)))

(assert (= (and b!70996 (is-Cons!541 (t!47430 n!1655))) b!71006))

(declare-fun b!71007 () Bool)

(declare-fun e!38407 () Bool)

(declare-fun tp!16769 () Bool)

(assert (=> b!71007 (= e!38407 (and tp_is_empty!347 tp!16769))))

(assert (=> b!70998 (= tp!16761 e!38407)))

(assert (= (and b!70998 (is-Cons!541 (t!47430 i!559))) b!71007))

(declare-fun b!71008 () Bool)

(declare-fun e!38408 () Bool)

(declare-fun tp!16770 () Bool)

(assert (=> b!71008 (= e!38408 (and tp_is_empty!347 tp!16770))))

(assert (=> b!70997 (= tp!16764 e!38408)))

(assert (= (and b!70997 (is-Cons!541 (t!47430 i!558))) b!71008))

(push 1)

(assert (not b!71005))

(assert (not d!53866))

(assert (not b!71007))

(assert (not b!71006))

(assert (not b!71008))

(assert tp_is_empty!347)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53868 () Bool)

(assert (=> d!53868 (= (isEmpty!592 l!1345) (is-Nil!543 l!1345))))

(assert (=> d!53866 d!53868))

(declare-fun b!71009 () Bool)

(declare-fun e!38409 () Bool)

(declare-fun tp!16771 () Bool)

(assert (=> b!71009 (= e!38409 (and tp_is_empty!347 tp!16771))))

(assert (=> b!71007 (= tp!16769 e!38409)))

(assert (= (and b!71007 (is-Cons!541 (t!47430 (t!47430 i!559)))) b!71009))

(declare-fun b!71010 () Bool)

(declare-fun e!38410 () Bool)

(declare-fun tp!16772 () Bool)

(assert (=> b!71010 (= e!38410 (and tp_is_empty!347 tp!16772))))

(assert (=> b!71006 (= tp!16768 e!38410)))

(assert (= (and b!71006 (is-Cons!541 (t!47430 (t!47430 n!1655)))) b!71010))

(declare-fun b!71011 () Bool)

(declare-fun e!38411 () Bool)

(declare-fun tp!16773 () Bool)

(assert (=> b!71011 (= e!38411 (and tp_is_empty!347 tp!16773))))

(assert (=> b!71005 (= tp!16767 e!38411)))

(assert (= (and b!71005 (is-Cons!541 (t!47430 (t!47430 n!1654)))) b!71011))

(declare-fun b!71012 () Bool)

(declare-fun e!38412 () Bool)

(declare-fun tp!16774 () Bool)

(assert (=> b!71012 (= e!38412 (and tp_is_empty!347 tp!16774))))

(assert (=> b!71008 (= tp!16770 e!38412)))

(assert (= (and b!71008 (is-Cons!541 (t!47430 (t!47430 i!558)))) b!71012))

(push 1)

(assert (not b!71012))

(assert (not b!71011))

(assert (not b!71009))

(assert tp_is_empty!347)

(assert (not b!71010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


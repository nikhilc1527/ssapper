; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11108 () Bool)

(assert start!11108)

(declare-fun b_free!7397 () Bool)

(declare-fun b_next!39541 () Bool)

(assert (=> start!11108 (= b_free!7397 (not b_next!39541))))

(declare-fun tp!17008 () Bool)

(declare-fun b_and!59007 () Bool)

(assert (=> start!11108 (= tp!17008 b_and!59007)))

(declare-fun b!85021 () Bool)

(assert (=> b!85021 true))

(declare-fun p!821 () Int)

(declare-fun b_next!39543 () Bool)

(declare-fun lambda!10682 () Int)

(assert (=> start!11108 (= b_next!39541 (or (and b!85021 (= lambda!10682 p!821)) b_next!39543))))

(declare-fun bs!40958 () Bool)

(declare-fun b!85022 () Bool)

(assert (= bs!40958 (and b!85022 b!85021)))

(declare-fun lambda!10683 () Int)

(assert (=> bs!40958 (not (= lambda!10683 lambda!10682))))

(assert (=> b!85022 true))

(declare-fun b_next!39545 () Bool)

(assert (=> start!11108 (= b_next!39543 (or (and b!85022 (= lambda!10683 p!821)) b_next!39545))))

(declare-fun b!85020 () Bool)

(declare-fun res!44052 () Bool)

(declare-fun e!46064 () Bool)

(assert (=> b!85020 (=> (not res!44052) (not e!46064))))

(declare-datatypes () ((List!694 (Cons!651 (h!1024 Int) (t!48046 List!694)) (Nil!653))))

(declare-fun ls!77 () List!694)

(assert (=> b!85020 (= res!44052 (and (not (is-Nil!653 ls!77)) (not (is-Nil!653 (t!48046 ls!77)))))))

(declare-fun res!44050 () Bool)

(assert (=> b!85022 (=> (not res!44050) (not e!46064))))

(declare-fun equal!5 () List!694)

(declare-fun filter!41 (List!694 Int) List!694)

(assert (=> b!85022 (= res!44050 (= equal!5 (Cons!651 (h!1024 ls!77) (filter!41 (t!48046 ls!77) lambda!10683))))))

(declare-fun b!85023 () Bool)

(assert (=> b!85023 (= e!46064 (not (is-Cons!651 equal!5)))))

(declare-fun res!44049 () Bool)

(assert (=> b!85021 (=> (not res!44049) (not e!46064))))

(declare-fun less!2 () List!694)

(assert (=> b!85021 (= res!44049 (= less!2 (filter!41 (t!48046 ls!77) lambda!10682)))))

(declare-fun res!44051 () Bool)

(assert (=> start!11108 (=> (not res!44051) (not e!46064))))

(declare-fun forall!42 (List!694 Int) Bool)

(assert (=> start!11108 (= res!44051 (forall!42 ls!77 p!821))))

(assert (=> start!11108 e!46064))

(assert (=> start!11108 true))

(assert (=> start!11108 tp!17008))

(assert (= (and start!11108 res!44051) b!85020))

(assert (= (and b!85020 res!44052) b!85021))

(assert (= (and b!85021 res!44049) b!85022))

(assert (= (and b!85022 res!44050) b!85023))

(declare-fun m!80834 () Bool)

(assert (=> b!85022 m!80834))

(declare-fun m!80836 () Bool)

(assert (=> b!85021 m!80836))

(declare-fun m!80838 () Bool)

(assert (=> start!11108 m!80838))

(push 1)

(assert (not b!85021))

(assert b_and!59007)

(assert (not b!85022))

(assert (not b_next!39545))

(assert (not start!11108))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59007)

(assert (not b_next!39545))

(check-sat)

(pop 1)


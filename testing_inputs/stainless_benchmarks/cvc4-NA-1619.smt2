; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11254 () Bool)

(assert start!11254)

(declare-fun b!85905 () Bool)

(declare-fun res!44648 () Bool)

(declare-fun e!46598 () Bool)

(assert (=> b!85905 (=> (not res!44648) (not e!46598))))

(declare-datatypes () ((Color!3 (Red!2) (Black!2))))

(declare-datatypes () ((Tree!100 (Empty!183) (Node!144 (color!33 Color!3) (left!1643 Tree!100) (value!6790 Int) (right!1646 Tree!100)))))

(declare-fun t!48204 () Tree!100)

(declare-fun blackBalanced!0 (Tree!100) Bool)

(assert (=> b!85905 (= res!44648 (blackBalanced!0 t!48204))))

(declare-fun b!85907 () Bool)

(declare-fun e!46597 () Bool)

(assert (=> b!85907 (= e!46598 e!46597)))

(declare-fun res!44646 () Bool)

(assert (=> b!85907 (=> res!44646 e!46597)))

(declare-fun t!48209 () Tree!100)

(declare-fun redNodesHaveBlackChildren!0 (Tree!100) Bool)

(assert (=> b!85907 (= res!44646 (not (redNodesHaveBlackChildren!0 t!48209)))))

(declare-fun b!85908 () Bool)

(assert (=> b!85908 (= e!46597 (not (blackBalanced!0 t!48209)))))

(declare-fun b!85906 () Bool)

(declare-fun res!44647 () Bool)

(assert (=> b!85906 (=> (not res!44647) (not e!46598))))

(declare-fun x!30384 () Int)

(declare-fun x!30385 () Int)

(assert (=> b!85906 (= res!44647 (and (= x!30385 x!30384) (= t!48209 t!48204)))))

(declare-fun res!44645 () Bool)

(assert (=> start!11254 (=> (not res!44645) (not e!46598))))

(assert (=> start!11254 (= res!44645 (redNodesHaveBlackChildren!0 t!48204))))

(assert (=> start!11254 e!46598))

(assert (=> start!11254 true))

(assert (= (and start!11254 res!44645) b!85905))

(assert (= (and b!85905 res!44648) b!85906))

(assert (= (and b!85906 res!44647) b!85907))

(assert (= (and b!85907 (not res!44646)) b!85908))

(declare-fun m!81728 () Bool)

(assert (=> b!85905 m!81728))

(declare-fun m!81730 () Bool)

(assert (=> b!85907 m!81730))

(declare-fun m!81732 () Bool)

(assert (=> b!85908 m!81732))

(declare-fun m!81734 () Bool)

(assert (=> start!11254 m!81734))

(push 1)

(assert (not b!85908))

(assert (not start!11254))

(assert (not b!85905))

(assert (not b!85907))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


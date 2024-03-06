; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2726 () Bool)

(assert start!2726)

(declare-datatypes () ((Tree!91 (Leaf!173) (Node!22 (left!589 Tree!91) (value!1508 Int) (right!592 Tree!91)))))

(declare-fun thiss!2472 () Tree!91)

(declare-fun thiss!2473 () Tree!91)

(assert (=> start!2726 (and (is-Node!22 thiss!2472) (= thiss!2473 thiss!2472) (not (is-Node!22 thiss!2473)))))

(declare-fun e!7326 () Bool)

(declare-fun inv!443 (Tree!91) Bool)

(assert (=> start!2726 (and (inv!443 thiss!2472) e!7326)))

(declare-fun e!7327 () Bool)

(assert (=> start!2726 (and (inv!443 thiss!2473) e!7327)))

(declare-fun b!13364 () Bool)

(declare-fun tp!3258 () Bool)

(declare-fun tp!3261 () Bool)

(assert (=> b!13364 (= e!7326 (and (inv!443 (left!589 thiss!2472)) tp!3261 (inv!443 (right!592 thiss!2472)) tp!3258))))

(declare-fun tp!3259 () Bool)

(declare-fun b!13365 () Bool)

(declare-fun tp!3260 () Bool)

(assert (=> b!13365 (= e!7327 (and (inv!443 (left!589 thiss!2473)) tp!3259 (inv!443 (right!592 thiss!2473)) tp!3260))))

(assert (= (and start!2726 (is-Node!22 thiss!2472)) b!13364))

(assert (= (and start!2726 (is-Node!22 thiss!2473)) b!13365))

(declare-fun m!16945 () Bool)

(assert (=> start!2726 m!16945))

(declare-fun m!16947 () Bool)

(assert (=> start!2726 m!16947))

(declare-fun m!16949 () Bool)

(assert (=> b!13364 m!16949))

(declare-fun m!16951 () Bool)

(assert (=> b!13364 m!16951))

(declare-fun m!16953 () Bool)

(assert (=> b!13365 m!16953))

(declare-fun m!16955 () Bool)

(assert (=> b!13365 m!16955))

(push 1)

(assert (not start!2726))

(assert (not b!13365))

(assert (not b!13364))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


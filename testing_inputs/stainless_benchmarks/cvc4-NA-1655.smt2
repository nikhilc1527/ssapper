; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11478 () Bool)

(assert start!11478)

(declare-fun b_free!7477 () Bool)

(declare-fun b_next!39781 () Bool)

(assert (=> start!11478 (= b_free!7477 (not b_next!39781))))

(declare-fun tp!17128 () Bool)

(declare-fun b_and!59943 () Bool)

(assert (=> start!11478 (= tp!17128 b_and!59943)))

(declare-fun res!45867 () Bool)

(declare-fun e!47695 () Bool)

(assert (=> start!11478 (=> (not res!45867) (not e!47695))))

(assert (=> start!11478 (= res!45867 true)))

(assert (=> start!11478 e!47695))

(assert (=> start!11478 tp!17128))

(assert (=> start!11478 true))

(declare-fun b!87820 () Bool)

(declare-fun x!30640 () Int)

(declare-fun res!45823 () Int)

(assert (=> b!87820 (= e!47695 (and (> x!30640 0) (= res!45823 x!30640) (<= res!45823 0)))))

(assert (= (and start!11478 res!45867) b!87820))

(push 1)

(assert b_and!59943)

(assert (not b_next!39781))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59943)

(assert (not b_next!39781))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12144 () Bool)

(assert start!12144)

(declare-datatypes () ((List!765 (Cons!715 (h!1135 Int) (t!49018 List!765)) (Nil!717))))

(declare-datatypes () ((array!1535 (array!1536 (arr!531 (Array (_ BitVec 32) List!765)) (size!774 (_ BitVec 32))))))

(declare-datatypes () ((B!668 (B!669 (content!174 array!1535)))))

(declare-fun thiss!10483 () B!668)

(declare-fun res!47650 () Bool)

(declare-fun y!2236 () Int)

(declare-fun a!1094 () array!1535)

(assert (=> start!12144 (and (= res!47650 (>= y!2236 0)) (= a!1094 (content!174 thiss!10483)) (bvsge #b00000000000000000000000000000000 (size!774 a!1094)))))

(assert (=> start!12144 true))

(declare-fun array_inv!521 (array!1535) Bool)

(assert (=> start!12144 (array_inv!521 a!1094)))

(declare-fun e!49602 () Bool)

(declare-fun inv!37 (B!668) Bool)

(assert (=> start!12144 (and (inv!37 thiss!10483) e!49602)))

(declare-fun b!90829 () Bool)

(assert (=> b!90829 (= e!49602 (array_inv!521 (content!174 thiss!10483)))))

(assert (= start!12144 b!90829))

(declare-fun m!86680 () Bool)

(assert (=> start!12144 m!86680))

(declare-fun m!86682 () Bool)

(assert (=> start!12144 m!86682))

(declare-fun m!86684 () Bool)

(assert (=> b!90829 m!86684))

(push 1)

(assert (not start!12144))

(assert (not b!90829))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59740 () Bool)

(assert (=> d!59740 (= (array_inv!521 a!1094) (bvsge (size!774 a!1094) #b00000000000000000000000000000000))))

(assert (=> start!12144 d!59740))

(declare-fun d!59742 () Bool)

(assert (=> d!59742 (= (inv!37 thiss!10483) (and (bvsgt (size!774 (content!174 thiss!10483)) #b00000000000000000000000000000000) (bvslt (size!774 (content!174 thiss!10483)) #b00000000000000000000000001100100)))))

(assert (=> start!12144 d!59742))

(declare-fun d!59744 () Bool)

(assert (=> d!59744 (= (array_inv!521 (content!174 thiss!10483)) (bvsge (size!774 (content!174 thiss!10483)) #b00000000000000000000000000000000))))

(assert (=> b!90829 d!59744))

(push 1)

(check-sat)

(pop 1)


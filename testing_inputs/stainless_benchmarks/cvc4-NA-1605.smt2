; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11164 () Bool)

(assert start!11164)

(declare-fun b_free!7427 () Bool)

(declare-fun b_next!39611 () Bool)

(assert (=> start!11164 (= b_free!7427 (not b_next!39611))))

(declare-fun tp!17053 () Bool)

(declare-fun b_and!59109 () Bool)

(assert (=> start!11164 (= tp!17053 b_and!59109)))

(declare-fun res!44318 () Bool)

(declare-fun e!46285 () Bool)

(assert (=> start!11164 (=> (not res!44318) (not e!46285))))

(declare-datatypes () ((List!703 (Cons!660 (h!1033 Int) (t!48134 List!703)) (Nil!662))))

(declare-fun ls!66 () List!703)

(assert (=> start!11164 (= res!44318 (not (is-Cons!660 ls!66)))))

(assert (=> start!11164 e!46285))

(assert (=> start!11164 true))

(assert (=> start!11164 tp!17053))

(declare-fun b!85386 () Bool)

(declare-fun thiss!9699 () List!703)

(declare-fun isEmpty!695 (List!703) Bool)

(assert (=> b!85386 (= e!46285 (isEmpty!695 thiss!9699))))

(declare-fun b!85385 () Bool)

(declare-fun res!44317 () Bool)

(assert (=> b!85385 (=> (not res!44317) (not e!46285))))

(assert (=> b!85385 (= res!44317 (= thiss!9699 ls!66))))

(declare-fun b!85384 () Bool)

(declare-fun res!44319 () Bool)

(assert (=> b!85384 (=> (not res!44319) (not e!46285))))

(assert (=> b!85384 (= res!44319 (not (isEmpty!695 ls!66)))))

(declare-fun b!85383 () Bool)

(declare-fun res!44316 () Bool)

(assert (=> b!85383 (=> (not res!44316) (not e!46285))))

(declare-fun p!802 () Int)

(declare-fun forall!51 (List!703 Int) Bool)

(assert (=> b!85383 (= res!44316 (forall!51 ls!66 p!802))))

(assert (= (and start!11164 res!44318) b!85383))

(assert (= (and b!85383 res!44316) b!85384))

(assert (= (and b!85384 res!44319) b!85385))

(assert (= (and b!85385 res!44317) b!85386))

(declare-fun m!81234 () Bool)

(assert (=> b!85386 m!81234))

(declare-fun m!81236 () Bool)

(assert (=> b!85384 m!81236))

(declare-fun m!81238 () Bool)

(assert (=> b!85383 m!81238))

(push 1)

(assert (not b_next!39611))

(assert (not b!85386))

(assert (not b!85384))

(assert (not b!85383))

(assert b_and!59109)

(check-sat)

(pop 1)

(push 1)

(assert b_and!59109)

(assert (not b_next!39611))

(check-sat)

(pop 1)


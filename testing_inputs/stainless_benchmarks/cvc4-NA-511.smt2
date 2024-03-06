; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3554 () Bool)

(assert start!3554)

(declare-fun b!22624 () Bool)

(declare-fun e!11841 () Bool)

(declare-fun tp!4971 () Bool)

(declare-fun tp!4973 () Bool)

(assert (=> b!22624 (= e!11841 (and tp!4971 tp!4973))))

(declare-fun b!22625 () Bool)

(declare-fun e!11840 () Bool)

(declare-fun tp_is_empty!121 () Bool)

(assert (=> b!22625 (= e!11840 tp_is_empty!121)))

(declare-fun b!22626 () Bool)

(declare-fun res!9918 () Bool)

(declare-fun e!11839 () Bool)

(assert (=> b!22626 (=> (not res!9918) (not e!11839))))

(declare-datatypes () ((T!1777 (T!1778 (val!61 Int)))))

(declare-datatypes () ((Conc!38 (CC!37 (left!682 Conc!38) (right!685 Conc!38)) (Single!37 (x!8822 T!1777)) (Empty!48))))

(declare-fun xs!572 () Conc!38)

(declare-fun balanced!35 (Conc!38) Bool)

(assert (=> b!22626 (= res!9918 (balanced!35 xs!572))))

(declare-fun b!22627 () Bool)

(declare-fun e!11842 () Bool)

(declare-fun i!253 () Int)

(declare-fun xs!573 () Conc!38)

(declare-fun size!239 (Conc!38) Int)

(assert (=> b!22627 (= e!11842 (>= i!253 (size!239 xs!573)))))

(declare-fun b!22628 () Bool)

(declare-fun res!9919 () Bool)

(assert (=> b!22628 (=> (not res!9919) (not e!11839))))

(declare-fun isEmpty!297 (Conc!38) Bool)

(assert (=> b!22628 (= res!9919 (not (isEmpty!297 xs!572)))))

(declare-fun b!22629 () Bool)

(assert (=> b!22629 (= e!11841 tp_is_empty!121)))

(declare-fun b!22630 () Bool)

(declare-fun res!9921 () Bool)

(assert (=> b!22630 (=> (not res!9921) (not e!11839))))

(declare-fun i!252 () Int)

(assert (=> b!22630 (= res!9921 (< i!252 (size!239 xs!572)))))

(declare-fun b!22631 () Bool)

(declare-fun tp!4972 () Bool)

(declare-fun tp!4970 () Bool)

(assert (=> b!22631 (= e!11840 (and tp!4972 tp!4970))))

(declare-fun b!22632 () Bool)

(declare-fun res!9923 () Bool)

(assert (=> b!22632 (=> (not res!9923) (not e!11839))))

(declare-fun res!5552 () T!1777)

(assert (=> b!22632 (= res!9923 (and (is-Single!37 xs!572) (= res!5552 (x!8822 xs!572)) (= xs!573 xs!572) (= i!253 i!252)))))

(declare-fun res!9920 () Bool)

(assert (=> start!3554 (=> (not res!9920) (not e!11839))))

(declare-fun concInv!34 (Conc!38) Bool)

(assert (=> start!3554 (= res!9920 (concInv!34 xs!572))))

(assert (=> start!3554 e!11839))

(assert (=> start!3554 tp_is_empty!121))

(assert (=> start!3554 e!11841))

(assert (=> start!3554 true))

(assert (=> start!3554 e!11840))

(declare-fun b!22633 () Bool)

(declare-fun res!9922 () Bool)

(assert (=> b!22633 (=> (not res!9922) (not e!11839))))

(assert (=> b!22633 (= res!9922 (>= i!252 0))))

(declare-fun b!22634 () Bool)

(assert (=> b!22634 (= e!11839 e!11842)))

(declare-fun res!9924 () Bool)

(assert (=> b!22634 (=> res!9924 e!11842)))

(assert (=> b!22634 (= res!9924 (> 0 i!253))))

(assert (= (and start!3554 res!9920) b!22626))

(assert (= (and b!22626 res!9918) b!22628))

(assert (= (and b!22628 res!9919) b!22633))

(assert (= (and b!22633 res!9922) b!22630))

(assert (= (and b!22630 res!9921) b!22632))

(assert (= (and b!22632 res!9923) b!22634))

(assert (= (and b!22634 (not res!9924)) b!22627))

(assert (= (and start!3554 (is-CC!37 xs!573)) b!22624))

(assert (= (and start!3554 (is-Single!37 xs!573)) b!22629))

(assert (= (and start!3554 (is-CC!37 xs!572)) b!22631))

(assert (= (and start!3554 (is-Single!37 xs!572)) b!22625))

(declare-fun m!24591 () Bool)

(assert (=> b!22628 m!24591))

(declare-fun m!24593 () Bool)

(assert (=> b!22627 m!24593))

(declare-fun m!24595 () Bool)

(assert (=> start!3554 m!24595))

(declare-fun m!24597 () Bool)

(assert (=> b!22630 m!24597))

(declare-fun m!24599 () Bool)

(assert (=> b!22626 m!24599))

(push 1)

(assert (not start!3554))

(assert (not b!22628))

(assert (not b!22627))

(assert (not b!22624))

(assert (not b!22626))

(assert tp_is_empty!121)

(assert (not b!22630))

(assert (not b!22631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


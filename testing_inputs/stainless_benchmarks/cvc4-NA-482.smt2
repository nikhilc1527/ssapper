; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3218 () Bool)

(assert start!3218)

(declare-fun res!7387 () Bool)

(declare-fun e!9607 () Bool)

(assert (=> start!3218 (=> (not res!7387) (not e!9607))))

(declare-datatypes () ((T!1719 (T!1720 (val!32 Int)))))

(declare-datatypes () ((Conc!14 (CC!13 (left!658 Conc!14) (right!661 Conc!14)) (Single!13 (x!8728 T!1719)) (Empty!24))))

(declare-fun xs!637 () Conc!14)

(declare-fun concInv!13 (Conc!14) Bool)

(assert (=> start!3218 (= res!7387 (concInv!13 xs!637))))

(assert (=> start!3218 e!9607))

(declare-fun e!9606 () Bool)

(assert (=> start!3218 e!9606))

(declare-fun b!17796 () Bool)

(declare-fun tp!4179 () Bool)

(declare-fun tp!4180 () Bool)

(assert (=> b!17796 (= e!9606 (and tp!4179 tp!4180))))

(declare-fun b!17795 () Bool)

(assert (=> b!17795 (= e!9607 false)))

(declare-fun b!17794 () Bool)

(declare-fun res!7388 () Bool)

(assert (=> b!17794 (=> (not res!7388) (not e!9607))))

(declare-fun balanced!14 (Conc!14) Bool)

(assert (=> b!17794 (= res!7388 (balanced!14 xs!637))))

(declare-fun b!17797 () Bool)

(declare-fun tp_is_empty!63 () Bool)

(assert (=> b!17797 (= e!9606 tp_is_empty!63)))

(assert (= (and start!3218 res!7387) b!17794))

(assert (= (and b!17794 res!7388) b!17795))

(assert (= (and start!3218 (is-CC!13 xs!637)) b!17796))

(assert (= (and start!3218 (is-Single!13 xs!637)) b!17797))

(declare-fun m!20941 () Bool)

(assert (=> start!3218 m!20941))

(declare-fun m!20943 () Bool)

(assert (=> b!17794 m!20943))

(push 1)

(assert (not b!17794))

(assert (not start!3218))

(assert (not b!17796))

(assert tp_is_empty!63)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


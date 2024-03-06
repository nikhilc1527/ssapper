; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3582 () Bool)

(assert start!3582)

(declare-fun b!22891 () Bool)

(declare-fun res!10075 () Bool)

(declare-fun e!11950 () Bool)

(assert (=> b!22891 (=> (not res!10075) (not e!11950))))

(declare-datatypes () ((T!1783 (T!1784 (val!64 Int)))))

(declare-datatypes () ((Conc!41 (CC!40 (left!685 Conc!41) (right!688 Conc!41)) (Single!40 (x!8831 T!1783)) (Empty!51))))

(declare-fun xs!572 () Conc!41)

(assert (=> b!22891 (= res!10075 (not (is-Single!40 xs!572)))))

(declare-fun b!22892 () Bool)

(declare-fun e!11948 () Bool)

(assert (=> b!22892 (= e!11950 e!11948)))

(declare-fun res!10078 () Bool)

(assert (=> b!22892 (=> res!10078 e!11948)))

(declare-fun i!257 () Int)

(assert (=> b!22892 (= res!10078 (> 0 i!257))))

(declare-fun b!22893 () Bool)

(declare-fun res!10077 () Bool)

(assert (=> b!22893 (=> (not res!10077) (not e!11950))))

(declare-fun balanced!38 (Conc!41) Bool)

(assert (=> b!22893 (= res!10077 (balanced!38 xs!572))))

(declare-fun b!22894 () Bool)

(declare-fun res!10076 () Bool)

(assert (=> b!22894 (=> (not res!10076) (not e!11950))))

(declare-fun i!252 () Int)

(assert (=> b!22894 (= res!10076 (>= i!252 0))))

(declare-fun b!22895 () Bool)

(declare-fun e!11947 () Bool)

(declare-fun tp_is_empty!127 () Bool)

(assert (=> b!22895 (= e!11947 tp_is_empty!127)))

(declare-fun b!22896 () Bool)

(declare-fun res!10083 () Bool)

(assert (=> b!22896 (=> (not res!10083) (not e!11950))))

(declare-fun xs!577 () Conc!41)

(assert (=> b!22896 (= res!10083 (and (= xs!577 xs!572) (= i!257 i!252)))))

(declare-fun b!22897 () Bool)

(declare-fun tp!5029 () Bool)

(declare-fun tp!5027 () Bool)

(assert (=> b!22897 (= e!11947 (and tp!5029 tp!5027))))

(declare-fun res!10081 () Bool)

(assert (=> start!3582 (=> (not res!10081) (not e!11950))))

(declare-fun concInv!37 (Conc!41) Bool)

(assert (=> start!3582 (= res!10081 (concInv!37 xs!572))))

(assert (=> start!3582 e!11950))

(assert (=> start!3582 true))

(assert (=> start!3582 e!11947))

(assert (=> start!3582 tp_is_empty!127))

(declare-fun e!11949 () Bool)

(assert (=> start!3582 e!11949))

(declare-fun b!22898 () Bool)

(assert (=> b!22898 (= e!11949 tp_is_empty!127)))

(declare-fun b!22899 () Bool)

(declare-fun res!10080 () Bool)

(assert (=> b!22899 (=> (not res!10080) (not e!11950))))

(declare-fun isEmpty!300 (Conc!41) Bool)

(assert (=> b!22899 (= res!10080 (not (isEmpty!300 xs!572)))))

(declare-fun b!22900 () Bool)

(declare-fun tp!5028 () Bool)

(declare-fun tp!5026 () Bool)

(assert (=> b!22900 (= e!11949 (and tp!5028 tp!5026))))

(declare-fun b!22901 () Bool)

(declare-fun res!10079 () Bool)

(assert (=> b!22901 (=> (not res!10079) (not e!11950))))

(declare-fun size!243 (Conc!41) Int)

(assert (=> b!22901 (= res!10079 (< i!252 (size!243 (left!685 xs!572))))))

(declare-fun b!22902 () Bool)

(declare-fun res!10074 () Bool)

(assert (=> b!22902 (=> (not res!10074) (not e!11950))))

(assert (=> b!22902 (= res!10074 (< i!252 (size!243 xs!572)))))

(declare-fun b!22903 () Bool)

(assert (=> b!22903 (= e!11948 (>= i!257 (size!243 xs!577)))))

(declare-fun b!22904 () Bool)

(declare-fun res!10082 () Bool)

(assert (=> b!22904 (=> (not res!10082) (not e!11950))))

(declare-fun res!5554 () T!1783)

(declare-fun lookup!3 (Conc!41 Int) T!1783)

(assert (=> b!22904 (= res!10082 (= res!5554 (lookup!3 (left!685 xs!572) i!252)))))

(assert (= (and start!3582 res!10081) b!22893))

(assert (= (and b!22893 res!10077) b!22899))

(assert (= (and b!22899 res!10080) b!22894))

(assert (= (and b!22894 res!10076) b!22902))

(assert (= (and b!22902 res!10074) b!22891))

(assert (= (and b!22891 res!10075) b!22901))

(assert (= (and b!22901 res!10079) b!22904))

(assert (= (and b!22904 res!10082) b!22896))

(assert (= (and b!22896 res!10083) b!22892))

(assert (= (and b!22892 (not res!10078)) b!22903))

(assert (= (and start!3582 (is-CC!40 xs!577)) b!22897))

(assert (= (and start!3582 (is-Single!40 xs!577)) b!22895))

(assert (= (and start!3582 (is-CC!40 xs!572)) b!22900))

(assert (= (and start!3582 (is-Single!40 xs!572)) b!22898))

(declare-fun m!24707 () Bool)

(assert (=> b!22893 m!24707))

(declare-fun m!24709 () Bool)

(assert (=> start!3582 m!24709))

(declare-fun m!24711 () Bool)

(assert (=> b!22903 m!24711))

(declare-fun m!24713 () Bool)

(assert (=> b!22904 m!24713))

(declare-fun m!24715 () Bool)

(assert (=> b!22899 m!24715))

(declare-fun m!24717 () Bool)

(assert (=> b!22902 m!24717))

(declare-fun m!24719 () Bool)

(assert (=> b!22901 m!24719))

(push 1)

(assert (not b!22902))

(assert (not b!22903))

(assert (not b!22893))

(assert (not b!22897))

(assert (not start!3582))

(assert (not b!22899))

(assert (not b!22904))

(assert tp_is_empty!127)

(assert (not b!22901))

(assert (not b!22900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


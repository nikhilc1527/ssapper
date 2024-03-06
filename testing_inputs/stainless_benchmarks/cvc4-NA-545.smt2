; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4046 () Bool)

(assert start!4046)

(declare-fun b!32045 () Bool)

(declare-fun e!16335 () Bool)

(declare-fun e!16332 () Bool)

(assert (=> b!32045 (= e!16335 e!16332)))

(declare-fun res!14689 () Bool)

(assert (=> b!32045 (=> res!14689 e!16332)))

(declare-fun i!264 () Int)

(assert (=> b!32045 (= res!14689 (< i!264 0))))

(declare-fun b!32046 () Bool)

(declare-fun e!16334 () Bool)

(declare-fun tp_is_empty!189 () Bool)

(assert (=> b!32046 (= e!16334 tp_is_empty!189)))

(declare-fun b!32047 () Bool)

(declare-fun res!14687 () Bool)

(assert (=> b!32047 (=> (not res!14687) (not e!16335))))

(declare-fun i!263 () Int)

(assert (=> b!32047 (= res!14687 (>= i!263 0))))

(declare-fun b!32048 () Bool)

(declare-fun res!14686 () Bool)

(assert (=> b!32048 (=> (not res!14686) (not e!16335))))

(declare-datatypes () ((T!1845 (T!1846 (val!95 Int)))))

(declare-datatypes () ((Conc!72 (CC!71 (left!716 Conc!72) (right!719 Conc!72)) (Single!71 (x!8975 T!1845)) (Empty!82))))

(declare-fun xs!586 () Conc!72)

(declare-fun size!281 (Conc!72) Int)

(assert (=> b!32048 (= res!14686 (< i!263 (size!281 xs!586)))))

(declare-fun b!32049 () Bool)

(declare-fun res!14683 () Bool)

(assert (=> b!32049 (=> (not res!14683) (not e!16335))))

(declare-fun isEmpty!326 (Conc!72) Bool)

(assert (=> b!32049 (= res!14683 (not (isEmpty!326 xs!586)))))

(declare-fun b!32050 () Bool)

(declare-fun e!16333 () Bool)

(assert (=> b!32050 (= e!16333 tp_is_empty!189)))

(declare-fun res!14688 () Bool)

(assert (=> start!4046 (=> (not res!14688) (not e!16335))))

(declare-fun concInv!64 (Conc!72) Bool)

(assert (=> start!4046 (= res!14688 (concInv!64 xs!586))))

(assert (=> start!4046 e!16335))

(assert (=> start!4046 e!16334))

(declare-fun e!16336 () Bool)

(assert (=> start!4046 e!16336))

(assert (=> start!4046 tp_is_empty!189))

(assert (=> start!4046 e!16333))

(assert (=> start!4046 true))

(declare-fun b!32051 () Bool)

(declare-fun tp!6646 () Bool)

(declare-fun tp!6647 () Bool)

(assert (=> b!32051 (= e!16336 (and tp!6646 tp!6647))))

(declare-fun b!32052 () Bool)

(declare-fun tp!6645 () Bool)

(declare-fun tp!6644 () Bool)

(assert (=> b!32052 (= e!16334 (and tp!6645 tp!6644))))

(declare-fun b!32053 () Bool)

(declare-fun res!14684 () Bool)

(assert (=> b!32053 (=> (not res!14684) (not e!16335))))

(declare-fun res!5575 () Conc!72)

(declare-fun y!785 () T!1845)

(declare-fun xs!587 () Conc!72)

(declare-fun y!786 () T!1845)

(assert (=> b!32053 (= res!14684 (and (is-Single!71 xs!586) (= res!5575 (Single!71 y!785)) (= xs!587 xs!586) (= i!264 i!263) (= y!786 y!785)))))

(declare-fun b!32054 () Bool)

(assert (=> b!32054 (= e!16332 (>= i!264 (size!281 xs!587)))))

(declare-fun b!32055 () Bool)

(assert (=> b!32055 (= e!16336 tp_is_empty!189)))

(declare-fun b!32056 () Bool)

(declare-fun tp!6648 () Bool)

(declare-fun tp!6649 () Bool)

(assert (=> b!32056 (= e!16333 (and tp!6648 tp!6649))))

(declare-fun b!32057 () Bool)

(declare-fun res!14685 () Bool)

(assert (=> b!32057 (=> (not res!14685) (not e!16335))))

(declare-fun balanced!65 (Conc!72) Bool)

(assert (=> b!32057 (= res!14685 (balanced!65 xs!586))))

(assert (= (and start!4046 res!14688) b!32057))

(assert (= (and b!32057 res!14685) b!32049))

(assert (= (and b!32049 res!14683) b!32047))

(assert (= (and b!32047 res!14687) b!32048))

(assert (= (and b!32048 res!14686) b!32053))

(assert (= (and b!32053 res!14684) b!32045))

(assert (= (and b!32045 (not res!14689)) b!32054))

(assert (= (and start!4046 (is-CC!71 res!5575)) b!32052))

(assert (= (and start!4046 (is-Single!71 res!5575)) b!32046))

(assert (= (and start!4046 (is-CC!71 xs!586)) b!32051))

(assert (= (and start!4046 (is-Single!71 xs!586)) b!32055))

(assert (= (and start!4046 (is-CC!71 xs!587)) b!32056))

(assert (= (and start!4046 (is-Single!71 xs!587)) b!32050))

(declare-fun m!34895 () Bool)

(assert (=> b!32048 m!34895))

(declare-fun m!34897 () Bool)

(assert (=> b!32057 m!34897))

(declare-fun m!34899 () Bool)

(assert (=> b!32054 m!34899))

(declare-fun m!34901 () Bool)

(assert (=> b!32049 m!34901))

(declare-fun m!34903 () Bool)

(assert (=> start!4046 m!34903))

(push 1)

(assert (not b!32048))

(assert (not b!32054))

(assert (not b!32049))

(assert (not b!32051))

(assert (not b!32056))

(assert tp_is_empty!189)

(assert (not b!32052))

(assert (not b!32057))

(assert (not start!4046))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3246 () Bool)

(assert start!3246)

(declare-fun b!18105 () Bool)

(declare-fun e!9734 () Bool)

(declare-fun tp_is_empty!71 () Bool)

(assert (=> b!18105 (= e!9734 tp_is_empty!71)))

(declare-fun b!18106 () Bool)

(declare-fun e!9736 () Bool)

(declare-fun tp!4255 () Bool)

(declare-fun tp!4257 () Bool)

(assert (=> b!18106 (= e!9736 (and tp!4255 tp!4257))))

(declare-fun b!18107 () Bool)

(declare-fun res!7549 () Bool)

(declare-fun e!9738 () Bool)

(assert (=> b!18107 (=> (not res!7549) (not e!9738))))

(declare-datatypes () ((T!1727 (T!1728 (val!36 Int)))))

(declare-datatypes () ((Conc!18 (CC!17 (left!662 Conc!18) (right!665 Conc!18)) (Single!17 (x!8739 T!1727)) (Empty!28))))

(declare-fun res!5603 () Conc!18)

(declare-fun balanced!17 (Conc!18) Bool)

(assert (=> b!18107 (= res!7549 (balanced!17 res!5603))))

(declare-fun b!18108 () Bool)

(declare-fun e!9737 () Bool)

(declare-fun tp!4258 () Bool)

(declare-fun tp!4259 () Bool)

(assert (=> b!18108 (= e!9737 (and tp!4258 tp!4259))))

(declare-fun b!18109 () Bool)

(declare-fun res!7551 () Bool)

(assert (=> b!18109 (=> (not res!7551) (not e!9738))))

(declare-fun xs!607 () Conc!18)

(declare-fun y!837 () T!1727)

(declare-fun i!303 () Int)

(declare-fun y!824 () T!1727)

(declare-fun xs!604 () Conc!18)

(declare-fun i!298 () Int)

(assert (=> b!18109 (= res!7551 (and (= xs!607 xs!604) (= i!303 i!298) (= y!837 y!824)))))

(declare-fun b!18110 () Bool)

(declare-fun res!7557 () Bool)

(assert (=> b!18110 (=> (not res!7557) (not e!9738))))

(declare-fun isEmpty!280 (Conc!18) Bool)

(assert (=> b!18110 (= res!7557 (not (isEmpty!280 res!5603)))))

(declare-fun b!18111 () Bool)

(declare-fun res!7552 () Bool)

(assert (=> b!18111 (=> (not res!7552) (not e!9738))))

(declare-fun level!15 (Conc!18) Int)

(assert (=> b!18111 (= res!7552 (<= (- (level!15 res!5603) (level!15 xs!604)) 1))))

(declare-fun b!18112 () Bool)

(declare-fun res!7548 () Bool)

(assert (=> b!18112 (=> (not res!7548) (not e!9738))))

(assert (=> b!18112 (= res!7548 (>= i!298 0))))

(declare-fun b!18113 () Bool)

(declare-fun res!7553 () Bool)

(assert (=> b!18113 (=> (not res!7553) (not e!9738))))

(assert (=> b!18113 (= res!7553 (and (not (is-Empty!28 xs!604)) (is-Single!17 xs!604) (= i!298 0) (= res!5603 (CC!17 (Single!17 y!824) xs!604))))))

(declare-fun b!18114 () Bool)

(declare-fun e!9735 () Bool)

(assert (=> b!18114 (= e!9738 e!9735)))

(declare-fun res!7558 () Bool)

(assert (=> b!18114 (=> res!7558 e!9735)))

(assert (=> b!18114 (= res!7558 (< i!303 0))))

(declare-fun b!18115 () Bool)

(declare-fun res!7556 () Bool)

(assert (=> b!18115 (=> (not res!7556) (not e!9738))))

(declare-fun concInv!16 (Conc!18) Bool)

(assert (=> b!18115 (= res!7556 (concInv!16 res!5603))))

(declare-fun b!18116 () Bool)

(assert (=> b!18116 (= e!9736 tp_is_empty!71)))

(declare-fun b!18117 () Bool)

(declare-fun res!7555 () Bool)

(assert (=> b!18117 (=> (not res!7555) (not e!9738))))

(declare-fun size!203 (Conc!18) Int)

(assert (=> b!18117 (= res!7555 (<= i!298 (size!203 xs!604)))))

(declare-fun b!18118 () Bool)

(assert (=> b!18118 (= e!9735 (> i!303 (size!203 xs!607)))))

(declare-fun b!18119 () Bool)

(declare-fun tp!4256 () Bool)

(declare-fun tp!4260 () Bool)

(assert (=> b!18119 (= e!9734 (and tp!4256 tp!4260))))

(declare-fun b!18120 () Bool)

(assert (=> b!18120 (= e!9737 tp_is_empty!71)))

(declare-fun b!18121 () Bool)

(declare-fun res!7554 () Bool)

(assert (=> b!18121 (=> (not res!7554) (not e!9738))))

(assert (=> b!18121 (= res!7554 (balanced!17 xs!604))))

(declare-fun b!18122 () Bool)

(declare-fun res!7547 () Bool)

(assert (=> b!18122 (=> (not res!7547) (not e!9738))))

(assert (=> b!18122 (= res!7547 (>= (level!15 res!5603) (level!15 xs!604)))))

(declare-fun res!7550 () Bool)

(assert (=> start!3246 (=> (not res!7550) (not e!9738))))

(assert (=> start!3246 (= res!7550 (concInv!16 xs!604))))

(assert (=> start!3246 e!9738))

(assert (=> start!3246 e!9737))

(assert (=> start!3246 tp_is_empty!71))

(assert (=> start!3246 true))

(assert (=> start!3246 e!9736))

(assert (=> start!3246 e!9734))

(assert (= (and start!3246 res!7550) b!18121))

(assert (= (and b!18121 res!7554) b!18112))

(assert (= (and b!18112 res!7548) b!18117))

(assert (= (and b!18117 res!7555) b!18113))

(assert (= (and b!18113 res!7553) b!18115))

(assert (= (and b!18115 res!7556) b!18107))

(assert (= (and b!18107 res!7549) b!18111))

(assert (= (and b!18111 res!7552) b!18122))

(assert (= (and b!18122 res!7547) b!18110))

(assert (= (and b!18110 res!7557) b!18109))

(assert (= (and b!18109 res!7551) b!18114))

(assert (= (and b!18114 (not res!7558)) b!18118))

(assert (= (and start!3246 (is-CC!17 xs!607)) b!18108))

(assert (= (and start!3246 (is-Single!17 xs!607)) b!18120))

(assert (= (and start!3246 (is-CC!17 xs!604)) b!18106))

(assert (= (and start!3246 (is-Single!17 xs!604)) b!18116))

(assert (= (and start!3246 (is-CC!17 res!5603)) b!18119))

(assert (= (and start!3246 (is-Single!17 res!5603)) b!18105))

(declare-fun m!21081 () Bool)

(assert (=> b!18111 m!21081))

(declare-fun m!21083 () Bool)

(assert (=> b!18111 m!21083))

(declare-fun m!21085 () Bool)

(assert (=> b!18110 m!21085))

(declare-fun m!21087 () Bool)

(assert (=> b!18115 m!21087))

(declare-fun m!21089 () Bool)

(assert (=> b!18121 m!21089))

(declare-fun m!21091 () Bool)

(assert (=> b!18118 m!21091))

(declare-fun m!21093 () Bool)

(assert (=> b!18107 m!21093))

(declare-fun m!21095 () Bool)

(assert (=> start!3246 m!21095))

(declare-fun m!21097 () Bool)

(assert (=> b!18117 m!21097))

(assert (=> b!18122 m!21081))

(assert (=> b!18122 m!21083))

(push 1)

(assert (not b!18110))

(assert (not b!18111))

(assert (not b!18121))

(assert (not b!18119))

(assert tp_is_empty!71)

(assert (not b!18118))

(assert (not start!3246))

(assert (not b!18115))

(assert (not b!18122))

(assert (not b!18108))

(assert (not b!18107))

(assert (not b!18106))

(assert (not b!18117))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


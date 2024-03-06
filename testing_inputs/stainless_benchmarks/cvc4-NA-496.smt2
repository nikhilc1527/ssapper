; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3350 () Bool)

(assert start!3350)

(declare-fun b!19435 () Bool)

(declare-fun res!8364 () Bool)

(declare-fun e!10264 () Bool)

(assert (=> b!19435 (=> (not res!8364) (not e!10264))))

(declare-fun i!298 () Int)

(assert (=> b!19435 (= res!8364 (>= i!298 0))))

(declare-fun b!19436 () Bool)

(declare-fun res!8363 () Bool)

(assert (=> b!19436 (=> (not res!8363) (not e!10264))))

(declare-datatypes () ((T!1747 (T!1748 (val!46 Int)))))

(declare-datatypes () ((Conc!28 (CC!27 (left!672 Conc!28) (right!675 Conc!28)) (Single!27 (x!8774 T!1747)) (Empty!38))))

(declare-fun xs!604 () Conc!28)

(assert (=> b!19436 (= res!8363 (and (not (is-Empty!38 xs!604)) (not (is-Single!27 xs!604))))))

(declare-fun b!19437 () Bool)

(declare-fun res!8354 () Bool)

(assert (=> b!19437 (=> (not res!8354) (not e!10264))))

(declare-fun res!5614 () Conc!28)

(declare-fun isEmpty!290 (Conc!28) Bool)

(assert (=> b!19437 (= res!8354 (not (isEmpty!290 res!5614)))))

(declare-fun b!19438 () Bool)

(declare-fun e!10265 () Bool)

(declare-fun tp!4534 () Bool)

(declare-fun tp!4532 () Bool)

(assert (=> b!19438 (= e!10265 (and tp!4534 tp!4532))))

(declare-fun res!8366 () Bool)

(assert (=> start!3350 (=> (not res!8366) (not e!10264))))

(declare-fun concInv!26 (Conc!28) Bool)

(assert (=> start!3350 (= res!8366 (concInv!26 xs!604))))

(assert (=> start!3350 e!10264))

(assert (=> start!3350 true))

(declare-fun tp_is_empty!91 () Bool)

(assert (=> start!3350 tp_is_empty!91))

(declare-fun e!10261 () Bool)

(assert (=> start!3350 e!10261))

(assert (=> start!3350 e!10265))

(declare-fun e!10263 () Bool)

(assert (=> start!3350 e!10263))

(declare-fun b!19439 () Bool)

(declare-fun res!8359 () Bool)

(assert (=> b!19439 (=> (not res!8359) (not e!10264))))

(assert (=> b!19439 (= res!8359 (concInv!26 res!5614))))

(declare-fun b!19440 () Bool)

(declare-fun res!8367 () Bool)

(assert (=> b!19440 (=> (not res!8367) (not e!10264))))

(declare-fun i!319 () Int)

(declare-fun y!869 () T!1747)

(declare-fun y!824 () T!1747)

(declare-fun xs!621 () Conc!28)

(assert (=> b!19440 (= res!8367 (and (= xs!621 xs!604) (= i!319 i!298) (= y!869 y!824)))))

(declare-fun b!19441 () Bool)

(declare-fun res!8358 () Bool)

(assert (=> b!19441 (=> (not res!8358) (not e!10264))))

(declare-fun level!25 (Conc!28) Int)

(assert (=> b!19441 (= res!8358 (>= (level!25 res!5614) (level!25 xs!604)))))

(declare-fun b!19442 () Bool)

(declare-fun tp!4533 () Bool)

(declare-fun tp!4531 () Bool)

(assert (=> b!19442 (= e!10263 (and tp!4533 tp!4531))))

(declare-fun b!19443 () Bool)

(declare-fun e!10262 () Bool)

(declare-fun size!216 (Conc!28) Int)

(assert (=> b!19443 (= e!10262 (> i!319 (size!216 xs!621)))))

(declare-fun b!19444 () Bool)

(declare-fun res!8361 () Bool)

(assert (=> b!19444 (=> (not res!8361) (not e!10264))))

(declare-fun concatNonEmpty!9 (Conc!28 Conc!28) Conc!28)

(declare-fun insert!18 (Conc!28 Int T!1747) Conc!28)

(assert (=> b!19444 (= res!8361 (= res!5614 (concatNonEmpty!9 (left!672 xs!604) (insert!18 (right!675 xs!604) (- i!298 (size!216 (left!672 xs!604))) y!824))))))

(declare-fun b!19445 () Bool)

(declare-fun res!8357 () Bool)

(assert (=> b!19445 (=> (not res!8357) (not e!10264))))

(declare-fun balanced!27 (Conc!28) Bool)

(assert (=> b!19445 (= res!8357 (balanced!27 xs!604))))

(declare-fun b!19446 () Bool)

(declare-fun res!8362 () Bool)

(assert (=> b!19446 (=> (not res!8362) (not e!10264))))

(assert (=> b!19446 (= res!8362 (<= (- (level!25 res!5614) (level!25 xs!604)) 1))))

(declare-fun b!19447 () Bool)

(declare-fun res!8355 () Bool)

(assert (=> b!19447 (=> (not res!8355) (not e!10264))))

(assert (=> b!19447 (= res!8355 (>= i!298 (size!216 (left!672 xs!604))))))

(declare-fun b!19448 () Bool)

(assert (=> b!19448 (= e!10261 tp_is_empty!91)))

(declare-fun b!19449 () Bool)

(assert (=> b!19449 (= e!10265 tp_is_empty!91)))

(declare-fun b!19450 () Bool)

(assert (=> b!19450 (= e!10264 e!10262)))

(declare-fun res!8365 () Bool)

(assert (=> b!19450 (=> res!8365 e!10262)))

(assert (=> b!19450 (= res!8365 (< i!319 0))))

(declare-fun b!19451 () Bool)

(assert (=> b!19451 (= e!10263 tp_is_empty!91)))

(declare-fun b!19452 () Bool)

(declare-fun tp!4535 () Bool)

(declare-fun tp!4536 () Bool)

(assert (=> b!19452 (= e!10261 (and tp!4535 tp!4536))))

(declare-fun b!19453 () Bool)

(declare-fun res!8360 () Bool)

(assert (=> b!19453 (=> (not res!8360) (not e!10264))))

(assert (=> b!19453 (= res!8360 (<= i!298 (size!216 xs!604)))))

(declare-fun b!19454 () Bool)

(declare-fun res!8356 () Bool)

(assert (=> b!19454 (=> (not res!8356) (not e!10264))))

(assert (=> b!19454 (= res!8356 (balanced!27 res!5614))))

(assert (= (and start!3350 res!8366) b!19445))

(assert (= (and b!19445 res!8357) b!19435))

(assert (= (and b!19435 res!8364) b!19453))

(assert (= (and b!19453 res!8360) b!19436))

(assert (= (and b!19436 res!8363) b!19447))

(assert (= (and b!19447 res!8355) b!19444))

(assert (= (and b!19444 res!8361) b!19439))

(assert (= (and b!19439 res!8359) b!19454))

(assert (= (and b!19454 res!8356) b!19446))

(assert (= (and b!19446 res!8362) b!19441))

(assert (= (and b!19441 res!8358) b!19437))

(assert (= (and b!19437 res!8354) b!19440))

(assert (= (and b!19440 res!8367) b!19450))

(assert (= (and b!19450 (not res!8365)) b!19443))

(assert (= (and start!3350 (is-CC!27 res!5614)) b!19452))

(assert (= (and start!3350 (is-Single!27 res!5614)) b!19448))

(assert (= (and start!3350 (is-CC!27 xs!604)) b!19438))

(assert (= (and start!3350 (is-Single!27 xs!604)) b!19449))

(assert (= (and start!3350 (is-CC!27 xs!621)) b!19442))

(assert (= (and start!3350 (is-Single!27 xs!621)) b!19451))

(declare-fun m!21723 () Bool)

(assert (=> b!19453 m!21723))

(declare-fun m!21725 () Bool)

(assert (=> b!19437 m!21725))

(declare-fun m!21727 () Bool)

(assert (=> b!19454 m!21727))

(declare-fun m!21729 () Bool)

(assert (=> b!19446 m!21729))

(declare-fun m!21731 () Bool)

(assert (=> b!19446 m!21731))

(declare-fun m!21733 () Bool)

(assert (=> b!19439 m!21733))

(declare-fun m!21735 () Bool)

(assert (=> b!19445 m!21735))

(assert (=> b!19441 m!21729))

(assert (=> b!19441 m!21731))

(declare-fun m!21737 () Bool)

(assert (=> start!3350 m!21737))

(declare-fun m!21739 () Bool)

(assert (=> b!19443 m!21739))

(declare-fun m!21741 () Bool)

(assert (=> b!19447 m!21741))

(assert (=> b!19444 m!21741))

(declare-fun m!21743 () Bool)

(assert (=> b!19444 m!21743))

(assert (=> b!19444 m!21743))

(declare-fun m!21745 () Bool)

(assert (=> b!19444 m!21745))

(push 1)

(assert (not b!19445))

(assert (not b!19442))

(assert (not b!19454))

(assert (not b!19441))

(assert (not b!19444))

(assert (not b!19446))

(assert (not b!19452))

(assert tp_is_empty!91)

(assert (not b!19447))

(assert (not b!19453))

(assert (not b!19443))

(assert (not start!3350))

(assert (not b!19437))

(assert (not b!19439))

(assert (not b!19438))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


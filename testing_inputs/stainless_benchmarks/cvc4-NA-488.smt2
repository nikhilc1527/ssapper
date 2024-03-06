; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3266 () Bool)

(assert start!3266)

(declare-fun b!18311 () Bool)

(declare-fun e!9817 () Bool)

(declare-fun tp_is_empty!75 () Bool)

(assert (=> b!18311 (= e!9817 tp_is_empty!75)))

(declare-fun b!18312 () Bool)

(declare-fun res!7671 () Bool)

(declare-fun e!9818 () Bool)

(assert (=> b!18312 (=> (not res!7671) (not e!9818))))

(declare-datatypes () ((T!1731 (T!1732 (val!38 Int)))))

(declare-datatypes () ((Conc!20 (CC!19 (left!664 Conc!20) (right!667 Conc!20)) (Single!19 (x!8746 T!1731)) (Empty!30))))

(declare-fun res!5606 () Conc!20)

(declare-fun xs!604 () Conc!20)

(declare-fun level!17 (Conc!20) Int)

(assert (=> b!18312 (= res!7671 (<= (- (level!17 res!5606) (level!17 xs!604)) 1))))

(declare-fun b!18313 () Bool)

(declare-fun res!7672 () Bool)

(assert (=> b!18313 (=> (not res!7672) (not e!9818))))

(declare-fun y!824 () T!1731)

(declare-fun i!298 () Int)

(assert (=> b!18313 (= res!7672 (and (not (is-Empty!30 xs!604)) (is-Single!19 xs!604) (not (= i!298 0)) (= res!5606 (CC!19 xs!604 (Single!19 y!824)))))))

(declare-fun b!18314 () Bool)

(declare-fun res!7674 () Bool)

(assert (=> b!18314 (=> (not res!7674) (not e!9818))))

(declare-fun y!845 () T!1731)

(declare-fun i!307 () Int)

(declare-fun xs!609 () Conc!20)

(assert (=> b!18314 (= res!7674 (and (= xs!609 xs!604) (= i!307 i!298) (= y!845 y!824)))))

(declare-fun b!18315 () Bool)

(declare-fun res!7664 () Bool)

(assert (=> b!18315 (=> (not res!7664) (not e!9818))))

(declare-fun size!206 (Conc!20) Int)

(assert (=> b!18315 (= res!7664 (<= i!298 (size!206 xs!604)))))

(declare-fun b!18316 () Bool)

(declare-fun res!7675 () Bool)

(assert (=> b!18316 (=> (not res!7675) (not e!9818))))

(declare-fun balanced!19 (Conc!20) Bool)

(assert (=> b!18316 (= res!7675 (balanced!19 res!5606))))

(declare-fun b!18317 () Bool)

(declare-fun e!9814 () Bool)

(declare-fun tp!4304 () Bool)

(declare-fun tp!4303 () Bool)

(assert (=> b!18317 (= e!9814 (and tp!4304 tp!4303))))

(declare-fun b!18318 () Bool)

(declare-fun res!7673 () Bool)

(assert (=> b!18318 (=> (not res!7673) (not e!9818))))

(declare-fun concInv!18 (Conc!20) Bool)

(assert (=> b!18318 (= res!7673 (concInv!18 res!5606))))

(declare-fun b!18319 () Bool)

(assert (=> b!18319 (= e!9814 tp_is_empty!75)))

(declare-fun res!7668 () Bool)

(assert (=> start!3266 (=> (not res!7668) (not e!9818))))

(assert (=> start!3266 (= res!7668 (concInv!18 xs!604))))

(assert (=> start!3266 e!9818))

(assert (=> start!3266 tp_is_empty!75))

(assert (=> start!3266 e!9814))

(assert (=> start!3266 e!9817))

(assert (=> start!3266 true))

(declare-fun e!9816 () Bool)

(assert (=> start!3266 e!9816))

(declare-fun b!18320 () Bool)

(declare-fun tp!4306 () Bool)

(declare-fun tp!4308 () Bool)

(assert (=> b!18320 (= e!9816 (and tp!4306 tp!4308))))

(declare-fun b!18321 () Bool)

(assert (=> b!18321 (= e!9816 tp_is_empty!75)))

(declare-fun b!18322 () Bool)

(declare-fun e!9815 () Bool)

(assert (=> b!18322 (= e!9815 (> i!307 (size!206 xs!609)))))

(declare-fun b!18323 () Bool)

(declare-fun res!7667 () Bool)

(assert (=> b!18323 (=> (not res!7667) (not e!9818))))

(assert (=> b!18323 (= res!7667 (>= i!298 0))))

(declare-fun b!18324 () Bool)

(declare-fun tp!4307 () Bool)

(declare-fun tp!4305 () Bool)

(assert (=> b!18324 (= e!9817 (and tp!4307 tp!4305))))

(declare-fun b!18325 () Bool)

(declare-fun res!7670 () Bool)

(assert (=> b!18325 (=> (not res!7670) (not e!9818))))

(assert (=> b!18325 (= res!7670 (>= (level!17 res!5606) (level!17 xs!604)))))

(declare-fun b!18326 () Bool)

(declare-fun res!7665 () Bool)

(assert (=> b!18326 (=> (not res!7665) (not e!9818))))

(assert (=> b!18326 (= res!7665 (balanced!19 xs!604))))

(declare-fun b!18327 () Bool)

(assert (=> b!18327 (= e!9818 e!9815)))

(declare-fun res!7666 () Bool)

(assert (=> b!18327 (=> res!7666 e!9815)))

(assert (=> b!18327 (= res!7666 (< i!307 0))))

(declare-fun b!18328 () Bool)

(declare-fun res!7669 () Bool)

(assert (=> b!18328 (=> (not res!7669) (not e!9818))))

(declare-fun isEmpty!282 (Conc!20) Bool)

(assert (=> b!18328 (= res!7669 (not (isEmpty!282 res!5606)))))

(assert (= (and start!3266 res!7668) b!18326))

(assert (= (and b!18326 res!7665) b!18323))

(assert (= (and b!18323 res!7667) b!18315))

(assert (= (and b!18315 res!7664) b!18313))

(assert (= (and b!18313 res!7672) b!18318))

(assert (= (and b!18318 res!7673) b!18316))

(assert (= (and b!18316 res!7675) b!18312))

(assert (= (and b!18312 res!7671) b!18325))

(assert (= (and b!18325 res!7670) b!18328))

(assert (= (and b!18328 res!7669) b!18314))

(assert (= (and b!18314 res!7674) b!18327))

(assert (= (and b!18327 (not res!7666)) b!18322))

(assert (= (and start!3266 (is-CC!19 res!5606)) b!18317))

(assert (= (and start!3266 (is-Single!19 res!5606)) b!18319))

(assert (= (and start!3266 (is-CC!19 xs!604)) b!18324))

(assert (= (and start!3266 (is-Single!19 xs!604)) b!18311))

(assert (= (and start!3266 (is-CC!19 xs!609)) b!18320))

(assert (= (and start!3266 (is-Single!19 xs!609)) b!18321))

(declare-fun m!21169 () Bool)

(assert (=> b!18326 m!21169))

(declare-fun m!21171 () Bool)

(assert (=> b!18328 m!21171))

(declare-fun m!21173 () Bool)

(assert (=> b!18315 m!21173))

(declare-fun m!21175 () Bool)

(assert (=> start!3266 m!21175))

(declare-fun m!21177 () Bool)

(assert (=> b!18318 m!21177))

(declare-fun m!21179 () Bool)

(assert (=> b!18316 m!21179))

(declare-fun m!21181 () Bool)

(assert (=> b!18325 m!21181))

(declare-fun m!21183 () Bool)

(assert (=> b!18325 m!21183))

(declare-fun m!21185 () Bool)

(assert (=> b!18322 m!21185))

(assert (=> b!18312 m!21181))

(assert (=> b!18312 m!21183))

(push 1)

(assert (not start!3266))

(assert (not b!18328))

(assert (not b!18324))

(assert tp_is_empty!75)

(assert (not b!18326))

(assert (not b!18318))

(assert (not b!18317))

(assert (not b!18316))

(assert (not b!18315))

(assert (not b!18325))

(assert (not b!18322))

(assert (not b!18312))

(assert (not b!18320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8330 () Bool)

(assert start!8330)

(declare-fun res!27178 () Bool)

(declare-fun e!31195 () Bool)

(assert (=> start!8330 (=> (not res!27178) (not e!31195))))

(declare-datatypes () ((List!492 (Cons!466 (head!740 (_ BitVec 32)) (tail!766 List!492)) (Nil!467))))

(declare-fun l1!336 () List!492)

(declare-fun l2!329 () List!492)

(declare-fun size!17 (List!492) Int)

(assert (=> start!8330 (= res!27178 (= (size!17 l1!336) (size!17 l2!329)))))

(assert (=> start!8330 e!31195))

(assert (=> start!8330 true))

(declare-fun b!58616 () Bool)

(declare-fun res!27179 () Bool)

(assert (=> b!58616 (=> (not res!27179) (not e!31195))))

(assert (=> b!58616 (= res!27179 (not (is-Nil!467 l1!336)))))

(declare-fun b!58617 () Bool)

(declare-fun res!27180 () Bool)

(assert (=> b!58617 (=> (not res!27180) (not e!31195))))

(declare-datatypes () ((IntPair!5 (IP!4 (fst!11 (_ BitVec 32)) (snd!11 (_ BitVec 32))))))

(declare-datatypes () ((IntPairList!4 (IPCons!3 (head!741 IntPair!5) (tail!767 IntPairList!4)) (IPNil!3))))

(declare-fun x$2!309 () IntPairList!4)

(declare-fun zip!1 (List!492 List!492) IntPairList!4)

(assert (=> b!58617 (= res!27180 (= x$2!309 (IPCons!3 (IP!4 (head!740 l1!336) (head!740 l2!329)) (zip!1 (tail!766 l1!336) (tail!766 l2!329)))))))

(declare-fun b!58618 () Bool)

(declare-fun iplSize!0 (IntPairList!4) Int)

(assert (=> b!58618 (= e!31195 (not (= (iplSize!0 x$2!309) (size!17 l1!336))))))

(assert (= (and start!8330 res!27178) b!58616))

(assert (= (and b!58616 res!27179) b!58617))

(assert (= (and b!58617 res!27180) b!58618))

(declare-fun m!63176 () Bool)

(assert (=> start!8330 m!63176))

(declare-fun m!63178 () Bool)

(assert (=> start!8330 m!63178))

(declare-fun m!63180 () Bool)

(assert (=> b!58617 m!63180))

(declare-fun m!63182 () Bool)

(assert (=> b!58618 m!63182))

(assert (=> b!58618 m!63176))

(push 1)

(assert (not b!58617))

(assert (not b!58618))

(assert (not start!8330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50682 () Bool)

(declare-fun lt!10731 () IntPairList!4)

(assert (=> d!50682 (= (iplSize!0 lt!10731) (size!17 (tail!766 l1!336)))))

(declare-fun e!31198 () IntPairList!4)

(assert (=> d!50682 (= lt!10731 e!31198)))

(declare-fun c!12568 () Bool)

(assert (=> d!50682 (= c!12568 (is-Nil!467 (tail!766 l1!336)))))

(assert (=> d!50682 (= (size!17 (tail!766 l1!336)) (size!17 (tail!766 l2!329)))))

(assert (=> d!50682 (= (zip!1 (tail!766 l1!336) (tail!766 l2!329)) lt!10731)))

(declare-fun b!58623 () Bool)

(assert (=> b!58623 (= e!31198 IPNil!3)))

(declare-fun b!58624 () Bool)

(assert (=> b!58624 (= e!31198 (IPCons!3 (IP!4 (head!740 (tail!766 l1!336)) (head!740 (tail!766 l2!329))) (zip!1 (tail!766 (tail!766 l1!336)) (tail!766 (tail!766 l2!329)))))))

(assert (= (and d!50682 c!12568) b!58623))

(assert (= (and d!50682 (not c!12568)) b!58624))

(declare-fun m!63184 () Bool)

(assert (=> d!50682 m!63184))

(declare-fun m!63186 () Bool)

(assert (=> d!50682 m!63186))

(declare-fun m!63188 () Bool)

(assert (=> d!50682 m!63188))

(declare-fun m!63190 () Bool)

(assert (=> b!58624 m!63190))

(assert (=> b!58617 d!50682))

(declare-fun d!50684 () Bool)

(declare-fun lt!10734 () Int)

(assert (=> d!50684 (>= lt!10734 0)))

(declare-fun e!31201 () Int)

(assert (=> d!50684 (= lt!10734 e!31201)))

(declare-fun c!12571 () Bool)

(assert (=> d!50684 (= c!12571 (is-IPNil!3 x$2!309))))

(assert (=> d!50684 (= (iplSize!0 x$2!309) lt!10734)))

(declare-fun b!58629 () Bool)

(assert (=> b!58629 (= e!31201 0)))

(declare-fun b!58630 () Bool)

(assert (=> b!58630 (= e!31201 (+ 1 (iplSize!0 (tail!767 x$2!309))))))

(assert (= (and d!50684 c!12571) b!58629))

(assert (= (and d!50684 (not c!12571)) b!58630))

(declare-fun m!63192 () Bool)

(assert (=> b!58630 m!63192))

(assert (=> b!58618 d!50684))

(declare-fun d!50686 () Bool)

(declare-fun lt!10737 () Int)

(assert (=> d!50686 (>= lt!10737 0)))

(declare-fun e!31204 () Int)

(assert (=> d!50686 (= lt!10737 e!31204)))

(declare-fun c!12574 () Bool)

(assert (=> d!50686 (= c!12574 (is-Nil!467 l1!336))))

(assert (=> d!50686 (= (size!17 l1!336) lt!10737)))

(declare-fun b!58635 () Bool)

(assert (=> b!58635 (= e!31204 0)))

(declare-fun b!58636 () Bool)

(assert (=> b!58636 (= e!31204 (+ 1 (size!17 (tail!766 l1!336))))))

(assert (= (and d!50686 c!12574) b!58635))

(assert (= (and d!50686 (not c!12574)) b!58636))

(assert (=> b!58636 m!63186))

(assert (=> b!58618 d!50686))

(assert (=> start!8330 d!50686))

(declare-fun d!50688 () Bool)

(declare-fun lt!10738 () Int)

(assert (=> d!50688 (>= lt!10738 0)))

(declare-fun e!31205 () Int)

(assert (=> d!50688 (= lt!10738 e!31205)))

(declare-fun c!12575 () Bool)

(assert (=> d!50688 (= c!12575 (is-Nil!467 l2!329))))

(assert (=> d!50688 (= (size!17 l2!329) lt!10738)))

(declare-fun b!58637 () Bool)

(assert (=> b!58637 (= e!31205 0)))

(declare-fun b!58638 () Bool)

(assert (=> b!58638 (= e!31205 (+ 1 (size!17 (tail!766 l2!329))))))

(assert (= (and d!50688 c!12575) b!58637))

(assert (= (and d!50688 (not c!12575)) b!58638))

(assert (=> b!58638 m!63188))

(assert (=> start!8330 d!50688))

(push 1)

(assert (not b!58624))

(assert (not b!58636))

(assert (not b!58638))

(assert (not d!50682))

(assert (not b!58630))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


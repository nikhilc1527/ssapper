; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8568 () Bool)

(assert start!8568)

(declare-fun res!27625 () Bool)

(declare-fun e!31694 () Bool)

(assert (=> start!8568 (=> (not res!27625) (not e!31694))))

(declare-datatypes () ((List!525 (Cons!491 (head!822 (_ BitVec 32)) (tail!848 List!525)) (Nil!492))))

(declare-fun list!487 () List!525)

(assert (=> start!8568 (= res!27625 (and (not (is-Nil!492 list!487)) (not (is-Nil!492 (tail!848 list!487)))))))

(assert (=> start!8568 e!31694))

(assert (=> start!8568 true))

(declare-fun b!59551 () Bool)

(declare-fun res!27626 () Bool)

(assert (=> b!59551 (=> (not res!27626) (not e!31694))))

(declare-datatypes () ((tuple2!302 (tuple2!303 (_1!178 List!525) (_2!178 List!525)))))

(declare-fun x$4!100 () tuple2!302)

(declare-fun split!2 (List!525) tuple2!302)

(assert (=> b!59551 (= res!27626 (= x$4!100 (split!2 (tail!848 (tail!848 list!487)))))))

(declare-fun b!59552 () Bool)

(declare-fun res!27627 () Bool)

(assert (=> b!59552 (=> (not res!27627) (not e!31694))))

(declare-fun s2!44 () List!525)

(declare-fun s1!45 () List!525)

(declare-fun res!27402 () tuple2!302)

(assert (=> b!59552 (= res!27627 (and (= s1!45 (_1!178 x$4!100)) (= s2!44 (_2!178 x$4!100)) (= res!27402 (tuple2!303 (Cons!491 (head!822 list!487) s1!45) (Cons!491 (head!822 (tail!848 list!487)) s2!44)))))))

(declare-fun b!59553 () Bool)

(declare-fun splitSpec!0 (List!525 tuple2!302) Bool)

(assert (=> b!59553 (= e!31694 (not (splitSpec!0 list!487 res!27402)))))

(assert (= (and start!8568 res!27625) b!59551))

(assert (= (and b!59551 res!27626) b!59552))

(assert (= (and b!59552 res!27627) b!59553))

(declare-fun m!64424 () Bool)

(assert (=> b!59551 m!64424))

(declare-fun m!64426 () Bool)

(assert (=> b!59553 m!64426))

(push 1)

(assert (not b!59551))

(assert (not b!59553))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!59562 () Bool)

(declare-fun e!31700 () tuple2!302)

(assert (=> b!59562 (= e!31700 (tuple2!303 Nil!492 Nil!492))))

(declare-fun b!59564 () Bool)

(declare-fun e!31699 () tuple2!302)

(assert (=> b!59564 (= e!31699 (tuple2!303 (Cons!491 (head!822 (tail!848 (tail!848 list!487))) Nil!492) Nil!492))))

(declare-fun d!51149 () Bool)

(declare-fun lt!11048 () tuple2!302)

(assert (=> d!51149 (splitSpec!0 (tail!848 (tail!848 list!487)) lt!11048)))

(assert (=> d!51149 (= lt!11048 e!31700)))

(declare-fun c!12903 () Bool)

(assert (=> d!51149 (= c!12903 (is-Nil!492 (tail!848 (tail!848 list!487))))))

(assert (=> d!51149 (= (split!2 (tail!848 (tail!848 list!487))) lt!11048)))

(declare-fun b!59565 () Bool)

(assert (=> b!59565 (= e!31699 (tuple2!303 (Cons!491 (head!822 (tail!848 (tail!848 list!487))) (_1!178 (split!2 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))))) (Cons!491 (head!822 (tail!848 (tail!848 (tail!848 list!487)))) (_2!178 (split!2 (tail!848 (tail!848 (tail!848 (tail!848 list!487)))))))))))

(declare-fun b!59563 () Bool)

(assert (=> b!59563 (= e!31700 e!31699)))

(declare-fun c!12904 () Bool)

(assert (=> b!59563 (= c!12904 (and (is-Cons!491 (tail!848 (tail!848 list!487))) (is-Nil!492 (tail!848 (tail!848 (tail!848 list!487))))))))

(assert (= (and b!59563 c!12904) b!59564))

(assert (= (and b!59563 (not c!12904)) b!59565))

(assert (= (and d!51149 c!12903) b!59562))

(assert (= (and d!51149 (not c!12903)) b!59563))

(declare-fun m!64428 () Bool)

(assert (=> d!51149 m!64428))

(declare-fun m!64430 () Bool)

(assert (=> b!59565 m!64430))

(assert (=> b!59551 d!51149))

(declare-fun d!51151 () Bool)

(declare-fun res!27634 () Bool)

(declare-fun e!31703 () Bool)

(assert (=> d!51151 (=> (not res!27634) (not e!31703))))

(declare-fun lt!11054 () Int)

(declare-fun lt!11053 () Int)

(declare-fun abs!3 (Int) Int)

(assert (=> d!51151 (= res!27634 (<= (abs!3 (- lt!11054 lt!11053)) 1))))

(declare-fun size!16 (List!525) Int)

(assert (=> d!51151 (= lt!11053 (size!16 (_2!178 res!27402)))))

(assert (=> d!51151 (= lt!11054 (size!16 (_1!178 res!27402)))))

(assert (=> d!51151 (= (splitSpec!0 list!487 res!27402) e!31703)))

(declare-fun b!59570 () Bool)

(declare-fun res!27635 () Bool)

(assert (=> b!59570 (=> (not res!27635) (not e!31703))))

(assert (=> b!59570 (= res!27635 (= (+ lt!11054 lt!11053) (size!16 list!487)))))

(declare-fun b!59571 () Bool)

(declare-fun content!15 (List!525) (Set (_ BitVec 32)))

(assert (=> b!59571 (= e!31703 (= (union (content!15 (_1!178 res!27402)) (content!15 (_2!178 res!27402))) (content!15 list!487)))))

(assert (= (and d!51151 res!27634) b!59570))

(assert (= (and b!59570 res!27635) b!59571))

(declare-fun m!64432 () Bool)

(assert (=> d!51151 m!64432))

(declare-fun m!64434 () Bool)

(assert (=> d!51151 m!64434))

(declare-fun m!64436 () Bool)

(assert (=> d!51151 m!64436))

(declare-fun m!64438 () Bool)

(assert (=> b!59570 m!64438))

(declare-fun m!64440 () Bool)

(assert (=> b!59571 m!64440))

(declare-fun m!64442 () Bool)

(assert (=> b!59571 m!64442))

(declare-fun m!64444 () Bool)

(assert (=> b!59571 m!64444))

(assert (=> b!59553 d!51151))

(push 1)

(assert (not b!59571))

(assert (not d!51151))

(assert (not d!51149))

(assert (not b!59565))

(assert (not b!59570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!59572 () Bool)

(declare-fun e!31705 () tuple2!302)

(assert (=> b!59572 (= e!31705 (tuple2!303 Nil!492 Nil!492))))

(declare-fun b!59574 () Bool)

(declare-fun e!31704 () tuple2!302)

(assert (=> b!59574 (= e!31704 (tuple2!303 (Cons!491 (head!822 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))) Nil!492) Nil!492))))

(declare-fun d!51153 () Bool)

(declare-fun lt!11055 () tuple2!302)

(assert (=> d!51153 (splitSpec!0 (tail!848 (tail!848 (tail!848 (tail!848 list!487)))) lt!11055)))

(assert (=> d!51153 (= lt!11055 e!31705)))

(declare-fun c!12905 () Bool)

(assert (=> d!51153 (= c!12905 (is-Nil!492 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))))))

(assert (=> d!51153 (= (split!2 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))) lt!11055)))

(declare-fun b!59575 () Bool)

(assert (=> b!59575 (= e!31704 (tuple2!303 (Cons!491 (head!822 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))) (_1!178 (split!2 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))))))) (Cons!491 (head!822 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 list!487)))))) (_2!178 (split!2 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 list!487)))))))))))))

(declare-fun b!59573 () Bool)

(assert (=> b!59573 (= e!31705 e!31704)))

(declare-fun c!12906 () Bool)

(assert (=> b!59573 (= c!12906 (and (is-Cons!491 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))) (is-Nil!492 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))))))))

(assert (= (and b!59573 c!12906) b!59574))

(assert (= (and b!59573 (not c!12906)) b!59575))

(assert (= (and d!51153 c!12905) b!59572))

(assert (= (and d!51153 (not c!12905)) b!59573))

(declare-fun m!64446 () Bool)

(assert (=> d!51153 m!64446))

(declare-fun m!64448 () Bool)

(assert (=> b!59575 m!64448))

(assert (=> b!59565 d!51153))

(declare-fun d!51155 () Bool)

(declare-fun lt!11058 () Int)

(assert (=> d!51155 (>= lt!11058 0)))

(assert (=> d!51155 (= lt!11058 (ite (< (- lt!11054 lt!11053) 0) (- (- lt!11054 lt!11053)) (- lt!11054 lt!11053)))))

(assert (=> d!51155 (= (abs!3 (- lt!11054 lt!11053)) lt!11058)))

(assert (=> d!51151 d!51155))

(declare-fun d!51157 () Bool)

(declare-fun lt!11061 () Int)

(assert (=> d!51157 (>= lt!11061 0)))

(declare-fun e!31708 () Int)

(assert (=> d!51157 (= lt!11061 e!31708)))

(declare-fun c!12909 () Bool)

(assert (=> d!51157 (= c!12909 (is-Nil!492 (_2!178 res!27402)))))

(assert (=> d!51157 (= (size!16 (_2!178 res!27402)) lt!11061)))

(declare-fun b!59580 () Bool)

(assert (=> b!59580 (= e!31708 0)))

(declare-fun b!59581 () Bool)

(assert (=> b!59581 (= e!31708 (+ 1 (size!16 (tail!848 (_2!178 res!27402)))))))

(assert (= (and d!51157 c!12909) b!59580))

(assert (= (and d!51157 (not c!12909)) b!59581))

(declare-fun m!64450 () Bool)

(assert (=> b!59581 m!64450))

(assert (=> d!51151 d!51157))

(declare-fun d!51159 () Bool)

(declare-fun lt!11062 () Int)

(assert (=> d!51159 (>= lt!11062 0)))

(declare-fun e!31709 () Int)

(assert (=> d!51159 (= lt!11062 e!31709)))

(declare-fun c!12910 () Bool)

(assert (=> d!51159 (= c!12910 (is-Nil!492 (_1!178 res!27402)))))

(assert (=> d!51159 (= (size!16 (_1!178 res!27402)) lt!11062)))

(declare-fun b!59582 () Bool)

(assert (=> b!59582 (= e!31709 0)))

(declare-fun b!59583 () Bool)

(assert (=> b!59583 (= e!31709 (+ 1 (size!16 (tail!848 (_1!178 res!27402)))))))

(assert (= (and d!51159 c!12910) b!59582))

(assert (= (and d!51159 (not c!12910)) b!59583))

(declare-fun m!64452 () Bool)

(assert (=> b!59583 m!64452))

(assert (=> d!51151 d!51159))

(declare-fun d!51161 () Bool)

(declare-fun c!12913 () Bool)

(assert (=> d!51161 (= c!12913 (is-Nil!492 (_1!178 res!27402)))))

(declare-fun e!31712 () (Set (_ BitVec 32)))

(assert (=> d!51161 (= (content!15 (_1!178 res!27402)) e!31712)))

(declare-fun b!59588 () Bool)

(assert (=> b!59588 (= e!31712 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59589 () Bool)

(assert (=> b!59589 (= e!31712 (union (insert (head!822 (_1!178 res!27402)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!848 (_1!178 res!27402)))))))

(assert (= (and d!51161 c!12913) b!59588))

(assert (= (and d!51161 (not c!12913)) b!59589))

(declare-fun m!64454 () Bool)

(assert (=> b!59589 m!64454))

(declare-fun m!64456 () Bool)

(assert (=> b!59589 m!64456))

(assert (=> b!59571 d!51161))

(declare-fun d!51163 () Bool)

(declare-fun c!12914 () Bool)

(assert (=> d!51163 (= c!12914 (is-Nil!492 (_2!178 res!27402)))))

(declare-fun e!31713 () (Set (_ BitVec 32)))

(assert (=> d!51163 (= (content!15 (_2!178 res!27402)) e!31713)))

(declare-fun b!59590 () Bool)

(assert (=> b!59590 (= e!31713 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59591 () Bool)

(assert (=> b!59591 (= e!31713 (union (insert (head!822 (_2!178 res!27402)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!848 (_2!178 res!27402)))))))

(assert (= (and d!51163 c!12914) b!59590))

(assert (= (and d!51163 (not c!12914)) b!59591))

(declare-fun m!64458 () Bool)

(assert (=> b!59591 m!64458))

(declare-fun m!64460 () Bool)

(assert (=> b!59591 m!64460))

(assert (=> b!59571 d!51163))

(declare-fun d!51165 () Bool)

(declare-fun c!12915 () Bool)

(assert (=> d!51165 (= c!12915 (is-Nil!492 list!487))))

(declare-fun e!31714 () (Set (_ BitVec 32)))

(assert (=> d!51165 (= (content!15 list!487) e!31714)))

(declare-fun b!59592 () Bool)

(assert (=> b!59592 (= e!31714 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59593 () Bool)

(assert (=> b!59593 (= e!31714 (union (insert (head!822 list!487) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!848 list!487))))))

(assert (= (and d!51165 c!12915) b!59592))

(assert (= (and d!51165 (not c!12915)) b!59593))

(declare-fun m!64462 () Bool)

(assert (=> b!59593 m!64462))

(declare-fun m!64464 () Bool)

(assert (=> b!59593 m!64464))

(assert (=> b!59571 d!51165))

(declare-fun d!51167 () Bool)

(declare-fun res!27636 () Bool)

(declare-fun e!31715 () Bool)

(assert (=> d!51167 (=> (not res!27636) (not e!31715))))

(declare-fun lt!11064 () Int)

(declare-fun lt!11063 () Int)

(assert (=> d!51167 (= res!27636 (<= (abs!3 (- lt!11064 lt!11063)) 1))))

(assert (=> d!51167 (= lt!11063 (size!16 (_2!178 lt!11048)))))

(assert (=> d!51167 (= lt!11064 (size!16 (_1!178 lt!11048)))))

(assert (=> d!51167 (= (splitSpec!0 (tail!848 (tail!848 list!487)) lt!11048) e!31715)))

(declare-fun b!59594 () Bool)

(declare-fun res!27637 () Bool)

(assert (=> b!59594 (=> (not res!27637) (not e!31715))))

(assert (=> b!59594 (= res!27637 (= (+ lt!11064 lt!11063) (size!16 (tail!848 (tail!848 list!487)))))))

(declare-fun b!59595 () Bool)

(assert (=> b!59595 (= e!31715 (= (union (content!15 (_1!178 lt!11048)) (content!15 (_2!178 lt!11048))) (content!15 (tail!848 (tail!848 list!487)))))))

(assert (= (and d!51167 res!27636) b!59594))

(assert (= (and b!59594 res!27637) b!59595))

(declare-fun m!64466 () Bool)

(assert (=> d!51167 m!64466))

(declare-fun m!64468 () Bool)

(assert (=> d!51167 m!64468))

(declare-fun m!64470 () Bool)

(assert (=> d!51167 m!64470))

(declare-fun m!64472 () Bool)

(assert (=> b!59594 m!64472))

(declare-fun m!64474 () Bool)

(assert (=> b!59595 m!64474))

(declare-fun m!64476 () Bool)

(assert (=> b!59595 m!64476))

(declare-fun m!64478 () Bool)

(assert (=> b!59595 m!64478))

(assert (=> d!51149 d!51167))

(declare-fun d!51169 () Bool)

(declare-fun lt!11065 () Int)

(assert (=> d!51169 (>= lt!11065 0)))

(declare-fun e!31716 () Int)

(assert (=> d!51169 (= lt!11065 e!31716)))

(declare-fun c!12916 () Bool)

(assert (=> d!51169 (= c!12916 (is-Nil!492 list!487))))

(assert (=> d!51169 (= (size!16 list!487) lt!11065)))

(declare-fun b!59596 () Bool)

(assert (=> b!59596 (= e!31716 0)))

(declare-fun b!59597 () Bool)

(assert (=> b!59597 (= e!31716 (+ 1 (size!16 (tail!848 list!487))))))

(assert (= (and d!51169 c!12916) b!59596))

(assert (= (and d!51169 (not c!12916)) b!59597))

(declare-fun m!64480 () Bool)

(assert (=> b!59597 m!64480))

(assert (=> b!59570 d!51169))

(push 1)

(assert (not d!51153))

(assert (not b!59583))

(assert (not b!59575))

(assert (not b!59595))

(assert (not b!59593))

(assert (not b!59589))

(assert (not b!59594))

(assert (not b!59591))

(assert (not b!59581))

(assert (not b!59597))

(assert (not d!51167))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51171 () Bool)

(declare-fun lt!11066 () Int)

(assert (=> d!51171 (>= lt!11066 0)))

(declare-fun e!31717 () Int)

(assert (=> d!51171 (= lt!11066 e!31717)))

(declare-fun c!12917 () Bool)

(assert (=> d!51171 (= c!12917 (is-Nil!492 (tail!848 (_1!178 res!27402))))))

(assert (=> d!51171 (= (size!16 (tail!848 (_1!178 res!27402))) lt!11066)))

(declare-fun b!59598 () Bool)

(assert (=> b!59598 (= e!31717 0)))

(declare-fun b!59599 () Bool)

(assert (=> b!59599 (= e!31717 (+ 1 (size!16 (tail!848 (tail!848 (_1!178 res!27402))))))))

(assert (= (and d!51171 c!12917) b!59598))

(assert (= (and d!51171 (not c!12917)) b!59599))

(declare-fun m!64482 () Bool)

(assert (=> b!59599 m!64482))

(assert (=> b!59583 d!51171))

(declare-fun d!51173 () Bool)

(declare-fun lt!11067 () Int)

(assert (=> d!51173 (>= lt!11067 0)))

(declare-fun e!31718 () Int)

(assert (=> d!51173 (= lt!11067 e!31718)))

(declare-fun c!12918 () Bool)

(assert (=> d!51173 (= c!12918 (is-Nil!492 (tail!848 (_2!178 res!27402))))))

(assert (=> d!51173 (= (size!16 (tail!848 (_2!178 res!27402))) lt!11067)))

(declare-fun b!59600 () Bool)

(assert (=> b!59600 (= e!31718 0)))

(declare-fun b!59601 () Bool)

(assert (=> b!59601 (= e!31718 (+ 1 (size!16 (tail!848 (tail!848 (_2!178 res!27402))))))))

(assert (= (and d!51173 c!12918) b!59600))

(assert (= (and d!51173 (not c!12918)) b!59601))

(declare-fun m!64484 () Bool)

(assert (=> b!59601 m!64484))

(assert (=> b!59581 d!51173))

(declare-fun d!51175 () Bool)

(declare-fun lt!11068 () Int)

(assert (=> d!51175 (>= lt!11068 0)))

(assert (=> d!51175 (= lt!11068 (ite (< (- lt!11064 lt!11063) 0) (- (- lt!11064 lt!11063)) (- lt!11064 lt!11063)))))

(assert (=> d!51175 (= (abs!3 (- lt!11064 lt!11063)) lt!11068)))

(assert (=> d!51167 d!51175))

(declare-fun d!51177 () Bool)

(declare-fun lt!11069 () Int)

(assert (=> d!51177 (>= lt!11069 0)))

(declare-fun e!31719 () Int)

(assert (=> d!51177 (= lt!11069 e!31719)))

(declare-fun c!12919 () Bool)

(assert (=> d!51177 (= c!12919 (is-Nil!492 (_2!178 lt!11048)))))

(assert (=> d!51177 (= (size!16 (_2!178 lt!11048)) lt!11069)))

(declare-fun b!59602 () Bool)

(assert (=> b!59602 (= e!31719 0)))

(declare-fun b!59603 () Bool)

(assert (=> b!59603 (= e!31719 (+ 1 (size!16 (tail!848 (_2!178 lt!11048)))))))

(assert (= (and d!51177 c!12919) b!59602))

(assert (= (and d!51177 (not c!12919)) b!59603))

(declare-fun m!64486 () Bool)

(assert (=> b!59603 m!64486))

(assert (=> d!51167 d!51177))

(declare-fun d!51179 () Bool)

(declare-fun lt!11070 () Int)

(assert (=> d!51179 (>= lt!11070 0)))

(declare-fun e!31720 () Int)

(assert (=> d!51179 (= lt!11070 e!31720)))

(declare-fun c!12920 () Bool)

(assert (=> d!51179 (= c!12920 (is-Nil!492 (_1!178 lt!11048)))))

(assert (=> d!51179 (= (size!16 (_1!178 lt!11048)) lt!11070)))

(declare-fun b!59604 () Bool)

(assert (=> b!59604 (= e!31720 0)))

(declare-fun b!59605 () Bool)

(assert (=> b!59605 (= e!31720 (+ 1 (size!16 (tail!848 (_1!178 lt!11048)))))))

(assert (= (and d!51179 c!12920) b!59604))

(assert (= (and d!51179 (not c!12920)) b!59605))

(declare-fun m!64488 () Bool)

(assert (=> b!59605 m!64488))

(assert (=> d!51167 d!51179))

(declare-fun d!51181 () Bool)

(declare-fun res!27638 () Bool)

(declare-fun e!31721 () Bool)

(assert (=> d!51181 (=> (not res!27638) (not e!31721))))

(declare-fun lt!11072 () Int)

(declare-fun lt!11071 () Int)

(assert (=> d!51181 (= res!27638 (<= (abs!3 (- lt!11072 lt!11071)) 1))))

(assert (=> d!51181 (= lt!11071 (size!16 (_2!178 lt!11055)))))

(assert (=> d!51181 (= lt!11072 (size!16 (_1!178 lt!11055)))))

(assert (=> d!51181 (= (splitSpec!0 (tail!848 (tail!848 (tail!848 (tail!848 list!487)))) lt!11055) e!31721)))

(declare-fun b!59606 () Bool)

(declare-fun res!27639 () Bool)

(assert (=> b!59606 (=> (not res!27639) (not e!31721))))

(assert (=> b!59606 (= res!27639 (= (+ lt!11072 lt!11071) (size!16 (tail!848 (tail!848 (tail!848 (tail!848 list!487)))))))))

(declare-fun b!59607 () Bool)

(assert (=> b!59607 (= e!31721 (= (union (content!15 (_1!178 lt!11055)) (content!15 (_2!178 lt!11055))) (content!15 (tail!848 (tail!848 (tail!848 (tail!848 list!487)))))))))

(assert (= (and d!51181 res!27638) b!59606))

(assert (= (and b!59606 res!27639) b!59607))

(declare-fun m!64490 () Bool)

(assert (=> d!51181 m!64490))

(declare-fun m!64492 () Bool)

(assert (=> d!51181 m!64492))

(declare-fun m!64494 () Bool)

(assert (=> d!51181 m!64494))

(declare-fun m!64496 () Bool)

(assert (=> b!59606 m!64496))

(declare-fun m!64498 () Bool)

(assert (=> b!59607 m!64498))

(declare-fun m!64500 () Bool)

(assert (=> b!59607 m!64500))

(declare-fun m!64502 () Bool)

(assert (=> b!59607 m!64502))

(assert (=> d!51153 d!51181))

(declare-fun d!51183 () Bool)

(declare-fun lt!11073 () Int)

(assert (=> d!51183 (>= lt!11073 0)))

(declare-fun e!31722 () Int)

(assert (=> d!51183 (= lt!11073 e!31722)))

(declare-fun c!12921 () Bool)

(assert (=> d!51183 (= c!12921 (is-Nil!492 (tail!848 list!487)))))

(assert (=> d!51183 (= (size!16 (tail!848 list!487)) lt!11073)))

(declare-fun b!59608 () Bool)

(assert (=> b!59608 (= e!31722 0)))

(declare-fun b!59609 () Bool)

(assert (=> b!59609 (= e!31722 (+ 1 (size!16 (tail!848 (tail!848 list!487)))))))

(assert (= (and d!51183 c!12921) b!59608))

(assert (= (and d!51183 (not c!12921)) b!59609))

(assert (=> b!59609 m!64472))

(assert (=> b!59597 d!51183))

(declare-fun d!51185 () Bool)

(declare-fun c!12922 () Bool)

(assert (=> d!51185 (= c!12922 (is-Nil!492 (_1!178 lt!11048)))))

(declare-fun e!31723 () (Set (_ BitVec 32)))

(assert (=> d!51185 (= (content!15 (_1!178 lt!11048)) e!31723)))

(declare-fun b!59610 () Bool)

(assert (=> b!59610 (= e!31723 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59611 () Bool)

(assert (=> b!59611 (= e!31723 (union (insert (head!822 (_1!178 lt!11048)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!848 (_1!178 lt!11048)))))))

(assert (= (and d!51185 c!12922) b!59610))

(assert (= (and d!51185 (not c!12922)) b!59611))

(declare-fun m!64504 () Bool)

(assert (=> b!59611 m!64504))

(declare-fun m!64506 () Bool)

(assert (=> b!59611 m!64506))

(assert (=> b!59595 d!51185))

(declare-fun d!51187 () Bool)

(declare-fun c!12923 () Bool)

(assert (=> d!51187 (= c!12923 (is-Nil!492 (_2!178 lt!11048)))))

(declare-fun e!31724 () (Set (_ BitVec 32)))

(assert (=> d!51187 (= (content!15 (_2!178 lt!11048)) e!31724)))

(declare-fun b!59612 () Bool)

(assert (=> b!59612 (= e!31724 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59613 () Bool)

(assert (=> b!59613 (= e!31724 (union (insert (head!822 (_2!178 lt!11048)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!848 (_2!178 lt!11048)))))))

(assert (= (and d!51187 c!12923) b!59612))

(assert (= (and d!51187 (not c!12923)) b!59613))

(declare-fun m!64508 () Bool)

(assert (=> b!59613 m!64508))

(declare-fun m!64510 () Bool)

(assert (=> b!59613 m!64510))

(assert (=> b!59595 d!51187))

(declare-fun d!51189 () Bool)

(declare-fun c!12924 () Bool)

(assert (=> d!51189 (= c!12924 (is-Nil!492 (tail!848 (tail!848 list!487))))))

(declare-fun e!31725 () (Set (_ BitVec 32)))

(assert (=> d!51189 (= (content!15 (tail!848 (tail!848 list!487))) e!31725)))

(declare-fun b!59614 () Bool)

(assert (=> b!59614 (= e!31725 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59615 () Bool)

(assert (=> b!59615 (= e!31725 (union (insert (head!822 (tail!848 (tail!848 list!487))) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!848 (tail!848 (tail!848 list!487))))))))

(assert (= (and d!51189 c!12924) b!59614))

(assert (= (and d!51189 (not c!12924)) b!59615))

(declare-fun m!64512 () Bool)

(assert (=> b!59615 m!64512))

(declare-fun m!64514 () Bool)

(assert (=> b!59615 m!64514))

(assert (=> b!59595 d!51189))

(declare-fun d!51191 () Bool)

(declare-fun c!12925 () Bool)

(assert (=> d!51191 (= c!12925 (is-Nil!492 (tail!848 (_1!178 res!27402))))))

(declare-fun e!31726 () (Set (_ BitVec 32)))

(assert (=> d!51191 (= (content!15 (tail!848 (_1!178 res!27402))) e!31726)))

(declare-fun b!59616 () Bool)

(assert (=> b!59616 (= e!31726 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59617 () Bool)

(assert (=> b!59617 (= e!31726 (union (insert (head!822 (tail!848 (_1!178 res!27402))) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!848 (tail!848 (_1!178 res!27402))))))))

(assert (= (and d!51191 c!12925) b!59616))

(assert (= (and d!51191 (not c!12925)) b!59617))

(declare-fun m!64516 () Bool)

(assert (=> b!59617 m!64516))

(declare-fun m!64518 () Bool)

(assert (=> b!59617 m!64518))

(assert (=> b!59589 d!51191))

(declare-fun d!51193 () Bool)

(declare-fun c!12926 () Bool)

(assert (=> d!51193 (= c!12926 (is-Nil!492 (tail!848 (_2!178 res!27402))))))

(declare-fun e!31727 () (Set (_ BitVec 32)))

(assert (=> d!51193 (= (content!15 (tail!848 (_2!178 res!27402))) e!31727)))

(declare-fun b!59618 () Bool)

(assert (=> b!59618 (= e!31727 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59619 () Bool)

(assert (=> b!59619 (= e!31727 (union (insert (head!822 (tail!848 (_2!178 res!27402))) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!848 (tail!848 (_2!178 res!27402))))))))

(assert (= (and d!51193 c!12926) b!59618))

(assert (= (and d!51193 (not c!12926)) b!59619))

(declare-fun m!64520 () Bool)

(assert (=> b!59619 m!64520))

(declare-fun m!64522 () Bool)

(assert (=> b!59619 m!64522))

(assert (=> b!59591 d!51193))

(declare-fun d!51195 () Bool)

(declare-fun c!12927 () Bool)

(assert (=> d!51195 (= c!12927 (is-Nil!492 (tail!848 list!487)))))

(declare-fun e!31728 () (Set (_ BitVec 32)))

(assert (=> d!51195 (= (content!15 (tail!848 list!487)) e!31728)))

(declare-fun b!59620 () Bool)

(assert (=> b!59620 (= e!31728 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59621 () Bool)

(assert (=> b!59621 (= e!31728 (union (insert (head!822 (tail!848 list!487)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!848 (tail!848 list!487)))))))

(assert (= (and d!51195 c!12927) b!59620))

(assert (= (and d!51195 (not c!12927)) b!59621))

(declare-fun m!64524 () Bool)

(assert (=> b!59621 m!64524))

(assert (=> b!59621 m!64478))

(assert (=> b!59593 d!51195))

(declare-fun d!51197 () Bool)

(declare-fun lt!11074 () Int)

(assert (=> d!51197 (>= lt!11074 0)))

(declare-fun e!31729 () Int)

(assert (=> d!51197 (= lt!11074 e!31729)))

(declare-fun c!12928 () Bool)

(assert (=> d!51197 (= c!12928 (is-Nil!492 (tail!848 (tail!848 list!487))))))

(assert (=> d!51197 (= (size!16 (tail!848 (tail!848 list!487))) lt!11074)))

(declare-fun b!59622 () Bool)

(assert (=> b!59622 (= e!31729 0)))

(declare-fun b!59623 () Bool)

(assert (=> b!59623 (= e!31729 (+ 1 (size!16 (tail!848 (tail!848 (tail!848 list!487))))))))

(assert (= (and d!51197 c!12928) b!59622))

(assert (= (and d!51197 (not c!12928)) b!59623))

(declare-fun m!64526 () Bool)

(assert (=> b!59623 m!64526))

(assert (=> b!59594 d!51197))

(declare-fun b!59624 () Bool)

(declare-fun e!31731 () tuple2!302)

(assert (=> b!59624 (= e!31731 (tuple2!303 Nil!492 Nil!492))))

(declare-fun b!59626 () Bool)

(declare-fun e!31730 () tuple2!302)

(assert (=> b!59626 (= e!31730 (tuple2!303 (Cons!491 (head!822 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))))) Nil!492) Nil!492))))

(declare-fun d!51199 () Bool)

(declare-fun lt!11075 () tuple2!302)

(assert (=> d!51199 (splitSpec!0 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 list!487)))))) lt!11075)))

(assert (=> d!51199 (= lt!11075 e!31731)))

(declare-fun c!12929 () Bool)

(assert (=> d!51199 (= c!12929 (is-Nil!492 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))))))))

(assert (=> d!51199 (= (split!2 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))))) lt!11075)))

(declare-fun b!59627 () Bool)

(assert (=> b!59627 (= e!31730 (tuple2!303 (Cons!491 (head!822 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))))) (_1!178 (split!2 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))))))))) (Cons!491 (head!822 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 list!487)))))))) (_2!178 (split!2 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 list!487)))))))))))))))

(declare-fun b!59625 () Bool)

(assert (=> b!59625 (= e!31731 e!31730)))

(declare-fun c!12930 () Bool)

(assert (=> b!59625 (= c!12930 (and (is-Cons!491 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))))) (is-Nil!492 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 (tail!848 list!487))))))))))))

(assert (= (and b!59625 c!12930) b!59626))

(assert (= (and b!59625 (not c!12930)) b!59627))

(assert (= (and d!51199 c!12929) b!59624))

(assert (= (and d!51199 (not c!12929)) b!59625))

(declare-fun m!64528 () Bool)

(assert (=> d!51199 m!64528))

(declare-fun m!64530 () Bool)

(assert (=> b!59627 m!64530))

(assert (=> b!59575 d!51199))

(push 1)

(assert (not b!59611))

(assert (not b!59627))

(assert (not b!59606))

(assert (not b!59601))

(assert (not b!59603))

(assert (not d!51181))

(assert (not b!59617))

(assert (not b!59623))

(assert (not b!59621))

(assert (not b!59619))

(assert (not b!59615))

(assert (not b!59613))

(assert (not d!51199))

(assert (not b!59607))

(assert (not b!59609))

(assert (not b!59605))

(assert (not b!59599))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!700 () Bool)

(assert start!700)

(declare-fun res!1369 () Bool)

(declare-fun e!2718 () Bool)

(assert (=> start!700 (=> (not res!1369) (not e!2718))))

(declare-datatypes () ((KeyValuePairAbs!2 (KeyValuePair!1 (key!118 (_ BitVec 32)) (value!1072 (_ BitVec 32))))))

(declare-datatypes () ((List!86 (Nil!86) (Cons!85 (head!265 KeyValuePairAbs!2) (tail!277 List!86)))))

(declare-fun l!429 () List!86)

(assert (=> start!700 (= res!1369 (not (is-Nil!86 l!429)))))

(assert (=> start!700 e!2718))

(assert (=> start!700 true))

(declare-fun b!4557 () Bool)

(declare-fun res!1370 () Bool)

(assert (=> b!4557 (=> (not res!1370) (not e!2718))))

(declare-fun inductVal!20 () Bool)

(declare-fun k1!3 () (_ BitVec 32))

(declare-fun e!2694 () (_ BitVec 32))

(declare-fun k2!1 () (_ BitVec 32))

(declare-fun readOverWrite!0 (List!86 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4557 (= res!1370 (= inductVal!20 (readOverWrite!0 (tail!277 l!429) k1!3 k2!1 e!2694)))))

(declare-fun b!4558 () Bool)

(declare-datatypes () ((OptionInt!4 (Some!90 (i!214 (_ BitVec 32))) (None!90))))

(declare-fun e!2719 () OptionInt!4)

(declare-fun find!3 (List!86 (_ BitVec 32)) OptionInt!4)

(declare-fun updateElem!0 (List!86 KeyValuePairAbs!2) List!86)

(assert (=> b!4558 (= e!2718 (not (= (find!3 (updateElem!0 l!429 (KeyValuePair!1 k2!1 e!2694)) k1!3) e!2719)))))

(declare-fun c!1677 () Bool)

(assert (=> b!4558 (= c!1677 (= k1!3 k2!1))))

(declare-fun b!4560 () Bool)

(assert (=> b!4560 (= e!2719 (find!3 l!429 k1!3))))

(declare-fun b!4559 () Bool)

(assert (=> b!4559 (= e!2719 (Some!90 e!2694))))

(assert (= (and start!700 res!1369) b!4557))

(assert (= (and b!4557 res!1370) b!4558))

(assert (= (and b!4558 c!1677) b!4559))

(assert (= (and b!4558 (not c!1677)) b!4560))

(declare-fun m!7121 () Bool)

(assert (=> b!4557 m!7121))

(declare-fun m!7123 () Bool)

(assert (=> b!4558 m!7123))

(assert (=> b!4558 m!7123))

(declare-fun m!7125 () Bool)

(assert (=> b!4558 m!7125))

(declare-fun m!7127 () Bool)

(assert (=> b!4560 m!7127))

(push 1)

(assert (not b!4558))

(assert (not b!4560))

(assert (not b!4557))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4571 () Bool)

(declare-fun e!2726 () OptionInt!4)

(assert (=> b!4571 (= e!2726 (Some!90 (value!1072 (head!265 (updateElem!0 l!429 (KeyValuePair!1 k2!1 e!2694))))))))

(declare-fun b!4570 () Bool)

(declare-fun e!2725 () OptionInt!4)

(assert (=> b!4570 (= e!2725 e!2726)))

(declare-fun c!1683 () Bool)

(assert (=> b!4570 (= c!1683 (= (key!118 (head!265 (updateElem!0 l!429 (KeyValuePair!1 k2!1 e!2694)))) k1!3))))

(declare-fun b!4572 () Bool)

(assert (=> b!4572 (= e!2726 (find!3 (tail!277 (updateElem!0 l!429 (KeyValuePair!1 k2!1 e!2694))) k1!3))))

(declare-fun c!1682 () Bool)

(declare-fun d!3319 () Bool)

(assert (=> d!3319 (= c!1682 (is-Nil!86 (updateElem!0 l!429 (KeyValuePair!1 k2!1 e!2694))))))

(assert (=> d!3319 (= (find!3 (updateElem!0 l!429 (KeyValuePair!1 k2!1 e!2694)) k1!3) e!2725)))

(declare-fun b!4569 () Bool)

(assert (=> b!4569 (= e!2725 None!90)))

(assert (= (and b!4570 c!1683) b!4571))

(assert (= (and b!4570 (not c!1683)) b!4572))

(assert (= (and d!3319 c!1682) b!4569))

(assert (= (and d!3319 (not c!1682)) b!4570))

(declare-fun m!7129 () Bool)

(assert (=> b!4572 m!7129))

(assert (=> b!4558 d!3319))

(declare-fun lt!1213 () List!86)

(declare-fun e!2735 () Bool)

(declare-fun b!4583 () Bool)

(declare-fun domain!0 (List!86) (Set (_ BitVec 32)))

(assert (=> b!4583 (= e!2735 (= (domain!0 lt!1213) (union (domain!0 l!429) (insert (key!118 (KeyValuePair!1 k2!1 e!2694)) (as emptyset (Set (_ BitVec 32)))))))))

(declare-fun b!4584 () Bool)

(declare-fun e!2736 () List!86)

(assert (=> b!4584 (= e!2736 (Cons!85 (head!265 l!429) (updateElem!0 (tail!277 l!429) (KeyValuePair!1 k2!1 e!2694))))))

(declare-fun d!3321 () Bool)

(assert (=> d!3321 e!2735))

(declare-fun res!1374 () Bool)

(assert (=> d!3321 (=> (not res!1374) (not e!2735))))

(assert (=> d!3321 (= res!1374 (is-Cons!85 lt!1213))))

(declare-fun e!2734 () List!86)

(assert (=> d!3321 (= lt!1213 e!2734)))

(declare-fun c!1689 () Bool)

(assert (=> d!3321 (= c!1689 (is-Nil!86 l!429))))

(assert (=> d!3321 (= (updateElem!0 l!429 (KeyValuePair!1 k2!1 e!2694)) lt!1213)))

(declare-fun b!4585 () Bool)

(assert (=> b!4585 (= e!2734 (Cons!85 (KeyValuePair!1 k2!1 e!2694) Nil!86))))

(declare-fun b!4586 () Bool)

(assert (=> b!4586 (= e!2734 e!2736)))

(declare-fun c!1688 () Bool)

(assert (=> b!4586 (= c!1688 (= (key!118 (KeyValuePair!1 k2!1 e!2694)) (key!118 (head!265 l!429))))))

(declare-fun b!4587 () Bool)

(assert (=> b!4587 (= e!2736 (Cons!85 (KeyValuePair!1 k2!1 e!2694) (tail!277 l!429)))))

(assert (= (and b!4586 c!1688) b!4587))

(assert (= (and b!4586 (not c!1688)) b!4584))

(assert (= (and d!3321 c!1689) b!4585))

(assert (= (and d!3321 (not c!1689)) b!4586))

(assert (= (and d!3321 res!1374) b!4583))

(declare-fun m!7131 () Bool)

(assert (=> b!4583 m!7131))

(declare-fun m!7133 () Bool)

(assert (=> b!4583 m!7133))

(declare-fun m!7135 () Bool)

(assert (=> b!4583 m!7135))

(declare-fun m!7137 () Bool)

(assert (=> b!4584 m!7137))

(assert (=> b!4558 d!3321))

(declare-fun b!4590 () Bool)

(declare-fun e!2738 () OptionInt!4)

(assert (=> b!4590 (= e!2738 (Some!90 (value!1072 (head!265 l!429))))))

(declare-fun b!4589 () Bool)

(declare-fun e!2737 () OptionInt!4)

(assert (=> b!4589 (= e!2737 e!2738)))

(declare-fun c!1691 () Bool)

(assert (=> b!4589 (= c!1691 (= (key!118 (head!265 l!429)) k1!3))))

(declare-fun b!4591 () Bool)

(assert (=> b!4591 (= e!2738 (find!3 (tail!277 l!429) k1!3))))

(declare-fun d!3323 () Bool)

(declare-fun c!1690 () Bool)

(assert (=> d!3323 (= c!1690 (is-Nil!86 l!429))))

(assert (=> d!3323 (= (find!3 l!429 k1!3) e!2737)))

(declare-fun b!4588 () Bool)

(assert (=> b!4588 (= e!2737 None!90)))

(assert (= (and b!4589 c!1691) b!4590))

(assert (= (and b!4589 (not c!1691)) b!4591))

(assert (= (and d!3323 c!1690) b!4588))

(assert (= (and d!3323 (not c!1690)) b!4589))

(declare-fun m!7139 () Bool)

(assert (=> b!4591 m!7139))

(assert (=> b!4560 d!3323))

(declare-fun b!4604 () Bool)

(declare-fun e!2747 () OptionInt!4)

(assert (=> b!4604 (= e!2747 (Some!90 e!2694))))

(declare-fun d!3325 () Bool)

(declare-fun e!2746 () Bool)

(assert (=> d!3325 e!2746))

(declare-fun c!1698 () Bool)

(assert (=> d!3325 (= c!1698 (is-Nil!86 (tail!277 l!429)))))

(assert (=> d!3325 (= (readOverWrite!0 (tail!277 l!429) k1!3 k2!1 e!2694) true)))

(declare-fun b!4605 () Bool)

(assert (=> b!4605 (= e!2746 (= (find!3 (updateElem!0 (tail!277 l!429) (KeyValuePair!1 k2!1 e!2694)) k1!3) e!2747))))

(declare-fun c!1700 () Bool)

(assert (=> b!4605 (= c!1700 (= k1!3 k2!1))))

(declare-fun b!4606 () Bool)

(declare-fun e!2748 () OptionInt!4)

(assert (=> b!4606 (= e!2748 (Some!90 e!2694))))

(declare-fun b!4607 () Bool)

(assert (=> b!4607 (= e!2747 (find!3 (tail!277 l!429) k1!3))))

(declare-fun b!4608 () Bool)

(assert (=> b!4608 (= e!2748 (find!3 (tail!277 l!429) k1!3))))

(declare-fun b!4609 () Bool)

(assert (=> b!4609 (= e!2746 (= (find!3 (updateElem!0 (tail!277 l!429) (KeyValuePair!1 k2!1 e!2694)) k1!3) e!2748))))

(declare-fun c!1699 () Bool)

(assert (=> b!4609 (= c!1699 (= k1!3 k2!1))))

(declare-fun lt!1216 () Bool)

(assert (=> b!4609 (= lt!1216 (readOverWrite!0 (tail!277 (tail!277 l!429)) k1!3 k2!1 e!2694))))

(assert (= (and b!4605 c!1700) b!4604))

(assert (= (and b!4605 (not c!1700)) b!4607))

(assert (= (and b!4609 c!1699) b!4606))

(assert (= (and b!4609 (not c!1699)) b!4608))

(assert (= (and d!3325 c!1698) b!4605))

(assert (= (and d!3325 (not c!1698)) b!4609))

(assert (=> b!4605 m!7137))

(assert (=> b!4605 m!7137))

(declare-fun m!7141 () Bool)

(assert (=> b!4605 m!7141))

(assert (=> b!4607 m!7139))

(assert (=> b!4608 m!7139))

(assert (=> b!4609 m!7137))

(assert (=> b!4609 m!7137))

(assert (=> b!4609 m!7141))

(declare-fun m!7143 () Bool)

(assert (=> b!4609 m!7143))

(assert (=> b!4557 d!3325))

(push 1)

(assert (not b!4608))

(assert (not b!4584))

(assert (not b!4607))

(assert (not b!4609))

(assert (not b!4591))

(assert (not b!4572))

(assert (not b!4583))

(assert (not b!4605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


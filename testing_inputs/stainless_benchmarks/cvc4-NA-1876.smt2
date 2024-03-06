; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12580 () Bool)

(assert start!12580)

(declare-fun res!48731 () Bool)

(declare-fun e!50645 () Bool)

(assert (=> start!12580 (=> (not res!48731) (not e!50645))))

(declare-datatypes () ((List!793 (Cons!735 (head!1165 (_ BitVec 32)) (tail!1161 List!793)) (Nil!737))))

(declare-fun l1!485 () List!793)

(assert (=> start!12580 (= res!48731 (is-Cons!735 l1!485))))

(assert (=> start!12580 e!50645))

(assert (=> start!12580 true))

(declare-fun b!92543 () Bool)

(declare-fun res!48732 () Bool)

(assert (=> b!92543 (=> (not res!48732) (not e!50645))))

(declare-fun inductVal!1046 () List!793)

(declare-fun l2!478 () List!793)

(declare-fun concat!3 (List!793 List!793) List!793)

(assert (=> b!92543 (= res!48732 (= inductVal!1046 (concat!3 (tail!1161 l1!485) l2!478)))))

(declare-fun b!92544 () Bool)

(declare-fun res!48733 () Bool)

(assert (=> b!92544 (=> (not res!48733) (not e!50645))))

(declare-fun x$7!148 () List!793)

(declare-fun concat0!1 (List!793 List!793 List!793) List!793)

(assert (=> b!92544 (= res!48733 (= x$7!148 (concat0!1 l1!485 l2!478 Nil!737)))))

(declare-fun b!92545 () Bool)

(declare-fun content!31 (List!793) (Set (_ BitVec 32)))

(assert (=> b!92545 (= e!50645 (not (= (content!31 x$7!148) (union (content!31 l1!485) (content!31 l2!478)))))))

(assert (= (and start!12580 res!48731) b!92543))

(assert (= (and b!92543 res!48732) b!92544))

(assert (= (and b!92544 res!48733) b!92545))

(declare-fun m!88162 () Bool)

(assert (=> b!92543 m!88162))

(declare-fun m!88164 () Bool)

(assert (=> b!92544 m!88164))

(declare-fun m!88166 () Bool)

(assert (=> b!92545 m!88166))

(declare-fun m!88168 () Bool)

(assert (=> b!92545 m!88168))

(declare-fun m!88170 () Bool)

(assert (=> b!92545 m!88170))

(push 1)

(assert (not b!92544))

(assert (not b!92543))

(assert (not b!92545))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!20911 () Bool)

(declare-fun b!92570 () Bool)

(declare-fun e!50658 () List!793)

(assert (=> b!92570 (= e!50658 (concat0!1 (ite lt!20911 Nil!737 (tail!1161 l1!485)) (ite lt!20911 (tail!1161 l2!478) l2!478) (ite lt!20911 (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737))))))

(declare-fun b!92571 () Bool)

(declare-fun res!48750 () List!793)

(assert (=> b!92571 (= e!50658 res!48750)))

(assert (=> b!92571 true))

(declare-fun b!92572 () Bool)

(declare-fun e!50662 () List!793)

(declare-fun res!48751 () List!793)

(assert (=> b!92572 (= e!50662 res!48751)))

(assert (=> b!92572 true))

(assert (=> b!92572 true))

(declare-fun b!92573 () Bool)

(declare-fun e!50663 () List!793)

(declare-fun e!50660 () List!793)

(assert (=> b!92573 (= e!50663 e!50660)))

(declare-fun c!22546 () Bool)

(declare-fun lt!20914 () Bool)

(assert (=> b!92573 (= c!22546 (and lt!20914 (is-Nil!737 l2!478)))))

(declare-fun lt!20910 () List!793)

(assert (=> b!92573 (= lt!20910 e!50658)))

(declare-fun c!22545 () Bool)

(assert (=> b!92573 (= c!22545 (or lt!20911 (not lt!20914)))))

(assert (=> b!92573 (= lt!20911 (and lt!20914 (not (is-Nil!737 l2!478))))))

(assert (=> b!92573 (= lt!20914 (is-Nil!737 l1!485))))

(declare-fun b!92574 () Bool)

(declare-fun e!50659 () List!793)

(assert (=> b!92574 (= e!50663 e!50659)))

(declare-fun c!22547 () Bool)

(declare-fun lt!20912 () Bool)

(assert (=> b!92574 (= c!22547 (and lt!20912 (is-Nil!737 l2!478)))))

(assert (=> b!92574 (= lt!20912 (is-Nil!737 l1!485))))

(declare-fun b!92575 () Bool)

(assert (=> b!92575 (= e!50659 e!50662)))

(declare-fun c!22548 () Bool)

(assert (=> b!92575 (= c!22548 (or (and lt!20912 (not (is-Nil!737 l2!478))) (not lt!20912)))))

(declare-fun b!92576 () Bool)

(declare-fun lt!20909 () List!793)

(assert (=> b!92576 (= e!50662 lt!20909)))

(declare-fun b!92577 () Bool)

(declare-fun reverse!7 (List!793) List!793)

(assert (=> b!92577 (= e!50659 (reverse!7 Nil!737))))

(declare-fun b!92578 () Bool)

(assert (=> b!92578 (= e!50660 lt!20910)))

(declare-fun b!92579 () Bool)

(declare-fun e!50661 () List!793)

(declare-fun res!48749 () List!793)

(assert (=> b!92579 (= e!50661 res!48749)))

(assert (=> b!92579 true))

(declare-fun b!92580 () Bool)

(assert (=> b!92580 (= e!50660 (reverse!7 Nil!737))))

(declare-fun d!60636 () Bool)

(declare-fun lt!20913 () List!793)

(assert (=> d!60636 (= (content!31 lt!20913) (union (union (content!31 l1!485) (content!31 l2!478)) (content!31 Nil!737)))))

(assert (=> d!60636 (= lt!20913 e!50663)))

(declare-fun c!22549 () Bool)

(declare-fun lt!20915 () Bool)

(assert (=> d!60636 (= c!22549 lt!20915)))

(assert (=> d!60636 (= lt!20909 e!50661)))

(declare-fun c!22550 () Bool)

(assert (=> d!60636 (= c!22550 (or lt!20915 (let ((cond!14719 (is-Nil!737 l1!485))) (or (and cond!14719 (not (is-Nil!737 l2!478))) (not cond!14719)))))))

(assert (=> d!60636 (= lt!20915 (is-Cons!735 l1!485))))

(assert (=> d!60636 (= (concat0!1 l1!485 l2!478 Nil!737) lt!20913)))

(declare-fun b!92581 () Bool)

(assert (=> b!92581 (= e!50661 (concat0!1 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485))) (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478)) (ite lt!20915 Nil!737 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737)))))))

(assert (= (and d!60636 c!22550) b!92581))

(assert (= (and d!60636 (not c!22550)) b!92579))

(assert (= (and b!92573 c!22545) b!92570))

(assert (= (and b!92573 (not c!22545)) b!92571))

(assert (= (and b!92573 c!22546) b!92580))

(assert (= (and b!92573 (not c!22546)) b!92578))

(assert (= (and b!92575 c!22548) b!92576))

(assert (= (and b!92575 (not c!22548)) b!92572))

(assert (= (and b!92574 c!22547) b!92577))

(assert (= (and b!92574 (not c!22547)) b!92575))

(assert (= (and d!60636 c!22549) b!92573))

(assert (= (and d!60636 (not c!22549)) b!92574))

(declare-fun m!88172 () Bool)

(assert (=> b!92580 m!88172))

(declare-fun m!88174 () Bool)

(assert (=> b!92581 m!88174))

(declare-fun m!88176 () Bool)

(assert (=> d!60636 m!88176))

(assert (=> d!60636 m!88168))

(assert (=> d!60636 m!88170))

(declare-fun m!88178 () Bool)

(assert (=> d!60636 m!88178))

(assert (=> b!92577 m!88172))

(declare-fun m!88180 () Bool)

(assert (=> b!92570 m!88180))

(assert (=> b!92544 d!60636))

(declare-fun b!92586 () Bool)

(declare-fun e!50666 () List!793)

(assert (=> b!92586 (= e!50666 (concat0!1 (tail!1161 l1!485) l2!478 Nil!737))))

(declare-fun lt!20921 () List!793)

(assert (=> b!92586 (= lt!20921 (concat!3 (tail!1161 (tail!1161 l1!485)) l2!478))))

(declare-fun d!60638 () Bool)

(declare-fun lt!20920 () List!793)

(assert (=> d!60638 (= (content!31 lt!20920) (union (content!31 (tail!1161 l1!485)) (content!31 l2!478)))))

(assert (=> d!60638 (= lt!20920 e!50666)))

(declare-fun c!22553 () Bool)

(assert (=> d!60638 (= c!22553 (is-Cons!735 (tail!1161 l1!485)))))

(assert (=> d!60638 (= (concat!3 (tail!1161 l1!485) l2!478) lt!20920)))

(declare-fun b!92587 () Bool)

(assert (=> b!92587 (= e!50666 (concat0!1 (tail!1161 l1!485) l2!478 Nil!737))))

(assert (= (and d!60638 c!22553) b!92586))

(assert (= (and d!60638 (not c!22553)) b!92587))

(declare-fun m!88182 () Bool)

(assert (=> b!92586 m!88182))

(declare-fun m!88184 () Bool)

(assert (=> b!92586 m!88184))

(declare-fun m!88186 () Bool)

(assert (=> d!60638 m!88186))

(declare-fun m!88188 () Bool)

(assert (=> d!60638 m!88188))

(assert (=> d!60638 m!88170))

(assert (=> b!92587 m!88182))

(assert (=> b!92543 d!60638))

(declare-fun d!60640 () Bool)

(declare-fun c!22556 () Bool)

(assert (=> d!60640 (= c!22556 (is-Nil!737 x$7!148))))

(declare-fun e!50669 () (Set (_ BitVec 32)))

(assert (=> d!60640 (= (content!31 x$7!148) e!50669)))

(declare-fun b!92592 () Bool)

(assert (=> b!92592 (= e!50669 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92593 () Bool)

(assert (=> b!92593 (= e!50669 (union (insert (head!1165 x$7!148) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1161 x$7!148))))))

(assert (= (and d!60640 c!22556) b!92592))

(assert (= (and d!60640 (not c!22556)) b!92593))

(declare-fun m!88190 () Bool)

(assert (=> b!92593 m!88190))

(declare-fun m!88192 () Bool)

(assert (=> b!92593 m!88192))

(assert (=> b!92545 d!60640))

(declare-fun d!60642 () Bool)

(declare-fun c!22557 () Bool)

(assert (=> d!60642 (= c!22557 (is-Nil!737 l1!485))))

(declare-fun e!50670 () (Set (_ BitVec 32)))

(assert (=> d!60642 (= (content!31 l1!485) e!50670)))

(declare-fun b!92594 () Bool)

(assert (=> b!92594 (= e!50670 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92595 () Bool)

(assert (=> b!92595 (= e!50670 (union (insert (head!1165 l1!485) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1161 l1!485))))))

(assert (= (and d!60642 c!22557) b!92594))

(assert (= (and d!60642 (not c!22557)) b!92595))

(declare-fun m!88194 () Bool)

(assert (=> b!92595 m!88194))

(assert (=> b!92595 m!88188))

(assert (=> b!92545 d!60642))

(declare-fun d!60644 () Bool)

(declare-fun c!22558 () Bool)

(assert (=> d!60644 (= c!22558 (is-Nil!737 l2!478))))

(declare-fun e!50671 () (Set (_ BitVec 32)))

(assert (=> d!60644 (= (content!31 l2!478) e!50671)))

(declare-fun b!92596 () Bool)

(assert (=> b!92596 (= e!50671 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92597 () Bool)

(assert (=> b!92597 (= e!50671 (union (insert (head!1165 l2!478) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1161 l2!478))))))

(assert (= (and d!60644 c!22558) b!92596))

(assert (= (and d!60644 (not c!22558)) b!92597))

(declare-fun m!88196 () Bool)

(assert (=> b!92597 m!88196))

(declare-fun m!88198 () Bool)

(assert (=> b!92597 m!88198))

(assert (=> b!92545 d!60644))

(push 1)

(assert (not b!92570))

(assert (not b!92581))

(assert (not b!92595))

(assert (not b!92586))

(assert (not b!92587))

(assert (not d!60636))

(assert (not b!92597))

(assert (not b!92577))

(assert (not d!60638))

(assert (not b!92593))

(assert (not b!92580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60646 () Bool)

(declare-fun c!22559 () Bool)

(assert (=> d!60646 (= c!22559 (is-Nil!737 lt!20913))))

(declare-fun e!50672 () (Set (_ BitVec 32)))

(assert (=> d!60646 (= (content!31 lt!20913) e!50672)))

(declare-fun b!92598 () Bool)

(assert (=> b!92598 (= e!50672 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92599 () Bool)

(assert (=> b!92599 (= e!50672 (union (insert (head!1165 lt!20913) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1161 lt!20913))))))

(assert (= (and d!60646 c!22559) b!92598))

(assert (= (and d!60646 (not c!22559)) b!92599))

(declare-fun m!88200 () Bool)

(assert (=> b!92599 m!88200))

(declare-fun m!88202 () Bool)

(assert (=> b!92599 m!88202))

(assert (=> d!60636 d!60646))

(assert (=> d!60636 d!60642))

(assert (=> d!60636 d!60644))

(declare-fun d!60648 () Bool)

(assert (=> d!60648 (= (content!31 Nil!737) (as emptyset (Set (_ BitVec 32))))))

(assert (=> d!60636 d!60648))

(declare-fun d!60650 () Bool)

(declare-fun c!22560 () Bool)

(assert (=> d!60650 (= c!22560 (is-Nil!737 (tail!1161 l2!478)))))

(declare-fun e!50673 () (Set (_ BitVec 32)))

(assert (=> d!60650 (= (content!31 (tail!1161 l2!478)) e!50673)))

(declare-fun b!92600 () Bool)

(assert (=> b!92600 (= e!50673 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92601 () Bool)

(assert (=> b!92601 (= e!50673 (union (insert (head!1165 (tail!1161 l2!478)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1161 (tail!1161 l2!478)))))))

(assert (= (and d!60650 c!22560) b!92600))

(assert (= (and d!60650 (not c!22560)) b!92601))

(declare-fun m!88204 () Bool)

(assert (=> b!92601 m!88204))

(declare-fun m!88206 () Bool)

(assert (=> b!92601 m!88206))

(assert (=> b!92597 d!60650))

(declare-fun d!60652 () Bool)

(declare-fun c!22561 () Bool)

(assert (=> d!60652 (= c!22561 (is-Nil!737 (tail!1161 x$7!148)))))

(declare-fun e!50674 () (Set (_ BitVec 32)))

(assert (=> d!60652 (= (content!31 (tail!1161 x$7!148)) e!50674)))

(declare-fun b!92602 () Bool)

(assert (=> b!92602 (= e!50674 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92603 () Bool)

(assert (=> b!92603 (= e!50674 (union (insert (head!1165 (tail!1161 x$7!148)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1161 (tail!1161 x$7!148)))))))

(assert (= (and d!60652 c!22561) b!92602))

(assert (= (and d!60652 (not c!22561)) b!92603))

(declare-fun m!88208 () Bool)

(assert (=> b!92603 m!88208))

(declare-fun m!88210 () Bool)

(assert (=> b!92603 m!88210))

(assert (=> b!92593 d!60652))

(declare-fun e!50675 () List!793)

(declare-fun lt!20924 () Bool)

(declare-fun b!92604 () Bool)

(assert (=> b!92604 (= e!50675 (concat0!1 (ite lt!20924 Nil!737 (tail!1161 (tail!1161 l1!485))) (ite lt!20924 (tail!1161 l2!478) l2!478) (ite lt!20924 (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 (tail!1161 l1!485)) Nil!737))))))

(declare-fun b!92605 () Bool)

(declare-fun res!48753 () List!793)

(assert (=> b!92605 (= e!50675 res!48753)))

(assert (=> b!92605 true))

(declare-fun b!92606 () Bool)

(declare-fun e!50679 () List!793)

(declare-fun res!48754 () List!793)

(assert (=> b!92606 (= e!50679 res!48754)))

(assert (=> b!92606 true))

(assert (=> b!92606 true))

(declare-fun b!92607 () Bool)

(declare-fun e!50680 () List!793)

(declare-fun e!50677 () List!793)

(assert (=> b!92607 (= e!50680 e!50677)))

(declare-fun c!22563 () Bool)

(declare-fun lt!20927 () Bool)

(assert (=> b!92607 (= c!22563 (and lt!20927 (is-Nil!737 l2!478)))))

(declare-fun lt!20923 () List!793)

(assert (=> b!92607 (= lt!20923 e!50675)))

(declare-fun c!22562 () Bool)

(assert (=> b!92607 (= c!22562 (or lt!20924 (not lt!20927)))))

(assert (=> b!92607 (= lt!20924 (and lt!20927 (not (is-Nil!737 l2!478))))))

(assert (=> b!92607 (= lt!20927 (is-Nil!737 (tail!1161 l1!485)))))

(declare-fun b!92608 () Bool)

(declare-fun e!50676 () List!793)

(assert (=> b!92608 (= e!50680 e!50676)))

(declare-fun c!22564 () Bool)

(declare-fun lt!20925 () Bool)

(assert (=> b!92608 (= c!22564 (and lt!20925 (is-Nil!737 l2!478)))))

(assert (=> b!92608 (= lt!20925 (is-Nil!737 (tail!1161 l1!485)))))

(declare-fun b!92609 () Bool)

(assert (=> b!92609 (= e!50676 e!50679)))

(declare-fun c!22565 () Bool)

(assert (=> b!92609 (= c!22565 (or (and lt!20925 (not (is-Nil!737 l2!478))) (not lt!20925)))))

(declare-fun b!92610 () Bool)

(declare-fun lt!20922 () List!793)

(assert (=> b!92610 (= e!50679 lt!20922)))

(declare-fun b!92611 () Bool)

(assert (=> b!92611 (= e!50676 (reverse!7 Nil!737))))

(declare-fun b!92612 () Bool)

(assert (=> b!92612 (= e!50677 lt!20923)))

(declare-fun b!92613 () Bool)

(declare-fun e!50678 () List!793)

(declare-fun res!48752 () List!793)

(assert (=> b!92613 (= e!50678 res!48752)))

(assert (=> b!92613 true))

(declare-fun b!92614 () Bool)

(assert (=> b!92614 (= e!50677 (reverse!7 Nil!737))))

(declare-fun d!60654 () Bool)

(declare-fun lt!20926 () List!793)

(assert (=> d!60654 (= (content!31 lt!20926) (union (union (content!31 (tail!1161 l1!485)) (content!31 l2!478)) (content!31 Nil!737)))))

(assert (=> d!60654 (= lt!20926 e!50680)))

(declare-fun c!22566 () Bool)

(declare-fun lt!20928 () Bool)

(assert (=> d!60654 (= c!22566 lt!20928)))

(assert (=> d!60654 (= lt!20922 e!50678)))

(declare-fun c!22567 () Bool)

(assert (=> d!60654 (= c!22567 (or lt!20928 (let ((cond!14719 (is-Nil!737 (tail!1161 l1!485)))) (or (and cond!14719 (not (is-Nil!737 l2!478))) (not cond!14719)))))))

(assert (=> d!60654 (= lt!20928 (is-Cons!735 (tail!1161 l1!485)))))

(assert (=> d!60654 (= (concat0!1 (tail!1161 l1!485) l2!478 Nil!737) lt!20926)))

(declare-fun b!92615 () Bool)

(assert (=> b!92615 (= e!50678 (concat0!1 (ite lt!20928 (tail!1161 (tail!1161 l1!485)) (ite (and (is-Nil!737 (tail!1161 l1!485)) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 (tail!1161 l1!485)))) (ite lt!20928 l2!478 (ite (and (is-Nil!737 (tail!1161 l1!485)) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478)) (ite lt!20928 Nil!737 (ite (and (is-Nil!737 (tail!1161 l1!485)) (not (is-Nil!737 l2!478))) (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 (tail!1161 l1!485)) Nil!737)))))))

(assert (= (and d!60654 c!22567) b!92615))

(assert (= (and d!60654 (not c!22567)) b!92613))

(assert (= (and b!92607 c!22562) b!92604))

(assert (= (and b!92607 (not c!22562)) b!92605))

(assert (= (and b!92607 c!22563) b!92614))

(assert (= (and b!92607 (not c!22563)) b!92612))

(assert (= (and b!92609 c!22565) b!92610))

(assert (= (and b!92609 (not c!22565)) b!92606))

(assert (= (and b!92608 c!22564) b!92611))

(assert (= (and b!92608 (not c!22564)) b!92609))

(assert (= (and d!60654 c!22566) b!92607))

(assert (= (and d!60654 (not c!22566)) b!92608))

(assert (=> b!92614 m!88172))

(declare-fun m!88212 () Bool)

(assert (=> b!92615 m!88212))

(declare-fun m!88214 () Bool)

(assert (=> d!60654 m!88214))

(assert (=> d!60654 m!88188))

(assert (=> d!60654 m!88170))

(assert (=> d!60654 m!88178))

(assert (=> b!92611 m!88172))

(declare-fun m!88216 () Bool)

(assert (=> b!92604 m!88216))

(assert (=> b!92586 d!60654))

(declare-fun b!92616 () Bool)

(declare-fun e!50681 () List!793)

(assert (=> b!92616 (= e!50681 (concat0!1 (tail!1161 (tail!1161 l1!485)) l2!478 Nil!737))))

(declare-fun lt!20930 () List!793)

(assert (=> b!92616 (= lt!20930 (concat!3 (tail!1161 (tail!1161 (tail!1161 l1!485))) l2!478))))

(declare-fun d!60656 () Bool)

(declare-fun lt!20929 () List!793)

(assert (=> d!60656 (= (content!31 lt!20929) (union (content!31 (tail!1161 (tail!1161 l1!485))) (content!31 l2!478)))))

(assert (=> d!60656 (= lt!20929 e!50681)))

(declare-fun c!22568 () Bool)

(assert (=> d!60656 (= c!22568 (is-Cons!735 (tail!1161 (tail!1161 l1!485))))))

(assert (=> d!60656 (= (concat!3 (tail!1161 (tail!1161 l1!485)) l2!478) lt!20929)))

(declare-fun b!92617 () Bool)

(assert (=> b!92617 (= e!50681 (concat0!1 (tail!1161 (tail!1161 l1!485)) l2!478 Nil!737))))

(assert (= (and d!60656 c!22568) b!92616))

(assert (= (and d!60656 (not c!22568)) b!92617))

(declare-fun m!88218 () Bool)

(assert (=> b!92616 m!88218))

(declare-fun m!88220 () Bool)

(assert (=> b!92616 m!88220))

(declare-fun m!88222 () Bool)

(assert (=> d!60656 m!88222))

(declare-fun m!88224 () Bool)

(assert (=> d!60656 m!88224))

(assert (=> d!60656 m!88170))

(assert (=> b!92617 m!88218))

(assert (=> b!92586 d!60656))

(declare-fun d!60658 () Bool)

(declare-fun lt!20933 () List!793)

(assert (=> d!60658 (= (content!31 lt!20933) (content!31 Nil!737))))

(declare-fun reverse0!3 (List!793 List!793) List!793)

(assert (=> d!60658 (= lt!20933 (reverse0!3 Nil!737 Nil!737))))

(assert (=> d!60658 (= (reverse!7 Nil!737) lt!20933)))

(declare-fun bs!41971 () Bool)

(assert (= bs!41971 d!60658))

(declare-fun m!88226 () Bool)

(assert (=> bs!41971 m!88226))

(assert (=> bs!41971 m!88178))

(declare-fun m!88228 () Bool)

(assert (=> bs!41971 m!88228))

(assert (=> b!92580 d!60658))

(declare-fun d!60660 () Bool)

(declare-fun c!22569 () Bool)

(assert (=> d!60660 (= c!22569 (is-Nil!737 (tail!1161 l1!485)))))

(declare-fun e!50682 () (Set (_ BitVec 32)))

(assert (=> d!60660 (= (content!31 (tail!1161 l1!485)) e!50682)))

(declare-fun b!92618 () Bool)

(assert (=> b!92618 (= e!50682 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92619 () Bool)

(assert (=> b!92619 (= e!50682 (union (insert (head!1165 (tail!1161 l1!485)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1161 (tail!1161 l1!485)))))))

(assert (= (and d!60660 c!22569) b!92618))

(assert (= (and d!60660 (not c!22569)) b!92619))

(declare-fun m!88230 () Bool)

(assert (=> b!92619 m!88230))

(assert (=> b!92619 m!88224))

(assert (=> b!92595 d!60660))

(assert (=> b!92577 d!60658))

(declare-fun e!50683 () List!793)

(declare-fun lt!20936 () Bool)

(declare-fun b!92620 () Bool)

(assert (=> b!92620 (= e!50683 (concat0!1 (ite lt!20936 Nil!737 (tail!1161 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485))))) (ite lt!20936 (tail!1161 (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478))) (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478))) (ite lt!20936 (Cons!735 (head!1165 (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478))) (ite lt!20915 Nil!737 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737)))) (Cons!735 (head!1165 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485)))) (ite lt!20915 Nil!737 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737)))))))))

(declare-fun b!92621 () Bool)

(declare-fun res!48756 () List!793)

(assert (=> b!92621 (= e!50683 res!48756)))

(assert (=> b!92621 true))

(declare-fun b!92622 () Bool)

(declare-fun e!50687 () List!793)

(declare-fun res!48757 () List!793)

(assert (=> b!92622 (= e!50687 res!48757)))

(assert (=> b!92622 true))

(assert (=> b!92622 true))

(declare-fun b!92623 () Bool)

(declare-fun e!50688 () List!793)

(declare-fun e!50685 () List!793)

(assert (=> b!92623 (= e!50688 e!50685)))

(declare-fun lt!20939 () Bool)

(declare-fun c!22571 () Bool)

(assert (=> b!92623 (= c!22571 (and lt!20939 (is-Nil!737 (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478)))))))

(declare-fun lt!20935 () List!793)

(assert (=> b!92623 (= lt!20935 e!50683)))

(declare-fun c!22570 () Bool)

(assert (=> b!92623 (= c!22570 (or lt!20936 (not lt!20939)))))

(assert (=> b!92623 (= lt!20936 (and lt!20939 (not (is-Nil!737 (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478))))))))

(assert (=> b!92623 (= lt!20939 (is-Nil!737 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485)))))))

(declare-fun b!92624 () Bool)

(declare-fun e!50684 () List!793)

(assert (=> b!92624 (= e!50688 e!50684)))

(declare-fun lt!20937 () Bool)

(declare-fun c!22572 () Bool)

(assert (=> b!92624 (= c!22572 (and lt!20937 (is-Nil!737 (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478)))))))

(assert (=> b!92624 (= lt!20937 (is-Nil!737 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485)))))))

(declare-fun b!92625 () Bool)

(assert (=> b!92625 (= e!50684 e!50687)))

(declare-fun c!22573 () Bool)

(assert (=> b!92625 (= c!22573 (or (and lt!20937 (not (is-Nil!737 (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478))))) (not lt!20937)))))

(declare-fun b!92626 () Bool)

(declare-fun lt!20934 () List!793)

(assert (=> b!92626 (= e!50687 lt!20934)))

(declare-fun b!92627 () Bool)

(assert (=> b!92627 (= e!50684 (reverse!7 (ite lt!20915 Nil!737 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737)))))))

(declare-fun b!92628 () Bool)

(assert (=> b!92628 (= e!50685 lt!20935)))

(declare-fun b!92629 () Bool)

(declare-fun e!50686 () List!793)

(declare-fun res!48755 () List!793)

(assert (=> b!92629 (= e!50686 res!48755)))

(assert (=> b!92629 true))

(declare-fun b!92630 () Bool)

(assert (=> b!92630 (= e!50685 (reverse!7 (ite lt!20915 Nil!737 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737)))))))

(declare-fun lt!20938 () List!793)

(declare-fun d!60662 () Bool)

(assert (=> d!60662 (= (content!31 lt!20938) (union (union (content!31 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485)))) (content!31 (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478)))) (content!31 (ite lt!20915 Nil!737 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737))))))))

(assert (=> d!60662 (= lt!20938 e!50688)))

(declare-fun c!22574 () Bool)

(declare-fun lt!20940 () Bool)

(assert (=> d!60662 (= c!22574 lt!20940)))

(assert (=> d!60662 (= lt!20934 e!50686)))

(declare-fun c!22575 () Bool)

(assert (=> d!60662 (= c!22575 (or lt!20940 (let ((cond!14719 (is-Nil!737 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485)))))) (or (and cond!14719 (not (is-Nil!737 (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478))))) (not cond!14719)))))))

(assert (=> d!60662 (= lt!20940 (is-Cons!735 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485)))))))

(assert (=> d!60662 (= (concat0!1 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485))) (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478)) (ite lt!20915 Nil!737 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737)))) lt!20938)))

(declare-fun b!92631 () Bool)

(assert (=> b!92631 (= e!50686 (concat0!1 (ite lt!20940 (tail!1161 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485)))) (ite (and (is-Nil!737 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485)))) (not (is-Nil!737 (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478))))) Nil!737 (tail!1161 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485)))))) (ite lt!20940 (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478)) (ite (and (is-Nil!737 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485)))) (not (is-Nil!737 (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478))))) (tail!1161 (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478))) (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478)))) (ite lt!20940 (ite lt!20915 Nil!737 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737))) (ite (and (is-Nil!737 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485)))) (not (is-Nil!737 (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478))))) (Cons!735 (head!1165 (ite lt!20915 l2!478 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (tail!1161 l2!478) l2!478))) (ite lt!20915 Nil!737 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737)))) (Cons!735 (head!1165 (ite lt!20915 (tail!1161 l1!485) (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) Nil!737 (tail!1161 l1!485)))) (ite lt!20915 Nil!737 (ite (and (is-Nil!737 l1!485) (not (is-Nil!737 l2!478))) (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737))))))))))

(assert (= (and d!60662 c!22575) b!92631))

(assert (= (and d!60662 (not c!22575)) b!92629))

(assert (= (and b!92623 c!22570) b!92620))

(assert (= (and b!92623 (not c!22570)) b!92621))

(assert (= (and b!92623 c!22571) b!92630))

(assert (= (and b!92623 (not c!22571)) b!92628))

(assert (= (and b!92625 c!22573) b!92626))

(assert (= (and b!92625 (not c!22573)) b!92622))

(assert (= (and b!92624 c!22572) b!92627))

(assert (= (and b!92624 (not c!22572)) b!92625))

(assert (= (and d!60662 c!22574) b!92623))

(assert (= (and d!60662 (not c!22574)) b!92624))

(declare-fun m!88232 () Bool)

(assert (=> b!92630 m!88232))

(declare-fun m!88234 () Bool)

(assert (=> b!92631 m!88234))

(declare-fun m!88236 () Bool)

(assert (=> d!60662 m!88236))

(declare-fun m!88238 () Bool)

(assert (=> d!60662 m!88238))

(declare-fun m!88240 () Bool)

(assert (=> d!60662 m!88240))

(declare-fun m!88242 () Bool)

(assert (=> d!60662 m!88242))

(assert (=> b!92627 m!88232))

(declare-fun m!88244 () Bool)

(assert (=> b!92620 m!88244))

(assert (=> b!92581 d!60662))

(declare-fun lt!20943 () Bool)

(declare-fun e!50689 () List!793)

(declare-fun b!92632 () Bool)

(assert (=> b!92632 (= e!50689 (concat0!1 (ite lt!20943 Nil!737 (tail!1161 (ite lt!20911 Nil!737 (tail!1161 l1!485)))) (ite lt!20943 (tail!1161 (ite lt!20911 (tail!1161 l2!478) l2!478)) (ite lt!20911 (tail!1161 l2!478) l2!478)) (ite lt!20943 (Cons!735 (head!1165 (ite lt!20911 (tail!1161 l2!478) l2!478)) (ite lt!20911 (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737))) (Cons!735 (head!1165 (ite lt!20911 Nil!737 (tail!1161 l1!485))) (ite lt!20911 (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737))))))))

(declare-fun b!92633 () Bool)

(declare-fun res!48759 () List!793)

(assert (=> b!92633 (= e!50689 res!48759)))

(assert (=> b!92633 true))

(declare-fun b!92634 () Bool)

(declare-fun e!50693 () List!793)

(declare-fun res!48760 () List!793)

(assert (=> b!92634 (= e!50693 res!48760)))

(assert (=> b!92634 true))

(assert (=> b!92634 true))

(declare-fun b!92635 () Bool)

(declare-fun e!50694 () List!793)

(declare-fun e!50691 () List!793)

(assert (=> b!92635 (= e!50694 e!50691)))

(declare-fun c!22577 () Bool)

(declare-fun lt!20946 () Bool)

(assert (=> b!92635 (= c!22577 (and lt!20946 (is-Nil!737 (ite lt!20911 (tail!1161 l2!478) l2!478))))))

(declare-fun lt!20942 () List!793)

(assert (=> b!92635 (= lt!20942 e!50689)))

(declare-fun c!22576 () Bool)

(assert (=> b!92635 (= c!22576 (or lt!20943 (not lt!20946)))))

(assert (=> b!92635 (= lt!20943 (and lt!20946 (not (is-Nil!737 (ite lt!20911 (tail!1161 l2!478) l2!478)))))))

(assert (=> b!92635 (= lt!20946 (is-Nil!737 (ite lt!20911 Nil!737 (tail!1161 l1!485))))))

(declare-fun b!92636 () Bool)

(declare-fun e!50690 () List!793)

(assert (=> b!92636 (= e!50694 e!50690)))

(declare-fun lt!20944 () Bool)

(declare-fun c!22578 () Bool)

(assert (=> b!92636 (= c!22578 (and lt!20944 (is-Nil!737 (ite lt!20911 (tail!1161 l2!478) l2!478))))))

(assert (=> b!92636 (= lt!20944 (is-Nil!737 (ite lt!20911 Nil!737 (tail!1161 l1!485))))))

(declare-fun b!92637 () Bool)

(assert (=> b!92637 (= e!50690 e!50693)))

(declare-fun c!22579 () Bool)

(assert (=> b!92637 (= c!22579 (or (and lt!20944 (not (is-Nil!737 (ite lt!20911 (tail!1161 l2!478) l2!478)))) (not lt!20944)))))

(declare-fun b!92638 () Bool)

(declare-fun lt!20941 () List!793)

(assert (=> b!92638 (= e!50693 lt!20941)))

(declare-fun b!92639 () Bool)

(assert (=> b!92639 (= e!50690 (reverse!7 (ite lt!20911 (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737))))))

(declare-fun b!92640 () Bool)

(assert (=> b!92640 (= e!50691 lt!20942)))

(declare-fun b!92641 () Bool)

(declare-fun e!50692 () List!793)

(declare-fun res!48758 () List!793)

(assert (=> b!92641 (= e!50692 res!48758)))

(assert (=> b!92641 true))

(declare-fun b!92642 () Bool)

(assert (=> b!92642 (= e!50691 (reverse!7 (ite lt!20911 (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737))))))

(declare-fun d!60664 () Bool)

(declare-fun lt!20945 () List!793)

(assert (=> d!60664 (= (content!31 lt!20945) (union (union (content!31 (ite lt!20911 Nil!737 (tail!1161 l1!485))) (content!31 (ite lt!20911 (tail!1161 l2!478) l2!478))) (content!31 (ite lt!20911 (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737)))))))

(assert (=> d!60664 (= lt!20945 e!50694)))

(declare-fun c!22580 () Bool)

(declare-fun lt!20947 () Bool)

(assert (=> d!60664 (= c!22580 lt!20947)))

(assert (=> d!60664 (= lt!20941 e!50692)))

(declare-fun c!22581 () Bool)

(assert (=> d!60664 (= c!22581 (or lt!20947 (let ((cond!14719 (is-Nil!737 (ite lt!20911 Nil!737 (tail!1161 l1!485))))) (or (and cond!14719 (not (is-Nil!737 (ite lt!20911 (tail!1161 l2!478) l2!478)))) (not cond!14719)))))))

(assert (=> d!60664 (= lt!20947 (is-Cons!735 (ite lt!20911 Nil!737 (tail!1161 l1!485))))))

(assert (=> d!60664 (= (concat0!1 (ite lt!20911 Nil!737 (tail!1161 l1!485)) (ite lt!20911 (tail!1161 l2!478) l2!478) (ite lt!20911 (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737))) lt!20945)))

(declare-fun b!92643 () Bool)

(assert (=> b!92643 (= e!50692 (concat0!1 (ite lt!20947 (tail!1161 (ite lt!20911 Nil!737 (tail!1161 l1!485))) (ite (and (is-Nil!737 (ite lt!20911 Nil!737 (tail!1161 l1!485))) (not (is-Nil!737 (ite lt!20911 (tail!1161 l2!478) l2!478)))) Nil!737 (tail!1161 (ite lt!20911 Nil!737 (tail!1161 l1!485))))) (ite lt!20947 (ite lt!20911 (tail!1161 l2!478) l2!478) (ite (and (is-Nil!737 (ite lt!20911 Nil!737 (tail!1161 l1!485))) (not (is-Nil!737 (ite lt!20911 (tail!1161 l2!478) l2!478)))) (tail!1161 (ite lt!20911 (tail!1161 l2!478) l2!478)) (ite lt!20911 (tail!1161 l2!478) l2!478))) (ite lt!20947 (ite lt!20911 (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737)) (ite (and (is-Nil!737 (ite lt!20911 Nil!737 (tail!1161 l1!485))) (not (is-Nil!737 (ite lt!20911 (tail!1161 l2!478) l2!478)))) (Cons!735 (head!1165 (ite lt!20911 (tail!1161 l2!478) l2!478)) (ite lt!20911 (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737))) (Cons!735 (head!1165 (ite lt!20911 Nil!737 (tail!1161 l1!485))) (ite lt!20911 (Cons!735 (head!1165 l2!478) Nil!737) (Cons!735 (head!1165 l1!485) Nil!737)))))))))

(assert (= (and d!60664 c!22581) b!92643))

(assert (= (and d!60664 (not c!22581)) b!92641))

(assert (= (and b!92635 c!22576) b!92632))

(assert (= (and b!92635 (not c!22576)) b!92633))

(assert (= (and b!92635 c!22577) b!92642))

(assert (= (and b!92635 (not c!22577)) b!92640))

(assert (= (and b!92637 c!22579) b!92638))

(assert (= (and b!92637 (not c!22579)) b!92634))

(assert (= (and b!92636 c!22578) b!92639))

(assert (= (and b!92636 (not c!22578)) b!92637))

(assert (= (and d!60664 c!22580) b!92635))

(assert (= (and d!60664 (not c!22580)) b!92636))

(declare-fun m!88246 () Bool)

(assert (=> b!92642 m!88246))

(declare-fun m!88248 () Bool)

(assert (=> b!92643 m!88248))

(declare-fun m!88250 () Bool)

(assert (=> d!60664 m!88250))

(declare-fun m!88252 () Bool)

(assert (=> d!60664 m!88252))

(declare-fun m!88254 () Bool)

(assert (=> d!60664 m!88254))

(declare-fun m!88256 () Bool)

(assert (=> d!60664 m!88256))

(assert (=> b!92639 m!88246))

(declare-fun m!88258 () Bool)

(assert (=> b!92632 m!88258))

(assert (=> b!92570 d!60664))

(declare-fun d!60666 () Bool)

(declare-fun c!22582 () Bool)

(assert (=> d!60666 (= c!22582 (is-Nil!737 lt!20920))))

(declare-fun e!50695 () (Set (_ BitVec 32)))

(assert (=> d!60666 (= (content!31 lt!20920) e!50695)))

(declare-fun b!92644 () Bool)

(assert (=> b!92644 (= e!50695 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92645 () Bool)

(assert (=> b!92645 (= e!50695 (union (insert (head!1165 lt!20920) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1161 lt!20920))))))

(assert (= (and d!60666 c!22582) b!92644))

(assert (= (and d!60666 (not c!22582)) b!92645))

(declare-fun m!88260 () Bool)

(assert (=> b!92645 m!88260))

(declare-fun m!88262 () Bool)

(assert (=> b!92645 m!88262))

(assert (=> d!60638 d!60666))

(assert (=> d!60638 d!60660))

(assert (=> d!60638 d!60644))

(assert (=> b!92587 d!60654))

(push 1)

(assert (not b!92632))

(assert (not b!92620))

(assert (not b!92642))

(assert (not b!92630))

(assert (not b!92611))

(assert (not d!60654))

(assert (not b!92601))

(assert (not d!60662))

(assert (not b!92631))

(assert (not b!92617))

(assert (not b!92627))

(assert (not b!92616))

(assert (not b!92615))

(assert (not b!92639))

(assert (not b!92599))

(assert (not b!92603))

(assert (not d!60664))

(assert (not b!92604))

(assert (not d!60658))

(assert (not b!92614))

(assert (not b!92645))

(assert (not b!92643))

(assert (not d!60656))

(assert (not b!92619))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


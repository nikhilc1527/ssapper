; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12590 () Bool)

(assert start!12590)

(declare-fun res!48765 () Bool)

(declare-fun e!50698 () Bool)

(assert (=> start!12590 (=> (not res!48765) (not e!50698))))

(declare-datatypes () ((List!794 (Cons!736 (head!1166 (_ BitVec 32)) (tail!1162 List!794)) (Nil!738))))

(declare-fun l1!485 () List!794)

(assert (=> start!12590 (= res!48765 (not (is-Cons!736 l1!485)))))

(assert (=> start!12590 e!50698))

(assert (=> start!12590 true))

(declare-fun b!92650 () Bool)

(declare-fun res!48766 () Bool)

(assert (=> b!92650 (=> (not res!48766) (not e!50698))))

(declare-fun l2!478 () List!794)

(declare-fun x$7!149 () List!794)

(declare-fun concat0!1 (List!794 List!794 List!794) List!794)

(assert (=> b!92650 (= res!48766 (= x$7!149 (concat0!1 l1!485 l2!478 Nil!738)))))

(declare-fun b!92651 () Bool)

(declare-fun content!31 (List!794) (Set (_ BitVec 32)))

(assert (=> b!92651 (= e!50698 (not (= (content!31 x$7!149) (union (content!31 l1!485) (content!31 l2!478)))))))

(assert (= (and start!12590 res!48765) b!92650))

(assert (= (and b!92650 res!48766) b!92651))

(declare-fun m!88264 () Bool)

(assert (=> b!92650 m!88264))

(declare-fun m!88266 () Bool)

(assert (=> b!92651 m!88266))

(declare-fun m!88268 () Bool)

(assert (=> b!92651 m!88268))

(declare-fun m!88270 () Bool)

(assert (=> b!92651 m!88270))

(push 1)

(assert (not b!92651))

(assert (not b!92650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60668 () Bool)

(declare-fun c!22585 () Bool)

(assert (=> d!60668 (= c!22585 (is-Nil!738 x$7!149))))

(declare-fun e!50701 () (Set (_ BitVec 32)))

(assert (=> d!60668 (= (content!31 x$7!149) e!50701)))

(declare-fun b!92656 () Bool)

(assert (=> b!92656 (= e!50701 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92657 () Bool)

(assert (=> b!92657 (= e!50701 (union (insert (head!1166 x$7!149) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1162 x$7!149))))))

(assert (= (and d!60668 c!22585) b!92656))

(assert (= (and d!60668 (not c!22585)) b!92657))

(declare-fun m!88272 () Bool)

(assert (=> b!92657 m!88272))

(declare-fun m!88274 () Bool)

(assert (=> b!92657 m!88274))

(assert (=> b!92651 d!60668))

(declare-fun d!60670 () Bool)

(declare-fun c!22586 () Bool)

(assert (=> d!60670 (= c!22586 (is-Nil!738 l1!485))))

(declare-fun e!50702 () (Set (_ BitVec 32)))

(assert (=> d!60670 (= (content!31 l1!485) e!50702)))

(declare-fun b!92658 () Bool)

(assert (=> b!92658 (= e!50702 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92659 () Bool)

(assert (=> b!92659 (= e!50702 (union (insert (head!1166 l1!485) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1162 l1!485))))))

(assert (= (and d!60670 c!22586) b!92658))

(assert (= (and d!60670 (not c!22586)) b!92659))

(declare-fun m!88276 () Bool)

(assert (=> b!92659 m!88276))

(declare-fun m!88278 () Bool)

(assert (=> b!92659 m!88278))

(assert (=> b!92651 d!60670))

(declare-fun d!60672 () Bool)

(declare-fun c!22587 () Bool)

(assert (=> d!60672 (= c!22587 (is-Nil!738 l2!478))))

(declare-fun e!50703 () (Set (_ BitVec 32)))

(assert (=> d!60672 (= (content!31 l2!478) e!50703)))

(declare-fun b!92660 () Bool)

(assert (=> b!92660 (= e!50703 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92661 () Bool)

(assert (=> b!92661 (= e!50703 (union (insert (head!1166 l2!478) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1162 l2!478))))))

(assert (= (and d!60672 c!22587) b!92660))

(assert (= (and d!60672 (not c!22587)) b!92661))

(declare-fun m!88280 () Bool)

(assert (=> b!92661 m!88280))

(declare-fun m!88282 () Bool)

(assert (=> b!92661 m!88282))

(assert (=> b!92651 d!60672))

(declare-fun e!50717 () List!794)

(declare-fun lt!20968 () Bool)

(declare-fun b!92686 () Bool)

(assert (=> b!92686 (= e!50717 (concat0!1 (ite lt!20968 Nil!738 (tail!1162 l1!485)) (ite lt!20968 (tail!1162 l2!478) l2!478) (ite lt!20968 (Cons!736 (head!1166 l2!478) Nil!738) (Cons!736 (head!1166 l1!485) Nil!738))))))

(declare-fun d!60674 () Bool)

(declare-fun lt!20964 () List!794)

(assert (=> d!60674 (= (content!31 lt!20964) (union (union (content!31 l1!485) (content!31 l2!478)) (content!31 Nil!738)))))

(declare-fun e!50719 () List!794)

(assert (=> d!60674 (= lt!20964 e!50719)))

(declare-fun c!22604 () Bool)

(declare-fun lt!20963 () Bool)

(assert (=> d!60674 (= c!22604 lt!20963)))

(declare-fun lt!20966 () List!794)

(declare-fun e!50721 () List!794)

(assert (=> d!60674 (= lt!20966 e!50721)))

(declare-fun c!22601 () Bool)

(assert (=> d!60674 (= c!22601 (or lt!20963 (let ((cond!14748 (is-Nil!738 l1!485))) (or (and cond!14748 (not (is-Nil!738 l2!478))) (not cond!14748)))))))

(assert (=> d!60674 (= lt!20963 (is-Cons!736 l1!485))))

(assert (=> d!60674 (= (concat0!1 l1!485 l2!478 Nil!738) lt!20964)))

(declare-fun b!92687 () Bool)

(declare-fun e!50716 () List!794)

(declare-fun lt!20965 () List!794)

(assert (=> b!92687 (= e!50716 lt!20965)))

(declare-fun b!92688 () Bool)

(declare-fun e!50718 () List!794)

(assert (=> b!92688 (= e!50719 e!50718)))

(declare-fun c!22605 () Bool)

(declare-fun lt!20962 () Bool)

(assert (=> b!92688 (= c!22605 (and lt!20962 (is-Nil!738 l2!478)))))

(assert (=> b!92688 (= lt!20962 (is-Nil!738 l1!485))))

(declare-fun b!92689 () Bool)

(declare-fun reverse!7 (List!794) List!794)

(assert (=> b!92689 (= e!50718 (reverse!7 Nil!738))))

(declare-fun b!92690 () Bool)

(declare-fun e!50720 () List!794)

(declare-fun res!48782 () List!794)

(assert (=> b!92690 (= e!50720 res!48782)))

(assert (=> b!92690 true))

(assert (=> b!92690 true))

(declare-fun b!92691 () Bool)

(assert (=> b!92691 (= e!50716 (reverse!7 Nil!738))))

(declare-fun b!92692 () Bool)

(assert (=> b!92692 (= e!50719 e!50716)))

(declare-fun c!22600 () Bool)

(declare-fun lt!20967 () Bool)

(assert (=> b!92692 (= c!22600 (and lt!20967 (is-Nil!738 l2!478)))))

(assert (=> b!92692 (= lt!20965 e!50717)))

(declare-fun c!22602 () Bool)

(assert (=> b!92692 (= c!22602 (or lt!20968 (not lt!20967)))))

(assert (=> b!92692 (= lt!20968 (and lt!20967 (not (is-Nil!738 l2!478))))))

(assert (=> b!92692 (= lt!20967 (is-Nil!738 l1!485))))

(declare-fun b!92693 () Bool)

(assert (=> b!92693 (= e!50721 (concat0!1 (ite lt!20963 (tail!1162 l1!485) (ite (and (is-Nil!738 l1!485) (not (is-Nil!738 l2!478))) Nil!738 (tail!1162 l1!485))) (ite lt!20963 l2!478 (ite (and (is-Nil!738 l1!485) (not (is-Nil!738 l2!478))) (tail!1162 l2!478) l2!478)) (ite lt!20963 Nil!738 (ite (and (is-Nil!738 l1!485) (not (is-Nil!738 l2!478))) (Cons!736 (head!1166 l2!478) Nil!738) (Cons!736 (head!1166 l1!485) Nil!738)))))))

(declare-fun b!92694 () Bool)

(assert (=> b!92694 (= e!50718 e!50720)))

(declare-fun c!22603 () Bool)

(assert (=> b!92694 (= c!22603 (or (and lt!20962 (not (is-Nil!738 l2!478))) (not lt!20962)))))

(declare-fun b!92695 () Bool)

(declare-fun res!48783 () List!794)

(assert (=> b!92695 (= e!50721 res!48783)))

(assert (=> b!92695 true))

(declare-fun b!92696 () Bool)

(declare-fun res!48784 () List!794)

(assert (=> b!92696 (= e!50717 res!48784)))

(assert (=> b!92696 true))

(declare-fun b!92697 () Bool)

(assert (=> b!92697 (= e!50720 lt!20966)))

(assert (= (and d!60674 c!22601) b!92693))

(assert (= (and d!60674 (not c!22601)) b!92695))

(assert (= (and b!92692 c!22602) b!92686))

(assert (= (and b!92692 (not c!22602)) b!92696))

(assert (= (and b!92692 c!22600) b!92691))

(assert (= (and b!92692 (not c!22600)) b!92687))

(assert (= (and b!92694 c!22603) b!92697))

(assert (= (and b!92694 (not c!22603)) b!92690))

(assert (= (and b!92688 c!22605) b!92689))

(assert (= (and b!92688 (not c!22605)) b!92694))

(assert (= (and d!60674 c!22604) b!92692))

(assert (= (and d!60674 (not c!22604)) b!92688))

(declare-fun m!88284 () Bool)

(assert (=> b!92691 m!88284))

(declare-fun m!88286 () Bool)

(assert (=> b!92693 m!88286))

(declare-fun m!88288 () Bool)

(assert (=> d!60674 m!88288))

(assert (=> d!60674 m!88268))

(assert (=> d!60674 m!88270))

(declare-fun m!88290 () Bool)

(assert (=> d!60674 m!88290))

(declare-fun m!88292 () Bool)

(assert (=> b!92686 m!88292))

(assert (=> b!92689 m!88284))

(assert (=> b!92650 d!60674))

(push 1)

(assert (not b!92693))

(assert (not b!92686))

(assert (not b!92691))

(assert (not b!92657))

(assert (not b!92659))

(assert (not b!92661))

(assert (not d!60674))

(assert (not b!92689))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


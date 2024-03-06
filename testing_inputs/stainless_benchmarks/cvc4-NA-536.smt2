; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3882 () Bool)

(assert start!3882)

(declare-fun b!26702 () Bool)

(declare-fun res!12206 () Bool)

(declare-fun e!13678 () Bool)

(assert (=> b!26702 (=> (not res!12206) (not e!13678))))

(declare-datatypes () ((T!1827 (T!1828 (val!86 Int)))))

(declare-datatypes () ((Conc!63 (CC!62 (left!707 Conc!63) (right!710 Conc!63)) (Single!62 (x!8925 T!1827)) (Empty!73))))

(declare-fun res!5533 () Conc!63)

(declare-fun nrr!4 () Conc!63)

(declare-fun xs!533 () Conc!63)

(assert (=> b!26702 (= res!12206 (= res!5533 (CC!62 (left!707 xs!533) (CC!62 (left!707 (right!710 xs!533)) nrr!4))))))

(declare-fun b!26703 () Bool)

(declare-fun res!12212 () Bool)

(assert (=> b!26703 (=> (not res!12212) (not e!13678))))

(declare-fun ys!77 () Conc!63)

(declare-fun balanced!58 (Conc!63) Bool)

(assert (=> b!26703 (= res!12212 (balanced!58 ys!77))))

(declare-fun e!13679 () Bool)

(declare-fun b!26704 () Bool)

(declare-fun concatCorrectness!12 (Conc!63 Conc!63 Conc!63) Bool)

(assert (=> b!26704 (= e!13679 (concatCorrectness!12 res!5533 xs!533 ys!77))))

(declare-fun b!26705 () Bool)

(declare-fun e!13680 () Bool)

(declare-fun tp_is_empty!171 () Bool)

(assert (=> b!26705 (= e!13680 tp_is_empty!171)))

(declare-fun b!26706 () Bool)

(declare-fun res!12214 () Bool)

(assert (=> b!26706 (=> (not res!12214) (not e!13679))))

(declare-fun appendAssocInst!12 (Conc!63 Conc!63) Bool)

(assert (=> b!26706 (= res!12214 (appendAssocInst!12 xs!533 ys!77))))

(declare-fun b!26707 () Bool)

(declare-fun res!12209 () Bool)

(assert (=> b!26707 (=> (not res!12209) (not e!13678))))

(declare-fun isEmpty!319 (Conc!63) Bool)

(assert (=> b!26707 (= res!12209 (not (isEmpty!319 ys!77)))))

(declare-fun b!26708 () Bool)

(declare-fun res!12216 () Bool)

(assert (=> b!26708 (=> (not res!12216) (not e!13678))))

(declare-fun diff!6 () Int)

(assert (=> b!26708 (= res!12216 (and (or (< diff!6 (- 1)) (> diff!6 1)) (< diff!6 (- 1))))))

(declare-fun b!26709 () Bool)

(declare-fun res!12219 () Bool)

(assert (=> b!26709 (=> (not res!12219) (not e!13679))))

(declare-fun lt!4343 () Int)

(declare-fun lt!4342 () Int)

(declare-fun lt!4341 () Int)

(assert (=> b!26709 (= res!12219 (>= lt!4341 (ite (>= lt!4343 lt!4342) lt!4343 lt!4342)))))

(declare-fun level!51 (Conc!63) Int)

(assert (=> b!26709 (= lt!4342 (level!51 ys!77))))

(assert (=> b!26709 (= lt!4343 (level!51 xs!533))))

(assert (=> b!26709 (= lt!4341 (level!51 res!5533))))

(declare-fun b!26710 () Bool)

(declare-fun res!12218 () Bool)

(assert (=> b!26710 (=> (not res!12218) (not e!13678))))

(declare-fun concatNonEmpty!15 (Conc!63 Conc!63) Conc!63)

(assert (=> b!26710 (= res!12218 (= nrr!4 (concatNonEmpty!15 (right!710 (right!710 xs!533)) ys!77)))))

(declare-fun b!26711 () Bool)

(declare-fun res!12221 () Bool)

(assert (=> b!26711 (=> (not res!12221) (not e!13678))))

(assert (=> b!26711 (= res!12221 (balanced!58 xs!533))))

(declare-fun b!26712 () Bool)

(declare-fun e!13676 () Bool)

(assert (=> b!26712 (= e!13676 tp_is_empty!171)))

(declare-fun b!26713 () Bool)

(declare-fun tp!5837 () Bool)

(declare-fun tp!5832 () Bool)

(assert (=> b!26713 (= e!13676 (and tp!5837 tp!5832))))

(declare-fun b!26714 () Bool)

(declare-fun res!12215 () Bool)

(assert (=> b!26714 (=> (not res!12215) (not e!13678))))

(assert (=> b!26714 (= res!12215 (= diff!6 (- (level!51 ys!77) (level!51 xs!533))))))

(declare-fun res!12205 () Bool)

(assert (=> start!3882 (=> (not res!12205) (not e!13678))))

(declare-fun concInv!57 (Conc!63) Bool)

(assert (=> start!3882 (= res!12205 (concInv!57 xs!533))))

(assert (=> start!3882 e!13678))

(assert (=> start!3882 e!13676))

(assert (=> start!3882 true))

(assert (=> start!3882 e!13680))

(declare-fun e!13677 () Bool)

(assert (=> start!3882 e!13677))

(declare-fun e!13675 () Bool)

(assert (=> start!3882 e!13675))

(declare-fun b!26715 () Bool)

(assert (=> b!26715 (= e!13678 (not e!13679))))

(declare-fun res!12213 () Bool)

(assert (=> b!26715 (=> (not res!12213) (not e!13679))))

(declare-fun lt!4345 () Int)

(declare-fun lt!4344 () Int)

(declare-fun lt!4346 () Int)

(assert (=> b!26715 (= res!12213 (<= lt!4344 (+ (ite (>= lt!4345 lt!4346) lt!4345 lt!4346) 1)))))

(assert (=> b!26715 (= lt!4346 (level!51 ys!77))))

(assert (=> b!26715 (= lt!4345 (level!51 xs!533))))

(assert (=> b!26715 (= lt!4344 (level!51 res!5533))))

(assert (=> b!26715 (is-CC!62 res!5533)))

(declare-fun b!26716 () Bool)

(declare-fun res!12217 () Bool)

(assert (=> b!26716 (=> (not res!12217) (not e!13679))))

(assert (=> b!26716 (= res!12217 (concInv!57 res!5533))))

(declare-fun b!26717 () Bool)

(declare-fun res!12220 () Bool)

(assert (=> b!26717 (=> (not res!12220) (not e!13678))))

(assert (=> b!26717 (= res!12220 (not (isEmpty!319 xs!533)))))

(declare-fun b!26718 () Bool)

(declare-fun res!12210 () Bool)

(assert (=> b!26718 (=> (not res!12210) (not e!13679))))

(assert (=> b!26718 (= res!12210 (balanced!58 res!5533))))

(declare-fun b!26719 () Bool)

(declare-fun tp!5835 () Bool)

(declare-fun tp!5834 () Bool)

(assert (=> b!26719 (= e!13675 (and tp!5835 tp!5834))))

(declare-fun b!26720 () Bool)

(assert (=> b!26720 (= e!13675 tp_is_empty!171)))

(declare-fun b!26721 () Bool)

(assert (=> b!26721 (= e!13677 tp_is_empty!171)))

(declare-fun b!26722 () Bool)

(declare-fun res!12208 () Bool)

(assert (=> b!26722 (=> (not res!12208) (not e!13678))))

(assert (=> b!26722 (= res!12208 (concInv!57 ys!77))))

(declare-fun b!26723 () Bool)

(declare-fun tp!5833 () Bool)

(declare-fun tp!5836 () Bool)

(assert (=> b!26723 (= e!13680 (and tp!5833 tp!5836))))

(declare-fun b!26724 () Bool)

(declare-fun res!12211 () Bool)

(assert (=> b!26724 (=> (not res!12211) (not e!13678))))

(assert (=> b!26724 (= res!12211 (= (level!51 nrr!4) (- (level!51 xs!533) 3)))))

(declare-fun b!26725 () Bool)

(declare-fun tp!5830 () Bool)

(declare-fun tp!5831 () Bool)

(assert (=> b!26725 (= e!13677 (and tp!5830 tp!5831))))

(declare-fun b!26726 () Bool)

(declare-fun res!12207 () Bool)

(assert (=> b!26726 (=> (not res!12207) (not e!13678))))

(assert (=> b!26726 (= res!12207 (< (level!51 (left!707 xs!533)) (level!51 (right!710 xs!533))))))

(assert (= (and start!3882 res!12205) b!26711))

(assert (= (and b!26711 res!12221) b!26722))

(assert (= (and b!26722 res!12208) b!26703))

(assert (= (and b!26703 res!12212) b!26717))

(assert (= (and b!26717 res!12220) b!26707))

(assert (= (and b!26707 res!12209) b!26714))

(assert (= (and b!26714 res!12215) b!26708))

(assert (= (and b!26708 res!12216) b!26726))

(assert (= (and b!26726 res!12207) b!26710))

(assert (= (and b!26710 res!12218) b!26724))

(assert (= (and b!26724 res!12211) b!26702))

(assert (= (and b!26702 res!12206) b!26715))

(assert (= (and b!26715 res!12213) b!26709))

(assert (= (and b!26709 res!12219) b!26716))

(assert (= (and b!26716 res!12217) b!26718))

(assert (= (and b!26718 res!12210) b!26706))

(assert (= (and b!26706 res!12214) b!26704))

(assert (= (and start!3882 (is-CC!62 res!5533)) b!26713))

(assert (= (and start!3882 (is-Single!62 res!5533)) b!26712))

(assert (= (and start!3882 (is-CC!62 nrr!4)) b!26723))

(assert (= (and start!3882 (is-Single!62 nrr!4)) b!26705))

(assert (= (and start!3882 (is-CC!62 ys!77)) b!26725))

(assert (= (and start!3882 (is-Single!62 ys!77)) b!26721))

(assert (= (and start!3882 (is-CC!62 xs!533)) b!26719))

(assert (= (and start!3882 (is-Single!62 xs!533)) b!26720))

(declare-fun m!27701 () Bool)

(assert (=> b!26717 m!27701))

(declare-fun m!27703 () Bool)

(assert (=> b!26711 m!27703))

(declare-fun m!27705 () Bool)

(assert (=> b!26709 m!27705))

(declare-fun m!27707 () Bool)

(assert (=> b!26709 m!27707))

(declare-fun m!27709 () Bool)

(assert (=> b!26709 m!27709))

(declare-fun m!27711 () Bool)

(assert (=> b!26710 m!27711))

(declare-fun m!27713 () Bool)

(assert (=> b!26716 m!27713))

(declare-fun m!27715 () Bool)

(assert (=> b!26704 m!27715))

(assert (=> b!26715 m!27705))

(assert (=> b!26715 m!27707))

(assert (=> b!26715 m!27709))

(declare-fun m!27717 () Bool)

(assert (=> b!26722 m!27717))

(declare-fun m!27719 () Bool)

(assert (=> b!26718 m!27719))

(declare-fun m!27721 () Bool)

(assert (=> b!26726 m!27721))

(declare-fun m!27723 () Bool)

(assert (=> b!26726 m!27723))

(declare-fun m!27725 () Bool)

(assert (=> b!26707 m!27725))

(declare-fun m!27727 () Bool)

(assert (=> b!26703 m!27727))

(declare-fun m!27729 () Bool)

(assert (=> b!26706 m!27729))

(assert (=> b!26714 m!27705))

(assert (=> b!26714 m!27707))

(declare-fun m!27731 () Bool)

(assert (=> start!3882 m!27731))

(declare-fun m!27733 () Bool)

(assert (=> b!26724 m!27733))

(assert (=> b!26724 m!27707))

(push 1)

(assert (not b!26716))

(assert (not b!26726))

(assert (not b!26704))

(assert (not b!26706))

(assert (not b!26713))

(assert (not b!26715))

(assert tp_is_empty!171)

(assert (not b!26707))

(assert (not b!26718))

(assert (not b!26709))

(assert (not b!26711))

(assert (not b!26723))

(assert (not b!26724))

(assert (not b!26725))

(assert (not b!26719))

(assert (not start!3882))

(assert (not b!26722))

(assert (not b!26710))

(assert (not b!26703))

(assert (not b!26717))

(assert (not b!26714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!14215 () Bool)

(declare-fun res!12230 () Bool)

(declare-fun e!13685 () Bool)

(assert (=> d!14215 (=> res!12230 e!13685)))

(assert (=> d!14215 (= res!12230 (not (is-CC!62 xs!533)))))

(assert (=> d!14215 (= (concInv!57 xs!533) e!13685)))

(declare-fun b!26736 () Bool)

(declare-fun res!12233 () Bool)

(declare-fun e!13686 () Bool)

(assert (=> b!26736 (=> (not res!12233) (not e!13686))))

(assert (=> b!26736 (= res!12233 (not (isEmpty!319 (right!710 xs!533))))))

(declare-fun b!26735 () Bool)

(assert (=> b!26735 (= e!13685 e!13686)))

(declare-fun res!12231 () Bool)

(assert (=> b!26735 (=> (not res!12231) (not e!13686))))

(assert (=> b!26735 (= res!12231 (not (isEmpty!319 (left!707 xs!533))))))

(declare-fun b!26738 () Bool)

(assert (=> b!26738 (= e!13686 (concInv!57 (right!710 xs!533)))))

(declare-fun b!26737 () Bool)

(declare-fun res!12232 () Bool)

(assert (=> b!26737 (=> (not res!12232) (not e!13686))))

(assert (=> b!26737 (= res!12232 (concInv!57 (left!707 xs!533)))))

(assert (= (and d!14215 (not res!12230)) b!26735))

(assert (= (and b!26735 res!12231) b!26736))

(assert (= (and b!26736 res!12233) b!26737))

(assert (= (and b!26737 res!12232) b!26738))

(declare-fun m!27735 () Bool)

(assert (=> b!26736 m!27735))

(declare-fun m!27737 () Bool)

(assert (=> b!26735 m!27737))

(declare-fun m!27739 () Bool)

(assert (=> b!26738 m!27739))

(declare-fun m!27741 () Bool)

(assert (=> b!26737 m!27741))

(assert (=> start!3882 d!14215))

(declare-fun b!26744 () Bool)

(declare-fun e!13689 () Int)

(declare-fun lt!4355 () Int)

(declare-fun lt!4353 () Int)

(assert (=> b!26744 (= e!13689 (+ 1 (ite (>= lt!4355 lt!4353) lt!4355 lt!4353)))))

(assert (=> b!26744 (= lt!4353 (level!51 (right!710 ys!77)))))

(assert (=> b!26744 (= lt!4355 (level!51 (left!707 ys!77)))))

(declare-fun d!14217 () Bool)

(declare-fun lt!4354 () Int)

(assert (=> d!14217 (>= lt!4354 0)))

(assert (=> d!14217 (= lt!4354 e!13689)))

(declare-fun c!5875 () Bool)

(assert (=> d!14217 (= c!5875 (or (is-Empty!73 ys!77) (is-Single!62 ys!77)))))

(assert (=> d!14217 (= (level!51 ys!77) lt!4354)))

(declare-fun b!26743 () Bool)

(assert (=> b!26743 (= e!13689 0)))

(assert (= (and d!14217 c!5875) b!26743))

(assert (= (and d!14217 (not c!5875)) b!26744))

(declare-fun m!27743 () Bool)

(assert (=> b!26744 m!27743))

(declare-fun m!27745 () Bool)

(assert (=> b!26744 m!27745))

(assert (=> b!26709 d!14217))

(declare-fun b!26746 () Bool)

(declare-fun e!13690 () Int)

(declare-fun lt!4358 () Int)

(declare-fun lt!4356 () Int)

(assert (=> b!26746 (= e!13690 (+ 1 (ite (>= lt!4358 lt!4356) lt!4358 lt!4356)))))

(assert (=> b!26746 (= lt!4356 (level!51 (right!710 xs!533)))))

(assert (=> b!26746 (= lt!4358 (level!51 (left!707 xs!533)))))

(declare-fun d!14219 () Bool)

(declare-fun lt!4357 () Int)

(assert (=> d!14219 (>= lt!4357 0)))

(assert (=> d!14219 (= lt!4357 e!13690)))

(declare-fun c!5876 () Bool)

(assert (=> d!14219 (= c!5876 (or (is-Empty!73 xs!533) (is-Single!62 xs!533)))))

(assert (=> d!14219 (= (level!51 xs!533) lt!4357)))

(declare-fun b!26745 () Bool)

(assert (=> b!26745 (= e!13690 0)))

(assert (= (and d!14219 c!5876) b!26745))

(assert (= (and d!14219 (not c!5876)) b!26746))

(assert (=> b!26746 m!27723))

(assert (=> b!26746 m!27721))

(assert (=> b!26709 d!14219))

(declare-fun b!26748 () Bool)

(declare-fun e!13691 () Int)

(declare-fun lt!4361 () Int)

(declare-fun lt!4359 () Int)

(assert (=> b!26748 (= e!13691 (+ 1 (ite (>= lt!4361 lt!4359) lt!4361 lt!4359)))))

(assert (=> b!26748 (= lt!4359 (level!51 (right!710 res!5533)))))

(assert (=> b!26748 (= lt!4361 (level!51 (left!707 res!5533)))))

(declare-fun d!14221 () Bool)

(declare-fun lt!4360 () Int)

(assert (=> d!14221 (>= lt!4360 0)))

(assert (=> d!14221 (= lt!4360 e!13691)))

(declare-fun c!5877 () Bool)

(assert (=> d!14221 (= c!5877 (or (is-Empty!73 res!5533) (is-Single!62 res!5533)))))

(assert (=> d!14221 (= (level!51 res!5533) lt!4360)))

(declare-fun b!26747 () Bool)

(assert (=> b!26747 (= e!13691 0)))

(assert (= (and d!14221 c!5877) b!26747))

(assert (= (and d!14221 (not c!5877)) b!26748))

(declare-fun m!27747 () Bool)

(assert (=> b!26748 m!27747))

(declare-fun m!27749 () Bool)

(assert (=> b!26748 m!27749))

(assert (=> b!26709 d!14221))

(declare-fun d!14223 () Bool)

(assert (=> d!14223 (= (isEmpty!319 ys!77) (= ys!77 Empty!73))))

(assert (=> b!26707 d!14223))

(declare-fun d!14225 () Bool)

(declare-fun res!12234 () Bool)

(declare-fun e!13692 () Bool)

(assert (=> d!14225 (=> res!12234 e!13692)))

(assert (=> d!14225 (= res!12234 (not (is-CC!62 res!5533)))))

(assert (=> d!14225 (= (concInv!57 res!5533) e!13692)))

(declare-fun b!26750 () Bool)

(declare-fun res!12237 () Bool)

(declare-fun e!13693 () Bool)

(assert (=> b!26750 (=> (not res!12237) (not e!13693))))

(assert (=> b!26750 (= res!12237 (not (isEmpty!319 (right!710 res!5533))))))

(declare-fun b!26749 () Bool)

(assert (=> b!26749 (= e!13692 e!13693)))

(declare-fun res!12235 () Bool)

(assert (=> b!26749 (=> (not res!12235) (not e!13693))))

(assert (=> b!26749 (= res!12235 (not (isEmpty!319 (left!707 res!5533))))))

(declare-fun b!26752 () Bool)

(assert (=> b!26752 (= e!13693 (concInv!57 (right!710 res!5533)))))

(declare-fun b!26751 () Bool)

(declare-fun res!12236 () Bool)

(assert (=> b!26751 (=> (not res!12236) (not e!13693))))

(assert (=> b!26751 (= res!12236 (concInv!57 (left!707 res!5533)))))

(assert (= (and d!14225 (not res!12234)) b!26749))

(assert (= (and b!26749 res!12235) b!26750))

(assert (= (and b!26750 res!12237) b!26751))

(assert (= (and b!26751 res!12236) b!26752))

(declare-fun m!27751 () Bool)

(assert (=> b!26750 m!27751))

(declare-fun m!27753 () Bool)

(assert (=> b!26749 m!27753))

(declare-fun m!27755 () Bool)

(assert (=> b!26752 m!27755))

(declare-fun m!27757 () Bool)

(assert (=> b!26751 m!27757))

(assert (=> b!26716 d!14225))

(declare-fun b!26754 () Bool)

(declare-fun e!13694 () Int)

(declare-fun lt!4364 () Int)

(declare-fun lt!4362 () Int)

(assert (=> b!26754 (= e!13694 (+ 1 (ite (>= lt!4364 lt!4362) lt!4364 lt!4362)))))

(assert (=> b!26754 (= lt!4362 (level!51 (right!710 (left!707 xs!533))))))

(assert (=> b!26754 (= lt!4364 (level!51 (left!707 (left!707 xs!533))))))

(declare-fun d!14227 () Bool)

(declare-fun lt!4363 () Int)

(assert (=> d!14227 (>= lt!4363 0)))

(assert (=> d!14227 (= lt!4363 e!13694)))

(declare-fun c!5878 () Bool)

(assert (=> d!14227 (= c!5878 (or (is-Empty!73 (left!707 xs!533)) (is-Single!62 (left!707 xs!533))))))

(assert (=> d!14227 (= (level!51 (left!707 xs!533)) lt!4363)))

(declare-fun b!26753 () Bool)

(assert (=> b!26753 (= e!13694 0)))

(assert (= (and d!14227 c!5878) b!26753))

(assert (= (and d!14227 (not c!5878)) b!26754))

(declare-fun m!27759 () Bool)

(assert (=> b!26754 m!27759))

(declare-fun m!27761 () Bool)

(assert (=> b!26754 m!27761))

(assert (=> b!26726 d!14227))

(declare-fun b!26756 () Bool)

(declare-fun e!13695 () Int)

(declare-fun lt!4367 () Int)

(declare-fun lt!4365 () Int)

(assert (=> b!26756 (= e!13695 (+ 1 (ite (>= lt!4367 lt!4365) lt!4367 lt!4365)))))

(assert (=> b!26756 (= lt!4365 (level!51 (right!710 (right!710 xs!533))))))

(assert (=> b!26756 (= lt!4367 (level!51 (left!707 (right!710 xs!533))))))

(declare-fun d!14229 () Bool)

(declare-fun lt!4366 () Int)

(assert (=> d!14229 (>= lt!4366 0)))

(assert (=> d!14229 (= lt!4366 e!13695)))

(declare-fun c!5879 () Bool)

(assert (=> d!14229 (= c!5879 (or (is-Empty!73 (right!710 xs!533)) (is-Single!62 (right!710 xs!533))))))

(assert (=> d!14229 (= (level!51 (right!710 xs!533)) lt!4366)))

(declare-fun b!26755 () Bool)

(assert (=> b!26755 (= e!13695 0)))

(assert (= (and d!14229 c!5879) b!26755))

(assert (= (and d!14229 (not c!5879)) b!26756))

(declare-fun m!27763 () Bool)

(assert (=> b!26756 m!27763))

(declare-fun m!27765 () Bool)

(assert (=> b!26756 m!27765))

(assert (=> b!26726 d!14229))

(declare-fun b!26799 () Bool)

(declare-fun e!13717 () Bool)

(assert (=> b!26799 (= e!13717 (not (isEmpty!319 ys!77)))))

(declare-fun b!26800 () Bool)

(declare-fun res!12300 () Bool)

(declare-fun e!13720 () Bool)

(assert (=> b!26800 (=> (not res!12300) (not e!13720))))

(declare-fun lt!4402 () Conc!63)

(assert (=> b!26800 (= res!12300 (concInv!57 lt!4402))))

(declare-fun b!26801 () Bool)

(declare-fun res!12303 () Bool)

(assert (=> b!26801 (=> (not res!12303) (not e!13717))))

(assert (=> b!26801 (= res!12303 (not (isEmpty!319 (right!710 (right!710 xs!533)))))))

(declare-fun b!26802 () Bool)

(declare-fun res!12301 () Bool)

(assert (=> b!26802 (=> (not res!12301) (not e!13720))))

(assert (=> b!26802 (= res!12301 (appendAssocInst!12 (right!710 (right!710 xs!533)) ys!77))))

(declare-fun b!26803 () Bool)

(declare-fun e!13719 () Bool)

(assert (=> b!26803 (= e!13719 tp_is_empty!171)))

(declare-fun b!26804 () Bool)

(declare-fun e!13714 () Bool)

(assert (=> b!26804 (= e!13714 e!13720)))

(declare-fun res!12293 () Bool)

(assert (=> b!26804 (=> (not res!12293) (not e!13720))))

(declare-fun lt!4407 () Int)

(declare-fun lt!4410 () Int)

(declare-fun lt!4412 () Int)

(assert (=> b!26804 (= res!12293 (<= lt!4407 (+ (ite (>= lt!4410 lt!4412) lt!4410 lt!4412) 1)))))

(assert (=> b!26804 (= lt!4412 (level!51 ys!77))))

(assert (=> b!26804 (= lt!4410 (level!51 (right!710 (right!710 xs!533))))))

(assert (=> b!26804 (= lt!4407 (level!51 lt!4402))))

(declare-fun b!26805 () Bool)

(declare-fun e!13715 () Conc!63)

(declare-fun res!12297 () Conc!63)

(assert (=> b!26805 (= e!13715 res!12297)))

(assert (=> b!26805 true))

(assert (=> b!26805 e!13719))

(declare-fun b!26806 () Bool)

(declare-fun e!13721 () Bool)

(assert (=> b!26806 (= e!13721 (balanced!58 (right!710 (right!710 xs!533))))))

(declare-fun b!26807 () Bool)

(declare-fun e!13716 () Int)

(declare-fun res!12305 () Int)

(assert (=> b!26807 (= e!13716 res!12305)))

(assert (=> b!26807 true))

(assert (=> b!26807 true))

(declare-fun b!26808 () Bool)

(declare-fun res!12294 () Bool)

(assert (=> b!26808 (=> (not res!12294) (not e!13720))))

(declare-fun lt!4415 () Int)

(declare-fun lt!4404 () Int)

(declare-fun lt!4408 () Int)

(assert (=> b!26808 (= res!12294 (>= lt!4415 (ite (>= lt!4408 lt!4404) lt!4408 lt!4404)))))

(assert (=> b!26808 (= lt!4404 (level!51 ys!77))))

(assert (=> b!26808 (= lt!4408 (level!51 (right!710 (right!710 xs!533))))))

(assert (=> b!26808 (= lt!4415 (level!51 lt!4402))))

(declare-fun b!26809 () Bool)

(declare-fun res!12298 () Bool)

(assert (=> b!26809 (=> (not res!12298) (not e!13717))))

(assert (=> b!26809 (= res!12298 (concInv!57 ys!77))))

(declare-fun b!26810 () Bool)

(declare-fun lt!4406 () Bool)

(declare-fun lt!4400 () Int)

(declare-fun lt!4413 () Int)

(assert (=> b!26810 (= e!13715 (concatNonEmpty!15 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))) (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))

(declare-fun lt!4411 () Bool)

(declare-fun b!26811 () Bool)

(assert (=> b!26811 (= e!13716 (level!51 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77)))))

(declare-fun b!26812 () Bool)

(declare-fun res!12304 () Bool)

(assert (=> b!26812 (=> (not res!12304) (not e!13720))))

(assert (=> b!26812 (= res!12304 (balanced!58 lt!4402))))

(declare-fun b!26813 () Bool)

(declare-fun res!12292 () Bool)

(assert (=> b!26813 (=> (not res!12292) (not e!13717))))

(assert (=> b!26813 (= res!12292 (balanced!58 ys!77))))

(declare-fun b!26814 () Bool)

(declare-fun tp!5843 () Bool)

(declare-fun tp!5842 () Bool)

(assert (=> b!26814 (= e!13719 (and tp!5843 tp!5842))))

(declare-fun b!26815 () Bool)

(declare-fun e!13718 () Int)

(declare-fun lt!4405 () Conc!63)

(assert (=> b!26815 (= e!13718 (level!51 lt!4405))))

(declare-fun b!26816 () Bool)

(declare-fun res!12302 () Int)

(assert (=> b!26816 (= e!13718 res!12302)))

(assert (=> b!26816 true))

(declare-fun b!26817 () Bool)

(declare-fun e!13722 () Conc!63)

(declare-fun lt!4403 () Bool)

(declare-fun lt!4401 () Int)

(declare-fun lt!4414 () Int)

(assert (=> b!26817 (= e!13722 (ite lt!4403 (let ((res!12241 lt!4405)) (ite (>= lt!4413 lt!4400) (CC!62 (left!707 (right!710 (right!710 xs!533))) res!12241) (ite (= lt!4414 (- lt!4401 3)) (CC!62 (left!707 (right!710 (right!710 xs!533))) (CC!62 (left!707 (right!710 (right!710 (right!710 xs!533)))) res!12241)) (CC!62 (CC!62 (left!707 (right!710 (right!710 xs!533))) (left!707 (right!710 (right!710 (right!710 xs!533))))) res!12241)))) (let ((res!12244 lt!4405)) (ite (>= lt!4413 lt!4400) (CC!62 res!12244 (right!710 ys!77)) (ite (= lt!4414 (- lt!4401 3)) (CC!62 (CC!62 res!12244 (right!710 (left!707 ys!77))) (right!710 ys!77)) (CC!62 res!12244 (CC!62 (right!710 (left!707 ys!77)) (right!710 ys!77))))))))))

(assert (=> b!26817 (= lt!4401 e!13716)))

(declare-fun c!5888 () Bool)

(assert (=> b!26817 (= c!5888 (or lt!4411 (and (not lt!4403) (not (>= lt!4413 lt!4400)))))))

(assert (=> b!26817 (= lt!4411 (and lt!4403 (not (>= lt!4413 lt!4400))))))

(assert (=> b!26817 (= lt!4414 e!13718)))

(declare-fun c!5891 () Bool)

(assert (=> b!26817 (= c!5891 (or (and lt!4403 (not (>= lt!4413 lt!4400))) (and (not lt!4403) (not (>= lt!4413 lt!4400)))))))

(assert (=> b!26817 (= lt!4405 e!13715)))

(declare-fun c!5890 () Bool)

(assert (=> b!26817 (= c!5890 (or lt!4406 (not lt!4403)))))

(assert (=> b!26817 (= lt!4406 lt!4403)))

(assert (=> b!26817 (= lt!4400 (level!51 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77))))))

(assert (=> b!26817 (= lt!4413 (level!51 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77))))))

(declare-fun lt!4409 () Int)

(assert (=> b!26817 (= lt!4403 (< lt!4409 (- 1)))))

(declare-fun b!26818 () Bool)

(assert (=> b!26818 (= e!13720 (concatCorrectness!12 lt!4402 (right!710 (right!710 xs!533)) ys!77))))

(declare-fun b!26819 () Bool)

(assert (=> b!26819 (= e!13722 (CC!62 (right!710 (right!710 xs!533)) ys!77))))

(declare-fun d!14231 () Bool)

(assert (=> d!14231 e!13714))

(declare-fun res!12296 () Bool)

(assert (=> d!14231 (=> (not res!12296) (not e!13714))))

(assert (=> d!14231 (= res!12296 (is-CC!62 lt!4402))))

(assert (=> d!14231 (= lt!4402 e!13722)))

(declare-fun c!5889 () Bool)

(assert (=> d!14231 (= c!5889 (and (>= lt!4409 (- 1)) (<= lt!4409 1)))))

(assert (=> d!14231 (= lt!4409 (- (level!51 ys!77) (level!51 (right!710 (right!710 xs!533)))))))

(assert (=> d!14231 e!13717))

(declare-fun res!12299 () Bool)

(assert (=> d!14231 (=> (not res!12299) (not e!13717))))

(assert (=> d!14231 (= res!12299 e!13721)))

(declare-fun res!12295 () Bool)

(assert (=> d!14231 (=> (not res!12295) (not e!13721))))

(assert (=> d!14231 (= res!12295 (concInv!57 (right!710 (right!710 xs!533))))))

(assert (=> d!14231 (= (concatNonEmpty!15 (right!710 (right!710 xs!533)) ys!77) lt!4402)))

(assert (= (and d!14231 res!12295) b!26806))

(assert (= (and d!14231 res!12299) b!26809))

(assert (= (and b!26809 res!12298) b!26813))

(assert (= (and b!26813 res!12292) b!26801))

(assert (= (and b!26801 res!12303) b!26799))

(assert (= (and b!26805 (is-CC!62 res!12297)) b!26814))

(assert (= (and b!26805 (is-Single!62 res!12297)) b!26803))

(assert (= (and b!26817 c!5890) b!26810))

(assert (= (and b!26817 (not c!5890)) b!26805))

(assert (= (and b!26817 c!5891) b!26815))

(assert (= (and b!26817 (not c!5891)) b!26816))

(assert (= (and b!26817 c!5888) b!26811))

(assert (= (and b!26817 (not c!5888)) b!26807))

(assert (= (and d!14231 c!5889) b!26819))

(assert (= (and d!14231 (not c!5889)) b!26817))

(assert (= (and d!14231 res!12296) b!26804))

(assert (= (and b!26804 res!12293) b!26808))

(assert (= (and b!26808 res!12294) b!26800))

(assert (= (and b!26800 res!12300) b!26812))

(assert (= (and b!26812 res!12304) b!26802))

(assert (= (and b!26802 res!12301) b!26818))

(declare-fun m!27767 () Bool)

(assert (=> b!26810 m!27767))

(declare-fun m!27769 () Bool)

(assert (=> b!26811 m!27769))

(declare-fun m!27771 () Bool)

(assert (=> b!26815 m!27771))

(declare-fun m!27773 () Bool)

(assert (=> b!26817 m!27773))

(declare-fun m!27775 () Bool)

(assert (=> b!26817 m!27775))

(declare-fun m!27777 () Bool)

(assert (=> b!26802 m!27777))

(assert (=> b!26804 m!27705))

(assert (=> b!26804 m!27763))

(declare-fun m!27779 () Bool)

(assert (=> b!26804 m!27779))

(declare-fun m!27781 () Bool)

(assert (=> b!26800 m!27781))

(assert (=> b!26808 m!27705))

(assert (=> b!26808 m!27763))

(assert (=> b!26808 m!27779))

(assert (=> b!26813 m!27727))

(declare-fun m!27783 () Bool)

(assert (=> b!26818 m!27783))

(assert (=> b!26799 m!27725))

(assert (=> d!14231 m!27705))

(assert (=> d!14231 m!27763))

(declare-fun m!27785 () Bool)

(assert (=> d!14231 m!27785))

(assert (=> b!26809 m!27717))

(declare-fun m!27787 () Bool)

(assert (=> b!26801 m!27787))

(declare-fun m!27789 () Bool)

(assert (=> b!26812 m!27789))

(declare-fun m!27791 () Bool)

(assert (=> b!26806 m!27791))

(assert (=> b!26710 d!14231))

(assert (=> b!26714 d!14217))

(assert (=> b!26714 d!14219))

(declare-fun b!26828 () Bool)

(declare-fun e!13728 () Bool)

(declare-fun e!13727 () Bool)

(assert (=> b!26828 (= e!13728 e!13727)))

(declare-fun res!12316 () Bool)

(assert (=> b!26828 (=> (not res!12316) (not e!13727))))

(assert (=> b!26828 (= res!12316 (>= (- (level!51 (left!707 res!5533)) (level!51 (right!710 res!5533))) (- 1)))))

(declare-fun d!14233 () Bool)

(declare-fun res!12317 () Bool)

(assert (=> d!14233 (=> res!12317 e!13728)))

(assert (=> d!14233 (= res!12317 (not (is-CC!62 res!5533)))))

(assert (=> d!14233 (= (balanced!58 res!5533) e!13728)))

(declare-fun b!26829 () Bool)

(declare-fun res!12315 () Bool)

(assert (=> b!26829 (=> (not res!12315) (not e!13727))))

(assert (=> b!26829 (= res!12315 (<= (- (level!51 (left!707 res!5533)) (level!51 (right!710 res!5533))) 1))))

(declare-fun b!26831 () Bool)

(assert (=> b!26831 (= e!13727 (balanced!58 (right!710 res!5533)))))

(declare-fun b!26830 () Bool)

(declare-fun res!12314 () Bool)

(assert (=> b!26830 (=> (not res!12314) (not e!13727))))

(assert (=> b!26830 (= res!12314 (balanced!58 (left!707 res!5533)))))

(assert (= (and d!14233 (not res!12317)) b!26828))

(assert (= (and b!26828 res!12316) b!26829))

(assert (= (and b!26829 res!12315) b!26830))

(assert (= (and b!26830 res!12314) b!26831))

(assert (=> b!26828 m!27749))

(assert (=> b!26828 m!27747))

(assert (=> b!26829 m!27749))

(assert (=> b!26829 m!27747))

(declare-fun m!27793 () Bool)

(assert (=> b!26831 m!27793))

(declare-fun m!27795 () Bool)

(assert (=> b!26830 m!27795))

(assert (=> b!26718 d!14233))

(assert (=> b!26715 d!14217))

(assert (=> b!26715 d!14219))

(assert (=> b!26715 d!14221))

(declare-fun b!26850 () Bool)

(declare-fun e!13755 () Bool)

(declare-fun e!13754 () Bool)

(assert (=> b!26850 (= e!13755 e!13754)))

(declare-fun res!12341 () Bool)

(assert (=> b!26850 (=> res!12341 e!13754)))

(assert (=> b!26850 (= res!12341 (not (is-CC!62 ys!77)))))

(declare-fun b!26851 () Bool)

(declare-fun e!13748 () Bool)

(declare-fun e!13747 () Bool)

(assert (=> b!26851 (= e!13748 e!13747)))

(declare-fun res!12340 () Bool)

(assert (=> b!26851 (=> (not res!12340) (not e!13747))))

(declare-datatypes () ((List!360 (Cons!354 (h!271 T!1827) (t!4374 List!360)) (Nil!355))))

(declare-fun appendAssoc!8 (List!360 List!360 List!360) Bool)

(declare-fun toList!115 (Conc!63) List!360)

(assert (=> b!26851 (= res!12340 (appendAssoc!8 (toList!115 (left!707 (right!710 xs!533))) (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)))))

(declare-fun b!26852 () Bool)

(declare-fun e!13752 () Bool)

(declare-fun e!13751 () Bool)

(assert (=> b!26852 (= e!13752 e!13751)))

(declare-fun res!12339 () Bool)

(assert (=> b!26852 (=> (not res!12339) (not e!13751))))

(assert (=> b!26852 (= res!12339 (appendAssoc!8 (toList!115 (left!707 xs!533)) (toList!115 (right!710 xs!533)) (toList!115 ys!77)))))

(declare-fun b!26853 () Bool)

(declare-fun ++!40 (List!360 List!360) List!360)

(assert (=> b!26853 (= e!13747 (appendAssoc!8 (toList!115 (left!707 xs!533)) (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))))))

(declare-fun d!14235 () Bool)

(assert (=> d!14235 e!13755))

(declare-fun res!12337 () Bool)

(assert (=> d!14235 (=> (not res!12337) (not e!13755))))

(assert (=> d!14235 (= res!12337 e!13752)))

(declare-fun res!12336 () Bool)

(assert (=> d!14235 (=> res!12336 e!13752)))

(assert (=> d!14235 (= res!12336 (not (is-CC!62 xs!533)))))

(assert (=> d!14235 (= (appendAssocInst!12 xs!533 ys!77) true)))

(declare-fun b!26854 () Bool)

(assert (=> b!26854 (= e!13751 e!13748)))

(declare-fun res!12343 () Bool)

(assert (=> b!26854 (=> res!12343 e!13748)))

(assert (=> b!26854 (= res!12343 (not (is-CC!62 (right!710 xs!533))))))

(declare-fun b!26855 () Bool)

(declare-fun e!13753 () Bool)

(declare-fun e!13750 () Bool)

(assert (=> b!26855 (= e!13753 e!13750)))

(declare-fun res!12338 () Bool)

(assert (=> b!26855 (=> res!12338 e!13750)))

(assert (=> b!26855 (= res!12338 (not (is-CC!62 (left!707 ys!77))))))

(declare-fun b!26856 () Bool)

(assert (=> b!26856 (= e!13754 e!13753)))

(declare-fun res!12344 () Bool)

(assert (=> b!26856 (=> (not res!12344) (not e!13753))))

(assert (=> b!26856 (= res!12344 (appendAssoc!8 (toList!115 xs!533) (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))))))

(declare-fun b!26857 () Bool)

(declare-fun e!13749 () Bool)

(assert (=> b!26857 (= e!13750 e!13749)))

(declare-fun res!12342 () Bool)

(assert (=> b!26857 (=> (not res!12342) (not e!13749))))

(assert (=> b!26857 (= res!12342 (appendAssoc!8 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))))))

(declare-fun b!26858 () Bool)

(assert (=> b!26858 (= e!13749 (appendAssoc!8 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))))))

(assert (= (and d!14235 (not res!12336)) b!26852))

(assert (= (and b!26852 res!12339) b!26854))

(assert (= (and b!26854 (not res!12343)) b!26851))

(assert (= (and b!26851 res!12340) b!26853))

(assert (= (and d!14235 res!12337) b!26850))

(assert (= (and b!26850 (not res!12341)) b!26856))

(assert (= (and b!26856 res!12344) b!26855))

(assert (= (and b!26855 (not res!12338)) b!26857))

(assert (= (and b!26857 res!12342) b!26858))

(declare-fun m!27797 () Bool)

(assert (=> b!26856 m!27797))

(declare-fun m!27799 () Bool)

(assert (=> b!26856 m!27799))

(declare-fun m!27801 () Bool)

(assert (=> b!26856 m!27801))

(assert (=> b!26856 m!27797))

(assert (=> b!26856 m!27799))

(assert (=> b!26856 m!27801))

(declare-fun m!27803 () Bool)

(assert (=> b!26856 m!27803))

(declare-fun m!27805 () Bool)

(assert (=> b!26852 m!27805))

(declare-fun m!27807 () Bool)

(assert (=> b!26852 m!27807))

(declare-fun m!27809 () Bool)

(assert (=> b!26852 m!27809))

(assert (=> b!26852 m!27805))

(assert (=> b!26852 m!27807))

(assert (=> b!26852 m!27809))

(declare-fun m!27811 () Bool)

(assert (=> b!26852 m!27811))

(assert (=> b!26858 m!27801))

(assert (=> b!26858 m!27797))

(declare-fun m!27813 () Bool)

(assert (=> b!26858 m!27813))

(assert (=> b!26858 m!27797))

(declare-fun m!27815 () Bool)

(assert (=> b!26858 m!27815))

(declare-fun m!27817 () Bool)

(assert (=> b!26858 m!27817))

(assert (=> b!26858 m!27817))

(assert (=> b!26858 m!27813))

(assert (=> b!26858 m!27801))

(declare-fun m!27819 () Bool)

(assert (=> b!26858 m!27819))

(assert (=> b!26858 m!27815))

(assert (=> b!26857 m!27797))

(assert (=> b!26857 m!27815))

(assert (=> b!26857 m!27813))

(assert (=> b!26857 m!27797))

(assert (=> b!26857 m!27815))

(assert (=> b!26857 m!27813))

(declare-fun m!27821 () Bool)

(assert (=> b!26857 m!27821))

(declare-fun m!27823 () Bool)

(assert (=> b!26851 m!27823))

(declare-fun m!27825 () Bool)

(assert (=> b!26851 m!27825))

(assert (=> b!26851 m!27809))

(assert (=> b!26851 m!27823))

(assert (=> b!26851 m!27825))

(assert (=> b!26851 m!27809))

(declare-fun m!27827 () Bool)

(assert (=> b!26851 m!27827))

(assert (=> b!26853 m!27805))

(assert (=> b!26853 m!27823))

(assert (=> b!26853 m!27825))

(assert (=> b!26853 m!27825))

(assert (=> b!26853 m!27809))

(declare-fun m!27829 () Bool)

(assert (=> b!26853 m!27829))

(assert (=> b!26853 m!27805))

(assert (=> b!26853 m!27823))

(assert (=> b!26853 m!27829))

(declare-fun m!27831 () Bool)

(assert (=> b!26853 m!27831))

(assert (=> b!26853 m!27809))

(assert (=> b!26706 d!14235))

(declare-fun b!26859 () Bool)

(declare-fun e!13757 () Bool)

(declare-fun e!13756 () Bool)

(assert (=> b!26859 (= e!13757 e!13756)))

(declare-fun res!12347 () Bool)

(assert (=> b!26859 (=> (not res!12347) (not e!13756))))

(assert (=> b!26859 (= res!12347 (>= (- (level!51 (left!707 ys!77)) (level!51 (right!710 ys!77))) (- 1)))))

(declare-fun d!14237 () Bool)

(declare-fun res!12348 () Bool)

(assert (=> d!14237 (=> res!12348 e!13757)))

(assert (=> d!14237 (= res!12348 (not (is-CC!62 ys!77)))))

(assert (=> d!14237 (= (balanced!58 ys!77) e!13757)))

(declare-fun b!26860 () Bool)

(declare-fun res!12346 () Bool)

(assert (=> b!26860 (=> (not res!12346) (not e!13756))))

(assert (=> b!26860 (= res!12346 (<= (- (level!51 (left!707 ys!77)) (level!51 (right!710 ys!77))) 1))))

(declare-fun b!26862 () Bool)

(assert (=> b!26862 (= e!13756 (balanced!58 (right!710 ys!77)))))

(declare-fun b!26861 () Bool)

(declare-fun res!12345 () Bool)

(assert (=> b!26861 (=> (not res!12345) (not e!13756))))

(assert (=> b!26861 (= res!12345 (balanced!58 (left!707 ys!77)))))

(assert (= (and d!14237 (not res!12348)) b!26859))

(assert (= (and b!26859 res!12347) b!26860))

(assert (= (and b!26860 res!12346) b!26861))

(assert (= (and b!26861 res!12345) b!26862))

(assert (=> b!26859 m!27745))

(assert (=> b!26859 m!27743))

(assert (=> b!26860 m!27745))

(assert (=> b!26860 m!27743))

(declare-fun m!27833 () Bool)

(assert (=> b!26862 m!27833))

(declare-fun m!27835 () Bool)

(assert (=> b!26861 m!27835))

(assert (=> b!26703 d!14237))

(declare-fun b!26864 () Bool)

(declare-fun e!13758 () Int)

(declare-fun lt!4418 () Int)

(declare-fun lt!4416 () Int)

(assert (=> b!26864 (= e!13758 (+ 1 (ite (>= lt!4418 lt!4416) lt!4418 lt!4416)))))

(assert (=> b!26864 (= lt!4416 (level!51 (right!710 nrr!4)))))

(assert (=> b!26864 (= lt!4418 (level!51 (left!707 nrr!4)))))

(declare-fun d!14239 () Bool)

(declare-fun lt!4417 () Int)

(assert (=> d!14239 (>= lt!4417 0)))

(assert (=> d!14239 (= lt!4417 e!13758)))

(declare-fun c!5892 () Bool)

(assert (=> d!14239 (= c!5892 (or (is-Empty!73 nrr!4) (is-Single!62 nrr!4)))))

(assert (=> d!14239 (= (level!51 nrr!4) lt!4417)))

(declare-fun b!26863 () Bool)

(assert (=> b!26863 (= e!13758 0)))

(assert (= (and d!14239 c!5892) b!26863))

(assert (= (and d!14239 (not c!5892)) b!26864))

(declare-fun m!27837 () Bool)

(assert (=> b!26864 m!27837))

(declare-fun m!27839 () Bool)

(assert (=> b!26864 m!27839))

(assert (=> b!26724 d!14239))

(assert (=> b!26724 d!14219))

(declare-fun d!14241 () Bool)

(assert (=> d!14241 (= (isEmpty!319 xs!533) (= xs!533 Empty!73))))

(assert (=> b!26717 d!14241))

(declare-fun b!26865 () Bool)

(declare-fun e!13760 () Bool)

(declare-fun e!13759 () Bool)

(assert (=> b!26865 (= e!13760 e!13759)))

(declare-fun res!12351 () Bool)

(assert (=> b!26865 (=> (not res!12351) (not e!13759))))

(assert (=> b!26865 (= res!12351 (>= (- (level!51 (left!707 xs!533)) (level!51 (right!710 xs!533))) (- 1)))))

(declare-fun d!14243 () Bool)

(declare-fun res!12352 () Bool)

(assert (=> d!14243 (=> res!12352 e!13760)))

(assert (=> d!14243 (= res!12352 (not (is-CC!62 xs!533)))))

(assert (=> d!14243 (= (balanced!58 xs!533) e!13760)))

(declare-fun b!26866 () Bool)

(declare-fun res!12350 () Bool)

(assert (=> b!26866 (=> (not res!12350) (not e!13759))))

(assert (=> b!26866 (= res!12350 (<= (- (level!51 (left!707 xs!533)) (level!51 (right!710 xs!533))) 1))))

(declare-fun b!26868 () Bool)

(assert (=> b!26868 (= e!13759 (balanced!58 (right!710 xs!533)))))

(declare-fun b!26867 () Bool)

(declare-fun res!12349 () Bool)

(assert (=> b!26867 (=> (not res!12349) (not e!13759))))

(assert (=> b!26867 (= res!12349 (balanced!58 (left!707 xs!533)))))

(assert (= (and d!14243 (not res!12352)) b!26865))

(assert (= (and b!26865 res!12351) b!26866))

(assert (= (and b!26866 res!12350) b!26867))

(assert (= (and b!26867 res!12349) b!26868))

(assert (=> b!26865 m!27721))

(assert (=> b!26865 m!27723))

(assert (=> b!26866 m!27721))

(assert (=> b!26866 m!27723))

(declare-fun m!27841 () Bool)

(assert (=> b!26868 m!27841))

(declare-fun m!27843 () Bool)

(assert (=> b!26867 m!27843))

(assert (=> b!26711 d!14243))

(declare-fun d!14245 () Bool)

(assert (=> d!14245 (= (concatCorrectness!12 res!5533 xs!533 ys!77) (= (toList!115 res!5533) (++!40 (toList!115 xs!533) (toList!115 ys!77))))))

(declare-fun bs!5092 () Bool)

(assert (= bs!5092 d!14245))

(assert (=> bs!5092 m!27797))

(assert (=> bs!5092 m!27809))

(declare-fun m!27845 () Bool)

(assert (=> bs!5092 m!27845))

(assert (=> bs!5092 m!27809))

(declare-fun m!27847 () Bool)

(assert (=> bs!5092 m!27847))

(assert (=> bs!5092 m!27797))

(assert (=> b!26704 d!14245))

(declare-fun d!14247 () Bool)

(declare-fun res!12354 () Bool)

(declare-fun e!13761 () Bool)

(assert (=> d!14247 (=> res!12354 e!13761)))

(assert (=> d!14247 (= res!12354 (not (is-CC!62 ys!77)))))

(assert (=> d!14247 (= (concInv!57 ys!77) e!13761)))

(declare-fun b!26870 () Bool)

(declare-fun res!12357 () Bool)

(declare-fun e!13762 () Bool)

(assert (=> b!26870 (=> (not res!12357) (not e!13762))))

(assert (=> b!26870 (= res!12357 (not (isEmpty!319 (right!710 ys!77))))))

(declare-fun b!26869 () Bool)

(assert (=> b!26869 (= e!13761 e!13762)))

(declare-fun res!12355 () Bool)

(assert (=> b!26869 (=> (not res!12355) (not e!13762))))

(assert (=> b!26869 (= res!12355 (not (isEmpty!319 (left!707 ys!77))))))

(declare-fun b!26872 () Bool)

(assert (=> b!26872 (= e!13762 (concInv!57 (right!710 ys!77)))))

(declare-fun b!26871 () Bool)

(declare-fun res!12356 () Bool)

(assert (=> b!26871 (=> (not res!12356) (not e!13762))))

(assert (=> b!26871 (= res!12356 (concInv!57 (left!707 ys!77)))))

(assert (= (and d!14247 (not res!12354)) b!26869))

(assert (= (and b!26869 res!12355) b!26870))

(assert (= (and b!26870 res!12357) b!26871))

(assert (= (and b!26871 res!12356) b!26872))

(declare-fun m!27849 () Bool)

(assert (=> b!26870 m!27849))

(declare-fun m!27851 () Bool)

(assert (=> b!26869 m!27851))

(declare-fun m!27853 () Bool)

(assert (=> b!26872 m!27853))

(declare-fun m!27855 () Bool)

(assert (=> b!26871 m!27855))

(assert (=> b!26722 d!14247))

(declare-fun b!26879 () Bool)

(declare-fun e!13765 () Bool)

(declare-fun tp!5848 () Bool)

(declare-fun tp!5849 () Bool)

(assert (=> b!26879 (= e!13765 (and tp!5848 tp!5849))))

(declare-fun b!26880 () Bool)

(assert (=> b!26880 (= e!13765 tp_is_empty!171)))

(assert (=> b!26725 (= tp!5830 e!13765)))

(assert (= (and b!26725 (is-CC!62 (left!707 ys!77))) b!26879))

(assert (= (and b!26725 (is-Single!62 (left!707 ys!77))) b!26880))

(declare-fun b!26881 () Bool)

(declare-fun e!13766 () Bool)

(declare-fun tp!5850 () Bool)

(declare-fun tp!5851 () Bool)

(assert (=> b!26881 (= e!13766 (and tp!5850 tp!5851))))

(declare-fun b!26882 () Bool)

(assert (=> b!26882 (= e!13766 tp_is_empty!171)))

(assert (=> b!26725 (= tp!5831 e!13766)))

(assert (= (and b!26725 (is-CC!62 (right!710 ys!77))) b!26881))

(assert (= (and b!26725 (is-Single!62 (right!710 ys!77))) b!26882))

(declare-fun b!26883 () Bool)

(declare-fun e!13767 () Bool)

(declare-fun tp!5852 () Bool)

(declare-fun tp!5853 () Bool)

(assert (=> b!26883 (= e!13767 (and tp!5852 tp!5853))))

(declare-fun b!26884 () Bool)

(assert (=> b!26884 (= e!13767 tp_is_empty!171)))

(assert (=> b!26719 (= tp!5835 e!13767)))

(assert (= (and b!26719 (is-CC!62 (left!707 xs!533))) b!26883))

(assert (= (and b!26719 (is-Single!62 (left!707 xs!533))) b!26884))

(declare-fun b!26885 () Bool)

(declare-fun e!13768 () Bool)

(declare-fun tp!5854 () Bool)

(declare-fun tp!5855 () Bool)

(assert (=> b!26885 (= e!13768 (and tp!5854 tp!5855))))

(declare-fun b!26886 () Bool)

(assert (=> b!26886 (= e!13768 tp_is_empty!171)))

(assert (=> b!26719 (= tp!5834 e!13768)))

(assert (= (and b!26719 (is-CC!62 (right!710 xs!533))) b!26885))

(assert (= (and b!26719 (is-Single!62 (right!710 xs!533))) b!26886))

(declare-fun b!26887 () Bool)

(declare-fun e!13769 () Bool)

(declare-fun tp!5856 () Bool)

(declare-fun tp!5857 () Bool)

(assert (=> b!26887 (= e!13769 (and tp!5856 tp!5857))))

(declare-fun b!26888 () Bool)

(assert (=> b!26888 (= e!13769 tp_is_empty!171)))

(assert (=> b!26723 (= tp!5833 e!13769)))

(assert (= (and b!26723 (is-CC!62 (left!707 nrr!4))) b!26887))

(assert (= (and b!26723 (is-Single!62 (left!707 nrr!4))) b!26888))

(declare-fun b!26889 () Bool)

(declare-fun e!13770 () Bool)

(declare-fun tp!5858 () Bool)

(declare-fun tp!5859 () Bool)

(assert (=> b!26889 (= e!13770 (and tp!5858 tp!5859))))

(declare-fun b!26890 () Bool)

(assert (=> b!26890 (= e!13770 tp_is_empty!171)))

(assert (=> b!26723 (= tp!5836 e!13770)))

(assert (= (and b!26723 (is-CC!62 (right!710 nrr!4))) b!26889))

(assert (= (and b!26723 (is-Single!62 (right!710 nrr!4))) b!26890))

(declare-fun b!26891 () Bool)

(declare-fun e!13771 () Bool)

(declare-fun tp!5860 () Bool)

(declare-fun tp!5861 () Bool)

(assert (=> b!26891 (= e!13771 (and tp!5860 tp!5861))))

(declare-fun b!26892 () Bool)

(assert (=> b!26892 (= e!13771 tp_is_empty!171)))

(assert (=> b!26713 (= tp!5837 e!13771)))

(assert (= (and b!26713 (is-CC!62 (left!707 res!5533))) b!26891))

(assert (= (and b!26713 (is-Single!62 (left!707 res!5533))) b!26892))

(declare-fun b!26893 () Bool)

(declare-fun e!13772 () Bool)

(declare-fun tp!5862 () Bool)

(declare-fun tp!5863 () Bool)

(assert (=> b!26893 (= e!13772 (and tp!5862 tp!5863))))

(declare-fun b!26894 () Bool)

(assert (=> b!26894 (= e!13772 tp_is_empty!171)))

(assert (=> b!26713 (= tp!5832 e!13772)))

(assert (= (and b!26713 (is-CC!62 (right!710 res!5533))) b!26893))

(assert (= (and b!26713 (is-Single!62 (right!710 res!5533))) b!26894))

(push 1)

(assert (not b!26809))

(assert (not b!26829))

(assert (not b!26751))

(assert (not b!26810))

(assert (not b!26752))

(assert (not b!26817))

(assert (not b!26866))

(assert (not b!26801))

(assert (not b!26868))

(assert (not b!26744))

(assert (not b!26893))

(assert (not b!26756))

(assert (not b!26867))

(assert (not b!26746))

(assert (not b!26865))

(assert (not b!26851))

(assert (not b!26869))

(assert (not b!26856))

(assert (not b!26737))

(assert tp_is_empty!171)

(assert (not b!26872))

(assert (not b!26736))

(assert (not b!26828))

(assert (not b!26864))

(assert (not b!26857))

(assert (not b!26858))

(assert (not b!26885))

(assert (not b!26800))

(assert (not b!26804))

(assert (not b!26861))

(assert (not b!26879))

(assert (not b!26754))

(assert (not b!26871))

(assert (not b!26852))

(assert (not b!26891))

(assert (not b!26860))

(assert (not d!14231))

(assert (not b!26735))

(assert (not b!26870))

(assert (not b!26802))

(assert (not b!26812))

(assert (not b!26815))

(assert (not b!26749))

(assert (not b!26799))

(assert (not b!26853))

(assert (not b!26748))

(assert (not b!26859))

(assert (not b!26750))

(assert (not b!26862))

(assert (not b!26883))

(assert (not b!26831))

(assert (not d!14245))

(assert (not b!26811))

(assert (not b!26813))

(assert (not b!26889))

(assert (not b!26738))

(assert (not b!26818))

(assert (not b!26881))

(assert (not b!26808))

(assert (not b!26887))

(assert (not b!26814))

(assert (not b!26806))

(assert (not b!26830))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26896 () Bool)

(declare-fun e!13773 () Int)

(declare-fun lt!4421 () Int)

(declare-fun lt!4419 () Int)

(assert (=> b!26896 (= e!13773 (+ 1 (ite (>= lt!4421 lt!4419) lt!4421 lt!4419)))))

(assert (=> b!26896 (= lt!4419 (level!51 (right!710 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77)))))))

(assert (=> b!26896 (= lt!4421 (level!51 (left!707 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77)))))))

(declare-fun d!14249 () Bool)

(declare-fun lt!4420 () Int)

(assert (=> d!14249 (>= lt!4420 0)))

(assert (=> d!14249 (= lt!4420 e!13773)))

(declare-fun c!5893 () Bool)

(assert (=> d!14249 (= c!5893 (or (is-Empty!73 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77))) (is-Single!62 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77)))))))

(assert (=> d!14249 (= (level!51 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77))) lt!4420)))

(declare-fun b!26895 () Bool)

(assert (=> b!26895 (= e!13773 0)))

(assert (= (and d!14249 c!5893) b!26895))

(assert (= (and d!14249 (not c!5893)) b!26896))

(declare-fun m!27857 () Bool)

(assert (=> b!26896 m!27857))

(declare-fun m!27859 () Bool)

(assert (=> b!26896 m!27859))

(assert (=> b!26817 d!14249))

(declare-fun b!26898 () Bool)

(declare-fun e!13774 () Int)

(declare-fun lt!4424 () Int)

(declare-fun lt!4422 () Int)

(assert (=> b!26898 (= e!13774 (+ 1 (ite (>= lt!4424 lt!4422) lt!4424 lt!4422)))))

(assert (=> b!26898 (= lt!4422 (level!51 (right!710 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77)))))))

(assert (=> b!26898 (= lt!4424 (level!51 (left!707 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77)))))))

(declare-fun d!14251 () Bool)

(declare-fun lt!4423 () Int)

(assert (=> d!14251 (>= lt!4423 0)))

(assert (=> d!14251 (= lt!4423 e!13774)))

(declare-fun c!5894 () Bool)

(assert (=> d!14251 (= c!5894 (or (is-Empty!73 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77))) (is-Single!62 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77)))))))

(assert (=> d!14251 (= (level!51 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77))) lt!4423)))

(declare-fun b!26897 () Bool)

(assert (=> b!26897 (= e!13774 0)))

(assert (= (and d!14251 c!5894) b!26897))

(assert (= (and d!14251 (not c!5894)) b!26898))

(declare-fun m!27861 () Bool)

(assert (=> b!26898 m!27861))

(declare-fun m!27863 () Bool)

(assert (=> b!26898 m!27863))

(assert (=> b!26817 d!14251))

(declare-fun b!26899 () Bool)

(declare-fun e!13778 () Bool)

(assert (=> b!26899 (= e!13778 (not (isEmpty!319 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))

(declare-fun b!26900 () Bool)

(declare-fun res!12366 () Bool)

(declare-fun e!13781 () Bool)

(assert (=> b!26900 (=> (not res!12366) (not e!13781))))

(declare-fun lt!4427 () Conc!63)

(assert (=> b!26900 (= res!12366 (concInv!57 lt!4427))))

(declare-fun b!26901 () Bool)

(declare-fun res!12369 () Bool)

(assert (=> b!26901 (=> (not res!12369) (not e!13778))))

(assert (=> b!26901 (= res!12369 (not (isEmpty!319 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(declare-fun b!26902 () Bool)

(declare-fun res!12367 () Bool)

(assert (=> b!26902 (=> (not res!12367) (not e!13781))))

(assert (=> b!26902 (= res!12367 (appendAssocInst!12 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))) (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))

(declare-fun b!26903 () Bool)

(declare-fun e!13780 () Bool)

(assert (=> b!26903 (= e!13780 tp_is_empty!171)))

(declare-fun b!26904 () Bool)

(declare-fun e!13775 () Bool)

(assert (=> b!26904 (= e!13775 e!13781)))

(declare-fun res!12359 () Bool)

(assert (=> b!26904 (=> (not res!12359) (not e!13781))))

(declare-fun lt!4432 () Int)

(declare-fun lt!4437 () Int)

(declare-fun lt!4435 () Int)

(assert (=> b!26904 (= res!12359 (<= lt!4432 (+ (ite (>= lt!4435 lt!4437) lt!4435 lt!4437) 1)))))

(assert (=> b!26904 (= lt!4437 (level!51 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))

(assert (=> b!26904 (= lt!4435 (level!51 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))))

(assert (=> b!26904 (= lt!4432 (level!51 lt!4427))))

(declare-fun b!26905 () Bool)

(declare-fun e!13776 () Conc!63)

(declare-fun res!12363 () Conc!63)

(assert (=> b!26905 (= e!13776 res!12363)))

(assert (=> b!26905 true))

(assert (=> b!26905 e!13780))

(declare-fun b!26906 () Bool)

(declare-fun e!13782 () Bool)

(assert (=> b!26906 (= e!13782 (balanced!58 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))))

(declare-fun b!26907 () Bool)

(declare-fun e!13777 () Int)

(declare-fun res!12371 () Int)

(assert (=> b!26907 (= e!13777 res!12371)))

(assert (=> b!26907 true))

(assert (=> b!26907 true))

(declare-fun b!26908 () Bool)

(declare-fun res!12360 () Bool)

(assert (=> b!26908 (=> (not res!12360) (not e!13781))))

(declare-fun lt!4433 () Int)

(declare-fun lt!4440 () Int)

(declare-fun lt!4429 () Int)

(assert (=> b!26908 (= res!12360 (>= lt!4440 (ite (>= lt!4433 lt!4429) lt!4433 lt!4429)))))

(assert (=> b!26908 (= lt!4429 (level!51 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))

(assert (=> b!26908 (= lt!4433 (level!51 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))))

(assert (=> b!26908 (= lt!4440 (level!51 lt!4427))))

(declare-fun b!26909 () Bool)

(declare-fun res!12364 () Bool)

(assert (=> b!26909 (=> (not res!12364) (not e!13778))))

(assert (=> b!26909 (= res!12364 (concInv!57 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))

(declare-fun lt!4431 () Bool)

(declare-fun lt!4425 () Int)

(declare-fun lt!4438 () Int)

(declare-fun b!26910 () Bool)

(assert (=> b!26910 (= e!13776 (concatNonEmpty!15 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))))

(declare-fun lt!4436 () Bool)

(declare-fun b!26911 () Bool)

(assert (=> b!26911 (= e!13777 (level!51 (ite lt!4436 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))) (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))

(declare-fun b!26912 () Bool)

(declare-fun res!12370 () Bool)

(assert (=> b!26912 (=> (not res!12370) (not e!13781))))

(assert (=> b!26912 (= res!12370 (balanced!58 lt!4427))))

(declare-fun b!26913 () Bool)

(declare-fun res!12358 () Bool)

(assert (=> b!26913 (=> (not res!12358) (not e!13778))))

(assert (=> b!26913 (= res!12358 (balanced!58 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))

(declare-fun b!26914 () Bool)

(declare-fun tp!5865 () Bool)

(declare-fun tp!5864 () Bool)

(assert (=> b!26914 (= e!13780 (and tp!5865 tp!5864))))

(declare-fun b!26915 () Bool)

(declare-fun e!13779 () Int)

(declare-fun lt!4430 () Conc!63)

(assert (=> b!26915 (= e!13779 (level!51 lt!4430))))

(declare-fun b!26916 () Bool)

(declare-fun res!12368 () Int)

(assert (=> b!26916 (= e!13779 res!12368)))

(assert (=> b!26916 true))

(declare-fun lt!4439 () Int)

(declare-fun e!13783 () Conc!63)

(declare-fun lt!4426 () Int)

(declare-fun b!26917 () Bool)

(declare-fun lt!4428 () Bool)

(assert (=> b!26917 (= e!13783 (ite lt!4428 (let ((res!12241 lt!4430)) (ite (>= lt!4438 lt!4425) (CC!62 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) res!12241) (ite (= lt!4439 (- lt!4426 3)) (CC!62 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (CC!62 (left!707 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))) res!12241)) (CC!62 (CC!62 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (left!707 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) res!12241)))) (let ((res!12244 lt!4430)) (ite (>= lt!4438 lt!4425) (CC!62 res!12244 (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))) (ite (= lt!4439 (- lt!4426 3)) (CC!62 (CC!62 res!12244 (right!710 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))) (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))) (CC!62 res!12244 (CC!62 (right!710 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))) (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))))))

(assert (=> b!26917 (= lt!4426 e!13777)))

(declare-fun c!5895 () Bool)

(assert (=> b!26917 (= c!5895 (or lt!4436 (and (not lt!4428) (not (>= lt!4438 lt!4425)))))))

(assert (=> b!26917 (= lt!4436 (and lt!4428 (not (>= lt!4438 lt!4425))))))

(assert (=> b!26917 (= lt!4439 e!13779)))

(declare-fun c!5898 () Bool)

(assert (=> b!26917 (= c!5898 (or (and lt!4428 (not (>= lt!4438 lt!4425))) (and (not lt!4428) (not (>= lt!4438 lt!4425)))))))

(assert (=> b!26917 (= lt!4430 e!13776)))

(declare-fun c!5897 () Bool)

(assert (=> b!26917 (= c!5897 (or lt!4431 (not lt!4428)))))

(assert (=> b!26917 (= lt!4431 lt!4428)))

(assert (=> b!26917 (= lt!4425 (level!51 (ite lt!4428 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))

(assert (=> b!26917 (= lt!4438 (level!51 (ite lt!4428 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))

(declare-fun lt!4434 () Int)

(assert (=> b!26917 (= lt!4428 (< lt!4434 (- 1)))))

(declare-fun b!26918 () Bool)

(assert (=> b!26918 (= e!13781 (concatCorrectness!12 lt!4427 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))) (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))

(declare-fun b!26919 () Bool)

(assert (=> b!26919 (= e!13783 (CC!62 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))) (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))

(declare-fun d!14253 () Bool)

(assert (=> d!14253 e!13775))

(declare-fun res!12362 () Bool)

(assert (=> d!14253 (=> (not res!12362) (not e!13775))))

(assert (=> d!14253 (= res!12362 (is-CC!62 lt!4427))))

(assert (=> d!14253 (= lt!4427 e!13783)))

(declare-fun c!5896 () Bool)

(assert (=> d!14253 (= c!5896 (and (>= lt!4434 (- 1)) (<= lt!4434 1)))))

(assert (=> d!14253 (= lt!4434 (- (level!51 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (level!51 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(assert (=> d!14253 e!13778))

(declare-fun res!12365 () Bool)

(assert (=> d!14253 (=> (not res!12365) (not e!13778))))

(assert (=> d!14253 (= res!12365 e!13782)))

(declare-fun res!12361 () Bool)

(assert (=> d!14253 (=> (not res!12361) (not e!13782))))

(assert (=> d!14253 (= res!12361 (concInv!57 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))))

(assert (=> d!14253 (= (concatNonEmpty!15 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))) (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) lt!4427)))

(assert (= (and d!14253 res!12361) b!26906))

(assert (= (and d!14253 res!12365) b!26909))

(assert (= (and b!26909 res!12364) b!26913))

(assert (= (and b!26913 res!12358) b!26901))

(assert (= (and b!26901 res!12369) b!26899))

(assert (= (and b!26905 (is-CC!62 res!12363)) b!26914))

(assert (= (and b!26905 (is-Single!62 res!12363)) b!26903))

(assert (= (and b!26917 c!5897) b!26910))

(assert (= (and b!26917 (not c!5897)) b!26905))

(assert (= (and b!26917 c!5898) b!26915))

(assert (= (and b!26917 (not c!5898)) b!26916))

(assert (= (and b!26917 c!5895) b!26911))

(assert (= (and b!26917 (not c!5895)) b!26907))

(assert (= (and d!14253 c!5896) b!26919))

(assert (= (and d!14253 (not c!5896)) b!26917))

(assert (= (and d!14253 res!12362) b!26904))

(assert (= (and b!26904 res!12359) b!26908))

(assert (= (and b!26908 res!12360) b!26900))

(assert (= (and b!26900 res!12366) b!26912))

(assert (= (and b!26912 res!12370) b!26902))

(assert (= (and b!26902 res!12367) b!26918))

(declare-fun m!27865 () Bool)

(assert (=> b!26910 m!27865))

(declare-fun m!27867 () Bool)

(assert (=> b!26911 m!27867))

(declare-fun m!27869 () Bool)

(assert (=> b!26915 m!27869))

(declare-fun m!27871 () Bool)

(assert (=> b!26917 m!27871))

(declare-fun m!27873 () Bool)

(assert (=> b!26917 m!27873))

(declare-fun m!27875 () Bool)

(assert (=> b!26902 m!27875))

(declare-fun m!27877 () Bool)

(assert (=> b!26904 m!27877))

(declare-fun m!27879 () Bool)

(assert (=> b!26904 m!27879))

(declare-fun m!27881 () Bool)

(assert (=> b!26904 m!27881))

(declare-fun m!27883 () Bool)

(assert (=> b!26900 m!27883))

(assert (=> b!26908 m!27877))

(assert (=> b!26908 m!27879))

(assert (=> b!26908 m!27881))

(declare-fun m!27885 () Bool)

(assert (=> b!26913 m!27885))

(declare-fun m!27887 () Bool)

(assert (=> b!26918 m!27887))

(declare-fun m!27889 () Bool)

(assert (=> b!26899 m!27889))

(assert (=> d!14253 m!27877))

(assert (=> d!14253 m!27879))

(declare-fun m!27891 () Bool)

(assert (=> d!14253 m!27891))

(declare-fun m!27893 () Bool)

(assert (=> b!26909 m!27893))

(declare-fun m!27895 () Bool)

(assert (=> b!26901 m!27895))

(declare-fun m!27897 () Bool)

(assert (=> b!26912 m!27897))

(declare-fun m!27899 () Bool)

(assert (=> b!26906 m!27899))

(assert (=> b!26810 d!14253))

(assert (=> b!26865 d!14227))

(assert (=> b!26865 d!14229))

(assert (=> b!26813 d!14237))

(declare-fun d!14255 () Bool)

(declare-fun res!12372 () Bool)

(declare-fun e!13784 () Bool)

(assert (=> d!14255 (=> res!12372 e!13784)))

(assert (=> d!14255 (= res!12372 (not (is-CC!62 lt!4402)))))

(assert (=> d!14255 (= (concInv!57 lt!4402) e!13784)))

(declare-fun b!26921 () Bool)

(declare-fun res!12375 () Bool)

(declare-fun e!13785 () Bool)

(assert (=> b!26921 (=> (not res!12375) (not e!13785))))

(assert (=> b!26921 (= res!12375 (not (isEmpty!319 (right!710 lt!4402))))))

(declare-fun b!26920 () Bool)

(assert (=> b!26920 (= e!13784 e!13785)))

(declare-fun res!12373 () Bool)

(assert (=> b!26920 (=> (not res!12373) (not e!13785))))

(assert (=> b!26920 (= res!12373 (not (isEmpty!319 (left!707 lt!4402))))))

(declare-fun b!26923 () Bool)

(assert (=> b!26923 (= e!13785 (concInv!57 (right!710 lt!4402)))))

(declare-fun b!26922 () Bool)

(declare-fun res!12374 () Bool)

(assert (=> b!26922 (=> (not res!12374) (not e!13785))))

(assert (=> b!26922 (= res!12374 (concInv!57 (left!707 lt!4402)))))

(assert (= (and d!14255 (not res!12372)) b!26920))

(assert (= (and b!26920 res!12373) b!26921))

(assert (= (and b!26921 res!12375) b!26922))

(assert (= (and b!26922 res!12374) b!26923))

(declare-fun m!27901 () Bool)

(assert (=> b!26921 m!27901))

(declare-fun m!27903 () Bool)

(assert (=> b!26920 m!27903))

(declare-fun m!27905 () Bool)

(assert (=> b!26923 m!27905))

(declare-fun m!27907 () Bool)

(assert (=> b!26922 m!27907))

(assert (=> b!26800 d!14255))

(declare-fun b!26924 () Bool)

(declare-fun e!13787 () Bool)

(declare-fun e!13786 () Bool)

(assert (=> b!26924 (= e!13787 e!13786)))

(declare-fun res!12378 () Bool)

(assert (=> b!26924 (=> (not res!12378) (not e!13786))))

(assert (=> b!26924 (= res!12378 (>= (- (level!51 (left!707 (right!710 xs!533))) (level!51 (right!710 (right!710 xs!533)))) (- 1)))))

(declare-fun d!14257 () Bool)

(declare-fun res!12379 () Bool)

(assert (=> d!14257 (=> res!12379 e!13787)))

(assert (=> d!14257 (= res!12379 (not (is-CC!62 (right!710 xs!533))))))

(assert (=> d!14257 (= (balanced!58 (right!710 xs!533)) e!13787)))

(declare-fun b!26925 () Bool)

(declare-fun res!12377 () Bool)

(assert (=> b!26925 (=> (not res!12377) (not e!13786))))

(assert (=> b!26925 (= res!12377 (<= (- (level!51 (left!707 (right!710 xs!533))) (level!51 (right!710 (right!710 xs!533)))) 1))))

(declare-fun b!26927 () Bool)

(assert (=> b!26927 (= e!13786 (balanced!58 (right!710 (right!710 xs!533))))))

(declare-fun b!26926 () Bool)

(declare-fun res!12376 () Bool)

(assert (=> b!26926 (=> (not res!12376) (not e!13786))))

(assert (=> b!26926 (= res!12376 (balanced!58 (left!707 (right!710 xs!533))))))

(assert (= (and d!14257 (not res!12379)) b!26924))

(assert (= (and b!26924 res!12378) b!26925))

(assert (= (and b!26925 res!12377) b!26926))

(assert (= (and b!26926 res!12376) b!26927))

(assert (=> b!26924 m!27765))

(assert (=> b!26924 m!27763))

(assert (=> b!26925 m!27765))

(assert (=> b!26925 m!27763))

(assert (=> b!26927 m!27791))

(declare-fun m!27909 () Bool)

(assert (=> b!26926 m!27909))

(assert (=> b!26868 d!14257))

(declare-fun b!26929 () Bool)

(declare-fun e!13788 () Int)

(declare-fun lt!4443 () Int)

(declare-fun lt!4441 () Int)

(assert (=> b!26929 (= e!13788 (+ 1 (ite (>= lt!4443 lt!4441) lt!4443 lt!4441)))))

(assert (=> b!26929 (= lt!4441 (level!51 (right!710 (left!707 ys!77))))))

(assert (=> b!26929 (= lt!4443 (level!51 (left!707 (left!707 ys!77))))))

(declare-fun d!14259 () Bool)

(declare-fun lt!4442 () Int)

(assert (=> d!14259 (>= lt!4442 0)))

(assert (=> d!14259 (= lt!4442 e!13788)))

(declare-fun c!5899 () Bool)

(assert (=> d!14259 (= c!5899 (or (is-Empty!73 (left!707 ys!77)) (is-Single!62 (left!707 ys!77))))))

(assert (=> d!14259 (= (level!51 (left!707 ys!77)) lt!4442)))

(declare-fun b!26928 () Bool)

(assert (=> b!26928 (= e!13788 0)))

(assert (= (and d!14259 c!5899) b!26928))

(assert (= (and d!14259 (not c!5899)) b!26929))

(declare-fun m!27911 () Bool)

(assert (=> b!26929 m!27911))

(declare-fun m!27913 () Bool)

(assert (=> b!26929 m!27913))

(assert (=> b!26860 d!14259))

(declare-fun b!26931 () Bool)

(declare-fun e!13789 () Int)

(declare-fun lt!4446 () Int)

(declare-fun lt!4444 () Int)

(assert (=> b!26931 (= e!13789 (+ 1 (ite (>= lt!4446 lt!4444) lt!4446 lt!4444)))))

(assert (=> b!26931 (= lt!4444 (level!51 (right!710 (right!710 ys!77))))))

(assert (=> b!26931 (= lt!4446 (level!51 (left!707 (right!710 ys!77))))))

(declare-fun d!14261 () Bool)

(declare-fun lt!4445 () Int)

(assert (=> d!14261 (>= lt!4445 0)))

(assert (=> d!14261 (= lt!4445 e!13789)))

(declare-fun c!5900 () Bool)

(assert (=> d!14261 (= c!5900 (or (is-Empty!73 (right!710 ys!77)) (is-Single!62 (right!710 ys!77))))))

(assert (=> d!14261 (= (level!51 (right!710 ys!77)) lt!4445)))

(declare-fun b!26930 () Bool)

(assert (=> b!26930 (= e!13789 0)))

(assert (= (and d!14261 c!5900) b!26930))

(assert (= (and d!14261 (not c!5900)) b!26931))

(declare-fun m!27915 () Bool)

(assert (=> b!26931 m!27915))

(declare-fun m!27917 () Bool)

(assert (=> b!26931 m!27917))

(assert (=> b!26860 d!14261))

(declare-fun d!14263 () Bool)

(declare-fun res!12380 () Bool)

(declare-fun e!13790 () Bool)

(assert (=> d!14263 (=> res!12380 e!13790)))

(assert (=> d!14263 (= res!12380 (not (is-CC!62 (left!707 res!5533))))))

(assert (=> d!14263 (= (concInv!57 (left!707 res!5533)) e!13790)))

(declare-fun b!26933 () Bool)

(declare-fun res!12383 () Bool)

(declare-fun e!13791 () Bool)

(assert (=> b!26933 (=> (not res!12383) (not e!13791))))

(assert (=> b!26933 (= res!12383 (not (isEmpty!319 (right!710 (left!707 res!5533)))))))

(declare-fun b!26932 () Bool)

(assert (=> b!26932 (= e!13790 e!13791)))

(declare-fun res!12381 () Bool)

(assert (=> b!26932 (=> (not res!12381) (not e!13791))))

(assert (=> b!26932 (= res!12381 (not (isEmpty!319 (left!707 (left!707 res!5533)))))))

(declare-fun b!26935 () Bool)

(assert (=> b!26935 (= e!13791 (concInv!57 (right!710 (left!707 res!5533))))))

(declare-fun b!26934 () Bool)

(declare-fun res!12382 () Bool)

(assert (=> b!26934 (=> (not res!12382) (not e!13791))))

(assert (=> b!26934 (= res!12382 (concInv!57 (left!707 (left!707 res!5533))))))

(assert (= (and d!14263 (not res!12380)) b!26932))

(assert (= (and b!26932 res!12381) b!26933))

(assert (= (and b!26933 res!12383) b!26934))

(assert (= (and b!26934 res!12382) b!26935))

(declare-fun m!27919 () Bool)

(assert (=> b!26933 m!27919))

(declare-fun m!27921 () Bool)

(assert (=> b!26932 m!27921))

(declare-fun m!27923 () Bool)

(assert (=> b!26935 m!27923))

(declare-fun m!27925 () Bool)

(assert (=> b!26934 m!27925))

(assert (=> b!26751 d!14263))

(declare-fun b!26936 () Bool)

(declare-fun e!13793 () Bool)

(declare-fun e!13792 () Bool)

(assert (=> b!26936 (= e!13793 e!13792)))

(declare-fun res!12386 () Bool)

(assert (=> b!26936 (=> (not res!12386) (not e!13792))))

(assert (=> b!26936 (= res!12386 (>= (- (level!51 (left!707 (left!707 res!5533))) (level!51 (right!710 (left!707 res!5533)))) (- 1)))))

(declare-fun d!14265 () Bool)

(declare-fun res!12387 () Bool)

(assert (=> d!14265 (=> res!12387 e!13793)))

(assert (=> d!14265 (= res!12387 (not (is-CC!62 (left!707 res!5533))))))

(assert (=> d!14265 (= (balanced!58 (left!707 res!5533)) e!13793)))

(declare-fun b!26937 () Bool)

(declare-fun res!12385 () Bool)

(assert (=> b!26937 (=> (not res!12385) (not e!13792))))

(assert (=> b!26937 (= res!12385 (<= (- (level!51 (left!707 (left!707 res!5533))) (level!51 (right!710 (left!707 res!5533)))) 1))))

(declare-fun b!26939 () Bool)

(assert (=> b!26939 (= e!13792 (balanced!58 (right!710 (left!707 res!5533))))))

(declare-fun b!26938 () Bool)

(declare-fun res!12384 () Bool)

(assert (=> b!26938 (=> (not res!12384) (not e!13792))))

(assert (=> b!26938 (= res!12384 (balanced!58 (left!707 (left!707 res!5533))))))

(assert (= (and d!14265 (not res!12387)) b!26936))

(assert (= (and b!26936 res!12386) b!26937))

(assert (= (and b!26937 res!12385) b!26938))

(assert (= (and b!26938 res!12384) b!26939))

(declare-fun m!27927 () Bool)

(assert (=> b!26936 m!27927))

(declare-fun m!27929 () Bool)

(assert (=> b!26936 m!27929))

(assert (=> b!26937 m!27927))

(assert (=> b!26937 m!27929))

(declare-fun m!27931 () Bool)

(assert (=> b!26939 m!27931))

(declare-fun m!27933 () Bool)

(assert (=> b!26938 m!27933))

(assert (=> b!26830 d!14265))

(declare-fun b!26941 () Bool)

(declare-fun e!13794 () Int)

(declare-fun lt!4449 () Int)

(declare-fun lt!4447 () Int)

(assert (=> b!26941 (= e!13794 (+ 1 (ite (>= lt!4449 lt!4447) lt!4449 lt!4447)))))

(assert (=> b!26941 (= lt!4447 (level!51 (right!710 (left!707 res!5533))))))

(assert (=> b!26941 (= lt!4449 (level!51 (left!707 (left!707 res!5533))))))

(declare-fun d!14267 () Bool)

(declare-fun lt!4448 () Int)

(assert (=> d!14267 (>= lt!4448 0)))

(assert (=> d!14267 (= lt!4448 e!13794)))

(declare-fun c!5901 () Bool)

(assert (=> d!14267 (= c!5901 (or (is-Empty!73 (left!707 res!5533)) (is-Single!62 (left!707 res!5533))))))

(assert (=> d!14267 (= (level!51 (left!707 res!5533)) lt!4448)))

(declare-fun b!26940 () Bool)

(assert (=> b!26940 (= e!13794 0)))

(assert (= (and d!14267 c!5901) b!26940))

(assert (= (and d!14267 (not c!5901)) b!26941))

(assert (=> b!26941 m!27929))

(assert (=> b!26941 m!27927))

(assert (=> b!26829 d!14267))

(declare-fun b!26943 () Bool)

(declare-fun e!13795 () Int)

(declare-fun lt!4452 () Int)

(declare-fun lt!4450 () Int)

(assert (=> b!26943 (= e!13795 (+ 1 (ite (>= lt!4452 lt!4450) lt!4452 lt!4450)))))

(assert (=> b!26943 (= lt!4450 (level!51 (right!710 (right!710 res!5533))))))

(assert (=> b!26943 (= lt!4452 (level!51 (left!707 (right!710 res!5533))))))

(declare-fun d!14269 () Bool)

(declare-fun lt!4451 () Int)

(assert (=> d!14269 (>= lt!4451 0)))

(assert (=> d!14269 (= lt!4451 e!13795)))

(declare-fun c!5902 () Bool)

(assert (=> d!14269 (= c!5902 (or (is-Empty!73 (right!710 res!5533)) (is-Single!62 (right!710 res!5533))))))

(assert (=> d!14269 (= (level!51 (right!710 res!5533)) lt!4451)))

(declare-fun b!26942 () Bool)

(assert (=> b!26942 (= e!13795 0)))

(assert (= (and d!14269 c!5902) b!26942))

(assert (= (and d!14269 (not c!5902)) b!26943))

(declare-fun m!27935 () Bool)

(assert (=> b!26943 m!27935))

(declare-fun m!27937 () Bool)

(assert (=> b!26943 m!27937))

(assert (=> b!26829 d!14269))

(declare-fun d!14271 () Bool)

(assert (=> d!14271 (= (isEmpty!319 (right!710 (right!710 xs!533))) (= (right!710 (right!710 xs!533)) Empty!73))))

(assert (=> b!26801 d!14271))

(declare-fun d!14273 () Bool)

(declare-fun res!12388 () Bool)

(declare-fun e!13796 () Bool)

(assert (=> d!14273 (=> res!12388 e!13796)))

(assert (=> d!14273 (= res!12388 (not (is-CC!62 (left!707 ys!77))))))

(assert (=> d!14273 (= (concInv!57 (left!707 ys!77)) e!13796)))

(declare-fun b!26945 () Bool)

(declare-fun res!12391 () Bool)

(declare-fun e!13797 () Bool)

(assert (=> b!26945 (=> (not res!12391) (not e!13797))))

(assert (=> b!26945 (= res!12391 (not (isEmpty!319 (right!710 (left!707 ys!77)))))))

(declare-fun b!26944 () Bool)

(assert (=> b!26944 (= e!13796 e!13797)))

(declare-fun res!12389 () Bool)

(assert (=> b!26944 (=> (not res!12389) (not e!13797))))

(assert (=> b!26944 (= res!12389 (not (isEmpty!319 (left!707 (left!707 ys!77)))))))

(declare-fun b!26947 () Bool)

(assert (=> b!26947 (= e!13797 (concInv!57 (right!710 (left!707 ys!77))))))

(declare-fun b!26946 () Bool)

(declare-fun res!12390 () Bool)

(assert (=> b!26946 (=> (not res!12390) (not e!13797))))

(assert (=> b!26946 (= res!12390 (concInv!57 (left!707 (left!707 ys!77))))))

(assert (= (and d!14273 (not res!12388)) b!26944))

(assert (= (and b!26944 res!12389) b!26945))

(assert (= (and b!26945 res!12391) b!26946))

(assert (= (and b!26946 res!12390) b!26947))

(declare-fun m!27939 () Bool)

(assert (=> b!26945 m!27939))

(declare-fun m!27941 () Bool)

(assert (=> b!26944 m!27941))

(declare-fun m!27943 () Bool)

(assert (=> b!26947 m!27943))

(declare-fun m!27945 () Bool)

(assert (=> b!26946 m!27945))

(assert (=> b!26871 d!14273))

(declare-fun b!26948 () Bool)

(declare-fun e!13799 () Bool)

(declare-fun e!13798 () Bool)

(assert (=> b!26948 (= e!13799 e!13798)))

(declare-fun res!12394 () Bool)

(assert (=> b!26948 (=> (not res!12394) (not e!13798))))

(assert (=> b!26948 (= res!12394 (>= (- (level!51 (left!707 (right!710 ys!77))) (level!51 (right!710 (right!710 ys!77)))) (- 1)))))

(declare-fun d!14275 () Bool)

(declare-fun res!12395 () Bool)

(assert (=> d!14275 (=> res!12395 e!13799)))

(assert (=> d!14275 (= res!12395 (not (is-CC!62 (right!710 ys!77))))))

(assert (=> d!14275 (= (balanced!58 (right!710 ys!77)) e!13799)))

(declare-fun b!26949 () Bool)

(declare-fun res!12393 () Bool)

(assert (=> b!26949 (=> (not res!12393) (not e!13798))))

(assert (=> b!26949 (= res!12393 (<= (- (level!51 (left!707 (right!710 ys!77))) (level!51 (right!710 (right!710 ys!77)))) 1))))

(declare-fun b!26951 () Bool)

(assert (=> b!26951 (= e!13798 (balanced!58 (right!710 (right!710 ys!77))))))

(declare-fun b!26950 () Bool)

(declare-fun res!12392 () Bool)

(assert (=> b!26950 (=> (not res!12392) (not e!13798))))

(assert (=> b!26950 (= res!12392 (balanced!58 (left!707 (right!710 ys!77))))))

(assert (= (and d!14275 (not res!12395)) b!26948))

(assert (= (and b!26948 res!12394) b!26949))

(assert (= (and b!26949 res!12393) b!26950))

(assert (= (and b!26950 res!12392) b!26951))

(assert (=> b!26948 m!27917))

(assert (=> b!26948 m!27915))

(assert (=> b!26949 m!27917))

(assert (=> b!26949 m!27915))

(declare-fun m!27947 () Bool)

(assert (=> b!26951 m!27947))

(declare-fun m!27949 () Bool)

(assert (=> b!26950 m!27949))

(assert (=> b!26862 d!14275))

(declare-fun d!14277 () Bool)

(declare-fun lt!4455 () List!360)

(declare-fun size!269 (List!360) Int)

(declare-fun size!270 (Conc!63) Int)

(assert (=> d!14277 (= (size!269 lt!4455) (size!270 (left!707 (left!707 ys!77))))))

(declare-fun e!13804 () List!360)

(assert (=> d!14277 (= lt!4455 e!13804)))

(declare-fun c!5908 () Bool)

(assert (=> d!14277 (= c!5908 (is-Empty!73 (left!707 (left!707 ys!77))))))

(assert (=> d!14277 (= (toList!115 (left!707 (left!707 ys!77))) lt!4455)))

(declare-fun b!26963 () Bool)

(declare-fun e!13805 () List!360)

(assert (=> b!26963 (= e!13805 (++!40 (toList!115 (left!707 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 (left!707 ys!77))))))))

(declare-fun b!26962 () Bool)

(assert (=> b!26962 (= e!13805 (Cons!354 (x!8925 (left!707 (left!707 ys!77))) Nil!355))))

(declare-fun b!26961 () Bool)

(assert (=> b!26961 (= e!13804 e!13805)))

(declare-fun c!5907 () Bool)

(assert (=> b!26961 (= c!5907 (is-Single!62 (left!707 (left!707 ys!77))))))

(declare-fun b!26960 () Bool)

(assert (=> b!26960 (= e!13804 Nil!355)))

(assert (= (and b!26961 c!5907) b!26962))

(assert (= (and b!26961 (not c!5907)) b!26963))

(assert (= (and d!14277 c!5908) b!26960))

(assert (= (and d!14277 (not c!5908)) b!26961))

(declare-fun m!27951 () Bool)

(assert (=> d!14277 m!27951))

(declare-fun m!27953 () Bool)

(assert (=> d!14277 m!27953))

(declare-fun m!27955 () Bool)

(assert (=> b!26963 m!27955))

(declare-fun m!27957 () Bool)

(assert (=> b!26963 m!27957))

(assert (=> b!26963 m!27955))

(assert (=> b!26963 m!27957))

(declare-fun m!27959 () Bool)

(assert (=> b!26963 m!27959))

(assert (=> b!26858 d!14277))

(declare-fun d!14279 () Bool)

(declare-fun lt!4456 () List!360)

(assert (=> d!14279 (= (size!269 lt!4456) (size!270 (right!710 ys!77)))))

(declare-fun e!13806 () List!360)

(assert (=> d!14279 (= lt!4456 e!13806)))

(declare-fun c!5910 () Bool)

(assert (=> d!14279 (= c!5910 (is-Empty!73 (right!710 ys!77)))))

(assert (=> d!14279 (= (toList!115 (right!710 ys!77)) lt!4456)))

(declare-fun b!26967 () Bool)

(declare-fun e!13807 () List!360)

(assert (=> b!26967 (= e!13807 (++!40 (toList!115 (left!707 (right!710 ys!77))) (toList!115 (right!710 (right!710 ys!77)))))))

(declare-fun b!26966 () Bool)

(assert (=> b!26966 (= e!13807 (Cons!354 (x!8925 (right!710 ys!77)) Nil!355))))

(declare-fun b!26965 () Bool)

(assert (=> b!26965 (= e!13806 e!13807)))

(declare-fun c!5909 () Bool)

(assert (=> b!26965 (= c!5909 (is-Single!62 (right!710 ys!77)))))

(declare-fun b!26964 () Bool)

(assert (=> b!26964 (= e!13806 Nil!355)))

(assert (= (and b!26965 c!5909) b!26966))

(assert (= (and b!26965 (not c!5909)) b!26967))

(assert (= (and d!14279 c!5910) b!26964))

(assert (= (and d!14279 (not c!5910)) b!26965))

(declare-fun m!27961 () Bool)

(assert (=> d!14279 m!27961))

(declare-fun m!27963 () Bool)

(assert (=> d!14279 m!27963))

(declare-fun m!27965 () Bool)

(assert (=> b!26967 m!27965))

(declare-fun m!27967 () Bool)

(assert (=> b!26967 m!27967))

(assert (=> b!26967 m!27965))

(assert (=> b!26967 m!27967))

(declare-fun m!27969 () Bool)

(assert (=> b!26967 m!27969))

(assert (=> b!26858 d!14279))

(declare-fun d!14281 () Bool)

(declare-fun lt!4457 () List!360)

(assert (=> d!14281 (= (size!269 lt!4457) (size!270 (right!710 (left!707 ys!77))))))

(declare-fun e!13808 () List!360)

(assert (=> d!14281 (= lt!4457 e!13808)))

(declare-fun c!5912 () Bool)

(assert (=> d!14281 (= c!5912 (is-Empty!73 (right!710 (left!707 ys!77))))))

(assert (=> d!14281 (= (toList!115 (right!710 (left!707 ys!77))) lt!4457)))

(declare-fun b!26971 () Bool)

(declare-fun e!13809 () List!360)

(assert (=> b!26971 (= e!13809 (++!40 (toList!115 (left!707 (right!710 (left!707 ys!77)))) (toList!115 (right!710 (right!710 (left!707 ys!77))))))))

(declare-fun b!26970 () Bool)

(assert (=> b!26970 (= e!13809 (Cons!354 (x!8925 (right!710 (left!707 ys!77))) Nil!355))))

(declare-fun b!26969 () Bool)

(assert (=> b!26969 (= e!13808 e!13809)))

(declare-fun c!5911 () Bool)

(assert (=> b!26969 (= c!5911 (is-Single!62 (right!710 (left!707 ys!77))))))

(declare-fun b!26968 () Bool)

(assert (=> b!26968 (= e!13808 Nil!355)))

(assert (= (and b!26969 c!5911) b!26970))

(assert (= (and b!26969 (not c!5911)) b!26971))

(assert (= (and d!14281 c!5912) b!26968))

(assert (= (and d!14281 (not c!5912)) b!26969))

(declare-fun m!27971 () Bool)

(assert (=> d!14281 m!27971))

(declare-fun m!27973 () Bool)

(assert (=> d!14281 m!27973))

(declare-fun m!27975 () Bool)

(assert (=> b!26971 m!27975))

(declare-fun m!27977 () Bool)

(assert (=> b!26971 m!27977))

(assert (=> b!26971 m!27975))

(assert (=> b!26971 m!27977))

(declare-fun m!27979 () Bool)

(assert (=> b!26971 m!27979))

(assert (=> b!26858 d!14281))

(declare-fun d!14283 () Bool)

(declare-fun lt!4458 () List!360)

(assert (=> d!14283 (= (size!269 lt!4458) (size!270 xs!533))))

(declare-fun e!13810 () List!360)

(assert (=> d!14283 (= lt!4458 e!13810)))

(declare-fun c!5914 () Bool)

(assert (=> d!14283 (= c!5914 (is-Empty!73 xs!533))))

(assert (=> d!14283 (= (toList!115 xs!533) lt!4458)))

(declare-fun b!26975 () Bool)

(declare-fun e!13811 () List!360)

(assert (=> b!26975 (= e!13811 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (right!710 xs!533))))))

(declare-fun b!26974 () Bool)

(assert (=> b!26974 (= e!13811 (Cons!354 (x!8925 xs!533) Nil!355))))

(declare-fun b!26973 () Bool)

(assert (=> b!26973 (= e!13810 e!13811)))

(declare-fun c!5913 () Bool)

(assert (=> b!26973 (= c!5913 (is-Single!62 xs!533))))

(declare-fun b!26972 () Bool)

(assert (=> b!26972 (= e!13810 Nil!355)))

(assert (= (and b!26973 c!5913) b!26974))

(assert (= (and b!26973 (not c!5913)) b!26975))

(assert (= (and d!14283 c!5914) b!26972))

(assert (= (and d!14283 (not c!5914)) b!26973))

(declare-fun m!27981 () Bool)

(assert (=> d!14283 m!27981))

(declare-fun m!27983 () Bool)

(assert (=> d!14283 m!27983))

(assert (=> b!26975 m!27805))

(assert (=> b!26975 m!27807))

(assert (=> b!26975 m!27805))

(assert (=> b!26975 m!27807))

(declare-fun m!27985 () Bool)

(assert (=> b!26975 m!27985))

(assert (=> b!26858 d!14283))

(declare-fun b!26985 () Bool)

(declare-fun e!13816 () List!360)

(assert (=> b!26985 (= e!13816 (Cons!354 (h!271 (toList!115 xs!533)) (++!40 (t!4374 (toList!115 xs!533)) (toList!115 (left!707 (left!707 ys!77))))))))

(declare-fun d!14285 () Bool)

(declare-fun e!13817 () Bool)

(assert (=> d!14285 e!13817))

(declare-fun res!12402 () Bool)

(assert (=> d!14285 (=> (not res!12402) (not e!13817))))

(declare-fun lt!4461 () List!360)

(declare-fun content!70 (List!360) (Set T!1827))

(assert (=> d!14285 (= res!12402 (= (content!70 lt!4461) (union (content!70 (toList!115 xs!533)) (content!70 (toList!115 (left!707 (left!707 ys!77)))))))))

(assert (=> d!14285 (= lt!4461 e!13816)))

(declare-fun c!5917 () Bool)

(assert (=> d!14285 (= c!5917 (is-Nil!355 (toList!115 xs!533)))))

(assert (=> d!14285 (= (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) lt!4461)))

(declare-fun b!26986 () Bool)

(declare-fun res!12403 () Bool)

(assert (=> b!26986 (=> (not res!12403) (not e!13817))))

(assert (=> b!26986 (= res!12403 (= (size!269 lt!4461) (+ (size!269 (toList!115 xs!533)) (size!269 (toList!115 (left!707 (left!707 ys!77)))))))))

(declare-fun b!26984 () Bool)

(assert (=> b!26984 (= e!13816 (toList!115 (left!707 (left!707 ys!77))))))

(declare-fun b!26987 () Bool)

(assert (=> b!26987 (= e!13817 (or (not (= (toList!115 (left!707 (left!707 ys!77))) Nil!355)) (= lt!4461 (toList!115 xs!533))))))

(assert (= (and d!14285 c!5917) b!26984))

(assert (= (and d!14285 (not c!5917)) b!26985))

(assert (= (and d!14285 res!12402) b!26986))

(assert (= (and b!26986 res!12403) b!26987))

(assert (=> b!26985 m!27815))

(declare-fun m!27987 () Bool)

(assert (=> b!26985 m!27987))

(declare-fun m!27989 () Bool)

(assert (=> d!14285 m!27989))

(assert (=> d!14285 m!27797))

(declare-fun m!27991 () Bool)

(assert (=> d!14285 m!27991))

(assert (=> d!14285 m!27815))

(declare-fun m!27993 () Bool)

(assert (=> d!14285 m!27993))

(declare-fun m!27995 () Bool)

(assert (=> b!26986 m!27995))

(assert (=> b!26986 m!27797))

(declare-fun m!27997 () Bool)

(assert (=> b!26986 m!27997))

(assert (=> b!26986 m!27815))

(declare-fun m!27999 () Bool)

(assert (=> b!26986 m!27999))

(assert (=> b!26858 d!14285))

(declare-fun b!26992 () Bool)

(declare-fun e!13820 () Bool)

(assert (=> b!26992 (= e!13820 (= (++!40 (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77)))) (toList!115 (right!710 ys!77))) (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (++!40 (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))))))))

(declare-fun lt!4464 () Bool)

(assert (=> b!26992 (= lt!4464 (appendAssoc!8 (t!4374 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))) (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))))))

(declare-fun d!14287 () Bool)

(assert (=> d!14287 e!13820))

(declare-fun c!5920 () Bool)

(assert (=> d!14287 (= c!5920 (is-Cons!354 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))))))

(assert (=> d!14287 (= (appendAssoc!8 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))) true)))

(declare-fun b!26993 () Bool)

(assert (=> b!26993 (= e!13820 (= (++!40 (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77)))) (toList!115 (right!710 ys!77))) (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (++!40 (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))))))))

(assert (= (and d!14287 c!5920) b!26992))

(assert (= (and d!14287 (not c!5920)) b!26993))

(assert (=> b!26992 m!27813))

(assert (=> b!26992 m!27801))

(declare-fun m!28001 () Bool)

(assert (=> b!26992 m!28001))

(assert (=> b!26992 m!27817))

(declare-fun m!28003 () Bool)

(assert (=> b!26992 m!28003))

(declare-fun m!28005 () Bool)

(assert (=> b!26992 m!28005))

(assert (=> b!26992 m!27813))

(assert (=> b!26992 m!27801))

(assert (=> b!26992 m!28003))

(assert (=> b!26992 m!27817))

(assert (=> b!26992 m!27813))

(declare-fun m!28007 () Bool)

(assert (=> b!26992 m!28007))

(assert (=> b!26992 m!28007))

(assert (=> b!26992 m!27801))

(declare-fun m!28009 () Bool)

(assert (=> b!26992 m!28009))

(assert (=> b!26993 m!27817))

(assert (=> b!26993 m!27813))

(assert (=> b!26993 m!28007))

(assert (=> b!26993 m!28007))

(assert (=> b!26993 m!27801))

(assert (=> b!26993 m!28009))

(assert (=> b!26993 m!27813))

(assert (=> b!26993 m!27801))

(assert (=> b!26993 m!28003))

(assert (=> b!26993 m!27817))

(assert (=> b!26993 m!28003))

(assert (=> b!26993 m!28005))

(assert (=> b!26858 d!14287))

(assert (=> b!26809 d!14247))

(assert (=> b!26808 d!14217))

(declare-fun b!26995 () Bool)

(declare-fun e!13821 () Int)

(declare-fun lt!4467 () Int)

(declare-fun lt!4465 () Int)

(assert (=> b!26995 (= e!13821 (+ 1 (ite (>= lt!4467 lt!4465) lt!4467 lt!4465)))))

(assert (=> b!26995 (= lt!4465 (level!51 (right!710 (right!710 (right!710 xs!533)))))))

(assert (=> b!26995 (= lt!4467 (level!51 (left!707 (right!710 (right!710 xs!533)))))))

(declare-fun d!14289 () Bool)

(declare-fun lt!4466 () Int)

(assert (=> d!14289 (>= lt!4466 0)))

(assert (=> d!14289 (= lt!4466 e!13821)))

(declare-fun c!5921 () Bool)

(assert (=> d!14289 (= c!5921 (or (is-Empty!73 (right!710 (right!710 xs!533))) (is-Single!62 (right!710 (right!710 xs!533)))))))

(assert (=> d!14289 (= (level!51 (right!710 (right!710 xs!533))) lt!4466)))

(declare-fun b!26994 () Bool)

(assert (=> b!26994 (= e!13821 0)))

(assert (= (and d!14289 c!5921) b!26994))

(assert (= (and d!14289 (not c!5921)) b!26995))

(declare-fun m!28011 () Bool)

(assert (=> b!26995 m!28011))

(declare-fun m!28013 () Bool)

(assert (=> b!26995 m!28013))

(assert (=> b!26808 d!14289))

(declare-fun b!26997 () Bool)

(declare-fun e!13822 () Int)

(declare-fun lt!4470 () Int)

(declare-fun lt!4468 () Int)

(assert (=> b!26997 (= e!13822 (+ 1 (ite (>= lt!4470 lt!4468) lt!4470 lt!4468)))))

(assert (=> b!26997 (= lt!4468 (level!51 (right!710 lt!4402)))))

(assert (=> b!26997 (= lt!4470 (level!51 (left!707 lt!4402)))))

(declare-fun d!14291 () Bool)

(declare-fun lt!4469 () Int)

(assert (=> d!14291 (>= lt!4469 0)))

(assert (=> d!14291 (= lt!4469 e!13822)))

(declare-fun c!5922 () Bool)

(assert (=> d!14291 (= c!5922 (or (is-Empty!73 lt!4402) (is-Single!62 lt!4402)))))

(assert (=> d!14291 (= (level!51 lt!4402) lt!4469)))

(declare-fun b!26996 () Bool)

(assert (=> b!26996 (= e!13822 0)))

(assert (= (and d!14291 c!5922) b!26996))

(assert (= (and d!14291 (not c!5922)) b!26997))

(declare-fun m!28015 () Bool)

(assert (=> b!26997 m!28015))

(declare-fun m!28017 () Bool)

(assert (=> b!26997 m!28017))

(assert (=> b!26808 d!14291))

(declare-fun d!14293 () Bool)

(declare-fun res!12404 () Bool)

(declare-fun e!13823 () Bool)

(assert (=> d!14293 (=> res!12404 e!13823)))

(assert (=> d!14293 (= res!12404 (not (is-CC!62 (right!710 xs!533))))))

(assert (=> d!14293 (= (concInv!57 (right!710 xs!533)) e!13823)))

(declare-fun b!26999 () Bool)

(declare-fun res!12407 () Bool)

(declare-fun e!13824 () Bool)

(assert (=> b!26999 (=> (not res!12407) (not e!13824))))

(assert (=> b!26999 (= res!12407 (not (isEmpty!319 (right!710 (right!710 xs!533)))))))

(declare-fun b!26998 () Bool)

(assert (=> b!26998 (= e!13823 e!13824)))

(declare-fun res!12405 () Bool)

(assert (=> b!26998 (=> (not res!12405) (not e!13824))))

(assert (=> b!26998 (= res!12405 (not (isEmpty!319 (left!707 (right!710 xs!533)))))))

(declare-fun b!27001 () Bool)

(assert (=> b!27001 (= e!13824 (concInv!57 (right!710 (right!710 xs!533))))))

(declare-fun b!27000 () Bool)

(declare-fun res!12406 () Bool)

(assert (=> b!27000 (=> (not res!12406) (not e!13824))))

(assert (=> b!27000 (= res!12406 (concInv!57 (left!707 (right!710 xs!533))))))

(assert (= (and d!14293 (not res!12404)) b!26998))

(assert (= (and b!26998 res!12405) b!26999))

(assert (= (and b!26999 res!12407) b!27000))

(assert (= (and b!27000 res!12406) b!27001))

(assert (=> b!26999 m!27787))

(declare-fun m!28019 () Bool)

(assert (=> b!26998 m!28019))

(assert (=> b!27001 m!27785))

(declare-fun m!28021 () Bool)

(assert (=> b!27000 m!28021))

(assert (=> b!26738 d!14293))

(assert (=> b!26746 d!14229))

(assert (=> b!26746 d!14227))

(declare-fun b!27002 () Bool)

(declare-fun e!13826 () Bool)

(declare-fun e!13825 () Bool)

(assert (=> b!27002 (= e!13826 e!13825)))

(declare-fun res!12410 () Bool)

(assert (=> b!27002 (=> (not res!12410) (not e!13825))))

(assert (=> b!27002 (= res!12410 (>= (- (level!51 (left!707 (right!710 (right!710 xs!533)))) (level!51 (right!710 (right!710 (right!710 xs!533))))) (- 1)))))

(declare-fun d!14295 () Bool)

(declare-fun res!12411 () Bool)

(assert (=> d!14295 (=> res!12411 e!13826)))

(assert (=> d!14295 (= res!12411 (not (is-CC!62 (right!710 (right!710 xs!533)))))))

(assert (=> d!14295 (= (balanced!58 (right!710 (right!710 xs!533))) e!13826)))

(declare-fun b!27003 () Bool)

(declare-fun res!12409 () Bool)

(assert (=> b!27003 (=> (not res!12409) (not e!13825))))

(assert (=> b!27003 (= res!12409 (<= (- (level!51 (left!707 (right!710 (right!710 xs!533)))) (level!51 (right!710 (right!710 (right!710 xs!533))))) 1))))

(declare-fun b!27005 () Bool)

(assert (=> b!27005 (= e!13825 (balanced!58 (right!710 (right!710 (right!710 xs!533)))))))

(declare-fun b!27004 () Bool)

(declare-fun res!12408 () Bool)

(assert (=> b!27004 (=> (not res!12408) (not e!13825))))

(assert (=> b!27004 (= res!12408 (balanced!58 (left!707 (right!710 (right!710 xs!533)))))))

(assert (= (and d!14295 (not res!12411)) b!27002))

(assert (= (and b!27002 res!12410) b!27003))

(assert (= (and b!27003 res!12409) b!27004))

(assert (= (and b!27004 res!12408) b!27005))

(assert (=> b!27002 m!28013))

(assert (=> b!27002 m!28011))

(assert (=> b!27003 m!28013))

(assert (=> b!27003 m!28011))

(declare-fun m!28023 () Bool)

(assert (=> b!27005 m!28023))

(declare-fun m!28025 () Bool)

(assert (=> b!27004 m!28025))

(assert (=> b!26806 d!14295))

(declare-fun d!14297 () Bool)

(assert (=> d!14297 (= (concatCorrectness!12 lt!4402 (right!710 (right!710 xs!533)) ys!77) (= (toList!115 lt!4402) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))))))

(declare-fun bs!5093 () Bool)

(assert (= bs!5093 d!14297))

(assert (=> bs!5093 m!27825))

(assert (=> bs!5093 m!27809))

(assert (=> bs!5093 m!27829))

(assert (=> bs!5093 m!27809))

(declare-fun m!28027 () Bool)

(assert (=> bs!5093 m!28027))

(assert (=> bs!5093 m!27825))

(assert (=> b!26818 d!14297))

(declare-fun d!14299 () Bool)

(declare-fun res!12412 () Bool)

(declare-fun e!13827 () Bool)

(assert (=> d!14299 (=> res!12412 e!13827)))

(assert (=> d!14299 (= res!12412 (not (is-CC!62 (right!710 res!5533))))))

(assert (=> d!14299 (= (concInv!57 (right!710 res!5533)) e!13827)))

(declare-fun b!27007 () Bool)

(declare-fun res!12415 () Bool)

(declare-fun e!13828 () Bool)

(assert (=> b!27007 (=> (not res!12415) (not e!13828))))

(assert (=> b!27007 (= res!12415 (not (isEmpty!319 (right!710 (right!710 res!5533)))))))

(declare-fun b!27006 () Bool)

(assert (=> b!27006 (= e!13827 e!13828)))

(declare-fun res!12413 () Bool)

(assert (=> b!27006 (=> (not res!12413) (not e!13828))))

(assert (=> b!27006 (= res!12413 (not (isEmpty!319 (left!707 (right!710 res!5533)))))))

(declare-fun b!27009 () Bool)

(assert (=> b!27009 (= e!13828 (concInv!57 (right!710 (right!710 res!5533))))))

(declare-fun b!27008 () Bool)

(declare-fun res!12414 () Bool)

(assert (=> b!27008 (=> (not res!12414) (not e!13828))))

(assert (=> b!27008 (= res!12414 (concInv!57 (left!707 (right!710 res!5533))))))

(assert (= (and d!14299 (not res!12412)) b!27006))

(assert (= (and b!27006 res!12413) b!27007))

(assert (= (and b!27007 res!12415) b!27008))

(assert (= (and b!27008 res!12414) b!27009))

(declare-fun m!28029 () Bool)

(assert (=> b!27007 m!28029))

(declare-fun m!28031 () Bool)

(assert (=> b!27006 m!28031))

(declare-fun m!28033 () Bool)

(assert (=> b!27009 m!28033))

(declare-fun m!28035 () Bool)

(assert (=> b!27008 m!28035))

(assert (=> b!26752 d!14299))

(declare-fun b!27010 () Bool)

(declare-fun e!13830 () Bool)

(declare-fun e!13829 () Bool)

(assert (=> b!27010 (= e!13830 e!13829)))

(declare-fun res!12418 () Bool)

(assert (=> b!27010 (=> (not res!12418) (not e!13829))))

(assert (=> b!27010 (= res!12418 (>= (- (level!51 (left!707 lt!4402)) (level!51 (right!710 lt!4402))) (- 1)))))

(declare-fun d!14301 () Bool)

(declare-fun res!12419 () Bool)

(assert (=> d!14301 (=> res!12419 e!13830)))

(assert (=> d!14301 (= res!12419 (not (is-CC!62 lt!4402)))))

(assert (=> d!14301 (= (balanced!58 lt!4402) e!13830)))

(declare-fun b!27011 () Bool)

(declare-fun res!12417 () Bool)

(assert (=> b!27011 (=> (not res!12417) (not e!13829))))

(assert (=> b!27011 (= res!12417 (<= (- (level!51 (left!707 lt!4402)) (level!51 (right!710 lt!4402))) 1))))

(declare-fun b!27013 () Bool)

(assert (=> b!27013 (= e!13829 (balanced!58 (right!710 lt!4402)))))

(declare-fun b!27012 () Bool)

(declare-fun res!12416 () Bool)

(assert (=> b!27012 (=> (not res!12416) (not e!13829))))

(assert (=> b!27012 (= res!12416 (balanced!58 (left!707 lt!4402)))))

(assert (= (and d!14301 (not res!12419)) b!27010))

(assert (= (and b!27010 res!12418) b!27011))

(assert (= (and b!27011 res!12417) b!27012))

(assert (= (and b!27012 res!12416) b!27013))

(assert (=> b!27010 m!28017))

(assert (=> b!27010 m!28015))

(assert (=> b!27011 m!28017))

(assert (=> b!27011 m!28015))

(declare-fun m!28037 () Bool)

(assert (=> b!27013 m!28037))

(declare-fun m!28039 () Bool)

(assert (=> b!27012 m!28039))

(assert (=> b!26812 d!14301))

(declare-fun d!14303 () Bool)

(assert (=> d!14303 (= (isEmpty!319 (left!707 res!5533)) (= (left!707 res!5533) Empty!73))))

(assert (=> b!26749 d!14303))

(declare-fun b!27014 () Bool)

(declare-fun e!13832 () Bool)

(declare-fun e!13831 () Bool)

(assert (=> b!27014 (= e!13832 e!13831)))

(declare-fun res!12422 () Bool)

(assert (=> b!27014 (=> (not res!12422) (not e!13831))))

(assert (=> b!27014 (= res!12422 (>= (- (level!51 (left!707 (right!710 res!5533))) (level!51 (right!710 (right!710 res!5533)))) (- 1)))))

(declare-fun d!14305 () Bool)

(declare-fun res!12423 () Bool)

(assert (=> d!14305 (=> res!12423 e!13832)))

(assert (=> d!14305 (= res!12423 (not (is-CC!62 (right!710 res!5533))))))

(assert (=> d!14305 (= (balanced!58 (right!710 res!5533)) e!13832)))

(declare-fun b!27015 () Bool)

(declare-fun res!12421 () Bool)

(assert (=> b!27015 (=> (not res!12421) (not e!13831))))

(assert (=> b!27015 (= res!12421 (<= (- (level!51 (left!707 (right!710 res!5533))) (level!51 (right!710 (right!710 res!5533)))) 1))))

(declare-fun b!27017 () Bool)

(assert (=> b!27017 (= e!13831 (balanced!58 (right!710 (right!710 res!5533))))))

(declare-fun b!27016 () Bool)

(declare-fun res!12420 () Bool)

(assert (=> b!27016 (=> (not res!12420) (not e!13831))))

(assert (=> b!27016 (= res!12420 (balanced!58 (left!707 (right!710 res!5533))))))

(assert (= (and d!14305 (not res!12423)) b!27014))

(assert (= (and b!27014 res!12422) b!27015))

(assert (= (and b!27015 res!12421) b!27016))

(assert (= (and b!27016 res!12420) b!27017))

(assert (=> b!27014 m!27937))

(assert (=> b!27014 m!27935))

(assert (=> b!27015 m!27937))

(assert (=> b!27015 m!27935))

(declare-fun m!28041 () Bool)

(assert (=> b!27017 m!28041))

(declare-fun m!28043 () Bool)

(assert (=> b!27016 m!28043))

(assert (=> b!26831 d!14305))

(declare-fun d!14307 () Bool)

(assert (=> d!14307 (= (isEmpty!319 (right!710 ys!77)) (= (right!710 ys!77) Empty!73))))

(assert (=> b!26870 d!14307))

(declare-fun b!27018 () Bool)

(declare-fun e!13833 () Bool)

(assert (=> b!27018 (= e!13833 (= (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 ys!77))) (toList!115 (right!710 ys!77))) (++!40 (toList!115 xs!533) (++!40 (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))))))))

(declare-fun lt!4471 () Bool)

(assert (=> b!27018 (= lt!4471 (appendAssoc!8 (t!4374 (toList!115 xs!533)) (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))))))

(declare-fun d!14309 () Bool)

(assert (=> d!14309 e!13833))

(declare-fun c!5923 () Bool)

(assert (=> d!14309 (= c!5923 (is-Cons!354 (toList!115 xs!533)))))

(assert (=> d!14309 (= (appendAssoc!8 (toList!115 xs!533) (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))) true)))

(declare-fun b!27019 () Bool)

(assert (=> b!27019 (= e!13833 (= (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 ys!77))) (toList!115 (right!710 ys!77))) (++!40 (toList!115 xs!533) (++!40 (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))))))))

(assert (= (and d!14309 c!5923) b!27018))

(assert (= (and d!14309 (not c!5923)) b!27019))

(assert (=> b!27018 m!27799))

(assert (=> b!27018 m!27801))

(declare-fun m!28045 () Bool)

(assert (=> b!27018 m!28045))

(assert (=> b!27018 m!27797))

(declare-fun m!28047 () Bool)

(assert (=> b!27018 m!28047))

(declare-fun m!28049 () Bool)

(assert (=> b!27018 m!28049))

(assert (=> b!27018 m!27799))

(assert (=> b!27018 m!27801))

(assert (=> b!27018 m!28047))

(assert (=> b!27018 m!27797))

(assert (=> b!27018 m!27799))

(declare-fun m!28051 () Bool)

(assert (=> b!27018 m!28051))

(assert (=> b!27018 m!28051))

(assert (=> b!27018 m!27801))

(declare-fun m!28053 () Bool)

(assert (=> b!27018 m!28053))

(assert (=> b!27019 m!27797))

(assert (=> b!27019 m!27799))

(assert (=> b!27019 m!28051))

(assert (=> b!27019 m!28051))

(assert (=> b!27019 m!27801))

(assert (=> b!27019 m!28053))

(assert (=> b!27019 m!27799))

(assert (=> b!27019 m!27801))

(assert (=> b!27019 m!28047))

(assert (=> b!27019 m!27797))

(assert (=> b!27019 m!28047))

(assert (=> b!27019 m!28049))

(assert (=> b!26856 d!14309))

(assert (=> b!26856 d!14283))

(declare-fun d!14311 () Bool)

(declare-fun lt!4472 () List!360)

(assert (=> d!14311 (= (size!269 lt!4472) (size!270 (left!707 ys!77)))))

(declare-fun e!13834 () List!360)

(assert (=> d!14311 (= lt!4472 e!13834)))

(declare-fun c!5925 () Bool)

(assert (=> d!14311 (= c!5925 (is-Empty!73 (left!707 ys!77)))))

(assert (=> d!14311 (= (toList!115 (left!707 ys!77)) lt!4472)))

(declare-fun b!27023 () Bool)

(declare-fun e!13835 () List!360)

(assert (=> b!27023 (= e!13835 (++!40 (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))))))

(declare-fun b!27022 () Bool)

(assert (=> b!27022 (= e!13835 (Cons!354 (x!8925 (left!707 ys!77)) Nil!355))))

(declare-fun b!27021 () Bool)

(assert (=> b!27021 (= e!13834 e!13835)))

(declare-fun c!5924 () Bool)

(assert (=> b!27021 (= c!5924 (is-Single!62 (left!707 ys!77)))))

(declare-fun b!27020 () Bool)

(assert (=> b!27020 (= e!13834 Nil!355)))

(assert (= (and b!27021 c!5924) b!27022))

(assert (= (and b!27021 (not c!5924)) b!27023))

(assert (= (and d!14311 c!5925) b!27020))

(assert (= (and d!14311 (not c!5925)) b!27021))

(declare-fun m!28055 () Bool)

(assert (=> d!14311 m!28055))

(declare-fun m!28057 () Bool)

(assert (=> d!14311 m!28057))

(assert (=> b!27023 m!27815))

(assert (=> b!27023 m!27813))

(assert (=> b!27023 m!27815))

(assert (=> b!27023 m!27813))

(declare-fun m!28059 () Bool)

(assert (=> b!27023 m!28059))

(assert (=> b!26856 d!14311))

(assert (=> b!26856 d!14279))

(declare-fun d!14313 () Bool)

(assert (=> d!14313 (= (isEmpty!319 (right!710 res!5533)) (= (right!710 res!5533) Empty!73))))

(assert (=> b!26750 d!14313))

(assert (=> b!26804 d!14217))

(assert (=> b!26804 d!14289))

(assert (=> b!26804 d!14291))

(assert (=> b!26748 d!14269))

(assert (=> b!26748 d!14267))

(declare-fun b!27024 () Bool)

(declare-fun e!13836 () Bool)

(assert (=> b!27024 (= e!13836 (= (++!40 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (right!710 xs!533))) (toList!115 ys!77)) (++!40 (toList!115 (left!707 xs!533)) (++!40 (toList!115 (right!710 xs!533)) (toList!115 ys!77)))))))

(declare-fun lt!4473 () Bool)

(assert (=> b!27024 (= lt!4473 (appendAssoc!8 (t!4374 (toList!115 (left!707 xs!533))) (toList!115 (right!710 xs!533)) (toList!115 ys!77)))))

(declare-fun d!14315 () Bool)

(assert (=> d!14315 e!13836))

(declare-fun c!5926 () Bool)

(assert (=> d!14315 (= c!5926 (is-Cons!354 (toList!115 (left!707 xs!533))))))

(assert (=> d!14315 (= (appendAssoc!8 (toList!115 (left!707 xs!533)) (toList!115 (right!710 xs!533)) (toList!115 ys!77)) true)))

(declare-fun b!27025 () Bool)

(assert (=> b!27025 (= e!13836 (= (++!40 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (right!710 xs!533))) (toList!115 ys!77)) (++!40 (toList!115 (left!707 xs!533)) (++!40 (toList!115 (right!710 xs!533)) (toList!115 ys!77)))))))

(assert (= (and d!14315 c!5926) b!27024))

(assert (= (and d!14315 (not c!5926)) b!27025))

(assert (=> b!27024 m!27807))

(assert (=> b!27024 m!27809))

(declare-fun m!28061 () Bool)

(assert (=> b!27024 m!28061))

(assert (=> b!27024 m!27805))

(declare-fun m!28063 () Bool)

(assert (=> b!27024 m!28063))

(declare-fun m!28065 () Bool)

(assert (=> b!27024 m!28065))

(assert (=> b!27024 m!27807))

(assert (=> b!27024 m!27809))

(assert (=> b!27024 m!28063))

(assert (=> b!27024 m!27805))

(assert (=> b!27024 m!27807))

(assert (=> b!27024 m!27985))

(assert (=> b!27024 m!27985))

(assert (=> b!27024 m!27809))

(declare-fun m!28067 () Bool)

(assert (=> b!27024 m!28067))

(assert (=> b!27025 m!27805))

(assert (=> b!27025 m!27807))

(assert (=> b!27025 m!27985))

(assert (=> b!27025 m!27985))

(assert (=> b!27025 m!27809))

(assert (=> b!27025 m!28067))

(assert (=> b!27025 m!27807))

(assert (=> b!27025 m!27809))

(assert (=> b!27025 m!28063))

(assert (=> b!27025 m!27805))

(assert (=> b!27025 m!28063))

(assert (=> b!27025 m!28065))

(assert (=> b!26852 d!14315))

(declare-fun d!14317 () Bool)

(declare-fun lt!4474 () List!360)

(assert (=> d!14317 (= (size!269 lt!4474) (size!270 (left!707 xs!533)))))

(declare-fun e!13837 () List!360)

(assert (=> d!14317 (= lt!4474 e!13837)))

(declare-fun c!5928 () Bool)

(assert (=> d!14317 (= c!5928 (is-Empty!73 (left!707 xs!533)))))

(assert (=> d!14317 (= (toList!115 (left!707 xs!533)) lt!4474)))

(declare-fun b!27029 () Bool)

(declare-fun e!13838 () List!360)

(assert (=> b!27029 (= e!13838 (++!40 (toList!115 (left!707 (left!707 xs!533))) (toList!115 (right!710 (left!707 xs!533)))))))

(declare-fun b!27028 () Bool)

(assert (=> b!27028 (= e!13838 (Cons!354 (x!8925 (left!707 xs!533)) Nil!355))))

(declare-fun b!27027 () Bool)

(assert (=> b!27027 (= e!13837 e!13838)))

(declare-fun c!5927 () Bool)

(assert (=> b!27027 (= c!5927 (is-Single!62 (left!707 xs!533)))))

(declare-fun b!27026 () Bool)

(assert (=> b!27026 (= e!13837 Nil!355)))

(assert (= (and b!27027 c!5927) b!27028))

(assert (= (and b!27027 (not c!5927)) b!27029))

(assert (= (and d!14317 c!5928) b!27026))

(assert (= (and d!14317 (not c!5928)) b!27027))

(declare-fun m!28069 () Bool)

(assert (=> d!14317 m!28069))

(declare-fun m!28071 () Bool)

(assert (=> d!14317 m!28071))

(declare-fun m!28073 () Bool)

(assert (=> b!27029 m!28073))

(declare-fun m!28075 () Bool)

(assert (=> b!27029 m!28075))

(assert (=> b!27029 m!28073))

(assert (=> b!27029 m!28075))

(declare-fun m!28077 () Bool)

(assert (=> b!27029 m!28077))

(assert (=> b!26852 d!14317))

(declare-fun d!14319 () Bool)

(declare-fun lt!4475 () List!360)

(assert (=> d!14319 (= (size!269 lt!4475) (size!270 (right!710 xs!533)))))

(declare-fun e!13839 () List!360)

(assert (=> d!14319 (= lt!4475 e!13839)))

(declare-fun c!5930 () Bool)

(assert (=> d!14319 (= c!5930 (is-Empty!73 (right!710 xs!533)))))

(assert (=> d!14319 (= (toList!115 (right!710 xs!533)) lt!4475)))

(declare-fun b!27033 () Bool)

(declare-fun e!13840 () List!360)

(assert (=> b!27033 (= e!13840 (++!40 (toList!115 (left!707 (right!710 xs!533))) (toList!115 (right!710 (right!710 xs!533)))))))

(declare-fun b!27032 () Bool)

(assert (=> b!27032 (= e!13840 (Cons!354 (x!8925 (right!710 xs!533)) Nil!355))))

(declare-fun b!27031 () Bool)

(assert (=> b!27031 (= e!13839 e!13840)))

(declare-fun c!5929 () Bool)

(assert (=> b!27031 (= c!5929 (is-Single!62 (right!710 xs!533)))))

(declare-fun b!27030 () Bool)

(assert (=> b!27030 (= e!13839 Nil!355)))

(assert (= (and b!27031 c!5929) b!27032))

(assert (= (and b!27031 (not c!5929)) b!27033))

(assert (= (and d!14319 c!5930) b!27030))

(assert (= (and d!14319 (not c!5930)) b!27031))

(declare-fun m!28079 () Bool)

(assert (=> d!14319 m!28079))

(declare-fun m!28081 () Bool)

(assert (=> d!14319 m!28081))

(assert (=> b!27033 m!27823))

(assert (=> b!27033 m!27825))

(assert (=> b!27033 m!27823))

(assert (=> b!27033 m!27825))

(declare-fun m!28083 () Bool)

(assert (=> b!27033 m!28083))

(assert (=> b!26852 d!14319))

(declare-fun d!14321 () Bool)

(declare-fun lt!4476 () List!360)

(assert (=> d!14321 (= (size!269 lt!4476) (size!270 ys!77))))

(declare-fun e!13841 () List!360)

(assert (=> d!14321 (= lt!4476 e!13841)))

(declare-fun c!5932 () Bool)

(assert (=> d!14321 (= c!5932 (is-Empty!73 ys!77))))

(assert (=> d!14321 (= (toList!115 ys!77) lt!4476)))

(declare-fun b!27037 () Bool)

(declare-fun e!13842 () List!360)

(assert (=> b!27037 (= e!13842 (++!40 (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))))))

(declare-fun b!27036 () Bool)

(assert (=> b!27036 (= e!13842 (Cons!354 (x!8925 ys!77) Nil!355))))

(declare-fun b!27035 () Bool)

(assert (=> b!27035 (= e!13841 e!13842)))

(declare-fun c!5931 () Bool)

(assert (=> b!27035 (= c!5931 (is-Single!62 ys!77))))

(declare-fun b!27034 () Bool)

(assert (=> b!27034 (= e!13841 Nil!355)))

(assert (= (and b!27035 c!5931) b!27036))

(assert (= (and b!27035 (not c!5931)) b!27037))

(assert (= (and d!14321 c!5932) b!27034))

(assert (= (and d!14321 (not c!5932)) b!27035))

(declare-fun m!28085 () Bool)

(assert (=> d!14321 m!28085))

(declare-fun m!28087 () Bool)

(assert (=> d!14321 m!28087))

(assert (=> b!27037 m!27799))

(assert (=> b!27037 m!27801))

(assert (=> b!27037 m!27799))

(assert (=> b!27037 m!27801))

(assert (=> b!27037 m!28047))

(assert (=> b!26852 d!14321))

(assert (=> d!14245 d!14283))

(declare-fun b!27039 () Bool)

(declare-fun e!13843 () List!360)

(assert (=> b!27039 (= e!13843 (Cons!354 (h!271 (toList!115 xs!533)) (++!40 (t!4374 (toList!115 xs!533)) (toList!115 ys!77))))))

(declare-fun d!14323 () Bool)

(declare-fun e!13844 () Bool)

(assert (=> d!14323 e!13844))

(declare-fun res!12424 () Bool)

(assert (=> d!14323 (=> (not res!12424) (not e!13844))))

(declare-fun lt!4477 () List!360)

(assert (=> d!14323 (= res!12424 (= (content!70 lt!4477) (union (content!70 (toList!115 xs!533)) (content!70 (toList!115 ys!77)))))))

(assert (=> d!14323 (= lt!4477 e!13843)))

(declare-fun c!5933 () Bool)

(assert (=> d!14323 (= c!5933 (is-Nil!355 (toList!115 xs!533)))))

(assert (=> d!14323 (= (++!40 (toList!115 xs!533) (toList!115 ys!77)) lt!4477)))

(declare-fun b!27040 () Bool)

(declare-fun res!12425 () Bool)

(assert (=> b!27040 (=> (not res!12425) (not e!13844))))

(assert (=> b!27040 (= res!12425 (= (size!269 lt!4477) (+ (size!269 (toList!115 xs!533)) (size!269 (toList!115 ys!77)))))))

(declare-fun b!27038 () Bool)

(assert (=> b!27038 (= e!13843 (toList!115 ys!77))))

(declare-fun b!27041 () Bool)

(assert (=> b!27041 (= e!13844 (or (not (= (toList!115 ys!77) Nil!355)) (= lt!4477 (toList!115 xs!533))))))

(assert (= (and d!14323 c!5933) b!27038))

(assert (= (and d!14323 (not c!5933)) b!27039))

(assert (= (and d!14323 res!12424) b!27040))

(assert (= (and b!27040 res!12425) b!27041))

(assert (=> b!27039 m!27809))

(declare-fun m!28089 () Bool)

(assert (=> b!27039 m!28089))

(declare-fun m!28091 () Bool)

(assert (=> d!14323 m!28091))

(assert (=> d!14323 m!27797))

(assert (=> d!14323 m!27991))

(assert (=> d!14323 m!27809))

(declare-fun m!28093 () Bool)

(assert (=> d!14323 m!28093))

(declare-fun m!28095 () Bool)

(assert (=> b!27040 m!28095))

(assert (=> b!27040 m!27797))

(assert (=> b!27040 m!27997))

(assert (=> b!27040 m!27809))

(declare-fun m!28097 () Bool)

(assert (=> b!27040 m!28097))

(assert (=> d!14245 d!14323))

(assert (=> d!14245 d!14321))

(declare-fun d!14325 () Bool)

(declare-fun lt!4478 () List!360)

(assert (=> d!14325 (= (size!269 lt!4478) (size!270 res!5533))))

(declare-fun e!13845 () List!360)

(assert (=> d!14325 (= lt!4478 e!13845)))

(declare-fun c!5935 () Bool)

(assert (=> d!14325 (= c!5935 (is-Empty!73 res!5533))))

(assert (=> d!14325 (= (toList!115 res!5533) lt!4478)))

(declare-fun b!27045 () Bool)

(declare-fun e!13846 () List!360)

(assert (=> b!27045 (= e!13846 (++!40 (toList!115 (left!707 res!5533)) (toList!115 (right!710 res!5533))))))

(declare-fun b!27044 () Bool)

(assert (=> b!27044 (= e!13846 (Cons!354 (x!8925 res!5533) Nil!355))))

(declare-fun b!27043 () Bool)

(assert (=> b!27043 (= e!13845 e!13846)))

(declare-fun c!5934 () Bool)

(assert (=> b!27043 (= c!5934 (is-Single!62 res!5533))))

(declare-fun b!27042 () Bool)

(assert (=> b!27042 (= e!13845 Nil!355)))

(assert (= (and b!27043 c!5934) b!27044))

(assert (= (and b!27043 (not c!5934)) b!27045))

(assert (= (and d!14325 c!5935) b!27042))

(assert (= (and d!14325 (not c!5935)) b!27043))

(declare-fun m!28099 () Bool)

(assert (=> d!14325 m!28099))

(declare-fun m!28101 () Bool)

(assert (=> d!14325 m!28101))

(declare-fun m!28103 () Bool)

(assert (=> b!27045 m!28103))

(declare-fun m!28105 () Bool)

(assert (=> b!27045 m!28105))

(assert (=> b!27045 m!28103))

(assert (=> b!27045 m!28105))

(declare-fun m!28107 () Bool)

(assert (=> b!27045 m!28107))

(assert (=> d!14245 d!14325))

(assert (=> b!26828 d!14267))

(assert (=> b!26828 d!14269))

(declare-fun b!27047 () Bool)

(declare-fun e!13847 () Int)

(declare-fun lt!4481 () Int)

(declare-fun lt!4479 () Int)

(assert (=> b!27047 (= e!13847 (+ 1 (ite (>= lt!4481 lt!4479) lt!4481 lt!4479)))))

(assert (=> b!27047 (= lt!4479 (level!51 (right!710 (right!710 (left!707 xs!533)))))))

(assert (=> b!27047 (= lt!4481 (level!51 (left!707 (right!710 (left!707 xs!533)))))))

(declare-fun d!14327 () Bool)

(declare-fun lt!4480 () Int)

(assert (=> d!14327 (>= lt!4480 0)))

(assert (=> d!14327 (= lt!4480 e!13847)))

(declare-fun c!5936 () Bool)

(assert (=> d!14327 (= c!5936 (or (is-Empty!73 (right!710 (left!707 xs!533))) (is-Single!62 (right!710 (left!707 xs!533)))))))

(assert (=> d!14327 (= (level!51 (right!710 (left!707 xs!533))) lt!4480)))

(declare-fun b!27046 () Bool)

(assert (=> b!27046 (= e!13847 0)))

(assert (= (and d!14327 c!5936) b!27046))

(assert (= (and d!14327 (not c!5936)) b!27047))

(declare-fun m!28109 () Bool)

(assert (=> b!27047 m!28109))

(declare-fun m!28111 () Bool)

(assert (=> b!27047 m!28111))

(assert (=> b!26754 d!14327))

(declare-fun b!27049 () Bool)

(declare-fun e!13848 () Int)

(declare-fun lt!4484 () Int)

(declare-fun lt!4482 () Int)

(assert (=> b!27049 (= e!13848 (+ 1 (ite (>= lt!4484 lt!4482) lt!4484 lt!4482)))))

(assert (=> b!27049 (= lt!4482 (level!51 (right!710 (left!707 (left!707 xs!533)))))))

(assert (=> b!27049 (= lt!4484 (level!51 (left!707 (left!707 (left!707 xs!533)))))))

(declare-fun d!14329 () Bool)

(declare-fun lt!4483 () Int)

(assert (=> d!14329 (>= lt!4483 0)))

(assert (=> d!14329 (= lt!4483 e!13848)))

(declare-fun c!5937 () Bool)

(assert (=> d!14329 (= c!5937 (or (is-Empty!73 (left!707 (left!707 xs!533))) (is-Single!62 (left!707 (left!707 xs!533)))))))

(assert (=> d!14329 (= (level!51 (left!707 (left!707 xs!533))) lt!4483)))

(declare-fun b!27048 () Bool)

(assert (=> b!27048 (= e!13848 0)))

(assert (= (and d!14329 c!5937) b!27048))

(assert (= (and d!14329 (not c!5937)) b!27049))

(declare-fun m!28113 () Bool)

(assert (=> b!27049 m!28113))

(declare-fun m!28115 () Bool)

(assert (=> b!27049 m!28115))

(assert (=> b!26754 d!14329))

(declare-fun b!27050 () Bool)

(declare-fun e!13849 () Bool)

(assert (=> b!27050 (= e!13849 (= (++!40 (++!40 (toList!115 (left!707 (right!710 xs!533))) (toList!115 (right!710 (right!710 xs!533)))) (toList!115 ys!77)) (++!40 (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)))))))

(declare-fun lt!4485 () Bool)

(assert (=> b!27050 (= lt!4485 (appendAssoc!8 (t!4374 (toList!115 (left!707 (right!710 xs!533)))) (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)))))

(declare-fun d!14331 () Bool)

(assert (=> d!14331 e!13849))

(declare-fun c!5938 () Bool)

(assert (=> d!14331 (= c!5938 (is-Cons!354 (toList!115 (left!707 (right!710 xs!533)))))))

(assert (=> d!14331 (= (appendAssoc!8 (toList!115 (left!707 (right!710 xs!533))) (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)) true)))

(declare-fun b!27051 () Bool)

(assert (=> b!27051 (= e!13849 (= (++!40 (++!40 (toList!115 (left!707 (right!710 xs!533))) (toList!115 (right!710 (right!710 xs!533)))) (toList!115 ys!77)) (++!40 (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)))))))

(assert (= (and d!14331 c!5938) b!27050))

(assert (= (and d!14331 (not c!5938)) b!27051))

(assert (=> b!27050 m!27825))

(assert (=> b!27050 m!27809))

(declare-fun m!28117 () Bool)

(assert (=> b!27050 m!28117))

(assert (=> b!27050 m!27823))

(assert (=> b!27050 m!27829))

(declare-fun m!28119 () Bool)

(assert (=> b!27050 m!28119))

(assert (=> b!27050 m!27825))

(assert (=> b!27050 m!27809))

(assert (=> b!27050 m!27829))

(assert (=> b!27050 m!27823))

(assert (=> b!27050 m!27825))

(assert (=> b!27050 m!28083))

(assert (=> b!27050 m!28083))

(assert (=> b!27050 m!27809))

(declare-fun m!28121 () Bool)

(assert (=> b!27050 m!28121))

(assert (=> b!27051 m!27823))

(assert (=> b!27051 m!27825))

(assert (=> b!27051 m!28083))

(assert (=> b!27051 m!28083))

(assert (=> b!27051 m!27809))

(assert (=> b!27051 m!28121))

(assert (=> b!27051 m!27825))

(assert (=> b!27051 m!27809))

(assert (=> b!27051 m!27829))

(assert (=> b!27051 m!27823))

(assert (=> b!27051 m!27829))

(assert (=> b!27051 m!28119))

(assert (=> b!26851 d!14331))

(declare-fun d!14333 () Bool)

(declare-fun lt!4486 () List!360)

(assert (=> d!14333 (= (size!269 lt!4486) (size!270 (left!707 (right!710 xs!533))))))

(declare-fun e!13850 () List!360)

(assert (=> d!14333 (= lt!4486 e!13850)))

(declare-fun c!5940 () Bool)

(assert (=> d!14333 (= c!5940 (is-Empty!73 (left!707 (right!710 xs!533))))))

(assert (=> d!14333 (= (toList!115 (left!707 (right!710 xs!533))) lt!4486)))

(declare-fun b!27055 () Bool)

(declare-fun e!13851 () List!360)

(assert (=> b!27055 (= e!13851 (++!40 (toList!115 (left!707 (left!707 (right!710 xs!533)))) (toList!115 (right!710 (left!707 (right!710 xs!533))))))))

(declare-fun b!27054 () Bool)

(assert (=> b!27054 (= e!13851 (Cons!354 (x!8925 (left!707 (right!710 xs!533))) Nil!355))))

(declare-fun b!27053 () Bool)

(assert (=> b!27053 (= e!13850 e!13851)))

(declare-fun c!5939 () Bool)

(assert (=> b!27053 (= c!5939 (is-Single!62 (left!707 (right!710 xs!533))))))

(declare-fun b!27052 () Bool)

(assert (=> b!27052 (= e!13850 Nil!355)))

(assert (= (and b!27053 c!5939) b!27054))

(assert (= (and b!27053 (not c!5939)) b!27055))

(assert (= (and d!14333 c!5940) b!27052))

(assert (= (and d!14333 (not c!5940)) b!27053))

(declare-fun m!28123 () Bool)

(assert (=> d!14333 m!28123))

(declare-fun m!28125 () Bool)

(assert (=> d!14333 m!28125))

(declare-fun m!28127 () Bool)

(assert (=> b!27055 m!28127))

(declare-fun m!28129 () Bool)

(assert (=> b!27055 m!28129))

(assert (=> b!27055 m!28127))

(assert (=> b!27055 m!28129))

(declare-fun m!28131 () Bool)

(assert (=> b!27055 m!28131))

(assert (=> b!26851 d!14333))

(declare-fun d!14335 () Bool)

(declare-fun lt!4487 () List!360)

(assert (=> d!14335 (= (size!269 lt!4487) (size!270 (right!710 (right!710 xs!533))))))

(declare-fun e!13852 () List!360)

(assert (=> d!14335 (= lt!4487 e!13852)))

(declare-fun c!5942 () Bool)

(assert (=> d!14335 (= c!5942 (is-Empty!73 (right!710 (right!710 xs!533))))))

(assert (=> d!14335 (= (toList!115 (right!710 (right!710 xs!533))) lt!4487)))

(declare-fun b!27059 () Bool)

(declare-fun e!13853 () List!360)

(assert (=> b!27059 (= e!13853 (++!40 (toList!115 (left!707 (right!710 (right!710 xs!533)))) (toList!115 (right!710 (right!710 (right!710 xs!533))))))))

(declare-fun b!27058 () Bool)

(assert (=> b!27058 (= e!13853 (Cons!354 (x!8925 (right!710 (right!710 xs!533))) Nil!355))))

(declare-fun b!27057 () Bool)

(assert (=> b!27057 (= e!13852 e!13853)))

(declare-fun c!5941 () Bool)

(assert (=> b!27057 (= c!5941 (is-Single!62 (right!710 (right!710 xs!533))))))

(declare-fun b!27056 () Bool)

(assert (=> b!27056 (= e!13852 Nil!355)))

(assert (= (and b!27057 c!5941) b!27058))

(assert (= (and b!27057 (not c!5941)) b!27059))

(assert (= (and d!14335 c!5942) b!27056))

(assert (= (and d!14335 (not c!5942)) b!27057))

(declare-fun m!28133 () Bool)

(assert (=> d!14335 m!28133))

(declare-fun m!28135 () Bool)

(assert (=> d!14335 m!28135))

(declare-fun m!28137 () Bool)

(assert (=> b!27059 m!28137))

(declare-fun m!28139 () Bool)

(assert (=> b!27059 m!28139))

(assert (=> b!27059 m!28137))

(assert (=> b!27059 m!28139))

(declare-fun m!28141 () Bool)

(assert (=> b!27059 m!28141))

(assert (=> b!26851 d!14335))

(assert (=> b!26851 d!14321))

(assert (=> b!26859 d!14259))

(assert (=> b!26859 d!14261))

(assert (=> b!26756 d!14289))

(declare-fun b!27061 () Bool)

(declare-fun e!13854 () Int)

(declare-fun lt!4490 () Int)

(declare-fun lt!4488 () Int)

(assert (=> b!27061 (= e!13854 (+ 1 (ite (>= lt!4490 lt!4488) lt!4490 lt!4488)))))

(assert (=> b!27061 (= lt!4488 (level!51 (right!710 (left!707 (right!710 xs!533)))))))

(assert (=> b!27061 (= lt!4490 (level!51 (left!707 (left!707 (right!710 xs!533)))))))

(declare-fun d!14337 () Bool)

(declare-fun lt!4489 () Int)

(assert (=> d!14337 (>= lt!4489 0)))

(assert (=> d!14337 (= lt!4489 e!13854)))

(declare-fun c!5943 () Bool)

(assert (=> d!14337 (= c!5943 (or (is-Empty!73 (left!707 (right!710 xs!533))) (is-Single!62 (left!707 (right!710 xs!533)))))))

(assert (=> d!14337 (= (level!51 (left!707 (right!710 xs!533))) lt!4489)))

(declare-fun b!27060 () Bool)

(assert (=> b!27060 (= e!13854 0)))

(assert (= (and d!14337 c!5943) b!27060))

(assert (= (and d!14337 (not c!5943)) b!27061))

(declare-fun m!28143 () Bool)

(assert (=> b!27061 m!28143))

(declare-fun m!28145 () Bool)

(assert (=> b!27061 m!28145))

(assert (=> b!26756 d!14337))

(declare-fun b!27063 () Bool)

(declare-fun e!13855 () Int)

(declare-fun lt!4493 () Int)

(declare-fun lt!4491 () Int)

(assert (=> b!27063 (= e!13855 (+ 1 (ite (>= lt!4493 lt!4491) lt!4493 lt!4491)))))

(assert (=> b!27063 (= lt!4491 (level!51 (right!710 lt!4405)))))

(assert (=> b!27063 (= lt!4493 (level!51 (left!707 lt!4405)))))

(declare-fun d!14339 () Bool)

(declare-fun lt!4492 () Int)

(assert (=> d!14339 (>= lt!4492 0)))

(assert (=> d!14339 (= lt!4492 e!13855)))

(declare-fun c!5944 () Bool)

(assert (=> d!14339 (= c!5944 (or (is-Empty!73 lt!4405) (is-Single!62 lt!4405)))))

(assert (=> d!14339 (= (level!51 lt!4405) lt!4492)))

(declare-fun b!27062 () Bool)

(assert (=> b!27062 (= e!13855 0)))

(assert (= (and d!14339 c!5944) b!27062))

(assert (= (and d!14339 (not c!5944)) b!27063))

(declare-fun m!28147 () Bool)

(assert (=> b!27063 m!28147))

(declare-fun m!28149 () Bool)

(assert (=> b!27063 m!28149))

(assert (=> b!26815 d!14339))

(declare-fun b!27064 () Bool)

(declare-fun e!13856 () Bool)

(assert (=> b!27064 (= e!13856 (= (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77)))) (++!40 (toList!115 xs!533) (++!40 (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))))))))

(declare-fun lt!4494 () Bool)

(assert (=> b!27064 (= lt!4494 (appendAssoc!8 (t!4374 (toList!115 xs!533)) (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))))))

(declare-fun d!14341 () Bool)

(assert (=> d!14341 e!13856))

(declare-fun c!5945 () Bool)

(assert (=> d!14341 (= c!5945 (is-Cons!354 (toList!115 xs!533)))))

(assert (=> d!14341 (= (appendAssoc!8 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))) true)))

(declare-fun b!27065 () Bool)

(assert (=> b!27065 (= e!13856 (= (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77)))) (++!40 (toList!115 xs!533) (++!40 (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))))))))

(assert (= (and d!14341 c!5945) b!27064))

(assert (= (and d!14341 (not c!5945)) b!27065))

(assert (=> b!27064 m!27815))

(assert (=> b!27064 m!27813))

(declare-fun m!28151 () Bool)

(assert (=> b!27064 m!28151))

(assert (=> b!27064 m!27797))

(assert (=> b!27064 m!28059))

(declare-fun m!28153 () Bool)

(assert (=> b!27064 m!28153))

(assert (=> b!27064 m!27815))

(assert (=> b!27064 m!27813))

(assert (=> b!27064 m!28059))

(assert (=> b!27064 m!27797))

(assert (=> b!27064 m!27815))

(assert (=> b!27064 m!27817))

(assert (=> b!27064 m!27817))

(assert (=> b!27064 m!27813))

(assert (=> b!27064 m!28007))

(assert (=> b!27065 m!27797))

(assert (=> b!27065 m!27815))

(assert (=> b!27065 m!27817))

(assert (=> b!27065 m!27817))

(assert (=> b!27065 m!27813))

(assert (=> b!27065 m!28007))

(assert (=> b!27065 m!27815))

(assert (=> b!27065 m!27813))

(assert (=> b!27065 m!28059))

(assert (=> b!27065 m!27797))

(assert (=> b!27065 m!28059))

(assert (=> b!27065 m!28153))

(assert (=> b!26857 d!14341))

(assert (=> b!26857 d!14283))

(assert (=> b!26857 d!14277))

(assert (=> b!26857 d!14281))

(declare-fun b!27066 () Bool)

(declare-fun e!13865 () Bool)

(declare-fun e!13864 () Bool)

(assert (=> b!27066 (= e!13865 e!13864)))

(declare-fun res!12431 () Bool)

(assert (=> b!27066 (=> res!12431 e!13864)))

(assert (=> b!27066 (= res!12431 (not (is-CC!62 ys!77)))))

(declare-fun b!27067 () Bool)

(declare-fun e!13858 () Bool)

(declare-fun e!13857 () Bool)

(assert (=> b!27067 (= e!13858 e!13857)))

(declare-fun res!12430 () Bool)

(assert (=> b!27067 (=> (not res!12430) (not e!13857))))

(assert (=> b!27067 (= res!12430 (appendAssoc!8 (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533))))) (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77)))))

(declare-fun b!27068 () Bool)

(declare-fun e!13862 () Bool)

(declare-fun e!13861 () Bool)

(assert (=> b!27068 (= e!13862 e!13861)))

(declare-fun res!12429 () Bool)

(assert (=> b!27068 (=> (not res!12429) (not e!13861))))

(assert (=> b!27068 (= res!12429 (appendAssoc!8 (toList!115 (left!707 (right!710 (right!710 xs!533)))) (toList!115 (right!710 (right!710 (right!710 xs!533)))) (toList!115 ys!77)))))

(declare-fun b!27069 () Bool)

(assert (=> b!27069 (= e!13857 (appendAssoc!8 (toList!115 (left!707 (right!710 (right!710 xs!533)))) (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533))))) (++!40 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77))))))

(declare-fun d!14343 () Bool)

(assert (=> d!14343 e!13865))

(declare-fun res!12427 () Bool)

(assert (=> d!14343 (=> (not res!12427) (not e!13865))))

(assert (=> d!14343 (= res!12427 e!13862)))

(declare-fun res!12426 () Bool)

(assert (=> d!14343 (=> res!12426 e!13862)))

(assert (=> d!14343 (= res!12426 (not (is-CC!62 (right!710 (right!710 xs!533)))))))

(assert (=> d!14343 (= (appendAssocInst!12 (right!710 (right!710 xs!533)) ys!77) true)))

(declare-fun b!27070 () Bool)

(assert (=> b!27070 (= e!13861 e!13858)))

(declare-fun res!12433 () Bool)

(assert (=> b!27070 (=> res!12433 e!13858)))

(assert (=> b!27070 (= res!12433 (not (is-CC!62 (right!710 (right!710 (right!710 xs!533))))))))

(declare-fun b!27071 () Bool)

(declare-fun e!13863 () Bool)

(declare-fun e!13860 () Bool)

(assert (=> b!27071 (= e!13863 e!13860)))

(declare-fun res!12428 () Bool)

(assert (=> b!27071 (=> res!12428 e!13860)))

(assert (=> b!27071 (= res!12428 (not (is-CC!62 (left!707 ys!77))))))

(declare-fun b!27072 () Bool)

(assert (=> b!27072 (= e!13864 e!13863)))

(declare-fun res!12434 () Bool)

(assert (=> b!27072 (=> (not res!12434) (not e!13863))))

(assert (=> b!27072 (= res!12434 (appendAssoc!8 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))))))

(declare-fun b!27073 () Bool)

(declare-fun e!13859 () Bool)

(assert (=> b!27073 (= e!13860 e!13859)))

(declare-fun res!12432 () Bool)

(assert (=> b!27073 (=> (not res!12432) (not e!13859))))

(assert (=> b!27073 (= res!12432 (appendAssoc!8 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))))))

(declare-fun b!27074 () Bool)

(assert (=> b!27074 (= e!13859 (appendAssoc!8 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))))))

(assert (= (and d!14343 (not res!12426)) b!27068))

(assert (= (and b!27068 res!12429) b!27070))

(assert (= (and b!27070 (not res!12433)) b!27067))

(assert (= (and b!27067 res!12430) b!27069))

(assert (= (and d!14343 res!12427) b!27066))

(assert (= (and b!27066 (not res!12431)) b!27072))

(assert (= (and b!27072 res!12434) b!27071))

(assert (= (and b!27071 (not res!12428)) b!27073))

(assert (= (and b!27073 res!12432) b!27074))

(assert (=> b!27072 m!27825))

(assert (=> b!27072 m!27799))

(assert (=> b!27072 m!27801))

(assert (=> b!27072 m!27825))

(assert (=> b!27072 m!27799))

(assert (=> b!27072 m!27801))

(declare-fun m!28155 () Bool)

(assert (=> b!27072 m!28155))

(assert (=> b!27068 m!28137))

(assert (=> b!27068 m!28139))

(assert (=> b!27068 m!27809))

(assert (=> b!27068 m!28137))

(assert (=> b!27068 m!28139))

(assert (=> b!27068 m!27809))

(declare-fun m!28157 () Bool)

(assert (=> b!27068 m!28157))

(assert (=> b!27074 m!27801))

(assert (=> b!27074 m!27825))

(assert (=> b!27074 m!27813))

(assert (=> b!27074 m!27825))

(assert (=> b!27074 m!27815))

(declare-fun m!28159 () Bool)

(assert (=> b!27074 m!28159))

(assert (=> b!27074 m!28159))

(assert (=> b!27074 m!27813))

(assert (=> b!27074 m!27801))

(declare-fun m!28161 () Bool)

(assert (=> b!27074 m!28161))

(assert (=> b!27074 m!27815))

(assert (=> b!27073 m!27825))

(assert (=> b!27073 m!27815))

(assert (=> b!27073 m!27813))

(assert (=> b!27073 m!27825))

(assert (=> b!27073 m!27815))

(assert (=> b!27073 m!27813))

(declare-fun m!28163 () Bool)

(assert (=> b!27073 m!28163))

(declare-fun m!28165 () Bool)

(assert (=> b!27067 m!28165))

(declare-fun m!28167 () Bool)

(assert (=> b!27067 m!28167))

(assert (=> b!27067 m!27809))

(assert (=> b!27067 m!28165))

(assert (=> b!27067 m!28167))

(assert (=> b!27067 m!27809))

(declare-fun m!28169 () Bool)

(assert (=> b!27067 m!28169))

(assert (=> b!27069 m!28137))

(assert (=> b!27069 m!28165))

(assert (=> b!27069 m!28167))

(assert (=> b!27069 m!28167))

(assert (=> b!27069 m!27809))

(declare-fun m!28171 () Bool)

(assert (=> b!27069 m!28171))

(assert (=> b!27069 m!28137))

(assert (=> b!27069 m!28165))

(assert (=> b!27069 m!28171))

(declare-fun m!28173 () Bool)

(assert (=> b!27069 m!28173))

(assert (=> b!27069 m!27809))

(assert (=> b!26802 d!14343))

(declare-fun b!27076 () Bool)

(declare-fun e!13866 () Int)

(declare-fun lt!4497 () Int)

(declare-fun lt!4495 () Int)

(assert (=> b!27076 (= e!13866 (+ 1 (ite (>= lt!4497 lt!4495) lt!4497 lt!4495)))))

(assert (=> b!27076 (= lt!4495 (level!51 (right!710 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77))))))

(assert (=> b!27076 (= lt!4497 (level!51 (left!707 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77))))))

(declare-fun d!14345 () Bool)

(declare-fun lt!4496 () Int)

(assert (=> d!14345 (>= lt!4496 0)))

(assert (=> d!14345 (= lt!4496 e!13866)))

(declare-fun c!5946 () Bool)

(assert (=> d!14345 (= c!5946 (or (is-Empty!73 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77)) (is-Single!62 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77))))))

(assert (=> d!14345 (= (level!51 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77)) lt!4496)))

(declare-fun b!27075 () Bool)

(assert (=> b!27075 (= e!13866 0)))

(assert (= (and d!14345 c!5946) b!27075))

(assert (= (and d!14345 (not c!5946)) b!27076))

(declare-fun m!28175 () Bool)

(assert (=> b!27076 m!28175))

(declare-fun m!28177 () Bool)

(assert (=> b!27076 m!28177))

(assert (=> b!26811 d!14345))

(declare-fun d!14347 () Bool)

(assert (=> d!14347 (= (isEmpty!319 (left!707 xs!533)) (= (left!707 xs!533) Empty!73))))

(assert (=> b!26735 d!14347))

(declare-fun d!14349 () Bool)

(assert (=> d!14349 (= (isEmpty!319 (right!710 xs!533)) (= (right!710 xs!533) Empty!73))))

(assert (=> b!26736 d!14349))

(assert (=> b!26866 d!14227))

(assert (=> b!26866 d!14229))

(assert (=> d!14231 d!14217))

(assert (=> d!14231 d!14289))

(declare-fun d!14351 () Bool)

(declare-fun res!12435 () Bool)

(declare-fun e!13867 () Bool)

(assert (=> d!14351 (=> res!12435 e!13867)))

(assert (=> d!14351 (= res!12435 (not (is-CC!62 (right!710 (right!710 xs!533)))))))

(assert (=> d!14351 (= (concInv!57 (right!710 (right!710 xs!533))) e!13867)))

(declare-fun b!27078 () Bool)

(declare-fun res!12438 () Bool)

(declare-fun e!13868 () Bool)

(assert (=> b!27078 (=> (not res!12438) (not e!13868))))

(assert (=> b!27078 (= res!12438 (not (isEmpty!319 (right!710 (right!710 (right!710 xs!533))))))))

(declare-fun b!27077 () Bool)

(assert (=> b!27077 (= e!13867 e!13868)))

(declare-fun res!12436 () Bool)

(assert (=> b!27077 (=> (not res!12436) (not e!13868))))

(assert (=> b!27077 (= res!12436 (not (isEmpty!319 (left!707 (right!710 (right!710 xs!533))))))))

(declare-fun b!27080 () Bool)

(assert (=> b!27080 (= e!13868 (concInv!57 (right!710 (right!710 (right!710 xs!533)))))))

(declare-fun b!27079 () Bool)

(declare-fun res!12437 () Bool)

(assert (=> b!27079 (=> (not res!12437) (not e!13868))))

(assert (=> b!27079 (= res!12437 (concInv!57 (left!707 (right!710 (right!710 xs!533)))))))

(assert (= (and d!14351 (not res!12435)) b!27077))

(assert (= (and b!27077 res!12436) b!27078))

(assert (= (and b!27078 res!12438) b!27079))

(assert (= (and b!27079 res!12437) b!27080))

(declare-fun m!28179 () Bool)

(assert (=> b!27078 m!28179))

(declare-fun m!28181 () Bool)

(assert (=> b!27077 m!28181))

(declare-fun m!28183 () Bool)

(assert (=> b!27080 m!28183))

(declare-fun m!28185 () Bool)

(assert (=> b!27079 m!28185))

(assert (=> d!14231 d!14351))

(declare-fun d!14353 () Bool)

(assert (=> d!14353 (= (isEmpty!319 (left!707 ys!77)) (= (left!707 ys!77) Empty!73))))

(assert (=> b!26869 d!14353))

(declare-fun d!14355 () Bool)

(declare-fun res!12439 () Bool)

(declare-fun e!13869 () Bool)

(assert (=> d!14355 (=> res!12439 e!13869)))

(assert (=> d!14355 (= res!12439 (not (is-CC!62 (right!710 ys!77))))))

(assert (=> d!14355 (= (concInv!57 (right!710 ys!77)) e!13869)))

(declare-fun b!27082 () Bool)

(declare-fun res!12442 () Bool)

(declare-fun e!13870 () Bool)

(assert (=> b!27082 (=> (not res!12442) (not e!13870))))

(assert (=> b!27082 (= res!12442 (not (isEmpty!319 (right!710 (right!710 ys!77)))))))

(declare-fun b!27081 () Bool)

(assert (=> b!27081 (= e!13869 e!13870)))

(declare-fun res!12440 () Bool)

(assert (=> b!27081 (=> (not res!12440) (not e!13870))))

(assert (=> b!27081 (= res!12440 (not (isEmpty!319 (left!707 (right!710 ys!77)))))))

(declare-fun b!27084 () Bool)

(assert (=> b!27084 (= e!13870 (concInv!57 (right!710 (right!710 ys!77))))))

(declare-fun b!27083 () Bool)

(declare-fun res!12441 () Bool)

(assert (=> b!27083 (=> (not res!12441) (not e!13870))))

(assert (=> b!27083 (= res!12441 (concInv!57 (left!707 (right!710 ys!77))))))

(assert (= (and d!14355 (not res!12439)) b!27081))

(assert (= (and b!27081 res!12440) b!27082))

(assert (= (and b!27082 res!12442) b!27083))

(assert (= (and b!27083 res!12441) b!27084))

(declare-fun m!28187 () Bool)

(assert (=> b!27082 m!28187))

(declare-fun m!28189 () Bool)

(assert (=> b!27081 m!28189))

(declare-fun m!28191 () Bool)

(assert (=> b!27084 m!28191))

(declare-fun m!28193 () Bool)

(assert (=> b!27083 m!28193))

(assert (=> b!26872 d!14355))

(declare-fun b!27085 () Bool)

(declare-fun e!13872 () Bool)

(declare-fun e!13871 () Bool)

(assert (=> b!27085 (= e!13872 e!13871)))

(declare-fun res!12445 () Bool)

(assert (=> b!27085 (=> (not res!12445) (not e!13871))))

(assert (=> b!27085 (= res!12445 (>= (- (level!51 (left!707 (left!707 xs!533))) (level!51 (right!710 (left!707 xs!533)))) (- 1)))))

(declare-fun d!14357 () Bool)

(declare-fun res!12446 () Bool)

(assert (=> d!14357 (=> res!12446 e!13872)))

(assert (=> d!14357 (= res!12446 (not (is-CC!62 (left!707 xs!533))))))

(assert (=> d!14357 (= (balanced!58 (left!707 xs!533)) e!13872)))

(declare-fun b!27086 () Bool)

(declare-fun res!12444 () Bool)

(assert (=> b!27086 (=> (not res!12444) (not e!13871))))

(assert (=> b!27086 (= res!12444 (<= (- (level!51 (left!707 (left!707 xs!533))) (level!51 (right!710 (left!707 xs!533)))) 1))))

(declare-fun b!27088 () Bool)

(assert (=> b!27088 (= e!13871 (balanced!58 (right!710 (left!707 xs!533))))))

(declare-fun b!27087 () Bool)

(declare-fun res!12443 () Bool)

(assert (=> b!27087 (=> (not res!12443) (not e!13871))))

(assert (=> b!27087 (= res!12443 (balanced!58 (left!707 (left!707 xs!533))))))

(assert (= (and d!14357 (not res!12446)) b!27085))

(assert (= (and b!27085 res!12445) b!27086))

(assert (= (and b!27086 res!12444) b!27087))

(assert (= (and b!27087 res!12443) b!27088))

(assert (=> b!27085 m!27761))

(assert (=> b!27085 m!27759))

(assert (=> b!27086 m!27761))

(assert (=> b!27086 m!27759))

(declare-fun m!28195 () Bool)

(assert (=> b!27088 m!28195))

(declare-fun m!28197 () Bool)

(assert (=> b!27087 m!28197))

(assert (=> b!26867 d!14357))

(assert (=> b!26853 d!14321))

(assert (=> b!26853 d!14335))

(assert (=> b!26853 d!14333))

(declare-fun b!27090 () Bool)

(declare-fun e!13873 () List!360)

(assert (=> b!27090 (= e!13873 (Cons!354 (h!271 (toList!115 (right!710 (right!710 xs!533)))) (++!40 (t!4374 (toList!115 (right!710 (right!710 xs!533)))) (toList!115 ys!77))))))

(declare-fun d!14359 () Bool)

(declare-fun e!13874 () Bool)

(assert (=> d!14359 e!13874))

(declare-fun res!12447 () Bool)

(assert (=> d!14359 (=> (not res!12447) (not e!13874))))

(declare-fun lt!4498 () List!360)

(assert (=> d!14359 (= res!12447 (= (content!70 lt!4498) (union (content!70 (toList!115 (right!710 (right!710 xs!533)))) (content!70 (toList!115 ys!77)))))))

(assert (=> d!14359 (= lt!4498 e!13873)))

(declare-fun c!5947 () Bool)

(assert (=> d!14359 (= c!5947 (is-Nil!355 (toList!115 (right!710 (right!710 xs!533)))))))

(assert (=> d!14359 (= (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)) lt!4498)))

(declare-fun b!27091 () Bool)

(declare-fun res!12448 () Bool)

(assert (=> b!27091 (=> (not res!12448) (not e!13874))))

(assert (=> b!27091 (= res!12448 (= (size!269 lt!4498) (+ (size!269 (toList!115 (right!710 (right!710 xs!533)))) (size!269 (toList!115 ys!77)))))))

(declare-fun b!27089 () Bool)

(assert (=> b!27089 (= e!13873 (toList!115 ys!77))))

(declare-fun b!27092 () Bool)

(assert (=> b!27092 (= e!13874 (or (not (= (toList!115 ys!77) Nil!355)) (= lt!4498 (toList!115 (right!710 (right!710 xs!533))))))))

(assert (= (and d!14359 c!5947) b!27089))

(assert (= (and d!14359 (not c!5947)) b!27090))

(assert (= (and d!14359 res!12447) b!27091))

(assert (= (and b!27091 res!12448) b!27092))

(assert (=> b!27090 m!27809))

(declare-fun m!28199 () Bool)

(assert (=> b!27090 m!28199))

(declare-fun m!28201 () Bool)

(assert (=> d!14359 m!28201))

(assert (=> d!14359 m!27825))

(declare-fun m!28203 () Bool)

(assert (=> d!14359 m!28203))

(assert (=> d!14359 m!27809))

(assert (=> d!14359 m!28093))

(declare-fun m!28205 () Bool)

(assert (=> b!27091 m!28205))

(assert (=> b!27091 m!27825))

(declare-fun m!28207 () Bool)

(assert (=> b!27091 m!28207))

(assert (=> b!27091 m!27809))

(assert (=> b!27091 m!28097))

(assert (=> b!26853 d!14359))

(declare-fun b!27093 () Bool)

(declare-fun e!13875 () Bool)

(assert (=> b!27093 (= e!13875 (= (++!40 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (left!707 (right!710 xs!533)))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))) (++!40 (toList!115 (left!707 xs!533)) (++!40 (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))))))))

(declare-fun lt!4499 () Bool)

(assert (=> b!27093 (= lt!4499 (appendAssoc!8 (t!4374 (toList!115 (left!707 xs!533))) (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))))))

(declare-fun d!14361 () Bool)

(assert (=> d!14361 e!13875))

(declare-fun c!5948 () Bool)

(assert (=> d!14361 (= c!5948 (is-Cons!354 (toList!115 (left!707 xs!533))))))

(assert (=> d!14361 (= (appendAssoc!8 (toList!115 (left!707 xs!533)) (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))) true)))

(declare-fun b!27094 () Bool)

(assert (=> b!27094 (= e!13875 (= (++!40 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (left!707 (right!710 xs!533)))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))) (++!40 (toList!115 (left!707 xs!533)) (++!40 (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))))))))

(assert (= (and d!14361 c!5948) b!27093))

(assert (= (and d!14361 (not c!5948)) b!27094))

(assert (=> b!27093 m!27823))

(assert (=> b!27093 m!27829))

(declare-fun m!28209 () Bool)

(assert (=> b!27093 m!28209))

(assert (=> b!27093 m!27805))

(assert (=> b!27093 m!28119))

(declare-fun m!28211 () Bool)

(assert (=> b!27093 m!28211))

(assert (=> b!27093 m!27823))

(assert (=> b!27093 m!27829))

(assert (=> b!27093 m!28119))

(assert (=> b!27093 m!27805))

(assert (=> b!27093 m!27823))

(declare-fun m!28213 () Bool)

(assert (=> b!27093 m!28213))

(assert (=> b!27093 m!28213))

(assert (=> b!27093 m!27829))

(declare-fun m!28215 () Bool)

(assert (=> b!27093 m!28215))

(assert (=> b!27094 m!27805))

(assert (=> b!27094 m!27823))

(assert (=> b!27094 m!28213))

(assert (=> b!27094 m!28213))

(assert (=> b!27094 m!27829))

(assert (=> b!27094 m!28215))

(assert (=> b!27094 m!27823))

(assert (=> b!27094 m!27829))

(assert (=> b!27094 m!28119))

(assert (=> b!27094 m!27805))

(assert (=> b!27094 m!28119))

(assert (=> b!27094 m!28211))

(assert (=> b!26853 d!14361))

(assert (=> b!26853 d!14317))

(declare-fun b!27096 () Bool)

(declare-fun e!13876 () Int)

(declare-fun lt!4502 () Int)

(declare-fun lt!4500 () Int)

(assert (=> b!27096 (= e!13876 (+ 1 (ite (>= lt!4502 lt!4500) lt!4502 lt!4500)))))

(assert (=> b!27096 (= lt!4500 (level!51 (right!710 (right!710 nrr!4))))))

(assert (=> b!27096 (= lt!4502 (level!51 (left!707 (right!710 nrr!4))))))

(declare-fun d!14363 () Bool)

(declare-fun lt!4501 () Int)

(assert (=> d!14363 (>= lt!4501 0)))

(assert (=> d!14363 (= lt!4501 e!13876)))

(declare-fun c!5949 () Bool)

(assert (=> d!14363 (= c!5949 (or (is-Empty!73 (right!710 nrr!4)) (is-Single!62 (right!710 nrr!4))))))

(assert (=> d!14363 (= (level!51 (right!710 nrr!4)) lt!4501)))

(declare-fun b!27095 () Bool)

(assert (=> b!27095 (= e!13876 0)))

(assert (= (and d!14363 c!5949) b!27095))

(assert (= (and d!14363 (not c!5949)) b!27096))

(declare-fun m!28217 () Bool)

(assert (=> b!27096 m!28217))

(declare-fun m!28219 () Bool)

(assert (=> b!27096 m!28219))

(assert (=> b!26864 d!14363))

(declare-fun b!27098 () Bool)

(declare-fun e!13877 () Int)

(declare-fun lt!4505 () Int)

(declare-fun lt!4503 () Int)

(assert (=> b!27098 (= e!13877 (+ 1 (ite (>= lt!4505 lt!4503) lt!4505 lt!4503)))))

(assert (=> b!27098 (= lt!4503 (level!51 (right!710 (left!707 nrr!4))))))

(assert (=> b!27098 (= lt!4505 (level!51 (left!707 (left!707 nrr!4))))))

(declare-fun d!14365 () Bool)

(declare-fun lt!4504 () Int)

(assert (=> d!14365 (>= lt!4504 0)))

(assert (=> d!14365 (= lt!4504 e!13877)))

(declare-fun c!5950 () Bool)

(assert (=> d!14365 (= c!5950 (or (is-Empty!73 (left!707 nrr!4)) (is-Single!62 (left!707 nrr!4))))))

(assert (=> d!14365 (= (level!51 (left!707 nrr!4)) lt!4504)))

(declare-fun b!27097 () Bool)

(assert (=> b!27097 (= e!13877 0)))

(assert (= (and d!14365 c!5950) b!27097))

(assert (= (and d!14365 (not c!5950)) b!27098))

(declare-fun m!28221 () Bool)

(assert (=> b!27098 m!28221))

(declare-fun m!28223 () Bool)

(assert (=> b!27098 m!28223))

(assert (=> b!26864 d!14365))

(assert (=> b!26799 d!14223))

(declare-fun b!27099 () Bool)

(declare-fun e!13879 () Bool)

(declare-fun e!13878 () Bool)

(assert (=> b!27099 (= e!13879 e!13878)))

(declare-fun res!12451 () Bool)

(assert (=> b!27099 (=> (not res!12451) (not e!13878))))

(assert (=> b!27099 (= res!12451 (>= (- (level!51 (left!707 (left!707 ys!77))) (level!51 (right!710 (left!707 ys!77)))) (- 1)))))

(declare-fun d!14367 () Bool)

(declare-fun res!12452 () Bool)

(assert (=> d!14367 (=> res!12452 e!13879)))

(assert (=> d!14367 (= res!12452 (not (is-CC!62 (left!707 ys!77))))))

(assert (=> d!14367 (= (balanced!58 (left!707 ys!77)) e!13879)))

(declare-fun b!27100 () Bool)

(declare-fun res!12450 () Bool)

(assert (=> b!27100 (=> (not res!12450) (not e!13878))))

(assert (=> b!27100 (= res!12450 (<= (- (level!51 (left!707 (left!707 ys!77))) (level!51 (right!710 (left!707 ys!77)))) 1))))

(declare-fun b!27102 () Bool)

(assert (=> b!27102 (= e!13878 (balanced!58 (right!710 (left!707 ys!77))))))

(declare-fun b!27101 () Bool)

(declare-fun res!12449 () Bool)

(assert (=> b!27101 (=> (not res!12449) (not e!13878))))

(assert (=> b!27101 (= res!12449 (balanced!58 (left!707 (left!707 ys!77))))))

(assert (= (and d!14367 (not res!12452)) b!27099))

(assert (= (and b!27099 res!12451) b!27100))

(assert (= (and b!27100 res!12450) b!27101))

(assert (= (and b!27101 res!12449) b!27102))

(assert (=> b!27099 m!27913))

(assert (=> b!27099 m!27911))

(assert (=> b!27100 m!27913))

(assert (=> b!27100 m!27911))

(declare-fun m!28225 () Bool)

(assert (=> b!27102 m!28225))

(declare-fun m!28227 () Bool)

(assert (=> b!27101 m!28227))

(assert (=> b!26861 d!14367))

(declare-fun d!14369 () Bool)

(declare-fun res!12453 () Bool)

(declare-fun e!13880 () Bool)

(assert (=> d!14369 (=> res!12453 e!13880)))

(assert (=> d!14369 (= res!12453 (not (is-CC!62 (left!707 xs!533))))))

(assert (=> d!14369 (= (concInv!57 (left!707 xs!533)) e!13880)))

(declare-fun b!27104 () Bool)

(declare-fun res!12456 () Bool)

(declare-fun e!13881 () Bool)

(assert (=> b!27104 (=> (not res!12456) (not e!13881))))

(assert (=> b!27104 (= res!12456 (not (isEmpty!319 (right!710 (left!707 xs!533)))))))

(declare-fun b!27103 () Bool)

(assert (=> b!27103 (= e!13880 e!13881)))

(declare-fun res!12454 () Bool)

(assert (=> b!27103 (=> (not res!12454) (not e!13881))))

(assert (=> b!27103 (= res!12454 (not (isEmpty!319 (left!707 (left!707 xs!533)))))))

(declare-fun b!27106 () Bool)

(assert (=> b!27106 (= e!13881 (concInv!57 (right!710 (left!707 xs!533))))))

(declare-fun b!27105 () Bool)

(declare-fun res!12455 () Bool)

(assert (=> b!27105 (=> (not res!12455) (not e!13881))))

(assert (=> b!27105 (= res!12455 (concInv!57 (left!707 (left!707 xs!533))))))

(assert (= (and d!14369 (not res!12453)) b!27103))

(assert (= (and b!27103 res!12454) b!27104))

(assert (= (and b!27104 res!12456) b!27105))

(assert (= (and b!27105 res!12455) b!27106))

(declare-fun m!28229 () Bool)

(assert (=> b!27104 m!28229))

(declare-fun m!28231 () Bool)

(assert (=> b!27103 m!28231))

(declare-fun m!28233 () Bool)

(assert (=> b!27106 m!28233))

(declare-fun m!28235 () Bool)

(assert (=> b!27105 m!28235))

(assert (=> b!26737 d!14369))

(assert (=> b!26744 d!14261))

(assert (=> b!26744 d!14259))

(declare-fun b!27107 () Bool)

(declare-fun e!13882 () Bool)

(declare-fun tp!5866 () Bool)

(declare-fun tp!5867 () Bool)

(assert (=> b!27107 (= e!13882 (and tp!5866 tp!5867))))

(declare-fun b!27108 () Bool)

(assert (=> b!27108 (= e!13882 tp_is_empty!171)))

(assert (=> b!26889 (= tp!5858 e!13882)))

(assert (= (and b!26889 (is-CC!62 (left!707 (right!710 nrr!4)))) b!27107))

(assert (= (and b!26889 (is-Single!62 (left!707 (right!710 nrr!4)))) b!27108))

(declare-fun b!27109 () Bool)

(declare-fun e!13883 () Bool)

(declare-fun tp!5868 () Bool)

(declare-fun tp!5869 () Bool)

(assert (=> b!27109 (= e!13883 (and tp!5868 tp!5869))))

(declare-fun b!27110 () Bool)

(assert (=> b!27110 (= e!13883 tp_is_empty!171)))

(assert (=> b!26889 (= tp!5859 e!13883)))

(assert (= (and b!26889 (is-CC!62 (right!710 (right!710 nrr!4)))) b!27109))

(assert (= (and b!26889 (is-Single!62 (right!710 (right!710 nrr!4)))) b!27110))

(declare-fun b!27111 () Bool)

(declare-fun e!13884 () Bool)

(declare-fun tp!5870 () Bool)

(declare-fun tp!5871 () Bool)

(assert (=> b!27111 (= e!13884 (and tp!5870 tp!5871))))

(declare-fun b!27112 () Bool)

(assert (=> b!27112 (= e!13884 tp_is_empty!171)))

(assert (=> b!26879 (= tp!5848 e!13884)))

(assert (= (and b!26879 (is-CC!62 (left!707 (left!707 ys!77)))) b!27111))

(assert (= (and b!26879 (is-Single!62 (left!707 (left!707 ys!77)))) b!27112))

(declare-fun b!27113 () Bool)

(declare-fun e!13885 () Bool)

(declare-fun tp!5872 () Bool)

(declare-fun tp!5873 () Bool)

(assert (=> b!27113 (= e!13885 (and tp!5872 tp!5873))))

(declare-fun b!27114 () Bool)

(assert (=> b!27114 (= e!13885 tp_is_empty!171)))

(assert (=> b!26879 (= tp!5849 e!13885)))

(assert (= (and b!26879 (is-CC!62 (right!710 (left!707 ys!77)))) b!27113))

(assert (= (and b!26879 (is-Single!62 (right!710 (left!707 ys!77)))) b!27114))

(declare-fun b!27115 () Bool)

(declare-fun e!13886 () Bool)

(declare-fun tp!5874 () Bool)

(declare-fun tp!5875 () Bool)

(assert (=> b!27115 (= e!13886 (and tp!5874 tp!5875))))

(declare-fun b!27116 () Bool)

(assert (=> b!27116 (= e!13886 tp_is_empty!171)))

(assert (=> b!26891 (= tp!5860 e!13886)))

(assert (= (and b!26891 (is-CC!62 (left!707 (left!707 res!5533)))) b!27115))

(assert (= (and b!26891 (is-Single!62 (left!707 (left!707 res!5533)))) b!27116))

(declare-fun b!27117 () Bool)

(declare-fun e!13887 () Bool)

(declare-fun tp!5876 () Bool)

(declare-fun tp!5877 () Bool)

(assert (=> b!27117 (= e!13887 (and tp!5876 tp!5877))))

(declare-fun b!27118 () Bool)

(assert (=> b!27118 (= e!13887 tp_is_empty!171)))

(assert (=> b!26891 (= tp!5861 e!13887)))

(assert (= (and b!26891 (is-CC!62 (right!710 (left!707 res!5533)))) b!27117))

(assert (= (and b!26891 (is-Single!62 (right!710 (left!707 res!5533)))) b!27118))

(declare-fun b!27119 () Bool)

(declare-fun e!13888 () Bool)

(declare-fun tp!5878 () Bool)

(declare-fun tp!5879 () Bool)

(assert (=> b!27119 (= e!13888 (and tp!5878 tp!5879))))

(declare-fun b!27120 () Bool)

(assert (=> b!27120 (= e!13888 tp_is_empty!171)))

(assert (=> b!26881 (= tp!5850 e!13888)))

(assert (= (and b!26881 (is-CC!62 (left!707 (right!710 ys!77)))) b!27119))

(assert (= (and b!26881 (is-Single!62 (left!707 (right!710 ys!77)))) b!27120))

(declare-fun b!27121 () Bool)

(declare-fun e!13889 () Bool)

(declare-fun tp!5880 () Bool)

(declare-fun tp!5881 () Bool)

(assert (=> b!27121 (= e!13889 (and tp!5880 tp!5881))))

(declare-fun b!27122 () Bool)

(assert (=> b!27122 (= e!13889 tp_is_empty!171)))

(assert (=> b!26881 (= tp!5851 e!13889)))

(assert (= (and b!26881 (is-CC!62 (right!710 (right!710 ys!77)))) b!27121))

(assert (= (and b!26881 (is-Single!62 (right!710 (right!710 ys!77)))) b!27122))

(declare-fun b!27123 () Bool)

(declare-fun e!13890 () Bool)

(declare-fun tp!5882 () Bool)

(declare-fun tp!5883 () Bool)

(assert (=> b!27123 (= e!13890 (and tp!5882 tp!5883))))

(declare-fun b!27124 () Bool)

(assert (=> b!27124 (= e!13890 tp_is_empty!171)))

(assert (=> b!26893 (= tp!5862 e!13890)))

(assert (= (and b!26893 (is-CC!62 (left!707 (right!710 res!5533)))) b!27123))

(assert (= (and b!26893 (is-Single!62 (left!707 (right!710 res!5533)))) b!27124))

(declare-fun b!27125 () Bool)

(declare-fun e!13891 () Bool)

(declare-fun tp!5884 () Bool)

(declare-fun tp!5885 () Bool)

(assert (=> b!27125 (= e!13891 (and tp!5884 tp!5885))))

(declare-fun b!27126 () Bool)

(assert (=> b!27126 (= e!13891 tp_is_empty!171)))

(assert (=> b!26893 (= tp!5863 e!13891)))

(assert (= (and b!26893 (is-CC!62 (right!710 (right!710 res!5533)))) b!27125))

(assert (= (and b!26893 (is-Single!62 (right!710 (right!710 res!5533)))) b!27126))

(declare-fun b!27127 () Bool)

(declare-fun e!13892 () Bool)

(declare-fun tp!5886 () Bool)

(declare-fun tp!5887 () Bool)

(assert (=> b!27127 (= e!13892 (and tp!5886 tp!5887))))

(declare-fun b!27128 () Bool)

(assert (=> b!27128 (= e!13892 tp_is_empty!171)))

(assert (=> b!26814 (= tp!5843 e!13892)))

(assert (= (and b!26814 (is-CC!62 (left!707 res!12297))) b!27127))

(assert (= (and b!26814 (is-Single!62 (left!707 res!12297))) b!27128))

(declare-fun b!27129 () Bool)

(declare-fun e!13893 () Bool)

(declare-fun tp!5888 () Bool)

(declare-fun tp!5889 () Bool)

(assert (=> b!27129 (= e!13893 (and tp!5888 tp!5889))))

(declare-fun b!27130 () Bool)

(assert (=> b!27130 (= e!13893 tp_is_empty!171)))

(assert (=> b!26814 (= tp!5842 e!13893)))

(assert (= (and b!26814 (is-CC!62 (right!710 res!12297))) b!27129))

(assert (= (and b!26814 (is-Single!62 (right!710 res!12297))) b!27130))

(declare-fun b!27131 () Bool)

(declare-fun e!13894 () Bool)

(declare-fun tp!5890 () Bool)

(declare-fun tp!5891 () Bool)

(assert (=> b!27131 (= e!13894 (and tp!5890 tp!5891))))

(declare-fun b!27132 () Bool)

(assert (=> b!27132 (= e!13894 tp_is_empty!171)))

(assert (=> b!26885 (= tp!5854 e!13894)))

(assert (= (and b!26885 (is-CC!62 (left!707 (right!710 xs!533)))) b!27131))

(assert (= (and b!26885 (is-Single!62 (left!707 (right!710 xs!533)))) b!27132))

(declare-fun b!27133 () Bool)

(declare-fun e!13895 () Bool)

(declare-fun tp!5892 () Bool)

(declare-fun tp!5893 () Bool)

(assert (=> b!27133 (= e!13895 (and tp!5892 tp!5893))))

(declare-fun b!27134 () Bool)

(assert (=> b!27134 (= e!13895 tp_is_empty!171)))

(assert (=> b!26885 (= tp!5855 e!13895)))

(assert (= (and b!26885 (is-CC!62 (right!710 (right!710 xs!533)))) b!27133))

(assert (= (and b!26885 (is-Single!62 (right!710 (right!710 xs!533)))) b!27134))

(declare-fun b!27135 () Bool)

(declare-fun e!13896 () Bool)

(declare-fun tp!5894 () Bool)

(declare-fun tp!5895 () Bool)

(assert (=> b!27135 (= e!13896 (and tp!5894 tp!5895))))

(declare-fun b!27136 () Bool)

(assert (=> b!27136 (= e!13896 tp_is_empty!171)))

(assert (=> b!26887 (= tp!5856 e!13896)))

(assert (= (and b!26887 (is-CC!62 (left!707 (left!707 nrr!4)))) b!27135))

(assert (= (and b!26887 (is-Single!62 (left!707 (left!707 nrr!4)))) b!27136))

(declare-fun b!27137 () Bool)

(declare-fun e!13897 () Bool)

(declare-fun tp!5896 () Bool)

(declare-fun tp!5897 () Bool)

(assert (=> b!27137 (= e!13897 (and tp!5896 tp!5897))))

(declare-fun b!27138 () Bool)

(assert (=> b!27138 (= e!13897 tp_is_empty!171)))

(assert (=> b!26887 (= tp!5857 e!13897)))

(assert (= (and b!26887 (is-CC!62 (right!710 (left!707 nrr!4)))) b!27137))

(assert (= (and b!26887 (is-Single!62 (right!710 (left!707 nrr!4)))) b!27138))

(declare-fun b!27139 () Bool)

(declare-fun e!13898 () Bool)

(declare-fun tp!5898 () Bool)

(declare-fun tp!5899 () Bool)

(assert (=> b!27139 (= e!13898 (and tp!5898 tp!5899))))

(declare-fun b!27140 () Bool)

(assert (=> b!27140 (= e!13898 tp_is_empty!171)))

(assert (=> b!26883 (= tp!5852 e!13898)))

(assert (= (and b!26883 (is-CC!62 (left!707 (left!707 xs!533)))) b!27139))

(assert (= (and b!26883 (is-Single!62 (left!707 (left!707 xs!533)))) b!27140))

(declare-fun b!27141 () Bool)

(declare-fun e!13899 () Bool)

(declare-fun tp!5900 () Bool)

(declare-fun tp!5901 () Bool)

(assert (=> b!27141 (= e!13899 (and tp!5900 tp!5901))))

(declare-fun b!27142 () Bool)

(assert (=> b!27142 (= e!13899 tp_is_empty!171)))

(assert (=> b!26883 (= tp!5853 e!13899)))

(assert (= (and b!26883 (is-CC!62 (right!710 (left!707 xs!533)))) b!27141))

(assert (= (and b!26883 (is-Single!62 (right!710 (left!707 xs!533)))) b!27142))

(push 1)

(assert (not b!26931))

(assert (not b!27010))

(assert (not b!26948))

(assert (not b!27076))

(assert (not b!27005))

(assert (not b!26898))

(assert (not b!27131))

(assert (not b!27017))

(assert (not b!27098))

(assert (not b!27061))

(assert (not d!14319))

(assert (not b!27121))

(assert (not b!27085))

(assert (not b!27080))

(assert (not b!27129))

(assert (not b!26997))

(assert (not b!26936))

(assert (not b!26902))

(assert (not b!27003))

(assert (not b!26963))

(assert (not b!27086))

(assert (not b!27106))

(assert (not b!27077))

(assert (not b!26914))

(assert (not d!14317))

(assert (not b!26910))

(assert (not b!27081))

(assert (not b!26947))

(assert (not b!27049))

(assert (not d!14297))

(assert (not b!27093))

(assert (not b!26901))

(assert (not b!26904))

(assert (not b!26918))

(assert (not b!27090))

(assert (not b!27001))

(assert (not d!14253))

(assert (not d!14335))

(assert (not b!27125))

(assert (not d!14333))

(assert (not b!26925))

(assert (not b!27002))

(assert tp_is_empty!171)

(assert (not b!27103))

(assert (not b!26920))

(assert (not b!27084))

(assert (not b!26933))

(assert (not b!26986))

(assert (not b!27105))

(assert (not b!27111))

(assert (not b!26967))

(assert (not b!26912))

(assert (not b!26906))

(assert (not b!27019))

(assert (not b!26943))

(assert (not b!27008))

(assert (not b!26950))

(assert (not b!27047))

(assert (not d!14323))

(assert (not b!27012))

(assert (not b!27119))

(assert (not b!27088))

(assert (not b!26915))

(assert (not b!27078))

(assert (not b!27025))

(assert (not b!27006))

(assert (not b!27141))

(assert (not b!26935))

(assert (not b!26992))

(assert (not b!26924))

(assert (not b!26917))

(assert (not b!26911))

(assert (not b!27139))

(assert (not b!27096))

(assert (not d!14311))

(assert (not b!26908))

(assert (not b!27045))

(assert (not b!27024))

(assert (not d!14279))

(assert (not b!27018))

(assert (not b!26913))

(assert (not b!27099))

(assert (not b!27059))

(assert (not b!27072))

(assert (not b!27007))

(assert (not b!27082))

(assert (not b!27064))

(assert (not b!26995))

(assert (not b!27009))

(assert (not b!27016))

(assert (not b!27063))

(assert (not d!14321))

(assert (not b!27109))

(assert (not b!26946))

(assert (not b!26923))

(assert (not b!26921))

(assert (not b!27013))

(assert (not d!14285))

(assert (not b!26922))

(assert (not b!27074))

(assert (not b!26937))

(assert (not b!27137))

(assert (not b!26941))

(assert (not b!26899))

(assert (not b!27094))

(assert (not b!27065))

(assert (not b!27000))

(assert (not b!27029))

(assert (not b!26944))

(assert (not b!27091))

(assert (not b!27068))

(assert (not b!26932))

(assert (not b!27069))

(assert (not b!26985))

(assert (not b!26896))

(assert (not b!26938))

(assert (not b!27051))

(assert (not b!27083))

(assert (not d!14283))

(assert (not b!27117))

(assert (not b!26909))

(assert (not b!27037))

(assert (not b!27073))

(assert (not d!14325))

(assert (not d!14281))

(assert (not b!27133))

(assert (not b!27107))

(assert (not b!27033))

(assert (not b!26998))

(assert (not b!27135))

(assert (not b!27079))

(assert (not b!26951))

(assert (not b!27123))

(assert (not b!26993))

(assert (not b!27113))

(assert (not b!26945))

(assert (not b!27040))

(assert (not b!26934))

(assert (not b!26939))

(assert (not b!27004))

(assert (not b!26999))

(assert (not b!26926))

(assert (not b!26971))

(assert (not d!14359))

(assert (not b!27127))

(assert (not b!27115))

(assert (not b!26949))

(assert (not b!27067))

(assert (not b!26975))

(assert (not b!27023))

(assert (not b!27015))

(assert (not b!27104))

(assert (not b!27011))

(assert (not b!27102))

(assert (not b!26929))

(assert (not b!27014))

(assert (not b!27100))

(assert (not b!27039))

(assert (not b!26927))

(assert (not b!26900))

(assert (not d!14277))

(assert (not b!27087))

(assert (not b!27101))

(assert (not b!27055))

(assert (not b!27050))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!14371 () Bool)

(assert (=> d!14371 (= (isEmpty!319 (left!707 (left!707 res!5533))) (= (left!707 (left!707 res!5533)) Empty!73))))

(assert (=> b!26932 d!14371))

(declare-fun d!14373 () Bool)

(declare-fun lt!4508 () Int)

(assert (=> d!14373 (>= lt!4508 0)))

(declare-fun e!13902 () Int)

(assert (=> d!14373 (= lt!4508 e!13902)))

(declare-fun c!5953 () Bool)

(assert (=> d!14373 (= c!5953 (is-Nil!355 lt!4474))))

(assert (=> d!14373 (= (size!269 lt!4474) lt!4508)))

(declare-fun b!27147 () Bool)

(assert (=> b!27147 (= e!13902 0)))

(declare-fun b!27148 () Bool)

(assert (=> b!27148 (= e!13902 (+ 1 (size!269 (t!4374 lt!4474))))))

(assert (= (and d!14373 c!5953) b!27147))

(assert (= (and d!14373 (not c!5953)) b!27148))

(declare-fun m!28237 () Bool)

(assert (=> b!27148 m!28237))

(assert (=> d!14317 d!14373))

(declare-fun b!27159 () Bool)

(declare-fun e!13908 () Int)

(assert (=> b!27159 (= e!13908 1)))

(declare-fun d!14375 () Bool)

(declare-fun lt!4511 () Int)

(assert (=> d!14375 (>= lt!4511 0)))

(declare-fun e!13907 () Int)

(assert (=> d!14375 (= lt!4511 e!13907)))

(declare-fun c!5958 () Bool)

(assert (=> d!14375 (= c!5958 (is-Empty!73 (left!707 xs!533)))))

(assert (=> d!14375 (= (size!270 (left!707 xs!533)) lt!4511)))

(declare-fun b!27157 () Bool)

(assert (=> b!27157 (= e!13907 0)))

(declare-fun b!27158 () Bool)

(assert (=> b!27158 (= e!13907 e!13908)))

(declare-fun c!5959 () Bool)

(assert (=> b!27158 (= c!5959 (is-Single!62 (left!707 xs!533)))))

(declare-fun b!27160 () Bool)

(assert (=> b!27160 (= e!13908 (+ (size!270 (left!707 (left!707 xs!533))) (size!270 (right!710 (left!707 xs!533)))))))

(assert (= (and b!27158 c!5959) b!27159))

(assert (= (and b!27158 (not c!5959)) b!27160))

(assert (= (and d!14375 c!5958) b!27157))

(assert (= (and d!14375 (not c!5958)) b!27158))

(declare-fun m!28239 () Bool)

(assert (=> b!27160 m!28239))

(declare-fun m!28241 () Bool)

(assert (=> b!27160 m!28241))

(assert (=> d!14317 d!14375))

(declare-fun d!14377 () Bool)

(declare-fun res!12457 () Bool)

(declare-fun e!13909 () Bool)

(assert (=> d!14377 (=> res!12457 e!13909)))

(assert (=> d!14377 (= res!12457 (not (is-CC!62 (left!707 (left!707 xs!533)))))))

(assert (=> d!14377 (= (concInv!57 (left!707 (left!707 xs!533))) e!13909)))

(declare-fun b!27162 () Bool)

(declare-fun res!12460 () Bool)

(declare-fun e!13910 () Bool)

(assert (=> b!27162 (=> (not res!12460) (not e!13910))))

(assert (=> b!27162 (= res!12460 (not (isEmpty!319 (right!710 (left!707 (left!707 xs!533))))))))

(declare-fun b!27161 () Bool)

(assert (=> b!27161 (= e!13909 e!13910)))

(declare-fun res!12458 () Bool)

(assert (=> b!27161 (=> (not res!12458) (not e!13910))))

(assert (=> b!27161 (= res!12458 (not (isEmpty!319 (left!707 (left!707 (left!707 xs!533))))))))

(declare-fun b!27164 () Bool)

(assert (=> b!27164 (= e!13910 (concInv!57 (right!710 (left!707 (left!707 xs!533)))))))

(declare-fun b!27163 () Bool)

(declare-fun res!12459 () Bool)

(assert (=> b!27163 (=> (not res!12459) (not e!13910))))

(assert (=> b!27163 (= res!12459 (concInv!57 (left!707 (left!707 (left!707 xs!533)))))))

(assert (= (and d!14377 (not res!12457)) b!27161))

(assert (= (and b!27161 res!12458) b!27162))

(assert (= (and b!27162 res!12460) b!27163))

(assert (= (and b!27163 res!12459) b!27164))

(declare-fun m!28243 () Bool)

(assert (=> b!27162 m!28243))

(declare-fun m!28245 () Bool)

(assert (=> b!27161 m!28245))

(declare-fun m!28247 () Bool)

(assert (=> b!27164 m!28247))

(declare-fun m!28249 () Bool)

(assert (=> b!27163 m!28249))

(assert (=> b!27105 d!14377))

(declare-fun d!14379 () Bool)

(declare-fun lt!4512 () Int)

(assert (=> d!14379 (>= lt!4512 0)))

(declare-fun e!13911 () Int)

(assert (=> d!14379 (= lt!4512 e!13911)))

(declare-fun c!5960 () Bool)

(assert (=> d!14379 (= c!5960 (is-Nil!355 lt!4458))))

(assert (=> d!14379 (= (size!269 lt!4458) lt!4512)))

(declare-fun b!27165 () Bool)

(assert (=> b!27165 (= e!13911 0)))

(declare-fun b!27166 () Bool)

(assert (=> b!27166 (= e!13911 (+ 1 (size!269 (t!4374 lt!4458))))))

(assert (= (and d!14379 c!5960) b!27165))

(assert (= (and d!14379 (not c!5960)) b!27166))

(declare-fun m!28251 () Bool)

(assert (=> b!27166 m!28251))

(assert (=> d!14283 d!14379))

(declare-fun b!27169 () Bool)

(declare-fun e!13913 () Int)

(assert (=> b!27169 (= e!13913 1)))

(declare-fun d!14381 () Bool)

(declare-fun lt!4513 () Int)

(assert (=> d!14381 (>= lt!4513 0)))

(declare-fun e!13912 () Int)

(assert (=> d!14381 (= lt!4513 e!13912)))

(declare-fun c!5961 () Bool)

(assert (=> d!14381 (= c!5961 (is-Empty!73 xs!533))))

(assert (=> d!14381 (= (size!270 xs!533) lt!4513)))

(declare-fun b!27167 () Bool)

(assert (=> b!27167 (= e!13912 0)))

(declare-fun b!27168 () Bool)

(assert (=> b!27168 (= e!13912 e!13913)))

(declare-fun c!5962 () Bool)

(assert (=> b!27168 (= c!5962 (is-Single!62 xs!533))))

(declare-fun b!27170 () Bool)

(assert (=> b!27170 (= e!13913 (+ (size!270 (left!707 xs!533)) (size!270 (right!710 xs!533))))))

(assert (= (and b!27168 c!5962) b!27169))

(assert (= (and b!27168 (not c!5962)) b!27170))

(assert (= (and d!14381 c!5961) b!27167))

(assert (= (and d!14381 (not c!5961)) b!27168))

(assert (=> b!27170 m!28071))

(assert (=> b!27170 m!28081))

(assert (=> d!14283 d!14381))

(declare-fun d!14383 () Bool)

(declare-fun lt!4514 () Int)

(assert (=> d!14383 (>= lt!4514 0)))

(declare-fun e!13914 () Int)

(assert (=> d!14383 (= lt!4514 e!13914)))

(declare-fun c!5963 () Bool)

(assert (=> d!14383 (= c!5963 (is-Nil!355 lt!4477))))

(assert (=> d!14383 (= (size!269 lt!4477) lt!4514)))

(declare-fun b!27171 () Bool)

(assert (=> b!27171 (= e!13914 0)))

(declare-fun b!27172 () Bool)

(assert (=> b!27172 (= e!13914 (+ 1 (size!269 (t!4374 lt!4477))))))

(assert (= (and d!14383 c!5963) b!27171))

(assert (= (and d!14383 (not c!5963)) b!27172))

(declare-fun m!28253 () Bool)

(assert (=> b!27172 m!28253))

(assert (=> b!27040 d!14383))

(declare-fun d!14385 () Bool)

(declare-fun lt!4515 () Int)

(assert (=> d!14385 (>= lt!4515 0)))

(declare-fun e!13915 () Int)

(assert (=> d!14385 (= lt!4515 e!13915)))

(declare-fun c!5964 () Bool)

(assert (=> d!14385 (= c!5964 (is-Nil!355 (toList!115 xs!533)))))

(assert (=> d!14385 (= (size!269 (toList!115 xs!533)) lt!4515)))

(declare-fun b!27173 () Bool)

(assert (=> b!27173 (= e!13915 0)))

(declare-fun b!27174 () Bool)

(assert (=> b!27174 (= e!13915 (+ 1 (size!269 (t!4374 (toList!115 xs!533)))))))

(assert (= (and d!14385 c!5964) b!27173))

(assert (= (and d!14385 (not c!5964)) b!27174))

(declare-fun m!28255 () Bool)

(assert (=> b!27174 m!28255))

(assert (=> b!27040 d!14385))

(declare-fun d!14387 () Bool)

(declare-fun lt!4516 () Int)

(assert (=> d!14387 (>= lt!4516 0)))

(declare-fun e!13916 () Int)

(assert (=> d!14387 (= lt!4516 e!13916)))

(declare-fun c!5965 () Bool)

(assert (=> d!14387 (= c!5965 (is-Nil!355 (toList!115 ys!77)))))

(assert (=> d!14387 (= (size!269 (toList!115 ys!77)) lt!4516)))

(declare-fun b!27175 () Bool)

(assert (=> b!27175 (= e!13916 0)))

(declare-fun b!27176 () Bool)

(assert (=> b!27176 (= e!13916 (+ 1 (size!269 (t!4374 (toList!115 ys!77)))))))

(assert (= (and d!14387 c!5965) b!27175))

(assert (= (and d!14387 (not c!5965)) b!27176))

(declare-fun m!28257 () Bool)

(assert (=> b!27176 m!28257))

(assert (=> b!27040 d!14387))

(declare-fun b!27177 () Bool)

(declare-fun e!13917 () Bool)

(assert (=> b!27177 (= e!13917 (= (++!40 (++!40 (t!4374 (toList!115 xs!533)) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77)))) (++!40 (t!4374 (toList!115 xs!533)) (++!40 (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))))))))

(declare-fun lt!4517 () Bool)

(assert (=> b!27177 (= lt!4517 (appendAssoc!8 (t!4374 (t!4374 (toList!115 xs!533))) (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))))))

(declare-fun d!14389 () Bool)

(assert (=> d!14389 e!13917))

(declare-fun c!5966 () Bool)

(assert (=> d!14389 (= c!5966 (is-Cons!354 (t!4374 (toList!115 xs!533))))))

(assert (=> d!14389 (= (appendAssoc!8 (t!4374 (toList!115 xs!533)) (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))) true)))

(declare-fun b!27178 () Bool)

(assert (=> b!27178 (= e!13917 (= (++!40 (++!40 (t!4374 (toList!115 xs!533)) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77)))) (++!40 (t!4374 (toList!115 xs!533)) (++!40 (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))))))))

(assert (= (and d!14389 c!5966) b!27177))

(assert (= (and d!14389 (not c!5966)) b!27178))

(assert (=> b!27177 m!27815))

(assert (=> b!27177 m!27813))

(declare-fun m!28259 () Bool)

(assert (=> b!27177 m!28259))

(assert (=> b!27177 m!28059))

(declare-fun m!28261 () Bool)

(assert (=> b!27177 m!28261))

(assert (=> b!27177 m!27815))

(assert (=> b!27177 m!27813))

(assert (=> b!27177 m!28059))

(assert (=> b!27177 m!27815))

(assert (=> b!27177 m!27987))

(assert (=> b!27177 m!27987))

(assert (=> b!27177 m!27813))

(declare-fun m!28263 () Bool)

(assert (=> b!27177 m!28263))

(assert (=> b!27178 m!27815))

(assert (=> b!27178 m!27987))

(assert (=> b!27178 m!27987))

(assert (=> b!27178 m!27813))

(assert (=> b!27178 m!28263))

(assert (=> b!27178 m!27815))

(assert (=> b!27178 m!27813))

(assert (=> b!27178 m!28059))

(assert (=> b!27178 m!28059))

(assert (=> b!27178 m!28261))

(assert (=> b!27064 d!14389))

(declare-fun b!27180 () Bool)

(declare-fun e!13918 () List!360)

(assert (=> b!27180 (= e!13918 (Cons!354 (h!271 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))) (++!40 (t!4374 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))) (toList!115 (right!710 (left!707 ys!77))))))))

(declare-fun d!14391 () Bool)

(declare-fun e!13919 () Bool)

(assert (=> d!14391 e!13919))

(declare-fun res!12461 () Bool)

(assert (=> d!14391 (=> (not res!12461) (not e!13919))))

(declare-fun lt!4518 () List!360)

(assert (=> d!14391 (= res!12461 (= (content!70 lt!4518) (union (content!70 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))) (content!70 (toList!115 (right!710 (left!707 ys!77)))))))))

(assert (=> d!14391 (= lt!4518 e!13918)))

(declare-fun c!5967 () Bool)

(assert (=> d!14391 (= c!5967 (is-Nil!355 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))))))

(assert (=> d!14391 (= (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77)))) lt!4518)))

(declare-fun b!27181 () Bool)

(declare-fun res!12462 () Bool)

(assert (=> b!27181 (=> (not res!12462) (not e!13919))))

(assert (=> b!27181 (= res!12462 (= (size!269 lt!4518) (+ (size!269 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))) (size!269 (toList!115 (right!710 (left!707 ys!77)))))))))

(declare-fun b!27179 () Bool)

(assert (=> b!27179 (= e!13918 (toList!115 (right!710 (left!707 ys!77))))))

(declare-fun b!27182 () Bool)

(assert (=> b!27182 (= e!13919 (or (not (= (toList!115 (right!710 (left!707 ys!77))) Nil!355)) (= lt!4518 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))))))))

(assert (= (and d!14391 c!5967) b!27179))

(assert (= (and d!14391 (not c!5967)) b!27180))

(assert (= (and d!14391 res!12461) b!27181))

(assert (= (and b!27181 res!12462) b!27182))

(assert (=> b!27180 m!27813))

(declare-fun m!28265 () Bool)

(assert (=> b!27180 m!28265))

(declare-fun m!28267 () Bool)

(assert (=> d!14391 m!28267))

(assert (=> d!14391 m!27817))

(declare-fun m!28269 () Bool)

(assert (=> d!14391 m!28269))

(assert (=> d!14391 m!27813))

(declare-fun m!28271 () Bool)

(assert (=> d!14391 m!28271))

(declare-fun m!28273 () Bool)

(assert (=> b!27181 m!28273))

(assert (=> b!27181 m!27817))

(declare-fun m!28275 () Bool)

(assert (=> b!27181 m!28275))

(assert (=> b!27181 m!27813))

(declare-fun m!28277 () Bool)

(assert (=> b!27181 m!28277))

(assert (=> b!27064 d!14391))

(declare-fun b!27184 () Bool)

(declare-fun e!13920 () List!360)

(assert (=> b!27184 (= e!13920 (Cons!354 (h!271 (toList!115 (left!707 (left!707 ys!77)))) (++!40 (t!4374 (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77))))))))

(declare-fun d!14393 () Bool)

(declare-fun e!13921 () Bool)

(assert (=> d!14393 e!13921))

(declare-fun res!12463 () Bool)

(assert (=> d!14393 (=> (not res!12463) (not e!13921))))

(declare-fun lt!4519 () List!360)

(assert (=> d!14393 (= res!12463 (= (content!70 lt!4519) (union (content!70 (toList!115 (left!707 (left!707 ys!77)))) (content!70 (toList!115 (right!710 (left!707 ys!77)))))))))

(assert (=> d!14393 (= lt!4519 e!13920)))

(declare-fun c!5968 () Bool)

(assert (=> d!14393 (= c!5968 (is-Nil!355 (toList!115 (left!707 (left!707 ys!77)))))))

(assert (=> d!14393 (= (++!40 (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))) lt!4519)))

(declare-fun b!27185 () Bool)

(declare-fun res!12464 () Bool)

(assert (=> b!27185 (=> (not res!12464) (not e!13921))))

(assert (=> b!27185 (= res!12464 (= (size!269 lt!4519) (+ (size!269 (toList!115 (left!707 (left!707 ys!77)))) (size!269 (toList!115 (right!710 (left!707 ys!77)))))))))

(declare-fun b!27183 () Bool)

(assert (=> b!27183 (= e!13920 (toList!115 (right!710 (left!707 ys!77))))))

(declare-fun b!27186 () Bool)

(assert (=> b!27186 (= e!13921 (or (not (= (toList!115 (right!710 (left!707 ys!77))) Nil!355)) (= lt!4519 (toList!115 (left!707 (left!707 ys!77))))))))

(assert (= (and d!14393 c!5968) b!27183))

(assert (= (and d!14393 (not c!5968)) b!27184))

(assert (= (and d!14393 res!12463) b!27185))

(assert (= (and b!27185 res!12464) b!27186))

(assert (=> b!27184 m!27813))

(declare-fun m!28279 () Bool)

(assert (=> b!27184 m!28279))

(declare-fun m!28281 () Bool)

(assert (=> d!14393 m!28281))

(assert (=> d!14393 m!27815))

(assert (=> d!14393 m!27993))

(assert (=> d!14393 m!27813))

(assert (=> d!14393 m!28271))

(declare-fun m!28283 () Bool)

(assert (=> b!27185 m!28283))

(assert (=> b!27185 m!27815))

(assert (=> b!27185 m!27999))

(assert (=> b!27185 m!27813))

(assert (=> b!27185 m!28277))

(assert (=> b!27064 d!14393))

(declare-fun b!27188 () Bool)

(declare-fun e!13922 () List!360)

(assert (=> b!27188 (= e!13922 (Cons!354 (h!271 (toList!115 xs!533)) (++!40 (t!4374 (toList!115 xs!533)) (++!40 (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))))))))

(declare-fun d!14395 () Bool)

(declare-fun e!13923 () Bool)

(assert (=> d!14395 e!13923))

(declare-fun res!12465 () Bool)

(assert (=> d!14395 (=> (not res!12465) (not e!13923))))

(declare-fun lt!4520 () List!360)

(assert (=> d!14395 (= res!12465 (= (content!70 lt!4520) (union (content!70 (toList!115 xs!533)) (content!70 (++!40 (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77))))))))))

(assert (=> d!14395 (= lt!4520 e!13922)))

(declare-fun c!5969 () Bool)

(assert (=> d!14395 (= c!5969 (is-Nil!355 (toList!115 xs!533)))))

(assert (=> d!14395 (= (++!40 (toList!115 xs!533) (++!40 (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77))))) lt!4520)))

(declare-fun b!27189 () Bool)

(declare-fun res!12466 () Bool)

(assert (=> b!27189 (=> (not res!12466) (not e!13923))))

(assert (=> b!27189 (= res!12466 (= (size!269 lt!4520) (+ (size!269 (toList!115 xs!533)) (size!269 (++!40 (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77))))))))))

(declare-fun b!27187 () Bool)

(assert (=> b!27187 (= e!13922 (++!40 (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))))))

(declare-fun b!27190 () Bool)

(assert (=> b!27190 (= e!13923 (or (not (= (++!40 (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))) Nil!355)) (= lt!4520 (toList!115 xs!533))))))

(assert (= (and d!14395 c!5969) b!27187))

(assert (= (and d!14395 (not c!5969)) b!27188))

(assert (= (and d!14395 res!12465) b!27189))

(assert (= (and b!27189 res!12466) b!27190))

(assert (=> b!27188 m!28059))

(assert (=> b!27188 m!28261))

(declare-fun m!28285 () Bool)

(assert (=> d!14395 m!28285))

(assert (=> d!14395 m!27797))

(assert (=> d!14395 m!27991))

(assert (=> d!14395 m!28059))

(declare-fun m!28287 () Bool)

(assert (=> d!14395 m!28287))

(declare-fun m!28289 () Bool)

(assert (=> b!27189 m!28289))

(assert (=> b!27189 m!27797))

(assert (=> b!27189 m!27997))

(assert (=> b!27189 m!28059))

(declare-fun m!28291 () Bool)

(assert (=> b!27189 m!28291))

(assert (=> b!27064 d!14395))

(assert (=> b!27064 d!14285))

(assert (=> b!27065 d!14391))

(assert (=> b!27065 d!14285))

(assert (=> b!27065 d!14395))

(assert (=> b!27065 d!14393))

(declare-fun b!27192 () Bool)

(declare-fun e!13924 () List!360)

(assert (=> b!27192 (= e!13924 (Cons!354 (h!271 (toList!115 (left!707 (right!710 xs!533)))) (++!40 (t!4374 (toList!115 (left!707 (right!710 xs!533)))) (toList!115 (right!710 (right!710 xs!533))))))))

(declare-fun d!14397 () Bool)

(declare-fun e!13925 () Bool)

(assert (=> d!14397 e!13925))

(declare-fun res!12467 () Bool)

(assert (=> d!14397 (=> (not res!12467) (not e!13925))))

(declare-fun lt!4521 () List!360)

(assert (=> d!14397 (= res!12467 (= (content!70 lt!4521) (union (content!70 (toList!115 (left!707 (right!710 xs!533)))) (content!70 (toList!115 (right!710 (right!710 xs!533)))))))))

(assert (=> d!14397 (= lt!4521 e!13924)))

(declare-fun c!5970 () Bool)

(assert (=> d!14397 (= c!5970 (is-Nil!355 (toList!115 (left!707 (right!710 xs!533)))))))

(assert (=> d!14397 (= (++!40 (toList!115 (left!707 (right!710 xs!533))) (toList!115 (right!710 (right!710 xs!533)))) lt!4521)))

(declare-fun b!27193 () Bool)

(declare-fun res!12468 () Bool)

(assert (=> b!27193 (=> (not res!12468) (not e!13925))))

(assert (=> b!27193 (= res!12468 (= (size!269 lt!4521) (+ (size!269 (toList!115 (left!707 (right!710 xs!533)))) (size!269 (toList!115 (right!710 (right!710 xs!533)))))))))

(declare-fun b!27191 () Bool)

(assert (=> b!27191 (= e!13924 (toList!115 (right!710 (right!710 xs!533))))))

(declare-fun b!27194 () Bool)

(assert (=> b!27194 (= e!13925 (or (not (= (toList!115 (right!710 (right!710 xs!533))) Nil!355)) (= lt!4521 (toList!115 (left!707 (right!710 xs!533))))))))

(assert (= (and d!14397 c!5970) b!27191))

(assert (= (and d!14397 (not c!5970)) b!27192))

(assert (= (and d!14397 res!12467) b!27193))

(assert (= (and b!27193 res!12468) b!27194))

(assert (=> b!27192 m!27825))

(declare-fun m!28293 () Bool)

(assert (=> b!27192 m!28293))

(declare-fun m!28295 () Bool)

(assert (=> d!14397 m!28295))

(assert (=> d!14397 m!27823))

(declare-fun m!28297 () Bool)

(assert (=> d!14397 m!28297))

(assert (=> d!14397 m!27825))

(assert (=> d!14397 m!28203))

(declare-fun m!28299 () Bool)

(assert (=> b!27193 m!28299))

(assert (=> b!27193 m!27823))

(declare-fun m!28301 () Bool)

(assert (=> b!27193 m!28301))

(assert (=> b!27193 m!27825))

(assert (=> b!27193 m!28207))

(assert (=> b!27033 d!14397))

(assert (=> b!27033 d!14333))

(assert (=> b!27033 d!14335))

(declare-fun b!27196 () Bool)

(declare-fun e!13926 () Int)

(declare-fun lt!4524 () Int)

(declare-fun lt!4522 () Int)

(assert (=> b!27196 (= e!13926 (+ 1 (ite (>= lt!4524 lt!4522) lt!4524 lt!4522)))))

(assert (=> b!27196 (= lt!4522 (level!51 (right!710 (right!710 (right!710 (left!707 xs!533))))))))

(assert (=> b!27196 (= lt!4524 (level!51 (left!707 (right!710 (right!710 (left!707 xs!533))))))))

(declare-fun d!14399 () Bool)

(declare-fun lt!4523 () Int)

(assert (=> d!14399 (>= lt!4523 0)))

(assert (=> d!14399 (= lt!4523 e!13926)))

(declare-fun c!5971 () Bool)

(assert (=> d!14399 (= c!5971 (or (is-Empty!73 (right!710 (right!710 (left!707 xs!533)))) (is-Single!62 (right!710 (right!710 (left!707 xs!533))))))))

(assert (=> d!14399 (= (level!51 (right!710 (right!710 (left!707 xs!533)))) lt!4523)))

(declare-fun b!27195 () Bool)

(assert (=> b!27195 (= e!13926 0)))

(assert (= (and d!14399 c!5971) b!27195))

(assert (= (and d!14399 (not c!5971)) b!27196))

(declare-fun m!28303 () Bool)

(assert (=> b!27196 m!28303))

(declare-fun m!28305 () Bool)

(assert (=> b!27196 m!28305))

(assert (=> b!27047 d!14399))

(declare-fun b!27198 () Bool)

(declare-fun e!13927 () Int)

(declare-fun lt!4527 () Int)

(declare-fun lt!4525 () Int)

(assert (=> b!27198 (= e!13927 (+ 1 (ite (>= lt!4527 lt!4525) lt!4527 lt!4525)))))

(assert (=> b!27198 (= lt!4525 (level!51 (right!710 (left!707 (right!710 (left!707 xs!533))))))))

(assert (=> b!27198 (= lt!4527 (level!51 (left!707 (left!707 (right!710 (left!707 xs!533))))))))

(declare-fun d!14401 () Bool)

(declare-fun lt!4526 () Int)

(assert (=> d!14401 (>= lt!4526 0)))

(assert (=> d!14401 (= lt!4526 e!13927)))

(declare-fun c!5972 () Bool)

(assert (=> d!14401 (= c!5972 (or (is-Empty!73 (left!707 (right!710 (left!707 xs!533)))) (is-Single!62 (left!707 (right!710 (left!707 xs!533))))))))

(assert (=> d!14401 (= (level!51 (left!707 (right!710 (left!707 xs!533)))) lt!4526)))

(declare-fun b!27197 () Bool)

(assert (=> b!27197 (= e!13927 0)))

(assert (= (and d!14401 c!5972) b!27197))

(assert (= (and d!14401 (not c!5972)) b!27198))

(declare-fun m!28307 () Bool)

(assert (=> b!27198 m!28307))

(declare-fun m!28309 () Bool)

(assert (=> b!27198 m!28309))

(assert (=> b!27047 d!14401))

(declare-fun d!14403 () Bool)

(assert (=> d!14403 (= (isEmpty!319 (left!707 (right!710 xs!533))) (= (left!707 (right!710 xs!533)) Empty!73))))

(assert (=> b!26998 d!14403))

(declare-fun b!27200 () Bool)

(declare-fun e!13928 () Int)

(declare-fun lt!4530 () Int)

(declare-fun lt!4528 () Int)

(assert (=> b!27200 (= e!13928 (+ 1 (ite (>= lt!4530 lt!4528) lt!4530 lt!4528)))))

(assert (=> b!27200 (= lt!4528 (level!51 (right!710 (right!710 (left!707 res!5533)))))))

(assert (=> b!27200 (= lt!4530 (level!51 (left!707 (right!710 (left!707 res!5533)))))))

(declare-fun d!14405 () Bool)

(declare-fun lt!4529 () Int)

(assert (=> d!14405 (>= lt!4529 0)))

(assert (=> d!14405 (= lt!4529 e!13928)))

(declare-fun c!5973 () Bool)

(assert (=> d!14405 (= c!5973 (or (is-Empty!73 (right!710 (left!707 res!5533))) (is-Single!62 (right!710 (left!707 res!5533)))))))

(assert (=> d!14405 (= (level!51 (right!710 (left!707 res!5533))) lt!4529)))

(declare-fun b!27199 () Bool)

(assert (=> b!27199 (= e!13928 0)))

(assert (= (and d!14405 c!5973) b!27199))

(assert (= (and d!14405 (not c!5973)) b!27200))

(declare-fun m!28311 () Bool)

(assert (=> b!27200 m!28311))

(declare-fun m!28313 () Bool)

(assert (=> b!27200 m!28313))

(assert (=> b!26941 d!14405))

(declare-fun b!27202 () Bool)

(declare-fun e!13929 () Int)

(declare-fun lt!4533 () Int)

(declare-fun lt!4531 () Int)

(assert (=> b!27202 (= e!13929 (+ 1 (ite (>= lt!4533 lt!4531) lt!4533 lt!4531)))))

(assert (=> b!27202 (= lt!4531 (level!51 (right!710 (left!707 (left!707 res!5533)))))))

(assert (=> b!27202 (= lt!4533 (level!51 (left!707 (left!707 (left!707 res!5533)))))))

(declare-fun d!14407 () Bool)

(declare-fun lt!4532 () Int)

(assert (=> d!14407 (>= lt!4532 0)))

(assert (=> d!14407 (= lt!4532 e!13929)))

(declare-fun c!5974 () Bool)

(assert (=> d!14407 (= c!5974 (or (is-Empty!73 (left!707 (left!707 res!5533))) (is-Single!62 (left!707 (left!707 res!5533)))))))

(assert (=> d!14407 (= (level!51 (left!707 (left!707 res!5533))) lt!4532)))

(declare-fun b!27201 () Bool)

(assert (=> b!27201 (= e!13929 0)))

(assert (= (and d!14407 c!5974) b!27201))

(assert (= (and d!14407 (not c!5974)) b!27202))

(declare-fun m!28315 () Bool)

(assert (=> b!27202 m!28315))

(declare-fun m!28317 () Bool)

(assert (=> b!27202 m!28317))

(assert (=> b!26941 d!14407))

(declare-fun b!27204 () Bool)

(declare-fun e!13930 () List!360)

(assert (=> b!27204 (= e!13930 (Cons!354 (h!271 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (left!707 (right!710 xs!533))))) (++!40 (t!4374 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (left!707 (right!710 xs!533))))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)))))))

(declare-fun d!14409 () Bool)

(declare-fun e!13931 () Bool)

(assert (=> d!14409 e!13931))

(declare-fun res!12469 () Bool)

(assert (=> d!14409 (=> (not res!12469) (not e!13931))))

(declare-fun lt!4534 () List!360)

(assert (=> d!14409 (= res!12469 (= (content!70 lt!4534) (union (content!70 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (left!707 (right!710 xs!533))))) (content!70 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))))))))

(assert (=> d!14409 (= lt!4534 e!13930)))

(declare-fun c!5975 () Bool)

(assert (=> d!14409 (= c!5975 (is-Nil!355 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (left!707 (right!710 xs!533))))))))

(assert (=> d!14409 (= (++!40 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (left!707 (right!710 xs!533)))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))) lt!4534)))

(declare-fun b!27205 () Bool)

(declare-fun res!12470 () Bool)

(assert (=> b!27205 (=> (not res!12470) (not e!13931))))

(assert (=> b!27205 (= res!12470 (= (size!269 lt!4534) (+ (size!269 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (left!707 (right!710 xs!533))))) (size!269 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))))))))

(declare-fun b!27203 () Bool)

(assert (=> b!27203 (= e!13930 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)))))

(declare-fun b!27206 () Bool)

(assert (=> b!27206 (= e!13931 (or (not (= (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)) Nil!355)) (= lt!4534 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (left!707 (right!710 xs!533)))))))))

(assert (= (and d!14409 c!5975) b!27203))

(assert (= (and d!14409 (not c!5975)) b!27204))

(assert (= (and d!14409 res!12469) b!27205))

(assert (= (and b!27205 res!12470) b!27206))

(assert (=> b!27204 m!27829))

(declare-fun m!28319 () Bool)

(assert (=> b!27204 m!28319))

(declare-fun m!28321 () Bool)

(assert (=> d!14409 m!28321))

(assert (=> d!14409 m!28213))

(declare-fun m!28323 () Bool)

(assert (=> d!14409 m!28323))

(assert (=> d!14409 m!27829))

(declare-fun m!28325 () Bool)

(assert (=> d!14409 m!28325))

(declare-fun m!28327 () Bool)

(assert (=> b!27205 m!28327))

(assert (=> b!27205 m!28213))

(declare-fun m!28329 () Bool)

(assert (=> b!27205 m!28329))

(assert (=> b!27205 m!27829))

(declare-fun m!28331 () Bool)

(assert (=> b!27205 m!28331))

(assert (=> b!27094 d!14409))

(declare-fun b!27208 () Bool)

(declare-fun e!13932 () List!360)

(assert (=> b!27208 (= e!13932 (Cons!354 (h!271 (toList!115 (left!707 xs!533))) (++!40 (t!4374 (toList!115 (left!707 xs!533))) (toList!115 (left!707 (right!710 xs!533))))))))

(declare-fun d!14411 () Bool)

(declare-fun e!13933 () Bool)

(assert (=> d!14411 e!13933))

(declare-fun res!12471 () Bool)

(assert (=> d!14411 (=> (not res!12471) (not e!13933))))

(declare-fun lt!4535 () List!360)

(assert (=> d!14411 (= res!12471 (= (content!70 lt!4535) (union (content!70 (toList!115 (left!707 xs!533))) (content!70 (toList!115 (left!707 (right!710 xs!533)))))))))

(assert (=> d!14411 (= lt!4535 e!13932)))

(declare-fun c!5976 () Bool)

(assert (=> d!14411 (= c!5976 (is-Nil!355 (toList!115 (left!707 xs!533))))))

(assert (=> d!14411 (= (++!40 (toList!115 (left!707 xs!533)) (toList!115 (left!707 (right!710 xs!533)))) lt!4535)))

(declare-fun b!27209 () Bool)

(declare-fun res!12472 () Bool)

(assert (=> b!27209 (=> (not res!12472) (not e!13933))))

(assert (=> b!27209 (= res!12472 (= (size!269 lt!4535) (+ (size!269 (toList!115 (left!707 xs!533))) (size!269 (toList!115 (left!707 (right!710 xs!533)))))))))

(declare-fun b!27207 () Bool)

(assert (=> b!27207 (= e!13932 (toList!115 (left!707 (right!710 xs!533))))))

(declare-fun b!27210 () Bool)

(assert (=> b!27210 (= e!13933 (or (not (= (toList!115 (left!707 (right!710 xs!533))) Nil!355)) (= lt!4535 (toList!115 (left!707 xs!533)))))))

(assert (= (and d!14411 c!5976) b!27207))

(assert (= (and d!14411 (not c!5976)) b!27208))

(assert (= (and d!14411 res!12471) b!27209))

(assert (= (and b!27209 res!12472) b!27210))

(assert (=> b!27208 m!27823))

(declare-fun m!28333 () Bool)

(assert (=> b!27208 m!28333))

(declare-fun m!28335 () Bool)

(assert (=> d!14411 m!28335))

(assert (=> d!14411 m!27805))

(declare-fun m!28337 () Bool)

(assert (=> d!14411 m!28337))

(assert (=> d!14411 m!27823))

(assert (=> d!14411 m!28297))

(declare-fun m!28339 () Bool)

(assert (=> b!27209 m!28339))

(assert (=> b!27209 m!27805))

(declare-fun m!28341 () Bool)

(assert (=> b!27209 m!28341))

(assert (=> b!27209 m!27823))

(assert (=> b!27209 m!28301))

(assert (=> b!27094 d!14411))

(declare-fun b!27212 () Bool)

(declare-fun e!13934 () List!360)

(assert (=> b!27212 (= e!13934 (Cons!354 (h!271 (toList!115 (left!707 xs!533))) (++!40 (t!4374 (toList!115 (left!707 xs!533))) (++!40 (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))))))))

(declare-fun d!14413 () Bool)

(declare-fun e!13935 () Bool)

(assert (=> d!14413 e!13935))

(declare-fun res!12473 () Bool)

(assert (=> d!14413 (=> (not res!12473) (not e!13935))))

(declare-fun lt!4536 () List!360)

(assert (=> d!14413 (= res!12473 (= (content!70 lt!4536) (union (content!70 (toList!115 (left!707 xs!533))) (content!70 (++!40 (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)))))))))

(assert (=> d!14413 (= lt!4536 e!13934)))

(declare-fun c!5977 () Bool)

(assert (=> d!14413 (= c!5977 (is-Nil!355 (toList!115 (left!707 xs!533))))))

(assert (=> d!14413 (= (++!40 (toList!115 (left!707 xs!533)) (++!40 (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)))) lt!4536)))

(declare-fun b!27213 () Bool)

(declare-fun res!12474 () Bool)

(assert (=> b!27213 (=> (not res!12474) (not e!13935))))

(assert (=> b!27213 (= res!12474 (= (size!269 lt!4536) (+ (size!269 (toList!115 (left!707 xs!533))) (size!269 (++!40 (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)))))))))

(declare-fun b!27211 () Bool)

(assert (=> b!27211 (= e!13934 (++!40 (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))))))

(declare-fun b!27214 () Bool)

(assert (=> b!27214 (= e!13935 (or (not (= (++!40 (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))) Nil!355)) (= lt!4536 (toList!115 (left!707 xs!533)))))))

(assert (= (and d!14413 c!5977) b!27211))

(assert (= (and d!14413 (not c!5977)) b!27212))

(assert (= (and d!14413 res!12473) b!27213))

(assert (= (and b!27213 res!12474) b!27214))

(assert (=> b!27212 m!28119))

(declare-fun m!28343 () Bool)

(assert (=> b!27212 m!28343))

(declare-fun m!28345 () Bool)

(assert (=> d!14413 m!28345))

(assert (=> d!14413 m!27805))

(assert (=> d!14413 m!28337))

(assert (=> d!14413 m!28119))

(declare-fun m!28347 () Bool)

(assert (=> d!14413 m!28347))

(declare-fun m!28349 () Bool)

(assert (=> b!27213 m!28349))

(assert (=> b!27213 m!27805))

(assert (=> b!27213 m!28341))

(assert (=> b!27213 m!28119))

(declare-fun m!28351 () Bool)

(assert (=> b!27213 m!28351))

(assert (=> b!27094 d!14413))

(declare-fun b!27216 () Bool)

(declare-fun e!13936 () List!360)

(assert (=> b!27216 (= e!13936 (Cons!354 (h!271 (toList!115 (left!707 (right!710 xs!533)))) (++!40 (t!4374 (toList!115 (left!707 (right!710 xs!533)))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)))))))

(declare-fun d!14415 () Bool)

(declare-fun e!13937 () Bool)

(assert (=> d!14415 e!13937))

(declare-fun res!12475 () Bool)

(assert (=> d!14415 (=> (not res!12475) (not e!13937))))

(declare-fun lt!4537 () List!360)

(assert (=> d!14415 (= res!12475 (= (content!70 lt!4537) (union (content!70 (toList!115 (left!707 (right!710 xs!533)))) (content!70 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))))))))

(assert (=> d!14415 (= lt!4537 e!13936)))

(declare-fun c!5978 () Bool)

(assert (=> d!14415 (= c!5978 (is-Nil!355 (toList!115 (left!707 (right!710 xs!533)))))))

(assert (=> d!14415 (= (++!40 (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))) lt!4537)))

(declare-fun b!27217 () Bool)

(declare-fun res!12476 () Bool)

(assert (=> b!27217 (=> (not res!12476) (not e!13937))))

(assert (=> b!27217 (= res!12476 (= (size!269 lt!4537) (+ (size!269 (toList!115 (left!707 (right!710 xs!533)))) (size!269 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))))))))

(declare-fun b!27215 () Bool)

(assert (=> b!27215 (= e!13936 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)))))

(declare-fun b!27218 () Bool)

(assert (=> b!27218 (= e!13937 (or (not (= (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)) Nil!355)) (= lt!4537 (toList!115 (left!707 (right!710 xs!533))))))))

(assert (= (and d!14415 c!5978) b!27215))

(assert (= (and d!14415 (not c!5978)) b!27216))

(assert (= (and d!14415 res!12475) b!27217))

(assert (= (and b!27217 res!12476) b!27218))

(assert (=> b!27216 m!27829))

(declare-fun m!28353 () Bool)

(assert (=> b!27216 m!28353))

(declare-fun m!28355 () Bool)

(assert (=> d!14415 m!28355))

(assert (=> d!14415 m!27823))

(assert (=> d!14415 m!28297))

(assert (=> d!14415 m!27829))

(assert (=> d!14415 m!28325))

(declare-fun m!28357 () Bool)

(assert (=> b!27217 m!28357))

(assert (=> b!27217 m!27823))

(assert (=> b!27217 m!28301))

(assert (=> b!27217 m!27829))

(assert (=> b!27217 m!28331))

(assert (=> b!27094 d!14415))

(declare-fun b!27220 () Bool)

(declare-fun e!13938 () Int)

(declare-fun lt!4540 () Int)

(declare-fun lt!4538 () Int)

(assert (=> b!27220 (= e!13938 (+ 1 (ite (>= lt!4540 lt!4538) lt!4540 lt!4538)))))

(assert (=> b!27220 (= lt!4538 (level!51 (right!710 (right!710 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77)))))))

(assert (=> b!27220 (= lt!4540 (level!51 (left!707 (right!710 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77)))))))

(declare-fun d!14417 () Bool)

(declare-fun lt!4539 () Int)

(assert (=> d!14417 (>= lt!4539 0)))

(assert (=> d!14417 (= lt!4539 e!13938)))

(declare-fun c!5979 () Bool)

(assert (=> d!14417 (= c!5979 (or (is-Empty!73 (right!710 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77))) (is-Single!62 (right!710 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77)))))))

(assert (=> d!14417 (= (level!51 (right!710 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77))) lt!4539)))

(declare-fun b!27219 () Bool)

(assert (=> b!27219 (= e!13938 0)))

(assert (= (and d!14417 c!5979) b!27219))

(assert (= (and d!14417 (not c!5979)) b!27220))

(declare-fun m!28359 () Bool)

(assert (=> b!27220 m!28359))

(declare-fun m!28361 () Bool)

(assert (=> b!27220 m!28361))

(assert (=> b!27076 d!14417))

(declare-fun b!27222 () Bool)

(declare-fun e!13939 () Int)

(declare-fun lt!4543 () Int)

(declare-fun lt!4541 () Int)

(assert (=> b!27222 (= e!13939 (+ 1 (ite (>= lt!4543 lt!4541) lt!4543 lt!4541)))))

(assert (=> b!27222 (= lt!4541 (level!51 (right!710 (left!707 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77)))))))

(assert (=> b!27222 (= lt!4543 (level!51 (left!707 (left!707 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77)))))))

(declare-fun d!14419 () Bool)

(declare-fun lt!4542 () Int)

(assert (=> d!14419 (>= lt!4542 0)))

(assert (=> d!14419 (= lt!4542 e!13939)))

(declare-fun c!5980 () Bool)

(assert (=> d!14419 (= c!5980 (or (is-Empty!73 (left!707 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77))) (is-Single!62 (left!707 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77)))))))

(assert (=> d!14419 (= (level!51 (left!707 (ite lt!4411 (right!710 (right!710 xs!533)) ys!77))) lt!4542)))

(declare-fun b!27221 () Bool)

(assert (=> b!27221 (= e!13939 0)))

(assert (= (and d!14419 c!5980) b!27221))

(assert (= (and d!14419 (not c!5980)) b!27222))

(declare-fun m!28363 () Bool)

(assert (=> b!27222 m!28363))

(declare-fun m!28365 () Bool)

(assert (=> b!27222 m!28365))

(assert (=> b!27076 d!14419))

(declare-fun d!14421 () Bool)

(declare-fun res!12477 () Bool)

(declare-fun e!13940 () Bool)

(assert (=> d!14421 (=> res!12477 e!13940)))

(assert (=> d!14421 (= res!12477 (not (is-CC!62 (right!710 (right!710 ys!77)))))))

(assert (=> d!14421 (= (concInv!57 (right!710 (right!710 ys!77))) e!13940)))

(declare-fun b!27224 () Bool)

(declare-fun res!12480 () Bool)

(declare-fun e!13941 () Bool)

(assert (=> b!27224 (=> (not res!12480) (not e!13941))))

(assert (=> b!27224 (= res!12480 (not (isEmpty!319 (right!710 (right!710 (right!710 ys!77))))))))

(declare-fun b!27223 () Bool)

(assert (=> b!27223 (= e!13940 e!13941)))

(declare-fun res!12478 () Bool)

(assert (=> b!27223 (=> (not res!12478) (not e!13941))))

(assert (=> b!27223 (= res!12478 (not (isEmpty!319 (left!707 (right!710 (right!710 ys!77))))))))

(declare-fun b!27226 () Bool)

(assert (=> b!27226 (= e!13941 (concInv!57 (right!710 (right!710 (right!710 ys!77)))))))

(declare-fun b!27225 () Bool)

(declare-fun res!12479 () Bool)

(assert (=> b!27225 (=> (not res!12479) (not e!13941))))

(assert (=> b!27225 (= res!12479 (concInv!57 (left!707 (right!710 (right!710 ys!77)))))))

(assert (= (and d!14421 (not res!12477)) b!27223))

(assert (= (and b!27223 res!12478) b!27224))

(assert (= (and b!27224 res!12480) b!27225))

(assert (= (and b!27225 res!12479) b!27226))

(declare-fun m!28367 () Bool)

(assert (=> b!27224 m!28367))

(declare-fun m!28369 () Bool)

(assert (=> b!27223 m!28369))

(declare-fun m!28371 () Bool)

(assert (=> b!27226 m!28371))

(declare-fun m!28373 () Bool)

(assert (=> b!27225 m!28373))

(assert (=> b!27084 d!14421))

(declare-fun d!14423 () Bool)

(assert (=> d!14423 (= (isEmpty!319 (right!710 (left!707 res!5533))) (= (right!710 (left!707 res!5533)) Empty!73))))

(assert (=> b!26933 d!14423))

(assert (=> b!26927 d!14295))

(declare-fun b!27228 () Bool)

(declare-fun e!13942 () Int)

(declare-fun lt!4546 () Int)

(declare-fun lt!4544 () Int)

(assert (=> b!27228 (= e!13942 (+ 1 (ite (>= lt!4546 lt!4544) lt!4546 lt!4544)))))

(assert (=> b!27228 (= lt!4544 (level!51 (right!710 (left!707 (left!707 ys!77)))))))

(assert (=> b!27228 (= lt!4546 (level!51 (left!707 (left!707 (left!707 ys!77)))))))

(declare-fun d!14425 () Bool)

(declare-fun lt!4545 () Int)

(assert (=> d!14425 (>= lt!4545 0)))

(assert (=> d!14425 (= lt!4545 e!13942)))

(declare-fun c!5981 () Bool)

(assert (=> d!14425 (= c!5981 (or (is-Empty!73 (left!707 (left!707 ys!77))) (is-Single!62 (left!707 (left!707 ys!77)))))))

(assert (=> d!14425 (= (level!51 (left!707 (left!707 ys!77))) lt!4545)))

(declare-fun b!27227 () Bool)

(assert (=> b!27227 (= e!13942 0)))

(assert (= (and d!14425 c!5981) b!27227))

(assert (= (and d!14425 (not c!5981)) b!27228))

(declare-fun m!28375 () Bool)

(assert (=> b!27228 m!28375))

(declare-fun m!28377 () Bool)

(assert (=> b!27228 m!28377))

(assert (=> b!27100 d!14425))

(declare-fun b!27230 () Bool)

(declare-fun e!13943 () Int)

(declare-fun lt!4549 () Int)

(declare-fun lt!4547 () Int)

(assert (=> b!27230 (= e!13943 (+ 1 (ite (>= lt!4549 lt!4547) lt!4549 lt!4547)))))

(assert (=> b!27230 (= lt!4547 (level!51 (right!710 (right!710 (left!707 ys!77)))))))

(assert (=> b!27230 (= lt!4549 (level!51 (left!707 (right!710 (left!707 ys!77)))))))

(declare-fun d!14427 () Bool)

(declare-fun lt!4548 () Int)

(assert (=> d!14427 (>= lt!4548 0)))

(assert (=> d!14427 (= lt!4548 e!13943)))

(declare-fun c!5982 () Bool)

(assert (=> d!14427 (= c!5982 (or (is-Empty!73 (right!710 (left!707 ys!77))) (is-Single!62 (right!710 (left!707 ys!77)))))))

(assert (=> d!14427 (= (level!51 (right!710 (left!707 ys!77))) lt!4548)))

(declare-fun b!27229 () Bool)

(assert (=> b!27229 (= e!13943 0)))

(assert (= (and d!14427 c!5982) b!27229))

(assert (= (and d!14427 (not c!5982)) b!27230))

(declare-fun m!28379 () Bool)

(assert (=> b!27230 m!28379))

(declare-fun m!28381 () Bool)

(assert (=> b!27230 m!28381))

(assert (=> b!27100 d!14427))

(assert (=> b!27099 d!14425))

(assert (=> b!27099 d!14427))

(declare-fun d!14429 () Bool)

(declare-fun res!12481 () Bool)

(declare-fun e!13944 () Bool)

(assert (=> d!14429 (=> res!12481 e!13944)))

(assert (=> d!14429 (= res!12481 (not (is-CC!62 (left!707 (right!710 ys!77)))))))

(assert (=> d!14429 (= (concInv!57 (left!707 (right!710 ys!77))) e!13944)))

(declare-fun b!27232 () Bool)

(declare-fun res!12484 () Bool)

(declare-fun e!13945 () Bool)

(assert (=> b!27232 (=> (not res!12484) (not e!13945))))

(assert (=> b!27232 (= res!12484 (not (isEmpty!319 (right!710 (left!707 (right!710 ys!77))))))))

(declare-fun b!27231 () Bool)

(assert (=> b!27231 (= e!13944 e!13945)))

(declare-fun res!12482 () Bool)

(assert (=> b!27231 (=> (not res!12482) (not e!13945))))

(assert (=> b!27231 (= res!12482 (not (isEmpty!319 (left!707 (left!707 (right!710 ys!77))))))))

(declare-fun b!27234 () Bool)

(assert (=> b!27234 (= e!13945 (concInv!57 (right!710 (left!707 (right!710 ys!77)))))))

(declare-fun b!27233 () Bool)

(declare-fun res!12483 () Bool)

(assert (=> b!27233 (=> (not res!12483) (not e!13945))))

(assert (=> b!27233 (= res!12483 (concInv!57 (left!707 (left!707 (right!710 ys!77)))))))

(assert (= (and d!14429 (not res!12481)) b!27231))

(assert (= (and b!27231 res!12482) b!27232))

(assert (= (and b!27232 res!12484) b!27233))

(assert (= (and b!27233 res!12483) b!27234))

(declare-fun m!28383 () Bool)

(assert (=> b!27232 m!28383))

(declare-fun m!28385 () Bool)

(assert (=> b!27231 m!28385))

(declare-fun m!28387 () Bool)

(assert (=> b!27234 m!28387))

(declare-fun m!28389 () Bool)

(assert (=> b!27233 m!28389))

(assert (=> b!27083 d!14429))

(declare-fun b!27236 () Bool)

(declare-fun e!13946 () List!360)

(assert (=> b!27236 (= e!13946 (Cons!354 (h!271 (toList!115 (left!707 xs!533))) (++!40 (t!4374 (toList!115 (left!707 xs!533))) (toList!115 (right!710 xs!533)))))))

(declare-fun d!14431 () Bool)

(declare-fun e!13947 () Bool)

(assert (=> d!14431 e!13947))

(declare-fun res!12485 () Bool)

(assert (=> d!14431 (=> (not res!12485) (not e!13947))))

(declare-fun lt!4550 () List!360)

(assert (=> d!14431 (= res!12485 (= (content!70 lt!4550) (union (content!70 (toList!115 (left!707 xs!533))) (content!70 (toList!115 (right!710 xs!533))))))))

(assert (=> d!14431 (= lt!4550 e!13946)))

(declare-fun c!5983 () Bool)

(assert (=> d!14431 (= c!5983 (is-Nil!355 (toList!115 (left!707 xs!533))))))

(assert (=> d!14431 (= (++!40 (toList!115 (left!707 xs!533)) (toList!115 (right!710 xs!533))) lt!4550)))

(declare-fun b!27237 () Bool)

(declare-fun res!12486 () Bool)

(assert (=> b!27237 (=> (not res!12486) (not e!13947))))

(assert (=> b!27237 (= res!12486 (= (size!269 lt!4550) (+ (size!269 (toList!115 (left!707 xs!533))) (size!269 (toList!115 (right!710 xs!533))))))))

(declare-fun b!27235 () Bool)

(assert (=> b!27235 (= e!13946 (toList!115 (right!710 xs!533)))))

(declare-fun b!27238 () Bool)

(assert (=> b!27238 (= e!13947 (or (not (= (toList!115 (right!710 xs!533)) Nil!355)) (= lt!4550 (toList!115 (left!707 xs!533)))))))

(assert (= (and d!14431 c!5983) b!27235))

(assert (= (and d!14431 (not c!5983)) b!27236))

(assert (= (and d!14431 res!12485) b!27237))

(assert (= (and b!27237 res!12486) b!27238))

(assert (=> b!27236 m!27807))

(declare-fun m!28391 () Bool)

(assert (=> b!27236 m!28391))

(declare-fun m!28393 () Bool)

(assert (=> d!14431 m!28393))

(assert (=> d!14431 m!27805))

(assert (=> d!14431 m!28337))

(assert (=> d!14431 m!27807))

(declare-fun m!28395 () Bool)

(assert (=> d!14431 m!28395))

(declare-fun m!28397 () Bool)

(assert (=> b!27237 m!28397))

(assert (=> b!27237 m!27805))

(assert (=> b!27237 m!28341))

(assert (=> b!27237 m!27807))

(declare-fun m!28399 () Bool)

(assert (=> b!27237 m!28399))

(assert (=> b!26975 d!14431))

(assert (=> b!26975 d!14317))

(assert (=> b!26975 d!14319))

(declare-fun b!27239 () Bool)

(declare-fun e!13948 () Bool)

(assert (=> b!27239 (= e!13948 (= (++!40 (++!40 (t!4374 (toList!115 (left!707 xs!533))) (toList!115 (left!707 (right!710 xs!533)))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))) (++!40 (t!4374 (toList!115 (left!707 xs!533))) (++!40 (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))))))))

(declare-fun lt!4551 () Bool)

(assert (=> b!27239 (= lt!4551 (appendAssoc!8 (t!4374 (t!4374 (toList!115 (left!707 xs!533)))) (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))))))

(declare-fun d!14433 () Bool)

(assert (=> d!14433 e!13948))

(declare-fun c!5984 () Bool)

(assert (=> d!14433 (= c!5984 (is-Cons!354 (t!4374 (toList!115 (left!707 xs!533)))))))

(assert (=> d!14433 (= (appendAssoc!8 (t!4374 (toList!115 (left!707 xs!533))) (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))) true)))

(declare-fun b!27240 () Bool)

(assert (=> b!27240 (= e!13948 (= (++!40 (++!40 (t!4374 (toList!115 (left!707 xs!533))) (toList!115 (left!707 (right!710 xs!533)))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))) (++!40 (t!4374 (toList!115 (left!707 xs!533))) (++!40 (toList!115 (left!707 (right!710 xs!533))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77))))))))

(assert (= (and d!14433 c!5984) b!27239))

(assert (= (and d!14433 (not c!5984)) b!27240))

(assert (=> b!27239 m!27823))

(assert (=> b!27239 m!27829))

(declare-fun m!28401 () Bool)

(assert (=> b!27239 m!28401))

(assert (=> b!27239 m!28119))

(assert (=> b!27239 m!28343))

(assert (=> b!27239 m!27823))

(assert (=> b!27239 m!27829))

(assert (=> b!27239 m!28119))

(assert (=> b!27239 m!27823))

(assert (=> b!27239 m!28333))

(assert (=> b!27239 m!28333))

(assert (=> b!27239 m!27829))

(declare-fun m!28403 () Bool)

(assert (=> b!27239 m!28403))

(assert (=> b!27240 m!27823))

(assert (=> b!27240 m!28333))

(assert (=> b!27240 m!28333))

(assert (=> b!27240 m!27829))

(assert (=> b!27240 m!28403))

(assert (=> b!27240 m!27823))

(assert (=> b!27240 m!27829))

(assert (=> b!27240 m!28119))

(assert (=> b!27240 m!28119))

(assert (=> b!27240 m!28343))

(assert (=> b!27093 d!14433))

(assert (=> b!27093 d!14415))

(assert (=> b!27093 d!14409))

(assert (=> b!27093 d!14411))

(assert (=> b!27093 d!14413))

(declare-fun d!14435 () Bool)

(assert (=> d!14435 (= (isEmpty!319 (right!710 (right!710 ys!77))) (= (right!710 (right!710 ys!77)) Empty!73))))

(assert (=> b!27082 d!14435))

(declare-fun d!14437 () Bool)

(declare-fun lt!4552 () Int)

(assert (=> d!14437 (>= lt!4552 0)))

(declare-fun e!13949 () Int)

(assert (=> d!14437 (= lt!4552 e!13949)))

(declare-fun c!5985 () Bool)

(assert (=> d!14437 (= c!5985 (is-Nil!355 lt!4498))))

(assert (=> d!14437 (= (size!269 lt!4498) lt!4552)))

(declare-fun b!27241 () Bool)

(assert (=> b!27241 (= e!13949 0)))

(declare-fun b!27242 () Bool)

(assert (=> b!27242 (= e!13949 (+ 1 (size!269 (t!4374 lt!4498))))))

(assert (= (and d!14437 c!5985) b!27241))

(assert (= (and d!14437 (not c!5985)) b!27242))

(declare-fun m!28405 () Bool)

(assert (=> b!27242 m!28405))

(assert (=> b!27091 d!14437))

(declare-fun d!14439 () Bool)

(declare-fun lt!4553 () Int)

(assert (=> d!14439 (>= lt!4553 0)))

(declare-fun e!13950 () Int)

(assert (=> d!14439 (= lt!4553 e!13950)))

(declare-fun c!5986 () Bool)

(assert (=> d!14439 (= c!5986 (is-Nil!355 (toList!115 (right!710 (right!710 xs!533)))))))

(assert (=> d!14439 (= (size!269 (toList!115 (right!710 (right!710 xs!533)))) lt!4553)))

(declare-fun b!27243 () Bool)

(assert (=> b!27243 (= e!13950 0)))

(declare-fun b!27244 () Bool)

(assert (=> b!27244 (= e!13950 (+ 1 (size!269 (t!4374 (toList!115 (right!710 (right!710 xs!533)))))))))

(assert (= (and d!14439 c!5986) b!27243))

(assert (= (and d!14439 (not c!5986)) b!27244))

(declare-fun m!28407 () Bool)

(assert (=> b!27244 m!28407))

(assert (=> b!27091 d!14439))

(assert (=> b!27091 d!14387))

(declare-fun d!14441 () Bool)

(declare-fun res!12487 () Bool)

(declare-fun e!13951 () Bool)

(assert (=> d!14441 (=> res!12487 e!13951)))

(assert (=> d!14441 (= res!12487 (not (is-CC!62 (right!710 (left!707 res!5533)))))))

(assert (=> d!14441 (= (concInv!57 (right!710 (left!707 res!5533))) e!13951)))

(declare-fun b!27246 () Bool)

(declare-fun res!12490 () Bool)

(declare-fun e!13952 () Bool)

(assert (=> b!27246 (=> (not res!12490) (not e!13952))))

(assert (=> b!27246 (= res!12490 (not (isEmpty!319 (right!710 (right!710 (left!707 res!5533))))))))

(declare-fun b!27245 () Bool)

(assert (=> b!27245 (= e!13951 e!13952)))

(declare-fun res!12488 () Bool)

(assert (=> b!27245 (=> (not res!12488) (not e!13952))))

(assert (=> b!27245 (= res!12488 (not (isEmpty!319 (left!707 (right!710 (left!707 res!5533))))))))

(declare-fun b!27248 () Bool)

(assert (=> b!27248 (= e!13952 (concInv!57 (right!710 (right!710 (left!707 res!5533)))))))

(declare-fun b!27247 () Bool)

(declare-fun res!12489 () Bool)

(assert (=> b!27247 (=> (not res!12489) (not e!13952))))

(assert (=> b!27247 (= res!12489 (concInv!57 (left!707 (right!710 (left!707 res!5533)))))))

(assert (= (and d!14441 (not res!12487)) b!27245))

(assert (= (and b!27245 res!12488) b!27246))

(assert (= (and b!27246 res!12490) b!27247))

(assert (= (and b!27247 res!12489) b!27248))

(declare-fun m!28409 () Bool)

(assert (=> b!27246 m!28409))

(declare-fun m!28411 () Bool)

(assert (=> b!27245 m!28411))

(declare-fun m!28413 () Bool)

(assert (=> b!27248 m!28413))

(declare-fun m!28415 () Bool)

(assert (=> b!27247 m!28415))

(assert (=> b!26935 d!14441))

(declare-fun b!27250 () Bool)

(declare-fun e!13953 () Int)

(declare-fun lt!4556 () Int)

(declare-fun lt!4554 () Int)

(assert (=> b!27250 (= e!13953 (+ 1 (ite (>= lt!4556 lt!4554) lt!4556 lt!4554)))))

(assert (=> b!27250 (= lt!4554 (level!51 (right!710 (right!710 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77))))))))

(assert (=> b!27250 (= lt!4556 (level!51 (left!707 (right!710 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77))))))))

(declare-fun d!14443 () Bool)

(declare-fun lt!4555 () Int)

(assert (=> d!14443 (>= lt!4555 0)))

(assert (=> d!14443 (= lt!4555 e!13953)))

(declare-fun c!5987 () Bool)

(assert (=> d!14443 (= c!5987 (or (is-Empty!73 (right!710 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77)))) (is-Single!62 (right!710 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77))))))))

(assert (=> d!14443 (= (level!51 (right!710 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77)))) lt!4555)))

(declare-fun b!27249 () Bool)

(assert (=> b!27249 (= e!13953 0)))

(assert (= (and d!14443 c!5987) b!27249))

(assert (= (and d!14443 (not c!5987)) b!27250))

(declare-fun m!28417 () Bool)

(assert (=> b!27250 m!28417))

(declare-fun m!28419 () Bool)

(assert (=> b!27250 m!28419))

(assert (=> b!26896 d!14443))

(declare-fun b!27252 () Bool)

(declare-fun e!13954 () Int)

(declare-fun lt!4559 () Int)

(declare-fun lt!4557 () Int)

(assert (=> b!27252 (= e!13954 (+ 1 (ite (>= lt!4559 lt!4557) lt!4559 lt!4557)))))

(assert (=> b!27252 (= lt!4557 (level!51 (right!710 (left!707 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77))))))))

(assert (=> b!27252 (= lt!4559 (level!51 (left!707 (left!707 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77))))))))

(declare-fun d!14445 () Bool)

(declare-fun lt!4558 () Int)

(assert (=> d!14445 (>= lt!4558 0)))

(assert (=> d!14445 (= lt!4558 e!13954)))

(declare-fun c!5988 () Bool)

(assert (=> d!14445 (= c!5988 (or (is-Empty!73 (left!707 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77)))) (is-Single!62 (left!707 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77))))))))

(assert (=> d!14445 (= (level!51 (left!707 (ite lt!4403 (right!710 (right!710 (right!710 xs!533))) (left!707 ys!77)))) lt!4558)))

(declare-fun b!27251 () Bool)

(assert (=> b!27251 (= e!13954 0)))

(assert (= (and d!14445 c!5988) b!27251))

(assert (= (and d!14445 (not c!5988)) b!27252))

(declare-fun m!28421 () Bool)

(assert (=> b!27252 m!28421))

(declare-fun m!28423 () Bool)

(assert (=> b!27252 m!28423))

(assert (=> b!26896 d!14445))

(declare-fun d!14447 () Bool)

(declare-fun lt!4560 () Int)

(assert (=> d!14447 (>= lt!4560 0)))

(declare-fun e!13955 () Int)

(assert (=> d!14447 (= lt!4560 e!13955)))

(declare-fun c!5989 () Bool)

(assert (=> d!14447 (= c!5989 (is-Nil!355 lt!4476))))

(assert (=> d!14447 (= (size!269 lt!4476) lt!4560)))

(declare-fun b!27253 () Bool)

(assert (=> b!27253 (= e!13955 0)))

(declare-fun b!27254 () Bool)

(assert (=> b!27254 (= e!13955 (+ 1 (size!269 (t!4374 lt!4476))))))

(assert (= (and d!14447 c!5989) b!27253))

(assert (= (and d!14447 (not c!5989)) b!27254))

(declare-fun m!28425 () Bool)

(assert (=> b!27254 m!28425))

(assert (=> d!14321 d!14447))

(declare-fun b!27257 () Bool)

(declare-fun e!13957 () Int)

(assert (=> b!27257 (= e!13957 1)))

(declare-fun d!14449 () Bool)

(declare-fun lt!4561 () Int)

(assert (=> d!14449 (>= lt!4561 0)))

(declare-fun e!13956 () Int)

(assert (=> d!14449 (= lt!4561 e!13956)))

(declare-fun c!5990 () Bool)

(assert (=> d!14449 (= c!5990 (is-Empty!73 ys!77))))

(assert (=> d!14449 (= (size!270 ys!77) lt!4561)))

(declare-fun b!27255 () Bool)

(assert (=> b!27255 (= e!13956 0)))

(declare-fun b!27256 () Bool)

(assert (=> b!27256 (= e!13956 e!13957)))

(declare-fun c!5991 () Bool)

(assert (=> b!27256 (= c!5991 (is-Single!62 ys!77))))

(declare-fun b!27258 () Bool)

(assert (=> b!27258 (= e!13957 (+ (size!270 (left!707 ys!77)) (size!270 (right!710 ys!77))))))

(assert (= (and b!27256 c!5991) b!27257))

(assert (= (and b!27256 (not c!5991)) b!27258))

(assert (= (and d!14449 c!5990) b!27255))

(assert (= (and d!14449 (not c!5990)) b!27256))

(assert (=> b!27258 m!28057))

(assert (=> b!27258 m!27963))

(assert (=> d!14321 d!14449))

(assert (=> b!26937 d!14407))

(assert (=> b!26937 d!14405))

(declare-fun b!27260 () Bool)

(declare-fun e!13958 () List!360)

(assert (=> b!27260 (= e!13958 (Cons!354 (h!271 (t!4374 (toList!115 xs!533))) (++!40 (t!4374 (t!4374 (toList!115 xs!533))) (toList!115 (left!707 (left!707 ys!77))))))))

(declare-fun d!14451 () Bool)

(declare-fun e!13959 () Bool)

(assert (=> d!14451 e!13959))

(declare-fun res!12491 () Bool)

(assert (=> d!14451 (=> (not res!12491) (not e!13959))))

(declare-fun lt!4562 () List!360)

(assert (=> d!14451 (= res!12491 (= (content!70 lt!4562) (union (content!70 (t!4374 (toList!115 xs!533))) (content!70 (toList!115 (left!707 (left!707 ys!77)))))))))

(assert (=> d!14451 (= lt!4562 e!13958)))

(declare-fun c!5992 () Bool)

(assert (=> d!14451 (= c!5992 (is-Nil!355 (t!4374 (toList!115 xs!533))))))

(assert (=> d!14451 (= (++!40 (t!4374 (toList!115 xs!533)) (toList!115 (left!707 (left!707 ys!77)))) lt!4562)))

(declare-fun b!27261 () Bool)

(declare-fun res!12492 () Bool)

(assert (=> b!27261 (=> (not res!12492) (not e!13959))))

(assert (=> b!27261 (= res!12492 (= (size!269 lt!4562) (+ (size!269 (t!4374 (toList!115 xs!533))) (size!269 (toList!115 (left!707 (left!707 ys!77)))))))))

(declare-fun b!27259 () Bool)

(assert (=> b!27259 (= e!13958 (toList!115 (left!707 (left!707 ys!77))))))

(declare-fun b!27262 () Bool)

(assert (=> b!27262 (= e!13959 (or (not (= (toList!115 (left!707 (left!707 ys!77))) Nil!355)) (= lt!4562 (t!4374 (toList!115 xs!533)))))))

(assert (= (and d!14451 c!5992) b!27259))

(assert (= (and d!14451 (not c!5992)) b!27260))

(assert (= (and d!14451 res!12491) b!27261))

(assert (= (and b!27261 res!12492) b!27262))

(assert (=> b!27260 m!27815))

(declare-fun m!28427 () Bool)

(assert (=> b!27260 m!28427))

(declare-fun m!28429 () Bool)

(assert (=> d!14451 m!28429))

(declare-fun m!28431 () Bool)

(assert (=> d!14451 m!28431))

(assert (=> d!14451 m!27815))

(assert (=> d!14451 m!27993))

(declare-fun m!28433 () Bool)

(assert (=> b!27261 m!28433))

(assert (=> b!27261 m!28255))

(assert (=> b!27261 m!27815))

(assert (=> b!27261 m!27999))

(assert (=> b!26985 d!14451))

(declare-fun b!27263 () Bool)

(declare-fun e!13961 () Bool)

(declare-fun e!13960 () Bool)

(assert (=> b!27263 (= e!13961 e!13960)))

(declare-fun res!12495 () Bool)

(assert (=> b!27263 (=> (not res!12495) (not e!13960))))

(assert (=> b!27263 (= res!12495 (>= (- (level!51 (left!707 lt!4427)) (level!51 (right!710 lt!4427))) (- 1)))))

(declare-fun d!14453 () Bool)

(declare-fun res!12496 () Bool)

(assert (=> d!14453 (=> res!12496 e!13961)))

(assert (=> d!14453 (= res!12496 (not (is-CC!62 lt!4427)))))

(assert (=> d!14453 (= (balanced!58 lt!4427) e!13961)))

(declare-fun b!27264 () Bool)

(declare-fun res!12494 () Bool)

(assert (=> b!27264 (=> (not res!12494) (not e!13960))))

(assert (=> b!27264 (= res!12494 (<= (- (level!51 (left!707 lt!4427)) (level!51 (right!710 lt!4427))) 1))))

(declare-fun b!27266 () Bool)

(assert (=> b!27266 (= e!13960 (balanced!58 (right!710 lt!4427)))))

(declare-fun b!27265 () Bool)

(declare-fun res!12493 () Bool)

(assert (=> b!27265 (=> (not res!12493) (not e!13960))))

(assert (=> b!27265 (= res!12493 (balanced!58 (left!707 lt!4427)))))

(assert (= (and d!14453 (not res!12496)) b!27263))

(assert (= (and b!27263 res!12495) b!27264))

(assert (= (and b!27264 res!12494) b!27265))

(assert (= (and b!27265 res!12493) b!27266))

(declare-fun m!28435 () Bool)

(assert (=> b!27263 m!28435))

(declare-fun m!28437 () Bool)

(assert (=> b!27263 m!28437))

(assert (=> b!27264 m!28435))

(assert (=> b!27264 m!28437))

(declare-fun m!28439 () Bool)

(assert (=> b!27266 m!28439))

(declare-fun m!28441 () Bool)

(assert (=> b!27265 m!28441))

(assert (=> b!26912 d!14453))

(declare-fun b!27268 () Bool)

(declare-fun e!13962 () Int)

(declare-fun lt!4565 () Int)

(declare-fun lt!4563 () Int)

(assert (=> b!27268 (= e!13962 (+ 1 (ite (>= lt!4565 lt!4563) lt!4565 lt!4563)))))

(assert (=> b!27268 (= lt!4563 (level!51 (right!710 (left!707 (right!710 res!5533)))))))

(assert (=> b!27268 (= lt!4565 (level!51 (left!707 (left!707 (right!710 res!5533)))))))

(declare-fun d!14455 () Bool)

(declare-fun lt!4564 () Int)

(assert (=> d!14455 (>= lt!4564 0)))

(assert (=> d!14455 (= lt!4564 e!13962)))

(declare-fun c!5993 () Bool)

(assert (=> d!14455 (= c!5993 (or (is-Empty!73 (left!707 (right!710 res!5533))) (is-Single!62 (left!707 (right!710 res!5533)))))))

(assert (=> d!14455 (= (level!51 (left!707 (right!710 res!5533))) lt!4564)))

(declare-fun b!27267 () Bool)

(assert (=> b!27267 (= e!13962 0)))

(assert (= (and d!14455 c!5993) b!27267))

(assert (= (and d!14455 (not c!5993)) b!27268))

(declare-fun m!28443 () Bool)

(assert (=> b!27268 m!28443))

(declare-fun m!28445 () Bool)

(assert (=> b!27268 m!28445))

(assert (=> b!27015 d!14455))

(declare-fun b!27270 () Bool)

(declare-fun e!13963 () Int)

(declare-fun lt!4568 () Int)

(declare-fun lt!4566 () Int)

(assert (=> b!27270 (= e!13963 (+ 1 (ite (>= lt!4568 lt!4566) lt!4568 lt!4566)))))

(assert (=> b!27270 (= lt!4566 (level!51 (right!710 (right!710 (right!710 res!5533)))))))

(assert (=> b!27270 (= lt!4568 (level!51 (left!707 (right!710 (right!710 res!5533)))))))

(declare-fun d!14457 () Bool)

(declare-fun lt!4567 () Int)

(assert (=> d!14457 (>= lt!4567 0)))

(assert (=> d!14457 (= lt!4567 e!13963)))

(declare-fun c!5994 () Bool)

(assert (=> d!14457 (= c!5994 (or (is-Empty!73 (right!710 (right!710 res!5533))) (is-Single!62 (right!710 (right!710 res!5533)))))))

(assert (=> d!14457 (= (level!51 (right!710 (right!710 res!5533))) lt!4567)))

(declare-fun b!27269 () Bool)

(assert (=> b!27269 (= e!13963 0)))

(assert (= (and d!14457 c!5994) b!27269))

(assert (= (and d!14457 (not c!5994)) b!27270))

(declare-fun m!28447 () Bool)

(assert (=> b!27270 m!28447))

(declare-fun m!28449 () Bool)

(assert (=> b!27270 m!28449))

(assert (=> b!27015 d!14457))

(declare-fun b!27271 () Bool)

(declare-fun e!13964 () Bool)

(assert (=> b!27271 (= e!13964 (= (++!40 (++!40 (t!4374 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))) (toList!115 (right!710 (left!707 ys!77)))) (toList!115 (right!710 ys!77))) (++!40 (t!4374 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))) (++!40 (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))))))))

(declare-fun lt!4569 () Bool)

(assert (=> b!27271 (= lt!4569 (appendAssoc!8 (t!4374 (t!4374 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))))) (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))))))

(declare-fun d!14459 () Bool)

(assert (=> d!14459 e!13964))

(declare-fun c!5995 () Bool)

(assert (=> d!14459 (= c!5995 (is-Cons!354 (t!4374 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))))))))

(assert (=> d!14459 (= (appendAssoc!8 (t!4374 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))) (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))) true)))

(declare-fun b!27272 () Bool)

(assert (=> b!27272 (= e!13964 (= (++!40 (++!40 (t!4374 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))) (toList!115 (right!710 (left!707 ys!77)))) (toList!115 (right!710 ys!77))) (++!40 (t!4374 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))) (++!40 (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))))))))

(assert (= (and d!14459 c!5995) b!27271))

(assert (= (and d!14459 (not c!5995)) b!27272))

(assert (=> b!27271 m!27813))

(assert (=> b!27271 m!27801))

(declare-fun m!28451 () Bool)

(assert (=> b!27271 m!28451))

(assert (=> b!27271 m!28003))

(declare-fun m!28453 () Bool)

(assert (=> b!27271 m!28453))

(assert (=> b!27271 m!27813))

(assert (=> b!27271 m!27801))

(assert (=> b!27271 m!28003))

(assert (=> b!27271 m!27813))

(assert (=> b!27271 m!28265))

(assert (=> b!27271 m!28265))

(assert (=> b!27271 m!27801))

(declare-fun m!28455 () Bool)

(assert (=> b!27271 m!28455))

(assert (=> b!27272 m!27813))

(assert (=> b!27272 m!28265))

(assert (=> b!27272 m!28265))

(assert (=> b!27272 m!27801))

(assert (=> b!27272 m!28455))

(assert (=> b!27272 m!27813))

(assert (=> b!27272 m!27801))

(assert (=> b!27272 m!28003))

(assert (=> b!27272 m!28003))

(assert (=> b!27272 m!28453))

(assert (=> b!26992 d!14459))

(declare-fun b!27274 () Bool)

(declare-fun e!13965 () List!360)

(assert (=> b!27274 (= e!13965 (Cons!354 (h!271 (toList!115 (right!710 (left!707 ys!77)))) (++!40 (t!4374 (toList!115 (right!710 (left!707 ys!77)))) (toList!115 (right!710 ys!77)))))))

(declare-fun d!14461 () Bool)

(declare-fun e!13966 () Bool)

(assert (=> d!14461 e!13966))

(declare-fun res!12497 () Bool)

(assert (=> d!14461 (=> (not res!12497) (not e!13966))))

(declare-fun lt!4570 () List!360)

(assert (=> d!14461 (= res!12497 (= (content!70 lt!4570) (union (content!70 (toList!115 (right!710 (left!707 ys!77)))) (content!70 (toList!115 (right!710 ys!77))))))))

(assert (=> d!14461 (= lt!4570 e!13965)))

(declare-fun c!5996 () Bool)

(assert (=> d!14461 (= c!5996 (is-Nil!355 (toList!115 (right!710 (left!707 ys!77)))))))

(assert (=> d!14461 (= (++!40 (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))) lt!4570)))

(declare-fun b!27275 () Bool)

(declare-fun res!12498 () Bool)

(assert (=> b!27275 (=> (not res!12498) (not e!13966))))

(assert (=> b!27275 (= res!12498 (= (size!269 lt!4570) (+ (size!269 (toList!115 (right!710 (left!707 ys!77)))) (size!269 (toList!115 (right!710 ys!77))))))))

(declare-fun b!27273 () Bool)

(assert (=> b!27273 (= e!13965 (toList!115 (right!710 ys!77)))))

(declare-fun b!27276 () Bool)

(assert (=> b!27276 (= e!13966 (or (not (= (toList!115 (right!710 ys!77)) Nil!355)) (= lt!4570 (toList!115 (right!710 (left!707 ys!77))))))))

(assert (= (and d!14461 c!5996) b!27273))

(assert (= (and d!14461 (not c!5996)) b!27274))

(assert (= (and d!14461 res!12497) b!27275))

(assert (= (and b!27275 res!12498) b!27276))

(assert (=> b!27274 m!27801))

(declare-fun m!28457 () Bool)

(assert (=> b!27274 m!28457))

(declare-fun m!28459 () Bool)

(assert (=> d!14461 m!28459))

(assert (=> d!14461 m!27813))

(assert (=> d!14461 m!28271))

(assert (=> d!14461 m!27801))

(declare-fun m!28461 () Bool)

(assert (=> d!14461 m!28461))

(declare-fun m!28463 () Bool)

(assert (=> b!27275 m!28463))

(assert (=> b!27275 m!27813))

(assert (=> b!27275 m!28277))

(assert (=> b!27275 m!27801))

(declare-fun m!28465 () Bool)

(assert (=> b!27275 m!28465))

(assert (=> b!26992 d!14461))

(assert (=> b!26992 d!14391))

(declare-fun b!27278 () Bool)

(declare-fun e!13967 () List!360)

(assert (=> b!27278 (= e!13967 (Cons!354 (h!271 (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77))))) (++!40 (t!4374 (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77))))) (toList!115 (right!710 ys!77)))))))

(declare-fun d!14463 () Bool)

(declare-fun e!13968 () Bool)

(assert (=> d!14463 e!13968))

(declare-fun res!12499 () Bool)

(assert (=> d!14463 (=> (not res!12499) (not e!13968))))

(declare-fun lt!4571 () List!360)

(assert (=> d!14463 (= res!12499 (= (content!70 lt!4571) (union (content!70 (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77))))) (content!70 (toList!115 (right!710 ys!77))))))))

(assert (=> d!14463 (= lt!4571 e!13967)))

(declare-fun c!5997 () Bool)

(assert (=> d!14463 (= c!5997 (is-Nil!355 (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77))))))))

(assert (=> d!14463 (= (++!40 (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77)))) (toList!115 (right!710 ys!77))) lt!4571)))

(declare-fun b!27279 () Bool)

(declare-fun res!12500 () Bool)

(assert (=> b!27279 (=> (not res!12500) (not e!13968))))

(assert (=> b!27279 (= res!12500 (= (size!269 lt!4571) (+ (size!269 (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77))))) (size!269 (toList!115 (right!710 ys!77))))))))

(declare-fun b!27277 () Bool)

(assert (=> b!27277 (= e!13967 (toList!115 (right!710 ys!77)))))

(declare-fun b!27280 () Bool)

(assert (=> b!27280 (= e!13968 (or (not (= (toList!115 (right!710 ys!77)) Nil!355)) (= lt!4571 (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77)))))))))

(assert (= (and d!14463 c!5997) b!27277))

(assert (= (and d!14463 (not c!5997)) b!27278))

(assert (= (and d!14463 res!12499) b!27279))

(assert (= (and b!27279 res!12500) b!27280))

(assert (=> b!27278 m!27801))

(declare-fun m!28467 () Bool)

(assert (=> b!27278 m!28467))

(declare-fun m!28469 () Bool)

(assert (=> d!14463 m!28469))

(assert (=> d!14463 m!28007))

(declare-fun m!28471 () Bool)

(assert (=> d!14463 m!28471))

(assert (=> d!14463 m!27801))

(assert (=> d!14463 m!28461))

(declare-fun m!28473 () Bool)

(assert (=> b!27279 m!28473))

(assert (=> b!27279 m!28007))

(declare-fun m!28475 () Bool)

(assert (=> b!27279 m!28475))

(assert (=> b!27279 m!27801))

(assert (=> b!27279 m!28465))

(assert (=> b!26992 d!14463))

(declare-fun b!27282 () Bool)

(declare-fun e!13969 () List!360)

(assert (=> b!27282 (= e!13969 (Cons!354 (h!271 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))) (++!40 (t!4374 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))) (++!40 (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))))))))

(declare-fun d!14465 () Bool)

(declare-fun e!13970 () Bool)

(assert (=> d!14465 e!13970))

(declare-fun res!12501 () Bool)

(assert (=> d!14465 (=> (not res!12501) (not e!13970))))

(declare-fun lt!4572 () List!360)

(assert (=> d!14465 (= res!12501 (= (content!70 lt!4572) (union (content!70 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))) (content!70 (++!40 (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77)))))))))

(assert (=> d!14465 (= lt!4572 e!13969)))

(declare-fun c!5998 () Bool)

(assert (=> d!14465 (= c!5998 (is-Nil!355 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))))))

(assert (=> d!14465 (= (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))) (++!40 (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77)))) lt!4572)))

(declare-fun b!27283 () Bool)

(declare-fun res!12502 () Bool)

(assert (=> b!27283 (=> (not res!12502) (not e!13970))))

(assert (=> b!27283 (= res!12502 (= (size!269 lt!4572) (+ (size!269 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77))))) (size!269 (++!40 (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77)))))))))

(declare-fun b!27281 () Bool)

(assert (=> b!27281 (= e!13969 (++!40 (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))))))

(declare-fun b!27284 () Bool)

(assert (=> b!27284 (= e!13970 (or (not (= (++!40 (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))) Nil!355)) (= lt!4572 (++!40 (toList!115 xs!533) (toList!115 (left!707 (left!707 ys!77)))))))))

(assert (= (and d!14465 c!5998) b!27281))

(assert (= (and d!14465 (not c!5998)) b!27282))

(assert (= (and d!14465 res!12501) b!27283))

(assert (= (and b!27283 res!12502) b!27284))

(assert (=> b!27282 m!28003))

(assert (=> b!27282 m!28453))

(declare-fun m!28477 () Bool)

(assert (=> d!14465 m!28477))

(assert (=> d!14465 m!27817))

(assert (=> d!14465 m!28269))

(assert (=> d!14465 m!28003))

(declare-fun m!28479 () Bool)

(assert (=> d!14465 m!28479))

(declare-fun m!28481 () Bool)

(assert (=> b!27283 m!28481))

(assert (=> b!27283 m!27817))

(assert (=> b!27283 m!28275))

(assert (=> b!27283 m!28003))

(declare-fun m!28483 () Bool)

(assert (=> b!27283 m!28483))

(assert (=> b!26992 d!14465))

(assert (=> d!14297 d!14335))

(assert (=> d!14297 d!14359))

(assert (=> d!14297 d!14321))

(declare-fun d!14467 () Bool)

(declare-fun lt!4573 () List!360)

(assert (=> d!14467 (= (size!269 lt!4573) (size!270 lt!4402))))

(declare-fun e!13971 () List!360)

(assert (=> d!14467 (= lt!4573 e!13971)))

(declare-fun c!6000 () Bool)

(assert (=> d!14467 (= c!6000 (is-Empty!73 lt!4402))))

(assert (=> d!14467 (= (toList!115 lt!4402) lt!4573)))

(declare-fun b!27288 () Bool)

(declare-fun e!13972 () List!360)

(assert (=> b!27288 (= e!13972 (++!40 (toList!115 (left!707 lt!4402)) (toList!115 (right!710 lt!4402))))))

(declare-fun b!27287 () Bool)

(assert (=> b!27287 (= e!13972 (Cons!354 (x!8925 lt!4402) Nil!355))))

(declare-fun b!27286 () Bool)

(assert (=> b!27286 (= e!13971 e!13972)))

(declare-fun c!5999 () Bool)

(assert (=> b!27286 (= c!5999 (is-Single!62 lt!4402))))

(declare-fun b!27285 () Bool)

(assert (=> b!27285 (= e!13971 Nil!355)))

(assert (= (and b!27286 c!5999) b!27287))

(assert (= (and b!27286 (not c!5999)) b!27288))

(assert (= (and d!14467 c!6000) b!27285))

(assert (= (and d!14467 (not c!6000)) b!27286))

(declare-fun m!28485 () Bool)

(assert (=> d!14467 m!28485))

(declare-fun m!28487 () Bool)

(assert (=> d!14467 m!28487))

(declare-fun m!28489 () Bool)

(assert (=> b!27288 m!28489))

(declare-fun m!28491 () Bool)

(assert (=> b!27288 m!28491))

(assert (=> b!27288 m!28489))

(assert (=> b!27288 m!28491))

(declare-fun m!28493 () Bool)

(assert (=> b!27288 m!28493))

(assert (=> d!14297 d!14467))

(declare-fun b!27290 () Bool)

(declare-fun e!13973 () Int)

(declare-fun lt!4576 () Int)

(declare-fun lt!4574 () Int)

(assert (=> b!27290 (= e!13973 (+ 1 (ite (>= lt!4576 lt!4574) lt!4576 lt!4574)))))

(assert (=> b!27290 (= lt!4574 (level!51 (right!710 (left!707 lt!4402))))))

(assert (=> b!27290 (= lt!4576 (level!51 (left!707 (left!707 lt!4402))))))

(declare-fun d!14469 () Bool)

(declare-fun lt!4575 () Int)

(assert (=> d!14469 (>= lt!4575 0)))

(assert (=> d!14469 (= lt!4575 e!13973)))

(declare-fun c!6001 () Bool)

(assert (=> d!14469 (= c!6001 (or (is-Empty!73 (left!707 lt!4402)) (is-Single!62 (left!707 lt!4402))))))

(assert (=> d!14469 (= (level!51 (left!707 lt!4402)) lt!4575)))

(declare-fun b!27289 () Bool)

(assert (=> b!27289 (= e!13973 0)))

(assert (= (and d!14469 c!6001) b!27289))

(assert (= (and d!14469 (not c!6001)) b!27290))

(declare-fun m!28495 () Bool)

(assert (=> b!27290 m!28495))

(declare-fun m!28497 () Bool)

(assert (=> b!27290 m!28497))

(assert (=> b!27011 d!14469))

(declare-fun b!27292 () Bool)

(declare-fun e!13974 () Int)

(declare-fun lt!4579 () Int)

(declare-fun lt!4577 () Int)

(assert (=> b!27292 (= e!13974 (+ 1 (ite (>= lt!4579 lt!4577) lt!4579 lt!4577)))))

(assert (=> b!27292 (= lt!4577 (level!51 (right!710 (right!710 lt!4402))))))

(assert (=> b!27292 (= lt!4579 (level!51 (left!707 (right!710 lt!4402))))))

(declare-fun d!14471 () Bool)

(declare-fun lt!4578 () Int)

(assert (=> d!14471 (>= lt!4578 0)))

(assert (=> d!14471 (= lt!4578 e!13974)))

(declare-fun c!6002 () Bool)

(assert (=> d!14471 (= c!6002 (or (is-Empty!73 (right!710 lt!4402)) (is-Single!62 (right!710 lt!4402))))))

(assert (=> d!14471 (= (level!51 (right!710 lt!4402)) lt!4578)))

(declare-fun b!27291 () Bool)

(assert (=> b!27291 (= e!13974 0)))

(assert (= (and d!14471 c!6002) b!27291))

(assert (= (and d!14471 (not c!6002)) b!27292))

(declare-fun m!28499 () Bool)

(assert (=> b!27292 m!28499))

(declare-fun m!28501 () Bool)

(assert (=> b!27292 m!28501))

(assert (=> b!27011 d!14471))

(declare-fun b!27294 () Bool)

(declare-fun e!13975 () List!360)

(assert (=> b!27294 (= e!13975 (Cons!354 (h!271 (toList!115 (left!707 (left!707 (right!710 xs!533))))) (++!40 (t!4374 (toList!115 (left!707 (left!707 (right!710 xs!533))))) (toList!115 (right!710 (left!707 (right!710 xs!533)))))))))

(declare-fun d!14473 () Bool)

(declare-fun e!13976 () Bool)

(assert (=> d!14473 e!13976))

(declare-fun res!12503 () Bool)

(assert (=> d!14473 (=> (not res!12503) (not e!13976))))

(declare-fun lt!4580 () List!360)

(assert (=> d!14473 (= res!12503 (= (content!70 lt!4580) (union (content!70 (toList!115 (left!707 (left!707 (right!710 xs!533))))) (content!70 (toList!115 (right!710 (left!707 (right!710 xs!533))))))))))

(assert (=> d!14473 (= lt!4580 e!13975)))

(declare-fun c!6003 () Bool)

(assert (=> d!14473 (= c!6003 (is-Nil!355 (toList!115 (left!707 (left!707 (right!710 xs!533))))))))

(assert (=> d!14473 (= (++!40 (toList!115 (left!707 (left!707 (right!710 xs!533)))) (toList!115 (right!710 (left!707 (right!710 xs!533))))) lt!4580)))

(declare-fun b!27295 () Bool)

(declare-fun res!12504 () Bool)

(assert (=> b!27295 (=> (not res!12504) (not e!13976))))

(assert (=> b!27295 (= res!12504 (= (size!269 lt!4580) (+ (size!269 (toList!115 (left!707 (left!707 (right!710 xs!533))))) (size!269 (toList!115 (right!710 (left!707 (right!710 xs!533))))))))))

(declare-fun b!27293 () Bool)

(assert (=> b!27293 (= e!13975 (toList!115 (right!710 (left!707 (right!710 xs!533)))))))

(declare-fun b!27296 () Bool)

(assert (=> b!27296 (= e!13976 (or (not (= (toList!115 (right!710 (left!707 (right!710 xs!533)))) Nil!355)) (= lt!4580 (toList!115 (left!707 (left!707 (right!710 xs!533)))))))))

(assert (= (and d!14473 c!6003) b!27293))

(assert (= (and d!14473 (not c!6003)) b!27294))

(assert (= (and d!14473 res!12503) b!27295))

(assert (= (and b!27295 res!12504) b!27296))

(assert (=> b!27294 m!28129))

(declare-fun m!28503 () Bool)

(assert (=> b!27294 m!28503))

(declare-fun m!28505 () Bool)

(assert (=> d!14473 m!28505))

(assert (=> d!14473 m!28127))

(declare-fun m!28507 () Bool)

(assert (=> d!14473 m!28507))

(assert (=> d!14473 m!28129))

(declare-fun m!28509 () Bool)

(assert (=> d!14473 m!28509))

(declare-fun m!28511 () Bool)

(assert (=> b!27295 m!28511))

(assert (=> b!27295 m!28127))

(declare-fun m!28513 () Bool)

(assert (=> b!27295 m!28513))

(assert (=> b!27295 m!28129))

(declare-fun m!28515 () Bool)

(assert (=> b!27295 m!28515))

(assert (=> b!27055 d!14473))

(declare-fun d!14475 () Bool)

(declare-fun lt!4581 () List!360)

(assert (=> d!14475 (= (size!269 lt!4581) (size!270 (left!707 (left!707 (right!710 xs!533)))))))

(declare-fun e!13977 () List!360)

(assert (=> d!14475 (= lt!4581 e!13977)))

(declare-fun c!6005 () Bool)

(assert (=> d!14475 (= c!6005 (is-Empty!73 (left!707 (left!707 (right!710 xs!533)))))))

(assert (=> d!14475 (= (toList!115 (left!707 (left!707 (right!710 xs!533)))) lt!4581)))

(declare-fun b!27300 () Bool)

(declare-fun e!13978 () List!360)

(assert (=> b!27300 (= e!13978 (++!40 (toList!115 (left!707 (left!707 (left!707 (right!710 xs!533))))) (toList!115 (right!710 (left!707 (left!707 (right!710 xs!533)))))))))

(declare-fun b!27299 () Bool)

(assert (=> b!27299 (= e!13978 (Cons!354 (x!8925 (left!707 (left!707 (right!710 xs!533)))) Nil!355))))

(declare-fun b!27298 () Bool)

(assert (=> b!27298 (= e!13977 e!13978)))

(declare-fun c!6004 () Bool)

(assert (=> b!27298 (= c!6004 (is-Single!62 (left!707 (left!707 (right!710 xs!533)))))))

(declare-fun b!27297 () Bool)

(assert (=> b!27297 (= e!13977 Nil!355)))

(assert (= (and b!27298 c!6004) b!27299))

(assert (= (and b!27298 (not c!6004)) b!27300))

(assert (= (and d!14475 c!6005) b!27297))

(assert (= (and d!14475 (not c!6005)) b!27298))

(declare-fun m!28517 () Bool)

(assert (=> d!14475 m!28517))

(declare-fun m!28519 () Bool)

(assert (=> d!14475 m!28519))

(declare-fun m!28521 () Bool)

(assert (=> b!27300 m!28521))

(declare-fun m!28523 () Bool)

(assert (=> b!27300 m!28523))

(assert (=> b!27300 m!28521))

(assert (=> b!27300 m!28523))

(declare-fun m!28525 () Bool)

(assert (=> b!27300 m!28525))

(assert (=> b!27055 d!14475))

(declare-fun d!14477 () Bool)

(declare-fun lt!4582 () List!360)

(assert (=> d!14477 (= (size!269 lt!4582) (size!270 (right!710 (left!707 (right!710 xs!533)))))))

(declare-fun e!13979 () List!360)

(assert (=> d!14477 (= lt!4582 e!13979)))

(declare-fun c!6007 () Bool)

(assert (=> d!14477 (= c!6007 (is-Empty!73 (right!710 (left!707 (right!710 xs!533)))))))

(assert (=> d!14477 (= (toList!115 (right!710 (left!707 (right!710 xs!533)))) lt!4582)))

(declare-fun b!27304 () Bool)

(declare-fun e!13980 () List!360)

(assert (=> b!27304 (= e!13980 (++!40 (toList!115 (left!707 (right!710 (left!707 (right!710 xs!533))))) (toList!115 (right!710 (right!710 (left!707 (right!710 xs!533)))))))))

(declare-fun b!27303 () Bool)

(assert (=> b!27303 (= e!13980 (Cons!354 (x!8925 (right!710 (left!707 (right!710 xs!533)))) Nil!355))))

(declare-fun b!27302 () Bool)

(assert (=> b!27302 (= e!13979 e!13980)))

(declare-fun c!6006 () Bool)

(assert (=> b!27302 (= c!6006 (is-Single!62 (right!710 (left!707 (right!710 xs!533)))))))

(declare-fun b!27301 () Bool)

(assert (=> b!27301 (= e!13979 Nil!355)))

(assert (= (and b!27302 c!6006) b!27303))

(assert (= (and b!27302 (not c!6006)) b!27304))

(assert (= (and d!14477 c!6007) b!27301))

(assert (= (and d!14477 (not c!6007)) b!27302))

(declare-fun m!28527 () Bool)

(assert (=> d!14477 m!28527))

(declare-fun m!28529 () Bool)

(assert (=> d!14477 m!28529))

(declare-fun m!28531 () Bool)

(assert (=> b!27304 m!28531))

(declare-fun m!28533 () Bool)

(assert (=> b!27304 m!28533))

(assert (=> b!27304 m!28531))

(assert (=> b!27304 m!28533))

(declare-fun m!28535 () Bool)

(assert (=> b!27304 m!28535))

(assert (=> b!27055 d!14477))

(declare-fun d!14479 () Bool)

(declare-fun lt!4583 () Int)

(assert (=> d!14479 (>= lt!4583 0)))

(declare-fun e!13981 () Int)

(assert (=> d!14479 (= lt!4583 e!13981)))

(declare-fun c!6008 () Bool)

(assert (=> d!14479 (= c!6008 (is-Nil!355 lt!4486))))

(assert (=> d!14479 (= (size!269 lt!4486) lt!4583)))

(declare-fun b!27305 () Bool)

(assert (=> b!27305 (= e!13981 0)))

(declare-fun b!27306 () Bool)

(assert (=> b!27306 (= e!13981 (+ 1 (size!269 (t!4374 lt!4486))))))

(assert (= (and d!14479 c!6008) b!27305))

(assert (= (and d!14479 (not c!6008)) b!27306))

(declare-fun m!28537 () Bool)

(assert (=> b!27306 m!28537))

(assert (=> d!14333 d!14479))

(declare-fun b!27309 () Bool)

(declare-fun e!13983 () Int)

(assert (=> b!27309 (= e!13983 1)))

(declare-fun d!14481 () Bool)

(declare-fun lt!4584 () Int)

(assert (=> d!14481 (>= lt!4584 0)))

(declare-fun e!13982 () Int)

(assert (=> d!14481 (= lt!4584 e!13982)))

(declare-fun c!6009 () Bool)

(assert (=> d!14481 (= c!6009 (is-Empty!73 (left!707 (right!710 xs!533))))))

(assert (=> d!14481 (= (size!270 (left!707 (right!710 xs!533))) lt!4584)))

(declare-fun b!27307 () Bool)

(assert (=> b!27307 (= e!13982 0)))

(declare-fun b!27308 () Bool)

(assert (=> b!27308 (= e!13982 e!13983)))

(declare-fun c!6010 () Bool)

(assert (=> b!27308 (= c!6010 (is-Single!62 (left!707 (right!710 xs!533))))))

(declare-fun b!27310 () Bool)

(assert (=> b!27310 (= e!13983 (+ (size!270 (left!707 (left!707 (right!710 xs!533)))) (size!270 (right!710 (left!707 (right!710 xs!533))))))))

(assert (= (and b!27308 c!6010) b!27309))

(assert (= (and b!27308 (not c!6010)) b!27310))

(assert (= (and d!14481 c!6009) b!27307))

(assert (= (and d!14481 (not c!6009)) b!27308))

(assert (=> b!27310 m!28519))

(assert (=> b!27310 m!28529))

(assert (=> d!14333 d!14481))

(declare-fun d!14483 () Bool)

(declare-fun res!12505 () Bool)

(declare-fun e!13984 () Bool)

(assert (=> d!14483 (=> res!12505 e!13984)))

(assert (=> d!14483 (= res!12505 (not (is-CC!62 (right!710 (left!707 xs!533)))))))

(assert (=> d!14483 (= (concInv!57 (right!710 (left!707 xs!533))) e!13984)))

(declare-fun b!27312 () Bool)

(declare-fun res!12508 () Bool)

(declare-fun e!13985 () Bool)

(assert (=> b!27312 (=> (not res!12508) (not e!13985))))

(assert (=> b!27312 (= res!12508 (not (isEmpty!319 (right!710 (right!710 (left!707 xs!533))))))))

(declare-fun b!27311 () Bool)

(assert (=> b!27311 (= e!13984 e!13985)))

(declare-fun res!12506 () Bool)

(assert (=> b!27311 (=> (not res!12506) (not e!13985))))

(assert (=> b!27311 (= res!12506 (not (isEmpty!319 (left!707 (right!710 (left!707 xs!533))))))))

(declare-fun b!27314 () Bool)

(assert (=> b!27314 (= e!13985 (concInv!57 (right!710 (right!710 (left!707 xs!533)))))))

(declare-fun b!27313 () Bool)

(declare-fun res!12507 () Bool)

(assert (=> b!27313 (=> (not res!12507) (not e!13985))))

(assert (=> b!27313 (= res!12507 (concInv!57 (left!707 (right!710 (left!707 xs!533)))))))

(assert (= (and d!14483 (not res!12505)) b!27311))

(assert (= (and b!27311 res!12506) b!27312))

(assert (= (and b!27312 res!12508) b!27313))

(assert (= (and b!27313 res!12507) b!27314))

(declare-fun m!28539 () Bool)

(assert (=> b!27312 m!28539))

(declare-fun m!28541 () Bool)

(assert (=> b!27311 m!28541))

(declare-fun m!28543 () Bool)

(assert (=> b!27314 m!28543))

(declare-fun m!28545 () Bool)

(assert (=> b!27313 m!28545))

(assert (=> b!27106 d!14483))

(declare-fun d!14485 () Bool)

(assert (=> d!14485 (= (isEmpty!319 (left!707 (right!710 (right!710 xs!533)))) (= (left!707 (right!710 (right!710 xs!533))) Empty!73))))

(assert (=> b!27077 d!14485))

(declare-fun b!27315 () Bool)

(declare-fun e!13987 () Bool)

(declare-fun e!13986 () Bool)

(assert (=> b!27315 (= e!13987 e!13986)))

(declare-fun res!12511 () Bool)

(assert (=> b!27315 (=> (not res!12511) (not e!13986))))

(assert (=> b!27315 (= res!12511 (>= (- (level!51 (left!707 (left!707 (right!710 (right!710 xs!533))))) (level!51 (right!710 (left!707 (right!710 (right!710 xs!533)))))) (- 1)))))

(declare-fun d!14487 () Bool)

(declare-fun res!12512 () Bool)

(assert (=> d!14487 (=> res!12512 e!13987)))

(assert (=> d!14487 (= res!12512 (not (is-CC!62 (left!707 (right!710 (right!710 xs!533))))))))

(assert (=> d!14487 (= (balanced!58 (left!707 (right!710 (right!710 xs!533)))) e!13987)))

(declare-fun b!27316 () Bool)

(declare-fun res!12510 () Bool)

(assert (=> b!27316 (=> (not res!12510) (not e!13986))))

(assert (=> b!27316 (= res!12510 (<= (- (level!51 (left!707 (left!707 (right!710 (right!710 xs!533))))) (level!51 (right!710 (left!707 (right!710 (right!710 xs!533)))))) 1))))

(declare-fun b!27318 () Bool)

(assert (=> b!27318 (= e!13986 (balanced!58 (right!710 (left!707 (right!710 (right!710 xs!533))))))))

(declare-fun b!27317 () Bool)

(declare-fun res!12509 () Bool)

(assert (=> b!27317 (=> (not res!12509) (not e!13986))))

(assert (=> b!27317 (= res!12509 (balanced!58 (left!707 (left!707 (right!710 (right!710 xs!533))))))))

(assert (= (and d!14487 (not res!12512)) b!27315))

(assert (= (and b!27315 res!12511) b!27316))

(assert (= (and b!27316 res!12510) b!27317))

(assert (= (and b!27317 res!12509) b!27318))

(declare-fun m!28547 () Bool)

(assert (=> b!27315 m!28547))

(declare-fun m!28549 () Bool)

(assert (=> b!27315 m!28549))

(assert (=> b!27316 m!28547))

(assert (=> b!27316 m!28549))

(declare-fun m!28551 () Bool)

(assert (=> b!27318 m!28551))

(declare-fun m!28553 () Bool)

(assert (=> b!27317 m!28553))

(assert (=> b!27004 d!14487))

(declare-fun b!27320 () Bool)

(declare-fun e!13988 () List!360)

(assert (=> b!27320 (= e!13988 (Cons!354 (h!271 (++!40 (toList!115 (left!707 (right!710 xs!533))) (toList!115 (right!710 (right!710 xs!533))))) (++!40 (t!4374 (++!40 (toList!115 (left!707 (right!710 xs!533))) (toList!115 (right!710 (right!710 xs!533))))) (toList!115 ys!77))))))

(declare-fun d!14489 () Bool)

(declare-fun e!13989 () Bool)

(assert (=> d!14489 e!13989))

(declare-fun res!12513 () Bool)

(assert (=> d!14489 (=> (not res!12513) (not e!13989))))

(declare-fun lt!4585 () List!360)

(assert (=> d!14489 (= res!12513 (= (content!70 lt!4585) (union (content!70 (++!40 (toList!115 (left!707 (right!710 xs!533))) (toList!115 (right!710 (right!710 xs!533))))) (content!70 (toList!115 ys!77)))))))

(assert (=> d!14489 (= lt!4585 e!13988)))

(declare-fun c!6011 () Bool)

(assert (=> d!14489 (= c!6011 (is-Nil!355 (++!40 (toList!115 (left!707 (right!710 xs!533))) (toList!115 (right!710 (right!710 xs!533))))))))

(assert (=> d!14489 (= (++!40 (++!40 (toList!115 (left!707 (right!710 xs!533))) (toList!115 (right!710 (right!710 xs!533)))) (toList!115 ys!77)) lt!4585)))

(declare-fun b!27321 () Bool)

(declare-fun res!12514 () Bool)

(assert (=> b!27321 (=> (not res!12514) (not e!13989))))

(assert (=> b!27321 (= res!12514 (= (size!269 lt!4585) (+ (size!269 (++!40 (toList!115 (left!707 (right!710 xs!533))) (toList!115 (right!710 (right!710 xs!533))))) (size!269 (toList!115 ys!77)))))))

(declare-fun b!27319 () Bool)

(assert (=> b!27319 (= e!13988 (toList!115 ys!77))))

(declare-fun b!27322 () Bool)

(assert (=> b!27322 (= e!13989 (or (not (= (toList!115 ys!77) Nil!355)) (= lt!4585 (++!40 (toList!115 (left!707 (right!710 xs!533))) (toList!115 (right!710 (right!710 xs!533)))))))))

(assert (= (and d!14489 c!6011) b!27319))

(assert (= (and d!14489 (not c!6011)) b!27320))

(assert (= (and d!14489 res!12513) b!27321))

(assert (= (and b!27321 res!12514) b!27322))

(assert (=> b!27320 m!27809))

(declare-fun m!28555 () Bool)

(assert (=> b!27320 m!28555))

(declare-fun m!28557 () Bool)

(assert (=> d!14489 m!28557))

(assert (=> d!14489 m!28083))

(declare-fun m!28559 () Bool)

(assert (=> d!14489 m!28559))

(assert (=> d!14489 m!27809))

(assert (=> d!14489 m!28093))

(declare-fun m!28561 () Bool)

(assert (=> b!27321 m!28561))

(assert (=> b!27321 m!28083))

(declare-fun m!28563 () Bool)

(assert (=> b!27321 m!28563))

(assert (=> b!27321 m!27809))

(assert (=> b!27321 m!28097))

(assert (=> b!27051 d!14489))

(assert (=> b!27051 d!14397))

(assert (=> b!27051 d!14415))

(assert (=> b!27051 d!14359))

(assert (=> b!27050 d!14397))

(assert (=> b!27050 d!14415))

(declare-fun b!27323 () Bool)

(declare-fun e!13990 () Bool)

(assert (=> b!27323 (= e!13990 (= (++!40 (++!40 (t!4374 (toList!115 (left!707 (right!710 xs!533)))) (toList!115 (right!710 (right!710 xs!533)))) (toList!115 ys!77)) (++!40 (t!4374 (toList!115 (left!707 (right!710 xs!533)))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)))))))

(declare-fun lt!4586 () Bool)

(assert (=> b!27323 (= lt!4586 (appendAssoc!8 (t!4374 (t!4374 (toList!115 (left!707 (right!710 xs!533))))) (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)))))

(declare-fun d!14491 () Bool)

(assert (=> d!14491 e!13990))

(declare-fun c!6012 () Bool)

(assert (=> d!14491 (= c!6012 (is-Cons!354 (t!4374 (toList!115 (left!707 (right!710 xs!533))))))))

(assert (=> d!14491 (= (appendAssoc!8 (t!4374 (toList!115 (left!707 (right!710 xs!533)))) (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)) true)))

(declare-fun b!27324 () Bool)

(assert (=> b!27324 (= e!13990 (= (++!40 (++!40 (t!4374 (toList!115 (left!707 (right!710 xs!533)))) (toList!115 (right!710 (right!710 xs!533)))) (toList!115 ys!77)) (++!40 (t!4374 (toList!115 (left!707 (right!710 xs!533)))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 ys!77)))))))

(assert (= (and d!14491 c!6012) b!27323))

(assert (= (and d!14491 (not c!6012)) b!27324))

(assert (=> b!27323 m!27825))

(assert (=> b!27323 m!27809))

(declare-fun m!28565 () Bool)

(assert (=> b!27323 m!28565))

(assert (=> b!27323 m!27829))

(assert (=> b!27323 m!28353))

(assert (=> b!27323 m!27825))

(assert (=> b!27323 m!27809))

(assert (=> b!27323 m!27829))

(assert (=> b!27323 m!27825))

(assert (=> b!27323 m!28293))

(assert (=> b!27323 m!28293))

(assert (=> b!27323 m!27809))

(declare-fun m!28567 () Bool)

(assert (=> b!27323 m!28567))

(assert (=> b!27324 m!27825))

(assert (=> b!27324 m!28293))

(assert (=> b!27324 m!28293))

(assert (=> b!27324 m!27809))

(assert (=> b!27324 m!28567))

(assert (=> b!27324 m!27825))

(assert (=> b!27324 m!27809))

(assert (=> b!27324 m!27829))

(assert (=> b!27324 m!27829))

(assert (=> b!27324 m!28353))

(assert (=> b!27050 d!14491))

(assert (=> b!27050 d!14489))

(assert (=> b!27050 d!14359))

(declare-fun d!14493 () Bool)

(assert (=> d!14493 (= (isEmpty!319 (right!710 (left!707 ys!77))) (= (right!710 (left!707 ys!77)) Empty!73))))

(assert (=> b!26945 d!14493))

(declare-fun b!27326 () Bool)

(declare-fun e!13991 () Int)

(declare-fun lt!4589 () Int)

(declare-fun lt!4587 () Int)

(assert (=> b!27326 (= e!13991 (+ 1 (ite (>= lt!4589 lt!4587) lt!4589 lt!4587)))))

(assert (=> b!27326 (= lt!4587 (level!51 (right!710 (left!707 (right!710 ys!77)))))))

(assert (=> b!27326 (= lt!4589 (level!51 (left!707 (left!707 (right!710 ys!77)))))))

(declare-fun d!14495 () Bool)

(declare-fun lt!4588 () Int)

(assert (=> d!14495 (>= lt!4588 0)))

(assert (=> d!14495 (= lt!4588 e!13991)))

(declare-fun c!6013 () Bool)

(assert (=> d!14495 (= c!6013 (or (is-Empty!73 (left!707 (right!710 ys!77))) (is-Single!62 (left!707 (right!710 ys!77)))))))

(assert (=> d!14495 (= (level!51 (left!707 (right!710 ys!77))) lt!4588)))

(declare-fun b!27325 () Bool)

(assert (=> b!27325 (= e!13991 0)))

(assert (= (and d!14495 c!6013) b!27325))

(assert (= (and d!14495 (not c!6013)) b!27326))

(declare-fun m!28569 () Bool)

(assert (=> b!27326 m!28569))

(declare-fun m!28571 () Bool)

(assert (=> b!27326 m!28571))

(assert (=> b!26948 d!14495))

(declare-fun b!27328 () Bool)

(declare-fun e!13992 () Int)

(declare-fun lt!4592 () Int)

(declare-fun lt!4590 () Int)

(assert (=> b!27328 (= e!13992 (+ 1 (ite (>= lt!4592 lt!4590) lt!4592 lt!4590)))))

(assert (=> b!27328 (= lt!4590 (level!51 (right!710 (right!710 (right!710 ys!77)))))))

(assert (=> b!27328 (= lt!4592 (level!51 (left!707 (right!710 (right!710 ys!77)))))))

(declare-fun d!14497 () Bool)

(declare-fun lt!4591 () Int)

(assert (=> d!14497 (>= lt!4591 0)))

(assert (=> d!14497 (= lt!4591 e!13992)))

(declare-fun c!6014 () Bool)

(assert (=> d!14497 (= c!6014 (or (is-Empty!73 (right!710 (right!710 ys!77))) (is-Single!62 (right!710 (right!710 ys!77)))))))

(assert (=> d!14497 (= (level!51 (right!710 (right!710 ys!77))) lt!4591)))

(declare-fun b!27327 () Bool)

(assert (=> b!27327 (= e!13992 0)))

(assert (= (and d!14497 c!6014) b!27327))

(assert (= (and d!14497 (not c!6014)) b!27328))

(declare-fun m!28573 () Bool)

(assert (=> b!27328 m!28573))

(declare-fun m!28575 () Bool)

(assert (=> b!27328 m!28575))

(assert (=> b!26948 d!14497))

(assert (=> b!26993 d!14463))

(assert (=> b!26993 d!14391))

(assert (=> b!26993 d!14465))

(assert (=> b!26993 d!14461))

(declare-fun d!14499 () Bool)

(declare-fun res!12515 () Bool)

(declare-fun e!13993 () Bool)

(assert (=> d!14499 (=> res!12515 e!13993)))

(assert (=> d!14499 (= res!12515 (not (is-CC!62 (left!707 (right!710 (right!710 xs!533))))))))

(assert (=> d!14499 (= (concInv!57 (left!707 (right!710 (right!710 xs!533)))) e!13993)))

(declare-fun b!27330 () Bool)

(declare-fun res!12518 () Bool)

(declare-fun e!13994 () Bool)

(assert (=> b!27330 (=> (not res!12518) (not e!13994))))

(assert (=> b!27330 (= res!12518 (not (isEmpty!319 (right!710 (left!707 (right!710 (right!710 xs!533)))))))))

(declare-fun b!27329 () Bool)

(assert (=> b!27329 (= e!13993 e!13994)))

(declare-fun res!12516 () Bool)

(assert (=> b!27329 (=> (not res!12516) (not e!13994))))

(assert (=> b!27329 (= res!12516 (not (isEmpty!319 (left!707 (left!707 (right!710 (right!710 xs!533)))))))))

(declare-fun b!27332 () Bool)

(assert (=> b!27332 (= e!13994 (concInv!57 (right!710 (left!707 (right!710 (right!710 xs!533))))))))

(declare-fun b!27331 () Bool)

(declare-fun res!12517 () Bool)

(assert (=> b!27331 (=> (not res!12517) (not e!13994))))

(assert (=> b!27331 (= res!12517 (concInv!57 (left!707 (left!707 (right!710 (right!710 xs!533))))))))

(assert (= (and d!14499 (not res!12515)) b!27329))

(assert (= (and b!27329 res!12516) b!27330))

(assert (= (and b!27330 res!12518) b!27331))

(assert (= (and b!27331 res!12517) b!27332))

(declare-fun m!28577 () Bool)

(assert (=> b!27330 m!28577))

(declare-fun m!28579 () Bool)

(assert (=> b!27329 m!28579))

(declare-fun m!28581 () Bool)

(assert (=> b!27332 m!28581))

(declare-fun m!28583 () Bool)

(assert (=> b!27331 m!28583))

(assert (=> b!27079 d!14499))

(declare-fun b!27334 () Bool)

(declare-fun e!13995 () Int)

(declare-fun lt!4595 () Int)

(declare-fun lt!4593 () Int)

(assert (=> b!27334 (= e!13995 (+ 1 (ite (>= lt!4595 lt!4593) lt!4595 lt!4593)))))

(assert (=> b!27334 (= lt!4593 (level!51 (right!710 lt!4430)))))

(assert (=> b!27334 (= lt!4595 (level!51 (left!707 lt!4430)))))

(declare-fun d!14501 () Bool)

(declare-fun lt!4594 () Int)

(assert (=> d!14501 (>= lt!4594 0)))

(assert (=> d!14501 (= lt!4594 e!13995)))

(declare-fun c!6015 () Bool)

(assert (=> d!14501 (= c!6015 (or (is-Empty!73 lt!4430) (is-Single!62 lt!4430)))))

(assert (=> d!14501 (= (level!51 lt!4430) lt!4594)))

(declare-fun b!27333 () Bool)

(assert (=> b!27333 (= e!13995 0)))

(assert (= (and d!14501 c!6015) b!27333))

(assert (= (and d!14501 (not c!6015)) b!27334))

(declare-fun m!28585 () Bool)

(assert (=> b!27334 m!28585))

(declare-fun m!28587 () Bool)

(assert (=> b!27334 m!28587))

(assert (=> b!26915 d!14501))

(declare-fun b!27336 () Bool)

(declare-fun e!13996 () Int)

(declare-fun lt!4598 () Int)

(declare-fun lt!4596 () Int)

(assert (=> b!27336 (= e!13996 (+ 1 (ite (>= lt!4598 lt!4596) lt!4598 lt!4596)))))

(assert (=> b!27336 (= lt!4596 (level!51 (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))

(assert (=> b!27336 (= lt!4598 (level!51 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))

(declare-fun d!14503 () Bool)

(declare-fun lt!4597 () Int)

(assert (=> d!14503 (>= lt!4597 0)))

(assert (=> d!14503 (= lt!4597 e!13996)))

(declare-fun c!6016 () Bool)

(assert (=> d!14503 (= c!6016 (or (is-Empty!73 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (is-Single!62 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))

(assert (=> d!14503 (= (level!51 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) lt!4597)))

(declare-fun b!27335 () Bool)

(assert (=> b!27335 (= e!13996 0)))

(assert (= (and d!14503 c!6016) b!27335))

(assert (= (and d!14503 (not c!6016)) b!27336))

(declare-fun m!28589 () Bool)

(assert (=> b!27336 m!28589))

(declare-fun m!28591 () Bool)

(assert (=> b!27336 m!28591))

(assert (=> b!26908 d!14503))

(declare-fun b!27338 () Bool)

(declare-fun e!13997 () Int)

(declare-fun lt!4601 () Int)

(declare-fun lt!4599 () Int)

(assert (=> b!27338 (= e!13997 (+ 1 (ite (>= lt!4601 lt!4599) lt!4601 lt!4599)))))

(assert (=> b!27338 (= lt!4599 (level!51 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(assert (=> b!27338 (= lt!4601 (level!51 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(declare-fun d!14505 () Bool)

(declare-fun lt!4600 () Int)

(assert (=> d!14505 (>= lt!4600 0)))

(assert (=> d!14505 (= lt!4600 e!13997)))

(declare-fun c!6017 () Bool)

(assert (=> d!14505 (= c!6017 (or (is-Empty!73 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (is-Single!62 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(assert (=> d!14505 (= (level!51 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) lt!4600)))

(declare-fun b!27337 () Bool)

(assert (=> b!27337 (= e!13997 0)))

(assert (= (and d!14505 c!6017) b!27337))

(assert (= (and d!14505 (not c!6017)) b!27338))

(declare-fun m!28593 () Bool)

(assert (=> b!27338 m!28593))

(declare-fun m!28595 () Bool)

(assert (=> b!27338 m!28595))

(assert (=> b!26908 d!14505))

(declare-fun b!27340 () Bool)

(declare-fun e!13998 () Int)

(declare-fun lt!4604 () Int)

(declare-fun lt!4602 () Int)

(assert (=> b!27340 (= e!13998 (+ 1 (ite (>= lt!4604 lt!4602) lt!4604 lt!4602)))))

(assert (=> b!27340 (= lt!4602 (level!51 (right!710 lt!4427)))))

(assert (=> b!27340 (= lt!4604 (level!51 (left!707 lt!4427)))))

(declare-fun d!14507 () Bool)

(declare-fun lt!4603 () Int)

(assert (=> d!14507 (>= lt!4603 0)))

(assert (=> d!14507 (= lt!4603 e!13998)))

(declare-fun c!6018 () Bool)

(assert (=> d!14507 (= c!6018 (or (is-Empty!73 lt!4427) (is-Single!62 lt!4427)))))

(assert (=> d!14507 (= (level!51 lt!4427) lt!4603)))

(declare-fun b!27339 () Bool)

(assert (=> b!27339 (= e!13998 0)))

(assert (= (and d!14507 c!6018) b!27339))

(assert (= (and d!14507 (not c!6018)) b!27340))

(assert (=> b!27340 m!28437))

(assert (=> b!27340 m!28435))

(assert (=> b!26908 d!14507))

(declare-fun d!14509 () Bool)

(assert (=> d!14509 (= (isEmpty!319 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (= (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))) Empty!73))))

(assert (=> b!26901 d!14509))

(declare-fun d!14511 () Bool)

(declare-fun lt!4605 () Int)

(assert (=> d!14511 (>= lt!4605 0)))

(declare-fun e!13999 () Int)

(assert (=> d!14511 (= lt!4605 e!13999)))

(declare-fun c!6019 () Bool)

(assert (=> d!14511 (= c!6019 (is-Nil!355 lt!4455))))

(assert (=> d!14511 (= (size!269 lt!4455) lt!4605)))

(declare-fun b!27341 () Bool)

(assert (=> b!27341 (= e!13999 0)))

(declare-fun b!27342 () Bool)

(assert (=> b!27342 (= e!13999 (+ 1 (size!269 (t!4374 lt!4455))))))

(assert (= (and d!14511 c!6019) b!27341))

(assert (= (and d!14511 (not c!6019)) b!27342))

(declare-fun m!28597 () Bool)

(assert (=> b!27342 m!28597))

(assert (=> d!14277 d!14511))

(declare-fun b!27345 () Bool)

(declare-fun e!14001 () Int)

(assert (=> b!27345 (= e!14001 1)))

(declare-fun d!14513 () Bool)

(declare-fun lt!4606 () Int)

(assert (=> d!14513 (>= lt!4606 0)))

(declare-fun e!14000 () Int)

(assert (=> d!14513 (= lt!4606 e!14000)))

(declare-fun c!6020 () Bool)

(assert (=> d!14513 (= c!6020 (is-Empty!73 (left!707 (left!707 ys!77))))))

(assert (=> d!14513 (= (size!270 (left!707 (left!707 ys!77))) lt!4606)))

(declare-fun b!27343 () Bool)

(assert (=> b!27343 (= e!14000 0)))

(declare-fun b!27344 () Bool)

(assert (=> b!27344 (= e!14000 e!14001)))

(declare-fun c!6021 () Bool)

(assert (=> b!27344 (= c!6021 (is-Single!62 (left!707 (left!707 ys!77))))))

(declare-fun b!27346 () Bool)

(assert (=> b!27346 (= e!14001 (+ (size!270 (left!707 (left!707 (left!707 ys!77)))) (size!270 (right!710 (left!707 (left!707 ys!77))))))))

(assert (= (and b!27344 c!6021) b!27345))

(assert (= (and b!27344 (not c!6021)) b!27346))

(assert (= (and d!14513 c!6020) b!27343))

(assert (= (and d!14513 (not c!6020)) b!27344))

(declare-fun m!28599 () Bool)

(assert (=> b!27346 m!28599))

(declare-fun m!28601 () Bool)

(assert (=> b!27346 m!28601))

(assert (=> d!14277 d!14513))

(assert (=> b!26931 d!14497))

(assert (=> b!26931 d!14495))

(declare-fun d!14515 () Bool)

(assert (=> d!14515 (= (isEmpty!319 (right!710 lt!4402)) (= (right!710 lt!4402) Empty!73))))

(assert (=> b!26921 d!14515))

(declare-fun b!27347 () Bool)

(declare-fun e!14003 () Bool)

(declare-fun e!14002 () Bool)

(assert (=> b!27347 (= e!14003 e!14002)))

(declare-fun res!12521 () Bool)

(assert (=> b!27347 (=> (not res!12521) (not e!14002))))

(assert (=> b!27347 (= res!12521 (>= (- (level!51 (left!707 (left!707 (right!710 ys!77)))) (level!51 (right!710 (left!707 (right!710 ys!77))))) (- 1)))))

(declare-fun d!14517 () Bool)

(declare-fun res!12522 () Bool)

(assert (=> d!14517 (=> res!12522 e!14003)))

(assert (=> d!14517 (= res!12522 (not (is-CC!62 (left!707 (right!710 ys!77)))))))

(assert (=> d!14517 (= (balanced!58 (left!707 (right!710 ys!77))) e!14003)))

(declare-fun b!27348 () Bool)

(declare-fun res!12520 () Bool)

(assert (=> b!27348 (=> (not res!12520) (not e!14002))))

(assert (=> b!27348 (= res!12520 (<= (- (level!51 (left!707 (left!707 (right!710 ys!77)))) (level!51 (right!710 (left!707 (right!710 ys!77))))) 1))))

(declare-fun b!27350 () Bool)

(assert (=> b!27350 (= e!14002 (balanced!58 (right!710 (left!707 (right!710 ys!77)))))))

(declare-fun b!27349 () Bool)

(declare-fun res!12519 () Bool)

(assert (=> b!27349 (=> (not res!12519) (not e!14002))))

(assert (=> b!27349 (= res!12519 (balanced!58 (left!707 (left!707 (right!710 ys!77)))))))

(assert (= (and d!14517 (not res!12522)) b!27347))

(assert (= (and b!27347 res!12521) b!27348))

(assert (= (and b!27348 res!12520) b!27349))

(assert (= (and b!27349 res!12519) b!27350))

(assert (=> b!27347 m!28571))

(assert (=> b!27347 m!28569))

(assert (=> b!27348 m!28571))

(assert (=> b!27348 m!28569))

(declare-fun m!28603 () Bool)

(assert (=> b!27350 m!28603))

(declare-fun m!28605 () Bool)

(assert (=> b!27349 m!28605))

(assert (=> b!26950 d!14517))

(declare-fun d!14519 () Bool)

(declare-fun res!12523 () Bool)

(declare-fun e!14004 () Bool)

(assert (=> d!14519 (=> res!12523 e!14004)))

(assert (=> d!14519 (= res!12523 (not (is-CC!62 (right!710 lt!4402))))))

(assert (=> d!14519 (= (concInv!57 (right!710 lt!4402)) e!14004)))

(declare-fun b!27352 () Bool)

(declare-fun res!12526 () Bool)

(declare-fun e!14005 () Bool)

(assert (=> b!27352 (=> (not res!12526) (not e!14005))))

(assert (=> b!27352 (= res!12526 (not (isEmpty!319 (right!710 (right!710 lt!4402)))))))

(declare-fun b!27351 () Bool)

(assert (=> b!27351 (= e!14004 e!14005)))

(declare-fun res!12524 () Bool)

(assert (=> b!27351 (=> (not res!12524) (not e!14005))))

(assert (=> b!27351 (= res!12524 (not (isEmpty!319 (left!707 (right!710 lt!4402)))))))

(declare-fun b!27354 () Bool)

(assert (=> b!27354 (= e!14005 (concInv!57 (right!710 (right!710 lt!4402))))))

(declare-fun b!27353 () Bool)

(declare-fun res!12525 () Bool)

(assert (=> b!27353 (=> (not res!12525) (not e!14005))))

(assert (=> b!27353 (= res!12525 (concInv!57 (left!707 (right!710 lt!4402))))))

(assert (= (and d!14519 (not res!12523)) b!27351))

(assert (= (and b!27351 res!12524) b!27352))

(assert (= (and b!27352 res!12526) b!27353))

(assert (= (and b!27353 res!12525) b!27354))

(declare-fun m!28607 () Bool)

(assert (=> b!27352 m!28607))

(declare-fun m!28609 () Bool)

(assert (=> b!27351 m!28609))

(declare-fun m!28611 () Bool)

(assert (=> b!27354 m!28611))

(declare-fun m!28613 () Bool)

(assert (=> b!27353 m!28613))

(assert (=> b!26923 d!14519))

(declare-fun b!27355 () Bool)

(declare-fun e!14007 () Bool)

(declare-fun e!14006 () Bool)

(assert (=> b!27355 (= e!14007 e!14006)))

(declare-fun res!12529 () Bool)

(assert (=> b!27355 (=> (not res!12529) (not e!14006))))

(assert (=> b!27355 (= res!12529 (>= (- (level!51 (left!707 (right!710 (left!707 ys!77)))) (level!51 (right!710 (right!710 (left!707 ys!77))))) (- 1)))))

(declare-fun d!14521 () Bool)

(declare-fun res!12530 () Bool)

(assert (=> d!14521 (=> res!12530 e!14007)))

(assert (=> d!14521 (= res!12530 (not (is-CC!62 (right!710 (left!707 ys!77)))))))

(assert (=> d!14521 (= (balanced!58 (right!710 (left!707 ys!77))) e!14007)))

(declare-fun b!27356 () Bool)

(declare-fun res!12528 () Bool)

(assert (=> b!27356 (=> (not res!12528) (not e!14006))))

(assert (=> b!27356 (= res!12528 (<= (- (level!51 (left!707 (right!710 (left!707 ys!77)))) (level!51 (right!710 (right!710 (left!707 ys!77))))) 1))))

(declare-fun b!27358 () Bool)

(assert (=> b!27358 (= e!14006 (balanced!58 (right!710 (right!710 (left!707 ys!77)))))))

(declare-fun b!27357 () Bool)

(declare-fun res!12527 () Bool)

(assert (=> b!27357 (=> (not res!12527) (not e!14006))))

(assert (=> b!27357 (= res!12527 (balanced!58 (left!707 (right!710 (left!707 ys!77)))))))

(assert (= (and d!14521 (not res!12530)) b!27355))

(assert (= (and b!27355 res!12529) b!27356))

(assert (= (and b!27356 res!12528) b!27357))

(assert (= (and b!27357 res!12527) b!27358))

(assert (=> b!27355 m!28381))

(assert (=> b!27355 m!28379))

(assert (=> b!27356 m!28381))

(assert (=> b!27356 m!28379))

(declare-fun m!28615 () Bool)

(assert (=> b!27358 m!28615))

(declare-fun m!28617 () Bool)

(assert (=> b!27357 m!28617))

(assert (=> b!27102 d!14521))

(assert (=> b!27069 d!14321))

(declare-fun b!27359 () Bool)

(declare-fun e!14008 () Bool)

(assert (=> b!27359 (= e!14008 (= (++!40 (++!40 (toList!115 (left!707 (right!710 (right!710 xs!533)))) (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533)))))) (++!40 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77))) (++!40 (toList!115 (left!707 (right!710 (right!710 xs!533)))) (++!40 (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533))))) (++!40 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77))))))))

(declare-fun lt!4607 () Bool)

(assert (=> b!27359 (= lt!4607 (appendAssoc!8 (t!4374 (toList!115 (left!707 (right!710 (right!710 xs!533))))) (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533))))) (++!40 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77))))))

(declare-fun d!14523 () Bool)

(assert (=> d!14523 e!14008))

(declare-fun c!6022 () Bool)

(assert (=> d!14523 (= c!6022 (is-Cons!354 (toList!115 (left!707 (right!710 (right!710 xs!533))))))))

(assert (=> d!14523 (= (appendAssoc!8 (toList!115 (left!707 (right!710 (right!710 xs!533)))) (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533))))) (++!40 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77))) true)))

(declare-fun b!27360 () Bool)

(assert (=> b!27360 (= e!14008 (= (++!40 (++!40 (toList!115 (left!707 (right!710 (right!710 xs!533)))) (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533)))))) (++!40 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77))) (++!40 (toList!115 (left!707 (right!710 (right!710 xs!533)))) (++!40 (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533))))) (++!40 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77))))))))

(assert (= (and d!14523 c!6022) b!27359))

(assert (= (and d!14523 (not c!6022)) b!27360))

(assert (=> b!27359 m!28165))

(assert (=> b!27359 m!28171))

(declare-fun m!28619 () Bool)

(assert (=> b!27359 m!28619))

(assert (=> b!27359 m!28137))

(declare-fun m!28621 () Bool)

(assert (=> b!27359 m!28621))

(declare-fun m!28623 () Bool)

(assert (=> b!27359 m!28623))

(assert (=> b!27359 m!28165))

(assert (=> b!27359 m!28171))

(assert (=> b!27359 m!28621))

(assert (=> b!27359 m!28137))

(assert (=> b!27359 m!28165))

(declare-fun m!28625 () Bool)

(assert (=> b!27359 m!28625))

(assert (=> b!27359 m!28625))

(assert (=> b!27359 m!28171))

(declare-fun m!28627 () Bool)

(assert (=> b!27359 m!28627))

(assert (=> b!27360 m!28137))

(assert (=> b!27360 m!28165))

(assert (=> b!27360 m!28625))

(assert (=> b!27360 m!28625))

(assert (=> b!27360 m!28171))

(assert (=> b!27360 m!28627))

(assert (=> b!27360 m!28165))

(assert (=> b!27360 m!28171))

(assert (=> b!27360 m!28621))

(assert (=> b!27360 m!28137))

(assert (=> b!27360 m!28621))

(assert (=> b!27360 m!28623))

(assert (=> b!27069 d!14523))

(declare-fun d!14525 () Bool)

(declare-fun lt!4608 () List!360)

(assert (=> d!14525 (= (size!269 lt!4608) (size!270 (left!707 (right!710 (right!710 (right!710 xs!533))))))))

(declare-fun e!14009 () List!360)

(assert (=> d!14525 (= lt!4608 e!14009)))

(declare-fun c!6024 () Bool)

(assert (=> d!14525 (= c!6024 (is-Empty!73 (left!707 (right!710 (right!710 (right!710 xs!533))))))))

(assert (=> d!14525 (= (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533))))) lt!4608)))

(declare-fun b!27364 () Bool)

(declare-fun e!14010 () List!360)

(assert (=> b!27364 (= e!14010 (++!40 (toList!115 (left!707 (left!707 (right!710 (right!710 (right!710 xs!533)))))) (toList!115 (right!710 (left!707 (right!710 (right!710 (right!710 xs!533))))))))))

(declare-fun b!27363 () Bool)

(assert (=> b!27363 (= e!14010 (Cons!354 (x!8925 (left!707 (right!710 (right!710 (right!710 xs!533))))) Nil!355))))

(declare-fun b!27362 () Bool)

(assert (=> b!27362 (= e!14009 e!14010)))

(declare-fun c!6023 () Bool)

(assert (=> b!27362 (= c!6023 (is-Single!62 (left!707 (right!710 (right!710 (right!710 xs!533))))))))

(declare-fun b!27361 () Bool)

(assert (=> b!27361 (= e!14009 Nil!355)))

(assert (= (and b!27362 c!6023) b!27363))

(assert (= (and b!27362 (not c!6023)) b!27364))

(assert (= (and d!14525 c!6024) b!27361))

(assert (= (and d!14525 (not c!6024)) b!27362))

(declare-fun m!28629 () Bool)

(assert (=> d!14525 m!28629))

(declare-fun m!28631 () Bool)

(assert (=> d!14525 m!28631))

(declare-fun m!28633 () Bool)

(assert (=> b!27364 m!28633))

(declare-fun m!28635 () Bool)

(assert (=> b!27364 m!28635))

(assert (=> b!27364 m!28633))

(assert (=> b!27364 m!28635))

(declare-fun m!28637 () Bool)

(assert (=> b!27364 m!28637))

(assert (=> b!27069 d!14525))

(declare-fun d!14527 () Bool)

(declare-fun lt!4609 () List!360)

(assert (=> d!14527 (= (size!269 lt!4609) (size!270 (right!710 (right!710 (right!710 (right!710 xs!533))))))))

(declare-fun e!14011 () List!360)

(assert (=> d!14527 (= lt!4609 e!14011)))

(declare-fun c!6026 () Bool)

(assert (=> d!14527 (= c!6026 (is-Empty!73 (right!710 (right!710 (right!710 (right!710 xs!533))))))))

(assert (=> d!14527 (= (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))) lt!4609)))

(declare-fun b!27368 () Bool)

(declare-fun e!14012 () List!360)

(assert (=> b!27368 (= e!14012 (++!40 (toList!115 (left!707 (right!710 (right!710 (right!710 (right!710 xs!533)))))) (toList!115 (right!710 (right!710 (right!710 (right!710 (right!710 xs!533))))))))))

(declare-fun b!27367 () Bool)

(assert (=> b!27367 (= e!14012 (Cons!354 (x!8925 (right!710 (right!710 (right!710 (right!710 xs!533))))) Nil!355))))

(declare-fun b!27366 () Bool)

(assert (=> b!27366 (= e!14011 e!14012)))

(declare-fun c!6025 () Bool)

(assert (=> b!27366 (= c!6025 (is-Single!62 (right!710 (right!710 (right!710 (right!710 xs!533))))))))

(declare-fun b!27365 () Bool)

(assert (=> b!27365 (= e!14011 Nil!355)))

(assert (= (and b!27366 c!6025) b!27367))

(assert (= (and b!27366 (not c!6025)) b!27368))

(assert (= (and d!14527 c!6026) b!27365))

(assert (= (and d!14527 (not c!6026)) b!27366))

(declare-fun m!28639 () Bool)

(assert (=> d!14527 m!28639))

(declare-fun m!28641 () Bool)

(assert (=> d!14527 m!28641))

(declare-fun m!28643 () Bool)

(assert (=> b!27368 m!28643))

(declare-fun m!28645 () Bool)

(assert (=> b!27368 m!28645))

(assert (=> b!27368 m!28643))

(assert (=> b!27368 m!28645))

(declare-fun m!28647 () Bool)

(assert (=> b!27368 m!28647))

(assert (=> b!27069 d!14527))

(declare-fun b!27370 () Bool)

(declare-fun e!14013 () List!360)

(assert (=> b!27370 (= e!14013 (Cons!354 (h!271 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533)))))) (++!40 (t!4374 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533)))))) (toList!115 ys!77))))))

(declare-fun d!14529 () Bool)

(declare-fun e!14014 () Bool)

(assert (=> d!14529 e!14014))

(declare-fun res!12531 () Bool)

(assert (=> d!14529 (=> (not res!12531) (not e!14014))))

(declare-fun lt!4610 () List!360)

(assert (=> d!14529 (= res!12531 (= (content!70 lt!4610) (union (content!70 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533)))))) (content!70 (toList!115 ys!77)))))))

(assert (=> d!14529 (= lt!4610 e!14013)))

(declare-fun c!6027 () Bool)

(assert (=> d!14529 (= c!6027 (is-Nil!355 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533)))))))))

(assert (=> d!14529 (= (++!40 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77)) lt!4610)))

(declare-fun b!27371 () Bool)

(declare-fun res!12532 () Bool)

(assert (=> b!27371 (=> (not res!12532) (not e!14014))))

(assert (=> b!27371 (= res!12532 (= (size!269 lt!4610) (+ (size!269 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533)))))) (size!269 (toList!115 ys!77)))))))

(declare-fun b!27369 () Bool)

(assert (=> b!27369 (= e!14013 (toList!115 ys!77))))

(declare-fun b!27372 () Bool)

(assert (=> b!27372 (= e!14014 (or (not (= (toList!115 ys!77) Nil!355)) (= lt!4610 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))))))))

(assert (= (and d!14529 c!6027) b!27369))

(assert (= (and d!14529 (not c!6027)) b!27370))

(assert (= (and d!14529 res!12531) b!27371))

(assert (= (and b!27371 res!12532) b!27372))

(assert (=> b!27370 m!27809))

(declare-fun m!28649 () Bool)

(assert (=> b!27370 m!28649))

(declare-fun m!28651 () Bool)

(assert (=> d!14529 m!28651))

(assert (=> d!14529 m!28167))

(declare-fun m!28653 () Bool)

(assert (=> d!14529 m!28653))

(assert (=> d!14529 m!27809))

(assert (=> d!14529 m!28093))

(declare-fun m!28655 () Bool)

(assert (=> b!27371 m!28655))

(assert (=> b!27371 m!28167))

(declare-fun m!28657 () Bool)

(assert (=> b!27371 m!28657))

(assert (=> b!27371 m!27809))

(assert (=> b!27371 m!28097))

(assert (=> b!27069 d!14529))

(declare-fun d!14531 () Bool)

(declare-fun lt!4611 () List!360)

(assert (=> d!14531 (= (size!269 lt!4611) (size!270 (left!707 (right!710 (right!710 xs!533)))))))

(declare-fun e!14015 () List!360)

(assert (=> d!14531 (= lt!4611 e!14015)))

(declare-fun c!6029 () Bool)

(assert (=> d!14531 (= c!6029 (is-Empty!73 (left!707 (right!710 (right!710 xs!533)))))))

(assert (=> d!14531 (= (toList!115 (left!707 (right!710 (right!710 xs!533)))) lt!4611)))

(declare-fun b!27376 () Bool)

(declare-fun e!14016 () List!360)

(assert (=> b!27376 (= e!14016 (++!40 (toList!115 (left!707 (left!707 (right!710 (right!710 xs!533))))) (toList!115 (right!710 (left!707 (right!710 (right!710 xs!533)))))))))

(declare-fun b!27375 () Bool)

(assert (=> b!27375 (= e!14016 (Cons!354 (x!8925 (left!707 (right!710 (right!710 xs!533)))) Nil!355))))

(declare-fun b!27374 () Bool)

(assert (=> b!27374 (= e!14015 e!14016)))

(declare-fun c!6028 () Bool)

(assert (=> b!27374 (= c!6028 (is-Single!62 (left!707 (right!710 (right!710 xs!533)))))))

(declare-fun b!27373 () Bool)

(assert (=> b!27373 (= e!14015 Nil!355)))

(assert (= (and b!27374 c!6028) b!27375))

(assert (= (and b!27374 (not c!6028)) b!27376))

(assert (= (and d!14531 c!6029) b!27373))

(assert (= (and d!14531 (not c!6029)) b!27374))

(declare-fun m!28659 () Bool)

(assert (=> d!14531 m!28659))

(declare-fun m!28661 () Bool)

(assert (=> d!14531 m!28661))

(declare-fun m!28663 () Bool)

(assert (=> b!27376 m!28663))

(declare-fun m!28665 () Bool)

(assert (=> b!27376 m!28665))

(assert (=> b!27376 m!28663))

(assert (=> b!27376 m!28665))

(declare-fun m!28667 () Bool)

(assert (=> b!27376 m!28667))

(assert (=> b!27069 d!14531))

(declare-fun b!27378 () Bool)

(declare-fun e!14017 () Int)

(declare-fun lt!4614 () Int)

(declare-fun lt!4612 () Int)

(assert (=> b!27378 (= e!14017 (+ 1 (ite (>= lt!4614 lt!4612) lt!4614 lt!4612)))))

(assert (=> b!27378 (= lt!4612 (level!51 (right!710 (ite lt!4436 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))) (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))

(assert (=> b!27378 (= lt!4614 (level!51 (left!707 (ite lt!4436 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))) (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))

(declare-fun d!14533 () Bool)

(declare-fun lt!4613 () Int)

(assert (=> d!14533 (>= lt!4613 0)))

(assert (=> d!14533 (= lt!4613 e!14017)))

(declare-fun c!6030 () Bool)

(assert (=> d!14533 (= c!6030 (or (is-Empty!73 (ite lt!4436 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))) (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))) (is-Single!62 (ite lt!4436 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))) (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))

(assert (=> d!14533 (= (level!51 (ite lt!4436 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))) (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))) lt!4613)))

(declare-fun b!27377 () Bool)

(assert (=> b!27377 (= e!14017 0)))

(assert (= (and d!14533 c!6030) b!27377))

(assert (= (and d!14533 (not c!6030)) b!27378))

(declare-fun m!28669 () Bool)

(assert (=> b!27378 m!28669))

(declare-fun m!28671 () Bool)

(assert (=> b!27378 m!28671))

(assert (=> b!26911 d!14533))

(declare-fun b!27379 () Bool)

(declare-fun e!14018 () Bool)

(assert (=> b!27379 (= e!14018 (= (++!40 (++!40 (t!4374 (toList!115 xs!533)) (toList!115 (left!707 ys!77))) (toList!115 (right!710 ys!77))) (++!40 (t!4374 (toList!115 xs!533)) (++!40 (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))))))))

(declare-fun lt!4615 () Bool)

(assert (=> b!27379 (= lt!4615 (appendAssoc!8 (t!4374 (t!4374 (toList!115 xs!533))) (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))))))

(declare-fun d!14535 () Bool)

(assert (=> d!14535 e!14018))

(declare-fun c!6031 () Bool)

(assert (=> d!14535 (= c!6031 (is-Cons!354 (t!4374 (toList!115 xs!533))))))

(assert (=> d!14535 (= (appendAssoc!8 (t!4374 (toList!115 xs!533)) (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))) true)))

(declare-fun b!27380 () Bool)

(assert (=> b!27380 (= e!14018 (= (++!40 (++!40 (t!4374 (toList!115 xs!533)) (toList!115 (left!707 ys!77))) (toList!115 (right!710 ys!77))) (++!40 (t!4374 (toList!115 xs!533)) (++!40 (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))))))))

(assert (= (and d!14535 c!6031) b!27379))

(assert (= (and d!14535 (not c!6031)) b!27380))

(assert (=> b!27379 m!27799))

(assert (=> b!27379 m!27801))

(declare-fun m!28673 () Bool)

(assert (=> b!27379 m!28673))

(assert (=> b!27379 m!28047))

(declare-fun m!28675 () Bool)

(assert (=> b!27379 m!28675))

(assert (=> b!27379 m!27799))

(assert (=> b!27379 m!27801))

(assert (=> b!27379 m!28047))

(assert (=> b!27379 m!27799))

(declare-fun m!28677 () Bool)

(assert (=> b!27379 m!28677))

(assert (=> b!27379 m!28677))

(assert (=> b!27379 m!27801))

(declare-fun m!28679 () Bool)

(assert (=> b!27379 m!28679))

(assert (=> b!27380 m!27799))

(assert (=> b!27380 m!28677))

(assert (=> b!27380 m!28677))

(assert (=> b!27380 m!27801))

(assert (=> b!27380 m!28679))

(assert (=> b!27380 m!27799))

(assert (=> b!27380 m!27801))

(assert (=> b!27380 m!28047))

(assert (=> b!27380 m!28047))

(assert (=> b!27380 m!28675))

(assert (=> b!27018 d!14535))

(declare-fun b!27382 () Bool)

(declare-fun e!14019 () List!360)

(assert (=> b!27382 (= e!14019 (Cons!354 (h!271 (toList!115 (left!707 ys!77))) (++!40 (t!4374 (toList!115 (left!707 ys!77))) (toList!115 (right!710 ys!77)))))))

(declare-fun d!14537 () Bool)

(declare-fun e!14020 () Bool)

(assert (=> d!14537 e!14020))

(declare-fun res!12533 () Bool)

(assert (=> d!14537 (=> (not res!12533) (not e!14020))))

(declare-fun lt!4616 () List!360)

(assert (=> d!14537 (= res!12533 (= (content!70 lt!4616) (union (content!70 (toList!115 (left!707 ys!77))) (content!70 (toList!115 (right!710 ys!77))))))))

(assert (=> d!14537 (= lt!4616 e!14019)))

(declare-fun c!6032 () Bool)

(assert (=> d!14537 (= c!6032 (is-Nil!355 (toList!115 (left!707 ys!77))))))

(assert (=> d!14537 (= (++!40 (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))) lt!4616)))

(declare-fun b!27383 () Bool)

(declare-fun res!12534 () Bool)

(assert (=> b!27383 (=> (not res!12534) (not e!14020))))

(assert (=> b!27383 (= res!12534 (= (size!269 lt!4616) (+ (size!269 (toList!115 (left!707 ys!77))) (size!269 (toList!115 (right!710 ys!77))))))))

(declare-fun b!27381 () Bool)

(assert (=> b!27381 (= e!14019 (toList!115 (right!710 ys!77)))))

(declare-fun b!27384 () Bool)

(assert (=> b!27384 (= e!14020 (or (not (= (toList!115 (right!710 ys!77)) Nil!355)) (= lt!4616 (toList!115 (left!707 ys!77)))))))

(assert (= (and d!14537 c!6032) b!27381))

(assert (= (and d!14537 (not c!6032)) b!27382))

(assert (= (and d!14537 res!12533) b!27383))

(assert (= (and b!27383 res!12534) b!27384))

(assert (=> b!27382 m!27801))

(declare-fun m!28681 () Bool)

(assert (=> b!27382 m!28681))

(declare-fun m!28683 () Bool)

(assert (=> d!14537 m!28683))

(assert (=> d!14537 m!27799))

(declare-fun m!28685 () Bool)

(assert (=> d!14537 m!28685))

(assert (=> d!14537 m!27801))

(assert (=> d!14537 m!28461))

(declare-fun m!28687 () Bool)

(assert (=> b!27383 m!28687))

(assert (=> b!27383 m!27799))

(declare-fun m!28689 () Bool)

(assert (=> b!27383 m!28689))

(assert (=> b!27383 m!27801))

(assert (=> b!27383 m!28465))

(assert (=> b!27018 d!14537))

(declare-fun b!27386 () Bool)

(declare-fun e!14021 () List!360)

(assert (=> b!27386 (= e!14021 (Cons!354 (h!271 (++!40 (toList!115 xs!533) (toList!115 (left!707 ys!77)))) (++!40 (t!4374 (++!40 (toList!115 xs!533) (toList!115 (left!707 ys!77)))) (toList!115 (right!710 ys!77)))))))

(declare-fun d!14539 () Bool)

(declare-fun e!14022 () Bool)

(assert (=> d!14539 e!14022))

(declare-fun res!12535 () Bool)

(assert (=> d!14539 (=> (not res!12535) (not e!14022))))

(declare-fun lt!4617 () List!360)

(assert (=> d!14539 (= res!12535 (= (content!70 lt!4617) (union (content!70 (++!40 (toList!115 xs!533) (toList!115 (left!707 ys!77)))) (content!70 (toList!115 (right!710 ys!77))))))))

(assert (=> d!14539 (= lt!4617 e!14021)))

(declare-fun c!6033 () Bool)

(assert (=> d!14539 (= c!6033 (is-Nil!355 (++!40 (toList!115 xs!533) (toList!115 (left!707 ys!77)))))))

(assert (=> d!14539 (= (++!40 (++!40 (toList!115 xs!533) (toList!115 (left!707 ys!77))) (toList!115 (right!710 ys!77))) lt!4617)))

(declare-fun b!27387 () Bool)

(declare-fun res!12536 () Bool)

(assert (=> b!27387 (=> (not res!12536) (not e!14022))))

(assert (=> b!27387 (= res!12536 (= (size!269 lt!4617) (+ (size!269 (++!40 (toList!115 xs!533) (toList!115 (left!707 ys!77)))) (size!269 (toList!115 (right!710 ys!77))))))))

(declare-fun b!27385 () Bool)

(assert (=> b!27385 (= e!14021 (toList!115 (right!710 ys!77)))))

(declare-fun b!27388 () Bool)

(assert (=> b!27388 (= e!14022 (or (not (= (toList!115 (right!710 ys!77)) Nil!355)) (= lt!4617 (++!40 (toList!115 xs!533) (toList!115 (left!707 ys!77))))))))

(assert (= (and d!14539 c!6033) b!27385))

(assert (= (and d!14539 (not c!6033)) b!27386))

(assert (= (and d!14539 res!12535) b!27387))

(assert (= (and b!27387 res!12536) b!27388))

(assert (=> b!27386 m!27801))

(declare-fun m!28691 () Bool)

(assert (=> b!27386 m!28691))

(declare-fun m!28693 () Bool)

(assert (=> d!14539 m!28693))

(assert (=> d!14539 m!28051))

(declare-fun m!28695 () Bool)

(assert (=> d!14539 m!28695))

(assert (=> d!14539 m!27801))

(assert (=> d!14539 m!28461))

(declare-fun m!28697 () Bool)

(assert (=> b!27387 m!28697))

(assert (=> b!27387 m!28051))

(declare-fun m!28699 () Bool)

(assert (=> b!27387 m!28699))

(assert (=> b!27387 m!27801))

(assert (=> b!27387 m!28465))

(assert (=> b!27018 d!14539))

(declare-fun b!27390 () Bool)

(declare-fun e!14023 () List!360)

(assert (=> b!27390 (= e!14023 (Cons!354 (h!271 (toList!115 xs!533)) (++!40 (t!4374 (toList!115 xs!533)) (++!40 (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))))))))

(declare-fun d!14541 () Bool)

(declare-fun e!14024 () Bool)

(assert (=> d!14541 e!14024))

(declare-fun res!12537 () Bool)

(assert (=> d!14541 (=> (not res!12537) (not e!14024))))

(declare-fun lt!4618 () List!360)

(assert (=> d!14541 (= res!12537 (= (content!70 lt!4618) (union (content!70 (toList!115 xs!533)) (content!70 (++!40 (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77)))))))))

(assert (=> d!14541 (= lt!4618 e!14023)))

(declare-fun c!6034 () Bool)

(assert (=> d!14541 (= c!6034 (is-Nil!355 (toList!115 xs!533)))))

(assert (=> d!14541 (= (++!40 (toList!115 xs!533) (++!40 (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77)))) lt!4618)))

(declare-fun b!27391 () Bool)

(declare-fun res!12538 () Bool)

(assert (=> b!27391 (=> (not res!12538) (not e!14024))))

(assert (=> b!27391 (= res!12538 (= (size!269 lt!4618) (+ (size!269 (toList!115 xs!533)) (size!269 (++!40 (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77)))))))))

(declare-fun b!27389 () Bool)

(assert (=> b!27389 (= e!14023 (++!40 (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))))))

(declare-fun b!27392 () Bool)

(assert (=> b!27392 (= e!14024 (or (not (= (++!40 (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))) Nil!355)) (= lt!4618 (toList!115 xs!533))))))

(assert (= (and d!14541 c!6034) b!27389))

(assert (= (and d!14541 (not c!6034)) b!27390))

(assert (= (and d!14541 res!12537) b!27391))

(assert (= (and b!27391 res!12538) b!27392))

(assert (=> b!27390 m!28047))

(assert (=> b!27390 m!28675))

(declare-fun m!28701 () Bool)

(assert (=> d!14541 m!28701))

(assert (=> d!14541 m!27797))

(assert (=> d!14541 m!27991))

(assert (=> d!14541 m!28047))

(declare-fun m!28703 () Bool)

(assert (=> d!14541 m!28703))

(declare-fun m!28705 () Bool)

(assert (=> b!27391 m!28705))

(assert (=> b!27391 m!27797))

(assert (=> b!27391 m!27997))

(assert (=> b!27391 m!28047))

(declare-fun m!28707 () Bool)

(assert (=> b!27391 m!28707))

(assert (=> b!27018 d!14541))

(declare-fun b!27394 () Bool)

(declare-fun e!14025 () List!360)

(assert (=> b!27394 (= e!14025 (Cons!354 (h!271 (toList!115 xs!533)) (++!40 (t!4374 (toList!115 xs!533)) (toList!115 (left!707 ys!77)))))))

(declare-fun d!14543 () Bool)

(declare-fun e!14026 () Bool)

(assert (=> d!14543 e!14026))

(declare-fun res!12539 () Bool)

(assert (=> d!14543 (=> (not res!12539) (not e!14026))))

(declare-fun lt!4619 () List!360)

(assert (=> d!14543 (= res!12539 (= (content!70 lt!4619) (union (content!70 (toList!115 xs!533)) (content!70 (toList!115 (left!707 ys!77))))))))

(assert (=> d!14543 (= lt!4619 e!14025)))

(declare-fun c!6035 () Bool)

(assert (=> d!14543 (= c!6035 (is-Nil!355 (toList!115 xs!533)))))

(assert (=> d!14543 (= (++!40 (toList!115 xs!533) (toList!115 (left!707 ys!77))) lt!4619)))

(declare-fun b!27395 () Bool)

(declare-fun res!12540 () Bool)

(assert (=> b!27395 (=> (not res!12540) (not e!14026))))

(assert (=> b!27395 (= res!12540 (= (size!269 lt!4619) (+ (size!269 (toList!115 xs!533)) (size!269 (toList!115 (left!707 ys!77))))))))

(declare-fun b!27393 () Bool)

(assert (=> b!27393 (= e!14025 (toList!115 (left!707 ys!77)))))

(declare-fun b!27396 () Bool)

(assert (=> b!27396 (= e!14026 (or (not (= (toList!115 (left!707 ys!77)) Nil!355)) (= lt!4619 (toList!115 xs!533))))))

(assert (= (and d!14543 c!6035) b!27393))

(assert (= (and d!14543 (not c!6035)) b!27394))

(assert (= (and d!14543 res!12539) b!27395))

(assert (= (and b!27395 res!12540) b!27396))

(assert (=> b!27394 m!27799))

(assert (=> b!27394 m!28677))

(declare-fun m!28709 () Bool)

(assert (=> d!14543 m!28709))

(assert (=> d!14543 m!27797))

(assert (=> d!14543 m!27991))

(assert (=> d!14543 m!27799))

(assert (=> d!14543 m!28685))

(declare-fun m!28711 () Bool)

(assert (=> b!27395 m!28711))

(assert (=> b!27395 m!27797))

(assert (=> b!27395 m!27997))

(assert (=> b!27395 m!27799))

(assert (=> b!27395 m!28689))

(assert (=> b!27018 d!14543))

(declare-fun d!14545 () Bool)

(assert (=> d!14545 (= (isEmpty!319 (right!710 (left!707 xs!533))) (= (right!710 (left!707 xs!533)) Empty!73))))

(assert (=> b!27104 d!14545))

(declare-fun d!14547 () Bool)

(declare-fun c!6038 () Bool)

(assert (=> d!14547 (= c!6038 (is-Nil!355 lt!4498))))

(declare-fun e!14029 () (Set T!1827))

(assert (=> d!14547 (= (content!70 lt!4498) e!14029)))

(declare-fun b!27401 () Bool)

(assert (=> b!27401 (= e!14029 (as emptyset (Set T!1827)))))

(declare-fun b!27402 () Bool)

(assert (=> b!27402 (= e!14029 (union (insert (h!271 lt!4498) (as emptyset (Set T!1827))) (content!70 (t!4374 lt!4498))))))

(assert (= (and d!14547 c!6038) b!27401))

(assert (= (and d!14547 (not c!6038)) b!27402))

(declare-fun m!28713 () Bool)

(assert (=> b!27402 m!28713))

(declare-fun m!28715 () Bool)

(assert (=> b!27402 m!28715))

(assert (=> d!14359 d!14547))

(declare-fun d!14549 () Bool)

(declare-fun c!6039 () Bool)

(assert (=> d!14549 (= c!6039 (is-Nil!355 (toList!115 (right!710 (right!710 xs!533)))))))

(declare-fun e!14030 () (Set T!1827))

(assert (=> d!14549 (= (content!70 (toList!115 (right!710 (right!710 xs!533)))) e!14030)))

(declare-fun b!27403 () Bool)

(assert (=> b!27403 (= e!14030 (as emptyset (Set T!1827)))))

(declare-fun b!27404 () Bool)

(assert (=> b!27404 (= e!14030 (union (insert (h!271 (toList!115 (right!710 (right!710 xs!533)))) (as emptyset (Set T!1827))) (content!70 (t!4374 (toList!115 (right!710 (right!710 xs!533)))))))))

(assert (= (and d!14549 c!6039) b!27403))

(assert (= (and d!14549 (not c!6039)) b!27404))

(declare-fun m!28717 () Bool)

(assert (=> b!27404 m!28717))

(declare-fun m!28719 () Bool)

(assert (=> b!27404 m!28719))

(assert (=> d!14359 d!14549))

(declare-fun d!14551 () Bool)

(declare-fun c!6040 () Bool)

(assert (=> d!14551 (= c!6040 (is-Nil!355 (toList!115 ys!77)))))

(declare-fun e!14031 () (Set T!1827))

(assert (=> d!14551 (= (content!70 (toList!115 ys!77)) e!14031)))

(declare-fun b!27405 () Bool)

(assert (=> b!27405 (= e!14031 (as emptyset (Set T!1827)))))

(declare-fun b!27406 () Bool)

(assert (=> b!27406 (= e!14031 (union (insert (h!271 (toList!115 ys!77)) (as emptyset (Set T!1827))) (content!70 (t!4374 (toList!115 ys!77)))))))

(assert (= (and d!14551 c!6040) b!27405))

(assert (= (and d!14551 (not c!6040)) b!27406))

(declare-fun m!28721 () Bool)

(assert (=> b!27406 m!28721))

(declare-fun m!28723 () Bool)

(assert (=> b!27406 m!28723))

(assert (=> d!14359 d!14551))

(assert (=> b!27019 d!14539))

(assert (=> b!27019 d!14543))

(assert (=> b!27019 d!14541))

(assert (=> b!27019 d!14537))

(declare-fun d!14553 () Bool)

(declare-fun lt!4620 () Int)

(assert (=> d!14553 (>= lt!4620 0)))

(declare-fun e!14032 () Int)

(assert (=> d!14553 (= lt!4620 e!14032)))

(declare-fun c!6041 () Bool)

(assert (=> d!14553 (= c!6041 (is-Nil!355 lt!4461))))

(assert (=> d!14553 (= (size!269 lt!4461) lt!4620)))

(declare-fun b!27407 () Bool)

(assert (=> b!27407 (= e!14032 0)))

(declare-fun b!27408 () Bool)

(assert (=> b!27408 (= e!14032 (+ 1 (size!269 (t!4374 lt!4461))))))

(assert (= (and d!14553 c!6041) b!27407))

(assert (= (and d!14553 (not c!6041)) b!27408))

(declare-fun m!28725 () Bool)

(assert (=> b!27408 m!28725))

(assert (=> b!26986 d!14553))

(assert (=> b!26986 d!14385))

(declare-fun d!14555 () Bool)

(declare-fun lt!4621 () Int)

(assert (=> d!14555 (>= lt!4621 0)))

(declare-fun e!14033 () Int)

(assert (=> d!14555 (= lt!4621 e!14033)))

(declare-fun c!6042 () Bool)

(assert (=> d!14555 (= c!6042 (is-Nil!355 (toList!115 (left!707 (left!707 ys!77)))))))

(assert (=> d!14555 (= (size!269 (toList!115 (left!707 (left!707 ys!77)))) lt!4621)))

(declare-fun b!27409 () Bool)

(assert (=> b!27409 (= e!14033 0)))

(declare-fun b!27410 () Bool)

(assert (=> b!27410 (= e!14033 (+ 1 (size!269 (t!4374 (toList!115 (left!707 (left!707 ys!77)))))))))

(assert (= (and d!14555 c!6042) b!27409))

(assert (= (and d!14555 (not c!6042)) b!27410))

(declare-fun m!28727 () Bool)

(assert (=> b!27410 m!28727))

(assert (=> b!26986 d!14555))

(assert (=> b!26936 d!14407))

(assert (=> b!26936 d!14405))

(declare-fun b!27411 () Bool)

(declare-fun e!14035 () Bool)

(declare-fun e!14034 () Bool)

(assert (=> b!27411 (= e!14035 e!14034)))

(declare-fun res!12543 () Bool)

(assert (=> b!27411 (=> (not res!12543) (not e!14034))))

(assert (=> b!27411 (= res!12543 (>= (- (level!51 (left!707 (right!710 (right!710 res!5533)))) (level!51 (right!710 (right!710 (right!710 res!5533))))) (- 1)))))

(declare-fun d!14557 () Bool)

(declare-fun res!12544 () Bool)

(assert (=> d!14557 (=> res!12544 e!14035)))

(assert (=> d!14557 (= res!12544 (not (is-CC!62 (right!710 (right!710 res!5533)))))))

(assert (=> d!14557 (= (balanced!58 (right!710 (right!710 res!5533))) e!14035)))

(declare-fun b!27412 () Bool)

(declare-fun res!12542 () Bool)

(assert (=> b!27412 (=> (not res!12542) (not e!14034))))

(assert (=> b!27412 (= res!12542 (<= (- (level!51 (left!707 (right!710 (right!710 res!5533)))) (level!51 (right!710 (right!710 (right!710 res!5533))))) 1))))

(declare-fun b!27414 () Bool)

(assert (=> b!27414 (= e!14034 (balanced!58 (right!710 (right!710 (right!710 res!5533)))))))

(declare-fun b!27413 () Bool)

(declare-fun res!12541 () Bool)

(assert (=> b!27413 (=> (not res!12541) (not e!14034))))

(assert (=> b!27413 (= res!12541 (balanced!58 (left!707 (right!710 (right!710 res!5533)))))))

(assert (= (and d!14557 (not res!12544)) b!27411))

(assert (= (and b!27411 res!12543) b!27412))

(assert (= (and b!27412 res!12542) b!27413))

(assert (= (and b!27413 res!12541) b!27414))

(assert (=> b!27411 m!28449))

(assert (=> b!27411 m!28447))

(assert (=> b!27412 m!28449))

(assert (=> b!27412 m!28447))

(declare-fun m!28729 () Bool)

(assert (=> b!27414 m!28729))

(declare-fun m!28731 () Bool)

(assert (=> b!27413 m!28731))

(assert (=> b!27017 d!14557))

(declare-fun d!14559 () Bool)

(declare-fun lt!4622 () Int)

(assert (=> d!14559 (>= lt!4622 0)))

(declare-fun e!14036 () Int)

(assert (=> d!14559 (= lt!4622 e!14036)))

(declare-fun c!6043 () Bool)

(assert (=> d!14559 (= c!6043 (is-Nil!355 lt!4475))))

(assert (=> d!14559 (= (size!269 lt!4475) lt!4622)))

(declare-fun b!27415 () Bool)

(assert (=> b!27415 (= e!14036 0)))

(declare-fun b!27416 () Bool)

(assert (=> b!27416 (= e!14036 (+ 1 (size!269 (t!4374 lt!4475))))))

(assert (= (and d!14559 c!6043) b!27415))

(assert (= (and d!14559 (not c!6043)) b!27416))

(declare-fun m!28733 () Bool)

(assert (=> b!27416 m!28733))

(assert (=> d!14319 d!14559))

(declare-fun b!27419 () Bool)

(declare-fun e!14038 () Int)

(assert (=> b!27419 (= e!14038 1)))

(declare-fun d!14561 () Bool)

(declare-fun lt!4623 () Int)

(assert (=> d!14561 (>= lt!4623 0)))

(declare-fun e!14037 () Int)

(assert (=> d!14561 (= lt!4623 e!14037)))

(declare-fun c!6044 () Bool)

(assert (=> d!14561 (= c!6044 (is-Empty!73 (right!710 xs!533)))))

(assert (=> d!14561 (= (size!270 (right!710 xs!533)) lt!4623)))

(declare-fun b!27417 () Bool)

(assert (=> b!27417 (= e!14037 0)))

(declare-fun b!27418 () Bool)

(assert (=> b!27418 (= e!14037 e!14038)))

(declare-fun c!6045 () Bool)

(assert (=> b!27418 (= c!6045 (is-Single!62 (right!710 xs!533)))))

(declare-fun b!27420 () Bool)

(assert (=> b!27420 (= e!14038 (+ (size!270 (left!707 (right!710 xs!533))) (size!270 (right!710 (right!710 xs!533)))))))

(assert (= (and b!27418 c!6045) b!27419))

(assert (= (and b!27418 (not c!6045)) b!27420))

(assert (= (and d!14561 c!6044) b!27417))

(assert (= (and d!14561 (not c!6044)) b!27418))

(assert (=> b!27420 m!28125))

(assert (=> b!27420 m!28135))

(assert (=> d!14319 d!14561))

(declare-fun b!27422 () Bool)

(declare-fun e!14039 () Int)

(declare-fun lt!4626 () Int)

(declare-fun lt!4624 () Int)

(assert (=> b!27422 (= e!14039 (+ 1 (ite (>= lt!4626 lt!4624) lt!4626 lt!4624)))))

(assert (=> b!27422 (= lt!4624 (level!51 (right!710 (right!710 (left!707 nrr!4)))))))

(assert (=> b!27422 (= lt!4626 (level!51 (left!707 (right!710 (left!707 nrr!4)))))))

(declare-fun d!14563 () Bool)

(declare-fun lt!4625 () Int)

(assert (=> d!14563 (>= lt!4625 0)))

(assert (=> d!14563 (= lt!4625 e!14039)))

(declare-fun c!6046 () Bool)

(assert (=> d!14563 (= c!6046 (or (is-Empty!73 (right!710 (left!707 nrr!4))) (is-Single!62 (right!710 (left!707 nrr!4)))))))

(assert (=> d!14563 (= (level!51 (right!710 (left!707 nrr!4))) lt!4625)))

(declare-fun b!27421 () Bool)

(assert (=> b!27421 (= e!14039 0)))

(assert (= (and d!14563 c!6046) b!27421))

(assert (= (and d!14563 (not c!6046)) b!27422))

(declare-fun m!28735 () Bool)

(assert (=> b!27422 m!28735))

(declare-fun m!28737 () Bool)

(assert (=> b!27422 m!28737))

(assert (=> b!27098 d!14563))

(declare-fun b!27424 () Bool)

(declare-fun e!14040 () Int)

(declare-fun lt!4629 () Int)

(declare-fun lt!4627 () Int)

(assert (=> b!27424 (= e!14040 (+ 1 (ite (>= lt!4629 lt!4627) lt!4629 lt!4627)))))

(assert (=> b!27424 (= lt!4627 (level!51 (right!710 (left!707 (left!707 nrr!4)))))))

(assert (=> b!27424 (= lt!4629 (level!51 (left!707 (left!707 (left!707 nrr!4)))))))

(declare-fun d!14565 () Bool)

(declare-fun lt!4628 () Int)

(assert (=> d!14565 (>= lt!4628 0)))

(assert (=> d!14565 (= lt!4628 e!14040)))

(declare-fun c!6047 () Bool)

(assert (=> d!14565 (= c!6047 (or (is-Empty!73 (left!707 (left!707 nrr!4))) (is-Single!62 (left!707 (left!707 nrr!4)))))))

(assert (=> d!14565 (= (level!51 (left!707 (left!707 nrr!4))) lt!4628)))

(declare-fun b!27423 () Bool)

(assert (=> b!27423 (= e!14040 0)))

(assert (= (and d!14565 c!6047) b!27423))

(assert (= (and d!14565 (not c!6047)) b!27424))

(declare-fun m!28739 () Bool)

(assert (=> b!27424 m!28739))

(declare-fun m!28741 () Bool)

(assert (=> b!27424 m!28741))

(assert (=> b!27098 d!14565))

(declare-fun b!27426 () Bool)

(declare-fun e!14041 () Int)

(declare-fun lt!4632 () Int)

(declare-fun lt!4630 () Int)

(assert (=> b!27426 (= e!14041 (+ 1 (ite (>= lt!4632 lt!4630) lt!4632 lt!4630)))))

(assert (=> b!27426 (= lt!4630 (level!51 (right!710 (right!710 (right!710 (right!710 xs!533))))))))

(assert (=> b!27426 (= lt!4632 (level!51 (left!707 (right!710 (right!710 (right!710 xs!533))))))))

(declare-fun d!14567 () Bool)

(declare-fun lt!4631 () Int)

(assert (=> d!14567 (>= lt!4631 0)))

(assert (=> d!14567 (= lt!4631 e!14041)))

(declare-fun c!6048 () Bool)

(assert (=> d!14567 (= c!6048 (or (is-Empty!73 (right!710 (right!710 (right!710 xs!533)))) (is-Single!62 (right!710 (right!710 (right!710 xs!533))))))))

(assert (=> d!14567 (= (level!51 (right!710 (right!710 (right!710 xs!533)))) lt!4631)))

(declare-fun b!27425 () Bool)

(assert (=> b!27425 (= e!14041 0)))

(assert (= (and d!14567 c!6048) b!27425))

(assert (= (and d!14567 (not c!6048)) b!27426))

(declare-fun m!28743 () Bool)

(assert (=> b!27426 m!28743))

(declare-fun m!28745 () Bool)

(assert (=> b!27426 m!28745))

(assert (=> b!26995 d!14567))

(declare-fun b!27428 () Bool)

(declare-fun e!14042 () Int)

(declare-fun lt!4635 () Int)

(declare-fun lt!4633 () Int)

(assert (=> b!27428 (= e!14042 (+ 1 (ite (>= lt!4635 lt!4633) lt!4635 lt!4633)))))

(assert (=> b!27428 (= lt!4633 (level!51 (right!710 (left!707 (right!710 (right!710 xs!533))))))))

(assert (=> b!27428 (= lt!4635 (level!51 (left!707 (left!707 (right!710 (right!710 xs!533))))))))

(declare-fun d!14569 () Bool)

(declare-fun lt!4634 () Int)

(assert (=> d!14569 (>= lt!4634 0)))

(assert (=> d!14569 (= lt!4634 e!14042)))

(declare-fun c!6049 () Bool)

(assert (=> d!14569 (= c!6049 (or (is-Empty!73 (left!707 (right!710 (right!710 xs!533)))) (is-Single!62 (left!707 (right!710 (right!710 xs!533))))))))

(assert (=> d!14569 (= (level!51 (left!707 (right!710 (right!710 xs!533)))) lt!4634)))

(declare-fun b!27427 () Bool)

(assert (=> b!27427 (= e!14042 0)))

(assert (= (and d!14569 c!6049) b!27427))

(assert (= (and d!14569 (not c!6049)) b!27428))

(assert (=> b!27428 m!28549))

(assert (=> b!27428 m!28547))

(assert (=> b!26995 d!14569))

(declare-fun b!27429 () Bool)

(declare-fun e!14044 () Bool)

(declare-fun e!14043 () Bool)

(assert (=> b!27429 (= e!14044 e!14043)))

(declare-fun res!12547 () Bool)

(assert (=> b!27429 (=> (not res!12547) (not e!14043))))

(assert (=> b!27429 (= res!12547 (>= (- (level!51 (left!707 (right!710 (right!710 ys!77)))) (level!51 (right!710 (right!710 (right!710 ys!77))))) (- 1)))))

(declare-fun d!14571 () Bool)

(declare-fun res!12548 () Bool)

(assert (=> d!14571 (=> res!12548 e!14044)))

(assert (=> d!14571 (= res!12548 (not (is-CC!62 (right!710 (right!710 ys!77)))))))

(assert (=> d!14571 (= (balanced!58 (right!710 (right!710 ys!77))) e!14044)))

(declare-fun b!27430 () Bool)

(declare-fun res!12546 () Bool)

(assert (=> b!27430 (=> (not res!12546) (not e!14043))))

(assert (=> b!27430 (= res!12546 (<= (- (level!51 (left!707 (right!710 (right!710 ys!77)))) (level!51 (right!710 (right!710 (right!710 ys!77))))) 1))))

(declare-fun b!27432 () Bool)

(assert (=> b!27432 (= e!14043 (balanced!58 (right!710 (right!710 (right!710 ys!77)))))))

(declare-fun b!27431 () Bool)

(declare-fun res!12545 () Bool)

(assert (=> b!27431 (=> (not res!12545) (not e!14043))))

(assert (=> b!27431 (= res!12545 (balanced!58 (left!707 (right!710 (right!710 ys!77)))))))

(assert (= (and d!14571 (not res!12548)) b!27429))

(assert (= (and b!27429 res!12547) b!27430))

(assert (= (and b!27430 res!12546) b!27431))

(assert (= (and b!27431 res!12545) b!27432))

(assert (=> b!27429 m!28575))

(assert (=> b!27429 m!28573))

(assert (=> b!27430 m!28575))

(assert (=> b!27430 m!28573))

(declare-fun m!28747 () Bool)

(assert (=> b!27432 m!28747))

(declare-fun m!28749 () Bool)

(assert (=> b!27431 m!28749))

(assert (=> b!26951 d!14571))

(declare-fun d!14573 () Bool)

(declare-fun lt!4636 () Int)

(assert (=> d!14573 (>= lt!4636 0)))

(declare-fun e!14045 () Int)

(assert (=> d!14573 (= lt!4636 e!14045)))

(declare-fun c!6050 () Bool)

(assert (=> d!14573 (= c!6050 (is-Nil!355 lt!4457))))

(assert (=> d!14573 (= (size!269 lt!4457) lt!4636)))

(declare-fun b!27433 () Bool)

(assert (=> b!27433 (= e!14045 0)))

(declare-fun b!27434 () Bool)

(assert (=> b!27434 (= e!14045 (+ 1 (size!269 (t!4374 lt!4457))))))

(assert (= (and d!14573 c!6050) b!27433))

(assert (= (and d!14573 (not c!6050)) b!27434))

(declare-fun m!28751 () Bool)

(assert (=> b!27434 m!28751))

(assert (=> d!14281 d!14573))

(declare-fun b!27437 () Bool)

(declare-fun e!14047 () Int)

(assert (=> b!27437 (= e!14047 1)))

(declare-fun d!14575 () Bool)

(declare-fun lt!4637 () Int)

(assert (=> d!14575 (>= lt!4637 0)))

(declare-fun e!14046 () Int)

(assert (=> d!14575 (= lt!4637 e!14046)))

(declare-fun c!6051 () Bool)

(assert (=> d!14575 (= c!6051 (is-Empty!73 (right!710 (left!707 ys!77))))))

(assert (=> d!14575 (= (size!270 (right!710 (left!707 ys!77))) lt!4637)))

(declare-fun b!27435 () Bool)

(assert (=> b!27435 (= e!14046 0)))

(declare-fun b!27436 () Bool)

(assert (=> b!27436 (= e!14046 e!14047)))

(declare-fun c!6052 () Bool)

(assert (=> b!27436 (= c!6052 (is-Single!62 (right!710 (left!707 ys!77))))))

(declare-fun b!27438 () Bool)

(assert (=> b!27438 (= e!14047 (+ (size!270 (left!707 (right!710 (left!707 ys!77)))) (size!270 (right!710 (right!710 (left!707 ys!77))))))))

(assert (= (and b!27436 c!6052) b!27437))

(assert (= (and b!27436 (not c!6052)) b!27438))

(assert (= (and d!14575 c!6051) b!27435))

(assert (= (and d!14575 (not c!6051)) b!27436))

(declare-fun m!28753 () Bool)

(assert (=> b!27438 m!28753))

(declare-fun m!28755 () Bool)

(assert (=> b!27438 m!28755))

(assert (=> d!14281 d!14575))

(declare-fun b!27440 () Bool)

(declare-fun e!14048 () List!360)

(assert (=> b!27440 (= e!14048 (Cons!354 (h!271 (toList!115 (left!707 (right!710 (left!707 ys!77))))) (++!40 (t!4374 (toList!115 (left!707 (right!710 (left!707 ys!77))))) (toList!115 (right!710 (right!710 (left!707 ys!77)))))))))

(declare-fun d!14577 () Bool)

(declare-fun e!14049 () Bool)

(assert (=> d!14577 e!14049))

(declare-fun res!12549 () Bool)

(assert (=> d!14577 (=> (not res!12549) (not e!14049))))

(declare-fun lt!4638 () List!360)

(assert (=> d!14577 (= res!12549 (= (content!70 lt!4638) (union (content!70 (toList!115 (left!707 (right!710 (left!707 ys!77))))) (content!70 (toList!115 (right!710 (right!710 (left!707 ys!77))))))))))

(assert (=> d!14577 (= lt!4638 e!14048)))

(declare-fun c!6053 () Bool)

(assert (=> d!14577 (= c!6053 (is-Nil!355 (toList!115 (left!707 (right!710 (left!707 ys!77))))))))

(assert (=> d!14577 (= (++!40 (toList!115 (left!707 (right!710 (left!707 ys!77)))) (toList!115 (right!710 (right!710 (left!707 ys!77))))) lt!4638)))

(declare-fun b!27441 () Bool)

(declare-fun res!12550 () Bool)

(assert (=> b!27441 (=> (not res!12550) (not e!14049))))

(assert (=> b!27441 (= res!12550 (= (size!269 lt!4638) (+ (size!269 (toList!115 (left!707 (right!710 (left!707 ys!77))))) (size!269 (toList!115 (right!710 (right!710 (left!707 ys!77))))))))))

(declare-fun b!27439 () Bool)

(assert (=> b!27439 (= e!14048 (toList!115 (right!710 (right!710 (left!707 ys!77)))))))

(declare-fun b!27442 () Bool)

(assert (=> b!27442 (= e!14049 (or (not (= (toList!115 (right!710 (right!710 (left!707 ys!77)))) Nil!355)) (= lt!4638 (toList!115 (left!707 (right!710 (left!707 ys!77)))))))))

(assert (= (and d!14577 c!6053) b!27439))

(assert (= (and d!14577 (not c!6053)) b!27440))

(assert (= (and d!14577 res!12549) b!27441))

(assert (= (and b!27441 res!12550) b!27442))

(assert (=> b!27440 m!27977))

(declare-fun m!28757 () Bool)

(assert (=> b!27440 m!28757))

(declare-fun m!28759 () Bool)

(assert (=> d!14577 m!28759))

(assert (=> d!14577 m!27975))

(declare-fun m!28761 () Bool)

(assert (=> d!14577 m!28761))

(assert (=> d!14577 m!27977))

(declare-fun m!28763 () Bool)

(assert (=> d!14577 m!28763))

(declare-fun m!28765 () Bool)

(assert (=> b!27441 m!28765))

(assert (=> b!27441 m!27975))

(declare-fun m!28767 () Bool)

(assert (=> b!27441 m!28767))

(assert (=> b!27441 m!27977))

(declare-fun m!28769 () Bool)

(assert (=> b!27441 m!28769))

(assert (=> b!26971 d!14577))

(declare-fun d!14579 () Bool)

(declare-fun lt!4639 () List!360)

(assert (=> d!14579 (= (size!269 lt!4639) (size!270 (left!707 (right!710 (left!707 ys!77)))))))

(declare-fun e!14050 () List!360)

(assert (=> d!14579 (= lt!4639 e!14050)))

(declare-fun c!6055 () Bool)

(assert (=> d!14579 (= c!6055 (is-Empty!73 (left!707 (right!710 (left!707 ys!77)))))))

(assert (=> d!14579 (= (toList!115 (left!707 (right!710 (left!707 ys!77)))) lt!4639)))

(declare-fun b!27446 () Bool)

(declare-fun e!14051 () List!360)

(assert (=> b!27446 (= e!14051 (++!40 (toList!115 (left!707 (left!707 (right!710 (left!707 ys!77))))) (toList!115 (right!710 (left!707 (right!710 (left!707 ys!77)))))))))

(declare-fun b!27445 () Bool)

(assert (=> b!27445 (= e!14051 (Cons!354 (x!8925 (left!707 (right!710 (left!707 ys!77)))) Nil!355))))

(declare-fun b!27444 () Bool)

(assert (=> b!27444 (= e!14050 e!14051)))

(declare-fun c!6054 () Bool)

(assert (=> b!27444 (= c!6054 (is-Single!62 (left!707 (right!710 (left!707 ys!77)))))))

(declare-fun b!27443 () Bool)

(assert (=> b!27443 (= e!14050 Nil!355)))

(assert (= (and b!27444 c!6054) b!27445))

(assert (= (and b!27444 (not c!6054)) b!27446))

(assert (= (and d!14579 c!6055) b!27443))

(assert (= (and d!14579 (not c!6055)) b!27444))

(declare-fun m!28771 () Bool)

(assert (=> d!14579 m!28771))

(assert (=> d!14579 m!28753))

(declare-fun m!28773 () Bool)

(assert (=> b!27446 m!28773))

(declare-fun m!28775 () Bool)

(assert (=> b!27446 m!28775))

(assert (=> b!27446 m!28773))

(assert (=> b!27446 m!28775))

(declare-fun m!28777 () Bool)

(assert (=> b!27446 m!28777))

(assert (=> b!26971 d!14579))

(declare-fun d!14581 () Bool)

(declare-fun lt!4640 () List!360)

(assert (=> d!14581 (= (size!269 lt!4640) (size!270 (right!710 (right!710 (left!707 ys!77)))))))

(declare-fun e!14052 () List!360)

(assert (=> d!14581 (= lt!4640 e!14052)))

(declare-fun c!6057 () Bool)

(assert (=> d!14581 (= c!6057 (is-Empty!73 (right!710 (right!710 (left!707 ys!77)))))))

(assert (=> d!14581 (= (toList!115 (right!710 (right!710 (left!707 ys!77)))) lt!4640)))

(declare-fun b!27450 () Bool)

(declare-fun e!14053 () List!360)

(assert (=> b!27450 (= e!14053 (++!40 (toList!115 (left!707 (right!710 (right!710 (left!707 ys!77))))) (toList!115 (right!710 (right!710 (right!710 (left!707 ys!77)))))))))

(declare-fun b!27449 () Bool)

(assert (=> b!27449 (= e!14053 (Cons!354 (x!8925 (right!710 (right!710 (left!707 ys!77)))) Nil!355))))

(declare-fun b!27448 () Bool)

(assert (=> b!27448 (= e!14052 e!14053)))

(declare-fun c!6056 () Bool)

(assert (=> b!27448 (= c!6056 (is-Single!62 (right!710 (right!710 (left!707 ys!77)))))))

(declare-fun b!27447 () Bool)

(assert (=> b!27447 (= e!14052 Nil!355)))

(assert (= (and b!27448 c!6056) b!27449))

(assert (= (and b!27448 (not c!6056)) b!27450))

(assert (= (and d!14581 c!6057) b!27447))

(assert (= (and d!14581 (not c!6057)) b!27448))

(declare-fun m!28779 () Bool)

(assert (=> d!14581 m!28779))

(assert (=> d!14581 m!28755))

(declare-fun m!28781 () Bool)

(assert (=> b!27450 m!28781))

(declare-fun m!28783 () Bool)

(assert (=> b!27450 m!28783))

(assert (=> b!27450 m!28781))

(assert (=> b!27450 m!28783))

(declare-fun m!28785 () Bool)

(assert (=> b!27450 m!28785))

(assert (=> b!26971 d!14581))

(assert (=> b!27023 d!14393))

(assert (=> b!27023 d!14277))

(assert (=> b!27023 d!14281))

(assert (=> d!14253 d!14503))

(assert (=> d!14253 d!14505))

(declare-fun d!14583 () Bool)

(declare-fun res!12551 () Bool)

(declare-fun e!14054 () Bool)

(assert (=> d!14583 (=> res!12551 e!14054)))

(assert (=> d!14583 (= res!12551 (not (is-CC!62 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(assert (=> d!14583 (= (concInv!57 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) e!14054)))

(declare-fun b!27452 () Bool)

(declare-fun res!12554 () Bool)

(declare-fun e!14055 () Bool)

(assert (=> b!27452 (=> (not res!12554) (not e!14055))))

(assert (=> b!27452 (= res!12554 (not (isEmpty!319 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))))))

(declare-fun b!27451 () Bool)

(assert (=> b!27451 (= e!14054 e!14055)))

(declare-fun res!12552 () Bool)

(assert (=> b!27451 (=> (not res!12552) (not e!14055))))

(assert (=> b!27451 (= res!12552 (not (isEmpty!319 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))))))

(declare-fun b!27454 () Bool)

(assert (=> b!27454 (= e!14055 (concInv!57 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(declare-fun b!27453 () Bool)

(declare-fun res!12553 () Bool)

(assert (=> b!27453 (=> (not res!12553) (not e!14055))))

(assert (=> b!27453 (= res!12553 (concInv!57 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(assert (= (and d!14583 (not res!12551)) b!27451))

(assert (= (and b!27451 res!12552) b!27452))

(assert (= (and b!27452 res!12554) b!27453))

(assert (= (and b!27453 res!12553) b!27454))

(declare-fun m!28787 () Bool)

(assert (=> b!27452 m!28787))

(declare-fun m!28789 () Bool)

(assert (=> b!27451 m!28789))

(declare-fun m!28791 () Bool)

(assert (=> b!27454 m!28791))

(declare-fun m!28793 () Bool)

(assert (=> b!27453 m!28793))

(assert (=> d!14253 d!14583))

(assert (=> b!27074 d!14277))

(declare-fun b!27455 () Bool)

(declare-fun e!14056 () Bool)

(assert (=> b!27455 (= e!14056 (= (++!40 (++!40 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77)))) (toList!115 (right!710 ys!77))) (++!40 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 (left!707 ys!77)))) (++!40 (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))))))))

(declare-fun lt!4641 () Bool)

(assert (=> b!27455 (= lt!4641 (appendAssoc!8 (t!4374 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 (left!707 ys!77))))) (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))))))

(declare-fun d!14585 () Bool)

(assert (=> d!14585 e!14056))

(declare-fun c!6058 () Bool)

(assert (=> d!14585 (= c!6058 (is-Cons!354 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 (left!707 ys!77))))))))

(assert (=> d!14585 (= (appendAssoc!8 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))) true)))

(declare-fun b!27456 () Bool)

(assert (=> b!27456 (= e!14056 (= (++!40 (++!40 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77)))) (toList!115 (right!710 ys!77))) (++!40 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 (left!707 ys!77)))) (++!40 (toList!115 (right!710 (left!707 ys!77))) (toList!115 (right!710 ys!77))))))))

(assert (= (and d!14585 c!6058) b!27455))

(assert (= (and d!14585 (not c!6058)) b!27456))

(assert (=> b!27455 m!27813))

(assert (=> b!27455 m!27801))

(declare-fun m!28795 () Bool)

(assert (=> b!27455 m!28795))

(assert (=> b!27455 m!28159))

(assert (=> b!27455 m!28003))

(declare-fun m!28797 () Bool)

(assert (=> b!27455 m!28797))

(assert (=> b!27455 m!27813))

(assert (=> b!27455 m!27801))

(assert (=> b!27455 m!28003))

(assert (=> b!27455 m!28159))

(assert (=> b!27455 m!27813))

(declare-fun m!28799 () Bool)

(assert (=> b!27455 m!28799))

(assert (=> b!27455 m!28799))

(assert (=> b!27455 m!27801))

(declare-fun m!28801 () Bool)

(assert (=> b!27455 m!28801))

(assert (=> b!27456 m!28159))

(assert (=> b!27456 m!27813))

(assert (=> b!27456 m!28799))

(assert (=> b!27456 m!28799))

(assert (=> b!27456 m!27801))

(assert (=> b!27456 m!28801))

(assert (=> b!27456 m!27813))

(assert (=> b!27456 m!27801))

(assert (=> b!27456 m!28003))

(assert (=> b!27456 m!28159))

(assert (=> b!27456 m!28003))

(assert (=> b!27456 m!28797))

(assert (=> b!27074 d!14585))

(assert (=> b!27074 d!14335))

(assert (=> b!27074 d!14279))

(declare-fun b!27458 () Bool)

(declare-fun e!14057 () List!360)

(assert (=> b!27458 (= e!14057 (Cons!354 (h!271 (toList!115 (right!710 (right!710 xs!533)))) (++!40 (t!4374 (toList!115 (right!710 (right!710 xs!533)))) (toList!115 (left!707 (left!707 ys!77))))))))

(declare-fun d!14587 () Bool)

(declare-fun e!14058 () Bool)

(assert (=> d!14587 e!14058))

(declare-fun res!12555 () Bool)

(assert (=> d!14587 (=> (not res!12555) (not e!14058))))

(declare-fun lt!4642 () List!360)

(assert (=> d!14587 (= res!12555 (= (content!70 lt!4642) (union (content!70 (toList!115 (right!710 (right!710 xs!533)))) (content!70 (toList!115 (left!707 (left!707 ys!77)))))))))

(assert (=> d!14587 (= lt!4642 e!14057)))

(declare-fun c!6059 () Bool)

(assert (=> d!14587 (= c!6059 (is-Nil!355 (toList!115 (right!710 (right!710 xs!533)))))))

(assert (=> d!14587 (= (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 (left!707 ys!77)))) lt!4642)))

(declare-fun b!27459 () Bool)

(declare-fun res!12556 () Bool)

(assert (=> b!27459 (=> (not res!12556) (not e!14058))))

(assert (=> b!27459 (= res!12556 (= (size!269 lt!4642) (+ (size!269 (toList!115 (right!710 (right!710 xs!533)))) (size!269 (toList!115 (left!707 (left!707 ys!77)))))))))

(declare-fun b!27457 () Bool)

(assert (=> b!27457 (= e!14057 (toList!115 (left!707 (left!707 ys!77))))))

(declare-fun b!27460 () Bool)

(assert (=> b!27460 (= e!14058 (or (not (= (toList!115 (left!707 (left!707 ys!77))) Nil!355)) (= lt!4642 (toList!115 (right!710 (right!710 xs!533))))))))

(assert (= (and d!14587 c!6059) b!27457))

(assert (= (and d!14587 (not c!6059)) b!27458))

(assert (= (and d!14587 res!12555) b!27459))

(assert (= (and b!27459 res!12556) b!27460))

(assert (=> b!27458 m!27815))

(declare-fun m!28803 () Bool)

(assert (=> b!27458 m!28803))

(declare-fun m!28805 () Bool)

(assert (=> d!14587 m!28805))

(assert (=> d!14587 m!27825))

(assert (=> d!14587 m!28203))

(assert (=> d!14587 m!27815))

(assert (=> d!14587 m!27993))

(declare-fun m!28807 () Bool)

(assert (=> b!27459 m!28807))

(assert (=> b!27459 m!27825))

(assert (=> b!27459 m!28207))

(assert (=> b!27459 m!27815))

(assert (=> b!27459 m!27999))

(assert (=> b!27074 d!14587))

(assert (=> b!27074 d!14281))

(declare-fun d!14589 () Bool)

(assert (=> d!14589 (= (isEmpty!319 (left!707 (left!707 xs!533))) (= (left!707 (left!707 xs!533)) Empty!73))))

(assert (=> b!27103 d!14589))

(assert (=> b!27024 d!14431))

(declare-fun b!27462 () Bool)

(declare-fun e!14059 () List!360)

(assert (=> b!27462 (= e!14059 (Cons!354 (h!271 (toList!115 (right!710 xs!533))) (++!40 (t!4374 (toList!115 (right!710 xs!533))) (toList!115 ys!77))))))

(declare-fun d!14591 () Bool)

(declare-fun e!14060 () Bool)

(assert (=> d!14591 e!14060))

(declare-fun res!12557 () Bool)

(assert (=> d!14591 (=> (not res!12557) (not e!14060))))

(declare-fun lt!4643 () List!360)

(assert (=> d!14591 (= res!12557 (= (content!70 lt!4643) (union (content!70 (toList!115 (right!710 xs!533))) (content!70 (toList!115 ys!77)))))))

(assert (=> d!14591 (= lt!4643 e!14059)))

(declare-fun c!6060 () Bool)

(assert (=> d!14591 (= c!6060 (is-Nil!355 (toList!115 (right!710 xs!533))))))

(assert (=> d!14591 (= (++!40 (toList!115 (right!710 xs!533)) (toList!115 ys!77)) lt!4643)))

(declare-fun b!27463 () Bool)

(declare-fun res!12558 () Bool)

(assert (=> b!27463 (=> (not res!12558) (not e!14060))))

(assert (=> b!27463 (= res!12558 (= (size!269 lt!4643) (+ (size!269 (toList!115 (right!710 xs!533))) (size!269 (toList!115 ys!77)))))))

(declare-fun b!27461 () Bool)

(assert (=> b!27461 (= e!14059 (toList!115 ys!77))))

(declare-fun b!27464 () Bool)

(assert (=> b!27464 (= e!14060 (or (not (= (toList!115 ys!77) Nil!355)) (= lt!4643 (toList!115 (right!710 xs!533)))))))

(assert (= (and d!14591 c!6060) b!27461))

(assert (= (and d!14591 (not c!6060)) b!27462))

(assert (= (and d!14591 res!12557) b!27463))

(assert (= (and b!27463 res!12558) b!27464))

(assert (=> b!27462 m!27809))

(declare-fun m!28809 () Bool)

(assert (=> b!27462 m!28809))

(declare-fun m!28811 () Bool)

(assert (=> d!14591 m!28811))

(assert (=> d!14591 m!27807))

(assert (=> d!14591 m!28395))

(assert (=> d!14591 m!27809))

(assert (=> d!14591 m!28093))

(declare-fun m!28813 () Bool)

(assert (=> b!27463 m!28813))

(assert (=> b!27463 m!27807))

(assert (=> b!27463 m!28399))

(assert (=> b!27463 m!27809))

(assert (=> b!27463 m!28097))

(assert (=> b!27024 d!14591))

(declare-fun b!27466 () Bool)

(declare-fun e!14061 () List!360)

(assert (=> b!27466 (= e!14061 (Cons!354 (h!271 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (right!710 xs!533)))) (++!40 (t!4374 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (right!710 xs!533)))) (toList!115 ys!77))))))

(declare-fun d!14593 () Bool)

(declare-fun e!14062 () Bool)

(assert (=> d!14593 e!14062))

(declare-fun res!12559 () Bool)

(assert (=> d!14593 (=> (not res!12559) (not e!14062))))

(declare-fun lt!4644 () List!360)

(assert (=> d!14593 (= res!12559 (= (content!70 lt!4644) (union (content!70 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (right!710 xs!533)))) (content!70 (toList!115 ys!77)))))))

(assert (=> d!14593 (= lt!4644 e!14061)))

(declare-fun c!6061 () Bool)

(assert (=> d!14593 (= c!6061 (is-Nil!355 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (right!710 xs!533)))))))

(assert (=> d!14593 (= (++!40 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (right!710 xs!533))) (toList!115 ys!77)) lt!4644)))

(declare-fun b!27467 () Bool)

(declare-fun res!12560 () Bool)

(assert (=> b!27467 (=> (not res!12560) (not e!14062))))

(assert (=> b!27467 (= res!12560 (= (size!269 lt!4644) (+ (size!269 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (right!710 xs!533)))) (size!269 (toList!115 ys!77)))))))

(declare-fun b!27465 () Bool)

(assert (=> b!27465 (= e!14061 (toList!115 ys!77))))

(declare-fun b!27468 () Bool)

(assert (=> b!27468 (= e!14062 (or (not (= (toList!115 ys!77) Nil!355)) (= lt!4644 (++!40 (toList!115 (left!707 xs!533)) (toList!115 (right!710 xs!533))))))))

(assert (= (and d!14593 c!6061) b!27465))

(assert (= (and d!14593 (not c!6061)) b!27466))

(assert (= (and d!14593 res!12559) b!27467))

(assert (= (and b!27467 res!12560) b!27468))

(assert (=> b!27466 m!27809))

(declare-fun m!28815 () Bool)

(assert (=> b!27466 m!28815))

(declare-fun m!28817 () Bool)

(assert (=> d!14593 m!28817))

(assert (=> d!14593 m!27985))

(declare-fun m!28819 () Bool)

(assert (=> d!14593 m!28819))

(assert (=> d!14593 m!27809))

(assert (=> d!14593 m!28093))

(declare-fun m!28821 () Bool)

(assert (=> b!27467 m!28821))

(assert (=> b!27467 m!27985))

(declare-fun m!28823 () Bool)

(assert (=> b!27467 m!28823))

(assert (=> b!27467 m!27809))

(assert (=> b!27467 m!28097))

(assert (=> b!27024 d!14593))

(declare-fun b!27469 () Bool)

(declare-fun e!14063 () Bool)

(assert (=> b!27469 (= e!14063 (= (++!40 (++!40 (t!4374 (toList!115 (left!707 xs!533))) (toList!115 (right!710 xs!533))) (toList!115 ys!77)) (++!40 (t!4374 (toList!115 (left!707 xs!533))) (++!40 (toList!115 (right!710 xs!533)) (toList!115 ys!77)))))))

(declare-fun lt!4645 () Bool)

(assert (=> b!27469 (= lt!4645 (appendAssoc!8 (t!4374 (t!4374 (toList!115 (left!707 xs!533)))) (toList!115 (right!710 xs!533)) (toList!115 ys!77)))))

(declare-fun d!14595 () Bool)

(assert (=> d!14595 e!14063))

(declare-fun c!6062 () Bool)

(assert (=> d!14595 (= c!6062 (is-Cons!354 (t!4374 (toList!115 (left!707 xs!533)))))))

(assert (=> d!14595 (= (appendAssoc!8 (t!4374 (toList!115 (left!707 xs!533))) (toList!115 (right!710 xs!533)) (toList!115 ys!77)) true)))

(declare-fun b!27470 () Bool)

(assert (=> b!27470 (= e!14063 (= (++!40 (++!40 (t!4374 (toList!115 (left!707 xs!533))) (toList!115 (right!710 xs!533))) (toList!115 ys!77)) (++!40 (t!4374 (toList!115 (left!707 xs!533))) (++!40 (toList!115 (right!710 xs!533)) (toList!115 ys!77)))))))

(assert (= (and d!14595 c!6062) b!27469))

(assert (= (and d!14595 (not c!6062)) b!27470))

(assert (=> b!27469 m!27807))

(assert (=> b!27469 m!27809))

(declare-fun m!28825 () Bool)

(assert (=> b!27469 m!28825))

(assert (=> b!27469 m!28063))

(declare-fun m!28827 () Bool)

(assert (=> b!27469 m!28827))

(assert (=> b!27469 m!27807))

(assert (=> b!27469 m!27809))

(assert (=> b!27469 m!28063))

(assert (=> b!27469 m!27807))

(assert (=> b!27469 m!28391))

(assert (=> b!27469 m!28391))

(assert (=> b!27469 m!27809))

(declare-fun m!28829 () Bool)

(assert (=> b!27469 m!28829))

(assert (=> b!27470 m!27807))

(assert (=> b!27470 m!28391))

(assert (=> b!27470 m!28391))

(assert (=> b!27470 m!27809))

(assert (=> b!27470 m!28829))

(assert (=> b!27470 m!27807))

(assert (=> b!27470 m!27809))

(assert (=> b!27470 m!28063))

(assert (=> b!27470 m!28063))

(assert (=> b!27470 m!28827))

(assert (=> b!27024 d!14595))

(declare-fun b!27472 () Bool)

(declare-fun e!14064 () List!360)

(assert (=> b!27472 (= e!14064 (Cons!354 (h!271 (toList!115 (left!707 xs!533))) (++!40 (t!4374 (toList!115 (left!707 xs!533))) (++!40 (toList!115 (right!710 xs!533)) (toList!115 ys!77)))))))

(declare-fun d!14597 () Bool)

(declare-fun e!14065 () Bool)

(assert (=> d!14597 e!14065))

(declare-fun res!12561 () Bool)

(assert (=> d!14597 (=> (not res!12561) (not e!14065))))

(declare-fun lt!4646 () List!360)

(assert (=> d!14597 (= res!12561 (= (content!70 lt!4646) (union (content!70 (toList!115 (left!707 xs!533))) (content!70 (++!40 (toList!115 (right!710 xs!533)) (toList!115 ys!77))))))))

(assert (=> d!14597 (= lt!4646 e!14064)))

(declare-fun c!6063 () Bool)

(assert (=> d!14597 (= c!6063 (is-Nil!355 (toList!115 (left!707 xs!533))))))

(assert (=> d!14597 (= (++!40 (toList!115 (left!707 xs!533)) (++!40 (toList!115 (right!710 xs!533)) (toList!115 ys!77))) lt!4646)))

(declare-fun b!27473 () Bool)

(declare-fun res!12562 () Bool)

(assert (=> b!27473 (=> (not res!12562) (not e!14065))))

(assert (=> b!27473 (= res!12562 (= (size!269 lt!4646) (+ (size!269 (toList!115 (left!707 xs!533))) (size!269 (++!40 (toList!115 (right!710 xs!533)) (toList!115 ys!77))))))))

(declare-fun b!27471 () Bool)

(assert (=> b!27471 (= e!14064 (++!40 (toList!115 (right!710 xs!533)) (toList!115 ys!77)))))

(declare-fun b!27474 () Bool)

(assert (=> b!27474 (= e!14065 (or (not (= (++!40 (toList!115 (right!710 xs!533)) (toList!115 ys!77)) Nil!355)) (= lt!4646 (toList!115 (left!707 xs!533)))))))

(assert (= (and d!14597 c!6063) b!27471))

(assert (= (and d!14597 (not c!6063)) b!27472))

(assert (= (and d!14597 res!12561) b!27473))

(assert (= (and b!27473 res!12562) b!27474))

(assert (=> b!27472 m!28063))

(assert (=> b!27472 m!28827))

(declare-fun m!28831 () Bool)

(assert (=> d!14597 m!28831))

(assert (=> d!14597 m!27805))

(assert (=> d!14597 m!28337))

(assert (=> d!14597 m!28063))

(declare-fun m!28833 () Bool)

(assert (=> d!14597 m!28833))

(declare-fun m!28835 () Bool)

(assert (=> b!27473 m!28835))

(assert (=> b!27473 m!27805))

(assert (=> b!27473 m!28341))

(assert (=> b!27473 m!28063))

(declare-fun m!28837 () Bool)

(assert (=> b!27473 m!28837))

(assert (=> b!27024 d!14597))

(declare-fun b!27475 () Bool)

(declare-fun e!14067 () Bool)

(declare-fun e!14066 () Bool)

(assert (=> b!27475 (= e!14067 e!14066)))

(declare-fun res!12565 () Bool)

(assert (=> b!27475 (=> (not res!12565) (not e!14066))))

(assert (=> b!27475 (= res!12565 (>= (- (level!51 (left!707 (left!707 (left!707 ys!77)))) (level!51 (right!710 (left!707 (left!707 ys!77))))) (- 1)))))

(declare-fun d!14599 () Bool)

(declare-fun res!12566 () Bool)

(assert (=> d!14599 (=> res!12566 e!14067)))

(assert (=> d!14599 (= res!12566 (not (is-CC!62 (left!707 (left!707 ys!77)))))))

(assert (=> d!14599 (= (balanced!58 (left!707 (left!707 ys!77))) e!14067)))

(declare-fun b!27476 () Bool)

(declare-fun res!12564 () Bool)

(assert (=> b!27476 (=> (not res!12564) (not e!14066))))

(assert (=> b!27476 (= res!12564 (<= (- (level!51 (left!707 (left!707 (left!707 ys!77)))) (level!51 (right!710 (left!707 (left!707 ys!77))))) 1))))

(declare-fun b!27478 () Bool)

(assert (=> b!27478 (= e!14066 (balanced!58 (right!710 (left!707 (left!707 ys!77)))))))

(declare-fun b!27477 () Bool)

(declare-fun res!12563 () Bool)

(assert (=> b!27477 (=> (not res!12563) (not e!14066))))

(assert (=> b!27477 (= res!12563 (balanced!58 (left!707 (left!707 (left!707 ys!77)))))))

(assert (= (and d!14599 (not res!12566)) b!27475))

(assert (= (and b!27475 res!12565) b!27476))

(assert (= (and b!27476 res!12564) b!27477))

(assert (= (and b!27477 res!12563) b!27478))

(assert (=> b!27475 m!28377))

(assert (=> b!27475 m!28375))

(assert (=> b!27476 m!28377))

(assert (=> b!27476 m!28375))

(declare-fun m!28839 () Bool)

(assert (=> b!27478 m!28839))

(declare-fun m!28841 () Bool)

(assert (=> b!27477 m!28841))

(assert (=> b!27101 d!14599))

(declare-fun d!14601 () Bool)

(assert (=> d!14601 (= (isEmpty!319 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (= (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) Empty!73))))

(assert (=> b!26899 d!14601))

(declare-fun d!14603 () Bool)

(assert (=> d!14603 (= (isEmpty!319 (right!710 (right!710 (right!710 xs!533)))) (= (right!710 (right!710 (right!710 xs!533))) Empty!73))))

(assert (=> b!27078 d!14603))

(assert (=> b!26997 d!14471))

(assert (=> b!26997 d!14469))

(declare-fun d!14605 () Bool)

(assert (=> d!14605 (= (isEmpty!319 (left!707 (right!710 res!5533))) (= (left!707 (right!710 res!5533)) Empty!73))))

(assert (=> b!27006 d!14605))

(declare-fun b!27479 () Bool)

(declare-fun e!14069 () Bool)

(declare-fun e!14068 () Bool)

(assert (=> b!27479 (= e!14069 e!14068)))

(declare-fun res!12569 () Bool)

(assert (=> b!27479 (=> (not res!12569) (not e!14068))))

(assert (=> b!27479 (= res!12569 (>= (- (level!51 (left!707 (right!710 (right!710 (right!710 xs!533))))) (level!51 (right!710 (right!710 (right!710 (right!710 xs!533)))))) (- 1)))))

(declare-fun d!14607 () Bool)

(declare-fun res!12570 () Bool)

(assert (=> d!14607 (=> res!12570 e!14069)))

(assert (=> d!14607 (= res!12570 (not (is-CC!62 (right!710 (right!710 (right!710 xs!533))))))))

(assert (=> d!14607 (= (balanced!58 (right!710 (right!710 (right!710 xs!533)))) e!14069)))

(declare-fun b!27480 () Bool)

(declare-fun res!12568 () Bool)

(assert (=> b!27480 (=> (not res!12568) (not e!14068))))

(assert (=> b!27480 (= res!12568 (<= (- (level!51 (left!707 (right!710 (right!710 (right!710 xs!533))))) (level!51 (right!710 (right!710 (right!710 (right!710 xs!533)))))) 1))))

(declare-fun b!27482 () Bool)

(assert (=> b!27482 (= e!14068 (balanced!58 (right!710 (right!710 (right!710 (right!710 xs!533))))))))

(declare-fun b!27481 () Bool)

(declare-fun res!12567 () Bool)

(assert (=> b!27481 (=> (not res!12567) (not e!14068))))

(assert (=> b!27481 (= res!12567 (balanced!58 (left!707 (right!710 (right!710 (right!710 xs!533))))))))

(assert (= (and d!14607 (not res!12570)) b!27479))

(assert (= (and b!27479 res!12569) b!27480))

(assert (= (and b!27480 res!12568) b!27481))

(assert (= (and b!27481 res!12567) b!27482))

(assert (=> b!27479 m!28745))

(assert (=> b!27479 m!28743))

(assert (=> b!27480 m!28745))

(assert (=> b!27480 m!28743))

(declare-fun m!28843 () Bool)

(assert (=> b!27482 m!28843))

(declare-fun m!28845 () Bool)

(assert (=> b!27481 m!28845))

(assert (=> b!27005 d!14607))

(declare-fun b!27483 () Bool)

(declare-fun e!14071 () Bool)

(declare-fun e!14070 () Bool)

(assert (=> b!27483 (= e!14071 e!14070)))

(declare-fun res!12573 () Bool)

(assert (=> b!27483 (=> (not res!12573) (not e!14070))))

(assert (=> b!27483 (= res!12573 (>= (- (level!51 (left!707 (left!707 (left!707 xs!533)))) (level!51 (right!710 (left!707 (left!707 xs!533))))) (- 1)))))

(declare-fun d!14609 () Bool)

(declare-fun res!12574 () Bool)

(assert (=> d!14609 (=> res!12574 e!14071)))

(assert (=> d!14609 (= res!12574 (not (is-CC!62 (left!707 (left!707 xs!533)))))))

(assert (=> d!14609 (= (balanced!58 (left!707 (left!707 xs!533))) e!14071)))

(declare-fun b!27484 () Bool)

(declare-fun res!12572 () Bool)

(assert (=> b!27484 (=> (not res!12572) (not e!14070))))

(assert (=> b!27484 (= res!12572 (<= (- (level!51 (left!707 (left!707 (left!707 xs!533)))) (level!51 (right!710 (left!707 (left!707 xs!533))))) 1))))

(declare-fun b!27486 () Bool)

(assert (=> b!27486 (= e!14070 (balanced!58 (right!710 (left!707 (left!707 xs!533)))))))

(declare-fun b!27485 () Bool)

(declare-fun res!12571 () Bool)

(assert (=> b!27485 (=> (not res!12571) (not e!14070))))

(assert (=> b!27485 (= res!12571 (balanced!58 (left!707 (left!707 (left!707 xs!533)))))))

(assert (= (and d!14609 (not res!12574)) b!27483))

(assert (= (and b!27483 res!12573) b!27484))

(assert (= (and b!27484 res!12572) b!27485))

(assert (= (and b!27485 res!12571) b!27486))

(assert (=> b!27483 m!28115))

(assert (=> b!27483 m!28113))

(assert (=> b!27484 m!28115))

(assert (=> b!27484 m!28113))

(declare-fun m!28847 () Bool)

(assert (=> b!27486 m!28847))

(declare-fun m!28849 () Bool)

(assert (=> b!27485 m!28849))

(assert (=> b!27087 d!14609))

(declare-fun b!27487 () Bool)

(declare-fun e!14073 () Bool)

(declare-fun e!14072 () Bool)

(assert (=> b!27487 (= e!14073 e!14072)))

(declare-fun res!12577 () Bool)

(assert (=> b!27487 (=> (not res!12577) (not e!14072))))

(assert (=> b!27487 (= res!12577 (>= (- (level!51 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))) (level!51 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (- 1)))))

(declare-fun d!14611 () Bool)

(declare-fun res!12578 () Bool)

(assert (=> d!14611 (=> res!12578 e!14073)))

(assert (=> d!14611 (= res!12578 (not (is-CC!62 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(assert (=> d!14611 (= (balanced!58 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) e!14073)))

(declare-fun b!27488 () Bool)

(declare-fun res!12576 () Bool)

(assert (=> b!27488 (=> (not res!12576) (not e!14072))))

(assert (=> b!27488 (= res!12576 (<= (- (level!51 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))) (level!51 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) 1))))

(declare-fun b!27490 () Bool)

(assert (=> b!27490 (= e!14072 (balanced!58 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(declare-fun b!27489 () Bool)

(declare-fun res!12575 () Bool)

(assert (=> b!27489 (=> (not res!12575) (not e!14072))))

(assert (=> b!27489 (= res!12575 (balanced!58 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(assert (= (and d!14611 (not res!12578)) b!27487))

(assert (= (and b!27487 res!12577) b!27488))

(assert (= (and b!27488 res!12576) b!27489))

(assert (= (and b!27489 res!12575) b!27490))

(assert (=> b!27487 m!28595))

(assert (=> b!27487 m!28593))

(assert (=> b!27488 m!28595))

(assert (=> b!27488 m!28593))

(declare-fun m!28851 () Bool)

(assert (=> b!27490 m!28851))

(declare-fun m!28853 () Bool)

(assert (=> b!27489 m!28853))

(assert (=> b!26906 d!14611))

(declare-fun b!27491 () Bool)

(declare-fun e!14075 () Bool)

(declare-fun e!14074 () Bool)

(assert (=> b!27491 (= e!14075 e!14074)))

(declare-fun res!12581 () Bool)

(assert (=> b!27491 (=> (not res!12581) (not e!14074))))

(assert (=> b!27491 (= res!12581 (>= (- (level!51 (left!707 (right!710 lt!4402))) (level!51 (right!710 (right!710 lt!4402)))) (- 1)))))

(declare-fun d!14613 () Bool)

(declare-fun res!12582 () Bool)

(assert (=> d!14613 (=> res!12582 e!14075)))

(assert (=> d!14613 (= res!12582 (not (is-CC!62 (right!710 lt!4402))))))

(assert (=> d!14613 (= (balanced!58 (right!710 lt!4402)) e!14075)))

(declare-fun b!27492 () Bool)

(declare-fun res!12580 () Bool)

(assert (=> b!27492 (=> (not res!12580) (not e!14074))))

(assert (=> b!27492 (= res!12580 (<= (- (level!51 (left!707 (right!710 lt!4402))) (level!51 (right!710 (right!710 lt!4402)))) 1))))

(declare-fun b!27494 () Bool)

(assert (=> b!27494 (= e!14074 (balanced!58 (right!710 (right!710 lt!4402))))))

(declare-fun b!27493 () Bool)

(declare-fun res!12579 () Bool)

(assert (=> b!27493 (=> (not res!12579) (not e!14074))))

(assert (=> b!27493 (= res!12579 (balanced!58 (left!707 (right!710 lt!4402))))))

(assert (= (and d!14613 (not res!12582)) b!27491))

(assert (= (and b!27491 res!12581) b!27492))

(assert (= (and b!27492 res!12580) b!27493))

(assert (= (and b!27493 res!12579) b!27494))

(assert (=> b!27491 m!28501))

(assert (=> b!27491 m!28499))

(assert (=> b!27492 m!28501))

(assert (=> b!27492 m!28499))

(declare-fun m!28855 () Bool)

(assert (=> b!27494 m!28855))

(declare-fun m!28857 () Bool)

(assert (=> b!27493 m!28857))

(assert (=> b!27013 d!14613))

(assert (=> b!26943 d!14457))

(assert (=> b!26943 d!14455))

(declare-fun b!27496 () Bool)

(declare-fun e!14076 () Int)

(declare-fun lt!4649 () Int)

(declare-fun lt!4647 () Int)

(assert (=> b!27496 (= e!14076 (+ 1 (ite (>= lt!4649 lt!4647) lt!4649 lt!4647)))))

(assert (=> b!27496 (= lt!4647 (level!51 (right!710 (right!710 lt!4405))))))

(assert (=> b!27496 (= lt!4649 (level!51 (left!707 (right!710 lt!4405))))))

(declare-fun d!14615 () Bool)

(declare-fun lt!4648 () Int)

(assert (=> d!14615 (>= lt!4648 0)))

(assert (=> d!14615 (= lt!4648 e!14076)))

(declare-fun c!6064 () Bool)

(assert (=> d!14615 (= c!6064 (or (is-Empty!73 (right!710 lt!4405)) (is-Single!62 (right!710 lt!4405))))))

(assert (=> d!14615 (= (level!51 (right!710 lt!4405)) lt!4648)))

(declare-fun b!27495 () Bool)

(assert (=> b!27495 (= e!14076 0)))

(assert (= (and d!14615 c!6064) b!27495))

(assert (= (and d!14615 (not c!6064)) b!27496))

(declare-fun m!28859 () Bool)

(assert (=> b!27496 m!28859))

(declare-fun m!28861 () Bool)

(assert (=> b!27496 m!28861))

(assert (=> b!27063 d!14615))

(declare-fun b!27498 () Bool)

(declare-fun e!14077 () Int)

(declare-fun lt!4652 () Int)

(declare-fun lt!4650 () Int)

(assert (=> b!27498 (= e!14077 (+ 1 (ite (>= lt!4652 lt!4650) lt!4652 lt!4650)))))

(assert (=> b!27498 (= lt!4650 (level!51 (right!710 (left!707 lt!4405))))))

(assert (=> b!27498 (= lt!4652 (level!51 (left!707 (left!707 lt!4405))))))

(declare-fun d!14617 () Bool)

(declare-fun lt!4651 () Int)

(assert (=> d!14617 (>= lt!4651 0)))

(assert (=> d!14617 (= lt!4651 e!14077)))

(declare-fun c!6065 () Bool)

(assert (=> d!14617 (= c!6065 (or (is-Empty!73 (left!707 lt!4405)) (is-Single!62 (left!707 lt!4405))))))

(assert (=> d!14617 (= (level!51 (left!707 lt!4405)) lt!4651)))

(declare-fun b!27497 () Bool)

(assert (=> b!27497 (= e!14077 0)))

(assert (= (and d!14617 c!6065) b!27497))

(assert (= (and d!14617 (not c!6065)) b!27498))

(declare-fun m!28863 () Bool)

(assert (=> b!27498 m!28863))

(declare-fun m!28865 () Bool)

(assert (=> b!27498 m!28865))

(assert (=> b!27063 d!14617))

(assert (=> b!26929 d!14427))

(assert (=> b!26929 d!14425))

(declare-fun b!27500 () Bool)

(declare-fun e!14078 () Int)

(declare-fun lt!4655 () Int)

(declare-fun lt!4653 () Int)

(assert (=> b!27500 (= e!14078 (+ 1 (ite (>= lt!4655 lt!4653) lt!4655 lt!4653)))))

(assert (=> b!27500 (= lt!4653 (level!51 (right!710 (right!710 (left!707 (right!710 xs!533))))))))

(assert (=> b!27500 (= lt!4655 (level!51 (left!707 (right!710 (left!707 (right!710 xs!533))))))))

(declare-fun d!14619 () Bool)

(declare-fun lt!4654 () Int)

(assert (=> d!14619 (>= lt!4654 0)))

(assert (=> d!14619 (= lt!4654 e!14078)))

(declare-fun c!6066 () Bool)

(assert (=> d!14619 (= c!6066 (or (is-Empty!73 (right!710 (left!707 (right!710 xs!533)))) (is-Single!62 (right!710 (left!707 (right!710 xs!533))))))))

(assert (=> d!14619 (= (level!51 (right!710 (left!707 (right!710 xs!533)))) lt!4654)))

(declare-fun b!27499 () Bool)

(assert (=> b!27499 (= e!14078 0)))

(assert (= (and d!14619 c!6066) b!27499))

(assert (= (and d!14619 (not c!6066)) b!27500))

(declare-fun m!28867 () Bool)

(assert (=> b!27500 m!28867))

(declare-fun m!28869 () Bool)

(assert (=> b!27500 m!28869))

(assert (=> b!27061 d!14619))

(declare-fun b!27502 () Bool)

(declare-fun e!14079 () Int)

(declare-fun lt!4658 () Int)

(declare-fun lt!4656 () Int)

(assert (=> b!27502 (= e!14079 (+ 1 (ite (>= lt!4658 lt!4656) lt!4658 lt!4656)))))

(assert (=> b!27502 (= lt!4656 (level!51 (right!710 (left!707 (left!707 (right!710 xs!533))))))))

(assert (=> b!27502 (= lt!4658 (level!51 (left!707 (left!707 (left!707 (right!710 xs!533))))))))

(declare-fun d!14621 () Bool)

(declare-fun lt!4657 () Int)

(assert (=> d!14621 (>= lt!4657 0)))

(assert (=> d!14621 (= lt!4657 e!14079)))

(declare-fun c!6067 () Bool)

(assert (=> d!14621 (= c!6067 (or (is-Empty!73 (left!707 (left!707 (right!710 xs!533)))) (is-Single!62 (left!707 (left!707 (right!710 xs!533))))))))

(assert (=> d!14621 (= (level!51 (left!707 (left!707 (right!710 xs!533)))) lt!4657)))

(declare-fun b!27501 () Bool)

(assert (=> b!27501 (= e!14079 0)))

(assert (= (and d!14621 c!6067) b!27501))

(assert (= (and d!14621 (not c!6067)) b!27502))

(declare-fun m!28871 () Bool)

(assert (=> b!27502 m!28871))

(declare-fun m!28873 () Bool)

(assert (=> b!27502 m!28873))

(assert (=> b!27061 d!14621))

(assert (=> b!27085 d!14329))

(assert (=> b!27085 d!14327))

(declare-fun d!14623 () Bool)

(declare-fun res!12583 () Bool)

(declare-fun e!14080 () Bool)

(assert (=> d!14623 (=> res!12583 e!14080)))

(assert (=> d!14623 (= res!12583 (not (is-CC!62 (right!710 (left!707 ys!77)))))))

(assert (=> d!14623 (= (concInv!57 (right!710 (left!707 ys!77))) e!14080)))

(declare-fun b!27504 () Bool)

(declare-fun res!12586 () Bool)

(declare-fun e!14081 () Bool)

(assert (=> b!27504 (=> (not res!12586) (not e!14081))))

(assert (=> b!27504 (= res!12586 (not (isEmpty!319 (right!710 (right!710 (left!707 ys!77))))))))

(declare-fun b!27503 () Bool)

(assert (=> b!27503 (= e!14080 e!14081)))

(declare-fun res!12584 () Bool)

(assert (=> b!27503 (=> (not res!12584) (not e!14081))))

(assert (=> b!27503 (= res!12584 (not (isEmpty!319 (left!707 (right!710 (left!707 ys!77))))))))

(declare-fun b!27506 () Bool)

(assert (=> b!27506 (= e!14081 (concInv!57 (right!710 (right!710 (left!707 ys!77)))))))

(declare-fun b!27505 () Bool)

(declare-fun res!12585 () Bool)

(assert (=> b!27505 (=> (not res!12585) (not e!14081))))

(assert (=> b!27505 (= res!12585 (concInv!57 (left!707 (right!710 (left!707 ys!77)))))))

(assert (= (and d!14623 (not res!12583)) b!27503))

(assert (= (and b!27503 res!12584) b!27504))

(assert (= (and b!27504 res!12586) b!27505))

(assert (= (and b!27505 res!12585) b!27506))

(declare-fun m!28875 () Bool)

(assert (=> b!27504 m!28875))

(declare-fun m!28877 () Bool)

(assert (=> b!27503 m!28877))

(declare-fun m!28879 () Bool)

(assert (=> b!27506 m!28879))

(declare-fun m!28881 () Bool)

(assert (=> b!27505 m!28881))

(assert (=> b!26947 d!14623))

(declare-fun b!27507 () Bool)

(declare-fun e!14090 () Bool)

(declare-fun e!14089 () Bool)

(assert (=> b!27507 (= e!14090 e!14089)))

(declare-fun res!12592 () Bool)

(assert (=> b!27507 (=> res!12592 e!14089)))

(assert (=> b!27507 (= res!12592 (not (is-CC!62 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))

(declare-fun b!27508 () Bool)

(declare-fun e!14083 () Bool)

(declare-fun e!14082 () Bool)

(assert (=> b!27508 (= e!14083 e!14082)))

(declare-fun res!12591 () Bool)

(assert (=> b!27508 (=> (not res!12591) (not e!14082))))

(assert (=> b!27508 (= res!12591 (appendAssoc!8 (toList!115 (left!707 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (toList!115 (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (toList!115 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))

(declare-fun b!27509 () Bool)

(declare-fun e!14087 () Bool)

(declare-fun e!14086 () Bool)

(assert (=> b!27509 (= e!14087 e!14086)))

(declare-fun res!12590 () Bool)

(assert (=> b!27509 (=> (not res!12590) (not e!14086))))

(assert (=> b!27509 (= res!12590 (appendAssoc!8 (toList!115 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))) (toList!115 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))) (toList!115 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))

(declare-fun b!27510 () Bool)

(assert (=> b!27510 (= e!14082 (appendAssoc!8 (toList!115 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))) (toList!115 (left!707 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (++!40 (toList!115 (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (toList!115 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))

(declare-fun d!14625 () Bool)

(assert (=> d!14625 e!14090))

(declare-fun res!12588 () Bool)

(assert (=> d!14625 (=> (not res!12588) (not e!14090))))

(assert (=> d!14625 (= res!12588 e!14087)))

(declare-fun res!12587 () Bool)

(assert (=> d!14625 (=> res!12587 e!14087)))

(assert (=> d!14625 (= res!12587 (not (is-CC!62 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(assert (=> d!14625 (= (appendAssocInst!12 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))) (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) true)))

(declare-fun b!27511 () Bool)

(assert (=> b!27511 (= e!14086 e!14083)))

(declare-fun res!12594 () Bool)

(assert (=> b!27511 (=> res!12594 e!14083)))

(assert (=> b!27511 (= res!12594 (not (is-CC!62 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))))))

(declare-fun b!27512 () Bool)

(declare-fun e!14088 () Bool)

(declare-fun e!14085 () Bool)

(assert (=> b!27512 (= e!14088 e!14085)))

(declare-fun res!12589 () Bool)

(assert (=> b!27512 (=> res!12589 e!14085)))

(assert (=> b!27512 (= res!12589 (not (is-CC!62 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))

(declare-fun b!27513 () Bool)

(assert (=> b!27513 (= e!14089 e!14088)))

(declare-fun res!12595 () Bool)

(assert (=> b!27513 (=> (not res!12595) (not e!14088))))

(assert (=> b!27513 (= res!12595 (appendAssoc!8 (toList!115 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (toList!115 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))) (toList!115 (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))

(declare-fun b!27514 () Bool)

(declare-fun e!14084 () Bool)

(assert (=> b!27514 (= e!14085 e!14084)))

(declare-fun res!12593 () Bool)

(assert (=> b!27514 (=> (not res!12593) (not e!14084))))

(assert (=> b!27514 (= res!12593 (appendAssoc!8 (toList!115 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (toList!115 (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))) (toList!115 (right!710 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))))

(declare-fun b!27515 () Bool)

(assert (=> b!27515 (= e!14084 (appendAssoc!8 (++!40 (toList!115 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (toList!115 (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))) (toList!115 (right!710 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))) (toList!115 (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))

(assert (= (and d!14625 (not res!12587)) b!27509))

(assert (= (and b!27509 res!12590) b!27511))

(assert (= (and b!27511 (not res!12594)) b!27508))

(assert (= (and b!27508 res!12591) b!27510))

(assert (= (and d!14625 res!12588) b!27507))

(assert (= (and b!27507 (not res!12592)) b!27513))

(assert (= (and b!27513 res!12595) b!27512))

(assert (= (and b!27512 (not res!12589)) b!27514))

(assert (= (and b!27514 res!12593) b!27515))

(declare-fun m!28883 () Bool)

(assert (=> b!27513 m!28883))

(declare-fun m!28885 () Bool)

(assert (=> b!27513 m!28885))

(declare-fun m!28887 () Bool)

(assert (=> b!27513 m!28887))

(assert (=> b!27513 m!28883))

(assert (=> b!27513 m!28885))

(assert (=> b!27513 m!28887))

(declare-fun m!28889 () Bool)

(assert (=> b!27513 m!28889))

(declare-fun m!28891 () Bool)

(assert (=> b!27509 m!28891))

(declare-fun m!28893 () Bool)

(assert (=> b!27509 m!28893))

(declare-fun m!28895 () Bool)

(assert (=> b!27509 m!28895))

(assert (=> b!27509 m!28891))

(assert (=> b!27509 m!28893))

(assert (=> b!27509 m!28895))

(declare-fun m!28897 () Bool)

(assert (=> b!27509 m!28897))

(assert (=> b!27515 m!28887))

(assert (=> b!27515 m!28883))

(declare-fun m!28899 () Bool)

(assert (=> b!27515 m!28899))

(assert (=> b!27515 m!28883))

(declare-fun m!28901 () Bool)

(assert (=> b!27515 m!28901))

(declare-fun m!28903 () Bool)

(assert (=> b!27515 m!28903))

(assert (=> b!27515 m!28903))

(assert (=> b!27515 m!28899))

(assert (=> b!27515 m!28887))

(declare-fun m!28905 () Bool)

(assert (=> b!27515 m!28905))

(assert (=> b!27515 m!28901))

(assert (=> b!27514 m!28883))

(assert (=> b!27514 m!28901))

(assert (=> b!27514 m!28899))

(assert (=> b!27514 m!28883))

(assert (=> b!27514 m!28901))

(assert (=> b!27514 m!28899))

(declare-fun m!28907 () Bool)

(assert (=> b!27514 m!28907))

(declare-fun m!28909 () Bool)

(assert (=> b!27508 m!28909))

(declare-fun m!28911 () Bool)

(assert (=> b!27508 m!28911))

(assert (=> b!27508 m!28895))

(assert (=> b!27508 m!28909))

(assert (=> b!27508 m!28911))

(assert (=> b!27508 m!28895))

(declare-fun m!28913 () Bool)

(assert (=> b!27508 m!28913))

(assert (=> b!27510 m!28891))

(assert (=> b!27510 m!28909))

(assert (=> b!27510 m!28911))

(assert (=> b!27510 m!28911))

(assert (=> b!27510 m!28895))

(declare-fun m!28915 () Bool)

(assert (=> b!27510 m!28915))

(assert (=> b!27510 m!28891))

(assert (=> b!27510 m!28909))

(assert (=> b!27510 m!28915))

(declare-fun m!28917 () Bool)

(assert (=> b!27510 m!28917))

(assert (=> b!27510 m!28895))

(assert (=> b!26902 d!14625))

(declare-fun b!27516 () Bool)

(declare-fun e!14091 () Bool)

(assert (=> b!27516 (= e!14091 (= (++!40 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 ys!77))) (toList!115 (right!710 ys!77))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (++!40 (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))))))))

(declare-fun lt!4659 () Bool)

(assert (=> b!27516 (= lt!4659 (appendAssoc!8 (t!4374 (toList!115 (right!710 (right!710 xs!533)))) (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))))))

(declare-fun d!14627 () Bool)

(assert (=> d!14627 e!14091))

(declare-fun c!6068 () Bool)

(assert (=> d!14627 (= c!6068 (is-Cons!354 (toList!115 (right!710 (right!710 xs!533)))))))

(assert (=> d!14627 (= (appendAssoc!8 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))) true)))

(declare-fun b!27517 () Bool)

(assert (=> b!27517 (= e!14091 (= (++!40 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 ys!77))) (toList!115 (right!710 ys!77))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (++!40 (toList!115 (left!707 ys!77)) (toList!115 (right!710 ys!77))))))))

(assert (= (and d!14627 c!6068) b!27516))

(assert (= (and d!14627 (not c!6068)) b!27517))

(assert (=> b!27516 m!27799))

(assert (=> b!27516 m!27801))

(declare-fun m!28919 () Bool)

(assert (=> b!27516 m!28919))

(assert (=> b!27516 m!27825))

(assert (=> b!27516 m!28047))

(declare-fun m!28921 () Bool)

(assert (=> b!27516 m!28921))

(assert (=> b!27516 m!27799))

(assert (=> b!27516 m!27801))

(assert (=> b!27516 m!28047))

(assert (=> b!27516 m!27825))

(assert (=> b!27516 m!27799))

(declare-fun m!28923 () Bool)

(assert (=> b!27516 m!28923))

(assert (=> b!27516 m!28923))

(assert (=> b!27516 m!27801))

(declare-fun m!28925 () Bool)

(assert (=> b!27516 m!28925))

(assert (=> b!27517 m!27825))

(assert (=> b!27517 m!27799))

(assert (=> b!27517 m!28923))

(assert (=> b!27517 m!28923))

(assert (=> b!27517 m!27801))

(assert (=> b!27517 m!28925))

(assert (=> b!27517 m!27799))

(assert (=> b!27517 m!27801))

(assert (=> b!27517 m!28047))

(assert (=> b!27517 m!27825))

(assert (=> b!27517 m!28047))

(assert (=> b!27517 m!28921))

(assert (=> b!27072 d!14627))

(assert (=> b!27072 d!14335))

(assert (=> b!27072 d!14311))

(assert (=> b!27072 d!14279))

(assert (=> b!26904 d!14503))

(assert (=> b!26904 d!14505))

(assert (=> b!26904 d!14507))

(declare-fun d!14629 () Bool)

(declare-fun res!12596 () Bool)

(declare-fun e!14092 () Bool)

(assert (=> d!14629 (=> res!12596 e!14092)))

(assert (=> d!14629 (= res!12596 (not (is-CC!62 (left!707 (right!710 xs!533)))))))

(assert (=> d!14629 (= (concInv!57 (left!707 (right!710 xs!533))) e!14092)))

(declare-fun b!27519 () Bool)

(declare-fun res!12599 () Bool)

(declare-fun e!14093 () Bool)

(assert (=> b!27519 (=> (not res!12599) (not e!14093))))

(assert (=> b!27519 (= res!12599 (not (isEmpty!319 (right!710 (left!707 (right!710 xs!533))))))))

(declare-fun b!27518 () Bool)

(assert (=> b!27518 (= e!14092 e!14093)))

(declare-fun res!12597 () Bool)

(assert (=> b!27518 (=> (not res!12597) (not e!14093))))

(assert (=> b!27518 (= res!12597 (not (isEmpty!319 (left!707 (left!707 (right!710 xs!533))))))))

(declare-fun b!27521 () Bool)

(assert (=> b!27521 (= e!14093 (concInv!57 (right!710 (left!707 (right!710 xs!533)))))))

(declare-fun b!27520 () Bool)

(declare-fun res!12598 () Bool)

(assert (=> b!27520 (=> (not res!12598) (not e!14093))))

(assert (=> b!27520 (= res!12598 (concInv!57 (left!707 (left!707 (right!710 xs!533)))))))

(assert (= (and d!14629 (not res!12596)) b!27518))

(assert (= (and b!27518 res!12597) b!27519))

(assert (= (and b!27519 res!12599) b!27520))

(assert (= (and b!27520 res!12598) b!27521))

(declare-fun m!28927 () Bool)

(assert (=> b!27519 m!28927))

(declare-fun m!28929 () Bool)

(assert (=> b!27518 m!28929))

(declare-fun m!28931 () Bool)

(assert (=> b!27521 m!28931))

(declare-fun m!28933 () Bool)

(assert (=> b!27520 m!28933))

(assert (=> b!27000 d!14629))

(assert (=> b!27037 d!14537))

(assert (=> b!27037 d!14311))

(assert (=> b!27037 d!14279))

(declare-fun b!27523 () Bool)

(declare-fun e!14094 () Int)

(declare-fun lt!4662 () Int)

(declare-fun lt!4660 () Int)

(assert (=> b!27523 (= e!14094 (+ 1 (ite (>= lt!4662 lt!4660) lt!4662 lt!4660)))))

(assert (=> b!27523 (= lt!4660 (level!51 (right!710 (ite lt!4428 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))))

(assert (=> b!27523 (= lt!4662 (level!51 (left!707 (ite lt!4428 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))))

(declare-fun d!14631 () Bool)

(declare-fun lt!4661 () Int)

(assert (=> d!14631 (>= lt!4661 0)))

(assert (=> d!14631 (= lt!4661 e!14094)))

(declare-fun c!6069 () Bool)

(assert (=> d!14631 (= c!6069 (or (is-Empty!73 (ite lt!4428 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))) (is-Single!62 (ite lt!4428 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))))

(assert (=> d!14631 (= (level!51 (ite lt!4428 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))) lt!4661)))

(declare-fun b!27522 () Bool)

(assert (=> b!27522 (= e!14094 0)))

(assert (= (and d!14631 c!6069) b!27522))

(assert (= (and d!14631 (not c!6069)) b!27523))

(declare-fun m!28935 () Bool)

(assert (=> b!27523 m!28935))

(declare-fun m!28937 () Bool)

(assert (=> b!27523 m!28937))

(assert (=> b!26917 d!14631))

(declare-fun b!27525 () Bool)

(declare-fun e!14095 () Int)

(declare-fun lt!4665 () Int)

(declare-fun lt!4663 () Int)

(assert (=> b!27525 (= e!14095 (+ 1 (ite (>= lt!4665 lt!4663) lt!4665 lt!4663)))))

(assert (=> b!27525 (= lt!4663 (level!51 (right!710 (ite lt!4428 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))))

(assert (=> b!27525 (= lt!4665 (level!51 (left!707 (ite lt!4428 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))))

(declare-fun d!14633 () Bool)

(declare-fun lt!4664 () Int)

(assert (=> d!14633 (>= lt!4664 0)))

(assert (=> d!14633 (= lt!4664 e!14095)))

(declare-fun c!6070 () Bool)

(assert (=> d!14633 (= c!6070 (or (is-Empty!73 (ite lt!4428 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))) (is-Single!62 (ite lt!4428 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))))

(assert (=> d!14633 (= (level!51 (ite lt!4428 (left!707 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))) lt!4664)))

(declare-fun b!27524 () Bool)

(assert (=> b!27524 (= e!14095 0)))

(assert (= (and d!14633 c!6070) b!27524))

(assert (= (and d!14633 (not c!6070)) b!27525))

(declare-fun m!28939 () Bool)

(assert (=> b!27525 m!28939))

(declare-fun m!28941 () Bool)

(assert (=> b!27525 m!28941))

(assert (=> b!26917 d!14633))

(declare-fun b!27527 () Bool)

(declare-fun e!14096 () List!360)

(assert (=> b!27527 (= e!14096 (Cons!354 (h!271 (toList!115 (left!707 res!5533))) (++!40 (t!4374 (toList!115 (left!707 res!5533))) (toList!115 (right!710 res!5533)))))))

(declare-fun d!14635 () Bool)

(declare-fun e!14097 () Bool)

(assert (=> d!14635 e!14097))

(declare-fun res!12600 () Bool)

(assert (=> d!14635 (=> (not res!12600) (not e!14097))))

(declare-fun lt!4666 () List!360)

(assert (=> d!14635 (= res!12600 (= (content!70 lt!4666) (union (content!70 (toList!115 (left!707 res!5533))) (content!70 (toList!115 (right!710 res!5533))))))))

(assert (=> d!14635 (= lt!4666 e!14096)))

(declare-fun c!6071 () Bool)

(assert (=> d!14635 (= c!6071 (is-Nil!355 (toList!115 (left!707 res!5533))))))

(assert (=> d!14635 (= (++!40 (toList!115 (left!707 res!5533)) (toList!115 (right!710 res!5533))) lt!4666)))

(declare-fun b!27528 () Bool)

(declare-fun res!12601 () Bool)

(assert (=> b!27528 (=> (not res!12601) (not e!14097))))

(assert (=> b!27528 (= res!12601 (= (size!269 lt!4666) (+ (size!269 (toList!115 (left!707 res!5533))) (size!269 (toList!115 (right!710 res!5533))))))))

(declare-fun b!27526 () Bool)

(assert (=> b!27526 (= e!14096 (toList!115 (right!710 res!5533)))))

(declare-fun b!27529 () Bool)

(assert (=> b!27529 (= e!14097 (or (not (= (toList!115 (right!710 res!5533)) Nil!355)) (= lt!4666 (toList!115 (left!707 res!5533)))))))

(assert (= (and d!14635 c!6071) b!27526))

(assert (= (and d!14635 (not c!6071)) b!27527))

(assert (= (and d!14635 res!12600) b!27528))

(assert (= (and b!27528 res!12601) b!27529))

(assert (=> b!27527 m!28105))

(declare-fun m!28943 () Bool)

(assert (=> b!27527 m!28943))

(declare-fun m!28945 () Bool)

(assert (=> d!14635 m!28945))

(assert (=> d!14635 m!28103))

(declare-fun m!28947 () Bool)

(assert (=> d!14635 m!28947))

(assert (=> d!14635 m!28105))

(declare-fun m!28949 () Bool)

(assert (=> d!14635 m!28949))

(declare-fun m!28951 () Bool)

(assert (=> b!27528 m!28951))

(assert (=> b!27528 m!28103))

(declare-fun m!28953 () Bool)

(assert (=> b!27528 m!28953))

(assert (=> b!27528 m!28105))

(declare-fun m!28955 () Bool)

(assert (=> b!27528 m!28955))

(assert (=> b!27045 d!14635))

(declare-fun d!14637 () Bool)

(declare-fun lt!4667 () List!360)

(assert (=> d!14637 (= (size!269 lt!4667) (size!270 (left!707 res!5533)))))

(declare-fun e!14098 () List!360)

(assert (=> d!14637 (= lt!4667 e!14098)))

(declare-fun c!6073 () Bool)

(assert (=> d!14637 (= c!6073 (is-Empty!73 (left!707 res!5533)))))

(assert (=> d!14637 (= (toList!115 (left!707 res!5533)) lt!4667)))

(declare-fun b!27533 () Bool)

(declare-fun e!14099 () List!360)

(assert (=> b!27533 (= e!14099 (++!40 (toList!115 (left!707 (left!707 res!5533))) (toList!115 (right!710 (left!707 res!5533)))))))

(declare-fun b!27532 () Bool)

(assert (=> b!27532 (= e!14099 (Cons!354 (x!8925 (left!707 res!5533)) Nil!355))))

(declare-fun b!27531 () Bool)

(assert (=> b!27531 (= e!14098 e!14099)))

(declare-fun c!6072 () Bool)

(assert (=> b!27531 (= c!6072 (is-Single!62 (left!707 res!5533)))))

(declare-fun b!27530 () Bool)

(assert (=> b!27530 (= e!14098 Nil!355)))

(assert (= (and b!27531 c!6072) b!27532))

(assert (= (and b!27531 (not c!6072)) b!27533))

(assert (= (and d!14637 c!6073) b!27530))

(assert (= (and d!14637 (not c!6073)) b!27531))

(declare-fun m!28957 () Bool)

(assert (=> d!14637 m!28957))

(declare-fun m!28959 () Bool)

(assert (=> d!14637 m!28959))

(declare-fun m!28961 () Bool)

(assert (=> b!27533 m!28961))

(declare-fun m!28963 () Bool)

(assert (=> b!27533 m!28963))

(assert (=> b!27533 m!28961))

(assert (=> b!27533 m!28963))

(declare-fun m!28965 () Bool)

(assert (=> b!27533 m!28965))

(assert (=> b!27045 d!14637))

(declare-fun d!14639 () Bool)

(declare-fun lt!4668 () List!360)

(assert (=> d!14639 (= (size!269 lt!4668) (size!270 (right!710 res!5533)))))

(declare-fun e!14100 () List!360)

(assert (=> d!14639 (= lt!4668 e!14100)))

(declare-fun c!6075 () Bool)

(assert (=> d!14639 (= c!6075 (is-Empty!73 (right!710 res!5533)))))

(assert (=> d!14639 (= (toList!115 (right!710 res!5533)) lt!4668)))

(declare-fun b!27537 () Bool)

(declare-fun e!14101 () List!360)

(assert (=> b!27537 (= e!14101 (++!40 (toList!115 (left!707 (right!710 res!5533))) (toList!115 (right!710 (right!710 res!5533)))))))

(declare-fun b!27536 () Bool)

(assert (=> b!27536 (= e!14101 (Cons!354 (x!8925 (right!710 res!5533)) Nil!355))))

(declare-fun b!27535 () Bool)

(assert (=> b!27535 (= e!14100 e!14101)))

(declare-fun c!6074 () Bool)

(assert (=> b!27535 (= c!6074 (is-Single!62 (right!710 res!5533)))))

(declare-fun b!27534 () Bool)

(assert (=> b!27534 (= e!14100 Nil!355)))

(assert (= (and b!27535 c!6074) b!27536))

(assert (= (and b!27535 (not c!6074)) b!27537))

(assert (= (and d!14639 c!6075) b!27534))

(assert (= (and d!14639 (not c!6075)) b!27535))

(declare-fun m!28967 () Bool)

(assert (=> d!14639 m!28967))

(declare-fun m!28969 () Bool)

(assert (=> d!14639 m!28969))

(declare-fun m!28971 () Bool)

(assert (=> b!27537 m!28971))

(declare-fun m!28973 () Bool)

(assert (=> b!27537 m!28973))

(assert (=> b!27537 m!28971))

(assert (=> b!27537 m!28973))

(declare-fun m!28975 () Bool)

(assert (=> b!27537 m!28975))

(assert (=> b!27045 d!14639))

(declare-fun d!14641 () Bool)

(declare-fun res!12602 () Bool)

(declare-fun e!14102 () Bool)

(assert (=> d!14641 (=> res!12602 e!14102)))

(assert (=> d!14641 (= res!12602 (not (is-CC!62 (right!710 (right!710 (right!710 xs!533))))))))

(assert (=> d!14641 (= (concInv!57 (right!710 (right!710 (right!710 xs!533)))) e!14102)))

(declare-fun b!27539 () Bool)

(declare-fun res!12605 () Bool)

(declare-fun e!14103 () Bool)

(assert (=> b!27539 (=> (not res!12605) (not e!14103))))

(assert (=> b!27539 (= res!12605 (not (isEmpty!319 (right!710 (right!710 (right!710 (right!710 xs!533)))))))))

(declare-fun b!27538 () Bool)

(assert (=> b!27538 (= e!14102 e!14103)))

(declare-fun res!12603 () Bool)

(assert (=> b!27538 (=> (not res!12603) (not e!14103))))

(assert (=> b!27538 (= res!12603 (not (isEmpty!319 (left!707 (right!710 (right!710 (right!710 xs!533)))))))))

(declare-fun b!27541 () Bool)

(assert (=> b!27541 (= e!14103 (concInv!57 (right!710 (right!710 (right!710 (right!710 xs!533))))))))

(declare-fun b!27540 () Bool)

(declare-fun res!12604 () Bool)

(assert (=> b!27540 (=> (not res!12604) (not e!14103))))

(assert (=> b!27540 (= res!12604 (concInv!57 (left!707 (right!710 (right!710 (right!710 xs!533))))))))

(assert (= (and d!14641 (not res!12602)) b!27538))

(assert (= (and b!27538 res!12603) b!27539))

(assert (= (and b!27539 res!12605) b!27540))

(assert (= (and b!27540 res!12604) b!27541))

(declare-fun m!28977 () Bool)

(assert (=> b!27539 m!28977))

(declare-fun m!28979 () Bool)

(assert (=> b!27538 m!28979))

(declare-fun m!28981 () Bool)

(assert (=> b!27541 m!28981))

(declare-fun m!28983 () Bool)

(assert (=> b!27540 m!28983))

(assert (=> b!27080 d!14641))

(declare-fun d!14643 () Bool)

(declare-fun lt!4669 () Int)

(assert (=> d!14643 (>= lt!4669 0)))

(declare-fun e!14104 () Int)

(assert (=> d!14643 (= lt!4669 e!14104)))

(declare-fun c!6076 () Bool)

(assert (=> d!14643 (= c!6076 (is-Nil!355 lt!4487))))

(assert (=> d!14643 (= (size!269 lt!4487) lt!4669)))

(declare-fun b!27542 () Bool)

(assert (=> b!27542 (= e!14104 0)))

(declare-fun b!27543 () Bool)

(assert (=> b!27543 (= e!14104 (+ 1 (size!269 (t!4374 lt!4487))))))

(assert (= (and d!14643 c!6076) b!27542))

(assert (= (and d!14643 (not c!6076)) b!27543))

(declare-fun m!28985 () Bool)

(assert (=> b!27543 m!28985))

(assert (=> d!14335 d!14643))

(declare-fun b!27546 () Bool)

(declare-fun e!14106 () Int)

(assert (=> b!27546 (= e!14106 1)))

(declare-fun d!14645 () Bool)

(declare-fun lt!4670 () Int)

(assert (=> d!14645 (>= lt!4670 0)))

(declare-fun e!14105 () Int)

(assert (=> d!14645 (= lt!4670 e!14105)))

(declare-fun c!6077 () Bool)

(assert (=> d!14645 (= c!6077 (is-Empty!73 (right!710 (right!710 xs!533))))))

(assert (=> d!14645 (= (size!270 (right!710 (right!710 xs!533))) lt!4670)))

(declare-fun b!27544 () Bool)

(assert (=> b!27544 (= e!14105 0)))

(declare-fun b!27545 () Bool)

(assert (=> b!27545 (= e!14105 e!14106)))

(declare-fun c!6078 () Bool)

(assert (=> b!27545 (= c!6078 (is-Single!62 (right!710 (right!710 xs!533))))))

(declare-fun b!27547 () Bool)

(assert (=> b!27547 (= e!14106 (+ (size!270 (left!707 (right!710 (right!710 xs!533)))) (size!270 (right!710 (right!710 (right!710 xs!533))))))))

(assert (= (and b!27545 c!6078) b!27546))

(assert (= (and b!27545 (not c!6078)) b!27547))

(assert (= (and d!14645 c!6077) b!27544))

(assert (= (and d!14645 (not c!6077)) b!27545))

(assert (=> b!27547 m!28661))

(declare-fun m!28987 () Bool)

(assert (=> b!27547 m!28987))

(assert (=> d!14335 d!14645))

(declare-fun b!27548 () Bool)

(declare-fun e!14108 () Bool)

(declare-fun e!14107 () Bool)

(assert (=> b!27548 (= e!14108 e!14107)))

(declare-fun res!12608 () Bool)

(assert (=> b!27548 (=> (not res!12608) (not e!14107))))

(assert (=> b!27548 (= res!12608 (>= (- (level!51 (left!707 (right!710 (left!707 xs!533)))) (level!51 (right!710 (right!710 (left!707 xs!533))))) (- 1)))))

(declare-fun d!14647 () Bool)

(declare-fun res!12609 () Bool)

(assert (=> d!14647 (=> res!12609 e!14108)))

(assert (=> d!14647 (= res!12609 (not (is-CC!62 (right!710 (left!707 xs!533)))))))

(assert (=> d!14647 (= (balanced!58 (right!710 (left!707 xs!533))) e!14108)))

(declare-fun b!27549 () Bool)

(declare-fun res!12607 () Bool)

(assert (=> b!27549 (=> (not res!12607) (not e!14107))))

(assert (=> b!27549 (= res!12607 (<= (- (level!51 (left!707 (right!710 (left!707 xs!533)))) (level!51 (right!710 (right!710 (left!707 xs!533))))) 1))))

(declare-fun b!27551 () Bool)

(assert (=> b!27551 (= e!14107 (balanced!58 (right!710 (right!710 (left!707 xs!533)))))))

(declare-fun b!27550 () Bool)

(declare-fun res!12606 () Bool)

(assert (=> b!27550 (=> (not res!12606) (not e!14107))))

(assert (=> b!27550 (= res!12606 (balanced!58 (left!707 (right!710 (left!707 xs!533)))))))

(assert (= (and d!14647 (not res!12609)) b!27548))

(assert (= (and b!27548 res!12608) b!27549))

(assert (= (and b!27549 res!12607) b!27550))

(assert (= (and b!27550 res!12606) b!27551))

(assert (=> b!27548 m!28111))

(assert (=> b!27548 m!28109))

(assert (=> b!27549 m!28111))

(assert (=> b!27549 m!28109))

(declare-fun m!28989 () Bool)

(assert (=> b!27551 m!28989))

(declare-fun m!28991 () Bool)

(assert (=> b!27550 m!28991))

(assert (=> b!27088 d!14647))

(declare-fun b!27553 () Bool)

(declare-fun e!14109 () List!360)

(assert (=> b!27553 (= e!14109 (Cons!354 (h!271 (toList!115 (left!707 (left!707 xs!533)))) (++!40 (t!4374 (toList!115 (left!707 (left!707 xs!533)))) (toList!115 (right!710 (left!707 xs!533))))))))

(declare-fun d!14649 () Bool)

(declare-fun e!14110 () Bool)

(assert (=> d!14649 e!14110))

(declare-fun res!12610 () Bool)

(assert (=> d!14649 (=> (not res!12610) (not e!14110))))

(declare-fun lt!4671 () List!360)

(assert (=> d!14649 (= res!12610 (= (content!70 lt!4671) (union (content!70 (toList!115 (left!707 (left!707 xs!533)))) (content!70 (toList!115 (right!710 (left!707 xs!533)))))))))

(assert (=> d!14649 (= lt!4671 e!14109)))

(declare-fun c!6079 () Bool)

(assert (=> d!14649 (= c!6079 (is-Nil!355 (toList!115 (left!707 (left!707 xs!533)))))))

(assert (=> d!14649 (= (++!40 (toList!115 (left!707 (left!707 xs!533))) (toList!115 (right!710 (left!707 xs!533)))) lt!4671)))

(declare-fun b!27554 () Bool)

(declare-fun res!12611 () Bool)

(assert (=> b!27554 (=> (not res!12611) (not e!14110))))

(assert (=> b!27554 (= res!12611 (= (size!269 lt!4671) (+ (size!269 (toList!115 (left!707 (left!707 xs!533)))) (size!269 (toList!115 (right!710 (left!707 xs!533)))))))))

(declare-fun b!27552 () Bool)

(assert (=> b!27552 (= e!14109 (toList!115 (right!710 (left!707 xs!533))))))

(declare-fun b!27555 () Bool)

(assert (=> b!27555 (= e!14110 (or (not (= (toList!115 (right!710 (left!707 xs!533))) Nil!355)) (= lt!4671 (toList!115 (left!707 (left!707 xs!533))))))))

(assert (= (and d!14649 c!6079) b!27552))

(assert (= (and d!14649 (not c!6079)) b!27553))

(assert (= (and d!14649 res!12610) b!27554))

(assert (= (and b!27554 res!12611) b!27555))

(assert (=> b!27553 m!28075))

(declare-fun m!28993 () Bool)

(assert (=> b!27553 m!28993))

(declare-fun m!28995 () Bool)

(assert (=> d!14649 m!28995))

(assert (=> d!14649 m!28073))

(declare-fun m!28997 () Bool)

(assert (=> d!14649 m!28997))

(assert (=> d!14649 m!28075))

(declare-fun m!28999 () Bool)

(assert (=> d!14649 m!28999))

(declare-fun m!29001 () Bool)

(assert (=> b!27554 m!29001))

(assert (=> b!27554 m!28073))

(declare-fun m!29003 () Bool)

(assert (=> b!27554 m!29003))

(assert (=> b!27554 m!28075))

(declare-fun m!29005 () Bool)

(assert (=> b!27554 m!29005))

(assert (=> b!27029 d!14649))

(declare-fun d!14651 () Bool)

(declare-fun lt!4672 () List!360)

(assert (=> d!14651 (= (size!269 lt!4672) (size!270 (left!707 (left!707 xs!533))))))

(declare-fun e!14111 () List!360)

(assert (=> d!14651 (= lt!4672 e!14111)))

(declare-fun c!6081 () Bool)

(assert (=> d!14651 (= c!6081 (is-Empty!73 (left!707 (left!707 xs!533))))))

(assert (=> d!14651 (= (toList!115 (left!707 (left!707 xs!533))) lt!4672)))

(declare-fun b!27559 () Bool)

(declare-fun e!14112 () List!360)

(assert (=> b!27559 (= e!14112 (++!40 (toList!115 (left!707 (left!707 (left!707 xs!533)))) (toList!115 (right!710 (left!707 (left!707 xs!533))))))))

(declare-fun b!27558 () Bool)

(assert (=> b!27558 (= e!14112 (Cons!354 (x!8925 (left!707 (left!707 xs!533))) Nil!355))))

(declare-fun b!27557 () Bool)

(assert (=> b!27557 (= e!14111 e!14112)))

(declare-fun c!6080 () Bool)

(assert (=> b!27557 (= c!6080 (is-Single!62 (left!707 (left!707 xs!533))))))

(declare-fun b!27556 () Bool)

(assert (=> b!27556 (= e!14111 Nil!355)))

(assert (= (and b!27557 c!6080) b!27558))

(assert (= (and b!27557 (not c!6080)) b!27559))

(assert (= (and d!14651 c!6081) b!27556))

(assert (= (and d!14651 (not c!6081)) b!27557))

(declare-fun m!29007 () Bool)

(assert (=> d!14651 m!29007))

(assert (=> d!14651 m!28239))

(declare-fun m!29009 () Bool)

(assert (=> b!27559 m!29009))

(declare-fun m!29011 () Bool)

(assert (=> b!27559 m!29011))

(assert (=> b!27559 m!29009))

(assert (=> b!27559 m!29011))

(declare-fun m!29013 () Bool)

(assert (=> b!27559 m!29013))

(assert (=> b!27029 d!14651))

(declare-fun d!14653 () Bool)

(declare-fun lt!4673 () List!360)

(assert (=> d!14653 (= (size!269 lt!4673) (size!270 (right!710 (left!707 xs!533))))))

(declare-fun e!14113 () List!360)

(assert (=> d!14653 (= lt!4673 e!14113)))

(declare-fun c!6083 () Bool)

(assert (=> d!14653 (= c!6083 (is-Empty!73 (right!710 (left!707 xs!533))))))

(assert (=> d!14653 (= (toList!115 (right!710 (left!707 xs!533))) lt!4673)))

(declare-fun b!27563 () Bool)

(declare-fun e!14114 () List!360)

(assert (=> b!27563 (= e!14114 (++!40 (toList!115 (left!707 (right!710 (left!707 xs!533)))) (toList!115 (right!710 (right!710 (left!707 xs!533))))))))

(declare-fun b!27562 () Bool)

(assert (=> b!27562 (= e!14114 (Cons!354 (x!8925 (right!710 (left!707 xs!533))) Nil!355))))

(declare-fun b!27561 () Bool)

(assert (=> b!27561 (= e!14113 e!14114)))

(declare-fun c!6082 () Bool)

(assert (=> b!27561 (= c!6082 (is-Single!62 (right!710 (left!707 xs!533))))))

(declare-fun b!27560 () Bool)

(assert (=> b!27560 (= e!14113 Nil!355)))

(assert (= (and b!27561 c!6082) b!27562))

(assert (= (and b!27561 (not c!6082)) b!27563))

(assert (= (and d!14653 c!6083) b!27560))

(assert (= (and d!14653 (not c!6083)) b!27561))

(declare-fun m!29015 () Bool)

(assert (=> d!14653 m!29015))

(assert (=> d!14653 m!28241))

(declare-fun m!29017 () Bool)

(assert (=> b!27563 m!29017))

(declare-fun m!29019 () Bool)

(assert (=> b!27563 m!29019))

(assert (=> b!27563 m!29017))

(assert (=> b!27563 m!29019))

(declare-fun m!29021 () Bool)

(assert (=> b!27563 m!29021))

(assert (=> b!27029 d!14653))

(declare-fun b!27564 () Bool)

(declare-fun e!14115 () Bool)

(assert (=> b!27564 (= e!14115 (= (++!40 (++!40 (toList!115 (left!707 (right!710 (right!710 xs!533)))) (toList!115 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77)) (++!40 (toList!115 (left!707 (right!710 (right!710 xs!533)))) (++!40 (toList!115 (right!710 (right!710 (right!710 xs!533)))) (toList!115 ys!77)))))))

(declare-fun lt!4674 () Bool)

(assert (=> b!27564 (= lt!4674 (appendAssoc!8 (t!4374 (toList!115 (left!707 (right!710 (right!710 xs!533))))) (toList!115 (right!710 (right!710 (right!710 xs!533)))) (toList!115 ys!77)))))

(declare-fun d!14655 () Bool)

(assert (=> d!14655 e!14115))

(declare-fun c!6084 () Bool)

(assert (=> d!14655 (= c!6084 (is-Cons!354 (toList!115 (left!707 (right!710 (right!710 xs!533))))))))

(assert (=> d!14655 (= (appendAssoc!8 (toList!115 (left!707 (right!710 (right!710 xs!533)))) (toList!115 (right!710 (right!710 (right!710 xs!533)))) (toList!115 ys!77)) true)))

(declare-fun b!27565 () Bool)

(assert (=> b!27565 (= e!14115 (= (++!40 (++!40 (toList!115 (left!707 (right!710 (right!710 xs!533)))) (toList!115 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77)) (++!40 (toList!115 (left!707 (right!710 (right!710 xs!533)))) (++!40 (toList!115 (right!710 (right!710 (right!710 xs!533)))) (toList!115 ys!77)))))))

(assert (= (and d!14655 c!6084) b!27564))

(assert (= (and d!14655 (not c!6084)) b!27565))

(assert (=> b!27564 m!28139))

(assert (=> b!27564 m!27809))

(declare-fun m!29023 () Bool)

(assert (=> b!27564 m!29023))

(assert (=> b!27564 m!28137))

(declare-fun m!29025 () Bool)

(assert (=> b!27564 m!29025))

(declare-fun m!29027 () Bool)

(assert (=> b!27564 m!29027))

(assert (=> b!27564 m!28139))

(assert (=> b!27564 m!27809))

(assert (=> b!27564 m!29025))

(assert (=> b!27564 m!28137))

(assert (=> b!27564 m!28139))

(assert (=> b!27564 m!28141))

(assert (=> b!27564 m!28141))

(assert (=> b!27564 m!27809))

(declare-fun m!29029 () Bool)

(assert (=> b!27564 m!29029))

(assert (=> b!27565 m!28137))

(assert (=> b!27565 m!28139))

(assert (=> b!27565 m!28141))

(assert (=> b!27565 m!28141))

(assert (=> b!27565 m!27809))

(assert (=> b!27565 m!29029))

(assert (=> b!27565 m!28139))

(assert (=> b!27565 m!27809))

(assert (=> b!27565 m!29025))

(assert (=> b!27565 m!28137))

(assert (=> b!27565 m!29025))

(assert (=> b!27565 m!29027))

(assert (=> b!27068 d!14655))

(assert (=> b!27068 d!14531))

(declare-fun d!14657 () Bool)

(declare-fun lt!4675 () List!360)

(assert (=> d!14657 (= (size!269 lt!4675) (size!270 (right!710 (right!710 (right!710 xs!533)))))))

(declare-fun e!14116 () List!360)

(assert (=> d!14657 (= lt!4675 e!14116)))

(declare-fun c!6086 () Bool)

(assert (=> d!14657 (= c!6086 (is-Empty!73 (right!710 (right!710 (right!710 xs!533)))))))

(assert (=> d!14657 (= (toList!115 (right!710 (right!710 (right!710 xs!533)))) lt!4675)))

(declare-fun b!27569 () Bool)

(declare-fun e!14117 () List!360)

(assert (=> b!27569 (= e!14117 (++!40 (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533))))) (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533)))))))))

(declare-fun b!27568 () Bool)

(assert (=> b!27568 (= e!14117 (Cons!354 (x!8925 (right!710 (right!710 (right!710 xs!533)))) Nil!355))))

(declare-fun b!27567 () Bool)

(assert (=> b!27567 (= e!14116 e!14117)))

(declare-fun c!6085 () Bool)

(assert (=> b!27567 (= c!6085 (is-Single!62 (right!710 (right!710 (right!710 xs!533)))))))

(declare-fun b!27566 () Bool)

(assert (=> b!27566 (= e!14116 Nil!355)))

(assert (= (and b!27567 c!6085) b!27568))

(assert (= (and b!27567 (not c!6085)) b!27569))

(assert (= (and d!14657 c!6086) b!27566))

(assert (= (and d!14657 (not c!6086)) b!27567))

(declare-fun m!29031 () Bool)

(assert (=> d!14657 m!29031))

(assert (=> d!14657 m!28987))

(assert (=> b!27569 m!28165))

(assert (=> b!27569 m!28167))

(assert (=> b!27569 m!28165))

(assert (=> b!27569 m!28167))

(declare-fun m!29033 () Bool)

(assert (=> b!27569 m!29033))

(assert (=> b!27068 d!14657))

(assert (=> b!27068 d!14321))

(declare-fun d!14659 () Bool)

(assert (=> d!14659 (= (concatCorrectness!12 lt!4427 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))) (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (= (toList!115 lt!4427) (++!40 (toList!115 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (toList!115 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))

(declare-fun bs!5094 () Bool)

(assert (= bs!5094 d!14659))

(assert (=> bs!5094 m!28883))

(assert (=> bs!5094 m!28895))

(declare-fun m!29035 () Bool)

(assert (=> bs!5094 m!29035))

(assert (=> bs!5094 m!28895))

(declare-fun m!29037 () Bool)

(assert (=> bs!5094 m!29037))

(assert (=> bs!5094 m!28883))

(assert (=> b!26918 d!14659))

(declare-fun b!27570 () Bool)

(declare-fun e!14121 () Bool)

(assert (=> b!27570 (= e!14121 (not (isEmpty!319 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))))))

(declare-fun b!27571 () Bool)

(declare-fun res!12620 () Bool)

(declare-fun e!14124 () Bool)

(assert (=> b!27571 (=> (not res!12620) (not e!14124))))

(declare-fun lt!4678 () Conc!63)

(assert (=> b!27571 (= res!12620 (concInv!57 lt!4678))))

(declare-fun b!27572 () Bool)

(declare-fun res!12623 () Bool)

(assert (=> b!27572 (=> (not res!12623) (not e!14121))))

(assert (=> b!27572 (= res!12623 (not (isEmpty!319 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))))))

(declare-fun b!27573 () Bool)

(declare-fun res!12621 () Bool)

(assert (=> b!27573 (=> (not res!12621) (not e!14124))))

(assert (=> b!27573 (= res!12621 (appendAssocInst!12 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))))

(declare-fun b!27574 () Bool)

(declare-fun e!14123 () Bool)

(assert (=> b!27574 (= e!14123 tp_is_empty!171)))

(declare-fun b!27575 () Bool)

(declare-fun e!14118 () Bool)

(assert (=> b!27575 (= e!14118 e!14124)))

(declare-fun res!12613 () Bool)

(assert (=> b!27575 (=> (not res!12613) (not e!14124))))

(declare-fun lt!4683 () Int)

(declare-fun lt!4688 () Int)

(declare-fun lt!4686 () Int)

(assert (=> b!27575 (= res!12613 (<= lt!4683 (+ (ite (>= lt!4686 lt!4688) lt!4686 lt!4688) 1)))))

(assert (=> b!27575 (= lt!4688 (level!51 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))))

(assert (=> b!27575 (= lt!4686 (level!51 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(assert (=> b!27575 (= lt!4683 (level!51 lt!4678))))

(declare-fun b!27576 () Bool)

(declare-fun e!14119 () Conc!63)

(declare-fun res!12617 () Conc!63)

(assert (=> b!27576 (= e!14119 res!12617)))

(assert (=> b!27576 true))

(assert (=> b!27576 e!14123))

(declare-fun b!27577 () Bool)

(declare-fun e!14125 () Bool)

(assert (=> b!27577 (= e!14125 (balanced!58 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(declare-fun b!27578 () Bool)

(declare-fun e!14120 () Int)

(declare-fun res!12625 () Int)

(assert (=> b!27578 (= e!14120 res!12625)))

(assert (=> b!27578 true))

(assert (=> b!27578 true))

(declare-fun b!27579 () Bool)

(declare-fun res!12614 () Bool)

(assert (=> b!27579 (=> (not res!12614) (not e!14124))))

(declare-fun lt!4691 () Int)

(declare-fun lt!4684 () Int)

(declare-fun lt!4680 () Int)

(assert (=> b!27579 (= res!12614 (>= lt!4691 (ite (>= lt!4684 lt!4680) lt!4684 lt!4680)))))

(assert (=> b!27579 (= lt!4680 (level!51 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))))

(assert (=> b!27579 (= lt!4684 (level!51 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(assert (=> b!27579 (= lt!4691 (level!51 lt!4678))))

(declare-fun b!27580 () Bool)

(declare-fun res!12618 () Bool)

(assert (=> b!27580 (=> (not res!12618) (not e!14121))))

(assert (=> b!27580 (= res!12618 (concInv!57 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))))

(declare-fun b!27581 () Bool)

(declare-fun lt!4682 () Bool)

(declare-fun lt!4689 () Int)

(declare-fun lt!4676 () Int)

(assert (=> b!27581 (= e!14119 (concatNonEmpty!15 (ite lt!4682 (ite (>= lt!4689 lt!4676) (right!710 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))) (right!710 (right!710 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))) (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))) (ite lt!4682 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))) (ite (>= lt!4689 lt!4676) (left!707 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))) (left!707 (left!707 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))))))))

(declare-fun b!27582 () Bool)

(declare-fun lt!4687 () Bool)

(assert (=> b!27582 (= e!14120 (level!51 (ite lt!4687 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))))))

(declare-fun b!27583 () Bool)

(declare-fun res!12624 () Bool)

(assert (=> b!27583 (=> (not res!12624) (not e!14124))))

(assert (=> b!27583 (= res!12624 (balanced!58 lt!4678))))

(declare-fun b!27584 () Bool)

(declare-fun res!12612 () Bool)

(assert (=> b!27584 (=> (not res!12612) (not e!14121))))

(assert (=> b!27584 (= res!12612 (balanced!58 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))))

(declare-fun b!27585 () Bool)

(declare-fun tp!5903 () Bool)

(declare-fun tp!5902 () Bool)

(assert (=> b!27585 (= e!14123 (and tp!5903 tp!5902))))

(declare-fun b!27586 () Bool)

(declare-fun e!14122 () Int)

(declare-fun lt!4681 () Conc!63)

(assert (=> b!27586 (= e!14122 (level!51 lt!4681))))

(declare-fun b!27587 () Bool)

(declare-fun res!12622 () Int)

(assert (=> b!27587 (= e!14122 res!12622)))

(assert (=> b!27587 true))

(declare-fun b!27588 () Bool)

(declare-fun lt!4677 () Int)

(declare-fun e!14126 () Conc!63)

(declare-fun lt!4679 () Bool)

(declare-fun lt!4690 () Int)

(assert (=> b!27588 (= e!14126 (ite lt!4679 (let ((res!12241 lt!4681)) (ite (>= lt!4689 lt!4676) (CC!62 (left!707 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))) res!12241) (ite (= lt!4690 (- lt!4677 3)) (CC!62 (left!707 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))) (CC!62 (left!707 (right!710 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) res!12241)) (CC!62 (CC!62 (left!707 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))) (left!707 (right!710 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))) res!12241)))) (let ((res!12244 lt!4681)) (ite (>= lt!4689 lt!4676) (CC!62 res!12244 (right!710 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))) (ite (= lt!4690 (- lt!4677 3)) (CC!62 (CC!62 res!12244 (right!710 (left!707 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))) (right!710 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))) (CC!62 res!12244 (CC!62 (right!710 (left!707 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))) (right!710 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))))))))))

(assert (=> b!27588 (= lt!4677 e!14120)))

(declare-fun c!6087 () Bool)

(assert (=> b!27588 (= c!6087 (or lt!4687 (and (not lt!4679) (not (>= lt!4689 lt!4676)))))))

(assert (=> b!27588 (= lt!4687 (and lt!4679 (not (>= lt!4689 lt!4676))))))

(assert (=> b!27588 (= lt!4690 e!14122)))

(declare-fun c!6090 () Bool)

(assert (=> b!27588 (= c!6090 (or (and lt!4679 (not (>= lt!4689 lt!4676))) (and (not lt!4679) (not (>= lt!4689 lt!4676)))))))

(assert (=> b!27588 (= lt!4681 e!14119)))

(declare-fun c!6089 () Bool)

(assert (=> b!27588 (= c!6089 (or lt!4682 (not lt!4679)))))

(assert (=> b!27588 (= lt!4682 lt!4679)))

(assert (=> b!27588 (= lt!4676 (level!51 (ite lt!4679 (right!710 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))) (left!707 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))))))

(assert (=> b!27588 (= lt!4689 (level!51 (ite lt!4679 (left!707 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))) (right!710 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))))))

(declare-fun lt!4685 () Int)

(assert (=> b!27588 (= lt!4679 (< lt!4685 (- 1)))))

(declare-fun b!27589 () Bool)

(assert (=> b!27589 (= e!14124 (concatCorrectness!12 lt!4678 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))))

(declare-fun b!27590 () Bool)

(assert (=> b!27590 (= e!14126 (CC!62 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))))

(declare-fun d!14661 () Bool)

(assert (=> d!14661 e!14118))

(declare-fun res!12616 () Bool)

(assert (=> d!14661 (=> (not res!12616) (not e!14118))))

(assert (=> d!14661 (= res!12616 (is-CC!62 lt!4678))))

(assert (=> d!14661 (= lt!4678 e!14126)))

(declare-fun c!6088 () Bool)

(assert (=> d!14661 (= c!6088 (and (>= lt!4685 (- 1)) (<= lt!4685 1)))))

(assert (=> d!14661 (= lt!4685 (- (level!51 (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))) (level!51 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))))))

(assert (=> d!14661 e!14121))

(declare-fun res!12619 () Bool)

(assert (=> d!14661 (=> (not res!12619) (not e!14121))))

(assert (=> d!14661 (= res!12619 e!14125)))

(declare-fun res!12615 () Bool)

(assert (=> d!14661 (=> (not res!12615) (not e!14125))))

(assert (=> d!14661 (= res!12615 (concInv!57 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533))))))))

(assert (=> d!14661 (= (concatNonEmpty!15 (ite lt!4431 (ite (>= lt!4438 lt!4425) (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (right!710 (right!710 (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))))) (ite lt!4406 (ite (>= lt!4413 lt!4400) (right!710 (right!710 (right!710 xs!533))) (right!710 (right!710 (right!710 (right!710 xs!533))))) (right!710 (right!710 xs!533)))) (ite lt!4431 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))) (ite (>= lt!4438 lt!4425) (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) (left!707 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))) lt!4678)))

(assert (= (and d!14661 res!12615) b!27577))

(assert (= (and d!14661 res!12619) b!27580))

(assert (= (and b!27580 res!12618) b!27584))

(assert (= (and b!27584 res!12612) b!27572))

(assert (= (and b!27572 res!12623) b!27570))

(assert (= (and b!27576 (is-CC!62 res!12617)) b!27585))

(assert (= (and b!27576 (is-Single!62 res!12617)) b!27574))

(assert (= (and b!27588 c!6089) b!27581))

(assert (= (and b!27588 (not c!6089)) b!27576))

(assert (= (and b!27588 c!6090) b!27586))

(assert (= (and b!27588 (not c!6090)) b!27587))

(assert (= (and b!27588 c!6087) b!27582))

(assert (= (and b!27588 (not c!6087)) b!27578))

(assert (= (and d!14661 c!6088) b!27590))

(assert (= (and d!14661 (not c!6088)) b!27588))

(assert (= (and d!14661 res!12616) b!27575))

(assert (= (and b!27575 res!12613) b!27579))

(assert (= (and b!27579 res!12614) b!27571))

(assert (= (and b!27571 res!12620) b!27583))

(assert (= (and b!27583 res!12624) b!27573))

(assert (= (and b!27573 res!12621) b!27589))

(declare-fun m!29039 () Bool)

(assert (=> b!27581 m!29039))

(declare-fun m!29041 () Bool)

(assert (=> b!27582 m!29041))

(declare-fun m!29043 () Bool)

(assert (=> b!27586 m!29043))

(declare-fun m!29045 () Bool)

(assert (=> b!27588 m!29045))

(declare-fun m!29047 () Bool)

(assert (=> b!27588 m!29047))

(declare-fun m!29049 () Bool)

(assert (=> b!27573 m!29049))

(declare-fun m!29051 () Bool)

(assert (=> b!27575 m!29051))

(declare-fun m!29053 () Bool)

(assert (=> b!27575 m!29053))

(declare-fun m!29055 () Bool)

(assert (=> b!27575 m!29055))

(declare-fun m!29057 () Bool)

(assert (=> b!27571 m!29057))

(assert (=> b!27579 m!29051))

(assert (=> b!27579 m!29053))

(assert (=> b!27579 m!29055))

(declare-fun m!29059 () Bool)

(assert (=> b!27584 m!29059))

(declare-fun m!29061 () Bool)

(assert (=> b!27589 m!29061))

(declare-fun m!29063 () Bool)

(assert (=> b!27570 m!29063))

(assert (=> d!14661 m!29051))

(assert (=> d!14661 m!29053))

(declare-fun m!29065 () Bool)

(assert (=> d!14661 m!29065))

(declare-fun m!29067 () Bool)

(assert (=> b!27580 m!29067))

(declare-fun m!29069 () Bool)

(assert (=> b!27572 m!29069))

(declare-fun m!29071 () Bool)

(assert (=> b!27583 m!29071))

(declare-fun m!29073 () Bool)

(assert (=> b!27577 m!29073))

(assert (=> b!26910 d!14661))

(assert (=> b!26949 d!14495))

(assert (=> b!26949 d!14497))

(declare-fun b!27591 () Bool)

(declare-fun e!14128 () Bool)

(declare-fun e!14127 () Bool)

(assert (=> b!27591 (= e!14128 e!14127)))

(declare-fun res!12628 () Bool)

(assert (=> b!27591 (=> (not res!12628) (not e!14127))))

(assert (=> b!27591 (= res!12628 (>= (- (level!51 (left!707 (left!707 lt!4402))) (level!51 (right!710 (left!707 lt!4402)))) (- 1)))))

(declare-fun d!14663 () Bool)

(declare-fun res!12629 () Bool)

(assert (=> d!14663 (=> res!12629 e!14128)))

(assert (=> d!14663 (= res!12629 (not (is-CC!62 (left!707 lt!4402))))))

(assert (=> d!14663 (= (balanced!58 (left!707 lt!4402)) e!14128)))

(declare-fun b!27592 () Bool)

(declare-fun res!12627 () Bool)

(assert (=> b!27592 (=> (not res!12627) (not e!14127))))

(assert (=> b!27592 (= res!12627 (<= (- (level!51 (left!707 (left!707 lt!4402))) (level!51 (right!710 (left!707 lt!4402)))) 1))))

(declare-fun b!27594 () Bool)

(assert (=> b!27594 (= e!14127 (balanced!58 (right!710 (left!707 lt!4402))))))

(declare-fun b!27593 () Bool)

(declare-fun res!12626 () Bool)

(assert (=> b!27593 (=> (not res!12626) (not e!14127))))

(assert (=> b!27593 (= res!12626 (balanced!58 (left!707 (left!707 lt!4402))))))

(assert (= (and d!14663 (not res!12629)) b!27591))

(assert (= (and b!27591 res!12628) b!27592))

(assert (= (and b!27592 res!12627) b!27593))

(assert (= (and b!27593 res!12626) b!27594))

(assert (=> b!27591 m!28497))

(assert (=> b!27591 m!28495))

(assert (=> b!27592 m!28497))

(assert (=> b!27592 m!28495))

(declare-fun m!29075 () Bool)

(assert (=> b!27594 m!29075))

(declare-fun m!29077 () Bool)

(assert (=> b!27593 m!29077))

(assert (=> b!27012 d!14663))

(declare-fun b!27596 () Bool)

(declare-fun e!14129 () Int)

(declare-fun lt!4694 () Int)

(declare-fun lt!4692 () Int)

(assert (=> b!27596 (= e!14129 (+ 1 (ite (>= lt!4694 lt!4692) lt!4694 lt!4692)))))

(assert (=> b!27596 (= lt!4692 (level!51 (right!710 (right!710 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77))))))))

(assert (=> b!27596 (= lt!4694 (level!51 (left!707 (right!710 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77))))))))

(declare-fun d!14665 () Bool)

(declare-fun lt!4693 () Int)

(assert (=> d!14665 (>= lt!4693 0)))

(assert (=> d!14665 (= lt!4693 e!14129)))

(declare-fun c!6091 () Bool)

(assert (=> d!14665 (= c!6091 (or (is-Empty!73 (right!710 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77)))) (is-Single!62 (right!710 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77))))))))

(assert (=> d!14665 (= (level!51 (right!710 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77)))) lt!4693)))

(declare-fun b!27595 () Bool)

(assert (=> b!27595 (= e!14129 0)))

(assert (= (and d!14665 c!6091) b!27595))

(assert (= (and d!14665 (not c!6091)) b!27596))

(declare-fun m!29079 () Bool)

(assert (=> b!27596 m!29079))

(declare-fun m!29081 () Bool)

(assert (=> b!27596 m!29081))

(assert (=> b!26898 d!14665))

(declare-fun b!27598 () Bool)

(declare-fun e!14130 () Int)

(declare-fun lt!4697 () Int)

(declare-fun lt!4695 () Int)

(assert (=> b!27598 (= e!14130 (+ 1 (ite (>= lt!4697 lt!4695) lt!4697 lt!4695)))))

(assert (=> b!27598 (= lt!4695 (level!51 (right!710 (left!707 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77))))))))

(assert (=> b!27598 (= lt!4697 (level!51 (left!707 (left!707 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77))))))))

(declare-fun d!14667 () Bool)

(declare-fun lt!4696 () Int)

(assert (=> d!14667 (>= lt!4696 0)))

(assert (=> d!14667 (= lt!4696 e!14130)))

(declare-fun c!6092 () Bool)

(assert (=> d!14667 (= c!6092 (or (is-Empty!73 (left!707 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77)))) (is-Single!62 (left!707 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77))))))))

(assert (=> d!14667 (= (level!51 (left!707 (ite lt!4403 (left!707 (right!710 (right!710 xs!533))) (right!710 ys!77)))) lt!4696)))

(declare-fun b!27597 () Bool)

(assert (=> b!27597 (= e!14130 0)))

(assert (= (and d!14667 c!6092) b!27597))

(assert (= (and d!14667 (not c!6092)) b!27598))

(declare-fun m!29083 () Bool)

(assert (=> b!27598 m!29083))

(declare-fun m!29085 () Bool)

(assert (=> b!27598 m!29085))

(assert (=> b!26898 d!14667))

(declare-fun b!27599 () Bool)

(declare-fun e!14132 () Bool)

(declare-fun e!14131 () Bool)

(assert (=> b!27599 (= e!14132 e!14131)))

(declare-fun res!12632 () Bool)

(assert (=> b!27599 (=> (not res!12632) (not e!14131))))

(assert (=> b!27599 (= res!12632 (>= (- (level!51 (left!707 (right!710 (left!707 res!5533)))) (level!51 (right!710 (right!710 (left!707 res!5533))))) (- 1)))))

(declare-fun d!14669 () Bool)

(declare-fun res!12633 () Bool)

(assert (=> d!14669 (=> res!12633 e!14132)))

(assert (=> d!14669 (= res!12633 (not (is-CC!62 (right!710 (left!707 res!5533)))))))

(assert (=> d!14669 (= (balanced!58 (right!710 (left!707 res!5533))) e!14132)))

(declare-fun b!27600 () Bool)

(declare-fun res!12631 () Bool)

(assert (=> b!27600 (=> (not res!12631) (not e!14131))))

(assert (=> b!27600 (= res!12631 (<= (- (level!51 (left!707 (right!710 (left!707 res!5533)))) (level!51 (right!710 (right!710 (left!707 res!5533))))) 1))))

(declare-fun b!27602 () Bool)

(assert (=> b!27602 (= e!14131 (balanced!58 (right!710 (right!710 (left!707 res!5533)))))))

(declare-fun b!27601 () Bool)

(declare-fun res!12630 () Bool)

(assert (=> b!27601 (=> (not res!12630) (not e!14131))))

(assert (=> b!27601 (= res!12630 (balanced!58 (left!707 (right!710 (left!707 res!5533)))))))

(assert (= (and d!14669 (not res!12633)) b!27599))

(assert (= (and b!27599 res!12632) b!27600))

(assert (= (and b!27600 res!12631) b!27601))

(assert (= (and b!27601 res!12630) b!27602))

(assert (=> b!27599 m!28313))

(assert (=> b!27599 m!28311))

(assert (=> b!27600 m!28313))

(assert (=> b!27600 m!28311))

(declare-fun m!29087 () Bool)

(assert (=> b!27602 m!29087))

(declare-fun m!29089 () Bool)

(assert (=> b!27601 m!29089))

(assert (=> b!26939 d!14669))

(declare-fun b!27603 () Bool)

(declare-fun e!14134 () Bool)

(declare-fun e!14133 () Bool)

(assert (=> b!27603 (= e!14134 e!14133)))

(declare-fun res!12636 () Bool)

(assert (=> b!27603 (=> (not res!12636) (not e!14133))))

(assert (=> b!27603 (= res!12636 (>= (- (level!51 (left!707 (left!707 (left!707 res!5533)))) (level!51 (right!710 (left!707 (left!707 res!5533))))) (- 1)))))

(declare-fun d!14671 () Bool)

(declare-fun res!12637 () Bool)

(assert (=> d!14671 (=> res!12637 e!14134)))

(assert (=> d!14671 (= res!12637 (not (is-CC!62 (left!707 (left!707 res!5533)))))))

(assert (=> d!14671 (= (balanced!58 (left!707 (left!707 res!5533))) e!14134)))

(declare-fun b!27604 () Bool)

(declare-fun res!12635 () Bool)

(assert (=> b!27604 (=> (not res!12635) (not e!14133))))

(assert (=> b!27604 (= res!12635 (<= (- (level!51 (left!707 (left!707 (left!707 res!5533)))) (level!51 (right!710 (left!707 (left!707 res!5533))))) 1))))

(declare-fun b!27606 () Bool)

(assert (=> b!27606 (= e!14133 (balanced!58 (right!710 (left!707 (left!707 res!5533)))))))

(declare-fun b!27605 () Bool)

(declare-fun res!12634 () Bool)

(assert (=> b!27605 (=> (not res!12634) (not e!14133))))

(assert (=> b!27605 (= res!12634 (balanced!58 (left!707 (left!707 (left!707 res!5533)))))))

(assert (= (and d!14671 (not res!12637)) b!27603))

(assert (= (and b!27603 res!12636) b!27604))

(assert (= (and b!27604 res!12635) b!27605))

(assert (= (and b!27605 res!12634) b!27606))

(assert (=> b!27603 m!28317))

(assert (=> b!27603 m!28315))

(assert (=> b!27604 m!28317))

(assert (=> b!27604 m!28315))

(declare-fun m!29091 () Bool)

(assert (=> b!27606 m!29091))

(declare-fun m!29093 () Bool)

(assert (=> b!27605 m!29093))

(assert (=> b!26938 d!14671))

(assert (=> b!26924 d!14337))

(assert (=> b!26924 d!14289))

(assert (=> b!26925 d!14337))

(assert (=> b!26925 d!14289))

(declare-fun b!27607 () Bool)

(declare-fun e!14135 () Bool)

(assert (=> b!27607 (= e!14135 (= (++!40 (++!40 (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533))))) (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533)))))) (toList!115 ys!77)) (++!40 (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533))))) (++!40 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77)))))))

(declare-fun lt!4698 () Bool)

(assert (=> b!27607 (= lt!4698 (appendAssoc!8 (t!4374 (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533)))))) (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77)))))

(declare-fun d!14673 () Bool)

(assert (=> d!14673 e!14135))

(declare-fun c!6093 () Bool)

(assert (=> d!14673 (= c!6093 (is-Cons!354 (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533)))))))))

(assert (=> d!14673 (= (appendAssoc!8 (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533))))) (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77)) true)))

(declare-fun b!27608 () Bool)

(assert (=> b!27608 (= e!14135 (= (++!40 (++!40 (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533))))) (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533)))))) (toList!115 ys!77)) (++!40 (toList!115 (left!707 (right!710 (right!710 (right!710 xs!533))))) (++!40 (toList!115 (right!710 (right!710 (right!710 (right!710 xs!533))))) (toList!115 ys!77)))))))

(assert (= (and d!14673 c!6093) b!27607))

(assert (= (and d!14673 (not c!6093)) b!27608))

(assert (=> b!27607 m!28167))

(assert (=> b!27607 m!27809))

(declare-fun m!29095 () Bool)

(assert (=> b!27607 m!29095))

(assert (=> b!27607 m!28165))

(assert (=> b!27607 m!28171))

(assert (=> b!27607 m!28621))

(assert (=> b!27607 m!28167))

(assert (=> b!27607 m!27809))

(assert (=> b!27607 m!28171))

(assert (=> b!27607 m!28165))

(assert (=> b!27607 m!28167))

(assert (=> b!27607 m!29033))

(assert (=> b!27607 m!29033))

(assert (=> b!27607 m!27809))

(declare-fun m!29097 () Bool)

(assert (=> b!27607 m!29097))

(assert (=> b!27608 m!28165))

(assert (=> b!27608 m!28167))

(assert (=> b!27608 m!29033))

(assert (=> b!27608 m!29033))

(assert (=> b!27608 m!27809))

(assert (=> b!27608 m!29097))

(assert (=> b!27608 m!28167))

(assert (=> b!27608 m!27809))

(assert (=> b!27608 m!28171))

(assert (=> b!27608 m!28165))

(assert (=> b!27608 m!28171))

(assert (=> b!27608 m!28621))

(assert (=> b!27067 d!14673))

(assert (=> b!27067 d!14525))

(assert (=> b!27067 d!14527))

(assert (=> b!27067 d!14321))

(declare-fun b!27610 () Bool)

(declare-fun e!14136 () Int)

(declare-fun lt!4701 () Int)

(declare-fun lt!4699 () Int)

(assert (=> b!27610 (= e!14136 (+ 1 (ite (>= lt!4701 lt!4699) lt!4701 lt!4699)))))

(assert (=> b!27610 (= lt!4699 (level!51 (right!710 (right!710 (left!707 (left!707 xs!533))))))))

(assert (=> b!27610 (= lt!4701 (level!51 (left!707 (right!710 (left!707 (left!707 xs!533))))))))

(declare-fun d!14675 () Bool)

(declare-fun lt!4700 () Int)

(assert (=> d!14675 (>= lt!4700 0)))

(assert (=> d!14675 (= lt!4700 e!14136)))

(declare-fun c!6094 () Bool)

(assert (=> d!14675 (= c!6094 (or (is-Empty!73 (right!710 (left!707 (left!707 xs!533)))) (is-Single!62 (right!710 (left!707 (left!707 xs!533))))))))

(assert (=> d!14675 (= (level!51 (right!710 (left!707 (left!707 xs!533)))) lt!4700)))

(declare-fun b!27609 () Bool)

(assert (=> b!27609 (= e!14136 0)))

(assert (= (and d!14675 c!6094) b!27609))

(assert (= (and d!14675 (not c!6094)) b!27610))

(declare-fun m!29099 () Bool)

(assert (=> b!27610 m!29099))

(declare-fun m!29101 () Bool)

(assert (=> b!27610 m!29101))

(assert (=> b!27049 d!14675))

(declare-fun b!27612 () Bool)

(declare-fun e!14137 () Int)

(declare-fun lt!4704 () Int)

(declare-fun lt!4702 () Int)

(assert (=> b!27612 (= e!14137 (+ 1 (ite (>= lt!4704 lt!4702) lt!4704 lt!4702)))))

(assert (=> b!27612 (= lt!4702 (level!51 (right!710 (left!707 (left!707 (left!707 xs!533))))))))

(assert (=> b!27612 (= lt!4704 (level!51 (left!707 (left!707 (left!707 (left!707 xs!533))))))))

(declare-fun d!14677 () Bool)

(declare-fun lt!4703 () Int)

(assert (=> d!14677 (>= lt!4703 0)))

(assert (=> d!14677 (= lt!4703 e!14137)))

(declare-fun c!6095 () Bool)

(assert (=> d!14677 (= c!6095 (or (is-Empty!73 (left!707 (left!707 (left!707 xs!533)))) (is-Single!62 (left!707 (left!707 (left!707 xs!533))))))))

(assert (=> d!14677 (= (level!51 (left!707 (left!707 (left!707 xs!533)))) lt!4703)))

(declare-fun b!27611 () Bool)

(assert (=> b!27611 (= e!14137 0)))

(assert (= (and d!14677 c!6095) b!27611))

(assert (= (and d!14677 (not c!6095)) b!27612))

(declare-fun m!29103 () Bool)

(assert (=> b!27612 m!29103))

(declare-fun m!29105 () Bool)

(assert (=> b!27612 m!29105))

(assert (=> b!27049 d!14677))

(declare-fun b!27613 () Bool)

(declare-fun e!14139 () Bool)

(declare-fun e!14138 () Bool)

(assert (=> b!27613 (= e!14139 e!14138)))

(declare-fun res!12640 () Bool)

(assert (=> b!27613 (=> (not res!12640) (not e!14138))))

(assert (=> b!27613 (= res!12640 (>= (- (level!51 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))) (level!51 (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))) (- 1)))))

(declare-fun d!14679 () Bool)

(declare-fun res!12641 () Bool)

(assert (=> d!14679 (=> res!12641 e!14139)))

(assert (=> d!14679 (= res!12641 (not (is-CC!62 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))

(assert (=> d!14679 (= (balanced!58 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) e!14139)))

(declare-fun b!27614 () Bool)

(declare-fun res!12639 () Bool)

(assert (=> b!27614 (=> (not res!12639) (not e!14138))))

(assert (=> b!27614 (= res!12639 (<= (- (level!51 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))) (level!51 (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))) 1))))

(declare-fun b!27616 () Bool)

(assert (=> b!27616 (= e!14138 (balanced!58 (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))

(declare-fun b!27615 () Bool)

(declare-fun res!12638 () Bool)

(assert (=> b!27615 (=> (not res!12638) (not e!14138))))

(assert (=> b!27615 (= res!12638 (balanced!58 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))

(assert (= (and d!14679 (not res!12641)) b!27613))

(assert (= (and b!27613 res!12640) b!27614))

(assert (= (and b!27614 res!12639) b!27615))

(assert (= (and b!27615 res!12638) b!27616))

(assert (=> b!27613 m!28591))

(assert (=> b!27613 m!28589))

(assert (=> b!27614 m!28591))

(assert (=> b!27614 m!28589))

(declare-fun m!29107 () Bool)

(assert (=> b!27616 m!29107))

(declare-fun m!29109 () Bool)

(assert (=> b!27615 m!29109))

(assert (=> b!26913 d!14679))

(assert (=> b!27025 d!14593))

(assert (=> b!27025 d!14431))

(assert (=> b!27025 d!14597))

(assert (=> b!27025 d!14591))

(declare-fun b!27618 () Bool)

(declare-fun e!14140 () List!360)

(assert (=> b!27618 (= e!14140 (Cons!354 (h!271 (toList!115 (left!707 (right!710 ys!77)))) (++!40 (t!4374 (toList!115 (left!707 (right!710 ys!77)))) (toList!115 (right!710 (right!710 ys!77))))))))

(declare-fun d!14681 () Bool)

(declare-fun e!14141 () Bool)

(assert (=> d!14681 e!14141))

(declare-fun res!12642 () Bool)

(assert (=> d!14681 (=> (not res!12642) (not e!14141))))

(declare-fun lt!4705 () List!360)

(assert (=> d!14681 (= res!12642 (= (content!70 lt!4705) (union (content!70 (toList!115 (left!707 (right!710 ys!77)))) (content!70 (toList!115 (right!710 (right!710 ys!77)))))))))

(assert (=> d!14681 (= lt!4705 e!14140)))

(declare-fun c!6096 () Bool)

(assert (=> d!14681 (= c!6096 (is-Nil!355 (toList!115 (left!707 (right!710 ys!77)))))))

(assert (=> d!14681 (= (++!40 (toList!115 (left!707 (right!710 ys!77))) (toList!115 (right!710 (right!710 ys!77)))) lt!4705)))

(declare-fun b!27619 () Bool)

(declare-fun res!12643 () Bool)

(assert (=> b!27619 (=> (not res!12643) (not e!14141))))

(assert (=> b!27619 (= res!12643 (= (size!269 lt!4705) (+ (size!269 (toList!115 (left!707 (right!710 ys!77)))) (size!269 (toList!115 (right!710 (right!710 ys!77)))))))))

(declare-fun b!27617 () Bool)

(assert (=> b!27617 (= e!14140 (toList!115 (right!710 (right!710 ys!77))))))

(declare-fun b!27620 () Bool)

(assert (=> b!27620 (= e!14141 (or (not (= (toList!115 (right!710 (right!710 ys!77))) Nil!355)) (= lt!4705 (toList!115 (left!707 (right!710 ys!77))))))))

(assert (= (and d!14681 c!6096) b!27617))

(assert (= (and d!14681 (not c!6096)) b!27618))

(assert (= (and d!14681 res!12642) b!27619))

(assert (= (and b!27619 res!12643) b!27620))

(assert (=> b!27618 m!27967))

(declare-fun m!29111 () Bool)

(assert (=> b!27618 m!29111))

(declare-fun m!29113 () Bool)

(assert (=> d!14681 m!29113))

(assert (=> d!14681 m!27965))

(declare-fun m!29115 () Bool)

(assert (=> d!14681 m!29115))

(assert (=> d!14681 m!27967))

(declare-fun m!29117 () Bool)

(assert (=> d!14681 m!29117))

(declare-fun m!29119 () Bool)

(assert (=> b!27619 m!29119))

(assert (=> b!27619 m!27965))

(declare-fun m!29121 () Bool)

(assert (=> b!27619 m!29121))

(assert (=> b!27619 m!27967))

(declare-fun m!29123 () Bool)

(assert (=> b!27619 m!29123))

(assert (=> b!26967 d!14681))

(declare-fun d!14683 () Bool)

(declare-fun lt!4706 () List!360)

(assert (=> d!14683 (= (size!269 lt!4706) (size!270 (left!707 (right!710 ys!77))))))

(declare-fun e!14142 () List!360)

(assert (=> d!14683 (= lt!4706 e!14142)))

(declare-fun c!6098 () Bool)

(assert (=> d!14683 (= c!6098 (is-Empty!73 (left!707 (right!710 ys!77))))))

(assert (=> d!14683 (= (toList!115 (left!707 (right!710 ys!77))) lt!4706)))

(declare-fun b!27624 () Bool)

(declare-fun e!14143 () List!360)

(assert (=> b!27624 (= e!14143 (++!40 (toList!115 (left!707 (left!707 (right!710 ys!77)))) (toList!115 (right!710 (left!707 (right!710 ys!77))))))))

(declare-fun b!27623 () Bool)

(assert (=> b!27623 (= e!14143 (Cons!354 (x!8925 (left!707 (right!710 ys!77))) Nil!355))))

(declare-fun b!27622 () Bool)

(assert (=> b!27622 (= e!14142 e!14143)))

(declare-fun c!6097 () Bool)

(assert (=> b!27622 (= c!6097 (is-Single!62 (left!707 (right!710 ys!77))))))

(declare-fun b!27621 () Bool)

(assert (=> b!27621 (= e!14142 Nil!355)))

(assert (= (and b!27622 c!6097) b!27623))

(assert (= (and b!27622 (not c!6097)) b!27624))

(assert (= (and d!14683 c!6098) b!27621))

(assert (= (and d!14683 (not c!6098)) b!27622))

(declare-fun m!29125 () Bool)

(assert (=> d!14683 m!29125))

(declare-fun m!29127 () Bool)

(assert (=> d!14683 m!29127))

(declare-fun m!29129 () Bool)

(assert (=> b!27624 m!29129))

(declare-fun m!29131 () Bool)

(assert (=> b!27624 m!29131))

(assert (=> b!27624 m!29129))

(assert (=> b!27624 m!29131))

(declare-fun m!29133 () Bool)

(assert (=> b!27624 m!29133))

(assert (=> b!26967 d!14683))

(declare-fun d!14685 () Bool)

(declare-fun lt!4707 () List!360)

(assert (=> d!14685 (= (size!269 lt!4707) (size!270 (right!710 (right!710 ys!77))))))

(declare-fun e!14144 () List!360)

(assert (=> d!14685 (= lt!4707 e!14144)))

(declare-fun c!6100 () Bool)

(assert (=> d!14685 (= c!6100 (is-Empty!73 (right!710 (right!710 ys!77))))))

(assert (=> d!14685 (= (toList!115 (right!710 (right!710 ys!77))) lt!4707)))

(declare-fun b!27628 () Bool)

(declare-fun e!14145 () List!360)

(assert (=> b!27628 (= e!14145 (++!40 (toList!115 (left!707 (right!710 (right!710 ys!77)))) (toList!115 (right!710 (right!710 (right!710 ys!77))))))))

(declare-fun b!27627 () Bool)

(assert (=> b!27627 (= e!14145 (Cons!354 (x!8925 (right!710 (right!710 ys!77))) Nil!355))))

(declare-fun b!27626 () Bool)

(assert (=> b!27626 (= e!14144 e!14145)))

(declare-fun c!6099 () Bool)

(assert (=> b!27626 (= c!6099 (is-Single!62 (right!710 (right!710 ys!77))))))

(declare-fun b!27625 () Bool)

(assert (=> b!27625 (= e!14144 Nil!355)))

(assert (= (and b!27626 c!6099) b!27627))

(assert (= (and b!27626 (not c!6099)) b!27628))

(assert (= (and d!14685 c!6100) b!27625))

(assert (= (and d!14685 (not c!6100)) b!27626))

(declare-fun m!29135 () Bool)

(assert (=> d!14685 m!29135))

(declare-fun m!29137 () Bool)

(assert (=> d!14685 m!29137))

(declare-fun m!29139 () Bool)

(assert (=> b!27628 m!29139))

(declare-fun m!29141 () Bool)

(assert (=> b!27628 m!29141))

(assert (=> b!27628 m!29139))

(assert (=> b!27628 m!29141))

(declare-fun m!29143 () Bool)

(assert (=> b!27628 m!29143))

(assert (=> b!26967 d!14685))

(declare-fun d!14687 () Bool)

(declare-fun c!6101 () Bool)

(assert (=> d!14687 (= c!6101 (is-Nil!355 lt!4477))))

(declare-fun e!14146 () (Set T!1827))

(assert (=> d!14687 (= (content!70 lt!4477) e!14146)))

(declare-fun b!27629 () Bool)

(assert (=> b!27629 (= e!14146 (as emptyset (Set T!1827)))))

(declare-fun b!27630 () Bool)

(assert (=> b!27630 (= e!14146 (union (insert (h!271 lt!4477) (as emptyset (Set T!1827))) (content!70 (t!4374 lt!4477))))))

(assert (= (and d!14687 c!6101) b!27629))

(assert (= (and d!14687 (not c!6101)) b!27630))

(declare-fun m!29145 () Bool)

(assert (=> b!27630 m!29145))

(declare-fun m!29147 () Bool)

(assert (=> b!27630 m!29147))

(assert (=> d!14323 d!14687))

(declare-fun d!14689 () Bool)

(declare-fun c!6102 () Bool)

(assert (=> d!14689 (= c!6102 (is-Nil!355 (toList!115 xs!533)))))

(declare-fun e!14147 () (Set T!1827))

(assert (=> d!14689 (= (content!70 (toList!115 xs!533)) e!14147)))

(declare-fun b!27631 () Bool)

(assert (=> b!27631 (= e!14147 (as emptyset (Set T!1827)))))

(declare-fun b!27632 () Bool)

(assert (=> b!27632 (= e!14147 (union (insert (h!271 (toList!115 xs!533)) (as emptyset (Set T!1827))) (content!70 (t!4374 (toList!115 xs!533)))))))

(assert (= (and d!14689 c!6102) b!27631))

(assert (= (and d!14689 (not c!6102)) b!27632))

(declare-fun m!29149 () Bool)

(assert (=> b!27632 m!29149))

(assert (=> b!27632 m!28431))

(assert (=> d!14323 d!14689))

(assert (=> d!14323 d!14551))

(declare-fun d!14691 () Bool)

(declare-fun res!12644 () Bool)

(declare-fun e!14148 () Bool)

(assert (=> d!14691 (=> res!12644 e!14148)))

(assert (=> d!14691 (= res!12644 (not (is-CC!62 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))

(assert (=> d!14691 (= (concInv!57 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))) e!14148)))

(declare-fun b!27634 () Bool)

(declare-fun res!12647 () Bool)

(declare-fun e!14149 () Bool)

(assert (=> b!27634 (=> (not res!12647) (not e!14149))))

(assert (=> b!27634 (= res!12647 (not (isEmpty!319 (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))

(declare-fun b!27633 () Bool)

(assert (=> b!27633 (= e!14148 e!14149)))

(declare-fun res!12645 () Bool)

(assert (=> b!27633 (=> (not res!12645) (not e!14149))))

(assert (=> b!27633 (= res!12645 (not (isEmpty!319 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77))))))))))

(declare-fun b!27636 () Bool)

(assert (=> b!27636 (= e!14149 (concInv!57 (right!710 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))

(declare-fun b!27635 () Bool)

(declare-fun res!12646 () Bool)

(assert (=> b!27635 (=> (not res!12646) (not e!14149))))

(assert (=> b!27635 (= res!12646 (concInv!57 (left!707 (ite lt!4406 ys!77 (ite (>= lt!4413 lt!4400) (left!707 ys!77) (left!707 (left!707 ys!77)))))))))

(assert (= (and d!14691 (not res!12644)) b!27633))

(assert (= (and b!27633 res!12645) b!27634))

(assert (= (and b!27634 res!12647) b!27635))

(assert (= (and b!27635 res!12646) b!27636))

(declare-fun m!29151 () Bool)

(assert (=> b!27634 m!29151))

(declare-fun m!29153 () Bool)

(assert (=> b!27633 m!29153))

(declare-fun m!29155 () Bool)

(assert (=> b!27636 m!29155))

(declare-fun m!29157 () Bool)

(assert (=> b!27635 m!29157))

(assert (=> b!26909 d!14691))

(assert (=> b!27003 d!14569))

(assert (=> b!27003 d!14567))

(declare-fun d!14693 () Bool)

(declare-fun res!12648 () Bool)

(declare-fun e!14150 () Bool)

(assert (=> d!14693 (=> res!12648 e!14150)))

(assert (=> d!14693 (= res!12648 (not (is-CC!62 (left!707 lt!4402))))))

(assert (=> d!14693 (= (concInv!57 (left!707 lt!4402)) e!14150)))

(declare-fun b!27638 () Bool)

(declare-fun res!12651 () Bool)

(declare-fun e!14151 () Bool)

(assert (=> b!27638 (=> (not res!12651) (not e!14151))))

(assert (=> b!27638 (= res!12651 (not (isEmpty!319 (right!710 (left!707 lt!4402)))))))

(declare-fun b!27637 () Bool)

(assert (=> b!27637 (= e!14150 e!14151)))

(declare-fun res!12649 () Bool)

(assert (=> b!27637 (=> (not res!12649) (not e!14151))))

(assert (=> b!27637 (= res!12649 (not (isEmpty!319 (left!707 (left!707 lt!4402)))))))

(declare-fun b!27640 () Bool)

(assert (=> b!27640 (= e!14151 (concInv!57 (right!710 (left!707 lt!4402))))))

(declare-fun b!27639 () Bool)

(declare-fun res!12650 () Bool)

(assert (=> b!27639 (=> (not res!12650) (not e!14151))))

(assert (=> b!27639 (= res!12650 (concInv!57 (left!707 (left!707 lt!4402))))))

(assert (= (and d!14693 (not res!12648)) b!27637))

(assert (= (and b!27637 res!12649) b!27638))

(assert (= (and b!27638 res!12651) b!27639))

(assert (= (and b!27639 res!12650) b!27640))

(declare-fun m!29159 () Bool)

(assert (=> b!27638 m!29159))

(declare-fun m!29161 () Bool)

(assert (=> b!27637 m!29161))

(declare-fun m!29163 () Bool)

(assert (=> b!27640 m!29163))

(declare-fun m!29165 () Bool)

(assert (=> b!27639 m!29165))

(assert (=> b!26922 d!14693))

(assert (=> b!27086 d!14329))

(assert (=> b!27086 d!14327))

(declare-fun b!27641 () Bool)

(declare-fun e!14153 () Bool)

(declare-fun e!14152 () Bool)

(assert (=> b!27641 (= e!14153 e!14152)))

(declare-fun res!12654 () Bool)

(assert (=> b!27641 (=> (not res!12654) (not e!14152))))

(assert (=> b!27641 (= res!12654 (>= (- (level!51 (left!707 (left!707 (right!710 xs!533)))) (level!51 (right!710 (left!707 (right!710 xs!533))))) (- 1)))))

(declare-fun d!14695 () Bool)

(declare-fun res!12655 () Bool)

(assert (=> d!14695 (=> res!12655 e!14153)))

(assert (=> d!14695 (= res!12655 (not (is-CC!62 (left!707 (right!710 xs!533)))))))

(assert (=> d!14695 (= (balanced!58 (left!707 (right!710 xs!533))) e!14153)))

(declare-fun b!27642 () Bool)

(declare-fun res!12653 () Bool)

(assert (=> b!27642 (=> (not res!12653) (not e!14152))))

(assert (=> b!27642 (= res!12653 (<= (- (level!51 (left!707 (left!707 (right!710 xs!533)))) (level!51 (right!710 (left!707 (right!710 xs!533))))) 1))))

(declare-fun b!27644 () Bool)

(assert (=> b!27644 (= e!14152 (balanced!58 (right!710 (left!707 (right!710 xs!533)))))))

(declare-fun b!27643 () Bool)

(declare-fun res!12652 () Bool)

(assert (=> b!27643 (=> (not res!12652) (not e!14152))))

(assert (=> b!27643 (= res!12652 (balanced!58 (left!707 (left!707 (right!710 xs!533)))))))

(assert (= (and d!14695 (not res!12655)) b!27641))

(assert (= (and b!27641 res!12654) b!27642))

(assert (= (and b!27642 res!12653) b!27643))

(assert (= (and b!27643 res!12652) b!27644))

(assert (=> b!27641 m!28145))

(assert (=> b!27641 m!28143))

(assert (=> b!27642 m!28145))

(assert (=> b!27642 m!28143))

(declare-fun m!29167 () Bool)

(assert (=> b!27644 m!29167))

(declare-fun m!29169 () Bool)

(assert (=> b!27643 m!29169))

(assert (=> b!26926 d!14695))

(assert (=> b!27010 d!14469))

(assert (=> b!27010 d!14471))

(assert (=> b!26999 d!14271))

(declare-fun b!27646 () Bool)

(declare-fun e!14154 () Int)

(declare-fun lt!4710 () Int)

(declare-fun lt!4708 () Int)

(assert (=> b!27646 (= e!14154 (+ 1 (ite (>= lt!4710 lt!4708) lt!4710 lt!4708)))))

(assert (=> b!27646 (= lt!4708 (level!51 (right!710 (right!710 (right!710 nrr!4)))))))

(assert (=> b!27646 (= lt!4710 (level!51 (left!707 (right!710 (right!710 nrr!4)))))))

(declare-fun d!14697 () Bool)

(declare-fun lt!4709 () Int)

(assert (=> d!14697 (>= lt!4709 0)))

(assert (=> d!14697 (= lt!4709 e!14154)))

(declare-fun c!6103 () Bool)

(assert (=> d!14697 (= c!6103 (or (is-Empty!73 (right!710 (right!710 nrr!4))) (is-Single!62 (right!710 (right!710 nrr!4)))))))

(assert (=> d!14697 (= (level!51 (right!710 (right!710 nrr!4))) lt!4709)))

(declare-fun b!27645 () Bool)

(assert (=> b!27645 (= e!14154 0)))

(assert (= (and d!14697 c!6103) b!27645))

(assert (= (and d!14697 (not c!6103)) b!27646))

(declare-fun m!29171 () Bool)

(assert (=> b!27646 m!29171))

(declare-fun m!29173 () Bool)

(assert (=> b!27646 m!29173))

(assert (=> b!27096 d!14697))

(declare-fun b!27648 () Bool)

(declare-fun e!14155 () Int)

(declare-fun lt!4713 () Int)

(declare-fun lt!4711 () Int)

(assert (=> b!27648 (= e!14155 (+ 1 (ite (>= lt!4713 lt!4711) lt!4713 lt!4711)))))

(assert (=> b!27648 (= lt!4711 (level!51 (right!710 (left!707 (right!710 nrr!4)))))))

(assert (=> b!27648 (= lt!4713 (level!51 (left!707 (left!707 (right!710 nrr!4)))))))

(declare-fun d!14699 () Bool)

(declare-fun lt!4712 () Int)

(assert (=> d!14699 (>= lt!4712 0)))

(assert (=> d!14699 (= lt!4712 e!14155)))

(declare-fun c!6104 () Bool)

(assert (=> d!14699 (= c!6104 (or (is-Empty!73 (left!707 (right!710 nrr!4))) (is-Single!62 (left!707 (right!710 nrr!4)))))))

(assert (=> d!14699 (= (level!51 (left!707 (right!710 nrr!4))) lt!4712)))

(declare-fun b!27647 () Bool)

(assert (=> b!27647 (= e!14155 0)))

(assert (= (and d!14699 c!6104) b!27647))

(assert (= (and d!14699 (not c!6104)) b!27648))

(declare-fun m!29175 () Bool)

(assert (=> b!27648 m!29175))

(declare-fun m!29177 () Bool)

(assert (=> b!27648 m!29177))

(assert (=> b!27096 d!14699))

(declare-fun d!14701 () Bool)

(declare-fun c!6105 () Bool)

(assert (=> d!14701 (= c!6105 (is-Nil!355 lt!4461))))

(declare-fun e!14156 () (Set T!1827))

(assert (=> d!14701 (= (content!70 lt!4461) e!14156)))

(declare-fun b!27649 () Bool)

(assert (=> b!27649 (= e!14156 (as emptyset (Set T!1827)))))

(declare-fun b!27650 () Bool)

(assert (=> b!27650 (= e!14156 (union (insert (h!271 lt!4461) (as emptyset (Set T!1827))) (content!70 (t!4374 lt!4461))))))

(assert (= (and d!14701 c!6105) b!27649))

(assert (= (and d!14701 (not c!6105)) b!27650))

(declare-fun m!29179 () Bool)

(assert (=> b!27650 m!29179))

(declare-fun m!29181 () Bool)

(assert (=> b!27650 m!29181))

(assert (=> d!14285 d!14701))

(assert (=> d!14285 d!14689))

(declare-fun d!14703 () Bool)

(declare-fun c!6106 () Bool)

(assert (=> d!14703 (= c!6106 (is-Nil!355 (toList!115 (left!707 (left!707 ys!77)))))))

(declare-fun e!14157 () (Set T!1827))

(assert (=> d!14703 (= (content!70 (toList!115 (left!707 (left!707 ys!77)))) e!14157)))

(declare-fun b!27651 () Bool)

(assert (=> b!27651 (= e!14157 (as emptyset (Set T!1827)))))

(declare-fun b!27652 () Bool)

(assert (=> b!27652 (= e!14157 (union (insert (h!271 (toList!115 (left!707 (left!707 ys!77)))) (as emptyset (Set T!1827))) (content!70 (t!4374 (toList!115 (left!707 (left!707 ys!77)))))))))

(assert (= (and d!14703 c!6106) b!27651))

(assert (= (and d!14703 (not c!6106)) b!27652))

(declare-fun m!29183 () Bool)

(assert (=> b!27652 m!29183))

(declare-fun m!29185 () Bool)

(assert (=> b!27652 m!29185))

(assert (=> d!14285 d!14703))

(declare-fun b!27654 () Bool)

(declare-fun e!14158 () List!360)

(assert (=> b!27654 (= e!14158 (Cons!354 (h!271 (toList!115 (left!707 (left!707 (left!707 ys!77))))) (++!40 (t!4374 (toList!115 (left!707 (left!707 (left!707 ys!77))))) (toList!115 (right!710 (left!707 (left!707 ys!77)))))))))

(declare-fun d!14705 () Bool)

(declare-fun e!14159 () Bool)

(assert (=> d!14705 e!14159))

(declare-fun res!12656 () Bool)

(assert (=> d!14705 (=> (not res!12656) (not e!14159))))

(declare-fun lt!4714 () List!360)

(assert (=> d!14705 (= res!12656 (= (content!70 lt!4714) (union (content!70 (toList!115 (left!707 (left!707 (left!707 ys!77))))) (content!70 (toList!115 (right!710 (left!707 (left!707 ys!77))))))))))

(assert (=> d!14705 (= lt!4714 e!14158)))

(declare-fun c!6107 () Bool)

(assert (=> d!14705 (= c!6107 (is-Nil!355 (toList!115 (left!707 (left!707 (left!707 ys!77))))))))

(assert (=> d!14705 (= (++!40 (toList!115 (left!707 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 (left!707 ys!77))))) lt!4714)))

(declare-fun b!27655 () Bool)

(declare-fun res!12657 () Bool)

(assert (=> b!27655 (=> (not res!12657) (not e!14159))))

(assert (=> b!27655 (= res!12657 (= (size!269 lt!4714) (+ (size!269 (toList!115 (left!707 (left!707 (left!707 ys!77))))) (size!269 (toList!115 (right!710 (left!707 (left!707 ys!77))))))))))

(declare-fun b!27653 () Bool)

(assert (=> b!27653 (= e!14158 (toList!115 (right!710 (left!707 (left!707 ys!77)))))))

(declare-fun b!27656 () Bool)

(assert (=> b!27656 (= e!14159 (or (not (= (toList!115 (right!710 (left!707 (left!707 ys!77)))) Nil!355)) (= lt!4714 (toList!115 (left!707 (left!707 (left!707 ys!77)))))))))

(assert (= (and d!14705 c!6107) b!27653))

(assert (= (and d!14705 (not c!6107)) b!27654))

(assert (= (and d!14705 res!12656) b!27655))

(assert (= (and b!27655 res!12657) b!27656))

(assert (=> b!27654 m!27957))

(declare-fun m!29187 () Bool)

(assert (=> b!27654 m!29187))

(declare-fun m!29189 () Bool)

(assert (=> d!14705 m!29189))

(assert (=> d!14705 m!27955))

(declare-fun m!29191 () Bool)

(assert (=> d!14705 m!29191))

(assert (=> d!14705 m!27957))

(declare-fun m!29193 () Bool)

(assert (=> d!14705 m!29193))

(declare-fun m!29195 () Bool)

(assert (=> b!27655 m!29195))

(assert (=> b!27655 m!27955))

(declare-fun m!29197 () Bool)

(assert (=> b!27655 m!29197))

(assert (=> b!27655 m!27957))

(declare-fun m!29199 () Bool)

(assert (=> b!27655 m!29199))

(assert (=> b!26963 d!14705))

(declare-fun d!14707 () Bool)

(declare-fun lt!4715 () List!360)

(assert (=> d!14707 (= (size!269 lt!4715) (size!270 (left!707 (left!707 (left!707 ys!77)))))))

(declare-fun e!14160 () List!360)

(assert (=> d!14707 (= lt!4715 e!14160)))

(declare-fun c!6109 () Bool)

(assert (=> d!14707 (= c!6109 (is-Empty!73 (left!707 (left!707 (left!707 ys!77)))))))

(assert (=> d!14707 (= (toList!115 (left!707 (left!707 (left!707 ys!77)))) lt!4715)))

(declare-fun b!27660 () Bool)

(declare-fun e!14161 () List!360)

(assert (=> b!27660 (= e!14161 (++!40 (toList!115 (left!707 (left!707 (left!707 (left!707 ys!77))))) (toList!115 (right!710 (left!707 (left!707 (left!707 ys!77)))))))))

(declare-fun b!27659 () Bool)

(assert (=> b!27659 (= e!14161 (Cons!354 (x!8925 (left!707 (left!707 (left!707 ys!77)))) Nil!355))))

(declare-fun b!27658 () Bool)

(assert (=> b!27658 (= e!14160 e!14161)))

(declare-fun c!6108 () Bool)

(assert (=> b!27658 (= c!6108 (is-Single!62 (left!707 (left!707 (left!707 ys!77)))))))

(declare-fun b!27657 () Bool)

(assert (=> b!27657 (= e!14160 Nil!355)))

(assert (= (and b!27658 c!6108) b!27659))

(assert (= (and b!27658 (not c!6108)) b!27660))

(assert (= (and d!14707 c!6109) b!27657))

(assert (= (and d!14707 (not c!6109)) b!27658))

(declare-fun m!29201 () Bool)

(assert (=> d!14707 m!29201))

(assert (=> d!14707 m!28599))

(declare-fun m!29203 () Bool)

(assert (=> b!27660 m!29203))

(declare-fun m!29205 () Bool)

(assert (=> b!27660 m!29205))

(assert (=> b!27660 m!29203))

(assert (=> b!27660 m!29205))

(declare-fun m!29207 () Bool)

(assert (=> b!27660 m!29207))

(assert (=> b!26963 d!14707))

(declare-fun d!14709 () Bool)

(declare-fun lt!4716 () List!360)

(assert (=> d!14709 (= (size!269 lt!4716) (size!270 (right!710 (left!707 (left!707 ys!77)))))))

(declare-fun e!14162 () List!360)

(assert (=> d!14709 (= lt!4716 e!14162)))

(declare-fun c!6111 () Bool)

(assert (=> d!14709 (= c!6111 (is-Empty!73 (right!710 (left!707 (left!707 ys!77)))))))

(assert (=> d!14709 (= (toList!115 (right!710 (left!707 (left!707 ys!77)))) lt!4716)))

(declare-fun b!27664 () Bool)

(declare-fun e!14163 () List!360)

(assert (=> b!27664 (= e!14163 (++!40 (toList!115 (left!707 (right!710 (left!707 (left!707 ys!77))))) (toList!115 (right!710 (right!710 (left!707 (left!707 ys!77)))))))))

(declare-fun b!27663 () Bool)

(assert (=> b!27663 (= e!14163 (Cons!354 (x!8925 (right!710 (left!707 (left!707 ys!77)))) Nil!355))))

(declare-fun b!27662 () Bool)

(assert (=> b!27662 (= e!14162 e!14163)))

(declare-fun c!6110 () Bool)

(assert (=> b!27662 (= c!6110 (is-Single!62 (right!710 (left!707 (left!707 ys!77)))))))

(declare-fun b!27661 () Bool)

(assert (=> b!27661 (= e!14162 Nil!355)))

(assert (= (and b!27662 c!6110) b!27663))

(assert (= (and b!27662 (not c!6110)) b!27664))

(assert (= (and d!14709 c!6111) b!27661))

(assert (= (and d!14709 (not c!6111)) b!27662))

(declare-fun m!29209 () Bool)

(assert (=> d!14709 m!29209))

(assert (=> d!14709 m!28601))

(declare-fun m!29211 () Bool)

(assert (=> b!27664 m!29211))

(declare-fun m!29213 () Bool)

(assert (=> b!27664 m!29213))

(assert (=> b!27664 m!29211))

(assert (=> b!27664 m!29213))

(declare-fun m!29215 () Bool)

(assert (=> b!27664 m!29215))

(assert (=> b!26963 d!14709))

(declare-fun b!27665 () Bool)

(declare-fun e!14164 () Bool)

(assert (=> b!27665 (= e!14164 (= (++!40 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77)))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (++!40 (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))))))))

(declare-fun lt!4717 () Bool)

(assert (=> b!27665 (= lt!4717 (appendAssoc!8 (t!4374 (toList!115 (right!710 (right!710 xs!533)))) (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))))))

(declare-fun d!14711 () Bool)

(assert (=> d!14711 e!14164))

(declare-fun c!6112 () Bool)

(assert (=> d!14711 (= c!6112 (is-Cons!354 (toList!115 (right!710 (right!710 xs!533)))))))

(assert (=> d!14711 (= (appendAssoc!8 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))) true)))

(declare-fun b!27666 () Bool)

(assert (=> b!27666 (= e!14164 (= (++!40 (++!40 (toList!115 (right!710 (right!710 xs!533))) (toList!115 (left!707 (left!707 ys!77)))) (toList!115 (right!710 (left!707 ys!77)))) (++!40 (toList!115 (right!710 (right!710 xs!533))) (++!40 (toList!115 (left!707 (left!707 ys!77))) (toList!115 (right!710 (left!707 ys!77)))))))))

(assert (= (and d!14711 c!6112) b!27665))

(assert (= (and d!14711 (not c!6112)) b!27666))

(assert (=> b!27665 m!27815))

(assert (=> b!27665 m!27813))

(declare-fun m!29217 () Bool)

(assert (=> b!27665 m!29217))

(assert (=> b!27665 m!27825))

(assert (=> b!27665 m!28059))

(declare-fun m!29219 () Bool)

(assert (=> b!27665 m!29219))

(assert (=> b!27665 m!27815))

(assert (=> b!27665 m!27813))

(assert (=> b!27665 m!28059))

(assert (=> b!27665 m!27825))

(assert (=> b!27665 m!27815))

(assert (=> b!27665 m!28159))

(assert (=> b!27665 m!28159))

(assert (=> b!27665 m!27813))

(assert (=> b!27665 m!28799))

(assert (=> b!27666 m!27825))

(assert (=> b!27666 m!27815))

(assert (=> b!27666 m!28159))

(assert (=> b!27666 m!28159))

(assert (=> b!27666 m!27813))

(assert (=> b!27666 m!28799))

(assert (=> b!27666 m!27815))

(assert (=> b!27666 m!27813))

(assert (=> b!27666 m!28059))

(assert (=> b!27666 m!27825))

(assert (=> b!27666 m!28059))

(assert (=> b!27666 m!29219))

(assert (=> b!27073 d!14711))

(assert (=> b!27073 d!14335))

(assert (=> b!27073 d!14277))

(assert (=> b!27073 d!14281))

(declare-fun b!27668 () Bool)

(declare-fun e!14165 () List!360)

(assert (=> b!27668 (= e!14165 (Cons!354 (h!271 (t!4374 (toList!115 (right!710 (right!710 xs!533))))) (++!40 (t!4374 (t!4374 (toList!115 (right!710 (right!710 xs!533))))) (toList!115 ys!77))))))

(declare-fun d!14713 () Bool)

(declare-fun e!14166 () Bool)

(assert (=> d!14713 e!14166))

(declare-fun res!12658 () Bool)

(assert (=> d!14713 (=> (not res!12658) (not e!14166))))

(declare-fun lt!4718 () List!360)

(assert (=> d!14713 (= res!12658 (= (content!70 lt!4718) (union (content!70 (t!4374 (toList!115 (right!710 (right!710 xs!533))))) (content!70 (toList!115 ys!77)))))))

(assert (=> d!14713 (= lt!4718 e!14165)))

(declare-fun c!6113 () Bool)

(assert (=> d!14713 (= c!6113 (is-Nil!355 (t!4374 (toList!115 (right!710 (right!710 xs!533))))))))

(assert (=> d!14713 (= (++!40 (t!4374 (toList!115 (right!710 (right!710 xs!533)))) (toList!115 ys!77)) lt!4718)))

(declare-fun b!27669 () Bool)

(declare-fun res!12659 () Bool)

(assert (=> b!27669 (=> (not res!12659) (not e!14166))))

(assert (=> b!27669 (= res!12659 (= (size!269 lt!4718) (+ (size!269 (t!4374 (toList!115 (right!710 (right!710 xs!533))))) (size!269 (toList!115 ys!77)))))))

(declare-fun b!27667 () Bool)

(assert (=> b!27667 (= e!14165 (toList!115 ys!77))))

(declare-fun b!27670 () Bool)

(assert (=> b!27670 (= e!14166 (or (not (= (toList!115 ys!77) Nil!355)) (= lt!4718 (t!4374 (toList!115 (right!710 (right!710 xs!533)))))))))

(assert (= (and d!14713 c!6113) b!27667))

(assert (= (and d!14713 (not c!6113)) b!27668))

(assert (= (and d!14713 res!12658) b!27669))

(assert (= (and b!27669 res!12659) b!27670))

(assert (=> b!27668 m!27809))

(declare-fun m!29221 () Bool)

(assert (=> b!27668 m!29221))

(declare-fun m!29223 () Bool)

(assert (=> d!14713 m!29223))

(assert (=> d!14713 m!28719))

(assert (=> d!14713 m!27809))

(assert (=> d!14713 m!28093))

(declare-fun m!29225 () Bool)

(assert (=> b!27669 m!29225))

(assert (=> b!27669 m!28407))

(assert (=> b!27669 m!27809))

(assert (=> b!27669 m!28097))

(assert (=> b!27090 d!14713))

(declare-fun b!27671 () Bool)

(declare-fun e!14168 () Bool)

(declare-fun e!14167 () Bool)

(assert (=> b!27671 (= e!14168 e!14167)))

(declare-fun res!12662 () Bool)

(assert (=> b!27671 (=> (not res!12662) (not e!14167))))

(assert (=> b!27671 (= res!12662 (>= (- (level!51 (left!707 (left!707 (right!710 res!5533)))) (level!51 (right!710 (left!707 (right!710 res!5533))))) (- 1)))))

(declare-fun d!14715 () Bool)

(declare-fun res!12663 () Bool)

(assert (=> d!14715 (=> res!12663 e!14168)))

(assert (=> d!14715 (= res!12663 (not (is-CC!62 (left!707 (right!710 res!5533)))))))

(assert (=> d!14715 (= (balanced!58 (left!707 (right!710 res!5533))) e!14168)))

(declare-fun b!27672 () Bool)

(declare-fun res!12661 () Bool)

(assert (=> b!27672 (=> (not res!12661) (not e!14167))))

(assert (=> b!27672 (= res!12661 (<= (- (level!51 (left!707 (left!707 (right!710 res!5533)))) (level!51 (right!710 (left!707 (right!710 res!5533))))) 1))))

(declare-fun b!27674 () Bool)

(assert (=> b!27674 (= e!14167 (balanced!58 (right!710 (left!707 (right!710 res!5533)))))))

(declare-fun b!27673 () Bool)

(declare-fun res!12660 () Bool)

(assert (=> b!27673 (=> (not res!12660) (not e!14167))))

(assert (=> b!27673 (= res!12660 (balanced!58 (left!707 (left!707 (right!710 res!5533)))))))

(assert (= (and d!14715 (not res!12663)) b!27671))

(assert (= (and b!27671 res!12662) b!27672))

(assert (= (and b!27672 res!12661) b!27673))

(assert (= (and b!27673 res!12660) b!27674))

(assert (=> b!27671 m!28445))

(assert (=> b!27671 m!28443))

(assert (=> b!27672 m!28445))

(assert (=> b!27672 m!28443))

(declare-fun m!29227 () Bool)

(assert (=> b!27674 m!29227))

(declare-fun m!29229 () Bool)

(assert (=> b!27673 m!29229))

(assert (=> b!27016 d!14715))

(declare-fun d!14717 () Bool)

(declare-fun res!12664 () Bool)

(declare-fun e!14169 () Bool)

(assert (=> d!14717 (=> res!12664 e!14169)))

(assert (=> d!14717 (= res!12664 (not (is-CC!62 (left!707 (left!707 res!5533)))))))

(assert (=> d!14717 (= (concInv!57 (left!707 (left!707 res!5533))) e!14169)))

(declare-fun b!27676 () Bool)

(declare-fun res!12667 () Bool)

(declare-fun e!14170 () Bool)

(assert (=> b!27676 (=> (not res!12667) (not e!14170))))

(assert (=> b!27676 (= res!12667 (not (isEmpty!319 (right!710 (left!707 (left!707 res!5533))))))))

(declare-fun b!27675 () Bool)

(assert (=> b!27675 (= e!14169 e!14170)))

(declare-fun res!12665 () Bool)

(assert (=> b!27675 (=> (not res!12665) (not e!14170))))

(assert (=> b!27675 (= res!12665 (not (isEmpty!319 (left!707 (left!707 (left!707 res!5533))))))))

(declare-fun b!27678 () Bool)

(assert (=> b!27678 (= e!14170 (concInv!57 (right!710 (left!707 (left!707 res!5533)))))))

(declare-fun b!27677 () Bool)

(declare-fun res!12666 () Bool)

(assert (=> b!27677 (=> (not res!12666) (not e!14170))))

(assert (=> b!27677 (= res!12666 (concInv!57 (left!707 (left!707 (left!707 res!5533)))))))

(assert (= (and d!14717 (not res!12664)) b!27675))

(assert (= (and b!27675 res!12665) b!27676))

(assert (= (and b!27676 res!12667) b!27677))

(assert (= (and b!27677 res!12666) b!27678))

(declare-fun m!29231 () Bool)

(assert (=> b!27676 m!29231))

(declare-fun m!29233 () Bool)

(assert (=> b!27675 m!29233))

(declare-fun m!29235 () Bool)

(assert (=> b!27678 m!29235))

(declare-fun m!29237 () Bool)

(assert (=> b!27677 m!29237))

(assert (=> b!26934 d!14717))

(assert (=> b!27002 d!14569))

(assert (=> b!27002 d!14567))

(declare-fun d!14719 () Bool)

(declare-fun res!12668 () Bool)

(declare-fun e!14171 () Bool)

(assert (=> d!14719 (=> res!12668 e!14171)))

(assert (=> d!14719 (= res!12668 (not (is-CC!62 (right!710 (right!710 res!5533)))))))

(assert (=> d!14719 (= (concInv!57 (right!710 (right!710 res!5533))) e!14171)))

(declare-fun b!27680 () Bool)

(declare-fun res!12671 () Bool)

(declare-fun e!14172 () Bool)

(assert (=> b!27680 (=> (not res!12671) (not e!14172))))

(assert (=> b!27680 (= res!12671 (not (isEmpty!319 (right!710 (right!710 (right!710 res!5533))))))))

(declare-fun b!27679 () Bool)

(assert (=> b!27679 (= e!14171 e!14172)))

(declare-fun res!12669 () Bool)

(assert (=> b!27679 (=> (not res!12669) (not e!14172))))

(assert (=> b!27679 (= res!12669 (not (isEmpty!319 (left!707 (right!710 (right!710 res!5533))))))))

(declare-fun b!27682 () Bool)

(assert (=> b!27682 (= e!14172 (concInv!57 (right!710 (right!710 (right!710 res!5533)))))))

(declare-fun b!27681 () Bool)

(declare-fun res!12670 () Bool)

(assert (=> b!27681 (=> (not res!12670) (not e!14172))))

(assert (=> b!27681 (= res!12670 (concInv!57 (left!707 (right!710 (right!710 res!5533)))))))

(assert (= (and d!14719 (not res!12668)) b!27679))

(assert (= (and b!27679 res!12669) b!27680))

(assert (= (and b!27680 res!12671) b!27681))

(assert (= (and b!27681 res!12670) b!27682))

(declare-fun m!29239 () Bool)

(assert (=> b!27680 m!29239))

(declare-fun m!29241 () Bool)

(assert (=> b!27679 m!29241))

(declare-fun m!29243 () Bool)

(assert (=> b!27682 m!29243))

(declare-fun m!29245 () Bool)

(assert (=> b!27681 m!29245))

(assert (=> b!27009 d!14719))

(declare-fun d!14721 () Bool)

(declare-fun res!12672 () Bool)

(declare-fun e!14173 () Bool)

(assert (=> d!14721 (=> res!12672 e!14173)))

(assert (=> d!14721 (= res!12672 (not (is-CC!62 (left!707 (left!707 ys!77)))))))

(assert (=> d!14721 (= (concInv!57 (left!707 (left!707 ys!77))) e!14173)))

(declare-fun b!27684 () Bool)

(declare-fun res!12675 () Bool)

(declare-fun e!14174 () Bool)

(assert (=> b!27684 (=> (not res!12675) (not e!14174))))

(assert (=> b!27684 (= res!12675 (not (isEmpty!319 (right!710 (left!707 (left!707 ys!77))))))))

(declare-fun b!27683 () Bool)

(assert (=> b!27683 (= e!14173 e!14174)))

(declare-fun res!12673 () Bool)

(assert (=> b!27683 (=> (not res!12673) (not e!14174))))

(assert (=> b!27683 (= res!12673 (not (isEmpty!319 (left!707 (left!707 (left!707 ys!77))))))))

(declare-fun b!27686 () Bool)

(assert (=> b!27686 (= e!14174 (concInv!57 (right!710 (left!707 (left!707 ys!77)))))))

(declare-fun b!27685 () Bool)

(declare-fun res!12674 () Bool)

(assert (=> b!27685 (=> (not res!12674) (not e!14174))))

(assert (=> b!27685 (= res!12674 (concInv!57 (left!707 (left!707 (left!707 ys!77)))))))

(assert (= (and d!14721 (not res!12672)) b!27683))

(assert (= (and b!27683 res!12673) b!27684))

(assert (= (and b!27684 res!12675) b!27685))

(assert (= (and b!27685 res!12674) b!27686))

(declare-fun m!29247 () Bool)

(assert (=> b!27684 m!29247))

(declare-fun m!29249 () Bool)

(assert (=> b!27683 m!29249))

(declare-fun m!29251 () Bool)

(assert (=> b!27686 m!29251))

(declare-fun m!29253 () Bool)

(assert (=> b!27685 m!29253))

(assert (=> b!26946 d!14721))

(declare-fun d!14723 () Bool)

(declare-fun res!12676 () Bool)

(declare-fun e!14175 () Bool)

(assert (=> d!14723 (=> res!12676 e!14175)))

(assert (=> d!14723 (= res!12676 (not (is-CC!62 (left!707 (right!710 res!5533)))))))

(assert (=> d!14723 (= (concInv!57 (left!707 (right!710 res!5533))) e!14175)))

(declare-fun b!27688 () Bool)

(declare-fun res!12679 () Bool)

(declare-fun e!14176 () Bool)

(assert (=> b!27688 (=> (not res!12679) (not e!14176))))

(assert (=> b!27688 (= res!12679 (not (isEmpty!319 (right!710 (left!707 (right!710 res!5533))))))))

(declare-fun b!27687 () Bool)

(assert (=> b!27687 (= e!14175 e!14176)))

(declare-fun res!12677 () Bool)

(assert (=> b!27687 (=> (not res!12677) (not e!14176))))

(assert (=> b!27687 (= res!12677 (not (isEmpty!319 (left!707 (left!707 (right!710 res!5533))))))))

(declare-fun b!27690 () Bool)

(assert (=> b!27690 (= e!14176 (concInv!57 (right!710 (left!707 (right!710 res!5533)))))))

(declare-fun b!27689 () Bool)

(declare-fun res!12678 () Bool)

(assert (=> b!27689 (=> (not res!12678) (not e!14176))))

(assert (=> b!27689 (= res!12678 (concInv!57 (left!707 (left!707 (right!710 res!5533)))))))

(assert (= (and d!14723 (not res!12676)) b!27687))

(assert (= (and b!27687 res!12677) b!27688))

(assert (= (and b!27688 res!12679) b!27689))

(assert (= (and b!27689 res!12678) b!27690))

(declare-fun m!29255 () Bool)

(assert (=> b!27688 m!29255))

(declare-fun m!29257 () Bool)

(assert (=> b!27687 m!29257))

(declare-fun m!29259 () Bool)

(assert (=> b!27690 m!29259))

(declare-fun m!29261 () Bool)

(assert (=> b!27689 m!29261))

(assert (=> b!27008 d!14723))

(declare-fun d!14725 () Bool)

(declare-fun lt!4719 () Int)

(assert (=> d!14725 (>= lt!4719 0)))

(declare-fun e!14177 () Int)

(assert (=> d!14725 (= lt!4719 e!14177)))

(declare-fun c!6114 () Bool)

(assert (=> d!14725 (= c!6114 (is-Nil!355 lt!4472))))

(assert (=> d!14725 (= (size!269 lt!4472) lt!4719)))

(declare-fun b!27691 () Bool)

(assert (=> b!27691 (= e!14177 0)))

(declare-fun b!27692 () Bool)

(assert (=> b!27692 (= e!14177 (+ 1 (size!269 (t!4374 lt!4472))))))

(assert (= (and d!14725 c!6114) b!27691))

(assert (= (and d!14725 (not c!6114)) b!27692))

(declare-fun m!29263 () Bool)

(assert (=> b!27692 m!29263))

(assert (=> d!14311 d!14725))

(declare-fun b!27695 () Bool)

(declare-fun e!14179 () Int)

(assert (=> b!27695 (= e!14179 1)))

(declare-fun d!14727 () Bool)

(declare-fun lt!4720 () Int)

(assert (=> d!14727 (>= lt!4720 0)))

(declare-fun e!14178 () Int)

(assert (=> d!14727 (= lt!4720 e!14178)))

(declare-fun c!6115 () Bool)

(assert (=> d!14727 (= c!6115 (is-Empty!73 (left!707 ys!77)))))

(assert (=> d!14727 (= (size!270 (left!707 ys!77)) lt!4720)))

(declare-fun b!27693 () Bool)

(assert (=> b!27693 (= e!14178 0)))

(declare-fun b!27694 () Bool)

(assert (=> b!27694 (= e!14178 e!14179)))

(declare-fun c!6116 () Bool)

(assert (=> b!27694 (= c!6116 (is-Single!62 (left!707 ys!77)))))

(declare-fun b!27696 () Bool)

(assert (=> b!27696 (= e!14179 (+ (size!270 (left!707 (left!707 ys!77))) (size!270 (right!710 (left!707 ys!77)))))))

(assert (= (and b!27694 c!6116) b!27695))

(assert (= (and b!27694 (not c!6116)) b!27696))

(assert (= (and d!14727 c!6115) b!27693))

(assert (= (and d!14727 (not c!6115)) b!27694))

(assert (=> b!27696 m!27953))

(assert (=> b!27696 m!27973))

(assert (=> d!14311 d!14727))

(assert (=> b!27014 d!14455))

(assert (=> b!27014 d!14457))

(declare-fun d!14729 () Bool)

(assert (=> d!14729 (= (isEmpty!319 (right!710 (right!710 res!5533))) (= (right!710 (right!710 res!5533)) Empty!73))))

(assert (=> b!27007 d!14729))

(declare-fun d!14731 () Bool)

(assert (=> d!14731 (= (isEmpty!319 (left!707 lt!4402)) (= (left!707 lt!4402) Empty!73))))

(assert (=> b!26920 d!14731))

(declare-fun d!14733 () Bool)

(assert (=> d!14733 (= (isEmpty!319 (left!707 (left!707 ys!77))) (= (left!707 (left!707 ys!77)) Empty!73))))

(assert (=> b!26944 d!14733))

(declare-fun d!14735 () Bool)

(declare-fun lt!4721 () Int)

(assert (=> d!14735 (>= lt!4721 0)))

(declare-fun e!14180 () Int)

(assert (=> d!14735 (= lt!4721 e!14180)))

(declare-fun c!6117 () Bool)

(assert (=> d!14735 (= c!6117 (is-Nil!355 lt!4478))))

(assert (=> d!14735 (= (size!269 lt!4478) lt!4721)))

(declare-fun b!27697 () Bool)

(assert (=> b!27697 (= e!14180 0)))

(declare-fun b!27698 () Bool)

(assert (=> b!27698 (= e!14180 (+ 1 (size!269 (t!4374 lt!4478))))))

(assert (= (and d!14735 c!6117) b!27697))

(assert (= (and d!14735 (not c!6117)) b!27698))

(declare-fun m!29265 () Bool)

(assert (=> b!27698 m!29265))

(assert (=> d!14325 d!14735))

(declare-fun b!27701 () Bool)

(declare-fun e!14182 () Int)

(assert (=> b!27701 (= e!14182 1)))

(declare-fun d!14737 () Bool)

(declare-fun lt!4722 () Int)

(assert (=> d!14737 (>= lt!4722 0)))

(declare-fun e!14181 () Int)

(assert (=> d!14737 (= lt!4722 e!14181)))

(declare-fun c!6118 () Bool)

(assert (=> d!14737 (= c!6118 (is-Empty!73 res!5533))))

(assert (=> d!14737 (= (size!270 res!5533) lt!4722)))

(declare-fun b!27699 () Bool)

(assert (=> b!27699 (= e!14181 0)))

(declare-fun b!27700 () Bool)

(assert (=> b!27700 (= e!14181 e!14182)))

(declare-fun c!6119 () Bool)

(assert (=> b!27700 (= c!6119 (is-Single!62 res!5533))))

(declare-fun b!27702 () Bool)

(assert (=> b!27702 (= e!14182 (+ (size!270 (left!707 res!5533)) (size!270 (right!710 res!5533))))))

(assert (= (and b!27700 c!6119) b!27701))

(assert (= (and b!27700 (not c!6119)) b!27702))

(assert (= (and d!14737 c!6118) b!27699))

(assert (= (and d!14737 (not c!6118)) b!27700))

(assert (=> b!27702 m!28959))

(assert (=> b!27702 m!28969))

(assert (=> d!14325 d!14737))

(declare-fun d!14739 () Bool)

(declare-fun res!12680 () Bool)

(declare-fun e!14183 () Bool)

(assert (=> d!14739 (=> res!12680 e!14183)))

(assert (=> d!14739 (= res!12680 (not (is-CC!62 lt!4427)))))

(assert (=> d!14739 (= (concInv!57 lt!4427) e!14183)))

(declare-fun b!27704 () Bool)

(declare-fun res!12683 () Bool)

(declare-fun e!14184 () Bool)

(assert (=> b!27704 (=> (not res!12683) (not e!14184))))

(assert (=> b!27704 (= res!12683 (not (isEmpty!319 (right!710 lt!4427))))))

(declare-fun b!27703 () Bool)

(assert (=> b!27703 (= e!14183 e!14184)))

(declare-fun res!12681 () Bool)

(assert (=> b!27703 (=> (not res!12681) (not e!14184))))

(assert (=> b!27703 (= res!12681 (not (isEmpty!319 (left!707 lt!4427))))))

(declare-fun b!27706 () Bool)

(assert (=> b!27706 (= e!14184 (concInv!57 (right!710 lt!4427)))))

(declare-fun b!27705 () Bool)

(declare-fun res!12682 () Bool)

(assert (=> b!27705 (=> (not res!12682) (not e!14184))))

(assert (=> b!27705 (= res!12682 (concInv!57 (left!707 lt!4427)))))

(assert (= (and d!14739 (not res!12680)) b!27703))

(assert (= (and b!27703 res!12681) b!27704))

(assert (= (and b!27704 res!12683) b!27705))

(assert (= (and b!27705 res!12682) b!27706))

(declare-fun m!29267 () Bool)

(assert (=> b!27704 m!29267))

(declare-fun m!29269 () Bool)

(assert (=> b!27703 m!29269))

(declare-fun m!29271 () Bool)

(assert (=> b!27706 m!29271))

(declare-fun m!29273 () Bool)

(assert (=> b!27705 m!29273))

(assert (=> b!26900 d!14739))

(declare-fun b!27708 () Bool)

(declare-fun e!14185 () List!360)

(assert (=> b!27708 (= e!14185 (Cons!354 (h!271 (toList!115 (left!707 (right!710 (right!710 xs!533))))) (++!40 (t!4374 (toList!115 (left!707 (right!710 (right!710 xs!533))))) (toList!115 (right!710 (right!710 (right!710 xs!533)))))))))

(declare-fun d!14741 () Bool)

(declare-fun e!14186 () Bool)

(assert (=> d!14741 e!14186))

(declare-fun res!12684 () Bool)

(assert (=> d!14741 (=> (not res!12684) (not e!14186))))

(declare-fun lt!4723 () List!360)

(assert (=> d!14741 (= res!12684 (= (content!70 lt!4723) (union (content!70 (toList!115 (left!707 (right!710 (right!710 xs!533))))) (content!70 (toList!115 (right!710 (right!710 (right!710 xs!533))))))))))

(assert (=> d!14741 (= lt!4723 e!14185)))

(declare-fun c!6120 () Bool)

(assert (=> d!14741 (= c!6120 (is-Nil!355 (toList!115 (left!707 (right!710 (right!710 xs!533))))))))

(assert (=> d!14741 (= (++!40 (toList!115 (left!707 (right!710 (right!710 xs!533)))) (toList!115 (right!710 (right!710 (right!710 xs!533))))) lt!4723)))

(declare-fun b!27709 () Bool)

(declare-fun res!12685 () Bool)

(assert (=> b!27709 (=> (not res!12685) (not e!14186))))

(assert (=> b!27709 (= res!12685 (= (size!269 lt!4723) (+ (size!269 (toList!115 (left!707 (right!710 (right!710 xs!533))))) (size!269 (toList!115 (right!710 (right!710 (right!710 xs!533))))))))))

(declare-fun b!27707 () Bool)

(assert (=> b!27707 (= e!14185 (toList!115 (right!710 (right!710 (right!710 xs!533)))))))

(declare-fun b!27710 () Bool)

(assert (=> b!27710 (= e!14186 (or (not (= (toList!115 (right!710 (right!710 (right!710 xs!533)))) Nil!355)) (= lt!4723 (toList!115 (left!707 (right!710 (right!710 xs!533)))))))))

(assert (= (and d!14741 c!6120) b!27707))

(assert (= (and d!14741 (not c!6120)) b!27708))

(assert (= (and d!14741 res!12684) b!27709))

(assert (= (and b!27709 res!12685) b!27710))

(assert (=> b!27708 m!28139))

(declare-fun m!29275 () Bool)

(assert (=> b!27708 m!29275))

(declare-fun m!29277 () Bool)

(assert (=> d!14741 m!29277))

(assert (=> d!14741 m!28137))

(declare-fun m!29279 () Bool)

(assert (=> d!14741 m!29279))

(assert (=> d!14741 m!28139))

(declare-fun m!29281 () Bool)

(assert (=> d!14741 m!29281))

(declare-fun m!29283 () Bool)

(assert (=> b!27709 m!29283))

(assert (=> b!27709 m!28137))

(declare-fun m!29285 () Bool)

(assert (=> b!27709 m!29285))

(assert (=> b!27709 m!28139))

(declare-fun m!29287 () Bool)

(assert (=> b!27709 m!29287))

(assert (=> b!27059 d!14741))

(assert (=> b!27059 d!14531))

(assert (=> b!27059 d!14657))

(declare-fun b!27712 () Bool)

(declare-fun e!14187 () List!360)

(assert (=> b!27712 (= e!14187 (Cons!354 (h!271 (t!4374 (toList!115 xs!533))) (++!40 (t!4374 (t!4374 (toList!115 xs!533))) (toList!115 ys!77))))))

(declare-fun d!14743 () Bool)

(declare-fun e!14188 () Bool)

(assert (=> d!14743 e!14188))

(declare-fun res!12686 () Bool)

(assert (=> d!14743 (=> (not res!12686) (not e!14188))))

(declare-fun lt!4724 () List!360)

(assert (=> d!14743 (= res!12686 (= (content!70 lt!4724) (union (content!70 (t!4374 (toList!115 xs!533))) (content!70 (toList!115 ys!77)))))))

(assert (=> d!14743 (= lt!4724 e!14187)))

(declare-fun c!6121 () Bool)

(assert (=> d!14743 (= c!6121 (is-Nil!355 (t!4374 (toList!115 xs!533))))))

(assert (=> d!14743 (= (++!40 (t!4374 (toList!115 xs!533)) (toList!115 ys!77)) lt!4724)))

(declare-fun b!27713 () Bool)

(declare-fun res!12687 () Bool)

(assert (=> b!27713 (=> (not res!12687) (not e!14188))))

(assert (=> b!27713 (= res!12687 (= (size!269 lt!4724) (+ (size!269 (t!4374 (toList!115 xs!533))) (size!269 (toList!115 ys!77)))))))

(declare-fun b!27711 () Bool)

(assert (=> b!27711 (= e!14187 (toList!115 ys!77))))

(declare-fun b!27714 () Bool)

(assert (=> b!27714 (= e!14188 (or (not (= (toList!115 ys!77) Nil!355)) (= lt!4724 (t!4374 (toList!115 xs!533)))))))

(assert (= (and d!14743 c!6121) b!27711))

(assert (= (and d!14743 (not c!6121)) b!27712))

(assert (= (and d!14743 res!12686) b!27713))

(assert (= (and b!27713 res!12687) b!27714))

(assert (=> b!27712 m!27809))

(declare-fun m!29289 () Bool)

(assert (=> b!27712 m!29289))

(declare-fun m!29291 () Bool)

(assert (=> d!14743 m!29291))

(assert (=> d!14743 m!28431))

(assert (=> d!14743 m!27809))

(assert (=> d!14743 m!28093))

(declare-fun m!29293 () Bool)

(assert (=> b!27713 m!29293))

(assert (=> b!27713 m!28255))

(assert (=> b!27713 m!27809))

(assert (=> b!27713 m!28097))

(assert (=> b!27039 d!14743))

(assert (=> b!27001 d!14351))

(declare-fun d!14745 () Bool)

(declare-fun lt!4725 () Int)

(assert (=> d!14745 (>= lt!4725 0)))

(declare-fun e!14189 () Int)

(assert (=> d!14745 (= lt!4725 e!14189)))

(declare-fun c!6122 () Bool)

(assert (=> d!14745 (= c!6122 (is-Nil!355 lt!4456))))

(assert (=> d!14745 (= (size!269 lt!4456) lt!4725)))

(declare-fun b!27715 () Bool)

(assert (=> b!27715 (= e!14189 0)))

(declare-fun b!27716 () Bool)

(assert (=> b!27716 (= e!14189 (+ 1 (size!269 (t!4374 lt!4456))))))

(assert (= (and d!14745 c!6122) b!27715))

(assert (= (and d!14745 (not c!6122)) b!27716))

(declare-fun m!29295 () Bool)

(assert (=> b!27716 m!29295))

(assert (=> d!14279 d!14745))

(declare-fun b!27719 () Bool)

(declare-fun e!14191 () Int)

(assert (=> b!27719 (= e!14191 1)))

(declare-fun d!14747 () Bool)

(declare-fun lt!4726 () Int)

(assert (=> d!14747 (>= lt!4726 0)))

(declare-fun e!14190 () Int)

(assert (=> d!14747 (= lt!4726 e!14190)))

(declare-fun c!6123 () Bool)

(assert (=> d!14747 (= c!6123 (is-Empty!73 (right!710 ys!77)))))

(assert (=> d!14747 (= (size!270 (right!710 ys!77)) lt!4726)))

(declare-fun b!27717 () Bool)

(assert (=> b!27717 (= e!14190 0)))

(declare-fun b!27718 () Bool)

(assert (=> b!27718 (= e!14190 e!14191)))

(declare-fun c!6124 () Bool)

(assert (=> b!27718 (= c!6124 (is-Single!62 (right!710 ys!77)))))

(declare-fun b!27720 () Bool)

(assert (=> b!27720 (= e!14191 (+ (size!270 (left!707 (right!710 ys!77))) (size!270 (right!710 (right!710 ys!77)))))))

(assert (= (and b!27718 c!6124) b!27719))

(assert (= (and b!27718 (not c!6124)) b!27720))

(assert (= (and d!14747 c!6123) b!27717))

(assert (= (and d!14747 (not c!6123)) b!27718))

(assert (=> b!27720 m!29127))

(assert (=> b!27720 m!29137))

(assert (=> d!14279 d!14747))

(declare-fun d!14749 () Bool)

(assert (=> d!14749 (= (isEmpty!319 (left!707 (right!710 ys!77))) (= (left!707 (right!710 ys!77)) Empty!73))))

(assert (=> b!27081 d!14749))

(declare-fun b!27721 () Bool)

(declare-fun e!14192 () Bool)

(declare-fun tp!5904 () Bool)

(declare-fun tp!5905 () Bool)

(assert (=> b!27721 (= e!14192 (and tp!5904 tp!5905))))

(declare-fun b!27722 () Bool)

(assert (=> b!27722 (= e!14192 tp_is_empty!171)))

(assert (=> b!27133 (= tp!5892 e!14192)))

(assert (= (and b!27133 (is-CC!62 (left!707 (right!710 (right!710 xs!533))))) b!27721))

(assert (= (and b!27133 (is-Single!62 (left!707 (right!710 (right!710 xs!533))))) b!27722))

(declare-fun b!27723 () Bool)

(declare-fun e!14193 () Bool)

(declare-fun tp!5906 () Bool)

(declare-fun tp!5907 () Bool)

(assert (=> b!27723 (= e!14193 (and tp!5906 tp!5907))))

(declare-fun b!27724 () Bool)

(assert (=> b!27724 (= e!14193 tp_is_empty!171)))

(assert (=> b!27133 (= tp!5893 e!14193)))

(assert (= (and b!27133 (is-CC!62 (right!710 (right!710 (right!710 xs!533))))) b!27723))

(assert (= (and b!27133 (is-Single!62 (right!710 (right!710 (right!710 xs!533))))) b!27724))

(declare-fun b!27725 () Bool)

(declare-fun e!14194 () Bool)

(declare-fun tp!5908 () Bool)

(declare-fun tp!5909 () Bool)

(assert (=> b!27725 (= e!14194 (and tp!5908 tp!5909))))

(declare-fun b!27726 () Bool)

(assert (=> b!27726 (= e!14194 tp_is_empty!171)))

(assert (=> b!27139 (= tp!5898 e!14194)))

(assert (= (and b!27139 (is-CC!62 (left!707 (left!707 (left!707 xs!533))))) b!27725))

(assert (= (and b!27139 (is-Single!62 (left!707 (left!707 (left!707 xs!533))))) b!27726))

(declare-fun b!27727 () Bool)

(declare-fun e!14195 () Bool)

(declare-fun tp!5910 () Bool)

(declare-fun tp!5911 () Bool)

(assert (=> b!27727 (= e!14195 (and tp!5910 tp!5911))))

(declare-fun b!27728 () Bool)

(assert (=> b!27728 (= e!14195 tp_is_empty!171)))

(assert (=> b!27139 (= tp!5899 e!14195)))

(assert (= (and b!27139 (is-CC!62 (right!710 (left!707 (left!707 xs!533))))) b!27727))

(assert (= (and b!27139 (is-Single!62 (right!710 (left!707 (left!707 xs!533))))) b!27728))

(declare-fun b!27729 () Bool)

(declare-fun e!14196 () Bool)

(declare-fun tp!5912 () Bool)

(declare-fun tp!5913 () Bool)

(assert (=> b!27729 (= e!14196 (and tp!5912 tp!5913))))

(declare-fun b!27730 () Bool)

(assert (=> b!27730 (= e!14196 tp_is_empty!171)))

(assert (=> b!27141 (= tp!5900 e!14196)))

(assert (= (and b!27141 (is-CC!62 (left!707 (right!710 (left!707 xs!533))))) b!27729))

(assert (= (and b!27141 (is-Single!62 (left!707 (right!710 (left!707 xs!533))))) b!27730))

(declare-fun b!27731 () Bool)

(declare-fun e!14197 () Bool)

(declare-fun tp!5914 () Bool)

(declare-fun tp!5915 () Bool)

(assert (=> b!27731 (= e!14197 (and tp!5914 tp!5915))))

(declare-fun b!27732 () Bool)

(assert (=> b!27732 (= e!14197 tp_is_empty!171)))

(assert (=> b!27141 (= tp!5901 e!14197)))

(assert (= (and b!27141 (is-CC!62 (right!710 (right!710 (left!707 xs!533))))) b!27731))

(assert (= (and b!27141 (is-Single!62 (right!710 (right!710 (left!707 xs!533))))) b!27732))

(declare-fun b!27733 () Bool)

(declare-fun e!14198 () Bool)

(declare-fun tp!5916 () Bool)

(declare-fun tp!5917 () Bool)

(assert (=> b!27733 (= e!14198 (and tp!5916 tp!5917))))

(declare-fun b!27734 () Bool)

(assert (=> b!27734 (= e!14198 tp_is_empty!171)))

(assert (=> b!27135 (= tp!5894 e!14198)))

(assert (= (and b!27135 (is-CC!62 (left!707 (left!707 (left!707 nrr!4))))) b!27733))

(assert (= (and b!27135 (is-Single!62 (left!707 (left!707 (left!707 nrr!4))))) b!27734))

(declare-fun b!27735 () Bool)

(declare-fun e!14199 () Bool)

(declare-fun tp!5918 () Bool)

(declare-fun tp!5919 () Bool)

(assert (=> b!27735 (= e!14199 (and tp!5918 tp!5919))))

(declare-fun b!27736 () Bool)

(assert (=> b!27736 (= e!14199 tp_is_empty!171)))

(assert (=> b!27135 (= tp!5895 e!14199)))

(assert (= (and b!27135 (is-CC!62 (right!710 (left!707 (left!707 nrr!4))))) b!27735))

(assert (= (and b!27135 (is-Single!62 (right!710 (left!707 (left!707 nrr!4))))) b!27736))

(declare-fun b!27737 () Bool)

(declare-fun e!14200 () Bool)

(declare-fun tp!5920 () Bool)

(declare-fun tp!5921 () Bool)

(assert (=> b!27737 (= e!14200 (and tp!5920 tp!5921))))

(declare-fun b!27738 () Bool)

(assert (=> b!27738 (= e!14200 tp_is_empty!171)))

(assert (=> b!27121 (= tp!5880 e!14200)))

(assert (= (and b!27121 (is-CC!62 (left!707 (right!710 (right!710 ys!77))))) b!27737))

(assert (= (and b!27121 (is-Single!62 (left!707 (right!710 (right!710 ys!77))))) b!27738))

(declare-fun b!27739 () Bool)

(declare-fun e!14201 () Bool)

(declare-fun tp!5922 () Bool)

(declare-fun tp!5923 () Bool)

(assert (=> b!27739 (= e!14201 (and tp!5922 tp!5923))))

(declare-fun b!27740 () Bool)

(assert (=> b!27740 (= e!14201 tp_is_empty!171)))

(assert (=> b!27121 (= tp!5881 e!14201)))

(assert (= (and b!27121 (is-CC!62 (right!710 (right!710 (right!710 ys!77))))) b!27739))

(assert (= (and b!27121 (is-Single!62 (right!710 (right!710 (right!710 ys!77))))) b!27740))

(declare-fun b!27741 () Bool)

(declare-fun e!14202 () Bool)

(declare-fun tp!5924 () Bool)

(declare-fun tp!5925 () Bool)

(assert (=> b!27741 (= e!14202 (and tp!5924 tp!5925))))

(declare-fun b!27742 () Bool)

(assert (=> b!27742 (= e!14202 tp_is_empty!171)))

(assert (=> b!27129 (= tp!5888 e!14202)))

(assert (= (and b!27129 (is-CC!62 (left!707 (right!710 res!12297)))) b!27741))

(assert (= (and b!27129 (is-Single!62 (left!707 (right!710 res!12297)))) b!27742))

(declare-fun b!27743 () Bool)

(declare-fun e!14203 () Bool)

(declare-fun tp!5926 () Bool)

(declare-fun tp!5927 () Bool)

(assert (=> b!27743 (= e!14203 (and tp!5926 tp!5927))))

(declare-fun b!27744 () Bool)

(assert (=> b!27744 (= e!14203 tp_is_empty!171)))

(assert (=> b!27129 (= tp!5889 e!14203)))

(assert (= (and b!27129 (is-CC!62 (right!710 (right!710 res!12297)))) b!27743))

(assert (= (and b!27129 (is-Single!62 (right!710 (right!710 res!12297)))) b!27744))

(declare-fun b!27745 () Bool)

(declare-fun e!14204 () Bool)

(declare-fun tp!5928 () Bool)

(declare-fun tp!5929 () Bool)

(assert (=> b!27745 (= e!14204 (and tp!5928 tp!5929))))

(declare-fun b!27746 () Bool)

(assert (=> b!27746 (= e!14204 tp_is_empty!171)))

(assert (=> b!27127 (= tp!5886 e!14204)))

(assert (= (and b!27127 (is-CC!62 (left!707 (left!707 res!12297)))) b!27745))

(assert (= (and b!27127 (is-Single!62 (left!707 (left!707 res!12297)))) b!27746))

(declare-fun b!27747 () Bool)

(declare-fun e!14205 () Bool)

(declare-fun tp!5930 () Bool)

(declare-fun tp!5931 () Bool)

(assert (=> b!27747 (= e!14205 (and tp!5930 tp!5931))))

(declare-fun b!27748 () Bool)

(assert (=> b!27748 (= e!14205 tp_is_empty!171)))

(assert (=> b!27127 (= tp!5887 e!14205)))

(assert (= (and b!27127 (is-CC!62 (right!710 (left!707 res!12297)))) b!27747))

(assert (= (and b!27127 (is-Single!62 (right!710 (left!707 res!12297)))) b!27748))

(declare-fun b!27749 () Bool)

(declare-fun e!14206 () Bool)

(declare-fun tp!5932 () Bool)

(declare-fun tp!5933 () Bool)

(assert (=> b!27749 (= e!14206 (and tp!5932 tp!5933))))

(declare-fun b!27750 () Bool)

(assert (=> b!27750 (= e!14206 tp_is_empty!171)))

(assert (=> b!27109 (= tp!5868 e!14206)))

(assert (= (and b!27109 (is-CC!62 (left!707 (right!710 (right!710 nrr!4))))) b!27749))

(assert (= (and b!27109 (is-Single!62 (left!707 (right!710 (right!710 nrr!4))))) b!27750))

(declare-fun b!27751 () Bool)

(declare-fun e!14207 () Bool)

(declare-fun tp!5934 () Bool)

(declare-fun tp!5935 () Bool)

(assert (=> b!27751 (= e!14207 (and tp!5934 tp!5935))))

(declare-fun b!27752 () Bool)

(assert (=> b!27752 (= e!14207 tp_is_empty!171)))

(assert (=> b!27109 (= tp!5869 e!14207)))

(assert (= (and b!27109 (is-CC!62 (right!710 (right!710 (right!710 nrr!4))))) b!27751))

(assert (= (and b!27109 (is-Single!62 (right!710 (right!710 (right!710 nrr!4))))) b!27752))

(declare-fun b!27753 () Bool)

(declare-fun e!14208 () Bool)

(declare-fun tp!5936 () Bool)

(declare-fun tp!5937 () Bool)

(assert (=> b!27753 (= e!14208 (and tp!5936 tp!5937))))

(declare-fun b!27754 () Bool)

(assert (=> b!27754 (= e!14208 tp_is_empty!171)))

(assert (=> b!27107 (= tp!5866 e!14208)))

(assert (= (and b!27107 (is-CC!62 (left!707 (left!707 (right!710 nrr!4))))) b!27753))

(assert (= (and b!27107 (is-Single!62 (left!707 (left!707 (right!710 nrr!4))))) b!27754))

(declare-fun b!27755 () Bool)

(declare-fun e!14209 () Bool)

(declare-fun tp!5938 () Bool)

(declare-fun tp!5939 () Bool)

(assert (=> b!27755 (= e!14209 (and tp!5938 tp!5939))))

(declare-fun b!27756 () Bool)

(assert (=> b!27756 (= e!14209 tp_is_empty!171)))

(assert (=> b!27107 (= tp!5867 e!14209)))

(assert (= (and b!27107 (is-CC!62 (right!710 (left!707 (right!710 nrr!4))))) b!27755))

(assert (= (and b!27107 (is-Single!62 (right!710 (left!707 (right!710 nrr!4))))) b!27756))

(declare-fun b!27757 () Bool)

(declare-fun e!14210 () Bool)

(declare-fun tp!5940 () Bool)

(declare-fun tp!5941 () Bool)

(assert (=> b!27757 (= e!14210 (and tp!5940 tp!5941))))

(declare-fun b!27758 () Bool)

(assert (=> b!27758 (= e!14210 tp_is_empty!171)))

(assert (=> b!27117 (= tp!5876 e!14210)))

(assert (= (and b!27117 (is-CC!62 (left!707 (right!710 (left!707 res!5533))))) b!27757))

(assert (= (and b!27117 (is-Single!62 (left!707 (right!710 (left!707 res!5533))))) b!27758))

(declare-fun b!27759 () Bool)

(declare-fun e!14211 () Bool)

(declare-fun tp!5942 () Bool)

(declare-fun tp!5943 () Bool)

(assert (=> b!27759 (= e!14211 (and tp!5942 tp!5943))))

(declare-fun b!27760 () Bool)

(assert (=> b!27760 (= e!14211 tp_is_empty!171)))

(assert (=> b!27117 (= tp!5877 e!14211)))

(assert (= (and b!27117 (is-CC!62 (right!710 (right!710 (left!707 res!5533))))) b!27759))

(assert (= (and b!27117 (is-Single!62 (right!710 (right!710 (left!707 res!5533))))) b!27760))

(declare-fun b!27761 () Bool)

(declare-fun e!14212 () Bool)

(declare-fun tp!5944 () Bool)

(declare-fun tp!5945 () Bool)

(assert (=> b!27761 (= e!14212 (and tp!5944 tp!5945))))

(declare-fun b!27762 () Bool)

(assert (=> b!27762 (= e!14212 tp_is_empty!171)))

(assert (=> b!27119 (= tp!5878 e!14212)))

(assert (= (and b!27119 (is-CC!62 (left!707 (left!707 (right!710 ys!77))))) b!27761))

(assert (= (and b!27119 (is-Single!62 (left!707 (left!707 (right!710 ys!77))))) b!27762))

(declare-fun b!27763 () Bool)

(declare-fun e!14213 () Bool)

(declare-fun tp!5946 () Bool)

(declare-fun tp!5947 () Bool)

(assert (=> b!27763 (= e!14213 (and tp!5946 tp!5947))))

(declare-fun b!27764 () Bool)

(assert (=> b!27764 (= e!14213 tp_is_empty!171)))

(assert (=> b!27119 (= tp!5879 e!14213)))

(assert (= (and b!27119 (is-CC!62 (right!710 (left!707 (right!710 ys!77))))) b!27763))

(assert (= (and b!27119 (is-Single!62 (right!710 (left!707 (right!710 ys!77))))) b!27764))

(declare-fun b!27765 () Bool)

(declare-fun e!14214 () Bool)

(declare-fun tp!5948 () Bool)

(declare-fun tp!5949 () Bool)

(assert (=> b!27765 (= e!14214 (and tp!5948 tp!5949))))

(declare-fun b!27766 () Bool)

(assert (=> b!27766 (= e!14214 tp_is_empty!171)))

(assert (=> b!27123 (= tp!5882 e!14214)))

(assert (= (and b!27123 (is-CC!62 (left!707 (left!707 (right!710 res!5533))))) b!27765))

(assert (= (and b!27123 (is-Single!62 (left!707 (left!707 (right!710 res!5533))))) b!27766))

(declare-fun b!27767 () Bool)

(declare-fun e!14215 () Bool)

(declare-fun tp!5950 () Bool)

(declare-fun tp!5951 () Bool)

(assert (=> b!27767 (= e!14215 (and tp!5950 tp!5951))))

(declare-fun b!27768 () Bool)

(assert (=> b!27768 (= e!14215 tp_is_empty!171)))

(assert (=> b!27123 (= tp!5883 e!14215)))

(assert (= (and b!27123 (is-CC!62 (right!710 (left!707 (right!710 res!5533))))) b!27767))

(assert (= (and b!27123 (is-Single!62 (right!710 (left!707 (right!710 res!5533))))) b!27768))

(declare-fun b!27769 () Bool)

(declare-fun e!14216 () Bool)

(declare-fun tp!5952 () Bool)

(declare-fun tp!5953 () Bool)

(assert (=> b!27769 (= e!14216 (and tp!5952 tp!5953))))

(declare-fun b!27770 () Bool)

(assert (=> b!27770 (= e!14216 tp_is_empty!171)))

(assert (=> b!26914 (= tp!5865 e!14216)))

(assert (= (and b!26914 (is-CC!62 (left!707 res!12363))) b!27769))

(assert (= (and b!26914 (is-Single!62 (left!707 res!12363))) b!27770))

(declare-fun b!27771 () Bool)

(declare-fun e!14217 () Bool)

(declare-fun tp!5954 () Bool)

(declare-fun tp!5955 () Bool)

(assert (=> b!27771 (= e!14217 (and tp!5954 tp!5955))))

(declare-fun b!27772 () Bool)

(assert (=> b!27772 (= e!14217 tp_is_empty!171)))

(assert (=> b!26914 (= tp!5864 e!14217)))

(assert (= (and b!26914 (is-CC!62 (right!710 res!12363))) b!27771))

(assert (= (and b!26914 (is-Single!62 (right!710 res!12363))) b!27772))

(declare-fun b!27773 () Bool)

(declare-fun e!14218 () Bool)

(declare-fun tp!5956 () Bool)

(declare-fun tp!5957 () Bool)

(assert (=> b!27773 (= e!14218 (and tp!5956 tp!5957))))

(declare-fun b!27774 () Bool)

(assert (=> b!27774 (= e!14218 tp_is_empty!171)))

(assert (=> b!27111 (= tp!5870 e!14218)))

(assert (= (and b!27111 (is-CC!62 (left!707 (left!707 (left!707 ys!77))))) b!27773))

(assert (= (and b!27111 (is-Single!62 (left!707 (left!707 (left!707 ys!77))))) b!27774))

(declare-fun b!27775 () Bool)

(declare-fun e!14219 () Bool)

(declare-fun tp!5958 () Bool)

(declare-fun tp!5959 () Bool)

(assert (=> b!27775 (= e!14219 (and tp!5958 tp!5959))))

(declare-fun b!27776 () Bool)

(assert (=> b!27776 (= e!14219 tp_is_empty!171)))

(assert (=> b!27111 (= tp!5871 e!14219)))

(assert (= (and b!27111 (is-CC!62 (right!710 (left!707 (left!707 ys!77))))) b!27775))

(assert (= (and b!27111 (is-Single!62 (right!710 (left!707 (left!707 ys!77))))) b!27776))

(declare-fun b!27777 () Bool)

(declare-fun e!14220 () Bool)

(declare-fun tp!5960 () Bool)

(declare-fun tp!5961 () Bool)

(assert (=> b!27777 (= e!14220 (and tp!5960 tp!5961))))

(declare-fun b!27778 () Bool)

(assert (=> b!27778 (= e!14220 tp_is_empty!171)))

(assert (=> b!27131 (= tp!5890 e!14220)))

(assert (= (and b!27131 (is-CC!62 (left!707 (left!707 (right!710 xs!533))))) b!27777))

(assert (= (and b!27131 (is-Single!62 (left!707 (left!707 (right!710 xs!533))))) b!27778))

(declare-fun b!27779 () Bool)

(declare-fun e!14221 () Bool)

(declare-fun tp!5962 () Bool)

(declare-fun tp!5963 () Bool)

(assert (=> b!27779 (= e!14221 (and tp!5962 tp!5963))))

(declare-fun b!27780 () Bool)

(assert (=> b!27780 (= e!14221 tp_is_empty!171)))

(assert (=> b!27131 (= tp!5891 e!14221)))

(assert (= (and b!27131 (is-CC!62 (right!710 (left!707 (right!710 xs!533))))) b!27779))

(assert (= (and b!27131 (is-Single!62 (right!710 (left!707 (right!710 xs!533))))) b!27780))

(declare-fun b!27781 () Bool)

(declare-fun e!14222 () Bool)

(declare-fun tp!5964 () Bool)

(declare-fun tp!5965 () Bool)

(assert (=> b!27781 (= e!14222 (and tp!5964 tp!5965))))

(declare-fun b!27782 () Bool)

(assert (=> b!27782 (= e!14222 tp_is_empty!171)))

(assert (=> b!27137 (= tp!5896 e!14222)))

(assert (= (and b!27137 (is-CC!62 (left!707 (right!710 (left!707 nrr!4))))) b!27781))

(assert (= (and b!27137 (is-Single!62 (left!707 (right!710 (left!707 nrr!4))))) b!27782))

(declare-fun b!27783 () Bool)

(declare-fun e!14223 () Bool)

(declare-fun tp!5966 () Bool)

(declare-fun tp!5967 () Bool)

(assert (=> b!27783 (= e!14223 (and tp!5966 tp!5967))))

(declare-fun b!27784 () Bool)

(assert (=> b!27784 (= e!14223 tp_is_empty!171)))

(assert (=> b!27137 (= tp!5897 e!14223)))

(assert (= (and b!27137 (is-CC!62 (right!710 (right!710 (left!707 nrr!4))))) b!27783))

(assert (= (and b!27137 (is-Single!62 (right!710 (right!710 (left!707 nrr!4))))) b!27784))

(declare-fun b!27785 () Bool)

(declare-fun e!14224 () Bool)

(declare-fun tp!5968 () Bool)

(declare-fun tp!5969 () Bool)

(assert (=> b!27785 (= e!14224 (and tp!5968 tp!5969))))

(declare-fun b!27786 () Bool)

(assert (=> b!27786 (= e!14224 tp_is_empty!171)))

(assert (=> b!27113 (= tp!5872 e!14224)))

(assert (= (and b!27113 (is-CC!62 (left!707 (right!710 (left!707 ys!77))))) b!27785))

(assert (= (and b!27113 (is-Single!62 (left!707 (right!710 (left!707 ys!77))))) b!27786))

(declare-fun b!27787 () Bool)

(declare-fun e!14225 () Bool)

(declare-fun tp!5970 () Bool)

(declare-fun tp!5971 () Bool)

(assert (=> b!27787 (= e!14225 (and tp!5970 tp!5971))))

(declare-fun b!27788 () Bool)

(assert (=> b!27788 (= e!14225 tp_is_empty!171)))

(assert (=> b!27113 (= tp!5873 e!14225)))

(assert (= (and b!27113 (is-CC!62 (right!710 (right!710 (left!707 ys!77))))) b!27787))

(assert (= (and b!27113 (is-Single!62 (right!710 (right!710 (left!707 ys!77))))) b!27788))

(declare-fun b!27789 () Bool)

(declare-fun e!14226 () Bool)

(declare-fun tp!5972 () Bool)

(declare-fun tp!5973 () Bool)

(assert (=> b!27789 (= e!14226 (and tp!5972 tp!5973))))

(declare-fun b!27790 () Bool)

(assert (=> b!27790 (= e!14226 tp_is_empty!171)))

(assert (=> b!27115 (= tp!5874 e!14226)))

(assert (= (and b!27115 (is-CC!62 (left!707 (left!707 (left!707 res!5533))))) b!27789))

(assert (= (and b!27115 (is-Single!62 (left!707 (left!707 (left!707 res!5533))))) b!27790))

(declare-fun b!27791 () Bool)

(declare-fun e!14227 () Bool)

(declare-fun tp!5974 () Bool)

(declare-fun tp!5975 () Bool)

(assert (=> b!27791 (= e!14227 (and tp!5974 tp!5975))))

(declare-fun b!27792 () Bool)

(assert (=> b!27792 (= e!14227 tp_is_empty!171)))

(assert (=> b!27115 (= tp!5875 e!14227)))

(assert (= (and b!27115 (is-CC!62 (right!710 (left!707 (left!707 res!5533))))) b!27791))

(assert (= (and b!27115 (is-Single!62 (right!710 (left!707 (left!707 res!5533))))) b!27792))

(declare-fun b!27793 () Bool)

(declare-fun e!14228 () Bool)

(declare-fun tp!5976 () Bool)

(declare-fun tp!5977 () Bool)

(assert (=> b!27793 (= e!14228 (and tp!5976 tp!5977))))

(declare-fun b!27794 () Bool)

(assert (=> b!27794 (= e!14228 tp_is_empty!171)))

(assert (=> b!27125 (= tp!5884 e!14228)))

(assert (= (and b!27125 (is-CC!62 (left!707 (right!710 (right!710 res!5533))))) b!27793))

(assert (= (and b!27125 (is-Single!62 (left!707 (right!710 (right!710 res!5533))))) b!27794))

(declare-fun b!27795 () Bool)

(declare-fun e!14229 () Bool)

(declare-fun tp!5978 () Bool)

(declare-fun tp!5979 () Bool)

(assert (=> b!27795 (= e!14229 (and tp!5978 tp!5979))))

(declare-fun b!27796 () Bool)

(assert (=> b!27796 (= e!14229 tp_is_empty!171)))

(assert (=> b!27125 (= tp!5885 e!14229)))

(assert (= (and b!27125 (is-CC!62 (right!710 (right!710 (right!710 res!5533))))) b!27795))

(assert (= (and b!27125 (is-Single!62 (right!710 (right!710 (right!710 res!5533))))) b!27796))

(push 1)

(assert (not b!27735))

(assert (not d!14461))

(assert (not b!27453))

(assert (not b!27250))

(assert (not d!14661))

(assert (not b!27264))

(assert (not b!27550))

(assert (not d!14489))

(assert (not b!27230))

(assert (not b!27490))

(assert (not b!27456))

(assert (not b!27783))

(assert (not b!27559))

(assert (not b!27466))

(assert (not d!14539))

(assert (not d!14639))

(assert (not b!27607))

(assert (not b!27275))

(assert (not b!27410))

(assert (not d!14705))

(assert (not b!27581))

(assert (not b!27224))

(assert (not b!27391))

(assert (not b!27356))

(assert (not b!27316))

(assert (not b!27225))

(assert (not b!27686))

(assert (not b!27160))

(assert (not b!27572))

(assert (not b!27641))

(assert (not b!27441))

(assert (not b!27591))

(assert (not b!27741))

(assert (not b!27473))

(assert (not d!14577))

(assert (not b!27632))

(assert (not b!27467))

(assert (not b!27682))

(assert (not b!27634))

(assert (not b!27406))

(assert (not b!27188))

(assert (not d!14413))

(assert (not b!27504))

(assert (not b!27516))

(assert (not b!27519))

(assert (not b!27148))

(assert (not b!27351))

(assert (not b!27317))

(assert (not b!27294))

(assert (not b!27486))

(assert (not b!27619))

(assert (not b!27702))

(assert (not b!27450))

(assert (not b!27705))

(assert (not b!27261))

(assert (not b!27483))

(assert (not b!27773))

(assert (not b!27446))

(assert (not b!27689))

(assert (not b!27382))

(assert (not b!27592))

(assert (not b!27733))

(assert (not b!27331))

(assert (not b!27777))

(assert (not b!27304))

(assert (not b!27346))

(assert (not b!27174))

(assert (not b!27247))

(assert (not b!27618))

(assert (not b!27791))

(assert (not b!27601))

(assert (not b!27226))

(assert (not b!27254))

(assert (not b!27673))

(assert (not b!27725))

(assert (not b!27479))

(assert (not b!27455))

(assert (not b!27326))

(assert (not d!14527))

(assert (not b!27364))

(assert (not b!27166))

(assert (not d!14395))

(assert (not b!27353))

(assert (not b!27636))

(assert (not b!27266))

(assert (not b!27472))

(assert (not b!27209))

(assert (not b!27196))

(assert (not b!27759))

(assert (not b!27654))

(assert (not b!27771))

(assert (not d!14579))

(assert (not d!14397))

(assert (not b!27672))

(assert (not b!27571))

(assert (not b!27330))

(assert (not b!27795))

(assert (not b!27588))

(assert (not b!27357))

(assert (not b!27233))

(assert (not b!27598))

(assert (not b!27589))

(assert (not d!14409))

(assert (not b!27360))

(assert tp_is_empty!171)

(assert (not d!14709))

(assert (not b!27616))

(assert (not b!27263))

(assert (not b!27540))

(assert (not b!27244))

(assert (not b!27271))

(assert (not b!27580))

(assert (not b!27638))

(assert (not b!27408))

(assert (not b!27500))

(assert (not b!27498))

(assert (not b!27677))

(assert (not d!14465))

(assert (not b!27503))

(assert (not b!27172))

(assert (not b!27220))

(assert (not b!27177))

(assert (not b!27533))

(assert (not b!27684))

(assert (not b!27217))

(assert (not b!27763))

(assert (not b!27282))

(assert (not b!27586))

(assert (not b!27193))

(assert (not b!27757))

(assert (not d!14685))

(assert (not b!27458))

(assert (not b!27161))

(assert (not d!14659))

(assert (not b!27312))

(assert (not b!27314))

(assert (not b!27674))

(assert (not b!27432))

(assert (not b!27604))

(assert (not b!27485))

(assert (not b!27371))

(assert (not b!27478))

(assert (not b!27709))

(assert (not d!14743))

(assert (not b!27452))

(assert (not b!27376))

(assert (not b!27348))

(assert (not d!14525))

(assert (not b!27513))

(assert (not b!27624))

(assert (not b!27434))

(assert (not b!27729))

(assert (not b!27655))

(assert (not b!27482))

(assert (not b!27480))

(assert (not b!27713))

(assert (not b!27509))

(assert (not b!27493))

(assert (not b!27222))

(assert (not d!14411))

(assert (not b!27295))

(assert (not b!27306))

(assert (not b!27716))

(assert (not b!27237))

(assert (not b!27290))

(assert (not b!27242))

(assert (not b!27248))

(assert (not b!27737))

(assert (not b!27358))

(assert (not b!27599))

(assert (not b!27613))

(assert (not b!27675))

(assert (not b!27240))

(assert (not b!27650))

(assert (not b!27528))

(assert (not b!27216))

(assert (not b!27789))

(assert (not b!27575))

(assert (not b!27633))

(assert (not b!27424))

(assert (not b!27577))

(assert (not b!27548))

(assert (not b!27476))

(assert (not b!27676))

(assert (not b!27723))

(assert (not b!27387))

(assert (not b!27643))

(assert (not b!27420))

(assert (not b!27739))

(assert (not b!27300))

(assert (not b!27749))

(assert (not b!27615))

(assert (not b!27189))

(assert (not b!27751))

(assert (not b!27378))

(assert (not b!27646))

(assert (not b!27603))

(assert (not b!27527))

(assert (not b!27484))

(assert (not b!27349))

(assert (not b!27368))

(assert (not b!27538))

(assert (not b!27666))

(assert (not b!27743))

(assert (not b!27491))

(assert (not b!27564))

(assert (not d!14683))

(assert (not b!27329))

(assert (not b!27605))

(assert (not b!27184))

(assert (not b!27323))

(assert (not b!27523))

(assert (not d!14587))

(assert (not b!27288))

(assert (not b!27200))

(assert (not b!27539))

(assert (not b!27549))

(assert (not b!27404))

(assert (not b!27181))

(assert (not b!27793))

(assert (not d!14529))

(assert (not b!27765))

(assert (not b!27769))

(assert (not b!27390))

(assert (not b!27245))

(assert (not b!27680))

(assert (not b!27324))

(assert (not d!14653))

(assert (not b!27753))

(assert (not b!27332))

(assert (not b!27279))

(assert (not b!27164))

(assert (not d!14391))

(assert (not b!27350))

(assert (not b!27521))

(assert (not d!14591))

(assert (not b!27685))

(assert (not b!27775))

(assert (not b!27553))

(assert (not b!27668))

(assert (not b!27508))

(assert (not b!27340))

(assert (not b!27236))

(assert (not b!27426))

(assert (not b!27412))

(assert (not b!27505))

(assert (not b!27176))

(assert (not b!27430))

(assert (not b!27359))

(assert (not b!27731))

(assert (not b!27525))

(assert (not b!27228))

(assert (not b!27231))

(assert (not b!27596))

(assert (not b!27489))

(assert (not b!27475))

(assert (not b!27639))

(assert (not b!27648))

(assert (not b!27565))

(assert (not b!27585))

(assert (not b!27246))

(assert (not b!27635))

(assert (not b!27380))

(assert (not b!27602))

(assert (not b!27402))

(assert (not b!27265))

(assert (not b!27583))

(assert (not b!27669))

(assert (not b!27551))

(assert (not b!27459))

(assert (not d!14741))

(assert (not b!27469))

(assert (not b!27704))

(assert (not d!14473))

(assert (not b!27761))

(assert (not b!27514))

(assert (not b!27582))

(assert (not b!27198))

(assert (not b!27573))

(assert (not b!27470))

(assert (not b!27395))

(assert (not b!27180))

(assert (not b!27610))

(assert (not b!27438))

(assert (not b!27502))

(assert (not d!14637))

(assert (not b!27692))

(assert (not b!27170))

(assert (not b!27354))

(assert (not b!27720))

(assert (not b!27386))

(assert (not b!27496))

(assert (not b!27518))

(assert (not d!14467))

(assert (not b!27223))

(assert (not b!27664))

(assert (not b!27708))

(assert (not b!27570))

(assert (not d!14581))

(assert (not b!27411))

(assert (not b!27205))

(assert (not b!27394))

(assert (not b!27593))

(assert (not b!27543))

(assert (not b!27541))

(assert (not b!27747))

(assert (not b!27311))

(assert (not b!27234))

(assert (not b!27212))

(assert (not d!14713))

(assert (not b!27712))

(assert (not b!27270))

(assert (not b!27178))

(assert (not b!27338))

(assert (not d!14537))

(assert (not b!27379))

(assert (not b!27268))

(assert (not b!27232))

(assert (not b!27594))

(assert (not b!27321))

(assert (not b!27252))

(assert (not b!27313))

(assert (not b!27690))

(assert (not d!14635))

(assert (not b!27342))

(assert (not b!27204))

(assert (not b!27683))

(assert (not b!27579))

(assert (not b!27563))

(assert (not b!27703))

(assert (not b!27687))

(assert (not b!27451))

(assert (not b!27481))

(assert (not d!14463))

(assert (not d!14541))

(assert (not b!27258))

(assert (not b!27370))

(assert (not b!27584))

(assert (not b!27787))

(assert (not b!27637))

(assert (not b!27671))

(assert (not b!27202))

(assert (not b!27414))

(assert (not b!27665))

(assert (not b!27554))

(assert (not b!27721))

(assert (not b!27606))

(assert (not b!27755))

(assert (not b!27547))

(assert (not b!27628))

(assert (not b!27431))

(assert (not b!27274))

(assert (not b!27600))

(assert (not b!27727))

(assert (not b!27510))

(assert (not b!27272))

(assert (not b!27413))

(assert (not d!14415))

(assert (not d!14393))

(assert (not d!14657))

(assert (not b!27422))

(assert (not d!14593))

(assert (not b!27517))

(assert (not b!27660))

(assert (not d!14543))

(assert (not b!27239))

(assert (not d!14597))

(assert (not b!27608))

(assert (not b!27292))

(assert (not d!14649))

(assert (not b!27488))

(assert (not b!27355))

(assert (not b!27781))

(assert (not b!27569))

(assert (not b!27492))

(assert (not b!27640))

(assert (not b!27454))

(assert (not b!27745))

(assert (not b!27644))

(assert (not b!27328))

(assert (not b!27416))

(assert (not b!27336))

(assert (not d!14451))

(assert (not b!27678))

(assert (not b!27520))

(assert (not b!27320))

(assert (not b!27185))

(assert (not b!27163))

(assert (not b!27440))

(assert (not b!27706))

(assert (not b!27310))

(assert (not b!27785))

(assert (not b!27630))

(assert (not b!27767))

(assert (not b!27681))

(assert (not d!14477))

(assert (not b!27679))

(assert (not b!27162))

(assert (not b!27698))

(assert (not b!27315))

(assert (not b!27779))

(assert (not d!14681))

(assert (not b!27429))

(assert (not d!14707))

(assert (not b!27213))

(assert (not b!27477))

(assert (not d!14651))

(assert (not b!27334))

(assert (not b!27463))

(assert (not b!27278))

(assert (not b!27428))

(assert (not b!27688))

(assert (not b!27192))

(assert (not b!27352))

(assert (not b!27515))

(assert (not d!14531))

(assert (not b!27696))

(assert (not d!14431))

(assert (not d!14475))

(assert (not b!27494))

(assert (not b!27347))

(assert (not b!27208))

(assert (not b!27506))

(assert (not b!27614))

(assert (not b!27462))

(assert (not b!27487))

(assert (not b!27642))

(assert (not b!27260))

(assert (not b!27652))

(assert (not b!27612))

(assert (not b!27537))

(assert (not b!27383))

(assert (not b!27283))

(assert (not b!27318))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


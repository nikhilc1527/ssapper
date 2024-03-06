; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3830 () Bool)

(assert start!3830)

(declare-fun res!11610 () Bool)

(declare-fun e!13182 () Bool)

(assert (=> start!3830 (=> (not res!11610) (not e!13182))))

(declare-datatypes () ((T!1821 (T!1822 (val!83 Int)))))

(declare-datatypes () ((Conc!60 (CC!59 (left!704 Conc!60) (right!707 Conc!60)) (Single!59 (x!8905 T!1821)) (Empty!70))))

(declare-fun xs!533 () Conc!60)

(declare-fun concInv!54 (Conc!60) Bool)

(assert (=> start!3830 (= res!11610 (concInv!54 xs!533))))

(assert (=> start!3830 e!13182))

(assert (=> start!3830 true))

(declare-fun e!13179 () Bool)

(assert (=> start!3830 e!13179))

(declare-fun e!13181 () Bool)

(assert (=> start!3830 e!13181))

(declare-fun e!13180 () Bool)

(assert (=> start!3830 e!13180))

(declare-fun e!13178 () Bool)

(assert (=> start!3830 e!13178))

(declare-fun b!25654 () Bool)

(declare-fun res!11605 () Bool)

(assert (=> b!25654 (=> (not res!11605) (not e!13182))))

(declare-fun ys!77 () Conc!60)

(assert (=> b!25654 (= res!11605 (concInv!54 ys!77))))

(declare-fun b!25655 () Bool)

(declare-fun res!11613 () Bool)

(declare-fun e!13177 () Bool)

(assert (=> b!25655 (=> res!11613 e!13177)))

(declare-fun xs!560 () Conc!60)

(declare-fun isEmpty!316 (Conc!60) Bool)

(assert (=> b!25655 (= res!11613 (isEmpty!316 xs!560))))

(declare-fun b!25656 () Bool)

(declare-fun res!11612 () Bool)

(assert (=> b!25656 (=> (not res!11612) (not e!13182))))

(assert (=> b!25656 (= res!11612 (not (isEmpty!316 ys!77)))))

(declare-fun b!25657 () Bool)

(declare-fun res!11611 () Bool)

(assert (=> b!25657 (=> (not res!11611) (not e!13182))))

(declare-fun diff!6 () Int)

(assert (=> b!25657 (= res!11611 (and (or (< diff!6 (- 1)) (> diff!6 1)) (>= diff!6 (- 1))))))

(declare-fun b!25658 () Bool)

(declare-fun res!11619 () Bool)

(assert (=> b!25658 (=> res!11619 e!13177)))

(declare-fun balanced!55 (Conc!60) Bool)

(assert (=> b!25658 (= res!11619 (not (balanced!55 xs!560)))))

(declare-fun b!25659 () Bool)

(declare-fun tp!5629 () Bool)

(declare-fun tp!5628 () Bool)

(assert (=> b!25659 (= e!13181 (and tp!5629 tp!5628))))

(declare-fun b!25660 () Bool)

(declare-fun tp!5633 () Bool)

(declare-fun tp!5631 () Bool)

(assert (=> b!25660 (= e!13180 (and tp!5633 tp!5631))))

(declare-fun b!25661 () Bool)

(declare-fun res!11615 () Bool)

(assert (=> b!25661 (=> (not res!11615) (not e!13182))))

(assert (=> b!25661 (= res!11615 (balanced!55 xs!533))))

(declare-fun b!25662 () Bool)

(declare-fun ys!104 () Conc!60)

(assert (=> b!25662 (= e!13177 (isEmpty!316 ys!104))))

(declare-fun b!25663 () Bool)

(declare-fun res!11618 () Bool)

(assert (=> b!25663 (=> (not res!11618) (not e!13182))))

(declare-fun level!48 (Conc!60) Int)

(assert (=> b!25663 (= res!11618 (= diff!6 (- (level!48 ys!77) (level!48 xs!533))))))

(declare-fun b!25664 () Bool)

(declare-fun tp_is_empty!165 () Bool)

(assert (=> b!25664 (= e!13180 tp_is_empty!165)))

(declare-fun b!25665 () Bool)

(declare-fun tp!5626 () Bool)

(declare-fun tp!5630 () Bool)

(assert (=> b!25665 (= e!13179 (and tp!5626 tp!5630))))

(declare-fun b!25666 () Bool)

(declare-fun res!11616 () Bool)

(assert (=> b!25666 (=> (not res!11616) (not e!13182))))

(assert (=> b!25666 (= res!11616 (not (isEmpty!316 xs!533)))))

(declare-fun b!25667 () Bool)

(assert (=> b!25667 (= e!13178 tp_is_empty!165)))

(declare-fun b!25668 () Bool)

(declare-fun tp!5627 () Bool)

(declare-fun tp!5632 () Bool)

(assert (=> b!25668 (= e!13178 (and tp!5627 tp!5632))))

(declare-fun b!25669 () Bool)

(declare-fun res!11617 () Bool)

(assert (=> b!25669 (=> (not res!11617) (not e!13182))))

(assert (=> b!25669 (= res!11617 (and (= xs!560 xs!533) (= ys!104 (left!704 (left!704 ys!77)))))))

(declare-fun b!25670 () Bool)

(assert (=> b!25670 (= e!13179 tp_is_empty!165)))

(declare-fun b!25671 () Bool)

(declare-fun res!11608 () Bool)

(assert (=> b!25671 (=> (not res!11608) (not e!13182))))

(assert (=> b!25671 (= res!11608 (< (level!48 (right!707 ys!77)) (level!48 (left!704 ys!77))))))

(declare-fun b!25672 () Bool)

(declare-fun res!11609 () Bool)

(assert (=> b!25672 (=> res!11609 e!13177)))

(assert (=> b!25672 (= res!11609 (not (balanced!55 ys!104)))))

(declare-fun b!25673 () Bool)

(declare-fun res!11606 () Bool)

(assert (=> b!25673 (=> res!11606 e!13177)))

(assert (=> b!25673 (= res!11606 (not (concInv!54 ys!104)))))

(declare-fun b!25674 () Bool)

(assert (=> b!25674 (= e!13182 e!13177)))

(declare-fun res!11607 () Bool)

(assert (=> b!25674 (=> res!11607 e!13177)))

(assert (=> b!25674 (= res!11607 (not (concInv!54 xs!560)))))

(declare-fun b!25675 () Bool)

(declare-fun res!11614 () Bool)

(assert (=> b!25675 (=> (not res!11614) (not e!13182))))

(assert (=> b!25675 (= res!11614 (balanced!55 ys!77))))

(declare-fun b!25676 () Bool)

(assert (=> b!25676 (= e!13181 tp_is_empty!165)))

(assert (= (and start!3830 res!11610) b!25661))

(assert (= (and b!25661 res!11615) b!25654))

(assert (= (and b!25654 res!11605) b!25675))

(assert (= (and b!25675 res!11614) b!25666))

(assert (= (and b!25666 res!11616) b!25656))

(assert (= (and b!25656 res!11612) b!25663))

(assert (= (and b!25663 res!11618) b!25657))

(assert (= (and b!25657 res!11611) b!25671))

(assert (= (and b!25671 res!11608) b!25669))

(assert (= (and b!25669 res!11617) b!25674))

(assert (= (and b!25674 (not res!11607)) b!25658))

(assert (= (and b!25658 (not res!11619)) b!25673))

(assert (= (and b!25673 (not res!11606)) b!25672))

(assert (= (and b!25672 (not res!11609)) b!25655))

(assert (= (and b!25655 (not res!11613)) b!25662))

(assert (= (and start!3830 (is-CC!59 xs!560)) b!25665))

(assert (= (and start!3830 (is-Single!59 xs!560)) b!25670))

(assert (= (and start!3830 (is-CC!59 ys!104)) b!25659))

(assert (= (and start!3830 (is-Single!59 ys!104)) b!25676))

(assert (= (and start!3830 (is-CC!59 ys!77)) b!25660))

(assert (= (and start!3830 (is-Single!59 ys!77)) b!25664))

(assert (= (and start!3830 (is-CC!59 xs!533)) b!25668))

(assert (= (and start!3830 (is-Single!59 xs!533)) b!25667))

(declare-fun m!26579 () Bool)

(assert (=> b!25666 m!26579))

(declare-fun m!26581 () Bool)

(assert (=> b!25671 m!26581))

(declare-fun m!26583 () Bool)

(assert (=> b!25671 m!26583))

(declare-fun m!26585 () Bool)

(assert (=> start!3830 m!26585))

(declare-fun m!26587 () Bool)

(assert (=> b!25658 m!26587))

(declare-fun m!26589 () Bool)

(assert (=> b!25655 m!26589))

(declare-fun m!26591 () Bool)

(assert (=> b!25656 m!26591))

(declare-fun m!26593 () Bool)

(assert (=> b!25674 m!26593))

(declare-fun m!26595 () Bool)

(assert (=> b!25662 m!26595))

(declare-fun m!26597 () Bool)

(assert (=> b!25663 m!26597))

(declare-fun m!26599 () Bool)

(assert (=> b!25663 m!26599))

(declare-fun m!26601 () Bool)

(assert (=> b!25654 m!26601))

(declare-fun m!26603 () Bool)

(assert (=> b!25661 m!26603))

(declare-fun m!26605 () Bool)

(assert (=> b!25672 m!26605))

(declare-fun m!26607 () Bool)

(assert (=> b!25675 m!26607))

(declare-fun m!26609 () Bool)

(assert (=> b!25673 m!26609))

(push 1)

(assert (not b!25674))

(assert (not b!25668))

(assert (not b!25666))

(assert (not b!25673))

(assert (not b!25663))

(assert (not b!25656))

(assert (not b!25671))

(assert (not b!25660))

(assert (not b!25655))

(assert (not b!25665))

(assert (not b!25659))

(assert (not b!25658))

(assert (not b!25675))

(assert tp_is_empty!165)

(assert (not b!25661))

(assert (not b!25672))

(assert (not b!25662))

(assert (not b!25654))

(assert (not start!3830))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!25687 () Bool)

(declare-fun res!11630 () Bool)

(declare-fun e!13187 () Bool)

(assert (=> b!25687 (=> (not res!11630) (not e!13187))))

(assert (=> b!25687 (= res!11630 (concInv!54 (left!704 xs!560)))))

(declare-fun b!25686 () Bool)

(declare-fun res!11631 () Bool)

(assert (=> b!25686 (=> (not res!11631) (not e!13187))))

(assert (=> b!25686 (= res!11631 (not (isEmpty!316 (right!707 xs!560))))))

(declare-fun b!25688 () Bool)

(assert (=> b!25688 (= e!13187 (concInv!54 (right!707 xs!560)))))

(declare-fun d!13857 () Bool)

(declare-fun res!11628 () Bool)

(declare-fun e!13188 () Bool)

(assert (=> d!13857 (=> res!11628 e!13188)))

(assert (=> d!13857 (= res!11628 (not (is-CC!59 xs!560)))))

(assert (=> d!13857 (= (concInv!54 xs!560) e!13188)))

(declare-fun b!25685 () Bool)

(assert (=> b!25685 (= e!13188 e!13187)))

(declare-fun res!11629 () Bool)

(assert (=> b!25685 (=> (not res!11629) (not e!13187))))

(assert (=> b!25685 (= res!11629 (not (isEmpty!316 (left!704 xs!560))))))

(assert (= (and d!13857 (not res!11628)) b!25685))

(assert (= (and b!25685 res!11629) b!25686))

(assert (= (and b!25686 res!11631) b!25687))

(assert (= (and b!25687 res!11630) b!25688))

(declare-fun m!26611 () Bool)

(assert (=> b!25687 m!26611))

(declare-fun m!26613 () Bool)

(assert (=> b!25686 m!26613))

(declare-fun m!26615 () Bool)

(assert (=> b!25688 m!26615))

(declare-fun m!26617 () Bool)

(assert (=> b!25685 m!26617))

(assert (=> b!25674 d!13857))

(declare-fun d!13859 () Bool)

(assert (=> d!13859 (= (isEmpty!316 xs!533) (= xs!533 Empty!70))))

(assert (=> b!25666 d!13859))

(declare-fun b!25691 () Bool)

(declare-fun res!11634 () Bool)

(declare-fun e!13189 () Bool)

(assert (=> b!25691 (=> (not res!11634) (not e!13189))))

(assert (=> b!25691 (= res!11634 (concInv!54 (left!704 ys!104)))))

(declare-fun b!25690 () Bool)

(declare-fun res!11635 () Bool)

(assert (=> b!25690 (=> (not res!11635) (not e!13189))))

(assert (=> b!25690 (= res!11635 (not (isEmpty!316 (right!707 ys!104))))))

(declare-fun b!25692 () Bool)

(assert (=> b!25692 (= e!13189 (concInv!54 (right!707 ys!104)))))

(declare-fun d!13861 () Bool)

(declare-fun res!11632 () Bool)

(declare-fun e!13190 () Bool)

(assert (=> d!13861 (=> res!11632 e!13190)))

(assert (=> d!13861 (= res!11632 (not (is-CC!59 ys!104)))))

(assert (=> d!13861 (= (concInv!54 ys!104) e!13190)))

(declare-fun b!25689 () Bool)

(assert (=> b!25689 (= e!13190 e!13189)))

(declare-fun res!11633 () Bool)

(assert (=> b!25689 (=> (not res!11633) (not e!13189))))

(assert (=> b!25689 (= res!11633 (not (isEmpty!316 (left!704 ys!104))))))

(assert (= (and d!13861 (not res!11632)) b!25689))

(assert (= (and b!25689 res!11633) b!25690))

(assert (= (and b!25690 res!11635) b!25691))

(assert (= (and b!25691 res!11634) b!25692))

(declare-fun m!26619 () Bool)

(assert (=> b!25691 m!26619))

(declare-fun m!26621 () Bool)

(assert (=> b!25690 m!26621))

(declare-fun m!26623 () Bool)

(assert (=> b!25692 m!26623))

(declare-fun m!26625 () Bool)

(assert (=> b!25689 m!26625))

(assert (=> b!25673 d!13861))

(declare-fun b!25695 () Bool)

(declare-fun res!11638 () Bool)

(declare-fun e!13191 () Bool)

(assert (=> b!25695 (=> (not res!11638) (not e!13191))))

(assert (=> b!25695 (= res!11638 (concInv!54 (left!704 xs!533)))))

(declare-fun b!25694 () Bool)

(declare-fun res!11639 () Bool)

(assert (=> b!25694 (=> (not res!11639) (not e!13191))))

(assert (=> b!25694 (= res!11639 (not (isEmpty!316 (right!707 xs!533))))))

(declare-fun b!25696 () Bool)

(assert (=> b!25696 (= e!13191 (concInv!54 (right!707 xs!533)))))

(declare-fun d!13863 () Bool)

(declare-fun res!11636 () Bool)

(declare-fun e!13192 () Bool)

(assert (=> d!13863 (=> res!11636 e!13192)))

(assert (=> d!13863 (= res!11636 (not (is-CC!59 xs!533)))))

(assert (=> d!13863 (= (concInv!54 xs!533) e!13192)))

(declare-fun b!25693 () Bool)

(assert (=> b!25693 (= e!13192 e!13191)))

(declare-fun res!11637 () Bool)

(assert (=> b!25693 (=> (not res!11637) (not e!13191))))

(assert (=> b!25693 (= res!11637 (not (isEmpty!316 (left!704 xs!533))))))

(assert (= (and d!13863 (not res!11636)) b!25693))

(assert (= (and b!25693 res!11637) b!25694))

(assert (= (and b!25694 res!11639) b!25695))

(assert (= (and b!25695 res!11638) b!25696))

(declare-fun m!26627 () Bool)

(assert (=> b!25695 m!26627))

(declare-fun m!26629 () Bool)

(assert (=> b!25694 m!26629))

(declare-fun m!26631 () Bool)

(assert (=> b!25696 m!26631))

(declare-fun m!26633 () Bool)

(assert (=> b!25693 m!26633))

(assert (=> start!3830 d!13863))

(declare-fun b!25702 () Bool)

(declare-fun e!13195 () Int)

(declare-fun lt!4043 () Int)

(declare-fun lt!4042 () Int)

(assert (=> b!25702 (= e!13195 (+ 1 (ite (>= lt!4043 lt!4042) lt!4043 lt!4042)))))

(assert (=> b!25702 (= lt!4042 (level!48 (right!707 ys!77)))))

(assert (=> b!25702 (= lt!4043 (level!48 (left!704 ys!77)))))

(declare-fun d!13865 () Bool)

(declare-fun lt!4044 () Int)

(assert (=> d!13865 (>= lt!4044 0)))

(assert (=> d!13865 (= lt!4044 e!13195)))

(declare-fun c!5734 () Bool)

(assert (=> d!13865 (= c!5734 (or (is-Empty!70 ys!77) (is-Single!59 ys!77)))))

(assert (=> d!13865 (= (level!48 ys!77) lt!4044)))

(declare-fun b!25701 () Bool)

(assert (=> b!25701 (= e!13195 0)))

(assert (= (and d!13865 c!5734) b!25701))

(assert (= (and d!13865 (not c!5734)) b!25702))

(assert (=> b!25702 m!26581))

(assert (=> b!25702 m!26583))

(assert (=> b!25663 d!13865))

(declare-fun b!25704 () Bool)

(declare-fun e!13196 () Int)

(declare-fun lt!4046 () Int)

(declare-fun lt!4045 () Int)

(assert (=> b!25704 (= e!13196 (+ 1 (ite (>= lt!4046 lt!4045) lt!4046 lt!4045)))))

(assert (=> b!25704 (= lt!4045 (level!48 (right!707 xs!533)))))

(assert (=> b!25704 (= lt!4046 (level!48 (left!704 xs!533)))))

(declare-fun d!13867 () Bool)

(declare-fun lt!4047 () Int)

(assert (=> d!13867 (>= lt!4047 0)))

(assert (=> d!13867 (= lt!4047 e!13196)))

(declare-fun c!5735 () Bool)

(assert (=> d!13867 (= c!5735 (or (is-Empty!70 xs!533) (is-Single!59 xs!533)))))

(assert (=> d!13867 (= (level!48 xs!533) lt!4047)))

(declare-fun b!25703 () Bool)

(assert (=> b!25703 (= e!13196 0)))

(assert (= (and d!13867 c!5735) b!25703))

(assert (= (and d!13867 (not c!5735)) b!25704))

(declare-fun m!26635 () Bool)

(assert (=> b!25704 m!26635))

(declare-fun m!26637 () Bool)

(assert (=> b!25704 m!26637))

(assert (=> b!25663 d!13867))

(declare-fun d!13869 () Bool)

(declare-fun res!11649 () Bool)

(declare-fun e!13201 () Bool)

(assert (=> d!13869 (=> res!11649 e!13201)))

(assert (=> d!13869 (= res!11649 (not (is-CC!59 xs!560)))))

(assert (=> d!13869 (= (balanced!55 xs!560) e!13201)))

(declare-fun b!25713 () Bool)

(declare-fun e!13202 () Bool)

(assert (=> b!25713 (= e!13201 e!13202)))

(declare-fun res!11650 () Bool)

(assert (=> b!25713 (=> (not res!11650) (not e!13202))))

(assert (=> b!25713 (= res!11650 (>= (- (level!48 (left!704 xs!560)) (level!48 (right!707 xs!560))) (- 1)))))

(declare-fun b!25714 () Bool)

(declare-fun res!11651 () Bool)

(assert (=> b!25714 (=> (not res!11651) (not e!13202))))

(assert (=> b!25714 (= res!11651 (<= (- (level!48 (left!704 xs!560)) (level!48 (right!707 xs!560))) 1))))

(declare-fun b!25715 () Bool)

(declare-fun res!11648 () Bool)

(assert (=> b!25715 (=> (not res!11648) (not e!13202))))

(assert (=> b!25715 (= res!11648 (balanced!55 (left!704 xs!560)))))

(declare-fun b!25716 () Bool)

(assert (=> b!25716 (= e!13202 (balanced!55 (right!707 xs!560)))))

(assert (= (and d!13869 (not res!11649)) b!25713))

(assert (= (and b!25713 res!11650) b!25714))

(assert (= (and b!25714 res!11651) b!25715))

(assert (= (and b!25715 res!11648) b!25716))

(declare-fun m!26639 () Bool)

(assert (=> b!25713 m!26639))

(declare-fun m!26641 () Bool)

(assert (=> b!25713 m!26641))

(assert (=> b!25714 m!26639))

(assert (=> b!25714 m!26641))

(declare-fun m!26643 () Bool)

(assert (=> b!25715 m!26643))

(declare-fun m!26645 () Bool)

(assert (=> b!25716 m!26645))

(assert (=> b!25658 d!13869))

(declare-fun d!13871 () Bool)

(assert (=> d!13871 (= (isEmpty!316 xs!560) (= xs!560 Empty!70))))

(assert (=> b!25655 d!13871))

(declare-fun d!13873 () Bool)

(declare-fun res!11653 () Bool)

(declare-fun e!13203 () Bool)

(assert (=> d!13873 (=> res!11653 e!13203)))

(assert (=> d!13873 (= res!11653 (not (is-CC!59 ys!104)))))

(assert (=> d!13873 (= (balanced!55 ys!104) e!13203)))

(declare-fun b!25717 () Bool)

(declare-fun e!13204 () Bool)

(assert (=> b!25717 (= e!13203 e!13204)))

(declare-fun res!11654 () Bool)

(assert (=> b!25717 (=> (not res!11654) (not e!13204))))

(assert (=> b!25717 (= res!11654 (>= (- (level!48 (left!704 ys!104)) (level!48 (right!707 ys!104))) (- 1)))))

(declare-fun b!25718 () Bool)

(declare-fun res!11655 () Bool)

(assert (=> b!25718 (=> (not res!11655) (not e!13204))))

(assert (=> b!25718 (= res!11655 (<= (- (level!48 (left!704 ys!104)) (level!48 (right!707 ys!104))) 1))))

(declare-fun b!25719 () Bool)

(declare-fun res!11652 () Bool)

(assert (=> b!25719 (=> (not res!11652) (not e!13204))))

(assert (=> b!25719 (= res!11652 (balanced!55 (left!704 ys!104)))))

(declare-fun b!25720 () Bool)

(assert (=> b!25720 (= e!13204 (balanced!55 (right!707 ys!104)))))

(assert (= (and d!13873 (not res!11653)) b!25717))

(assert (= (and b!25717 res!11654) b!25718))

(assert (= (and b!25718 res!11655) b!25719))

(assert (= (and b!25719 res!11652) b!25720))

(declare-fun m!26647 () Bool)

(assert (=> b!25717 m!26647))

(declare-fun m!26649 () Bool)

(assert (=> b!25717 m!26649))

(assert (=> b!25718 m!26647))

(assert (=> b!25718 m!26649))

(declare-fun m!26651 () Bool)

(assert (=> b!25719 m!26651))

(declare-fun m!26653 () Bool)

(assert (=> b!25720 m!26653))

(assert (=> b!25672 d!13873))

(declare-fun d!13875 () Bool)

(declare-fun res!11657 () Bool)

(declare-fun e!13205 () Bool)

(assert (=> d!13875 (=> res!11657 e!13205)))

(assert (=> d!13875 (= res!11657 (not (is-CC!59 ys!77)))))

(assert (=> d!13875 (= (balanced!55 ys!77) e!13205)))

(declare-fun b!25721 () Bool)

(declare-fun e!13206 () Bool)

(assert (=> b!25721 (= e!13205 e!13206)))

(declare-fun res!11658 () Bool)

(assert (=> b!25721 (=> (not res!11658) (not e!13206))))

(assert (=> b!25721 (= res!11658 (>= (- (level!48 (left!704 ys!77)) (level!48 (right!707 ys!77))) (- 1)))))

(declare-fun b!25722 () Bool)

(declare-fun res!11659 () Bool)

(assert (=> b!25722 (=> (not res!11659) (not e!13206))))

(assert (=> b!25722 (= res!11659 (<= (- (level!48 (left!704 ys!77)) (level!48 (right!707 ys!77))) 1))))

(declare-fun b!25723 () Bool)

(declare-fun res!11656 () Bool)

(assert (=> b!25723 (=> (not res!11656) (not e!13206))))

(assert (=> b!25723 (= res!11656 (balanced!55 (left!704 ys!77)))))

(declare-fun b!25724 () Bool)

(assert (=> b!25724 (= e!13206 (balanced!55 (right!707 ys!77)))))

(assert (= (and d!13875 (not res!11657)) b!25721))

(assert (= (and b!25721 res!11658) b!25722))

(assert (= (and b!25722 res!11659) b!25723))

(assert (= (and b!25723 res!11656) b!25724))

(assert (=> b!25721 m!26583))

(assert (=> b!25721 m!26581))

(assert (=> b!25722 m!26583))

(assert (=> b!25722 m!26581))

(declare-fun m!26655 () Bool)

(assert (=> b!25723 m!26655))

(declare-fun m!26657 () Bool)

(assert (=> b!25724 m!26657))

(assert (=> b!25675 d!13875))

(declare-fun b!25726 () Bool)

(declare-fun e!13207 () Int)

(declare-fun lt!4049 () Int)

(declare-fun lt!4048 () Int)

(assert (=> b!25726 (= e!13207 (+ 1 (ite (>= lt!4049 lt!4048) lt!4049 lt!4048)))))

(assert (=> b!25726 (= lt!4048 (level!48 (right!707 (right!707 ys!77))))))

(assert (=> b!25726 (= lt!4049 (level!48 (left!704 (right!707 ys!77))))))

(declare-fun d!13877 () Bool)

(declare-fun lt!4050 () Int)

(assert (=> d!13877 (>= lt!4050 0)))

(assert (=> d!13877 (= lt!4050 e!13207)))

(declare-fun c!5736 () Bool)

(assert (=> d!13877 (= c!5736 (or (is-Empty!70 (right!707 ys!77)) (is-Single!59 (right!707 ys!77))))))

(assert (=> d!13877 (= (level!48 (right!707 ys!77)) lt!4050)))

(declare-fun b!25725 () Bool)

(assert (=> b!25725 (= e!13207 0)))

(assert (= (and d!13877 c!5736) b!25725))

(assert (= (and d!13877 (not c!5736)) b!25726))

(declare-fun m!26659 () Bool)

(assert (=> b!25726 m!26659))

(declare-fun m!26661 () Bool)

(assert (=> b!25726 m!26661))

(assert (=> b!25671 d!13877))

(declare-fun b!25728 () Bool)

(declare-fun e!13208 () Int)

(declare-fun lt!4052 () Int)

(declare-fun lt!4051 () Int)

(assert (=> b!25728 (= e!13208 (+ 1 (ite (>= lt!4052 lt!4051) lt!4052 lt!4051)))))

(assert (=> b!25728 (= lt!4051 (level!48 (right!707 (left!704 ys!77))))))

(assert (=> b!25728 (= lt!4052 (level!48 (left!704 (left!704 ys!77))))))

(declare-fun d!13879 () Bool)

(declare-fun lt!4053 () Int)

(assert (=> d!13879 (>= lt!4053 0)))

(assert (=> d!13879 (= lt!4053 e!13208)))

(declare-fun c!5737 () Bool)

(assert (=> d!13879 (= c!5737 (or (is-Empty!70 (left!704 ys!77)) (is-Single!59 (left!704 ys!77))))))

(assert (=> d!13879 (= (level!48 (left!704 ys!77)) lt!4053)))

(declare-fun b!25727 () Bool)

(assert (=> b!25727 (= e!13208 0)))

(assert (= (and d!13879 c!5737) b!25727))

(assert (= (and d!13879 (not c!5737)) b!25728))

(declare-fun m!26663 () Bool)

(assert (=> b!25728 m!26663))

(declare-fun m!26665 () Bool)

(assert (=> b!25728 m!26665))

(assert (=> b!25671 d!13879))

(declare-fun b!25731 () Bool)

(declare-fun res!11662 () Bool)

(declare-fun e!13209 () Bool)

(assert (=> b!25731 (=> (not res!11662) (not e!13209))))

(assert (=> b!25731 (= res!11662 (concInv!54 (left!704 ys!77)))))

(declare-fun b!25730 () Bool)

(declare-fun res!11663 () Bool)

(assert (=> b!25730 (=> (not res!11663) (not e!13209))))

(assert (=> b!25730 (= res!11663 (not (isEmpty!316 (right!707 ys!77))))))

(declare-fun b!25732 () Bool)

(assert (=> b!25732 (= e!13209 (concInv!54 (right!707 ys!77)))))

(declare-fun d!13881 () Bool)

(declare-fun res!11660 () Bool)

(declare-fun e!13210 () Bool)

(assert (=> d!13881 (=> res!11660 e!13210)))

(assert (=> d!13881 (= res!11660 (not (is-CC!59 ys!77)))))

(assert (=> d!13881 (= (concInv!54 ys!77) e!13210)))

(declare-fun b!25729 () Bool)

(assert (=> b!25729 (= e!13210 e!13209)))

(declare-fun res!11661 () Bool)

(assert (=> b!25729 (=> (not res!11661) (not e!13209))))

(assert (=> b!25729 (= res!11661 (not (isEmpty!316 (left!704 ys!77))))))

(assert (= (and d!13881 (not res!11660)) b!25729))

(assert (= (and b!25729 res!11661) b!25730))

(assert (= (and b!25730 res!11663) b!25731))

(assert (= (and b!25731 res!11662) b!25732))

(declare-fun m!26667 () Bool)

(assert (=> b!25731 m!26667))

(declare-fun m!26669 () Bool)

(assert (=> b!25730 m!26669))

(declare-fun m!26671 () Bool)

(assert (=> b!25732 m!26671))

(declare-fun m!26673 () Bool)

(assert (=> b!25729 m!26673))

(assert (=> b!25654 d!13881))

(declare-fun d!13883 () Bool)

(assert (=> d!13883 (= (isEmpty!316 ys!77) (= ys!77 Empty!70))))

(assert (=> b!25656 d!13883))

(declare-fun d!13885 () Bool)

(assert (=> d!13885 (= (isEmpty!316 ys!104) (= ys!104 Empty!70))))

(assert (=> b!25662 d!13885))

(declare-fun d!13887 () Bool)

(declare-fun res!11665 () Bool)

(declare-fun e!13211 () Bool)

(assert (=> d!13887 (=> res!11665 e!13211)))

(assert (=> d!13887 (= res!11665 (not (is-CC!59 xs!533)))))

(assert (=> d!13887 (= (balanced!55 xs!533) e!13211)))

(declare-fun b!25733 () Bool)

(declare-fun e!13212 () Bool)

(assert (=> b!25733 (= e!13211 e!13212)))

(declare-fun res!11666 () Bool)

(assert (=> b!25733 (=> (not res!11666) (not e!13212))))

(assert (=> b!25733 (= res!11666 (>= (- (level!48 (left!704 xs!533)) (level!48 (right!707 xs!533))) (- 1)))))

(declare-fun b!25734 () Bool)

(declare-fun res!11667 () Bool)

(assert (=> b!25734 (=> (not res!11667) (not e!13212))))

(assert (=> b!25734 (= res!11667 (<= (- (level!48 (left!704 xs!533)) (level!48 (right!707 xs!533))) 1))))

(declare-fun b!25735 () Bool)

(declare-fun res!11664 () Bool)

(assert (=> b!25735 (=> (not res!11664) (not e!13212))))

(assert (=> b!25735 (= res!11664 (balanced!55 (left!704 xs!533)))))

(declare-fun b!25736 () Bool)

(assert (=> b!25736 (= e!13212 (balanced!55 (right!707 xs!533)))))

(assert (= (and d!13887 (not res!11665)) b!25733))

(assert (= (and b!25733 res!11666) b!25734))

(assert (= (and b!25734 res!11667) b!25735))

(assert (= (and b!25735 res!11664) b!25736))

(assert (=> b!25733 m!26637))

(assert (=> b!25733 m!26635))

(assert (=> b!25734 m!26637))

(assert (=> b!25734 m!26635))

(declare-fun m!26675 () Bool)

(assert (=> b!25735 m!26675))

(declare-fun m!26677 () Bool)

(assert (=> b!25736 m!26677))

(assert (=> b!25661 d!13887))

(declare-fun b!25743 () Bool)

(declare-fun e!13215 () Bool)

(declare-fun tp!5638 () Bool)

(declare-fun tp!5639 () Bool)

(assert (=> b!25743 (= e!13215 (and tp!5638 tp!5639))))

(declare-fun b!25744 () Bool)

(assert (=> b!25744 (= e!13215 tp_is_empty!165)))

(assert (=> b!25660 (= tp!5633 e!13215)))

(assert (= (and b!25660 (is-CC!59 (left!704 ys!77))) b!25743))

(assert (= (and b!25660 (is-Single!59 (left!704 ys!77))) b!25744))

(declare-fun b!25745 () Bool)

(declare-fun e!13216 () Bool)

(declare-fun tp!5640 () Bool)

(declare-fun tp!5641 () Bool)

(assert (=> b!25745 (= e!13216 (and tp!5640 tp!5641))))

(declare-fun b!25746 () Bool)

(assert (=> b!25746 (= e!13216 tp_is_empty!165)))

(assert (=> b!25660 (= tp!5631 e!13216)))

(assert (= (and b!25660 (is-CC!59 (right!707 ys!77))) b!25745))

(assert (= (and b!25660 (is-Single!59 (right!707 ys!77))) b!25746))

(declare-fun b!25747 () Bool)

(declare-fun e!13217 () Bool)

(declare-fun tp!5642 () Bool)

(declare-fun tp!5643 () Bool)

(assert (=> b!25747 (= e!13217 (and tp!5642 tp!5643))))

(declare-fun b!25748 () Bool)

(assert (=> b!25748 (= e!13217 tp_is_empty!165)))

(assert (=> b!25665 (= tp!5626 e!13217)))

(assert (= (and b!25665 (is-CC!59 (left!704 xs!560))) b!25747))

(assert (= (and b!25665 (is-Single!59 (left!704 xs!560))) b!25748))

(declare-fun b!25749 () Bool)

(declare-fun e!13218 () Bool)

(declare-fun tp!5644 () Bool)

(declare-fun tp!5645 () Bool)

(assert (=> b!25749 (= e!13218 (and tp!5644 tp!5645))))

(declare-fun b!25750 () Bool)

(assert (=> b!25750 (= e!13218 tp_is_empty!165)))

(assert (=> b!25665 (= tp!5630 e!13218)))

(assert (= (and b!25665 (is-CC!59 (right!707 xs!560))) b!25749))

(assert (= (and b!25665 (is-Single!59 (right!707 xs!560))) b!25750))

(declare-fun b!25751 () Bool)

(declare-fun e!13219 () Bool)

(declare-fun tp!5646 () Bool)

(declare-fun tp!5647 () Bool)

(assert (=> b!25751 (= e!13219 (and tp!5646 tp!5647))))

(declare-fun b!25752 () Bool)

(assert (=> b!25752 (= e!13219 tp_is_empty!165)))

(assert (=> b!25659 (= tp!5629 e!13219)))

(assert (= (and b!25659 (is-CC!59 (left!704 ys!104))) b!25751))

(assert (= (and b!25659 (is-Single!59 (left!704 ys!104))) b!25752))

(declare-fun b!25753 () Bool)

(declare-fun e!13220 () Bool)

(declare-fun tp!5648 () Bool)

(declare-fun tp!5649 () Bool)

(assert (=> b!25753 (= e!13220 (and tp!5648 tp!5649))))

(declare-fun b!25754 () Bool)

(assert (=> b!25754 (= e!13220 tp_is_empty!165)))

(assert (=> b!25659 (= tp!5628 e!13220)))

(assert (= (and b!25659 (is-CC!59 (right!707 ys!104))) b!25753))

(assert (= (and b!25659 (is-Single!59 (right!707 ys!104))) b!25754))

(declare-fun b!25755 () Bool)

(declare-fun e!13221 () Bool)

(declare-fun tp!5650 () Bool)

(declare-fun tp!5651 () Bool)

(assert (=> b!25755 (= e!13221 (and tp!5650 tp!5651))))

(declare-fun b!25756 () Bool)

(assert (=> b!25756 (= e!13221 tp_is_empty!165)))

(assert (=> b!25668 (= tp!5627 e!13221)))

(assert (= (and b!25668 (is-CC!59 (left!704 xs!533))) b!25755))

(assert (= (and b!25668 (is-Single!59 (left!704 xs!533))) b!25756))

(declare-fun b!25757 () Bool)

(declare-fun e!13222 () Bool)

(declare-fun tp!5652 () Bool)

(declare-fun tp!5653 () Bool)

(assert (=> b!25757 (= e!13222 (and tp!5652 tp!5653))))

(declare-fun b!25758 () Bool)

(assert (=> b!25758 (= e!13222 tp_is_empty!165)))

(assert (=> b!25668 (= tp!5632 e!13222)))

(assert (= (and b!25668 (is-CC!59 (right!707 xs!533))) b!25757))

(assert (= (and b!25668 (is-Single!59 (right!707 xs!533))) b!25758))

(push 1)

(assert (not b!25691))

(assert (not b!25687))

(assert (not b!25685))

(assert (not b!25753))

(assert (not b!25694))

(assert (not b!25689))

(assert (not b!25688))

(assert (not b!25723))

(assert (not b!25729))

(assert (not b!25731))

(assert (not b!25722))

(assert (not b!25736))

(assert (not b!25728))

(assert (not b!25690))

(assert (not b!25713))

(assert (not b!25745))

(assert (not b!25733))

(assert (not b!25747))

(assert (not b!25715))

(assert (not b!25704))

(assert (not b!25730))

(assert (not b!25757))

(assert (not b!25686))

(assert (not b!25732))

(assert (not b!25726))

(assert (not b!25692))

(assert (not b!25751))

(assert tp_is_empty!165)

(assert (not b!25734))

(assert (not b!25702))

(assert (not b!25714))

(assert (not b!25717))

(assert (not b!25735))

(assert (not b!25755))

(assert (not b!25718))

(assert (not b!25743))

(assert (not b!25721))

(assert (not b!25693))

(assert (not b!25719))

(assert (not b!25724))

(assert (not b!25696))

(assert (not b!25749))

(assert (not b!25716))

(assert (not b!25720))

(assert (not b!25695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!25761 () Bool)

(declare-fun res!11670 () Bool)

(declare-fun e!13223 () Bool)

(assert (=> b!25761 (=> (not res!11670) (not e!13223))))

(assert (=> b!25761 (= res!11670 (concInv!54 (left!704 (left!704 ys!77))))))

(declare-fun b!25760 () Bool)

(declare-fun res!11671 () Bool)

(assert (=> b!25760 (=> (not res!11671) (not e!13223))))

(assert (=> b!25760 (= res!11671 (not (isEmpty!316 (right!707 (left!704 ys!77)))))))

(declare-fun b!25762 () Bool)

(assert (=> b!25762 (= e!13223 (concInv!54 (right!707 (left!704 ys!77))))))

(declare-fun d!13889 () Bool)

(declare-fun res!11668 () Bool)

(declare-fun e!13224 () Bool)

(assert (=> d!13889 (=> res!11668 e!13224)))

(assert (=> d!13889 (= res!11668 (not (is-CC!59 (left!704 ys!77))))))

(assert (=> d!13889 (= (concInv!54 (left!704 ys!77)) e!13224)))

(declare-fun b!25759 () Bool)

(assert (=> b!25759 (= e!13224 e!13223)))

(declare-fun res!11669 () Bool)

(assert (=> b!25759 (=> (not res!11669) (not e!13223))))

(assert (=> b!25759 (= res!11669 (not (isEmpty!316 (left!704 (left!704 ys!77)))))))

(assert (= (and d!13889 (not res!11668)) b!25759))

(assert (= (and b!25759 res!11669) b!25760))

(assert (= (and b!25760 res!11671) b!25761))

(assert (= (and b!25761 res!11670) b!25762))

(declare-fun m!26679 () Bool)

(assert (=> b!25761 m!26679))

(declare-fun m!26681 () Bool)

(assert (=> b!25760 m!26681))

(declare-fun m!26683 () Bool)

(assert (=> b!25762 m!26683))

(declare-fun m!26685 () Bool)

(assert (=> b!25759 m!26685))

(assert (=> b!25731 d!13889))

(declare-fun b!25764 () Bool)

(declare-fun e!13225 () Int)

(declare-fun lt!4055 () Int)

(declare-fun lt!4054 () Int)

(assert (=> b!25764 (= e!13225 (+ 1 (ite (>= lt!4055 lt!4054) lt!4055 lt!4054)))))

(assert (=> b!25764 (= lt!4054 (level!48 (right!707 (left!704 xs!560))))))

(assert (=> b!25764 (= lt!4055 (level!48 (left!704 (left!704 xs!560))))))

(declare-fun d!13891 () Bool)

(declare-fun lt!4056 () Int)

(assert (=> d!13891 (>= lt!4056 0)))

(assert (=> d!13891 (= lt!4056 e!13225)))

(declare-fun c!5738 () Bool)

(assert (=> d!13891 (= c!5738 (or (is-Empty!70 (left!704 xs!560)) (is-Single!59 (left!704 xs!560))))))

(assert (=> d!13891 (= (level!48 (left!704 xs!560)) lt!4056)))

(declare-fun b!25763 () Bool)

(assert (=> b!25763 (= e!13225 0)))

(assert (= (and d!13891 c!5738) b!25763))

(assert (= (and d!13891 (not c!5738)) b!25764))

(declare-fun m!26687 () Bool)

(assert (=> b!25764 m!26687))

(declare-fun m!26689 () Bool)

(assert (=> b!25764 m!26689))

(assert (=> b!25714 d!13891))

(declare-fun b!25766 () Bool)

(declare-fun e!13226 () Int)

(declare-fun lt!4058 () Int)

(declare-fun lt!4057 () Int)

(assert (=> b!25766 (= e!13226 (+ 1 (ite (>= lt!4058 lt!4057) lt!4058 lt!4057)))))

(assert (=> b!25766 (= lt!4057 (level!48 (right!707 (right!707 xs!560))))))

(assert (=> b!25766 (= lt!4058 (level!48 (left!704 (right!707 xs!560))))))

(declare-fun d!13893 () Bool)

(declare-fun lt!4059 () Int)

(assert (=> d!13893 (>= lt!4059 0)))

(assert (=> d!13893 (= lt!4059 e!13226)))

(declare-fun c!5739 () Bool)

(assert (=> d!13893 (= c!5739 (or (is-Empty!70 (right!707 xs!560)) (is-Single!59 (right!707 xs!560))))))

(assert (=> d!13893 (= (level!48 (right!707 xs!560)) lt!4059)))

(declare-fun b!25765 () Bool)

(assert (=> b!25765 (= e!13226 0)))

(assert (= (and d!13893 c!5739) b!25765))

(assert (= (and d!13893 (not c!5739)) b!25766))

(declare-fun m!26691 () Bool)

(assert (=> b!25766 m!26691))

(declare-fun m!26693 () Bool)

(assert (=> b!25766 m!26693))

(assert (=> b!25714 d!13893))

(declare-fun b!25769 () Bool)

(declare-fun res!11674 () Bool)

(declare-fun e!13227 () Bool)

(assert (=> b!25769 (=> (not res!11674) (not e!13227))))

(assert (=> b!25769 (= res!11674 (concInv!54 (left!704 (left!704 xs!560))))))

(declare-fun b!25768 () Bool)

(declare-fun res!11675 () Bool)

(assert (=> b!25768 (=> (not res!11675) (not e!13227))))

(assert (=> b!25768 (= res!11675 (not (isEmpty!316 (right!707 (left!704 xs!560)))))))

(declare-fun b!25770 () Bool)

(assert (=> b!25770 (= e!13227 (concInv!54 (right!707 (left!704 xs!560))))))

(declare-fun d!13895 () Bool)

(declare-fun res!11672 () Bool)

(declare-fun e!13228 () Bool)

(assert (=> d!13895 (=> res!11672 e!13228)))

(assert (=> d!13895 (= res!11672 (not (is-CC!59 (left!704 xs!560))))))

(assert (=> d!13895 (= (concInv!54 (left!704 xs!560)) e!13228)))

(declare-fun b!25767 () Bool)

(assert (=> b!25767 (= e!13228 e!13227)))

(declare-fun res!11673 () Bool)

(assert (=> b!25767 (=> (not res!11673) (not e!13227))))

(assert (=> b!25767 (= res!11673 (not (isEmpty!316 (left!704 (left!704 xs!560)))))))

(assert (= (and d!13895 (not res!11672)) b!25767))

(assert (= (and b!25767 res!11673) b!25768))

(assert (= (and b!25768 res!11675) b!25769))

(assert (= (and b!25769 res!11674) b!25770))

(declare-fun m!26695 () Bool)

(assert (=> b!25769 m!26695))

(declare-fun m!26697 () Bool)

(assert (=> b!25768 m!26697))

(declare-fun m!26699 () Bool)

(assert (=> b!25770 m!26699))

(declare-fun m!26701 () Bool)

(assert (=> b!25767 m!26701))

(assert (=> b!25687 d!13895))

(declare-fun d!13897 () Bool)

(declare-fun res!11677 () Bool)

(declare-fun e!13229 () Bool)

(assert (=> d!13897 (=> res!11677 e!13229)))

(assert (=> d!13897 (= res!11677 (not (is-CC!59 (right!707 ys!77))))))

(assert (=> d!13897 (= (balanced!55 (right!707 ys!77)) e!13229)))

(declare-fun b!25771 () Bool)

(declare-fun e!13230 () Bool)

(assert (=> b!25771 (= e!13229 e!13230)))

(declare-fun res!11678 () Bool)

(assert (=> b!25771 (=> (not res!11678) (not e!13230))))

(assert (=> b!25771 (= res!11678 (>= (- (level!48 (left!704 (right!707 ys!77))) (level!48 (right!707 (right!707 ys!77)))) (- 1)))))

(declare-fun b!25772 () Bool)

(declare-fun res!11679 () Bool)

(assert (=> b!25772 (=> (not res!11679) (not e!13230))))

(assert (=> b!25772 (= res!11679 (<= (- (level!48 (left!704 (right!707 ys!77))) (level!48 (right!707 (right!707 ys!77)))) 1))))

(declare-fun b!25773 () Bool)

(declare-fun res!11676 () Bool)

(assert (=> b!25773 (=> (not res!11676) (not e!13230))))

(assert (=> b!25773 (= res!11676 (balanced!55 (left!704 (right!707 ys!77))))))

(declare-fun b!25774 () Bool)

(assert (=> b!25774 (= e!13230 (balanced!55 (right!707 (right!707 ys!77))))))

(assert (= (and d!13897 (not res!11677)) b!25771))

(assert (= (and b!25771 res!11678) b!25772))

(assert (= (and b!25772 res!11679) b!25773))

(assert (= (and b!25773 res!11676) b!25774))

(assert (=> b!25771 m!26661))

(assert (=> b!25771 m!26659))

(assert (=> b!25772 m!26661))

(assert (=> b!25772 m!26659))

(declare-fun m!26703 () Bool)

(assert (=> b!25773 m!26703))

(declare-fun m!26705 () Bool)

(assert (=> b!25774 m!26705))

(assert (=> b!25724 d!13897))

(declare-fun d!13899 () Bool)

(declare-fun res!11681 () Bool)

(declare-fun e!13231 () Bool)

(assert (=> d!13899 (=> res!11681 e!13231)))

(assert (=> d!13899 (= res!11681 (not (is-CC!59 (left!704 ys!77))))))

(assert (=> d!13899 (= (balanced!55 (left!704 ys!77)) e!13231)))

(declare-fun b!25775 () Bool)

(declare-fun e!13232 () Bool)

(assert (=> b!25775 (= e!13231 e!13232)))

(declare-fun res!11682 () Bool)

(assert (=> b!25775 (=> (not res!11682) (not e!13232))))

(assert (=> b!25775 (= res!11682 (>= (- (level!48 (left!704 (left!704 ys!77))) (level!48 (right!707 (left!704 ys!77)))) (- 1)))))

(declare-fun b!25776 () Bool)

(declare-fun res!11683 () Bool)

(assert (=> b!25776 (=> (not res!11683) (not e!13232))))

(assert (=> b!25776 (= res!11683 (<= (- (level!48 (left!704 (left!704 ys!77))) (level!48 (right!707 (left!704 ys!77)))) 1))))

(declare-fun b!25777 () Bool)

(declare-fun res!11680 () Bool)

(assert (=> b!25777 (=> (not res!11680) (not e!13232))))

(assert (=> b!25777 (= res!11680 (balanced!55 (left!704 (left!704 ys!77))))))

(declare-fun b!25778 () Bool)

(assert (=> b!25778 (= e!13232 (balanced!55 (right!707 (left!704 ys!77))))))

(assert (= (and d!13899 (not res!11681)) b!25775))

(assert (= (and b!25775 res!11682) b!25776))

(assert (= (and b!25776 res!11683) b!25777))

(assert (= (and b!25777 res!11680) b!25778))

(assert (=> b!25775 m!26665))

(assert (=> b!25775 m!26663))

(assert (=> b!25776 m!26665))

(assert (=> b!25776 m!26663))

(declare-fun m!26707 () Bool)

(assert (=> b!25777 m!26707))

(declare-fun m!26709 () Bool)

(assert (=> b!25778 m!26709))

(assert (=> b!25723 d!13899))

(assert (=> b!25721 d!13879))

(assert (=> b!25721 d!13877))

(assert (=> b!25713 d!13891))

(assert (=> b!25713 d!13893))

(declare-fun d!13901 () Bool)

(declare-fun res!11685 () Bool)

(declare-fun e!13233 () Bool)

(assert (=> d!13901 (=> res!11685 e!13233)))

(assert (=> d!13901 (= res!11685 (not (is-CC!59 (left!704 xs!560))))))

(assert (=> d!13901 (= (balanced!55 (left!704 xs!560)) e!13233)))

(declare-fun b!25779 () Bool)

(declare-fun e!13234 () Bool)

(assert (=> b!25779 (= e!13233 e!13234)))

(declare-fun res!11686 () Bool)

(assert (=> b!25779 (=> (not res!11686) (not e!13234))))

(assert (=> b!25779 (= res!11686 (>= (- (level!48 (left!704 (left!704 xs!560))) (level!48 (right!707 (left!704 xs!560)))) (- 1)))))

(declare-fun b!25780 () Bool)

(declare-fun res!11687 () Bool)

(assert (=> b!25780 (=> (not res!11687) (not e!13234))))

(assert (=> b!25780 (= res!11687 (<= (- (level!48 (left!704 (left!704 xs!560))) (level!48 (right!707 (left!704 xs!560)))) 1))))

(declare-fun b!25781 () Bool)

(declare-fun res!11684 () Bool)

(assert (=> b!25781 (=> (not res!11684) (not e!13234))))

(assert (=> b!25781 (= res!11684 (balanced!55 (left!704 (left!704 xs!560))))))

(declare-fun b!25782 () Bool)

(assert (=> b!25782 (= e!13234 (balanced!55 (right!707 (left!704 xs!560))))))

(assert (= (and d!13901 (not res!11685)) b!25779))

(assert (= (and b!25779 res!11686) b!25780))

(assert (= (and b!25780 res!11687) b!25781))

(assert (= (and b!25781 res!11684) b!25782))

(assert (=> b!25779 m!26689))

(assert (=> b!25779 m!26687))

(assert (=> b!25780 m!26689))

(assert (=> b!25780 m!26687))

(declare-fun m!26711 () Bool)

(assert (=> b!25781 m!26711))

(declare-fun m!26713 () Bool)

(assert (=> b!25782 m!26713))

(assert (=> b!25715 d!13901))

(declare-fun d!13903 () Bool)

(assert (=> d!13903 (= (isEmpty!316 (right!707 ys!77)) (= (right!707 ys!77) Empty!70))))

(assert (=> b!25730 d!13903))

(declare-fun d!13905 () Bool)

(assert (=> d!13905 (= (isEmpty!316 (right!707 ys!104)) (= (right!707 ys!104) Empty!70))))

(assert (=> b!25690 d!13905))

(declare-fun b!25784 () Bool)

(declare-fun e!13235 () Int)

(declare-fun lt!4061 () Int)

(declare-fun lt!4060 () Int)

(assert (=> b!25784 (= e!13235 (+ 1 (ite (>= lt!4061 lt!4060) lt!4061 lt!4060)))))

(assert (=> b!25784 (= lt!4060 (level!48 (right!707 (left!704 ys!104))))))

(assert (=> b!25784 (= lt!4061 (level!48 (left!704 (left!704 ys!104))))))

(declare-fun d!13907 () Bool)

(declare-fun lt!4062 () Int)

(assert (=> d!13907 (>= lt!4062 0)))

(assert (=> d!13907 (= lt!4062 e!13235)))

(declare-fun c!5740 () Bool)

(assert (=> d!13907 (= c!5740 (or (is-Empty!70 (left!704 ys!104)) (is-Single!59 (left!704 ys!104))))))

(assert (=> d!13907 (= (level!48 (left!704 ys!104)) lt!4062)))

(declare-fun b!25783 () Bool)

(assert (=> b!25783 (= e!13235 0)))

(assert (= (and d!13907 c!5740) b!25783))

(assert (= (and d!13907 (not c!5740)) b!25784))

(declare-fun m!26715 () Bool)

(assert (=> b!25784 m!26715))

(declare-fun m!26717 () Bool)

(assert (=> b!25784 m!26717))

(assert (=> b!25717 d!13907))

(declare-fun b!25786 () Bool)

(declare-fun e!13236 () Int)

(declare-fun lt!4064 () Int)

(declare-fun lt!4063 () Int)

(assert (=> b!25786 (= e!13236 (+ 1 (ite (>= lt!4064 lt!4063) lt!4064 lt!4063)))))

(assert (=> b!25786 (= lt!4063 (level!48 (right!707 (right!707 ys!104))))))

(assert (=> b!25786 (= lt!4064 (level!48 (left!704 (right!707 ys!104))))))

(declare-fun d!13909 () Bool)

(declare-fun lt!4065 () Int)

(assert (=> d!13909 (>= lt!4065 0)))

(assert (=> d!13909 (= lt!4065 e!13236)))

(declare-fun c!5741 () Bool)

(assert (=> d!13909 (= c!5741 (or (is-Empty!70 (right!707 ys!104)) (is-Single!59 (right!707 ys!104))))))

(assert (=> d!13909 (= (level!48 (right!707 ys!104)) lt!4065)))

(declare-fun b!25785 () Bool)

(assert (=> b!25785 (= e!13236 0)))

(assert (= (and d!13909 c!5741) b!25785))

(assert (= (and d!13909 (not c!5741)) b!25786))

(declare-fun m!26719 () Bool)

(assert (=> b!25786 m!26719))

(declare-fun m!26721 () Bool)

(assert (=> b!25786 m!26721))

(assert (=> b!25717 d!13909))

(declare-fun d!13911 () Bool)

(declare-fun res!11689 () Bool)

(declare-fun e!13237 () Bool)

(assert (=> d!13911 (=> res!11689 e!13237)))

(assert (=> d!13911 (= res!11689 (not (is-CC!59 (left!704 xs!533))))))

(assert (=> d!13911 (= (balanced!55 (left!704 xs!533)) e!13237)))

(declare-fun b!25787 () Bool)

(declare-fun e!13238 () Bool)

(assert (=> b!25787 (= e!13237 e!13238)))

(declare-fun res!11690 () Bool)

(assert (=> b!25787 (=> (not res!11690) (not e!13238))))

(assert (=> b!25787 (= res!11690 (>= (- (level!48 (left!704 (left!704 xs!533))) (level!48 (right!707 (left!704 xs!533)))) (- 1)))))

(declare-fun b!25788 () Bool)

(declare-fun res!11691 () Bool)

(assert (=> b!25788 (=> (not res!11691) (not e!13238))))

(assert (=> b!25788 (= res!11691 (<= (- (level!48 (left!704 (left!704 xs!533))) (level!48 (right!707 (left!704 xs!533)))) 1))))

(declare-fun b!25789 () Bool)

(declare-fun res!11688 () Bool)

(assert (=> b!25789 (=> (not res!11688) (not e!13238))))

(assert (=> b!25789 (= res!11688 (balanced!55 (left!704 (left!704 xs!533))))))

(declare-fun b!25790 () Bool)

(assert (=> b!25790 (= e!13238 (balanced!55 (right!707 (left!704 xs!533))))))

(assert (= (and d!13911 (not res!11689)) b!25787))

(assert (= (and b!25787 res!11690) b!25788))

(assert (= (and b!25788 res!11691) b!25789))

(assert (= (and b!25789 res!11688) b!25790))

(declare-fun m!26723 () Bool)

(assert (=> b!25787 m!26723))

(declare-fun m!26725 () Bool)

(assert (=> b!25787 m!26725))

(assert (=> b!25788 m!26723))

(assert (=> b!25788 m!26725))

(declare-fun m!26727 () Bool)

(assert (=> b!25789 m!26727))

(declare-fun m!26729 () Bool)

(assert (=> b!25790 m!26729))

(assert (=> b!25735 d!13911))

(declare-fun b!25793 () Bool)

(declare-fun res!11694 () Bool)

(declare-fun e!13239 () Bool)

(assert (=> b!25793 (=> (not res!11694) (not e!13239))))

(assert (=> b!25793 (= res!11694 (concInv!54 (left!704 (right!707 ys!104))))))

(declare-fun b!25792 () Bool)

(declare-fun res!11695 () Bool)

(assert (=> b!25792 (=> (not res!11695) (not e!13239))))

(assert (=> b!25792 (= res!11695 (not (isEmpty!316 (right!707 (right!707 ys!104)))))))

(declare-fun b!25794 () Bool)

(assert (=> b!25794 (= e!13239 (concInv!54 (right!707 (right!707 ys!104))))))

(declare-fun d!13913 () Bool)

(declare-fun res!11692 () Bool)

(declare-fun e!13240 () Bool)

(assert (=> d!13913 (=> res!11692 e!13240)))

(assert (=> d!13913 (= res!11692 (not (is-CC!59 (right!707 ys!104))))))

(assert (=> d!13913 (= (concInv!54 (right!707 ys!104)) e!13240)))

(declare-fun b!25791 () Bool)

(assert (=> b!25791 (= e!13240 e!13239)))

(declare-fun res!11693 () Bool)

(assert (=> b!25791 (=> (not res!11693) (not e!13239))))

(assert (=> b!25791 (= res!11693 (not (isEmpty!316 (left!704 (right!707 ys!104)))))))

(assert (= (and d!13913 (not res!11692)) b!25791))

(assert (= (and b!25791 res!11693) b!25792))

(assert (= (and b!25792 res!11695) b!25793))

(assert (= (and b!25793 res!11694) b!25794))

(declare-fun m!26731 () Bool)

(assert (=> b!25793 m!26731))

(declare-fun m!26733 () Bool)

(assert (=> b!25792 m!26733))

(declare-fun m!26735 () Bool)

(assert (=> b!25794 m!26735))

(declare-fun m!26737 () Bool)

(assert (=> b!25791 m!26737))

(assert (=> b!25692 d!13913))

(declare-fun d!13915 () Bool)

(declare-fun res!11697 () Bool)

(declare-fun e!13241 () Bool)

(assert (=> d!13915 (=> res!11697 e!13241)))

(assert (=> d!13915 (= res!11697 (not (is-CC!59 (right!707 xs!533))))))

(assert (=> d!13915 (= (balanced!55 (right!707 xs!533)) e!13241)))

(declare-fun b!25795 () Bool)

(declare-fun e!13242 () Bool)

(assert (=> b!25795 (= e!13241 e!13242)))

(declare-fun res!11698 () Bool)

(assert (=> b!25795 (=> (not res!11698) (not e!13242))))

(assert (=> b!25795 (= res!11698 (>= (- (level!48 (left!704 (right!707 xs!533))) (level!48 (right!707 (right!707 xs!533)))) (- 1)))))

(declare-fun b!25796 () Bool)

(declare-fun res!11699 () Bool)

(assert (=> b!25796 (=> (not res!11699) (not e!13242))))

(assert (=> b!25796 (= res!11699 (<= (- (level!48 (left!704 (right!707 xs!533))) (level!48 (right!707 (right!707 xs!533)))) 1))))

(declare-fun b!25797 () Bool)

(declare-fun res!11696 () Bool)

(assert (=> b!25797 (=> (not res!11696) (not e!13242))))

(assert (=> b!25797 (= res!11696 (balanced!55 (left!704 (right!707 xs!533))))))

(declare-fun b!25798 () Bool)

(assert (=> b!25798 (= e!13242 (balanced!55 (right!707 (right!707 xs!533))))))

(assert (= (and d!13915 (not res!11697)) b!25795))

(assert (= (and b!25795 res!11698) b!25796))

(assert (= (and b!25796 res!11699) b!25797))

(assert (= (and b!25797 res!11696) b!25798))

(declare-fun m!26739 () Bool)

(assert (=> b!25795 m!26739))

(declare-fun m!26741 () Bool)

(assert (=> b!25795 m!26741))

(assert (=> b!25796 m!26739))

(assert (=> b!25796 m!26741))

(declare-fun m!26743 () Bool)

(assert (=> b!25797 m!26743))

(declare-fun m!26745 () Bool)

(assert (=> b!25798 m!26745))

(assert (=> b!25736 d!13915))

(declare-fun b!25801 () Bool)

(declare-fun res!11702 () Bool)

(declare-fun e!13243 () Bool)

(assert (=> b!25801 (=> (not res!11702) (not e!13243))))

(assert (=> b!25801 (= res!11702 (concInv!54 (left!704 (right!707 xs!533))))))

(declare-fun b!25800 () Bool)

(declare-fun res!11703 () Bool)

(assert (=> b!25800 (=> (not res!11703) (not e!13243))))

(assert (=> b!25800 (= res!11703 (not (isEmpty!316 (right!707 (right!707 xs!533)))))))

(declare-fun b!25802 () Bool)

(assert (=> b!25802 (= e!13243 (concInv!54 (right!707 (right!707 xs!533))))))

(declare-fun d!13917 () Bool)

(declare-fun res!11700 () Bool)

(declare-fun e!13244 () Bool)

(assert (=> d!13917 (=> res!11700 e!13244)))

(assert (=> d!13917 (= res!11700 (not (is-CC!59 (right!707 xs!533))))))

(assert (=> d!13917 (= (concInv!54 (right!707 xs!533)) e!13244)))

(declare-fun b!25799 () Bool)

(assert (=> b!25799 (= e!13244 e!13243)))

(declare-fun res!11701 () Bool)

(assert (=> b!25799 (=> (not res!11701) (not e!13243))))

(assert (=> b!25799 (= res!11701 (not (isEmpty!316 (left!704 (right!707 xs!533)))))))

(assert (= (and d!13917 (not res!11700)) b!25799))

(assert (= (and b!25799 res!11701) b!25800))

(assert (= (and b!25800 res!11703) b!25801))

(assert (= (and b!25801 res!11702) b!25802))

(declare-fun m!26747 () Bool)

(assert (=> b!25801 m!26747))

(declare-fun m!26749 () Bool)

(assert (=> b!25800 m!26749))

(declare-fun m!26751 () Bool)

(assert (=> b!25802 m!26751))

(declare-fun m!26753 () Bool)

(assert (=> b!25799 m!26753))

(assert (=> b!25696 d!13917))

(declare-fun d!13919 () Bool)

(declare-fun res!11705 () Bool)

(declare-fun e!13245 () Bool)

(assert (=> d!13919 (=> res!11705 e!13245)))

(assert (=> d!13919 (= res!11705 (not (is-CC!59 (right!707 xs!560))))))

(assert (=> d!13919 (= (balanced!55 (right!707 xs!560)) e!13245)))

(declare-fun b!25803 () Bool)

(declare-fun e!13246 () Bool)

(assert (=> b!25803 (= e!13245 e!13246)))

(declare-fun res!11706 () Bool)

(assert (=> b!25803 (=> (not res!11706) (not e!13246))))

(assert (=> b!25803 (= res!11706 (>= (- (level!48 (left!704 (right!707 xs!560))) (level!48 (right!707 (right!707 xs!560)))) (- 1)))))

(declare-fun b!25804 () Bool)

(declare-fun res!11707 () Bool)

(assert (=> b!25804 (=> (not res!11707) (not e!13246))))

(assert (=> b!25804 (= res!11707 (<= (- (level!48 (left!704 (right!707 xs!560))) (level!48 (right!707 (right!707 xs!560)))) 1))))

(declare-fun b!25805 () Bool)

(declare-fun res!11704 () Bool)

(assert (=> b!25805 (=> (not res!11704) (not e!13246))))

(assert (=> b!25805 (= res!11704 (balanced!55 (left!704 (right!707 xs!560))))))

(declare-fun b!25806 () Bool)

(assert (=> b!25806 (= e!13246 (balanced!55 (right!707 (right!707 xs!560))))))

(assert (= (and d!13919 (not res!11705)) b!25803))

(assert (= (and b!25803 res!11706) b!25804))

(assert (= (and b!25804 res!11707) b!25805))

(assert (= (and b!25805 res!11704) b!25806))

(assert (=> b!25803 m!26693))

(assert (=> b!25803 m!26691))

(assert (=> b!25804 m!26693))

(assert (=> b!25804 m!26691))

(declare-fun m!26755 () Bool)

(assert (=> b!25805 m!26755))

(declare-fun m!26757 () Bool)

(assert (=> b!25806 m!26757))

(assert (=> b!25716 d!13919))

(declare-fun b!25808 () Bool)

(declare-fun e!13247 () Int)

(declare-fun lt!4067 () Int)

(declare-fun lt!4066 () Int)

(assert (=> b!25808 (= e!13247 (+ 1 (ite (>= lt!4067 lt!4066) lt!4067 lt!4066)))))

(assert (=> b!25808 (= lt!4066 (level!48 (right!707 (right!707 (right!707 ys!77)))))))

(assert (=> b!25808 (= lt!4067 (level!48 (left!704 (right!707 (right!707 ys!77)))))))

(declare-fun d!13921 () Bool)

(declare-fun lt!4068 () Int)

(assert (=> d!13921 (>= lt!4068 0)))

(assert (=> d!13921 (= lt!4068 e!13247)))

(declare-fun c!5742 () Bool)

(assert (=> d!13921 (= c!5742 (or (is-Empty!70 (right!707 (right!707 ys!77))) (is-Single!59 (right!707 (right!707 ys!77)))))))

(assert (=> d!13921 (= (level!48 (right!707 (right!707 ys!77))) lt!4068)))

(declare-fun b!25807 () Bool)

(assert (=> b!25807 (= e!13247 0)))

(assert (= (and d!13921 c!5742) b!25807))

(assert (= (and d!13921 (not c!5742)) b!25808))

(declare-fun m!26759 () Bool)

(assert (=> b!25808 m!26759))

(declare-fun m!26761 () Bool)

(assert (=> b!25808 m!26761))

(assert (=> b!25726 d!13921))

(declare-fun b!25810 () Bool)

(declare-fun e!13248 () Int)

(declare-fun lt!4070 () Int)

(declare-fun lt!4069 () Int)

(assert (=> b!25810 (= e!13248 (+ 1 (ite (>= lt!4070 lt!4069) lt!4070 lt!4069)))))

(assert (=> b!25810 (= lt!4069 (level!48 (right!707 (left!704 (right!707 ys!77)))))))

(assert (=> b!25810 (= lt!4070 (level!48 (left!704 (left!704 (right!707 ys!77)))))))

(declare-fun d!13923 () Bool)

(declare-fun lt!4071 () Int)

(assert (=> d!13923 (>= lt!4071 0)))

(assert (=> d!13923 (= lt!4071 e!13248)))

(declare-fun c!5743 () Bool)

(assert (=> d!13923 (= c!5743 (or (is-Empty!70 (left!704 (right!707 ys!77))) (is-Single!59 (left!704 (right!707 ys!77)))))))

(assert (=> d!13923 (= (level!48 (left!704 (right!707 ys!77))) lt!4071)))

(declare-fun b!25809 () Bool)

(assert (=> b!25809 (= e!13248 0)))

(assert (= (and d!13923 c!5743) b!25809))

(assert (= (and d!13923 (not c!5743)) b!25810))

(declare-fun m!26763 () Bool)

(assert (=> b!25810 m!26763))

(declare-fun m!26765 () Bool)

(assert (=> b!25810 m!26765))

(assert (=> b!25726 d!13923))

(declare-fun b!25813 () Bool)

(declare-fun res!11710 () Bool)

(declare-fun e!13249 () Bool)

(assert (=> b!25813 (=> (not res!11710) (not e!13249))))

(assert (=> b!25813 (= res!11710 (concInv!54 (left!704 (right!707 ys!77))))))

(declare-fun b!25812 () Bool)

(declare-fun res!11711 () Bool)

(assert (=> b!25812 (=> (not res!11711) (not e!13249))))

(assert (=> b!25812 (= res!11711 (not (isEmpty!316 (right!707 (right!707 ys!77)))))))

(declare-fun b!25814 () Bool)

(assert (=> b!25814 (= e!13249 (concInv!54 (right!707 (right!707 ys!77))))))

(declare-fun d!13925 () Bool)

(declare-fun res!11708 () Bool)

(declare-fun e!13250 () Bool)

(assert (=> d!13925 (=> res!11708 e!13250)))

(assert (=> d!13925 (= res!11708 (not (is-CC!59 (right!707 ys!77))))))

(assert (=> d!13925 (= (concInv!54 (right!707 ys!77)) e!13250)))

(declare-fun b!25811 () Bool)

(assert (=> b!25811 (= e!13250 e!13249)))

(declare-fun res!11709 () Bool)

(assert (=> b!25811 (=> (not res!11709) (not e!13249))))

(assert (=> b!25811 (= res!11709 (not (isEmpty!316 (left!704 (right!707 ys!77)))))))

(assert (= (and d!13925 (not res!11708)) b!25811))

(assert (= (and b!25811 res!11709) b!25812))

(assert (= (and b!25812 res!11711) b!25813))

(assert (= (and b!25813 res!11710) b!25814))

(declare-fun m!26767 () Bool)

(assert (=> b!25813 m!26767))

(declare-fun m!26769 () Bool)

(assert (=> b!25812 m!26769))

(declare-fun m!26771 () Bool)

(assert (=> b!25814 m!26771))

(declare-fun m!26773 () Bool)

(assert (=> b!25811 m!26773))

(assert (=> b!25732 d!13925))

(declare-fun b!25817 () Bool)

(declare-fun res!11714 () Bool)

(declare-fun e!13251 () Bool)

(assert (=> b!25817 (=> (not res!11714) (not e!13251))))

(assert (=> b!25817 (= res!11714 (concInv!54 (left!704 (left!704 ys!104))))))

(declare-fun b!25816 () Bool)

(declare-fun res!11715 () Bool)

(assert (=> b!25816 (=> (not res!11715) (not e!13251))))

(assert (=> b!25816 (= res!11715 (not (isEmpty!316 (right!707 (left!704 ys!104)))))))

(declare-fun b!25818 () Bool)

(assert (=> b!25818 (= e!13251 (concInv!54 (right!707 (left!704 ys!104))))))

(declare-fun d!13927 () Bool)

(declare-fun res!11712 () Bool)

(declare-fun e!13252 () Bool)

(assert (=> d!13927 (=> res!11712 e!13252)))

(assert (=> d!13927 (= res!11712 (not (is-CC!59 (left!704 ys!104))))))

(assert (=> d!13927 (= (concInv!54 (left!704 ys!104)) e!13252)))

(declare-fun b!25815 () Bool)

(assert (=> b!25815 (= e!13252 e!13251)))

(declare-fun res!11713 () Bool)

(assert (=> b!25815 (=> (not res!11713) (not e!13251))))

(assert (=> b!25815 (= res!11713 (not (isEmpty!316 (left!704 (left!704 ys!104)))))))

(assert (= (and d!13927 (not res!11712)) b!25815))

(assert (= (and b!25815 res!11713) b!25816))

(assert (= (and b!25816 res!11715) b!25817))

(assert (= (and b!25817 res!11714) b!25818))

(declare-fun m!26775 () Bool)

(assert (=> b!25817 m!26775))

(declare-fun m!26777 () Bool)

(assert (=> b!25816 m!26777))

(declare-fun m!26779 () Bool)

(assert (=> b!25818 m!26779))

(declare-fun m!26781 () Bool)

(assert (=> b!25815 m!26781))

(assert (=> b!25691 d!13927))

(declare-fun d!13929 () Bool)

(assert (=> d!13929 (= (isEmpty!316 (right!707 xs!533)) (= (right!707 xs!533) Empty!70))))

(assert (=> b!25694 d!13929))

(declare-fun b!25820 () Bool)

(declare-fun e!13253 () Int)

(declare-fun lt!4073 () Int)

(declare-fun lt!4072 () Int)

(assert (=> b!25820 (= e!13253 (+ 1 (ite (>= lt!4073 lt!4072) lt!4073 lt!4072)))))

(assert (=> b!25820 (= lt!4072 (level!48 (right!707 (left!704 xs!533))))))

(assert (=> b!25820 (= lt!4073 (level!48 (left!704 (left!704 xs!533))))))

(declare-fun d!13931 () Bool)

(declare-fun lt!4074 () Int)

(assert (=> d!13931 (>= lt!4074 0)))

(assert (=> d!13931 (= lt!4074 e!13253)))

(declare-fun c!5744 () Bool)

(assert (=> d!13931 (= c!5744 (or (is-Empty!70 (left!704 xs!533)) (is-Single!59 (left!704 xs!533))))))

(assert (=> d!13931 (= (level!48 (left!704 xs!533)) lt!4074)))

(declare-fun b!25819 () Bool)

(assert (=> b!25819 (= e!13253 0)))

(assert (= (and d!13931 c!5744) b!25819))

(assert (= (and d!13931 (not c!5744)) b!25820))

(assert (=> b!25820 m!26725))

(assert (=> b!25820 m!26723))

(assert (=> b!25734 d!13931))

(declare-fun b!25822 () Bool)

(declare-fun e!13254 () Int)

(declare-fun lt!4076 () Int)

(declare-fun lt!4075 () Int)

(assert (=> b!25822 (= e!13254 (+ 1 (ite (>= lt!4076 lt!4075) lt!4076 lt!4075)))))

(assert (=> b!25822 (= lt!4075 (level!48 (right!707 (right!707 xs!533))))))

(assert (=> b!25822 (= lt!4076 (level!48 (left!704 (right!707 xs!533))))))

(declare-fun d!13933 () Bool)

(declare-fun lt!4077 () Int)

(assert (=> d!13933 (>= lt!4077 0)))

(assert (=> d!13933 (= lt!4077 e!13254)))

(declare-fun c!5745 () Bool)

(assert (=> d!13933 (= c!5745 (or (is-Empty!70 (right!707 xs!533)) (is-Single!59 (right!707 xs!533))))))

(assert (=> d!13933 (= (level!48 (right!707 xs!533)) lt!4077)))

(declare-fun b!25821 () Bool)

(assert (=> b!25821 (= e!13254 0)))

(assert (= (and d!13933 c!5745) b!25821))

(assert (= (and d!13933 (not c!5745)) b!25822))

(assert (=> b!25822 m!26741))

(assert (=> b!25822 m!26739))

(assert (=> b!25734 d!13933))

(declare-fun d!13935 () Bool)

(assert (=> d!13935 (= (isEmpty!316 (left!704 ys!104)) (= (left!704 ys!104) Empty!70))))

(assert (=> b!25689 d!13935))

(assert (=> b!25718 d!13907))

(assert (=> b!25718 d!13909))

(declare-fun d!13937 () Bool)

(assert (=> d!13937 (= (isEmpty!316 (right!707 xs!560)) (= (right!707 xs!560) Empty!70))))

(assert (=> b!25686 d!13937))

(declare-fun d!13939 () Bool)

(assert (=> d!13939 (= (isEmpty!316 (left!704 xs!560)) (= (left!704 xs!560) Empty!70))))

(assert (=> b!25685 d!13939))

(assert (=> b!25733 d!13931))

(assert (=> b!25733 d!13933))

(declare-fun d!13941 () Bool)

(declare-fun res!11717 () Bool)

(declare-fun e!13255 () Bool)

(assert (=> d!13941 (=> res!11717 e!13255)))

(assert (=> d!13941 (= res!11717 (not (is-CC!59 (right!707 ys!104))))))

(assert (=> d!13941 (= (balanced!55 (right!707 ys!104)) e!13255)))

(declare-fun b!25823 () Bool)

(declare-fun e!13256 () Bool)

(assert (=> b!25823 (= e!13255 e!13256)))

(declare-fun res!11718 () Bool)

(assert (=> b!25823 (=> (not res!11718) (not e!13256))))

(assert (=> b!25823 (= res!11718 (>= (- (level!48 (left!704 (right!707 ys!104))) (level!48 (right!707 (right!707 ys!104)))) (- 1)))))

(declare-fun b!25824 () Bool)

(declare-fun res!11719 () Bool)

(assert (=> b!25824 (=> (not res!11719) (not e!13256))))

(assert (=> b!25824 (= res!11719 (<= (- (level!48 (left!704 (right!707 ys!104))) (level!48 (right!707 (right!707 ys!104)))) 1))))

(declare-fun b!25825 () Bool)

(declare-fun res!11716 () Bool)

(assert (=> b!25825 (=> (not res!11716) (not e!13256))))

(assert (=> b!25825 (= res!11716 (balanced!55 (left!704 (right!707 ys!104))))))

(declare-fun b!25826 () Bool)

(assert (=> b!25826 (= e!13256 (balanced!55 (right!707 (right!707 ys!104))))))

(assert (= (and d!13941 (not res!11717)) b!25823))

(assert (= (and b!25823 res!11718) b!25824))

(assert (= (and b!25824 res!11719) b!25825))

(assert (= (and b!25825 res!11716) b!25826))

(assert (=> b!25823 m!26721))

(assert (=> b!25823 m!26719))

(assert (=> b!25824 m!26721))

(assert (=> b!25824 m!26719))

(declare-fun m!26783 () Bool)

(assert (=> b!25825 m!26783))

(declare-fun m!26785 () Bool)

(assert (=> b!25826 m!26785))

(assert (=> b!25720 d!13941))

(declare-fun d!13943 () Bool)

(assert (=> d!13943 (= (isEmpty!316 (left!704 xs!533)) (= (left!704 xs!533) Empty!70))))

(assert (=> b!25693 d!13943))

(declare-fun b!25829 () Bool)

(declare-fun res!11722 () Bool)

(declare-fun e!13257 () Bool)

(assert (=> b!25829 (=> (not res!11722) (not e!13257))))

(assert (=> b!25829 (= res!11722 (concInv!54 (left!704 (left!704 xs!533))))))

(declare-fun b!25828 () Bool)

(declare-fun res!11723 () Bool)

(assert (=> b!25828 (=> (not res!11723) (not e!13257))))

(assert (=> b!25828 (= res!11723 (not (isEmpty!316 (right!707 (left!704 xs!533)))))))

(declare-fun b!25830 () Bool)

(assert (=> b!25830 (= e!13257 (concInv!54 (right!707 (left!704 xs!533))))))

(declare-fun d!13945 () Bool)

(declare-fun res!11720 () Bool)

(declare-fun e!13258 () Bool)

(assert (=> d!13945 (=> res!11720 e!13258)))

(assert (=> d!13945 (= res!11720 (not (is-CC!59 (left!704 xs!533))))))

(assert (=> d!13945 (= (concInv!54 (left!704 xs!533)) e!13258)))

(declare-fun b!25827 () Bool)

(assert (=> b!25827 (= e!13258 e!13257)))

(declare-fun res!11721 () Bool)

(assert (=> b!25827 (=> (not res!11721) (not e!13257))))

(assert (=> b!25827 (= res!11721 (not (isEmpty!316 (left!704 (left!704 xs!533)))))))

(assert (= (and d!13945 (not res!11720)) b!25827))

(assert (= (and b!25827 res!11721) b!25828))

(assert (= (and b!25828 res!11723) b!25829))

(assert (= (and b!25829 res!11722) b!25830))

(declare-fun m!26787 () Bool)

(assert (=> b!25829 m!26787))

(declare-fun m!26789 () Bool)

(assert (=> b!25828 m!26789))

(declare-fun m!26791 () Bool)

(assert (=> b!25830 m!26791))

(declare-fun m!26793 () Bool)

(assert (=> b!25827 m!26793))

(assert (=> b!25695 d!13945))

(declare-fun d!13947 () Bool)

(assert (=> d!13947 (= (isEmpty!316 (left!704 ys!77)) (= (left!704 ys!77) Empty!70))))

(assert (=> b!25729 d!13947))

(declare-fun d!13949 () Bool)

(declare-fun res!11725 () Bool)

(declare-fun e!13259 () Bool)

(assert (=> d!13949 (=> res!11725 e!13259)))

(assert (=> d!13949 (= res!11725 (not (is-CC!59 (left!704 ys!104))))))

(assert (=> d!13949 (= (balanced!55 (left!704 ys!104)) e!13259)))

(declare-fun b!25831 () Bool)

(declare-fun e!13260 () Bool)

(assert (=> b!25831 (= e!13259 e!13260)))

(declare-fun res!11726 () Bool)

(assert (=> b!25831 (=> (not res!11726) (not e!13260))))

(assert (=> b!25831 (= res!11726 (>= (- (level!48 (left!704 (left!704 ys!104))) (level!48 (right!707 (left!704 ys!104)))) (- 1)))))

(declare-fun b!25832 () Bool)

(declare-fun res!11727 () Bool)

(assert (=> b!25832 (=> (not res!11727) (not e!13260))))

(assert (=> b!25832 (= res!11727 (<= (- (level!48 (left!704 (left!704 ys!104))) (level!48 (right!707 (left!704 ys!104)))) 1))))

(declare-fun b!25833 () Bool)

(declare-fun res!11724 () Bool)

(assert (=> b!25833 (=> (not res!11724) (not e!13260))))

(assert (=> b!25833 (= res!11724 (balanced!55 (left!704 (left!704 ys!104))))))

(declare-fun b!25834 () Bool)

(assert (=> b!25834 (= e!13260 (balanced!55 (right!707 (left!704 ys!104))))))

(assert (= (and d!13949 (not res!11725)) b!25831))

(assert (= (and b!25831 res!11726) b!25832))

(assert (= (and b!25832 res!11727) b!25833))

(assert (= (and b!25833 res!11724) b!25834))

(assert (=> b!25831 m!26717))

(assert (=> b!25831 m!26715))

(assert (=> b!25832 m!26717))

(assert (=> b!25832 m!26715))

(declare-fun m!26795 () Bool)

(assert (=> b!25833 m!26795))

(declare-fun m!26797 () Bool)

(assert (=> b!25834 m!26797))

(assert (=> b!25719 d!13949))

(declare-fun b!25837 () Bool)

(declare-fun res!11730 () Bool)

(declare-fun e!13261 () Bool)

(assert (=> b!25837 (=> (not res!11730) (not e!13261))))

(assert (=> b!25837 (= res!11730 (concInv!54 (left!704 (right!707 xs!560))))))

(declare-fun b!25836 () Bool)

(declare-fun res!11731 () Bool)

(assert (=> b!25836 (=> (not res!11731) (not e!13261))))

(assert (=> b!25836 (= res!11731 (not (isEmpty!316 (right!707 (right!707 xs!560)))))))

(declare-fun b!25838 () Bool)

(assert (=> b!25838 (= e!13261 (concInv!54 (right!707 (right!707 xs!560))))))

(declare-fun d!13951 () Bool)

(declare-fun res!11728 () Bool)

(declare-fun e!13262 () Bool)

(assert (=> d!13951 (=> res!11728 e!13262)))

(assert (=> d!13951 (= res!11728 (not (is-CC!59 (right!707 xs!560))))))

(assert (=> d!13951 (= (concInv!54 (right!707 xs!560)) e!13262)))

(declare-fun b!25835 () Bool)

(assert (=> b!25835 (= e!13262 e!13261)))

(declare-fun res!11729 () Bool)

(assert (=> b!25835 (=> (not res!11729) (not e!13261))))

(assert (=> b!25835 (= res!11729 (not (isEmpty!316 (left!704 (right!707 xs!560)))))))

(assert (= (and d!13951 (not res!11728)) b!25835))

(assert (= (and b!25835 res!11729) b!25836))

(assert (= (and b!25836 res!11731) b!25837))

(assert (= (and b!25837 res!11730) b!25838))

(declare-fun m!26799 () Bool)

(assert (=> b!25837 m!26799))

(declare-fun m!26801 () Bool)

(assert (=> b!25836 m!26801))

(declare-fun m!26803 () Bool)

(assert (=> b!25838 m!26803))

(declare-fun m!26805 () Bool)

(assert (=> b!25835 m!26805))

(assert (=> b!25688 d!13951))

(assert (=> b!25702 d!13877))

(assert (=> b!25702 d!13879))

(assert (=> b!25722 d!13879))

(assert (=> b!25722 d!13877))

(assert (=> b!25704 d!13933))

(assert (=> b!25704 d!13931))

(declare-fun b!25840 () Bool)

(declare-fun e!13263 () Int)

(declare-fun lt!4079 () Int)

(declare-fun lt!4078 () Int)

(assert (=> b!25840 (= e!13263 (+ 1 (ite (>= lt!4079 lt!4078) lt!4079 lt!4078)))))

(assert (=> b!25840 (= lt!4078 (level!48 (right!707 (right!707 (left!704 ys!77)))))))

(assert (=> b!25840 (= lt!4079 (level!48 (left!704 (right!707 (left!704 ys!77)))))))

(declare-fun d!13953 () Bool)

(declare-fun lt!4080 () Int)

(assert (=> d!13953 (>= lt!4080 0)))

(assert (=> d!13953 (= lt!4080 e!13263)))

(declare-fun c!5746 () Bool)

(assert (=> d!13953 (= c!5746 (or (is-Empty!70 (right!707 (left!704 ys!77))) (is-Single!59 (right!707 (left!704 ys!77)))))))

(assert (=> d!13953 (= (level!48 (right!707 (left!704 ys!77))) lt!4080)))

(declare-fun b!25839 () Bool)

(assert (=> b!25839 (= e!13263 0)))

(assert (= (and d!13953 c!5746) b!25839))

(assert (= (and d!13953 (not c!5746)) b!25840))

(declare-fun m!26807 () Bool)

(assert (=> b!25840 m!26807))

(declare-fun m!26809 () Bool)

(assert (=> b!25840 m!26809))

(assert (=> b!25728 d!13953))

(declare-fun b!25842 () Bool)

(declare-fun e!13264 () Int)

(declare-fun lt!4082 () Int)

(declare-fun lt!4081 () Int)

(assert (=> b!25842 (= e!13264 (+ 1 (ite (>= lt!4082 lt!4081) lt!4082 lt!4081)))))

(assert (=> b!25842 (= lt!4081 (level!48 (right!707 (left!704 (left!704 ys!77)))))))

(assert (=> b!25842 (= lt!4082 (level!48 (left!704 (left!704 (left!704 ys!77)))))))

(declare-fun d!13955 () Bool)

(declare-fun lt!4083 () Int)

(assert (=> d!13955 (>= lt!4083 0)))

(assert (=> d!13955 (= lt!4083 e!13264)))

(declare-fun c!5747 () Bool)

(assert (=> d!13955 (= c!5747 (or (is-Empty!70 (left!704 (left!704 ys!77))) (is-Single!59 (left!704 (left!704 ys!77)))))))

(assert (=> d!13955 (= (level!48 (left!704 (left!704 ys!77))) lt!4083)))

(declare-fun b!25841 () Bool)

(assert (=> b!25841 (= e!13264 0)))

(assert (= (and d!13955 c!5747) b!25841))

(assert (= (and d!13955 (not c!5747)) b!25842))

(declare-fun m!26811 () Bool)

(assert (=> b!25842 m!26811))

(declare-fun m!26813 () Bool)

(assert (=> b!25842 m!26813))

(assert (=> b!25728 d!13955))

(declare-fun b!25843 () Bool)

(declare-fun e!13265 () Bool)

(declare-fun tp!5654 () Bool)

(declare-fun tp!5655 () Bool)

(assert (=> b!25843 (= e!13265 (and tp!5654 tp!5655))))

(declare-fun b!25844 () Bool)

(assert (=> b!25844 (= e!13265 tp_is_empty!165)))

(assert (=> b!25755 (= tp!5650 e!13265)))

(assert (= (and b!25755 (is-CC!59 (left!704 (left!704 xs!533)))) b!25843))

(assert (= (and b!25755 (is-Single!59 (left!704 (left!704 xs!533)))) b!25844))

(declare-fun b!25845 () Bool)

(declare-fun e!13266 () Bool)

(declare-fun tp!5656 () Bool)

(declare-fun tp!5657 () Bool)

(assert (=> b!25845 (= e!13266 (and tp!5656 tp!5657))))

(declare-fun b!25846 () Bool)

(assert (=> b!25846 (= e!13266 tp_is_empty!165)))

(assert (=> b!25755 (= tp!5651 e!13266)))

(assert (= (and b!25755 (is-CC!59 (right!707 (left!704 xs!533)))) b!25845))

(assert (= (and b!25755 (is-Single!59 (right!707 (left!704 xs!533)))) b!25846))

(declare-fun b!25847 () Bool)

(declare-fun e!13267 () Bool)

(declare-fun tp!5658 () Bool)

(declare-fun tp!5659 () Bool)

(assert (=> b!25847 (= e!13267 (and tp!5658 tp!5659))))

(declare-fun b!25848 () Bool)

(assert (=> b!25848 (= e!13267 tp_is_empty!165)))

(assert (=> b!25747 (= tp!5642 e!13267)))

(assert (= (and b!25747 (is-CC!59 (left!704 (left!704 xs!560)))) b!25847))

(assert (= (and b!25747 (is-Single!59 (left!704 (left!704 xs!560)))) b!25848))

(declare-fun b!25849 () Bool)

(declare-fun e!13268 () Bool)

(declare-fun tp!5660 () Bool)

(declare-fun tp!5661 () Bool)

(assert (=> b!25849 (= e!13268 (and tp!5660 tp!5661))))

(declare-fun b!25850 () Bool)

(assert (=> b!25850 (= e!13268 tp_is_empty!165)))

(assert (=> b!25747 (= tp!5643 e!13268)))

(assert (= (and b!25747 (is-CC!59 (right!707 (left!704 xs!560)))) b!25849))

(assert (= (and b!25747 (is-Single!59 (right!707 (left!704 xs!560)))) b!25850))

(declare-fun b!25851 () Bool)

(declare-fun e!13269 () Bool)

(declare-fun tp!5662 () Bool)

(declare-fun tp!5663 () Bool)

(assert (=> b!25851 (= e!13269 (and tp!5662 tp!5663))))

(declare-fun b!25852 () Bool)

(assert (=> b!25852 (= e!13269 tp_is_empty!165)))

(assert (=> b!25743 (= tp!5638 e!13269)))

(assert (= (and b!25743 (is-CC!59 (left!704 (left!704 ys!77)))) b!25851))

(assert (= (and b!25743 (is-Single!59 (left!704 (left!704 ys!77)))) b!25852))

(declare-fun b!25853 () Bool)

(declare-fun e!13270 () Bool)

(declare-fun tp!5664 () Bool)

(declare-fun tp!5665 () Bool)

(assert (=> b!25853 (= e!13270 (and tp!5664 tp!5665))))

(declare-fun b!25854 () Bool)

(assert (=> b!25854 (= e!13270 tp_is_empty!165)))

(assert (=> b!25743 (= tp!5639 e!13270)))

(assert (= (and b!25743 (is-CC!59 (right!707 (left!704 ys!77)))) b!25853))

(assert (= (and b!25743 (is-Single!59 (right!707 (left!704 ys!77)))) b!25854))

(declare-fun b!25855 () Bool)

(declare-fun e!13271 () Bool)

(declare-fun tp!5666 () Bool)

(declare-fun tp!5667 () Bool)

(assert (=> b!25855 (= e!13271 (and tp!5666 tp!5667))))

(declare-fun b!25856 () Bool)

(assert (=> b!25856 (= e!13271 tp_is_empty!165)))

(assert (=> b!25757 (= tp!5652 e!13271)))

(assert (= (and b!25757 (is-CC!59 (left!704 (right!707 xs!533)))) b!25855))

(assert (= (and b!25757 (is-Single!59 (left!704 (right!707 xs!533)))) b!25856))

(declare-fun b!25857 () Bool)

(declare-fun e!13272 () Bool)

(declare-fun tp!5668 () Bool)

(declare-fun tp!5669 () Bool)

(assert (=> b!25857 (= e!13272 (and tp!5668 tp!5669))))

(declare-fun b!25858 () Bool)

(assert (=> b!25858 (= e!13272 tp_is_empty!165)))

(assert (=> b!25757 (= tp!5653 e!13272)))

(assert (= (and b!25757 (is-CC!59 (right!707 (right!707 xs!533)))) b!25857))

(assert (= (and b!25757 (is-Single!59 (right!707 (right!707 xs!533)))) b!25858))

(declare-fun b!25859 () Bool)

(declare-fun e!13273 () Bool)

(declare-fun tp!5670 () Bool)

(declare-fun tp!5671 () Bool)

(assert (=> b!25859 (= e!13273 (and tp!5670 tp!5671))))

(declare-fun b!25860 () Bool)

(assert (=> b!25860 (= e!13273 tp_is_empty!165)))

(assert (=> b!25749 (= tp!5644 e!13273)))

(assert (= (and b!25749 (is-CC!59 (left!704 (right!707 xs!560)))) b!25859))

(assert (= (and b!25749 (is-Single!59 (left!704 (right!707 xs!560)))) b!25860))

(declare-fun b!25861 () Bool)

(declare-fun e!13274 () Bool)

(declare-fun tp!5672 () Bool)

(declare-fun tp!5673 () Bool)

(assert (=> b!25861 (= e!13274 (and tp!5672 tp!5673))))

(declare-fun b!25862 () Bool)

(assert (=> b!25862 (= e!13274 tp_is_empty!165)))

(assert (=> b!25749 (= tp!5645 e!13274)))

(assert (= (and b!25749 (is-CC!59 (right!707 (right!707 xs!560)))) b!25861))

(assert (= (and b!25749 (is-Single!59 (right!707 (right!707 xs!560)))) b!25862))

(declare-fun b!25863 () Bool)

(declare-fun e!13275 () Bool)

(declare-fun tp!5674 () Bool)

(declare-fun tp!5675 () Bool)

(assert (=> b!25863 (= e!13275 (and tp!5674 tp!5675))))

(declare-fun b!25864 () Bool)

(assert (=> b!25864 (= e!13275 tp_is_empty!165)))

(assert (=> b!25751 (= tp!5646 e!13275)))

(assert (= (and b!25751 (is-CC!59 (left!704 (left!704 ys!104)))) b!25863))

(assert (= (and b!25751 (is-Single!59 (left!704 (left!704 ys!104)))) b!25864))

(declare-fun b!25865 () Bool)

(declare-fun e!13276 () Bool)

(declare-fun tp!5676 () Bool)

(declare-fun tp!5677 () Bool)

(assert (=> b!25865 (= e!13276 (and tp!5676 tp!5677))))

(declare-fun b!25866 () Bool)

(assert (=> b!25866 (= e!13276 tp_is_empty!165)))

(assert (=> b!25751 (= tp!5647 e!13276)))

(assert (= (and b!25751 (is-CC!59 (right!707 (left!704 ys!104)))) b!25865))

(assert (= (and b!25751 (is-Single!59 (right!707 (left!704 ys!104)))) b!25866))

(declare-fun b!25867 () Bool)

(declare-fun e!13277 () Bool)

(declare-fun tp!5678 () Bool)

(declare-fun tp!5679 () Bool)

(assert (=> b!25867 (= e!13277 (and tp!5678 tp!5679))))

(declare-fun b!25868 () Bool)

(assert (=> b!25868 (= e!13277 tp_is_empty!165)))

(assert (=> b!25745 (= tp!5640 e!13277)))

(assert (= (and b!25745 (is-CC!59 (left!704 (right!707 ys!77)))) b!25867))

(assert (= (and b!25745 (is-Single!59 (left!704 (right!707 ys!77)))) b!25868))

(declare-fun b!25869 () Bool)

(declare-fun e!13278 () Bool)

(declare-fun tp!5680 () Bool)

(declare-fun tp!5681 () Bool)

(assert (=> b!25869 (= e!13278 (and tp!5680 tp!5681))))

(declare-fun b!25870 () Bool)

(assert (=> b!25870 (= e!13278 tp_is_empty!165)))

(assert (=> b!25745 (= tp!5641 e!13278)))

(assert (= (and b!25745 (is-CC!59 (right!707 (right!707 ys!77)))) b!25869))

(assert (= (and b!25745 (is-Single!59 (right!707 (right!707 ys!77)))) b!25870))

(declare-fun b!25871 () Bool)

(declare-fun e!13279 () Bool)

(declare-fun tp!5682 () Bool)

(declare-fun tp!5683 () Bool)

(assert (=> b!25871 (= e!13279 (and tp!5682 tp!5683))))

(declare-fun b!25872 () Bool)

(assert (=> b!25872 (= e!13279 tp_is_empty!165)))

(assert (=> b!25753 (= tp!5648 e!13279)))

(assert (= (and b!25753 (is-CC!59 (left!704 (right!707 ys!104)))) b!25871))

(assert (= (and b!25753 (is-Single!59 (left!704 (right!707 ys!104)))) b!25872))

(declare-fun b!25873 () Bool)

(declare-fun e!13280 () Bool)

(declare-fun tp!5684 () Bool)

(declare-fun tp!5685 () Bool)

(assert (=> b!25873 (= e!13280 (and tp!5684 tp!5685))))

(declare-fun b!25874 () Bool)

(assert (=> b!25874 (= e!13280 tp_is_empty!165)))

(assert (=> b!25753 (= tp!5649 e!13280)))

(assert (= (and b!25753 (is-CC!59 (right!707 (right!707 ys!104)))) b!25873))

(assert (= (and b!25753 (is-Single!59 (right!707 (right!707 ys!104)))) b!25874))

(push 1)

(assert (not b!25861))

(assert (not b!25791))

(assert (not b!25760))

(assert (not b!25815))

(assert (not b!25787))

(assert (not b!25816))

(assert (not b!25793))

(assert (not b!25801))

(assert (not b!25830))

(assert (not b!25767))

(assert (not b!25828))

(assert (not b!25813))

(assert (not b!25820))

(assert (not b!25774))

(assert (not b!25810))

(assert (not b!25842))

(assert (not b!25865))

(assert (not b!25873))

(assert (not b!25859))

(assert (not b!25811))

(assert (not b!25803))

(assert (not b!25825))

(assert (not b!25802))

(assert (not b!25782))

(assert (not b!25847))

(assert (not b!25796))

(assert (not b!25759))

(assert (not b!25835))

(assert (not b!25836))

(assert (not b!25764))

(assert (not b!25838))

(assert (not b!25808))

(assert (not b!25814))

(assert (not b!25784))

(assert (not b!25779))

(assert (not b!25857))

(assert (not b!25790))

(assert (not b!25766))

(assert (not b!25788))

(assert (not b!25833))

(assert (not b!25795))

(assert (not b!25780))

(assert (not b!25845))

(assert (not b!25831))

(assert (not b!25812))

(assert (not b!25804))

(assert (not b!25849))

(assert (not b!25823))

(assert (not b!25773))

(assert (not b!25805))

(assert (not b!25827))

(assert tp_is_empty!165)

(assert (not b!25871))

(assert (not b!25776))

(assert (not b!25855))

(assert (not b!25867))

(assert (not b!25781))

(assert (not b!25778))

(assert (not b!25775))

(assert (not b!25832))

(assert (not b!25770))

(assert (not b!25762))

(assert (not b!25818))

(assert (not b!25794))

(assert (not b!25843))

(assert (not b!25798))

(assert (not b!25800))

(assert (not b!25817))

(assert (not b!25840))

(assert (not b!25826))

(assert (not b!25769))

(assert (not b!25789))

(assert (not b!25834))

(assert (not b!25797))

(assert (not b!25777))

(assert (not b!25837))

(assert (not b!25772))

(assert (not b!25853))

(assert (not b!25786))

(assert (not b!25806))

(assert (not b!25771))

(assert (not b!25851))

(assert (not b!25824))

(assert (not b!25792))

(assert (not b!25761))

(assert (not b!25822))

(assert (not b!25768))

(assert (not b!25863))

(assert (not b!25869))

(assert (not b!25799))

(assert (not b!25829))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4656 () Bool)

(assert start!4656)

(declare-fun res!16577 () Bool)

(declare-fun e!18104 () Bool)

(assert (=> start!4656 (=> (not res!16577) (not e!18104))))

(declare-datatypes () ((Expr!4 (And!5 (lhs!201 Expr!4) (rhs!201 Expr!4)) (Implies!5 (lhs!202 Expr!4) (rhs!202 Expr!4)) (BoolLiteral!2 (i!414 Int)) (Or!5 (lhs!203 Expr!4) (rhs!203 Expr!4)) (Not!5 (e!18106 Expr!4)))))

(declare-fun e!17837 () Expr!4)

(assert (=> start!4656 (= res!16577 (and (not (is-And!5 e!17837)) (is-Or!5 e!17837)))))

(assert (=> start!4656 e!18104))

(assert (=> start!4656 true))

(declare-fun b!35583 () Bool)

(declare-fun res!16576 () Bool)

(assert (=> b!35583 (=> (not res!16576) (not e!18104))))

(declare-fun out!50 () Expr!4)

(declare-fun desugar!0 (Expr!4) Expr!4)

(assert (=> b!35583 (= res!16576 (= out!50 (Or!5 (desugar!0 (lhs!203 e!17837)) (desugar!0 (rhs!203 e!17837)))))))

(declare-fun b!35584 () Bool)

(declare-fun e!18105 () Bool)

(assert (=> b!35584 (= e!18104 e!18105)))

(declare-fun res!16578 () Bool)

(assert (=> b!35584 (=> res!16578 e!18105)))

(declare-fun existsImplies!0 (Expr!4) Bool)

(assert (=> b!35584 (= res!16578 (existsImplies!0 out!50))))

(declare-fun b!35585 () Bool)

(declare-fun lambda!4190 () Int)

(declare-fun exists!6 (Expr!4 Int) Bool)

(assert (=> b!35585 (= e!18105 (exists!6 out!50 lambda!4190))))

(assert (= (and start!4656 res!16577) b!35583))

(assert (= (and b!35583 res!16576) b!35584))

(assert (= (and b!35584 (not res!16578)) b!35585))

(declare-fun m!38115 () Bool)

(assert (=> b!35583 m!38115))

(declare-fun m!38117 () Bool)

(assert (=> b!35583 m!38117))

(declare-fun m!38119 () Bool)

(assert (=> b!35584 m!38119))

(declare-fun m!38121 () Bool)

(assert (=> b!35585 m!38121))

(push 1)

(assert (not b!35583))

(assert (not b!35585))

(assert (not b!35584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!11305 () Bool)

(declare-fun b!35617 () Bool)

(assert (= bs!11305 (and b!35617 b!35585)))

(declare-fun lambda!4193 () Int)

(assert (=> bs!11305 (= lambda!4193 lambda!4190)))

(declare-fun b!35616 () Bool)

(declare-fun e!18125 () Expr!4)

(declare-fun res!16611 () Expr!4)

(assert (=> b!35616 (= e!18125 res!16611)))

(assert (=> b!35616 true))

(declare-fun e!18126 () Bool)

(declare-fun lt!6850 () Expr!4)

(assert (=> b!35617 (= e!18126 (not (exists!6 lt!6850 lambda!4193)))))

(declare-fun b!35618 () Bool)

(declare-fun e!18131 () Expr!4)

(declare-fun lt!6857 () Bool)

(assert (=> b!35618 (= e!18131 (desugar!0 (ite lt!6857 (rhs!201 (lhs!203 e!17837)) (ite (is-Or!5 (lhs!203 e!17837)) (rhs!203 (lhs!203 e!17837)) (rhs!202 (lhs!203 e!17837))))))))

(declare-fun lt!6849 () Expr!4)

(declare-fun lt!6856 () Bool)

(declare-fun lt!6853 () Expr!4)

(declare-fun e!18127 () Expr!4)

(declare-fun b!35619 () Bool)

(assert (=> b!35619 (= e!18127 (ite lt!6856 (Or!5 (Not!5 lt!6849) lt!6853) (ite (is-Not!5 (lhs!203 e!17837)) (Not!5 lt!6849) (lhs!203 e!17837))))))

(declare-fun e!18129 () Expr!4)

(assert (=> b!35619 (= lt!6849 e!18129)))

(declare-fun c!7612 () Bool)

(assert (=> b!35619 (= c!7612 (or lt!6856 (is-Not!5 (lhs!203 e!17837))))))

(assert (=> b!35619 (= lt!6856 (is-Implies!5 (lhs!203 e!17837)))))

(declare-fun d!18508 () Bool)

(assert (=> d!18508 e!18126))

(declare-fun res!16608 () Bool)

(assert (=> d!18508 (=> (not res!16608) (not e!18126))))

(assert (=> d!18508 (= res!16608 (not (existsImplies!0 lt!6850)))))

(declare-fun e!18124 () Expr!4)

(assert (=> d!18508 (= lt!6850 e!18124)))

(declare-fun c!7610 () Bool)

(assert (=> d!18508 (= c!7610 lt!6857)))

(declare-fun lt!6855 () Expr!4)

(assert (=> d!18508 (= lt!6855 e!18131)))

(declare-fun c!7613 () Bool)

(assert (=> d!18508 (= c!7613 (or lt!6857 (is-Or!5 (lhs!203 e!17837)) (is-Implies!5 (lhs!203 e!17837))))))

(declare-fun lt!6851 () Expr!4)

(declare-fun e!18130 () Expr!4)

(assert (=> d!18508 (= lt!6851 e!18130)))

(declare-fun c!7611 () Bool)

(assert (=> d!18508 (= c!7611 (or lt!6857 (is-Or!5 (lhs!203 e!17837)) (is-Implies!5 (lhs!203 e!17837)) (is-Not!5 (lhs!203 e!17837))))))

(assert (=> d!18508 (= lt!6857 (is-And!5 (lhs!203 e!17837)))))

(assert (=> d!18508 (= (desugar!0 (lhs!203 e!17837)) lt!6850)))

(declare-fun b!35620 () Bool)

(declare-fun lt!6854 () Expr!4)

(assert (=> b!35620 (= e!18129 lt!6854)))

(declare-fun b!35621 () Bool)

(assert (=> b!35621 (= e!18124 e!18127)))

(declare-fun c!7614 () Bool)

(declare-fun lt!6852 () Bool)

(assert (=> b!35621 (= c!7614 lt!6852)))

(declare-fun e!18128 () Expr!4)

(assert (=> b!35621 (= lt!6853 e!18128)))

(declare-fun c!7615 () Bool)

(assert (=> b!35621 (= c!7615 (or lt!6852 (is-Implies!5 (lhs!203 e!17837))))))

(assert (=> b!35621 (= lt!6854 e!18125)))

(declare-fun c!7616 () Bool)

(assert (=> b!35621 (= c!7616 (or lt!6852 (is-Implies!5 (lhs!203 e!17837)) (is-Not!5 (lhs!203 e!17837))))))

(assert (=> b!35621 (= lt!6852 (is-Or!5 (lhs!203 e!17837)))))

(declare-fun b!35622 () Bool)

(declare-fun res!16610 () Expr!4)

(assert (=> b!35622 (= e!18129 res!16610)))

(assert (=> b!35622 true))

(assert (=> b!35622 true))

(declare-fun b!35623 () Bool)

(assert (=> b!35623 (= e!18130 (desugar!0 (ite lt!6857 (lhs!201 (lhs!203 e!17837)) (ite (is-Or!5 (lhs!203 e!17837)) (lhs!203 (lhs!203 e!17837)) (ite (is-Implies!5 (lhs!203 e!17837)) (lhs!202 (lhs!203 e!17837)) (e!18106 (lhs!203 e!17837)))))))))

(declare-fun b!35624 () Bool)

(assert (=> b!35624 (= e!18128 lt!6855)))

(declare-fun b!35625 () Bool)

(assert (=> b!35625 (= e!18124 (And!5 lt!6851 lt!6855))))

(declare-fun b!35626 () Bool)

(assert (=> b!35626 (= e!18127 (Or!5 lt!6854 lt!6853))))

(declare-fun b!35627 () Bool)

(declare-fun res!16609 () Expr!4)

(assert (=> b!35627 (= e!18130 res!16609)))

(assert (=> b!35627 true))

(declare-fun b!35628 () Bool)

(declare-fun res!16607 () Expr!4)

(assert (=> b!35628 (= e!18128 res!16607)))

(assert (=> b!35628 true))

(declare-fun b!35629 () Bool)

(declare-fun res!16606 () Expr!4)

(assert (=> b!35629 (= e!18131 res!16606)))

(assert (=> b!35629 true))

(declare-fun b!35630 () Bool)

(assert (=> b!35630 (= e!18125 lt!6851)))

(assert (= (and d!18508 c!7611) b!35623))

(assert (= (and d!18508 (not c!7611)) b!35627))

(assert (= (and d!18508 c!7613) b!35618))

(assert (= (and d!18508 (not c!7613)) b!35629))

(assert (= (and b!35621 c!7616) b!35630))

(assert (= (and b!35621 (not c!7616)) b!35616))

(assert (= (and b!35621 c!7615) b!35624))

(assert (= (and b!35621 (not c!7615)) b!35628))

(assert (= (and b!35619 c!7612) b!35620))

(assert (= (and b!35619 (not c!7612)) b!35622))

(assert (= (and b!35621 c!7614) b!35626))

(assert (= (and b!35621 (not c!7614)) b!35619))

(assert (= (and d!18508 c!7610) b!35625))

(assert (= (and d!18508 (not c!7610)) b!35621))

(assert (= (and d!18508 res!16608) b!35617))

(declare-fun m!38123 () Bool)

(assert (=> b!35617 m!38123))

(declare-fun m!38125 () Bool)

(assert (=> b!35618 m!38125))

(declare-fun m!38127 () Bool)

(assert (=> d!18508 m!38127))

(declare-fun m!38129 () Bool)

(assert (=> b!35623 m!38129))

(assert (=> b!35583 d!18508))

(declare-fun bs!11306 () Bool)

(declare-fun b!35632 () Bool)

(assert (= bs!11306 (and b!35632 b!35585)))

(declare-fun lambda!4194 () Int)

(assert (=> bs!11306 (= lambda!4194 lambda!4190)))

(declare-fun bs!11307 () Bool)

(assert (= bs!11307 (and b!35632 b!35617)))

(assert (=> bs!11307 (= lambda!4194 lambda!4193)))

(declare-fun b!35631 () Bool)

(declare-fun e!18133 () Expr!4)

(declare-fun res!16617 () Expr!4)

(assert (=> b!35631 (= e!18133 res!16617)))

(assert (=> b!35631 true))

(declare-fun e!18134 () Bool)

(declare-fun lt!6859 () Expr!4)

(assert (=> b!35632 (= e!18134 (not (exists!6 lt!6859 lambda!4194)))))

(declare-fun b!35633 () Bool)

(declare-fun e!18139 () Expr!4)

(declare-fun lt!6866 () Bool)

(assert (=> b!35633 (= e!18139 (desugar!0 (ite lt!6866 (rhs!201 (rhs!203 e!17837)) (ite (is-Or!5 (rhs!203 e!17837)) (rhs!203 (rhs!203 e!17837)) (rhs!202 (rhs!203 e!17837))))))))

(declare-fun e!18135 () Expr!4)

(declare-fun lt!6865 () Bool)

(declare-fun b!35634 () Bool)

(declare-fun lt!6862 () Expr!4)

(declare-fun lt!6858 () Expr!4)

(assert (=> b!35634 (= e!18135 (ite lt!6865 (Or!5 (Not!5 lt!6858) lt!6862) (ite (is-Not!5 (rhs!203 e!17837)) (Not!5 lt!6858) (rhs!203 e!17837))))))

(declare-fun e!18137 () Expr!4)

(assert (=> b!35634 (= lt!6858 e!18137)))

(declare-fun c!7619 () Bool)

(assert (=> b!35634 (= c!7619 (or lt!6865 (is-Not!5 (rhs!203 e!17837))))))

(assert (=> b!35634 (= lt!6865 (is-Implies!5 (rhs!203 e!17837)))))

(declare-fun d!18510 () Bool)

(assert (=> d!18510 e!18134))

(declare-fun res!16614 () Bool)

(assert (=> d!18510 (=> (not res!16614) (not e!18134))))

(assert (=> d!18510 (= res!16614 (not (existsImplies!0 lt!6859)))))

(declare-fun e!18132 () Expr!4)

(assert (=> d!18510 (= lt!6859 e!18132)))

(declare-fun c!7617 () Bool)

(assert (=> d!18510 (= c!7617 lt!6866)))

(declare-fun lt!6864 () Expr!4)

(assert (=> d!18510 (= lt!6864 e!18139)))

(declare-fun c!7620 () Bool)

(assert (=> d!18510 (= c!7620 (or lt!6866 (is-Or!5 (rhs!203 e!17837)) (is-Implies!5 (rhs!203 e!17837))))))

(declare-fun lt!6860 () Expr!4)

(declare-fun e!18138 () Expr!4)

(assert (=> d!18510 (= lt!6860 e!18138)))

(declare-fun c!7618 () Bool)

(assert (=> d!18510 (= c!7618 (or lt!6866 (is-Or!5 (rhs!203 e!17837)) (is-Implies!5 (rhs!203 e!17837)) (is-Not!5 (rhs!203 e!17837))))))

(assert (=> d!18510 (= lt!6866 (is-And!5 (rhs!203 e!17837)))))

(assert (=> d!18510 (= (desugar!0 (rhs!203 e!17837)) lt!6859)))

(declare-fun b!35635 () Bool)

(declare-fun lt!6863 () Expr!4)

(assert (=> b!35635 (= e!18137 lt!6863)))

(declare-fun b!35636 () Bool)

(assert (=> b!35636 (= e!18132 e!18135)))

(declare-fun c!7621 () Bool)

(declare-fun lt!6861 () Bool)

(assert (=> b!35636 (= c!7621 lt!6861)))

(declare-fun e!18136 () Expr!4)

(assert (=> b!35636 (= lt!6862 e!18136)))

(declare-fun c!7622 () Bool)

(assert (=> b!35636 (= c!7622 (or lt!6861 (is-Implies!5 (rhs!203 e!17837))))))

(assert (=> b!35636 (= lt!6863 e!18133)))

(declare-fun c!7623 () Bool)

(assert (=> b!35636 (= c!7623 (or lt!6861 (is-Implies!5 (rhs!203 e!17837)) (is-Not!5 (rhs!203 e!17837))))))

(assert (=> b!35636 (= lt!6861 (is-Or!5 (rhs!203 e!17837)))))

(declare-fun b!35637 () Bool)

(declare-fun res!16616 () Expr!4)

(assert (=> b!35637 (= e!18137 res!16616)))

(assert (=> b!35637 true))

(assert (=> b!35637 true))

(declare-fun b!35638 () Bool)

(assert (=> b!35638 (= e!18138 (desugar!0 (ite lt!6866 (lhs!201 (rhs!203 e!17837)) (ite (is-Or!5 (rhs!203 e!17837)) (lhs!203 (rhs!203 e!17837)) (ite (is-Implies!5 (rhs!203 e!17837)) (lhs!202 (rhs!203 e!17837)) (e!18106 (rhs!203 e!17837)))))))))

(declare-fun b!35639 () Bool)

(assert (=> b!35639 (= e!18136 lt!6864)))

(declare-fun b!35640 () Bool)

(assert (=> b!35640 (= e!18132 (And!5 lt!6860 lt!6864))))

(declare-fun b!35641 () Bool)

(assert (=> b!35641 (= e!18135 (Or!5 lt!6863 lt!6862))))

(declare-fun b!35642 () Bool)

(declare-fun res!16615 () Expr!4)

(assert (=> b!35642 (= e!18138 res!16615)))

(assert (=> b!35642 true))

(declare-fun b!35643 () Bool)

(declare-fun res!16613 () Expr!4)

(assert (=> b!35643 (= e!18136 res!16613)))

(assert (=> b!35643 true))

(declare-fun b!35644 () Bool)

(declare-fun res!16612 () Expr!4)

(assert (=> b!35644 (= e!18139 res!16612)))

(assert (=> b!35644 true))

(declare-fun b!35645 () Bool)

(assert (=> b!35645 (= e!18133 lt!6860)))

(assert (= (and d!18510 c!7618) b!35638))

(assert (= (and d!18510 (not c!7618)) b!35642))

(assert (= (and d!18510 c!7620) b!35633))

(assert (= (and d!18510 (not c!7620)) b!35644))

(assert (= (and b!35636 c!7623) b!35645))

(assert (= (and b!35636 (not c!7623)) b!35631))

(assert (= (and b!35636 c!7622) b!35639))

(assert (= (and b!35636 (not c!7622)) b!35643))

(assert (= (and b!35634 c!7619) b!35635))

(assert (= (and b!35634 (not c!7619)) b!35637))

(assert (= (and b!35636 c!7621) b!35641))

(assert (= (and b!35636 (not c!7621)) b!35634))

(assert (= (and d!18510 c!7617) b!35640))

(assert (= (and d!18510 (not c!7617)) b!35636))

(assert (= (and d!18510 res!16614) b!35632))

(declare-fun m!38131 () Bool)

(assert (=> b!35632 m!38131))

(declare-fun m!38133 () Bool)

(assert (=> b!35633 m!38133))

(declare-fun m!38135 () Bool)

(assert (=> d!18510 m!38135))

(declare-fun m!38137 () Bool)

(assert (=> b!35638 m!38137))

(assert (=> b!35583 d!18510))

(declare-fun b!35718 () Bool)

(declare-fun e!18197 () Bool)

(declare-fun res!16691 () Bool)

(assert (=> b!35718 (= e!18197 res!16691)))

(assert (=> b!35718 true))

(declare-fun b!35719 () Bool)

(declare-fun e!18190 () Bool)

(declare-fun lt!6902 () Bool)

(declare-fun lt!6905 () Bool)

(assert (=> b!35719 (= e!18190 (or lt!6902 lt!6905))))

(declare-fun b!35720 () Bool)

(declare-fun e!18205 () Expr!4)

(declare-fun e!18192 () Expr!4)

(assert (=> b!35720 (= e!18205 e!18192)))

(declare-fun c!7654 () Bool)

(declare-fun e!18199 () Bool)

(assert (=> b!35720 (= c!7654 e!18199)))

(declare-fun res!16686 () Bool)

(assert (=> b!35720 (=> (not res!16686) (not e!18199))))

(declare-fun lt!6901 () Bool)

(assert (=> b!35720 (= res!16686 lt!6901)))

(assert (=> b!35720 (= lt!6901 (is-Or!5 out!50))))

(declare-fun b!35721 () Bool)

(declare-fun e!18193 () Bool)

(declare-fun res!16694 () Bool)

(assert (=> b!35721 (= e!18193 res!16694)))

(assert (=> b!35721 true))

(declare-fun b!35722 () Bool)

(declare-fun e!18188 () Bool)

(declare-fun lt!6907 () Bool)

(assert (=> b!35722 (= e!18188 lt!6907)))

(declare-fun b!35723 () Bool)

(declare-fun lt!6898 () Bool)

(assert (=> b!35723 (= e!18197 lt!6898)))

(declare-fun b!35724 () Bool)

(declare-fun e!18206 () Bool)

(declare-fun e!18200 () Bool)

(assert (=> b!35724 (= e!18206 e!18200)))

(declare-fun res!16692 () Bool)

(assert (=> b!35724 (=> (not res!16692) (not e!18200))))

(declare-fun lt!6908 () Bool)

(assert (=> b!35724 (= res!16692 (not lt!6908))))

(declare-fun b!35725 () Bool)

(declare-fun e!18191 () Bool)

(assert (=> b!35725 (= e!18191 (not e!18188))))

(declare-fun c!7662 () Bool)

(declare-fun lt!6903 () Bool)

(assert (=> b!35725 (= c!7662 (or lt!6903 (is-Not!5 out!50)))))

(declare-fun b!35726 () Bool)

(declare-fun e!18203 () Bool)

(assert (=> b!35726 (= e!18203 lt!6902)))

(declare-fun b!35727 () Bool)

(declare-fun e!18189 () Bool)

(assert (=> b!35727 (= e!18199 (not e!18189))))

(declare-fun c!7650 () Bool)

(assert (=> b!35727 (= c!7650 (or lt!6901 (is-Implies!5 out!50) (is-Not!5 out!50)))))

(declare-fun b!35728 () Bool)

(declare-fun e!18198 () Bool)

(declare-fun res!16679 () Bool)

(assert (=> b!35728 (= e!18198 res!16679)))

(assert (=> b!35728 true))

(declare-fun b!35729 () Bool)

(assert (=> b!35729 (= e!18205 (rhs!201 out!50))))

(declare-fun d!18512 () Bool)

(declare-fun res!16681 () Bool)

(declare-fun e!18194 () Bool)

(assert (=> d!18512 (=> res!16681 e!18194)))

(declare-fun dynLambda!646 (Int Expr!4) Bool)

(assert (=> d!18512 (= res!16681 (dynLambda!646 lambda!4190 out!50))))

(assert (=> d!18512 (= (exists!6 out!50 lambda!4190) e!18194)))

(declare-fun b!35730 () Bool)

(declare-fun e!18187 () Bool)

(declare-fun e!18201 () Bool)

(assert (=> b!35730 (= e!18187 e!18201)))

(declare-fun res!16689 () Bool)

(assert (=> b!35730 (=> (not res!16689) (not e!18201))))

(declare-fun lt!6904 () Bool)

(assert (=> b!35730 (= res!16689 (not lt!6904))))

(declare-fun b!35731 () Bool)

(declare-fun e!18204 () Bool)

(declare-fun lt!6896 () Bool)

(assert (=> b!35731 (= e!18204 lt!6896)))

(declare-fun b!35732 () Bool)

(declare-fun e!18209 () Bool)

(assert (=> b!35732 (= e!18194 e!18209)))

(declare-fun c!7655 () Bool)

(declare-fun lt!6897 () Bool)

(assert (=> b!35732 (= c!7655 lt!6897)))

(assert (=> b!35732 (= lt!6896 e!18198)))

(declare-fun c!7652 () Bool)

(declare-fun e!18195 () Bool)

(assert (=> b!35732 (= c!7652 e!18195)))

(declare-fun res!16685 () Bool)

(assert (=> b!35732 (=> res!16685 e!18195)))

(declare-fun lt!6895 () Bool)

(assert (=> b!35732 (= res!16685 lt!6895)))

(assert (=> b!35732 (= lt!6895 (and lt!6897 (not lt!6898)))))

(assert (=> b!35732 (= lt!6898 e!18193)))

(declare-fun c!7651 () Bool)

(assert (=> b!35732 (= c!7651 (or lt!6897 (is-Or!5 out!50) (is-Implies!5 out!50) (is-Not!5 out!50)))))

(assert (=> b!35732 (= lt!6897 (is-And!5 out!50))))

(declare-fun b!35733 () Bool)

(assert (=> b!35733 (= e!18209 (or lt!6898 lt!6896))))

(declare-fun b!35734 () Bool)

(declare-fun res!16684 () Bool)

(assert (=> b!35734 (= e!18203 res!16684)))

(assert (=> b!35734 true))

(assert (=> b!35734 true))

(declare-fun b!35735 () Bool)

(declare-fun e!18196 () Bool)

(assert (=> b!35735 (= e!18196 lt!6898)))

(declare-fun b!35736 () Bool)

(declare-fun res!16687 () Bool)

(assert (=> b!35736 (= e!18196 res!16687)))

(assert (=> b!35736 true))

(declare-fun b!35737 () Bool)

(declare-fun e!18208 () Bool)

(declare-fun res!16683 () Bool)

(assert (=> b!35737 (= e!18208 res!16683)))

(assert (=> b!35737 true))

(declare-fun b!35738 () Bool)

(declare-fun e!18207 () Bool)

(assert (=> b!35738 (= e!18201 e!18207)))

(declare-fun res!16682 () Bool)

(assert (=> b!35738 (=> (not res!16682) (not e!18207))))

(declare-fun lt!6899 () Bool)

(assert (=> b!35738 (= res!16682 lt!6899)))

(assert (=> b!35738 (= lt!6899 (is-Implies!5 out!50))))

(declare-fun b!35739 () Bool)

(declare-fun res!16693 () Bool)

(assert (=> b!35739 (= e!18188 res!16693)))

(assert (=> b!35739 true))

(declare-fun b!35740 () Bool)

(assert (=> b!35740 (= e!18189 lt!6898)))

(declare-fun b!35741 () Bool)

(declare-fun res!16688 () Bool)

(assert (=> b!35741 (= e!18204 res!16688)))

(assert (=> b!35741 true))

(declare-fun lt!6900 () Bool)

(declare-fun lt!6906 () Bool)

(declare-fun b!35742 () Bool)

(assert (=> b!35742 (= e!18190 (ite lt!6900 (or lt!6906 lt!6905) (and (is-Not!5 out!50) lt!6906)))))

(assert (=> b!35742 (= lt!6906 e!18203)))

(declare-fun c!7657 () Bool)

(assert (=> b!35742 (= c!7657 (or lt!6900 (is-Not!5 out!50)))))

(assert (=> b!35742 (= lt!6900 (is-Implies!5 out!50))))

(declare-fun b!35743 () Bool)

(declare-fun e!18202 () Bool)

(assert (=> b!35743 (= e!18202 e!18206)))

(declare-fun res!16695 () Bool)

(assert (=> b!35743 (=> res!16695 e!18206)))

(assert (=> b!35743 (= res!16695 (and lt!6908 (not lt!6907)))))

(assert (=> b!35743 (= lt!6907 e!18197)))

(declare-fun c!7659 () Bool)

(assert (=> b!35743 (= c!7659 (or lt!6908 (is-Implies!5 out!50) (is-Not!5 out!50)))))

(assert (=> b!35743 (= lt!6908 (is-Or!5 out!50))))

(declare-fun b!35744 () Bool)

(assert (=> b!35744 (= e!18209 e!18190)))

(declare-fun c!7653 () Bool)

(assert (=> b!35744 (= c!7653 lt!6904)))

(assert (=> b!35744 (= lt!6905 e!18204)))

(declare-fun c!7656 () Bool)

(assert (=> b!35744 (= c!7656 e!18187)))

(declare-fun res!16680 () Bool)

(assert (=> b!35744 (=> res!16680 e!18187)))

(assert (=> b!35744 (= res!16680 (and lt!6904 (not lt!6902)))))

(assert (=> b!35744 (= lt!6902 e!18196)))

(declare-fun c!7661 () Bool)

(assert (=> b!35744 (= c!7661 (or lt!6904 (is-Implies!5 out!50) (is-Not!5 out!50)))))

(assert (=> b!35744 (= lt!6904 (is-Or!5 out!50))))

(declare-fun b!35745 () Bool)

(assert (=> b!35745 (= e!18198 (exists!6 e!18205 lambda!4190))))

(declare-fun c!7658 () Bool)

(assert (=> b!35745 (= c!7658 lt!6895)))

(declare-fun b!35746 () Bool)

(assert (=> b!35746 (= e!18195 e!18202)))

(declare-fun res!16696 () Bool)

(assert (=> b!35746 (=> (not res!16696) (not e!18202))))

(assert (=> b!35746 (= res!16696 (not lt!6897))))

(declare-fun b!35747 () Bool)

(assert (=> b!35747 (= e!18193 (exists!6 (ite lt!6897 (lhs!201 out!50) (ite (is-Or!5 out!50) (lhs!203 out!50) (ite (is-Implies!5 out!50) (lhs!202 out!50) (e!18106 out!50)))) lambda!4190))))

(declare-fun b!35748 () Bool)

(assert (=> b!35748 (= e!18207 (not e!18208))))

(declare-fun c!7660 () Bool)

(assert (=> b!35748 (= c!7660 (or lt!6899 (is-Not!5 out!50)))))

(declare-fun b!35749 () Bool)

(assert (=> b!35749 (= e!18208 lt!6902)))

(declare-fun b!35750 () Bool)

(assert (=> b!35750 (= e!18200 e!18191)))

(declare-fun res!16678 () Bool)

(assert (=> b!35750 (=> (not res!16678) (not e!18191))))

(assert (=> b!35750 (= res!16678 lt!6903)))

(assert (=> b!35750 (= lt!6903 (is-Implies!5 out!50))))

(declare-fun b!35751 () Bool)

(assert (=> b!35751 (= e!18192 (rhs!202 out!50))))

(declare-fun b!35752 () Bool)

(declare-fun res!16690 () Bool)

(assert (=> b!35752 (= e!18189 res!16690)))

(assert (=> b!35752 true))

(declare-fun b!35753 () Bool)

(assert (=> b!35753 (= e!18192 (rhs!203 out!50))))

(assert (= (and d!18512 (not res!16681)) b!35732))

(assert (= (and b!35732 c!7651) b!35747))

(assert (= (and b!35732 (not c!7651)) b!35721))

(assert (= (and b!35732 (not res!16685)) b!35746))

(assert (= (and b!35746 res!16696) b!35743))

(assert (= (and b!35743 c!7659) b!35723))

(assert (= (and b!35743 (not c!7659)) b!35718))

(assert (= (and b!35743 (not res!16695)) b!35724))

(assert (= (and b!35724 res!16692) b!35750))

(assert (= (and b!35750 res!16678) b!35725))

(assert (= (and b!35725 c!7662) b!35722))

(assert (= (and b!35725 (not c!7662)) b!35739))

(assert (= (and b!35720 res!16686) b!35727))

(assert (= (and b!35727 c!7650) b!35740))

(assert (= (and b!35727 (not c!7650)) b!35752))

(assert (= (and b!35720 c!7654) b!35753))

(assert (= (and b!35720 (not c!7654)) b!35751))

(assert (= (and b!35745 c!7658) b!35729))

(assert (= (and b!35745 (not c!7658)) b!35720))

(assert (= (and b!35732 c!7652) b!35745))

(assert (= (and b!35732 (not c!7652)) b!35728))

(assert (= (and b!35744 c!7661) b!35735))

(assert (= (and b!35744 (not c!7661)) b!35736))

(assert (= (and b!35744 (not res!16680)) b!35730))

(assert (= (and b!35730 res!16689) b!35738))

(assert (= (and b!35738 res!16682) b!35748))

(assert (= (and b!35748 c!7660) b!35749))

(assert (= (and b!35748 (not c!7660)) b!35737))

(assert (= (and b!35744 c!7656) b!35731))

(assert (= (and b!35744 (not c!7656)) b!35741))

(assert (= (and b!35742 c!7657) b!35726))

(assert (= (and b!35742 (not c!7657)) b!35734))

(assert (= (and b!35744 c!7653) b!35719))

(assert (= (and b!35744 (not c!7653)) b!35742))

(assert (= (and b!35732 c!7655) b!35733))

(assert (= (and b!35732 (not c!7655)) b!35744))

(declare-fun b_lambda!9587 () Bool)

(assert (=> (not b_lambda!9587) (not d!18512)))

(declare-fun m!38139 () Bool)

(assert (=> d!18512 m!38139))

(declare-fun m!38141 () Bool)

(assert (=> b!35745 m!38141))

(declare-fun m!38143 () Bool)

(assert (=> b!35747 m!38143))

(assert (=> b!35585 d!18512))

(declare-fun b!35826 () Bool)

(declare-fun e!18260 () Bool)

(declare-fun e!18268 () Bool)

(assert (=> b!35826 (= e!18260 e!18268)))

(declare-fun res!16773 () Bool)

(assert (=> b!35826 (=> (not res!16773) (not e!18268))))

(declare-fun lt!6942 () Bool)

(assert (=> b!35826 (= res!16773 (not lt!6942))))

(declare-fun b!35827 () Bool)

(declare-fun e!18273 () Bool)

(declare-fun res!16758 () Bool)

(assert (=> b!35827 (= e!18273 res!16758)))

(assert (=> b!35827 true))

(declare-fun b!35828 () Bool)

(declare-fun e!18271 () Bool)

(declare-fun res!16759 () Bool)

(assert (=> b!35828 (= e!18271 res!16759)))

(assert (=> b!35828 true))

(declare-fun b!35829 () Bool)

(declare-fun e!18279 () Bool)

(declare-fun e!18259 () Bool)

(assert (=> b!35829 (= e!18279 (not e!18259))))

(declare-fun c!7698 () Bool)

(declare-fun lt!6949 () Bool)

(assert (=> b!35829 (= c!7698 (or lt!6949 (is-Not!5 out!50)))))

(declare-fun b!35830 () Bool)

(declare-fun e!18265 () Bool)

(declare-fun lt!6937 () Bool)

(assert (=> b!35830 (= e!18265 lt!6937)))

(declare-fun b!35831 () Bool)

(declare-fun e!18258 () Bool)

(declare-fun e!18278 () Bool)

(assert (=> b!35831 (= e!18258 e!18278)))

(declare-fun c!7695 () Bool)

(declare-fun lt!6948 () Bool)

(assert (=> b!35831 (= c!7695 lt!6948)))

(declare-fun lt!6941 () Bool)

(declare-fun e!18262 () Bool)

(assert (=> b!35831 (= lt!6941 e!18262)))

(declare-fun c!7690 () Bool)

(declare-fun e!18275 () Bool)

(assert (=> b!35831 (= c!7690 e!18275)))

(declare-fun res!16757 () Bool)

(assert (=> b!35831 (=> res!16757 e!18275)))

(declare-fun lt!6938 () Bool)

(assert (=> b!35831 (= res!16757 (and lt!6948 (not lt!6938)))))

(declare-fun e!18267 () Bool)

(assert (=> b!35831 (= lt!6938 e!18267)))

(declare-fun c!7691 () Bool)

(assert (=> b!35831 (= c!7691 (or lt!6948 (is-Not!5 out!50)))))

(assert (=> b!35831 (= lt!6948 (is-Or!5 out!50))))

(declare-fun b!35832 () Bool)

(declare-fun e!18277 () Bool)

(assert (=> b!35832 (= e!18277 lt!6938)))

(declare-fun b!35833 () Bool)

(declare-fun e!18276 () Expr!4)

(declare-fun e!18261 () Expr!4)

(assert (=> b!35833 (= e!18276 e!18261)))

(declare-fun c!7692 () Bool)

(declare-fun e!18264 () Bool)

(assert (=> b!35833 (= c!7692 e!18264)))

(declare-fun res!16766 () Bool)

(assert (=> b!35833 (=> (not res!16766) (not e!18264))))

(declare-fun lt!6947 () Bool)

(assert (=> b!35833 (= res!16766 lt!6947)))

(assert (=> b!35833 (= lt!6947 (is-Or!5 out!50))))

(declare-fun b!35834 () Bool)

(declare-fun res!16770 () Bool)

(assert (=> b!35834 (= e!18277 res!16770)))

(assert (=> b!35834 true))

(assert (=> b!35834 true))

(declare-fun b!35835 () Bool)

(assert (=> b!35835 (= e!18261 (rhs!202 out!50))))

(declare-fun b!35836 () Bool)

(declare-fun e!18270 () Bool)

(declare-fun e!18269 () Bool)

(assert (=> b!35836 (= e!18270 (not e!18269))))

(declare-fun c!7693 () Bool)

(declare-fun lt!6944 () Bool)

(assert (=> b!35836 (= c!7693 (or lt!6944 (is-Not!5 out!50)))))

(declare-fun b!35837 () Bool)

(declare-fun e!18266 () Bool)

(assert (=> b!35837 (= e!18266 lt!6937)))

(declare-fun b!35838 () Bool)

(assert (=> b!35838 (= e!18268 e!18279)))

(declare-fun res!16765 () Bool)

(assert (=> b!35838 (=> (not res!16765) (not e!18279))))

(assert (=> b!35838 (= res!16765 lt!6949)))

(assert (=> b!35838 (= lt!6949 false)))

(declare-fun b!35839 () Bool)

(declare-fun lt!6945 () Bool)

(assert (=> b!35839 (= e!18258 (or lt!6937 lt!6945))))

(declare-fun b!35840 () Bool)

(assert (=> b!35840 (= e!18278 (or lt!6938 lt!6941))))

(declare-fun b!35841 () Bool)

(declare-fun res!16771 () Bool)

(assert (=> b!35841 (= e!18265 res!16771)))

(assert (=> b!35841 true))

(declare-fun b!35842 () Bool)

(declare-fun lt!6943 () Bool)

(assert (=> b!35842 (= e!18259 lt!6943)))

(declare-fun b!35843 () Bool)

(declare-fun e!18257 () Bool)

(declare-fun e!18272 () Bool)

(assert (=> b!35843 (= e!18257 e!18272)))

(declare-fun res!16761 () Bool)

(assert (=> b!35843 (=> (not res!16761) (not e!18272))))

(declare-fun lt!6946 () Bool)

(assert (=> b!35843 (= res!16761 (not lt!6946))))

(declare-fun b!35844 () Bool)

(assert (=> b!35844 (= e!18271 (existsImplies!0 (ite lt!6946 (lhs!201 out!50) (ite (is-Or!5 out!50) (lhs!203 out!50) (ite false (lhs!202 out!50) (e!18106 out!50))))))))

(declare-fun b!35845 () Bool)

(assert (=> b!35845 (= e!18272 e!18260)))

(declare-fun res!16763 () Bool)

(assert (=> b!35845 (=> res!16763 e!18260)))

(assert (=> b!35845 (= res!16763 (and lt!6942 (not lt!6943)))))

(assert (=> b!35845 (= lt!6943 e!18266)))

(declare-fun c!7700 () Bool)

(assert (=> b!35845 (= c!7700 (or lt!6942 (is-Not!5 out!50)))))

(assert (=> b!35845 (= lt!6942 (is-Or!5 out!50))))

(declare-fun b!35846 () Bool)

(declare-fun res!16768 () Bool)

(assert (=> b!35846 (= e!18269 res!16768)))

(assert (=> b!35846 true))

(declare-fun b!35847 () Bool)

(declare-fun e!18274 () Bool)

(assert (=> b!35847 (= e!18274 e!18258)))

(declare-fun c!7701 () Bool)

(assert (=> b!35847 (= c!7701 lt!6946)))

(assert (=> b!35847 (= lt!6945 e!18273)))

(declare-fun c!7689 () Bool)

(assert (=> b!35847 (= c!7689 e!18257)))

(declare-fun res!16762 () Bool)

(assert (=> b!35847 (=> res!16762 e!18257)))

(declare-fun lt!6939 () Bool)

(assert (=> b!35847 (= res!16762 lt!6939)))

(assert (=> b!35847 (= lt!6939 (and lt!6946 (not lt!6937)))))

(assert (=> b!35847 (= lt!6937 e!18271)))

(declare-fun c!7696 () Bool)

(assert (=> b!35847 (= c!7696 (or lt!6946 (is-Or!5 out!50) (is-Not!5 out!50)))))

(assert (=> b!35847 (= lt!6946 (is-And!5 out!50))))

(declare-fun b!35848 () Bool)

(declare-fun res!16772 () Bool)

(assert (=> b!35848 (= e!18267 res!16772)))

(assert (=> b!35848 true))

(declare-fun b!35849 () Bool)

(assert (=> b!35849 (= e!18269 lt!6938)))

(declare-fun b!35850 () Bool)

(assert (=> b!35850 (= e!18264 (not e!18265))))

(declare-fun c!7699 () Bool)

(assert (=> b!35850 (= c!7699 (or lt!6947 (is-Not!5 out!50)))))

(declare-fun d!18514 () Bool)

(declare-fun res!16769 () Bool)

(assert (=> d!18514 (=> res!16769 e!18274)))

(assert (=> d!18514 (= res!16769 (is-Implies!5 out!50))))

(assert (=> d!18514 (= (existsImplies!0 out!50) e!18274)))

(declare-fun b!35851 () Bool)

(assert (=> b!35851 (= e!18267 lt!6937)))

(declare-fun b!35852 () Bool)

(declare-fun lt!6950 () Bool)

(declare-fun lt!6940 () Bool)

(assert (=> b!35852 (= e!18278 (ite lt!6940 (or lt!6950 lt!6941) (and (is-Not!5 out!50) lt!6950)))))

(assert (=> b!35852 (= lt!6950 e!18277)))

(declare-fun c!7697 () Bool)

(assert (=> b!35852 (= c!7697 (or lt!6940 (is-Not!5 out!50)))))

(assert (=> b!35852 (= lt!6940 false)))

(declare-fun b!35853 () Bool)

(declare-fun e!18263 () Bool)

(assert (=> b!35853 (= e!18275 e!18263)))

(declare-fun res!16755 () Bool)

(assert (=> b!35853 (=> (not res!16755) (not e!18263))))

(assert (=> b!35853 (= res!16755 (not lt!6948))))

(declare-fun b!35854 () Bool)

(assert (=> b!35854 (= e!18263 e!18270)))

(declare-fun res!16767 () Bool)

(assert (=> b!35854 (=> (not res!16767) (not e!18270))))

(assert (=> b!35854 (= res!16767 lt!6944)))

(assert (=> b!35854 (= lt!6944 false)))

(declare-fun b!35855 () Bool)

(assert (=> b!35855 (= e!18273 (existsImplies!0 e!18276))))

(declare-fun c!7694 () Bool)

(assert (=> b!35855 (= c!7694 lt!6939)))

(declare-fun b!35856 () Bool)

(assert (=> b!35856 (= e!18262 lt!6945)))

(declare-fun b!35857 () Bool)

(declare-fun res!16760 () Bool)

(assert (=> b!35857 (= e!18262 res!16760)))

(assert (=> b!35857 true))

(declare-fun b!35858 () Bool)

(declare-fun res!16764 () Bool)

(assert (=> b!35858 (= e!18259 res!16764)))

(assert (=> b!35858 true))

(declare-fun b!35859 () Bool)

(declare-fun res!16756 () Bool)

(assert (=> b!35859 (= e!18266 res!16756)))

(assert (=> b!35859 true))

(declare-fun b!35860 () Bool)

(assert (=> b!35860 (= e!18276 (rhs!201 out!50))))

(declare-fun b!35861 () Bool)

(assert (=> b!35861 (= e!18261 (rhs!203 out!50))))

(assert (= (and d!18514 (not res!16769)) b!35847))

(assert (= (and b!35847 c!7696) b!35844))

(assert (= (and b!35847 (not c!7696)) b!35828))

(assert (= (and b!35847 (not res!16762)) b!35843))

(assert (= (and b!35843 res!16761) b!35845))

(assert (= (and b!35845 c!7700) b!35837))

(assert (= (and b!35845 (not c!7700)) b!35859))

(assert (= (and b!35845 (not res!16763)) b!35826))

(assert (= (and b!35826 res!16773) b!35838))

(assert (= (and b!35838 res!16765) b!35829))

(assert (= (and b!35829 c!7698) b!35842))

(assert (= (and b!35829 (not c!7698)) b!35858))

(assert (= (and b!35833 res!16766) b!35850))

(assert (= (and b!35850 c!7699) b!35830))

(assert (= (and b!35850 (not c!7699)) b!35841))

(assert (= (and b!35833 c!7692) b!35861))

(assert (= (and b!35833 (not c!7692)) b!35835))

(assert (= (and b!35855 c!7694) b!35860))

(assert (= (and b!35855 (not c!7694)) b!35833))

(assert (= (and b!35847 c!7689) b!35855))

(assert (= (and b!35847 (not c!7689)) b!35827))

(assert (= (and b!35831 c!7691) b!35851))

(assert (= (and b!35831 (not c!7691)) b!35848))

(assert (= (and b!35831 (not res!16757)) b!35853))

(assert (= (and b!35853 res!16755) b!35854))

(assert (= (and b!35854 res!16767) b!35836))

(assert (= (and b!35836 c!7693) b!35849))

(assert (= (and b!35836 (not c!7693)) b!35846))

(assert (= (and b!35831 c!7690) b!35856))

(assert (= (and b!35831 (not c!7690)) b!35857))

(assert (= (and b!35852 c!7697) b!35832))

(assert (= (and b!35852 (not c!7697)) b!35834))

(assert (= (and b!35831 c!7695) b!35840))

(assert (= (and b!35831 (not c!7695)) b!35852))

(assert (= (and b!35847 c!7701) b!35839))

(assert (= (and b!35847 (not c!7701)) b!35831))

(declare-fun m!38145 () Bool)

(assert (=> b!35844 m!38145))

(declare-fun m!38147 () Bool)

(assert (=> b!35855 m!38147))

(assert (=> b!35584 d!18514))

(declare-fun b_lambda!9589 () Bool)

(assert (= b_lambda!9587 (or b!35585 b_lambda!9589)))

(declare-fun bs!11308 () Bool)

(declare-fun d!18516 () Bool)

(assert (= bs!11308 (and d!18516 b!35585)))

(assert (=> bs!11308 (= (dynLambda!646 lambda!4190 out!50) (is-Implies!5 out!50))))

(assert (=> d!18512 d!18516))

(push 1)

(assert (not d!18510))

(assert (not b!35632))

(assert (not b!35617))

(assert (not b!35633))

(assert (not b!35747))

(assert (not b!35855))

(assert (not b!35638))

(assert (not d!18508))

(assert (not b!35618))

(assert (not b!35844))

(assert (not b_lambda!9589))

(assert (not b!35623))

(assert (not b!35745))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


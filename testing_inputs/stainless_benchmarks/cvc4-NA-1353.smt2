; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9488 () Bool)

(assert start!9488)

(declare-fun res!33936 () Bool)

(declare-fun e!37706 () Bool)

(assert (=> start!9488 (=> (not res!33936) (not e!37706))))

(declare-datatypes () ((Formula!53 (And!58 (lhs!962 Formula!53) (rhs!962 Formula!53)) (Literal!52 (id!4833 Int)) (Implies!58 (lhs!963 Formula!53) (rhs!963 Formula!53)) (Or!58 (lhs!964 Formula!53) (rhs!964 Formula!53)) (Not!58 (f!4215 Formula!53)))))

(declare-fun formula!50 () Formula!53)

(assert (=> start!9488 (= res!33936 (and (not (is-And!58 formula!50)) (not (is-Or!58 formula!50)) (is-Implies!58 formula!50)))))

(assert (=> start!9488 e!37706))

(assert (=> start!9488 true))

(declare-fun b!69677 () Bool)

(declare-fun res!33937 () Bool)

(assert (=> b!69677 (=> (not res!33937) (not e!37706))))

(declare-fun x$2!364 () Formula!53)

(declare-fun nnf!1 (Formula!53) Formula!53)

(assert (=> b!69677 (= res!33937 (= x$2!364 (nnf!1 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))))))

(declare-fun b!69678 () Bool)

(declare-fun isNNF!1 (Formula!53) Bool)

(assert (=> b!69678 (= e!37706 (not (isNNF!1 x$2!364)))))

(assert (= (and start!9488 res!33936) b!69677))

(assert (= (and b!69677 res!33937) b!69678))

(declare-fun m!70499 () Bool)

(assert (=> b!69677 m!70499))

(declare-fun m!70501 () Bool)

(assert (=> b!69678 m!70501))

(push 1)

(assert (not b!69678))

(assert (not b!69677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!69693 () Bool)

(declare-fun e!37717 () Bool)

(assert (=> b!69693 (= e!37717 (and (not (is-Implies!58 x$2!364)) (or (and (is-Not!58 x$2!364) (is-Literal!52 (f!4215 x$2!364))) (not (is-Not!58 x$2!364)))))))

(declare-fun d!53638 () Bool)

(declare-fun c!16462 () Bool)

(declare-fun lt!14595 () Bool)

(assert (=> d!53638 (= c!16462 (or lt!14595 (is-Or!58 x$2!364)))))

(declare-fun lt!14596 () Bool)

(declare-fun lt!14594 () Bool)

(assert (=> d!53638 (= lt!14596 (and lt!14595 lt!14594))))

(declare-fun e!37718 () Bool)

(assert (=> d!53638 (= lt!14594 e!37718)))

(declare-fun c!16461 () Bool)

(assert (=> d!53638 (= c!16461 (or lt!14595 (is-Or!58 x$2!364)))))

(assert (=> d!53638 (= lt!14595 (is-And!58 x$2!364))))

(assert (=> d!53638 (= (isNNF!1 x$2!364) e!37717)))

(declare-fun b!69694 () Bool)

(declare-fun e!37715 () Bool)

(declare-fun res!33952 () Bool)

(assert (=> b!69694 (= e!37715 res!33952)))

(assert (=> b!69694 true))

(assert (=> b!69694 true))

(declare-fun b!69695 () Bool)

(declare-fun e!37716 () Bool)

(assert (=> b!69695 (= e!37716 e!37715)))

(declare-fun c!16463 () Bool)

(assert (=> b!69695 (= c!16463 (or lt!14596 (and (not lt!14595) (is-Or!58 x$2!364) lt!14594)))))

(declare-fun b!69696 () Bool)

(assert (=> b!69696 (= e!37717 e!37716)))

(declare-fun res!33950 () Bool)

(assert (=> b!69696 (=> (not res!33950) (not e!37716))))

(assert (=> b!69696 (= res!33950 lt!14594)))

(declare-fun b!69697 () Bool)

(declare-fun res!33951 () Bool)

(assert (=> b!69697 (= e!37718 res!33951)))

(assert (=> b!69697 true))

(declare-fun b!69698 () Bool)

(assert (=> b!69698 (= e!37718 (isNNF!1 (ite lt!14595 (lhs!962 x$2!364) (lhs!964 x$2!364))))))

(declare-fun b!69699 () Bool)

(assert (=> b!69699 (= e!37715 (isNNF!1 (ite lt!14596 (rhs!962 x$2!364) (rhs!964 x$2!364))))))

(assert (= (and d!53638 c!16461) b!69698))

(assert (= (and d!53638 (not c!16461)) b!69697))

(assert (= (and b!69696 res!33950) b!69695))

(assert (= (and b!69695 c!16463) b!69699))

(assert (= (and b!69695 (not c!16463)) b!69694))

(assert (= (and d!53638 c!16462) b!69696))

(assert (= (and d!53638 (not c!16462)) b!69693))

(declare-fun m!70503 () Bool)

(assert (=> b!69698 m!70503))

(declare-fun m!70505 () Bool)

(assert (=> b!69699 m!70505))

(assert (=> b!69678 d!53638))

(declare-fun b!69760 () Bool)

(declare-fun e!37750 () Formula!53)

(declare-fun lt!14645 () Bool)

(assert (=> b!69760 (= e!37750 (nnf!1 (ite lt!14645 (rhs!962 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (ite (is-Or!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (rhs!964 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (ite (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-And!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (Not!58 (rhs!962 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (ite (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Or!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (Not!58 (rhs!964 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (Not!58 (rhs!963 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))))))))))))

(declare-fun b!69761 () Bool)

(declare-fun e!37757 () Formula!53)

(declare-fun lt!14647 () Formula!53)

(assert (=> b!69761 (= e!37757 lt!14647)))

(declare-fun b!69762 () Bool)

(declare-fun e!37763 () Formula!53)

(declare-fun lt!14640 () Formula!53)

(declare-fun lt!14635 () Formula!53)

(assert (=> b!69762 (= e!37763 (And!58 lt!14640 lt!14635))))

(declare-fun b!69763 () Bool)

(declare-fun lt!14636 () Bool)

(declare-fun lt!14631 () Formula!53)

(assert (=> b!69763 (= e!37763 (ite lt!14636 (And!58 lt!14631 lt!14635) (ite (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Not!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) lt!14631 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))))))

(declare-fun e!37762 () Formula!53)

(assert (=> b!69763 (= lt!14631 e!37762)))

(declare-fun c!16496 () Bool)

(assert (=> b!69763 (= c!16496 (or lt!14636 (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Not!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))))))))

(assert (=> b!69763 (= lt!14636 (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Implies!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))))))

(declare-fun b!69764 () Bool)

(declare-fun e!37755 () Formula!53)

(declare-fun lt!14634 () Formula!53)

(assert (=> b!69764 (= e!37755 lt!14634)))

(declare-fun b!69765 () Bool)

(declare-fun e!37761 () Formula!53)

(declare-fun lt!14646 () Formula!53)

(assert (=> b!69765 (= e!37761 lt!14646)))

(declare-fun b!69766 () Bool)

(declare-fun e!37759 () Formula!53)

(assert (=> b!69766 (= e!37759 (Or!58 lt!14646 lt!14634))))

(declare-fun b!69767 () Bool)

(declare-fun e!37758 () Formula!53)

(declare-fun res!34004 () Formula!53)

(assert (=> b!69767 (= e!37758 res!34004)))

(assert (=> b!69767 true))

(declare-fun b!69768 () Bool)

(declare-fun e!37749 () Formula!53)

(declare-fun lt!14639 () Formula!53)

(assert (=> b!69768 (= e!37749 (And!58 lt!14647 lt!14639))))

(declare-fun b!69769 () Bool)

(declare-fun e!37754 () Formula!53)

(declare-fun lt!14641 () Formula!53)

(assert (=> b!69769 (= e!37754 lt!14641)))

(declare-fun b!69770 () Bool)

(declare-fun res!34009 () Formula!53)

(assert (=> b!69770 (= e!37755 res!34009)))

(assert (=> b!69770 true))

(declare-fun b!69771 () Bool)

(declare-fun e!37760 () Formula!53)

(declare-fun e!37753 () Formula!53)

(assert (=> b!69771 (= e!37760 e!37753)))

(declare-fun c!16506 () Bool)

(declare-fun lt!14632 () Bool)

(assert (=> b!69771 (= c!16506 lt!14632)))

(declare-fun e!37756 () Formula!53)

(assert (=> b!69771 (= lt!14641 e!37756)))

(declare-fun c!16497 () Bool)

(assert (=> b!69771 (= c!16497 (or lt!14632 (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-And!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Or!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Implies!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Not!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))))))))

(assert (=> b!69771 (= lt!14632 (is-Implies!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))))

(declare-fun b!69772 () Bool)

(declare-fun e!37752 () Formula!53)

(declare-fun res!34012 () Formula!53)

(assert (=> b!69772 (= e!37752 res!34012)))

(assert (=> b!69772 true))

(declare-fun b!69773 () Bool)

(declare-fun lt!14643 () Formula!53)

(assert (=> b!69773 (= e!37756 lt!14643)))

(declare-fun b!69774 () Bool)

(assert (=> b!69774 (= e!37759 e!37763)))

(declare-fun c!16507 () Bool)

(declare-fun lt!14633 () Bool)

(assert (=> b!69774 (= c!16507 lt!14633)))

(assert (=> b!69774 (= lt!14635 e!37755)))

(declare-fun c!16494 () Bool)

(assert (=> b!69774 (= c!16494 (or lt!14633 (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Implies!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))))))))

(assert (=> b!69774 (= lt!14640 e!37761)))

(declare-fun c!16502 () Bool)

(assert (=> b!69774 (= c!16502 (or lt!14633 (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Implies!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Not!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))))))))

(assert (=> b!69774 (= lt!14633 (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Or!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))))))

(declare-fun b!69775 () Bool)

(assert (=> b!69775 (= e!37753 lt!14641)))

(declare-fun b!69776 () Bool)

(assert (=> b!69776 (= e!37749 e!37760)))

(declare-fun c!16499 () Bool)

(declare-fun lt!14644 () Bool)

(assert (=> b!69776 (= c!16499 lt!14644)))

(declare-fun lt!14638 () Formula!53)

(declare-fun e!37751 () Formula!53)

(assert (=> b!69776 (= lt!14638 e!37751)))

(declare-fun c!16508 () Bool)

(assert (=> b!69776 (= c!16508 (or lt!14644 (and (not (is-Implies!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))) (or (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-And!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Or!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Implies!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))))))))))

(assert (=> b!69776 (= lt!14643 e!37757)))

(declare-fun c!16504 () Bool)

(assert (=> b!69776 (= c!16504 (or lt!14644 (is-Implies!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-And!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Or!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Implies!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Not!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))))))))

(assert (=> b!69776 (= lt!14644 (is-Or!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))))

(declare-fun b!69777 () Bool)

(declare-fun res!34010 () Formula!53)

(assert (=> b!69777 (= e!37761 res!34010)))

(assert (=> b!69777 true))

(declare-fun b!69778 () Bool)

(declare-fun res!34003 () Formula!53)

(assert (=> b!69778 (= e!37756 res!34003)))

(assert (=> b!69778 true))

(declare-fun b!69779 () Bool)

(declare-fun res!34007 () Formula!53)

(assert (=> b!69779 (= e!37750 res!34007)))

(assert (=> b!69779 true))

(declare-fun b!69780 () Bool)

(assert (=> b!69780 (= e!37762 lt!14640)))

(declare-fun b!69781 () Bool)

(declare-fun res!34008 () Formula!53)

(assert (=> b!69781 (= e!37754 res!34008)))

(assert (=> b!69781 true))

(declare-fun b!69782 () Bool)

(declare-fun res!34006 () Formula!53)

(assert (=> b!69782 (= e!37757 res!34006)))

(assert (=> b!69782 true))

(declare-fun b!69783 () Bool)

(assert (=> b!69783 (= e!37751 lt!14639)))

(declare-fun b!69784 () Bool)

(assert (=> b!69784 (= e!37758 lt!14638)))

(declare-fun b!69785 () Bool)

(assert (=> b!69785 (= e!37752 (nnf!1 (ite lt!14645 (lhs!962 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (ite (is-Or!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (lhs!964 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (ite (is-Implies!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (Or!58 (Not!58 (lhs!963 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))) (rhs!963 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))) (ite (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-And!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (Not!58 (lhs!962 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (ite (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Or!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (Not!58 (lhs!964 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (ite (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Implies!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (lhs!963 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))) (f!4215 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))))))))))))

(declare-fun b!69786 () Bool)

(assert (=> b!69786 (= e!37753 e!37759)))

(declare-fun c!16501 () Bool)

(declare-fun lt!14637 () Bool)

(assert (=> b!69786 (= c!16501 lt!14637)))

(assert (=> b!69786 (= lt!14634 e!37758)))

(declare-fun c!16498 () Bool)

(assert (=> b!69786 (= c!16498 (or lt!14637 (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Or!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Implies!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))))))))

(assert (=> b!69786 (= lt!14646 e!37754)))

(declare-fun c!16503 () Bool)

(assert (=> b!69786 (= c!16503 (or lt!14637 (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Or!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Implies!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Not!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))))))))

(assert (=> b!69786 (= lt!14637 (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-And!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))))))

(declare-fun b!69787 () Bool)

(assert (=> b!69787 (= e!37760 (Or!58 lt!14643 lt!14638))))

(declare-fun b!69788 () Bool)

(declare-fun res!34011 () Formula!53)

(assert (=> b!69788 (= e!37762 res!34011)))

(assert (=> b!69788 true))

(assert (=> b!69788 true))

(declare-fun d!53640 () Bool)

(declare-fun lt!14642 () Formula!53)

(assert (=> d!53640 (isNNF!1 lt!14642)))

(assert (=> d!53640 (= lt!14642 e!37749)))

(declare-fun c!16495 () Bool)

(assert (=> d!53640 (= c!16495 lt!14645)))

(assert (=> d!53640 (= lt!14639 e!37750)))

(declare-fun c!16500 () Bool)

(assert (=> d!53640 (= c!16500 (or lt!14645 (is-Or!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (and (not (is-Implies!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))) (or (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-And!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Or!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Implies!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))))))))))

(assert (=> d!53640 (= lt!14647 e!37752)))

(declare-fun c!16505 () Bool)

(assert (=> d!53640 (= c!16505 (or lt!14645 (is-Or!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Implies!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-And!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Or!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Implies!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))) (and (is-Not!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) (is-Not!58 (f!4215 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50)))))))))

(assert (=> d!53640 (= lt!14645 (is-And!58 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))))))

(assert (=> d!53640 (= (nnf!1 (Or!58 (Not!58 (lhs!963 formula!50)) (rhs!963 formula!50))) lt!14642)))

(declare-fun b!69789 () Bool)

(declare-fun res!34005 () Formula!53)

(assert (=> b!69789 (= e!37751 res!34005)))

(assert (=> b!69789 true))

(assert (= (and d!53640 c!16505) b!69785))

(assert (= (and d!53640 (not c!16505)) b!69772))

(assert (= (and d!53640 c!16500) b!69760))

(assert (= (and d!53640 (not c!16500)) b!69779))

(assert (= (and b!69776 c!16504) b!69761))

(assert (= (and b!69776 (not c!16504)) b!69782))

(assert (= (and b!69776 c!16508) b!69783))

(assert (= (and b!69776 (not c!16508)) b!69789))

(assert (= (and b!69771 c!16497) b!69773))

(assert (= (and b!69771 (not c!16497)) b!69778))

(assert (= (and b!69786 c!16503) b!69769))

(assert (= (and b!69786 (not c!16503)) b!69781))

(assert (= (and b!69786 c!16498) b!69784))

(assert (= (and b!69786 (not c!16498)) b!69767))

(assert (= (and b!69774 c!16502) b!69765))

(assert (= (and b!69774 (not c!16502)) b!69777))

(assert (= (and b!69774 c!16494) b!69764))

(assert (= (and b!69774 (not c!16494)) b!69770))

(assert (= (and b!69763 c!16496) b!69780))

(assert (= (and b!69763 (not c!16496)) b!69788))

(assert (= (and b!69774 c!16507) b!69762))

(assert (= (and b!69774 (not c!16507)) b!69763))

(assert (= (and b!69786 c!16501) b!69766))

(assert (= (and b!69786 (not c!16501)) b!69774))

(assert (= (and b!69771 c!16506) b!69775))

(assert (= (and b!69771 (not c!16506)) b!69786))

(assert (= (and b!69776 c!16499) b!69787))

(assert (= (and b!69776 (not c!16499)) b!69771))

(assert (= (and d!53640 c!16495) b!69768))

(assert (= (and d!53640 (not c!16495)) b!69776))

(declare-fun m!70507 () Bool)

(assert (=> b!69760 m!70507))

(declare-fun m!70509 () Bool)

(assert (=> b!69785 m!70509))

(declare-fun m!70511 () Bool)

(assert (=> d!53640 m!70511))

(assert (=> b!69677 d!53640))

(push 1)

(assert (not b!69760))

(assert (not d!53640))

(assert (not b!69785))

(assert (not b!69698))

(assert (not b!69699))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


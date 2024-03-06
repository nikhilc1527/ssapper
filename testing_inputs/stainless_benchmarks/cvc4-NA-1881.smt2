; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12612 () Bool)

(assert start!12612)

(declare-fun res!48843 () Bool)

(declare-fun e!50800 () Bool)

(assert (=> start!12612 (=> (not res!48843) (not e!50800))))

(declare-datatypes () ((List!798 (Cons!740 (head!1170 (_ BitVec 32)) (tail!1166 List!798)) (Nil!742))))

(declare-fun l1!498 () List!798)

(declare-fun l2!490 () List!798)

(assert (=> start!12612 (= res!48843 (and (not (is-Cons!740 l1!498)) (not (is-Nil!742 l2!490))))))

(assert (=> start!12612 e!50800))

(assert (=> start!12612 true))

(declare-fun b!92857 () Bool)

(declare-fun res!48844 () Bool)

(assert (=> b!92857 (=> (not res!48844) (not e!50800))))

(declare-fun x$8!108 () List!798)

(declare-fun l3!58 () List!798)

(declare-fun concat0!1 (List!798 List!798 List!798) List!798)

(assert (=> b!92857 (= res!48844 (= x$8!108 (concat0!1 Nil!742 (tail!1166 l2!490) (Cons!740 (head!1170 l2!490) l3!58))))))

(declare-fun b!92858 () Bool)

(declare-fun content!31 (List!798) (Set (_ BitVec 32)))

(assert (=> b!92858 (= e!50800 (not (= (content!31 x$8!108) (union (union (content!31 l1!498) (content!31 l2!490)) (content!31 l3!58)))))))

(assert (= (and start!12612 res!48843) b!92857))

(assert (= (and b!92857 res!48844) b!92858))

(declare-fun m!88464 () Bool)

(assert (=> b!92857 m!88464))

(declare-fun m!88466 () Bool)

(assert (=> b!92858 m!88466))

(declare-fun m!88468 () Bool)

(assert (=> b!92858 m!88468))

(declare-fun m!88470 () Bool)

(assert (=> b!92858 m!88470))

(declare-fun m!88472 () Bool)

(assert (=> b!92858 m!88472))

(push 1)

(assert (not b!92857))

(assert (not b!92858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!92883 () Bool)

(declare-fun e!50816 () List!798)

(declare-fun e!50813 () List!798)

(assert (=> b!92883 (= e!50816 e!50813)))

(declare-fun c!22688 () Bool)

(declare-fun lt!21049 () Bool)

(assert (=> b!92883 (= c!22688 (and lt!21049 (is-Nil!742 (tail!1166 l2!490))))))

(declare-fun lt!21051 () List!798)

(declare-fun e!50814 () List!798)

(assert (=> b!92883 (= lt!21051 e!50814)))

(declare-fun c!22686 () Bool)

(declare-fun lt!21050 () Bool)

(assert (=> b!92883 (= c!22686 (or lt!21050 (not lt!21049)))))

(assert (=> b!92883 (= lt!21050 (and lt!21049 (not (is-Nil!742 (tail!1166 l2!490)))))))

(assert (=> b!92883 (= lt!21049 (is-Nil!742 Nil!742))))

(declare-fun b!92884 () Bool)

(declare-fun res!48860 () List!798)

(assert (=> b!92884 (= e!50814 res!48860)))

(assert (=> b!92884 true))

(declare-fun b!92885 () Bool)

(declare-fun e!50817 () List!798)

(declare-fun lt!21047 () List!798)

(assert (=> b!92885 (= e!50817 lt!21047)))

(declare-fun d!60724 () Bool)

(declare-fun lt!21048 () List!798)

(assert (=> d!60724 (= (content!31 lt!21048) (union (union (content!31 Nil!742) (content!31 (tail!1166 l2!490))) (content!31 (Cons!740 (head!1170 l2!490) l3!58))))))

(assert (=> d!60724 (= lt!21048 e!50816)))

(declare-fun c!22687 () Bool)

(declare-fun lt!21052 () Bool)

(assert (=> d!60724 (= c!22687 lt!21052)))

(declare-fun e!50818 () List!798)

(assert (=> d!60724 (= lt!21047 e!50818)))

(declare-fun c!22690 () Bool)

(assert (=> d!60724 (= c!22690 (or lt!21052 (let ((cond!14798 (is-Nil!742 Nil!742))) (or (and cond!14798 (not (is-Nil!742 (tail!1166 l2!490)))) (not cond!14798)))))))

(assert (=> d!60724 (= lt!21052 (is-Cons!740 Nil!742))))

(assert (=> d!60724 (= (concat0!1 Nil!742 (tail!1166 l2!490) (Cons!740 (head!1170 l2!490) l3!58)) lt!21048)))

(declare-fun b!92886 () Bool)

(declare-fun res!48861 () List!798)

(assert (=> b!92886 (= e!50817 res!48861)))

(assert (=> b!92886 true))

(assert (=> b!92886 true))

(declare-fun b!92887 () Bool)

(declare-fun e!50815 () List!798)

(assert (=> b!92887 (= e!50815 e!50817)))

(declare-fun c!22689 () Bool)

(declare-fun lt!21046 () Bool)

(assert (=> b!92887 (= c!22689 (or (and lt!21046 (not (is-Nil!742 (tail!1166 l2!490)))) (not lt!21046)))))

(declare-fun b!92888 () Bool)

(declare-fun reverse!7 (List!798) List!798)

(assert (=> b!92888 (= e!50815 (reverse!7 (Cons!740 (head!1170 l2!490) l3!58)))))

(declare-fun b!92889 () Bool)

(assert (=> b!92889 (= e!50814 (concat0!1 (ite lt!21050 Nil!742 (tail!1166 Nil!742)) (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)) (ite lt!21050 (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58)))))))

(declare-fun b!92890 () Bool)

(assert (=> b!92890 (= e!50816 e!50815)))

(declare-fun c!22685 () Bool)

(assert (=> b!92890 (= c!22685 (and lt!21046 (is-Nil!742 (tail!1166 l2!490))))))

(assert (=> b!92890 (= lt!21046 (is-Nil!742 Nil!742))))

(declare-fun b!92891 () Bool)

(assert (=> b!92891 (= e!50818 (concat0!1 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742))) (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))) (ite lt!21052 (Cons!740 (head!1170 l2!490) l3!58) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58))))))))

(declare-fun b!92892 () Bool)

(declare-fun res!48862 () List!798)

(assert (=> b!92892 (= e!50818 res!48862)))

(assert (=> b!92892 true))

(declare-fun b!92893 () Bool)

(assert (=> b!92893 (= e!50813 (reverse!7 (Cons!740 (head!1170 l2!490) l3!58)))))

(declare-fun b!92894 () Bool)

(assert (=> b!92894 (= e!50813 lt!21051)))

(assert (= (and d!60724 c!22690) b!92891))

(assert (= (and d!60724 (not c!22690)) b!92892))

(assert (= (and b!92883 c!22686) b!92889))

(assert (= (and b!92883 (not c!22686)) b!92884))

(assert (= (and b!92883 c!22688) b!92893))

(assert (= (and b!92883 (not c!22688)) b!92894))

(assert (= (and b!92887 c!22689) b!92885))

(assert (= (and b!92887 (not c!22689)) b!92886))

(assert (= (and b!92890 c!22685) b!92888))

(assert (= (and b!92890 (not c!22685)) b!92887))

(assert (= (and d!60724 c!22687) b!92883))

(assert (= (and d!60724 (not c!22687)) b!92890))

(declare-fun m!88474 () Bool)

(assert (=> b!92888 m!88474))

(assert (=> b!92893 m!88474))

(declare-fun m!88476 () Bool)

(assert (=> d!60724 m!88476))

(declare-fun m!88478 () Bool)

(assert (=> d!60724 m!88478))

(declare-fun m!88480 () Bool)

(assert (=> d!60724 m!88480))

(declare-fun m!88482 () Bool)

(assert (=> d!60724 m!88482))

(declare-fun m!88484 () Bool)

(assert (=> b!92889 m!88484))

(declare-fun m!88486 () Bool)

(assert (=> b!92891 m!88486))

(assert (=> b!92857 d!60724))

(declare-fun d!60726 () Bool)

(declare-fun c!22693 () Bool)

(assert (=> d!60726 (= c!22693 (is-Nil!742 x$8!108))))

(declare-fun e!50821 () (Set (_ BitVec 32)))

(assert (=> d!60726 (= (content!31 x$8!108) e!50821)))

(declare-fun b!92899 () Bool)

(assert (=> b!92899 (= e!50821 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92900 () Bool)

(assert (=> b!92900 (= e!50821 (union (insert (head!1170 x$8!108) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1166 x$8!108))))))

(assert (= (and d!60726 c!22693) b!92899))

(assert (= (and d!60726 (not c!22693)) b!92900))

(declare-fun m!88488 () Bool)

(assert (=> b!92900 m!88488))

(declare-fun m!88490 () Bool)

(assert (=> b!92900 m!88490))

(assert (=> b!92858 d!60726))

(declare-fun d!60728 () Bool)

(declare-fun c!22694 () Bool)

(assert (=> d!60728 (= c!22694 (is-Nil!742 l1!498))))

(declare-fun e!50822 () (Set (_ BitVec 32)))

(assert (=> d!60728 (= (content!31 l1!498) e!50822)))

(declare-fun b!92901 () Bool)

(assert (=> b!92901 (= e!50822 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92902 () Bool)

(assert (=> b!92902 (= e!50822 (union (insert (head!1170 l1!498) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1166 l1!498))))))

(assert (= (and d!60728 c!22694) b!92901))

(assert (= (and d!60728 (not c!22694)) b!92902))

(declare-fun m!88492 () Bool)

(assert (=> b!92902 m!88492))

(declare-fun m!88494 () Bool)

(assert (=> b!92902 m!88494))

(assert (=> b!92858 d!60728))

(declare-fun d!60730 () Bool)

(declare-fun c!22695 () Bool)

(assert (=> d!60730 (= c!22695 (is-Nil!742 l2!490))))

(declare-fun e!50823 () (Set (_ BitVec 32)))

(assert (=> d!60730 (= (content!31 l2!490) e!50823)))

(declare-fun b!92903 () Bool)

(assert (=> b!92903 (= e!50823 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92904 () Bool)

(assert (=> b!92904 (= e!50823 (union (insert (head!1170 l2!490) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1166 l2!490))))))

(assert (= (and d!60730 c!22695) b!92903))

(assert (= (and d!60730 (not c!22695)) b!92904))

(declare-fun m!88496 () Bool)

(assert (=> b!92904 m!88496))

(assert (=> b!92904 m!88480))

(assert (=> b!92858 d!60730))

(declare-fun d!60732 () Bool)

(declare-fun c!22696 () Bool)

(assert (=> d!60732 (= c!22696 (is-Nil!742 l3!58))))

(declare-fun e!50824 () (Set (_ BitVec 32)))

(assert (=> d!60732 (= (content!31 l3!58) e!50824)))

(declare-fun b!92905 () Bool)

(assert (=> b!92905 (= e!50824 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92906 () Bool)

(assert (=> b!92906 (= e!50824 (union (insert (head!1170 l3!58) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1166 l3!58))))))

(assert (= (and d!60732 c!22696) b!92905))

(assert (= (and d!60732 (not c!22696)) b!92906))

(declare-fun m!88498 () Bool)

(assert (=> b!92906 m!88498))

(declare-fun m!88500 () Bool)

(assert (=> b!92906 m!88500))

(assert (=> b!92858 d!60732))

(push 1)

(assert (not b!92902))

(assert (not b!92906))

(assert (not b!92889))

(assert (not b!92904))

(assert (not b!92891))

(assert (not b!92893))

(assert (not d!60724))

(assert (not b!92888))

(assert (not b!92900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60734 () Bool)

(declare-fun c!22697 () Bool)

(assert (=> d!60734 (= c!22697 (is-Nil!742 (tail!1166 l1!498)))))

(declare-fun e!50825 () (Set (_ BitVec 32)))

(assert (=> d!60734 (= (content!31 (tail!1166 l1!498)) e!50825)))

(declare-fun b!92907 () Bool)

(assert (=> b!92907 (= e!50825 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92908 () Bool)

(assert (=> b!92908 (= e!50825 (union (insert (head!1170 (tail!1166 l1!498)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1166 (tail!1166 l1!498)))))))

(assert (= (and d!60734 c!22697) b!92907))

(assert (= (and d!60734 (not c!22697)) b!92908))

(declare-fun m!88502 () Bool)

(assert (=> b!92908 m!88502))

(declare-fun m!88504 () Bool)

(assert (=> b!92908 m!88504))

(assert (=> b!92902 d!60734))

(declare-fun b!92909 () Bool)

(declare-fun e!50829 () List!798)

(declare-fun e!50826 () List!798)

(assert (=> b!92909 (= e!50829 e!50826)))

(declare-fun c!22701 () Bool)

(declare-fun lt!21056 () Bool)

(assert (=> b!92909 (= c!22701 (and lt!21056 (is-Nil!742 (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))))))))

(declare-fun lt!21058 () List!798)

(declare-fun e!50827 () List!798)

(assert (=> b!92909 (= lt!21058 e!50827)))

(declare-fun c!22699 () Bool)

(declare-fun lt!21057 () Bool)

(assert (=> b!92909 (= c!22699 (or lt!21057 (not lt!21056)))))

(assert (=> b!92909 (= lt!21057 (and lt!21056 (not (is-Nil!742 (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))))))))

(assert (=> b!92909 (= lt!21056 (is-Nil!742 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742)))))))

(declare-fun b!92910 () Bool)

(declare-fun res!48863 () List!798)

(assert (=> b!92910 (= e!50827 res!48863)))

(assert (=> b!92910 true))

(declare-fun b!92911 () Bool)

(declare-fun e!50830 () List!798)

(declare-fun lt!21054 () List!798)

(assert (=> b!92911 (= e!50830 lt!21054)))

(declare-fun lt!21055 () List!798)

(declare-fun d!60736 () Bool)

(assert (=> d!60736 (= (content!31 lt!21055) (union (union (content!31 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742)))) (content!31 (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))))) (content!31 (ite lt!21052 (Cons!740 (head!1170 l2!490) l3!58) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58)))))))))

(assert (=> d!60736 (= lt!21055 e!50829)))

(declare-fun c!22700 () Bool)

(declare-fun lt!21059 () Bool)

(assert (=> d!60736 (= c!22700 lt!21059)))

(declare-fun e!50831 () List!798)

(assert (=> d!60736 (= lt!21054 e!50831)))

(declare-fun c!22703 () Bool)

(assert (=> d!60736 (= c!22703 (or lt!21059 (let ((cond!14798 (is-Nil!742 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742)))))) (or (and cond!14798 (not (is-Nil!742 (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))))) (not cond!14798)))))))

(assert (=> d!60736 (= lt!21059 (is-Cons!740 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742)))))))

(assert (=> d!60736 (= (concat0!1 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742))) (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))) (ite lt!21052 (Cons!740 (head!1170 l2!490) l3!58) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58))))) lt!21055)))

(declare-fun b!92912 () Bool)

(declare-fun res!48864 () List!798)

(assert (=> b!92912 (= e!50830 res!48864)))

(assert (=> b!92912 true))

(assert (=> b!92912 true))

(declare-fun b!92913 () Bool)

(declare-fun e!50828 () List!798)

(assert (=> b!92913 (= e!50828 e!50830)))

(declare-fun lt!21053 () Bool)

(declare-fun c!22702 () Bool)

(assert (=> b!92913 (= c!22702 (or (and lt!21053 (not (is-Nil!742 (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))))) (not lt!21053)))))

(declare-fun b!92914 () Bool)

(assert (=> b!92914 (= e!50828 (reverse!7 (ite lt!21052 (Cons!740 (head!1170 l2!490) l3!58) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58))))))))

(declare-fun b!92915 () Bool)

(assert (=> b!92915 (= e!50827 (concat0!1 (ite lt!21057 Nil!742 (tail!1166 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742))))) (ite lt!21057 (tail!1166 (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))) (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))) (ite lt!21057 (Cons!740 (head!1170 (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))) (ite lt!21052 (Cons!740 (head!1170 l2!490) l3!58) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58))))) (Cons!740 (head!1170 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742)))) (ite lt!21052 (Cons!740 (head!1170 l2!490) l3!58) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58))))))))))

(declare-fun b!92916 () Bool)

(assert (=> b!92916 (= e!50829 e!50828)))

(declare-fun c!22698 () Bool)

(assert (=> b!92916 (= c!22698 (and lt!21053 (is-Nil!742 (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))))))))

(assert (=> b!92916 (= lt!21053 (is-Nil!742 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742)))))))

(declare-fun b!92917 () Bool)

(assert (=> b!92917 (= e!50831 (concat0!1 (ite lt!21059 (tail!1166 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742)))) (ite (and (is-Nil!742 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742)))) (not (is-Nil!742 (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))))) Nil!742 (tail!1166 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742)))))) (ite lt!21059 (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))) (ite (and (is-Nil!742 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742)))) (not (is-Nil!742 (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))))) (tail!1166 (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))) (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))))) (ite lt!21059 (ite lt!21052 (Cons!740 (head!1170 l2!490) l3!58) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58)))) (ite (and (is-Nil!742 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742)))) (not (is-Nil!742 (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))))) (Cons!740 (head!1170 (ite lt!21052 (tail!1166 l2!490) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))) (ite lt!21052 (Cons!740 (head!1170 l2!490) l3!58) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58))))) (Cons!740 (head!1170 (ite lt!21052 (tail!1166 Nil!742) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) Nil!742 (tail!1166 Nil!742)))) (ite lt!21052 (Cons!740 (head!1170 l2!490) l3!58) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58)))))))))))

(declare-fun b!92918 () Bool)

(declare-fun res!48865 () List!798)

(assert (=> b!92918 (= e!50831 res!48865)))

(assert (=> b!92918 true))

(declare-fun b!92919 () Bool)

(assert (=> b!92919 (= e!50826 (reverse!7 (ite lt!21052 (Cons!740 (head!1170 l2!490) l3!58) (ite (and (is-Nil!742 Nil!742) (not (is-Nil!742 (tail!1166 l2!490)))) (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58))))))))

(declare-fun b!92920 () Bool)

(assert (=> b!92920 (= e!50826 lt!21058)))

(assert (= (and d!60736 c!22703) b!92917))

(assert (= (and d!60736 (not c!22703)) b!92918))

(assert (= (and b!92909 c!22699) b!92915))

(assert (= (and b!92909 (not c!22699)) b!92910))

(assert (= (and b!92909 c!22701) b!92919))

(assert (= (and b!92909 (not c!22701)) b!92920))

(assert (= (and b!92913 c!22702) b!92911))

(assert (= (and b!92913 (not c!22702)) b!92912))

(assert (= (and b!92916 c!22698) b!92914))

(assert (= (and b!92916 (not c!22698)) b!92913))

(assert (= (and d!60736 c!22700) b!92909))

(assert (= (and d!60736 (not c!22700)) b!92916))

(declare-fun m!88506 () Bool)

(assert (=> b!92914 m!88506))

(assert (=> b!92919 m!88506))

(declare-fun m!88508 () Bool)

(assert (=> d!60736 m!88508))

(declare-fun m!88510 () Bool)

(assert (=> d!60736 m!88510))

(declare-fun m!88512 () Bool)

(assert (=> d!60736 m!88512))

(declare-fun m!88514 () Bool)

(assert (=> d!60736 m!88514))

(declare-fun m!88516 () Bool)

(assert (=> b!92915 m!88516))

(declare-fun m!88518 () Bool)

(assert (=> b!92917 m!88518))

(assert (=> b!92891 d!60736))

(declare-fun d!60738 () Bool)

(declare-fun c!22704 () Bool)

(assert (=> d!60738 (= c!22704 (is-Nil!742 (tail!1166 l3!58)))))

(declare-fun e!50832 () (Set (_ BitVec 32)))

(assert (=> d!60738 (= (content!31 (tail!1166 l3!58)) e!50832)))

(declare-fun b!92921 () Bool)

(assert (=> b!92921 (= e!50832 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92922 () Bool)

(assert (=> b!92922 (= e!50832 (union (insert (head!1170 (tail!1166 l3!58)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1166 (tail!1166 l3!58)))))))

(assert (= (and d!60738 c!22704) b!92921))

(assert (= (and d!60738 (not c!22704)) b!92922))

(declare-fun m!88520 () Bool)

(assert (=> b!92922 m!88520))

(declare-fun m!88522 () Bool)

(assert (=> b!92922 m!88522))

(assert (=> b!92906 d!60738))

(declare-fun d!60740 () Bool)

(declare-fun c!22705 () Bool)

(assert (=> d!60740 (= c!22705 (is-Nil!742 (tail!1166 x$8!108)))))

(declare-fun e!50833 () (Set (_ BitVec 32)))

(assert (=> d!60740 (= (content!31 (tail!1166 x$8!108)) e!50833)))

(declare-fun b!92923 () Bool)

(assert (=> b!92923 (= e!50833 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92924 () Bool)

(assert (=> b!92924 (= e!50833 (union (insert (head!1170 (tail!1166 x$8!108)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1166 (tail!1166 x$8!108)))))))

(assert (= (and d!60740 c!22705) b!92923))

(assert (= (and d!60740 (not c!22705)) b!92924))

(declare-fun m!88524 () Bool)

(assert (=> b!92924 m!88524))

(declare-fun m!88526 () Bool)

(assert (=> b!92924 m!88526))

(assert (=> b!92900 d!60740))

(declare-fun d!60742 () Bool)

(declare-fun lt!21062 () List!798)

(assert (=> d!60742 (= (content!31 lt!21062) (content!31 (Cons!740 (head!1170 l2!490) l3!58)))))

(declare-fun reverse0!3 (List!798 List!798) List!798)

(assert (=> d!60742 (= lt!21062 (reverse0!3 (Cons!740 (head!1170 l2!490) l3!58) Nil!742))))

(assert (=> d!60742 (= (reverse!7 (Cons!740 (head!1170 l2!490) l3!58)) lt!21062)))

(declare-fun bs!41980 () Bool)

(assert (= bs!41980 d!60742))

(declare-fun m!88528 () Bool)

(assert (=> bs!41980 m!88528))

(assert (=> bs!41980 m!88482))

(declare-fun m!88530 () Bool)

(assert (=> bs!41980 m!88530))

(assert (=> b!92888 d!60742))

(assert (=> b!92893 d!60742))

(declare-fun b!92925 () Bool)

(declare-fun e!50837 () List!798)

(declare-fun e!50834 () List!798)

(assert (=> b!92925 (= e!50837 e!50834)))

(declare-fun lt!21066 () Bool)

(declare-fun c!22709 () Bool)

(assert (=> b!92925 (= c!22709 (and lt!21066 (is-Nil!742 (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))))))

(declare-fun lt!21068 () List!798)

(declare-fun e!50835 () List!798)

(assert (=> b!92925 (= lt!21068 e!50835)))

(declare-fun c!22707 () Bool)

(declare-fun lt!21067 () Bool)

(assert (=> b!92925 (= c!22707 (or lt!21067 (not lt!21066)))))

(assert (=> b!92925 (= lt!21067 (and lt!21066 (not (is-Nil!742 (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))))))))

(assert (=> b!92925 (= lt!21066 (is-Nil!742 (ite lt!21050 Nil!742 (tail!1166 Nil!742))))))

(declare-fun b!92926 () Bool)

(declare-fun res!48866 () List!798)

(assert (=> b!92926 (= e!50835 res!48866)))

(assert (=> b!92926 true))

(declare-fun b!92927 () Bool)

(declare-fun e!50838 () List!798)

(declare-fun lt!21064 () List!798)

(assert (=> b!92927 (= e!50838 lt!21064)))

(declare-fun d!60744 () Bool)

(declare-fun lt!21065 () List!798)

(assert (=> d!60744 (= (content!31 lt!21065) (union (union (content!31 (ite lt!21050 Nil!742 (tail!1166 Nil!742))) (content!31 (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))) (content!31 (ite lt!21050 (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58))))))))

(assert (=> d!60744 (= lt!21065 e!50837)))

(declare-fun c!22708 () Bool)

(declare-fun lt!21069 () Bool)

(assert (=> d!60744 (= c!22708 lt!21069)))

(declare-fun e!50839 () List!798)

(assert (=> d!60744 (= lt!21064 e!50839)))

(declare-fun c!22711 () Bool)

(assert (=> d!60744 (= c!22711 (or lt!21069 (let ((cond!14798 (is-Nil!742 (ite lt!21050 Nil!742 (tail!1166 Nil!742))))) (or (and cond!14798 (not (is-Nil!742 (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))))) (not cond!14798)))))))

(assert (=> d!60744 (= lt!21069 (is-Cons!740 (ite lt!21050 Nil!742 (tail!1166 Nil!742))))))

(assert (=> d!60744 (= (concat0!1 (ite lt!21050 Nil!742 (tail!1166 Nil!742)) (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)) (ite lt!21050 (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58)))) lt!21065)))

(declare-fun b!92928 () Bool)

(declare-fun res!48867 () List!798)

(assert (=> b!92928 (= e!50838 res!48867)))

(assert (=> b!92928 true))

(assert (=> b!92928 true))

(declare-fun b!92929 () Bool)

(declare-fun e!50836 () List!798)

(assert (=> b!92929 (= e!50836 e!50838)))

(declare-fun c!22710 () Bool)

(declare-fun lt!21063 () Bool)

(assert (=> b!92929 (= c!22710 (or (and lt!21063 (not (is-Nil!742 (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))))) (not lt!21063)))))

(declare-fun b!92930 () Bool)

(assert (=> b!92930 (= e!50836 (reverse!7 (ite lt!21050 (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58)))))))

(declare-fun b!92931 () Bool)

(assert (=> b!92931 (= e!50835 (concat0!1 (ite lt!21067 Nil!742 (tail!1166 (ite lt!21050 Nil!742 (tail!1166 Nil!742)))) (ite lt!21067 (tail!1166 (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))) (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))) (ite lt!21067 (Cons!740 (head!1170 (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))) (ite lt!21050 (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58)))) (Cons!740 (head!1170 (ite lt!21050 Nil!742 (tail!1166 Nil!742))) (ite lt!21050 (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58)))))))))

(declare-fun b!92932 () Bool)

(assert (=> b!92932 (= e!50837 e!50836)))

(declare-fun c!22706 () Bool)

(assert (=> b!92932 (= c!22706 (and lt!21063 (is-Nil!742 (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))))))

(assert (=> b!92932 (= lt!21063 (is-Nil!742 (ite lt!21050 Nil!742 (tail!1166 Nil!742))))))

(declare-fun b!92933 () Bool)

(assert (=> b!92933 (= e!50839 (concat0!1 (ite lt!21069 (tail!1166 (ite lt!21050 Nil!742 (tail!1166 Nil!742))) (ite (and (is-Nil!742 (ite lt!21050 Nil!742 (tail!1166 Nil!742))) (not (is-Nil!742 (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))))) Nil!742 (tail!1166 (ite lt!21050 Nil!742 (tail!1166 Nil!742))))) (ite lt!21069 (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)) (ite (and (is-Nil!742 (ite lt!21050 Nil!742 (tail!1166 Nil!742))) (not (is-Nil!742 (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))))) (tail!1166 (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))) (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490)))) (ite lt!21069 (ite lt!21050 (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58))) (ite (and (is-Nil!742 (ite lt!21050 Nil!742 (tail!1166 Nil!742))) (not (is-Nil!742 (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))))) (Cons!740 (head!1170 (ite lt!21050 (tail!1166 (tail!1166 l2!490)) (tail!1166 l2!490))) (ite lt!21050 (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58)))) (Cons!740 (head!1170 (ite lt!21050 Nil!742 (tail!1166 Nil!742))) (ite lt!21050 (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58))))))))))

(declare-fun b!92934 () Bool)

(declare-fun res!48868 () List!798)

(assert (=> b!92934 (= e!50839 res!48868)))

(assert (=> b!92934 true))

(declare-fun b!92935 () Bool)

(assert (=> b!92935 (= e!50834 (reverse!7 (ite lt!21050 (Cons!740 (head!1170 (tail!1166 l2!490)) (Cons!740 (head!1170 l2!490) l3!58)) (Cons!740 (head!1170 Nil!742) (Cons!740 (head!1170 l2!490) l3!58)))))))

(declare-fun b!92936 () Bool)

(assert (=> b!92936 (= e!50834 lt!21068)))

(assert (= (and d!60744 c!22711) b!92933))

(assert (= (and d!60744 (not c!22711)) b!92934))

(assert (= (and b!92925 c!22707) b!92931))

(assert (= (and b!92925 (not c!22707)) b!92926))

(assert (= (and b!92925 c!22709) b!92935))

(assert (= (and b!92925 (not c!22709)) b!92936))

(assert (= (and b!92929 c!22710) b!92927))

(assert (= (and b!92929 (not c!22710)) b!92928))

(assert (= (and b!92932 c!22706) b!92930))

(assert (= (and b!92932 (not c!22706)) b!92929))

(assert (= (and d!60744 c!22708) b!92925))

(assert (= (and d!60744 (not c!22708)) b!92932))

(declare-fun m!88532 () Bool)

(assert (=> b!92930 m!88532))

(assert (=> b!92935 m!88532))

(declare-fun m!88534 () Bool)

(assert (=> d!60744 m!88534))

(declare-fun m!88536 () Bool)

(assert (=> d!60744 m!88536))

(declare-fun m!88538 () Bool)

(assert (=> d!60744 m!88538))

(declare-fun m!88540 () Bool)

(assert (=> d!60744 m!88540))

(declare-fun m!88542 () Bool)

(assert (=> b!92931 m!88542))

(declare-fun m!88544 () Bool)

(assert (=> b!92933 m!88544))

(assert (=> b!92889 d!60744))

(declare-fun d!60746 () Bool)

(declare-fun c!22712 () Bool)

(assert (=> d!60746 (= c!22712 (is-Nil!742 (tail!1166 l2!490)))))

(declare-fun e!50840 () (Set (_ BitVec 32)))

(assert (=> d!60746 (= (content!31 (tail!1166 l2!490)) e!50840)))

(declare-fun b!92937 () Bool)

(assert (=> b!92937 (= e!50840 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92938 () Bool)

(assert (=> b!92938 (= e!50840 (union (insert (head!1170 (tail!1166 l2!490)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1166 (tail!1166 l2!490)))))))

(assert (= (and d!60746 c!22712) b!92937))

(assert (= (and d!60746 (not c!22712)) b!92938))

(declare-fun m!88546 () Bool)

(assert (=> b!92938 m!88546))

(declare-fun m!88548 () Bool)

(assert (=> b!92938 m!88548))

(assert (=> b!92904 d!60746))

(declare-fun d!60748 () Bool)

(declare-fun c!22713 () Bool)

(assert (=> d!60748 (= c!22713 (is-Nil!742 lt!21048))))

(declare-fun e!50841 () (Set (_ BitVec 32)))

(assert (=> d!60748 (= (content!31 lt!21048) e!50841)))

(declare-fun b!92939 () Bool)

(assert (=> b!92939 (= e!50841 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92940 () Bool)

(assert (=> b!92940 (= e!50841 (union (insert (head!1170 lt!21048) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1166 lt!21048))))))

(assert (= (and d!60748 c!22713) b!92939))

(assert (= (and d!60748 (not c!22713)) b!92940))

(declare-fun m!88550 () Bool)

(assert (=> b!92940 m!88550))

(declare-fun m!88552 () Bool)

(assert (=> b!92940 m!88552))

(assert (=> d!60724 d!60748))

(declare-fun d!60750 () Bool)

(assert (=> d!60750 (= (content!31 Nil!742) (as emptyset (Set (_ BitVec 32))))))

(assert (=> d!60724 d!60750))

(assert (=> d!60724 d!60746))

(declare-fun d!60752 () Bool)

(declare-fun c!22714 () Bool)

(assert (=> d!60752 (= c!22714 (is-Nil!742 (Cons!740 (head!1170 l2!490) l3!58)))))

(declare-fun e!50842 () (Set (_ BitVec 32)))

(assert (=> d!60752 (= (content!31 (Cons!740 (head!1170 l2!490) l3!58)) e!50842)))

(declare-fun b!92941 () Bool)

(assert (=> b!92941 (= e!50842 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92942 () Bool)

(assert (=> b!92942 (= e!50842 (union (insert (head!1170 (Cons!740 (head!1170 l2!490) l3!58)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1166 (Cons!740 (head!1170 l2!490) l3!58)))))))

(assert (= (and d!60752 c!22714) b!92941))

(assert (= (and d!60752 (not c!22714)) b!92942))

(declare-fun m!88554 () Bool)

(assert (=> b!92942 m!88554))

(declare-fun m!88556 () Bool)

(assert (=> b!92942 m!88556))

(assert (=> d!60724 d!60752))

(push 1)

(assert (not b!92917))

(assert (not d!60736))

(assert (not b!92935))

(assert (not b!92933))

(assert (not b!92919))

(assert (not b!92915))

(assert (not b!92914))

(assert (not b!92931))

(assert (not b!92922))

(assert (not d!60744))

(assert (not b!92924))

(assert (not d!60742))

(assert (not b!92940))

(assert (not b!92930))

(assert (not b!92942))

(assert (not b!92908))

(assert (not b!92938))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


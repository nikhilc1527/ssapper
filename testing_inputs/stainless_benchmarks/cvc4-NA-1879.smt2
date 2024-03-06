; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12598 () Bool)

(assert start!12598)

(declare-fun res!48797 () Bool)

(declare-fun e!50727 () Bool)

(assert (=> start!12598 (=> (not res!48797) (not e!50727))))

(declare-datatypes () ((List!796 (Cons!738 (head!1168 (_ BitVec 32)) (tail!1164 List!796)) (Nil!740))))

(declare-fun l1!498 () List!796)

(assert (=> start!12598 (= res!48797 (is-Cons!738 l1!498))))

(assert (=> start!12598 e!50727))

(assert (=> start!12598 true))

(declare-fun b!92710 () Bool)

(declare-fun res!48798 () Bool)

(assert (=> b!92710 (=> (not res!48798) (not e!50727))))

(declare-fun l2!490 () List!796)

(declare-fun inductVal!1050 () List!796)

(declare-fun l3!58 () List!796)

(declare-fun concat0!1 (List!796 List!796 List!796) List!796)

(assert (=> b!92710 (= res!48798 (= inductVal!1050 (concat0!1 (tail!1164 l1!498) l2!490 l3!58)))))

(declare-fun b!92711 () Bool)

(declare-fun res!48799 () Bool)

(assert (=> b!92711 (=> (not res!48799) (not e!50727))))

(declare-fun x$8!105 () List!796)

(assert (=> b!92711 (= res!48799 (= x$8!105 (concat0!1 (tail!1164 l1!498) l2!490 (Cons!738 (head!1168 l1!498) l3!58))))))

(declare-fun b!92712 () Bool)

(declare-fun content!31 (List!796) (Set (_ BitVec 32)))

(assert (=> b!92712 (= e!50727 (not (= (content!31 x$8!105) (union (union (content!31 l1!498) (content!31 l2!490)) (content!31 l3!58)))))))

(assert (= (and start!12598 res!48797) b!92710))

(assert (= (and b!92710 res!48798) b!92711))

(assert (= (and b!92711 res!48799) b!92712))

(declare-fun m!88296 () Bool)

(assert (=> b!92710 m!88296))

(declare-fun m!88298 () Bool)

(assert (=> b!92711 m!88298))

(declare-fun m!88300 () Bool)

(assert (=> b!92712 m!88300))

(declare-fun m!88302 () Bool)

(assert (=> b!92712 m!88302))

(declare-fun m!88304 () Bool)

(assert (=> b!92712 m!88304))

(declare-fun m!88306 () Bool)

(assert (=> b!92712 m!88306))

(push 1)

(assert (not b!92711))

(assert (not b!92710))

(assert (not b!92712))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!92737 () Bool)

(declare-fun e!50742 () List!796)

(declare-fun res!48817 () List!796)

(assert (=> b!92737 (= e!50742 res!48817)))

(assert (=> b!92737 true))

(declare-fun b!92738 () Bool)

(declare-fun lt!20988 () Bool)

(assert (=> b!92738 (= e!50742 (concat0!1 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498)))) (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490)) (ite lt!20988 (Cons!738 (head!1168 l1!498) l3!58) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58))))))))

(declare-fun lt!20984 () List!796)

(declare-fun d!60676 () Bool)

(assert (=> d!60676 (= (content!31 lt!20984) (union (union (content!31 (tail!1164 l1!498)) (content!31 l2!490)) (content!31 (Cons!738 (head!1168 l1!498) l3!58))))))

(declare-fun e!50744 () List!796)

(assert (=> d!60676 (= lt!20984 e!50744)))

(declare-fun c!22623 () Bool)

(assert (=> d!60676 (= c!22623 lt!20988)))

(declare-fun lt!20989 () List!796)

(assert (=> d!60676 (= lt!20989 e!50742)))

(declare-fun c!22621 () Bool)

(assert (=> d!60676 (= c!22621 (or lt!20988 (let ((cond!14771 (is-Nil!740 (tail!1164 l1!498)))) (or (and cond!14771 (not (is-Nil!740 l2!490))) (not cond!14771)))))))

(assert (=> d!60676 (= lt!20988 (is-Cons!738 (tail!1164 l1!498)))))

(assert (=> d!60676 (= (concat0!1 (tail!1164 l1!498) l2!490 (Cons!738 (head!1168 l1!498) l3!58)) lt!20984)))

(declare-fun b!92739 () Bool)

(declare-fun e!50743 () List!796)

(declare-fun res!48816 () List!796)

(assert (=> b!92739 (= e!50743 res!48816)))

(assert (=> b!92739 true))

(declare-fun b!92740 () Bool)

(declare-fun e!50741 () List!796)

(declare-fun lt!20985 () List!796)

(assert (=> b!92740 (= e!50741 lt!20985)))

(declare-fun b!92741 () Bool)

(assert (=> b!92741 (= e!50744 e!50741)))

(declare-fun c!22618 () Bool)

(declare-fun lt!20983 () Bool)

(assert (=> b!92741 (= c!22618 (and lt!20983 (is-Nil!740 l2!490)))))

(assert (=> b!92741 (= lt!20985 e!50743)))

(declare-fun c!22620 () Bool)

(declare-fun lt!20986 () Bool)

(assert (=> b!92741 (= c!22620 (or lt!20986 (not lt!20983)))))

(assert (=> b!92741 (= lt!20986 (and lt!20983 (not (is-Nil!740 l2!490))))))

(assert (=> b!92741 (= lt!20983 (is-Nil!740 (tail!1164 l1!498)))))

(declare-fun b!92742 () Bool)

(declare-fun reverse!7 (List!796) List!796)

(assert (=> b!92742 (= e!50741 (reverse!7 (Cons!738 (head!1168 l1!498) l3!58)))))

(declare-fun b!92743 () Bool)

(declare-fun e!50745 () List!796)

(assert (=> b!92743 (= e!50745 lt!20989)))

(declare-fun b!92744 () Bool)

(declare-fun e!50740 () List!796)

(assert (=> b!92744 (= e!50744 e!50740)))

(declare-fun c!22622 () Bool)

(declare-fun lt!20987 () Bool)

(assert (=> b!92744 (= c!22622 (and lt!20987 (is-Nil!740 l2!490)))))

(assert (=> b!92744 (= lt!20987 (is-Nil!740 (tail!1164 l1!498)))))

(declare-fun b!92745 () Bool)

(assert (=> b!92745 (= e!50740 (reverse!7 (Cons!738 (head!1168 l1!498) l3!58)))))

(declare-fun b!92746 () Bool)

(assert (=> b!92746 (= e!50743 (concat0!1 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498))) (ite lt!20986 (tail!1164 l2!490) l2!490) (ite lt!20986 (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58)))))))

(declare-fun b!92747 () Bool)

(assert (=> b!92747 (= e!50740 e!50745)))

(declare-fun c!22619 () Bool)

(assert (=> b!92747 (= c!22619 (or (and lt!20987 (not (is-Nil!740 l2!490))) (not lt!20987)))))

(declare-fun b!92748 () Bool)

(declare-fun res!48815 () List!796)

(assert (=> b!92748 (= e!50745 res!48815)))

(assert (=> b!92748 true))

(assert (=> b!92748 true))

(assert (= (and d!60676 c!22621) b!92738))

(assert (= (and d!60676 (not c!22621)) b!92737))

(assert (= (and b!92741 c!22620) b!92746))

(assert (= (and b!92741 (not c!22620)) b!92739))

(assert (= (and b!92741 c!22618) b!92742))

(assert (= (and b!92741 (not c!22618)) b!92740))

(assert (= (and b!92747 c!22619) b!92743))

(assert (= (and b!92747 (not c!22619)) b!92748))

(assert (= (and b!92744 c!22622) b!92745))

(assert (= (and b!92744 (not c!22622)) b!92747))

(assert (= (and d!60676 c!22623) b!92741))

(assert (= (and d!60676 (not c!22623)) b!92744))

(declare-fun m!88308 () Bool)

(assert (=> b!92738 m!88308))

(declare-fun m!88310 () Bool)

(assert (=> b!92746 m!88310))

(declare-fun m!88312 () Bool)

(assert (=> d!60676 m!88312))

(declare-fun m!88314 () Bool)

(assert (=> d!60676 m!88314))

(assert (=> d!60676 m!88304))

(declare-fun m!88316 () Bool)

(assert (=> d!60676 m!88316))

(declare-fun m!88318 () Bool)

(assert (=> b!92742 m!88318))

(assert (=> b!92745 m!88318))

(assert (=> b!92711 d!60676))

(declare-fun b!92749 () Bool)

(declare-fun e!50748 () List!796)

(declare-fun res!48820 () List!796)

(assert (=> b!92749 (= e!50748 res!48820)))

(assert (=> b!92749 true))

(declare-fun b!92750 () Bool)

(declare-fun lt!20995 () Bool)

(assert (=> b!92750 (= e!50748 (concat0!1 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498)))) (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490)) (ite lt!20995 l3!58 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58)))))))

(declare-fun lt!20991 () List!796)

(declare-fun d!60678 () Bool)

(assert (=> d!60678 (= (content!31 lt!20991) (union (union (content!31 (tail!1164 l1!498)) (content!31 l2!490)) (content!31 l3!58)))))

(declare-fun e!50750 () List!796)

(assert (=> d!60678 (= lt!20991 e!50750)))

(declare-fun c!22629 () Bool)

(assert (=> d!60678 (= c!22629 lt!20995)))

(declare-fun lt!20996 () List!796)

(assert (=> d!60678 (= lt!20996 e!50748)))

(declare-fun c!22627 () Bool)

(assert (=> d!60678 (= c!22627 (or lt!20995 (let ((cond!14771 (is-Nil!740 (tail!1164 l1!498)))) (or (and cond!14771 (not (is-Nil!740 l2!490))) (not cond!14771)))))))

(assert (=> d!60678 (= lt!20995 (is-Cons!738 (tail!1164 l1!498)))))

(assert (=> d!60678 (= (concat0!1 (tail!1164 l1!498) l2!490 l3!58) lt!20991)))

(declare-fun b!92751 () Bool)

(declare-fun e!50749 () List!796)

(declare-fun res!48819 () List!796)

(assert (=> b!92751 (= e!50749 res!48819)))

(assert (=> b!92751 true))

(declare-fun b!92752 () Bool)

(declare-fun e!50747 () List!796)

(declare-fun lt!20992 () List!796)

(assert (=> b!92752 (= e!50747 lt!20992)))

(declare-fun b!92753 () Bool)

(assert (=> b!92753 (= e!50750 e!50747)))

(declare-fun c!22624 () Bool)

(declare-fun lt!20990 () Bool)

(assert (=> b!92753 (= c!22624 (and lt!20990 (is-Nil!740 l2!490)))))

(assert (=> b!92753 (= lt!20992 e!50749)))

(declare-fun c!22626 () Bool)

(declare-fun lt!20993 () Bool)

(assert (=> b!92753 (= c!22626 (or lt!20993 (not lt!20990)))))

(assert (=> b!92753 (= lt!20993 (and lt!20990 (not (is-Nil!740 l2!490))))))

(assert (=> b!92753 (= lt!20990 (is-Nil!740 (tail!1164 l1!498)))))

(declare-fun b!92754 () Bool)

(assert (=> b!92754 (= e!50747 (reverse!7 l3!58))))

(declare-fun b!92755 () Bool)

(declare-fun e!50751 () List!796)

(assert (=> b!92755 (= e!50751 lt!20996)))

(declare-fun b!92756 () Bool)

(declare-fun e!50746 () List!796)

(assert (=> b!92756 (= e!50750 e!50746)))

(declare-fun c!22628 () Bool)

(declare-fun lt!20994 () Bool)

(assert (=> b!92756 (= c!22628 (and lt!20994 (is-Nil!740 l2!490)))))

(assert (=> b!92756 (= lt!20994 (is-Nil!740 (tail!1164 l1!498)))))

(declare-fun b!92757 () Bool)

(assert (=> b!92757 (= e!50746 (reverse!7 l3!58))))

(declare-fun b!92758 () Bool)

(assert (=> b!92758 (= e!50749 (concat0!1 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498))) (ite lt!20993 (tail!1164 l2!490) l2!490) (ite lt!20993 (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58))))))

(declare-fun b!92759 () Bool)

(assert (=> b!92759 (= e!50746 e!50751)))

(declare-fun c!22625 () Bool)

(assert (=> b!92759 (= c!22625 (or (and lt!20994 (not (is-Nil!740 l2!490))) (not lt!20994)))))

(declare-fun b!92760 () Bool)

(declare-fun res!48818 () List!796)

(assert (=> b!92760 (= e!50751 res!48818)))

(assert (=> b!92760 true))

(assert (=> b!92760 true))

(assert (= (and d!60678 c!22627) b!92750))

(assert (= (and d!60678 (not c!22627)) b!92749))

(assert (= (and b!92753 c!22626) b!92758))

(assert (= (and b!92753 (not c!22626)) b!92751))

(assert (= (and b!92753 c!22624) b!92754))

(assert (= (and b!92753 (not c!22624)) b!92752))

(assert (= (and b!92759 c!22625) b!92755))

(assert (= (and b!92759 (not c!22625)) b!92760))

(assert (= (and b!92756 c!22628) b!92757))

(assert (= (and b!92756 (not c!22628)) b!92759))

(assert (= (and d!60678 c!22629) b!92753))

(assert (= (and d!60678 (not c!22629)) b!92756))

(declare-fun m!88320 () Bool)

(assert (=> b!92750 m!88320))

(declare-fun m!88322 () Bool)

(assert (=> b!92758 m!88322))

(declare-fun m!88324 () Bool)

(assert (=> d!60678 m!88324))

(assert (=> d!60678 m!88314))

(assert (=> d!60678 m!88304))

(assert (=> d!60678 m!88306))

(declare-fun m!88326 () Bool)

(assert (=> b!92754 m!88326))

(assert (=> b!92757 m!88326))

(assert (=> b!92710 d!60678))

(declare-fun d!60680 () Bool)

(declare-fun c!22632 () Bool)

(assert (=> d!60680 (= c!22632 (is-Nil!740 x$8!105))))

(declare-fun e!50754 () (Set (_ BitVec 32)))

(assert (=> d!60680 (= (content!31 x$8!105) e!50754)))

(declare-fun b!92765 () Bool)

(assert (=> b!92765 (= e!50754 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92766 () Bool)

(assert (=> b!92766 (= e!50754 (union (insert (head!1168 x$8!105) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1164 x$8!105))))))

(assert (= (and d!60680 c!22632) b!92765))

(assert (= (and d!60680 (not c!22632)) b!92766))

(declare-fun m!88328 () Bool)

(assert (=> b!92766 m!88328))

(declare-fun m!88330 () Bool)

(assert (=> b!92766 m!88330))

(assert (=> b!92712 d!60680))

(declare-fun d!60682 () Bool)

(declare-fun c!22633 () Bool)

(assert (=> d!60682 (= c!22633 (is-Nil!740 l1!498))))

(declare-fun e!50755 () (Set (_ BitVec 32)))

(assert (=> d!60682 (= (content!31 l1!498) e!50755)))

(declare-fun b!92767 () Bool)

(assert (=> b!92767 (= e!50755 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92768 () Bool)

(assert (=> b!92768 (= e!50755 (union (insert (head!1168 l1!498) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1164 l1!498))))))

(assert (= (and d!60682 c!22633) b!92767))

(assert (= (and d!60682 (not c!22633)) b!92768))

(declare-fun m!88332 () Bool)

(assert (=> b!92768 m!88332))

(assert (=> b!92768 m!88314))

(assert (=> b!92712 d!60682))

(declare-fun d!60684 () Bool)

(declare-fun c!22634 () Bool)

(assert (=> d!60684 (= c!22634 (is-Nil!740 l2!490))))

(declare-fun e!50756 () (Set (_ BitVec 32)))

(assert (=> d!60684 (= (content!31 l2!490) e!50756)))

(declare-fun b!92769 () Bool)

(assert (=> b!92769 (= e!50756 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92770 () Bool)

(assert (=> b!92770 (= e!50756 (union (insert (head!1168 l2!490) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1164 l2!490))))))

(assert (= (and d!60684 c!22634) b!92769))

(assert (= (and d!60684 (not c!22634)) b!92770))

(declare-fun m!88334 () Bool)

(assert (=> b!92770 m!88334))

(declare-fun m!88336 () Bool)

(assert (=> b!92770 m!88336))

(assert (=> b!92712 d!60684))

(declare-fun d!60686 () Bool)

(declare-fun c!22635 () Bool)

(assert (=> d!60686 (= c!22635 (is-Nil!740 l3!58))))

(declare-fun e!50757 () (Set (_ BitVec 32)))

(assert (=> d!60686 (= (content!31 l3!58) e!50757)))

(declare-fun b!92771 () Bool)

(assert (=> b!92771 (= e!50757 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92772 () Bool)

(assert (=> b!92772 (= e!50757 (union (insert (head!1168 l3!58) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1164 l3!58))))))

(assert (= (and d!60686 c!22635) b!92771))

(assert (= (and d!60686 (not c!22635)) b!92772))

(declare-fun m!88338 () Bool)

(assert (=> b!92772 m!88338))

(declare-fun m!88340 () Bool)

(assert (=> b!92772 m!88340))

(assert (=> b!92712 d!60686))

(push 1)

(assert (not b!92768))

(assert (not b!92738))

(assert (not d!60678))

(assert (not b!92757))

(assert (not b!92766))

(assert (not d!60676))

(assert (not b!92772))

(assert (not b!92745))

(assert (not b!92746))

(assert (not b!92742))

(assert (not b!92754))

(assert (not b!92750))

(assert (not b!92770))

(assert (not b!92758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!92773 () Bool)

(declare-fun e!50760 () List!796)

(declare-fun res!48823 () List!796)

(assert (=> b!92773 (= e!50760 res!48823)))

(assert (=> b!92773 true))

(declare-fun lt!21002 () Bool)

(declare-fun b!92774 () Bool)

(assert (=> b!92774 (= e!50760 (concat0!1 (ite lt!21002 (tail!1164 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))) (ite (and (is-Nil!740 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))) (not (is-Nil!740 (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))))) Nil!740 (tail!1164 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))))) (ite lt!21002 (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490)) (ite (and (is-Nil!740 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))) (not (is-Nil!740 (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))))) (tail!1164 (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))) (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490)))) (ite lt!21002 (ite lt!20988 (Cons!738 (head!1168 l1!498) l3!58) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58)))) (ite (and (is-Nil!740 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))) (not (is-Nil!740 (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))))) (Cons!738 (head!1168 (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))) (ite lt!20988 (Cons!738 (head!1168 l1!498) l3!58) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58))))) (Cons!738 (head!1168 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))) (ite lt!20988 (Cons!738 (head!1168 l1!498) l3!58) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58)))))))))))

(declare-fun d!60688 () Bool)

(declare-fun lt!20998 () List!796)

(assert (=> d!60688 (= (content!31 lt!20998) (union (union (content!31 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))) (content!31 (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490)))) (content!31 (ite lt!20988 (Cons!738 (head!1168 l1!498) l3!58) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58)))))))))

(declare-fun e!50762 () List!796)

(assert (=> d!60688 (= lt!20998 e!50762)))

(declare-fun c!22641 () Bool)

(assert (=> d!60688 (= c!22641 lt!21002)))

(declare-fun lt!21003 () List!796)

(assert (=> d!60688 (= lt!21003 e!50760)))

(declare-fun c!22639 () Bool)

(assert (=> d!60688 (= c!22639 (or lt!21002 (let ((cond!14771 (is-Nil!740 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))))) (or (and cond!14771 (not (is-Nil!740 (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))))) (not cond!14771)))))))

(assert (=> d!60688 (= lt!21002 (is-Cons!738 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))))))

(assert (=> d!60688 (= (concat0!1 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498)))) (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490)) (ite lt!20988 (Cons!738 (head!1168 l1!498) l3!58) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58))))) lt!20998)))

(declare-fun b!92775 () Bool)

(declare-fun e!50761 () List!796)

(declare-fun res!48822 () List!796)

(assert (=> b!92775 (= e!50761 res!48822)))

(assert (=> b!92775 true))

(declare-fun b!92776 () Bool)

(declare-fun e!50759 () List!796)

(declare-fun lt!20999 () List!796)

(assert (=> b!92776 (= e!50759 lt!20999)))

(declare-fun b!92777 () Bool)

(assert (=> b!92777 (= e!50762 e!50759)))

(declare-fun c!22636 () Bool)

(declare-fun lt!20997 () Bool)

(assert (=> b!92777 (= c!22636 (and lt!20997 (is-Nil!740 (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490)))))))

(assert (=> b!92777 (= lt!20999 e!50761)))

(declare-fun c!22638 () Bool)

(declare-fun lt!21000 () Bool)

(assert (=> b!92777 (= c!22638 (or lt!21000 (not lt!20997)))))

(assert (=> b!92777 (= lt!21000 (and lt!20997 (not (is-Nil!740 (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))))))))

(assert (=> b!92777 (= lt!20997 (is-Nil!740 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))))))

(declare-fun b!92778 () Bool)

(assert (=> b!92778 (= e!50759 (reverse!7 (ite lt!20988 (Cons!738 (head!1168 l1!498) l3!58) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58))))))))

(declare-fun b!92779 () Bool)

(declare-fun e!50763 () List!796)

(assert (=> b!92779 (= e!50763 lt!21003)))

(declare-fun b!92780 () Bool)

(declare-fun e!50758 () List!796)

(assert (=> b!92780 (= e!50762 e!50758)))

(declare-fun lt!21001 () Bool)

(declare-fun c!22640 () Bool)

(assert (=> b!92780 (= c!22640 (and lt!21001 (is-Nil!740 (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490)))))))

(assert (=> b!92780 (= lt!21001 (is-Nil!740 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))))))

(declare-fun b!92781 () Bool)

(assert (=> b!92781 (= e!50758 (reverse!7 (ite lt!20988 (Cons!738 (head!1168 l1!498) l3!58) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58))))))))

(declare-fun b!92782 () Bool)

(assert (=> b!92782 (= e!50761 (concat0!1 (ite lt!21000 Nil!740 (tail!1164 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498)))))) (ite lt!21000 (tail!1164 (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))) (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))) (ite lt!21000 (Cons!738 (head!1168 (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))) (ite lt!20988 (Cons!738 (head!1168 l1!498) l3!58) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58))))) (Cons!738 (head!1168 (ite lt!20988 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))) (ite lt!20988 (Cons!738 (head!1168 l1!498) l3!58) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58))))))))))

(declare-fun b!92783 () Bool)

(assert (=> b!92783 (= e!50758 e!50763)))

(declare-fun c!22637 () Bool)

(assert (=> b!92783 (= c!22637 (or (and lt!21001 (not (is-Nil!740 (ite lt!20988 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))))) (not lt!21001)))))

(declare-fun b!92784 () Bool)

(declare-fun res!48821 () List!796)

(assert (=> b!92784 (= e!50763 res!48821)))

(assert (=> b!92784 true))

(assert (=> b!92784 true))

(assert (= (and d!60688 c!22639) b!92774))

(assert (= (and d!60688 (not c!22639)) b!92773))

(assert (= (and b!92777 c!22638) b!92782))

(assert (= (and b!92777 (not c!22638)) b!92775))

(assert (= (and b!92777 c!22636) b!92778))

(assert (= (and b!92777 (not c!22636)) b!92776))

(assert (= (and b!92783 c!22637) b!92779))

(assert (= (and b!92783 (not c!22637)) b!92784))

(assert (= (and b!92780 c!22640) b!92781))

(assert (= (and b!92780 (not c!22640)) b!92783))

(assert (= (and d!60688 c!22641) b!92777))

(assert (= (and d!60688 (not c!22641)) b!92780))

(declare-fun m!88342 () Bool)

(assert (=> b!92774 m!88342))

(declare-fun m!88344 () Bool)

(assert (=> b!92782 m!88344))

(declare-fun m!88346 () Bool)

(assert (=> d!60688 m!88346))

(declare-fun m!88348 () Bool)

(assert (=> d!60688 m!88348))

(declare-fun m!88350 () Bool)

(assert (=> d!60688 m!88350))

(declare-fun m!88352 () Bool)

(assert (=> d!60688 m!88352))

(declare-fun m!88354 () Bool)

(assert (=> b!92778 m!88354))

(assert (=> b!92781 m!88354))

(assert (=> b!92738 d!60688))

(declare-fun d!60690 () Bool)

(declare-fun c!22642 () Bool)

(assert (=> d!60690 (= c!22642 (is-Nil!740 lt!20984))))

(declare-fun e!50764 () (Set (_ BitVec 32)))

(assert (=> d!60690 (= (content!31 lt!20984) e!50764)))

(declare-fun b!92785 () Bool)

(assert (=> b!92785 (= e!50764 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92786 () Bool)

(assert (=> b!92786 (= e!50764 (union (insert (head!1168 lt!20984) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1164 lt!20984))))))

(assert (= (and d!60690 c!22642) b!92785))

(assert (= (and d!60690 (not c!22642)) b!92786))

(declare-fun m!88356 () Bool)

(assert (=> b!92786 m!88356))

(declare-fun m!88358 () Bool)

(assert (=> b!92786 m!88358))

(assert (=> d!60676 d!60690))

(declare-fun d!60692 () Bool)

(declare-fun c!22643 () Bool)

(assert (=> d!60692 (= c!22643 (is-Nil!740 (tail!1164 l1!498)))))

(declare-fun e!50765 () (Set (_ BitVec 32)))

(assert (=> d!60692 (= (content!31 (tail!1164 l1!498)) e!50765)))

(declare-fun b!92787 () Bool)

(assert (=> b!92787 (= e!50765 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92788 () Bool)

(assert (=> b!92788 (= e!50765 (union (insert (head!1168 (tail!1164 l1!498)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1164 (tail!1164 l1!498)))))))

(assert (= (and d!60692 c!22643) b!92787))

(assert (= (and d!60692 (not c!22643)) b!92788))

(declare-fun m!88360 () Bool)

(assert (=> b!92788 m!88360))

(declare-fun m!88362 () Bool)

(assert (=> b!92788 m!88362))

(assert (=> d!60676 d!60692))

(assert (=> d!60676 d!60684))

(declare-fun d!60694 () Bool)

(declare-fun c!22644 () Bool)

(assert (=> d!60694 (= c!22644 (is-Nil!740 (Cons!738 (head!1168 l1!498) l3!58)))))

(declare-fun e!50766 () (Set (_ BitVec 32)))

(assert (=> d!60694 (= (content!31 (Cons!738 (head!1168 l1!498) l3!58)) e!50766)))

(declare-fun b!92789 () Bool)

(assert (=> b!92789 (= e!50766 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92790 () Bool)

(assert (=> b!92790 (= e!50766 (union (insert (head!1168 (Cons!738 (head!1168 l1!498) l3!58)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1164 (Cons!738 (head!1168 l1!498) l3!58)))))))

(assert (= (and d!60694 c!22644) b!92789))

(assert (= (and d!60694 (not c!22644)) b!92790))

(declare-fun m!88364 () Bool)

(assert (=> b!92790 m!88364))

(declare-fun m!88366 () Bool)

(assert (=> b!92790 m!88366))

(assert (=> d!60676 d!60694))

(declare-fun d!60696 () Bool)

(declare-fun lt!21006 () List!796)

(assert (=> d!60696 (= (content!31 lt!21006) (content!31 l3!58))))

(declare-fun reverse0!3 (List!796 List!796) List!796)

(assert (=> d!60696 (= lt!21006 (reverse0!3 l3!58 Nil!740))))

(assert (=> d!60696 (= (reverse!7 l3!58) lt!21006)))

(declare-fun bs!41975 () Bool)

(assert (= bs!41975 d!60696))

(declare-fun m!88368 () Bool)

(assert (=> bs!41975 m!88368))

(assert (=> bs!41975 m!88306))

(declare-fun m!88370 () Bool)

(assert (=> bs!41975 m!88370))

(assert (=> b!92757 d!60696))

(declare-fun d!60698 () Bool)

(declare-fun c!22645 () Bool)

(assert (=> d!60698 (= c!22645 (is-Nil!740 (tail!1164 l3!58)))))

(declare-fun e!50767 () (Set (_ BitVec 32)))

(assert (=> d!60698 (= (content!31 (tail!1164 l3!58)) e!50767)))

(declare-fun b!92791 () Bool)

(assert (=> b!92791 (= e!50767 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92792 () Bool)

(assert (=> b!92792 (= e!50767 (union (insert (head!1168 (tail!1164 l3!58)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1164 (tail!1164 l3!58)))))))

(assert (= (and d!60698 c!22645) b!92791))

(assert (= (and d!60698 (not c!22645)) b!92792))

(declare-fun m!88372 () Bool)

(assert (=> b!92792 m!88372))

(declare-fun m!88374 () Bool)

(assert (=> b!92792 m!88374))

(assert (=> b!92772 d!60698))

(declare-fun b!92793 () Bool)

(declare-fun e!50770 () List!796)

(declare-fun res!48826 () List!796)

(assert (=> b!92793 (= e!50770 res!48826)))

(assert (=> b!92793 true))

(declare-fun lt!21012 () Bool)

(declare-fun b!92794 () Bool)

(assert (=> b!92794 (= e!50770 (concat0!1 (ite lt!21012 (tail!1164 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498)))) (ite (and (is-Nil!740 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498)))) (not (is-Nil!740 (ite lt!20986 (tail!1164 l2!490) l2!490)))) Nil!740 (tail!1164 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498)))))) (ite lt!21012 (ite lt!20986 (tail!1164 l2!490) l2!490) (ite (and (is-Nil!740 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498)))) (not (is-Nil!740 (ite lt!20986 (tail!1164 l2!490) l2!490)))) (tail!1164 (ite lt!20986 (tail!1164 l2!490) l2!490)) (ite lt!20986 (tail!1164 l2!490) l2!490))) (ite lt!21012 (ite lt!20986 (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58))) (ite (and (is-Nil!740 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498)))) (not (is-Nil!740 (ite lt!20986 (tail!1164 l2!490) l2!490)))) (Cons!738 (head!1168 (ite lt!20986 (tail!1164 l2!490) l2!490)) (ite lt!20986 (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58)))) (Cons!738 (head!1168 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498)))) (ite lt!20986 (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58))))))))))

(declare-fun d!60700 () Bool)

(declare-fun lt!21008 () List!796)

(assert (=> d!60700 (= (content!31 lt!21008) (union (union (content!31 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498)))) (content!31 (ite lt!20986 (tail!1164 l2!490) l2!490))) (content!31 (ite lt!20986 (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58))))))))

(declare-fun e!50772 () List!796)

(assert (=> d!60700 (= lt!21008 e!50772)))

(declare-fun c!22651 () Bool)

(assert (=> d!60700 (= c!22651 lt!21012)))

(declare-fun lt!21013 () List!796)

(assert (=> d!60700 (= lt!21013 e!50770)))

(declare-fun c!22649 () Bool)

(assert (=> d!60700 (= c!22649 (or lt!21012 (let ((cond!14771 (is-Nil!740 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498)))))) (or (and cond!14771 (not (is-Nil!740 (ite lt!20986 (tail!1164 l2!490) l2!490)))) (not cond!14771)))))))

(assert (=> d!60700 (= lt!21012 (is-Cons!738 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498)))))))

(assert (=> d!60700 (= (concat0!1 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498))) (ite lt!20986 (tail!1164 l2!490) l2!490) (ite lt!20986 (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58)))) lt!21008)))

(declare-fun b!92795 () Bool)

(declare-fun e!50771 () List!796)

(declare-fun res!48825 () List!796)

(assert (=> b!92795 (= e!50771 res!48825)))

(assert (=> b!92795 true))

(declare-fun b!92796 () Bool)

(declare-fun e!50769 () List!796)

(declare-fun lt!21009 () List!796)

(assert (=> b!92796 (= e!50769 lt!21009)))

(declare-fun b!92797 () Bool)

(assert (=> b!92797 (= e!50772 e!50769)))

(declare-fun c!22646 () Bool)

(declare-fun lt!21007 () Bool)

(assert (=> b!92797 (= c!22646 (and lt!21007 (is-Nil!740 (ite lt!20986 (tail!1164 l2!490) l2!490))))))

(assert (=> b!92797 (= lt!21009 e!50771)))

(declare-fun c!22648 () Bool)

(declare-fun lt!21010 () Bool)

(assert (=> b!92797 (= c!22648 (or lt!21010 (not lt!21007)))))

(assert (=> b!92797 (= lt!21010 (and lt!21007 (not (is-Nil!740 (ite lt!20986 (tail!1164 l2!490) l2!490)))))))

(assert (=> b!92797 (= lt!21007 (is-Nil!740 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498)))))))

(declare-fun b!92798 () Bool)

(assert (=> b!92798 (= e!50769 (reverse!7 (ite lt!20986 (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58)))))))

(declare-fun b!92799 () Bool)

(declare-fun e!50773 () List!796)

(assert (=> b!92799 (= e!50773 lt!21013)))

(declare-fun b!92800 () Bool)

(declare-fun e!50768 () List!796)

(assert (=> b!92800 (= e!50772 e!50768)))

(declare-fun lt!21011 () Bool)

(declare-fun c!22650 () Bool)

(assert (=> b!92800 (= c!22650 (and lt!21011 (is-Nil!740 (ite lt!20986 (tail!1164 l2!490) l2!490))))))

(assert (=> b!92800 (= lt!21011 (is-Nil!740 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498)))))))

(declare-fun b!92801 () Bool)

(assert (=> b!92801 (= e!50768 (reverse!7 (ite lt!20986 (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58)))))))

(declare-fun b!92802 () Bool)

(assert (=> b!92802 (= e!50771 (concat0!1 (ite lt!21010 Nil!740 (tail!1164 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498))))) (ite lt!21010 (tail!1164 (ite lt!20986 (tail!1164 l2!490) l2!490)) (ite lt!20986 (tail!1164 l2!490) l2!490)) (ite lt!21010 (Cons!738 (head!1168 (ite lt!20986 (tail!1164 l2!490) l2!490)) (ite lt!20986 (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58)))) (Cons!738 (head!1168 (ite lt!20986 Nil!740 (tail!1164 (tail!1164 l1!498)))) (ite lt!20986 (Cons!738 (head!1168 l2!490) (Cons!738 (head!1168 l1!498) l3!58)) (Cons!738 (head!1168 (tail!1164 l1!498)) (Cons!738 (head!1168 l1!498) l3!58)))))))))

(declare-fun b!92803 () Bool)

(assert (=> b!92803 (= e!50768 e!50773)))

(declare-fun c!22647 () Bool)

(assert (=> b!92803 (= c!22647 (or (and lt!21011 (not (is-Nil!740 (ite lt!20986 (tail!1164 l2!490) l2!490)))) (not lt!21011)))))

(declare-fun b!92804 () Bool)

(declare-fun res!48824 () List!796)

(assert (=> b!92804 (= e!50773 res!48824)))

(assert (=> b!92804 true))

(assert (=> b!92804 true))

(assert (= (and d!60700 c!22649) b!92794))

(assert (= (and d!60700 (not c!22649)) b!92793))

(assert (= (and b!92797 c!22648) b!92802))

(assert (= (and b!92797 (not c!22648)) b!92795))

(assert (= (and b!92797 c!22646) b!92798))

(assert (= (and b!92797 (not c!22646)) b!92796))

(assert (= (and b!92803 c!22647) b!92799))

(assert (= (and b!92803 (not c!22647)) b!92804))

(assert (= (and b!92800 c!22650) b!92801))

(assert (= (and b!92800 (not c!22650)) b!92803))

(assert (= (and d!60700 c!22651) b!92797))

(assert (= (and d!60700 (not c!22651)) b!92800))

(declare-fun m!88376 () Bool)

(assert (=> b!92794 m!88376))

(declare-fun m!88378 () Bool)

(assert (=> b!92802 m!88378))

(declare-fun m!88380 () Bool)

(assert (=> d!60700 m!88380))

(declare-fun m!88382 () Bool)

(assert (=> d!60700 m!88382))

(declare-fun m!88384 () Bool)

(assert (=> d!60700 m!88384))

(declare-fun m!88386 () Bool)

(assert (=> d!60700 m!88386))

(declare-fun m!88388 () Bool)

(assert (=> b!92798 m!88388))

(assert (=> b!92801 m!88388))

(assert (=> b!92746 d!60700))

(declare-fun b!92805 () Bool)

(declare-fun e!50776 () List!796)

(declare-fun res!48829 () List!796)

(assert (=> b!92805 (= e!50776 res!48829)))

(assert (=> b!92805 true))

(declare-fun lt!21019 () Bool)

(declare-fun b!92806 () Bool)

(assert (=> b!92806 (= e!50776 (concat0!1 (ite lt!21019 (tail!1164 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498)))) (ite (and (is-Nil!740 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498)))) (not (is-Nil!740 (ite lt!20993 (tail!1164 l2!490) l2!490)))) Nil!740 (tail!1164 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498)))))) (ite lt!21019 (ite lt!20993 (tail!1164 l2!490) l2!490) (ite (and (is-Nil!740 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498)))) (not (is-Nil!740 (ite lt!20993 (tail!1164 l2!490) l2!490)))) (tail!1164 (ite lt!20993 (tail!1164 l2!490) l2!490)) (ite lt!20993 (tail!1164 l2!490) l2!490))) (ite lt!21019 (ite lt!20993 (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58)) (ite (and (is-Nil!740 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498)))) (not (is-Nil!740 (ite lt!20993 (tail!1164 l2!490) l2!490)))) (Cons!738 (head!1168 (ite lt!20993 (tail!1164 l2!490) l2!490)) (ite lt!20993 (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58))) (Cons!738 (head!1168 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498)))) (ite lt!20993 (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58)))))))))

(declare-fun lt!21015 () List!796)

(declare-fun d!60702 () Bool)

(assert (=> d!60702 (= (content!31 lt!21015) (union (union (content!31 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498)))) (content!31 (ite lt!20993 (tail!1164 l2!490) l2!490))) (content!31 (ite lt!20993 (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58)))))))

(declare-fun e!50778 () List!796)

(assert (=> d!60702 (= lt!21015 e!50778)))

(declare-fun c!22657 () Bool)

(assert (=> d!60702 (= c!22657 lt!21019)))

(declare-fun lt!21020 () List!796)

(assert (=> d!60702 (= lt!21020 e!50776)))

(declare-fun c!22655 () Bool)

(assert (=> d!60702 (= c!22655 (or lt!21019 (let ((cond!14771 (is-Nil!740 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498)))))) (or (and cond!14771 (not (is-Nil!740 (ite lt!20993 (tail!1164 l2!490) l2!490)))) (not cond!14771)))))))

(assert (=> d!60702 (= lt!21019 (is-Cons!738 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498)))))))

(assert (=> d!60702 (= (concat0!1 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498))) (ite lt!20993 (tail!1164 l2!490) l2!490) (ite lt!20993 (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58))) lt!21015)))

(declare-fun b!92807 () Bool)

(declare-fun e!50777 () List!796)

(declare-fun res!48828 () List!796)

(assert (=> b!92807 (= e!50777 res!48828)))

(assert (=> b!92807 true))

(declare-fun b!92808 () Bool)

(declare-fun e!50775 () List!796)

(declare-fun lt!21016 () List!796)

(assert (=> b!92808 (= e!50775 lt!21016)))

(declare-fun b!92809 () Bool)

(assert (=> b!92809 (= e!50778 e!50775)))

(declare-fun c!22652 () Bool)

(declare-fun lt!21014 () Bool)

(assert (=> b!92809 (= c!22652 (and lt!21014 (is-Nil!740 (ite lt!20993 (tail!1164 l2!490) l2!490))))))

(assert (=> b!92809 (= lt!21016 e!50777)))

(declare-fun c!22654 () Bool)

(declare-fun lt!21017 () Bool)

(assert (=> b!92809 (= c!22654 (or lt!21017 (not lt!21014)))))

(assert (=> b!92809 (= lt!21017 (and lt!21014 (not (is-Nil!740 (ite lt!20993 (tail!1164 l2!490) l2!490)))))))

(assert (=> b!92809 (= lt!21014 (is-Nil!740 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498)))))))

(declare-fun b!92810 () Bool)

(assert (=> b!92810 (= e!50775 (reverse!7 (ite lt!20993 (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58))))))

(declare-fun b!92811 () Bool)

(declare-fun e!50779 () List!796)

(assert (=> b!92811 (= e!50779 lt!21020)))

(declare-fun b!92812 () Bool)

(declare-fun e!50774 () List!796)

(assert (=> b!92812 (= e!50778 e!50774)))

(declare-fun c!22656 () Bool)

(declare-fun lt!21018 () Bool)

(assert (=> b!92812 (= c!22656 (and lt!21018 (is-Nil!740 (ite lt!20993 (tail!1164 l2!490) l2!490))))))

(assert (=> b!92812 (= lt!21018 (is-Nil!740 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498)))))))

(declare-fun b!92813 () Bool)

(assert (=> b!92813 (= e!50774 (reverse!7 (ite lt!20993 (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58))))))

(declare-fun b!92814 () Bool)

(assert (=> b!92814 (= e!50777 (concat0!1 (ite lt!21017 Nil!740 (tail!1164 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498))))) (ite lt!21017 (tail!1164 (ite lt!20993 (tail!1164 l2!490) l2!490)) (ite lt!20993 (tail!1164 l2!490) l2!490)) (ite lt!21017 (Cons!738 (head!1168 (ite lt!20993 (tail!1164 l2!490) l2!490)) (ite lt!20993 (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58))) (Cons!738 (head!1168 (ite lt!20993 Nil!740 (tail!1164 (tail!1164 l1!498)))) (ite lt!20993 (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58))))))))

(declare-fun b!92815 () Bool)

(assert (=> b!92815 (= e!50774 e!50779)))

(declare-fun c!22653 () Bool)

(assert (=> b!92815 (= c!22653 (or (and lt!21018 (not (is-Nil!740 (ite lt!20993 (tail!1164 l2!490) l2!490)))) (not lt!21018)))))

(declare-fun b!92816 () Bool)

(declare-fun res!48827 () List!796)

(assert (=> b!92816 (= e!50779 res!48827)))

(assert (=> b!92816 true))

(assert (=> b!92816 true))

(assert (= (and d!60702 c!22655) b!92806))

(assert (= (and d!60702 (not c!22655)) b!92805))

(assert (= (and b!92809 c!22654) b!92814))

(assert (= (and b!92809 (not c!22654)) b!92807))

(assert (= (and b!92809 c!22652) b!92810))

(assert (= (and b!92809 (not c!22652)) b!92808))

(assert (= (and b!92815 c!22653) b!92811))

(assert (= (and b!92815 (not c!22653)) b!92816))

(assert (= (and b!92812 c!22656) b!92813))

(assert (= (and b!92812 (not c!22656)) b!92815))

(assert (= (and d!60702 c!22657) b!92809))

(assert (= (and d!60702 (not c!22657)) b!92812))

(declare-fun m!88390 () Bool)

(assert (=> b!92806 m!88390))

(declare-fun m!88392 () Bool)

(assert (=> b!92814 m!88392))

(declare-fun m!88394 () Bool)

(assert (=> d!60702 m!88394))

(declare-fun m!88396 () Bool)

(assert (=> d!60702 m!88396))

(declare-fun m!88398 () Bool)

(assert (=> d!60702 m!88398))

(declare-fun m!88400 () Bool)

(assert (=> d!60702 m!88400))

(declare-fun m!88402 () Bool)

(assert (=> b!92810 m!88402))

(assert (=> b!92813 m!88402))

(assert (=> b!92758 d!60702))

(declare-fun d!60704 () Bool)

(declare-fun lt!21021 () List!796)

(assert (=> d!60704 (= (content!31 lt!21021) (content!31 (Cons!738 (head!1168 l1!498) l3!58)))))

(assert (=> d!60704 (= lt!21021 (reverse0!3 (Cons!738 (head!1168 l1!498) l3!58) Nil!740))))

(assert (=> d!60704 (= (reverse!7 (Cons!738 (head!1168 l1!498) l3!58)) lt!21021)))

(declare-fun bs!41976 () Bool)

(assert (= bs!41976 d!60704))

(declare-fun m!88404 () Bool)

(assert (=> bs!41976 m!88404))

(assert (=> bs!41976 m!88316))

(declare-fun m!88406 () Bool)

(assert (=> bs!41976 m!88406))

(assert (=> b!92745 d!60704))

(declare-fun d!60706 () Bool)

(declare-fun c!22658 () Bool)

(assert (=> d!60706 (= c!22658 (is-Nil!740 (tail!1164 x$8!105)))))

(declare-fun e!50780 () (Set (_ BitVec 32)))

(assert (=> d!60706 (= (content!31 (tail!1164 x$8!105)) e!50780)))

(declare-fun b!92817 () Bool)

(assert (=> b!92817 (= e!50780 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92818 () Bool)

(assert (=> b!92818 (= e!50780 (union (insert (head!1168 (tail!1164 x$8!105)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1164 (tail!1164 x$8!105)))))))

(assert (= (and d!60706 c!22658) b!92817))

(assert (= (and d!60706 (not c!22658)) b!92818))

(declare-fun m!88408 () Bool)

(assert (=> b!92818 m!88408))

(declare-fun m!88410 () Bool)

(assert (=> b!92818 m!88410))

(assert (=> b!92766 d!60706))

(assert (=> b!92754 d!60696))

(declare-fun b!92819 () Bool)

(declare-fun e!50783 () List!796)

(declare-fun res!48832 () List!796)

(assert (=> b!92819 (= e!50783 res!48832)))

(assert (=> b!92819 true))

(declare-fun b!92820 () Bool)

(declare-fun lt!21027 () Bool)

(assert (=> b!92820 (= e!50783 (concat0!1 (ite lt!21027 (tail!1164 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))) (ite (and (is-Nil!740 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))) (not (is-Nil!740 (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))))) Nil!740 (tail!1164 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))))) (ite lt!21027 (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490)) (ite (and (is-Nil!740 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))) (not (is-Nil!740 (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))))) (tail!1164 (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))) (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490)))) (ite lt!21027 (ite lt!20995 l3!58 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58))) (ite (and (is-Nil!740 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))) (not (is-Nil!740 (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))))) (Cons!738 (head!1168 (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))) (ite lt!20995 l3!58 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58)))) (Cons!738 (head!1168 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))) (ite lt!20995 l3!58 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58))))))))))

(declare-fun d!60708 () Bool)

(declare-fun lt!21023 () List!796)

(assert (=> d!60708 (= (content!31 lt!21023) (union (union (content!31 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))) (content!31 (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490)))) (content!31 (ite lt!20995 l3!58 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58))))))))

(declare-fun e!50785 () List!796)

(assert (=> d!60708 (= lt!21023 e!50785)))

(declare-fun c!22664 () Bool)

(assert (=> d!60708 (= c!22664 lt!21027)))

(declare-fun lt!21028 () List!796)

(assert (=> d!60708 (= lt!21028 e!50783)))

(declare-fun c!22662 () Bool)

(assert (=> d!60708 (= c!22662 (or lt!21027 (let ((cond!14771 (is-Nil!740 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))))) (or (and cond!14771 (not (is-Nil!740 (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))))) (not cond!14771)))))))

(assert (=> d!60708 (= lt!21027 (is-Cons!738 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))))))

(assert (=> d!60708 (= (concat0!1 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498)))) (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490)) (ite lt!20995 l3!58 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58)))) lt!21023)))

(declare-fun b!92821 () Bool)

(declare-fun e!50784 () List!796)

(declare-fun res!48831 () List!796)

(assert (=> b!92821 (= e!50784 res!48831)))

(assert (=> b!92821 true))

(declare-fun b!92822 () Bool)

(declare-fun e!50782 () List!796)

(declare-fun lt!21024 () List!796)

(assert (=> b!92822 (= e!50782 lt!21024)))

(declare-fun b!92823 () Bool)

(assert (=> b!92823 (= e!50785 e!50782)))

(declare-fun c!22659 () Bool)

(declare-fun lt!21022 () Bool)

(assert (=> b!92823 (= c!22659 (and lt!21022 (is-Nil!740 (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490)))))))

(assert (=> b!92823 (= lt!21024 e!50784)))

(declare-fun c!22661 () Bool)

(declare-fun lt!21025 () Bool)

(assert (=> b!92823 (= c!22661 (or lt!21025 (not lt!21022)))))

(assert (=> b!92823 (= lt!21025 (and lt!21022 (not (is-Nil!740 (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))))))))

(assert (=> b!92823 (= lt!21022 (is-Nil!740 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))))))

(declare-fun b!92824 () Bool)

(assert (=> b!92824 (= e!50782 (reverse!7 (ite lt!20995 l3!58 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58)))))))

(declare-fun b!92825 () Bool)

(declare-fun e!50786 () List!796)

(assert (=> b!92825 (= e!50786 lt!21028)))

(declare-fun b!92826 () Bool)

(declare-fun e!50781 () List!796)

(assert (=> b!92826 (= e!50785 e!50781)))

(declare-fun c!22663 () Bool)

(declare-fun lt!21026 () Bool)

(assert (=> b!92826 (= c!22663 (and lt!21026 (is-Nil!740 (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490)))))))

(assert (=> b!92826 (= lt!21026 (is-Nil!740 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))))))

(declare-fun b!92827 () Bool)

(assert (=> b!92827 (= e!50781 (reverse!7 (ite lt!20995 l3!58 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58)))))))

(declare-fun b!92828 () Bool)

(assert (=> b!92828 (= e!50784 (concat0!1 (ite lt!21025 Nil!740 (tail!1164 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498)))))) (ite lt!21025 (tail!1164 (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))) (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))) (ite lt!21025 (Cons!738 (head!1168 (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))) (ite lt!20995 l3!58 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58)))) (Cons!738 (head!1168 (ite lt!20995 (tail!1164 (tail!1164 l1!498)) (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) Nil!740 (tail!1164 (tail!1164 l1!498))))) (ite lt!20995 l3!58 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (Cons!738 (head!1168 l2!490) l3!58) (Cons!738 (head!1168 (tail!1164 l1!498)) l3!58)))))))))

(declare-fun b!92829 () Bool)

(assert (=> b!92829 (= e!50781 e!50786)))

(declare-fun c!22660 () Bool)

(assert (=> b!92829 (= c!22660 (or (and lt!21026 (not (is-Nil!740 (ite lt!20995 l2!490 (ite (and (is-Nil!740 (tail!1164 l1!498)) (not (is-Nil!740 l2!490))) (tail!1164 l2!490) l2!490))))) (not lt!21026)))))

(declare-fun b!92830 () Bool)

(declare-fun res!48830 () List!796)

(assert (=> b!92830 (= e!50786 res!48830)))

(assert (=> b!92830 true))

(assert (=> b!92830 true))

(assert (= (and d!60708 c!22662) b!92820))

(assert (= (and d!60708 (not c!22662)) b!92819))

(assert (= (and b!92823 c!22661) b!92828))

(assert (= (and b!92823 (not c!22661)) b!92821))

(assert (= (and b!92823 c!22659) b!92824))

(assert (= (and b!92823 (not c!22659)) b!92822))

(assert (= (and b!92829 c!22660) b!92825))

(assert (= (and b!92829 (not c!22660)) b!92830))

(assert (= (and b!92826 c!22663) b!92827))

(assert (= (and b!92826 (not c!22663)) b!92829))

(assert (= (and d!60708 c!22664) b!92823))

(assert (= (and d!60708 (not c!22664)) b!92826))

(declare-fun m!88412 () Bool)

(assert (=> b!92820 m!88412))

(declare-fun m!88414 () Bool)

(assert (=> b!92828 m!88414))

(declare-fun m!88416 () Bool)

(assert (=> d!60708 m!88416))

(declare-fun m!88418 () Bool)

(assert (=> d!60708 m!88418))

(declare-fun m!88420 () Bool)

(assert (=> d!60708 m!88420))

(declare-fun m!88422 () Bool)

(assert (=> d!60708 m!88422))

(declare-fun m!88424 () Bool)

(assert (=> b!92824 m!88424))

(assert (=> b!92827 m!88424))

(assert (=> b!92750 d!60708))

(declare-fun d!60710 () Bool)

(declare-fun c!22665 () Bool)

(assert (=> d!60710 (= c!22665 (is-Nil!740 lt!20991))))

(declare-fun e!50787 () (Set (_ BitVec 32)))

(assert (=> d!60710 (= (content!31 lt!20991) e!50787)))

(declare-fun b!92831 () Bool)

(assert (=> b!92831 (= e!50787 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92832 () Bool)

(assert (=> b!92832 (= e!50787 (union (insert (head!1168 lt!20991) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1164 lt!20991))))))

(assert (= (and d!60710 c!22665) b!92831))

(assert (= (and d!60710 (not c!22665)) b!92832))

(declare-fun m!88426 () Bool)

(assert (=> b!92832 m!88426))

(declare-fun m!88428 () Bool)

(assert (=> b!92832 m!88428))

(assert (=> d!60678 d!60710))

(assert (=> d!60678 d!60692))

(assert (=> d!60678 d!60684))

(assert (=> d!60678 d!60686))

(declare-fun d!60712 () Bool)

(declare-fun c!22666 () Bool)

(assert (=> d!60712 (= c!22666 (is-Nil!740 (tail!1164 l2!490)))))

(declare-fun e!50788 () (Set (_ BitVec 32)))

(assert (=> d!60712 (= (content!31 (tail!1164 l2!490)) e!50788)))

(declare-fun b!92833 () Bool)

(assert (=> b!92833 (= e!50788 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92834 () Bool)

(assert (=> b!92834 (= e!50788 (union (insert (head!1168 (tail!1164 l2!490)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1164 (tail!1164 l2!490)))))))

(assert (= (and d!60712 c!22666) b!92833))

(assert (= (and d!60712 (not c!22666)) b!92834))

(declare-fun m!88430 () Bool)

(assert (=> b!92834 m!88430))

(declare-fun m!88432 () Bool)

(assert (=> b!92834 m!88432))

(assert (=> b!92770 d!60712))

(assert (=> b!92742 d!60704))

(assert (=> b!92768 d!60692))

(push 1)

(assert (not b!92818))

(assert (not b!92801))

(assert (not d!60702))

(assert (not b!92827))

(assert (not b!92798))

(assert (not b!92813))

(assert (not b!92792))

(assert (not d!60688))

(assert (not b!92810))

(assert (not d!60704))

(assert (not b!92820))

(assert (not b!92834))

(assert (not b!92778))

(assert (not b!92802))

(assert (not b!92786))

(assert (not b!92828))

(assert (not b!92781))

(assert (not d!60696))

(assert (not b!92806))

(assert (not d!60708))

(assert (not b!92824))

(assert (not b!92782))

(assert (not b!92814))

(assert (not b!92788))

(assert (not d!60700))

(assert (not b!92794))

(assert (not b!92774))

(assert (not b!92832))

(assert (not b!92790))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


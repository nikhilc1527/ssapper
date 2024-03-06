; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8380 () Bool)

(assert start!8380)

(declare-fun res!27229 () Bool)

(declare-fun e!31283 () Bool)

(assert (=> start!8380 (=> (not res!27229) (not e!31283))))

(declare-datatypes () ((List!499 (Cons!473 (head!750 (_ BitVec 32)) (tail!776 List!499)) (Nil!474))))

(declare-fun l1!311 () List!499)

(declare-fun l2!304 () List!499)

(assert (=> start!8380 (= res!27229 (and (is-Nil!474 l1!311) (not (is-Nil!474 l2!304))))))

(assert (=> start!8380 e!31283))

(assert (=> start!8380 true))

(declare-fun b!58787 () Bool)

(declare-fun res!27230 () Bool)

(assert (=> b!58787 (=> (not res!27230) (not e!31283))))

(declare-fun l3!44 () List!499)

(declare-fun x$8!61 () List!499)

(declare-fun concat0!0 (List!499 List!499 List!499) List!499)

(assert (=> b!58787 (= res!27230 (= x$8!61 (concat0!0 Nil!474 (tail!776 l2!304) (Cons!473 (head!750 l2!304) l3!44))))))

(declare-fun b!58788 () Bool)

(declare-fun content!16 (List!499) (Set (_ BitVec 32)))

(assert (=> b!58788 (= e!31283 (not (= (content!16 x$8!61) (union (union (content!16 l1!311) (content!16 l2!304)) (content!16 l3!44)))))))

(assert (= (and start!8380 res!27229) b!58787))

(assert (= (and b!58787 res!27230) b!58788))

(declare-fun m!63384 () Bool)

(assert (=> b!58787 m!63384))

(declare-fun m!63386 () Bool)

(assert (=> b!58788 m!63386))

(declare-fun m!63388 () Bool)

(assert (=> b!58788 m!63388))

(declare-fun m!63390 () Bool)

(assert (=> b!58788 m!63390))

(declare-fun m!63392 () Bool)

(assert (=> b!58788 m!63392))

(push 1)

(assert (not b!58787))

(assert (not b!58788))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!58798 () Bool)

(declare-fun e!31289 () List!499)

(declare-fun res!27236 () List!499)

(assert (=> b!58798 (= e!31289 res!27236)))

(assert (=> b!58798 true))

(assert (=> b!58798 true))

(declare-fun lt!10791 () Bool)

(declare-fun b!58797 () Bool)

(assert (=> b!58797 (= e!31289 (concat0!0 (ite lt!10791 Nil!474 (tail!776 Nil!474)) (ite lt!10791 (tail!776 (tail!776 l2!304)) (tail!776 l2!304)) (ite lt!10791 (Cons!473 (head!750 (tail!776 l2!304)) (Cons!473 (head!750 l2!304) l3!44)) (Cons!473 (head!750 Nil!474) (Cons!473 (head!750 l2!304) l3!44)))))))

(declare-fun b!58800 () Bool)

(declare-fun e!31288 () List!499)

(declare-fun lt!10790 () List!499)

(assert (=> b!58800 (= e!31288 lt!10790)))

(declare-fun d!50752 () Bool)

(declare-fun lt!10792 () List!499)

(assert (=> d!50752 (= (content!16 lt!10792) (union (union (content!16 Nil!474) (content!16 (tail!776 l2!304))) (content!16 (Cons!473 (head!750 l2!304) l3!44))))))

(assert (=> d!50752 (= lt!10792 e!31288)))

(declare-fun c!12635 () Bool)

(declare-fun lt!10793 () Bool)

(assert (=> d!50752 (= c!12635 (and lt!10793 (is-Nil!474 (tail!776 l2!304))))))

(assert (=> d!50752 (= lt!10790 e!31289)))

(declare-fun c!12634 () Bool)

(assert (=> d!50752 (= c!12634 (or lt!10791 (not lt!10793)))))

(assert (=> d!50752 (= lt!10791 (and lt!10793 (not (is-Nil!474 (tail!776 l2!304)))))))

(assert (=> d!50752 (= lt!10793 (is-Nil!474 Nil!474))))

(assert (=> d!50752 (= (concat0!0 Nil!474 (tail!776 l2!304) (Cons!473 (head!750 l2!304) l3!44)) lt!10792)))

(declare-fun b!58799 () Bool)

(declare-fun reverse!2 (List!499) List!499)

(assert (=> b!58799 (= e!31288 (reverse!2 (Cons!473 (head!750 l2!304) l3!44)))))

(assert (= (and d!50752 c!12634) b!58797))

(assert (= (and d!50752 (not c!12634)) b!58798))

(assert (= (and d!50752 c!12635) b!58799))

(assert (= (and d!50752 (not c!12635)) b!58800))

(declare-fun m!63394 () Bool)

(assert (=> b!58797 m!63394))

(declare-fun m!63396 () Bool)

(assert (=> d!50752 m!63396))

(declare-fun m!63398 () Bool)

(assert (=> d!50752 m!63398))

(declare-fun m!63400 () Bool)

(assert (=> d!50752 m!63400))

(declare-fun m!63402 () Bool)

(assert (=> d!50752 m!63402))

(declare-fun m!63404 () Bool)

(assert (=> b!58799 m!63404))

(assert (=> b!58787 d!50752))

(declare-fun d!50754 () Bool)

(declare-fun c!12638 () Bool)

(assert (=> d!50754 (= c!12638 (is-Nil!474 x$8!61))))

(declare-fun e!31292 () (Set (_ BitVec 32)))

(assert (=> d!50754 (= (content!16 x$8!61) e!31292)))

(declare-fun b!58805 () Bool)

(assert (=> b!58805 (= e!31292 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58806 () Bool)

(assert (=> b!58806 (= e!31292 (union (insert (head!750 x$8!61) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!776 x$8!61))))))

(assert (= (and d!50754 c!12638) b!58805))

(assert (= (and d!50754 (not c!12638)) b!58806))

(declare-fun m!63406 () Bool)

(assert (=> b!58806 m!63406))

(declare-fun m!63408 () Bool)

(assert (=> b!58806 m!63408))

(assert (=> b!58788 d!50754))

(declare-fun d!50756 () Bool)

(declare-fun c!12639 () Bool)

(assert (=> d!50756 (= c!12639 (is-Nil!474 l1!311))))

(declare-fun e!31293 () (Set (_ BitVec 32)))

(assert (=> d!50756 (= (content!16 l1!311) e!31293)))

(declare-fun b!58807 () Bool)

(assert (=> b!58807 (= e!31293 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58808 () Bool)

(assert (=> b!58808 (= e!31293 (union (insert (head!750 l1!311) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!776 l1!311))))))

(assert (= (and d!50756 c!12639) b!58807))

(assert (= (and d!50756 (not c!12639)) b!58808))

(declare-fun m!63410 () Bool)

(assert (=> b!58808 m!63410))

(declare-fun m!63412 () Bool)

(assert (=> b!58808 m!63412))

(assert (=> b!58788 d!50756))

(declare-fun d!50758 () Bool)

(declare-fun c!12640 () Bool)

(assert (=> d!50758 (= c!12640 (is-Nil!474 l2!304))))

(declare-fun e!31294 () (Set (_ BitVec 32)))

(assert (=> d!50758 (= (content!16 l2!304) e!31294)))

(declare-fun b!58809 () Bool)

(assert (=> b!58809 (= e!31294 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58810 () Bool)

(assert (=> b!58810 (= e!31294 (union (insert (head!750 l2!304) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!776 l2!304))))))

(assert (= (and d!50758 c!12640) b!58809))

(assert (= (and d!50758 (not c!12640)) b!58810))

(declare-fun m!63414 () Bool)

(assert (=> b!58810 m!63414))

(assert (=> b!58810 m!63400))

(assert (=> b!58788 d!50758))

(declare-fun d!50760 () Bool)

(declare-fun c!12641 () Bool)

(assert (=> d!50760 (= c!12641 (is-Nil!474 l3!44))))

(declare-fun e!31295 () (Set (_ BitVec 32)))

(assert (=> d!50760 (= (content!16 l3!44) e!31295)))

(declare-fun b!58811 () Bool)

(assert (=> b!58811 (= e!31295 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58812 () Bool)

(assert (=> b!58812 (= e!31295 (union (insert (head!750 l3!44) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!776 l3!44))))))

(assert (= (and d!50760 c!12641) b!58811))

(assert (= (and d!50760 (not c!12641)) b!58812))

(declare-fun m!63416 () Bool)

(assert (=> b!58812 m!63416))

(declare-fun m!63418 () Bool)

(assert (=> b!58812 m!63418))

(assert (=> b!58788 d!50760))

(push 1)

(assert (not b!58808))

(assert (not b!58799))

(assert (not b!58806))

(assert (not b!58797))

(assert (not b!58812))

(assert (not b!58810))

(assert (not d!50752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50762 () Bool)

(declare-fun c!12642 () Bool)

(assert (=> d!50762 (= c!12642 (is-Nil!474 (tail!776 l1!311)))))

(declare-fun e!31296 () (Set (_ BitVec 32)))

(assert (=> d!50762 (= (content!16 (tail!776 l1!311)) e!31296)))

(declare-fun b!58813 () Bool)

(assert (=> b!58813 (= e!31296 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58814 () Bool)

(assert (=> b!58814 (= e!31296 (union (insert (head!750 (tail!776 l1!311)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!776 (tail!776 l1!311)))))))

(assert (= (and d!50762 c!12642) b!58813))

(assert (= (and d!50762 (not c!12642)) b!58814))

(declare-fun m!63420 () Bool)

(assert (=> b!58814 m!63420))

(declare-fun m!63422 () Bool)

(assert (=> b!58814 m!63422))

(assert (=> b!58808 d!50762))

(declare-fun d!50764 () Bool)

(declare-fun c!12643 () Bool)

(assert (=> d!50764 (= c!12643 (is-Nil!474 lt!10792))))

(declare-fun e!31297 () (Set (_ BitVec 32)))

(assert (=> d!50764 (= (content!16 lt!10792) e!31297)))

(declare-fun b!58815 () Bool)

(assert (=> b!58815 (= e!31297 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58816 () Bool)

(assert (=> b!58816 (= e!31297 (union (insert (head!750 lt!10792) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!776 lt!10792))))))

(assert (= (and d!50764 c!12643) b!58815))

(assert (= (and d!50764 (not c!12643)) b!58816))

(declare-fun m!63424 () Bool)

(assert (=> b!58816 m!63424))

(declare-fun m!63426 () Bool)

(assert (=> b!58816 m!63426))

(assert (=> d!50752 d!50764))

(declare-fun d!50766 () Bool)

(assert (=> d!50766 (= (content!16 Nil!474) (as emptyset (Set (_ BitVec 32))))))

(assert (=> d!50752 d!50766))

(declare-fun d!50768 () Bool)

(declare-fun c!12644 () Bool)

(assert (=> d!50768 (= c!12644 (is-Nil!474 (tail!776 l2!304)))))

(declare-fun e!31298 () (Set (_ BitVec 32)))

(assert (=> d!50768 (= (content!16 (tail!776 l2!304)) e!31298)))

(declare-fun b!58817 () Bool)

(assert (=> b!58817 (= e!31298 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58818 () Bool)

(assert (=> b!58818 (= e!31298 (union (insert (head!750 (tail!776 l2!304)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!776 (tail!776 l2!304)))))))

(assert (= (and d!50768 c!12644) b!58817))

(assert (= (and d!50768 (not c!12644)) b!58818))

(declare-fun m!63428 () Bool)

(assert (=> b!58818 m!63428))

(declare-fun m!63430 () Bool)

(assert (=> b!58818 m!63430))

(assert (=> d!50752 d!50768))

(declare-fun d!50770 () Bool)

(declare-fun c!12645 () Bool)

(assert (=> d!50770 (= c!12645 (is-Nil!474 (Cons!473 (head!750 l2!304) l3!44)))))

(declare-fun e!31299 () (Set (_ BitVec 32)))

(assert (=> d!50770 (= (content!16 (Cons!473 (head!750 l2!304) l3!44)) e!31299)))

(declare-fun b!58819 () Bool)

(assert (=> b!58819 (= e!31299 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58820 () Bool)

(assert (=> b!58820 (= e!31299 (union (insert (head!750 (Cons!473 (head!750 l2!304) l3!44)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!776 (Cons!473 (head!750 l2!304) l3!44)))))))

(assert (= (and d!50770 c!12645) b!58819))

(assert (= (and d!50770 (not c!12645)) b!58820))

(declare-fun m!63432 () Bool)

(assert (=> b!58820 m!63432))

(declare-fun m!63434 () Bool)

(assert (=> b!58820 m!63434))

(assert (=> d!50752 d!50770))

(declare-fun d!50772 () Bool)

(declare-fun c!12646 () Bool)

(assert (=> d!50772 (= c!12646 (is-Nil!474 (tail!776 x$8!61)))))

(declare-fun e!31300 () (Set (_ BitVec 32)))

(assert (=> d!50772 (= (content!16 (tail!776 x$8!61)) e!31300)))

(declare-fun b!58821 () Bool)

(assert (=> b!58821 (= e!31300 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58822 () Bool)

(assert (=> b!58822 (= e!31300 (union (insert (head!750 (tail!776 x$8!61)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!776 (tail!776 x$8!61)))))))

(assert (= (and d!50772 c!12646) b!58821))

(assert (= (and d!50772 (not c!12646)) b!58822))

(declare-fun m!63436 () Bool)

(assert (=> b!58822 m!63436))

(declare-fun m!63438 () Bool)

(assert (=> b!58822 m!63438))

(assert (=> b!58806 d!50772))

(declare-fun b!58824 () Bool)

(declare-fun e!31302 () List!499)

(declare-fun res!27237 () List!499)

(assert (=> b!58824 (= e!31302 res!27237)))

(assert (=> b!58824 true))

(assert (=> b!58824 true))

(declare-fun b!58823 () Bool)

(declare-fun lt!10795 () Bool)

(assert (=> b!58823 (= e!31302 (concat0!0 (ite lt!10795 Nil!474 (tail!776 (ite lt!10791 Nil!474 (tail!776 Nil!474)))) (ite lt!10795 (tail!776 (ite lt!10791 (tail!776 (tail!776 l2!304)) (tail!776 l2!304))) (ite lt!10791 (tail!776 (tail!776 l2!304)) (tail!776 l2!304))) (ite lt!10795 (Cons!473 (head!750 (ite lt!10791 (tail!776 (tail!776 l2!304)) (tail!776 l2!304))) (ite lt!10791 (Cons!473 (head!750 (tail!776 l2!304)) (Cons!473 (head!750 l2!304) l3!44)) (Cons!473 (head!750 Nil!474) (Cons!473 (head!750 l2!304) l3!44)))) (Cons!473 (head!750 (ite lt!10791 Nil!474 (tail!776 Nil!474))) (ite lt!10791 (Cons!473 (head!750 (tail!776 l2!304)) (Cons!473 (head!750 l2!304) l3!44)) (Cons!473 (head!750 Nil!474) (Cons!473 (head!750 l2!304) l3!44)))))))))

(declare-fun b!58826 () Bool)

(declare-fun e!31301 () List!499)

(declare-fun lt!10794 () List!499)

(assert (=> b!58826 (= e!31301 lt!10794)))

(declare-fun lt!10796 () List!499)

(declare-fun d!50774 () Bool)

(assert (=> d!50774 (= (content!16 lt!10796) (union (union (content!16 (ite lt!10791 Nil!474 (tail!776 Nil!474))) (content!16 (ite lt!10791 (tail!776 (tail!776 l2!304)) (tail!776 l2!304)))) (content!16 (ite lt!10791 (Cons!473 (head!750 (tail!776 l2!304)) (Cons!473 (head!750 l2!304) l3!44)) (Cons!473 (head!750 Nil!474) (Cons!473 (head!750 l2!304) l3!44))))))))

(assert (=> d!50774 (= lt!10796 e!31301)))

(declare-fun c!12648 () Bool)

(declare-fun lt!10797 () Bool)

(assert (=> d!50774 (= c!12648 (and lt!10797 (is-Nil!474 (ite lt!10791 (tail!776 (tail!776 l2!304)) (tail!776 l2!304)))))))

(assert (=> d!50774 (= lt!10794 e!31302)))

(declare-fun c!12647 () Bool)

(assert (=> d!50774 (= c!12647 (or lt!10795 (not lt!10797)))))

(assert (=> d!50774 (= lt!10795 (and lt!10797 (not (is-Nil!474 (ite lt!10791 (tail!776 (tail!776 l2!304)) (tail!776 l2!304))))))))

(assert (=> d!50774 (= lt!10797 (is-Nil!474 (ite lt!10791 Nil!474 (tail!776 Nil!474))))))

(assert (=> d!50774 (= (concat0!0 (ite lt!10791 Nil!474 (tail!776 Nil!474)) (ite lt!10791 (tail!776 (tail!776 l2!304)) (tail!776 l2!304)) (ite lt!10791 (Cons!473 (head!750 (tail!776 l2!304)) (Cons!473 (head!750 l2!304) l3!44)) (Cons!473 (head!750 Nil!474) (Cons!473 (head!750 l2!304) l3!44)))) lt!10796)))

(declare-fun b!58825 () Bool)

(assert (=> b!58825 (= e!31301 (reverse!2 (ite lt!10791 (Cons!473 (head!750 (tail!776 l2!304)) (Cons!473 (head!750 l2!304) l3!44)) (Cons!473 (head!750 Nil!474) (Cons!473 (head!750 l2!304) l3!44)))))))

(assert (= (and d!50774 c!12647) b!58823))

(assert (= (and d!50774 (not c!12647)) b!58824))

(assert (= (and d!50774 c!12648) b!58825))

(assert (= (and d!50774 (not c!12648)) b!58826))

(declare-fun m!63440 () Bool)

(assert (=> b!58823 m!63440))

(declare-fun m!63442 () Bool)

(assert (=> d!50774 m!63442))

(declare-fun m!63444 () Bool)

(assert (=> d!50774 m!63444))

(declare-fun m!63446 () Bool)

(assert (=> d!50774 m!63446))

(declare-fun m!63448 () Bool)

(assert (=> d!50774 m!63448))

(declare-fun m!63450 () Bool)

(assert (=> b!58825 m!63450))

(assert (=> b!58797 d!50774))

(declare-fun d!50776 () Bool)

(declare-fun c!12649 () Bool)

(assert (=> d!50776 (= c!12649 (is-Nil!474 (tail!776 l3!44)))))

(declare-fun e!31303 () (Set (_ BitVec 32)))

(assert (=> d!50776 (= (content!16 (tail!776 l3!44)) e!31303)))

(declare-fun b!58827 () Bool)

(assert (=> b!58827 (= e!31303 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58828 () Bool)

(assert (=> b!58828 (= e!31303 (union (insert (head!750 (tail!776 l3!44)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!776 (tail!776 l3!44)))))))

(assert (= (and d!50776 c!12649) b!58827))

(assert (= (and d!50776 (not c!12649)) b!58828))

(declare-fun m!63452 () Bool)

(assert (=> b!58828 m!63452))

(declare-fun m!63454 () Bool)

(assert (=> b!58828 m!63454))

(assert (=> b!58812 d!50776))

(declare-fun d!50778 () Bool)

(declare-fun lt!10800 () List!499)

(assert (=> d!50778 (= (content!16 lt!10800) (content!16 (Cons!473 (head!750 l2!304) l3!44)))))

(declare-fun reverse0!1 (List!499 List!499) List!499)

(assert (=> d!50778 (= lt!10800 (reverse0!1 (Cons!473 (head!750 l2!304) l3!44) Nil!474))))

(assert (=> d!50778 (= (reverse!2 (Cons!473 (head!750 l2!304) l3!44)) lt!10800)))

(declare-fun bs!36384 () Bool)

(assert (= bs!36384 d!50778))

(declare-fun m!63456 () Bool)

(assert (=> bs!36384 m!63456))

(assert (=> bs!36384 m!63402))

(declare-fun m!63458 () Bool)

(assert (=> bs!36384 m!63458))

(assert (=> b!58799 d!50778))

(assert (=> b!58810 d!50768))

(push 1)

(assert (not b!58822))

(assert (not b!58818))

(assert (not d!50778))

(assert (not b!58823))

(assert (not b!58820))

(assert (not b!58816))

(assert (not b!58825))

(assert (not b!58828))

(assert (not b!58814))

(assert (not d!50774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8366 () Bool)

(assert start!8366)

(declare-fun res!27211 () Bool)

(declare-fun e!31254 () Bool)

(assert (=> start!8366 (=> (not res!27211) (not e!31254))))

(declare-datatypes () ((List!497 (Cons!471 (head!748 (_ BitVec 32)) (tail!774 List!497)) (Nil!472))))

(declare-fun l1!339 () List!497)

(declare-fun l2!332 () List!497)

(declare-fun x$7!86 () List!497)

(declare-fun concat0!0 (List!497 List!497 List!497) List!497)

(assert (=> start!8366 (= res!27211 (= x$7!86 (concat0!0 l1!339 l2!332 Nil!472)))))

(assert (=> start!8366 e!31254))

(assert (=> start!8366 true))

(declare-fun b!58730 () Bool)

(declare-fun content!16 (List!497) (Set (_ BitVec 32)))

(assert (=> b!58730 (= e!31254 (not (= (content!16 x$7!86) (union (content!16 l1!339) (content!16 l2!332)))))))

(assert (= (and start!8366 res!27211) b!58730))

(declare-fun m!63294 () Bool)

(assert (=> start!8366 m!63294))

(declare-fun m!63296 () Bool)

(assert (=> b!58730 m!63296))

(declare-fun m!63298 () Bool)

(assert (=> b!58730 m!63298))

(declare-fun m!63300 () Bool)

(assert (=> b!58730 m!63300))

(push 1)

(assert (not start!8366))

(assert (not b!58730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!58742 () Bool)

(declare-fun e!31259 () List!497)

(declare-fun lt!10769 () List!497)

(assert (=> b!58742 (= e!31259 lt!10769)))

(declare-fun b!58741 () Bool)

(declare-fun reverse!2 (List!497) List!497)

(assert (=> b!58741 (= e!31259 (reverse!2 Nil!472))))

(declare-fun e!31260 () List!497)

(declare-fun b!58739 () Bool)

(declare-fun lt!10770 () Bool)

(assert (=> b!58739 (= e!31260 (concat0!0 (ite lt!10770 Nil!472 (tail!774 l1!339)) (ite lt!10770 (tail!774 l2!332) l2!332) (ite lt!10770 (Cons!471 (head!748 l2!332) Nil!472) (Cons!471 (head!748 l1!339) Nil!472))))))

(declare-fun b!58740 () Bool)

(declare-fun res!27217 () List!497)

(assert (=> b!58740 (= e!31260 res!27217)))

(assert (=> b!58740 true))

(assert (=> b!58740 true))

(declare-fun d!50720 () Bool)

(declare-fun lt!10771 () List!497)

(assert (=> d!50720 (= (content!16 lt!10771) (union (union (content!16 l1!339) (content!16 l2!332)) (content!16 Nil!472)))))

(assert (=> d!50720 (= lt!10771 e!31259)))

(declare-fun c!12612 () Bool)

(declare-fun lt!10768 () Bool)

(assert (=> d!50720 (= c!12612 (and lt!10768 (is-Nil!472 l2!332)))))

(assert (=> d!50720 (= lt!10769 e!31260)))

(declare-fun c!12611 () Bool)

(assert (=> d!50720 (= c!12611 (or lt!10770 (not lt!10768)))))

(assert (=> d!50720 (= lt!10770 (and lt!10768 (not (is-Nil!472 l2!332))))))

(assert (=> d!50720 (= lt!10768 (is-Nil!472 l1!339))))

(assert (=> d!50720 (= (concat0!0 l1!339 l2!332 Nil!472) lt!10771)))

(assert (= (and d!50720 c!12611) b!58739))

(assert (= (and d!50720 (not c!12611)) b!58740))

(assert (= (and d!50720 c!12612) b!58741))

(assert (= (and d!50720 (not c!12612)) b!58742))

(declare-fun m!63302 () Bool)

(assert (=> b!58741 m!63302))

(declare-fun m!63304 () Bool)

(assert (=> b!58739 m!63304))

(declare-fun m!63306 () Bool)

(assert (=> d!50720 m!63306))

(assert (=> d!50720 m!63298))

(assert (=> d!50720 m!63300))

(declare-fun m!63308 () Bool)

(assert (=> d!50720 m!63308))

(assert (=> start!8366 d!50720))

(declare-fun d!50722 () Bool)

(declare-fun c!12615 () Bool)

(assert (=> d!50722 (= c!12615 (is-Nil!472 x$7!86))))

(declare-fun e!31263 () (Set (_ BitVec 32)))

(assert (=> d!50722 (= (content!16 x$7!86) e!31263)))

(declare-fun b!58747 () Bool)

(assert (=> b!58747 (= e!31263 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58748 () Bool)

(assert (=> b!58748 (= e!31263 (union (insert (head!748 x$7!86) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!774 x$7!86))))))

(assert (= (and d!50722 c!12615) b!58747))

(assert (= (and d!50722 (not c!12615)) b!58748))

(declare-fun m!63310 () Bool)

(assert (=> b!58748 m!63310))

(declare-fun m!63312 () Bool)

(assert (=> b!58748 m!63312))

(assert (=> b!58730 d!50722))

(declare-fun d!50724 () Bool)

(declare-fun c!12616 () Bool)

(assert (=> d!50724 (= c!12616 (is-Nil!472 l1!339))))

(declare-fun e!31264 () (Set (_ BitVec 32)))

(assert (=> d!50724 (= (content!16 l1!339) e!31264)))

(declare-fun b!58749 () Bool)

(assert (=> b!58749 (= e!31264 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58750 () Bool)

(assert (=> b!58750 (= e!31264 (union (insert (head!748 l1!339) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!774 l1!339))))))

(assert (= (and d!50724 c!12616) b!58749))

(assert (= (and d!50724 (not c!12616)) b!58750))

(declare-fun m!63314 () Bool)

(assert (=> b!58750 m!63314))

(declare-fun m!63316 () Bool)

(assert (=> b!58750 m!63316))

(assert (=> b!58730 d!50724))

(declare-fun d!50726 () Bool)

(declare-fun c!12617 () Bool)

(assert (=> d!50726 (= c!12617 (is-Nil!472 l2!332))))

(declare-fun e!31265 () (Set (_ BitVec 32)))

(assert (=> d!50726 (= (content!16 l2!332) e!31265)))

(declare-fun b!58751 () Bool)

(assert (=> b!58751 (= e!31265 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58752 () Bool)

(assert (=> b!58752 (= e!31265 (union (insert (head!748 l2!332) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!774 l2!332))))))

(assert (= (and d!50726 c!12617) b!58751))

(assert (= (and d!50726 (not c!12617)) b!58752))

(declare-fun m!63318 () Bool)

(assert (=> b!58752 m!63318))

(declare-fun m!63320 () Bool)

(assert (=> b!58752 m!63320))

(assert (=> b!58730 d!50726))

(push 1)

(assert (not b!58748))

(assert (not b!58741))

(assert (not b!58739))

(assert (not b!58750))

(assert (not d!50720))

(assert (not b!58752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50728 () Bool)

(declare-fun c!12618 () Bool)

(assert (=> d!50728 (= c!12618 (is-Nil!472 lt!10771))))

(declare-fun e!31266 () (Set (_ BitVec 32)))

(assert (=> d!50728 (= (content!16 lt!10771) e!31266)))

(declare-fun b!58753 () Bool)

(assert (=> b!58753 (= e!31266 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58754 () Bool)

(assert (=> b!58754 (= e!31266 (union (insert (head!748 lt!10771) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!774 lt!10771))))))

(assert (= (and d!50728 c!12618) b!58753))

(assert (= (and d!50728 (not c!12618)) b!58754))

(declare-fun m!63322 () Bool)

(assert (=> b!58754 m!63322))

(declare-fun m!63324 () Bool)

(assert (=> b!58754 m!63324))

(assert (=> d!50720 d!50728))

(assert (=> d!50720 d!50724))

(assert (=> d!50720 d!50726))

(declare-fun d!50730 () Bool)

(assert (=> d!50730 (= (content!16 Nil!472) (as emptyset (Set (_ BitVec 32))))))

(assert (=> d!50720 d!50730))

(declare-fun d!50732 () Bool)

(declare-fun c!12619 () Bool)

(assert (=> d!50732 (= c!12619 (is-Nil!472 (tail!774 l2!332)))))

(declare-fun e!31267 () (Set (_ BitVec 32)))

(assert (=> d!50732 (= (content!16 (tail!774 l2!332)) e!31267)))

(declare-fun b!58755 () Bool)

(assert (=> b!58755 (= e!31267 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58756 () Bool)

(assert (=> b!58756 (= e!31267 (union (insert (head!748 (tail!774 l2!332)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!774 (tail!774 l2!332)))))))

(assert (= (and d!50732 c!12619) b!58755))

(assert (= (and d!50732 (not c!12619)) b!58756))

(declare-fun m!63326 () Bool)

(assert (=> b!58756 m!63326))

(declare-fun m!63328 () Bool)

(assert (=> b!58756 m!63328))

(assert (=> b!58752 d!50732))

(declare-fun d!50734 () Bool)

(declare-fun c!12620 () Bool)

(assert (=> d!50734 (= c!12620 (is-Nil!472 (tail!774 l1!339)))))

(declare-fun e!31268 () (Set (_ BitVec 32)))

(assert (=> d!50734 (= (content!16 (tail!774 l1!339)) e!31268)))

(declare-fun b!58757 () Bool)

(assert (=> b!58757 (= e!31268 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58758 () Bool)

(assert (=> b!58758 (= e!31268 (union (insert (head!748 (tail!774 l1!339)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!774 (tail!774 l1!339)))))))

(assert (= (and d!50734 c!12620) b!58757))

(assert (= (and d!50734 (not c!12620)) b!58758))

(declare-fun m!63330 () Bool)

(assert (=> b!58758 m!63330))

(declare-fun m!63332 () Bool)

(assert (=> b!58758 m!63332))

(assert (=> b!58750 d!50734))

(declare-fun d!50736 () Bool)

(declare-fun lt!10774 () List!497)

(assert (=> d!50736 (= (content!16 lt!10774) (content!16 Nil!472))))

(declare-fun reverse0!1 (List!497 List!497) List!497)

(assert (=> d!50736 (= lt!10774 (reverse0!1 Nil!472 Nil!472))))

(assert (=> d!50736 (= (reverse!2 Nil!472) lt!10774)))

(declare-fun bs!36380 () Bool)

(assert (= bs!36380 d!50736))

(declare-fun m!63334 () Bool)

(assert (=> bs!36380 m!63334))

(assert (=> bs!36380 m!63308))

(declare-fun m!63336 () Bool)

(assert (=> bs!36380 m!63336))

(assert (=> b!58741 d!50736))

(declare-fun d!50738 () Bool)

(declare-fun c!12621 () Bool)

(assert (=> d!50738 (= c!12621 (is-Nil!472 (tail!774 x$7!86)))))

(declare-fun e!31269 () (Set (_ BitVec 32)))

(assert (=> d!50738 (= (content!16 (tail!774 x$7!86)) e!31269)))

(declare-fun b!58759 () Bool)

(assert (=> b!58759 (= e!31269 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58760 () Bool)

(assert (=> b!58760 (= e!31269 (union (insert (head!748 (tail!774 x$7!86)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!774 (tail!774 x$7!86)))))))

(assert (= (and d!50738 c!12621) b!58759))

(assert (= (and d!50738 (not c!12621)) b!58760))

(declare-fun m!63338 () Bool)

(assert (=> b!58760 m!63338))

(declare-fun m!63340 () Bool)

(assert (=> b!58760 m!63340))

(assert (=> b!58748 d!50738))

(declare-fun b!58764 () Bool)

(declare-fun e!31270 () List!497)

(declare-fun lt!10776 () List!497)

(assert (=> b!58764 (= e!31270 lt!10776)))

(declare-fun b!58763 () Bool)

(assert (=> b!58763 (= e!31270 (reverse!2 (ite lt!10770 (Cons!471 (head!748 l2!332) Nil!472) (Cons!471 (head!748 l1!339) Nil!472))))))

(declare-fun e!31271 () List!497)

(declare-fun b!58761 () Bool)

(declare-fun lt!10777 () Bool)

(assert (=> b!58761 (= e!31271 (concat0!0 (ite lt!10777 Nil!472 (tail!774 (ite lt!10770 Nil!472 (tail!774 l1!339)))) (ite lt!10777 (tail!774 (ite lt!10770 (tail!774 l2!332) l2!332)) (ite lt!10770 (tail!774 l2!332) l2!332)) (ite lt!10777 (Cons!471 (head!748 (ite lt!10770 (tail!774 l2!332) l2!332)) (ite lt!10770 (Cons!471 (head!748 l2!332) Nil!472) (Cons!471 (head!748 l1!339) Nil!472))) (Cons!471 (head!748 (ite lt!10770 Nil!472 (tail!774 l1!339))) (ite lt!10770 (Cons!471 (head!748 l2!332) Nil!472) (Cons!471 (head!748 l1!339) Nil!472))))))))

(declare-fun b!58762 () Bool)

(declare-fun res!27218 () List!497)

(assert (=> b!58762 (= e!31271 res!27218)))

(assert (=> b!58762 true))

(assert (=> b!58762 true))

(declare-fun lt!10778 () List!497)

(declare-fun d!50740 () Bool)

(assert (=> d!50740 (= (content!16 lt!10778) (union (union (content!16 (ite lt!10770 Nil!472 (tail!774 l1!339))) (content!16 (ite lt!10770 (tail!774 l2!332) l2!332))) (content!16 (ite lt!10770 (Cons!471 (head!748 l2!332) Nil!472) (Cons!471 (head!748 l1!339) Nil!472)))))))

(assert (=> d!50740 (= lt!10778 e!31270)))

(declare-fun lt!10775 () Bool)

(declare-fun c!12623 () Bool)

(assert (=> d!50740 (= c!12623 (and lt!10775 (is-Nil!472 (ite lt!10770 (tail!774 l2!332) l2!332))))))

(assert (=> d!50740 (= lt!10776 e!31271)))

(declare-fun c!12622 () Bool)

(assert (=> d!50740 (= c!12622 (or lt!10777 (not lt!10775)))))

(assert (=> d!50740 (= lt!10777 (and lt!10775 (not (is-Nil!472 (ite lt!10770 (tail!774 l2!332) l2!332)))))))

(assert (=> d!50740 (= lt!10775 (is-Nil!472 (ite lt!10770 Nil!472 (tail!774 l1!339))))))

(assert (=> d!50740 (= (concat0!0 (ite lt!10770 Nil!472 (tail!774 l1!339)) (ite lt!10770 (tail!774 l2!332) l2!332) (ite lt!10770 (Cons!471 (head!748 l2!332) Nil!472) (Cons!471 (head!748 l1!339) Nil!472))) lt!10778)))

(assert (= (and d!50740 c!12622) b!58761))

(assert (= (and d!50740 (not c!12622)) b!58762))

(assert (= (and d!50740 c!12623) b!58763))

(assert (= (and d!50740 (not c!12623)) b!58764))

(declare-fun m!63342 () Bool)

(assert (=> b!58763 m!63342))

(declare-fun m!63344 () Bool)

(assert (=> b!58761 m!63344))

(declare-fun m!63346 () Bool)

(assert (=> d!50740 m!63346))

(declare-fun m!63348 () Bool)

(assert (=> d!50740 m!63348))

(declare-fun m!63350 () Bool)

(assert (=> d!50740 m!63350))

(declare-fun m!63352 () Bool)

(assert (=> d!50740 m!63352))

(assert (=> b!58739 d!50740))

(push 1)

(assert (not b!58758))

(assert (not b!58754))

(assert (not d!50740))

(assert (not b!58760))

(assert (not d!50736))

(assert (not b!58761))

(assert (not b!58763))

(assert (not b!58756))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


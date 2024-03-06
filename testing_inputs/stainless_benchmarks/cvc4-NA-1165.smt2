; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8388 () Bool)

(assert start!8388)

(declare-fun res!27242 () Bool)

(declare-fun e!31306 () Bool)

(assert (=> start!8388 (=> (not res!27242) (not e!31306))))

(declare-datatypes () ((List!500 (Cons!474 (head!751 (_ BitVec 32)) (tail!777 List!500)) (Nil!475))))

(declare-fun l1!311 () List!500)

(assert (=> start!8388 (= res!27242 (not (is-Nil!475 l1!311)))))

(assert (=> start!8388 e!31306))

(assert (=> start!8388 true))

(declare-fun b!58833 () Bool)

(declare-fun res!27243 () Bool)

(assert (=> b!58833 (=> (not res!27243) (not e!31306))))

(declare-fun l3!44 () List!500)

(declare-fun l2!304 () List!500)

(declare-fun x$8!63 () List!500)

(declare-fun concat0!0 (List!500 List!500 List!500) List!500)

(assert (=> b!58833 (= res!27243 (= x$8!63 (concat0!0 (tail!777 l1!311) l2!304 (Cons!474 (head!751 l1!311) l3!44))))))

(declare-fun b!58834 () Bool)

(declare-fun content!16 (List!500) (Set (_ BitVec 32)))

(assert (=> b!58834 (= e!31306 (not (= (content!16 x$8!63) (union (union (content!16 l1!311) (content!16 l2!304)) (content!16 l3!44)))))))

(assert (= (and start!8388 res!27242) b!58833))

(assert (= (and b!58833 res!27243) b!58834))

(declare-fun m!63460 () Bool)

(assert (=> b!58833 m!63460))

(declare-fun m!63462 () Bool)

(assert (=> b!58834 m!63462))

(declare-fun m!63464 () Bool)

(assert (=> b!58834 m!63464))

(declare-fun m!63466 () Bool)

(assert (=> b!58834 m!63466))

(declare-fun m!63468 () Bool)

(assert (=> b!58834 m!63468))

(push 1)

(assert (not b!58834))

(assert (not b!58833))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50780 () Bool)

(declare-fun c!12652 () Bool)

(assert (=> d!50780 (= c!12652 (is-Nil!475 x$8!63))))

(declare-fun e!31309 () (Set (_ BitVec 32)))

(assert (=> d!50780 (= (content!16 x$8!63) e!31309)))

(declare-fun b!58839 () Bool)

(assert (=> b!58839 (= e!31309 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58840 () Bool)

(assert (=> b!58840 (= e!31309 (union (insert (head!751 x$8!63) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!777 x$8!63))))))

(assert (= (and d!50780 c!12652) b!58839))

(assert (= (and d!50780 (not c!12652)) b!58840))

(declare-fun m!63470 () Bool)

(assert (=> b!58840 m!63470))

(declare-fun m!63472 () Bool)

(assert (=> b!58840 m!63472))

(assert (=> b!58834 d!50780))

(declare-fun d!50782 () Bool)

(declare-fun c!12653 () Bool)

(assert (=> d!50782 (= c!12653 (is-Nil!475 l1!311))))

(declare-fun e!31310 () (Set (_ BitVec 32)))

(assert (=> d!50782 (= (content!16 l1!311) e!31310)))

(declare-fun b!58841 () Bool)

(assert (=> b!58841 (= e!31310 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58842 () Bool)

(assert (=> b!58842 (= e!31310 (union (insert (head!751 l1!311) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!777 l1!311))))))

(assert (= (and d!50782 c!12653) b!58841))

(assert (= (and d!50782 (not c!12653)) b!58842))

(declare-fun m!63474 () Bool)

(assert (=> b!58842 m!63474))

(declare-fun m!63476 () Bool)

(assert (=> b!58842 m!63476))

(assert (=> b!58834 d!50782))

(declare-fun d!50784 () Bool)

(declare-fun c!12654 () Bool)

(assert (=> d!50784 (= c!12654 (is-Nil!475 l2!304))))

(declare-fun e!31311 () (Set (_ BitVec 32)))

(assert (=> d!50784 (= (content!16 l2!304) e!31311)))

(declare-fun b!58843 () Bool)

(assert (=> b!58843 (= e!31311 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58844 () Bool)

(assert (=> b!58844 (= e!31311 (union (insert (head!751 l2!304) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!777 l2!304))))))

(assert (= (and d!50784 c!12654) b!58843))

(assert (= (and d!50784 (not c!12654)) b!58844))

(declare-fun m!63478 () Bool)

(assert (=> b!58844 m!63478))

(declare-fun m!63480 () Bool)

(assert (=> b!58844 m!63480))

(assert (=> b!58834 d!50784))

(declare-fun d!50786 () Bool)

(declare-fun c!12655 () Bool)

(assert (=> d!50786 (= c!12655 (is-Nil!475 l3!44))))

(declare-fun e!31312 () (Set (_ BitVec 32)))

(assert (=> d!50786 (= (content!16 l3!44) e!31312)))

(declare-fun b!58845 () Bool)

(assert (=> b!58845 (= e!31312 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58846 () Bool)

(assert (=> b!58846 (= e!31312 (union (insert (head!751 l3!44) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!777 l3!44))))))

(assert (= (and d!50786 c!12655) b!58845))

(assert (= (and d!50786 (not c!12655)) b!58846))

(declare-fun m!63482 () Bool)

(assert (=> b!58846 m!63482))

(declare-fun m!63484 () Bool)

(assert (=> b!58846 m!63484))

(assert (=> b!58834 d!50786))

(declare-fun b!58856 () Bool)

(declare-fun e!31318 () List!500)

(declare-fun res!27249 () List!500)

(assert (=> b!58856 (= e!31318 res!27249)))

(assert (=> b!58856 true))

(assert (=> b!58856 true))

(declare-fun b!58855 () Bool)

(declare-fun lt!10810 () Bool)

(assert (=> b!58855 (= e!31318 (concat0!0 (ite lt!10810 Nil!475 (tail!777 (tail!777 l1!311))) (ite lt!10810 (tail!777 l2!304) l2!304) (ite lt!10810 (Cons!474 (head!751 l2!304) (Cons!474 (head!751 l1!311) l3!44)) (Cons!474 (head!751 (tail!777 l1!311)) (Cons!474 (head!751 l1!311) l3!44)))))))

(declare-fun d!50788 () Bool)

(declare-fun lt!10811 () List!500)

(assert (=> d!50788 (= (content!16 lt!10811) (union (union (content!16 (tail!777 l1!311)) (content!16 l2!304)) (content!16 (Cons!474 (head!751 l1!311) l3!44))))))

(declare-fun e!31317 () List!500)

(assert (=> d!50788 (= lt!10811 e!31317)))

(declare-fun c!12660 () Bool)

(declare-fun lt!10809 () Bool)

(assert (=> d!50788 (= c!12660 (and lt!10809 (is-Nil!475 l2!304)))))

(declare-fun lt!10812 () List!500)

(assert (=> d!50788 (= lt!10812 e!31318)))

(declare-fun c!12661 () Bool)

(assert (=> d!50788 (= c!12661 (or lt!10810 (not lt!10809)))))

(assert (=> d!50788 (= lt!10810 (and lt!10809 (not (is-Nil!475 l2!304))))))

(assert (=> d!50788 (= lt!10809 (is-Nil!475 (tail!777 l1!311)))))

(assert (=> d!50788 (= (concat0!0 (tail!777 l1!311) l2!304 (Cons!474 (head!751 l1!311) l3!44)) lt!10811)))

(declare-fun b!58857 () Bool)

(declare-fun reverse!2 (List!500) List!500)

(assert (=> b!58857 (= e!31317 (reverse!2 (Cons!474 (head!751 l1!311) l3!44)))))

(declare-fun b!58858 () Bool)

(assert (=> b!58858 (= e!31317 lt!10812)))

(assert (= (and d!50788 c!12661) b!58855))

(assert (= (and d!50788 (not c!12661)) b!58856))

(assert (= (and d!50788 c!12660) b!58857))

(assert (= (and d!50788 (not c!12660)) b!58858))

(declare-fun m!63486 () Bool)

(assert (=> b!58855 m!63486))

(declare-fun m!63488 () Bool)

(assert (=> d!50788 m!63488))

(assert (=> d!50788 m!63476))

(assert (=> d!50788 m!63466))

(declare-fun m!63490 () Bool)

(assert (=> d!50788 m!63490))

(declare-fun m!63492 () Bool)

(assert (=> b!58857 m!63492))

(assert (=> b!58833 d!50788))

(push 1)

(assert (not b!58857))

(assert (not b!58840))

(assert (not b!58844))

(assert (not b!58842))

(assert (not d!50788))

(assert (not b!58846))

(assert (not b!58855))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50790 () Bool)

(declare-fun c!12662 () Bool)

(assert (=> d!50790 (= c!12662 (is-Nil!475 lt!10811))))

(declare-fun e!31319 () (Set (_ BitVec 32)))

(assert (=> d!50790 (= (content!16 lt!10811) e!31319)))

(declare-fun b!58859 () Bool)

(assert (=> b!58859 (= e!31319 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58860 () Bool)

(assert (=> b!58860 (= e!31319 (union (insert (head!751 lt!10811) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!777 lt!10811))))))

(assert (= (and d!50790 c!12662) b!58859))

(assert (= (and d!50790 (not c!12662)) b!58860))

(declare-fun m!63494 () Bool)

(assert (=> b!58860 m!63494))

(declare-fun m!63496 () Bool)

(assert (=> b!58860 m!63496))

(assert (=> d!50788 d!50790))

(declare-fun d!50792 () Bool)

(declare-fun c!12663 () Bool)

(assert (=> d!50792 (= c!12663 (is-Nil!475 (tail!777 l1!311)))))

(declare-fun e!31320 () (Set (_ BitVec 32)))

(assert (=> d!50792 (= (content!16 (tail!777 l1!311)) e!31320)))

(declare-fun b!58861 () Bool)

(assert (=> b!58861 (= e!31320 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58862 () Bool)

(assert (=> b!58862 (= e!31320 (union (insert (head!751 (tail!777 l1!311)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!777 (tail!777 l1!311)))))))

(assert (= (and d!50792 c!12663) b!58861))

(assert (= (and d!50792 (not c!12663)) b!58862))

(declare-fun m!63498 () Bool)

(assert (=> b!58862 m!63498))

(declare-fun m!63500 () Bool)

(assert (=> b!58862 m!63500))

(assert (=> d!50788 d!50792))

(assert (=> d!50788 d!50784))

(declare-fun d!50794 () Bool)

(declare-fun c!12664 () Bool)

(assert (=> d!50794 (= c!12664 (is-Nil!475 (Cons!474 (head!751 l1!311) l3!44)))))

(declare-fun e!31321 () (Set (_ BitVec 32)))

(assert (=> d!50794 (= (content!16 (Cons!474 (head!751 l1!311) l3!44)) e!31321)))

(declare-fun b!58863 () Bool)

(assert (=> b!58863 (= e!31321 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58864 () Bool)

(assert (=> b!58864 (= e!31321 (union (insert (head!751 (Cons!474 (head!751 l1!311) l3!44)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!777 (Cons!474 (head!751 l1!311) l3!44)))))))

(assert (= (and d!50794 c!12664) b!58863))

(assert (= (and d!50794 (not c!12664)) b!58864))

(declare-fun m!63502 () Bool)

(assert (=> b!58864 m!63502))

(declare-fun m!63504 () Bool)

(assert (=> b!58864 m!63504))

(assert (=> d!50788 d!50794))

(declare-fun d!50796 () Bool)

(declare-fun c!12665 () Bool)

(assert (=> d!50796 (= c!12665 (is-Nil!475 (tail!777 l2!304)))))

(declare-fun e!31322 () (Set (_ BitVec 32)))

(assert (=> d!50796 (= (content!16 (tail!777 l2!304)) e!31322)))

(declare-fun b!58865 () Bool)

(assert (=> b!58865 (= e!31322 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58866 () Bool)

(assert (=> b!58866 (= e!31322 (union (insert (head!751 (tail!777 l2!304)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!777 (tail!777 l2!304)))))))

(assert (= (and d!50796 c!12665) b!58865))

(assert (= (and d!50796 (not c!12665)) b!58866))

(declare-fun m!63506 () Bool)

(assert (=> b!58866 m!63506))

(declare-fun m!63508 () Bool)

(assert (=> b!58866 m!63508))

(assert (=> b!58844 d!50796))

(declare-fun d!50798 () Bool)

(declare-fun c!12666 () Bool)

(assert (=> d!50798 (= c!12666 (is-Nil!475 (tail!777 l3!44)))))

(declare-fun e!31323 () (Set (_ BitVec 32)))

(assert (=> d!50798 (= (content!16 (tail!777 l3!44)) e!31323)))

(declare-fun b!58867 () Bool)

(assert (=> b!58867 (= e!31323 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58868 () Bool)

(assert (=> b!58868 (= e!31323 (union (insert (head!751 (tail!777 l3!44)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!777 (tail!777 l3!44)))))))

(assert (= (and d!50798 c!12666) b!58867))

(assert (= (and d!50798 (not c!12666)) b!58868))

(declare-fun m!63510 () Bool)

(assert (=> b!58868 m!63510))

(declare-fun m!63512 () Bool)

(assert (=> b!58868 m!63512))

(assert (=> b!58846 d!50798))

(declare-fun b!58870 () Bool)

(declare-fun e!31325 () List!500)

(declare-fun res!27250 () List!500)

(assert (=> b!58870 (= e!31325 res!27250)))

(assert (=> b!58870 true))

(assert (=> b!58870 true))

(declare-fun b!58869 () Bool)

(declare-fun lt!10814 () Bool)

(assert (=> b!58869 (= e!31325 (concat0!0 (ite lt!10814 Nil!475 (tail!777 (ite lt!10810 Nil!475 (tail!777 (tail!777 l1!311))))) (ite lt!10814 (tail!777 (ite lt!10810 (tail!777 l2!304) l2!304)) (ite lt!10810 (tail!777 l2!304) l2!304)) (ite lt!10814 (Cons!474 (head!751 (ite lt!10810 (tail!777 l2!304) l2!304)) (ite lt!10810 (Cons!474 (head!751 l2!304) (Cons!474 (head!751 l1!311) l3!44)) (Cons!474 (head!751 (tail!777 l1!311)) (Cons!474 (head!751 l1!311) l3!44)))) (Cons!474 (head!751 (ite lt!10810 Nil!475 (tail!777 (tail!777 l1!311)))) (ite lt!10810 (Cons!474 (head!751 l2!304) (Cons!474 (head!751 l1!311) l3!44)) (Cons!474 (head!751 (tail!777 l1!311)) (Cons!474 (head!751 l1!311) l3!44)))))))))

(declare-fun lt!10815 () List!500)

(declare-fun d!50800 () Bool)

(assert (=> d!50800 (= (content!16 lt!10815) (union (union (content!16 (ite lt!10810 Nil!475 (tail!777 (tail!777 l1!311)))) (content!16 (ite lt!10810 (tail!777 l2!304) l2!304))) (content!16 (ite lt!10810 (Cons!474 (head!751 l2!304) (Cons!474 (head!751 l1!311) l3!44)) (Cons!474 (head!751 (tail!777 l1!311)) (Cons!474 (head!751 l1!311) l3!44))))))))

(declare-fun e!31324 () List!500)

(assert (=> d!50800 (= lt!10815 e!31324)))

(declare-fun lt!10813 () Bool)

(declare-fun c!12667 () Bool)

(assert (=> d!50800 (= c!12667 (and lt!10813 (is-Nil!475 (ite lt!10810 (tail!777 l2!304) l2!304))))))

(declare-fun lt!10816 () List!500)

(assert (=> d!50800 (= lt!10816 e!31325)))

(declare-fun c!12668 () Bool)

(assert (=> d!50800 (= c!12668 (or lt!10814 (not lt!10813)))))

(assert (=> d!50800 (= lt!10814 (and lt!10813 (not (is-Nil!475 (ite lt!10810 (tail!777 l2!304) l2!304)))))))

(assert (=> d!50800 (= lt!10813 (is-Nil!475 (ite lt!10810 Nil!475 (tail!777 (tail!777 l1!311)))))))

(assert (=> d!50800 (= (concat0!0 (ite lt!10810 Nil!475 (tail!777 (tail!777 l1!311))) (ite lt!10810 (tail!777 l2!304) l2!304) (ite lt!10810 (Cons!474 (head!751 l2!304) (Cons!474 (head!751 l1!311) l3!44)) (Cons!474 (head!751 (tail!777 l1!311)) (Cons!474 (head!751 l1!311) l3!44)))) lt!10815)))

(declare-fun b!58871 () Bool)

(assert (=> b!58871 (= e!31324 (reverse!2 (ite lt!10810 (Cons!474 (head!751 l2!304) (Cons!474 (head!751 l1!311) l3!44)) (Cons!474 (head!751 (tail!777 l1!311)) (Cons!474 (head!751 l1!311) l3!44)))))))

(declare-fun b!58872 () Bool)

(assert (=> b!58872 (= e!31324 lt!10816)))

(assert (= (and d!50800 c!12668) b!58869))

(assert (= (and d!50800 (not c!12668)) b!58870))

(assert (= (and d!50800 c!12667) b!58871))

(assert (= (and d!50800 (not c!12667)) b!58872))

(declare-fun m!63514 () Bool)

(assert (=> b!58869 m!63514))

(declare-fun m!63516 () Bool)

(assert (=> d!50800 m!63516))

(declare-fun m!63518 () Bool)

(assert (=> d!50800 m!63518))

(declare-fun m!63520 () Bool)

(assert (=> d!50800 m!63520))

(declare-fun m!63522 () Bool)

(assert (=> d!50800 m!63522))

(declare-fun m!63524 () Bool)

(assert (=> b!58871 m!63524))

(assert (=> b!58855 d!50800))

(declare-fun d!50802 () Bool)

(declare-fun c!12669 () Bool)

(assert (=> d!50802 (= c!12669 (is-Nil!475 (tail!777 x$8!63)))))

(declare-fun e!31326 () (Set (_ BitVec 32)))

(assert (=> d!50802 (= (content!16 (tail!777 x$8!63)) e!31326)))

(declare-fun b!58873 () Bool)

(assert (=> b!58873 (= e!31326 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58874 () Bool)

(assert (=> b!58874 (= e!31326 (union (insert (head!751 (tail!777 x$8!63)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!777 (tail!777 x$8!63)))))))

(assert (= (and d!50802 c!12669) b!58873))

(assert (= (and d!50802 (not c!12669)) b!58874))

(declare-fun m!63526 () Bool)

(assert (=> b!58874 m!63526))

(declare-fun m!63528 () Bool)

(assert (=> b!58874 m!63528))

(assert (=> b!58840 d!50802))

(assert (=> b!58842 d!50792))

(declare-fun d!50804 () Bool)

(declare-fun lt!10819 () List!500)

(assert (=> d!50804 (= (content!16 lt!10819) (content!16 (Cons!474 (head!751 l1!311) l3!44)))))

(declare-fun reverse0!1 (List!500 List!500) List!500)

(assert (=> d!50804 (= lt!10819 (reverse0!1 (Cons!474 (head!751 l1!311) l3!44) Nil!475))))

(assert (=> d!50804 (= (reverse!2 (Cons!474 (head!751 l1!311) l3!44)) lt!10819)))

(declare-fun bs!36386 () Bool)

(assert (= bs!36386 d!50804))

(declare-fun m!63530 () Bool)

(assert (=> bs!36386 m!63530))

(assert (=> bs!36386 m!63490))

(declare-fun m!63532 () Bool)

(assert (=> bs!36386 m!63532))

(assert (=> b!58857 d!50804))

(push 1)

(assert (not b!58860))

(assert (not b!58868))

(assert (not b!58874))

(assert (not b!58869))

(assert (not b!58864))

(assert (not b!58871))

(assert (not b!58862))

(assert (not b!58866))

(assert (not d!50800))

(assert (not d!50804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8396 () Bool)

(assert start!8396)

(declare-fun res!27253 () Bool)

(declare-fun e!31329 () Bool)

(assert (=> start!8396 (=> (not res!27253) (not e!31329))))

(declare-datatypes () ((List!501 (Cons!475 (head!752 (_ BitVec 32)) (tail!778 List!501)) (Nil!476))))

(declare-fun x$4!95 () List!501)

(declare-fun l!1288 () List!501)

(declare-fun reverse0!1 (List!501 List!501) List!501)

(assert (=> start!8396 (= res!27253 (= x$4!95 (reverse0!1 l!1288 Nil!476)))))

(assert (=> start!8396 e!31329))

(assert (=> start!8396 true))

(declare-fun b!58877 () Bool)

(declare-fun content!16 (List!501) (Set (_ BitVec 32)))

(assert (=> b!58877 (= e!31329 (not (= (content!16 x$4!95) (content!16 l!1288))))))

(assert (= (and start!8396 res!27253) b!58877))

(declare-fun m!63534 () Bool)

(assert (=> start!8396 m!63534))

(declare-fun m!63536 () Bool)

(assert (=> b!58877 m!63536))

(declare-fun m!63538 () Bool)

(assert (=> b!58877 m!63538))

(push 1)

(assert (not b!58877))

(assert (not start!8396))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50806 () Bool)

(declare-fun c!12672 () Bool)

(assert (=> d!50806 (= c!12672 (is-Nil!476 x$4!95))))

(declare-fun e!31332 () (Set (_ BitVec 32)))

(assert (=> d!50806 (= (content!16 x$4!95) e!31332)))

(declare-fun b!58882 () Bool)

(assert (=> b!58882 (= e!31332 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58883 () Bool)

(assert (=> b!58883 (= e!31332 (union (insert (head!752 x$4!95) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!778 x$4!95))))))

(assert (= (and d!50806 c!12672) b!58882))

(assert (= (and d!50806 (not c!12672)) b!58883))

(declare-fun m!63540 () Bool)

(assert (=> b!58883 m!63540))

(declare-fun m!63542 () Bool)

(assert (=> b!58883 m!63542))

(assert (=> b!58877 d!50806))

(declare-fun d!50808 () Bool)

(declare-fun c!12673 () Bool)

(assert (=> d!50808 (= c!12673 (is-Nil!476 l!1288))))

(declare-fun e!31333 () (Set (_ BitVec 32)))

(assert (=> d!50808 (= (content!16 l!1288) e!31333)))

(declare-fun b!58884 () Bool)

(assert (=> b!58884 (= e!31333 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58885 () Bool)

(assert (=> b!58885 (= e!31333 (union (insert (head!752 l!1288) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!778 l!1288))))))

(assert (= (and d!50808 c!12673) b!58884))

(assert (= (and d!50808 (not c!12673)) b!58885))

(declare-fun m!63544 () Bool)

(assert (=> b!58885 m!63544))

(declare-fun m!63546 () Bool)

(assert (=> b!58885 m!63546))

(assert (=> b!58877 d!50808))

(declare-fun d!50810 () Bool)

(declare-fun lt!10822 () List!501)

(assert (=> d!50810 (= (content!16 lt!10822) (union (content!16 l!1288) (content!16 Nil!476)))))

(declare-fun e!31336 () List!501)

(assert (=> d!50810 (= lt!10822 e!31336)))

(declare-fun c!12676 () Bool)

(assert (=> d!50810 (= c!12676 (is-Nil!476 l!1288))))

(assert (=> d!50810 (= (reverse0!1 l!1288 Nil!476) lt!10822)))

(declare-fun b!58890 () Bool)

(assert (=> b!58890 (= e!31336 Nil!476)))

(declare-fun b!58891 () Bool)

(assert (=> b!58891 (= e!31336 (reverse0!1 (tail!778 l!1288) (Cons!475 (head!752 l!1288) Nil!476)))))

(assert (= (and d!50810 c!12676) b!58890))

(assert (= (and d!50810 (not c!12676)) b!58891))

(declare-fun m!63548 () Bool)

(assert (=> d!50810 m!63548))

(assert (=> d!50810 m!63538))

(declare-fun m!63550 () Bool)

(assert (=> d!50810 m!63550))

(declare-fun m!63552 () Bool)

(assert (=> b!58891 m!63552))

(assert (=> start!8396 d!50810))

(push 1)

(assert (not b!58891))

(assert (not d!50810))

(assert (not b!58885))

(assert (not b!58883))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50812 () Bool)

(declare-fun lt!10823 () List!501)

(assert (=> d!50812 (= (content!16 lt!10823) (union (content!16 (tail!778 l!1288)) (content!16 (Cons!475 (head!752 l!1288) Nil!476))))))

(declare-fun e!31337 () List!501)

(assert (=> d!50812 (= lt!10823 e!31337)))

(declare-fun c!12677 () Bool)

(assert (=> d!50812 (= c!12677 (is-Nil!476 (tail!778 l!1288)))))

(assert (=> d!50812 (= (reverse0!1 (tail!778 l!1288) (Cons!475 (head!752 l!1288) Nil!476)) lt!10823)))

(declare-fun b!58892 () Bool)

(assert (=> b!58892 (= e!31337 (Cons!475 (head!752 l!1288) Nil!476))))

(declare-fun b!58893 () Bool)

(assert (=> b!58893 (= e!31337 (reverse0!1 (tail!778 (tail!778 l!1288)) (Cons!475 (head!752 (tail!778 l!1288)) (Cons!475 (head!752 l!1288) Nil!476))))))

(assert (= (and d!50812 c!12677) b!58892))

(assert (= (and d!50812 (not c!12677)) b!58893))

(declare-fun m!63554 () Bool)

(assert (=> d!50812 m!63554))

(assert (=> d!50812 m!63546))

(declare-fun m!63556 () Bool)

(assert (=> d!50812 m!63556))

(declare-fun m!63558 () Bool)

(assert (=> b!58893 m!63558))

(assert (=> b!58891 d!50812))

(declare-fun d!50814 () Bool)

(declare-fun c!12678 () Bool)

(assert (=> d!50814 (= c!12678 (is-Nil!476 lt!10822))))

(declare-fun e!31338 () (Set (_ BitVec 32)))

(assert (=> d!50814 (= (content!16 lt!10822) e!31338)))

(declare-fun b!58894 () Bool)

(assert (=> b!58894 (= e!31338 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58895 () Bool)

(assert (=> b!58895 (= e!31338 (union (insert (head!752 lt!10822) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!778 lt!10822))))))

(assert (= (and d!50814 c!12678) b!58894))

(assert (= (and d!50814 (not c!12678)) b!58895))

(declare-fun m!63560 () Bool)

(assert (=> b!58895 m!63560))

(declare-fun m!63562 () Bool)

(assert (=> b!58895 m!63562))

(assert (=> d!50810 d!50814))

(assert (=> d!50810 d!50808))

(declare-fun d!50816 () Bool)

(assert (=> d!50816 (= (content!16 Nil!476) (as emptyset (Set (_ BitVec 32))))))

(assert (=> d!50810 d!50816))

(declare-fun d!50818 () Bool)

(declare-fun c!12679 () Bool)

(assert (=> d!50818 (= c!12679 (is-Nil!476 (tail!778 l!1288)))))

(declare-fun e!31339 () (Set (_ BitVec 32)))

(assert (=> d!50818 (= (content!16 (tail!778 l!1288)) e!31339)))

(declare-fun b!58896 () Bool)

(assert (=> b!58896 (= e!31339 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58897 () Bool)

(assert (=> b!58897 (= e!31339 (union (insert (head!752 (tail!778 l!1288)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!778 (tail!778 l!1288)))))))

(assert (= (and d!50818 c!12679) b!58896))

(assert (= (and d!50818 (not c!12679)) b!58897))

(declare-fun m!63564 () Bool)

(assert (=> b!58897 m!63564))

(declare-fun m!63566 () Bool)

(assert (=> b!58897 m!63566))

(assert (=> b!58885 d!50818))

(declare-fun d!50820 () Bool)

(declare-fun c!12680 () Bool)

(assert (=> d!50820 (= c!12680 (is-Nil!476 (tail!778 x$4!95)))))

(declare-fun e!31340 () (Set (_ BitVec 32)))

(assert (=> d!50820 (= (content!16 (tail!778 x$4!95)) e!31340)))

(declare-fun b!58898 () Bool)

(assert (=> b!58898 (= e!31340 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58899 () Bool)

(assert (=> b!58899 (= e!31340 (union (insert (head!752 (tail!778 x$4!95)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!778 (tail!778 x$4!95)))))))

(assert (= (and d!50820 c!12680) b!58898))

(assert (= (and d!50820 (not c!12680)) b!58899))

(declare-fun m!63568 () Bool)

(assert (=> b!58899 m!63568))

(declare-fun m!63570 () Bool)

(assert (=> b!58899 m!63570))

(assert (=> b!58883 d!50820))

(push 1)

(assert (not b!58899))

(assert (not b!58895))

(assert (not b!58897))

(assert (not b!58893))

(assert (not d!50812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


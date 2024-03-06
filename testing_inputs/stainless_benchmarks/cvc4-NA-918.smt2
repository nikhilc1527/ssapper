; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6976 () Bool)

(assert start!6976)

(declare-fun res!23572 () Bool)

(declare-fun e!26776 () Bool)

(assert (=> start!6976 (=> (not res!23572) (not e!26776))))

(declare-datatypes () ((Node!46 (Node!47 (rank!15 Int) (elem!87 (_ BitVec 32)) (nodes!15 Heap!9))) (Heap!9 (Empty!111) (Nodes!8 (head!640 Node!46) (tail!664 Heap!9)))))

(declare-fun h!443 () Heap!9)

(assert (=> start!6976 (= res!23572 (not (is-Empty!111 h!443)))))

(assert (=> start!6976 e!26776))

(assert (=> start!6976 true))

(declare-fun b!51544 () Bool)

(declare-fun res!23573 () Bool)

(assert (=> b!51544 (=> (not res!23573) (not e!26776))))

(declare-fun acc!12 () Heap!9)

(declare-fun res!23492 () Heap!9)

(declare-fun reverse0!2 (Heap!9 Heap!9) Heap!9)

(assert (=> b!51544 (= res!23573 (= res!23492 (reverse0!2 (tail!664 h!443) (Nodes!8 (head!640 h!443) acc!12))))))

(declare-fun b!51545 () Bool)

(declare-fun heapContent!0 (Heap!9) (Set (_ BitVec 32)))

(assert (=> b!51545 (= e!26776 (not (= (heapContent!0 res!23492) (union (heapContent!0 h!443) (heapContent!0 acc!12)))))))

(assert (= (and start!6976 res!23572) b!51544))

(assert (= (and b!51544 res!23573) b!51545))

(declare-fun m!55447 () Bool)

(assert (=> b!51544 m!55447))

(declare-fun m!55449 () Bool)

(assert (=> b!51545 m!55449))

(declare-fun m!55451 () Bool)

(assert (=> b!51545 m!55451))

(declare-fun m!55453 () Bool)

(assert (=> b!51545 m!55453))

(push 1)

(assert (not b!51544))

(assert (not b!51545))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43892 () Bool)

(declare-fun lt!9021 () Heap!9)

(assert (=> d!43892 (= (heapContent!0 lt!9021) (union (heapContent!0 (tail!664 h!443)) (heapContent!0 (Nodes!8 (head!640 h!443) acc!12))))))

(declare-fun e!26779 () Heap!9)

(assert (=> d!43892 (= lt!9021 e!26779)))

(declare-fun c!11027 () Bool)

(assert (=> d!43892 (= c!11027 (is-Empty!111 (tail!664 h!443)))))

(assert (=> d!43892 (= (reverse0!2 (tail!664 h!443) (Nodes!8 (head!640 h!443) acc!12)) lt!9021)))

(declare-fun b!51550 () Bool)

(assert (=> b!51550 (= e!26779 (Nodes!8 (head!640 h!443) acc!12))))

(declare-fun b!51551 () Bool)

(assert (=> b!51551 (= e!26779 (reverse0!2 (tail!664 (tail!664 h!443)) (Nodes!8 (head!640 (tail!664 h!443)) (Nodes!8 (head!640 h!443) acc!12))))))

(assert (= (and d!43892 c!11027) b!51550))

(assert (= (and d!43892 (not c!11027)) b!51551))

(declare-fun m!55455 () Bool)

(assert (=> d!43892 m!55455))

(declare-fun m!55457 () Bool)

(assert (=> d!43892 m!55457))

(declare-fun m!55459 () Bool)

(assert (=> d!43892 m!55459))

(declare-fun m!55461 () Bool)

(assert (=> b!51551 m!55461))

(assert (=> b!51544 d!43892))

(declare-fun d!43894 () Bool)

(declare-fun c!11030 () Bool)

(assert (=> d!43894 (= c!11030 (is-Empty!111 res!23492))))

(declare-fun e!26782 () (Set (_ BitVec 32)))

(assert (=> d!43894 (= (heapContent!0 res!23492) e!26782)))

(declare-fun b!51556 () Bool)

(assert (=> b!51556 (= e!26782 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51557 () Bool)

(declare-fun nodeContent!0 (Node!46) (Set (_ BitVec 32)))

(assert (=> b!51557 (= e!26782 (union (nodeContent!0 (head!640 res!23492)) (heapContent!0 (tail!664 res!23492))))))

(assert (= (and d!43894 c!11030) b!51556))

(assert (= (and d!43894 (not c!11030)) b!51557))

(declare-fun m!55463 () Bool)

(assert (=> b!51557 m!55463))

(declare-fun m!55465 () Bool)

(assert (=> b!51557 m!55465))

(assert (=> b!51545 d!43894))

(declare-fun d!43896 () Bool)

(declare-fun c!11031 () Bool)

(assert (=> d!43896 (= c!11031 (is-Empty!111 h!443))))

(declare-fun e!26783 () (Set (_ BitVec 32)))

(assert (=> d!43896 (= (heapContent!0 h!443) e!26783)))

(declare-fun b!51558 () Bool)

(assert (=> b!51558 (= e!26783 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51559 () Bool)

(assert (=> b!51559 (= e!26783 (union (nodeContent!0 (head!640 h!443)) (heapContent!0 (tail!664 h!443))))))

(assert (= (and d!43896 c!11031) b!51558))

(assert (= (and d!43896 (not c!11031)) b!51559))

(declare-fun m!55467 () Bool)

(assert (=> b!51559 m!55467))

(assert (=> b!51559 m!55457))

(assert (=> b!51545 d!43896))

(declare-fun d!43898 () Bool)

(declare-fun c!11032 () Bool)

(assert (=> d!43898 (= c!11032 (is-Empty!111 acc!12))))

(declare-fun e!26784 () (Set (_ BitVec 32)))

(assert (=> d!43898 (= (heapContent!0 acc!12) e!26784)))

(declare-fun b!51560 () Bool)

(assert (=> b!51560 (= e!26784 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51561 () Bool)

(assert (=> b!51561 (= e!26784 (union (nodeContent!0 (head!640 acc!12)) (heapContent!0 (tail!664 acc!12))))))

(assert (= (and d!43898 c!11032) b!51560))

(assert (= (and d!43898 (not c!11032)) b!51561))

(declare-fun m!55469 () Bool)

(assert (=> b!51561 m!55469))

(declare-fun m!55471 () Bool)

(assert (=> b!51561 m!55471))

(assert (=> b!51545 d!43898))

(push 1)

(assert (not b!51561))

(assert (not b!51557))

(assert (not b!51559))

(assert (not d!43892))

(assert (not b!51551))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43900 () Bool)

(declare-fun lt!9022 () Heap!9)

(assert (=> d!43900 (= (heapContent!0 lt!9022) (union (heapContent!0 (tail!664 (tail!664 h!443))) (heapContent!0 (Nodes!8 (head!640 (tail!664 h!443)) (Nodes!8 (head!640 h!443) acc!12)))))))

(declare-fun e!26785 () Heap!9)

(assert (=> d!43900 (= lt!9022 e!26785)))

(declare-fun c!11033 () Bool)

(assert (=> d!43900 (= c!11033 (is-Empty!111 (tail!664 (tail!664 h!443))))))

(assert (=> d!43900 (= (reverse0!2 (tail!664 (tail!664 h!443)) (Nodes!8 (head!640 (tail!664 h!443)) (Nodes!8 (head!640 h!443) acc!12))) lt!9022)))

(declare-fun b!51562 () Bool)

(assert (=> b!51562 (= e!26785 (Nodes!8 (head!640 (tail!664 h!443)) (Nodes!8 (head!640 h!443) acc!12)))))

(declare-fun b!51563 () Bool)

(assert (=> b!51563 (= e!26785 (reverse0!2 (tail!664 (tail!664 (tail!664 h!443))) (Nodes!8 (head!640 (tail!664 (tail!664 h!443))) (Nodes!8 (head!640 (tail!664 h!443)) (Nodes!8 (head!640 h!443) acc!12)))))))

(assert (= (and d!43900 c!11033) b!51562))

(assert (= (and d!43900 (not c!11033)) b!51563))

(declare-fun m!55473 () Bool)

(assert (=> d!43900 m!55473))

(declare-fun m!55475 () Bool)

(assert (=> d!43900 m!55475))

(declare-fun m!55477 () Bool)

(assert (=> d!43900 m!55477))

(declare-fun m!55479 () Bool)

(assert (=> b!51563 m!55479))

(assert (=> b!51551 d!43900))

(declare-fun d!43902 () Bool)

(assert (=> d!43902 (= (nodeContent!0 (head!640 res!23492)) (union (insert (elem!87 (head!640 res!23492)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!15 (head!640 res!23492)))))))

(declare-fun bs!23762 () Bool)

(assert (= bs!23762 d!43902))

(declare-fun m!55481 () Bool)

(assert (=> bs!23762 m!55481))

(declare-fun m!55483 () Bool)

(assert (=> bs!23762 m!55483))

(assert (=> b!51557 d!43902))

(declare-fun d!43904 () Bool)

(declare-fun c!11034 () Bool)

(assert (=> d!43904 (= c!11034 (is-Empty!111 (tail!664 res!23492)))))

(declare-fun e!26786 () (Set (_ BitVec 32)))

(assert (=> d!43904 (= (heapContent!0 (tail!664 res!23492)) e!26786)))

(declare-fun b!51564 () Bool)

(assert (=> b!51564 (= e!26786 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51565 () Bool)

(assert (=> b!51565 (= e!26786 (union (nodeContent!0 (head!640 (tail!664 res!23492))) (heapContent!0 (tail!664 (tail!664 res!23492)))))))

(assert (= (and d!43904 c!11034) b!51564))

(assert (= (and d!43904 (not c!11034)) b!51565))

(declare-fun m!55485 () Bool)

(assert (=> b!51565 m!55485))

(declare-fun m!55487 () Bool)

(assert (=> b!51565 m!55487))

(assert (=> b!51557 d!43904))

(declare-fun d!43906 () Bool)

(declare-fun c!11035 () Bool)

(assert (=> d!43906 (= c!11035 (is-Empty!111 lt!9021))))

(declare-fun e!26787 () (Set (_ BitVec 32)))

(assert (=> d!43906 (= (heapContent!0 lt!9021) e!26787)))

(declare-fun b!51566 () Bool)

(assert (=> b!51566 (= e!26787 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51567 () Bool)

(assert (=> b!51567 (= e!26787 (union (nodeContent!0 (head!640 lt!9021)) (heapContent!0 (tail!664 lt!9021))))))

(assert (= (and d!43906 c!11035) b!51566))

(assert (= (and d!43906 (not c!11035)) b!51567))

(declare-fun m!55489 () Bool)

(assert (=> b!51567 m!55489))

(declare-fun m!55491 () Bool)

(assert (=> b!51567 m!55491))

(assert (=> d!43892 d!43906))

(declare-fun d!43908 () Bool)

(declare-fun c!11036 () Bool)

(assert (=> d!43908 (= c!11036 (is-Empty!111 (tail!664 h!443)))))

(declare-fun e!26788 () (Set (_ BitVec 32)))

(assert (=> d!43908 (= (heapContent!0 (tail!664 h!443)) e!26788)))

(declare-fun b!51568 () Bool)

(assert (=> b!51568 (= e!26788 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51569 () Bool)

(assert (=> b!51569 (= e!26788 (union (nodeContent!0 (head!640 (tail!664 h!443))) (heapContent!0 (tail!664 (tail!664 h!443)))))))

(assert (= (and d!43908 c!11036) b!51568))

(assert (= (and d!43908 (not c!11036)) b!51569))

(declare-fun m!55493 () Bool)

(assert (=> b!51569 m!55493))

(assert (=> b!51569 m!55475))

(assert (=> d!43892 d!43908))

(declare-fun d!43910 () Bool)

(declare-fun c!11037 () Bool)

(assert (=> d!43910 (= c!11037 (is-Empty!111 (Nodes!8 (head!640 h!443) acc!12)))))

(declare-fun e!26789 () (Set (_ BitVec 32)))

(assert (=> d!43910 (= (heapContent!0 (Nodes!8 (head!640 h!443) acc!12)) e!26789)))

(declare-fun b!51570 () Bool)

(assert (=> b!51570 (= e!26789 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51571 () Bool)

(assert (=> b!51571 (= e!26789 (union (nodeContent!0 (head!640 (Nodes!8 (head!640 h!443) acc!12))) (heapContent!0 (tail!664 (Nodes!8 (head!640 h!443) acc!12)))))))

(assert (= (and d!43910 c!11037) b!51570))

(assert (= (and d!43910 (not c!11037)) b!51571))

(declare-fun m!55495 () Bool)

(assert (=> b!51571 m!55495))

(declare-fun m!55497 () Bool)

(assert (=> b!51571 m!55497))

(assert (=> d!43892 d!43910))

(declare-fun d!43912 () Bool)

(assert (=> d!43912 (= (nodeContent!0 (head!640 acc!12)) (union (insert (elem!87 (head!640 acc!12)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!15 (head!640 acc!12)))))))

(declare-fun bs!23763 () Bool)

(assert (= bs!23763 d!43912))

(declare-fun m!55499 () Bool)

(assert (=> bs!23763 m!55499))

(declare-fun m!55501 () Bool)

(assert (=> bs!23763 m!55501))

(assert (=> b!51561 d!43912))

(declare-fun d!43914 () Bool)

(declare-fun c!11038 () Bool)

(assert (=> d!43914 (= c!11038 (is-Empty!111 (tail!664 acc!12)))))

(declare-fun e!26790 () (Set (_ BitVec 32)))

(assert (=> d!43914 (= (heapContent!0 (tail!664 acc!12)) e!26790)))

(declare-fun b!51572 () Bool)

(assert (=> b!51572 (= e!26790 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51573 () Bool)

(assert (=> b!51573 (= e!26790 (union (nodeContent!0 (head!640 (tail!664 acc!12))) (heapContent!0 (tail!664 (tail!664 acc!12)))))))

(assert (= (and d!43914 c!11038) b!51572))

(assert (= (and d!43914 (not c!11038)) b!51573))

(declare-fun m!55503 () Bool)

(assert (=> b!51573 m!55503))

(declare-fun m!55505 () Bool)

(assert (=> b!51573 m!55505))

(assert (=> b!51561 d!43914))

(declare-fun d!43916 () Bool)

(assert (=> d!43916 (= (nodeContent!0 (head!640 h!443)) (union (insert (elem!87 (head!640 h!443)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!15 (head!640 h!443)))))))

(declare-fun bs!23764 () Bool)

(assert (= bs!23764 d!43916))

(declare-fun m!55507 () Bool)

(assert (=> bs!23764 m!55507))

(declare-fun m!55509 () Bool)

(assert (=> bs!23764 m!55509))

(assert (=> b!51559 d!43916))

(assert (=> b!51559 d!43908))

(push 1)

(assert (not d!43916))

(assert (not b!51571))

(assert (not b!51567))

(assert (not b!51573))

(assert (not b!51565))

(assert (not d!43900))

(assert (not b!51569))

(assert (not d!43912))

(assert (not b!51563))

(assert (not d!43902))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6920 () Bool)

(assert start!6920)

(declare-fun res!23512 () Bool)

(declare-fun e!26500 () Bool)

(assert (=> start!6920 (=> (not res!23512) (not e!26500))))

(declare-datatypes () ((Node!34 (Node!35 (rank!9 Int) (elem!81 (_ BitVec 32)) (nodes!9 Heap!3))) (Heap!3 (Empty!105) (Nodes!2 (head!634 Node!34) (tail!658 Heap!3)))))

(declare-fun h0!5 () Heap!3)

(declare-fun insert!4 ((_ BitVec 32) Heap!3) Heap!3)

(assert (=> start!6920 (= res!23512 (= h0!5 (insert!4 #b00000000000000000000000000101010 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))))))

(assert (=> start!6920 e!26500))

(assert (=> start!6920 true))

(declare-fun b!50999 () Bool)

(declare-fun res!23513 () Bool)

(assert (=> b!50999 (=> (not res!23513) (not e!26500))))

(declare-fun h1!23 () Heap!3)

(declare-fun deleteMin!0 (Heap!3) Heap!3)

(assert (=> b!50999 (= res!23513 (= h1!23 (deleteMin!0 h0!5)))))

(declare-fun b!51000 () Bool)

(declare-datatypes () ((OptInt!4 (Some!228 (value!3240 (_ BitVec 32))) (None!229))))

(declare-fun findMin!0 (Heap!3) OptInt!4)

(assert (=> b!51000 (= e!26500 (not (= (findMin!0 h1!23) (Some!228 #b00000000000000000000000000001100))))))

(assert (= (and start!6920 res!23512) b!50999))

(assert (= (and b!50999 res!23513) b!51000))

(declare-fun m!54541 () Bool)

(assert (=> start!6920 m!54541))

(assert (=> start!6920 m!54541))

(declare-fun m!54543 () Bool)

(assert (=> start!6920 m!54543))

(assert (=> start!6920 m!54543))

(declare-fun m!54545 () Bool)

(assert (=> start!6920 m!54545))

(declare-fun m!54547 () Bool)

(assert (=> b!50999 m!54547))

(declare-fun m!54549 () Bool)

(assert (=> b!51000 m!54549))

(push 1)

(assert (not b!51000))

(assert (not start!6920))

(assert (not b!50999))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!51017 () Bool)

(declare-fun e!26509 () (_ BitVec 32))

(assert (=> b!51017 (= e!26509 (value!3240 (findMin!0 (tail!658 h1!23))))))

(declare-fun b!51018 () Bool)

(declare-fun e!26512 () OptInt!4)

(assert (=> b!51018 (= e!26512 None!229)))

(declare-fun b!51019 () Bool)

(assert (=> b!51019 (= e!26509 (elem!81 (head!634 h1!23)))))

(declare-fun b!51020 () Bool)

(declare-fun e!26511 () Bool)

(declare-fun isEmpty!6 (Heap!3) Bool)

(assert (=> b!51020 (= e!26511 (isEmpty!6 h1!23))))

(declare-fun b!51021 () Bool)

(declare-fun lt!8880 () OptInt!4)

(declare-fun heapContent!0 (Heap!3) (Set (_ BitVec 32)))

(assert (=> b!51021 (= e!26511 (member (value!3240 lt!8880) (heapContent!0 h1!23)))))

(declare-fun b!51022 () Bool)

(declare-fun e!26510 () OptInt!4)

(assert (=> b!51022 (= e!26510 (Some!228 (elem!81 (head!634 h1!23))))))

(declare-fun d!43508 () Bool)

(assert (=> d!43508 e!26511))

(declare-fun c!10776 () Bool)

(assert (=> d!43508 (= c!10776 (is-None!229 lt!8880))))

(assert (=> d!43508 (= lt!8880 e!26512)))

(declare-fun c!10775 () Bool)

(assert (=> d!43508 (= c!10775 (is-Empty!105 h1!23))))

(assert (=> d!43508 (= (findMin!0 h1!23) lt!8880)))

(declare-fun b!51023 () Bool)

(assert (=> b!51023 (= e!26510 (Some!228 e!26509))))

(declare-fun c!10777 () Bool)

(assert (=> b!51023 (= c!10777 (bvslt (elem!81 (head!634 h1!23)) (value!3240 (findMin!0 (tail!658 h1!23)))))))

(declare-fun b!51024 () Bool)

(assert (=> b!51024 (= e!26512 e!26510)))

(declare-fun c!10774 () Bool)

(assert (=> b!51024 (= c!10774 (is-None!229 (findMin!0 (tail!658 h1!23))))))

(assert (= (and b!51023 c!10777) b!51019))

(assert (= (and b!51023 (not c!10777)) b!51017))

(assert (= (and b!51024 c!10774) b!51022))

(assert (= (and b!51024 (not c!10774)) b!51023))

(assert (= (and d!43508 c!10775) b!51018))

(assert (= (and d!43508 (not c!10775)) b!51024))

(assert (= (and d!43508 c!10776) b!51020))

(assert (= (and d!43508 (not c!10776)) b!51021))

(declare-fun m!54551 () Bool)

(assert (=> b!51020 m!54551))

(declare-fun m!54553 () Bool)

(assert (=> b!51017 m!54553))

(assert (=> b!51023 m!54553))

(assert (=> b!51024 m!54553))

(declare-fun m!54555 () Bool)

(assert (=> b!51021 m!54555))

(declare-fun m!54557 () Bool)

(assert (=> b!51021 m!54557))

(assert (=> b!51000 d!43508))

(declare-fun d!43510 () Bool)

(declare-fun lt!8883 () Heap!3)

(assert (=> d!43510 (= (heapContent!0 lt!8883) (union (heapContent!0 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))) (insert #b00000000000000000000000000101010 (as emptyset (Set (_ BitVec 32))))))))

(declare-fun insertNode!0 (Node!34 Heap!3) Heap!3)

(assert (=> d!43510 (= lt!8883 (insertNode!0 (Node!35 0 #b00000000000000000000000000101010 Empty!105) (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))))))

(assert (=> d!43510 (= (insert!4 #b00000000000000000000000000101010 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))) lt!8883)))

(declare-fun bs!23715 () Bool)

(assert (= bs!23715 d!43510))

(declare-fun m!54559 () Bool)

(assert (=> bs!23715 m!54559))

(assert (=> bs!23715 m!54543))

(declare-fun m!54561 () Bool)

(assert (=> bs!23715 m!54561))

(declare-fun m!54563 () Bool)

(assert (=> bs!23715 m!54563))

(assert (=> bs!23715 m!54543))

(declare-fun m!54565 () Bool)

(assert (=> bs!23715 m!54565))

(assert (=> start!6920 d!43510))

(declare-fun d!43512 () Bool)

(declare-fun lt!8884 () Heap!3)

(assert (=> d!43512 (= (heapContent!0 lt!8884) (union (heapContent!0 (insert!4 #b00000000000000000000000000001100 Empty!105)) (insert #b00000000000000000000000000000000 (as emptyset (Set (_ BitVec 32))))))))

(assert (=> d!43512 (= lt!8884 (insertNode!0 (Node!35 0 #b00000000000000000000000000000000 Empty!105) (insert!4 #b00000000000000000000000000001100 Empty!105)))))

(assert (=> d!43512 (= (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)) lt!8884)))

(declare-fun bs!23716 () Bool)

(assert (= bs!23716 d!43512))

(declare-fun m!54567 () Bool)

(assert (=> bs!23716 m!54567))

(assert (=> bs!23716 m!54541))

(declare-fun m!54569 () Bool)

(assert (=> bs!23716 m!54569))

(declare-fun m!54571 () Bool)

(assert (=> bs!23716 m!54571))

(assert (=> bs!23716 m!54541))

(declare-fun m!54573 () Bool)

(assert (=> bs!23716 m!54573))

(assert (=> start!6920 d!43512))

(declare-fun d!43514 () Bool)

(declare-fun lt!8885 () Heap!3)

(assert (=> d!43514 (= (heapContent!0 lt!8885) (union (heapContent!0 Empty!105) (insert #b00000000000000000000000000001100 (as emptyset (Set (_ BitVec 32))))))))

(assert (=> d!43514 (= lt!8885 (insertNode!0 (Node!35 0 #b00000000000000000000000000001100 Empty!105) Empty!105))))

(assert (=> d!43514 (= (insert!4 #b00000000000000000000000000001100 Empty!105) lt!8885)))

(declare-fun bs!23717 () Bool)

(assert (= bs!23717 d!43514))

(declare-fun m!54575 () Bool)

(assert (=> bs!23717 m!54575))

(declare-fun m!54577 () Bool)

(assert (=> bs!23717 m!54577))

(declare-fun m!54579 () Bool)

(assert (=> bs!23717 m!54579))

(declare-fun m!54581 () Bool)

(assert (=> bs!23717 m!54581))

(assert (=> start!6920 d!43514))

(declare-fun b!51030 () Bool)

(declare-fun e!26517 () Heap!3)

(declare-fun merge!1 (Heap!3 Heap!3) Heap!3)

(declare-fun reverse!3 (Heap!3) Heap!3)

(declare-datatypes () ((tuple2!268 (tuple2!269 (_1!160 Node!34) (_2!160 Heap!3)))))

(declare-fun getMin!0 (Heap!3) tuple2!268)

(assert (=> b!51030 (= e!26517 (merge!1 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))) (_2!160 (getMin!0 h0!5))))))

(declare-fun lt!8891 () tuple2!268)

(assert (=> b!51030 (= lt!8891 (getMin!0 h0!5))))

(declare-fun d!43516 () Bool)

(declare-fun lt!8890 () Heap!3)

(assert (=> d!43516 (subset (heapContent!0 lt!8890) (heapContent!0 h0!5))))

(assert (=> d!43516 (= lt!8890 e!26517)))

(declare-fun c!10780 () Bool)

(assert (=> d!43516 (= c!10780 (is-Empty!105 h0!5))))

(assert (=> d!43516 (= (deleteMin!0 h0!5) lt!8890)))

(declare-fun b!51029 () Bool)

(assert (=> b!51029 (= e!26517 Empty!105)))

(assert (= (and d!43516 c!10780) b!51029))

(assert (= (and d!43516 (not c!10780)) b!51030))

(declare-fun m!54583 () Bool)

(assert (=> b!51030 m!54583))

(declare-fun m!54585 () Bool)

(assert (=> b!51030 m!54585))

(assert (=> b!51030 m!54585))

(declare-fun m!54587 () Bool)

(assert (=> b!51030 m!54587))

(declare-fun m!54589 () Bool)

(assert (=> d!43516 m!54589))

(declare-fun m!54591 () Bool)

(assert (=> d!43516 m!54591))

(assert (=> b!50999 d!43516))

(push 1)

(assert (not d!43516))

(assert (not b!51024))

(assert (not d!43512))

(assert (not d!43514))

(assert (not b!51021))

(assert (not b!51030))

(assert (not d!43510))

(assert (not b!51020))

(assert (not b!51017))

(assert (not b!51023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43518 () Bool)

(declare-fun c!10783 () Bool)

(assert (=> d!43518 (= c!10783 (is-Empty!105 lt!8884))))

(declare-fun e!26520 () (Set (_ BitVec 32)))

(assert (=> d!43518 (= (heapContent!0 lt!8884) e!26520)))

(declare-fun b!51035 () Bool)

(assert (=> b!51035 (= e!26520 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51036 () Bool)

(declare-fun nodeContent!0 (Node!34) (Set (_ BitVec 32)))

(assert (=> b!51036 (= e!26520 (union (nodeContent!0 (head!634 lt!8884)) (heapContent!0 (tail!658 lt!8884))))))

(assert (= (and d!43518 c!10783) b!51035))

(assert (= (and d!43518 (not c!10783)) b!51036))

(declare-fun m!54593 () Bool)

(assert (=> b!51036 m!54593))

(declare-fun m!54595 () Bool)

(assert (=> b!51036 m!54595))

(assert (=> d!43512 d!43518))

(declare-fun d!43520 () Bool)

(declare-fun c!10784 () Bool)

(assert (=> d!43520 (= c!10784 (is-Empty!105 (insert!4 #b00000000000000000000000000001100 Empty!105)))))

(declare-fun e!26521 () (Set (_ BitVec 32)))

(assert (=> d!43520 (= (heapContent!0 (insert!4 #b00000000000000000000000000001100 Empty!105)) e!26521)))

(declare-fun b!51037 () Bool)

(assert (=> b!51037 (= e!26521 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51038 () Bool)

(assert (=> b!51038 (= e!26521 (union (nodeContent!0 (head!634 (insert!4 #b00000000000000000000000000001100 Empty!105))) (heapContent!0 (tail!658 (insert!4 #b00000000000000000000000000001100 Empty!105)))))))

(assert (= (and d!43520 c!10784) b!51037))

(assert (= (and d!43520 (not c!10784)) b!51038))

(declare-fun m!54597 () Bool)

(assert (=> b!51038 m!54597))

(declare-fun m!54599 () Bool)

(assert (=> b!51038 m!54599))

(assert (=> d!43512 d!43520))

(declare-fun b!51050 () Bool)

(declare-fun e!26526 () Heap!3)

(declare-fun link!0 (Node!34 Node!34) Node!34)

(assert (=> b!51050 (= e!26526 (insertNode!0 (link!0 (Node!35 0 #b00000000000000000000000000000000 Empty!105) (head!634 (insert!4 #b00000000000000000000000000001100 Empty!105))) (tail!658 (insert!4 #b00000000000000000000000000001100 Empty!105))))))

(declare-fun d!43522 () Bool)

(declare-fun lt!8894 () Heap!3)

(assert (=> d!43522 (= (heapContent!0 lt!8894) (union (nodeContent!0 (Node!35 0 #b00000000000000000000000000000000 Empty!105)) (heapContent!0 (insert!4 #b00000000000000000000000000001100 Empty!105))))))

(declare-fun e!26527 () Heap!3)

(assert (=> d!43522 (= lt!8894 e!26527)))

(declare-fun c!10790 () Bool)

(assert (=> d!43522 (= c!10790 (is-Empty!105 (insert!4 #b00000000000000000000000000001100 Empty!105)))))

(assert (=> d!43522 (= (insertNode!0 (Node!35 0 #b00000000000000000000000000000000 Empty!105) (insert!4 #b00000000000000000000000000001100 Empty!105)) lt!8894)))

(declare-fun b!51048 () Bool)

(assert (=> b!51048 (= e!26527 e!26526)))

(declare-fun c!10789 () Bool)

(assert (=> b!51048 (= c!10789 (< (rank!9 (Node!35 0 #b00000000000000000000000000000000 Empty!105)) (rank!9 (head!634 (insert!4 #b00000000000000000000000000001100 Empty!105)))))))

(declare-fun b!51049 () Bool)

(assert (=> b!51049 (= e!26526 (Nodes!2 (Node!35 0 #b00000000000000000000000000000000 Empty!105) (insert!4 #b00000000000000000000000000001100 Empty!105)))))

(declare-fun b!51047 () Bool)

(assert (=> b!51047 (= e!26527 (Nodes!2 (Node!35 0 #b00000000000000000000000000000000 Empty!105) Empty!105))))

(assert (= (and b!51048 c!10789) b!51049))

(assert (= (and b!51048 (not c!10789)) b!51050))

(assert (= (and d!43522 c!10790) b!51047))

(assert (= (and d!43522 (not c!10790)) b!51048))

(declare-fun m!54601 () Bool)

(assert (=> b!51050 m!54601))

(assert (=> b!51050 m!54601))

(declare-fun m!54603 () Bool)

(assert (=> b!51050 m!54603))

(declare-fun m!54605 () Bool)

(assert (=> d!43522 m!54605))

(declare-fun m!54607 () Bool)

(assert (=> d!43522 m!54607))

(assert (=> d!43522 m!54541))

(assert (=> d!43522 m!54569))

(assert (=> d!43512 d!43522))

(declare-fun d!43524 () Bool)

(declare-fun c!10791 () Bool)

(assert (=> d!43524 (= c!10791 (is-Empty!105 lt!8890))))

(declare-fun e!26528 () (Set (_ BitVec 32)))

(assert (=> d!43524 (= (heapContent!0 lt!8890) e!26528)))

(declare-fun b!51051 () Bool)

(assert (=> b!51051 (= e!26528 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51052 () Bool)

(assert (=> b!51052 (= e!26528 (union (nodeContent!0 (head!634 lt!8890)) (heapContent!0 (tail!658 lt!8890))))))

(assert (= (and d!43524 c!10791) b!51051))

(assert (= (and d!43524 (not c!10791)) b!51052))

(declare-fun m!54609 () Bool)

(assert (=> b!51052 m!54609))

(declare-fun m!54611 () Bool)

(assert (=> b!51052 m!54611))

(assert (=> d!43516 d!43524))

(declare-fun d!43526 () Bool)

(declare-fun c!10792 () Bool)

(assert (=> d!43526 (= c!10792 (is-Empty!105 h0!5))))

(declare-fun e!26529 () (Set (_ BitVec 32)))

(assert (=> d!43526 (= (heapContent!0 h0!5) e!26529)))

(declare-fun b!51053 () Bool)

(assert (=> b!51053 (= e!26529 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51054 () Bool)

(assert (=> b!51054 (= e!26529 (union (nodeContent!0 (head!634 h0!5)) (heapContent!0 (tail!658 h0!5))))))

(assert (= (and d!43526 c!10792) b!51053))

(assert (= (and d!43526 (not c!10792)) b!51054))

(declare-fun m!54613 () Bool)

(assert (=> b!51054 m!54613))

(declare-fun m!54615 () Bool)

(assert (=> b!51054 m!54615))

(assert (=> d!43516 d!43526))

(declare-fun d!43528 () Bool)

(declare-fun c!10793 () Bool)

(assert (=> d!43528 (= c!10793 (is-Empty!105 lt!8885))))

(declare-fun e!26530 () (Set (_ BitVec 32)))

(assert (=> d!43528 (= (heapContent!0 lt!8885) e!26530)))

(declare-fun b!51055 () Bool)

(assert (=> b!51055 (= e!26530 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51056 () Bool)

(assert (=> b!51056 (= e!26530 (union (nodeContent!0 (head!634 lt!8885)) (heapContent!0 (tail!658 lt!8885))))))

(assert (= (and d!43528 c!10793) b!51055))

(assert (= (and d!43528 (not c!10793)) b!51056))

(declare-fun m!54617 () Bool)

(assert (=> b!51056 m!54617))

(declare-fun m!54619 () Bool)

(assert (=> b!51056 m!54619))

(assert (=> d!43514 d!43528))

(declare-fun d!43530 () Bool)

(assert (=> d!43530 (= (heapContent!0 Empty!105) (as emptyset (Set (_ BitVec 32))))))

(assert (=> d!43514 d!43530))

(declare-fun b!51060 () Bool)

(declare-fun e!26531 () Heap!3)

(assert (=> b!51060 (= e!26531 (insertNode!0 (link!0 (Node!35 0 #b00000000000000000000000000001100 Empty!105) (head!634 Empty!105)) (tail!658 Empty!105)))))

(declare-fun d!43532 () Bool)

(declare-fun lt!8895 () Heap!3)

(assert (=> d!43532 (= (heapContent!0 lt!8895) (union (nodeContent!0 (Node!35 0 #b00000000000000000000000000001100 Empty!105)) (heapContent!0 Empty!105)))))

(declare-fun e!26532 () Heap!3)

(assert (=> d!43532 (= lt!8895 e!26532)))

(declare-fun c!10795 () Bool)

(assert (=> d!43532 (= c!10795 (is-Empty!105 Empty!105))))

(assert (=> d!43532 (= (insertNode!0 (Node!35 0 #b00000000000000000000000000001100 Empty!105) Empty!105) lt!8895)))

(declare-fun b!51058 () Bool)

(assert (=> b!51058 (= e!26532 e!26531)))

(declare-fun c!10794 () Bool)

(assert (=> b!51058 (= c!10794 (< (rank!9 (Node!35 0 #b00000000000000000000000000001100 Empty!105)) (rank!9 (head!634 Empty!105))))))

(declare-fun b!51059 () Bool)

(assert (=> b!51059 (= e!26531 (Nodes!2 (Node!35 0 #b00000000000000000000000000001100 Empty!105) Empty!105))))

(declare-fun b!51057 () Bool)

(assert (=> b!51057 (= e!26532 (Nodes!2 (Node!35 0 #b00000000000000000000000000001100 Empty!105) Empty!105))))

(assert (= (and b!51058 c!10794) b!51059))

(assert (= (and b!51058 (not c!10794)) b!51060))

(assert (= (and d!43532 c!10795) b!51057))

(assert (= (and d!43532 (not c!10795)) b!51058))

(declare-fun m!54621 () Bool)

(assert (=> b!51060 m!54621))

(assert (=> b!51060 m!54621))

(declare-fun m!54623 () Bool)

(assert (=> b!51060 m!54623))

(declare-fun m!54625 () Bool)

(assert (=> d!43532 m!54625))

(declare-fun m!54627 () Bool)

(assert (=> d!43532 m!54627))

(assert (=> d!43532 m!54577))

(assert (=> d!43514 d!43532))

(declare-fun d!43534 () Bool)

(declare-fun c!10796 () Bool)

(assert (=> d!43534 (= c!10796 (is-Empty!105 h1!23))))

(declare-fun e!26533 () (Set (_ BitVec 32)))

(assert (=> d!43534 (= (heapContent!0 h1!23) e!26533)))

(declare-fun b!51061 () Bool)

(assert (=> b!51061 (= e!26533 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51062 () Bool)

(assert (=> b!51062 (= e!26533 (union (nodeContent!0 (head!634 h1!23)) (heapContent!0 (tail!658 h1!23))))))

(assert (= (and d!43534 c!10796) b!51061))

(assert (= (and d!43534 (not c!10796)) b!51062))

(declare-fun m!54629 () Bool)

(assert (=> b!51062 m!54629))

(declare-fun m!54631 () Bool)

(assert (=> b!51062 m!54631))

(assert (=> b!51021 d!43534))

(declare-fun b!51063 () Bool)

(declare-fun e!26534 () (_ BitVec 32))

(assert (=> b!51063 (= e!26534 (value!3240 (findMin!0 (tail!658 (tail!658 h1!23)))))))

(declare-fun b!51064 () Bool)

(declare-fun e!26537 () OptInt!4)

(assert (=> b!51064 (= e!26537 None!229)))

(declare-fun b!51065 () Bool)

(assert (=> b!51065 (= e!26534 (elem!81 (head!634 (tail!658 h1!23))))))

(declare-fun b!51066 () Bool)

(declare-fun e!26536 () Bool)

(assert (=> b!51066 (= e!26536 (isEmpty!6 (tail!658 h1!23)))))

(declare-fun b!51067 () Bool)

(declare-fun lt!8896 () OptInt!4)

(assert (=> b!51067 (= e!26536 (member (value!3240 lt!8896) (heapContent!0 (tail!658 h1!23))))))

(declare-fun b!51068 () Bool)

(declare-fun e!26535 () OptInt!4)

(assert (=> b!51068 (= e!26535 (Some!228 (elem!81 (head!634 (tail!658 h1!23)))))))

(declare-fun d!43536 () Bool)

(assert (=> d!43536 e!26536))

(declare-fun c!10799 () Bool)

(assert (=> d!43536 (= c!10799 (is-None!229 lt!8896))))

(assert (=> d!43536 (= lt!8896 e!26537)))

(declare-fun c!10798 () Bool)

(assert (=> d!43536 (= c!10798 (is-Empty!105 (tail!658 h1!23)))))

(assert (=> d!43536 (= (findMin!0 (tail!658 h1!23)) lt!8896)))

(declare-fun b!51069 () Bool)

(assert (=> b!51069 (= e!26535 (Some!228 e!26534))))

(declare-fun c!10800 () Bool)

(assert (=> b!51069 (= c!10800 (bvslt (elem!81 (head!634 (tail!658 h1!23))) (value!3240 (findMin!0 (tail!658 (tail!658 h1!23))))))))

(declare-fun b!51070 () Bool)

(assert (=> b!51070 (= e!26537 e!26535)))

(declare-fun c!10797 () Bool)

(assert (=> b!51070 (= c!10797 (is-None!229 (findMin!0 (tail!658 (tail!658 h1!23)))))))

(assert (= (and b!51069 c!10800) b!51065))

(assert (= (and b!51069 (not c!10800)) b!51063))

(assert (= (and b!51070 c!10797) b!51068))

(assert (= (and b!51070 (not c!10797)) b!51069))

(assert (= (and d!43536 c!10798) b!51064))

(assert (= (and d!43536 (not c!10798)) b!51070))

(assert (= (and d!43536 c!10799) b!51066))

(assert (= (and d!43536 (not c!10799)) b!51067))

(declare-fun m!54633 () Bool)

(assert (=> b!51066 m!54633))

(declare-fun m!54635 () Bool)

(assert (=> b!51063 m!54635))

(assert (=> b!51069 m!54635))

(assert (=> b!51070 m!54635))

(assert (=> b!51067 m!54631))

(declare-fun m!54637 () Bool)

(assert (=> b!51067 m!54637))

(assert (=> b!51023 d!43536))

(declare-fun d!43538 () Bool)

(declare-fun lt!8899 () Bool)

(assert (=> d!43538 (= lt!8899 (= (heapContent!0 h1!23) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!43538 (= lt!8899 (= h1!23 Empty!105))))

(assert (=> d!43538 (= (isEmpty!6 h1!23) lt!8899)))

(declare-fun bs!23718 () Bool)

(assert (= bs!23718 d!43538))

(assert (=> bs!23718 m!54555))

(assert (=> b!51020 d!43538))

(declare-fun d!43540 () Bool)

(declare-fun c!10801 () Bool)

(assert (=> d!43540 (= c!10801 (is-Empty!105 lt!8883))))

(declare-fun e!26538 () (Set (_ BitVec 32)))

(assert (=> d!43540 (= (heapContent!0 lt!8883) e!26538)))

(declare-fun b!51071 () Bool)

(assert (=> b!51071 (= e!26538 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51072 () Bool)

(assert (=> b!51072 (= e!26538 (union (nodeContent!0 (head!634 lt!8883)) (heapContent!0 (tail!658 lt!8883))))))

(assert (= (and d!43540 c!10801) b!51071))

(assert (= (and d!43540 (not c!10801)) b!51072))

(declare-fun m!54639 () Bool)

(assert (=> b!51072 m!54639))

(declare-fun m!54641 () Bool)

(assert (=> b!51072 m!54641))

(assert (=> d!43510 d!43540))

(declare-fun d!43542 () Bool)

(declare-fun c!10802 () Bool)

(assert (=> d!43542 (= c!10802 (is-Empty!105 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))))))

(declare-fun e!26539 () (Set (_ BitVec 32)))

(assert (=> d!43542 (= (heapContent!0 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))) e!26539)))

(declare-fun b!51073 () Bool)

(assert (=> b!51073 (= e!26539 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51074 () Bool)

(assert (=> b!51074 (= e!26539 (union (nodeContent!0 (head!634 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))) (heapContent!0 (tail!658 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))))))))

(assert (= (and d!43542 c!10802) b!51073))

(assert (= (and d!43542 (not c!10802)) b!51074))

(declare-fun m!54643 () Bool)

(assert (=> b!51074 m!54643))

(declare-fun m!54645 () Bool)

(assert (=> b!51074 m!54645))

(assert (=> d!43510 d!43542))

(declare-fun b!51078 () Bool)

(declare-fun e!26540 () Heap!3)

(assert (=> b!51078 (= e!26540 (insertNode!0 (link!0 (Node!35 0 #b00000000000000000000000000101010 Empty!105) (head!634 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))) (tail!658 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))))))

(declare-fun d!43544 () Bool)

(declare-fun lt!8900 () Heap!3)

(assert (=> d!43544 (= (heapContent!0 lt!8900) (union (nodeContent!0 (Node!35 0 #b00000000000000000000000000101010 Empty!105)) (heapContent!0 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))))))

(declare-fun e!26541 () Heap!3)

(assert (=> d!43544 (= lt!8900 e!26541)))

(declare-fun c!10804 () Bool)

(assert (=> d!43544 (= c!10804 (is-Empty!105 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))))))

(assert (=> d!43544 (= (insertNode!0 (Node!35 0 #b00000000000000000000000000101010 Empty!105) (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))) lt!8900)))

(declare-fun b!51076 () Bool)

(assert (=> b!51076 (= e!26541 e!26540)))

(declare-fun c!10803 () Bool)

(assert (=> b!51076 (= c!10803 (< (rank!9 (Node!35 0 #b00000000000000000000000000101010 Empty!105)) (rank!9 (head!634 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))))))))

(declare-fun b!51077 () Bool)

(assert (=> b!51077 (= e!26540 (Nodes!2 (Node!35 0 #b00000000000000000000000000101010 Empty!105) (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))))))

(declare-fun b!51075 () Bool)

(assert (=> b!51075 (= e!26541 (Nodes!2 (Node!35 0 #b00000000000000000000000000101010 Empty!105) Empty!105))))

(assert (= (and b!51076 c!10803) b!51077))

(assert (= (and b!51076 (not c!10803)) b!51078))

(assert (= (and d!43544 c!10804) b!51075))

(assert (= (and d!43544 (not c!10804)) b!51076))

(declare-fun m!54647 () Bool)

(assert (=> b!51078 m!54647))

(assert (=> b!51078 m!54647))

(declare-fun m!54649 () Bool)

(assert (=> b!51078 m!54649))

(declare-fun m!54651 () Bool)

(assert (=> d!43544 m!54651))

(declare-fun m!54653 () Bool)

(assert (=> d!43544 m!54653))

(assert (=> d!43544 m!54543))

(assert (=> d!43544 m!54561))

(assert (=> d!43510 d!43544))

(assert (=> b!51024 d!43536))

(declare-fun b!51099 () Bool)

(declare-fun e!26556 () Heap!3)

(declare-fun lt!8908 () Bool)

(assert (=> b!51099 (= e!26556 (merge!1 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))

(declare-fun b!51100 () Bool)

(declare-fun e!26552 () Heap!3)

(assert (=> b!51100 (= e!26552 (insertNode!0 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5)))) (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))))))

(declare-fun b!51101 () Bool)

(declare-fun res!23524 () Heap!3)

(assert (=> b!51101 (= e!26556 res!23524)))

(assert (=> b!51101 true))

(assert (=> b!51101 true))

(declare-fun d!43546 () Bool)

(declare-fun lt!8909 () Heap!3)

(assert (=> d!43546 (= (heapContent!0 lt!8909) (union (heapContent!0 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (heapContent!0 (_2!160 (getMin!0 h0!5)))))))

(declare-fun e!26554 () Heap!3)

(assert (=> d!43546 (= lt!8909 e!26554)))

(declare-fun c!10818 () Bool)

(assert (=> d!43546 (= c!10818 (is-Empty!105 (_2!160 (getMin!0 h0!5))))))

(assert (=> d!43546 (= (merge!1 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))) (_2!160 (getMin!0 h0!5))) lt!8909)))

(declare-fun b!51102 () Bool)

(declare-fun lt!8907 () Heap!3)

(assert (=> b!51102 (= e!26552 (Nodes!2 (head!634 (_2!160 (getMin!0 h0!5))) lt!8907))))

(declare-fun b!51103 () Bool)

(assert (=> b!51103 (= e!26554 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))

(declare-fun b!51104 () Bool)

(declare-fun e!26555 () Heap!3)

(assert (=> b!51104 (= e!26555 (Nodes!2 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) lt!8907))))

(declare-fun b!51105 () Bool)

(declare-fun e!26553 () Heap!3)

(assert (=> b!51105 (= e!26553 (_2!160 (getMin!0 h0!5)))))

(declare-fun b!51106 () Bool)

(assert (=> b!51106 (= e!26553 e!26555)))

(declare-fun c!10819 () Bool)

(assert (=> b!51106 (= c!10819 lt!8908)))

(assert (=> b!51106 (= lt!8907 e!26556)))

(declare-fun c!10817 () Bool)

(assert (=> b!51106 (= c!10817 (or lt!8908 (< (rank!9 (head!634 (_2!160 (getMin!0 h0!5)))) (rank!9 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))))

(assert (=> b!51106 (= lt!8908 (< (rank!9 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (rank!9 (head!634 (_2!160 (getMin!0 h0!5))))))))

(declare-fun b!51107 () Bool)

(assert (=> b!51107 (= e!26554 e!26553)))

(declare-fun c!10816 () Bool)

(assert (=> b!51107 (= c!10816 (is-Empty!105 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))

(declare-fun b!51108 () Bool)

(assert (=> b!51108 (= e!26555 e!26552)))

(declare-fun c!10815 () Bool)

(assert (=> b!51108 (= c!10815 (< (rank!9 (head!634 (_2!160 (getMin!0 h0!5)))) (rank!9 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))))

(assert (= (and b!51106 c!10817) b!51099))

(assert (= (and b!51106 (not c!10817)) b!51101))

(assert (= (and b!51108 c!10815) b!51102))

(assert (= (and b!51108 (not c!10815)) b!51100))

(assert (= (and b!51106 c!10819) b!51104))

(assert (= (and b!51106 (not c!10819)) b!51108))

(assert (= (and b!51107 c!10816) b!51105))

(assert (= (and b!51107 (not c!10816)) b!51106))

(assert (= (and d!43546 c!10818) b!51103))

(assert (= (and d!43546 (not c!10818)) b!51107))

(declare-fun m!54655 () Bool)

(assert (=> b!51099 m!54655))

(declare-fun m!54657 () Bool)

(assert (=> b!51100 m!54657))

(declare-fun m!54659 () Bool)

(assert (=> b!51100 m!54659))

(assert (=> b!51100 m!54657))

(assert (=> b!51100 m!54659))

(declare-fun m!54661 () Bool)

(assert (=> b!51100 m!54661))

(declare-fun m!54663 () Bool)

(assert (=> d!43546 m!54663))

(assert (=> d!43546 m!54585))

(declare-fun m!54665 () Bool)

(assert (=> d!43546 m!54665))

(declare-fun m!54667 () Bool)

(assert (=> d!43546 m!54667))

(assert (=> b!51030 d!43546))

(declare-fun d!43548 () Bool)

(declare-fun reverse0!2 (Heap!3 Heap!3) Heap!3)

(assert (=> d!43548 (= (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))) (reverse0!2 (nodes!9 (_1!160 (getMin!0 h0!5))) Empty!105))))

(declare-fun bs!23719 () Bool)

(assert (= bs!23719 d!43548))

(declare-fun m!54669 () Bool)

(assert (=> bs!23719 m!54669))

(assert (=> b!51030 d!43548))

(declare-fun d!43550 () Bool)

(declare-fun lt!8921 () tuple2!268)

(assert (=> d!43550 (= (union (nodeContent!0 (_1!160 lt!8921)) (heapContent!0 (_2!160 lt!8921))) (heapContent!0 h0!5))))

(declare-fun e!26559 () tuple2!268)

(assert (=> d!43550 (= lt!8921 e!26559)))

(declare-fun c!10822 () Bool)

(assert (=> d!43550 (= c!10822 (and (is-Nodes!2 h0!5) (is-Empty!105 (tail!658 h0!5))))))

(assert (=> d!43550 (not (= h0!5 Empty!105))))

(assert (=> d!43550 (= (getMin!0 h0!5) lt!8921)))

(declare-fun b!51114 () Bool)

(declare-fun lt!8919 () Node!34)

(declare-fun lt!8920 () tuple2!268)

(assert (=> b!51114 (= e!26559 (ite (bvslt (elem!81 (head!634 h0!5)) (elem!81 lt!8919)) (tuple2!269 (head!634 h0!5) (tail!658 h0!5)) (tuple2!269 lt!8919 (Nodes!2 (head!634 h0!5) (_2!160 lt!8920)))))))

(declare-fun lt!8918 () tuple2!268)

(assert (=> b!51114 (= lt!8919 (_1!160 lt!8918))))

(assert (=> b!51114 (= lt!8920 (getMin!0 (tail!658 h0!5)))))

(assert (=> b!51114 (= lt!8918 (getMin!0 (tail!658 h0!5)))))

(declare-fun b!51113 () Bool)

(assert (=> b!51113 (= e!26559 (tuple2!269 (head!634 h0!5) Empty!105))))

(assert (= (and d!43550 c!10822) b!51113))

(assert (= (and d!43550 (not c!10822)) b!51114))

(declare-fun m!54671 () Bool)

(assert (=> d!43550 m!54671))

(declare-fun m!54673 () Bool)

(assert (=> d!43550 m!54673))

(assert (=> d!43550 m!54591))

(declare-fun m!54675 () Bool)

(assert (=> b!51114 m!54675))

(assert (=> b!51030 d!43550))

(assert (=> b!51017 d!43536))

(push 1)

(assert (not b!51054))

(assert (not b!51056))

(assert (not b!51072))

(assert (not b!51099))

(assert (not d!43546))

(assert (not b!51063))

(assert (not b!51062))

(assert (not b!51067))

(assert (not d!43544))

(assert (not b!51052))

(assert (not b!51078))

(assert (not b!51050))

(assert (not b!51036))

(assert (not b!51070))

(assert (not b!51066))

(assert (not b!51074))

(assert (not d!43538))

(assert (not b!51069))

(assert (not b!51114))

(assert (not b!51100))

(assert (not b!51060))

(assert (not d!43548))

(assert (not d!43550))

(assert (not d!43522))

(assert (not d!43532))

(assert (not b!51038))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!51115 () Bool)

(declare-fun e!26560 () (_ BitVec 32))

(assert (=> b!51115 (= e!26560 (value!3240 (findMin!0 (tail!658 (tail!658 (tail!658 h1!23))))))))

(declare-fun b!51116 () Bool)

(declare-fun e!26563 () OptInt!4)

(assert (=> b!51116 (= e!26563 None!229)))

(declare-fun b!51117 () Bool)

(assert (=> b!51117 (= e!26560 (elem!81 (head!634 (tail!658 (tail!658 h1!23)))))))

(declare-fun b!51118 () Bool)

(declare-fun e!26562 () Bool)

(assert (=> b!51118 (= e!26562 (isEmpty!6 (tail!658 (tail!658 h1!23))))))

(declare-fun b!51119 () Bool)

(declare-fun lt!8922 () OptInt!4)

(assert (=> b!51119 (= e!26562 (member (value!3240 lt!8922) (heapContent!0 (tail!658 (tail!658 h1!23)))))))

(declare-fun b!51120 () Bool)

(declare-fun e!26561 () OptInt!4)

(assert (=> b!51120 (= e!26561 (Some!228 (elem!81 (head!634 (tail!658 (tail!658 h1!23))))))))

(declare-fun d!43552 () Bool)

(assert (=> d!43552 e!26562))

(declare-fun c!10825 () Bool)

(assert (=> d!43552 (= c!10825 (is-None!229 lt!8922))))

(assert (=> d!43552 (= lt!8922 e!26563)))

(declare-fun c!10824 () Bool)

(assert (=> d!43552 (= c!10824 (is-Empty!105 (tail!658 (tail!658 h1!23))))))

(assert (=> d!43552 (= (findMin!0 (tail!658 (tail!658 h1!23))) lt!8922)))

(declare-fun b!51121 () Bool)

(assert (=> b!51121 (= e!26561 (Some!228 e!26560))))

(declare-fun c!10826 () Bool)

(assert (=> b!51121 (= c!10826 (bvslt (elem!81 (head!634 (tail!658 (tail!658 h1!23)))) (value!3240 (findMin!0 (tail!658 (tail!658 (tail!658 h1!23)))))))))

(declare-fun b!51122 () Bool)

(assert (=> b!51122 (= e!26563 e!26561)))

(declare-fun c!10823 () Bool)

(assert (=> b!51122 (= c!10823 (is-None!229 (findMin!0 (tail!658 (tail!658 (tail!658 h1!23))))))))

(assert (= (and b!51121 c!10826) b!51117))

(assert (= (and b!51121 (not c!10826)) b!51115))

(assert (= (and b!51122 c!10823) b!51120))

(assert (= (and b!51122 (not c!10823)) b!51121))

(assert (= (and d!43552 c!10824) b!51116))

(assert (= (and d!43552 (not c!10824)) b!51122))

(assert (= (and d!43552 c!10825) b!51118))

(assert (= (and d!43552 (not c!10825)) b!51119))

(declare-fun m!54677 () Bool)

(assert (=> b!51118 m!54677))

(declare-fun m!54679 () Bool)

(assert (=> b!51115 m!54679))

(assert (=> b!51121 m!54679))

(assert (=> b!51122 m!54679))

(declare-fun m!54681 () Bool)

(assert (=> b!51119 m!54681))

(declare-fun m!54683 () Bool)

(assert (=> b!51119 m!54683))

(assert (=> b!51069 d!43552))

(assert (=> b!51070 d!43552))

(declare-fun d!43554 () Bool)

(declare-fun c!10827 () Bool)

(assert (=> d!43554 (= c!10827 (is-Empty!105 lt!8894))))

(declare-fun e!26564 () (Set (_ BitVec 32)))

(assert (=> d!43554 (= (heapContent!0 lt!8894) e!26564)))

(declare-fun b!51123 () Bool)

(assert (=> b!51123 (= e!26564 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51124 () Bool)

(assert (=> b!51124 (= e!26564 (union (nodeContent!0 (head!634 lt!8894)) (heapContent!0 (tail!658 lt!8894))))))

(assert (= (and d!43554 c!10827) b!51123))

(assert (= (and d!43554 (not c!10827)) b!51124))

(declare-fun m!54685 () Bool)

(assert (=> b!51124 m!54685))

(declare-fun m!54687 () Bool)

(assert (=> b!51124 m!54687))

(assert (=> d!43522 d!43554))

(declare-fun d!43556 () Bool)

(assert (=> d!43556 (= (nodeContent!0 (Node!35 0 #b00000000000000000000000000000000 Empty!105)) (singleton #b00000000000000000000000000000000))))

(assert (=> d!43522 d!43556))

(assert (=> d!43522 d!43520))

(declare-fun d!43558 () Bool)

(assert (=> d!43558 (= (nodeContent!0 (head!634 lt!8885)) (union (insert (elem!81 (head!634 lt!8885)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 lt!8885)))))))

(declare-fun bs!23720 () Bool)

(assert (= bs!23720 d!43558))

(declare-fun m!54689 () Bool)

(assert (=> bs!23720 m!54689))

(declare-fun m!54691 () Bool)

(assert (=> bs!23720 m!54691))

(assert (=> b!51056 d!43558))

(declare-fun d!43560 () Bool)

(declare-fun c!10828 () Bool)

(assert (=> d!43560 (= c!10828 (is-Empty!105 (tail!658 lt!8885)))))

(declare-fun e!26565 () (Set (_ BitVec 32)))

(assert (=> d!43560 (= (heapContent!0 (tail!658 lt!8885)) e!26565)))

(declare-fun b!51125 () Bool)

(assert (=> b!51125 (= e!26565 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51126 () Bool)

(assert (=> b!51126 (= e!26565 (union (nodeContent!0 (head!634 (tail!658 lt!8885))) (heapContent!0 (tail!658 (tail!658 lt!8885)))))))

(assert (= (and d!43560 c!10828) b!51125))

(assert (= (and d!43560 (not c!10828)) b!51126))

(declare-fun m!54693 () Bool)

(assert (=> b!51126 m!54693))

(declare-fun m!54695 () Bool)

(assert (=> b!51126 m!54695))

(assert (=> b!51056 d!43560))

(declare-fun d!43562 () Bool)

(assert (=> d!43562 (= (nodeContent!0 (head!634 (insert!4 #b00000000000000000000000000001100 Empty!105))) (singleton #b00000000000000000000000000001100))))

(assert (=> b!51038 d!43562))

(declare-fun d!43564 () Bool)

(assert (=> d!43564 (= (heapContent!0 (tail!658 (insert!4 #b00000000000000000000000000001100 Empty!105))) (as emptyset (Set (_ BitVec 32))))))

(assert (=> b!51038 d!43564))

(declare-fun d!43566 () Bool)

(declare-fun c!10829 () Bool)

(assert (=> d!43566 (= c!10829 (is-Empty!105 lt!8909))))

(declare-fun e!26566 () (Set (_ BitVec 32)))

(assert (=> d!43566 (= (heapContent!0 lt!8909) e!26566)))

(declare-fun b!51127 () Bool)

(assert (=> b!51127 (= e!26566 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51128 () Bool)

(assert (=> b!51128 (= e!26566 (union (nodeContent!0 (head!634 lt!8909)) (heapContent!0 (tail!658 lt!8909))))))

(assert (= (and d!43566 c!10829) b!51127))

(assert (= (and d!43566 (not c!10829)) b!51128))

(declare-fun m!54697 () Bool)

(assert (=> b!51128 m!54697))

(declare-fun m!54699 () Bool)

(assert (=> b!51128 m!54699))

(assert (=> d!43546 d!43566))

(declare-fun d!43568 () Bool)

(declare-fun c!10830 () Bool)

(assert (=> d!43568 (= c!10830 (is-Empty!105 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))

(declare-fun e!26567 () (Set (_ BitVec 32)))

(assert (=> d!43568 (= (heapContent!0 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) e!26567)))

(declare-fun b!51129 () Bool)

(assert (=> b!51129 (= e!26567 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51130 () Bool)

(assert (=> b!51130 (= e!26567 (union (nodeContent!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (heapContent!0 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))))

(assert (= (and d!43568 c!10830) b!51129))

(assert (= (and d!43568 (not c!10830)) b!51130))

(declare-fun m!54701 () Bool)

(assert (=> b!51130 m!54701))

(declare-fun m!54703 () Bool)

(assert (=> b!51130 m!54703))

(assert (=> d!43546 d!43568))

(declare-fun d!43570 () Bool)

(declare-fun c!10831 () Bool)

(assert (=> d!43570 (= c!10831 (is-Empty!105 (_2!160 (getMin!0 h0!5))))))

(declare-fun e!26568 () (Set (_ BitVec 32)))

(assert (=> d!43570 (= (heapContent!0 (_2!160 (getMin!0 h0!5))) e!26568)))

(declare-fun b!51131 () Bool)

(assert (=> b!51131 (= e!26568 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51132 () Bool)

(assert (=> b!51132 (= e!26568 (union (nodeContent!0 (head!634 (_2!160 (getMin!0 h0!5)))) (heapContent!0 (tail!658 (_2!160 (getMin!0 h0!5))))))))

(assert (= (and d!43570 c!10831) b!51131))

(assert (= (and d!43570 (not c!10831)) b!51132))

(declare-fun m!54705 () Bool)

(assert (=> b!51132 m!54705))

(declare-fun m!54707 () Bool)

(assert (=> b!51132 m!54707))

(assert (=> d!43546 d!43570))

(declare-fun d!43572 () Bool)

(declare-fun c!10832 () Bool)

(assert (=> d!43572 (= c!10832 (is-Empty!105 lt!8895))))

(declare-fun e!26569 () (Set (_ BitVec 32)))

(assert (=> d!43572 (= (heapContent!0 lt!8895) e!26569)))

(declare-fun b!51133 () Bool)

(assert (=> b!51133 (= e!26569 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51134 () Bool)

(assert (=> b!51134 (= e!26569 (union (nodeContent!0 (head!634 lt!8895)) (heapContent!0 (tail!658 lt!8895))))))

(assert (= (and d!43572 c!10832) b!51133))

(assert (= (and d!43572 (not c!10832)) b!51134))

(declare-fun m!54709 () Bool)

(assert (=> b!51134 m!54709))

(declare-fun m!54711 () Bool)

(assert (=> b!51134 m!54711))

(assert (=> d!43532 d!43572))

(declare-fun d!43574 () Bool)

(assert (=> d!43574 (= (nodeContent!0 (Node!35 0 #b00000000000000000000000000001100 Empty!105)) (singleton #b00000000000000000000000000001100))))

(assert (=> d!43532 d!43574))

(assert (=> d!43532 d!43530))

(declare-fun d!43576 () Bool)

(declare-fun lt!8926 () tuple2!268)

(assert (=> d!43576 (= (union (nodeContent!0 (_1!160 lt!8926)) (heapContent!0 (_2!160 lt!8926))) (heapContent!0 (tail!658 h0!5)))))

(declare-fun e!26570 () tuple2!268)

(assert (=> d!43576 (= lt!8926 e!26570)))

(declare-fun c!10833 () Bool)

(assert (=> d!43576 (= c!10833 (and (is-Nodes!2 (tail!658 h0!5)) (is-Empty!105 (tail!658 (tail!658 h0!5)))))))

(assert (=> d!43576 (not (= (tail!658 h0!5) Empty!105))))

(assert (=> d!43576 (= (getMin!0 (tail!658 h0!5)) lt!8926)))

(declare-fun lt!8924 () Node!34)

(declare-fun lt!8925 () tuple2!268)

(declare-fun b!51136 () Bool)

(assert (=> b!51136 (= e!26570 (ite (bvslt (elem!81 (head!634 (tail!658 h0!5))) (elem!81 lt!8924)) (tuple2!269 (head!634 (tail!658 h0!5)) (tail!658 (tail!658 h0!5))) (tuple2!269 lt!8924 (Nodes!2 (head!634 (tail!658 h0!5)) (_2!160 lt!8925)))))))

(declare-fun lt!8923 () tuple2!268)

(assert (=> b!51136 (= lt!8924 (_1!160 lt!8923))))

(assert (=> b!51136 (= lt!8925 (getMin!0 (tail!658 (tail!658 h0!5))))))

(assert (=> b!51136 (= lt!8923 (getMin!0 (tail!658 (tail!658 h0!5))))))

(declare-fun b!51135 () Bool)

(assert (=> b!51135 (= e!26570 (tuple2!269 (head!634 (tail!658 h0!5)) Empty!105))))

(assert (= (and d!43576 c!10833) b!51135))

(assert (= (and d!43576 (not c!10833)) b!51136))

(declare-fun m!54713 () Bool)

(assert (=> d!43576 m!54713))

(declare-fun m!54715 () Bool)

(assert (=> d!43576 m!54715))

(assert (=> d!43576 m!54615))

(declare-fun m!54717 () Bool)

(assert (=> b!51136 m!54717))

(assert (=> b!51114 d!43576))

(declare-fun d!43578 () Bool)

(assert (=> d!43578 (= (nodeContent!0 (head!634 h1!23)) (union (insert (elem!81 (head!634 h1!23)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 h1!23)))))))

(declare-fun bs!23721 () Bool)

(assert (= bs!23721 d!43578))

(declare-fun m!54719 () Bool)

(assert (=> bs!23721 m!54719))

(declare-fun m!54721 () Bool)

(assert (=> bs!23721 m!54721))

(assert (=> b!51062 d!43578))

(declare-fun d!43580 () Bool)

(declare-fun c!10834 () Bool)

(assert (=> d!43580 (= c!10834 (is-Empty!105 (tail!658 h1!23)))))

(declare-fun e!26571 () (Set (_ BitVec 32)))

(assert (=> d!43580 (= (heapContent!0 (tail!658 h1!23)) e!26571)))

(declare-fun b!51137 () Bool)

(assert (=> b!51137 (= e!26571 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51138 () Bool)

(assert (=> b!51138 (= e!26571 (union (nodeContent!0 (head!634 (tail!658 h1!23))) (heapContent!0 (tail!658 (tail!658 h1!23)))))))

(assert (= (and d!43580 c!10834) b!51137))

(assert (= (and d!43580 (not c!10834)) b!51138))

(declare-fun m!54723 () Bool)

(assert (=> b!51138 m!54723))

(assert (=> b!51138 m!54681))

(assert (=> b!51062 d!43580))

(declare-fun d!43582 () Bool)

(assert (not d!43582))

(assert (=> b!51060 d!43582))

(declare-fun d!43584 () Bool)

(assert (not d!43584))

(assert (=> b!51060 d!43584))

(declare-fun d!43586 () Bool)

(assert (=> d!43586 (= (nodeContent!0 (head!634 lt!8884)) (union (insert (elem!81 (head!634 lt!8884)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 lt!8884)))))))

(declare-fun bs!23722 () Bool)

(assert (= bs!23722 d!43586))

(declare-fun m!54725 () Bool)

(assert (=> bs!23722 m!54725))

(declare-fun m!54727 () Bool)

(assert (=> bs!23722 m!54727))

(assert (=> b!51036 d!43586))

(declare-fun d!43588 () Bool)

(declare-fun c!10835 () Bool)

(assert (=> d!43588 (= c!10835 (is-Empty!105 (tail!658 lt!8884)))))

(declare-fun e!26572 () (Set (_ BitVec 32)))

(assert (=> d!43588 (= (heapContent!0 (tail!658 lt!8884)) e!26572)))

(declare-fun b!51139 () Bool)

(assert (=> b!51139 (= e!26572 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51140 () Bool)

(assert (=> b!51140 (= e!26572 (union (nodeContent!0 (head!634 (tail!658 lt!8884))) (heapContent!0 (tail!658 (tail!658 lt!8884)))))))

(assert (= (and d!43588 c!10835) b!51139))

(assert (= (and d!43588 (not c!10835)) b!51140))

(declare-fun m!54729 () Bool)

(assert (=> b!51140 m!54729))

(declare-fun m!54731 () Bool)

(assert (=> b!51140 m!54731))

(assert (=> b!51036 d!43588))

(declare-fun d!43590 () Bool)

(assert (=> d!43590 (= (nodeContent!0 (head!634 lt!8883)) (union (insert (elem!81 (head!634 lt!8883)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 lt!8883)))))))

(declare-fun bs!23723 () Bool)

(assert (= bs!23723 d!43590))

(declare-fun m!54733 () Bool)

(assert (=> bs!23723 m!54733))

(declare-fun m!54735 () Bool)

(assert (=> bs!23723 m!54735))

(assert (=> b!51072 d!43590))

(declare-fun d!43592 () Bool)

(declare-fun c!10836 () Bool)

(assert (=> d!43592 (= c!10836 (is-Empty!105 (tail!658 lt!8883)))))

(declare-fun e!26573 () (Set (_ BitVec 32)))

(assert (=> d!43592 (= (heapContent!0 (tail!658 lt!8883)) e!26573)))

(declare-fun b!51141 () Bool)

(assert (=> b!51141 (= e!26573 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51142 () Bool)

(assert (=> b!51142 (= e!26573 (union (nodeContent!0 (head!634 (tail!658 lt!8883))) (heapContent!0 (tail!658 (tail!658 lt!8883)))))))

(assert (= (and d!43592 c!10836) b!51141))

(assert (= (and d!43592 (not c!10836)) b!51142))

(declare-fun m!54737 () Bool)

(assert (=> b!51142 m!54737))

(declare-fun m!54739 () Bool)

(assert (=> b!51142 m!54739))

(assert (=> b!51072 d!43592))

(declare-fun d!43594 () Bool)

(declare-fun lt!8927 () Bool)

(assert (=> d!43594 (= lt!8927 (= (heapContent!0 (tail!658 h1!23)) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!43594 (= lt!8927 (= (tail!658 h1!23) Empty!105))))

(assert (=> d!43594 (= (isEmpty!6 (tail!658 h1!23)) lt!8927)))

(declare-fun bs!23724 () Bool)

(assert (= bs!23724 d!43594))

(assert (=> bs!23724 m!54631))

(assert (=> b!51066 d!43594))

(declare-fun d!43596 () Bool)

(assert (=> d!43596 (= (nodeContent!0 (head!634 h0!5)) (union (insert (elem!81 (head!634 h0!5)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 h0!5)))))))

(declare-fun bs!23725 () Bool)

(assert (= bs!23725 d!43596))

(declare-fun m!54741 () Bool)

(assert (=> bs!23725 m!54741))

(declare-fun m!54743 () Bool)

(assert (=> bs!23725 m!54743))

(assert (=> b!51054 d!43596))

(declare-fun d!43598 () Bool)

(declare-fun c!10837 () Bool)

(assert (=> d!43598 (= c!10837 (is-Empty!105 (tail!658 h0!5)))))

(declare-fun e!26574 () (Set (_ BitVec 32)))

(assert (=> d!43598 (= (heapContent!0 (tail!658 h0!5)) e!26574)))

(declare-fun b!51143 () Bool)

(assert (=> b!51143 (= e!26574 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51144 () Bool)

(assert (=> b!51144 (= e!26574 (union (nodeContent!0 (head!634 (tail!658 h0!5))) (heapContent!0 (tail!658 (tail!658 h0!5)))))))

(assert (= (and d!43598 c!10837) b!51143))

(assert (= (and d!43598 (not c!10837)) b!51144))

(declare-fun m!54745 () Bool)

(assert (=> b!51144 m!54745))

(declare-fun m!54747 () Bool)

(assert (=> b!51144 m!54747))

(assert (=> b!51054 d!43598))

(assert (=> d!43538 d!43534))

(declare-fun d!43600 () Bool)

(assert (=> d!43600 (= (nodeContent!0 (head!634 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))) (insert #b00000000000000000000000000001100 (singleton #b00000000000000000000000000000000)))))

(assert (=> b!51074 d!43600))

(declare-fun d!43602 () Bool)

(assert (=> d!43602 (= (heapContent!0 (tail!658 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))) (as emptyset (Set (_ BitVec 32))))))

(assert (=> b!51074 d!43602))

(declare-fun b!51148 () Bool)

(declare-fun e!26575 () Heap!3)

(assert (=> b!51148 (= e!26575 (insertNode!0 (link!0 (link!0 (Node!35 0 #b00000000000000000000000000101010 Empty!105) (head!634 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))) (head!634 (tail!658 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))))) (tail!658 (tail!658 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))))))))

(declare-fun d!43604 () Bool)

(declare-fun lt!8928 () Heap!3)

(assert (=> d!43604 (= (heapContent!0 lt!8928) (union (nodeContent!0 (link!0 (Node!35 0 #b00000000000000000000000000101010 Empty!105) (head!634 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))))) (heapContent!0 (tail!658 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))))))))

(declare-fun e!26576 () Heap!3)

(assert (=> d!43604 (= lt!8928 e!26576)))

(declare-fun c!10839 () Bool)

(assert (=> d!43604 (= c!10839 (is-Empty!105 (tail!658 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))))))

(assert (=> d!43604 (= (insertNode!0 (link!0 (Node!35 0 #b00000000000000000000000000101010 Empty!105) (head!634 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))) (tail!658 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))) lt!8928)))

(declare-fun b!51146 () Bool)

(assert (=> b!51146 (= e!26576 e!26575)))

(declare-fun c!10838 () Bool)

(assert (=> b!51146 (= c!10838 (< (rank!9 (link!0 (Node!35 0 #b00000000000000000000000000101010 Empty!105) (head!634 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))))) (rank!9 (head!634 (tail!658 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))))))))

(declare-fun b!51147 () Bool)

(assert (=> b!51147 (= e!26575 (Nodes!2 (link!0 (Node!35 0 #b00000000000000000000000000101010 Empty!105) (head!634 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))) (tail!658 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))))))

(declare-fun b!51145 () Bool)

(assert (=> b!51145 (= e!26576 (Nodes!2 (link!0 (Node!35 0 #b00000000000000000000000000101010 Empty!105) (head!634 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))) Empty!105))))

(assert (= (and b!51146 c!10838) b!51147))

(assert (= (and b!51146 (not c!10838)) b!51148))

(assert (= (and d!43604 c!10839) b!51145))

(assert (= (and d!43604 (not c!10839)) b!51146))

(assert (=> b!51148 m!54647))

(declare-fun m!54749 () Bool)

(assert (=> b!51148 m!54749))

(assert (=> b!51148 m!54749))

(declare-fun m!54751 () Bool)

(assert (=> b!51148 m!54751))

(declare-fun m!54753 () Bool)

(assert (=> d!43604 m!54753))

(assert (=> d!43604 m!54647))

(declare-fun m!54755 () Bool)

(assert (=> d!43604 m!54755))

(assert (=> d!43604 m!54645))

(assert (=> b!51078 d!43604))

(declare-fun d!43606 () Bool)

(assert (=> d!43606 (= (link!0 (Node!35 0 #b00000000000000000000000000101010 Empty!105) (head!634 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105)))) (Node!35 1 #b00000000000000000000000000000000 (Nodes!2 (Node!35 0 #b00000000000000000000000000101010 Empty!105) (Nodes!2 (Node!35 0 #b00000000000000000000000000001100 Empty!105) Empty!105))))))

(assert (=> b!51078 d!43606))

(declare-fun d!43608 () Bool)

(declare-fun c!10840 () Bool)

(assert (=> d!43608 (= c!10840 (is-Empty!105 lt!8900))))

(declare-fun e!26577 () (Set (_ BitVec 32)))

(assert (=> d!43608 (= (heapContent!0 lt!8900) e!26577)))

(declare-fun b!51149 () Bool)

(assert (=> b!51149 (= e!26577 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51150 () Bool)

(assert (=> b!51150 (= e!26577 (union (nodeContent!0 (head!634 lt!8900)) (heapContent!0 (tail!658 lt!8900))))))

(assert (= (and d!43608 c!10840) b!51149))

(assert (= (and d!43608 (not c!10840)) b!51150))

(declare-fun m!54757 () Bool)

(assert (=> b!51150 m!54757))

(declare-fun m!54759 () Bool)

(assert (=> b!51150 m!54759))

(assert (=> d!43544 d!43608))

(declare-fun d!43610 () Bool)

(assert (=> d!43610 (= (nodeContent!0 (Node!35 0 #b00000000000000000000000000101010 Empty!105)) (singleton #b00000000000000000000000000101010))))

(assert (=> d!43544 d!43610))

(assert (=> d!43544 d!43542))

(declare-fun d!43612 () Bool)

(assert (=> d!43612 (= (nodeContent!0 (head!634 lt!8890)) (union (insert (elem!81 (head!634 lt!8890)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 lt!8890)))))))

(declare-fun bs!23726 () Bool)

(assert (= bs!23726 d!43612))

(declare-fun m!54761 () Bool)

(assert (=> bs!23726 m!54761))

(declare-fun m!54763 () Bool)

(assert (=> bs!23726 m!54763))

(assert (=> b!51052 d!43612))

(declare-fun d!43614 () Bool)

(declare-fun c!10841 () Bool)

(assert (=> d!43614 (= c!10841 (is-Empty!105 (tail!658 lt!8890)))))

(declare-fun e!26578 () (Set (_ BitVec 32)))

(assert (=> d!43614 (= (heapContent!0 (tail!658 lt!8890)) e!26578)))

(declare-fun b!51151 () Bool)

(assert (=> b!51151 (= e!26578 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51152 () Bool)

(assert (=> b!51152 (= e!26578 (union (nodeContent!0 (head!634 (tail!658 lt!8890))) (heapContent!0 (tail!658 (tail!658 lt!8890)))))))

(assert (= (and d!43614 c!10841) b!51151))

(assert (= (and d!43614 (not c!10841)) b!51152))

(declare-fun m!54765 () Bool)

(assert (=> b!51152 m!54765))

(declare-fun m!54767 () Bool)

(assert (=> b!51152 m!54767))

(assert (=> b!51052 d!43614))

(declare-fun d!43616 () Bool)

(assert (=> d!43616 (= (nodeContent!0 (_1!160 lt!8921)) (union (insert (elem!81 (_1!160 lt!8921)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (_1!160 lt!8921)))))))

(declare-fun bs!23727 () Bool)

(assert (= bs!23727 d!43616))

(declare-fun m!54769 () Bool)

(assert (=> bs!23727 m!54769))

(declare-fun m!54771 () Bool)

(assert (=> bs!23727 m!54771))

(assert (=> d!43550 d!43616))

(declare-fun d!43618 () Bool)

(declare-fun c!10842 () Bool)

(assert (=> d!43618 (= c!10842 (is-Empty!105 (_2!160 lt!8921)))))

(declare-fun e!26579 () (Set (_ BitVec 32)))

(assert (=> d!43618 (= (heapContent!0 (_2!160 lt!8921)) e!26579)))

(declare-fun b!51153 () Bool)

(assert (=> b!51153 (= e!26579 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51154 () Bool)

(assert (=> b!51154 (= e!26579 (union (nodeContent!0 (head!634 (_2!160 lt!8921))) (heapContent!0 (tail!658 (_2!160 lt!8921)))))))

(assert (= (and d!43618 c!10842) b!51153))

(assert (= (and d!43618 (not c!10842)) b!51154))

(declare-fun m!54773 () Bool)

(assert (=> b!51154 m!54773))

(declare-fun m!54775 () Bool)

(assert (=> b!51154 m!54775))

(assert (=> d!43550 d!43618))

(assert (=> d!43550 d!43526))

(declare-fun b!51158 () Bool)

(declare-fun e!26580 () Heap!3)

(assert (=> b!51158 (= e!26580 (insertNode!0 (link!0 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5)))) (head!634 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))))) (tail!658 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(declare-fun d!43620 () Bool)

(declare-fun lt!8929 () Heap!3)

(assert (=> d!43620 (= (heapContent!0 lt!8929) (union (nodeContent!0 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5))))) (heapContent!0 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(declare-fun e!26581 () Heap!3)

(assert (=> d!43620 (= lt!8929 e!26581)))

(declare-fun c!10844 () Bool)

(assert (=> d!43620 (= c!10844 (is-Empty!105 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))))))

(assert (=> d!43620 (= (insertNode!0 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5)))) (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))) lt!8929)))

(declare-fun b!51156 () Bool)

(assert (=> b!51156 (= e!26581 e!26580)))

(declare-fun c!10843 () Bool)

(assert (=> b!51156 (= c!10843 (< (rank!9 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5))))) (rank!9 (head!634 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun b!51157 () Bool)

(assert (=> b!51157 (= e!26580 (Nodes!2 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5)))) (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))))))

(declare-fun b!51155 () Bool)

(assert (=> b!51155 (= e!26581 (Nodes!2 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5)))) Empty!105))))

(assert (= (and b!51156 c!10843) b!51157))

(assert (= (and b!51156 (not c!10843)) b!51158))

(assert (= (and d!43620 c!10844) b!51155))

(assert (= (and d!43620 (not c!10844)) b!51156))

(assert (=> b!51158 m!54657))

(declare-fun m!54777 () Bool)

(assert (=> b!51158 m!54777))

(assert (=> b!51158 m!54777))

(declare-fun m!54779 () Bool)

(assert (=> b!51158 m!54779))

(declare-fun m!54781 () Bool)

(assert (=> d!43620 m!54781))

(assert (=> d!43620 m!54657))

(declare-fun m!54783 () Bool)

(assert (=> d!43620 m!54783))

(assert (=> d!43620 m!54659))

(declare-fun m!54785 () Bool)

(assert (=> d!43620 m!54785))

(assert (=> b!51100 d!43620))

(declare-fun d!43622 () Bool)

(assert (=> d!43622 (= (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5)))) (ite (bvsle (elem!81 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (elem!81 (head!634 (_2!160 (getMin!0 h0!5))))) (Node!35 (+ (rank!9 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) 1) (elem!81 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (Nodes!2 (head!634 (_2!160 (getMin!0 h0!5))) (nodes!9 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))) (Node!35 (+ (rank!9 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) 1) (elem!81 (head!634 (_2!160 (getMin!0 h0!5)))) (Nodes!2 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (nodes!9 (head!634 (_2!160 (getMin!0 h0!5))))))))))

(assert (=> b!51100 d!43622))

(declare-fun b!51159 () Bool)

(declare-fun e!26586 () Heap!3)

(declare-fun lt!8931 () Bool)

(assert (=> b!51159 (= e!26586 (merge!1 (ite lt!8931 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8931 (tail!658 (_2!160 (getMin!0 h0!5))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(declare-fun b!51160 () Bool)

(declare-fun e!26582 () Heap!3)

(assert (=> b!51160 (= e!26582 (insertNode!0 (link!0 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (tail!658 (_2!160 (getMin!0 h0!5))))) (merge!1 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(declare-fun b!51161 () Bool)

(declare-fun res!23525 () Heap!3)

(assert (=> b!51161 (= e!26586 res!23525)))

(assert (=> b!51161 true))

(assert (=> b!51161 true))

(declare-fun d!43624 () Bool)

(declare-fun lt!8932 () Heap!3)

(assert (=> d!43624 (= (heapContent!0 lt!8932) (union (heapContent!0 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (heapContent!0 (tail!658 (_2!160 (getMin!0 h0!5))))))))

(declare-fun e!26584 () Heap!3)

(assert (=> d!43624 (= lt!8932 e!26584)))

(declare-fun c!10848 () Bool)

(assert (=> d!43624 (= c!10848 (is-Empty!105 (tail!658 (_2!160 (getMin!0 h0!5)))))))

(assert (=> d!43624 (= (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))) lt!8932)))

(declare-fun b!51162 () Bool)

(declare-fun lt!8930 () Heap!3)

(assert (=> b!51162 (= e!26582 (Nodes!2 (head!634 (tail!658 (_2!160 (getMin!0 h0!5)))) lt!8930))))

(declare-fun b!51163 () Bool)

(assert (=> b!51163 (= e!26584 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))

(declare-fun b!51164 () Bool)

(declare-fun e!26585 () Heap!3)

(assert (=> b!51164 (= e!26585 (Nodes!2 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) lt!8930))))

(declare-fun b!51165 () Bool)

(declare-fun e!26583 () Heap!3)

(assert (=> b!51165 (= e!26583 (tail!658 (_2!160 (getMin!0 h0!5))))))

(declare-fun b!51166 () Bool)

(assert (=> b!51166 (= e!26583 e!26585)))

(declare-fun c!10849 () Bool)

(assert (=> b!51166 (= c!10849 lt!8931)))

(assert (=> b!51166 (= lt!8930 e!26586)))

(declare-fun c!10847 () Bool)

(assert (=> b!51166 (= c!10847 (or lt!8931 (< (rank!9 (head!634 (tail!658 (_2!160 (getMin!0 h0!5))))) (rank!9 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))))))

(assert (=> b!51166 (= lt!8931 (< (rank!9 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (rank!9 (head!634 (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(declare-fun b!51167 () Bool)

(assert (=> b!51167 (= e!26584 e!26583)))

(declare-fun c!10846 () Bool)

(assert (=> b!51167 (= c!10846 (is-Empty!105 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))

(declare-fun b!51168 () Bool)

(assert (=> b!51168 (= e!26585 e!26582)))

(declare-fun c!10845 () Bool)

(assert (=> b!51168 (= c!10845 (< (rank!9 (head!634 (tail!658 (_2!160 (getMin!0 h0!5))))) (rank!9 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))))

(assert (= (and b!51166 c!10847) b!51159))

(assert (= (and b!51166 (not c!10847)) b!51161))

(assert (= (and b!51168 c!10845) b!51162))

(assert (= (and b!51168 (not c!10845)) b!51160))

(assert (= (and b!51166 c!10849) b!51164))

(assert (= (and b!51166 (not c!10849)) b!51168))

(assert (= (and b!51167 c!10846) b!51165))

(assert (= (and b!51167 (not c!10846)) b!51166))

(assert (= (and d!43624 c!10848) b!51163))

(assert (= (and d!43624 (not c!10848)) b!51167))

(declare-fun m!54787 () Bool)

(assert (=> b!51159 m!54787))

(declare-fun m!54789 () Bool)

(assert (=> b!51160 m!54789))

(declare-fun m!54791 () Bool)

(assert (=> b!51160 m!54791))

(assert (=> b!51160 m!54789))

(assert (=> b!51160 m!54791))

(declare-fun m!54793 () Bool)

(assert (=> b!51160 m!54793))

(declare-fun m!54795 () Bool)

(assert (=> d!43624 m!54795))

(assert (=> d!43624 m!54703))

(assert (=> d!43624 m!54707))

(assert (=> b!51100 d!43624))

(declare-fun e!26591 () Heap!3)

(declare-fun b!51169 () Bool)

(declare-fun lt!8934 () Bool)

(assert (=> b!51169 (= e!26591 (merge!1 (ite lt!8934 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8934 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun b!51170 () Bool)

(declare-fun e!26587 () Heap!3)

(assert (=> b!51170 (= e!26587 (insertNode!0 (link!0 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))) (merge!1 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun b!51171 () Bool)

(declare-fun res!23526 () Heap!3)

(assert (=> b!51171 (= e!26591 res!23526)))

(assert (=> b!51171 true))

(assert (=> b!51171 true))

(declare-fun d!43626 () Bool)

(declare-fun lt!8935 () Heap!3)

(assert (=> d!43626 (= (heapContent!0 lt!8935) (union (heapContent!0 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (heapContent!0 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(declare-fun e!26589 () Heap!3)

(assert (=> d!43626 (= lt!8935 e!26589)))

(declare-fun c!10853 () Bool)

(assert (=> d!43626 (= c!10853 (is-Empty!105 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))

(assert (=> d!43626 (= (merge!1 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))) lt!8935)))

(declare-fun lt!8933 () Heap!3)

(declare-fun b!51172 () Bool)

(assert (=> b!51172 (= e!26587 (Nodes!2 (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))) lt!8933))))

(declare-fun b!51173 () Bool)

(assert (=> b!51173 (= e!26589 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))

(declare-fun b!51174 () Bool)

(declare-fun e!26590 () Heap!3)

(assert (=> b!51174 (= e!26590 (Nodes!2 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) lt!8933))))

(declare-fun b!51175 () Bool)

(declare-fun e!26588 () Heap!3)

(assert (=> b!51175 (= e!26588 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))))

(declare-fun b!51176 () Bool)

(assert (=> b!51176 (= e!26588 e!26590)))

(declare-fun c!10854 () Bool)

(assert (=> b!51176 (= c!10854 lt!8934)))

(assert (=> b!51176 (= lt!8933 e!26591)))

(declare-fun c!10852 () Bool)

(assert (=> b!51176 (= c!10852 (or lt!8934 (< (rank!9 (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))) (rank!9 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))))))

(assert (=> b!51176 (= lt!8934 (< (rank!9 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (rank!9 (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun b!51177 () Bool)

(assert (=> b!51177 (= e!26589 e!26588)))

(declare-fun c!10851 () Bool)

(assert (=> b!51177 (= c!10851 (is-Empty!105 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))

(declare-fun b!51178 () Bool)

(assert (=> b!51178 (= e!26590 e!26587)))

(declare-fun c!10850 () Bool)

(assert (=> b!51178 (= c!10850 (< (rank!9 (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))) (rank!9 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))))

(assert (= (and b!51176 c!10852) b!51169))

(assert (= (and b!51176 (not c!10852)) b!51171))

(assert (= (and b!51178 c!10850) b!51172))

(assert (= (and b!51178 (not c!10850)) b!51170))

(assert (= (and b!51176 c!10854) b!51174))

(assert (= (and b!51176 (not c!10854)) b!51178))

(assert (= (and b!51177 c!10851) b!51175))

(assert (= (and b!51177 (not c!10851)) b!51176))

(assert (= (and d!43626 c!10853) b!51173))

(assert (= (and d!43626 (not c!10853)) b!51177))

(declare-fun m!54797 () Bool)

(assert (=> b!51169 m!54797))

(declare-fun m!54799 () Bool)

(assert (=> b!51170 m!54799))

(declare-fun m!54801 () Bool)

(assert (=> b!51170 m!54801))

(assert (=> b!51170 m!54799))

(assert (=> b!51170 m!54801))

(declare-fun m!54803 () Bool)

(assert (=> b!51170 m!54803))

(declare-fun m!54805 () Bool)

(assert (=> d!43626 m!54805))

(declare-fun m!54807 () Bool)

(assert (=> d!43626 m!54807))

(declare-fun m!54809 () Bool)

(assert (=> d!43626 m!54809))

(assert (=> b!51099 d!43626))

(assert (=> b!51067 d!43580))

(declare-fun b!51182 () Bool)

(declare-fun e!26592 () Heap!3)

(assert (=> b!51182 (= e!26592 (insertNode!0 (link!0 (link!0 (Node!35 0 #b00000000000000000000000000000000 Empty!105) (head!634 (insert!4 #b00000000000000000000000000001100 Empty!105))) (head!634 (tail!658 (insert!4 #b00000000000000000000000000001100 Empty!105)))) (tail!658 (tail!658 (insert!4 #b00000000000000000000000000001100 Empty!105)))))))

(declare-fun d!43628 () Bool)

(declare-fun lt!8936 () Heap!3)

(assert (=> d!43628 (= (heapContent!0 lt!8936) (union (nodeContent!0 (link!0 (Node!35 0 #b00000000000000000000000000000000 Empty!105) (head!634 (insert!4 #b00000000000000000000000000001100 Empty!105)))) (heapContent!0 (tail!658 (insert!4 #b00000000000000000000000000001100 Empty!105)))))))

(declare-fun e!26593 () Heap!3)

(assert (=> d!43628 (= lt!8936 e!26593)))

(declare-fun c!10856 () Bool)

(assert (=> d!43628 (= c!10856 (is-Empty!105 (tail!658 (insert!4 #b00000000000000000000000000001100 Empty!105))))))

(assert (=> d!43628 (= (insertNode!0 (link!0 (Node!35 0 #b00000000000000000000000000000000 Empty!105) (head!634 (insert!4 #b00000000000000000000000000001100 Empty!105))) (tail!658 (insert!4 #b00000000000000000000000000001100 Empty!105))) lt!8936)))

(declare-fun b!51180 () Bool)

(assert (=> b!51180 (= e!26593 e!26592)))

(declare-fun c!10855 () Bool)

(assert (=> b!51180 (= c!10855 (< (rank!9 (link!0 (Node!35 0 #b00000000000000000000000000000000 Empty!105) (head!634 (insert!4 #b00000000000000000000000000001100 Empty!105)))) (rank!9 (head!634 (tail!658 (insert!4 #b00000000000000000000000000001100 Empty!105))))))))

(declare-fun b!51181 () Bool)

(assert (=> b!51181 (= e!26592 (Nodes!2 (link!0 (Node!35 0 #b00000000000000000000000000000000 Empty!105) (head!634 (insert!4 #b00000000000000000000000000001100 Empty!105))) (tail!658 (insert!4 #b00000000000000000000000000001100 Empty!105))))))

(declare-fun b!51179 () Bool)

(assert (=> b!51179 (= e!26593 (Nodes!2 (link!0 (Node!35 0 #b00000000000000000000000000000000 Empty!105) (head!634 (insert!4 #b00000000000000000000000000001100 Empty!105))) Empty!105))))

(assert (= (and b!51180 c!10855) b!51181))

(assert (= (and b!51180 (not c!10855)) b!51182))

(assert (= (and d!43628 c!10856) b!51179))

(assert (= (and d!43628 (not c!10856)) b!51180))

(assert (=> b!51182 m!54601))

(declare-fun m!54811 () Bool)

(assert (=> b!51182 m!54811))

(assert (=> b!51182 m!54811))

(declare-fun m!54813 () Bool)

(assert (=> b!51182 m!54813))

(declare-fun m!54815 () Bool)

(assert (=> d!43628 m!54815))

(assert (=> d!43628 m!54601))

(declare-fun m!54817 () Bool)

(assert (=> d!43628 m!54817))

(assert (=> d!43628 m!54599))

(assert (=> b!51050 d!43628))

(declare-fun d!43630 () Bool)

(assert (=> d!43630 (= (link!0 (Node!35 0 #b00000000000000000000000000000000 Empty!105) (head!634 (insert!4 #b00000000000000000000000000001100 Empty!105))) (Node!35 1 #b00000000000000000000000000000000 (Nodes!2 (Node!35 0 #b00000000000000000000000000001100 Empty!105) Empty!105)))))

(assert (=> b!51050 d!43630))

(assert (=> b!51063 d!43552))

(declare-fun d!43632 () Bool)

(declare-fun lt!8939 () Heap!3)

(assert (=> d!43632 (= (heapContent!0 lt!8939) (union (heapContent!0 (nodes!9 (_1!160 (getMin!0 h0!5)))) (heapContent!0 Empty!105)))))

(declare-fun e!26596 () Heap!3)

(assert (=> d!43632 (= lt!8939 e!26596)))

(declare-fun c!10859 () Bool)

(assert (=> d!43632 (= c!10859 (is-Empty!105 (nodes!9 (_1!160 (getMin!0 h0!5)))))))

(assert (=> d!43632 (= (reverse0!2 (nodes!9 (_1!160 (getMin!0 h0!5))) Empty!105) lt!8939)))

(declare-fun b!51187 () Bool)

(assert (=> b!51187 (= e!26596 Empty!105)))

(declare-fun b!51188 () Bool)

(assert (=> b!51188 (= e!26596 (reverse0!2 (tail!658 (nodes!9 (_1!160 (getMin!0 h0!5)))) (Nodes!2 (head!634 (nodes!9 (_1!160 (getMin!0 h0!5)))) Empty!105)))))

(assert (= (and d!43632 c!10859) b!51187))

(assert (= (and d!43632 (not c!10859)) b!51188))

(declare-fun m!54819 () Bool)

(assert (=> d!43632 m!54819))

(declare-fun m!54821 () Bool)

(assert (=> d!43632 m!54821))

(assert (=> d!43632 m!54577))

(declare-fun m!54823 () Bool)

(assert (=> b!51188 m!54823))

(assert (=> d!43548 d!43632))

(push 1)

(assert (not b!51126))

(assert (not d!43604))

(assert (not d!43620))

(assert (not b!51150))

(assert (not d!43626))

(assert (not d!43586))

(assert (not b!51134))

(assert (not d!43628))

(assert (not b!51115))

(assert (not b!51138))

(assert (not b!51128))

(assert (not b!51119))

(assert (not b!51152))

(assert (not d!43578))

(assert (not b!51140))

(assert (not d!43590))

(assert (not b!51144))

(assert (not b!51159))

(assert (not b!51158))

(assert (not d!43616))

(assert (not b!51132))

(assert (not d!43612))

(assert (not b!51169))

(assert (not b!51122))

(assert (not b!51118))

(assert (not b!51148))

(assert (not b!51170))

(assert (not d!43596))

(assert (not d!43624))

(assert (not d!43576))

(assert (not b!51121))

(assert (not b!51188))

(assert (not d!43632))

(assert (not b!51182))

(assert (not d!43558))

(assert (not b!51136))

(assert (not b!51130))

(assert (not b!51124))

(assert (not b!51160))

(assert (not b!51154))

(assert (not d!43594))

(assert (not b!51142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43634 () Bool)

(declare-fun c!10860 () Bool)

(assert (=> d!43634 (= c!10860 (is-Empty!105 lt!8939))))

(declare-fun e!26597 () (Set (_ BitVec 32)))

(assert (=> d!43634 (= (heapContent!0 lt!8939) e!26597)))

(declare-fun b!51189 () Bool)

(assert (=> b!51189 (= e!26597 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51190 () Bool)

(assert (=> b!51190 (= e!26597 (union (nodeContent!0 (head!634 lt!8939)) (heapContent!0 (tail!658 lt!8939))))))

(assert (= (and d!43634 c!10860) b!51189))

(assert (= (and d!43634 (not c!10860)) b!51190))

(declare-fun m!54825 () Bool)

(assert (=> b!51190 m!54825))

(declare-fun m!54827 () Bool)

(assert (=> b!51190 m!54827))

(assert (=> d!43632 d!43634))

(declare-fun d!43636 () Bool)

(declare-fun c!10861 () Bool)

(assert (=> d!43636 (= c!10861 (is-Empty!105 (nodes!9 (_1!160 (getMin!0 h0!5)))))))

(declare-fun e!26598 () (Set (_ BitVec 32)))

(assert (=> d!43636 (= (heapContent!0 (nodes!9 (_1!160 (getMin!0 h0!5)))) e!26598)))

(declare-fun b!51191 () Bool)

(assert (=> b!51191 (= e!26598 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51192 () Bool)

(assert (=> b!51192 (= e!26598 (union (nodeContent!0 (head!634 (nodes!9 (_1!160 (getMin!0 h0!5))))) (heapContent!0 (tail!658 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))

(assert (= (and d!43636 c!10861) b!51191))

(assert (= (and d!43636 (not c!10861)) b!51192))

(declare-fun m!54829 () Bool)

(assert (=> b!51192 m!54829))

(declare-fun m!54831 () Bool)

(assert (=> b!51192 m!54831))

(assert (=> d!43632 d!43636))

(assert (=> d!43632 d!43530))

(declare-fun d!43638 () Bool)

(declare-fun c!10862 () Bool)

(assert (=> d!43638 (= c!10862 (is-Empty!105 lt!8928))))

(declare-fun e!26599 () (Set (_ BitVec 32)))

(assert (=> d!43638 (= (heapContent!0 lt!8928) e!26599)))

(declare-fun b!51193 () Bool)

(assert (=> b!51193 (= e!26599 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51194 () Bool)

(assert (=> b!51194 (= e!26599 (union (nodeContent!0 (head!634 lt!8928)) (heapContent!0 (tail!658 lt!8928))))))

(assert (= (and d!43638 c!10862) b!51193))

(assert (= (and d!43638 (not c!10862)) b!51194))

(declare-fun m!54833 () Bool)

(assert (=> b!51194 m!54833))

(declare-fun m!54835 () Bool)

(assert (=> b!51194 m!54835))

(assert (=> d!43604 d!43638))

(declare-fun d!43640 () Bool)

(assert (=> d!43640 (= (nodeContent!0 (link!0 (Node!35 0 #b00000000000000000000000000101010 Empty!105) (head!634 (insert!4 #b00000000000000000000000000000000 (insert!4 #b00000000000000000000000000001100 Empty!105))))) (insert #b00000000000000000000000000001100 #b00000000000000000000000000101010 (singleton #b00000000000000000000000000000000)))))

(assert (=> d!43604 d!43640))

(assert (=> d!43604 d!43602))

(declare-fun d!43642 () Bool)

(declare-fun c!10863 () Bool)

(assert (=> d!43642 (= c!10863 (is-Empty!105 (nodes!9 (head!634 lt!8883))))))

(declare-fun e!26600 () (Set (_ BitVec 32)))

(assert (=> d!43642 (= (heapContent!0 (nodes!9 (head!634 lt!8883))) e!26600)))

(declare-fun b!51195 () Bool)

(assert (=> b!51195 (= e!26600 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51196 () Bool)

(assert (=> b!51196 (= e!26600 (union (nodeContent!0 (head!634 (nodes!9 (head!634 lt!8883)))) (heapContent!0 (tail!658 (nodes!9 (head!634 lt!8883))))))))

(assert (= (and d!43642 c!10863) b!51195))

(assert (= (and d!43642 (not c!10863)) b!51196))

(declare-fun m!54837 () Bool)

(assert (=> b!51196 m!54837))

(declare-fun m!54839 () Bool)

(assert (=> b!51196 m!54839))

(assert (=> d!43590 d!43642))

(declare-fun d!43644 () Bool)

(declare-fun c!10864 () Bool)

(assert (=> d!43644 (= c!10864 (is-Empty!105 lt!8935))))

(declare-fun e!26601 () (Set (_ BitVec 32)))

(assert (=> d!43644 (= (heapContent!0 lt!8935) e!26601)))

(declare-fun b!51197 () Bool)

(assert (=> b!51197 (= e!26601 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51198 () Bool)

(assert (=> b!51198 (= e!26601 (union (nodeContent!0 (head!634 lt!8935)) (heapContent!0 (tail!658 lt!8935))))))

(assert (= (and d!43644 c!10864) b!51197))

(assert (= (and d!43644 (not c!10864)) b!51198))

(declare-fun m!54841 () Bool)

(assert (=> b!51198 m!54841))

(declare-fun m!54843 () Bool)

(assert (=> b!51198 m!54843))

(assert (=> d!43626 d!43644))

(declare-fun d!43646 () Bool)

(declare-fun c!10865 () Bool)

(assert (=> d!43646 (= c!10865 (is-Empty!105 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))

(declare-fun e!26602 () (Set (_ BitVec 32)))

(assert (=> d!43646 (= (heapContent!0 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) e!26602)))

(declare-fun b!51199 () Bool)

(assert (=> b!51199 (= e!26602 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51200 () Bool)

(assert (=> b!51200 (= e!26602 (union (nodeContent!0 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (heapContent!0 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))))

(assert (= (and d!43646 c!10865) b!51199))

(assert (= (and d!43646 (not c!10865)) b!51200))

(declare-fun m!54845 () Bool)

(assert (=> b!51200 m!54845))

(declare-fun m!54847 () Bool)

(assert (=> b!51200 m!54847))

(assert (=> d!43626 d!43646))

(declare-fun d!43648 () Bool)

(declare-fun c!10866 () Bool)

(assert (=> d!43648 (= c!10866 (is-Empty!105 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))

(declare-fun e!26603 () (Set (_ BitVec 32)))

(assert (=> d!43648 (= (heapContent!0 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))) e!26603)))

(declare-fun b!51201 () Bool)

(assert (=> b!51201 (= e!26603 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51202 () Bool)

(assert (=> b!51202 (= e!26603 (union (nodeContent!0 (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))) (heapContent!0 (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(assert (= (and d!43648 c!10866) b!51201))

(assert (= (and d!43648 (not c!10866)) b!51202))

(declare-fun m!54849 () Bool)

(assert (=> b!51202 m!54849))

(declare-fun m!54851 () Bool)

(assert (=> b!51202 m!54851))

(assert (=> d!43626 d!43648))

(declare-fun d!43650 () Bool)

(declare-fun c!10867 () Bool)

(assert (=> d!43650 (= c!10867 (is-Empty!105 (nodes!9 (head!634 lt!8885))))))

(declare-fun e!26604 () (Set (_ BitVec 32)))

(assert (=> d!43650 (= (heapContent!0 (nodes!9 (head!634 lt!8885))) e!26604)))

(declare-fun b!51203 () Bool)

(assert (=> b!51203 (= e!26604 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51204 () Bool)

(assert (=> b!51204 (= e!26604 (union (nodeContent!0 (head!634 (nodes!9 (head!634 lt!8885)))) (heapContent!0 (tail!658 (nodes!9 (head!634 lt!8885))))))))

(assert (= (and d!43650 c!10867) b!51203))

(assert (= (and d!43650 (not c!10867)) b!51204))

(declare-fun m!54853 () Bool)

(assert (=> b!51204 m!54853))

(declare-fun m!54855 () Bool)

(assert (=> b!51204 m!54855))

(assert (=> d!43558 d!43650))

(declare-fun b!51208 () Bool)

(declare-fun e!26605 () Heap!3)

(assert (=> b!51208 (= e!26605 (insertNode!0 (link!0 (link!0 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))) (head!634 (merge!1 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))))) (tail!658 (merge!1 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))))))))

(declare-fun d!43652 () Bool)

(declare-fun lt!8940 () Heap!3)

(assert (=> d!43652 (= (heapContent!0 lt!8940) (union (nodeContent!0 (link!0 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))) (heapContent!0 (merge!1 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))))))))

(declare-fun e!26606 () Heap!3)

(assert (=> d!43652 (= lt!8940 e!26606)))

(declare-fun c!10869 () Bool)

(assert (=> d!43652 (= c!10869 (is-Empty!105 (merge!1 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(assert (=> d!43652 (= (insertNode!0 (link!0 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))) (merge!1 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))) lt!8940)))

(declare-fun b!51206 () Bool)

(assert (=> b!51206 (= e!26606 e!26605)))

(declare-fun c!10868 () Bool)

(assert (=> b!51206 (= c!10868 (< (rank!9 (link!0 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))) (rank!9 (head!634 (merge!1 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))))))

(declare-fun b!51207 () Bool)

(assert (=> b!51207 (= e!26605 (Nodes!2 (link!0 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))) (merge!1 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun b!51205 () Bool)

(assert (=> b!51205 (= e!26606 (Nodes!2 (link!0 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))) Empty!105))))

(assert (= (and b!51206 c!10868) b!51207))

(assert (= (and b!51206 (not c!10868)) b!51208))

(assert (= (and d!43652 c!10869) b!51205))

(assert (= (and d!43652 (not c!10869)) b!51206))

(assert (=> b!51208 m!54799))

(declare-fun m!54857 () Bool)

(assert (=> b!51208 m!54857))

(assert (=> b!51208 m!54857))

(declare-fun m!54859 () Bool)

(assert (=> b!51208 m!54859))

(declare-fun m!54861 () Bool)

(assert (=> d!43652 m!54861))

(assert (=> d!43652 m!54799))

(declare-fun m!54863 () Bool)

(assert (=> d!43652 m!54863))

(assert (=> d!43652 m!54801))

(declare-fun m!54865 () Bool)

(assert (=> d!43652 m!54865))

(assert (=> b!51170 d!43652))

(declare-fun d!43654 () Bool)

(assert (=> d!43654 (= (link!0 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))) (ite (bvsle (elem!81 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (elem!81 (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))) (Node!35 (+ (rank!9 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) 1) (elem!81 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (Nodes!2 (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))) (nodes!9 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))) (Node!35 (+ (rank!9 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) 1) (elem!81 (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))) (Nodes!2 (head!634 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (nodes!9 (head!634 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))))))

(assert (=> b!51170 d!43654))

(declare-fun b!51209 () Bool)

(declare-fun e!26611 () Heap!3)

(declare-fun lt!8942 () Bool)

(assert (=> b!51209 (= e!26611 (merge!1 (ite lt!8942 (tail!658 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (ite lt!8942 (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))) (tail!658 (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))))))))

(declare-fun b!51210 () Bool)

(declare-fun e!26607 () Heap!3)

(assert (=> b!51210 (= e!26607 (insertNode!0 (link!0 (head!634 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (head!634 (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))) (merge!1 (tail!658 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (tail!658 (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))))))))

(declare-fun b!51211 () Bool)

(declare-fun res!23528 () Heap!3)

(assert (=> b!51211 (= e!26611 res!23528)))

(assert (=> b!51211 true))

(assert (=> b!51211 true))

(declare-fun d!43656 () Bool)

(declare-fun lt!8943 () Heap!3)

(assert (=> d!43656 (= (heapContent!0 lt!8943) (union (heapContent!0 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (heapContent!0 (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun e!26609 () Heap!3)

(assert (=> d!43656 (= lt!8943 e!26609)))

(declare-fun c!10873 () Bool)

(assert (=> d!43656 (= c!10873 (is-Empty!105 (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(assert (=> d!43656 (= (merge!1 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))) lt!8943)))

(declare-fun b!51212 () Bool)

(declare-fun lt!8941 () Heap!3)

(assert (=> b!51212 (= e!26607 (Nodes!2 (head!634 (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))) lt!8941))))

(declare-fun b!51213 () Bool)

(assert (=> b!51213 (= e!26609 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))

(declare-fun e!26610 () Heap!3)

(declare-fun b!51214 () Bool)

(assert (=> b!51214 (= e!26610 (Nodes!2 (head!634 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) lt!8941))))

(declare-fun b!51215 () Bool)

(declare-fun e!26608 () Heap!3)

(assert (=> b!51215 (= e!26608 (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))

(declare-fun b!51216 () Bool)

(assert (=> b!51216 (= e!26608 e!26610)))

(declare-fun c!10874 () Bool)

(assert (=> b!51216 (= c!10874 lt!8942)))

(assert (=> b!51216 (= lt!8941 e!26611)))

(declare-fun c!10872 () Bool)

(assert (=> b!51216 (= c!10872 (or lt!8942 (< (rank!9 (head!634 (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))) (rank!9 (head!634 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))))))

(assert (=> b!51216 (= lt!8942 (< (rank!9 (head!634 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))) (rank!9 (head!634 (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))))))))

(declare-fun b!51217 () Bool)

(assert (=> b!51217 (= e!26609 e!26608)))

(declare-fun c!10871 () Bool)

(assert (=> b!51217 (= c!10871 (is-Empty!105 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))))

(declare-fun b!51218 () Bool)

(assert (=> b!51218 (= e!26610 e!26607)))

(declare-fun c!10870 () Bool)

(assert (=> b!51218 (= c!10870 (< (rank!9 (head!634 (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))) (rank!9 (head!634 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))))))

(assert (= (and b!51216 c!10872) b!51209))

(assert (= (and b!51216 (not c!10872)) b!51211))

(assert (= (and b!51218 c!10870) b!51212))

(assert (= (and b!51218 (not c!10870)) b!51210))

(assert (= (and b!51216 c!10874) b!51214))

(assert (= (and b!51216 (not c!10874)) b!51218))

(assert (= (and b!51217 c!10871) b!51215))

(assert (= (and b!51217 (not c!10871)) b!51216))

(assert (= (and d!43656 c!10873) b!51213))

(assert (= (and d!43656 (not c!10873)) b!51217))

(declare-fun m!54867 () Bool)

(assert (=> b!51209 m!54867))

(declare-fun m!54869 () Bool)

(assert (=> b!51210 m!54869))

(declare-fun m!54871 () Bool)

(assert (=> b!51210 m!54871))

(assert (=> b!51210 m!54869))

(assert (=> b!51210 m!54871))

(declare-fun m!54873 () Bool)

(assert (=> b!51210 m!54873))

(declare-fun m!54875 () Bool)

(assert (=> d!43656 m!54875))

(assert (=> d!43656 m!54847))

(assert (=> d!43656 m!54851))

(assert (=> b!51170 d!43656))

(declare-fun d!43658 () Bool)

(assert (=> d!43658 (= (nodeContent!0 (head!634 (tail!658 lt!8883))) (union (insert (elem!81 (head!634 (tail!658 lt!8883))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 (tail!658 lt!8883))))))))

(declare-fun bs!23728 () Bool)

(assert (= bs!23728 d!43658))

(declare-fun m!54877 () Bool)

(assert (=> bs!23728 m!54877))

(declare-fun m!54879 () Bool)

(assert (=> bs!23728 m!54879))

(assert (=> b!51142 d!43658))

(declare-fun d!43660 () Bool)

(declare-fun c!10875 () Bool)

(assert (=> d!43660 (= c!10875 (is-Empty!105 (tail!658 (tail!658 lt!8883))))))

(declare-fun e!26612 () (Set (_ BitVec 32)))

(assert (=> d!43660 (= (heapContent!0 (tail!658 (tail!658 lt!8883))) e!26612)))

(declare-fun b!51219 () Bool)

(assert (=> b!51219 (= e!26612 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51220 () Bool)

(assert (=> b!51220 (= e!26612 (union (nodeContent!0 (head!634 (tail!658 (tail!658 lt!8883)))) (heapContent!0 (tail!658 (tail!658 (tail!658 lt!8883))))))))

(assert (= (and d!43660 c!10875) b!51219))

(assert (= (and d!43660 (not c!10875)) b!51220))

(declare-fun m!54881 () Bool)

(assert (=> b!51220 m!54881))

(declare-fun m!54883 () Bool)

(assert (=> b!51220 m!54883))

(assert (=> b!51142 d!43660))

(declare-fun d!43662 () Bool)

(assert (=> d!43662 (= (nodeContent!0 (head!634 lt!8894)) (union (insert (elem!81 (head!634 lt!8894)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 lt!8894)))))))

(declare-fun bs!23729 () Bool)

(assert (= bs!23729 d!43662))

(declare-fun m!54885 () Bool)

(assert (=> bs!23729 m!54885))

(declare-fun m!54887 () Bool)

(assert (=> bs!23729 m!54887))

(assert (=> b!51124 d!43662))

(declare-fun d!43664 () Bool)

(declare-fun c!10876 () Bool)

(assert (=> d!43664 (= c!10876 (is-Empty!105 (tail!658 lt!8894)))))

(declare-fun e!26613 () (Set (_ BitVec 32)))

(assert (=> d!43664 (= (heapContent!0 (tail!658 lt!8894)) e!26613)))

(declare-fun b!51221 () Bool)

(assert (=> b!51221 (= e!26613 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51222 () Bool)

(assert (=> b!51222 (= e!26613 (union (nodeContent!0 (head!634 (tail!658 lt!8894))) (heapContent!0 (tail!658 (tail!658 lt!8894)))))))

(assert (= (and d!43664 c!10876) b!51221))

(assert (= (and d!43664 (not c!10876)) b!51222))

(declare-fun m!54889 () Bool)

(assert (=> b!51222 m!54889))

(declare-fun m!54891 () Bool)

(assert (=> b!51222 m!54891))

(assert (=> b!51124 d!43664))

(declare-fun d!43666 () Bool)

(assert (=> d!43666 (= (nodeContent!0 (head!634 (tail!658 lt!8890))) (union (insert (elem!81 (head!634 (tail!658 lt!8890))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 (tail!658 lt!8890))))))))

(declare-fun bs!23730 () Bool)

(assert (= bs!23730 d!43666))

(declare-fun m!54893 () Bool)

(assert (=> bs!23730 m!54893))

(declare-fun m!54895 () Bool)

(assert (=> bs!23730 m!54895))

(assert (=> b!51152 d!43666))

(declare-fun d!43668 () Bool)

(declare-fun c!10877 () Bool)

(assert (=> d!43668 (= c!10877 (is-Empty!105 (tail!658 (tail!658 lt!8890))))))

(declare-fun e!26614 () (Set (_ BitVec 32)))

(assert (=> d!43668 (= (heapContent!0 (tail!658 (tail!658 lt!8890))) e!26614)))

(declare-fun b!51223 () Bool)

(assert (=> b!51223 (= e!26614 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51224 () Bool)

(assert (=> b!51224 (= e!26614 (union (nodeContent!0 (head!634 (tail!658 (tail!658 lt!8890)))) (heapContent!0 (tail!658 (tail!658 (tail!658 lt!8890))))))))

(assert (= (and d!43668 c!10877) b!51223))

(assert (= (and d!43668 (not c!10877)) b!51224))

(declare-fun m!54897 () Bool)

(assert (=> b!51224 m!54897))

(declare-fun m!54899 () Bool)

(assert (=> b!51224 m!54899))

(assert (=> b!51152 d!43668))

(declare-fun d!43670 () Bool)

(declare-fun c!10878 () Bool)

(assert (=> d!43670 (= c!10878 (is-Empty!105 (tail!658 (tail!658 h1!23))))))

(declare-fun e!26615 () (Set (_ BitVec 32)))

(assert (=> d!43670 (= (heapContent!0 (tail!658 (tail!658 h1!23))) e!26615)))

(declare-fun b!51225 () Bool)

(assert (=> b!51225 (= e!26615 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51226 () Bool)

(assert (=> b!51226 (= e!26615 (union (nodeContent!0 (head!634 (tail!658 (tail!658 h1!23)))) (heapContent!0 (tail!658 (tail!658 (tail!658 h1!23))))))))

(assert (= (and d!43670 c!10878) b!51225))

(assert (= (and d!43670 (not c!10878)) b!51226))

(declare-fun m!54901 () Bool)

(assert (=> b!51226 m!54901))

(declare-fun m!54903 () Bool)

(assert (=> b!51226 m!54903))

(assert (=> b!51119 d!43670))

(declare-fun d!43672 () Bool)

(assert (not d!43672))

(assert (=> b!51182 d!43672))

(declare-fun d!43674 () Bool)

(assert (not d!43674))

(assert (=> b!51182 d!43674))

(declare-fun d!43676 () Bool)

(declare-fun c!10879 () Bool)

(assert (=> d!43676 (= c!10879 (is-Empty!105 (nodes!9 (head!634 lt!8884))))))

(declare-fun e!26616 () (Set (_ BitVec 32)))

(assert (=> d!43676 (= (heapContent!0 (nodes!9 (head!634 lt!8884))) e!26616)))

(declare-fun b!51227 () Bool)

(assert (=> b!51227 (= e!26616 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51228 () Bool)

(assert (=> b!51228 (= e!26616 (union (nodeContent!0 (head!634 (nodes!9 (head!634 lt!8884)))) (heapContent!0 (tail!658 (nodes!9 (head!634 lt!8884))))))))

(assert (= (and d!43676 c!10879) b!51227))

(assert (= (and d!43676 (not c!10879)) b!51228))

(declare-fun m!54905 () Bool)

(assert (=> b!51228 m!54905))

(declare-fun m!54907 () Bool)

(assert (=> b!51228 m!54907))

(assert (=> d!43586 d!43676))

(declare-fun d!43678 () Bool)

(declare-fun c!10880 () Bool)

(assert (=> d!43678 (= c!10880 (is-Empty!105 (nodes!9 (head!634 h0!5))))))

(declare-fun e!26617 () (Set (_ BitVec 32)))

(assert (=> d!43678 (= (heapContent!0 (nodes!9 (head!634 h0!5))) e!26617)))

(declare-fun b!51229 () Bool)

(assert (=> b!51229 (= e!26617 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51230 () Bool)

(assert (=> b!51230 (= e!26617 (union (nodeContent!0 (head!634 (nodes!9 (head!634 h0!5)))) (heapContent!0 (tail!658 (nodes!9 (head!634 h0!5))))))))

(assert (= (and d!43678 c!10880) b!51229))

(assert (= (and d!43678 (not c!10880)) b!51230))

(declare-fun m!54909 () Bool)

(assert (=> b!51230 m!54909))

(declare-fun m!54911 () Bool)

(assert (=> b!51230 m!54911))

(assert (=> d!43596 d!43678))

(declare-fun d!43680 () Bool)

(declare-fun lt!8944 () Bool)

(assert (=> d!43680 (= lt!8944 (= (heapContent!0 (tail!658 (tail!658 h1!23))) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!43680 (= lt!8944 (= (tail!658 (tail!658 h1!23)) Empty!105))))

(assert (=> d!43680 (= (isEmpty!6 (tail!658 (tail!658 h1!23))) lt!8944)))

(declare-fun bs!23731 () Bool)

(assert (= bs!23731 d!43680))

(assert (=> bs!23731 m!54681))

(assert (=> b!51118 d!43680))

(declare-fun d!43682 () Bool)

(assert (=> d!43682 (= (nodeContent!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (union (insert (elem!81 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))))

(declare-fun bs!23732 () Bool)

(assert (= bs!23732 d!43682))

(declare-fun m!54913 () Bool)

(assert (=> bs!23732 m!54913))

(declare-fun m!54915 () Bool)

(assert (=> bs!23732 m!54915))

(assert (=> b!51130 d!43682))

(declare-fun d!43684 () Bool)

(declare-fun c!10881 () Bool)

(assert (=> d!43684 (= c!10881 (is-Empty!105 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))

(declare-fun e!26618 () (Set (_ BitVec 32)))

(assert (=> d!43684 (= (heapContent!0 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) e!26618)))

(declare-fun b!51231 () Bool)

(assert (=> b!51231 (= e!26618 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51232 () Bool)

(assert (=> b!51232 (= e!26618 (union (nodeContent!0 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (heapContent!0 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))))

(assert (= (and d!43684 c!10881) b!51231))

(assert (= (and d!43684 (not c!10881)) b!51232))

(declare-fun m!54917 () Bool)

(assert (=> b!51232 m!54917))

(declare-fun m!54919 () Bool)

(assert (=> b!51232 m!54919))

(assert (=> b!51130 d!43684))

(declare-fun b!51236 () Bool)

(declare-fun e!26619 () Heap!3)

(assert (=> b!51236 (= e!26619 (insertNode!0 (link!0 (link!0 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (tail!658 (_2!160 (getMin!0 h0!5))))) (head!634 (merge!1 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))))) (tail!658 (merge!1 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun d!43686 () Bool)

(declare-fun lt!8945 () Heap!3)

(assert (=> d!43686 (= (heapContent!0 lt!8945) (union (nodeContent!0 (link!0 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (tail!658 (_2!160 (getMin!0 h0!5)))))) (heapContent!0 (merge!1 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun e!26620 () Heap!3)

(assert (=> d!43686 (= lt!8945 e!26620)))

(declare-fun c!10883 () Bool)

(assert (=> d!43686 (= c!10883 (is-Empty!105 (merge!1 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(assert (=> d!43686 (= (insertNode!0 (link!0 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (tail!658 (_2!160 (getMin!0 h0!5))))) (merge!1 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))) lt!8945)))

(declare-fun b!51234 () Bool)

(assert (=> b!51234 (= e!26620 e!26619)))

(declare-fun c!10882 () Bool)

(assert (=> b!51234 (= c!10882 (< (rank!9 (link!0 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (tail!658 (_2!160 (getMin!0 h0!5)))))) (rank!9 (head!634 (merge!1 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))))))))

(declare-fun b!51235 () Bool)

(assert (=> b!51235 (= e!26619 (Nodes!2 (link!0 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (tail!658 (_2!160 (getMin!0 h0!5))))) (merge!1 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(declare-fun b!51233 () Bool)

(assert (=> b!51233 (= e!26620 (Nodes!2 (link!0 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (tail!658 (_2!160 (getMin!0 h0!5))))) Empty!105))))

(assert (= (and b!51234 c!10882) b!51235))

(assert (= (and b!51234 (not c!10882)) b!51236))

(assert (= (and d!43686 c!10883) b!51233))

(assert (= (and d!43686 (not c!10883)) b!51234))

(assert (=> b!51236 m!54789))

(declare-fun m!54921 () Bool)

(assert (=> b!51236 m!54921))

(assert (=> b!51236 m!54921))

(declare-fun m!54923 () Bool)

(assert (=> b!51236 m!54923))

(declare-fun m!54925 () Bool)

(assert (=> d!43686 m!54925))

(assert (=> d!43686 m!54789))

(declare-fun m!54927 () Bool)

(assert (=> d!43686 m!54927))

(assert (=> d!43686 m!54791))

(declare-fun m!54929 () Bool)

(assert (=> d!43686 m!54929))

(assert (=> b!51160 d!43686))

(declare-fun d!43688 () Bool)

(assert (=> d!43688 (= (link!0 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (head!634 (tail!658 (_2!160 (getMin!0 h0!5))))) (ite (bvsle (elem!81 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (elem!81 (head!634 (tail!658 (_2!160 (getMin!0 h0!5)))))) (Node!35 (+ (rank!9 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) 1) (elem!81 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (Nodes!2 (head!634 (tail!658 (_2!160 (getMin!0 h0!5)))) (nodes!9 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))) (Node!35 (+ (rank!9 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) 1) (elem!81 (head!634 (tail!658 (_2!160 (getMin!0 h0!5))))) (Nodes!2 (head!634 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (nodes!9 (head!634 (tail!658 (_2!160 (getMin!0 h0!5)))))))))))

(assert (=> b!51160 d!43688))

(declare-fun b!51237 () Bool)

(declare-fun e!26625 () Heap!3)

(declare-fun lt!8947 () Bool)

(assert (=> b!51237 (= e!26625 (merge!1 (ite lt!8947 (tail!658 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (ite lt!8947 (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))) (tail!658 (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun b!51238 () Bool)

(declare-fun e!26621 () Heap!3)

(assert (=> b!51238 (= e!26621 (insertNode!0 (link!0 (head!634 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (head!634 (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))) (merge!1 (tail!658 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (tail!658 (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun b!51239 () Bool)

(declare-fun res!23529 () Heap!3)

(assert (=> b!51239 (= e!26625 res!23529)))

(assert (=> b!51239 true))

(assert (=> b!51239 true))

(declare-fun d!43690 () Bool)

(declare-fun lt!8948 () Heap!3)

(assert (=> d!43690 (= (heapContent!0 lt!8948) (union (heapContent!0 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (heapContent!0 (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(declare-fun e!26623 () Heap!3)

(assert (=> d!43690 (= lt!8948 e!26623)))

(declare-fun c!10887 () Bool)

(assert (=> d!43690 (= c!10887 (is-Empty!105 (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))))))

(assert (=> d!43690 (= (merge!1 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))) lt!8948)))

(declare-fun b!51240 () Bool)

(declare-fun lt!8946 () Heap!3)

(assert (=> b!51240 (= e!26621 (Nodes!2 (head!634 (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))) lt!8946))))

(declare-fun b!51241 () Bool)

(assert (=> b!51241 (= e!26623 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))

(declare-fun b!51242 () Bool)

(declare-fun e!26624 () Heap!3)

(assert (=> b!51242 (= e!26624 (Nodes!2 (head!634 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) lt!8946))))

(declare-fun b!51243 () Bool)

(declare-fun e!26622 () Heap!3)

(assert (=> b!51243 (= e!26622 (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))))

(declare-fun b!51244 () Bool)

(assert (=> b!51244 (= e!26622 e!26624)))

(declare-fun c!10888 () Bool)

(assert (=> b!51244 (= c!10888 lt!8947)))

(assert (=> b!51244 (= lt!8946 e!26625)))

(declare-fun c!10886 () Bool)

(assert (=> b!51244 (= c!10886 (or lt!8947 (< (rank!9 (head!634 (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))) (rank!9 (head!634 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))))))

(assert (=> b!51244 (= lt!8947 (< (rank!9 (head!634 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))) (rank!9 (head!634 (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun b!51245 () Bool)

(assert (=> b!51245 (= e!26623 e!26622)))

(declare-fun c!10885 () Bool)

(assert (=> b!51245 (= c!10885 (is-Empty!105 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))))

(declare-fun b!51246 () Bool)

(assert (=> b!51246 (= e!26624 e!26621)))

(declare-fun c!10884 () Bool)

(assert (=> b!51246 (= c!10884 (< (rank!9 (head!634 (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))) (rank!9 (head!634 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))))))

(assert (= (and b!51244 c!10886) b!51237))

(assert (= (and b!51244 (not c!10886)) b!51239))

(assert (= (and b!51246 c!10884) b!51240))

(assert (= (and b!51246 (not c!10884)) b!51238))

(assert (= (and b!51244 c!10888) b!51242))

(assert (= (and b!51244 (not c!10888)) b!51246))

(assert (= (and b!51245 c!10885) b!51243))

(assert (= (and b!51245 (not c!10885)) b!51244))

(assert (= (and d!43690 c!10887) b!51241))

(assert (= (and d!43690 (not c!10887)) b!51245))

(declare-fun m!54931 () Bool)

(assert (=> b!51237 m!54931))

(declare-fun m!54933 () Bool)

(assert (=> b!51238 m!54933))

(declare-fun m!54935 () Bool)

(assert (=> b!51238 m!54935))

(assert (=> b!51238 m!54933))

(assert (=> b!51238 m!54935))

(declare-fun m!54937 () Bool)

(assert (=> b!51238 m!54937))

(declare-fun m!54939 () Bool)

(assert (=> d!43690 m!54939))

(assert (=> d!43690 m!54919))

(declare-fun m!54941 () Bool)

(assert (=> d!43690 m!54941))

(assert (=> b!51160 d!43690))

(declare-fun b!51247 () Bool)

(declare-fun e!26626 () (_ BitVec 32))

(assert (=> b!51247 (= e!26626 (value!3240 (findMin!0 (tail!658 (tail!658 (tail!658 (tail!658 h1!23)))))))))

(declare-fun b!51248 () Bool)

(declare-fun e!26629 () OptInt!4)

(assert (=> b!51248 (= e!26629 None!229)))

(declare-fun b!51249 () Bool)

(assert (=> b!51249 (= e!26626 (elem!81 (head!634 (tail!658 (tail!658 (tail!658 h1!23))))))))

(declare-fun b!51250 () Bool)

(declare-fun e!26628 () Bool)

(assert (=> b!51250 (= e!26628 (isEmpty!6 (tail!658 (tail!658 (tail!658 h1!23)))))))

(declare-fun b!51251 () Bool)

(declare-fun lt!8949 () OptInt!4)

(assert (=> b!51251 (= e!26628 (member (value!3240 lt!8949) (heapContent!0 (tail!658 (tail!658 (tail!658 h1!23))))))))

(declare-fun b!51252 () Bool)

(declare-fun e!26627 () OptInt!4)

(assert (=> b!51252 (= e!26627 (Some!228 (elem!81 (head!634 (tail!658 (tail!658 (tail!658 h1!23)))))))))

(declare-fun d!43692 () Bool)

(assert (=> d!43692 e!26628))

(declare-fun c!10891 () Bool)

(assert (=> d!43692 (= c!10891 (is-None!229 lt!8949))))

(assert (=> d!43692 (= lt!8949 e!26629)))

(declare-fun c!10890 () Bool)

(assert (=> d!43692 (= c!10890 (is-Empty!105 (tail!658 (tail!658 (tail!658 h1!23)))))))

(assert (=> d!43692 (= (findMin!0 (tail!658 (tail!658 (tail!658 h1!23)))) lt!8949)))

(declare-fun b!51253 () Bool)

(assert (=> b!51253 (= e!26627 (Some!228 e!26626))))

(declare-fun c!10892 () Bool)

(assert (=> b!51253 (= c!10892 (bvslt (elem!81 (head!634 (tail!658 (tail!658 (tail!658 h1!23))))) (value!3240 (findMin!0 (tail!658 (tail!658 (tail!658 (tail!658 h1!23))))))))))

(declare-fun b!51254 () Bool)

(assert (=> b!51254 (= e!26629 e!26627)))

(declare-fun c!10889 () Bool)

(assert (=> b!51254 (= c!10889 (is-None!229 (findMin!0 (tail!658 (tail!658 (tail!658 (tail!658 h1!23)))))))))

(assert (= (and b!51253 c!10892) b!51249))

(assert (= (and b!51253 (not c!10892)) b!51247))

(assert (= (and b!51254 c!10889) b!51252))

(assert (= (and b!51254 (not c!10889)) b!51253))

(assert (= (and d!43692 c!10890) b!51248))

(assert (= (and d!43692 (not c!10890)) b!51254))

(assert (= (and d!43692 c!10891) b!51250))

(assert (= (and d!43692 (not c!10891)) b!51251))

(declare-fun m!54943 () Bool)

(assert (=> b!51250 m!54943))

(declare-fun m!54945 () Bool)

(assert (=> b!51247 m!54945))

(assert (=> b!51253 m!54945))

(assert (=> b!51254 m!54945))

(assert (=> b!51251 m!54903))

(declare-fun m!54947 () Bool)

(assert (=> b!51251 m!54947))

(assert (=> b!51122 d!43692))

(assert (=> b!51115 d!43692))

(declare-fun d!43694 () Bool)

(declare-fun c!10893 () Bool)

(assert (=> d!43694 (= c!10893 (is-Empty!105 lt!8929))))

(declare-fun e!26630 () (Set (_ BitVec 32)))

(assert (=> d!43694 (= (heapContent!0 lt!8929) e!26630)))

(declare-fun b!51255 () Bool)

(assert (=> b!51255 (= e!26630 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51256 () Bool)

(assert (=> b!51256 (= e!26630 (union (nodeContent!0 (head!634 lt!8929)) (heapContent!0 (tail!658 lt!8929))))))

(assert (= (and d!43694 c!10893) b!51255))

(assert (= (and d!43694 (not c!10893)) b!51256))

(declare-fun m!54949 () Bool)

(assert (=> b!51256 m!54949))

(declare-fun m!54951 () Bool)

(assert (=> b!51256 m!54951))

(assert (=> d!43620 d!43694))

(declare-fun d!43696 () Bool)

(assert (=> d!43696 (= (nodeContent!0 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5))))) (union (insert (elem!81 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5))))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun bs!23733 () Bool)

(assert (= bs!23733 d!43696))

(declare-fun m!54953 () Bool)

(assert (=> bs!23733 m!54953))

(declare-fun m!54955 () Bool)

(assert (=> bs!23733 m!54955))

(assert (=> d!43620 d!43696))

(declare-fun d!43698 () Bool)

(declare-fun c!10894 () Bool)

(assert (=> d!43698 (= c!10894 (is-Empty!105 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))))))

(declare-fun e!26631 () (Set (_ BitVec 32)))

(assert (=> d!43698 (= (heapContent!0 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))) e!26631)))

(declare-fun b!51257 () Bool)

(assert (=> b!51257 (= e!26631 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51258 () Bool)

(assert (=> b!51258 (= e!26631 (union (nodeContent!0 (head!634 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))))) (heapContent!0 (tail!658 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(assert (= (and d!43698 c!10894) b!51257))

(assert (= (and d!43698 (not c!10894)) b!51258))

(declare-fun m!54957 () Bool)

(assert (=> b!51258 m!54957))

(declare-fun m!54959 () Bool)

(assert (=> b!51258 m!54959))

(assert (=> d!43620 d!43698))

(declare-fun d!43700 () Bool)

(declare-fun c!10895 () Bool)

(assert (=> d!43700 (= c!10895 (is-Empty!105 lt!8936))))

(declare-fun e!26632 () (Set (_ BitVec 32)))

(assert (=> d!43700 (= (heapContent!0 lt!8936) e!26632)))

(declare-fun b!51259 () Bool)

(assert (=> b!51259 (= e!26632 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51260 () Bool)

(assert (=> b!51260 (= e!26632 (union (nodeContent!0 (head!634 lt!8936)) (heapContent!0 (tail!658 lt!8936))))))

(assert (= (and d!43700 c!10895) b!51259))

(assert (= (and d!43700 (not c!10895)) b!51260))

(declare-fun m!54961 () Bool)

(assert (=> b!51260 m!54961))

(declare-fun m!54963 () Bool)

(assert (=> b!51260 m!54963))

(assert (=> d!43628 d!43700))

(declare-fun d!43702 () Bool)

(assert (=> d!43702 (= (nodeContent!0 (link!0 (Node!35 0 #b00000000000000000000000000000000 Empty!105) (head!634 (insert!4 #b00000000000000000000000000001100 Empty!105)))) (insert #b00000000000000000000000000001100 (singleton #b00000000000000000000000000000000)))))

(assert (=> d!43628 d!43702))

(assert (=> d!43628 d!43564))

(declare-fun d!43704 () Bool)

(declare-fun c!10896 () Bool)

(assert (=> d!43704 (= c!10896 (is-Empty!105 lt!8932))))

(declare-fun e!26633 () (Set (_ BitVec 32)))

(assert (=> d!43704 (= (heapContent!0 lt!8932) e!26633)))

(declare-fun b!51261 () Bool)

(assert (=> b!51261 (= e!26633 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51262 () Bool)

(assert (=> b!51262 (= e!26633 (union (nodeContent!0 (head!634 lt!8932)) (heapContent!0 (tail!658 lt!8932))))))

(assert (= (and d!43704 c!10896) b!51261))

(assert (= (and d!43704 (not c!10896)) b!51262))

(declare-fun m!54965 () Bool)

(assert (=> b!51262 m!54965))

(declare-fun m!54967 () Bool)

(assert (=> b!51262 m!54967))

(assert (=> d!43624 d!43704))

(assert (=> d!43624 d!43684))

(declare-fun d!43706 () Bool)

(declare-fun c!10897 () Bool)

(assert (=> d!43706 (= c!10897 (is-Empty!105 (tail!658 (_2!160 (getMin!0 h0!5)))))))

(declare-fun e!26634 () (Set (_ BitVec 32)))

(assert (=> d!43706 (= (heapContent!0 (tail!658 (_2!160 (getMin!0 h0!5)))) e!26634)))

(declare-fun b!51263 () Bool)

(assert (=> b!51263 (= e!26634 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51264 () Bool)

(assert (=> b!51264 (= e!26634 (union (nodeContent!0 (head!634 (tail!658 (_2!160 (getMin!0 h0!5))))) (heapContent!0 (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(assert (= (and d!43706 c!10897) b!51263))

(assert (= (and d!43706 (not c!10897)) b!51264))

(declare-fun m!54969 () Bool)

(assert (=> b!51264 m!54969))

(assert (=> b!51264 m!54941))

(assert (=> d!43624 d!43706))

(declare-fun d!43708 () Bool)

(assert (=> d!43708 (= (nodeContent!0 (head!634 (tail!658 h0!5))) (union (insert (elem!81 (head!634 (tail!658 h0!5))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 (tail!658 h0!5))))))))

(declare-fun bs!23734 () Bool)

(assert (= bs!23734 d!43708))

(declare-fun m!54971 () Bool)

(assert (=> bs!23734 m!54971))

(declare-fun m!54973 () Bool)

(assert (=> bs!23734 m!54973))

(assert (=> b!51144 d!43708))

(declare-fun d!43710 () Bool)

(declare-fun c!10898 () Bool)

(assert (=> d!43710 (= c!10898 (is-Empty!105 (tail!658 (tail!658 h0!5))))))

(declare-fun e!26635 () (Set (_ BitVec 32)))

(assert (=> d!43710 (= (heapContent!0 (tail!658 (tail!658 h0!5))) e!26635)))

(declare-fun b!51265 () Bool)

(assert (=> b!51265 (= e!26635 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51266 () Bool)

(assert (=> b!51266 (= e!26635 (union (nodeContent!0 (head!634 (tail!658 (tail!658 h0!5)))) (heapContent!0 (tail!658 (tail!658 (tail!658 h0!5))))))))

(assert (= (and d!43710 c!10898) b!51265))

(assert (= (and d!43710 (not c!10898)) b!51266))

(declare-fun m!54975 () Bool)

(assert (=> b!51266 m!54975))

(declare-fun m!54977 () Bool)

(assert (=> b!51266 m!54977))

(assert (=> b!51144 d!43710))

(assert (=> d!43594 d!43580))

(declare-fun d!43712 () Bool)

(assert (not d!43712))

(assert (=> b!51148 d!43712))

(declare-fun d!43714 () Bool)

(assert (not d!43714))

(assert (=> b!51148 d!43714))

(declare-fun d!43716 () Bool)

(assert (=> d!43716 (= (nodeContent!0 (_1!160 lt!8926)) (union (insert (elem!81 (_1!160 lt!8926)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (_1!160 lt!8926)))))))

(declare-fun bs!23735 () Bool)

(assert (= bs!23735 d!43716))

(declare-fun m!54979 () Bool)

(assert (=> bs!23735 m!54979))

(declare-fun m!54981 () Bool)

(assert (=> bs!23735 m!54981))

(assert (=> d!43576 d!43716))

(declare-fun d!43718 () Bool)

(declare-fun c!10899 () Bool)

(assert (=> d!43718 (= c!10899 (is-Empty!105 (_2!160 lt!8926)))))

(declare-fun e!26636 () (Set (_ BitVec 32)))

(assert (=> d!43718 (= (heapContent!0 (_2!160 lt!8926)) e!26636)))

(declare-fun b!51267 () Bool)

(assert (=> b!51267 (= e!26636 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51268 () Bool)

(assert (=> b!51268 (= e!26636 (union (nodeContent!0 (head!634 (_2!160 lt!8926))) (heapContent!0 (tail!658 (_2!160 lt!8926)))))))

(assert (= (and d!43718 c!10899) b!51267))

(assert (= (and d!43718 (not c!10899)) b!51268))

(declare-fun m!54983 () Bool)

(assert (=> b!51268 m!54983))

(declare-fun m!54985 () Bool)

(assert (=> b!51268 m!54985))

(assert (=> d!43576 d!43718))

(assert (=> d!43576 d!43598))

(declare-fun e!26641 () Heap!3)

(declare-fun b!51269 () Bool)

(declare-fun lt!8951 () Bool)

(assert (=> b!51269 (= e!26641 (merge!1 (ite lt!8951 (tail!658 (ite lt!8934 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (ite lt!8934 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (ite lt!8951 (ite lt!8934 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))) (tail!658 (ite lt!8934 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))))))

(declare-fun b!51270 () Bool)

(declare-fun e!26637 () Heap!3)

(assert (=> b!51270 (= e!26637 (insertNode!0 (link!0 (head!634 (ite lt!8934 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (head!634 (ite lt!8934 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))))) (merge!1 (tail!658 (ite lt!8934 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (tail!658 (ite lt!8934 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))))))

(declare-fun b!51271 () Bool)

(declare-fun res!23530 () Heap!3)

(assert (=> b!51271 (= e!26641 res!23530)))

(assert (=> b!51271 true))

(assert (=> b!51271 true))

(declare-fun d!43720 () Bool)

(declare-fun lt!8952 () Heap!3)

(assert (=> d!43720 (= (heapContent!0 lt!8952) (union (heapContent!0 (ite lt!8934 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (heapContent!0 (ite lt!8934 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))))))))

(declare-fun e!26639 () Heap!3)

(assert (=> d!43720 (= lt!8952 e!26639)))

(declare-fun c!10903 () Bool)

(assert (=> d!43720 (= c!10903 (is-Empty!105 (ite lt!8934 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(assert (=> d!43720 (= (merge!1 (ite lt!8934 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8934 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))) lt!8952)))

(declare-fun b!51272 () Bool)

(declare-fun lt!8950 () Heap!3)

(assert (=> b!51272 (= e!26637 (Nodes!2 (head!634 (ite lt!8934 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))) lt!8950))))

(declare-fun b!51273 () Bool)

(assert (=> b!51273 (= e!26639 (ite lt!8934 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))

(declare-fun e!26640 () Heap!3)

(declare-fun b!51274 () Bool)

(assert (=> b!51274 (= e!26640 (Nodes!2 (head!634 (ite lt!8934 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) lt!8950))))

(declare-fun b!51275 () Bool)

(declare-fun e!26638 () Heap!3)

(assert (=> b!51275 (= e!26638 (ite lt!8934 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(declare-fun b!51276 () Bool)

(assert (=> b!51276 (= e!26638 e!26640)))

(declare-fun c!10904 () Bool)

(assert (=> b!51276 (= c!10904 lt!8951)))

(assert (=> b!51276 (= lt!8950 e!26641)))

(declare-fun c!10902 () Bool)

(assert (=> b!51276 (= c!10902 (or lt!8951 (< (rank!9 (head!634 (ite lt!8934 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))))) (rank!9 (head!634 (ite lt!8934 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))))))

(assert (=> b!51276 (= lt!8951 (< (rank!9 (head!634 (ite lt!8934 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))) (rank!9 (head!634 (ite lt!8934 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5))))))))))))

(declare-fun b!51277 () Bool)

(assert (=> b!51277 (= e!26639 e!26638)))

(declare-fun c!10901 () Bool)

(assert (=> b!51277 (= c!10901 (is-Empty!105 (ite lt!8934 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))))

(declare-fun b!51278 () Bool)

(assert (=> b!51278 (= e!26640 e!26637)))

(declare-fun c!10900 () Bool)

(assert (=> b!51278 (= c!10900 (< (rank!9 (head!634 (ite lt!8934 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))) (tail!658 (ite lt!8908 (_2!160 (getMin!0 h0!5)) (tail!658 (_2!160 (getMin!0 h0!5)))))))) (rank!9 (head!634 (ite lt!8934 (tail!658 (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8908 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))))))

(assert (= (and b!51276 c!10902) b!51269))

(assert (= (and b!51276 (not c!10902)) b!51271))

(assert (= (and b!51278 c!10900) b!51272))

(assert (= (and b!51278 (not c!10900)) b!51270))

(assert (= (and b!51276 c!10904) b!51274))

(assert (= (and b!51276 (not c!10904)) b!51278))

(assert (= (and b!51277 c!10901) b!51275))

(assert (= (and b!51277 (not c!10901)) b!51276))

(assert (= (and d!43720 c!10903) b!51273))

(assert (= (and d!43720 (not c!10903)) b!51277))

(declare-fun m!54987 () Bool)

(assert (=> b!51269 m!54987))

(declare-fun m!54989 () Bool)

(assert (=> b!51270 m!54989))

(declare-fun m!54991 () Bool)

(assert (=> b!51270 m!54991))

(assert (=> b!51270 m!54989))

(assert (=> b!51270 m!54991))

(declare-fun m!54993 () Bool)

(assert (=> b!51270 m!54993))

(declare-fun m!54995 () Bool)

(assert (=> d!43720 m!54995))

(declare-fun m!54997 () Bool)

(assert (=> d!43720 m!54997))

(declare-fun m!54999 () Bool)

(assert (=> d!43720 m!54999))

(assert (=> b!51169 d!43720))

(declare-fun d!43722 () Bool)

(declare-fun lt!8956 () tuple2!268)

(assert (=> d!43722 (= (union (nodeContent!0 (_1!160 lt!8956)) (heapContent!0 (_2!160 lt!8956))) (heapContent!0 (tail!658 (tail!658 h0!5))))))

(declare-fun e!26642 () tuple2!268)

(assert (=> d!43722 (= lt!8956 e!26642)))

(declare-fun c!10905 () Bool)

(assert (=> d!43722 (= c!10905 (and (is-Nodes!2 (tail!658 (tail!658 h0!5))) (is-Empty!105 (tail!658 (tail!658 (tail!658 h0!5))))))))

(assert (=> d!43722 (not (= (tail!658 (tail!658 h0!5)) Empty!105))))

(assert (=> d!43722 (= (getMin!0 (tail!658 (tail!658 h0!5))) lt!8956)))

(declare-fun lt!8954 () Node!34)

(declare-fun lt!8955 () tuple2!268)

(declare-fun b!51280 () Bool)

(assert (=> b!51280 (= e!26642 (ite (bvslt (elem!81 (head!634 (tail!658 (tail!658 h0!5)))) (elem!81 lt!8954)) (tuple2!269 (head!634 (tail!658 (tail!658 h0!5))) (tail!658 (tail!658 (tail!658 h0!5)))) (tuple2!269 lt!8954 (Nodes!2 (head!634 (tail!658 (tail!658 h0!5))) (_2!160 lt!8955)))))))

(declare-fun lt!8953 () tuple2!268)

(assert (=> b!51280 (= lt!8954 (_1!160 lt!8953))))

(assert (=> b!51280 (= lt!8955 (getMin!0 (tail!658 (tail!658 (tail!658 h0!5)))))))

(assert (=> b!51280 (= lt!8953 (getMin!0 (tail!658 (tail!658 (tail!658 h0!5)))))))

(declare-fun b!51279 () Bool)

(assert (=> b!51279 (= e!26642 (tuple2!269 (head!634 (tail!658 (tail!658 h0!5))) Empty!105))))

(assert (= (and d!43722 c!10905) b!51279))

(assert (= (and d!43722 (not c!10905)) b!51280))

(declare-fun m!55001 () Bool)

(assert (=> d!43722 m!55001))

(declare-fun m!55003 () Bool)

(assert (=> d!43722 m!55003))

(assert (=> d!43722 m!54747))

(declare-fun m!55005 () Bool)

(assert (=> b!51280 m!55005))

(assert (=> b!51136 d!43722))

(declare-fun d!43724 () Bool)

(declare-fun c!10906 () Bool)

(assert (=> d!43724 (= c!10906 (is-Empty!105 (nodes!9 (head!634 lt!8890))))))

(declare-fun e!26643 () (Set (_ BitVec 32)))

(assert (=> d!43724 (= (heapContent!0 (nodes!9 (head!634 lt!8890))) e!26643)))

(declare-fun b!51281 () Bool)

(assert (=> b!51281 (= e!26643 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51282 () Bool)

(assert (=> b!51282 (= e!26643 (union (nodeContent!0 (head!634 (nodes!9 (head!634 lt!8890)))) (heapContent!0 (tail!658 (nodes!9 (head!634 lt!8890))))))))

(assert (= (and d!43724 c!10906) b!51281))

(assert (= (and d!43724 (not c!10906)) b!51282))

(declare-fun m!55007 () Bool)

(assert (=> b!51282 m!55007))

(declare-fun m!55009 () Bool)

(assert (=> b!51282 m!55009))

(assert (=> d!43612 d!43724))

(declare-fun d!43726 () Bool)

(assert (=> d!43726 (= (nodeContent!0 (head!634 (tail!658 lt!8885))) (union (insert (elem!81 (head!634 (tail!658 lt!8885))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 (tail!658 lt!8885))))))))

(declare-fun bs!23736 () Bool)

(assert (= bs!23736 d!43726))

(declare-fun m!55011 () Bool)

(assert (=> bs!23736 m!55011))

(declare-fun m!55013 () Bool)

(assert (=> bs!23736 m!55013))

(assert (=> b!51126 d!43726))

(declare-fun d!43728 () Bool)

(declare-fun c!10907 () Bool)

(assert (=> d!43728 (= c!10907 (is-Empty!105 (tail!658 (tail!658 lt!8885))))))

(declare-fun e!26644 () (Set (_ BitVec 32)))

(assert (=> d!43728 (= (heapContent!0 (tail!658 (tail!658 lt!8885))) e!26644)))

(declare-fun b!51283 () Bool)

(assert (=> b!51283 (= e!26644 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51284 () Bool)

(assert (=> b!51284 (= e!26644 (union (nodeContent!0 (head!634 (tail!658 (tail!658 lt!8885)))) (heapContent!0 (tail!658 (tail!658 (tail!658 lt!8885))))))))

(assert (= (and d!43728 c!10907) b!51283))

(assert (= (and d!43728 (not c!10907)) b!51284))

(declare-fun m!55015 () Bool)

(assert (=> b!51284 m!55015))

(declare-fun m!55017 () Bool)

(assert (=> b!51284 m!55017))

(assert (=> b!51126 d!43728))

(declare-fun d!43730 () Bool)

(assert (=> d!43730 (= (nodeContent!0 (head!634 (tail!658 h1!23))) (union (insert (elem!81 (head!634 (tail!658 h1!23))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 (tail!658 h1!23))))))))

(declare-fun bs!23737 () Bool)

(assert (= bs!23737 d!43730))

(declare-fun m!55019 () Bool)

(assert (=> bs!23737 m!55019))

(declare-fun m!55021 () Bool)

(assert (=> bs!23737 m!55021))

(assert (=> b!51138 d!43730))

(assert (=> b!51138 d!43670))

(declare-fun d!43732 () Bool)

(declare-fun lt!8957 () Heap!3)

(assert (=> d!43732 (= (heapContent!0 lt!8957) (union (heapContent!0 (tail!658 (nodes!9 (_1!160 (getMin!0 h0!5))))) (heapContent!0 (Nodes!2 (head!634 (nodes!9 (_1!160 (getMin!0 h0!5)))) Empty!105))))))

(declare-fun e!26645 () Heap!3)

(assert (=> d!43732 (= lt!8957 e!26645)))

(declare-fun c!10908 () Bool)

(assert (=> d!43732 (= c!10908 (is-Empty!105 (tail!658 (nodes!9 (_1!160 (getMin!0 h0!5))))))))

(assert (=> d!43732 (= (reverse0!2 (tail!658 (nodes!9 (_1!160 (getMin!0 h0!5)))) (Nodes!2 (head!634 (nodes!9 (_1!160 (getMin!0 h0!5)))) Empty!105)) lt!8957)))

(declare-fun b!51285 () Bool)

(assert (=> b!51285 (= e!26645 (Nodes!2 (head!634 (nodes!9 (_1!160 (getMin!0 h0!5)))) Empty!105))))

(declare-fun b!51286 () Bool)

(assert (=> b!51286 (= e!26645 (reverse0!2 (tail!658 (tail!658 (nodes!9 (_1!160 (getMin!0 h0!5))))) (Nodes!2 (head!634 (tail!658 (nodes!9 (_1!160 (getMin!0 h0!5))))) (Nodes!2 (head!634 (nodes!9 (_1!160 (getMin!0 h0!5)))) Empty!105))))))

(assert (= (and d!43732 c!10908) b!51285))

(assert (= (and d!43732 (not c!10908)) b!51286))

(declare-fun m!55023 () Bool)

(assert (=> d!43732 m!55023))

(assert (=> d!43732 m!54831))

(declare-fun m!55025 () Bool)

(assert (=> d!43732 m!55025))

(declare-fun m!55027 () Bool)

(assert (=> b!51286 m!55027))

(assert (=> b!51188 d!43732))

(declare-fun b!51290 () Bool)

(declare-fun e!26646 () Heap!3)

(assert (=> b!51290 (= e!26646 (insertNode!0 (link!0 (link!0 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5)))) (head!634 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))))) (head!634 (tail!658 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))))) (tail!658 (tail!658 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun d!43734 () Bool)

(declare-fun lt!8958 () Heap!3)

(assert (=> d!43734 (= (heapContent!0 lt!8958) (union (nodeContent!0 (link!0 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5)))) (head!634 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))))) (heapContent!0 (tail!658 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun e!26647 () Heap!3)

(assert (=> d!43734 (= lt!8958 e!26647)))

(declare-fun c!10910 () Bool)

(assert (=> d!43734 (= c!10910 (is-Empty!105 (tail!658 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(assert (=> d!43734 (= (insertNode!0 (link!0 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5)))) (head!634 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))))) (tail!658 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))))) lt!8958)))

(declare-fun b!51288 () Bool)

(assert (=> b!51288 (= e!26647 e!26646)))

(declare-fun c!10909 () Bool)

(assert (=> b!51288 (= c!10909 (< (rank!9 (link!0 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5)))) (head!634 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))))) (rank!9 (head!634 (tail!658 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))))))))))

(declare-fun b!51289 () Bool)

(assert (=> b!51289 (= e!26646 (Nodes!2 (link!0 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5)))) (head!634 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))))) (tail!658 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(declare-fun b!51287 () Bool)

(assert (=> b!51287 (= e!26647 (Nodes!2 (link!0 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5)))) (head!634 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))))) Empty!105))))

(assert (= (and b!51288 c!10909) b!51289))

(assert (= (and b!51288 (not c!10909)) b!51290))

(assert (= (and d!43734 c!10910) b!51287))

(assert (= (and d!43734 (not c!10910)) b!51288))

(assert (=> b!51290 m!54777))

(declare-fun m!55029 () Bool)

(assert (=> b!51290 m!55029))

(assert (=> b!51290 m!55029))

(declare-fun m!55031 () Bool)

(assert (=> b!51290 m!55031))

(declare-fun m!55033 () Bool)

(assert (=> d!43734 m!55033))

(assert (=> d!43734 m!54777))

(declare-fun m!55035 () Bool)

(assert (=> d!43734 m!55035))

(assert (=> d!43734 m!54959))

(assert (=> b!51158 d!43734))

(declare-fun d!43736 () Bool)

(assert (=> d!43736 (= (link!0 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5)))) (head!634 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))))) (ite (bvsle (elem!81 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5))))) (elem!81 (head!634 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))))) (Node!35 (+ (rank!9 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5))))) 1) (elem!81 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5))))) (Nodes!2 (head!634 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))) (nodes!9 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5))))))) (Node!35 (+ (rank!9 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5))))) 1) (elem!81 (head!634 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5)))))) (Nodes!2 (link!0 (head!634 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (head!634 (_2!160 (getMin!0 h0!5)))) (nodes!9 (head!634 (merge!1 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))) (tail!658 (_2!160 (getMin!0 h0!5))))))))))))

(assert (=> b!51158 d!43736))

(declare-fun d!43738 () Bool)

(assert (=> d!43738 (= (nodeContent!0 (head!634 lt!8895)) (union (insert (elem!81 (head!634 lt!8895)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 lt!8895)))))))

(declare-fun bs!23738 () Bool)

(assert (= bs!23738 d!43738))

(declare-fun m!55037 () Bool)

(assert (=> bs!23738 m!55037))

(declare-fun m!55039 () Bool)

(assert (=> bs!23738 m!55039))

(assert (=> b!51134 d!43738))

(declare-fun d!43740 () Bool)

(declare-fun c!10911 () Bool)

(assert (=> d!43740 (= c!10911 (is-Empty!105 (tail!658 lt!8895)))))

(declare-fun e!26648 () (Set (_ BitVec 32)))

(assert (=> d!43740 (= (heapContent!0 (tail!658 lt!8895)) e!26648)))

(declare-fun b!51291 () Bool)

(assert (=> b!51291 (= e!26648 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51292 () Bool)

(assert (=> b!51292 (= e!26648 (union (nodeContent!0 (head!634 (tail!658 lt!8895))) (heapContent!0 (tail!658 (tail!658 lt!8895)))))))

(assert (= (and d!43740 c!10911) b!51291))

(assert (= (and d!43740 (not c!10911)) b!51292))

(declare-fun m!55041 () Bool)

(assert (=> b!51292 m!55041))

(declare-fun m!55043 () Bool)

(assert (=> b!51292 m!55043))

(assert (=> b!51134 d!43740))

(declare-fun d!43742 () Bool)

(assert (=> d!43742 (= (nodeContent!0 (head!634 (tail!658 lt!8884))) (union (insert (elem!81 (head!634 (tail!658 lt!8884))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 (tail!658 lt!8884))))))))

(declare-fun bs!23739 () Bool)

(assert (= bs!23739 d!43742))

(declare-fun m!55045 () Bool)

(assert (=> bs!23739 m!55045))

(declare-fun m!55047 () Bool)

(assert (=> bs!23739 m!55047))

(assert (=> b!51140 d!43742))

(declare-fun d!43744 () Bool)

(declare-fun c!10912 () Bool)

(assert (=> d!43744 (= c!10912 (is-Empty!105 (tail!658 (tail!658 lt!8884))))))

(declare-fun e!26649 () (Set (_ BitVec 32)))

(assert (=> d!43744 (= (heapContent!0 (tail!658 (tail!658 lt!8884))) e!26649)))

(declare-fun b!51293 () Bool)

(assert (=> b!51293 (= e!26649 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51294 () Bool)

(assert (=> b!51294 (= e!26649 (union (nodeContent!0 (head!634 (tail!658 (tail!658 lt!8884)))) (heapContent!0 (tail!658 (tail!658 (tail!658 lt!8884))))))))

(assert (= (and d!43744 c!10912) b!51293))

(assert (= (and d!43744 (not c!10912)) b!51294))

(declare-fun m!55049 () Bool)

(assert (=> b!51294 m!55049))

(declare-fun m!55051 () Bool)

(assert (=> b!51294 m!55051))

(assert (=> b!51140 d!43744))

(declare-fun d!43746 () Bool)

(assert (=> d!43746 (= (nodeContent!0 (head!634 (_2!160 lt!8921))) (union (insert (elem!81 (head!634 (_2!160 lt!8921))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 (_2!160 lt!8921))))))))

(declare-fun bs!23740 () Bool)

(assert (= bs!23740 d!43746))

(declare-fun m!55053 () Bool)

(assert (=> bs!23740 m!55053))

(declare-fun m!55055 () Bool)

(assert (=> bs!23740 m!55055))

(assert (=> b!51154 d!43746))

(declare-fun d!43748 () Bool)

(declare-fun c!10913 () Bool)

(assert (=> d!43748 (= c!10913 (is-Empty!105 (tail!658 (_2!160 lt!8921))))))

(declare-fun e!26650 () (Set (_ BitVec 32)))

(assert (=> d!43748 (= (heapContent!0 (tail!658 (_2!160 lt!8921))) e!26650)))

(declare-fun b!51295 () Bool)

(assert (=> b!51295 (= e!26650 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51296 () Bool)

(assert (=> b!51296 (= e!26650 (union (nodeContent!0 (head!634 (tail!658 (_2!160 lt!8921)))) (heapContent!0 (tail!658 (tail!658 (_2!160 lt!8921))))))))

(assert (= (and d!43748 c!10913) b!51295))

(assert (= (and d!43748 (not c!10913)) b!51296))

(declare-fun m!55057 () Bool)

(assert (=> b!51296 m!55057))

(declare-fun m!55059 () Bool)

(assert (=> b!51296 m!55059))

(assert (=> b!51154 d!43748))

(declare-fun d!43750 () Bool)

(declare-fun c!10914 () Bool)

(assert (=> d!43750 (= c!10914 (is-Empty!105 (nodes!9 (head!634 h1!23))))))

(declare-fun e!26651 () (Set (_ BitVec 32)))

(assert (=> d!43750 (= (heapContent!0 (nodes!9 (head!634 h1!23))) e!26651)))

(declare-fun b!51297 () Bool)

(assert (=> b!51297 (= e!26651 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51298 () Bool)

(assert (=> b!51298 (= e!26651 (union (nodeContent!0 (head!634 (nodes!9 (head!634 h1!23)))) (heapContent!0 (tail!658 (nodes!9 (head!634 h1!23))))))))

(assert (= (and d!43750 c!10914) b!51297))

(assert (= (and d!43750 (not c!10914)) b!51298))

(declare-fun m!55061 () Bool)

(assert (=> b!51298 m!55061))

(declare-fun m!55063 () Bool)

(assert (=> b!51298 m!55063))

(assert (=> d!43578 d!43750))

(declare-fun d!43752 () Bool)

(assert (=> d!43752 (= (nodeContent!0 (head!634 (_2!160 (getMin!0 h0!5)))) (union (insert (elem!81 (head!634 (_2!160 (getMin!0 h0!5)))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 (_2!160 (getMin!0 h0!5)))))))))

(declare-fun bs!23741 () Bool)

(assert (= bs!23741 d!43752))

(declare-fun m!55065 () Bool)

(assert (=> bs!23741 m!55065))

(declare-fun m!55067 () Bool)

(assert (=> bs!23741 m!55067))

(assert (=> b!51132 d!43752))

(assert (=> b!51132 d!43706))

(declare-fun d!43754 () Bool)

(assert (=> d!43754 (= (nodeContent!0 (head!634 lt!8900)) (union (insert (elem!81 (head!634 lt!8900)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 lt!8900)))))))

(declare-fun bs!23742 () Bool)

(assert (= bs!23742 d!43754))

(declare-fun m!55069 () Bool)

(assert (=> bs!23742 m!55069))

(declare-fun m!55071 () Bool)

(assert (=> bs!23742 m!55071))

(assert (=> b!51150 d!43754))

(declare-fun d!43756 () Bool)

(declare-fun c!10915 () Bool)

(assert (=> d!43756 (= c!10915 (is-Empty!105 (tail!658 lt!8900)))))

(declare-fun e!26652 () (Set (_ BitVec 32)))

(assert (=> d!43756 (= (heapContent!0 (tail!658 lt!8900)) e!26652)))

(declare-fun b!51299 () Bool)

(assert (=> b!51299 (= e!26652 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51300 () Bool)

(assert (=> b!51300 (= e!26652 (union (nodeContent!0 (head!634 (tail!658 lt!8900))) (heapContent!0 (tail!658 (tail!658 lt!8900)))))))

(assert (= (and d!43756 c!10915) b!51299))

(assert (= (and d!43756 (not c!10915)) b!51300))

(declare-fun m!55073 () Bool)

(assert (=> b!51300 m!55073))

(declare-fun m!55075 () Bool)

(assert (=> b!51300 m!55075))

(assert (=> b!51150 d!43756))

(declare-fun d!43758 () Bool)

(assert (=> d!43758 (= (nodeContent!0 (head!634 lt!8909)) (union (insert (elem!81 (head!634 lt!8909)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!9 (head!634 lt!8909)))))))

(declare-fun bs!23743 () Bool)

(assert (= bs!23743 d!43758))

(declare-fun m!55077 () Bool)

(assert (=> bs!23743 m!55077))

(declare-fun m!55079 () Bool)

(assert (=> bs!23743 m!55079))

(assert (=> b!51128 d!43758))

(declare-fun d!43760 () Bool)

(declare-fun c!10916 () Bool)

(assert (=> d!43760 (= c!10916 (is-Empty!105 (tail!658 lt!8909)))))

(declare-fun e!26653 () (Set (_ BitVec 32)))

(assert (=> d!43760 (= (heapContent!0 (tail!658 lt!8909)) e!26653)))

(declare-fun b!51301 () Bool)

(assert (=> b!51301 (= e!26653 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51302 () Bool)

(assert (=> b!51302 (= e!26653 (union (nodeContent!0 (head!634 (tail!658 lt!8909))) (heapContent!0 (tail!658 (tail!658 lt!8909)))))))

(assert (= (and d!43760 c!10916) b!51301))

(assert (= (and d!43760 (not c!10916)) b!51302))

(declare-fun m!55081 () Bool)

(assert (=> b!51302 m!55081))

(declare-fun m!55083 () Bool)

(assert (=> b!51302 m!55083))

(assert (=> b!51128 d!43760))

(assert (=> b!51121 d!43692))

(declare-fun e!26658 () Heap!3)

(declare-fun lt!8960 () Bool)

(declare-fun b!51303 () Bool)

(assert (=> b!51303 (= e!26658 (merge!1 (ite lt!8960 (tail!658 (ite lt!8931 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (ite lt!8931 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (ite lt!8960 (ite lt!8931 (tail!658 (_2!160 (getMin!0 h0!5))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))) (tail!658 (ite lt!8931 (tail!658 (_2!160 (getMin!0 h0!5))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))))))))

(declare-fun b!51304 () Bool)

(declare-fun e!26654 () Heap!3)

(assert (=> b!51304 (= e!26654 (insertNode!0 (link!0 (head!634 (ite lt!8931 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (head!634 (ite lt!8931 (tail!658 (_2!160 (getMin!0 h0!5))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))))) (merge!1 (tail!658 (ite lt!8931 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (tail!658 (ite lt!8931 (tail!658 (_2!160 (getMin!0 h0!5))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))))))))

(declare-fun b!51305 () Bool)

(declare-fun res!23531 () Heap!3)

(assert (=> b!51305 (= e!26658 res!23531)))

(assert (=> b!51305 true))

(assert (=> b!51305 true))

(declare-fun d!43762 () Bool)

(declare-fun lt!8961 () Heap!3)

(assert (=> d!43762 (= (heapContent!0 lt!8961) (union (heapContent!0 (ite lt!8931 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) (heapContent!0 (ite lt!8931 (tail!658 (_2!160 (getMin!0 h0!5))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))))))))

(declare-fun e!26656 () Heap!3)

(assert (=> d!43762 (= lt!8961 e!26656)))

(declare-fun c!10920 () Bool)

(assert (=> d!43762 (= c!10920 (is-Empty!105 (ite lt!8931 (tail!658 (_2!160 (getMin!0 h0!5))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))))))

(assert (=> d!43762 (= (merge!1 (ite lt!8931 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (ite lt!8931 (tail!658 (_2!160 (getMin!0 h0!5))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))) lt!8961)))

(declare-fun lt!8959 () Heap!3)

(declare-fun b!51306 () Bool)

(assert (=> b!51306 (= e!26654 (Nodes!2 (head!634 (ite lt!8931 (tail!658 (_2!160 (getMin!0 h0!5))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))) lt!8959))))

(declare-fun b!51307 () Bool)

(assert (=> b!51307 (= e!26656 (ite lt!8931 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))

(declare-fun e!26657 () Heap!3)

(declare-fun b!51308 () Bool)

(assert (=> b!51308 (= e!26657 (Nodes!2 (head!634 (ite lt!8931 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))) lt!8959))))

(declare-fun b!51309 () Bool)

(declare-fun e!26655 () Heap!3)

(assert (=> b!51309 (= e!26655 (ite lt!8931 (tail!658 (_2!160 (getMin!0 h0!5))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))))))

(declare-fun b!51310 () Bool)

(assert (=> b!51310 (= e!26655 e!26657)))

(declare-fun c!10921 () Bool)

(assert (=> b!51310 (= c!10921 lt!8960)))

(assert (=> b!51310 (= lt!8959 e!26658)))

(declare-fun c!10919 () Bool)

(assert (=> b!51310 (= c!10919 (or lt!8960 (< (rank!9 (head!634 (ite lt!8931 (tail!658 (_2!160 (getMin!0 h0!5))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))))) (rank!9 (head!634 (ite lt!8931 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))))))))

(assert (=> b!51310 (= lt!8960 (< (rank!9 (head!634 (ite lt!8931 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))))) (rank!9 (head!634 (ite lt!8931 (tail!658 (_2!160 (getMin!0 h0!5))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5)))))))))))

(declare-fun b!51311 () Bool)

(assert (=> b!51311 (= e!26656 e!26655)))

(declare-fun c!10918 () Bool)

(assert (=> b!51311 (= c!10918 (is-Empty!105 (ite lt!8931 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))))

(declare-fun b!51312 () Bool)

(assert (=> b!51312 (= e!26657 e!26654)))

(declare-fun c!10917 () Bool)

(assert (=> b!51312 (= c!10917 (< (rank!9 (head!634 (ite lt!8931 (tail!658 (_2!160 (getMin!0 h0!5))) (tail!658 (tail!658 (_2!160 (getMin!0 h0!5))))))) (rank!9 (head!634 (ite lt!8931 (tail!658 (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5)))))) (tail!658 (reverse!3 (nodes!9 (_1!160 (getMin!0 h0!5))))))))))))

(assert (= (and b!51310 c!10919) b!51303))

(assert (= (and b!51310 (not c!10919)) b!51305))

(assert (= (and b!51312 c!10917) b!51306))

(assert (= (and b!51312 (not c!10917)) b!51304))

(assert (= (and b!51310 c!10921) b!51308))

(assert (= (and b!51310 (not c!10921)) b!51312))

(assert (= (and b!51311 c!10918) b!51309))

(assert (= (and b!51311 (not c!10918)) b!51310))

(assert (= (and d!43762 c!10920) b!51307))

(assert (= (and d!43762 (not c!10920)) b!51311))

(declare-fun m!55085 () Bool)

(assert (=> b!51303 m!55085))

(declare-fun m!55087 () Bool)

(assert (=> b!51304 m!55087))

(declare-fun m!55089 () Bool)

(assert (=> b!51304 m!55089))

(assert (=> b!51304 m!55087))

(assert (=> b!51304 m!55089))

(declare-fun m!55091 () Bool)

(assert (=> b!51304 m!55091))

(declare-fun m!55093 () Bool)

(assert (=> d!43762 m!55093))

(declare-fun m!55095 () Bool)

(assert (=> d!43762 m!55095))

(declare-fun m!55097 () Bool)

(assert (=> d!43762 m!55097))

(assert (=> b!51159 d!43762))

(declare-fun d!43764 () Bool)

(declare-fun c!10922 () Bool)

(assert (=> d!43764 (= c!10922 (is-Empty!105 (nodes!9 (_1!160 lt!8921))))))

(declare-fun e!26659 () (Set (_ BitVec 32)))

(assert (=> d!43764 (= (heapContent!0 (nodes!9 (_1!160 lt!8921))) e!26659)))

(declare-fun b!51313 () Bool)

(assert (=> b!51313 (= e!26659 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51314 () Bool)

(assert (=> b!51314 (= e!26659 (union (nodeContent!0 (head!634 (nodes!9 (_1!160 lt!8921)))) (heapContent!0 (tail!658 (nodes!9 (_1!160 lt!8921))))))))

(assert (= (and d!43764 c!10922) b!51313))

(assert (= (and d!43764 (not c!10922)) b!51314))

(declare-fun m!55099 () Bool)

(assert (=> b!51314 m!55099))

(declare-fun m!55101 () Bool)

(assert (=> b!51314 m!55101))

(assert (=> d!43616 d!43764))

(push 1)

(assert (not d!43696))

(assert (not d!43682))

(assert (not b!51300))

(assert (not b!51296))

(assert (not b!51266))

(assert (not b!51269))

(assert (not b!51303))

(assert (not b!51204))

(assert (not b!51280))

(assert (not d!43732))

(assert (not b!51251))

(assert (not b!51292))

(assert (not d!43708))

(assert (not d!43726))

(assert (not b!51304))

(assert (not b!51198))

(assert (not b!51262))

(assert (not b!51258))

(assert (not b!51226))

(assert (not b!51190))

(assert (not b!51264))

(assert (not b!51270))

(assert (not b!51314))

(assert (not b!51196))

(assert (not b!51294))

(assert (not b!51268))

(assert (not d!43746))

(assert (not b!51298))

(assert (not b!51194))

(assert (not d!43690))

(assert (not b!51247))

(assert (not d!43762))

(assert (not b!51232))

(assert (not b!51222))

(assert (not d!43658))

(assert (not d!43716))

(assert (not b!51208))

(assert (not b!51224))

(assert (not b!51250))

(assert (not d!43686))

(assert (not d!43652))

(assert (not d!43730))

(assert (not d!43742))

(assert (not b!51210))

(assert (not b!51284))

(assert (not d!43722))

(assert (not b!51220))

(assert (not b!51256))

(assert (not b!51237))

(assert (not b!51236))

(assert (not b!51202))

(assert (not b!51238))

(assert (not d!43752))

(assert (not d!43758))

(assert (not b!51290))

(assert (not d!43734))

(assert (not d!43738))

(assert (not d!43680))

(assert (not b!51192))

(assert (not b!51282))

(assert (not d!43754))

(assert (not b!51260))

(assert (not b!51200))

(assert (not b!51230))

(assert (not d!43666))

(assert (not d!43656))

(assert (not b!51302))

(assert (not b!51228))

(assert (not d!43662))

(assert (not b!51209))

(assert (not b!51253))

(assert (not b!51286))

(assert (not d!43720))

(assert (not b!51254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7010 () Bool)

(assert start!7010)

(declare-fun b!51654 () Bool)

(declare-fun res!23619 () Bool)

(declare-fun e!26826 () Bool)

(assert (=> b!51654 (=> (not res!23619) (not e!26826))))

(declare-datatypes () ((Node!58 (Node!59 (rank!21 Int) (elem!93 (_ BitVec 32)) (nodes!21 Heap!15))) (Heap!15 (Empty!117) (Nodes!14 (head!646 Node!58) (tail!670 Heap!15)))))

(declare-fun h3!1 () Heap!15)

(declare-fun h2!18 () Heap!15)

(declare-fun insert!4 ((_ BitVec 32) Heap!15) Heap!15)

(assert (=> b!51654 (= res!23619 (= h3!1 (insert!4 #b00000000000000000000000000000000 h2!18)))))

(declare-fun b!51655 () Bool)

(declare-fun res!23624 () Bool)

(assert (=> b!51655 (=> (not res!23624) (not e!26826))))

(declare-fun h1!22 () Heap!15)

(declare-fun h0!4 () Heap!15)

(assert (=> b!51655 (= res!23624 (= h1!22 (insert!4 #b00000000000000000000000000101010 h0!4)))))

(declare-fun b!51656 () Bool)

(declare-fun res!23625 () Bool)

(declare-fun e!26825 () Bool)

(assert (=> b!51656 (=> res!23625 e!26825)))

(declare-datatypes () ((OptInt!5 (Some!229 (value!3241 (_ BitVec 32))) (None!230))))

(declare-fun findMin!0 (Heap!15) OptInt!5)

(assert (=> b!51656 (= res!23625 (not (= (findMin!0 h2!18) (Some!229 #b00000000000000000000000000101010))))))

(declare-fun b!51657 () Bool)

(declare-fun res!23620 () Bool)

(assert (=> b!51657 (=> res!23620 e!26825)))

(assert (=> b!51657 (= res!23620 (not (= (findMin!0 h1!22) (Some!229 #b00000000000000000000000000101010))))))

(declare-fun b!51658 () Bool)

(assert (=> b!51658 (= e!26825 (not (= (findMin!0 h3!1) (Some!229 #b00000000000000000000000000000000))))))

(declare-fun b!51659 () Bool)

(declare-fun res!23622 () Bool)

(assert (=> b!51659 (=> (not res!23622) (not e!26826))))

(assert (=> b!51659 (= res!23622 (= h2!18 (insert!4 #b00000000000000000000000001001000 h1!22)))))

(declare-fun res!23623 () Bool)

(assert (=> start!7010 (=> (not res!23623) (not e!26826))))

(assert (=> start!7010 (= res!23623 (= h0!4 Empty!117))))

(assert (=> start!7010 e!26826))

(assert (=> start!7010 true))

(declare-fun b!51660 () Bool)

(assert (=> b!51660 (= e!26826 e!26825)))

(declare-fun res!23621 () Bool)

(assert (=> b!51660 (=> res!23621 e!26825)))

(assert (=> b!51660 (= res!23621 (not (= (findMin!0 h0!4) None!230)))))

(assert (= (and start!7010 res!23623) b!51655))

(assert (= (and b!51655 res!23624) b!51659))

(assert (= (and b!51659 res!23622) b!51654))

(assert (= (and b!51654 res!23619) b!51660))

(assert (= (and b!51660 (not res!23621)) b!51657))

(assert (= (and b!51657 (not res!23620)) b!51656))

(assert (= (and b!51656 (not res!23625)) b!51658))

(declare-fun m!55583 () Bool)

(assert (=> b!51658 m!55583))

(declare-fun m!55585 () Bool)

(assert (=> b!51655 m!55585))

(declare-fun m!55587 () Bool)

(assert (=> b!51660 m!55587))

(declare-fun m!55589 () Bool)

(assert (=> b!51659 m!55589))

(declare-fun m!55591 () Bool)

(assert (=> b!51656 m!55591))

(declare-fun m!55593 () Bool)

(assert (=> b!51654 m!55593))

(declare-fun m!55595 () Bool)

(assert (=> b!51657 m!55595))

(push 1)

(assert (not b!51658))

(assert (not b!51660))

(assert (not b!51657))

(assert (not b!51655))

(assert (not b!51654))

(assert (not b!51656))

(assert (not b!51659))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!51677 () Bool)

(declare-fun e!26837 () Bool)

(declare-fun lt!9052 () OptInt!5)

(declare-fun heapContent!0 (Heap!15) (Set (_ BitVec 32)))

(assert (=> b!51677 (= e!26837 (member (value!3241 lt!9052) (heapContent!0 h1!22)))))

(declare-fun b!51678 () Bool)

(declare-fun e!26836 () OptInt!5)

(declare-fun e!26835 () (_ BitVec 32))

(assert (=> b!51678 (= e!26836 (Some!229 e!26835))))

(declare-fun c!11068 () Bool)

(assert (=> b!51678 (= c!11068 (bvslt (elem!93 (head!646 h1!22)) (value!3241 (findMin!0 (tail!670 h1!22)))))))

(declare-fun b!51679 () Bool)

(declare-fun isEmpty!6 (Heap!15) Bool)

(assert (=> b!51679 (= e!26837 (isEmpty!6 h1!22))))

(declare-fun d!43940 () Bool)

(assert (=> d!43940 e!26837))

(declare-fun c!11067 () Bool)

(assert (=> d!43940 (= c!11067 (is-None!230 lt!9052))))

(declare-fun e!26838 () OptInt!5)

(assert (=> d!43940 (= lt!9052 e!26838)))

(declare-fun c!11065 () Bool)

(assert (=> d!43940 (= c!11065 (is-Empty!117 h1!22))))

(assert (=> d!43940 (= (findMin!0 h1!22) lt!9052)))

(declare-fun b!51680 () Bool)

(assert (=> b!51680 (= e!26835 (elem!93 (head!646 h1!22)))))

(declare-fun b!51681 () Bool)

(assert (=> b!51681 (= e!26838 e!26836)))

(declare-fun c!11066 () Bool)

(assert (=> b!51681 (= c!11066 (is-None!230 (findMin!0 (tail!670 h1!22))))))

(declare-fun b!51682 () Bool)

(assert (=> b!51682 (= e!26836 (Some!229 (elem!93 (head!646 h1!22))))))

(declare-fun b!51683 () Bool)

(assert (=> b!51683 (= e!26838 None!230)))

(declare-fun b!51684 () Bool)

(assert (=> b!51684 (= e!26835 (value!3241 (findMin!0 (tail!670 h1!22))))))

(assert (= (and b!51678 c!11068) b!51680))

(assert (= (and b!51678 (not c!11068)) b!51684))

(assert (= (and b!51681 c!11066) b!51682))

(assert (= (and b!51681 (not c!11066)) b!51678))

(assert (= (and d!43940 c!11065) b!51683))

(assert (= (and d!43940 (not c!11065)) b!51681))

(assert (= (and d!43940 c!11067) b!51679))

(assert (= (and d!43940 (not c!11067)) b!51677))

(declare-fun m!55597 () Bool)

(assert (=> b!51679 m!55597))

(declare-fun m!55599 () Bool)

(assert (=> b!51684 m!55599))

(assert (=> b!51678 m!55599))

(declare-fun m!55601 () Bool)

(assert (=> b!51677 m!55601))

(declare-fun m!55603 () Bool)

(assert (=> b!51677 m!55603))

(assert (=> b!51681 m!55599))

(assert (=> b!51657 d!43940))

(declare-fun b!51685 () Bool)

(declare-fun e!26841 () Bool)

(declare-fun lt!9053 () OptInt!5)

(assert (=> b!51685 (= e!26841 (member (value!3241 lt!9053) (heapContent!0 h2!18)))))

(declare-fun b!51686 () Bool)

(declare-fun e!26840 () OptInt!5)

(declare-fun e!26839 () (_ BitVec 32))

(assert (=> b!51686 (= e!26840 (Some!229 e!26839))))

(declare-fun c!11072 () Bool)

(assert (=> b!51686 (= c!11072 (bvslt (elem!93 (head!646 h2!18)) (value!3241 (findMin!0 (tail!670 h2!18)))))))

(declare-fun b!51687 () Bool)

(assert (=> b!51687 (= e!26841 (isEmpty!6 h2!18))))

(declare-fun d!43942 () Bool)

(assert (=> d!43942 e!26841))

(declare-fun c!11071 () Bool)

(assert (=> d!43942 (= c!11071 (is-None!230 lt!9053))))

(declare-fun e!26842 () OptInt!5)

(assert (=> d!43942 (= lt!9053 e!26842)))

(declare-fun c!11069 () Bool)

(assert (=> d!43942 (= c!11069 (is-Empty!117 h2!18))))

(assert (=> d!43942 (= (findMin!0 h2!18) lt!9053)))

(declare-fun b!51688 () Bool)

(assert (=> b!51688 (= e!26839 (elem!93 (head!646 h2!18)))))

(declare-fun b!51689 () Bool)

(assert (=> b!51689 (= e!26842 e!26840)))

(declare-fun c!11070 () Bool)

(assert (=> b!51689 (= c!11070 (is-None!230 (findMin!0 (tail!670 h2!18))))))

(declare-fun b!51690 () Bool)

(assert (=> b!51690 (= e!26840 (Some!229 (elem!93 (head!646 h2!18))))))

(declare-fun b!51691 () Bool)

(assert (=> b!51691 (= e!26842 None!230)))

(declare-fun b!51692 () Bool)

(assert (=> b!51692 (= e!26839 (value!3241 (findMin!0 (tail!670 h2!18))))))

(assert (= (and b!51686 c!11072) b!51688))

(assert (= (and b!51686 (not c!11072)) b!51692))

(assert (= (and b!51689 c!11070) b!51690))

(assert (= (and b!51689 (not c!11070)) b!51686))

(assert (= (and d!43942 c!11069) b!51691))

(assert (= (and d!43942 (not c!11069)) b!51689))

(assert (= (and d!43942 c!11071) b!51687))

(assert (= (and d!43942 (not c!11071)) b!51685))

(declare-fun m!55605 () Bool)

(assert (=> b!51687 m!55605))

(declare-fun m!55607 () Bool)

(assert (=> b!51692 m!55607))

(assert (=> b!51686 m!55607))

(declare-fun m!55609 () Bool)

(assert (=> b!51685 m!55609))

(declare-fun m!55611 () Bool)

(assert (=> b!51685 m!55611))

(assert (=> b!51689 m!55607))

(assert (=> b!51656 d!43942))

(declare-fun d!43944 () Bool)

(declare-fun lt!9056 () Heap!15)

(assert (=> d!43944 (= (heapContent!0 lt!9056) (union (heapContent!0 h0!4) (insert #b00000000000000000000000000101010 (as emptyset (Set (_ BitVec 32))))))))

(declare-fun insertNode!0 (Node!58 Heap!15) Heap!15)

(assert (=> d!43944 (= lt!9056 (insertNode!0 (Node!59 0 #b00000000000000000000000000101010 Empty!117) h0!4))))

(assert (=> d!43944 (= (insert!4 #b00000000000000000000000000101010 h0!4) lt!9056)))

(declare-fun bs!23774 () Bool)

(assert (= bs!23774 d!43944))

(declare-fun m!55613 () Bool)

(assert (=> bs!23774 m!55613))

(declare-fun m!55615 () Bool)

(assert (=> bs!23774 m!55615))

(declare-fun m!55617 () Bool)

(assert (=> bs!23774 m!55617))

(declare-fun m!55619 () Bool)

(assert (=> bs!23774 m!55619))

(assert (=> b!51655 d!43944))

(declare-fun d!43946 () Bool)

(declare-fun lt!9057 () Heap!15)

(assert (=> d!43946 (= (heapContent!0 lt!9057) (union (heapContent!0 h1!22) (insert #b00000000000000000000000001001000 (as emptyset (Set (_ BitVec 32))))))))

(assert (=> d!43946 (= lt!9057 (insertNode!0 (Node!59 0 #b00000000000000000000000001001000 Empty!117) h1!22))))

(assert (=> d!43946 (= (insert!4 #b00000000000000000000000001001000 h1!22) lt!9057)))

(declare-fun bs!23775 () Bool)

(assert (= bs!23775 d!43946))

(declare-fun m!55621 () Bool)

(assert (=> bs!23775 m!55621))

(assert (=> bs!23775 m!55601))

(declare-fun m!55623 () Bool)

(assert (=> bs!23775 m!55623))

(declare-fun m!55625 () Bool)

(assert (=> bs!23775 m!55625))

(assert (=> b!51659 d!43946))

(declare-fun b!51693 () Bool)

(declare-fun e!26846 () Bool)

(declare-fun lt!9058 () OptInt!5)

(assert (=> b!51693 (= e!26846 (member (value!3241 lt!9058) (heapContent!0 h3!1)))))

(declare-fun b!51694 () Bool)

(declare-fun e!26845 () OptInt!5)

(declare-fun e!26844 () (_ BitVec 32))

(assert (=> b!51694 (= e!26845 (Some!229 e!26844))))

(declare-fun c!11076 () Bool)

(assert (=> b!51694 (= c!11076 (bvslt (elem!93 (head!646 h3!1)) (value!3241 (findMin!0 (tail!670 h3!1)))))))

(declare-fun b!51695 () Bool)

(assert (=> b!51695 (= e!26846 (isEmpty!6 h3!1))))

(declare-fun d!43948 () Bool)

(assert (=> d!43948 e!26846))

(declare-fun c!11075 () Bool)

(assert (=> d!43948 (= c!11075 (is-None!230 lt!9058))))

(declare-fun e!26847 () OptInt!5)

(assert (=> d!43948 (= lt!9058 e!26847)))

(declare-fun c!11073 () Bool)

(assert (=> d!43948 (= c!11073 (is-Empty!117 h3!1))))

(assert (=> d!43948 (= (findMin!0 h3!1) lt!9058)))

(declare-fun b!51696 () Bool)

(assert (=> b!51696 (= e!26844 (elem!93 (head!646 h3!1)))))

(declare-fun b!51697 () Bool)

(assert (=> b!51697 (= e!26847 e!26845)))

(declare-fun c!11074 () Bool)

(assert (=> b!51697 (= c!11074 (is-None!230 (findMin!0 (tail!670 h3!1))))))

(declare-fun b!51698 () Bool)

(assert (=> b!51698 (= e!26845 (Some!229 (elem!93 (head!646 h3!1))))))

(declare-fun b!51699 () Bool)

(assert (=> b!51699 (= e!26847 None!230)))

(declare-fun b!51700 () Bool)

(assert (=> b!51700 (= e!26844 (value!3241 (findMin!0 (tail!670 h3!1))))))

(assert (= (and b!51694 c!11076) b!51696))

(assert (= (and b!51694 (not c!11076)) b!51700))

(assert (= (and b!51697 c!11074) b!51698))

(assert (= (and b!51697 (not c!11074)) b!51694))

(assert (= (and d!43948 c!11073) b!51699))

(assert (= (and d!43948 (not c!11073)) b!51697))

(assert (= (and d!43948 c!11075) b!51695))

(assert (= (and d!43948 (not c!11075)) b!51693))

(declare-fun m!55627 () Bool)

(assert (=> b!51695 m!55627))

(declare-fun m!55629 () Bool)

(assert (=> b!51700 m!55629))

(assert (=> b!51694 m!55629))

(declare-fun m!55631 () Bool)

(assert (=> b!51693 m!55631))

(declare-fun m!55633 () Bool)

(assert (=> b!51693 m!55633))

(assert (=> b!51697 m!55629))

(assert (=> b!51658 d!43948))

(declare-fun d!43950 () Bool)

(declare-fun lt!9059 () Heap!15)

(assert (=> d!43950 (= (heapContent!0 lt!9059) (union (heapContent!0 h2!18) (insert #b00000000000000000000000000000000 (as emptyset (Set (_ BitVec 32))))))))

(assert (=> d!43950 (= lt!9059 (insertNode!0 (Node!59 0 #b00000000000000000000000000000000 Empty!117) h2!18))))

(assert (=> d!43950 (= (insert!4 #b00000000000000000000000000000000 h2!18) lt!9059)))

(declare-fun bs!23776 () Bool)

(assert (= bs!23776 d!43950))

(declare-fun m!55635 () Bool)

(assert (=> bs!23776 m!55635))

(assert (=> bs!23776 m!55609))

(declare-fun m!55637 () Bool)

(assert (=> bs!23776 m!55637))

(declare-fun m!55639 () Bool)

(assert (=> bs!23776 m!55639))

(assert (=> b!51654 d!43950))

(declare-fun b!51701 () Bool)

(declare-fun e!26850 () Bool)

(declare-fun lt!9060 () OptInt!5)

(assert (=> b!51701 (= e!26850 (member (value!3241 lt!9060) (heapContent!0 h0!4)))))

(declare-fun b!51702 () Bool)

(declare-fun e!26849 () OptInt!5)

(declare-fun e!26848 () (_ BitVec 32))

(assert (=> b!51702 (= e!26849 (Some!229 e!26848))))

(declare-fun c!11080 () Bool)

(assert (=> b!51702 (= c!11080 (bvslt (elem!93 (head!646 h0!4)) (value!3241 (findMin!0 (tail!670 h0!4)))))))

(declare-fun b!51703 () Bool)

(assert (=> b!51703 (= e!26850 (isEmpty!6 h0!4))))

(declare-fun d!43952 () Bool)

(assert (=> d!43952 e!26850))

(declare-fun c!11079 () Bool)

(assert (=> d!43952 (= c!11079 (is-None!230 lt!9060))))

(declare-fun e!26851 () OptInt!5)

(assert (=> d!43952 (= lt!9060 e!26851)))

(declare-fun c!11077 () Bool)

(assert (=> d!43952 (= c!11077 (is-Empty!117 h0!4))))

(assert (=> d!43952 (= (findMin!0 h0!4) lt!9060)))

(declare-fun b!51704 () Bool)

(assert (=> b!51704 (= e!26848 (elem!93 (head!646 h0!4)))))

(declare-fun b!51705 () Bool)

(assert (=> b!51705 (= e!26851 e!26849)))

(declare-fun c!11078 () Bool)

(assert (=> b!51705 (= c!11078 (is-None!230 (findMin!0 (tail!670 h0!4))))))

(declare-fun b!51706 () Bool)

(assert (=> b!51706 (= e!26849 (Some!229 (elem!93 (head!646 h0!4))))))

(declare-fun b!51707 () Bool)

(assert (=> b!51707 (= e!26851 None!230)))

(declare-fun b!51708 () Bool)

(assert (=> b!51708 (= e!26848 (value!3241 (findMin!0 (tail!670 h0!4))))))

(assert (= (and b!51702 c!11080) b!51704))

(assert (= (and b!51702 (not c!11080)) b!51708))

(assert (= (and b!51705 c!11078) b!51706))

(assert (= (and b!51705 (not c!11078)) b!51702))

(assert (= (and d!43952 c!11077) b!51707))

(assert (= (and d!43952 (not c!11077)) b!51705))

(assert (= (and d!43952 c!11079) b!51703))

(assert (= (and d!43952 (not c!11079)) b!51701))

(declare-fun m!55641 () Bool)

(assert (=> b!51703 m!55641))

(declare-fun m!55643 () Bool)

(assert (=> b!51708 m!55643))

(assert (=> b!51702 m!55643))

(assert (=> b!51701 m!55615))

(declare-fun m!55645 () Bool)

(assert (=> b!51701 m!55645))

(assert (=> b!51705 m!55643))

(assert (=> b!51660 d!43952))

(push 1)

(assert (not b!51679))

(assert (not b!51689))

(assert (not b!51695))

(assert (not b!51686))

(assert (not b!51678))

(assert (not b!51694))

(assert (not b!51708))

(assert (not b!51684))

(assert (not b!51701))

(assert (not b!51687))

(assert (not b!51703))

(assert (not b!51677))

(assert (not d!43950))

(assert (not b!51692))

(assert (not b!51685))

(assert (not b!51681))

(assert (not b!51693))

(assert (not b!51700))

(assert (not d!43946))

(assert (not b!51705))

(assert (not b!51697))

(assert (not d!43944))

(assert (not b!51702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!51709 () Bool)

(declare-fun e!26854 () Bool)

(declare-fun lt!9061 () OptInt!5)

(assert (=> b!51709 (= e!26854 (member (value!3241 lt!9061) (heapContent!0 (tail!670 h0!4))))))

(declare-fun b!51710 () Bool)

(declare-fun e!26853 () OptInt!5)

(declare-fun e!26852 () (_ BitVec 32))

(assert (=> b!51710 (= e!26853 (Some!229 e!26852))))

(declare-fun c!11084 () Bool)

(assert (=> b!51710 (= c!11084 (bvslt (elem!93 (head!646 (tail!670 h0!4))) (value!3241 (findMin!0 (tail!670 (tail!670 h0!4))))))))

(declare-fun b!51711 () Bool)

(assert (=> b!51711 (= e!26854 (isEmpty!6 (tail!670 h0!4)))))

(declare-fun d!43954 () Bool)

(assert (=> d!43954 e!26854))

(declare-fun c!11083 () Bool)

(assert (=> d!43954 (= c!11083 (is-None!230 lt!9061))))

(declare-fun e!26855 () OptInt!5)

(assert (=> d!43954 (= lt!9061 e!26855)))

(declare-fun c!11081 () Bool)

(assert (=> d!43954 (= c!11081 (is-Empty!117 (tail!670 h0!4)))))

(assert (=> d!43954 (= (findMin!0 (tail!670 h0!4)) lt!9061)))

(declare-fun b!51712 () Bool)

(assert (=> b!51712 (= e!26852 (elem!93 (head!646 (tail!670 h0!4))))))

(declare-fun b!51713 () Bool)

(assert (=> b!51713 (= e!26855 e!26853)))

(declare-fun c!11082 () Bool)

(assert (=> b!51713 (= c!11082 (is-None!230 (findMin!0 (tail!670 (tail!670 h0!4)))))))

(declare-fun b!51714 () Bool)

(assert (=> b!51714 (= e!26853 (Some!229 (elem!93 (head!646 (tail!670 h0!4)))))))

(declare-fun b!51715 () Bool)

(assert (=> b!51715 (= e!26855 None!230)))

(declare-fun b!51716 () Bool)

(assert (=> b!51716 (= e!26852 (value!3241 (findMin!0 (tail!670 (tail!670 h0!4)))))))

(assert (= (and b!51710 c!11084) b!51712))

(assert (= (and b!51710 (not c!11084)) b!51716))

(assert (= (and b!51713 c!11082) b!51714))

(assert (= (and b!51713 (not c!11082)) b!51710))

(assert (= (and d!43954 c!11081) b!51715))

(assert (= (and d!43954 (not c!11081)) b!51713))

(assert (= (and d!43954 c!11083) b!51711))

(assert (= (and d!43954 (not c!11083)) b!51709))

(declare-fun m!55647 () Bool)

(assert (=> b!51711 m!55647))

(declare-fun m!55649 () Bool)

(assert (=> b!51716 m!55649))

(assert (=> b!51710 m!55649))

(declare-fun m!55651 () Bool)

(assert (=> b!51709 m!55651))

(declare-fun m!55653 () Bool)

(assert (=> b!51709 m!55653))

(assert (=> b!51713 m!55649))

(assert (=> b!51702 d!43954))

(declare-fun d!43956 () Bool)

(declare-fun c!11087 () Bool)

(assert (=> d!43956 (= c!11087 (is-Empty!117 h2!18))))

(declare-fun e!26858 () (Set (_ BitVec 32)))

(assert (=> d!43956 (= (heapContent!0 h2!18) e!26858)))

(declare-fun b!51721 () Bool)

(assert (=> b!51721 (= e!26858 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51722 () Bool)

(declare-fun nodeContent!0 (Node!58) (Set (_ BitVec 32)))

(assert (=> b!51722 (= e!26858 (union (nodeContent!0 (head!646 h2!18)) (heapContent!0 (tail!670 h2!18))))))

(assert (= (and d!43956 c!11087) b!51721))

(assert (= (and d!43956 (not c!11087)) b!51722))

(declare-fun m!55655 () Bool)

(assert (=> b!51722 m!55655))

(declare-fun m!55657 () Bool)

(assert (=> b!51722 m!55657))

(assert (=> b!51685 d!43956))

(declare-fun b!51723 () Bool)

(declare-fun e!26861 () Bool)

(declare-fun lt!9062 () OptInt!5)

(assert (=> b!51723 (= e!26861 (member (value!3241 lt!9062) (heapContent!0 (tail!670 h1!22))))))

(declare-fun b!51724 () Bool)

(declare-fun e!26860 () OptInt!5)

(declare-fun e!26859 () (_ BitVec 32))

(assert (=> b!51724 (= e!26860 (Some!229 e!26859))))

(declare-fun c!11091 () Bool)

(assert (=> b!51724 (= c!11091 (bvslt (elem!93 (head!646 (tail!670 h1!22))) (value!3241 (findMin!0 (tail!670 (tail!670 h1!22))))))))

(declare-fun b!51725 () Bool)

(assert (=> b!51725 (= e!26861 (isEmpty!6 (tail!670 h1!22)))))

(declare-fun d!43958 () Bool)

(assert (=> d!43958 e!26861))

(declare-fun c!11090 () Bool)

(assert (=> d!43958 (= c!11090 (is-None!230 lt!9062))))

(declare-fun e!26862 () OptInt!5)

(assert (=> d!43958 (= lt!9062 e!26862)))

(declare-fun c!11088 () Bool)

(assert (=> d!43958 (= c!11088 (is-Empty!117 (tail!670 h1!22)))))

(assert (=> d!43958 (= (findMin!0 (tail!670 h1!22)) lt!9062)))

(declare-fun b!51726 () Bool)

(assert (=> b!51726 (= e!26859 (elem!93 (head!646 (tail!670 h1!22))))))

(declare-fun b!51727 () Bool)

(assert (=> b!51727 (= e!26862 e!26860)))

(declare-fun c!11089 () Bool)

(assert (=> b!51727 (= c!11089 (is-None!230 (findMin!0 (tail!670 (tail!670 h1!22)))))))

(declare-fun b!51728 () Bool)

(assert (=> b!51728 (= e!26860 (Some!229 (elem!93 (head!646 (tail!670 h1!22)))))))

(declare-fun b!51729 () Bool)

(assert (=> b!51729 (= e!26862 None!230)))

(declare-fun b!51730 () Bool)

(assert (=> b!51730 (= e!26859 (value!3241 (findMin!0 (tail!670 (tail!670 h1!22)))))))

(assert (= (and b!51724 c!11091) b!51726))

(assert (= (and b!51724 (not c!11091)) b!51730))

(assert (= (and b!51727 c!11089) b!51728))

(assert (= (and b!51727 (not c!11089)) b!51724))

(assert (= (and d!43958 c!11088) b!51729))

(assert (= (and d!43958 (not c!11088)) b!51727))

(assert (= (and d!43958 c!11090) b!51725))

(assert (= (and d!43958 (not c!11090)) b!51723))

(declare-fun m!55659 () Bool)

(assert (=> b!51725 m!55659))

(declare-fun m!55661 () Bool)

(assert (=> b!51730 m!55661))

(assert (=> b!51724 m!55661))

(declare-fun m!55663 () Bool)

(assert (=> b!51723 m!55663))

(declare-fun m!55665 () Bool)

(assert (=> b!51723 m!55665))

(assert (=> b!51727 m!55661))

(assert (=> b!51684 d!43958))

(declare-fun b!51731 () Bool)

(declare-fun e!26865 () Bool)

(declare-fun lt!9063 () OptInt!5)

(assert (=> b!51731 (= e!26865 (member (value!3241 lt!9063) (heapContent!0 (tail!670 h3!1))))))

(declare-fun b!51732 () Bool)

(declare-fun e!26864 () OptInt!5)

(declare-fun e!26863 () (_ BitVec 32))

(assert (=> b!51732 (= e!26864 (Some!229 e!26863))))

(declare-fun c!11095 () Bool)

(assert (=> b!51732 (= c!11095 (bvslt (elem!93 (head!646 (tail!670 h3!1))) (value!3241 (findMin!0 (tail!670 (tail!670 h3!1))))))))

(declare-fun b!51733 () Bool)

(assert (=> b!51733 (= e!26865 (isEmpty!6 (tail!670 h3!1)))))

(declare-fun d!43960 () Bool)

(assert (=> d!43960 e!26865))

(declare-fun c!11094 () Bool)

(assert (=> d!43960 (= c!11094 (is-None!230 lt!9063))))

(declare-fun e!26866 () OptInt!5)

(assert (=> d!43960 (= lt!9063 e!26866)))

(declare-fun c!11092 () Bool)

(assert (=> d!43960 (= c!11092 (is-Empty!117 (tail!670 h3!1)))))

(assert (=> d!43960 (= (findMin!0 (tail!670 h3!1)) lt!9063)))

(declare-fun b!51734 () Bool)

(assert (=> b!51734 (= e!26863 (elem!93 (head!646 (tail!670 h3!1))))))

(declare-fun b!51735 () Bool)

(assert (=> b!51735 (= e!26866 e!26864)))

(declare-fun c!11093 () Bool)

(assert (=> b!51735 (= c!11093 (is-None!230 (findMin!0 (tail!670 (tail!670 h3!1)))))))

(declare-fun b!51736 () Bool)

(assert (=> b!51736 (= e!26864 (Some!229 (elem!93 (head!646 (tail!670 h3!1)))))))

(declare-fun b!51737 () Bool)

(assert (=> b!51737 (= e!26866 None!230)))

(declare-fun b!51738 () Bool)

(assert (=> b!51738 (= e!26863 (value!3241 (findMin!0 (tail!670 (tail!670 h3!1)))))))

(assert (= (and b!51732 c!11095) b!51734))

(assert (= (and b!51732 (not c!11095)) b!51738))

(assert (= (and b!51735 c!11093) b!51736))

(assert (= (and b!51735 (not c!11093)) b!51732))

(assert (= (and d!43960 c!11092) b!51737))

(assert (= (and d!43960 (not c!11092)) b!51735))

(assert (= (and d!43960 c!11094) b!51733))

(assert (= (and d!43960 (not c!11094)) b!51731))

(declare-fun m!55667 () Bool)

(assert (=> b!51733 m!55667))

(declare-fun m!55669 () Bool)

(assert (=> b!51738 m!55669))

(assert (=> b!51732 m!55669))

(declare-fun m!55671 () Bool)

(assert (=> b!51731 m!55671))

(declare-fun m!55673 () Bool)

(assert (=> b!51731 m!55673))

(assert (=> b!51735 m!55669))

(assert (=> b!51700 d!43960))

(declare-fun d!43962 () Bool)

(declare-fun lt!9066 () Bool)

(assert (=> d!43962 (= lt!9066 (= (heapContent!0 h0!4) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!43962 (= lt!9066 (= h0!4 Empty!117))))

(assert (=> d!43962 (= (isEmpty!6 h0!4) lt!9066)))

(declare-fun bs!23777 () Bool)

(assert (= bs!23777 d!43962))

(assert (=> bs!23777 m!55615))

(assert (=> b!51703 d!43962))

(assert (=> b!51678 d!43958))

(declare-fun d!43964 () Bool)

(declare-fun c!11096 () Bool)

(assert (=> d!43964 (= c!11096 (is-Empty!117 h0!4))))

(declare-fun e!26867 () (Set (_ BitVec 32)))

(assert (=> d!43964 (= (heapContent!0 h0!4) e!26867)))

(declare-fun b!51739 () Bool)

(assert (=> b!51739 (= e!26867 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51740 () Bool)

(assert (=> b!51740 (= e!26867 (union (nodeContent!0 (head!646 h0!4)) (heapContent!0 (tail!670 h0!4))))))

(assert (= (and d!43964 c!11096) b!51739))

(assert (= (and d!43964 (not c!11096)) b!51740))

(declare-fun m!55675 () Bool)

(assert (=> b!51740 m!55675))

(assert (=> b!51740 m!55651))

(assert (=> b!51701 d!43964))

(assert (=> b!51694 d!43960))

(declare-fun b!51741 () Bool)

(declare-fun e!26870 () Bool)

(declare-fun lt!9067 () OptInt!5)

(assert (=> b!51741 (= e!26870 (member (value!3241 lt!9067) (heapContent!0 (tail!670 h2!18))))))

(declare-fun b!51742 () Bool)

(declare-fun e!26869 () OptInt!5)

(declare-fun e!26868 () (_ BitVec 32))

(assert (=> b!51742 (= e!26869 (Some!229 e!26868))))

(declare-fun c!11100 () Bool)

(assert (=> b!51742 (= c!11100 (bvslt (elem!93 (head!646 (tail!670 h2!18))) (value!3241 (findMin!0 (tail!670 (tail!670 h2!18))))))))

(declare-fun b!51743 () Bool)

(assert (=> b!51743 (= e!26870 (isEmpty!6 (tail!670 h2!18)))))

(declare-fun d!43966 () Bool)

(assert (=> d!43966 e!26870))

(declare-fun c!11099 () Bool)

(assert (=> d!43966 (= c!11099 (is-None!230 lt!9067))))

(declare-fun e!26871 () OptInt!5)

(assert (=> d!43966 (= lt!9067 e!26871)))

(declare-fun c!11097 () Bool)

(assert (=> d!43966 (= c!11097 (is-Empty!117 (tail!670 h2!18)))))

(assert (=> d!43966 (= (findMin!0 (tail!670 h2!18)) lt!9067)))

(declare-fun b!51744 () Bool)

(assert (=> b!51744 (= e!26868 (elem!93 (head!646 (tail!670 h2!18))))))

(declare-fun b!51745 () Bool)

(assert (=> b!51745 (= e!26871 e!26869)))

(declare-fun c!11098 () Bool)

(assert (=> b!51745 (= c!11098 (is-None!230 (findMin!0 (tail!670 (tail!670 h2!18)))))))

(declare-fun b!51746 () Bool)

(assert (=> b!51746 (= e!26869 (Some!229 (elem!93 (head!646 (tail!670 h2!18)))))))

(declare-fun b!51747 () Bool)

(assert (=> b!51747 (= e!26871 None!230)))

(declare-fun b!51748 () Bool)

(assert (=> b!51748 (= e!26868 (value!3241 (findMin!0 (tail!670 (tail!670 h2!18)))))))

(assert (= (and b!51742 c!11100) b!51744))

(assert (= (and b!51742 (not c!11100)) b!51748))

(assert (= (and b!51745 c!11098) b!51746))

(assert (= (and b!51745 (not c!11098)) b!51742))

(assert (= (and d!43966 c!11097) b!51747))

(assert (= (and d!43966 (not c!11097)) b!51745))

(assert (= (and d!43966 c!11099) b!51743))

(assert (= (and d!43966 (not c!11099)) b!51741))

(declare-fun m!55677 () Bool)

(assert (=> b!51743 m!55677))

(declare-fun m!55679 () Bool)

(assert (=> b!51748 m!55679))

(assert (=> b!51742 m!55679))

(assert (=> b!51741 m!55657))

(declare-fun m!55681 () Bool)

(assert (=> b!51741 m!55681))

(assert (=> b!51745 m!55679))

(assert (=> b!51686 d!43966))

(assert (=> b!51689 d!43966))

(declare-fun d!43968 () Bool)

(declare-fun c!11101 () Bool)

(assert (=> d!43968 (= c!11101 (is-Empty!117 lt!9057))))

(declare-fun e!26872 () (Set (_ BitVec 32)))

(assert (=> d!43968 (= (heapContent!0 lt!9057) e!26872)))

(declare-fun b!51749 () Bool)

(assert (=> b!51749 (= e!26872 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51750 () Bool)

(assert (=> b!51750 (= e!26872 (union (nodeContent!0 (head!646 lt!9057)) (heapContent!0 (tail!670 lt!9057))))))

(assert (= (and d!43968 c!11101) b!51749))

(assert (= (and d!43968 (not c!11101)) b!51750))

(declare-fun m!55683 () Bool)

(assert (=> b!51750 m!55683))

(declare-fun m!55685 () Bool)

(assert (=> b!51750 m!55685))

(assert (=> d!43946 d!43968))

(declare-fun d!43970 () Bool)

(declare-fun c!11102 () Bool)

(assert (=> d!43970 (= c!11102 (is-Empty!117 h1!22))))

(declare-fun e!26873 () (Set (_ BitVec 32)))

(assert (=> d!43970 (= (heapContent!0 h1!22) e!26873)))

(declare-fun b!51751 () Bool)

(assert (=> b!51751 (= e!26873 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51752 () Bool)

(assert (=> b!51752 (= e!26873 (union (nodeContent!0 (head!646 h1!22)) (heapContent!0 (tail!670 h1!22))))))

(assert (= (and d!43970 c!11102) b!51751))

(assert (= (and d!43970 (not c!11102)) b!51752))

(declare-fun m!55687 () Bool)

(assert (=> b!51752 m!55687))

(assert (=> b!51752 m!55663))

(assert (=> d!43946 d!43970))

(declare-fun d!43972 () Bool)

(declare-fun lt!9070 () Heap!15)

(assert (=> d!43972 (= (heapContent!0 lt!9070) (union (nodeContent!0 (Node!59 0 #b00000000000000000000000001001000 Empty!117)) (heapContent!0 h1!22)))))

(declare-fun e!26879 () Heap!15)

(assert (=> d!43972 (= lt!9070 e!26879)))

(declare-fun c!11108 () Bool)

(assert (=> d!43972 (= c!11108 (is-Empty!117 h1!22))))

(assert (=> d!43972 (= (insertNode!0 (Node!59 0 #b00000000000000000000000001001000 Empty!117) h1!22) lt!9070)))

(declare-fun b!51763 () Bool)

(declare-fun e!26878 () Heap!15)

(assert (=> b!51763 (= e!26878 (Nodes!14 (Node!59 0 #b00000000000000000000000001001000 Empty!117) h1!22))))

(declare-fun b!51762 () Bool)

(assert (=> b!51762 (= e!26879 e!26878)))

(declare-fun c!11107 () Bool)

(assert (=> b!51762 (= c!11107 (< (rank!21 (Node!59 0 #b00000000000000000000000001001000 Empty!117)) (rank!21 (head!646 h1!22))))))

(declare-fun b!51764 () Bool)

(declare-fun link!0 (Node!58 Node!58) Node!58)

(assert (=> b!51764 (= e!26878 (insertNode!0 (link!0 (Node!59 0 #b00000000000000000000000001001000 Empty!117) (head!646 h1!22)) (tail!670 h1!22)))))

(declare-fun b!51761 () Bool)

(assert (=> b!51761 (= e!26879 (Nodes!14 (Node!59 0 #b00000000000000000000000001001000 Empty!117) Empty!117))))

(assert (= (and b!51762 c!11107) b!51763))

(assert (= (and b!51762 (not c!11107)) b!51764))

(assert (= (and d!43972 c!11108) b!51761))

(assert (= (and d!43972 (not c!11108)) b!51762))

(declare-fun m!55689 () Bool)

(assert (=> d!43972 m!55689))

(declare-fun m!55691 () Bool)

(assert (=> d!43972 m!55691))

(assert (=> d!43972 m!55601))

(declare-fun m!55693 () Bool)

(assert (=> b!51764 m!55693))

(assert (=> b!51764 m!55693))

(declare-fun m!55695 () Bool)

(assert (=> b!51764 m!55695))

(assert (=> d!43946 d!43972))

(declare-fun d!43974 () Bool)

(declare-fun lt!9071 () Bool)

(assert (=> d!43974 (= lt!9071 (= (heapContent!0 h2!18) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!43974 (= lt!9071 (= h2!18 Empty!117))))

(assert (=> d!43974 (= (isEmpty!6 h2!18) lt!9071)))

(declare-fun bs!23778 () Bool)

(assert (= bs!23778 d!43974))

(assert (=> bs!23778 m!55609))

(assert (=> b!51687 d!43974))

(assert (=> b!51681 d!43958))

(assert (=> b!51692 d!43966))

(assert (=> b!51708 d!43954))

(declare-fun d!43976 () Bool)

(declare-fun c!11109 () Bool)

(assert (=> d!43976 (= c!11109 (is-Empty!117 lt!9059))))

(declare-fun e!26880 () (Set (_ BitVec 32)))

(assert (=> d!43976 (= (heapContent!0 lt!9059) e!26880)))

(declare-fun b!51765 () Bool)

(assert (=> b!51765 (= e!26880 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51766 () Bool)

(assert (=> b!51766 (= e!26880 (union (nodeContent!0 (head!646 lt!9059)) (heapContent!0 (tail!670 lt!9059))))))

(assert (= (and d!43976 c!11109) b!51765))

(assert (= (and d!43976 (not c!11109)) b!51766))

(declare-fun m!55697 () Bool)

(assert (=> b!51766 m!55697))

(declare-fun m!55699 () Bool)

(assert (=> b!51766 m!55699))

(assert (=> d!43950 d!43976))

(assert (=> d!43950 d!43956))

(declare-fun d!43978 () Bool)

(declare-fun lt!9072 () Heap!15)

(assert (=> d!43978 (= (heapContent!0 lt!9072) (union (nodeContent!0 (Node!59 0 #b00000000000000000000000000000000 Empty!117)) (heapContent!0 h2!18)))))

(declare-fun e!26882 () Heap!15)

(assert (=> d!43978 (= lt!9072 e!26882)))

(declare-fun c!11111 () Bool)

(assert (=> d!43978 (= c!11111 (is-Empty!117 h2!18))))

(assert (=> d!43978 (= (insertNode!0 (Node!59 0 #b00000000000000000000000000000000 Empty!117) h2!18) lt!9072)))

(declare-fun b!51769 () Bool)

(declare-fun e!26881 () Heap!15)

(assert (=> b!51769 (= e!26881 (Nodes!14 (Node!59 0 #b00000000000000000000000000000000 Empty!117) h2!18))))

(declare-fun b!51768 () Bool)

(assert (=> b!51768 (= e!26882 e!26881)))

(declare-fun c!11110 () Bool)

(assert (=> b!51768 (= c!11110 (< (rank!21 (Node!59 0 #b00000000000000000000000000000000 Empty!117)) (rank!21 (head!646 h2!18))))))

(declare-fun b!51770 () Bool)

(assert (=> b!51770 (= e!26881 (insertNode!0 (link!0 (Node!59 0 #b00000000000000000000000000000000 Empty!117) (head!646 h2!18)) (tail!670 h2!18)))))

(declare-fun b!51767 () Bool)

(assert (=> b!51767 (= e!26882 (Nodes!14 (Node!59 0 #b00000000000000000000000000000000 Empty!117) Empty!117))))

(assert (= (and b!51768 c!11110) b!51769))

(assert (= (and b!51768 (not c!11110)) b!51770))

(assert (= (and d!43978 c!11111) b!51767))

(assert (= (and d!43978 (not c!11111)) b!51768))

(declare-fun m!55701 () Bool)

(assert (=> d!43978 m!55701))

(declare-fun m!55703 () Bool)

(assert (=> d!43978 m!55703))

(assert (=> d!43978 m!55609))

(declare-fun m!55705 () Bool)

(assert (=> b!51770 m!55705))

(assert (=> b!51770 m!55705))

(declare-fun m!55707 () Bool)

(assert (=> b!51770 m!55707))

(assert (=> d!43950 d!43978))

(declare-fun d!43980 () Bool)

(declare-fun lt!9073 () Bool)

(assert (=> d!43980 (= lt!9073 (= (heapContent!0 h1!22) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!43980 (= lt!9073 (= h1!22 Empty!117))))

(assert (=> d!43980 (= (isEmpty!6 h1!22) lt!9073)))

(declare-fun bs!23779 () Bool)

(assert (= bs!23779 d!43980))

(assert (=> bs!23779 m!55601))

(assert (=> b!51679 d!43980))

(declare-fun d!43982 () Bool)

(declare-fun lt!9074 () Bool)

(assert (=> d!43982 (= lt!9074 (= (heapContent!0 h3!1) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!43982 (= lt!9074 (= h3!1 Empty!117))))

(assert (=> d!43982 (= (isEmpty!6 h3!1) lt!9074)))

(declare-fun bs!23780 () Bool)

(assert (= bs!23780 d!43982))

(assert (=> bs!23780 m!55631))

(assert (=> b!51695 d!43982))

(assert (=> b!51677 d!43970))

(declare-fun d!43984 () Bool)

(declare-fun c!11112 () Bool)

(assert (=> d!43984 (= c!11112 (is-Empty!117 h3!1))))

(declare-fun e!26883 () (Set (_ BitVec 32)))

(assert (=> d!43984 (= (heapContent!0 h3!1) e!26883)))

(declare-fun b!51771 () Bool)

(assert (=> b!51771 (= e!26883 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51772 () Bool)

(assert (=> b!51772 (= e!26883 (union (nodeContent!0 (head!646 h3!1)) (heapContent!0 (tail!670 h3!1))))))

(assert (= (and d!43984 c!11112) b!51771))

(assert (= (and d!43984 (not c!11112)) b!51772))

(declare-fun m!55709 () Bool)

(assert (=> b!51772 m!55709))

(assert (=> b!51772 m!55671))

(assert (=> b!51693 d!43984))

(assert (=> b!51697 d!43960))

(declare-fun d!43986 () Bool)

(declare-fun c!11113 () Bool)

(assert (=> d!43986 (= c!11113 (is-Empty!117 lt!9056))))

(declare-fun e!26884 () (Set (_ BitVec 32)))

(assert (=> d!43986 (= (heapContent!0 lt!9056) e!26884)))

(declare-fun b!51773 () Bool)

(assert (=> b!51773 (= e!26884 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51774 () Bool)

(assert (=> b!51774 (= e!26884 (union (nodeContent!0 (head!646 lt!9056)) (heapContent!0 (tail!670 lt!9056))))))

(assert (= (and d!43986 c!11113) b!51773))

(assert (= (and d!43986 (not c!11113)) b!51774))

(declare-fun m!55711 () Bool)

(assert (=> b!51774 m!55711))

(declare-fun m!55713 () Bool)

(assert (=> b!51774 m!55713))

(assert (=> d!43944 d!43986))

(assert (=> d!43944 d!43964))

(declare-fun d!43988 () Bool)

(declare-fun lt!9075 () Heap!15)

(assert (=> d!43988 (= (heapContent!0 lt!9075) (union (nodeContent!0 (Node!59 0 #b00000000000000000000000000101010 Empty!117)) (heapContent!0 h0!4)))))

(declare-fun e!26886 () Heap!15)

(assert (=> d!43988 (= lt!9075 e!26886)))

(declare-fun c!11115 () Bool)

(assert (=> d!43988 (= c!11115 (is-Empty!117 h0!4))))

(assert (=> d!43988 (= (insertNode!0 (Node!59 0 #b00000000000000000000000000101010 Empty!117) h0!4) lt!9075)))

(declare-fun b!51777 () Bool)

(declare-fun e!26885 () Heap!15)

(assert (=> b!51777 (= e!26885 (Nodes!14 (Node!59 0 #b00000000000000000000000000101010 Empty!117) h0!4))))

(declare-fun b!51776 () Bool)

(assert (=> b!51776 (= e!26886 e!26885)))

(declare-fun c!11114 () Bool)

(assert (=> b!51776 (= c!11114 (< (rank!21 (Node!59 0 #b00000000000000000000000000101010 Empty!117)) (rank!21 (head!646 h0!4))))))

(declare-fun b!51778 () Bool)

(assert (=> b!51778 (= e!26885 (insertNode!0 (link!0 (Node!59 0 #b00000000000000000000000000101010 Empty!117) (head!646 h0!4)) (tail!670 h0!4)))))

(declare-fun b!51775 () Bool)

(assert (=> b!51775 (= e!26886 (Nodes!14 (Node!59 0 #b00000000000000000000000000101010 Empty!117) Empty!117))))

(assert (= (and b!51776 c!11114) b!51777))

(assert (= (and b!51776 (not c!11114)) b!51778))

(assert (= (and d!43988 c!11115) b!51775))

(assert (= (and d!43988 (not c!11115)) b!51776))

(declare-fun m!55715 () Bool)

(assert (=> d!43988 m!55715))

(declare-fun m!55717 () Bool)

(assert (=> d!43988 m!55717))

(assert (=> d!43988 m!55615))

(declare-fun m!55719 () Bool)

(assert (=> b!51778 m!55719))

(assert (=> b!51778 m!55719))

(declare-fun m!55721 () Bool)

(assert (=> b!51778 m!55721))

(assert (=> d!43944 d!43988))

(assert (=> b!51705 d!43954))

(push 1)

(assert (not b!51710))

(assert (not b!51748))

(assert (not b!51716))

(assert (not b!51766))

(assert (not b!51772))

(assert (not d!43972))

(assert (not d!43988))

(assert (not b!51750))

(assert (not b!51741))

(assert (not b!51731))

(assert (not b!51752))

(assert (not b!51711))

(assert (not b!51713))

(assert (not b!51738))

(assert (not d!43978))

(assert (not b!51722))

(assert (not b!51742))

(assert (not b!51774))

(assert (not d!43980))

(assert (not b!51743))

(assert (not b!51730))

(assert (not b!51727))

(assert (not b!51725))

(assert (not b!51778))

(assert (not b!51733))

(assert (not b!51770))

(assert (not b!51745))

(assert (not d!43982))

(assert (not b!51723))

(assert (not d!43962))

(assert (not b!51709))

(assert (not b!51764))

(assert (not b!51740))

(assert (not d!43974))

(assert (not b!51724))

(assert (not b!51735))

(assert (not b!51732))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!43962 d!43964))

(declare-fun d!43990 () Bool)

(declare-fun c!11116 () Bool)

(assert (=> d!43990 (= c!11116 (is-Empty!117 lt!9072))))

(declare-fun e!26887 () (Set (_ BitVec 32)))

(assert (=> d!43990 (= (heapContent!0 lt!9072) e!26887)))

(declare-fun b!51779 () Bool)

(assert (=> b!51779 (= e!26887 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51780 () Bool)

(assert (=> b!51780 (= e!26887 (union (nodeContent!0 (head!646 lt!9072)) (heapContent!0 (tail!670 lt!9072))))))

(assert (= (and d!43990 c!11116) b!51779))

(assert (= (and d!43990 (not c!11116)) b!51780))

(declare-fun m!55723 () Bool)

(assert (=> b!51780 m!55723))

(declare-fun m!55725 () Bool)

(assert (=> b!51780 m!55725))

(assert (=> d!43978 d!43990))

(declare-fun d!43992 () Bool)

(assert (=> d!43992 (= (nodeContent!0 (Node!59 0 #b00000000000000000000000000000000 Empty!117)) (singleton #b00000000000000000000000000000000))))

(assert (=> d!43978 d!43992))

(assert (=> d!43978 d!43956))

(declare-fun d!43994 () Bool)

(declare-fun lt!9076 () Heap!15)

(assert (=> d!43994 (= (heapContent!0 lt!9076) (union (nodeContent!0 (link!0 (Node!59 0 #b00000000000000000000000000000000 Empty!117) (head!646 h2!18))) (heapContent!0 (tail!670 h2!18))))))

(declare-fun e!26889 () Heap!15)

(assert (=> d!43994 (= lt!9076 e!26889)))

(declare-fun c!11118 () Bool)

(assert (=> d!43994 (= c!11118 (is-Empty!117 (tail!670 h2!18)))))

(assert (=> d!43994 (= (insertNode!0 (link!0 (Node!59 0 #b00000000000000000000000000000000 Empty!117) (head!646 h2!18)) (tail!670 h2!18)) lt!9076)))

(declare-fun b!51783 () Bool)

(declare-fun e!26888 () Heap!15)

(assert (=> b!51783 (= e!26888 (Nodes!14 (link!0 (Node!59 0 #b00000000000000000000000000000000 Empty!117) (head!646 h2!18)) (tail!670 h2!18)))))

(declare-fun b!51782 () Bool)

(assert (=> b!51782 (= e!26889 e!26888)))

(declare-fun c!11117 () Bool)

(assert (=> b!51782 (= c!11117 (< (rank!21 (link!0 (Node!59 0 #b00000000000000000000000000000000 Empty!117) (head!646 h2!18))) (rank!21 (head!646 (tail!670 h2!18)))))))

(declare-fun b!51784 () Bool)

(assert (=> b!51784 (= e!26888 (insertNode!0 (link!0 (link!0 (Node!59 0 #b00000000000000000000000000000000 Empty!117) (head!646 h2!18)) (head!646 (tail!670 h2!18))) (tail!670 (tail!670 h2!18))))))

(declare-fun b!51781 () Bool)

(assert (=> b!51781 (= e!26889 (Nodes!14 (link!0 (Node!59 0 #b00000000000000000000000000000000 Empty!117) (head!646 h2!18)) Empty!117))))

(assert (= (and b!51782 c!11117) b!51783))

(assert (= (and b!51782 (not c!11117)) b!51784))

(assert (= (and d!43994 c!11118) b!51781))

(assert (= (and d!43994 (not c!11118)) b!51782))

(declare-fun m!55727 () Bool)

(assert (=> d!43994 m!55727))

(assert (=> d!43994 m!55705))

(declare-fun m!55729 () Bool)

(assert (=> d!43994 m!55729))

(assert (=> d!43994 m!55657))

(assert (=> b!51784 m!55705))

(declare-fun m!55731 () Bool)

(assert (=> b!51784 m!55731))

(assert (=> b!51784 m!55731))

(declare-fun m!55733 () Bool)

(assert (=> b!51784 m!55733))

(assert (=> b!51770 d!43994))

(declare-fun d!43996 () Bool)

(assert (=> d!43996 (= (link!0 (Node!59 0 #b00000000000000000000000000000000 Empty!117) (head!646 h2!18)) (ite (bvsle (elem!93 (Node!59 0 #b00000000000000000000000000000000 Empty!117)) (elem!93 (head!646 h2!18))) (Node!59 (+ (rank!21 (Node!59 0 #b00000000000000000000000000000000 Empty!117)) 1) (elem!93 (Node!59 0 #b00000000000000000000000000000000 Empty!117)) (Nodes!14 (head!646 h2!18) (nodes!21 (Node!59 0 #b00000000000000000000000000000000 Empty!117)))) (Node!59 (+ (rank!21 (Node!59 0 #b00000000000000000000000000000000 Empty!117)) 1) (elem!93 (head!646 h2!18)) (Nodes!14 (Node!59 0 #b00000000000000000000000000000000 Empty!117) (nodes!21 (head!646 h2!18))))))))

(assert (=> b!51770 d!43996))

(declare-fun d!43998 () Bool)

(declare-fun c!11119 () Bool)

(assert (=> d!43998 (= c!11119 (is-Empty!117 lt!9075))))

(declare-fun e!26890 () (Set (_ BitVec 32)))

(assert (=> d!43998 (= (heapContent!0 lt!9075) e!26890)))

(declare-fun b!51785 () Bool)

(assert (=> b!51785 (= e!26890 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51786 () Bool)

(assert (=> b!51786 (= e!26890 (union (nodeContent!0 (head!646 lt!9075)) (heapContent!0 (tail!670 lt!9075))))))

(assert (= (and d!43998 c!11119) b!51785))

(assert (= (and d!43998 (not c!11119)) b!51786))

(declare-fun m!55735 () Bool)

(assert (=> b!51786 m!55735))

(declare-fun m!55737 () Bool)

(assert (=> b!51786 m!55737))

(assert (=> d!43988 d!43998))

(declare-fun d!44000 () Bool)

(assert (=> d!44000 (= (nodeContent!0 (Node!59 0 #b00000000000000000000000000101010 Empty!117)) (singleton #b00000000000000000000000000101010))))

(assert (=> d!43988 d!44000))

(assert (=> d!43988 d!43964))

(declare-fun d!44002 () Bool)

(declare-fun c!11120 () Bool)

(assert (=> d!44002 (= c!11120 (is-Empty!117 (tail!670 h1!22)))))

(declare-fun e!26891 () (Set (_ BitVec 32)))

(assert (=> d!44002 (= (heapContent!0 (tail!670 h1!22)) e!26891)))

(declare-fun b!51787 () Bool)

(assert (=> b!51787 (= e!26891 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51788 () Bool)

(assert (=> b!51788 (= e!26891 (union (nodeContent!0 (head!646 (tail!670 h1!22))) (heapContent!0 (tail!670 (tail!670 h1!22)))))))

(assert (= (and d!44002 c!11120) b!51787))

(assert (= (and d!44002 (not c!11120)) b!51788))

(declare-fun m!55739 () Bool)

(assert (=> b!51788 m!55739))

(declare-fun m!55741 () Bool)

(assert (=> b!51788 m!55741))

(assert (=> b!51723 d!44002))

(declare-fun b!51789 () Bool)

(declare-fun e!26894 () Bool)

(declare-fun lt!9077 () OptInt!5)

(assert (=> b!51789 (= e!26894 (member (value!3241 lt!9077) (heapContent!0 (tail!670 (tail!670 h3!1)))))))

(declare-fun b!51790 () Bool)

(declare-fun e!26893 () OptInt!5)

(declare-fun e!26892 () (_ BitVec 32))

(assert (=> b!51790 (= e!26893 (Some!229 e!26892))))

(declare-fun c!11124 () Bool)

(assert (=> b!51790 (= c!11124 (bvslt (elem!93 (head!646 (tail!670 (tail!670 h3!1)))) (value!3241 (findMin!0 (tail!670 (tail!670 (tail!670 h3!1)))))))))

(declare-fun b!51791 () Bool)

(assert (=> b!51791 (= e!26894 (isEmpty!6 (tail!670 (tail!670 h3!1))))))

(declare-fun d!44004 () Bool)

(assert (=> d!44004 e!26894))

(declare-fun c!11123 () Bool)

(assert (=> d!44004 (= c!11123 (is-None!230 lt!9077))))

(declare-fun e!26895 () OptInt!5)

(assert (=> d!44004 (= lt!9077 e!26895)))

(declare-fun c!11121 () Bool)

(assert (=> d!44004 (= c!11121 (is-Empty!117 (tail!670 (tail!670 h3!1))))))

(assert (=> d!44004 (= (findMin!0 (tail!670 (tail!670 h3!1))) lt!9077)))

(declare-fun b!51792 () Bool)

(assert (=> b!51792 (= e!26892 (elem!93 (head!646 (tail!670 (tail!670 h3!1)))))))

(declare-fun b!51793 () Bool)

(assert (=> b!51793 (= e!26895 e!26893)))

(declare-fun c!11122 () Bool)

(assert (=> b!51793 (= c!11122 (is-None!230 (findMin!0 (tail!670 (tail!670 (tail!670 h3!1))))))))

(declare-fun b!51794 () Bool)

(assert (=> b!51794 (= e!26893 (Some!229 (elem!93 (head!646 (tail!670 (tail!670 h3!1))))))))

(declare-fun b!51795 () Bool)

(assert (=> b!51795 (= e!26895 None!230)))

(declare-fun b!51796 () Bool)

(assert (=> b!51796 (= e!26892 (value!3241 (findMin!0 (tail!670 (tail!670 (tail!670 h3!1))))))))

(assert (= (and b!51790 c!11124) b!51792))

(assert (= (and b!51790 (not c!11124)) b!51796))

(assert (= (and b!51793 c!11122) b!51794))

(assert (= (and b!51793 (not c!11122)) b!51790))

(assert (= (and d!44004 c!11121) b!51795))

(assert (= (and d!44004 (not c!11121)) b!51793))

(assert (= (and d!44004 c!11123) b!51791))

(assert (= (and d!44004 (not c!11123)) b!51789))

(declare-fun m!55743 () Bool)

(assert (=> b!51791 m!55743))

(declare-fun m!55745 () Bool)

(assert (=> b!51796 m!55745))

(assert (=> b!51790 m!55745))

(declare-fun m!55747 () Bool)

(assert (=> b!51789 m!55747))

(declare-fun m!55749 () Bool)

(assert (=> b!51789 m!55749))

(assert (=> b!51793 m!55745))

(assert (=> b!51735 d!44004))

(assert (=> d!43980 d!43970))

(declare-fun b!51797 () Bool)

(declare-fun e!26898 () Bool)

(declare-fun lt!9078 () OptInt!5)

(assert (=> b!51797 (= e!26898 (member (value!3241 lt!9078) (heapContent!0 (tail!670 (tail!670 h0!4)))))))

(declare-fun b!51798 () Bool)

(declare-fun e!26897 () OptInt!5)

(declare-fun e!26896 () (_ BitVec 32))

(assert (=> b!51798 (= e!26897 (Some!229 e!26896))))

(declare-fun c!11128 () Bool)

(assert (=> b!51798 (= c!11128 (bvslt (elem!93 (head!646 (tail!670 (tail!670 h0!4)))) (value!3241 (findMin!0 (tail!670 (tail!670 (tail!670 h0!4)))))))))

(declare-fun b!51799 () Bool)

(assert (=> b!51799 (= e!26898 (isEmpty!6 (tail!670 (tail!670 h0!4))))))

(declare-fun d!44006 () Bool)

(assert (=> d!44006 e!26898))

(declare-fun c!11127 () Bool)

(assert (=> d!44006 (= c!11127 (is-None!230 lt!9078))))

(declare-fun e!26899 () OptInt!5)

(assert (=> d!44006 (= lt!9078 e!26899)))

(declare-fun c!11125 () Bool)

(assert (=> d!44006 (= c!11125 (is-Empty!117 (tail!670 (tail!670 h0!4))))))

(assert (=> d!44006 (= (findMin!0 (tail!670 (tail!670 h0!4))) lt!9078)))

(declare-fun b!51800 () Bool)

(assert (=> b!51800 (= e!26896 (elem!93 (head!646 (tail!670 (tail!670 h0!4)))))))

(declare-fun b!51801 () Bool)

(assert (=> b!51801 (= e!26899 e!26897)))

(declare-fun c!11126 () Bool)

(assert (=> b!51801 (= c!11126 (is-None!230 (findMin!0 (tail!670 (tail!670 (tail!670 h0!4))))))))

(declare-fun b!51802 () Bool)

(assert (=> b!51802 (= e!26897 (Some!229 (elem!93 (head!646 (tail!670 (tail!670 h0!4))))))))

(declare-fun b!51803 () Bool)

(assert (=> b!51803 (= e!26899 None!230)))

(declare-fun b!51804 () Bool)

(assert (=> b!51804 (= e!26896 (value!3241 (findMin!0 (tail!670 (tail!670 (tail!670 h0!4))))))))

(assert (= (and b!51798 c!11128) b!51800))

(assert (= (and b!51798 (not c!11128)) b!51804))

(assert (= (and b!51801 c!11126) b!51802))

(assert (= (and b!51801 (not c!11126)) b!51798))

(assert (= (and d!44006 c!11125) b!51803))

(assert (= (and d!44006 (not c!11125)) b!51801))

(assert (= (and d!44006 c!11127) b!51799))

(assert (= (and d!44006 (not c!11127)) b!51797))

(declare-fun m!55751 () Bool)

(assert (=> b!51799 m!55751))

(declare-fun m!55753 () Bool)

(assert (=> b!51804 m!55753))

(assert (=> b!51798 m!55753))

(declare-fun m!55755 () Bool)

(assert (=> b!51797 m!55755))

(declare-fun m!55757 () Bool)

(assert (=> b!51797 m!55757))

(assert (=> b!51801 m!55753))

(assert (=> b!51716 d!44006))

(declare-fun d!44008 () Bool)

(declare-fun c!11129 () Bool)

(assert (=> d!44008 (= c!11129 (is-Empty!117 (tail!670 h3!1)))))

(declare-fun e!26900 () (Set (_ BitVec 32)))

(assert (=> d!44008 (= (heapContent!0 (tail!670 h3!1)) e!26900)))

(declare-fun b!51805 () Bool)

(assert (=> b!51805 (= e!26900 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51806 () Bool)

(assert (=> b!51806 (= e!26900 (union (nodeContent!0 (head!646 (tail!670 h3!1))) (heapContent!0 (tail!670 (tail!670 h3!1)))))))

(assert (= (and d!44008 c!11129) b!51805))

(assert (= (and d!44008 (not c!11129)) b!51806))

(declare-fun m!55759 () Bool)

(assert (=> b!51806 m!55759))

(assert (=> b!51806 m!55747))

(assert (=> b!51731 d!44008))

(assert (=> b!51732 d!44004))

(declare-fun b!51807 () Bool)

(declare-fun e!26903 () Bool)

(declare-fun lt!9079 () OptInt!5)

(assert (=> b!51807 (= e!26903 (member (value!3241 lt!9079) (heapContent!0 (tail!670 (tail!670 h1!22)))))))

(declare-fun b!51808 () Bool)

(declare-fun e!26902 () OptInt!5)

(declare-fun e!26901 () (_ BitVec 32))

(assert (=> b!51808 (= e!26902 (Some!229 e!26901))))

(declare-fun c!11133 () Bool)

(assert (=> b!51808 (= c!11133 (bvslt (elem!93 (head!646 (tail!670 (tail!670 h1!22)))) (value!3241 (findMin!0 (tail!670 (tail!670 (tail!670 h1!22)))))))))

(declare-fun b!51809 () Bool)

(assert (=> b!51809 (= e!26903 (isEmpty!6 (tail!670 (tail!670 h1!22))))))

(declare-fun d!44010 () Bool)

(assert (=> d!44010 e!26903))

(declare-fun c!11132 () Bool)

(assert (=> d!44010 (= c!11132 (is-None!230 lt!9079))))

(declare-fun e!26904 () OptInt!5)

(assert (=> d!44010 (= lt!9079 e!26904)))

(declare-fun c!11130 () Bool)

(assert (=> d!44010 (= c!11130 (is-Empty!117 (tail!670 (tail!670 h1!22))))))

(assert (=> d!44010 (= (findMin!0 (tail!670 (tail!670 h1!22))) lt!9079)))

(declare-fun b!51810 () Bool)

(assert (=> b!51810 (= e!26901 (elem!93 (head!646 (tail!670 (tail!670 h1!22)))))))

(declare-fun b!51811 () Bool)

(assert (=> b!51811 (= e!26904 e!26902)))

(declare-fun c!11131 () Bool)

(assert (=> b!51811 (= c!11131 (is-None!230 (findMin!0 (tail!670 (tail!670 (tail!670 h1!22))))))))

(declare-fun b!51812 () Bool)

(assert (=> b!51812 (= e!26902 (Some!229 (elem!93 (head!646 (tail!670 (tail!670 h1!22))))))))

(declare-fun b!51813 () Bool)

(assert (=> b!51813 (= e!26904 None!230)))

(declare-fun b!51814 () Bool)

(assert (=> b!51814 (= e!26901 (value!3241 (findMin!0 (tail!670 (tail!670 (tail!670 h1!22))))))))

(assert (= (and b!51808 c!11133) b!51810))

(assert (= (and b!51808 (not c!11133)) b!51814))

(assert (= (and b!51811 c!11131) b!51812))

(assert (= (and b!51811 (not c!11131)) b!51808))

(assert (= (and d!44010 c!11130) b!51813))

(assert (= (and d!44010 (not c!11130)) b!51811))

(assert (= (and d!44010 c!11132) b!51809))

(assert (= (and d!44010 (not c!11132)) b!51807))

(declare-fun m!55761 () Bool)

(assert (=> b!51809 m!55761))

(declare-fun m!55763 () Bool)

(assert (=> b!51814 m!55763))

(assert (=> b!51808 m!55763))

(assert (=> b!51807 m!55741))

(declare-fun m!55765 () Bool)

(assert (=> b!51807 m!55765))

(assert (=> b!51811 m!55763))

(assert (=> b!51727 d!44010))

(declare-fun d!44012 () Bool)

(declare-fun c!11134 () Bool)

(assert (=> d!44012 (= c!11134 (is-Empty!117 (tail!670 h0!4)))))

(declare-fun e!26905 () (Set (_ BitVec 32)))

(assert (=> d!44012 (= (heapContent!0 (tail!670 h0!4)) e!26905)))

(declare-fun b!51815 () Bool)

(assert (=> b!51815 (= e!26905 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51816 () Bool)

(assert (=> b!51816 (= e!26905 (union (nodeContent!0 (head!646 (tail!670 h0!4))) (heapContent!0 (tail!670 (tail!670 h0!4)))))))

(assert (= (and d!44012 c!11134) b!51815))

(assert (= (and d!44012 (not c!11134)) b!51816))

(declare-fun m!55767 () Bool)

(assert (=> b!51816 m!55767))

(assert (=> b!51816 m!55755))

(assert (=> b!51709 d!44012))

(declare-fun d!44014 () Bool)

(assert (=> d!44014 (= (nodeContent!0 (head!646 h3!1)) (union (insert (elem!93 (head!646 h3!1)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!21 (head!646 h3!1)))))))

(declare-fun bs!23781 () Bool)

(assert (= bs!23781 d!44014))

(declare-fun m!55769 () Bool)

(assert (=> bs!23781 m!55769))

(declare-fun m!55771 () Bool)

(assert (=> bs!23781 m!55771))

(assert (=> b!51772 d!44014))

(assert (=> b!51772 d!44008))

(assert (=> b!51713 d!44006))

(declare-fun d!44016 () Bool)

(assert (=> d!44016 (= (nodeContent!0 (head!646 h1!22)) (union (insert (elem!93 (head!646 h1!22)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!21 (head!646 h1!22)))))))

(declare-fun bs!23782 () Bool)

(assert (= bs!23782 d!44016))

(declare-fun m!55773 () Bool)

(assert (=> bs!23782 m!55773))

(declare-fun m!55775 () Bool)

(assert (=> bs!23782 m!55775))

(assert (=> b!51752 d!44016))

(assert (=> b!51752 d!44002))

(assert (=> d!43974 d!43956))

(declare-fun b!51817 () Bool)

(declare-fun e!26908 () Bool)

(declare-fun lt!9080 () OptInt!5)

(assert (=> b!51817 (= e!26908 (member (value!3241 lt!9080) (heapContent!0 (tail!670 (tail!670 h2!18)))))))

(declare-fun b!51818 () Bool)

(declare-fun e!26907 () OptInt!5)

(declare-fun e!26906 () (_ BitVec 32))

(assert (=> b!51818 (= e!26907 (Some!229 e!26906))))

(declare-fun c!11138 () Bool)

(assert (=> b!51818 (= c!11138 (bvslt (elem!93 (head!646 (tail!670 (tail!670 h2!18)))) (value!3241 (findMin!0 (tail!670 (tail!670 (tail!670 h2!18)))))))))

(declare-fun b!51819 () Bool)

(assert (=> b!51819 (= e!26908 (isEmpty!6 (tail!670 (tail!670 h2!18))))))

(declare-fun d!44018 () Bool)

(assert (=> d!44018 e!26908))

(declare-fun c!11137 () Bool)

(assert (=> d!44018 (= c!11137 (is-None!230 lt!9080))))

(declare-fun e!26909 () OptInt!5)

(assert (=> d!44018 (= lt!9080 e!26909)))

(declare-fun c!11135 () Bool)

(assert (=> d!44018 (= c!11135 (is-Empty!117 (tail!670 (tail!670 h2!18))))))

(assert (=> d!44018 (= (findMin!0 (tail!670 (tail!670 h2!18))) lt!9080)))

(declare-fun b!51820 () Bool)

(assert (=> b!51820 (= e!26906 (elem!93 (head!646 (tail!670 (tail!670 h2!18)))))))

(declare-fun b!51821 () Bool)

(assert (=> b!51821 (= e!26909 e!26907)))

(declare-fun c!11136 () Bool)

(assert (=> b!51821 (= c!11136 (is-None!230 (findMin!0 (tail!670 (tail!670 (tail!670 h2!18))))))))

(declare-fun b!51822 () Bool)

(assert (=> b!51822 (= e!26907 (Some!229 (elem!93 (head!646 (tail!670 (tail!670 h2!18))))))))

(declare-fun b!51823 () Bool)

(assert (=> b!51823 (= e!26909 None!230)))

(declare-fun b!51824 () Bool)

(assert (=> b!51824 (= e!26906 (value!3241 (findMin!0 (tail!670 (tail!670 (tail!670 h2!18))))))))

(assert (= (and b!51818 c!11138) b!51820))

(assert (= (and b!51818 (not c!11138)) b!51824))

(assert (= (and b!51821 c!11136) b!51822))

(assert (= (and b!51821 (not c!11136)) b!51818))

(assert (= (and d!44018 c!11135) b!51823))

(assert (= (and d!44018 (not c!11135)) b!51821))

(assert (= (and d!44018 c!11137) b!51819))

(assert (= (and d!44018 (not c!11137)) b!51817))

(declare-fun m!55777 () Bool)

(assert (=> b!51819 m!55777))

(declare-fun m!55779 () Bool)

(assert (=> b!51824 m!55779))

(assert (=> b!51818 m!55779))

(declare-fun m!55781 () Bool)

(assert (=> b!51817 m!55781))

(declare-fun m!55783 () Bool)

(assert (=> b!51817 m!55783))

(assert (=> b!51821 m!55779))

(assert (=> b!51748 d!44018))

(assert (=> d!43982 d!43984))

(assert (=> b!51710 d!44006))

(assert (=> b!51745 d!44018))

(declare-fun d!44020 () Bool)

(declare-fun lt!9081 () Bool)

(assert (=> d!44020 (= lt!9081 (= (heapContent!0 (tail!670 h0!4)) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!44020 (= lt!9081 (= (tail!670 h0!4) Empty!117))))

(assert (=> d!44020 (= (isEmpty!6 (tail!670 h0!4)) lt!9081)))

(declare-fun bs!23783 () Bool)

(assert (= bs!23783 d!44020))

(assert (=> bs!23783 m!55651))

(assert (=> b!51711 d!44020))

(declare-fun d!44022 () Bool)

(declare-fun lt!9082 () Bool)

(assert (=> d!44022 (= lt!9082 (= (heapContent!0 (tail!670 h3!1)) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!44022 (= lt!9082 (= (tail!670 h3!1) Empty!117))))

(assert (=> d!44022 (= (isEmpty!6 (tail!670 h3!1)) lt!9082)))

(declare-fun bs!23784 () Bool)

(assert (= bs!23784 d!44022))

(assert (=> bs!23784 m!55671))

(assert (=> b!51733 d!44022))

(assert (=> b!51738 d!44004))

(declare-fun d!44024 () Bool)

(assert (=> d!44024 (= (nodeContent!0 (head!646 lt!9059)) (union (insert (elem!93 (head!646 lt!9059)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!21 (head!646 lt!9059)))))))

(declare-fun bs!23785 () Bool)

(assert (= bs!23785 d!44024))

(declare-fun m!55785 () Bool)

(assert (=> bs!23785 m!55785))

(declare-fun m!55787 () Bool)

(assert (=> bs!23785 m!55787))

(assert (=> b!51766 d!44024))

(declare-fun d!44026 () Bool)

(declare-fun c!11139 () Bool)

(assert (=> d!44026 (= c!11139 (is-Empty!117 (tail!670 lt!9059)))))

(declare-fun e!26910 () (Set (_ BitVec 32)))

(assert (=> d!44026 (= (heapContent!0 (tail!670 lt!9059)) e!26910)))

(declare-fun b!51825 () Bool)

(assert (=> b!51825 (= e!26910 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51826 () Bool)

(assert (=> b!51826 (= e!26910 (union (nodeContent!0 (head!646 (tail!670 lt!9059))) (heapContent!0 (tail!670 (tail!670 lt!9059)))))))

(assert (= (and d!44026 c!11139) b!51825))

(assert (= (and d!44026 (not c!11139)) b!51826))

(declare-fun m!55789 () Bool)

(assert (=> b!51826 m!55789))

(declare-fun m!55791 () Bool)

(assert (=> b!51826 m!55791))

(assert (=> b!51766 d!44026))

(declare-fun d!44028 () Bool)

(declare-fun lt!9083 () Bool)

(assert (=> d!44028 (= lt!9083 (= (heapContent!0 (tail!670 h1!22)) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!44028 (= lt!9083 (= (tail!670 h1!22) Empty!117))))

(assert (=> d!44028 (= (isEmpty!6 (tail!670 h1!22)) lt!9083)))

(declare-fun bs!23786 () Bool)

(assert (= bs!23786 d!44028))

(assert (=> bs!23786 m!55663))

(assert (=> b!51725 d!44028))

(declare-fun d!44030 () Bool)

(assert (=> d!44030 (= (nodeContent!0 (head!646 lt!9057)) (union (insert (elem!93 (head!646 lt!9057)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!21 (head!646 lt!9057)))))))

(declare-fun bs!23787 () Bool)

(assert (= bs!23787 d!44030))

(declare-fun m!55793 () Bool)

(assert (=> bs!23787 m!55793))

(declare-fun m!55795 () Bool)

(assert (=> bs!23787 m!55795))

(assert (=> b!51750 d!44030))

(declare-fun d!44032 () Bool)

(declare-fun c!11140 () Bool)

(assert (=> d!44032 (= c!11140 (is-Empty!117 (tail!670 lt!9057)))))

(declare-fun e!26911 () (Set (_ BitVec 32)))

(assert (=> d!44032 (= (heapContent!0 (tail!670 lt!9057)) e!26911)))

(declare-fun b!51827 () Bool)

(assert (=> b!51827 (= e!26911 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51828 () Bool)

(assert (=> b!51828 (= e!26911 (union (nodeContent!0 (head!646 (tail!670 lt!9057))) (heapContent!0 (tail!670 (tail!670 lt!9057)))))))

(assert (= (and d!44032 c!11140) b!51827))

(assert (= (and d!44032 (not c!11140)) b!51828))

(declare-fun m!55797 () Bool)

(assert (=> b!51828 m!55797))

(declare-fun m!55799 () Bool)

(assert (=> b!51828 m!55799))

(assert (=> b!51750 d!44032))

(declare-fun d!44034 () Bool)

(declare-fun c!11141 () Bool)

(assert (=> d!44034 (= c!11141 (is-Empty!117 (tail!670 h2!18)))))

(declare-fun e!26912 () (Set (_ BitVec 32)))

(assert (=> d!44034 (= (heapContent!0 (tail!670 h2!18)) e!26912)))

(declare-fun b!51829 () Bool)

(assert (=> b!51829 (= e!26912 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51830 () Bool)

(assert (=> b!51830 (= e!26912 (union (nodeContent!0 (head!646 (tail!670 h2!18))) (heapContent!0 (tail!670 (tail!670 h2!18)))))))

(assert (= (and d!44034 c!11141) b!51829))

(assert (= (and d!44034 (not c!11141)) b!51830))

(declare-fun m!55801 () Bool)

(assert (=> b!51830 m!55801))

(assert (=> b!51830 m!55781))

(assert (=> b!51741 d!44034))

(declare-fun d!44036 () Bool)

(declare-fun lt!9084 () Bool)

(assert (=> d!44036 (= lt!9084 (= (heapContent!0 (tail!670 h2!18)) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!44036 (= lt!9084 (= (tail!670 h2!18) Empty!117))))

(assert (=> d!44036 (= (isEmpty!6 (tail!670 h2!18)) lt!9084)))

(declare-fun bs!23788 () Bool)

(assert (= bs!23788 d!44036))

(assert (=> bs!23788 m!55657))

(assert (=> b!51743 d!44036))

(declare-fun d!44038 () Bool)

(declare-fun lt!9085 () Heap!15)

(assert (=> d!44038 (= (heapContent!0 lt!9085) (union (nodeContent!0 (link!0 (Node!59 0 #b00000000000000000000000000101010 Empty!117) (head!646 h0!4))) (heapContent!0 (tail!670 h0!4))))))

(declare-fun e!26914 () Heap!15)

(assert (=> d!44038 (= lt!9085 e!26914)))

(declare-fun c!11143 () Bool)

(assert (=> d!44038 (= c!11143 (is-Empty!117 (tail!670 h0!4)))))

(assert (=> d!44038 (= (insertNode!0 (link!0 (Node!59 0 #b00000000000000000000000000101010 Empty!117) (head!646 h0!4)) (tail!670 h0!4)) lt!9085)))

(declare-fun b!51833 () Bool)

(declare-fun e!26913 () Heap!15)

(assert (=> b!51833 (= e!26913 (Nodes!14 (link!0 (Node!59 0 #b00000000000000000000000000101010 Empty!117) (head!646 h0!4)) (tail!670 h0!4)))))

(declare-fun b!51832 () Bool)

(assert (=> b!51832 (= e!26914 e!26913)))

(declare-fun c!11142 () Bool)

(assert (=> b!51832 (= c!11142 (< (rank!21 (link!0 (Node!59 0 #b00000000000000000000000000101010 Empty!117) (head!646 h0!4))) (rank!21 (head!646 (tail!670 h0!4)))))))

(declare-fun b!51834 () Bool)

(assert (=> b!51834 (= e!26913 (insertNode!0 (link!0 (link!0 (Node!59 0 #b00000000000000000000000000101010 Empty!117) (head!646 h0!4)) (head!646 (tail!670 h0!4))) (tail!670 (tail!670 h0!4))))))

(declare-fun b!51831 () Bool)

(assert (=> b!51831 (= e!26914 (Nodes!14 (link!0 (Node!59 0 #b00000000000000000000000000101010 Empty!117) (head!646 h0!4)) Empty!117))))

(assert (= (and b!51832 c!11142) b!51833))

(assert (= (and b!51832 (not c!11142)) b!51834))

(assert (= (and d!44038 c!11143) b!51831))

(assert (= (and d!44038 (not c!11143)) b!51832))

(declare-fun m!55803 () Bool)

(assert (=> d!44038 m!55803))

(assert (=> d!44038 m!55719))

(declare-fun m!55805 () Bool)

(assert (=> d!44038 m!55805))

(assert (=> d!44038 m!55651))

(assert (=> b!51834 m!55719))

(declare-fun m!55807 () Bool)

(assert (=> b!51834 m!55807))

(assert (=> b!51834 m!55807))

(declare-fun m!55809 () Bool)

(assert (=> b!51834 m!55809))

(assert (=> b!51778 d!44038))

(declare-fun d!44040 () Bool)

(assert (=> d!44040 (= (link!0 (Node!59 0 #b00000000000000000000000000101010 Empty!117) (head!646 h0!4)) (ite (bvsle (elem!93 (Node!59 0 #b00000000000000000000000000101010 Empty!117)) (elem!93 (head!646 h0!4))) (Node!59 (+ (rank!21 (Node!59 0 #b00000000000000000000000000101010 Empty!117)) 1) (elem!93 (Node!59 0 #b00000000000000000000000000101010 Empty!117)) (Nodes!14 (head!646 h0!4) (nodes!21 (Node!59 0 #b00000000000000000000000000101010 Empty!117)))) (Node!59 (+ (rank!21 (Node!59 0 #b00000000000000000000000000101010 Empty!117)) 1) (elem!93 (head!646 h0!4)) (Nodes!14 (Node!59 0 #b00000000000000000000000000101010 Empty!117) (nodes!21 (head!646 h0!4))))))))

(assert (=> b!51778 d!44040))

(assert (=> b!51724 d!44010))

(declare-fun d!44042 () Bool)

(declare-fun c!11144 () Bool)

(assert (=> d!44042 (= c!11144 (is-Empty!117 lt!9070))))

(declare-fun e!26915 () (Set (_ BitVec 32)))

(assert (=> d!44042 (= (heapContent!0 lt!9070) e!26915)))

(declare-fun b!51835 () Bool)

(assert (=> b!51835 (= e!26915 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51836 () Bool)

(assert (=> b!51836 (= e!26915 (union (nodeContent!0 (head!646 lt!9070)) (heapContent!0 (tail!670 lt!9070))))))

(assert (= (and d!44042 c!11144) b!51835))

(assert (= (and d!44042 (not c!11144)) b!51836))

(declare-fun m!55811 () Bool)

(assert (=> b!51836 m!55811))

(declare-fun m!55813 () Bool)

(assert (=> b!51836 m!55813))

(assert (=> d!43972 d!44042))

(declare-fun d!44044 () Bool)

(assert (=> d!44044 (= (nodeContent!0 (Node!59 0 #b00000000000000000000000001001000 Empty!117)) (singleton #b00000000000000000000000001001000))))

(assert (=> d!43972 d!44044))

(assert (=> d!43972 d!43970))

(assert (=> b!51742 d!44018))

(declare-fun d!44046 () Bool)

(assert (=> d!44046 (= (nodeContent!0 (head!646 h0!4)) (union (insert (elem!93 (head!646 h0!4)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!21 (head!646 h0!4)))))))

(declare-fun bs!23789 () Bool)

(assert (= bs!23789 d!44046))

(declare-fun m!55815 () Bool)

(assert (=> bs!23789 m!55815))

(declare-fun m!55817 () Bool)

(assert (=> bs!23789 m!55817))

(assert (=> b!51740 d!44046))

(assert (=> b!51740 d!44012))

(declare-fun d!44048 () Bool)

(assert (=> d!44048 (= (nodeContent!0 (head!646 h2!18)) (union (insert (elem!93 (head!646 h2!18)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!21 (head!646 h2!18)))))))

(declare-fun bs!23790 () Bool)

(assert (= bs!23790 d!44048))

(declare-fun m!55819 () Bool)

(assert (=> bs!23790 m!55819))

(declare-fun m!55821 () Bool)

(assert (=> bs!23790 m!55821))

(assert (=> b!51722 d!44048))

(assert (=> b!51722 d!44034))

(declare-fun d!44050 () Bool)

(assert (=> d!44050 (= (nodeContent!0 (head!646 lt!9056)) (union (insert (elem!93 (head!646 lt!9056)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!21 (head!646 lt!9056)))))))

(declare-fun bs!23791 () Bool)

(assert (= bs!23791 d!44050))

(declare-fun m!55823 () Bool)

(assert (=> bs!23791 m!55823))

(declare-fun m!55825 () Bool)

(assert (=> bs!23791 m!55825))

(assert (=> b!51774 d!44050))

(declare-fun d!44052 () Bool)

(declare-fun c!11145 () Bool)

(assert (=> d!44052 (= c!11145 (is-Empty!117 (tail!670 lt!9056)))))

(declare-fun e!26916 () (Set (_ BitVec 32)))

(assert (=> d!44052 (= (heapContent!0 (tail!670 lt!9056)) e!26916)))

(declare-fun b!51837 () Bool)

(assert (=> b!51837 (= e!26916 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51838 () Bool)

(assert (=> b!51838 (= e!26916 (union (nodeContent!0 (head!646 (tail!670 lt!9056))) (heapContent!0 (tail!670 (tail!670 lt!9056)))))))

(assert (= (and d!44052 c!11145) b!51837))

(assert (= (and d!44052 (not c!11145)) b!51838))

(declare-fun m!55827 () Bool)

(assert (=> b!51838 m!55827))

(declare-fun m!55829 () Bool)

(assert (=> b!51838 m!55829))

(assert (=> b!51774 d!44052))

(assert (=> b!51730 d!44010))

(declare-fun d!44054 () Bool)

(declare-fun lt!9086 () Heap!15)

(assert (=> d!44054 (= (heapContent!0 lt!9086) (union (nodeContent!0 (link!0 (Node!59 0 #b00000000000000000000000001001000 Empty!117) (head!646 h1!22))) (heapContent!0 (tail!670 h1!22))))))

(declare-fun e!26918 () Heap!15)

(assert (=> d!44054 (= lt!9086 e!26918)))

(declare-fun c!11147 () Bool)

(assert (=> d!44054 (= c!11147 (is-Empty!117 (tail!670 h1!22)))))

(assert (=> d!44054 (= (insertNode!0 (link!0 (Node!59 0 #b00000000000000000000000001001000 Empty!117) (head!646 h1!22)) (tail!670 h1!22)) lt!9086)))

(declare-fun b!51841 () Bool)

(declare-fun e!26917 () Heap!15)

(assert (=> b!51841 (= e!26917 (Nodes!14 (link!0 (Node!59 0 #b00000000000000000000000001001000 Empty!117) (head!646 h1!22)) (tail!670 h1!22)))))

(declare-fun b!51840 () Bool)

(assert (=> b!51840 (= e!26918 e!26917)))

(declare-fun c!11146 () Bool)

(assert (=> b!51840 (= c!11146 (< (rank!21 (link!0 (Node!59 0 #b00000000000000000000000001001000 Empty!117) (head!646 h1!22))) (rank!21 (head!646 (tail!670 h1!22)))))))

(declare-fun b!51842 () Bool)

(assert (=> b!51842 (= e!26917 (insertNode!0 (link!0 (link!0 (Node!59 0 #b00000000000000000000000001001000 Empty!117) (head!646 h1!22)) (head!646 (tail!670 h1!22))) (tail!670 (tail!670 h1!22))))))

(declare-fun b!51839 () Bool)

(assert (=> b!51839 (= e!26918 (Nodes!14 (link!0 (Node!59 0 #b00000000000000000000000001001000 Empty!117) (head!646 h1!22)) Empty!117))))

(assert (= (and b!51840 c!11146) b!51841))

(assert (= (and b!51840 (not c!11146)) b!51842))

(assert (= (and d!44054 c!11147) b!51839))

(assert (= (and d!44054 (not c!11147)) b!51840))

(declare-fun m!55831 () Bool)

(assert (=> d!44054 m!55831))

(assert (=> d!44054 m!55693))

(declare-fun m!55833 () Bool)

(assert (=> d!44054 m!55833))

(assert (=> d!44054 m!55663))

(assert (=> b!51842 m!55693))

(declare-fun m!55835 () Bool)

(assert (=> b!51842 m!55835))

(assert (=> b!51842 m!55835))

(declare-fun m!55837 () Bool)

(assert (=> b!51842 m!55837))

(assert (=> b!51764 d!44054))

(declare-fun d!44056 () Bool)

(assert (=> d!44056 (= (link!0 (Node!59 0 #b00000000000000000000000001001000 Empty!117) (head!646 h1!22)) (ite (bvsle (elem!93 (Node!59 0 #b00000000000000000000000001001000 Empty!117)) (elem!93 (head!646 h1!22))) (Node!59 (+ (rank!21 (Node!59 0 #b00000000000000000000000001001000 Empty!117)) 1) (elem!93 (Node!59 0 #b00000000000000000000000001001000 Empty!117)) (Nodes!14 (head!646 h1!22) (nodes!21 (Node!59 0 #b00000000000000000000000001001000 Empty!117)))) (Node!59 (+ (rank!21 (Node!59 0 #b00000000000000000000000001001000 Empty!117)) 1) (elem!93 (head!646 h1!22)) (Nodes!14 (Node!59 0 #b00000000000000000000000001001000 Empty!117) (nodes!21 (head!646 h1!22))))))))

(assert (=> b!51764 d!44056))

(push 1)

(assert (not b!51830))

(assert (not b!51818))

(assert (not b!51819))

(assert (not b!51824))

(assert (not b!51838))

(assert (not d!43994))

(assert (not b!51789))

(assert (not b!51816))

(assert (not b!51828))

(assert (not b!51801))

(assert (not b!51817))

(assert (not b!51814))

(assert (not d!44036))

(assert (not d!44048))

(assert (not b!51784))

(assert (not d!44024))

(assert (not b!51804))

(assert (not b!51786))

(assert (not d!44016))

(assert (not b!51806))

(assert (not b!51836))

(assert (not b!51798))

(assert (not b!51808))

(assert (not b!51799))

(assert (not b!51826))

(assert (not d!44054))

(assert (not d!44046))

(assert (not b!51834))

(assert (not b!51791))

(assert (not b!51780))

(assert (not b!51821))

(assert (not d!44022))

(assert (not b!51796))

(assert (not d!44014))

(assert (not d!44038))

(assert (not b!51809))

(assert (not b!51793))

(assert (not b!51790))

(assert (not b!51788))

(assert (not d!44050))

(assert (not b!51811))

(assert (not b!51842))

(assert (not d!44030))

(assert (not d!44020))

(assert (not b!51807))

(assert (not b!51797))

(assert (not d!44028))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


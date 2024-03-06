; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!176 () Bool)

(assert start!176)

(declare-fun b!797 () Bool)

(declare-fun res!672 () Bool)

(declare-fun e!566 () Bool)

(assert (=> b!797 (=> (not res!672) (not e!566))))

(declare-fun e3!1 () (_ BitVec 32))

(declare-datatypes () ((List!50 (Cons!50 (head!222 (_ BitVec 32)) (tail!234 List!50)) (Nil!51))))

(declare-datatypes () ((AbsQueue!2 (Queue!1 (front!43 List!50) (rear!45 List!50)))))

(declare-fun q2!1 () AbsQueue!2)

(declare-fun q3!1 () AbsQueue!2)

(declare-fun enqueue!0 (AbsQueue!2 (_ BitVec 32)) AbsQueue!2)

(assert (=> b!797 (= res!672 (= q3!1 (enqueue!0 q2!1 e3!1)))))

(declare-fun b!798 () Bool)

(declare-fun res!676 () Bool)

(assert (=> b!798 (=> (not res!676) (not e!566))))

(declare-fun queue!65 () AbsQueue!2)

(assert (=> b!798 (= res!676 (= queue!65 q3!1))))

(declare-fun res!674 () Bool)

(assert (=> start!176 (=> (not res!674) (not e!566))))

(declare-fun queue!56 () AbsQueue!2)

(declare-fun isEmpty!12 (AbsQueue!2) Bool)

(assert (=> start!176 (= res!674 (isEmpty!12 queue!56))))

(assert (=> start!176 e!566))

(assert (=> start!176 true))

(declare-fun b!799 () Bool)

(declare-fun e!567 () Bool)

(assert (=> b!799 (= e!567 (isEmpty!12 queue!65))))

(declare-fun b!800 () Bool)

(declare-fun res!673 () Bool)

(assert (=> b!800 (=> (not res!673) (not e!566))))

(declare-fun q1!1 () AbsQueue!2)

(declare-fun e1!2 () (_ BitVec 32))

(assert (=> b!800 (= res!673 (= q1!1 (enqueue!0 queue!56 e1!2)))))

(declare-fun b!801 () Bool)

(assert (=> b!801 (= e!566 e!567)))

(declare-fun res!675 () Bool)

(assert (=> b!801 (=> res!675 e!567)))

(declare-fun isAmortized!0 (AbsQueue!2) Bool)

(assert (=> b!801 (= res!675 (not (isAmortized!0 queue!65)))))

(declare-fun b!802 () Bool)

(declare-fun res!671 () Bool)

(assert (=> b!802 (=> (not res!671) (not e!566))))

(declare-fun e2!3 () (_ BitVec 32))

(assert (=> b!802 (= res!671 (= q2!1 (enqueue!0 q1!1 e2!3)))))

(assert (= (and start!176 res!674) b!800))

(assert (= (and b!800 res!673) b!802))

(assert (= (and b!802 res!671) b!797))

(assert (= (and b!797 res!672) b!798))

(assert (= (and b!798 res!676) b!801))

(assert (= (and b!801 (not res!675)) b!799))

(declare-fun m!527 () Bool)

(assert (=> b!801 m!527))

(declare-fun m!529 () Bool)

(assert (=> b!800 m!529))

(declare-fun m!531 () Bool)

(assert (=> b!802 m!531))

(declare-fun m!533 () Bool)

(assert (=> start!176 m!533))

(declare-fun m!535 () Bool)

(assert (=> b!799 m!535))

(declare-fun m!537 () Bool)

(assert (=> b!797 m!537))

(push 1)

(assert (not b!797))

(assert (not b!802))

(assert (not b!801))

(assert (not b!800))

(assert (not b!799))

(assert (not start!176))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!240 () Bool)

(declare-fun size!23 (List!50) Int)

(assert (=> d!240 (= (isAmortized!0 queue!65) (>= (size!23 (front!43 queue!65)) (size!23 (rear!45 queue!65))))))

(declare-fun bs!142 () Bool)

(assert (= bs!142 d!240))

(declare-fun m!539 () Bool)

(assert (=> bs!142 m!539))

(declare-fun m!541 () Bool)

(assert (=> bs!142 m!541))

(assert (=> b!801 d!240))

(declare-fun d!242 () Bool)

(assert (=> d!242 (= (isEmpty!12 queue!56) (and (is-Nil!51 (front!43 queue!56)) (is-Nil!51 (rear!45 queue!56))))))

(assert (=> start!176 d!242))

(declare-fun d!244 () Bool)

(assert (=> d!244 (= (isEmpty!12 queue!65) (and (is-Nil!51 (front!43 queue!65)) (is-Nil!51 (rear!45 queue!65))))))

(assert (=> b!799 d!244))

(declare-fun d!246 () Bool)

(declare-fun lt!81 () AbsQueue!2)

(assert (=> d!246 (isAmortized!0 lt!81)))

(declare-fun amortizedQueue!0 (List!50 List!50) AbsQueue!2)

(assert (=> d!246 (= lt!81 (amortizedQueue!0 (front!43 queue!56) (Cons!50 e1!2 (rear!45 queue!56))))))

(assert (=> d!246 (= (enqueue!0 queue!56 e1!2) lt!81)))

(declare-fun bs!143 () Bool)

(assert (= bs!143 d!246))

(declare-fun m!543 () Bool)

(assert (=> bs!143 m!543))

(declare-fun m!545 () Bool)

(assert (=> bs!143 m!545))

(assert (=> b!800 d!246))

(declare-fun d!248 () Bool)

(declare-fun lt!82 () AbsQueue!2)

(assert (=> d!248 (isAmortized!0 lt!82)))

(assert (=> d!248 (= lt!82 (amortizedQueue!0 (front!43 q2!1) (Cons!50 e3!1 (rear!45 q2!1))))))

(assert (=> d!248 (= (enqueue!0 q2!1 e3!1) lt!82)))

(declare-fun bs!144 () Bool)

(assert (= bs!144 d!248))

(declare-fun m!547 () Bool)

(assert (=> bs!144 m!547))

(declare-fun m!549 () Bool)

(assert (=> bs!144 m!549))

(assert (=> b!797 d!248))

(declare-fun d!250 () Bool)

(declare-fun lt!83 () AbsQueue!2)

(assert (=> d!250 (isAmortized!0 lt!83)))

(assert (=> d!250 (= lt!83 (amortizedQueue!0 (front!43 q1!1) (Cons!50 e2!3 (rear!45 q1!1))))))

(assert (=> d!250 (= (enqueue!0 q1!1 e2!3) lt!83)))

(declare-fun bs!145 () Bool)

(assert (= bs!145 d!250))

(declare-fun m!551 () Bool)

(assert (=> bs!145 m!551))

(declare-fun m!553 () Bool)

(assert (=> bs!145 m!553))

(assert (=> b!802 d!250))

(push 1)

(assert (not d!250))

(assert (not d!246))

(assert (not d!248))

(assert (not d!240))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!252 () Bool)

(assert (=> d!252 (= (isAmortized!0 lt!83) (>= (size!23 (front!43 lt!83)) (size!23 (rear!45 lt!83))))))

(declare-fun bs!146 () Bool)

(assert (= bs!146 d!252))

(declare-fun m!555 () Bool)

(assert (=> bs!146 m!555))

(declare-fun m!557 () Bool)

(assert (=> bs!146 m!557))

(assert (=> d!250 d!252))

(declare-fun d!254 () Bool)

(declare-fun lt!86 () AbsQueue!2)

(assert (=> d!254 (isAmortized!0 lt!86)))

(declare-fun e!570 () AbsQueue!2)

(assert (=> d!254 (= lt!86 e!570)))

(declare-fun c!120 () Bool)

(assert (=> d!254 (= c!120 (<= (size!23 (Cons!50 e2!3 (rear!45 q1!1))) (size!23 (front!43 q1!1))))))

(assert (=> d!254 (= (amortizedQueue!0 (front!43 q1!1) (Cons!50 e2!3 (rear!45 q1!1))) lt!86)))

(declare-fun b!807 () Bool)

(assert (=> b!807 (= e!570 (Queue!1 (front!43 q1!1) (Cons!50 e2!3 (rear!45 q1!1))))))

(declare-fun b!808 () Bool)

(declare-fun concat!2 (List!50 List!50) List!50)

(declare-fun reverse!5 (List!50) List!50)

(assert (=> b!808 (= e!570 (Queue!1 (concat!2 (front!43 q1!1) (reverse!5 (Cons!50 e2!3 (rear!45 q1!1)))) Nil!51))))

(assert (= (and d!254 c!120) b!807))

(assert (= (and d!254 (not c!120)) b!808))

(declare-fun m!559 () Bool)

(assert (=> d!254 m!559))

(declare-fun m!561 () Bool)

(assert (=> d!254 m!561))

(declare-fun m!563 () Bool)

(assert (=> d!254 m!563))

(declare-fun m!565 () Bool)

(assert (=> b!808 m!565))

(assert (=> b!808 m!565))

(declare-fun m!567 () Bool)

(assert (=> b!808 m!567))

(assert (=> d!250 d!254))

(declare-fun d!256 () Bool)

(assert (=> d!256 (= (isAmortized!0 lt!81) (>= (size!23 (front!43 lt!81)) (size!23 (rear!45 lt!81))))))

(declare-fun bs!147 () Bool)

(assert (= bs!147 d!256))

(declare-fun m!569 () Bool)

(assert (=> bs!147 m!569))

(declare-fun m!571 () Bool)

(assert (=> bs!147 m!571))

(assert (=> d!246 d!256))

(declare-fun d!258 () Bool)

(declare-fun lt!87 () AbsQueue!2)

(assert (=> d!258 (isAmortized!0 lt!87)))

(declare-fun e!571 () AbsQueue!2)

(assert (=> d!258 (= lt!87 e!571)))

(declare-fun c!121 () Bool)

(assert (=> d!258 (= c!121 (<= (size!23 (Cons!50 e1!2 (rear!45 queue!56))) (size!23 (front!43 queue!56))))))

(assert (=> d!258 (= (amortizedQueue!0 (front!43 queue!56) (Cons!50 e1!2 (rear!45 queue!56))) lt!87)))

(declare-fun b!809 () Bool)

(assert (=> b!809 (= e!571 (Queue!1 (front!43 queue!56) (Cons!50 e1!2 (rear!45 queue!56))))))

(declare-fun b!810 () Bool)

(assert (=> b!810 (= e!571 (Queue!1 (concat!2 (front!43 queue!56) (reverse!5 (Cons!50 e1!2 (rear!45 queue!56)))) Nil!51))))

(assert (= (and d!258 c!121) b!809))

(assert (= (and d!258 (not c!121)) b!810))

(declare-fun m!573 () Bool)

(assert (=> d!258 m!573))

(declare-fun m!575 () Bool)

(assert (=> d!258 m!575))

(declare-fun m!577 () Bool)

(assert (=> d!258 m!577))

(declare-fun m!579 () Bool)

(assert (=> b!810 m!579))

(assert (=> b!810 m!579))

(declare-fun m!581 () Bool)

(assert (=> b!810 m!581))

(assert (=> d!246 d!258))

(declare-fun d!260 () Bool)

(assert (=> d!260 (= (isAmortized!0 lt!82) (>= (size!23 (front!43 lt!82)) (size!23 (rear!45 lt!82))))))

(declare-fun bs!148 () Bool)

(assert (= bs!148 d!260))

(declare-fun m!583 () Bool)

(assert (=> bs!148 m!583))

(declare-fun m!585 () Bool)

(assert (=> bs!148 m!585))

(assert (=> d!248 d!260))

(declare-fun d!262 () Bool)

(declare-fun lt!88 () AbsQueue!2)

(assert (=> d!262 (isAmortized!0 lt!88)))

(declare-fun e!572 () AbsQueue!2)

(assert (=> d!262 (= lt!88 e!572)))

(declare-fun c!122 () Bool)

(assert (=> d!262 (= c!122 (<= (size!23 (Cons!50 e3!1 (rear!45 q2!1))) (size!23 (front!43 q2!1))))))

(assert (=> d!262 (= (amortizedQueue!0 (front!43 q2!1) (Cons!50 e3!1 (rear!45 q2!1))) lt!88)))

(declare-fun b!811 () Bool)

(assert (=> b!811 (= e!572 (Queue!1 (front!43 q2!1) (Cons!50 e3!1 (rear!45 q2!1))))))

(declare-fun b!812 () Bool)

(assert (=> b!812 (= e!572 (Queue!1 (concat!2 (front!43 q2!1) (reverse!5 (Cons!50 e3!1 (rear!45 q2!1)))) Nil!51))))

(assert (= (and d!262 c!122) b!811))

(assert (= (and d!262 (not c!122)) b!812))

(declare-fun m!587 () Bool)

(assert (=> d!262 m!587))

(declare-fun m!589 () Bool)

(assert (=> d!262 m!589))

(declare-fun m!591 () Bool)

(assert (=> d!262 m!591))

(declare-fun m!593 () Bool)

(assert (=> b!812 m!593))

(assert (=> b!812 m!593))

(declare-fun m!595 () Bool)

(assert (=> b!812 m!595))

(assert (=> d!248 d!262))

(declare-fun d!264 () Bool)

(declare-fun lt!91 () Int)

(assert (=> d!264 (>= lt!91 0)))

(declare-fun e!575 () Int)

(assert (=> d!264 (= lt!91 e!575)))

(declare-fun c!125 () Bool)

(assert (=> d!264 (= c!125 (is-Nil!51 (front!43 queue!65)))))

(assert (=> d!264 (= (size!23 (front!43 queue!65)) lt!91)))

(declare-fun b!817 () Bool)

(assert (=> b!817 (= e!575 0)))

(declare-fun b!818 () Bool)

(assert (=> b!818 (= e!575 (+ 1 (size!23 (tail!234 (front!43 queue!65)))))))

(assert (= (and d!264 c!125) b!817))

(assert (= (and d!264 (not c!125)) b!818))

(declare-fun m!597 () Bool)

(assert (=> b!818 m!597))

(assert (=> d!240 d!264))

(declare-fun d!266 () Bool)

(declare-fun lt!92 () Int)

(assert (=> d!266 (>= lt!92 0)))

(declare-fun e!576 () Int)

(assert (=> d!266 (= lt!92 e!576)))

(declare-fun c!126 () Bool)

(assert (=> d!266 (= c!126 (is-Nil!51 (rear!45 queue!65)))))

(assert (=> d!266 (= (size!23 (rear!45 queue!65)) lt!92)))

(declare-fun b!819 () Bool)

(assert (=> b!819 (= e!576 0)))

(declare-fun b!820 () Bool)

(assert (=> b!820 (= e!576 (+ 1 (size!23 (tail!234 (rear!45 queue!65)))))))

(assert (= (and d!266 c!126) b!819))

(assert (= (and d!266 (not c!126)) b!820))

(declare-fun m!599 () Bool)

(assert (=> b!820 m!599))

(assert (=> d!240 d!266))

(push 1)

(assert (not b!820))

(assert (not d!254))

(assert (not b!810))

(assert (not d!256))

(assert (not b!808))

(assert (not d!258))

(assert (not d!252))

(assert (not b!818))

(assert (not d!260))

(assert (not d!262))

(assert (not b!812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!268 () Bool)

(declare-fun e!581 () Bool)

(assert (=> d!268 e!581))

(declare-fun res!680 () Bool)

(assert (=> d!268 (=> (not res!680) (not e!581))))

(declare-fun lt!95 () List!50)

(assert (=> d!268 (= res!680 (= (size!23 lt!95) (+ (size!23 (front!43 q1!1)) (size!23 (reverse!5 (Cons!50 e2!3 (rear!45 q1!1)))))))))

(declare-fun e!582 () List!50)

(assert (=> d!268 (= lt!95 e!582)))

(declare-fun c!129 () Bool)

(assert (=> d!268 (= c!129 (is-Nil!51 (front!43 q1!1)))))

(assert (=> d!268 (= (concat!2 (front!43 q1!1) (reverse!5 (Cons!50 e2!3 (rear!45 q1!1)))) lt!95)))

(declare-fun b!827 () Bool)

(assert (=> b!827 (= e!582 (reverse!5 (Cons!50 e2!3 (rear!45 q1!1))))))

(declare-fun b!828 () Bool)

(assert (=> b!828 (= e!582 (Cons!50 (head!222 (front!43 q1!1)) (concat!2 (tail!234 (front!43 q1!1)) (reverse!5 (Cons!50 e2!3 (rear!45 q1!1))))))))

(declare-fun b!829 () Bool)

(declare-fun content!22 (List!50) (Set (_ BitVec 32)))

(assert (=> b!829 (= e!581 (= (content!22 lt!95) (union (content!22 (front!43 q1!1)) (content!22 (reverse!5 (Cons!50 e2!3 (rear!45 q1!1)))))))))

(assert (= (and d!268 c!129) b!827))

(assert (= (and d!268 (not c!129)) b!828))

(assert (= (and d!268 res!680) b!829))

(declare-fun m!601 () Bool)

(assert (=> d!268 m!601))

(assert (=> d!268 m!563))

(assert (=> d!268 m!565))

(declare-fun m!603 () Bool)

(assert (=> d!268 m!603))

(assert (=> b!828 m!565))

(declare-fun m!605 () Bool)

(assert (=> b!828 m!605))

(declare-fun m!607 () Bool)

(assert (=> b!829 m!607))

(declare-fun m!609 () Bool)

(assert (=> b!829 m!609))

(assert (=> b!829 m!565))

(declare-fun m!611 () Bool)

(assert (=> b!829 m!611))

(assert (=> b!808 d!268))

(declare-fun d!270 () Bool)

(declare-fun lt!98 () List!50)

(assert (=> d!270 (= (content!22 lt!98) (content!22 (Cons!50 e2!3 (rear!45 q1!1))))))

(declare-fun e!585 () List!50)

(assert (=> d!270 (= lt!98 e!585)))

(declare-fun c!132 () Bool)

(assert (=> d!270 (= c!132 (is-Nil!51 (Cons!50 e2!3 (rear!45 q1!1))))))

(assert (=> d!270 (= (reverse!5 (Cons!50 e2!3 (rear!45 q1!1))) lt!98)))

(declare-fun b!834 () Bool)

(assert (=> b!834 (= e!585 Nil!51)))

(declare-fun b!835 () Bool)

(assert (=> b!835 (= e!585 (concat!2 (reverse!5 (tail!234 (Cons!50 e2!3 (rear!45 q1!1)))) (Cons!50 (head!222 (Cons!50 e2!3 (rear!45 q1!1))) Nil!51)))))

(assert (= (and d!270 c!132) b!834))

(assert (= (and d!270 (not c!132)) b!835))

(declare-fun m!613 () Bool)

(assert (=> d!270 m!613))

(declare-fun m!615 () Bool)

(assert (=> d!270 m!615))

(declare-fun m!617 () Bool)

(assert (=> b!835 m!617))

(assert (=> b!835 m!617))

(declare-fun m!619 () Bool)

(assert (=> b!835 m!619))

(assert (=> b!808 d!270))

(declare-fun d!272 () Bool)

(declare-fun e!586 () Bool)

(assert (=> d!272 e!586))

(declare-fun res!681 () Bool)

(assert (=> d!272 (=> (not res!681) (not e!586))))

(declare-fun lt!99 () List!50)

(assert (=> d!272 (= res!681 (= (size!23 lt!99) (+ (size!23 (front!43 queue!56)) (size!23 (reverse!5 (Cons!50 e1!2 (rear!45 queue!56)))))))))

(declare-fun e!587 () List!50)

(assert (=> d!272 (= lt!99 e!587)))

(declare-fun c!133 () Bool)

(assert (=> d!272 (= c!133 (is-Nil!51 (front!43 queue!56)))))

(assert (=> d!272 (= (concat!2 (front!43 queue!56) (reverse!5 (Cons!50 e1!2 (rear!45 queue!56)))) lt!99)))

(declare-fun b!836 () Bool)

(assert (=> b!836 (= e!587 (reverse!5 (Cons!50 e1!2 (rear!45 queue!56))))))

(declare-fun b!837 () Bool)

(assert (=> b!837 (= e!587 (Cons!50 (head!222 (front!43 queue!56)) (concat!2 (tail!234 (front!43 queue!56)) (reverse!5 (Cons!50 e1!2 (rear!45 queue!56))))))))

(declare-fun b!838 () Bool)

(assert (=> b!838 (= e!586 (= (content!22 lt!99) (union (content!22 (front!43 queue!56)) (content!22 (reverse!5 (Cons!50 e1!2 (rear!45 queue!56)))))))))

(assert (= (and d!272 c!133) b!836))

(assert (= (and d!272 (not c!133)) b!837))

(assert (= (and d!272 res!681) b!838))

(declare-fun m!621 () Bool)

(assert (=> d!272 m!621))

(assert (=> d!272 m!577))

(assert (=> d!272 m!579))

(declare-fun m!623 () Bool)

(assert (=> d!272 m!623))

(assert (=> b!837 m!579))

(declare-fun m!625 () Bool)

(assert (=> b!837 m!625))

(declare-fun m!627 () Bool)

(assert (=> b!838 m!627))

(declare-fun m!629 () Bool)

(assert (=> b!838 m!629))

(assert (=> b!838 m!579))

(declare-fun m!631 () Bool)

(assert (=> b!838 m!631))

(assert (=> b!810 d!272))

(declare-fun d!274 () Bool)

(declare-fun lt!100 () List!50)

(assert (=> d!274 (= (content!22 lt!100) (content!22 (Cons!50 e1!2 (rear!45 queue!56))))))

(declare-fun e!588 () List!50)

(assert (=> d!274 (= lt!100 e!588)))

(declare-fun c!134 () Bool)

(assert (=> d!274 (= c!134 (is-Nil!51 (Cons!50 e1!2 (rear!45 queue!56))))))

(assert (=> d!274 (= (reverse!5 (Cons!50 e1!2 (rear!45 queue!56))) lt!100)))

(declare-fun b!839 () Bool)

(assert (=> b!839 (= e!588 Nil!51)))

(declare-fun b!840 () Bool)

(assert (=> b!840 (= e!588 (concat!2 (reverse!5 (tail!234 (Cons!50 e1!2 (rear!45 queue!56)))) (Cons!50 (head!222 (Cons!50 e1!2 (rear!45 queue!56))) Nil!51)))))

(assert (= (and d!274 c!134) b!839))

(assert (= (and d!274 (not c!134)) b!840))

(declare-fun m!633 () Bool)

(assert (=> d!274 m!633))

(declare-fun m!635 () Bool)

(assert (=> d!274 m!635))

(declare-fun m!637 () Bool)

(assert (=> b!840 m!637))

(assert (=> b!840 m!637))

(declare-fun m!639 () Bool)

(assert (=> b!840 m!639))

(assert (=> b!810 d!274))

(declare-fun d!276 () Bool)

(declare-fun lt!101 () Int)

(assert (=> d!276 (>= lt!101 0)))

(declare-fun e!589 () Int)

(assert (=> d!276 (= lt!101 e!589)))

(declare-fun c!135 () Bool)

(assert (=> d!276 (= c!135 (is-Nil!51 (front!43 lt!81)))))

(assert (=> d!276 (= (size!23 (front!43 lt!81)) lt!101)))

(declare-fun b!841 () Bool)

(assert (=> b!841 (= e!589 0)))

(declare-fun b!842 () Bool)

(assert (=> b!842 (= e!589 (+ 1 (size!23 (tail!234 (front!43 lt!81)))))))

(assert (= (and d!276 c!135) b!841))

(assert (= (and d!276 (not c!135)) b!842))

(declare-fun m!641 () Bool)

(assert (=> b!842 m!641))

(assert (=> d!256 d!276))

(declare-fun d!278 () Bool)

(declare-fun lt!102 () Int)

(assert (=> d!278 (>= lt!102 0)))

(declare-fun e!590 () Int)

(assert (=> d!278 (= lt!102 e!590)))

(declare-fun c!136 () Bool)

(assert (=> d!278 (= c!136 (is-Nil!51 (rear!45 lt!81)))))

(assert (=> d!278 (= (size!23 (rear!45 lt!81)) lt!102)))

(declare-fun b!843 () Bool)

(assert (=> b!843 (= e!590 0)))

(declare-fun b!844 () Bool)

(assert (=> b!844 (= e!590 (+ 1 (size!23 (tail!234 (rear!45 lt!81)))))))

(assert (= (and d!278 c!136) b!843))

(assert (= (and d!278 (not c!136)) b!844))

(declare-fun m!643 () Bool)

(assert (=> b!844 m!643))

(assert (=> d!256 d!278))

(declare-fun d!280 () Bool)

(declare-fun lt!103 () Int)

(assert (=> d!280 (>= lt!103 0)))

(declare-fun e!591 () Int)

(assert (=> d!280 (= lt!103 e!591)))

(declare-fun c!137 () Bool)

(assert (=> d!280 (= c!137 (is-Nil!51 (tail!234 (rear!45 queue!65))))))

(assert (=> d!280 (= (size!23 (tail!234 (rear!45 queue!65))) lt!103)))

(declare-fun b!845 () Bool)

(assert (=> b!845 (= e!591 0)))

(declare-fun b!846 () Bool)

(assert (=> b!846 (= e!591 (+ 1 (size!23 (tail!234 (tail!234 (rear!45 queue!65))))))))

(assert (= (and d!280 c!137) b!845))

(assert (= (and d!280 (not c!137)) b!846))

(declare-fun m!645 () Bool)

(assert (=> b!846 m!645))

(assert (=> b!820 d!280))

(declare-fun d!282 () Bool)

(declare-fun lt!104 () Int)

(assert (=> d!282 (>= lt!104 0)))

(declare-fun e!592 () Int)

(assert (=> d!282 (= lt!104 e!592)))

(declare-fun c!138 () Bool)

(assert (=> d!282 (= c!138 (is-Nil!51 (tail!234 (front!43 queue!65))))))

(assert (=> d!282 (= (size!23 (tail!234 (front!43 queue!65))) lt!104)))

(declare-fun b!847 () Bool)

(assert (=> b!847 (= e!592 0)))

(declare-fun b!848 () Bool)

(assert (=> b!848 (= e!592 (+ 1 (size!23 (tail!234 (tail!234 (front!43 queue!65))))))))

(assert (= (and d!282 c!138) b!847))

(assert (= (and d!282 (not c!138)) b!848))

(declare-fun m!647 () Bool)

(assert (=> b!848 m!647))

(assert (=> b!818 d!282))

(declare-fun d!284 () Bool)

(assert (=> d!284 (= (isAmortized!0 lt!86) (>= (size!23 (front!43 lt!86)) (size!23 (rear!45 lt!86))))))

(declare-fun bs!149 () Bool)

(assert (= bs!149 d!284))

(declare-fun m!649 () Bool)

(assert (=> bs!149 m!649))

(declare-fun m!651 () Bool)

(assert (=> bs!149 m!651))

(assert (=> d!254 d!284))

(declare-fun d!286 () Bool)

(declare-fun lt!105 () Int)

(assert (=> d!286 (>= lt!105 0)))

(declare-fun e!593 () Int)

(assert (=> d!286 (= lt!105 e!593)))

(declare-fun c!139 () Bool)

(assert (=> d!286 (= c!139 (is-Nil!51 (Cons!50 e2!3 (rear!45 q1!1))))))

(assert (=> d!286 (= (size!23 (Cons!50 e2!3 (rear!45 q1!1))) lt!105)))

(declare-fun b!849 () Bool)

(assert (=> b!849 (= e!593 0)))

(declare-fun b!850 () Bool)

(assert (=> b!850 (= e!593 (+ 1 (size!23 (tail!234 (Cons!50 e2!3 (rear!45 q1!1))))))))

(assert (= (and d!286 c!139) b!849))

(assert (= (and d!286 (not c!139)) b!850))

(declare-fun m!653 () Bool)

(assert (=> b!850 m!653))

(assert (=> d!254 d!286))

(declare-fun d!288 () Bool)

(declare-fun lt!106 () Int)

(assert (=> d!288 (>= lt!106 0)))

(declare-fun e!594 () Int)

(assert (=> d!288 (= lt!106 e!594)))

(declare-fun c!140 () Bool)

(assert (=> d!288 (= c!140 (is-Nil!51 (front!43 q1!1)))))

(assert (=> d!288 (= (size!23 (front!43 q1!1)) lt!106)))

(declare-fun b!851 () Bool)

(assert (=> b!851 (= e!594 0)))

(declare-fun b!852 () Bool)

(assert (=> b!852 (= e!594 (+ 1 (size!23 (tail!234 (front!43 q1!1)))))))

(assert (= (and d!288 c!140) b!851))

(assert (= (and d!288 (not c!140)) b!852))

(declare-fun m!655 () Bool)

(assert (=> b!852 m!655))

(assert (=> d!254 d!288))

(declare-fun d!290 () Bool)

(declare-fun lt!107 () Int)

(assert (=> d!290 (>= lt!107 0)))

(declare-fun e!595 () Int)

(assert (=> d!290 (= lt!107 e!595)))

(declare-fun c!141 () Bool)

(assert (=> d!290 (= c!141 (is-Nil!51 (front!43 lt!82)))))

(assert (=> d!290 (= (size!23 (front!43 lt!82)) lt!107)))

(declare-fun b!853 () Bool)

(assert (=> b!853 (= e!595 0)))

(declare-fun b!854 () Bool)

(assert (=> b!854 (= e!595 (+ 1 (size!23 (tail!234 (front!43 lt!82)))))))

(assert (= (and d!290 c!141) b!853))

(assert (= (and d!290 (not c!141)) b!854))

(declare-fun m!657 () Bool)

(assert (=> b!854 m!657))

(assert (=> d!260 d!290))

(declare-fun d!292 () Bool)

(declare-fun lt!108 () Int)

(assert (=> d!292 (>= lt!108 0)))

(declare-fun e!596 () Int)

(assert (=> d!292 (= lt!108 e!596)))

(declare-fun c!142 () Bool)

(assert (=> d!292 (= c!142 (is-Nil!51 (rear!45 lt!82)))))

(assert (=> d!292 (= (size!23 (rear!45 lt!82)) lt!108)))

(declare-fun b!855 () Bool)

(assert (=> b!855 (= e!596 0)))

(declare-fun b!856 () Bool)

(assert (=> b!856 (= e!596 (+ 1 (size!23 (tail!234 (rear!45 lt!82)))))))

(assert (= (and d!292 c!142) b!855))

(assert (= (and d!292 (not c!142)) b!856))

(declare-fun m!659 () Bool)

(assert (=> b!856 m!659))

(assert (=> d!260 d!292))

(declare-fun d!294 () Bool)

(declare-fun lt!109 () Int)

(assert (=> d!294 (>= lt!109 0)))

(declare-fun e!597 () Int)

(assert (=> d!294 (= lt!109 e!597)))

(declare-fun c!143 () Bool)

(assert (=> d!294 (= c!143 (is-Nil!51 (front!43 lt!83)))))

(assert (=> d!294 (= (size!23 (front!43 lt!83)) lt!109)))

(declare-fun b!857 () Bool)

(assert (=> b!857 (= e!597 0)))

(declare-fun b!858 () Bool)

(assert (=> b!858 (= e!597 (+ 1 (size!23 (tail!234 (front!43 lt!83)))))))

(assert (= (and d!294 c!143) b!857))

(assert (= (and d!294 (not c!143)) b!858))

(declare-fun m!661 () Bool)

(assert (=> b!858 m!661))

(assert (=> d!252 d!294))

(declare-fun d!296 () Bool)

(declare-fun lt!110 () Int)

(assert (=> d!296 (>= lt!110 0)))

(declare-fun e!598 () Int)

(assert (=> d!296 (= lt!110 e!598)))

(declare-fun c!144 () Bool)

(assert (=> d!296 (= c!144 (is-Nil!51 (rear!45 lt!83)))))

(assert (=> d!296 (= (size!23 (rear!45 lt!83)) lt!110)))

(declare-fun b!859 () Bool)

(assert (=> b!859 (= e!598 0)))

(declare-fun b!860 () Bool)

(assert (=> b!860 (= e!598 (+ 1 (size!23 (tail!234 (rear!45 lt!83)))))))

(assert (= (and d!296 c!144) b!859))

(assert (= (and d!296 (not c!144)) b!860))

(declare-fun m!663 () Bool)

(assert (=> b!860 m!663))

(assert (=> d!252 d!296))

(declare-fun d!298 () Bool)

(assert (=> d!298 (= (isAmortized!0 lt!87) (>= (size!23 (front!43 lt!87)) (size!23 (rear!45 lt!87))))))

(declare-fun bs!150 () Bool)

(assert (= bs!150 d!298))

(declare-fun m!665 () Bool)

(assert (=> bs!150 m!665))

(declare-fun m!667 () Bool)

(assert (=> bs!150 m!667))

(assert (=> d!258 d!298))

(declare-fun d!300 () Bool)

(declare-fun lt!111 () Int)

(assert (=> d!300 (>= lt!111 0)))

(declare-fun e!599 () Int)

(assert (=> d!300 (= lt!111 e!599)))

(declare-fun c!145 () Bool)

(assert (=> d!300 (= c!145 (is-Nil!51 (Cons!50 e1!2 (rear!45 queue!56))))))

(assert (=> d!300 (= (size!23 (Cons!50 e1!2 (rear!45 queue!56))) lt!111)))

(declare-fun b!861 () Bool)

(assert (=> b!861 (= e!599 0)))

(declare-fun b!862 () Bool)

(assert (=> b!862 (= e!599 (+ 1 (size!23 (tail!234 (Cons!50 e1!2 (rear!45 queue!56))))))))

(assert (= (and d!300 c!145) b!861))

(assert (= (and d!300 (not c!145)) b!862))

(declare-fun m!669 () Bool)

(assert (=> b!862 m!669))

(assert (=> d!258 d!300))

(declare-fun d!302 () Bool)

(declare-fun lt!112 () Int)

(assert (=> d!302 (>= lt!112 0)))

(declare-fun e!600 () Int)

(assert (=> d!302 (= lt!112 e!600)))

(declare-fun c!146 () Bool)

(assert (=> d!302 (= c!146 (is-Nil!51 (front!43 queue!56)))))

(assert (=> d!302 (= (size!23 (front!43 queue!56)) lt!112)))

(declare-fun b!863 () Bool)

(assert (=> b!863 (= e!600 0)))

(declare-fun b!864 () Bool)

(assert (=> b!864 (= e!600 (+ 1 (size!23 (tail!234 (front!43 queue!56)))))))

(assert (= (and d!302 c!146) b!863))

(assert (= (and d!302 (not c!146)) b!864))

(declare-fun m!671 () Bool)

(assert (=> b!864 m!671))

(assert (=> d!258 d!302))

(declare-fun d!304 () Bool)

(assert (=> d!304 (= (isAmortized!0 lt!88) (>= (size!23 (front!43 lt!88)) (size!23 (rear!45 lt!88))))))

(declare-fun bs!151 () Bool)

(assert (= bs!151 d!304))

(declare-fun m!673 () Bool)

(assert (=> bs!151 m!673))

(declare-fun m!675 () Bool)

(assert (=> bs!151 m!675))

(assert (=> d!262 d!304))

(declare-fun d!306 () Bool)

(declare-fun lt!113 () Int)

(assert (=> d!306 (>= lt!113 0)))

(declare-fun e!601 () Int)

(assert (=> d!306 (= lt!113 e!601)))

(declare-fun c!147 () Bool)

(assert (=> d!306 (= c!147 (is-Nil!51 (Cons!50 e3!1 (rear!45 q2!1))))))

(assert (=> d!306 (= (size!23 (Cons!50 e3!1 (rear!45 q2!1))) lt!113)))

(declare-fun b!865 () Bool)

(assert (=> b!865 (= e!601 0)))

(declare-fun b!866 () Bool)

(assert (=> b!866 (= e!601 (+ 1 (size!23 (tail!234 (Cons!50 e3!1 (rear!45 q2!1))))))))

(assert (= (and d!306 c!147) b!865))

(assert (= (and d!306 (not c!147)) b!866))

(declare-fun m!677 () Bool)

(assert (=> b!866 m!677))

(assert (=> d!262 d!306))

(declare-fun d!308 () Bool)

(declare-fun lt!114 () Int)

(assert (=> d!308 (>= lt!114 0)))

(declare-fun e!602 () Int)

(assert (=> d!308 (= lt!114 e!602)))

(declare-fun c!148 () Bool)

(assert (=> d!308 (= c!148 (is-Nil!51 (front!43 q2!1)))))

(assert (=> d!308 (= (size!23 (front!43 q2!1)) lt!114)))

(declare-fun b!867 () Bool)

(assert (=> b!867 (= e!602 0)))

(declare-fun b!868 () Bool)

(assert (=> b!868 (= e!602 (+ 1 (size!23 (tail!234 (front!43 q2!1)))))))

(assert (= (and d!308 c!148) b!867))

(assert (= (and d!308 (not c!148)) b!868))

(declare-fun m!679 () Bool)

(assert (=> b!868 m!679))

(assert (=> d!262 d!308))

(declare-fun d!310 () Bool)

(declare-fun e!603 () Bool)

(assert (=> d!310 e!603))

(declare-fun res!682 () Bool)

(assert (=> d!310 (=> (not res!682) (not e!603))))

(declare-fun lt!115 () List!50)

(assert (=> d!310 (= res!682 (= (size!23 lt!115) (+ (size!23 (front!43 q2!1)) (size!23 (reverse!5 (Cons!50 e3!1 (rear!45 q2!1)))))))))

(declare-fun e!604 () List!50)

(assert (=> d!310 (= lt!115 e!604)))

(declare-fun c!149 () Bool)

(assert (=> d!310 (= c!149 (is-Nil!51 (front!43 q2!1)))))

(assert (=> d!310 (= (concat!2 (front!43 q2!1) (reverse!5 (Cons!50 e3!1 (rear!45 q2!1)))) lt!115)))

(declare-fun b!869 () Bool)

(assert (=> b!869 (= e!604 (reverse!5 (Cons!50 e3!1 (rear!45 q2!1))))))

(declare-fun b!870 () Bool)

(assert (=> b!870 (= e!604 (Cons!50 (head!222 (front!43 q2!1)) (concat!2 (tail!234 (front!43 q2!1)) (reverse!5 (Cons!50 e3!1 (rear!45 q2!1))))))))

(declare-fun b!871 () Bool)

(assert (=> b!871 (= e!603 (= (content!22 lt!115) (union (content!22 (front!43 q2!1)) (content!22 (reverse!5 (Cons!50 e3!1 (rear!45 q2!1)))))))))

(assert (= (and d!310 c!149) b!869))

(assert (= (and d!310 (not c!149)) b!870))

(assert (= (and d!310 res!682) b!871))

(declare-fun m!681 () Bool)

(assert (=> d!310 m!681))

(assert (=> d!310 m!591))

(assert (=> d!310 m!593))

(declare-fun m!683 () Bool)

(assert (=> d!310 m!683))

(assert (=> b!870 m!593))

(declare-fun m!685 () Bool)

(assert (=> b!870 m!685))

(declare-fun m!687 () Bool)

(assert (=> b!871 m!687))

(declare-fun m!689 () Bool)

(assert (=> b!871 m!689))

(assert (=> b!871 m!593))

(declare-fun m!691 () Bool)

(assert (=> b!871 m!691))

(assert (=> b!812 d!310))

(declare-fun d!312 () Bool)

(declare-fun lt!116 () List!50)

(assert (=> d!312 (= (content!22 lt!116) (content!22 (Cons!50 e3!1 (rear!45 q2!1))))))

(declare-fun e!605 () List!50)

(assert (=> d!312 (= lt!116 e!605)))

(declare-fun c!150 () Bool)

(assert (=> d!312 (= c!150 (is-Nil!51 (Cons!50 e3!1 (rear!45 q2!1))))))

(assert (=> d!312 (= (reverse!5 (Cons!50 e3!1 (rear!45 q2!1))) lt!116)))

(declare-fun b!872 () Bool)

(assert (=> b!872 (= e!605 Nil!51)))

(declare-fun b!873 () Bool)

(assert (=> b!873 (= e!605 (concat!2 (reverse!5 (tail!234 (Cons!50 e3!1 (rear!45 q2!1)))) (Cons!50 (head!222 (Cons!50 e3!1 (rear!45 q2!1))) Nil!51)))))

(assert (= (and d!312 c!150) b!872))

(assert (= (and d!312 (not c!150)) b!873))

(declare-fun m!693 () Bool)

(assert (=> d!312 m!693))

(declare-fun m!695 () Bool)

(assert (=> d!312 m!695))

(declare-fun m!697 () Bool)

(assert (=> b!873 m!697))

(assert (=> b!873 m!697))

(declare-fun m!699 () Bool)

(assert (=> b!873 m!699))

(assert (=> b!812 d!312))

(push 1)

(assert (not d!312))

(assert (not b!840))

(assert (not b!860))

(assert (not d!298))

(assert (not d!272))

(assert (not b!850))

(assert (not b!870))

(assert (not b!852))

(assert (not b!868))

(assert (not b!856))

(assert (not b!871))

(assert (not b!838))

(assert (not b!848))

(assert (not b!846))

(assert (not b!835))

(assert (not d!270))

(assert (not b!854))

(assert (not b!837))

(assert (not b!862))

(assert (not b!828))

(assert (not d!310))

(assert (not d!284))

(assert (not d!304))

(assert (not b!864))

(assert (not b!873))

(assert (not d!268))

(assert (not b!858))

(assert (not b!842))

(assert (not b!866))

(assert (not b!844))

(assert (not d!274))

(assert (not b!829))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!314 () Bool)

(declare-fun lt!117 () Int)

(assert (=> d!314 (>= lt!117 0)))

(declare-fun e!606 () Int)

(assert (=> d!314 (= lt!117 e!606)))

(declare-fun c!151 () Bool)

(assert (=> d!314 (= c!151 (is-Nil!51 (tail!234 (rear!45 lt!83))))))

(assert (=> d!314 (= (size!23 (tail!234 (rear!45 lt!83))) lt!117)))

(declare-fun b!874 () Bool)

(assert (=> b!874 (= e!606 0)))

(declare-fun b!875 () Bool)

(assert (=> b!875 (= e!606 (+ 1 (size!23 (tail!234 (tail!234 (rear!45 lt!83))))))))

(assert (= (and d!314 c!151) b!874))

(assert (= (and d!314 (not c!151)) b!875))

(declare-fun m!701 () Bool)

(assert (=> b!875 m!701))

(assert (=> b!860 d!314))

(declare-fun d!316 () Bool)

(declare-fun lt!118 () Int)

(assert (=> d!316 (>= lt!118 0)))

(declare-fun e!607 () Int)

(assert (=> d!316 (= lt!118 e!607)))

(declare-fun c!152 () Bool)

(assert (=> d!316 (= c!152 (is-Nil!51 (tail!234 (tail!234 (rear!45 queue!65)))))))

(assert (=> d!316 (= (size!23 (tail!234 (tail!234 (rear!45 queue!65)))) lt!118)))

(declare-fun b!876 () Bool)

(assert (=> b!876 (= e!607 0)))

(declare-fun b!877 () Bool)

(assert (=> b!877 (= e!607 (+ 1 (size!23 (tail!234 (tail!234 (tail!234 (rear!45 queue!65)))))))))

(assert (= (and d!316 c!152) b!876))

(assert (= (and d!316 (not c!152)) b!877))

(declare-fun m!703 () Bool)

(assert (=> b!877 m!703))

(assert (=> b!846 d!316))

(declare-fun d!318 () Bool)

(declare-fun lt!119 () Int)

(assert (=> d!318 (>= lt!119 0)))

(declare-fun e!608 () Int)

(assert (=> d!318 (= lt!119 e!608)))

(declare-fun c!153 () Bool)

(assert (=> d!318 (= c!153 (is-Nil!51 lt!99))))

(assert (=> d!318 (= (size!23 lt!99) lt!119)))

(declare-fun b!878 () Bool)

(assert (=> b!878 (= e!608 0)))

(declare-fun b!879 () Bool)

(assert (=> b!879 (= e!608 (+ 1 (size!23 (tail!234 lt!99))))))

(assert (= (and d!318 c!153) b!878))

(assert (= (and d!318 (not c!153)) b!879))

(declare-fun m!705 () Bool)

(assert (=> b!879 m!705))

(assert (=> d!272 d!318))

(assert (=> d!272 d!302))

(declare-fun d!320 () Bool)

(declare-fun lt!120 () Int)

(assert (=> d!320 (>= lt!120 0)))

(declare-fun e!609 () Int)

(assert (=> d!320 (= lt!120 e!609)))

(declare-fun c!154 () Bool)

(assert (=> d!320 (= c!154 (is-Nil!51 (reverse!5 (Cons!50 e1!2 (rear!45 queue!56)))))))

(assert (=> d!320 (= (size!23 (reverse!5 (Cons!50 e1!2 (rear!45 queue!56)))) lt!120)))

(declare-fun b!880 () Bool)

(assert (=> b!880 (= e!609 0)))

(declare-fun b!881 () Bool)

(assert (=> b!881 (= e!609 (+ 1 (size!23 (tail!234 (reverse!5 (Cons!50 e1!2 (rear!45 queue!56)))))))))

(assert (= (and d!320 c!154) b!880))

(assert (= (and d!320 (not c!154)) b!881))

(declare-fun m!707 () Bool)

(assert (=> b!881 m!707))

(assert (=> d!272 d!320))

(declare-fun d!322 () Bool)

(declare-fun lt!121 () Int)

(assert (=> d!322 (>= lt!121 0)))

(declare-fun e!610 () Int)

(assert (=> d!322 (= lt!121 e!610)))

(declare-fun c!155 () Bool)

(assert (=> d!322 (= c!155 (is-Nil!51 (tail!234 (Cons!50 e2!3 (rear!45 q1!1)))))))

(assert (=> d!322 (= (size!23 (tail!234 (Cons!50 e2!3 (rear!45 q1!1)))) lt!121)))

(declare-fun b!882 () Bool)

(assert (=> b!882 (= e!610 0)))

(declare-fun b!883 () Bool)

(assert (=> b!883 (= e!610 (+ 1 (size!23 (tail!234 (tail!234 (Cons!50 e2!3 (rear!45 q1!1)))))))))

(assert (= (and d!322 c!155) b!882))

(assert (= (and d!322 (not c!155)) b!883))

(declare-fun m!709 () Bool)

(assert (=> b!883 m!709))

(assert (=> b!850 d!322))

(declare-fun d!324 () Bool)

(declare-fun c!158 () Bool)

(assert (=> d!324 (= c!158 (is-Nil!51 lt!100))))

(declare-fun e!613 () (Set (_ BitVec 32)))

(assert (=> d!324 (= (content!22 lt!100) e!613)))

(declare-fun b!888 () Bool)

(assert (=> b!888 (= e!613 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!889 () Bool)

(assert (=> b!889 (= e!613 (union (insert (head!222 lt!100) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 lt!100))))))

(assert (= (and d!324 c!158) b!888))

(assert (= (and d!324 (not c!158)) b!889))

(declare-fun m!711 () Bool)

(assert (=> b!889 m!711))

(declare-fun m!713 () Bool)

(assert (=> b!889 m!713))

(assert (=> d!274 d!324))

(declare-fun d!326 () Bool)

(declare-fun c!159 () Bool)

(assert (=> d!326 (= c!159 (is-Nil!51 (Cons!50 e1!2 (rear!45 queue!56))))))

(declare-fun e!614 () (Set (_ BitVec 32)))

(assert (=> d!326 (= (content!22 (Cons!50 e1!2 (rear!45 queue!56))) e!614)))

(declare-fun b!890 () Bool)

(assert (=> b!890 (= e!614 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!891 () Bool)

(assert (=> b!891 (= e!614 (union (insert (head!222 (Cons!50 e1!2 (rear!45 queue!56))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 (Cons!50 e1!2 (rear!45 queue!56))))))))

(assert (= (and d!326 c!159) b!890))

(assert (= (and d!326 (not c!159)) b!891))

(declare-fun m!715 () Bool)

(assert (=> b!891 m!715))

(declare-fun m!717 () Bool)

(assert (=> b!891 m!717))

(assert (=> d!274 d!326))

(declare-fun d!328 () Bool)

(declare-fun c!160 () Bool)

(assert (=> d!328 (= c!160 (is-Nil!51 lt!98))))

(declare-fun e!615 () (Set (_ BitVec 32)))

(assert (=> d!328 (= (content!22 lt!98) e!615)))

(declare-fun b!892 () Bool)

(assert (=> b!892 (= e!615 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!893 () Bool)

(assert (=> b!893 (= e!615 (union (insert (head!222 lt!98) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 lt!98))))))

(assert (= (and d!328 c!160) b!892))

(assert (= (and d!328 (not c!160)) b!893))

(declare-fun m!719 () Bool)

(assert (=> b!893 m!719))

(declare-fun m!721 () Bool)

(assert (=> b!893 m!721))

(assert (=> d!270 d!328))

(declare-fun d!330 () Bool)

(declare-fun c!161 () Bool)

(assert (=> d!330 (= c!161 (is-Nil!51 (Cons!50 e2!3 (rear!45 q1!1))))))

(declare-fun e!616 () (Set (_ BitVec 32)))

(assert (=> d!330 (= (content!22 (Cons!50 e2!3 (rear!45 q1!1))) e!616)))

(declare-fun b!894 () Bool)

(assert (=> b!894 (= e!616 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!895 () Bool)

(assert (=> b!895 (= e!616 (union (insert (head!222 (Cons!50 e2!3 (rear!45 q1!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 (Cons!50 e2!3 (rear!45 q1!1))))))))

(assert (= (and d!330 c!161) b!894))

(assert (= (and d!330 (not c!161)) b!895))

(declare-fun m!723 () Bool)

(assert (=> b!895 m!723))

(declare-fun m!725 () Bool)

(assert (=> b!895 m!725))

(assert (=> d!270 d!330))

(declare-fun d!332 () Bool)

(declare-fun e!617 () Bool)

(assert (=> d!332 e!617))

(declare-fun res!683 () Bool)

(assert (=> d!332 (=> (not res!683) (not e!617))))

(declare-fun lt!122 () List!50)

(assert (=> d!332 (= res!683 (= (size!23 lt!122) (+ (size!23 (tail!234 (front!43 q1!1))) (size!23 (reverse!5 (Cons!50 e2!3 (rear!45 q1!1)))))))))

(declare-fun e!618 () List!50)

(assert (=> d!332 (= lt!122 e!618)))

(declare-fun c!162 () Bool)

(assert (=> d!332 (= c!162 (is-Nil!51 (tail!234 (front!43 q1!1))))))

(assert (=> d!332 (= (concat!2 (tail!234 (front!43 q1!1)) (reverse!5 (Cons!50 e2!3 (rear!45 q1!1)))) lt!122)))

(declare-fun b!896 () Bool)

(assert (=> b!896 (= e!618 (reverse!5 (Cons!50 e2!3 (rear!45 q1!1))))))

(declare-fun b!897 () Bool)

(assert (=> b!897 (= e!618 (Cons!50 (head!222 (tail!234 (front!43 q1!1))) (concat!2 (tail!234 (tail!234 (front!43 q1!1))) (reverse!5 (Cons!50 e2!3 (rear!45 q1!1))))))))

(declare-fun b!898 () Bool)

(assert (=> b!898 (= e!617 (= (content!22 lt!122) (union (content!22 (tail!234 (front!43 q1!1))) (content!22 (reverse!5 (Cons!50 e2!3 (rear!45 q1!1)))))))))

(assert (= (and d!332 c!162) b!896))

(assert (= (and d!332 (not c!162)) b!897))

(assert (= (and d!332 res!683) b!898))

(declare-fun m!727 () Bool)

(assert (=> d!332 m!727))

(assert (=> d!332 m!655))

(assert (=> d!332 m!565))

(assert (=> d!332 m!603))

(assert (=> b!897 m!565))

(declare-fun m!729 () Bool)

(assert (=> b!897 m!729))

(declare-fun m!731 () Bool)

(assert (=> b!898 m!731))

(declare-fun m!733 () Bool)

(assert (=> b!898 m!733))

(assert (=> b!898 m!565))

(assert (=> b!898 m!611))

(assert (=> b!828 d!332))

(declare-fun d!334 () Bool)

(declare-fun lt!123 () Int)

(assert (=> d!334 (>= lt!123 0)))

(declare-fun e!619 () Int)

(assert (=> d!334 (= lt!123 e!619)))

(declare-fun c!163 () Bool)

(assert (=> d!334 (= c!163 (is-Nil!51 (tail!234 (rear!45 lt!81))))))

(assert (=> d!334 (= (size!23 (tail!234 (rear!45 lt!81))) lt!123)))

(declare-fun b!899 () Bool)

(assert (=> b!899 (= e!619 0)))

(declare-fun b!900 () Bool)

(assert (=> b!900 (= e!619 (+ 1 (size!23 (tail!234 (tail!234 (rear!45 lt!81))))))))

(assert (= (and d!334 c!163) b!899))

(assert (= (and d!334 (not c!163)) b!900))

(declare-fun m!735 () Bool)

(assert (=> b!900 m!735))

(assert (=> b!844 d!334))

(declare-fun d!336 () Bool)

(declare-fun lt!124 () Int)

(assert (=> d!336 (>= lt!124 0)))

(declare-fun e!620 () Int)

(assert (=> d!336 (= lt!124 e!620)))

(declare-fun c!164 () Bool)

(assert (=> d!336 (= c!164 (is-Nil!51 (front!43 lt!87)))))

(assert (=> d!336 (= (size!23 (front!43 lt!87)) lt!124)))

(declare-fun b!901 () Bool)

(assert (=> b!901 (= e!620 0)))

(declare-fun b!902 () Bool)

(assert (=> b!902 (= e!620 (+ 1 (size!23 (tail!234 (front!43 lt!87)))))))

(assert (= (and d!336 c!164) b!901))

(assert (= (and d!336 (not c!164)) b!902))

(declare-fun m!737 () Bool)

(assert (=> b!902 m!737))

(assert (=> d!298 d!336))

(declare-fun d!338 () Bool)

(declare-fun lt!125 () Int)

(assert (=> d!338 (>= lt!125 0)))

(declare-fun e!621 () Int)

(assert (=> d!338 (= lt!125 e!621)))

(declare-fun c!165 () Bool)

(assert (=> d!338 (= c!165 (is-Nil!51 (rear!45 lt!87)))))

(assert (=> d!338 (= (size!23 (rear!45 lt!87)) lt!125)))

(declare-fun b!903 () Bool)

(assert (=> b!903 (= e!621 0)))

(declare-fun b!904 () Bool)

(assert (=> b!904 (= e!621 (+ 1 (size!23 (tail!234 (rear!45 lt!87)))))))

(assert (= (and d!338 c!165) b!903))

(assert (= (and d!338 (not c!165)) b!904))

(declare-fun m!739 () Bool)

(assert (=> b!904 m!739))

(assert (=> d!298 d!338))

(declare-fun d!340 () Bool)

(declare-fun lt!126 () Int)

(assert (=> d!340 (>= lt!126 0)))

(declare-fun e!622 () Int)

(assert (=> d!340 (= lt!126 e!622)))

(declare-fun c!166 () Bool)

(assert (=> d!340 (= c!166 (is-Nil!51 (front!43 lt!86)))))

(assert (=> d!340 (= (size!23 (front!43 lt!86)) lt!126)))

(declare-fun b!905 () Bool)

(assert (=> b!905 (= e!622 0)))

(declare-fun b!906 () Bool)

(assert (=> b!906 (= e!622 (+ 1 (size!23 (tail!234 (front!43 lt!86)))))))

(assert (= (and d!340 c!166) b!905))

(assert (= (and d!340 (not c!166)) b!906))

(declare-fun m!741 () Bool)

(assert (=> b!906 m!741))

(assert (=> d!284 d!340))

(declare-fun d!342 () Bool)

(declare-fun lt!127 () Int)

(assert (=> d!342 (>= lt!127 0)))

(declare-fun e!623 () Int)

(assert (=> d!342 (= lt!127 e!623)))

(declare-fun c!167 () Bool)

(assert (=> d!342 (= c!167 (is-Nil!51 (rear!45 lt!86)))))

(assert (=> d!342 (= (size!23 (rear!45 lt!86)) lt!127)))

(declare-fun b!907 () Bool)

(assert (=> b!907 (= e!623 0)))

(declare-fun b!908 () Bool)

(assert (=> b!908 (= e!623 (+ 1 (size!23 (tail!234 (rear!45 lt!86)))))))

(assert (= (and d!342 c!167) b!907))

(assert (= (and d!342 (not c!167)) b!908))

(declare-fun m!743 () Bool)

(assert (=> b!908 m!743))

(assert (=> d!284 d!342))

(declare-fun d!344 () Bool)

(declare-fun c!168 () Bool)

(assert (=> d!344 (= c!168 (is-Nil!51 lt!115))))

(declare-fun e!624 () (Set (_ BitVec 32)))

(assert (=> d!344 (= (content!22 lt!115) e!624)))

(declare-fun b!909 () Bool)

(assert (=> b!909 (= e!624 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!910 () Bool)

(assert (=> b!910 (= e!624 (union (insert (head!222 lt!115) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 lt!115))))))

(assert (= (and d!344 c!168) b!909))

(assert (= (and d!344 (not c!168)) b!910))

(declare-fun m!745 () Bool)

(assert (=> b!910 m!745))

(declare-fun m!747 () Bool)

(assert (=> b!910 m!747))

(assert (=> b!871 d!344))

(declare-fun d!346 () Bool)

(declare-fun c!169 () Bool)

(assert (=> d!346 (= c!169 (is-Nil!51 (front!43 q2!1)))))

(declare-fun e!625 () (Set (_ BitVec 32)))

(assert (=> d!346 (= (content!22 (front!43 q2!1)) e!625)))

(declare-fun b!911 () Bool)

(assert (=> b!911 (= e!625 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!912 () Bool)

(assert (=> b!912 (= e!625 (union (insert (head!222 (front!43 q2!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 (front!43 q2!1)))))))

(assert (= (and d!346 c!169) b!911))

(assert (= (and d!346 (not c!169)) b!912))

(declare-fun m!749 () Bool)

(assert (=> b!912 m!749))

(declare-fun m!751 () Bool)

(assert (=> b!912 m!751))

(assert (=> b!871 d!346))

(declare-fun d!348 () Bool)

(declare-fun c!170 () Bool)

(assert (=> d!348 (= c!170 (is-Nil!51 (reverse!5 (Cons!50 e3!1 (rear!45 q2!1)))))))

(declare-fun e!626 () (Set (_ BitVec 32)))

(assert (=> d!348 (= (content!22 (reverse!5 (Cons!50 e3!1 (rear!45 q2!1)))) e!626)))

(declare-fun b!913 () Bool)

(assert (=> b!913 (= e!626 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!914 () Bool)

(assert (=> b!914 (= e!626 (union (insert (head!222 (reverse!5 (Cons!50 e3!1 (rear!45 q2!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 (reverse!5 (Cons!50 e3!1 (rear!45 q2!1)))))))))

(assert (= (and d!348 c!170) b!913))

(assert (= (and d!348 (not c!170)) b!914))

(declare-fun m!753 () Bool)

(assert (=> b!914 m!753))

(declare-fun m!755 () Bool)

(assert (=> b!914 m!755))

(assert (=> b!871 d!348))

(declare-fun d!350 () Bool)

(declare-fun lt!128 () Int)

(assert (=> d!350 (>= lt!128 0)))

(declare-fun e!627 () Int)

(assert (=> d!350 (= lt!128 e!627)))

(declare-fun c!171 () Bool)

(assert (=> d!350 (= c!171 (is-Nil!51 (tail!234 (front!43 lt!81))))))

(assert (=> d!350 (= (size!23 (tail!234 (front!43 lt!81))) lt!128)))

(declare-fun b!915 () Bool)

(assert (=> b!915 (= e!627 0)))

(declare-fun b!916 () Bool)

(assert (=> b!916 (= e!627 (+ 1 (size!23 (tail!234 (tail!234 (front!43 lt!81))))))))

(assert (= (and d!350 c!171) b!915))

(assert (= (and d!350 (not c!171)) b!916))

(declare-fun m!757 () Bool)

(assert (=> b!916 m!757))

(assert (=> b!842 d!350))

(declare-fun d!352 () Bool)

(declare-fun lt!129 () Int)

(assert (=> d!352 (>= lt!129 0)))

(declare-fun e!628 () Int)

(assert (=> d!352 (= lt!129 e!628)))

(declare-fun c!172 () Bool)

(assert (=> d!352 (= c!172 (is-Nil!51 (tail!234 (rear!45 lt!82))))))

(assert (=> d!352 (= (size!23 (tail!234 (rear!45 lt!82))) lt!129)))

(declare-fun b!917 () Bool)

(assert (=> b!917 (= e!628 0)))

(declare-fun b!918 () Bool)

(assert (=> b!918 (= e!628 (+ 1 (size!23 (tail!234 (tail!234 (rear!45 lt!82))))))))

(assert (= (and d!352 c!172) b!917))

(assert (= (and d!352 (not c!172)) b!918))

(declare-fun m!759 () Bool)

(assert (=> b!918 m!759))

(assert (=> b!856 d!352))

(declare-fun d!354 () Bool)

(declare-fun lt!130 () Int)

(assert (=> d!354 (>= lt!130 0)))

(declare-fun e!629 () Int)

(assert (=> d!354 (= lt!130 e!629)))

(declare-fun c!173 () Bool)

(assert (=> d!354 (= c!173 (is-Nil!51 (tail!234 (front!43 lt!83))))))

(assert (=> d!354 (= (size!23 (tail!234 (front!43 lt!83))) lt!130)))

(declare-fun b!919 () Bool)

(assert (=> b!919 (= e!629 0)))

(declare-fun b!920 () Bool)

(assert (=> b!920 (= e!629 (+ 1 (size!23 (tail!234 (tail!234 (front!43 lt!83))))))))

(assert (= (and d!354 c!173) b!919))

(assert (= (and d!354 (not c!173)) b!920))

(declare-fun m!761 () Bool)

(assert (=> b!920 m!761))

(assert (=> b!858 d!354))

(declare-fun d!356 () Bool)

(declare-fun lt!131 () Int)

(assert (=> d!356 (>= lt!131 0)))

(declare-fun e!630 () Int)

(assert (=> d!356 (= lt!131 e!630)))

(declare-fun c!174 () Bool)

(assert (=> d!356 (= c!174 (is-Nil!51 (front!43 lt!88)))))

(assert (=> d!356 (= (size!23 (front!43 lt!88)) lt!131)))

(declare-fun b!921 () Bool)

(assert (=> b!921 (= e!630 0)))

(declare-fun b!922 () Bool)

(assert (=> b!922 (= e!630 (+ 1 (size!23 (tail!234 (front!43 lt!88)))))))

(assert (= (and d!356 c!174) b!921))

(assert (= (and d!356 (not c!174)) b!922))

(declare-fun m!763 () Bool)

(assert (=> b!922 m!763))

(assert (=> d!304 d!356))

(declare-fun d!358 () Bool)

(declare-fun lt!132 () Int)

(assert (=> d!358 (>= lt!132 0)))

(declare-fun e!631 () Int)

(assert (=> d!358 (= lt!132 e!631)))

(declare-fun c!175 () Bool)

(assert (=> d!358 (= c!175 (is-Nil!51 (rear!45 lt!88)))))

(assert (=> d!358 (= (size!23 (rear!45 lt!88)) lt!132)))

(declare-fun b!923 () Bool)

(assert (=> b!923 (= e!631 0)))

(declare-fun b!924 () Bool)

(assert (=> b!924 (= e!631 (+ 1 (size!23 (tail!234 (rear!45 lt!88)))))))

(assert (= (and d!358 c!175) b!923))

(assert (= (and d!358 (not c!175)) b!924))

(declare-fun m!765 () Bool)

(assert (=> b!924 m!765))

(assert (=> d!304 d!358))

(declare-fun d!360 () Bool)

(declare-fun e!632 () Bool)

(assert (=> d!360 e!632))

(declare-fun res!684 () Bool)

(assert (=> d!360 (=> (not res!684) (not e!632))))

(declare-fun lt!133 () List!50)

(assert (=> d!360 (= res!684 (= (size!23 lt!133) (+ (size!23 (reverse!5 (tail!234 (Cons!50 e2!3 (rear!45 q1!1))))) (size!23 (Cons!50 (head!222 (Cons!50 e2!3 (rear!45 q1!1))) Nil!51)))))))

(declare-fun e!633 () List!50)

(assert (=> d!360 (= lt!133 e!633)))

(declare-fun c!176 () Bool)

(assert (=> d!360 (= c!176 (is-Nil!51 (reverse!5 (tail!234 (Cons!50 e2!3 (rear!45 q1!1))))))))

(assert (=> d!360 (= (concat!2 (reverse!5 (tail!234 (Cons!50 e2!3 (rear!45 q1!1)))) (Cons!50 (head!222 (Cons!50 e2!3 (rear!45 q1!1))) Nil!51)) lt!133)))

(declare-fun b!925 () Bool)

(assert (=> b!925 (= e!633 (Cons!50 (head!222 (Cons!50 e2!3 (rear!45 q1!1))) Nil!51))))

(declare-fun b!926 () Bool)

(assert (=> b!926 (= e!633 (Cons!50 (head!222 (reverse!5 (tail!234 (Cons!50 e2!3 (rear!45 q1!1))))) (concat!2 (tail!234 (reverse!5 (tail!234 (Cons!50 e2!3 (rear!45 q1!1))))) (Cons!50 (head!222 (Cons!50 e2!3 (rear!45 q1!1))) Nil!51))))))

(declare-fun b!927 () Bool)

(assert (=> b!927 (= e!632 (= (content!22 lt!133) (union (content!22 (reverse!5 (tail!234 (Cons!50 e2!3 (rear!45 q1!1))))) (content!22 (Cons!50 (head!222 (Cons!50 e2!3 (rear!45 q1!1))) Nil!51)))))))

(assert (= (and d!360 c!176) b!925))

(assert (= (and d!360 (not c!176)) b!926))

(assert (= (and d!360 res!684) b!927))

(declare-fun m!767 () Bool)

(assert (=> d!360 m!767))

(assert (=> d!360 m!617))

(declare-fun m!769 () Bool)

(assert (=> d!360 m!769))

(declare-fun m!771 () Bool)

(assert (=> d!360 m!771))

(declare-fun m!773 () Bool)

(assert (=> b!926 m!773))

(declare-fun m!775 () Bool)

(assert (=> b!927 m!775))

(assert (=> b!927 m!617))

(declare-fun m!777 () Bool)

(assert (=> b!927 m!777))

(declare-fun m!779 () Bool)

(assert (=> b!927 m!779))

(assert (=> b!835 d!360))

(declare-fun d!362 () Bool)

(declare-fun lt!134 () List!50)

(assert (=> d!362 (= (content!22 lt!134) (content!22 (tail!234 (Cons!50 e2!3 (rear!45 q1!1)))))))

(declare-fun e!634 () List!50)

(assert (=> d!362 (= lt!134 e!634)))

(declare-fun c!177 () Bool)

(assert (=> d!362 (= c!177 (is-Nil!51 (tail!234 (Cons!50 e2!3 (rear!45 q1!1)))))))

(assert (=> d!362 (= (reverse!5 (tail!234 (Cons!50 e2!3 (rear!45 q1!1)))) lt!134)))

(declare-fun b!928 () Bool)

(assert (=> b!928 (= e!634 Nil!51)))

(declare-fun b!929 () Bool)

(assert (=> b!929 (= e!634 (concat!2 (reverse!5 (tail!234 (tail!234 (Cons!50 e2!3 (rear!45 q1!1))))) (Cons!50 (head!222 (tail!234 (Cons!50 e2!3 (rear!45 q1!1)))) Nil!51)))))

(assert (= (and d!362 c!177) b!928))

(assert (= (and d!362 (not c!177)) b!929))

(declare-fun m!781 () Bool)

(assert (=> d!362 m!781))

(assert (=> d!362 m!725))

(declare-fun m!783 () Bool)

(assert (=> b!929 m!783))

(assert (=> b!929 m!783))

(declare-fun m!785 () Bool)

(assert (=> b!929 m!785))

(assert (=> b!835 d!362))

(declare-fun d!364 () Bool)

(declare-fun e!635 () Bool)

(assert (=> d!364 e!635))

(declare-fun res!685 () Bool)

(assert (=> d!364 (=> (not res!685) (not e!635))))

(declare-fun lt!135 () List!50)

(assert (=> d!364 (= res!685 (= (size!23 lt!135) (+ (size!23 (reverse!5 (tail!234 (Cons!50 e3!1 (rear!45 q2!1))))) (size!23 (Cons!50 (head!222 (Cons!50 e3!1 (rear!45 q2!1))) Nil!51)))))))

(declare-fun e!636 () List!50)

(assert (=> d!364 (= lt!135 e!636)))

(declare-fun c!178 () Bool)

(assert (=> d!364 (= c!178 (is-Nil!51 (reverse!5 (tail!234 (Cons!50 e3!1 (rear!45 q2!1))))))))

(assert (=> d!364 (= (concat!2 (reverse!5 (tail!234 (Cons!50 e3!1 (rear!45 q2!1)))) (Cons!50 (head!222 (Cons!50 e3!1 (rear!45 q2!1))) Nil!51)) lt!135)))

(declare-fun b!930 () Bool)

(assert (=> b!930 (= e!636 (Cons!50 (head!222 (Cons!50 e3!1 (rear!45 q2!1))) Nil!51))))

(declare-fun b!931 () Bool)

(assert (=> b!931 (= e!636 (Cons!50 (head!222 (reverse!5 (tail!234 (Cons!50 e3!1 (rear!45 q2!1))))) (concat!2 (tail!234 (reverse!5 (tail!234 (Cons!50 e3!1 (rear!45 q2!1))))) (Cons!50 (head!222 (Cons!50 e3!1 (rear!45 q2!1))) Nil!51))))))

(declare-fun b!932 () Bool)

(assert (=> b!932 (= e!635 (= (content!22 lt!135) (union (content!22 (reverse!5 (tail!234 (Cons!50 e3!1 (rear!45 q2!1))))) (content!22 (Cons!50 (head!222 (Cons!50 e3!1 (rear!45 q2!1))) Nil!51)))))))

(assert (= (and d!364 c!178) b!930))

(assert (= (and d!364 (not c!178)) b!931))

(assert (= (and d!364 res!685) b!932))

(declare-fun m!787 () Bool)

(assert (=> d!364 m!787))

(assert (=> d!364 m!697))

(declare-fun m!789 () Bool)

(assert (=> d!364 m!789))

(declare-fun m!791 () Bool)

(assert (=> d!364 m!791))

(declare-fun m!793 () Bool)

(assert (=> b!931 m!793))

(declare-fun m!795 () Bool)

(assert (=> b!932 m!795))

(assert (=> b!932 m!697))

(declare-fun m!797 () Bool)

(assert (=> b!932 m!797))

(declare-fun m!799 () Bool)

(assert (=> b!932 m!799))

(assert (=> b!873 d!364))

(declare-fun d!366 () Bool)

(declare-fun lt!136 () List!50)

(assert (=> d!366 (= (content!22 lt!136) (content!22 (tail!234 (Cons!50 e3!1 (rear!45 q2!1)))))))

(declare-fun e!637 () List!50)

(assert (=> d!366 (= lt!136 e!637)))

(declare-fun c!179 () Bool)

(assert (=> d!366 (= c!179 (is-Nil!51 (tail!234 (Cons!50 e3!1 (rear!45 q2!1)))))))

(assert (=> d!366 (= (reverse!5 (tail!234 (Cons!50 e3!1 (rear!45 q2!1)))) lt!136)))

(declare-fun b!933 () Bool)

(assert (=> b!933 (= e!637 Nil!51)))

(declare-fun b!934 () Bool)

(assert (=> b!934 (= e!637 (concat!2 (reverse!5 (tail!234 (tail!234 (Cons!50 e3!1 (rear!45 q2!1))))) (Cons!50 (head!222 (tail!234 (Cons!50 e3!1 (rear!45 q2!1)))) Nil!51)))))

(assert (= (and d!366 c!179) b!933))

(assert (= (and d!366 (not c!179)) b!934))

(declare-fun m!801 () Bool)

(assert (=> d!366 m!801))

(declare-fun m!803 () Bool)

(assert (=> d!366 m!803))

(declare-fun m!805 () Bool)

(assert (=> b!934 m!805))

(assert (=> b!934 m!805))

(declare-fun m!807 () Bool)

(assert (=> b!934 m!807))

(assert (=> b!873 d!366))

(declare-fun d!368 () Bool)

(declare-fun lt!137 () Int)

(assert (=> d!368 (>= lt!137 0)))

(declare-fun e!638 () Int)

(assert (=> d!368 (= lt!137 e!638)))

(declare-fun c!180 () Bool)

(assert (=> d!368 (= c!180 (is-Nil!51 (tail!234 (front!43 q1!1))))))

(assert (=> d!368 (= (size!23 (tail!234 (front!43 q1!1))) lt!137)))

(declare-fun b!935 () Bool)

(assert (=> b!935 (= e!638 0)))

(declare-fun b!936 () Bool)

(assert (=> b!936 (= e!638 (+ 1 (size!23 (tail!234 (tail!234 (front!43 q1!1))))))))

(assert (= (and d!368 c!180) b!935))

(assert (= (and d!368 (not c!180)) b!936))

(declare-fun m!809 () Bool)

(assert (=> b!936 m!809))

(assert (=> b!852 d!368))

(declare-fun d!370 () Bool)

(declare-fun e!639 () Bool)

(assert (=> d!370 e!639))

(declare-fun res!686 () Bool)

(assert (=> d!370 (=> (not res!686) (not e!639))))

(declare-fun lt!138 () List!50)

(assert (=> d!370 (= res!686 (= (size!23 lt!138) (+ (size!23 (reverse!5 (tail!234 (Cons!50 e1!2 (rear!45 queue!56))))) (size!23 (Cons!50 (head!222 (Cons!50 e1!2 (rear!45 queue!56))) Nil!51)))))))

(declare-fun e!640 () List!50)

(assert (=> d!370 (= lt!138 e!640)))

(declare-fun c!181 () Bool)

(assert (=> d!370 (= c!181 (is-Nil!51 (reverse!5 (tail!234 (Cons!50 e1!2 (rear!45 queue!56))))))))

(assert (=> d!370 (= (concat!2 (reverse!5 (tail!234 (Cons!50 e1!2 (rear!45 queue!56)))) (Cons!50 (head!222 (Cons!50 e1!2 (rear!45 queue!56))) Nil!51)) lt!138)))

(declare-fun b!937 () Bool)

(assert (=> b!937 (= e!640 (Cons!50 (head!222 (Cons!50 e1!2 (rear!45 queue!56))) Nil!51))))

(declare-fun b!938 () Bool)

(assert (=> b!938 (= e!640 (Cons!50 (head!222 (reverse!5 (tail!234 (Cons!50 e1!2 (rear!45 queue!56))))) (concat!2 (tail!234 (reverse!5 (tail!234 (Cons!50 e1!2 (rear!45 queue!56))))) (Cons!50 (head!222 (Cons!50 e1!2 (rear!45 queue!56))) Nil!51))))))

(declare-fun b!939 () Bool)

(assert (=> b!939 (= e!639 (= (content!22 lt!138) (union (content!22 (reverse!5 (tail!234 (Cons!50 e1!2 (rear!45 queue!56))))) (content!22 (Cons!50 (head!222 (Cons!50 e1!2 (rear!45 queue!56))) Nil!51)))))))

(assert (= (and d!370 c!181) b!937))

(assert (= (and d!370 (not c!181)) b!938))

(assert (= (and d!370 res!686) b!939))

(declare-fun m!811 () Bool)

(assert (=> d!370 m!811))

(assert (=> d!370 m!637))

(declare-fun m!813 () Bool)

(assert (=> d!370 m!813))

(declare-fun m!815 () Bool)

(assert (=> d!370 m!815))

(declare-fun m!817 () Bool)

(assert (=> b!938 m!817))

(declare-fun m!819 () Bool)

(assert (=> b!939 m!819))

(assert (=> b!939 m!637))

(declare-fun m!821 () Bool)

(assert (=> b!939 m!821))

(declare-fun m!823 () Bool)

(assert (=> b!939 m!823))

(assert (=> b!840 d!370))

(declare-fun d!372 () Bool)

(declare-fun lt!139 () List!50)

(assert (=> d!372 (= (content!22 lt!139) (content!22 (tail!234 (Cons!50 e1!2 (rear!45 queue!56)))))))

(declare-fun e!641 () List!50)

(assert (=> d!372 (= lt!139 e!641)))

(declare-fun c!182 () Bool)

(assert (=> d!372 (= c!182 (is-Nil!51 (tail!234 (Cons!50 e1!2 (rear!45 queue!56)))))))

(assert (=> d!372 (= (reverse!5 (tail!234 (Cons!50 e1!2 (rear!45 queue!56)))) lt!139)))

(declare-fun b!940 () Bool)

(assert (=> b!940 (= e!641 Nil!51)))

(declare-fun b!941 () Bool)

(assert (=> b!941 (= e!641 (concat!2 (reverse!5 (tail!234 (tail!234 (Cons!50 e1!2 (rear!45 queue!56))))) (Cons!50 (head!222 (tail!234 (Cons!50 e1!2 (rear!45 queue!56)))) Nil!51)))))

(assert (= (and d!372 c!182) b!940))

(assert (= (and d!372 (not c!182)) b!941))

(declare-fun m!825 () Bool)

(assert (=> d!372 m!825))

(assert (=> d!372 m!717))

(declare-fun m!827 () Bool)

(assert (=> b!941 m!827))

(assert (=> b!941 m!827))

(declare-fun m!829 () Bool)

(assert (=> b!941 m!829))

(assert (=> b!840 d!372))

(declare-fun d!374 () Bool)

(declare-fun lt!140 () Int)

(assert (=> d!374 (>= lt!140 0)))

(declare-fun e!642 () Int)

(assert (=> d!374 (= lt!140 e!642)))

(declare-fun c!183 () Bool)

(assert (=> d!374 (= c!183 (is-Nil!51 (tail!234 (Cons!50 e3!1 (rear!45 q2!1)))))))

(assert (=> d!374 (= (size!23 (tail!234 (Cons!50 e3!1 (rear!45 q2!1)))) lt!140)))

(declare-fun b!942 () Bool)

(assert (=> b!942 (= e!642 0)))

(declare-fun b!943 () Bool)

(assert (=> b!943 (= e!642 (+ 1 (size!23 (tail!234 (tail!234 (Cons!50 e3!1 (rear!45 q2!1)))))))))

(assert (= (and d!374 c!183) b!942))

(assert (= (and d!374 (not c!183)) b!943))

(declare-fun m!831 () Bool)

(assert (=> b!943 m!831))

(assert (=> b!866 d!374))

(declare-fun d!376 () Bool)

(declare-fun lt!141 () Int)

(assert (=> d!376 (>= lt!141 0)))

(declare-fun e!643 () Int)

(assert (=> d!376 (= lt!141 e!643)))

(declare-fun c!184 () Bool)

(assert (=> d!376 (= c!184 (is-Nil!51 (tail!234 (front!43 queue!56))))))

(assert (=> d!376 (= (size!23 (tail!234 (front!43 queue!56))) lt!141)))

(declare-fun b!944 () Bool)

(assert (=> b!944 (= e!643 0)))

(declare-fun b!945 () Bool)

(assert (=> b!945 (= e!643 (+ 1 (size!23 (tail!234 (tail!234 (front!43 queue!56))))))))

(assert (= (and d!376 c!184) b!944))

(assert (= (and d!376 (not c!184)) b!945))

(declare-fun m!833 () Bool)

(assert (=> b!945 m!833))

(assert (=> b!864 d!376))

(declare-fun d!378 () Bool)

(declare-fun lt!142 () Int)

(assert (=> d!378 (>= lt!142 0)))

(declare-fun e!644 () Int)

(assert (=> d!378 (= lt!142 e!644)))

(declare-fun c!185 () Bool)

(assert (=> d!378 (= c!185 (is-Nil!51 (tail!234 (front!43 lt!82))))))

(assert (=> d!378 (= (size!23 (tail!234 (front!43 lt!82))) lt!142)))

(declare-fun b!946 () Bool)

(assert (=> b!946 (= e!644 0)))

(declare-fun b!947 () Bool)

(assert (=> b!947 (= e!644 (+ 1 (size!23 (tail!234 (tail!234 (front!43 lt!82))))))))

(assert (= (and d!378 c!185) b!946))

(assert (= (and d!378 (not c!185)) b!947))

(declare-fun m!835 () Bool)

(assert (=> b!947 m!835))

(assert (=> b!854 d!378))

(declare-fun d!380 () Bool)

(declare-fun e!645 () Bool)

(assert (=> d!380 e!645))

(declare-fun res!687 () Bool)

(assert (=> d!380 (=> (not res!687) (not e!645))))

(declare-fun lt!143 () List!50)

(assert (=> d!380 (= res!687 (= (size!23 lt!143) (+ (size!23 (tail!234 (front!43 q2!1))) (size!23 (reverse!5 (Cons!50 e3!1 (rear!45 q2!1)))))))))

(declare-fun e!646 () List!50)

(assert (=> d!380 (= lt!143 e!646)))

(declare-fun c!186 () Bool)

(assert (=> d!380 (= c!186 (is-Nil!51 (tail!234 (front!43 q2!1))))))

(assert (=> d!380 (= (concat!2 (tail!234 (front!43 q2!1)) (reverse!5 (Cons!50 e3!1 (rear!45 q2!1)))) lt!143)))

(declare-fun b!948 () Bool)

(assert (=> b!948 (= e!646 (reverse!5 (Cons!50 e3!1 (rear!45 q2!1))))))

(declare-fun b!949 () Bool)

(assert (=> b!949 (= e!646 (Cons!50 (head!222 (tail!234 (front!43 q2!1))) (concat!2 (tail!234 (tail!234 (front!43 q2!1))) (reverse!5 (Cons!50 e3!1 (rear!45 q2!1))))))))

(declare-fun b!950 () Bool)

(assert (=> b!950 (= e!645 (= (content!22 lt!143) (union (content!22 (tail!234 (front!43 q2!1))) (content!22 (reverse!5 (Cons!50 e3!1 (rear!45 q2!1)))))))))

(assert (= (and d!380 c!186) b!948))

(assert (= (and d!380 (not c!186)) b!949))

(assert (= (and d!380 res!687) b!950))

(declare-fun m!837 () Bool)

(assert (=> d!380 m!837))

(assert (=> d!380 m!679))

(assert (=> d!380 m!593))

(assert (=> d!380 m!683))

(assert (=> b!949 m!593))

(declare-fun m!839 () Bool)

(assert (=> b!949 m!839))

(declare-fun m!841 () Bool)

(assert (=> b!950 m!841))

(assert (=> b!950 m!751))

(assert (=> b!950 m!593))

(assert (=> b!950 m!691))

(assert (=> b!870 d!380))

(declare-fun d!382 () Bool)

(declare-fun lt!144 () Int)

(assert (=> d!382 (>= lt!144 0)))

(declare-fun e!647 () Int)

(assert (=> d!382 (= lt!144 e!647)))

(declare-fun c!187 () Bool)

(assert (=> d!382 (= c!187 (is-Nil!51 lt!95))))

(assert (=> d!382 (= (size!23 lt!95) lt!144)))

(declare-fun b!951 () Bool)

(assert (=> b!951 (= e!647 0)))

(declare-fun b!952 () Bool)

(assert (=> b!952 (= e!647 (+ 1 (size!23 (tail!234 lt!95))))))

(assert (= (and d!382 c!187) b!951))

(assert (= (and d!382 (not c!187)) b!952))

(declare-fun m!843 () Bool)

(assert (=> b!952 m!843))

(assert (=> d!268 d!382))

(assert (=> d!268 d!288))

(declare-fun d!384 () Bool)

(declare-fun lt!145 () Int)

(assert (=> d!384 (>= lt!145 0)))

(declare-fun e!648 () Int)

(assert (=> d!384 (= lt!145 e!648)))

(declare-fun c!188 () Bool)

(assert (=> d!384 (= c!188 (is-Nil!51 (reverse!5 (Cons!50 e2!3 (rear!45 q1!1)))))))

(assert (=> d!384 (= (size!23 (reverse!5 (Cons!50 e2!3 (rear!45 q1!1)))) lt!145)))

(declare-fun b!953 () Bool)

(assert (=> b!953 (= e!648 0)))

(declare-fun b!954 () Bool)

(assert (=> b!954 (= e!648 (+ 1 (size!23 (tail!234 (reverse!5 (Cons!50 e2!3 (rear!45 q1!1)))))))))

(assert (= (and d!384 c!188) b!953))

(assert (= (and d!384 (not c!188)) b!954))

(declare-fun m!845 () Bool)

(assert (=> b!954 m!845))

(assert (=> d!268 d!384))

(declare-fun d!386 () Bool)

(declare-fun e!649 () Bool)

(assert (=> d!386 e!649))

(declare-fun res!688 () Bool)

(assert (=> d!386 (=> (not res!688) (not e!649))))

(declare-fun lt!146 () List!50)

(assert (=> d!386 (= res!688 (= (size!23 lt!146) (+ (size!23 (tail!234 (front!43 queue!56))) (size!23 (reverse!5 (Cons!50 e1!2 (rear!45 queue!56)))))))))

(declare-fun e!650 () List!50)

(assert (=> d!386 (= lt!146 e!650)))

(declare-fun c!189 () Bool)

(assert (=> d!386 (= c!189 (is-Nil!51 (tail!234 (front!43 queue!56))))))

(assert (=> d!386 (= (concat!2 (tail!234 (front!43 queue!56)) (reverse!5 (Cons!50 e1!2 (rear!45 queue!56)))) lt!146)))

(declare-fun b!955 () Bool)

(assert (=> b!955 (= e!650 (reverse!5 (Cons!50 e1!2 (rear!45 queue!56))))))

(declare-fun b!956 () Bool)

(assert (=> b!956 (= e!650 (Cons!50 (head!222 (tail!234 (front!43 queue!56))) (concat!2 (tail!234 (tail!234 (front!43 queue!56))) (reverse!5 (Cons!50 e1!2 (rear!45 queue!56))))))))

(declare-fun b!957 () Bool)

(assert (=> b!957 (= e!649 (= (content!22 lt!146) (union (content!22 (tail!234 (front!43 queue!56))) (content!22 (reverse!5 (Cons!50 e1!2 (rear!45 queue!56)))))))))

(assert (= (and d!386 c!189) b!955))

(assert (= (and d!386 (not c!189)) b!956))

(assert (= (and d!386 res!688) b!957))

(declare-fun m!847 () Bool)

(assert (=> d!386 m!847))

(assert (=> d!386 m!671))

(assert (=> d!386 m!579))

(assert (=> d!386 m!623))

(assert (=> b!956 m!579))

(declare-fun m!849 () Bool)

(assert (=> b!956 m!849))

(declare-fun m!851 () Bool)

(assert (=> b!957 m!851))

(declare-fun m!853 () Bool)

(assert (=> b!957 m!853))

(assert (=> b!957 m!579))

(assert (=> b!957 m!631))

(assert (=> b!837 d!386))

(declare-fun d!388 () Bool)

(declare-fun lt!147 () Int)

(assert (=> d!388 (>= lt!147 0)))

(declare-fun e!651 () Int)

(assert (=> d!388 (= lt!147 e!651)))

(declare-fun c!190 () Bool)

(assert (=> d!388 (= c!190 (is-Nil!51 (tail!234 (Cons!50 e1!2 (rear!45 queue!56)))))))

(assert (=> d!388 (= (size!23 (tail!234 (Cons!50 e1!2 (rear!45 queue!56)))) lt!147)))

(declare-fun b!958 () Bool)

(assert (=> b!958 (= e!651 0)))

(declare-fun b!959 () Bool)

(assert (=> b!959 (= e!651 (+ 1 (size!23 (tail!234 (tail!234 (Cons!50 e1!2 (rear!45 queue!56)))))))))

(assert (= (and d!388 c!190) b!958))

(assert (= (and d!388 (not c!190)) b!959))

(declare-fun m!855 () Bool)

(assert (=> b!959 m!855))

(assert (=> b!862 d!388))

(declare-fun d!390 () Bool)

(declare-fun c!191 () Bool)

(assert (=> d!390 (= c!191 (is-Nil!51 lt!116))))

(declare-fun e!652 () (Set (_ BitVec 32)))

(assert (=> d!390 (= (content!22 lt!116) e!652)))

(declare-fun b!960 () Bool)

(assert (=> b!960 (= e!652 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!961 () Bool)

(assert (=> b!961 (= e!652 (union (insert (head!222 lt!116) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 lt!116))))))

(assert (= (and d!390 c!191) b!960))

(assert (= (and d!390 (not c!191)) b!961))

(declare-fun m!857 () Bool)

(assert (=> b!961 m!857))

(declare-fun m!859 () Bool)

(assert (=> b!961 m!859))

(assert (=> d!312 d!390))

(declare-fun d!392 () Bool)

(declare-fun c!192 () Bool)

(assert (=> d!392 (= c!192 (is-Nil!51 (Cons!50 e3!1 (rear!45 q2!1))))))

(declare-fun e!653 () (Set (_ BitVec 32)))

(assert (=> d!392 (= (content!22 (Cons!50 e3!1 (rear!45 q2!1))) e!653)))

(declare-fun b!962 () Bool)

(assert (=> b!962 (= e!653 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!963 () Bool)

(assert (=> b!963 (= e!653 (union (insert (head!222 (Cons!50 e3!1 (rear!45 q2!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 (Cons!50 e3!1 (rear!45 q2!1))))))))

(assert (= (and d!392 c!192) b!962))

(assert (= (and d!392 (not c!192)) b!963))

(declare-fun m!861 () Bool)

(assert (=> b!963 m!861))

(assert (=> b!963 m!803))

(assert (=> d!312 d!392))

(declare-fun d!394 () Bool)

(declare-fun lt!148 () Int)

(assert (=> d!394 (>= lt!148 0)))

(declare-fun e!654 () Int)

(assert (=> d!394 (= lt!148 e!654)))

(declare-fun c!193 () Bool)

(assert (=> d!394 (= c!193 (is-Nil!51 lt!115))))

(assert (=> d!394 (= (size!23 lt!115) lt!148)))

(declare-fun b!964 () Bool)

(assert (=> b!964 (= e!654 0)))

(declare-fun b!965 () Bool)

(assert (=> b!965 (= e!654 (+ 1 (size!23 (tail!234 lt!115))))))

(assert (= (and d!394 c!193) b!964))

(assert (= (and d!394 (not c!193)) b!965))

(declare-fun m!863 () Bool)

(assert (=> b!965 m!863))

(assert (=> d!310 d!394))

(assert (=> d!310 d!308))

(declare-fun d!396 () Bool)

(declare-fun lt!149 () Int)

(assert (=> d!396 (>= lt!149 0)))

(declare-fun e!655 () Int)

(assert (=> d!396 (= lt!149 e!655)))

(declare-fun c!194 () Bool)

(assert (=> d!396 (= c!194 (is-Nil!51 (reverse!5 (Cons!50 e3!1 (rear!45 q2!1)))))))

(assert (=> d!396 (= (size!23 (reverse!5 (Cons!50 e3!1 (rear!45 q2!1)))) lt!149)))

(declare-fun b!966 () Bool)

(assert (=> b!966 (= e!655 0)))

(declare-fun b!967 () Bool)

(assert (=> b!967 (= e!655 (+ 1 (size!23 (tail!234 (reverse!5 (Cons!50 e3!1 (rear!45 q2!1)))))))))

(assert (= (and d!396 c!194) b!966))

(assert (= (and d!396 (not c!194)) b!967))

(declare-fun m!865 () Bool)

(assert (=> b!967 m!865))

(assert (=> d!310 d!396))

(declare-fun d!398 () Bool)

(declare-fun c!195 () Bool)

(assert (=> d!398 (= c!195 (is-Nil!51 lt!99))))

(declare-fun e!656 () (Set (_ BitVec 32)))

(assert (=> d!398 (= (content!22 lt!99) e!656)))

(declare-fun b!968 () Bool)

(assert (=> b!968 (= e!656 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!969 () Bool)

(assert (=> b!969 (= e!656 (union (insert (head!222 lt!99) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 lt!99))))))

(assert (= (and d!398 c!195) b!968))

(assert (= (and d!398 (not c!195)) b!969))

(declare-fun m!867 () Bool)

(assert (=> b!969 m!867))

(declare-fun m!869 () Bool)

(assert (=> b!969 m!869))

(assert (=> b!838 d!398))

(declare-fun d!400 () Bool)

(declare-fun c!196 () Bool)

(assert (=> d!400 (= c!196 (is-Nil!51 (front!43 queue!56)))))

(declare-fun e!657 () (Set (_ BitVec 32)))

(assert (=> d!400 (= (content!22 (front!43 queue!56)) e!657)))

(declare-fun b!970 () Bool)

(assert (=> b!970 (= e!657 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!971 () Bool)

(assert (=> b!971 (= e!657 (union (insert (head!222 (front!43 queue!56)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 (front!43 queue!56)))))))

(assert (= (and d!400 c!196) b!970))

(assert (= (and d!400 (not c!196)) b!971))

(declare-fun m!871 () Bool)

(assert (=> b!971 m!871))

(assert (=> b!971 m!853))

(assert (=> b!838 d!400))

(declare-fun d!402 () Bool)

(declare-fun c!197 () Bool)

(assert (=> d!402 (= c!197 (is-Nil!51 (reverse!5 (Cons!50 e1!2 (rear!45 queue!56)))))))

(declare-fun e!658 () (Set (_ BitVec 32)))

(assert (=> d!402 (= (content!22 (reverse!5 (Cons!50 e1!2 (rear!45 queue!56)))) e!658)))

(declare-fun b!972 () Bool)

(assert (=> b!972 (= e!658 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!973 () Bool)

(assert (=> b!973 (= e!658 (union (insert (head!222 (reverse!5 (Cons!50 e1!2 (rear!45 queue!56)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 (reverse!5 (Cons!50 e1!2 (rear!45 queue!56)))))))))

(assert (= (and d!402 c!197) b!972))

(assert (= (and d!402 (not c!197)) b!973))

(declare-fun m!873 () Bool)

(assert (=> b!973 m!873))

(declare-fun m!875 () Bool)

(assert (=> b!973 m!875))

(assert (=> b!838 d!402))

(declare-fun d!404 () Bool)

(declare-fun lt!150 () Int)

(assert (=> d!404 (>= lt!150 0)))

(declare-fun e!659 () Int)

(assert (=> d!404 (= lt!150 e!659)))

(declare-fun c!198 () Bool)

(assert (=> d!404 (= c!198 (is-Nil!51 (tail!234 (front!43 q2!1))))))

(assert (=> d!404 (= (size!23 (tail!234 (front!43 q2!1))) lt!150)))

(declare-fun b!974 () Bool)

(assert (=> b!974 (= e!659 0)))

(declare-fun b!975 () Bool)

(assert (=> b!975 (= e!659 (+ 1 (size!23 (tail!234 (tail!234 (front!43 q2!1))))))))

(assert (= (and d!404 c!198) b!974))

(assert (= (and d!404 (not c!198)) b!975))

(declare-fun m!877 () Bool)

(assert (=> b!975 m!877))

(assert (=> b!868 d!404))

(declare-fun d!406 () Bool)

(declare-fun c!199 () Bool)

(assert (=> d!406 (= c!199 (is-Nil!51 lt!95))))

(declare-fun e!660 () (Set (_ BitVec 32)))

(assert (=> d!406 (= (content!22 lt!95) e!660)))

(declare-fun b!976 () Bool)

(assert (=> b!976 (= e!660 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!977 () Bool)

(assert (=> b!977 (= e!660 (union (insert (head!222 lt!95) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 lt!95))))))

(assert (= (and d!406 c!199) b!976))

(assert (= (and d!406 (not c!199)) b!977))

(declare-fun m!879 () Bool)

(assert (=> b!977 m!879))

(declare-fun m!881 () Bool)

(assert (=> b!977 m!881))

(assert (=> b!829 d!406))

(declare-fun d!408 () Bool)

(declare-fun c!200 () Bool)

(assert (=> d!408 (= c!200 (is-Nil!51 (front!43 q1!1)))))

(declare-fun e!661 () (Set (_ BitVec 32)))

(assert (=> d!408 (= (content!22 (front!43 q1!1)) e!661)))

(declare-fun b!978 () Bool)

(assert (=> b!978 (= e!661 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!979 () Bool)

(assert (=> b!979 (= e!661 (union (insert (head!222 (front!43 q1!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 (front!43 q1!1)))))))

(assert (= (and d!408 c!200) b!978))

(assert (= (and d!408 (not c!200)) b!979))

(declare-fun m!883 () Bool)

(assert (=> b!979 m!883))

(assert (=> b!979 m!733))

(assert (=> b!829 d!408))

(declare-fun d!410 () Bool)

(declare-fun c!201 () Bool)

(assert (=> d!410 (= c!201 (is-Nil!51 (reverse!5 (Cons!50 e2!3 (rear!45 q1!1)))))))

(declare-fun e!662 () (Set (_ BitVec 32)))

(assert (=> d!410 (= (content!22 (reverse!5 (Cons!50 e2!3 (rear!45 q1!1)))) e!662)))

(declare-fun b!980 () Bool)

(assert (=> b!980 (= e!662 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!981 () Bool)

(assert (=> b!981 (= e!662 (union (insert (head!222 (reverse!5 (Cons!50 e2!3 (rear!45 q1!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!234 (reverse!5 (Cons!50 e2!3 (rear!45 q1!1)))))))))

(assert (= (and d!410 c!201) b!980))

(assert (= (and d!410 (not c!201)) b!981))

(declare-fun m!885 () Bool)

(assert (=> b!981 m!885))

(declare-fun m!887 () Bool)

(assert (=> b!981 m!887))

(assert (=> b!829 d!410))

(declare-fun d!412 () Bool)

(declare-fun lt!151 () Int)

(assert (=> d!412 (>= lt!151 0)))

(declare-fun e!663 () Int)

(assert (=> d!412 (= lt!151 e!663)))

(declare-fun c!202 () Bool)

(assert (=> d!412 (= c!202 (is-Nil!51 (tail!234 (tail!234 (front!43 queue!65)))))))

(assert (=> d!412 (= (size!23 (tail!234 (tail!234 (front!43 queue!65)))) lt!151)))

(declare-fun b!982 () Bool)

(assert (=> b!982 (= e!663 0)))

(declare-fun b!983 () Bool)

(assert (=> b!983 (= e!663 (+ 1 (size!23 (tail!234 (tail!234 (tail!234 (front!43 queue!65)))))))))

(assert (= (and d!412 c!202) b!982))

(assert (= (and d!412 (not c!202)) b!983))

(declare-fun m!889 () Bool)

(assert (=> b!983 m!889))

(assert (=> b!848 d!412))

(push 1)

(assert (not d!366))

(assert (not b!945))

(assert (not b!900))

(assert (not b!981))

(assert (not b!881))

(assert (not b!954))

(assert (not b!934))

(assert (not b!897))

(assert (not d!370))

(assert (not d!364))

(assert (not b!912))

(assert (not b!971))

(assert (not b!902))

(assert (not b!949))

(assert (not b!950))

(assert (not b!932))

(assert (not b!918))

(assert (not b!910))

(assert (not b!914))

(assert (not b!961))

(assert (not b!929))

(assert (not b!898))

(assert (not b!967))

(assert (not d!362))

(assert (not b!975))

(assert (not b!877))

(assert (not b!922))

(assert (not b!895))

(assert (not b!936))

(assert (not b!947))

(assert (not d!372))

(assert (not b!889))

(assert (not b!920))

(assert (not b!941))

(assert (not b!879))

(assert (not d!360))

(assert (not b!979))

(assert (not b!893))

(assert (not b!965))

(assert (not b!904))

(assert (not b!939))

(assert (not b!924))

(assert (not b!943))

(assert (not b!956))

(assert (not b!875))

(assert (not b!916))

(assert (not b!938))

(assert (not b!927))

(assert (not b!952))

(assert (not b!957))

(assert (not d!386))

(assert (not b!969))

(assert (not d!332))

(assert (not b!883))

(assert (not d!380))

(assert (not b!906))

(assert (not b!908))

(assert (not b!891))

(assert (not b!973))

(assert (not b!963))

(assert (not b!926))

(assert (not b!977))

(assert (not b!983))

(assert (not b!931))

(assert (not b!959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


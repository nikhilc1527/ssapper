; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15442 () Bool)

(assert start!15442)

(declare-datatypes () ((P!86 (Charlie!86) (Alice!86) (Bob!86))))

(declare-datatypes () ((S!133 (S!134 (who!3255 P!86) (amount!3255 Int)))))

(declare-fun lt!21803 () S!133)

(declare-datatypes () ((List!888 (Cons!826 (h!7232 S!133) (t!55546 List!888)) (Nil!828))))

(declare-fun lt!21802 () List!888)

(assert (=> start!15442 (= lt!21803 (h!7232 lt!21802))))

(assert (=> start!15442 (= lt!21802 (Cons!826 (S!134 Charlie!86 4000) Nil!828))))

(declare-fun lt!21801 () P!86)

(assert (=> start!15442 (= lt!21801 Alice!86)))

(declare-fun size!999 (List!888) Int)

(assert (=> start!15442 (not (= (size!999 (Cons!826 (S!134 lt!21801 2000) (Cons!826 (S!134 (who!3255 lt!21803) (- 2000 (amount!3255 lt!21803))) Nil!828))) (size!999 (Cons!826 (S!134 lt!21801 0) lt!21802))))))

(declare-fun bs!43327 () Bool)

(assert (= bs!43327 start!15442))

(declare-fun m!90231 () Bool)

(assert (=> bs!43327 m!90231))

(declare-fun m!90233 () Bool)

(assert (=> bs!43327 m!90233))

(push 1)

(assert (not start!15442))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61718 () Bool)

(declare-fun lt!21806 () Int)

(assert (=> d!61718 (>= lt!21806 0)))

(declare-fun e!51820 () Int)

(assert (=> d!61718 (= lt!21806 e!51820)))

(declare-fun c!23339 () Bool)

(assert (=> d!61718 (= c!23339 (is-Nil!828 (Cons!826 (S!134 lt!21801 2000) (Cons!826 (S!134 (who!3255 lt!21803) (- 2000 (amount!3255 lt!21803))) Nil!828))))))

(assert (=> d!61718 (= (size!999 (Cons!826 (S!134 lt!21801 2000) (Cons!826 (S!134 (who!3255 lt!21803) (- 2000 (amount!3255 lt!21803))) Nil!828))) lt!21806)))

(declare-fun b!94989 () Bool)

(assert (=> b!94989 (= e!51820 0)))

(declare-fun b!94990 () Bool)

(assert (=> b!94990 (= e!51820 (+ 1 (size!999 (t!55546 (Cons!826 (S!134 lt!21801 2000) (Cons!826 (S!134 (who!3255 lt!21803) (- 2000 (amount!3255 lt!21803))) Nil!828))))))))

(assert (= (and d!61718 c!23339) b!94989))

(assert (= (and d!61718 (not c!23339)) b!94990))

(declare-fun m!90235 () Bool)

(assert (=> b!94990 m!90235))

(assert (=> start!15442 d!61718))

(declare-fun d!61720 () Bool)

(declare-fun lt!21807 () Int)

(assert (=> d!61720 (>= lt!21807 0)))

(declare-fun e!51821 () Int)

(assert (=> d!61720 (= lt!21807 e!51821)))

(declare-fun c!23340 () Bool)

(assert (=> d!61720 (= c!23340 (is-Nil!828 (Cons!826 (S!134 lt!21801 0) lt!21802)))))

(assert (=> d!61720 (= (size!999 (Cons!826 (S!134 lt!21801 0) lt!21802)) lt!21807)))

(declare-fun b!94991 () Bool)

(assert (=> b!94991 (= e!51821 0)))

(declare-fun b!94992 () Bool)

(assert (=> b!94992 (= e!51821 (+ 1 (size!999 (t!55546 (Cons!826 (S!134 lt!21801 0) lt!21802)))))))

(assert (= (and d!61720 c!23340) b!94991))

(assert (= (and d!61720 (not c!23340)) b!94992))

(declare-fun m!90237 () Bool)

(assert (=> b!94992 m!90237))

(assert (=> start!15442 d!61720))

(push 1)

(assert (not b!94992))

(assert (not b!94990))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61722 () Bool)

(declare-fun lt!21808 () Int)

(assert (=> d!61722 (>= lt!21808 0)))

(declare-fun e!51822 () Int)

(assert (=> d!61722 (= lt!21808 e!51822)))

(declare-fun c!23341 () Bool)

(assert (=> d!61722 (= c!23341 (is-Nil!828 (t!55546 (Cons!826 (S!134 lt!21801 0) lt!21802))))))

(assert (=> d!61722 (= (size!999 (t!55546 (Cons!826 (S!134 lt!21801 0) lt!21802))) lt!21808)))

(declare-fun b!94993 () Bool)

(assert (=> b!94993 (= e!51822 0)))

(declare-fun b!94994 () Bool)

(assert (=> b!94994 (= e!51822 (+ 1 (size!999 (t!55546 (t!55546 (Cons!826 (S!134 lt!21801 0) lt!21802))))))))

(assert (= (and d!61722 c!23341) b!94993))

(assert (= (and d!61722 (not c!23341)) b!94994))

(declare-fun m!90239 () Bool)

(assert (=> b!94994 m!90239))

(assert (=> b!94992 d!61722))

(declare-fun d!61724 () Bool)

(declare-fun lt!21809 () Int)

(assert (=> d!61724 (>= lt!21809 0)))

(declare-fun e!51823 () Int)

(assert (=> d!61724 (= lt!21809 e!51823)))

(declare-fun c!23342 () Bool)

(assert (=> d!61724 (= c!23342 (is-Nil!828 (t!55546 (Cons!826 (S!134 lt!21801 2000) (Cons!826 (S!134 (who!3255 lt!21803) (- 2000 (amount!3255 lt!21803))) Nil!828)))))))

(assert (=> d!61724 (= (size!999 (t!55546 (Cons!826 (S!134 lt!21801 2000) (Cons!826 (S!134 (who!3255 lt!21803) (- 2000 (amount!3255 lt!21803))) Nil!828)))) lt!21809)))

(declare-fun b!94995 () Bool)

(assert (=> b!94995 (= e!51823 0)))

(declare-fun b!94996 () Bool)

(assert (=> b!94996 (= e!51823 (+ 1 (size!999 (t!55546 (t!55546 (Cons!826 (S!134 lt!21801 2000) (Cons!826 (S!134 (who!3255 lt!21803) (- 2000 (amount!3255 lt!21803))) Nil!828)))))))))

(assert (= (and d!61724 c!23342) b!94995))

(assert (= (and d!61724 (not c!23342)) b!94996))

(declare-fun m!90241 () Bool)

(assert (=> b!94996 m!90241))

(assert (=> b!94990 d!61724))

(push 1)

(assert (not b!94996))

(assert (not b!94994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


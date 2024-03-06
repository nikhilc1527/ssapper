; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11752 () Bool)

(assert start!11752)

(declare-fun res!46979 () Bool)

(declare-fun e!48970 () Bool)

(assert (=> start!11752 (=> (not res!46979) (not e!48970))))

(declare-datatypes () ((MyLetter!4 (L1!3) (L2!3))))

(declare-datatypes () ((MyState!6 (A!3576) (B!620))))

(declare-datatypes () ((Object!470 (MyMachine!3) (MyLetter!5 (value!7187 MyLetter!4)) (MyState!7 (value!7188 MyState!6)) (Open!470 (value!7189 Int)))))

(declare-datatypes () ((List!757 (Cons!710 (h!1127 Object!470) (t!48879 List!757)) (Nil!712))))

(declare-fun contains!4 (Object!470 List!757) Bool)

(assert (=> start!11752 (= res!46979 (contains!4 MyMachine!3 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))

(assert (=> start!11752 e!48970))

(declare-fun b!89753 () Bool)

(assert (=> b!89753 (= e!48970 (contains!4 MyMachine!3 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))

(assert (= (and start!11752 res!46979) b!89753))

(declare-fun m!85726 () Bool)

(assert (=> start!11752 m!85726))

(declare-fun m!85728 () Bool)

(assert (=> b!89753 m!85728))

(push 1)

(assert (not start!11752))

(assert (not b!89753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59313 () Bool)

(declare-fun rec!3 (Object!470 Object!470 List!757) Bool)

(declare-fun initial!0 (Object!470) Object!470)

(assert (=> d!59313 (= (contains!4 MyMachine!3 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))) (rec!3 MyMachine!3 (initial!0 MyMachine!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))

(declare-fun bs!41528 () Bool)

(assert (= bs!41528 d!59313))

(declare-fun m!85730 () Bool)

(assert (=> bs!41528 m!85730))

(assert (=> bs!41528 m!85730))

(declare-fun m!85732 () Bool)

(assert (=> bs!41528 m!85732))

(assert (=> start!11752 d!59313))

(declare-fun d!59315 () Bool)

(assert (=> d!59315 (= (contains!4 MyMachine!3 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))) (rec!3 MyMachine!3 (initial!0 MyMachine!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))

(declare-fun bs!41529 () Bool)

(assert (= bs!41529 d!59315))

(assert (=> bs!41529 m!85730))

(assert (=> bs!41529 m!85730))

(declare-fun m!85734 () Bool)

(assert (=> bs!41529 m!85734))

(assert (=> b!89753 d!59315))

(push 1)

(assert (not d!59315))

(assert (not d!59313))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!89763 () Bool)

(declare-fun e!48978 () Bool)

(declare-fun e!48977 () Bool)

(assert (=> b!89763 (= e!48978 e!48977)))

(declare-fun res!46984 () Bool)

(assert (=> b!89763 (=> (not res!46984) (not e!48977))))

(declare-fun e!48979 () Bool)

(assert (=> b!89763 (= res!46984 e!48979)))

(declare-fun res!46985 () Bool)

(assert (=> b!89763 (=> (not res!46985) (not e!48979))))

(declare-fun lambda!10998 () Int)

(declare-fun lambda!11000 () Int)

(declare-datatypes () ((Option!575 (Some!549 (v!2674 Object!470)) (None!550))))

(declare-datatypes () ((Option!576 (Some!550 (value!7190 Option!575)) (None!551))))

(declare-fun isEmpty!730 (Option!576) Bool)

(declare-fun InstanceOf!217 (Int Int Option!575) Option!576)

(declare-fun next!1 (Object!470 Object!470 Object!470) Option!575)

(assert (=> b!89763 (= res!46985 (not (isEmpty!730 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))

(declare-fun b!89764 () Bool)

(declare-fun get!897 (Option!576) Option!575)

(assert (=> b!89764 (= e!48979 (is-Some!549 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))

(declare-fun b!89765 () Bool)

(assert (=> b!89765 (= e!48977 (rec!3 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))

(declare-fun b!89762 () Bool)

(declare-fun isFinal!0 (Object!470 Object!470) Bool)

(assert (=> b!89762 (= e!48978 (isFinal!0 MyMachine!3 (initial!0 MyMachine!3)))))

(declare-fun d!59317 () Bool)

(declare-fun c!21985 () Bool)

(assert (=> d!59317 (= c!21985 (is-Nil!712 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))

(assert (=> d!59317 (= (rec!3 MyMachine!3 (initial!0 MyMachine!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))) e!48978)))

(assert (= (and b!89763 res!46985) b!89764))

(assert (= (and b!89763 res!46984) b!89765))

(assert (= (and d!59317 c!21985) b!89762))

(assert (= (and d!59317 (not c!21985)) b!89763))

(assert (=> b!89763 m!85730))

(declare-fun m!85736 () Bool)

(assert (=> b!89763 m!85736))

(assert (=> b!89763 m!85736))

(declare-fun m!85738 () Bool)

(assert (=> b!89763 m!85738))

(assert (=> b!89763 m!85738))

(declare-fun m!85740 () Bool)

(assert (=> b!89763 m!85740))

(assert (=> b!89764 m!85730))

(assert (=> b!89764 m!85736))

(assert (=> b!89764 m!85736))

(assert (=> b!89764 m!85738))

(assert (=> b!89764 m!85738))

(declare-fun m!85742 () Bool)

(assert (=> b!89764 m!85742))

(assert (=> b!89765 m!85730))

(assert (=> b!89765 m!85736))

(assert (=> b!89765 m!85736))

(assert (=> b!89765 m!85738))

(assert (=> b!89765 m!85738))

(assert (=> b!89765 m!85742))

(declare-fun m!85744 () Bool)

(assert (=> b!89765 m!85744))

(assert (=> b!89762 m!85730))

(declare-fun m!85746 () Bool)

(assert (=> b!89762 m!85746))

(assert (=> d!59315 d!59317))

(declare-fun d!59319 () Bool)

(assert (=> d!59319 (= (initial!0 MyMachine!3) (MyState!7 A!3576))))

(assert (=> d!59315 d!59319))

(declare-fun bs!41530 () Bool)

(declare-fun b!89767 () Bool)

(assert (= bs!41530 (and b!89767 b!89763)))

(declare-fun lambda!11002 () Int)

(declare-fun lambda!10999 () Int)

(assert (=> bs!41530 (= lambda!11002 lambda!10999)))

(declare-fun lambda!11003 () Int)

(assert (=> bs!41530 (= (= lambda!11002 lambda!10999) (= lambda!11003 lambda!10998))))

(declare-fun lambda!11004 () Int)

(declare-fun lambda!11001 () Int)

(assert (=> bs!41530 (= lambda!11004 lambda!11001)))

(declare-fun lambda!11005 () Int)

(assert (=> bs!41530 (= (= lambda!11004 lambda!11001) (= lambda!11005 lambda!11000))))

(declare-fun e!48981 () Bool)

(declare-fun e!48980 () Bool)

(assert (=> b!89767 (= e!48981 e!48980)))

(declare-fun res!46986 () Bool)

(assert (=> b!89767 (=> (not res!46986) (not e!48980))))

(declare-fun e!48982 () Bool)

(assert (=> b!89767 (= res!46986 e!48982)))

(declare-fun res!46987 () Bool)

(assert (=> b!89767 (=> (not res!46987) (not e!48982))))

(assert (=> b!89767 (= res!46987 (not (isEmpty!730 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))))

(declare-fun b!89768 () Bool)

(assert (=> b!89768 (= e!48982 (is-Some!549 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))))

(declare-fun b!89769 () Bool)

(assert (=> b!89769 (= e!48980 (rec!3 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))

(declare-fun b!89766 () Bool)

(assert (=> b!89766 (= e!48981 (isFinal!0 MyMachine!3 (initial!0 MyMachine!3)))))

(declare-fun d!59321 () Bool)

(declare-fun c!21986 () Bool)

(assert (=> d!59321 (= c!21986 (is-Nil!712 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))

(assert (=> d!59321 (= (rec!3 MyMachine!3 (initial!0 MyMachine!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))) e!48981)))

(assert (= (and b!89767 res!46987) b!89768))

(assert (= (and b!89767 res!46986) b!89769))

(assert (= (and d!59321 c!21986) b!89766))

(assert (= (and d!59321 (not c!21986)) b!89767))

(assert (=> b!89767 m!85730))

(declare-fun m!85748 () Bool)

(assert (=> b!89767 m!85748))

(assert (=> b!89767 m!85748))

(declare-fun m!85750 () Bool)

(assert (=> b!89767 m!85750))

(assert (=> b!89767 m!85750))

(declare-fun m!85752 () Bool)

(assert (=> b!89767 m!85752))

(assert (=> b!89768 m!85730))

(assert (=> b!89768 m!85748))

(assert (=> b!89768 m!85748))

(assert (=> b!89768 m!85750))

(assert (=> b!89768 m!85750))

(declare-fun m!85754 () Bool)

(assert (=> b!89768 m!85754))

(assert (=> b!89769 m!85730))

(assert (=> b!89769 m!85748))

(assert (=> b!89769 m!85748))

(assert (=> b!89769 m!85750))

(assert (=> b!89769 m!85750))

(assert (=> b!89769 m!85754))

(declare-fun m!85756 () Bool)

(assert (=> b!89769 m!85756))

(assert (=> b!89766 m!85730))

(assert (=> b!89766 m!85746))

(assert (=> d!59313 d!59321))

(assert (=> d!59313 d!59319))

(push 1)

(assert (not b!89766))

(assert (not b!89763))

(assert (not b!89764))

(assert (not b!89769))

(assert (not b!89762))

(assert (not b!89767))

(assert (not b!89768))

(assert (not b!89765))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!41531 () Bool)

(declare-fun b!89771 () Bool)

(assert (= bs!41531 (and b!89771 b!89763)))

(declare-fun lambda!11006 () Int)

(assert (=> bs!41531 (= lambda!11006 lambda!10999)))

(declare-fun bs!41532 () Bool)

(assert (= bs!41532 (and b!89771 b!89767)))

(assert (=> bs!41532 (= lambda!11006 lambda!11002)))

(declare-fun lambda!11007 () Int)

(assert (=> bs!41531 (= (= lambda!11006 lambda!10999) (= lambda!11007 lambda!10998))))

(assert (=> bs!41532 (= (= lambda!11006 lambda!11002) (= lambda!11007 lambda!11003))))

(declare-fun lambda!11008 () Int)

(assert (=> bs!41531 (= lambda!11008 lambda!11001)))

(assert (=> bs!41532 (= lambda!11008 lambda!11004)))

(declare-fun lambda!11009 () Int)

(assert (=> bs!41531 (= (= lambda!11008 lambda!11001) (= lambda!11009 lambda!11000))))

(assert (=> bs!41532 (= (= lambda!11008 lambda!11004) (= lambda!11009 lambda!11005))))

(declare-fun e!48984 () Bool)

(declare-fun e!48983 () Bool)

(assert (=> b!89771 (= e!48984 e!48983)))

(declare-fun res!46988 () Bool)

(assert (=> b!89771 (=> (not res!46988) (not e!48983))))

(declare-fun e!48985 () Bool)

(assert (=> b!89771 (= res!46988 e!48985)))

(declare-fun res!46989 () Bool)

(assert (=> b!89771 (=> (not res!46989) (not e!48985))))

(assert (=> b!89771 (= res!46989 (not (isEmpty!730 (InstanceOf!217 lambda!11007 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))))

(declare-fun b!89772 () Bool)

(assert (=> b!89772 (= e!48985 (is-Some!549 (get!897 (InstanceOf!217 lambda!11007 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))))

(declare-fun b!89773 () Bool)

(assert (=> b!89773 (= e!48983 (rec!3 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11007 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (t!48879 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))

(declare-fun b!89770 () Bool)

(assert (=> b!89770 (= e!48984 (isFinal!0 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))))

(declare-fun d!59323 () Bool)

(declare-fun c!21987 () Bool)

(assert (=> d!59323 (= c!21987 (is-Nil!712 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))

(assert (=> d!59323 (= (rec!3 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))) e!48984)))

(assert (= (and b!89771 res!46989) b!89772))

(assert (= (and b!89771 res!46988) b!89773))

(assert (= (and d!59323 c!21987) b!89770))

(assert (= (and d!59323 (not c!21987)) b!89771))

(declare-fun m!85758 () Bool)

(assert (=> b!89771 m!85758))

(assert (=> b!89771 m!85758))

(declare-fun m!85760 () Bool)

(assert (=> b!89771 m!85760))

(assert (=> b!89771 m!85760))

(declare-fun m!85762 () Bool)

(assert (=> b!89771 m!85762))

(assert (=> b!89772 m!85758))

(assert (=> b!89772 m!85758))

(assert (=> b!89772 m!85760))

(assert (=> b!89772 m!85760))

(declare-fun m!85764 () Bool)

(assert (=> b!89772 m!85764))

(assert (=> b!89773 m!85758))

(assert (=> b!89773 m!85758))

(assert (=> b!89773 m!85760))

(assert (=> b!89773 m!85760))

(assert (=> b!89773 m!85764))

(declare-fun m!85766 () Bool)

(assert (=> b!89773 m!85766))

(declare-fun m!85768 () Bool)

(assert (=> b!89770 m!85768))

(assert (=> b!89765 d!59323))

(declare-fun d!59325 () Bool)

(assert (=> d!59325 (= (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) (value!7190 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(assert (=> b!89765 d!59325))

(declare-fun d!59327 () Bool)

(declare-fun c!21990 () Bool)

(declare-fun dynLambda!1078 (Int Option!575) Bool)

(assert (=> d!59327 (= c!21990 (dynLambda!1078 lambda!10998 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))

(declare-fun e!48988 () Option!576)

(assert (=> d!59327 (= (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))) e!48988)))

(declare-fun b!89778 () Bool)

(declare-fun dynLambda!1079 (Int Option!575) Option!575)

(assert (=> b!89778 (= e!48988 (Some!550 (dynLambda!1079 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(declare-fun b!89779 () Bool)

(assert (=> b!89779 (= e!48988 None!551)))

(assert (= (and d!59327 c!21990) b!89778))

(assert (= (and d!59327 (not c!21990)) b!89779))

(declare-fun b_lambda!18339 () Bool)

(assert (=> (not b_lambda!18339) (not d!59327)))

(declare-fun b_lambda!18341 () Bool)

(assert (=> (not b_lambda!18341) (not b!89778)))

(assert (=> d!59327 m!85736))

(declare-fun m!85770 () Bool)

(assert (=> d!59327 m!85770))

(assert (=> b!89778 m!85736))

(declare-fun m!85772 () Bool)

(assert (=> b!89778 m!85772))

(assert (=> b!89765 d!59327))

(declare-fun d!59329 () Bool)

(declare-datatypes () ((Option!577 (Some!551 (v!2675 MyState!6)) (None!552))))

(declare-fun lt!20437 () Option!577)

(declare-fun lambda!11016 () Int)

(declare-fun isOption!35 (Option!577 Int) Bool)

(assert (=> d!59329 (isOption!35 lt!20437 lambda!11016)))

(declare-fun next!2 (Object!470 MyState!6 MyLetter!4) Option!577)

(assert (=> d!59329 (= lt!20437 (next!2 MyMachine!3 (value!7188 (initial!0 MyMachine!3)) (value!7187 (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))

(declare-fun lambda!11017 () Int)

(declare-fun lambda!11018 () Int)

(declare-fun asOption!26 (Option!577 Int Int) Option!575)

(assert (=> d!59329 (= (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))) (asOption!26 lt!20437 lambda!11017 lambda!11018))))

(declare-fun bs!41533 () Bool)

(assert (= bs!41533 d!59329))

(declare-fun m!85774 () Bool)

(assert (=> bs!41533 m!85774))

(declare-fun m!85776 () Bool)

(assert (=> bs!41533 m!85776))

(declare-fun m!85778 () Bool)

(assert (=> bs!41533 m!85778))

(assert (=> b!89765 d!59329))

(declare-fun d!59331 () Bool)

(assert (=> d!59331 (= (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (value!7190 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))

(assert (=> b!89768 d!59331))

(declare-fun d!59333 () Bool)

(declare-fun c!21991 () Bool)

(assert (=> d!59333 (= c!21991 (dynLambda!1078 lambda!11003 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(declare-fun e!48989 () Option!576)

(assert (=> d!59333 (= (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) e!48989)))

(declare-fun b!89780 () Bool)

(assert (=> b!89780 (= e!48989 (Some!550 (dynLambda!1079 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))

(declare-fun b!89781 () Bool)

(assert (=> b!89781 (= e!48989 None!551)))

(assert (= (and d!59333 c!21991) b!89780))

(assert (= (and d!59333 (not c!21991)) b!89781))

(declare-fun b_lambda!18343 () Bool)

(assert (=> (not b_lambda!18343) (not d!59333)))

(declare-fun b_lambda!18345 () Bool)

(assert (=> (not b_lambda!18345) (not b!89780)))

(assert (=> d!59333 m!85748))

(declare-fun m!85780 () Bool)

(assert (=> d!59333 m!85780))

(assert (=> b!89780 m!85748))

(declare-fun m!85782 () Bool)

(assert (=> b!89780 m!85782))

(assert (=> b!89768 d!59333))

(declare-fun bs!41534 () Bool)

(declare-fun d!59335 () Bool)

(assert (= bs!41534 (and d!59335 d!59329)))

(declare-fun lambda!11019 () Int)

(assert (=> bs!41534 (= lambda!11019 lambda!11016)))

(declare-fun lambda!11020 () Int)

(assert (=> bs!41534 (= lambda!11020 lambda!11017)))

(declare-fun lambda!11021 () Int)

(assert (=> bs!41534 (= lambda!11021 lambda!11018)))

(declare-fun lt!20438 () Option!577)

(assert (=> d!59335 (isOption!35 lt!20438 lambda!11019)))

(assert (=> d!59335 (= lt!20438 (next!2 MyMachine!3 (value!7188 (initial!0 MyMachine!3)) (value!7187 (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(assert (=> d!59335 (= (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))) (asOption!26 lt!20438 lambda!11020 lambda!11021))))

(declare-fun bs!41535 () Bool)

(assert (= bs!41535 d!59335))

(declare-fun m!85784 () Bool)

(assert (=> bs!41535 m!85784))

(declare-fun m!85786 () Bool)

(assert (=> bs!41535 m!85786))

(declare-fun m!85788 () Bool)

(assert (=> bs!41535 m!85788))

(assert (=> b!89768 d!59335))

(declare-fun d!59337 () Bool)

(assert (=> d!59337 (= (isEmpty!730 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) (is-None!551 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(assert (=> b!89763 d!59337))

(assert (=> b!89763 d!59327))

(assert (=> b!89763 d!59329))

(declare-fun d!59339 () Bool)

(assert (=> d!59339 (= (isFinal!0 MyMachine!3 (initial!0 MyMachine!3)) false)))

(assert (=> b!89766 d!59339))

(assert (=> b!89762 d!59339))

(assert (=> b!89764 d!59325))

(assert (=> b!89764 d!59327))

(assert (=> b!89764 d!59329))

(declare-fun d!59341 () Bool)

(assert (=> d!59341 (= (isEmpty!730 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (is-None!551 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))

(assert (=> b!89767 d!59341))

(assert (=> b!89767 d!59333))

(assert (=> b!89767 d!59335))

(declare-fun bs!41536 () Bool)

(declare-fun b!89783 () Bool)

(assert (= bs!41536 (and b!89783 b!89763)))

(declare-fun lambda!11022 () Int)

(assert (=> bs!41536 (= lambda!11022 lambda!10999)))

(declare-fun bs!41537 () Bool)

(assert (= bs!41537 (and b!89783 b!89767)))

(assert (=> bs!41537 (= lambda!11022 lambda!11002)))

(declare-fun bs!41538 () Bool)

(assert (= bs!41538 (and b!89783 b!89771)))

(assert (=> bs!41538 (= lambda!11022 lambda!11006)))

(declare-fun lambda!11023 () Int)

(assert (=> bs!41536 (= (= lambda!11022 lambda!10999) (= lambda!11023 lambda!10998))))

(assert (=> bs!41537 (= (= lambda!11022 lambda!11002) (= lambda!11023 lambda!11003))))

(assert (=> bs!41538 (= (= lambda!11022 lambda!11006) (= lambda!11023 lambda!11007))))

(declare-fun lambda!11024 () Int)

(assert (=> bs!41536 (= lambda!11024 lambda!11001)))

(assert (=> bs!41537 (= lambda!11024 lambda!11004)))

(assert (=> bs!41538 (= lambda!11024 lambda!11008)))

(declare-fun lambda!11025 () Int)

(assert (=> bs!41536 (= (= lambda!11024 lambda!11001) (= lambda!11025 lambda!11000))))

(assert (=> bs!41537 (= (= lambda!11024 lambda!11004) (= lambda!11025 lambda!11005))))

(assert (=> bs!41538 (= (= lambda!11024 lambda!11008) (= lambda!11025 lambda!11009))))

(declare-fun e!48991 () Bool)

(declare-fun e!48990 () Bool)

(assert (=> b!89783 (= e!48991 e!48990)))

(declare-fun res!46990 () Bool)

(assert (=> b!89783 (=> (not res!46990) (not e!48990))))

(declare-fun e!48992 () Bool)

(assert (=> b!89783 (= res!46990 e!48992)))

(declare-fun res!46991 () Bool)

(assert (=> b!89783 (=> (not res!46991) (not e!48992))))

(assert (=> b!89783 (= res!46991 (not (isEmpty!730 (InstanceOf!217 lambda!11023 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))))

(declare-fun b!89784 () Bool)

(assert (=> b!89784 (= e!48992 (is-Some!549 (get!897 (InstanceOf!217 lambda!11023 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))))

(declare-fun b!89785 () Bool)

(assert (=> b!89785 (= e!48990 (rec!3 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11023 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))) (t!48879 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(declare-fun b!89782 () Bool)

(assert (=> b!89782 (= e!48991 (isFinal!0 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))))

(declare-fun d!59343 () Bool)

(declare-fun c!21992 () Bool)

(assert (=> d!59343 (= c!21992 (is-Nil!712 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))

(assert (=> d!59343 (= (rec!3 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))) e!48991)))

(assert (= (and b!89783 res!46991) b!89784))

(assert (= (and b!89783 res!46990) b!89785))

(assert (= (and d!59343 c!21992) b!89782))

(assert (= (and d!59343 (not c!21992)) b!89783))

(declare-fun m!85790 () Bool)

(assert (=> b!89783 m!85790))

(assert (=> b!89783 m!85790))

(declare-fun m!85792 () Bool)

(assert (=> b!89783 m!85792))

(assert (=> b!89783 m!85792))

(declare-fun m!85794 () Bool)

(assert (=> b!89783 m!85794))

(assert (=> b!89784 m!85790))

(assert (=> b!89784 m!85790))

(assert (=> b!89784 m!85792))

(assert (=> b!89784 m!85792))

(declare-fun m!85796 () Bool)

(assert (=> b!89784 m!85796))

(assert (=> b!89785 m!85790))

(assert (=> b!89785 m!85790))

(assert (=> b!89785 m!85792))

(assert (=> b!89785 m!85792))

(assert (=> b!89785 m!85796))

(declare-fun m!85798 () Bool)

(assert (=> b!89785 m!85798))

(declare-fun m!85800 () Bool)

(assert (=> b!89782 m!85800))

(assert (=> b!89769 d!59343))

(assert (=> b!89769 d!59331))

(assert (=> b!89769 d!59333))

(assert (=> b!89769 d!59335))

(declare-fun b_lambda!18347 () Bool)

(assert (= b_lambda!18339 (or b!89763 b_lambda!18347)))

(declare-fun bs!41539 () Bool)

(declare-fun d!59345 () Bool)

(assert (= bs!41539 (and d!59345 b!89763)))

(declare-fun isOption!36 (Option!575 Int) Bool)

(assert (=> bs!41539 (= (dynLambda!1078 lambda!10998 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))) (isOption!36 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))) lambda!10999))))

(assert (=> bs!41539 m!85736))

(declare-fun m!85802 () Bool)

(assert (=> bs!41539 m!85802))

(assert (=> d!59327 d!59345))

(declare-fun b_lambda!18349 () Bool)

(assert (= b_lambda!18345 (or b!89767 b_lambda!18349)))

(declare-fun bs!41540 () Bool)

(declare-fun d!59347 () Bool)

(assert (= bs!41540 (and d!59347 b!89767)))

(declare-fun asOption!27 (Option!575 Int Int) Option!575)

(assert (=> bs!41540 (= (dynLambda!1079 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) (asOption!27 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))) lambda!11004 lambda!11004))))

(assert (=> bs!41540 m!85748))

(declare-fun m!85804 () Bool)

(assert (=> bs!41540 m!85804))

(assert (=> b!89780 d!59347))

(declare-fun b_lambda!18351 () Bool)

(assert (= b_lambda!18343 (or b!89767 b_lambda!18351)))

(declare-fun bs!41541 () Bool)

(declare-fun d!59349 () Bool)

(assert (= bs!41541 (and d!59349 b!89767)))

(assert (=> bs!41541 (= (dynLambda!1078 lambda!11003 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) (isOption!36 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))) lambda!11002))))

(assert (=> bs!41541 m!85748))

(declare-fun m!85806 () Bool)

(assert (=> bs!41541 m!85806))

(assert (=> d!59333 d!59349))

(declare-fun b_lambda!18353 () Bool)

(assert (= b_lambda!18341 (or b!89763 b_lambda!18353)))

(declare-fun bs!41542 () Bool)

(declare-fun d!59351 () Bool)

(assert (= bs!41542 (and d!59351 b!89763)))

(assert (=> bs!41542 (= (dynLambda!1079 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))) (asOption!27 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))) lambda!11001 lambda!11001))))

(assert (=> bs!41542 m!85736))

(declare-fun m!85808 () Bool)

(assert (=> bs!41542 m!85808))

(assert (=> b!89778 d!59351))

(push 1)

(assert (not b!89771))

(assert (not b!89785))

(assert (not b_lambda!18353))

(assert (not b!89782))

(assert (not b!89783))

(assert (not bs!41542))

(assert (not bs!41540))

(assert (not b_lambda!18349))

(assert (not b!89773))

(assert (not b_lambda!18347))

(assert (not b_lambda!18351))

(assert (not b!89784))

(assert (not d!59329))

(assert (not d!59335))

(assert (not bs!41541))

(assert (not bs!41539))

(assert (not b!89770))

(assert (not b!89772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59353 () Bool)

(declare-fun isFinal!1 (Object!470 MyState!6) Bool)

(assert (=> d!59353 (= (isFinal!0 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))) (isFinal!1 MyMachine!3 (value!7188 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))))))

(declare-fun bs!41543 () Bool)

(assert (= bs!41543 d!59353))

(declare-fun m!85810 () Bool)

(assert (=> bs!41543 m!85810))

(assert (=> b!89782 d!59353))

(declare-fun d!59355 () Bool)

(assert (=> d!59355 (= (get!897 (InstanceOf!217 lambda!11023 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (value!7190 (InstanceOf!217 lambda!11023 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))))

(assert (=> b!89784 d!59355))

(declare-fun d!59357 () Bool)

(declare-fun c!21993 () Bool)

(assert (=> d!59357 (= c!21993 (dynLambda!1078 lambda!11023 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))

(declare-fun e!48993 () Option!576)

(assert (=> d!59357 (= (InstanceOf!217 lambda!11023 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) e!48993)))

(declare-fun b!89786 () Bool)

(assert (=> b!89786 (= e!48993 (Some!550 (dynLambda!1079 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))))

(declare-fun b!89787 () Bool)

(assert (=> b!89787 (= e!48993 None!551)))

(assert (= (and d!59357 c!21993) b!89786))

(assert (= (and d!59357 (not c!21993)) b!89787))

(declare-fun b_lambda!18355 () Bool)

(assert (=> (not b_lambda!18355) (not d!59357)))

(declare-fun b_lambda!18357 () Bool)

(assert (=> (not b_lambda!18357) (not b!89786)))

(assert (=> d!59357 m!85790))

(declare-fun m!85812 () Bool)

(assert (=> d!59357 m!85812))

(assert (=> b!89786 m!85790))

(declare-fun m!85814 () Bool)

(assert (=> b!89786 m!85814))

(assert (=> b!89784 d!59357))

(declare-fun bs!41544 () Bool)

(declare-fun d!59359 () Bool)

(assert (= bs!41544 (and d!59359 d!59329)))

(declare-fun lambda!11026 () Int)

(assert (=> bs!41544 (= lambda!11026 lambda!11016)))

(declare-fun bs!41545 () Bool)

(assert (= bs!41545 (and d!59359 d!59335)))

(assert (=> bs!41545 (= lambda!11026 lambda!11019)))

(declare-fun lambda!11027 () Int)

(assert (=> bs!41544 (= lambda!11027 lambda!11017)))

(assert (=> bs!41545 (= lambda!11027 lambda!11020)))

(declare-fun lambda!11028 () Int)

(assert (=> bs!41544 (= lambda!11028 lambda!11018)))

(assert (=> bs!41545 (= lambda!11028 lambda!11021)))

(declare-fun lt!20439 () Option!577)

(assert (=> d!59359 (isOption!35 lt!20439 lambda!11026)))

(assert (=> d!59359 (= lt!20439 (next!2 MyMachine!3 (value!7188 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))) (value!7187 (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))

(assert (=> d!59359 (= (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) (asOption!26 lt!20439 lambda!11027 lambda!11028))))

(declare-fun bs!41546 () Bool)

(assert (= bs!41546 d!59359))

(declare-fun m!85816 () Bool)

(assert (=> bs!41546 m!85816))

(declare-fun m!85818 () Bool)

(assert (=> bs!41546 m!85818))

(declare-fun m!85820 () Bool)

(assert (=> bs!41546 m!85820))

(assert (=> b!89784 d!59359))

(declare-fun d!59361 () Bool)

(declare-fun res!46996 () Bool)

(declare-fun e!48998 () Bool)

(assert (=> d!59361 (=> res!46996 e!48998)))

(declare-fun e!48999 () Bool)

(assert (=> d!59361 (= res!46996 e!48999)))

(declare-fun res!46997 () Bool)

(assert (=> d!59361 (=> (not res!46997) (not e!48999))))

(assert (=> d!59361 (= res!46997 (is-Some!551 lt!20438))))

(assert (=> d!59361 (= (isOption!35 lt!20438 lambda!11019) e!48998)))

(declare-fun b!89792 () Bool)

(declare-fun dynLambda!1080 (Int MyState!6) Bool)

(assert (=> b!89792 (= e!48999 (dynLambda!1080 lambda!11019 (v!2675 lt!20438)))))

(declare-fun b!89793 () Bool)

(assert (=> b!89793 (= e!48998 (is-None!552 lt!20438))))

(assert (= (and d!59361 res!46997) b!89792))

(assert (= (and d!59361 (not res!46996)) b!89793))

(declare-fun b_lambda!18359 () Bool)

(assert (=> (not b_lambda!18359) (not b!89792)))

(declare-fun m!85822 () Bool)

(assert (=> b!89792 m!85822))

(assert (=> d!59335 d!59361))

(declare-fun d!59363 () Bool)

(assert (=> d!59363 (= (next!2 MyMachine!3 (value!7188 (initial!0 MyMachine!3)) (value!7187 (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) (Some!551 A!3576))))

(assert (=> d!59335 d!59363))

(declare-fun d!59365 () Bool)

(declare-fun c!21996 () Bool)

(assert (=> d!59365 (= c!21996 (is-Some!551 lt!20438))))

(declare-fun e!49002 () Option!575)

(assert (=> d!59365 (= (asOption!26 lt!20438 lambda!11020 lambda!11021) e!49002)))

(declare-fun b!89798 () Bool)

(declare-fun dynLambda!1081 (Int MyState!6) Object!470)

(assert (=> b!89798 (= e!49002 (Some!549 (dynLambda!1081 lambda!11020 (v!2675 lt!20438))))))

(declare-fun b!89799 () Bool)

(assert (=> b!89799 (= e!49002 None!550)))

(assert (= (and d!59365 c!21996) b!89798))

(assert (= (and d!59365 (not c!21996)) b!89799))

(declare-fun b_lambda!18361 () Bool)

(assert (=> (not b_lambda!18361) (not b!89798)))

(declare-fun m!85824 () Bool)

(assert (=> b!89798 m!85824))

(assert (=> d!59335 d!59365))

(declare-fun d!59367 () Bool)

(assert (=> d!59367 (= (isEmpty!730 (InstanceOf!217 lambda!11023 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (is-None!551 (InstanceOf!217 lambda!11023 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))))

(assert (=> b!89783 d!59367))

(assert (=> b!89783 d!59357))

(assert (=> b!89783 d!59359))

(declare-fun d!59369 () Bool)

(declare-fun c!21999 () Bool)

(assert (=> d!59369 (= c!21999 (is-Some!549 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))

(declare-fun e!49005 () Option!575)

(assert (=> d!59369 (= (asOption!27 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))) lambda!11001 lambda!11001) e!49005)))

(declare-fun b!89804 () Bool)

(declare-fun dynLambda!1082 (Int Object!470) Object!470)

(assert (=> b!89804 (= e!49005 (Some!549 (dynLambda!1082 lambda!11001 (v!2674 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))

(declare-fun b!89805 () Bool)

(assert (=> b!89805 (= e!49005 None!550)))

(assert (= (and d!59369 c!21999) b!89804))

(assert (= (and d!59369 (not c!21999)) b!89805))

(declare-fun b_lambda!18363 () Bool)

(assert (=> (not b_lambda!18363) (not b!89804)))

(declare-fun m!85826 () Bool)

(assert (=> b!89804 m!85826))

(assert (=> bs!41542 d!59369))

(declare-fun d!59371 () Bool)

(assert (=> d!59371 (= (isFinal!0 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (isFinal!1 MyMachine!3 (value!7188 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))))

(declare-fun bs!41547 () Bool)

(assert (= bs!41547 d!59371))

(declare-fun m!85828 () Bool)

(assert (=> bs!41547 m!85828))

(assert (=> b!89770 d!59371))

(declare-fun d!59373 () Bool)

(assert (=> d!59373 (= (get!897 (InstanceOf!217 lambda!11007 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (value!7190 (InstanceOf!217 lambda!11007 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))

(assert (=> b!89772 d!59373))

(declare-fun d!59375 () Bool)

(declare-fun c!22000 () Bool)

(assert (=> d!59375 (= c!22000 (dynLambda!1078 lambda!11007 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(declare-fun e!49006 () Option!576)

(assert (=> d!59375 (= (InstanceOf!217 lambda!11007 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) e!49006)))

(declare-fun b!89806 () Bool)

(assert (=> b!89806 (= e!49006 (Some!550 (dynLambda!1079 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))

(declare-fun b!89807 () Bool)

(assert (=> b!89807 (= e!49006 None!551)))

(assert (= (and d!59375 c!22000) b!89806))

(assert (= (and d!59375 (not c!22000)) b!89807))

(declare-fun b_lambda!18365 () Bool)

(assert (=> (not b_lambda!18365) (not d!59375)))

(declare-fun b_lambda!18367 () Bool)

(assert (=> (not b_lambda!18367) (not b!89806)))

(assert (=> d!59375 m!85758))

(declare-fun m!85830 () Bool)

(assert (=> d!59375 m!85830))

(assert (=> b!89806 m!85758))

(declare-fun m!85832 () Bool)

(assert (=> b!89806 m!85832))

(assert (=> b!89772 d!59375))

(declare-fun bs!41548 () Bool)

(declare-fun d!59377 () Bool)

(assert (= bs!41548 (and d!59377 d!59329)))

(declare-fun lambda!11029 () Int)

(assert (=> bs!41548 (= lambda!11029 lambda!11016)))

(declare-fun bs!41549 () Bool)

(assert (= bs!41549 (and d!59377 d!59335)))

(assert (=> bs!41549 (= lambda!11029 lambda!11019)))

(declare-fun bs!41550 () Bool)

(assert (= bs!41550 (and d!59377 d!59359)))

(assert (=> bs!41550 (= lambda!11029 lambda!11026)))

(declare-fun lambda!11030 () Int)

(assert (=> bs!41548 (= lambda!11030 lambda!11017)))

(assert (=> bs!41549 (= lambda!11030 lambda!11020)))

(assert (=> bs!41550 (= lambda!11030 lambda!11027)))

(declare-fun lambda!11031 () Int)

(assert (=> bs!41548 (= lambda!11031 lambda!11018)))

(assert (=> bs!41549 (= lambda!11031 lambda!11021)))

(assert (=> bs!41550 (= lambda!11031 lambda!11028)))

(declare-fun lt!20440 () Option!577)

(assert (=> d!59377 (isOption!35 lt!20440 lambda!11029)))

(assert (=> d!59377 (= lt!20440 (next!2 MyMachine!3 (value!7188 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (value!7187 (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(assert (=> d!59377 (= (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))) (asOption!26 lt!20440 lambda!11030 lambda!11031))))

(declare-fun bs!41551 () Bool)

(assert (= bs!41551 d!59377))

(declare-fun m!85834 () Bool)

(assert (=> bs!41551 m!85834))

(declare-fun m!85836 () Bool)

(assert (=> bs!41551 m!85836))

(declare-fun m!85838 () Bool)

(assert (=> bs!41551 m!85838))

(assert (=> b!89772 d!59377))

(declare-fun d!59379 () Bool)

(assert (=> d!59379 (= (isEmpty!730 (InstanceOf!217 lambda!11007 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (is-None!551 (InstanceOf!217 lambda!11007 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))

(assert (=> b!89771 d!59379))

(assert (=> b!89771 d!59375))

(assert (=> b!89771 d!59377))

(declare-fun d!59381 () Bool)

(declare-fun res!47002 () Bool)

(declare-fun e!49011 () Bool)

(assert (=> d!59381 (=> res!47002 e!49011)))

(declare-fun e!49012 () Bool)

(assert (=> d!59381 (= res!47002 e!49012)))

(declare-fun res!47003 () Bool)

(assert (=> d!59381 (=> (not res!47003) (not e!49012))))

(assert (=> d!59381 (= res!47003 (is-Some!549 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(assert (=> d!59381 (= (isOption!36 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))) lambda!11002) e!49011)))

(declare-fun b!89812 () Bool)

(declare-fun dynLambda!1083 (Int Object!470) Bool)

(assert (=> b!89812 (= e!49012 (dynLambda!1083 lambda!11002 (v!2674 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))

(declare-fun b!89813 () Bool)

(assert (=> b!89813 (= e!49011 (is-None!550 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(assert (= (and d!59381 res!47003) b!89812))

(assert (= (and d!59381 (not res!47002)) b!89813))

(declare-fun b_lambda!18369 () Bool)

(assert (=> (not b_lambda!18369) (not b!89812)))

(declare-fun m!85840 () Bool)

(assert (=> b!89812 m!85840))

(assert (=> bs!41541 d!59381))

(declare-fun bs!41552 () Bool)

(declare-fun b!89815 () Bool)

(assert (= bs!41552 (and b!89815 b!89763)))

(declare-fun lambda!11032 () Int)

(assert (=> bs!41552 (= lambda!11032 lambda!10999)))

(declare-fun bs!41553 () Bool)

(assert (= bs!41553 (and b!89815 b!89767)))

(assert (=> bs!41553 (= lambda!11032 lambda!11002)))

(declare-fun bs!41554 () Bool)

(assert (= bs!41554 (and b!89815 b!89771)))

(assert (=> bs!41554 (= lambda!11032 lambda!11006)))

(declare-fun bs!41555 () Bool)

(assert (= bs!41555 (and b!89815 b!89783)))

(assert (=> bs!41555 (= lambda!11032 lambda!11022)))

(declare-fun lambda!11033 () Int)

(assert (=> bs!41552 (= (= lambda!11032 lambda!10999) (= lambda!11033 lambda!10998))))

(assert (=> bs!41553 (= (= lambda!11032 lambda!11002) (= lambda!11033 lambda!11003))))

(assert (=> bs!41554 (= (= lambda!11032 lambda!11006) (= lambda!11033 lambda!11007))))

(assert (=> bs!41555 (= (= lambda!11032 lambda!11022) (= lambda!11033 lambda!11023))))

(declare-fun lambda!11034 () Int)

(assert (=> bs!41552 (= lambda!11034 lambda!11001)))

(assert (=> bs!41553 (= lambda!11034 lambda!11004)))

(assert (=> bs!41554 (= lambda!11034 lambda!11008)))

(assert (=> bs!41555 (= lambda!11034 lambda!11024)))

(declare-fun lambda!11035 () Int)

(assert (=> bs!41552 (= (= lambda!11034 lambda!11001) (= lambda!11035 lambda!11000))))

(assert (=> bs!41553 (= (= lambda!11034 lambda!11004) (= lambda!11035 lambda!11005))))

(assert (=> bs!41554 (= (= lambda!11034 lambda!11008) (= lambda!11035 lambda!11009))))

(assert (=> bs!41555 (= (= lambda!11034 lambda!11024) (= lambda!11035 lambda!11025))))

(declare-fun e!49014 () Bool)

(declare-fun e!49013 () Bool)

(assert (=> b!89815 (= e!49014 e!49013)))

(declare-fun res!47004 () Bool)

(assert (=> b!89815 (=> (not res!47004) (not e!49013))))

(declare-fun e!49015 () Bool)

(assert (=> b!89815 (= res!47004 e!49015)))

(declare-fun res!47005 () Bool)

(assert (=> b!89815 (=> (not res!47005) (not e!49015))))

(assert (=> b!89815 (= res!47005 (not (isEmpty!730 (InstanceOf!217 lambda!11033 lambda!11035 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11007 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))))

(declare-fun b!89816 () Bool)

(assert (=> b!89816 (= e!49015 (is-Some!549 (get!897 (InstanceOf!217 lambda!11033 lambda!11035 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11007 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))))

(declare-fun b!89817 () Bool)

(assert (=> b!89817 (= e!49013 (rec!3 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11033 lambda!11035 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11007 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))) (t!48879 (t!48879 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(declare-fun b!89814 () Bool)

(assert (=> b!89814 (= e!49014 (isFinal!0 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11007 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))))

(declare-fun d!59383 () Bool)

(declare-fun c!22001 () Bool)

(assert (=> d!59383 (= c!22001 (is-Nil!712 (t!48879 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))

(assert (=> d!59383 (= (rec!3 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11007 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (t!48879 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))) e!49014)))

(assert (= (and b!89815 res!47005) b!89816))

(assert (= (and b!89815 res!47004) b!89817))

(assert (= (and d!59383 c!22001) b!89814))

(assert (= (and d!59383 (not c!22001)) b!89815))

(declare-fun m!85842 () Bool)

(assert (=> b!89815 m!85842))

(assert (=> b!89815 m!85842))

(declare-fun m!85844 () Bool)

(assert (=> b!89815 m!85844))

(assert (=> b!89815 m!85844))

(declare-fun m!85846 () Bool)

(assert (=> b!89815 m!85846))

(assert (=> b!89816 m!85842))

(assert (=> b!89816 m!85842))

(assert (=> b!89816 m!85844))

(assert (=> b!89816 m!85844))

(declare-fun m!85848 () Bool)

(assert (=> b!89816 m!85848))

(assert (=> b!89817 m!85842))

(assert (=> b!89817 m!85842))

(assert (=> b!89817 m!85844))

(assert (=> b!89817 m!85844))

(assert (=> b!89817 m!85848))

(declare-fun m!85850 () Bool)

(assert (=> b!89817 m!85850))

(declare-fun m!85852 () Bool)

(assert (=> b!89814 m!85852))

(assert (=> b!89773 d!59383))

(assert (=> b!89773 d!59373))

(assert (=> b!89773 d!59375))

(assert (=> b!89773 d!59377))

(declare-fun bs!41556 () Bool)

(declare-fun b!89819 () Bool)

(assert (= bs!41556 (and b!89819 b!89783)))

(declare-fun lambda!11036 () Int)

(assert (=> bs!41556 (= lambda!11036 lambda!11022)))

(declare-fun bs!41557 () Bool)

(assert (= bs!41557 (and b!89819 b!89767)))

(assert (=> bs!41557 (= lambda!11036 lambda!11002)))

(declare-fun bs!41558 () Bool)

(assert (= bs!41558 (and b!89819 b!89771)))

(assert (=> bs!41558 (= lambda!11036 lambda!11006)))

(declare-fun bs!41559 () Bool)

(assert (= bs!41559 (and b!89819 b!89815)))

(assert (=> bs!41559 (= lambda!11036 lambda!11032)))

(declare-fun bs!41560 () Bool)

(assert (= bs!41560 (and b!89819 b!89763)))

(assert (=> bs!41560 (= lambda!11036 lambda!10999)))

(declare-fun lambda!11037 () Int)

(assert (=> bs!41557 (= (= lambda!11036 lambda!11002) (= lambda!11037 lambda!11003))))

(assert (=> bs!41556 (= (= lambda!11036 lambda!11022) (= lambda!11037 lambda!11023))))

(assert (=> bs!41558 (= (= lambda!11036 lambda!11006) (= lambda!11037 lambda!11007))))

(assert (=> bs!41560 (= (= lambda!11036 lambda!10999) (= lambda!11037 lambda!10998))))

(assert (=> bs!41559 (= (= lambda!11036 lambda!11032) (= lambda!11037 lambda!11033))))

(declare-fun lambda!11038 () Int)

(assert (=> bs!41559 (= lambda!11038 lambda!11034)))

(assert (=> bs!41557 (= lambda!11038 lambda!11004)))

(assert (=> bs!41560 (= lambda!11038 lambda!11001)))

(assert (=> bs!41558 (= lambda!11038 lambda!11008)))

(assert (=> bs!41556 (= lambda!11038 lambda!11024)))

(declare-fun lambda!11039 () Int)

(assert (=> bs!41559 (= (= lambda!11038 lambda!11034) (= lambda!11039 lambda!11035))))

(assert (=> bs!41558 (= (= lambda!11038 lambda!11008) (= lambda!11039 lambda!11009))))

(assert (=> bs!41556 (= (= lambda!11038 lambda!11024) (= lambda!11039 lambda!11025))))

(assert (=> bs!41557 (= (= lambda!11038 lambda!11004) (= lambda!11039 lambda!11005))))

(assert (=> bs!41560 (= (= lambda!11038 lambda!11001) (= lambda!11039 lambda!11000))))

(declare-fun e!49017 () Bool)

(declare-fun e!49016 () Bool)

(assert (=> b!89819 (= e!49017 e!49016)))

(declare-fun res!47006 () Bool)

(assert (=> b!89819 (=> (not res!47006) (not e!49016))))

(declare-fun e!49018 () Bool)

(assert (=> b!89819 (= res!47006 e!49018)))

(declare-fun res!47007 () Bool)

(assert (=> b!89819 (=> (not res!47007) (not e!49018))))

(assert (=> b!89819 (= res!47007 (not (isEmpty!730 (InstanceOf!217 lambda!11037 lambda!11039 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11023 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))) (h!1127 (t!48879 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))))))

(declare-fun b!89820 () Bool)

(assert (=> b!89820 (= e!49018 (is-Some!549 (get!897 (InstanceOf!217 lambda!11037 lambda!11039 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11023 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))) (h!1127 (t!48879 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))))))

(declare-fun b!89821 () Bool)

(assert (=> b!89821 (= e!49016 (rec!3 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11037 lambda!11039 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11023 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))) (h!1127 (t!48879 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))) (t!48879 (t!48879 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))))

(declare-fun b!89818 () Bool)

(assert (=> b!89818 (= e!49017 (isFinal!0 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11023 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))))))

(declare-fun d!59385 () Bool)

(declare-fun c!22002 () Bool)

(assert (=> d!59385 (= c!22002 (is-Nil!712 (t!48879 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(assert (=> d!59385 (= (rec!3 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11023 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))) (t!48879 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) e!49017)))

(assert (= (and b!89819 res!47007) b!89820))

(assert (= (and b!89819 res!47006) b!89821))

(assert (= (and d!59385 c!22002) b!89818))

(assert (= (and d!59385 (not c!22002)) b!89819))

(declare-fun m!85854 () Bool)

(assert (=> b!89819 m!85854))

(assert (=> b!89819 m!85854))

(declare-fun m!85856 () Bool)

(assert (=> b!89819 m!85856))

(assert (=> b!89819 m!85856))

(declare-fun m!85858 () Bool)

(assert (=> b!89819 m!85858))

(assert (=> b!89820 m!85854))

(assert (=> b!89820 m!85854))

(assert (=> b!89820 m!85856))

(assert (=> b!89820 m!85856))

(declare-fun m!85860 () Bool)

(assert (=> b!89820 m!85860))

(assert (=> b!89821 m!85854))

(assert (=> b!89821 m!85854))

(assert (=> b!89821 m!85856))

(assert (=> b!89821 m!85856))

(assert (=> b!89821 m!85860))

(declare-fun m!85862 () Bool)

(assert (=> b!89821 m!85862))

(declare-fun m!85864 () Bool)

(assert (=> b!89818 m!85864))

(assert (=> b!89785 d!59385))

(assert (=> b!89785 d!59355))

(assert (=> b!89785 d!59357))

(assert (=> b!89785 d!59359))

(declare-fun d!59387 () Bool)

(declare-fun c!22003 () Bool)

(assert (=> d!59387 (= c!22003 (is-Some!549 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(declare-fun e!49019 () Option!575)

(assert (=> d!59387 (= (asOption!27 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))) lambda!11004 lambda!11004) e!49019)))

(declare-fun b!89822 () Bool)

(assert (=> b!89822 (= e!49019 (Some!549 (dynLambda!1082 lambda!11004 (v!2674 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))))

(declare-fun b!89823 () Bool)

(assert (=> b!89823 (= e!49019 None!550)))

(assert (= (and d!59387 c!22003) b!89822))

(assert (= (and d!59387 (not c!22003)) b!89823))

(declare-fun b_lambda!18371 () Bool)

(assert (=> (not b_lambda!18371) (not b!89822)))

(declare-fun m!85866 () Bool)

(assert (=> b!89822 m!85866))

(assert (=> bs!41540 d!59387))

(declare-fun d!59389 () Bool)

(declare-fun res!47008 () Bool)

(declare-fun e!49020 () Bool)

(assert (=> d!59389 (=> res!47008 e!49020)))

(declare-fun e!49021 () Bool)

(assert (=> d!59389 (= res!47008 e!49021)))

(declare-fun res!47009 () Bool)

(assert (=> d!59389 (=> (not res!47009) (not e!49021))))

(assert (=> d!59389 (= res!47009 (is-Some!551 lt!20437))))

(assert (=> d!59389 (= (isOption!35 lt!20437 lambda!11016) e!49020)))

(declare-fun b!89824 () Bool)

(assert (=> b!89824 (= e!49021 (dynLambda!1080 lambda!11016 (v!2675 lt!20437)))))

(declare-fun b!89825 () Bool)

(assert (=> b!89825 (= e!49020 (is-None!552 lt!20437))))

(assert (= (and d!59389 res!47009) b!89824))

(assert (= (and d!59389 (not res!47008)) b!89825))

(declare-fun b_lambda!18373 () Bool)

(assert (=> (not b_lambda!18373) (not b!89824)))

(declare-fun m!85868 () Bool)

(assert (=> b!89824 m!85868))

(assert (=> d!59329 d!59389))

(declare-fun d!59391 () Bool)

(assert (=> d!59391 (= (next!2 MyMachine!3 (value!7188 (initial!0 MyMachine!3)) (value!7187 (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))) (Some!551 A!3576))))

(assert (=> d!59329 d!59391))

(declare-fun d!59393 () Bool)

(declare-fun c!22004 () Bool)

(assert (=> d!59393 (= c!22004 (is-Some!551 lt!20437))))

(declare-fun e!49022 () Option!575)

(assert (=> d!59393 (= (asOption!26 lt!20437 lambda!11017 lambda!11018) e!49022)))

(declare-fun b!89826 () Bool)

(assert (=> b!89826 (= e!49022 (Some!549 (dynLambda!1081 lambda!11017 (v!2675 lt!20437))))))

(declare-fun b!89827 () Bool)

(assert (=> b!89827 (= e!49022 None!550)))

(assert (= (and d!59393 c!22004) b!89826))

(assert (= (and d!59393 (not c!22004)) b!89827))

(declare-fun b_lambda!18375 () Bool)

(assert (=> (not b_lambda!18375) (not b!89826)))

(declare-fun m!85870 () Bool)

(assert (=> b!89826 m!85870))

(assert (=> d!59329 d!59393))

(declare-fun d!59395 () Bool)

(declare-fun res!47010 () Bool)

(declare-fun e!49023 () Bool)

(assert (=> d!59395 (=> res!47010 e!49023)))

(declare-fun e!49024 () Bool)

(assert (=> d!59395 (= res!47010 e!49024)))

(declare-fun res!47011 () Bool)

(assert (=> d!59395 (=> (not res!47011) (not e!49024))))

(assert (=> d!59395 (= res!47011 (is-Some!549 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))

(assert (=> d!59395 (= (isOption!36 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))) lambda!10999) e!49023)))

(declare-fun b!89828 () Bool)

(assert (=> b!89828 (= e!49024 (dynLambda!1083 lambda!10999 (v!2674 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(declare-fun b!89829 () Bool)

(assert (=> b!89829 (= e!49023 (is-None!550 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))

(assert (= (and d!59395 res!47011) b!89828))

(assert (= (and d!59395 (not res!47010)) b!89829))

(declare-fun b_lambda!18377 () Bool)

(assert (=> (not b_lambda!18377) (not b!89828)))

(declare-fun m!85872 () Bool)

(assert (=> b!89828 m!85872))

(assert (=> bs!41539 d!59395))

(declare-fun b_lambda!18379 () Bool)

(assert (= b_lambda!18363 (or b!89763 b_lambda!18379)))

(declare-fun bs!41561 () Bool)

(declare-fun d!59397 () Bool)

(assert (= bs!41561 (and d!59397 b!89763)))

(assert (=> bs!41561 (= (dynLambda!1082 lambda!11001 (v!2674 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) (v!2674 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))))

(assert (=> b!89804 d!59397))

(declare-fun b_lambda!18381 () Bool)

(assert (= b_lambda!18377 (or b!89763 b_lambda!18381)))

(declare-fun bs!41562 () Bool)

(declare-fun d!59399 () Bool)

(assert (= bs!41562 (and d!59399 b!89763)))

(assert (=> bs!41562 (= (dynLambda!1083 lambda!10999 (v!2674 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) false)))

(assert (=> b!89828 d!59399))

(declare-fun b_lambda!18383 () Bool)

(assert (= b_lambda!18365 (or b!89771 b_lambda!18383)))

(declare-fun bs!41563 () Bool)

(declare-fun d!59401 () Bool)

(assert (= bs!41563 (and d!59401 b!89771)))

(assert (=> bs!41563 (= (dynLambda!1078 lambda!11007 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) (isOption!36 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))) lambda!11006))))

(assert (=> bs!41563 m!85758))

(declare-fun m!85874 () Bool)

(assert (=> bs!41563 m!85874))

(assert (=> d!59375 d!59401))

(declare-fun b_lambda!18385 () Bool)

(assert (= b_lambda!18357 (or b!89783 b_lambda!18385)))

(declare-fun bs!41564 () Bool)

(declare-fun d!59403 () Bool)

(assert (= bs!41564 (and d!59403 b!89783)))

(assert (=> bs!41564 (= (dynLambda!1079 lambda!11025 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (asOption!27 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) lambda!11024 lambda!11024))))

(assert (=> bs!41564 m!85790))

(declare-fun m!85876 () Bool)

(assert (=> bs!41564 m!85876))

(assert (=> b!89786 d!59403))

(declare-fun b_lambda!18387 () Bool)

(assert (= b_lambda!18371 (or b!89767 b_lambda!18387)))

(declare-fun bs!41565 () Bool)

(declare-fun d!59405 () Bool)

(assert (= bs!41565 (and d!59405 b!89767)))

(assert (=> bs!41565 (= (dynLambda!1082 lambda!11004 (v!2674 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (v!2674 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))))

(assert (=> b!89822 d!59405))

(declare-fun b_lambda!18389 () Bool)

(assert (= b_lambda!18359 (or d!59335 b_lambda!18389)))

(declare-fun bs!41566 () Bool)

(declare-fun d!59407 () Bool)

(assert (= bs!41566 (and d!59407 d!59335)))

(assert (=> bs!41566 (= (dynLambda!1080 lambda!11019 (v!2675 lt!20438)) false)))

(assert (=> b!89792 d!59407))

(declare-fun b_lambda!18391 () Bool)

(assert (= b_lambda!18367 (or b!89771 b_lambda!18391)))

(declare-fun bs!41567 () Bool)

(declare-fun d!59409 () Bool)

(assert (= bs!41567 (and d!59409 b!89771)))

(assert (=> bs!41567 (= (dynLambda!1079 lambda!11009 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) (asOption!27 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!10998 lambda!11000 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))) lambda!11008 lambda!11008))))

(assert (=> bs!41567 m!85758))

(declare-fun m!85878 () Bool)

(assert (=> bs!41567 m!85878))

(assert (=> b!89806 d!59409))

(declare-fun b_lambda!18393 () Bool)

(assert (= b_lambda!18355 (or b!89783 b_lambda!18393)))

(declare-fun bs!41568 () Bool)

(declare-fun d!59411 () Bool)

(assert (= bs!41568 (and d!59411 b!89783)))

(assert (=> bs!41568 (= (dynLambda!1078 lambda!11023 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) (isOption!36 (next!1 MyMachine!3 (v!2674 (get!897 (InstanceOf!217 lambda!11003 lambda!11005 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))))) (h!1127 (t!48879 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712))))))))) lambda!11022))))

(assert (=> bs!41568 m!85790))

(declare-fun m!85880 () Bool)

(assert (=> bs!41568 m!85880))

(assert (=> d!59357 d!59411))

(declare-fun b_lambda!18395 () Bool)

(assert (= b_lambda!18375 (or d!59329 b_lambda!18395)))

(declare-fun bs!41569 () Bool)

(declare-fun d!59413 () Bool)

(assert (= bs!41569 (and d!59413 d!59329)))

(assert (=> bs!41569 (= (dynLambda!1081 lambda!11017 (v!2675 lt!20437)) (MyState!7 (v!2675 lt!20437)))))

(assert (=> b!89826 d!59413))

(declare-fun b_lambda!18397 () Bool)

(assert (= b_lambda!18361 (or d!59335 b_lambda!18397)))

(declare-fun bs!41570 () Bool)

(declare-fun d!59415 () Bool)

(assert (= bs!41570 (and d!59415 d!59335)))

(assert (=> bs!41570 (= (dynLambda!1081 lambda!11020 (v!2675 lt!20438)) (MyState!7 (v!2675 lt!20438)))))

(assert (=> b!89798 d!59415))

(declare-fun b_lambda!18399 () Bool)

(assert (= b_lambda!18373 (or d!59329 b_lambda!18399)))

(declare-fun bs!41571 () Bool)

(declare-fun d!59417 () Bool)

(assert (= bs!41571 (and d!59417 d!59329)))

(assert (=> bs!41571 (= (dynLambda!1080 lambda!11016 (v!2675 lt!20437)) false)))

(assert (=> b!89824 d!59417))

(declare-fun b_lambda!18401 () Bool)

(assert (= b_lambda!18369 (or b!89767 b_lambda!18401)))

(declare-fun bs!41572 () Bool)

(declare-fun d!59419 () Bool)

(assert (= bs!41572 (and d!59419 b!89767)))

(assert (=> bs!41572 (= (dynLambda!1083 lambda!11002 (v!2674 (next!1 MyMachine!3 (initial!0 MyMachine!3) (h!1127 (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L2!3) (Cons!710 (MyLetter!5 L1!3) (Cons!710 (MyLetter!5 L2!3) Nil!712)))))))))) false)))

(assert (=> b!89812 d!59419))

(push 1)

(assert (not bs!41568))

(assert (not b!89821))

(assert (not b!89817))

(assert (not b_lambda!18401))

(assert (not b_lambda!18393))

(assert (not d!59371))

(assert (not b_lambda!18353))

(assert (not d!59359))

(assert (not d!59377))

(assert (not b_lambda!18381))

(assert (not b!89816))

(assert (not b_lambda!18399))

(assert (not b_lambda!18391))

(assert (not b_lambda!18349))

(assert (not b!89819))

(assert (not b_lambda!18347))

(assert (not b_lambda!18379))

(assert (not b!89818))

(assert (not b!89815))

(assert (not b_lambda!18397))

(assert (not b_lambda!18351))

(assert (not b_lambda!18389))

(assert (not b!89814))

(assert (not bs!41567))

(assert (not b_lambda!18387))

(assert (not b!89820))

(assert (not bs!41564))

(assert (not b_lambda!18385))

(assert (not b_lambda!18395))

(assert (not b_lambda!18383))

(assert (not d!59353))

(assert (not bs!41563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


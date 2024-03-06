; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8656 () Bool)

(assert start!8656)

(declare-fun res!27849 () Bool)

(declare-fun e!31980 () Bool)

(assert (=> start!8656 (=> (not res!27849) (not e!31980))))

(declare-datatypes () ((List!535 (Cons!501 (head!841 (_ BitVec 32)) (tail!867 List!535)) (Nil!502))))

(declare-datatypes () ((LList!11 (LNil!10) (LCons!10 (head!842 List!535) (tail!868 LList!11)))))

(declare-fun llist!36 () LList!11)

(declare-fun lIsSorted!0 (LList!11) Bool)

(assert (=> start!8656 (= res!27849 (lIsSorted!0 llist!36))))

(assert (=> start!8656 e!31980))

(assert (=> start!8656 true))

(declare-fun b!59986 () Bool)

(declare-fun res!27848 () Bool)

(assert (=> b!59986 (=> (not res!27848) (not e!31980))))

(declare-fun list1!16 () List!535)

(declare-fun list2!16 () List!535)

(assert (=> b!59986 (= res!27848 (and (not (is-LNil!10 llist!36)) (not (is-LNil!10 (tail!868 llist!36))) (= list1!16 (head!842 llist!36)) (= list2!16 (head!842 (tail!868 llist!36)))))))

(declare-fun b!59987 () Bool)

(declare-fun e!31979 () Bool)

(assert (=> b!59987 (= e!31980 e!31979)))

(declare-fun res!27847 () Bool)

(assert (=> b!59987 (=> res!27847 e!31979)))

(declare-fun isSorted!4 (List!535) Bool)

(assert (=> b!59987 (= res!27847 (not (isSorted!4 list1!16)))))

(declare-fun b!59988 () Bool)

(assert (=> b!59988 (= e!31979 (not (isSorted!4 list2!16)))))

(assert (= (and start!8656 res!27849) b!59986))

(assert (= (and b!59986 res!27848) b!59987))

(assert (= (and b!59987 (not res!27847)) b!59988))

(declare-fun m!64852 () Bool)

(assert (=> start!8656 m!64852))

(declare-fun m!64854 () Bool)

(assert (=> b!59987 m!64854))

(declare-fun m!64856 () Bool)

(assert (=> b!59988 m!64856))

(push 1)

(assert (not b!59987))

(assert (not start!8656))

(assert (not b!59988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51315 () Bool)

(declare-fun res!27854 () Bool)

(declare-fun e!31985 () Bool)

(assert (=> d!51315 (=> res!27854 e!31985)))

(assert (=> d!51315 (= res!27854 (or (is-Nil!502 list1!16) (and (is-Cons!501 list1!16) (is-Nil!502 (tail!867 list1!16)))))))

(assert (=> d!51315 (= (isSorted!4 list1!16) e!31985)))

(declare-fun b!59993 () Bool)

(declare-fun e!31986 () Bool)

(assert (=> b!59993 (= e!31985 e!31986)))

(declare-fun res!27855 () Bool)

(assert (=> b!59993 (=> (not res!27855) (not e!31986))))

(assert (=> b!59993 (= res!27855 (not (and (is-Cons!501 list1!16) (is-Cons!501 (tail!867 list1!16)) (bvsgt (head!841 list1!16) (head!841 (tail!867 list1!16))))))))

(declare-fun b!59994 () Bool)

(assert (=> b!59994 (= e!31986 (isSorted!4 (tail!867 list1!16)))))

(assert (= (and d!51315 (not res!27854)) b!59993))

(assert (= (and b!59993 res!27855) b!59994))

(declare-fun m!64858 () Bool)

(assert (=> b!59994 m!64858))

(assert (=> b!59987 d!51315))

(declare-fun d!51317 () Bool)

(declare-fun res!27860 () Bool)

(declare-fun e!31991 () Bool)

(assert (=> d!51317 (=> res!27860 e!31991)))

(assert (=> d!51317 (= res!27860 (is-LNil!10 llist!36))))

(assert (=> d!51317 (= (lIsSorted!0 llist!36) e!31991)))

(declare-fun b!59999 () Bool)

(declare-fun e!31992 () Bool)

(assert (=> b!59999 (= e!31991 e!31992)))

(declare-fun res!27861 () Bool)

(assert (=> b!59999 (=> (not res!27861) (not e!31992))))

(assert (=> b!59999 (= res!27861 (isSorted!4 (head!842 llist!36)))))

(declare-fun b!60000 () Bool)

(assert (=> b!60000 (= e!31992 (lIsSorted!0 (tail!868 llist!36)))))

(assert (= (and d!51317 (not res!27860)) b!59999))

(assert (= (and b!59999 res!27861) b!60000))

(declare-fun m!64860 () Bool)

(assert (=> b!59999 m!64860))

(declare-fun m!64862 () Bool)

(assert (=> b!60000 m!64862))

(assert (=> start!8656 d!51317))

(declare-fun d!51319 () Bool)

(declare-fun res!27862 () Bool)

(declare-fun e!31993 () Bool)

(assert (=> d!51319 (=> res!27862 e!31993)))

(assert (=> d!51319 (= res!27862 (or (is-Nil!502 list2!16) (and (is-Cons!501 list2!16) (is-Nil!502 (tail!867 list2!16)))))))

(assert (=> d!51319 (= (isSorted!4 list2!16) e!31993)))

(declare-fun b!60001 () Bool)

(declare-fun e!31994 () Bool)

(assert (=> b!60001 (= e!31993 e!31994)))

(declare-fun res!27863 () Bool)

(assert (=> b!60001 (=> (not res!27863) (not e!31994))))

(assert (=> b!60001 (= res!27863 (not (and (is-Cons!501 list2!16) (is-Cons!501 (tail!867 list2!16)) (bvsgt (head!841 list2!16) (head!841 (tail!867 list2!16))))))))

(declare-fun b!60002 () Bool)

(assert (=> b!60002 (= e!31994 (isSorted!4 (tail!867 list2!16)))))

(assert (= (and d!51319 (not res!27862)) b!60001))

(assert (= (and b!60001 res!27863) b!60002))

(declare-fun m!64864 () Bool)

(assert (=> b!60002 m!64864))

(assert (=> b!59988 d!51319))

(push 1)

(assert (not b!59999))

(assert (not b!59994))

(assert (not b!60000))

(assert (not b!60002))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51321 () Bool)

(declare-fun res!27864 () Bool)

(declare-fun e!31995 () Bool)

(assert (=> d!51321 (=> res!27864 e!31995)))

(assert (=> d!51321 (= res!27864 (or (is-Nil!502 (head!842 llist!36)) (and (is-Cons!501 (head!842 llist!36)) (is-Nil!502 (tail!867 (head!842 llist!36))))))))

(assert (=> d!51321 (= (isSorted!4 (head!842 llist!36)) e!31995)))

(declare-fun b!60003 () Bool)

(declare-fun e!31996 () Bool)

(assert (=> b!60003 (= e!31995 e!31996)))

(declare-fun res!27865 () Bool)

(assert (=> b!60003 (=> (not res!27865) (not e!31996))))

(assert (=> b!60003 (= res!27865 (not (and (is-Cons!501 (head!842 llist!36)) (is-Cons!501 (tail!867 (head!842 llist!36))) (bvsgt (head!841 (head!842 llist!36)) (head!841 (tail!867 (head!842 llist!36)))))))))

(declare-fun b!60004 () Bool)

(assert (=> b!60004 (= e!31996 (isSorted!4 (tail!867 (head!842 llist!36))))))

(assert (= (and d!51321 (not res!27864)) b!60003))

(assert (= (and b!60003 res!27865) b!60004))

(declare-fun m!64866 () Bool)

(assert (=> b!60004 m!64866))

(assert (=> b!59999 d!51321))

(declare-fun d!51323 () Bool)

(declare-fun res!27866 () Bool)

(declare-fun e!31997 () Bool)

(assert (=> d!51323 (=> res!27866 e!31997)))

(assert (=> d!51323 (= res!27866 (or (is-Nil!502 (tail!867 list1!16)) (and (is-Cons!501 (tail!867 list1!16)) (is-Nil!502 (tail!867 (tail!867 list1!16))))))))

(assert (=> d!51323 (= (isSorted!4 (tail!867 list1!16)) e!31997)))

(declare-fun b!60005 () Bool)

(declare-fun e!31998 () Bool)

(assert (=> b!60005 (= e!31997 e!31998)))

(declare-fun res!27867 () Bool)

(assert (=> b!60005 (=> (not res!27867) (not e!31998))))

(assert (=> b!60005 (= res!27867 (not (and (is-Cons!501 (tail!867 list1!16)) (is-Cons!501 (tail!867 (tail!867 list1!16))) (bvsgt (head!841 (tail!867 list1!16)) (head!841 (tail!867 (tail!867 list1!16)))))))))

(declare-fun b!60006 () Bool)

(assert (=> b!60006 (= e!31998 (isSorted!4 (tail!867 (tail!867 list1!16))))))

(assert (= (and d!51323 (not res!27866)) b!60005))

(assert (= (and b!60005 res!27867) b!60006))

(declare-fun m!64868 () Bool)

(assert (=> b!60006 m!64868))

(assert (=> b!59994 d!51323))

(declare-fun d!51325 () Bool)

(declare-fun res!27868 () Bool)

(declare-fun e!31999 () Bool)

(assert (=> d!51325 (=> res!27868 e!31999)))

(assert (=> d!51325 (= res!27868 (is-LNil!10 (tail!868 llist!36)))))

(assert (=> d!51325 (= (lIsSorted!0 (tail!868 llist!36)) e!31999)))

(declare-fun b!60007 () Bool)

(declare-fun e!32000 () Bool)

(assert (=> b!60007 (= e!31999 e!32000)))

(declare-fun res!27869 () Bool)

(assert (=> b!60007 (=> (not res!27869) (not e!32000))))

(assert (=> b!60007 (= res!27869 (isSorted!4 (head!842 (tail!868 llist!36))))))

(declare-fun b!60008 () Bool)

(assert (=> b!60008 (= e!32000 (lIsSorted!0 (tail!868 (tail!868 llist!36))))))

(assert (= (and d!51325 (not res!27868)) b!60007))

(assert (= (and b!60007 res!27869) b!60008))

(declare-fun m!64870 () Bool)

(assert (=> b!60007 m!64870))

(declare-fun m!64872 () Bool)

(assert (=> b!60008 m!64872))

(assert (=> b!60000 d!51325))

(declare-fun d!51327 () Bool)

(declare-fun res!27870 () Bool)

(declare-fun e!32001 () Bool)

(assert (=> d!51327 (=> res!27870 e!32001)))

(assert (=> d!51327 (= res!27870 (or (is-Nil!502 (tail!867 list2!16)) (and (is-Cons!501 (tail!867 list2!16)) (is-Nil!502 (tail!867 (tail!867 list2!16))))))))

(assert (=> d!51327 (= (isSorted!4 (tail!867 list2!16)) e!32001)))

(declare-fun b!60009 () Bool)

(declare-fun e!32002 () Bool)

(assert (=> b!60009 (= e!32001 e!32002)))

(declare-fun res!27871 () Bool)

(assert (=> b!60009 (=> (not res!27871) (not e!32002))))

(assert (=> b!60009 (= res!27871 (not (and (is-Cons!501 (tail!867 list2!16)) (is-Cons!501 (tail!867 (tail!867 list2!16))) (bvsgt (head!841 (tail!867 list2!16)) (head!841 (tail!867 (tail!867 list2!16)))))))))

(declare-fun b!60010 () Bool)

(assert (=> b!60010 (= e!32002 (isSorted!4 (tail!867 (tail!867 list2!16))))))

(assert (= (and d!51327 (not res!27870)) b!60009))

(assert (= (and b!60009 res!27871) b!60010))

(declare-fun m!64874 () Bool)

(assert (=> b!60010 m!64874))

(assert (=> b!60002 d!51327))

(push 1)

(assert (not b!60007))

(assert (not b!60008))

(assert (not b!60010))

(assert (not b!60006))

(assert (not b!60004))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


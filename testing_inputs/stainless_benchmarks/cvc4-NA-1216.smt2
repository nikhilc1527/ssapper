; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8636 () Bool)

(assert start!8636)

(declare-fun res!27790 () Bool)

(declare-fun e!31900 () Bool)

(assert (=> start!8636 (=> (not res!27790) (not e!31900))))

(declare-datatypes () ((List!533 (Cons!499 (head!837 (_ BitVec 32)) (tail!863 List!533)) (Nil!500))))

(declare-fun list!462 () List!533)

(declare-datatypes () ((LList!9 (LNil!8) (LCons!8 (head!838 List!533) (tail!864 LList!9)))))

(declare-fun res!27376 () LList!9)

(assert (=> start!8636 (= res!27790 (and (is-Nil!500 list!462) (= res!27376 LNil!8)))))

(assert (=> start!8636 e!31900))

(assert (=> start!8636 true))

(declare-fun b!59874 () Bool)

(declare-fun e!31901 () Bool)

(assert (=> b!59874 (= e!31900 e!31901)))

(declare-fun res!27791 () Bool)

(assert (=> b!59874 (=> res!27791 e!31901)))

(declare-fun lContent!0 (LList!9) (Set (_ BitVec 32)))

(declare-fun content!15 (List!533) (Set (_ BitVec 32)))

(assert (=> b!59874 (= res!27791 (not (= (lContent!0 res!27376) (content!15 list!462))))))

(declare-fun b!59875 () Bool)

(declare-fun lIsSorted!0 (LList!9) Bool)

(assert (=> b!59875 (= e!31901 (not (lIsSorted!0 res!27376)))))

(assert (= (and start!8636 res!27790) b!59874))

(assert (= (and b!59874 (not res!27791)) b!59875))

(declare-fun m!64724 () Bool)

(assert (=> b!59874 m!64724))

(declare-fun m!64726 () Bool)

(assert (=> b!59874 m!64726))

(declare-fun m!64728 () Bool)

(assert (=> b!59875 m!64728))

(push 1)

(assert (not b!59874))

(assert (not b!59875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51257 () Bool)

(declare-fun c!12984 () Bool)

(assert (=> d!51257 (= c!12984 (is-LNil!8 res!27376))))

(declare-fun e!31904 () (Set (_ BitVec 32)))

(assert (=> d!51257 (= (lContent!0 res!27376) e!31904)))

(declare-fun b!59880 () Bool)

(assert (=> b!59880 (= e!31904 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59881 () Bool)

(assert (=> b!59881 (= e!31904 (union (content!15 (head!838 res!27376)) (lContent!0 (tail!864 res!27376))))))

(assert (= (and d!51257 c!12984) b!59880))

(assert (= (and d!51257 (not c!12984)) b!59881))

(declare-fun m!64730 () Bool)

(assert (=> b!59881 m!64730))

(declare-fun m!64732 () Bool)

(assert (=> b!59881 m!64732))

(assert (=> b!59874 d!51257))

(declare-fun d!51259 () Bool)

(declare-fun c!12987 () Bool)

(assert (=> d!51259 (= c!12987 (is-Nil!500 list!462))))

(declare-fun e!31907 () (Set (_ BitVec 32)))

(assert (=> d!51259 (= (content!15 list!462) e!31907)))

(declare-fun b!59886 () Bool)

(assert (=> b!59886 (= e!31907 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59887 () Bool)

(assert (=> b!59887 (= e!31907 (union (insert (head!837 list!462) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!863 list!462))))))

(assert (= (and d!51259 c!12987) b!59886))

(assert (= (and d!51259 (not c!12987)) b!59887))

(declare-fun m!64734 () Bool)

(assert (=> b!59887 m!64734))

(declare-fun m!64736 () Bool)

(assert (=> b!59887 m!64736))

(assert (=> b!59874 d!51259))

(declare-fun d!51261 () Bool)

(declare-fun res!27796 () Bool)

(declare-fun e!31912 () Bool)

(assert (=> d!51261 (=> res!27796 e!31912)))

(assert (=> d!51261 (= res!27796 (is-LNil!8 res!27376))))

(assert (=> d!51261 (= (lIsSorted!0 res!27376) e!31912)))

(declare-fun b!59892 () Bool)

(declare-fun e!31913 () Bool)

(assert (=> b!59892 (= e!31912 e!31913)))

(declare-fun res!27797 () Bool)

(assert (=> b!59892 (=> (not res!27797) (not e!31913))))

(declare-fun isSorted!4 (List!533) Bool)

(assert (=> b!59892 (= res!27797 (isSorted!4 (head!838 res!27376)))))

(declare-fun b!59893 () Bool)

(assert (=> b!59893 (= e!31913 (lIsSorted!0 (tail!864 res!27376)))))

(assert (= (and d!51261 (not res!27796)) b!59892))

(assert (= (and b!59892 res!27797) b!59893))

(declare-fun m!64738 () Bool)

(assert (=> b!59892 m!64738))

(declare-fun m!64740 () Bool)

(assert (=> b!59893 m!64740))

(assert (=> b!59875 d!51261))

(push 1)

(assert (not b!59892))

(assert (not b!59893))

(assert (not b!59887))

(assert (not b!59881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


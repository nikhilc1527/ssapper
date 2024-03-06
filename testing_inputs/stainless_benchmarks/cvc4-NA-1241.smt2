; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8846 () Bool)

(assert start!8846)

(declare-fun b!61645 () Bool)

(declare-fun e!32961 () Bool)

(declare-datatypes () ((List!557 (Cons!522 (h!750 Int) (t!47252 List!557)) (Nil!523))))

(declare-fun l2!360 () List!557)

(declare-fun isSorted!3 (List!557) Bool)

(assert (=> b!61645 (= e!32961 (not (isSorted!3 l2!360)))))

(declare-fun b!61642 () Bool)

(declare-fun res!28686 () Bool)

(declare-fun e!32960 () Bool)

(assert (=> b!61642 (=> (not res!28686) (not e!32960))))

(declare-fun l2!357 () List!557)

(assert (=> b!61642 (= res!28686 (isSorted!3 l2!357))))

(declare-fun b!61643 () Bool)

(declare-fun res!28685 () Bool)

(assert (=> b!61643 (=> (not res!28685) (not e!32960))))

(declare-fun l1!367 () List!557)

(declare-fun h!720 () Int)

(declare-fun l1!364 () List!557)

(assert (=> b!61643 (= res!28685 (and (is-Cons!522 l1!364) (is-Cons!522 l2!357) (> (h!750 l1!364) (h!750 l2!357)) (= h!720 (h!750 l2!357)) (= l1!367 l1!364) (= l2!360 (t!47252 l2!357))))))

(declare-fun res!28684 () Bool)

(assert (=> start!8846 (=> (not res!28684) (not e!32960))))

(assert (=> start!8846 (= res!28684 (isSorted!3 l1!364))))

(assert (=> start!8846 e!32960))

(assert (=> start!8846 true))

(declare-fun b!61644 () Bool)

(assert (=> b!61644 (= e!32960 e!32961)))

(declare-fun res!28683 () Bool)

(assert (=> b!61644 (=> res!28683 e!32961)))

(assert (=> b!61644 (= res!28683 (not (isSorted!3 l1!367)))))

(assert (= (and start!8846 res!28684) b!61642))

(assert (= (and b!61642 res!28686) b!61643))

(assert (= (and b!61643 res!28685) b!61644))

(assert (= (and b!61644 (not res!28683)) b!61645))

(declare-fun m!67220 () Bool)

(assert (=> b!61645 m!67220))

(declare-fun m!67222 () Bool)

(assert (=> b!61642 m!67222))

(declare-fun m!67224 () Bool)

(assert (=> start!8846 m!67224))

(declare-fun m!67226 () Bool)

(assert (=> b!61644 m!67226))

(push 1)

(assert (not b!61645))

(assert (not start!8846))

(assert (not b!61642))

(assert (not b!61644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52289 () Bool)

(declare-fun res!28691 () Bool)

(declare-fun e!32966 () Bool)

(assert (=> d!52289 (=> res!28691 e!32966)))

(assert (=> d!52289 (= res!28691 (not (and (is-Cons!522 l2!360) (is-Cons!522 (t!47252 l2!360)))))))

(assert (=> d!52289 (= (isSorted!3 l2!360) e!32966)))

(declare-fun b!61650 () Bool)

(declare-fun e!32967 () Bool)

(assert (=> b!61650 (= e!32966 e!32967)))

(declare-fun res!28692 () Bool)

(assert (=> b!61650 (=> (not res!28692) (not e!32967))))

(assert (=> b!61650 (= res!28692 (<= (h!750 l2!360) (h!750 (t!47252 l2!360))))))

(declare-fun b!61651 () Bool)

(assert (=> b!61651 (= e!32967 (isSorted!3 (t!47252 l2!360)))))

(assert (= (and d!52289 (not res!28691)) b!61650))

(assert (= (and b!61650 res!28692) b!61651))

(declare-fun m!67228 () Bool)

(assert (=> b!61651 m!67228))

(assert (=> b!61645 d!52289))

(declare-fun d!52291 () Bool)

(declare-fun res!28693 () Bool)

(declare-fun e!32968 () Bool)

(assert (=> d!52291 (=> res!28693 e!32968)))

(assert (=> d!52291 (= res!28693 (not (and (is-Cons!522 l1!364) (is-Cons!522 (t!47252 l1!364)))))))

(assert (=> d!52291 (= (isSorted!3 l1!364) e!32968)))

(declare-fun b!61652 () Bool)

(declare-fun e!32969 () Bool)

(assert (=> b!61652 (= e!32968 e!32969)))

(declare-fun res!28694 () Bool)

(assert (=> b!61652 (=> (not res!28694) (not e!32969))))

(assert (=> b!61652 (= res!28694 (<= (h!750 l1!364) (h!750 (t!47252 l1!364))))))

(declare-fun b!61653 () Bool)

(assert (=> b!61653 (= e!32969 (isSorted!3 (t!47252 l1!364)))))

(assert (= (and d!52291 (not res!28693)) b!61652))

(assert (= (and b!61652 res!28694) b!61653))

(declare-fun m!67230 () Bool)

(assert (=> b!61653 m!67230))

(assert (=> start!8846 d!52291))

(declare-fun d!52293 () Bool)

(declare-fun res!28695 () Bool)

(declare-fun e!32970 () Bool)

(assert (=> d!52293 (=> res!28695 e!32970)))

(assert (=> d!52293 (= res!28695 (not (and (is-Cons!522 l2!357) (is-Cons!522 (t!47252 l2!357)))))))

(assert (=> d!52293 (= (isSorted!3 l2!357) e!32970)))

(declare-fun b!61654 () Bool)

(declare-fun e!32971 () Bool)

(assert (=> b!61654 (= e!32970 e!32971)))

(declare-fun res!28696 () Bool)

(assert (=> b!61654 (=> (not res!28696) (not e!32971))))

(assert (=> b!61654 (= res!28696 (<= (h!750 l2!357) (h!750 (t!47252 l2!357))))))

(declare-fun b!61655 () Bool)

(assert (=> b!61655 (= e!32971 (isSorted!3 (t!47252 l2!357)))))

(assert (= (and d!52293 (not res!28695)) b!61654))

(assert (= (and b!61654 res!28696) b!61655))

(declare-fun m!67232 () Bool)

(assert (=> b!61655 m!67232))

(assert (=> b!61642 d!52293))

(declare-fun d!52295 () Bool)

(declare-fun res!28697 () Bool)

(declare-fun e!32972 () Bool)

(assert (=> d!52295 (=> res!28697 e!32972)))

(assert (=> d!52295 (= res!28697 (not (and (is-Cons!522 l1!367) (is-Cons!522 (t!47252 l1!367)))))))

(assert (=> d!52295 (= (isSorted!3 l1!367) e!32972)))

(declare-fun b!61656 () Bool)

(declare-fun e!32973 () Bool)

(assert (=> b!61656 (= e!32972 e!32973)))

(declare-fun res!28698 () Bool)

(assert (=> b!61656 (=> (not res!28698) (not e!32973))))

(assert (=> b!61656 (= res!28698 (<= (h!750 l1!367) (h!750 (t!47252 l1!367))))))

(declare-fun b!61657 () Bool)

(assert (=> b!61657 (= e!32973 (isSorted!3 (t!47252 l1!367)))))

(assert (= (and d!52295 (not res!28697)) b!61656))

(assert (= (and b!61656 res!28698) b!61657))

(declare-fun m!67234 () Bool)

(assert (=> b!61657 m!67234))

(assert (=> b!61644 d!52295))

(push 1)

(assert (not b!61651))

(assert (not b!61657))

(assert (not b!61655))

(assert (not b!61653))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


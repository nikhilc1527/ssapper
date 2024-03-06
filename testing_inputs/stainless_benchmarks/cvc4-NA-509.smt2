; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3540 () Bool)

(assert start!3540)

(declare-fun b!22417 () Bool)

(declare-fun e!11726 () Bool)

(declare-fun i!296 () Int)

(declare-datatypes () ((T!1773 (T!1774 (val!59 Int)))))

(declare-datatypes () ((List!345 (Cons!339 (h!253 T!1773) (t!4340 List!345)) (Nil!340))))

(declare-fun l!729 () List!345)

(declare-fun size!237 (List!345) Int)

(assert (=> b!22417 (= e!11726 (> i!296 (size!237 l!729)))))

(declare-fun b!22418 () Bool)

(declare-fun e!11725 () Bool)

(declare-fun tp_is_empty!117 () Bool)

(declare-fun tp!4948 () Bool)

(assert (=> b!22418 (= e!11725 (and tp_is_empty!117 tp!4948))))

(declare-fun b!22419 () Bool)

(declare-fun e!11729 () Bool)

(assert (=> b!22419 (= e!11729 e!11726)))

(declare-fun res!9855 () Bool)

(assert (=> b!22419 (=> res!9855 e!11726)))

(assert (=> b!22419 (= res!9855 (> 0 i!296))))

(declare-fun b!22420 () Bool)

(declare-fun res!9857 () Bool)

(assert (=> b!22420 (=> (not res!9857) (not e!11729))))

(declare-fun l1!169 () List!345)

(declare-fun i!289 () Int)

(declare-fun l2!163 () List!345)

(assert (=> b!22420 (= res!9857 (<= i!289 (+ (size!237 l1!169) (size!237 l2!163))))))

(declare-fun b!22421 () Bool)

(declare-fun e!11727 () Bool)

(declare-fun y!811 () T!1773)

(declare-fun appendInsertIndex!17 (List!345 List!345 Int T!1773) Bool)

(assert (=> b!22421 (= e!11727 (appendInsertIndex!17 (t!4340 l1!169) l2!163 (- i!289 1) y!811))))

(declare-fun b!22422 () Bool)

(declare-fun e!11730 () Bool)

(declare-fun tp!4947 () Bool)

(assert (=> b!22422 (= e!11730 (and tp_is_empty!117 tp!4947))))

(declare-fun b!22423 () Bool)

(declare-fun e!11728 () Bool)

(declare-fun tp!4949 () Bool)

(assert (=> b!22423 (= e!11728 (and tp_is_empty!117 tp!4949))))

(declare-fun b!22424 () Bool)

(declare-fun e!11724 () Bool)

(declare-fun tp!4946 () Bool)

(assert (=> b!22424 (= e!11724 (and tp_is_empty!117 tp!4946))))

(declare-fun b!22425 () Bool)

(declare-fun res!9856 () Bool)

(assert (=> b!22425 (=> (not res!9856) (not e!11729))))

(declare-fun thiss!2852 () List!345)

(assert (=> b!22425 (= res!9856 (and (= thiss!2852 l1!169) (= l!729 l2!163)))))

(declare-fun res!9858 () Bool)

(assert (=> start!3540 (=> (not res!9858) (not e!11729))))

(assert (=> start!3540 (= res!9858 (<= 0 i!289))))

(assert (=> start!3540 e!11729))

(assert (=> start!3540 true))

(assert (=> start!3540 e!11724))

(assert (=> start!3540 tp_is_empty!117))

(assert (=> start!3540 e!11725))

(assert (=> start!3540 e!11730))

(assert (=> start!3540 e!11728))

(declare-fun b!22426 () Bool)

(declare-fun res!9851 () Bool)

(assert (=> b!22426 (=> (not res!9851) (not e!11729))))

(assert (=> b!22426 (= res!9851 e!11727)))

(declare-fun res!9853 () Bool)

(assert (=> b!22426 (=> res!9853 e!11727)))

(assert (=> b!22426 (= res!9853 (or (is-Nil!340 l1!169) (= i!289 0)))))

(declare-fun b!22427 () Bool)

(declare-fun res!9852 () Bool)

(assert (=> b!22427 (=> (not res!9852) (not e!11729))))

(declare-fun y!818 () T!1773)

(assert (=> b!22427 (= res!9852 (= y!818 y!811))))

(declare-fun b!22428 () Bool)

(declare-fun res!9854 () Bool)

(assert (=> b!22428 (=> (not res!9854) (not e!11729))))

(assert (=> b!22428 (= res!9854 (= i!296 (- i!289 (size!237 l1!169))))))

(declare-fun b!22429 () Bool)

(declare-fun res!9850 () Bool)

(assert (=> b!22429 (=> (not res!9850) (not e!11729))))

(assert (=> b!22429 (= res!9850 (>= i!289 (size!237 l1!169)))))

(assert (= (and start!3540 res!9858) b!22420))

(assert (= (and b!22420 res!9857) b!22426))

(assert (= (and b!22426 (not res!9853)) b!22421))

(assert (= (and b!22426 res!9851) b!22429))

(assert (= (and b!22429 res!9850) b!22425))

(assert (= (and b!22425 res!9856) b!22428))

(assert (= (and b!22428 res!9854) b!22427))

(assert (= (and b!22427 res!9852) b!22419))

(assert (= (and b!22419 (not res!9855)) b!22417))

(assert (= (and start!3540 (is-Cons!339 thiss!2852)) b!22424))

(assert (= (and start!3540 (is-Cons!339 l1!169)) b!22418))

(assert (= (and start!3540 (is-Cons!339 l!729)) b!22422))

(assert (= (and start!3540 (is-Cons!339 l2!163)) b!22423))

(declare-fun m!24415 () Bool)

(assert (=> b!22429 m!24415))

(assert (=> b!22428 m!24415))

(assert (=> b!22420 m!24415))

(declare-fun m!24417 () Bool)

(assert (=> b!22420 m!24417))

(declare-fun m!24419 () Bool)

(assert (=> b!22421 m!24419))

(declare-fun m!24421 () Bool)

(assert (=> b!22417 m!24421))

(push 1)

(assert (not b!22417))

(assert (not b!22421))

(assert (not b!22423))

(assert (not b!22420))

(assert (not b!22422))

(assert (not b!22424))

(assert (not b!22429))

(assert (not b!22428))

(assert (not b!22418))

(assert tp_is_empty!117)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


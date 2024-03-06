; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10544 () Bool)

(assert start!10544)

(declare-fun res!40626 () Bool)

(declare-fun e!43486 () Bool)

(assert (=> start!10544 (=> (not res!40626) (not e!43486))))

(declare-datatypes () ((List!653 (Cons!611 (h!899 Int) (t!47640 List!653)) (Nil!613))))

(declare-fun l1!419 () List!653)

(declare-fun isSorted!2 (List!653) Bool)

(assert (=> start!10544 (= res!40626 (isSorted!2 l1!419))))

(assert (=> start!10544 e!43486))

(assert (=> start!10544 true))

(declare-fun b!80159 () Bool)

(declare-fun thiss!9538 () List!653)

(declare-fun l2!412 () List!653)

(assert (=> b!80159 (= e!43486 (and (= thiss!9538 l2!412) (= thiss!9538 Nil!613)))))

(declare-fun b!80158 () Bool)

(declare-fun res!40627 () Bool)

(assert (=> b!80158 (=> (not res!40627) (not e!43486))))

(declare-fun isEmpty!665 (List!653) Bool)

(assert (=> b!80158 (= res!40627 (not (isEmpty!665 l2!412)))))

(declare-fun b!80156 () Bool)

(declare-fun res!40625 () Bool)

(assert (=> b!80156 (=> (not res!40625) (not e!43486))))

(assert (=> b!80156 (= res!40625 (isSorted!2 l2!412))))

(declare-fun b!80157 () Bool)

(declare-fun res!40628 () Bool)

(assert (=> b!80157 (=> (not res!40628) (not e!43486))))

(assert (=> b!80157 (= res!40628 (not (isEmpty!665 l1!419)))))

(assert (= (and start!10544 res!40626) b!80156))

(assert (= (and b!80156 res!40625) b!80157))

(assert (= (and b!80157 res!40628) b!80158))

(assert (= (and b!80158 res!40627) b!80159))

(declare-fun m!74998 () Bool)

(assert (=> start!10544 m!74998))

(declare-fun m!75000 () Bool)

(assert (=> b!80158 m!75000))

(declare-fun m!75002 () Bool)

(assert (=> b!80156 m!75002))

(declare-fun m!75004 () Bool)

(assert (=> b!80157 m!75004))

(push 1)

(assert (not b!80156))

(assert (not b!80158))

(assert (not b!80157))

(assert (not start!10544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55365 () Bool)

(declare-fun res!40633 () Bool)

(declare-fun e!43491 () Bool)

(assert (=> d!55365 (=> res!40633 e!43491)))

(assert (=> d!55365 (= res!40633 (not (and (is-Cons!611 l2!412) (is-Cons!611 (t!47640 l2!412)))))))

(assert (=> d!55365 (= (isSorted!2 l2!412) e!43491)))

(declare-fun b!80164 () Bool)

(declare-fun e!43492 () Bool)

(assert (=> b!80164 (= e!43491 e!43492)))

(declare-fun res!40634 () Bool)

(assert (=> b!80164 (=> (not res!40634) (not e!43492))))

(assert (=> b!80164 (= res!40634 (<= (h!899 l2!412) (h!899 (t!47640 l2!412))))))

(declare-fun b!80165 () Bool)

(assert (=> b!80165 (= e!43492 (isSorted!2 (t!47640 l2!412)))))

(assert (= (and d!55365 (not res!40633)) b!80164))

(assert (= (and b!80164 res!40634) b!80165))

(declare-fun m!75006 () Bool)

(assert (=> b!80165 m!75006))

(assert (=> b!80156 d!55365))

(declare-fun d!55367 () Bool)

(assert (=> d!55367 (= (isEmpty!665 l2!412) (is-Nil!613 l2!412))))

(assert (=> b!80158 d!55367))

(declare-fun d!55369 () Bool)

(assert (=> d!55369 (= (isEmpty!665 l1!419) (is-Nil!613 l1!419))))

(assert (=> b!80157 d!55369))

(declare-fun d!55371 () Bool)

(declare-fun res!40635 () Bool)

(declare-fun e!43493 () Bool)

(assert (=> d!55371 (=> res!40635 e!43493)))

(assert (=> d!55371 (= res!40635 (not (and (is-Cons!611 l1!419) (is-Cons!611 (t!47640 l1!419)))))))

(assert (=> d!55371 (= (isSorted!2 l1!419) e!43493)))

(declare-fun b!80166 () Bool)

(declare-fun e!43494 () Bool)

(assert (=> b!80166 (= e!43493 e!43494)))

(declare-fun res!40636 () Bool)

(assert (=> b!80166 (=> (not res!40636) (not e!43494))))

(assert (=> b!80166 (= res!40636 (<= (h!899 l1!419) (h!899 (t!47640 l1!419))))))

(declare-fun b!80167 () Bool)

(assert (=> b!80167 (= e!43494 (isSorted!2 (t!47640 l1!419)))))

(assert (= (and d!55371 (not res!40635)) b!80166))

(assert (= (and b!80166 res!40636) b!80167))

(declare-fun m!75008 () Bool)

(assert (=> b!80167 m!75008))

(assert (=> start!10544 d!55371))

(push 1)

(assert (not b!80167))

(assert (not b!80165))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8842 () Bool)

(assert start!8842)

(declare-fun b!61618 () Bool)

(declare-fun res!28660 () Bool)

(declare-fun e!32942 () Bool)

(assert (=> b!61618 (=> (not res!28660) (not e!32942))))

(declare-datatypes () ((List!556 (Cons!521 (h!749 Int) (t!47251 List!556)) (Nil!522))))

(declare-fun l2!357 () List!556)

(declare-fun isSorted!3 (List!556) Bool)

(assert (=> b!61618 (= res!28660 (isSorted!3 l2!357))))

(declare-fun b!61619 () Bool)

(declare-fun res!28662 () Bool)

(assert (=> b!61619 (=> (not res!28662) (not e!32942))))

(declare-fun h!716 () Int)

(declare-fun l2!358 () List!556)

(declare-fun l1!365 () List!556)

(declare-fun l1!364 () List!556)

(assert (=> b!61619 (= res!28662 (and (is-Cons!521 l1!364) (is-Cons!521 l2!357) (<= (h!749 l1!364) (h!749 l2!357)) (= h!716 (h!749 l1!364)) (= l1!365 (t!47251 l1!364)) (= l2!358 l2!357)))))

(declare-fun b!61621 () Bool)

(declare-fun e!32943 () Bool)

(assert (=> b!61621 (= e!32943 (not (isSorted!3 l2!358)))))

(declare-fun res!28661 () Bool)

(assert (=> start!8842 (=> (not res!28661) (not e!32942))))

(assert (=> start!8842 (= res!28661 (isSorted!3 l1!364))))

(assert (=> start!8842 e!32942))

(assert (=> start!8842 true))

(declare-fun b!61620 () Bool)

(assert (=> b!61620 (= e!32942 e!32943)))

(declare-fun res!28659 () Bool)

(assert (=> b!61620 (=> res!28659 e!32943)))

(assert (=> b!61620 (= res!28659 (not (isSorted!3 l1!365)))))

(assert (= (and start!8842 res!28661) b!61618))

(assert (= (and b!61618 res!28660) b!61619))

(assert (= (and b!61619 res!28662) b!61620))

(assert (= (and b!61620 (not res!28659)) b!61621))

(declare-fun m!67204 () Bool)

(assert (=> b!61618 m!67204))

(declare-fun m!67206 () Bool)

(assert (=> b!61621 m!67206))

(declare-fun m!67208 () Bool)

(assert (=> start!8842 m!67208))

(declare-fun m!67210 () Bool)

(assert (=> b!61620 m!67210))

(push 1)

(assert (not start!8842))

(assert (not b!61621))

(assert (not b!61618))

(assert (not b!61620))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52281 () Bool)

(declare-fun res!28667 () Bool)

(declare-fun e!32948 () Bool)

(assert (=> d!52281 (=> res!28667 e!32948)))

(assert (=> d!52281 (= res!28667 (not (and (is-Cons!521 l1!364) (is-Cons!521 (t!47251 l1!364)))))))

(assert (=> d!52281 (= (isSorted!3 l1!364) e!32948)))

(declare-fun b!61626 () Bool)

(declare-fun e!32949 () Bool)

(assert (=> b!61626 (= e!32948 e!32949)))

(declare-fun res!28668 () Bool)

(assert (=> b!61626 (=> (not res!28668) (not e!32949))))

(assert (=> b!61626 (= res!28668 (<= (h!749 l1!364) (h!749 (t!47251 l1!364))))))

(declare-fun b!61627 () Bool)

(assert (=> b!61627 (= e!32949 (isSorted!3 (t!47251 l1!364)))))

(assert (= (and d!52281 (not res!28667)) b!61626))

(assert (= (and b!61626 res!28668) b!61627))

(declare-fun m!67212 () Bool)

(assert (=> b!61627 m!67212))

(assert (=> start!8842 d!52281))

(declare-fun d!52283 () Bool)

(declare-fun res!28669 () Bool)

(declare-fun e!32950 () Bool)

(assert (=> d!52283 (=> res!28669 e!32950)))

(assert (=> d!52283 (= res!28669 (not (and (is-Cons!521 l2!358) (is-Cons!521 (t!47251 l2!358)))))))

(assert (=> d!52283 (= (isSorted!3 l2!358) e!32950)))

(declare-fun b!61628 () Bool)

(declare-fun e!32951 () Bool)

(assert (=> b!61628 (= e!32950 e!32951)))

(declare-fun res!28670 () Bool)

(assert (=> b!61628 (=> (not res!28670) (not e!32951))))

(assert (=> b!61628 (= res!28670 (<= (h!749 l2!358) (h!749 (t!47251 l2!358))))))

(declare-fun b!61629 () Bool)

(assert (=> b!61629 (= e!32951 (isSorted!3 (t!47251 l2!358)))))

(assert (= (and d!52283 (not res!28669)) b!61628))

(assert (= (and b!61628 res!28670) b!61629))

(declare-fun m!67214 () Bool)

(assert (=> b!61629 m!67214))

(assert (=> b!61621 d!52283))

(declare-fun d!52285 () Bool)

(declare-fun res!28671 () Bool)

(declare-fun e!32952 () Bool)

(assert (=> d!52285 (=> res!28671 e!32952)))

(assert (=> d!52285 (= res!28671 (not (and (is-Cons!521 l2!357) (is-Cons!521 (t!47251 l2!357)))))))

(assert (=> d!52285 (= (isSorted!3 l2!357) e!32952)))

(declare-fun b!61630 () Bool)

(declare-fun e!32953 () Bool)

(assert (=> b!61630 (= e!32952 e!32953)))

(declare-fun res!28672 () Bool)

(assert (=> b!61630 (=> (not res!28672) (not e!32953))))

(assert (=> b!61630 (= res!28672 (<= (h!749 l2!357) (h!749 (t!47251 l2!357))))))

(declare-fun b!61631 () Bool)

(assert (=> b!61631 (= e!32953 (isSorted!3 (t!47251 l2!357)))))

(assert (= (and d!52285 (not res!28671)) b!61630))

(assert (= (and b!61630 res!28672) b!61631))

(declare-fun m!67216 () Bool)

(assert (=> b!61631 m!67216))

(assert (=> b!61618 d!52285))

(declare-fun d!52287 () Bool)

(declare-fun res!28673 () Bool)

(declare-fun e!32954 () Bool)

(assert (=> d!52287 (=> res!28673 e!32954)))

(assert (=> d!52287 (= res!28673 (not (and (is-Cons!521 l1!365) (is-Cons!521 (t!47251 l1!365)))))))

(assert (=> d!52287 (= (isSorted!3 l1!365) e!32954)))

(declare-fun b!61632 () Bool)

(declare-fun e!32955 () Bool)

(assert (=> b!61632 (= e!32954 e!32955)))

(declare-fun res!28674 () Bool)

(assert (=> b!61632 (=> (not res!28674) (not e!32955))))

(assert (=> b!61632 (= res!28674 (<= (h!749 l1!365) (h!749 (t!47251 l1!365))))))

(declare-fun b!61633 () Bool)

(assert (=> b!61633 (= e!32955 (isSorted!3 (t!47251 l1!365)))))

(assert (= (and d!52287 (not res!28673)) b!61632))

(assert (= (and b!61632 res!28674) b!61633))

(declare-fun m!67218 () Bool)

(assert (=> b!61633 m!67218))

(assert (=> b!61620 d!52287))

(push 1)

(assert (not b!61631))

(assert (not b!61629))

(assert (not b!61627))

(assert (not b!61633))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


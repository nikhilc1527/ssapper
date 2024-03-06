; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7458 () Bool)

(assert start!7458)

(declare-fun res!24464 () Bool)

(declare-fun e!28010 () Bool)

(assert (=> start!7458 (=> (not res!24464) (not e!28010))))

(declare-datatypes () ((List!444 (Nil!424) (Cons!423 (head!683 (_ BitVec 32)) (tail!709 List!444)))))

(declare-fun l!1079 () List!444)

(declare-fun isSorted!5 (List!444) Bool)

(assert (=> start!7458 (= res!24464 (isSorted!5 l!1079))))

(assert (=> start!7458 e!28010))

(assert (=> start!7458 true))

(declare-fun b!53707 () Bool)

(declare-fun e!28009 () Bool)

(assert (=> b!53707 (= e!28010 (not e!28009))))

(declare-fun res!24465 () Bool)

(assert (=> b!53707 (=> (not res!24465) (not e!28009))))

(declare-fun e!27864 () (_ BitVec 32))

(declare-fun res!24315 () List!444)

(declare-fun contents!0 (List!444) (Set (_ BitVec 32)))

(assert (=> b!53707 (= res!24465 (= (contents!0 res!24315) (union (contents!0 l!1079) (insert e!27864 (as emptyset (Set (_ BitVec 32)))))))))

(assert (=> b!53707 (is-Cons!423 res!24315)))

(declare-fun b!53709 () Bool)

(declare-fun size!18 (List!444) Int)

(assert (=> b!53709 (= e!28009 (= (size!18 res!24315) (+ (size!18 l!1079) 1)))))

(declare-fun b!53708 () Bool)

(declare-fun res!24466 () Bool)

(assert (=> b!53708 (=> (not res!24466) (not e!28009))))

(assert (=> b!53708 (= res!24466 (isSorted!5 res!24315))))

(declare-fun b!53706 () Bool)

(declare-fun res!24467 () Bool)

(assert (=> b!53706 (=> (not res!24467) (not e!28010))))

(assert (=> b!53706 (= res!24467 (and (not (is-Nil!424 l!1079)) (bvsgt (head!683 l!1079) e!27864) (= res!24315 (Cons!423 e!27864 l!1079))))))

(assert (= (and start!7458 res!24464) b!53706))

(assert (= (and b!53706 res!24467) b!53707))

(assert (= (and b!53707 res!24465) b!53708))

(assert (= (and b!53708 res!24466) b!53709))

(declare-fun m!57558 () Bool)

(assert (=> start!7458 m!57558))

(declare-fun m!57560 () Bool)

(assert (=> b!53707 m!57560))

(declare-fun m!57562 () Bool)

(assert (=> b!53707 m!57562))

(declare-fun m!57564 () Bool)

(assert (=> b!53707 m!57564))

(declare-fun m!57566 () Bool)

(assert (=> b!53709 m!57566))

(declare-fun m!57568 () Bool)

(assert (=> b!53709 m!57568))

(declare-fun m!57570 () Bool)

(assert (=> b!53708 m!57570))

(push 1)

(assert (not b!53707))

(assert (not start!7458))

(assert (not b!53709))

(assert (not b!53708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44741 () Bool)

(declare-fun c!11653 () Bool)

(assert (=> d!44741 (= c!11653 (is-Nil!424 res!24315))))

(declare-fun e!28013 () (Set (_ BitVec 32)))

(assert (=> d!44741 (= (contents!0 res!24315) e!28013)))

(declare-fun b!53714 () Bool)

(assert (=> b!53714 (= e!28013 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!53715 () Bool)

(assert (=> b!53715 (= e!28013 (union (contents!0 (tail!709 res!24315)) (insert (head!683 res!24315) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!44741 c!11653) b!53714))

(assert (= (and d!44741 (not c!11653)) b!53715))

(declare-fun m!57572 () Bool)

(assert (=> b!53715 m!57572))

(declare-fun m!57574 () Bool)

(assert (=> b!53715 m!57574))

(assert (=> b!53707 d!44741))

(declare-fun d!44743 () Bool)

(declare-fun c!11654 () Bool)

(assert (=> d!44743 (= c!11654 (is-Nil!424 l!1079))))

(declare-fun e!28014 () (Set (_ BitVec 32)))

(assert (=> d!44743 (= (contents!0 l!1079) e!28014)))

(declare-fun b!53716 () Bool)

(assert (=> b!53716 (= e!28014 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!53717 () Bool)

(assert (=> b!53717 (= e!28014 (union (contents!0 (tail!709 l!1079)) (insert (head!683 l!1079) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!44743 c!11654) b!53716))

(assert (= (and d!44743 (not c!11654)) b!53717))

(declare-fun m!57576 () Bool)

(assert (=> b!53717 m!57576))

(declare-fun m!57578 () Bool)

(assert (=> b!53717 m!57578))

(assert (=> b!53707 d!44743))

(declare-fun d!44745 () Bool)

(declare-fun res!24472 () Bool)

(declare-fun e!28019 () Bool)

(assert (=> d!44745 (=> res!24472 e!28019)))

(assert (=> d!44745 (= res!24472 (or (is-Nil!424 l!1079) (and (is-Cons!423 l!1079) (is-Nil!424 (tail!709 l!1079)))))))

(assert (=> d!44745 (= (isSorted!5 l!1079) e!28019)))

(declare-fun b!53722 () Bool)

(declare-fun e!28020 () Bool)

(assert (=> b!53722 (= e!28019 e!28020)))

(declare-fun res!24473 () Bool)

(assert (=> b!53722 (=> (not res!24473) (not e!28020))))

(assert (=> b!53722 (= res!24473 (bvsle (head!683 l!1079) (head!683 (tail!709 l!1079))))))

(declare-fun b!53723 () Bool)

(assert (=> b!53723 (= e!28020 (isSorted!5 (Cons!423 (head!683 (tail!709 l!1079)) (tail!709 (tail!709 l!1079)))))))

(assert (= (and d!44745 (not res!24472)) b!53722))

(assert (= (and b!53722 res!24473) b!53723))

(declare-fun m!57580 () Bool)

(assert (=> b!53723 m!57580))

(assert (=> start!7458 d!44745))

(declare-fun d!44747 () Bool)

(declare-fun lt!9351 () Int)

(assert (=> d!44747 (>= lt!9351 0)))

(declare-fun e!28023 () Int)

(assert (=> d!44747 (= lt!9351 e!28023)))

(declare-fun c!11657 () Bool)

(assert (=> d!44747 (= c!11657 (is-Nil!424 res!24315))))

(assert (=> d!44747 (= (size!18 res!24315) lt!9351)))

(declare-fun b!53728 () Bool)

(assert (=> b!53728 (= e!28023 0)))

(declare-fun b!53729 () Bool)

(assert (=> b!53729 (= e!28023 (+ 1 (size!18 (tail!709 res!24315))))))

(assert (= (and d!44747 c!11657) b!53728))

(assert (= (and d!44747 (not c!11657)) b!53729))

(declare-fun m!57582 () Bool)

(assert (=> b!53729 m!57582))

(assert (=> b!53709 d!44747))

(declare-fun d!44749 () Bool)

(declare-fun lt!9352 () Int)

(assert (=> d!44749 (>= lt!9352 0)))

(declare-fun e!28024 () Int)

(assert (=> d!44749 (= lt!9352 e!28024)))

(declare-fun c!11658 () Bool)

(assert (=> d!44749 (= c!11658 (is-Nil!424 l!1079))))

(assert (=> d!44749 (= (size!18 l!1079) lt!9352)))

(declare-fun b!53730 () Bool)

(assert (=> b!53730 (= e!28024 0)))

(declare-fun b!53731 () Bool)

(assert (=> b!53731 (= e!28024 (+ 1 (size!18 (tail!709 l!1079))))))

(assert (= (and d!44749 c!11658) b!53730))

(assert (= (and d!44749 (not c!11658)) b!53731))

(declare-fun m!57584 () Bool)

(assert (=> b!53731 m!57584))

(assert (=> b!53709 d!44749))

(declare-fun d!44751 () Bool)

(declare-fun res!24474 () Bool)

(declare-fun e!28025 () Bool)

(assert (=> d!44751 (=> res!24474 e!28025)))

(assert (=> d!44751 (= res!24474 (or (is-Nil!424 res!24315) (and (is-Cons!423 res!24315) (is-Nil!424 (tail!709 res!24315)))))))

(assert (=> d!44751 (= (isSorted!5 res!24315) e!28025)))

(declare-fun b!53732 () Bool)

(declare-fun e!28026 () Bool)

(assert (=> b!53732 (= e!28025 e!28026)))

(declare-fun res!24475 () Bool)

(assert (=> b!53732 (=> (not res!24475) (not e!28026))))

(assert (=> b!53732 (= res!24475 (bvsle (head!683 res!24315) (head!683 (tail!709 res!24315))))))

(declare-fun b!53733 () Bool)

(assert (=> b!53733 (= e!28026 (isSorted!5 (Cons!423 (head!683 (tail!709 res!24315)) (tail!709 (tail!709 res!24315)))))))

(assert (= (and d!44751 (not res!24474)) b!53732))

(assert (= (and b!53732 res!24475) b!53733))

(declare-fun m!57586 () Bool)

(assert (=> b!53733 m!57586))

(assert (=> b!53708 d!44751))

(push 1)

(assert (not b!53715))

(assert (not b!53729))

(assert (not b!53717))

(assert (not b!53733))

(assert (not b!53723))

(assert (not b!53731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


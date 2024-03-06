; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5744 () Bool)

(assert start!5744)

(declare-fun b!43798 () Bool)

(declare-fun res!20721 () Bool)

(declare-fun e!22708 () Bool)

(assert (=> b!43798 (=> (not res!20721) (not e!22708))))

(declare-datatypes () ((Nat!114 (Zero!98) (Succ!95 (n!1239 Nat!114)))))

(declare-fun n1!69 () Nat!114)

(declare-fun n1!66 () Nat!114)

(assert (=> b!43798 (= res!20721 (= n1!69 n1!66))))

(declare-fun res!20716 () Bool)

(assert (=> start!5744 (=> (not res!20716) (not e!22708))))

(declare-fun >!2 (Nat!114 Nat!114) Bool)

(assert (=> start!5744 (= res!20716 (>!2 n1!66 Zero!98))))

(assert (=> start!5744 e!22708))

(assert (=> start!5744 true))

(declare-fun b!43799 () Bool)

(declare-fun res!20720 () Bool)

(assert (=> b!43799 (=> (not res!20720) (not e!22708))))

(declare-fun n2!77 () Nat!114)

(declare-datatypes () ((Unit!418 (Unit!419))))

(declare-fun tmp!151 () Unit!418)

(declare-fun pow_positive!0 (Nat!114 Nat!114) Unit!418)

(assert (=> b!43799 (= res!20720 (= tmp!151 (pow_positive!0 n1!66 (n!1239 n2!77))))))

(declare-fun b!43800 () Bool)

(declare-fun res!20717 () Bool)

(assert (=> b!43800 (=> (not res!20717) (not e!22708))))

(declare-fun n2!80 () Nat!114)

(declare-fun pow!0 (Nat!114 Nat!114) Nat!114)

(assert (=> b!43800 (= res!20717 (= n2!80 (pow!0 n1!66 (n!1239 n2!77))))))

(declare-fun b!43801 () Bool)

(declare-fun e!22709 () Bool)

(assert (=> b!43801 (= e!22708 e!22709)))

(declare-fun res!20718 () Bool)

(assert (=> b!43801 (=> res!20718 e!22709)))

(assert (=> b!43801 (= res!20718 (not (>!2 n1!69 Zero!98)))))

(declare-fun b!43802 () Bool)

(declare-fun res!20719 () Bool)

(assert (=> b!43802 (=> (not res!20719) (not e!22708))))

(assert (=> b!43802 (= res!20719 (is-Succ!95 n2!77))))

(declare-fun b!43803 () Bool)

(assert (=> b!43803 (= e!22709 (not (>!2 n2!80 Zero!98)))))

(assert (= (and start!5744 res!20716) b!43802))

(assert (= (and b!43802 res!20719) b!43799))

(assert (= (and b!43799 res!20720) b!43798))

(assert (= (and b!43798 res!20721) b!43800))

(assert (= (and b!43800 res!20717) b!43801))

(assert (= (and b!43801 (not res!20718)) b!43803))

(declare-fun m!47057 () Bool)

(assert (=> start!5744 m!47057))

(declare-fun m!47059 () Bool)

(assert (=> b!43803 m!47059))

(declare-fun m!47061 () Bool)

(assert (=> b!43800 m!47061))

(declare-fun m!47063 () Bool)

(assert (=> b!43801 m!47063))

(declare-fun m!47065 () Bool)

(assert (=> b!43799 m!47065))

(push 1)

(assert (not b!43799))

(assert (not b!43803))

(assert (not start!5744))

(assert (not b!43800))

(assert (not b!43801))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31102 () Bool)

(declare-fun res!20724 () Bool)

(declare-fun e!22712 () Bool)

(assert (=> d!31102 (=> (not res!20724) (not e!22712))))

(declare-fun <!2 (Nat!114 Nat!114) Bool)

(assert (=> d!31102 (= res!20724 (not (<!2 n2!80 Zero!98)))))

(assert (=> d!31102 (= (>!2 n2!80 Zero!98) e!22712)))

(declare-fun b!43806 () Bool)

(assert (=> b!43806 (= e!22712 (not (= n2!80 Zero!98)))))

(assert (= (and d!31102 res!20724) b!43806))

(declare-fun m!47067 () Bool)

(assert (=> d!31102 m!47067))

(assert (=> b!43803 d!31102))

(declare-fun d!31104 () Bool)

(declare-fun c!9331 () Bool)

(assert (=> d!31104 (= c!9331 (is-Succ!95 (n!1239 n2!77)))))

(declare-fun e!22715 () Nat!114)

(assert (=> d!31104 (= (pow!0 n1!66 (n!1239 n2!77)) e!22715)))

(declare-fun b!43811 () Bool)

(declare-fun *!4 (Nat!114 Nat!114) Nat!114)

(assert (=> b!43811 (= e!22715 (*!4 n1!66 (pow!0 n1!66 (n!1239 (n!1239 n2!77)))))))

(declare-fun b!43812 () Bool)

(assert (=> b!43812 (= e!22715 (Succ!95 Zero!98))))

(assert (= (and d!31104 c!9331) b!43811))

(assert (= (and d!31104 (not c!9331)) b!43812))

(declare-fun m!47069 () Bool)

(assert (=> b!43811 m!47069))

(assert (=> b!43811 m!47069))

(declare-fun m!47071 () Bool)

(assert (=> b!43811 m!47071))

(assert (=> b!43800 d!31104))

(declare-fun d!31106 () Bool)

(declare-fun res!20725 () Bool)

(declare-fun e!22716 () Bool)

(assert (=> d!31106 (=> (not res!20725) (not e!22716))))

(assert (=> d!31106 (= res!20725 (not (<!2 n1!66 Zero!98)))))

(assert (=> d!31106 (= (>!2 n1!66 Zero!98) e!22716)))

(declare-fun b!43813 () Bool)

(assert (=> b!43813 (= e!22716 (not (= n1!66 Zero!98)))))

(assert (= (and d!31106 res!20725) b!43813))

(declare-fun m!47073 () Bool)

(assert (=> d!31106 m!47073))

(assert (=> start!5744 d!31106))

(declare-fun d!31108 () Bool)

(assert (=> d!31108 (>!2 (pow!0 n1!66 (n!1239 n2!77)) Zero!98)))

(assert (=> d!31108 true))

(declare-fun x$67!34 () Unit!418)

(assert (=> d!31108 (= (pow_positive!0 n1!66 (n!1239 n2!77)) x$67!34)))

(declare-fun bs!17726 () Bool)

(assert (= bs!17726 d!31108))

(assert (=> bs!17726 m!47061))

(assert (=> bs!17726 m!47061))

(declare-fun m!47075 () Bool)

(assert (=> bs!17726 m!47075))

(assert (=> b!43799 d!31108))

(declare-fun d!31110 () Bool)

(declare-fun res!20726 () Bool)

(declare-fun e!22717 () Bool)

(assert (=> d!31110 (=> (not res!20726) (not e!22717))))

(assert (=> d!31110 (= res!20726 (not (<!2 n1!69 Zero!98)))))

(assert (=> d!31110 (= (>!2 n1!69 Zero!98) e!22717)))

(declare-fun b!43814 () Bool)

(assert (=> b!43814 (= e!22717 (not (= n1!69 Zero!98)))))

(assert (= (and d!31110 res!20726) b!43814))

(declare-fun m!47077 () Bool)

(assert (=> d!31110 m!47077))

(assert (=> b!43801 d!31110))

(push 1)

(assert (not d!31102))

(assert (not d!31110))

(assert (not d!31108))

(assert (not b!43811))

(assert (not d!31106))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7702 () Bool)

(assert start!7702)

(declare-fun res!25344 () Bool)

(declare-fun e!28999 () Bool)

(assert (=> start!7702 (=> (not res!25344) (not e!28999))))

(declare-datatypes () ((IntSet!52 (Node!136 (left!1222 IntSet!52) (elem!288 (_ BitVec 32)) (right!1225 IntSet!52)) (Empty!175))))

(declare-fun s!1759 () IntSet!52)

(declare-fun x!22044 () (_ BitVec 32))

(assert (=> start!7702 (= res!25344 (and (or (not (is-Node!136 s!1759)) (bvsge x!22044 (elem!288 s!1759))) (is-Node!136 s!1759) (bvsgt x!22044 (elem!288 s!1759))))))

(assert (=> start!7702 e!28999))

(assert (=> start!7702 true))

(declare-fun b!55082 () Bool)

(declare-fun res!25345 () Bool)

(assert (=> b!55082 (=> (not res!25345) (not e!28999))))

(declare-fun thiss!7826 () IntSet!52)

(declare-datatypes () ((Unit!914 (Unit!915))))

(declare-fun x$2!302 () Unit!914)

(declare-fun P2!0 (IntSet!52 IntSet!52 (_ BitVec 32)) Unit!914)

(assert (=> b!55082 (= res!25345 (= x$2!302 (P2!0 thiss!7826 (right!1225 s!1759) x!22044)))))

(declare-fun b!55083 () Bool)

(declare-fun contains!9 (IntSet!52 (_ BitVec 32)) Bool)

(declare-fun incl!0 (IntSet!52 (_ BitVec 32)) IntSet!52)

(assert (=> b!55083 (= e!28999 (not (contains!9 (incl!0 s!1759 x!22044) x!22044)))))

(assert (= (and start!7702 res!25344) b!55082))

(assert (= (and b!55082 res!25345) b!55083))

(declare-fun m!59940 () Bool)

(assert (=> b!55082 m!59940))

(declare-fun m!59942 () Bool)

(assert (=> b!55083 m!59942))

(assert (=> b!55083 m!59942))

(declare-fun m!59944 () Bool)

(assert (=> b!55083 m!59944))

(push 1)

(assert (not b!55083))

(assert (not b!55082))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45202 () Bool)

(declare-fun res!25354 () Bool)

(declare-fun e!29004 () Bool)

(assert (=> d!45202 (=> (not res!25354) (not e!29004))))

(assert (=> d!45202 (= res!25354 (not (is-Empty!175 (incl!0 s!1759 x!22044))))))

(assert (=> d!45202 (= (contains!9 (incl!0 s!1759 x!22044) x!22044) e!29004)))

(declare-fun b!55090 () Bool)

(declare-fun lt!9729 () Bool)

(declare-fun lt!9728 () Bool)

(assert (=> b!55090 (= e!29004 (ite lt!9728 lt!9729 (or (not (bvsgt x!22044 (elem!288 (incl!0 s!1759 x!22044)))) lt!9729)))))

(declare-fun e!29005 () Bool)

(assert (=> b!55090 (= lt!9729 e!29005)))

(declare-fun c!11956 () Bool)

(assert (=> b!55090 (= c!11956 (or lt!9728 (bvsgt x!22044 (elem!288 (incl!0 s!1759 x!22044)))))))

(assert (=> b!55090 (= lt!9728 (bvslt x!22044 (elem!288 (incl!0 s!1759 x!22044))))))

(declare-fun b!55092 () Bool)

(declare-fun res!25353 () Bool)

(assert (=> b!55092 (= e!29005 res!25353)))

(assert (=> b!55092 true))

(assert (=> b!55092 true))

(declare-fun b!55091 () Bool)

(assert (=> b!55091 (= e!29005 (contains!9 (ite lt!9728 (left!1222 (incl!0 s!1759 x!22044)) (right!1225 (incl!0 s!1759 x!22044))) x!22044))))

(assert (= (and d!45202 res!25354) b!55090))

(assert (= (and b!55090 c!11956) b!55091))

(assert (= (and b!55090 (not c!11956)) b!55092))

(declare-fun m!59946 () Bool)

(assert (=> b!55091 m!59946))

(assert (=> b!55083 d!45202))

(declare-fun e!29010 () IntSet!52)

(declare-fun b!55103 () Bool)

(declare-fun lt!9734 () Bool)

(assert (=> b!55103 (= e!29010 (incl!0 (ite lt!9734 (left!1222 s!1759) (right!1225 s!1759)) x!22044))))

(declare-fun d!45204 () Bool)

(declare-fun c!11962 () Bool)

(assert (=> d!45204 (= c!11962 (is-Empty!175 s!1759))))

(declare-fun e!29011 () IntSet!52)

(assert (=> d!45204 (= (incl!0 s!1759 x!22044) e!29011)))

(declare-fun b!55101 () Bool)

(assert (=> b!55101 (= e!29011 (Node!136 Empty!175 x!22044 Empty!175))))

(declare-fun b!55102 () Bool)

(declare-fun lt!9735 () IntSet!52)

(assert (=> b!55102 (= e!29011 (ite lt!9734 (Node!136 lt!9735 (elem!288 s!1759) (right!1225 s!1759)) (ite (bvsgt x!22044 (elem!288 s!1759)) (Node!136 (left!1222 s!1759) (elem!288 s!1759) lt!9735) s!1759)))))

(assert (=> b!55102 (= lt!9735 e!29010)))

(declare-fun c!11961 () Bool)

(assert (=> b!55102 (= c!11961 (or lt!9734 (bvsgt x!22044 (elem!288 s!1759))))))

(assert (=> b!55102 (= lt!9734 (bvslt x!22044 (elem!288 s!1759)))))

(declare-fun b!55104 () Bool)

(declare-fun res!25360 () IntSet!52)

(assert (=> b!55104 (= e!29010 res!25360)))

(assert (=> b!55104 true))

(assert (=> b!55104 true))

(assert (= (and b!55102 c!11961) b!55103))

(assert (= (and b!55102 (not c!11961)) b!55104))

(assert (= (and d!45204 c!11962) b!55101))

(assert (= (and d!45204 (not c!11962)) b!55102))

(declare-fun m!59948 () Bool)

(assert (=> b!55103 m!59948))

(assert (=> b!55083 d!45204))

(declare-fun d!45206 () Bool)

(assert (=> d!45206 (contains!9 (incl!0 (right!1225 s!1759) x!22044) x!22044)))

(declare-fun lt!9743 () Unit!914)

(declare-fun lt!9742 () Bool)

(declare-fun lt!9744 () Unit!914)

(declare-fun Unit!916 () Unit!914)

(assert (=> d!45206 (= lt!9743 (ite (or lt!9742 (and (is-Node!136 (right!1225 s!1759)) (bvsgt x!22044 (elem!288 (right!1225 s!1759))))) lt!9744 Unit!916))))

(declare-fun e!29014 () Unit!914)

(assert (=> d!45206 (= lt!9744 e!29014)))

(declare-fun c!11965 () Bool)

(assert (=> d!45206 (= c!11965 (or lt!9742 (and (is-Node!136 (right!1225 s!1759)) (bvsgt x!22044 (elem!288 (right!1225 s!1759))))))))

(assert (=> d!45206 (= lt!9742 (and (is-Node!136 (right!1225 s!1759)) (bvslt x!22044 (elem!288 (right!1225 s!1759)))))))

(assert (=> d!45206 (= (P2!0 thiss!7826 (right!1225 s!1759) x!22044) lt!9743)))

(declare-fun b!55110 () Bool)

(declare-fun res!25366 () Unit!914)

(assert (=> b!55110 (= e!29014 res!25366)))

(assert (=> b!55110 true))

(assert (=> b!55110 true))

(declare-fun b!55109 () Bool)

(assert (=> b!55109 (= e!29014 (P2!0 thiss!7826 (ite lt!9742 (left!1222 (right!1225 s!1759)) (right!1225 (right!1225 s!1759))) x!22044))))

(assert (= (and d!45206 c!11965) b!55109))

(assert (= (and d!45206 (not c!11965)) b!55110))

(declare-fun m!59950 () Bool)

(assert (=> d!45206 m!59950))

(assert (=> d!45206 m!59950))

(declare-fun m!59952 () Bool)

(assert (=> d!45206 m!59952))

(declare-fun m!59954 () Bool)

(assert (=> b!55109 m!59954))

(assert (=> b!55082 d!45206))

(push 1)

(assert (not b!55109))

(assert (not d!45206))

(assert (not b!55103))

(assert (not b!55091))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


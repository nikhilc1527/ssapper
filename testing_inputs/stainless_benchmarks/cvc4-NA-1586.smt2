; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11020 () Bool)

(assert start!11020)

(declare-fun b!84074 () Bool)

(declare-fun e!45586 () Bool)

(assert (=> b!84074 (= e!45586 false)))

(declare-fun b!84075 () Bool)

(declare-fun res!43358 () Bool)

(assert (=> b!84075 (=> (not res!43358) (not e!45586))))

(declare-fun e!45585 () Bool)

(assert (=> b!84075 (= res!43358 e!45585)))

(declare-fun res!43360 () Bool)

(assert (=> b!84075 (=> res!43360 e!45585)))

(declare-datatypes () ((List!684 (Cons!641 (h!1014 Int) (t!47936 List!684)) (Nil!643))))

(declare-fun l1!433 () List!684)

(declare-fun isEmpty!693 (List!684) Bool)

(assert (=> b!84075 (= res!43360 (isEmpty!693 l1!433))))

(declare-fun b!84076 () Bool)

(declare-fun l2!426 () List!684)

(declare-fun last!31 (List!684) Int)

(declare-fun head!1067 (List!684) Int)

(assert (=> b!84076 (= e!45585 (<= (last!31 l1!433) (head!1067 l2!426)))))

(declare-fun b!84077 () Bool)

(declare-fun res!43362 () Bool)

(assert (=> b!84077 (=> res!43362 e!45585)))

(assert (=> b!84077 (= res!43362 (isEmpty!693 l2!426))))

(declare-fun b!84078 () Bool)

(declare-fun res!43361 () Bool)

(assert (=> b!84078 (=> (not res!43361) (not e!45586))))

(declare-fun isSorted!1 (List!684) Bool)

(assert (=> b!84078 (= res!43361 (isSorted!1 l2!426))))

(declare-fun res!43359 () Bool)

(assert (=> start!11020 (=> (not res!43359) (not e!45586))))

(assert (=> start!11020 (= res!43359 (isSorted!1 l1!433))))

(assert (=> start!11020 e!45586))

(assert (=> start!11020 true))

(assert (= (and start!11020 res!43359) b!84078))

(assert (= (and b!84078 res!43361) b!84075))

(assert (= (and b!84075 (not res!43360)) b!84077))

(assert (= (and b!84077 (not res!43362)) b!84076))

(assert (= (and b!84075 res!43358) b!84074))

(declare-fun m!79924 () Bool)

(assert (=> start!11020 m!79924))

(declare-fun m!79926 () Bool)

(assert (=> b!84076 m!79926))

(declare-fun m!79928 () Bool)

(assert (=> b!84076 m!79928))

(declare-fun m!79930 () Bool)

(assert (=> b!84077 m!79930))

(declare-fun m!79932 () Bool)

(assert (=> b!84078 m!79932))

(declare-fun m!79934 () Bool)

(assert (=> b!84075 m!79934))

(push 1)

(assert (not b!84077))

(assert (not b!84078))

(assert (not start!11020))

(assert (not b!84076))

(assert (not b!84075))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


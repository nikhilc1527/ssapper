; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10972 () Bool)

(assert start!10972)

(declare-fun b!83844 () Bool)

(declare-fun res!43190 () Bool)

(declare-fun e!45455 () Bool)

(assert (=> b!83844 (=> (not res!43190) (not e!45455))))

(declare-datatypes () ((List!680 (Cons!637 (h!1007 Int) (t!47932 List!680)) (Nil!639))))

(declare-fun l1!433 () List!680)

(declare-fun isEmpty!689 (List!680) Bool)

(assert (=> b!83844 (= res!43190 (not (isEmpty!689 l1!433)))))

(declare-fun b!83843 () Bool)

(declare-fun res!43192 () Bool)

(assert (=> b!83843 (=> (not res!43192) (not e!45455))))

(declare-fun l2!426 () List!680)

(declare-fun isSorted!1 (List!680) Bool)

(assert (=> b!83843 (= res!43192 (isSorted!1 l2!426))))

(declare-fun res!43189 () Bool)

(assert (=> start!10972 (=> (not res!43189) (not e!45455))))

(assert (=> start!10972 (= res!43189 (isSorted!1 l1!433))))

(assert (=> start!10972 e!45455))

(assert (=> start!10972 true))

(declare-fun b!83845 () Bool)

(declare-fun res!43191 () Bool)

(assert (=> b!83845 (=> (not res!43191) (not e!45455))))

(assert (=> b!83845 (= res!43191 (not (isEmpty!689 l2!426)))))

(declare-fun b!83846 () Bool)

(declare-fun thiss!9673 () List!680)

(assert (=> b!83846 (= e!45455 (and (= thiss!9673 l2!426) (= thiss!9673 Nil!639)))))

(assert (= (and start!10972 res!43189) b!83843))

(assert (= (and b!83843 res!43192) b!83844))

(assert (= (and b!83844 res!43190) b!83845))

(assert (= (and b!83845 res!43191) b!83846))

(declare-fun m!79738 () Bool)

(assert (=> b!83844 m!79738))

(declare-fun m!79740 () Bool)

(assert (=> b!83843 m!79740))

(declare-fun m!79742 () Bool)

(assert (=> start!10972 m!79742))

(declare-fun m!79744 () Bool)

(assert (=> b!83845 m!79744))

(push 1)

(assert (not b!83844))

(assert (not start!10972))

(assert (not b!83843))

(assert (not b!83845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!56609 () Bool)

(assert (=> d!56609 (= (isEmpty!689 l1!433) (is-Nil!639 l1!433))))

(assert (=> b!83844 d!56609))

(declare-fun d!56611 () Bool)

(declare-fun res!43197 () Bool)

(declare-fun e!45460 () Bool)

(assert (=> d!56611 (=> res!43197 e!45460)))

(assert (=> d!56611 (= res!43197 (not (and (is-Cons!637 l1!433) (is-Cons!637 (t!47932 l1!433)))))))

(assert (=> d!56611 (= (isSorted!1 l1!433) e!45460)))

(declare-fun b!83851 () Bool)

(declare-fun e!45461 () Bool)

(assert (=> b!83851 (= e!45460 e!45461)))

(declare-fun res!43198 () Bool)

(assert (=> b!83851 (=> (not res!43198) (not e!45461))))

(assert (=> b!83851 (= res!43198 (<= (h!1007 l1!433) (h!1007 (t!47932 l1!433))))))

(declare-fun b!83852 () Bool)

(assert (=> b!83852 (= e!45461 (isSorted!1 (t!47932 l1!433)))))

(assert (= (and d!56611 (not res!43197)) b!83851))

(assert (= (and b!83851 res!43198) b!83852))

(declare-fun m!79746 () Bool)

(assert (=> b!83852 m!79746))

(assert (=> start!10972 d!56611))

(declare-fun d!56613 () Bool)

(declare-fun res!43199 () Bool)

(declare-fun e!45462 () Bool)

(assert (=> d!56613 (=> res!43199 e!45462)))

(assert (=> d!56613 (= res!43199 (not (and (is-Cons!637 l2!426) (is-Cons!637 (t!47932 l2!426)))))))

(assert (=> d!56613 (= (isSorted!1 l2!426) e!45462)))

(declare-fun b!83853 () Bool)

(declare-fun e!45463 () Bool)

(assert (=> b!83853 (= e!45462 e!45463)))

(declare-fun res!43200 () Bool)

(assert (=> b!83853 (=> (not res!43200) (not e!45463))))

(assert (=> b!83853 (= res!43200 (<= (h!1007 l2!426) (h!1007 (t!47932 l2!426))))))

(declare-fun b!83854 () Bool)

(assert (=> b!83854 (= e!45463 (isSorted!1 (t!47932 l2!426)))))

(assert (= (and d!56613 (not res!43199)) b!83853))

(assert (= (and b!83853 res!43200) b!83854))

(declare-fun m!79748 () Bool)

(assert (=> b!83854 m!79748))

(assert (=> b!83843 d!56613))

(declare-fun d!56615 () Bool)

(assert (=> d!56615 (= (isEmpty!689 l2!426) (is-Nil!639 l2!426))))

(assert (=> b!83845 d!56615))

(push 1)

(assert (not b!83854))

(assert (not b!83852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


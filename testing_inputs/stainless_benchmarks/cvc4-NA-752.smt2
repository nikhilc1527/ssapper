; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5742 () Bool)

(assert start!5742)

(declare-fun res!20702 () Bool)

(declare-fun e!22703 () Bool)

(assert (=> start!5742 (=> (not res!20702) (not e!22703))))

(declare-datatypes () ((Nat!113 (Zero!97) (Succ!94 (n!1238 Nat!113)))))

(declare-fun n1!66 () Nat!113)

(declare-fun >!2 (Nat!113 Nat!113) Bool)

(assert (=> start!5742 (= res!20702 (>!2 n1!66 Zero!97))))

(assert (=> start!5742 e!22703))

(assert (=> start!5742 true))

(declare-fun b!43784 () Bool)

(declare-fun res!20703 () Bool)

(assert (=> b!43784 (=> (not res!20703) (not e!22703))))

(declare-fun n2!77 () Nat!113)

(declare-fun n1!67 () Nat!113)

(declare-fun n2!78 () Nat!113)

(assert (=> b!43784 (= res!20703 (and (is-Succ!94 n2!77) (= n1!67 n1!66) (= n2!78 (n!1238 n2!77))))))

(declare-fun b!43785 () Bool)

(assert (=> b!43785 (= e!22703 (not (>!2 n1!67 Zero!97)))))

(assert (= (and start!5742 res!20702) b!43784))

(assert (= (and b!43784 res!20703) b!43785))

(declare-fun m!47053 () Bool)

(assert (=> start!5742 m!47053))

(declare-fun m!47055 () Bool)

(assert (=> b!43785 m!47055))

(push 1)

(assert (not start!5742))

(assert (not b!43785))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


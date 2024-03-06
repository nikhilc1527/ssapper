; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12112 () Bool)

(assert start!12112)

(declare-fun res!47622 () Bool)

(declare-fun e!49561 () Bool)

(assert (=> start!12112 (=> (not res!47622) (not e!49561))))

(declare-datatypes () ((List!763 (Cons!714 (h!1131 Int) (t!49007 List!763)) (Nil!716))))

(declare-datatypes () ((tuple2!442 (tuple2!443 (_1!256 List!763) (_2!256 Int)))))

(declare-fun d!59707 () tuple2!442)

(declare-fun inv!1485 (tuple2!442) Bool)

(assert (=> start!12112 (= res!47622 (inv!1485 d!59707))))

(assert (=> start!12112 e!49561))

(assert (=> start!12112 true))

(declare-fun b!90805 () Bool)

(declare-fun res!47623 () Bool)

(assert (=> b!90805 (=> (not res!47623) (not e!49561))))

(declare-fun thiss!10433 () tuple2!442)

(assert (=> b!90805 (= res!47623 (= thiss!10433 d!59707))))

(declare-fun b!90806 () Bool)

(assert (=> b!90806 (= e!49561 (not (inv!1485 thiss!10433)))))

(assert (= (and start!12112 res!47622) b!90805))

(assert (= (and b!90805 res!47623) b!90806))

(declare-fun m!86646 () Bool)

(assert (=> start!12112 m!86646))

(declare-fun m!86648 () Bool)

(assert (=> b!90806 m!86648))

(push 1)

(assert (not b!90806))

(assert (not start!12112))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


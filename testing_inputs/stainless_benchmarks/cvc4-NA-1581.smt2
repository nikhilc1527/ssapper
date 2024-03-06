; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10970 () Bool)

(assert start!10970)

(declare-fun b!83830 () Bool)

(declare-fun e!45452 () Bool)

(declare-datatypes () ((List!679 (Cons!636 (h!1006 Int) (t!47931 List!679)) (Nil!638))))

(declare-fun thiss!9671 () List!679)

(declare-fun isEmpty!688 (List!679) Bool)

(assert (=> b!83830 (= e!45452 (isEmpty!688 thiss!9671))))

(declare-fun res!43178 () Bool)

(assert (=> start!10970 (=> (not res!43178) (not e!45452))))

(declare-fun l1!433 () List!679)

(declare-fun isSorted!1 (List!679) Bool)

(assert (=> start!10970 (= res!43178 (isSorted!1 l1!433))))

(assert (=> start!10970 e!45452))

(assert (=> start!10970 true))

(declare-fun b!83831 () Bool)

(declare-fun res!43179 () Bool)

(assert (=> b!83831 (=> (not res!43179) (not e!45452))))

(declare-fun l2!426 () List!679)

(assert (=> b!83831 (= res!43179 (isSorted!1 l2!426))))

(declare-fun b!83832 () Bool)

(declare-fun res!43180 () Bool)

(assert (=> b!83832 (=> (not res!43180) (not e!45452))))

(assert (=> b!83832 (= res!43180 (= thiss!9671 l1!433))))

(declare-fun b!83833 () Bool)

(declare-fun res!43177 () Bool)

(assert (=> b!83833 (=> (not res!43177) (not e!45452))))

(assert (=> b!83833 (= res!43177 (not (isEmpty!688 l1!433)))))

(declare-fun b!83834 () Bool)

(declare-fun res!43176 () Bool)

(assert (=> b!83834 (=> (not res!43176) (not e!45452))))

(assert (=> b!83834 (= res!43176 (not (isEmpty!688 l2!426)))))

(assert (= (and start!10970 res!43178) b!83831))

(assert (= (and b!83831 res!43179) b!83833))

(assert (= (and b!83833 res!43177) b!83834))

(assert (= (and b!83834 res!43176) b!83832))

(assert (= (and b!83832 res!43180) b!83830))

(declare-fun m!79728 () Bool)

(assert (=> b!83833 m!79728))

(declare-fun m!79730 () Bool)

(assert (=> start!10970 m!79730))

(declare-fun m!79732 () Bool)

(assert (=> b!83834 m!79732))

(declare-fun m!79734 () Bool)

(assert (=> b!83831 m!79734))

(declare-fun m!79736 () Bool)

(assert (=> b!83830 m!79736))

(push 1)

(assert (not b!83831))

(assert (not b!83834))

(assert (not start!10970))

(assert (not b!83833))

(assert (not b!83830))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


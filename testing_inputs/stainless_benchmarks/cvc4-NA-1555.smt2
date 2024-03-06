; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10542 () Bool)

(assert start!10542)

(declare-fun b!80143 () Bool)

(declare-fun res!40614 () Bool)

(declare-fun e!43483 () Bool)

(assert (=> b!80143 (=> (not res!40614) (not e!43483))))

(declare-datatypes () ((List!652 (Cons!610 (h!898 Int) (t!47639 List!652)) (Nil!612))))

(declare-fun thiss!9536 () List!652)

(declare-fun l1!419 () List!652)

(assert (=> b!80143 (= res!40614 (= thiss!9536 l1!419))))

(declare-fun res!40616 () Bool)

(assert (=> start!10542 (=> (not res!40616) (not e!43483))))

(declare-fun isSorted!2 (List!652) Bool)

(assert (=> start!10542 (= res!40616 (isSorted!2 l1!419))))

(assert (=> start!10542 e!43483))

(assert (=> start!10542 true))

(declare-fun b!80144 () Bool)

(declare-fun isEmpty!664 (List!652) Bool)

(assert (=> b!80144 (= e!43483 (isEmpty!664 thiss!9536))))

(declare-fun b!80145 () Bool)

(declare-fun res!40613 () Bool)

(assert (=> b!80145 (=> (not res!40613) (not e!43483))))

(assert (=> b!80145 (= res!40613 (not (isEmpty!664 l1!419)))))

(declare-fun b!80146 () Bool)

(declare-fun res!40615 () Bool)

(assert (=> b!80146 (=> (not res!40615) (not e!43483))))

(declare-fun l2!412 () List!652)

(assert (=> b!80146 (= res!40615 (not (isEmpty!664 l2!412)))))

(declare-fun b!80147 () Bool)

(declare-fun res!40612 () Bool)

(assert (=> b!80147 (=> (not res!40612) (not e!43483))))

(assert (=> b!80147 (= res!40612 (isSorted!2 l2!412))))

(assert (= (and start!10542 res!40616) b!80147))

(assert (= (and b!80147 res!40612) b!80145))

(assert (= (and b!80145 res!40613) b!80146))

(assert (= (and b!80146 res!40615) b!80143))

(assert (= (and b!80143 res!40614) b!80144))

(declare-fun m!74988 () Bool)

(assert (=> b!80146 m!74988))

(declare-fun m!74990 () Bool)

(assert (=> b!80145 m!74990))

(declare-fun m!74992 () Bool)

(assert (=> b!80147 m!74992))

(declare-fun m!74994 () Bool)

(assert (=> start!10542 m!74994))

(declare-fun m!74996 () Bool)

(assert (=> b!80144 m!74996))

(push 1)

(assert (not b!80145))

(assert (not b!80144))

(assert (not b!80147))

(assert (not b!80146))

(assert (not start!10542))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!464 () Bool)

(assert start!464)

(declare-fun b!3722 () Bool)

(declare-fun res!1135 () Bool)

(declare-fun e!2083 () Bool)

(assert (=> b!3722 (=> (not res!1135) (not e!2083))))

(declare-datatypes () ((List!70 (Cons!70 (head!242 (_ BitVec 32)) (tail!254 List!70)) (Nil!71))))

(declare-datatypes () ((AbsQueue!19 (Queue!18 (front!69 List!70) (rear!71 List!70)))))

(declare-fun queue!34 () AbsQueue!19)

(declare-datatypes () ((tuple2!10 (tuple2!11 (_1!5 List!70) (_2!5 List!70)))))

(declare-fun x$7!13 () tuple2!10)

(declare-fun t!389 () tuple2!10)

(declare-fun rear!28 () List!70)

(declare-fun res!638 () tuple2!10)

(declare-fun front!29 () List!70)

(assert (=> b!3722 (= res!1135 (and (= t!389 (tuple2!11 (front!69 queue!34) (rear!71 queue!34))) (= res!638 t!389) (= x$7!13 res!638) (= front!29 (_1!5 x$7!13)) (= rear!28 (_2!5 x$7!13))))))

(declare-fun res!1133 () Bool)

(assert (=> start!464 (=> (not res!1133) (not e!2083))))

(declare-fun isEmpty!12 (AbsQueue!19) Bool)

(assert (=> start!464 (= res!1133 (not (isEmpty!12 queue!34)))))

(assert (=> start!464 e!2083))

(assert (=> start!464 true))

(declare-fun b!3723 () Bool)

(declare-fun res!1136 () Bool)

(assert (=> b!3723 (=> (not res!1136) (not e!2083))))

(declare-fun isAmortized!0 (AbsQueue!19) Bool)

(assert (=> b!3723 (= res!1136 (isAmortized!0 queue!34))))

(declare-fun b!3724 () Bool)

(declare-fun res!1134 () Bool)

(assert (=> b!3724 (=> (not res!1134) (not e!2083))))

(declare-datatypes () ((Unit!48 (Unit!49))))

(declare-fun tmp!10 () Unit!48)

(declare-fun Unit!50 () Unit!48)

(assert (=> b!3724 (= res!1134 (= tmp!10 Unit!50))))

(declare-fun concatNil!0 (List!70) Bool)

(declare-fun concat!2 (List!70 List!70) List!70)

(declare-fun tail!158 (List!70) List!70)

(declare-fun reverse!5 (List!70) List!70)

(assert (=> b!3724 (concatNil!0 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))

(declare-fun b!3725 () Bool)

(declare-fun res!1137 () Bool)

(assert (=> b!3725 (=> (not res!1137) (not e!2083))))

(declare-fun queue!43 () AbsQueue!19)

(assert (=> b!3725 (= res!1137 (= queue!43 queue!34))))

(declare-fun b!3726 () Bool)

(declare-fun e!2084 () Bool)

(assert (=> b!3726 (= e!2084 (isEmpty!12 queue!43))))

(declare-fun b!3727 () Bool)

(assert (=> b!3727 (= e!2083 e!2084)))

(declare-fun res!1138 () Bool)

(assert (=> b!3727 (=> res!1138 e!2084)))

(assert (=> b!3727 (= res!1138 (not (isAmortized!0 queue!43)))))

(assert (= (and start!464 res!1133) b!3723))

(assert (= (and b!3723 res!1136) b!3722))

(assert (= (and b!3722 res!1135) b!3724))

(assert (= (and b!3724 res!1134) b!3725))

(assert (= (and b!3725 res!1137) b!3727))

(assert (= (and b!3727 (not res!1138)) b!3726))

(declare-fun m!5813 () Bool)

(assert (=> start!464 m!5813))

(declare-fun m!5815 () Bool)

(assert (=> b!3723 m!5815))

(declare-fun m!5817 () Bool)

(assert (=> b!3727 m!5817))

(declare-fun m!5819 () Bool)

(assert (=> b!3726 m!5819))

(declare-fun m!5821 () Bool)

(assert (=> b!3724 m!5821))

(declare-fun m!5823 () Bool)

(assert (=> b!3724 m!5823))

(assert (=> b!3724 m!5821))

(assert (=> b!3724 m!5823))

(declare-fun m!5825 () Bool)

(assert (=> b!3724 m!5825))

(assert (=> b!3724 m!5825))

(declare-fun m!5827 () Bool)

(assert (=> b!3724 m!5827))

(push 1)

(assert (not start!464))

(assert (not b!3723))

(assert (not b!3727))

(assert (not b!3724))

(assert (not b!3726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


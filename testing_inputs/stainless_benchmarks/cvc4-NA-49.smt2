; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!366 () Bool)

(assert start!366)

(declare-fun b!3365 () Bool)

(declare-fun e!1897 () Bool)

(declare-fun e!1896 () Bool)

(assert (=> b!3365 (= e!1897 e!1896)))

(declare-fun res!1046 () Bool)

(assert (=> b!3365 (=> res!1046 e!1896)))

(declare-datatypes () ((List!62 (Cons!62 (head!234 (_ BitVec 32)) (tail!246 List!62)) (Nil!63))))

(declare-datatypes () ((AbsQueue!12 (Queue!11 (front!60 List!62) (rear!62 List!62)))))

(declare-fun queue!82 () AbsQueue!12)

(declare-fun isAmortized!0 (AbsQueue!12) Bool)

(assert (=> b!3365 (= res!1046 (not (isAmortized!0 queue!82)))))

(declare-fun b!3366 () Bool)

(declare-fun isEmpty!12 (AbsQueue!12) Bool)

(assert (=> b!3366 (= e!1896 (isEmpty!12 queue!82))))

(declare-fun b!3363 () Bool)

(declare-fun res!1045 () Bool)

(assert (=> b!3363 (=> (not res!1045) (not e!1897))))

(declare-fun queue!75 () AbsQueue!12)

(assert (=> b!3363 (= res!1045 (isAmortized!0 queue!75))))

(declare-fun b!3364 () Bool)

(declare-fun res!1044 () Bool)

(assert (=> b!3364 (=> (not res!1044) (not e!1897))))

(assert (=> b!3364 (= res!1044 (= queue!82 queue!75))))

(declare-fun res!1047 () Bool)

(assert (=> start!366 (=> (not res!1047) (not e!1897))))

(assert (=> start!366 (= res!1047 (not (isEmpty!12 queue!75)))))

(assert (=> start!366 e!1897))

(assert (=> start!366 true))

(assert (= (and start!366 res!1047) b!3363))

(assert (= (and b!3363 res!1045) b!3364))

(assert (= (and b!3364 res!1044) b!3365))

(assert (= (and b!3365 (not res!1046)) b!3366))

(declare-fun m!5283 () Bool)

(assert (=> b!3365 m!5283))

(declare-fun m!5285 () Bool)

(assert (=> b!3366 m!5285))

(declare-fun m!5287 () Bool)

(assert (=> b!3363 m!5287))

(declare-fun m!5289 () Bool)

(assert (=> start!366 m!5289))

(push 1)

(assert (not b!3366))

(assert (not start!366))

(assert (not b!3363))

(assert (not b!3365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


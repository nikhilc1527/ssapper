; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15636 () Bool)

(assert start!15636)

(declare-fun res!51145 () Bool)

(declare-fun e!53873 () Bool)

(assert (=> start!15636 (=> (not res!51145) (not e!53873))))

(assert (=> start!15636 (= res!51145 false)))

(assert (=> start!15636 e!53873))

(assert (=> start!15636 true))

(declare-fun b!98568 () Bool)

(declare-datatypes () ((Unit!1478 (Unit!1479))))

(declare-datatypes () ((Bool!9 (True!7) (False!7))))

(declare-datatypes () ((tuple2!528 (tuple2!529 (_1!303 Unit!1478) (_2!303 Bool!9)))))

(declare-datatypes () ((Option!808 (None!779) (Some!778 (v!3297 tuple2!528)))))

(declare-fun thiss!14372 () Option!808)

(declare-fun isDefined!30 (Option!808) Bool)

(assert (=> b!98568 (= e!53873 (not (isDefined!30 thiss!14372)))))

(assert (= (and start!15636 res!51145) b!98568))

(declare-fun m!92606 () Bool)

(assert (=> b!98568 m!92606))

(push 1)

(assert (not b!98568))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


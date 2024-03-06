; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12086 () Bool)

(assert start!12086)

(declare-fun res!47548 () Bool)

(declare-fun e!49537 () Bool)

(assert (=> start!12086 (=> (not res!47548) (not e!49537))))

(assert (=> start!12086 (= res!47548 false)))

(assert (=> start!12086 e!49537))

(assert (=> start!12086 true))

(declare-fun b!90748 () Bool)

(declare-datatypes () ((Unit!1272 (Unit!1273))))

(declare-datatypes () ((Bool!5 (True!4) (False!4))))

(declare-datatypes () ((tuple2!440 (tuple2!441 (_1!255 Unit!1272) (_2!255 Bool!5)))))

(declare-datatypes () ((Option!614 (Some!587 (v!2828 tuple2!440)) (None!588))))

(declare-fun thiss!10380 () Option!614)

(declare-fun isDefined!23 (Option!614) Bool)

(assert (=> b!90748 (= e!49537 (not (isDefined!23 thiss!10380)))))

(assert (= (and start!12086 res!47548) b!90748))

(declare-fun m!86516 () Bool)

(assert (=> b!90748 m!86516))

(push 1)

(assert (not b!90748))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


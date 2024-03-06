; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6908 () Bool)

(assert start!6908)

(declare-fun res!23446 () Bool)

(declare-fun e!26443 () Bool)

(assert (=> start!6908 (=> (not res!23446) (not e!26443))))

(declare-datatypes () ((T!2883 (TExt!2 (__x!56 Int) (x!19849 Int)))))

(declare-fun thiss!7086 () T!2883)

(declare-fun thiss!7085 () T!2883)

(assert (=> start!6908 (= res!23446 (= thiss!7086 thiss!7085))))

(assert (=> start!6908 e!26443))

(assert (=> start!6908 true))

(declare-fun b!50978 () Bool)

(declare-fun res!23447 () Bool)

(assert (=> b!50978 (=> (not res!23447) (not e!26443))))

(declare-datatypes () ((Unit!848 (Unit!849))))

(declare-datatypes () ((tuple2!262 (tuple2!263 (_1!157 Unit!848) (_2!157 T!2883)))))

(declare-fun res!23422 () tuple2!262)

(declare-fun $init!15 (T!2883) tuple2!262)

(assert (=> b!50978 (= res!23447 (= res!23422 ($init!15 thiss!7086)))))

(declare-fun b!50979 () Bool)

(assert (=> b!50979 (= e!26443 false)))

(assert (= (and start!6908 res!23446) b!50978))

(assert (= (and b!50978 res!23447) b!50979))

(declare-fun m!54527 () Bool)

(assert (=> b!50978 m!54527))

(push 1)

(assert (not b!50978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


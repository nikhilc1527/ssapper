; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4310 () Bool)

(assert start!4310)

(declare-fun res!15782 () Bool)

(declare-fun e!17424 () Bool)

(assert (=> start!4310 (=> (not res!15782) (not e!17424))))

(declare-datatypes () ((Container!12 (Container!13 (t!4585 Int)))))

(declare-fun b0!1 () Container!12)

(declare-fun b!34507 () Container!12)

(assert (=> start!4310 (= res!15782 (= b0!1 b!34507))))

(assert (=> start!4310 e!17424))

(assert (=> start!4310 true))

(declare-fun b!34514 () Bool)

(declare-fun res!15783 () Bool)

(assert (=> b!34514 (=> (not res!15783) (not e!17424))))

(declare-datatypes () ((Unit!186 (Unit!187))))

(declare-fun tmp!74 () Unit!186)

(declare-fun f!201 (Container!12) Unit!186)

(assert (=> b!34514 (= res!15783 (= tmp!74 (f!201 b!34507)))))

(declare-fun b!34515 () Bool)

(assert (=> b!34515 (= e!17424 (not (= b!34507 b0!1)))))

(assert (= (and start!4310 res!15782) b!34514))

(assert (= (and b!34514 res!15783) b!34515))

(declare-fun m!37137 () Bool)

(assert (=> b!34514 m!37137))

(push 1)

(assert (not b!34514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


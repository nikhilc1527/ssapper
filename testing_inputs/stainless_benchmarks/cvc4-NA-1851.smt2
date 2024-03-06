; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12464 () Bool)

(assert start!12464)

(declare-fun res!48364 () Bool)

(declare-fun e!50323 () Bool)

(assert (=> start!12464 (=> (not res!48364) (not e!50323))))

(declare-datatypes () ((Box!3 (Box!4 (value!9188 Int)))))

(declare-fun box!14 () Box!3)

(assert (=> start!12464 (= res!48364 (= box!14 (Box!4 123)))))

(assert (=> start!12464 e!50323))

(assert (=> start!12464 true))

(declare-fun b!91904 () Bool)

(declare-fun res!48365 () Bool)

(assert (=> b!91904 (=> (not res!48365) (not e!50323))))

(declare-datatypes () ((Unit!1378 (Unit!1379))))

(declare-fun tmp!602 () Unit!1378)

(declare-fun dontMutateStuff!0 (Box!3 Int) Unit!1378)

(assert (=> b!91904 (= res!48365 (= tmp!602 (dontMutateStuff!0 box!14 2)))))

(declare-fun b!91905 () Bool)

(assert (=> b!91905 (= e!50323 (not (= (value!9188 box!14) 123)))))

(assert (= (and start!12464 res!48364) b!91904))

(assert (= (and b!91904 res!48365) b!91905))

(declare-fun m!87744 () Bool)

(assert (=> b!91904 m!87744))

(push 1)

(assert (not b!91904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


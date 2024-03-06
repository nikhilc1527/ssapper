; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12466 () Bool)

(assert start!12466)

(declare-fun res!48370 () Bool)

(declare-fun e!50326 () Bool)

(assert (=> start!12466 (=> (not res!48370) (not e!50326))))

(declare-datatypes () ((Box!5 (Box!6 (value!9189 Int)))))

(declare-fun box!10 () Box!5)

(assert (=> start!12466 (= res!48370 (= box!10 (Box!6 123)))))

(assert (=> start!12466 e!50326))

(assert (=> start!12466 true))

(declare-fun b!91910 () Bool)

(declare-fun res!48371 () Bool)

(assert (=> b!91910 (=> (not res!48371) (not e!50326))))

(declare-datatypes () ((Unit!1380 (Unit!1381))))

(declare-datatypes () ((tuple2!446 (tuple2!447 (_1!258 Unit!1380) (_2!258 Box!5)))))

(declare-fun res!48359 () tuple2!446)

(declare-fun mutateStuff!0 (Box!5 Int) tuple2!446)

(assert (=> b!91910 (= res!48371 (= res!48359 (mutateStuff!0 box!10 2)))))

(declare-fun tmp!601 () Unit!1380)

(declare-fun box!13 () Box!5)

(declare-fun tmp!600 () Unit!1380)

(declare-fun b!91911 () Bool)

(declare-fun Unit!1382 () Unit!1380)

(assert (=> b!91911 (= e!50326 (and (= box!13 (_2!258 res!48359)) (= tmp!600 Unit!1382) (= tmp!601 (_1!258 res!48359)) (not (= (value!9189 box!13) 123))))))

(assert (= (and start!12466 res!48370) b!91910))

(assert (= (and b!91910 res!48371) b!91911))

(declare-fun m!87746 () Bool)

(assert (=> b!91910 m!87746))

(push 1)

(assert (not b!91910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60396 () Bool)

(assert (=> d!60396 true))

(assert (=> d!60396 true))

(declare-fun res!48374 () tuple2!446)

(assert (=> d!60396 (= (mutateStuff!0 box!10 2) res!48374)))

(assert (=> b!91910 d!60396))

(push 1)

(check-sat)

(get-model)

(pop 1)


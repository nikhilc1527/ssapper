; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8488 () Bool)

(assert start!8488)

(declare-fun b!59098 () Bool)

(declare-fun res!27437 () Bool)

(declare-fun e!31453 () Bool)

(assert (=> b!59098 (=> (not res!27437) (not e!31453))))

(declare-datatypes () ((List!517 (Cons!483 (head!814 (_ BitVec 32)) (tail!840 List!517)) (Nil!484))))

(declare-datatypes () ((tuple2!290 (tuple2!291 (_1!172 List!517) (_2!172 List!517)))))

(declare-fun x$5!66 () tuple2!290)

(declare-fun in!15 () List!517)

(declare-fun split!2 (List!517) tuple2!290)

(assert (=> b!59098 (= res!27437 (= x$5!66 (split!2 in!15)))))

(declare-fun res!27438 () Bool)

(assert (=> start!8488 (=> (not res!27438) (not e!31453))))

(declare-fun s!1846 () Int)

(declare-fun size!16 (List!517) Int)

(assert (=> start!8488 (= res!27438 (= s!1846 (size!16 in!15)))))

(assert (=> start!8488 e!31453))

(assert (=> start!8488 true))

(declare-fun b!59099 () Bool)

(declare-fun res!27440 () Bool)

(assert (=> b!59099 (=> (not res!27440) (not e!31453))))

(declare-fun in!20 () List!517)

(declare-fun s1!51 () List!517)

(assert (=> b!59099 (= res!27440 (= in!20 s1!51))))

(declare-fun b!59100 () Bool)

(declare-fun res!27435 () Bool)

(assert (=> b!59100 (=> (not res!27435) (not e!31453))))

(assert (=> b!59100 (= res!27435 (and (not (is-Nil!484 in!15)) (not (is-Nil!484 (tail!840 in!15)))))))

(declare-fun b!59101 () Bool)

(declare-fun res!27439 () Bool)

(assert (=> b!59101 (=> (not res!27439) (not e!31453))))

(declare-fun s!1847 () Int)

(assert (=> b!59101 (= res!27439 (= s!1847 (size!16 s1!51)))))

(declare-fun b!59102 () Bool)

(assert (=> b!59102 (= e!31453 (not (= s!1847 (size!16 in!20))))))

(declare-fun b!59103 () Bool)

(declare-fun res!27436 () Bool)

(assert (=> b!59103 (=> (not res!27436) (not e!31453))))

(declare-fun s2!50 () List!517)

(assert (=> b!59103 (= res!27436 (and (= s1!51 (_1!172 x$5!66)) (= s2!50 (_2!172 x$5!66))))))

(assert (= (and start!8488 res!27438) b!59100))

(assert (= (and b!59100 res!27435) b!59098))

(assert (= (and b!59098 res!27437) b!59103))

(assert (= (and b!59103 res!27436) b!59101))

(assert (= (and b!59101 res!27439) b!59099))

(assert (= (and b!59099 res!27440) b!59102))

(declare-fun m!63886 () Bool)

(assert (=> b!59098 m!63886))

(declare-fun m!63888 () Bool)

(assert (=> start!8488 m!63888))

(declare-fun m!63890 () Bool)

(assert (=> b!59101 m!63890))

(declare-fun m!63892 () Bool)

(assert (=> b!59102 m!63892))

(push 1)

(assert (not b!59098))

(assert (not b!59102))

(assert (not b!59101))

(assert (not start!8488))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8490 () Bool)

(assert start!8490)

(declare-fun b!59118 () Bool)

(declare-fun res!27461 () Bool)

(declare-fun e!31456 () Bool)

(assert (=> b!59118 (=> (not res!27461) (not e!31456))))

(declare-datatypes () ((List!518 (Cons!484 (head!815 (_ BitVec 32)) (tail!841 List!518)) (Nil!485))))

(declare-fun in!15 () List!518)

(assert (=> b!59118 (= res!27461 (and (not (is-Nil!485 in!15)) (not (is-Nil!485 (tail!841 in!15)))))))

(declare-fun b!59119 () Bool)

(declare-fun res!27458 () Bool)

(assert (=> b!59119 (=> (not res!27458) (not e!31456))))

(declare-fun s!1849 () Int)

(declare-fun s2!50 () List!518)

(declare-fun size!16 (List!518) Int)

(assert (=> b!59119 (= res!27458 (= s!1849 (size!16 s2!50)))))

(declare-fun b!59120 () Bool)

(declare-fun res!27457 () Bool)

(assert (=> b!59120 (=> (not res!27457) (not e!31456))))

(declare-fun list1!19 () List!518)

(declare-fun s1!51 () List!518)

(declare-fun weirdSort!0 (Int List!518) List!518)

(assert (=> b!59120 (= res!27457 (= list1!19 (weirdSort!0 (size!16 s1!51) s1!51)))))

(declare-fun res!27456 () Bool)

(assert (=> start!8490 (=> (not res!27456) (not e!31456))))

(declare-fun s!1846 () Int)

(assert (=> start!8490 (= res!27456 (= s!1846 (size!16 in!15)))))

(assert (=> start!8490 e!31456))

(assert (=> start!8490 true))

(declare-fun b!59121 () Bool)

(declare-fun res!27459 () Bool)

(assert (=> b!59121 (=> (not res!27459) (not e!31456))))

(declare-fun in!22 () List!518)

(assert (=> b!59121 (= res!27459 (= in!22 s2!50))))

(declare-fun b!59122 () Bool)

(declare-fun res!27455 () Bool)

(assert (=> b!59122 (=> (not res!27455) (not e!31456))))

(declare-datatypes () ((tuple2!292 (tuple2!293 (_1!173 List!518) (_2!173 List!518)))))

(declare-fun x$5!66 () tuple2!292)

(assert (=> b!59122 (= res!27455 (and (= s1!51 (_1!173 x$5!66)) (= s2!50 (_2!173 x$5!66))))))

(declare-fun b!59123 () Bool)

(declare-fun res!27460 () Bool)

(assert (=> b!59123 (=> (not res!27460) (not e!31456))))

(declare-fun split!2 (List!518) tuple2!292)

(assert (=> b!59123 (= res!27460 (= x$5!66 (split!2 in!15)))))

(declare-fun b!59124 () Bool)

(assert (=> b!59124 (= e!31456 (not (= s!1849 (size!16 in!22))))))

(assert (= (and start!8490 res!27456) b!59118))

(assert (= (and b!59118 res!27461) b!59123))

(assert (= (and b!59123 res!27460) b!59122))

(assert (= (and b!59122 res!27455) b!59120))

(assert (= (and b!59120 res!27457) b!59119))

(assert (= (and b!59119 res!27458) b!59121))

(assert (= (and b!59121 res!27459) b!59124))

(declare-fun m!63894 () Bool)

(assert (=> b!59123 m!63894))

(declare-fun m!63896 () Bool)

(assert (=> b!59119 m!63896))

(declare-fun m!63898 () Bool)

(assert (=> b!59120 m!63898))

(assert (=> b!59120 m!63898))

(declare-fun m!63900 () Bool)

(assert (=> b!59120 m!63900))

(declare-fun m!63902 () Bool)

(assert (=> start!8490 m!63902))

(declare-fun m!63904 () Bool)

(assert (=> b!59124 m!63904))

(push 1)

(assert (not start!8490))

(assert (not b!59119))

(assert (not b!59120))

(assert (not b!59124))

(assert (not b!59123))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8594 () Bool)

(assert start!8594)

(declare-fun res!27671 () Bool)

(declare-fun e!31770 () Bool)

(assert (=> start!8594 (=> (not res!27671) (not e!31770))))

(declare-datatypes () ((List!528 (Cons!494 (head!827 (_ BitVec 32)) (tail!853 List!528)) (Nil!495))))

(declare-datatypes () ((LList!4 (LNil!3) (LCons!3 (head!828 List!528) (tail!854 LList!4)))))

(declare-fun llist!21 () LList!4)

(declare-fun lIsSorted!0 (LList!4) Bool)

(assert (=> start!8594 (= res!27671 (lIsSorted!0 llist!21))))

(assert (=> start!8594 e!31770))

(assert (=> start!8594 true))

(declare-fun b!59680 () Bool)

(declare-fun res!27672 () Bool)

(assert (=> b!59680 (=> (not res!27672) (not e!31770))))

(declare-fun llist!32 () LList!4)

(assert (=> b!59680 (= res!27672 (and (not (is-LNil!3 llist!21)) (not (is-LNil!3 (tail!854 llist!21))) (= llist!32 llist!21)))))

(declare-fun b!59681 () Bool)

(assert (=> b!59681 (= e!31770 (not (lIsSorted!0 llist!32)))))

(assert (= (and start!8594 res!27671) b!59680))

(assert (= (and b!59680 res!27672) b!59681))

(declare-fun m!64578 () Bool)

(assert (=> start!8594 m!64578))

(declare-fun m!64580 () Bool)

(assert (=> b!59681 m!64580))

(push 1)

(assert (not b!59681))

(assert (not start!8594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


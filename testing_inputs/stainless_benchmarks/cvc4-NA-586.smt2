; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4370 () Bool)

(assert start!4370)

(declare-fun res!15885 () Bool)

(declare-fun e!17505 () Bool)

(assert (=> start!4370 (=> (not res!15885) (not e!17505))))

(declare-fun x$1!518 () Bool)

(declare-datatypes () ((Foo!32 (Foo!33 (bar!53 (_ BitVec 32))))))

(declare-fun foo!88 () Foo!32)

(assert (=> start!4370 (= res!15885 (and (= x$1!518 true) (= foo!88 (Foo!33 #b00000000000000000000000000000000))))))

(assert (=> start!4370 e!17505))

(assert (=> start!4370 true))

(declare-fun b!34649 () Bool)

(declare-fun res!15886 () Bool)

(assert (=> b!34649 (=> (not res!15886) (not e!17505))))

(declare-datatypes () ((tuple2!122 (tuple2!123 (_1!61 Bool) (_2!61 Foo!32)))))

(declare-fun res!15879 () tuple2!122)

(declare-fun mutateFoo!0 (Foo!32) tuple2!122)

(assert (=> b!34649 (= res!15886 (= res!15879 (mutateFoo!0 foo!88)))))

(declare-fun foo!94 () Foo!32)

(declare-datatypes () ((Unit!209 (Unit!210))))

(declare-fun tmp!86 () Unit!209)

(declare-fun after!1 () Bool)

(declare-fun res!15880 () Unit!209)

(declare-fun b!34650 () Bool)

(declare-datatypes () ((tuple2!124 (tuple2!125 (_1!62 Unit!209) (_2!62 Foo!32)))))

(declare-fun t!4679 () tuple2!124)

(declare-fun Unit!211 () Unit!209)

(assert (=> b!34650 (= e!17505 (and (= t!4679 (tuple2!125 Unit!211 (_2!61 res!15879))) (= res!15880 (_1!62 t!4679)) (= foo!94 (_2!62 t!4679)) (= tmp!86 res!15880) (= after!1 (_1!61 res!15879)) (not (= after!1 false))))))

(assert (= (and start!4370 res!15885) b!34649))

(assert (= (and b!34649 res!15886) b!34650))

(declare-fun m!37263 () Bool)

(assert (=> b!34649 m!37263))

(push 1)

(assert (not b!34649))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18098 () Bool)

(declare-fun lt!6502 () Foo!32)

(assert (=> d!18098 (= lt!6502 (Foo!33 (bvadd (bar!53 foo!88) #b00000000000000000000000000000001)))))

(assert (=> d!18098 (= (mutateFoo!0 foo!88) (tuple2!123 (bvsgt (bar!53 lt!6502) #b00000000000000000000000000001010) lt!6502))))

(assert (=> b!34649 d!18098))

(push 1)

(check-sat)

(pop 1)


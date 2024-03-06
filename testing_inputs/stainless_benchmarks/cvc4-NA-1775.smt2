; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12136 () Bool)

(assert start!12136)

(declare-datatypes () ((A!3870 (A!3871 (x!32340 (_ BitVec 32))))))

(declare-datatypes () ((array!1524 (array!1525 (arr!527 (Array (_ BitVec 32) A!3870)) (size!770 (_ BitVec 32))))))

(declare-datatypes () ((B!661 (B!662 (content!170 array!1524)))))

(declare-fun thiss!10473 () B!661)

(declare-fun a!1091 () array!1524)

(assert (=> start!12136 (and (bvsgt (size!770 (content!170 thiss!10473)) #b00000000000000000000000000000000) (= a!1091 (content!170 thiss!10473)) (bvsge #b00000000000000000000000000000000 (size!770 a!1091)))))

(declare-fun e!49586 () Bool)

(declare-fun inv!38 (B!661) Bool)

(assert (=> start!12136 (and (inv!38 thiss!10473) e!49586)))

(declare-fun array_inv!517 (array!1524) Bool)

(assert (=> start!12136 (array_inv!517 a!1091)))

(declare-fun b!90823 () Bool)

(assert (=> b!90823 (= e!49586 (array_inv!517 (content!170 thiss!10473)))))

(assert (= start!12136 b!90823))

(declare-fun m!86668 () Bool)

(assert (=> start!12136 m!86668))

(declare-fun m!86670 () Bool)

(assert (=> start!12136 m!86670))

(declare-fun m!86672 () Bool)

(assert (=> b!90823 m!86672))

(push 1)

(assert (not b!90823))

(assert (not start!12136))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


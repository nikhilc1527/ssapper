; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12138 () Bool)

(assert start!12138)

(declare-datatypes () ((A!3872 (A!3873 (x!32341 (_ BitVec 32))))))

(declare-datatypes () ((array!1526 (array!1527 (arr!528 (Array (_ BitVec 32) A!3872)) (size!771 (_ BitVec 32))))))

(declare-datatypes () ((B!663 (B!664 (content!171 array!1526)))))

(declare-fun thiss!10473 () B!663)

(declare-fun y!2235 () (_ BitVec 32))

(assert (=> start!12138 (and (bvsgt (size!771 (content!171 thiss!10473)) #b00000000000000000000000000000000) (not (= (x!32341 (select (arr!528 (content!171 thiss!10473)) #b00000000000000000000000000000000)) y!2235)))))

(declare-fun e!49593 () Bool)

(declare-fun inv!38 (B!663) Bool)

(assert (=> start!12138 (and (inv!38 thiss!10473) e!49593)))

(assert (=> start!12138 true))

(declare-fun b!90826 () Bool)

(declare-fun array_inv!518 (array!1526) Bool)

(assert (=> b!90826 (= e!49593 (array_inv!518 (content!171 thiss!10473)))))

(assert (= start!12138 b!90826))

(declare-fun m!86674 () Bool)

(assert (=> start!12138 m!86674))

(declare-fun m!86676 () Bool)

(assert (=> start!12138 m!86676))

(declare-fun m!86678 () Bool)

(assert (=> b!90826 m!86678))

(push 1)

(assert (not start!12138))

(assert (not b!90826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59734 () Bool)

(assert (=> d!59734 (= (inv!38 thiss!10473) (bvsgt (size!771 (content!171 thiss!10473)) #b00000000000000000000000000000000))))

(assert (=> start!12138 d!59734))

(declare-fun d!59736 () Bool)

(assert (=> d!59736 (= (array_inv!518 (content!171 thiss!10473)) (bvsge (size!771 (content!171 thiss!10473)) #b00000000000000000000000000000000))))

(assert (=> b!90826 d!59736))

(push 1)

(check-sat)

(get-model)

(pop 1)


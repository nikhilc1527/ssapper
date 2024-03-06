; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4454 () Bool)

(assert start!4454)

(declare-datatypes () ((A!1433 (B!418 (size!353 (_ BitVec 32))))))

(declare-fun b!34824 () A!1433)

(declare-fun x$1!539 () (_ BitVec 32))

(assert (=> start!4454 (and (= b!34824 (B!418 #b00000000000000000000000000000011)) (= x$1!539 (size!353 b!34824)) (not (= x$1!539 #b00000000000000000000000000000011)))))

(assert (=> start!4454 true))

(push 1)

(check-sat)

(pop 1)


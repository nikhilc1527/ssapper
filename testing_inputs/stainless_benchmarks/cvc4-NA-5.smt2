; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!36 () Bool)

(assert start!36)

(declare-datatypes () ((A!409 (Cons!36 (head!197 Int) (tail!209 A!409)) (Nil!37 (i!198 Int)))))

(declare-fun thiss!22 () A!409)

(declare-fun thiss!23 () A!409)

(assert (=> start!36 (and (is-Nil!37 thiss!22) (= thiss!23 thiss!22) (not (is-Nil!37 thiss!23)))))

(declare-fun e!133 () Bool)

(declare-fun inv!55 (A!409) Bool)

(assert (=> start!36 (and (inv!55 thiss!22) e!133)))

(declare-fun e!134 () Bool)

(assert (=> start!36 (and (inv!55 thiss!23) e!134)))

(declare-fun b!290 () Bool)

(declare-fun tp!30 () Bool)

(assert (=> b!290 (= e!133 (and (inv!55 (tail!209 thiss!22)) tp!30))))

(declare-fun b!291 () Bool)

(declare-fun tp!31 () Bool)

(assert (=> b!291 (= e!134 (and (inv!55 (tail!209 thiss!23)) tp!31))))

(assert (= (and start!36 (is-Cons!36 thiss!22)) b!290))

(assert (= (and start!36 (is-Cons!36 thiss!23)) b!291))

(declare-fun m!153 () Bool)

(assert (=> start!36 m!153))

(declare-fun m!155 () Bool)

(assert (=> start!36 m!155))

(declare-fun m!157 () Bool)

(assert (=> b!290 m!157))

(declare-fun m!159 () Bool)

(assert (=> b!291 m!159))

(push 1)

(assert (not b!290))

(assert (not b!291))

(assert (not start!36))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


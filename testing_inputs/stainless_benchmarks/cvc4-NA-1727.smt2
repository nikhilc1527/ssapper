; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11886 () Bool)

(assert start!11886)

(declare-fun res!47255 () Bool)

(declare-fun e!49238 () Bool)

(assert (=> start!11886 (=> (not res!47255) (not e!49238))))

(declare-datatypes () ((List!761 (Cons!713 (head!1111 (_ BitVec 32)) (tail!1107 List!761)) (Nil!715))))

(declare-fun x!31608 () List!761)

(declare-fun res!47242 () List!761)

(assert (=> start!11886 (= res!47255 (and (not (is-Cons!713 x!31608)) (= res!47242 Nil!715)))))

(assert (=> start!11886 e!49238))

(assert (=> start!11886 true))

(declare-fun b!90232 () Bool)

(declare-fun isEmpty!5 (List!761) Bool)

(assert (=> b!90232 (= e!49238 (not (isEmpty!5 res!47242)))))

(assert (=> b!90232 (is-Nil!715 res!47242)))

(assert (= (and start!11886 res!47255) b!90232))

(declare-fun m!86044 () Bool)

(assert (=> b!90232 m!86044))

(push 1)

(assert (not b!90232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59469 () Bool)

(assert (=> d!59469 (= (isEmpty!5 res!47242) (is-Nil!715 res!47242))))

(assert (=> b!90232 d!59469))

(push 1)

(check-sat)

(pop 1)


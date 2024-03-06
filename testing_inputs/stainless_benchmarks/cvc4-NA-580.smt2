; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4320 () Bool)

(assert start!4320)

(declare-fun res!15803 () Bool)

(declare-fun e!17430 () Bool)

(assert (=> start!4320 (=> (not res!15803) (not e!17430))))

(declare-datatypes () ((List!382 (Cons!375 (h!309 Int) (t!4604 List!382)) (Nil!376))))

(declare-fun l!939 () List!382)

(assert (=> start!4320 (= res!15803 (not (is-Nil!376 l!939)))))

(assert (=> start!4320 e!17430))

(assert (=> start!4320 true))

(declare-fun b!34533 () Bool)

(declare-datatypes () ((tuple2!120 (tuple2!121 (_1!60 Int) (_2!60 List!382)))))

(declare-datatypes () ((Option!160 (Some!157 (v!533 tuple2!120)) (None!157))))

(declare-fun isEmpty!353 (Option!160) Bool)

(declare-fun unapply!4 (List!382) Option!160)

(assert (=> b!34533 (= e!17430 (isEmpty!353 (unapply!4 l!939)))))

(assert (= (and start!4320 res!15803) b!34533))

(declare-fun m!37141 () Bool)

(assert (=> b!34533 m!37141))

(assert (=> b!34533 m!37141))

(declare-fun m!37143 () Bool)

(assert (=> b!34533 m!37143))

(push 1)

(assert (not b!34533))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18034 () Bool)

(assert (=> d!18034 (= (isEmpty!353 (unapply!4 l!939)) (not (is-Some!157 (unapply!4 l!939))))))

(assert (=> b!34533 d!18034))

(declare-fun d!18036 () Bool)

(assert (=> d!18036 (= (unapply!4 l!939) (ite (is-Nil!376 l!939) None!157 (Some!157 (tuple2!121 (h!309 l!939) (t!4604 l!939)))))))

(assert (=> b!34533 d!18036))

(push 1)

(check-sat)

(pop 1)


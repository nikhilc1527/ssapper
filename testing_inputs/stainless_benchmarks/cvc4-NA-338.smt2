; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2568 () Bool)

(assert start!2568)

(declare-fun res!4725 () Bool)

(declare-fun e!6903 () Bool)

(assert (=> start!2568 (=> (not res!4725) (not e!6903))))

(declare-datatypes () ((A!936 (A!937 (val!19 Int)))))

(declare-datatypes () ((List!295 (Nil!293) (Cons!292 (head!510 A!936) (tail!522 List!295)))))

(declare-fun thiss!1069 () List!295)

(declare-fun isEmpty!223 (List!295) Bool)

(assert (=> start!2568 (= res!4725 (not (isEmpty!223 thiss!1069)))))

(assert (=> start!2568 e!6903))

(declare-fun e!6904 () Bool)

(assert (=> start!2568 e!6904))

(declare-fun b!12599 () Bool)

(assert (=> b!12599 (= e!6903 (and (or (not (is-Cons!292 thiss!1069)) (not (is-Nil!293 (tail!522 thiss!1069)))) (not (is-Cons!292 thiss!1069))))))

(declare-fun b!12600 () Bool)

(declare-fun tp_is_empty!37 () Bool)

(declare-fun tp!3194 () Bool)

(assert (=> b!12600 (= e!6904 (and tp_is_empty!37 tp!3194))))

(assert (= (and start!2568 res!4725) b!12599))

(assert (= (and start!2568 (is-Cons!292 thiss!1069)) b!12600))

(declare-fun m!15657 () Bool)

(assert (=> start!2568 m!15657))

(push 1)

(assert (not start!2568))

(assert (not b!12600))

(assert tp_is_empty!37)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9841 () Bool)

(assert (=> d!9841 (= (isEmpty!223 thiss!1069) (is-Nil!293 thiss!1069))))

(assert (=> start!2568 d!9841))

(declare-fun b!12605 () Bool)

(declare-fun e!6907 () Bool)

(declare-fun tp!3197 () Bool)

(assert (=> b!12605 (= e!6907 (and tp_is_empty!37 tp!3197))))

(assert (=> b!12600 (= tp!3194 e!6907)))

(assert (= (and b!12600 (is-Cons!292 (tail!522 thiss!1069))) b!12605))

(push 1)

(assert (not b!12605))

(assert tp_is_empty!37)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


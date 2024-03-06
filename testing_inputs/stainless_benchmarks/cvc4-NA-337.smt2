; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2564 () Bool)

(assert start!2564)

(declare-fun b_free!2015 () Bool)

(declare-fun b_next!4713 () Bool)

(assert (=> start!2564 (= b_free!2015 (not b_next!4713))))

(declare-fun tp!3185 () Bool)

(declare-fun b_and!7061 () Bool)

(assert (=> start!2564 (= tp!3185 b_and!7061)))

(declare-fun b_free!2017 () Bool)

(declare-fun b_next!4715 () Bool)

(assert (=> start!2564 (= b_free!2017 (not b_next!4715))))

(declare-fun tp!3186 () Bool)

(declare-fun b_and!7063 () Bool)

(assert (=> start!2564 (= tp!3186 b_and!7063)))

(declare-fun b!12585 () Bool)

(declare-fun res!4721 () Bool)

(declare-fun e!6892 () Bool)

(assert (=> b!12585 (=> (not res!4721) (not e!6892))))

(declare-fun f!673 () Int)

(declare-fun f!674 () Int)

(declare-datatypes () ((A!934 (A!935 (val!18 Int)))))

(declare-datatypes () ((List!294 (Nil!292) (Cons!291 (head!509 A!934) (tail!521 List!294)))))

(declare-fun thiss!1072 () List!294)

(declare-fun thiss!1069 () List!294)

(assert (=> b!12585 (= res!4721 (and (or (not (is-Cons!291 thiss!1069)) (not (is-Nil!292 (tail!521 thiss!1069)))) (= thiss!1072 (tail!521 thiss!1069)) (= f!674 f!673)))))

(declare-fun b!12587 () Bool)

(declare-fun e!6894 () Bool)

(declare-fun tp_is_empty!35 () Bool)

(declare-fun tp!3187 () Bool)

(assert (=> b!12587 (= e!6894 (and tp_is_empty!35 tp!3187))))

(declare-fun b!12586 () Bool)

(declare-fun isEmpty!222 (List!294) Bool)

(assert (=> b!12586 (= e!6892 (isEmpty!222 thiss!1072))))

(declare-fun res!4722 () Bool)

(assert (=> start!2564 (=> (not res!4722) (not e!6892))))

(assert (=> start!2564 (= res!4722 (not (isEmpty!222 thiss!1069)))))

(assert (=> start!2564 e!6892))

(assert (=> start!2564 e!6894))

(declare-fun e!6893 () Bool)

(assert (=> start!2564 e!6893))

(assert (=> start!2564 tp!3185))

(assert (=> start!2564 tp!3186))

(declare-fun b!12588 () Bool)

(declare-fun tp!3184 () Bool)

(assert (=> b!12588 (= e!6893 (and tp_is_empty!35 tp!3184))))

(assert (= (and start!2564 res!4722) b!12585))

(assert (= (and b!12585 res!4721) b!12586))

(assert (= (and start!2564 (is-Cons!291 thiss!1069)) b!12587))

(assert (= (and start!2564 (is-Cons!291 thiss!1072)) b!12588))

(declare-fun m!15653 () Bool)

(assert (=> b!12586 m!15653))

(declare-fun m!15655 () Bool)

(assert (=> start!2564 m!15655))

(push 1)

(assert b_and!7061)

(assert b_and!7063)

(assert tp_is_empty!35)

(assert (not b_next!4713))

(assert (not start!2564))

(assert (not b!12586))

(assert (not b!12587))

(assert (not b_next!4715))

(assert (not b!12588))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7061)

(assert b_and!7063)

(assert (not b_next!4713))

(assert (not b_next!4715))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9837 () Bool)

(assert (=> d!9837 (= (isEmpty!222 thiss!1069) (is-Nil!292 thiss!1069))))

(assert (=> start!2564 d!9837))

(declare-fun d!9839 () Bool)

(assert (=> d!9839 (= (isEmpty!222 thiss!1072) (is-Nil!292 thiss!1072))))

(assert (=> b!12586 d!9839))

(declare-fun b!12593 () Bool)

(declare-fun e!6897 () Bool)

(declare-fun tp!3190 () Bool)

(assert (=> b!12593 (= e!6897 (and tp_is_empty!35 tp!3190))))

(assert (=> b!12588 (= tp!3184 e!6897)))

(assert (= (and b!12588 (is-Cons!291 (tail!521 thiss!1072))) b!12593))

(declare-fun b!12594 () Bool)

(declare-fun e!6898 () Bool)

(declare-fun tp!3191 () Bool)

(assert (=> b!12594 (= e!6898 (and tp_is_empty!35 tp!3191))))

(assert (=> b!12587 (= tp!3187 e!6898)))

(assert (= (and b!12587 (is-Cons!291 (tail!521 thiss!1069))) b!12594))

(push 1)

(assert b_and!7061)

(assert b_and!7063)

(assert tp_is_empty!35)

(assert (not b_next!4713))

(assert (not b!12593))

(assert (not b_next!4715))

(assert (not b!12594))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7061)

(assert b_and!7063)

(assert (not b_next!4713))

(assert (not b_next!4715))

(check-sat)

(pop 1)


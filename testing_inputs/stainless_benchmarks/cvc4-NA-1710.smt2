; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11834 () Bool)

(assert start!11834)

(declare-fun b_free!7589 () Bool)

(declare-fun b_next!39957 () Bool)

(assert (=> start!11834 (= b_free!7589 (not b_next!39957))))

(declare-fun tp!17649 () Bool)

(declare-fun b_and!60611 () Bool)

(assert (=> start!11834 (= tp!17649 b_and!60611)))

(declare-fun b_free!7591 () Bool)

(declare-fun b_next!39959 () Bool)

(assert (=> start!11834 (= b_free!7591 (not b_next!39959))))

(declare-fun tp!17648 () Bool)

(declare-fun b_and!60613 () Bool)

(assert (=> start!11834 (= tp!17648 b_and!60613)))

(declare-fun b!90030 () Bool)

(declare-fun b_free!7593 () Bool)

(declare-fun b_next!39961 () Bool)

(assert (=> b!90030 (= b_free!7593 (not b_next!39961))))

(declare-fun tp!17645 () Bool)

(declare-fun b_and!60615 () Bool)

(assert (=> b!90030 (= tp!17645 b_and!60615)))

(declare-fun b!90031 () Bool)

(declare-fun b_free!7595 () Bool)

(declare-fun b_next!39963 () Bool)

(assert (=> b!90031 (= b_free!7595 (not b_next!39963))))

(declare-fun tp!17647 () Bool)

(declare-fun b_and!60617 () Bool)

(assert (=> b!90031 (= tp!17647 b_and!60617)))

(declare-fun b!90032 () Bool)

(declare-fun b_free!7597 () Bool)

(declare-fun b_next!39965 () Bool)

(assert (=> b!90032 (= b_free!7597 (not b_next!39965))))

(declare-fun tp!17646 () Bool)

(declare-fun b_and!60619 () Bool)

(assert (=> b!90032 (= tp!17646 b_and!60619)))

(assert (=> start!11834 false))

(assert (=> start!11834 true))

(assert (=> start!11834 tp!17649))

(declare-fun e!49130 () Bool)

(assert (=> start!11834 e!49130))

(declare-fun tp_is_empty!435 () Bool)

(assert (=> start!11834 tp_is_empty!435))

(assert (=> start!11834 tp!17648))

(declare-fun e!49131 () Bool)

(assert (=> start!11834 e!49131))

(declare-fun e!49132 () Bool)

(assert (=> start!11834 e!49132))

(declare-fun tp_is_empty!433 () Bool)

(assert (=> b!90030 (= e!49130 (and tp_is_empty!433 tp!17645))))

(assert (=> b!90031 (= e!49131 (and tp_is_empty!433 tp!17647))))

(declare-fun tp_is_empty!437 () Bool)

(assert (=> b!90032 (= e!49132 (and tp_is_empty!437 tp!17646))))

(assert (= start!11834 b!90030))

(assert (= start!11834 b!90031))

(assert (= start!11834 b!90032))

(push 1)

(assert (not b_next!39961))

(assert tp_is_empty!433)

(assert b_and!60611)

(assert b_and!60617)

(assert tp_is_empty!435)

(assert (not b_next!39957))

(assert tp_is_empty!437)

(assert (not b_next!39965))

(assert b_and!60613)

(assert b_and!60619)

(assert (not b_next!39963))

(assert b_and!60615)

(assert (not b_next!39959))

(check-sat)

(pop 1)


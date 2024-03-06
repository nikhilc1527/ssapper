; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11830 () Bool)

(assert start!11830)

(declare-fun b_free!7573 () Bool)

(declare-fun b_next!39941 () Bool)

(assert (=> start!11830 (= b_free!7573 (not b_next!39941))))

(declare-fun tp!17620 () Bool)

(declare-fun b_and!60591 () Bool)

(assert (=> start!11830 (= tp!17620 b_and!60591)))

(declare-fun b_free!7575 () Bool)

(declare-fun b_next!39943 () Bool)

(assert (=> start!11830 (= b_free!7575 (not b_next!39943))))

(declare-fun tp!17621 () Bool)

(declare-fun b_and!60593 () Bool)

(assert (=> start!11830 (= tp!17621 b_and!60593)))

(declare-fun b!90008 () Bool)

(declare-fun b_free!7577 () Bool)

(declare-fun b_next!39945 () Bool)

(assert (=> b!90008 (= b_free!7577 (not b_next!39945))))

(declare-fun tp!17622 () Bool)

(declare-fun b_and!60595 () Bool)

(assert (=> b!90008 (= tp!17622 b_and!60595)))

(declare-fun b!90009 () Bool)

(declare-fun b_free!7579 () Bool)

(declare-fun b_next!39947 () Bool)

(assert (=> b!90009 (= b_free!7579 (not b_next!39947))))

(declare-fun tp!17619 () Bool)

(declare-fun b_and!60597 () Bool)

(assert (=> b!90009 (= tp!17619 b_and!60597)))

(assert (=> start!11830 false))

(assert (=> start!11830 true))

(assert (=> start!11830 tp!17620))

(declare-fun tp_is_empty!421 () Bool)

(assert (=> start!11830 tp_is_empty!421))

(assert (=> start!11830 tp!17621))

(declare-fun e!49114 () Bool)

(assert (=> start!11830 e!49114))

(declare-fun e!49113 () Bool)

(assert (=> start!11830 e!49113))

(declare-fun tp_is_empty!423 () Bool)

(assert (=> b!90008 (= e!49114 (and tp_is_empty!423 tp!17622))))

(declare-fun tp_is_empty!425 () Bool)

(assert (=> b!90009 (= e!49113 (and tp_is_empty!425 tp!17619))))

(assert (= start!11830 b!90008))

(assert (= start!11830 b!90009))

(push 1)

(assert (not b_next!39945))

(assert b_and!60591)

(assert (not b_next!39943))

(assert tp_is_empty!425)

(assert (not b_next!39947))

(assert (not b_next!39941))

(assert b_and!60595)

(assert b_and!60597)

(assert b_and!60593)

(assert tp_is_empty!423)

(assert tp_is_empty!421)

(check-sat)

(pop 1)


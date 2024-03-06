; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7272 () Bool)

(assert start!7272)

(declare-fun res!24039 () Bool)

(declare-fun e!27487 () Bool)

(assert (=> start!7272 (=> (not res!24039) (not e!27487))))

(declare-datatypes () ((N!6 (Z!5) (S!18 (n!1554 N!6)))))

(declare-datatypes () ((Object!208 ($anon!50) (NatExt!4 (__x!72 Int)) ($anon!51) (N!7 (value!3391 N!6)) (Integer!202 (value!3392 Int)) (Open!208 (value!3393 Int)))))

(declare-fun thiss!7252 () Object!208)

(declare-fun is$anon!1 (Object!208) Bool)

(assert (=> start!7272 (= res!24039 (is$anon!1 thiss!7252))))

(assert (=> start!7272 e!27487))

(declare-fun lt!9249 () Object!208)

(assert (=> start!7272 (= lt!9249 thiss!7252)))

(assert (=> start!7272 (is$anon!1 lt!9249)))

(assert (=> start!7272 true))

(declare-fun b!52952 () Bool)

(declare-fun v!1884 () N!6)

(assert (=> b!52952 (= e!27487 (and (= v!1884 (S!18 Z!5)) (not (is-S!18 v!1884))))))

(assert (= (and start!7272 res!24039) b!52952))

(declare-fun m!56963 () Bool)

(assert (=> start!7272 m!56963))

(declare-fun m!56965 () Bool)

(assert (=> start!7272 m!56965))

(push 1)

(assert (not start!7272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


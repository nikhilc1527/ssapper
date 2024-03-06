; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7276 () Bool)

(assert start!7276)

(declare-fun res!24045 () Bool)

(declare-fun e!27493 () Bool)

(assert (=> start!7276 (=> (not res!24045) (not e!27493))))

(declare-datatypes () ((N!10 (Z!7) (S!20 (n!1556 N!10)))))

(declare-datatypes () ((Object!210 ($anon!54) (NatExt!6 (__x!74 Int)) ($anon!55) (N!11 (value!3397 N!10)) (Integer!204 (value!3398 Int)) (Open!210 (value!3399 Int)))))

(declare-fun thiss!7235 () Object!210)

(declare-fun is$anon!1 (Object!210) Bool)

(assert (=> start!7276 (= res!24045 (is$anon!1 thiss!7235))))

(assert (=> start!7276 e!27493))

(declare-fun lt!9255 () Object!210)

(assert (=> start!7276 (= lt!9255 thiss!7235)))

(assert (=> start!7276 (is$anon!1 lt!9255)))

(assert (=> start!7276 true))

(declare-fun b!52958 () Bool)

(declare-fun inlined!6250 () N!10)

(declare-fun v!1881 () N!10)

(assert (=> b!52958 (= e!27493 (and (= inlined!6250 Z!7) (= v!1881 inlined!6250) (not (is-Z!7 v!1881))))))

(assert (= (and start!7276 res!24045) b!52958))

(declare-fun m!56971 () Bool)

(assert (=> start!7276 m!56971))

(declare-fun m!56973 () Bool)

(assert (=> start!7276 m!56973))

(push 1)

(assert (not start!7276))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


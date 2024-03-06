; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7274 () Bool)

(assert start!7274)

(declare-fun res!24042 () Bool)

(declare-fun e!27490 () Bool)

(assert (=> start!7274 (=> (not res!24042) (not e!27490))))

(declare-datatypes () ((N!8 (Z!6) (S!19 (n!1555 N!8)))))

(declare-datatypes () ((Object!209 ($anon!52) (NatExt!5 (__x!73 Int)) ($anon!53) (N!9 (value!3394 N!8)) (Integer!203 (value!3395 Int)) (Open!209 (value!3396 Int)))))

(declare-fun thiss!7256 () Object!209)

(declare-fun is$anon!1 (Object!209) Bool)

(assert (=> start!7274 (= res!24042 (is$anon!1 thiss!7256))))

(assert (=> start!7274 e!27490))

(declare-fun lt!9252 () Object!209)

(assert (=> start!7274 (= lt!9252 thiss!7256)))

(assert (=> start!7274 (is$anon!1 lt!9252)))

(assert (=> start!7274 true))

(declare-fun b!52955 () Bool)

(declare-fun v!1887 () N!8)

(assert (=> b!52955 (= e!27490 (and (= v!1887 (S!19 (S!19 Z!6))) (not (is-S!19 v!1887))))))

(assert (= (and start!7274 res!24042) b!52955))

(declare-fun m!56967 () Bool)

(assert (=> start!7274 m!56967))

(declare-fun m!56969 () Bool)

(assert (=> start!7274 m!56969))

(push 1)

(assert (not start!7274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


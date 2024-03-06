; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7394 () Bool)

(assert start!7394)

(declare-fun b!53245 () Bool)

(declare-fun e!27740 () Bool)

(declare-fun tp_is_empty!289 () Bool)

(declare-fun tp!15118 () Bool)

(assert (=> b!53245 (= e!27740 (and tp_is_empty!289 tp!15118))))

(declare-fun b!53246 () Bool)

(declare-fun e!27737 () Bool)

(declare-fun tp!15116 () Bool)

(assert (=> b!53246 (= e!27737 (and tp_is_empty!289 tp!15116))))

(declare-fun b!53247 () Bool)

(declare-fun res!24231 () Bool)

(declare-fun e!27741 () Bool)

(assert (=> b!53247 (=> (not res!24231) (not e!27741))))

(declare-fun i!421 () Int)

(declare-datatypes () ((T!3221 (T!3222 (val!145 Int)))))

(declare-datatypes () ((List!434 (Cons!414 (h!633 T!3221) (t!46826 List!434)) (Nil!415))))

(declare-fun l1!274 () List!434)

(declare-fun size!434 (List!434) Int)

(assert (=> b!53247 (= res!24231 (< i!421 (size!434 l1!274)))))

(declare-fun b!53248 () Bool)

(declare-fun res!24229 () Bool)

(assert (=> b!53248 (=> (not res!24229) (not e!27741))))

(declare-fun y!1621 () T!3221)

(declare-fun y!1616 () T!3221)

(declare-fun i!426 () Int)

(declare-fun l!1074 () List!434)

(assert (=> b!53248 (= res!24229 (and (= l!1074 l1!274) (= i!426 i!421) (= y!1621 y!1616)))))

(declare-fun b!53249 () Bool)

(declare-fun res!24233 () Bool)

(assert (=> b!53249 (=> (not res!24233) (not e!27741))))

(declare-fun e!27742 () Bool)

(assert (=> b!53249 (= res!24233 e!27742)))

(declare-fun res!24230 () Bool)

(assert (=> b!53249 (=> res!24230 e!27742)))

(assert (=> b!53249 (= res!24230 (or (is-Nil!415 l1!274) (= i!421 0)))))

(declare-fun b!53250 () Bool)

(declare-fun res!24228 () Bool)

(assert (=> b!53250 (=> (not res!24228) (not e!27741))))

(declare-fun l2!268 () List!434)

(assert (=> b!53250 (= res!24228 (<= i!421 (+ (size!434 l1!274) (size!434 l2!268))))))

(declare-fun b!53251 () Bool)

(declare-fun e!27738 () Bool)

(assert (=> b!53251 (= e!27741 e!27738)))

(declare-fun res!24232 () Bool)

(assert (=> b!53251 (=> res!24232 e!27738)))

(assert (=> b!53251 (= res!24232 (> 0 i!426))))

(declare-fun b!53252 () Bool)

(declare-fun e!27739 () Bool)

(declare-fun tp!15117 () Bool)

(assert (=> b!53252 (= e!27739 (and tp_is_empty!289 tp!15117))))

(declare-fun b!53253 () Bool)

(declare-fun appendInsertIndex!20 (List!434 List!434 Int T!3221) Bool)

(assert (=> b!53253 (= e!27742 (appendInsertIndex!20 (t!46826 l1!274) l2!268 (- i!421 1) y!1616))))

(declare-fun res!24234 () Bool)

(assert (=> start!7394 (=> (not res!24234) (not e!27741))))

(assert (=> start!7394 (= res!24234 (<= 0 i!421))))

(assert (=> start!7394 e!27741))

(assert (=> start!7394 tp_is_empty!289))

(assert (=> start!7394 true))

(assert (=> start!7394 e!27737))

(assert (=> start!7394 e!27740))

(assert (=> start!7394 e!27739))

(declare-fun b!53254 () Bool)

(assert (=> b!53254 (= e!27738 (> i!426 (size!434 l!1074)))))

(assert (= (and start!7394 res!24234) b!53250))

(assert (= (and b!53250 res!24228) b!53249))

(assert (= (and b!53249 (not res!24230)) b!53253))

(assert (= (and b!53249 res!24233) b!53247))

(assert (= (and b!53247 res!24231) b!53248))

(assert (= (and b!53248 res!24229) b!53251))

(assert (= (and b!53251 (not res!24232)) b!53254))

(assert (= (and start!7394 (is-Cons!414 l!1074)) b!53246))

(assert (= (and start!7394 (is-Cons!414 l2!268)) b!53245))

(assert (= (and start!7394 (is-Cons!414 l1!274)) b!53252))

(declare-fun m!57198 () Bool)

(assert (=> b!53247 m!57198))

(assert (=> b!53250 m!57198))

(declare-fun m!57200 () Bool)

(assert (=> b!53250 m!57200))

(declare-fun m!57202 () Bool)

(assert (=> b!53253 m!57202))

(declare-fun m!57204 () Bool)

(assert (=> b!53254 m!57204))

(push 1)

(assert (not b!53253))

(assert (not b!53250))

(assert (not b!53252))

(assert (not b!53245))

(assert (not b!53246))

(assert (not b!53254))

(assert (not b!53247))

(assert tp_is_empty!289)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


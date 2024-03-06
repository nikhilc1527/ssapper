; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7396 () Bool)

(assert start!7396)

(declare-fun b!53281 () Bool)

(declare-fun e!27761 () Bool)

(declare-fun tp_is_empty!291 () Bool)

(declare-fun tp!15129 () Bool)

(assert (=> b!53281 (= e!27761 (and tp_is_empty!291 tp!15129))))

(declare-fun b!53282 () Bool)

(declare-fun res!24257 () Bool)

(declare-fun e!27759 () Bool)

(assert (=> b!53282 (=> (not res!24257) (not e!27759))))

(declare-datatypes () ((T!3223 (T!3224 (val!146 Int)))))

(declare-datatypes () ((List!435 (Cons!415 (h!634 T!3223) (t!46827 List!435)) (Nil!416))))

(declare-fun l2!268 () List!435)

(declare-fun thiss!7501 () List!435)

(declare-fun l1!274 () List!435)

(declare-fun l!1076 () List!435)

(assert (=> b!53282 (= res!24257 (and (= thiss!7501 l1!274) (= l!1076 l2!268)))))

(declare-fun b!53283 () Bool)

(declare-fun e!27763 () Bool)

(assert (=> b!53283 (= e!27759 e!27763)))

(declare-fun res!24258 () Bool)

(assert (=> b!53283 (=> res!24258 e!27763)))

(declare-fun i!428 () Int)

(assert (=> b!53283 (= res!24258 (> 0 i!428))))

(declare-fun b!53284 () Bool)

(declare-fun size!435 (List!435) Int)

(assert (=> b!53284 (= e!27763 (> i!428 (size!435 l!1076)))))

(declare-fun b!53285 () Bool)

(declare-fun res!24253 () Bool)

(assert (=> b!53285 (=> (not res!24253) (not e!27759))))

(declare-fun i!421 () Int)

(assert (=> b!53285 (= res!24253 (>= i!421 (size!435 l1!274)))))

(declare-fun b!53286 () Bool)

(declare-fun res!24261 () Bool)

(assert (=> b!53286 (=> (not res!24261) (not e!27759))))

(declare-fun e!27760 () Bool)

(assert (=> b!53286 (= res!24261 e!27760)))

(declare-fun res!24259 () Bool)

(assert (=> b!53286 (=> res!24259 e!27760)))

(assert (=> b!53286 (= res!24259 (or (is-Nil!416 l1!274) (= i!421 0)))))

(declare-fun y!1616 () T!3223)

(declare-fun b!53287 () Bool)

(declare-fun appendInsertIndex!21 (List!435 List!435 Int T!3223) Bool)

(assert (=> b!53287 (= e!27760 (appendInsertIndex!21 (t!46827 l1!274) l2!268 (- i!421 1) y!1616))))

(declare-fun b!53288 () Bool)

(declare-fun e!27762 () Bool)

(declare-fun tp!15127 () Bool)

(assert (=> b!53288 (= e!27762 (and tp_is_empty!291 tp!15127))))

(declare-fun b!53289 () Bool)

(declare-fun e!27758 () Bool)

(declare-fun tp!15130 () Bool)

(assert (=> b!53289 (= e!27758 (and tp_is_empty!291 tp!15130))))

(declare-fun b!53290 () Bool)

(declare-fun e!27757 () Bool)

(declare-fun tp!15128 () Bool)

(assert (=> b!53290 (= e!27757 (and tp_is_empty!291 tp!15128))))

(declare-fun b!53291 () Bool)

(declare-fun res!24255 () Bool)

(assert (=> b!53291 (=> (not res!24255) (not e!27759))))

(declare-fun y!1623 () T!3223)

(assert (=> b!53291 (= res!24255 (= y!1623 y!1616))))

(declare-fun b!53292 () Bool)

(declare-fun res!24260 () Bool)

(assert (=> b!53292 (=> (not res!24260) (not e!27759))))

(assert (=> b!53292 (= res!24260 (= i!428 (- i!421 (size!435 l1!274))))))

(declare-fun b!53293 () Bool)

(declare-fun res!24256 () Bool)

(assert (=> b!53293 (=> (not res!24256) (not e!27759))))

(assert (=> b!53293 (= res!24256 (<= i!421 (+ (size!435 l1!274) (size!435 l2!268))))))

(declare-fun res!24254 () Bool)

(assert (=> start!7396 (=> (not res!24254) (not e!27759))))

(assert (=> start!7396 (= res!24254 (<= 0 i!421))))

(assert (=> start!7396 e!27759))

(assert (=> start!7396 tp_is_empty!291))

(assert (=> start!7396 true))

(assert (=> start!7396 e!27762))

(assert (=> start!7396 e!27758))

(assert (=> start!7396 e!27757))

(assert (=> start!7396 e!27761))

(assert (= (and start!7396 res!24254) b!53293))

(assert (= (and b!53293 res!24256) b!53286))

(assert (= (and b!53286 (not res!24259)) b!53287))

(assert (= (and b!53286 res!24261) b!53285))

(assert (= (and b!53285 res!24253) b!53282))

(assert (= (and b!53282 res!24257) b!53292))

(assert (= (and b!53292 res!24260) b!53291))

(assert (= (and b!53291 res!24255) b!53283))

(assert (= (and b!53283 (not res!24258)) b!53284))

(assert (= (and start!7396 (is-Cons!415 l2!268)) b!53288))

(assert (= (and start!7396 (is-Cons!415 thiss!7501)) b!53289))

(assert (= (and start!7396 (is-Cons!415 l1!274)) b!53290))

(assert (= (and start!7396 (is-Cons!415 l!1076)) b!53281))

(declare-fun m!57206 () Bool)

(assert (=> b!53293 m!57206))

(declare-fun m!57208 () Bool)

(assert (=> b!53293 m!57208))

(assert (=> b!53292 m!57206))

(declare-fun m!57210 () Bool)

(assert (=> b!53284 m!57210))

(assert (=> b!53285 m!57206))

(declare-fun m!57212 () Bool)

(assert (=> b!53287 m!57212))

(push 1)

(assert (not b!53285))

(assert (not b!53289))

(assert (not b!53281))

(assert (not b!53288))

(assert (not b!53292))

(assert (not b!53290))

(assert (not b!53293))

(assert (not b!53284))

(assert tp_is_empty!291)

(assert (not b!53287))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


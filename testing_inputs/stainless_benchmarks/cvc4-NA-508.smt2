; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3538 () Bool)

(assert start!3538)

(declare-fun b!22381 () Bool)

(declare-fun e!11704 () Bool)

(declare-fun tp_is_empty!115 () Bool)

(declare-fun tp!4936 () Bool)

(assert (=> b!22381 (= e!11704 (and tp_is_empty!115 tp!4936))))

(declare-fun b!22382 () Bool)

(declare-fun e!11706 () Bool)

(declare-fun e!11707 () Bool)

(assert (=> b!22382 (= e!11706 e!11707)))

(declare-fun res!9830 () Bool)

(assert (=> b!22382 (=> res!9830 e!11707)))

(declare-fun i!294 () Int)

(assert (=> b!22382 (= res!9830 (> 0 i!294))))

(declare-fun b!22383 () Bool)

(declare-fun res!9831 () Bool)

(assert (=> b!22383 (=> (not res!9831) (not e!11706))))

(declare-datatypes () ((T!1771 (T!1772 (val!58 Int)))))

(declare-datatypes () ((List!344 (Cons!338 (h!252 T!1771) (t!4339 List!344)) (Nil!339))))

(declare-fun l!727 () List!344)

(declare-fun l1!169 () List!344)

(declare-fun i!289 () Int)

(declare-fun y!816 () T!1771)

(declare-fun y!811 () T!1771)

(assert (=> b!22383 (= res!9831 (and (= l!727 l1!169) (= i!294 i!289) (= y!816 y!811)))))

(declare-fun b!22384 () Bool)

(declare-fun res!9828 () Bool)

(assert (=> b!22384 (=> (not res!9828) (not e!11706))))

(declare-fun e!11709 () Bool)

(assert (=> b!22384 (= res!9828 e!11709)))

(declare-fun res!9829 () Bool)

(assert (=> b!22384 (=> res!9829 e!11709)))

(assert (=> b!22384 (= res!9829 (or (is-Nil!339 l1!169) (= i!289 0)))))

(declare-fun res!9827 () Bool)

(assert (=> start!3538 (=> (not res!9827) (not e!11706))))

(assert (=> start!3538 (= res!9827 (<= 0 i!289))))

(assert (=> start!3538 e!11706))

(assert (=> start!3538 e!11704))

(declare-fun e!11705 () Bool)

(assert (=> start!3538 e!11705))

(assert (=> start!3538 true))

(assert (=> start!3538 tp_is_empty!115))

(declare-fun e!11708 () Bool)

(assert (=> start!3538 e!11708))

(declare-fun b!22385 () Bool)

(declare-fun size!236 (List!344) Int)

(assert (=> b!22385 (= e!11707 (> i!294 (size!236 l!727)))))

(declare-fun b!22386 () Bool)

(declare-fun res!9825 () Bool)

(assert (=> b!22386 (=> (not res!9825) (not e!11706))))

(declare-fun l2!163 () List!344)

(assert (=> b!22386 (= res!9825 (<= i!289 (+ (size!236 l1!169) (size!236 l2!163))))))

(declare-fun b!22387 () Bool)

(declare-fun tp!4935 () Bool)

(assert (=> b!22387 (= e!11705 (and tp_is_empty!115 tp!4935))))

(declare-fun b!22388 () Bool)

(declare-fun res!9826 () Bool)

(assert (=> b!22388 (=> (not res!9826) (not e!11706))))

(assert (=> b!22388 (= res!9826 (< i!289 (size!236 l1!169)))))

(declare-fun b!22389 () Bool)

(declare-fun tp!4937 () Bool)

(assert (=> b!22389 (= e!11708 (and tp_is_empty!115 tp!4937))))

(declare-fun b!22390 () Bool)

(declare-fun appendInsertIndex!16 (List!344 List!344 Int T!1771) Bool)

(assert (=> b!22390 (= e!11709 (appendInsertIndex!16 (t!4339 l1!169) l2!163 (- i!289 1) y!811))))

(assert (= (and start!3538 res!9827) b!22386))

(assert (= (and b!22386 res!9825) b!22384))

(assert (= (and b!22384 (not res!9829)) b!22390))

(assert (= (and b!22384 res!9828) b!22388))

(assert (= (and b!22388 res!9826) b!22383))

(assert (= (and b!22383 res!9831) b!22382))

(assert (= (and b!22382 (not res!9830)) b!22385))

(assert (= (and start!3538 (is-Cons!338 l!727)) b!22381))

(assert (= (and start!3538 (is-Cons!338 l1!169)) b!22387))

(assert (= (and start!3538 (is-Cons!338 l2!163)) b!22389))

(declare-fun m!24407 () Bool)

(assert (=> b!22385 m!24407))

(declare-fun m!24409 () Bool)

(assert (=> b!22386 m!24409))

(declare-fun m!24411 () Bool)

(assert (=> b!22386 m!24411))

(assert (=> b!22388 m!24409))

(declare-fun m!24413 () Bool)

(assert (=> b!22390 m!24413))

(push 1)

(assert (not b!22390))

(assert (not b!22388))

(assert (not b!22389))

(assert (not b!22381))

(assert (not b!22386))

(assert (not b!22385))

(assert (not b!22387))

(assert tp_is_empty!115)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


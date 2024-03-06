; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9110 () Bool)

(assert start!9110)

(declare-fun res!29322 () Bool)

(declare-fun e!34120 () Bool)

(assert (=> start!9110 (=> (not res!29322) (not e!34120))))

(declare-datatypes () ((A!2812 (A!2813 (val!173 Int)))))

(declare-datatypes () ((Object!338 (Open!338 (value!5177 Int)))))

(declare-datatypes () ((List!577 (Cons!538 (h!782 A!2812) (t!47376 List!577)) (Nil!539))))

(declare-datatypes () ((MsgQueue!15 (MsgQueue!16 (queue!189 Object!338) (msgs!16 List!577)))))

(declare-fun thiss!8979 () MsgQueue!15)

(declare-fun thiss!8978 () MsgQueue!15)

(assert (=> start!9110 (= res!29322 (= thiss!8979 thiss!8978))))

(assert (=> start!9110 e!34120))

(declare-fun e!34119 () Bool)

(assert (=> start!9110 e!34119))

(declare-fun e!34122 () Bool)

(assert (=> start!9110 e!34122))

(declare-fun e!34121 () Bool)

(assert (=> start!9110 e!34121))

(assert (=> start!9110 true))

(declare-fun b!63043 () Bool)

(declare-fun res!29321 () Bool)

(assert (=> b!63043 (=> (not res!29321) (not e!34120))))

(declare-datatypes () ((Option!412 (Some!391 (v!2321 A!2812)) (None!392))))

(declare-fun result!46528 () Option!412)

(declare-fun _take!5 (MsgQueue!15) Option!412)

(assert (=> b!63043 (= res!29321 (= result!46528 (_take!5 thiss!8979)))))

(declare-fun b!63044 () Bool)

(declare-fun tp_is_empty!341 () Bool)

(assert (=> b!63044 (= e!34121 tp_is_empty!341)))

(declare-fun b!63045 () Bool)

(declare-fun tp!16712 () Bool)

(assert (=> b!63045 (= e!34122 tp!16712)))

(declare-fun b!63046 () Bool)

(declare-fun tp!16713 () Bool)

(assert (=> b!63046 (= e!34119 tp!16713)))

(declare-fun b!63047 () Bool)

(assert (=> b!63047 (= e!34120 false)))

(assert (= (and start!9110 res!29322) b!63043))

(assert (= (and b!63043 res!29321) b!63047))

(assert (= start!9110 b!63046))

(assert (= start!9110 b!63045))

(assert (= (and start!9110 (is-Some!391 result!46528)) b!63044))

(declare-fun m!68864 () Bool)

(assert (=> b!63043 m!68864))

(push 1)

(assert (not b!63043))

(assert (not b!63045))

(assert (not b!63046))

(assert tp_is_empty!341)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


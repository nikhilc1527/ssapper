; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9112 () Bool)

(assert start!9112)

(declare-fun b!63066 () Bool)

(declare-fun e!34137 () Bool)

(declare-fun tp!16722 () Bool)

(assert (=> b!63066 (= e!34137 tp!16722)))

(declare-fun b!63067 () Bool)

(declare-fun e!34142 () Bool)

(declare-fun tp_is_empty!343 () Bool)

(assert (=> b!63067 (= e!34142 tp_is_empty!343)))

(declare-fun b!63068 () Bool)

(declare-fun e!34141 () Bool)

(declare-fun tp!16724 () Bool)

(assert (=> b!63068 (= e!34141 tp!16724)))

(declare-fun b!63069 () Bool)

(declare-fun e!34139 () Bool)

(declare-fun tp!16725 () Bool)

(assert (=> b!63069 (= e!34139 tp!16725)))

(declare-fun b!63070 () Bool)

(declare-fun res!29330 () Bool)

(declare-fun e!34138 () Bool)

(assert (=> b!63070 (=> (not res!29330) (not e!34138))))

(declare-datatypes () ((A!2814 (A!2815 (val!174 Int)))))

(declare-datatypes () ((Object!339 (Open!339 (value!5178 Int)))))

(declare-datatypes () ((List!578 (Cons!539 (h!783 A!2814) (t!47377 List!578)) (Nil!540))))

(declare-datatypes () ((MsgQueue!17 (MsgQueue!18 (queue!190 Object!339) (msgs!17 List!578)))))

(declare-fun thiss!8979 () MsgQueue!17)

(declare-fun lambda!9159 () Int)

(declare-fun thiss!8982 () MsgQueue!17)

(declare-datatypes () ((Option!413 (Some!392 (v!2322 List!578)) (None!393))))

(declare-fun getOrElse!9 (Option!413 Int) List!578)

(declare-fun tailOption!7 (List!578) Option!413)

(assert (=> b!63070 (= res!29330 (= thiss!8982 (MsgQueue!18 (queue!190 thiss!8979) (getOrElse!9 (tailOption!7 (msgs!17 thiss!8979)) lambda!9159))))))

(declare-fun res!29331 () Bool)

(assert (=> start!9112 (=> (not res!29331) (not e!34138))))

(declare-fun thiss!8978 () MsgQueue!17)

(assert (=> start!9112 (= res!29331 (= thiss!8979 thiss!8978))))

(assert (=> start!9112 e!34138))

(assert (=> start!9112 e!34141))

(assert (=> start!9112 (and e!34142 e!34137)))

(declare-fun e!34140 () Bool)

(assert (=> start!9112 e!34140))

(declare-fun e!34143 () Bool)

(assert (=> start!9112 e!34143))

(assert (=> start!9112 true))

(assert (=> start!9112 e!34139))

(declare-fun b!63071 () Bool)

(declare-fun tp!16723 () Bool)

(assert (=> b!63071 (= e!34140 tp!16723)))

(declare-fun b!63072 () Bool)

(assert (=> b!63072 (= e!34143 tp_is_empty!343)))

(declare-fun b!63073 () Bool)

(assert (=> b!63073 (= e!34138 false)))

(declare-fun b!63074 () Bool)

(declare-fun res!29329 () Bool)

(assert (=> b!63074 (=> (not res!29329) (not e!34138))))

(declare-datatypes () ((Option!414 (Some!393 (v!2323 A!2814)) (None!394))))

(declare-fun result!46528 () Option!414)

(declare-fun _take!6 (MsgQueue!17) Option!414)

(assert (=> b!63074 (= res!29329 (= result!46528 (_take!6 thiss!8979)))))

(assert (= (and start!9112 res!29331) b!63074))

(assert (= (and b!63074 res!29329) b!63070))

(assert (= (and b!63070 res!29330) b!63073))

(assert (= start!9112 b!63068))

(declare-datatypes () ((tuple2!330 (tuple2!331 (_1!192 Option!414) (_2!192 MsgQueue!17)))))

(declare-fun res!29091 () tuple2!330)

(assert (= (and start!9112 (is-Some!393 (_1!192 res!29091))) b!63067))

(assert (= start!9112 b!63066))

(assert (= start!9112 b!63071))

(assert (= (and start!9112 (is-Some!393 result!46528)) b!63072))

(assert (= start!9112 b!63069))

(declare-fun m!68866 () Bool)

(assert (=> b!63070 m!68866))

(assert (=> b!63070 m!68866))

(declare-fun m!68868 () Bool)

(assert (=> b!63070 m!68868))

(declare-fun m!68870 () Bool)

(assert (=> b!63074 m!68870))

(push 1)

(assert (not b!63074))

(assert tp_is_empty!343)

(assert (not b!63070))

(assert (not b!63066))

(assert (not b!63068))

(assert (not b!63071))

(assert (not b!63069))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


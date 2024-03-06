; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9114 () Bool)

(assert start!9114)

(declare-fun b!63095 () Bool)

(declare-fun e!34160 () Bool)

(declare-fun tp_is_empty!345 () Bool)

(assert (=> b!63095 (= e!34160 tp_is_empty!345)))

(declare-fun b!63096 () Bool)

(declare-fun res!29340 () Bool)

(declare-fun e!34164 () Bool)

(assert (=> b!63096 (=> (not res!29340) (not e!34164))))

(declare-datatypes () ((A!2816 (A!2817 (val!175 Int)))))

(declare-datatypes () ((Object!340 (Open!340 (value!5179 Int)))))

(declare-datatypes () ((Option!415 (Some!394 (v!2324 A!2816)) (None!395))))

(declare-datatypes () ((List!579 (Cons!540 (h!784 A!2816) (t!47378 List!579)) (Nil!541))))

(declare-datatypes () ((MsgQueue!19 (MsgQueue!20 (queue!191 Object!340) (msgs!18 List!579)))))

(declare-datatypes () ((tuple2!332 (tuple2!333 (_1!193 Option!415) (_2!193 MsgQueue!19)))))

(declare-fun res!29091 () tuple2!332)

(declare-fun result!46528 () Option!415)

(declare-datatypes () ((Unit!1054 (Unit!1055))))

(declare-fun tmp!483 () Unit!1054)

(declare-fun tmp!482 () Unit!1054)

(declare-fun thiss!8982 () MsgQueue!19)

(declare-fun Unit!1056 () Unit!1054)

(declare-fun Unit!1057 () Unit!1054)

(assert (=> b!63096 (= res!29340 (and (= tmp!482 Unit!1056) (= tmp!483 Unit!1057) (= res!29091 (tuple2!333 result!46528 thiss!8982))))))

(declare-fun b!63097 () Bool)

(declare-fun res!29342 () Bool)

(assert (=> b!63097 (=> (not res!29342) (not e!34164))))

(declare-fun thiss!8979 () MsgQueue!19)

(declare-fun _take!7 (MsgQueue!19) Option!415)

(assert (=> b!63097 (= res!29342 (= result!46528 (_take!7 thiss!8979)))))

(declare-fun b!63098 () Bool)

(declare-fun e!34159 () Bool)

(declare-fun tp!16737 () Bool)

(assert (=> b!63098 (= e!34159 tp!16737)))

(declare-fun b!63099 () Bool)

(declare-fun e!34163 () Bool)

(declare-fun tp!16735 () Bool)

(assert (=> b!63099 (= e!34163 tp!16735)))

(declare-fun b!63100 () Bool)

(declare-fun e!34162 () Bool)

(declare-fun tp!16734 () Bool)

(assert (=> b!63100 (= e!34162 tp!16734)))

(declare-fun res!29341 () Bool)

(assert (=> start!9114 (=> (not res!29341) (not e!34164))))

(declare-fun thiss!8978 () MsgQueue!19)

(assert (=> start!9114 (= res!29341 (= thiss!8979 thiss!8978))))

(assert (=> start!9114 e!34164))

(assert (=> start!9114 e!34163))

(assert (=> start!9114 (and e!34160 e!34162)))

(declare-fun e!34161 () Bool)

(assert (=> start!9114 e!34161))

(declare-fun e!34158 () Bool)

(assert (=> start!9114 e!34158))

(assert (=> start!9114 true))

(assert (=> start!9114 e!34159))

(declare-fun b!63101 () Bool)

(declare-fun tp!16736 () Bool)

(assert (=> b!63101 (= e!34161 tp!16736)))

(declare-fun b!63102 () Bool)

(declare-fun res!29343 () Bool)

(assert (=> b!63102 (=> (not res!29343) (not e!34164))))

(declare-fun lambda!9162 () Int)

(declare-datatypes () ((Option!416 (Some!395 (v!2325 List!579)) (None!396))))

(declare-fun getOrElse!10 (Option!416 Int) List!579)

(declare-fun tailOption!8 (List!579) Option!416)

(assert (=> b!63102 (= res!29343 (= thiss!8982 (MsgQueue!20 (queue!191 thiss!8979) (getOrElse!10 (tailOption!8 (msgs!18 thiss!8979)) lambda!9162))))))

(declare-fun b!63103 () Bool)

(declare-fun headOption!8 (List!579) Option!415)

(assert (=> b!63103 (= e!34164 (not (= (_1!193 res!29091) (headOption!8 (msgs!18 thiss!8978)))))))

(declare-fun b!63104 () Bool)

(assert (=> b!63104 (= e!34158 tp_is_empty!345)))

(assert (= (and start!9114 res!29341) b!63097))

(assert (= (and b!63097 res!29342) b!63102))

(assert (= (and b!63102 res!29343) b!63096))

(assert (= (and b!63096 res!29340) b!63103))

(assert (= start!9114 b!63099))

(assert (= (and start!9114 (is-Some!394 (_1!193 res!29091))) b!63095))

(assert (= start!9114 b!63100))

(assert (= start!9114 b!63101))

(assert (= (and start!9114 (is-Some!394 result!46528)) b!63104))

(assert (= start!9114 b!63098))

(declare-fun m!68872 () Bool)

(assert (=> b!63097 m!68872))

(declare-fun m!68874 () Bool)

(assert (=> b!63102 m!68874))

(assert (=> b!63102 m!68874))

(declare-fun m!68876 () Bool)

(assert (=> b!63102 m!68876))

(declare-fun m!68878 () Bool)

(assert (=> b!63103 m!68878))

(push 1)

(assert (not b!63103))

(assert (not b!63102))

(assert (not b!63097))

(assert (not b!63100))

(assert (not b!63098))

(assert (not b!63101))

(assert tp_is_empty!345)

(assert (not b!63099))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53220 () Bool)

(declare-fun lt!11615 () Option!415)

(declare-fun isDefined!18 (Option!415) Bool)

(declare-fun isEmpty!555 (List!579) Bool)

(assert (=> d!53220 (not (= (isDefined!18 lt!11615) (isEmpty!555 (msgs!18 thiss!8978))))))

(assert (=> d!53220 (= lt!11615 (ite (is-Cons!540 (msgs!18 thiss!8978)) (Some!394 (h!784 (msgs!18 thiss!8978))) None!395))))

(assert (=> d!53220 (= (headOption!8 (msgs!18 thiss!8978)) lt!11615)))

(declare-fun bs!37536 () Bool)

(assert (= bs!37536 d!53220))

(declare-fun m!68880 () Bool)

(assert (=> bs!37536 m!68880))

(declare-fun m!68882 () Bool)

(assert (=> bs!37536 m!68882))

(assert (=> b!63103 d!53220))

(declare-fun d!53222 () Bool)

(declare-fun c!13691 () Bool)

(assert (=> d!53222 (= c!13691 (is-Some!395 (tailOption!8 (msgs!18 thiss!8979))))))

(declare-fun e!34167 () List!579)

(assert (=> d!53222 (= (getOrElse!10 (tailOption!8 (msgs!18 thiss!8979)) lambda!9162) e!34167)))

(declare-fun b!63109 () Bool)

(assert (=> b!63109 (= e!34167 (v!2325 (tailOption!8 (msgs!18 thiss!8979))))))

(declare-fun b!63110 () Bool)

(declare-fun dynLambda!952 (Int) List!579)

(assert (=> b!63110 (= e!34167 (dynLambda!952 lambda!9162))))

(assert (= (and d!53222 c!13691) b!63109))

(assert (= (and d!53222 (not c!13691)) b!63110))

(declare-fun b_lambda!15727 () Bool)

(assert (=> (not b_lambda!15727) (not b!63110)))

(declare-fun m!68884 () Bool)

(assert (=> b!63110 m!68884))

(assert (=> b!63102 d!53222))

(declare-fun d!53224 () Bool)

(declare-fun lt!11618 () Option!416)

(declare-fun isDefined!19 (Option!416) Bool)

(assert (=> d!53224 (not (= (isDefined!19 lt!11618) (isEmpty!555 (msgs!18 thiss!8979))))))

(assert (=> d!53224 (= lt!11618 (ite (is-Cons!540 (msgs!18 thiss!8979)) (Some!395 (t!47378 (msgs!18 thiss!8979))) None!396))))

(assert (=> d!53224 (= (tailOption!8 (msgs!18 thiss!8979)) lt!11618)))

(declare-fun bs!37537 () Bool)

(assert (= bs!37537 d!53224))

(declare-fun m!68886 () Bool)

(assert (=> bs!37537 m!68886))

(declare-fun m!68888 () Bool)

(assert (=> bs!37537 m!68888))

(assert (=> b!63102 d!53224))

(declare-fun d!53226 () Bool)

(declare-fun res!29346 () Option!415)

(assert (=> d!53226 (= res!29346 (headOption!8 (msgs!18 thiss!8979)))))

(declare-fun e!34170 () Bool)

(assert (=> d!53226 e!34170))

(assert (=> d!53226 (= (_take!7 thiss!8979) res!29346)))

(declare-fun b!63113 () Bool)

(assert (=> b!63113 (= e!34170 tp_is_empty!345)))

(assert (= (and d!53226 (is-Some!394 res!29346)) b!63113))

(declare-fun m!68890 () Bool)

(assert (=> d!53226 m!68890))

(assert (=> b!63097 d!53226))

(declare-fun b!63118 () Bool)

(declare-fun e!34173 () Bool)

(declare-fun tp!16740 () Bool)

(assert (=> b!63118 (= e!34173 (and tp_is_empty!345 tp!16740))))

(assert (=> b!63099 (= tp!16735 e!34173)))

(assert (= (and b!63099 (is-Cons!540 (msgs!18 thiss!8979))) b!63118))

(declare-fun b!63119 () Bool)

(declare-fun e!34174 () Bool)

(declare-fun tp!16741 () Bool)

(assert (=> b!63119 (= e!34174 (and tp_is_empty!345 tp!16741))))

(assert (=> b!63101 (= tp!16736 e!34174)))

(assert (= (and b!63101 (is-Cons!540 (msgs!18 thiss!8978))) b!63119))

(declare-fun b!63120 () Bool)

(declare-fun e!34175 () Bool)

(declare-fun tp!16742 () Bool)

(assert (=> b!63120 (= e!34175 (and tp_is_empty!345 tp!16742))))

(assert (=> b!63098 (= tp!16737 e!34175)))

(assert (= (and b!63098 (is-Cons!540 (msgs!18 thiss!8982))) b!63120))

(declare-fun b!63121 () Bool)

(declare-fun e!34176 () Bool)

(declare-fun tp!16743 () Bool)

(assert (=> b!63121 (= e!34176 (and tp_is_empty!345 tp!16743))))

(assert (=> b!63100 (= tp!16734 e!34176)))

(assert (= (and b!63100 (is-Cons!540 (msgs!18 (_2!193 res!29091)))) b!63121))

(declare-fun b_lambda!15729 () Bool)

(assert (= b_lambda!15727 (or b!63102 b_lambda!15729)))

(declare-fun bs!37538 () Bool)

(declare-fun d!53228 () Bool)

(assert (= bs!37538 (and d!53228 b!63102)))

(assert (=> bs!37538 (= (dynLambda!952 lambda!9162) Nil!541)))

(assert (=> b!63110 d!53228))

(push 1)

(assert (not b!63121))

(assert (not b!63119))

(assert (not d!53220))

(assert (not b!63120))

(assert (not d!53224))

(assert (not d!53226))

(assert tp_is_empty!345)

(assert (not b!63118))

(assert (not b_lambda!15729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


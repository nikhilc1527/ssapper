; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4236 () Bool)

(assert start!4236)

(declare-fun b!34088 () Bool)

(declare-fun e!17242 () Bool)

(declare-datatypes () ((T!1881 (T!1882 (val!113 Int)))))

(declare-datatypes () ((List!377 (Cons!371 (h!288 T!1881) (t!4403 List!377)) (Nil!372))))

(declare-fun res!5562 () List!377)

(declare-datatypes () ((Conc!90 (CC!89 (left!734 Conc!90) (right!737 Conc!90)) (Single!89 (x!9039 T!1881)) (Empty!100))))

(declare-fun thiss!2730 () Conc!90)

(declare-fun size!306 (List!377) Int)

(declare-fun size!307 (Conc!90) Int)

(assert (=> b!34088 (= e!17242 (not (= (size!306 res!5562) (size!307 thiss!2730))))))

(declare-fun b!34089 () Bool)

(declare-fun res!15669 () Bool)

(assert (=> b!34089 (=> (not res!15669) (not e!17242))))

(declare-fun ++!55 (List!377 List!377) List!377)

(declare-fun toList!130 (Conc!90) List!377)

(assert (=> b!34089 (= res!15669 (= res!5562 (++!55 (toList!130 (left!734 thiss!2730)) (toList!130 (right!737 thiss!2730)))))))

(declare-fun b!34090 () Bool)

(declare-fun e!17241 () Bool)

(declare-fun tp_is_empty!225 () Bool)

(assert (=> b!34090 (= e!17241 tp_is_empty!225)))

(declare-fun res!15670 () Bool)

(assert (=> start!4236 (=> (not res!15670) (not e!17242))))

(assert (=> start!4236 (= res!15670 (and (not (is-Empty!100 thiss!2730)) (not (is-Single!89 thiss!2730))))))

(assert (=> start!4236 e!17242))

(assert (=> start!4236 e!17241))

(declare-fun e!17240 () Bool)

(assert (=> start!4236 e!17240))

(declare-fun b!34091 () Bool)

(declare-fun tp!7059 () Bool)

(assert (=> b!34091 (= e!17240 (and tp_is_empty!225 tp!7059))))

(declare-fun b!34092 () Bool)

(declare-fun tp!7058 () Bool)

(declare-fun tp!7057 () Bool)

(assert (=> b!34092 (= e!17241 (and tp!7058 tp!7057))))

(assert (= (and start!4236 res!15670) b!34089))

(assert (= (and b!34089 res!15669) b!34088))

(assert (= (and start!4236 (is-CC!89 thiss!2730)) b!34092))

(assert (= (and start!4236 (is-Single!89 thiss!2730)) b!34090))

(assert (= (and start!4236 (is-Cons!371 res!5562)) b!34091))

(declare-fun m!36165 () Bool)

(assert (=> b!34088 m!36165))

(declare-fun m!36167 () Bool)

(assert (=> b!34088 m!36167))

(declare-fun m!36169 () Bool)

(assert (=> b!34089 m!36169))

(declare-fun m!36171 () Bool)

(assert (=> b!34089 m!36171))

(assert (=> b!34089 m!36169))

(assert (=> b!34089 m!36171))

(declare-fun m!36173 () Bool)

(assert (=> b!34089 m!36173))

(push 1)

(assert tp_is_empty!225)

(assert (not b!34088))

(assert (not b!34089))

(assert (not b!34091))

(assert (not b!34092))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!16951 () Bool)

(declare-fun lt!6414 () Int)

(assert (=> d!16951 (>= lt!6414 0)))

(declare-fun e!17245 () Int)

(assert (=> d!16951 (= lt!6414 e!17245)))

(declare-fun c!7318 () Bool)

(assert (=> d!16951 (= c!7318 (is-Nil!372 res!5562))))

(assert (=> d!16951 (= (size!306 res!5562) lt!6414)))

(declare-fun b!34097 () Bool)

(assert (=> b!34097 (= e!17245 0)))

(declare-fun b!34098 () Bool)

(assert (=> b!34098 (= e!17245 (+ 1 (size!306 (t!4403 res!5562))))))

(assert (= (and d!16951 c!7318) b!34097))

(assert (= (and d!16951 (not c!7318)) b!34098))

(declare-fun m!36175 () Bool)

(assert (=> b!34098 m!36175))

(assert (=> b!34088 d!16951))

(declare-fun b!34107 () Bool)

(declare-fun e!17251 () Int)

(assert (=> b!34107 (= e!17251 0)))

(declare-fun b!34109 () Bool)

(declare-fun e!17250 () Int)

(assert (=> b!34109 (= e!17250 1)))

(declare-fun d!16953 () Bool)

(declare-fun lt!6417 () Int)

(assert (=> d!16953 (>= lt!6417 0)))

(assert (=> d!16953 (= lt!6417 e!17251)))

(declare-fun c!7323 () Bool)

(assert (=> d!16953 (= c!7323 (is-Empty!100 thiss!2730))))

(assert (=> d!16953 (= (size!307 thiss!2730) lt!6417)))

(declare-fun b!34108 () Bool)

(assert (=> b!34108 (= e!17251 e!17250)))

(declare-fun c!7324 () Bool)

(assert (=> b!34108 (= c!7324 (is-Single!89 thiss!2730))))

(declare-fun b!34110 () Bool)

(assert (=> b!34110 (= e!17250 (+ (size!307 (left!734 thiss!2730)) (size!307 (right!737 thiss!2730))))))

(assert (= (and b!34108 c!7324) b!34109))

(assert (= (and b!34108 (not c!7324)) b!34110))

(assert (= (and d!16953 c!7323) b!34107))

(assert (= (and d!16953 (not c!7323)) b!34108))

(declare-fun m!36177 () Bool)

(assert (=> b!34110 m!36177))

(declare-fun m!36179 () Bool)

(assert (=> b!34110 m!36179))

(assert (=> b!34088 d!16953))

(declare-fun b!34120 () Bool)

(declare-fun e!17256 () List!377)

(assert (=> b!34120 (= e!17256 (Cons!371 (h!288 (toList!130 (left!734 thiss!2730))) (++!55 (t!4403 (toList!130 (left!734 thiss!2730))) (toList!130 (right!737 thiss!2730)))))))

(declare-fun b!34119 () Bool)

(assert (=> b!34119 (= e!17256 (toList!130 (right!737 thiss!2730)))))

(declare-fun b!34121 () Bool)

(declare-fun res!15676 () Bool)

(declare-fun e!17257 () Bool)

(assert (=> b!34121 (=> (not res!15676) (not e!17257))))

(declare-fun lt!6420 () List!377)

(assert (=> b!34121 (= res!15676 (= (size!306 lt!6420) (+ (size!306 (toList!130 (left!734 thiss!2730))) (size!306 (toList!130 (right!737 thiss!2730))))))))

(declare-fun b!34122 () Bool)

(assert (=> b!34122 (= e!17257 (or (not (= (toList!130 (right!737 thiss!2730)) Nil!372)) (= lt!6420 (toList!130 (left!734 thiss!2730)))))))

(declare-fun d!16955 () Bool)

(assert (=> d!16955 e!17257))

(declare-fun res!15677 () Bool)

(assert (=> d!16955 (=> (not res!15677) (not e!17257))))

(declare-fun content!78 (List!377) (Set T!1881))

(assert (=> d!16955 (= res!15677 (= (content!78 lt!6420) (union (content!78 (toList!130 (left!734 thiss!2730))) (content!78 (toList!130 (right!737 thiss!2730))))))))

(assert (=> d!16955 (= lt!6420 e!17256)))

(declare-fun c!7327 () Bool)

(assert (=> d!16955 (= c!7327 (is-Nil!372 (toList!130 (left!734 thiss!2730))))))

(assert (=> d!16955 (= (++!55 (toList!130 (left!734 thiss!2730)) (toList!130 (right!737 thiss!2730))) lt!6420)))

(assert (= (and d!16955 c!7327) b!34119))

(assert (= (and d!16955 (not c!7327)) b!34120))

(assert (= (and d!16955 res!15677) b!34121))

(assert (= (and b!34121 res!15676) b!34122))

(assert (=> b!34120 m!36171))

(declare-fun m!36181 () Bool)

(assert (=> b!34120 m!36181))

(declare-fun m!36183 () Bool)

(assert (=> b!34121 m!36183))

(assert (=> b!34121 m!36169))

(declare-fun m!36185 () Bool)

(assert (=> b!34121 m!36185))

(assert (=> b!34121 m!36171))

(declare-fun m!36187 () Bool)

(assert (=> b!34121 m!36187))

(declare-fun m!36189 () Bool)

(assert (=> d!16955 m!36189))

(assert (=> d!16955 m!36169))

(declare-fun m!36191 () Bool)

(assert (=> d!16955 m!36191))

(assert (=> d!16955 m!36171))

(declare-fun m!36193 () Bool)

(assert (=> d!16955 m!36193))

(assert (=> b!34089 d!16955))

(declare-fun b!34132 () Bool)

(declare-fun e!17262 () List!377)

(declare-fun e!17263 () List!377)

(assert (=> b!34132 (= e!17262 e!17263)))

(declare-fun c!7333 () Bool)

(assert (=> b!34132 (= c!7333 (is-Single!89 (left!734 thiss!2730)))))

(declare-fun b!34133 () Bool)

(assert (=> b!34133 (= e!17263 (Cons!371 (x!9039 (left!734 thiss!2730)) Nil!372))))

(declare-fun b!34131 () Bool)

(assert (=> b!34131 (= e!17262 Nil!372)))

(declare-fun b!34134 () Bool)

(assert (=> b!34134 (= e!17263 (++!55 (toList!130 (left!734 (left!734 thiss!2730))) (toList!130 (right!737 (left!734 thiss!2730)))))))

(declare-fun d!16957 () Bool)

(declare-fun lt!6423 () List!377)

(assert (=> d!16957 (= (size!306 lt!6423) (size!307 (left!734 thiss!2730)))))

(assert (=> d!16957 (= lt!6423 e!17262)))

(declare-fun c!7332 () Bool)

(assert (=> d!16957 (= c!7332 (is-Empty!100 (left!734 thiss!2730)))))

(assert (=> d!16957 (= (toList!130 (left!734 thiss!2730)) lt!6423)))

(assert (= (and b!34132 c!7333) b!34133))

(assert (= (and b!34132 (not c!7333)) b!34134))

(assert (= (and d!16957 c!7332) b!34131))

(assert (= (and d!16957 (not c!7332)) b!34132))

(declare-fun m!36195 () Bool)

(assert (=> b!34134 m!36195))

(declare-fun m!36197 () Bool)

(assert (=> b!34134 m!36197))

(assert (=> b!34134 m!36195))

(assert (=> b!34134 m!36197))

(declare-fun m!36199 () Bool)

(assert (=> b!34134 m!36199))

(declare-fun m!36201 () Bool)

(assert (=> d!16957 m!36201))

(assert (=> d!16957 m!36177))

(assert (=> b!34089 d!16957))

(declare-fun b!34136 () Bool)

(declare-fun e!17264 () List!377)

(declare-fun e!17265 () List!377)

(assert (=> b!34136 (= e!17264 e!17265)))

(declare-fun c!7335 () Bool)

(assert (=> b!34136 (= c!7335 (is-Single!89 (right!737 thiss!2730)))))

(declare-fun b!34137 () Bool)

(assert (=> b!34137 (= e!17265 (Cons!371 (x!9039 (right!737 thiss!2730)) Nil!372))))

(declare-fun b!34135 () Bool)

(assert (=> b!34135 (= e!17264 Nil!372)))

(declare-fun b!34138 () Bool)

(assert (=> b!34138 (= e!17265 (++!55 (toList!130 (left!734 (right!737 thiss!2730))) (toList!130 (right!737 (right!737 thiss!2730)))))))

(declare-fun d!16959 () Bool)

(declare-fun lt!6424 () List!377)

(assert (=> d!16959 (= (size!306 lt!6424) (size!307 (right!737 thiss!2730)))))

(assert (=> d!16959 (= lt!6424 e!17264)))

(declare-fun c!7334 () Bool)

(assert (=> d!16959 (= c!7334 (is-Empty!100 (right!737 thiss!2730)))))

(assert (=> d!16959 (= (toList!130 (right!737 thiss!2730)) lt!6424)))

(assert (= (and b!34136 c!7335) b!34137))

(assert (= (and b!34136 (not c!7335)) b!34138))

(assert (= (and d!16959 c!7334) b!34135))

(assert (= (and d!16959 (not c!7334)) b!34136))

(declare-fun m!36203 () Bool)

(assert (=> b!34138 m!36203))

(declare-fun m!36205 () Bool)

(assert (=> b!34138 m!36205))

(assert (=> b!34138 m!36203))

(assert (=> b!34138 m!36205))

(declare-fun m!36207 () Bool)

(assert (=> b!34138 m!36207))

(declare-fun m!36209 () Bool)

(assert (=> d!16959 m!36209))

(assert (=> d!16959 m!36179))

(assert (=> b!34089 d!16959))

(declare-fun b!34145 () Bool)

(declare-fun e!17268 () Bool)

(declare-fun tp!7064 () Bool)

(declare-fun tp!7065 () Bool)

(assert (=> b!34145 (= e!17268 (and tp!7064 tp!7065))))

(declare-fun b!34146 () Bool)

(assert (=> b!34146 (= e!17268 tp_is_empty!225)))

(assert (=> b!34092 (= tp!7058 e!17268)))

(assert (= (and b!34092 (is-CC!89 (left!734 thiss!2730))) b!34145))

(assert (= (and b!34092 (is-Single!89 (left!734 thiss!2730))) b!34146))

(declare-fun b!34147 () Bool)

(declare-fun e!17269 () Bool)

(declare-fun tp!7066 () Bool)

(declare-fun tp!7067 () Bool)

(assert (=> b!34147 (= e!17269 (and tp!7066 tp!7067))))

(declare-fun b!34148 () Bool)

(assert (=> b!34148 (= e!17269 tp_is_empty!225)))

(assert (=> b!34092 (= tp!7057 e!17269)))

(assert (= (and b!34092 (is-CC!89 (right!737 thiss!2730))) b!34147))

(assert (= (and b!34092 (is-Single!89 (right!737 thiss!2730))) b!34148))

(declare-fun b!34153 () Bool)

(declare-fun e!17272 () Bool)

(declare-fun tp!7070 () Bool)

(assert (=> b!34153 (= e!17272 (and tp_is_empty!225 tp!7070))))

(assert (=> b!34091 (= tp!7059 e!17272)))

(assert (= (and b!34091 (is-Cons!371 (t!4403 res!5562))) b!34153))

(push 1)

(assert tp_is_empty!225)

(assert (not b!34110))

(assert (not b!34120))

(assert (not d!16955))

(assert (not b!34145))

(assert (not b!34098))

(assert (not b!34147))

(assert (not b!34138))

(assert (not d!16959))

(assert (not b!34153))

(assert (not b!34121))

(assert (not b!34134))

(assert (not d!16957))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


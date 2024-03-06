; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4230 () Bool)

(assert start!4230)

(declare-fun b!34024 () Bool)

(declare-fun e!17207 () Bool)

(declare-fun tp_is_empty!223 () Bool)

(assert (=> b!34024 (= e!17207 tp_is_empty!223)))

(declare-fun b!34023 () Bool)

(declare-fun tp!7029 () Bool)

(declare-fun tp!7030 () Bool)

(assert (=> b!34023 (= e!17207 (and tp!7029 tp!7030))))

(declare-fun res!15664 () Bool)

(declare-fun e!17206 () Bool)

(assert (=> start!4230 (=> (not res!15664) (not e!17206))))

(declare-datatypes () ((T!1879 (T!1880 (val!112 Int)))))

(declare-datatypes () ((Conc!89 (CC!88 (left!733 Conc!89) (right!736 Conc!89)) (Single!88 (x!9034 T!1879)) (Empty!99))))

(declare-fun thiss!2730 () Conc!89)

(declare-datatypes () ((List!376 (Cons!370 (h!287 T!1879) (t!4402 List!376)) (Nil!371))))

(declare-fun res!5561 () List!376)

(assert (=> start!4230 (= res!15664 (and (not (is-Empty!99 thiss!2730)) (is-Single!88 thiss!2730) (= res!5561 (Cons!370 (x!9034 thiss!2730) Nil!371))))))

(assert (=> start!4230 e!17206))

(assert (=> start!4230 e!17207))

(declare-fun e!17205 () Bool)

(assert (=> start!4230 e!17205))

(declare-fun b!34022 () Bool)

(declare-fun size!304 (List!376) Int)

(declare-fun size!305 (Conc!89) Int)

(assert (=> b!34022 (= e!17206 (not (= (size!304 res!5561) (size!305 thiss!2730))))))

(declare-fun b!34025 () Bool)

(declare-fun tp!7028 () Bool)

(assert (=> b!34025 (= e!17205 (and tp_is_empty!223 tp!7028))))

(assert (= (and start!4230 res!15664) b!34022))

(assert (= (and start!4230 (is-CC!88 thiss!2730)) b!34023))

(assert (= (and start!4230 (is-Single!88 thiss!2730)) b!34024))

(assert (= (and start!4230 (is-Cons!370 res!5561)) b!34025))

(declare-fun m!36145 () Bool)

(assert (=> b!34022 m!36145))

(declare-fun m!36147 () Bool)

(assert (=> b!34022 m!36147))

(push 1)

(assert (not b!34022))

(assert (not b!34023))

(assert (not b!34025))

(assert tp_is_empty!223)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!16941 () Bool)

(declare-fun lt!6405 () Int)

(assert (=> d!16941 (>= lt!6405 0)))

(declare-fun e!17210 () Int)

(assert (=> d!16941 (= lt!6405 e!17210)))

(declare-fun c!7304 () Bool)

(assert (=> d!16941 (= c!7304 (is-Nil!371 res!5561))))

(assert (=> d!16941 (= (size!304 res!5561) lt!6405)))

(declare-fun b!34030 () Bool)

(assert (=> b!34030 (= e!17210 0)))

(declare-fun b!34031 () Bool)

(assert (=> b!34031 (= e!17210 (+ 1 (size!304 (t!4402 res!5561))))))

(assert (= (and d!16941 c!7304) b!34030))

(assert (= (and d!16941 (not c!7304)) b!34031))

(declare-fun m!36149 () Bool)

(assert (=> b!34031 m!36149))

(assert (=> b!34022 d!16941))

(declare-fun b!34041 () Bool)

(declare-fun e!17215 () Int)

(declare-fun e!17216 () Int)

(assert (=> b!34041 (= e!17215 e!17216)))

(declare-fun c!7309 () Bool)

(assert (=> b!34041 (= c!7309 (is-Single!88 thiss!2730))))

(declare-fun b!34040 () Bool)

(assert (=> b!34040 (= e!17215 0)))

(declare-fun d!16943 () Bool)

(declare-fun lt!6408 () Int)

(assert (=> d!16943 (>= lt!6408 0)))

(assert (=> d!16943 (= lt!6408 e!17215)))

(declare-fun c!7310 () Bool)

(assert (=> d!16943 (= c!7310 (is-Empty!99 thiss!2730))))

(assert (=> d!16943 (= (size!305 thiss!2730) lt!6408)))

(declare-fun b!34043 () Bool)

(assert (=> b!34043 (= e!17216 (+ (size!305 (left!733 thiss!2730)) (size!305 (right!736 thiss!2730))))))

(declare-fun b!34042 () Bool)

(assert (=> b!34042 (= e!17216 1)))

(assert (= (and b!34041 c!7309) b!34042))

(assert (= (and b!34041 (not c!7309)) b!34043))

(assert (= (and d!16943 c!7310) b!34040))

(assert (= (and d!16943 (not c!7310)) b!34041))

(declare-fun m!36151 () Bool)

(assert (=> b!34043 m!36151))

(declare-fun m!36153 () Bool)

(assert (=> b!34043 m!36153))

(assert (=> b!34022 d!16943))

(declare-fun b!34050 () Bool)

(declare-fun e!17219 () Bool)

(declare-fun tp!7035 () Bool)

(declare-fun tp!7036 () Bool)

(assert (=> b!34050 (= e!17219 (and tp!7035 tp!7036))))

(declare-fun b!34051 () Bool)

(assert (=> b!34051 (= e!17219 tp_is_empty!223)))

(assert (=> b!34023 (= tp!7029 e!17219)))

(assert (= (and b!34023 (is-CC!88 (left!733 thiss!2730))) b!34050))

(assert (= (and b!34023 (is-Single!88 (left!733 thiss!2730))) b!34051))

(declare-fun b!34052 () Bool)

(declare-fun e!17220 () Bool)

(declare-fun tp!7037 () Bool)

(declare-fun tp!7038 () Bool)

(assert (=> b!34052 (= e!17220 (and tp!7037 tp!7038))))

(declare-fun b!34053 () Bool)

(assert (=> b!34053 (= e!17220 tp_is_empty!223)))

(assert (=> b!34023 (= tp!7030 e!17220)))

(assert (= (and b!34023 (is-CC!88 (right!736 thiss!2730))) b!34052))

(assert (= (and b!34023 (is-Single!88 (right!736 thiss!2730))) b!34053))

(declare-fun b!34058 () Bool)

(declare-fun e!17223 () Bool)

(declare-fun tp!7041 () Bool)

(assert (=> b!34058 (= e!17223 (and tp_is_empty!223 tp!7041))))

(assert (=> b!34025 (= tp!7028 e!17223)))

(assert (= (and b!34025 (is-Cons!370 (t!4402 res!5561))) b!34058))

(push 1)

(assert (not b!34058))

(assert (not b!34052))

(assert (not b!34050))

(assert tp_is_empty!223)

(assert (not b!34031))

(assert (not b!34043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!34060 () Bool)

(declare-fun e!17224 () Int)

(declare-fun e!17225 () Int)

(assert (=> b!34060 (= e!17224 e!17225)))

(declare-fun c!7311 () Bool)

(assert (=> b!34060 (= c!7311 (is-Single!88 (left!733 thiss!2730)))))

(declare-fun b!34059 () Bool)

(assert (=> b!34059 (= e!17224 0)))

(declare-fun d!16945 () Bool)

(declare-fun lt!6409 () Int)

(assert (=> d!16945 (>= lt!6409 0)))

(assert (=> d!16945 (= lt!6409 e!17224)))

(declare-fun c!7312 () Bool)

(assert (=> d!16945 (= c!7312 (is-Empty!99 (left!733 thiss!2730)))))

(assert (=> d!16945 (= (size!305 (left!733 thiss!2730)) lt!6409)))

(declare-fun b!34062 () Bool)

(assert (=> b!34062 (= e!17225 (+ (size!305 (left!733 (left!733 thiss!2730))) (size!305 (right!736 (left!733 thiss!2730)))))))

(declare-fun b!34061 () Bool)

(assert (=> b!34061 (= e!17225 1)))

(assert (= (and b!34060 c!7311) b!34061))

(assert (= (and b!34060 (not c!7311)) b!34062))

(assert (= (and d!16945 c!7312) b!34059))

(assert (= (and d!16945 (not c!7312)) b!34060))

(declare-fun m!36155 () Bool)

(assert (=> b!34062 m!36155))

(declare-fun m!36157 () Bool)

(assert (=> b!34062 m!36157))

(assert (=> b!34043 d!16945))

(declare-fun b!34064 () Bool)

(declare-fun e!17226 () Int)

(declare-fun e!17227 () Int)

(assert (=> b!34064 (= e!17226 e!17227)))

(declare-fun c!7313 () Bool)

(assert (=> b!34064 (= c!7313 (is-Single!88 (right!736 thiss!2730)))))

(declare-fun b!34063 () Bool)

(assert (=> b!34063 (= e!17226 0)))

(declare-fun d!16947 () Bool)

(declare-fun lt!6410 () Int)

(assert (=> d!16947 (>= lt!6410 0)))

(assert (=> d!16947 (= lt!6410 e!17226)))

(declare-fun c!7314 () Bool)

(assert (=> d!16947 (= c!7314 (is-Empty!99 (right!736 thiss!2730)))))

(assert (=> d!16947 (= (size!305 (right!736 thiss!2730)) lt!6410)))

(declare-fun b!34066 () Bool)

(assert (=> b!34066 (= e!17227 (+ (size!305 (left!733 (right!736 thiss!2730))) (size!305 (right!736 (right!736 thiss!2730)))))))

(declare-fun b!34065 () Bool)

(assert (=> b!34065 (= e!17227 1)))

(assert (= (and b!34064 c!7313) b!34065))

(assert (= (and b!34064 (not c!7313)) b!34066))

(assert (= (and d!16947 c!7314) b!34063))

(assert (= (and d!16947 (not c!7314)) b!34064))

(declare-fun m!36159 () Bool)

(assert (=> b!34066 m!36159))

(declare-fun m!36161 () Bool)

(assert (=> b!34066 m!36161))

(assert (=> b!34043 d!16947))

(declare-fun d!16949 () Bool)

(declare-fun lt!6411 () Int)

(assert (=> d!16949 (>= lt!6411 0)))

(declare-fun e!17228 () Int)

(assert (=> d!16949 (= lt!6411 e!17228)))

(declare-fun c!7315 () Bool)

(assert (=> d!16949 (= c!7315 (is-Nil!371 (t!4402 res!5561)))))

(assert (=> d!16949 (= (size!304 (t!4402 res!5561)) lt!6411)))

(declare-fun b!34067 () Bool)

(assert (=> b!34067 (= e!17228 0)))

(declare-fun b!34068 () Bool)

(assert (=> b!34068 (= e!17228 (+ 1 (size!304 (t!4402 (t!4402 res!5561)))))))

(assert (= (and d!16949 c!7315) b!34067))

(assert (= (and d!16949 (not c!7315)) b!34068))

(declare-fun m!36163 () Bool)

(assert (=> b!34068 m!36163))

(assert (=> b!34031 d!16949))

(declare-fun b!34069 () Bool)

(declare-fun e!17229 () Bool)

(declare-fun tp!7042 () Bool)

(assert (=> b!34069 (= e!17229 (and tp_is_empty!223 tp!7042))))

(assert (=> b!34058 (= tp!7041 e!17229)))

(assert (= (and b!34058 (is-Cons!370 (t!4402 (t!4402 res!5561)))) b!34069))

(declare-fun b!34070 () Bool)

(declare-fun e!17230 () Bool)

(declare-fun tp!7043 () Bool)

(declare-fun tp!7044 () Bool)

(assert (=> b!34070 (= e!17230 (and tp!7043 tp!7044))))

(declare-fun b!34071 () Bool)

(assert (=> b!34071 (= e!17230 tp_is_empty!223)))

(assert (=> b!34050 (= tp!7035 e!17230)))

(assert (= (and b!34050 (is-CC!88 (left!733 (left!733 thiss!2730)))) b!34070))

(assert (= (and b!34050 (is-Single!88 (left!733 (left!733 thiss!2730)))) b!34071))

(declare-fun b!34072 () Bool)

(declare-fun e!17231 () Bool)

(declare-fun tp!7045 () Bool)

(declare-fun tp!7046 () Bool)

(assert (=> b!34072 (= e!17231 (and tp!7045 tp!7046))))

(declare-fun b!34073 () Bool)

(assert (=> b!34073 (= e!17231 tp_is_empty!223)))

(assert (=> b!34050 (= tp!7036 e!17231)))

(assert (= (and b!34050 (is-CC!88 (right!736 (left!733 thiss!2730)))) b!34072))

(assert (= (and b!34050 (is-Single!88 (right!736 (left!733 thiss!2730)))) b!34073))

(declare-fun b!34074 () Bool)

(declare-fun e!17232 () Bool)

(declare-fun tp!7047 () Bool)

(declare-fun tp!7048 () Bool)

(assert (=> b!34074 (= e!17232 (and tp!7047 tp!7048))))

(declare-fun b!34075 () Bool)

(assert (=> b!34075 (= e!17232 tp_is_empty!223)))

(assert (=> b!34052 (= tp!7037 e!17232)))

(assert (= (and b!34052 (is-CC!88 (left!733 (right!736 thiss!2730)))) b!34074))

(assert (= (and b!34052 (is-Single!88 (left!733 (right!736 thiss!2730)))) b!34075))

(declare-fun b!34076 () Bool)

(declare-fun e!17233 () Bool)

(declare-fun tp!7049 () Bool)

(declare-fun tp!7050 () Bool)

(assert (=> b!34076 (= e!17233 (and tp!7049 tp!7050))))

(declare-fun b!34077 () Bool)

(assert (=> b!34077 (= e!17233 tp_is_empty!223)))

(assert (=> b!34052 (= tp!7038 e!17233)))

(assert (= (and b!34052 (is-CC!88 (right!736 (right!736 thiss!2730)))) b!34076))

(assert (= (and b!34052 (is-Single!88 (right!736 (right!736 thiss!2730)))) b!34077))

(push 1)

(assert (not b!34072))

(assert (not b!34062))

(assert tp_is_empty!223)

(assert (not b!34074))

(assert (not b!34068))

(assert (not b!34070))

(assert (not b!34076))

(assert (not b!34069))

(assert (not b!34066))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


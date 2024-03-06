; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!734 () Bool)

(assert start!734)

(declare-fun b_free!53 () Bool)

(declare-fun b_next!55 () Bool)

(assert (=> start!734 (= b_free!53 (not b_next!55))))

(declare-fun tp!208 () Bool)

(declare-fun b_and!203 () Bool)

(assert (=> start!734 (= tp!208 b_and!203)))

(declare-fun b_free!55 () Bool)

(declare-fun b_next!57 () Bool)

(assert (=> start!734 (= b_free!55 (not b_next!57))))

(declare-fun tp!206 () Bool)

(declare-fun b_and!205 () Bool)

(assert (=> start!734 (= tp!206 b_and!205)))

(declare-fun b_free!57 () Bool)

(declare-fun b_next!59 () Bool)

(assert (=> start!734 (= b_free!57 (not b_next!59))))

(declare-fun tp!207 () Bool)

(declare-fun b_and!207 () Bool)

(assert (=> start!734 (= tp!207 b_and!207)))

(declare-fun b!4718 () Bool)

(assert (=> b!4718 true))

(declare-fun lambda!5 () Int)

(declare-fun order!3 () Int)

(declare-fun f1!4 () Int)

(declare-fun order!1 () Int)

(declare-fun dynLambda!10 (Int Int) Int)

(declare-fun dynLambda!11 (Int Int) Int)

(assert (=> b!4718 (< (dynLambda!10 order!1 f1!4) (dynLambda!11 order!3 lambda!5))))

(assert (=> b!4718 true))

(declare-fun order!5 () Int)

(declare-fun f2!6 () Int)

(declare-fun dynLambda!12 (Int Int) Int)

(assert (=> b!4718 (< (dynLambda!12 order!5 f2!6) (dynLambda!11 order!3 lambda!5))))

(declare-fun b_next!61 () Bool)

(declare-fun fp!1 () Int)

(assert (=> start!734 (= b_next!59 (or (and b!4718 (= lambda!5 fp!1)) b_next!61))))

(declare-fun b!4719 () Bool)

(declare-fun tp_is_empty!23 () Bool)

(declare-datatypes () ((A!804 (A!805 (val!12 Int)))))

(declare-datatypes () ((B!320 (B!321 (val!13 Int)))))

(declare-datatypes () ((tuple2!16 (tuple2!17 (_1!8 A!804) (_2!8 B!320)))))

(declare-fun x!1937 () tuple2!16)

(declare-fun inst!25 () Bool)

(declare-fun x!1939 () tuple2!16)

(declare-fun x!1938 () tuple2!16)

(declare-fun tp_is_empty!25 () Bool)

(declare-fun dynLambda!13 (Int tuple2!16 tuple2!16) tuple2!16)

(assert (=> b!4719 (= inst!25 (=> (and tp_is_empty!23 tp_is_empty!25) (= (dynLambda!13 fp!1 (dynLambda!13 fp!1 x!1937 x!1938) x!1939) (dynLambda!13 fp!1 x!1937 (dynLambda!13 fp!1 x!1938 x!1939)))))))

(declare-fun b_lambda!173 () Bool)

(assert (=> (not b_lambda!173) (not b!4719)))

(declare-fun t!409 () Bool)

(declare-fun tb!97 () Bool)

(assert (=> (and start!734 (= fp!1 fp!1) t!409) tb!97))

(assert (=> b!4719 t!409))

(declare-fun result!131 () Bool)

(declare-fun b_and!209 () Bool)

(assert (= b_and!207 (and (=> t!409 result!131) b_and!209)))

(declare-fun b_lambda!175 () Bool)

(assert (=> (not b_lambda!175) (not b!4719)))

(declare-fun t!411 () Bool)

(declare-fun tb!99 () Bool)

(assert (=> (and start!734 (= fp!1 fp!1) t!411) tb!99))

(assert (=> b!4719 t!411))

(declare-fun result!133 () Bool)

(declare-fun b_and!211 () Bool)

(assert (= b_and!209 (and (=> t!411 result!133) b_and!211)))

(declare-fun b_lambda!177 () Bool)

(assert (=> (not b_lambda!177) (not b!4719)))

(declare-fun t!413 () Bool)

(declare-fun tb!101 () Bool)

(assert (=> (and start!734 (= fp!1 fp!1) t!413) tb!101))

(assert (=> b!4719 t!413))

(declare-fun result!135 () Bool)

(declare-fun b_and!213 () Bool)

(assert (= b_and!211 (and (=> t!413 result!135) b_and!213)))

(declare-fun b_lambda!179 () Bool)

(assert (=> (not b_lambda!179) (not b!4719)))

(declare-fun t!415 () Bool)

(declare-fun tb!103 () Bool)

(assert (=> (and start!734 (= fp!1 fp!1) t!415) tb!103))

(assert (=> b!4719 t!415))

(declare-fun result!137 () Bool)

(declare-fun b_and!215 () Bool)

(assert (= b_and!213 (and (=> t!415 result!137) b_and!215)))

(declare-fun m!7245 () Bool)

(assert (=> b!4719 m!7245))

(assert (=> b!4719 m!7245))

(declare-fun m!7247 () Bool)

(assert (=> b!4719 m!7247))

(declare-fun m!7249 () Bool)

(assert (=> b!4719 m!7249))

(assert (=> b!4719 m!7249))

(declare-fun m!7251 () Bool)

(assert (=> b!4719 m!7251))

(declare-fun res!1411 () Bool)

(declare-fun e!2811 () Bool)

(assert (=> start!734 (=> (not res!1411) (not e!2811))))

(assert (=> start!734 (= res!1411 true)))

(assert (=> start!734 e!2811))

(assert (=> start!734 tp!208))

(assert (=> start!734 tp!206))

(assert (=> start!734 tp!207))

(declare-fun b!4717 () Bool)

(declare-fun res!1413 () Bool)

(assert (=> b!4717 (=> (not res!1413) (not e!2811))))

(assert (=> b!4717 (= res!1413 true)))

(declare-fun res!1412 () Bool)

(assert (=> b!4718 (=> (not res!1412) (not e!2811))))

(assert (=> b!4718 (= res!1412 (= fp!1 lambda!5))))

(assert (=> b!4719 (= e!2811 (not inst!25))))

(assert (= (and start!734 res!1411) b!4717))

(assert (= (and b!4717 res!1413) b!4718))

(assert (= (and b!4718 res!1412) b!4719))

(push 1)

(assert (not b_next!57))

(assert b_and!205)

(assert b_and!215)

(assert (not b_lambda!173))

(assert (not tb!101))

(assert (not b_next!61))

(assert b_and!203)

(assert (not b_lambda!177))

(assert (not b_next!55))

(assert tp_is_empty!23)

(assert (not tb!99))

(assert (not tb!103))

(assert (not b_lambda!179))

(assert (not b_lambda!175))

(assert tp_is_empty!25)

(assert (not tb!97))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!57))

(assert b_and!205)

(assert b_and!215)

(assert (not b_next!61))

(assert b_and!203)

(assert (not b_next!55))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!181 () Bool)

(assert (= b_lambda!173 (or (and b!4718 (= lambda!5 fp!1)) (and start!734 b_free!57) b_lambda!181)))

(declare-fun bs!378 () Bool)

(declare-fun d!3359 () Bool)

(assert (= bs!378 (and d!3359 b!4718)))

(declare-fun dynLambda!14 (Int A!804 A!804) A!804)

(declare-fun dynLambda!15 (Int B!320 B!320) B!320)

(assert (=> bs!378 (= (dynLambda!13 lambda!5 (dynLambda!13 fp!1 x!1937 x!1938) x!1939) (tuple2!17 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1939)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1939))))))

(declare-fun b_lambda!189 () Bool)

(assert (=> (not b_lambda!189) (not bs!378)))

(declare-fun t!417 () Bool)

(declare-fun tb!105 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!417) tb!105))

(declare-fun result!139 () Bool)

(assert (=> tb!105 (= result!139 tp_is_empty!23)))

(assert (=> bs!378 t!417))

(declare-fun b_and!217 () Bool)

(assert (= b_and!203 (and (=> t!417 result!139) b_and!217)))

(declare-fun b_lambda!191 () Bool)

(assert (=> (not b_lambda!191) (not bs!378)))

(declare-fun t!419 () Bool)

(declare-fun tb!107 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!419) tb!107))

(declare-fun result!143 () Bool)

(assert (=> tb!107 (= result!143 tp_is_empty!25)))

(assert (=> bs!378 t!419))

(declare-fun b_and!219 () Bool)

(assert (= b_and!205 (and (=> t!419 result!143) b_and!219)))

(declare-fun m!7253 () Bool)

(assert (=> bs!378 m!7253))

(declare-fun m!7255 () Bool)

(assert (=> bs!378 m!7255))

(assert (=> (and b!4718 (= lambda!5 fp!1) b!4719) d!3359))

(declare-fun b_lambda!183 () Bool)

(assert (= b_lambda!177 (or (and b!4718 (= lambda!5 fp!1)) (and start!734 b_free!57) b_lambda!183)))

(declare-fun bs!379 () Bool)

(declare-fun d!3361 () Bool)

(assert (= bs!379 (and d!3361 b!4718)))

(assert (=> bs!379 (= (dynLambda!13 lambda!5 x!1937 (dynLambda!13 fp!1 x!1938 x!1939)) (tuple2!17 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939)))))))

(declare-fun b_lambda!193 () Bool)

(assert (=> (not b_lambda!193) (not bs!379)))

(declare-fun t!421 () Bool)

(declare-fun tb!109 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!421) tb!109))

(declare-fun result!147 () Bool)

(assert (=> tb!109 (= result!147 tp_is_empty!23)))

(assert (=> bs!379 t!421))

(declare-fun b_and!221 () Bool)

(assert (= b_and!217 (and (=> t!421 result!147) b_and!221)))

(declare-fun b_lambda!195 () Bool)

(assert (=> (not b_lambda!195) (not bs!379)))

(declare-fun t!423 () Bool)

(declare-fun tb!111 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!423) tb!111))

(declare-fun result!149 () Bool)

(assert (=> tb!111 (= result!149 tp_is_empty!25)))

(assert (=> bs!379 t!423))

(declare-fun b_and!223 () Bool)

(assert (= b_and!219 (and (=> t!423 result!149) b_and!223)))

(declare-fun m!7257 () Bool)

(assert (=> bs!379 m!7257))

(declare-fun m!7259 () Bool)

(assert (=> bs!379 m!7259))

(assert (=> (and b!4718 (= lambda!5 fp!1) b!4719) d!3361))

(declare-fun b_lambda!185 () Bool)

(assert (= b_lambda!179 (or (and b!4718 (= lambda!5 fp!1)) (and start!734 b_free!57) b_lambda!185)))

(declare-fun bs!380 () Bool)

(declare-fun d!3363 () Bool)

(assert (= bs!380 (and d!3363 b!4718)))

(assert (=> bs!380 (= (dynLambda!13 lambda!5 x!1938 x!1939) (tuple2!17 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1939)) (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1939))))))

(declare-fun b_lambda!197 () Bool)

(assert (=> (not b_lambda!197) (not bs!380)))

(declare-fun t!425 () Bool)

(declare-fun tb!113 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!425) tb!113))

(declare-fun result!151 () Bool)

(assert (=> tb!113 (= result!151 tp_is_empty!23)))

(assert (=> bs!380 t!425))

(declare-fun b_and!225 () Bool)

(assert (= b_and!221 (and (=> t!425 result!151) b_and!225)))

(declare-fun b_lambda!199 () Bool)

(assert (=> (not b_lambda!199) (not bs!380)))

(declare-fun t!427 () Bool)

(declare-fun tb!115 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!427) tb!115))

(declare-fun result!153 () Bool)

(assert (=> tb!115 (= result!153 tp_is_empty!25)))

(assert (=> bs!380 t!427))

(declare-fun b_and!227 () Bool)

(assert (= b_and!223 (and (=> t!427 result!153) b_and!227)))

(declare-fun m!7261 () Bool)

(assert (=> bs!380 m!7261))

(declare-fun m!7263 () Bool)

(assert (=> bs!380 m!7263))

(assert (=> (and b!4718 (= lambda!5 fp!1) b!4719) d!3363))

(declare-fun b_lambda!187 () Bool)

(assert (= b_lambda!175 (or (and b!4718 (= lambda!5 fp!1)) (and start!734 b_free!57) b_lambda!187)))

(declare-fun bs!381 () Bool)

(declare-fun d!3365 () Bool)

(assert (= bs!381 (and d!3365 b!4718)))

(assert (=> bs!381 (= (dynLambda!13 lambda!5 x!1937 x!1938) (tuple2!17 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1938))))))

(declare-fun b_lambda!201 () Bool)

(assert (=> (not b_lambda!201) (not bs!381)))

(declare-fun t!429 () Bool)

(declare-fun tb!117 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!429) tb!117))

(declare-fun result!155 () Bool)

(assert (=> tb!117 (= result!155 tp_is_empty!23)))

(assert (=> bs!381 t!429))

(declare-fun b_and!229 () Bool)

(assert (= b_and!225 (and (=> t!429 result!155) b_and!229)))

(declare-fun b_lambda!203 () Bool)

(assert (=> (not b_lambda!203) (not bs!381)))

(declare-fun t!431 () Bool)

(declare-fun tb!119 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!431) tb!119))

(declare-fun result!157 () Bool)

(assert (=> tb!119 (= result!157 tp_is_empty!25)))

(assert (=> bs!381 t!431))

(declare-fun b_and!231 () Bool)

(assert (= b_and!227 (and (=> t!431 result!157) b_and!231)))

(declare-fun m!7265 () Bool)

(assert (=> bs!381 m!7265))

(declare-fun m!7267 () Bool)

(assert (=> bs!381 m!7267))

(assert (=> (and b!4718 (= lambda!5 fp!1) b!4719) d!3365))

(push 1)

(assert (not b_next!57))

(assert (not b_lambda!195))

(assert (not b_lambda!203))

(assert (not b_lambda!183))

(assert b_and!215)

(assert (not b_lambda!189))

(assert b_and!229)

(assert (not b_lambda!201))

(assert (not b_lambda!185))

(assert (not tb!101))

(assert (not b_next!61))

(assert (not b_lambda!199))

(assert (not b_next!55))

(assert tp_is_empty!23)

(assert (not tb!99))

(assert (not tb!103))

(assert (not b_lambda!197))

(assert (not b_lambda!193))

(assert (not b_lambda!181))

(assert b_and!231)

(assert tp_is_empty!25)

(assert (not b_lambda!187))

(assert (not b_lambda!191))

(assert (not tb!97))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!57))

(assert b_and!215)

(assert b_and!229)

(assert (not b_next!61))

(assert (not b_next!55))

(assert b_and!231)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!205 () Bool)

(assert (= b_lambda!193 (or (and start!734 b_free!53) b_lambda!205)))

(declare-fun b_lambda!207 () Bool)

(assert (= b_lambda!201 (or (and start!734 b_free!53) b_lambda!207)))

(declare-fun b_lambda!209 () Bool)

(assert (= b_lambda!191 (or (and start!734 b_free!55) b_lambda!209)))

(declare-fun b_lambda!211 () Bool)

(assert (= b_lambda!189 (or (and start!734 b_free!53) b_lambda!211)))

(declare-fun b_lambda!213 () Bool)

(assert (= b_lambda!197 (or (and start!734 b_free!53) b_lambda!213)))

(declare-fun b_lambda!215 () Bool)

(assert (= b_lambda!199 (or (and start!734 b_free!55) b_lambda!215)))

(declare-fun b_lambda!217 () Bool)

(assert (= b_lambda!203 (or (and start!734 b_free!55) b_lambda!217)))

(declare-fun b_lambda!219 () Bool)

(assert (= b_lambda!195 (or (and start!734 b_free!55) b_lambda!219)))

(push 1)

(assert (not b_next!57))

(assert (not b_lambda!213))

(assert (not b_lambda!217))

(assert (not b_lambda!211))

(assert (not b_lambda!207))

(assert (not b_lambda!183))

(assert b_and!215)

(assert (not b_lambda!205))

(assert b_and!229)

(assert (not b_lambda!209))

(assert (not b_lambda!185))

(assert (not tb!101))

(assert (not b_next!61))

(assert (not b_next!55))

(assert tp_is_empty!23)

(assert (not tb!99))

(assert (not b_lambda!219))

(assert (not tb!103))

(assert (not b_lambda!181))

(assert b_and!231)

(assert tp_is_empty!25)

(assert (not b_lambda!187))

(assert (not b_lambda!215))

(assert (not tb!97))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!57))

(assert b_and!215)

(assert b_and!229)

(assert (not b_next!61))

(assert (not b_next!55))

(assert b_and!231)

(check-sat)

(get-model)

(pop 1)

(assert (=> tb!103 (= result!137 (and tp_is_empty!23 tp_is_empty!25))))

(assert (=> tb!101 (= result!135 (and tp_is_empty!23 tp_is_empty!25))))

(assert (=> tb!99 (= result!133 (and tp_is_empty!23 tp_is_empty!25))))

(assert (=> tb!97 (= result!131 (and tp_is_empty!23 tp_is_empty!25))))

(declare-fun bs!382 () Bool)

(declare-fun s!188 () Bool)

(assert (= bs!382 (and start!734 s!188)))

(assert (=> bs!382 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1937)) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1938)))))))

(declare-fun b_lambda!221 () Bool)

(assert (=> (not b_lambda!221) (not bs!382)))

(declare-fun t!433 () Bool)

(declare-fun tb!121 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!433) tb!121))

(declare-fun result!161 () Bool)

(assert (=> tb!121 (= result!161 tp_is_empty!23)))

(assert (=> bs!382 t!433))

(declare-fun b_and!233 () Bool)

(assert (= b_and!229 (and (=> t!433 result!161) b_and!233)))

(declare-fun b_lambda!223 () Bool)

(assert (=> (not b_lambda!223) (not bs!382)))

(declare-fun t!435 () Bool)

(declare-fun tb!123 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!435) tb!123))

(declare-fun result!163 () Bool)

(assert (=> tb!123 (= result!163 tp_is_empty!23)))

(assert (=> bs!382 t!435))

(declare-fun b_and!235 () Bool)

(assert (= b_and!233 (and (=> t!435 result!163) b_and!235)))

(declare-fun b_lambda!225 () Bool)

(assert (=> (not b_lambda!225) (not bs!382)))

(declare-fun t!437 () Bool)

(declare-fun tb!125 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!437) tb!125))

(declare-fun result!165 () Bool)

(assert (=> tb!125 (= result!165 tp_is_empty!23)))

(assert (=> bs!382 t!437))

(declare-fun b_and!237 () Bool)

(assert (= b_and!235 (and (=> t!437 result!165) b_and!237)))

(declare-fun b_lambda!227 () Bool)

(assert (=> (not b_lambda!227) (not bs!382)))

(assert (=> bs!382 t!429))

(declare-fun b_and!239 () Bool)

(assert (= b_and!237 (and (=> t!429 result!155) b_and!239)))

(declare-fun m!7269 () Bool)

(assert (=> m!7265 m!7269))

(declare-fun m!7271 () Bool)

(assert (=> m!7265 m!7271))

(declare-fun m!7273 () Bool)

(assert (=> m!7265 m!7273))

(assert (=> m!7265 s!188))

(declare-fun bs!383 () Bool)

(declare-fun s!190 () Bool)

(assert (= bs!383 (and start!734 s!190)))

(assert (=> bs!383 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1938)) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1938)))))))

(declare-fun b_lambda!229 () Bool)

(assert (=> (not b_lambda!229) (not bs!383)))

(declare-fun t!439 () Bool)

(declare-fun tb!127 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!439) tb!127))

(declare-fun result!167 () Bool)

(assert (=> tb!127 (= result!167 tp_is_empty!23)))

(assert (=> bs!383 t!439))

(declare-fun b_and!241 () Bool)

(assert (= b_and!239 (and (=> t!439 result!167) b_and!241)))

(declare-fun b_lambda!231 () Bool)

(assert (=> (not b_lambda!231) (not bs!383)))

(declare-fun t!441 () Bool)

(declare-fun tb!129 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!441) tb!129))

(declare-fun result!169 () Bool)

(assert (=> tb!129 (= result!169 tp_is_empty!23)))

(assert (=> bs!383 t!441))

(declare-fun b_and!243 () Bool)

(assert (= b_and!241 (and (=> t!441 result!169) b_and!243)))

(declare-fun b_lambda!233 () Bool)

(assert (=> (not b_lambda!233) (not bs!383)))

(declare-fun t!443 () Bool)

(declare-fun tb!131 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!443) tb!131))

(declare-fun result!171 () Bool)

(assert (=> tb!131 (= result!171 tp_is_empty!23)))

(assert (=> bs!383 t!443))

(declare-fun b_and!245 () Bool)

(assert (= b_and!243 (and (=> t!443 result!171) b_and!245)))

(declare-fun b_lambda!235 () Bool)

(assert (=> (not b_lambda!235) (not bs!383)))

(declare-fun t!445 () Bool)

(declare-fun tb!133 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!445) tb!133))

(declare-fun result!173 () Bool)

(assert (=> tb!133 (= result!173 tp_is_empty!23)))

(assert (=> bs!383 t!445))

(declare-fun b_and!247 () Bool)

(assert (= b_and!245 (and (=> t!445 result!173) b_and!247)))

(declare-fun bs!384 () Bool)

(assert (= bs!384 (and m!7265 m!7253 m!7261)))

(declare-fun m!7275 () Bool)

(assert (=> bs!384 m!7275))

(declare-fun m!7277 () Bool)

(assert (=> bs!384 m!7277))

(declare-fun m!7279 () Bool)

(assert (=> bs!384 m!7279))

(declare-fun m!7281 () Bool)

(assert (=> bs!384 m!7281))

(assert (=> bs!384 s!190))

(declare-fun bs!385 () Bool)

(declare-fun s!192 () Bool)

(assert (= bs!385 (and start!734 s!192)))

(assert (=> bs!385 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_1!8 x!1938)))))))

(declare-fun b_lambda!237 () Bool)

(assert (=> (not b_lambda!237) (not bs!385)))

(declare-fun t!447 () Bool)

(declare-fun tb!135 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!447) tb!135))

(declare-fun result!175 () Bool)

(assert (=> tb!135 (= result!175 tp_is_empty!23)))

(assert (=> bs!385 t!447))

(declare-fun b_and!249 () Bool)

(assert (= b_and!247 (and (=> t!447 result!175) b_and!249)))

(declare-fun b_lambda!239 () Bool)

(assert (=> (not b_lambda!239) (not bs!385)))

(assert (=> bs!385 t!421))

(declare-fun b_and!251 () Bool)

(assert (= b_and!249 (and (=> t!421 result!147) b_and!251)))

(declare-fun b_lambda!241 () Bool)

(assert (=> (not b_lambda!241) (not bs!385)))

(declare-fun t!449 () Bool)

(declare-fun tb!137 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!449) tb!137))

(declare-fun result!177 () Bool)

(assert (=> tb!137 (= result!177 tp_is_empty!23)))

(assert (=> bs!385 t!449))

(declare-fun b_and!253 () Bool)

(assert (= b_and!251 (and (=> t!449 result!177) b_and!253)))

(declare-fun b_lambda!243 () Bool)

(assert (=> (not b_lambda!243) (not bs!385)))

(declare-fun t!451 () Bool)

(declare-fun tb!139 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!451) tb!139))

(declare-fun result!179 () Bool)

(assert (=> tb!139 (= result!179 tp_is_empty!23)))

(assert (=> bs!385 t!451))

(declare-fun b_and!255 () Bool)

(assert (= b_and!253 (and (=> t!451 result!179) b_and!255)))

(declare-fun bs!386 () Bool)

(assert (= bs!386 (and m!7265 m!7257)))

(assert (=> bs!386 m!7257))

(declare-fun m!7283 () Bool)

(assert (=> bs!386 m!7283))

(declare-fun m!7285 () Bool)

(assert (=> bs!386 m!7285))

(declare-fun m!7287 () Bool)

(assert (=> bs!386 m!7287))

(assert (=> bs!386 s!192))

(declare-fun bs!387 () Bool)

(declare-fun s!194 () Bool)

(assert (= bs!387 (and start!734 s!194)))

(assert (=> bs!387 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1938)) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1938)))))))

(declare-fun b_lambda!245 () Bool)

(assert (=> (not b_lambda!245) (not bs!387)))

(declare-fun t!453 () Bool)

(declare-fun tb!141 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!453) tb!141))

(declare-fun result!181 () Bool)

(assert (=> tb!141 (= result!181 tp_is_empty!23)))

(assert (=> bs!387 t!453))

(declare-fun b_and!257 () Bool)

(assert (= b_and!255 (and (=> t!453 result!181) b_and!257)))

(declare-fun b_lambda!247 () Bool)

(assert (=> (not b_lambda!247) (not bs!387)))

(assert (=> bs!387 t!429))

(declare-fun b_and!259 () Bool)

(assert (= b_and!257 (and (=> t!429 result!155) b_and!259)))

(declare-fun b_lambda!249 () Bool)

(assert (=> (not b_lambda!249) (not bs!387)))

(declare-fun t!455 () Bool)

(declare-fun tb!143 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!455) tb!143))

(declare-fun result!183 () Bool)

(assert (=> tb!143 (= result!183 tp_is_empty!23)))

(assert (=> bs!387 t!455))

(declare-fun b_and!261 () Bool)

(assert (= b_and!259 (and (=> t!455 result!183) b_and!261)))

(declare-fun b_lambda!251 () Bool)

(assert (=> (not b_lambda!251) (not bs!387)))

(assert (=> bs!387 t!445))

(declare-fun b_and!263 () Bool)

(assert (= b_and!261 (and (=> t!445 result!173) b_and!263)))

(declare-fun m!7289 () Bool)

(assert (=> m!7265 m!7289))

(assert (=> m!7265 m!7279))

(declare-fun m!7291 () Bool)

(assert (=> m!7265 m!7291))

(assert (=> m!7265 s!194))

(declare-fun bs!388 () Bool)

(declare-fun s!196 () Bool)

(assert (= bs!388 (and start!734 s!196)))

(assert (=> bs!388 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1937)) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1939)))))))

(declare-fun b_lambda!253 () Bool)

(assert (=> (not b_lambda!253) (not bs!388)))

(declare-fun t!457 () Bool)

(declare-fun tb!145 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!457) tb!145))

(declare-fun result!185 () Bool)

(assert (=> tb!145 (= result!185 tp_is_empty!23)))

(assert (=> bs!388 t!457))

(declare-fun b_and!265 () Bool)

(assert (= b_and!263 (and (=> t!457 result!185) b_and!265)))

(declare-fun b_lambda!255 () Bool)

(assert (=> (not b_lambda!255) (not bs!388)))

(declare-fun t!459 () Bool)

(declare-fun tb!147 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!459) tb!147))

(declare-fun result!187 () Bool)

(assert (=> tb!147 (= result!187 tp_is_empty!23)))

(assert (=> bs!388 t!459))

(declare-fun b_and!267 () Bool)

(assert (= b_and!265 (and (=> t!459 result!187) b_and!267)))

(declare-fun b_lambda!257 () Bool)

(assert (=> (not b_lambda!257) (not bs!388)))

(declare-fun t!461 () Bool)

(declare-fun tb!149 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!461) tb!149))

(declare-fun result!189 () Bool)

(assert (=> tb!149 (= result!189 tp_is_empty!23)))

(assert (=> bs!388 t!461))

(declare-fun b_and!269 () Bool)

(assert (= b_and!267 (and (=> t!461 result!189) b_and!269)))

(declare-fun b_lambda!259 () Bool)

(assert (=> (not b_lambda!259) (not bs!388)))

(declare-fun t!463 () Bool)

(declare-fun tb!151 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!463) tb!151))

(declare-fun result!191 () Bool)

(assert (=> tb!151 (= result!191 tp_is_empty!23)))

(assert (=> bs!388 t!463))

(declare-fun b_and!271 () Bool)

(assert (= b_and!269 (and (=> t!463 result!191) b_and!271)))

(declare-fun bs!389 () Bool)

(assert (= bs!389 (and m!7261 m!7257)))

(declare-fun m!7293 () Bool)

(assert (=> bs!389 m!7293))

(declare-fun m!7295 () Bool)

(assert (=> bs!389 m!7295))

(declare-fun m!7297 () Bool)

(assert (=> bs!389 m!7297))

(declare-fun m!7299 () Bool)

(assert (=> bs!389 m!7299))

(assert (=> bs!389 s!196))

(declare-fun bs!390 () Bool)

(declare-fun s!198 () Bool)

(assert (= bs!390 (and start!734 s!198)))

(assert (=> bs!390 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1938)) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1939)))))))

(declare-fun b_lambda!261 () Bool)

(assert (=> (not b_lambda!261) (not bs!390)))

(declare-fun t!465 () Bool)

(declare-fun tb!153 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!465) tb!153))

(declare-fun result!193 () Bool)

(assert (=> tb!153 (= result!193 tp_is_empty!23)))

(assert (=> bs!390 t!465))

(declare-fun b_and!273 () Bool)

(assert (= b_and!271 (and (=> t!465 result!193) b_and!273)))

(declare-fun b_lambda!263 () Bool)

(assert (=> (not b_lambda!263) (not bs!390)))

(assert (=> bs!390 t!445))

(declare-fun b_and!275 () Bool)

(assert (= b_and!273 (and (=> t!445 result!173) b_and!275)))

(declare-fun b_lambda!265 () Bool)

(assert (=> (not b_lambda!265) (not bs!390)))

(declare-fun t!467 () Bool)

(declare-fun tb!155 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!467) tb!155))

(declare-fun result!195 () Bool)

(assert (=> tb!155 (= result!195 tp_is_empty!23)))

(assert (=> bs!390 t!467))

(declare-fun b_and!277 () Bool)

(assert (= b_and!275 (and (=> t!467 result!195) b_and!277)))

(declare-fun b_lambda!267 () Bool)

(assert (=> (not b_lambda!267) (not bs!390)))

(assert (=> bs!390 t!425))

(declare-fun b_and!279 () Bool)

(assert (= b_and!277 (and (=> t!425 result!151) b_and!279)))

(assert (=> m!7261 m!7279))

(declare-fun m!7301 () Bool)

(assert (=> m!7261 m!7301))

(declare-fun m!7303 () Bool)

(assert (=> m!7261 m!7303))

(assert (=> m!7261 s!198))

(declare-fun bs!391 () Bool)

(declare-fun s!200 () Bool)

(assert (= bs!391 (and start!734 s!200)))

(assert (=> bs!391 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!269 () Bool)

(assert (=> (not b_lambda!269) (not bs!391)))

(declare-fun t!469 () Bool)

(declare-fun tb!157 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!469) tb!157))

(declare-fun result!197 () Bool)

(assert (=> tb!157 (= result!197 tp_is_empty!23)))

(assert (=> bs!391 t!469))

(declare-fun b_and!281 () Bool)

(assert (= b_and!279 (and (=> t!469 result!197) b_and!281)))

(declare-fun b_lambda!271 () Bool)

(assert (=> (not b_lambda!271) (not bs!391)))

(declare-fun t!471 () Bool)

(declare-fun tb!159 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!471) tb!159))

(declare-fun result!199 () Bool)

(assert (=> tb!159 (= result!199 tp_is_empty!23)))

(assert (=> bs!391 t!471))

(declare-fun b_and!283 () Bool)

(assert (= b_and!281 (and (=> t!471 result!199) b_and!283)))

(declare-fun b_lambda!273 () Bool)

(assert (=> (not b_lambda!273) (not bs!391)))

(declare-fun t!473 () Bool)

(declare-fun tb!161 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!473) tb!161))

(declare-fun result!201 () Bool)

(assert (=> tb!161 (= result!201 tp_is_empty!23)))

(assert (=> bs!391 t!473))

(declare-fun b_and!285 () Bool)

(assert (= b_and!283 (and (=> t!473 result!201) b_and!285)))

(declare-fun b_lambda!275 () Bool)

(assert (=> (not b_lambda!275) (not bs!391)))

(declare-fun t!475 () Bool)

(declare-fun tb!163 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!475) tb!163))

(declare-fun result!203 () Bool)

(assert (=> tb!163 (= result!203 tp_is_empty!23)))

(assert (=> bs!391 t!475))

(declare-fun b_and!287 () Bool)

(assert (= b_and!285 (and (=> t!475 result!203) b_and!287)))

(declare-fun bs!392 () Bool)

(assert (= bs!392 (and m!7257 m!7253)))

(declare-fun m!7305 () Bool)

(assert (=> bs!392 m!7305))

(declare-fun m!7307 () Bool)

(assert (=> bs!392 m!7307))

(declare-fun m!7309 () Bool)

(assert (=> bs!392 m!7309))

(declare-fun m!7311 () Bool)

(assert (=> bs!392 m!7311))

(assert (=> bs!392 s!200))

(declare-fun bs!393 () Bool)

(declare-fun s!202 () Bool)

(assert (= bs!393 (and start!734 s!202)))

(assert (=> bs!393 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1939)) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 x!1939) (_1!8 x!1939)))))))

(declare-fun b_lambda!277 () Bool)

(assert (=> (not b_lambda!277) (not bs!393)))

(declare-fun t!477 () Bool)

(declare-fun tb!165 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!477) tb!165))

(declare-fun result!205 () Bool)

(assert (=> tb!165 (= result!205 tp_is_empty!23)))

(assert (=> bs!393 t!477))

(declare-fun b_and!289 () Bool)

(assert (= b_and!287 (and (=> t!477 result!205) b_and!289)))

(declare-fun b_lambda!279 () Bool)

(assert (=> (not b_lambda!279) (not bs!393)))

(assert (=> bs!393 t!463))

(declare-fun b_and!291 () Bool)

(assert (= b_and!289 (and (=> t!463 result!191) b_and!291)))

(declare-fun b_lambda!281 () Bool)

(assert (=> (not b_lambda!281) (not bs!393)))

(declare-fun t!479 () Bool)

(declare-fun tb!167 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!479) tb!167))

(declare-fun result!207 () Bool)

(assert (=> tb!167 (= result!207 tp_is_empty!23)))

(assert (=> bs!393 t!479))

(declare-fun b_and!293 () Bool)

(assert (= b_and!291 (and (=> t!479 result!207) b_and!293)))

(declare-fun b_lambda!283 () Bool)

(assert (=> (not b_lambda!283) (not bs!393)))

(declare-fun t!481 () Bool)

(declare-fun tb!169 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!481) tb!169))

(declare-fun result!209 () Bool)

(assert (=> tb!169 (= result!209 tp_is_empty!23)))

(assert (=> bs!393 t!481))

(declare-fun b_and!295 () Bool)

(assert (= b_and!293 (and (=> t!481 result!209) b_and!295)))

(assert (=> bs!392 m!7297))

(declare-fun m!7313 () Bool)

(assert (=> bs!392 m!7313))

(declare-fun m!7315 () Bool)

(assert (=> bs!392 m!7315))

(declare-fun m!7317 () Bool)

(assert (=> bs!392 m!7317))

(assert (=> bs!392 s!202))

(declare-fun bs!394 () Bool)

(declare-fun s!204 () Bool)

(assert (= bs!394 (and start!734 s!204)))

(assert (=> bs!394 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!285 () Bool)

(assert (=> (not b_lambda!285) (not bs!394)))

(declare-fun t!483 () Bool)

(declare-fun tb!171 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!483) tb!171))

(declare-fun result!211 () Bool)

(assert (=> tb!171 (= result!211 tp_is_empty!23)))

(assert (=> bs!394 t!483))

(declare-fun b_and!297 () Bool)

(assert (= b_and!295 (and (=> t!483 result!211) b_and!297)))

(declare-fun b_lambda!287 () Bool)

(assert (=> (not b_lambda!287) (not bs!394)))

(assert (=> bs!394 t!421))

(declare-fun b_and!299 () Bool)

(assert (= b_and!297 (and (=> t!421 result!147) b_and!299)))

(declare-fun b_lambda!289 () Bool)

(assert (=> (not b_lambda!289) (not bs!394)))

(declare-fun t!485 () Bool)

(declare-fun tb!173 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!485) tb!173))

(declare-fun result!213 () Bool)

(assert (=> tb!173 (= result!213 tp_is_empty!23)))

(assert (=> bs!394 t!485))

(declare-fun b_and!301 () Bool)

(assert (= b_and!299 (and (=> t!485 result!213) b_and!301)))

(declare-fun b_lambda!291 () Bool)

(assert (=> (not b_lambda!291) (not bs!394)))

(declare-fun t!487 () Bool)

(declare-fun tb!175 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!487) tb!175))

(declare-fun result!215 () Bool)

(assert (=> tb!175 (= result!215 tp_is_empty!23)))

(assert (=> bs!394 t!487))

(declare-fun b_and!303 () Bool)

(assert (= b_and!301 (and (=> t!487 result!215) b_and!303)))

(declare-fun m!7319 () Bool)

(assert (=> m!7257 m!7319))

(declare-fun m!7321 () Bool)

(assert (=> m!7257 m!7321))

(declare-fun m!7323 () Bool)

(assert (=> m!7257 m!7323))

(assert (=> m!7257 s!204))

(declare-fun bs!395 () Bool)

(declare-fun s!206 () Bool)

(assert (= bs!395 (and start!734 s!206)))

(assert (=> bs!395 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1937)) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1938)))))))

(declare-fun b_lambda!293 () Bool)

(assert (=> (not b_lambda!293) (not bs!395)))

(declare-fun t!489 () Bool)

(declare-fun tb!177 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!489) tb!177))

(declare-fun result!217 () Bool)

(assert (=> tb!177 (= result!217 tp_is_empty!23)))

(assert (=> bs!395 t!489))

(declare-fun b_and!305 () Bool)

(assert (= b_and!303 (and (=> t!489 result!217) b_and!305)))

(declare-fun b_lambda!295 () Bool)

(assert (=> (not b_lambda!295) (not bs!395)))

(assert (=> bs!395 t!459))

(declare-fun b_and!307 () Bool)

(assert (= b_and!305 (and (=> t!459 result!187) b_and!307)))

(declare-fun b_lambda!297 () Bool)

(assert (=> (not b_lambda!297) (not bs!395)))

(declare-fun t!491 () Bool)

(declare-fun tb!179 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!491) tb!179))

(declare-fun result!219 () Bool)

(assert (=> tb!179 (= result!219 tp_is_empty!23)))

(assert (=> bs!395 t!491))

(declare-fun b_and!309 () Bool)

(assert (= b_and!307 (and (=> t!491 result!219) b_and!309)))

(declare-fun b_lambda!299 () Bool)

(assert (=> (not b_lambda!299) (not bs!395)))

(assert (=> bs!395 t!429))

(declare-fun b_and!311 () Bool)

(assert (= b_and!309 (and (=> t!429 result!155) b_and!311)))

(declare-fun bs!396 () Bool)

(assert (= bs!396 (and m!7265 m!7261 m!7257)))

(assert (=> bs!396 m!7293))

(declare-fun m!7325 () Bool)

(assert (=> bs!396 m!7325))

(assert (=> bs!396 m!7265))

(declare-fun m!7327 () Bool)

(assert (=> bs!396 m!7327))

(assert (=> bs!396 s!206))

(declare-fun bs!397 () Bool)

(declare-fun s!208 () Bool)

(assert (= bs!397 (and start!734 s!208)))

(assert (=> bs!397 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1937)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!301 () Bool)

(assert (=> (not b_lambda!301) (not bs!397)))

(declare-fun t!493 () Bool)

(declare-fun tb!181 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!493) tb!181))

(declare-fun result!221 () Bool)

(assert (=> tb!181 (= result!221 tp_is_empty!23)))

(assert (=> bs!397 t!493))

(declare-fun b_and!313 () Bool)

(assert (= b_and!311 (and (=> t!493 result!221) b_and!313)))

(declare-fun b_lambda!303 () Bool)

(assert (=> (not b_lambda!303) (not bs!397)))

(declare-fun t!495 () Bool)

(declare-fun tb!183 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!495) tb!183))

(declare-fun result!223 () Bool)

(assert (=> tb!183 (= result!223 tp_is_empty!23)))

(assert (=> bs!397 t!495))

(declare-fun b_and!315 () Bool)

(assert (= b_and!313 (and (=> t!495 result!223) b_and!315)))

(declare-fun b_lambda!305 () Bool)

(assert (=> (not b_lambda!305) (not bs!397)))

(declare-fun t!497 () Bool)

(declare-fun tb!185 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!497) tb!185))

(declare-fun result!225 () Bool)

(assert (=> tb!185 (= result!225 tp_is_empty!23)))

(assert (=> bs!397 t!497))

(declare-fun b_and!317 () Bool)

(assert (= b_and!315 (and (=> t!497 result!225) b_and!317)))

(declare-fun b_lambda!307 () Bool)

(assert (=> (not b_lambda!307) (not bs!397)))

(assert (=> bs!397 t!421))

(declare-fun b_and!319 () Bool)

(assert (= b_and!317 (and (=> t!421 result!147) b_and!319)))

(declare-fun m!7329 () Bool)

(assert (=> bs!392 m!7329))

(declare-fun m!7331 () Bool)

(assert (=> bs!392 m!7331))

(assert (=> bs!392 m!7257))

(declare-fun m!7333 () Bool)

(assert (=> bs!392 m!7333))

(assert (=> bs!392 s!208))

(assert (=> bs!386 s!188))

(declare-fun bs!398 () Bool)

(declare-fun s!210 () Bool)

(assert (= bs!398 (and start!734 s!210)))

(assert (=> bs!398 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1939)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 x!1939) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!309 () Bool)

(assert (=> (not b_lambda!309) (not bs!398)))

(declare-fun t!499 () Bool)

(declare-fun tb!187 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!499) tb!187))

(declare-fun result!227 () Bool)

(assert (=> tb!187 (= result!227 tp_is_empty!23)))

(assert (=> bs!398 t!499))

(declare-fun b_and!321 () Bool)

(assert (= b_and!319 (and (=> t!499 result!227) b_and!321)))

(declare-fun b_lambda!311 () Bool)

(assert (=> (not b_lambda!311) (not bs!398)))

(assert (=> bs!398 t!463))

(declare-fun b_and!323 () Bool)

(assert (= b_and!321 (and (=> t!463 result!191) b_and!323)))

(declare-fun b_lambda!313 () Bool)

(assert (=> (not b_lambda!313) (not bs!398)))

(declare-fun t!501 () Bool)

(declare-fun tb!189 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!501) tb!189))

(declare-fun result!229 () Bool)

(assert (=> tb!189 (= result!229 tp_is_empty!23)))

(assert (=> bs!398 t!501))

(declare-fun b_and!325 () Bool)

(assert (= b_and!323 (and (=> t!501 result!229) b_and!325)))

(declare-fun b_lambda!315 () Bool)

(assert (=> (not b_lambda!315) (not bs!398)))

(declare-fun t!503 () Bool)

(declare-fun tb!191 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!503) tb!191))

(declare-fun result!231 () Bool)

(assert (=> tb!191 (= result!231 tp_is_empty!23)))

(assert (=> bs!398 t!503))

(declare-fun b_and!327 () Bool)

(assert (= b_and!325 (and (=> t!503 result!231) b_and!327)))

(assert (=> bs!392 m!7297))

(declare-fun m!7335 () Bool)

(assert (=> bs!392 m!7335))

(declare-fun m!7337 () Bool)

(assert (=> bs!392 m!7337))

(declare-fun m!7339 () Bool)

(assert (=> bs!392 m!7339))

(assert (=> bs!392 s!210))

(declare-fun bs!399 () Bool)

(declare-fun s!212 () Bool)

(assert (= bs!399 (and start!734 s!212)))

(assert (=> bs!399 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1938)) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1938)))))))

(declare-fun b_lambda!317 () Bool)

(assert (=> (not b_lambda!317) (not bs!399)))

(declare-fun t!505 () Bool)

(declare-fun tb!193 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!505) tb!193))

(declare-fun result!233 () Bool)

(assert (=> tb!193 (= result!233 tp_is_empty!23)))

(assert (=> bs!399 t!505))

(declare-fun b_and!329 () Bool)

(assert (= b_and!327 (and (=> t!505 result!233) b_and!329)))

(declare-fun b_lambda!319 () Bool)

(assert (=> (not b_lambda!319) (not bs!399)))

(assert (=> bs!399 t!445))

(declare-fun b_and!331 () Bool)

(assert (= b_and!329 (and (=> t!445 result!173) b_and!331)))

(declare-fun b_lambda!321 () Bool)

(assert (=> (not b_lambda!321) (not bs!399)))

(declare-fun t!507 () Bool)

(declare-fun tb!195 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!507) tb!195))

(declare-fun result!235 () Bool)

(assert (=> tb!195 (= result!235 tp_is_empty!23)))

(assert (=> bs!399 t!507))

(declare-fun b_and!333 () Bool)

(assert (= b_and!331 (and (=> t!507 result!235) b_and!333)))

(declare-fun bs!400 () Bool)

(assert (= bs!400 (and m!7265 m!7261)))

(assert (=> bs!400 m!7279))

(declare-fun m!7341 () Bool)

(assert (=> bs!400 m!7341))

(assert (=> bs!400 m!7279))

(declare-fun m!7343 () Bool)

(assert (=> bs!400 m!7343))

(assert (=> bs!400 s!212))

(declare-fun bs!401 () Bool)

(declare-fun s!214 () Bool)

(assert (= bs!401 (and start!734 s!214)))

(assert (=> bs!401 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1939)))))))

(declare-fun b_lambda!323 () Bool)

(assert (=> (not b_lambda!323) (not bs!401)))

(declare-fun t!509 () Bool)

(declare-fun tb!197 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!509) tb!197))

(declare-fun result!237 () Bool)

(assert (=> tb!197 (= result!237 tp_is_empty!23)))

(assert (=> bs!401 t!509))

(declare-fun b_and!335 () Bool)

(assert (= b_and!333 (and (=> t!509 result!237) b_and!335)))

(declare-fun b_lambda!325 () Bool)

(assert (=> (not b_lambda!325) (not bs!401)))

(declare-fun t!511 () Bool)

(declare-fun tb!199 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!511) tb!199))

(declare-fun result!239 () Bool)

(assert (=> tb!199 (= result!239 tp_is_empty!23)))

(assert (=> bs!401 t!511))

(declare-fun b_and!337 () Bool)

(assert (= b_and!335 (and (=> t!511 result!239) b_and!337)))

(declare-fun b_lambda!327 () Bool)

(assert (=> (not b_lambda!327) (not bs!401)))

(declare-fun t!513 () Bool)

(declare-fun tb!201 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!513) tb!201))

(declare-fun result!241 () Bool)

(assert (=> tb!201 (= result!241 tp_is_empty!23)))

(assert (=> bs!401 t!513))

(declare-fun b_and!339 () Bool)

(assert (= b_and!337 (and (=> t!513 result!241) b_and!339)))

(declare-fun b_lambda!329 () Bool)

(assert (=> (not b_lambda!329) (not bs!401)))

(assert (=> bs!401 t!417))

(declare-fun b_and!341 () Bool)

(assert (= b_and!339 (and (=> t!417 result!139) b_and!341)))

(declare-fun m!7345 () Bool)

(assert (=> m!7253 m!7345))

(declare-fun m!7347 () Bool)

(assert (=> m!7253 m!7347))

(declare-fun m!7349 () Bool)

(assert (=> m!7253 m!7349))

(assert (=> m!7253 s!214))

(declare-fun bs!402 () Bool)

(declare-fun s!216 () Bool)

(assert (= bs!402 (and start!734 s!216)))

(assert (=> bs!402 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1937)) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1939)))))))

(declare-fun b_lambda!331 () Bool)

(assert (=> (not b_lambda!331) (not bs!402)))

(declare-fun t!515 () Bool)

(declare-fun tb!203 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!515) tb!203))

(declare-fun result!243 () Bool)

(assert (=> tb!203 (= result!243 tp_is_empty!23)))

(assert (=> bs!402 t!515))

(declare-fun b_and!343 () Bool)

(assert (= b_and!341 (and (=> t!515 result!243) b_and!343)))

(declare-fun b_lambda!333 () Bool)

(assert (=> (not b_lambda!333) (not bs!402)))

(assert (=> bs!402 t!435))

(declare-fun b_and!345 () Bool)

(assert (= b_and!343 (and (=> t!435 result!163) b_and!345)))

(declare-fun b_lambda!335 () Bool)

(assert (=> (not b_lambda!335) (not bs!402)))

(declare-fun t!517 () Bool)

(declare-fun tb!205 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!517) tb!205))

(declare-fun result!245 () Bool)

(assert (=> tb!205 (= result!245 tp_is_empty!23)))

(assert (=> bs!402 t!517))

(declare-fun b_and!347 () Bool)

(assert (= b_and!345 (and (=> t!517 result!245) b_and!347)))

(declare-fun b_lambda!337 () Bool)

(assert (=> (not b_lambda!337) (not bs!402)))

(assert (=> bs!402 t!463))

(declare-fun b_and!349 () Bool)

(assert (= b_and!347 (and (=> t!463 result!191) b_and!349)))

(assert (=> bs!392 m!7269))

(declare-fun m!7351 () Bool)

(assert (=> bs!392 m!7351))

(assert (=> bs!392 m!7297))

(declare-fun m!7353 () Bool)

(assert (=> bs!392 m!7353))

(assert (=> bs!392 s!216))

(declare-fun bs!403 () Bool)

(declare-fun s!218 () Bool)

(assert (= bs!403 (and start!734 s!218)))

(assert (=> bs!403 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1938)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!339 () Bool)

(assert (=> (not b_lambda!339) (not bs!403)))

(declare-fun t!519 () Bool)

(declare-fun tb!207 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!519) tb!207))

(declare-fun result!247 () Bool)

(assert (=> tb!207 (= result!247 tp_is_empty!23)))

(assert (=> bs!403 t!519))

(declare-fun b_and!351 () Bool)

(assert (= b_and!349 (and (=> t!519 result!247) b_and!351)))

(declare-fun b_lambda!341 () Bool)

(assert (=> (not b_lambda!341) (not bs!403)))

(assert (=> bs!403 t!445))

(declare-fun b_and!353 () Bool)

(assert (= b_and!351 (and (=> t!445 result!173) b_and!353)))

(declare-fun b_lambda!343 () Bool)

(assert (=> (not b_lambda!343) (not bs!403)))

(declare-fun t!521 () Bool)

(declare-fun tb!209 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!521) tb!209))

(declare-fun result!249 () Bool)

(assert (=> tb!209 (= result!249 tp_is_empty!23)))

(assert (=> bs!403 t!521))

(declare-fun b_and!355 () Bool)

(assert (= b_and!353 (and (=> t!521 result!249) b_and!355)))

(declare-fun b_lambda!345 () Bool)

(assert (=> (not b_lambda!345) (not bs!403)))

(declare-fun t!523 () Bool)

(declare-fun tb!211 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!523) tb!211))

(declare-fun result!251 () Bool)

(assert (=> tb!211 (= result!251 tp_is_empty!23)))

(assert (=> bs!403 t!523))

(declare-fun b_and!357 () Bool)

(assert (= b_and!355 (and (=> t!523 result!251) b_and!357)))

(assert (=> bs!389 m!7279))

(declare-fun m!7355 () Bool)

(assert (=> bs!389 m!7355))

(declare-fun m!7357 () Bool)

(assert (=> bs!389 m!7357))

(declare-fun m!7359 () Bool)

(assert (=> bs!389 m!7359))

(assert (=> bs!389 s!218))

(assert (=> bs!389 s!202))

(declare-fun bs!404 () Bool)

(declare-fun s!220 () Bool)

(assert (= bs!404 (and start!734 s!220)))

(assert (=> bs!404 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1939)) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 x!1939) (_1!8 x!1938)))))))

(declare-fun b_lambda!347 () Bool)

(assert (=> (not b_lambda!347) (not bs!404)))

(declare-fun t!525 () Bool)

(declare-fun tb!213 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!525) tb!213))

(declare-fun result!253 () Bool)

(assert (=> tb!213 (= result!253 tp_is_empty!23)))

(assert (=> bs!404 t!525))

(declare-fun b_and!359 () Bool)

(assert (= b_and!357 (and (=> t!525 result!253) b_and!359)))

(declare-fun b_lambda!349 () Bool)

(assert (=> (not b_lambda!349) (not bs!404)))

(assert (=> bs!404 t!463))

(declare-fun b_and!361 () Bool)

(assert (= b_and!359 (and (=> t!463 result!191) b_and!361)))

(declare-fun b_lambda!351 () Bool)

(assert (=> (not b_lambda!351) (not bs!404)))

(declare-fun t!527 () Bool)

(declare-fun tb!215 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!527) tb!215))

(declare-fun result!255 () Bool)

(assert (=> tb!215 (= result!255 tp_is_empty!23)))

(assert (=> bs!404 t!527))

(declare-fun b_and!363 () Bool)

(assert (= b_and!361 (and (=> t!527 result!255) b_and!363)))

(declare-fun b_lambda!353 () Bool)

(assert (=> (not b_lambda!353) (not bs!404)))

(declare-fun t!529 () Bool)

(declare-fun tb!217 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!529) tb!217))

(declare-fun result!257 () Bool)

(assert (=> tb!217 (= result!257 tp_is_empty!23)))

(assert (=> bs!404 t!529))

(declare-fun b_and!365 () Bool)

(assert (= b_and!363 (and (=> t!529 result!257) b_and!365)))

(assert (=> bs!384 m!7297))

(declare-fun m!7361 () Bool)

(assert (=> bs!384 m!7361))

(declare-fun m!7363 () Bool)

(assert (=> bs!384 m!7363))

(declare-fun m!7365 () Bool)

(assert (=> bs!384 m!7365))

(assert (=> bs!384 s!220))

(declare-fun bs!405 () Bool)

(assert (= bs!405 (and m!7265 m!7253)))

(assert (=> bs!405 s!190))

(assert (=> bs!396 s!194))

(assert (=> bs!386 s!194))

(declare-fun bs!406 () Bool)

(declare-fun s!222 () Bool)

(assert (= bs!406 (and start!734 s!222)))

(assert (=> bs!406 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1939)) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 x!1939) (_1!8 x!1938)))))))

(declare-fun b_lambda!355 () Bool)

(assert (=> (not b_lambda!355) (not bs!406)))

(declare-fun t!531 () Bool)

(declare-fun tb!219 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!531) tb!219))

(declare-fun result!259 () Bool)

(assert (=> tb!219 (= result!259 tp_is_empty!23)))

(assert (=> bs!406 t!531))

(declare-fun b_and!367 () Bool)

(assert (= b_and!365 (and (=> t!531 result!259) b_and!367)))

(declare-fun b_lambda!357 () Bool)

(assert (=> (not b_lambda!357) (not bs!406)))

(assert (=> bs!406 t!425))

(declare-fun b_and!369 () Bool)

(assert (= b_and!367 (and (=> t!425 result!151) b_and!369)))

(declare-fun b_lambda!359 () Bool)

(assert (=> (not b_lambda!359) (not bs!406)))

(declare-fun t!533 () Bool)

(declare-fun tb!221 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!533) tb!221))

(declare-fun result!261 () Bool)

(assert (=> tb!221 (= result!261 tp_is_empty!23)))

(assert (=> bs!406 t!533))

(declare-fun b_and!371 () Bool)

(assert (= b_and!369 (and (=> t!533 result!261) b_and!371)))

(declare-fun b_lambda!361 () Bool)

(assert (=> (not b_lambda!361) (not bs!406)))

(assert (=> bs!406 t!529))

(declare-fun b_and!373 () Bool)

(assert (= b_and!371 (and (=> t!529 result!257) b_and!373)))

(assert (=> bs!384 m!7261))

(declare-fun m!7367 () Bool)

(assert (=> bs!384 m!7367))

(assert (=> bs!384 m!7363))

(declare-fun m!7369 () Bool)

(assert (=> bs!384 m!7369))

(assert (=> bs!384 s!222))

(declare-fun bs!407 () Bool)

(declare-fun s!224 () Bool)

(assert (= bs!407 (and start!734 s!224)))

(assert (=> bs!407 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1938)))))))

(declare-fun b_lambda!363 () Bool)

(assert (=> (not b_lambda!363) (not bs!407)))

(declare-fun t!535 () Bool)

(declare-fun tb!223 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!535) tb!223))

(declare-fun result!263 () Bool)

(assert (=> tb!223 (= result!263 tp_is_empty!23)))

(assert (=> bs!407 t!535))

(declare-fun b_and!375 () Bool)

(assert (= b_and!373 (and (=> t!535 result!263) b_and!375)))

(declare-fun b_lambda!365 () Bool)

(assert (=> (not b_lambda!365) (not bs!407)))

(declare-fun t!537 () Bool)

(declare-fun tb!225 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!537) tb!225))

(declare-fun result!265 () Bool)

(assert (=> tb!225 (= result!265 tp_is_empty!23)))

(assert (=> bs!407 t!537))

(declare-fun b_and!377 () Bool)

(assert (= b_and!375 (and (=> t!537 result!265) b_and!377)))

(declare-fun b_lambda!367 () Bool)

(assert (=> (not b_lambda!367) (not bs!407)))

(declare-fun t!539 () Bool)

(declare-fun tb!227 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!539) tb!227))

(declare-fun result!267 () Bool)

(assert (=> tb!227 (= result!267 tp_is_empty!23)))

(assert (=> bs!407 t!539))

(declare-fun b_and!379 () Bool)

(assert (= b_and!377 (and (=> t!539 result!267) b_and!379)))

(declare-fun b_lambda!369 () Bool)

(assert (=> (not b_lambda!369) (not bs!407)))

(assert (=> bs!407 t!441))

(declare-fun b_and!381 () Bool)

(assert (= b_and!379 (and (=> t!441 result!169) b_and!381)))

(declare-fun m!7371 () Bool)

(assert (=> bs!384 m!7371))

(declare-fun m!7373 () Bool)

(assert (=> bs!384 m!7373))

(assert (=> bs!384 m!7275))

(declare-fun m!7375 () Bool)

(assert (=> bs!384 m!7375))

(assert (=> bs!384 s!224))

(declare-fun bs!408 () Bool)

(declare-fun s!226 () Bool)

(assert (= bs!408 (and start!734 s!226)))

(assert (=> bs!408 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!371 () Bool)

(assert (=> (not b_lambda!371) (not bs!408)))

(declare-fun t!541 () Bool)

(declare-fun tb!229 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!541) tb!229))

(declare-fun result!269 () Bool)

(assert (=> tb!229 (= result!269 tp_is_empty!23)))

(assert (=> bs!408 t!541))

(declare-fun b_and!383 () Bool)

(assert (= b_and!381 (and (=> t!541 result!269) b_and!383)))

(declare-fun b_lambda!373 () Bool)

(assert (=> (not b_lambda!373) (not bs!408)))

(assert (=> bs!408 t!511))

(declare-fun b_and!385 () Bool)

(assert (= b_and!383 (and (=> t!511 result!239) b_and!385)))

(declare-fun b_lambda!375 () Bool)

(assert (=> (not b_lambda!375) (not bs!408)))

(declare-fun t!543 () Bool)

(declare-fun tb!231 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!543) tb!231))

(declare-fun result!271 () Bool)

(assert (=> tb!231 (= result!271 tp_is_empty!23)))

(assert (=> bs!408 t!543))

(declare-fun b_and!387 () Bool)

(assert (= b_and!385 (and (=> t!543 result!271) b_and!387)))

(declare-fun b_lambda!377 () Bool)

(assert (=> (not b_lambda!377) (not bs!408)))

(assert (=> bs!408 t!475))

(declare-fun b_and!389 () Bool)

(assert (= b_and!387 (and (=> t!475 result!203) b_and!389)))

(assert (=> bs!392 m!7345))

(declare-fun m!7377 () Bool)

(assert (=> bs!392 m!7377))

(assert (=> bs!392 m!7309))

(declare-fun m!7379 () Bool)

(assert (=> bs!392 m!7379))

(assert (=> bs!392 s!226))

(declare-fun bs!409 () Bool)

(declare-fun s!228 () Bool)

(assert (= bs!409 (and start!734 s!228)))

(assert (=> bs!409 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1937)) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1939)))))))

(declare-fun b_lambda!379 () Bool)

(assert (=> (not b_lambda!379) (not bs!409)))

(declare-fun t!545 () Bool)

(declare-fun tb!233 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!545) tb!233))

(declare-fun result!273 () Bool)

(assert (=> tb!233 (= result!273 tp_is_empty!23)))

(assert (=> bs!409 t!545))

(declare-fun b_and!391 () Bool)

(assert (= b_and!389 (and (=> t!545 result!273) b_and!391)))

(declare-fun b_lambda!381 () Bool)

(assert (=> (not b_lambda!381) (not bs!409)))

(assert (=> bs!409 t!495))

(declare-fun b_and!393 () Bool)

(assert (= b_and!391 (and (=> t!495 result!223) b_and!393)))

(declare-fun b_lambda!383 () Bool)

(assert (=> (not b_lambda!383) (not bs!409)))

(declare-fun t!547 () Bool)

(declare-fun tb!235 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!547) tb!235))

(declare-fun result!275 () Bool)

(assert (=> tb!235 (= result!275 tp_is_empty!23)))

(assert (=> bs!409 t!547))

(declare-fun b_and!395 () Bool)

(assert (= b_and!393 (and (=> t!547 result!275) b_and!395)))

(declare-fun b_lambda!385 () Bool)

(assert (=> (not b_lambda!385) (not bs!409)))

(assert (=> bs!409 t!463))

(declare-fun b_and!397 () Bool)

(assert (= b_and!395 (and (=> t!463 result!191) b_and!397)))

(assert (=> bs!392 m!7329))

(declare-fun m!7381 () Bool)

(assert (=> bs!392 m!7381))

(assert (=> bs!392 m!7297))

(declare-fun m!7383 () Bool)

(assert (=> bs!392 m!7383))

(assert (=> bs!392 s!228))

(assert (=> bs!384 s!228))

(declare-fun bs!410 () Bool)

(declare-fun s!230 () Bool)

(assert (= bs!410 (and start!734 s!230)))

(assert (=> bs!410 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_1!8 x!1938)))))))

(declare-fun b_lambda!387 () Bool)

(assert (=> (not b_lambda!387) (not bs!410)))

(declare-fun t!549 () Bool)

(declare-fun tb!237 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!549) tb!237))

(declare-fun result!277 () Bool)

(assert (=> tb!237 (= result!277 tp_is_empty!23)))

(assert (=> bs!410 t!549))

(declare-fun b_and!399 () Bool)

(assert (= b_and!397 (and (=> t!549 result!277) b_and!399)))

(declare-fun b_lambda!389 () Bool)

(assert (=> (not b_lambda!389) (not bs!410)))

(assert (=> bs!410 t!523))

(declare-fun b_and!401 () Bool)

(assert (= b_and!399 (and (=> t!523 result!251) b_and!401)))

(declare-fun b_lambda!391 () Bool)

(assert (=> (not b_lambda!391) (not bs!410)))

(declare-fun t!551 () Bool)

(declare-fun tb!239 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!551) tb!239))

(declare-fun result!279 () Bool)

(assert (=> tb!239 (= result!279 tp_is_empty!23)))

(assert (=> bs!410 t!551))

(declare-fun b_and!403 () Bool)

(assert (= b_and!401 (and (=> t!551 result!279) b_and!403)))

(declare-fun b_lambda!393 () Bool)

(assert (=> (not b_lambda!393) (not bs!410)))

(assert (=> bs!410 t!451))

(declare-fun b_and!405 () Bool)

(assert (= b_and!403 (and (=> t!451 result!179) b_and!405)))

(assert (=> bs!396 m!7357))

(declare-fun m!7385 () Bool)

(assert (=> bs!396 m!7385))

(assert (=> bs!396 m!7285))

(declare-fun m!7387 () Bool)

(assert (=> bs!396 m!7387))

(assert (=> bs!396 s!230))

(declare-fun bs!411 () Bool)

(declare-fun s!232 () Bool)

(assert (= bs!411 (and start!734 s!232)))

(assert (=> bs!411 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1938)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!395 () Bool)

(assert (=> (not b_lambda!395) (not bs!411)))

(declare-fun t!553 () Bool)

(declare-fun tb!241 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!553) tb!241))

(declare-fun result!281 () Bool)

(assert (=> tb!241 (= result!281 tp_is_empty!23)))

(assert (=> bs!411 t!553))

(declare-fun b_and!407 () Bool)

(assert (= b_and!405 (and (=> t!553 result!281) b_and!407)))

(declare-fun b_lambda!397 () Bool)

(assert (=> (not b_lambda!397) (not bs!411)))

(assert (=> bs!411 t!429))

(declare-fun b_and!409 () Bool)

(assert (= b_and!407 (and (=> t!429 result!155) b_and!409)))

(declare-fun b_lambda!399 () Bool)

(assert (=> (not b_lambda!399) (not bs!411)))

(declare-fun t!555 () Bool)

(declare-fun tb!243 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!555) tb!243))

(declare-fun result!283 () Bool)

(assert (=> tb!243 (= result!283 tp_is_empty!23)))

(assert (=> bs!411 t!555))

(declare-fun b_and!411 () Bool)

(assert (= b_and!409 (and (=> t!555 result!283) b_and!411)))

(declare-fun b_lambda!401 () Bool)

(assert (=> (not b_lambda!401) (not bs!411)))

(assert (=> bs!411 t!523))

(declare-fun b_and!413 () Bool)

(assert (= b_and!411 (and (=> t!523 result!251) b_and!413)))

(assert (=> bs!389 m!7265))

(declare-fun m!7389 () Bool)

(assert (=> bs!389 m!7389))

(assert (=> bs!389 m!7357))

(declare-fun m!7391 () Bool)

(assert (=> bs!389 m!7391))

(assert (=> bs!389 s!232))

(declare-fun bs!412 () Bool)

(declare-fun s!234 () Bool)

(assert (= bs!412 (and start!734 s!234)))

(assert (=> bs!412 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1939)) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 x!1939) (_1!8 x!1939)))))))

(declare-fun b_lambda!403 () Bool)

(assert (=> (not b_lambda!403) (not bs!412)))

(declare-fun t!557 () Bool)

(declare-fun tb!245 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!557) tb!245))

(declare-fun result!285 () Bool)

(assert (=> tb!245 (= result!285 tp_is_empty!23)))

(assert (=> bs!412 t!557))

(declare-fun b_and!415 () Bool)

(assert (= b_and!413 (and (=> t!557 result!285) b_and!415)))

(declare-fun b_lambda!405 () Bool)

(assert (=> (not b_lambda!405) (not bs!412)))

(assert (=> bs!412 t!425))

(declare-fun b_and!417 () Bool)

(assert (= b_and!415 (and (=> t!425 result!151) b_and!417)))

(declare-fun b_lambda!407 () Bool)

(assert (=> (not b_lambda!407) (not bs!412)))

(declare-fun t!559 () Bool)

(declare-fun tb!247 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!559) tb!247))

(declare-fun result!287 () Bool)

(assert (=> tb!247 (= result!287 tp_is_empty!23)))

(assert (=> bs!412 t!559))

(declare-fun b_and!419 () Bool)

(assert (= b_and!417 (and (=> t!559 result!287) b_and!419)))

(declare-fun b_lambda!409 () Bool)

(assert (=> (not b_lambda!409) (not bs!412)))

(assert (=> bs!412 t!481))

(declare-fun b_and!421 () Bool)

(assert (= b_and!419 (and (=> t!481 result!209) b_and!421)))

(declare-fun bs!413 () Bool)

(assert (= bs!413 (and m!7261 m!7253)))

(assert (=> bs!413 m!7261))

(declare-fun m!7393 () Bool)

(assert (=> bs!413 m!7393))

(assert (=> bs!413 m!7315))

(declare-fun m!7395 () Bool)

(assert (=> bs!413 m!7395))

(assert (=> bs!413 s!234))

(assert (=> bs!384 s!202))

(declare-fun bs!414 () Bool)

(declare-fun s!236 () Bool)

(assert (= bs!414 (and start!734 s!236)))

(assert (=> bs!414 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1937)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!411 () Bool)

(assert (=> (not b_lambda!411) (not bs!414)))

(declare-fun t!561 () Bool)

(declare-fun tb!249 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!561) tb!249))

(declare-fun result!289 () Bool)

(assert (=> tb!249 (= result!289 tp_is_empty!23)))

(assert (=> bs!414 t!561))

(declare-fun b_and!423 () Bool)

(assert (= b_and!421 (and (=> t!561 result!289) b_and!423)))

(declare-fun b_lambda!413 () Bool)

(assert (=> (not b_lambda!413) (not bs!414)))

(assert (=> bs!414 t!459))

(declare-fun b_and!425 () Bool)

(assert (= b_and!423 (and (=> t!459 result!187) b_and!425)))

(declare-fun b_lambda!415 () Bool)

(assert (=> (not b_lambda!415) (not bs!414)))

(declare-fun t!563 () Bool)

(declare-fun tb!251 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!563) tb!251))

(declare-fun result!291 () Bool)

(assert (=> tb!251 (= result!291 tp_is_empty!23)))

(assert (=> bs!414 t!563))

(declare-fun b_and!427 () Bool)

(assert (= b_and!425 (and (=> t!563 result!291) b_and!427)))

(declare-fun b_lambda!417 () Bool)

(assert (=> (not b_lambda!417) (not bs!414)))

(assert (=> bs!414 t!421))

(declare-fun b_and!429 () Bool)

(assert (= b_and!427 (and (=> t!421 result!147) b_and!429)))

(assert (=> bs!389 m!7293))

(declare-fun m!7397 () Bool)

(assert (=> bs!389 m!7397))

(assert (=> bs!389 m!7257))

(declare-fun m!7399 () Bool)

(assert (=> bs!389 m!7399))

(assert (=> bs!389 s!236))

(declare-fun bs!415 () Bool)

(declare-fun s!238 () Bool)

(assert (= bs!415 (and start!734 s!238)))

(assert (=> bs!415 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1937)) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1938)))))))

(declare-fun b_lambda!419 () Bool)

(assert (=> (not b_lambda!419) (not bs!415)))

(declare-fun t!565 () Bool)

(declare-fun tb!253 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!565) tb!253))

(declare-fun result!293 () Bool)

(assert (=> tb!253 (= result!293 tp_is_empty!23)))

(assert (=> bs!415 t!565))

(declare-fun b_and!431 () Bool)

(assert (= b_and!429 (and (=> t!565 result!293) b_and!431)))

(declare-fun b_lambda!421 () Bool)

(assert (=> (not b_lambda!421) (not bs!415)))

(assert (=> bs!415 t!495))

(declare-fun b_and!433 () Bool)

(assert (= b_and!431 (and (=> t!495 result!223) b_and!433)))

(declare-fun b_lambda!423 () Bool)

(assert (=> (not b_lambda!423) (not bs!415)))

(declare-fun t!567 () Bool)

(declare-fun tb!255 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!567) tb!255))

(declare-fun result!295 () Bool)

(assert (=> tb!255 (= result!295 tp_is_empty!23)))

(assert (=> bs!415 t!567))

(declare-fun b_and!435 () Bool)

(assert (= b_and!433 (and (=> t!567 result!295) b_and!435)))

(declare-fun b_lambda!425 () Bool)

(assert (=> (not b_lambda!425) (not bs!415)))

(assert (=> bs!415 t!429))

(declare-fun b_and!437 () Bool)

(assert (= b_and!435 (and (=> t!429 result!155) b_and!437)))

(declare-fun bs!416 () Bool)

(assert (= bs!416 (and m!7265 m!7253 m!7257)))

(assert (=> bs!416 m!7329))

(declare-fun m!7401 () Bool)

(assert (=> bs!416 m!7401))

(assert (=> bs!416 m!7265))

(declare-fun m!7403 () Bool)

(assert (=> bs!416 m!7403))

(assert (=> bs!416 s!238))

(assert (=> bs!384 s!216))

(declare-fun bs!417 () Bool)

(declare-fun s!240 () Bool)

(assert (= bs!417 (and start!734 s!240)))

(assert (=> bs!417 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_1!8 x!1939)))))))

(declare-fun b_lambda!427 () Bool)

(assert (=> (not b_lambda!427) (not bs!417)))

(declare-fun t!569 () Bool)

(declare-fun tb!257 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!569) tb!257))

(declare-fun result!297 () Bool)

(assert (=> tb!257 (= result!297 tp_is_empty!23)))

(assert (=> bs!417 t!569))

(declare-fun b_and!439 () Bool)

(assert (= b_and!437 (and (=> t!569 result!297) b_and!439)))

(declare-fun b_lambda!429 () Bool)

(assert (=> (not b_lambda!429) (not bs!417)))

(assert (=> bs!417 t!523))

(declare-fun b_and!441 () Bool)

(assert (= b_and!439 (and (=> t!523 result!251) b_and!441)))

(declare-fun b_lambda!431 () Bool)

(assert (=> (not b_lambda!431) (not bs!417)))

(declare-fun t!571 () Bool)

(declare-fun tb!259 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!571) tb!259))

(declare-fun result!299 () Bool)

(assert (=> tb!259 (= result!299 tp_is_empty!23)))

(assert (=> bs!417 t!571))

(declare-fun b_and!443 () Bool)

(assert (= b_and!441 (and (=> t!571 result!299) b_and!443)))

(declare-fun b_lambda!433 () Bool)

(assert (=> (not b_lambda!433) (not bs!417)))

(declare-fun t!573 () Bool)

(declare-fun tb!261 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!573) tb!261))

(declare-fun result!301 () Bool)

(assert (=> tb!261 (= result!301 tp_is_empty!23)))

(assert (=> bs!417 t!573))

(declare-fun b_and!445 () Bool)

(assert (= b_and!443 (and (=> t!573 result!301) b_and!445)))

(assert (=> bs!389 m!7357))

(declare-fun m!7405 () Bool)

(assert (=> bs!389 m!7405))

(declare-fun m!7407 () Bool)

(assert (=> bs!389 m!7407))

(declare-fun m!7409 () Bool)

(assert (=> bs!389 m!7409))

(assert (=> bs!389 s!240))

(declare-fun bs!418 () Bool)

(declare-fun s!242 () Bool)

(assert (= bs!418 (and start!734 s!242)))

(assert (=> bs!418 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1939)))))))

(declare-fun b_lambda!435 () Bool)

(assert (=> (not b_lambda!435) (not bs!418)))

(declare-fun t!575 () Bool)

(declare-fun tb!263 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!575) tb!263))

(declare-fun result!303 () Bool)

(assert (=> tb!263 (= result!303 tp_is_empty!23)))

(assert (=> bs!418 t!575))

(declare-fun b_and!447 () Bool)

(assert (= b_and!445 (and (=> t!575 result!303) b_and!447)))

(declare-fun b_lambda!437 () Bool)

(assert (=> (not b_lambda!437) (not bs!418)))

(assert (=> bs!418 t!471))

(declare-fun b_and!449 () Bool)

(assert (= b_and!447 (and (=> t!471 result!199) b_and!449)))

(declare-fun b_lambda!439 () Bool)

(assert (=> (not b_lambda!439) (not bs!418)))

(declare-fun t!577 () Bool)

(declare-fun tb!265 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!577) tb!265))

(declare-fun result!305 () Bool)

(assert (=> tb!265 (= result!305 tp_is_empty!23)))

(assert (=> bs!418 t!577))

(declare-fun b_and!451 () Bool)

(assert (= b_and!449 (and (=> t!577 result!305) b_and!451)))

(declare-fun b_lambda!441 () Bool)

(assert (=> (not b_lambda!441) (not bs!418)))

(assert (=> bs!418 t!417))

(declare-fun b_and!453 () Bool)

(assert (= b_and!451 (and (=> t!417 result!139) b_and!453)))

(assert (=> bs!384 m!7305))

(declare-fun m!7411 () Bool)

(assert (=> bs!384 m!7411))

(assert (=> bs!384 m!7253))

(declare-fun m!7413 () Bool)

(assert (=> bs!384 m!7413))

(assert (=> bs!384 s!242))

(declare-fun bs!419 () Bool)

(declare-fun s!244 () Bool)

(assert (= bs!419 (and start!734 s!244)))

(assert (=> bs!419 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1938)) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1939)))))))

(declare-fun b_lambda!443 () Bool)

(assert (=> (not b_lambda!443) (not bs!419)))

(declare-fun t!579 () Bool)

(declare-fun tb!267 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!579) tb!267))

(declare-fun result!307 () Bool)

(assert (=> tb!267 (= result!307 tp_is_empty!23)))

(assert (=> bs!419 t!579))

(declare-fun b_and!455 () Bool)

(assert (= b_and!453 (and (=> t!579 result!307) b_and!455)))

(declare-fun b_lambda!445 () Bool)

(assert (=> (not b_lambda!445) (not bs!419)))

(assert (=> bs!419 t!429))

(declare-fun b_and!457 () Bool)

(assert (= b_and!455 (and (=> t!429 result!155) b_and!457)))

(declare-fun b_lambda!447 () Bool)

(assert (=> (not b_lambda!447) (not bs!419)))

(declare-fun t!581 () Bool)

(declare-fun tb!269 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!581) tb!269))

(declare-fun result!309 () Bool)

(assert (=> tb!269 (= result!309 tp_is_empty!23)))

(assert (=> bs!419 t!581))

(declare-fun b_and!459 () Bool)

(assert (= b_and!457 (and (=> t!581 result!309) b_and!459)))

(declare-fun b_lambda!449 () Bool)

(assert (=> (not b_lambda!449) (not bs!419)))

(assert (=> bs!419 t!425))

(declare-fun b_and!461 () Bool)

(assert (= b_and!459 (and (=> t!425 result!151) b_and!461)))

(assert (=> bs!389 m!7265))

(declare-fun m!7415 () Bool)

(assert (=> bs!389 m!7415))

(assert (=> bs!389 m!7261))

(declare-fun m!7417 () Bool)

(assert (=> bs!389 m!7417))

(assert (=> bs!389 s!244))

(declare-fun bs!420 () Bool)

(declare-fun s!246 () Bool)

(assert (= bs!420 (and start!734 s!246)))

(assert (=> bs!420 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1938)))))))

(declare-fun b_lambda!451 () Bool)

(assert (=> (not b_lambda!451) (not bs!420)))

(declare-fun t!583 () Bool)

(declare-fun tb!271 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!583) tb!271))

(declare-fun result!311 () Bool)

(assert (=> tb!271 (= result!311 tp_is_empty!23)))

(assert (=> bs!420 t!583))

(declare-fun b_and!463 () Bool)

(assert (= b_and!461 (and (=> t!583 result!311) b_and!463)))

(declare-fun b_lambda!453 () Bool)

(assert (=> (not b_lambda!453) (not bs!420)))

(assert (=> bs!420 t!471))

(declare-fun b_and!465 () Bool)

(assert (= b_and!463 (and (=> t!471 result!199) b_and!465)))

(declare-fun b_lambda!455 () Bool)

(assert (=> (not b_lambda!455) (not bs!420)))

(declare-fun t!585 () Bool)

(declare-fun tb!273 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!585) tb!273))

(declare-fun result!313 () Bool)

(assert (=> tb!273 (= result!313 tp_is_empty!23)))

(assert (=> bs!420 t!585))

(declare-fun b_and!467 () Bool)

(assert (= b_and!465 (and (=> t!585 result!313) b_and!467)))

(declare-fun b_lambda!457 () Bool)

(assert (=> (not b_lambda!457) (not bs!420)))

(assert (=> bs!420 t!441))

(declare-fun b_and!469 () Bool)

(assert (= b_and!467 (and (=> t!441 result!169) b_and!469)))

(assert (=> bs!405 m!7305))

(declare-fun m!7419 () Bool)

(assert (=> bs!405 m!7419))

(assert (=> bs!405 m!7275))

(declare-fun m!7421 () Bool)

(assert (=> bs!405 m!7421))

(assert (=> bs!405 s!246))

(declare-fun bs!421 () Bool)

(declare-fun s!248 () Bool)

(assert (= bs!421 (and start!734 s!248)))

(assert (=> bs!421 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_1!8 x!1939)))))))

(declare-fun b_lambda!459 () Bool)

(assert (=> (not b_lambda!459) (not bs!421)))

(declare-fun t!587 () Bool)

(declare-fun tb!275 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!587) tb!275))

(declare-fun result!315 () Bool)

(assert (=> tb!275 (= result!315 tp_is_empty!23)))

(assert (=> bs!421 t!587))

(declare-fun b_and!471 () Bool)

(assert (= b_and!469 (and (=> t!587 result!315) b_and!471)))

(declare-fun b_lambda!461 () Bool)

(assert (=> (not b_lambda!461) (not bs!421)))

(assert (=> bs!421 t!421))

(declare-fun b_and!473 () Bool)

(assert (= b_and!471 (and (=> t!421 result!147) b_and!473)))

(declare-fun b_lambda!463 () Bool)

(assert (=> (not b_lambda!463) (not bs!421)))

(declare-fun t!589 () Bool)

(declare-fun tb!277 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!589) tb!277))

(declare-fun result!317 () Bool)

(assert (=> tb!277 (= result!317 tp_is_empty!23)))

(assert (=> bs!421 t!589))

(declare-fun b_and!475 () Bool)

(assert (= b_and!473 (and (=> t!589 result!317) b_and!475)))

(declare-fun b_lambda!465 () Bool)

(assert (=> (not b_lambda!465) (not bs!421)))

(assert (=> bs!421 t!573))

(declare-fun b_and!477 () Bool)

(assert (= b_and!475 (and (=> t!573 result!301) b_and!477)))

(assert (=> bs!392 m!7257))

(declare-fun m!7423 () Bool)

(assert (=> bs!392 m!7423))

(assert (=> bs!392 m!7407))

(declare-fun m!7425 () Bool)

(assert (=> bs!392 m!7425))

(assert (=> bs!392 s!248))

(assert (=> bs!389 s!216))

(declare-fun bs!422 () Bool)

(declare-fun s!250 () Bool)

(assert (= bs!422 (and start!734 s!250)))

(assert (=> bs!422 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1939)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1939) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!467 () Bool)

(assert (=> (not b_lambda!467) (not bs!422)))

(declare-fun t!591 () Bool)

(declare-fun tb!279 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!591) tb!279))

(declare-fun result!319 () Bool)

(assert (=> tb!279 (= result!319 tp_is_empty!23)))

(assert (=> bs!422 t!591))

(declare-fun b_and!479 () Bool)

(assert (= b_and!477 (and (=> t!591 result!319) b_and!479)))

(declare-fun b_lambda!469 () Bool)

(assert (=> (not b_lambda!469) (not bs!422)))

(assert (=> bs!422 t!417))

(declare-fun b_and!481 () Bool)

(assert (= b_and!479 (and (=> t!417 result!139) b_and!481)))

(declare-fun b_lambda!471 () Bool)

(assert (=> (not b_lambda!471) (not bs!422)))

(declare-fun t!593 () Bool)

(declare-fun tb!281 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!593) tb!281))

(declare-fun result!321 () Bool)

(assert (=> tb!281 (= result!321 tp_is_empty!23)))

(assert (=> bs!422 t!593))

(declare-fun b_and!483 () Bool)

(assert (= b_and!481 (and (=> t!593 result!321) b_and!483)))

(declare-fun b_lambda!473 () Bool)

(assert (=> (not b_lambda!473) (not bs!422)))

(assert (=> bs!422 t!503))

(declare-fun b_and!485 () Bool)

(assert (= b_and!483 (and (=> t!503 result!231) b_and!485)))

(assert (=> bs!392 m!7253))

(declare-fun m!7427 () Bool)

(assert (=> bs!392 m!7427))

(assert (=> bs!392 m!7337))

(declare-fun m!7429 () Bool)

(assert (=> bs!392 m!7429))

(assert (=> bs!392 s!250))

(declare-fun bs!423 () Bool)

(declare-fun s!252 () Bool)

(assert (= bs!423 (and start!734 s!252)))

(assert (=> bs!423 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1939)) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1939) (_1!8 x!1939)))))))

(declare-fun b_lambda!475 () Bool)

(assert (=> (not b_lambda!475) (not bs!423)))

(declare-fun t!595 () Bool)

(declare-fun tb!283 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!595) tb!283))

(declare-fun result!323 () Bool)

(assert (=> tb!283 (= result!323 tp_is_empty!23)))

(assert (=> bs!423 t!595))

(declare-fun b_and!487 () Bool)

(assert (= b_and!485 (and (=> t!595 result!323) b_and!487)))

(declare-fun b_lambda!477 () Bool)

(assert (=> (not b_lambda!477) (not bs!423)))

(assert (=> bs!423 t!417))

(declare-fun b_and!489 () Bool)

(assert (= b_and!487 (and (=> t!417 result!139) b_and!489)))

(declare-fun b_lambda!479 () Bool)

(assert (=> (not b_lambda!479) (not bs!423)))

(declare-fun t!597 () Bool)

(declare-fun tb!285 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!597) tb!285))

(declare-fun result!325 () Bool)

(assert (=> tb!285 (= result!325 tp_is_empty!23)))

(assert (=> bs!423 t!597))

(declare-fun b_and!491 () Bool)

(assert (= b_and!489 (and (=> t!597 result!325) b_and!491)))

(declare-fun b_lambda!481 () Bool)

(assert (=> (not b_lambda!481) (not bs!423)))

(assert (=> bs!423 t!481))

(declare-fun b_and!493 () Bool)

(assert (= b_and!491 (and (=> t!481 result!209) b_and!493)))

(declare-fun m!7431 () Bool)

(assert (=> m!7253 m!7431))

(assert (=> m!7253 m!7315))

(declare-fun m!7433 () Bool)

(assert (=> m!7253 m!7433))

(assert (=> m!7253 s!252))

(declare-fun bs!424 () Bool)

(declare-fun s!254 () Bool)

(assert (= bs!424 (and start!734 s!254)))

(assert (=> bs!424 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_1!8 x!1938)))))))

(declare-fun b_lambda!483 () Bool)

(assert (=> (not b_lambda!483) (not bs!424)))

(declare-fun t!599 () Bool)

(declare-fun tb!287 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!599) tb!287))

(declare-fun result!327 () Bool)

(assert (=> tb!287 (= result!327 tp_is_empty!23)))

(assert (=> bs!424 t!599))

(declare-fun b_and!495 () Bool)

(assert (= b_and!493 (and (=> t!599 result!327) b_and!495)))

(declare-fun b_lambda!485 () Bool)

(assert (=> (not b_lambda!485) (not bs!424)))

(assert (=> bs!424 t!475))

(declare-fun b_and!497 () Bool)

(assert (= b_and!495 (and (=> t!475 result!203) b_and!497)))

(declare-fun b_lambda!487 () Bool)

(assert (=> (not b_lambda!487) (not bs!424)))

(declare-fun t!601 () Bool)

(declare-fun tb!289 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!601) tb!289))

(declare-fun result!329 () Bool)

(assert (=> tb!289 (= result!329 tp_is_empty!23)))

(assert (=> bs!424 t!601))

(declare-fun b_and!499 () Bool)

(assert (= b_and!497 (and (=> t!601 result!329) b_and!499)))

(declare-fun b_lambda!489 () Bool)

(assert (=> (not b_lambda!489) (not bs!424)))

(assert (=> bs!424 t!451))

(declare-fun b_and!501 () Bool)

(assert (= b_and!499 (and (=> t!451 result!179) b_and!501)))

(assert (=> bs!416 m!7309))

(declare-fun m!7435 () Bool)

(assert (=> bs!416 m!7435))

(assert (=> bs!416 m!7285))

(declare-fun m!7437 () Bool)

(assert (=> bs!416 m!7437))

(assert (=> bs!416 s!254))

(assert (=> bs!416 s!246))

(declare-fun bs!425 () Bool)

(declare-fun s!256 () Bool)

(assert (= bs!425 (and start!734 s!256)))

(assert (=> bs!425 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_1!8 x!1939)))))))

(declare-fun b_lambda!491 () Bool)

(assert (=> (not b_lambda!491) (not bs!425)))

(declare-fun t!603 () Bool)

(declare-fun tb!291 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!603) tb!291))

(declare-fun result!331 () Bool)

(assert (=> tb!291 (= result!331 tp_is_empty!23)))

(assert (=> bs!425 t!603))

(declare-fun b_and!503 () Bool)

(assert (= b_and!501 (and (=> t!603 result!331) b_and!503)))

(declare-fun b_lambda!493 () Bool)

(assert (=> (not b_lambda!493) (not bs!425)))

(assert (=> bs!425 t!475))

(declare-fun b_and!505 () Bool)

(assert (= b_and!503 (and (=> t!475 result!203) b_and!505)))

(declare-fun b_lambda!495 () Bool)

(assert (=> (not b_lambda!495) (not bs!425)))

(declare-fun t!605 () Bool)

(declare-fun tb!293 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!605) tb!293))

(declare-fun result!333 () Bool)

(assert (=> tb!293 (= result!333 tp_is_empty!23)))

(assert (=> bs!425 t!605))

(declare-fun b_and!507 () Bool)

(assert (= b_and!505 (and (=> t!605 result!333) b_and!507)))

(declare-fun b_lambda!497 () Bool)

(assert (=> (not b_lambda!497) (not bs!425)))

(assert (=> bs!425 t!573))

(declare-fun b_and!509 () Bool)

(assert (= b_and!507 (and (=> t!573 result!301) b_and!509)))

(assert (=> bs!392 m!7309))

(declare-fun m!7439 () Bool)

(assert (=> bs!392 m!7439))

(assert (=> bs!392 m!7407))

(declare-fun m!7441 () Bool)

(assert (=> bs!392 m!7441))

(assert (=> bs!392 s!256))

(declare-fun bs!426 () Bool)

(declare-fun s!258 () Bool)

(assert (= bs!426 (and start!734 s!258)))

(assert (=> bs!426 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1938)) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1939)))))))

(declare-fun b_lambda!499 () Bool)

(assert (=> (not b_lambda!499) (not bs!426)))

(declare-fun t!607 () Bool)

(declare-fun tb!295 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!607) tb!295))

(declare-fun result!335 () Bool)

(assert (=> tb!295 (= result!335 tp_is_empty!23)))

(assert (=> bs!426 t!607))

(declare-fun b_and!511 () Bool)

(assert (= b_and!509 (and (=> t!607 result!335) b_and!511)))

(declare-fun b_lambda!501 () Bool)

(assert (=> (not b_lambda!501) (not bs!426)))

(assert (=> bs!426 t!441))

(declare-fun b_and!513 () Bool)

(assert (= b_and!511 (and (=> t!441 result!169) b_and!513)))

(declare-fun b_lambda!503 () Bool)

(assert (=> (not b_lambda!503) (not bs!426)))

(declare-fun t!609 () Bool)

(declare-fun tb!297 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!609) tb!297))

(declare-fun result!337 () Bool)

(assert (=> tb!297 (= result!337 tp_is_empty!23)))

(assert (=> bs!426 t!609))

(declare-fun b_and!515 () Bool)

(assert (= b_and!513 (and (=> t!609 result!337) b_and!515)))

(declare-fun b_lambda!505 () Bool)

(assert (=> (not b_lambda!505) (not bs!426)))

(assert (=> bs!426 t!425))

(declare-fun b_and!517 () Bool)

(assert (= b_and!515 (and (=> t!425 result!151) b_and!517)))

(assert (=> bs!413 m!7275))

(declare-fun m!7443 () Bool)

(assert (=> bs!413 m!7443))

(assert (=> bs!413 m!7261))

(declare-fun m!7445 () Bool)

(assert (=> bs!413 m!7445))

(assert (=> bs!413 s!258))

(declare-fun bs!427 () Bool)

(declare-fun s!260 () Bool)

(assert (= bs!427 (and start!734 s!260)))

(assert (=> bs!427 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1938)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!507 () Bool)

(assert (=> (not b_lambda!507) (not bs!427)))

(declare-fun t!611 () Bool)

(declare-fun tb!299 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!611) tb!299))

(declare-fun result!339 () Bool)

(assert (=> tb!299 (= result!339 tp_is_empty!23)))

(assert (=> bs!427 t!611))

(declare-fun b_and!519 () Bool)

(assert (= b_and!517 (and (=> t!611 result!339) b_and!519)))

(declare-fun b_lambda!509 () Bool)

(assert (=> (not b_lambda!509) (not bs!427)))

(assert (=> bs!427 t!441))

(declare-fun b_and!521 () Bool)

(assert (= b_and!519 (and (=> t!441 result!169) b_and!521)))

(declare-fun b_lambda!511 () Bool)

(assert (=> (not b_lambda!511) (not bs!427)))

(declare-fun t!613 () Bool)

(declare-fun tb!301 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!613) tb!301))

(declare-fun result!341 () Bool)

(assert (=> tb!301 (= result!341 tp_is_empty!23)))

(assert (=> bs!427 t!613))

(declare-fun b_and!523 () Bool)

(assert (= b_and!521 (and (=> t!613 result!341) b_and!523)))

(declare-fun b_lambda!513 () Bool)

(assert (=> (not b_lambda!513) (not bs!427)))

(assert (=> bs!427 t!523))

(declare-fun b_and!525 () Bool)

(assert (= b_and!523 (and (=> t!523 result!251) b_and!525)))

(assert (=> bs!416 m!7275))

(declare-fun m!7447 () Bool)

(assert (=> bs!416 m!7447))

(assert (=> bs!416 m!7357))

(declare-fun m!7449 () Bool)

(assert (=> bs!416 m!7449))

(assert (=> bs!416 s!260))

(declare-fun bs!428 () Bool)

(assert (= bs!428 (and m!7265 m!7257 m!7253 m!7261)))

(assert (=> bs!428 s!220))

(declare-fun bs!429 () Bool)

(declare-fun s!262 () Bool)

(assert (= bs!429 (and start!734 s!262)))

(assert (=> bs!429 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!515 () Bool)

(assert (=> (not b_lambda!515) (not bs!429)))

(declare-fun t!615 () Bool)

(declare-fun tb!303 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!615) tb!303))

(declare-fun result!343 () Bool)

(assert (=> tb!303 (= result!343 tp_is_empty!23)))

(assert (=> bs!429 t!615))

(declare-fun b_and!527 () Bool)

(assert (= b_and!525 (and (=> t!615 result!343) b_and!527)))

(declare-fun b_lambda!517 () Bool)

(assert (=> (not b_lambda!517) (not bs!429)))

(assert (=> bs!429 t!537))

(declare-fun b_and!529 () Bool)

(assert (= b_and!527 (and (=> t!537 result!265) b_and!529)))

(declare-fun b_lambda!519 () Bool)

(assert (=> (not b_lambda!519) (not bs!429)))

(declare-fun t!617 () Bool)

(declare-fun tb!305 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!617) tb!305))

(declare-fun result!345 () Bool)

(assert (=> tb!305 (= result!345 tp_is_empty!23)))

(assert (=> bs!429 t!617))

(declare-fun b_and!531 () Bool)

(assert (= b_and!529 (and (=> t!617 result!345) b_and!531)))

(declare-fun b_lambda!521 () Bool)

(assert (=> (not b_lambda!521) (not bs!429)))

(assert (=> bs!429 t!475))

(declare-fun b_and!533 () Bool)

(assert (= b_and!531 (and (=> t!475 result!203) b_and!533)))

(declare-fun bs!430 () Bool)

(assert (= bs!430 (and m!7261 m!7253 m!7257)))

(assert (=> bs!430 m!7371))

(declare-fun m!7451 () Bool)

(assert (=> bs!430 m!7451))

(assert (=> bs!430 m!7309))

(declare-fun m!7453 () Bool)

(assert (=> bs!430 m!7453))

(assert (=> bs!430 s!262))

(assert (=> bs!384 s!244))

(assert (=> bs!430 s!244))

(assert (=> bs!389 s!210))

(declare-fun bs!431 () Bool)

(declare-fun s!264 () Bool)

(assert (= bs!431 (and start!734 s!264)))

(assert (=> bs!431 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1939)) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 x!1939) (_1!8 x!1938)))))))

(declare-fun b_lambda!523 () Bool)

(assert (=> (not b_lambda!523) (not bs!431)))

(declare-fun t!619 () Bool)

(declare-fun tb!307 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!619) tb!307))

(declare-fun result!347 () Bool)

(assert (=> tb!307 (= result!347 tp_is_empty!23)))

(assert (=> bs!431 t!619))

(declare-fun b_and!535 () Bool)

(assert (= b_and!533 (and (=> t!619 result!347) b_and!535)))

(declare-fun b_lambda!525 () Bool)

(assert (=> (not b_lambda!525) (not bs!431)))

(assert (=> bs!431 t!417))

(declare-fun b_and!537 () Bool)

(assert (= b_and!535 (and (=> t!417 result!139) b_and!537)))

(declare-fun b_lambda!527 () Bool)

(assert (=> (not b_lambda!527) (not bs!431)))

(declare-fun t!621 () Bool)

(declare-fun tb!309 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!621) tb!309))

(declare-fun result!349 () Bool)

(assert (=> tb!309 (= result!349 tp_is_empty!23)))

(assert (=> bs!431 t!621))

(declare-fun b_and!539 () Bool)

(assert (= b_and!537 (and (=> t!621 result!349) b_and!539)))

(declare-fun b_lambda!529 () Bool)

(assert (=> (not b_lambda!529) (not bs!431)))

(assert (=> bs!431 t!529))

(declare-fun b_and!541 () Bool)

(assert (= b_and!539 (and (=> t!529 result!257) b_and!541)))

(assert (=> bs!384 m!7253))

(declare-fun m!7455 () Bool)

(assert (=> bs!384 m!7455))

(assert (=> bs!384 m!7363))

(declare-fun m!7457 () Bool)

(assert (=> bs!384 m!7457))

(assert (=> bs!384 s!264))

(declare-fun bs!432 () Bool)

(declare-fun s!266 () Bool)

(assert (= bs!432 (and start!734 s!266)))

(assert (=> bs!432 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 x!1939)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 x!1939) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!531 () Bool)

(assert (=> (not b_lambda!531) (not bs!432)))

(declare-fun t!623 () Bool)

(declare-fun tb!311 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!623) tb!311))

(declare-fun result!351 () Bool)

(assert (=> tb!311 (= result!351 tp_is_empty!23)))

(assert (=> bs!432 t!623))

(declare-fun b_and!543 () Bool)

(assert (= b_and!541 (and (=> t!623 result!351) b_and!543)))

(declare-fun b_lambda!533 () Bool)

(assert (=> (not b_lambda!533) (not bs!432)))

(assert (=> bs!432 t!425))

(declare-fun b_and!545 () Bool)

(assert (= b_and!543 (and (=> t!425 result!151) b_and!545)))

(declare-fun b_lambda!535 () Bool)

(assert (=> (not b_lambda!535) (not bs!432)))

(declare-fun t!625 () Bool)

(declare-fun tb!313 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!625) tb!313))

(declare-fun result!353 () Bool)

(assert (=> tb!313 (= result!353 tp_is_empty!23)))

(assert (=> bs!432 t!625))

(declare-fun b_and!547 () Bool)

(assert (= b_and!545 (and (=> t!625 result!353) b_and!547)))

(declare-fun b_lambda!537 () Bool)

(assert (=> (not b_lambda!537) (not bs!432)))

(assert (=> bs!432 t!503))

(declare-fun b_and!549 () Bool)

(assert (= b_and!547 (and (=> t!503 result!231) b_and!549)))

(assert (=> bs!430 m!7261))

(declare-fun m!7459 () Bool)

(assert (=> bs!430 m!7459))

(assert (=> bs!430 m!7337))

(declare-fun m!7461 () Bool)

(assert (=> bs!430 m!7461))

(assert (=> bs!430 s!266))

(declare-fun bs!433 () Bool)

(declare-fun s!268 () Bool)

(assert (= bs!433 (and start!734 s!268)))

(assert (=> bs!433 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 x!1937)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 x!1937) (dynLambda!14 f1!4 (_1!8 x!1937) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!539 () Bool)

(assert (=> (not b_lambda!539) (not bs!433)))

(declare-fun t!627 () Bool)

(declare-fun tb!315 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!627) tb!315))

(declare-fun result!355 () Bool)

(assert (=> tb!315 (= result!355 tp_is_empty!23)))

(assert (=> bs!433 t!627))

(declare-fun b_and!551 () Bool)

(assert (= b_and!549 (and (=> t!627 result!355) b_and!551)))

(declare-fun b_lambda!541 () Bool)

(assert (=> (not b_lambda!541) (not bs!433)))

(assert (=> bs!433 t!435))

(declare-fun b_and!553 () Bool)

(assert (= b_and!551 (and (=> t!435 result!163) b_and!553)))

(declare-fun b_lambda!543 () Bool)

(assert (=> (not b_lambda!543) (not bs!433)))

(declare-fun t!629 () Bool)

(declare-fun tb!317 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!629) tb!317))

(declare-fun result!357 () Bool)

(assert (=> tb!317 (= result!357 tp_is_empty!23)))

(assert (=> bs!433 t!629))

(declare-fun b_and!555 () Bool)

(assert (= b_and!553 (and (=> t!629 result!357) b_and!555)))

(declare-fun b_lambda!545 () Bool)

(assert (=> (not b_lambda!545) (not bs!433)))

(assert (=> bs!433 t!421))

(declare-fun b_and!557 () Bool)

(assert (= b_and!555 (and (=> t!421 result!147) b_and!557)))

(assert (=> m!7257 m!7269))

(declare-fun m!7463 () Bool)

(assert (=> m!7257 m!7463))

(declare-fun m!7465 () Bool)

(assert (=> m!7257 m!7465))

(assert (=> m!7257 s!268))

(assert (=> bs!405 s!238))

(assert (=> bs!389 s!248))

(assert (=> bs!413 s!198))

(declare-fun bs!434 () Bool)

(declare-fun s!270 () Bool)

(assert (= bs!434 (and start!734 s!270)))

(assert (=> bs!434 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!547 () Bool)

(assert (=> (not b_lambda!547) (not bs!434)))

(declare-fun t!631 () Bool)

(declare-fun tb!319 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!631) tb!319))

(declare-fun result!359 () Bool)

(assert (=> tb!319 (= result!359 tp_is_empty!23)))

(assert (=> bs!434 t!631))

(declare-fun b_and!559 () Bool)

(assert (= b_and!557 (and (=> t!631 result!359) b_and!559)))

(declare-fun b_lambda!549 () Bool)

(assert (=> (not b_lambda!549) (not bs!434)))

(assert (=> bs!434 t!523))

(declare-fun b_and!561 () Bool)

(assert (= b_and!559 (and (=> t!523 result!251) b_and!561)))

(declare-fun b_lambda!551 () Bool)

(assert (=> (not b_lambda!551) (not bs!434)))

(declare-fun t!633 () Bool)

(declare-fun tb!321 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!633) tb!321))

(declare-fun result!361 () Bool)

(assert (=> tb!321 (= result!361 tp_is_empty!23)))

(assert (=> bs!434 t!633))

(declare-fun b_and!563 () Bool)

(assert (= b_and!561 (and (=> t!633 result!361) b_and!563)))

(declare-fun b_lambda!553 () Bool)

(assert (=> (not b_lambda!553) (not bs!434)))

(assert (=> bs!434 t!487))

(declare-fun b_and!565 () Bool)

(assert (= b_and!563 (and (=> t!487 result!215) b_and!565)))

(assert (=> bs!389 m!7357))

(declare-fun m!7467 () Bool)

(assert (=> bs!389 m!7467))

(assert (=> bs!389 m!7321))

(declare-fun m!7469 () Bool)

(assert (=> bs!389 m!7469))

(assert (=> bs!389 s!270))

(assert (=> bs!384 s!196))

(assert (=> bs!430 s!260))

(declare-fun bs!435 () Bool)

(declare-fun s!272 () Bool)

(assert (= bs!435 (and start!734 s!272)))

(assert (=> bs!435 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_1!8 x!1938)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1938)))))))

(declare-fun b_lambda!555 () Bool)

(assert (=> (not b_lambda!555) (not bs!435)))

(declare-fun t!635 () Bool)

(declare-fun tb!323 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!635) tb!323))

(declare-fun result!363 () Bool)

(assert (=> tb!323 (= result!363 tp_is_empty!23)))

(assert (=> bs!435 t!635))

(declare-fun b_and!567 () Bool)

(assert (= b_and!565 (and (=> t!635 result!363) b_and!567)))

(declare-fun b_lambda!557 () Bool)

(assert (=> (not b_lambda!557) (not bs!435)))

(assert (=> bs!435 t!511))

(declare-fun b_and!569 () Bool)

(assert (= b_and!567 (and (=> t!511 result!239) b_and!569)))

(declare-fun b_lambda!559 () Bool)

(assert (=> (not b_lambda!559) (not bs!435)))

(declare-fun t!637 () Bool)

(declare-fun tb!325 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!637) tb!325))

(declare-fun result!365 () Bool)

(assert (=> tb!325 (= result!365 tp_is_empty!23)))

(assert (=> bs!435 t!637))

(declare-fun b_and!571 () Bool)

(assert (= b_and!569 (and (=> t!637 result!365) b_and!571)))

(declare-fun b_lambda!561 () Bool)

(assert (=> (not b_lambda!561) (not bs!435)))

(assert (=> bs!435 t!441))

(declare-fun b_and!573 () Bool)

(assert (= b_and!571 (and (=> t!441 result!169) b_and!573)))

(assert (=> bs!405 m!7345))

(declare-fun m!7471 () Bool)

(assert (=> bs!405 m!7471))

(assert (=> bs!405 m!7275))

(declare-fun m!7473 () Bool)

(assert (=> bs!405 m!7473))

(assert (=> bs!405 s!272))

(assert (=> bs!400 s!194))

(assert (=> bs!430 s!196))

(assert (=> bs!392 s!242))

(assert (=> bs!386 s!232))

(assert (=> bs!430 s!240))

(assert (=> m!7261 s!234))

(declare-fun bs!436 () Bool)

(declare-fun s!274 () Bool)

(assert (= bs!436 (and start!734 s!274)))

(assert (=> bs!436 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_1!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!563 () Bool)

(assert (=> (not b_lambda!563) (not bs!436)))

(declare-fun t!639 () Bool)

(declare-fun tb!327 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!639) tb!327))

(declare-fun result!367 () Bool)

(assert (=> tb!327 (= result!367 tp_is_empty!23)))

(assert (=> bs!436 t!639))

(declare-fun b_and!575 () Bool)

(assert (= b_and!573 (and (=> t!639 result!367) b_and!575)))

(declare-fun b_lambda!565 () Bool)

(assert (=> (not b_lambda!565) (not bs!436)))

(assert (=> bs!436 t!475))

(declare-fun b_and!577 () Bool)

(assert (= b_and!575 (and (=> t!475 result!203) b_and!577)))

(declare-fun b_lambda!567 () Bool)

(assert (=> (not b_lambda!567) (not bs!436)))

(declare-fun t!641 () Bool)

(declare-fun tb!329 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!641) tb!329))

(declare-fun result!369 () Bool)

(assert (=> tb!329 (= result!369 tp_is_empty!23)))

(assert (=> bs!436 t!641))

(declare-fun b_and!579 () Bool)

(assert (= b_and!577 (and (=> t!641 result!369) b_and!579)))

(declare-fun b_lambda!569 () Bool)

(assert (=> (not b_lambda!569) (not bs!436)))

(assert (=> bs!436 t!487))

(declare-fun b_and!581 () Bool)

(assert (= b_and!579 (and (=> t!487 result!215) b_and!581)))

(assert (=> bs!392 m!7309))

(declare-fun m!7475 () Bool)

(assert (=> bs!392 m!7475))

(assert (=> bs!392 m!7321))

(declare-fun m!7477 () Bool)

(assert (=> bs!392 m!7477))

(assert (=> bs!392 s!274))

(assert (=> bs!389 s!266))

(declare-fun bs!437 () Bool)

(declare-fun s!276 () Bool)

(assert (= bs!437 (and start!734 s!276)))

(assert (=> bs!437 (=> true (= (dynLambda!14 f1!4 (dynLambda!14 f1!4 (_1!8 x!1938) (_1!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_1!8 x!1939)) (dynLambda!14 f1!4 (_1!8 x!1938) (dynLambda!14 f1!4 (_1!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_1!8 x!1939)))))))

(declare-fun b_lambda!571 () Bool)

(assert (=> (not b_lambda!571) (not bs!437)))

(declare-fun t!643 () Bool)

(declare-fun tb!331 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!643) tb!331))

(declare-fun result!371 () Bool)

(assert (=> tb!331 (= result!371 tp_is_empty!23)))

(assert (=> bs!437 t!643))

(declare-fun b_and!583 () Bool)

(assert (= b_and!581 (and (=> t!643 result!371) b_and!583)))

(declare-fun b_lambda!573 () Bool)

(assert (=> (not b_lambda!573) (not bs!437)))

(assert (=> bs!437 t!537))

(declare-fun b_and!585 () Bool)

(assert (= b_and!583 (and (=> t!537 result!265) b_and!585)))

(declare-fun b_lambda!575 () Bool)

(assert (=> (not b_lambda!575) (not bs!437)))

(declare-fun t!645 () Bool)

(declare-fun tb!333 () Bool)

(assert (=> (and start!734 (= f1!4 f1!4) t!645) tb!333))

(declare-fun result!373 () Bool)

(assert (=> tb!333 (= result!373 tp_is_empty!23)))

(assert (=> bs!437 t!645))

(declare-fun b_and!587 () Bool)

(assert (= b_and!585 (and (=> t!645 result!373) b_and!587)))

(declare-fun b_lambda!577 () Bool)

(assert (=> (not b_lambda!577) (not bs!437)))

(assert (=> bs!437 t!417))

(declare-fun b_and!589 () Bool)

(assert (= b_and!587 (and (=> t!417 result!139) b_and!589)))

(assert (=> bs!413 m!7371))

(declare-fun m!7479 () Bool)

(assert (=> bs!413 m!7479))

(assert (=> bs!413 m!7253))

(declare-fun m!7481 () Bool)

(assert (=> bs!413 m!7481))

(assert (=> bs!413 s!276))

(assert (=> bs!400 s!206))

(declare-fun bs!438 () Bool)

(declare-fun s!278 () Bool)

(assert (= bs!438 (and start!734 b!4717 s!278)))

(assert (=> bs!438 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1939)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 x!1939) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!579 () Bool)

(assert (=> (not b_lambda!579) (not bs!438)))

(declare-fun t!647 () Bool)

(declare-fun tb!335 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!647) tb!335))

(declare-fun result!375 () Bool)

(assert (=> tb!335 (= result!375 tp_is_empty!25)))

(assert (=> bs!438 t!647))

(declare-fun b_and!591 () Bool)

(assert (= b_and!231 (and (=> t!647 result!375) b_and!591)))

(declare-fun b_lambda!581 () Bool)

(assert (=> (not b_lambda!581) (not bs!438)))

(assert (=> bs!438 t!427))

(declare-fun b_and!593 () Bool)

(assert (= b_and!591 (and (=> t!427 result!153) b_and!593)))

(declare-fun b_lambda!583 () Bool)

(assert (=> (not b_lambda!583) (not bs!438)))

(declare-fun t!649 () Bool)

(declare-fun tb!337 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!649) tb!337))

(declare-fun result!377 () Bool)

(assert (=> tb!337 (= result!377 tp_is_empty!25)))

(assert (=> bs!438 t!649))

(declare-fun b_and!595 () Bool)

(assert (= b_and!593 (and (=> t!649 result!377) b_and!595)))

(declare-fun b_lambda!585 () Bool)

(assert (=> (not b_lambda!585) (not bs!438)))

(declare-fun t!651 () Bool)

(declare-fun tb!339 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!651) tb!339))

(declare-fun result!379 () Bool)

(assert (=> tb!339 (= result!379 tp_is_empty!25)))

(assert (=> bs!438 t!651))

(declare-fun b_and!597 () Bool)

(assert (= b_and!595 (and (=> t!651 result!379) b_and!597)))

(declare-fun bs!439 () Bool)

(assert (= bs!439 (and m!7263 m!7259)))

(assert (=> bs!439 m!7263))

(declare-fun m!7483 () Bool)

(assert (=> bs!439 m!7483))

(declare-fun m!7485 () Bool)

(assert (=> bs!439 m!7485))

(declare-fun m!7487 () Bool)

(assert (=> bs!439 m!7487))

(assert (=> bs!439 s!278))

(declare-fun bs!440 () Bool)

(declare-fun s!280 () Bool)

(assert (= bs!440 (and start!734 b!4717 s!280)))

(assert (=> bs!440 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1938)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!587 () Bool)

(assert (=> (not b_lambda!587) (not bs!440)))

(declare-fun t!653 () Bool)

(declare-fun tb!341 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!653) tb!341))

(declare-fun result!381 () Bool)

(assert (=> tb!341 (= result!381 tp_is_empty!25)))

(assert (=> bs!440 t!653))

(declare-fun b_and!599 () Bool)

(assert (= b_and!597 (and (=> t!653 result!381) b_and!599)))

(declare-fun b_lambda!589 () Bool)

(assert (=> (not b_lambda!589) (not bs!440)))

(assert (=> bs!440 t!431))

(declare-fun b_and!601 () Bool)

(assert (= b_and!599 (and (=> t!431 result!157) b_and!601)))

(declare-fun b_lambda!591 () Bool)

(assert (=> (not b_lambda!591) (not bs!440)))

(declare-fun t!655 () Bool)

(declare-fun tb!343 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!655) tb!343))

(declare-fun result!383 () Bool)

(assert (=> tb!343 (= result!383 tp_is_empty!25)))

(assert (=> bs!440 t!655))

(declare-fun b_and!603 () Bool)

(assert (= b_and!601 (and (=> t!655 result!383) b_and!603)))

(declare-fun b_lambda!593 () Bool)

(assert (=> (not b_lambda!593) (not bs!440)))

(declare-fun t!657 () Bool)

(declare-fun tb!345 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!657) tb!345))

(declare-fun result!385 () Bool)

(assert (=> tb!345 (= result!385 tp_is_empty!25)))

(assert (=> bs!440 t!657))

(declare-fun b_and!605 () Bool)

(assert (= b_and!603 (and (=> t!657 result!385) b_and!605)))

(assert (=> bs!439 m!7267))

(declare-fun m!7489 () Bool)

(assert (=> bs!439 m!7489))

(declare-fun m!7491 () Bool)

(assert (=> bs!439 m!7491))

(declare-fun m!7493 () Bool)

(assert (=> bs!439 m!7493))

(assert (=> bs!439 s!280))

(declare-fun bs!441 () Bool)

(declare-fun s!282 () Bool)

(assert (= bs!441 (and start!734 b!4717 s!282)))

(assert (=> bs!441 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1937)) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1939)))))))

(declare-fun b_lambda!595 () Bool)

(assert (=> (not b_lambda!595) (not bs!441)))

(declare-fun t!659 () Bool)

(declare-fun tb!347 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!659) tb!347))

(declare-fun result!387 () Bool)

(assert (=> tb!347 (= result!387 tp_is_empty!25)))

(assert (=> bs!441 t!659))

(declare-fun b_and!607 () Bool)

(assert (= b_and!605 (and (=> t!659 result!387) b_and!607)))

(declare-fun b_lambda!597 () Bool)

(assert (=> (not b_lambda!597) (not bs!441)))

(declare-fun t!661 () Bool)

(declare-fun tb!349 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!661) tb!349))

(declare-fun result!389 () Bool)

(assert (=> tb!349 (= result!389 tp_is_empty!25)))

(assert (=> bs!441 t!661))

(declare-fun b_and!609 () Bool)

(assert (= b_and!607 (and (=> t!661 result!389) b_and!609)))

(declare-fun b_lambda!599 () Bool)

(assert (=> (not b_lambda!599) (not bs!441)))

(declare-fun t!663 () Bool)

(declare-fun tb!351 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!663) tb!351))

(declare-fun result!391 () Bool)

(assert (=> tb!351 (= result!391 tp_is_empty!25)))

(assert (=> bs!441 t!663))

(declare-fun b_and!611 () Bool)

(assert (= b_and!609 (and (=> t!663 result!391) b_and!611)))

(declare-fun b_lambda!601 () Bool)

(assert (=> (not b_lambda!601) (not bs!441)))

(declare-fun t!665 () Bool)

(declare-fun tb!353 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!665) tb!353))

(declare-fun result!393 () Bool)

(assert (=> tb!353 (= result!393 tp_is_empty!25)))

(assert (=> bs!441 t!665))

(declare-fun b_and!613 () Bool)

(assert (= b_and!611 (and (=> t!665 result!393) b_and!613)))

(declare-fun bs!442 () Bool)

(assert (= bs!442 (and m!7267 m!7255 m!7263)))

(declare-fun m!7495 () Bool)

(assert (=> bs!442 m!7495))

(declare-fun m!7497 () Bool)

(assert (=> bs!442 m!7497))

(declare-fun m!7499 () Bool)

(assert (=> bs!442 m!7499))

(declare-fun m!7501 () Bool)

(assert (=> bs!442 m!7501))

(assert (=> bs!442 s!282))

(declare-fun bs!443 () Bool)

(declare-fun s!284 () Bool)

(assert (= bs!443 (and start!734 b!4717 s!284)))

(assert (=> bs!443 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1939)))))))

(declare-fun b_lambda!603 () Bool)

(assert (=> (not b_lambda!603) (not bs!443)))

(declare-fun t!667 () Bool)

(declare-fun tb!355 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!667) tb!355))

(declare-fun result!395 () Bool)

(assert (=> tb!355 (= result!395 tp_is_empty!25)))

(assert (=> bs!443 t!667))

(declare-fun b_and!615 () Bool)

(assert (= b_and!613 (and (=> t!667 result!395) b_and!615)))

(declare-fun b_lambda!605 () Bool)

(assert (=> (not b_lambda!605) (not bs!443)))

(declare-fun t!669 () Bool)

(declare-fun tb!357 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!669) tb!357))

(declare-fun result!397 () Bool)

(assert (=> tb!357 (= result!397 tp_is_empty!25)))

(assert (=> bs!443 t!669))

(declare-fun b_and!617 () Bool)

(assert (= b_and!615 (and (=> t!669 result!397) b_and!617)))

(declare-fun b_lambda!607 () Bool)

(assert (=> (not b_lambda!607) (not bs!443)))

(declare-fun t!671 () Bool)

(declare-fun tb!359 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!671) tb!359))

(declare-fun result!399 () Bool)

(assert (=> tb!359 (= result!399 tp_is_empty!25)))

(assert (=> bs!443 t!671))

(declare-fun b_and!619 () Bool)

(assert (= b_and!617 (and (=> t!671 result!399) b_and!619)))

(declare-fun b_lambda!609 () Bool)

(assert (=> (not b_lambda!609) (not bs!443)))

(assert (=> bs!443 t!419))

(declare-fun b_and!621 () Bool)

(assert (= b_and!619 (and (=> t!419 result!143) b_and!621)))

(declare-fun m!7503 () Bool)

(assert (=> bs!442 m!7503))

(declare-fun m!7505 () Bool)

(assert (=> bs!442 m!7505))

(assert (=> bs!442 m!7255))

(declare-fun m!7507 () Bool)

(assert (=> bs!442 m!7507))

(assert (=> bs!442 s!284))

(declare-fun bs!444 () Bool)

(declare-fun s!286 () Bool)

(assert (= bs!444 (and start!734 b!4717 s!286)))

(assert (=> bs!444 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1937)) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1938)))))))

(declare-fun b_lambda!611 () Bool)

(assert (=> (not b_lambda!611) (not bs!444)))

(declare-fun t!673 () Bool)

(declare-fun tb!361 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!673) tb!361))

(declare-fun result!401 () Bool)

(assert (=> tb!361 (= result!401 tp_is_empty!25)))

(assert (=> bs!444 t!673))

(declare-fun b_and!623 () Bool)

(assert (= b_and!621 (and (=> t!673 result!401) b_and!623)))

(declare-fun b_lambda!613 () Bool)

(assert (=> (not b_lambda!613) (not bs!444)))

(declare-fun t!675 () Bool)

(declare-fun tb!363 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!675) tb!363))

(declare-fun result!403 () Bool)

(assert (=> tb!363 (= result!403 tp_is_empty!25)))

(assert (=> bs!444 t!675))

(declare-fun b_and!625 () Bool)

(assert (= b_and!623 (and (=> t!675 result!403) b_and!625)))

(declare-fun b_lambda!615 () Bool)

(assert (=> (not b_lambda!615) (not bs!444)))

(declare-fun t!677 () Bool)

(declare-fun tb!365 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!677) tb!365))

(declare-fun result!405 () Bool)

(assert (=> tb!365 (= result!405 tp_is_empty!25)))

(assert (=> bs!444 t!677))

(declare-fun b_and!627 () Bool)

(assert (= b_and!625 (and (=> t!677 result!405) b_and!627)))

(declare-fun b_lambda!617 () Bool)

(assert (=> (not b_lambda!617) (not bs!444)))

(assert (=> bs!444 t!431))

(declare-fun b_and!629 () Bool)

(assert (= b_and!627 (and (=> t!431 result!157) b_and!629)))

(declare-fun bs!445 () Bool)

(assert (= bs!445 (and m!7267 m!7255 m!7259)))

(declare-fun m!7509 () Bool)

(assert (=> bs!445 m!7509))

(declare-fun m!7511 () Bool)

(assert (=> bs!445 m!7511))

(assert (=> bs!445 m!7267))

(declare-fun m!7513 () Bool)

(assert (=> bs!445 m!7513))

(assert (=> bs!445 s!286))

(declare-fun bs!446 () Bool)

(declare-fun s!288 () Bool)

(assert (= bs!446 (and start!734 b!4717 s!288)))

(assert (=> bs!446 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1938)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!619 () Bool)

(assert (=> (not b_lambda!619) (not bs!446)))

(declare-fun t!679 () Bool)

(declare-fun tb!367 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!679) tb!367))

(declare-fun result!407 () Bool)

(assert (=> tb!367 (= result!407 tp_is_empty!25)))

(assert (=> bs!446 t!679))

(declare-fun b_and!631 () Bool)

(assert (= b_and!629 (and (=> t!679 result!407) b_and!631)))

(declare-fun b_lambda!621 () Bool)

(assert (=> (not b_lambda!621) (not bs!446)))

(declare-fun t!681 () Bool)

(declare-fun tb!369 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!681) tb!369))

(declare-fun result!409 () Bool)

(assert (=> tb!369 (= result!409 tp_is_empty!25)))

(assert (=> bs!446 t!681))

(declare-fun b_and!633 () Bool)

(assert (= b_and!631 (and (=> t!681 result!409) b_and!633)))

(declare-fun b_lambda!623 () Bool)

(assert (=> (not b_lambda!623) (not bs!446)))

(declare-fun t!683 () Bool)

(declare-fun tb!371 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!683) tb!371))

(declare-fun result!411 () Bool)

(assert (=> tb!371 (= result!411 tp_is_empty!25)))

(assert (=> bs!446 t!683))

(declare-fun b_and!635 () Bool)

(assert (= b_and!633 (and (=> t!683 result!411) b_and!635)))

(declare-fun b_lambda!625 () Bool)

(assert (=> (not b_lambda!625) (not bs!446)))

(assert (=> bs!446 t!657))

(declare-fun b_and!637 () Bool)

(assert (= b_and!635 (and (=> t!657 result!385) b_and!637)))

(declare-fun m!7515 () Bool)

(assert (=> bs!439 m!7515))

(declare-fun m!7517 () Bool)

(assert (=> bs!439 m!7517))

(assert (=> bs!439 m!7491))

(declare-fun m!7519 () Bool)

(assert (=> bs!439 m!7519))

(assert (=> bs!439 s!288))

(declare-fun bs!447 () Bool)

(declare-fun s!290 () Bool)

(assert (= bs!447 (and start!734 b!4717 s!290)))

(assert (=> bs!447 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!627 () Bool)

(assert (=> (not b_lambda!627) (not bs!447)))

(declare-fun t!685 () Bool)

(declare-fun tb!373 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!685) tb!373))

(declare-fun result!413 () Bool)

(assert (=> tb!373 (= result!413 tp_is_empty!25)))

(assert (=> bs!447 t!685))

(declare-fun b_and!639 () Bool)

(assert (= b_and!637 (and (=> t!685 result!413) b_and!639)))

(declare-fun b_lambda!629 () Bool)

(assert (=> (not b_lambda!629) (not bs!447)))

(declare-fun t!687 () Bool)

(declare-fun tb!375 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!687) tb!375))

(declare-fun result!415 () Bool)

(assert (=> tb!375 (= result!415 tp_is_empty!25)))

(assert (=> bs!447 t!687))

(declare-fun b_and!641 () Bool)

(assert (= b_and!639 (and (=> t!687 result!415) b_and!641)))

(declare-fun b_lambda!631 () Bool)

(assert (=> (not b_lambda!631) (not bs!447)))

(declare-fun t!689 () Bool)

(declare-fun tb!377 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!689) tb!377))

(declare-fun result!417 () Bool)

(assert (=> tb!377 (= result!417 tp_is_empty!25)))

(assert (=> bs!447 t!689))

(declare-fun b_and!643 () Bool)

(assert (= b_and!641 (and (=> t!689 result!417) b_and!643)))

(declare-fun b_lambda!633 () Bool)

(assert (=> (not b_lambda!633) (not bs!447)))

(declare-fun t!691 () Bool)

(declare-fun tb!379 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!691) tb!379))

(declare-fun result!419 () Bool)

(assert (=> tb!379 (= result!419 tp_is_empty!25)))

(assert (=> bs!447 t!691))

(declare-fun b_and!645 () Bool)

(assert (= b_and!643 (and (=> t!691 result!419) b_and!645)))

(declare-fun bs!448 () Bool)

(assert (= bs!448 (and m!7259 m!7255)))

(declare-fun m!7521 () Bool)

(assert (=> bs!448 m!7521))

(declare-fun m!7523 () Bool)

(assert (=> bs!448 m!7523))

(declare-fun m!7525 () Bool)

(assert (=> bs!448 m!7525))

(declare-fun m!7527 () Bool)

(assert (=> bs!448 m!7527))

(assert (=> bs!448 s!290))

(declare-fun bs!449 () Bool)

(declare-fun s!292 () Bool)

(assert (= bs!449 (and start!734 b!4717 s!292)))

(assert (=> bs!449 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1939)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 x!1939) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!635 () Bool)

(assert (=> (not b_lambda!635) (not bs!449)))

(declare-fun t!693 () Bool)

(declare-fun tb!381 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!693) tb!381))

(declare-fun result!421 () Bool)

(assert (=> tb!381 (= result!421 tp_is_empty!25)))

(assert (=> bs!449 t!693))

(declare-fun b_and!647 () Bool)

(assert (= b_and!645 (and (=> t!693 result!421) b_and!647)))

(declare-fun b_lambda!637 () Bool)

(assert (=> (not b_lambda!637) (not bs!449)))

(assert (=> bs!449 t!665))

(declare-fun b_and!649 () Bool)

(assert (= b_and!647 (and (=> t!665 result!393) b_and!649)))

(declare-fun b_lambda!639 () Bool)

(assert (=> (not b_lambda!639) (not bs!449)))

(declare-fun t!695 () Bool)

(declare-fun tb!383 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!695) tb!383))

(declare-fun result!423 () Bool)

(assert (=> tb!383 (= result!423 tp_is_empty!25)))

(assert (=> bs!449 t!695))

(declare-fun b_and!651 () Bool)

(assert (= b_and!649 (and (=> t!695 result!423) b_and!651)))

(declare-fun b_lambda!641 () Bool)

(assert (=> (not b_lambda!641) (not bs!449)))

(assert (=> bs!449 t!651))

(declare-fun b_and!653 () Bool)

(assert (= b_and!651 (and (=> t!651 result!379) b_and!653)))

(assert (=> bs!439 m!7499))

(declare-fun m!7529 () Bool)

(assert (=> bs!439 m!7529))

(assert (=> bs!439 m!7485))

(declare-fun m!7531 () Bool)

(assert (=> bs!439 m!7531))

(assert (=> bs!439 s!292))

(declare-fun bs!450 () Bool)

(declare-fun s!294 () Bool)

(assert (= bs!450 (and start!734 b!4717 s!294)))

(assert (=> bs!450 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!643 () Bool)

(assert (=> (not b_lambda!643) (not bs!450)))

(declare-fun t!697 () Bool)

(declare-fun tb!385 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!697) tb!385))

(declare-fun result!425 () Bool)

(assert (=> tb!385 (= result!425 tp_is_empty!25)))

(assert (=> bs!450 t!697))

(declare-fun b_and!655 () Bool)

(assert (= b_and!653 (and (=> t!697 result!425) b_and!655)))

(declare-fun b_lambda!645 () Bool)

(assert (=> (not b_lambda!645) (not bs!450)))

(assert (=> bs!450 t!669))

(declare-fun b_and!657 () Bool)

(assert (= b_and!655 (and (=> t!669 result!397) b_and!657)))

(declare-fun b_lambda!647 () Bool)

(assert (=> (not b_lambda!647) (not bs!450)))

(declare-fun t!699 () Bool)

(declare-fun tb!387 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!699) tb!387))

(declare-fun result!427 () Bool)

(assert (=> tb!387 (= result!427 tp_is_empty!25)))

(assert (=> bs!450 t!699))

(declare-fun b_and!659 () Bool)

(assert (= b_and!657 (and (=> t!699 result!427) b_and!659)))

(declare-fun b_lambda!649 () Bool)

(assert (=> (not b_lambda!649) (not bs!450)))

(assert (=> bs!450 t!687))

(declare-fun b_and!661 () Bool)

(assert (= b_and!659 (and (=> t!687 result!415) b_and!661)))

(assert (=> bs!448 m!7503))

(declare-fun m!7533 () Bool)

(assert (=> bs!448 m!7533))

(assert (=> bs!448 m!7521))

(declare-fun m!7535 () Bool)

(assert (=> bs!448 m!7535))

(assert (=> bs!448 s!294))

(declare-fun bs!451 () Bool)

(declare-fun s!296 () Bool)

(assert (= bs!451 (and start!734 b!4717 s!296)))

(assert (=> bs!451 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!651 () Bool)

(assert (=> (not b_lambda!651) (not bs!451)))

(declare-fun t!701 () Bool)

(declare-fun tb!389 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!701) tb!389))

(declare-fun result!429 () Bool)

(assert (=> tb!389 (= result!429 tp_is_empty!25)))

(assert (=> bs!451 t!701))

(declare-fun b_and!663 () Bool)

(assert (= b_and!661 (and (=> t!701 result!429) b_and!663)))

(declare-fun b_lambda!653 () Bool)

(assert (=> (not b_lambda!653) (not bs!451)))

(declare-fun t!703 () Bool)

(declare-fun tb!391 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!703) tb!391))

(declare-fun result!431 () Bool)

(assert (=> tb!391 (= result!431 tp_is_empty!25)))

(assert (=> bs!451 t!703))

(declare-fun b_and!665 () Bool)

(assert (= b_and!663 (and (=> t!703 result!431) b_and!665)))

(declare-fun b_lambda!655 () Bool)

(assert (=> (not b_lambda!655) (not bs!451)))

(declare-fun t!705 () Bool)

(declare-fun tb!393 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!705) tb!393))

(declare-fun result!433 () Bool)

(assert (=> tb!393 (= result!433 tp_is_empty!25)))

(assert (=> bs!451 t!705))

(declare-fun b_and!667 () Bool)

(assert (= b_and!665 (and (=> t!705 result!433) b_and!667)))

(declare-fun b_lambda!657 () Bool)

(assert (=> (not b_lambda!657) (not bs!451)))

(assert (=> bs!451 t!687))

(declare-fun b_and!669 () Bool)

(assert (= b_and!667 (and (=> t!687 result!415) b_and!669)))

(declare-fun m!7537 () Bool)

(assert (=> bs!448 m!7537))

(declare-fun m!7539 () Bool)

(assert (=> bs!448 m!7539))

(assert (=> bs!448 m!7521))

(declare-fun m!7541 () Bool)

(assert (=> bs!448 m!7541))

(assert (=> bs!448 s!296))

(declare-fun bs!452 () Bool)

(declare-fun s!298 () Bool)

(assert (= bs!452 (and start!734 b!4717 s!298)))

(assert (=> bs!452 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1938)) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1938)))))))

(declare-fun b_lambda!659 () Bool)

(assert (=> (not b_lambda!659) (not bs!452)))

(declare-fun t!707 () Bool)

(declare-fun tb!395 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!707) tb!395))

(declare-fun result!435 () Bool)

(assert (=> tb!395 (= result!435 tp_is_empty!25)))

(assert (=> bs!452 t!707))

(declare-fun b_and!671 () Bool)

(assert (= b_and!669 (and (=> t!707 result!435) b_and!671)))

(declare-fun b_lambda!661 () Bool)

(assert (=> (not b_lambda!661) (not bs!452)))

(assert (=> bs!452 t!431))

(declare-fun b_and!673 () Bool)

(assert (= b_and!671 (and (=> t!431 result!157) b_and!673)))

(declare-fun b_lambda!663 () Bool)

(assert (=> (not b_lambda!663) (not bs!452)))

(declare-fun t!709 () Bool)

(declare-fun tb!397 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!709) tb!397))

(declare-fun result!437 () Bool)

(assert (=> tb!397 (= result!437 tp_is_empty!25)))

(assert (=> bs!452 t!709))

(declare-fun b_and!675 () Bool)

(assert (= b_and!673 (and (=> t!709 result!437) b_and!675)))

(declare-fun b_lambda!665 () Bool)

(assert (=> (not b_lambda!665) (not bs!452)))

(assert (=> bs!452 t!681))

(declare-fun b_and!677 () Bool)

(assert (= b_and!675 (and (=> t!681 result!409) b_and!677)))

(declare-fun bs!453 () Bool)

(assert (= bs!453 (and m!7267 m!7259)))

(assert (=> bs!453 m!7267))

(declare-fun m!7543 () Bool)

(assert (=> bs!453 m!7543))

(assert (=> bs!453 m!7515))

(declare-fun m!7545 () Bool)

(assert (=> bs!453 m!7545))

(assert (=> bs!453 s!298))

(declare-fun bs!454 () Bool)

(declare-fun s!300 () Bool)

(assert (= bs!454 (and start!734 b!4717 s!300)))

(assert (=> bs!454 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1937)) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1938)))))))

(declare-fun b_lambda!667 () Bool)

(assert (=> (not b_lambda!667) (not bs!454)))

(declare-fun t!711 () Bool)

(declare-fun tb!399 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!711) tb!399))

(declare-fun result!439 () Bool)

(assert (=> tb!399 (= result!439 tp_is_empty!25)))

(assert (=> bs!454 t!711))

(declare-fun b_and!679 () Bool)

(assert (= b_and!677 (and (=> t!711 result!439) b_and!679)))

(declare-fun b_lambda!669 () Bool)

(assert (=> (not b_lambda!669) (not bs!454)))

(assert (=> bs!454 t!661))

(declare-fun b_and!681 () Bool)

(assert (= b_and!679 (and (=> t!661 result!389) b_and!681)))

(declare-fun b_lambda!671 () Bool)

(assert (=> (not b_lambda!671) (not bs!454)))

(declare-fun t!713 () Bool)

(declare-fun tb!401 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!713) tb!401))

(declare-fun result!441 () Bool)

(assert (=> tb!401 (= result!441 tp_is_empty!25)))

(assert (=> bs!454 t!713))

(declare-fun b_and!683 () Bool)

(assert (= b_and!681 (and (=> t!713 result!441) b_and!683)))

(declare-fun b_lambda!673 () Bool)

(assert (=> (not b_lambda!673) (not bs!454)))

(assert (=> bs!454 t!431))

(declare-fun b_and!685 () Bool)

(assert (= b_and!683 (and (=> t!431 result!157) b_and!685)))

(assert (=> m!7267 m!7495))

(declare-fun m!7547 () Bool)

(assert (=> m!7267 m!7547))

(declare-fun m!7549 () Bool)

(assert (=> m!7267 m!7549))

(assert (=> m!7267 s!300))

(assert (=> bs!448 s!282))

(declare-fun bs!455 () Bool)

(declare-fun s!302 () Bool)

(assert (= bs!455 (and start!734 b!4717 s!302)))

(assert (=> bs!455 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1938)))))))

(declare-fun b_lambda!675 () Bool)

(assert (=> (not b_lambda!675) (not bs!455)))

(declare-fun t!715 () Bool)

(declare-fun tb!403 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!715) tb!403))

(declare-fun result!443 () Bool)

(assert (=> tb!403 (= result!443 tp_is_empty!25)))

(assert (=> bs!455 t!715))

(declare-fun b_and!687 () Bool)

(assert (= b_and!685 (and (=> t!715 result!443) b_and!687)))

(declare-fun b_lambda!677 () Bool)

(assert (=> (not b_lambda!677) (not bs!455)))

(assert (=> bs!455 t!669))

(declare-fun b_and!689 () Bool)

(assert (= b_and!687 (and (=> t!669 result!397) b_and!689)))

(declare-fun b_lambda!679 () Bool)

(assert (=> (not b_lambda!679) (not bs!455)))

(declare-fun t!717 () Bool)

(declare-fun tb!405 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!717) tb!405))

(declare-fun result!445 () Bool)

(assert (=> tb!405 (= result!445 tp_is_empty!25)))

(assert (=> bs!455 t!717))

(declare-fun b_and!691 () Bool)

(assert (= b_and!689 (and (=> t!717 result!445) b_and!691)))

(declare-fun b_lambda!681 () Bool)

(assert (=> (not b_lambda!681) (not bs!455)))

(declare-fun t!719 () Bool)

(declare-fun tb!407 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!719) tb!407))

(declare-fun result!447 () Bool)

(assert (=> tb!407 (= result!447 tp_is_empty!25)))

(assert (=> bs!455 t!719))

(declare-fun b_and!693 () Bool)

(assert (= b_and!691 (and (=> t!719 result!447) b_and!693)))

(assert (=> bs!445 m!7503))

(declare-fun m!7551 () Bool)

(assert (=> bs!445 m!7551))

(declare-fun m!7553 () Bool)

(assert (=> bs!445 m!7553))

(declare-fun m!7555 () Bool)

(assert (=> bs!445 m!7555))

(assert (=> bs!445 s!302))

(declare-fun bs!456 () Bool)

(declare-fun s!304 () Bool)

(assert (= bs!456 (and start!734 b!4717 s!304)))

(assert (=> bs!456 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_2!8 x!1938)))))))

(declare-fun b_lambda!683 () Bool)

(assert (=> (not b_lambda!683) (not bs!456)))

(declare-fun t!721 () Bool)

(declare-fun tb!409 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!721) tb!409))

(declare-fun result!449 () Bool)

(assert (=> tb!409 (= result!449 tp_is_empty!25)))

(assert (=> bs!456 t!721))

(declare-fun b_and!695 () Bool)

(assert (= b_and!693 (and (=> t!721 result!449) b_and!695)))

(declare-fun b_lambda!685 () Bool)

(assert (=> (not b_lambda!685) (not bs!456)))

(assert (=> bs!456 t!423))

(declare-fun b_and!697 () Bool)

(assert (= b_and!695 (and (=> t!423 result!149) b_and!697)))

(declare-fun b_lambda!687 () Bool)

(assert (=> (not b_lambda!687) (not bs!456)))

(declare-fun t!723 () Bool)

(declare-fun tb!411 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!723) tb!411))

(declare-fun result!451 () Bool)

(assert (=> tb!411 (= result!451 tp_is_empty!25)))

(assert (=> bs!456 t!723))

(declare-fun b_and!699 () Bool)

(assert (= b_and!697 (and (=> t!723 result!451) b_and!699)))

(declare-fun b_lambda!689 () Bool)

(assert (=> (not b_lambda!689) (not bs!456)))

(declare-fun t!725 () Bool)

(declare-fun tb!413 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!725) tb!413))

(declare-fun result!453 () Bool)

(assert (=> tb!413 (= result!453 tp_is_empty!25)))

(assert (=> bs!456 t!725))

(declare-fun b_and!701 () Bool)

(assert (= b_and!699 (and (=> t!725 result!453) b_and!701)))

(assert (=> bs!453 m!7259))

(declare-fun m!7557 () Bool)

(assert (=> bs!453 m!7557))

(declare-fun m!7559 () Bool)

(assert (=> bs!453 m!7559))

(declare-fun m!7561 () Bool)

(assert (=> bs!453 m!7561))

(assert (=> bs!453 s!304))

(declare-fun bs!457 () Bool)

(assert (= bs!457 (and m!7263 m!7255 m!7259)))

(assert (=> bs!457 s!278))

(assert (=> m!7267 s!298))

(declare-fun bs!458 () Bool)

(declare-fun s!306 () Bool)

(assert (= bs!458 (and start!734 b!4717 s!306)))

(assert (=> bs!458 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1939)) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 x!1939) (_2!8 x!1939)))))))

(declare-fun b_lambda!691 () Bool)

(assert (=> (not b_lambda!691) (not bs!458)))

(declare-fun t!727 () Bool)

(declare-fun tb!415 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!727) tb!415))

(declare-fun result!455 () Bool)

(assert (=> tb!415 (= result!455 tp_is_empty!25)))

(assert (=> bs!458 t!727))

(declare-fun b_and!703 () Bool)

(assert (= b_and!701 (and (=> t!727 result!455) b_and!703)))

(declare-fun b_lambda!693 () Bool)

(assert (=> (not b_lambda!693) (not bs!458)))

(assert (=> bs!458 t!427))

(declare-fun b_and!705 () Bool)

(assert (= b_and!703 (and (=> t!427 result!153) b_and!705)))

(declare-fun b_lambda!695 () Bool)

(assert (=> (not b_lambda!695) (not bs!458)))

(declare-fun t!729 () Bool)

(declare-fun tb!417 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!729) tb!417))

(declare-fun result!457 () Bool)

(assert (=> tb!417 (= result!457 tp_is_empty!25)))

(assert (=> bs!458 t!729))

(declare-fun b_and!707 () Bool)

(assert (= b_and!705 (and (=> t!729 result!457) b_and!707)))

(declare-fun b_lambda!697 () Bool)

(assert (=> (not b_lambda!697) (not bs!458)))

(declare-fun t!731 () Bool)

(declare-fun tb!419 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!731) tb!419))

(declare-fun result!459 () Bool)

(assert (=> tb!419 (= result!459 tp_is_empty!25)))

(assert (=> bs!458 t!731))

(declare-fun b_and!709 () Bool)

(assert (= b_and!707 (and (=> t!731 result!459) b_and!709)))

(declare-fun m!7563 () Bool)

(assert (=> m!7263 m!7563))

(declare-fun m!7565 () Bool)

(assert (=> m!7263 m!7565))

(declare-fun m!7567 () Bool)

(assert (=> m!7263 m!7567))

(assert (=> m!7263 s!306))

(declare-fun bs!459 () Bool)

(declare-fun s!308 () Bool)

(assert (= bs!459 (and start!734 b!4717 s!308)))

(assert (=> bs!459 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1938)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!699 () Bool)

(assert (=> (not b_lambda!699) (not bs!459)))

(declare-fun t!733 () Bool)

(declare-fun tb!421 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!733) tb!421))

(declare-fun result!461 () Bool)

(assert (=> tb!421 (= result!461 tp_is_empty!25)))

(assert (=> bs!459 t!733))

(declare-fun b_and!711 () Bool)

(assert (= b_and!709 (and (=> t!733 result!461) b_and!711)))

(declare-fun b_lambda!701 () Bool)

(assert (=> (not b_lambda!701) (not bs!459)))

(assert (=> bs!459 t!719))

(declare-fun b_and!713 () Bool)

(assert (= b_and!711 (and (=> t!719 result!447) b_and!713)))

(declare-fun b_lambda!703 () Bool)

(assert (=> (not b_lambda!703) (not bs!459)))

(declare-fun t!735 () Bool)

(declare-fun tb!423 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!735) tb!423))

(declare-fun result!463 () Bool)

(assert (=> tb!423 (= result!463 tp_is_empty!25)))

(assert (=> bs!459 t!735))

(declare-fun b_and!715 () Bool)

(assert (= b_and!713 (and (=> t!735 result!463) b_and!715)))

(declare-fun b_lambda!705 () Bool)

(assert (=> (not b_lambda!705) (not bs!459)))

(assert (=> bs!459 t!657))

(declare-fun b_and!717 () Bool)

(assert (= b_and!715 (and (=> t!657 result!385) b_and!717)))

(assert (=> bs!445 m!7553))

(declare-fun m!7569 () Bool)

(assert (=> bs!445 m!7569))

(assert (=> bs!445 m!7491))

(declare-fun m!7571 () Bool)

(assert (=> bs!445 m!7571))

(assert (=> bs!445 s!308))

(declare-fun bs!460 () Bool)

(declare-fun s!310 () Bool)

(assert (= bs!460 (and start!734 b!4717 s!310)))

(assert (=> bs!460 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1939)) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1939) (_2!8 x!1939)))))))

(declare-fun b_lambda!707 () Bool)

(assert (=> (not b_lambda!707) (not bs!460)))

(declare-fun t!737 () Bool)

(declare-fun tb!425 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!737) tb!425))

(declare-fun result!465 () Bool)

(assert (=> tb!425 (= result!465 tp_is_empty!25)))

(assert (=> bs!460 t!737))

(declare-fun b_and!719 () Bool)

(assert (= b_and!717 (and (=> t!737 result!465) b_and!719)))

(declare-fun b_lambda!709 () Bool)

(assert (=> (not b_lambda!709) (not bs!460)))

(assert (=> bs!460 t!419))

(declare-fun b_and!721 () Bool)

(assert (= b_and!719 (and (=> t!419 result!143) b_and!721)))

(declare-fun b_lambda!711 () Bool)

(assert (=> (not b_lambda!711) (not bs!460)))

(declare-fun t!739 () Bool)

(declare-fun tb!427 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!739) tb!427))

(declare-fun result!467 () Bool)

(assert (=> tb!427 (= result!467 tp_is_empty!25)))

(assert (=> bs!460 t!739))

(declare-fun b_and!723 () Bool)

(assert (= b_and!721 (and (=> t!739 result!467) b_and!723)))

(declare-fun b_lambda!713 () Bool)

(assert (=> (not b_lambda!713) (not bs!460)))

(assert (=> bs!460 t!731))

(declare-fun b_and!725 () Bool)

(assert (= b_and!723 (and (=> t!731 result!459) b_and!725)))

(declare-fun m!7573 () Bool)

(assert (=> m!7255 m!7573))

(assert (=> m!7255 m!7565))

(declare-fun m!7575 () Bool)

(assert (=> m!7255 m!7575))

(assert (=> m!7255 s!310))

(declare-fun bs!461 () Bool)

(declare-fun s!312 () Bool)

(assert (= bs!461 (and start!734 b!4717 s!312)))

(assert (=> bs!461 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1937)) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1939)))))))

(declare-fun b_lambda!715 () Bool)

(assert (=> (not b_lambda!715) (not bs!461)))

(declare-fun t!741 () Bool)

(declare-fun tb!429 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!741) tb!429))

(declare-fun result!469 () Bool)

(assert (=> tb!429 (= result!469 tp_is_empty!25)))

(assert (=> bs!461 t!741))

(declare-fun b_and!727 () Bool)

(assert (= b_and!725 (and (=> t!741 result!469) b_and!727)))

(declare-fun b_lambda!717 () Bool)

(assert (=> (not b_lambda!717) (not bs!461)))

(assert (=> bs!461 t!675))

(declare-fun b_and!729 () Bool)

(assert (= b_and!727 (and (=> t!675 result!403) b_and!729)))

(declare-fun b_lambda!719 () Bool)

(assert (=> (not b_lambda!719) (not bs!461)))

(declare-fun t!743 () Bool)

(declare-fun tb!431 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!743) tb!431))

(declare-fun result!471 () Bool)

(assert (=> tb!431 (= result!471 tp_is_empty!25)))

(assert (=> bs!461 t!743))

(declare-fun b_and!731 () Bool)

(assert (= b_and!729 (and (=> t!743 result!471) b_and!731)))

(declare-fun b_lambda!721 () Bool)

(assert (=> (not b_lambda!721) (not bs!461)))

(assert (=> bs!461 t!665))

(declare-fun b_and!733 () Bool)

(assert (= b_and!731 (and (=> t!665 result!393) b_and!733)))

(assert (=> bs!442 m!7509))

(declare-fun m!7577 () Bool)

(assert (=> bs!442 m!7577))

(assert (=> bs!442 m!7499))

(declare-fun m!7579 () Bool)

(assert (=> bs!442 m!7579))

(assert (=> bs!442 s!312))

(declare-fun bs!462 () Bool)

(declare-fun s!314 () Bool)

(assert (= bs!462 (and start!734 b!4717 s!314)))

(assert (=> bs!462 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1937)) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1939)))))))

(declare-fun b_lambda!723 () Bool)

(assert (=> (not b_lambda!723) (not bs!462)))

(declare-fun t!745 () Bool)

(declare-fun tb!433 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!745) tb!433))

(declare-fun result!473 () Bool)

(assert (=> tb!433 (= result!473 tp_is_empty!25)))

(assert (=> bs!462 t!745))

(declare-fun b_and!735 () Bool)

(assert (= b_and!733 (and (=> t!745 result!473) b_and!735)))

(declare-fun b_lambda!725 () Bool)

(assert (=> (not b_lambda!725) (not bs!462)))

(declare-fun t!747 () Bool)

(declare-fun tb!435 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!747) tb!435))

(declare-fun result!475 () Bool)

(assert (=> tb!435 (= result!475 tp_is_empty!25)))

(assert (=> bs!462 t!747))

(declare-fun b_and!737 () Bool)

(assert (= b_and!735 (and (=> t!747 result!475) b_and!737)))

(declare-fun b_lambda!727 () Bool)

(assert (=> (not b_lambda!727) (not bs!462)))

(declare-fun t!749 () Bool)

(declare-fun tb!437 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!749) tb!437))

(declare-fun result!477 () Bool)

(assert (=> tb!437 (= result!477 tp_is_empty!25)))

(assert (=> bs!462 t!749))

(declare-fun b_and!739 () Bool)

(assert (= b_and!737 (and (=> t!749 result!477) b_and!739)))

(declare-fun b_lambda!729 () Bool)

(assert (=> (not b_lambda!729) (not bs!462)))

(assert (=> bs!462 t!665))

(declare-fun b_and!741 () Bool)

(assert (= b_and!739 (and (=> t!665 result!393) b_and!741)))

(declare-fun m!7581 () Bool)

(assert (=> bs!457 m!7581))

(declare-fun m!7583 () Bool)

(assert (=> bs!457 m!7583))

(assert (=> bs!457 m!7499))

(declare-fun m!7585 () Bool)

(assert (=> bs!457 m!7585))

(assert (=> bs!457 s!314))

(declare-fun bs!463 () Bool)

(declare-fun s!316 () Bool)

(assert (= bs!463 (and start!734 b!4717 s!316)))

(assert (=> bs!463 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_2!8 x!1939)))))))

(declare-fun b_lambda!731 () Bool)

(assert (=> (not b_lambda!731) (not bs!463)))

(declare-fun t!751 () Bool)

(declare-fun tb!439 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!751) tb!439))

(declare-fun result!479 () Bool)

(assert (=> tb!439 (= result!479 tp_is_empty!25)))

(assert (=> bs!463 t!751))

(declare-fun b_and!743 () Bool)

(assert (= b_and!741 (and (=> t!751 result!479) b_and!743)))

(declare-fun b_lambda!733 () Bool)

(assert (=> (not b_lambda!733) (not bs!463)))

(assert (=> bs!463 t!657))

(declare-fun b_and!745 () Bool)

(assert (= b_and!743 (and (=> t!657 result!385) b_and!745)))

(declare-fun b_lambda!735 () Bool)

(assert (=> (not b_lambda!735) (not bs!463)))

(declare-fun t!753 () Bool)

(declare-fun tb!441 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!753) tb!441))

(declare-fun result!481 () Bool)

(assert (=> tb!441 (= result!481 tp_is_empty!25)))

(assert (=> bs!463 t!753))

(declare-fun b_and!747 () Bool)

(assert (= b_and!745 (and (=> t!753 result!481) b_and!747)))

(declare-fun b_lambda!737 () Bool)

(assert (=> (not b_lambda!737) (not bs!463)))

(declare-fun t!755 () Bool)

(declare-fun tb!443 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!755) tb!443))

(declare-fun result!483 () Bool)

(assert (=> tb!443 (= result!483 tp_is_empty!25)))

(assert (=> bs!463 t!755))

(declare-fun b_and!749 () Bool)

(assert (= b_and!747 (and (=> t!755 result!483) b_and!749)))

(assert (=> bs!439 m!7491))

(declare-fun m!7587 () Bool)

(assert (=> bs!439 m!7587))

(declare-fun m!7589 () Bool)

(assert (=> bs!439 m!7589))

(declare-fun m!7591 () Bool)

(assert (=> bs!439 m!7591))

(assert (=> bs!439 s!316))

(assert (=> bs!453 s!300))

(declare-fun bs!464 () Bool)

(declare-fun s!318 () Bool)

(assert (= bs!464 (and start!734 b!4717 s!318)))

(assert (=> bs!464 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1938)))))))

(declare-fun b_lambda!739 () Bool)

(assert (=> (not b_lambda!739) (not bs!464)))

(declare-fun t!757 () Bool)

(declare-fun tb!445 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!757) tb!445))

(declare-fun result!485 () Bool)

(assert (=> tb!445 (= result!485 tp_is_empty!25)))

(assert (=> bs!464 t!757))

(declare-fun b_and!751 () Bool)

(assert (= b_and!749 (and (=> t!757 result!485) b_and!751)))

(declare-fun b_lambda!741 () Bool)

(assert (=> (not b_lambda!741) (not bs!464)))

(declare-fun t!759 () Bool)

(declare-fun tb!447 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!759) tb!447))

(declare-fun result!487 () Bool)

(assert (=> tb!447 (= result!487 tp_is_empty!25)))

(assert (=> bs!464 t!759))

(declare-fun b_and!753 () Bool)

(assert (= b_and!751 (and (=> t!759 result!487) b_and!753)))

(declare-fun b_lambda!743 () Bool)

(assert (=> (not b_lambda!743) (not bs!464)))

(declare-fun t!761 () Bool)

(declare-fun tb!449 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!761) tb!449))

(declare-fun result!489 () Bool)

(assert (=> tb!449 (= result!489 tp_is_empty!25)))

(assert (=> bs!464 t!761))

(declare-fun b_and!755 () Bool)

(assert (= b_and!753 (and (=> t!761 result!489) b_and!755)))

(declare-fun b_lambda!745 () Bool)

(assert (=> (not b_lambda!745) (not bs!464)))

(assert (=> bs!464 t!719))

(declare-fun b_and!757 () Bool)

(assert (= b_and!755 (and (=> t!719 result!447) b_and!757)))

(declare-fun m!7593 () Bool)

(assert (=> bs!442 m!7593))

(declare-fun m!7595 () Bool)

(assert (=> bs!442 m!7595))

(assert (=> bs!442 m!7553))

(declare-fun m!7597 () Bool)

(assert (=> bs!442 m!7597))

(assert (=> bs!442 s!318))

(assert (=> bs!439 s!282))

(declare-fun bs!465 () Bool)

(declare-fun s!320 () Bool)

(assert (= bs!465 (and start!734 b!4717 s!320)))

(assert (=> bs!465 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1938)) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1939)))))))

(declare-fun b_lambda!747 () Bool)

(assert (=> (not b_lambda!747) (not bs!465)))

(declare-fun t!763 () Bool)

(declare-fun tb!451 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!763) tb!451))

(declare-fun result!491 () Bool)

(assert (=> tb!451 (= result!491 tp_is_empty!25)))

(assert (=> bs!465 t!763))

(declare-fun b_and!759 () Bool)

(assert (= b_and!757 (and (=> t!763 result!491) b_and!759)))

(declare-fun b_lambda!749 () Bool)

(assert (=> (not b_lambda!749) (not bs!465)))

(assert (=> bs!465 t!431))

(declare-fun b_and!761 () Bool)

(assert (= b_and!759 (and (=> t!431 result!157) b_and!761)))

(declare-fun b_lambda!751 () Bool)

(assert (=> (not b_lambda!751) (not bs!465)))

(declare-fun t!765 () Bool)

(declare-fun tb!453 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!765) tb!453))

(declare-fun result!493 () Bool)

(assert (=> tb!453 (= result!493 tp_is_empty!25)))

(assert (=> bs!465 t!765))

(declare-fun b_and!763 () Bool)

(assert (= b_and!761 (and (=> t!765 result!493) b_and!763)))

(declare-fun b_lambda!753 () Bool)

(assert (=> (not b_lambda!753) (not bs!465)))

(assert (=> bs!465 t!427))

(declare-fun b_and!765 () Bool)

(assert (= b_and!763 (and (=> t!427 result!153) b_and!765)))

(assert (=> bs!457 m!7267))

(declare-fun m!7599 () Bool)

(assert (=> bs!457 m!7599))

(assert (=> bs!457 m!7263))

(declare-fun m!7601 () Bool)

(assert (=> bs!457 m!7601))

(assert (=> bs!457 s!320))

(declare-fun bs!466 () Bool)

(declare-fun s!322 () Bool)

(assert (= bs!466 (and start!734 b!4717 s!322)))

(assert (=> bs!466 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1938)) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1939)))))))

(declare-fun b_lambda!755 () Bool)

(assert (=> (not b_lambda!755) (not bs!466)))

(declare-fun t!767 () Bool)

(declare-fun tb!455 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!767) tb!455))

(declare-fun result!495 () Bool)

(assert (=> tb!455 (= result!495 tp_is_empty!25)))

(assert (=> bs!466 t!767))

(declare-fun b_and!767 () Bool)

(assert (= b_and!765 (and (=> t!767 result!495) b_and!767)))

(declare-fun b_lambda!757 () Bool)

(assert (=> (not b_lambda!757) (not bs!466)))

(assert (=> bs!466 t!681))

(declare-fun b_and!769 () Bool)

(assert (= b_and!767 (and (=> t!681 result!409) b_and!769)))

(declare-fun b_lambda!759 () Bool)

(assert (=> (not b_lambda!759) (not bs!466)))

(declare-fun t!769 () Bool)

(declare-fun tb!457 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!769) tb!457))

(declare-fun result!497 () Bool)

(assert (=> tb!457 (= result!497 tp_is_empty!25)))

(assert (=> bs!466 t!769))

(declare-fun b_and!771 () Bool)

(assert (= b_and!769 (and (=> t!769 result!497) b_and!771)))

(declare-fun b_lambda!761 () Bool)

(assert (=> (not b_lambda!761) (not bs!466)))

(assert (=> bs!466 t!427))

(declare-fun b_and!773 () Bool)

(assert (= b_and!771 (and (=> t!427 result!153) b_and!773)))

(assert (=> m!7263 m!7515))

(declare-fun m!7603 () Bool)

(assert (=> m!7263 m!7603))

(declare-fun m!7605 () Bool)

(assert (=> m!7263 m!7605))

(assert (=> m!7263 s!322))

(assert (=> bs!448 s!292))

(declare-fun bs!467 () Bool)

(declare-fun s!324 () Bool)

(assert (= bs!467 (and start!734 b!4717 s!324)))

(assert (=> bs!467 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_2!8 x!1938)))))))

(declare-fun b_lambda!763 () Bool)

(assert (=> (not b_lambda!763) (not bs!467)))

(declare-fun t!771 () Bool)

(declare-fun tb!459 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!771) tb!459))

(declare-fun result!499 () Bool)

(assert (=> tb!459 (= result!499 tp_is_empty!25)))

(assert (=> bs!467 t!771))

(declare-fun b_and!775 () Bool)

(assert (= b_and!773 (and (=> t!771 result!499) b_and!775)))

(declare-fun b_lambda!765 () Bool)

(assert (=> (not b_lambda!765) (not bs!467)))

(assert (=> bs!467 t!657))

(declare-fun b_and!777 () Bool)

(assert (= b_and!775 (and (=> t!657 result!385) b_and!777)))

(declare-fun b_lambda!767 () Bool)

(assert (=> (not b_lambda!767) (not bs!467)))

(declare-fun t!773 () Bool)

(declare-fun tb!461 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!773) tb!461))

(declare-fun result!501 () Bool)

(assert (=> tb!461 (= result!501 tp_is_empty!25)))

(assert (=> bs!467 t!773))

(declare-fun b_and!779 () Bool)

(assert (= b_and!777 (and (=> t!773 result!501) b_and!779)))

(declare-fun b_lambda!769 () Bool)

(assert (=> (not b_lambda!769) (not bs!467)))

(assert (=> bs!467 t!725))

(declare-fun b_and!781 () Bool)

(assert (= b_and!779 (and (=> t!725 result!453) b_and!781)))

(declare-fun bs!468 () Bool)

(assert (= bs!468 (and m!7267 m!7263 m!7259)))

(assert (=> bs!468 m!7491))

(declare-fun m!7607 () Bool)

(assert (=> bs!468 m!7607))

(assert (=> bs!468 m!7559))

(declare-fun m!7609 () Bool)

(assert (=> bs!468 m!7609))

(assert (=> bs!468 s!324))

(declare-fun bs!469 () Bool)

(declare-fun s!326 () Bool)

(assert (= bs!469 (and start!734 b!4717 s!326)))

(assert (=> bs!469 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_2!8 x!1939)))))))

(declare-fun b_lambda!771 () Bool)

(assert (=> (not b_lambda!771) (not bs!469)))

(declare-fun t!775 () Bool)

(declare-fun tb!463 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!775) tb!463))

(declare-fun result!503 () Bool)

(assert (=> tb!463 (= result!503 tp_is_empty!25)))

(assert (=> bs!469 t!775))

(declare-fun b_and!783 () Bool)

(assert (= b_and!781 (and (=> t!775 result!503) b_and!783)))

(declare-fun b_lambda!773 () Bool)

(assert (=> (not b_lambda!773) (not bs!469)))

(assert (=> bs!469 t!423))

(declare-fun b_and!785 () Bool)

(assert (= b_and!783 (and (=> t!423 result!149) b_and!785)))

(declare-fun b_lambda!775 () Bool)

(assert (=> (not b_lambda!775) (not bs!469)))

(declare-fun t!777 () Bool)

(declare-fun tb!465 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!777) tb!465))

(declare-fun result!505 () Bool)

(assert (=> tb!465 (= result!505 tp_is_empty!25)))

(assert (=> bs!469 t!777))

(declare-fun b_and!787 () Bool)

(assert (= b_and!785 (and (=> t!777 result!505) b_and!787)))

(declare-fun b_lambda!777 () Bool)

(assert (=> (not b_lambda!777) (not bs!469)))

(assert (=> bs!469 t!755))

(declare-fun b_and!789 () Bool)

(assert (= b_and!787 (and (=> t!755 result!483) b_and!789)))

(assert (=> bs!448 m!7259))

(declare-fun m!7611 () Bool)

(assert (=> bs!448 m!7611))

(assert (=> bs!448 m!7589))

(declare-fun m!7613 () Bool)

(assert (=> bs!448 m!7613))

(assert (=> bs!448 s!326))

(declare-fun bs!470 () Bool)

(declare-fun s!328 () Bool)

(assert (= bs!470 (and start!734 b!4717 s!328)))

(assert (=> bs!470 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1939)))))))

(declare-fun b_lambda!779 () Bool)

(assert (=> (not b_lambda!779) (not bs!470)))

(declare-fun t!779 () Bool)

(declare-fun tb!467 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!779) tb!467))

(declare-fun result!507 () Bool)

(assert (=> tb!467 (= result!507 tp_is_empty!25)))

(assert (=> bs!470 t!779))

(declare-fun b_and!791 () Bool)

(assert (= b_and!789 (and (=> t!779 result!507) b_and!791)))

(declare-fun b_lambda!781 () Bool)

(assert (=> (not b_lambda!781) (not bs!470)))

(assert (=> bs!470 t!703))

(declare-fun b_and!793 () Bool)

(assert (= b_and!791 (and (=> t!703 result!431) b_and!793)))

(declare-fun b_lambda!783 () Bool)

(assert (=> (not b_lambda!783) (not bs!470)))

(declare-fun t!781 () Bool)

(declare-fun tb!469 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!781) tb!469))

(declare-fun result!509 () Bool)

(assert (=> tb!469 (= result!509 tp_is_empty!25)))

(assert (=> bs!470 t!781))

(declare-fun b_and!795 () Bool)

(assert (= b_and!793 (and (=> t!781 result!509) b_and!795)))

(declare-fun b_lambda!785 () Bool)

(assert (=> (not b_lambda!785) (not bs!470)))

(assert (=> bs!470 t!419))

(declare-fun b_and!797 () Bool)

(assert (= b_and!795 (and (=> t!419 result!143) b_and!797)))

(assert (=> m!7255 m!7537))

(declare-fun m!7615 () Bool)

(assert (=> m!7255 m!7615))

(declare-fun m!7617 () Bool)

(assert (=> m!7255 m!7617))

(assert (=> m!7255 s!328))

(assert (=> bs!453 s!280))

(assert (=> bs!448 s!284))

(declare-fun bs!471 () Bool)

(declare-fun s!330 () Bool)

(assert (= bs!471 (and start!734 b!4717 s!330)))

(assert (=> bs!471 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!787 () Bool)

(assert (=> (not b_lambda!787) (not bs!471)))

(declare-fun t!783 () Bool)

(declare-fun tb!471 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!783) tb!471))

(declare-fun result!511 () Bool)

(assert (=> tb!471 (= result!511 tp_is_empty!25)))

(assert (=> bs!471 t!783))

(declare-fun b_and!799 () Bool)

(assert (= b_and!797 (and (=> t!783 result!511) b_and!799)))

(declare-fun b_lambda!789 () Bool)

(assert (=> (not b_lambda!789) (not bs!471)))

(assert (=> bs!471 t!423))

(declare-fun b_and!801 () Bool)

(assert (= b_and!799 (and (=> t!423 result!149) b_and!801)))

(declare-fun b_lambda!791 () Bool)

(assert (=> (not b_lambda!791) (not bs!471)))

(declare-fun t!785 () Bool)

(declare-fun tb!473 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!785) tb!473))

(declare-fun result!513 () Bool)

(assert (=> tb!473 (= result!513 tp_is_empty!25)))

(assert (=> bs!471 t!785))

(declare-fun b_and!803 () Bool)

(assert (= b_and!801 (and (=> t!785 result!513) b_and!803)))

(declare-fun b_lambda!793 () Bool)

(assert (=> (not b_lambda!793) (not bs!471)))

(assert (=> bs!471 t!691))

(declare-fun b_and!805 () Bool)

(assert (= b_and!803 (and (=> t!691 result!419) b_and!805)))

(declare-fun m!7619 () Bool)

(assert (=> m!7259 m!7619))

(assert (=> m!7259 m!7525))

(declare-fun m!7621 () Bool)

(assert (=> m!7259 m!7621))

(assert (=> m!7259 s!330))

(declare-fun bs!472 () Bool)

(declare-fun s!332 () Bool)

(assert (= bs!472 (and start!734 b!4717 s!332)))

(assert (=> bs!472 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!795 () Bool)

(assert (=> (not b_lambda!795) (not bs!472)))

(declare-fun t!787 () Bool)

(declare-fun tb!475 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!787) tb!475))

(declare-fun result!515 () Bool)

(assert (=> tb!475 (= result!515 tp_is_empty!25)))

(assert (=> bs!472 t!787))

(declare-fun b_and!807 () Bool)

(assert (= b_and!805 (and (=> t!787 result!515) b_and!807)))

(declare-fun b_lambda!797 () Bool)

(assert (=> (not b_lambda!797) (not bs!472)))

(assert (=> bs!472 t!759))

(declare-fun b_and!809 () Bool)

(assert (= b_and!807 (and (=> t!759 result!487) b_and!809)))

(declare-fun b_lambda!799 () Bool)

(assert (=> (not b_lambda!799) (not bs!472)))

(declare-fun t!789 () Bool)

(declare-fun tb!477 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!789) tb!477))

(declare-fun result!517 () Bool)

(assert (=> tb!477 (= result!517 tp_is_empty!25)))

(assert (=> bs!472 t!789))

(declare-fun b_and!811 () Bool)

(assert (= b_and!809 (and (=> t!789 result!517) b_and!811)))

(declare-fun b_lambda!801 () Bool)

(assert (=> (not b_lambda!801) (not bs!472)))

(assert (=> bs!472 t!687))

(declare-fun b_and!813 () Bool)

(assert (= b_and!811 (and (=> t!687 result!415) b_and!813)))

(assert (=> bs!457 m!7593))

(declare-fun m!7623 () Bool)

(assert (=> bs!457 m!7623))

(assert (=> bs!457 m!7521))

(declare-fun m!7625 () Bool)

(assert (=> bs!457 m!7625))

(assert (=> bs!457 s!332))

(declare-fun bs!473 () Bool)

(declare-fun s!334 () Bool)

(assert (= bs!473 (and start!734 b!4717 s!334)))

(assert (=> bs!473 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1938)) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1938)))))))

(declare-fun b_lambda!803 () Bool)

(assert (=> (not b_lambda!803) (not bs!473)))

(declare-fun t!791 () Bool)

(declare-fun tb!479 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!791) tb!479))

(declare-fun result!519 () Bool)

(assert (=> tb!479 (= result!519 tp_is_empty!25)))

(assert (=> bs!473 t!791))

(declare-fun b_and!815 () Bool)

(assert (= b_and!813 (and (=> t!791 result!519) b_and!815)))

(declare-fun b_lambda!805 () Bool)

(assert (=> (not b_lambda!805) (not bs!473)))

(assert (=> bs!473 t!719))

(declare-fun b_and!817 () Bool)

(assert (= b_and!815 (and (=> t!719 result!447) b_and!817)))

(declare-fun b_lambda!807 () Bool)

(assert (=> (not b_lambda!807) (not bs!473)))

(declare-fun t!793 () Bool)

(declare-fun tb!481 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!793) tb!481))

(declare-fun result!521 () Bool)

(assert (=> tb!481 (= result!521 tp_is_empty!25)))

(assert (=> bs!473 t!793))

(declare-fun b_and!819 () Bool)

(assert (= b_and!817 (and (=> t!793 result!521) b_and!819)))

(declare-fun b_lambda!809 () Bool)

(assert (=> (not b_lambda!809) (not bs!473)))

(assert (=> bs!473 t!681))

(declare-fun b_and!821 () Bool)

(assert (= b_and!819 (and (=> t!681 result!409) b_and!821)))

(assert (=> bs!442 m!7553))

(declare-fun m!7627 () Bool)

(assert (=> bs!442 m!7627))

(assert (=> bs!442 m!7515))

(declare-fun m!7629 () Bool)

(assert (=> bs!442 m!7629))

(assert (=> bs!442 s!334))

(declare-fun bs!474 () Bool)

(declare-fun s!336 () Bool)

(assert (= bs!474 (and start!734 b!4717 s!336)))

(assert (=> bs!474 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1938)) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1938)))))))

(declare-fun b_lambda!811 () Bool)

(assert (=> (not b_lambda!811) (not bs!474)))

(declare-fun t!795 () Bool)

(declare-fun tb!483 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!795) tb!483))

(declare-fun result!523 () Bool)

(assert (=> tb!483 (= result!523 tp_is_empty!25)))

(assert (=> bs!474 t!795))

(declare-fun b_and!823 () Bool)

(assert (= b_and!821 (and (=> t!795 result!523) b_and!823)))

(declare-fun b_lambda!813 () Bool)

(assert (=> (not b_lambda!813) (not bs!474)))

(assert (=> bs!474 t!681))

(declare-fun b_and!825 () Bool)

(assert (= b_and!823 (and (=> t!681 result!409) b_and!825)))

(declare-fun b_lambda!815 () Bool)

(assert (=> (not b_lambda!815) (not bs!474)))

(declare-fun t!797 () Bool)

(declare-fun tb!485 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!797) tb!485))

(declare-fun result!525 () Bool)

(assert (=> tb!485 (= result!525 tp_is_empty!25)))

(assert (=> bs!474 t!797))

(declare-fun b_and!827 () Bool)

(assert (= b_and!825 (and (=> t!797 result!525) b_and!827)))

(declare-fun bs!475 () Bool)

(assert (= bs!475 (and m!7267 m!7263)))

(assert (=> bs!475 m!7515))

(declare-fun m!7631 () Bool)

(assert (=> bs!475 m!7631))

(assert (=> bs!475 m!7515))

(declare-fun m!7633 () Bool)

(assert (=> bs!475 m!7633))

(assert (=> bs!475 s!336))

(assert (=> bs!439 s!326))

(declare-fun bs!476 () Bool)

(declare-fun s!338 () Bool)

(assert (= bs!476 (and start!734 b!4717 s!338)))

(assert (=> bs!476 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1939)) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 x!1939) (_2!8 x!1939)))))))

(declare-fun b_lambda!817 () Bool)

(assert (=> (not b_lambda!817) (not bs!476)))

(declare-fun t!799 () Bool)

(declare-fun tb!487 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!799) tb!487))

(declare-fun result!527 () Bool)

(assert (=> tb!487 (= result!527 tp_is_empty!25)))

(assert (=> bs!476 t!799))

(declare-fun b_and!829 () Bool)

(assert (= b_and!827 (and (=> t!799 result!527) b_and!829)))

(declare-fun b_lambda!819 () Bool)

(assert (=> (not b_lambda!819) (not bs!476)))

(assert (=> bs!476 t!665))

(declare-fun b_and!831 () Bool)

(assert (= b_and!829 (and (=> t!665 result!393) b_and!831)))

(declare-fun b_lambda!821 () Bool)

(assert (=> (not b_lambda!821) (not bs!476)))

(declare-fun t!801 () Bool)

(declare-fun tb!489 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!801) tb!489))

(declare-fun result!529 () Bool)

(assert (=> tb!489 (= result!529 tp_is_empty!25)))

(assert (=> bs!476 t!801))

(declare-fun b_and!833 () Bool)

(assert (= b_and!831 (and (=> t!801 result!529) b_and!833)))

(declare-fun b_lambda!823 () Bool)

(assert (=> (not b_lambda!823) (not bs!476)))

(assert (=> bs!476 t!731))

(declare-fun b_and!835 () Bool)

(assert (= b_and!833 (and (=> t!731 result!459) b_and!835)))

(assert (=> bs!439 m!7499))

(declare-fun m!7635 () Bool)

(assert (=> bs!439 m!7635))

(assert (=> bs!439 m!7565))

(declare-fun m!7637 () Bool)

(assert (=> bs!439 m!7637))

(assert (=> bs!439 s!338))

(declare-fun bs!477 () Bool)

(declare-fun s!340 () Bool)

(assert (= bs!477 (and start!734 b!4717 s!340)))

(assert (=> bs!477 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_2!8 x!1939)))))))

(declare-fun b_lambda!825 () Bool)

(assert (=> (not b_lambda!825) (not bs!477)))

(declare-fun t!803 () Bool)

(declare-fun tb!491 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!803) tb!491))

(declare-fun result!531 () Bool)

(assert (=> tb!491 (= result!531 tp_is_empty!25)))

(assert (=> bs!477 t!803))

(declare-fun b_and!837 () Bool)

(assert (= b_and!835 (and (=> t!803 result!531) b_and!837)))

(declare-fun b_lambda!827 () Bool)

(assert (=> (not b_lambda!827) (not bs!477)))

(assert (=> bs!477 t!687))

(declare-fun b_and!839 () Bool)

(assert (= b_and!837 (and (=> t!687 result!415) b_and!839)))

(declare-fun b_lambda!829 () Bool)

(assert (=> (not b_lambda!829) (not bs!477)))

(declare-fun t!805 () Bool)

(declare-fun tb!493 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!805) tb!493))

(declare-fun result!533 () Bool)

(assert (=> tb!493 (= result!533 tp_is_empty!25)))

(assert (=> bs!477 t!805))

(declare-fun b_and!841 () Bool)

(assert (= b_and!839 (and (=> t!805 result!533) b_and!841)))

(declare-fun b_lambda!831 () Bool)

(assert (=> (not b_lambda!831) (not bs!477)))

(assert (=> bs!477 t!755))

(declare-fun b_and!843 () Bool)

(assert (= b_and!841 (and (=> t!755 result!483) b_and!843)))

(assert (=> bs!448 m!7521))

(declare-fun m!7639 () Bool)

(assert (=> bs!448 m!7639))

(assert (=> bs!448 m!7589))

(declare-fun m!7641 () Bool)

(assert (=> bs!448 m!7641))

(assert (=> bs!448 s!340))

(assert (=> bs!448 s!312))

(declare-fun bs!478 () Bool)

(declare-fun s!342 () Bool)

(assert (= bs!478 (and start!734 b!4717 s!342)))

(assert (=> bs!478 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1939)))))))

(declare-fun b_lambda!833 () Bool)

(assert (=> (not b_lambda!833) (not bs!478)))

(declare-fun t!807 () Bool)

(declare-fun tb!495 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!807) tb!495))

(declare-fun result!535 () Bool)

(assert (=> tb!495 (= result!535 tp_is_empty!25)))

(assert (=> bs!478 t!807))

(declare-fun b_and!845 () Bool)

(assert (= b_and!843 (and (=> t!807 result!535) b_and!845)))

(declare-fun b_lambda!835 () Bool)

(assert (=> (not b_lambda!835) (not bs!478)))

(assert (=> bs!478 t!759))

(declare-fun b_and!847 () Bool)

(assert (= b_and!845 (and (=> t!759 result!487) b_and!847)))

(declare-fun b_lambda!837 () Bool)

(assert (=> (not b_lambda!837) (not bs!478)))

(declare-fun t!809 () Bool)

(declare-fun tb!497 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!809) tb!497))

(declare-fun result!537 () Bool)

(assert (=> tb!497 (= result!537 tp_is_empty!25)))

(assert (=> bs!478 t!809))

(declare-fun b_and!849 () Bool)

(assert (= b_and!847 (and (=> t!809 result!537) b_and!849)))

(declare-fun b_lambda!839 () Bool)

(assert (=> (not b_lambda!839) (not bs!478)))

(assert (=> bs!478 t!419))

(declare-fun b_and!851 () Bool)

(assert (= b_and!849 (and (=> t!419 result!143) b_and!851)))

(declare-fun bs!479 () Bool)

(assert (= bs!479 (and m!7263 m!7255)))

(assert (=> bs!479 m!7593))

(declare-fun m!7643 () Bool)

(assert (=> bs!479 m!7643))

(assert (=> bs!479 m!7255))

(declare-fun m!7645 () Bool)

(assert (=> bs!479 m!7645))

(assert (=> bs!479 s!342))

(declare-fun bs!480 () Bool)

(declare-fun s!344 () Bool)

(assert (= bs!480 (and start!734 b!4717 s!344)))

(assert (=> bs!480 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1937)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!841 () Bool)

(assert (=> (not b_lambda!841) (not bs!480)))

(declare-fun t!811 () Bool)

(declare-fun tb!499 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!811) tb!499))

(declare-fun result!539 () Bool)

(assert (=> tb!499 (= result!539 tp_is_empty!25)))

(assert (=> bs!480 t!811))

(declare-fun b_and!853 () Bool)

(assert (= b_and!851 (and (=> t!811 result!539) b_and!853)))

(declare-fun b_lambda!843 () Bool)

(assert (=> (not b_lambda!843) (not bs!480)))

(assert (=> bs!480 t!661))

(declare-fun b_and!855 () Bool)

(assert (= b_and!853 (and (=> t!661 result!389) b_and!855)))

(declare-fun b_lambda!845 () Bool)

(assert (=> (not b_lambda!845) (not bs!480)))

(declare-fun t!813 () Bool)

(declare-fun tb!501 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!813) tb!501))

(declare-fun result!541 () Bool)

(assert (=> tb!501 (= result!541 tp_is_empty!25)))

(assert (=> bs!480 t!813))

(declare-fun b_and!857 () Bool)

(assert (= b_and!855 (and (=> t!813 result!541) b_and!857)))

(declare-fun b_lambda!847 () Bool)

(assert (=> (not b_lambda!847) (not bs!480)))

(assert (=> bs!480 t!423))

(declare-fun b_and!859 () Bool)

(assert (= b_and!857 (and (=> t!423 result!149) b_and!859)))

(assert (=> m!7259 m!7495))

(declare-fun m!7647 () Bool)

(assert (=> m!7259 m!7647))

(declare-fun m!7649 () Bool)

(assert (=> m!7259 m!7649))

(assert (=> m!7259 s!344))

(declare-fun bs!481 () Bool)

(declare-fun s!346 () Bool)

(assert (= bs!481 (and start!734 b!4717 s!346)))

(assert (=> bs!481 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1937)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!849 () Bool)

(assert (=> (not b_lambda!849) (not bs!481)))

(declare-fun t!815 () Bool)

(declare-fun tb!503 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!815) tb!503))

(declare-fun result!543 () Bool)

(assert (=> tb!503 (= result!543 tp_is_empty!25)))

(assert (=> bs!481 t!815))

(declare-fun b_and!861 () Bool)

(assert (= b_and!859 (and (=> t!815 result!543) b_and!861)))

(declare-fun b_lambda!851 () Bool)

(assert (=> (not b_lambda!851) (not bs!481)))

(assert (=> bs!481 t!747))

(declare-fun b_and!863 () Bool)

(assert (= b_and!861 (and (=> t!747 result!475) b_and!863)))

(declare-fun b_lambda!853 () Bool)

(assert (=> (not b_lambda!853) (not bs!481)))

(declare-fun t!817 () Bool)

(declare-fun tb!505 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!817) tb!505))

(declare-fun result!545 () Bool)

(assert (=> tb!505 (= result!545 tp_is_empty!25)))

(assert (=> bs!481 t!817))

(declare-fun b_and!865 () Bool)

(assert (= b_and!863 (and (=> t!817 result!545) b_and!865)))

(declare-fun b_lambda!855 () Bool)

(assert (=> (not b_lambda!855) (not bs!481)))

(assert (=> bs!481 t!423))

(declare-fun b_and!867 () Bool)

(assert (= b_and!865 (and (=> t!423 result!149) b_and!867)))

(assert (=> bs!439 m!7581))

(declare-fun m!7651 () Bool)

(assert (=> bs!439 m!7651))

(assert (=> bs!439 m!7259))

(declare-fun m!7653 () Bool)

(assert (=> bs!439 m!7653))

(assert (=> bs!439 s!346))

(declare-fun bs!482 () Bool)

(declare-fun s!348 () Bool)

(assert (= bs!482 (and start!734 b!4717 s!348)))

(assert (=> bs!482 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!857 () Bool)

(assert (=> (not b_lambda!857) (not bs!482)))

(declare-fun t!819 () Bool)

(declare-fun tb!507 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!819) tb!507))

(declare-fun result!547 () Bool)

(assert (=> tb!507 (= result!547 tp_is_empty!25)))

(assert (=> bs!482 t!819))

(declare-fun b_and!869 () Bool)

(assert (= b_and!867 (and (=> t!819 result!547) b_and!869)))

(declare-fun b_lambda!859 () Bool)

(assert (=> (not b_lambda!859) (not bs!482)))

(assert (=> bs!482 t!657))

(declare-fun b_and!871 () Bool)

(assert (= b_and!869 (and (=> t!657 result!385) b_and!871)))

(declare-fun b_lambda!861 () Bool)

(assert (=> (not b_lambda!861) (not bs!482)))

(declare-fun t!821 () Bool)

(declare-fun tb!509 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!821) tb!509))

(declare-fun result!549 () Bool)

(assert (=> tb!509 (= result!549 tp_is_empty!25)))

(assert (=> bs!482 t!821))

(declare-fun b_and!873 () Bool)

(assert (= b_and!871 (and (=> t!821 result!549) b_and!873)))

(declare-fun b_lambda!863 () Bool)

(assert (=> (not b_lambda!863) (not bs!482)))

(assert (=> bs!482 t!691))

(declare-fun b_and!875 () Bool)

(assert (= b_and!873 (and (=> t!691 result!419) b_and!875)))

(assert (=> bs!439 m!7491))

(declare-fun m!7655 () Bool)

(assert (=> bs!439 m!7655))

(assert (=> bs!439 m!7525))

(declare-fun m!7657 () Bool)

(assert (=> bs!439 m!7657))

(assert (=> bs!439 s!348))

(assert (=> bs!475 s!298))

(assert (=> bs!468 s!298))

(declare-fun bs!483 () Bool)

(declare-fun s!350 () Bool)

(assert (= bs!483 (and start!734 b!4717 s!350)))

(assert (=> bs!483 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1938 x!1939)) (_2!8 x!1938)))))))

(declare-fun b_lambda!865 () Bool)

(assert (=> (not b_lambda!865) (not bs!483)))

(declare-fun t!823 () Bool)

(declare-fun tb!511 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!823) tb!511))

(declare-fun result!551 () Bool)

(assert (=> tb!511 (= result!551 tp_is_empty!25)))

(assert (=> bs!483 t!823))

(declare-fun b_and!877 () Bool)

(assert (= b_and!875 (and (=> t!823 result!551) b_and!877)))

(declare-fun b_lambda!867 () Bool)

(assert (=> (not b_lambda!867) (not bs!483)))

(assert (=> bs!483 t!687))

(declare-fun b_and!879 () Bool)

(assert (= b_and!877 (and (=> t!687 result!415) b_and!879)))

(declare-fun b_lambda!869 () Bool)

(assert (=> (not b_lambda!869) (not bs!483)))

(declare-fun t!825 () Bool)

(declare-fun tb!513 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!825) tb!513))

(declare-fun result!553 () Bool)

(assert (=> tb!513 (= result!553 tp_is_empty!25)))

(assert (=> bs!483 t!825))

(declare-fun b_and!881 () Bool)

(assert (= b_and!879 (and (=> t!825 result!553) b_and!881)))

(declare-fun b_lambda!871 () Bool)

(assert (=> (not b_lambda!871) (not bs!483)))

(assert (=> bs!483 t!725))

(declare-fun b_and!883 () Bool)

(assert (= b_and!881 (and (=> t!725 result!453) b_and!883)))

(assert (=> bs!445 m!7521))

(declare-fun m!7659 () Bool)

(assert (=> bs!445 m!7659))

(assert (=> bs!445 m!7559))

(declare-fun m!7661 () Bool)

(assert (=> bs!445 m!7661))

(assert (=> bs!445 s!350))

(declare-fun bs!484 () Bool)

(declare-fun s!352 () Bool)

(assert (= bs!484 (and start!734 b!4717 s!352)))

(assert (=> bs!484 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1939)) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1937) (dynLambda!15 f2!6 (_2!8 x!1939) (_2!8 x!1938)))))))

(declare-fun b_lambda!873 () Bool)

(assert (=> (not b_lambda!873) (not bs!484)))

(declare-fun t!827 () Bool)

(declare-fun tb!515 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!827) tb!515))

(declare-fun result!555 () Bool)

(assert (=> tb!515 (= result!555 tp_is_empty!25)))

(assert (=> bs!484 t!827))

(declare-fun b_and!885 () Bool)

(assert (= b_and!883 (and (=> t!827 result!555) b_and!885)))

(declare-fun b_lambda!875 () Bool)

(assert (=> (not b_lambda!875) (not bs!484)))

(assert (=> bs!484 t!665))

(declare-fun b_and!887 () Bool)

(assert (= b_and!885 (and (=> t!665 result!393) b_and!887)))

(declare-fun b_lambda!877 () Bool)

(assert (=> (not b_lambda!877) (not bs!484)))

(declare-fun t!829 () Bool)

(declare-fun tb!517 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!829) tb!517))

(declare-fun result!557 () Bool)

(assert (=> tb!517 (= result!557 tp_is_empty!25)))

(assert (=> bs!484 t!829))

(declare-fun b_and!889 () Bool)

(assert (= b_and!887 (and (=> t!829 result!557) b_and!889)))

(declare-fun b_lambda!879 () Bool)

(assert (=> (not b_lambda!879) (not bs!484)))

(declare-fun t!831 () Bool)

(declare-fun tb!519 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!831) tb!519))

(declare-fun result!559 () Bool)

(assert (=> tb!519 (= result!559 tp_is_empty!25)))

(assert (=> bs!484 t!831))

(declare-fun b_and!891 () Bool)

(assert (= b_and!889 (and (=> t!831 result!559) b_and!891)))

(declare-fun bs!485 () Bool)

(assert (= bs!485 (and m!7267 m!7259 m!7255 m!7263)))

(assert (=> bs!485 m!7499))

(declare-fun m!7663 () Bool)

(assert (=> bs!485 m!7663))

(declare-fun m!7665 () Bool)

(assert (=> bs!485 m!7665))

(declare-fun m!7667 () Bool)

(assert (=> bs!485 m!7667))

(assert (=> bs!485 s!352))

(declare-fun bs!486 () Bool)

(declare-fun s!354 () Bool)

(assert (= bs!486 (and start!734 b!4717 s!354)))

(assert (=> bs!486 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1939)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1939) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!881 () Bool)

(assert (=> (not b_lambda!881) (not bs!486)))

(declare-fun t!833 () Bool)

(declare-fun tb!521 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!833) tb!521))

(declare-fun result!561 () Bool)

(assert (=> tb!521 (= result!561 tp_is_empty!25)))

(assert (=> bs!486 t!833))

(declare-fun b_and!893 () Bool)

(assert (= b_and!891 (and (=> t!833 result!561) b_and!893)))

(declare-fun b_lambda!883 () Bool)

(assert (=> (not b_lambda!883) (not bs!486)))

(assert (=> bs!486 t!419))

(declare-fun b_and!895 () Bool)

(assert (= b_and!893 (and (=> t!419 result!143) b_and!895)))

(declare-fun b_lambda!885 () Bool)

(assert (=> (not b_lambda!885) (not bs!486)))

(declare-fun t!835 () Bool)

(declare-fun tb!523 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!835) tb!523))

(declare-fun result!563 () Bool)

(assert (=> tb!523 (= result!563 tp_is_empty!25)))

(assert (=> bs!486 t!835))

(declare-fun b_and!897 () Bool)

(assert (= b_and!895 (and (=> t!835 result!563) b_and!897)))

(declare-fun b_lambda!887 () Bool)

(assert (=> (not b_lambda!887) (not bs!486)))

(assert (=> bs!486 t!651))

(declare-fun b_and!899 () Bool)

(assert (= b_and!897 (and (=> t!651 result!379) b_and!899)))

(assert (=> bs!448 m!7255))

(declare-fun m!7669 () Bool)

(assert (=> bs!448 m!7669))

(assert (=> bs!448 m!7485))

(declare-fun m!7671 () Bool)

(assert (=> bs!448 m!7671))

(assert (=> bs!448 s!354))

(declare-fun bs!487 () Bool)

(declare-fun s!356 () Bool)

(assert (= bs!487 (and start!734 b!4717 s!356)))

(assert (=> bs!487 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1938)) (_2!8 x!1939)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1939)))))))

(declare-fun b_lambda!889 () Bool)

(assert (=> (not b_lambda!889) (not bs!487)))

(declare-fun t!837 () Bool)

(declare-fun tb!525 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!837) tb!525))

(declare-fun result!565 () Bool)

(assert (=> tb!525 (= result!565 tp_is_empty!25)))

(assert (=> bs!487 t!837))

(declare-fun b_and!901 () Bool)

(assert (= b_and!899 (and (=> t!837 result!565) b_and!901)))

(declare-fun b_lambda!891 () Bool)

(assert (=> (not b_lambda!891) (not bs!487)))

(assert (=> bs!487 t!719))

(declare-fun b_and!903 () Bool)

(assert (= b_and!901 (and (=> t!719 result!447) b_and!903)))

(declare-fun b_lambda!893 () Bool)

(assert (=> (not b_lambda!893) (not bs!487)))

(declare-fun t!839 () Bool)

(declare-fun tb!527 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!839) tb!527))

(declare-fun result!567 () Bool)

(assert (=> tb!527 (= result!567 tp_is_empty!25)))

(assert (=> bs!487 t!839))

(declare-fun b_and!905 () Bool)

(assert (= b_and!903 (and (=> t!839 result!567) b_and!905)))

(declare-fun b_lambda!895 () Bool)

(assert (=> (not b_lambda!895) (not bs!487)))

(assert (=> bs!487 t!427))

(declare-fun b_and!907 () Bool)

(assert (= b_and!905 (and (=> t!427 result!153) b_and!907)))

(assert (=> bs!479 m!7553))

(declare-fun m!7673 () Bool)

(assert (=> bs!479 m!7673))

(assert (=> bs!479 m!7263))

(declare-fun m!7675 () Bool)

(assert (=> bs!479 m!7675))

(assert (=> bs!479 s!356))

(assert (=> bs!442 s!314))

(assert (=> bs!442 s!320))

(declare-fun bs!488 () Bool)

(declare-fun s!358 () Bool)

(assert (= bs!488 (and start!734 b!4717 s!358)))

(assert (=> bs!488 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1939)) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1939) (_2!8 x!1938)))))))

(declare-fun b_lambda!897 () Bool)

(assert (=> (not b_lambda!897) (not bs!488)))

(declare-fun t!841 () Bool)

(declare-fun tb!529 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!841) tb!529))

(declare-fun result!569 () Bool)

(assert (=> tb!529 (= result!569 tp_is_empty!25)))

(assert (=> bs!488 t!841))

(declare-fun b_and!909 () Bool)

(assert (= b_and!907 (and (=> t!841 result!569) b_and!909)))

(declare-fun b_lambda!899 () Bool)

(assert (=> (not b_lambda!899) (not bs!488)))

(assert (=> bs!488 t!419))

(declare-fun b_and!911 () Bool)

(assert (= b_and!909 (and (=> t!419 result!143) b_and!911)))

(declare-fun b_lambda!901 () Bool)

(assert (=> (not b_lambda!901) (not bs!488)))

(declare-fun t!843 () Bool)

(declare-fun tb!531 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!843) tb!531))

(declare-fun result!571 () Bool)

(assert (=> tb!531 (= result!571 tp_is_empty!25)))

(assert (=> bs!488 t!843))

(declare-fun b_and!913 () Bool)

(assert (= b_and!911 (and (=> t!843 result!571) b_and!913)))

(declare-fun b_lambda!903 () Bool)

(assert (=> (not b_lambda!903) (not bs!488)))

(assert (=> bs!488 t!831))

(declare-fun b_and!915 () Bool)

(assert (= b_and!913 (and (=> t!831 result!559) b_and!915)))

(assert (=> bs!442 m!7255))

(declare-fun m!7677 () Bool)

(assert (=> bs!442 m!7677))

(assert (=> bs!442 m!7665))

(declare-fun m!7679 () Bool)

(assert (=> bs!442 m!7679))

(assert (=> bs!442 s!358))

(assert (=> bs!457 s!308))

(declare-fun bs!489 () Bool)

(declare-fun s!360 () Bool)

(assert (= bs!489 (and start!734 b!4717 s!360)))

(assert (=> bs!489 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 (dynLambda!13 fp!1 x!1937 x!1938))) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1938)))))))

(declare-fun b_lambda!905 () Bool)

(assert (=> (not b_lambda!905) (not bs!489)))

(declare-fun t!845 () Bool)

(declare-fun tb!533 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!845) tb!533))

(declare-fun result!573 () Bool)

(assert (=> tb!533 (= result!573 tp_is_empty!25)))

(assert (=> bs!489 t!845))

(declare-fun b_and!917 () Bool)

(assert (= b_and!915 (and (=> t!845 result!573) b_and!917)))

(declare-fun b_lambda!907 () Bool)

(assert (=> (not b_lambda!907) (not bs!489)))

(assert (=> bs!489 t!703))

(declare-fun b_and!919 () Bool)

(assert (= b_and!917 (and (=> t!703 result!431) b_and!919)))

(declare-fun b_lambda!909 () Bool)

(assert (=> (not b_lambda!909) (not bs!489)))

(declare-fun t!847 () Bool)

(declare-fun tb!535 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!847) tb!535))

(declare-fun result!575 () Bool)

(assert (=> tb!535 (= result!575 tp_is_empty!25)))

(assert (=> bs!489 t!847))

(declare-fun b_and!921 () Bool)

(assert (= b_and!919 (and (=> t!847 result!575) b_and!921)))

(declare-fun b_lambda!911 () Bool)

(assert (=> (not b_lambda!911) (not bs!489)))

(assert (=> bs!489 t!719))

(declare-fun b_and!923 () Bool)

(assert (= b_and!921 (and (=> t!719 result!447) b_and!923)))

(declare-fun bs!490 () Bool)

(assert (= bs!490 (and m!7267 m!7255)))

(assert (=> bs!490 m!7537))

(declare-fun m!7681 () Bool)

(assert (=> bs!490 m!7681))

(assert (=> bs!490 m!7553))

(declare-fun m!7683 () Bool)

(assert (=> bs!490 m!7683))

(assert (=> bs!490 s!360))

(assert (=> bs!448 s!338))

(assert (=> bs!457 s!316))

(declare-fun bs!491 () Bool)

(declare-fun s!362 () Bool)

(assert (= bs!491 (and start!734 b!4717 s!362)))

(assert (=> bs!491 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1937)) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 x!1938)))))))

(declare-fun b_lambda!913 () Bool)

(assert (=> (not b_lambda!913) (not bs!491)))

(declare-fun t!849 () Bool)

(declare-fun tb!537 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!849) tb!537))

(declare-fun result!577 () Bool)

(assert (=> tb!537 (= result!577 tp_is_empty!25)))

(assert (=> bs!491 t!849))

(declare-fun b_and!925 () Bool)

(assert (= b_and!923 (and (=> t!849 result!577) b_and!925)))

(declare-fun b_lambda!915 () Bool)

(assert (=> (not b_lambda!915) (not bs!491)))

(assert (=> bs!491 t!747))

(declare-fun b_and!927 () Bool)

(assert (= b_and!925 (and (=> t!747 result!475) b_and!927)))

(declare-fun b_lambda!917 () Bool)

(assert (=> (not b_lambda!917) (not bs!491)))

(declare-fun t!851 () Bool)

(declare-fun tb!539 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!851) tb!539))

(declare-fun result!579 () Bool)

(assert (=> tb!539 (= result!579 tp_is_empty!25)))

(assert (=> bs!491 t!851))

(declare-fun b_and!929 () Bool)

(assert (= b_and!927 (and (=> t!851 result!579) b_and!929)))

(declare-fun b_lambda!919 () Bool)

(assert (=> (not b_lambda!919) (not bs!491)))

(assert (=> bs!491 t!431))

(declare-fun b_and!931 () Bool)

(assert (= b_and!929 (and (=> t!431 result!157) b_and!931)))

(assert (=> bs!475 m!7581))

(declare-fun m!7685 () Bool)

(assert (=> bs!475 m!7685))

(assert (=> bs!475 m!7267))

(declare-fun m!7687 () Bool)

(assert (=> bs!475 m!7687))

(assert (=> bs!475 s!362))

(assert (=> bs!490 s!286))

(assert (=> bs!490 s!334))

(declare-fun bs!492 () Bool)

(declare-fun s!364 () Bool)

(assert (= bs!492 (and start!734 b!4717 s!364)))

(assert (=> bs!492 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 x!1938) (_2!8 x!1939)) (_2!8 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1938) (dynLambda!15 f2!6 (_2!8 x!1939) (_2!8 x!1938)))))))

(declare-fun b_lambda!921 () Bool)

(assert (=> (not b_lambda!921) (not bs!492)))

(declare-fun t!853 () Bool)

(declare-fun tb!541 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!853) tb!541))

(declare-fun result!581 () Bool)

(assert (=> tb!541 (= result!581 tp_is_empty!25)))

(assert (=> bs!492 t!853))

(declare-fun b_and!933 () Bool)

(assert (= b_and!931 (and (=> t!853 result!581) b_and!933)))

(declare-fun b_lambda!923 () Bool)

(assert (=> (not b_lambda!923) (not bs!492)))

(assert (=> bs!492 t!427))

(declare-fun b_and!935 () Bool)

(assert (= b_and!933 (and (=> t!427 result!153) b_and!935)))

(declare-fun b_lambda!925 () Bool)

(assert (=> (not b_lambda!925) (not bs!492)))

(declare-fun t!855 () Bool)

(declare-fun tb!543 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!855) tb!543))

(declare-fun result!583 () Bool)

(assert (=> tb!543 (= result!583 tp_is_empty!25)))

(assert (=> bs!492 t!855))

(declare-fun b_and!937 () Bool)

(assert (= b_and!935 (and (=> t!855 result!583) b_and!937)))

(declare-fun b_lambda!927 () Bool)

(assert (=> (not b_lambda!927) (not bs!492)))

(assert (=> bs!492 t!831))

(declare-fun b_and!939 () Bool)

(assert (= b_and!937 (and (=> t!831 result!559) b_and!939)))

(assert (=> bs!442 m!7263))

(declare-fun m!7689 () Bool)

(assert (=> bs!442 m!7689))

(assert (=> bs!442 m!7665))

(declare-fun m!7691 () Bool)

(assert (=> bs!442 m!7691))

(assert (=> bs!442 s!364))

(assert (=> bs!468 s!362))

(assert (=> bs!439 s!314))

(assert (=> bs!442 s!352))

(assert (=> bs!479 s!322))

(assert (=> bs!439 s!320))

(assert (=> bs!442 s!338))

(assert (=> bs!479 s!306))

(assert (=> bs!490 s!302))

(declare-fun bs!493 () Bool)

(declare-fun s!366 () Bool)

(assert (= bs!493 (and start!734 b!4717 s!366)))

(assert (=> bs!493 (=> true (= (dynLambda!15 f2!6 (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (_2!8 x!1937)) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))) (dynLambda!15 f2!6 (_2!8 (dynLambda!13 fp!1 x!1937 x!1938)) (dynLambda!15 f2!6 (_2!8 x!1937) (_2!8 (dynLambda!13 fp!1 x!1938 x!1939))))))))

(declare-fun b_lambda!929 () Bool)

(assert (=> (not b_lambda!929) (not bs!493)))

(declare-fun t!857 () Bool)

(declare-fun tb!545 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!857) tb!545))

(declare-fun result!585 () Bool)

(assert (=> tb!545 (= result!585 tp_is_empty!25)))

(assert (=> bs!493 t!857))

(declare-fun b_and!941 () Bool)

(assert (= b_and!939 (and (=> t!857 result!585) b_and!941)))

(declare-fun b_lambda!931 () Bool)

(assert (=> (not b_lambda!931) (not bs!493)))

(assert (=> bs!493 t!675))

(declare-fun b_and!943 () Bool)

(assert (= b_and!941 (and (=> t!675 result!403) b_and!943)))

(declare-fun b_lambda!933 () Bool)

(assert (=> (not b_lambda!933) (not bs!493)))

(declare-fun t!859 () Bool)

(declare-fun tb!547 () Bool)

(assert (=> (and start!734 (= f2!6 f2!6) t!859) tb!547))

(declare-fun result!587 () Bool)

(assert (=> tb!547 (= result!587 tp_is_empty!25)))

(assert (=> bs!493 t!859))

(declare-fun b_and!945 () Bool)

(assert (= b_and!943 (and (=> t!859 result!587) b_and!945)))

(declare-fun b_lambda!935 () Bool)

(assert (=> (not b_lambda!935) (not bs!493)))

(assert (=> bs!493 t!423))

(declare-fun b_and!947 () Bool)

(assert (= b_and!945 (and (=> t!423 result!149) b_and!947)))

(assert (=> bs!448 m!7509))

(declare-fun m!7693 () Bool)

(assert (=> bs!448 m!7693))

(assert (=> bs!448 m!7259))

(declare-fun m!7695 () Bool)

(assert (=> bs!448 m!7695))

(assert (=> bs!448 s!366))

(push 1)

(assert (not b_next!57))

(assert (not b_lambda!311))

(assert (not b_lambda!519))

(assert (not b_lambda!907))

(assert (not b_lambda!799))

(assert (not b_lambda!213))

(assert (not b_lambda!843))

(assert (not b_lambda!259))

(assert (not b_lambda!495))

(assert (not b_lambda!527))

(assert (not b_lambda!785))

(assert (not b_lambda!899))

(assert (not b_lambda!573))

(assert (not b_lambda!393))

(assert (not b_lambda!677))

(assert (not b_lambda!743))

(assert b_and!947)

(assert (not b_lambda!217))

(assert (not b_lambda!417))

(assert (not b_lambda!415))

(assert (not b_lambda!663))

(assert (not b_lambda!211))

(assert (not b_lambda!681))

(assert (not b_lambda!431))

(assert (not b_lambda!927))

(assert (not b_lambda!253))

(assert (not b_lambda!317))

(assert (not b_lambda!697))

(assert (not b_lambda!693))

(assert (not b_lambda!287))

(assert (not b_lambda!383))

(assert (not b_lambda!903))

(assert (not b_lambda!279))

(assert (not b_lambda!719))

(assert (not b_lambda!639))

(assert (not b_lambda!535))

(assert (not b_lambda!525))

(assert (not b_lambda!233))

(assert (not b_lambda!465))

(assert (not b_lambda!337))

(assert (not b_lambda!691))

(assert (not b_lambda!545))

(assert (not b_lambda!413))

(assert (not b_lambda!739))

(assert (not b_lambda!829))

(assert (not b_lambda!207))

(assert (not b_lambda!557))

(assert (not b_lambda!355))

(assert (not b_lambda!607))

(assert (not b_lambda!421))

(assert (not b_lambda!183))

(assert (not b_lambda!725))

(assert (not b_lambda!729))

(assert (not b_lambda!611))

(assert (not b_lambda!621))

(assert (not b_lambda!327))

(assert (not b_lambda!379))

(assert (not b_lambda!689))

(assert (not b_lambda!325))

(assert (not b_lambda!715))

(assert (not b_lambda!745))

(assert (not b_lambda!673))

(assert (not b_lambda!319))

(assert (not b_lambda!709))

(assert b_and!215)

(assert (not b_lambda!753))

(assert (not b_lambda!895))

(assert (not b_lambda!651))

(assert (not b_lambda!613))

(assert (not b_lambda!735))

(assert (not b_lambda!815))

(assert (not b_lambda!377))

(assert (not b_lambda!373))

(assert (not b_lambda!399))

(assert (not b_lambda!363))

(assert (not b_lambda!541))

(assert (not b_lambda!507))

(assert (not b_lambda!345))

(assert (not b_lambda!365))

(assert (not b_lambda!349))

(assert (not b_lambda!235))

(assert (not b_lambda!293))

(assert (not b_lambda!935))

(assert (not b_lambda!603))

(assert (not b_lambda!205))

(assert (not b_lambda!671))

(assert (not b_lambda!435))

(assert (not b_lambda!793))

(assert (not b_lambda!405))

(assert (not b_lambda!703))

(assert (not b_lambda!873))

(assert (not b_lambda!773))

(assert (not b_lambda!409))

(assert (not b_lambda!425))

(assert (not b_lambda!633))

(assert (not b_lambda!643))

(assert (not b_lambda!565))

(assert (not b_lambda!593))

(assert (not b_lambda!341))

(assert (not b_lambda!833))

(assert (not b_lambda!881))

(assert (not b_lambda!589))

(assert (not b_lambda!675))

(assert (not b_lambda!819))

(assert (not b_lambda!231))

(assert (not b_lambda!641))

(assert (not b_lambda!427))

(assert (not b_lambda!357))

(assert (not b_lambda!315))

(assert (not b_lambda!245))

(assert (not b_lambda!297))

(assert (not b_lambda!801))

(assert (not b_lambda!875))

(assert (not b_lambda!497))

(assert (not b_lambda!891))

(assert (not b_lambda!229))

(assert (not b_lambda!563))

(assert (not b_lambda!909))

(assert (not b_lambda!281))

(assert (not b_lambda!889))

(assert (not b_lambda!209))

(assert (not b_lambda!885))

(assert (not b_lambda!223))

(assert (not b_lambda!289))

(assert (not b_lambda!263))

(assert (not b_lambda!851))

(assert (not b_lambda!707))

(assert (not b_lambda!553))

(assert (not b_lambda!487))

(assert (not b_lambda!433))

(assert (not b_lambda!845))

(assert (not b_lambda!185))

(assert (not b_lambda!623))

(assert (not b_lambda!411))

(assert (not b_lambda!783))

(assert (not b_lambda!657))

(assert (not b_lambda!485))

(assert (not b_lambda!771))

(assert (not b_next!61))

(assert (not b_lambda!247))

(assert (not b_lambda!787))

(assert (not b_lambda!445))

(assert (not b_lambda!307))

(assert (not b_lambda!301))

(assert (not b_lambda!777))

(assert (not b_lambda!915))

(assert (not b_lambda!381))

(assert (not b_lambda!537))

(assert (not b_lambda!585))

(assert (not b_lambda!859))

(assert (not b_lambda!711))

(assert (not b_lambda!447))

(assert (not b_lambda!653))

(assert (not b_lambda!857))

(assert (not b_lambda!877))

(assert (not b_lambda!905))

(assert (not b_lambda!371))

(assert (not b_lambda!605))

(assert (not b_lambda!741))

(assert (not b_lambda!571))

(assert (not b_lambda!361))

(assert (not b_lambda!597))

(assert (not b_lambda!609))

(assert (not b_lambda!655))

(assert (not b_lambda!879))

(assert (not b_lambda!775))

(assert (not b_lambda!303))

(assert (not b_lambda!387))

(assert (not b_lambda!631))

(assert (not b_lambda!291))

(assert (not b_lambda!637))

(assert (not b_lambda!551))

(assert (not b_lambda!807))

(assert (not b_lambda!863))

(assert (not b_lambda!449))

(assert (not b_lambda!473))

(assert (not b_lambda!531))

(assert (not b_lambda!567))

(assert (not b_lambda!467))

(assert (not b_lambda!849))

(assert (not b_lambda!265))

(assert (not b_lambda!269))

(assert (not b_lambda!765))

(assert (not b_lambda!751))

(assert (not b_lambda!861))

(assert (not b_lambda!931))

(assert (not b_lambda!275))

(assert (not b_lambda!629))

(assert (not b_lambda!549))

(assert (not b_lambda!323))

(assert (not b_next!55))

(assert b_and!589)

(assert tp_is_empty!23)

(assert (not b_lambda!763))

(assert (not b_lambda!459))

(assert (not b_lambda!649))

(assert (not b_lambda!913))

(assert (not b_lambda!635))

(assert (not b_lambda!385))

(assert (not b_lambda!893))

(assert (not b_lambda!347))

(assert (not b_lambda!647))

(assert (not b_lambda!441))

(assert (not b_lambda!225))

(assert (not b_lambda!865))

(assert (not b_lambda!669))

(assert (not b_lambda!469))

(assert (not b_lambda!705))

(assert (not b_lambda!283))

(assert (not b_lambda!547))

(assert (not b_lambda!683))

(assert (not b_lambda!471))

(assert (not b_lambda!577))

(assert (not b_lambda!841))

(assert (not b_lambda!359))

(assert (not b_lambda!823))

(assert (not b_lambda!479))

(assert (not b_lambda!749))

(assert (not b_lambda!809))

(assert (not b_lambda!559))

(assert (not b_lambda!219))

(assert (not b_lambda!803))

(assert (not b_lambda!667))

(assert (not b_lambda!505))

(assert (not b_lambda!451))

(assert (not b_lambda!615))

(assert (not b_lambda!901))

(assert (not b_lambda!831))

(assert (not b_lambda!929))

(assert (not b_lambda!601))

(assert (not b_lambda!867))

(assert (not b_lambda!271))

(assert (not b_lambda!483))

(assert (not b_lambda!539))

(assert (not b_lambda!489))

(assert (not b_lambda!695))

(assert (not b_lambda!305))

(assert (not b_lambda!295))

(assert (not b_lambda!255))

(assert (not b_lambda!627))

(assert (not b_lambda!521))

(assert (not b_lambda!645))

(assert (not b_lambda!335))

(assert (not b_lambda!277))

(assert (not b_lambda!391))

(assert (not b_lambda!491))

(assert (not b_lambda!285))

(assert (not b_lambda!299))

(assert (not b_lambda!723))

(assert (not b_lambda!619))

(assert (not b_lambda!813))

(assert (not b_lambda!805))

(assert (not b_lambda!659))

(assert (not b_lambda!871))

(assert (not b_lambda!461))

(assert (not b_lambda!267))

(assert (not b_lambda!835))

(assert (not b_lambda!817))

(assert (not b_lambda!389))

(assert (not b_lambda!543))

(assert (not b_lambda!221))

(assert (not b_lambda!921))

(assert (not b_lambda!503))

(assert (not b_lambda!933))

(assert (not b_lambda!239))

(assert (not b_lambda!587))

(assert (not b_lambda!825))

(assert (not b_lambda!493))

(assert (not b_lambda!353))

(assert (not b_lambda!679))

(assert (not b_lambda!733))

(assert (not b_lambda!661))

(assert (not b_lambda!423))

(assert (not b_lambda!625))

(assert (not b_lambda!911))

(assert (not b_lambda!321))

(assert (not b_lambda!329))

(assert (not b_lambda!827))

(assert (not b_lambda!511))

(assert (not b_lambda!453))

(assert (not b_lambda!481))

(assert (not b_lambda!759))

(assert (not b_lambda!439))

(assert (not b_lambda!581))

(assert (not b_lambda!513))

(assert (not b_lambda!397))

(assert (not b_lambda!249))

(assert (not b_lambda!919))

(assert (not b_lambda!331))

(assert (not b_lambda!367))

(assert (not b_lambda!727))

(assert (not b_lambda!887))

(assert (not b_lambda!455))

(assert (not b_lambda!529))

(assert (not b_lambda!227))

(assert (not b_lambda!737))

(assert (not b_lambda!523))

(assert (not b_lambda!443))

(assert (not b_lambda!561))

(assert (not b_lambda!309))

(assert (not b_lambda!181))

(assert (not b_lambda!437))

(assert (not b_lambda!429))

(assert (not b_lambda!251))

(assert (not b_lambda!713))

(assert (not b_lambda!243))

(assert (not b_lambda!407))

(assert (not b_lambda!333))

(assert (not b_lambda!855))

(assert (not b_lambda!701))

(assert (not b_lambda!761))

(assert tp_is_empty!25)

(assert (not b_lambda!795))

(assert (not b_lambda!457))

(assert (not b_lambda!575))

(assert (not b_lambda!555))

(assert (not b_lambda!509))

(assert (not b_lambda!187))

(assert (not b_lambda!755))

(assert (not b_lambda!343))

(assert (not b_lambda!883))

(assert (not b_lambda!853))

(assert (not b_lambda!395))

(assert (not b_lambda!463))

(assert (not b_lambda!779))

(assert (not b_lambda!687))

(assert (not b_lambda!339))

(assert (not b_lambda!811))

(assert (not b_lambda!769))

(assert (not b_lambda!925))

(assert (not b_lambda!517))

(assert (not b_lambda!839))

(assert (not b_lambda!797))

(assert (not b_lambda!515))

(assert (not b_lambda!369))

(assert (not b_lambda!595))

(assert (not b_lambda!257))

(assert (not b_lambda!767))

(assert (not b_lambda!477))

(assert (not b_lambda!215))

(assert (not b_lambda!475))

(assert (not b_lambda!237))

(assert (not b_lambda!579))

(assert (not b_lambda!599))

(assert (not b_lambda!897))

(assert (not b_lambda!847))

(assert (not b_lambda!747))

(assert (not b_lambda!419))

(assert (not b_lambda!721))

(assert (not b_lambda!917))

(assert (not b_lambda!869))

(assert (not b_lambda!789))

(assert (not b_lambda!791))

(assert (not b_lambda!241))

(assert (not b_lambda!685))

(assert (not b_lambda!591))

(assert (not b_lambda!375))

(assert (not b_lambda!533))

(assert (not b_lambda!699))

(assert (not b_lambda!273))

(assert (not b_lambda!261))

(assert (not b_lambda!731))

(assert (not b_lambda!403))

(assert (not b_lambda!583))

(assert (not b_lambda!617))

(assert (not b_lambda!499))

(assert (not b_lambda!401))

(assert (not b_lambda!923))

(assert (not b_lambda!717))

(assert (not b_lambda!837))

(assert (not b_lambda!757))

(assert (not b_lambda!781))

(assert (not b_lambda!569))

(assert (not b_lambda!501))

(assert (not b_lambda!665))

(assert (not b_lambda!313))

(assert (not b_lambda!351))

(assert (not b_lambda!821))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!57))

(assert b_and!947)

(assert b_and!215)

(assert (not b_next!61))

(assert (not b_next!55))

(assert b_and!589)

(check-sat)

(pop 1)


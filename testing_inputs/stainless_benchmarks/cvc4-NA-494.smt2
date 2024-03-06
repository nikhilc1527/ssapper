; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3330 () Bool)

(assert start!3330)

(declare-fun b!19131 () Bool)

(declare-fun res!8177 () Bool)

(declare-fun e!10143 () Bool)

(assert (=> b!19131 (=> res!8177 e!10143)))

(declare-fun i!317 () Int)

(assert (=> b!19131 (= res!8177 (< i!317 0))))

(declare-fun b!19132 () Bool)

(declare-fun e!10141 () Bool)

(declare-fun tp_is_empty!87 () Bool)

(assert (=> b!19132 (= e!10141 tp_is_empty!87)))

(declare-fun b!19133 () Bool)

(declare-fun res!8183 () Bool)

(declare-fun e!10140 () Bool)

(assert (=> b!19133 (=> (not res!8183) (not e!10140))))

(declare-fun i!298 () Int)

(declare-datatypes () ((T!1743 (T!1744 (val!44 Int)))))

(declare-datatypes () ((Conc!26 (CC!25 (left!670 Conc!26) (right!673 Conc!26)) (Single!25 (x!8768 T!1743)) (Empty!36))))

(declare-fun xs!604 () Conc!26)

(declare-fun size!214 (Conc!26) Int)

(assert (=> b!19133 (= res!8183 (>= i!298 (size!214 (left!670 xs!604))))))

(declare-fun b!19134 () Bool)

(declare-fun res!8181 () Bool)

(assert (=> b!19134 (=> (not res!8181) (not e!10140))))

(assert (=> b!19134 (= res!8181 (<= i!298 (size!214 xs!604)))))

(declare-fun b!19135 () Bool)

(declare-fun res!8175 () Bool)

(assert (=> b!19135 (=> (not res!8175) (not e!10140))))

(declare-fun xs!618 () Conc!26)

(declare-fun xs!619 () Conc!26)

(assert (=> b!19135 (= res!8175 (and (= xs!618 (left!670 xs!604)) (= xs!619 (right!673 xs!604))))))

(declare-fun b!19136 () Bool)

(declare-fun e!10144 () Bool)

(assert (=> b!19136 (= e!10144 tp_is_empty!87)))

(declare-fun b!19137 () Bool)

(declare-fun res!8186 () Bool)

(assert (=> b!19137 (=> (not res!8186) (not e!10140))))

(declare-fun y!863 () T!1743)

(declare-fun y!824 () T!1743)

(assert (=> b!19137 (= res!8186 (= y!863 y!824))))

(declare-fun b!19138 () Bool)

(declare-fun e!10142 () Bool)

(assert (=> b!19138 (= e!10142 tp_is_empty!87)))

(declare-fun b!19139 () Bool)

(declare-fun tp!4468 () Bool)

(declare-fun tp!4465 () Bool)

(assert (=> b!19139 (= e!10141 (and tp!4468 tp!4465))))

(declare-fun b!19140 () Bool)

(declare-fun res!8184 () Bool)

(assert (=> b!19140 (=> (not res!8184) (not e!10140))))

(assert (=> b!19140 (= res!8184 (>= i!298 0))))

(declare-fun res!8176 () Bool)

(assert (=> start!3330 (=> (not res!8176) (not e!10140))))

(declare-fun concInv!24 (Conc!26) Bool)

(assert (=> start!3330 (= res!8176 (concInv!24 xs!604))))

(assert (=> start!3330 e!10140))

(assert (=> start!3330 e!10141))

(assert (=> start!3330 tp_is_empty!87))

(assert (=> start!3330 true))

(assert (=> start!3330 e!10144))

(assert (=> start!3330 e!10142))

(declare-fun b!19141 () Bool)

(declare-fun res!8182 () Bool)

(assert (=> b!19141 (=> res!8182 e!10143)))

(declare-fun balanced!25 (Conc!26) Bool)

(assert (=> b!19141 (= res!8182 (not (balanced!25 xs!619)))))

(declare-fun b!19142 () Bool)

(declare-fun tp!4463 () Bool)

(declare-fun tp!4464 () Bool)

(assert (=> b!19142 (= e!10142 (and tp!4463 tp!4464))))

(declare-fun b!19143 () Bool)

(declare-fun res!8180 () Bool)

(assert (=> b!19143 (=> (not res!8180) (not e!10140))))

(assert (=> b!19143 (= res!8180 (and (not (is-Empty!36 xs!604)) (not (is-Single!25 xs!604))))))

(declare-fun b!19144 () Bool)

(assert (=> b!19144 (= e!10143 (> i!317 (size!214 xs!619)))))

(declare-fun b!19145 () Bool)

(declare-fun tp!4467 () Bool)

(declare-fun tp!4466 () Bool)

(assert (=> b!19145 (= e!10144 (and tp!4467 tp!4466))))

(declare-fun b!19146 () Bool)

(assert (=> b!19146 (= e!10140 e!10143)))

(declare-fun res!8178 () Bool)

(assert (=> b!19146 (=> res!8178 e!10143)))

(assert (=> b!19146 (= res!8178 (not (concInv!24 xs!619)))))

(declare-fun b!19147 () Bool)

(declare-fun res!8179 () Bool)

(assert (=> b!19147 (=> (not res!8179) (not e!10140))))

(assert (=> b!19147 (= res!8179 (balanced!25 xs!604))))

(declare-fun b!19148 () Bool)

(declare-fun res!8185 () Bool)

(assert (=> b!19148 (=> (not res!8185) (not e!10140))))

(assert (=> b!19148 (= res!8185 (= i!317 (- i!298 (size!214 (left!670 xs!604)))))))

(assert (= (and start!3330 res!8176) b!19147))

(assert (= (and b!19147 res!8179) b!19140))

(assert (= (and b!19140 res!8184) b!19134))

(assert (= (and b!19134 res!8181) b!19143))

(assert (= (and b!19143 res!8180) b!19133))

(assert (= (and b!19133 res!8183) b!19135))

(assert (= (and b!19135 res!8175) b!19148))

(assert (= (and b!19148 res!8185) b!19137))

(assert (= (and b!19137 res!8186) b!19146))

(assert (= (and b!19146 (not res!8178)) b!19141))

(assert (= (and b!19141 (not res!8182)) b!19131))

(assert (= (and b!19131 (not res!8177)) b!19144))

(assert (= (and start!3330 (is-CC!25 xs!618)) b!19139))

(assert (= (and start!3330 (is-Single!25 xs!618)) b!19132))

(assert (= (and start!3330 (is-CC!25 xs!604)) b!19145))

(assert (= (and start!3330 (is-Single!25 xs!604)) b!19136))

(assert (= (and start!3330 (is-CC!25 xs!619)) b!19142))

(assert (= (and start!3330 (is-Single!25 xs!619)) b!19138))

(declare-fun m!21565 () Bool)

(assert (=> b!19147 m!21565))

(declare-fun m!21567 () Bool)

(assert (=> start!3330 m!21567))

(declare-fun m!21569 () Bool)

(assert (=> b!19148 m!21569))

(declare-fun m!21571 () Bool)

(assert (=> b!19141 m!21571))

(assert (=> b!19133 m!21569))

(declare-fun m!21573 () Bool)

(assert (=> b!19134 m!21573))

(declare-fun m!21575 () Bool)

(assert (=> b!19146 m!21575))

(declare-fun m!21577 () Bool)

(assert (=> b!19144 m!21577))

(push 1)

(assert (not b!19147))

(assert (not start!3330))

(assert (not b!19148))

(assert (not b!19145))

(assert tp_is_empty!87)

(assert (not b!19144))

(assert (not b!19139))

(assert (not b!19142))

(assert (not b!19134))

(assert (not b!19146))

(assert (not b!19141))

(assert (not b!19133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!19160 () Bool)

(declare-fun e!10150 () Bool)

(assert (=> b!19160 (= e!10150 (concInv!24 (right!673 xs!604)))))

(declare-fun b!19159 () Bool)

(declare-fun res!8197 () Bool)

(assert (=> b!19159 (=> (not res!8197) (not e!10150))))

(assert (=> b!19159 (= res!8197 (concInv!24 (left!670 xs!604)))))

(declare-fun b!19157 () Bool)

(declare-fun e!10149 () Bool)

(assert (=> b!19157 (= e!10149 e!10150)))

(declare-fun res!8195 () Bool)

(assert (=> b!19157 (=> (not res!8195) (not e!10150))))

(declare-fun isEmpty!288 (Conc!26) Bool)

(assert (=> b!19157 (= res!8195 (not (isEmpty!288 (left!670 xs!604))))))

(declare-fun b!19158 () Bool)

(declare-fun res!8196 () Bool)

(assert (=> b!19158 (=> (not res!8196) (not e!10150))))

(assert (=> b!19158 (= res!8196 (not (isEmpty!288 (right!673 xs!604))))))

(declare-fun d!12261 () Bool)

(declare-fun res!8198 () Bool)

(assert (=> d!12261 (=> res!8198 e!10149)))

(assert (=> d!12261 (= res!8198 (not (is-CC!25 xs!604)))))

(assert (=> d!12261 (= (concInv!24 xs!604) e!10149)))

(assert (= (and d!12261 (not res!8198)) b!19157))

(assert (= (and b!19157 res!8195) b!19158))

(assert (= (and b!19158 res!8196) b!19159))

(assert (= (and b!19159 res!8197) b!19160))

(declare-fun m!21579 () Bool)

(assert (=> b!19160 m!21579))

(declare-fun m!21581 () Bool)

(assert (=> b!19159 m!21581))

(declare-fun m!21583 () Bool)

(assert (=> b!19157 m!21583))

(declare-fun m!21585 () Bool)

(assert (=> b!19158 m!21585))

(assert (=> start!3330 d!12261))

(declare-fun b!19169 () Bool)

(declare-fun e!10156 () Bool)

(declare-fun e!10155 () Bool)

(assert (=> b!19169 (= e!10156 e!10155)))

(declare-fun res!8210 () Bool)

(assert (=> b!19169 (=> (not res!8210) (not e!10155))))

(declare-fun level!23 (Conc!26) Int)

(assert (=> b!19169 (= res!8210 (>= (- (level!23 (left!670 xs!604)) (level!23 (right!673 xs!604))) (- 1)))))

(declare-fun d!12263 () Bool)

(declare-fun res!8208 () Bool)

(assert (=> d!12263 (=> res!8208 e!10156)))

(assert (=> d!12263 (= res!8208 (not (is-CC!25 xs!604)))))

(assert (=> d!12263 (= (balanced!25 xs!604) e!10156)))

(declare-fun b!19170 () Bool)

(declare-fun res!8207 () Bool)

(assert (=> b!19170 (=> (not res!8207) (not e!10155))))

(assert (=> b!19170 (= res!8207 (<= (- (level!23 (left!670 xs!604)) (level!23 (right!673 xs!604))) 1))))

(declare-fun b!19171 () Bool)

(declare-fun res!8209 () Bool)

(assert (=> b!19171 (=> (not res!8209) (not e!10155))))

(assert (=> b!19171 (= res!8209 (balanced!25 (left!670 xs!604)))))

(declare-fun b!19172 () Bool)

(assert (=> b!19172 (= e!10155 (balanced!25 (right!673 xs!604)))))

(assert (= (and d!12263 (not res!8208)) b!19169))

(assert (= (and b!19169 res!8210) b!19170))

(assert (= (and b!19170 res!8207) b!19171))

(assert (= (and b!19171 res!8209) b!19172))

(declare-fun m!21587 () Bool)

(assert (=> b!19169 m!21587))

(declare-fun m!21589 () Bool)

(assert (=> b!19169 m!21589))

(assert (=> b!19170 m!21587))

(assert (=> b!19170 m!21589))

(declare-fun m!21591 () Bool)

(assert (=> b!19171 m!21591))

(declare-fun m!21593 () Bool)

(assert (=> b!19172 m!21593))

(assert (=> b!19147 d!12263))

(declare-fun b!19181 () Bool)

(declare-fun e!10162 () Int)

(assert (=> b!19181 (= e!10162 0)))

(declare-fun b!19183 () Bool)

(declare-fun e!10161 () Int)

(assert (=> b!19183 (= e!10161 1)))

(declare-fun b!19184 () Bool)

(assert (=> b!19184 (= e!10161 (+ (size!214 (left!670 xs!619)) (size!214 (right!673 xs!619))))))

(declare-fun d!12265 () Bool)

(declare-fun lt!2870 () Int)

(assert (=> d!12265 (>= lt!2870 0)))

(assert (=> d!12265 (= lt!2870 e!10162)))

(declare-fun c!4700 () Bool)

(assert (=> d!12265 (= c!4700 (is-Empty!36 xs!619))))

(assert (=> d!12265 (= (size!214 xs!619) lt!2870)))

(declare-fun b!19182 () Bool)

(assert (=> b!19182 (= e!10162 e!10161)))

(declare-fun c!4701 () Bool)

(assert (=> b!19182 (= c!4701 (is-Single!25 xs!619))))

(assert (= (and b!19182 c!4701) b!19183))

(assert (= (and b!19182 (not c!4701)) b!19184))

(assert (= (and d!12265 c!4700) b!19181))

(assert (= (and d!12265 (not c!4700)) b!19182))

(declare-fun m!21595 () Bool)

(assert (=> b!19184 m!21595))

(declare-fun m!21597 () Bool)

(assert (=> b!19184 m!21597))

(assert (=> b!19144 d!12265))

(declare-fun b!19185 () Bool)

(declare-fun e!10164 () Int)

(assert (=> b!19185 (= e!10164 0)))

(declare-fun b!19187 () Bool)

(declare-fun e!10163 () Int)

(assert (=> b!19187 (= e!10163 1)))

(declare-fun b!19188 () Bool)

(assert (=> b!19188 (= e!10163 (+ (size!214 (left!670 xs!604)) (size!214 (right!673 xs!604))))))

(declare-fun d!12267 () Bool)

(declare-fun lt!2871 () Int)

(assert (=> d!12267 (>= lt!2871 0)))

(assert (=> d!12267 (= lt!2871 e!10164)))

(declare-fun c!4702 () Bool)

(assert (=> d!12267 (= c!4702 (is-Empty!36 xs!604))))

(assert (=> d!12267 (= (size!214 xs!604) lt!2871)))

(declare-fun b!19186 () Bool)

(assert (=> b!19186 (= e!10164 e!10163)))

(declare-fun c!4703 () Bool)

(assert (=> b!19186 (= c!4703 (is-Single!25 xs!604))))

(assert (= (and b!19186 c!4703) b!19187))

(assert (= (and b!19186 (not c!4703)) b!19188))

(assert (= (and d!12267 c!4702) b!19185))

(assert (= (and d!12267 (not c!4702)) b!19186))

(assert (=> b!19188 m!21569))

(declare-fun m!21599 () Bool)

(assert (=> b!19188 m!21599))

(assert (=> b!19134 d!12267))

(declare-fun b!19189 () Bool)

(declare-fun e!10166 () Int)

(assert (=> b!19189 (= e!10166 0)))

(declare-fun b!19191 () Bool)

(declare-fun e!10165 () Int)

(assert (=> b!19191 (= e!10165 1)))

(declare-fun b!19192 () Bool)

(assert (=> b!19192 (= e!10165 (+ (size!214 (left!670 (left!670 xs!604))) (size!214 (right!673 (left!670 xs!604)))))))

(declare-fun d!12269 () Bool)

(declare-fun lt!2872 () Int)

(assert (=> d!12269 (>= lt!2872 0)))

(assert (=> d!12269 (= lt!2872 e!10166)))

(declare-fun c!4704 () Bool)

(assert (=> d!12269 (= c!4704 (is-Empty!36 (left!670 xs!604)))))

(assert (=> d!12269 (= (size!214 (left!670 xs!604)) lt!2872)))

(declare-fun b!19190 () Bool)

(assert (=> b!19190 (= e!10166 e!10165)))

(declare-fun c!4705 () Bool)

(assert (=> b!19190 (= c!4705 (is-Single!25 (left!670 xs!604)))))

(assert (= (and b!19190 c!4705) b!19191))

(assert (= (and b!19190 (not c!4705)) b!19192))

(assert (= (and d!12269 c!4704) b!19189))

(assert (= (and d!12269 (not c!4704)) b!19190))

(declare-fun m!21601 () Bool)

(assert (=> b!19192 m!21601))

(declare-fun m!21603 () Bool)

(assert (=> b!19192 m!21603))

(assert (=> b!19133 d!12269))

(declare-fun b!19196 () Bool)

(declare-fun e!10168 () Bool)

(assert (=> b!19196 (= e!10168 (concInv!24 (right!673 xs!619)))))

(declare-fun b!19195 () Bool)

(declare-fun res!8213 () Bool)

(assert (=> b!19195 (=> (not res!8213) (not e!10168))))

(assert (=> b!19195 (= res!8213 (concInv!24 (left!670 xs!619)))))

(declare-fun b!19193 () Bool)

(declare-fun e!10167 () Bool)

(assert (=> b!19193 (= e!10167 e!10168)))

(declare-fun res!8211 () Bool)

(assert (=> b!19193 (=> (not res!8211) (not e!10168))))

(assert (=> b!19193 (= res!8211 (not (isEmpty!288 (left!670 xs!619))))))

(declare-fun b!19194 () Bool)

(declare-fun res!8212 () Bool)

(assert (=> b!19194 (=> (not res!8212) (not e!10168))))

(assert (=> b!19194 (= res!8212 (not (isEmpty!288 (right!673 xs!619))))))

(declare-fun d!12271 () Bool)

(declare-fun res!8214 () Bool)

(assert (=> d!12271 (=> res!8214 e!10167)))

(assert (=> d!12271 (= res!8214 (not (is-CC!25 xs!619)))))

(assert (=> d!12271 (= (concInv!24 xs!619) e!10167)))

(assert (= (and d!12271 (not res!8214)) b!19193))

(assert (= (and b!19193 res!8211) b!19194))

(assert (= (and b!19194 res!8212) b!19195))

(assert (= (and b!19195 res!8213) b!19196))

(declare-fun m!21605 () Bool)

(assert (=> b!19196 m!21605))

(declare-fun m!21607 () Bool)

(assert (=> b!19195 m!21607))

(declare-fun m!21609 () Bool)

(assert (=> b!19193 m!21609))

(declare-fun m!21611 () Bool)

(assert (=> b!19194 m!21611))

(assert (=> b!19146 d!12271))

(assert (=> b!19148 d!12269))

(declare-fun b!19197 () Bool)

(declare-fun e!10170 () Bool)

(declare-fun e!10169 () Bool)

(assert (=> b!19197 (= e!10170 e!10169)))

(declare-fun res!8218 () Bool)

(assert (=> b!19197 (=> (not res!8218) (not e!10169))))

(assert (=> b!19197 (= res!8218 (>= (- (level!23 (left!670 xs!619)) (level!23 (right!673 xs!619))) (- 1)))))

(declare-fun d!12273 () Bool)

(declare-fun res!8216 () Bool)

(assert (=> d!12273 (=> res!8216 e!10170)))

(assert (=> d!12273 (= res!8216 (not (is-CC!25 xs!619)))))

(assert (=> d!12273 (= (balanced!25 xs!619) e!10170)))

(declare-fun b!19198 () Bool)

(declare-fun res!8215 () Bool)

(assert (=> b!19198 (=> (not res!8215) (not e!10169))))

(assert (=> b!19198 (= res!8215 (<= (- (level!23 (left!670 xs!619)) (level!23 (right!673 xs!619))) 1))))

(declare-fun b!19199 () Bool)

(declare-fun res!8217 () Bool)

(assert (=> b!19199 (=> (not res!8217) (not e!10169))))

(assert (=> b!19199 (= res!8217 (balanced!25 (left!670 xs!619)))))

(declare-fun b!19200 () Bool)

(assert (=> b!19200 (= e!10169 (balanced!25 (right!673 xs!619)))))

(assert (= (and d!12273 (not res!8216)) b!19197))

(assert (= (and b!19197 res!8218) b!19198))

(assert (= (and b!19198 res!8215) b!19199))

(assert (= (and b!19199 res!8217) b!19200))

(declare-fun m!21613 () Bool)

(assert (=> b!19197 m!21613))

(declare-fun m!21615 () Bool)

(assert (=> b!19197 m!21615))

(assert (=> b!19198 m!21613))

(assert (=> b!19198 m!21615))

(declare-fun m!21617 () Bool)

(assert (=> b!19199 m!21617))

(declare-fun m!21619 () Bool)

(assert (=> b!19200 m!21619))

(assert (=> b!19141 d!12273))

(declare-fun b!19207 () Bool)

(declare-fun e!10173 () Bool)

(declare-fun tp!4473 () Bool)

(declare-fun tp!4474 () Bool)

(assert (=> b!19207 (= e!10173 (and tp!4473 tp!4474))))

(declare-fun b!19208 () Bool)

(assert (=> b!19208 (= e!10173 tp_is_empty!87)))

(assert (=> b!19139 (= tp!4468 e!10173)))

(assert (= (and b!19139 (is-CC!25 (left!670 xs!618))) b!19207))

(assert (= (and b!19139 (is-Single!25 (left!670 xs!618))) b!19208))

(declare-fun b!19209 () Bool)

(declare-fun e!10174 () Bool)

(declare-fun tp!4475 () Bool)

(declare-fun tp!4476 () Bool)

(assert (=> b!19209 (= e!10174 (and tp!4475 tp!4476))))

(declare-fun b!19210 () Bool)

(assert (=> b!19210 (= e!10174 tp_is_empty!87)))

(assert (=> b!19139 (= tp!4465 e!10174)))

(assert (= (and b!19139 (is-CC!25 (right!673 xs!618))) b!19209))

(assert (= (and b!19139 (is-Single!25 (right!673 xs!618))) b!19210))

(declare-fun b!19211 () Bool)

(declare-fun e!10175 () Bool)

(declare-fun tp!4477 () Bool)

(declare-fun tp!4478 () Bool)

(assert (=> b!19211 (= e!10175 (and tp!4477 tp!4478))))

(declare-fun b!19212 () Bool)

(assert (=> b!19212 (= e!10175 tp_is_empty!87)))

(assert (=> b!19145 (= tp!4467 e!10175)))

(assert (= (and b!19145 (is-CC!25 (left!670 xs!604))) b!19211))

(assert (= (and b!19145 (is-Single!25 (left!670 xs!604))) b!19212))

(declare-fun b!19213 () Bool)

(declare-fun e!10176 () Bool)

(declare-fun tp!4479 () Bool)

(declare-fun tp!4480 () Bool)

(assert (=> b!19213 (= e!10176 (and tp!4479 tp!4480))))

(declare-fun b!19214 () Bool)

(assert (=> b!19214 (= e!10176 tp_is_empty!87)))

(assert (=> b!19145 (= tp!4466 e!10176)))

(assert (= (and b!19145 (is-CC!25 (right!673 xs!604))) b!19213))

(assert (= (and b!19145 (is-Single!25 (right!673 xs!604))) b!19214))

(declare-fun b!19215 () Bool)

(declare-fun e!10177 () Bool)

(declare-fun tp!4481 () Bool)

(declare-fun tp!4482 () Bool)

(assert (=> b!19215 (= e!10177 (and tp!4481 tp!4482))))

(declare-fun b!19216 () Bool)

(assert (=> b!19216 (= e!10177 tp_is_empty!87)))

(assert (=> b!19142 (= tp!4463 e!10177)))

(assert (= (and b!19142 (is-CC!25 (left!670 xs!619))) b!19215))

(assert (= (and b!19142 (is-Single!25 (left!670 xs!619))) b!19216))

(declare-fun b!19217 () Bool)

(declare-fun e!10178 () Bool)

(declare-fun tp!4483 () Bool)

(declare-fun tp!4484 () Bool)

(assert (=> b!19217 (= e!10178 (and tp!4483 tp!4484))))

(declare-fun b!19218 () Bool)

(assert (=> b!19218 (= e!10178 tp_is_empty!87)))

(assert (=> b!19142 (= tp!4464 e!10178)))

(assert (= (and b!19142 (is-CC!25 (right!673 xs!619))) b!19217))

(assert (= (and b!19142 (is-Single!25 (right!673 xs!619))) b!19218))

(push 1)

(assert (not b!19160))

(assert (not b!19200))

(assert (not b!19217))

(assert (not b!19172))

(assert (not b!19193))

(assert (not b!19195))

(assert (not b!19188))

(assert (not b!19170))

(assert (not b!19207))

(assert (not b!19213))

(assert (not b!19215))

(assert tp_is_empty!87)

(assert (not b!19209))

(assert (not b!19194))

(assert (not b!19157))

(assert (not b!19192))

(assert (not b!19197))

(assert (not b!19211))

(assert (not b!19199))

(assert (not b!19159))

(assert (not b!19196))

(assert (not b!19198))

(assert (not b!19171))

(assert (not b!19184))

(assert (not b!19158))

(assert (not b!19169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


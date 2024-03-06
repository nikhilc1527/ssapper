; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3602 () Bool)

(assert start!3602)

(declare-fun b!23090 () Bool)

(declare-fun res!10202 () Bool)

(declare-fun e!12028 () Bool)

(assert (=> b!23090 (=> (not res!10202) (not e!12028))))

(declare-fun i!252 () Int)

(assert (=> b!23090 (= res!10202 (>= i!252 0))))

(declare-fun b!23091 () Bool)

(declare-fun res!10200 () Bool)

(declare-fun e!12030 () Bool)

(assert (=> b!23091 (=> res!10200 e!12030)))

(declare-fun i!259 () Int)

(assert (=> b!23091 (= res!10200 (< i!259 0))))

(declare-fun b!23092 () Bool)

(declare-fun res!10205 () Bool)

(assert (=> b!23092 (=> (not res!10205) (not e!12028))))

(declare-datatypes () ((T!1787 (T!1788 (val!66 Int)))))

(declare-datatypes () ((Conc!43 (CC!42 (left!687 Conc!43) (right!690 Conc!43)) (Single!42 (x!8837 T!1787)) (Empty!53))))

(declare-fun xs!572 () Conc!43)

(declare-fun size!246 (Conc!43) Int)

(assert (=> b!23092 (= res!10205 (< i!252 (size!246 xs!572)))))

(declare-fun b!23093 () Bool)

(declare-fun xs!579 () Conc!43)

(assert (=> b!23093 (= e!12030 (>= i!259 (size!246 xs!579)))))

(declare-fun b!23094 () Bool)

(declare-fun res!10196 () Bool)

(assert (=> b!23094 (=> (not res!10196) (not e!12028))))

(assert (=> b!23094 (= res!10196 (= xs!579 (right!690 xs!572)))))

(declare-fun b!23095 () Bool)

(assert (=> b!23095 (= e!12028 e!12030)))

(declare-fun res!10193 () Bool)

(assert (=> b!23095 (=> res!10193 e!12030)))

(declare-fun concInv!39 (Conc!43) Bool)

(assert (=> b!23095 (= res!10193 (not (concInv!39 xs!579)))))

(declare-fun b!23096 () Bool)

(declare-fun res!10204 () Bool)

(assert (=> b!23096 (=> (not res!10204) (not e!12028))))

(assert (=> b!23096 (= res!10204 (>= i!252 (size!246 (left!687 xs!572))))))

(declare-fun b!23097 () Bool)

(declare-fun e!12029 () Bool)

(declare-fun tp_is_empty!131 () Bool)

(assert (=> b!23097 (= e!12029 tp_is_empty!131)))

(declare-fun b!23098 () Bool)

(declare-fun e!12031 () Bool)

(assert (=> b!23098 (= e!12031 tp_is_empty!131)))

(declare-fun b!23099 () Bool)

(declare-fun tp!5059 () Bool)

(declare-fun tp!5061 () Bool)

(assert (=> b!23099 (= e!12029 (and tp!5059 tp!5061))))

(declare-fun b!23100 () Bool)

(declare-fun res!10199 () Bool)

(assert (=> b!23100 (=> (not res!10199) (not e!12028))))

(declare-fun isEmpty!302 (Conc!43) Bool)

(assert (=> b!23100 (= res!10199 (not (isEmpty!302 xs!572)))))

(declare-fun b!23101 () Bool)

(declare-fun res!10198 () Bool)

(assert (=> b!23101 (=> res!10198 e!12030)))

(declare-fun balanced!40 (Conc!43) Bool)

(assert (=> b!23101 (= res!10198 (not (balanced!40 xs!579)))))

(declare-fun b!23102 () Bool)

(declare-fun res!10197 () Bool)

(assert (=> b!23102 (=> (not res!10197) (not e!12028))))

(assert (=> b!23102 (= res!10197 (= i!259 (- i!252 (size!246 (left!687 xs!572)))))))

(declare-fun b!23103 () Bool)

(declare-fun res!10203 () Bool)

(assert (=> b!23103 (=> (not res!10203) (not e!12028))))

(assert (=> b!23103 (= res!10203 (balanced!40 xs!572))))

(declare-fun b!23104 () Bool)

(declare-fun tp!5058 () Bool)

(declare-fun tp!5060 () Bool)

(assert (=> b!23104 (= e!12031 (and tp!5058 tp!5060))))

(declare-fun res!10194 () Bool)

(assert (=> start!3602 (=> (not res!10194) (not e!12028))))

(assert (=> start!3602 (= res!10194 (concInv!39 xs!572))))

(assert (=> start!3602 e!12028))

(assert (=> start!3602 e!12031))

(assert (=> start!3602 true))

(assert (=> start!3602 e!12029))

(declare-fun b!23105 () Bool)

(declare-fun res!10195 () Bool)

(assert (=> b!23105 (=> (not res!10195) (not e!12028))))

(assert (=> b!23105 (= res!10195 (not (is-Single!42 xs!572)))))

(declare-fun b!23106 () Bool)

(declare-fun res!10201 () Bool)

(assert (=> b!23106 (=> res!10201 e!12030)))

(assert (=> b!23106 (= res!10201 (isEmpty!302 xs!579))))

(assert (= (and start!3602 res!10194) b!23103))

(assert (= (and b!23103 res!10203) b!23100))

(assert (= (and b!23100 res!10199) b!23090))

(assert (= (and b!23090 res!10202) b!23092))

(assert (= (and b!23092 res!10205) b!23105))

(assert (= (and b!23105 res!10195) b!23096))

(assert (= (and b!23096 res!10204) b!23094))

(assert (= (and b!23094 res!10196) b!23102))

(assert (= (and b!23102 res!10197) b!23095))

(assert (= (and b!23095 (not res!10193)) b!23101))

(assert (= (and b!23101 (not res!10198)) b!23106))

(assert (= (and b!23106 (not res!10201)) b!23091))

(assert (= (and b!23091 (not res!10200)) b!23093))

(assert (= (and start!3602 (is-CC!42 xs!572)) b!23104))

(assert (= (and start!3602 (is-Single!42 xs!572)) b!23098))

(assert (= (and start!3602 (is-CC!42 xs!579)) b!23099))

(assert (= (and start!3602 (is-Single!42 xs!579)) b!23097))

(declare-fun m!24781 () Bool)

(assert (=> b!23095 m!24781))

(declare-fun m!24783 () Bool)

(assert (=> b!23100 m!24783))

(declare-fun m!24785 () Bool)

(assert (=> b!23092 m!24785))

(declare-fun m!24787 () Bool)

(assert (=> start!3602 m!24787))

(declare-fun m!24789 () Bool)

(assert (=> b!23103 m!24789))

(declare-fun m!24791 () Bool)

(assert (=> b!23102 m!24791))

(declare-fun m!24793 () Bool)

(assert (=> b!23093 m!24793))

(declare-fun m!24795 () Bool)

(assert (=> b!23106 m!24795))

(assert (=> b!23096 m!24791))

(declare-fun m!24797 () Bool)

(assert (=> b!23101 m!24797))

(push 1)

(assert (not b!23093))

(assert (not b!23101))

(assert (not b!23106))

(assert (not b!23104))

(assert (not b!23095))

(assert (not b!23096))

(assert (not b!23103))

(assert (not b!23100))

(assert (not b!23092))

(assert tp_is_empty!131)

(assert (not b!23099))

(assert (not b!23102))

(assert (not start!3602))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!23118 () Bool)

(declare-fun e!12036 () Int)

(assert (=> b!23118 (= e!12036 (+ (size!246 (left!687 xs!572)) (size!246 (right!690 xs!572))))))

(declare-fun b!23117 () Bool)

(assert (=> b!23117 (= e!12036 1)))

(declare-fun b!23115 () Bool)

(declare-fun e!12037 () Int)

(assert (=> b!23115 (= e!12037 0)))

(declare-fun b!23116 () Bool)

(assert (=> b!23116 (= e!12037 e!12036)))

(declare-fun c!5426 () Bool)

(assert (=> b!23116 (= c!5426 (is-Single!42 xs!572))))

(declare-fun d!13257 () Bool)

(declare-fun lt!3605 () Int)

(assert (=> d!13257 (>= lt!3605 0)))

(assert (=> d!13257 (= lt!3605 e!12037)))

(declare-fun c!5427 () Bool)

(assert (=> d!13257 (= c!5427 (is-Empty!53 xs!572))))

(assert (=> d!13257 (= (size!246 xs!572) lt!3605)))

(assert (= (and b!23116 c!5426) b!23117))

(assert (= (and b!23116 (not c!5426)) b!23118))

(assert (= (and d!13257 c!5427) b!23115))

(assert (= (and d!13257 (not c!5427)) b!23116))

(assert (=> b!23118 m!24791))

(declare-fun m!24799 () Bool)

(assert (=> b!23118 m!24799))

(assert (=> b!23092 d!13257))

(declare-fun b!23122 () Bool)

(declare-fun e!12038 () Int)

(assert (=> b!23122 (= e!12038 (+ (size!246 (left!687 (left!687 xs!572))) (size!246 (right!690 (left!687 xs!572)))))))

(declare-fun b!23121 () Bool)

(assert (=> b!23121 (= e!12038 1)))

(declare-fun b!23119 () Bool)

(declare-fun e!12039 () Int)

(assert (=> b!23119 (= e!12039 0)))

(declare-fun b!23120 () Bool)

(assert (=> b!23120 (= e!12039 e!12038)))

(declare-fun c!5428 () Bool)

(assert (=> b!23120 (= c!5428 (is-Single!42 (left!687 xs!572)))))

(declare-fun d!13259 () Bool)

(declare-fun lt!3606 () Int)

(assert (=> d!13259 (>= lt!3606 0)))

(assert (=> d!13259 (= lt!3606 e!12039)))

(declare-fun c!5429 () Bool)

(assert (=> d!13259 (= c!5429 (is-Empty!53 (left!687 xs!572)))))

(assert (=> d!13259 (= (size!246 (left!687 xs!572)) lt!3606)))

(assert (= (and b!23120 c!5428) b!23121))

(assert (= (and b!23120 (not c!5428)) b!23122))

(assert (= (and d!13259 c!5429) b!23119))

(assert (= (and d!13259 (not c!5429)) b!23120))

(declare-fun m!24801 () Bool)

(assert (=> b!23122 m!24801))

(declare-fun m!24803 () Bool)

(assert (=> b!23122 m!24803))

(assert (=> b!23102 d!13259))

(declare-fun d!13261 () Bool)

(assert (=> d!13261 (= (isEmpty!302 xs!579) (= xs!579 Empty!53))))

(assert (=> b!23106 d!13261))

(assert (=> b!23096 d!13259))

(declare-fun d!13263 () Bool)

(assert (=> d!13263 (= (isEmpty!302 xs!572) (= xs!572 Empty!53))))

(assert (=> b!23100 d!13263))

(declare-fun b!23134 () Bool)

(declare-fun e!12045 () Bool)

(assert (=> b!23134 (= e!12045 (concInv!39 (right!690 xs!572)))))

(declare-fun d!13265 () Bool)

(declare-fun res!10216 () Bool)

(declare-fun e!12044 () Bool)

(assert (=> d!13265 (=> res!10216 e!12044)))

(assert (=> d!13265 (= res!10216 (not (is-CC!42 xs!572)))))

(assert (=> d!13265 (= (concInv!39 xs!572) e!12044)))

(declare-fun b!23132 () Bool)

(declare-fun res!10215 () Bool)

(assert (=> b!23132 (=> (not res!10215) (not e!12045))))

(assert (=> b!23132 (= res!10215 (not (isEmpty!302 (right!690 xs!572))))))

(declare-fun b!23133 () Bool)

(declare-fun res!10217 () Bool)

(assert (=> b!23133 (=> (not res!10217) (not e!12045))))

(assert (=> b!23133 (= res!10217 (concInv!39 (left!687 xs!572)))))

(declare-fun b!23131 () Bool)

(assert (=> b!23131 (= e!12044 e!12045)))

(declare-fun res!10214 () Bool)

(assert (=> b!23131 (=> (not res!10214) (not e!12045))))

(assert (=> b!23131 (= res!10214 (not (isEmpty!302 (left!687 xs!572))))))

(assert (= (and d!13265 (not res!10216)) b!23131))

(assert (= (and b!23131 res!10214) b!23132))

(assert (= (and b!23132 res!10215) b!23133))

(assert (= (and b!23133 res!10217) b!23134))

(declare-fun m!24805 () Bool)

(assert (=> b!23134 m!24805))

(declare-fun m!24807 () Bool)

(assert (=> b!23132 m!24807))

(declare-fun m!24809 () Bool)

(assert (=> b!23133 m!24809))

(declare-fun m!24811 () Bool)

(assert (=> b!23131 m!24811))

(assert (=> start!3602 d!13265))

(declare-fun b!23138 () Bool)

(declare-fun e!12047 () Bool)

(assert (=> b!23138 (= e!12047 (concInv!39 (right!690 xs!579)))))

(declare-fun d!13267 () Bool)

(declare-fun res!10220 () Bool)

(declare-fun e!12046 () Bool)

(assert (=> d!13267 (=> res!10220 e!12046)))

(assert (=> d!13267 (= res!10220 (not (is-CC!42 xs!579)))))

(assert (=> d!13267 (= (concInv!39 xs!579) e!12046)))

(declare-fun b!23136 () Bool)

(declare-fun res!10219 () Bool)

(assert (=> b!23136 (=> (not res!10219) (not e!12047))))

(assert (=> b!23136 (= res!10219 (not (isEmpty!302 (right!690 xs!579))))))

(declare-fun b!23137 () Bool)

(declare-fun res!10221 () Bool)

(assert (=> b!23137 (=> (not res!10221) (not e!12047))))

(assert (=> b!23137 (= res!10221 (concInv!39 (left!687 xs!579)))))

(declare-fun b!23135 () Bool)

(assert (=> b!23135 (= e!12046 e!12047)))

(declare-fun res!10218 () Bool)

(assert (=> b!23135 (=> (not res!10218) (not e!12047))))

(assert (=> b!23135 (= res!10218 (not (isEmpty!302 (left!687 xs!579))))))

(assert (= (and d!13267 (not res!10220)) b!23135))

(assert (= (and b!23135 res!10218) b!23136))

(assert (= (and b!23136 res!10219) b!23137))

(assert (= (and b!23137 res!10221) b!23138))

(declare-fun m!24813 () Bool)

(assert (=> b!23138 m!24813))

(declare-fun m!24815 () Bool)

(assert (=> b!23136 m!24815))

(declare-fun m!24817 () Bool)

(assert (=> b!23137 m!24817))

(declare-fun m!24819 () Bool)

(assert (=> b!23135 m!24819))

(assert (=> b!23095 d!13267))

(declare-fun b!23142 () Bool)

(declare-fun e!12048 () Int)

(assert (=> b!23142 (= e!12048 (+ (size!246 (left!687 xs!579)) (size!246 (right!690 xs!579))))))

(declare-fun b!23141 () Bool)

(assert (=> b!23141 (= e!12048 1)))

(declare-fun b!23139 () Bool)

(declare-fun e!12049 () Int)

(assert (=> b!23139 (= e!12049 0)))

(declare-fun b!23140 () Bool)

(assert (=> b!23140 (= e!12049 e!12048)))

(declare-fun c!5430 () Bool)

(assert (=> b!23140 (= c!5430 (is-Single!42 xs!579))))

(declare-fun d!13269 () Bool)

(declare-fun lt!3607 () Int)

(assert (=> d!13269 (>= lt!3607 0)))

(assert (=> d!13269 (= lt!3607 e!12049)))

(declare-fun c!5431 () Bool)

(assert (=> d!13269 (= c!5431 (is-Empty!53 xs!579))))

(assert (=> d!13269 (= (size!246 xs!579) lt!3607)))

(assert (= (and b!23140 c!5430) b!23141))

(assert (= (and b!23140 (not c!5430)) b!23142))

(assert (= (and d!13269 c!5431) b!23139))

(assert (= (and d!13269 (not c!5431)) b!23140))

(declare-fun m!24821 () Bool)

(assert (=> b!23142 m!24821))

(declare-fun m!24823 () Bool)

(assert (=> b!23142 m!24823))

(assert (=> b!23093 d!13269))

(declare-fun d!13271 () Bool)

(declare-fun res!10233 () Bool)

(declare-fun e!12054 () Bool)

(assert (=> d!13271 (=> res!10233 e!12054)))

(assert (=> d!13271 (= res!10233 (not (is-CC!42 xs!572)))))

(assert (=> d!13271 (= (balanced!40 xs!572) e!12054)))

(declare-fun b!23152 () Bool)

(declare-fun res!10231 () Bool)

(declare-fun e!12055 () Bool)

(assert (=> b!23152 (=> (not res!10231) (not e!12055))))

(declare-fun level!35 (Conc!43) Int)

(assert (=> b!23152 (= res!10231 (<= (- (level!35 (left!687 xs!572)) (level!35 (right!690 xs!572))) 1))))

(declare-fun b!23151 () Bool)

(assert (=> b!23151 (= e!12054 e!12055)))

(declare-fun res!10230 () Bool)

(assert (=> b!23151 (=> (not res!10230) (not e!12055))))

(assert (=> b!23151 (= res!10230 (>= (- (level!35 (left!687 xs!572)) (level!35 (right!690 xs!572))) (- 1)))))

(declare-fun b!23153 () Bool)

(declare-fun res!10232 () Bool)

(assert (=> b!23153 (=> (not res!10232) (not e!12055))))

(assert (=> b!23153 (= res!10232 (balanced!40 (left!687 xs!572)))))

(declare-fun b!23154 () Bool)

(assert (=> b!23154 (= e!12055 (balanced!40 (right!690 xs!572)))))

(assert (= (and d!13271 (not res!10233)) b!23151))

(assert (= (and b!23151 res!10230) b!23152))

(assert (= (and b!23152 res!10231) b!23153))

(assert (= (and b!23153 res!10232) b!23154))

(declare-fun m!24825 () Bool)

(assert (=> b!23152 m!24825))

(declare-fun m!24827 () Bool)

(assert (=> b!23152 m!24827))

(assert (=> b!23151 m!24825))

(assert (=> b!23151 m!24827))

(declare-fun m!24829 () Bool)

(assert (=> b!23153 m!24829))

(declare-fun m!24831 () Bool)

(assert (=> b!23154 m!24831))

(assert (=> b!23103 d!13271))

(declare-fun d!13273 () Bool)

(declare-fun res!10237 () Bool)

(declare-fun e!12056 () Bool)

(assert (=> d!13273 (=> res!10237 e!12056)))

(assert (=> d!13273 (= res!10237 (not (is-CC!42 xs!579)))))

(assert (=> d!13273 (= (balanced!40 xs!579) e!12056)))

(declare-fun b!23156 () Bool)

(declare-fun res!10235 () Bool)

(declare-fun e!12057 () Bool)

(assert (=> b!23156 (=> (not res!10235) (not e!12057))))

(assert (=> b!23156 (= res!10235 (<= (- (level!35 (left!687 xs!579)) (level!35 (right!690 xs!579))) 1))))

(declare-fun b!23155 () Bool)

(assert (=> b!23155 (= e!12056 e!12057)))

(declare-fun res!10234 () Bool)

(assert (=> b!23155 (=> (not res!10234) (not e!12057))))

(assert (=> b!23155 (= res!10234 (>= (- (level!35 (left!687 xs!579)) (level!35 (right!690 xs!579))) (- 1)))))

(declare-fun b!23157 () Bool)

(declare-fun res!10236 () Bool)

(assert (=> b!23157 (=> (not res!10236) (not e!12057))))

(assert (=> b!23157 (= res!10236 (balanced!40 (left!687 xs!579)))))

(declare-fun b!23158 () Bool)

(assert (=> b!23158 (= e!12057 (balanced!40 (right!690 xs!579)))))

(assert (= (and d!13273 (not res!10237)) b!23155))

(assert (= (and b!23155 res!10234) b!23156))

(assert (= (and b!23156 res!10235) b!23157))

(assert (= (and b!23157 res!10236) b!23158))

(declare-fun m!24833 () Bool)

(assert (=> b!23156 m!24833))

(declare-fun m!24835 () Bool)

(assert (=> b!23156 m!24835))

(assert (=> b!23155 m!24833))

(assert (=> b!23155 m!24835))

(declare-fun m!24837 () Bool)

(assert (=> b!23157 m!24837))

(declare-fun m!24839 () Bool)

(assert (=> b!23158 m!24839))

(assert (=> b!23101 d!13273))

(declare-fun b!23165 () Bool)

(declare-fun e!12060 () Bool)

(declare-fun tp!5066 () Bool)

(declare-fun tp!5067 () Bool)

(assert (=> b!23165 (= e!12060 (and tp!5066 tp!5067))))

(declare-fun b!23166 () Bool)

(assert (=> b!23166 (= e!12060 tp_is_empty!131)))

(assert (=> b!23099 (= tp!5059 e!12060)))

(assert (= (and b!23099 (is-CC!42 (left!687 xs!579))) b!23165))

(assert (= (and b!23099 (is-Single!42 (left!687 xs!579))) b!23166))

(declare-fun b!23167 () Bool)

(declare-fun e!12061 () Bool)

(declare-fun tp!5068 () Bool)

(declare-fun tp!5069 () Bool)

(assert (=> b!23167 (= e!12061 (and tp!5068 tp!5069))))

(declare-fun b!23168 () Bool)

(assert (=> b!23168 (= e!12061 tp_is_empty!131)))

(assert (=> b!23099 (= tp!5061 e!12061)))

(assert (= (and b!23099 (is-CC!42 (right!690 xs!579))) b!23167))

(assert (= (and b!23099 (is-Single!42 (right!690 xs!579))) b!23168))

(declare-fun b!23169 () Bool)

(declare-fun e!12062 () Bool)

(declare-fun tp!5070 () Bool)

(declare-fun tp!5071 () Bool)

(assert (=> b!23169 (= e!12062 (and tp!5070 tp!5071))))

(declare-fun b!23170 () Bool)

(assert (=> b!23170 (= e!12062 tp_is_empty!131)))

(assert (=> b!23104 (= tp!5058 e!12062)))

(assert (= (and b!23104 (is-CC!42 (left!687 xs!572))) b!23169))

(assert (= (and b!23104 (is-Single!42 (left!687 xs!572))) b!23170))

(declare-fun b!23171 () Bool)

(declare-fun e!12063 () Bool)

(declare-fun tp!5072 () Bool)

(declare-fun tp!5073 () Bool)

(assert (=> b!23171 (= e!12063 (and tp!5072 tp!5073))))

(declare-fun b!23172 () Bool)

(assert (=> b!23172 (= e!12063 tp_is_empty!131)))

(assert (=> b!23104 (= tp!5060 e!12063)))

(assert (= (and b!23104 (is-CC!42 (right!690 xs!572))) b!23171))

(assert (= (and b!23104 (is-Single!42 (right!690 xs!572))) b!23172))

(push 1)

(assert (not b!23154))

(assert (not b!23153))

(assert (not b!23134))

(assert (not b!23169))

(assert (not b!23158))

(assert (not b!23136))

(assert (not b!23135))

(assert (not b!23155))

(assert (not b!23156))

(assert (not b!23138))

(assert (not b!23132))

(assert (not b!23118))

(assert (not b!23142))

(assert (not b!23152))

(assert (not b!23137))

(assert (not b!23131))

(assert (not b!23151))

(assert (not b!23122))

(assert (not b!23157))

(assert (not b!23167))

(assert (not b!23133))

(assert tp_is_empty!131)

(assert (not b!23165))

(assert (not b!23171))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


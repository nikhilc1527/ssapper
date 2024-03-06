; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7082 () Bool)

(assert start!7082)

(declare-fun res!23721 () Bool)

(declare-fun e!27064 () Bool)

(assert (=> start!7082 (=> (not res!23721) (not e!27064))))

(declare-fun e!26455 () (_ BitVec 32))

(declare-datatypes () ((Node!80 (Node!81 (rank!32 Int) (elem!104 (_ BitVec 32)) (nodes!32 Heap!26))) (Heap!26 (Empty!128) (Nodes!25 (head!657 Node!80) (tail!681 Heap!26)))))

(declare-fun h!364 () Heap!26)

(declare-fun res!23474 () Heap!26)

(declare-fun insertNode!0 (Node!80 Heap!26) Heap!26)

(assert (=> start!7082 (= res!23721 (= res!23474 (insertNode!0 (Node!81 0 e!26455 Empty!128) h!364)))))

(assert (=> start!7082 e!27064))

(assert (=> start!7082 true))

(declare-fun b!52144 () Bool)

(declare-fun heapContent!0 (Heap!26) (Set (_ BitVec 32)))

(assert (=> b!52144 (= e!27064 (not (= (heapContent!0 res!23474) (union (heapContent!0 h!364) (insert e!26455 (as emptyset (Set (_ BitVec 32))))))))))

(assert (= (and start!7082 res!23721) b!52144))

(declare-fun m!56057 () Bool)

(assert (=> start!7082 m!56057))

(declare-fun m!56059 () Bool)

(assert (=> b!52144 m!56059))

(declare-fun m!56061 () Bool)

(assert (=> b!52144 m!56061))

(declare-fun m!56063 () Bool)

(assert (=> b!52144 m!56063))

(push 1)

(assert (not start!7082))

(assert (not b!52144))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!52156 () Bool)

(declare-fun e!27069 () Heap!26)

(declare-fun link!0 (Node!80 Node!80) Node!80)

(assert (=> b!52156 (= e!27069 (insertNode!0 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364)) (tail!681 h!364)))))

(declare-fun d!44128 () Bool)

(declare-fun lt!9137 () Heap!26)

(declare-fun nodeContent!0 (Node!80) (Set (_ BitVec 32)))

(assert (=> d!44128 (= (heapContent!0 lt!9137) (union (nodeContent!0 (Node!81 0 e!26455 Empty!128)) (heapContent!0 h!364)))))

(declare-fun e!27070 () Heap!26)

(assert (=> d!44128 (= lt!9137 e!27070)))

(declare-fun c!11264 () Bool)

(assert (=> d!44128 (= c!11264 (is-Empty!128 h!364))))

(assert (=> d!44128 (= (insertNode!0 (Node!81 0 e!26455 Empty!128) h!364) lt!9137)))

(declare-fun b!52153 () Bool)

(assert (=> b!52153 (= e!27070 (Nodes!25 (Node!81 0 e!26455 Empty!128) Empty!128))))

(declare-fun b!52155 () Bool)

(assert (=> b!52155 (= e!27069 (Nodes!25 (Node!81 0 e!26455 Empty!128) h!364))))

(declare-fun b!52154 () Bool)

(assert (=> b!52154 (= e!27070 e!27069)))

(declare-fun c!11265 () Bool)

(assert (=> b!52154 (= c!11265 (< (rank!32 (Node!81 0 e!26455 Empty!128)) (rank!32 (head!657 h!364))))))

(assert (= (and b!52154 c!11265) b!52155))

(assert (= (and b!52154 (not c!11265)) b!52156))

(assert (= (and d!44128 c!11264) b!52153))

(assert (= (and d!44128 (not c!11264)) b!52154))

(declare-fun m!56065 () Bool)

(assert (=> b!52156 m!56065))

(assert (=> b!52156 m!56065))

(declare-fun m!56067 () Bool)

(assert (=> b!52156 m!56067))

(declare-fun m!56069 () Bool)

(assert (=> d!44128 m!56069))

(declare-fun m!56071 () Bool)

(assert (=> d!44128 m!56071))

(assert (=> d!44128 m!56061))

(assert (=> start!7082 d!44128))

(declare-fun d!44130 () Bool)

(declare-fun c!11268 () Bool)

(assert (=> d!44130 (= c!11268 (is-Empty!128 res!23474))))

(declare-fun e!27073 () (Set (_ BitVec 32)))

(assert (=> d!44130 (= (heapContent!0 res!23474) e!27073)))

(declare-fun b!52161 () Bool)

(assert (=> b!52161 (= e!27073 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52162 () Bool)

(assert (=> b!52162 (= e!27073 (union (nodeContent!0 (head!657 res!23474)) (heapContent!0 (tail!681 res!23474))))))

(assert (= (and d!44130 c!11268) b!52161))

(assert (= (and d!44130 (not c!11268)) b!52162))

(declare-fun m!56073 () Bool)

(assert (=> b!52162 m!56073))

(declare-fun m!56075 () Bool)

(assert (=> b!52162 m!56075))

(assert (=> b!52144 d!44130))

(declare-fun d!44132 () Bool)

(declare-fun c!11269 () Bool)

(assert (=> d!44132 (= c!11269 (is-Empty!128 h!364))))

(declare-fun e!27074 () (Set (_ BitVec 32)))

(assert (=> d!44132 (= (heapContent!0 h!364) e!27074)))

(declare-fun b!52163 () Bool)

(assert (=> b!52163 (= e!27074 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52164 () Bool)

(assert (=> b!52164 (= e!27074 (union (nodeContent!0 (head!657 h!364)) (heapContent!0 (tail!681 h!364))))))

(assert (= (and d!44132 c!11269) b!52163))

(assert (= (and d!44132 (not c!11269)) b!52164))

(declare-fun m!56077 () Bool)

(assert (=> b!52164 m!56077))

(declare-fun m!56079 () Bool)

(assert (=> b!52164 m!56079))

(assert (=> b!52144 d!44132))

(push 1)

(assert (not b!52156))

(assert (not d!44128))

(assert (not b!52164))

(assert (not b!52162))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!52168 () Bool)

(declare-fun e!27075 () Heap!26)

(assert (=> b!52168 (= e!27075 (insertNode!0 (link!0 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364)) (head!657 (tail!681 h!364))) (tail!681 (tail!681 h!364))))))

(declare-fun d!44134 () Bool)

(declare-fun lt!9138 () Heap!26)

(assert (=> d!44134 (= (heapContent!0 lt!9138) (union (nodeContent!0 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364))) (heapContent!0 (tail!681 h!364))))))

(declare-fun e!27076 () Heap!26)

(assert (=> d!44134 (= lt!9138 e!27076)))

(declare-fun c!11270 () Bool)

(assert (=> d!44134 (= c!11270 (is-Empty!128 (tail!681 h!364)))))

(assert (=> d!44134 (= (insertNode!0 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364)) (tail!681 h!364)) lt!9138)))

(declare-fun b!52165 () Bool)

(assert (=> b!52165 (= e!27076 (Nodes!25 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364)) Empty!128))))

(declare-fun b!52167 () Bool)

(assert (=> b!52167 (= e!27075 (Nodes!25 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364)) (tail!681 h!364)))))

(declare-fun b!52166 () Bool)

(assert (=> b!52166 (= e!27076 e!27075)))

(declare-fun c!11271 () Bool)

(assert (=> b!52166 (= c!11271 (< (rank!32 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364))) (rank!32 (head!657 (tail!681 h!364)))))))

(assert (= (and b!52166 c!11271) b!52167))

(assert (= (and b!52166 (not c!11271)) b!52168))

(assert (= (and d!44134 c!11270) b!52165))

(assert (= (and d!44134 (not c!11270)) b!52166))

(assert (=> b!52168 m!56065))

(declare-fun m!56081 () Bool)

(assert (=> b!52168 m!56081))

(assert (=> b!52168 m!56081))

(declare-fun m!56083 () Bool)

(assert (=> b!52168 m!56083))

(declare-fun m!56085 () Bool)

(assert (=> d!44134 m!56085))

(assert (=> d!44134 m!56065))

(declare-fun m!56087 () Bool)

(assert (=> d!44134 m!56087))

(assert (=> d!44134 m!56079))

(assert (=> b!52156 d!44134))

(declare-fun d!44136 () Bool)

(assert (=> d!44136 (= (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364)) (ite (bvsle (elem!104 (Node!81 0 e!26455 Empty!128)) (elem!104 (head!657 h!364))) (Node!81 (+ (rank!32 (Node!81 0 e!26455 Empty!128)) 1) (elem!104 (Node!81 0 e!26455 Empty!128)) (Nodes!25 (head!657 h!364) (nodes!32 (Node!81 0 e!26455 Empty!128)))) (Node!81 (+ (rank!32 (Node!81 0 e!26455 Empty!128)) 1) (elem!104 (head!657 h!364)) (Nodes!25 (Node!81 0 e!26455 Empty!128) (nodes!32 (head!657 h!364))))))))

(assert (=> b!52156 d!44136))

(declare-fun d!44138 () Bool)

(declare-fun c!11272 () Bool)

(assert (=> d!44138 (= c!11272 (is-Empty!128 lt!9137))))

(declare-fun e!27077 () (Set (_ BitVec 32)))

(assert (=> d!44138 (= (heapContent!0 lt!9137) e!27077)))

(declare-fun b!52169 () Bool)

(assert (=> b!52169 (= e!27077 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52170 () Bool)

(assert (=> b!52170 (= e!27077 (union (nodeContent!0 (head!657 lt!9137)) (heapContent!0 (tail!681 lt!9137))))))

(assert (= (and d!44138 c!11272) b!52169))

(assert (= (and d!44138 (not c!11272)) b!52170))

(declare-fun m!56089 () Bool)

(assert (=> b!52170 m!56089))

(declare-fun m!56091 () Bool)

(assert (=> b!52170 m!56091))

(assert (=> d!44128 d!44138))

(declare-fun d!44140 () Bool)

(assert (=> d!44140 (= (nodeContent!0 (Node!81 0 e!26455 Empty!128)) (union (insert (elem!104 (Node!81 0 e!26455 Empty!128)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!32 (Node!81 0 e!26455 Empty!128)))))))

(declare-fun bs!23812 () Bool)

(assert (= bs!23812 d!44140))

(declare-fun m!56093 () Bool)

(assert (=> bs!23812 m!56093))

(declare-fun m!56095 () Bool)

(assert (=> bs!23812 m!56095))

(assert (=> d!44128 d!44140))

(assert (=> d!44128 d!44132))

(declare-fun d!44142 () Bool)

(assert (=> d!44142 (= (nodeContent!0 (head!657 h!364)) (union (insert (elem!104 (head!657 h!364)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!32 (head!657 h!364)))))))

(declare-fun bs!23813 () Bool)

(assert (= bs!23813 d!44142))

(declare-fun m!56097 () Bool)

(assert (=> bs!23813 m!56097))

(declare-fun m!56099 () Bool)

(assert (=> bs!23813 m!56099))

(assert (=> b!52164 d!44142))

(declare-fun d!44144 () Bool)

(declare-fun c!11273 () Bool)

(assert (=> d!44144 (= c!11273 (is-Empty!128 (tail!681 h!364)))))

(declare-fun e!27078 () (Set (_ BitVec 32)))

(assert (=> d!44144 (= (heapContent!0 (tail!681 h!364)) e!27078)))

(declare-fun b!52171 () Bool)

(assert (=> b!52171 (= e!27078 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52172 () Bool)

(assert (=> b!52172 (= e!27078 (union (nodeContent!0 (head!657 (tail!681 h!364))) (heapContent!0 (tail!681 (tail!681 h!364)))))))

(assert (= (and d!44144 c!11273) b!52171))

(assert (= (and d!44144 (not c!11273)) b!52172))

(declare-fun m!56101 () Bool)

(assert (=> b!52172 m!56101))

(declare-fun m!56103 () Bool)

(assert (=> b!52172 m!56103))

(assert (=> b!52164 d!44144))

(declare-fun d!44146 () Bool)

(assert (=> d!44146 (= (nodeContent!0 (head!657 res!23474)) (union (insert (elem!104 (head!657 res!23474)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!32 (head!657 res!23474)))))))

(declare-fun bs!23814 () Bool)

(assert (= bs!23814 d!44146))

(declare-fun m!56105 () Bool)

(assert (=> bs!23814 m!56105))

(declare-fun m!56107 () Bool)

(assert (=> bs!23814 m!56107))

(assert (=> b!52162 d!44146))

(declare-fun d!44148 () Bool)

(declare-fun c!11274 () Bool)

(assert (=> d!44148 (= c!11274 (is-Empty!128 (tail!681 res!23474)))))

(declare-fun e!27079 () (Set (_ BitVec 32)))

(assert (=> d!44148 (= (heapContent!0 (tail!681 res!23474)) e!27079)))

(declare-fun b!52173 () Bool)

(assert (=> b!52173 (= e!27079 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52174 () Bool)

(assert (=> b!52174 (= e!27079 (union (nodeContent!0 (head!657 (tail!681 res!23474))) (heapContent!0 (tail!681 (tail!681 res!23474)))))))

(assert (= (and d!44148 c!11274) b!52173))

(assert (= (and d!44148 (not c!11274)) b!52174))

(declare-fun m!56109 () Bool)

(assert (=> b!52174 m!56109))

(declare-fun m!56111 () Bool)

(assert (=> b!52174 m!56111))

(assert (=> b!52162 d!44148))

(push 1)

(assert (not b!52168))

(assert (not d!44146))

(assert (not d!44142))

(assert (not d!44134))

(assert (not b!52172))

(assert (not d!44140))

(assert (not b!52170))

(assert (not b!52174))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44150 () Bool)

(declare-fun c!11275 () Bool)

(assert (=> d!44150 (= c!11275 (is-Empty!128 lt!9138))))

(declare-fun e!27080 () (Set (_ BitVec 32)))

(assert (=> d!44150 (= (heapContent!0 lt!9138) e!27080)))

(declare-fun b!52175 () Bool)

(assert (=> b!52175 (= e!27080 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52176 () Bool)

(assert (=> b!52176 (= e!27080 (union (nodeContent!0 (head!657 lt!9138)) (heapContent!0 (tail!681 lt!9138))))))

(assert (= (and d!44150 c!11275) b!52175))

(assert (= (and d!44150 (not c!11275)) b!52176))

(declare-fun m!56113 () Bool)

(assert (=> b!52176 m!56113))

(declare-fun m!56115 () Bool)

(assert (=> b!52176 m!56115))

(assert (=> d!44134 d!44150))

(declare-fun d!44152 () Bool)

(assert (=> d!44152 (= (nodeContent!0 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364))) (union (insert (elem!104 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!32 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364))))))))

(declare-fun bs!23815 () Bool)

(assert (= bs!23815 d!44152))

(declare-fun m!56117 () Bool)

(assert (=> bs!23815 m!56117))

(declare-fun m!56119 () Bool)

(assert (=> bs!23815 m!56119))

(assert (=> d!44134 d!44152))

(assert (=> d!44134 d!44144))

(declare-fun d!44154 () Bool)

(declare-fun c!11276 () Bool)

(assert (=> d!44154 (= c!11276 (is-Empty!128 (nodes!32 (head!657 res!23474))))))

(declare-fun e!27081 () (Set (_ BitVec 32)))

(assert (=> d!44154 (= (heapContent!0 (nodes!32 (head!657 res!23474))) e!27081)))

(declare-fun b!52177 () Bool)

(assert (=> b!52177 (= e!27081 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52178 () Bool)

(assert (=> b!52178 (= e!27081 (union (nodeContent!0 (head!657 (nodes!32 (head!657 res!23474)))) (heapContent!0 (tail!681 (nodes!32 (head!657 res!23474))))))))

(assert (= (and d!44154 c!11276) b!52177))

(assert (= (and d!44154 (not c!11276)) b!52178))

(declare-fun m!56121 () Bool)

(assert (=> b!52178 m!56121))

(declare-fun m!56123 () Bool)

(assert (=> b!52178 m!56123))

(assert (=> d!44146 d!44154))

(declare-fun d!44156 () Bool)

(declare-fun c!11277 () Bool)

(assert (=> d!44156 (= c!11277 (is-Empty!128 (nodes!32 (head!657 h!364))))))

(declare-fun e!27082 () (Set (_ BitVec 32)))

(assert (=> d!44156 (= (heapContent!0 (nodes!32 (head!657 h!364))) e!27082)))

(declare-fun b!52179 () Bool)

(assert (=> b!52179 (= e!27082 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52180 () Bool)

(assert (=> b!52180 (= e!27082 (union (nodeContent!0 (head!657 (nodes!32 (head!657 h!364)))) (heapContent!0 (tail!681 (nodes!32 (head!657 h!364))))))))

(assert (= (and d!44156 c!11277) b!52179))

(assert (= (and d!44156 (not c!11277)) b!52180))

(declare-fun m!56125 () Bool)

(assert (=> b!52180 m!56125))

(declare-fun m!56127 () Bool)

(assert (=> b!52180 m!56127))

(assert (=> d!44142 d!44156))

(declare-fun d!44158 () Bool)

(assert (=> d!44158 (= (nodeContent!0 (head!657 lt!9137)) (union (insert (elem!104 (head!657 lt!9137)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!32 (head!657 lt!9137)))))))

(declare-fun bs!23816 () Bool)

(assert (= bs!23816 d!44158))

(declare-fun m!56129 () Bool)

(assert (=> bs!23816 m!56129))

(declare-fun m!56131 () Bool)

(assert (=> bs!23816 m!56131))

(assert (=> b!52170 d!44158))

(declare-fun d!44160 () Bool)

(declare-fun c!11278 () Bool)

(assert (=> d!44160 (= c!11278 (is-Empty!128 (tail!681 lt!9137)))))

(declare-fun e!27083 () (Set (_ BitVec 32)))

(assert (=> d!44160 (= (heapContent!0 (tail!681 lt!9137)) e!27083)))

(declare-fun b!52181 () Bool)

(assert (=> b!52181 (= e!27083 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52182 () Bool)

(assert (=> b!52182 (= e!27083 (union (nodeContent!0 (head!657 (tail!681 lt!9137))) (heapContent!0 (tail!681 (tail!681 lt!9137)))))))

(assert (= (and d!44160 c!11278) b!52181))

(assert (= (and d!44160 (not c!11278)) b!52182))

(declare-fun m!56133 () Bool)

(assert (=> b!52182 m!56133))

(declare-fun m!56135 () Bool)

(assert (=> b!52182 m!56135))

(assert (=> b!52170 d!44160))

(declare-fun b!52186 () Bool)

(declare-fun e!27084 () Heap!26)

(assert (=> b!52186 (= e!27084 (insertNode!0 (link!0 (link!0 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364)) (head!657 (tail!681 h!364))) (head!657 (tail!681 (tail!681 h!364)))) (tail!681 (tail!681 (tail!681 h!364)))))))

(declare-fun d!44162 () Bool)

(declare-fun lt!9139 () Heap!26)

(assert (=> d!44162 (= (heapContent!0 lt!9139) (union (nodeContent!0 (link!0 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364)) (head!657 (tail!681 h!364)))) (heapContent!0 (tail!681 (tail!681 h!364)))))))

(declare-fun e!27085 () Heap!26)

(assert (=> d!44162 (= lt!9139 e!27085)))

(declare-fun c!11279 () Bool)

(assert (=> d!44162 (= c!11279 (is-Empty!128 (tail!681 (tail!681 h!364))))))

(assert (=> d!44162 (= (insertNode!0 (link!0 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364)) (head!657 (tail!681 h!364))) (tail!681 (tail!681 h!364))) lt!9139)))

(declare-fun b!52183 () Bool)

(assert (=> b!52183 (= e!27085 (Nodes!25 (link!0 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364)) (head!657 (tail!681 h!364))) Empty!128))))

(declare-fun b!52185 () Bool)

(assert (=> b!52185 (= e!27084 (Nodes!25 (link!0 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364)) (head!657 (tail!681 h!364))) (tail!681 (tail!681 h!364))))))

(declare-fun b!52184 () Bool)

(assert (=> b!52184 (= e!27085 e!27084)))

(declare-fun c!11280 () Bool)

(assert (=> b!52184 (= c!11280 (< (rank!32 (link!0 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364)) (head!657 (tail!681 h!364)))) (rank!32 (head!657 (tail!681 (tail!681 h!364))))))))

(assert (= (and b!52184 c!11280) b!52185))

(assert (= (and b!52184 (not c!11280)) b!52186))

(assert (= (and d!44162 c!11279) b!52183))

(assert (= (and d!44162 (not c!11279)) b!52184))

(assert (=> b!52186 m!56081))

(declare-fun m!56137 () Bool)

(assert (=> b!52186 m!56137))

(assert (=> b!52186 m!56137))

(declare-fun m!56139 () Bool)

(assert (=> b!52186 m!56139))

(declare-fun m!56141 () Bool)

(assert (=> d!44162 m!56141))

(assert (=> d!44162 m!56081))

(declare-fun m!56143 () Bool)

(assert (=> d!44162 m!56143))

(assert (=> d!44162 m!56103))

(assert (=> b!52168 d!44162))

(declare-fun d!44164 () Bool)

(assert (=> d!44164 (= (link!0 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364)) (head!657 (tail!681 h!364))) (ite (bvsle (elem!104 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364))) (elem!104 (head!657 (tail!681 h!364)))) (Node!81 (+ (rank!32 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364))) 1) (elem!104 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364))) (Nodes!25 (head!657 (tail!681 h!364)) (nodes!32 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364))))) (Node!81 (+ (rank!32 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364))) 1) (elem!104 (head!657 (tail!681 h!364))) (Nodes!25 (link!0 (Node!81 0 e!26455 Empty!128) (head!657 h!364)) (nodes!32 (head!657 (tail!681 h!364)))))))))

(assert (=> b!52168 d!44164))

(declare-fun d!44166 () Bool)

(declare-fun c!11281 () Bool)

(assert (=> d!44166 (= c!11281 (is-Empty!128 (nodes!32 (Node!81 0 e!26455 Empty!128))))))

(declare-fun e!27086 () (Set (_ BitVec 32)))

(assert (=> d!44166 (= (heapContent!0 (nodes!32 (Node!81 0 e!26455 Empty!128))) e!27086)))

(declare-fun b!52187 () Bool)

(assert (=> b!52187 (= e!27086 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52188 () Bool)

(assert (=> b!52188 (= e!27086 (union (nodeContent!0 (head!657 (nodes!32 (Node!81 0 e!26455 Empty!128)))) (heapContent!0 (tail!681 (nodes!32 (Node!81 0 e!26455 Empty!128))))))))

(assert (= (and d!44166 c!11281) b!52187))

(assert (= (and d!44166 (not c!11281)) b!52188))

(declare-fun m!56145 () Bool)

(assert (=> b!52188 m!56145))

(declare-fun m!56147 () Bool)

(assert (=> b!52188 m!56147))

(assert (=> d!44140 d!44166))

(declare-fun d!44168 () Bool)

(assert (=> d!44168 (= (nodeContent!0 (head!657 (tail!681 res!23474))) (union (insert (elem!104 (head!657 (tail!681 res!23474))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!32 (head!657 (tail!681 res!23474))))))))

(declare-fun bs!23817 () Bool)

(assert (= bs!23817 d!44168))

(declare-fun m!56149 () Bool)

(assert (=> bs!23817 m!56149))

(declare-fun m!56151 () Bool)

(assert (=> bs!23817 m!56151))

(assert (=> b!52174 d!44168))

(declare-fun d!44170 () Bool)

(declare-fun c!11282 () Bool)

(assert (=> d!44170 (= c!11282 (is-Empty!128 (tail!681 (tail!681 res!23474))))))

(declare-fun e!27087 () (Set (_ BitVec 32)))

(assert (=> d!44170 (= (heapContent!0 (tail!681 (tail!681 res!23474))) e!27087)))

(declare-fun b!52189 () Bool)

(assert (=> b!52189 (= e!27087 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52190 () Bool)

(assert (=> b!52190 (= e!27087 (union (nodeContent!0 (head!657 (tail!681 (tail!681 res!23474)))) (heapContent!0 (tail!681 (tail!681 (tail!681 res!23474))))))))

(assert (= (and d!44170 c!11282) b!52189))

(assert (= (and d!44170 (not c!11282)) b!52190))

(declare-fun m!56153 () Bool)

(assert (=> b!52190 m!56153))

(declare-fun m!56155 () Bool)

(assert (=> b!52190 m!56155))

(assert (=> b!52174 d!44170))

(declare-fun d!44172 () Bool)

(assert (=> d!44172 (= (nodeContent!0 (head!657 (tail!681 h!364))) (union (insert (elem!104 (head!657 (tail!681 h!364))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!32 (head!657 (tail!681 h!364))))))))

(declare-fun bs!23818 () Bool)

(assert (= bs!23818 d!44172))

(declare-fun m!56157 () Bool)

(assert (=> bs!23818 m!56157))

(declare-fun m!56159 () Bool)

(assert (=> bs!23818 m!56159))

(assert (=> b!52172 d!44172))

(declare-fun d!44174 () Bool)

(declare-fun c!11283 () Bool)

(assert (=> d!44174 (= c!11283 (is-Empty!128 (tail!681 (tail!681 h!364))))))

(declare-fun e!27088 () (Set (_ BitVec 32)))

(assert (=> d!44174 (= (heapContent!0 (tail!681 (tail!681 h!364))) e!27088)))

(declare-fun b!52191 () Bool)

(assert (=> b!52191 (= e!27088 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52192 () Bool)

(assert (=> b!52192 (= e!27088 (union (nodeContent!0 (head!657 (tail!681 (tail!681 h!364)))) (heapContent!0 (tail!681 (tail!681 (tail!681 h!364))))))))

(assert (= (and d!44174 c!11283) b!52191))

(assert (= (and d!44174 (not c!11283)) b!52192))

(declare-fun m!56161 () Bool)

(assert (=> b!52192 m!56161))

(declare-fun m!56163 () Bool)

(assert (=> b!52192 m!56163))

(assert (=> b!52172 d!44174))

(push 1)

(assert (not b!52190))

(assert (not b!52178))

(assert (not d!44168))

(assert (not d!44172))

(assert (not d!44162))

(assert (not b!52182))

(assert (not b!52192))

(assert (not b!52188))

(assert (not b!52180))

(assert (not b!52176))

(assert (not d!44152))

(assert (not d!44158))

(assert (not b!52186))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


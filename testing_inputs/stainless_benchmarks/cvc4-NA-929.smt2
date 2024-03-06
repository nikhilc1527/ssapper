; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7050 () Bool)

(assert start!7050)

(declare-fun res!23672 () Bool)

(declare-fun e!26993 () Bool)

(assert (=> start!7050 (=> (not res!23672) (not e!26993))))

(declare-datatypes () ((Node!68 (Node!69 (rank!26 Int) (elem!98 (_ BitVec 32)) (nodes!26 Heap!20))) (Heap!20 (Empty!122) (Nodes!19 (head!651 Node!68) (tail!675 Heap!20)))))

(declare-fun h!391 () Heap!20)

(assert (=> start!7050 (= res!23672 (not (is-Empty!122 h!391)))))

(assert (=> start!7050 e!26993))

(assert (=> start!7050 true))

(declare-fun b!51991 () Bool)

(declare-fun res!23673 () Bool)

(assert (=> b!51991 (=> (not res!23673) (not e!26993))))

(declare-datatypes () ((OptInt!10 (Some!234 (value!3246 (_ BitVec 32))) (None!235))))

(declare-fun findMin!0 (Heap!20) OptInt!10)

(assert (=> b!51991 (= res!23673 (is-None!235 (findMin!0 (tail!675 h!391))))))

(declare-fun b!51992 () Bool)

(declare-fun res!23674 () Bool)

(assert (=> b!51992 (=> (not res!23674) (not e!26993))))

(declare-fun x$3!125 () OptInt!10)

(assert (=> b!51992 (= res!23674 (and (= x$3!125 (Some!234 (elem!98 (head!651 h!391)))) (not (is-None!235 x$3!125))))))

(declare-fun b!51993 () Bool)

(declare-fun heapContent!0 (Heap!20) (Set (_ BitVec 32)))

(assert (=> b!51993 (= e!26993 (not (member (value!3246 x$3!125) (heapContent!0 h!391))))))

(assert (= (and start!7050 res!23672) b!51991))

(assert (= (and b!51991 res!23673) b!51992))

(assert (= (and b!51992 res!23674) b!51993))

(declare-fun m!55975 () Bool)

(assert (=> b!51991 m!55975))

(declare-fun m!55977 () Bool)

(assert (=> b!51993 m!55977))

(declare-fun m!55979 () Bool)

(assert (=> b!51993 m!55979))

(push 1)

(assert (not b!51991))

(assert (not b!51993))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!52010 () Bool)

(declare-fun e!27003 () OptInt!10)

(assert (=> b!52010 (= e!27003 None!235)))

(declare-fun d!44098 () Bool)

(declare-fun e!27005 () Bool)

(assert (=> d!44098 e!27005))

(declare-fun c!11216 () Bool)

(declare-fun lt!9123 () OptInt!10)

(assert (=> d!44098 (= c!11216 (is-None!235 lt!9123))))

(assert (=> d!44098 (= lt!9123 e!27003)))

(declare-fun c!11218 () Bool)

(assert (=> d!44098 (= c!11218 (is-Empty!122 (tail!675 h!391)))))

(assert (=> d!44098 (= (findMin!0 (tail!675 h!391)) lt!9123)))

(declare-fun b!52011 () Bool)

(declare-fun e!27002 () (_ BitVec 32))

(assert (=> b!52011 (= e!27002 (value!3246 (findMin!0 (tail!675 (tail!675 h!391)))))))

(declare-fun b!52012 () Bool)

(declare-fun isEmpty!6 (Heap!20) Bool)

(assert (=> b!52012 (= e!27005 (isEmpty!6 (tail!675 h!391)))))

(declare-fun b!52013 () Bool)

(declare-fun e!27004 () OptInt!10)

(assert (=> b!52013 (= e!27004 (Some!234 (elem!98 (head!651 (tail!675 h!391)))))))

(declare-fun b!52014 () Bool)

(assert (=> b!52014 (= e!27003 e!27004)))

(declare-fun c!11217 () Bool)

(assert (=> b!52014 (= c!11217 (is-None!235 (findMin!0 (tail!675 (tail!675 h!391)))))))

(declare-fun b!52015 () Bool)

(assert (=> b!52015 (= e!27005 (member (value!3246 lt!9123) (heapContent!0 (tail!675 h!391))))))

(declare-fun b!52016 () Bool)

(assert (=> b!52016 (= e!27004 (Some!234 e!27002))))

(declare-fun c!11215 () Bool)

(assert (=> b!52016 (= c!11215 (bvslt (elem!98 (head!651 (tail!675 h!391))) (value!3246 (findMin!0 (tail!675 (tail!675 h!391))))))))

(declare-fun b!52017 () Bool)

(assert (=> b!52017 (= e!27002 (elem!98 (head!651 (tail!675 h!391))))))

(assert (= (and b!52016 c!11215) b!52017))

(assert (= (and b!52016 (not c!11215)) b!52011))

(assert (= (and b!52014 c!11217) b!52013))

(assert (= (and b!52014 (not c!11217)) b!52016))

(assert (= (and d!44098 c!11218) b!52010))

(assert (= (and d!44098 (not c!11218)) b!52014))

(assert (= (and d!44098 c!11216) b!52012))

(assert (= (and d!44098 (not c!11216)) b!52015))

(declare-fun m!55981 () Bool)

(assert (=> b!52011 m!55981))

(assert (=> b!52016 m!55981))

(declare-fun m!55983 () Bool)

(assert (=> b!52015 m!55983))

(declare-fun m!55985 () Bool)

(assert (=> b!52015 m!55985))

(declare-fun m!55987 () Bool)

(assert (=> b!52012 m!55987))

(assert (=> b!52014 m!55981))

(assert (=> b!51991 d!44098))

(declare-fun d!44100 () Bool)

(declare-fun c!11221 () Bool)

(assert (=> d!44100 (= c!11221 (is-Empty!122 h!391))))

(declare-fun e!27008 () (Set (_ BitVec 32)))

(assert (=> d!44100 (= (heapContent!0 h!391) e!27008)))

(declare-fun b!52022 () Bool)

(assert (=> b!52022 (= e!27008 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52023 () Bool)

(declare-fun nodeContent!0 (Node!68) (Set (_ BitVec 32)))

(assert (=> b!52023 (= e!27008 (union (nodeContent!0 (head!651 h!391)) (heapContent!0 (tail!675 h!391))))))

(assert (= (and d!44100 c!11221) b!52022))

(assert (= (and d!44100 (not c!11221)) b!52023))

(declare-fun m!55989 () Bool)

(assert (=> b!52023 m!55989))

(assert (=> b!52023 m!55983))

(assert (=> b!51993 d!44100))

(push 1)

(assert (not b!52014))

(assert (not b!52011))

(assert (not b!52012))

(assert (not b!52023))

(assert (not b!52015))

(assert (not b!52016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44102 () Bool)

(declare-fun c!11222 () Bool)

(assert (=> d!44102 (= c!11222 (is-Empty!122 (tail!675 h!391)))))

(declare-fun e!27009 () (Set (_ BitVec 32)))

(assert (=> d!44102 (= (heapContent!0 (tail!675 h!391)) e!27009)))

(declare-fun b!52024 () Bool)

(assert (=> b!52024 (= e!27009 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52025 () Bool)

(assert (=> b!52025 (= e!27009 (union (nodeContent!0 (head!651 (tail!675 h!391))) (heapContent!0 (tail!675 (tail!675 h!391)))))))

(assert (= (and d!44102 c!11222) b!52024))

(assert (= (and d!44102 (not c!11222)) b!52025))

(declare-fun m!55991 () Bool)

(assert (=> b!52025 m!55991))

(declare-fun m!55993 () Bool)

(assert (=> b!52025 m!55993))

(assert (=> b!52015 d!44102))

(declare-fun d!44104 () Bool)

(assert (=> d!44104 (= (nodeContent!0 (head!651 h!391)) (union (insert (elem!98 (head!651 h!391)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!26 (head!651 h!391)))))))

(declare-fun bs!23801 () Bool)

(assert (= bs!23801 d!44104))

(declare-fun m!55995 () Bool)

(assert (=> bs!23801 m!55995))

(declare-fun m!55997 () Bool)

(assert (=> bs!23801 m!55997))

(assert (=> b!52023 d!44104))

(assert (=> b!52023 d!44102))

(declare-fun b!52026 () Bool)

(declare-fun e!27011 () OptInt!10)

(assert (=> b!52026 (= e!27011 None!235)))

(declare-fun d!44106 () Bool)

(declare-fun e!27013 () Bool)

(assert (=> d!44106 e!27013))

(declare-fun c!11224 () Bool)

(declare-fun lt!9124 () OptInt!10)

(assert (=> d!44106 (= c!11224 (is-None!235 lt!9124))))

(assert (=> d!44106 (= lt!9124 e!27011)))

(declare-fun c!11226 () Bool)

(assert (=> d!44106 (= c!11226 (is-Empty!122 (tail!675 (tail!675 h!391))))))

(assert (=> d!44106 (= (findMin!0 (tail!675 (tail!675 h!391))) lt!9124)))

(declare-fun b!52027 () Bool)

(declare-fun e!27010 () (_ BitVec 32))

(assert (=> b!52027 (= e!27010 (value!3246 (findMin!0 (tail!675 (tail!675 (tail!675 h!391))))))))

(declare-fun b!52028 () Bool)

(assert (=> b!52028 (= e!27013 (isEmpty!6 (tail!675 (tail!675 h!391))))))

(declare-fun b!52029 () Bool)

(declare-fun e!27012 () OptInt!10)

(assert (=> b!52029 (= e!27012 (Some!234 (elem!98 (head!651 (tail!675 (tail!675 h!391))))))))

(declare-fun b!52030 () Bool)

(assert (=> b!52030 (= e!27011 e!27012)))

(declare-fun c!11225 () Bool)

(assert (=> b!52030 (= c!11225 (is-None!235 (findMin!0 (tail!675 (tail!675 (tail!675 h!391))))))))

(declare-fun b!52031 () Bool)

(assert (=> b!52031 (= e!27013 (member (value!3246 lt!9124) (heapContent!0 (tail!675 (tail!675 h!391)))))))

(declare-fun b!52032 () Bool)

(assert (=> b!52032 (= e!27012 (Some!234 e!27010))))

(declare-fun c!11223 () Bool)

(assert (=> b!52032 (= c!11223 (bvslt (elem!98 (head!651 (tail!675 (tail!675 h!391)))) (value!3246 (findMin!0 (tail!675 (tail!675 (tail!675 h!391)))))))))

(declare-fun b!52033 () Bool)

(assert (=> b!52033 (= e!27010 (elem!98 (head!651 (tail!675 (tail!675 h!391)))))))

(assert (= (and b!52032 c!11223) b!52033))

(assert (= (and b!52032 (not c!11223)) b!52027))

(assert (= (and b!52030 c!11225) b!52029))

(assert (= (and b!52030 (not c!11225)) b!52032))

(assert (= (and d!44106 c!11226) b!52026))

(assert (= (and d!44106 (not c!11226)) b!52030))

(assert (= (and d!44106 c!11224) b!52028))

(assert (= (and d!44106 (not c!11224)) b!52031))

(declare-fun m!55999 () Bool)

(assert (=> b!52027 m!55999))

(assert (=> b!52032 m!55999))

(assert (=> b!52031 m!55993))

(declare-fun m!56001 () Bool)

(assert (=> b!52031 m!56001))

(declare-fun m!56003 () Bool)

(assert (=> b!52028 m!56003))

(assert (=> b!52030 m!55999))

(assert (=> b!52011 d!44106))

(declare-fun d!44108 () Bool)

(declare-fun lt!9127 () Bool)

(assert (=> d!44108 (= lt!9127 (= (heapContent!0 (tail!675 h!391)) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!44108 (= lt!9127 (= (tail!675 h!391) Empty!122))))

(assert (=> d!44108 (= (isEmpty!6 (tail!675 h!391)) lt!9127)))

(declare-fun bs!23802 () Bool)

(assert (= bs!23802 d!44108))

(assert (=> bs!23802 m!55983))

(assert (=> b!52012 d!44108))

(assert (=> b!52016 d!44106))

(assert (=> b!52014 d!44106))

(push 1)

(assert (not d!44104))

(assert (not b!52031))

(assert (not b!52028))

(assert (not d!44108))

(assert (not b!52030))

(assert (not b!52032))

(assert (not b!52025))

(assert (not b!52027))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


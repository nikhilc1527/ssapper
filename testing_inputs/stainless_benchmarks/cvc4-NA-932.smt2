; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7064 () Bool)

(assert start!7064)

(declare-fun b!52070 () Bool)

(declare-fun res!23704 () Bool)

(declare-fun e!27028 () Bool)

(assert (=> b!52070 (=> (not res!23704) (not e!27028))))

(declare-datatypes () ((OptInt!13 (Some!237 (value!3249 (_ BitVec 32))) (None!238))))

(declare-fun x$3!126 () OptInt!13)

(declare-fun e!27027 () (_ BitVec 32))

(assert (=> b!52070 (= res!23704 (= x$3!126 (Some!237 e!27027)))))

(declare-fun c!11232 () Bool)

(declare-datatypes () ((Node!74 (Node!75 (rank!29 Int) (elem!101 (_ BitVec 32)) (nodes!29 Heap!23))) (Heap!23 (Empty!125) (Nodes!22 (head!654 Node!74) (tail!678 Heap!23)))))

(declare-fun h!391 () Heap!23)

(declare-fun findMin!0 (Heap!23) OptInt!13)

(assert (=> b!52070 (= c!11232 (bvslt (elem!101 (head!654 h!391)) (value!3249 (findMin!0 (tail!678 h!391)))))))

(declare-fun b!52071 () Bool)

(declare-fun res!23705 () Bool)

(assert (=> b!52071 (=> (not res!23705) (not e!27028))))

(assert (=> b!52071 (= res!23705 (not (is-None!238 (findMin!0 (tail!678 h!391)))))))

(declare-fun b!52072 () Bool)

(declare-fun heapContent!0 (Heap!23) (Set (_ BitVec 32)))

(assert (=> b!52072 (= e!27028 (not (member (value!3249 x$3!126) (heapContent!0 h!391))))))

(declare-fun b!52073 () Bool)

(declare-fun res!23702 () Bool)

(assert (=> b!52073 (=> (not res!23702) (not e!27028))))

(assert (=> b!52073 (= res!23702 (not (is-None!238 x$3!126)))))

(declare-fun b!52074 () Bool)

(assert (=> b!52074 (= e!27027 (value!3249 (findMin!0 (tail!678 h!391))))))

(declare-fun res!23703 () Bool)

(assert (=> start!7064 (=> (not res!23703) (not e!27028))))

(assert (=> start!7064 (= res!23703 (not (is-Empty!125 h!391)))))

(assert (=> start!7064 e!27028))

(assert (=> start!7064 true))

(declare-fun b!52075 () Bool)

(assert (=> b!52075 (= e!27027 (elem!101 (head!654 h!391)))))

(assert (= (and start!7064 res!23703) b!52071))

(assert (= (and b!52071 res!23705) b!52070))

(assert (= (and b!52070 c!11232) b!52075))

(assert (= (and b!52070 (not c!11232)) b!52074))

(assert (= (and b!52070 res!23704) b!52073))

(assert (= (and b!52073 res!23702) b!52072))

(declare-fun m!56011 () Bool)

(assert (=> b!52070 m!56011))

(assert (=> b!52071 m!56011))

(declare-fun m!56013 () Bool)

(assert (=> b!52072 m!56013))

(declare-fun m!56015 () Bool)

(assert (=> b!52072 m!56015))

(assert (=> b!52074 m!56011))

(push 1)

(assert (not b!52070))

(assert (not b!52072))

(assert (not b!52074))

(assert (not b!52071))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!52092 () Bool)

(declare-fun e!27037 () (_ BitVec 32))

(assert (=> b!52092 (= e!27037 (elem!101 (head!654 (tail!678 h!391))))))

(declare-fun b!52093 () Bool)

(declare-fun e!27038 () Bool)

(declare-fun lt!9130 () OptInt!13)

(assert (=> b!52093 (= e!27038 (member (value!3249 lt!9130) (heapContent!0 (tail!678 h!391))))))

(declare-fun b!52094 () Bool)

(declare-fun e!27040 () OptInt!13)

(assert (=> b!52094 (= e!27040 (Some!237 e!27037))))

(declare-fun c!11244 () Bool)

(assert (=> b!52094 (= c!11244 (bvslt (elem!101 (head!654 (tail!678 h!391))) (value!3249 (findMin!0 (tail!678 (tail!678 h!391))))))))

(declare-fun b!52095 () Bool)

(assert (=> b!52095 (= e!27040 (Some!237 (elem!101 (head!654 (tail!678 h!391)))))))

(declare-fun b!52096 () Bool)

(declare-fun e!27039 () OptInt!13)

(assert (=> b!52096 (= e!27039 None!238)))

(declare-fun b!52097 () Bool)

(assert (=> b!52097 (= e!27039 e!27040)))

(declare-fun c!11242 () Bool)

(assert (=> b!52097 (= c!11242 (is-None!238 (findMin!0 (tail!678 (tail!678 h!391)))))))

(declare-fun b!52098 () Bool)

(assert (=> b!52098 (= e!27037 (value!3249 (findMin!0 (tail!678 (tail!678 h!391)))))))

(declare-fun b!52099 () Bool)

(declare-fun isEmpty!6 (Heap!23) Bool)

(assert (=> b!52099 (= e!27038 (isEmpty!6 (tail!678 h!391)))))

(declare-fun d!44110 () Bool)

(assert (=> d!44110 e!27038))

(declare-fun c!11243 () Bool)

(assert (=> d!44110 (= c!11243 (is-None!238 lt!9130))))

(assert (=> d!44110 (= lt!9130 e!27039)))

(declare-fun c!11241 () Bool)

(assert (=> d!44110 (= c!11241 (is-Empty!125 (tail!678 h!391)))))

(assert (=> d!44110 (= (findMin!0 (tail!678 h!391)) lt!9130)))

(assert (= (and b!52094 c!11244) b!52092))

(assert (= (and b!52094 (not c!11244)) b!52098))

(assert (= (and b!52097 c!11242) b!52095))

(assert (= (and b!52097 (not c!11242)) b!52094))

(assert (= (and d!44110 c!11241) b!52096))

(assert (= (and d!44110 (not c!11241)) b!52097))

(assert (= (and d!44110 c!11243) b!52099))

(assert (= (and d!44110 (not c!11243)) b!52093))

(declare-fun m!56017 () Bool)

(assert (=> b!52093 m!56017))

(declare-fun m!56019 () Bool)

(assert (=> b!52093 m!56019))

(declare-fun m!56021 () Bool)

(assert (=> b!52097 m!56021))

(assert (=> b!52094 m!56021))

(assert (=> b!52098 m!56021))

(declare-fun m!56023 () Bool)

(assert (=> b!52099 m!56023))

(assert (=> b!52070 d!44110))

(declare-fun d!44112 () Bool)

(declare-fun c!11247 () Bool)

(assert (=> d!44112 (= c!11247 (is-Empty!125 h!391))))

(declare-fun e!27043 () (Set (_ BitVec 32)))

(assert (=> d!44112 (= (heapContent!0 h!391) e!27043)))

(declare-fun b!52104 () Bool)

(assert (=> b!52104 (= e!27043 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52105 () Bool)

(declare-fun nodeContent!0 (Node!74) (Set (_ BitVec 32)))

(assert (=> b!52105 (= e!27043 (union (nodeContent!0 (head!654 h!391)) (heapContent!0 (tail!678 h!391))))))

(assert (= (and d!44112 c!11247) b!52104))

(assert (= (and d!44112 (not c!11247)) b!52105))

(declare-fun m!56025 () Bool)

(assert (=> b!52105 m!56025))

(assert (=> b!52105 m!56017))

(assert (=> b!52072 d!44112))

(assert (=> b!52074 d!44110))

(assert (=> b!52071 d!44110))

(push 1)

(assert (not b!52099))

(assert (not b!52093))

(assert (not b!52097))

(assert (not b!52105))

(assert (not b!52094))

(assert (not b!52098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!52106 () Bool)

(declare-fun e!27044 () (_ BitVec 32))

(assert (=> b!52106 (= e!27044 (elem!101 (head!654 (tail!678 (tail!678 h!391)))))))

(declare-fun b!52107 () Bool)

(declare-fun e!27045 () Bool)

(declare-fun lt!9131 () OptInt!13)

(assert (=> b!52107 (= e!27045 (member (value!3249 lt!9131) (heapContent!0 (tail!678 (tail!678 h!391)))))))

(declare-fun b!52108 () Bool)

(declare-fun e!27047 () OptInt!13)

(assert (=> b!52108 (= e!27047 (Some!237 e!27044))))

(declare-fun c!11251 () Bool)

(assert (=> b!52108 (= c!11251 (bvslt (elem!101 (head!654 (tail!678 (tail!678 h!391)))) (value!3249 (findMin!0 (tail!678 (tail!678 (tail!678 h!391)))))))))

(declare-fun b!52109 () Bool)

(assert (=> b!52109 (= e!27047 (Some!237 (elem!101 (head!654 (tail!678 (tail!678 h!391))))))))

(declare-fun b!52110 () Bool)

(declare-fun e!27046 () OptInt!13)

(assert (=> b!52110 (= e!27046 None!238)))

(declare-fun b!52111 () Bool)

(assert (=> b!52111 (= e!27046 e!27047)))

(declare-fun c!11249 () Bool)

(assert (=> b!52111 (= c!11249 (is-None!238 (findMin!0 (tail!678 (tail!678 (tail!678 h!391))))))))

(declare-fun b!52112 () Bool)

(assert (=> b!52112 (= e!27044 (value!3249 (findMin!0 (tail!678 (tail!678 (tail!678 h!391))))))))

(declare-fun b!52113 () Bool)

(assert (=> b!52113 (= e!27045 (isEmpty!6 (tail!678 (tail!678 h!391))))))

(declare-fun d!44114 () Bool)

(assert (=> d!44114 e!27045))

(declare-fun c!11250 () Bool)

(assert (=> d!44114 (= c!11250 (is-None!238 lt!9131))))

(assert (=> d!44114 (= lt!9131 e!27046)))

(declare-fun c!11248 () Bool)

(assert (=> d!44114 (= c!11248 (is-Empty!125 (tail!678 (tail!678 h!391))))))

(assert (=> d!44114 (= (findMin!0 (tail!678 (tail!678 h!391))) lt!9131)))

(assert (= (and b!52108 c!11251) b!52106))

(assert (= (and b!52108 (not c!11251)) b!52112))

(assert (= (and b!52111 c!11249) b!52109))

(assert (= (and b!52111 (not c!11249)) b!52108))

(assert (= (and d!44114 c!11248) b!52110))

(assert (= (and d!44114 (not c!11248)) b!52111))

(assert (= (and d!44114 c!11250) b!52113))

(assert (= (and d!44114 (not c!11250)) b!52107))

(declare-fun m!56027 () Bool)

(assert (=> b!52107 m!56027))

(declare-fun m!56029 () Bool)

(assert (=> b!52107 m!56029))

(declare-fun m!56031 () Bool)

(assert (=> b!52111 m!56031))

(assert (=> b!52108 m!56031))

(assert (=> b!52112 m!56031))

(declare-fun m!56033 () Bool)

(assert (=> b!52113 m!56033))

(assert (=> b!52098 d!44114))

(declare-fun d!44116 () Bool)

(declare-fun lt!9134 () Bool)

(assert (=> d!44116 (= lt!9134 (= (heapContent!0 (tail!678 h!391)) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!44116 (= lt!9134 (= (tail!678 h!391) Empty!125))))

(assert (=> d!44116 (= (isEmpty!6 (tail!678 h!391)) lt!9134)))

(declare-fun bs!23806 () Bool)

(assert (= bs!23806 d!44116))

(assert (=> bs!23806 m!56017))

(assert (=> b!52099 d!44116))

(assert (=> b!52094 d!44114))

(declare-fun d!44118 () Bool)

(assert (=> d!44118 (= (nodeContent!0 (head!654 h!391)) (union (insert (elem!101 (head!654 h!391)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!29 (head!654 h!391)))))))

(declare-fun bs!23807 () Bool)

(assert (= bs!23807 d!44118))

(declare-fun m!56035 () Bool)

(assert (=> bs!23807 m!56035))

(declare-fun m!56037 () Bool)

(assert (=> bs!23807 m!56037))

(assert (=> b!52105 d!44118))

(declare-fun d!44120 () Bool)

(declare-fun c!11252 () Bool)

(assert (=> d!44120 (= c!11252 (is-Empty!125 (tail!678 h!391)))))

(declare-fun e!27048 () (Set (_ BitVec 32)))

(assert (=> d!44120 (= (heapContent!0 (tail!678 h!391)) e!27048)))

(declare-fun b!52114 () Bool)

(assert (=> b!52114 (= e!27048 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52115 () Bool)

(assert (=> b!52115 (= e!27048 (union (nodeContent!0 (head!654 (tail!678 h!391))) (heapContent!0 (tail!678 (tail!678 h!391)))))))

(assert (= (and d!44120 c!11252) b!52114))

(assert (= (and d!44120 (not c!11252)) b!52115))

(declare-fun m!56039 () Bool)

(assert (=> b!52115 m!56039))

(assert (=> b!52115 m!56027))

(assert (=> b!52105 d!44120))

(assert (=> b!52093 d!44120))

(assert (=> b!52097 d!44114))

(push 1)

(assert (not b!52107))

(assert (not b!52108))

(assert (not b!52113))

(assert (not b!52112))

(assert (not b!52115))

(assert (not d!44118))

(assert (not d!44116))

(assert (not b!52111))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


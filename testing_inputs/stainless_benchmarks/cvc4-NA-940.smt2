; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7112 () Bool)

(assert start!7112)

(declare-fun res!23759 () Bool)

(declare-fun e!27153 () Bool)

(assert (=> start!7112 (=> (not res!23759) (not e!27153))))

(declare-datatypes () ((Node!90 (Node!91 (rank!37 Int) (elem!109 (_ BitVec 32)) (nodes!37 Heap!31))) (Heap!31 (Empty!133) (Nodes!30 (head!662 Node!90) (tail!686 Heap!31)))))

(declare-fun h2!24 () Heap!31)

(declare-fun h1!26 () Heap!31)

(assert (=> start!7112 (= res!23759 (and (not (is-Empty!133 h2!24)) (not (is-Empty!133 h1!26)) (>= (rank!37 (head!662 h1!26)) (rank!37 (head!662 h2!24))) (>= (rank!37 (head!662 h2!24)) (rank!37 (head!662 h1!26)))))))

(assert (=> start!7112 e!27153))

(assert (=> start!7112 true))

(declare-fun b!52315 () Bool)

(declare-fun res!23760 () Bool)

(assert (=> b!52315 (=> (not res!23760) (not e!27153))))

(declare-fun res!23500 () Heap!31)

(declare-fun insertNode!0 (Node!90 Heap!31) Heap!31)

(declare-fun link!0 (Node!90 Node!90) Node!90)

(declare-fun merge!1 (Heap!31 Heap!31) Heap!31)

(assert (=> b!52315 (= res!23760 (= res!23500 (insertNode!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))))

(declare-fun b!52316 () Bool)

(declare-fun heapContent!0 (Heap!31) (Set (_ BitVec 32)))

(assert (=> b!52316 (= e!27153 (not (= (heapContent!0 res!23500) (union (heapContent!0 h1!26) (heapContent!0 h2!24)))))))

(assert (= (and start!7112 res!23759) b!52315))

(assert (= (and b!52315 res!23760) b!52316))

(declare-fun m!56261 () Bool)

(assert (=> b!52315 m!56261))

(declare-fun m!56263 () Bool)

(assert (=> b!52315 m!56263))

(assert (=> b!52315 m!56261))

(assert (=> b!52315 m!56263))

(declare-fun m!56265 () Bool)

(assert (=> b!52315 m!56265))

(declare-fun m!56267 () Bool)

(assert (=> b!52316 m!56267))

(declare-fun m!56269 () Bool)

(assert (=> b!52316 m!56269))

(declare-fun m!56271 () Bool)

(assert (=> b!52316 m!56271))

(push 1)

(assert (not b!52315))

(assert (not b!52316))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!52325 () Bool)

(declare-fun e!27158 () Heap!31)

(assert (=> b!52325 (= e!27158 (Nodes!30 (link!0 (head!662 h1!26) (head!662 h2!24)) Empty!133))))

(declare-fun b!52328 () Bool)

(declare-fun e!27159 () Heap!31)

(assert (=> b!52328 (= e!27159 (insertNode!0 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))))

(declare-fun b!52327 () Bool)

(assert (=> b!52327 (= e!27159 (Nodes!30 (link!0 (head!662 h1!26) (head!662 h2!24)) (merge!1 (tail!686 h1!26) (tail!686 h2!24))))))

(declare-fun b!52326 () Bool)

(assert (=> b!52326 (= e!27158 e!27159)))

(declare-fun c!11338 () Bool)

(assert (=> b!52326 (= c!11338 (< (rank!37 (link!0 (head!662 h1!26) (head!662 h2!24))) (rank!37 (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))))))

(declare-fun d!44204 () Bool)

(declare-fun lt!9160 () Heap!31)

(declare-fun nodeContent!0 (Node!90) (Set (_ BitVec 32)))

(assert (=> d!44204 (= (heapContent!0 lt!9160) (union (nodeContent!0 (link!0 (head!662 h1!26) (head!662 h2!24))) (heapContent!0 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))))

(assert (=> d!44204 (= lt!9160 e!27158)))

(declare-fun c!11339 () Bool)

(assert (=> d!44204 (= c!11339 (is-Empty!133 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))))

(assert (=> d!44204 (= (insertNode!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (merge!1 (tail!686 h1!26) (tail!686 h2!24))) lt!9160)))

(assert (= (and b!52326 c!11338) b!52327))

(assert (= (and b!52326 (not c!11338)) b!52328))

(assert (= (and d!44204 c!11339) b!52325))

(assert (= (and d!44204 (not c!11339)) b!52326))

(assert (=> b!52328 m!56261))

(declare-fun m!56273 () Bool)

(assert (=> b!52328 m!56273))

(assert (=> b!52328 m!56273))

(declare-fun m!56275 () Bool)

(assert (=> b!52328 m!56275))

(declare-fun m!56277 () Bool)

(assert (=> d!44204 m!56277))

(assert (=> d!44204 m!56261))

(declare-fun m!56279 () Bool)

(assert (=> d!44204 m!56279))

(assert (=> d!44204 m!56263))

(declare-fun m!56281 () Bool)

(assert (=> d!44204 m!56281))

(assert (=> b!52315 d!44204))

(declare-fun d!44206 () Bool)

(assert (=> d!44206 (= (link!0 (head!662 h1!26) (head!662 h2!24)) (ite (bvsle (elem!109 (head!662 h1!26)) (elem!109 (head!662 h2!24))) (Node!91 (+ (rank!37 (head!662 h1!26)) 1) (elem!109 (head!662 h1!26)) (Nodes!30 (head!662 h2!24) (nodes!37 (head!662 h1!26)))) (Node!91 (+ (rank!37 (head!662 h1!26)) 1) (elem!109 (head!662 h2!24)) (Nodes!30 (head!662 h1!26) (nodes!37 (head!662 h2!24))))))))

(assert (=> b!52315 d!44206))

(declare-fun b!52349 () Bool)

(declare-fun e!27170 () Heap!31)

(declare-fun lt!9167 () Heap!31)

(assert (=> b!52349 (= e!27170 (Nodes!30 (head!662 (tail!686 h2!24)) lt!9167))))

(declare-fun b!52350 () Bool)

(declare-fun e!27171 () Heap!31)

(declare-fun res!23768 () Heap!31)

(assert (=> b!52350 (= e!27171 res!23768)))

(assert (=> b!52350 true))

(assert (=> b!52350 true))

(declare-fun b!52351 () Bool)

(declare-fun e!27172 () Heap!31)

(assert (=> b!52351 (= e!27172 (Nodes!30 (head!662 (tail!686 h1!26)) lt!9167))))

(declare-fun b!52352 () Bool)

(assert (=> b!52352 (= e!27170 (insertNode!0 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24))) (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))))))

(declare-fun b!52353 () Bool)

(declare-fun lt!9168 () Bool)

(assert (=> b!52353 (= e!27171 (merge!1 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)) (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))

(declare-fun b!52354 () Bool)

(declare-fun e!27173 () Heap!31)

(assert (=> b!52354 (= e!27173 e!27172)))

(declare-fun c!11354 () Bool)

(assert (=> b!52354 (= c!11354 lt!9168)))

(assert (=> b!52354 (= lt!9167 e!27171)))

(declare-fun c!11352 () Bool)

(assert (=> b!52354 (= c!11352 (or lt!9168 (< (rank!37 (head!662 (tail!686 h2!24))) (rank!37 (head!662 (tail!686 h1!26))))))))

(assert (=> b!52354 (= lt!9168 (< (rank!37 (head!662 (tail!686 h1!26))) (rank!37 (head!662 (tail!686 h2!24)))))))

(declare-fun d!44208 () Bool)

(declare-fun lt!9169 () Heap!31)

(assert (=> d!44208 (= (heapContent!0 lt!9169) (union (heapContent!0 (tail!686 h1!26)) (heapContent!0 (tail!686 h2!24))))))

(declare-fun e!27174 () Heap!31)

(assert (=> d!44208 (= lt!9169 e!27174)))

(declare-fun c!11351 () Bool)

(assert (=> d!44208 (= c!11351 (is-Empty!133 (tail!686 h2!24)))))

(assert (=> d!44208 (= (merge!1 (tail!686 h1!26) (tail!686 h2!24)) lt!9169)))

(declare-fun b!52355 () Bool)

(assert (=> b!52355 (= e!27173 (tail!686 h2!24))))

(declare-fun b!52356 () Bool)

(assert (=> b!52356 (= e!27172 e!27170)))

(declare-fun c!11353 () Bool)

(assert (=> b!52356 (= c!11353 (< (rank!37 (head!662 (tail!686 h2!24))) (rank!37 (head!662 (tail!686 h1!26)))))))

(declare-fun b!52357 () Bool)

(assert (=> b!52357 (= e!27174 e!27173)))

(declare-fun c!11350 () Bool)

(assert (=> b!52357 (= c!11350 (is-Empty!133 (tail!686 h1!26)))))

(declare-fun b!52358 () Bool)

(assert (=> b!52358 (= e!27174 (tail!686 h1!26))))

(assert (= (and b!52354 c!11352) b!52353))

(assert (= (and b!52354 (not c!11352)) b!52350))

(assert (= (and b!52356 c!11353) b!52349))

(assert (= (and b!52356 (not c!11353)) b!52352))

(assert (= (and b!52354 c!11354) b!52351))

(assert (= (and b!52354 (not c!11354)) b!52356))

(assert (= (and b!52357 c!11350) b!52355))

(assert (= (and b!52357 (not c!11350)) b!52354))

(assert (= (and d!44208 c!11351) b!52358))

(assert (= (and d!44208 (not c!11351)) b!52357))

(declare-fun m!56283 () Bool)

(assert (=> b!52352 m!56283))

(declare-fun m!56285 () Bool)

(assert (=> b!52352 m!56285))

(assert (=> b!52352 m!56283))

(assert (=> b!52352 m!56285))

(declare-fun m!56287 () Bool)

(assert (=> b!52352 m!56287))

(declare-fun m!56289 () Bool)

(assert (=> b!52353 m!56289))

(declare-fun m!56291 () Bool)

(assert (=> d!44208 m!56291))

(declare-fun m!56293 () Bool)

(assert (=> d!44208 m!56293))

(declare-fun m!56295 () Bool)

(assert (=> d!44208 m!56295))

(assert (=> b!52315 d!44208))

(declare-fun d!44210 () Bool)

(declare-fun c!11357 () Bool)

(assert (=> d!44210 (= c!11357 (is-Empty!133 res!23500))))

(declare-fun e!27177 () (Set (_ BitVec 32)))

(assert (=> d!44210 (= (heapContent!0 res!23500) e!27177)))

(declare-fun b!52363 () Bool)

(assert (=> b!52363 (= e!27177 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52364 () Bool)

(assert (=> b!52364 (= e!27177 (union (nodeContent!0 (head!662 res!23500)) (heapContent!0 (tail!686 res!23500))))))

(assert (= (and d!44210 c!11357) b!52363))

(assert (= (and d!44210 (not c!11357)) b!52364))

(declare-fun m!56297 () Bool)

(assert (=> b!52364 m!56297))

(declare-fun m!56299 () Bool)

(assert (=> b!52364 m!56299))

(assert (=> b!52316 d!44210))

(declare-fun d!44212 () Bool)

(declare-fun c!11358 () Bool)

(assert (=> d!44212 (= c!11358 (is-Empty!133 h1!26))))

(declare-fun e!27178 () (Set (_ BitVec 32)))

(assert (=> d!44212 (= (heapContent!0 h1!26) e!27178)))

(declare-fun b!52365 () Bool)

(assert (=> b!52365 (= e!27178 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52366 () Bool)

(assert (=> b!52366 (= e!27178 (union (nodeContent!0 (head!662 h1!26)) (heapContent!0 (tail!686 h1!26))))))

(assert (= (and d!44212 c!11358) b!52365))

(assert (= (and d!44212 (not c!11358)) b!52366))

(declare-fun m!56301 () Bool)

(assert (=> b!52366 m!56301))

(assert (=> b!52366 m!56293))

(assert (=> b!52316 d!44212))

(declare-fun d!44214 () Bool)

(declare-fun c!11359 () Bool)

(assert (=> d!44214 (= c!11359 (is-Empty!133 h2!24))))

(declare-fun e!27179 () (Set (_ BitVec 32)))

(assert (=> d!44214 (= (heapContent!0 h2!24) e!27179)))

(declare-fun b!52367 () Bool)

(assert (=> b!52367 (= e!27179 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52368 () Bool)

(assert (=> b!52368 (= e!27179 (union (nodeContent!0 (head!662 h2!24)) (heapContent!0 (tail!686 h2!24))))))

(assert (= (and d!44214 c!11359) b!52367))

(assert (= (and d!44214 (not c!11359)) b!52368))

(declare-fun m!56303 () Bool)

(assert (=> b!52368 m!56303))

(assert (=> b!52368 m!56295))

(assert (=> b!52316 d!44214))

(push 1)

(assert (not b!52352))

(assert (not b!52368))

(assert (not b!52353))

(assert (not d!44208))

(assert (not d!44204))

(assert (not b!52328))

(assert (not b!52366))

(assert (not b!52364))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44216 () Bool)

(assert (=> d!44216 (= (nodeContent!0 (head!662 res!23500)) (union (insert (elem!109 (head!662 res!23500)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!37 (head!662 res!23500)))))))

(declare-fun bs!23824 () Bool)

(assert (= bs!23824 d!44216))

(declare-fun m!56305 () Bool)

(assert (=> bs!23824 m!56305))

(declare-fun m!56307 () Bool)

(assert (=> bs!23824 m!56307))

(assert (=> b!52364 d!44216))

(declare-fun d!44218 () Bool)

(declare-fun c!11360 () Bool)

(assert (=> d!44218 (= c!11360 (is-Empty!133 (tail!686 res!23500)))))

(declare-fun e!27180 () (Set (_ BitVec 32)))

(assert (=> d!44218 (= (heapContent!0 (tail!686 res!23500)) e!27180)))

(declare-fun b!52369 () Bool)

(assert (=> b!52369 (= e!27180 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52370 () Bool)

(assert (=> b!52370 (= e!27180 (union (nodeContent!0 (head!662 (tail!686 res!23500))) (heapContent!0 (tail!686 (tail!686 res!23500)))))))

(assert (= (and d!44218 c!11360) b!52369))

(assert (= (and d!44218 (not c!11360)) b!52370))

(declare-fun m!56309 () Bool)

(assert (=> b!52370 m!56309))

(declare-fun m!56311 () Bool)

(assert (=> b!52370 m!56311))

(assert (=> b!52364 d!44218))

(declare-fun b!52371 () Bool)

(declare-fun e!27181 () Heap!31)

(assert (=> b!52371 (= e!27181 (Nodes!30 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) Empty!133))))

(declare-fun b!52374 () Bool)

(declare-fun e!27182 () Heap!31)

(assert (=> b!52374 (= e!27182 (insertNode!0 (link!0 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (head!662 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) (tail!686 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))))))

(declare-fun b!52373 () Bool)

(assert (=> b!52373 (= e!27182 (Nodes!30 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))))

(declare-fun b!52372 () Bool)

(assert (=> b!52372 (= e!27181 e!27182)))

(declare-fun c!11361 () Bool)

(assert (=> b!52372 (= c!11361 (< (rank!37 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) (rank!37 (head!662 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))))))

(declare-fun d!44220 () Bool)

(declare-fun lt!9170 () Heap!31)

(assert (=> d!44220 (= (heapContent!0 lt!9170) (union (nodeContent!0 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) (heapContent!0 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))))))

(assert (=> d!44220 (= lt!9170 e!27181)))

(declare-fun c!11362 () Bool)

(assert (=> d!44220 (= c!11362 (is-Empty!133 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))))

(assert (=> d!44220 (= (insertNode!0 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) lt!9170)))

(assert (= (and b!52372 c!11361) b!52373))

(assert (= (and b!52372 (not c!11361)) b!52374))

(assert (= (and d!44220 c!11362) b!52371))

(assert (= (and d!44220 (not c!11362)) b!52372))

(assert (=> b!52374 m!56273))

(declare-fun m!56313 () Bool)

(assert (=> b!52374 m!56313))

(assert (=> b!52374 m!56313))

(declare-fun m!56315 () Bool)

(assert (=> b!52374 m!56315))

(declare-fun m!56317 () Bool)

(assert (=> d!44220 m!56317))

(assert (=> d!44220 m!56273))

(declare-fun m!56319 () Bool)

(assert (=> d!44220 m!56319))

(declare-fun m!56321 () Bool)

(assert (=> d!44220 m!56321))

(assert (=> b!52328 d!44220))

(declare-fun d!44222 () Bool)

(assert (=> d!44222 (= (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (ite (bvsle (elem!109 (link!0 (head!662 h1!26) (head!662 h2!24))) (elem!109 (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) (Node!91 (+ (rank!37 (link!0 (head!662 h1!26) (head!662 h2!24))) 1) (elem!109 (link!0 (head!662 h1!26) (head!662 h2!24))) (Nodes!30 (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24))) (nodes!37 (link!0 (head!662 h1!26) (head!662 h2!24))))) (Node!91 (+ (rank!37 (link!0 (head!662 h1!26) (head!662 h2!24))) 1) (elem!109 (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (Nodes!30 (link!0 (head!662 h1!26) (head!662 h2!24)) (nodes!37 (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))))))))

(assert (=> b!52328 d!44222))

(declare-fun d!44224 () Bool)

(declare-fun c!11363 () Bool)

(assert (=> d!44224 (= c!11363 (is-Empty!133 lt!9160))))

(declare-fun e!27183 () (Set (_ BitVec 32)))

(assert (=> d!44224 (= (heapContent!0 lt!9160) e!27183)))

(declare-fun b!52375 () Bool)

(assert (=> b!52375 (= e!27183 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52376 () Bool)

(assert (=> b!52376 (= e!27183 (union (nodeContent!0 (head!662 lt!9160)) (heapContent!0 (tail!686 lt!9160))))))

(assert (= (and d!44224 c!11363) b!52375))

(assert (= (and d!44224 (not c!11363)) b!52376))

(declare-fun m!56323 () Bool)

(assert (=> b!52376 m!56323))

(declare-fun m!56325 () Bool)

(assert (=> b!52376 m!56325))

(assert (=> d!44204 d!44224))

(declare-fun d!44226 () Bool)

(assert (=> d!44226 (= (nodeContent!0 (link!0 (head!662 h1!26) (head!662 h2!24))) (union (insert (elem!109 (link!0 (head!662 h1!26) (head!662 h2!24))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!37 (link!0 (head!662 h1!26) (head!662 h2!24))))))))

(declare-fun bs!23825 () Bool)

(assert (= bs!23825 d!44226))

(declare-fun m!56327 () Bool)

(assert (=> bs!23825 m!56327))

(declare-fun m!56329 () Bool)

(assert (=> bs!23825 m!56329))

(assert (=> d!44204 d!44226))

(declare-fun d!44228 () Bool)

(declare-fun c!11364 () Bool)

(assert (=> d!44228 (= c!11364 (is-Empty!133 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))))

(declare-fun e!27184 () (Set (_ BitVec 32)))

(assert (=> d!44228 (= (heapContent!0 (merge!1 (tail!686 h1!26) (tail!686 h2!24))) e!27184)))

(declare-fun b!52377 () Bool)

(assert (=> b!52377 (= e!27184 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52378 () Bool)

(assert (=> b!52378 (= e!27184 (union (nodeContent!0 (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (heapContent!0 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))))))

(assert (= (and d!44228 c!11364) b!52377))

(assert (= (and d!44228 (not c!11364)) b!52378))

(declare-fun m!56331 () Bool)

(assert (=> b!52378 m!56331))

(assert (=> b!52378 m!56321))

(assert (=> d!44204 d!44228))

(declare-fun e!27185 () Heap!31)

(declare-fun lt!9171 () Heap!31)

(declare-fun b!52379 () Bool)

(assert (=> b!52379 (= e!27185 (Nodes!30 (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))) lt!9171))))

(declare-fun b!52380 () Bool)

(declare-fun e!27186 () Heap!31)

(declare-fun res!23769 () Heap!31)

(assert (=> b!52380 (= e!27186 res!23769)))

(assert (=> b!52380 true))

(assert (=> b!52380 true))

(declare-fun e!27187 () Heap!31)

(declare-fun b!52381 () Bool)

(assert (=> b!52381 (= e!27187 (Nodes!30 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) lt!9171))))

(declare-fun b!52382 () Bool)

(assert (=> b!52382 (= e!27185 (insertNode!0 (link!0 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))) (merge!1 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))))

(declare-fun lt!9172 () Bool)

(declare-fun b!52383 () Bool)

(assert (=> b!52383 (= e!27186 (merge!1 (ite lt!9172 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9172 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))))

(declare-fun b!52384 () Bool)

(declare-fun e!27188 () Heap!31)

(assert (=> b!52384 (= e!27188 e!27187)))

(declare-fun c!11369 () Bool)

(assert (=> b!52384 (= c!11369 lt!9172)))

(assert (=> b!52384 (= lt!9171 e!27186)))

(declare-fun c!11367 () Bool)

(assert (=> b!52384 (= c!11367 (or lt!9172 (< (rank!37 (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))) (rank!37 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))))))))

(assert (=> b!52384 (= lt!9172 (< (rank!37 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) (rank!37 (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))))

(declare-fun lt!9173 () Heap!31)

(declare-fun d!44230 () Bool)

(assert (=> d!44230 (= (heapContent!0 lt!9173) (union (heapContent!0 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (heapContent!0 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))))))

(declare-fun e!27189 () Heap!31)

(assert (=> d!44230 (= lt!9173 e!27189)))

(declare-fun c!11366 () Bool)

(assert (=> d!44230 (= c!11366 (is-Empty!133 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))

(assert (=> d!44230 (= (merge!1 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)) (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))) lt!9173)))

(declare-fun b!52385 () Bool)

(assert (=> b!52385 (= e!27188 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))))

(declare-fun b!52386 () Bool)

(assert (=> b!52386 (= e!27187 e!27185)))

(declare-fun c!11368 () Bool)

(assert (=> b!52386 (= c!11368 (< (rank!37 (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))) (rank!37 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))))))))

(declare-fun b!52387 () Bool)

(assert (=> b!52387 (= e!27189 e!27188)))

(declare-fun c!11365 () Bool)

(assert (=> b!52387 (= c!11365 (is-Empty!133 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))))))

(declare-fun b!52388 () Bool)

(assert (=> b!52388 (= e!27189 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))))

(assert (= (and b!52384 c!11367) b!52383))

(assert (= (and b!52384 (not c!11367)) b!52380))

(assert (= (and b!52386 c!11368) b!52379))

(assert (= (and b!52386 (not c!11368)) b!52382))

(assert (= (and b!52384 c!11369) b!52381))

(assert (= (and b!52384 (not c!11369)) b!52386))

(assert (= (and b!52387 c!11365) b!52385))

(assert (= (and b!52387 (not c!11365)) b!52384))

(assert (= (and d!44230 c!11366) b!52388))

(assert (= (and d!44230 (not c!11366)) b!52387))

(declare-fun m!56333 () Bool)

(assert (=> b!52382 m!56333))

(declare-fun m!56335 () Bool)

(assert (=> b!52382 m!56335))

(assert (=> b!52382 m!56333))

(assert (=> b!52382 m!56335))

(declare-fun m!56337 () Bool)

(assert (=> b!52382 m!56337))

(declare-fun m!56339 () Bool)

(assert (=> b!52383 m!56339))

(declare-fun m!56341 () Bool)

(assert (=> d!44230 m!56341))

(declare-fun m!56343 () Bool)

(assert (=> d!44230 m!56343))

(declare-fun m!56345 () Bool)

(assert (=> d!44230 m!56345))

(assert (=> b!52353 d!44230))

(declare-fun d!44232 () Bool)

(declare-fun c!11370 () Bool)

(assert (=> d!44232 (= c!11370 (is-Empty!133 lt!9169))))

(declare-fun e!27190 () (Set (_ BitVec 32)))

(assert (=> d!44232 (= (heapContent!0 lt!9169) e!27190)))

(declare-fun b!52389 () Bool)

(assert (=> b!52389 (= e!27190 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52390 () Bool)

(assert (=> b!52390 (= e!27190 (union (nodeContent!0 (head!662 lt!9169)) (heapContent!0 (tail!686 lt!9169))))))

(assert (= (and d!44232 c!11370) b!52389))

(assert (= (and d!44232 (not c!11370)) b!52390))

(declare-fun m!56347 () Bool)

(assert (=> b!52390 m!56347))

(declare-fun m!56349 () Bool)

(assert (=> b!52390 m!56349))

(assert (=> d!44208 d!44232))

(declare-fun d!44234 () Bool)

(declare-fun c!11371 () Bool)

(assert (=> d!44234 (= c!11371 (is-Empty!133 (tail!686 h1!26)))))

(declare-fun e!27191 () (Set (_ BitVec 32)))

(assert (=> d!44234 (= (heapContent!0 (tail!686 h1!26)) e!27191)))

(declare-fun b!52391 () Bool)

(assert (=> b!52391 (= e!27191 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52392 () Bool)

(assert (=> b!52392 (= e!27191 (union (nodeContent!0 (head!662 (tail!686 h1!26))) (heapContent!0 (tail!686 (tail!686 h1!26)))))))

(assert (= (and d!44234 c!11371) b!52391))

(assert (= (and d!44234 (not c!11371)) b!52392))

(declare-fun m!56351 () Bool)

(assert (=> b!52392 m!56351))

(declare-fun m!56353 () Bool)

(assert (=> b!52392 m!56353))

(assert (=> d!44208 d!44234))

(declare-fun d!44236 () Bool)

(declare-fun c!11372 () Bool)

(assert (=> d!44236 (= c!11372 (is-Empty!133 (tail!686 h2!24)))))

(declare-fun e!27192 () (Set (_ BitVec 32)))

(assert (=> d!44236 (= (heapContent!0 (tail!686 h2!24)) e!27192)))

(declare-fun b!52393 () Bool)

(assert (=> b!52393 (= e!27192 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52394 () Bool)

(assert (=> b!52394 (= e!27192 (union (nodeContent!0 (head!662 (tail!686 h2!24))) (heapContent!0 (tail!686 (tail!686 h2!24)))))))

(assert (= (and d!44236 c!11372) b!52393))

(assert (= (and d!44236 (not c!11372)) b!52394))

(declare-fun m!56355 () Bool)

(assert (=> b!52394 m!56355))

(declare-fun m!56357 () Bool)

(assert (=> b!52394 m!56357))

(assert (=> d!44208 d!44236))

(declare-fun b!52395 () Bool)

(declare-fun e!27193 () Heap!31)

(assert (=> b!52395 (= e!27193 (Nodes!30 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24))) Empty!133))))

(declare-fun b!52398 () Bool)

(declare-fun e!27194 () Heap!31)

(assert (=> b!52398 (= e!27194 (insertNode!0 (link!0 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24))) (head!662 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))))) (tail!686 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))))))))

(declare-fun b!52397 () Bool)

(assert (=> b!52397 (= e!27194 (Nodes!30 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24))) (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))))))

(declare-fun b!52396 () Bool)

(assert (=> b!52396 (= e!27193 e!27194)))

(declare-fun c!11373 () Bool)

(assert (=> b!52396 (= c!11373 (< (rank!37 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24)))) (rank!37 (head!662 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))))))))

(declare-fun d!44238 () Bool)

(declare-fun lt!9174 () Heap!31)

(assert (=> d!44238 (= (heapContent!0 lt!9174) (union (nodeContent!0 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24)))) (heapContent!0 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))))))))

(assert (=> d!44238 (= lt!9174 e!27193)))

(declare-fun c!11374 () Bool)

(assert (=> d!44238 (= c!11374 (is-Empty!133 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))))))

(assert (=> d!44238 (= (insertNode!0 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24))) (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))) lt!9174)))

(assert (= (and b!52396 c!11373) b!52397))

(assert (= (and b!52396 (not c!11373)) b!52398))

(assert (= (and d!44238 c!11374) b!52395))

(assert (= (and d!44238 (not c!11374)) b!52396))

(assert (=> b!52398 m!56283))

(declare-fun m!56359 () Bool)

(assert (=> b!52398 m!56359))

(assert (=> b!52398 m!56359))

(declare-fun m!56361 () Bool)

(assert (=> b!52398 m!56361))

(declare-fun m!56363 () Bool)

(assert (=> d!44238 m!56363))

(assert (=> d!44238 m!56283))

(declare-fun m!56365 () Bool)

(assert (=> d!44238 m!56365))

(assert (=> d!44238 m!56285))

(declare-fun m!56367 () Bool)

(assert (=> d!44238 m!56367))

(assert (=> b!52352 d!44238))

(declare-fun d!44240 () Bool)

(assert (=> d!44240 (= (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24))) (ite (bvsle (elem!109 (head!662 (tail!686 h1!26))) (elem!109 (head!662 (tail!686 h2!24)))) (Node!91 (+ (rank!37 (head!662 (tail!686 h1!26))) 1) (elem!109 (head!662 (tail!686 h1!26))) (Nodes!30 (head!662 (tail!686 h2!24)) (nodes!37 (head!662 (tail!686 h1!26))))) (Node!91 (+ (rank!37 (head!662 (tail!686 h1!26))) 1) (elem!109 (head!662 (tail!686 h2!24))) (Nodes!30 (head!662 (tail!686 h1!26)) (nodes!37 (head!662 (tail!686 h2!24)))))))))

(assert (=> b!52352 d!44240))

(declare-fun b!52399 () Bool)

(declare-fun e!27195 () Heap!31)

(declare-fun lt!9175 () Heap!31)

(assert (=> b!52399 (= e!27195 (Nodes!30 (head!662 (tail!686 (tail!686 h2!24))) lt!9175))))

(declare-fun b!52400 () Bool)

(declare-fun e!27196 () Heap!31)

(declare-fun res!23770 () Heap!31)

(assert (=> b!52400 (= e!27196 res!23770)))

(assert (=> b!52400 true))

(assert (=> b!52400 true))

(declare-fun b!52401 () Bool)

(declare-fun e!27197 () Heap!31)

(assert (=> b!52401 (= e!27197 (Nodes!30 (head!662 (tail!686 (tail!686 h1!26))) lt!9175))))

(declare-fun b!52402 () Bool)

(assert (=> b!52402 (= e!27195 (insertNode!0 (link!0 (head!662 (tail!686 (tail!686 h1!26))) (head!662 (tail!686 (tail!686 h2!24)))) (merge!1 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 (tail!686 h2!24))))))))

(declare-fun lt!9176 () Bool)

(declare-fun b!52403 () Bool)

(assert (=> b!52403 (= e!27196 (merge!1 (ite lt!9176 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 h1!26))) (ite lt!9176 (tail!686 (tail!686 h2!24)) (tail!686 (tail!686 (tail!686 h2!24))))))))

(declare-fun b!52404 () Bool)

(declare-fun e!27198 () Heap!31)

(assert (=> b!52404 (= e!27198 e!27197)))

(declare-fun c!11379 () Bool)

(assert (=> b!52404 (= c!11379 lt!9176)))

(assert (=> b!52404 (= lt!9175 e!27196)))

(declare-fun c!11377 () Bool)

(assert (=> b!52404 (= c!11377 (or lt!9176 (< (rank!37 (head!662 (tail!686 (tail!686 h2!24)))) (rank!37 (head!662 (tail!686 (tail!686 h1!26)))))))))

(assert (=> b!52404 (= lt!9176 (< (rank!37 (head!662 (tail!686 (tail!686 h1!26)))) (rank!37 (head!662 (tail!686 (tail!686 h2!24))))))))

(declare-fun d!44242 () Bool)

(declare-fun lt!9177 () Heap!31)

(assert (=> d!44242 (= (heapContent!0 lt!9177) (union (heapContent!0 (tail!686 (tail!686 h1!26))) (heapContent!0 (tail!686 (tail!686 h2!24)))))))

(declare-fun e!27199 () Heap!31)

(assert (=> d!44242 (= lt!9177 e!27199)))

(declare-fun c!11376 () Bool)

(assert (=> d!44242 (= c!11376 (is-Empty!133 (tail!686 (tail!686 h2!24))))))

(assert (=> d!44242 (= (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))) lt!9177)))

(declare-fun b!52405 () Bool)

(assert (=> b!52405 (= e!27198 (tail!686 (tail!686 h2!24)))))

(declare-fun b!52406 () Bool)

(assert (=> b!52406 (= e!27197 e!27195)))

(declare-fun c!11378 () Bool)

(assert (=> b!52406 (= c!11378 (< (rank!37 (head!662 (tail!686 (tail!686 h2!24)))) (rank!37 (head!662 (tail!686 (tail!686 h1!26))))))))

(declare-fun b!52407 () Bool)

(assert (=> b!52407 (= e!27199 e!27198)))

(declare-fun c!11375 () Bool)

(assert (=> b!52407 (= c!11375 (is-Empty!133 (tail!686 (tail!686 h1!26))))))

(declare-fun b!52408 () Bool)

(assert (=> b!52408 (= e!27199 (tail!686 (tail!686 h1!26)))))

(assert (= (and b!52404 c!11377) b!52403))

(assert (= (and b!52404 (not c!11377)) b!52400))

(assert (= (and b!52406 c!11378) b!52399))

(assert (= (and b!52406 (not c!11378)) b!52402))

(assert (= (and b!52404 c!11379) b!52401))

(assert (= (and b!52404 (not c!11379)) b!52406))

(assert (= (and b!52407 c!11375) b!52405))

(assert (= (and b!52407 (not c!11375)) b!52404))

(assert (= (and d!44242 c!11376) b!52408))

(assert (= (and d!44242 (not c!11376)) b!52407))

(declare-fun m!56369 () Bool)

(assert (=> b!52402 m!56369))

(declare-fun m!56371 () Bool)

(assert (=> b!52402 m!56371))

(assert (=> b!52402 m!56369))

(assert (=> b!52402 m!56371))

(declare-fun m!56373 () Bool)

(assert (=> b!52402 m!56373))

(declare-fun m!56375 () Bool)

(assert (=> b!52403 m!56375))

(declare-fun m!56377 () Bool)

(assert (=> d!44242 m!56377))

(assert (=> d!44242 m!56353))

(assert (=> d!44242 m!56357))

(assert (=> b!52352 d!44242))

(declare-fun d!44244 () Bool)

(assert (=> d!44244 (= (nodeContent!0 (head!662 h1!26)) (union (insert (elem!109 (head!662 h1!26)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!37 (head!662 h1!26)))))))

(declare-fun bs!23826 () Bool)

(assert (= bs!23826 d!44244))

(declare-fun m!56379 () Bool)

(assert (=> bs!23826 m!56379))

(declare-fun m!56381 () Bool)

(assert (=> bs!23826 m!56381))

(assert (=> b!52366 d!44244))

(assert (=> b!52366 d!44234))

(declare-fun d!44246 () Bool)

(assert (=> d!44246 (= (nodeContent!0 (head!662 h2!24)) (union (insert (elem!109 (head!662 h2!24)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!37 (head!662 h2!24)))))))

(declare-fun bs!23827 () Bool)

(assert (= bs!23827 d!44246))

(declare-fun m!56383 () Bool)

(assert (=> bs!23827 m!56383))

(declare-fun m!56385 () Bool)

(assert (=> bs!23827 m!56385))

(assert (=> b!52368 d!44246))

(assert (=> b!52368 d!44236))

(push 1)

(assert (not d!44246))

(assert (not b!52378))

(assert (not d!44230))

(assert (not b!52383))

(assert (not b!52392))

(assert (not d!44242))

(assert (not b!52398))

(assert (not b!52370))

(assert (not b!52376))

(assert (not d!44244))

(assert (not d!44216))

(assert (not d!44238))

(assert (not b!52382))

(assert (not b!52374))

(assert (not b!52390))

(assert (not d!44226))

(assert (not b!52403))

(assert (not b!52394))

(assert (not b!52402))

(assert (not d!44220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44248 () Bool)

(assert (=> d!44248 (= (nodeContent!0 (head!662 (tail!686 h2!24))) (union (insert (elem!109 (head!662 (tail!686 h2!24))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!37 (head!662 (tail!686 h2!24))))))))

(declare-fun bs!23828 () Bool)

(assert (= bs!23828 d!44248))

(declare-fun m!56387 () Bool)

(assert (=> bs!23828 m!56387))

(declare-fun m!56389 () Bool)

(assert (=> bs!23828 m!56389))

(assert (=> b!52394 d!44248))

(declare-fun d!44250 () Bool)

(declare-fun c!11380 () Bool)

(assert (=> d!44250 (= c!11380 (is-Empty!133 (tail!686 (tail!686 h2!24))))))

(declare-fun e!27200 () (Set (_ BitVec 32)))

(assert (=> d!44250 (= (heapContent!0 (tail!686 (tail!686 h2!24))) e!27200)))

(declare-fun b!52409 () Bool)

(assert (=> b!52409 (= e!27200 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52410 () Bool)

(assert (=> b!52410 (= e!27200 (union (nodeContent!0 (head!662 (tail!686 (tail!686 h2!24)))) (heapContent!0 (tail!686 (tail!686 (tail!686 h2!24))))))))

(assert (= (and d!44250 c!11380) b!52409))

(assert (= (and d!44250 (not c!11380)) b!52410))

(declare-fun m!56391 () Bool)

(assert (=> b!52410 m!56391))

(declare-fun m!56393 () Bool)

(assert (=> b!52410 m!56393))

(assert (=> b!52394 d!44250))

(declare-fun d!44252 () Bool)

(declare-fun c!11381 () Bool)

(assert (=> d!44252 (= c!11381 (is-Empty!133 lt!9170))))

(declare-fun e!27201 () (Set (_ BitVec 32)))

(assert (=> d!44252 (= (heapContent!0 lt!9170) e!27201)))

(declare-fun b!52411 () Bool)

(assert (=> b!52411 (= e!27201 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52412 () Bool)

(assert (=> b!52412 (= e!27201 (union (nodeContent!0 (head!662 lt!9170)) (heapContent!0 (tail!686 lt!9170))))))

(assert (= (and d!44252 c!11381) b!52411))

(assert (= (and d!44252 (not c!11381)) b!52412))

(declare-fun m!56395 () Bool)

(assert (=> b!52412 m!56395))

(declare-fun m!56397 () Bool)

(assert (=> b!52412 m!56397))

(assert (=> d!44220 d!44252))

(declare-fun d!44254 () Bool)

(assert (=> d!44254 (= (nodeContent!0 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) (union (insert (elem!109 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!37 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))))))))

(declare-fun bs!23829 () Bool)

(assert (= bs!23829 d!44254))

(declare-fun m!56399 () Bool)

(assert (=> bs!23829 m!56399))

(declare-fun m!56401 () Bool)

(assert (=> bs!23829 m!56401))

(assert (=> d!44220 d!44254))

(declare-fun d!44256 () Bool)

(declare-fun c!11382 () Bool)

(assert (=> d!44256 (= c!11382 (is-Empty!133 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))))

(declare-fun e!27202 () (Set (_ BitVec 32)))

(assert (=> d!44256 (= (heapContent!0 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) e!27202)))

(declare-fun b!52413 () Bool)

(assert (=> b!52413 (= e!27202 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52414 () Bool)

(assert (=> b!52414 (= e!27202 (union (nodeContent!0 (head!662 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) (heapContent!0 (tail!686 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))))))

(assert (= (and d!44256 c!11382) b!52413))

(assert (= (and d!44256 (not c!11382)) b!52414))

(declare-fun m!56403 () Bool)

(assert (=> b!52414 m!56403))

(declare-fun m!56405 () Bool)

(assert (=> b!52414 m!56405))

(assert (=> d!44220 d!44256))

(declare-fun d!44258 () Bool)

(assert (=> d!44258 (= (nodeContent!0 (head!662 lt!9160)) (union (insert (elem!109 (head!662 lt!9160)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!37 (head!662 lt!9160)))))))

(declare-fun bs!23830 () Bool)

(assert (= bs!23830 d!44258))

(declare-fun m!56407 () Bool)

(assert (=> bs!23830 m!56407))

(declare-fun m!56409 () Bool)

(assert (=> bs!23830 m!56409))

(assert (=> b!52376 d!44258))

(declare-fun d!44260 () Bool)

(declare-fun c!11383 () Bool)

(assert (=> d!44260 (= c!11383 (is-Empty!133 (tail!686 lt!9160)))))

(declare-fun e!27203 () (Set (_ BitVec 32)))

(assert (=> d!44260 (= (heapContent!0 (tail!686 lt!9160)) e!27203)))

(declare-fun b!52415 () Bool)

(assert (=> b!52415 (= e!27203 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52416 () Bool)

(assert (=> b!52416 (= e!27203 (union (nodeContent!0 (head!662 (tail!686 lt!9160))) (heapContent!0 (tail!686 (tail!686 lt!9160)))))))

(assert (= (and d!44260 c!11383) b!52415))

(assert (= (and d!44260 (not c!11383)) b!52416))

(declare-fun m!56411 () Bool)

(assert (=> b!52416 m!56411))

(declare-fun m!56413 () Bool)

(assert (=> b!52416 m!56413))

(assert (=> b!52376 d!44260))

(declare-fun b!52417 () Bool)

(declare-fun e!27204 () Heap!31)

(assert (=> b!52417 (= e!27204 (Nodes!30 (link!0 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))) Empty!133))))

(declare-fun e!27205 () Heap!31)

(declare-fun b!52420 () Bool)

(assert (=> b!52420 (= e!27205 (insertNode!0 (link!0 (link!0 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))) (head!662 (merge!1 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))))) (tail!686 (merge!1 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))))))))

(declare-fun b!52419 () Bool)

(assert (=> b!52419 (= e!27205 (Nodes!30 (link!0 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))) (merge!1 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))))

(declare-fun b!52418 () Bool)

(assert (=> b!52418 (= e!27204 e!27205)))

(declare-fun c!11384 () Bool)

(assert (=> b!52418 (= c!11384 (< (rank!37 (link!0 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))) (rank!37 (head!662 (merge!1 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))))))

(declare-fun d!44262 () Bool)

(declare-fun lt!9178 () Heap!31)

(assert (=> d!44262 (= (heapContent!0 lt!9178) (union (nodeContent!0 (link!0 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))) (heapContent!0 (merge!1 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))))))))

(assert (=> d!44262 (= lt!9178 e!27204)))

(declare-fun c!11385 () Bool)

(assert (=> d!44262 (= c!11385 (is-Empty!133 (merge!1 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))))

(assert (=> d!44262 (= (insertNode!0 (link!0 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))) (merge!1 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))) lt!9178)))

(assert (= (and b!52418 c!11384) b!52419))

(assert (= (and b!52418 (not c!11384)) b!52420))

(assert (= (and d!44262 c!11385) b!52417))

(assert (= (and d!44262 (not c!11385)) b!52418))

(assert (=> b!52420 m!56333))

(declare-fun m!56415 () Bool)

(assert (=> b!52420 m!56415))

(assert (=> b!52420 m!56415))

(declare-fun m!56417 () Bool)

(assert (=> b!52420 m!56417))

(declare-fun m!56419 () Bool)

(assert (=> d!44262 m!56419))

(assert (=> d!44262 m!56333))

(declare-fun m!56421 () Bool)

(assert (=> d!44262 m!56421))

(assert (=> d!44262 m!56335))

(declare-fun m!56423 () Bool)

(assert (=> d!44262 m!56423))

(assert (=> b!52382 d!44262))

(declare-fun d!44264 () Bool)

(assert (=> d!44264 (= (link!0 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))) (ite (bvsle (elem!109 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) (elem!109 (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))) (Node!91 (+ (rank!37 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) 1) (elem!109 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) (Nodes!30 (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))) (nodes!37 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))))) (Node!91 (+ (rank!37 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) 1) (elem!109 (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))) (Nodes!30 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (nodes!37 (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))))))

(assert (=> b!52382 d!44264))

(declare-fun e!27206 () Heap!31)

(declare-fun b!52421 () Bool)

(declare-fun lt!9179 () Heap!31)

(assert (=> b!52421 (= e!27206 (Nodes!30 (head!662 (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))) lt!9179))))

(declare-fun b!52422 () Bool)

(declare-fun e!27207 () Heap!31)

(declare-fun res!23771 () Heap!31)

(assert (=> b!52422 (= e!27207 res!23771)))

(assert (=> b!52422 true))

(assert (=> b!52422 true))

(declare-fun b!52423 () Bool)

(declare-fun e!27208 () Heap!31)

(assert (=> b!52423 (= e!27208 (Nodes!30 (head!662 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) lt!9179))))

(declare-fun b!52424 () Bool)

(assert (=> b!52424 (= e!27206 (insertNode!0 (link!0 (head!662 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) (head!662 (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))) (merge!1 (tail!686 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) (tail!686 (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))))))))

(declare-fun b!52425 () Bool)

(declare-fun lt!9180 () Bool)

(assert (=> b!52425 (= e!27207 (merge!1 (ite lt!9180 (tail!686 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) (ite lt!9180 (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))) (tail!686 (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))))))))

(declare-fun b!52426 () Bool)

(declare-fun e!27209 () Heap!31)

(assert (=> b!52426 (= e!27209 e!27208)))

(declare-fun c!11390 () Bool)

(assert (=> b!52426 (= c!11390 lt!9180)))

(assert (=> b!52426 (= lt!9179 e!27207)))

(declare-fun c!11388 () Bool)

(assert (=> b!52426 (= c!11388 (or lt!9180 (< (rank!37 (head!662 (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))) (rank!37 (head!662 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))))))))))

(assert (=> b!52426 (= lt!9180 (< (rank!37 (head!662 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))))) (rank!37 (head!662 (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))))))))

(declare-fun lt!9181 () Heap!31)

(declare-fun d!44266 () Bool)

(assert (=> d!44266 (= (heapContent!0 lt!9181) (union (heapContent!0 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) (heapContent!0 (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))))

(declare-fun e!27210 () Heap!31)

(assert (=> d!44266 (= lt!9181 e!27210)))

(declare-fun c!11387 () Bool)

(assert (=> d!44266 (= c!11387 (is-Empty!133 (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))))))

(assert (=> d!44266 (= (merge!1 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))) lt!9181)))

(declare-fun b!52427 () Bool)

(assert (=> b!52427 (= e!27209 (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))

(declare-fun b!52428 () Bool)

(assert (=> b!52428 (= e!27208 e!27206)))

(declare-fun c!11389 () Bool)

(assert (=> b!52428 (= c!11389 (< (rank!37 (head!662 (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))) (rank!37 (head!662 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))))))))

(declare-fun b!52429 () Bool)

(assert (=> b!52429 (= e!27210 e!27209)))

(declare-fun c!11386 () Bool)

(assert (=> b!52429 (= c!11386 (is-Empty!133 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))))))

(declare-fun b!52430 () Bool)

(assert (=> b!52430 (= e!27210 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))))))

(assert (= (and b!52426 c!11388) b!52425))

(assert (= (and b!52426 (not c!11388)) b!52422))

(assert (= (and b!52428 c!11389) b!52421))

(assert (= (and b!52428 (not c!11389)) b!52424))

(assert (= (and b!52426 c!11390) b!52423))

(assert (= (and b!52426 (not c!11390)) b!52428))

(assert (= (and b!52429 c!11386) b!52427))

(assert (= (and b!52429 (not c!11386)) b!52426))

(assert (= (and d!44266 c!11387) b!52430))

(assert (= (and d!44266 (not c!11387)) b!52429))

(declare-fun m!56425 () Bool)

(assert (=> b!52424 m!56425))

(declare-fun m!56427 () Bool)

(assert (=> b!52424 m!56427))

(assert (=> b!52424 m!56425))

(assert (=> b!52424 m!56427))

(declare-fun m!56429 () Bool)

(assert (=> b!52424 m!56429))

(declare-fun m!56431 () Bool)

(assert (=> b!52425 m!56431))

(declare-fun m!56433 () Bool)

(assert (=> d!44266 m!56433))

(declare-fun m!56435 () Bool)

(assert (=> d!44266 m!56435))

(declare-fun m!56437 () Bool)

(assert (=> d!44266 m!56437))

(assert (=> b!52382 d!44266))

(declare-fun d!44268 () Bool)

(declare-fun c!11391 () Bool)

(assert (=> d!44268 (= c!11391 (is-Empty!133 (nodes!37 (head!662 h2!24))))))

(declare-fun e!27211 () (Set (_ BitVec 32)))

(assert (=> d!44268 (= (heapContent!0 (nodes!37 (head!662 h2!24))) e!27211)))

(declare-fun b!52431 () Bool)

(assert (=> b!52431 (= e!27211 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52432 () Bool)

(assert (=> b!52432 (= e!27211 (union (nodeContent!0 (head!662 (nodes!37 (head!662 h2!24)))) (heapContent!0 (tail!686 (nodes!37 (head!662 h2!24))))))))

(assert (= (and d!44268 c!11391) b!52431))

(assert (= (and d!44268 (not c!11391)) b!52432))

(declare-fun m!56439 () Bool)

(assert (=> b!52432 m!56439))

(declare-fun m!56441 () Bool)

(assert (=> b!52432 m!56441))

(assert (=> d!44246 d!44268))

(declare-fun d!44270 () Bool)

(declare-fun c!11392 () Bool)

(assert (=> d!44270 (= c!11392 (is-Empty!133 (nodes!37 (head!662 h1!26))))))

(declare-fun e!27212 () (Set (_ BitVec 32)))

(assert (=> d!44270 (= (heapContent!0 (nodes!37 (head!662 h1!26))) e!27212)))

(declare-fun b!52433 () Bool)

(assert (=> b!52433 (= e!27212 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52434 () Bool)

(assert (=> b!52434 (= e!27212 (union (nodeContent!0 (head!662 (nodes!37 (head!662 h1!26)))) (heapContent!0 (tail!686 (nodes!37 (head!662 h1!26))))))))

(assert (= (and d!44270 c!11392) b!52433))

(assert (= (and d!44270 (not c!11392)) b!52434))

(declare-fun m!56443 () Bool)

(assert (=> b!52434 m!56443))

(declare-fun m!56445 () Bool)

(assert (=> b!52434 m!56445))

(assert (=> d!44244 d!44270))

(declare-fun d!44272 () Bool)

(declare-fun c!11393 () Bool)

(assert (=> d!44272 (= c!11393 (is-Empty!133 (nodes!37 (head!662 res!23500))))))

(declare-fun e!27213 () (Set (_ BitVec 32)))

(assert (=> d!44272 (= (heapContent!0 (nodes!37 (head!662 res!23500))) e!27213)))

(declare-fun b!52435 () Bool)

(assert (=> b!52435 (= e!27213 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52436 () Bool)

(assert (=> b!52436 (= e!27213 (union (nodeContent!0 (head!662 (nodes!37 (head!662 res!23500)))) (heapContent!0 (tail!686 (nodes!37 (head!662 res!23500))))))))

(assert (= (and d!44272 c!11393) b!52435))

(assert (= (and d!44272 (not c!11393)) b!52436))

(declare-fun m!56447 () Bool)

(assert (=> b!52436 m!56447))

(declare-fun m!56449 () Bool)

(assert (=> b!52436 m!56449))

(assert (=> d!44216 d!44272))

(declare-fun d!44274 () Bool)

(assert (=> d!44274 (= (nodeContent!0 (head!662 (tail!686 res!23500))) (union (insert (elem!109 (head!662 (tail!686 res!23500))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!37 (head!662 (tail!686 res!23500))))))))

(declare-fun bs!23831 () Bool)

(assert (= bs!23831 d!44274))

(declare-fun m!56451 () Bool)

(assert (=> bs!23831 m!56451))

(declare-fun m!56453 () Bool)

(assert (=> bs!23831 m!56453))

(assert (=> b!52370 d!44274))

(declare-fun d!44276 () Bool)

(declare-fun c!11394 () Bool)

(assert (=> d!44276 (= c!11394 (is-Empty!133 (tail!686 (tail!686 res!23500))))))

(declare-fun e!27214 () (Set (_ BitVec 32)))

(assert (=> d!44276 (= (heapContent!0 (tail!686 (tail!686 res!23500))) e!27214)))

(declare-fun b!52437 () Bool)

(assert (=> b!52437 (= e!27214 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52438 () Bool)

(assert (=> b!52438 (= e!27214 (union (nodeContent!0 (head!662 (tail!686 (tail!686 res!23500)))) (heapContent!0 (tail!686 (tail!686 (tail!686 res!23500))))))))

(assert (= (and d!44276 c!11394) b!52437))

(assert (= (and d!44276 (not c!11394)) b!52438))

(declare-fun m!56455 () Bool)

(assert (=> b!52438 m!56455))

(declare-fun m!56457 () Bool)

(assert (=> b!52438 m!56457))

(assert (=> b!52370 d!44276))

(declare-fun d!44278 () Bool)

(declare-fun c!11395 () Bool)

(assert (=> d!44278 (= c!11395 (is-Empty!133 lt!9177))))

(declare-fun e!27215 () (Set (_ BitVec 32)))

(assert (=> d!44278 (= (heapContent!0 lt!9177) e!27215)))

(declare-fun b!52439 () Bool)

(assert (=> b!52439 (= e!27215 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52440 () Bool)

(assert (=> b!52440 (= e!27215 (union (nodeContent!0 (head!662 lt!9177)) (heapContent!0 (tail!686 lt!9177))))))

(assert (= (and d!44278 c!11395) b!52439))

(assert (= (and d!44278 (not c!11395)) b!52440))

(declare-fun m!56459 () Bool)

(assert (=> b!52440 m!56459))

(declare-fun m!56461 () Bool)

(assert (=> b!52440 m!56461))

(assert (=> d!44242 d!44278))

(declare-fun d!44280 () Bool)

(declare-fun c!11396 () Bool)

(assert (=> d!44280 (= c!11396 (is-Empty!133 (tail!686 (tail!686 h1!26))))))

(declare-fun e!27216 () (Set (_ BitVec 32)))

(assert (=> d!44280 (= (heapContent!0 (tail!686 (tail!686 h1!26))) e!27216)))

(declare-fun b!52441 () Bool)

(assert (=> b!52441 (= e!27216 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52442 () Bool)

(assert (=> b!52442 (= e!27216 (union (nodeContent!0 (head!662 (tail!686 (tail!686 h1!26)))) (heapContent!0 (tail!686 (tail!686 (tail!686 h1!26))))))))

(assert (= (and d!44280 c!11396) b!52441))

(assert (= (and d!44280 (not c!11396)) b!52442))

(declare-fun m!56463 () Bool)

(assert (=> b!52442 m!56463))

(declare-fun m!56465 () Bool)

(assert (=> b!52442 m!56465))

(assert (=> d!44242 d!44280))

(assert (=> d!44242 d!44250))

(declare-fun d!44282 () Bool)

(declare-fun c!11397 () Bool)

(assert (=> d!44282 (= c!11397 (is-Empty!133 lt!9174))))

(declare-fun e!27217 () (Set (_ BitVec 32)))

(assert (=> d!44282 (= (heapContent!0 lt!9174) e!27217)))

(declare-fun b!52443 () Bool)

(assert (=> b!52443 (= e!27217 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52444 () Bool)

(assert (=> b!52444 (= e!27217 (union (nodeContent!0 (head!662 lt!9174)) (heapContent!0 (tail!686 lt!9174))))))

(assert (= (and d!44282 c!11397) b!52443))

(assert (= (and d!44282 (not c!11397)) b!52444))

(declare-fun m!56467 () Bool)

(assert (=> b!52444 m!56467))

(declare-fun m!56469 () Bool)

(assert (=> b!52444 m!56469))

(assert (=> d!44238 d!44282))

(declare-fun d!44284 () Bool)

(assert (=> d!44284 (= (nodeContent!0 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24)))) (union (insert (elem!109 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24)))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!37 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24)))))))))

(declare-fun bs!23832 () Bool)

(assert (= bs!23832 d!44284))

(declare-fun m!56471 () Bool)

(assert (=> bs!23832 m!56471))

(declare-fun m!56473 () Bool)

(assert (=> bs!23832 m!56473))

(assert (=> d!44238 d!44284))

(declare-fun d!44286 () Bool)

(declare-fun c!11398 () Bool)

(assert (=> d!44286 (= c!11398 (is-Empty!133 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))))))

(declare-fun e!27218 () (Set (_ BitVec 32)))

(assert (=> d!44286 (= (heapContent!0 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))) e!27218)))

(declare-fun b!52445 () Bool)

(assert (=> b!52445 (= e!27218 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52446 () Bool)

(assert (=> b!52446 (= e!27218 (union (nodeContent!0 (head!662 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))))) (heapContent!0 (tail!686 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))))))))

(assert (= (and d!44286 c!11398) b!52445))

(assert (= (and d!44286 (not c!11398)) b!52446))

(declare-fun m!56475 () Bool)

(assert (=> b!52446 m!56475))

(declare-fun m!56477 () Bool)

(assert (=> b!52446 m!56477))

(assert (=> d!44238 d!44286))

(declare-fun b!52447 () Bool)

(declare-fun e!27219 () Heap!31)

(assert (=> b!52447 (= e!27219 (Nodes!30 (link!0 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24))) (head!662 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))))) Empty!133))))

(declare-fun b!52450 () Bool)

(declare-fun e!27220 () Heap!31)

(assert (=> b!52450 (= e!27220 (insertNode!0 (link!0 (link!0 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24))) (head!662 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))))) (head!662 (tail!686 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))))) (tail!686 (tail!686 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))))))))

(declare-fun b!52449 () Bool)

(assert (=> b!52449 (= e!27220 (Nodes!30 (link!0 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24))) (head!662 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))))) (tail!686 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))))))))

(declare-fun b!52448 () Bool)

(assert (=> b!52448 (= e!27219 e!27220)))

(declare-fun c!11399 () Bool)

(assert (=> b!52448 (= c!11399 (< (rank!37 (link!0 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24))) (head!662 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))))) (rank!37 (head!662 (tail!686 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))))))))))

(declare-fun d!44288 () Bool)

(declare-fun lt!9182 () Heap!31)

(assert (=> d!44288 (= (heapContent!0 lt!9182) (union (nodeContent!0 (link!0 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24))) (head!662 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))))) (heapContent!0 (tail!686 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))))))))

(assert (=> d!44288 (= lt!9182 e!27219)))

(declare-fun c!11400 () Bool)

(assert (=> d!44288 (= c!11400 (is-Empty!133 (tail!686 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))))))))

(assert (=> d!44288 (= (insertNode!0 (link!0 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24))) (head!662 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))))) (tail!686 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))))) lt!9182)))

(assert (= (and b!52448 c!11399) b!52449))

(assert (= (and b!52448 (not c!11399)) b!52450))

(assert (= (and d!44288 c!11400) b!52447))

(assert (= (and d!44288 (not c!11400)) b!52448))

(assert (=> b!52450 m!56359))

(declare-fun m!56479 () Bool)

(assert (=> b!52450 m!56479))

(assert (=> b!52450 m!56479))

(declare-fun m!56481 () Bool)

(assert (=> b!52450 m!56481))

(declare-fun m!56483 () Bool)

(assert (=> d!44288 m!56483))

(assert (=> d!44288 m!56359))

(declare-fun m!56485 () Bool)

(assert (=> d!44288 m!56485))

(assert (=> d!44288 m!56477))

(assert (=> b!52398 d!44288))

(declare-fun d!44290 () Bool)

(assert (=> d!44290 (= (link!0 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24))) (head!662 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))))) (ite (bvsle (elem!109 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24)))) (elem!109 (head!662 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))))) (Node!91 (+ (rank!37 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24)))) 1) (elem!109 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24)))) (Nodes!30 (head!662 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))) (nodes!37 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24)))))) (Node!91 (+ (rank!37 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24)))) 1) (elem!109 (head!662 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24))))) (Nodes!30 (link!0 (head!662 (tail!686 h1!26)) (head!662 (tail!686 h2!24))) (nodes!37 (head!662 (merge!1 (tail!686 (tail!686 h1!26)) (tail!686 (tail!686 h2!24)))))))))))

(assert (=> b!52398 d!44290))

(declare-fun b!52451 () Bool)

(declare-fun e!27221 () Heap!31)

(assert (=> b!52451 (= e!27221 (Nodes!30 (link!0 (head!662 (tail!686 (tail!686 h1!26))) (head!662 (tail!686 (tail!686 h2!24)))) Empty!133))))

(declare-fun b!52454 () Bool)

(declare-fun e!27222 () Heap!31)

(assert (=> b!52454 (= e!27222 (insertNode!0 (link!0 (link!0 (head!662 (tail!686 (tail!686 h1!26))) (head!662 (tail!686 (tail!686 h2!24)))) (head!662 (merge!1 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 (tail!686 h2!24)))))) (tail!686 (merge!1 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 (tail!686 h2!24)))))))))

(declare-fun b!52453 () Bool)

(assert (=> b!52453 (= e!27222 (Nodes!30 (link!0 (head!662 (tail!686 (tail!686 h1!26))) (head!662 (tail!686 (tail!686 h2!24)))) (merge!1 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 (tail!686 h2!24))))))))

(declare-fun b!52452 () Bool)

(assert (=> b!52452 (= e!27221 e!27222)))

(declare-fun c!11401 () Bool)

(assert (=> b!52452 (= c!11401 (< (rank!37 (link!0 (head!662 (tail!686 (tail!686 h1!26))) (head!662 (tail!686 (tail!686 h2!24))))) (rank!37 (head!662 (merge!1 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 (tail!686 h2!24))))))))))

(declare-fun d!44292 () Bool)

(declare-fun lt!9183 () Heap!31)

(assert (=> d!44292 (= (heapContent!0 lt!9183) (union (nodeContent!0 (link!0 (head!662 (tail!686 (tail!686 h1!26))) (head!662 (tail!686 (tail!686 h2!24))))) (heapContent!0 (merge!1 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 (tail!686 h2!24)))))))))

(assert (=> d!44292 (= lt!9183 e!27221)))

(declare-fun c!11402 () Bool)

(assert (=> d!44292 (= c!11402 (is-Empty!133 (merge!1 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 (tail!686 h2!24))))))))

(assert (=> d!44292 (= (insertNode!0 (link!0 (head!662 (tail!686 (tail!686 h1!26))) (head!662 (tail!686 (tail!686 h2!24)))) (merge!1 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 (tail!686 h2!24))))) lt!9183)))

(assert (= (and b!52452 c!11401) b!52453))

(assert (= (and b!52452 (not c!11401)) b!52454))

(assert (= (and d!44292 c!11402) b!52451))

(assert (= (and d!44292 (not c!11402)) b!52452))

(assert (=> b!52454 m!56369))

(declare-fun m!56487 () Bool)

(assert (=> b!52454 m!56487))

(assert (=> b!52454 m!56487))

(declare-fun m!56489 () Bool)

(assert (=> b!52454 m!56489))

(declare-fun m!56491 () Bool)

(assert (=> d!44292 m!56491))

(assert (=> d!44292 m!56369))

(declare-fun m!56493 () Bool)

(assert (=> d!44292 m!56493))

(assert (=> d!44292 m!56371))

(declare-fun m!56495 () Bool)

(assert (=> d!44292 m!56495))

(assert (=> b!52402 d!44292))

(declare-fun d!44294 () Bool)

(assert (=> d!44294 (= (link!0 (head!662 (tail!686 (tail!686 h1!26))) (head!662 (tail!686 (tail!686 h2!24)))) (ite (bvsle (elem!109 (head!662 (tail!686 (tail!686 h1!26)))) (elem!109 (head!662 (tail!686 (tail!686 h2!24))))) (Node!91 (+ (rank!37 (head!662 (tail!686 (tail!686 h1!26)))) 1) (elem!109 (head!662 (tail!686 (tail!686 h1!26)))) (Nodes!30 (head!662 (tail!686 (tail!686 h2!24))) (nodes!37 (head!662 (tail!686 (tail!686 h1!26)))))) (Node!91 (+ (rank!37 (head!662 (tail!686 (tail!686 h1!26)))) 1) (elem!109 (head!662 (tail!686 (tail!686 h2!24)))) (Nodes!30 (head!662 (tail!686 (tail!686 h1!26))) (nodes!37 (head!662 (tail!686 (tail!686 h2!24))))))))))

(assert (=> b!52402 d!44294))

(declare-fun b!52455 () Bool)

(declare-fun e!27223 () Heap!31)

(declare-fun lt!9184 () Heap!31)

(assert (=> b!52455 (= e!27223 (Nodes!30 (head!662 (tail!686 (tail!686 (tail!686 h2!24)))) lt!9184))))

(declare-fun b!52456 () Bool)

(declare-fun e!27224 () Heap!31)

(declare-fun res!23772 () Heap!31)

(assert (=> b!52456 (= e!27224 res!23772)))

(assert (=> b!52456 true))

(assert (=> b!52456 true))

(declare-fun b!52457 () Bool)

(declare-fun e!27225 () Heap!31)

(assert (=> b!52457 (= e!27225 (Nodes!30 (head!662 (tail!686 (tail!686 (tail!686 h1!26)))) lt!9184))))

(declare-fun b!52458 () Bool)

(assert (=> b!52458 (= e!27223 (insertNode!0 (link!0 (head!662 (tail!686 (tail!686 (tail!686 h1!26)))) (head!662 (tail!686 (tail!686 (tail!686 h2!24))))) (merge!1 (tail!686 (tail!686 (tail!686 (tail!686 h1!26)))) (tail!686 (tail!686 (tail!686 (tail!686 h2!24)))))))))

(declare-fun b!52459 () Bool)

(declare-fun lt!9185 () Bool)

(assert (=> b!52459 (= e!27224 (merge!1 (ite lt!9185 (tail!686 (tail!686 (tail!686 (tail!686 h1!26)))) (tail!686 (tail!686 (tail!686 h1!26)))) (ite lt!9185 (tail!686 (tail!686 (tail!686 h2!24))) (tail!686 (tail!686 (tail!686 (tail!686 h2!24)))))))))

(declare-fun b!52460 () Bool)

(declare-fun e!27226 () Heap!31)

(assert (=> b!52460 (= e!27226 e!27225)))

(declare-fun c!11407 () Bool)

(assert (=> b!52460 (= c!11407 lt!9185)))

(assert (=> b!52460 (= lt!9184 e!27224)))

(declare-fun c!11405 () Bool)

(assert (=> b!52460 (= c!11405 (or lt!9185 (< (rank!37 (head!662 (tail!686 (tail!686 (tail!686 h2!24))))) (rank!37 (head!662 (tail!686 (tail!686 (tail!686 h1!26))))))))))

(assert (=> b!52460 (= lt!9185 (< (rank!37 (head!662 (tail!686 (tail!686 (tail!686 h1!26))))) (rank!37 (head!662 (tail!686 (tail!686 (tail!686 h2!24)))))))))

(declare-fun d!44296 () Bool)

(declare-fun lt!9186 () Heap!31)

(assert (=> d!44296 (= (heapContent!0 lt!9186) (union (heapContent!0 (tail!686 (tail!686 (tail!686 h1!26)))) (heapContent!0 (tail!686 (tail!686 (tail!686 h2!24))))))))

(declare-fun e!27227 () Heap!31)

(assert (=> d!44296 (= lt!9186 e!27227)))

(declare-fun c!11404 () Bool)

(assert (=> d!44296 (= c!11404 (is-Empty!133 (tail!686 (tail!686 (tail!686 h2!24)))))))

(assert (=> d!44296 (= (merge!1 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 (tail!686 h2!24)))) lt!9186)))

(declare-fun b!52461 () Bool)

(assert (=> b!52461 (= e!27226 (tail!686 (tail!686 (tail!686 h2!24))))))

(declare-fun b!52462 () Bool)

(assert (=> b!52462 (= e!27225 e!27223)))

(declare-fun c!11406 () Bool)

(assert (=> b!52462 (= c!11406 (< (rank!37 (head!662 (tail!686 (tail!686 (tail!686 h2!24))))) (rank!37 (head!662 (tail!686 (tail!686 (tail!686 h1!26)))))))))

(declare-fun b!52463 () Bool)

(assert (=> b!52463 (= e!27227 e!27226)))

(declare-fun c!11403 () Bool)

(assert (=> b!52463 (= c!11403 (is-Empty!133 (tail!686 (tail!686 (tail!686 h1!26)))))))

(declare-fun b!52464 () Bool)

(assert (=> b!52464 (= e!27227 (tail!686 (tail!686 (tail!686 h1!26))))))

(assert (= (and b!52460 c!11405) b!52459))

(assert (= (and b!52460 (not c!11405)) b!52456))

(assert (= (and b!52462 c!11406) b!52455))

(assert (= (and b!52462 (not c!11406)) b!52458))

(assert (= (and b!52460 c!11407) b!52457))

(assert (= (and b!52460 (not c!11407)) b!52462))

(assert (= (and b!52463 c!11403) b!52461))

(assert (= (and b!52463 (not c!11403)) b!52460))

(assert (= (and d!44296 c!11404) b!52464))

(assert (= (and d!44296 (not c!11404)) b!52463))

(declare-fun m!56497 () Bool)

(assert (=> b!52458 m!56497))

(declare-fun m!56499 () Bool)

(assert (=> b!52458 m!56499))

(assert (=> b!52458 m!56497))

(assert (=> b!52458 m!56499))

(declare-fun m!56501 () Bool)

(assert (=> b!52458 m!56501))

(declare-fun m!56503 () Bool)

(assert (=> b!52459 m!56503))

(declare-fun m!56505 () Bool)

(assert (=> d!44296 m!56505))

(assert (=> d!44296 m!56465))

(assert (=> d!44296 m!56393))

(assert (=> b!52402 d!44296))

(declare-fun d!44298 () Bool)

(declare-fun c!11408 () Bool)

(assert (=> d!44298 (= c!11408 (is-Empty!133 (nodes!37 (link!0 (head!662 h1!26) (head!662 h2!24)))))))

(declare-fun e!27228 () (Set (_ BitVec 32)))

(assert (=> d!44298 (= (heapContent!0 (nodes!37 (link!0 (head!662 h1!26) (head!662 h2!24)))) e!27228)))

(declare-fun b!52465 () Bool)

(assert (=> b!52465 (= e!27228 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52466 () Bool)

(assert (=> b!52466 (= e!27228 (union (nodeContent!0 (head!662 (nodes!37 (link!0 (head!662 h1!26) (head!662 h2!24))))) (heapContent!0 (tail!686 (nodes!37 (link!0 (head!662 h1!26) (head!662 h2!24)))))))))

(assert (= (and d!44298 c!11408) b!52465))

(assert (= (and d!44298 (not c!11408)) b!52466))

(declare-fun m!56507 () Bool)

(assert (=> b!52466 m!56507))

(declare-fun m!56509 () Bool)

(assert (=> b!52466 m!56509))

(assert (=> d!44226 d!44298))

(declare-fun lt!9187 () Heap!31)

(declare-fun e!27229 () Heap!31)

(declare-fun b!52467 () Bool)

(assert (=> b!52467 (= e!27229 (Nodes!30 (head!662 (ite lt!9172 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))) lt!9187))))

(declare-fun b!52468 () Bool)

(declare-fun e!27230 () Heap!31)

(declare-fun res!23773 () Heap!31)

(assert (=> b!52468 (= e!27230 res!23773)))

(assert (=> b!52468 true))

(assert (=> b!52468 true))

(declare-fun e!27231 () Heap!31)

(declare-fun b!52469 () Bool)

(assert (=> b!52469 (= e!27231 (Nodes!30 (head!662 (ite lt!9172 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) lt!9187))))

(declare-fun b!52470 () Bool)

(assert (=> b!52470 (= e!27229 (insertNode!0 (link!0 (head!662 (ite lt!9172 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) (head!662 (ite lt!9172 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))))) (merge!1 (tail!686 (ite lt!9172 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) (tail!686 (ite lt!9172 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))))))

(declare-fun b!52471 () Bool)

(declare-fun lt!9188 () Bool)

(assert (=> b!52471 (= e!27230 (merge!1 (ite lt!9188 (tail!686 (ite lt!9172 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) (ite lt!9172 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) (ite lt!9188 (ite lt!9172 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))) (tail!686 (ite lt!9172 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))))))

(declare-fun b!52472 () Bool)

(declare-fun e!27232 () Heap!31)

(assert (=> b!52472 (= e!27232 e!27231)))

(declare-fun c!11413 () Bool)

(assert (=> b!52472 (= c!11413 lt!9188)))

(assert (=> b!52472 (= lt!9187 e!27230)))

(declare-fun c!11411 () Bool)

(assert (=> b!52472 (= c!11411 (or lt!9188 (< (rank!37 (head!662 (ite lt!9172 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))))) (rank!37 (head!662 (ite lt!9172 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))))))))))

(assert (=> b!52472 (= lt!9188 (< (rank!37 (head!662 (ite lt!9172 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))))) (rank!37 (head!662 (ite lt!9172 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))))))

(declare-fun lt!9189 () Heap!31)

(declare-fun d!44300 () Bool)

(assert (=> d!44300 (= (heapContent!0 lt!9189) (union (heapContent!0 (ite lt!9172 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) (heapContent!0 (ite lt!9172 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))))))))

(declare-fun e!27233 () Heap!31)

(assert (=> d!44300 (= lt!9189 e!27233)))

(declare-fun c!11410 () Bool)

(assert (=> d!44300 (= c!11410 (is-Empty!133 (ite lt!9172 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))))

(assert (=> d!44300 (= (merge!1 (ite lt!9172 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9172 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))) lt!9189)))

(declare-fun b!52473 () Bool)

(assert (=> b!52473 (= e!27232 (ite lt!9172 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))))))

(declare-fun b!52474 () Bool)

(assert (=> b!52474 (= e!27231 e!27229)))

(declare-fun c!11412 () Bool)

(assert (=> b!52474 (= c!11412 (< (rank!37 (head!662 (ite lt!9172 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))) (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))))) (rank!37 (head!662 (ite lt!9172 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))))))))

(declare-fun b!52475 () Bool)

(assert (=> b!52475 (= e!27233 e!27232)))

(declare-fun c!11409 () Bool)

(assert (=> b!52475 (= c!11409 (is-Empty!133 (ite lt!9172 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))))))

(declare-fun b!52476 () Bool)

(assert (=> b!52476 (= e!27233 (ite lt!9172 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))))))

(assert (= (and b!52472 c!11411) b!52471))

(assert (= (and b!52472 (not c!11411)) b!52468))

(assert (= (and b!52474 c!11412) b!52467))

(assert (= (and b!52474 (not c!11412)) b!52470))

(assert (= (and b!52472 c!11413) b!52469))

(assert (= (and b!52472 (not c!11413)) b!52474))

(assert (= (and b!52475 c!11409) b!52473))

(assert (= (and b!52475 (not c!11409)) b!52472))

(assert (= (and d!44300 c!11410) b!52476))

(assert (= (and d!44300 (not c!11410)) b!52475))

(declare-fun m!56511 () Bool)

(assert (=> b!52470 m!56511))

(declare-fun m!56513 () Bool)

(assert (=> b!52470 m!56513))

(assert (=> b!52470 m!56511))

(assert (=> b!52470 m!56513))

(declare-fun m!56515 () Bool)

(assert (=> b!52470 m!56515))

(declare-fun m!56517 () Bool)

(assert (=> b!52471 m!56517))

(declare-fun m!56519 () Bool)

(assert (=> d!44300 m!56519))

(declare-fun m!56521 () Bool)

(assert (=> d!44300 m!56521))

(declare-fun m!56523 () Bool)

(assert (=> d!44300 m!56523))

(assert (=> b!52383 d!44300))

(declare-fun d!44302 () Bool)

(assert (=> d!44302 (= (nodeContent!0 (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (union (insert (elem!109 (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!37 (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))))))

(declare-fun bs!23833 () Bool)

(assert (= bs!23833 d!44302))

(declare-fun m!56525 () Bool)

(assert (=> bs!23833 m!56525))

(declare-fun m!56527 () Bool)

(assert (=> bs!23833 m!56527))

(assert (=> b!52378 d!44302))

(assert (=> b!52378 d!44256))

(declare-fun e!27234 () Heap!31)

(declare-fun b!52477 () Bool)

(declare-fun lt!9190 () Heap!31)

(assert (=> b!52477 (= e!27234 (Nodes!30 (head!662 (ite lt!9176 (tail!686 (tail!686 h2!24)) (tail!686 (tail!686 (tail!686 h2!24))))) lt!9190))))

(declare-fun b!52478 () Bool)

(declare-fun e!27235 () Heap!31)

(declare-fun res!23774 () Heap!31)

(assert (=> b!52478 (= e!27235 res!23774)))

(assert (=> b!52478 true))

(assert (=> b!52478 true))

(declare-fun e!27236 () Heap!31)

(declare-fun b!52479 () Bool)

(assert (=> b!52479 (= e!27236 (Nodes!30 (head!662 (ite lt!9176 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 h1!26)))) lt!9190))))

(declare-fun b!52480 () Bool)

(assert (=> b!52480 (= e!27234 (insertNode!0 (link!0 (head!662 (ite lt!9176 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 h1!26)))) (head!662 (ite lt!9176 (tail!686 (tail!686 h2!24)) (tail!686 (tail!686 (tail!686 h2!24)))))) (merge!1 (tail!686 (ite lt!9176 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 h1!26)))) (tail!686 (ite lt!9176 (tail!686 (tail!686 h2!24)) (tail!686 (tail!686 (tail!686 h2!24))))))))))

(declare-fun b!52481 () Bool)

(declare-fun lt!9191 () Bool)

(assert (=> b!52481 (= e!27235 (merge!1 (ite lt!9191 (tail!686 (ite lt!9176 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 h1!26)))) (ite lt!9176 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 h1!26)))) (ite lt!9191 (ite lt!9176 (tail!686 (tail!686 h2!24)) (tail!686 (tail!686 (tail!686 h2!24)))) (tail!686 (ite lt!9176 (tail!686 (tail!686 h2!24)) (tail!686 (tail!686 (tail!686 h2!24))))))))))

(declare-fun b!52482 () Bool)

(declare-fun e!27237 () Heap!31)

(assert (=> b!52482 (= e!27237 e!27236)))

(declare-fun c!11418 () Bool)

(assert (=> b!52482 (= c!11418 lt!9191)))

(assert (=> b!52482 (= lt!9190 e!27235)))

(declare-fun c!11416 () Bool)

(assert (=> b!52482 (= c!11416 (or lt!9191 (< (rank!37 (head!662 (ite lt!9176 (tail!686 (tail!686 h2!24)) (tail!686 (tail!686 (tail!686 h2!24)))))) (rank!37 (head!662 (ite lt!9176 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 h1!26))))))))))

(assert (=> b!52482 (= lt!9191 (< (rank!37 (head!662 (ite lt!9176 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 h1!26))))) (rank!37 (head!662 (ite lt!9176 (tail!686 (tail!686 h2!24)) (tail!686 (tail!686 (tail!686 h2!24))))))))))

(declare-fun lt!9192 () Heap!31)

(declare-fun d!44304 () Bool)

(assert (=> d!44304 (= (heapContent!0 lt!9192) (union (heapContent!0 (ite lt!9176 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 h1!26)))) (heapContent!0 (ite lt!9176 (tail!686 (tail!686 h2!24)) (tail!686 (tail!686 (tail!686 h2!24)))))))))

(declare-fun e!27238 () Heap!31)

(assert (=> d!44304 (= lt!9192 e!27238)))

(declare-fun c!11415 () Bool)

(assert (=> d!44304 (= c!11415 (is-Empty!133 (ite lt!9176 (tail!686 (tail!686 h2!24)) (tail!686 (tail!686 (tail!686 h2!24))))))))

(assert (=> d!44304 (= (merge!1 (ite lt!9176 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 h1!26))) (ite lt!9176 (tail!686 (tail!686 h2!24)) (tail!686 (tail!686 (tail!686 h2!24))))) lt!9192)))

(declare-fun b!52483 () Bool)

(assert (=> b!52483 (= e!27237 (ite lt!9176 (tail!686 (tail!686 h2!24)) (tail!686 (tail!686 (tail!686 h2!24)))))))

(declare-fun b!52484 () Bool)

(assert (=> b!52484 (= e!27236 e!27234)))

(declare-fun c!11417 () Bool)

(assert (=> b!52484 (= c!11417 (< (rank!37 (head!662 (ite lt!9176 (tail!686 (tail!686 h2!24)) (tail!686 (tail!686 (tail!686 h2!24)))))) (rank!37 (head!662 (ite lt!9176 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 h1!26)))))))))

(declare-fun b!52485 () Bool)

(assert (=> b!52485 (= e!27238 e!27237)))

(declare-fun c!11414 () Bool)

(assert (=> b!52485 (= c!11414 (is-Empty!133 (ite lt!9176 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 h1!26)))))))

(declare-fun b!52486 () Bool)

(assert (=> b!52486 (= e!27238 (ite lt!9176 (tail!686 (tail!686 (tail!686 h1!26))) (tail!686 (tail!686 h1!26))))))

(assert (= (and b!52482 c!11416) b!52481))

(assert (= (and b!52482 (not c!11416)) b!52478))

(assert (= (and b!52484 c!11417) b!52477))

(assert (= (and b!52484 (not c!11417)) b!52480))

(assert (= (and b!52482 c!11418) b!52479))

(assert (= (and b!52482 (not c!11418)) b!52484))

(assert (= (and b!52485 c!11414) b!52483))

(assert (= (and b!52485 (not c!11414)) b!52482))

(assert (= (and d!44304 c!11415) b!52486))

(assert (= (and d!44304 (not c!11415)) b!52485))

(declare-fun m!56529 () Bool)

(assert (=> b!52480 m!56529))

(declare-fun m!56531 () Bool)

(assert (=> b!52480 m!56531))

(assert (=> b!52480 m!56529))

(assert (=> b!52480 m!56531))

(declare-fun m!56533 () Bool)

(assert (=> b!52480 m!56533))

(declare-fun m!56535 () Bool)

(assert (=> b!52481 m!56535))

(declare-fun m!56537 () Bool)

(assert (=> d!44304 m!56537))

(declare-fun m!56539 () Bool)

(assert (=> d!44304 m!56539))

(declare-fun m!56541 () Bool)

(assert (=> d!44304 m!56541))

(assert (=> b!52403 d!44304))

(declare-fun d!44306 () Bool)

(assert (=> d!44306 (= (nodeContent!0 (head!662 (tail!686 h1!26))) (union (insert (elem!109 (head!662 (tail!686 h1!26))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!37 (head!662 (tail!686 h1!26))))))))

(declare-fun bs!23834 () Bool)

(assert (= bs!23834 d!44306))

(declare-fun m!56543 () Bool)

(assert (=> bs!23834 m!56543))

(declare-fun m!56545 () Bool)

(assert (=> bs!23834 m!56545))

(assert (=> b!52392 d!44306))

(assert (=> b!52392 d!44280))

(declare-fun b!52487 () Bool)

(declare-fun e!27239 () Heap!31)

(assert (=> b!52487 (= e!27239 (Nodes!30 (link!0 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (head!662 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) Empty!133))))

(declare-fun b!52490 () Bool)

(declare-fun e!27240 () Heap!31)

(assert (=> b!52490 (= e!27240 (insertNode!0 (link!0 (link!0 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (head!662 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) (head!662 (tail!686 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))) (tail!686 (tail!686 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))))))

(declare-fun b!52489 () Bool)

(assert (=> b!52489 (= e!27240 (Nodes!30 (link!0 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (head!662 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) (tail!686 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))))))

(declare-fun b!52488 () Bool)

(assert (=> b!52488 (= e!27239 e!27240)))

(declare-fun c!11419 () Bool)

(assert (=> b!52488 (= c!11419 (< (rank!37 (link!0 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (head!662 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))) (rank!37 (head!662 (tail!686 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))))))))

(declare-fun d!44308 () Bool)

(declare-fun lt!9193 () Heap!31)

(assert (=> d!44308 (= (heapContent!0 lt!9193) (union (nodeContent!0 (link!0 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (head!662 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))) (heapContent!0 (tail!686 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))))))

(assert (=> d!44308 (= lt!9193 e!27239)))

(declare-fun c!11420 () Bool)

(assert (=> d!44308 (= c!11420 (is-Empty!133 (tail!686 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))))))

(assert (=> d!44308 (= (insertNode!0 (link!0 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (head!662 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) (tail!686 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) lt!9193)))

(assert (= (and b!52488 c!11419) b!52489))

(assert (= (and b!52488 (not c!11419)) b!52490))

(assert (= (and d!44308 c!11420) b!52487))

(assert (= (and d!44308 (not c!11420)) b!52488))

(assert (=> b!52490 m!56313))

(declare-fun m!56547 () Bool)

(assert (=> b!52490 m!56547))

(assert (=> b!52490 m!56547))

(declare-fun m!56549 () Bool)

(assert (=> b!52490 m!56549))

(declare-fun m!56551 () Bool)

(assert (=> d!44308 m!56551))

(assert (=> d!44308 m!56313))

(declare-fun m!56553 () Bool)

(assert (=> d!44308 m!56553))

(assert (=> d!44308 m!56405))

(assert (=> b!52374 d!44308))

(declare-fun d!44310 () Bool)

(assert (=> d!44310 (= (link!0 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (head!662 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) (ite (bvsle (elem!109 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) (elem!109 (head!662 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))) (Node!91 (+ (rank!37 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) 1) (elem!109 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) (Nodes!30 (head!662 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (nodes!37 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))))) (Node!91 (+ (rank!37 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) 1) (elem!109 (head!662 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24))))) (Nodes!30 (link!0 (link!0 (head!662 h1!26) (head!662 h2!24)) (head!662 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))) (nodes!37 (head!662 (tail!686 (merge!1 (tail!686 h1!26) (tail!686 h2!24)))))))))))

(assert (=> b!52374 d!44310))

(declare-fun d!44312 () Bool)

(declare-fun c!11421 () Bool)

(assert (=> d!44312 (= c!11421 (is-Empty!133 lt!9173))))

(declare-fun e!27241 () (Set (_ BitVec 32)))

(assert (=> d!44312 (= (heapContent!0 lt!9173) e!27241)))

(declare-fun b!52491 () Bool)

(assert (=> b!52491 (= e!27241 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52492 () Bool)

(assert (=> b!52492 (= e!27241 (union (nodeContent!0 (head!662 lt!9173)) (heapContent!0 (tail!686 lt!9173))))))

(assert (= (and d!44312 c!11421) b!52491))

(assert (= (and d!44312 (not c!11421)) b!52492))

(declare-fun m!56555 () Bool)

(assert (=> b!52492 m!56555))

(declare-fun m!56557 () Bool)

(assert (=> b!52492 m!56557))

(assert (=> d!44230 d!44312))

(declare-fun d!44314 () Bool)

(declare-fun c!11422 () Bool)

(assert (=> d!44314 (= c!11422 (is-Empty!133 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))))))

(declare-fun e!27242 () (Set (_ BitVec 32)))

(assert (=> d!44314 (= (heapContent!0 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))) e!27242)))

(declare-fun b!52493 () Bool)

(assert (=> b!52493 (= e!27242 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52494 () Bool)

(assert (=> b!52494 (= e!27242 (union (nodeContent!0 (head!662 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26)))) (heapContent!0 (tail!686 (ite lt!9168 (tail!686 (tail!686 h1!26)) (tail!686 h1!26))))))))

(assert (= (and d!44314 c!11422) b!52493))

(assert (= (and d!44314 (not c!11422)) b!52494))

(declare-fun m!56559 () Bool)

(assert (=> b!52494 m!56559))

(assert (=> b!52494 m!56435))

(assert (=> d!44230 d!44314))

(declare-fun d!44316 () Bool)

(declare-fun c!11423 () Bool)

(assert (=> d!44316 (= c!11423 (is-Empty!133 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))

(declare-fun e!27243 () (Set (_ BitVec 32)))

(assert (=> d!44316 (= (heapContent!0 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))) e!27243)))

(declare-fun b!52495 () Bool)

(assert (=> b!52495 (= e!27243 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52496 () Bool)

(assert (=> b!52496 (= e!27243 (union (nodeContent!0 (head!662 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24))))) (heapContent!0 (tail!686 (ite lt!9168 (tail!686 h2!24) (tail!686 (tail!686 h2!24)))))))))

(assert (= (and d!44316 c!11423) b!52495))

(assert (= (and d!44316 (not c!11423)) b!52496))

(declare-fun m!56561 () Bool)

(assert (=> b!52496 m!56561))

(assert (=> b!52496 m!56437))

(assert (=> d!44230 d!44316))

(declare-fun d!44318 () Bool)

(assert (=> d!44318 (= (nodeContent!0 (head!662 lt!9169)) (union (insert (elem!109 (head!662 lt!9169)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!37 (head!662 lt!9169)))))))

(declare-fun bs!23835 () Bool)

(assert (= bs!23835 d!44318))

(declare-fun m!56563 () Bool)

(assert (=> bs!23835 m!56563))

(declare-fun m!56565 () Bool)

(assert (=> bs!23835 m!56565))

(assert (=> b!52390 d!44318))

(declare-fun d!44320 () Bool)

(declare-fun c!11424 () Bool)

(assert (=> d!44320 (= c!11424 (is-Empty!133 (tail!686 lt!9169)))))

(declare-fun e!27244 () (Set (_ BitVec 32)))

(assert (=> d!44320 (= (heapContent!0 (tail!686 lt!9169)) e!27244)))

(declare-fun b!52497 () Bool)

(assert (=> b!52497 (= e!27244 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52498 () Bool)

(assert (=> b!52498 (= e!27244 (union (nodeContent!0 (head!662 (tail!686 lt!9169))) (heapContent!0 (tail!686 (tail!686 lt!9169)))))))

(assert (= (and d!44320 c!11424) b!52497))

(assert (= (and d!44320 (not c!11424)) b!52498))

(declare-fun m!56567 () Bool)

(assert (=> b!52498 m!56567))

(declare-fun m!56569 () Bool)

(assert (=> b!52498 m!56569))

(assert (=> b!52390 d!44320))

(push 1)

(assert (not d!44292))

(assert (not b!52459))

(assert (not b!52412))

(assert (not b!52414))

(assert (not d!44296))

(assert (not b!52420))

(assert (not b!52425))

(assert (not d!44306))

(assert (not b!52424))

(assert (not d!44288))

(assert (not d!44308))

(assert (not b!52466))

(assert (not d!44304))

(assert (not b!52481))

(assert (not b!52432))

(assert (not b!52496))

(assert (not d!44258))

(assert (not d!44262))

(assert (not b!52434))

(assert (not d!44302))

(assert (not b!52490))

(assert (not b!52446))

(assert (not b!52498))

(assert (not d!44248))

(assert (not d!44300))

(assert (not d!44254))

(assert (not b!52444))

(assert (not b!52454))

(assert (not d!44284))

(assert (not d!44318))

(assert (not b!52436))

(assert (not b!52416))

(assert (not b!52438))

(assert (not b!52492))

(assert (not b!52471))

(assert (not b!52442))

(assert (not b!52410))

(assert (not b!52480))

(assert (not d!44266))

(assert (not b!52494))

(assert (not b!52470))

(assert (not b!52458))

(assert (not b!52450))

(assert (not b!52440))

(assert (not d!44274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7100 () Bool)

(assert start!7100)

(declare-fun res!23733 () Bool)

(declare-fun e!27107 () Bool)

(assert (=> start!7100 (=> (not res!23733) (not e!27107))))

(declare-datatypes () ((Node!86 (Node!87 (rank!35 Int) (elem!107 (_ BitVec 32)) (nodes!35 Heap!29))) (Heap!29 (Empty!131) (Nodes!28 (head!660 Node!86) (tail!684 Heap!29)))))

(declare-fun h2!24 () Heap!29)

(declare-fun h1!26 () Heap!29)

(assert (=> start!7100 (= res!23733 (and (not (is-Empty!131 h2!24)) (not (is-Empty!131 h1!26)) (< (rank!35 (head!660 h1!26)) (rank!35 (head!660 h2!24)))))))

(assert (=> start!7100 e!27107))

(assert (=> start!7100 true))

(declare-fun b!52223 () Bool)

(declare-fun res!23734 () Bool)

(assert (=> b!52223 (=> (not res!23734) (not e!27107))))

(declare-fun res!23496 () Heap!29)

(declare-fun merge!1 (Heap!29 Heap!29) Heap!29)

(assert (=> b!52223 (= res!23734 (= res!23496 (Nodes!28 (head!660 h1!26) (merge!1 (tail!684 h1!26) h2!24))))))

(declare-fun b!52224 () Bool)

(declare-fun heapContent!0 (Heap!29) (Set (_ BitVec 32)))

(assert (=> b!52224 (= e!27107 (not (= (heapContent!0 res!23496) (union (heapContent!0 h1!26) (heapContent!0 h2!24)))))))

(assert (= (and start!7100 res!23733) b!52223))

(assert (= (and b!52223 res!23734) b!52224))

(declare-fun m!56201 () Bool)

(assert (=> b!52223 m!56201))

(declare-fun m!56203 () Bool)

(assert (=> b!52224 m!56203))

(declare-fun m!56205 () Bool)

(assert (=> b!52224 m!56205))

(declare-fun m!56207 () Bool)

(assert (=> b!52224 m!56207))

(push 1)

(assert (not b!52224))

(assert (not b!52223))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44188 () Bool)

(declare-fun c!11296 () Bool)

(assert (=> d!44188 (= c!11296 (is-Empty!131 res!23496))))

(declare-fun e!27110 () (Set (_ BitVec 32)))

(assert (=> d!44188 (= (heapContent!0 res!23496) e!27110)))

(declare-fun b!52229 () Bool)

(assert (=> b!52229 (= e!27110 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52230 () Bool)

(declare-fun nodeContent!0 (Node!86) (Set (_ BitVec 32)))

(assert (=> b!52230 (= e!27110 (union (nodeContent!0 (head!660 res!23496)) (heapContent!0 (tail!684 res!23496))))))

(assert (= (and d!44188 c!11296) b!52229))

(assert (= (and d!44188 (not c!11296)) b!52230))

(declare-fun m!56209 () Bool)

(assert (=> b!52230 m!56209))

(declare-fun m!56211 () Bool)

(assert (=> b!52230 m!56211))

(assert (=> b!52224 d!44188))

(declare-fun d!44190 () Bool)

(declare-fun c!11297 () Bool)

(assert (=> d!44190 (= c!11297 (is-Empty!131 h1!26))))

(declare-fun e!27111 () (Set (_ BitVec 32)))

(assert (=> d!44190 (= (heapContent!0 h1!26) e!27111)))

(declare-fun b!52231 () Bool)

(assert (=> b!52231 (= e!27111 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52232 () Bool)

(assert (=> b!52232 (= e!27111 (union (nodeContent!0 (head!660 h1!26)) (heapContent!0 (tail!684 h1!26))))))

(assert (= (and d!44190 c!11297) b!52231))

(assert (= (and d!44190 (not c!11297)) b!52232))

(declare-fun m!56213 () Bool)

(assert (=> b!52232 m!56213))

(declare-fun m!56215 () Bool)

(assert (=> b!52232 m!56215))

(assert (=> b!52224 d!44190))

(declare-fun d!44192 () Bool)

(declare-fun c!11298 () Bool)

(assert (=> d!44192 (= c!11298 (is-Empty!131 h2!24))))

(declare-fun e!27112 () (Set (_ BitVec 32)))

(assert (=> d!44192 (= (heapContent!0 h2!24) e!27112)))

(declare-fun b!52233 () Bool)

(assert (=> b!52233 (= e!27112 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52234 () Bool)

(assert (=> b!52234 (= e!27112 (union (nodeContent!0 (head!660 h2!24)) (heapContent!0 (tail!684 h2!24))))))

(assert (= (and d!44192 c!11298) b!52233))

(assert (= (and d!44192 (not c!11298)) b!52234))

(declare-fun m!56217 () Bool)

(assert (=> b!52234 m!56217))

(declare-fun m!56219 () Bool)

(assert (=> b!52234 m!56219))

(assert (=> b!52224 d!44192))

(declare-fun b!52255 () Bool)

(declare-fun e!27124 () Heap!29)

(declare-fun lt!9146 () Heap!29)

(assert (=> b!52255 (= e!27124 (Nodes!28 (head!660 (tail!684 h1!26)) lt!9146))))

(declare-fun b!52256 () Bool)

(declare-fun e!27127 () Heap!29)

(declare-fun insertNode!0 (Node!86 Heap!29) Heap!29)

(declare-fun link!0 (Node!86 Node!86) Node!86)

(assert (=> b!52256 (= e!27127 (insertNode!0 (link!0 (head!660 (tail!684 h1!26)) (head!660 h2!24)) (merge!1 (tail!684 (tail!684 h1!26)) (tail!684 h2!24))))))

(declare-fun b!52257 () Bool)

(assert (=> b!52257 (= e!27124 e!27127)))

(declare-fun c!11313 () Bool)

(assert (=> b!52257 (= c!11313 (< (rank!35 (head!660 h2!24)) (rank!35 (head!660 (tail!684 h1!26)))))))

(declare-fun b!52258 () Bool)

(declare-fun e!27123 () Heap!29)

(assert (=> b!52258 (= e!27123 h2!24)))

(declare-fun b!52259 () Bool)

(declare-fun e!27125 () Heap!29)

(declare-fun res!23741 () Heap!29)

(assert (=> b!52259 (= e!27125 res!23741)))

(assert (=> b!52259 true))

(assert (=> b!52259 true))

(declare-fun d!44194 () Bool)

(declare-fun lt!9147 () Heap!29)

(assert (=> d!44194 (= (heapContent!0 lt!9147) (union (heapContent!0 (tail!684 h1!26)) (heapContent!0 h2!24)))))

(declare-fun e!27126 () Heap!29)

(assert (=> d!44194 (= lt!9147 e!27126)))

(declare-fun c!11311 () Bool)

(assert (=> d!44194 (= c!11311 (is-Empty!131 h2!24))))

(assert (=> d!44194 (= (merge!1 (tail!684 h1!26) h2!24) lt!9147)))

(declare-fun b!52260 () Bool)

(assert (=> b!52260 (= e!27126 (tail!684 h1!26))))

(declare-fun b!52261 () Bool)

(assert (=> b!52261 (= e!27127 (Nodes!28 (head!660 h2!24) lt!9146))))

(declare-fun b!52262 () Bool)

(declare-fun lt!9148 () Bool)

(assert (=> b!52262 (= e!27125 (merge!1 (ite lt!9148 (tail!684 (tail!684 h1!26)) (tail!684 h1!26)) (ite lt!9148 h2!24 (tail!684 h2!24))))))

(declare-fun b!52263 () Bool)

(assert (=> b!52263 (= e!27123 e!27124)))

(declare-fun c!11312 () Bool)

(assert (=> b!52263 (= c!11312 lt!9148)))

(assert (=> b!52263 (= lt!9146 e!27125)))

(declare-fun c!11310 () Bool)

(assert (=> b!52263 (= c!11310 (or lt!9148 (< (rank!35 (head!660 h2!24)) (rank!35 (head!660 (tail!684 h1!26))))))))

(assert (=> b!52263 (= lt!9148 (< (rank!35 (head!660 (tail!684 h1!26))) (rank!35 (head!660 h2!24))))))

(declare-fun b!52264 () Bool)

(assert (=> b!52264 (= e!27126 e!27123)))

(declare-fun c!11309 () Bool)

(assert (=> b!52264 (= c!11309 (is-Empty!131 (tail!684 h1!26)))))

(assert (= (and b!52263 c!11310) b!52262))

(assert (= (and b!52263 (not c!11310)) b!52259))

(assert (= (and b!52257 c!11313) b!52261))

(assert (= (and b!52257 (not c!11313)) b!52256))

(assert (= (and b!52263 c!11312) b!52255))

(assert (= (and b!52263 (not c!11312)) b!52257))

(assert (= (and b!52264 c!11309) b!52258))

(assert (= (and b!52264 (not c!11309)) b!52263))

(assert (= (and d!44194 c!11311) b!52260))

(assert (= (and d!44194 (not c!11311)) b!52264))

(declare-fun m!56221 () Bool)

(assert (=> b!52256 m!56221))

(declare-fun m!56223 () Bool)

(assert (=> b!52256 m!56223))

(assert (=> b!52256 m!56221))

(assert (=> b!52256 m!56223))

(declare-fun m!56225 () Bool)

(assert (=> b!52256 m!56225))

(declare-fun m!56227 () Bool)

(assert (=> d!44194 m!56227))

(assert (=> d!44194 m!56215))

(assert (=> d!44194 m!56207))

(declare-fun m!56229 () Bool)

(assert (=> b!52262 m!56229))

(assert (=> b!52223 d!44194))

(push 1)

(assert (not d!44194))

(assert (not b!52232))

(assert (not b!52234))

(assert (not b!52262))

(assert (not b!52256))

(assert (not b!52230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


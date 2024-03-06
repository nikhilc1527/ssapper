; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7398 () Bool)

(assert start!7398)

(declare-datatypes () ((T!3225 (T!3226 (val!147 Int)))))

(declare-datatypes () ((List!436 (Cons!416 (h!635 T!3225) (t!46828 List!436)) (Nil!417))))

(declare-fun e!27776 () List!436)

(declare-fun y!1616 () T!3225)

(declare-fun l2!268 () List!436)

(declare-fun i!421 () Int)

(declare-fun l1!274 () List!436)

(declare-fun b!53310 () Bool)

(declare-fun ++!57 (List!436 List!436) List!436)

(declare-fun insertAtIndex!17 (List!436 Int T!3225) List!436)

(assert (=> b!53310 (= e!27776 (++!57 (insertAtIndex!17 l1!274 i!421 y!1616) l2!268))))

(declare-fun e!27778 () Bool)

(declare-fun b!53311 () Bool)

(assert (=> b!53311 (= e!27778 (not (= (insertAtIndex!17 (++!57 l1!274 l2!268) i!421 y!1616) e!27776)))))

(declare-fun c!11546 () Bool)

(declare-fun size!436 (List!436) Int)

(assert (=> b!53311 (= c!11546 (< i!421 (size!436 l1!274)))))

(declare-fun b!53312 () Bool)

(declare-fun e!27777 () Bool)

(declare-fun tp_is_empty!293 () Bool)

(declare-fun tp!15136 () Bool)

(assert (=> b!53312 (= e!27777 (and tp_is_empty!293 tp!15136))))

(declare-fun b!53313 () Bool)

(assert (=> b!53313 (= e!27776 (++!57 l1!274 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616)))))

(declare-fun b!53314 () Bool)

(declare-fun res!24272 () Bool)

(declare-fun e!27780 () Bool)

(assert (=> b!53314 (=> (not res!24272) (not e!27780))))

(assert (=> b!53314 (= res!24272 (<= i!421 (+ (size!436 l1!274) (size!436 l2!268))))))

(declare-fun b!53315 () Bool)

(declare-fun e!27781 () Bool)

(declare-fun tp!15135 () Bool)

(assert (=> b!53315 (= e!27781 (and tp_is_empty!293 tp!15135))))

(declare-fun b!53316 () Bool)

(declare-fun e!27779 () Bool)

(declare-fun appendInsertIndex!22 (List!436 List!436 Int T!3225) Bool)

(assert (=> b!53316 (= e!27779 (not (appendInsertIndex!22 (t!46828 l1!274) l2!268 (- i!421 1) y!1616)))))

(declare-fun res!24273 () Bool)

(assert (=> start!7398 (=> (not res!24273) (not e!27780))))

(assert (=> start!7398 (= res!24273 (<= 0 i!421))))

(assert (=> start!7398 e!27780))

(assert (=> start!7398 true))

(assert (=> start!7398 e!27781))

(assert (=> start!7398 e!27777))

(assert (=> start!7398 tp_is_empty!293))

(declare-fun b!53317 () Bool)

(assert (=> b!53317 (= e!27780 e!27778)))

(declare-fun res!24270 () Bool)

(assert (=> b!53317 (=> res!24270 e!27778)))

(assert (=> b!53317 (= res!24270 e!27779)))

(declare-fun res!24271 () Bool)

(assert (=> b!53317 (=> (not res!24271) (not e!27779))))

(assert (=> b!53317 (= res!24271 (and (not (is-Nil!417 l1!274)) (not (= i!421 0))))))

(assert (= (and start!7398 res!24273) b!53314))

(assert (= (and b!53314 res!24272) b!53317))

(assert (= (and b!53317 res!24271) b!53316))

(assert (= (and b!53317 (not res!24270)) b!53311))

(assert (= (and b!53311 c!11546) b!53310))

(assert (= (and b!53311 (not c!11546)) b!53313))

(assert (= (and start!7398 (is-Cons!416 l1!274)) b!53315))

(assert (= (and start!7398 (is-Cons!416 l2!268)) b!53312))

(declare-fun m!57214 () Bool)

(assert (=> b!53313 m!57214))

(declare-fun m!57216 () Bool)

(assert (=> b!53313 m!57216))

(assert (=> b!53313 m!57216))

(declare-fun m!57218 () Bool)

(assert (=> b!53313 m!57218))

(declare-fun m!57220 () Bool)

(assert (=> b!53310 m!57220))

(assert (=> b!53310 m!57220))

(declare-fun m!57222 () Bool)

(assert (=> b!53310 m!57222))

(assert (=> b!53314 m!57214))

(declare-fun m!57224 () Bool)

(assert (=> b!53314 m!57224))

(declare-fun m!57226 () Bool)

(assert (=> b!53316 m!57226))

(declare-fun m!57228 () Bool)

(assert (=> b!53311 m!57228))

(assert (=> b!53311 m!57228))

(declare-fun m!57230 () Bool)

(assert (=> b!53311 m!57230))

(assert (=> b!53311 m!57214))

(push 1)

(assert tp_is_empty!293)

(assert (not b!53310))

(assert (not b!53313))

(assert (not b!53314))

(assert (not b!53315))

(assert (not b!53312))

(assert (not b!53316))

(assert (not b!53311))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44613 () Bool)

(declare-fun lt!9302 () Int)

(assert (=> d!44613 (>= lt!9302 0)))

(declare-fun e!27784 () Int)

(assert (=> d!44613 (= lt!9302 e!27784)))

(declare-fun c!11549 () Bool)

(assert (=> d!44613 (= c!11549 (is-Nil!417 l1!274))))

(assert (=> d!44613 (= (size!436 l1!274) lt!9302)))

(declare-fun b!53322 () Bool)

(assert (=> b!53322 (= e!27784 0)))

(declare-fun b!53323 () Bool)

(assert (=> b!53323 (= e!27784 (+ 1 (size!436 (t!46828 l1!274))))))

(assert (= (and d!44613 c!11549) b!53322))

(assert (= (and d!44613 (not c!11549)) b!53323))

(declare-fun m!57232 () Bool)

(assert (=> b!53323 m!57232))

(assert (=> b!53314 d!44613))

(declare-fun d!44615 () Bool)

(declare-fun lt!9303 () Int)

(assert (=> d!44615 (>= lt!9303 0)))

(declare-fun e!27785 () Int)

(assert (=> d!44615 (= lt!9303 e!27785)))

(declare-fun c!11550 () Bool)

(assert (=> d!44615 (= c!11550 (is-Nil!417 l2!268))))

(assert (=> d!44615 (= (size!436 l2!268) lt!9303)))

(declare-fun b!53324 () Bool)

(assert (=> b!53324 (= e!27785 0)))

(declare-fun b!53325 () Bool)

(assert (=> b!53325 (= e!27785 (+ 1 (size!436 (t!46828 l2!268))))))

(assert (= (and d!44615 c!11550) b!53324))

(assert (= (and d!44615 (not c!11550)) b!53325))

(declare-fun m!57234 () Bool)

(assert (=> b!53325 m!57234))

(assert (=> b!53314 d!44615))

(declare-fun d!44617 () Bool)

(declare-fun e!27796 () Bool)

(assert (=> d!44617 e!27796))

(declare-fun res!24280 () Bool)

(assert (=> d!44617 (=> (not res!24280) (not e!27796))))

(declare-fun e!27794 () Bool)

(assert (=> d!44617 (= res!24280 e!27794)))

(declare-fun res!24282 () Bool)

(assert (=> d!44617 (=> res!24282 e!27794)))

(assert (=> d!44617 (= res!24282 (or (is-Nil!417 (t!46828 l1!274)) (= (- i!421 1) 0)))))

(declare-fun e!27797 () Bool)

(assert (=> d!44617 e!27797))

(declare-fun res!24281 () Bool)

(assert (=> d!44617 (=> (not res!24281) (not e!27797))))

(assert (=> d!44617 (= res!24281 (<= 0 (- i!421 1)))))

(assert (=> d!44617 (= (appendInsertIndex!22 (t!46828 l1!274) l2!268 (- i!421 1) y!1616) true)))

(declare-fun b!53336 () Bool)

(declare-fun e!27795 () List!436)

(assert (=> b!53336 (= e!27795 (++!57 (insertAtIndex!17 (t!46828 l1!274) (- i!421 1) y!1616) l2!268))))

(declare-fun b!53337 () Bool)

(assert (=> b!53337 (= e!27795 (++!57 (t!46828 l1!274) (insertAtIndex!17 l2!268 (- (- i!421 1) (size!436 (t!46828 l1!274))) y!1616)))))

(declare-fun b!53338 () Bool)

(assert (=> b!53338 (= e!27794 (appendInsertIndex!22 (t!46828 (t!46828 l1!274)) l2!268 (- (- i!421 1) 1) y!1616))))

(declare-fun b!53339 () Bool)

(assert (=> b!53339 (= e!27796 (= (insertAtIndex!17 (++!57 (t!46828 l1!274) l2!268) (- i!421 1) y!1616) e!27795))))

(declare-fun c!11553 () Bool)

(assert (=> b!53339 (= c!11553 (< (- i!421 1) (size!436 (t!46828 l1!274))))))

(declare-fun b!53340 () Bool)

(assert (=> b!53340 (= e!27797 (<= (- i!421 1) (+ (size!436 (t!46828 l1!274)) (size!436 l2!268))))))

(assert (= (and d!44617 res!24281) b!53340))

(assert (= (and d!44617 (not res!24282)) b!53338))

(assert (= (and d!44617 res!24280) b!53339))

(assert (= (and b!53339 c!11553) b!53336))

(assert (= (and b!53339 (not c!11553)) b!53337))

(declare-fun m!57236 () Bool)

(assert (=> b!53338 m!57236))

(assert (=> b!53337 m!57232))

(declare-fun m!57238 () Bool)

(assert (=> b!53337 m!57238))

(assert (=> b!53337 m!57238))

(declare-fun m!57240 () Bool)

(assert (=> b!53337 m!57240))

(declare-fun m!57242 () Bool)

(assert (=> b!53339 m!57242))

(assert (=> b!53339 m!57242))

(declare-fun m!57244 () Bool)

(assert (=> b!53339 m!57244))

(assert (=> b!53339 m!57232))

(assert (=> b!53340 m!57232))

(assert (=> b!53340 m!57224))

(declare-fun m!57246 () Bool)

(assert (=> b!53336 m!57246))

(assert (=> b!53336 m!57246))

(declare-fun m!57248 () Bool)

(assert (=> b!53336 m!57248))

(assert (=> b!53316 d!44617))

(declare-fun b!53352 () Bool)

(declare-fun e!27803 () List!436)

(assert (=> b!53352 (= e!27803 (Cons!416 (h!635 (++!57 l1!274 l2!268)) (insertAtIndex!17 (t!46828 (++!57 l1!274 l2!268)) (- i!421 1) y!1616)))))

(declare-fun b!53351 () Bool)

(assert (=> b!53351 (= e!27803 (Cons!416 y!1616 (++!57 l1!274 l2!268)))))

(declare-fun b!53349 () Bool)

(declare-fun e!27802 () List!436)

(assert (=> b!53349 (= e!27802 (Cons!416 y!1616 Nil!417))))

(declare-fun d!44619 () Bool)

(declare-fun c!11558 () Bool)

(assert (=> d!44619 (= c!11558 (is-Nil!417 (++!57 l1!274 l2!268)))))

(assert (=> d!44619 (= (insertAtIndex!17 (++!57 l1!274 l2!268) i!421 y!1616) e!27802)))

(declare-fun b!53350 () Bool)

(assert (=> b!53350 (= e!27802 e!27803)))

(declare-fun c!11559 () Bool)

(assert (=> b!53350 (= c!11559 (= i!421 0))))

(assert (= (and b!53350 c!11559) b!53351))

(assert (= (and b!53350 (not c!11559)) b!53352))

(assert (= (and d!44619 c!11558) b!53349))

(assert (= (and d!44619 (not c!11558)) b!53350))

(declare-fun m!57250 () Bool)

(assert (=> b!53352 m!57250))

(assert (=> b!53311 d!44619))

(declare-fun d!44621 () Bool)

(declare-fun e!27809 () Bool)

(assert (=> d!44621 e!27809))

(declare-fun res!24288 () Bool)

(assert (=> d!44621 (=> (not res!24288) (not e!27809))))

(declare-fun lt!9306 () List!436)

(declare-fun content!97 (List!436) (Set T!3225))

(assert (=> d!44621 (= res!24288 (= (content!97 lt!9306) (union (content!97 l1!274) (content!97 l2!268))))))

(declare-fun e!27808 () List!436)

(assert (=> d!44621 (= lt!9306 e!27808)))

(declare-fun c!11562 () Bool)

(assert (=> d!44621 (= c!11562 (is-Nil!417 l1!274))))

(assert (=> d!44621 (= (++!57 l1!274 l2!268) lt!9306)))

(declare-fun b!53361 () Bool)

(assert (=> b!53361 (= e!27808 l2!268)))

(declare-fun b!53362 () Bool)

(assert (=> b!53362 (= e!27808 (Cons!416 (h!635 l1!274) (++!57 (t!46828 l1!274) l2!268)))))

(declare-fun b!53364 () Bool)

(assert (=> b!53364 (= e!27809 (or (not (= l2!268 Nil!417)) (= lt!9306 l1!274)))))

(declare-fun b!53363 () Bool)

(declare-fun res!24289 () Bool)

(assert (=> b!53363 (=> (not res!24289) (not e!27809))))

(assert (=> b!53363 (= res!24289 (= (size!436 lt!9306) (+ (size!436 l1!274) (size!436 l2!268))))))

(assert (= (and d!44621 c!11562) b!53361))

(assert (= (and d!44621 (not c!11562)) b!53362))

(assert (= (and d!44621 res!24288) b!53363))

(assert (= (and b!53363 res!24289) b!53364))

(declare-fun m!57252 () Bool)

(assert (=> d!44621 m!57252))

(declare-fun m!57254 () Bool)

(assert (=> d!44621 m!57254))

(declare-fun m!57256 () Bool)

(assert (=> d!44621 m!57256))

(assert (=> b!53362 m!57242))

(declare-fun m!57258 () Bool)

(assert (=> b!53363 m!57258))

(assert (=> b!53363 m!57214))

(assert (=> b!53363 m!57224))

(assert (=> b!53311 d!44621))

(assert (=> b!53311 d!44613))

(declare-fun d!44623 () Bool)

(declare-fun e!27811 () Bool)

(assert (=> d!44623 e!27811))

(declare-fun res!24290 () Bool)

(assert (=> d!44623 (=> (not res!24290) (not e!27811))))

(declare-fun lt!9307 () List!436)

(assert (=> d!44623 (= res!24290 (= (content!97 lt!9307) (union (content!97 l1!274) (content!97 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616)))))))

(declare-fun e!27810 () List!436)

(assert (=> d!44623 (= lt!9307 e!27810)))

(declare-fun c!11563 () Bool)

(assert (=> d!44623 (= c!11563 (is-Nil!417 l1!274))))

(assert (=> d!44623 (= (++!57 l1!274 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616)) lt!9307)))

(declare-fun b!53365 () Bool)

(assert (=> b!53365 (= e!27810 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616))))

(declare-fun b!53366 () Bool)

(assert (=> b!53366 (= e!27810 (Cons!416 (h!635 l1!274) (++!57 (t!46828 l1!274) (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616))))))

(declare-fun b!53368 () Bool)

(assert (=> b!53368 (= e!27811 (or (not (= (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616) Nil!417)) (= lt!9307 l1!274)))))

(declare-fun b!53367 () Bool)

(declare-fun res!24291 () Bool)

(assert (=> b!53367 (=> (not res!24291) (not e!27811))))

(assert (=> b!53367 (= res!24291 (= (size!436 lt!9307) (+ (size!436 l1!274) (size!436 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616)))))))

(assert (= (and d!44623 c!11563) b!53365))

(assert (= (and d!44623 (not c!11563)) b!53366))

(assert (= (and d!44623 res!24290) b!53367))

(assert (= (and b!53367 res!24291) b!53368))

(declare-fun m!57260 () Bool)

(assert (=> d!44623 m!57260))

(assert (=> d!44623 m!57254))

(assert (=> d!44623 m!57216))

(declare-fun m!57262 () Bool)

(assert (=> d!44623 m!57262))

(assert (=> b!53366 m!57216))

(declare-fun m!57264 () Bool)

(assert (=> b!53366 m!57264))

(declare-fun m!57266 () Bool)

(assert (=> b!53367 m!57266))

(assert (=> b!53367 m!57214))

(assert (=> b!53367 m!57216))

(declare-fun m!57268 () Bool)

(assert (=> b!53367 m!57268))

(assert (=> b!53313 d!44623))

(declare-fun e!27813 () List!436)

(declare-fun b!53372 () Bool)

(assert (=> b!53372 (= e!27813 (Cons!416 (h!635 l2!268) (insertAtIndex!17 (t!46828 l2!268) (- (- i!421 (size!436 l1!274)) 1) y!1616)))))

(declare-fun b!53371 () Bool)

(assert (=> b!53371 (= e!27813 (Cons!416 y!1616 l2!268))))

(declare-fun b!53369 () Bool)

(declare-fun e!27812 () List!436)

(assert (=> b!53369 (= e!27812 (Cons!416 y!1616 Nil!417))))

(declare-fun d!44625 () Bool)

(declare-fun c!11564 () Bool)

(assert (=> d!44625 (= c!11564 (is-Nil!417 l2!268))))

(assert (=> d!44625 (= (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616) e!27812)))

(declare-fun b!53370 () Bool)

(assert (=> b!53370 (= e!27812 e!27813)))

(declare-fun c!11565 () Bool)

(assert (=> b!53370 (= c!11565 (= (- i!421 (size!436 l1!274)) 0))))

(assert (= (and b!53370 c!11565) b!53371))

(assert (= (and b!53370 (not c!11565)) b!53372))

(assert (= (and d!44625 c!11564) b!53369))

(assert (= (and d!44625 (not c!11564)) b!53370))

(declare-fun m!57270 () Bool)

(assert (=> b!53372 m!57270))

(assert (=> b!53313 d!44625))

(assert (=> b!53313 d!44613))

(declare-fun d!44627 () Bool)

(declare-fun e!27815 () Bool)

(assert (=> d!44627 e!27815))

(declare-fun res!24292 () Bool)

(assert (=> d!44627 (=> (not res!24292) (not e!27815))))

(declare-fun lt!9308 () List!436)

(assert (=> d!44627 (= res!24292 (= (content!97 lt!9308) (union (content!97 (insertAtIndex!17 l1!274 i!421 y!1616)) (content!97 l2!268))))))

(declare-fun e!27814 () List!436)

(assert (=> d!44627 (= lt!9308 e!27814)))

(declare-fun c!11566 () Bool)

(assert (=> d!44627 (= c!11566 (is-Nil!417 (insertAtIndex!17 l1!274 i!421 y!1616)))))

(assert (=> d!44627 (= (++!57 (insertAtIndex!17 l1!274 i!421 y!1616) l2!268) lt!9308)))

(declare-fun b!53373 () Bool)

(assert (=> b!53373 (= e!27814 l2!268)))

(declare-fun b!53374 () Bool)

(assert (=> b!53374 (= e!27814 (Cons!416 (h!635 (insertAtIndex!17 l1!274 i!421 y!1616)) (++!57 (t!46828 (insertAtIndex!17 l1!274 i!421 y!1616)) l2!268)))))

(declare-fun b!53376 () Bool)

(assert (=> b!53376 (= e!27815 (or (not (= l2!268 Nil!417)) (= lt!9308 (insertAtIndex!17 l1!274 i!421 y!1616))))))

(declare-fun b!53375 () Bool)

(declare-fun res!24293 () Bool)

(assert (=> b!53375 (=> (not res!24293) (not e!27815))))

(assert (=> b!53375 (= res!24293 (= (size!436 lt!9308) (+ (size!436 (insertAtIndex!17 l1!274 i!421 y!1616)) (size!436 l2!268))))))

(assert (= (and d!44627 c!11566) b!53373))

(assert (= (and d!44627 (not c!11566)) b!53374))

(assert (= (and d!44627 res!24292) b!53375))

(assert (= (and b!53375 res!24293) b!53376))

(declare-fun m!57272 () Bool)

(assert (=> d!44627 m!57272))

(assert (=> d!44627 m!57220))

(declare-fun m!57274 () Bool)

(assert (=> d!44627 m!57274))

(assert (=> d!44627 m!57256))

(declare-fun m!57276 () Bool)

(assert (=> b!53374 m!57276))

(declare-fun m!57278 () Bool)

(assert (=> b!53375 m!57278))

(assert (=> b!53375 m!57220))

(declare-fun m!57280 () Bool)

(assert (=> b!53375 m!57280))

(assert (=> b!53375 m!57224))

(assert (=> b!53310 d!44627))

(declare-fun e!27817 () List!436)

(declare-fun b!53380 () Bool)

(assert (=> b!53380 (= e!27817 (Cons!416 (h!635 l1!274) (insertAtIndex!17 (t!46828 l1!274) (- i!421 1) y!1616)))))

(declare-fun b!53379 () Bool)

(assert (=> b!53379 (= e!27817 (Cons!416 y!1616 l1!274))))

(declare-fun b!53377 () Bool)

(declare-fun e!27816 () List!436)

(assert (=> b!53377 (= e!27816 (Cons!416 y!1616 Nil!417))))

(declare-fun d!44629 () Bool)

(declare-fun c!11567 () Bool)

(assert (=> d!44629 (= c!11567 (is-Nil!417 l1!274))))

(assert (=> d!44629 (= (insertAtIndex!17 l1!274 i!421 y!1616) e!27816)))

(declare-fun b!53378 () Bool)

(assert (=> b!53378 (= e!27816 e!27817)))

(declare-fun c!11568 () Bool)

(assert (=> b!53378 (= c!11568 (= i!421 0))))

(assert (= (and b!53378 c!11568) b!53379))

(assert (= (and b!53378 (not c!11568)) b!53380))

(assert (= (and d!44629 c!11567) b!53377))

(assert (= (and d!44629 (not c!11567)) b!53378))

(assert (=> b!53380 m!57246))

(assert (=> b!53310 d!44629))

(declare-fun b!53385 () Bool)

(declare-fun e!27820 () Bool)

(declare-fun tp!15139 () Bool)

(assert (=> b!53385 (= e!27820 (and tp_is_empty!293 tp!15139))))

(assert (=> b!53315 (= tp!15135 e!27820)))

(assert (= (and b!53315 (is-Cons!416 (t!46828 l1!274))) b!53385))

(declare-fun b!53386 () Bool)

(declare-fun e!27821 () Bool)

(declare-fun tp!15140 () Bool)

(assert (=> b!53386 (= e!27821 (and tp_is_empty!293 tp!15140))))

(assert (=> b!53312 (= tp!15136 e!27821)))

(assert (= (and b!53312 (is-Cons!416 (t!46828 l2!268))) b!53386))

(push 1)

(assert tp_is_empty!293)

(assert (not b!53374))

(assert (not d!44621))

(assert (not b!53363))

(assert (not b!53323))

(assert (not b!53338))

(assert (not b!53385))

(assert (not b!53362))

(assert (not b!53339))

(assert (not b!53367))

(assert (not d!44627))

(assert (not b!53352))

(assert (not b!53380))

(assert (not b!53325))

(assert (not b!53375))

(assert (not d!44623))

(assert (not b!53372))

(assert (not b!53340))

(assert (not b!53337))

(assert (not b!53366))

(assert (not b!53336))

(assert (not b!53386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44631 () Bool)

(declare-fun e!27823 () Bool)

(assert (=> d!44631 e!27823))

(declare-fun res!24294 () Bool)

(assert (=> d!44631 (=> (not res!24294) (not e!27823))))

(declare-fun lt!9309 () List!436)

(assert (=> d!44631 (= res!24294 (= (content!97 lt!9309) (union (content!97 (insertAtIndex!17 (t!46828 l1!274) (- i!421 1) y!1616)) (content!97 l2!268))))))

(declare-fun e!27822 () List!436)

(assert (=> d!44631 (= lt!9309 e!27822)))

(declare-fun c!11569 () Bool)

(assert (=> d!44631 (= c!11569 (is-Nil!417 (insertAtIndex!17 (t!46828 l1!274) (- i!421 1) y!1616)))))

(assert (=> d!44631 (= (++!57 (insertAtIndex!17 (t!46828 l1!274) (- i!421 1) y!1616) l2!268) lt!9309)))

(declare-fun b!53387 () Bool)

(assert (=> b!53387 (= e!27822 l2!268)))

(declare-fun b!53388 () Bool)

(assert (=> b!53388 (= e!27822 (Cons!416 (h!635 (insertAtIndex!17 (t!46828 l1!274) (- i!421 1) y!1616)) (++!57 (t!46828 (insertAtIndex!17 (t!46828 l1!274) (- i!421 1) y!1616)) l2!268)))))

(declare-fun b!53390 () Bool)

(assert (=> b!53390 (= e!27823 (or (not (= l2!268 Nil!417)) (= lt!9309 (insertAtIndex!17 (t!46828 l1!274) (- i!421 1) y!1616))))))

(declare-fun b!53389 () Bool)

(declare-fun res!24295 () Bool)

(assert (=> b!53389 (=> (not res!24295) (not e!27823))))

(assert (=> b!53389 (= res!24295 (= (size!436 lt!9309) (+ (size!436 (insertAtIndex!17 (t!46828 l1!274) (- i!421 1) y!1616)) (size!436 l2!268))))))

(assert (= (and d!44631 c!11569) b!53387))

(assert (= (and d!44631 (not c!11569)) b!53388))

(assert (= (and d!44631 res!24294) b!53389))

(assert (= (and b!53389 res!24295) b!53390))

(declare-fun m!57282 () Bool)

(assert (=> d!44631 m!57282))

(assert (=> d!44631 m!57246))

(declare-fun m!57284 () Bool)

(assert (=> d!44631 m!57284))

(assert (=> d!44631 m!57256))

(declare-fun m!57286 () Bool)

(assert (=> b!53388 m!57286))

(declare-fun m!57288 () Bool)

(assert (=> b!53389 m!57288))

(assert (=> b!53389 m!57246))

(declare-fun m!57290 () Bool)

(assert (=> b!53389 m!57290))

(assert (=> b!53389 m!57224))

(assert (=> b!53336 d!44631))

(declare-fun e!27825 () List!436)

(declare-fun b!53394 () Bool)

(assert (=> b!53394 (= e!27825 (Cons!416 (h!635 (t!46828 l1!274)) (insertAtIndex!17 (t!46828 (t!46828 l1!274)) (- (- i!421 1) 1) y!1616)))))

(declare-fun b!53393 () Bool)

(assert (=> b!53393 (= e!27825 (Cons!416 y!1616 (t!46828 l1!274)))))

(declare-fun b!53391 () Bool)

(declare-fun e!27824 () List!436)

(assert (=> b!53391 (= e!27824 (Cons!416 y!1616 Nil!417))))

(declare-fun d!44633 () Bool)

(declare-fun c!11570 () Bool)

(assert (=> d!44633 (= c!11570 (is-Nil!417 (t!46828 l1!274)))))

(assert (=> d!44633 (= (insertAtIndex!17 (t!46828 l1!274) (- i!421 1) y!1616) e!27824)))

(declare-fun b!53392 () Bool)

(assert (=> b!53392 (= e!27824 e!27825)))

(declare-fun c!11571 () Bool)

(assert (=> b!53392 (= c!11571 (= (- i!421 1) 0))))

(assert (= (and b!53392 c!11571) b!53393))

(assert (= (and b!53392 (not c!11571)) b!53394))

(assert (= (and d!44633 c!11570) b!53391))

(assert (= (and d!44633 (not c!11570)) b!53392))

(declare-fun m!57292 () Bool)

(assert (=> b!53394 m!57292))

(assert (=> b!53336 d!44633))

(declare-fun d!44635 () Bool)

(declare-fun e!27827 () Bool)

(assert (=> d!44635 e!27827))

(declare-fun res!24296 () Bool)

(assert (=> d!44635 (=> (not res!24296) (not e!27827))))

(declare-fun lt!9310 () List!436)

(assert (=> d!44635 (= res!24296 (= (content!97 lt!9310) (union (content!97 (t!46828 (insertAtIndex!17 l1!274 i!421 y!1616))) (content!97 l2!268))))))

(declare-fun e!27826 () List!436)

(assert (=> d!44635 (= lt!9310 e!27826)))

(declare-fun c!11572 () Bool)

(assert (=> d!44635 (= c!11572 (is-Nil!417 (t!46828 (insertAtIndex!17 l1!274 i!421 y!1616))))))

(assert (=> d!44635 (= (++!57 (t!46828 (insertAtIndex!17 l1!274 i!421 y!1616)) l2!268) lt!9310)))

(declare-fun b!53395 () Bool)

(assert (=> b!53395 (= e!27826 l2!268)))

(declare-fun b!53396 () Bool)

(assert (=> b!53396 (= e!27826 (Cons!416 (h!635 (t!46828 (insertAtIndex!17 l1!274 i!421 y!1616))) (++!57 (t!46828 (t!46828 (insertAtIndex!17 l1!274 i!421 y!1616))) l2!268)))))

(declare-fun b!53398 () Bool)

(assert (=> b!53398 (= e!27827 (or (not (= l2!268 Nil!417)) (= lt!9310 (t!46828 (insertAtIndex!17 l1!274 i!421 y!1616)))))))

(declare-fun b!53397 () Bool)

(declare-fun res!24297 () Bool)

(assert (=> b!53397 (=> (not res!24297) (not e!27827))))

(assert (=> b!53397 (= res!24297 (= (size!436 lt!9310) (+ (size!436 (t!46828 (insertAtIndex!17 l1!274 i!421 y!1616))) (size!436 l2!268))))))

(assert (= (and d!44635 c!11572) b!53395))

(assert (= (and d!44635 (not c!11572)) b!53396))

(assert (= (and d!44635 res!24296) b!53397))

(assert (= (and b!53397 res!24297) b!53398))

(declare-fun m!57294 () Bool)

(assert (=> d!44635 m!57294))

(declare-fun m!57296 () Bool)

(assert (=> d!44635 m!57296))

(assert (=> d!44635 m!57256))

(declare-fun m!57298 () Bool)

(assert (=> b!53396 m!57298))

(declare-fun m!57300 () Bool)

(assert (=> b!53397 m!57300))

(declare-fun m!57302 () Bool)

(assert (=> b!53397 m!57302))

(assert (=> b!53397 m!57224))

(assert (=> b!53374 d!44635))

(declare-fun d!44637 () Bool)

(declare-fun lt!9311 () Int)

(assert (=> d!44637 (>= lt!9311 0)))

(declare-fun e!27828 () Int)

(assert (=> d!44637 (= lt!9311 e!27828)))

(declare-fun c!11573 () Bool)

(assert (=> d!44637 (= c!11573 (is-Nil!417 lt!9307))))

(assert (=> d!44637 (= (size!436 lt!9307) lt!9311)))

(declare-fun b!53399 () Bool)

(assert (=> b!53399 (= e!27828 0)))

(declare-fun b!53400 () Bool)

(assert (=> b!53400 (= e!27828 (+ 1 (size!436 (t!46828 lt!9307))))))

(assert (= (and d!44637 c!11573) b!53399))

(assert (= (and d!44637 (not c!11573)) b!53400))

(declare-fun m!57304 () Bool)

(assert (=> b!53400 m!57304))

(assert (=> b!53367 d!44637))

(assert (=> b!53367 d!44613))

(declare-fun d!44639 () Bool)

(declare-fun lt!9312 () Int)

(assert (=> d!44639 (>= lt!9312 0)))

(declare-fun e!27829 () Int)

(assert (=> d!44639 (= lt!9312 e!27829)))

(declare-fun c!11574 () Bool)

(assert (=> d!44639 (= c!11574 (is-Nil!417 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616)))))

(assert (=> d!44639 (= (size!436 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616)) lt!9312)))

(declare-fun b!53401 () Bool)

(assert (=> b!53401 (= e!27829 0)))

(declare-fun b!53402 () Bool)

(assert (=> b!53402 (= e!27829 (+ 1 (size!436 (t!46828 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616)))))))

(assert (= (and d!44639 c!11574) b!53401))

(assert (= (and d!44639 (not c!11574)) b!53402))

(declare-fun m!57306 () Bool)

(assert (=> b!53402 m!57306))

(assert (=> b!53367 d!44639))

(declare-fun e!27831 () List!436)

(declare-fun b!53406 () Bool)

(assert (=> b!53406 (= e!27831 (Cons!416 (h!635 (++!57 (t!46828 l1!274) l2!268)) (insertAtIndex!17 (t!46828 (++!57 (t!46828 l1!274) l2!268)) (- (- i!421 1) 1) y!1616)))))

(declare-fun b!53405 () Bool)

(assert (=> b!53405 (= e!27831 (Cons!416 y!1616 (++!57 (t!46828 l1!274) l2!268)))))

(declare-fun b!53403 () Bool)

(declare-fun e!27830 () List!436)

(assert (=> b!53403 (= e!27830 (Cons!416 y!1616 Nil!417))))

(declare-fun d!44641 () Bool)

(declare-fun c!11575 () Bool)

(assert (=> d!44641 (= c!11575 (is-Nil!417 (++!57 (t!46828 l1!274) l2!268)))))

(assert (=> d!44641 (= (insertAtIndex!17 (++!57 (t!46828 l1!274) l2!268) (- i!421 1) y!1616) e!27830)))

(declare-fun b!53404 () Bool)

(assert (=> b!53404 (= e!27830 e!27831)))

(declare-fun c!11576 () Bool)

(assert (=> b!53404 (= c!11576 (= (- i!421 1) 0))))

(assert (= (and b!53404 c!11576) b!53405))

(assert (= (and b!53404 (not c!11576)) b!53406))

(assert (= (and d!44641 c!11575) b!53403))

(assert (= (and d!44641 (not c!11575)) b!53404))

(declare-fun m!57308 () Bool)

(assert (=> b!53406 m!57308))

(assert (=> b!53339 d!44641))

(declare-fun d!44643 () Bool)

(declare-fun e!27833 () Bool)

(assert (=> d!44643 e!27833))

(declare-fun res!24298 () Bool)

(assert (=> d!44643 (=> (not res!24298) (not e!27833))))

(declare-fun lt!9313 () List!436)

(assert (=> d!44643 (= res!24298 (= (content!97 lt!9313) (union (content!97 (t!46828 l1!274)) (content!97 l2!268))))))

(declare-fun e!27832 () List!436)

(assert (=> d!44643 (= lt!9313 e!27832)))

(declare-fun c!11577 () Bool)

(assert (=> d!44643 (= c!11577 (is-Nil!417 (t!46828 l1!274)))))

(assert (=> d!44643 (= (++!57 (t!46828 l1!274) l2!268) lt!9313)))

(declare-fun b!53407 () Bool)

(assert (=> b!53407 (= e!27832 l2!268)))

(declare-fun b!53408 () Bool)

(assert (=> b!53408 (= e!27832 (Cons!416 (h!635 (t!46828 l1!274)) (++!57 (t!46828 (t!46828 l1!274)) l2!268)))))

(declare-fun b!53410 () Bool)

(assert (=> b!53410 (= e!27833 (or (not (= l2!268 Nil!417)) (= lt!9313 (t!46828 l1!274))))))

(declare-fun b!53409 () Bool)

(declare-fun res!24299 () Bool)

(assert (=> b!53409 (=> (not res!24299) (not e!27833))))

(assert (=> b!53409 (= res!24299 (= (size!436 lt!9313) (+ (size!436 (t!46828 l1!274)) (size!436 l2!268))))))

(assert (= (and d!44643 c!11577) b!53407))

(assert (= (and d!44643 (not c!11577)) b!53408))

(assert (= (and d!44643 res!24298) b!53409))

(assert (= (and b!53409 res!24299) b!53410))

(declare-fun m!57310 () Bool)

(assert (=> d!44643 m!57310))

(declare-fun m!57312 () Bool)

(assert (=> d!44643 m!57312))

(assert (=> d!44643 m!57256))

(declare-fun m!57314 () Bool)

(assert (=> b!53408 m!57314))

(declare-fun m!57316 () Bool)

(assert (=> b!53409 m!57316))

(assert (=> b!53409 m!57232))

(assert (=> b!53409 m!57224))

(assert (=> b!53339 d!44643))

(declare-fun d!44645 () Bool)

(declare-fun lt!9314 () Int)

(assert (=> d!44645 (>= lt!9314 0)))

(declare-fun e!27834 () Int)

(assert (=> d!44645 (= lt!9314 e!27834)))

(declare-fun c!11578 () Bool)

(assert (=> d!44645 (= c!11578 (is-Nil!417 (t!46828 l1!274)))))

(assert (=> d!44645 (= (size!436 (t!46828 l1!274)) lt!9314)))

(declare-fun b!53411 () Bool)

(assert (=> b!53411 (= e!27834 0)))

(declare-fun b!53412 () Bool)

(assert (=> b!53412 (= e!27834 (+ 1 (size!436 (t!46828 (t!46828 l1!274)))))))

(assert (= (and d!44645 c!11578) b!53411))

(assert (= (and d!44645 (not c!11578)) b!53412))

(declare-fun m!57318 () Bool)

(assert (=> b!53412 m!57318))

(assert (=> b!53339 d!44645))

(declare-fun d!44647 () Bool)

(declare-fun lt!9315 () Int)

(assert (=> d!44647 (>= lt!9315 0)))

(declare-fun e!27835 () Int)

(assert (=> d!44647 (= lt!9315 e!27835)))

(declare-fun c!11579 () Bool)

(assert (=> d!44647 (= c!11579 (is-Nil!417 lt!9306))))

(assert (=> d!44647 (= (size!436 lt!9306) lt!9315)))

(declare-fun b!53413 () Bool)

(assert (=> b!53413 (= e!27835 0)))

(declare-fun b!53414 () Bool)

(assert (=> b!53414 (= e!27835 (+ 1 (size!436 (t!46828 lt!9306))))))

(assert (= (and d!44647 c!11579) b!53413))

(assert (= (and d!44647 (not c!11579)) b!53414))

(declare-fun m!57320 () Bool)

(assert (=> b!53414 m!57320))

(assert (=> b!53363 d!44647))

(assert (=> b!53363 d!44613))

(assert (=> b!53363 d!44615))

(declare-fun d!44649 () Bool)

(declare-fun e!27837 () Bool)

(assert (=> d!44649 e!27837))

(declare-fun res!24300 () Bool)

(assert (=> d!44649 (=> (not res!24300) (not e!27837))))

(declare-fun lt!9316 () List!436)

(assert (=> d!44649 (= res!24300 (= (content!97 lt!9316) (union (content!97 (t!46828 l1!274)) (content!97 (insertAtIndex!17 l2!268 (- (- i!421 1) (size!436 (t!46828 l1!274))) y!1616)))))))

(declare-fun e!27836 () List!436)

(assert (=> d!44649 (= lt!9316 e!27836)))

(declare-fun c!11580 () Bool)

(assert (=> d!44649 (= c!11580 (is-Nil!417 (t!46828 l1!274)))))

(assert (=> d!44649 (= (++!57 (t!46828 l1!274) (insertAtIndex!17 l2!268 (- (- i!421 1) (size!436 (t!46828 l1!274))) y!1616)) lt!9316)))

(declare-fun b!53415 () Bool)

(assert (=> b!53415 (= e!27836 (insertAtIndex!17 l2!268 (- (- i!421 1) (size!436 (t!46828 l1!274))) y!1616))))

(declare-fun b!53416 () Bool)

(assert (=> b!53416 (= e!27836 (Cons!416 (h!635 (t!46828 l1!274)) (++!57 (t!46828 (t!46828 l1!274)) (insertAtIndex!17 l2!268 (- (- i!421 1) (size!436 (t!46828 l1!274))) y!1616))))))

(declare-fun b!53418 () Bool)

(assert (=> b!53418 (= e!27837 (or (not (= (insertAtIndex!17 l2!268 (- (- i!421 1) (size!436 (t!46828 l1!274))) y!1616) Nil!417)) (= lt!9316 (t!46828 l1!274))))))

(declare-fun b!53417 () Bool)

(declare-fun res!24301 () Bool)

(assert (=> b!53417 (=> (not res!24301) (not e!27837))))

(assert (=> b!53417 (= res!24301 (= (size!436 lt!9316) (+ (size!436 (t!46828 l1!274)) (size!436 (insertAtIndex!17 l2!268 (- (- i!421 1) (size!436 (t!46828 l1!274))) y!1616)))))))

(assert (= (and d!44649 c!11580) b!53415))

(assert (= (and d!44649 (not c!11580)) b!53416))

(assert (= (and d!44649 res!24300) b!53417))

(assert (= (and b!53417 res!24301) b!53418))

(declare-fun m!57322 () Bool)

(assert (=> d!44649 m!57322))

(assert (=> d!44649 m!57312))

(assert (=> d!44649 m!57238))

(declare-fun m!57324 () Bool)

(assert (=> d!44649 m!57324))

(assert (=> b!53416 m!57238))

(declare-fun m!57326 () Bool)

(assert (=> b!53416 m!57326))

(declare-fun m!57328 () Bool)

(assert (=> b!53417 m!57328))

(assert (=> b!53417 m!57232))

(assert (=> b!53417 m!57238))

(declare-fun m!57330 () Bool)

(assert (=> b!53417 m!57330))

(assert (=> b!53337 d!44649))

(declare-fun e!27839 () List!436)

(declare-fun b!53422 () Bool)

(assert (=> b!53422 (= e!27839 (Cons!416 (h!635 l2!268) (insertAtIndex!17 (t!46828 l2!268) (- (- (- i!421 1) (size!436 (t!46828 l1!274))) 1) y!1616)))))

(declare-fun b!53421 () Bool)

(assert (=> b!53421 (= e!27839 (Cons!416 y!1616 l2!268))))

(declare-fun b!53419 () Bool)

(declare-fun e!27838 () List!436)

(assert (=> b!53419 (= e!27838 (Cons!416 y!1616 Nil!417))))

(declare-fun d!44651 () Bool)

(declare-fun c!11581 () Bool)

(assert (=> d!44651 (= c!11581 (is-Nil!417 l2!268))))

(assert (=> d!44651 (= (insertAtIndex!17 l2!268 (- (- i!421 1) (size!436 (t!46828 l1!274))) y!1616) e!27838)))

(declare-fun b!53420 () Bool)

(assert (=> b!53420 (= e!27838 e!27839)))

(declare-fun c!11582 () Bool)

(assert (=> b!53420 (= c!11582 (= (- (- i!421 1) (size!436 (t!46828 l1!274))) 0))))

(assert (= (and b!53420 c!11582) b!53421))

(assert (= (and b!53420 (not c!11582)) b!53422))

(assert (= (and d!44651 c!11581) b!53419))

(assert (= (and d!44651 (not c!11581)) b!53420))

(declare-fun m!57332 () Bool)

(assert (=> b!53422 m!57332))

(assert (=> b!53337 d!44651))

(assert (=> b!53337 d!44645))

(assert (=> b!53340 d!44645))

(assert (=> b!53340 d!44615))

(declare-fun b!53426 () Bool)

(declare-fun e!27841 () List!436)

(assert (=> b!53426 (= e!27841 (Cons!416 (h!635 (t!46828 (++!57 l1!274 l2!268))) (insertAtIndex!17 (t!46828 (t!46828 (++!57 l1!274 l2!268))) (- (- i!421 1) 1) y!1616)))))

(declare-fun b!53425 () Bool)

(assert (=> b!53425 (= e!27841 (Cons!416 y!1616 (t!46828 (++!57 l1!274 l2!268))))))

(declare-fun b!53423 () Bool)

(declare-fun e!27840 () List!436)

(assert (=> b!53423 (= e!27840 (Cons!416 y!1616 Nil!417))))

(declare-fun d!44653 () Bool)

(declare-fun c!11583 () Bool)

(assert (=> d!44653 (= c!11583 (is-Nil!417 (t!46828 (++!57 l1!274 l2!268))))))

(assert (=> d!44653 (= (insertAtIndex!17 (t!46828 (++!57 l1!274 l2!268)) (- i!421 1) y!1616) e!27840)))

(declare-fun b!53424 () Bool)

(assert (=> b!53424 (= e!27840 e!27841)))

(declare-fun c!11584 () Bool)

(assert (=> b!53424 (= c!11584 (= (- i!421 1) 0))))

(assert (= (and b!53424 c!11584) b!53425))

(assert (= (and b!53424 (not c!11584)) b!53426))

(assert (= (and d!44653 c!11583) b!53423))

(assert (= (and d!44653 (not c!11583)) b!53424))

(declare-fun m!57334 () Bool)

(assert (=> b!53426 m!57334))

(assert (=> b!53352 d!44653))

(declare-fun d!44655 () Bool)

(declare-fun e!27843 () Bool)

(assert (=> d!44655 e!27843))

(declare-fun res!24302 () Bool)

(assert (=> d!44655 (=> (not res!24302) (not e!27843))))

(declare-fun lt!9317 () List!436)

(assert (=> d!44655 (= res!24302 (= (content!97 lt!9317) (union (content!97 (t!46828 l1!274)) (content!97 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616)))))))

(declare-fun e!27842 () List!436)

(assert (=> d!44655 (= lt!9317 e!27842)))

(declare-fun c!11585 () Bool)

(assert (=> d!44655 (= c!11585 (is-Nil!417 (t!46828 l1!274)))))

(assert (=> d!44655 (= (++!57 (t!46828 l1!274) (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616)) lt!9317)))

(declare-fun b!53427 () Bool)

(assert (=> b!53427 (= e!27842 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616))))

(declare-fun b!53428 () Bool)

(assert (=> b!53428 (= e!27842 (Cons!416 (h!635 (t!46828 l1!274)) (++!57 (t!46828 (t!46828 l1!274)) (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616))))))

(declare-fun b!53430 () Bool)

(assert (=> b!53430 (= e!27843 (or (not (= (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616) Nil!417)) (= lt!9317 (t!46828 l1!274))))))

(declare-fun b!53429 () Bool)

(declare-fun res!24303 () Bool)

(assert (=> b!53429 (=> (not res!24303) (not e!27843))))

(assert (=> b!53429 (= res!24303 (= (size!436 lt!9317) (+ (size!436 (t!46828 l1!274)) (size!436 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616)))))))

(assert (= (and d!44655 c!11585) b!53427))

(assert (= (and d!44655 (not c!11585)) b!53428))

(assert (= (and d!44655 res!24302) b!53429))

(assert (= (and b!53429 res!24303) b!53430))

(declare-fun m!57336 () Bool)

(assert (=> d!44655 m!57336))

(assert (=> d!44655 m!57312))

(assert (=> d!44655 m!57216))

(assert (=> d!44655 m!57262))

(assert (=> b!53428 m!57216))

(declare-fun m!57338 () Bool)

(assert (=> b!53428 m!57338))

(declare-fun m!57340 () Bool)

(assert (=> b!53429 m!57340))

(assert (=> b!53429 m!57232))

(assert (=> b!53429 m!57216))

(assert (=> b!53429 m!57268))

(assert (=> b!53366 d!44655))

(assert (=> b!53362 d!44643))

(declare-fun d!44657 () Bool)

(declare-fun lt!9318 () Int)

(assert (=> d!44657 (>= lt!9318 0)))

(declare-fun e!27844 () Int)

(assert (=> d!44657 (= lt!9318 e!27844)))

(declare-fun c!11586 () Bool)

(assert (=> d!44657 (= c!11586 (is-Nil!417 (t!46828 l2!268)))))

(assert (=> d!44657 (= (size!436 (t!46828 l2!268)) lt!9318)))

(declare-fun b!53431 () Bool)

(assert (=> b!53431 (= e!27844 0)))

(declare-fun b!53432 () Bool)

(assert (=> b!53432 (= e!27844 (+ 1 (size!436 (t!46828 (t!46828 l2!268)))))))

(assert (= (and d!44657 c!11586) b!53431))

(assert (= (and d!44657 (not c!11586)) b!53432))

(declare-fun m!57342 () Bool)

(assert (=> b!53432 m!57342))

(assert (=> b!53325 d!44657))

(declare-fun d!44659 () Bool)

(declare-fun c!11589 () Bool)

(assert (=> d!44659 (= c!11589 (is-Nil!417 lt!9306))))

(declare-fun e!27847 () (Set T!3225))

(assert (=> d!44659 (= (content!97 lt!9306) e!27847)))

(declare-fun b!53437 () Bool)

(assert (=> b!53437 (= e!27847 (as emptyset (Set T!3225)))))

(declare-fun b!53438 () Bool)

(assert (=> b!53438 (= e!27847 (union (insert (h!635 lt!9306) (as emptyset (Set T!3225))) (content!97 (t!46828 lt!9306))))))

(assert (= (and d!44659 c!11589) b!53437))

(assert (= (and d!44659 (not c!11589)) b!53438))

(declare-fun m!57344 () Bool)

(assert (=> b!53438 m!57344))

(declare-fun m!57346 () Bool)

(assert (=> b!53438 m!57346))

(assert (=> d!44621 d!44659))

(declare-fun d!44661 () Bool)

(declare-fun c!11590 () Bool)

(assert (=> d!44661 (= c!11590 (is-Nil!417 l1!274))))

(declare-fun e!27848 () (Set T!3225))

(assert (=> d!44661 (= (content!97 l1!274) e!27848)))

(declare-fun b!53439 () Bool)

(assert (=> b!53439 (= e!27848 (as emptyset (Set T!3225)))))

(declare-fun b!53440 () Bool)

(assert (=> b!53440 (= e!27848 (union (insert (h!635 l1!274) (as emptyset (Set T!3225))) (content!97 (t!46828 l1!274))))))

(assert (= (and d!44661 c!11590) b!53439))

(assert (= (and d!44661 (not c!11590)) b!53440))

(declare-fun m!57348 () Bool)

(assert (=> b!53440 m!57348))

(assert (=> b!53440 m!57312))

(assert (=> d!44621 d!44661))

(declare-fun d!44663 () Bool)

(declare-fun c!11591 () Bool)

(assert (=> d!44663 (= c!11591 (is-Nil!417 l2!268))))

(declare-fun e!27849 () (Set T!3225))

(assert (=> d!44663 (= (content!97 l2!268) e!27849)))

(declare-fun b!53441 () Bool)

(assert (=> b!53441 (= e!27849 (as emptyset (Set T!3225)))))

(declare-fun b!53442 () Bool)

(assert (=> b!53442 (= e!27849 (union (insert (h!635 l2!268) (as emptyset (Set T!3225))) (content!97 (t!46828 l2!268))))))

(assert (= (and d!44663 c!11591) b!53441))

(assert (= (and d!44663 (not c!11591)) b!53442))

(declare-fun m!57350 () Bool)

(assert (=> b!53442 m!57350))

(declare-fun m!57352 () Bool)

(assert (=> b!53442 m!57352))

(assert (=> d!44621 d!44663))

(assert (=> b!53380 d!44633))

(declare-fun d!44665 () Bool)

(declare-fun c!11592 () Bool)

(assert (=> d!44665 (= c!11592 (is-Nil!417 lt!9307))))

(declare-fun e!27850 () (Set T!3225))

(assert (=> d!44665 (= (content!97 lt!9307) e!27850)))

(declare-fun b!53443 () Bool)

(assert (=> b!53443 (= e!27850 (as emptyset (Set T!3225)))))

(declare-fun b!53444 () Bool)

(assert (=> b!53444 (= e!27850 (union (insert (h!635 lt!9307) (as emptyset (Set T!3225))) (content!97 (t!46828 lt!9307))))))

(assert (= (and d!44665 c!11592) b!53443))

(assert (= (and d!44665 (not c!11592)) b!53444))

(declare-fun m!57354 () Bool)

(assert (=> b!53444 m!57354))

(declare-fun m!57356 () Bool)

(assert (=> b!53444 m!57356))

(assert (=> d!44623 d!44665))

(assert (=> d!44623 d!44661))

(declare-fun d!44667 () Bool)

(declare-fun c!11593 () Bool)

(assert (=> d!44667 (= c!11593 (is-Nil!417 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616)))))

(declare-fun e!27851 () (Set T!3225))

(assert (=> d!44667 (= (content!97 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616)) e!27851)))

(declare-fun b!53445 () Bool)

(assert (=> b!53445 (= e!27851 (as emptyset (Set T!3225)))))

(declare-fun b!53446 () Bool)

(assert (=> b!53446 (= e!27851 (union (insert (h!635 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616)) (as emptyset (Set T!3225))) (content!97 (t!46828 (insertAtIndex!17 l2!268 (- i!421 (size!436 l1!274)) y!1616)))))))

(assert (= (and d!44667 c!11593) b!53445))

(assert (= (and d!44667 (not c!11593)) b!53446))

(declare-fun m!57358 () Bool)

(assert (=> b!53446 m!57358))

(declare-fun m!57360 () Bool)

(assert (=> b!53446 m!57360))

(assert (=> d!44623 d!44667))

(assert (=> b!53323 d!44645))

(declare-fun d!44669 () Bool)

(declare-fun c!11594 () Bool)

(assert (=> d!44669 (= c!11594 (is-Nil!417 lt!9308))))

(declare-fun e!27852 () (Set T!3225))

(assert (=> d!44669 (= (content!97 lt!9308) e!27852)))

(declare-fun b!53447 () Bool)

(assert (=> b!53447 (= e!27852 (as emptyset (Set T!3225)))))

(declare-fun b!53448 () Bool)

(assert (=> b!53448 (= e!27852 (union (insert (h!635 lt!9308) (as emptyset (Set T!3225))) (content!97 (t!46828 lt!9308))))))

(assert (= (and d!44669 c!11594) b!53447))

(assert (= (and d!44669 (not c!11594)) b!53448))

(declare-fun m!57362 () Bool)

(assert (=> b!53448 m!57362))

(declare-fun m!57364 () Bool)

(assert (=> b!53448 m!57364))

(assert (=> d!44627 d!44669))

(declare-fun c!11595 () Bool)

(declare-fun d!44671 () Bool)

(assert (=> d!44671 (= c!11595 (is-Nil!417 (insertAtIndex!17 l1!274 i!421 y!1616)))))

(declare-fun e!27853 () (Set T!3225))

(assert (=> d!44671 (= (content!97 (insertAtIndex!17 l1!274 i!421 y!1616)) e!27853)))

(declare-fun b!53449 () Bool)

(assert (=> b!53449 (= e!27853 (as emptyset (Set T!3225)))))

(declare-fun b!53450 () Bool)

(assert (=> b!53450 (= e!27853 (union (insert (h!635 (insertAtIndex!17 l1!274 i!421 y!1616)) (as emptyset (Set T!3225))) (content!97 (t!46828 (insertAtIndex!17 l1!274 i!421 y!1616)))))))

(assert (= (and d!44671 c!11595) b!53449))

(assert (= (and d!44671 (not c!11595)) b!53450))

(declare-fun m!57366 () Bool)

(assert (=> b!53450 m!57366))

(assert (=> b!53450 m!57296))

(assert (=> d!44627 d!44671))

(assert (=> d!44627 d!44663))

(declare-fun d!44673 () Bool)

(declare-fun lt!9319 () Int)

(assert (=> d!44673 (>= lt!9319 0)))

(declare-fun e!27854 () Int)

(assert (=> d!44673 (= lt!9319 e!27854)))

(declare-fun c!11596 () Bool)

(assert (=> d!44673 (= c!11596 (is-Nil!417 lt!9308))))

(assert (=> d!44673 (= (size!436 lt!9308) lt!9319)))

(declare-fun b!53451 () Bool)

(assert (=> b!53451 (= e!27854 0)))

(declare-fun b!53452 () Bool)

(assert (=> b!53452 (= e!27854 (+ 1 (size!436 (t!46828 lt!9308))))))

(assert (= (and d!44673 c!11596) b!53451))

(assert (= (and d!44673 (not c!11596)) b!53452))

(declare-fun m!57368 () Bool)

(assert (=> b!53452 m!57368))

(assert (=> b!53375 d!44673))

(declare-fun d!44675 () Bool)

(declare-fun lt!9320 () Int)

(assert (=> d!44675 (>= lt!9320 0)))

(declare-fun e!27855 () Int)

(assert (=> d!44675 (= lt!9320 e!27855)))

(declare-fun c!11597 () Bool)

(assert (=> d!44675 (= c!11597 (is-Nil!417 (insertAtIndex!17 l1!274 i!421 y!1616)))))

(assert (=> d!44675 (= (size!436 (insertAtIndex!17 l1!274 i!421 y!1616)) lt!9320)))

(declare-fun b!53453 () Bool)

(assert (=> b!53453 (= e!27855 0)))

(declare-fun b!53454 () Bool)

(assert (=> b!53454 (= e!27855 (+ 1 (size!436 (t!46828 (insertAtIndex!17 l1!274 i!421 y!1616)))))))

(assert (= (and d!44675 c!11597) b!53453))

(assert (= (and d!44675 (not c!11597)) b!53454))

(assert (=> b!53454 m!57302))

(assert (=> b!53375 d!44675))

(assert (=> b!53375 d!44615))

(declare-fun e!27857 () List!436)

(declare-fun b!53458 () Bool)

(assert (=> b!53458 (= e!27857 (Cons!416 (h!635 (t!46828 l2!268)) (insertAtIndex!17 (t!46828 (t!46828 l2!268)) (- (- (- i!421 (size!436 l1!274)) 1) 1) y!1616)))))

(declare-fun b!53457 () Bool)

(assert (=> b!53457 (= e!27857 (Cons!416 y!1616 (t!46828 l2!268)))))

(declare-fun b!53455 () Bool)

(declare-fun e!27856 () List!436)

(assert (=> b!53455 (= e!27856 (Cons!416 y!1616 Nil!417))))

(declare-fun d!44677 () Bool)

(declare-fun c!11598 () Bool)

(assert (=> d!44677 (= c!11598 (is-Nil!417 (t!46828 l2!268)))))

(assert (=> d!44677 (= (insertAtIndex!17 (t!46828 l2!268) (- (- i!421 (size!436 l1!274)) 1) y!1616) e!27856)))

(declare-fun b!53456 () Bool)

(assert (=> b!53456 (= e!27856 e!27857)))

(declare-fun c!11599 () Bool)

(assert (=> b!53456 (= c!11599 (= (- (- i!421 (size!436 l1!274)) 1) 0))))

(assert (= (and b!53456 c!11599) b!53457))

(assert (= (and b!53456 (not c!11599)) b!53458))

(assert (= (and d!44677 c!11598) b!53455))

(assert (= (and d!44677 (not c!11598)) b!53456))

(declare-fun m!57370 () Bool)

(assert (=> b!53458 m!57370))

(assert (=> b!53372 d!44677))

(declare-fun d!44679 () Bool)

(declare-fun e!27860 () Bool)

(assert (=> d!44679 e!27860))

(declare-fun res!24304 () Bool)

(assert (=> d!44679 (=> (not res!24304) (not e!27860))))

(declare-fun e!27858 () Bool)

(assert (=> d!44679 (= res!24304 e!27858)))

(declare-fun res!24306 () Bool)

(assert (=> d!44679 (=> res!24306 e!27858)))

(assert (=> d!44679 (= res!24306 (or (is-Nil!417 (t!46828 (t!46828 l1!274))) (= (- (- i!421 1) 1) 0)))))

(declare-fun e!27861 () Bool)

(assert (=> d!44679 e!27861))

(declare-fun res!24305 () Bool)

(assert (=> d!44679 (=> (not res!24305) (not e!27861))))

(assert (=> d!44679 (= res!24305 (<= 0 (- (- i!421 1) 1)))))

(assert (=> d!44679 (= (appendInsertIndex!22 (t!46828 (t!46828 l1!274)) l2!268 (- (- i!421 1) 1) y!1616) true)))

(declare-fun e!27859 () List!436)

(declare-fun b!53459 () Bool)

(assert (=> b!53459 (= e!27859 (++!57 (insertAtIndex!17 (t!46828 (t!46828 l1!274)) (- (- i!421 1) 1) y!1616) l2!268))))

(declare-fun b!53460 () Bool)

(assert (=> b!53460 (= e!27859 (++!57 (t!46828 (t!46828 l1!274)) (insertAtIndex!17 l2!268 (- (- (- i!421 1) 1) (size!436 (t!46828 (t!46828 l1!274)))) y!1616)))))

(declare-fun b!53461 () Bool)

(assert (=> b!53461 (= e!27858 (appendInsertIndex!22 (t!46828 (t!46828 (t!46828 l1!274))) l2!268 (- (- (- i!421 1) 1) 1) y!1616))))

(declare-fun b!53462 () Bool)

(assert (=> b!53462 (= e!27860 (= (insertAtIndex!17 (++!57 (t!46828 (t!46828 l1!274)) l2!268) (- (- i!421 1) 1) y!1616) e!27859))))

(declare-fun c!11600 () Bool)

(assert (=> b!53462 (= c!11600 (< (- (- i!421 1) 1) (size!436 (t!46828 (t!46828 l1!274)))))))

(declare-fun b!53463 () Bool)

(assert (=> b!53463 (= e!27861 (<= (- (- i!421 1) 1) (+ (size!436 (t!46828 (t!46828 l1!274))) (size!436 l2!268))))))

(assert (= (and d!44679 res!24305) b!53463))

(assert (= (and d!44679 (not res!24306)) b!53461))

(assert (= (and d!44679 res!24304) b!53462))

(assert (= (and b!53462 c!11600) b!53459))

(assert (= (and b!53462 (not c!11600)) b!53460))

(declare-fun m!57372 () Bool)

(assert (=> b!53461 m!57372))

(assert (=> b!53460 m!57318))

(declare-fun m!57374 () Bool)

(assert (=> b!53460 m!57374))

(assert (=> b!53460 m!57374))

(declare-fun m!57376 () Bool)

(assert (=> b!53460 m!57376))

(assert (=> b!53462 m!57314))

(assert (=> b!53462 m!57314))

(declare-fun m!57378 () Bool)

(assert (=> b!53462 m!57378))

(assert (=> b!53462 m!57318))

(assert (=> b!53463 m!57318))

(assert (=> b!53463 m!57224))

(assert (=> b!53459 m!57292))

(assert (=> b!53459 m!57292))

(declare-fun m!57380 () Bool)

(assert (=> b!53459 m!57380))

(assert (=> b!53338 d!44679))

(declare-fun b!53464 () Bool)

(declare-fun e!27862 () Bool)

(declare-fun tp!15141 () Bool)

(assert (=> b!53464 (= e!27862 (and tp_is_empty!293 tp!15141))))

(assert (=> b!53386 (= tp!15140 e!27862)))

(assert (= (and b!53386 (is-Cons!416 (t!46828 (t!46828 l2!268)))) b!53464))

(declare-fun b!53465 () Bool)

(declare-fun e!27863 () Bool)

(declare-fun tp!15142 () Bool)

(assert (=> b!53465 (= e!27863 (and tp_is_empty!293 tp!15142))))

(assert (=> b!53385 (= tp!15139 e!27863)))

(assert (= (and b!53385 (is-Cons!416 (t!46828 (t!46828 l1!274)))) b!53465))

(push 1)

(assert tp_is_empty!293)

(assert (not b!53394))

(assert (not b!53417))

(assert (not b!53416))

(assert (not b!53429))

(assert (not b!53396))

(assert (not b!53465))

(assert (not b!53464))

(assert (not d!44643))

(assert (not b!53462))

(assert (not b!53459))

(assert (not b!53461))

(assert (not b!53428))

(assert (not b!53448))

(assert (not b!53444))

(assert (not d!44655))

(assert (not b!53397))

(assert (not b!53400))

(assert (not b!53460))

(assert (not b!53422))

(assert (not b!53406))

(assert (not d!44635))

(assert (not b!53414))

(assert (not b!53432))

(assert (not b!53408))

(assert (not b!53412))

(assert (not b!53426))

(assert (not b!53440))

(assert (not b!53450))

(assert (not d!44649))

(assert (not b!53438))

(assert (not b!53452))

(assert (not b!53388))

(assert (not b!53446))

(assert (not b!53442))

(assert (not b!53454))

(assert (not b!53402))

(assert (not d!44631))

(assert (not b!53409))

(assert (not b!53389))

(assert (not b!53458))

(assert (not b!53463))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


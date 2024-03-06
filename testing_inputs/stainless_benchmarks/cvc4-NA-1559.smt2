; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10572 () Bool)

(assert start!10572)

(declare-fun b!80281 () Bool)

(declare-fun res!40733 () Bool)

(declare-fun e!43556 () Bool)

(assert (=> b!80281 (=> (not res!40733) (not e!43556))))

(declare-datatypes () ((List!656 (Cons!614 (h!904 Int) (t!47643 List!656)) (Nil!616))))

(declare-fun l2!412 () List!656)

(declare-fun res!39932 () List!656)

(declare-fun l1!419 () List!656)

(declare-fun appendSorted!0 (List!656 List!656) List!656)

(assert (=> b!80281 (= res!40733 (= res!39932 (Cons!614 (h!904 l1!419) (appendSorted!0 (t!47643 l1!419) l2!412))))))

(declare-fun res!40729 () Bool)

(assert (=> start!10572 (=> (not res!40729) (not e!43556))))

(declare-fun isSorted!2 (List!656) Bool)

(assert (=> start!10572 (= res!40729 (isSorted!2 l1!419))))

(assert (=> start!10572 e!43556))

(assert (=> start!10572 true))

(declare-fun b!80282 () Bool)

(declare-fun res!40732 () Bool)

(assert (=> b!80282 (=> (not res!40732) (not e!43556))))

(assert (=> b!80282 (= res!40732 (not (is-Nil!616 l1!419)))))

(declare-fun b!80283 () Bool)

(declare-fun res!40728 () Bool)

(assert (=> b!80283 (=> (not res!40728) (not e!43556))))

(assert (=> b!80283 (= res!40728 (isSorted!2 l2!412))))

(declare-fun b!80284 () Bool)

(declare-fun res!40731 () Bool)

(declare-fun e!43558 () Bool)

(assert (=> b!80284 (=> res!40731 e!43558)))

(declare-fun isEmpty!668 (List!656) Bool)

(assert (=> b!80284 (= res!40731 (isEmpty!668 l2!412))))

(declare-fun b!80285 () Bool)

(declare-fun e!43557 () Bool)

(assert (=> b!80285 (= e!43556 e!43557)))

(declare-fun res!40730 () Bool)

(assert (=> b!80285 (=> res!40730 e!43557)))

(assert (=> b!80285 (= res!40730 (not (isSorted!2 res!39932)))))

(declare-fun b!80286 () Bool)

(declare-fun last!10 (List!656) Int)

(declare-fun head!1048 (List!656) Int)

(assert (=> b!80286 (= e!43558 (<= (last!10 l1!419) (head!1048 l2!412)))))

(declare-fun b!80287 () Bool)

(declare-fun res!40726 () Bool)

(assert (=> b!80287 (=> (not res!40726) (not e!43556))))

(assert (=> b!80287 (= res!40726 e!43558)))

(declare-fun res!40727 () Bool)

(assert (=> b!80287 (=> res!40727 e!43558)))

(assert (=> b!80287 (= res!40727 (isEmpty!668 l1!419))))

(declare-fun b!80288 () Bool)

(declare-fun content!116 (List!656) (Set Int))

(assert (=> b!80288 (= e!43557 (not (= (content!116 res!39932) (union (content!116 l1!419) (content!116 l2!412)))))))

(assert (= (and start!10572 res!40729) b!80283))

(assert (= (and b!80283 res!40728) b!80287))

(assert (= (and b!80287 (not res!40727)) b!80284))

(assert (= (and b!80284 (not res!40731)) b!80286))

(assert (= (and b!80287 res!40726) b!80282))

(assert (= (and b!80282 res!40732) b!80281))

(assert (= (and b!80281 res!40733) b!80285))

(assert (= (and b!80285 (not res!40730)) b!80288))

(declare-fun m!75092 () Bool)

(assert (=> start!10572 m!75092))

(declare-fun m!75094 () Bool)

(assert (=> b!80287 m!75094))

(declare-fun m!75096 () Bool)

(assert (=> b!80283 m!75096))

(declare-fun m!75098 () Bool)

(assert (=> b!80286 m!75098))

(declare-fun m!75100 () Bool)

(assert (=> b!80286 m!75100))

(declare-fun m!75102 () Bool)

(assert (=> b!80285 m!75102))

(declare-fun m!75104 () Bool)

(assert (=> b!80281 m!75104))

(declare-fun m!75106 () Bool)

(assert (=> b!80288 m!75106))

(declare-fun m!75108 () Bool)

(assert (=> b!80288 m!75108))

(declare-fun m!75110 () Bool)

(assert (=> b!80288 m!75110))

(declare-fun m!75112 () Bool)

(assert (=> b!80284 m!75112))

(push 1)

(assert (not b!80284))

(assert (not start!10572))

(assert (not b!80286))

(assert (not b!80287))

(assert (not b!80283))

(assert (not b!80288))

(assert (not b!80285))

(assert (not b!80281))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55417 () Bool)

(declare-fun res!40738 () Bool)

(declare-fun e!43563 () Bool)

(assert (=> d!55417 (=> res!40738 e!43563)))

(assert (=> d!55417 (= res!40738 (not (and (is-Cons!614 l2!412) (is-Cons!614 (t!47643 l2!412)))))))

(assert (=> d!55417 (= (isSorted!2 l2!412) e!43563)))

(declare-fun b!80293 () Bool)

(declare-fun e!43564 () Bool)

(assert (=> b!80293 (= e!43563 e!43564)))

(declare-fun res!40739 () Bool)

(assert (=> b!80293 (=> (not res!40739) (not e!43564))))

(assert (=> b!80293 (= res!40739 (<= (h!904 l2!412) (h!904 (t!47643 l2!412))))))

(declare-fun b!80294 () Bool)

(assert (=> b!80294 (= e!43564 (isSorted!2 (t!47643 l2!412)))))

(assert (= (and d!55417 (not res!40738)) b!80293))

(assert (= (and b!80293 res!40739) b!80294))

(declare-fun m!75114 () Bool)

(assert (=> b!80294 m!75114))

(assert (=> b!80283 d!55417))

(declare-fun b!80309 () Bool)

(declare-fun e!43574 () List!656)

(assert (=> b!80309 (= e!43574 l2!412)))

(declare-fun e!43573 () Bool)

(declare-fun lt!18340 () List!656)

(declare-fun b!80310 () Bool)

(assert (=> b!80310 (= e!43573 (= (content!116 lt!18340) (union (content!116 (t!47643 l1!419)) (content!116 l2!412))))))

(declare-fun b!80311 () Bool)

(declare-fun e!43576 () Bool)

(declare-fun e!43575 () Bool)

(assert (=> b!80311 (= e!43576 e!43575)))

(declare-fun res!40755 () Bool)

(assert (=> b!80311 (=> res!40755 e!43575)))

(assert (=> b!80311 (= res!40755 (isEmpty!668 (t!47643 l1!419)))))

(declare-fun b!80312 () Bool)

(assert (=> b!80312 (= e!43574 (Cons!614 (h!904 (t!47643 l1!419)) (appendSorted!0 (t!47643 (t!47643 l1!419)) l2!412)))))

(declare-fun b!80313 () Bool)

(declare-fun res!40753 () Bool)

(assert (=> b!80313 (=> (not res!40753) (not e!43576))))

(assert (=> b!80313 (= res!40753 (isSorted!2 l2!412))))

(declare-fun b!80314 () Bool)

(declare-fun res!40754 () Bool)

(assert (=> b!80314 (=> res!40754 e!43575)))

(assert (=> b!80314 (= res!40754 (isEmpty!668 l2!412))))

(declare-fun b!80315 () Bool)

(assert (=> b!80315 (= e!43575 (<= (last!10 (t!47643 l1!419)) (head!1048 l2!412)))))

(declare-fun d!55419 () Bool)

(assert (=> d!55419 e!43573))

(declare-fun res!40751 () Bool)

(assert (=> d!55419 (=> (not res!40751) (not e!43573))))

(assert (=> d!55419 (= res!40751 (isSorted!2 lt!18340))))

(assert (=> d!55419 (= lt!18340 e!43574)))

(declare-fun c!20324 () Bool)

(assert (=> d!55419 (= c!20324 (is-Nil!616 (t!47643 l1!419)))))

(assert (=> d!55419 e!43576))

(declare-fun res!40752 () Bool)

(assert (=> d!55419 (=> (not res!40752) (not e!43576))))

(assert (=> d!55419 (= res!40752 (isSorted!2 (t!47643 l1!419)))))

(assert (=> d!55419 (= (appendSorted!0 (t!47643 l1!419) l2!412) lt!18340)))

(assert (= (and d!55419 res!40752) b!80313))

(assert (= (and b!80313 res!40753) b!80311))

(assert (= (and b!80311 (not res!40755)) b!80314))

(assert (= (and b!80314 (not res!40754)) b!80315))

(assert (= (and d!55419 c!20324) b!80309))

(assert (= (and d!55419 (not c!20324)) b!80312))

(assert (= (and d!55419 res!40751) b!80310))

(declare-fun m!75116 () Bool)

(assert (=> b!80311 m!75116))

(assert (=> b!80314 m!75112))

(declare-fun m!75118 () Bool)

(assert (=> b!80312 m!75118))

(declare-fun m!75120 () Bool)

(assert (=> d!55419 m!75120))

(declare-fun m!75122 () Bool)

(assert (=> d!55419 m!75122))

(declare-fun m!75124 () Bool)

(assert (=> b!80315 m!75124))

(assert (=> b!80315 m!75100))

(declare-fun m!75126 () Bool)

(assert (=> b!80310 m!75126))

(declare-fun m!75128 () Bool)

(assert (=> b!80310 m!75128))

(assert (=> b!80310 m!75110))

(assert (=> b!80313 m!75096))

(assert (=> b!80281 d!55419))

(declare-fun d!55421 () Bool)

(declare-fun res!40756 () Bool)

(declare-fun e!43577 () Bool)

(assert (=> d!55421 (=> res!40756 e!43577)))

(assert (=> d!55421 (= res!40756 (not (and (is-Cons!614 l1!419) (is-Cons!614 (t!47643 l1!419)))))))

(assert (=> d!55421 (= (isSorted!2 l1!419) e!43577)))

(declare-fun b!80316 () Bool)

(declare-fun e!43578 () Bool)

(assert (=> b!80316 (= e!43577 e!43578)))

(declare-fun res!40757 () Bool)

(assert (=> b!80316 (=> (not res!40757) (not e!43578))))

(assert (=> b!80316 (= res!40757 (<= (h!904 l1!419) (h!904 (t!47643 l1!419))))))

(declare-fun b!80317 () Bool)

(assert (=> b!80317 (= e!43578 (isSorted!2 (t!47643 l1!419)))))

(assert (= (and d!55421 (not res!40756)) b!80316))

(assert (= (and b!80316 res!40757) b!80317))

(assert (=> b!80317 m!75122))

(assert (=> start!10572 d!55421))

(declare-fun d!55423 () Bool)

(assert (=> d!55423 (= (isEmpty!668 l2!412) (is-Nil!616 l2!412))))

(assert (=> b!80284 d!55423))

(declare-fun d!55425 () Bool)

(declare-fun c!20327 () Bool)

(assert (=> d!55425 (= c!20327 (is-Nil!616 res!39932))))

(declare-fun e!43581 () (Set Int))

(assert (=> d!55425 (= (content!116 res!39932) e!43581)))

(declare-fun b!80322 () Bool)

(assert (=> b!80322 (= e!43581 (as emptyset (Set Int)))))

(declare-fun b!80323 () Bool)

(assert (=> b!80323 (= e!43581 (union (insert (h!904 res!39932) (as emptyset (Set Int))) (content!116 (t!47643 res!39932))))))

(assert (= (and d!55425 c!20327) b!80322))

(assert (= (and d!55425 (not c!20327)) b!80323))

(declare-fun m!75130 () Bool)

(assert (=> b!80323 m!75130))

(declare-fun m!75132 () Bool)

(assert (=> b!80323 m!75132))

(assert (=> b!80288 d!55425))

(declare-fun d!55427 () Bool)

(declare-fun c!20328 () Bool)

(assert (=> d!55427 (= c!20328 (is-Nil!616 l1!419))))

(declare-fun e!43582 () (Set Int))

(assert (=> d!55427 (= (content!116 l1!419) e!43582)))

(declare-fun b!80324 () Bool)

(assert (=> b!80324 (= e!43582 (as emptyset (Set Int)))))

(declare-fun b!80325 () Bool)

(assert (=> b!80325 (= e!43582 (union (insert (h!904 l1!419) (as emptyset (Set Int))) (content!116 (t!47643 l1!419))))))

(assert (= (and d!55427 c!20328) b!80324))

(assert (= (and d!55427 (not c!20328)) b!80325))

(declare-fun m!75134 () Bool)

(assert (=> b!80325 m!75134))

(assert (=> b!80325 m!75128))

(assert (=> b!80288 d!55427))

(declare-fun d!55429 () Bool)

(declare-fun c!20329 () Bool)

(assert (=> d!55429 (= c!20329 (is-Nil!616 l2!412))))

(declare-fun e!43583 () (Set Int))

(assert (=> d!55429 (= (content!116 l2!412) e!43583)))

(declare-fun b!80326 () Bool)

(assert (=> b!80326 (= e!43583 (as emptyset (Set Int)))))

(declare-fun b!80327 () Bool)

(assert (=> b!80327 (= e!43583 (union (insert (h!904 l2!412) (as emptyset (Set Int))) (content!116 (t!47643 l2!412))))))

(assert (= (and d!55429 c!20329) b!80326))

(assert (= (and d!55429 (not c!20329)) b!80327))

(declare-fun m!75136 () Bool)

(assert (=> b!80327 m!75136))

(declare-fun m!75138 () Bool)

(assert (=> b!80327 m!75138))

(assert (=> b!80288 d!55429))

(declare-fun d!55431 () Bool)

(declare-fun lt!18343 () Int)

(declare-fun contains!55 (List!656 Int) Bool)

(assert (=> d!55431 (contains!55 l1!419 lt!18343)))

(declare-fun e!43586 () Int)

(assert (=> d!55431 (= lt!18343 e!43586)))

(declare-fun c!20332 () Bool)

(assert (=> d!55431 (= c!20332 (and (is-Cons!614 l1!419) (is-Nil!616 (t!47643 l1!419))))))

(assert (=> d!55431 (not (isEmpty!668 l1!419))))

(assert (=> d!55431 (= (last!10 l1!419) lt!18343)))

(declare-fun b!80332 () Bool)

(assert (=> b!80332 (= e!43586 (h!904 l1!419))))

(declare-fun b!80333 () Bool)

(assert (=> b!80333 (= e!43586 (last!10 (t!47643 l1!419)))))

(assert (= (and d!55431 c!20332) b!80332))

(assert (= (and d!55431 (not c!20332)) b!80333))

(declare-fun m!75140 () Bool)

(assert (=> d!55431 m!75140))

(assert (=> d!55431 m!75094))

(assert (=> b!80333 m!75124))

(assert (=> b!80286 d!55431))

(declare-fun d!55433 () Bool)

(assert (=> d!55433 (= (head!1048 l2!412) (h!904 l2!412))))

(assert (=> b!80286 d!55433))

(declare-fun d!55435 () Bool)

(assert (=> d!55435 (= (isEmpty!668 l1!419) (is-Nil!616 l1!419))))

(assert (=> b!80287 d!55435))

(declare-fun d!55437 () Bool)

(declare-fun res!40758 () Bool)

(declare-fun e!43587 () Bool)

(assert (=> d!55437 (=> res!40758 e!43587)))

(assert (=> d!55437 (= res!40758 (not (and (is-Cons!614 res!39932) (is-Cons!614 (t!47643 res!39932)))))))

(assert (=> d!55437 (= (isSorted!2 res!39932) e!43587)))

(declare-fun b!80334 () Bool)

(declare-fun e!43588 () Bool)

(assert (=> b!80334 (= e!43587 e!43588)))

(declare-fun res!40759 () Bool)

(assert (=> b!80334 (=> (not res!40759) (not e!43588))))

(assert (=> b!80334 (= res!40759 (<= (h!904 res!39932) (h!904 (t!47643 res!39932))))))

(declare-fun b!80335 () Bool)

(assert (=> b!80335 (= e!43588 (isSorted!2 (t!47643 res!39932)))))

(assert (= (and d!55437 (not res!40758)) b!80334))

(assert (= (and b!80334 res!40759) b!80335))

(declare-fun m!75142 () Bool)

(assert (=> b!80335 m!75142))

(assert (=> b!80285 d!55437))

(push 1)

(assert (not d!55431))

(assert (not b!80333))

(assert (not b!80311))

(assert (not b!80325))

(assert (not b!80327))

(assert (not b!80313))

(assert (not b!80335))

(assert (not b!80323))

(assert (not b!80294))

(assert (not b!80310))

(assert (not b!80315))

(assert (not d!55419))

(assert (not b!80314))

(assert (not b!80312))

(assert (not b!80317))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


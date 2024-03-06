; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8726 () Bool)

(assert start!8726)

(declare-fun res!28165 () Bool)

(declare-fun e!32327 () Bool)

(assert (=> start!8726 (=> (not res!28165) (not e!32327))))

(declare-datatypes () ((List!543 (Cons!509 (head!854 (_ BitVec 32)) (tail!880 List!543)) (Nil!510))))

(declare-fun list1!2 () List!543)

(declare-fun isSorted!4 (List!543) Bool)

(assert (=> start!8726 (= res!28165 (isSorted!4 list1!2))))

(assert (=> start!8726 e!32327))

(assert (=> start!8726 true))

(declare-fun b!60492 () Bool)

(declare-fun res!28166 () Bool)

(assert (=> b!60492 (=> (not res!28166) (not e!32327))))

(declare-fun list2!2 () List!543)

(assert (=> b!60492 (= res!28166 (isSorted!4 list2!2))))

(declare-fun b!60493 () Bool)

(declare-fun res!28167 () Bool)

(assert (=> b!60493 (=> (not res!28167) (not e!32327))))

(declare-fun res!27382 () List!543)

(assert (=> b!60493 (= res!28167 (and (not (is-Nil!510 list2!2)) (is-Nil!510 list1!2) (= res!27382 list2!2)))))

(declare-fun b!60494 () Bool)

(declare-fun mergeSpec!0 (List!543 List!543 List!543) Bool)

(assert (=> b!60494 (= e!32327 (not (mergeSpec!0 list1!2 list2!2 res!27382)))))

(assert (= (and start!8726 res!28165) b!60492))

(assert (= (and b!60492 res!28166) b!60493))

(assert (= (and b!60493 res!28167) b!60494))

(declare-fun m!65366 () Bool)

(assert (=> start!8726 m!65366))

(declare-fun m!65368 () Bool)

(assert (=> b!60492 m!65368))

(declare-fun m!65370 () Bool)

(assert (=> b!60494 m!65370))

(push 1)

(assert (not b!60492))

(assert (not start!8726))

(assert (not b!60494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51561 () Bool)

(declare-fun res!28172 () Bool)

(declare-fun e!32332 () Bool)

(assert (=> d!51561 (=> res!28172 e!32332)))

(assert (=> d!51561 (= res!28172 (or (is-Nil!510 list2!2) (and (is-Cons!509 list2!2) (is-Nil!510 (tail!880 list2!2)))))))

(assert (=> d!51561 (= (isSorted!4 list2!2) e!32332)))

(declare-fun b!60499 () Bool)

(declare-fun e!32333 () Bool)

(assert (=> b!60499 (= e!32332 e!32333)))

(declare-fun res!28173 () Bool)

(assert (=> b!60499 (=> (not res!28173) (not e!32333))))

(assert (=> b!60499 (= res!28173 (not (and (is-Cons!509 list2!2) (is-Cons!509 (tail!880 list2!2)) (bvsgt (head!854 list2!2) (head!854 (tail!880 list2!2))))))))

(declare-fun b!60500 () Bool)

(assert (=> b!60500 (= e!32333 (isSorted!4 (tail!880 list2!2)))))

(assert (= (and d!51561 (not res!28172)) b!60499))

(assert (= (and b!60499 res!28173) b!60500))

(declare-fun m!65372 () Bool)

(assert (=> b!60500 m!65372))

(assert (=> b!60492 d!51561))

(declare-fun d!51563 () Bool)

(declare-fun res!28174 () Bool)

(declare-fun e!32334 () Bool)

(assert (=> d!51563 (=> res!28174 e!32334)))

(assert (=> d!51563 (= res!28174 (or (is-Nil!510 list1!2) (and (is-Cons!509 list1!2) (is-Nil!510 (tail!880 list1!2)))))))

(assert (=> d!51563 (= (isSorted!4 list1!2) e!32334)))

(declare-fun b!60501 () Bool)

(declare-fun e!32335 () Bool)

(assert (=> b!60501 (= e!32334 e!32335)))

(declare-fun res!28175 () Bool)

(assert (=> b!60501 (=> (not res!28175) (not e!32335))))

(assert (=> b!60501 (= res!28175 (not (and (is-Cons!509 list1!2) (is-Cons!509 (tail!880 list1!2)) (bvsgt (head!854 list1!2) (head!854 (tail!880 list1!2))))))))

(declare-fun b!60502 () Bool)

(assert (=> b!60502 (= e!32335 (isSorted!4 (tail!880 list1!2)))))

(assert (= (and d!51563 (not res!28174)) b!60501))

(assert (= (and b!60501 res!28175) b!60502))

(declare-fun m!65374 () Bool)

(assert (=> b!60502 m!65374))

(assert (=> start!8726 d!51563))

(declare-fun d!51565 () Bool)

(declare-fun res!28179 () Bool)

(declare-fun e!32338 () Bool)

(assert (=> d!51565 (=> (not res!28179) (not e!32338))))

(assert (=> d!51565 (= res!28179 (isSorted!4 res!27382))))

(assert (=> d!51565 (= (mergeSpec!0 list1!2 list2!2 res!27382) e!32338)))

(declare-fun b!60505 () Bool)

(declare-fun content!15 (List!543) (Set (_ BitVec 32)))

(assert (=> b!60505 (= e!32338 (= (content!15 res!27382) (union (content!15 list1!2) (content!15 list2!2))))))

(assert (= (and d!51565 res!28179) b!60505))

(declare-fun m!65376 () Bool)

(assert (=> d!51565 m!65376))

(declare-fun m!65378 () Bool)

(assert (=> b!60505 m!65378))

(declare-fun m!65380 () Bool)

(assert (=> b!60505 m!65380))

(declare-fun m!65382 () Bool)

(assert (=> b!60505 m!65382))

(assert (=> b!60494 d!51565))

(push 1)

(assert (not d!51565))

(assert (not b!60505))

(assert (not b!60500))

(assert (not b!60502))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51567 () Bool)

(declare-fun res!28180 () Bool)

(declare-fun e!32339 () Bool)

(assert (=> d!51567 (=> res!28180 e!32339)))

(assert (=> d!51567 (= res!28180 (or (is-Nil!510 res!27382) (and (is-Cons!509 res!27382) (is-Nil!510 (tail!880 res!27382)))))))

(assert (=> d!51567 (= (isSorted!4 res!27382) e!32339)))

(declare-fun b!60506 () Bool)

(declare-fun e!32340 () Bool)

(assert (=> b!60506 (= e!32339 e!32340)))

(declare-fun res!28181 () Bool)

(assert (=> b!60506 (=> (not res!28181) (not e!32340))))

(assert (=> b!60506 (= res!28181 (not (and (is-Cons!509 res!27382) (is-Cons!509 (tail!880 res!27382)) (bvsgt (head!854 res!27382) (head!854 (tail!880 res!27382))))))))

(declare-fun b!60507 () Bool)

(assert (=> b!60507 (= e!32340 (isSorted!4 (tail!880 res!27382)))))

(assert (= (and d!51567 (not res!28180)) b!60506))

(assert (= (and b!60506 res!28181) b!60507))

(declare-fun m!65384 () Bool)

(assert (=> b!60507 m!65384))

(assert (=> d!51565 d!51567))

(declare-fun d!51569 () Bool)

(declare-fun c!13112 () Bool)

(assert (=> d!51569 (= c!13112 (is-Nil!510 res!27382))))

(declare-fun e!32343 () (Set (_ BitVec 32)))

(assert (=> d!51569 (= (content!15 res!27382) e!32343)))

(declare-fun b!60512 () Bool)

(assert (=> b!60512 (= e!32343 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60513 () Bool)

(assert (=> b!60513 (= e!32343 (union (insert (head!854 res!27382) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!880 res!27382))))))

(assert (= (and d!51569 c!13112) b!60512))

(assert (= (and d!51569 (not c!13112)) b!60513))

(declare-fun m!65386 () Bool)

(assert (=> b!60513 m!65386))

(declare-fun m!65388 () Bool)

(assert (=> b!60513 m!65388))

(assert (=> b!60505 d!51569))

(declare-fun d!51571 () Bool)

(declare-fun c!13113 () Bool)

(assert (=> d!51571 (= c!13113 (is-Nil!510 list1!2))))

(declare-fun e!32344 () (Set (_ BitVec 32)))

(assert (=> d!51571 (= (content!15 list1!2) e!32344)))

(declare-fun b!60514 () Bool)

(assert (=> b!60514 (= e!32344 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60515 () Bool)

(assert (=> b!60515 (= e!32344 (union (insert (head!854 list1!2) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!880 list1!2))))))

(assert (= (and d!51571 c!13113) b!60514))

(assert (= (and d!51571 (not c!13113)) b!60515))

(declare-fun m!65390 () Bool)

(assert (=> b!60515 m!65390))

(declare-fun m!65392 () Bool)

(assert (=> b!60515 m!65392))

(assert (=> b!60505 d!51571))

(declare-fun d!51573 () Bool)

(declare-fun c!13114 () Bool)

(assert (=> d!51573 (= c!13114 (is-Nil!510 list2!2))))

(declare-fun e!32345 () (Set (_ BitVec 32)))

(assert (=> d!51573 (= (content!15 list2!2) e!32345)))

(declare-fun b!60516 () Bool)

(assert (=> b!60516 (= e!32345 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60517 () Bool)

(assert (=> b!60517 (= e!32345 (union (insert (head!854 list2!2) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!880 list2!2))))))

(assert (= (and d!51573 c!13114) b!60516))

(assert (= (and d!51573 (not c!13114)) b!60517))

(declare-fun m!65394 () Bool)

(assert (=> b!60517 m!65394))

(declare-fun m!65396 () Bool)

(assert (=> b!60517 m!65396))

(assert (=> b!60505 d!51573))

(declare-fun d!51575 () Bool)

(declare-fun res!28182 () Bool)

(declare-fun e!32346 () Bool)

(assert (=> d!51575 (=> res!28182 e!32346)))

(assert (=> d!51575 (= res!28182 (or (is-Nil!510 (tail!880 list2!2)) (and (is-Cons!509 (tail!880 list2!2)) (is-Nil!510 (tail!880 (tail!880 list2!2))))))))

(assert (=> d!51575 (= (isSorted!4 (tail!880 list2!2)) e!32346)))

(declare-fun b!60518 () Bool)

(declare-fun e!32347 () Bool)

(assert (=> b!60518 (= e!32346 e!32347)))

(declare-fun res!28183 () Bool)

(assert (=> b!60518 (=> (not res!28183) (not e!32347))))

(assert (=> b!60518 (= res!28183 (not (and (is-Cons!509 (tail!880 list2!2)) (is-Cons!509 (tail!880 (tail!880 list2!2))) (bvsgt (head!854 (tail!880 list2!2)) (head!854 (tail!880 (tail!880 list2!2)))))))))

(declare-fun b!60519 () Bool)

(assert (=> b!60519 (= e!32347 (isSorted!4 (tail!880 (tail!880 list2!2))))))

(assert (= (and d!51575 (not res!28182)) b!60518))

(assert (= (and b!60518 res!28183) b!60519))

(declare-fun m!65398 () Bool)

(assert (=> b!60519 m!65398))

(assert (=> b!60500 d!51575))

(declare-fun d!51577 () Bool)

(declare-fun res!28184 () Bool)

(declare-fun e!32348 () Bool)

(assert (=> d!51577 (=> res!28184 e!32348)))

(assert (=> d!51577 (= res!28184 (or (is-Nil!510 (tail!880 list1!2)) (and (is-Cons!509 (tail!880 list1!2)) (is-Nil!510 (tail!880 (tail!880 list1!2))))))))

(assert (=> d!51577 (= (isSorted!4 (tail!880 list1!2)) e!32348)))

(declare-fun b!60520 () Bool)

(declare-fun e!32349 () Bool)

(assert (=> b!60520 (= e!32348 e!32349)))

(declare-fun res!28185 () Bool)

(assert (=> b!60520 (=> (not res!28185) (not e!32349))))

(assert (=> b!60520 (= res!28185 (not (and (is-Cons!509 (tail!880 list1!2)) (is-Cons!509 (tail!880 (tail!880 list1!2))) (bvsgt (head!854 (tail!880 list1!2)) (head!854 (tail!880 (tail!880 list1!2)))))))))

(declare-fun b!60521 () Bool)

(assert (=> b!60521 (= e!32349 (isSorted!4 (tail!880 (tail!880 list1!2))))))

(assert (= (and d!51577 (not res!28184)) b!60520))

(assert (= (and b!60520 res!28185) b!60521))

(declare-fun m!65400 () Bool)

(assert (=> b!60521 m!65400))

(assert (=> b!60502 d!51577))

(push 1)

(assert (not b!60521))

(assert (not b!60519))

(assert (not b!60507))

(assert (not b!60515))

(assert (not b!60517))

(assert (not b!60513))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


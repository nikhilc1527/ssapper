; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!712 () Bool)

(assert start!712)

(declare-fun res!1382 () Bool)

(declare-fun e!2759 () Bool)

(assert (=> start!712 (=> (not res!1382) (not e!2759))))

(declare-datatypes () ((KeyValuePairAbs!4 (KeyValuePair!3 (key!120 (_ BitVec 32)) (value!1074 (_ BitVec 32))))))

(declare-datatypes () ((List!88 (Nil!88) (Cons!87 (head!267 KeyValuePairAbs!4) (tail!279 List!88)))))

(declare-fun l2!155 () List!88)

(assert (=> start!712 (= res!1382 (not (is-Nil!88 l2!155)))))

(assert (=> start!712 e!2759))

(assert (=> start!712 true))

(declare-fun b!4627 () Bool)

(declare-fun res!1383 () Bool)

(assert (=> b!4627 (=> (not res!1383) (not e!2759))))

(declare-fun x$1!218 () List!88)

(declare-fun l1!161 () List!88)

(declare-fun updateAll!0 (List!88 List!88) List!88)

(declare-fun updateElem!0 (List!88 KeyValuePairAbs!4) List!88)

(assert (=> b!4627 (= res!1383 (= x$1!218 (updateAll!0 (updateElem!0 l1!161 (head!267 l2!155)) (tail!279 l2!155))))))

(declare-fun b!4628 () Bool)

(declare-fun domain!0 (List!88) (Set (_ BitVec 32)))

(assert (=> b!4628 (= e!2759 (not (= (domain!0 x$1!218) (union (domain!0 l1!161) (domain!0 l2!155)))))))

(assert (= (and start!712 res!1382) b!4627))

(assert (= (and b!4627 res!1383) b!4628))

(declare-fun m!7163 () Bool)

(assert (=> b!4627 m!7163))

(assert (=> b!4627 m!7163))

(declare-fun m!7165 () Bool)

(assert (=> b!4627 m!7165))

(declare-fun m!7167 () Bool)

(assert (=> b!4628 m!7167))

(declare-fun m!7169 () Bool)

(assert (=> b!4628 m!7169))

(declare-fun m!7171 () Bool)

(assert (=> b!4628 m!7171))

(push 1)

(assert (not b!4628))

(assert (not b!4627))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3333 () Bool)

(declare-fun c!1708 () Bool)

(assert (=> d!3333 (= c!1708 (is-Nil!88 x$1!218))))

(declare-fun e!2762 () (Set (_ BitVec 32)))

(assert (=> d!3333 (= (domain!0 x$1!218) e!2762)))

(declare-fun b!4633 () Bool)

(assert (=> b!4633 (= e!2762 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4634 () Bool)

(assert (=> b!4634 (= e!2762 (union (insert (key!120 (head!267 x$1!218)) (as emptyset (Set (_ BitVec 32)))) (domain!0 (tail!279 x$1!218))))))

(assert (= (and d!3333 c!1708) b!4633))

(assert (= (and d!3333 (not c!1708)) b!4634))

(declare-fun m!7173 () Bool)

(assert (=> b!4634 m!7173))

(declare-fun m!7175 () Bool)

(assert (=> b!4634 m!7175))

(assert (=> b!4628 d!3333))

(declare-fun d!3335 () Bool)

(declare-fun c!1709 () Bool)

(assert (=> d!3335 (= c!1709 (is-Nil!88 l1!161))))

(declare-fun e!2763 () (Set (_ BitVec 32)))

(assert (=> d!3335 (= (domain!0 l1!161) e!2763)))

(declare-fun b!4635 () Bool)

(assert (=> b!4635 (= e!2763 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4636 () Bool)

(assert (=> b!4636 (= e!2763 (union (insert (key!120 (head!267 l1!161)) (as emptyset (Set (_ BitVec 32)))) (domain!0 (tail!279 l1!161))))))

(assert (= (and d!3335 c!1709) b!4635))

(assert (= (and d!3335 (not c!1709)) b!4636))

(declare-fun m!7177 () Bool)

(assert (=> b!4636 m!7177))

(declare-fun m!7179 () Bool)

(assert (=> b!4636 m!7179))

(assert (=> b!4628 d!3335))

(declare-fun d!3337 () Bool)

(declare-fun c!1710 () Bool)

(assert (=> d!3337 (= c!1710 (is-Nil!88 l2!155))))

(declare-fun e!2764 () (Set (_ BitVec 32)))

(assert (=> d!3337 (= (domain!0 l2!155) e!2764)))

(declare-fun b!4637 () Bool)

(assert (=> b!4637 (= e!2764 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4638 () Bool)

(assert (=> b!4638 (= e!2764 (union (insert (key!120 (head!267 l2!155)) (as emptyset (Set (_ BitVec 32)))) (domain!0 (tail!279 l2!155))))))

(assert (= (and d!3337 c!1710) b!4637))

(assert (= (and d!3337 (not c!1710)) b!4638))

(declare-fun m!7181 () Bool)

(assert (=> b!4638 m!7181))

(declare-fun m!7183 () Bool)

(assert (=> b!4638 m!7183))

(assert (=> b!4628 d!3337))

(declare-fun d!3339 () Bool)

(declare-fun lt!1219 () List!88)

(assert (=> d!3339 (= (domain!0 lt!1219) (union (domain!0 (updateElem!0 l1!161 (head!267 l2!155))) (domain!0 (tail!279 l2!155))))))

(declare-fun e!2767 () List!88)

(assert (=> d!3339 (= lt!1219 e!2767)))

(declare-fun c!1713 () Bool)

(assert (=> d!3339 (= c!1713 (is-Nil!88 (tail!279 l2!155)))))

(assert (=> d!3339 (= (updateAll!0 (updateElem!0 l1!161 (head!267 l2!155)) (tail!279 l2!155)) lt!1219)))

(declare-fun b!4643 () Bool)

(assert (=> b!4643 (= e!2767 (updateElem!0 l1!161 (head!267 l2!155)))))

(declare-fun b!4644 () Bool)

(assert (=> b!4644 (= e!2767 (updateAll!0 (updateElem!0 (updateElem!0 l1!161 (head!267 l2!155)) (head!267 (tail!279 l2!155))) (tail!279 (tail!279 l2!155))))))

(assert (= (and d!3339 c!1713) b!4643))

(assert (= (and d!3339 (not c!1713)) b!4644))

(declare-fun m!7185 () Bool)

(assert (=> d!3339 m!7185))

(assert (=> d!3339 m!7163))

(declare-fun m!7187 () Bool)

(assert (=> d!3339 m!7187))

(assert (=> d!3339 m!7183))

(assert (=> b!4644 m!7163))

(declare-fun m!7189 () Bool)

(assert (=> b!4644 m!7189))

(assert (=> b!4644 m!7189))

(declare-fun m!7191 () Bool)

(assert (=> b!4644 m!7191))

(assert (=> b!4627 d!3339))

(declare-fun d!3341 () Bool)

(declare-fun e!2776 () Bool)

(assert (=> d!3341 e!2776))

(declare-fun res!1387 () Bool)

(assert (=> d!3341 (=> (not res!1387) (not e!2776))))

(declare-fun lt!1222 () List!88)

(assert (=> d!3341 (= res!1387 (is-Cons!87 lt!1222))))

(declare-fun e!2775 () List!88)

(assert (=> d!3341 (= lt!1222 e!2775)))

(declare-fun c!1718 () Bool)

(assert (=> d!3341 (= c!1718 (is-Nil!88 l1!161))))

(assert (=> d!3341 (= (updateElem!0 l1!161 (head!267 l2!155)) lt!1222)))

(declare-fun b!4655 () Bool)

(assert (=> b!4655 (= e!2775 (Cons!87 (head!267 l2!155) Nil!88))))

(declare-fun b!4656 () Bool)

(declare-fun e!2777 () List!88)

(assert (=> b!4656 (= e!2777 (Cons!87 (head!267 l2!155) (tail!279 l1!161)))))

(declare-fun b!4657 () Bool)

(assert (=> b!4657 (= e!2777 (Cons!87 (head!267 l1!161) (updateElem!0 (tail!279 l1!161) (head!267 l2!155))))))

(declare-fun b!4658 () Bool)

(assert (=> b!4658 (= e!2776 (= (domain!0 lt!1222) (union (domain!0 l1!161) (insert (key!120 (head!267 l2!155)) (as emptyset (Set (_ BitVec 32)))))))))

(declare-fun b!4659 () Bool)

(assert (=> b!4659 (= e!2775 e!2777)))

(declare-fun c!1719 () Bool)

(assert (=> b!4659 (= c!1719 (= (key!120 (head!267 l2!155)) (key!120 (head!267 l1!161))))))

(assert (= (and b!4659 c!1719) b!4656))

(assert (= (and b!4659 (not c!1719)) b!4657))

(assert (= (and d!3341 c!1718) b!4655))

(assert (= (and d!3341 (not c!1718)) b!4659))

(assert (= (and d!3341 res!1387) b!4658))

(declare-fun m!7193 () Bool)

(assert (=> b!4657 m!7193))

(declare-fun m!7195 () Bool)

(assert (=> b!4658 m!7195))

(assert (=> b!4658 m!7169))

(assert (=> b!4658 m!7181))

(assert (=> b!4627 d!3341))

(push 1)

(assert (not b!4658))

(assert (not d!3339))

(assert (not b!4636))

(assert (not b!4634))

(assert (not b!4638))

(assert (not b!4657))

(assert (not b!4644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


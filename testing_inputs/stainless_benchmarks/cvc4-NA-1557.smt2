; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10550 () Bool)

(assert start!10550)

(declare-fun b!80188 () Bool)

(declare-fun res!40662 () Bool)

(declare-fun e!43505 () Bool)

(assert (=> b!80188 (=> res!40662 e!43505)))

(declare-datatypes () ((List!654 (Cons!612 (h!900 Int) (t!47641 List!654)) (Nil!614))))

(declare-fun l2!412 () List!654)

(declare-fun isEmpty!666 (List!654) Bool)

(assert (=> b!80188 (= res!40662 (isEmpty!666 l2!412))))

(declare-fun res!40666 () Bool)

(declare-fun e!43506 () Bool)

(assert (=> start!10550 (=> (not res!40666) (not e!43506))))

(declare-fun l1!419 () List!654)

(declare-fun isSorted!2 (List!654) Bool)

(assert (=> start!10550 (= res!40666 (isSorted!2 l1!419))))

(assert (=> start!10550 e!43506))

(assert (=> start!10550 true))

(declare-fun b!80189 () Bool)

(declare-fun res!40659 () Bool)

(assert (=> b!80189 (=> (not res!40659) (not e!43506))))

(assert (=> b!80189 (= res!40659 e!43505)))

(declare-fun res!40661 () Bool)

(assert (=> b!80189 (=> res!40661 e!43505)))

(assert (=> b!80189 (= res!40661 (isEmpty!666 l1!419))))

(declare-fun b!80190 () Bool)

(declare-fun last!8 (List!654) Int)

(declare-fun head!1046 (List!654) Int)

(assert (=> b!80190 (= e!43505 (<= (last!8 l1!419) (head!1046 l2!412)))))

(declare-fun b!80191 () Bool)

(declare-fun e!43504 () Bool)

(declare-fun l1!420 () List!654)

(declare-fun l2!413 () List!654)

(assert (=> b!80191 (= e!43504 (> (last!8 l1!420) (head!1046 l2!413)))))

(declare-fun b!80192 () Bool)

(declare-fun res!40660 () Bool)

(assert (=> b!80192 (=> (not res!40660) (not e!43506))))

(declare-fun h!857 () Int)

(assert (=> b!80192 (= res!40660 (and (not (is-Nil!614 l1!419)) (= h!857 (h!900 l1!419)) (= l1!420 (t!47641 l1!419)) (= l2!413 l2!412)))))

(declare-fun b!80193 () Bool)

(declare-fun e!43503 () Bool)

(assert (=> b!80193 (= e!43503 e!43504)))

(declare-fun res!40665 () Bool)

(assert (=> b!80193 (=> (not res!40665) (not e!43504))))

(assert (=> b!80193 (= res!40665 (not (isEmpty!666 l1!420)))))

(declare-fun b!80194 () Bool)

(assert (=> b!80194 (= e!43506 e!43503)))

(declare-fun res!40658 () Bool)

(assert (=> b!80194 (=> res!40658 e!43503)))

(assert (=> b!80194 (= res!40658 (not (isSorted!2 l1!420)))))

(declare-fun b!80195 () Bool)

(declare-fun res!40657 () Bool)

(assert (=> b!80195 (=> (not res!40657) (not e!43506))))

(assert (=> b!80195 (= res!40657 (isSorted!2 l2!412))))

(declare-fun b!80196 () Bool)

(declare-fun res!40664 () Bool)

(assert (=> b!80196 (=> (not res!40664) (not e!43504))))

(assert (=> b!80196 (= res!40664 (not (isEmpty!666 l2!413)))))

(declare-fun b!80197 () Bool)

(declare-fun res!40663 () Bool)

(assert (=> b!80197 (=> res!40663 e!43503)))

(assert (=> b!80197 (= res!40663 (not (isSorted!2 l2!413)))))

(assert (= (and start!10550 res!40666) b!80195))

(assert (= (and b!80195 res!40657) b!80189))

(assert (= (and b!80189 (not res!40661)) b!80188))

(assert (= (and b!80188 (not res!40662)) b!80190))

(assert (= (and b!80189 res!40659) b!80192))

(assert (= (and b!80192 res!40660) b!80194))

(assert (= (and b!80194 (not res!40658)) b!80197))

(assert (= (and b!80197 (not res!40663)) b!80193))

(assert (= (and b!80193 res!40665) b!80196))

(assert (= (and b!80196 res!40664) b!80191))

(declare-fun m!75010 () Bool)

(assert (=> b!80193 m!75010))

(declare-fun m!75012 () Bool)

(assert (=> start!10550 m!75012))

(declare-fun m!75014 () Bool)

(assert (=> b!80190 m!75014))

(declare-fun m!75016 () Bool)

(assert (=> b!80190 m!75016))

(declare-fun m!75018 () Bool)

(assert (=> b!80195 m!75018))

(declare-fun m!75020 () Bool)

(assert (=> b!80194 m!75020))

(declare-fun m!75022 () Bool)

(assert (=> b!80189 m!75022))

(declare-fun m!75024 () Bool)

(assert (=> b!80188 m!75024))

(declare-fun m!75026 () Bool)

(assert (=> b!80196 m!75026))

(declare-fun m!75028 () Bool)

(assert (=> b!80191 m!75028))

(declare-fun m!75030 () Bool)

(assert (=> b!80191 m!75030))

(declare-fun m!75032 () Bool)

(assert (=> b!80197 m!75032))

(push 1)

(assert (not b!80188))

(assert (not b!80196))

(assert (not b!80194))

(assert (not start!10550))

(assert (not b!80190))

(assert (not b!80197))

(assert (not b!80191))

(assert (not b!80193))

(assert (not b!80195))

(assert (not b!80189))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55373 () Bool)

(assert (=> d!55373 (= (isEmpty!666 l2!412) (is-Nil!614 l2!412))))

(assert (=> b!80188 d!55373))

(declare-fun d!55375 () Bool)

(assert (=> d!55375 (= (isEmpty!666 l1!419) (is-Nil!614 l1!419))))

(assert (=> b!80189 d!55375))

(declare-fun d!55377 () Bool)

(declare-fun res!40671 () Bool)

(declare-fun e!43511 () Bool)

(assert (=> d!55377 (=> res!40671 e!43511)))

(assert (=> d!55377 (= res!40671 (not (and (is-Cons!612 l1!419) (is-Cons!612 (t!47641 l1!419)))))))

(assert (=> d!55377 (= (isSorted!2 l1!419) e!43511)))

(declare-fun b!80202 () Bool)

(declare-fun e!43512 () Bool)

(assert (=> b!80202 (= e!43511 e!43512)))

(declare-fun res!40672 () Bool)

(assert (=> b!80202 (=> (not res!40672) (not e!43512))))

(assert (=> b!80202 (= res!40672 (<= (h!900 l1!419) (h!900 (t!47641 l1!419))))))

(declare-fun b!80203 () Bool)

(assert (=> b!80203 (= e!43512 (isSorted!2 (t!47641 l1!419)))))

(assert (= (and d!55377 (not res!40671)) b!80202))

(assert (= (and b!80202 res!40672) b!80203))

(declare-fun m!75034 () Bool)

(assert (=> b!80203 m!75034))

(assert (=> start!10550 d!55377))

(declare-fun d!55379 () Bool)

(declare-fun res!40673 () Bool)

(declare-fun e!43513 () Bool)

(assert (=> d!55379 (=> res!40673 e!43513)))

(assert (=> d!55379 (= res!40673 (not (and (is-Cons!612 l1!420) (is-Cons!612 (t!47641 l1!420)))))))

(assert (=> d!55379 (= (isSorted!2 l1!420) e!43513)))

(declare-fun b!80204 () Bool)

(declare-fun e!43514 () Bool)

(assert (=> b!80204 (= e!43513 e!43514)))

(declare-fun res!40674 () Bool)

(assert (=> b!80204 (=> (not res!40674) (not e!43514))))

(assert (=> b!80204 (= res!40674 (<= (h!900 l1!420) (h!900 (t!47641 l1!420))))))

(declare-fun b!80205 () Bool)

(assert (=> b!80205 (= e!43514 (isSorted!2 (t!47641 l1!420)))))

(assert (= (and d!55379 (not res!40673)) b!80204))

(assert (= (and b!80204 res!40674) b!80205))

(declare-fun m!75036 () Bool)

(assert (=> b!80205 m!75036))

(assert (=> b!80194 d!55379))

(declare-fun d!55381 () Bool)

(assert (=> d!55381 (= (isEmpty!666 l2!413) (is-Nil!614 l2!413))))

(assert (=> b!80196 d!55381))

(declare-fun d!55383 () Bool)

(declare-fun res!40675 () Bool)

(declare-fun e!43515 () Bool)

(assert (=> d!55383 (=> res!40675 e!43515)))

(assert (=> d!55383 (= res!40675 (not (and (is-Cons!612 l2!413) (is-Cons!612 (t!47641 l2!413)))))))

(assert (=> d!55383 (= (isSorted!2 l2!413) e!43515)))

(declare-fun b!80206 () Bool)

(declare-fun e!43516 () Bool)

(assert (=> b!80206 (= e!43515 e!43516)))

(declare-fun res!40676 () Bool)

(assert (=> b!80206 (=> (not res!40676) (not e!43516))))

(assert (=> b!80206 (= res!40676 (<= (h!900 l2!413) (h!900 (t!47641 l2!413))))))

(declare-fun b!80207 () Bool)

(assert (=> b!80207 (= e!43516 (isSorted!2 (t!47641 l2!413)))))

(assert (= (and d!55383 (not res!40675)) b!80206))

(assert (= (and b!80206 res!40676) b!80207))

(declare-fun m!75038 () Bool)

(assert (=> b!80207 m!75038))

(assert (=> b!80197 d!55383))

(declare-fun d!55385 () Bool)

(assert (=> d!55385 (= (isEmpty!666 l1!420) (is-Nil!614 l1!420))))

(assert (=> b!80193 d!55385))

(declare-fun d!55387 () Bool)

(declare-fun lt!18333 () Int)

(declare-fun contains!53 (List!654 Int) Bool)

(assert (=> d!55387 (contains!53 l1!419 lt!18333)))

(declare-fun e!43519 () Int)

(assert (=> d!55387 (= lt!18333 e!43519)))

(declare-fun c!20312 () Bool)

(assert (=> d!55387 (= c!20312 (and (is-Cons!612 l1!419) (is-Nil!614 (t!47641 l1!419))))))

(assert (=> d!55387 (not (isEmpty!666 l1!419))))

(assert (=> d!55387 (= (last!8 l1!419) lt!18333)))

(declare-fun b!80212 () Bool)

(assert (=> b!80212 (= e!43519 (h!900 l1!419))))

(declare-fun b!80213 () Bool)

(assert (=> b!80213 (= e!43519 (last!8 (t!47641 l1!419)))))

(assert (= (and d!55387 c!20312) b!80212))

(assert (= (and d!55387 (not c!20312)) b!80213))

(declare-fun m!75040 () Bool)

(assert (=> d!55387 m!75040))

(assert (=> d!55387 m!75022))

(declare-fun m!75042 () Bool)

(assert (=> b!80213 m!75042))

(assert (=> b!80190 d!55387))

(declare-fun d!55389 () Bool)

(assert (=> d!55389 (= (head!1046 l2!412) (h!900 l2!412))))

(assert (=> b!80190 d!55389))

(declare-fun d!55391 () Bool)

(declare-fun res!40677 () Bool)

(declare-fun e!43520 () Bool)

(assert (=> d!55391 (=> res!40677 e!43520)))

(assert (=> d!55391 (= res!40677 (not (and (is-Cons!612 l2!412) (is-Cons!612 (t!47641 l2!412)))))))

(assert (=> d!55391 (= (isSorted!2 l2!412) e!43520)))

(declare-fun b!80214 () Bool)

(declare-fun e!43521 () Bool)

(assert (=> b!80214 (= e!43520 e!43521)))

(declare-fun res!40678 () Bool)

(assert (=> b!80214 (=> (not res!40678) (not e!43521))))

(assert (=> b!80214 (= res!40678 (<= (h!900 l2!412) (h!900 (t!47641 l2!412))))))

(declare-fun b!80215 () Bool)

(assert (=> b!80215 (= e!43521 (isSorted!2 (t!47641 l2!412)))))

(assert (= (and d!55391 (not res!40677)) b!80214))

(assert (= (and b!80214 res!40678) b!80215))

(declare-fun m!75044 () Bool)

(assert (=> b!80215 m!75044))

(assert (=> b!80195 d!55391))

(declare-fun d!55393 () Bool)

(declare-fun lt!18334 () Int)

(assert (=> d!55393 (contains!53 l1!420 lt!18334)))

(declare-fun e!43522 () Int)

(assert (=> d!55393 (= lt!18334 e!43522)))

(declare-fun c!20313 () Bool)

(assert (=> d!55393 (= c!20313 (and (is-Cons!612 l1!420) (is-Nil!614 (t!47641 l1!420))))))

(assert (=> d!55393 (not (isEmpty!666 l1!420))))

(assert (=> d!55393 (= (last!8 l1!420) lt!18334)))

(declare-fun b!80216 () Bool)

(assert (=> b!80216 (= e!43522 (h!900 l1!420))))

(declare-fun b!80217 () Bool)

(assert (=> b!80217 (= e!43522 (last!8 (t!47641 l1!420)))))

(assert (= (and d!55393 c!20313) b!80216))

(assert (= (and d!55393 (not c!20313)) b!80217))

(declare-fun m!75046 () Bool)

(assert (=> d!55393 m!75046))

(assert (=> d!55393 m!75010))

(declare-fun m!75048 () Bool)

(assert (=> b!80217 m!75048))

(assert (=> b!80191 d!55393))

(declare-fun d!55395 () Bool)

(assert (=> d!55395 (= (head!1046 l2!413) (h!900 l2!413))))

(assert (=> b!80191 d!55395))

(push 1)

(assert (not b!80217))

(assert (not b!80215))

(assert (not b!80205))

(assert (not b!80207))

(assert (not d!55393))

(assert (not d!55387))

(assert (not b!80213))

(assert (not b!80203))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


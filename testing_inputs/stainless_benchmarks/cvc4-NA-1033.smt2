; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7620 () Bool)

(assert start!7620)

(declare-fun res!25003 () Bool)

(declare-fun e!28587 () Bool)

(assert (=> start!7620 (=> (not res!25003) (not e!28587))))

(declare-datatypes () ((IntSet!36 (Empty!161) (Node!122 (left!1152 IntSet!36) (elem!222 (_ BitVec 32)) (right!1155 IntSet!36)))))

(declare-fun thiss!7690 () IntSet!36)

(assert (=> start!7620 (= res!25003 (is-Empty!161 thiss!7690))))

(assert (=> start!7620 e!28587))

(declare-fun e!28586 () Bool)

(declare-fun inv!977 (IntSet!36) Bool)

(assert (=> start!7620 (and (inv!977 thiss!7690) e!28586)))

(assert (=> start!7620 true))

(declare-fun b!54516 () Bool)

(declare-fun x!21411 () (_ BitVec 32))

(assert (=> b!54516 (= e!28587 (not (inv!977 (Node!122 Empty!161 x!21411 Empty!161))))))

(declare-fun b!54517 () Bool)

(declare-fun tp!15381 () Bool)

(declare-fun tp!15382 () Bool)

(assert (=> b!54517 (= e!28586 (and (inv!977 (left!1152 thiss!7690)) tp!15382 (inv!977 (right!1155 thiss!7690)) tp!15381))))

(assert (= (and start!7620 res!25003) b!54516))

(assert (= (and start!7620 (is-Node!122 thiss!7690)) b!54517))

(declare-fun m!58756 () Bool)

(assert (=> start!7620 m!58756))

(declare-fun m!58758 () Bool)

(assert (=> b!54516 m!58758))

(declare-fun m!58760 () Bool)

(assert (=> b!54517 m!58760))

(declare-fun m!58762 () Bool)

(assert (=> b!54517 m!58762))

(push 1)

(assert (not b!54517))

(assert (not start!7620))

(assert (not b!54516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!54522 () Bool)

(declare-fun m!58764 () Bool)

(assert (=> b!54522 m!58764))

(declare-fun inst!306 () Bool)

(declare-fun x!21733 () (_ BitVec 32))

(declare-fun content!17 (IntSet!36) (Set (_ BitVec 32)))

(assert (=> b!54522 (= inst!306 (=> true (or (not (member x!21733 (content!17 (left!1152 (left!1152 thiss!7690))))) (bvslt x!21733 (elem!222 (left!1152 thiss!7690))))))))

(declare-fun m!58766 () Bool)

(assert (=> b!54522 m!58766))

(declare-fun b!54523 () Bool)

(declare-fun m!58768 () Bool)

(assert (=> b!54523 m!58768))

(declare-fun inst!307 () Bool)

(declare-fun x!21734 () (_ BitVec 32))

(assert (=> b!54523 (= inst!307 (=> true (or (not (member x!21734 (content!17 (right!1155 (left!1152 thiss!7690))))) (bvslt (elem!222 (left!1152 thiss!7690)) x!21734))))))

(declare-fun m!58770 () Bool)

(assert (=> b!54523 m!58770))

(declare-fun bs!25481 () Bool)

(declare-fun neg-inst!295 () Bool)

(assert (= bs!25481 neg-inst!295))

(assert (=> bs!25481 m!58764))

(declare-fun bs!25482 () Bool)

(declare-fun s!1273 () Bool)

(assert (= bs!25482 (and neg-inst!295 s!1273)))

(assert (=> bs!25482 (=> true (or (not (member x!21733 (content!17 (left!1152 (left!1152 thiss!7690))))) (bvslt x!21733 (elem!222 (left!1152 thiss!7690)))))))

(assert (=> m!58766 s!1273))

(declare-fun bs!25483 () Bool)

(assert (= bs!25483 (and neg-inst!295 b!54522)))

(assert (=> bs!25483 (= true inst!306)))

(declare-fun bs!25484 () Bool)

(declare-fun neg-inst!294 () Bool)

(assert (= bs!25484 neg-inst!294))

(assert (=> bs!25484 m!58768))

(declare-fun bs!25485 () Bool)

(declare-fun s!1275 () Bool)

(assert (= bs!25485 (and neg-inst!294 s!1275)))

(assert (=> bs!25485 (=> true (or (not (member x!21734 (content!17 (right!1155 (left!1152 thiss!7690))))) (bvslt (elem!222 (left!1152 thiss!7690)) x!21734)))))

(assert (=> m!58770 s!1275))

(declare-fun bs!25486 () Bool)

(assert (= bs!25486 (and neg-inst!294 b!54523)))

(assert (=> bs!25486 (= true inst!307)))

(declare-fun d!44990 () Bool)

(declare-fun res!25009 () Bool)

(declare-fun e!28593 () Bool)

(assert (=> d!44990 (=> res!25009 e!28593)))

(assert (=> d!44990 (= res!25009 (not (is-Node!122 (left!1152 thiss!7690))))))

(assert (=> d!44990 (= (inv!977 (left!1152 thiss!7690)) e!28593)))

(declare-fun e!28592 () Bool)

(assert (=> b!54522 (= e!28593 e!28592)))

(declare-fun res!25008 () Bool)

(assert (=> b!54522 (=> (not res!25008) (not e!28592))))

(assert (=> b!54522 (= res!25008 inst!306)))

(assert (=> b!54523 (= e!28592 inst!307)))

(assert (= (and d!44990 (not res!25009)) b!54522))

(assert (= neg-inst!295 inst!306))

(assert (= (and b!54522 res!25008) b!54523))

(assert (= neg-inst!294 inst!307))

(assert (=> b!54517 d!44990))

(declare-fun b!54524 () Bool)

(declare-fun m!58772 () Bool)

(assert (=> b!54524 m!58772))

(declare-fun inst!308 () Bool)

(declare-fun x!21735 () (_ BitVec 32))

(assert (=> b!54524 (= inst!308 (=> true (or (not (member x!21735 (content!17 (left!1152 (right!1155 thiss!7690))))) (bvslt x!21735 (elem!222 (right!1155 thiss!7690))))))))

(declare-fun m!58774 () Bool)

(assert (=> b!54524 m!58774))

(declare-fun bs!25487 () Bool)

(assert (= bs!25487 (and b!54524 neg-inst!295)))

(assert (=> (and bs!25487 (= (content!17 (left!1152 (right!1155 thiss!7690))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 thiss!7690)) (elem!222 (left!1152 thiss!7690)))) (= inst!308 true)))

(declare-fun bs!25488 () Bool)

(assert (= bs!25488 (and b!54524 b!54522)))

(assert (=> (and bs!25488 (= (content!17 (left!1152 (right!1155 thiss!7690))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 thiss!7690)) (elem!222 (left!1152 thiss!7690)))) (= inst!308 inst!306)))

(declare-fun b!54525 () Bool)

(declare-fun m!58776 () Bool)

(assert (=> b!54525 m!58776))

(declare-fun inst!309 () Bool)

(declare-fun x!21736 () (_ BitVec 32))

(assert (=> b!54525 (= inst!309 (=> true (or (not (member x!21736 (content!17 (right!1155 (right!1155 thiss!7690))))) (bvslt (elem!222 (right!1155 thiss!7690)) x!21736))))))

(declare-fun m!58778 () Bool)

(assert (=> b!54525 m!58778))

(declare-fun bs!25489 () Bool)

(assert (= bs!25489 (and b!54525 neg-inst!294)))

(assert (=> (and bs!25489 (= (content!17 (right!1155 (right!1155 thiss!7690))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 thiss!7690)) (elem!222 (left!1152 thiss!7690)))) (= inst!309 true)))

(declare-fun bs!25490 () Bool)

(assert (= bs!25490 (and b!54525 b!54523)))

(assert (=> (and bs!25490 (= (content!17 (right!1155 (right!1155 thiss!7690))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 thiss!7690)) (elem!222 (left!1152 thiss!7690)))) (= inst!309 inst!307)))

(declare-fun bs!25491 () Bool)

(declare-fun neg-inst!297 () Bool)

(assert (= bs!25491 neg-inst!297))

(assert (=> bs!25491 m!58772))

(declare-fun bs!25492 () Bool)

(declare-fun s!1277 () Bool)

(assert (= bs!25492 (and neg-inst!297 s!1277)))

(assert (=> bs!25492 (=> true (or (not (member x!21735 (content!17 (left!1152 (right!1155 thiss!7690))))) (bvslt x!21735 (elem!222 (right!1155 thiss!7690)))))))

(assert (=> m!58774 s!1277))

(declare-fun bs!25493 () Bool)

(assert (= bs!25493 (and neg-inst!297 neg-inst!295)))

(assert (=> (and bs!25493 (= (content!17 (left!1152 (right!1155 thiss!7690))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 thiss!7690)) (elem!222 (left!1152 thiss!7690)))) (= true true)))

(declare-fun bs!25494 () Bool)

(assert (= bs!25494 (and neg-inst!297 b!54522)))

(assert (=> (and bs!25494 (= (content!17 (left!1152 (right!1155 thiss!7690))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 thiss!7690)) (elem!222 (left!1152 thiss!7690)))) (= true inst!306)))

(declare-fun bs!25495 () Bool)

(assert (= bs!25495 (and neg-inst!297 b!54524)))

(assert (=> bs!25495 (= true inst!308)))

(declare-fun bs!25496 () Bool)

(declare-fun neg-inst!296 () Bool)

(assert (= bs!25496 neg-inst!296))

(assert (=> bs!25496 m!58776))

(declare-fun bs!25497 () Bool)

(declare-fun s!1279 () Bool)

(assert (= bs!25497 (and neg-inst!296 s!1279)))

(assert (=> bs!25497 (=> true (or (not (member x!21736 (content!17 (right!1155 (right!1155 thiss!7690))))) (bvslt (elem!222 (right!1155 thiss!7690)) x!21736)))))

(assert (=> m!58778 s!1279))

(declare-fun bs!25498 () Bool)

(assert (= bs!25498 (and neg-inst!296 b!54525)))

(assert (=> bs!25498 (= true inst!309)))

(declare-fun bs!25499 () Bool)

(assert (= bs!25499 (and neg-inst!296 neg-inst!294)))

(assert (=> (and bs!25499 (= (content!17 (right!1155 (right!1155 thiss!7690))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 thiss!7690)) (elem!222 (left!1152 thiss!7690)))) (= true true)))

(declare-fun bs!25500 () Bool)

(assert (= bs!25500 (and neg-inst!296 b!54523)))

(assert (=> (and bs!25500 (= (content!17 (right!1155 (right!1155 thiss!7690))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 thiss!7690)) (elem!222 (left!1152 thiss!7690)))) (= true inst!307)))

(declare-fun d!44992 () Bool)

(declare-fun res!25011 () Bool)

(declare-fun e!28595 () Bool)

(assert (=> d!44992 (=> res!25011 e!28595)))

(assert (=> d!44992 (= res!25011 (not (is-Node!122 (right!1155 thiss!7690))))))

(assert (=> d!44992 (= (inv!977 (right!1155 thiss!7690)) e!28595)))

(declare-fun e!28594 () Bool)

(assert (=> b!54524 (= e!28595 e!28594)))

(declare-fun res!25010 () Bool)

(assert (=> b!54524 (=> (not res!25010) (not e!28594))))

(assert (=> b!54524 (= res!25010 inst!308)))

(assert (=> b!54525 (= e!28594 inst!309)))

(assert (= (and d!44992 (not res!25011)) b!54524))

(assert (= neg-inst!297 inst!308))

(assert (= (and b!54524 res!25010) b!54525))

(assert (= neg-inst!296 inst!309))

(assert (=> b!54517 d!44992))

(declare-fun b!54526 () Bool)

(declare-fun m!58780 () Bool)

(assert (=> b!54526 m!58780))

(declare-fun inst!310 () Bool)

(declare-fun x!21737 () (_ BitVec 32))

(assert (=> b!54526 (= inst!310 (=> true (or (not (member x!21737 (content!17 (left!1152 thiss!7690)))) (bvslt x!21737 (elem!222 thiss!7690)))))))

(declare-fun m!58782 () Bool)

(assert (=> b!54526 m!58782))

(declare-fun bs!25501 () Bool)

(assert (= bs!25501 (and b!54526 neg-inst!295)))

(assert (=> (and bs!25501 (= (content!17 (left!1152 thiss!7690)) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (left!1152 thiss!7690)))) (= inst!310 true)))

(declare-fun bs!25502 () Bool)

(assert (= bs!25502 (and b!54526 b!54522)))

(assert (=> (and bs!25502 (= (content!17 (left!1152 thiss!7690)) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (left!1152 thiss!7690)))) (= inst!310 inst!306)))

(declare-fun bs!25503 () Bool)

(assert (= bs!25503 (and b!54526 b!54524)))

(assert (=> (and bs!25503 (= (content!17 (left!1152 thiss!7690)) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (right!1155 thiss!7690)))) (= inst!310 inst!308)))

(declare-fun bs!25504 () Bool)

(assert (= bs!25504 (and b!54526 neg-inst!297)))

(assert (=> (and bs!25504 (= (content!17 (left!1152 thiss!7690)) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (right!1155 thiss!7690)))) (= inst!310 true)))

(declare-fun b!54527 () Bool)

(declare-fun m!58784 () Bool)

(assert (=> b!54527 m!58784))

(declare-fun inst!311 () Bool)

(declare-fun x!21738 () (_ BitVec 32))

(assert (=> b!54527 (= inst!311 (=> true (or (not (member x!21738 (content!17 (right!1155 thiss!7690)))) (bvslt (elem!222 thiss!7690) x!21738))))))

(declare-fun m!58786 () Bool)

(assert (=> b!54527 m!58786))

(declare-fun bs!25505 () Bool)

(assert (= bs!25505 (and b!54527 b!54525)))

(assert (=> (and bs!25505 (= (content!17 (right!1155 thiss!7690)) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (right!1155 thiss!7690)))) (= inst!311 inst!309)))

(declare-fun bs!25506 () Bool)

(assert (= bs!25506 (and b!54527 neg-inst!294)))

(assert (=> (and bs!25506 (= (content!17 (right!1155 thiss!7690)) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (left!1152 thiss!7690)))) (= inst!311 true)))

(declare-fun bs!25507 () Bool)

(assert (= bs!25507 (and b!54527 neg-inst!296)))

(assert (=> (and bs!25507 (= (content!17 (right!1155 thiss!7690)) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (right!1155 thiss!7690)))) (= inst!311 true)))

(declare-fun bs!25508 () Bool)

(assert (= bs!25508 (and b!54527 b!54523)))

(assert (=> (and bs!25508 (= (content!17 (right!1155 thiss!7690)) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (left!1152 thiss!7690)))) (= inst!311 inst!307)))

(declare-fun bs!25509 () Bool)

(declare-fun neg-inst!299 () Bool)

(assert (= bs!25509 neg-inst!299))

(assert (=> bs!25509 m!58780))

(declare-fun bs!25510 () Bool)

(declare-fun s!1281 () Bool)

(assert (= bs!25510 (and neg-inst!299 s!1281)))

(assert (=> bs!25510 (=> true (or (not (member x!21737 (content!17 (left!1152 thiss!7690)))) (bvslt x!21737 (elem!222 thiss!7690))))))

(assert (=> m!58782 s!1281))

(declare-fun bs!25511 () Bool)

(assert (= bs!25511 (and neg-inst!299 neg-inst!295)))

(assert (=> (and bs!25511 (= (content!17 (left!1152 thiss!7690)) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (left!1152 thiss!7690)))) (= true true)))

(declare-fun bs!25512 () Bool)

(assert (= bs!25512 (and neg-inst!299 b!54522)))

(assert (=> (and bs!25512 (= (content!17 (left!1152 thiss!7690)) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (left!1152 thiss!7690)))) (= true inst!306)))

(declare-fun bs!25513 () Bool)

(assert (= bs!25513 (and neg-inst!299 b!54524)))

(assert (=> (and bs!25513 (= (content!17 (left!1152 thiss!7690)) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (right!1155 thiss!7690)))) (= true inst!308)))

(declare-fun bs!25514 () Bool)

(assert (= bs!25514 (and neg-inst!299 b!54526)))

(assert (=> bs!25514 (= true inst!310)))

(declare-fun bs!25515 () Bool)

(assert (= bs!25515 (and neg-inst!299 neg-inst!297)))

(assert (=> (and bs!25515 (= (content!17 (left!1152 thiss!7690)) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (right!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25516 () Bool)

(declare-fun neg-inst!298 () Bool)

(assert (= bs!25516 neg-inst!298))

(assert (=> bs!25516 m!58784))

(declare-fun bs!25517 () Bool)

(declare-fun s!1283 () Bool)

(assert (= bs!25517 (and neg-inst!298 s!1283)))

(assert (=> bs!25517 (=> true (or (not (member x!21738 (content!17 (right!1155 thiss!7690)))) (bvslt (elem!222 thiss!7690) x!21738)))))

(assert (=> m!58786 s!1283))

(declare-fun bs!25518 () Bool)

(assert (= bs!25518 (and neg-inst!298 b!54527)))

(assert (=> bs!25518 (= true inst!311)))

(declare-fun bs!25519 () Bool)

(assert (= bs!25519 (and neg-inst!298 b!54525)))

(assert (=> (and bs!25519 (= (content!17 (right!1155 thiss!7690)) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (right!1155 thiss!7690)))) (= true inst!309)))

(declare-fun bs!25520 () Bool)

(assert (= bs!25520 (and neg-inst!298 neg-inst!294)))

(assert (=> (and bs!25520 (= (content!17 (right!1155 thiss!7690)) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (left!1152 thiss!7690)))) (= true true)))

(declare-fun bs!25521 () Bool)

(assert (= bs!25521 (and neg-inst!298 neg-inst!296)))

(assert (=> (and bs!25521 (= (content!17 (right!1155 thiss!7690)) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (right!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25522 () Bool)

(assert (= bs!25522 (and neg-inst!298 b!54523)))

(assert (=> (and bs!25522 (= (content!17 (right!1155 thiss!7690)) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 thiss!7690) (elem!222 (left!1152 thiss!7690)))) (= true inst!307)))

(declare-fun d!44994 () Bool)

(declare-fun res!25013 () Bool)

(declare-fun e!28597 () Bool)

(assert (=> d!44994 (=> res!25013 e!28597)))

(assert (=> d!44994 (= res!25013 (not (is-Node!122 thiss!7690)))))

(assert (=> d!44994 (= (inv!977 thiss!7690) e!28597)))

(declare-fun e!28596 () Bool)

(assert (=> b!54526 (= e!28597 e!28596)))

(declare-fun res!25012 () Bool)

(assert (=> b!54526 (=> (not res!25012) (not e!28596))))

(assert (=> b!54526 (= res!25012 inst!310)))

(assert (=> b!54527 (= e!28596 inst!311)))

(assert (= (and d!44994 (not res!25013)) b!54526))

(assert (= neg-inst!299 inst!310))

(assert (= (and b!54526 res!25012) b!54527))

(assert (= neg-inst!298 inst!311))

(assert (=> start!7620 d!44994))

(declare-fun b!54528 () Bool)

(declare-fun m!58788 () Bool)

(assert (=> b!54528 m!58788))

(declare-fun inst!312 () Bool)

(declare-fun x!21739 () (_ BitVec 32))

(assert (=> b!54528 (= inst!312 (=> true (or (not (member x!21739 (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))))) (bvslt x!21739 (elem!222 (Node!122 Empty!161 x!21411 Empty!161))))))))

(declare-fun m!58790 () Bool)

(assert (=> b!54528 m!58790))

(declare-fun bs!25523 () Bool)

(assert (= bs!25523 (and b!54528 neg-inst!299)))

(assert (=> (and bs!25523 (= (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 thiss!7690))) (= inst!312 true)))

(declare-fun bs!25524 () Bool)

(assert (= bs!25524 (and b!54528 neg-inst!295)))

(assert (=> (and bs!25524 (= (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (left!1152 thiss!7690)))) (= inst!312 true)))

(declare-fun bs!25525 () Bool)

(assert (= bs!25525 (and b!54528 b!54522)))

(assert (=> (and bs!25525 (= (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (left!1152 thiss!7690)))) (= inst!312 inst!306)))

(declare-fun bs!25526 () Bool)

(assert (= bs!25526 (and b!54528 b!54524)))

(assert (=> (and bs!25526 (= (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (right!1155 thiss!7690)))) (= inst!312 inst!308)))

(declare-fun bs!25527 () Bool)

(assert (= bs!25527 (and b!54528 b!54526)))

(assert (=> (and bs!25527 (= (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 thiss!7690))) (= inst!312 inst!310)))

(declare-fun bs!25528 () Bool)

(assert (= bs!25528 (and b!54528 neg-inst!297)))

(assert (=> (and bs!25528 (= (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (right!1155 thiss!7690)))) (= inst!312 true)))

(declare-fun b!54529 () Bool)

(declare-fun m!58792 () Bool)

(assert (=> b!54529 m!58792))

(declare-fun inst!313 () Bool)

(declare-fun x!21740 () (_ BitVec 32))

(assert (=> b!54529 (= inst!313 (=> true (or (not (member x!21740 (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))))) (bvslt (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) x!21740))))))

(declare-fun m!58794 () Bool)

(assert (=> b!54529 m!58794))

(declare-fun bs!25529 () Bool)

(assert (= bs!25529 (and b!54529 b!54527)))

(assert (=> (and bs!25529 (= (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 thiss!7690))) (= inst!313 inst!311)))

(declare-fun bs!25530 () Bool)

(assert (= bs!25530 (and b!54529 neg-inst!298)))

(assert (=> (and bs!25530 (= (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 thiss!7690))) (= inst!313 true)))

(declare-fun bs!25531 () Bool)

(assert (= bs!25531 (and b!54529 b!54525)))

(assert (=> (and bs!25531 (= (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (right!1155 thiss!7690)))) (= inst!313 inst!309)))

(declare-fun bs!25532 () Bool)

(assert (= bs!25532 (and b!54529 neg-inst!294)))

(assert (=> (and bs!25532 (= (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (left!1152 thiss!7690)))) (= inst!313 true)))

(declare-fun bs!25533 () Bool)

(assert (= bs!25533 (and b!54529 neg-inst!296)))

(assert (=> (and bs!25533 (= (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (right!1155 thiss!7690)))) (= inst!313 true)))

(declare-fun bs!25534 () Bool)

(assert (= bs!25534 (and b!54529 b!54523)))

(assert (=> (and bs!25534 (= (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (left!1152 thiss!7690)))) (= inst!313 inst!307)))

(declare-fun bs!25535 () Bool)

(declare-fun neg-inst!301 () Bool)

(assert (= bs!25535 neg-inst!301))

(assert (=> bs!25535 m!58788))

(declare-fun bs!25536 () Bool)

(declare-fun s!1285 () Bool)

(assert (= bs!25536 (and neg-inst!301 s!1285)))

(assert (=> bs!25536 (=> true (or (not (member x!21739 (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))))) (bvslt x!21739 (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))))))

(assert (=> m!58790 s!1285))

(declare-fun bs!25537 () Bool)

(assert (= bs!25537 (and neg-inst!301 neg-inst!299)))

(assert (=> (and bs!25537 (= (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 thiss!7690))) (= true true)))

(declare-fun bs!25538 () Bool)

(assert (= bs!25538 (and neg-inst!301 neg-inst!295)))

(assert (=> (and bs!25538 (= (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (left!1152 thiss!7690)))) (= true true)))

(declare-fun bs!25539 () Bool)

(assert (= bs!25539 (and neg-inst!301 b!54528)))

(assert (=> bs!25539 (= true inst!312)))

(declare-fun bs!25540 () Bool)

(assert (= bs!25540 (and neg-inst!301 b!54522)))

(assert (=> (and bs!25540 (= (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (left!1152 thiss!7690)))) (= true inst!306)))

(declare-fun bs!25541 () Bool)

(assert (= bs!25541 (and neg-inst!301 b!54524)))

(assert (=> (and bs!25541 (= (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (right!1155 thiss!7690)))) (= true inst!308)))

(declare-fun bs!25542 () Bool)

(assert (= bs!25542 (and neg-inst!301 b!54526)))

(assert (=> (and bs!25542 (= (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 thiss!7690))) (= true inst!310)))

(declare-fun bs!25543 () Bool)

(assert (= bs!25543 (and neg-inst!301 neg-inst!297)))

(assert (=> (and bs!25543 (= (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (right!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25544 () Bool)

(declare-fun neg-inst!300 () Bool)

(assert (= bs!25544 neg-inst!300))

(assert (=> bs!25544 m!58792))

(declare-fun bs!25545 () Bool)

(declare-fun s!1287 () Bool)

(assert (= bs!25545 (and neg-inst!300 s!1287)))

(assert (=> bs!25545 (=> true (or (not (member x!21740 (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))))) (bvslt (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) x!21740)))))

(assert (=> m!58794 s!1287))

(declare-fun bs!25546 () Bool)

(assert (= bs!25546 (and neg-inst!300 b!54527)))

(assert (=> (and bs!25546 (= (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 thiss!7690))) (= true inst!311)))

(declare-fun bs!25547 () Bool)

(assert (= bs!25547 (and neg-inst!300 neg-inst!298)))

(assert (=> (and bs!25547 (= (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 thiss!7690))) (= true true)))

(declare-fun bs!25548 () Bool)

(assert (= bs!25548 (and neg-inst!300 b!54525)))

(assert (=> (and bs!25548 (= (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (right!1155 thiss!7690)))) (= true inst!309)))

(declare-fun bs!25549 () Bool)

(assert (= bs!25549 (and neg-inst!300 neg-inst!294)))

(assert (=> (and bs!25549 (= (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (left!1152 thiss!7690)))) (= true true)))

(declare-fun bs!25550 () Bool)

(assert (= bs!25550 (and neg-inst!300 neg-inst!296)))

(assert (=> (and bs!25550 (= (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (right!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25551 () Bool)

(assert (= bs!25551 (and neg-inst!300 b!54529)))

(assert (=> bs!25551 (= true inst!313)))

(declare-fun bs!25552 () Bool)

(assert (= bs!25552 (and neg-inst!300 b!54523)))

(assert (=> (and bs!25552 (= (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (Node!122 Empty!161 x!21411 Empty!161)) (elem!222 (left!1152 thiss!7690)))) (= true inst!307)))

(declare-fun d!44996 () Bool)

(declare-fun res!25015 () Bool)

(declare-fun e!28599 () Bool)

(assert (=> d!44996 (=> res!25015 e!28599)))

(assert (=> d!44996 (= res!25015 (not (is-Node!122 (Node!122 Empty!161 x!21411 Empty!161))))))

(assert (=> d!44996 (= (inv!977 (Node!122 Empty!161 x!21411 Empty!161)) e!28599)))

(declare-fun e!28598 () Bool)

(assert (=> b!54528 (= e!28599 e!28598)))

(declare-fun res!25014 () Bool)

(assert (=> b!54528 (=> (not res!25014) (not e!28598))))

(assert (=> b!54528 (= res!25014 inst!312)))

(assert (=> b!54529 (= e!28598 inst!313)))

(assert (= (and d!44996 (not res!25015)) b!54528))

(assert (= neg-inst!301 inst!312))

(assert (= (and b!54528 res!25014) b!54529))

(assert (= neg-inst!300 inst!313))

(assert (=> b!54516 d!44996))

(declare-fun tp!15387 () Bool)

(declare-fun b!54534 () Bool)

(declare-fun tp!15388 () Bool)

(declare-fun e!28602 () Bool)

(assert (=> b!54534 (= e!28602 (and (inv!977 (left!1152 (left!1152 thiss!7690))) tp!15387 (inv!977 (right!1155 (left!1152 thiss!7690))) tp!15388))))

(assert (=> b!54517 (= tp!15382 (and (inv!977 (left!1152 thiss!7690)) e!28602))))

(assert (= (and b!54517 (is-Node!122 (left!1152 thiss!7690))) b!54534))

(declare-fun m!58796 () Bool)

(assert (=> b!54534 m!58796))

(declare-fun m!58798 () Bool)

(assert (=> b!54534 m!58798))

(assert (=> b!54517 m!58760))

(declare-fun tp!15389 () Bool)

(declare-fun e!28603 () Bool)

(declare-fun tp!15390 () Bool)

(declare-fun b!54535 () Bool)

(assert (=> b!54535 (= e!28603 (and (inv!977 (left!1152 (right!1155 thiss!7690))) tp!15389 (inv!977 (right!1155 (right!1155 thiss!7690))) tp!15390))))

(assert (=> b!54517 (= tp!15381 (and (inv!977 (right!1155 thiss!7690)) e!28603))))

(assert (= (and b!54517 (is-Node!122 (right!1155 thiss!7690))) b!54535))

(declare-fun m!58800 () Bool)

(assert (=> b!54535 m!58800))

(declare-fun m!58802 () Bool)

(assert (=> b!54535 m!58802))

(assert (=> b!54517 m!58762))

(push 1)

(assert (not neg-inst!298))

(assert (not b!54534))

(assert (not b!54523))

(assert (not b!54517))

(assert (not b!54522))

(assert (not neg-inst!299))

(assert (not neg-inst!300))

(assert (not neg-inst!294))

(assert (not neg-inst!296))

(assert (not neg-inst!295))

(assert (not neg-inst!301))

(assert (not b!54529))

(assert (not b!54524))

(assert (not b!54526))

(assert (not b!54528))

(assert (not b!54535))

(assert (not b!54525))

(assert (not neg-inst!297))

(assert (not b!54527))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44998 () Bool)

(declare-fun c!11837 () Bool)

(assert (=> d!44998 (= c!11837 (is-Empty!161 (left!1152 (left!1152 thiss!7690))))))

(declare-fun e!28606 () (Set (_ BitVec 32)))

(assert (=> d!44998 (= (content!17 (left!1152 (left!1152 thiss!7690))) e!28606)))

(declare-fun b!54540 () Bool)

(assert (=> b!54540 (= e!28606 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54541 () Bool)

(assert (=> b!54541 (= e!28606 (union (union (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (insert (elem!222 (left!1152 (left!1152 thiss!7690))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1155 (left!1152 (left!1152 thiss!7690))))))))

(assert (= (and d!44998 c!11837) b!54540))

(assert (= (and d!44998 (not c!11837)) b!54541))

(declare-fun m!58804 () Bool)

(assert (=> b!54541 m!58804))

(declare-fun m!58806 () Bool)

(assert (=> b!54541 m!58806))

(declare-fun m!58808 () Bool)

(assert (=> b!54541 m!58808))

(assert (=> neg-inst!295 d!44998))

(declare-fun d!45000 () Bool)

(declare-fun c!11838 () Bool)

(assert (=> d!45000 (= c!11838 (is-Empty!161 (right!1155 (right!1155 thiss!7690))))))

(declare-fun e!28607 () (Set (_ BitVec 32)))

(assert (=> d!45000 (= (content!17 (right!1155 (right!1155 thiss!7690))) e!28607)))

(declare-fun b!54542 () Bool)

(assert (=> b!54542 (= e!28607 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54543 () Bool)

(assert (=> b!54543 (= e!28607 (union (union (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (insert (elem!222 (right!1155 (right!1155 thiss!7690))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1155 (right!1155 (right!1155 thiss!7690))))))))

(assert (= (and d!45000 c!11838) b!54542))

(assert (= (and d!45000 (not c!11838)) b!54543))

(declare-fun m!58810 () Bool)

(assert (=> b!54543 m!58810))

(declare-fun m!58812 () Bool)

(assert (=> b!54543 m!58812))

(declare-fun m!58814 () Bool)

(assert (=> b!54543 m!58814))

(assert (=> neg-inst!296 d!45000))

(assert (=> b!54525 d!45000))

(declare-fun d!45002 () Bool)

(declare-fun c!11839 () Bool)

(assert (=> d!45002 (= c!11839 (is-Empty!161 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))))))

(declare-fun e!28608 () (Set (_ BitVec 32)))

(assert (=> d!45002 (= (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))) e!28608)))

(declare-fun b!54544 () Bool)

(assert (=> b!54544 (= e!28608 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54545 () Bool)

(assert (=> b!54545 (= e!28608 (union (union (content!17 (left!1152 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (insert (elem!222 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1155 (left!1152 (Node!122 Empty!161 x!21411 Empty!161))))))))

(assert (= (and d!45002 c!11839) b!54544))

(assert (= (and d!45002 (not c!11839)) b!54545))

(declare-fun m!58816 () Bool)

(assert (=> b!54545 m!58816))

(declare-fun m!58818 () Bool)

(assert (=> b!54545 m!58818))

(declare-fun m!58820 () Bool)

(assert (=> b!54545 m!58820))

(assert (=> b!54528 d!45002))

(assert (=> b!54522 d!44998))

(declare-fun d!45004 () Bool)

(declare-fun c!11840 () Bool)

(assert (=> d!45004 (= c!11840 (is-Empty!161 (right!1155 thiss!7690)))))

(declare-fun e!28609 () (Set (_ BitVec 32)))

(assert (=> d!45004 (= (content!17 (right!1155 thiss!7690)) e!28609)))

(declare-fun b!54546 () Bool)

(assert (=> b!54546 (= e!28609 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54547 () Bool)

(assert (=> b!54547 (= e!28609 (union (union (content!17 (left!1152 (right!1155 thiss!7690))) (insert (elem!222 (right!1155 thiss!7690)) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1155 (right!1155 thiss!7690)))))))

(assert (= (and d!45004 c!11840) b!54546))

(assert (= (and d!45004 (not c!11840)) b!54547))

(assert (=> b!54547 m!58772))

(declare-fun m!58822 () Bool)

(assert (=> b!54547 m!58822))

(assert (=> b!54547 m!58776))

(assert (=> neg-inst!298 d!45004))

(declare-fun d!45006 () Bool)

(declare-fun c!11841 () Bool)

(assert (=> d!45006 (= c!11841 (is-Empty!161 (left!1152 (right!1155 thiss!7690))))))

(declare-fun e!28610 () (Set (_ BitVec 32)))

(assert (=> d!45006 (= (content!17 (left!1152 (right!1155 thiss!7690))) e!28610)))

(declare-fun b!54548 () Bool)

(assert (=> b!54548 (= e!28610 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54549 () Bool)

(assert (=> b!54549 (= e!28610 (union (union (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (insert (elem!222 (left!1152 (right!1155 thiss!7690))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1155 (left!1152 (right!1155 thiss!7690))))))))

(assert (= (and d!45006 c!11841) b!54548))

(assert (= (and d!45006 (not c!11841)) b!54549))

(declare-fun m!58824 () Bool)

(assert (=> b!54549 m!58824))

(declare-fun m!58826 () Bool)

(assert (=> b!54549 m!58826))

(declare-fun m!58828 () Bool)

(assert (=> b!54549 m!58828))

(assert (=> b!54524 d!45006))

(assert (=> neg-inst!297 d!45006))

(declare-fun d!45008 () Bool)

(declare-fun c!11842 () Bool)

(assert (=> d!45008 (= c!11842 (is-Empty!161 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))))))

(declare-fun e!28611 () (Set (_ BitVec 32)))

(assert (=> d!45008 (= (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))) e!28611)))

(declare-fun b!54550 () Bool)

(assert (=> b!54550 (= e!28611 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54551 () Bool)

(assert (=> b!54551 (= e!28611 (union (union (content!17 (left!1152 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (insert (elem!222 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1155 (right!1155 (Node!122 Empty!161 x!21411 Empty!161))))))))

(assert (= (and d!45008 c!11842) b!54550))

(assert (= (and d!45008 (not c!11842)) b!54551))

(declare-fun m!58830 () Bool)

(assert (=> b!54551 m!58830))

(declare-fun m!58832 () Bool)

(assert (=> b!54551 m!58832))

(declare-fun m!58834 () Bool)

(assert (=> b!54551 m!58834))

(assert (=> neg-inst!300 d!45008))

(assert (=> b!54529 d!45008))

(assert (=> b!54527 d!45004))

(declare-fun d!45010 () Bool)

(declare-fun c!11843 () Bool)

(assert (=> d!45010 (= c!11843 (is-Empty!161 (right!1155 (left!1152 thiss!7690))))))

(declare-fun e!28612 () (Set (_ BitVec 32)))

(assert (=> d!45010 (= (content!17 (right!1155 (left!1152 thiss!7690))) e!28612)))

(declare-fun b!54552 () Bool)

(assert (=> b!54552 (= e!28612 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54553 () Bool)

(assert (=> b!54553 (= e!28612 (union (union (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (insert (elem!222 (right!1155 (left!1152 thiss!7690))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1155 (right!1155 (left!1152 thiss!7690))))))))

(assert (= (and d!45010 c!11843) b!54552))

(assert (= (and d!45010 (not c!11843)) b!54553))

(declare-fun m!58836 () Bool)

(assert (=> b!54553 m!58836))

(declare-fun m!58838 () Bool)

(assert (=> b!54553 m!58838))

(declare-fun m!58840 () Bool)

(assert (=> b!54553 m!58840))

(assert (=> neg-inst!294 d!45010))

(declare-fun d!45012 () Bool)

(declare-fun c!11844 () Bool)

(assert (=> d!45012 (= c!11844 (is-Empty!161 (left!1152 thiss!7690)))))

(declare-fun e!28613 () (Set (_ BitVec 32)))

(assert (=> d!45012 (= (content!17 (left!1152 thiss!7690)) e!28613)))

(declare-fun b!54554 () Bool)

(assert (=> b!54554 (= e!28613 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54555 () Bool)

(assert (=> b!54555 (= e!28613 (union (union (content!17 (left!1152 (left!1152 thiss!7690))) (insert (elem!222 (left!1152 thiss!7690)) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1155 (left!1152 thiss!7690)))))))

(assert (= (and d!45012 c!11844) b!54554))

(assert (= (and d!45012 (not c!11844)) b!54555))

(assert (=> b!54555 m!58764))

(declare-fun m!58842 () Bool)

(assert (=> b!54555 m!58842))

(assert (=> b!54555 m!58768))

(assert (=> b!54526 d!45012))

(assert (=> b!54523 d!45010))

(declare-fun b!54556 () Bool)

(assert (=> b!54556 m!58804))

(declare-fun inst!314 () Bool)

(declare-fun x!21743 () (_ BitVec 32))

(assert (=> b!54556 (= inst!314 (=> true (or (not (member x!21743 (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))))) (bvslt x!21743 (elem!222 (left!1152 (left!1152 thiss!7690)))))))))

(declare-fun m!58844 () Bool)

(assert (=> b!54556 m!58844))

(declare-fun bs!25553 () Bool)

(assert (= bs!25553 (and b!54556 neg-inst!299)))

(assert (=> (and bs!25553 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= inst!314 true)))

(declare-fun bs!25554 () Bool)

(assert (= bs!25554 (and b!54556 neg-inst!295)))

(assert (=> (and bs!25554 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!314 true)))

(declare-fun bs!25555 () Bool)

(assert (= bs!25555 (and b!54556 b!54528)))

(assert (=> (and bs!25555 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!314 inst!312)))

(declare-fun bs!25556 () Bool)

(assert (= bs!25556 (and b!54556 b!54522)))

(assert (=> (and bs!25556 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!314 inst!306)))

(declare-fun bs!25557 () Bool)

(assert (= bs!25557 (and b!54556 b!54524)))

(assert (=> (and bs!25557 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!314 inst!308)))

(declare-fun bs!25558 () Bool)

(assert (= bs!25558 (and b!54556 b!54526)))

(assert (=> (and bs!25558 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= inst!314 inst!310)))

(declare-fun bs!25559 () Bool)

(assert (= bs!25559 (and b!54556 neg-inst!297)))

(assert (=> (and bs!25559 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!314 true)))

(declare-fun bs!25560 () Bool)

(assert (= bs!25560 (and b!54556 neg-inst!301)))

(assert (=> (and bs!25560 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!314 true)))

(declare-fun b!54557 () Bool)

(assert (=> b!54557 m!58808))

(declare-fun inst!315 () Bool)

(declare-fun x!21744 () (_ BitVec 32))

(assert (=> b!54557 (= inst!315 (=> true (or (not (member x!21744 (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))))) (bvslt (elem!222 (left!1152 (left!1152 thiss!7690))) x!21744))))))

(declare-fun m!58846 () Bool)

(assert (=> b!54557 m!58846))

(declare-fun bs!25561 () Bool)

(assert (= bs!25561 (and b!54557 b!54527)))

(assert (=> (and bs!25561 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= inst!315 inst!311)))

(declare-fun bs!25562 () Bool)

(assert (= bs!25562 (and b!54557 neg-inst!300)))

(assert (=> (and bs!25562 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!315 true)))

(declare-fun bs!25563 () Bool)

(assert (= bs!25563 (and b!54557 neg-inst!298)))

(assert (=> (and bs!25563 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= inst!315 true)))

(declare-fun bs!25564 () Bool)

(assert (= bs!25564 (and b!54557 b!54525)))

(assert (=> (and bs!25564 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!315 inst!309)))

(declare-fun bs!25565 () Bool)

(assert (= bs!25565 (and b!54557 neg-inst!294)))

(assert (=> (and bs!25565 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!315 true)))

(declare-fun bs!25566 () Bool)

(assert (= bs!25566 (and b!54557 neg-inst!296)))

(assert (=> (and bs!25566 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!315 true)))

(declare-fun bs!25567 () Bool)

(assert (= bs!25567 (and b!54557 b!54529)))

(assert (=> (and bs!25567 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!315 inst!313)))

(declare-fun bs!25568 () Bool)

(assert (= bs!25568 (and b!54557 b!54523)))

(assert (=> (and bs!25568 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!315 inst!307)))

(declare-fun bs!25569 () Bool)

(declare-fun neg-inst!303 () Bool)

(assert (= bs!25569 neg-inst!303))

(assert (=> bs!25569 m!58804))

(declare-fun bs!25570 () Bool)

(declare-fun s!1289 () Bool)

(assert (= bs!25570 (and neg-inst!303 s!1289)))

(assert (=> bs!25570 (=> true (or (not (member x!21743 (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))))) (bvslt x!21743 (elem!222 (left!1152 (left!1152 thiss!7690))))))))

(assert (=> m!58844 s!1289))

(declare-fun bs!25571 () Bool)

(assert (= bs!25571 (and neg-inst!303 neg-inst!299)))

(assert (=> (and bs!25571 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= true true)))

(declare-fun bs!25572 () Bool)

(assert (= bs!25572 (and neg-inst!303 neg-inst!295)))

(assert (=> (and bs!25572 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true true)))

(declare-fun bs!25573 () Bool)

(assert (= bs!25573 (and neg-inst!303 b!54528)))

(assert (=> (and bs!25573 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true inst!312)))

(declare-fun bs!25574 () Bool)

(assert (= bs!25574 (and neg-inst!303 b!54522)))

(assert (=> (and bs!25574 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true inst!306)))

(declare-fun bs!25575 () Bool)

(assert (= bs!25575 (and neg-inst!303 b!54556)))

(assert (=> bs!25575 (= true inst!314)))

(declare-fun bs!25576 () Bool)

(assert (= bs!25576 (and neg-inst!303 b!54524)))

(assert (=> (and bs!25576 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true inst!308)))

(declare-fun bs!25577 () Bool)

(assert (= bs!25577 (and neg-inst!303 b!54526)))

(assert (=> (and bs!25577 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= true inst!310)))

(declare-fun bs!25578 () Bool)

(assert (= bs!25578 (and neg-inst!303 neg-inst!297)))

(assert (=> (and bs!25578 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25579 () Bool)

(assert (= bs!25579 (and neg-inst!303 neg-inst!301)))

(assert (=> (and bs!25579 (= (content!17 (left!1152 (left!1152 (left!1152 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true true)))

(declare-fun bs!25580 () Bool)

(declare-fun neg-inst!302 () Bool)

(assert (= bs!25580 neg-inst!302))

(assert (=> bs!25580 m!58808))

(declare-fun bs!25581 () Bool)

(declare-fun s!1291 () Bool)

(assert (= bs!25581 (and neg-inst!302 s!1291)))

(assert (=> bs!25581 (=> true (or (not (member x!21744 (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))))) (bvslt (elem!222 (left!1152 (left!1152 thiss!7690))) x!21744)))))

(assert (=> m!58846 s!1291))

(declare-fun bs!25582 () Bool)

(assert (= bs!25582 (and neg-inst!302 b!54527)))

(assert (=> (and bs!25582 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= true inst!311)))

(declare-fun bs!25583 () Bool)

(assert (= bs!25583 (and neg-inst!302 neg-inst!300)))

(assert (=> (and bs!25583 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true true)))

(declare-fun bs!25584 () Bool)

(assert (= bs!25584 (and neg-inst!302 neg-inst!298)))

(assert (=> (and bs!25584 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= true true)))

(declare-fun bs!25585 () Bool)

(assert (= bs!25585 (and neg-inst!302 b!54525)))

(assert (=> (and bs!25585 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true inst!309)))

(declare-fun bs!25586 () Bool)

(assert (= bs!25586 (and neg-inst!302 neg-inst!294)))

(assert (=> (and bs!25586 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true true)))

(declare-fun bs!25587 () Bool)

(assert (= bs!25587 (and neg-inst!302 neg-inst!296)))

(assert (=> (and bs!25587 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25588 () Bool)

(assert (= bs!25588 (and neg-inst!302 b!54557)))

(assert (=> bs!25588 (= true inst!315)))

(declare-fun bs!25589 () Bool)

(assert (= bs!25589 (and neg-inst!302 b!54529)))

(assert (=> (and bs!25589 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true inst!313)))

(declare-fun bs!25590 () Bool)

(assert (= bs!25590 (and neg-inst!302 b!54523)))

(assert (=> (and bs!25590 (= (content!17 (right!1155 (left!1152 (left!1152 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true inst!307)))

(declare-fun d!45014 () Bool)

(declare-fun res!25017 () Bool)

(declare-fun e!28615 () Bool)

(assert (=> d!45014 (=> res!25017 e!28615)))

(assert (=> d!45014 (= res!25017 (not (is-Node!122 (left!1152 (left!1152 thiss!7690)))))))

(assert (=> d!45014 (= (inv!977 (left!1152 (left!1152 thiss!7690))) e!28615)))

(declare-fun e!28614 () Bool)

(assert (=> b!54556 (= e!28615 e!28614)))

(declare-fun res!25016 () Bool)

(assert (=> b!54556 (=> (not res!25016) (not e!28614))))

(assert (=> b!54556 (= res!25016 inst!314)))

(assert (=> b!54557 (= e!28614 inst!315)))

(assert (= (and d!45014 (not res!25017)) b!54556))

(assert (= neg-inst!303 inst!314))

(assert (= (and b!54556 res!25016) b!54557))

(assert (= neg-inst!302 inst!315))

(assert (=> b!54534 d!45014))

(declare-fun b!54558 () Bool)

(assert (=> b!54558 m!58836))

(declare-fun inst!316 () Bool)

(declare-fun x!21745 () (_ BitVec 32))

(assert (=> b!54558 (= inst!316 (=> true (or (not (member x!21745 (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))))) (bvslt x!21745 (elem!222 (right!1155 (left!1152 thiss!7690)))))))))

(declare-fun m!58848 () Bool)

(assert (=> b!54558 m!58848))

(declare-fun bs!25591 () Bool)

(assert (= bs!25591 (and b!54558 neg-inst!299)))

(assert (=> (and bs!25591 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= inst!316 true)))

(declare-fun bs!25592 () Bool)

(assert (= bs!25592 (and b!54558 neg-inst!295)))

(assert (=> (and bs!25592 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!316 true)))

(declare-fun bs!25593 () Bool)

(assert (= bs!25593 (and b!54558 b!54528)))

(assert (=> (and bs!25593 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!316 inst!312)))

(declare-fun bs!25594 () Bool)

(assert (= bs!25594 (and b!54558 b!54522)))

(assert (=> (and bs!25594 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!316 inst!306)))

(declare-fun bs!25595 () Bool)

(assert (= bs!25595 (and b!54558 neg-inst!303)))

(assert (=> (and bs!25595 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= inst!316 true)))

(declare-fun bs!25596 () Bool)

(assert (= bs!25596 (and b!54558 b!54556)))

(assert (=> (and bs!25596 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= inst!316 inst!314)))

(declare-fun bs!25597 () Bool)

(assert (= bs!25597 (and b!54558 b!54524)))

(assert (=> (and bs!25597 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!316 inst!308)))

(declare-fun bs!25598 () Bool)

(assert (= bs!25598 (and b!54558 b!54526)))

(assert (=> (and bs!25598 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= inst!316 inst!310)))

(declare-fun bs!25599 () Bool)

(assert (= bs!25599 (and b!54558 neg-inst!297)))

(assert (=> (and bs!25599 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!316 true)))

(declare-fun bs!25600 () Bool)

(assert (= bs!25600 (and b!54558 neg-inst!301)))

(assert (=> (and bs!25600 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!316 true)))

(declare-fun b!54559 () Bool)

(assert (=> b!54559 m!58840))

(declare-fun inst!317 () Bool)

(declare-fun x!21746 () (_ BitVec 32))

(assert (=> b!54559 (= inst!317 (=> true (or (not (member x!21746 (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))))) (bvslt (elem!222 (right!1155 (left!1152 thiss!7690))) x!21746))))))

(declare-fun m!58850 () Bool)

(assert (=> b!54559 m!58850))

(declare-fun bs!25601 () Bool)

(assert (= bs!25601 (and b!54559 b!54527)))

(assert (=> (and bs!25601 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= inst!317 inst!311)))

(declare-fun bs!25602 () Bool)

(assert (= bs!25602 (and b!54559 neg-inst!300)))

(assert (=> (and bs!25602 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!317 true)))

(declare-fun bs!25603 () Bool)

(assert (= bs!25603 (and b!54559 neg-inst!298)))

(assert (=> (and bs!25603 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= inst!317 true)))

(declare-fun bs!25604 () Bool)

(assert (= bs!25604 (and b!54559 b!54525)))

(assert (=> (and bs!25604 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!317 inst!309)))

(declare-fun bs!25605 () Bool)

(assert (= bs!25605 (and b!54559 neg-inst!294)))

(assert (=> (and bs!25605 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!317 true)))

(declare-fun bs!25606 () Bool)

(assert (= bs!25606 (and b!54559 neg-inst!296)))

(assert (=> (and bs!25606 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!317 true)))

(declare-fun bs!25607 () Bool)

(assert (= bs!25607 (and b!54559 b!54557)))

(assert (=> (and bs!25607 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= inst!317 inst!315)))

(declare-fun bs!25608 () Bool)

(assert (= bs!25608 (and b!54559 b!54529)))

(assert (=> (and bs!25608 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!317 inst!313)))

(declare-fun bs!25609 () Bool)

(assert (= bs!25609 (and b!54559 b!54523)))

(assert (=> (and bs!25609 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!317 inst!307)))

(declare-fun bs!25610 () Bool)

(assert (= bs!25610 (and b!54559 neg-inst!302)))

(assert (=> (and bs!25610 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= inst!317 true)))

(declare-fun bs!25611 () Bool)

(declare-fun neg-inst!305 () Bool)

(assert (= bs!25611 neg-inst!305))

(assert (=> bs!25611 m!58836))

(declare-fun bs!25612 () Bool)

(declare-fun s!1293 () Bool)

(assert (= bs!25612 (and neg-inst!305 s!1293)))

(assert (=> bs!25612 (=> true (or (not (member x!21745 (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))))) (bvslt x!21745 (elem!222 (right!1155 (left!1152 thiss!7690))))))))

(assert (=> m!58848 s!1293))

(declare-fun bs!25613 () Bool)

(assert (= bs!25613 (and neg-inst!305 neg-inst!299)))

(assert (=> (and bs!25613 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= true true)))

(declare-fun bs!25614 () Bool)

(assert (= bs!25614 (and neg-inst!305 neg-inst!295)))

(assert (=> (and bs!25614 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true true)))

(declare-fun bs!25615 () Bool)

(assert (= bs!25615 (and neg-inst!305 b!54528)))

(assert (=> (and bs!25615 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true inst!312)))

(declare-fun bs!25616 () Bool)

(assert (= bs!25616 (and neg-inst!305 b!54522)))

(assert (=> (and bs!25616 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true inst!306)))

(declare-fun bs!25617 () Bool)

(assert (= bs!25617 (and neg-inst!305 neg-inst!303)))

(assert (=> (and bs!25617 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= true true)))

(declare-fun bs!25618 () Bool)

(assert (= bs!25618 (and neg-inst!305 b!54556)))

(assert (=> (and bs!25618 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= true inst!314)))

(declare-fun bs!25619 () Bool)

(assert (= bs!25619 (and neg-inst!305 b!54524)))

(assert (=> (and bs!25619 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true inst!308)))

(declare-fun bs!25620 () Bool)

(assert (= bs!25620 (and neg-inst!305 b!54526)))

(assert (=> (and bs!25620 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= true inst!310)))

(declare-fun bs!25621 () Bool)

(assert (= bs!25621 (and neg-inst!305 neg-inst!297)))

(assert (=> (and bs!25621 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25622 () Bool)

(assert (= bs!25622 (and neg-inst!305 neg-inst!301)))

(assert (=> (and bs!25622 (= (content!17 (left!1152 (right!1155 (left!1152 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true true)))

(declare-fun bs!25623 () Bool)

(assert (= bs!25623 (and neg-inst!305 b!54558)))

(assert (=> bs!25623 (= true inst!316)))

(declare-fun bs!25624 () Bool)

(declare-fun neg-inst!304 () Bool)

(assert (= bs!25624 neg-inst!304))

(assert (=> bs!25624 m!58840))

(declare-fun bs!25625 () Bool)

(declare-fun s!1295 () Bool)

(assert (= bs!25625 (and neg-inst!304 s!1295)))

(assert (=> bs!25625 (=> true (or (not (member x!21746 (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))))) (bvslt (elem!222 (right!1155 (left!1152 thiss!7690))) x!21746)))))

(assert (=> m!58850 s!1295))

(declare-fun bs!25626 () Bool)

(assert (= bs!25626 (and neg-inst!304 b!54527)))

(assert (=> (and bs!25626 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= true inst!311)))

(declare-fun bs!25627 () Bool)

(assert (= bs!25627 (and neg-inst!304 neg-inst!300)))

(assert (=> (and bs!25627 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true true)))

(declare-fun bs!25628 () Bool)

(assert (= bs!25628 (and neg-inst!304 neg-inst!298)))

(assert (=> (and bs!25628 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 thiss!7690))) (= true true)))

(declare-fun bs!25629 () Bool)

(assert (= bs!25629 (and neg-inst!304 b!54559)))

(assert (=> bs!25629 (= true inst!317)))

(declare-fun bs!25630 () Bool)

(assert (= bs!25630 (and neg-inst!304 b!54525)))

(assert (=> (and bs!25630 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true inst!309)))

(declare-fun bs!25631 () Bool)

(assert (= bs!25631 (and neg-inst!304 neg-inst!294)))

(assert (=> (and bs!25631 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true true)))

(declare-fun bs!25632 () Bool)

(assert (= bs!25632 (and neg-inst!304 neg-inst!296)))

(assert (=> (and bs!25632 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25633 () Bool)

(assert (= bs!25633 (and neg-inst!304 b!54557)))

(assert (=> (and bs!25633 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= true inst!315)))

(declare-fun bs!25634 () Bool)

(assert (= bs!25634 (and neg-inst!304 b!54529)))

(assert (=> (and bs!25634 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true inst!313)))

(declare-fun bs!25635 () Bool)

(assert (= bs!25635 (and neg-inst!304 b!54523)))

(assert (=> (and bs!25635 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true inst!307)))

(declare-fun bs!25636 () Bool)

(assert (= bs!25636 (and neg-inst!304 neg-inst!302)))

(assert (=> (and bs!25636 (= (content!17 (right!1155 (right!1155 (left!1152 thiss!7690)))) (content!17 (right!1155 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (left!1152 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= true true)))

(declare-fun d!45016 () Bool)

(declare-fun res!25019 () Bool)

(declare-fun e!28617 () Bool)

(assert (=> d!45016 (=> res!25019 e!28617)))

(assert (=> d!45016 (= res!25019 (not (is-Node!122 (right!1155 (left!1152 thiss!7690)))))))

(assert (=> d!45016 (= (inv!977 (right!1155 (left!1152 thiss!7690))) e!28617)))

(declare-fun e!28616 () Bool)

(assert (=> b!54558 (= e!28617 e!28616)))

(declare-fun res!25018 () Bool)

(assert (=> b!54558 (=> (not res!25018) (not e!28616))))

(assert (=> b!54558 (= res!25018 inst!316)))

(assert (=> b!54559 (= e!28616 inst!317)))

(assert (= (and d!45016 (not res!25019)) b!54558))

(assert (= neg-inst!305 inst!316))

(assert (= (and b!54558 res!25018) b!54559))

(assert (= neg-inst!304 inst!317))

(assert (=> b!54534 d!45016))

(declare-fun b!54560 () Bool)

(assert (=> b!54560 m!58824))

(declare-fun inst!318 () Bool)

(declare-fun x!21747 () (_ BitVec 32))

(assert (=> b!54560 (= inst!318 (=> true (or (not (member x!21747 (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))))) (bvslt x!21747 (elem!222 (left!1152 (right!1155 thiss!7690)))))))))

(declare-fun m!58852 () Bool)

(assert (=> b!54560 m!58852))

(declare-fun bs!25637 () Bool)

(assert (= bs!25637 (and b!54560 neg-inst!299)))

(assert (=> (and bs!25637 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= inst!318 true)))

(declare-fun bs!25638 () Bool)

(assert (= bs!25638 (and b!54560 neg-inst!295)))

(assert (=> (and bs!25638 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!318 true)))

(declare-fun bs!25639 () Bool)

(assert (= bs!25639 (and b!54560 b!54528)))

(assert (=> (and bs!25639 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!318 inst!312)))

(declare-fun bs!25640 () Bool)

(assert (= bs!25640 (and b!54560 neg-inst!305)))

(assert (=> (and bs!25640 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= inst!318 true)))

(declare-fun bs!25641 () Bool)

(assert (= bs!25641 (and b!54560 b!54522)))

(assert (=> (and bs!25641 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!318 inst!306)))

(declare-fun bs!25642 () Bool)

(assert (= bs!25642 (and b!54560 neg-inst!303)))

(assert (=> (and bs!25642 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= inst!318 true)))

(declare-fun bs!25643 () Bool)

(assert (= bs!25643 (and b!54560 b!54556)))

(assert (=> (and bs!25643 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= inst!318 inst!314)))

(declare-fun bs!25644 () Bool)

(assert (= bs!25644 (and b!54560 b!54524)))

(assert (=> (and bs!25644 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!318 inst!308)))

(declare-fun bs!25645 () Bool)

(assert (= bs!25645 (and b!54560 b!54526)))

(assert (=> (and bs!25645 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= inst!318 inst!310)))

(declare-fun bs!25646 () Bool)

(assert (= bs!25646 (and b!54560 neg-inst!297)))

(assert (=> (and bs!25646 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!318 true)))

(declare-fun bs!25647 () Bool)

(assert (= bs!25647 (and b!54560 neg-inst!301)))

(assert (=> (and bs!25647 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!318 true)))

(declare-fun bs!25648 () Bool)

(assert (= bs!25648 (and b!54560 b!54558)))

(assert (=> (and bs!25648 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= inst!318 inst!316)))

(declare-fun b!54561 () Bool)

(assert (=> b!54561 m!58828))

(declare-fun inst!319 () Bool)

(declare-fun x!21748 () (_ BitVec 32))

(assert (=> b!54561 (= inst!319 (=> true (or (not (member x!21748 (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))))) (bvslt (elem!222 (left!1152 (right!1155 thiss!7690))) x!21748))))))

(declare-fun m!58854 () Bool)

(assert (=> b!54561 m!58854))

(declare-fun bs!25649 () Bool)

(assert (= bs!25649 (and b!54561 b!54527)))

(assert (=> (and bs!25649 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= inst!319 inst!311)))

(declare-fun bs!25650 () Bool)

(assert (= bs!25650 (and b!54561 neg-inst!298)))

(assert (=> (and bs!25650 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= inst!319 true)))

(declare-fun bs!25651 () Bool)

(assert (= bs!25651 (and b!54561 neg-inst!300)))

(assert (=> (and bs!25651 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!319 true)))

(declare-fun bs!25652 () Bool)

(assert (= bs!25652 (and b!54561 b!54525)))

(assert (=> (and bs!25652 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!319 inst!309)))

(declare-fun bs!25653 () Bool)

(assert (= bs!25653 (and b!54561 b!54559)))

(assert (=> (and bs!25653 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= inst!319 inst!317)))

(declare-fun bs!25654 () Bool)

(assert (= bs!25654 (and b!54561 neg-inst!304)))

(assert (=> (and bs!25654 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= inst!319 true)))

(declare-fun bs!25655 () Bool)

(assert (= bs!25655 (and b!54561 neg-inst!294)))

(assert (=> (and bs!25655 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!319 true)))

(declare-fun bs!25656 () Bool)

(assert (= bs!25656 (and b!54561 neg-inst!296)))

(assert (=> (and bs!25656 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!319 true)))

(declare-fun bs!25657 () Bool)

(assert (= bs!25657 (and b!54561 b!54557)))

(assert (=> (and bs!25657 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= inst!319 inst!315)))

(declare-fun bs!25658 () Bool)

(assert (= bs!25658 (and b!54561 b!54529)))

(assert (=> (and bs!25658 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!319 inst!313)))

(declare-fun bs!25659 () Bool)

(assert (= bs!25659 (and b!54561 b!54523)))

(assert (=> (and bs!25659 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!319 inst!307)))

(declare-fun bs!25660 () Bool)

(assert (= bs!25660 (and b!54561 neg-inst!302)))

(assert (=> (and bs!25660 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= inst!319 true)))

(declare-fun bs!25661 () Bool)

(declare-fun neg-inst!307 () Bool)

(assert (= bs!25661 neg-inst!307))

(assert (=> bs!25661 m!58824))

(declare-fun bs!25662 () Bool)

(declare-fun s!1297 () Bool)

(assert (= bs!25662 (and neg-inst!307 s!1297)))

(assert (=> bs!25662 (=> true (or (not (member x!21747 (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))))) (bvslt x!21747 (elem!222 (left!1152 (right!1155 thiss!7690))))))))

(assert (=> m!58852 s!1297))

(declare-fun bs!25663 () Bool)

(assert (= bs!25663 (and neg-inst!307 neg-inst!299)))

(assert (=> (and bs!25663 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= true true)))

(declare-fun bs!25664 () Bool)

(assert (= bs!25664 (and neg-inst!307 neg-inst!295)))

(assert (=> (and bs!25664 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true true)))

(declare-fun bs!25665 () Bool)

(assert (= bs!25665 (and neg-inst!307 b!54528)))

(assert (=> (and bs!25665 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true inst!312)))

(declare-fun bs!25666 () Bool)

(assert (= bs!25666 (and neg-inst!307 neg-inst!305)))

(assert (=> (and bs!25666 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= true true)))

(declare-fun bs!25667 () Bool)

(assert (= bs!25667 (and neg-inst!307 b!54522)))

(assert (=> (and bs!25667 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true inst!306)))

(declare-fun bs!25668 () Bool)

(assert (= bs!25668 (and neg-inst!307 neg-inst!303)))

(assert (=> (and bs!25668 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= true true)))

(declare-fun bs!25669 () Bool)

(assert (= bs!25669 (and neg-inst!307 b!54524)))

(assert (=> (and bs!25669 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true inst!308)))

(declare-fun bs!25670 () Bool)

(assert (= bs!25670 (and neg-inst!307 b!54556)))

(assert (=> (and bs!25670 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= true inst!314)))

(declare-fun bs!25671 () Bool)

(assert (= bs!25671 (and neg-inst!307 b!54526)))

(assert (=> (and bs!25671 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= true inst!310)))

(declare-fun bs!25672 () Bool)

(assert (= bs!25672 (and neg-inst!307 neg-inst!297)))

(assert (=> (and bs!25672 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25673 () Bool)

(assert (= bs!25673 (and neg-inst!307 neg-inst!301)))

(assert (=> (and bs!25673 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true true)))

(declare-fun bs!25674 () Bool)

(assert (= bs!25674 (and neg-inst!307 b!54560)))

(assert (=> bs!25674 (= true inst!318)))

(declare-fun bs!25675 () Bool)

(assert (= bs!25675 (and neg-inst!307 b!54558)))

(assert (=> (and bs!25675 (= (content!17 (left!1152 (left!1152 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= true inst!316)))

(declare-fun bs!25676 () Bool)

(declare-fun neg-inst!306 () Bool)

(assert (= bs!25676 neg-inst!306))

(assert (=> bs!25676 m!58828))

(declare-fun bs!25677 () Bool)

(declare-fun s!1299 () Bool)

(assert (= bs!25677 (and neg-inst!306 s!1299)))

(assert (=> bs!25677 (=> true (or (not (member x!21748 (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))))) (bvslt (elem!222 (left!1152 (right!1155 thiss!7690))) x!21748)))))

(assert (=> m!58854 s!1299))

(declare-fun bs!25678 () Bool)

(assert (= bs!25678 (and neg-inst!306 b!54527)))

(assert (=> (and bs!25678 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= true inst!311)))

(declare-fun bs!25679 () Bool)

(assert (= bs!25679 (and neg-inst!306 neg-inst!298)))

(assert (=> (and bs!25679 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= true true)))

(declare-fun bs!25680 () Bool)

(assert (= bs!25680 (and neg-inst!306 neg-inst!300)))

(assert (=> (and bs!25680 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true true)))

(declare-fun bs!25681 () Bool)

(assert (= bs!25681 (and neg-inst!306 b!54525)))

(assert (=> (and bs!25681 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true inst!309)))

(declare-fun bs!25682 () Bool)

(assert (= bs!25682 (and neg-inst!306 b!54559)))

(assert (=> (and bs!25682 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= true inst!317)))

(declare-fun bs!25683 () Bool)

(assert (= bs!25683 (and neg-inst!306 neg-inst!304)))

(assert (=> (and bs!25683 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= true true)))

(declare-fun bs!25684 () Bool)

(assert (= bs!25684 (and neg-inst!306 neg-inst!294)))

(assert (=> (and bs!25684 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true true)))

(declare-fun bs!25685 () Bool)

(assert (= bs!25685 (and neg-inst!306 neg-inst!296)))

(assert (=> (and bs!25685 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25686 () Bool)

(assert (= bs!25686 (and neg-inst!306 b!54557)))

(assert (=> (and bs!25686 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= true inst!315)))

(declare-fun bs!25687 () Bool)

(assert (= bs!25687 (and neg-inst!306 b!54529)))

(assert (=> (and bs!25687 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true inst!313)))

(declare-fun bs!25688 () Bool)

(assert (= bs!25688 (and neg-inst!306 b!54523)))

(assert (=> (and bs!25688 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true inst!307)))

(declare-fun bs!25689 () Bool)

(assert (= bs!25689 (and neg-inst!306 neg-inst!302)))

(assert (=> (and bs!25689 (= (content!17 (right!1155 (left!1152 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (left!1152 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= true true)))

(declare-fun bs!25690 () Bool)

(assert (= bs!25690 (and neg-inst!306 b!54561)))

(assert (=> bs!25690 (= true inst!319)))

(declare-fun d!45018 () Bool)

(declare-fun res!25021 () Bool)

(declare-fun e!28619 () Bool)

(assert (=> d!45018 (=> res!25021 e!28619)))

(assert (=> d!45018 (= res!25021 (not (is-Node!122 (left!1152 (right!1155 thiss!7690)))))))

(assert (=> d!45018 (= (inv!977 (left!1152 (right!1155 thiss!7690))) e!28619)))

(declare-fun e!28618 () Bool)

(assert (=> b!54560 (= e!28619 e!28618)))

(declare-fun res!25020 () Bool)

(assert (=> b!54560 (=> (not res!25020) (not e!28618))))

(assert (=> b!54560 (= res!25020 inst!318)))

(assert (=> b!54561 (= e!28618 inst!319)))

(assert (= (and d!45018 (not res!25021)) b!54560))

(assert (= neg-inst!307 inst!318))

(assert (= (and b!54560 res!25020) b!54561))

(assert (= neg-inst!306 inst!319))

(assert (=> b!54535 d!45018))

(declare-fun b!54562 () Bool)

(assert (=> b!54562 m!58810))

(declare-fun inst!320 () Bool)

(declare-fun x!21749 () (_ BitVec 32))

(assert (=> b!54562 (= inst!320 (=> true (or (not (member x!21749 (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))))) (bvslt x!21749 (elem!222 (right!1155 (right!1155 thiss!7690)))))))))

(declare-fun m!58856 () Bool)

(assert (=> b!54562 m!58856))

(declare-fun bs!25691 () Bool)

(assert (= bs!25691 (and b!54562 neg-inst!299)))

(assert (=> (and bs!25691 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= inst!320 true)))

(declare-fun bs!25692 () Bool)

(assert (= bs!25692 (and b!54562 neg-inst!295)))

(assert (=> (and bs!25692 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!320 true)))

(declare-fun bs!25693 () Bool)

(assert (= bs!25693 (and b!54562 b!54528)))

(assert (=> (and bs!25693 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!320 inst!312)))

(declare-fun bs!25694 () Bool)

(assert (= bs!25694 (and b!54562 neg-inst!305)))

(assert (=> (and bs!25694 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= inst!320 true)))

(declare-fun bs!25695 () Bool)

(assert (= bs!25695 (and b!54562 b!54522)))

(assert (=> (and bs!25695 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!320 inst!306)))

(declare-fun bs!25696 () Bool)

(assert (= bs!25696 (and b!54562 neg-inst!303)))

(assert (=> (and bs!25696 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= inst!320 true)))

(declare-fun bs!25697 () Bool)

(assert (= bs!25697 (and b!54562 b!54524)))

(assert (=> (and bs!25697 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!320 inst!308)))

(declare-fun bs!25698 () Bool)

(assert (= bs!25698 (and b!54562 b!54556)))

(assert (=> (and bs!25698 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= inst!320 inst!314)))

(declare-fun bs!25699 () Bool)

(assert (= bs!25699 (and b!54562 neg-inst!307)))

(assert (=> (and bs!25699 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 (right!1155 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (right!1155 thiss!7690))))) (= inst!320 true)))

(declare-fun bs!25700 () Bool)

(assert (= bs!25700 (and b!54562 b!54526)))

(assert (=> (and bs!25700 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= inst!320 inst!310)))

(declare-fun bs!25701 () Bool)

(assert (= bs!25701 (and b!54562 neg-inst!297)))

(assert (=> (and bs!25701 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!320 true)))

(declare-fun bs!25702 () Bool)

(assert (= bs!25702 (and b!54562 neg-inst!301)))

(assert (=> (and bs!25702 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!320 true)))

(declare-fun bs!25703 () Bool)

(assert (= bs!25703 (and b!54562 b!54560)))

(assert (=> (and bs!25703 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 (right!1155 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (right!1155 thiss!7690))))) (= inst!320 inst!318)))

(declare-fun bs!25704 () Bool)

(assert (= bs!25704 (and b!54562 b!54558)))

(assert (=> (and bs!25704 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= inst!320 inst!316)))

(declare-fun b!54563 () Bool)

(assert (=> b!54563 m!58814))

(declare-fun inst!321 () Bool)

(declare-fun x!21750 () (_ BitVec 32))

(assert (=> b!54563 (= inst!321 (=> true (or (not (member x!21750 (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))))) (bvslt (elem!222 (right!1155 (right!1155 thiss!7690))) x!21750))))))

(declare-fun m!58858 () Bool)

(assert (=> b!54563 m!58858))

(declare-fun bs!25705 () Bool)

(assert (= bs!25705 (and b!54563 b!54527)))

(assert (=> (and bs!25705 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= inst!321 inst!311)))

(declare-fun bs!25706 () Bool)

(assert (= bs!25706 (and b!54563 neg-inst!298)))

(assert (=> (and bs!25706 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= inst!321 true)))

(declare-fun bs!25707 () Bool)

(assert (= bs!25707 (and b!54563 neg-inst!300)))

(assert (=> (and bs!25707 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!321 true)))

(declare-fun bs!25708 () Bool)

(assert (= bs!25708 (and b!54563 neg-inst!306)))

(assert (=> (and bs!25708 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 (right!1155 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (right!1155 thiss!7690))))) (= inst!321 true)))

(declare-fun bs!25709 () Bool)

(assert (= bs!25709 (and b!54563 b!54525)))

(assert (=> (and bs!25709 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!321 inst!309)))

(declare-fun bs!25710 () Bool)

(assert (= bs!25710 (and b!54563 b!54559)))

(assert (=> (and bs!25710 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= inst!321 inst!317)))

(declare-fun bs!25711 () Bool)

(assert (= bs!25711 (and b!54563 neg-inst!304)))

(assert (=> (and bs!25711 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= inst!321 true)))

(declare-fun bs!25712 () Bool)

(assert (= bs!25712 (and b!54563 neg-inst!294)))

(assert (=> (and bs!25712 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!321 true)))

(declare-fun bs!25713 () Bool)

(assert (= bs!25713 (and b!54563 neg-inst!296)))

(assert (=> (and bs!25713 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= inst!321 true)))

(declare-fun bs!25714 () Bool)

(assert (= bs!25714 (and b!54563 b!54557)))

(assert (=> (and bs!25714 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= inst!321 inst!315)))

(declare-fun bs!25715 () Bool)

(assert (= bs!25715 (and b!54563 b!54529)))

(assert (=> (and bs!25715 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= inst!321 inst!313)))

(declare-fun bs!25716 () Bool)

(assert (= bs!25716 (and b!54563 b!54523)))

(assert (=> (and bs!25716 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= inst!321 inst!307)))

(declare-fun bs!25717 () Bool)

(assert (= bs!25717 (and b!54563 neg-inst!302)))

(assert (=> (and bs!25717 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= inst!321 true)))

(declare-fun bs!25718 () Bool)

(assert (= bs!25718 (and b!54563 b!54561)))

(assert (=> (and bs!25718 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 (right!1155 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (right!1155 thiss!7690))))) (= inst!321 inst!319)))

(declare-fun bs!25719 () Bool)

(declare-fun neg-inst!309 () Bool)

(assert (= bs!25719 neg-inst!309))

(assert (=> bs!25719 m!58810))

(declare-fun bs!25720 () Bool)

(declare-fun s!1301 () Bool)

(assert (= bs!25720 (and neg-inst!309 s!1301)))

(assert (=> bs!25720 (=> true (or (not (member x!21749 (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))))) (bvslt x!21749 (elem!222 (right!1155 (right!1155 thiss!7690))))))))

(assert (=> m!58856 s!1301))

(declare-fun bs!25721 () Bool)

(assert (= bs!25721 (and neg-inst!309 neg-inst!299)))

(assert (=> (and bs!25721 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= true true)))

(declare-fun bs!25722 () Bool)

(assert (= bs!25722 (and neg-inst!309 neg-inst!295)))

(assert (=> (and bs!25722 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true true)))

(declare-fun bs!25723 () Bool)

(assert (= bs!25723 (and neg-inst!309 b!54528)))

(assert (=> (and bs!25723 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true inst!312)))

(declare-fun bs!25724 () Bool)

(assert (= bs!25724 (and neg-inst!309 neg-inst!305)))

(assert (=> (and bs!25724 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= true true)))

(declare-fun bs!25725 () Bool)

(assert (= bs!25725 (and neg-inst!309 b!54522)))

(assert (=> (and bs!25725 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true inst!306)))

(declare-fun bs!25726 () Bool)

(assert (= bs!25726 (and neg-inst!309 neg-inst!303)))

(assert (=> (and bs!25726 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= true true)))

(declare-fun bs!25727 () Bool)

(assert (= bs!25727 (and neg-inst!309 b!54524)))

(assert (=> (and bs!25727 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true inst!308)))

(declare-fun bs!25728 () Bool)

(assert (= bs!25728 (and neg-inst!309 b!54556)))

(assert (=> (and bs!25728 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= true inst!314)))

(declare-fun bs!25729 () Bool)

(assert (= bs!25729 (and neg-inst!309 neg-inst!307)))

(assert (=> (and bs!25729 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 (right!1155 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (right!1155 thiss!7690))))) (= true true)))

(declare-fun bs!25730 () Bool)

(assert (= bs!25730 (and neg-inst!309 b!54526)))

(assert (=> (and bs!25730 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 thiss!7690))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= true inst!310)))

(declare-fun bs!25731 () Bool)

(assert (= bs!25731 (and neg-inst!309 neg-inst!297)))

(assert (=> (and bs!25731 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25732 () Bool)

(assert (= bs!25732 (and neg-inst!309 neg-inst!301)))

(assert (=> (and bs!25732 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true true)))

(declare-fun bs!25733 () Bool)

(assert (= bs!25733 (and neg-inst!309 b!54560)))

(assert (=> (and bs!25733 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (left!1152 (right!1155 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (right!1155 thiss!7690))))) (= true inst!318)))

(declare-fun bs!25734 () Bool)

(assert (= bs!25734 (and neg-inst!309 b!54562)))

(assert (=> bs!25734 (= true inst!320)))

(declare-fun bs!25735 () Bool)

(assert (= bs!25735 (and neg-inst!309 b!54558)))

(assert (=> (and bs!25735 (= (content!17 (left!1152 (right!1155 (right!1155 thiss!7690)))) (content!17 (left!1152 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= true inst!316)))

(declare-fun bs!25736 () Bool)

(declare-fun neg-inst!308 () Bool)

(assert (= bs!25736 neg-inst!308))

(assert (=> bs!25736 m!58814))

(declare-fun bs!25737 () Bool)

(declare-fun s!1303 () Bool)

(assert (= bs!25737 (and neg-inst!308 s!1303)))

(assert (=> bs!25737 (=> true (or (not (member x!21750 (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))))) (bvslt (elem!222 (right!1155 (right!1155 thiss!7690))) x!21750)))))

(assert (=> m!58858 s!1303))

(declare-fun bs!25738 () Bool)

(assert (= bs!25738 (and neg-inst!308 b!54527)))

(assert (=> (and bs!25738 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= true inst!311)))

(declare-fun bs!25739 () Bool)

(assert (= bs!25739 (and neg-inst!308 neg-inst!298)))

(assert (=> (and bs!25739 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 thiss!7690))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 thiss!7690))) (= true true)))

(declare-fun bs!25740 () Bool)

(assert (= bs!25740 (and neg-inst!308 neg-inst!300)))

(assert (=> (and bs!25740 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true true)))

(declare-fun bs!25741 () Bool)

(assert (= bs!25741 (and neg-inst!308 neg-inst!306)))

(assert (=> (and bs!25741 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 (right!1155 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (right!1155 thiss!7690))))) (= true true)))

(declare-fun bs!25742 () Bool)

(assert (= bs!25742 (and neg-inst!308 b!54525)))

(assert (=> (and bs!25742 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true inst!309)))

(declare-fun bs!25743 () Bool)

(assert (= bs!25743 (and neg-inst!308 b!54559)))

(assert (=> (and bs!25743 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= true inst!317)))

(declare-fun bs!25744 () Bool)

(assert (= bs!25744 (and neg-inst!308 neg-inst!304)))

(assert (=> (and bs!25744 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 (left!1152 thiss!7690))))) (= true true)))

(declare-fun bs!25745 () Bool)

(assert (= bs!25745 (and neg-inst!308 neg-inst!294)))

(assert (=> (and bs!25745 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true true)))

(declare-fun bs!25746 () Bool)

(assert (= bs!25746 (and neg-inst!308 neg-inst!296)))

(assert (=> (and bs!25746 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (right!1155 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (right!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25747 () Bool)

(assert (= bs!25747 (and neg-inst!308 b!54557)))

(assert (=> (and bs!25747 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= true inst!315)))

(declare-fun bs!25748 () Bool)

(assert (= bs!25748 (and neg-inst!308 b!54529)))

(assert (=> (and bs!25748 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (Node!122 Empty!161 x!21411 Empty!161)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (Node!122 Empty!161 x!21411 Empty!161)))) (= true inst!313)))

(declare-fun bs!25749 () Bool)

(assert (= bs!25749 (and neg-inst!308 b!54523)))

(assert (=> (and bs!25749 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 thiss!7690)))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 thiss!7690)))) (= true inst!307)))

(declare-fun bs!25750 () Bool)

(assert (= bs!25750 (and neg-inst!308 neg-inst!302)))

(assert (=> (and bs!25750 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 (left!1152 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (left!1152 thiss!7690))))) (= true true)))

(declare-fun bs!25751 () Bool)

(assert (= bs!25751 (and neg-inst!308 b!54563)))

(assert (=> bs!25751 (= true inst!321)))

(declare-fun bs!25752 () Bool)

(assert (= bs!25752 (and neg-inst!308 b!54561)))

(assert (=> (and bs!25752 (= (content!17 (right!1155 (right!1155 (right!1155 thiss!7690)))) (content!17 (right!1155 (left!1152 (right!1155 thiss!7690))))) (= (elem!222 (right!1155 (right!1155 thiss!7690))) (elem!222 (left!1152 (right!1155 thiss!7690))))) (= true inst!319)))

(declare-fun d!45020 () Bool)

(declare-fun res!25023 () Bool)

(declare-fun e!28621 () Bool)

(assert (=> d!45020 (=> res!25023 e!28621)))

(assert (=> d!45020 (= res!25023 (not (is-Node!122 (right!1155 (right!1155 thiss!7690)))))))

(assert (=> d!45020 (= (inv!977 (right!1155 (right!1155 thiss!7690))) e!28621)))

(declare-fun e!28620 () Bool)

(assert (=> b!54562 (= e!28621 e!28620)))

(declare-fun res!25022 () Bool)

(assert (=> b!54562 (=> (not res!25022) (not e!28620))))

(assert (=> b!54562 (= res!25022 inst!320)))

(assert (=> b!54563 (= e!28620 inst!321)))

(assert (= (and d!45020 (not res!25023)) b!54562))

(assert (= neg-inst!309 inst!320))

(assert (= (and b!54562 res!25022) b!54563))

(assert (= neg-inst!308 inst!321))

(assert (=> b!54535 d!45020))

(assert (=> neg-inst!301 d!45002))

(assert (=> neg-inst!299 d!45012))

(assert (=> b!54517 d!44990))

(assert (=> b!54517 d!44992))

(declare-fun tp!15392 () Bool)

(declare-fun e!28622 () Bool)

(declare-fun b!54564 () Bool)

(declare-fun tp!15391 () Bool)

(assert (=> b!54564 (= e!28622 (and (inv!977 (left!1152 (left!1152 (right!1155 thiss!7690)))) tp!15391 (inv!977 (right!1155 (left!1152 (right!1155 thiss!7690)))) tp!15392))))

(assert (=> b!54535 (= tp!15389 (and (inv!977 (left!1152 (right!1155 thiss!7690))) e!28622))))

(assert (= (and b!54535 (is-Node!122 (left!1152 (right!1155 thiss!7690)))) b!54564))

(declare-fun m!58860 () Bool)

(assert (=> b!54564 m!58860))

(declare-fun m!58862 () Bool)

(assert (=> b!54564 m!58862))

(assert (=> b!54535 m!58800))

(declare-fun b!54565 () Bool)

(declare-fun tp!15393 () Bool)

(declare-fun e!28623 () Bool)

(declare-fun tp!15394 () Bool)

(assert (=> b!54565 (= e!28623 (and (inv!977 (left!1152 (right!1155 (right!1155 thiss!7690)))) tp!15393 (inv!977 (right!1155 (right!1155 (right!1155 thiss!7690)))) tp!15394))))

(assert (=> b!54535 (= tp!15390 (and (inv!977 (right!1155 (right!1155 thiss!7690))) e!28623))))

(assert (= (and b!54535 (is-Node!122 (right!1155 (right!1155 thiss!7690)))) b!54565))

(declare-fun m!58864 () Bool)

(assert (=> b!54565 m!58864))

(declare-fun m!58866 () Bool)

(assert (=> b!54565 m!58866))

(assert (=> b!54535 m!58802))

(declare-fun b!54566 () Bool)

(declare-fun tp!15395 () Bool)

(declare-fun e!28624 () Bool)

(declare-fun tp!15396 () Bool)

(assert (=> b!54566 (= e!28624 (and (inv!977 (left!1152 (left!1152 (left!1152 thiss!7690)))) tp!15395 (inv!977 (right!1155 (left!1152 (left!1152 thiss!7690)))) tp!15396))))

(assert (=> b!54534 (= tp!15387 (and (inv!977 (left!1152 (left!1152 thiss!7690))) e!28624))))

(assert (= (and b!54534 (is-Node!122 (left!1152 (left!1152 thiss!7690)))) b!54566))

(declare-fun m!58868 () Bool)

(assert (=> b!54566 m!58868))

(declare-fun m!58870 () Bool)

(assert (=> b!54566 m!58870))

(assert (=> b!54534 m!58796))

(declare-fun tp!15398 () Bool)

(declare-fun tp!15397 () Bool)

(declare-fun b!54567 () Bool)

(declare-fun e!28625 () Bool)

(assert (=> b!54567 (= e!28625 (and (inv!977 (left!1152 (right!1155 (left!1152 thiss!7690)))) tp!15397 (inv!977 (right!1155 (right!1155 (left!1152 thiss!7690)))) tp!15398))))

(assert (=> b!54534 (= tp!15388 (and (inv!977 (right!1155 (left!1152 thiss!7690))) e!28625))))

(assert (= (and b!54534 (is-Node!122 (right!1155 (left!1152 thiss!7690)))) b!54567))

(declare-fun m!58872 () Bool)

(assert (=> b!54567 m!58872))

(declare-fun m!58874 () Bool)

(assert (=> b!54567 m!58874))

(assert (=> b!54534 m!58798))

(push 1)

(assert (not b!54547))

(assert (not neg-inst!305))

(assert (not b!54534))

(assert (not b!54549))

(assert (not b!54559))

(assert (not b!54551))

(assert (not b!54555))

(assert (not b!54541))

(assert (not neg-inst!303))

(assert (not b!54562))

(assert (not b!54558))

(assert (not b!54553))

(assert (not neg-inst!306))

(assert (not neg-inst!302))

(assert (not b!54556))

(assert (not b!54543))

(assert (not b!54567))

(assert (not b!54565))

(assert (not b!54566))

(assert (not b!54545))

(assert (not b!54535))

(assert (not neg-inst!308))

(assert (not neg-inst!307))

(assert (not b!54561))

(assert (not b!54560))

(assert (not b!54563))

(assert (not b!54564))

(assert (not neg-inst!309))

(assert (not neg-inst!304))

(assert (not b!54557))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7644 () Bool)

(assert start!7644)

(declare-fun b!54712 () Bool)

(declare-fun res!25084 () Bool)

(declare-fun e!28741 () Bool)

(assert (=> b!54712 (=> (not res!25084) (not e!28741))))

(declare-fun x!21411 () (_ BitVec 32))

(declare-datatypes () ((IntSet!41 (Empty!166) (Node!127 (left!1157 IntSet!41) (elem!227 (_ BitVec 32)) (right!1160 IntSet!41)))))

(declare-fun thiss!7690 () IntSet!41)

(declare-fun res!24725 () IntSet!41)

(declare-fun incl!2 (IntSet!41 (_ BitVec 32)) IntSet!41)

(assert (=> b!54712 (= res!25084 (= res!24725 (Node!127 (incl!2 (left!1157 thiss!7690) x!21411) (elem!227 thiss!7690) (right!1160 thiss!7690))))))

(declare-fun res!25085 () Bool)

(assert (=> start!7644 (=> (not res!25085) (not e!28741))))

(assert (=> start!7644 (= res!25085 (and (not (is-Empty!166 thiss!7690)) (bvslt x!21411 (elem!227 thiss!7690))))))

(assert (=> start!7644 e!28741))

(declare-fun e!28743 () Bool)

(declare-fun inv!977 (IntSet!41) Bool)

(assert (=> start!7644 (and (inv!977 thiss!7690) e!28743)))

(assert (=> start!7644 true))

(declare-fun e!28742 () Bool)

(assert (=> start!7644 (and (inv!977 res!24725) e!28742)))

(declare-fun tp!15484 () Bool)

(declare-fun b!54715 () Bool)

(declare-fun tp!15486 () Bool)

(assert (=> b!54715 (= e!28742 (and (inv!977 (left!1157 res!24725)) tp!15486 (inv!977 (right!1160 res!24725)) tp!15484))))

(declare-fun b!54713 () Bool)

(declare-fun content!17 (IntSet!41) (Set (_ BitVec 32)))

(assert (=> b!54713 (= e!28741 (not (= (content!17 res!24725) (union (content!17 thiss!7690) (insert x!21411 (as emptyset (Set (_ BitVec 32))))))))))

(declare-fun b!54714 () Bool)

(declare-fun tp!15483 () Bool)

(declare-fun tp!15485 () Bool)

(assert (=> b!54714 (= e!28743 (and (inv!977 (left!1157 thiss!7690)) tp!15485 (inv!977 (right!1160 thiss!7690)) tp!15483))))

(assert (= (and start!7644 res!25085) b!54712))

(assert (= (and b!54712 res!25084) b!54713))

(assert (= (and start!7644 (is-Node!127 thiss!7690)) b!54714))

(assert (= (and start!7644 (is-Node!127 res!24725)) b!54715))

(declare-fun m!59292 () Bool)

(assert (=> b!54715 m!59292))

(declare-fun m!59294 () Bool)

(assert (=> b!54715 m!59294))

(declare-fun m!59296 () Bool)

(assert (=> b!54713 m!59296))

(declare-fun m!59298 () Bool)

(assert (=> b!54713 m!59298))

(declare-fun m!59300 () Bool)

(assert (=> b!54713 m!59300))

(declare-fun m!59302 () Bool)

(assert (=> b!54714 m!59302))

(declare-fun m!59304 () Bool)

(assert (=> b!54714 m!59304))

(declare-fun m!59306 () Bool)

(assert (=> b!54712 m!59306))

(declare-fun m!59308 () Bool)

(assert (=> start!7644 m!59308))

(declare-fun m!59310 () Bool)

(assert (=> start!7644 m!59310))

(push 1)

(assert (not b!54714))

(assert (not start!7644))

(assert (not b!54712))

(assert (not b!54715))

(assert (not b!54713))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!54720 () Bool)

(declare-fun m!59312 () Bool)

(assert (=> b!54720 m!59312))

(declare-fun inst!368 () Bool)

(declare-fun x!21846 () (_ BitVec 32))

(assert (=> b!54720 (= inst!368 (=> true (or (not (member x!21846 (content!17 (left!1157 (left!1157 thiss!7690))))) (bvslt x!21846 (elem!227 (left!1157 thiss!7690))))))))

(declare-fun m!59314 () Bool)

(assert (=> b!54720 m!59314))

(declare-fun b!54721 () Bool)

(declare-fun m!59316 () Bool)

(assert (=> b!54721 m!59316))

(declare-fun inst!369 () Bool)

(declare-fun x!21847 () (_ BitVec 32))

(assert (=> b!54721 (= inst!369 (=> true (or (not (member x!21847 (content!17 (right!1160 (left!1157 thiss!7690))))) (bvslt (elem!227 (left!1157 thiss!7690)) x!21847))))))

(declare-fun m!59318 () Bool)

(assert (=> b!54721 m!59318))

(declare-fun bs!26484 () Bool)

(declare-fun neg-inst!356 () Bool)

(assert (= bs!26484 neg-inst!356))

(assert (=> bs!26484 m!59312))

(declare-fun bs!26485 () Bool)

(declare-fun s!1501 () Bool)

(assert (= bs!26485 (and neg-inst!356 s!1501)))

(assert (=> bs!26485 (=> true (or (not (member x!21846 (content!17 (left!1157 (left!1157 thiss!7690))))) (bvslt x!21846 (elem!227 (left!1157 thiss!7690)))))))

(assert (=> m!59314 s!1501))

(declare-fun bs!26486 () Bool)

(assert (= bs!26486 (and neg-inst!356 b!54720)))

(assert (=> bs!26486 (= true inst!368)))

(declare-fun bs!26487 () Bool)

(declare-fun neg-inst!357 () Bool)

(assert (= bs!26487 neg-inst!357))

(assert (=> bs!26487 m!59316))

(declare-fun bs!26488 () Bool)

(declare-fun s!1503 () Bool)

(assert (= bs!26488 (and neg-inst!357 s!1503)))

(assert (=> bs!26488 (=> true (or (not (member x!21847 (content!17 (right!1160 (left!1157 thiss!7690))))) (bvslt (elem!227 (left!1157 thiss!7690)) x!21847)))))

(assert (=> m!59318 s!1503))

(declare-fun bs!26489 () Bool)

(assert (= bs!26489 (and neg-inst!357 b!54721)))

(assert (=> bs!26489 (= true inst!369)))

(declare-fun d!45082 () Bool)

(declare-fun res!25091 () Bool)

(declare-fun e!28749 () Bool)

(assert (=> d!45082 (=> res!25091 e!28749)))

(assert (=> d!45082 (= res!25091 (not (is-Node!127 (left!1157 thiss!7690))))))

(assert (=> d!45082 (= (inv!977 (left!1157 thiss!7690)) e!28749)))

(declare-fun e!28748 () Bool)

(assert (=> b!54720 (= e!28749 e!28748)))

(declare-fun res!25090 () Bool)

(assert (=> b!54720 (=> (not res!25090) (not e!28748))))

(assert (=> b!54720 (= res!25090 inst!368)))

(assert (=> b!54721 (= e!28748 inst!369)))

(assert (= (and d!45082 (not res!25091)) b!54720))

(assert (= neg-inst!356 inst!368))

(assert (= (and b!54720 res!25090) b!54721))

(assert (= neg-inst!357 inst!369))

(assert (=> b!54714 d!45082))

(declare-fun b!54722 () Bool)

(declare-fun m!59320 () Bool)

(assert (=> b!54722 m!59320))

(declare-fun inst!370 () Bool)

(declare-fun x!21848 () (_ BitVec 32))

(assert (=> b!54722 (= inst!370 (=> true (or (not (member x!21848 (content!17 (left!1157 (right!1160 thiss!7690))))) (bvslt x!21848 (elem!227 (right!1160 thiss!7690))))))))

(declare-fun m!59322 () Bool)

(assert (=> b!54722 m!59322))

(declare-fun bs!26490 () Bool)

(assert (= bs!26490 (and b!54722 b!54720)))

(assert (=> (and bs!26490 (= (content!17 (left!1157 (right!1160 thiss!7690))) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 thiss!7690)) (elem!227 (left!1157 thiss!7690)))) (= inst!370 inst!368)))

(declare-fun bs!26491 () Bool)

(assert (= bs!26491 (and b!54722 neg-inst!356)))

(assert (=> (and bs!26491 (= (content!17 (left!1157 (right!1160 thiss!7690))) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 thiss!7690)) (elem!227 (left!1157 thiss!7690)))) (= inst!370 true)))

(declare-fun b!54723 () Bool)

(declare-fun m!59324 () Bool)

(assert (=> b!54723 m!59324))

(declare-fun inst!371 () Bool)

(declare-fun x!21849 () (_ BitVec 32))

(assert (=> b!54723 (= inst!371 (=> true (or (not (member x!21849 (content!17 (right!1160 (right!1160 thiss!7690))))) (bvslt (elem!227 (right!1160 thiss!7690)) x!21849))))))

(declare-fun m!59326 () Bool)

(assert (=> b!54723 m!59326))

(declare-fun bs!26492 () Bool)

(assert (= bs!26492 (and b!54723 neg-inst!357)))

(assert (=> (and bs!26492 (= (content!17 (right!1160 (right!1160 thiss!7690))) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 thiss!7690)) (elem!227 (left!1157 thiss!7690)))) (= inst!371 true)))

(declare-fun bs!26493 () Bool)

(assert (= bs!26493 (and b!54723 b!54721)))

(assert (=> (and bs!26493 (= (content!17 (right!1160 (right!1160 thiss!7690))) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 thiss!7690)) (elem!227 (left!1157 thiss!7690)))) (= inst!371 inst!369)))

(declare-fun bs!26494 () Bool)

(declare-fun neg-inst!358 () Bool)

(assert (= bs!26494 neg-inst!358))

(assert (=> bs!26494 m!59320))

(declare-fun bs!26495 () Bool)

(declare-fun s!1505 () Bool)

(assert (= bs!26495 (and neg-inst!358 s!1505)))

(assert (=> bs!26495 (=> true (or (not (member x!21848 (content!17 (left!1157 (right!1160 thiss!7690))))) (bvslt x!21848 (elem!227 (right!1160 thiss!7690)))))))

(assert (=> m!59322 s!1505))

(declare-fun bs!26496 () Bool)

(assert (= bs!26496 (and neg-inst!358 b!54720)))

(assert (=> (and bs!26496 (= (content!17 (left!1157 (right!1160 thiss!7690))) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 thiss!7690)) (elem!227 (left!1157 thiss!7690)))) (= true inst!368)))

(declare-fun bs!26497 () Bool)

(assert (= bs!26497 (and neg-inst!358 b!54722)))

(assert (=> bs!26497 (= true inst!370)))

(declare-fun bs!26498 () Bool)

(assert (= bs!26498 (and neg-inst!358 neg-inst!356)))

(assert (=> (and bs!26498 (= (content!17 (left!1157 (right!1160 thiss!7690))) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 thiss!7690)) (elem!227 (left!1157 thiss!7690)))) (= true true)))

(declare-fun bs!26499 () Bool)

(declare-fun neg-inst!359 () Bool)

(assert (= bs!26499 neg-inst!359))

(assert (=> bs!26499 m!59324))

(declare-fun bs!26500 () Bool)

(declare-fun s!1507 () Bool)

(assert (= bs!26500 (and neg-inst!359 s!1507)))

(assert (=> bs!26500 (=> true (or (not (member x!21849 (content!17 (right!1160 (right!1160 thiss!7690))))) (bvslt (elem!227 (right!1160 thiss!7690)) x!21849)))))

(assert (=> m!59326 s!1507))

(declare-fun bs!26501 () Bool)

(assert (= bs!26501 (and neg-inst!359 neg-inst!357)))

(assert (=> (and bs!26501 (= (content!17 (right!1160 (right!1160 thiss!7690))) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 thiss!7690)) (elem!227 (left!1157 thiss!7690)))) (= true true)))

(declare-fun bs!26502 () Bool)

(assert (= bs!26502 (and neg-inst!359 b!54721)))

(assert (=> (and bs!26502 (= (content!17 (right!1160 (right!1160 thiss!7690))) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 thiss!7690)) (elem!227 (left!1157 thiss!7690)))) (= true inst!369)))

(declare-fun bs!26503 () Bool)

(assert (= bs!26503 (and neg-inst!359 b!54723)))

(assert (=> bs!26503 (= true inst!371)))

(declare-fun d!45084 () Bool)

(declare-fun res!25093 () Bool)

(declare-fun e!28751 () Bool)

(assert (=> d!45084 (=> res!25093 e!28751)))

(assert (=> d!45084 (= res!25093 (not (is-Node!127 (right!1160 thiss!7690))))))

(assert (=> d!45084 (= (inv!977 (right!1160 thiss!7690)) e!28751)))

(declare-fun e!28750 () Bool)

(assert (=> b!54722 (= e!28751 e!28750)))

(declare-fun res!25092 () Bool)

(assert (=> b!54722 (=> (not res!25092) (not e!28750))))

(assert (=> b!54722 (= res!25092 inst!370)))

(assert (=> b!54723 (= e!28750 inst!371)))

(assert (= (and d!45084 (not res!25093)) b!54722))

(assert (= neg-inst!358 inst!370))

(assert (= (and b!54722 res!25092) b!54723))

(assert (= neg-inst!359 inst!371))

(assert (=> b!54714 d!45084))

(declare-fun b!54724 () Bool)

(declare-fun m!59328 () Bool)

(assert (=> b!54724 m!59328))

(declare-fun inst!372 () Bool)

(declare-fun x!21850 () (_ BitVec 32))

(assert (=> b!54724 (= inst!372 (=> true (or (not (member x!21850 (content!17 (left!1157 thiss!7690)))) (bvslt x!21850 (elem!227 thiss!7690)))))))

(declare-fun m!59330 () Bool)

(assert (=> b!54724 m!59330))

(declare-fun bs!26504 () Bool)

(assert (= bs!26504 (and b!54724 b!54720)))

(assert (=> (and bs!26504 (= (content!17 (left!1157 thiss!7690)) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (left!1157 thiss!7690)))) (= inst!372 inst!368)))

(declare-fun bs!26505 () Bool)

(assert (= bs!26505 (and b!54724 neg-inst!358)))

(assert (=> (and bs!26505 (= (content!17 (left!1157 thiss!7690)) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (right!1160 thiss!7690)))) (= inst!372 true)))

(declare-fun bs!26506 () Bool)

(assert (= bs!26506 (and b!54724 b!54722)))

(assert (=> (and bs!26506 (= (content!17 (left!1157 thiss!7690)) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (right!1160 thiss!7690)))) (= inst!372 inst!370)))

(declare-fun bs!26507 () Bool)

(assert (= bs!26507 (and b!54724 neg-inst!356)))

(assert (=> (and bs!26507 (= (content!17 (left!1157 thiss!7690)) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (left!1157 thiss!7690)))) (= inst!372 true)))

(declare-fun b!54725 () Bool)

(declare-fun m!59332 () Bool)

(assert (=> b!54725 m!59332))

(declare-fun inst!373 () Bool)

(declare-fun x!21851 () (_ BitVec 32))

(assert (=> b!54725 (= inst!373 (=> true (or (not (member x!21851 (content!17 (right!1160 thiss!7690)))) (bvslt (elem!227 thiss!7690) x!21851))))))

(declare-fun m!59334 () Bool)

(assert (=> b!54725 m!59334))

(declare-fun bs!26508 () Bool)

(assert (= bs!26508 (and b!54725 neg-inst!357)))

(assert (=> (and bs!26508 (= (content!17 (right!1160 thiss!7690)) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (left!1157 thiss!7690)))) (= inst!373 true)))

(declare-fun bs!26509 () Bool)

(assert (= bs!26509 (and b!54725 b!54721)))

(assert (=> (and bs!26509 (= (content!17 (right!1160 thiss!7690)) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (left!1157 thiss!7690)))) (= inst!373 inst!369)))

(declare-fun bs!26510 () Bool)

(assert (= bs!26510 (and b!54725 neg-inst!359)))

(assert (=> (and bs!26510 (= (content!17 (right!1160 thiss!7690)) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (right!1160 thiss!7690)))) (= inst!373 true)))

(declare-fun bs!26511 () Bool)

(assert (= bs!26511 (and b!54725 b!54723)))

(assert (=> (and bs!26511 (= (content!17 (right!1160 thiss!7690)) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (right!1160 thiss!7690)))) (= inst!373 inst!371)))

(declare-fun bs!26512 () Bool)

(declare-fun neg-inst!360 () Bool)

(assert (= bs!26512 neg-inst!360))

(assert (=> bs!26512 m!59328))

(declare-fun bs!26513 () Bool)

(declare-fun s!1509 () Bool)

(assert (= bs!26513 (and neg-inst!360 s!1509)))

(assert (=> bs!26513 (=> true (or (not (member x!21850 (content!17 (left!1157 thiss!7690)))) (bvslt x!21850 (elem!227 thiss!7690))))))

(assert (=> m!59330 s!1509))

(declare-fun bs!26514 () Bool)

(assert (= bs!26514 (and neg-inst!360 b!54720)))

(assert (=> (and bs!26514 (= (content!17 (left!1157 thiss!7690)) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (left!1157 thiss!7690)))) (= true inst!368)))

(declare-fun bs!26515 () Bool)

(assert (= bs!26515 (and neg-inst!360 b!54724)))

(assert (=> bs!26515 (= true inst!372)))

(declare-fun bs!26516 () Bool)

(assert (= bs!26516 (and neg-inst!360 neg-inst!358)))

(assert (=> (and bs!26516 (= (content!17 (left!1157 thiss!7690)) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (right!1160 thiss!7690)))) (= true true)))

(declare-fun bs!26517 () Bool)

(assert (= bs!26517 (and neg-inst!360 b!54722)))

(assert (=> (and bs!26517 (= (content!17 (left!1157 thiss!7690)) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (right!1160 thiss!7690)))) (= true inst!370)))

(declare-fun bs!26518 () Bool)

(assert (= bs!26518 (and neg-inst!360 neg-inst!356)))

(assert (=> (and bs!26518 (= (content!17 (left!1157 thiss!7690)) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (left!1157 thiss!7690)))) (= true true)))

(declare-fun bs!26519 () Bool)

(declare-fun neg-inst!361 () Bool)

(assert (= bs!26519 neg-inst!361))

(assert (=> bs!26519 m!59332))

(declare-fun bs!26520 () Bool)

(declare-fun s!1511 () Bool)

(assert (= bs!26520 (and neg-inst!361 s!1511)))

(assert (=> bs!26520 (=> true (or (not (member x!21851 (content!17 (right!1160 thiss!7690)))) (bvslt (elem!227 thiss!7690) x!21851)))))

(assert (=> m!59334 s!1511))

(declare-fun bs!26521 () Bool)

(assert (= bs!26521 (and neg-inst!361 neg-inst!357)))

(assert (=> (and bs!26521 (= (content!17 (right!1160 thiss!7690)) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (left!1157 thiss!7690)))) (= true true)))

(declare-fun bs!26522 () Bool)

(assert (= bs!26522 (and neg-inst!361 b!54721)))

(assert (=> (and bs!26522 (= (content!17 (right!1160 thiss!7690)) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (left!1157 thiss!7690)))) (= true inst!369)))

(declare-fun bs!26523 () Bool)

(assert (= bs!26523 (and neg-inst!361 neg-inst!359)))

(assert (=> (and bs!26523 (= (content!17 (right!1160 thiss!7690)) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (right!1160 thiss!7690)))) (= true true)))

(declare-fun bs!26524 () Bool)

(assert (= bs!26524 (and neg-inst!361 b!54725)))

(assert (=> bs!26524 (= true inst!373)))

(declare-fun bs!26525 () Bool)

(assert (= bs!26525 (and neg-inst!361 b!54723)))

(assert (=> (and bs!26525 (= (content!17 (right!1160 thiss!7690)) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 thiss!7690) (elem!227 (right!1160 thiss!7690)))) (= true inst!371)))

(declare-fun d!45086 () Bool)

(declare-fun res!25095 () Bool)

(declare-fun e!28753 () Bool)

(assert (=> d!45086 (=> res!25095 e!28753)))

(assert (=> d!45086 (= res!25095 (not (is-Node!127 thiss!7690)))))

(assert (=> d!45086 (= (inv!977 thiss!7690) e!28753)))

(declare-fun e!28752 () Bool)

(assert (=> b!54724 (= e!28753 e!28752)))

(declare-fun res!25094 () Bool)

(assert (=> b!54724 (=> (not res!25094) (not e!28752))))

(assert (=> b!54724 (= res!25094 inst!372)))

(assert (=> b!54725 (= e!28752 inst!373)))

(assert (= (and d!45086 (not res!25095)) b!54724))

(assert (= neg-inst!360 inst!372))

(assert (= (and b!54724 res!25094) b!54725))

(assert (= neg-inst!361 inst!373))

(assert (=> start!7644 d!45086))

(declare-fun b!54726 () Bool)

(declare-fun m!59336 () Bool)

(assert (=> b!54726 m!59336))

(declare-fun inst!374 () Bool)

(declare-fun x!21852 () (_ BitVec 32))

(assert (=> b!54726 (= inst!374 (=> true (or (not (member x!21852 (content!17 (left!1157 res!24725)))) (bvslt x!21852 (elem!227 res!24725)))))))

(declare-fun m!59338 () Bool)

(assert (=> b!54726 m!59338))

(declare-fun bs!26526 () Bool)

(assert (= bs!26526 (and b!54726 b!54720)))

(assert (=> (and bs!26526 (= (content!17 (left!1157 res!24725)) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (left!1157 thiss!7690)))) (= inst!374 inst!368)))

(declare-fun bs!26527 () Bool)

(assert (= bs!26527 (and b!54726 neg-inst!360)))

(assert (=> (and bs!26527 (= (content!17 (left!1157 res!24725)) (content!17 (left!1157 thiss!7690))) (= (elem!227 res!24725) (elem!227 thiss!7690))) (= inst!374 true)))

(declare-fun bs!26528 () Bool)

(assert (= bs!26528 (and b!54726 b!54724)))

(assert (=> (and bs!26528 (= (content!17 (left!1157 res!24725)) (content!17 (left!1157 thiss!7690))) (= (elem!227 res!24725) (elem!227 thiss!7690))) (= inst!374 inst!372)))

(declare-fun bs!26529 () Bool)

(assert (= bs!26529 (and b!54726 neg-inst!358)))

(assert (=> (and bs!26529 (= (content!17 (left!1157 res!24725)) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (right!1160 thiss!7690)))) (= inst!374 true)))

(declare-fun bs!26530 () Bool)

(assert (= bs!26530 (and b!54726 b!54722)))

(assert (=> (and bs!26530 (= (content!17 (left!1157 res!24725)) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (right!1160 thiss!7690)))) (= inst!374 inst!370)))

(declare-fun bs!26531 () Bool)

(assert (= bs!26531 (and b!54726 neg-inst!356)))

(assert (=> (and bs!26531 (= (content!17 (left!1157 res!24725)) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (left!1157 thiss!7690)))) (= inst!374 true)))

(declare-fun b!54727 () Bool)

(declare-fun m!59340 () Bool)

(assert (=> b!54727 m!59340))

(declare-fun inst!375 () Bool)

(declare-fun x!21853 () (_ BitVec 32))

(assert (=> b!54727 (= inst!375 (=> true (or (not (member x!21853 (content!17 (right!1160 res!24725)))) (bvslt (elem!227 res!24725) x!21853))))))

(declare-fun m!59342 () Bool)

(assert (=> b!54727 m!59342))

(declare-fun bs!26532 () Bool)

(assert (= bs!26532 (and b!54727 neg-inst!357)))

(assert (=> (and bs!26532 (= (content!17 (right!1160 res!24725)) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (left!1157 thiss!7690)))) (= inst!375 true)))

(declare-fun bs!26533 () Bool)

(assert (= bs!26533 (and b!54727 b!54721)))

(assert (=> (and bs!26533 (= (content!17 (right!1160 res!24725)) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (left!1157 thiss!7690)))) (= inst!375 inst!369)))

(declare-fun bs!26534 () Bool)

(assert (= bs!26534 (and b!54727 neg-inst!359)))

(assert (=> (and bs!26534 (= (content!17 (right!1160 res!24725)) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (right!1160 thiss!7690)))) (= inst!375 true)))

(declare-fun bs!26535 () Bool)

(assert (= bs!26535 (and b!54727 neg-inst!361)))

(assert (=> (and bs!26535 (= (content!17 (right!1160 res!24725)) (content!17 (right!1160 thiss!7690))) (= (elem!227 res!24725) (elem!227 thiss!7690))) (= inst!375 true)))

(declare-fun bs!26536 () Bool)

(assert (= bs!26536 (and b!54727 b!54725)))

(assert (=> (and bs!26536 (= (content!17 (right!1160 res!24725)) (content!17 (right!1160 thiss!7690))) (= (elem!227 res!24725) (elem!227 thiss!7690))) (= inst!375 inst!373)))

(declare-fun bs!26537 () Bool)

(assert (= bs!26537 (and b!54727 b!54723)))

(assert (=> (and bs!26537 (= (content!17 (right!1160 res!24725)) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (right!1160 thiss!7690)))) (= inst!375 inst!371)))

(declare-fun bs!26538 () Bool)

(declare-fun neg-inst!362 () Bool)

(assert (= bs!26538 neg-inst!362))

(assert (=> bs!26538 m!59336))

(declare-fun bs!26539 () Bool)

(declare-fun s!1513 () Bool)

(assert (= bs!26539 (and neg-inst!362 s!1513)))

(assert (=> bs!26539 (=> true (or (not (member x!21852 (content!17 (left!1157 res!24725)))) (bvslt x!21852 (elem!227 res!24725))))))

(assert (=> m!59338 s!1513))

(declare-fun bs!26540 () Bool)

(assert (= bs!26540 (and neg-inst!362 b!54720)))

(assert (=> (and bs!26540 (= (content!17 (left!1157 res!24725)) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (left!1157 thiss!7690)))) (= true inst!368)))

(declare-fun bs!26541 () Bool)

(assert (= bs!26541 (and neg-inst!362 b!54726)))

(assert (=> bs!26541 (= true inst!374)))

(declare-fun bs!26542 () Bool)

(assert (= bs!26542 (and neg-inst!362 neg-inst!360)))

(assert (=> (and bs!26542 (= (content!17 (left!1157 res!24725)) (content!17 (left!1157 thiss!7690))) (= (elem!227 res!24725) (elem!227 thiss!7690))) (= true true)))

(declare-fun bs!26543 () Bool)

(assert (= bs!26543 (and neg-inst!362 neg-inst!358)))

(assert (=> (and bs!26543 (= (content!17 (left!1157 res!24725)) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (right!1160 thiss!7690)))) (= true true)))

(declare-fun bs!26544 () Bool)

(assert (= bs!26544 (and neg-inst!362 b!54724)))

(assert (=> (and bs!26544 (= (content!17 (left!1157 res!24725)) (content!17 (left!1157 thiss!7690))) (= (elem!227 res!24725) (elem!227 thiss!7690))) (= true inst!372)))

(declare-fun bs!26545 () Bool)

(assert (= bs!26545 (and neg-inst!362 b!54722)))

(assert (=> (and bs!26545 (= (content!17 (left!1157 res!24725)) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (right!1160 thiss!7690)))) (= true inst!370)))

(declare-fun bs!26546 () Bool)

(assert (= bs!26546 (and neg-inst!362 neg-inst!356)))

(assert (=> (and bs!26546 (= (content!17 (left!1157 res!24725)) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (left!1157 thiss!7690)))) (= true true)))

(declare-fun bs!26547 () Bool)

(declare-fun neg-inst!363 () Bool)

(assert (= bs!26547 neg-inst!363))

(assert (=> bs!26547 m!59340))

(declare-fun bs!26548 () Bool)

(declare-fun s!1515 () Bool)

(assert (= bs!26548 (and neg-inst!363 s!1515)))

(assert (=> bs!26548 (=> true (or (not (member x!21853 (content!17 (right!1160 res!24725)))) (bvslt (elem!227 res!24725) x!21853)))))

(assert (=> m!59342 s!1515))

(declare-fun bs!26549 () Bool)

(assert (= bs!26549 (and neg-inst!363 neg-inst!357)))

(assert (=> (and bs!26549 (= (content!17 (right!1160 res!24725)) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (left!1157 thiss!7690)))) (= true true)))

(declare-fun bs!26550 () Bool)

(assert (= bs!26550 (and neg-inst!363 b!54727)))

(assert (=> bs!26550 (= true inst!375)))

(declare-fun bs!26551 () Bool)

(assert (= bs!26551 (and neg-inst!363 b!54721)))

(assert (=> (and bs!26551 (= (content!17 (right!1160 res!24725)) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (left!1157 thiss!7690)))) (= true inst!369)))

(declare-fun bs!26552 () Bool)

(assert (= bs!26552 (and neg-inst!363 neg-inst!359)))

(assert (=> (and bs!26552 (= (content!17 (right!1160 res!24725)) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (right!1160 thiss!7690)))) (= true true)))

(declare-fun bs!26553 () Bool)

(assert (= bs!26553 (and neg-inst!363 neg-inst!361)))

(assert (=> (and bs!26553 (= (content!17 (right!1160 res!24725)) (content!17 (right!1160 thiss!7690))) (= (elem!227 res!24725) (elem!227 thiss!7690))) (= true true)))

(declare-fun bs!26554 () Bool)

(assert (= bs!26554 (and neg-inst!363 b!54725)))

(assert (=> (and bs!26554 (= (content!17 (right!1160 res!24725)) (content!17 (right!1160 thiss!7690))) (= (elem!227 res!24725) (elem!227 thiss!7690))) (= true inst!373)))

(declare-fun bs!26555 () Bool)

(assert (= bs!26555 (and neg-inst!363 b!54723)))

(assert (=> (and bs!26555 (= (content!17 (right!1160 res!24725)) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 res!24725) (elem!227 (right!1160 thiss!7690)))) (= true inst!371)))

(declare-fun d!45088 () Bool)

(declare-fun res!25097 () Bool)

(declare-fun e!28755 () Bool)

(assert (=> d!45088 (=> res!25097 e!28755)))

(assert (=> d!45088 (= res!25097 (not (is-Node!127 res!24725)))))

(assert (=> d!45088 (= (inv!977 res!24725) e!28755)))

(declare-fun e!28754 () Bool)

(assert (=> b!54726 (= e!28755 e!28754)))

(declare-fun res!25096 () Bool)

(assert (=> b!54726 (=> (not res!25096) (not e!28754))))

(assert (=> b!54726 (= res!25096 inst!374)))

(assert (=> b!54727 (= e!28754 inst!375)))

(assert (= (and d!45088 (not res!25097)) b!54726))

(assert (= neg-inst!362 inst!374))

(assert (= (and b!54726 res!25096) b!54727))

(assert (= neg-inst!363 inst!375))

(assert (=> start!7644 d!45088))

(declare-fun b!54728 () Bool)

(declare-fun m!59344 () Bool)

(assert (=> b!54728 m!59344))

(declare-fun inst!376 () Bool)

(declare-fun x!21854 () (_ BitVec 32))

(assert (=> b!54728 (= inst!376 (=> true (or (not (member x!21854 (content!17 (left!1157 (left!1157 res!24725))))) (bvslt x!21854 (elem!227 (left!1157 res!24725))))))))

(declare-fun m!59346 () Bool)

(assert (=> b!54728 m!59346))

(declare-fun bs!26556 () Bool)

(assert (= bs!26556 (and b!54728 b!54720)))

(assert (=> (and bs!26556 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= inst!376 inst!368)))

(declare-fun bs!26557 () Bool)

(assert (= bs!26557 (and b!54728 neg-inst!362)))

(assert (=> (and bs!26557 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 res!24725))) (= (elem!227 (left!1157 res!24725)) (elem!227 res!24725))) (= inst!376 true)))

(declare-fun bs!26558 () Bool)

(assert (= bs!26558 (and b!54728 b!54726)))

(assert (=> (and bs!26558 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 res!24725))) (= (elem!227 (left!1157 res!24725)) (elem!227 res!24725))) (= inst!376 inst!374)))

(declare-fun bs!26559 () Bool)

(assert (= bs!26559 (and b!54728 neg-inst!360)))

(assert (=> (and bs!26559 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 thiss!7690))) (= (elem!227 (left!1157 res!24725)) (elem!227 thiss!7690))) (= inst!376 true)))

(declare-fun bs!26560 () Bool)

(assert (= bs!26560 (and b!54728 neg-inst!358)))

(assert (=> (and bs!26560 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= inst!376 true)))

(declare-fun bs!26561 () Bool)

(assert (= bs!26561 (and b!54728 b!54724)))

(assert (=> (and bs!26561 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 thiss!7690))) (= (elem!227 (left!1157 res!24725)) (elem!227 thiss!7690))) (= inst!376 inst!372)))

(declare-fun bs!26562 () Bool)

(assert (= bs!26562 (and b!54728 b!54722)))

(assert (=> (and bs!26562 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= inst!376 inst!370)))

(declare-fun bs!26563 () Bool)

(assert (= bs!26563 (and b!54728 neg-inst!356)))

(assert (=> (and bs!26563 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= inst!376 true)))

(declare-fun b!54729 () Bool)

(declare-fun m!59348 () Bool)

(assert (=> b!54729 m!59348))

(declare-fun inst!377 () Bool)

(declare-fun x!21855 () (_ BitVec 32))

(assert (=> b!54729 (= inst!377 (=> true (or (not (member x!21855 (content!17 (right!1160 (left!1157 res!24725))))) (bvslt (elem!227 (left!1157 res!24725)) x!21855))))))

(declare-fun m!59350 () Bool)

(assert (=> b!54729 m!59350))

(declare-fun bs!26564 () Bool)

(assert (= bs!26564 (and b!54729 neg-inst!357)))

(assert (=> (and bs!26564 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= inst!377 true)))

(declare-fun bs!26565 () Bool)

(assert (= bs!26565 (and b!54729 neg-inst!363)))

(assert (=> (and bs!26565 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 res!24725))) (= (elem!227 (left!1157 res!24725)) (elem!227 res!24725))) (= inst!377 true)))

(declare-fun bs!26566 () Bool)

(assert (= bs!26566 (and b!54729 b!54727)))

(assert (=> (and bs!26566 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 res!24725))) (= (elem!227 (left!1157 res!24725)) (elem!227 res!24725))) (= inst!377 inst!375)))

(declare-fun bs!26567 () Bool)

(assert (= bs!26567 (and b!54729 b!54721)))

(assert (=> (and bs!26567 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= inst!377 inst!369)))

(declare-fun bs!26568 () Bool)

(assert (= bs!26568 (and b!54729 neg-inst!359)))

(assert (=> (and bs!26568 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= inst!377 true)))

(declare-fun bs!26569 () Bool)

(assert (= bs!26569 (and b!54729 neg-inst!361)))

(assert (=> (and bs!26569 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 thiss!7690))) (= (elem!227 (left!1157 res!24725)) (elem!227 thiss!7690))) (= inst!377 true)))

(declare-fun bs!26570 () Bool)

(assert (= bs!26570 (and b!54729 b!54725)))

(assert (=> (and bs!26570 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 thiss!7690))) (= (elem!227 (left!1157 res!24725)) (elem!227 thiss!7690))) (= inst!377 inst!373)))

(declare-fun bs!26571 () Bool)

(assert (= bs!26571 (and b!54729 b!54723)))

(assert (=> (and bs!26571 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= inst!377 inst!371)))

(declare-fun bs!26572 () Bool)

(declare-fun neg-inst!364 () Bool)

(assert (= bs!26572 neg-inst!364))

(assert (=> bs!26572 m!59344))

(declare-fun bs!26573 () Bool)

(declare-fun s!1517 () Bool)

(assert (= bs!26573 (and neg-inst!364 s!1517)))

(assert (=> bs!26573 (=> true (or (not (member x!21854 (content!17 (left!1157 (left!1157 res!24725))))) (bvslt x!21854 (elem!227 (left!1157 res!24725)))))))

(assert (=> m!59346 s!1517))

(declare-fun bs!26574 () Bool)

(assert (= bs!26574 (and neg-inst!364 b!54720)))

(assert (=> (and bs!26574 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= true inst!368)))

(declare-fun bs!26575 () Bool)

(assert (= bs!26575 (and neg-inst!364 neg-inst!362)))

(assert (=> (and bs!26575 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 res!24725))) (= (elem!227 (left!1157 res!24725)) (elem!227 res!24725))) (= true true)))

(declare-fun bs!26576 () Bool)

(assert (= bs!26576 (and neg-inst!364 b!54728)))

(assert (=> bs!26576 (= true inst!376)))

(declare-fun bs!26577 () Bool)

(assert (= bs!26577 (and neg-inst!364 b!54726)))

(assert (=> (and bs!26577 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 res!24725))) (= (elem!227 (left!1157 res!24725)) (elem!227 res!24725))) (= true inst!374)))

(declare-fun bs!26578 () Bool)

(assert (= bs!26578 (and neg-inst!364 neg-inst!360)))

(assert (=> (and bs!26578 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 thiss!7690))) (= (elem!227 (left!1157 res!24725)) (elem!227 thiss!7690))) (= true true)))

(declare-fun bs!26579 () Bool)

(assert (= bs!26579 (and neg-inst!364 neg-inst!358)))

(assert (=> (and bs!26579 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= true true)))

(declare-fun bs!26580 () Bool)

(assert (= bs!26580 (and neg-inst!364 b!54724)))

(assert (=> (and bs!26580 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 thiss!7690))) (= (elem!227 (left!1157 res!24725)) (elem!227 thiss!7690))) (= true inst!372)))

(declare-fun bs!26581 () Bool)

(assert (= bs!26581 (and neg-inst!364 b!54722)))

(assert (=> (and bs!26581 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= true inst!370)))

(declare-fun bs!26582 () Bool)

(assert (= bs!26582 (and neg-inst!364 neg-inst!356)))

(assert (=> (and bs!26582 (= (content!17 (left!1157 (left!1157 res!24725))) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= true true)))

(declare-fun bs!26583 () Bool)

(declare-fun neg-inst!365 () Bool)

(assert (= bs!26583 neg-inst!365))

(assert (=> bs!26583 m!59348))

(declare-fun bs!26584 () Bool)

(declare-fun s!1519 () Bool)

(assert (= bs!26584 (and neg-inst!365 s!1519)))

(assert (=> bs!26584 (=> true (or (not (member x!21855 (content!17 (right!1160 (left!1157 res!24725))))) (bvslt (elem!227 (left!1157 res!24725)) x!21855)))))

(assert (=> m!59350 s!1519))

(declare-fun bs!26585 () Bool)

(assert (= bs!26585 (and neg-inst!365 neg-inst!357)))

(assert (=> (and bs!26585 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= true true)))

(declare-fun bs!26586 () Bool)

(assert (= bs!26586 (and neg-inst!365 neg-inst!363)))

(assert (=> (and bs!26586 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 res!24725))) (= (elem!227 (left!1157 res!24725)) (elem!227 res!24725))) (= true true)))

(declare-fun bs!26587 () Bool)

(assert (= bs!26587 (and neg-inst!365 b!54727)))

(assert (=> (and bs!26587 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 res!24725))) (= (elem!227 (left!1157 res!24725)) (elem!227 res!24725))) (= true inst!375)))

(declare-fun bs!26588 () Bool)

(assert (= bs!26588 (and neg-inst!365 b!54729)))

(assert (=> bs!26588 (= true inst!377)))

(declare-fun bs!26589 () Bool)

(assert (= bs!26589 (and neg-inst!365 b!54721)))

(assert (=> (and bs!26589 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= true inst!369)))

(declare-fun bs!26590 () Bool)

(assert (= bs!26590 (and neg-inst!365 neg-inst!359)))

(assert (=> (and bs!26590 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= true true)))

(declare-fun bs!26591 () Bool)

(assert (= bs!26591 (and neg-inst!365 neg-inst!361)))

(assert (=> (and bs!26591 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 thiss!7690))) (= (elem!227 (left!1157 res!24725)) (elem!227 thiss!7690))) (= true true)))

(declare-fun bs!26592 () Bool)

(assert (= bs!26592 (and neg-inst!365 b!54725)))

(assert (=> (and bs!26592 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 thiss!7690))) (= (elem!227 (left!1157 res!24725)) (elem!227 thiss!7690))) (= true inst!373)))

(declare-fun bs!26593 () Bool)

(assert (= bs!26593 (and neg-inst!365 b!54723)))

(assert (=> (and bs!26593 (= (content!17 (right!1160 (left!1157 res!24725))) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 (left!1157 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= true inst!371)))

(declare-fun d!45090 () Bool)

(declare-fun res!25099 () Bool)

(declare-fun e!28757 () Bool)

(assert (=> d!45090 (=> res!25099 e!28757)))

(assert (=> d!45090 (= res!25099 (not (is-Node!127 (left!1157 res!24725))))))

(assert (=> d!45090 (= (inv!977 (left!1157 res!24725)) e!28757)))

(declare-fun e!28756 () Bool)

(assert (=> b!54728 (= e!28757 e!28756)))

(declare-fun res!25098 () Bool)

(assert (=> b!54728 (=> (not res!25098) (not e!28756))))

(assert (=> b!54728 (= res!25098 inst!376)))

(assert (=> b!54729 (= e!28756 inst!377)))

(assert (= (and d!45090 (not res!25099)) b!54728))

(assert (= neg-inst!364 inst!376))

(assert (= (and b!54728 res!25098) b!54729))

(assert (= neg-inst!365 inst!377))

(assert (=> b!54715 d!45090))

(declare-fun b!54730 () Bool)

(declare-fun m!59352 () Bool)

(assert (=> b!54730 m!59352))

(declare-fun inst!378 () Bool)

(declare-fun x!21856 () (_ BitVec 32))

(assert (=> b!54730 (= inst!378 (=> true (or (not (member x!21856 (content!17 (left!1157 (right!1160 res!24725))))) (bvslt x!21856 (elem!227 (right!1160 res!24725))))))))

(declare-fun m!59354 () Bool)

(assert (=> b!54730 m!59354))

(declare-fun bs!26594 () Bool)

(assert (= bs!26594 (and b!54730 neg-inst!364)))

(assert (=> (and bs!26594 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 (left!1157 res!24725)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 res!24725)))) (= inst!378 true)))

(declare-fun bs!26595 () Bool)

(assert (= bs!26595 (and b!54730 b!54720)))

(assert (=> (and bs!26595 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= inst!378 inst!368)))

(declare-fun bs!26596 () Bool)

(assert (= bs!26596 (and b!54730 neg-inst!362)))

(assert (=> (and bs!26596 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 res!24725))) (= (elem!227 (right!1160 res!24725)) (elem!227 res!24725))) (= inst!378 true)))

(declare-fun bs!26597 () Bool)

(assert (= bs!26597 (and b!54730 b!54728)))

(assert (=> (and bs!26597 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 (left!1157 res!24725)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 res!24725)))) (= inst!378 inst!376)))

(declare-fun bs!26598 () Bool)

(assert (= bs!26598 (and b!54730 b!54726)))

(assert (=> (and bs!26598 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 res!24725))) (= (elem!227 (right!1160 res!24725)) (elem!227 res!24725))) (= inst!378 inst!374)))

(declare-fun bs!26599 () Bool)

(assert (= bs!26599 (and b!54730 neg-inst!360)))

(assert (=> (and bs!26599 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 thiss!7690))) (= (elem!227 (right!1160 res!24725)) (elem!227 thiss!7690))) (= inst!378 true)))

(declare-fun bs!26600 () Bool)

(assert (= bs!26600 (and b!54730 neg-inst!358)))

(assert (=> (and bs!26600 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= inst!378 true)))

(declare-fun bs!26601 () Bool)

(assert (= bs!26601 (and b!54730 b!54724)))

(assert (=> (and bs!26601 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 thiss!7690))) (= (elem!227 (right!1160 res!24725)) (elem!227 thiss!7690))) (= inst!378 inst!372)))

(declare-fun bs!26602 () Bool)

(assert (= bs!26602 (and b!54730 b!54722)))

(assert (=> (and bs!26602 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= inst!378 inst!370)))

(declare-fun bs!26603 () Bool)

(assert (= bs!26603 (and b!54730 neg-inst!356)))

(assert (=> (and bs!26603 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= inst!378 true)))

(declare-fun b!54731 () Bool)

(declare-fun m!59356 () Bool)

(assert (=> b!54731 m!59356))

(declare-fun inst!379 () Bool)

(declare-fun x!21857 () (_ BitVec 32))

(assert (=> b!54731 (= inst!379 (=> true (or (not (member x!21857 (content!17 (right!1160 (right!1160 res!24725))))) (bvslt (elem!227 (right!1160 res!24725)) x!21857))))))

(declare-fun m!59358 () Bool)

(assert (=> b!54731 m!59358))

(declare-fun bs!26604 () Bool)

(assert (= bs!26604 (and b!54731 neg-inst!357)))

(assert (=> (and bs!26604 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= inst!379 true)))

(declare-fun bs!26605 () Bool)

(assert (= bs!26605 (and b!54731 neg-inst!363)))

(assert (=> (and bs!26605 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 res!24725))) (= (elem!227 (right!1160 res!24725)) (elem!227 res!24725))) (= inst!379 true)))

(declare-fun bs!26606 () Bool)

(assert (= bs!26606 (and b!54731 b!54727)))

(assert (=> (and bs!26606 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 res!24725))) (= (elem!227 (right!1160 res!24725)) (elem!227 res!24725))) (= inst!379 inst!375)))

(declare-fun bs!26607 () Bool)

(assert (= bs!26607 (and b!54731 b!54729)))

(assert (=> (and bs!26607 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 (left!1157 res!24725)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 res!24725)))) (= inst!379 inst!377)))

(declare-fun bs!26608 () Bool)

(assert (= bs!26608 (and b!54731 b!54721)))

(assert (=> (and bs!26608 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= inst!379 inst!369)))

(declare-fun bs!26609 () Bool)

(assert (= bs!26609 (and b!54731 neg-inst!359)))

(assert (=> (and bs!26609 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= inst!379 true)))

(declare-fun bs!26610 () Bool)

(assert (= bs!26610 (and b!54731 neg-inst!361)))

(assert (=> (and bs!26610 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 thiss!7690))) (= (elem!227 (right!1160 res!24725)) (elem!227 thiss!7690))) (= inst!379 true)))

(declare-fun bs!26611 () Bool)

(assert (= bs!26611 (and b!54731 neg-inst!365)))

(assert (=> (and bs!26611 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 (left!1157 res!24725)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 res!24725)))) (= inst!379 true)))

(declare-fun bs!26612 () Bool)

(assert (= bs!26612 (and b!54731 b!54725)))

(assert (=> (and bs!26612 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 thiss!7690))) (= (elem!227 (right!1160 res!24725)) (elem!227 thiss!7690))) (= inst!379 inst!373)))

(declare-fun bs!26613 () Bool)

(assert (= bs!26613 (and b!54731 b!54723)))

(assert (=> (and bs!26613 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= inst!379 inst!371)))

(declare-fun bs!26614 () Bool)

(declare-fun neg-inst!366 () Bool)

(assert (= bs!26614 neg-inst!366))

(assert (=> bs!26614 m!59352))

(declare-fun bs!26615 () Bool)

(declare-fun s!1521 () Bool)

(assert (= bs!26615 (and neg-inst!366 s!1521)))

(assert (=> bs!26615 (=> true (or (not (member x!21856 (content!17 (left!1157 (right!1160 res!24725))))) (bvslt x!21856 (elem!227 (right!1160 res!24725)))))))

(assert (=> m!59354 s!1521))

(declare-fun bs!26616 () Bool)

(assert (= bs!26616 (and neg-inst!366 neg-inst!364)))

(assert (=> (and bs!26616 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 (left!1157 res!24725)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 res!24725)))) (= true true)))

(declare-fun bs!26617 () Bool)

(assert (= bs!26617 (and neg-inst!366 b!54720)))

(assert (=> (and bs!26617 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= true inst!368)))

(declare-fun bs!26618 () Bool)

(assert (= bs!26618 (and neg-inst!366 neg-inst!362)))

(assert (=> (and bs!26618 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 res!24725))) (= (elem!227 (right!1160 res!24725)) (elem!227 res!24725))) (= true true)))

(declare-fun bs!26619 () Bool)

(assert (= bs!26619 (and neg-inst!366 b!54728)))

(assert (=> (and bs!26619 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 (left!1157 res!24725)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 res!24725)))) (= true inst!376)))

(declare-fun bs!26620 () Bool)

(assert (= bs!26620 (and neg-inst!366 b!54726)))

(assert (=> (and bs!26620 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 res!24725))) (= (elem!227 (right!1160 res!24725)) (elem!227 res!24725))) (= true inst!374)))

(declare-fun bs!26621 () Bool)

(assert (= bs!26621 (and neg-inst!366 neg-inst!360)))

(assert (=> (and bs!26621 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 thiss!7690))) (= (elem!227 (right!1160 res!24725)) (elem!227 thiss!7690))) (= true true)))

(declare-fun bs!26622 () Bool)

(assert (= bs!26622 (and neg-inst!366 neg-inst!358)))

(assert (=> (and bs!26622 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= true true)))

(declare-fun bs!26623 () Bool)

(assert (= bs!26623 (and neg-inst!366 b!54724)))

(assert (=> (and bs!26623 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 thiss!7690))) (= (elem!227 (right!1160 res!24725)) (elem!227 thiss!7690))) (= true inst!372)))

(declare-fun bs!26624 () Bool)

(assert (= bs!26624 (and neg-inst!366 b!54730)))

(assert (=> bs!26624 (= true inst!378)))

(declare-fun bs!26625 () Bool)

(assert (= bs!26625 (and neg-inst!366 b!54722)))

(assert (=> (and bs!26625 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 (right!1160 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= true inst!370)))

(declare-fun bs!26626 () Bool)

(assert (= bs!26626 (and neg-inst!366 neg-inst!356)))

(assert (=> (and bs!26626 (= (content!17 (left!1157 (right!1160 res!24725))) (content!17 (left!1157 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= true true)))

(declare-fun bs!26627 () Bool)

(declare-fun neg-inst!367 () Bool)

(assert (= bs!26627 neg-inst!367))

(assert (=> bs!26627 m!59356))

(declare-fun bs!26628 () Bool)

(declare-fun s!1523 () Bool)

(assert (= bs!26628 (and neg-inst!367 s!1523)))

(assert (=> bs!26628 (=> true (or (not (member x!21857 (content!17 (right!1160 (right!1160 res!24725))))) (bvslt (elem!227 (right!1160 res!24725)) x!21857)))))

(assert (=> m!59358 s!1523))

(declare-fun bs!26629 () Bool)

(assert (= bs!26629 (and neg-inst!367 neg-inst!357)))

(assert (=> (and bs!26629 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= true true)))

(declare-fun bs!26630 () Bool)

(assert (= bs!26630 (and neg-inst!367 neg-inst!363)))

(assert (=> (and bs!26630 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 res!24725))) (= (elem!227 (right!1160 res!24725)) (elem!227 res!24725))) (= true true)))

(declare-fun bs!26631 () Bool)

(assert (= bs!26631 (and neg-inst!367 b!54727)))

(assert (=> (and bs!26631 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 res!24725))) (= (elem!227 (right!1160 res!24725)) (elem!227 res!24725))) (= true inst!375)))

(declare-fun bs!26632 () Bool)

(assert (= bs!26632 (and neg-inst!367 b!54729)))

(assert (=> (and bs!26632 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 (left!1157 res!24725)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 res!24725)))) (= true inst!377)))

(declare-fun bs!26633 () Bool)

(assert (= bs!26633 (and neg-inst!367 b!54721)))

(assert (=> (and bs!26633 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 (left!1157 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 thiss!7690)))) (= true inst!369)))

(declare-fun bs!26634 () Bool)

(assert (= bs!26634 (and neg-inst!367 neg-inst!359)))

(assert (=> (and bs!26634 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= true true)))

(declare-fun bs!26635 () Bool)

(assert (= bs!26635 (and neg-inst!367 neg-inst!361)))

(assert (=> (and bs!26635 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 thiss!7690))) (= (elem!227 (right!1160 res!24725)) (elem!227 thiss!7690))) (= true true)))

(declare-fun bs!26636 () Bool)

(assert (= bs!26636 (and neg-inst!367 neg-inst!365)))

(assert (=> (and bs!26636 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 (left!1157 res!24725)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (left!1157 res!24725)))) (= true true)))

(declare-fun bs!26637 () Bool)

(assert (= bs!26637 (and neg-inst!367 b!54731)))

(assert (=> bs!26637 (= true inst!379)))

(declare-fun bs!26638 () Bool)

(assert (= bs!26638 (and neg-inst!367 b!54725)))

(assert (=> (and bs!26638 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 thiss!7690))) (= (elem!227 (right!1160 res!24725)) (elem!227 thiss!7690))) (= true inst!373)))

(declare-fun bs!26639 () Bool)

(assert (= bs!26639 (and neg-inst!367 b!54723)))

(assert (=> (and bs!26639 (= (content!17 (right!1160 (right!1160 res!24725))) (content!17 (right!1160 (right!1160 thiss!7690)))) (= (elem!227 (right!1160 res!24725)) (elem!227 (right!1160 thiss!7690)))) (= true inst!371)))

(declare-fun d!45092 () Bool)

(declare-fun res!25101 () Bool)

(declare-fun e!28759 () Bool)

(assert (=> d!45092 (=> res!25101 e!28759)))

(assert (=> d!45092 (= res!25101 (not (is-Node!127 (right!1160 res!24725))))))

(assert (=> d!45092 (= (inv!977 (right!1160 res!24725)) e!28759)))

(declare-fun e!28758 () Bool)

(assert (=> b!54730 (= e!28759 e!28758)))

(declare-fun res!25100 () Bool)

(assert (=> b!54730 (=> (not res!25100) (not e!28758))))

(assert (=> b!54730 (= res!25100 inst!378)))

(assert (=> b!54731 (= e!28758 inst!379)))

(assert (= (and d!45092 (not res!25101)) b!54730))

(assert (= neg-inst!366 inst!378))

(assert (= (and b!54730 res!25100) b!54731))

(assert (= neg-inst!367 inst!379))

(assert (=> b!54715 d!45092))

(declare-fun d!45094 () Bool)

(declare-fun lt!9623 () IntSet!41)

(assert (=> d!45094 (= (content!17 lt!9623) (union (content!17 (left!1157 thiss!7690)) (insert x!21411 (as emptyset (Set (_ BitVec 32))))))))

(declare-fun e!28767 () IntSet!41)

(assert (=> d!45094 (= lt!9623 e!28767)))

(declare-fun c!11872 () Bool)

(assert (=> d!45094 (= c!11872 (is-Empty!166 (left!1157 thiss!7690)))))

(assert (=> d!45094 (= (incl!2 (left!1157 thiss!7690) x!21411) lt!9623)))

(declare-fun lt!9625 () Bool)

(declare-fun b!54742 () Bool)

(declare-fun e!28768 () IntSet!41)

(assert (=> b!54742 (= e!28768 (incl!2 (ite lt!9625 (left!1157 (left!1157 thiss!7690)) (right!1160 (left!1157 thiss!7690))) x!21411))))

(declare-fun b!54743 () Bool)

(assert (=> b!54743 (= e!28767 (Node!127 Empty!166 x!21411 Empty!166))))

(declare-fun b!54744 () Bool)

(declare-fun res!25108 () IntSet!41)

(assert (=> b!54744 (= e!28768 res!25108)))

(assert (=> b!54744 true))

(declare-fun e!28766 () Bool)

(assert (=> b!54744 (and (inv!977 res!25108) e!28766)))

(declare-fun lt!9624 () IntSet!41)

(declare-fun b!54745 () Bool)

(assert (=> b!54745 (= e!28767 (ite lt!9625 (Node!127 lt!9624 (elem!227 (left!1157 thiss!7690)) (right!1160 (left!1157 thiss!7690))) (ite (bvsgt x!21411 (elem!227 (left!1157 thiss!7690))) (Node!127 (left!1157 (left!1157 thiss!7690)) (elem!227 (left!1157 thiss!7690)) lt!9624) (left!1157 thiss!7690))))))

(assert (=> b!54745 (= lt!9624 e!28768)))

(declare-fun c!11873 () Bool)

(assert (=> b!54745 (= c!11873 (or lt!9625 (bvsgt x!21411 (elem!227 (left!1157 thiss!7690)))))))

(assert (=> b!54745 (= lt!9625 (bvslt x!21411 (elem!227 (left!1157 thiss!7690))))))

(declare-fun tp!15492 () Bool)

(declare-fun b!54746 () Bool)

(declare-fun tp!15491 () Bool)

(assert (=> b!54746 (= e!28766 (and (inv!977 (left!1157 res!25108)) tp!15491 (inv!977 (right!1160 res!25108)) tp!15492))))

(assert (= (and b!54744 (is-Node!127 res!25108)) b!54746))

(assert (= (and b!54745 c!11873) b!54742))

(assert (= (and b!54745 (not c!11873)) b!54744))

(assert (= (and d!45094 c!11872) b!54743))

(assert (= (and d!45094 (not c!11872)) b!54745))

(declare-fun m!59360 () Bool)

(assert (=> d!45094 m!59360))

(assert (=> d!45094 m!59328))

(assert (=> d!45094 m!59300))

(declare-fun m!59362 () Bool)

(assert (=> b!54742 m!59362))

(declare-fun m!59364 () Bool)

(assert (=> b!54744 m!59364))

(declare-fun m!59366 () Bool)

(assert (=> b!54746 m!59366))

(declare-fun m!59368 () Bool)

(assert (=> b!54746 m!59368))

(assert (=> b!54712 d!45094))

(declare-fun d!45096 () Bool)

(declare-fun c!11876 () Bool)

(assert (=> d!45096 (= c!11876 (is-Empty!166 res!24725))))

(declare-fun e!28771 () (Set (_ BitVec 32)))

(assert (=> d!45096 (= (content!17 res!24725) e!28771)))

(declare-fun b!54751 () Bool)

(assert (=> b!54751 (= e!28771 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54752 () Bool)

(assert (=> b!54752 (= e!28771 (union (union (content!17 (left!1157 res!24725)) (insert (elem!227 res!24725) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1160 res!24725))))))

(assert (= (and d!45096 c!11876) b!54751))

(assert (= (and d!45096 (not c!11876)) b!54752))

(assert (=> b!54752 m!59336))

(declare-fun m!59370 () Bool)

(assert (=> b!54752 m!59370))

(assert (=> b!54752 m!59340))

(assert (=> b!54713 d!45096))

(declare-fun d!45098 () Bool)

(declare-fun c!11877 () Bool)

(assert (=> d!45098 (= c!11877 (is-Empty!166 thiss!7690))))

(declare-fun e!28772 () (Set (_ BitVec 32)))

(assert (=> d!45098 (= (content!17 thiss!7690) e!28772)))

(declare-fun b!54753 () Bool)

(assert (=> b!54753 (= e!28772 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54754 () Bool)

(assert (=> b!54754 (= e!28772 (union (union (content!17 (left!1157 thiss!7690)) (insert (elem!227 thiss!7690) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1160 thiss!7690))))))

(assert (= (and d!45098 c!11877) b!54753))

(assert (= (and d!45098 (not c!11877)) b!54754))

(assert (=> b!54754 m!59328))

(declare-fun m!59372 () Bool)

(assert (=> b!54754 m!59372))

(assert (=> b!54754 m!59332))

(assert (=> b!54713 d!45098))

(declare-fun tp!15497 () Bool)

(declare-fun e!28775 () Bool)

(declare-fun tp!15498 () Bool)

(declare-fun b!54759 () Bool)

(assert (=> b!54759 (= e!28775 (and (inv!977 (left!1157 (left!1157 res!24725))) tp!15497 (inv!977 (right!1160 (left!1157 res!24725))) tp!15498))))

(assert (=> b!54715 (= tp!15486 (and (inv!977 (left!1157 res!24725)) e!28775))))

(assert (= (and b!54715 (is-Node!127 (left!1157 res!24725))) b!54759))

(declare-fun m!59374 () Bool)

(assert (=> b!54759 m!59374))

(declare-fun m!59376 () Bool)

(assert (=> b!54759 m!59376))

(assert (=> b!54715 m!59292))

(declare-fun e!28776 () Bool)

(declare-fun tp!15500 () Bool)

(declare-fun b!54760 () Bool)

(declare-fun tp!15499 () Bool)

(assert (=> b!54760 (= e!28776 (and (inv!977 (left!1157 (right!1160 res!24725))) tp!15499 (inv!977 (right!1160 (right!1160 res!24725))) tp!15500))))

(assert (=> b!54715 (= tp!15484 (and (inv!977 (right!1160 res!24725)) e!28776))))

(assert (= (and b!54715 (is-Node!127 (right!1160 res!24725))) b!54760))

(declare-fun m!59378 () Bool)

(assert (=> b!54760 m!59378))

(declare-fun m!59380 () Bool)

(assert (=> b!54760 m!59380))

(assert (=> b!54715 m!59294))

(declare-fun e!28777 () Bool)

(declare-fun b!54761 () Bool)

(declare-fun tp!15501 () Bool)

(declare-fun tp!15502 () Bool)

(assert (=> b!54761 (= e!28777 (and (inv!977 (left!1157 (left!1157 thiss!7690))) tp!15501 (inv!977 (right!1160 (left!1157 thiss!7690))) tp!15502))))

(assert (=> b!54714 (= tp!15485 (and (inv!977 (left!1157 thiss!7690)) e!28777))))

(assert (= (and b!54714 (is-Node!127 (left!1157 thiss!7690))) b!54761))

(declare-fun m!59382 () Bool)

(assert (=> b!54761 m!59382))

(declare-fun m!59384 () Bool)

(assert (=> b!54761 m!59384))

(assert (=> b!54714 m!59302))

(declare-fun b!54762 () Bool)

(declare-fun tp!15504 () Bool)

(declare-fun tp!15503 () Bool)

(declare-fun e!28778 () Bool)

(assert (=> b!54762 (= e!28778 (and (inv!977 (left!1157 (right!1160 thiss!7690))) tp!15503 (inv!977 (right!1160 (right!1160 thiss!7690))) tp!15504))))

(assert (=> b!54714 (= tp!15483 (and (inv!977 (right!1160 thiss!7690)) e!28778))))

(assert (= (and b!54714 (is-Node!127 (right!1160 thiss!7690))) b!54762))

(declare-fun m!59386 () Bool)

(assert (=> b!54762 m!59386))

(declare-fun m!59388 () Bool)

(assert (=> b!54762 m!59388))

(assert (=> b!54714 m!59304))

(push 1)

(assert (not b!54729))

(assert (not b!54725))

(assert (not b!54760))

(assert (not neg-inst!365))

(assert (not d!45094))

(assert (not neg-inst!357))

(assert (not b!54730))

(assert (not neg-inst!363))

(assert (not neg-inst!360))

(assert (not b!54714))

(assert (not b!54744))

(assert (not b!54754))

(assert (not b!54726))

(assert (not b!54722))

(assert (not neg-inst!361))

(assert (not neg-inst!366))

(assert (not b!54715))

(assert (not neg-inst!367))

(assert (not neg-inst!364))

(assert (not b!54724))

(assert (not b!54721))

(assert (not b!54728))

(assert (not neg-inst!359))

(assert (not b!54720))

(assert (not neg-inst!358))

(assert (not b!54752))

(assert (not b!54762))

(assert (not b!54746))

(assert (not b!54727))

(assert (not neg-inst!362))

(assert (not b!54759))

(assert (not neg-inst!356))

(assert (not b!54761))

(assert (not b!54731))

(assert (not b!54742))

(assert (not b!54723))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


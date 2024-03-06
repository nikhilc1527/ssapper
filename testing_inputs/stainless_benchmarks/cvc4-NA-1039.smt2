; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7652 () Bool)

(assert start!7652)

(declare-fun res!25111 () Bool)

(declare-fun e!28784 () Bool)

(assert (=> start!7652 (=> (not res!25111) (not e!28784))))

(declare-datatypes () ((IntSet!42 (Empty!167) (Node!128 (left!1158 IntSet!42) (elem!228 (_ BitVec 32)) (right!1161 IntSet!42)))))

(declare-fun thiss!7690 () IntSet!42)

(declare-fun x!21411 () (_ BitVec 32))

(assert (=> start!7652 (= res!25111 (and (not (is-Empty!167 thiss!7690)) (bvsge x!21411 (elem!228 thiss!7690)) (bvsgt x!21411 (elem!228 thiss!7690))))))

(assert (=> start!7652 e!28784))

(declare-fun e!28783 () Bool)

(declare-fun inv!977 (IntSet!42) Bool)

(assert (=> start!7652 (and (inv!977 thiss!7690) e!28783)))

(assert (=> start!7652 true))

(declare-fun b!54767 () Bool)

(declare-fun incl!2 (IntSet!42 (_ BitVec 32)) IntSet!42)

(assert (=> b!54767 (= e!28784 (not (inv!977 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))))

(declare-fun tp!15510 () Bool)

(declare-fun tp!15509 () Bool)

(declare-fun b!54768 () Bool)

(assert (=> b!54768 (= e!28783 (and (inv!977 (left!1158 thiss!7690)) tp!15509 (inv!977 (right!1161 thiss!7690)) tp!15510))))

(assert (= (and start!7652 res!25111) b!54767))

(assert (= (and start!7652 (is-Node!128 thiss!7690)) b!54768))

(declare-fun m!59390 () Bool)

(assert (=> start!7652 m!59390))

(declare-fun m!59392 () Bool)

(assert (=> b!54767 m!59392))

(declare-fun m!59394 () Bool)

(assert (=> b!54767 m!59394))

(declare-fun m!59396 () Bool)

(assert (=> b!54768 m!59396))

(declare-fun m!59398 () Bool)

(assert (=> b!54768 m!59398))

(push 1)

(assert (not b!54767))

(assert (not start!7652))

(assert (not b!54768))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!54773 () Bool)

(declare-fun m!59400 () Bool)

(assert (=> b!54773 m!59400))

(declare-fun x!21879 () (_ BitVec 32))

(declare-fun inst!384 () Bool)

(declare-fun content!17 (IntSet!42) (Set (_ BitVec 32)))

(assert (=> b!54773 (= inst!384 (=> true (or (not (member x!21879 (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt x!21879 (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))))))

(declare-fun m!59402 () Bool)

(assert (=> b!54773 m!59402))

(declare-fun b!54774 () Bool)

(declare-fun m!59404 () Bool)

(assert (=> b!54774 m!59404))

(declare-fun inst!385 () Bool)

(declare-fun x!21880 () (_ BitVec 32))

(assert (=> b!54774 (= inst!385 (=> true (or (not (member x!21880 (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))) x!21880))))))

(declare-fun m!59406 () Bool)

(assert (=> b!54774 m!59406))

(declare-fun bs!26641 () Bool)

(declare-fun neg-inst!372 () Bool)

(assert (= bs!26641 neg-inst!372))

(assert (=> bs!26641 m!59400))

(declare-fun bs!26642 () Bool)

(declare-fun s!1525 () Bool)

(assert (= bs!26642 (and neg-inst!372 s!1525)))

(assert (=> bs!26642 (=> true (or (not (member x!21879 (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt x!21879 (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))))))

(assert (=> m!59402 s!1525))

(declare-fun bs!26643 () Bool)

(assert (= bs!26643 (and neg-inst!372 b!54773)))

(assert (=> bs!26643 (= true inst!384)))

(declare-fun bs!26644 () Bool)

(declare-fun neg-inst!373 () Bool)

(assert (= bs!26644 neg-inst!373))

(assert (=> bs!26644 m!59404))

(declare-fun bs!26645 () Bool)

(declare-fun s!1527 () Bool)

(assert (= bs!26645 (and neg-inst!373 s!1527)))

(assert (=> bs!26645 (=> true (or (not (member x!21880 (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))) x!21880)))))

(assert (=> m!59406 s!1527))

(declare-fun bs!26646 () Bool)

(assert (= bs!26646 (and neg-inst!373 b!54774)))

(assert (=> bs!26646 (= true inst!385)))

(declare-fun d!45100 () Bool)

(declare-fun res!25117 () Bool)

(declare-fun e!28789 () Bool)

(assert (=> d!45100 (=> res!25117 e!28789)))

(assert (=> d!45100 (= res!25117 (not (is-Node!128 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))))

(assert (=> d!45100 (= (inv!977 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))) e!28789)))

(declare-fun e!28790 () Bool)

(assert (=> b!54773 (= e!28789 e!28790)))

(declare-fun res!25116 () Bool)

(assert (=> b!54773 (=> (not res!25116) (not e!28790))))

(assert (=> b!54773 (= res!25116 inst!384)))

(assert (=> b!54774 (= e!28790 inst!385)))

(assert (= (and d!45100 (not res!25117)) b!54773))

(assert (= neg-inst!372 inst!384))

(assert (= (and b!54773 res!25116) b!54774))

(assert (= neg-inst!373 inst!385))

(assert (=> b!54767 d!45100))

(declare-fun b!54785 () Bool)

(declare-fun e!28798 () IntSet!42)

(declare-fun res!25124 () IntSet!42)

(assert (=> b!54785 (= e!28798 res!25124)))

(assert (=> b!54785 true))

(declare-fun e!28799 () Bool)

(assert (=> b!54785 (and (inv!977 res!25124) e!28799)))

(declare-fun d!45102 () Bool)

(declare-fun lt!9632 () IntSet!42)

(assert (=> d!45102 (= (content!17 lt!9632) (union (content!17 (right!1161 thiss!7690)) (insert x!21411 (as emptyset (Set (_ BitVec 32))))))))

(declare-fun e!28797 () IntSet!42)

(assert (=> d!45102 (= lt!9632 e!28797)))

(declare-fun c!11882 () Bool)

(assert (=> d!45102 (= c!11882 (is-Empty!167 (right!1161 thiss!7690)))))

(assert (=> d!45102 (= (incl!2 (right!1161 thiss!7690) x!21411) lt!9632)))

(declare-fun b!54786 () Bool)

(declare-fun lt!9634 () Bool)

(assert (=> b!54786 (= e!28798 (incl!2 (ite lt!9634 (left!1158 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690))) x!21411))))

(declare-fun b!54787 () Bool)

(declare-fun lt!9633 () IntSet!42)

(assert (=> b!54787 (= e!28797 (ite lt!9634 (Node!128 lt!9633 (elem!228 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690))) (ite (bvsgt x!21411 (elem!228 (right!1161 thiss!7690))) (Node!128 (left!1158 (right!1161 thiss!7690)) (elem!228 (right!1161 thiss!7690)) lt!9633) (right!1161 thiss!7690))))))

(assert (=> b!54787 (= lt!9633 e!28798)))

(declare-fun c!11883 () Bool)

(assert (=> b!54787 (= c!11883 (or lt!9634 (bvsgt x!21411 (elem!228 (right!1161 thiss!7690)))))))

(assert (=> b!54787 (= lt!9634 (bvslt x!21411 (elem!228 (right!1161 thiss!7690))))))

(declare-fun tp!15516 () Bool)

(declare-fun tp!15515 () Bool)

(declare-fun b!54788 () Bool)

(assert (=> b!54788 (= e!28799 (and (inv!977 (left!1158 res!25124)) tp!15515 (inv!977 (right!1161 res!25124)) tp!15516))))

(declare-fun b!54789 () Bool)

(assert (=> b!54789 (= e!28797 (Node!128 Empty!167 x!21411 Empty!167))))

(assert (= (and b!54785 (is-Node!128 res!25124)) b!54788))

(assert (= (and b!54787 c!11883) b!54786))

(assert (= (and b!54787 (not c!11883)) b!54785))

(assert (= (and d!45102 c!11882) b!54789))

(assert (= (and d!45102 (not c!11882)) b!54787))

(declare-fun m!59408 () Bool)

(assert (=> b!54785 m!59408))

(declare-fun m!59410 () Bool)

(assert (=> d!45102 m!59410))

(declare-fun m!59412 () Bool)

(assert (=> d!45102 m!59412))

(declare-fun m!59414 () Bool)

(assert (=> d!45102 m!59414))

(declare-fun m!59416 () Bool)

(assert (=> b!54786 m!59416))

(declare-fun m!59418 () Bool)

(assert (=> b!54788 m!59418))

(declare-fun m!59420 () Bool)

(assert (=> b!54788 m!59420))

(assert (=> b!54767 d!45102))

(declare-fun b!54790 () Bool)

(declare-fun m!59422 () Bool)

(assert (=> b!54790 m!59422))

(declare-fun inst!386 () Bool)

(declare-fun x!21882 () (_ BitVec 32))

(assert (=> b!54790 (= inst!386 (=> true (or (not (member x!21882 (content!17 (left!1158 thiss!7690)))) (bvslt x!21882 (elem!228 thiss!7690)))))))

(declare-fun m!59424 () Bool)

(assert (=> b!54790 m!59424))

(declare-fun bs!26647 () Bool)

(assert (= bs!26647 (and b!54790 neg-inst!372)))

(assert (=> (and bs!26647 (= (content!17 (left!1158 thiss!7690)) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 thiss!7690) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!386 true)))

(declare-fun bs!26648 () Bool)

(assert (= bs!26648 (and b!54790 b!54773)))

(assert (=> (and bs!26648 (= (content!17 (left!1158 thiss!7690)) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 thiss!7690) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!386 inst!384)))

(declare-fun b!54791 () Bool)

(assert (=> b!54791 m!59412))

(declare-fun inst!387 () Bool)

(declare-fun x!21883 () (_ BitVec 32))

(assert (=> b!54791 (= inst!387 (=> true (or (not (member x!21883 (content!17 (right!1161 thiss!7690)))) (bvslt (elem!228 thiss!7690) x!21883))))))

(declare-fun m!59426 () Bool)

(assert (=> b!54791 m!59426))

(declare-fun bs!26649 () Bool)

(assert (= bs!26649 (and b!54791 neg-inst!373)))

(assert (=> (and bs!26649 (= (content!17 (right!1161 thiss!7690)) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 thiss!7690) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!387 true)))

(declare-fun bs!26650 () Bool)

(assert (= bs!26650 (and b!54791 b!54774)))

(assert (=> (and bs!26650 (= (content!17 (right!1161 thiss!7690)) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 thiss!7690) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!387 inst!385)))

(declare-fun bs!26651 () Bool)

(declare-fun neg-inst!374 () Bool)

(assert (= bs!26651 neg-inst!374))

(assert (=> bs!26651 m!59422))

(declare-fun bs!26652 () Bool)

(declare-fun s!1529 () Bool)

(assert (= bs!26652 (and neg-inst!374 s!1529)))

(assert (=> bs!26652 (=> true (or (not (member x!21882 (content!17 (left!1158 thiss!7690)))) (bvslt x!21882 (elem!228 thiss!7690))))))

(assert (=> m!59424 s!1529))

(declare-fun bs!26653 () Bool)

(assert (= bs!26653 (and neg-inst!374 neg-inst!372)))

(assert (=> (and bs!26653 (= (content!17 (left!1158 thiss!7690)) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 thiss!7690) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26654 () Bool)

(assert (= bs!26654 (and neg-inst!374 b!54773)))

(assert (=> (and bs!26654 (= (content!17 (left!1158 thiss!7690)) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 thiss!7690) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!384)))

(declare-fun bs!26655 () Bool)

(assert (= bs!26655 (and neg-inst!374 b!54790)))

(assert (=> bs!26655 (= true inst!386)))

(declare-fun bs!26656 () Bool)

(declare-fun neg-inst!375 () Bool)

(assert (= bs!26656 neg-inst!375))

(assert (=> bs!26656 m!59412))

(declare-fun bs!26657 () Bool)

(declare-fun s!1531 () Bool)

(assert (= bs!26657 (and neg-inst!375 s!1531)))

(assert (=> bs!26657 (=> true (or (not (member x!21883 (content!17 (right!1161 thiss!7690)))) (bvslt (elem!228 thiss!7690) x!21883)))))

(assert (=> m!59426 s!1531))

(declare-fun bs!26658 () Bool)

(assert (= bs!26658 (and neg-inst!375 neg-inst!373)))

(assert (=> (and bs!26658 (= (content!17 (right!1161 thiss!7690)) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 thiss!7690) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26659 () Bool)

(assert (= bs!26659 (and neg-inst!375 b!54791)))

(assert (=> bs!26659 (= true inst!387)))

(declare-fun bs!26660 () Bool)

(assert (= bs!26660 (and neg-inst!375 b!54774)))

(assert (=> (and bs!26660 (= (content!17 (right!1161 thiss!7690)) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 thiss!7690) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!385)))

(declare-fun d!45104 () Bool)

(declare-fun res!25126 () Bool)

(declare-fun e!28800 () Bool)

(assert (=> d!45104 (=> res!25126 e!28800)))

(assert (=> d!45104 (= res!25126 (not (is-Node!128 thiss!7690)))))

(assert (=> d!45104 (= (inv!977 thiss!7690) e!28800)))

(declare-fun e!28801 () Bool)

(assert (=> b!54790 (= e!28800 e!28801)))

(declare-fun res!25125 () Bool)

(assert (=> b!54790 (=> (not res!25125) (not e!28801))))

(assert (=> b!54790 (= res!25125 inst!386)))

(assert (=> b!54791 (= e!28801 inst!387)))

(assert (= (and d!45104 (not res!25126)) b!54790))

(assert (= neg-inst!374 inst!386))

(assert (= (and b!54790 res!25125) b!54791))

(assert (= neg-inst!375 inst!387))

(assert (=> start!7652 d!45104))

(declare-fun b!54792 () Bool)

(declare-fun m!59428 () Bool)

(assert (=> b!54792 m!59428))

(declare-fun inst!388 () Bool)

(declare-fun x!21884 () (_ BitVec 32))

(assert (=> b!54792 (= inst!388 (=> true (or (not (member x!21884 (content!17 (left!1158 (left!1158 thiss!7690))))) (bvslt x!21884 (elem!228 (left!1158 thiss!7690))))))))

(declare-fun m!59430 () Bool)

(assert (=> b!54792 m!59430))

(declare-fun bs!26661 () Bool)

(assert (= bs!26661 (and b!54792 neg-inst!372)))

(assert (=> (and bs!26661 (= (content!17 (left!1158 (left!1158 thiss!7690))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!388 true)))

(declare-fun bs!26662 () Bool)

(assert (= bs!26662 (and b!54792 b!54773)))

(assert (=> (and bs!26662 (= (content!17 (left!1158 (left!1158 thiss!7690))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!388 inst!384)))

(declare-fun bs!26663 () Bool)

(assert (= bs!26663 (and b!54792 neg-inst!374)))

(assert (=> (and bs!26663 (= (content!17 (left!1158 (left!1158 thiss!7690))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 thiss!7690))) (= inst!388 true)))

(declare-fun bs!26664 () Bool)

(assert (= bs!26664 (and b!54792 b!54790)))

(assert (=> (and bs!26664 (= (content!17 (left!1158 (left!1158 thiss!7690))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 thiss!7690))) (= inst!388 inst!386)))

(declare-fun b!54793 () Bool)

(declare-fun m!59432 () Bool)

(assert (=> b!54793 m!59432))

(declare-fun inst!389 () Bool)

(declare-fun x!21885 () (_ BitVec 32))

(assert (=> b!54793 (= inst!389 (=> true (or (not (member x!21885 (content!17 (right!1161 (left!1158 thiss!7690))))) (bvslt (elem!228 (left!1158 thiss!7690)) x!21885))))))

(declare-fun m!59434 () Bool)

(assert (=> b!54793 m!59434))

(declare-fun bs!26665 () Bool)

(assert (= bs!26665 (and b!54793 neg-inst!373)))

(assert (=> (and bs!26665 (= (content!17 (right!1161 (left!1158 thiss!7690))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!389 true)))

(declare-fun bs!26666 () Bool)

(assert (= bs!26666 (and b!54793 b!54791)))

(assert (=> (and bs!26666 (= (content!17 (right!1161 (left!1158 thiss!7690))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 thiss!7690))) (= inst!389 inst!387)))

(declare-fun bs!26667 () Bool)

(assert (= bs!26667 (and b!54793 neg-inst!375)))

(assert (=> (and bs!26667 (= (content!17 (right!1161 (left!1158 thiss!7690))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 thiss!7690))) (= inst!389 true)))

(declare-fun bs!26668 () Bool)

(assert (= bs!26668 (and b!54793 b!54774)))

(assert (=> (and bs!26668 (= (content!17 (right!1161 (left!1158 thiss!7690))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!389 inst!385)))

(declare-fun bs!26669 () Bool)

(declare-fun neg-inst!376 () Bool)

(assert (= bs!26669 neg-inst!376))

(assert (=> bs!26669 m!59428))

(declare-fun bs!26670 () Bool)

(declare-fun s!1533 () Bool)

(assert (= bs!26670 (and neg-inst!376 s!1533)))

(assert (=> bs!26670 (=> true (or (not (member x!21884 (content!17 (left!1158 (left!1158 thiss!7690))))) (bvslt x!21884 (elem!228 (left!1158 thiss!7690)))))))

(assert (=> m!59430 s!1533))

(declare-fun bs!26671 () Bool)

(assert (= bs!26671 (and neg-inst!376 b!54792)))

(assert (=> bs!26671 (= true inst!388)))

(declare-fun bs!26672 () Bool)

(assert (= bs!26672 (and neg-inst!376 neg-inst!372)))

(assert (=> (and bs!26672 (= (content!17 (left!1158 (left!1158 thiss!7690))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26673 () Bool)

(assert (= bs!26673 (and neg-inst!376 b!54773)))

(assert (=> (and bs!26673 (= (content!17 (left!1158 (left!1158 thiss!7690))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!384)))

(declare-fun bs!26674 () Bool)

(assert (= bs!26674 (and neg-inst!376 neg-inst!374)))

(assert (=> (and bs!26674 (= (content!17 (left!1158 (left!1158 thiss!7690))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!26675 () Bool)

(assert (= bs!26675 (and neg-inst!376 b!54790)))

(assert (=> (and bs!26675 (= (content!17 (left!1158 (left!1158 thiss!7690))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 thiss!7690))) (= true inst!386)))

(declare-fun bs!26676 () Bool)

(declare-fun neg-inst!377 () Bool)

(assert (= bs!26676 neg-inst!377))

(assert (=> bs!26676 m!59432))

(declare-fun bs!26677 () Bool)

(declare-fun s!1535 () Bool)

(assert (= bs!26677 (and neg-inst!377 s!1535)))

(assert (=> bs!26677 (=> true (or (not (member x!21885 (content!17 (right!1161 (left!1158 thiss!7690))))) (bvslt (elem!228 (left!1158 thiss!7690)) x!21885)))))

(assert (=> m!59434 s!1535))

(declare-fun bs!26678 () Bool)

(assert (= bs!26678 (and neg-inst!377 b!54793)))

(assert (=> bs!26678 (= true inst!389)))

(declare-fun bs!26679 () Bool)

(assert (= bs!26679 (and neg-inst!377 neg-inst!373)))

(assert (=> (and bs!26679 (= (content!17 (right!1161 (left!1158 thiss!7690))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26680 () Bool)

(assert (= bs!26680 (and neg-inst!377 b!54791)))

(assert (=> (and bs!26680 (= (content!17 (right!1161 (left!1158 thiss!7690))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 thiss!7690))) (= true inst!387)))

(declare-fun bs!26681 () Bool)

(assert (= bs!26681 (and neg-inst!377 neg-inst!375)))

(assert (=> (and bs!26681 (= (content!17 (right!1161 (left!1158 thiss!7690))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!26682 () Bool)

(assert (= bs!26682 (and neg-inst!377 b!54774)))

(assert (=> (and bs!26682 (= (content!17 (right!1161 (left!1158 thiss!7690))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!385)))

(declare-fun d!45106 () Bool)

(declare-fun res!25128 () Bool)

(declare-fun e!28802 () Bool)

(assert (=> d!45106 (=> res!25128 e!28802)))

(assert (=> d!45106 (= res!25128 (not (is-Node!128 (left!1158 thiss!7690))))))

(assert (=> d!45106 (= (inv!977 (left!1158 thiss!7690)) e!28802)))

(declare-fun e!28803 () Bool)

(assert (=> b!54792 (= e!28802 e!28803)))

(declare-fun res!25127 () Bool)

(assert (=> b!54792 (=> (not res!25127) (not e!28803))))

(assert (=> b!54792 (= res!25127 inst!388)))

(assert (=> b!54793 (= e!28803 inst!389)))

(assert (= (and d!45106 (not res!25128)) b!54792))

(assert (= neg-inst!376 inst!388))

(assert (= (and b!54792 res!25127) b!54793))

(assert (= neg-inst!377 inst!389))

(assert (=> b!54768 d!45106))

(declare-fun b!54794 () Bool)

(declare-fun m!59436 () Bool)

(assert (=> b!54794 m!59436))

(declare-fun inst!390 () Bool)

(declare-fun x!21886 () (_ BitVec 32))

(assert (=> b!54794 (= inst!390 (=> true (or (not (member x!21886 (content!17 (left!1158 (right!1161 thiss!7690))))) (bvslt x!21886 (elem!228 (right!1161 thiss!7690))))))))

(declare-fun m!59438 () Bool)

(assert (=> b!54794 m!59438))

(declare-fun bs!26683 () Bool)

(assert (= bs!26683 (and b!54794 b!54792)))

(assert (=> (and bs!26683 (= (content!17 (left!1158 (right!1161 thiss!7690))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (left!1158 thiss!7690)))) (= inst!390 inst!388)))

(declare-fun bs!26684 () Bool)

(assert (= bs!26684 (and b!54794 neg-inst!372)))

(assert (=> (and bs!26684 (= (content!17 (left!1158 (right!1161 thiss!7690))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!390 true)))

(declare-fun bs!26685 () Bool)

(assert (= bs!26685 (and b!54794 b!54773)))

(assert (=> (and bs!26685 (= (content!17 (left!1158 (right!1161 thiss!7690))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!390 inst!384)))

(declare-fun bs!26686 () Bool)

(assert (= bs!26686 (and b!54794 neg-inst!374)))

(assert (=> (and bs!26686 (= (content!17 (left!1158 (right!1161 thiss!7690))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 thiss!7690))) (= inst!390 true)))

(declare-fun bs!26687 () Bool)

(assert (= bs!26687 (and b!54794 neg-inst!376)))

(assert (=> (and bs!26687 (= (content!17 (left!1158 (right!1161 thiss!7690))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (left!1158 thiss!7690)))) (= inst!390 true)))

(declare-fun bs!26688 () Bool)

(assert (= bs!26688 (and b!54794 b!54790)))

(assert (=> (and bs!26688 (= (content!17 (left!1158 (right!1161 thiss!7690))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 thiss!7690))) (= inst!390 inst!386)))

(declare-fun b!54795 () Bool)

(declare-fun m!59440 () Bool)

(assert (=> b!54795 m!59440))

(declare-fun inst!391 () Bool)

(declare-fun x!21887 () (_ BitVec 32))

(assert (=> b!54795 (= inst!391 (=> true (or (not (member x!21887 (content!17 (right!1161 (right!1161 thiss!7690))))) (bvslt (elem!228 (right!1161 thiss!7690)) x!21887))))))

(declare-fun m!59442 () Bool)

(assert (=> b!54795 m!59442))

(declare-fun bs!26689 () Bool)

(assert (= bs!26689 (and b!54795 b!54793)))

(assert (=> (and bs!26689 (= (content!17 (right!1161 (right!1161 thiss!7690))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (left!1158 thiss!7690)))) (= inst!391 inst!389)))

(declare-fun bs!26690 () Bool)

(assert (= bs!26690 (and b!54795 neg-inst!373)))

(assert (=> (and bs!26690 (= (content!17 (right!1161 (right!1161 thiss!7690))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!391 true)))

(declare-fun bs!26691 () Bool)

(assert (= bs!26691 (and b!54795 b!54791)))

(assert (=> (and bs!26691 (= (content!17 (right!1161 (right!1161 thiss!7690))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 thiss!7690))) (= inst!391 inst!387)))

(declare-fun bs!26692 () Bool)

(assert (= bs!26692 (and b!54795 neg-inst!377)))

(assert (=> (and bs!26692 (= (content!17 (right!1161 (right!1161 thiss!7690))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (left!1158 thiss!7690)))) (= inst!391 true)))

(declare-fun bs!26693 () Bool)

(assert (= bs!26693 (and b!54795 neg-inst!375)))

(assert (=> (and bs!26693 (= (content!17 (right!1161 (right!1161 thiss!7690))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 thiss!7690))) (= inst!391 true)))

(declare-fun bs!26694 () Bool)

(assert (= bs!26694 (and b!54795 b!54774)))

(assert (=> (and bs!26694 (= (content!17 (right!1161 (right!1161 thiss!7690))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!391 inst!385)))

(declare-fun bs!26695 () Bool)

(declare-fun neg-inst!378 () Bool)

(assert (= bs!26695 neg-inst!378))

(assert (=> bs!26695 m!59436))

(declare-fun bs!26696 () Bool)

(declare-fun s!1537 () Bool)

(assert (= bs!26696 (and neg-inst!378 s!1537)))

(assert (=> bs!26696 (=> true (or (not (member x!21886 (content!17 (left!1158 (right!1161 thiss!7690))))) (bvslt x!21886 (elem!228 (right!1161 thiss!7690)))))))

(assert (=> m!59438 s!1537))

(declare-fun bs!26697 () Bool)

(assert (= bs!26697 (and neg-inst!378 neg-inst!372)))

(assert (=> (and bs!26697 (= (content!17 (left!1158 (right!1161 thiss!7690))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26698 () Bool)

(assert (= bs!26698 (and neg-inst!378 b!54792)))

(assert (=> (and bs!26698 (= (content!17 (left!1158 (right!1161 thiss!7690))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (left!1158 thiss!7690)))) (= true inst!388)))

(declare-fun bs!26699 () Bool)

(assert (= bs!26699 (and neg-inst!378 b!54773)))

(assert (=> (and bs!26699 (= (content!17 (left!1158 (right!1161 thiss!7690))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!384)))

(declare-fun bs!26700 () Bool)

(assert (= bs!26700 (and neg-inst!378 neg-inst!374)))

(assert (=> (and bs!26700 (= (content!17 (left!1158 (right!1161 thiss!7690))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!26701 () Bool)

(assert (= bs!26701 (and neg-inst!378 b!54794)))

(assert (=> bs!26701 (= true inst!390)))

(declare-fun bs!26702 () Bool)

(assert (= bs!26702 (and neg-inst!378 neg-inst!376)))

(assert (=> (and bs!26702 (= (content!17 (left!1158 (right!1161 thiss!7690))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!26703 () Bool)

(assert (= bs!26703 (and neg-inst!378 b!54790)))

(assert (=> (and bs!26703 (= (content!17 (left!1158 (right!1161 thiss!7690))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 thiss!7690))) (= true inst!386)))

(declare-fun bs!26704 () Bool)

(declare-fun neg-inst!379 () Bool)

(assert (= bs!26704 neg-inst!379))

(assert (=> bs!26704 m!59440))

(declare-fun bs!26705 () Bool)

(declare-fun s!1539 () Bool)

(assert (= bs!26705 (and neg-inst!379 s!1539)))

(assert (=> bs!26705 (=> true (or (not (member x!21887 (content!17 (right!1161 (right!1161 thiss!7690))))) (bvslt (elem!228 (right!1161 thiss!7690)) x!21887)))))

(assert (=> m!59442 s!1539))

(declare-fun bs!26706 () Bool)

(assert (= bs!26706 (and neg-inst!379 b!54793)))

(assert (=> (and bs!26706 (= (content!17 (right!1161 (right!1161 thiss!7690))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (left!1158 thiss!7690)))) (= true inst!389)))

(declare-fun bs!26707 () Bool)

(assert (= bs!26707 (and neg-inst!379 neg-inst!373)))

(assert (=> (and bs!26707 (= (content!17 (right!1161 (right!1161 thiss!7690))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26708 () Bool)

(assert (= bs!26708 (and neg-inst!379 b!54791)))

(assert (=> (and bs!26708 (= (content!17 (right!1161 (right!1161 thiss!7690))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 thiss!7690))) (= true inst!387)))

(declare-fun bs!26709 () Bool)

(assert (= bs!26709 (and neg-inst!379 neg-inst!377)))

(assert (=> (and bs!26709 (= (content!17 (right!1161 (right!1161 thiss!7690))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!26710 () Bool)

(assert (= bs!26710 (and neg-inst!379 b!54795)))

(assert (=> bs!26710 (= true inst!391)))

(declare-fun bs!26711 () Bool)

(assert (= bs!26711 (and neg-inst!379 neg-inst!375)))

(assert (=> (and bs!26711 (= (content!17 (right!1161 (right!1161 thiss!7690))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!26712 () Bool)

(assert (= bs!26712 (and neg-inst!379 b!54774)))

(assert (=> (and bs!26712 (= (content!17 (right!1161 (right!1161 thiss!7690))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 thiss!7690)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!385)))

(declare-fun d!45108 () Bool)

(declare-fun res!25130 () Bool)

(declare-fun e!28804 () Bool)

(assert (=> d!45108 (=> res!25130 e!28804)))

(assert (=> d!45108 (= res!25130 (not (is-Node!128 (right!1161 thiss!7690))))))

(assert (=> d!45108 (= (inv!977 (right!1161 thiss!7690)) e!28804)))

(declare-fun e!28805 () Bool)

(assert (=> b!54794 (= e!28804 e!28805)))

(declare-fun res!25129 () Bool)

(assert (=> b!54794 (=> (not res!25129) (not e!28805))))

(assert (=> b!54794 (= res!25129 inst!390)))

(assert (=> b!54795 (= e!28805 inst!391)))

(assert (= (and d!45108 (not res!25130)) b!54794))

(assert (= neg-inst!378 inst!390))

(assert (= (and b!54794 res!25129) b!54795))

(assert (= neg-inst!379 inst!391))

(assert (=> b!54768 d!45108))

(declare-fun b!54800 () Bool)

(declare-fun tp!15522 () Bool)

(declare-fun tp!15521 () Bool)

(declare-fun e!28808 () Bool)

(assert (=> b!54800 (= e!28808 (and (inv!977 (left!1158 (left!1158 thiss!7690))) tp!15521 (inv!977 (right!1161 (left!1158 thiss!7690))) tp!15522))))

(assert (=> b!54768 (= tp!15509 (and (inv!977 (left!1158 thiss!7690)) e!28808))))

(assert (= (and b!54768 (is-Node!128 (left!1158 thiss!7690))) b!54800))

(declare-fun m!59444 () Bool)

(assert (=> b!54800 m!59444))

(declare-fun m!59446 () Bool)

(assert (=> b!54800 m!59446))

(assert (=> b!54768 m!59396))

(declare-fun tp!15523 () Bool)

(declare-fun b!54801 () Bool)

(declare-fun tp!15524 () Bool)

(declare-fun e!28809 () Bool)

(assert (=> b!54801 (= e!28809 (and (inv!977 (left!1158 (right!1161 thiss!7690))) tp!15523 (inv!977 (right!1161 (right!1161 thiss!7690))) tp!15524))))

(assert (=> b!54768 (= tp!15510 (and (inv!977 (right!1161 thiss!7690)) e!28809))))

(assert (= (and b!54768 (is-Node!128 (right!1161 thiss!7690))) b!54801))

(declare-fun m!59448 () Bool)

(assert (=> b!54801 m!59448))

(declare-fun m!59450 () Bool)

(assert (=> b!54801 m!59450))

(assert (=> b!54768 m!59398))

(push 1)

(assert (not neg-inst!379))

(assert (not b!54773))

(assert (not b!54795))

(assert (not neg-inst!373))

(assert (not b!54800))

(assert (not b!54768))

(assert (not b!54792))

(assert (not neg-inst!376))

(assert (not b!54790))

(assert (not b!54801))

(assert (not b!54788))

(assert (not neg-inst!374))

(assert (not b!54785))

(assert (not b!54793))

(assert (not b!54786))

(assert (not neg-inst!377))

(assert (not neg-inst!375))

(assert (not neg-inst!372))

(assert (not b!54774))

(assert (not neg-inst!378))

(assert (not d!45102))

(assert (not b!54794))

(assert (not b!54791))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!54802 () Bool)

(declare-fun m!59452 () Bool)

(assert (=> b!54802 m!59452))

(declare-fun inst!392 () Bool)

(declare-fun x!21890 () (_ BitVec 32))

(assert (=> b!54802 (= inst!392 (=> true (or (not (member x!21890 (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))))) (bvslt x!21890 (elem!228 (left!1158 (left!1158 thiss!7690)))))))))

(declare-fun m!59454 () Bool)

(assert (=> b!54802 m!59454))

(declare-fun bs!26713 () Bool)

(assert (= bs!26713 (and b!54802 neg-inst!372)))

(assert (=> (and bs!26713 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!392 true)))

(declare-fun bs!26714 () Bool)

(assert (= bs!26714 (and b!54802 b!54792)))

(assert (=> (and bs!26714 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!392 inst!388)))

(declare-fun bs!26715 () Bool)

(assert (= bs!26715 (and b!54802 b!54773)))

(assert (=> (and bs!26715 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!392 inst!384)))

(declare-fun bs!26716 () Bool)

(assert (= bs!26716 (and b!54802 neg-inst!378)))

(assert (=> (and bs!26716 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!392 true)))

(declare-fun bs!26717 () Bool)

(assert (= bs!26717 (and b!54802 neg-inst!374)))

(assert (=> (and bs!26717 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= inst!392 true)))

(declare-fun bs!26718 () Bool)

(assert (= bs!26718 (and b!54802 b!54794)))

(assert (=> (and bs!26718 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!392 inst!390)))

(declare-fun bs!26719 () Bool)

(assert (= bs!26719 (and b!54802 neg-inst!376)))

(assert (=> (and bs!26719 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!392 true)))

(declare-fun bs!26720 () Bool)

(assert (= bs!26720 (and b!54802 b!54790)))

(assert (=> (and bs!26720 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= inst!392 inst!386)))

(declare-fun b!54803 () Bool)

(declare-fun m!59456 () Bool)

(assert (=> b!54803 m!59456))

(declare-fun inst!393 () Bool)

(declare-fun x!21891 () (_ BitVec 32))

(assert (=> b!54803 (= inst!393 (=> true (or (not (member x!21891 (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))))) (bvslt (elem!228 (left!1158 (left!1158 thiss!7690))) x!21891))))))

(declare-fun m!59458 () Bool)

(assert (=> b!54803 m!59458))

(declare-fun bs!26721 () Bool)

(assert (= bs!26721 (and b!54803 b!54793)))

(assert (=> (and bs!26721 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!393 inst!389)))

(declare-fun bs!26722 () Bool)

(assert (= bs!26722 (and b!54803 neg-inst!373)))

(assert (=> (and bs!26722 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!393 true)))

(declare-fun bs!26723 () Bool)

(assert (= bs!26723 (and b!54803 neg-inst!379)))

(assert (=> (and bs!26723 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!393 true)))

(declare-fun bs!26724 () Bool)

(assert (= bs!26724 (and b!54803 b!54791)))

(assert (=> (and bs!26724 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= inst!393 inst!387)))

(declare-fun bs!26725 () Bool)

(assert (= bs!26725 (and b!54803 neg-inst!377)))

(assert (=> (and bs!26725 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!393 true)))

(declare-fun bs!26726 () Bool)

(assert (= bs!26726 (and b!54803 b!54795)))

(assert (=> (and bs!26726 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!393 inst!391)))

(declare-fun bs!26727 () Bool)

(assert (= bs!26727 (and b!54803 neg-inst!375)))

(assert (=> (and bs!26727 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= inst!393 true)))

(declare-fun bs!26728 () Bool)

(assert (= bs!26728 (and b!54803 b!54774)))

(assert (=> (and bs!26728 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!393 inst!385)))

(declare-fun bs!26729 () Bool)

(declare-fun neg-inst!380 () Bool)

(assert (= bs!26729 neg-inst!380))

(assert (=> bs!26729 m!59452))

(declare-fun bs!26730 () Bool)

(declare-fun s!1541 () Bool)

(assert (= bs!26730 (and neg-inst!380 s!1541)))

(assert (=> bs!26730 (=> true (or (not (member x!21890 (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))))) (bvslt x!21890 (elem!228 (left!1158 (left!1158 thiss!7690))))))))

(assert (=> m!59454 s!1541))

(declare-fun bs!26731 () Bool)

(assert (= bs!26731 (and neg-inst!380 neg-inst!372)))

(assert (=> (and bs!26731 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26732 () Bool)

(assert (= bs!26732 (and neg-inst!380 b!54792)))

(assert (=> (and bs!26732 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true inst!388)))

(declare-fun bs!26733 () Bool)

(assert (= bs!26733 (and neg-inst!380 b!54773)))

(assert (=> (and bs!26733 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!384)))

(declare-fun bs!26734 () Bool)

(assert (= bs!26734 (and neg-inst!380 b!54802)))

(assert (=> bs!26734 (= true inst!392)))

(declare-fun bs!26735 () Bool)

(assert (= bs!26735 (and neg-inst!380 neg-inst!378)))

(assert (=> (and bs!26735 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true true)))

(declare-fun bs!26736 () Bool)

(assert (= bs!26736 (and neg-inst!380 neg-inst!374)))

(assert (=> (and bs!26736 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!26737 () Bool)

(assert (= bs!26737 (and neg-inst!380 b!54794)))

(assert (=> (and bs!26737 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true inst!390)))

(declare-fun bs!26738 () Bool)

(assert (= bs!26738 (and neg-inst!380 neg-inst!376)))

(assert (=> (and bs!26738 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!26739 () Bool)

(assert (= bs!26739 (and neg-inst!380 b!54790)))

(assert (=> (and bs!26739 (= (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= true inst!386)))

(declare-fun bs!26740 () Bool)

(declare-fun neg-inst!381 () Bool)

(assert (= bs!26740 neg-inst!381))

(assert (=> bs!26740 m!59456))

(declare-fun bs!26741 () Bool)

(declare-fun s!1543 () Bool)

(assert (= bs!26741 (and neg-inst!381 s!1543)))

(assert (=> bs!26741 (=> true (or (not (member x!21891 (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))))) (bvslt (elem!228 (left!1158 (left!1158 thiss!7690))) x!21891)))))

(assert (=> m!59458 s!1543))

(declare-fun bs!26742 () Bool)

(assert (= bs!26742 (and neg-inst!381 b!54793)))

(assert (=> (and bs!26742 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true inst!389)))

(declare-fun bs!26743 () Bool)

(assert (= bs!26743 (and neg-inst!381 b!54803)))

(assert (=> bs!26743 (= true inst!393)))

(declare-fun bs!26744 () Bool)

(assert (= bs!26744 (and neg-inst!381 neg-inst!373)))

(assert (=> (and bs!26744 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26745 () Bool)

(assert (= bs!26745 (and neg-inst!381 neg-inst!379)))

(assert (=> (and bs!26745 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true true)))

(declare-fun bs!26746 () Bool)

(assert (= bs!26746 (and neg-inst!381 b!54791)))

(assert (=> (and bs!26746 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= true inst!387)))

(declare-fun bs!26747 () Bool)

(assert (= bs!26747 (and neg-inst!381 neg-inst!377)))

(assert (=> (and bs!26747 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!26748 () Bool)

(assert (= bs!26748 (and neg-inst!381 b!54795)))

(assert (=> (and bs!26748 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true inst!391)))

(declare-fun bs!26749 () Bool)

(assert (= bs!26749 (and neg-inst!381 neg-inst!375)))

(assert (=> (and bs!26749 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!26750 () Bool)

(assert (= bs!26750 (and neg-inst!381 b!54774)))

(assert (=> (and bs!26750 (= (content!17 (right!1161 (left!1158 (left!1158 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!385)))

(declare-fun d!45110 () Bool)

(declare-fun res!25132 () Bool)

(declare-fun e!28810 () Bool)

(assert (=> d!45110 (=> res!25132 e!28810)))

(assert (=> d!45110 (= res!25132 (not (is-Node!128 (left!1158 (left!1158 thiss!7690)))))))

(assert (=> d!45110 (= (inv!977 (left!1158 (left!1158 thiss!7690))) e!28810)))

(declare-fun e!28811 () Bool)

(assert (=> b!54802 (= e!28810 e!28811)))

(declare-fun res!25131 () Bool)

(assert (=> b!54802 (=> (not res!25131) (not e!28811))))

(assert (=> b!54802 (= res!25131 inst!392)))

(assert (=> b!54803 (= e!28811 inst!393)))

(assert (= (and d!45110 (not res!25132)) b!54802))

(assert (= neg-inst!380 inst!392))

(assert (= (and b!54802 res!25131) b!54803))

(assert (= neg-inst!381 inst!393))

(assert (=> b!54800 d!45110))

(declare-fun b!54804 () Bool)

(declare-fun m!59460 () Bool)

(assert (=> b!54804 m!59460))

(declare-fun inst!394 () Bool)

(declare-fun x!21892 () (_ BitVec 32))

(assert (=> b!54804 (= inst!394 (=> true (or (not (member x!21892 (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))))) (bvslt x!21892 (elem!228 (right!1161 (left!1158 thiss!7690)))))))))

(declare-fun m!59462 () Bool)

(assert (=> b!54804 m!59462))

(declare-fun bs!26751 () Bool)

(assert (= bs!26751 (and b!54804 neg-inst!380)))

(assert (=> (and bs!26751 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!394 true)))

(declare-fun bs!26752 () Bool)

(assert (= bs!26752 (and b!54804 neg-inst!372)))

(assert (=> (and bs!26752 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!394 true)))

(declare-fun bs!26753 () Bool)

(assert (= bs!26753 (and b!54804 b!54792)))

(assert (=> (and bs!26753 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!394 inst!388)))

(declare-fun bs!26754 () Bool)

(assert (= bs!26754 (and b!54804 b!54773)))

(assert (=> (and bs!26754 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!394 inst!384)))

(declare-fun bs!26755 () Bool)

(assert (= bs!26755 (and b!54804 b!54802)))

(assert (=> (and bs!26755 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!394 inst!392)))

(declare-fun bs!26756 () Bool)

(assert (= bs!26756 (and b!54804 neg-inst!378)))

(assert (=> (and bs!26756 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!394 true)))

(declare-fun bs!26757 () Bool)

(assert (= bs!26757 (and b!54804 neg-inst!374)))

(assert (=> (and bs!26757 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= inst!394 true)))

(declare-fun bs!26758 () Bool)

(assert (= bs!26758 (and b!54804 b!54794)))

(assert (=> (and bs!26758 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!394 inst!390)))

(declare-fun bs!26759 () Bool)

(assert (= bs!26759 (and b!54804 neg-inst!376)))

(assert (=> (and bs!26759 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!394 true)))

(declare-fun bs!26760 () Bool)

(assert (= bs!26760 (and b!54804 b!54790)))

(assert (=> (and bs!26760 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= inst!394 inst!386)))

(declare-fun b!54805 () Bool)

(declare-fun m!59464 () Bool)

(assert (=> b!54805 m!59464))

(declare-fun inst!395 () Bool)

(declare-fun x!21893 () (_ BitVec 32))

(assert (=> b!54805 (= inst!395 (=> true (or (not (member x!21893 (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))))) (bvslt (elem!228 (right!1161 (left!1158 thiss!7690))) x!21893))))))

(declare-fun m!59466 () Bool)

(assert (=> b!54805 m!59466))

(declare-fun bs!26761 () Bool)

(assert (= bs!26761 (and b!54805 b!54793)))

(assert (=> (and bs!26761 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!395 inst!389)))

(declare-fun bs!26762 () Bool)

(assert (= bs!26762 (and b!54805 b!54803)))

(assert (=> (and bs!26762 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!395 inst!393)))

(declare-fun bs!26763 () Bool)

(assert (= bs!26763 (and b!54805 neg-inst!373)))

(assert (=> (and bs!26763 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!395 true)))

(declare-fun bs!26764 () Bool)

(assert (= bs!26764 (and b!54805 neg-inst!379)))

(assert (=> (and bs!26764 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!395 true)))

(declare-fun bs!26765 () Bool)

(assert (= bs!26765 (and b!54805 neg-inst!381)))

(assert (=> (and bs!26765 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!395 true)))

(declare-fun bs!26766 () Bool)

(assert (= bs!26766 (and b!54805 b!54791)))

(assert (=> (and bs!26766 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= inst!395 inst!387)))

(declare-fun bs!26767 () Bool)

(assert (= bs!26767 (and b!54805 neg-inst!377)))

(assert (=> (and bs!26767 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!395 true)))

(declare-fun bs!26768 () Bool)

(assert (= bs!26768 (and b!54805 b!54795)))

(assert (=> (and bs!26768 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!395 inst!391)))

(declare-fun bs!26769 () Bool)

(assert (= bs!26769 (and b!54805 neg-inst!375)))

(assert (=> (and bs!26769 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= inst!395 true)))

(declare-fun bs!26770 () Bool)

(assert (= bs!26770 (and b!54805 b!54774)))

(assert (=> (and bs!26770 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!395 inst!385)))

(declare-fun bs!26771 () Bool)

(declare-fun neg-inst!382 () Bool)

(assert (= bs!26771 neg-inst!382))

(assert (=> bs!26771 m!59460))

(declare-fun bs!26772 () Bool)

(declare-fun s!1545 () Bool)

(assert (= bs!26772 (and neg-inst!382 s!1545)))

(assert (=> bs!26772 (=> true (or (not (member x!21892 (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))))) (bvslt x!21892 (elem!228 (right!1161 (left!1158 thiss!7690))))))))

(assert (=> m!59462 s!1545))

(declare-fun bs!26773 () Bool)

(assert (= bs!26773 (and neg-inst!382 neg-inst!380)))

(assert (=> (and bs!26773 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!26774 () Bool)

(assert (= bs!26774 (and neg-inst!382 neg-inst!372)))

(assert (=> (and bs!26774 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26775 () Bool)

(assert (= bs!26775 (and neg-inst!382 b!54792)))

(assert (=> (and bs!26775 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true inst!388)))

(declare-fun bs!26776 () Bool)

(assert (= bs!26776 (and neg-inst!382 b!54773)))

(assert (=> (and bs!26776 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!384)))

(declare-fun bs!26777 () Bool)

(assert (= bs!26777 (and neg-inst!382 b!54802)))

(assert (=> (and bs!26777 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true inst!392)))

(declare-fun bs!26778 () Bool)

(assert (= bs!26778 (and neg-inst!382 neg-inst!378)))

(assert (=> (and bs!26778 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true true)))

(declare-fun bs!26779 () Bool)

(assert (= bs!26779 (and neg-inst!382 neg-inst!374)))

(assert (=> (and bs!26779 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!26780 () Bool)

(assert (= bs!26780 (and neg-inst!382 b!54794)))

(assert (=> (and bs!26780 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true inst!390)))

(declare-fun bs!26781 () Bool)

(assert (= bs!26781 (and neg-inst!382 neg-inst!376)))

(assert (=> (and bs!26781 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!26782 () Bool)

(assert (= bs!26782 (and neg-inst!382 b!54804)))

(assert (=> bs!26782 (= true inst!394)))

(declare-fun bs!26783 () Bool)

(assert (= bs!26783 (and neg-inst!382 b!54790)))

(assert (=> (and bs!26783 (= (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= true inst!386)))

(declare-fun bs!26784 () Bool)

(declare-fun neg-inst!383 () Bool)

(assert (= bs!26784 neg-inst!383))

(assert (=> bs!26784 m!59464))

(declare-fun bs!26785 () Bool)

(declare-fun s!1547 () Bool)

(assert (= bs!26785 (and neg-inst!383 s!1547)))

(assert (=> bs!26785 (=> true (or (not (member x!21893 (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))))) (bvslt (elem!228 (right!1161 (left!1158 thiss!7690))) x!21893)))))

(assert (=> m!59466 s!1547))

(declare-fun bs!26786 () Bool)

(assert (= bs!26786 (and neg-inst!383 b!54793)))

(assert (=> (and bs!26786 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true inst!389)))

(declare-fun bs!26787 () Bool)

(assert (= bs!26787 (and neg-inst!383 b!54803)))

(assert (=> (and bs!26787 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true inst!393)))

(declare-fun bs!26788 () Bool)

(assert (= bs!26788 (and neg-inst!383 neg-inst!373)))

(assert (=> (and bs!26788 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26789 () Bool)

(assert (= bs!26789 (and neg-inst!383 neg-inst!379)))

(assert (=> (and bs!26789 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true true)))

(declare-fun bs!26790 () Bool)

(assert (= bs!26790 (and neg-inst!383 neg-inst!381)))

(assert (=> (and bs!26790 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!26791 () Bool)

(assert (= bs!26791 (and neg-inst!383 b!54791)))

(assert (=> (and bs!26791 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= true inst!387)))

(declare-fun bs!26792 () Bool)

(assert (= bs!26792 (and neg-inst!383 b!54805)))

(assert (=> bs!26792 (= true inst!395)))

(declare-fun bs!26793 () Bool)

(assert (= bs!26793 (and neg-inst!383 neg-inst!377)))

(assert (=> (and bs!26793 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!26794 () Bool)

(assert (= bs!26794 (and neg-inst!383 b!54795)))

(assert (=> (and bs!26794 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true inst!391)))

(declare-fun bs!26795 () Bool)

(assert (= bs!26795 (and neg-inst!383 neg-inst!375)))

(assert (=> (and bs!26795 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!26796 () Bool)

(assert (= bs!26796 (and neg-inst!383 b!54774)))

(assert (=> (and bs!26796 (= (content!17 (right!1161 (right!1161 (left!1158 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (left!1158 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!385)))

(declare-fun d!45112 () Bool)

(declare-fun res!25134 () Bool)

(declare-fun e!28812 () Bool)

(assert (=> d!45112 (=> res!25134 e!28812)))

(assert (=> d!45112 (= res!25134 (not (is-Node!128 (right!1161 (left!1158 thiss!7690)))))))

(assert (=> d!45112 (= (inv!977 (right!1161 (left!1158 thiss!7690))) e!28812)))

(declare-fun e!28813 () Bool)

(assert (=> b!54804 (= e!28812 e!28813)))

(declare-fun res!25133 () Bool)

(assert (=> b!54804 (=> (not res!25133) (not e!28813))))

(assert (=> b!54804 (= res!25133 inst!394)))

(assert (=> b!54805 (= e!28813 inst!395)))

(assert (= (and d!45112 (not res!25134)) b!54804))

(assert (= neg-inst!382 inst!394))

(assert (= (and b!54804 res!25133) b!54805))

(assert (= neg-inst!383 inst!395))

(assert (=> b!54800 d!45112))

(declare-fun d!45114 () Bool)

(declare-fun c!11886 () Bool)

(assert (=> d!45114 (= c!11886 (is-Empty!167 (right!1161 thiss!7690)))))

(declare-fun e!28816 () (Set (_ BitVec 32)))

(assert (=> d!45114 (= (content!17 (right!1161 thiss!7690)) e!28816)))

(declare-fun b!54810 () Bool)

(assert (=> b!54810 (= e!28816 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54811 () Bool)

(assert (=> b!54811 (= e!28816 (union (union (content!17 (left!1158 (right!1161 thiss!7690))) (insert (elem!228 (right!1161 thiss!7690)) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1161 (right!1161 thiss!7690)))))))

(assert (= (and d!45114 c!11886) b!54810))

(assert (= (and d!45114 (not c!11886)) b!54811))

(assert (=> b!54811 m!59436))

(declare-fun m!59468 () Bool)

(assert (=> b!54811 m!59468))

(assert (=> b!54811 m!59440))

(assert (=> neg-inst!375 d!45114))

(declare-fun d!45116 () Bool)

(declare-fun c!11887 () Bool)

(assert (=> d!45116 (= c!11887 (is-Empty!167 (left!1158 thiss!7690)))))

(declare-fun e!28817 () (Set (_ BitVec 32)))

(assert (=> d!45116 (= (content!17 (left!1158 thiss!7690)) e!28817)))

(declare-fun b!54812 () Bool)

(assert (=> b!54812 (= e!28817 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54813 () Bool)

(assert (=> b!54813 (= e!28817 (union (union (content!17 (left!1158 (left!1158 thiss!7690))) (insert (elem!228 (left!1158 thiss!7690)) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1161 (left!1158 thiss!7690)))))))

(assert (= (and d!45116 c!11887) b!54812))

(assert (= (and d!45116 (not c!11887)) b!54813))

(assert (=> b!54813 m!59428))

(declare-fun m!59470 () Bool)

(assert (=> b!54813 m!59470))

(assert (=> b!54813 m!59432))

(assert (=> b!54790 d!45116))

(declare-fun d!45118 () Bool)

(declare-fun c!11888 () Bool)

(assert (=> d!45118 (= c!11888 (is-Empty!167 lt!9632))))

(declare-fun e!28818 () (Set (_ BitVec 32)))

(assert (=> d!45118 (= (content!17 lt!9632) e!28818)))

(declare-fun b!54814 () Bool)

(assert (=> b!54814 (= e!28818 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54815 () Bool)

(assert (=> b!54815 (= e!28818 (union (union (content!17 (left!1158 lt!9632)) (insert (elem!228 lt!9632) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1161 lt!9632))))))

(assert (= (and d!45118 c!11888) b!54814))

(assert (= (and d!45118 (not c!11888)) b!54815))

(declare-fun m!59472 () Bool)

(assert (=> b!54815 m!59472))

(declare-fun m!59474 () Bool)

(assert (=> b!54815 m!59474))

(declare-fun m!59476 () Bool)

(assert (=> b!54815 m!59476))

(assert (=> d!45102 d!45118))

(assert (=> d!45102 d!45114))

(declare-fun d!45120 () Bool)

(declare-fun c!11889 () Bool)

(assert (=> d!45120 (= c!11889 (is-Empty!167 (right!1161 (left!1158 thiss!7690))))))

(declare-fun e!28819 () (Set (_ BitVec 32)))

(assert (=> d!45120 (= (content!17 (right!1161 (left!1158 thiss!7690))) e!28819)))

(declare-fun b!54816 () Bool)

(assert (=> b!54816 (= e!28819 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54817 () Bool)

(assert (=> b!54817 (= e!28819 (union (union (content!17 (left!1158 (right!1161 (left!1158 thiss!7690)))) (insert (elem!228 (right!1161 (left!1158 thiss!7690))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))))))

(assert (= (and d!45120 c!11889) b!54816))

(assert (= (and d!45120 (not c!11889)) b!54817))

(assert (=> b!54817 m!59460))

(declare-fun m!59478 () Bool)

(assert (=> b!54817 m!59478))

(assert (=> b!54817 m!59464))

(assert (=> neg-inst!377 d!45120))

(assert (=> b!54791 d!45114))

(declare-fun b!54818 () Bool)

(declare-fun m!59480 () Bool)

(assert (=> b!54818 m!59480))

(declare-fun inst!396 () Bool)

(declare-fun x!21894 () (_ BitVec 32))

(assert (=> b!54818 (= inst!396 (=> true (or (not (member x!21894 (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))))) (bvslt x!21894 (elem!228 (left!1158 (right!1161 thiss!7690)))))))))

(declare-fun m!59482 () Bool)

(assert (=> b!54818 m!59482))

(declare-fun bs!26797 () Bool)

(assert (= bs!26797 (and b!54818 neg-inst!380)))

(assert (=> (and bs!26797 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!396 true)))

(declare-fun bs!26798 () Bool)

(assert (= bs!26798 (and b!54818 neg-inst!372)))

(assert (=> (and bs!26798 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!396 true)))

(declare-fun bs!26799 () Bool)

(assert (= bs!26799 (and b!54818 b!54792)))

(assert (=> (and bs!26799 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!396 inst!388)))

(declare-fun bs!26800 () Bool)

(assert (= bs!26800 (and b!54818 neg-inst!382)))

(assert (=> (and bs!26800 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!396 true)))

(declare-fun bs!26801 () Bool)

(assert (= bs!26801 (and b!54818 b!54773)))

(assert (=> (and bs!26801 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!396 inst!384)))

(declare-fun bs!26802 () Bool)

(assert (= bs!26802 (and b!54818 b!54802)))

(assert (=> (and bs!26802 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!396 inst!392)))

(declare-fun bs!26803 () Bool)

(assert (= bs!26803 (and b!54818 neg-inst!378)))

(assert (=> (and bs!26803 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!396 true)))

(declare-fun bs!26804 () Bool)

(assert (= bs!26804 (and b!54818 neg-inst!374)))

(assert (=> (and bs!26804 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= inst!396 true)))

(declare-fun bs!26805 () Bool)

(assert (= bs!26805 (and b!54818 b!54794)))

(assert (=> (and bs!26805 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!396 inst!390)))

(declare-fun bs!26806 () Bool)

(assert (= bs!26806 (and b!54818 neg-inst!376)))

(assert (=> (and bs!26806 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!396 true)))

(declare-fun bs!26807 () Bool)

(assert (= bs!26807 (and b!54818 b!54804)))

(assert (=> (and bs!26807 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!396 inst!394)))

(declare-fun bs!26808 () Bool)

(assert (= bs!26808 (and b!54818 b!54790)))

(assert (=> (and bs!26808 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= inst!396 inst!386)))

(declare-fun b!54819 () Bool)

(declare-fun m!59484 () Bool)

(assert (=> b!54819 m!59484))

(declare-fun inst!397 () Bool)

(declare-fun x!21895 () (_ BitVec 32))

(assert (=> b!54819 (= inst!397 (=> true (or (not (member x!21895 (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))))) (bvslt (elem!228 (left!1158 (right!1161 thiss!7690))) x!21895))))))

(declare-fun m!59486 () Bool)

(assert (=> b!54819 m!59486))

(declare-fun bs!26809 () Bool)

(assert (= bs!26809 (and b!54819 b!54793)))

(assert (=> (and bs!26809 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!397 inst!389)))

(declare-fun bs!26810 () Bool)

(assert (= bs!26810 (and b!54819 b!54803)))

(assert (=> (and bs!26810 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!397 inst!393)))

(declare-fun bs!26811 () Bool)

(assert (= bs!26811 (and b!54819 neg-inst!373)))

(assert (=> (and bs!26811 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!397 true)))

(declare-fun bs!26812 () Bool)

(assert (= bs!26812 (and b!54819 neg-inst!379)))

(assert (=> (and bs!26812 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!397 true)))

(declare-fun bs!26813 () Bool)

(assert (= bs!26813 (and b!54819 neg-inst!381)))

(assert (=> (and bs!26813 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!397 true)))

(declare-fun bs!26814 () Bool)

(assert (= bs!26814 (and b!54819 b!54791)))

(assert (=> (and bs!26814 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= inst!397 inst!387)))

(declare-fun bs!26815 () Bool)

(assert (= bs!26815 (and b!54819 b!54805)))

(assert (=> (and bs!26815 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!397 inst!395)))

(declare-fun bs!26816 () Bool)

(assert (= bs!26816 (and b!54819 neg-inst!377)))

(assert (=> (and bs!26816 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!397 true)))

(declare-fun bs!26817 () Bool)

(assert (= bs!26817 (and b!54819 b!54795)))

(assert (=> (and bs!26817 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!397 inst!391)))

(declare-fun bs!26818 () Bool)

(assert (= bs!26818 (and b!54819 neg-inst!383)))

(assert (=> (and bs!26818 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!397 true)))

(declare-fun bs!26819 () Bool)

(assert (= bs!26819 (and b!54819 neg-inst!375)))

(assert (=> (and bs!26819 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= inst!397 true)))

(declare-fun bs!26820 () Bool)

(assert (= bs!26820 (and b!54819 b!54774)))

(assert (=> (and bs!26820 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!397 inst!385)))

(declare-fun bs!26821 () Bool)

(declare-fun neg-inst!384 () Bool)

(assert (= bs!26821 neg-inst!384))

(assert (=> bs!26821 m!59480))

(declare-fun bs!26822 () Bool)

(declare-fun s!1549 () Bool)

(assert (= bs!26822 (and neg-inst!384 s!1549)))

(assert (=> bs!26822 (=> true (or (not (member x!21894 (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))))) (bvslt x!21894 (elem!228 (left!1158 (right!1161 thiss!7690))))))))

(assert (=> m!59482 s!1549))

(declare-fun bs!26823 () Bool)

(assert (= bs!26823 (and neg-inst!384 neg-inst!372)))

(assert (=> (and bs!26823 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26824 () Bool)

(assert (= bs!26824 (and neg-inst!384 neg-inst!380)))

(assert (=> (and bs!26824 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!26825 () Bool)

(assert (= bs!26825 (and neg-inst!384 b!54792)))

(assert (=> (and bs!26825 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true inst!388)))

(declare-fun bs!26826 () Bool)

(assert (= bs!26826 (and neg-inst!384 b!54773)))

(assert (=> (and bs!26826 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!384)))

(declare-fun bs!26827 () Bool)

(assert (= bs!26827 (and neg-inst!384 neg-inst!382)))

(assert (=> (and bs!26827 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!26828 () Bool)

(assert (= bs!26828 (and neg-inst!384 neg-inst!378)))

(assert (=> (and bs!26828 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true true)))

(declare-fun bs!26829 () Bool)

(assert (= bs!26829 (and neg-inst!384 b!54802)))

(assert (=> (and bs!26829 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true inst!392)))

(declare-fun bs!26830 () Bool)

(assert (= bs!26830 (and neg-inst!384 b!54818)))

(assert (=> bs!26830 (= true inst!396)))

(declare-fun bs!26831 () Bool)

(assert (= bs!26831 (and neg-inst!384 b!54794)))

(assert (=> (and bs!26831 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true inst!390)))

(declare-fun bs!26832 () Bool)

(assert (= bs!26832 (and neg-inst!384 neg-inst!374)))

(assert (=> (and bs!26832 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!26833 () Bool)

(assert (= bs!26833 (and neg-inst!384 neg-inst!376)))

(assert (=> (and bs!26833 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!26834 () Bool)

(assert (= bs!26834 (and neg-inst!384 b!54790)))

(assert (=> (and bs!26834 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= true inst!386)))

(declare-fun bs!26835 () Bool)

(assert (= bs!26835 (and neg-inst!384 b!54804)))

(assert (=> (and bs!26835 (= (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true inst!394)))

(declare-fun bs!26836 () Bool)

(declare-fun neg-inst!385 () Bool)

(assert (= bs!26836 neg-inst!385))

(assert (=> bs!26836 m!59484))

(declare-fun bs!26837 () Bool)

(declare-fun s!1551 () Bool)

(assert (= bs!26837 (and neg-inst!385 s!1551)))

(assert (=> bs!26837 (=> true (or (not (member x!21895 (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))))) (bvslt (elem!228 (left!1158 (right!1161 thiss!7690))) x!21895)))))

(assert (=> m!59486 s!1551))

(declare-fun bs!26838 () Bool)

(assert (= bs!26838 (and neg-inst!385 b!54793)))

(assert (=> (and bs!26838 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true inst!389)))

(declare-fun bs!26839 () Bool)

(assert (= bs!26839 (and neg-inst!385 b!54803)))

(assert (=> (and bs!26839 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true inst!393)))

(declare-fun bs!26840 () Bool)

(assert (= bs!26840 (and neg-inst!385 neg-inst!373)))

(assert (=> (and bs!26840 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26841 () Bool)

(assert (= bs!26841 (and neg-inst!385 neg-inst!379)))

(assert (=> (and bs!26841 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true true)))

(declare-fun bs!26842 () Bool)

(assert (= bs!26842 (and neg-inst!385 neg-inst!381)))

(assert (=> (and bs!26842 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!26843 () Bool)

(assert (= bs!26843 (and neg-inst!385 b!54791)))

(assert (=> (and bs!26843 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= true inst!387)))

(declare-fun bs!26844 () Bool)

(assert (= bs!26844 (and neg-inst!385 b!54805)))

(assert (=> (and bs!26844 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true inst!395)))

(declare-fun bs!26845 () Bool)

(assert (= bs!26845 (and neg-inst!385 neg-inst!377)))

(assert (=> (and bs!26845 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!26846 () Bool)

(assert (= bs!26846 (and neg-inst!385 b!54795)))

(assert (=> (and bs!26846 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true inst!391)))

(declare-fun bs!26847 () Bool)

(assert (= bs!26847 (and neg-inst!385 neg-inst!383)))

(assert (=> (and bs!26847 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!26848 () Bool)

(assert (= bs!26848 (and neg-inst!385 neg-inst!375)))

(assert (=> (and bs!26848 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!26849 () Bool)

(assert (= bs!26849 (and neg-inst!385 b!54819)))

(assert (=> bs!26849 (= true inst!397)))

(declare-fun bs!26850 () Bool)

(assert (= bs!26850 (and neg-inst!385 b!54774)))

(assert (=> (and bs!26850 (= (content!17 (right!1161 (left!1158 (right!1161 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!385)))

(declare-fun d!45122 () Bool)

(declare-fun res!25136 () Bool)

(declare-fun e!28820 () Bool)

(assert (=> d!45122 (=> res!25136 e!28820)))

(assert (=> d!45122 (= res!25136 (not (is-Node!128 (left!1158 (right!1161 thiss!7690)))))))

(assert (=> d!45122 (= (inv!977 (left!1158 (right!1161 thiss!7690))) e!28820)))

(declare-fun e!28821 () Bool)

(assert (=> b!54818 (= e!28820 e!28821)))

(declare-fun res!25135 () Bool)

(assert (=> b!54818 (=> (not res!25135) (not e!28821))))

(assert (=> b!54818 (= res!25135 inst!396)))

(assert (=> b!54819 (= e!28821 inst!397)))

(assert (= (and d!45122 (not res!25136)) b!54818))

(assert (= neg-inst!384 inst!396))

(assert (= (and b!54818 res!25135) b!54819))

(assert (= neg-inst!385 inst!397))

(assert (=> b!54801 d!45122))

(declare-fun b!54820 () Bool)

(declare-fun m!59488 () Bool)

(assert (=> b!54820 m!59488))

(declare-fun inst!398 () Bool)

(declare-fun x!21896 () (_ BitVec 32))

(assert (=> b!54820 (= inst!398 (=> true (or (not (member x!21896 (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))))) (bvslt x!21896 (elem!228 (right!1161 (right!1161 thiss!7690)))))))))

(declare-fun m!59490 () Bool)

(assert (=> b!54820 m!59490))

(declare-fun bs!26851 () Bool)

(assert (= bs!26851 (and b!54820 neg-inst!372)))

(assert (=> (and bs!26851 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!398 true)))

(declare-fun bs!26852 () Bool)

(assert (= bs!26852 (and b!54820 neg-inst!380)))

(assert (=> (and bs!26852 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!398 true)))

(declare-fun bs!26853 () Bool)

(assert (= bs!26853 (and b!54820 b!54792)))

(assert (=> (and bs!26853 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!398 inst!388)))

(declare-fun bs!26854 () Bool)

(assert (= bs!26854 (and b!54820 b!54773)))

(assert (=> (and bs!26854 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!398 inst!384)))

(declare-fun bs!26855 () Bool)

(assert (= bs!26855 (and b!54820 neg-inst!382)))

(assert (=> (and bs!26855 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!398 true)))

(declare-fun bs!26856 () Bool)

(assert (= bs!26856 (and b!54820 neg-inst!378)))

(assert (=> (and bs!26856 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!398 true)))

(declare-fun bs!26857 () Bool)

(assert (= bs!26857 (and b!54820 b!54802)))

(assert (=> (and bs!26857 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!398 inst!392)))

(declare-fun bs!26858 () Bool)

(assert (= bs!26858 (and b!54820 b!54818)))

(assert (=> (and bs!26858 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!398 inst!396)))

(declare-fun bs!26859 () Bool)

(assert (= bs!26859 (and b!54820 b!54794)))

(assert (=> (and bs!26859 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!398 inst!390)))

(declare-fun bs!26860 () Bool)

(assert (= bs!26860 (and b!54820 neg-inst!374)))

(assert (=> (and bs!26860 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= inst!398 true)))

(declare-fun bs!26861 () Bool)

(assert (= bs!26861 (and b!54820 neg-inst!384)))

(assert (=> (and bs!26861 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!398 true)))

(declare-fun bs!26862 () Bool)

(assert (= bs!26862 (and b!54820 neg-inst!376)))

(assert (=> (and bs!26862 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!398 true)))

(declare-fun bs!26863 () Bool)

(assert (= bs!26863 (and b!54820 b!54790)))

(assert (=> (and bs!26863 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= inst!398 inst!386)))

(declare-fun bs!26864 () Bool)

(assert (= bs!26864 (and b!54820 b!54804)))

(assert (=> (and bs!26864 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!398 inst!394)))

(declare-fun b!54821 () Bool)

(declare-fun m!59492 () Bool)

(assert (=> b!54821 m!59492))

(declare-fun inst!399 () Bool)

(declare-fun x!21897 () (_ BitVec 32))

(assert (=> b!54821 (= inst!399 (=> true (or (not (member x!21897 (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))))) (bvslt (elem!228 (right!1161 (right!1161 thiss!7690))) x!21897))))))

(declare-fun m!59494 () Bool)

(assert (=> b!54821 m!59494))

(declare-fun bs!26865 () Bool)

(assert (= bs!26865 (and b!54821 b!54793)))

(assert (=> (and bs!26865 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!399 inst!389)))

(declare-fun bs!26866 () Bool)

(assert (= bs!26866 (and b!54821 b!54803)))

(assert (=> (and bs!26866 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!399 inst!393)))

(declare-fun bs!26867 () Bool)

(assert (= bs!26867 (and b!54821 neg-inst!385)))

(assert (=> (and bs!26867 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!399 true)))

(declare-fun bs!26868 () Bool)

(assert (= bs!26868 (and b!54821 neg-inst!373)))

(assert (=> (and bs!26868 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!399 true)))

(declare-fun bs!26869 () Bool)

(assert (= bs!26869 (and b!54821 neg-inst!379)))

(assert (=> (and bs!26869 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!399 true)))

(declare-fun bs!26870 () Bool)

(assert (= bs!26870 (and b!54821 neg-inst!381)))

(assert (=> (and bs!26870 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!399 true)))

(declare-fun bs!26871 () Bool)

(assert (= bs!26871 (and b!54821 b!54791)))

(assert (=> (and bs!26871 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= inst!399 inst!387)))

(declare-fun bs!26872 () Bool)

(assert (= bs!26872 (and b!54821 b!54805)))

(assert (=> (and bs!26872 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!399 inst!395)))

(declare-fun bs!26873 () Bool)

(assert (= bs!26873 (and b!54821 neg-inst!377)))

(assert (=> (and bs!26873 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= inst!399 true)))

(declare-fun bs!26874 () Bool)

(assert (= bs!26874 (and b!54821 b!54795)))

(assert (=> (and bs!26874 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= inst!399 inst!391)))

(declare-fun bs!26875 () Bool)

(assert (= bs!26875 (and b!54821 neg-inst!383)))

(assert (=> (and bs!26875 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!399 true)))

(declare-fun bs!26876 () Bool)

(assert (= bs!26876 (and b!54821 neg-inst!375)))

(assert (=> (and bs!26876 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= inst!399 true)))

(declare-fun bs!26877 () Bool)

(assert (= bs!26877 (and b!54821 b!54819)))

(assert (=> (and bs!26877 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!399 inst!397)))

(declare-fun bs!26878 () Bool)

(assert (= bs!26878 (and b!54821 b!54774)))

(assert (=> (and bs!26878 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!399 inst!385)))

(declare-fun bs!26879 () Bool)

(declare-fun neg-inst!386 () Bool)

(assert (= bs!26879 neg-inst!386))

(assert (=> bs!26879 m!59488))

(declare-fun bs!26880 () Bool)

(declare-fun s!1553 () Bool)

(assert (= bs!26880 (and neg-inst!386 s!1553)))

(assert (=> bs!26880 (=> true (or (not (member x!21896 (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))))) (bvslt x!21896 (elem!228 (right!1161 (right!1161 thiss!7690))))))))

(assert (=> m!59490 s!1553))

(declare-fun bs!26881 () Bool)

(assert (= bs!26881 (and neg-inst!386 neg-inst!372)))

(assert (=> (and bs!26881 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26882 () Bool)

(assert (= bs!26882 (and neg-inst!386 neg-inst!380)))

(assert (=> (and bs!26882 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!26883 () Bool)

(assert (= bs!26883 (and neg-inst!386 b!54792)))

(assert (=> (and bs!26883 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true inst!388)))

(declare-fun bs!26884 () Bool)

(assert (= bs!26884 (and neg-inst!386 b!54773)))

(assert (=> (and bs!26884 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!384)))

(declare-fun bs!26885 () Bool)

(assert (= bs!26885 (and neg-inst!386 neg-inst!382)))

(assert (=> (and bs!26885 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!26886 () Bool)

(assert (= bs!26886 (and neg-inst!386 neg-inst!378)))

(assert (=> (and bs!26886 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true true)))

(declare-fun bs!26887 () Bool)

(assert (= bs!26887 (and neg-inst!386 b!54802)))

(assert (=> (and bs!26887 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true inst!392)))

(declare-fun bs!26888 () Bool)

(assert (= bs!26888 (and neg-inst!386 b!54818)))

(assert (=> (and bs!26888 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true inst!396)))

(declare-fun bs!26889 () Bool)

(assert (= bs!26889 (and neg-inst!386 b!54794)))

(assert (=> (and bs!26889 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true inst!390)))

(declare-fun bs!26890 () Bool)

(assert (= bs!26890 (and neg-inst!386 neg-inst!374)))

(assert (=> (and bs!26890 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!26891 () Bool)

(assert (= bs!26891 (and neg-inst!386 b!54820)))

(assert (=> bs!26891 (= true inst!398)))

(declare-fun bs!26892 () Bool)

(assert (= bs!26892 (and neg-inst!386 neg-inst!384)))

(assert (=> (and bs!26892 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true true)))

(declare-fun bs!26893 () Bool)

(assert (= bs!26893 (and neg-inst!386 neg-inst!376)))

(assert (=> (and bs!26893 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!26894 () Bool)

(assert (= bs!26894 (and neg-inst!386 b!54790)))

(assert (=> (and bs!26894 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= true inst!386)))

(declare-fun bs!26895 () Bool)

(assert (= bs!26895 (and neg-inst!386 b!54804)))

(assert (=> (and bs!26895 (= (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true inst!394)))

(declare-fun bs!26896 () Bool)

(declare-fun neg-inst!387 () Bool)

(assert (= bs!26896 neg-inst!387))

(assert (=> bs!26896 m!59492))

(declare-fun bs!26897 () Bool)

(declare-fun s!1555 () Bool)

(assert (= bs!26897 (and neg-inst!387 s!1555)))

(assert (=> bs!26897 (=> true (or (not (member x!21897 (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))))) (bvslt (elem!228 (right!1161 (right!1161 thiss!7690))) x!21897)))))

(assert (=> m!59494 s!1555))

(declare-fun bs!26898 () Bool)

(assert (= bs!26898 (and neg-inst!387 b!54793)))

(assert (=> (and bs!26898 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true inst!389)))

(declare-fun bs!26899 () Bool)

(assert (= bs!26899 (and neg-inst!387 b!54821)))

(assert (=> bs!26899 (= true inst!399)))

(declare-fun bs!26900 () Bool)

(assert (= bs!26900 (and neg-inst!387 b!54803)))

(assert (=> (and bs!26900 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true inst!393)))

(declare-fun bs!26901 () Bool)

(assert (= bs!26901 (and neg-inst!387 neg-inst!385)))

(assert (=> (and bs!26901 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true true)))

(declare-fun bs!26902 () Bool)

(assert (= bs!26902 (and neg-inst!387 neg-inst!373)))

(assert (=> (and bs!26902 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26903 () Bool)

(assert (= bs!26903 (and neg-inst!387 neg-inst!379)))

(assert (=> (and bs!26903 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true true)))

(declare-fun bs!26904 () Bool)

(assert (= bs!26904 (and neg-inst!387 neg-inst!381)))

(assert (=> (and bs!26904 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!26905 () Bool)

(assert (= bs!26905 (and neg-inst!387 b!54791)))

(assert (=> (and bs!26905 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= true inst!387)))

(declare-fun bs!26906 () Bool)

(assert (= bs!26906 (and neg-inst!387 b!54805)))

(assert (=> (and bs!26906 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true inst!395)))

(declare-fun bs!26907 () Bool)

(assert (= bs!26907 (and neg-inst!387 neg-inst!377)))

(assert (=> (and bs!26907 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!26908 () Bool)

(assert (= bs!26908 (and neg-inst!387 b!54795)))

(assert (=> (and bs!26908 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 thiss!7690)))) (= true inst!391)))

(declare-fun bs!26909 () Bool)

(assert (= bs!26909 (and neg-inst!387 neg-inst!383)))

(assert (=> (and bs!26909 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!26910 () Bool)

(assert (= bs!26910 (and neg-inst!387 neg-inst!375)))

(assert (=> (and bs!26910 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!26911 () Bool)

(assert (= bs!26911 (and neg-inst!387 b!54819)))

(assert (=> (and bs!26911 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true inst!397)))

(declare-fun bs!26912 () Bool)

(assert (= bs!26912 (and neg-inst!387 b!54774)))

(assert (=> (and bs!26912 (= (content!17 (right!1161 (right!1161 (right!1161 thiss!7690)))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 (right!1161 thiss!7690))) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!385)))

(declare-fun d!45124 () Bool)

(declare-fun res!25138 () Bool)

(declare-fun e!28822 () Bool)

(assert (=> d!45124 (=> res!25138 e!28822)))

(assert (=> d!45124 (= res!25138 (not (is-Node!128 (right!1161 (right!1161 thiss!7690)))))))

(assert (=> d!45124 (= (inv!977 (right!1161 (right!1161 thiss!7690))) e!28822)))

(declare-fun e!28823 () Bool)

(assert (=> b!54820 (= e!28822 e!28823)))

(declare-fun res!25137 () Bool)

(assert (=> b!54820 (=> (not res!25137) (not e!28823))))

(assert (=> b!54820 (= res!25137 inst!398)))

(assert (=> b!54821 (= e!28823 inst!399)))

(assert (= (and d!45124 (not res!25138)) b!54820))

(assert (= neg-inst!386 inst!398))

(assert (= (and b!54820 res!25137) b!54821))

(assert (= neg-inst!387 inst!399))

(assert (=> b!54801 d!45124))

(declare-fun d!45126 () Bool)

(declare-fun c!11890 () Bool)

(assert (=> d!45126 (= c!11890 (is-Empty!167 (right!1161 (right!1161 thiss!7690))))))

(declare-fun e!28824 () (Set (_ BitVec 32)))

(assert (=> d!45126 (= (content!17 (right!1161 (right!1161 thiss!7690))) e!28824)))

(declare-fun b!54822 () Bool)

(assert (=> b!54822 (= e!28824 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54823 () Bool)

(assert (=> b!54823 (= e!28824 (union (union (content!17 (left!1158 (right!1161 (right!1161 thiss!7690)))) (insert (elem!228 (right!1161 (right!1161 thiss!7690))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1161 (right!1161 (right!1161 thiss!7690))))))))

(assert (= (and d!45126 c!11890) b!54822))

(assert (= (and d!45126 (not c!11890)) b!54823))

(assert (=> b!54823 m!59488))

(declare-fun m!59496 () Bool)

(assert (=> b!54823 m!59496))

(assert (=> b!54823 m!59492))

(assert (=> b!54795 d!45126))

(assert (=> neg-inst!379 d!45126))

(declare-fun b!54824 () Bool)

(declare-fun m!59498 () Bool)

(assert (=> b!54824 m!59498))

(declare-fun inst!400 () Bool)

(declare-fun x!21898 () (_ BitVec 32))

(assert (=> b!54824 (= inst!400 (=> true (or (not (member x!21898 (content!17 (left!1158 (left!1158 res!25124))))) (bvslt x!21898 (elem!228 (left!1158 res!25124))))))))

(declare-fun m!59500 () Bool)

(assert (=> b!54824 m!59500))

(declare-fun bs!26913 () Bool)

(assert (= bs!26913 (and b!54824 neg-inst!372)))

(assert (=> (and bs!26913 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!400 true)))

(declare-fun bs!26914 () Bool)

(assert (= bs!26914 (and b!54824 neg-inst!380)))

(assert (=> (and bs!26914 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!400 true)))

(declare-fun bs!26915 () Bool)

(assert (= bs!26915 (and b!54824 b!54792)))

(assert (=> (and bs!26915 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= inst!400 inst!388)))

(declare-fun bs!26916 () Bool)

(assert (= bs!26916 (and b!54824 b!54773)))

(assert (=> (and bs!26916 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!400 inst!384)))

(declare-fun bs!26917 () Bool)

(assert (= bs!26917 (and b!54824 neg-inst!382)))

(assert (=> (and bs!26917 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!400 true)))

(declare-fun bs!26918 () Bool)

(assert (= bs!26918 (and b!54824 neg-inst!378)))

(assert (=> (and bs!26918 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= inst!400 true)))

(declare-fun bs!26919 () Bool)

(assert (= bs!26919 (and b!54824 b!54802)))

(assert (=> (and bs!26919 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!400 inst!392)))

(declare-fun bs!26920 () Bool)

(assert (= bs!26920 (and b!54824 b!54818)))

(assert (=> (and bs!26920 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!400 inst!396)))

(declare-fun bs!26921 () Bool)

(assert (= bs!26921 (and b!54824 b!54794)))

(assert (=> (and bs!26921 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= inst!400 inst!390)))

(declare-fun bs!26922 () Bool)

(assert (= bs!26922 (and b!54824 neg-inst!374)))

(assert (=> (and bs!26922 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 res!25124)) (elem!228 thiss!7690))) (= inst!400 true)))

(declare-fun bs!26923 () Bool)

(assert (= bs!26923 (and b!54824 b!54820)))

(assert (=> (and bs!26923 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= inst!400 inst!398)))

(declare-fun bs!26924 () Bool)

(assert (= bs!26924 (and b!54824 neg-inst!384)))

(assert (=> (and bs!26924 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!400 true)))

(declare-fun bs!26925 () Bool)

(assert (= bs!26925 (and b!54824 neg-inst!376)))

(assert (=> (and bs!26925 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= inst!400 true)))

(declare-fun bs!26926 () Bool)

(assert (= bs!26926 (and b!54824 b!54790)))

(assert (=> (and bs!26926 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 res!25124)) (elem!228 thiss!7690))) (= inst!400 inst!386)))

(declare-fun bs!26927 () Bool)

(assert (= bs!26927 (and b!54824 b!54804)))

(assert (=> (and bs!26927 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!400 inst!394)))

(declare-fun bs!26928 () Bool)

(assert (= bs!26928 (and b!54824 neg-inst!386)))

(assert (=> (and bs!26928 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= inst!400 true)))

(declare-fun b!54825 () Bool)

(declare-fun m!59502 () Bool)

(assert (=> b!54825 m!59502))

(declare-fun inst!401 () Bool)

(declare-fun x!21899 () (_ BitVec 32))

(assert (=> b!54825 (= inst!401 (=> true (or (not (member x!21899 (content!17 (right!1161 (left!1158 res!25124))))) (bvslt (elem!228 (left!1158 res!25124)) x!21899))))))

(declare-fun m!59504 () Bool)

(assert (=> b!54825 m!59504))

(declare-fun bs!26929 () Bool)

(assert (= bs!26929 (and b!54825 b!54793)))

(assert (=> (and bs!26929 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= inst!401 inst!389)))

(declare-fun bs!26930 () Bool)

(assert (= bs!26930 (and b!54825 b!54821)))

(assert (=> (and bs!26930 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= inst!401 inst!399)))

(declare-fun bs!26931 () Bool)

(assert (= bs!26931 (and b!54825 b!54803)))

(assert (=> (and bs!26931 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!401 inst!393)))

(declare-fun bs!26932 () Bool)

(assert (= bs!26932 (and b!54825 neg-inst!385)))

(assert (=> (and bs!26932 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!401 true)))

(declare-fun bs!26933 () Bool)

(assert (= bs!26933 (and b!54825 neg-inst!387)))

(assert (=> (and bs!26933 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= inst!401 true)))

(declare-fun bs!26934 () Bool)

(assert (= bs!26934 (and b!54825 neg-inst!373)))

(assert (=> (and bs!26934 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!401 true)))

(declare-fun bs!26935 () Bool)

(assert (= bs!26935 (and b!54825 neg-inst!379)))

(assert (=> (and bs!26935 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= inst!401 true)))

(declare-fun bs!26936 () Bool)

(assert (= bs!26936 (and b!54825 neg-inst!381)))

(assert (=> (and bs!26936 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!401 true)))

(declare-fun bs!26937 () Bool)

(assert (= bs!26937 (and b!54825 b!54791)))

(assert (=> (and bs!26937 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 res!25124)) (elem!228 thiss!7690))) (= inst!401 inst!387)))

(declare-fun bs!26938 () Bool)

(assert (= bs!26938 (and b!54825 b!54805)))

(assert (=> (and bs!26938 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!401 inst!395)))

(declare-fun bs!26939 () Bool)

(assert (= bs!26939 (and b!54825 neg-inst!377)))

(assert (=> (and bs!26939 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= inst!401 true)))

(declare-fun bs!26940 () Bool)

(assert (= bs!26940 (and b!54825 b!54795)))

(assert (=> (and bs!26940 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= inst!401 inst!391)))

(declare-fun bs!26941 () Bool)

(assert (= bs!26941 (and b!54825 neg-inst!383)))

(assert (=> (and bs!26941 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!401 true)))

(declare-fun bs!26942 () Bool)

(assert (= bs!26942 (and b!54825 neg-inst!375)))

(assert (=> (and bs!26942 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 res!25124)) (elem!228 thiss!7690))) (= inst!401 true)))

(declare-fun bs!26943 () Bool)

(assert (= bs!26943 (and b!54825 b!54819)))

(assert (=> (and bs!26943 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!401 inst!397)))

(declare-fun bs!26944 () Bool)

(assert (= bs!26944 (and b!54825 b!54774)))

(assert (=> (and bs!26944 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!401 inst!385)))

(declare-fun bs!26945 () Bool)

(declare-fun neg-inst!388 () Bool)

(assert (= bs!26945 neg-inst!388))

(assert (=> bs!26945 m!59498))

(declare-fun bs!26946 () Bool)

(declare-fun s!1557 () Bool)

(assert (= bs!26946 (and neg-inst!388 s!1557)))

(assert (=> bs!26946 (=> true (or (not (member x!21898 (content!17 (left!1158 (left!1158 res!25124))))) (bvslt x!21898 (elem!228 (left!1158 res!25124)))))))

(assert (=> m!59500 s!1557))

(declare-fun bs!26947 () Bool)

(assert (= bs!26947 (and neg-inst!388 neg-inst!372)))

(assert (=> (and bs!26947 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26948 () Bool)

(assert (= bs!26948 (and neg-inst!388 neg-inst!380)))

(assert (=> (and bs!26948 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!26949 () Bool)

(assert (= bs!26949 (and neg-inst!388 b!54792)))

(assert (=> (and bs!26949 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= true inst!388)))

(declare-fun bs!26950 () Bool)

(assert (= bs!26950 (and neg-inst!388 b!54773)))

(assert (=> (and bs!26950 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!384)))

(declare-fun bs!26951 () Bool)

(assert (= bs!26951 (and neg-inst!388 neg-inst!382)))

(assert (=> (and bs!26951 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!26952 () Bool)

(assert (= bs!26952 (and neg-inst!388 neg-inst!378)))

(assert (=> (and bs!26952 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= true true)))

(declare-fun bs!26953 () Bool)

(assert (= bs!26953 (and neg-inst!388 b!54802)))

(assert (=> (and bs!26953 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true inst!392)))

(declare-fun bs!26954 () Bool)

(assert (= bs!26954 (and neg-inst!388 b!54818)))

(assert (=> (and bs!26954 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true inst!396)))

(declare-fun bs!26955 () Bool)

(assert (= bs!26955 (and neg-inst!388 b!54794)))

(assert (=> (and bs!26955 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= true inst!390)))

(declare-fun bs!26956 () Bool)

(assert (= bs!26956 (and neg-inst!388 neg-inst!374)))

(assert (=> (and bs!26956 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 res!25124)) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!26957 () Bool)

(assert (= bs!26957 (and neg-inst!388 b!54820)))

(assert (=> (and bs!26957 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= true inst!398)))

(declare-fun bs!26958 () Bool)

(assert (= bs!26958 (and neg-inst!388 neg-inst!384)))

(assert (=> (and bs!26958 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true true)))

(declare-fun bs!26959 () Bool)

(assert (= bs!26959 (and neg-inst!388 neg-inst!376)))

(assert (=> (and bs!26959 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!26960 () Bool)

(assert (= bs!26960 (and neg-inst!388 b!54790)))

(assert (=> (and bs!26960 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (left!1158 res!25124)) (elem!228 thiss!7690))) (= true inst!386)))

(declare-fun bs!26961 () Bool)

(assert (= bs!26961 (and neg-inst!388 b!54804)))

(assert (=> (and bs!26961 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true inst!394)))

(declare-fun bs!26962 () Bool)

(assert (= bs!26962 (and neg-inst!388 b!54824)))

(assert (=> bs!26962 (= true inst!400)))

(declare-fun bs!26963 () Bool)

(assert (= bs!26963 (and neg-inst!388 neg-inst!386)))

(assert (=> (and bs!26963 (= (content!17 (left!1158 (left!1158 res!25124))) (content!17 (left!1158 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= true true)))

(declare-fun bs!26964 () Bool)

(declare-fun neg-inst!389 () Bool)

(assert (= bs!26964 neg-inst!389))

(assert (=> bs!26964 m!59502))

(declare-fun bs!26965 () Bool)

(declare-fun s!1559 () Bool)

(assert (= bs!26965 (and neg-inst!389 s!1559)))

(assert (=> bs!26965 (=> true (or (not (member x!21899 (content!17 (right!1161 (left!1158 res!25124))))) (bvslt (elem!228 (left!1158 res!25124)) x!21899)))))

(assert (=> m!59504 s!1559))

(declare-fun bs!26966 () Bool)

(assert (= bs!26966 (and neg-inst!389 b!54793)))

(assert (=> (and bs!26966 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= true inst!389)))

(declare-fun bs!26967 () Bool)

(assert (= bs!26967 (and neg-inst!389 b!54821)))

(assert (=> (and bs!26967 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= true inst!399)))

(declare-fun bs!26968 () Bool)

(assert (= bs!26968 (and neg-inst!389 b!54803)))

(assert (=> (and bs!26968 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true inst!393)))

(declare-fun bs!26969 () Bool)

(assert (= bs!26969 (and neg-inst!389 neg-inst!385)))

(assert (=> (and bs!26969 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true true)))

(declare-fun bs!26970 () Bool)

(assert (= bs!26970 (and neg-inst!389 neg-inst!387)))

(assert (=> (and bs!26970 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= true true)))

(declare-fun bs!26971 () Bool)

(assert (= bs!26971 (and neg-inst!389 neg-inst!373)))

(assert (=> (and bs!26971 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!26972 () Bool)

(assert (= bs!26972 (and neg-inst!389 neg-inst!379)))

(assert (=> (and bs!26972 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= true true)))

(declare-fun bs!26973 () Bool)

(assert (= bs!26973 (and neg-inst!389 b!54825)))

(assert (=> bs!26973 (= true inst!401)))

(declare-fun bs!26974 () Bool)

(assert (= bs!26974 (and neg-inst!389 neg-inst!381)))

(assert (=> (and bs!26974 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!26975 () Bool)

(assert (= bs!26975 (and neg-inst!389 b!54791)))

(assert (=> (and bs!26975 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 res!25124)) (elem!228 thiss!7690))) (= true inst!387)))

(declare-fun bs!26976 () Bool)

(assert (= bs!26976 (and neg-inst!389 b!54805)))

(assert (=> (and bs!26976 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true inst!395)))

(declare-fun bs!26977 () Bool)

(assert (= bs!26977 (and neg-inst!389 neg-inst!377)))

(assert (=> (and bs!26977 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!26978 () Bool)

(assert (= bs!26978 (and neg-inst!389 b!54795)))

(assert (=> (and bs!26978 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= true inst!391)))

(declare-fun bs!26979 () Bool)

(assert (= bs!26979 (and neg-inst!389 neg-inst!383)))

(assert (=> (and bs!26979 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!26980 () Bool)

(assert (= bs!26980 (and neg-inst!389 neg-inst!375)))

(assert (=> (and bs!26980 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (left!1158 res!25124)) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!26981 () Bool)

(assert (= bs!26981 (and neg-inst!389 b!54819)))

(assert (=> (and bs!26981 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true inst!397)))

(declare-fun bs!26982 () Bool)

(assert (= bs!26982 (and neg-inst!389 b!54774)))

(assert (=> (and bs!26982 (= (content!17 (right!1161 (left!1158 res!25124))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (left!1158 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!385)))

(declare-fun d!45128 () Bool)

(declare-fun res!25140 () Bool)

(declare-fun e!28825 () Bool)

(assert (=> d!45128 (=> res!25140 e!28825)))

(assert (=> d!45128 (= res!25140 (not (is-Node!128 (left!1158 res!25124))))))

(assert (=> d!45128 (= (inv!977 (left!1158 res!25124)) e!28825)))

(declare-fun e!28826 () Bool)

(assert (=> b!54824 (= e!28825 e!28826)))

(declare-fun res!25139 () Bool)

(assert (=> b!54824 (=> (not res!25139) (not e!28826))))

(assert (=> b!54824 (= res!25139 inst!400)))

(assert (=> b!54825 (= e!28826 inst!401)))

(assert (= (and d!45128 (not res!25140)) b!54824))

(assert (= neg-inst!388 inst!400))

(assert (= (and b!54824 res!25139) b!54825))

(assert (= neg-inst!389 inst!401))

(assert (=> b!54788 d!45128))

(declare-fun b!54826 () Bool)

(declare-fun m!59506 () Bool)

(assert (=> b!54826 m!59506))

(declare-fun inst!402 () Bool)

(declare-fun x!21900 () (_ BitVec 32))

(assert (=> b!54826 (= inst!402 (=> true (or (not (member x!21900 (content!17 (left!1158 (right!1161 res!25124))))) (bvslt x!21900 (elem!228 (right!1161 res!25124))))))))

(declare-fun m!59508 () Bool)

(assert (=> b!54826 m!59508))

(declare-fun bs!26983 () Bool)

(assert (= bs!26983 (and b!54826 neg-inst!372)))

(assert (=> (and bs!26983 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!402 true)))

(declare-fun bs!26984 () Bool)

(assert (= bs!26984 (and b!54826 neg-inst!380)))

(assert (=> (and bs!26984 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!402 true)))

(declare-fun bs!26985 () Bool)

(assert (= bs!26985 (and b!54826 b!54792)))

(assert (=> (and bs!26985 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= inst!402 inst!388)))

(declare-fun bs!26986 () Bool)

(assert (= bs!26986 (and b!54826 neg-inst!388)))

(assert (=> (and bs!26986 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 res!25124)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 res!25124)))) (= inst!402 true)))

(declare-fun bs!26987 () Bool)

(assert (= bs!26987 (and b!54826 b!54773)))

(assert (=> (and bs!26987 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!402 inst!384)))

(declare-fun bs!26988 () Bool)

(assert (= bs!26988 (and b!54826 neg-inst!382)))

(assert (=> (and bs!26988 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!402 true)))

(declare-fun bs!26989 () Bool)

(assert (= bs!26989 (and b!54826 neg-inst!378)))

(assert (=> (and bs!26989 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= inst!402 true)))

(declare-fun bs!26990 () Bool)

(assert (= bs!26990 (and b!54826 b!54802)))

(assert (=> (and bs!26990 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!402 inst!392)))

(declare-fun bs!26991 () Bool)

(assert (= bs!26991 (and b!54826 b!54818)))

(assert (=> (and bs!26991 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!402 inst!396)))

(declare-fun bs!26992 () Bool)

(assert (= bs!26992 (and b!54826 b!54794)))

(assert (=> (and bs!26992 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= inst!402 inst!390)))

(declare-fun bs!26993 () Bool)

(assert (= bs!26993 (and b!54826 neg-inst!374)))

(assert (=> (and bs!26993 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 res!25124)) (elem!228 thiss!7690))) (= inst!402 true)))

(declare-fun bs!26994 () Bool)

(assert (= bs!26994 (and b!54826 b!54820)))

(assert (=> (and bs!26994 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= inst!402 inst!398)))

(declare-fun bs!26995 () Bool)

(assert (= bs!26995 (and b!54826 neg-inst!384)))

(assert (=> (and bs!26995 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!402 true)))

(declare-fun bs!26996 () Bool)

(assert (= bs!26996 (and b!54826 neg-inst!376)))

(assert (=> (and bs!26996 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= inst!402 true)))

(declare-fun bs!26997 () Bool)

(assert (= bs!26997 (and b!54826 b!54790)))

(assert (=> (and bs!26997 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 res!25124)) (elem!228 thiss!7690))) (= inst!402 inst!386)))

(declare-fun bs!26998 () Bool)

(assert (= bs!26998 (and b!54826 b!54804)))

(assert (=> (and bs!26998 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!402 inst!394)))

(declare-fun bs!26999 () Bool)

(assert (= bs!26999 (and b!54826 b!54824)))

(assert (=> (and bs!26999 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 res!25124)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 res!25124)))) (= inst!402 inst!400)))

(declare-fun bs!27000 () Bool)

(assert (= bs!27000 (and b!54826 neg-inst!386)))

(assert (=> (and bs!27000 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= inst!402 true)))

(declare-fun b!54827 () Bool)

(declare-fun m!59510 () Bool)

(assert (=> b!54827 m!59510))

(declare-fun inst!403 () Bool)

(declare-fun x!21901 () (_ BitVec 32))

(assert (=> b!54827 (= inst!403 (=> true (or (not (member x!21901 (content!17 (right!1161 (right!1161 res!25124))))) (bvslt (elem!228 (right!1161 res!25124)) x!21901))))))

(declare-fun m!59512 () Bool)

(assert (=> b!54827 m!59512))

(declare-fun bs!27001 () Bool)

(assert (= bs!27001 (and b!54827 b!54793)))

(assert (=> (and bs!27001 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= inst!403 inst!389)))

(declare-fun bs!27002 () Bool)

(assert (= bs!27002 (and b!54827 b!54821)))

(assert (=> (and bs!27002 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= inst!403 inst!399)))

(declare-fun bs!27003 () Bool)

(assert (= bs!27003 (and b!54827 b!54803)))

(assert (=> (and bs!27003 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!403 inst!393)))

(declare-fun bs!27004 () Bool)

(assert (= bs!27004 (and b!54827 neg-inst!385)))

(assert (=> (and bs!27004 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!403 true)))

(declare-fun bs!27005 () Bool)

(assert (= bs!27005 (and b!54827 neg-inst!387)))

(assert (=> (and bs!27005 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= inst!403 true)))

(declare-fun bs!27006 () Bool)

(assert (= bs!27006 (and b!54827 neg-inst!373)))

(assert (=> (and bs!27006 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!403 true)))

(declare-fun bs!27007 () Bool)

(assert (= bs!27007 (and b!54827 neg-inst!379)))

(assert (=> (and bs!27007 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= inst!403 true)))

(declare-fun bs!27008 () Bool)

(assert (= bs!27008 (and b!54827 b!54825)))

(assert (=> (and bs!27008 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 res!25124)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 res!25124)))) (= inst!403 inst!401)))

(declare-fun bs!27009 () Bool)

(assert (= bs!27009 (and b!54827 neg-inst!381)))

(assert (=> (and bs!27009 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!403 true)))

(declare-fun bs!27010 () Bool)

(assert (= bs!27010 (and b!54827 b!54791)))

(assert (=> (and bs!27010 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 res!25124)) (elem!228 thiss!7690))) (= inst!403 inst!387)))

(declare-fun bs!27011 () Bool)

(assert (= bs!27011 (and b!54827 b!54805)))

(assert (=> (and bs!27011 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!403 inst!395)))

(declare-fun bs!27012 () Bool)

(assert (= bs!27012 (and b!54827 neg-inst!377)))

(assert (=> (and bs!27012 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= inst!403 true)))

(declare-fun bs!27013 () Bool)

(assert (= bs!27013 (and b!54827 b!54795)))

(assert (=> (and bs!27013 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= inst!403 inst!391)))

(declare-fun bs!27014 () Bool)

(assert (= bs!27014 (and b!54827 neg-inst!383)))

(assert (=> (and bs!27014 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!403 true)))

(declare-fun bs!27015 () Bool)

(assert (= bs!27015 (and b!54827 neg-inst!375)))

(assert (=> (and bs!27015 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 res!25124)) (elem!228 thiss!7690))) (= inst!403 true)))

(declare-fun bs!27016 () Bool)

(assert (= bs!27016 (and b!54827 neg-inst!389)))

(assert (=> (and bs!27016 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 res!25124)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 res!25124)))) (= inst!403 true)))

(declare-fun bs!27017 () Bool)

(assert (= bs!27017 (and b!54827 b!54819)))

(assert (=> (and bs!27017 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!403 inst!397)))

(declare-fun bs!27018 () Bool)

(assert (= bs!27018 (and b!54827 b!54774)))

(assert (=> (and bs!27018 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!403 inst!385)))

(declare-fun bs!27019 () Bool)

(declare-fun neg-inst!390 () Bool)

(assert (= bs!27019 neg-inst!390))

(assert (=> bs!27019 m!59506))

(declare-fun bs!27020 () Bool)

(declare-fun s!1561 () Bool)

(assert (= bs!27020 (and neg-inst!390 s!1561)))

(assert (=> bs!27020 (=> true (or (not (member x!21900 (content!17 (left!1158 (right!1161 res!25124))))) (bvslt x!21900 (elem!228 (right!1161 res!25124)))))))

(assert (=> m!59508 s!1561))

(declare-fun bs!27021 () Bool)

(assert (= bs!27021 (and neg-inst!390 neg-inst!372)))

(assert (=> (and bs!27021 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!27022 () Bool)

(assert (= bs!27022 (and neg-inst!390 neg-inst!380)))

(assert (=> (and bs!27022 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!27023 () Bool)

(assert (= bs!27023 (and neg-inst!390 b!54792)))

(assert (=> (and bs!27023 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= true inst!388)))

(declare-fun bs!27024 () Bool)

(assert (= bs!27024 (and neg-inst!390 neg-inst!388)))

(assert (=> (and bs!27024 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 res!25124)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 res!25124)))) (= true true)))

(declare-fun bs!27025 () Bool)

(assert (= bs!27025 (and neg-inst!390 b!54773)))

(assert (=> (and bs!27025 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!384)))

(declare-fun bs!27026 () Bool)

(assert (= bs!27026 (and neg-inst!390 neg-inst!382)))

(assert (=> (and bs!27026 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!27027 () Bool)

(assert (= bs!27027 (and neg-inst!390 b!54826)))

(assert (=> bs!27027 (= true inst!402)))

(declare-fun bs!27028 () Bool)

(assert (= bs!27028 (and neg-inst!390 neg-inst!378)))

(assert (=> (and bs!27028 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= true true)))

(declare-fun bs!27029 () Bool)

(assert (= bs!27029 (and neg-inst!390 b!54802)))

(assert (=> (and bs!27029 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true inst!392)))

(declare-fun bs!27030 () Bool)

(assert (= bs!27030 (and neg-inst!390 b!54818)))

(assert (=> (and bs!27030 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true inst!396)))

(declare-fun bs!27031 () Bool)

(assert (= bs!27031 (and neg-inst!390 b!54794)))

(assert (=> (and bs!27031 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= true inst!390)))

(declare-fun bs!27032 () Bool)

(assert (= bs!27032 (and neg-inst!390 neg-inst!374)))

(assert (=> (and bs!27032 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 res!25124)) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!27033 () Bool)

(assert (= bs!27033 (and neg-inst!390 b!54820)))

(assert (=> (and bs!27033 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= true inst!398)))

(declare-fun bs!27034 () Bool)

(assert (= bs!27034 (and neg-inst!390 neg-inst!384)))

(assert (=> (and bs!27034 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true true)))

(declare-fun bs!27035 () Bool)

(assert (= bs!27035 (and neg-inst!390 neg-inst!376)))

(assert (=> (and bs!27035 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!27036 () Bool)

(assert (= bs!27036 (and neg-inst!390 b!54790)))

(assert (=> (and bs!27036 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 thiss!7690))) (= (elem!228 (right!1161 res!25124)) (elem!228 thiss!7690))) (= true inst!386)))

(declare-fun bs!27037 () Bool)

(assert (= bs!27037 (and neg-inst!390 b!54804)))

(assert (=> (and bs!27037 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true inst!394)))

(declare-fun bs!27038 () Bool)

(assert (= bs!27038 (and neg-inst!390 b!54824)))

(assert (=> (and bs!27038 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (left!1158 res!25124)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 res!25124)))) (= true inst!400)))

(declare-fun bs!27039 () Bool)

(assert (= bs!27039 (and neg-inst!390 neg-inst!386)))

(assert (=> (and bs!27039 (= (content!17 (left!1158 (right!1161 res!25124))) (content!17 (left!1158 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= true true)))

(declare-fun bs!27040 () Bool)

(declare-fun neg-inst!391 () Bool)

(assert (= bs!27040 neg-inst!391))

(assert (=> bs!27040 m!59510))

(declare-fun bs!27041 () Bool)

(declare-fun s!1563 () Bool)

(assert (= bs!27041 (and neg-inst!391 s!1563)))

(assert (=> bs!27041 (=> true (or (not (member x!21901 (content!17 (right!1161 (right!1161 res!25124))))) (bvslt (elem!228 (right!1161 res!25124)) x!21901)))))

(assert (=> m!59512 s!1563))

(declare-fun bs!27042 () Bool)

(assert (= bs!27042 (and neg-inst!391 b!54793)))

(assert (=> (and bs!27042 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= true inst!389)))

(declare-fun bs!27043 () Bool)

(assert (= bs!27043 (and neg-inst!391 b!54821)))

(assert (=> (and bs!27043 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= true inst!399)))

(declare-fun bs!27044 () Bool)

(assert (= bs!27044 (and neg-inst!391 b!54803)))

(assert (=> (and bs!27044 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true inst!393)))

(declare-fun bs!27045 () Bool)

(assert (= bs!27045 (and neg-inst!391 neg-inst!385)))

(assert (=> (and bs!27045 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true true)))

(declare-fun bs!27046 () Bool)

(assert (= bs!27046 (and neg-inst!391 neg-inst!387)))

(assert (=> (and bs!27046 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= true true)))

(declare-fun bs!27047 () Bool)

(assert (= bs!27047 (and neg-inst!391 neg-inst!373)))

(assert (=> (and bs!27047 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!27048 () Bool)

(assert (= bs!27048 (and neg-inst!391 neg-inst!379)))

(assert (=> (and bs!27048 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= true true)))

(declare-fun bs!27049 () Bool)

(assert (= bs!27049 (and neg-inst!391 b!54825)))

(assert (=> (and bs!27049 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 res!25124)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 res!25124)))) (= true inst!401)))

(declare-fun bs!27050 () Bool)

(assert (= bs!27050 (and neg-inst!391 neg-inst!381)))

(assert (=> (and bs!27050 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!27051 () Bool)

(assert (= bs!27051 (and neg-inst!391 b!54791)))

(assert (=> (and bs!27051 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 res!25124)) (elem!228 thiss!7690))) (= true inst!387)))

(declare-fun bs!27052 () Bool)

(assert (= bs!27052 (and neg-inst!391 b!54805)))

(assert (=> (and bs!27052 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true inst!395)))

(declare-fun bs!27053 () Bool)

(assert (= bs!27053 (and neg-inst!391 neg-inst!377)))

(assert (=> (and bs!27053 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!27054 () Bool)

(assert (= bs!27054 (and neg-inst!391 b!54795)))

(assert (=> (and bs!27054 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 thiss!7690)))) (= true inst!391)))

(declare-fun bs!27055 () Bool)

(assert (= bs!27055 (and neg-inst!391 neg-inst!383)))

(assert (=> (and bs!27055 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!27056 () Bool)

(assert (= bs!27056 (and neg-inst!391 neg-inst!375)))

(assert (=> (and bs!27056 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 thiss!7690))) (= (elem!228 (right!1161 res!25124)) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!27057 () Bool)

(assert (= bs!27057 (and neg-inst!391 neg-inst!389)))

(assert (=> (and bs!27057 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 res!25124)))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 res!25124)))) (= true true)))

(declare-fun bs!27058 () Bool)

(assert (= bs!27058 (and neg-inst!391 b!54819)))

(assert (=> (and bs!27058 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true inst!397)))

(declare-fun bs!27059 () Bool)

(assert (= bs!27059 (and neg-inst!391 b!54774)))

(assert (=> (and bs!27059 (= (content!17 (right!1161 (right!1161 res!25124))) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 (right!1161 res!25124)) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!385)))

(declare-fun bs!27060 () Bool)

(assert (= bs!27060 (and neg-inst!391 b!54827)))

(assert (=> bs!27060 (= true inst!403)))

(declare-fun d!45130 () Bool)

(declare-fun res!25142 () Bool)

(declare-fun e!28827 () Bool)

(assert (=> d!45130 (=> res!25142 e!28827)))

(assert (=> d!45130 (= res!25142 (not (is-Node!128 (right!1161 res!25124))))))

(assert (=> d!45130 (= (inv!977 (right!1161 res!25124)) e!28827)))

(declare-fun e!28828 () Bool)

(assert (=> b!54826 (= e!28827 e!28828)))

(declare-fun res!25141 () Bool)

(assert (=> b!54826 (=> (not res!25141) (not e!28828))))

(assert (=> b!54826 (= res!25141 inst!402)))

(assert (=> b!54827 (= e!28828 inst!403)))

(assert (= (and d!45130 (not res!25142)) b!54826))

(assert (= neg-inst!390 inst!402))

(assert (= (and b!54826 res!25141) b!54827))

(assert (= neg-inst!391 inst!403))

(assert (=> b!54788 d!45130))

(assert (=> neg-inst!374 d!45116))

(declare-fun b!54828 () Bool)

(declare-fun m!59514 () Bool)

(assert (=> b!54828 m!59514))

(declare-fun inst!404 () Bool)

(declare-fun x!21902 () (_ BitVec 32))

(assert (=> b!54828 (= inst!404 (=> true (or (not (member x!21902 (content!17 (left!1158 res!25124)))) (bvslt x!21902 (elem!228 res!25124)))))))

(declare-fun m!59516 () Bool)

(assert (=> b!54828 m!59516))

(declare-fun bs!27061 () Bool)

(assert (= bs!27061 (and b!54828 neg-inst!372)))

(assert (=> (and bs!27061 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 res!25124) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!404 true)))

(declare-fun bs!27062 () Bool)

(assert (= bs!27062 (and b!54828 neg-inst!380)))

(assert (=> (and bs!27062 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!404 true)))

(declare-fun bs!27063 () Bool)

(assert (= bs!27063 (and b!54828 b!54792)))

(assert (=> (and bs!27063 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (left!1158 thiss!7690)))) (= inst!404 inst!388)))

(declare-fun bs!27064 () Bool)

(assert (= bs!27064 (and b!54828 neg-inst!388)))

(assert (=> (and bs!27064 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 res!25124)))) (= (elem!228 res!25124) (elem!228 (left!1158 res!25124)))) (= inst!404 true)))

(declare-fun bs!27065 () Bool)

(assert (= bs!27065 (and b!54828 b!54773)))

(assert (=> (and bs!27065 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 res!25124) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!404 inst!384)))

(declare-fun bs!27066 () Bool)

(assert (= bs!27066 (and b!54828 neg-inst!382)))

(assert (=> (and bs!27066 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!404 true)))

(declare-fun bs!27067 () Bool)

(assert (= bs!27067 (and b!54828 b!54826)))

(assert (=> (and bs!27067 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 res!25124)))) (= (elem!228 res!25124) (elem!228 (right!1161 res!25124)))) (= inst!404 inst!402)))

(declare-fun bs!27068 () Bool)

(assert (= bs!27068 (and b!54828 neg-inst!378)))

(assert (=> (and bs!27068 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (right!1161 thiss!7690)))) (= inst!404 true)))

(declare-fun bs!27069 () Bool)

(assert (= bs!27069 (and b!54828 b!54802)))

(assert (=> (and bs!27069 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!404 inst!392)))

(declare-fun bs!27070 () Bool)

(assert (= bs!27070 (and b!54828 b!54818)))

(assert (=> (and bs!27070 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!404 inst!396)))

(declare-fun bs!27071 () Bool)

(assert (= bs!27071 (and b!54828 b!54794)))

(assert (=> (and bs!27071 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (right!1161 thiss!7690)))) (= inst!404 inst!390)))

(declare-fun bs!27072 () Bool)

(assert (= bs!27072 (and b!54828 neg-inst!374)))

(assert (=> (and bs!27072 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 thiss!7690))) (= (elem!228 res!25124) (elem!228 thiss!7690))) (= inst!404 true)))

(declare-fun bs!27073 () Bool)

(assert (= bs!27073 (and b!54828 b!54820)))

(assert (=> (and bs!27073 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= inst!404 inst!398)))

(declare-fun bs!27074 () Bool)

(assert (= bs!27074 (and b!54828 neg-inst!384)))

(assert (=> (and bs!27074 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!404 true)))

(declare-fun bs!27075 () Bool)

(assert (= bs!27075 (and b!54828 neg-inst!376)))

(assert (=> (and bs!27075 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (left!1158 thiss!7690)))) (= inst!404 true)))

(declare-fun bs!27076 () Bool)

(assert (= bs!27076 (and b!54828 b!54790)))

(assert (=> (and bs!27076 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 thiss!7690))) (= (elem!228 res!25124) (elem!228 thiss!7690))) (= inst!404 inst!386)))

(declare-fun bs!27077 () Bool)

(assert (= bs!27077 (and b!54828 b!54804)))

(assert (=> (and bs!27077 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!404 inst!394)))

(declare-fun bs!27078 () Bool)

(assert (= bs!27078 (and b!54828 neg-inst!390)))

(assert (=> (and bs!27078 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 res!25124)))) (= (elem!228 res!25124) (elem!228 (right!1161 res!25124)))) (= inst!404 true)))

(declare-fun bs!27079 () Bool)

(assert (= bs!27079 (and b!54828 b!54824)))

(assert (=> (and bs!27079 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 res!25124)))) (= (elem!228 res!25124) (elem!228 (left!1158 res!25124)))) (= inst!404 inst!400)))

(declare-fun bs!27080 () Bool)

(assert (= bs!27080 (and b!54828 neg-inst!386)))

(assert (=> (and bs!27080 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= inst!404 true)))

(declare-fun b!54829 () Bool)

(declare-fun m!59518 () Bool)

(assert (=> b!54829 m!59518))

(declare-fun inst!405 () Bool)

(declare-fun x!21903 () (_ BitVec 32))

(assert (=> b!54829 (= inst!405 (=> true (or (not (member x!21903 (content!17 (right!1161 res!25124)))) (bvslt (elem!228 res!25124) x!21903))))))

(declare-fun m!59520 () Bool)

(assert (=> b!54829 m!59520))

(declare-fun bs!27081 () Bool)

(assert (= bs!27081 (and b!54829 b!54793)))

(assert (=> (and bs!27081 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (left!1158 thiss!7690)))) (= inst!405 inst!389)))

(declare-fun bs!27082 () Bool)

(assert (= bs!27082 (and b!54829 b!54821)))

(assert (=> (and bs!27082 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= inst!405 inst!399)))

(declare-fun bs!27083 () Bool)

(assert (= bs!27083 (and b!54829 b!54803)))

(assert (=> (and bs!27083 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!405 inst!393)))

(declare-fun bs!27084 () Bool)

(assert (= bs!27084 (and b!54829 neg-inst!385)))

(assert (=> (and bs!27084 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!405 true)))

(declare-fun bs!27085 () Bool)

(assert (= bs!27085 (and b!54829 neg-inst!387)))

(assert (=> (and bs!27085 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= inst!405 true)))

(declare-fun bs!27086 () Bool)

(assert (= bs!27086 (and b!54829 neg-inst!373)))

(assert (=> (and bs!27086 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 res!25124) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!405 true)))

(declare-fun bs!27087 () Bool)

(assert (= bs!27087 (and b!54829 neg-inst!379)))

(assert (=> (and bs!27087 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (right!1161 thiss!7690)))) (= inst!405 true)))

(declare-fun bs!27088 () Bool)

(assert (= bs!27088 (and b!54829 b!54825)))

(assert (=> (and bs!27088 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 res!25124)))) (= (elem!228 res!25124) (elem!228 (left!1158 res!25124)))) (= inst!405 inst!401)))

(declare-fun bs!27089 () Bool)

(assert (= bs!27089 (and b!54829 neg-inst!381)))

(assert (=> (and bs!27089 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= inst!405 true)))

(declare-fun bs!27090 () Bool)

(assert (= bs!27090 (and b!54829 b!54791)))

(assert (=> (and bs!27090 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 thiss!7690))) (= (elem!228 res!25124) (elem!228 thiss!7690))) (= inst!405 inst!387)))

(declare-fun bs!27091 () Bool)

(assert (= bs!27091 (and b!54829 b!54805)))

(assert (=> (and bs!27091 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!405 inst!395)))

(declare-fun bs!27092 () Bool)

(assert (= bs!27092 (and b!54829 neg-inst!377)))

(assert (=> (and bs!27092 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (left!1158 thiss!7690)))) (= inst!405 true)))

(declare-fun bs!27093 () Bool)

(assert (= bs!27093 (and b!54829 b!54795)))

(assert (=> (and bs!27093 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (right!1161 thiss!7690)))) (= inst!405 inst!391)))

(declare-fun bs!27094 () Bool)

(assert (= bs!27094 (and b!54829 neg-inst!383)))

(assert (=> (and bs!27094 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= inst!405 true)))

(declare-fun bs!27095 () Bool)

(assert (= bs!27095 (and b!54829 neg-inst!391)))

(assert (=> (and bs!27095 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 res!25124)))) (= (elem!228 res!25124) (elem!228 (right!1161 res!25124)))) (= inst!405 true)))

(declare-fun bs!27096 () Bool)

(assert (= bs!27096 (and b!54829 neg-inst!375)))

(assert (=> (and bs!27096 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 thiss!7690))) (= (elem!228 res!25124) (elem!228 thiss!7690))) (= inst!405 true)))

(declare-fun bs!27097 () Bool)

(assert (= bs!27097 (and b!54829 neg-inst!389)))

(assert (=> (and bs!27097 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 res!25124)))) (= (elem!228 res!25124) (elem!228 (left!1158 res!25124)))) (= inst!405 true)))

(declare-fun bs!27098 () Bool)

(assert (= bs!27098 (and b!54829 b!54819)))

(assert (=> (and bs!27098 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= inst!405 inst!397)))

(declare-fun bs!27099 () Bool)

(assert (= bs!27099 (and b!54829 b!54774)))

(assert (=> (and bs!27099 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 res!25124) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= inst!405 inst!385)))

(declare-fun bs!27100 () Bool)

(assert (= bs!27100 (and b!54829 b!54827)))

(assert (=> (and bs!27100 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 res!25124)))) (= (elem!228 res!25124) (elem!228 (right!1161 res!25124)))) (= inst!405 inst!403)))

(declare-fun bs!27101 () Bool)

(declare-fun neg-inst!392 () Bool)

(assert (= bs!27101 neg-inst!392))

(assert (=> bs!27101 m!59514))

(declare-fun bs!27102 () Bool)

(declare-fun s!1565 () Bool)

(assert (= bs!27102 (and neg-inst!392 s!1565)))

(assert (=> bs!27102 (=> true (or (not (member x!21902 (content!17 (left!1158 res!25124)))) (bvslt x!21902 (elem!228 res!25124))))))

(assert (=> m!59516 s!1565))

(declare-fun bs!27103 () Bool)

(assert (= bs!27103 (and neg-inst!392 neg-inst!372)))

(assert (=> (and bs!27103 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 res!25124) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!27104 () Bool)

(assert (= bs!27104 (and neg-inst!392 neg-inst!380)))

(assert (=> (and bs!27104 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!27105 () Bool)

(assert (= bs!27105 (and neg-inst!392 b!54792)))

(assert (=> (and bs!27105 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (left!1158 thiss!7690)))) (= true inst!388)))

(declare-fun bs!27106 () Bool)

(assert (= bs!27106 (and neg-inst!392 b!54828)))

(assert (=> bs!27106 (= true inst!404)))

(declare-fun bs!27107 () Bool)

(assert (= bs!27107 (and neg-inst!392 neg-inst!388)))

(assert (=> (and bs!27107 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 res!25124)))) (= (elem!228 res!25124) (elem!228 (left!1158 res!25124)))) (= true true)))

(declare-fun bs!27108 () Bool)

(assert (= bs!27108 (and neg-inst!392 b!54773)))

(assert (=> (and bs!27108 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 res!25124) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!384)))

(declare-fun bs!27109 () Bool)

(assert (= bs!27109 (and neg-inst!392 neg-inst!382)))

(assert (=> (and bs!27109 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!27110 () Bool)

(assert (= bs!27110 (and neg-inst!392 b!54826)))

(assert (=> (and bs!27110 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 res!25124)))) (= (elem!228 res!25124) (elem!228 (right!1161 res!25124)))) (= true inst!402)))

(declare-fun bs!27111 () Bool)

(assert (= bs!27111 (and neg-inst!392 neg-inst!378)))

(assert (=> (and bs!27111 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (right!1161 thiss!7690)))) (= true true)))

(declare-fun bs!27112 () Bool)

(assert (= bs!27112 (and neg-inst!392 b!54802)))

(assert (=> (and bs!27112 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true inst!392)))

(declare-fun bs!27113 () Bool)

(assert (= bs!27113 (and neg-inst!392 b!54818)))

(assert (=> (and bs!27113 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true inst!396)))

(declare-fun bs!27114 () Bool)

(assert (= bs!27114 (and neg-inst!392 b!54794)))

(assert (=> (and bs!27114 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (right!1161 thiss!7690)))) (= true inst!390)))

(declare-fun bs!27115 () Bool)

(assert (= bs!27115 (and neg-inst!392 neg-inst!374)))

(assert (=> (and bs!27115 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 thiss!7690))) (= (elem!228 res!25124) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!27116 () Bool)

(assert (= bs!27116 (and neg-inst!392 b!54820)))

(assert (=> (and bs!27116 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= true inst!398)))

(declare-fun bs!27117 () Bool)

(assert (= bs!27117 (and neg-inst!392 neg-inst!384)))

(assert (=> (and bs!27117 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true true)))

(declare-fun bs!27118 () Bool)

(assert (= bs!27118 (and neg-inst!392 neg-inst!376)))

(assert (=> (and bs!27118 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!27119 () Bool)

(assert (= bs!27119 (and neg-inst!392 b!54790)))

(assert (=> (and bs!27119 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 thiss!7690))) (= (elem!228 res!25124) (elem!228 thiss!7690))) (= true inst!386)))

(declare-fun bs!27120 () Bool)

(assert (= bs!27120 (and neg-inst!392 b!54804)))

(assert (=> (and bs!27120 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true inst!394)))

(declare-fun bs!27121 () Bool)

(assert (= bs!27121 (and neg-inst!392 neg-inst!390)))

(assert (=> (and bs!27121 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 res!25124)))) (= (elem!228 res!25124) (elem!228 (right!1161 res!25124)))) (= true true)))

(declare-fun bs!27122 () Bool)

(assert (= bs!27122 (and neg-inst!392 b!54824)))

(assert (=> (and bs!27122 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (left!1158 res!25124)))) (= (elem!228 res!25124) (elem!228 (left!1158 res!25124)))) (= true inst!400)))

(declare-fun bs!27123 () Bool)

(assert (= bs!27123 (and neg-inst!392 neg-inst!386)))

(assert (=> (and bs!27123 (= (content!17 (left!1158 res!25124)) (content!17 (left!1158 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= true true)))

(declare-fun bs!27124 () Bool)

(declare-fun neg-inst!393 () Bool)

(assert (= bs!27124 neg-inst!393))

(assert (=> bs!27124 m!59518))

(declare-fun bs!27125 () Bool)

(declare-fun s!1567 () Bool)

(assert (= bs!27125 (and neg-inst!393 s!1567)))

(assert (=> bs!27125 (=> true (or (not (member x!21903 (content!17 (right!1161 res!25124)))) (bvslt (elem!228 res!25124) x!21903)))))

(assert (=> m!59520 s!1567))

(declare-fun bs!27126 () Bool)

(assert (= bs!27126 (and neg-inst!393 b!54793)))

(assert (=> (and bs!27126 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (left!1158 thiss!7690)))) (= true inst!389)))

(declare-fun bs!27127 () Bool)

(assert (= bs!27127 (and neg-inst!393 b!54821)))

(assert (=> (and bs!27127 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= true inst!399)))

(declare-fun bs!27128 () Bool)

(assert (= bs!27128 (and neg-inst!393 b!54803)))

(assert (=> (and bs!27128 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true inst!393)))

(declare-fun bs!27129 () Bool)

(assert (= bs!27129 (and neg-inst!393 neg-inst!385)))

(assert (=> (and bs!27129 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true true)))

(declare-fun bs!27130 () Bool)

(assert (= bs!27130 (and neg-inst!393 neg-inst!387)))

(assert (=> (and bs!27130 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (right!1161 thiss!7690))))) (= true true)))

(declare-fun bs!27131 () Bool)

(assert (= bs!27131 (and neg-inst!393 neg-inst!373)))

(assert (=> (and bs!27131 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 res!25124) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true true)))

(declare-fun bs!27132 () Bool)

(assert (= bs!27132 (and neg-inst!393 b!54829)))

(assert (=> bs!27132 (= true inst!405)))

(declare-fun bs!27133 () Bool)

(assert (= bs!27133 (and neg-inst!393 neg-inst!379)))

(assert (=> (and bs!27133 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (right!1161 thiss!7690)))) (= true true)))

(declare-fun bs!27134 () Bool)

(assert (= bs!27134 (and neg-inst!393 b!54825)))

(assert (=> (and bs!27134 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 res!25124)))) (= (elem!228 res!25124) (elem!228 (left!1158 res!25124)))) (= true inst!401)))

(declare-fun bs!27135 () Bool)

(assert (= bs!27135 (and neg-inst!393 neg-inst!381)))

(assert (=> (and bs!27135 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!27136 () Bool)

(assert (= bs!27136 (and neg-inst!393 b!54791)))

(assert (=> (and bs!27136 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 thiss!7690))) (= (elem!228 res!25124) (elem!228 thiss!7690))) (= true inst!387)))

(declare-fun bs!27137 () Bool)

(assert (= bs!27137 (and neg-inst!393 b!54805)))

(assert (=> (and bs!27137 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true inst!395)))

(declare-fun bs!27138 () Bool)

(assert (= bs!27138 (and neg-inst!393 neg-inst!377)))

(assert (=> (and bs!27138 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (left!1158 thiss!7690)))) (= true true)))

(declare-fun bs!27139 () Bool)

(assert (= bs!27139 (and neg-inst!393 b!54795)))

(assert (=> (and bs!27139 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 thiss!7690)))) (= (elem!228 res!25124) (elem!228 (right!1161 thiss!7690)))) (= true inst!391)))

(declare-fun bs!27140 () Bool)

(assert (= bs!27140 (and neg-inst!393 neg-inst!383)))

(assert (=> (and bs!27140 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 (left!1158 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (right!1161 (left!1158 thiss!7690))))) (= true true)))

(declare-fun bs!27141 () Bool)

(assert (= bs!27141 (and neg-inst!393 neg-inst!391)))

(assert (=> (and bs!27141 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 res!25124)))) (= (elem!228 res!25124) (elem!228 (right!1161 res!25124)))) (= true true)))

(declare-fun bs!27142 () Bool)

(assert (= bs!27142 (and neg-inst!393 neg-inst!375)))

(assert (=> (and bs!27142 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 thiss!7690))) (= (elem!228 res!25124) (elem!228 thiss!7690))) (= true true)))

(declare-fun bs!27143 () Bool)

(assert (= bs!27143 (and neg-inst!393 neg-inst!389)))

(assert (=> (and bs!27143 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 res!25124)))) (= (elem!228 res!25124) (elem!228 (left!1158 res!25124)))) (= true true)))

(declare-fun bs!27144 () Bool)

(assert (= bs!27144 (and neg-inst!393 b!54819)))

(assert (=> (and bs!27144 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))) (= (elem!228 res!25124) (elem!228 (left!1158 (right!1161 thiss!7690))))) (= true inst!397)))

(declare-fun bs!27145 () Bool)

(assert (= bs!27145 (and neg-inst!393 b!54774)))

(assert (=> (and bs!27145 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= (elem!228 res!25124) (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (= true inst!385)))

(declare-fun bs!27146 () Bool)

(assert (= bs!27146 (and neg-inst!393 b!54827)))

(assert (=> (and bs!27146 (= (content!17 (right!1161 res!25124)) (content!17 (right!1161 (right!1161 res!25124)))) (= (elem!228 res!25124) (elem!228 (right!1161 res!25124)))) (= true inst!403)))

(declare-fun d!45132 () Bool)

(declare-fun res!25144 () Bool)

(declare-fun e!28829 () Bool)

(assert (=> d!45132 (=> res!25144 e!28829)))

(assert (=> d!45132 (= res!25144 (not (is-Node!128 res!25124)))))

(assert (=> d!45132 (= (inv!977 res!25124) e!28829)))

(declare-fun e!28830 () Bool)

(assert (=> b!54828 (= e!28829 e!28830)))

(declare-fun res!25143 () Bool)

(assert (=> b!54828 (=> (not res!25143) (not e!28830))))

(assert (=> b!54828 (= res!25143 inst!404)))

(assert (=> b!54829 (= e!28830 inst!405)))

(assert (= (and d!45132 (not res!25144)) b!54828))

(assert (= neg-inst!392 inst!404))

(assert (= (and b!54828 res!25143) b!54829))

(assert (= neg-inst!393 inst!405))

(assert (=> b!54785 d!45132))

(declare-fun b!54830 () Bool)

(declare-fun e!28832 () IntSet!42)

(declare-fun res!25145 () IntSet!42)

(assert (=> b!54830 (= e!28832 res!25145)))

(assert (=> b!54830 true))

(declare-fun e!28833 () Bool)

(assert (=> b!54830 (and (inv!977 res!25145) e!28833)))

(declare-fun lt!9635 () IntSet!42)

(declare-fun d!45134 () Bool)

(assert (=> d!45134 (= (content!17 lt!9635) (union (content!17 (ite lt!9634 (left!1158 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690)))) (insert x!21411 (as emptyset (Set (_ BitVec 32))))))))

(declare-fun e!28831 () IntSet!42)

(assert (=> d!45134 (= lt!9635 e!28831)))

(declare-fun c!11891 () Bool)

(assert (=> d!45134 (= c!11891 (is-Empty!167 (ite lt!9634 (left!1158 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690)))))))

(assert (=> d!45134 (= (incl!2 (ite lt!9634 (left!1158 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690))) x!21411) lt!9635)))

(declare-fun lt!9637 () Bool)

(declare-fun b!54831 () Bool)

(assert (=> b!54831 (= e!28832 (incl!2 (ite lt!9637 (left!1158 (ite lt!9634 (left!1158 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690)))) (right!1161 (ite lt!9634 (left!1158 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690))))) x!21411))))

(declare-fun lt!9636 () IntSet!42)

(declare-fun b!54832 () Bool)

(assert (=> b!54832 (= e!28831 (ite lt!9637 (Node!128 lt!9636 (elem!228 (ite lt!9634 (left!1158 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690)))) (right!1161 (ite lt!9634 (left!1158 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690))))) (ite (bvsgt x!21411 (elem!228 (ite lt!9634 (left!1158 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690))))) (Node!128 (left!1158 (ite lt!9634 (left!1158 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690)))) (elem!228 (ite lt!9634 (left!1158 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690)))) lt!9636) (ite lt!9634 (left!1158 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690))))))))

(assert (=> b!54832 (= lt!9636 e!28832)))

(declare-fun c!11892 () Bool)

(assert (=> b!54832 (= c!11892 (or lt!9637 (bvsgt x!21411 (elem!228 (ite lt!9634 (left!1158 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690)))))))))

(assert (=> b!54832 (= lt!9637 (bvslt x!21411 (elem!228 (ite lt!9634 (left!1158 (right!1161 thiss!7690)) (right!1161 (right!1161 thiss!7690))))))))

(declare-fun b!54833 () Bool)

(declare-fun tp!15526 () Bool)

(declare-fun tp!15525 () Bool)

(assert (=> b!54833 (= e!28833 (and (inv!977 (left!1158 res!25145)) tp!15525 (inv!977 (right!1161 res!25145)) tp!15526))))

(declare-fun b!54834 () Bool)

(assert (=> b!54834 (= e!28831 (Node!128 Empty!167 x!21411 Empty!167))))

(assert (= (and b!54830 (is-Node!128 res!25145)) b!54833))

(assert (= (and b!54832 c!11892) b!54831))

(assert (= (and b!54832 (not c!11892)) b!54830))

(assert (= (and d!45134 c!11891) b!54834))

(assert (= (and d!45134 (not c!11891)) b!54832))

(declare-fun m!59522 () Bool)

(assert (=> b!54830 m!59522))

(declare-fun m!59524 () Bool)

(assert (=> d!45134 m!59524))

(declare-fun m!59526 () Bool)

(assert (=> d!45134 m!59526))

(assert (=> d!45134 m!59414))

(declare-fun m!59528 () Bool)

(assert (=> b!54831 m!59528))

(declare-fun m!59530 () Bool)

(assert (=> b!54833 m!59530))

(declare-fun m!59532 () Bool)

(assert (=> b!54833 m!59532))

(assert (=> b!54786 d!45134))

(declare-fun d!45136 () Bool)

(declare-fun c!11893 () Bool)

(assert (=> d!45136 (= c!11893 (is-Empty!167 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))))

(declare-fun e!28834 () (Set (_ BitVec 32)))

(assert (=> d!45136 (= (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))) e!28834)))

(declare-fun b!54835 () Bool)

(assert (=> b!54835 (= e!28834 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54836 () Bool)

(assert (=> b!54836 (= e!28834 (union (union (content!17 (left!1158 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (insert (elem!228 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1161 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))))))

(assert (= (and d!45136 c!11893) b!54835))

(assert (= (and d!45136 (not c!11893)) b!54836))

(declare-fun m!59534 () Bool)

(assert (=> b!54836 m!59534))

(declare-fun m!59536 () Bool)

(assert (=> b!54836 m!59536))

(declare-fun m!59538 () Bool)

(assert (=> b!54836 m!59538))

(assert (=> neg-inst!372 d!45136))

(declare-fun d!45138 () Bool)

(declare-fun c!11894 () Bool)

(assert (=> d!45138 (= c!11894 (is-Empty!167 (left!1158 (right!1161 thiss!7690))))))

(declare-fun e!28835 () (Set (_ BitVec 32)))

(assert (=> d!45138 (= (content!17 (left!1158 (right!1161 thiss!7690))) e!28835)))

(declare-fun b!54837 () Bool)

(assert (=> b!54837 (= e!28835 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54838 () Bool)

(assert (=> b!54838 (= e!28835 (union (union (content!17 (left!1158 (left!1158 (right!1161 thiss!7690)))) (insert (elem!228 (left!1158 (right!1161 thiss!7690))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1161 (left!1158 (right!1161 thiss!7690))))))))

(assert (= (and d!45138 c!11894) b!54837))

(assert (= (and d!45138 (not c!11894)) b!54838))

(assert (=> b!54838 m!59480))

(declare-fun m!59540 () Bool)

(assert (=> b!54838 m!59540))

(assert (=> b!54838 m!59484))

(assert (=> b!54794 d!45138))

(assert (=> b!54773 d!45136))

(assert (=> b!54793 d!45120))

(assert (=> b!54768 d!45106))

(assert (=> b!54768 d!45108))

(assert (=> neg-inst!378 d!45138))

(declare-fun d!45140 () Bool)

(declare-fun c!11895 () Bool)

(assert (=> d!45140 (= c!11895 (is-Empty!167 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))))

(declare-fun e!28836 () (Set (_ BitVec 32)))

(assert (=> d!45140 (= (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))) e!28836)))

(declare-fun b!54839 () Bool)

(assert (=> b!54839 (= e!28836 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54840 () Bool)

(assert (=> b!54840 (= e!28836 (union (union (content!17 (left!1158 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))) (insert (elem!228 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1161 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))))))

(assert (= (and d!45140 c!11895) b!54839))

(assert (= (and d!45140 (not c!11895)) b!54840))

(declare-fun m!59542 () Bool)

(assert (=> b!54840 m!59542))

(declare-fun m!59544 () Bool)

(assert (=> b!54840 m!59544))

(declare-fun m!59546 () Bool)

(assert (=> b!54840 m!59546))

(assert (=> b!54774 d!45140))

(assert (=> neg-inst!373 d!45140))

(declare-fun d!45142 () Bool)

(declare-fun c!11896 () Bool)

(assert (=> d!45142 (= c!11896 (is-Empty!167 (left!1158 (left!1158 thiss!7690))))))

(declare-fun e!28837 () (Set (_ BitVec 32)))

(assert (=> d!45142 (= (content!17 (left!1158 (left!1158 thiss!7690))) e!28837)))

(declare-fun b!54841 () Bool)

(assert (=> b!54841 (= e!28837 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54842 () Bool)

(assert (=> b!54842 (= e!28837 (union (union (content!17 (left!1158 (left!1158 (left!1158 thiss!7690)))) (insert (elem!228 (left!1158 (left!1158 thiss!7690))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1161 (left!1158 (left!1158 thiss!7690))))))))

(assert (= (and d!45142 c!11896) b!54841))

(assert (= (and d!45142 (not c!11896)) b!54842))

(assert (=> b!54842 m!59452))

(declare-fun m!59548 () Bool)

(assert (=> b!54842 m!59548))

(assert (=> b!54842 m!59456))

(assert (=> b!54792 d!45142))

(assert (=> neg-inst!376 d!45142))

(declare-fun e!28838 () Bool)

(declare-fun b!54843 () Bool)

(declare-fun tp!15527 () Bool)

(declare-fun tp!15528 () Bool)

(assert (=> b!54843 (= e!28838 (and (inv!977 (left!1158 (left!1158 res!25124))) tp!15527 (inv!977 (right!1161 (left!1158 res!25124))) tp!15528))))

(assert (=> b!54788 (= tp!15515 (and (inv!977 (left!1158 res!25124)) e!28838))))

(assert (= (and b!54788 (is-Node!128 (left!1158 res!25124))) b!54843))

(declare-fun m!59550 () Bool)

(assert (=> b!54843 m!59550))

(declare-fun m!59552 () Bool)

(assert (=> b!54843 m!59552))

(assert (=> b!54788 m!59418))

(declare-fun b!54844 () Bool)

(declare-fun tp!15529 () Bool)

(declare-fun e!28839 () Bool)

(declare-fun tp!15530 () Bool)

(assert (=> b!54844 (= e!28839 (and (inv!977 (left!1158 (right!1161 res!25124))) tp!15529 (inv!977 (right!1161 (right!1161 res!25124))) tp!15530))))

(assert (=> b!54788 (= tp!15516 (and (inv!977 (right!1161 res!25124)) e!28839))))

(assert (= (and b!54788 (is-Node!128 (right!1161 res!25124))) b!54844))

(declare-fun m!59554 () Bool)

(assert (=> b!54844 m!59554))

(declare-fun m!59556 () Bool)

(assert (=> b!54844 m!59556))

(assert (=> b!54788 m!59420))

(declare-fun tp!15531 () Bool)

(declare-fun b!54845 () Bool)

(declare-fun e!28840 () Bool)

(declare-fun tp!15532 () Bool)

(assert (=> b!54845 (= e!28840 (and (inv!977 (left!1158 (left!1158 (right!1161 thiss!7690)))) tp!15531 (inv!977 (right!1161 (left!1158 (right!1161 thiss!7690)))) tp!15532))))

(assert (=> b!54801 (= tp!15523 (and (inv!977 (left!1158 (right!1161 thiss!7690))) e!28840))))

(assert (= (and b!54801 (is-Node!128 (left!1158 (right!1161 thiss!7690)))) b!54845))

(declare-fun m!59558 () Bool)

(assert (=> b!54845 m!59558))

(declare-fun m!59560 () Bool)

(assert (=> b!54845 m!59560))

(assert (=> b!54801 m!59448))

(declare-fun tp!15533 () Bool)

(declare-fun e!28841 () Bool)

(declare-fun b!54846 () Bool)

(declare-fun tp!15534 () Bool)

(assert (=> b!54846 (= e!28841 (and (inv!977 (left!1158 (right!1161 (right!1161 thiss!7690)))) tp!15533 (inv!977 (right!1161 (right!1161 (right!1161 thiss!7690)))) tp!15534))))

(assert (=> b!54801 (= tp!15524 (and (inv!977 (right!1161 (right!1161 thiss!7690))) e!28841))))

(assert (= (and b!54801 (is-Node!128 (right!1161 (right!1161 thiss!7690)))) b!54846))

(declare-fun m!59562 () Bool)

(assert (=> b!54846 m!59562))

(declare-fun m!59564 () Bool)

(assert (=> b!54846 m!59564))

(assert (=> b!54801 m!59450))

(declare-fun b!54847 () Bool)

(declare-fun e!28842 () Bool)

(declare-fun tp!15535 () Bool)

(declare-fun tp!15536 () Bool)

(assert (=> b!54847 (= e!28842 (and (inv!977 (left!1158 (left!1158 (left!1158 thiss!7690)))) tp!15535 (inv!977 (right!1161 (left!1158 (left!1158 thiss!7690)))) tp!15536))))

(assert (=> b!54800 (= tp!15521 (and (inv!977 (left!1158 (left!1158 thiss!7690))) e!28842))))

(assert (= (and b!54800 (is-Node!128 (left!1158 (left!1158 thiss!7690)))) b!54847))

(declare-fun m!59566 () Bool)

(assert (=> b!54847 m!59566))

(declare-fun m!59568 () Bool)

(assert (=> b!54847 m!59568))

(assert (=> b!54800 m!59444))

(declare-fun e!28843 () Bool)

(declare-fun tp!15538 () Bool)

(declare-fun b!54848 () Bool)

(declare-fun tp!15537 () Bool)

(assert (=> b!54848 (= e!28843 (and (inv!977 (left!1158 (right!1161 (left!1158 thiss!7690)))) tp!15537 (inv!977 (right!1161 (right!1161 (left!1158 thiss!7690)))) tp!15538))))

(assert (=> b!54800 (= tp!15522 (and (inv!977 (right!1161 (left!1158 thiss!7690))) e!28843))))

(assert (= (and b!54800 (is-Node!128 (right!1161 (left!1158 thiss!7690)))) b!54848))

(declare-fun m!59570 () Bool)

(assert (=> b!54848 m!59570))

(declare-fun m!59572 () Bool)

(assert (=> b!54848 m!59572))

(assert (=> b!54800 m!59446))

(push 1)

(assert (not b!54833))

(assert (not neg-inst!386))

(assert (not b!54829))

(assert (not neg-inst!382))

(assert (not neg-inst!384))

(assert (not b!54823))

(assert (not neg-inst!383))

(assert (not b!54824))

(assert (not neg-inst!380))

(assert (not b!54821))

(assert (not b!54804))

(assert (not b!54847))

(assert (not b!54813))

(assert (not b!54800))

(assert (not b!54845))

(assert (not b!54815))

(assert (not b!54830))

(assert (not b!54826))

(assert (not b!54840))

(assert (not neg-inst!388))

(assert (not b!54802))

(assert (not b!54828))

(assert (not b!54838))

(assert (not neg-inst!390))

(assert (not b!54805))

(assert (not d!45134))

(assert (not b!54836))

(assert (not neg-inst!381))

(assert (not b!54801))

(assert (not b!54811))

(assert (not b!54788))

(assert (not b!54844))

(assert (not neg-inst!387))

(assert (not b!54819))

(assert (not neg-inst!392))

(assert (not neg-inst!389))

(assert (not b!54843))

(assert (not b!54831))

(assert (not b!54803))

(assert (not neg-inst!391))

(assert (not neg-inst!385))

(assert (not b!54825))

(assert (not neg-inst!393))

(assert (not b!54820))

(assert (not b!54827))

(assert (not b!54818))

(assert (not b!54842))

(assert (not b!54817))

(assert (not b!54846))

(assert (not b!54848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!27147 () Bool)

(declare-fun s!1569 () Bool)

(assert (= bs!27147 (and neg-inst!372 s!1569)))

(assert (=> bs!27147 (=> true (or (not (member x!21411 (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt x!21411 (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))))))

(declare-fun m!59574 () Bool)

(assert (=> m!59414 m!59574))

(assert (=> m!59414 s!1569))

(declare-fun bs!27148 () Bool)

(declare-fun s!1571 () Bool)

(assert (= bs!27148 (and neg-inst!372 s!1571)))

(assert (=> bs!27148 (=> true (or (not (member x!21880 (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt x!21880 (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))))))

(declare-fun m!59576 () Bool)

(assert (=> m!59406 m!59576))

(assert (=> m!59406 s!1571))

(declare-fun bs!27149 () Bool)

(declare-fun s!1573 () Bool)

(assert (= bs!27149 (and neg-inst!372 s!1573)))

(assert (=> bs!27149 (=> true (or (not (member x!21886 (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt x!21886 (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))))))

(declare-fun m!59578 () Bool)

(assert (=> m!59438 m!59578))

(assert (=> m!59438 s!1573))

(declare-fun bs!27150 () Bool)

(declare-fun s!1575 () Bool)

(assert (= bs!27150 (and neg-inst!372 s!1575)))

(assert (=> bs!27150 (=> true (or (not (member x!21884 (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt x!21884 (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))))))

(declare-fun m!59580 () Bool)

(assert (=> m!59430 m!59580))

(assert (=> m!59430 s!1575))

(declare-fun bs!27151 () Bool)

(declare-fun s!1577 () Bool)

(assert (= bs!27151 (and neg-inst!372 s!1577)))

(assert (=> bs!27151 (=> true (or (not (member x!21882 (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt x!21882 (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))))))

(declare-fun m!59582 () Bool)

(assert (=> m!59424 m!59582))

(assert (=> m!59424 s!1577))

(declare-fun bs!27152 () Bool)

(declare-fun s!1579 () Bool)

(assert (= bs!27152 (and neg-inst!372 s!1579)))

(assert (=> bs!27152 (=> true (or (not (member x!21883 (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt x!21883 (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))))))

(declare-fun m!59584 () Bool)

(assert (=> m!59426 m!59584))

(assert (=> m!59426 s!1579))

(declare-fun bs!27153 () Bool)

(declare-fun s!1581 () Bool)

(assert (= bs!27153 (and neg-inst!372 s!1581)))

(assert (=> bs!27153 (=> true (or (not (member x!21887 (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt x!21887 (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))))))

(declare-fun m!59586 () Bool)

(assert (=> m!59442 m!59586))

(assert (=> m!59442 s!1581))

(declare-fun bs!27154 () Bool)

(declare-fun s!1583 () Bool)

(assert (= bs!27154 (and neg-inst!372 s!1583)))

(assert (=> bs!27154 (=> true (or (not (member x!21885 (content!17 (left!1158 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt x!21885 (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))))))))

(declare-fun m!59588 () Bool)

(assert (=> m!59434 m!59588))

(assert (=> m!59434 s!1583))

(declare-fun bs!27155 () Bool)

(declare-fun s!1585 () Bool)

(assert (= bs!27155 (and neg-inst!373 s!1585)))

(assert (=> bs!27155 (=> true (or (not (member x!21887 (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))) x!21887)))))

(declare-fun m!59590 () Bool)

(assert (=> m!59442 m!59590))

(assert (=> m!59442 s!1585))

(declare-fun bs!27156 () Bool)

(declare-fun s!1587 () Bool)

(assert (= bs!27156 (and neg-inst!373 s!1587)))

(assert (=> bs!27156 (=> true (or (not (member x!21883 (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))) x!21883)))))

(declare-fun m!59592 () Bool)

(assert (=> m!59426 m!59592))

(assert (=> m!59426 s!1587))

(declare-fun bs!27157 () Bool)

(declare-fun s!1589 () Bool)

(assert (= bs!27157 (and neg-inst!373 s!1589)))

(assert (=> bs!27157 (=> true (or (not (member x!21411 (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))) x!21411)))))

(declare-fun m!59594 () Bool)

(assert (=> m!59414 m!59594))

(assert (=> m!59414 s!1589))

(declare-fun bs!27158 () Bool)

(declare-fun s!1591 () Bool)

(assert (= bs!27158 (and neg-inst!373 s!1591)))

(assert (=> bs!27158 (=> true (or (not (member x!21882 (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))) x!21882)))))

(declare-fun m!59596 () Bool)

(assert (=> m!59424 m!59596))

(assert (=> m!59424 s!1591))

(declare-fun bs!27159 () Bool)

(declare-fun s!1593 () Bool)

(assert (= bs!27159 (and neg-inst!373 s!1593)))

(assert (=> bs!27159 (=> true (or (not (member x!21885 (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))) x!21885)))))

(declare-fun m!59598 () Bool)

(assert (=> m!59434 m!59598))

(assert (=> m!59434 s!1593))

(declare-fun bs!27160 () Bool)

(declare-fun s!1595 () Bool)

(assert (= bs!27160 (and neg-inst!373 s!1595)))

(assert (=> bs!27160 (=> true (or (not (member x!21884 (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))) x!21884)))))

(declare-fun m!59600 () Bool)

(assert (=> m!59430 m!59600))

(assert (=> m!59430 s!1595))

(declare-fun bs!27161 () Bool)

(declare-fun s!1597 () Bool)

(assert (= bs!27161 (and neg-inst!373 s!1597)))

(assert (=> bs!27161 (=> true (or (not (member x!21879 (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))) x!21879)))))

(declare-fun m!59602 () Bool)

(assert (=> m!59402 m!59602))

(assert (=> m!59402 s!1597))

(declare-fun bs!27162 () Bool)

(declare-fun s!1599 () Bool)

(assert (= bs!27162 (and neg-inst!373 s!1599)))

(assert (=> bs!27162 (=> true (or (not (member x!21886 (content!17 (right!1161 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411)))))) (bvslt (elem!228 (Node!128 (left!1158 thiss!7690) (elem!228 thiss!7690) (incl!2 (right!1161 thiss!7690) x!21411))) x!21886)))))

(declare-fun m!59604 () Bool)

(assert (=> m!59438 m!59604))

(assert (=> m!59438 s!1599))

(declare-fun bs!27163 () Bool)

(declare-fun s!1601 () Bool)

(assert (= bs!27163 (and neg-inst!374 s!1601)))

(assert (=> bs!27163 (=> true (or (not (member x!21411 (content!17 (left!1158 thiss!7690)))) (bvslt x!21411 (elem!228 thiss!7690))))))

(declare-fun m!59606 () Bool)

(assert (=> m!59414 m!59606))

(assert (=> m!59414 s!1601))

(declare-fun bs!27164 () Bool)

(declare-fun s!1603 () Bool)

(assert (= bs!27164 (and neg-inst!374 s!1603)))

(assert (=> bs!27164 (=> true (or (not (member x!21880 (content!17 (left!1158 thiss!7690)))) (bvslt x!21880 (elem!228 thiss!7690))))))

(declare-fun m!59608 () Bool)

(assert (=> m!59406 m!59608))

(assert (=> m!59406 s!1603))

(declare-fun bs!27165 () Bool)

(declare-fun s!1605 () Bool)

(assert (= bs!27165 (and neg-inst!374 s!1605)))

(assert (=> bs!27165 (=> true (or (not (member x!21886 (content!17 (left!1158 thiss!7690)))) (bvslt x!21886 (elem!228 thiss!7690))))))

(declare-fun m!59610 () Bool)

(assert (=> m!59438 m!59610))

(assert (=> m!59438 s!1605))

(declare-fun bs!27166 () Bool)

(declare-fun s!1607 () Bool)

(assert (= bs!27166 (and neg-inst!374 s!1607)))

(assert (=> bs!27166 (=> true (or (not (member x!21884 (content!17 (left!1158 thiss!7690)))) (bvslt x!21884 (elem!228 thiss!7690))))))

(declare-fun m!59612 () Bool)

(assert (=> m!59430 m!59612))

(assert (=> m!59430 s!1607))

(declare-fun bs!27167 () Bool)

(declare-fun s!1609 () Bool)

(assert (= bs!27167 (and neg-inst!374 s!1609)))

(assert (=> bs!27167 (=> true (or (not (member x!21879 (content!17 (left!1158 thiss!7690)))) (bvslt x!21879 (elem!228 thiss!7690))))))

(declare-fun m!59614 () Bool)

(assert (=> m!59402 m!59614))

(assert (=> m!59402 s!1609))

(declare-fun bs!27168 () Bool)

(declare-fun s!1611 () Bool)

(assert (= bs!27168 (and neg-inst!374 s!1611)))

(assert (=> bs!27168 (=> true (or (not (member x!21883 (content!17 (left!1158 thiss!7690)))) (bvslt x!21883 (elem!228 thiss!7690))))))

(declare-fun m!59616 () Bool)

(assert (=> m!59426 m!59616))

(assert (=> m!59426 s!1611))

(declare-fun bs!27169 () Bool)

(declare-fun s!1613 () Bool)

(assert (= bs!27169 (and neg-inst!374 s!1613)))

(assert (=> bs!27169 (=> true (or (not (member x!21887 (content!17 (left!1158 thiss!7690)))) (bvslt x!21887 (elem!228 thiss!7690))))))

(declare-fun m!59618 () Bool)

(assert (=> m!59442 m!59618))

(assert (=> m!59442 s!1613))

(declare-fun bs!27170 () Bool)

(declare-fun s!1615 () Bool)

(assert (= bs!27170 (and neg-inst!374 s!1615)))

(assert (=> bs!27170 (=> true (or (not (member x!21885 (content!17 (left!1158 thiss!7690)))) (bvslt x!21885 (elem!228 thiss!7690))))))

(declare-fun m!59620 () Bool)

(assert (=> m!59434 m!59620))

(assert (=> m!59434 s!1615))

(declare-fun bs!27171 () Bool)

(declare-fun s!1617 () Bool)

(assert (= bs!27171 (and neg-inst!375 s!1617)))

(assert (=> bs!27171 (=> true (or (not (member x!21887 (content!17 (right!1161 thiss!7690)))) (bvslt (elem!228 thiss!7690) x!21887)))))

(declare-fun m!59622 () Bool)

(assert (=> m!59442 m!59622))

(assert (=> m!59442 s!1617))

(declare-fun bs!27172 () Bool)

(declare-fun s!1619 () Bool)

(assert (= bs!27172 (and neg-inst!375 s!1619)))

(assert (=> bs!27172 (=> true (or (not (member x!21880 (content!17 (right!1161 thiss!7690)))) (bvslt (elem!228 thiss!7690) x!21880)))))

(declare-fun m!59624 () Bool)

(assert (=> m!59406 m!59624))

(assert (=> m!59406 s!1619))

(declare-fun bs!27173 () Bool)

(declare-fun s!1621 () Bool)

(assert (= bs!27173 (and neg-inst!375 s!1621)))

(assert (=> bs!27173 (=> true (or (not (member x!21411 (content!17 (right!1161 thiss!7690)))) (bvslt (elem!228 thiss!7690) x!21411)))))

(declare-fun m!59626 () Bool)

(assert (=> m!59414 m!59626))

(assert (=> m!59414 s!1621))

(declare-fun bs!27174 () Bool)

(declare-fun s!1623 () Bool)

(assert (= bs!27174 (and neg-inst!375 s!1623)))

(assert (=> bs!27174 (=> true (or (not (member x!21882 (content!17 (right!1161 thiss!7690)))) (bvslt (elem!228 thiss!7690) x!21882)))))

(declare-fun m!59628 () Bool)

(assert (=> m!59424 m!59628))

(assert (=> m!59424 s!1623))

(declare-fun bs!27175 () Bool)

(declare-fun s!1625 () Bool)

(assert (= bs!27175 (and neg-inst!375 s!1625)))

(assert (=> bs!27175 (=> true (or (not (member x!21885 (content!17 (right!1161 thiss!7690)))) (bvslt (elem!228 thiss!7690) x!21885)))))

(declare-fun m!59630 () Bool)

(assert (=> m!59434 m!59630))

(assert (=> m!59434 s!1625))

(declare-fun bs!27176 () Bool)

(declare-fun s!1627 () Bool)

(assert (= bs!27176 (and neg-inst!375 s!1627)))

(assert (=> bs!27176 (=> true (or (not (member x!21884 (content!17 (right!1161 thiss!7690)))) (bvslt (elem!228 thiss!7690) x!21884)))))

(declare-fun m!59632 () Bool)

(assert (=> m!59430 m!59632))

(assert (=> m!59430 s!1627))

(declare-fun bs!27177 () Bool)

(declare-fun s!1629 () Bool)

(assert (= bs!27177 (and neg-inst!375 s!1629)))

(assert (=> bs!27177 (=> true (or (not (member x!21879 (content!17 (right!1161 thiss!7690)))) (bvslt (elem!228 thiss!7690) x!21879)))))

(declare-fun m!59634 () Bool)

(assert (=> m!59402 m!59634))

(assert (=> m!59402 s!1629))

(declare-fun bs!27178 () Bool)

(declare-fun s!1631 () Bool)

(assert (= bs!27178 (and neg-inst!375 s!1631)))

(assert (=> bs!27178 (=> true (or (not (member x!21886 (content!17 (right!1161 thiss!7690)))) (bvslt (elem!228 thiss!7690) x!21886)))))

(declare-fun m!59636 () Bool)

(assert (=> m!59438 m!59636))

(assert (=> m!59438 s!1631))

(declare-fun bs!27179 () Bool)

(declare-fun s!1633 () Bool)

(assert (= bs!27179 (and neg-inst!376 s!1633)))

(assert (=> bs!27179 (=> true (or (not (member x!21411 (content!17 (left!1158 (left!1158 thiss!7690))))) (bvslt x!21411 (elem!228 (left!1158 thiss!7690)))))))

(declare-fun m!59638 () Bool)

(assert (=> m!59414 m!59638))

(assert (=> m!59414 s!1633))

(declare-fun bs!27180 () Bool)

(declare-fun s!1635 () Bool)

(assert (= bs!27180 (and neg-inst!376 s!1635)))

(assert (=> bs!27180 (=> true (or (not (member x!21880 (content!17 (left!1158 (left!1158 thiss!7690))))) (bvslt x!21880 (elem!228 (left!1158 thiss!7690)))))))

(declare-fun m!59640 () Bool)

(assert (=> m!59406 m!59640))

(assert (=> m!59406 s!1635))

(declare-fun bs!27181 () Bool)

(declare-fun s!1637 () Bool)

(assert (= bs!27181 (and neg-inst!376 s!1637)))

(assert (=> bs!27181 (=> true (or (not (member x!21886 (content!17 (left!1158 (left!1158 thiss!7690))))) (bvslt x!21886 (elem!228 (left!1158 thiss!7690)))))))

(declare-fun m!59642 () Bool)

(assert (=> m!59438 m!59642))

(assert (=> m!59438 s!1637))

(declare-fun bs!27182 () Bool)

(declare-fun s!1639 () Bool)

(assert (= bs!27182 (and neg-inst!376 s!1639)))

(assert (=> bs!27182 (=> true (or (not (member x!21882 (content!17 (left!1158 (left!1158 thiss!7690))))) (bvslt x!21882 (elem!228 (left!1158 thiss!7690)))))))

(declare-fun m!59644 () Bool)

(assert (=> m!59424 m!59644))

(assert (=> m!59424 s!1639))

(declare-fun bs!27183 () Bool)

(declare-fun s!1641 () Bool)

(assert (= bs!27183 (and neg-inst!376 s!1641)))

(assert (=> bs!27183 (=> true (or (not (member x!21879 (content!17 (left!1158 (left!1158 thiss!7690))))) (bvslt x!21879 (elem!228 (left!1158 thiss!7690)))))))

(declare-fun m!59646 () Bool)

(assert (=> m!59402 m!59646))

(assert (=> m!59402 s!1641))

(declare-fun bs!27184 () Bool)

(declare-fun s!1643 () Bool)

(assert (= bs!27184 (and neg-inst!376 s!1643)))

(assert (=> bs!27184 (=> true (or (not (member x!21883 (content!17 (left!1158 (left!1158 thiss!7690))))) (bvslt x!21883 (elem!228 (left!1158 thiss!7690)))))))

(declare-fun m!59648 () Bool)

(assert (=> m!59426 m!59648))

(assert (=> m!59426 s!1643))

(declare-fun bs!27185 () Bool)

(declare-fun s!1645 () Bool)

(assert (= bs!27185 (and neg-inst!376 s!1645)))

(assert (=> bs!27185 (=> true (or (not (member x!21887 (content!17 (left!1158 (left!1158 thiss!7690))))) (bvslt x!21887 (elem!228 (left!1158 thiss!7690)))))))

(declare-fun m!59650 () Bool)

(assert (=> m!59442 m!59650))

(assert (=> m!59442 s!1645))

(declare-fun bs!27186 () Bool)

(declare-fun s!1647 () Bool)

(assert (= bs!27186 (and neg-inst!376 s!1647)))

(assert (=> bs!27186 (=> true (or (not (member x!21885 (content!17 (left!1158 (left!1158 thiss!7690))))) (bvslt x!21885 (elem!228 (left!1158 thiss!7690)))))))

(declare-fun m!59652 () Bool)

(assert (=> m!59434 m!59652))

(assert (=> m!59434 s!1647))

(declare-fun bs!27187 () Bool)

(declare-fun s!1649 () Bool)

(assert (= bs!27187 (and neg-inst!377 s!1649)))

(assert (=> bs!27187 (=> true (or (not (member x!21887 (content!17 (right!1161 (left!1158 thiss!7690))))) (bvslt (elem!228 (left!1158 thiss!7690)) x!21887)))))

(declare-fun m!59654 () Bool)

(assert (=> m!59442 m!59654))

(assert (=> m!59442 s!1649))

(declare-fun bs!27188 () Bool)

(declare-fun s!1651 () Bool)

(assert (= bs!27188 (and neg-inst!377 s!1651)))

(assert (=> bs!27188 (=> true (or (not (member x!21880 (content!17 (right!1161 (left!1158 thiss!7690))))) (bvslt (elem!228 (left!1158 thiss!7690)) x!21880)))))

(declare-fun m!59656 () Bool)

(assert (=> m!59406 m!59656))

(assert (=> m!59406 s!1651))

(declare-fun bs!27189 () Bool)

(declare-fun s!1653 () Bool)

(assert (= bs!27189 (and neg-inst!377 s!1653)))

(assert (=> bs!27189 (=> true (or (not (member x!21883 (content!17 (right!1161 (left!1158 thiss!7690))))) (bvslt (elem!228 (left!1158 thiss!7690)) x!21883)))))

(declare-fun m!59658 () Bool)

(assert (=> m!59426 m!59658))

(assert (=> m!59426 s!1653))

(declare-fun bs!27190 () Bool)

(declare-fun s!1655 () Bool)

(assert (= bs!27190 (and neg-inst!377 s!1655)))

(assert (=> bs!27190 (=> true (or (not (member x!21411 (content!17 (right!1161 (left!1158 thiss!7690))))) (bvslt (elem!228 (left!1158 thiss!7690)) x!21411)))))

(declare-fun m!59660 () Bool)

(assert (=> m!59414 m!59660))

(assert (=> m!59414 s!1655))

(declare-fun bs!27191 () Bool)

(declare-fun s!1657 () Bool)

(assert (= bs!27191 (and neg-inst!377 s!1657)))

(assert (=> bs!27191 (=> true (or (not (member x!21882 (content!17 (right!1161 (left!1158 thiss!7690))))) (bvslt (elem!228 (left!1158 thiss!7690)) x!21882)))))

(declare-fun m!59662 () Bool)

(assert (=> m!59424 m!59662))

(assert (=> m!59424 s!1657))

(declare-fun bs!27192 () Bool)

(declare-fun s!1659 () Bool)

(assert (= bs!27192 (and neg-inst!377 s!1659)))

(assert (=> bs!27192 (=> true (or (not (member x!21884 (content!17 (right!1161 (left!1158 thiss!7690))))) (bvslt (elem!228 (left!1158 thiss!7690)) x!21884)))))

(declare-fun m!59664 () Bool)

(assert (=> m!59430 m!59664))

(assert (=> m!59430 s!1659))

(declare-fun bs!27193 () Bool)

(declare-fun s!1661 () Bool)

(assert (= bs!27193 (and neg-inst!377 s!1661)))

(assert (=> bs!27193 (=> true (or (not (member x!21879 (content!17 (right!1161 (left!1158 thiss!7690))))) (bvslt (elem!228 (left!1158 thiss!7690)) x!21879)))))

(declare-fun m!59666 () Bool)

(assert (=> m!59402 m!59666))

(assert (=> m!59402 s!1661))

(declare-fun bs!27194 () Bool)

(declare-fun s!1663 () Bool)

(assert (= bs!27194 (and neg-inst!377 s!1663)))

(assert (=> bs!27194 (=> true (or (not (member x!21886 (content!17 (right!1161 (left!1158 thiss!7690))))) (bvslt (elem!228 (left!1158 thiss!7690)) x!21886)))))

(declare-fun m!59668 () Bool)

(assert (=> m!59438 m!59668))

(assert (=> m!59438 s!1663))

(declare-fun bs!27195 () Bool)

(declare-fun s!1665 () Bool)

(assert (= bs!27195 (and neg-inst!378 s!1665)))

(assert (=> bs!27195 (=> true (or (not (member x!21411 (content!17 (left!1158 (right!1161 thiss!7690))))) (bvslt x!21411 (elem!228 (right!1161 thiss!7690)))))))

(declare-fun m!59670 () Bool)

(assert (=> m!59414 m!59670))

(assert (=> m!59414 s!1665))

(declare-fun bs!27196 () Bool)

(declare-fun s!1667 () Bool)

(assert (= bs!27196 (and neg-inst!378 s!1667)))

(assert (=> bs!27196 (=> true (or (not (member x!21880 (content!17 (left!1158 (right!1161 thiss!7690))))) (bvslt x!21880 (elem!228 (right!1161 thiss!7690)))))))

(declare-fun m!59672 () Bool)

(assert (=> m!59406 m!59672))

(assert (=> m!59406 s!1667))

(declare-fun bs!27197 () Bool)

(declare-fun s!1669 () Bool)

(assert (= bs!27197 (and neg-inst!378 s!1669)))

(assert (=> bs!27197 (=> true (or (not (member x!21884 (content!17 (left!1158 (right!1161 thiss!7690))))) (bvslt x!21884 (elem!228 (right!1161 thiss!7690)))))))

(declare-fun m!59674 () Bool)

(assert (=> m!59430 m!59674))

(assert (=> m!59430 s!1669))

(declare-fun bs!27198 () Bool)

(declare-fun s!1671 () Bool)

(assert (= bs!27198 (and neg-inst!378 s!1671)))

(assert (=> bs!27198 (=> true (or (not (member x!21882 (content!17 (left!1158 (right!1161 thiss!7690))))) (bvslt x!21882 (elem!228 (right!1161 thiss!7690)))))))

(declare-fun m!59676 () Bool)

(assert (=> m!59424 m!59676))

(assert (=> m!59424 s!1671))

(declare-fun bs!27199 () Bool)

(declare-fun s!1673 () Bool)

(assert (= bs!27199 (and neg-inst!378 s!1673)))

(assert (=> bs!27199 (=> true (or (not (member x!21879 (content!17 (left!1158 (right!1161 thiss!7690))))) (bvslt x!21879 (elem!228 (right!1161 thiss!7690)))))))

(declare-fun m!59678 () Bool)

(assert (=> m!59402 m!59678))

(assert (=> m!59402 s!1673))

(declare-fun bs!27200 () Bool)

(declare-fun s!1675 () Bool)

(assert (= bs!27200 (and neg-inst!378 s!1675)))

(assert (=> bs!27200 (=> true (or (not (member x!21883 (content!17 (left!1158 (right!1161 thiss!7690))))) (bvslt x!21883 (elem!228 (right!1161 thiss!7690)))))))

(declare-fun m!59680 () Bool)

(assert (=> m!59426 m!59680))

(assert (=> m!59426 s!1675))

(declare-fun bs!27201 () Bool)

(declare-fun s!1677 () Bool)

(assert (= bs!27201 (and neg-inst!378 s!1677)))

(assert (=> bs!27201 (=> true (or (not (member x!21887 (content!17 (left!1158 (right!1161 thiss!7690))))) (bvslt x!21887 (elem!228 (right!1161 thiss!7690)))))))

(declare-fun m!59682 () Bool)

(assert (=> m!59442 m!59682))

(assert (=> m!59442 s!1677))

(declare-fun bs!27202 () Bool)

(declare-fun s!1679 () Bool)

(assert (= bs!27202 (and neg-inst!378 s!1679)))

(assert (=> bs!27202 (=> true (or (not (member x!21885 (content!17 (left!1158 (right!1161 thiss!7690))))) (bvslt x!21885 (elem!228 (right!1161 thiss!7690)))))))

(declare-fun m!59684 () Bool)

(assert (=> m!59434 m!59684))

(assert (=> m!59434 s!1679))

(declare-fun bs!27203 () Bool)

(declare-fun s!1681 () Bool)

(assert (= bs!27203 (and neg-inst!379 s!1681)))

(assert (=> bs!27203 (=> true (or (not (member x!21880 (content!17 (right!1161 (right!1161 thiss!7690))))) (bvslt (elem!228 (right!1161 thiss!7690)) x!21880)))))

(declare-fun m!59686 () Bool)

(assert (=> m!59406 m!59686))

(assert (=> m!59406 s!1681))

(declare-fun bs!27204 () Bool)

(declare-fun s!1683 () Bool)

(assert (= bs!27204 (and neg-inst!379 s!1683)))

(assert (=> bs!27204 (=> true (or (not (member x!21883 (content!17 (right!1161 (right!1161 thiss!7690))))) (bvslt (elem!228 (right!1161 thiss!7690)) x!21883)))))

(declare-fun m!59688 () Bool)

(assert (=> m!59426 m!59688))

(assert (=> m!59426 s!1683))

(declare-fun bs!27205 () Bool)

(declare-fun s!1685 () Bool)

(assert (= bs!27205 (and neg-inst!379 s!1685)))

(assert (=> bs!27205 (=> true (or (not (member x!21411 (content!17 (right!1161 (right!1161 thiss!7690))))) (bvslt (elem!228 (right!1161 thiss!7690)) x!21411)))))

(declare-fun m!59690 () Bool)

(assert (=> m!59414 m!59690))

(assert (=> m!59414 s!1685))

(declare-fun bs!27206 () Bool)

(declare-fun s!1687 () Bool)

(assert (= bs!27206 (and neg-inst!379 s!1687)))

(assert (=> bs!27206 (=> true (or (not (member x!21882 (content!17 (right!1161 (right!1161 thiss!7690))))) (bvslt (elem!228 (right!1161 thiss!7690)) x!21882)))))

(declare-fun m!59692 () Bool)

(assert (=> m!59424 m!59692))

(assert (=> m!59424 s!1687))

(declare-fun bs!27207 () Bool)

(declare-fun s!1689 () Bool)

(assert (= bs!27207 (and neg-inst!379 s!1689)))

(assert (=> bs!27207 (=> true (or (not (member x!21885 (content!17 (right!1161 (right!1161 thiss!7690))))) (bvslt (elem!228 (right!1161 thiss!7690)) x!21885)))))

(declare-fun m!59694 () Bool)

(assert (=> m!59434 m!59694))

(assert (=> m!59434 s!1689))

(declare-fun bs!27208 () Bool)

(declare-fun s!1691 () Bool)

(assert (= bs!27208 (and neg-inst!379 s!1691)))

(assert (=> bs!27208 (=> true (or (not (member x!21884 (content!17 (right!1161 (right!1161 thiss!7690))))) (bvslt (elem!228 (right!1161 thiss!7690)) x!21884)))))

(declare-fun m!59696 () Bool)

(assert (=> m!59430 m!59696))

(assert (=> m!59430 s!1691))

(declare-fun bs!27209 () Bool)

(declare-fun s!1693 () Bool)

(assert (= bs!27209 (and neg-inst!379 s!1693)))

(assert (=> bs!27209 (=> true (or (not (member x!21879 (content!17 (right!1161 (right!1161 thiss!7690))))) (bvslt (elem!228 (right!1161 thiss!7690)) x!21879)))))

(declare-fun m!59698 () Bool)

(assert (=> m!59402 m!59698))

(assert (=> m!59402 s!1693))

(declare-fun bs!27210 () Bool)

(declare-fun s!1695 () Bool)

(assert (= bs!27210 (and neg-inst!379 s!1695)))

(assert (=> bs!27210 (=> true (or (not (member x!21886 (content!17 (right!1161 (right!1161 thiss!7690))))) (bvslt (elem!228 (right!1161 thiss!7690)) x!21886)))))

(declare-fun m!59700 () Bool)

(assert (=> m!59438 m!59700))

(assert (=> m!59438 s!1695))

(push 1)

(assert (not b!54833))

(assert (not neg-inst!386))

(assert (not b!54829))

(assert (not neg-inst!382))

(assert (not neg-inst!384))

(assert (not b!54823))

(assert (not neg-inst!383))

(assert (not b!54824))

(assert (not neg-inst!380))

(assert (not b!54821))

(assert (not b!54804))

(assert (not b!54847))

(assert (not b!54813))

(assert (not b!54800))

(assert (not b!54845))

(assert (not b!54815))

(assert (not b!54830))

(assert (not b!54826))

(assert (not b!54840))

(assert (not neg-inst!388))

(assert (not b!54802))

(assert (not b!54828))

(assert (not b!54838))

(assert (not neg-inst!390))

(assert (not b!54805))

(assert (not d!45134))

(assert (not b!54836))

(assert (not neg-inst!381))

(assert (not b!54801))

(assert (not b!54811))

(assert (not b!54788))

(assert (not b!54844))

(assert (not neg-inst!387))

(assert (not b!54819))

(assert (not neg-inst!392))

(assert (not neg-inst!389))

(assert (not b!54843))

(assert (not b!54831))

(assert (not b!54803))

(assert (not neg-inst!391))

(assert (not neg-inst!385))

(assert (not b!54825))

(assert (not neg-inst!393))

(assert (not b!54820))

(assert (not b!54827))

(assert (not b!54818))

(assert (not b!54842))

(assert (not b!54817))

(assert (not b!54846))

(assert (not b!54848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


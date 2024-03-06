; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7630 () Bool)

(assert start!7630)

(declare-fun res!25026 () Bool)

(declare-fun e!28641 () Bool)

(assert (=> start!7630 (=> (not res!25026) (not e!28641))))

(declare-fun x!21411 () (_ BitVec 32))

(declare-datatypes () ((IntSet!39 (Empty!164) (Node!125 (left!1155 IntSet!39) (elem!225 (_ BitVec 32)) (right!1158 IntSet!39)))))

(declare-fun thiss!7690 () IntSet!39)

(declare-fun res!24724 () IntSet!39)

(assert (=> start!7630 (= res!25026 (and (is-Empty!164 thiss!7690) (= res!24724 (Node!125 Empty!164 x!21411 Empty!164))))))

(assert (=> start!7630 e!28641))

(declare-fun e!28642 () Bool)

(declare-fun inv!977 (IntSet!39) Bool)

(assert (=> start!7630 (and (inv!977 thiss!7690) e!28642)))

(declare-fun e!28643 () Bool)

(assert (=> start!7630 (and (inv!977 res!24724) e!28643)))

(assert (=> start!7630 true))

(declare-fun b!54583 () Bool)

(declare-fun content!17 (IntSet!39) (Set (_ BitVec 32)))

(assert (=> b!54583 (= e!28641 (not (= (content!17 res!24724) (union (content!17 thiss!7690) (insert x!21411 (as emptyset (Set (_ BitVec 32))))))))))

(declare-fun tp!15426 () Bool)

(declare-fun tp!15425 () Bool)

(declare-fun b!54584 () Bool)

(assert (=> b!54584 (= e!28642 (and (inv!977 (left!1155 thiss!7690)) tp!15425 (inv!977 (right!1158 thiss!7690)) tp!15426))))

(declare-fun b!54585 () Bool)

(declare-fun tp!15427 () Bool)

(declare-fun tp!15428 () Bool)

(assert (=> b!54585 (= e!28643 (and (inv!977 (left!1155 res!24724)) tp!15428 (inv!977 (right!1158 res!24724)) tp!15427))))

(assert (= (and start!7630 res!25026) b!54583))

(assert (= (and start!7630 (is-Node!125 thiss!7690)) b!54584))

(assert (= (and start!7630 (is-Node!125 res!24724)) b!54585))

(declare-fun m!58894 () Bool)

(assert (=> start!7630 m!58894))

(declare-fun m!58896 () Bool)

(assert (=> start!7630 m!58896))

(declare-fun m!58898 () Bool)

(assert (=> b!54583 m!58898))

(declare-fun m!58900 () Bool)

(assert (=> b!54583 m!58900))

(declare-fun m!58902 () Bool)

(assert (=> b!54583 m!58902))

(declare-fun m!58904 () Bool)

(assert (=> b!54584 m!58904))

(declare-fun m!58906 () Bool)

(assert (=> b!54584 m!58906))

(declare-fun m!58908 () Bool)

(assert (=> b!54585 m!58908))

(declare-fun m!58910 () Bool)

(assert (=> b!54585 m!58910))

(push 1)

(assert (not b!54585))

(assert (not b!54584))

(assert (not start!7630))

(assert (not b!54583))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!54590 () Bool)

(declare-fun m!58912 () Bool)

(assert (=> b!54590 m!58912))

(declare-fun inst!326 () Bool)

(declare-fun x!21771 () (_ BitVec 32))

(assert (=> b!54590 (= inst!326 (=> true (or (not (member x!21771 (content!17 (left!1155 (left!1155 res!24724))))) (bvslt x!21771 (elem!225 (left!1155 res!24724))))))))

(declare-fun m!58914 () Bool)

(assert (=> b!54590 m!58914))

(declare-fun b!54591 () Bool)

(declare-fun m!58916 () Bool)

(assert (=> b!54591 m!58916))

(declare-fun inst!327 () Bool)

(declare-fun x!21772 () (_ BitVec 32))

(assert (=> b!54591 (= inst!327 (=> true (or (not (member x!21772 (content!17 (right!1158 (left!1155 res!24724))))) (bvslt (elem!225 (left!1155 res!24724)) x!21772))))))

(declare-fun m!58918 () Bool)

(assert (=> b!54591 m!58918))

(declare-fun bs!25756 () Bool)

(declare-fun neg-inst!314 () Bool)

(assert (= bs!25756 neg-inst!314))

(assert (=> bs!25756 m!58912))

(declare-fun bs!25757 () Bool)

(declare-fun s!1305 () Bool)

(assert (= bs!25757 (and neg-inst!314 s!1305)))

(assert (=> bs!25757 (=> true (or (not (member x!21771 (content!17 (left!1155 (left!1155 res!24724))))) (bvslt x!21771 (elem!225 (left!1155 res!24724)))))))

(assert (=> m!58914 s!1305))

(declare-fun bs!25758 () Bool)

(assert (= bs!25758 (and neg-inst!314 b!54590)))

(assert (=> bs!25758 (= true inst!326)))

(declare-fun bs!25759 () Bool)

(declare-fun neg-inst!315 () Bool)

(assert (= bs!25759 neg-inst!315))

(assert (=> bs!25759 m!58916))

(declare-fun bs!25760 () Bool)

(declare-fun s!1307 () Bool)

(assert (= bs!25760 (and neg-inst!315 s!1307)))

(assert (=> bs!25760 (=> true (or (not (member x!21772 (content!17 (right!1158 (left!1155 res!24724))))) (bvslt (elem!225 (left!1155 res!24724)) x!21772)))))

(assert (=> m!58918 s!1307))

(declare-fun bs!25761 () Bool)

(assert (= bs!25761 (and neg-inst!315 b!54591)))

(assert (=> bs!25761 (= true inst!327)))

(declare-fun d!45022 () Bool)

(declare-fun res!25031 () Bool)

(declare-fun e!28648 () Bool)

(assert (=> d!45022 (=> res!25031 e!28648)))

(assert (=> d!45022 (= res!25031 (not (is-Node!125 (left!1155 res!24724))))))

(assert (=> d!45022 (= (inv!977 (left!1155 res!24724)) e!28648)))

(declare-fun e!28649 () Bool)

(assert (=> b!54590 (= e!28648 e!28649)))

(declare-fun res!25032 () Bool)

(assert (=> b!54590 (=> (not res!25032) (not e!28649))))

(assert (=> b!54590 (= res!25032 inst!326)))

(assert (=> b!54591 (= e!28649 inst!327)))

(assert (= (and d!45022 (not res!25031)) b!54590))

(assert (= neg-inst!314 inst!326))

(assert (= (and b!54590 res!25032) b!54591))

(assert (= neg-inst!315 inst!327))

(assert (=> b!54585 d!45022))

(declare-fun b!54592 () Bool)

(declare-fun m!58920 () Bool)

(assert (=> b!54592 m!58920))

(declare-fun inst!328 () Bool)

(declare-fun x!21773 () (_ BitVec 32))

(assert (=> b!54592 (= inst!328 (=> true (or (not (member x!21773 (content!17 (left!1155 (right!1158 res!24724))))) (bvslt x!21773 (elem!225 (right!1158 res!24724))))))))

(declare-fun m!58922 () Bool)

(assert (=> b!54592 m!58922))

(declare-fun bs!25762 () Bool)

(assert (= bs!25762 (and b!54592 neg-inst!314)))

(assert (=> (and bs!25762 (= (content!17 (left!1155 (right!1158 res!24724))) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 (right!1158 res!24724)) (elem!225 (left!1155 res!24724)))) (= inst!328 true)))

(declare-fun bs!25763 () Bool)

(assert (= bs!25763 (and b!54592 b!54590)))

(assert (=> (and bs!25763 (= (content!17 (left!1155 (right!1158 res!24724))) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 (right!1158 res!24724)) (elem!225 (left!1155 res!24724)))) (= inst!328 inst!326)))

(declare-fun b!54593 () Bool)

(declare-fun m!58924 () Bool)

(assert (=> b!54593 m!58924))

(declare-fun inst!329 () Bool)

(declare-fun x!21774 () (_ BitVec 32))

(assert (=> b!54593 (= inst!329 (=> true (or (not (member x!21774 (content!17 (right!1158 (right!1158 res!24724))))) (bvslt (elem!225 (right!1158 res!24724)) x!21774))))))

(declare-fun m!58926 () Bool)

(assert (=> b!54593 m!58926))

(declare-fun bs!25764 () Bool)

(assert (= bs!25764 (and b!54593 neg-inst!315)))

(assert (=> (and bs!25764 (= (content!17 (right!1158 (right!1158 res!24724))) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 (right!1158 res!24724)) (elem!225 (left!1155 res!24724)))) (= inst!329 true)))

(declare-fun bs!25765 () Bool)

(assert (= bs!25765 (and b!54593 b!54591)))

(assert (=> (and bs!25765 (= (content!17 (right!1158 (right!1158 res!24724))) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 (right!1158 res!24724)) (elem!225 (left!1155 res!24724)))) (= inst!329 inst!327)))

(declare-fun bs!25766 () Bool)

(declare-fun neg-inst!316 () Bool)

(assert (= bs!25766 neg-inst!316))

(assert (=> bs!25766 m!58920))

(declare-fun bs!25767 () Bool)

(declare-fun s!1309 () Bool)

(assert (= bs!25767 (and neg-inst!316 s!1309)))

(assert (=> bs!25767 (=> true (or (not (member x!21773 (content!17 (left!1155 (right!1158 res!24724))))) (bvslt x!21773 (elem!225 (right!1158 res!24724)))))))

(assert (=> m!58922 s!1309))

(declare-fun bs!25768 () Bool)

(assert (= bs!25768 (and neg-inst!316 neg-inst!314)))

(assert (=> (and bs!25768 (= (content!17 (left!1155 (right!1158 res!24724))) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 (right!1158 res!24724)) (elem!225 (left!1155 res!24724)))) (= true true)))

(declare-fun bs!25769 () Bool)

(assert (= bs!25769 (and neg-inst!316 b!54592)))

(assert (=> bs!25769 (= true inst!328)))

(declare-fun bs!25770 () Bool)

(assert (= bs!25770 (and neg-inst!316 b!54590)))

(assert (=> (and bs!25770 (= (content!17 (left!1155 (right!1158 res!24724))) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 (right!1158 res!24724)) (elem!225 (left!1155 res!24724)))) (= true inst!326)))

(declare-fun bs!25771 () Bool)

(declare-fun neg-inst!317 () Bool)

(assert (= bs!25771 neg-inst!317))

(assert (=> bs!25771 m!58924))

(declare-fun bs!25772 () Bool)

(declare-fun s!1311 () Bool)

(assert (= bs!25772 (and neg-inst!317 s!1311)))

(assert (=> bs!25772 (=> true (or (not (member x!21774 (content!17 (right!1158 (right!1158 res!24724))))) (bvslt (elem!225 (right!1158 res!24724)) x!21774)))))

(assert (=> m!58926 s!1311))

(declare-fun bs!25773 () Bool)

(assert (= bs!25773 (and neg-inst!317 b!54593)))

(assert (=> bs!25773 (= true inst!329)))

(declare-fun bs!25774 () Bool)

(assert (= bs!25774 (and neg-inst!317 neg-inst!315)))

(assert (=> (and bs!25774 (= (content!17 (right!1158 (right!1158 res!24724))) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 (right!1158 res!24724)) (elem!225 (left!1155 res!24724)))) (= true true)))

(declare-fun bs!25775 () Bool)

(assert (= bs!25775 (and neg-inst!317 b!54591)))

(assert (=> (and bs!25775 (= (content!17 (right!1158 (right!1158 res!24724))) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 (right!1158 res!24724)) (elem!225 (left!1155 res!24724)))) (= true inst!327)))

(declare-fun d!45024 () Bool)

(declare-fun res!25033 () Bool)

(declare-fun e!28650 () Bool)

(assert (=> d!45024 (=> res!25033 e!28650)))

(assert (=> d!45024 (= res!25033 (not (is-Node!125 (right!1158 res!24724))))))

(assert (=> d!45024 (= (inv!977 (right!1158 res!24724)) e!28650)))

(declare-fun e!28651 () Bool)

(assert (=> b!54592 (= e!28650 e!28651)))

(declare-fun res!25034 () Bool)

(assert (=> b!54592 (=> (not res!25034) (not e!28651))))

(assert (=> b!54592 (= res!25034 inst!328)))

(assert (=> b!54593 (= e!28651 inst!329)))

(assert (= (and d!45024 (not res!25033)) b!54592))

(assert (= neg-inst!316 inst!328))

(assert (= (and b!54592 res!25034) b!54593))

(assert (= neg-inst!317 inst!329))

(assert (=> b!54585 d!45024))

(declare-fun b!54594 () Bool)

(declare-fun m!58928 () Bool)

(assert (=> b!54594 m!58928))

(declare-fun inst!330 () Bool)

(declare-fun x!21775 () (_ BitVec 32))

(assert (=> b!54594 (= inst!330 (=> true (or (not (member x!21775 (content!17 (left!1155 (left!1155 thiss!7690))))) (bvslt x!21775 (elem!225 (left!1155 thiss!7690))))))))

(declare-fun m!58930 () Bool)

(assert (=> b!54594 m!58930))

(declare-fun bs!25776 () Bool)

(assert (= bs!25776 (and b!54594 neg-inst!314)))

(assert (=> (and bs!25776 (= (content!17 (left!1155 (left!1155 thiss!7690))) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= inst!330 true)))

(declare-fun bs!25777 () Bool)

(assert (= bs!25777 (and b!54594 b!54592)))

(assert (=> (and bs!25777 (= (content!17 (left!1155 (left!1155 thiss!7690))) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= inst!330 inst!328)))

(declare-fun bs!25778 () Bool)

(assert (= bs!25778 (and b!54594 b!54590)))

(assert (=> (and bs!25778 (= (content!17 (left!1155 (left!1155 thiss!7690))) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= inst!330 inst!326)))

(declare-fun bs!25779 () Bool)

(assert (= bs!25779 (and b!54594 neg-inst!316)))

(assert (=> (and bs!25779 (= (content!17 (left!1155 (left!1155 thiss!7690))) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= inst!330 true)))

(declare-fun b!54595 () Bool)

(declare-fun m!58932 () Bool)

(assert (=> b!54595 m!58932))

(declare-fun inst!331 () Bool)

(declare-fun x!21776 () (_ BitVec 32))

(assert (=> b!54595 (= inst!331 (=> true (or (not (member x!21776 (content!17 (right!1158 (left!1155 thiss!7690))))) (bvslt (elem!225 (left!1155 thiss!7690)) x!21776))))))

(declare-fun m!58934 () Bool)

(assert (=> b!54595 m!58934))

(declare-fun bs!25780 () Bool)

(assert (= bs!25780 (and b!54595 neg-inst!317)))

(assert (=> (and bs!25780 (= (content!17 (right!1158 (left!1155 thiss!7690))) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= inst!331 true)))

(declare-fun bs!25781 () Bool)

(assert (= bs!25781 (and b!54595 b!54593)))

(assert (=> (and bs!25781 (= (content!17 (right!1158 (left!1155 thiss!7690))) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= inst!331 inst!329)))

(declare-fun bs!25782 () Bool)

(assert (= bs!25782 (and b!54595 neg-inst!315)))

(assert (=> (and bs!25782 (= (content!17 (right!1158 (left!1155 thiss!7690))) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= inst!331 true)))

(declare-fun bs!25783 () Bool)

(assert (= bs!25783 (and b!54595 b!54591)))

(assert (=> (and bs!25783 (= (content!17 (right!1158 (left!1155 thiss!7690))) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= inst!331 inst!327)))

(declare-fun bs!25784 () Bool)

(declare-fun neg-inst!318 () Bool)

(assert (= bs!25784 neg-inst!318))

(assert (=> bs!25784 m!58928))

(declare-fun bs!25785 () Bool)

(declare-fun s!1313 () Bool)

(assert (= bs!25785 (and neg-inst!318 s!1313)))

(assert (=> bs!25785 (=> true (or (not (member x!21775 (content!17 (left!1155 (left!1155 thiss!7690))))) (bvslt x!21775 (elem!225 (left!1155 thiss!7690)))))))

(assert (=> m!58930 s!1313))

(declare-fun bs!25786 () Bool)

(assert (= bs!25786 (and neg-inst!318 neg-inst!314)))

(assert (=> (and bs!25786 (= (content!17 (left!1155 (left!1155 thiss!7690))) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= true true)))

(declare-fun bs!25787 () Bool)

(assert (= bs!25787 (and neg-inst!318 b!54592)))

(assert (=> (and bs!25787 (= (content!17 (left!1155 (left!1155 thiss!7690))) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= true inst!328)))

(declare-fun bs!25788 () Bool)

(assert (= bs!25788 (and neg-inst!318 b!54590)))

(assert (=> (and bs!25788 (= (content!17 (left!1155 (left!1155 thiss!7690))) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= true inst!326)))

(declare-fun bs!25789 () Bool)

(assert (= bs!25789 (and neg-inst!318 b!54594)))

(assert (=> bs!25789 (= true inst!330)))

(declare-fun bs!25790 () Bool)

(assert (= bs!25790 (and neg-inst!318 neg-inst!316)))

(assert (=> (and bs!25790 (= (content!17 (left!1155 (left!1155 thiss!7690))) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= true true)))

(declare-fun bs!25791 () Bool)

(declare-fun neg-inst!319 () Bool)

(assert (= bs!25791 neg-inst!319))

(assert (=> bs!25791 m!58932))

(declare-fun bs!25792 () Bool)

(declare-fun s!1315 () Bool)

(assert (= bs!25792 (and neg-inst!319 s!1315)))

(assert (=> bs!25792 (=> true (or (not (member x!21776 (content!17 (right!1158 (left!1155 thiss!7690))))) (bvslt (elem!225 (left!1155 thiss!7690)) x!21776)))))

(assert (=> m!58934 s!1315))

(declare-fun bs!25793 () Bool)

(assert (= bs!25793 (and neg-inst!319 b!54595)))

(assert (=> bs!25793 (= true inst!331)))

(declare-fun bs!25794 () Bool)

(assert (= bs!25794 (and neg-inst!319 neg-inst!317)))

(assert (=> (and bs!25794 (= (content!17 (right!1158 (left!1155 thiss!7690))) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= true true)))

(declare-fun bs!25795 () Bool)

(assert (= bs!25795 (and neg-inst!319 b!54593)))

(assert (=> (and bs!25795 (= (content!17 (right!1158 (left!1155 thiss!7690))) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= true inst!329)))

(declare-fun bs!25796 () Bool)

(assert (= bs!25796 (and neg-inst!319 neg-inst!315)))

(assert (=> (and bs!25796 (= (content!17 (right!1158 (left!1155 thiss!7690))) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= true true)))

(declare-fun bs!25797 () Bool)

(assert (= bs!25797 (and neg-inst!319 b!54591)))

(assert (=> (and bs!25797 (= (content!17 (right!1158 (left!1155 thiss!7690))) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 (left!1155 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= true inst!327)))

(declare-fun d!45026 () Bool)

(declare-fun res!25035 () Bool)

(declare-fun e!28652 () Bool)

(assert (=> d!45026 (=> res!25035 e!28652)))

(assert (=> d!45026 (= res!25035 (not (is-Node!125 (left!1155 thiss!7690))))))

(assert (=> d!45026 (= (inv!977 (left!1155 thiss!7690)) e!28652)))

(declare-fun e!28653 () Bool)

(assert (=> b!54594 (= e!28652 e!28653)))

(declare-fun res!25036 () Bool)

(assert (=> b!54594 (=> (not res!25036) (not e!28653))))

(assert (=> b!54594 (= res!25036 inst!330)))

(assert (=> b!54595 (= e!28653 inst!331)))

(assert (= (and d!45026 (not res!25035)) b!54594))

(assert (= neg-inst!318 inst!330))

(assert (= (and b!54594 res!25036) b!54595))

(assert (= neg-inst!319 inst!331))

(assert (=> b!54584 d!45026))

(declare-fun b!54596 () Bool)

(declare-fun m!58936 () Bool)

(assert (=> b!54596 m!58936))

(declare-fun inst!332 () Bool)

(declare-fun x!21777 () (_ BitVec 32))

(assert (=> b!54596 (= inst!332 (=> true (or (not (member x!21777 (content!17 (left!1155 (right!1158 thiss!7690))))) (bvslt x!21777 (elem!225 (right!1158 thiss!7690))))))))

(declare-fun m!58938 () Bool)

(assert (=> b!54596 m!58938))

(declare-fun bs!25798 () Bool)

(assert (= bs!25798 (and b!54596 neg-inst!314)))

(assert (=> (and bs!25798 (= (content!17 (left!1155 (right!1158 thiss!7690))) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= inst!332 true)))

(declare-fun bs!25799 () Bool)

(assert (= bs!25799 (and b!54596 neg-inst!318)))

(assert (=> (and bs!25799 (= (content!17 (left!1155 (right!1158 thiss!7690))) (content!17 (left!1155 (left!1155 thiss!7690)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 thiss!7690)))) (= inst!332 true)))

(declare-fun bs!25800 () Bool)

(assert (= bs!25800 (and b!54596 b!54592)))

(assert (=> (and bs!25800 (= (content!17 (left!1155 (right!1158 thiss!7690))) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= inst!332 inst!328)))

(declare-fun bs!25801 () Bool)

(assert (= bs!25801 (and b!54596 b!54590)))

(assert (=> (and bs!25801 (= (content!17 (left!1155 (right!1158 thiss!7690))) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= inst!332 inst!326)))

(declare-fun bs!25802 () Bool)

(assert (= bs!25802 (and b!54596 b!54594)))

(assert (=> (and bs!25802 (= (content!17 (left!1155 (right!1158 thiss!7690))) (content!17 (left!1155 (left!1155 thiss!7690)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 thiss!7690)))) (= inst!332 inst!330)))

(declare-fun bs!25803 () Bool)

(assert (= bs!25803 (and b!54596 neg-inst!316)))

(assert (=> (and bs!25803 (= (content!17 (left!1155 (right!1158 thiss!7690))) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= inst!332 true)))

(declare-fun b!54597 () Bool)

(declare-fun m!58940 () Bool)

(assert (=> b!54597 m!58940))

(declare-fun inst!333 () Bool)

(declare-fun x!21778 () (_ BitVec 32))

(assert (=> b!54597 (= inst!333 (=> true (or (not (member x!21778 (content!17 (right!1158 (right!1158 thiss!7690))))) (bvslt (elem!225 (right!1158 thiss!7690)) x!21778))))))

(declare-fun m!58942 () Bool)

(assert (=> b!54597 m!58942))

(declare-fun bs!25804 () Bool)

(assert (= bs!25804 (and b!54597 b!54595)))

(assert (=> (and bs!25804 (= (content!17 (right!1158 (right!1158 thiss!7690))) (content!17 (right!1158 (left!1155 thiss!7690)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 thiss!7690)))) (= inst!333 inst!331)))

(declare-fun bs!25805 () Bool)

(assert (= bs!25805 (and b!54597 neg-inst!317)))

(assert (=> (and bs!25805 (= (content!17 (right!1158 (right!1158 thiss!7690))) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= inst!333 true)))

(declare-fun bs!25806 () Bool)

(assert (= bs!25806 (and b!54597 b!54593)))

(assert (=> (and bs!25806 (= (content!17 (right!1158 (right!1158 thiss!7690))) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= inst!333 inst!329)))

(declare-fun bs!25807 () Bool)

(assert (= bs!25807 (and b!54597 neg-inst!315)))

(assert (=> (and bs!25807 (= (content!17 (right!1158 (right!1158 thiss!7690))) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= inst!333 true)))

(declare-fun bs!25808 () Bool)

(assert (= bs!25808 (and b!54597 b!54591)))

(assert (=> (and bs!25808 (= (content!17 (right!1158 (right!1158 thiss!7690))) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= inst!333 inst!327)))

(declare-fun bs!25809 () Bool)

(assert (= bs!25809 (and b!54597 neg-inst!319)))

(assert (=> (and bs!25809 (= (content!17 (right!1158 (right!1158 thiss!7690))) (content!17 (right!1158 (left!1155 thiss!7690)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 thiss!7690)))) (= inst!333 true)))

(declare-fun bs!25810 () Bool)

(declare-fun neg-inst!320 () Bool)

(assert (= bs!25810 neg-inst!320))

(assert (=> bs!25810 m!58936))

(declare-fun bs!25811 () Bool)

(declare-fun s!1317 () Bool)

(assert (= bs!25811 (and neg-inst!320 s!1317)))

(assert (=> bs!25811 (=> true (or (not (member x!21777 (content!17 (left!1155 (right!1158 thiss!7690))))) (bvslt x!21777 (elem!225 (right!1158 thiss!7690)))))))

(assert (=> m!58938 s!1317))

(declare-fun bs!25812 () Bool)

(assert (= bs!25812 (and neg-inst!320 neg-inst!314)))

(assert (=> (and bs!25812 (= (content!17 (left!1155 (right!1158 thiss!7690))) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= true true)))

(declare-fun bs!25813 () Bool)

(assert (= bs!25813 (and neg-inst!320 b!54596)))

(assert (=> bs!25813 (= true inst!332)))

(declare-fun bs!25814 () Bool)

(assert (= bs!25814 (and neg-inst!320 b!54592)))

(assert (=> (and bs!25814 (= (content!17 (left!1155 (right!1158 thiss!7690))) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= true inst!328)))

(declare-fun bs!25815 () Bool)

(assert (= bs!25815 (and neg-inst!320 neg-inst!318)))

(assert (=> (and bs!25815 (= (content!17 (left!1155 (right!1158 thiss!7690))) (content!17 (left!1155 (left!1155 thiss!7690)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25816 () Bool)

(assert (= bs!25816 (and neg-inst!320 b!54590)))

(assert (=> (and bs!25816 (= (content!17 (left!1155 (right!1158 thiss!7690))) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= true inst!326)))

(declare-fun bs!25817 () Bool)

(assert (= bs!25817 (and neg-inst!320 neg-inst!316)))

(assert (=> (and bs!25817 (= (content!17 (left!1155 (right!1158 thiss!7690))) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= true true)))

(declare-fun bs!25818 () Bool)

(assert (= bs!25818 (and neg-inst!320 b!54594)))

(assert (=> (and bs!25818 (= (content!17 (left!1155 (right!1158 thiss!7690))) (content!17 (left!1155 (left!1155 thiss!7690)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 thiss!7690)))) (= true inst!330)))

(declare-fun bs!25819 () Bool)

(declare-fun neg-inst!321 () Bool)

(assert (= bs!25819 neg-inst!321))

(assert (=> bs!25819 m!58940))

(declare-fun bs!25820 () Bool)

(declare-fun s!1319 () Bool)

(assert (= bs!25820 (and neg-inst!321 s!1319)))

(assert (=> bs!25820 (=> true (or (not (member x!21778 (content!17 (right!1158 (right!1158 thiss!7690))))) (bvslt (elem!225 (right!1158 thiss!7690)) x!21778)))))

(assert (=> m!58942 s!1319))

(declare-fun bs!25821 () Bool)

(assert (= bs!25821 (and neg-inst!321 b!54595)))

(assert (=> (and bs!25821 (= (content!17 (right!1158 (right!1158 thiss!7690))) (content!17 (right!1158 (left!1155 thiss!7690)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 thiss!7690)))) (= true inst!331)))

(declare-fun bs!25822 () Bool)

(assert (= bs!25822 (and neg-inst!321 neg-inst!317)))

(assert (=> (and bs!25822 (= (content!17 (right!1158 (right!1158 thiss!7690))) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= true true)))

(declare-fun bs!25823 () Bool)

(assert (= bs!25823 (and neg-inst!321 b!54597)))

(assert (=> bs!25823 (= true inst!333)))

(declare-fun bs!25824 () Bool)

(assert (= bs!25824 (and neg-inst!321 b!54593)))

(assert (=> (and bs!25824 (= (content!17 (right!1158 (right!1158 thiss!7690))) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (right!1158 res!24724)))) (= true inst!329)))

(declare-fun bs!25825 () Bool)

(assert (= bs!25825 (and neg-inst!321 neg-inst!315)))

(assert (=> (and bs!25825 (= (content!17 (right!1158 (right!1158 thiss!7690))) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= true true)))

(declare-fun bs!25826 () Bool)

(assert (= bs!25826 (and neg-inst!321 b!54591)))

(assert (=> (and bs!25826 (= (content!17 (right!1158 (right!1158 thiss!7690))) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 res!24724)))) (= true inst!327)))

(declare-fun bs!25827 () Bool)

(assert (= bs!25827 (and neg-inst!321 neg-inst!319)))

(assert (=> (and bs!25827 (= (content!17 (right!1158 (right!1158 thiss!7690))) (content!17 (right!1158 (left!1155 thiss!7690)))) (= (elem!225 (right!1158 thiss!7690)) (elem!225 (left!1155 thiss!7690)))) (= true true)))

(declare-fun d!45028 () Bool)

(declare-fun res!25037 () Bool)

(declare-fun e!28654 () Bool)

(assert (=> d!45028 (=> res!25037 e!28654)))

(assert (=> d!45028 (= res!25037 (not (is-Node!125 (right!1158 thiss!7690))))))

(assert (=> d!45028 (= (inv!977 (right!1158 thiss!7690)) e!28654)))

(declare-fun e!28655 () Bool)

(assert (=> b!54596 (= e!28654 e!28655)))

(declare-fun res!25038 () Bool)

(assert (=> b!54596 (=> (not res!25038) (not e!28655))))

(assert (=> b!54596 (= res!25038 inst!332)))

(assert (=> b!54597 (= e!28655 inst!333)))

(assert (= (and d!45028 (not res!25037)) b!54596))

(assert (= neg-inst!320 inst!332))

(assert (= (and b!54596 res!25038) b!54597))

(assert (= neg-inst!321 inst!333))

(assert (=> b!54584 d!45028))

(declare-fun b!54598 () Bool)

(declare-fun m!58944 () Bool)

(assert (=> b!54598 m!58944))

(declare-fun inst!334 () Bool)

(declare-fun x!21779 () (_ BitVec 32))

(assert (=> b!54598 (= inst!334 (=> true (or (not (member x!21779 (content!17 (left!1155 thiss!7690)))) (bvslt x!21779 (elem!225 thiss!7690)))))))

(declare-fun m!58946 () Bool)

(assert (=> b!54598 m!58946))

(declare-fun bs!25828 () Bool)

(assert (= bs!25828 (and b!54598 neg-inst!314)))

(assert (=> (and bs!25828 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 res!24724)))) (= inst!334 true)))

(declare-fun bs!25829 () Bool)

(assert (= bs!25829 (and b!54598 b!54596)))

(assert (=> (and bs!25829 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (right!1158 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 thiss!7690)))) (= inst!334 inst!332)))

(declare-fun bs!25830 () Bool)

(assert (= bs!25830 (and b!54598 b!54592)))

(assert (=> (and bs!25830 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 res!24724)))) (= inst!334 inst!328)))

(declare-fun bs!25831 () Bool)

(assert (= bs!25831 (and b!54598 neg-inst!318)))

(assert (=> (and bs!25831 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (left!1155 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 thiss!7690)))) (= inst!334 true)))

(declare-fun bs!25832 () Bool)

(assert (= bs!25832 (and b!54598 neg-inst!320)))

(assert (=> (and bs!25832 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (right!1158 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 thiss!7690)))) (= inst!334 true)))

(declare-fun bs!25833 () Bool)

(assert (= bs!25833 (and b!54598 b!54590)))

(assert (=> (and bs!25833 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 res!24724)))) (= inst!334 inst!326)))

(declare-fun bs!25834 () Bool)

(assert (= bs!25834 (and b!54598 neg-inst!316)))

(assert (=> (and bs!25834 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 res!24724)))) (= inst!334 true)))

(declare-fun bs!25835 () Bool)

(assert (= bs!25835 (and b!54598 b!54594)))

(assert (=> (and bs!25835 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (left!1155 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 thiss!7690)))) (= inst!334 inst!330)))

(declare-fun b!54599 () Bool)

(declare-fun m!58948 () Bool)

(assert (=> b!54599 m!58948))

(declare-fun inst!335 () Bool)

(declare-fun x!21780 () (_ BitVec 32))

(assert (=> b!54599 (= inst!335 (=> true (or (not (member x!21780 (content!17 (right!1158 thiss!7690)))) (bvslt (elem!225 thiss!7690) x!21780))))))

(declare-fun m!58950 () Bool)

(assert (=> b!54599 m!58950))

(declare-fun bs!25836 () Bool)

(assert (= bs!25836 (and b!54599 b!54595)))

(assert (=> (and bs!25836 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (left!1155 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 thiss!7690)))) (= inst!335 inst!331)))

(declare-fun bs!25837 () Bool)

(assert (= bs!25837 (and b!54599 neg-inst!317)))

(assert (=> (and bs!25837 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 res!24724)))) (= inst!335 true)))

(declare-fun bs!25838 () Bool)

(assert (= bs!25838 (and b!54599 neg-inst!321)))

(assert (=> (and bs!25838 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (right!1158 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 thiss!7690)))) (= inst!335 true)))

(declare-fun bs!25839 () Bool)

(assert (= bs!25839 (and b!54599 b!54597)))

(assert (=> (and bs!25839 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (right!1158 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 thiss!7690)))) (= inst!335 inst!333)))

(declare-fun bs!25840 () Bool)

(assert (= bs!25840 (and b!54599 b!54593)))

(assert (=> (and bs!25840 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 res!24724)))) (= inst!335 inst!329)))

(declare-fun bs!25841 () Bool)

(assert (= bs!25841 (and b!54599 neg-inst!315)))

(assert (=> (and bs!25841 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 res!24724)))) (= inst!335 true)))

(declare-fun bs!25842 () Bool)

(assert (= bs!25842 (and b!54599 b!54591)))

(assert (=> (and bs!25842 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 res!24724)))) (= inst!335 inst!327)))

(declare-fun bs!25843 () Bool)

(assert (= bs!25843 (and b!54599 neg-inst!319)))

(assert (=> (and bs!25843 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (left!1155 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 thiss!7690)))) (= inst!335 true)))

(declare-fun bs!25844 () Bool)

(declare-fun neg-inst!322 () Bool)

(assert (= bs!25844 neg-inst!322))

(assert (=> bs!25844 m!58944))

(declare-fun bs!25845 () Bool)

(declare-fun s!1321 () Bool)

(assert (= bs!25845 (and neg-inst!322 s!1321)))

(assert (=> bs!25845 (=> true (or (not (member x!21779 (content!17 (left!1155 thiss!7690)))) (bvslt x!21779 (elem!225 thiss!7690))))))

(assert (=> m!58946 s!1321))

(declare-fun bs!25846 () Bool)

(assert (= bs!25846 (and neg-inst!322 neg-inst!314)))

(assert (=> (and bs!25846 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 res!24724)))) (= true true)))

(declare-fun bs!25847 () Bool)

(assert (= bs!25847 (and neg-inst!322 b!54598)))

(assert (=> bs!25847 (= true inst!334)))

(declare-fun bs!25848 () Bool)

(assert (= bs!25848 (and neg-inst!322 b!54596)))

(assert (=> (and bs!25848 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (right!1158 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 thiss!7690)))) (= true inst!332)))

(declare-fun bs!25849 () Bool)

(assert (= bs!25849 (and neg-inst!322 b!54592)))

(assert (=> (and bs!25849 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 res!24724)))) (= true inst!328)))

(declare-fun bs!25850 () Bool)

(assert (= bs!25850 (and neg-inst!322 neg-inst!318)))

(assert (=> (and bs!25850 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (left!1155 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25851 () Bool)

(assert (= bs!25851 (and neg-inst!322 neg-inst!320)))

(assert (=> (and bs!25851 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (right!1158 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 thiss!7690)))) (= true true)))

(declare-fun bs!25852 () Bool)

(assert (= bs!25852 (and neg-inst!322 b!54590)))

(assert (=> (and bs!25852 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 res!24724)))) (= true inst!326)))

(declare-fun bs!25853 () Bool)

(assert (= bs!25853 (and neg-inst!322 neg-inst!316)))

(assert (=> (and bs!25853 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 res!24724)))) (= true true)))

(declare-fun bs!25854 () Bool)

(assert (= bs!25854 (and neg-inst!322 b!54594)))

(assert (=> (and bs!25854 (= (content!17 (left!1155 thiss!7690)) (content!17 (left!1155 (left!1155 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 thiss!7690)))) (= true inst!330)))

(declare-fun bs!25855 () Bool)

(declare-fun neg-inst!323 () Bool)

(assert (= bs!25855 neg-inst!323))

(assert (=> bs!25855 m!58948))

(declare-fun bs!25856 () Bool)

(declare-fun s!1323 () Bool)

(assert (= bs!25856 (and neg-inst!323 s!1323)))

(assert (=> bs!25856 (=> true (or (not (member x!21780 (content!17 (right!1158 thiss!7690)))) (bvslt (elem!225 thiss!7690) x!21780)))))

(assert (=> m!58950 s!1323))

(declare-fun bs!25857 () Bool)

(assert (= bs!25857 (and neg-inst!323 b!54595)))

(assert (=> (and bs!25857 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (left!1155 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 thiss!7690)))) (= true inst!331)))

(declare-fun bs!25858 () Bool)

(assert (= bs!25858 (and neg-inst!323 neg-inst!317)))

(assert (=> (and bs!25858 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 res!24724)))) (= true true)))

(declare-fun bs!25859 () Bool)

(assert (= bs!25859 (and neg-inst!323 neg-inst!321)))

(assert (=> (and bs!25859 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (right!1158 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 thiss!7690)))) (= true true)))

(declare-fun bs!25860 () Bool)

(assert (= bs!25860 (and neg-inst!323 b!54597)))

(assert (=> (and bs!25860 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (right!1158 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 thiss!7690)))) (= true inst!333)))

(declare-fun bs!25861 () Bool)

(assert (= bs!25861 (and neg-inst!323 b!54599)))

(assert (=> bs!25861 (= true inst!335)))

(declare-fun bs!25862 () Bool)

(assert (= bs!25862 (and neg-inst!323 b!54593)))

(assert (=> (and bs!25862 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (right!1158 res!24724)))) (= true inst!329)))

(declare-fun bs!25863 () Bool)

(assert (= bs!25863 (and neg-inst!323 neg-inst!315)))

(assert (=> (and bs!25863 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 res!24724)))) (= true true)))

(declare-fun bs!25864 () Bool)

(assert (= bs!25864 (and neg-inst!323 b!54591)))

(assert (=> (and bs!25864 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 res!24724)))) (= true inst!327)))

(declare-fun bs!25865 () Bool)

(assert (= bs!25865 (and neg-inst!323 neg-inst!319)))

(assert (=> (and bs!25865 (= (content!17 (right!1158 thiss!7690)) (content!17 (right!1158 (left!1155 thiss!7690)))) (= (elem!225 thiss!7690) (elem!225 (left!1155 thiss!7690)))) (= true true)))

(declare-fun d!45030 () Bool)

(declare-fun res!25039 () Bool)

(declare-fun e!28656 () Bool)

(assert (=> d!45030 (=> res!25039 e!28656)))

(assert (=> d!45030 (= res!25039 (not (is-Node!125 thiss!7690)))))

(assert (=> d!45030 (= (inv!977 thiss!7690) e!28656)))

(declare-fun e!28657 () Bool)

(assert (=> b!54598 (= e!28656 e!28657)))

(declare-fun res!25040 () Bool)

(assert (=> b!54598 (=> (not res!25040) (not e!28657))))

(assert (=> b!54598 (= res!25040 inst!334)))

(assert (=> b!54599 (= e!28657 inst!335)))

(assert (= (and d!45030 (not res!25039)) b!54598))

(assert (= neg-inst!322 inst!334))

(assert (= (and b!54598 res!25040) b!54599))

(assert (= neg-inst!323 inst!335))

(assert (=> start!7630 d!45030))

(declare-fun b!54600 () Bool)

(declare-fun m!58952 () Bool)

(assert (=> b!54600 m!58952))

(declare-fun inst!336 () Bool)

(declare-fun x!21781 () (_ BitVec 32))

(assert (=> b!54600 (= inst!336 (=> true (or (not (member x!21781 (content!17 (left!1155 res!24724)))) (bvslt x!21781 (elem!225 res!24724)))))))

(declare-fun m!58954 () Bool)

(assert (=> b!54600 m!58954))

(declare-fun bs!25866 () Bool)

(assert (= bs!25866 (and b!54600 neg-inst!322)))

(assert (=> (and bs!25866 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 thiss!7690))) (= (elem!225 res!24724) (elem!225 thiss!7690))) (= inst!336 true)))

(declare-fun bs!25867 () Bool)

(assert (= bs!25867 (and b!54600 neg-inst!314)))

(assert (=> (and bs!25867 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 res!24724) (elem!225 (left!1155 res!24724)))) (= inst!336 true)))

(declare-fun bs!25868 () Bool)

(assert (= bs!25868 (and b!54600 b!54598)))

(assert (=> (and bs!25868 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 thiss!7690))) (= (elem!225 res!24724) (elem!225 thiss!7690))) (= inst!336 inst!334)))

(declare-fun bs!25869 () Bool)

(assert (= bs!25869 (and b!54600 b!54596)))

(assert (=> (and bs!25869 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (right!1158 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (right!1158 thiss!7690)))) (= inst!336 inst!332)))

(declare-fun bs!25870 () Bool)

(assert (= bs!25870 (and b!54600 b!54592)))

(assert (=> (and bs!25870 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 res!24724) (elem!225 (right!1158 res!24724)))) (= inst!336 inst!328)))

(declare-fun bs!25871 () Bool)

(assert (= bs!25871 (and b!54600 neg-inst!318)))

(assert (=> (and bs!25871 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (left!1155 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (left!1155 thiss!7690)))) (= inst!336 true)))

(declare-fun bs!25872 () Bool)

(assert (= bs!25872 (and b!54600 neg-inst!320)))

(assert (=> (and bs!25872 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (right!1158 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (right!1158 thiss!7690)))) (= inst!336 true)))

(declare-fun bs!25873 () Bool)

(assert (= bs!25873 (and b!54600 b!54590)))

(assert (=> (and bs!25873 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 res!24724) (elem!225 (left!1155 res!24724)))) (= inst!336 inst!326)))

(declare-fun bs!25874 () Bool)

(assert (= bs!25874 (and b!54600 neg-inst!316)))

(assert (=> (and bs!25874 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 res!24724) (elem!225 (right!1158 res!24724)))) (= inst!336 true)))

(declare-fun bs!25875 () Bool)

(assert (= bs!25875 (and b!54600 b!54594)))

(assert (=> (and bs!25875 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (left!1155 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (left!1155 thiss!7690)))) (= inst!336 inst!330)))

(declare-fun b!54601 () Bool)

(declare-fun m!58956 () Bool)

(assert (=> b!54601 m!58956))

(declare-fun inst!337 () Bool)

(declare-fun x!21782 () (_ BitVec 32))

(assert (=> b!54601 (= inst!337 (=> true (or (not (member x!21782 (content!17 (right!1158 res!24724)))) (bvslt (elem!225 res!24724) x!21782))))))

(declare-fun m!58958 () Bool)

(assert (=> b!54601 m!58958))

(declare-fun bs!25876 () Bool)

(assert (= bs!25876 (and b!54601 neg-inst!323)))

(assert (=> (and bs!25876 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 thiss!7690))) (= (elem!225 res!24724) (elem!225 thiss!7690))) (= inst!337 true)))

(declare-fun bs!25877 () Bool)

(assert (= bs!25877 (and b!54601 b!54595)))

(assert (=> (and bs!25877 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (left!1155 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (left!1155 thiss!7690)))) (= inst!337 inst!331)))

(declare-fun bs!25878 () Bool)

(assert (= bs!25878 (and b!54601 neg-inst!317)))

(assert (=> (and bs!25878 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 res!24724) (elem!225 (right!1158 res!24724)))) (= inst!337 true)))

(declare-fun bs!25879 () Bool)

(assert (= bs!25879 (and b!54601 neg-inst!321)))

(assert (=> (and bs!25879 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (right!1158 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (right!1158 thiss!7690)))) (= inst!337 true)))

(declare-fun bs!25880 () Bool)

(assert (= bs!25880 (and b!54601 b!54597)))

(assert (=> (and bs!25880 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (right!1158 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (right!1158 thiss!7690)))) (= inst!337 inst!333)))

(declare-fun bs!25881 () Bool)

(assert (= bs!25881 (and b!54601 b!54599)))

(assert (=> (and bs!25881 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 thiss!7690))) (= (elem!225 res!24724) (elem!225 thiss!7690))) (= inst!337 inst!335)))

(declare-fun bs!25882 () Bool)

(assert (= bs!25882 (and b!54601 b!54593)))

(assert (=> (and bs!25882 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 res!24724) (elem!225 (right!1158 res!24724)))) (= inst!337 inst!329)))

(declare-fun bs!25883 () Bool)

(assert (= bs!25883 (and b!54601 neg-inst!315)))

(assert (=> (and bs!25883 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 res!24724) (elem!225 (left!1155 res!24724)))) (= inst!337 true)))

(declare-fun bs!25884 () Bool)

(assert (= bs!25884 (and b!54601 b!54591)))

(assert (=> (and bs!25884 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 res!24724) (elem!225 (left!1155 res!24724)))) (= inst!337 inst!327)))

(declare-fun bs!25885 () Bool)

(assert (= bs!25885 (and b!54601 neg-inst!319)))

(assert (=> (and bs!25885 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (left!1155 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (left!1155 thiss!7690)))) (= inst!337 true)))

(declare-fun bs!25886 () Bool)

(declare-fun neg-inst!324 () Bool)

(assert (= bs!25886 neg-inst!324))

(assert (=> bs!25886 m!58952))

(declare-fun bs!25887 () Bool)

(declare-fun s!1325 () Bool)

(assert (= bs!25887 (and neg-inst!324 s!1325)))

(assert (=> bs!25887 (=> true (or (not (member x!21781 (content!17 (left!1155 res!24724)))) (bvslt x!21781 (elem!225 res!24724))))))

(assert (=> m!58954 s!1325))

(declare-fun bs!25888 () Bool)

(assert (= bs!25888 (and neg-inst!324 neg-inst!322)))

(assert (=> (and bs!25888 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 thiss!7690))) (= (elem!225 res!24724) (elem!225 thiss!7690))) (= true true)))

(declare-fun bs!25889 () Bool)

(assert (= bs!25889 (and neg-inst!324 neg-inst!314)))

(assert (=> (and bs!25889 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 res!24724) (elem!225 (left!1155 res!24724)))) (= true true)))

(declare-fun bs!25890 () Bool)

(assert (= bs!25890 (and neg-inst!324 b!54598)))

(assert (=> (and bs!25890 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 thiss!7690))) (= (elem!225 res!24724) (elem!225 thiss!7690))) (= true inst!334)))

(declare-fun bs!25891 () Bool)

(assert (= bs!25891 (and neg-inst!324 b!54596)))

(assert (=> (and bs!25891 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (right!1158 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (right!1158 thiss!7690)))) (= true inst!332)))

(declare-fun bs!25892 () Bool)

(assert (= bs!25892 (and neg-inst!324 b!54592)))

(assert (=> (and bs!25892 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 res!24724) (elem!225 (right!1158 res!24724)))) (= true inst!328)))

(declare-fun bs!25893 () Bool)

(assert (= bs!25893 (and neg-inst!324 neg-inst!318)))

(assert (=> (and bs!25893 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (left!1155 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (left!1155 thiss!7690)))) (= true true)))

(declare-fun bs!25894 () Bool)

(assert (= bs!25894 (and neg-inst!324 neg-inst!320)))

(assert (=> (and bs!25894 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (right!1158 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (right!1158 thiss!7690)))) (= true true)))

(declare-fun bs!25895 () Bool)

(assert (= bs!25895 (and neg-inst!324 b!54590)))

(assert (=> (and bs!25895 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (left!1155 res!24724)))) (= (elem!225 res!24724) (elem!225 (left!1155 res!24724)))) (= true inst!326)))

(declare-fun bs!25896 () Bool)

(assert (= bs!25896 (and neg-inst!324 neg-inst!316)))

(assert (=> (and bs!25896 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (right!1158 res!24724)))) (= (elem!225 res!24724) (elem!225 (right!1158 res!24724)))) (= true true)))

(declare-fun bs!25897 () Bool)

(assert (= bs!25897 (and neg-inst!324 b!54594)))

(assert (=> (and bs!25897 (= (content!17 (left!1155 res!24724)) (content!17 (left!1155 (left!1155 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (left!1155 thiss!7690)))) (= true inst!330)))

(declare-fun bs!25898 () Bool)

(assert (= bs!25898 (and neg-inst!324 b!54600)))

(assert (=> bs!25898 (= true inst!336)))

(declare-fun bs!25899 () Bool)

(declare-fun neg-inst!325 () Bool)

(assert (= bs!25899 neg-inst!325))

(assert (=> bs!25899 m!58956))

(declare-fun bs!25900 () Bool)

(declare-fun s!1327 () Bool)

(assert (= bs!25900 (and neg-inst!325 s!1327)))

(assert (=> bs!25900 (=> true (or (not (member x!21782 (content!17 (right!1158 res!24724)))) (bvslt (elem!225 res!24724) x!21782)))))

(assert (=> m!58958 s!1327))

(declare-fun bs!25901 () Bool)

(assert (= bs!25901 (and neg-inst!325 b!54601)))

(assert (=> bs!25901 (= true inst!337)))

(declare-fun bs!25902 () Bool)

(assert (= bs!25902 (and neg-inst!325 neg-inst!323)))

(assert (=> (and bs!25902 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 thiss!7690))) (= (elem!225 res!24724) (elem!225 thiss!7690))) (= true true)))

(declare-fun bs!25903 () Bool)

(assert (= bs!25903 (and neg-inst!325 b!54595)))

(assert (=> (and bs!25903 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (left!1155 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (left!1155 thiss!7690)))) (= true inst!331)))

(declare-fun bs!25904 () Bool)

(assert (= bs!25904 (and neg-inst!325 neg-inst!317)))

(assert (=> (and bs!25904 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 res!24724) (elem!225 (right!1158 res!24724)))) (= true true)))

(declare-fun bs!25905 () Bool)

(assert (= bs!25905 (and neg-inst!325 neg-inst!321)))

(assert (=> (and bs!25905 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (right!1158 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (right!1158 thiss!7690)))) (= true true)))

(declare-fun bs!25906 () Bool)

(assert (= bs!25906 (and neg-inst!325 b!54597)))

(assert (=> (and bs!25906 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (right!1158 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (right!1158 thiss!7690)))) (= true inst!333)))

(declare-fun bs!25907 () Bool)

(assert (= bs!25907 (and neg-inst!325 b!54599)))

(assert (=> (and bs!25907 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 thiss!7690))) (= (elem!225 res!24724) (elem!225 thiss!7690))) (= true inst!335)))

(declare-fun bs!25908 () Bool)

(assert (= bs!25908 (and neg-inst!325 b!54593)))

(assert (=> (and bs!25908 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (right!1158 res!24724)))) (= (elem!225 res!24724) (elem!225 (right!1158 res!24724)))) (= true inst!329)))

(declare-fun bs!25909 () Bool)

(assert (= bs!25909 (and neg-inst!325 neg-inst!315)))

(assert (=> (and bs!25909 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 res!24724) (elem!225 (left!1155 res!24724)))) (= true true)))

(declare-fun bs!25910 () Bool)

(assert (= bs!25910 (and neg-inst!325 b!54591)))

(assert (=> (and bs!25910 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (left!1155 res!24724)))) (= (elem!225 res!24724) (elem!225 (left!1155 res!24724)))) (= true inst!327)))

(declare-fun bs!25911 () Bool)

(assert (= bs!25911 (and neg-inst!325 neg-inst!319)))

(assert (=> (and bs!25911 (= (content!17 (right!1158 res!24724)) (content!17 (right!1158 (left!1155 thiss!7690)))) (= (elem!225 res!24724) (elem!225 (left!1155 thiss!7690)))) (= true true)))

(declare-fun d!45032 () Bool)

(declare-fun res!25041 () Bool)

(declare-fun e!28658 () Bool)

(assert (=> d!45032 (=> res!25041 e!28658)))

(assert (=> d!45032 (= res!25041 (not (is-Node!125 res!24724)))))

(assert (=> d!45032 (= (inv!977 res!24724) e!28658)))

(declare-fun e!28659 () Bool)

(assert (=> b!54600 (= e!28658 e!28659)))

(declare-fun res!25042 () Bool)

(assert (=> b!54600 (=> (not res!25042) (not e!28659))))

(assert (=> b!54600 (= res!25042 inst!336)))

(assert (=> b!54601 (= e!28659 inst!337)))

(assert (= (and d!45032 (not res!25041)) b!54600))

(assert (= neg-inst!324 inst!336))

(assert (= (and b!54600 res!25042) b!54601))

(assert (= neg-inst!325 inst!337))

(assert (=> start!7630 d!45032))

(declare-fun d!45034 () Bool)

(declare-fun c!11847 () Bool)

(assert (=> d!45034 (= c!11847 (is-Empty!164 res!24724))))

(declare-fun e!28662 () (Set (_ BitVec 32)))

(assert (=> d!45034 (= (content!17 res!24724) e!28662)))

(declare-fun b!54606 () Bool)

(assert (=> b!54606 (= e!28662 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54607 () Bool)

(assert (=> b!54607 (= e!28662 (union (union (content!17 (left!1155 res!24724)) (insert (elem!225 res!24724) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1158 res!24724))))))

(assert (= (and d!45034 c!11847) b!54606))

(assert (= (and d!45034 (not c!11847)) b!54607))

(assert (=> b!54607 m!58952))

(declare-fun m!58960 () Bool)

(assert (=> b!54607 m!58960))

(assert (=> b!54607 m!58956))

(assert (=> b!54583 d!45034))

(declare-fun d!45036 () Bool)

(declare-fun c!11848 () Bool)

(assert (=> d!45036 (= c!11848 (is-Empty!164 thiss!7690))))

(declare-fun e!28663 () (Set (_ BitVec 32)))

(assert (=> d!45036 (= (content!17 thiss!7690) e!28663)))

(declare-fun b!54608 () Bool)

(assert (=> b!54608 (= e!28663 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54609 () Bool)

(assert (=> b!54609 (= e!28663 (union (union (content!17 (left!1155 thiss!7690)) (insert (elem!225 thiss!7690) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1158 thiss!7690))))))

(assert (= (and d!45036 c!11848) b!54608))

(assert (= (and d!45036 (not c!11848)) b!54609))

(assert (=> b!54609 m!58944))

(declare-fun m!58962 () Bool)

(assert (=> b!54609 m!58962))

(assert (=> b!54609 m!58948))

(assert (=> b!54583 d!45036))

(declare-fun tp!15433 () Bool)

(declare-fun tp!15434 () Bool)

(declare-fun e!28666 () Bool)

(declare-fun b!54614 () Bool)

(assert (=> b!54614 (= e!28666 (and (inv!977 (left!1155 (left!1155 res!24724))) tp!15433 (inv!977 (right!1158 (left!1155 res!24724))) tp!15434))))

(assert (=> b!54585 (= tp!15428 (and (inv!977 (left!1155 res!24724)) e!28666))))

(assert (= (and b!54585 (is-Node!125 (left!1155 res!24724))) b!54614))

(declare-fun m!58964 () Bool)

(assert (=> b!54614 m!58964))

(declare-fun m!58966 () Bool)

(assert (=> b!54614 m!58966))

(assert (=> b!54585 m!58908))

(declare-fun b!54615 () Bool)

(declare-fun tp!15436 () Bool)

(declare-fun e!28667 () Bool)

(declare-fun tp!15435 () Bool)

(assert (=> b!54615 (= e!28667 (and (inv!977 (left!1155 (right!1158 res!24724))) tp!15435 (inv!977 (right!1158 (right!1158 res!24724))) tp!15436))))

(assert (=> b!54585 (= tp!15427 (and (inv!977 (right!1158 res!24724)) e!28667))))

(assert (= (and b!54585 (is-Node!125 (right!1158 res!24724))) b!54615))

(declare-fun m!58968 () Bool)

(assert (=> b!54615 m!58968))

(declare-fun m!58970 () Bool)

(assert (=> b!54615 m!58970))

(assert (=> b!54585 m!58910))

(declare-fun b!54616 () Bool)

(declare-fun tp!15438 () Bool)

(declare-fun e!28668 () Bool)

(declare-fun tp!15437 () Bool)

(assert (=> b!54616 (= e!28668 (and (inv!977 (left!1155 (left!1155 thiss!7690))) tp!15437 (inv!977 (right!1158 (left!1155 thiss!7690))) tp!15438))))

(assert (=> b!54584 (= tp!15425 (and (inv!977 (left!1155 thiss!7690)) e!28668))))

(assert (= (and b!54584 (is-Node!125 (left!1155 thiss!7690))) b!54616))

(declare-fun m!58972 () Bool)

(assert (=> b!54616 m!58972))

(declare-fun m!58974 () Bool)

(assert (=> b!54616 m!58974))

(assert (=> b!54584 m!58904))

(declare-fun b!54617 () Bool)

(declare-fun e!28669 () Bool)

(declare-fun tp!15440 () Bool)

(declare-fun tp!15439 () Bool)

(assert (=> b!54617 (= e!28669 (and (inv!977 (left!1155 (right!1158 thiss!7690))) tp!15439 (inv!977 (right!1158 (right!1158 thiss!7690))) tp!15440))))

(assert (=> b!54584 (= tp!15426 (and (inv!977 (right!1158 thiss!7690)) e!28669))))

(assert (= (and b!54584 (is-Node!125 (right!1158 thiss!7690))) b!54617))

(declare-fun m!58976 () Bool)

(assert (=> b!54617 m!58976))

(declare-fun m!58978 () Bool)

(assert (=> b!54617 m!58978))

(assert (=> b!54584 m!58906))

(push 1)

(assert (not neg-inst!322))

(assert (not b!54594))

(assert (not neg-inst!325))

(assert (not b!54595))

(assert (not neg-inst!317))

(assert (not b!54598))

(assert (not b!54607))

(assert (not b!54609))

(assert (not neg-inst!316))

(assert (not neg-inst!321))

(assert (not neg-inst!324))

(assert (not b!54616))

(assert (not b!54615))

(assert (not neg-inst!320))

(assert (not neg-inst!323))

(assert (not b!54596))

(assert (not b!54584))

(assert (not b!54591))

(assert (not b!54593))

(assert (not b!54601))

(assert (not b!54597))

(assert (not neg-inst!318))

(assert (not b!54599))

(assert (not neg-inst!319))

(assert (not b!54614))

(assert (not b!54592))

(assert (not neg-inst!314))

(assert (not neg-inst!315))

(assert (not b!54585))

(assert (not b!54600))

(assert (not b!54590))

(assert (not b!54617))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


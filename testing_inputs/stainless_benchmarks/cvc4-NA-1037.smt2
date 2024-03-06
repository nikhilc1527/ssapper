; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7636 () Bool)

(assert start!7636)

(declare-fun res!25045 () Bool)

(declare-fun e!28675 () Bool)

(assert (=> start!7636 (=> (not res!25045) (not e!28675))))

(declare-datatypes () ((IntSet!40 (Empty!165) (Node!126 (left!1156 IntSet!40) (elem!226 (_ BitVec 32)) (right!1159 IntSet!40)))))

(declare-fun thiss!7690 () IntSet!40)

(declare-fun x!21411 () (_ BitVec 32))

(assert (=> start!7636 (= res!25045 (and (not (is-Empty!165 thiss!7690)) (bvslt x!21411 (elem!226 thiss!7690))))))

(assert (=> start!7636 e!28675))

(declare-fun e!28674 () Bool)

(declare-fun inv!977 (IntSet!40) Bool)

(assert (=> start!7636 (and (inv!977 thiss!7690) e!28674)))

(assert (=> start!7636 true))

(declare-fun b!54622 () Bool)

(declare-fun incl!2 (IntSet!40 (_ BitVec 32)) IntSet!40)

(assert (=> b!54622 (= e!28675 (not (inv!977 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))))

(declare-fun b!54623 () Bool)

(declare-fun tp!15445 () Bool)

(declare-fun tp!15446 () Bool)

(assert (=> b!54623 (= e!28674 (and (inv!977 (left!1156 thiss!7690)) tp!15446 (inv!977 (right!1159 thiss!7690)) tp!15445))))

(assert (= (and start!7636 res!25045) b!54622))

(assert (= (and start!7636 (is-Node!126 thiss!7690)) b!54623))

(declare-fun m!58980 () Bool)

(assert (=> start!7636 m!58980))

(declare-fun m!58982 () Bool)

(assert (=> b!54622 m!58982))

(declare-fun m!58984 () Bool)

(assert (=> b!54622 m!58984))

(declare-fun m!58986 () Bool)

(assert (=> b!54623 m!58986))

(declare-fun m!58988 () Bool)

(assert (=> b!54623 m!58988))

(push 1)

(assert (not b!54622))

(assert (not b!54623))

(assert (not start!7636))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!54628 () Bool)

(declare-fun m!58990 () Bool)

(assert (=> b!54628 m!58990))

(declare-fun x!21803 () (_ BitVec 32))

(declare-fun inst!342 () Bool)

(declare-fun content!17 (IntSet!40) (Set (_ BitVec 32)))

(assert (=> b!54628 (= inst!342 (=> true (or (not (member x!21803 (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt x!21803 (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))))))

(declare-fun m!58992 () Bool)

(assert (=> b!54628 m!58992))

(declare-fun b!54629 () Bool)

(declare-fun m!58994 () Bool)

(assert (=> b!54629 m!58994))

(declare-fun inst!343 () Bool)

(declare-fun x!21804 () (_ BitVec 32))

(assert (=> b!54629 (= inst!343 (=> true (or (not (member x!21804 (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))) x!21804))))))

(declare-fun m!58996 () Bool)

(assert (=> b!54629 m!58996))

(declare-fun bs!25913 () Bool)

(declare-fun neg-inst!330 () Bool)

(assert (= bs!25913 neg-inst!330))

(assert (=> bs!25913 m!58990))

(declare-fun bs!25914 () Bool)

(declare-fun s!1329 () Bool)

(assert (= bs!25914 (and neg-inst!330 s!1329)))

(assert (=> bs!25914 (=> true (or (not (member x!21803 (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt x!21803 (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))))))

(assert (=> m!58992 s!1329))

(declare-fun bs!25915 () Bool)

(assert (= bs!25915 (and neg-inst!330 b!54628)))

(assert (=> bs!25915 (= true inst!342)))

(declare-fun bs!25916 () Bool)

(declare-fun neg-inst!331 () Bool)

(assert (= bs!25916 neg-inst!331))

(assert (=> bs!25916 m!58994))

(declare-fun bs!25917 () Bool)

(declare-fun s!1331 () Bool)

(assert (= bs!25917 (and neg-inst!331 s!1331)))

(assert (=> bs!25917 (=> true (or (not (member x!21804 (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))) x!21804)))))

(assert (=> m!58996 s!1331))

(declare-fun bs!25918 () Bool)

(assert (= bs!25918 (and neg-inst!331 b!54629)))

(assert (=> bs!25918 (= true inst!343)))

(declare-fun d!45038 () Bool)

(declare-fun res!25051 () Bool)

(declare-fun e!28681 () Bool)

(assert (=> d!45038 (=> res!25051 e!28681)))

(assert (=> d!45038 (= res!25051 (not (is-Node!126 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))))

(assert (=> d!45038 (= (inv!977 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))) e!28681)))

(declare-fun e!28680 () Bool)

(assert (=> b!54628 (= e!28681 e!28680)))

(declare-fun res!25050 () Bool)

(assert (=> b!54628 (=> (not res!25050) (not e!28680))))

(assert (=> b!54628 (= res!25050 inst!342)))

(assert (=> b!54629 (= e!28680 inst!343)))

(assert (= (and d!45038 (not res!25051)) b!54628))

(assert (= neg-inst!330 inst!342))

(assert (= (and b!54628 res!25050) b!54629))

(assert (= neg-inst!331 inst!343))

(assert (=> b!54622 d!45038))

(declare-fun b!54640 () Bool)

(declare-fun lt!9611 () Bool)

(declare-fun lt!9612 () IntSet!40)

(declare-fun e!28688 () IntSet!40)

(assert (=> b!54640 (= e!28688 (ite lt!9611 (Node!126 lt!9612 (elem!226 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690))) (ite (bvsgt x!21411 (elem!226 (left!1156 thiss!7690))) (Node!126 (left!1156 (left!1156 thiss!7690)) (elem!226 (left!1156 thiss!7690)) lt!9612) (left!1156 thiss!7690))))))

(declare-fun e!28690 () IntSet!40)

(assert (=> b!54640 (= lt!9612 e!28690)))

(declare-fun c!11853 () Bool)

(assert (=> b!54640 (= c!11853 (or lt!9611 (bvsgt x!21411 (elem!226 (left!1156 thiss!7690)))))))

(assert (=> b!54640 (= lt!9611 (bvslt x!21411 (elem!226 (left!1156 thiss!7690))))))

(declare-fun d!45040 () Bool)

(declare-fun lt!9613 () IntSet!40)

(assert (=> d!45040 (= (content!17 lt!9613) (union (content!17 (left!1156 thiss!7690)) (insert x!21411 (as emptyset (Set (_ BitVec 32))))))))

(assert (=> d!45040 (= lt!9613 e!28688)))

(declare-fun c!11854 () Bool)

(assert (=> d!45040 (= c!11854 (is-Empty!165 (left!1156 thiss!7690)))))

(assert (=> d!45040 (= (incl!2 (left!1156 thiss!7690) x!21411) lt!9613)))

(declare-fun b!54641 () Bool)

(assert (=> b!54641 (= e!28690 (incl!2 (ite lt!9611 (left!1156 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690))) x!21411))))

(declare-fun b!54642 () Bool)

(declare-fun res!25058 () IntSet!40)

(assert (=> b!54642 (= e!28690 res!25058)))

(assert (=> b!54642 true))

(declare-fun e!28689 () Bool)

(assert (=> b!54642 (and (inv!977 res!25058) e!28689)))

(declare-fun b!54643 () Bool)

(assert (=> b!54643 (= e!28688 (Node!126 Empty!165 x!21411 Empty!165))))

(declare-fun tp!15451 () Bool)

(declare-fun tp!15452 () Bool)

(declare-fun b!54644 () Bool)

(assert (=> b!54644 (= e!28689 (and (inv!977 (left!1156 res!25058)) tp!15452 (inv!977 (right!1159 res!25058)) tp!15451))))

(assert (= (and b!54642 (is-Node!126 res!25058)) b!54644))

(assert (= (and b!54640 c!11853) b!54641))

(assert (= (and b!54640 (not c!11853)) b!54642))

(assert (= (and d!45040 c!11854) b!54643))

(assert (= (and d!45040 (not c!11854)) b!54640))

(declare-fun m!58998 () Bool)

(assert (=> d!45040 m!58998))

(declare-fun m!59000 () Bool)

(assert (=> d!45040 m!59000))

(declare-fun m!59002 () Bool)

(assert (=> d!45040 m!59002))

(declare-fun m!59004 () Bool)

(assert (=> b!54641 m!59004))

(declare-fun m!59006 () Bool)

(assert (=> b!54642 m!59006))

(declare-fun m!59008 () Bool)

(assert (=> b!54644 m!59008))

(declare-fun m!59010 () Bool)

(assert (=> b!54644 m!59010))

(assert (=> b!54622 d!45040))

(declare-fun b!54645 () Bool)

(declare-fun m!59012 () Bool)

(assert (=> b!54645 m!59012))

(declare-fun inst!344 () Bool)

(declare-fun x!21806 () (_ BitVec 32))

(assert (=> b!54645 (= inst!344 (=> true (or (not (member x!21806 (content!17 (left!1156 (left!1156 thiss!7690))))) (bvslt x!21806 (elem!226 (left!1156 thiss!7690))))))))

(declare-fun m!59014 () Bool)

(assert (=> b!54645 m!59014))

(declare-fun bs!25919 () Bool)

(assert (= bs!25919 (and b!54645 neg-inst!330)))

(assert (=> (and bs!25919 (= (content!17 (left!1156 (left!1156 thiss!7690))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!344 true)))

(declare-fun bs!25920 () Bool)

(assert (= bs!25920 (and b!54645 b!54628)))

(assert (=> (and bs!25920 (= (content!17 (left!1156 (left!1156 thiss!7690))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!344 inst!342)))

(declare-fun b!54646 () Bool)

(declare-fun m!59016 () Bool)

(assert (=> b!54646 m!59016))

(declare-fun inst!345 () Bool)

(declare-fun x!21807 () (_ BitVec 32))

(assert (=> b!54646 (= inst!345 (=> true (or (not (member x!21807 (content!17 (right!1159 (left!1156 thiss!7690))))) (bvslt (elem!226 (left!1156 thiss!7690)) x!21807))))))

(declare-fun m!59018 () Bool)

(assert (=> b!54646 m!59018))

(declare-fun bs!25921 () Bool)

(assert (= bs!25921 (and b!54646 b!54629)))

(assert (=> (and bs!25921 (= (content!17 (right!1159 (left!1156 thiss!7690))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!345 inst!343)))

(declare-fun bs!25922 () Bool)

(assert (= bs!25922 (and b!54646 neg-inst!331)))

(assert (=> (and bs!25922 (= (content!17 (right!1159 (left!1156 thiss!7690))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!345 true)))

(declare-fun bs!25923 () Bool)

(declare-fun neg-inst!332 () Bool)

(assert (= bs!25923 neg-inst!332))

(assert (=> bs!25923 m!59012))

(declare-fun bs!25924 () Bool)

(declare-fun s!1333 () Bool)

(assert (= bs!25924 (and neg-inst!332 s!1333)))

(assert (=> bs!25924 (=> true (or (not (member x!21806 (content!17 (left!1156 (left!1156 thiss!7690))))) (bvslt x!21806 (elem!226 (left!1156 thiss!7690)))))))

(assert (=> m!59014 s!1333))

(declare-fun bs!25925 () Bool)

(assert (= bs!25925 (and neg-inst!332 b!54645)))

(assert (=> bs!25925 (= true inst!344)))

(declare-fun bs!25926 () Bool)

(assert (= bs!25926 (and neg-inst!332 neg-inst!330)))

(assert (=> (and bs!25926 (= (content!17 (left!1156 (left!1156 thiss!7690))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!25927 () Bool)

(assert (= bs!25927 (and neg-inst!332 b!54628)))

(assert (=> (and bs!25927 (= (content!17 (left!1156 (left!1156 thiss!7690))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!342)))

(declare-fun bs!25928 () Bool)

(declare-fun neg-inst!333 () Bool)

(assert (= bs!25928 neg-inst!333))

(assert (=> bs!25928 m!59016))

(declare-fun bs!25929 () Bool)

(declare-fun s!1335 () Bool)

(assert (= bs!25929 (and neg-inst!333 s!1335)))

(assert (=> bs!25929 (=> true (or (not (member x!21807 (content!17 (right!1159 (left!1156 thiss!7690))))) (bvslt (elem!226 (left!1156 thiss!7690)) x!21807)))))

(assert (=> m!59018 s!1335))

(declare-fun bs!25930 () Bool)

(assert (= bs!25930 (and neg-inst!333 b!54629)))

(assert (=> (and bs!25930 (= (content!17 (right!1159 (left!1156 thiss!7690))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!343)))

(declare-fun bs!25931 () Bool)

(assert (= bs!25931 (and neg-inst!333 neg-inst!331)))

(assert (=> (and bs!25931 (= (content!17 (right!1159 (left!1156 thiss!7690))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!25932 () Bool)

(assert (= bs!25932 (and neg-inst!333 b!54646)))

(assert (=> bs!25932 (= true inst!345)))

(declare-fun d!45042 () Bool)

(declare-fun res!25060 () Bool)

(declare-fun e!28692 () Bool)

(assert (=> d!45042 (=> res!25060 e!28692)))

(assert (=> d!45042 (= res!25060 (not (is-Node!126 (left!1156 thiss!7690))))))

(assert (=> d!45042 (= (inv!977 (left!1156 thiss!7690)) e!28692)))

(declare-fun e!28691 () Bool)

(assert (=> b!54645 (= e!28692 e!28691)))

(declare-fun res!25059 () Bool)

(assert (=> b!54645 (=> (not res!25059) (not e!28691))))

(assert (=> b!54645 (= res!25059 inst!344)))

(assert (=> b!54646 (= e!28691 inst!345)))

(assert (= (and d!45042 (not res!25060)) b!54645))

(assert (= neg-inst!332 inst!344))

(assert (= (and b!54645 res!25059) b!54646))

(assert (= neg-inst!333 inst!345))

(assert (=> b!54623 d!45042))

(declare-fun b!54647 () Bool)

(declare-fun m!59020 () Bool)

(assert (=> b!54647 m!59020))

(declare-fun inst!346 () Bool)

(declare-fun x!21808 () (_ BitVec 32))

(assert (=> b!54647 (= inst!346 (=> true (or (not (member x!21808 (content!17 (left!1156 (right!1159 thiss!7690))))) (bvslt x!21808 (elem!226 (right!1159 thiss!7690))))))))

(declare-fun m!59022 () Bool)

(assert (=> b!54647 m!59022))

(declare-fun bs!25933 () Bool)

(assert (= bs!25933 (and b!54647 neg-inst!332)))

(assert (=> (and bs!25933 (= (content!17 (left!1156 (right!1159 thiss!7690))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (left!1156 thiss!7690)))) (= inst!346 true)))

(declare-fun bs!25934 () Bool)

(assert (= bs!25934 (and b!54647 b!54645)))

(assert (=> (and bs!25934 (= (content!17 (left!1156 (right!1159 thiss!7690))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (left!1156 thiss!7690)))) (= inst!346 inst!344)))

(declare-fun bs!25935 () Bool)

(assert (= bs!25935 (and b!54647 neg-inst!330)))

(assert (=> (and bs!25935 (= (content!17 (left!1156 (right!1159 thiss!7690))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!346 true)))

(declare-fun bs!25936 () Bool)

(assert (= bs!25936 (and b!54647 b!54628)))

(assert (=> (and bs!25936 (= (content!17 (left!1156 (right!1159 thiss!7690))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!346 inst!342)))

(declare-fun b!54648 () Bool)

(declare-fun m!59024 () Bool)

(assert (=> b!54648 m!59024))

(declare-fun inst!347 () Bool)

(declare-fun x!21809 () (_ BitVec 32))

(assert (=> b!54648 (= inst!347 (=> true (or (not (member x!21809 (content!17 (right!1159 (right!1159 thiss!7690))))) (bvslt (elem!226 (right!1159 thiss!7690)) x!21809))))))

(declare-fun m!59026 () Bool)

(assert (=> b!54648 m!59026))

(declare-fun bs!25937 () Bool)

(assert (= bs!25937 (and b!54648 b!54629)))

(assert (=> (and bs!25937 (= (content!17 (right!1159 (right!1159 thiss!7690))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!347 inst!343)))

(declare-fun bs!25938 () Bool)

(assert (= bs!25938 (and b!54648 neg-inst!331)))

(assert (=> (and bs!25938 (= (content!17 (right!1159 (right!1159 thiss!7690))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!347 true)))

(declare-fun bs!25939 () Bool)

(assert (= bs!25939 (and b!54648 neg-inst!333)))

(assert (=> (and bs!25939 (= (content!17 (right!1159 (right!1159 thiss!7690))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (left!1156 thiss!7690)))) (= inst!347 true)))

(declare-fun bs!25940 () Bool)

(assert (= bs!25940 (and b!54648 b!54646)))

(assert (=> (and bs!25940 (= (content!17 (right!1159 (right!1159 thiss!7690))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (left!1156 thiss!7690)))) (= inst!347 inst!345)))

(declare-fun bs!25941 () Bool)

(declare-fun neg-inst!334 () Bool)

(assert (= bs!25941 neg-inst!334))

(assert (=> bs!25941 m!59020))

(declare-fun bs!25942 () Bool)

(declare-fun s!1337 () Bool)

(assert (= bs!25942 (and neg-inst!334 s!1337)))

(assert (=> bs!25942 (=> true (or (not (member x!21808 (content!17 (left!1156 (right!1159 thiss!7690))))) (bvslt x!21808 (elem!226 (right!1159 thiss!7690)))))))

(assert (=> m!59022 s!1337))

(declare-fun bs!25943 () Bool)

(assert (= bs!25943 (and neg-inst!334 neg-inst!332)))

(assert (=> (and bs!25943 (= (content!17 (left!1156 (right!1159 thiss!7690))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!25944 () Bool)

(assert (= bs!25944 (and neg-inst!334 b!54645)))

(assert (=> (and bs!25944 (= (content!17 (left!1156 (right!1159 thiss!7690))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (left!1156 thiss!7690)))) (= true inst!344)))

(declare-fun bs!25945 () Bool)

(assert (= bs!25945 (and neg-inst!334 neg-inst!330)))

(assert (=> (and bs!25945 (= (content!17 (left!1156 (right!1159 thiss!7690))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!25946 () Bool)

(assert (= bs!25946 (and neg-inst!334 b!54628)))

(assert (=> (and bs!25946 (= (content!17 (left!1156 (right!1159 thiss!7690))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!342)))

(declare-fun bs!25947 () Bool)

(assert (= bs!25947 (and neg-inst!334 b!54647)))

(assert (=> bs!25947 (= true inst!346)))

(declare-fun bs!25948 () Bool)

(declare-fun neg-inst!335 () Bool)

(assert (= bs!25948 neg-inst!335))

(assert (=> bs!25948 m!59024))

(declare-fun bs!25949 () Bool)

(declare-fun s!1339 () Bool)

(assert (= bs!25949 (and neg-inst!335 s!1339)))

(assert (=> bs!25949 (=> true (or (not (member x!21809 (content!17 (right!1159 (right!1159 thiss!7690))))) (bvslt (elem!226 (right!1159 thiss!7690)) x!21809)))))

(assert (=> m!59026 s!1339))

(declare-fun bs!25950 () Bool)

(assert (= bs!25950 (and neg-inst!335 b!54629)))

(assert (=> (and bs!25950 (= (content!17 (right!1159 (right!1159 thiss!7690))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!343)))

(declare-fun bs!25951 () Bool)

(assert (= bs!25951 (and neg-inst!335 neg-inst!331)))

(assert (=> (and bs!25951 (= (content!17 (right!1159 (right!1159 thiss!7690))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!25952 () Bool)

(assert (= bs!25952 (and neg-inst!335 neg-inst!333)))

(assert (=> (and bs!25952 (= (content!17 (right!1159 (right!1159 thiss!7690))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!25953 () Bool)

(assert (= bs!25953 (and neg-inst!335 b!54648)))

(assert (=> bs!25953 (= true inst!347)))

(declare-fun bs!25954 () Bool)

(assert (= bs!25954 (and neg-inst!335 b!54646)))

(assert (=> (and bs!25954 (= (content!17 (right!1159 (right!1159 thiss!7690))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 thiss!7690)) (elem!226 (left!1156 thiss!7690)))) (= true inst!345)))

(declare-fun d!45044 () Bool)

(declare-fun res!25062 () Bool)

(declare-fun e!28694 () Bool)

(assert (=> d!45044 (=> res!25062 e!28694)))

(assert (=> d!45044 (= res!25062 (not (is-Node!126 (right!1159 thiss!7690))))))

(assert (=> d!45044 (= (inv!977 (right!1159 thiss!7690)) e!28694)))

(declare-fun e!28693 () Bool)

(assert (=> b!54647 (= e!28694 e!28693)))

(declare-fun res!25061 () Bool)

(assert (=> b!54647 (=> (not res!25061) (not e!28693))))

(assert (=> b!54647 (= res!25061 inst!346)))

(assert (=> b!54648 (= e!28693 inst!347)))

(assert (= (and d!45044 (not res!25062)) b!54647))

(assert (= neg-inst!334 inst!346))

(assert (= (and b!54647 res!25061) b!54648))

(assert (= neg-inst!335 inst!347))

(assert (=> b!54623 d!45044))

(declare-fun b!54649 () Bool)

(assert (=> b!54649 m!59000))

(declare-fun inst!348 () Bool)

(declare-fun x!21810 () (_ BitVec 32))

(assert (=> b!54649 (= inst!348 (=> true (or (not (member x!21810 (content!17 (left!1156 thiss!7690)))) (bvslt x!21810 (elem!226 thiss!7690)))))))

(declare-fun m!59028 () Bool)

(assert (=> b!54649 m!59028))

(declare-fun bs!25955 () Bool)

(assert (= bs!25955 (and b!54649 neg-inst!334)))

(assert (=> (and bs!25955 (= (content!17 (left!1156 thiss!7690)) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (right!1159 thiss!7690)))) (= inst!348 true)))

(declare-fun bs!25956 () Bool)

(assert (= bs!25956 (and b!54649 neg-inst!332)))

(assert (=> (and bs!25956 (= (content!17 (left!1156 thiss!7690)) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (left!1156 thiss!7690)))) (= inst!348 true)))

(declare-fun bs!25957 () Bool)

(assert (= bs!25957 (and b!54649 b!54645)))

(assert (=> (and bs!25957 (= (content!17 (left!1156 thiss!7690)) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (left!1156 thiss!7690)))) (= inst!348 inst!344)))

(declare-fun bs!25958 () Bool)

(assert (= bs!25958 (and b!54649 neg-inst!330)))

(assert (=> (and bs!25958 (= (content!17 (left!1156 thiss!7690)) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 thiss!7690) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!348 true)))

(declare-fun bs!25959 () Bool)

(assert (= bs!25959 (and b!54649 b!54628)))

(assert (=> (and bs!25959 (= (content!17 (left!1156 thiss!7690)) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 thiss!7690) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!348 inst!342)))

(declare-fun bs!25960 () Bool)

(assert (= bs!25960 (and b!54649 b!54647)))

(assert (=> (and bs!25960 (= (content!17 (left!1156 thiss!7690)) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (right!1159 thiss!7690)))) (= inst!348 inst!346)))

(declare-fun b!54650 () Bool)

(declare-fun m!59030 () Bool)

(assert (=> b!54650 m!59030))

(declare-fun inst!349 () Bool)

(declare-fun x!21811 () (_ BitVec 32))

(assert (=> b!54650 (= inst!349 (=> true (or (not (member x!21811 (content!17 (right!1159 thiss!7690)))) (bvslt (elem!226 thiss!7690) x!21811))))))

(declare-fun m!59032 () Bool)

(assert (=> b!54650 m!59032))

(declare-fun bs!25961 () Bool)

(assert (= bs!25961 (and b!54650 b!54629)))

(assert (=> (and bs!25961 (= (content!17 (right!1159 thiss!7690)) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 thiss!7690) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!349 inst!343)))

(declare-fun bs!25962 () Bool)

(assert (= bs!25962 (and b!54650 neg-inst!331)))

(assert (=> (and bs!25962 (= (content!17 (right!1159 thiss!7690)) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 thiss!7690) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!349 true)))

(declare-fun bs!25963 () Bool)

(assert (= bs!25963 (and b!54650 neg-inst!333)))

(assert (=> (and bs!25963 (= (content!17 (right!1159 thiss!7690)) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (left!1156 thiss!7690)))) (= inst!349 true)))

(declare-fun bs!25964 () Bool)

(assert (= bs!25964 (and b!54650 b!54648)))

(assert (=> (and bs!25964 (= (content!17 (right!1159 thiss!7690)) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (right!1159 thiss!7690)))) (= inst!349 inst!347)))

(declare-fun bs!25965 () Bool)

(assert (= bs!25965 (and b!54650 neg-inst!335)))

(assert (=> (and bs!25965 (= (content!17 (right!1159 thiss!7690)) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (right!1159 thiss!7690)))) (= inst!349 true)))

(declare-fun bs!25966 () Bool)

(assert (= bs!25966 (and b!54650 b!54646)))

(assert (=> (and bs!25966 (= (content!17 (right!1159 thiss!7690)) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (left!1156 thiss!7690)))) (= inst!349 inst!345)))

(declare-fun bs!25967 () Bool)

(declare-fun neg-inst!336 () Bool)

(assert (= bs!25967 neg-inst!336))

(assert (=> bs!25967 m!59000))

(declare-fun bs!25968 () Bool)

(declare-fun s!1341 () Bool)

(assert (= bs!25968 (and neg-inst!336 s!1341)))

(assert (=> bs!25968 (=> true (or (not (member x!21810 (content!17 (left!1156 thiss!7690)))) (bvslt x!21810 (elem!226 thiss!7690))))))

(assert (=> m!59028 s!1341))

(declare-fun bs!25969 () Bool)

(assert (= bs!25969 (and neg-inst!336 neg-inst!334)))

(assert (=> (and bs!25969 (= (content!17 (left!1156 thiss!7690)) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!25970 () Bool)

(assert (= bs!25970 (and neg-inst!336 neg-inst!332)))

(assert (=> (and bs!25970 (= (content!17 (left!1156 thiss!7690)) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!25971 () Bool)

(assert (= bs!25971 (and neg-inst!336 b!54645)))

(assert (=> (and bs!25971 (= (content!17 (left!1156 thiss!7690)) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (left!1156 thiss!7690)))) (= true inst!344)))

(declare-fun bs!25972 () Bool)

(assert (= bs!25972 (and neg-inst!336 b!54649)))

(assert (=> bs!25972 (= true inst!348)))

(declare-fun bs!25973 () Bool)

(assert (= bs!25973 (and neg-inst!336 neg-inst!330)))

(assert (=> (and bs!25973 (= (content!17 (left!1156 thiss!7690)) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 thiss!7690) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!25974 () Bool)

(assert (= bs!25974 (and neg-inst!336 b!54628)))

(assert (=> (and bs!25974 (= (content!17 (left!1156 thiss!7690)) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 thiss!7690) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!342)))

(declare-fun bs!25975 () Bool)

(assert (= bs!25975 (and neg-inst!336 b!54647)))

(assert (=> (and bs!25975 (= (content!17 (left!1156 thiss!7690)) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (right!1159 thiss!7690)))) (= true inst!346)))

(declare-fun bs!25976 () Bool)

(declare-fun neg-inst!337 () Bool)

(assert (= bs!25976 neg-inst!337))

(assert (=> bs!25976 m!59030))

(declare-fun bs!25977 () Bool)

(declare-fun s!1343 () Bool)

(assert (= bs!25977 (and neg-inst!337 s!1343)))

(assert (=> bs!25977 (=> true (or (not (member x!21811 (content!17 (right!1159 thiss!7690)))) (bvslt (elem!226 thiss!7690) x!21811)))))

(assert (=> m!59032 s!1343))

(declare-fun bs!25978 () Bool)

(assert (= bs!25978 (and neg-inst!337 b!54629)))

(assert (=> (and bs!25978 (= (content!17 (right!1159 thiss!7690)) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 thiss!7690) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!343)))

(declare-fun bs!25979 () Bool)

(assert (= bs!25979 (and neg-inst!337 neg-inst!331)))

(assert (=> (and bs!25979 (= (content!17 (right!1159 thiss!7690)) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 thiss!7690) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!25980 () Bool)

(assert (= bs!25980 (and neg-inst!337 neg-inst!333)))

(assert (=> (and bs!25980 (= (content!17 (right!1159 thiss!7690)) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!25981 () Bool)

(assert (= bs!25981 (and neg-inst!337 b!54650)))

(assert (=> bs!25981 (= true inst!349)))

(declare-fun bs!25982 () Bool)

(assert (= bs!25982 (and neg-inst!337 b!54648)))

(assert (=> (and bs!25982 (= (content!17 (right!1159 thiss!7690)) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (right!1159 thiss!7690)))) (= true inst!347)))

(declare-fun bs!25983 () Bool)

(assert (= bs!25983 (and neg-inst!337 neg-inst!335)))

(assert (=> (and bs!25983 (= (content!17 (right!1159 thiss!7690)) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!25984 () Bool)

(assert (= bs!25984 (and neg-inst!337 b!54646)))

(assert (=> (and bs!25984 (= (content!17 (right!1159 thiss!7690)) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 thiss!7690) (elem!226 (left!1156 thiss!7690)))) (= true inst!345)))

(declare-fun d!45046 () Bool)

(declare-fun res!25064 () Bool)

(declare-fun e!28696 () Bool)

(assert (=> d!45046 (=> res!25064 e!28696)))

(assert (=> d!45046 (= res!25064 (not (is-Node!126 thiss!7690)))))

(assert (=> d!45046 (= (inv!977 thiss!7690) e!28696)))

(declare-fun e!28695 () Bool)

(assert (=> b!54649 (= e!28696 e!28695)))

(declare-fun res!25063 () Bool)

(assert (=> b!54649 (=> (not res!25063) (not e!28695))))

(assert (=> b!54649 (= res!25063 inst!348)))

(assert (=> b!54650 (= e!28695 inst!349)))

(assert (= (and d!45046 (not res!25064)) b!54649))

(assert (= neg-inst!336 inst!348))

(assert (= (and b!54649 res!25063) b!54650))

(assert (= neg-inst!337 inst!349))

(assert (=> start!7636 d!45046))

(declare-fun tp!15458 () Bool)

(declare-fun tp!15457 () Bool)

(declare-fun b!54655 () Bool)

(declare-fun e!28699 () Bool)

(assert (=> b!54655 (= e!28699 (and (inv!977 (left!1156 (left!1156 thiss!7690))) tp!15457 (inv!977 (right!1159 (left!1156 thiss!7690))) tp!15458))))

(assert (=> b!54623 (= tp!15446 (and (inv!977 (left!1156 thiss!7690)) e!28699))))

(assert (= (and b!54623 (is-Node!126 (left!1156 thiss!7690))) b!54655))

(declare-fun m!59034 () Bool)

(assert (=> b!54655 m!59034))

(declare-fun m!59036 () Bool)

(assert (=> b!54655 m!59036))

(assert (=> b!54623 m!58986))

(declare-fun e!28700 () Bool)

(declare-fun tp!15460 () Bool)

(declare-fun b!54656 () Bool)

(declare-fun tp!15459 () Bool)

(assert (=> b!54656 (= e!28700 (and (inv!977 (left!1156 (right!1159 thiss!7690))) tp!15459 (inv!977 (right!1159 (right!1159 thiss!7690))) tp!15460))))

(assert (=> b!54623 (= tp!15445 (and (inv!977 (right!1159 thiss!7690)) e!28700))))

(assert (= (and b!54623 (is-Node!126 (right!1159 thiss!7690))) b!54656))

(declare-fun m!59038 () Bool)

(assert (=> b!54656 m!59038))

(declare-fun m!59040 () Bool)

(assert (=> b!54656 m!59040))

(assert (=> b!54623 m!58988))

(push 1)

(assert (not b!54629))

(assert (not b!54656))

(assert (not neg-inst!335))

(assert (not neg-inst!333))

(assert (not b!54623))

(assert (not neg-inst!331))

(assert (not b!54650))

(assert (not neg-inst!332))

(assert (not b!54649))

(assert (not b!54655))

(assert (not b!54646))

(assert (not neg-inst!336))

(assert (not b!54628))

(assert (not b!54644))

(assert (not b!54648))

(assert (not b!54641))

(assert (not d!45040))

(assert (not neg-inst!330))

(assert (not b!54647))

(assert (not b!54645))

(assert (not neg-inst!337))

(assert (not b!54642))

(assert (not neg-inst!334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45048 () Bool)

(declare-fun c!11857 () Bool)

(assert (=> d!45048 (= c!11857 (is-Empty!165 (left!1156 (left!1156 thiss!7690))))))

(declare-fun e!28703 () (Set (_ BitVec 32)))

(assert (=> d!45048 (= (content!17 (left!1156 (left!1156 thiss!7690))) e!28703)))

(declare-fun b!54661 () Bool)

(assert (=> b!54661 (= e!28703 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54662 () Bool)

(assert (=> b!54662 (= e!28703 (union (union (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (insert (elem!226 (left!1156 (left!1156 thiss!7690))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))))))

(assert (= (and d!45048 c!11857) b!54661))

(assert (= (and d!45048 (not c!11857)) b!54662))

(declare-fun m!59042 () Bool)

(assert (=> b!54662 m!59042))

(declare-fun m!59044 () Bool)

(assert (=> b!54662 m!59044))

(declare-fun m!59046 () Bool)

(assert (=> b!54662 m!59046))

(assert (=> neg-inst!332 d!45048))

(assert (=> b!54623 d!45042))

(assert (=> b!54623 d!45044))

(declare-fun d!45050 () Bool)

(declare-fun c!11858 () Bool)

(assert (=> d!45050 (= c!11858 (is-Empty!165 (right!1159 (left!1156 thiss!7690))))))

(declare-fun e!28704 () (Set (_ BitVec 32)))

(assert (=> d!45050 (= (content!17 (right!1159 (left!1156 thiss!7690))) e!28704)))

(declare-fun b!54663 () Bool)

(assert (=> b!54663 (= e!28704 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54664 () Bool)

(assert (=> b!54664 (= e!28704 (union (union (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (insert (elem!226 (right!1159 (left!1156 thiss!7690))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1159 (right!1159 (left!1156 thiss!7690))))))))

(assert (= (and d!45050 c!11858) b!54663))

(assert (= (and d!45050 (not c!11858)) b!54664))

(declare-fun m!59048 () Bool)

(assert (=> b!54664 m!59048))

(declare-fun m!59050 () Bool)

(assert (=> b!54664 m!59050))

(declare-fun m!59052 () Bool)

(assert (=> b!54664 m!59052))

(assert (=> b!54646 d!45050))

(assert (=> neg-inst!333 d!45050))

(declare-fun d!45052 () Bool)

(declare-fun c!11859 () Bool)

(assert (=> d!45052 (= c!11859 (is-Empty!165 (right!1159 (right!1159 thiss!7690))))))

(declare-fun e!28705 () (Set (_ BitVec 32)))

(assert (=> d!45052 (= (content!17 (right!1159 (right!1159 thiss!7690))) e!28705)))

(declare-fun b!54665 () Bool)

(assert (=> b!54665 (= e!28705 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54666 () Bool)

(assert (=> b!54666 (= e!28705 (union (union (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (insert (elem!226 (right!1159 (right!1159 thiss!7690))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))))))

(assert (= (and d!45052 c!11859) b!54665))

(assert (= (and d!45052 (not c!11859)) b!54666))

(declare-fun m!59054 () Bool)

(assert (=> b!54666 m!59054))

(declare-fun m!59056 () Bool)

(assert (=> b!54666 m!59056))

(declare-fun m!59058 () Bool)

(assert (=> b!54666 m!59058))

(assert (=> b!54648 d!45052))

(declare-fun d!45054 () Bool)

(declare-fun c!11860 () Bool)

(assert (=> d!45054 (= c!11860 (is-Empty!165 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))))

(declare-fun e!28706 () (Set (_ BitVec 32)))

(assert (=> d!45054 (= (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))) e!28706)))

(declare-fun b!54667 () Bool)

(assert (=> b!54667 (= e!28706 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54668 () Bool)

(assert (=> b!54668 (= e!28706 (union (union (content!17 (left!1156 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (insert (elem!226 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1159 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))))))

(assert (= (and d!45054 c!11860) b!54667))

(assert (= (and d!45054 (not c!11860)) b!54668))

(declare-fun m!59060 () Bool)

(assert (=> b!54668 m!59060))

(declare-fun m!59062 () Bool)

(assert (=> b!54668 m!59062))

(declare-fun m!59064 () Bool)

(assert (=> b!54668 m!59064))

(assert (=> b!54628 d!45054))

(declare-fun d!45056 () Bool)

(declare-fun c!11861 () Bool)

(assert (=> d!45056 (= c!11861 (is-Empty!165 (left!1156 thiss!7690)))))

(declare-fun e!28707 () (Set (_ BitVec 32)))

(assert (=> d!45056 (= (content!17 (left!1156 thiss!7690)) e!28707)))

(declare-fun b!54669 () Bool)

(assert (=> b!54669 (= e!28707 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54670 () Bool)

(assert (=> b!54670 (= e!28707 (union (union (content!17 (left!1156 (left!1156 thiss!7690))) (insert (elem!226 (left!1156 thiss!7690)) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1159 (left!1156 thiss!7690)))))))

(assert (= (and d!45056 c!11861) b!54669))

(assert (= (and d!45056 (not c!11861)) b!54670))

(assert (=> b!54670 m!59012))

(declare-fun m!59066 () Bool)

(assert (=> b!54670 m!59066))

(assert (=> b!54670 m!59016))

(assert (=> neg-inst!336 d!45056))

(declare-fun d!45058 () Bool)

(declare-fun c!11862 () Bool)

(assert (=> d!45058 (= c!11862 (is-Empty!165 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))))

(declare-fun e!28708 () (Set (_ BitVec 32)))

(assert (=> d!45058 (= (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))) e!28708)))

(declare-fun b!54671 () Bool)

(assert (=> b!54671 (= e!28708 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54672 () Bool)

(assert (=> b!54672 (= e!28708 (union (union (content!17 (left!1156 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (insert (elem!226 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1159 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))))))

(assert (= (and d!45058 c!11862) b!54671))

(assert (= (and d!45058 (not c!11862)) b!54672))

(declare-fun m!59068 () Bool)

(assert (=> b!54672 m!59068))

(declare-fun m!59070 () Bool)

(assert (=> b!54672 m!59070))

(declare-fun m!59072 () Bool)

(assert (=> b!54672 m!59072))

(assert (=> neg-inst!331 d!45058))

(declare-fun d!45060 () Bool)

(declare-fun c!11863 () Bool)

(assert (=> d!45060 (= c!11863 (is-Empty!165 (left!1156 (right!1159 thiss!7690))))))

(declare-fun e!28709 () (Set (_ BitVec 32)))

(assert (=> d!45060 (= (content!17 (left!1156 (right!1159 thiss!7690))) e!28709)))

(declare-fun b!54673 () Bool)

(assert (=> b!54673 (= e!28709 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54674 () Bool)

(assert (=> b!54674 (= e!28709 (union (union (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (insert (elem!226 (left!1156 (right!1159 thiss!7690))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))))))

(assert (= (and d!45060 c!11863) b!54673))

(assert (= (and d!45060 (not c!11863)) b!54674))

(declare-fun m!59074 () Bool)

(assert (=> b!54674 m!59074))

(declare-fun m!59076 () Bool)

(assert (=> b!54674 m!59076))

(declare-fun m!59078 () Bool)

(assert (=> b!54674 m!59078))

(assert (=> neg-inst!334 d!45060))

(assert (=> b!54647 d!45060))

(assert (=> neg-inst!330 d!45054))

(declare-fun lt!9614 () Bool)

(declare-fun b!54675 () Bool)

(declare-fun lt!9615 () IntSet!40)

(declare-fun e!28710 () IntSet!40)

(assert (=> b!54675 (= e!28710 (ite lt!9614 (Node!126 lt!9615 (elem!226 (ite lt!9611 (left!1156 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690)))) (right!1159 (ite lt!9611 (left!1156 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690))))) (ite (bvsgt x!21411 (elem!226 (ite lt!9611 (left!1156 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690))))) (Node!126 (left!1156 (ite lt!9611 (left!1156 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690)))) (elem!226 (ite lt!9611 (left!1156 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690)))) lt!9615) (ite lt!9611 (left!1156 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690))))))))

(declare-fun e!28712 () IntSet!40)

(assert (=> b!54675 (= lt!9615 e!28712)))

(declare-fun c!11864 () Bool)

(assert (=> b!54675 (= c!11864 (or lt!9614 (bvsgt x!21411 (elem!226 (ite lt!9611 (left!1156 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690)))))))))

(assert (=> b!54675 (= lt!9614 (bvslt x!21411 (elem!226 (ite lt!9611 (left!1156 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690))))))))

(declare-fun lt!9616 () IntSet!40)

(declare-fun d!45062 () Bool)

(assert (=> d!45062 (= (content!17 lt!9616) (union (content!17 (ite lt!9611 (left!1156 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690)))) (insert x!21411 (as emptyset (Set (_ BitVec 32))))))))

(assert (=> d!45062 (= lt!9616 e!28710)))

(declare-fun c!11865 () Bool)

(assert (=> d!45062 (= c!11865 (is-Empty!165 (ite lt!9611 (left!1156 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690)))))))

(assert (=> d!45062 (= (incl!2 (ite lt!9611 (left!1156 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690))) x!21411) lt!9616)))

(declare-fun b!54676 () Bool)

(assert (=> b!54676 (= e!28712 (incl!2 (ite lt!9614 (left!1156 (ite lt!9611 (left!1156 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690)))) (right!1159 (ite lt!9611 (left!1156 (left!1156 thiss!7690)) (right!1159 (left!1156 thiss!7690))))) x!21411))))

(declare-fun b!54677 () Bool)

(declare-fun res!25065 () IntSet!40)

(assert (=> b!54677 (= e!28712 res!25065)))

(assert (=> b!54677 true))

(declare-fun e!28711 () Bool)

(assert (=> b!54677 (and (inv!977 res!25065) e!28711)))

(declare-fun b!54678 () Bool)

(assert (=> b!54678 (= e!28710 (Node!126 Empty!165 x!21411 Empty!165))))

(declare-fun b!54679 () Bool)

(declare-fun tp!15462 () Bool)

(declare-fun tp!15461 () Bool)

(assert (=> b!54679 (= e!28711 (and (inv!977 (left!1156 res!25065)) tp!15462 (inv!977 (right!1159 res!25065)) tp!15461))))

(assert (= (and b!54677 (is-Node!126 res!25065)) b!54679))

(assert (= (and b!54675 c!11864) b!54676))

(assert (= (and b!54675 (not c!11864)) b!54677))

(assert (= (and d!45062 c!11865) b!54678))

(assert (= (and d!45062 (not c!11865)) b!54675))

(declare-fun m!59080 () Bool)

(assert (=> d!45062 m!59080))

(declare-fun m!59082 () Bool)

(assert (=> d!45062 m!59082))

(assert (=> d!45062 m!59002))

(declare-fun m!59084 () Bool)

(assert (=> b!54676 m!59084))

(declare-fun m!59086 () Bool)

(assert (=> b!54677 m!59086))

(declare-fun m!59088 () Bool)

(assert (=> b!54679 m!59088))

(declare-fun m!59090 () Bool)

(assert (=> b!54679 m!59090))

(assert (=> b!54641 d!45062))

(declare-fun b!54680 () Bool)

(assert (=> b!54680 m!59074))

(declare-fun inst!350 () Bool)

(declare-fun x!21814 () (_ BitVec 32))

(assert (=> b!54680 (= inst!350 (=> true (or (not (member x!21814 (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))))) (bvslt x!21814 (elem!226 (left!1156 (right!1159 thiss!7690)))))))))

(declare-fun m!59092 () Bool)

(assert (=> b!54680 m!59092))

(declare-fun bs!25985 () Bool)

(assert (= bs!25985 (and b!54680 neg-inst!334)))

(assert (=> (and bs!25985 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!350 true)))

(declare-fun bs!25986 () Bool)

(assert (= bs!25986 (and b!54680 neg-inst!332)))

(assert (=> (and bs!25986 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!350 true)))

(declare-fun bs!25987 () Bool)

(assert (= bs!25987 (and b!54680 b!54645)))

(assert (=> (and bs!25987 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!350 inst!344)))

(declare-fun bs!25988 () Bool)

(assert (= bs!25988 (and b!54680 neg-inst!336)))

(assert (=> (and bs!25988 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= inst!350 true)))

(declare-fun bs!25989 () Bool)

(assert (= bs!25989 (and b!54680 b!54649)))

(assert (=> (and bs!25989 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= inst!350 inst!348)))

(declare-fun bs!25990 () Bool)

(assert (= bs!25990 (and b!54680 neg-inst!330)))

(assert (=> (and bs!25990 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!350 true)))

(declare-fun bs!25991 () Bool)

(assert (= bs!25991 (and b!54680 b!54628)))

(assert (=> (and bs!25991 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!350 inst!342)))

(declare-fun bs!25992 () Bool)

(assert (= bs!25992 (and b!54680 b!54647)))

(assert (=> (and bs!25992 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!350 inst!346)))

(declare-fun b!54681 () Bool)

(assert (=> b!54681 m!59078))

(declare-fun inst!351 () Bool)

(declare-fun x!21815 () (_ BitVec 32))

(assert (=> b!54681 (= inst!351 (=> true (or (not (member x!21815 (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))))) (bvslt (elem!226 (left!1156 (right!1159 thiss!7690))) x!21815))))))

(declare-fun m!59094 () Bool)

(assert (=> b!54681 m!59094))

(declare-fun bs!25993 () Bool)

(assert (= bs!25993 (and b!54681 b!54629)))

(assert (=> (and bs!25993 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!351 inst!343)))

(declare-fun bs!25994 () Bool)

(assert (= bs!25994 (and b!54681 neg-inst!331)))

(assert (=> (and bs!25994 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!351 true)))

(declare-fun bs!25995 () Bool)

(assert (= bs!25995 (and b!54681 neg-inst!333)))

(assert (=> (and bs!25995 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!351 true)))

(declare-fun bs!25996 () Bool)

(assert (= bs!25996 (and b!54681 b!54650)))

(assert (=> (and bs!25996 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= inst!351 inst!349)))

(declare-fun bs!25997 () Bool)

(assert (= bs!25997 (and b!54681 neg-inst!337)))

(assert (=> (and bs!25997 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= inst!351 true)))

(declare-fun bs!25998 () Bool)

(assert (= bs!25998 (and b!54681 b!54648)))

(assert (=> (and bs!25998 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!351 inst!347)))

(declare-fun bs!25999 () Bool)

(assert (= bs!25999 (and b!54681 neg-inst!335)))

(assert (=> (and bs!25999 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!351 true)))

(declare-fun bs!26000 () Bool)

(assert (= bs!26000 (and b!54681 b!54646)))

(assert (=> (and bs!26000 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!351 inst!345)))

(declare-fun bs!26001 () Bool)

(declare-fun neg-inst!338 () Bool)

(assert (= bs!26001 neg-inst!338))

(assert (=> bs!26001 m!59074))

(declare-fun bs!26002 () Bool)

(declare-fun s!1345 () Bool)

(assert (= bs!26002 (and neg-inst!338 s!1345)))

(assert (=> bs!26002 (=> true (or (not (member x!21814 (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))))) (bvslt x!21814 (elem!226 (left!1156 (right!1159 thiss!7690))))))))

(assert (=> m!59092 s!1345))

(declare-fun bs!26003 () Bool)

(assert (= bs!26003 (and neg-inst!338 neg-inst!334)))

(assert (=> (and bs!26003 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!26004 () Bool)

(assert (= bs!26004 (and neg-inst!338 neg-inst!332)))

(assert (=> (and bs!26004 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!26005 () Bool)

(assert (= bs!26005 (and neg-inst!338 b!54645)))

(assert (=> (and bs!26005 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true inst!344)))

(declare-fun bs!26006 () Bool)

(assert (= bs!26006 (and neg-inst!338 neg-inst!336)))

(assert (=> (and bs!26006 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= true true)))

(declare-fun bs!26007 () Bool)

(assert (= bs!26007 (and neg-inst!338 b!54680)))

(assert (=> bs!26007 (= true inst!350)))

(declare-fun bs!26008 () Bool)

(assert (= bs!26008 (and neg-inst!338 b!54649)))

(assert (=> (and bs!26008 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= true inst!348)))

(declare-fun bs!26009 () Bool)

(assert (= bs!26009 (and neg-inst!338 neg-inst!330)))

(assert (=> (and bs!26009 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26010 () Bool)

(assert (= bs!26010 (and neg-inst!338 b!54628)))

(assert (=> (and bs!26010 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!342)))

(declare-fun bs!26011 () Bool)

(assert (= bs!26011 (and neg-inst!338 b!54647)))

(assert (=> (and bs!26011 (= (content!17 (left!1156 (left!1156 (right!1159 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true inst!346)))

(declare-fun bs!26012 () Bool)

(declare-fun neg-inst!339 () Bool)

(assert (= bs!26012 neg-inst!339))

(assert (=> bs!26012 m!59078))

(declare-fun bs!26013 () Bool)

(declare-fun s!1347 () Bool)

(assert (= bs!26013 (and neg-inst!339 s!1347)))

(assert (=> bs!26013 (=> true (or (not (member x!21815 (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))))) (bvslt (elem!226 (left!1156 (right!1159 thiss!7690))) x!21815)))))

(assert (=> m!59094 s!1347))

(declare-fun bs!26014 () Bool)

(assert (= bs!26014 (and neg-inst!339 b!54629)))

(assert (=> (and bs!26014 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!343)))

(declare-fun bs!26015 () Bool)

(assert (= bs!26015 (and neg-inst!339 neg-inst!331)))

(assert (=> (and bs!26015 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26016 () Bool)

(assert (= bs!26016 (and neg-inst!339 neg-inst!333)))

(assert (=> (and bs!26016 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!26017 () Bool)

(assert (= bs!26017 (and neg-inst!339 b!54650)))

(assert (=> (and bs!26017 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= true inst!349)))

(declare-fun bs!26018 () Bool)

(assert (= bs!26018 (and neg-inst!339 neg-inst!337)))

(assert (=> (and bs!26018 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= true true)))

(declare-fun bs!26019 () Bool)

(assert (= bs!26019 (and neg-inst!339 b!54648)))

(assert (=> (and bs!26019 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true inst!347)))

(declare-fun bs!26020 () Bool)

(assert (= bs!26020 (and neg-inst!339 neg-inst!335)))

(assert (=> (and bs!26020 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!26021 () Bool)

(assert (= bs!26021 (and neg-inst!339 b!54681)))

(assert (=> bs!26021 (= true inst!351)))

(declare-fun bs!26022 () Bool)

(assert (= bs!26022 (and neg-inst!339 b!54646)))

(assert (=> (and bs!26022 (= (content!17 (right!1159 (left!1156 (right!1159 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true inst!345)))

(declare-fun d!45064 () Bool)

(declare-fun res!25067 () Bool)

(declare-fun e!28714 () Bool)

(assert (=> d!45064 (=> res!25067 e!28714)))

(assert (=> d!45064 (= res!25067 (not (is-Node!126 (left!1156 (right!1159 thiss!7690)))))))

(assert (=> d!45064 (= (inv!977 (left!1156 (right!1159 thiss!7690))) e!28714)))

(declare-fun e!28713 () Bool)

(assert (=> b!54680 (= e!28714 e!28713)))

(declare-fun res!25066 () Bool)

(assert (=> b!54680 (=> (not res!25066) (not e!28713))))

(assert (=> b!54680 (= res!25066 inst!350)))

(assert (=> b!54681 (= e!28713 inst!351)))

(assert (= (and d!45064 (not res!25067)) b!54680))

(assert (= neg-inst!338 inst!350))

(assert (= (and b!54680 res!25066) b!54681))

(assert (= neg-inst!339 inst!351))

(assert (=> b!54656 d!45064))

(declare-fun b!54682 () Bool)

(assert (=> b!54682 m!59054))

(declare-fun inst!352 () Bool)

(declare-fun x!21816 () (_ BitVec 32))

(assert (=> b!54682 (= inst!352 (=> true (or (not (member x!21816 (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))))) (bvslt x!21816 (elem!226 (right!1159 (right!1159 thiss!7690)))))))))

(declare-fun m!59096 () Bool)

(assert (=> b!54682 m!59096))

(declare-fun bs!26023 () Bool)

(assert (= bs!26023 (and b!54682 neg-inst!334)))

(assert (=> (and bs!26023 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!352 true)))

(declare-fun bs!26024 () Bool)

(assert (= bs!26024 (and b!54682 neg-inst!332)))

(assert (=> (and bs!26024 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!352 true)))

(declare-fun bs!26025 () Bool)

(assert (= bs!26025 (and b!54682 b!54645)))

(assert (=> (and bs!26025 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!352 inst!344)))

(declare-fun bs!26026 () Bool)

(assert (= bs!26026 (and b!54682 neg-inst!336)))

(assert (=> (and bs!26026 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= inst!352 true)))

(declare-fun bs!26027 () Bool)

(assert (= bs!26027 (and b!54682 b!54680)))

(assert (=> (and bs!26027 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!352 inst!350)))

(declare-fun bs!26028 () Bool)

(assert (= bs!26028 (and b!54682 b!54649)))

(assert (=> (and bs!26028 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= inst!352 inst!348)))

(declare-fun bs!26029 () Bool)

(assert (= bs!26029 (and b!54682 neg-inst!330)))

(assert (=> (and bs!26029 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!352 true)))

(declare-fun bs!26030 () Bool)

(assert (= bs!26030 (and b!54682 b!54628)))

(assert (=> (and bs!26030 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!352 inst!342)))

(declare-fun bs!26031 () Bool)

(assert (= bs!26031 (and b!54682 neg-inst!338)))

(assert (=> (and bs!26031 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!352 true)))

(declare-fun bs!26032 () Bool)

(assert (= bs!26032 (and b!54682 b!54647)))

(assert (=> (and bs!26032 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!352 inst!346)))

(declare-fun b!54683 () Bool)

(assert (=> b!54683 m!59058))

(declare-fun inst!353 () Bool)

(declare-fun x!21817 () (_ BitVec 32))

(assert (=> b!54683 (= inst!353 (=> true (or (not (member x!21817 (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))))) (bvslt (elem!226 (right!1159 (right!1159 thiss!7690))) x!21817))))))

(declare-fun m!59098 () Bool)

(assert (=> b!54683 m!59098))

(declare-fun bs!26033 () Bool)

(assert (= bs!26033 (and b!54683 b!54629)))

(assert (=> (and bs!26033 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!353 inst!343)))

(declare-fun bs!26034 () Bool)

(assert (= bs!26034 (and b!54683 neg-inst!331)))

(assert (=> (and bs!26034 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!353 true)))

(declare-fun bs!26035 () Bool)

(assert (= bs!26035 (and b!54683 neg-inst!333)))

(assert (=> (and bs!26035 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!353 true)))

(declare-fun bs!26036 () Bool)

(assert (= bs!26036 (and b!54683 b!54650)))

(assert (=> (and bs!26036 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= inst!353 inst!349)))

(declare-fun bs!26037 () Bool)

(assert (= bs!26037 (and b!54683 neg-inst!337)))

(assert (=> (and bs!26037 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= inst!353 true)))

(declare-fun bs!26038 () Bool)

(assert (= bs!26038 (and b!54683 b!54648)))

(assert (=> (and bs!26038 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!353 inst!347)))

(declare-fun bs!26039 () Bool)

(assert (= bs!26039 (and b!54683 neg-inst!335)))

(assert (=> (and bs!26039 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!353 true)))

(declare-fun bs!26040 () Bool)

(assert (= bs!26040 (and b!54683 b!54681)))

(assert (=> (and bs!26040 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!353 inst!351)))

(declare-fun bs!26041 () Bool)

(assert (= bs!26041 (and b!54683 b!54646)))

(assert (=> (and bs!26041 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!353 inst!345)))

(declare-fun bs!26042 () Bool)

(assert (= bs!26042 (and b!54683 neg-inst!339)))

(assert (=> (and bs!26042 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!353 true)))

(declare-fun bs!26043 () Bool)

(declare-fun neg-inst!340 () Bool)

(assert (= bs!26043 neg-inst!340))

(assert (=> bs!26043 m!59054))

(declare-fun bs!26044 () Bool)

(declare-fun s!1349 () Bool)

(assert (= bs!26044 (and neg-inst!340 s!1349)))

(assert (=> bs!26044 (=> true (or (not (member x!21816 (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))))) (bvslt x!21816 (elem!226 (right!1159 (right!1159 thiss!7690))))))))

(assert (=> m!59096 s!1349))

(declare-fun bs!26045 () Bool)

(assert (= bs!26045 (and neg-inst!340 neg-inst!334)))

(assert (=> (and bs!26045 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!26046 () Bool)

(assert (= bs!26046 (and neg-inst!340 neg-inst!332)))

(assert (=> (and bs!26046 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!26047 () Bool)

(assert (= bs!26047 (and neg-inst!340 b!54645)))

(assert (=> (and bs!26047 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true inst!344)))

(declare-fun bs!26048 () Bool)

(assert (= bs!26048 (and neg-inst!340 neg-inst!336)))

(assert (=> (and bs!26048 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= true true)))

(declare-fun bs!26049 () Bool)

(assert (= bs!26049 (and neg-inst!340 b!54680)))

(assert (=> (and bs!26049 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true inst!350)))

(declare-fun bs!26050 () Bool)

(assert (= bs!26050 (and neg-inst!340 b!54649)))

(assert (=> (and bs!26050 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= true inst!348)))

(declare-fun bs!26051 () Bool)

(assert (= bs!26051 (and neg-inst!340 neg-inst!330)))

(assert (=> (and bs!26051 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26052 () Bool)

(assert (= bs!26052 (and neg-inst!340 b!54628)))

(assert (=> (and bs!26052 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!342)))

(declare-fun bs!26053 () Bool)

(assert (= bs!26053 (and neg-inst!340 b!54682)))

(assert (=> bs!26053 (= true inst!352)))

(declare-fun bs!26054 () Bool)

(assert (= bs!26054 (and neg-inst!340 neg-inst!338)))

(assert (=> (and bs!26054 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26055 () Bool)

(assert (= bs!26055 (and neg-inst!340 b!54647)))

(assert (=> (and bs!26055 (= (content!17 (left!1156 (right!1159 (right!1159 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true inst!346)))

(declare-fun bs!26056 () Bool)

(declare-fun neg-inst!341 () Bool)

(assert (= bs!26056 neg-inst!341))

(assert (=> bs!26056 m!59058))

(declare-fun bs!26057 () Bool)

(declare-fun s!1351 () Bool)

(assert (= bs!26057 (and neg-inst!341 s!1351)))

(assert (=> bs!26057 (=> true (or (not (member x!21817 (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))))) (bvslt (elem!226 (right!1159 (right!1159 thiss!7690))) x!21817)))))

(assert (=> m!59098 s!1351))

(declare-fun bs!26058 () Bool)

(assert (= bs!26058 (and neg-inst!341 b!54683)))

(assert (=> bs!26058 (= true inst!353)))

(declare-fun bs!26059 () Bool)

(assert (= bs!26059 (and neg-inst!341 b!54629)))

(assert (=> (and bs!26059 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!343)))

(declare-fun bs!26060 () Bool)

(assert (= bs!26060 (and neg-inst!341 neg-inst!331)))

(assert (=> (and bs!26060 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26061 () Bool)

(assert (= bs!26061 (and neg-inst!341 neg-inst!333)))

(assert (=> (and bs!26061 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!26062 () Bool)

(assert (= bs!26062 (and neg-inst!341 b!54650)))

(assert (=> (and bs!26062 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= true inst!349)))

(declare-fun bs!26063 () Bool)

(assert (= bs!26063 (and neg-inst!341 neg-inst!337)))

(assert (=> (and bs!26063 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 thiss!7690))) (= true true)))

(declare-fun bs!26064 () Bool)

(assert (= bs!26064 (and neg-inst!341 b!54648)))

(assert (=> (and bs!26064 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true inst!347)))

(declare-fun bs!26065 () Bool)

(assert (= bs!26065 (and neg-inst!341 neg-inst!335)))

(assert (=> (and bs!26065 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!26066 () Bool)

(assert (= bs!26066 (and neg-inst!341 b!54681)))

(assert (=> (and bs!26066 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true inst!351)))

(declare-fun bs!26067 () Bool)

(assert (= bs!26067 (and neg-inst!341 b!54646)))

(assert (=> (and bs!26067 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true inst!345)))

(declare-fun bs!26068 () Bool)

(assert (= bs!26068 (and neg-inst!341 neg-inst!339)))

(assert (=> (and bs!26068 (= (content!17 (right!1159 (right!1159 (right!1159 thiss!7690)))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (right!1159 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true true)))

(declare-fun d!45066 () Bool)

(declare-fun res!25069 () Bool)

(declare-fun e!28716 () Bool)

(assert (=> d!45066 (=> res!25069 e!28716)))

(assert (=> d!45066 (= res!25069 (not (is-Node!126 (right!1159 (right!1159 thiss!7690)))))))

(assert (=> d!45066 (= (inv!977 (right!1159 (right!1159 thiss!7690))) e!28716)))

(declare-fun e!28715 () Bool)

(assert (=> b!54682 (= e!28716 e!28715)))

(declare-fun res!25068 () Bool)

(assert (=> b!54682 (=> (not res!25068) (not e!28715))))

(assert (=> b!54682 (= res!25068 inst!352)))

(assert (=> b!54683 (= e!28715 inst!353)))

(assert (= (and d!45066 (not res!25069)) b!54682))

(assert (= neg-inst!340 inst!352))

(assert (= (and b!54682 res!25068) b!54683))

(assert (= neg-inst!341 inst!353))

(assert (=> b!54656 d!45066))

(assert (=> b!54649 d!45056))

(declare-fun b!54684 () Bool)

(assert (=> b!54684 m!59042))

(declare-fun inst!354 () Bool)

(declare-fun x!21818 () (_ BitVec 32))

(assert (=> b!54684 (= inst!354 (=> true (or (not (member x!21818 (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))))) (bvslt x!21818 (elem!226 (left!1156 (left!1156 thiss!7690)))))))))

(declare-fun m!59100 () Bool)

(assert (=> b!54684 m!59100))

(declare-fun bs!26069 () Bool)

(assert (= bs!26069 (and b!54684 neg-inst!340)))

(assert (=> (and bs!26069 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!354 true)))

(declare-fun bs!26070 () Bool)

(assert (= bs!26070 (and b!54684 neg-inst!334)))

(assert (=> (and bs!26070 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!354 true)))

(declare-fun bs!26071 () Bool)

(assert (= bs!26071 (and b!54684 neg-inst!332)))

(assert (=> (and bs!26071 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!354 true)))

(declare-fun bs!26072 () Bool)

(assert (= bs!26072 (and b!54684 b!54645)))

(assert (=> (and bs!26072 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!354 inst!344)))

(declare-fun bs!26073 () Bool)

(assert (= bs!26073 (and b!54684 neg-inst!336)))

(assert (=> (and bs!26073 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= inst!354 true)))

(declare-fun bs!26074 () Bool)

(assert (= bs!26074 (and b!54684 b!54680)))

(assert (=> (and bs!26074 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!354 inst!350)))

(declare-fun bs!26075 () Bool)

(assert (= bs!26075 (and b!54684 b!54649)))

(assert (=> (and bs!26075 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= inst!354 inst!348)))

(declare-fun bs!26076 () Bool)

(assert (= bs!26076 (and b!54684 neg-inst!330)))

(assert (=> (and bs!26076 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!354 true)))

(declare-fun bs!26077 () Bool)

(assert (= bs!26077 (and b!54684 b!54628)))

(assert (=> (and bs!26077 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!354 inst!342)))

(declare-fun bs!26078 () Bool)

(assert (= bs!26078 (and b!54684 b!54682)))

(assert (=> (and bs!26078 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!354 inst!352)))

(declare-fun bs!26079 () Bool)

(assert (= bs!26079 (and b!54684 neg-inst!338)))

(assert (=> (and bs!26079 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!354 true)))

(declare-fun bs!26080 () Bool)

(assert (= bs!26080 (and b!54684 b!54647)))

(assert (=> (and bs!26080 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!354 inst!346)))

(declare-fun b!54685 () Bool)

(assert (=> b!54685 m!59046))

(declare-fun inst!355 () Bool)

(declare-fun x!21819 () (_ BitVec 32))

(assert (=> b!54685 (= inst!355 (=> true (or (not (member x!21819 (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))))) (bvslt (elem!226 (left!1156 (left!1156 thiss!7690))) x!21819))))))

(declare-fun m!59102 () Bool)

(assert (=> b!54685 m!59102))

(declare-fun bs!26081 () Bool)

(assert (= bs!26081 (and b!54685 b!54683)))

(assert (=> (and bs!26081 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!355 inst!353)))

(declare-fun bs!26082 () Bool)

(assert (= bs!26082 (and b!54685 b!54629)))

(assert (=> (and bs!26082 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!355 inst!343)))

(declare-fun bs!26083 () Bool)

(assert (= bs!26083 (and b!54685 neg-inst!331)))

(assert (=> (and bs!26083 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!355 true)))

(declare-fun bs!26084 () Bool)

(assert (= bs!26084 (and b!54685 neg-inst!333)))

(assert (=> (and bs!26084 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!355 true)))

(declare-fun bs!26085 () Bool)

(assert (= bs!26085 (and b!54685 b!54650)))

(assert (=> (and bs!26085 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= inst!355 inst!349)))

(declare-fun bs!26086 () Bool)

(assert (= bs!26086 (and b!54685 neg-inst!337)))

(assert (=> (and bs!26086 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= inst!355 true)))

(declare-fun bs!26087 () Bool)

(assert (= bs!26087 (and b!54685 neg-inst!341)))

(assert (=> (and bs!26087 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!355 true)))

(declare-fun bs!26088 () Bool)

(assert (= bs!26088 (and b!54685 neg-inst!335)))

(assert (=> (and bs!26088 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!355 true)))

(declare-fun bs!26089 () Bool)

(assert (= bs!26089 (and b!54685 b!54648)))

(assert (=> (and bs!26089 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!355 inst!347)))

(declare-fun bs!26090 () Bool)

(assert (= bs!26090 (and b!54685 b!54681)))

(assert (=> (and bs!26090 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!355 inst!351)))

(declare-fun bs!26091 () Bool)

(assert (= bs!26091 (and b!54685 b!54646)))

(assert (=> (and bs!26091 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!355 inst!345)))

(declare-fun bs!26092 () Bool)

(assert (= bs!26092 (and b!54685 neg-inst!339)))

(assert (=> (and bs!26092 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!355 true)))

(declare-fun bs!26093 () Bool)

(declare-fun neg-inst!342 () Bool)

(assert (= bs!26093 neg-inst!342))

(assert (=> bs!26093 m!59042))

(declare-fun bs!26094 () Bool)

(declare-fun s!1353 () Bool)

(assert (= bs!26094 (and neg-inst!342 s!1353)))

(assert (=> bs!26094 (=> true (or (not (member x!21818 (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))))) (bvslt x!21818 (elem!226 (left!1156 (left!1156 thiss!7690))))))))

(assert (=> m!59100 s!1353))

(declare-fun bs!26095 () Bool)

(assert (= bs!26095 (and neg-inst!342 neg-inst!340)))

(assert (=> (and bs!26095 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26096 () Bool)

(assert (= bs!26096 (and neg-inst!342 neg-inst!334)))

(assert (=> (and bs!26096 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!26097 () Bool)

(assert (= bs!26097 (and neg-inst!342 neg-inst!332)))

(assert (=> (and bs!26097 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!26098 () Bool)

(assert (= bs!26098 (and neg-inst!342 b!54684)))

(assert (=> bs!26098 (= true inst!354)))

(declare-fun bs!26099 () Bool)

(assert (= bs!26099 (and neg-inst!342 b!54645)))

(assert (=> (and bs!26099 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true inst!344)))

(declare-fun bs!26100 () Bool)

(assert (= bs!26100 (and neg-inst!342 neg-inst!336)))

(assert (=> (and bs!26100 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= true true)))

(declare-fun bs!26101 () Bool)

(assert (= bs!26101 (and neg-inst!342 b!54649)))

(assert (=> (and bs!26101 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= true inst!348)))

(declare-fun bs!26102 () Bool)

(assert (= bs!26102 (and neg-inst!342 b!54680)))

(assert (=> (and bs!26102 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true inst!350)))

(declare-fun bs!26103 () Bool)

(assert (= bs!26103 (and neg-inst!342 neg-inst!330)))

(assert (=> (and bs!26103 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26104 () Bool)

(assert (= bs!26104 (and neg-inst!342 b!54628)))

(assert (=> (and bs!26104 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!342)))

(declare-fun bs!26105 () Bool)

(assert (= bs!26105 (and neg-inst!342 neg-inst!338)))

(assert (=> (and bs!26105 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26106 () Bool)

(assert (= bs!26106 (and neg-inst!342 b!54682)))

(assert (=> (and bs!26106 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true inst!352)))

(declare-fun bs!26107 () Bool)

(assert (= bs!26107 (and neg-inst!342 b!54647)))

(assert (=> (and bs!26107 (= (content!17 (left!1156 (left!1156 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true inst!346)))

(declare-fun bs!26108 () Bool)

(declare-fun neg-inst!343 () Bool)

(assert (= bs!26108 neg-inst!343))

(assert (=> bs!26108 m!59046))

(declare-fun bs!26109 () Bool)

(declare-fun s!1355 () Bool)

(assert (= bs!26109 (and neg-inst!343 s!1355)))

(assert (=> bs!26109 (=> true (or (not (member x!21819 (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))))) (bvslt (elem!226 (left!1156 (left!1156 thiss!7690))) x!21819)))))

(assert (=> m!59102 s!1355))

(declare-fun bs!26110 () Bool)

(assert (= bs!26110 (and neg-inst!343 b!54683)))

(assert (=> (and bs!26110 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true inst!353)))

(declare-fun bs!26111 () Bool)

(assert (= bs!26111 (and neg-inst!343 b!54629)))

(assert (=> (and bs!26111 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!343)))

(declare-fun bs!26112 () Bool)

(assert (= bs!26112 (and neg-inst!343 neg-inst!331)))

(assert (=> (and bs!26112 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26113 () Bool)

(assert (= bs!26113 (and neg-inst!343 neg-inst!333)))

(assert (=> (and bs!26113 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!26114 () Bool)

(assert (= bs!26114 (and neg-inst!343 b!54685)))

(assert (=> bs!26114 (= true inst!355)))

(declare-fun bs!26115 () Bool)

(assert (= bs!26115 (and neg-inst!343 b!54650)))

(assert (=> (and bs!26115 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= true inst!349)))

(declare-fun bs!26116 () Bool)

(assert (= bs!26116 (and neg-inst!343 neg-inst!337)))

(assert (=> (and bs!26116 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= true true)))

(declare-fun bs!26117 () Bool)

(assert (= bs!26117 (and neg-inst!343 neg-inst!341)))

(assert (=> (and bs!26117 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26118 () Bool)

(assert (= bs!26118 (and neg-inst!343 neg-inst!335)))

(assert (=> (and bs!26118 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!26119 () Bool)

(assert (= bs!26119 (and neg-inst!343 b!54648)))

(assert (=> (and bs!26119 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true inst!347)))

(declare-fun bs!26120 () Bool)

(assert (= bs!26120 (and neg-inst!343 b!54681)))

(assert (=> (and bs!26120 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true inst!351)))

(declare-fun bs!26121 () Bool)

(assert (= bs!26121 (and neg-inst!343 b!54646)))

(assert (=> (and bs!26121 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true inst!345)))

(declare-fun bs!26122 () Bool)

(assert (= bs!26122 (and neg-inst!343 neg-inst!339)))

(assert (=> (and bs!26122 (= (content!17 (right!1159 (left!1156 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true true)))

(declare-fun d!45068 () Bool)

(declare-fun res!25071 () Bool)

(declare-fun e!28718 () Bool)

(assert (=> d!45068 (=> res!25071 e!28718)))

(assert (=> d!45068 (= res!25071 (not (is-Node!126 (left!1156 (left!1156 thiss!7690)))))))

(assert (=> d!45068 (= (inv!977 (left!1156 (left!1156 thiss!7690))) e!28718)))

(declare-fun e!28717 () Bool)

(assert (=> b!54684 (= e!28718 e!28717)))

(declare-fun res!25070 () Bool)

(assert (=> b!54684 (=> (not res!25070) (not e!28717))))

(assert (=> b!54684 (= res!25070 inst!354)))

(assert (=> b!54685 (= e!28717 inst!355)))

(assert (= (and d!45068 (not res!25071)) b!54684))

(assert (= neg-inst!342 inst!354))

(assert (= (and b!54684 res!25070) b!54685))

(assert (= neg-inst!343 inst!355))

(assert (=> b!54655 d!45068))

(declare-fun b!54686 () Bool)

(assert (=> b!54686 m!59048))

(declare-fun inst!356 () Bool)

(declare-fun x!21820 () (_ BitVec 32))

(assert (=> b!54686 (= inst!356 (=> true (or (not (member x!21820 (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))))) (bvslt x!21820 (elem!226 (right!1159 (left!1156 thiss!7690)))))))))

(declare-fun m!59104 () Bool)

(assert (=> b!54686 m!59104))

(declare-fun bs!26123 () Bool)

(assert (= bs!26123 (and b!54686 neg-inst!340)))

(assert (=> (and bs!26123 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!356 true)))

(declare-fun bs!26124 () Bool)

(assert (= bs!26124 (and b!54686 neg-inst!334)))

(assert (=> (and bs!26124 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!356 true)))

(declare-fun bs!26125 () Bool)

(assert (= bs!26125 (and b!54686 neg-inst!332)))

(assert (=> (and bs!26125 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!356 true)))

(declare-fun bs!26126 () Bool)

(assert (= bs!26126 (and b!54686 b!54684)))

(assert (=> (and bs!26126 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!356 inst!354)))

(declare-fun bs!26127 () Bool)

(assert (= bs!26127 (and b!54686 neg-inst!342)))

(assert (=> (and bs!26127 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!356 true)))

(declare-fun bs!26128 () Bool)

(assert (= bs!26128 (and b!54686 b!54645)))

(assert (=> (and bs!26128 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!356 inst!344)))

(declare-fun bs!26129 () Bool)

(assert (= bs!26129 (and b!54686 neg-inst!336)))

(assert (=> (and bs!26129 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= inst!356 true)))

(declare-fun bs!26130 () Bool)

(assert (= bs!26130 (and b!54686 b!54649)))

(assert (=> (and bs!26130 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= inst!356 inst!348)))

(declare-fun bs!26131 () Bool)

(assert (= bs!26131 (and b!54686 b!54680)))

(assert (=> (and bs!26131 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!356 inst!350)))

(declare-fun bs!26132 () Bool)

(assert (= bs!26132 (and b!54686 neg-inst!330)))

(assert (=> (and bs!26132 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!356 true)))

(declare-fun bs!26133 () Bool)

(assert (= bs!26133 (and b!54686 b!54628)))

(assert (=> (and bs!26133 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!356 inst!342)))

(declare-fun bs!26134 () Bool)

(assert (= bs!26134 (and b!54686 neg-inst!338)))

(assert (=> (and bs!26134 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!356 true)))

(declare-fun bs!26135 () Bool)

(assert (= bs!26135 (and b!54686 b!54682)))

(assert (=> (and bs!26135 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!356 inst!352)))

(declare-fun bs!26136 () Bool)

(assert (= bs!26136 (and b!54686 b!54647)))

(assert (=> (and bs!26136 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!356 inst!346)))

(declare-fun b!54687 () Bool)

(assert (=> b!54687 m!59052))

(declare-fun inst!357 () Bool)

(declare-fun x!21821 () (_ BitVec 32))

(assert (=> b!54687 (= inst!357 (=> true (or (not (member x!21821 (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))))) (bvslt (elem!226 (right!1159 (left!1156 thiss!7690))) x!21821))))))

(declare-fun m!59106 () Bool)

(assert (=> b!54687 m!59106))

(declare-fun bs!26137 () Bool)

(assert (= bs!26137 (and b!54687 b!54683)))

(assert (=> (and bs!26137 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!357 inst!353)))

(declare-fun bs!26138 () Bool)

(assert (= bs!26138 (and b!54687 b!54629)))

(assert (=> (and bs!26138 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!357 inst!343)))

(declare-fun bs!26139 () Bool)

(assert (= bs!26139 (and b!54687 neg-inst!331)))

(assert (=> (and bs!26139 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!357 true)))

(declare-fun bs!26140 () Bool)

(assert (= bs!26140 (and b!54687 neg-inst!333)))

(assert (=> (and bs!26140 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!357 true)))

(declare-fun bs!26141 () Bool)

(assert (= bs!26141 (and b!54687 b!54685)))

(assert (=> (and bs!26141 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!357 inst!355)))

(declare-fun bs!26142 () Bool)

(assert (= bs!26142 (and b!54687 b!54650)))

(assert (=> (and bs!26142 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= inst!357 inst!349)))

(declare-fun bs!26143 () Bool)

(assert (= bs!26143 (and b!54687 neg-inst!337)))

(assert (=> (and bs!26143 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= inst!357 true)))

(declare-fun bs!26144 () Bool)

(assert (= bs!26144 (and b!54687 neg-inst!341)))

(assert (=> (and bs!26144 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!357 true)))

(declare-fun bs!26145 () Bool)

(assert (= bs!26145 (and b!54687 neg-inst!343)))

(assert (=> (and bs!26145 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!357 true)))

(declare-fun bs!26146 () Bool)

(assert (= bs!26146 (and b!54687 neg-inst!335)))

(assert (=> (and bs!26146 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!357 true)))

(declare-fun bs!26147 () Bool)

(assert (= bs!26147 (and b!54687 b!54648)))

(assert (=> (and bs!26147 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= inst!357 inst!347)))

(declare-fun bs!26148 () Bool)

(assert (= bs!26148 (and b!54687 b!54681)))

(assert (=> (and bs!26148 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!357 inst!351)))

(declare-fun bs!26149 () Bool)

(assert (= bs!26149 (and b!54687 b!54646)))

(assert (=> (and bs!26149 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= inst!357 inst!345)))

(declare-fun bs!26150 () Bool)

(assert (= bs!26150 (and b!54687 neg-inst!339)))

(assert (=> (and bs!26150 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!357 true)))

(declare-fun bs!26151 () Bool)

(declare-fun neg-inst!344 () Bool)

(assert (= bs!26151 neg-inst!344))

(assert (=> bs!26151 m!59048))

(declare-fun bs!26152 () Bool)

(declare-fun s!1357 () Bool)

(assert (= bs!26152 (and neg-inst!344 s!1357)))

(assert (=> bs!26152 (=> true (or (not (member x!21820 (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))))) (bvslt x!21820 (elem!226 (right!1159 (left!1156 thiss!7690))))))))

(assert (=> m!59104 s!1357))

(declare-fun bs!26153 () Bool)

(assert (= bs!26153 (and neg-inst!344 neg-inst!340)))

(assert (=> (and bs!26153 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26154 () Bool)

(assert (= bs!26154 (and neg-inst!344 neg-inst!334)))

(assert (=> (and bs!26154 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!26155 () Bool)

(assert (= bs!26155 (and neg-inst!344 neg-inst!332)))

(assert (=> (and bs!26155 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!26156 () Bool)

(assert (= bs!26156 (and neg-inst!344 b!54684)))

(assert (=> (and bs!26156 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true inst!354)))

(declare-fun bs!26157 () Bool)

(assert (= bs!26157 (and neg-inst!344 neg-inst!342)))

(assert (=> (and bs!26157 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true true)))

(declare-fun bs!26158 () Bool)

(assert (= bs!26158 (and neg-inst!344 b!54645)))

(assert (=> (and bs!26158 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true inst!344)))

(declare-fun bs!26159 () Bool)

(assert (= bs!26159 (and neg-inst!344 neg-inst!336)))

(assert (=> (and bs!26159 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= true true)))

(declare-fun bs!26160 () Bool)

(assert (= bs!26160 (and neg-inst!344 b!54649)))

(assert (=> (and bs!26160 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= true inst!348)))

(declare-fun bs!26161 () Bool)

(assert (= bs!26161 (and neg-inst!344 b!54680)))

(assert (=> (and bs!26161 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true inst!350)))

(declare-fun bs!26162 () Bool)

(assert (= bs!26162 (and neg-inst!344 b!54686)))

(assert (=> bs!26162 (= true inst!356)))

(declare-fun bs!26163 () Bool)

(assert (= bs!26163 (and neg-inst!344 neg-inst!330)))

(assert (=> (and bs!26163 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26164 () Bool)

(assert (= bs!26164 (and neg-inst!344 b!54628)))

(assert (=> (and bs!26164 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!342)))

(declare-fun bs!26165 () Bool)

(assert (= bs!26165 (and neg-inst!344 neg-inst!338)))

(assert (=> (and bs!26165 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26166 () Bool)

(assert (= bs!26166 (and neg-inst!344 b!54682)))

(assert (=> (and bs!26166 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true inst!352)))

(declare-fun bs!26167 () Bool)

(assert (= bs!26167 (and neg-inst!344 b!54647)))

(assert (=> (and bs!26167 (= (content!17 (left!1156 (right!1159 (left!1156 thiss!7690)))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true inst!346)))

(declare-fun bs!26168 () Bool)

(declare-fun neg-inst!345 () Bool)

(assert (= bs!26168 neg-inst!345))

(assert (=> bs!26168 m!59052))

(declare-fun bs!26169 () Bool)

(declare-fun s!1359 () Bool)

(assert (= bs!26169 (and neg-inst!345 s!1359)))

(assert (=> bs!26169 (=> true (or (not (member x!21821 (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))))) (bvslt (elem!226 (right!1159 (left!1156 thiss!7690))) x!21821)))))

(assert (=> m!59106 s!1359))

(declare-fun bs!26170 () Bool)

(assert (= bs!26170 (and neg-inst!345 b!54683)))

(assert (=> (and bs!26170 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true inst!353)))

(declare-fun bs!26171 () Bool)

(assert (= bs!26171 (and neg-inst!345 b!54629)))

(assert (=> (and bs!26171 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!343)))

(declare-fun bs!26172 () Bool)

(assert (= bs!26172 (and neg-inst!345 neg-inst!331)))

(assert (=> (and bs!26172 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26173 () Bool)

(assert (= bs!26173 (and neg-inst!345 neg-inst!333)))

(assert (=> (and bs!26173 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!26174 () Bool)

(assert (= bs!26174 (and neg-inst!345 b!54685)))

(assert (=> (and bs!26174 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true inst!355)))

(declare-fun bs!26175 () Bool)

(assert (= bs!26175 (and neg-inst!345 b!54650)))

(assert (=> (and bs!26175 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= true inst!349)))

(declare-fun bs!26176 () Bool)

(assert (= bs!26176 (and neg-inst!345 neg-inst!337)))

(assert (=> (and bs!26176 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 thiss!7690))) (= true true)))

(declare-fun bs!26177 () Bool)

(assert (= bs!26177 (and neg-inst!345 neg-inst!341)))

(assert (=> (and bs!26177 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26178 () Bool)

(assert (= bs!26178 (and neg-inst!345 neg-inst!343)))

(assert (=> (and bs!26178 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true true)))

(declare-fun bs!26179 () Bool)

(assert (= bs!26179 (and neg-inst!345 neg-inst!335)))

(assert (=> (and bs!26179 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!26180 () Bool)

(assert (= bs!26180 (and neg-inst!345 b!54648)))

(assert (=> (and bs!26180 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (right!1159 thiss!7690)))) (= true inst!347)))

(declare-fun bs!26181 () Bool)

(assert (= bs!26181 (and neg-inst!345 b!54681)))

(assert (=> (and bs!26181 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true inst!351)))

(declare-fun bs!26182 () Bool)

(assert (= bs!26182 (and neg-inst!345 b!54687)))

(assert (=> bs!26182 (= true inst!357)))

(declare-fun bs!26183 () Bool)

(assert (= bs!26183 (and neg-inst!345 b!54646)))

(assert (=> (and bs!26183 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 thiss!7690)))) (= true inst!345)))

(declare-fun bs!26184 () Bool)

(assert (= bs!26184 (and neg-inst!345 neg-inst!339)))

(assert (=> (and bs!26184 (= (content!17 (right!1159 (right!1159 (left!1156 thiss!7690)))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 (left!1156 thiss!7690))) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true true)))

(declare-fun d!45070 () Bool)

(declare-fun res!25073 () Bool)

(declare-fun e!28720 () Bool)

(assert (=> d!45070 (=> res!25073 e!28720)))

(assert (=> d!45070 (= res!25073 (not (is-Node!126 (right!1159 (left!1156 thiss!7690)))))))

(assert (=> d!45070 (= (inv!977 (right!1159 (left!1156 thiss!7690))) e!28720)))

(declare-fun e!28719 () Bool)

(assert (=> b!54686 (= e!28720 e!28719)))

(declare-fun res!25072 () Bool)

(assert (=> b!54686 (=> (not res!25072) (not e!28719))))

(assert (=> b!54686 (= res!25072 inst!356)))

(assert (=> b!54687 (= e!28719 inst!357)))

(assert (= (and d!45070 (not res!25073)) b!54686))

(assert (= neg-inst!344 inst!356))

(assert (= (and b!54686 res!25072) b!54687))

(assert (= neg-inst!345 inst!357))

(assert (=> b!54655 d!45070))

(declare-fun b!54688 () Bool)

(declare-fun m!59108 () Bool)

(assert (=> b!54688 m!59108))

(declare-fun inst!358 () Bool)

(declare-fun x!21822 () (_ BitVec 32))

(assert (=> b!54688 (= inst!358 (=> true (or (not (member x!21822 (content!17 (left!1156 res!25058)))) (bvslt x!21822 (elem!226 res!25058)))))))

(declare-fun m!59110 () Bool)

(assert (=> b!54688 m!59110))

(declare-fun bs!26185 () Bool)

(assert (= bs!26185 (and b!54688 neg-inst!340)))

(assert (=> (and bs!26185 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!358 true)))

(declare-fun bs!26186 () Bool)

(assert (= bs!26186 (and b!54688 neg-inst!334)))

(assert (=> (and bs!26186 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (right!1159 thiss!7690)))) (= inst!358 true)))

(declare-fun bs!26187 () Bool)

(assert (= bs!26187 (and b!54688 neg-inst!332)))

(assert (=> (and bs!26187 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (left!1156 thiss!7690)))) (= inst!358 true)))

(declare-fun bs!26188 () Bool)

(assert (= bs!26188 (and b!54688 b!54684)))

(assert (=> (and bs!26188 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!358 inst!354)))

(declare-fun bs!26189 () Bool)

(assert (= bs!26189 (and b!54688 neg-inst!342)))

(assert (=> (and bs!26189 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!358 true)))

(declare-fun bs!26190 () Bool)

(assert (= bs!26190 (and b!54688 b!54645)))

(assert (=> (and bs!26190 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (left!1156 thiss!7690)))) (= inst!358 inst!344)))

(declare-fun bs!26191 () Bool)

(assert (= bs!26191 (and b!54688 neg-inst!336)))

(assert (=> (and bs!26191 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 thiss!7690))) (= (elem!226 res!25058) (elem!226 thiss!7690))) (= inst!358 true)))

(declare-fun bs!26192 () Bool)

(assert (= bs!26192 (and b!54688 b!54649)))

(assert (=> (and bs!26192 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 thiss!7690))) (= (elem!226 res!25058) (elem!226 thiss!7690))) (= inst!358 inst!348)))

(declare-fun bs!26193 () Bool)

(assert (= bs!26193 (and b!54688 b!54680)))

(assert (=> (and bs!26193 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!358 inst!350)))

(declare-fun bs!26194 () Bool)

(assert (= bs!26194 (and b!54688 b!54686)))

(assert (=> (and bs!26194 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= inst!358 inst!356)))

(declare-fun bs!26195 () Bool)

(assert (= bs!26195 (and b!54688 neg-inst!330)))

(assert (=> (and bs!26195 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!358 true)))

(declare-fun bs!26196 () Bool)

(assert (= bs!26196 (and b!54688 b!54628)))

(assert (=> (and bs!26196 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!358 inst!342)))

(declare-fun bs!26197 () Bool)

(assert (= bs!26197 (and b!54688 neg-inst!338)))

(assert (=> (and bs!26197 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!358 true)))

(declare-fun bs!26198 () Bool)

(assert (= bs!26198 (and b!54688 b!54682)))

(assert (=> (and bs!26198 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!358 inst!352)))

(declare-fun bs!26199 () Bool)

(assert (= bs!26199 (and b!54688 b!54647)))

(assert (=> (and bs!26199 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (right!1159 thiss!7690)))) (= inst!358 inst!346)))

(declare-fun bs!26200 () Bool)

(assert (= bs!26200 (and b!54688 neg-inst!344)))

(assert (=> (and bs!26200 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= inst!358 true)))

(declare-fun b!54689 () Bool)

(declare-fun m!59112 () Bool)

(assert (=> b!54689 m!59112))

(declare-fun inst!359 () Bool)

(declare-fun x!21823 () (_ BitVec 32))

(assert (=> b!54689 (= inst!359 (=> true (or (not (member x!21823 (content!17 (right!1159 res!25058)))) (bvslt (elem!226 res!25058) x!21823))))))

(declare-fun m!59114 () Bool)

(assert (=> b!54689 m!59114))

(declare-fun bs!26201 () Bool)

(assert (= bs!26201 (and b!54689 b!54683)))

(assert (=> (and bs!26201 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!359 inst!353)))

(declare-fun bs!26202 () Bool)

(assert (= bs!26202 (and b!54689 neg-inst!345)))

(assert (=> (and bs!26202 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= inst!359 true)))

(declare-fun bs!26203 () Bool)

(assert (= bs!26203 (and b!54689 b!54629)))

(assert (=> (and bs!26203 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!359 inst!343)))

(declare-fun bs!26204 () Bool)

(assert (= bs!26204 (and b!54689 neg-inst!331)))

(assert (=> (and bs!26204 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!359 true)))

(declare-fun bs!26205 () Bool)

(assert (= bs!26205 (and b!54689 neg-inst!333)))

(assert (=> (and bs!26205 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (left!1156 thiss!7690)))) (= inst!359 true)))

(declare-fun bs!26206 () Bool)

(assert (= bs!26206 (and b!54689 b!54685)))

(assert (=> (and bs!26206 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!359 inst!355)))

(declare-fun bs!26207 () Bool)

(assert (= bs!26207 (and b!54689 b!54650)))

(assert (=> (and bs!26207 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 thiss!7690))) (= (elem!226 res!25058) (elem!226 thiss!7690))) (= inst!359 inst!349)))

(declare-fun bs!26208 () Bool)

(assert (= bs!26208 (and b!54689 neg-inst!337)))

(assert (=> (and bs!26208 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 thiss!7690))) (= (elem!226 res!25058) (elem!226 thiss!7690))) (= inst!359 true)))

(declare-fun bs!26209 () Bool)

(assert (= bs!26209 (and b!54689 neg-inst!341)))

(assert (=> (and bs!26209 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!359 true)))

(declare-fun bs!26210 () Bool)

(assert (= bs!26210 (and b!54689 neg-inst!343)))

(assert (=> (and bs!26210 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!359 true)))

(declare-fun bs!26211 () Bool)

(assert (= bs!26211 (and b!54689 neg-inst!335)))

(assert (=> (and bs!26211 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (right!1159 thiss!7690)))) (= inst!359 true)))

(declare-fun bs!26212 () Bool)

(assert (= bs!26212 (and b!54689 b!54648)))

(assert (=> (and bs!26212 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (right!1159 thiss!7690)))) (= inst!359 inst!347)))

(declare-fun bs!26213 () Bool)

(assert (= bs!26213 (and b!54689 b!54681)))

(assert (=> (and bs!26213 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!359 inst!351)))

(declare-fun bs!26214 () Bool)

(assert (= bs!26214 (and b!54689 b!54687)))

(assert (=> (and bs!26214 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= inst!359 inst!357)))

(declare-fun bs!26215 () Bool)

(assert (= bs!26215 (and b!54689 b!54646)))

(assert (=> (and bs!26215 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (left!1156 thiss!7690)))) (= inst!359 inst!345)))

(declare-fun bs!26216 () Bool)

(assert (= bs!26216 (and b!54689 neg-inst!339)))

(assert (=> (and bs!26216 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!359 true)))

(declare-fun bs!26217 () Bool)

(declare-fun neg-inst!346 () Bool)

(assert (= bs!26217 neg-inst!346))

(assert (=> bs!26217 m!59108))

(declare-fun bs!26218 () Bool)

(declare-fun s!1361 () Bool)

(assert (= bs!26218 (and neg-inst!346 s!1361)))

(assert (=> bs!26218 (=> true (or (not (member x!21822 (content!17 (left!1156 res!25058)))) (bvslt x!21822 (elem!226 res!25058))))))

(assert (=> m!59110 s!1361))

(declare-fun bs!26219 () Bool)

(assert (= bs!26219 (and neg-inst!346 neg-inst!340)))

(assert (=> (and bs!26219 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26220 () Bool)

(assert (= bs!26220 (and neg-inst!346 neg-inst!334)))

(assert (=> (and bs!26220 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!26221 () Bool)

(assert (= bs!26221 (and neg-inst!346 neg-inst!332)))

(assert (=> (and bs!26221 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!26222 () Bool)

(assert (= bs!26222 (and neg-inst!346 b!54684)))

(assert (=> (and bs!26222 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true inst!354)))

(declare-fun bs!26223 () Bool)

(assert (= bs!26223 (and neg-inst!346 neg-inst!342)))

(assert (=> (and bs!26223 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true true)))

(declare-fun bs!26224 () Bool)

(assert (= bs!26224 (and neg-inst!346 b!54645)))

(assert (=> (and bs!26224 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (left!1156 thiss!7690)))) (= true inst!344)))

(declare-fun bs!26225 () Bool)

(assert (= bs!26225 (and neg-inst!346 neg-inst!336)))

(assert (=> (and bs!26225 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 thiss!7690))) (= (elem!226 res!25058) (elem!226 thiss!7690))) (= true true)))

(declare-fun bs!26226 () Bool)

(assert (= bs!26226 (and neg-inst!346 b!54649)))

(assert (=> (and bs!26226 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 thiss!7690))) (= (elem!226 res!25058) (elem!226 thiss!7690))) (= true inst!348)))

(declare-fun bs!26227 () Bool)

(assert (= bs!26227 (and neg-inst!346 b!54680)))

(assert (=> (and bs!26227 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true inst!350)))

(declare-fun bs!26228 () Bool)

(assert (= bs!26228 (and neg-inst!346 b!54688)))

(assert (=> bs!26228 (= true inst!358)))

(declare-fun bs!26229 () Bool)

(assert (= bs!26229 (and neg-inst!346 b!54686)))

(assert (=> (and bs!26229 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= true inst!356)))

(declare-fun bs!26230 () Bool)

(assert (= bs!26230 (and neg-inst!346 neg-inst!330)))

(assert (=> (and bs!26230 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26231 () Bool)

(assert (= bs!26231 (and neg-inst!346 b!54628)))

(assert (=> (and bs!26231 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!342)))

(declare-fun bs!26232 () Bool)

(assert (= bs!26232 (and neg-inst!346 neg-inst!338)))

(assert (=> (and bs!26232 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26233 () Bool)

(assert (= bs!26233 (and neg-inst!346 b!54682)))

(assert (=> (and bs!26233 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true inst!352)))

(declare-fun bs!26234 () Bool)

(assert (= bs!26234 (and neg-inst!346 b!54647)))

(assert (=> (and bs!26234 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (right!1159 thiss!7690)))) (= true inst!346)))

(declare-fun bs!26235 () Bool)

(assert (= bs!26235 (and neg-inst!346 neg-inst!344)))

(assert (=> (and bs!26235 (= (content!17 (left!1156 res!25058)) (content!17 (left!1156 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= true true)))

(declare-fun bs!26236 () Bool)

(declare-fun neg-inst!347 () Bool)

(assert (= bs!26236 neg-inst!347))

(assert (=> bs!26236 m!59112))

(declare-fun bs!26237 () Bool)

(declare-fun s!1363 () Bool)

(assert (= bs!26237 (and neg-inst!347 s!1363)))

(assert (=> bs!26237 (=> true (or (not (member x!21823 (content!17 (right!1159 res!25058)))) (bvslt (elem!226 res!25058) x!21823)))))

(assert (=> m!59114 s!1363))

(declare-fun bs!26238 () Bool)

(assert (= bs!26238 (and neg-inst!347 b!54683)))

(assert (=> (and bs!26238 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true inst!353)))

(declare-fun bs!26239 () Bool)

(assert (= bs!26239 (and neg-inst!347 neg-inst!345)))

(assert (=> (and bs!26239 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= true true)))

(declare-fun bs!26240 () Bool)

(assert (= bs!26240 (and neg-inst!347 b!54629)))

(assert (=> (and bs!26240 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!343)))

(declare-fun bs!26241 () Bool)

(assert (= bs!26241 (and neg-inst!347 neg-inst!331)))

(assert (=> (and bs!26241 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26242 () Bool)

(assert (= bs!26242 (and neg-inst!347 neg-inst!333)))

(assert (=> (and bs!26242 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!26243 () Bool)

(assert (= bs!26243 (and neg-inst!347 b!54685)))

(assert (=> (and bs!26243 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true inst!355)))

(declare-fun bs!26244 () Bool)

(assert (= bs!26244 (and neg-inst!347 b!54650)))

(assert (=> (and bs!26244 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 thiss!7690))) (= (elem!226 res!25058) (elem!226 thiss!7690))) (= true inst!349)))

(declare-fun bs!26245 () Bool)

(assert (= bs!26245 (and neg-inst!347 neg-inst!337)))

(assert (=> (and bs!26245 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 thiss!7690))) (= (elem!226 res!25058) (elem!226 thiss!7690))) (= true true)))

(declare-fun bs!26246 () Bool)

(assert (= bs!26246 (and neg-inst!347 neg-inst!341)))

(assert (=> (and bs!26246 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26247 () Bool)

(assert (= bs!26247 (and neg-inst!347 neg-inst!343)))

(assert (=> (and bs!26247 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true true)))

(declare-fun bs!26248 () Bool)

(assert (= bs!26248 (and neg-inst!347 neg-inst!335)))

(assert (=> (and bs!26248 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!26249 () Bool)

(assert (= bs!26249 (and neg-inst!347 b!54648)))

(assert (=> (and bs!26249 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (right!1159 thiss!7690)))) (= true inst!347)))

(declare-fun bs!26250 () Bool)

(assert (= bs!26250 (and neg-inst!347 b!54681)))

(assert (=> (and bs!26250 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true inst!351)))

(declare-fun bs!26251 () Bool)

(assert (= bs!26251 (and neg-inst!347 b!54687)))

(assert (=> (and bs!26251 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= true inst!357)))

(declare-fun bs!26252 () Bool)

(assert (= bs!26252 (and neg-inst!347 b!54646)))

(assert (=> (and bs!26252 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 res!25058) (elem!226 (left!1156 thiss!7690)))) (= true inst!345)))

(declare-fun bs!26253 () Bool)

(assert (= bs!26253 (and neg-inst!347 b!54689)))

(assert (=> bs!26253 (= true inst!359)))

(declare-fun bs!26254 () Bool)

(assert (= bs!26254 (and neg-inst!347 neg-inst!339)))

(assert (=> (and bs!26254 (= (content!17 (right!1159 res!25058)) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 res!25058) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true true)))

(declare-fun d!45072 () Bool)

(declare-fun res!25075 () Bool)

(declare-fun e!28722 () Bool)

(assert (=> d!45072 (=> res!25075 e!28722)))

(assert (=> d!45072 (= res!25075 (not (is-Node!126 res!25058)))))

(assert (=> d!45072 (= (inv!977 res!25058) e!28722)))

(declare-fun e!28721 () Bool)

(assert (=> b!54688 (= e!28722 e!28721)))

(declare-fun res!25074 () Bool)

(assert (=> b!54688 (=> (not res!25074) (not e!28721))))

(assert (=> b!54688 (= res!25074 inst!358)))

(assert (=> b!54689 (= e!28721 inst!359)))

(assert (= (and d!45072 (not res!25075)) b!54688))

(assert (= neg-inst!346 inst!358))

(assert (= (and b!54688 res!25074) b!54689))

(assert (= neg-inst!347 inst!359))

(assert (=> b!54642 d!45072))

(assert (=> b!54629 d!45058))

(declare-fun d!45074 () Bool)

(declare-fun c!11866 () Bool)

(assert (=> d!45074 (= c!11866 (is-Empty!165 lt!9613))))

(declare-fun e!28723 () (Set (_ BitVec 32)))

(assert (=> d!45074 (= (content!17 lt!9613) e!28723)))

(declare-fun b!54690 () Bool)

(assert (=> b!54690 (= e!28723 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54691 () Bool)

(assert (=> b!54691 (= e!28723 (union (union (content!17 (left!1156 lt!9613)) (insert (elem!226 lt!9613) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1159 lt!9613))))))

(assert (= (and d!45074 c!11866) b!54690))

(assert (= (and d!45074 (not c!11866)) b!54691))

(declare-fun m!59116 () Bool)

(assert (=> b!54691 m!59116))

(declare-fun m!59118 () Bool)

(assert (=> b!54691 m!59118))

(declare-fun m!59120 () Bool)

(assert (=> b!54691 m!59120))

(assert (=> d!45040 d!45074))

(assert (=> d!45040 d!45056))

(declare-fun d!45076 () Bool)

(declare-fun c!11867 () Bool)

(assert (=> d!45076 (= c!11867 (is-Empty!165 (right!1159 thiss!7690)))))

(declare-fun e!28724 () (Set (_ BitVec 32)))

(assert (=> d!45076 (= (content!17 (right!1159 thiss!7690)) e!28724)))

(declare-fun b!54692 () Bool)

(assert (=> b!54692 (= e!28724 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54693 () Bool)

(assert (=> b!54693 (= e!28724 (union (union (content!17 (left!1156 (right!1159 thiss!7690))) (insert (elem!226 (right!1159 thiss!7690)) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1159 (right!1159 thiss!7690)))))))

(assert (= (and d!45076 c!11867) b!54692))

(assert (= (and d!45076 (not c!11867)) b!54693))

(assert (=> b!54693 m!59020))

(declare-fun m!59122 () Bool)

(assert (=> b!54693 m!59122))

(assert (=> b!54693 m!59024))

(assert (=> neg-inst!337 d!45076))

(assert (=> neg-inst!335 d!45052))

(assert (=> b!54650 d!45076))

(assert (=> b!54645 d!45048))

(declare-fun b!54694 () Bool)

(declare-fun m!59124 () Bool)

(assert (=> b!54694 m!59124))

(declare-fun inst!360 () Bool)

(declare-fun x!21824 () (_ BitVec 32))

(assert (=> b!54694 (= inst!360 (=> true (or (not (member x!21824 (content!17 (left!1156 (left!1156 res!25058))))) (bvslt x!21824 (elem!226 (left!1156 res!25058))))))))

(declare-fun m!59126 () Bool)

(assert (=> b!54694 m!59126))

(declare-fun bs!26255 () Bool)

(assert (= bs!26255 (and b!54694 neg-inst!340)))

(assert (=> (and bs!26255 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!360 true)))

(declare-fun bs!26256 () Bool)

(assert (= bs!26256 (and b!54694 neg-inst!334)))

(assert (=> (and bs!26256 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= inst!360 true)))

(declare-fun bs!26257 () Bool)

(assert (= bs!26257 (and b!54694 neg-inst!332)))

(assert (=> (and bs!26257 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= inst!360 true)))

(declare-fun bs!26258 () Bool)

(assert (= bs!26258 (and b!54694 b!54684)))

(assert (=> (and bs!26258 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!360 inst!354)))

(declare-fun bs!26259 () Bool)

(assert (= bs!26259 (and b!54694 neg-inst!342)))

(assert (=> (and bs!26259 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!360 true)))

(declare-fun bs!26260 () Bool)

(assert (= bs!26260 (and b!54694 b!54645)))

(assert (=> (and bs!26260 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= inst!360 inst!344)))

(declare-fun bs!26261 () Bool)

(assert (= bs!26261 (and b!54694 neg-inst!336)))

(assert (=> (and bs!26261 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (left!1156 res!25058)) (elem!226 thiss!7690))) (= inst!360 true)))

(declare-fun bs!26262 () Bool)

(assert (= bs!26262 (and b!54694 b!54649)))

(assert (=> (and bs!26262 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (left!1156 res!25058)) (elem!226 thiss!7690))) (= inst!360 inst!348)))

(declare-fun bs!26263 () Bool)

(assert (= bs!26263 (and b!54694 b!54680)))

(assert (=> (and bs!26263 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!360 inst!350)))

(declare-fun bs!26264 () Bool)

(assert (= bs!26264 (and b!54694 b!54688)))

(assert (=> (and bs!26264 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 res!25058))) (= (elem!226 (left!1156 res!25058)) (elem!226 res!25058))) (= inst!360 inst!358)))

(declare-fun bs!26265 () Bool)

(assert (= bs!26265 (and b!54694 neg-inst!346)))

(assert (=> (and bs!26265 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 res!25058))) (= (elem!226 (left!1156 res!25058)) (elem!226 res!25058))) (= inst!360 true)))

(declare-fun bs!26266 () Bool)

(assert (= bs!26266 (and b!54694 b!54686)))

(assert (=> (and bs!26266 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= inst!360 inst!356)))

(declare-fun bs!26267 () Bool)

(assert (= bs!26267 (and b!54694 neg-inst!330)))

(assert (=> (and bs!26267 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!360 true)))

(declare-fun bs!26268 () Bool)

(assert (= bs!26268 (and b!54694 b!54628)))

(assert (=> (and bs!26268 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!360 inst!342)))

(declare-fun bs!26269 () Bool)

(assert (= bs!26269 (and b!54694 neg-inst!338)))

(assert (=> (and bs!26269 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!360 true)))

(declare-fun bs!26270 () Bool)

(assert (= bs!26270 (and b!54694 b!54682)))

(assert (=> (and bs!26270 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!360 inst!352)))

(declare-fun bs!26271 () Bool)

(assert (= bs!26271 (and b!54694 b!54647)))

(assert (=> (and bs!26271 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= inst!360 inst!346)))

(declare-fun bs!26272 () Bool)

(assert (= bs!26272 (and b!54694 neg-inst!344)))

(assert (=> (and bs!26272 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= inst!360 true)))

(declare-fun b!54695 () Bool)

(declare-fun m!59128 () Bool)

(assert (=> b!54695 m!59128))

(declare-fun inst!361 () Bool)

(declare-fun x!21825 () (_ BitVec 32))

(assert (=> b!54695 (= inst!361 (=> true (or (not (member x!21825 (content!17 (right!1159 (left!1156 res!25058))))) (bvslt (elem!226 (left!1156 res!25058)) x!21825))))))

(declare-fun m!59130 () Bool)

(assert (=> b!54695 m!59130))

(declare-fun bs!26273 () Bool)

(assert (= bs!26273 (and b!54695 b!54683)))

(assert (=> (and bs!26273 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!361 inst!353)))

(declare-fun bs!26274 () Bool)

(assert (= bs!26274 (and b!54695 neg-inst!345)))

(assert (=> (and bs!26274 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= inst!361 true)))

(declare-fun bs!26275 () Bool)

(assert (= bs!26275 (and b!54695 b!54629)))

(assert (=> (and bs!26275 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!361 inst!343)))

(declare-fun bs!26276 () Bool)

(assert (= bs!26276 (and b!54695 neg-inst!331)))

(assert (=> (and bs!26276 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!361 true)))

(declare-fun bs!26277 () Bool)

(assert (= bs!26277 (and b!54695 neg-inst!347)))

(assert (=> (and bs!26277 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 res!25058))) (= (elem!226 (left!1156 res!25058)) (elem!226 res!25058))) (= inst!361 true)))

(declare-fun bs!26278 () Bool)

(assert (= bs!26278 (and b!54695 neg-inst!333)))

(assert (=> (and bs!26278 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= inst!361 true)))

(declare-fun bs!26279 () Bool)

(assert (= bs!26279 (and b!54695 b!54685)))

(assert (=> (and bs!26279 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!361 inst!355)))

(declare-fun bs!26280 () Bool)

(assert (= bs!26280 (and b!54695 b!54650)))

(assert (=> (and bs!26280 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (left!1156 res!25058)) (elem!226 thiss!7690))) (= inst!361 inst!349)))

(declare-fun bs!26281 () Bool)

(assert (= bs!26281 (and b!54695 neg-inst!337)))

(assert (=> (and bs!26281 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (left!1156 res!25058)) (elem!226 thiss!7690))) (= inst!361 true)))

(declare-fun bs!26282 () Bool)

(assert (= bs!26282 (and b!54695 neg-inst!341)))

(assert (=> (and bs!26282 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!361 true)))

(declare-fun bs!26283 () Bool)

(assert (= bs!26283 (and b!54695 neg-inst!343)))

(assert (=> (and bs!26283 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!361 true)))

(declare-fun bs!26284 () Bool)

(assert (= bs!26284 (and b!54695 neg-inst!335)))

(assert (=> (and bs!26284 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= inst!361 true)))

(declare-fun bs!26285 () Bool)

(assert (= bs!26285 (and b!54695 b!54648)))

(assert (=> (and bs!26285 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= inst!361 inst!347)))

(declare-fun bs!26286 () Bool)

(assert (= bs!26286 (and b!54695 b!54681)))

(assert (=> (and bs!26286 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!361 inst!351)))

(declare-fun bs!26287 () Bool)

(assert (= bs!26287 (and b!54695 b!54687)))

(assert (=> (and bs!26287 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= inst!361 inst!357)))

(declare-fun bs!26288 () Bool)

(assert (= bs!26288 (and b!54695 b!54646)))

(assert (=> (and bs!26288 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= inst!361 inst!345)))

(declare-fun bs!26289 () Bool)

(assert (= bs!26289 (and b!54695 b!54689)))

(assert (=> (and bs!26289 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 res!25058))) (= (elem!226 (left!1156 res!25058)) (elem!226 res!25058))) (= inst!361 inst!359)))

(declare-fun bs!26290 () Bool)

(assert (= bs!26290 (and b!54695 neg-inst!339)))

(assert (=> (and bs!26290 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!361 true)))

(declare-fun bs!26291 () Bool)

(declare-fun neg-inst!348 () Bool)

(assert (= bs!26291 neg-inst!348))

(assert (=> bs!26291 m!59124))

(declare-fun bs!26292 () Bool)

(declare-fun s!1365 () Bool)

(assert (= bs!26292 (and neg-inst!348 s!1365)))

(assert (=> bs!26292 (=> true (or (not (member x!21824 (content!17 (left!1156 (left!1156 res!25058))))) (bvslt x!21824 (elem!226 (left!1156 res!25058)))))))

(assert (=> m!59126 s!1365))

(declare-fun bs!26293 () Bool)

(assert (= bs!26293 (and neg-inst!348 neg-inst!340)))

(assert (=> (and bs!26293 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26294 () Bool)

(assert (= bs!26294 (and neg-inst!348 neg-inst!334)))

(assert (=> (and bs!26294 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!26295 () Bool)

(assert (= bs!26295 (and neg-inst!348 neg-inst!332)))

(assert (=> (and bs!26295 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!26296 () Bool)

(assert (= bs!26296 (and neg-inst!348 b!54684)))

(assert (=> (and bs!26296 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true inst!354)))

(declare-fun bs!26297 () Bool)

(assert (= bs!26297 (and neg-inst!348 neg-inst!342)))

(assert (=> (and bs!26297 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true true)))

(declare-fun bs!26298 () Bool)

(assert (= bs!26298 (and neg-inst!348 b!54645)))

(assert (=> (and bs!26298 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= true inst!344)))

(declare-fun bs!26299 () Bool)

(assert (= bs!26299 (and neg-inst!348 neg-inst!336)))

(assert (=> (and bs!26299 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (left!1156 res!25058)) (elem!226 thiss!7690))) (= true true)))

(declare-fun bs!26300 () Bool)

(assert (= bs!26300 (and neg-inst!348 b!54649)))

(assert (=> (and bs!26300 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (left!1156 res!25058)) (elem!226 thiss!7690))) (= true inst!348)))

(declare-fun bs!26301 () Bool)

(assert (= bs!26301 (and neg-inst!348 b!54680)))

(assert (=> (and bs!26301 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true inst!350)))

(declare-fun bs!26302 () Bool)

(assert (= bs!26302 (and neg-inst!348 b!54688)))

(assert (=> (and bs!26302 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 res!25058))) (= (elem!226 (left!1156 res!25058)) (elem!226 res!25058))) (= true inst!358)))

(declare-fun bs!26303 () Bool)

(assert (= bs!26303 (and neg-inst!348 neg-inst!346)))

(assert (=> (and bs!26303 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 res!25058))) (= (elem!226 (left!1156 res!25058)) (elem!226 res!25058))) (= true true)))

(declare-fun bs!26304 () Bool)

(assert (= bs!26304 (and neg-inst!348 b!54686)))

(assert (=> (and bs!26304 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= true inst!356)))

(declare-fun bs!26305 () Bool)

(assert (= bs!26305 (and neg-inst!348 neg-inst!330)))

(assert (=> (and bs!26305 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26306 () Bool)

(assert (= bs!26306 (and neg-inst!348 b!54628)))

(assert (=> (and bs!26306 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!342)))

(declare-fun bs!26307 () Bool)

(assert (= bs!26307 (and neg-inst!348 neg-inst!338)))

(assert (=> (and bs!26307 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26308 () Bool)

(assert (= bs!26308 (and neg-inst!348 b!54682)))

(assert (=> (and bs!26308 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true inst!352)))

(declare-fun bs!26309 () Bool)

(assert (= bs!26309 (and neg-inst!348 b!54647)))

(assert (=> (and bs!26309 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= true inst!346)))

(declare-fun bs!26310 () Bool)

(assert (= bs!26310 (and neg-inst!348 b!54694)))

(assert (=> bs!26310 (= true inst!360)))

(declare-fun bs!26311 () Bool)

(assert (= bs!26311 (and neg-inst!348 neg-inst!344)))

(assert (=> (and bs!26311 (= (content!17 (left!1156 (left!1156 res!25058))) (content!17 (left!1156 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= true true)))

(declare-fun bs!26312 () Bool)

(declare-fun neg-inst!349 () Bool)

(assert (= bs!26312 neg-inst!349))

(assert (=> bs!26312 m!59128))

(declare-fun bs!26313 () Bool)

(declare-fun s!1367 () Bool)

(assert (= bs!26313 (and neg-inst!349 s!1367)))

(assert (=> bs!26313 (=> true (or (not (member x!21825 (content!17 (right!1159 (left!1156 res!25058))))) (bvslt (elem!226 (left!1156 res!25058)) x!21825)))))

(assert (=> m!59130 s!1367))

(declare-fun bs!26314 () Bool)

(assert (= bs!26314 (and neg-inst!349 b!54683)))

(assert (=> (and bs!26314 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true inst!353)))

(declare-fun bs!26315 () Bool)

(assert (= bs!26315 (and neg-inst!349 neg-inst!345)))

(assert (=> (and bs!26315 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= true true)))

(declare-fun bs!26316 () Bool)

(assert (= bs!26316 (and neg-inst!349 b!54629)))

(assert (=> (and bs!26316 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!343)))

(declare-fun bs!26317 () Bool)

(assert (= bs!26317 (and neg-inst!349 neg-inst!331)))

(assert (=> (and bs!26317 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26318 () Bool)

(assert (= bs!26318 (and neg-inst!349 b!54695)))

(assert (=> bs!26318 (= true inst!361)))

(declare-fun bs!26319 () Bool)

(assert (= bs!26319 (and neg-inst!349 neg-inst!347)))

(assert (=> (and bs!26319 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 res!25058))) (= (elem!226 (left!1156 res!25058)) (elem!226 res!25058))) (= true true)))

(declare-fun bs!26320 () Bool)

(assert (= bs!26320 (and neg-inst!349 neg-inst!333)))

(assert (=> (and bs!26320 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!26321 () Bool)

(assert (= bs!26321 (and neg-inst!349 b!54685)))

(assert (=> (and bs!26321 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true inst!355)))

(declare-fun bs!26322 () Bool)

(assert (= bs!26322 (and neg-inst!349 b!54650)))

(assert (=> (and bs!26322 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (left!1156 res!25058)) (elem!226 thiss!7690))) (= true inst!349)))

(declare-fun bs!26323 () Bool)

(assert (= bs!26323 (and neg-inst!349 neg-inst!337)))

(assert (=> (and bs!26323 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (left!1156 res!25058)) (elem!226 thiss!7690))) (= true true)))

(declare-fun bs!26324 () Bool)

(assert (= bs!26324 (and neg-inst!349 neg-inst!341)))

(assert (=> (and bs!26324 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26325 () Bool)

(assert (= bs!26325 (and neg-inst!349 neg-inst!343)))

(assert (=> (and bs!26325 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true true)))

(declare-fun bs!26326 () Bool)

(assert (= bs!26326 (and neg-inst!349 neg-inst!335)))

(assert (=> (and bs!26326 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!26327 () Bool)

(assert (= bs!26327 (and neg-inst!349 b!54648)))

(assert (=> (and bs!26327 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= true inst!347)))

(declare-fun bs!26328 () Bool)

(assert (= bs!26328 (and neg-inst!349 b!54681)))

(assert (=> (and bs!26328 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true inst!351)))

(declare-fun bs!26329 () Bool)

(assert (= bs!26329 (and neg-inst!349 b!54687)))

(assert (=> (and bs!26329 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= true inst!357)))

(declare-fun bs!26330 () Bool)

(assert (= bs!26330 (and neg-inst!349 b!54646)))

(assert (=> (and bs!26330 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= true inst!345)))

(declare-fun bs!26331 () Bool)

(assert (= bs!26331 (and neg-inst!349 b!54689)))

(assert (=> (and bs!26331 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 res!25058))) (= (elem!226 (left!1156 res!25058)) (elem!226 res!25058))) (= true inst!359)))

(declare-fun bs!26332 () Bool)

(assert (= bs!26332 (and neg-inst!349 neg-inst!339)))

(assert (=> (and bs!26332 (= (content!17 (right!1159 (left!1156 res!25058))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (left!1156 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true true)))

(declare-fun d!45078 () Bool)

(declare-fun res!25077 () Bool)

(declare-fun e!28726 () Bool)

(assert (=> d!45078 (=> res!25077 e!28726)))

(assert (=> d!45078 (= res!25077 (not (is-Node!126 (left!1156 res!25058))))))

(assert (=> d!45078 (= (inv!977 (left!1156 res!25058)) e!28726)))

(declare-fun e!28725 () Bool)

(assert (=> b!54694 (= e!28726 e!28725)))

(declare-fun res!25076 () Bool)

(assert (=> b!54694 (=> (not res!25076) (not e!28725))))

(assert (=> b!54694 (= res!25076 inst!360)))

(assert (=> b!54695 (= e!28725 inst!361)))

(assert (= (and d!45078 (not res!25077)) b!54694))

(assert (= neg-inst!348 inst!360))

(assert (= (and b!54694 res!25076) b!54695))

(assert (= neg-inst!349 inst!361))

(assert (=> b!54644 d!45078))

(declare-fun b!54696 () Bool)

(declare-fun m!59132 () Bool)

(assert (=> b!54696 m!59132))

(declare-fun inst!362 () Bool)

(declare-fun x!21826 () (_ BitVec 32))

(assert (=> b!54696 (= inst!362 (=> true (or (not (member x!21826 (content!17 (left!1156 (right!1159 res!25058))))) (bvslt x!21826 (elem!226 (right!1159 res!25058))))))))

(declare-fun m!59134 () Bool)

(assert (=> b!54696 m!59134))

(declare-fun bs!26333 () Bool)

(assert (= bs!26333 (and b!54696 neg-inst!340)))

(assert (=> (and bs!26333 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!362 true)))

(declare-fun bs!26334 () Bool)

(assert (= bs!26334 (and b!54696 neg-inst!334)))

(assert (=> (and bs!26334 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= inst!362 true)))

(declare-fun bs!26335 () Bool)

(assert (= bs!26335 (and b!54696 neg-inst!332)))

(assert (=> (and bs!26335 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= inst!362 true)))

(declare-fun bs!26336 () Bool)

(assert (= bs!26336 (and b!54696 b!54684)))

(assert (=> (and bs!26336 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!362 inst!354)))

(declare-fun bs!26337 () Bool)

(assert (= bs!26337 (and b!54696 neg-inst!342)))

(assert (=> (and bs!26337 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!362 true)))

(declare-fun bs!26338 () Bool)

(assert (= bs!26338 (and b!54696 neg-inst!348)))

(assert (=> (and bs!26338 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 res!25058)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 res!25058)))) (= inst!362 true)))

(declare-fun bs!26339 () Bool)

(assert (= bs!26339 (and b!54696 b!54645)))

(assert (=> (and bs!26339 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= inst!362 inst!344)))

(declare-fun bs!26340 () Bool)

(assert (= bs!26340 (and b!54696 neg-inst!336)))

(assert (=> (and bs!26340 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (right!1159 res!25058)) (elem!226 thiss!7690))) (= inst!362 true)))

(declare-fun bs!26341 () Bool)

(assert (= bs!26341 (and b!54696 b!54649)))

(assert (=> (and bs!26341 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (right!1159 res!25058)) (elem!226 thiss!7690))) (= inst!362 inst!348)))

(declare-fun bs!26342 () Bool)

(assert (= bs!26342 (and b!54696 b!54680)))

(assert (=> (and bs!26342 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!362 inst!350)))

(declare-fun bs!26343 () Bool)

(assert (= bs!26343 (and b!54696 b!54688)))

(assert (=> (and bs!26343 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 res!25058))) (= (elem!226 (right!1159 res!25058)) (elem!226 res!25058))) (= inst!362 inst!358)))

(declare-fun bs!26344 () Bool)

(assert (= bs!26344 (and b!54696 neg-inst!346)))

(assert (=> (and bs!26344 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 res!25058))) (= (elem!226 (right!1159 res!25058)) (elem!226 res!25058))) (= inst!362 true)))

(declare-fun bs!26345 () Bool)

(assert (= bs!26345 (and b!54696 b!54686)))

(assert (=> (and bs!26345 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= inst!362 inst!356)))

(declare-fun bs!26346 () Bool)

(assert (= bs!26346 (and b!54696 neg-inst!330)))

(assert (=> (and bs!26346 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!362 true)))

(declare-fun bs!26347 () Bool)

(assert (= bs!26347 (and b!54696 b!54628)))

(assert (=> (and bs!26347 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!362 inst!342)))

(declare-fun bs!26348 () Bool)

(assert (= bs!26348 (and b!54696 neg-inst!338)))

(assert (=> (and bs!26348 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!362 true)))

(declare-fun bs!26349 () Bool)

(assert (= bs!26349 (and b!54696 b!54682)))

(assert (=> (and bs!26349 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!362 inst!352)))

(declare-fun bs!26350 () Bool)

(assert (= bs!26350 (and b!54696 b!54647)))

(assert (=> (and bs!26350 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= inst!362 inst!346)))

(declare-fun bs!26351 () Bool)

(assert (= bs!26351 (and b!54696 b!54694)))

(assert (=> (and bs!26351 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 res!25058)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 res!25058)))) (= inst!362 inst!360)))

(declare-fun bs!26352 () Bool)

(assert (= bs!26352 (and b!54696 neg-inst!344)))

(assert (=> (and bs!26352 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= inst!362 true)))

(declare-fun b!54697 () Bool)

(declare-fun m!59136 () Bool)

(assert (=> b!54697 m!59136))

(declare-fun inst!363 () Bool)

(declare-fun x!21827 () (_ BitVec 32))

(assert (=> b!54697 (= inst!363 (=> true (or (not (member x!21827 (content!17 (right!1159 (right!1159 res!25058))))) (bvslt (elem!226 (right!1159 res!25058)) x!21827))))))

(declare-fun m!59138 () Bool)

(assert (=> b!54697 m!59138))

(declare-fun bs!26353 () Bool)

(assert (= bs!26353 (and b!54697 b!54683)))

(assert (=> (and bs!26353 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!363 inst!353)))

(declare-fun bs!26354 () Bool)

(assert (= bs!26354 (and b!54697 neg-inst!345)))

(assert (=> (and bs!26354 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= inst!363 true)))

(declare-fun bs!26355 () Bool)

(assert (= bs!26355 (and b!54697 b!54629)))

(assert (=> (and bs!26355 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!363 inst!343)))

(declare-fun bs!26356 () Bool)

(assert (= bs!26356 (and b!54697 neg-inst!331)))

(assert (=> (and bs!26356 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= inst!363 true)))

(declare-fun bs!26357 () Bool)

(assert (= bs!26357 (and b!54697 b!54695)))

(assert (=> (and bs!26357 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 res!25058)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 res!25058)))) (= inst!363 inst!361)))

(declare-fun bs!26358 () Bool)

(assert (= bs!26358 (and b!54697 neg-inst!347)))

(assert (=> (and bs!26358 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 res!25058))) (= (elem!226 (right!1159 res!25058)) (elem!226 res!25058))) (= inst!363 true)))

(declare-fun bs!26359 () Bool)

(assert (= bs!26359 (and b!54697 neg-inst!333)))

(assert (=> (and bs!26359 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= inst!363 true)))

(declare-fun bs!26360 () Bool)

(assert (= bs!26360 (and b!54697 b!54685)))

(assert (=> (and bs!26360 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!363 inst!355)))

(declare-fun bs!26361 () Bool)

(assert (= bs!26361 (and b!54697 b!54650)))

(assert (=> (and bs!26361 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (right!1159 res!25058)) (elem!226 thiss!7690))) (= inst!363 inst!349)))

(declare-fun bs!26362 () Bool)

(assert (= bs!26362 (and b!54697 neg-inst!337)))

(assert (=> (and bs!26362 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (right!1159 res!25058)) (elem!226 thiss!7690))) (= inst!363 true)))

(declare-fun bs!26363 () Bool)

(assert (= bs!26363 (and b!54697 neg-inst!341)))

(assert (=> (and bs!26363 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= inst!363 true)))

(declare-fun bs!26364 () Bool)

(assert (= bs!26364 (and b!54697 neg-inst!343)))

(assert (=> (and bs!26364 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= inst!363 true)))

(declare-fun bs!26365 () Bool)

(assert (= bs!26365 (and b!54697 neg-inst!335)))

(assert (=> (and bs!26365 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= inst!363 true)))

(declare-fun bs!26366 () Bool)

(assert (= bs!26366 (and b!54697 b!54648)))

(assert (=> (and bs!26366 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= inst!363 inst!347)))

(declare-fun bs!26367 () Bool)

(assert (= bs!26367 (and b!54697 b!54681)))

(assert (=> (and bs!26367 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!363 inst!351)))

(declare-fun bs!26368 () Bool)

(assert (= bs!26368 (and b!54697 neg-inst!349)))

(assert (=> (and bs!26368 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 res!25058)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 res!25058)))) (= inst!363 true)))

(declare-fun bs!26369 () Bool)

(assert (= bs!26369 (and b!54697 b!54687)))

(assert (=> (and bs!26369 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= inst!363 inst!357)))

(declare-fun bs!26370 () Bool)

(assert (= bs!26370 (and b!54697 b!54646)))

(assert (=> (and bs!26370 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= inst!363 inst!345)))

(declare-fun bs!26371 () Bool)

(assert (= bs!26371 (and b!54697 b!54689)))

(assert (=> (and bs!26371 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 res!25058))) (= (elem!226 (right!1159 res!25058)) (elem!226 res!25058))) (= inst!363 inst!359)))

(declare-fun bs!26372 () Bool)

(assert (= bs!26372 (and b!54697 neg-inst!339)))

(assert (=> (and bs!26372 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= inst!363 true)))

(declare-fun bs!26373 () Bool)

(declare-fun neg-inst!350 () Bool)

(assert (= bs!26373 neg-inst!350))

(assert (=> bs!26373 m!59132))

(declare-fun bs!26374 () Bool)

(declare-fun s!1369 () Bool)

(assert (= bs!26374 (and neg-inst!350 s!1369)))

(assert (=> bs!26374 (=> true (or (not (member x!21826 (content!17 (left!1156 (right!1159 res!25058))))) (bvslt x!21826 (elem!226 (right!1159 res!25058)))))))

(assert (=> m!59134 s!1369))

(declare-fun bs!26375 () Bool)

(assert (= bs!26375 (and neg-inst!350 neg-inst!340)))

(assert (=> (and bs!26375 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26376 () Bool)

(assert (= bs!26376 (and neg-inst!350 neg-inst!334)))

(assert (=> (and bs!26376 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!26377 () Bool)

(assert (= bs!26377 (and neg-inst!350 neg-inst!332)))

(assert (=> (and bs!26377 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!26378 () Bool)

(assert (= bs!26378 (and neg-inst!350 b!54684)))

(assert (=> (and bs!26378 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true inst!354)))

(declare-fun bs!26379 () Bool)

(assert (= bs!26379 (and neg-inst!350 neg-inst!342)))

(assert (=> (and bs!26379 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true true)))

(declare-fun bs!26380 () Bool)

(assert (= bs!26380 (and neg-inst!350 neg-inst!348)))

(assert (=> (and bs!26380 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 res!25058)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 res!25058)))) (= true true)))

(declare-fun bs!26381 () Bool)

(assert (= bs!26381 (and neg-inst!350 b!54645)))

(assert (=> (and bs!26381 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= true inst!344)))

(declare-fun bs!26382 () Bool)

(assert (= bs!26382 (and neg-inst!350 neg-inst!336)))

(assert (=> (and bs!26382 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (right!1159 res!25058)) (elem!226 thiss!7690))) (= true true)))

(declare-fun bs!26383 () Bool)

(assert (= bs!26383 (and neg-inst!350 b!54696)))

(assert (=> bs!26383 (= true inst!362)))

(declare-fun bs!26384 () Bool)

(assert (= bs!26384 (and neg-inst!350 b!54649)))

(assert (=> (and bs!26384 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 thiss!7690))) (= (elem!226 (right!1159 res!25058)) (elem!226 thiss!7690))) (= true inst!348)))

(declare-fun bs!26385 () Bool)

(assert (= bs!26385 (and neg-inst!350 b!54680)))

(assert (=> (and bs!26385 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true inst!350)))

(declare-fun bs!26386 () Bool)

(assert (= bs!26386 (and neg-inst!350 b!54688)))

(assert (=> (and bs!26386 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 res!25058))) (= (elem!226 (right!1159 res!25058)) (elem!226 res!25058))) (= true inst!358)))

(declare-fun bs!26387 () Bool)

(assert (= bs!26387 (and neg-inst!350 neg-inst!346)))

(assert (=> (and bs!26387 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 res!25058))) (= (elem!226 (right!1159 res!25058)) (elem!226 res!25058))) (= true true)))

(declare-fun bs!26388 () Bool)

(assert (= bs!26388 (and neg-inst!350 b!54686)))

(assert (=> (and bs!26388 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= true inst!356)))

(declare-fun bs!26389 () Bool)

(assert (= bs!26389 (and neg-inst!350 neg-inst!330)))

(assert (=> (and bs!26389 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26390 () Bool)

(assert (= bs!26390 (and neg-inst!350 b!54628)))

(assert (=> (and bs!26390 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!342)))

(declare-fun bs!26391 () Bool)

(assert (= bs!26391 (and neg-inst!350 neg-inst!338)))

(assert (=> (and bs!26391 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26392 () Bool)

(assert (= bs!26392 (and neg-inst!350 b!54682)))

(assert (=> (and bs!26392 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true inst!352)))

(declare-fun bs!26393 () Bool)

(assert (= bs!26393 (and neg-inst!350 b!54647)))

(assert (=> (and bs!26393 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= true inst!346)))

(declare-fun bs!26394 () Bool)

(assert (= bs!26394 (and neg-inst!350 b!54694)))

(assert (=> (and bs!26394 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (left!1156 res!25058)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 res!25058)))) (= true inst!360)))

(declare-fun bs!26395 () Bool)

(assert (= bs!26395 (and neg-inst!350 neg-inst!344)))

(assert (=> (and bs!26395 (= (content!17 (left!1156 (right!1159 res!25058))) (content!17 (left!1156 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= true true)))

(declare-fun bs!26396 () Bool)

(declare-fun neg-inst!351 () Bool)

(assert (= bs!26396 neg-inst!351))

(assert (=> bs!26396 m!59136))

(declare-fun bs!26397 () Bool)

(declare-fun s!1371 () Bool)

(assert (= bs!26397 (and neg-inst!351 s!1371)))

(assert (=> bs!26397 (=> true (or (not (member x!21827 (content!17 (right!1159 (right!1159 res!25058))))) (bvslt (elem!226 (right!1159 res!25058)) x!21827)))))

(assert (=> m!59138 s!1371))

(declare-fun bs!26398 () Bool)

(assert (= bs!26398 (and neg-inst!351 b!54683)))

(assert (=> (and bs!26398 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true inst!353)))

(declare-fun bs!26399 () Bool)

(assert (= bs!26399 (and neg-inst!351 neg-inst!345)))

(assert (=> (and bs!26399 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= true true)))

(declare-fun bs!26400 () Bool)

(assert (= bs!26400 (and neg-inst!351 b!54629)))

(assert (=> (and bs!26400 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true inst!343)))

(declare-fun bs!26401 () Bool)

(assert (= bs!26401 (and neg-inst!351 neg-inst!331)))

(assert (=> (and bs!26401 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26402 () Bool)

(assert (= bs!26402 (and neg-inst!351 b!54695)))

(assert (=> (and bs!26402 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 res!25058)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 res!25058)))) (= true inst!361)))

(declare-fun bs!26403 () Bool)

(assert (= bs!26403 (and neg-inst!351 neg-inst!347)))

(assert (=> (and bs!26403 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 res!25058))) (= (elem!226 (right!1159 res!25058)) (elem!226 res!25058))) (= true true)))

(declare-fun bs!26404 () Bool)

(assert (= bs!26404 (and neg-inst!351 neg-inst!333)))

(assert (=> (and bs!26404 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= true true)))

(declare-fun bs!26405 () Bool)

(assert (= bs!26405 (and neg-inst!351 b!54685)))

(assert (=> (and bs!26405 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true inst!355)))

(declare-fun bs!26406 () Bool)

(assert (= bs!26406 (and neg-inst!351 b!54650)))

(assert (=> (and bs!26406 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (right!1159 res!25058)) (elem!226 thiss!7690))) (= true inst!349)))

(declare-fun bs!26407 () Bool)

(assert (= bs!26407 (and neg-inst!351 b!54697)))

(assert (=> bs!26407 (= true inst!363)))

(declare-fun bs!26408 () Bool)

(assert (= bs!26408 (and neg-inst!351 neg-inst!337)))

(assert (=> (and bs!26408 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 thiss!7690))) (= (elem!226 (right!1159 res!25058)) (elem!226 thiss!7690))) (= true true)))

(declare-fun bs!26409 () Bool)

(assert (= bs!26409 (and neg-inst!351 neg-inst!341)))

(assert (=> (and bs!26409 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (right!1159 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (right!1159 thiss!7690))))) (= true true)))

(declare-fun bs!26410 () Bool)

(assert (= bs!26410 (and neg-inst!351 neg-inst!343)))

(assert (=> (and bs!26410 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (left!1156 thiss!7690))))) (= true true)))

(declare-fun bs!26411 () Bool)

(assert (= bs!26411 (and neg-inst!351 neg-inst!335)))

(assert (=> (and bs!26411 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= true true)))

(declare-fun bs!26412 () Bool)

(assert (= bs!26412 (and neg-inst!351 b!54648)))

(assert (=> (and bs!26412 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (right!1159 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 thiss!7690)))) (= true inst!347)))

(declare-fun bs!26413 () Bool)

(assert (= bs!26413 (and neg-inst!351 b!54681)))

(assert (=> (and bs!26413 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true inst!351)))

(declare-fun bs!26414 () Bool)

(assert (= bs!26414 (and neg-inst!351 neg-inst!349)))

(assert (=> (and bs!26414 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 res!25058)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 res!25058)))) (= true true)))

(declare-fun bs!26415 () Bool)

(assert (= bs!26415 (and neg-inst!351 b!54687)))

(assert (=> (and bs!26415 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (right!1159 (left!1156 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (right!1159 (left!1156 thiss!7690))))) (= true inst!357)))

(declare-fun bs!26416 () Bool)

(assert (= bs!26416 (and neg-inst!351 b!54646)))

(assert (=> (and bs!26416 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 thiss!7690)))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 thiss!7690)))) (= true inst!345)))

(declare-fun bs!26417 () Bool)

(assert (= bs!26417 (and neg-inst!351 b!54689)))

(assert (=> (and bs!26417 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 res!25058))) (= (elem!226 (right!1159 res!25058)) (elem!226 res!25058))) (= true inst!359)))

(declare-fun bs!26418 () Bool)

(assert (= bs!26418 (and neg-inst!351 neg-inst!339)))

(assert (=> (and bs!26418 (= (content!17 (right!1159 (right!1159 res!25058))) (content!17 (right!1159 (left!1156 (right!1159 thiss!7690))))) (= (elem!226 (right!1159 res!25058)) (elem!226 (left!1156 (right!1159 thiss!7690))))) (= true true)))

(declare-fun d!45080 () Bool)

(declare-fun res!25079 () Bool)

(declare-fun e!28728 () Bool)

(assert (=> d!45080 (=> res!25079 e!28728)))

(assert (=> d!45080 (= res!25079 (not (is-Node!126 (right!1159 res!25058))))))

(assert (=> d!45080 (= (inv!977 (right!1159 res!25058)) e!28728)))

(declare-fun e!28727 () Bool)

(assert (=> b!54696 (= e!28728 e!28727)))

(declare-fun res!25078 () Bool)

(assert (=> b!54696 (=> (not res!25078) (not e!28727))))

(assert (=> b!54696 (= res!25078 inst!362)))

(assert (=> b!54697 (= e!28727 inst!363)))

(assert (= (and d!45080 (not res!25079)) b!54696))

(assert (= neg-inst!350 inst!362))

(assert (= (and b!54696 res!25078) b!54697))

(assert (= neg-inst!351 inst!363))

(assert (=> b!54644 d!45080))

(declare-fun e!28729 () Bool)

(declare-fun b!54698 () Bool)

(declare-fun tp!15464 () Bool)

(declare-fun tp!15463 () Bool)

(assert (=> b!54698 (= e!28729 (and (inv!977 (left!1156 (left!1156 (right!1159 thiss!7690)))) tp!15463 (inv!977 (right!1159 (left!1156 (right!1159 thiss!7690)))) tp!15464))))

(assert (=> b!54656 (= tp!15459 (and (inv!977 (left!1156 (right!1159 thiss!7690))) e!28729))))

(assert (= (and b!54656 (is-Node!126 (left!1156 (right!1159 thiss!7690)))) b!54698))

(declare-fun m!59140 () Bool)

(assert (=> b!54698 m!59140))

(declare-fun m!59142 () Bool)

(assert (=> b!54698 m!59142))

(assert (=> b!54656 m!59038))

(declare-fun tp!15466 () Bool)

(declare-fun tp!15465 () Bool)

(declare-fun e!28730 () Bool)

(declare-fun b!54699 () Bool)

(assert (=> b!54699 (= e!28730 (and (inv!977 (left!1156 (right!1159 (right!1159 thiss!7690)))) tp!15465 (inv!977 (right!1159 (right!1159 (right!1159 thiss!7690)))) tp!15466))))

(assert (=> b!54656 (= tp!15460 (and (inv!977 (right!1159 (right!1159 thiss!7690))) e!28730))))

(assert (= (and b!54656 (is-Node!126 (right!1159 (right!1159 thiss!7690)))) b!54699))

(declare-fun m!59144 () Bool)

(assert (=> b!54699 m!59144))

(declare-fun m!59146 () Bool)

(assert (=> b!54699 m!59146))

(assert (=> b!54656 m!59040))

(declare-fun tp!15468 () Bool)

(declare-fun tp!15467 () Bool)

(declare-fun b!54700 () Bool)

(declare-fun e!28731 () Bool)

(assert (=> b!54700 (= e!28731 (and (inv!977 (left!1156 (left!1156 (left!1156 thiss!7690)))) tp!15467 (inv!977 (right!1159 (left!1156 (left!1156 thiss!7690)))) tp!15468))))

(assert (=> b!54655 (= tp!15457 (and (inv!977 (left!1156 (left!1156 thiss!7690))) e!28731))))

(assert (= (and b!54655 (is-Node!126 (left!1156 (left!1156 thiss!7690)))) b!54700))

(declare-fun m!59148 () Bool)

(assert (=> b!54700 m!59148))

(declare-fun m!59150 () Bool)

(assert (=> b!54700 m!59150))

(assert (=> b!54655 m!59034))

(declare-fun e!28732 () Bool)

(declare-fun b!54701 () Bool)

(declare-fun tp!15470 () Bool)

(declare-fun tp!15469 () Bool)

(assert (=> b!54701 (= e!28732 (and (inv!977 (left!1156 (right!1159 (left!1156 thiss!7690)))) tp!15469 (inv!977 (right!1159 (right!1159 (left!1156 thiss!7690)))) tp!15470))))

(assert (=> b!54655 (= tp!15458 (and (inv!977 (right!1159 (left!1156 thiss!7690))) e!28732))))

(assert (= (and b!54655 (is-Node!126 (right!1159 (left!1156 thiss!7690)))) b!54701))

(declare-fun m!59152 () Bool)

(assert (=> b!54701 m!59152))

(declare-fun m!59154 () Bool)

(assert (=> b!54701 m!59154))

(assert (=> b!54655 m!59036))

(declare-fun tp!15471 () Bool)

(declare-fun e!28733 () Bool)

(declare-fun tp!15472 () Bool)

(declare-fun b!54702 () Bool)

(assert (=> b!54702 (= e!28733 (and (inv!977 (left!1156 (left!1156 res!25058))) tp!15471 (inv!977 (right!1159 (left!1156 res!25058))) tp!15472))))

(assert (=> b!54644 (= tp!15452 (and (inv!977 (left!1156 res!25058)) e!28733))))

(assert (= (and b!54644 (is-Node!126 (left!1156 res!25058))) b!54702))

(declare-fun m!59156 () Bool)

(assert (=> b!54702 m!59156))

(declare-fun m!59158 () Bool)

(assert (=> b!54702 m!59158))

(assert (=> b!54644 m!59008))

(declare-fun b!54703 () Bool)

(declare-fun tp!15473 () Bool)

(declare-fun tp!15474 () Bool)

(declare-fun e!28734 () Bool)

(assert (=> b!54703 (= e!28734 (and (inv!977 (left!1156 (right!1159 res!25058))) tp!15473 (inv!977 (right!1159 (right!1159 res!25058))) tp!15474))))

(assert (=> b!54644 (= tp!15451 (and (inv!977 (right!1159 res!25058)) e!28734))))

(assert (= (and b!54644 (is-Node!126 (right!1159 res!25058))) b!54703))

(declare-fun m!59160 () Bool)

(assert (=> b!54703 m!59160))

(declare-fun m!59162 () Bool)

(assert (=> b!54703 m!59162))

(assert (=> b!54644 m!59010))

(push 1)

(assert (not neg-inst!341))

(assert (not b!54666))

(assert (not b!54677))

(assert (not b!54694))

(assert (not b!54703))

(assert (not b!54656))

(assert (not neg-inst!338))

(assert (not b!54684))

(assert (not neg-inst!348))

(assert (not b!54670))

(assert (not b!54695))

(assert (not b!54682))

(assert (not b!54698))

(assert (not b!54693))

(assert (not neg-inst!350))

(assert (not b!54679))

(assert (not b!54685))

(assert (not neg-inst!347))

(assert (not neg-inst!342))

(assert (not b!54664))

(assert (not b!54676))

(assert (not b!54655))

(assert (not b!54687))

(assert (not b!54691))

(assert (not b!54688))

(assert (not b!54674))

(assert (not neg-inst!340))

(assert (not neg-inst!344))

(assert (not neg-inst!346))

(assert (not b!54699))

(assert (not neg-inst!343))

(assert (not neg-inst!345))

(assert (not d!45062))

(assert (not b!54697))

(assert (not neg-inst!349))

(assert (not b!54689))

(assert (not b!54644))

(assert (not b!54696))

(assert (not b!54683))

(assert (not b!54680))

(assert (not b!54662))

(assert (not b!54681))

(assert (not b!54672))

(assert (not b!54700))

(assert (not b!54686))

(assert (not neg-inst!351))

(assert (not b!54701))

(assert (not neg-inst!339))

(assert (not b!54702))

(assert (not b!54668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!26419 () Bool)

(declare-fun s!1373 () Bool)

(assert (= bs!26419 (and neg-inst!330 s!1373)))

(assert (=> bs!26419 (=> true (or (not (member x!21806 (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt x!21806 (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))))))

(declare-fun m!59164 () Bool)

(assert (=> m!59014 m!59164))

(assert (=> m!59014 s!1373))

(declare-fun bs!26420 () Bool)

(declare-fun s!1375 () Bool)

(assert (= bs!26420 (and neg-inst!330 s!1375)))

(assert (=> bs!26420 (=> true (or (not (member x!21807 (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt x!21807 (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))))))

(declare-fun m!59166 () Bool)

(assert (=> m!59018 m!59166))

(assert (=> m!59018 s!1375))

(declare-fun bs!26421 () Bool)

(declare-fun s!1377 () Bool)

(assert (= bs!26421 (and neg-inst!330 s!1377)))

(assert (=> bs!26421 (=> true (or (not (member x!21809 (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt x!21809 (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))))))

(declare-fun m!59168 () Bool)

(assert (=> m!59026 m!59168))

(assert (=> m!59026 s!1377))

(declare-fun bs!26422 () Bool)

(declare-fun s!1379 () Bool)

(assert (= bs!26422 (and neg-inst!330 s!1379)))

(assert (=> bs!26422 (=> true (or (not (member x!21808 (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt x!21808 (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))))))

(declare-fun m!59170 () Bool)

(assert (=> m!59022 m!59170))

(assert (=> m!59022 s!1379))

(declare-fun bs!26423 () Bool)

(declare-fun s!1381 () Bool)

(assert (= bs!26423 (and neg-inst!330 s!1381)))

(assert (=> bs!26423 (=> true (or (not (member x!21804 (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt x!21804 (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))))))

(declare-fun m!59172 () Bool)

(assert (=> m!58996 m!59172))

(assert (=> m!58996 s!1381))

(declare-fun bs!26424 () Bool)

(declare-fun s!1383 () Bool)

(assert (= bs!26424 (and neg-inst!330 s!1383)))

(assert (=> bs!26424 (=> true (or (not (member x!21811 (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt x!21811 (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))))))

(declare-fun m!59174 () Bool)

(assert (=> m!59032 m!59174))

(assert (=> m!59032 s!1383))

(declare-fun bs!26425 () Bool)

(declare-fun s!1385 () Bool)

(assert (= bs!26425 (and neg-inst!330 s!1385)))

(assert (=> bs!26425 (=> true (or (not (member x!21810 (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt x!21810 (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))))))

(declare-fun m!59176 () Bool)

(assert (=> m!59028 m!59176))

(assert (=> m!59028 s!1385))

(declare-fun bs!26426 () Bool)

(declare-fun s!1387 () Bool)

(assert (= bs!26426 (and neg-inst!330 s!1387)))

(assert (=> bs!26426 (=> true (or (not (member x!21411 (content!17 (left!1156 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt x!21411 (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))))))))

(declare-fun m!59178 () Bool)

(assert (=> m!59002 m!59178))

(assert (=> m!59002 s!1387))

(declare-fun bs!26427 () Bool)

(declare-fun s!1389 () Bool)

(assert (= bs!26427 (and neg-inst!331 s!1389)))

(assert (=> bs!26427 (=> true (or (not (member x!21810 (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))) x!21810)))))

(declare-fun m!59180 () Bool)

(assert (=> m!59028 m!59180))

(assert (=> m!59028 s!1389))

(declare-fun bs!26428 () Bool)

(declare-fun s!1391 () Bool)

(assert (= bs!26428 (and neg-inst!331 s!1391)))

(assert (=> bs!26428 (=> true (or (not (member x!21809 (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))) x!21809)))))

(declare-fun m!59182 () Bool)

(assert (=> m!59026 m!59182))

(assert (=> m!59026 s!1391))

(declare-fun bs!26429 () Bool)

(declare-fun s!1393 () Bool)

(assert (= bs!26429 (and neg-inst!331 s!1393)))

(assert (=> bs!26429 (=> true (or (not (member x!21807 (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))) x!21807)))))

(declare-fun m!59184 () Bool)

(assert (=> m!59018 m!59184))

(assert (=> m!59018 s!1393))

(declare-fun bs!26430 () Bool)

(declare-fun s!1395 () Bool)

(assert (= bs!26430 (and neg-inst!331 s!1395)))

(assert (=> bs!26430 (=> true (or (not (member x!21411 (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))) x!21411)))))

(declare-fun m!59186 () Bool)

(assert (=> m!59002 m!59186))

(assert (=> m!59002 s!1395))

(declare-fun bs!26431 () Bool)

(declare-fun s!1397 () Bool)

(assert (= bs!26431 (and neg-inst!331 s!1397)))

(assert (=> bs!26431 (=> true (or (not (member x!21811 (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))) x!21811)))))

(declare-fun m!59188 () Bool)

(assert (=> m!59032 m!59188))

(assert (=> m!59032 s!1397))

(declare-fun bs!26432 () Bool)

(declare-fun s!1399 () Bool)

(assert (= bs!26432 (and neg-inst!331 s!1399)))

(assert (=> bs!26432 (=> true (or (not (member x!21803 (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))) x!21803)))))

(declare-fun m!59190 () Bool)

(assert (=> m!58992 m!59190))

(assert (=> m!58992 s!1399))

(declare-fun bs!26433 () Bool)

(declare-fun s!1401 () Bool)

(assert (= bs!26433 (and neg-inst!331 s!1401)))

(assert (=> bs!26433 (=> true (or (not (member x!21806 (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))) x!21806)))))

(declare-fun m!59192 () Bool)

(assert (=> m!59014 m!59192))

(assert (=> m!59014 s!1401))

(declare-fun bs!26434 () Bool)

(declare-fun s!1403 () Bool)

(assert (= bs!26434 (and neg-inst!331 s!1403)))

(assert (=> bs!26434 (=> true (or (not (member x!21808 (content!17 (right!1159 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690)))))) (bvslt (elem!226 (Node!126 (incl!2 (left!1156 thiss!7690) x!21411) (elem!226 thiss!7690) (right!1159 thiss!7690))) x!21808)))))

(declare-fun m!59194 () Bool)

(assert (=> m!59022 m!59194))

(assert (=> m!59022 s!1403))

(declare-fun bs!26435 () Bool)

(declare-fun s!1405 () Bool)

(assert (= bs!26435 (and neg-inst!332 s!1405)))

(assert (=> bs!26435 (=> true (or (not (member x!21807 (content!17 (left!1156 (left!1156 thiss!7690))))) (bvslt x!21807 (elem!226 (left!1156 thiss!7690)))))))

(declare-fun m!59196 () Bool)

(assert (=> m!59018 m!59196))

(assert (=> m!59018 s!1405))

(declare-fun bs!26436 () Bool)

(declare-fun s!1407 () Bool)

(assert (= bs!26436 (and neg-inst!332 s!1407)))

(assert (=> bs!26436 (=> true (or (not (member x!21809 (content!17 (left!1156 (left!1156 thiss!7690))))) (bvslt x!21809 (elem!226 (left!1156 thiss!7690)))))))

(declare-fun m!59198 () Bool)

(assert (=> m!59026 m!59198))

(assert (=> m!59026 s!1407))

(declare-fun bs!26437 () Bool)

(declare-fun s!1409 () Bool)

(assert (= bs!26437 (and neg-inst!332 s!1409)))

(assert (=> bs!26437 (=> true (or (not (member x!21803 (content!17 (left!1156 (left!1156 thiss!7690))))) (bvslt x!21803 (elem!226 (left!1156 thiss!7690)))))))

(declare-fun m!59200 () Bool)

(assert (=> m!58992 m!59200))

(assert (=> m!58992 s!1409))

(declare-fun bs!26438 () Bool)

(declare-fun s!1411 () Bool)

(assert (= bs!26438 (and neg-inst!332 s!1411)))

(assert (=> bs!26438 (=> true (or (not (member x!21808 (content!17 (left!1156 (left!1156 thiss!7690))))) (bvslt x!21808 (elem!226 (left!1156 thiss!7690)))))))

(declare-fun m!59202 () Bool)

(assert (=> m!59022 m!59202))

(assert (=> m!59022 s!1411))

(declare-fun bs!26439 () Bool)

(declare-fun s!1413 () Bool)

(assert (= bs!26439 (and neg-inst!332 s!1413)))

(assert (=> bs!26439 (=> true (or (not (member x!21804 (content!17 (left!1156 (left!1156 thiss!7690))))) (bvslt x!21804 (elem!226 (left!1156 thiss!7690)))))))

(declare-fun m!59204 () Bool)

(assert (=> m!58996 m!59204))

(assert (=> m!58996 s!1413))

(declare-fun bs!26440 () Bool)

(declare-fun s!1415 () Bool)

(assert (= bs!26440 (and neg-inst!332 s!1415)))

(assert (=> bs!26440 (=> true (or (not (member x!21811 (content!17 (left!1156 (left!1156 thiss!7690))))) (bvslt x!21811 (elem!226 (left!1156 thiss!7690)))))))

(declare-fun m!59206 () Bool)

(assert (=> m!59032 m!59206))

(assert (=> m!59032 s!1415))

(declare-fun bs!26441 () Bool)

(declare-fun s!1417 () Bool)

(assert (= bs!26441 (and neg-inst!332 s!1417)))

(assert (=> bs!26441 (=> true (or (not (member x!21810 (content!17 (left!1156 (left!1156 thiss!7690))))) (bvslt x!21810 (elem!226 (left!1156 thiss!7690)))))))

(declare-fun m!59208 () Bool)

(assert (=> m!59028 m!59208))

(assert (=> m!59028 s!1417))

(declare-fun bs!26442 () Bool)

(declare-fun s!1419 () Bool)

(assert (= bs!26442 (and neg-inst!332 s!1419)))

(assert (=> bs!26442 (=> true (or (not (member x!21411 (content!17 (left!1156 (left!1156 thiss!7690))))) (bvslt x!21411 (elem!226 (left!1156 thiss!7690)))))))

(declare-fun m!59210 () Bool)

(assert (=> m!59002 m!59210))

(assert (=> m!59002 s!1419))

(declare-fun bs!26443 () Bool)

(declare-fun s!1421 () Bool)

(assert (= bs!26443 (and neg-inst!333 s!1421)))

(assert (=> bs!26443 (=> true (or (not (member x!21810 (content!17 (right!1159 (left!1156 thiss!7690))))) (bvslt (elem!226 (left!1156 thiss!7690)) x!21810)))))

(declare-fun m!59212 () Bool)

(assert (=> m!59028 m!59212))

(assert (=> m!59028 s!1421))

(declare-fun bs!26444 () Bool)

(declare-fun s!1423 () Bool)

(assert (= bs!26444 (and neg-inst!333 s!1423)))

(assert (=> bs!26444 (=> true (or (not (member x!21809 (content!17 (right!1159 (left!1156 thiss!7690))))) (bvslt (elem!226 (left!1156 thiss!7690)) x!21809)))))

(declare-fun m!59214 () Bool)

(assert (=> m!59026 m!59214))

(assert (=> m!59026 s!1423))

(declare-fun bs!26445 () Bool)

(declare-fun s!1425 () Bool)

(assert (= bs!26445 (and neg-inst!333 s!1425)))

(assert (=> bs!26445 (=> true (or (not (member x!21411 (content!17 (right!1159 (left!1156 thiss!7690))))) (bvslt (elem!226 (left!1156 thiss!7690)) x!21411)))))

(declare-fun m!59216 () Bool)

(assert (=> m!59002 m!59216))

(assert (=> m!59002 s!1425))

(declare-fun bs!26446 () Bool)

(declare-fun s!1427 () Bool)

(assert (= bs!26446 (and neg-inst!333 s!1427)))

(assert (=> bs!26446 (=> true (or (not (member x!21811 (content!17 (right!1159 (left!1156 thiss!7690))))) (bvslt (elem!226 (left!1156 thiss!7690)) x!21811)))))

(declare-fun m!59218 () Bool)

(assert (=> m!59032 m!59218))

(assert (=> m!59032 s!1427))

(declare-fun bs!26447 () Bool)

(declare-fun s!1429 () Bool)

(assert (= bs!26447 (and neg-inst!333 s!1429)))

(assert (=> bs!26447 (=> true (or (not (member x!21803 (content!17 (right!1159 (left!1156 thiss!7690))))) (bvslt (elem!226 (left!1156 thiss!7690)) x!21803)))))

(declare-fun m!59220 () Bool)

(assert (=> m!58992 m!59220))

(assert (=> m!58992 s!1429))

(declare-fun bs!26448 () Bool)

(declare-fun s!1431 () Bool)

(assert (= bs!26448 (and neg-inst!333 s!1431)))

(assert (=> bs!26448 (=> true (or (not (member x!21804 (content!17 (right!1159 (left!1156 thiss!7690))))) (bvslt (elem!226 (left!1156 thiss!7690)) x!21804)))))

(declare-fun m!59222 () Bool)

(assert (=> m!58996 m!59222))

(assert (=> m!58996 s!1431))

(declare-fun bs!26449 () Bool)

(declare-fun s!1433 () Bool)

(assert (= bs!26449 (and neg-inst!333 s!1433)))

(assert (=> bs!26449 (=> true (or (not (member x!21806 (content!17 (right!1159 (left!1156 thiss!7690))))) (bvslt (elem!226 (left!1156 thiss!7690)) x!21806)))))

(declare-fun m!59224 () Bool)

(assert (=> m!59014 m!59224))

(assert (=> m!59014 s!1433))

(declare-fun bs!26450 () Bool)

(declare-fun s!1435 () Bool)

(assert (= bs!26450 (and neg-inst!333 s!1435)))

(assert (=> bs!26450 (=> true (or (not (member x!21808 (content!17 (right!1159 (left!1156 thiss!7690))))) (bvslt (elem!226 (left!1156 thiss!7690)) x!21808)))))

(declare-fun m!59226 () Bool)

(assert (=> m!59022 m!59226))

(assert (=> m!59022 s!1435))

(declare-fun bs!26451 () Bool)

(declare-fun s!1437 () Bool)

(assert (= bs!26451 (and neg-inst!334 s!1437)))

(assert (=> bs!26451 (=> true (or (not (member x!21806 (content!17 (left!1156 (right!1159 thiss!7690))))) (bvslt x!21806 (elem!226 (right!1159 thiss!7690)))))))

(declare-fun m!59228 () Bool)

(assert (=> m!59014 m!59228))

(assert (=> m!59014 s!1437))

(declare-fun bs!26452 () Bool)

(declare-fun s!1439 () Bool)

(assert (= bs!26452 (and neg-inst!334 s!1439)))

(assert (=> bs!26452 (=> true (or (not (member x!21807 (content!17 (left!1156 (right!1159 thiss!7690))))) (bvslt x!21807 (elem!226 (right!1159 thiss!7690)))))))

(declare-fun m!59230 () Bool)

(assert (=> m!59018 m!59230))

(assert (=> m!59018 s!1439))

(declare-fun bs!26453 () Bool)

(declare-fun s!1441 () Bool)

(assert (= bs!26453 (and neg-inst!334 s!1441)))

(assert (=> bs!26453 (=> true (or (not (member x!21809 (content!17 (left!1156 (right!1159 thiss!7690))))) (bvslt x!21809 (elem!226 (right!1159 thiss!7690)))))))

(declare-fun m!59232 () Bool)

(assert (=> m!59026 m!59232))

(assert (=> m!59026 s!1441))

(declare-fun bs!26454 () Bool)

(declare-fun s!1443 () Bool)

(assert (= bs!26454 (and neg-inst!334 s!1443)))

(assert (=> bs!26454 (=> true (or (not (member x!21803 (content!17 (left!1156 (right!1159 thiss!7690))))) (bvslt x!21803 (elem!226 (right!1159 thiss!7690)))))))

(declare-fun m!59234 () Bool)

(assert (=> m!58992 m!59234))

(assert (=> m!58992 s!1443))

(declare-fun bs!26455 () Bool)

(declare-fun s!1445 () Bool)

(assert (= bs!26455 (and neg-inst!334 s!1445)))

(assert (=> bs!26455 (=> true (or (not (member x!21804 (content!17 (left!1156 (right!1159 thiss!7690))))) (bvslt x!21804 (elem!226 (right!1159 thiss!7690)))))))

(declare-fun m!59236 () Bool)

(assert (=> m!58996 m!59236))

(assert (=> m!58996 s!1445))

(declare-fun bs!26456 () Bool)

(declare-fun s!1447 () Bool)

(assert (= bs!26456 (and neg-inst!334 s!1447)))

(assert (=> bs!26456 (=> true (or (not (member x!21811 (content!17 (left!1156 (right!1159 thiss!7690))))) (bvslt x!21811 (elem!226 (right!1159 thiss!7690)))))))

(declare-fun m!59238 () Bool)

(assert (=> m!59032 m!59238))

(assert (=> m!59032 s!1447))

(declare-fun bs!26457 () Bool)

(declare-fun s!1449 () Bool)

(assert (= bs!26457 (and neg-inst!334 s!1449)))

(assert (=> bs!26457 (=> true (or (not (member x!21810 (content!17 (left!1156 (right!1159 thiss!7690))))) (bvslt x!21810 (elem!226 (right!1159 thiss!7690)))))))

(declare-fun m!59240 () Bool)

(assert (=> m!59028 m!59240))

(assert (=> m!59028 s!1449))

(declare-fun bs!26458 () Bool)

(declare-fun s!1451 () Bool)

(assert (= bs!26458 (and neg-inst!334 s!1451)))

(assert (=> bs!26458 (=> true (or (not (member x!21411 (content!17 (left!1156 (right!1159 thiss!7690))))) (bvslt x!21411 (elem!226 (right!1159 thiss!7690)))))))

(declare-fun m!59242 () Bool)

(assert (=> m!59002 m!59242))

(assert (=> m!59002 s!1451))

(declare-fun bs!26459 () Bool)

(declare-fun s!1453 () Bool)

(assert (= bs!26459 (and neg-inst!335 s!1453)))

(assert (=> bs!26459 (=> true (or (not (member x!21810 (content!17 (right!1159 (right!1159 thiss!7690))))) (bvslt (elem!226 (right!1159 thiss!7690)) x!21810)))))

(declare-fun m!59244 () Bool)

(assert (=> m!59028 m!59244))

(assert (=> m!59028 s!1453))

(declare-fun bs!26460 () Bool)

(declare-fun s!1455 () Bool)

(assert (= bs!26460 (and neg-inst!335 s!1455)))

(assert (=> bs!26460 (=> true (or (not (member x!21807 (content!17 (right!1159 (right!1159 thiss!7690))))) (bvslt (elem!226 (right!1159 thiss!7690)) x!21807)))))

(declare-fun m!59246 () Bool)

(assert (=> m!59018 m!59246))

(assert (=> m!59018 s!1455))

(declare-fun bs!26461 () Bool)

(declare-fun s!1457 () Bool)

(assert (= bs!26461 (and neg-inst!335 s!1457)))

(assert (=> bs!26461 (=> true (or (not (member x!21411 (content!17 (right!1159 (right!1159 thiss!7690))))) (bvslt (elem!226 (right!1159 thiss!7690)) x!21411)))))

(declare-fun m!59248 () Bool)

(assert (=> m!59002 m!59248))

(assert (=> m!59002 s!1457))

(declare-fun bs!26462 () Bool)

(declare-fun s!1459 () Bool)

(assert (= bs!26462 (and neg-inst!335 s!1459)))

(assert (=> bs!26462 (=> true (or (not (member x!21811 (content!17 (right!1159 (right!1159 thiss!7690))))) (bvslt (elem!226 (right!1159 thiss!7690)) x!21811)))))

(declare-fun m!59250 () Bool)

(assert (=> m!59032 m!59250))

(assert (=> m!59032 s!1459))

(declare-fun bs!26463 () Bool)

(declare-fun s!1461 () Bool)

(assert (= bs!26463 (and neg-inst!335 s!1461)))

(assert (=> bs!26463 (=> true (or (not (member x!21803 (content!17 (right!1159 (right!1159 thiss!7690))))) (bvslt (elem!226 (right!1159 thiss!7690)) x!21803)))))

(declare-fun m!59252 () Bool)

(assert (=> m!58992 m!59252))

(assert (=> m!58992 s!1461))

(declare-fun bs!26464 () Bool)

(declare-fun s!1463 () Bool)

(assert (= bs!26464 (and neg-inst!335 s!1463)))

(assert (=> bs!26464 (=> true (or (not (member x!21804 (content!17 (right!1159 (right!1159 thiss!7690))))) (bvslt (elem!226 (right!1159 thiss!7690)) x!21804)))))

(declare-fun m!59254 () Bool)

(assert (=> m!58996 m!59254))

(assert (=> m!58996 s!1463))

(declare-fun bs!26465 () Bool)

(declare-fun s!1465 () Bool)

(assert (= bs!26465 (and neg-inst!335 s!1465)))

(assert (=> bs!26465 (=> true (or (not (member x!21806 (content!17 (right!1159 (right!1159 thiss!7690))))) (bvslt (elem!226 (right!1159 thiss!7690)) x!21806)))))

(declare-fun m!59256 () Bool)

(assert (=> m!59014 m!59256))

(assert (=> m!59014 s!1465))

(declare-fun bs!26466 () Bool)

(declare-fun s!1467 () Bool)

(assert (= bs!26466 (and neg-inst!335 s!1467)))

(assert (=> bs!26466 (=> true (or (not (member x!21808 (content!17 (right!1159 (right!1159 thiss!7690))))) (bvslt (elem!226 (right!1159 thiss!7690)) x!21808)))))

(declare-fun m!59258 () Bool)

(assert (=> m!59022 m!59258))

(assert (=> m!59022 s!1467))

(declare-fun bs!26467 () Bool)

(declare-fun s!1469 () Bool)

(assert (= bs!26467 (and neg-inst!336 s!1469)))

(assert (=> bs!26467 (=> true (or (not (member x!21806 (content!17 (left!1156 thiss!7690)))) (bvslt x!21806 (elem!226 thiss!7690))))))

(declare-fun m!59260 () Bool)

(assert (=> m!59014 m!59260))

(assert (=> m!59014 s!1469))

(declare-fun bs!26468 () Bool)

(declare-fun s!1471 () Bool)

(assert (= bs!26468 (and neg-inst!336 s!1471)))

(assert (=> bs!26468 (=> true (or (not (member x!21807 (content!17 (left!1156 thiss!7690)))) (bvslt x!21807 (elem!226 thiss!7690))))))

(declare-fun m!59262 () Bool)

(assert (=> m!59018 m!59262))

(assert (=> m!59018 s!1471))

(declare-fun bs!26469 () Bool)

(declare-fun s!1473 () Bool)

(assert (= bs!26469 (and neg-inst!336 s!1473)))

(assert (=> bs!26469 (=> true (or (not (member x!21809 (content!17 (left!1156 thiss!7690)))) (bvslt x!21809 (elem!226 thiss!7690))))))

(declare-fun m!59264 () Bool)

(assert (=> m!59026 m!59264))

(assert (=> m!59026 s!1473))

(declare-fun bs!26470 () Bool)

(declare-fun s!1475 () Bool)

(assert (= bs!26470 (and neg-inst!336 s!1475)))

(assert (=> bs!26470 (=> true (or (not (member x!21803 (content!17 (left!1156 thiss!7690)))) (bvslt x!21803 (elem!226 thiss!7690))))))

(declare-fun m!59266 () Bool)

(assert (=> m!58992 m!59266))

(assert (=> m!58992 s!1475))

(declare-fun bs!26471 () Bool)

(declare-fun s!1477 () Bool)

(assert (= bs!26471 (and neg-inst!336 s!1477)))

(assert (=> bs!26471 (=> true (or (not (member x!21808 (content!17 (left!1156 thiss!7690)))) (bvslt x!21808 (elem!226 thiss!7690))))))

(declare-fun m!59268 () Bool)

(assert (=> m!59022 m!59268))

(assert (=> m!59022 s!1477))

(declare-fun bs!26472 () Bool)

(declare-fun s!1479 () Bool)

(assert (= bs!26472 (and neg-inst!336 s!1479)))

(assert (=> bs!26472 (=> true (or (not (member x!21804 (content!17 (left!1156 thiss!7690)))) (bvslt x!21804 (elem!226 thiss!7690))))))

(declare-fun m!59270 () Bool)

(assert (=> m!58996 m!59270))

(assert (=> m!58996 s!1479))

(declare-fun bs!26473 () Bool)

(declare-fun s!1481 () Bool)

(assert (= bs!26473 (and neg-inst!336 s!1481)))

(assert (=> bs!26473 (=> true (or (not (member x!21811 (content!17 (left!1156 thiss!7690)))) (bvslt x!21811 (elem!226 thiss!7690))))))

(declare-fun m!59272 () Bool)

(assert (=> m!59032 m!59272))

(assert (=> m!59032 s!1481))

(declare-fun bs!26474 () Bool)

(declare-fun s!1483 () Bool)

(assert (= bs!26474 (and neg-inst!336 s!1483)))

(assert (=> bs!26474 (=> true (or (not (member x!21411 (content!17 (left!1156 thiss!7690)))) (bvslt x!21411 (elem!226 thiss!7690))))))

(declare-fun m!59274 () Bool)

(assert (=> m!59002 m!59274))

(assert (=> m!59002 s!1483))

(declare-fun bs!26475 () Bool)

(declare-fun s!1485 () Bool)

(assert (= bs!26475 (and neg-inst!337 s!1485)))

(assert (=> bs!26475 (=> true (or (not (member x!21810 (content!17 (right!1159 thiss!7690)))) (bvslt (elem!226 thiss!7690) x!21810)))))

(declare-fun m!59276 () Bool)

(assert (=> m!59028 m!59276))

(assert (=> m!59028 s!1485))

(declare-fun bs!26476 () Bool)

(declare-fun s!1487 () Bool)

(assert (= bs!26476 (and neg-inst!337 s!1487)))

(assert (=> bs!26476 (=> true (or (not (member x!21809 (content!17 (right!1159 thiss!7690)))) (bvslt (elem!226 thiss!7690) x!21809)))))

(declare-fun m!59278 () Bool)

(assert (=> m!59026 m!59278))

(assert (=> m!59026 s!1487))

(declare-fun bs!26477 () Bool)

(declare-fun s!1489 () Bool)

(assert (= bs!26477 (and neg-inst!337 s!1489)))

(assert (=> bs!26477 (=> true (or (not (member x!21807 (content!17 (right!1159 thiss!7690)))) (bvslt (elem!226 thiss!7690) x!21807)))))

(declare-fun m!59280 () Bool)

(assert (=> m!59018 m!59280))

(assert (=> m!59018 s!1489))

(declare-fun bs!26478 () Bool)

(declare-fun s!1491 () Bool)

(assert (= bs!26478 (and neg-inst!337 s!1491)))

(assert (=> bs!26478 (=> true (or (not (member x!21411 (content!17 (right!1159 thiss!7690)))) (bvslt (elem!226 thiss!7690) x!21411)))))

(declare-fun m!59282 () Bool)

(assert (=> m!59002 m!59282))

(assert (=> m!59002 s!1491))

(declare-fun bs!26479 () Bool)

(declare-fun s!1493 () Bool)

(assert (= bs!26479 (and neg-inst!337 s!1493)))

(assert (=> bs!26479 (=> true (or (not (member x!21803 (content!17 (right!1159 thiss!7690)))) (bvslt (elem!226 thiss!7690) x!21803)))))

(declare-fun m!59284 () Bool)

(assert (=> m!58992 m!59284))

(assert (=> m!58992 s!1493))

(declare-fun bs!26480 () Bool)

(declare-fun s!1495 () Bool)

(assert (= bs!26480 (and neg-inst!337 s!1495)))

(assert (=> bs!26480 (=> true (or (not (member x!21804 (content!17 (right!1159 thiss!7690)))) (bvslt (elem!226 thiss!7690) x!21804)))))

(declare-fun m!59286 () Bool)

(assert (=> m!58996 m!59286))

(assert (=> m!58996 s!1495))

(declare-fun bs!26481 () Bool)

(declare-fun s!1497 () Bool)

(assert (= bs!26481 (and neg-inst!337 s!1497)))

(assert (=> bs!26481 (=> true (or (not (member x!21806 (content!17 (right!1159 thiss!7690)))) (bvslt (elem!226 thiss!7690) x!21806)))))

(declare-fun m!59288 () Bool)

(assert (=> m!59014 m!59288))

(assert (=> m!59014 s!1497))

(declare-fun bs!26482 () Bool)

(declare-fun s!1499 () Bool)

(assert (= bs!26482 (and neg-inst!337 s!1499)))

(assert (=> bs!26482 (=> true (or (not (member x!21808 (content!17 (right!1159 thiss!7690)))) (bvslt (elem!226 thiss!7690) x!21808)))))

(declare-fun m!59290 () Bool)

(assert (=> m!59022 m!59290))

(assert (=> m!59022 s!1499))

(push 1)

(assert (not neg-inst!341))

(assert (not b!54666))

(assert (not b!54677))

(assert (not b!54694))

(assert (not b!54703))

(assert (not b!54656))

(assert (not neg-inst!338))

(assert (not b!54684))

(assert (not neg-inst!348))

(assert (not b!54670))

(assert (not b!54695))

(assert (not b!54682))

(assert (not b!54698))

(assert (not b!54693))

(assert (not neg-inst!350))

(assert (not b!54679))

(assert (not b!54685))

(assert (not neg-inst!347))

(assert (not neg-inst!342))

(assert (not b!54664))

(assert (not b!54676))

(assert (not b!54655))

(assert (not b!54687))

(assert (not b!54691))

(assert (not b!54688))

(assert (not b!54674))

(assert (not neg-inst!340))

(assert (not neg-inst!344))

(assert (not neg-inst!346))

(assert (not b!54699))

(assert (not neg-inst!343))

(assert (not neg-inst!345))

(assert (not d!45062))

(assert (not b!54697))

(assert (not neg-inst!349))

(assert (not b!54689))

(assert (not b!54644))

(assert (not b!54696))

(assert (not b!54683))

(assert (not b!54680))

(assert (not b!54662))

(assert (not b!54681))

(assert (not b!54672))

(assert (not b!54700))

(assert (not b!54686))

(assert (not neg-inst!351))

(assert (not b!54701))

(assert (not neg-inst!339))

(assert (not b!54702))

(assert (not b!54668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


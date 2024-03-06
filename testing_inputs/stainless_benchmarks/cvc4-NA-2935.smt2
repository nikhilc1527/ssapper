; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14986 () Bool)

(assert start!14986)

(declare-fun res!49337 () Bool)

(declare-fun e!51657 () Bool)

(assert (=> start!14986 (=> res!49337 e!51657)))

(declare-datatypes () ((P!65 (Charlie!65) (Alice!65) (Bob!65))))

(declare-datatypes () ((tuple2!476 (tuple2!477 (_1!277 P!65) (_2!277 P!65)))))

(declare-datatypes () ((List!879 (Cons!817 (h!5596 tuple2!476) (t!53916 List!879)) (Nil!819))))

(declare-fun lt!21671 () List!879)

(declare-fun lt!21669 () List!879)

(declare-fun lt!21668 () List!879)

(declare-fun content!200 (List!879) (Set tuple2!476))

(assert (=> start!14986 (= res!49337 (not (= (content!200 lt!21668) (union (content!200 lt!21671) (content!200 lt!21669)))))))

(declare-fun lt!21670 () P!65)

(assert (=> start!14986 (= lt!21668 (Cons!817 (tuple2!477 lt!21670 Charlie!65) lt!21669))))

(assert (=> start!14986 (= lt!21671 (Cons!817 (tuple2!477 lt!21670 Charlie!65) Nil!819))))

(declare-fun lt!21672 () List!879)

(assert (=> start!14986 (= lt!21669 (Cons!817 (h!5596 lt!21672) (Cons!817 (h!5596 (t!53916 lt!21672)) Nil!819)))))

(assert (=> start!14986 (= lt!21672 (Cons!817 (tuple2!477 Charlie!65 Alice!65) (Cons!817 (tuple2!477 Charlie!65 Charlie!65) Nil!819)))))

(assert (=> start!14986 (= lt!21670 Alice!65)))

(assert (=> start!14986 e!51657))

(declare-fun b!94515 () Bool)

(declare-fun res!49338 () Bool)

(assert (=> b!94515 (=> res!49338 e!51657)))

(declare-fun size!990 (List!879) Int)

(assert (=> b!94515 (= res!49338 (not (= (size!990 lt!21668) (+ (size!990 lt!21671) (size!990 lt!21669)))))))

(declare-fun b!94516 () Bool)

(assert (=> b!94516 (= e!51657 (and (= lt!21669 Nil!819) (not (= lt!21668 lt!21671))))))

(assert (= (and start!14986 (not res!49337)) b!94515))

(assert (= (and b!94515 (not res!49338)) b!94516))

(declare-fun m!89897 () Bool)

(assert (=> start!14986 m!89897))

(declare-fun m!89899 () Bool)

(assert (=> start!14986 m!89899))

(declare-fun m!89901 () Bool)

(assert (=> start!14986 m!89901))

(declare-fun m!89903 () Bool)

(assert (=> b!94515 m!89903))

(declare-fun m!89905 () Bool)

(assert (=> b!94515 m!89905))

(declare-fun m!89907 () Bool)

(assert (=> b!94515 m!89907))

(push 1)

(assert (not start!14986))

(assert (not b!94515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61534 () Bool)

(declare-fun c!23237 () Bool)

(assert (=> d!61534 (= c!23237 (is-Nil!819 lt!21668))))

(declare-fun e!51660 () (Set tuple2!476))

(assert (=> d!61534 (= (content!200 lt!21668) e!51660)))

(declare-fun b!94521 () Bool)

(assert (=> b!94521 (= e!51660 (as emptyset (Set tuple2!476)))))

(declare-fun b!94522 () Bool)

(assert (=> b!94522 (= e!51660 (union (insert (h!5596 lt!21668) (as emptyset (Set tuple2!476))) (content!200 (t!53916 lt!21668))))))

(assert (= (and d!61534 c!23237) b!94521))

(assert (= (and d!61534 (not c!23237)) b!94522))

(declare-fun m!89909 () Bool)

(assert (=> b!94522 m!89909))

(declare-fun m!89911 () Bool)

(assert (=> b!94522 m!89911))

(assert (=> start!14986 d!61534))

(declare-fun d!61536 () Bool)

(declare-fun c!23238 () Bool)

(assert (=> d!61536 (= c!23238 (is-Nil!819 lt!21671))))

(declare-fun e!51661 () (Set tuple2!476))

(assert (=> d!61536 (= (content!200 lt!21671) e!51661)))

(declare-fun b!94523 () Bool)

(assert (=> b!94523 (= e!51661 (as emptyset (Set tuple2!476)))))

(declare-fun b!94524 () Bool)

(assert (=> b!94524 (= e!51661 (union (insert (h!5596 lt!21671) (as emptyset (Set tuple2!476))) (content!200 (t!53916 lt!21671))))))

(assert (= (and d!61536 c!23238) b!94523))

(assert (= (and d!61536 (not c!23238)) b!94524))

(declare-fun m!89913 () Bool)

(assert (=> b!94524 m!89913))

(declare-fun m!89915 () Bool)

(assert (=> b!94524 m!89915))

(assert (=> start!14986 d!61536))

(declare-fun d!61538 () Bool)

(declare-fun c!23239 () Bool)

(assert (=> d!61538 (= c!23239 (is-Nil!819 lt!21669))))

(declare-fun e!51662 () (Set tuple2!476))

(assert (=> d!61538 (= (content!200 lt!21669) e!51662)))

(declare-fun b!94525 () Bool)

(assert (=> b!94525 (= e!51662 (as emptyset (Set tuple2!476)))))

(declare-fun b!94526 () Bool)

(assert (=> b!94526 (= e!51662 (union (insert (h!5596 lt!21669) (as emptyset (Set tuple2!476))) (content!200 (t!53916 lt!21669))))))

(assert (= (and d!61538 c!23239) b!94525))

(assert (= (and d!61538 (not c!23239)) b!94526))

(declare-fun m!89917 () Bool)

(assert (=> b!94526 m!89917))

(declare-fun m!89919 () Bool)

(assert (=> b!94526 m!89919))

(assert (=> start!14986 d!61538))

(declare-fun d!61540 () Bool)

(declare-fun lt!21675 () Int)

(assert (=> d!61540 (>= lt!21675 0)))

(declare-fun e!51665 () Int)

(assert (=> d!61540 (= lt!21675 e!51665)))

(declare-fun c!23242 () Bool)

(assert (=> d!61540 (= c!23242 (is-Nil!819 lt!21668))))

(assert (=> d!61540 (= (size!990 lt!21668) lt!21675)))

(declare-fun b!94531 () Bool)

(assert (=> b!94531 (= e!51665 0)))

(declare-fun b!94532 () Bool)

(assert (=> b!94532 (= e!51665 (+ 1 (size!990 (t!53916 lt!21668))))))

(assert (= (and d!61540 c!23242) b!94531))

(assert (= (and d!61540 (not c!23242)) b!94532))

(declare-fun m!89921 () Bool)

(assert (=> b!94532 m!89921))

(assert (=> b!94515 d!61540))

(declare-fun d!61542 () Bool)

(declare-fun lt!21676 () Int)

(assert (=> d!61542 (>= lt!21676 0)))

(declare-fun e!51666 () Int)

(assert (=> d!61542 (= lt!21676 e!51666)))

(declare-fun c!23243 () Bool)

(assert (=> d!61542 (= c!23243 (is-Nil!819 lt!21671))))

(assert (=> d!61542 (= (size!990 lt!21671) lt!21676)))

(declare-fun b!94533 () Bool)

(assert (=> b!94533 (= e!51666 0)))

(declare-fun b!94534 () Bool)

(assert (=> b!94534 (= e!51666 (+ 1 (size!990 (t!53916 lt!21671))))))

(assert (= (and d!61542 c!23243) b!94533))

(assert (= (and d!61542 (not c!23243)) b!94534))

(declare-fun m!89923 () Bool)

(assert (=> b!94534 m!89923))

(assert (=> b!94515 d!61542))

(declare-fun d!61544 () Bool)

(declare-fun lt!21677 () Int)

(assert (=> d!61544 (>= lt!21677 0)))

(declare-fun e!51667 () Int)

(assert (=> d!61544 (= lt!21677 e!51667)))

(declare-fun c!23244 () Bool)

(assert (=> d!61544 (= c!23244 (is-Nil!819 lt!21669))))

(assert (=> d!61544 (= (size!990 lt!21669) lt!21677)))

(declare-fun b!94535 () Bool)

(assert (=> b!94535 (= e!51667 0)))

(declare-fun b!94536 () Bool)

(assert (=> b!94536 (= e!51667 (+ 1 (size!990 (t!53916 lt!21669))))))

(assert (= (and d!61544 c!23244) b!94535))

(assert (= (and d!61544 (not c!23244)) b!94536))

(declare-fun m!89925 () Bool)

(assert (=> b!94536 m!89925))

(assert (=> b!94515 d!61544))

(push 1)

(assert (not b!94522))

(assert (not b!94532))

(assert (not b!94526))

(assert (not b!94534))

(assert (not b!94536))

(assert (not b!94524))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61546 () Bool)

(declare-fun lt!21678 () Int)

(assert (=> d!61546 (>= lt!21678 0)))

(declare-fun e!51668 () Int)

(assert (=> d!61546 (= lt!21678 e!51668)))

(declare-fun c!23245 () Bool)

(assert (=> d!61546 (= c!23245 (is-Nil!819 (t!53916 lt!21671)))))

(assert (=> d!61546 (= (size!990 (t!53916 lt!21671)) lt!21678)))

(declare-fun b!94537 () Bool)

(assert (=> b!94537 (= e!51668 0)))

(declare-fun b!94538 () Bool)

(assert (=> b!94538 (= e!51668 (+ 1 (size!990 (t!53916 (t!53916 lt!21671)))))))

(assert (= (and d!61546 c!23245) b!94537))

(assert (= (and d!61546 (not c!23245)) b!94538))

(declare-fun m!89927 () Bool)

(assert (=> b!94538 m!89927))

(assert (=> b!94534 d!61546))

(declare-fun d!61548 () Bool)

(declare-fun c!23246 () Bool)

(assert (=> d!61548 (= c!23246 (is-Nil!819 (t!53916 lt!21668)))))

(declare-fun e!51669 () (Set tuple2!476))

(assert (=> d!61548 (= (content!200 (t!53916 lt!21668)) e!51669)))

(declare-fun b!94539 () Bool)

(assert (=> b!94539 (= e!51669 (as emptyset (Set tuple2!476)))))

(declare-fun b!94540 () Bool)

(assert (=> b!94540 (= e!51669 (union (insert (h!5596 (t!53916 lt!21668)) (as emptyset (Set tuple2!476))) (content!200 (t!53916 (t!53916 lt!21668)))))))

(assert (= (and d!61548 c!23246) b!94539))

(assert (= (and d!61548 (not c!23246)) b!94540))

(declare-fun m!89929 () Bool)

(assert (=> b!94540 m!89929))

(declare-fun m!89931 () Bool)

(assert (=> b!94540 m!89931))

(assert (=> b!94522 d!61548))

(declare-fun d!61550 () Bool)

(declare-fun c!23247 () Bool)

(assert (=> d!61550 (= c!23247 (is-Nil!819 (t!53916 lt!21669)))))

(declare-fun e!51670 () (Set tuple2!476))

(assert (=> d!61550 (= (content!200 (t!53916 lt!21669)) e!51670)))

(declare-fun b!94541 () Bool)

(assert (=> b!94541 (= e!51670 (as emptyset (Set tuple2!476)))))

(declare-fun b!94542 () Bool)

(assert (=> b!94542 (= e!51670 (union (insert (h!5596 (t!53916 lt!21669)) (as emptyset (Set tuple2!476))) (content!200 (t!53916 (t!53916 lt!21669)))))))

(assert (= (and d!61550 c!23247) b!94541))

(assert (= (and d!61550 (not c!23247)) b!94542))

(declare-fun m!89933 () Bool)

(assert (=> b!94542 m!89933))

(declare-fun m!89935 () Bool)

(assert (=> b!94542 m!89935))

(assert (=> b!94526 d!61550))

(declare-fun d!61552 () Bool)

(declare-fun c!23248 () Bool)

(assert (=> d!61552 (= c!23248 (is-Nil!819 (t!53916 lt!21671)))))

(declare-fun e!51671 () (Set tuple2!476))

(assert (=> d!61552 (= (content!200 (t!53916 lt!21671)) e!51671)))

(declare-fun b!94543 () Bool)

(assert (=> b!94543 (= e!51671 (as emptyset (Set tuple2!476)))))

(declare-fun b!94544 () Bool)

(assert (=> b!94544 (= e!51671 (union (insert (h!5596 (t!53916 lt!21671)) (as emptyset (Set tuple2!476))) (content!200 (t!53916 (t!53916 lt!21671)))))))

(assert (= (and d!61552 c!23248) b!94543))

(assert (= (and d!61552 (not c!23248)) b!94544))

(declare-fun m!89937 () Bool)

(assert (=> b!94544 m!89937))

(declare-fun m!89939 () Bool)

(assert (=> b!94544 m!89939))

(assert (=> b!94524 d!61552))

(declare-fun d!61554 () Bool)

(declare-fun lt!21679 () Int)

(assert (=> d!61554 (>= lt!21679 0)))

(declare-fun e!51672 () Int)

(assert (=> d!61554 (= lt!21679 e!51672)))

(declare-fun c!23249 () Bool)

(assert (=> d!61554 (= c!23249 (is-Nil!819 (t!53916 lt!21669)))))

(assert (=> d!61554 (= (size!990 (t!53916 lt!21669)) lt!21679)))

(declare-fun b!94545 () Bool)

(assert (=> b!94545 (= e!51672 0)))

(declare-fun b!94546 () Bool)

(assert (=> b!94546 (= e!51672 (+ 1 (size!990 (t!53916 (t!53916 lt!21669)))))))

(assert (= (and d!61554 c!23249) b!94545))

(assert (= (and d!61554 (not c!23249)) b!94546))

(declare-fun m!89941 () Bool)

(assert (=> b!94546 m!89941))

(assert (=> b!94536 d!61554))

(declare-fun d!61556 () Bool)

(declare-fun lt!21680 () Int)

(assert (=> d!61556 (>= lt!21680 0)))

(declare-fun e!51673 () Int)

(assert (=> d!61556 (= lt!21680 e!51673)))

(declare-fun c!23250 () Bool)

(assert (=> d!61556 (= c!23250 (is-Nil!819 (t!53916 lt!21668)))))

(assert (=> d!61556 (= (size!990 (t!53916 lt!21668)) lt!21680)))

(declare-fun b!94547 () Bool)

(assert (=> b!94547 (= e!51673 0)))

(declare-fun b!94548 () Bool)

(assert (=> b!94548 (= e!51673 (+ 1 (size!990 (t!53916 (t!53916 lt!21668)))))))

(assert (= (and d!61556 c!23250) b!94547))

(assert (= (and d!61556 (not c!23250)) b!94548))

(declare-fun m!89943 () Bool)

(assert (=> b!94548 m!89943))

(assert (=> b!94532 d!61556))

(push 1)

(assert (not b!94548))

(assert (not b!94546))

(assert (not b!94538))

(assert (not b!94544))

(assert (not b!94542))

(assert (not b!94540))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


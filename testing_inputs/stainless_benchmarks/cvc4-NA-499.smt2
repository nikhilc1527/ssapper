; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3392 () Bool)

(assert start!3392)

(declare-fun res!8645 () Bool)

(declare-fun e!10454 () Bool)

(assert (=> start!3392 (=> (not res!8645) (not e!10454))))

(declare-datatypes () ((T!1753 (T!1754 (val!49 Int)))))

(declare-datatypes () ((Conc!31 (CC!30 (left!675 Conc!31) (right!678 Conc!31)) (Single!30 (x!8787 T!1753)) (Empty!41))))

(declare-fun xs!604 () Conc!31)

(declare-fun concInv!29 (Conc!31) Bool)

(assert (=> start!3392 (= res!8645 (concInv!29 xs!604))))

(assert (=> start!3392 e!10454))

(declare-fun e!10453 () Bool)

(assert (=> start!3392 e!10453))

(assert (=> start!3392 true))

(declare-fun e!10455 () Bool)

(assert (=> start!3392 e!10455))

(declare-fun tp_is_empty!97 () Bool)

(assert (=> start!3392 tp_is_empty!97))

(declare-fun b!19900 () Bool)

(declare-fun res!8646 () Bool)

(assert (=> b!19900 (=> (not res!8646) (not e!10454))))

(declare-fun i!298 () Int)

(declare-fun size!221 (Conc!31) Int)

(assert (=> b!19900 (= res!8646 (<= i!298 (size!221 xs!604)))))

(declare-fun b!19901 () Bool)

(declare-fun res!8653 () Bool)

(declare-fun e!10456 () Bool)

(assert (=> b!19901 (=> res!8653 e!10456)))

(declare-fun res!5603 () Conc!31)

(declare-fun balanced!30 (Conc!31) Bool)

(assert (=> b!19901 (= res!8653 (not (balanced!30 res!5603)))))

(declare-fun b!19902 () Bool)

(declare-fun res!8649 () Bool)

(assert (=> b!19902 (=> res!8649 e!10456)))

(declare-fun level!28 (Conc!31) Int)

(assert (=> b!19902 (= res!8649 (< (level!28 res!5603) (level!28 xs!604)))))

(declare-fun b!19903 () Bool)

(declare-fun res!8655 () Bool)

(assert (=> b!19903 (=> (not res!8655) (not e!10454))))

(declare-fun y!824 () T!1753)

(assert (=> b!19903 (= res!8655 (and (not (is-Empty!41 xs!604)) (is-Single!30 xs!604) (= i!298 0) (= res!5603 (CC!30 (Single!30 y!824) xs!604))))))

(declare-fun b!19904 () Bool)

(declare-fun res!8654 () Bool)

(assert (=> b!19904 (=> res!8654 e!10456)))

(declare-fun insertAppendAxiomInst!11 (Conc!31 Int T!1753) Bool)

(assert (=> b!19904 (= res!8654 (not (insertAppendAxiomInst!11 xs!604 i!298 y!824)))))

(declare-fun b!19905 () Bool)

(assert (=> b!19905 (= e!10455 tp_is_empty!97)))

(declare-fun b!19906 () Bool)

(assert (=> b!19906 (= e!10453 tp_is_empty!97)))

(declare-fun b!19907 () Bool)

(declare-fun res!8652 () Bool)

(assert (=> b!19907 (=> res!8652 e!10456)))

(assert (=> b!19907 (= res!8652 (> (- (level!28 res!5603) (level!28 xs!604)) 1))))

(declare-fun b!19908 () Bool)

(declare-fun res!8651 () Bool)

(assert (=> b!19908 (=> res!8651 e!10456)))

(declare-fun isEmpty!293 (Conc!31) Bool)

(assert (=> b!19908 (= res!8651 (isEmpty!293 res!5603))))

(declare-fun b!19909 () Bool)

(declare-datatypes () ((List!336 (Cons!330 (h!244 T!1753) (t!4331 List!336)) (Nil!331))))

(declare-fun toList!96 (Conc!31) List!336)

(declare-fun insertAtIndex!9 (List!336 Int T!1753) List!336)

(assert (=> b!19909 (= e!10456 (not (= (toList!96 res!5603) (insertAtIndex!9 (toList!96 xs!604) i!298 y!824))))))

(declare-fun b!19910 () Bool)

(assert (=> b!19910 (= e!10454 e!10456)))

(declare-fun res!8648 () Bool)

(assert (=> b!19910 (=> res!8648 e!10456)))

(assert (=> b!19910 (= res!8648 (not (concInv!29 res!5603)))))

(declare-fun b!19911 () Bool)

(declare-fun res!8647 () Bool)

(assert (=> b!19911 (=> (not res!8647) (not e!10454))))

(assert (=> b!19911 (= res!8647 (balanced!30 xs!604))))

(declare-fun b!19912 () Bool)

(declare-fun tp!4605 () Bool)

(declare-fun tp!4608 () Bool)

(assert (=> b!19912 (= e!10453 (and tp!4605 tp!4608))))

(declare-fun b!19913 () Bool)

(declare-fun tp!4607 () Bool)

(declare-fun tp!4606 () Bool)

(assert (=> b!19913 (= e!10455 (and tp!4607 tp!4606))))

(declare-fun b!19914 () Bool)

(declare-fun res!8650 () Bool)

(assert (=> b!19914 (=> (not res!8650) (not e!10454))))

(assert (=> b!19914 (= res!8650 (>= i!298 0))))

(assert (= (and start!3392 res!8645) b!19911))

(assert (= (and b!19911 res!8647) b!19914))

(assert (= (and b!19914 res!8650) b!19900))

(assert (= (and b!19900 res!8646) b!19903))

(assert (= (and b!19903 res!8655) b!19910))

(assert (= (and b!19910 (not res!8648)) b!19901))

(assert (= (and b!19901 (not res!8653)) b!19907))

(assert (= (and b!19907 (not res!8652)) b!19902))

(assert (= (and b!19902 (not res!8649)) b!19908))

(assert (= (and b!19908 (not res!8651)) b!19904))

(assert (= (and b!19904 (not res!8654)) b!19909))

(assert (= (and start!3392 (is-CC!30 xs!604)) b!19912))

(assert (= (and start!3392 (is-Single!30 xs!604)) b!19906))

(assert (= (and start!3392 (is-CC!30 res!5603)) b!19913))

(assert (= (and start!3392 (is-Single!30 res!5603)) b!19905))

(declare-fun m!21959 () Bool)

(assert (=> start!3392 m!21959))

(declare-fun m!21961 () Bool)

(assert (=> b!19910 m!21961))

(declare-fun m!21963 () Bool)

(assert (=> b!19901 m!21963))

(declare-fun m!21965 () Bool)

(assert (=> b!19911 m!21965))

(declare-fun m!21967 () Bool)

(assert (=> b!19909 m!21967))

(declare-fun m!21969 () Bool)

(assert (=> b!19909 m!21969))

(assert (=> b!19909 m!21969))

(declare-fun m!21971 () Bool)

(assert (=> b!19909 m!21971))

(declare-fun m!21973 () Bool)

(assert (=> b!19900 m!21973))

(declare-fun m!21975 () Bool)

(assert (=> b!19908 m!21975))

(declare-fun m!21977 () Bool)

(assert (=> b!19902 m!21977))

(declare-fun m!21979 () Bool)

(assert (=> b!19902 m!21979))

(assert (=> b!19907 m!21977))

(assert (=> b!19907 m!21979))

(declare-fun m!21981 () Bool)

(assert (=> b!19904 m!21981))

(push 1)

(assert (not b!19900))

(assert (not b!19911))

(assert (not b!19904))

(assert (not b!19910))

(assert (not start!3392))

(assert (not b!19909))

(assert (not b!19908))

(assert tp_is_empty!97)

(assert (not b!19907))

(assert (not b!19913))

(assert (not b!19902))

(assert (not b!19901))

(assert (not b!19912))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!12349 () Bool)

(declare-fun res!8666 () Bool)

(declare-fun e!10461 () Bool)

(assert (=> d!12349 (=> res!8666 e!10461)))

(assert (=> d!12349 (= res!8666 (not (is-CC!30 res!5603)))))

(assert (=> d!12349 (= (concInv!29 res!5603) e!10461)))

(declare-fun b!19924 () Bool)

(declare-fun res!8667 () Bool)

(declare-fun e!10462 () Bool)

(assert (=> b!19924 (=> (not res!8667) (not e!10462))))

(assert (=> b!19924 (= res!8667 (not (isEmpty!293 (right!678 res!5603))))))

(declare-fun b!19923 () Bool)

(assert (=> b!19923 (= e!10461 e!10462)))

(declare-fun res!8665 () Bool)

(assert (=> b!19923 (=> (not res!8665) (not e!10462))))

(assert (=> b!19923 (= res!8665 (not (isEmpty!293 (left!675 res!5603))))))

(declare-fun b!19925 () Bool)

(declare-fun res!8664 () Bool)

(assert (=> b!19925 (=> (not res!8664) (not e!10462))))

(assert (=> b!19925 (= res!8664 (concInv!29 (left!675 res!5603)))))

(declare-fun b!19926 () Bool)

(assert (=> b!19926 (= e!10462 (concInv!29 (right!678 res!5603)))))

(assert (= (and d!12349 (not res!8666)) b!19923))

(assert (= (and b!19923 res!8665) b!19924))

(assert (= (and b!19924 res!8667) b!19925))

(assert (= (and b!19925 res!8664) b!19926))

(declare-fun m!21983 () Bool)

(assert (=> b!19924 m!21983))

(declare-fun m!21985 () Bool)

(assert (=> b!19923 m!21985))

(declare-fun m!21987 () Bool)

(assert (=> b!19925 m!21987))

(declare-fun m!21989 () Bool)

(assert (=> b!19926 m!21989))

(assert (=> b!19910 d!12349))

(declare-fun b!19932 () Bool)

(declare-fun e!10465 () Int)

(declare-fun lt!2980 () Int)

(declare-fun lt!2978 () Int)

(assert (=> b!19932 (= e!10465 (+ 1 (ite (>= lt!2980 lt!2978) lt!2980 lt!2978)))))

(assert (=> b!19932 (= lt!2978 (level!28 (right!678 res!5603)))))

(assert (=> b!19932 (= lt!2980 (level!28 (left!675 res!5603)))))

(declare-fun d!12351 () Bool)

(declare-fun lt!2979 () Int)

(assert (=> d!12351 (>= lt!2979 0)))

(assert (=> d!12351 (= lt!2979 e!10465)))

(declare-fun c!4791 () Bool)

(assert (=> d!12351 (= c!4791 (or (is-Empty!41 res!5603) (is-Single!30 res!5603)))))

(assert (=> d!12351 (= (level!28 res!5603) lt!2979)))

(declare-fun b!19931 () Bool)

(assert (=> b!19931 (= e!10465 0)))

(assert (= (and d!12351 c!4791) b!19931))

(assert (= (and d!12351 (not c!4791)) b!19932))

(declare-fun m!21991 () Bool)

(assert (=> b!19932 m!21991))

(declare-fun m!21993 () Bool)

(assert (=> b!19932 m!21993))

(assert (=> b!19907 d!12351))

(declare-fun b!19934 () Bool)

(declare-fun e!10466 () Int)

(declare-fun lt!2983 () Int)

(declare-fun lt!2981 () Int)

(assert (=> b!19934 (= e!10466 (+ 1 (ite (>= lt!2983 lt!2981) lt!2983 lt!2981)))))

(assert (=> b!19934 (= lt!2981 (level!28 (right!678 xs!604)))))

(assert (=> b!19934 (= lt!2983 (level!28 (left!675 xs!604)))))

(declare-fun d!12353 () Bool)

(declare-fun lt!2982 () Int)

(assert (=> d!12353 (>= lt!2982 0)))

(assert (=> d!12353 (= lt!2982 e!10466)))

(declare-fun c!4792 () Bool)

(assert (=> d!12353 (= c!4792 (or (is-Empty!41 xs!604) (is-Single!30 xs!604)))))

(assert (=> d!12353 (= (level!28 xs!604) lt!2982)))

(declare-fun b!19933 () Bool)

(assert (=> b!19933 (= e!10466 0)))

(assert (= (and d!12353 c!4792) b!19933))

(assert (= (and d!12353 (not c!4792)) b!19934))

(declare-fun m!21995 () Bool)

(assert (=> b!19934 m!21995))

(declare-fun m!21997 () Bool)

(assert (=> b!19934 m!21997))

(assert (=> b!19907 d!12353))

(declare-fun b!19943 () Bool)

(declare-fun e!10471 () Bool)

(declare-fun e!10472 () Bool)

(assert (=> b!19943 (= e!10471 e!10472)))

(declare-fun res!8676 () Bool)

(assert (=> b!19943 (=> (not res!8676) (not e!10472))))

(assert (=> b!19943 (= res!8676 (>= (- (level!28 (left!675 res!5603)) (level!28 (right!678 res!5603))) (- 1)))))

(declare-fun b!19944 () Bool)

(declare-fun res!8677 () Bool)

(assert (=> b!19944 (=> (not res!8677) (not e!10472))))

(assert (=> b!19944 (= res!8677 (<= (- (level!28 (left!675 res!5603)) (level!28 (right!678 res!5603))) 1))))

(declare-fun b!19945 () Bool)

(declare-fun res!8678 () Bool)

(assert (=> b!19945 (=> (not res!8678) (not e!10472))))

(assert (=> b!19945 (= res!8678 (balanced!30 (left!675 res!5603)))))

(declare-fun d!12355 () Bool)

(declare-fun res!8679 () Bool)

(assert (=> d!12355 (=> res!8679 e!10471)))

(assert (=> d!12355 (= res!8679 (not (is-CC!30 res!5603)))))

(assert (=> d!12355 (= (balanced!30 res!5603) e!10471)))

(declare-fun b!19946 () Bool)

(assert (=> b!19946 (= e!10472 (balanced!30 (right!678 res!5603)))))

(assert (= (and d!12355 (not res!8679)) b!19943))

(assert (= (and b!19943 res!8676) b!19944))

(assert (= (and b!19944 res!8677) b!19945))

(assert (= (and b!19945 res!8678) b!19946))

(assert (=> b!19943 m!21993))

(assert (=> b!19943 m!21991))

(assert (=> b!19944 m!21993))

(assert (=> b!19944 m!21991))

(declare-fun m!21999 () Bool)

(assert (=> b!19945 m!21999))

(declare-fun m!22001 () Bool)

(assert (=> b!19946 m!22001))

(assert (=> b!19901 d!12355))

(declare-fun d!12357 () Bool)

(assert (=> d!12357 (= (isEmpty!293 res!5603) (= res!5603 Empty!41))))

(assert (=> b!19908 d!12357))

(declare-fun d!12359 () Bool)

(declare-fun lt!2986 () List!336)

(declare-fun size!222 (List!336) Int)

(assert (=> d!12359 (= (size!222 lt!2986) (size!221 res!5603))))

(declare-fun e!10477 () List!336)

(assert (=> d!12359 (= lt!2986 e!10477)))

(declare-fun c!4798 () Bool)

(assert (=> d!12359 (= c!4798 (is-Empty!41 res!5603))))

(assert (=> d!12359 (= (toList!96 res!5603) lt!2986)))

(declare-fun b!19955 () Bool)

(assert (=> b!19955 (= e!10477 Nil!331)))

(declare-fun b!19957 () Bool)

(declare-fun e!10478 () List!336)

(assert (=> b!19957 (= e!10478 (Cons!330 (x!8787 res!5603) Nil!331))))

(declare-fun b!19958 () Bool)

(declare-fun ++!19 (List!336 List!336) List!336)

(assert (=> b!19958 (= e!10478 (++!19 (toList!96 (left!675 res!5603)) (toList!96 (right!678 res!5603))))))

(declare-fun b!19956 () Bool)

(assert (=> b!19956 (= e!10477 e!10478)))

(declare-fun c!4797 () Bool)

(assert (=> b!19956 (= c!4797 (is-Single!30 res!5603))))

(assert (= (and b!19956 c!4797) b!19957))

(assert (= (and b!19956 (not c!4797)) b!19958))

(assert (= (and d!12359 c!4798) b!19955))

(assert (= (and d!12359 (not c!4798)) b!19956))

(declare-fun m!22003 () Bool)

(assert (=> d!12359 m!22003))

(declare-fun m!22005 () Bool)

(assert (=> d!12359 m!22005))

(declare-fun m!22007 () Bool)

(assert (=> b!19958 m!22007))

(declare-fun m!22009 () Bool)

(assert (=> b!19958 m!22009))

(assert (=> b!19958 m!22007))

(assert (=> b!19958 m!22009))

(declare-fun m!22011 () Bool)

(assert (=> b!19958 m!22011))

(assert (=> b!19909 d!12359))

(declare-fun b!19968 () Bool)

(declare-fun e!10483 () List!336)

(declare-fun e!10484 () List!336)

(assert (=> b!19968 (= e!10483 e!10484)))

(declare-fun c!4804 () Bool)

(assert (=> b!19968 (= c!4804 (= i!298 0))))

(declare-fun d!12361 () Bool)

(declare-fun c!4803 () Bool)

(assert (=> d!12361 (= c!4803 (is-Nil!331 (toList!96 xs!604)))))

(assert (=> d!12361 (= (insertAtIndex!9 (toList!96 xs!604) i!298 y!824) e!10483)))

(declare-fun b!19967 () Bool)

(assert (=> b!19967 (= e!10483 (Cons!330 y!824 Nil!331))))

(declare-fun b!19969 () Bool)

(assert (=> b!19969 (= e!10484 (Cons!330 y!824 (toList!96 xs!604)))))

(declare-fun b!19970 () Bool)

(assert (=> b!19970 (= e!10484 (Cons!330 (h!244 (toList!96 xs!604)) (insertAtIndex!9 (t!4331 (toList!96 xs!604)) (- i!298 1) y!824)))))

(assert (= (and b!19968 c!4804) b!19969))

(assert (= (and b!19968 (not c!4804)) b!19970))

(assert (= (and d!12361 c!4803) b!19967))

(assert (= (and d!12361 (not c!4803)) b!19968))

(declare-fun m!22013 () Bool)

(assert (=> b!19970 m!22013))

(assert (=> b!19909 d!12361))

(declare-fun d!12363 () Bool)

(declare-fun lt!2987 () List!336)

(assert (=> d!12363 (= (size!222 lt!2987) (size!221 xs!604))))

(declare-fun e!10485 () List!336)

(assert (=> d!12363 (= lt!2987 e!10485)))

(declare-fun c!4806 () Bool)

(assert (=> d!12363 (= c!4806 (is-Empty!41 xs!604))))

(assert (=> d!12363 (= (toList!96 xs!604) lt!2987)))

(declare-fun b!19971 () Bool)

(assert (=> b!19971 (= e!10485 Nil!331)))

(declare-fun b!19973 () Bool)

(declare-fun e!10486 () List!336)

(assert (=> b!19973 (= e!10486 (Cons!330 (x!8787 xs!604) Nil!331))))

(declare-fun b!19974 () Bool)

(assert (=> b!19974 (= e!10486 (++!19 (toList!96 (left!675 xs!604)) (toList!96 (right!678 xs!604))))))

(declare-fun b!19972 () Bool)

(assert (=> b!19972 (= e!10485 e!10486)))

(declare-fun c!4805 () Bool)

(assert (=> b!19972 (= c!4805 (is-Single!30 xs!604))))

(assert (= (and b!19972 c!4805) b!19973))

(assert (= (and b!19972 (not c!4805)) b!19974))

(assert (= (and d!12363 c!4806) b!19971))

(assert (= (and d!12363 (not c!4806)) b!19972))

(declare-fun m!22015 () Bool)

(assert (=> d!12363 m!22015))

(assert (=> d!12363 m!21973))

(declare-fun m!22017 () Bool)

(assert (=> b!19974 m!22017))

(declare-fun m!22019 () Bool)

(assert (=> b!19974 m!22019))

(assert (=> b!19974 m!22017))

(assert (=> b!19974 m!22019))

(declare-fun m!22021 () Bool)

(assert (=> b!19974 m!22021))

(assert (=> b!19909 d!12363))

(declare-fun b!19984 () Bool)

(declare-fun e!10492 () Int)

(declare-fun e!10491 () Int)

(assert (=> b!19984 (= e!10492 e!10491)))

(declare-fun c!4812 () Bool)

(assert (=> b!19984 (= c!4812 (is-Single!30 xs!604))))

(declare-fun b!19983 () Bool)

(assert (=> b!19983 (= e!10492 0)))

(declare-fun b!19985 () Bool)

(assert (=> b!19985 (= e!10491 1)))

(declare-fun b!19986 () Bool)

(assert (=> b!19986 (= e!10491 (+ (size!221 (left!675 xs!604)) (size!221 (right!678 xs!604))))))

(declare-fun d!12365 () Bool)

(declare-fun lt!2990 () Int)

(assert (=> d!12365 (>= lt!2990 0)))

(assert (=> d!12365 (= lt!2990 e!10492)))

(declare-fun c!4811 () Bool)

(assert (=> d!12365 (= c!4811 (is-Empty!41 xs!604))))

(assert (=> d!12365 (= (size!221 xs!604) lt!2990)))

(assert (= (and b!19984 c!4812) b!19985))

(assert (= (and b!19984 (not c!4812)) b!19986))

(assert (= (and d!12365 c!4811) b!19983))

(assert (= (and d!12365 (not c!4811)) b!19984))

(declare-fun m!22023 () Bool)

(assert (=> b!19986 m!22023))

(declare-fun m!22025 () Bool)

(assert (=> b!19986 m!22025))

(assert (=> b!19900 d!12365))

(declare-fun b!19987 () Bool)

(declare-fun e!10493 () Bool)

(declare-fun e!10494 () Bool)

(assert (=> b!19987 (= e!10493 e!10494)))

(declare-fun res!8681 () Bool)

(assert (=> b!19987 (=> (not res!8681) (not e!10494))))

(assert (=> b!19987 (= res!8681 (>= (- (level!28 (left!675 xs!604)) (level!28 (right!678 xs!604))) (- 1)))))

(declare-fun b!19988 () Bool)

(declare-fun res!8682 () Bool)

(assert (=> b!19988 (=> (not res!8682) (not e!10494))))

(assert (=> b!19988 (= res!8682 (<= (- (level!28 (left!675 xs!604)) (level!28 (right!678 xs!604))) 1))))

(declare-fun b!19989 () Bool)

(declare-fun res!8683 () Bool)

(assert (=> b!19989 (=> (not res!8683) (not e!10494))))

(assert (=> b!19989 (= res!8683 (balanced!30 (left!675 xs!604)))))

(declare-fun d!12367 () Bool)

(declare-fun res!8684 () Bool)

(assert (=> d!12367 (=> res!8684 e!10493)))

(assert (=> d!12367 (= res!8684 (not (is-CC!30 xs!604)))))

(assert (=> d!12367 (= (balanced!30 xs!604) e!10493)))

(declare-fun b!19990 () Bool)

(assert (=> b!19990 (= e!10494 (balanced!30 (right!678 xs!604)))))

(assert (= (and d!12367 (not res!8684)) b!19987))

(assert (= (and b!19987 res!8681) b!19988))

(assert (= (and b!19988 res!8682) b!19989))

(assert (= (and b!19989 res!8683) b!19990))

(assert (=> b!19987 m!21997))

(assert (=> b!19987 m!21995))

(assert (=> b!19988 m!21997))

(assert (=> b!19988 m!21995))

(declare-fun m!22027 () Bool)

(assert (=> b!19989 m!22027))

(declare-fun m!22029 () Bool)

(assert (=> b!19990 m!22029))

(assert (=> b!19911 d!12367))

(declare-fun d!12369 () Bool)

(declare-fun e!10500 () Bool)

(assert (=> d!12369 e!10500))

(declare-fun res!8690 () Bool)

(assert (=> d!12369 (=> res!8690 e!10500)))

(assert (=> d!12369 (= res!8690 (not (is-CC!30 xs!604)))))

(declare-fun e!10499 () Bool)

(assert (=> d!12369 e!10499))

(declare-fun res!8689 () Bool)

(assert (=> d!12369 (=> (not res!8689) (not e!10499))))

(assert (=> d!12369 (= res!8689 (>= i!298 0))))

(assert (=> d!12369 (= (insertAppendAxiomInst!11 xs!604 i!298 y!824) true)))

(declare-fun b!19995 () Bool)

(assert (=> b!19995 (= e!10499 (<= i!298 (size!221 xs!604)))))

(declare-fun b!19996 () Bool)

(declare-fun appendInsertIndex!10 (List!336 List!336 Int T!1753) Bool)

(assert (=> b!19996 (= e!10500 (appendInsertIndex!10 (toList!96 (left!675 xs!604)) (toList!96 (right!678 xs!604)) i!298 y!824))))

(assert (= (and d!12369 res!8689) b!19995))

(assert (= (and d!12369 (not res!8690)) b!19996))

(assert (=> b!19995 m!21973))

(assert (=> b!19996 m!22017))

(assert (=> b!19996 m!22019))

(assert (=> b!19996 m!22017))

(assert (=> b!19996 m!22019))

(declare-fun m!22031 () Bool)

(assert (=> b!19996 m!22031))

(assert (=> b!19904 d!12369))

(declare-fun d!12371 () Bool)

(declare-fun res!8693 () Bool)

(declare-fun e!10501 () Bool)

(assert (=> d!12371 (=> res!8693 e!10501)))

(assert (=> d!12371 (= res!8693 (not (is-CC!30 xs!604)))))

(assert (=> d!12371 (= (concInv!29 xs!604) e!10501)))

(declare-fun b!19998 () Bool)

(declare-fun res!8694 () Bool)

(declare-fun e!10502 () Bool)

(assert (=> b!19998 (=> (not res!8694) (not e!10502))))

(assert (=> b!19998 (= res!8694 (not (isEmpty!293 (right!678 xs!604))))))

(declare-fun b!19997 () Bool)

(assert (=> b!19997 (= e!10501 e!10502)))

(declare-fun res!8692 () Bool)

(assert (=> b!19997 (=> (not res!8692) (not e!10502))))

(assert (=> b!19997 (= res!8692 (not (isEmpty!293 (left!675 xs!604))))))

(declare-fun b!19999 () Bool)

(declare-fun res!8691 () Bool)

(assert (=> b!19999 (=> (not res!8691) (not e!10502))))

(assert (=> b!19999 (= res!8691 (concInv!29 (left!675 xs!604)))))

(declare-fun b!20000 () Bool)

(assert (=> b!20000 (= e!10502 (concInv!29 (right!678 xs!604)))))

(assert (= (and d!12371 (not res!8693)) b!19997))

(assert (= (and b!19997 res!8692) b!19998))

(assert (= (and b!19998 res!8694) b!19999))

(assert (= (and b!19999 res!8691) b!20000))

(declare-fun m!22033 () Bool)

(assert (=> b!19998 m!22033))

(declare-fun m!22035 () Bool)

(assert (=> b!19997 m!22035))

(declare-fun m!22037 () Bool)

(assert (=> b!19999 m!22037))

(declare-fun m!22039 () Bool)

(assert (=> b!20000 m!22039))

(assert (=> start!3392 d!12371))

(assert (=> b!19902 d!12351))

(assert (=> b!19902 d!12353))

(declare-fun b!20007 () Bool)

(declare-fun e!10505 () Bool)

(declare-fun tp!4613 () Bool)

(declare-fun tp!4614 () Bool)

(assert (=> b!20007 (= e!10505 (and tp!4613 tp!4614))))

(declare-fun b!20008 () Bool)

(assert (=> b!20008 (= e!10505 tp_is_empty!97)))

(assert (=> b!19912 (= tp!4605 e!10505)))

(assert (= (and b!19912 (is-CC!30 (left!675 xs!604))) b!20007))

(assert (= (and b!19912 (is-Single!30 (left!675 xs!604))) b!20008))

(declare-fun b!20009 () Bool)

(declare-fun e!10506 () Bool)

(declare-fun tp!4615 () Bool)

(declare-fun tp!4616 () Bool)

(assert (=> b!20009 (= e!10506 (and tp!4615 tp!4616))))

(declare-fun b!20010 () Bool)

(assert (=> b!20010 (= e!10506 tp_is_empty!97)))

(assert (=> b!19912 (= tp!4608 e!10506)))

(assert (= (and b!19912 (is-CC!30 (right!678 xs!604))) b!20009))

(assert (= (and b!19912 (is-Single!30 (right!678 xs!604))) b!20010))

(declare-fun b!20011 () Bool)

(declare-fun e!10507 () Bool)

(declare-fun tp!4617 () Bool)

(declare-fun tp!4618 () Bool)

(assert (=> b!20011 (= e!10507 (and tp!4617 tp!4618))))

(declare-fun b!20012 () Bool)

(assert (=> b!20012 (= e!10507 tp_is_empty!97)))

(assert (=> b!19913 (= tp!4607 e!10507)))

(assert (= (and b!19913 (is-CC!30 (left!675 res!5603))) b!20011))

(assert (= (and b!19913 (is-Single!30 (left!675 res!5603))) b!20012))

(declare-fun b!20013 () Bool)

(declare-fun e!10508 () Bool)

(declare-fun tp!4619 () Bool)

(declare-fun tp!4620 () Bool)

(assert (=> b!20013 (= e!10508 (and tp!4619 tp!4620))))

(declare-fun b!20014 () Bool)

(assert (=> b!20014 (= e!10508 tp_is_empty!97)))

(assert (=> b!19913 (= tp!4606 e!10508)))

(assert (= (and b!19913 (is-CC!30 (right!678 res!5603))) b!20013))

(assert (= (and b!19913 (is-Single!30 (right!678 res!5603))) b!20014))

(push 1)

(assert (not b!20009))

(assert (not b!20013))

(assert (not b!19974))

(assert (not b!19986))

(assert (not b!19999))

(assert (not b!19989))

(assert (not b!19946))

(assert (not b!19987))

(assert (not b!19990))

(assert (not b!19945))

(assert (not b!19943))

(assert (not b!19988))

(assert (not b!19923))

(assert (not d!12359))

(assert (not b!19932))

(assert (not b!19934))

(assert (not b!20011))

(assert (not b!19995))

(assert tp_is_empty!97)

(assert (not b!19958))

(assert (not b!19924))

(assert (not d!12363))

(assert (not b!19998))

(assert (not b!19996))

(assert (not b!20007))

(assert (not b!19944))

(assert (not b!20000))

(assert (not b!19926))

(assert (not b!19925))

(assert (not b!19970))

(assert (not b!19997))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!10519 () List!336)

(declare-fun b!20025 () Bool)

(assert (=> b!20025 (= e!10519 (++!19 (insertAtIndex!9 (toList!96 (left!675 xs!604)) i!298 y!824) (toList!96 (right!678 xs!604))))))

(declare-fun b!20026 () Bool)

(declare-fun e!10520 () Bool)

(assert (=> b!20026 (= e!10520 (<= i!298 (+ (size!222 (toList!96 (left!675 xs!604))) (size!222 (toList!96 (right!678 xs!604))))))))

(declare-fun b!20027 () Bool)

(declare-fun e!10517 () Bool)

(assert (=> b!20027 (= e!10517 (= (insertAtIndex!9 (++!19 (toList!96 (left!675 xs!604)) (toList!96 (right!678 xs!604))) i!298 y!824) e!10519))))

(declare-fun c!4815 () Bool)

(assert (=> b!20027 (= c!4815 (< i!298 (size!222 (toList!96 (left!675 xs!604)))))))

(declare-fun b!20028 () Bool)

(declare-fun e!10518 () Bool)

(assert (=> b!20028 (= e!10518 (appendInsertIndex!10 (t!4331 (toList!96 (left!675 xs!604))) (toList!96 (right!678 xs!604)) (- i!298 1) y!824))))

(declare-fun d!12373 () Bool)

(assert (=> d!12373 e!10517))

(declare-fun res!8701 () Bool)

(assert (=> d!12373 (=> (not res!8701) (not e!10517))))

(assert (=> d!12373 (= res!8701 e!10518)))

(declare-fun res!8703 () Bool)

(assert (=> d!12373 (=> res!8703 e!10518)))

(assert (=> d!12373 (= res!8703 (or (is-Nil!331 (toList!96 (left!675 xs!604))) (= i!298 0)))))

(assert (=> d!12373 e!10520))

(declare-fun res!8702 () Bool)

(assert (=> d!12373 (=> (not res!8702) (not e!10520))))

(assert (=> d!12373 (= res!8702 (<= 0 i!298))))

(assert (=> d!12373 (= (appendInsertIndex!10 (toList!96 (left!675 xs!604)) (toList!96 (right!678 xs!604)) i!298 y!824) true)))

(declare-fun b!20029 () Bool)

(assert (=> b!20029 (= e!10519 (++!19 (toList!96 (left!675 xs!604)) (insertAtIndex!9 (toList!96 (right!678 xs!604)) (- i!298 (size!222 (toList!96 (left!675 xs!604)))) y!824)))))

(assert (= (and d!12373 res!8702) b!20026))

(assert (= (and d!12373 (not res!8703)) b!20028))

(assert (= (and d!12373 res!8701) b!20027))

(assert (= (and b!20027 c!4815) b!20025))

(assert (= (and b!20027 (not c!4815)) b!20029))

(assert (=> b!20026 m!22017))

(declare-fun m!22041 () Bool)

(assert (=> b!20026 m!22041))

(assert (=> b!20026 m!22019))

(declare-fun m!22043 () Bool)

(assert (=> b!20026 m!22043))

(assert (=> b!20027 m!22017))

(assert (=> b!20027 m!22019))

(assert (=> b!20027 m!22021))

(assert (=> b!20027 m!22021))

(declare-fun m!22045 () Bool)

(assert (=> b!20027 m!22045))

(assert (=> b!20027 m!22017))

(assert (=> b!20027 m!22041))

(assert (=> b!20028 m!22019))

(declare-fun m!22047 () Bool)

(assert (=> b!20028 m!22047))

(assert (=> b!20029 m!22017))

(assert (=> b!20029 m!22041))

(assert (=> b!20029 m!22019))

(declare-fun m!22049 () Bool)

(assert (=> b!20029 m!22049))

(assert (=> b!20029 m!22017))

(assert (=> b!20029 m!22049))

(declare-fun m!22051 () Bool)

(assert (=> b!20029 m!22051))

(assert (=> b!20025 m!22017))

(declare-fun m!22053 () Bool)

(assert (=> b!20025 m!22053))

(assert (=> b!20025 m!22053))

(assert (=> b!20025 m!22019))

(declare-fun m!22055 () Bool)

(assert (=> b!20025 m!22055))

(assert (=> b!19996 d!12373))

(declare-fun d!12375 () Bool)

(declare-fun lt!2991 () List!336)

(assert (=> d!12375 (= (size!222 lt!2991) (size!221 (left!675 xs!604)))))

(declare-fun e!10521 () List!336)

(assert (=> d!12375 (= lt!2991 e!10521)))

(declare-fun c!4817 () Bool)

(assert (=> d!12375 (= c!4817 (is-Empty!41 (left!675 xs!604)))))

(assert (=> d!12375 (= (toList!96 (left!675 xs!604)) lt!2991)))

(declare-fun b!20030 () Bool)

(assert (=> b!20030 (= e!10521 Nil!331)))

(declare-fun b!20032 () Bool)

(declare-fun e!10522 () List!336)

(assert (=> b!20032 (= e!10522 (Cons!330 (x!8787 (left!675 xs!604)) Nil!331))))

(declare-fun b!20033 () Bool)

(assert (=> b!20033 (= e!10522 (++!19 (toList!96 (left!675 (left!675 xs!604))) (toList!96 (right!678 (left!675 xs!604)))))))

(declare-fun b!20031 () Bool)

(assert (=> b!20031 (= e!10521 e!10522)))

(declare-fun c!4816 () Bool)

(assert (=> b!20031 (= c!4816 (is-Single!30 (left!675 xs!604)))))

(assert (= (and b!20031 c!4816) b!20032))

(assert (= (and b!20031 (not c!4816)) b!20033))

(assert (= (and d!12375 c!4817) b!20030))

(assert (= (and d!12375 (not c!4817)) b!20031))

(declare-fun m!22057 () Bool)

(assert (=> d!12375 m!22057))

(assert (=> d!12375 m!22023))

(declare-fun m!22059 () Bool)

(assert (=> b!20033 m!22059))

(declare-fun m!22061 () Bool)

(assert (=> b!20033 m!22061))

(assert (=> b!20033 m!22059))

(assert (=> b!20033 m!22061))

(declare-fun m!22063 () Bool)

(assert (=> b!20033 m!22063))

(assert (=> b!19996 d!12375))

(declare-fun d!12377 () Bool)

(declare-fun lt!2992 () List!336)

(assert (=> d!12377 (= (size!222 lt!2992) (size!221 (right!678 xs!604)))))

(declare-fun e!10523 () List!336)

(assert (=> d!12377 (= lt!2992 e!10523)))

(declare-fun c!4819 () Bool)

(assert (=> d!12377 (= c!4819 (is-Empty!41 (right!678 xs!604)))))

(assert (=> d!12377 (= (toList!96 (right!678 xs!604)) lt!2992)))

(declare-fun b!20034 () Bool)

(assert (=> b!20034 (= e!10523 Nil!331)))

(declare-fun b!20036 () Bool)

(declare-fun e!10524 () List!336)

(assert (=> b!20036 (= e!10524 (Cons!330 (x!8787 (right!678 xs!604)) Nil!331))))

(declare-fun b!20037 () Bool)

(assert (=> b!20037 (= e!10524 (++!19 (toList!96 (left!675 (right!678 xs!604))) (toList!96 (right!678 (right!678 xs!604)))))))

(declare-fun b!20035 () Bool)

(assert (=> b!20035 (= e!10523 e!10524)))

(declare-fun c!4818 () Bool)

(assert (=> b!20035 (= c!4818 (is-Single!30 (right!678 xs!604)))))

(assert (= (and b!20035 c!4818) b!20036))

(assert (= (and b!20035 (not c!4818)) b!20037))

(assert (= (and d!12377 c!4819) b!20034))

(assert (= (and d!12377 (not c!4819)) b!20035))

(declare-fun m!22065 () Bool)

(assert (=> d!12377 m!22065))

(assert (=> d!12377 m!22025))

(declare-fun m!22067 () Bool)

(assert (=> b!20037 m!22067))

(declare-fun m!22069 () Bool)

(assert (=> b!20037 m!22069))

(assert (=> b!20037 m!22067))

(assert (=> b!20037 m!22069))

(declare-fun m!22071 () Bool)

(assert (=> b!20037 m!22071))

(assert (=> b!19996 d!12377))

(declare-fun d!12379 () Bool)

(declare-fun res!8706 () Bool)

(declare-fun e!10525 () Bool)

(assert (=> d!12379 (=> res!8706 e!10525)))

(assert (=> d!12379 (= res!8706 (not (is-CC!30 (left!675 xs!604))))))

(assert (=> d!12379 (= (concInv!29 (left!675 xs!604)) e!10525)))

(declare-fun b!20039 () Bool)

(declare-fun res!8707 () Bool)

(declare-fun e!10526 () Bool)

(assert (=> b!20039 (=> (not res!8707) (not e!10526))))

(assert (=> b!20039 (= res!8707 (not (isEmpty!293 (right!678 (left!675 xs!604)))))))

(declare-fun b!20038 () Bool)

(assert (=> b!20038 (= e!10525 e!10526)))

(declare-fun res!8705 () Bool)

(assert (=> b!20038 (=> (not res!8705) (not e!10526))))

(assert (=> b!20038 (= res!8705 (not (isEmpty!293 (left!675 (left!675 xs!604)))))))

(declare-fun b!20040 () Bool)

(declare-fun res!8704 () Bool)

(assert (=> b!20040 (=> (not res!8704) (not e!10526))))

(assert (=> b!20040 (= res!8704 (concInv!29 (left!675 (left!675 xs!604))))))

(declare-fun b!20041 () Bool)

(assert (=> b!20041 (= e!10526 (concInv!29 (right!678 (left!675 xs!604))))))

(assert (= (and d!12379 (not res!8706)) b!20038))

(assert (= (and b!20038 res!8705) b!20039))

(assert (= (and b!20039 res!8707) b!20040))

(assert (= (and b!20040 res!8704) b!20041))

(declare-fun m!22073 () Bool)

(assert (=> b!20039 m!22073))

(declare-fun m!22075 () Bool)

(assert (=> b!20038 m!22075))

(declare-fun m!22077 () Bool)

(assert (=> b!20040 m!22077))

(declare-fun m!22079 () Bool)

(assert (=> b!20041 m!22079))

(assert (=> b!19999 d!12379))

(declare-fun b!20043 () Bool)

(declare-fun e!10527 () Int)

(declare-fun lt!2995 () Int)

(declare-fun lt!2993 () Int)

(assert (=> b!20043 (= e!10527 (+ 1 (ite (>= lt!2995 lt!2993) lt!2995 lt!2993)))))

(assert (=> b!20043 (= lt!2993 (level!28 (right!678 (right!678 xs!604))))))

(assert (=> b!20043 (= lt!2995 (level!28 (left!675 (right!678 xs!604))))))

(declare-fun d!12381 () Bool)

(declare-fun lt!2994 () Int)

(assert (=> d!12381 (>= lt!2994 0)))

(assert (=> d!12381 (= lt!2994 e!10527)))

(declare-fun c!4820 () Bool)

(assert (=> d!12381 (= c!4820 (or (is-Empty!41 (right!678 xs!604)) (is-Single!30 (right!678 xs!604))))))

(assert (=> d!12381 (= (level!28 (right!678 xs!604)) lt!2994)))

(declare-fun b!20042 () Bool)

(assert (=> b!20042 (= e!10527 0)))

(assert (= (and d!12381 c!4820) b!20042))

(assert (= (and d!12381 (not c!4820)) b!20043))

(declare-fun m!22081 () Bool)

(assert (=> b!20043 m!22081))

(declare-fun m!22083 () Bool)

(assert (=> b!20043 m!22083))

(assert (=> b!19934 d!12381))

(declare-fun b!20045 () Bool)

(declare-fun e!10528 () Int)

(declare-fun lt!2998 () Int)

(declare-fun lt!2996 () Int)

(assert (=> b!20045 (= e!10528 (+ 1 (ite (>= lt!2998 lt!2996) lt!2998 lt!2996)))))

(assert (=> b!20045 (= lt!2996 (level!28 (right!678 (left!675 xs!604))))))

(assert (=> b!20045 (= lt!2998 (level!28 (left!675 (left!675 xs!604))))))

(declare-fun d!12383 () Bool)

(declare-fun lt!2997 () Int)

(assert (=> d!12383 (>= lt!2997 0)))

(assert (=> d!12383 (= lt!2997 e!10528)))

(declare-fun c!4821 () Bool)

(assert (=> d!12383 (= c!4821 (or (is-Empty!41 (left!675 xs!604)) (is-Single!30 (left!675 xs!604))))))

(assert (=> d!12383 (= (level!28 (left!675 xs!604)) lt!2997)))

(declare-fun b!20044 () Bool)

(assert (=> b!20044 (= e!10528 0)))

(assert (= (and d!12383 c!4821) b!20044))

(assert (= (and d!12383 (not c!4821)) b!20045))

(declare-fun m!22085 () Bool)

(assert (=> b!20045 m!22085))

(declare-fun m!22087 () Bool)

(assert (=> b!20045 m!22087))

(assert (=> b!19934 d!12383))

(declare-fun b!20046 () Bool)

(declare-fun e!10529 () Bool)

(declare-fun e!10530 () Bool)

(assert (=> b!20046 (= e!10529 e!10530)))

(declare-fun res!8708 () Bool)

(assert (=> b!20046 (=> (not res!8708) (not e!10530))))

(assert (=> b!20046 (= res!8708 (>= (- (level!28 (left!675 (left!675 res!5603))) (level!28 (right!678 (left!675 res!5603)))) (- 1)))))

(declare-fun b!20047 () Bool)

(declare-fun res!8709 () Bool)

(assert (=> b!20047 (=> (not res!8709) (not e!10530))))

(assert (=> b!20047 (= res!8709 (<= (- (level!28 (left!675 (left!675 res!5603))) (level!28 (right!678 (left!675 res!5603)))) 1))))

(declare-fun b!20048 () Bool)

(declare-fun res!8710 () Bool)

(assert (=> b!20048 (=> (not res!8710) (not e!10530))))

(assert (=> b!20048 (= res!8710 (balanced!30 (left!675 (left!675 res!5603))))))

(declare-fun d!12385 () Bool)

(declare-fun res!8711 () Bool)

(assert (=> d!12385 (=> res!8711 e!10529)))

(assert (=> d!12385 (= res!8711 (not (is-CC!30 (left!675 res!5603))))))

(assert (=> d!12385 (= (balanced!30 (left!675 res!5603)) e!10529)))

(declare-fun b!20049 () Bool)

(assert (=> b!20049 (= e!10530 (balanced!30 (right!678 (left!675 res!5603))))))

(assert (= (and d!12385 (not res!8711)) b!20046))

(assert (= (and b!20046 res!8708) b!20047))

(assert (= (and b!20047 res!8709) b!20048))

(assert (= (and b!20048 res!8710) b!20049))

(declare-fun m!22089 () Bool)

(assert (=> b!20046 m!22089))

(declare-fun m!22091 () Bool)

(assert (=> b!20046 m!22091))

(assert (=> b!20047 m!22089))

(assert (=> b!20047 m!22091))

(declare-fun m!22093 () Bool)

(assert (=> b!20048 m!22093))

(declare-fun m!22095 () Bool)

(assert (=> b!20049 m!22095))

(assert (=> b!19945 d!12385))

(declare-fun b!20050 () Bool)

(declare-fun e!10531 () Bool)

(declare-fun e!10532 () Bool)

(assert (=> b!20050 (= e!10531 e!10532)))

(declare-fun res!8712 () Bool)

(assert (=> b!20050 (=> (not res!8712) (not e!10532))))

(assert (=> b!20050 (= res!8712 (>= (- (level!28 (left!675 (left!675 xs!604))) (level!28 (right!678 (left!675 xs!604)))) (- 1)))))

(declare-fun b!20051 () Bool)

(declare-fun res!8713 () Bool)

(assert (=> b!20051 (=> (not res!8713) (not e!10532))))

(assert (=> b!20051 (= res!8713 (<= (- (level!28 (left!675 (left!675 xs!604))) (level!28 (right!678 (left!675 xs!604)))) 1))))

(declare-fun b!20052 () Bool)

(declare-fun res!8714 () Bool)

(assert (=> b!20052 (=> (not res!8714) (not e!10532))))

(assert (=> b!20052 (= res!8714 (balanced!30 (left!675 (left!675 xs!604))))))

(declare-fun d!12387 () Bool)

(declare-fun res!8715 () Bool)

(assert (=> d!12387 (=> res!8715 e!10531)))

(assert (=> d!12387 (= res!8715 (not (is-CC!30 (left!675 xs!604))))))

(assert (=> d!12387 (= (balanced!30 (left!675 xs!604)) e!10531)))

(declare-fun b!20053 () Bool)

(assert (=> b!20053 (= e!10532 (balanced!30 (right!678 (left!675 xs!604))))))

(assert (= (and d!12387 (not res!8715)) b!20050))

(assert (= (and b!20050 res!8712) b!20051))

(assert (= (and b!20051 res!8713) b!20052))

(assert (= (and b!20052 res!8714) b!20053))

(assert (=> b!20050 m!22087))

(assert (=> b!20050 m!22085))

(assert (=> b!20051 m!22087))

(assert (=> b!20051 m!22085))

(declare-fun m!22097 () Bool)

(assert (=> b!20052 m!22097))

(declare-fun m!22099 () Bool)

(assert (=> b!20053 m!22099))

(assert (=> b!19989 d!12387))

(declare-fun b!20055 () Bool)

(declare-fun e!10533 () Int)

(declare-fun lt!3001 () Int)

(declare-fun lt!2999 () Int)

(assert (=> b!20055 (= e!10533 (+ 1 (ite (>= lt!3001 lt!2999) lt!3001 lt!2999)))))

(assert (=> b!20055 (= lt!2999 (level!28 (right!678 (left!675 res!5603))))))

(assert (=> b!20055 (= lt!3001 (level!28 (left!675 (left!675 res!5603))))))

(declare-fun d!12389 () Bool)

(declare-fun lt!3000 () Int)

(assert (=> d!12389 (>= lt!3000 0)))

(assert (=> d!12389 (= lt!3000 e!10533)))

(declare-fun c!4822 () Bool)

(assert (=> d!12389 (= c!4822 (or (is-Empty!41 (left!675 res!5603)) (is-Single!30 (left!675 res!5603))))))

(assert (=> d!12389 (= (level!28 (left!675 res!5603)) lt!3000)))

(declare-fun b!20054 () Bool)

(assert (=> b!20054 (= e!10533 0)))

(assert (= (and d!12389 c!4822) b!20054))

(assert (= (and d!12389 (not c!4822)) b!20055))

(assert (=> b!20055 m!22091))

(assert (=> b!20055 m!22089))

(assert (=> b!19943 d!12389))

(declare-fun b!20057 () Bool)

(declare-fun e!10534 () Int)

(declare-fun lt!3004 () Int)

(declare-fun lt!3002 () Int)

(assert (=> b!20057 (= e!10534 (+ 1 (ite (>= lt!3004 lt!3002) lt!3004 lt!3002)))))

(assert (=> b!20057 (= lt!3002 (level!28 (right!678 (right!678 res!5603))))))

(assert (=> b!20057 (= lt!3004 (level!28 (left!675 (right!678 res!5603))))))

(declare-fun d!12391 () Bool)

(declare-fun lt!3003 () Int)

(assert (=> d!12391 (>= lt!3003 0)))

(assert (=> d!12391 (= lt!3003 e!10534)))

(declare-fun c!4823 () Bool)

(assert (=> d!12391 (= c!4823 (or (is-Empty!41 (right!678 res!5603)) (is-Single!30 (right!678 res!5603))))))

(assert (=> d!12391 (= (level!28 (right!678 res!5603)) lt!3003)))

(declare-fun b!20056 () Bool)

(assert (=> b!20056 (= e!10534 0)))

(assert (= (and d!12391 c!4823) b!20056))

(assert (= (and d!12391 (not c!4823)) b!20057))

(declare-fun m!22101 () Bool)

(assert (=> b!20057 m!22101))

(declare-fun m!22103 () Bool)

(assert (=> b!20057 m!22103))

(assert (=> b!19943 d!12391))

(declare-fun d!12393 () Bool)

(declare-fun lt!3007 () Int)

(assert (=> d!12393 (>= lt!3007 0)))

(declare-fun e!10537 () Int)

(assert (=> d!12393 (= lt!3007 e!10537)))

(declare-fun c!4826 () Bool)

(assert (=> d!12393 (= c!4826 (is-Nil!331 lt!2986))))

(assert (=> d!12393 (= (size!222 lt!2986) lt!3007)))

(declare-fun b!20062 () Bool)

(assert (=> b!20062 (= e!10537 0)))

(declare-fun b!20063 () Bool)

(assert (=> b!20063 (= e!10537 (+ 1 (size!222 (t!4331 lt!2986))))))

(assert (= (and d!12393 c!4826) b!20062))

(assert (= (and d!12393 (not c!4826)) b!20063))

(declare-fun m!22105 () Bool)

(assert (=> b!20063 m!22105))

(assert (=> d!12359 d!12393))

(declare-fun b!20065 () Bool)

(declare-fun e!10539 () Int)

(declare-fun e!10538 () Int)

(assert (=> b!20065 (= e!10539 e!10538)))

(declare-fun c!4828 () Bool)

(assert (=> b!20065 (= c!4828 (is-Single!30 res!5603))))

(declare-fun b!20064 () Bool)

(assert (=> b!20064 (= e!10539 0)))

(declare-fun b!20066 () Bool)

(assert (=> b!20066 (= e!10538 1)))

(declare-fun b!20067 () Bool)

(assert (=> b!20067 (= e!10538 (+ (size!221 (left!675 res!5603)) (size!221 (right!678 res!5603))))))

(declare-fun d!12395 () Bool)

(declare-fun lt!3008 () Int)

(assert (=> d!12395 (>= lt!3008 0)))

(assert (=> d!12395 (= lt!3008 e!10539)))

(declare-fun c!4827 () Bool)

(assert (=> d!12395 (= c!4827 (is-Empty!41 res!5603))))

(assert (=> d!12395 (= (size!221 res!5603) lt!3008)))

(assert (= (and b!20065 c!4828) b!20066))

(assert (= (and b!20065 (not c!4828)) b!20067))

(assert (= (and d!12395 c!4827) b!20064))

(assert (= (and d!12395 (not c!4827)) b!20065))

(declare-fun m!22107 () Bool)

(assert (=> b!20067 m!22107))

(declare-fun m!22109 () Bool)

(assert (=> b!20067 m!22109))

(assert (=> d!12359 d!12395))

(declare-fun d!12397 () Bool)

(declare-fun e!10545 () Bool)

(assert (=> d!12397 e!10545))

(declare-fun res!8722 () Bool)

(assert (=> d!12397 (=> (not res!8722) (not e!10545))))

(declare-fun lt!3011 () List!336)

(declare-fun content!57 (List!336) (Set T!1753))

(assert (=> d!12397 (= res!8722 (= (content!57 lt!3011) (union (content!57 (toList!96 (left!675 xs!604))) (content!57 (toList!96 (right!678 xs!604))))))))

(declare-fun e!10544 () List!336)

(assert (=> d!12397 (= lt!3011 e!10544)))

(declare-fun c!4831 () Bool)

(assert (=> d!12397 (= c!4831 (is-Nil!331 (toList!96 (left!675 xs!604))))))

(assert (=> d!12397 (= (++!19 (toList!96 (left!675 xs!604)) (toList!96 (right!678 xs!604))) lt!3011)))

(declare-fun b!20078 () Bool)

(declare-fun res!8721 () Bool)

(assert (=> b!20078 (=> (not res!8721) (not e!10545))))

(assert (=> b!20078 (= res!8721 (= (size!222 lt!3011) (+ (size!222 (toList!96 (left!675 xs!604))) (size!222 (toList!96 (right!678 xs!604))))))))

(declare-fun b!20077 () Bool)

(assert (=> b!20077 (= e!10544 (Cons!330 (h!244 (toList!96 (left!675 xs!604))) (++!19 (t!4331 (toList!96 (left!675 xs!604))) (toList!96 (right!678 xs!604)))))))

(declare-fun b!20079 () Bool)

(assert (=> b!20079 (= e!10545 (or (not (= (toList!96 (right!678 xs!604)) Nil!331)) (= lt!3011 (toList!96 (left!675 xs!604)))))))

(declare-fun b!20076 () Bool)

(assert (=> b!20076 (= e!10544 (toList!96 (right!678 xs!604)))))

(assert (= (and d!12397 c!4831) b!20076))

(assert (= (and d!12397 (not c!4831)) b!20077))

(assert (= (and d!12397 res!8722) b!20078))

(assert (= (and b!20078 res!8721) b!20079))

(declare-fun m!22111 () Bool)

(assert (=> d!12397 m!22111))

(assert (=> d!12397 m!22017))

(declare-fun m!22113 () Bool)

(assert (=> d!12397 m!22113))

(assert (=> d!12397 m!22019))

(declare-fun m!22115 () Bool)

(assert (=> d!12397 m!22115))

(declare-fun m!22117 () Bool)

(assert (=> b!20078 m!22117))

(assert (=> b!20078 m!22017))

(assert (=> b!20078 m!22041))

(assert (=> b!20078 m!22019))

(assert (=> b!20078 m!22043))

(assert (=> b!20077 m!22019))

(declare-fun m!22119 () Bool)

(assert (=> b!20077 m!22119))

(assert (=> b!19974 d!12397))

(assert (=> b!19974 d!12375))

(assert (=> b!19974 d!12377))

(declare-fun d!12399 () Bool)

(assert (=> d!12399 (= (isEmpty!293 (left!675 res!5603)) (= (left!675 res!5603) Empty!41))))

(assert (=> b!19923 d!12399))

(declare-fun b!20081 () Bool)

(declare-fun e!10546 () List!336)

(declare-fun e!10547 () List!336)

(assert (=> b!20081 (= e!10546 e!10547)))

(declare-fun c!4833 () Bool)

(assert (=> b!20081 (= c!4833 (= (- i!298 1) 0))))

(declare-fun d!12401 () Bool)

(declare-fun c!4832 () Bool)

(assert (=> d!12401 (= c!4832 (is-Nil!331 (t!4331 (toList!96 xs!604))))))

(assert (=> d!12401 (= (insertAtIndex!9 (t!4331 (toList!96 xs!604)) (- i!298 1) y!824) e!10546)))

(declare-fun b!20080 () Bool)

(assert (=> b!20080 (= e!10546 (Cons!330 y!824 Nil!331))))

(declare-fun b!20082 () Bool)

(assert (=> b!20082 (= e!10547 (Cons!330 y!824 (t!4331 (toList!96 xs!604))))))

(declare-fun b!20083 () Bool)

(assert (=> b!20083 (= e!10547 (Cons!330 (h!244 (t!4331 (toList!96 xs!604))) (insertAtIndex!9 (t!4331 (t!4331 (toList!96 xs!604))) (- (- i!298 1) 1) y!824)))))

(assert (= (and b!20081 c!4833) b!20082))

(assert (= (and b!20081 (not c!4833)) b!20083))

(assert (= (and d!12401 c!4832) b!20080))

(assert (= (and d!12401 (not c!4832)) b!20081))

(declare-fun m!22121 () Bool)

(assert (=> b!20083 m!22121))

(assert (=> b!19970 d!12401))

(declare-fun d!12403 () Bool)

(declare-fun lt!3012 () Int)

(assert (=> d!12403 (>= lt!3012 0)))

(declare-fun e!10548 () Int)

(assert (=> d!12403 (= lt!3012 e!10548)))

(declare-fun c!4834 () Bool)

(assert (=> d!12403 (= c!4834 (is-Nil!331 lt!2987))))

(assert (=> d!12403 (= (size!222 lt!2987) lt!3012)))

(declare-fun b!20084 () Bool)

(assert (=> b!20084 (= e!10548 0)))

(declare-fun b!20085 () Bool)

(assert (=> b!20085 (= e!10548 (+ 1 (size!222 (t!4331 lt!2987))))))

(assert (= (and d!12403 c!4834) b!20084))

(assert (= (and d!12403 (not c!4834)) b!20085))

(declare-fun m!22123 () Bool)

(assert (=> b!20085 m!22123))

(assert (=> d!12363 d!12403))

(assert (=> d!12363 d!12365))

(declare-fun b!20086 () Bool)

(declare-fun e!10549 () Bool)

(declare-fun e!10550 () Bool)

(assert (=> b!20086 (= e!10549 e!10550)))

(declare-fun res!8723 () Bool)

(assert (=> b!20086 (=> (not res!8723) (not e!10550))))

(assert (=> b!20086 (= res!8723 (>= (- (level!28 (left!675 (right!678 xs!604))) (level!28 (right!678 (right!678 xs!604)))) (- 1)))))

(declare-fun b!20087 () Bool)

(declare-fun res!8724 () Bool)

(assert (=> b!20087 (=> (not res!8724) (not e!10550))))

(assert (=> b!20087 (= res!8724 (<= (- (level!28 (left!675 (right!678 xs!604))) (level!28 (right!678 (right!678 xs!604)))) 1))))

(declare-fun b!20088 () Bool)

(declare-fun res!8725 () Bool)

(assert (=> b!20088 (=> (not res!8725) (not e!10550))))

(assert (=> b!20088 (= res!8725 (balanced!30 (left!675 (right!678 xs!604))))))

(declare-fun d!12405 () Bool)

(declare-fun res!8726 () Bool)

(assert (=> d!12405 (=> res!8726 e!10549)))

(assert (=> d!12405 (= res!8726 (not (is-CC!30 (right!678 xs!604))))))

(assert (=> d!12405 (= (balanced!30 (right!678 xs!604)) e!10549)))

(declare-fun b!20089 () Bool)

(assert (=> b!20089 (= e!10550 (balanced!30 (right!678 (right!678 xs!604))))))

(assert (= (and d!12405 (not res!8726)) b!20086))

(assert (= (and b!20086 res!8723) b!20087))

(assert (= (and b!20087 res!8724) b!20088))

(assert (= (and b!20088 res!8725) b!20089))

(assert (=> b!20086 m!22083))

(assert (=> b!20086 m!22081))

(assert (=> b!20087 m!22083))

(assert (=> b!20087 m!22081))

(declare-fun m!22125 () Bool)

(assert (=> b!20088 m!22125))

(declare-fun m!22127 () Bool)

(assert (=> b!20089 m!22127))

(assert (=> b!19990 d!12405))

(declare-fun d!12407 () Bool)

(declare-fun res!8729 () Bool)

(declare-fun e!10551 () Bool)

(assert (=> d!12407 (=> res!8729 e!10551)))

(assert (=> d!12407 (= res!8729 (not (is-CC!30 (right!678 xs!604))))))

(assert (=> d!12407 (= (concInv!29 (right!678 xs!604)) e!10551)))

(declare-fun b!20091 () Bool)

(declare-fun res!8730 () Bool)

(declare-fun e!10552 () Bool)

(assert (=> b!20091 (=> (not res!8730) (not e!10552))))

(assert (=> b!20091 (= res!8730 (not (isEmpty!293 (right!678 (right!678 xs!604)))))))

(declare-fun b!20090 () Bool)

(assert (=> b!20090 (= e!10551 e!10552)))

(declare-fun res!8728 () Bool)

(assert (=> b!20090 (=> (not res!8728) (not e!10552))))

(assert (=> b!20090 (= res!8728 (not (isEmpty!293 (left!675 (right!678 xs!604)))))))

(declare-fun b!20092 () Bool)

(declare-fun res!8727 () Bool)

(assert (=> b!20092 (=> (not res!8727) (not e!10552))))

(assert (=> b!20092 (= res!8727 (concInv!29 (left!675 (right!678 xs!604))))))

(declare-fun b!20093 () Bool)

(assert (=> b!20093 (= e!10552 (concInv!29 (right!678 (right!678 xs!604))))))

(assert (= (and d!12407 (not res!8729)) b!20090))

(assert (= (and b!20090 res!8728) b!20091))

(assert (= (and b!20091 res!8730) b!20092))

(assert (= (and b!20092 res!8727) b!20093))

(declare-fun m!22129 () Bool)

(assert (=> b!20091 m!22129))

(declare-fun m!22131 () Bool)

(assert (=> b!20090 m!22131))

(declare-fun m!22133 () Bool)

(assert (=> b!20092 m!22133))

(declare-fun m!22135 () Bool)

(assert (=> b!20093 m!22135))

(assert (=> b!20000 d!12407))

(assert (=> b!19995 d!12365))

(assert (=> b!19944 d!12389))

(assert (=> b!19944 d!12391))

(declare-fun d!12409 () Bool)

(assert (=> d!12409 (= (isEmpty!293 (right!678 xs!604)) (= (right!678 xs!604) Empty!41))))

(assert (=> b!19998 d!12409))

(declare-fun d!12411 () Bool)

(declare-fun e!10554 () Bool)

(assert (=> d!12411 e!10554))

(declare-fun res!8732 () Bool)

(assert (=> d!12411 (=> (not res!8732) (not e!10554))))

(declare-fun lt!3013 () List!336)

(assert (=> d!12411 (= res!8732 (= (content!57 lt!3013) (union (content!57 (toList!96 (left!675 res!5603))) (content!57 (toList!96 (right!678 res!5603))))))))

(declare-fun e!10553 () List!336)

(assert (=> d!12411 (= lt!3013 e!10553)))

(declare-fun c!4835 () Bool)

(assert (=> d!12411 (= c!4835 (is-Nil!331 (toList!96 (left!675 res!5603))))))

(assert (=> d!12411 (= (++!19 (toList!96 (left!675 res!5603)) (toList!96 (right!678 res!5603))) lt!3013)))

(declare-fun b!20096 () Bool)

(declare-fun res!8731 () Bool)

(assert (=> b!20096 (=> (not res!8731) (not e!10554))))

(assert (=> b!20096 (= res!8731 (= (size!222 lt!3013) (+ (size!222 (toList!96 (left!675 res!5603))) (size!222 (toList!96 (right!678 res!5603))))))))

(declare-fun b!20095 () Bool)

(assert (=> b!20095 (= e!10553 (Cons!330 (h!244 (toList!96 (left!675 res!5603))) (++!19 (t!4331 (toList!96 (left!675 res!5603))) (toList!96 (right!678 res!5603)))))))

(declare-fun b!20097 () Bool)

(assert (=> b!20097 (= e!10554 (or (not (= (toList!96 (right!678 res!5603)) Nil!331)) (= lt!3013 (toList!96 (left!675 res!5603)))))))

(declare-fun b!20094 () Bool)

(assert (=> b!20094 (= e!10553 (toList!96 (right!678 res!5603)))))

(assert (= (and d!12411 c!4835) b!20094))

(assert (= (and d!12411 (not c!4835)) b!20095))

(assert (= (and d!12411 res!8732) b!20096))

(assert (= (and b!20096 res!8731) b!20097))

(declare-fun m!22137 () Bool)

(assert (=> d!12411 m!22137))

(assert (=> d!12411 m!22007))

(declare-fun m!22139 () Bool)

(assert (=> d!12411 m!22139))

(assert (=> d!12411 m!22009))

(declare-fun m!22141 () Bool)

(assert (=> d!12411 m!22141))

(declare-fun m!22143 () Bool)

(assert (=> b!20096 m!22143))

(assert (=> b!20096 m!22007))

(declare-fun m!22145 () Bool)

(assert (=> b!20096 m!22145))

(assert (=> b!20096 m!22009))

(declare-fun m!22147 () Bool)

(assert (=> b!20096 m!22147))

(assert (=> b!20095 m!22009))

(declare-fun m!22149 () Bool)

(assert (=> b!20095 m!22149))

(assert (=> b!19958 d!12411))

(declare-fun d!12413 () Bool)

(declare-fun lt!3014 () List!336)

(assert (=> d!12413 (= (size!222 lt!3014) (size!221 (left!675 res!5603)))))

(declare-fun e!10555 () List!336)

(assert (=> d!12413 (= lt!3014 e!10555)))

(declare-fun c!4837 () Bool)

(assert (=> d!12413 (= c!4837 (is-Empty!41 (left!675 res!5603)))))

(assert (=> d!12413 (= (toList!96 (left!675 res!5603)) lt!3014)))

(declare-fun b!20098 () Bool)

(assert (=> b!20098 (= e!10555 Nil!331)))

(declare-fun b!20100 () Bool)

(declare-fun e!10556 () List!336)

(assert (=> b!20100 (= e!10556 (Cons!330 (x!8787 (left!675 res!5603)) Nil!331))))

(declare-fun b!20101 () Bool)

(assert (=> b!20101 (= e!10556 (++!19 (toList!96 (left!675 (left!675 res!5603))) (toList!96 (right!678 (left!675 res!5603)))))))

(declare-fun b!20099 () Bool)

(assert (=> b!20099 (= e!10555 e!10556)))

(declare-fun c!4836 () Bool)

(assert (=> b!20099 (= c!4836 (is-Single!30 (left!675 res!5603)))))

(assert (= (and b!20099 c!4836) b!20100))

(assert (= (and b!20099 (not c!4836)) b!20101))

(assert (= (and d!12413 c!4837) b!20098))

(assert (= (and d!12413 (not c!4837)) b!20099))

(declare-fun m!22151 () Bool)

(assert (=> d!12413 m!22151))

(assert (=> d!12413 m!22107))

(declare-fun m!22153 () Bool)

(assert (=> b!20101 m!22153))

(declare-fun m!22155 () Bool)

(assert (=> b!20101 m!22155))

(assert (=> b!20101 m!22153))

(assert (=> b!20101 m!22155))

(declare-fun m!22157 () Bool)

(assert (=> b!20101 m!22157))

(assert (=> b!19958 d!12413))

(declare-fun d!12415 () Bool)

(declare-fun lt!3015 () List!336)

(assert (=> d!12415 (= (size!222 lt!3015) (size!221 (right!678 res!5603)))))

(declare-fun e!10557 () List!336)

(assert (=> d!12415 (= lt!3015 e!10557)))

(declare-fun c!4839 () Bool)

(assert (=> d!12415 (= c!4839 (is-Empty!41 (right!678 res!5603)))))

(assert (=> d!12415 (= (toList!96 (right!678 res!5603)) lt!3015)))

(declare-fun b!20102 () Bool)

(assert (=> b!20102 (= e!10557 Nil!331)))

(declare-fun b!20104 () Bool)

(declare-fun e!10558 () List!336)

(assert (=> b!20104 (= e!10558 (Cons!330 (x!8787 (right!678 res!5603)) Nil!331))))

(declare-fun b!20105 () Bool)

(assert (=> b!20105 (= e!10558 (++!19 (toList!96 (left!675 (right!678 res!5603))) (toList!96 (right!678 (right!678 res!5603)))))))

(declare-fun b!20103 () Bool)

(assert (=> b!20103 (= e!10557 e!10558)))

(declare-fun c!4838 () Bool)

(assert (=> b!20103 (= c!4838 (is-Single!30 (right!678 res!5603)))))

(assert (= (and b!20103 c!4838) b!20104))

(assert (= (and b!20103 (not c!4838)) b!20105))

(assert (= (and d!12415 c!4839) b!20102))

(assert (= (and d!12415 (not c!4839)) b!20103))

(declare-fun m!22159 () Bool)

(assert (=> d!12415 m!22159))

(assert (=> d!12415 m!22109))

(declare-fun m!22161 () Bool)

(assert (=> b!20105 m!22161))

(declare-fun m!22163 () Bool)

(assert (=> b!20105 m!22163))

(assert (=> b!20105 m!22161))

(assert (=> b!20105 m!22163))

(declare-fun m!22165 () Bool)

(assert (=> b!20105 m!22165))

(assert (=> b!19958 d!12415))

(declare-fun d!12417 () Bool)

(declare-fun res!8735 () Bool)

(declare-fun e!10559 () Bool)

(assert (=> d!12417 (=> res!8735 e!10559)))

(assert (=> d!12417 (= res!8735 (not (is-CC!30 (right!678 res!5603))))))

(assert (=> d!12417 (= (concInv!29 (right!678 res!5603)) e!10559)))

(declare-fun b!20107 () Bool)

(declare-fun res!8736 () Bool)

(declare-fun e!10560 () Bool)

(assert (=> b!20107 (=> (not res!8736) (not e!10560))))

(assert (=> b!20107 (= res!8736 (not (isEmpty!293 (right!678 (right!678 res!5603)))))))

(declare-fun b!20106 () Bool)

(assert (=> b!20106 (= e!10559 e!10560)))

(declare-fun res!8734 () Bool)

(assert (=> b!20106 (=> (not res!8734) (not e!10560))))

(assert (=> b!20106 (= res!8734 (not (isEmpty!293 (left!675 (right!678 res!5603)))))))

(declare-fun b!20108 () Bool)

(declare-fun res!8733 () Bool)

(assert (=> b!20108 (=> (not res!8733) (not e!10560))))

(assert (=> b!20108 (= res!8733 (concInv!29 (left!675 (right!678 res!5603))))))

(declare-fun b!20109 () Bool)

(assert (=> b!20109 (= e!10560 (concInv!29 (right!678 (right!678 res!5603))))))

(assert (= (and d!12417 (not res!8735)) b!20106))

(assert (= (and b!20106 res!8734) b!20107))

(assert (= (and b!20107 res!8736) b!20108))

(assert (= (and b!20108 res!8733) b!20109))

(declare-fun m!22167 () Bool)

(assert (=> b!20107 m!22167))

(declare-fun m!22169 () Bool)

(assert (=> b!20106 m!22169))

(declare-fun m!22171 () Bool)

(assert (=> b!20108 m!22171))

(declare-fun m!22173 () Bool)

(assert (=> b!20109 m!22173))

(assert (=> b!19926 d!12417))

(declare-fun b!20110 () Bool)

(declare-fun e!10561 () Bool)

(declare-fun e!10562 () Bool)

(assert (=> b!20110 (= e!10561 e!10562)))

(declare-fun res!8737 () Bool)

(assert (=> b!20110 (=> (not res!8737) (not e!10562))))

(assert (=> b!20110 (= res!8737 (>= (- (level!28 (left!675 (right!678 res!5603))) (level!28 (right!678 (right!678 res!5603)))) (- 1)))))

(declare-fun b!20111 () Bool)

(declare-fun res!8738 () Bool)

(assert (=> b!20111 (=> (not res!8738) (not e!10562))))

(assert (=> b!20111 (= res!8738 (<= (- (level!28 (left!675 (right!678 res!5603))) (level!28 (right!678 (right!678 res!5603)))) 1))))

(declare-fun b!20112 () Bool)

(declare-fun res!8739 () Bool)

(assert (=> b!20112 (=> (not res!8739) (not e!10562))))

(assert (=> b!20112 (= res!8739 (balanced!30 (left!675 (right!678 res!5603))))))

(declare-fun d!12419 () Bool)

(declare-fun res!8740 () Bool)

(assert (=> d!12419 (=> res!8740 e!10561)))

(assert (=> d!12419 (= res!8740 (not (is-CC!30 (right!678 res!5603))))))

(assert (=> d!12419 (= (balanced!30 (right!678 res!5603)) e!10561)))

(declare-fun b!20113 () Bool)

(assert (=> b!20113 (= e!10562 (balanced!30 (right!678 (right!678 res!5603))))))

(assert (= (and d!12419 (not res!8740)) b!20110))

(assert (= (and b!20110 res!8737) b!20111))

(assert (= (and b!20111 res!8738) b!20112))

(assert (= (and b!20112 res!8739) b!20113))

(assert (=> b!20110 m!22103))

(assert (=> b!20110 m!22101))

(assert (=> b!20111 m!22103))

(assert (=> b!20111 m!22101))

(declare-fun m!22175 () Bool)

(assert (=> b!20112 m!22175))

(declare-fun m!22177 () Bool)

(assert (=> b!20113 m!22177))

(assert (=> b!19946 d!12419))

(declare-fun d!12421 () Bool)

(assert (=> d!12421 (= (isEmpty!293 (left!675 xs!604)) (= (left!675 xs!604) Empty!41))))

(assert (=> b!19997 d!12421))

(declare-fun d!12423 () Bool)

(declare-fun res!8743 () Bool)

(declare-fun e!10563 () Bool)

(assert (=> d!12423 (=> res!8743 e!10563)))

(assert (=> d!12423 (= res!8743 (not (is-CC!30 (left!675 res!5603))))))

(assert (=> d!12423 (= (concInv!29 (left!675 res!5603)) e!10563)))

(declare-fun b!20115 () Bool)

(declare-fun res!8744 () Bool)

(declare-fun e!10564 () Bool)

(assert (=> b!20115 (=> (not res!8744) (not e!10564))))

(assert (=> b!20115 (= res!8744 (not (isEmpty!293 (right!678 (left!675 res!5603)))))))

(declare-fun b!20114 () Bool)

(assert (=> b!20114 (= e!10563 e!10564)))

(declare-fun res!8742 () Bool)

(assert (=> b!20114 (=> (not res!8742) (not e!10564))))

(assert (=> b!20114 (= res!8742 (not (isEmpty!293 (left!675 (left!675 res!5603)))))))

(declare-fun b!20116 () Bool)

(declare-fun res!8741 () Bool)

(assert (=> b!20116 (=> (not res!8741) (not e!10564))))

(assert (=> b!20116 (= res!8741 (concInv!29 (left!675 (left!675 res!5603))))))

(declare-fun b!20117 () Bool)

(assert (=> b!20117 (= e!10564 (concInv!29 (right!678 (left!675 res!5603))))))

(assert (= (and d!12423 (not res!8743)) b!20114))

(assert (= (and b!20114 res!8742) b!20115))

(assert (= (and b!20115 res!8744) b!20116))

(assert (= (and b!20116 res!8741) b!20117))

(declare-fun m!22179 () Bool)

(assert (=> b!20115 m!22179))

(declare-fun m!22181 () Bool)

(assert (=> b!20114 m!22181))

(declare-fun m!22183 () Bool)

(assert (=> b!20116 m!22183))

(declare-fun m!22185 () Bool)

(assert (=> b!20117 m!22185))

(assert (=> b!19925 d!12423))

(assert (=> b!19988 d!12383))

(assert (=> b!19988 d!12381))

(declare-fun d!12425 () Bool)

(assert (=> d!12425 (= (isEmpty!293 (right!678 res!5603)) (= (right!678 res!5603) Empty!41))))

(assert (=> b!19924 d!12425))

(declare-fun b!20119 () Bool)

(declare-fun e!10566 () Int)

(declare-fun e!10565 () Int)

(assert (=> b!20119 (= e!10566 e!10565)))

(declare-fun c!4841 () Bool)

(assert (=> b!20119 (= c!4841 (is-Single!30 (left!675 xs!604)))))

(declare-fun b!20118 () Bool)

(assert (=> b!20118 (= e!10566 0)))

(declare-fun b!20120 () Bool)

(assert (=> b!20120 (= e!10565 1)))

(declare-fun b!20121 () Bool)

(assert (=> b!20121 (= e!10565 (+ (size!221 (left!675 (left!675 xs!604))) (size!221 (right!678 (left!675 xs!604)))))))

(declare-fun d!12427 () Bool)

(declare-fun lt!3016 () Int)

(assert (=> d!12427 (>= lt!3016 0)))

(assert (=> d!12427 (= lt!3016 e!10566)))

(declare-fun c!4840 () Bool)

(assert (=> d!12427 (= c!4840 (is-Empty!41 (left!675 xs!604)))))

(assert (=> d!12427 (= (size!221 (left!675 xs!604)) lt!3016)))

(assert (= (and b!20119 c!4841) b!20120))

(assert (= (and b!20119 (not c!4841)) b!20121))

(assert (= (and d!12427 c!4840) b!20118))

(assert (= (and d!12427 (not c!4840)) b!20119))

(declare-fun m!22187 () Bool)

(assert (=> b!20121 m!22187))

(declare-fun m!22189 () Bool)

(assert (=> b!20121 m!22189))

(assert (=> b!19986 d!12427))

(declare-fun b!20123 () Bool)

(declare-fun e!10568 () Int)

(declare-fun e!10567 () Int)

(assert (=> b!20123 (= e!10568 e!10567)))

(declare-fun c!4843 () Bool)

(assert (=> b!20123 (= c!4843 (is-Single!30 (right!678 xs!604)))))

(declare-fun b!20122 () Bool)

(assert (=> b!20122 (= e!10568 0)))

(declare-fun b!20124 () Bool)

(assert (=> b!20124 (= e!10567 1)))

(declare-fun b!20125 () Bool)

(assert (=> b!20125 (= e!10567 (+ (size!221 (left!675 (right!678 xs!604))) (size!221 (right!678 (right!678 xs!604)))))))

(declare-fun d!12429 () Bool)

(declare-fun lt!3017 () Int)

(assert (=> d!12429 (>= lt!3017 0)))

(assert (=> d!12429 (= lt!3017 e!10568)))

(declare-fun c!4842 () Bool)

(assert (=> d!12429 (= c!4842 (is-Empty!41 (right!678 xs!604)))))

(assert (=> d!12429 (= (size!221 (right!678 xs!604)) lt!3017)))

(assert (= (and b!20123 c!4843) b!20124))

(assert (= (and b!20123 (not c!4843)) b!20125))

(assert (= (and d!12429 c!4842) b!20122))

(assert (= (and d!12429 (not c!4842)) b!20123))

(declare-fun m!22191 () Bool)

(assert (=> b!20125 m!22191))

(declare-fun m!22193 () Bool)

(assert (=> b!20125 m!22193))

(assert (=> b!19986 d!12429))

(assert (=> b!19932 d!12391))

(assert (=> b!19932 d!12389))

(assert (=> b!19987 d!12383))

(assert (=> b!19987 d!12381))

(declare-fun b!20126 () Bool)

(declare-fun e!10569 () Bool)

(declare-fun tp!4621 () Bool)

(declare-fun tp!4622 () Bool)

(assert (=> b!20126 (= e!10569 (and tp!4621 tp!4622))))

(declare-fun b!20127 () Bool)

(assert (=> b!20127 (= e!10569 tp_is_empty!97)))

(assert (=> b!20011 (= tp!4617 e!10569)))

(assert (= (and b!20011 (is-CC!30 (left!675 (left!675 res!5603)))) b!20126))

(assert (= (and b!20011 (is-Single!30 (left!675 (left!675 res!5603)))) b!20127))

(declare-fun b!20128 () Bool)

(declare-fun e!10570 () Bool)

(declare-fun tp!4623 () Bool)

(declare-fun tp!4624 () Bool)

(assert (=> b!20128 (= e!10570 (and tp!4623 tp!4624))))

(declare-fun b!20129 () Bool)

(assert (=> b!20129 (= e!10570 tp_is_empty!97)))

(assert (=> b!20011 (= tp!4618 e!10570)))

(assert (= (and b!20011 (is-CC!30 (right!678 (left!675 res!5603)))) b!20128))

(assert (= (and b!20011 (is-Single!30 (right!678 (left!675 res!5603)))) b!20129))

(declare-fun b!20130 () Bool)

(declare-fun e!10571 () Bool)

(declare-fun tp!4625 () Bool)

(declare-fun tp!4626 () Bool)

(assert (=> b!20130 (= e!10571 (and tp!4625 tp!4626))))

(declare-fun b!20131 () Bool)

(assert (=> b!20131 (= e!10571 tp_is_empty!97)))

(assert (=> b!20009 (= tp!4615 e!10571)))

(assert (= (and b!20009 (is-CC!30 (left!675 (right!678 xs!604)))) b!20130))

(assert (= (and b!20009 (is-Single!30 (left!675 (right!678 xs!604)))) b!20131))

(declare-fun b!20132 () Bool)

(declare-fun e!10572 () Bool)

(declare-fun tp!4627 () Bool)

(declare-fun tp!4628 () Bool)

(assert (=> b!20132 (= e!10572 (and tp!4627 tp!4628))))

(declare-fun b!20133 () Bool)

(assert (=> b!20133 (= e!10572 tp_is_empty!97)))

(assert (=> b!20009 (= tp!4616 e!10572)))

(assert (= (and b!20009 (is-CC!30 (right!678 (right!678 xs!604)))) b!20132))

(assert (= (and b!20009 (is-Single!30 (right!678 (right!678 xs!604)))) b!20133))

(declare-fun b!20134 () Bool)

(declare-fun e!10573 () Bool)

(declare-fun tp!4629 () Bool)

(declare-fun tp!4630 () Bool)

(assert (=> b!20134 (= e!10573 (and tp!4629 tp!4630))))

(declare-fun b!20135 () Bool)

(assert (=> b!20135 (= e!10573 tp_is_empty!97)))

(assert (=> b!20007 (= tp!4613 e!10573)))

(assert (= (and b!20007 (is-CC!30 (left!675 (left!675 xs!604)))) b!20134))

(assert (= (and b!20007 (is-Single!30 (left!675 (left!675 xs!604)))) b!20135))

(declare-fun b!20136 () Bool)

(declare-fun e!10574 () Bool)

(declare-fun tp!4631 () Bool)

(declare-fun tp!4632 () Bool)

(assert (=> b!20136 (= e!10574 (and tp!4631 tp!4632))))

(declare-fun b!20137 () Bool)

(assert (=> b!20137 (= e!10574 tp_is_empty!97)))

(assert (=> b!20007 (= tp!4614 e!10574)))

(assert (= (and b!20007 (is-CC!30 (right!678 (left!675 xs!604)))) b!20136))

(assert (= (and b!20007 (is-Single!30 (right!678 (left!675 xs!604)))) b!20137))

(declare-fun b!20138 () Bool)

(declare-fun e!10575 () Bool)

(declare-fun tp!4633 () Bool)

(declare-fun tp!4634 () Bool)

(assert (=> b!20138 (= e!10575 (and tp!4633 tp!4634))))

(declare-fun b!20139 () Bool)

(assert (=> b!20139 (= e!10575 tp_is_empty!97)))

(assert (=> b!20013 (= tp!4619 e!10575)))

(assert (= (and b!20013 (is-CC!30 (left!675 (right!678 res!5603)))) b!20138))

(assert (= (and b!20013 (is-Single!30 (left!675 (right!678 res!5603)))) b!20139))

(declare-fun b!20140 () Bool)

(declare-fun e!10576 () Bool)

(declare-fun tp!4635 () Bool)

(declare-fun tp!4636 () Bool)

(assert (=> b!20140 (= e!10576 (and tp!4635 tp!4636))))

(declare-fun b!20141 () Bool)

(assert (=> b!20141 (= e!10576 tp_is_empty!97)))

(assert (=> b!20013 (= tp!4620 e!10576)))

(assert (= (and b!20013 (is-CC!30 (right!678 (right!678 res!5603)))) b!20140))

(assert (= (and b!20013 (is-Single!30 (right!678 (right!678 res!5603)))) b!20141))

(push 1)

(assert (not b!20093))

(assert (not b!20028))

(assert (not b!20085))

(assert (not b!20113))

(assert (not b!20037))

(assert (not b!20052))

(assert (not b!20115))

(assert (not b!20111))

(assert (not b!20140))

(assert (not b!20095))

(assert (not b!20136))

(assert (not b!20134))

(assert (not b!20047))

(assert (not d!12375))

(assert (not b!20025))

(assert (not b!20048))

(assert (not b!20077))

(assert (not b!20108))

(assert (not b!20053))

(assert (not b!20026))

(assert (not d!12411))

(assert (not b!20043))

(assert (not b!20046))

(assert (not b!20121))

(assert (not b!20086))

(assert (not b!20087))

(assert (not b!20101))

(assert (not b!20132))

(assert (not b!20110))

(assert (not d!12397))

(assert (not b!20112))

(assert (not b!20050))

(assert (not b!20067))

(assert (not b!20105))

(assert (not b!20092))

(assert (not b!20091))

(assert (not b!20045))

(assert (not b!20051))

(assert (not b!20063))

(assert (not b!20033))

(assert (not b!20128))

(assert (not b!20138))

(assert (not b!20116))

(assert (not b!20029))

(assert (not b!20089))

(assert (not b!20057))

(assert tp_is_empty!97)

(assert (not b!20083))

(assert (not b!20041))

(assert (not b!20126))

(assert (not b!20106))

(assert (not b!20109))

(assert (not b!20078))

(assert (not b!20038))

(assert (not b!20096))

(assert (not b!20027))

(assert (not d!12415))

(assert (not b!20055))

(assert (not b!20130))

(assert (not b!20114))

(assert (not b!20090))

(assert (not b!20040))

(assert (not b!20088))

(assert (not b!20039))

(assert (not b!20117))

(assert (not d!12377))

(assert (not b!20049))

(assert (not d!12413))

(assert (not b!20125))

(assert (not b!20107))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!12431 () Bool)

(declare-fun res!8747 () Bool)

(declare-fun e!10577 () Bool)

(assert (=> d!12431 (=> res!8747 e!10577)))

(assert (=> d!12431 (= res!8747 (not (is-CC!30 (right!678 (left!675 res!5603)))))))

(assert (=> d!12431 (= (concInv!29 (right!678 (left!675 res!5603))) e!10577)))

(declare-fun b!20143 () Bool)

(declare-fun res!8748 () Bool)

(declare-fun e!10578 () Bool)

(assert (=> b!20143 (=> (not res!8748) (not e!10578))))

(assert (=> b!20143 (= res!8748 (not (isEmpty!293 (right!678 (right!678 (left!675 res!5603))))))))

(declare-fun b!20142 () Bool)

(assert (=> b!20142 (= e!10577 e!10578)))

(declare-fun res!8746 () Bool)

(assert (=> b!20142 (=> (not res!8746) (not e!10578))))

(assert (=> b!20142 (= res!8746 (not (isEmpty!293 (left!675 (right!678 (left!675 res!5603))))))))

(declare-fun b!20144 () Bool)

(declare-fun res!8745 () Bool)

(assert (=> b!20144 (=> (not res!8745) (not e!10578))))

(assert (=> b!20144 (= res!8745 (concInv!29 (left!675 (right!678 (left!675 res!5603)))))))

(declare-fun b!20145 () Bool)

(assert (=> b!20145 (= e!10578 (concInv!29 (right!678 (right!678 (left!675 res!5603)))))))

(assert (= (and d!12431 (not res!8747)) b!20142))

(assert (= (and b!20142 res!8746) b!20143))

(assert (= (and b!20143 res!8748) b!20144))

(assert (= (and b!20144 res!8745) b!20145))

(declare-fun m!22195 () Bool)

(assert (=> b!20143 m!22195))

(declare-fun m!22197 () Bool)

(assert (=> b!20142 m!22197))

(declare-fun m!22199 () Bool)

(assert (=> b!20144 m!22199))

(declare-fun m!22201 () Bool)

(assert (=> b!20145 m!22201))

(assert (=> b!20117 d!12431))

(declare-fun d!12433 () Bool)

(assert (=> d!12433 (= (isEmpty!293 (left!675 (right!678 res!5603))) (= (left!675 (right!678 res!5603)) Empty!41))))

(assert (=> b!20106 d!12433))

(declare-fun b!20147 () Bool)

(declare-fun e!10579 () List!336)

(declare-fun e!10580 () List!336)

(assert (=> b!20147 (= e!10579 e!10580)))

(declare-fun c!4845 () Bool)

(assert (=> b!20147 (= c!4845 (= (- (- i!298 1) 1) 0))))

(declare-fun d!12435 () Bool)

(declare-fun c!4844 () Bool)

(assert (=> d!12435 (= c!4844 (is-Nil!331 (t!4331 (t!4331 (toList!96 xs!604)))))))

(assert (=> d!12435 (= (insertAtIndex!9 (t!4331 (t!4331 (toList!96 xs!604))) (- (- i!298 1) 1) y!824) e!10579)))

(declare-fun b!20146 () Bool)

(assert (=> b!20146 (= e!10579 (Cons!330 y!824 Nil!331))))

(declare-fun b!20148 () Bool)

(assert (=> b!20148 (= e!10580 (Cons!330 y!824 (t!4331 (t!4331 (toList!96 xs!604)))))))

(declare-fun b!20149 () Bool)

(assert (=> b!20149 (= e!10580 (Cons!330 (h!244 (t!4331 (t!4331 (toList!96 xs!604)))) (insertAtIndex!9 (t!4331 (t!4331 (t!4331 (toList!96 xs!604)))) (- (- (- i!298 1) 1) 1) y!824)))))

(assert (= (and b!20147 c!4845) b!20148))

(assert (= (and b!20147 (not c!4845)) b!20149))

(assert (= (and d!12435 c!4844) b!20146))

(assert (= (and d!12435 (not c!4844)) b!20147))

(declare-fun m!22203 () Bool)

(assert (=> b!20149 m!22203))

(assert (=> b!20083 d!12435))

(declare-fun b!20150 () Bool)

(declare-fun e!10581 () Bool)

(declare-fun e!10582 () Bool)

(assert (=> b!20150 (= e!10581 e!10582)))

(declare-fun res!8749 () Bool)

(assert (=> b!20150 (=> (not res!8749) (not e!10582))))

(assert (=> b!20150 (= res!8749 (>= (- (level!28 (left!675 (left!675 (left!675 res!5603)))) (level!28 (right!678 (left!675 (left!675 res!5603))))) (- 1)))))

(declare-fun b!20151 () Bool)

(declare-fun res!8750 () Bool)

(assert (=> b!20151 (=> (not res!8750) (not e!10582))))

(assert (=> b!20151 (= res!8750 (<= (- (level!28 (left!675 (left!675 (left!675 res!5603)))) (level!28 (right!678 (left!675 (left!675 res!5603))))) 1))))

(declare-fun b!20152 () Bool)

(declare-fun res!8751 () Bool)

(assert (=> b!20152 (=> (not res!8751) (not e!10582))))

(assert (=> b!20152 (= res!8751 (balanced!30 (left!675 (left!675 (left!675 res!5603)))))))

(declare-fun d!12437 () Bool)

(declare-fun res!8752 () Bool)

(assert (=> d!12437 (=> res!8752 e!10581)))

(assert (=> d!12437 (= res!8752 (not (is-CC!30 (left!675 (left!675 res!5603)))))))

(assert (=> d!12437 (= (balanced!30 (left!675 (left!675 res!5603))) e!10581)))

(declare-fun b!20153 () Bool)

(assert (=> b!20153 (= e!10582 (balanced!30 (right!678 (left!675 (left!675 res!5603)))))))

(assert (= (and d!12437 (not res!8752)) b!20150))

(assert (= (and b!20150 res!8749) b!20151))

(assert (= (and b!20151 res!8750) b!20152))

(assert (= (and b!20152 res!8751) b!20153))

(declare-fun m!22205 () Bool)

(assert (=> b!20150 m!22205))

(declare-fun m!22207 () Bool)

(assert (=> b!20150 m!22207))

(assert (=> b!20151 m!22205))

(assert (=> b!20151 m!22207))

(declare-fun m!22209 () Bool)

(assert (=> b!20152 m!22209))

(declare-fun m!22211 () Bool)

(assert (=> b!20153 m!22211))

(assert (=> b!20048 d!12437))

(declare-fun b!20155 () Bool)

(declare-fun e!10584 () Int)

(declare-fun e!10583 () Int)

(assert (=> b!20155 (= e!10584 e!10583)))

(declare-fun c!4847 () Bool)

(assert (=> b!20155 (= c!4847 (is-Single!30 (left!675 res!5603)))))

(declare-fun b!20154 () Bool)

(assert (=> b!20154 (= e!10584 0)))

(declare-fun b!20156 () Bool)

(assert (=> b!20156 (= e!10583 1)))

(declare-fun b!20157 () Bool)

(assert (=> b!20157 (= e!10583 (+ (size!221 (left!675 (left!675 res!5603))) (size!221 (right!678 (left!675 res!5603)))))))

(declare-fun d!12439 () Bool)

(declare-fun lt!3018 () Int)

(assert (=> d!12439 (>= lt!3018 0)))

(assert (=> d!12439 (= lt!3018 e!10584)))

(declare-fun c!4846 () Bool)

(assert (=> d!12439 (= c!4846 (is-Empty!41 (left!675 res!5603)))))

(assert (=> d!12439 (= (size!221 (left!675 res!5603)) lt!3018)))

(assert (= (and b!20155 c!4847) b!20156))

(assert (= (and b!20155 (not c!4847)) b!20157))

(assert (= (and d!12439 c!4846) b!20154))

(assert (= (and d!12439 (not c!4846)) b!20155))

(declare-fun m!22213 () Bool)

(assert (=> b!20157 m!22213))

(declare-fun m!22215 () Bool)

(assert (=> b!20157 m!22215))

(assert (=> b!20067 d!12439))

(declare-fun b!20159 () Bool)

(declare-fun e!10586 () Int)

(declare-fun e!10585 () Int)

(assert (=> b!20159 (= e!10586 e!10585)))

(declare-fun c!4849 () Bool)

(assert (=> b!20159 (= c!4849 (is-Single!30 (right!678 res!5603)))))

(declare-fun b!20158 () Bool)

(assert (=> b!20158 (= e!10586 0)))

(declare-fun b!20160 () Bool)

(assert (=> b!20160 (= e!10585 1)))

(declare-fun b!20161 () Bool)

(assert (=> b!20161 (= e!10585 (+ (size!221 (left!675 (right!678 res!5603))) (size!221 (right!678 (right!678 res!5603)))))))

(declare-fun d!12441 () Bool)

(declare-fun lt!3019 () Int)

(assert (=> d!12441 (>= lt!3019 0)))

(assert (=> d!12441 (= lt!3019 e!10586)))

(declare-fun c!4848 () Bool)

(assert (=> d!12441 (= c!4848 (is-Empty!41 (right!678 res!5603)))))

(assert (=> d!12441 (= (size!221 (right!678 res!5603)) lt!3019)))

(assert (= (and b!20159 c!4849) b!20160))

(assert (= (and b!20159 (not c!4849)) b!20161))

(assert (= (and d!12441 c!4848) b!20158))

(assert (= (and d!12441 (not c!4848)) b!20159))

(declare-fun m!22217 () Bool)

(assert (=> b!20161 m!22217))

(declare-fun m!22219 () Bool)

(assert (=> b!20161 m!22219))

(assert (=> b!20067 d!12441))

(declare-fun d!12443 () Bool)

(declare-fun res!8755 () Bool)

(declare-fun e!10587 () Bool)

(assert (=> d!12443 (=> res!8755 e!10587)))

(assert (=> d!12443 (= res!8755 (not (is-CC!30 (right!678 (right!678 res!5603)))))))

(assert (=> d!12443 (= (concInv!29 (right!678 (right!678 res!5603))) e!10587)))

(declare-fun b!20163 () Bool)

(declare-fun res!8756 () Bool)

(declare-fun e!10588 () Bool)

(assert (=> b!20163 (=> (not res!8756) (not e!10588))))

(assert (=> b!20163 (= res!8756 (not (isEmpty!293 (right!678 (right!678 (right!678 res!5603))))))))

(declare-fun b!20162 () Bool)

(assert (=> b!20162 (= e!10587 e!10588)))

(declare-fun res!8754 () Bool)

(assert (=> b!20162 (=> (not res!8754) (not e!10588))))

(assert (=> b!20162 (= res!8754 (not (isEmpty!293 (left!675 (right!678 (right!678 res!5603))))))))

(declare-fun b!20164 () Bool)

(declare-fun res!8753 () Bool)

(assert (=> b!20164 (=> (not res!8753) (not e!10588))))

(assert (=> b!20164 (= res!8753 (concInv!29 (left!675 (right!678 (right!678 res!5603)))))))

(declare-fun b!20165 () Bool)

(assert (=> b!20165 (= e!10588 (concInv!29 (right!678 (right!678 (right!678 res!5603)))))))

(assert (= (and d!12443 (not res!8755)) b!20162))

(assert (= (and b!20162 res!8754) b!20163))

(assert (= (and b!20163 res!8756) b!20164))

(assert (= (and b!20164 res!8753) b!20165))

(declare-fun m!22221 () Bool)

(assert (=> b!20163 m!22221))

(declare-fun m!22223 () Bool)

(assert (=> b!20162 m!22223))

(declare-fun m!22225 () Bool)

(assert (=> b!20164 m!22225))

(declare-fun m!22227 () Bool)

(assert (=> b!20165 m!22227))

(assert (=> b!20109 d!12443))

(declare-fun b!20167 () Bool)

(declare-fun e!10589 () Int)

(declare-fun lt!3022 () Int)

(declare-fun lt!3020 () Int)

(assert (=> b!20167 (= e!10589 (+ 1 (ite (>= lt!3022 lt!3020) lt!3022 lt!3020)))))

(assert (=> b!20167 (= lt!3020 (level!28 (right!678 (right!678 (left!675 xs!604)))))))

(assert (=> b!20167 (= lt!3022 (level!28 (left!675 (right!678 (left!675 xs!604)))))))

(declare-fun d!12445 () Bool)

(declare-fun lt!3021 () Int)

(assert (=> d!12445 (>= lt!3021 0)))

(assert (=> d!12445 (= lt!3021 e!10589)))

(declare-fun c!4850 () Bool)

(assert (=> d!12445 (= c!4850 (or (is-Empty!41 (right!678 (left!675 xs!604))) (is-Single!30 (right!678 (left!675 xs!604)))))))

(assert (=> d!12445 (= (level!28 (right!678 (left!675 xs!604))) lt!3021)))

(declare-fun b!20166 () Bool)

(assert (=> b!20166 (= e!10589 0)))

(assert (= (and d!12445 c!4850) b!20166))

(assert (= (and d!12445 (not c!4850)) b!20167))

(declare-fun m!22229 () Bool)

(assert (=> b!20167 m!22229))

(declare-fun m!22231 () Bool)

(assert (=> b!20167 m!22231))

(assert (=> b!20045 d!12445))

(declare-fun b!20169 () Bool)

(declare-fun e!10590 () Int)

(declare-fun lt!3025 () Int)

(declare-fun lt!3023 () Int)

(assert (=> b!20169 (= e!10590 (+ 1 (ite (>= lt!3025 lt!3023) lt!3025 lt!3023)))))

(assert (=> b!20169 (= lt!3023 (level!28 (right!678 (left!675 (left!675 xs!604)))))))

(assert (=> b!20169 (= lt!3025 (level!28 (left!675 (left!675 (left!675 xs!604)))))))

(declare-fun d!12447 () Bool)

(declare-fun lt!3024 () Int)

(assert (=> d!12447 (>= lt!3024 0)))

(assert (=> d!12447 (= lt!3024 e!10590)))

(declare-fun c!4851 () Bool)

(assert (=> d!12447 (= c!4851 (or (is-Empty!41 (left!675 (left!675 xs!604))) (is-Single!30 (left!675 (left!675 xs!604)))))))

(assert (=> d!12447 (= (level!28 (left!675 (left!675 xs!604))) lt!3024)))

(declare-fun b!20168 () Bool)

(assert (=> b!20168 (= e!10590 0)))

(assert (= (and d!12447 c!4851) b!20168))

(assert (= (and d!12447 (not c!4851)) b!20169))

(declare-fun m!22233 () Bool)

(assert (=> b!20169 m!22233))

(declare-fun m!22235 () Bool)

(assert (=> b!20169 m!22235))

(assert (=> b!20045 d!12447))

(declare-fun b!20171 () Bool)

(declare-fun e!10591 () Int)

(declare-fun lt!3028 () Int)

(declare-fun lt!3026 () Int)

(assert (=> b!20171 (= e!10591 (+ 1 (ite (>= lt!3028 lt!3026) lt!3028 lt!3026)))))

(assert (=> b!20171 (= lt!3026 (level!28 (right!678 (left!675 (left!675 res!5603)))))))

(assert (=> b!20171 (= lt!3028 (level!28 (left!675 (left!675 (left!675 res!5603)))))))

(declare-fun d!12449 () Bool)

(declare-fun lt!3027 () Int)

(assert (=> d!12449 (>= lt!3027 0)))

(assert (=> d!12449 (= lt!3027 e!10591)))

(declare-fun c!4852 () Bool)

(assert (=> d!12449 (= c!4852 (or (is-Empty!41 (left!675 (left!675 res!5603))) (is-Single!30 (left!675 (left!675 res!5603)))))))

(assert (=> d!12449 (= (level!28 (left!675 (left!675 res!5603))) lt!3027)))

(declare-fun b!20170 () Bool)

(assert (=> b!20170 (= e!10591 0)))

(assert (= (and d!12449 c!4852) b!20170))

(assert (= (and d!12449 (not c!4852)) b!20171))

(assert (=> b!20171 m!22207))

(assert (=> b!20171 m!22205))

(assert (=> b!20046 d!12449))

(declare-fun b!20173 () Bool)

(declare-fun e!10592 () Int)

(declare-fun lt!3031 () Int)

(declare-fun lt!3029 () Int)

(assert (=> b!20173 (= e!10592 (+ 1 (ite (>= lt!3031 lt!3029) lt!3031 lt!3029)))))

(assert (=> b!20173 (= lt!3029 (level!28 (right!678 (right!678 (left!675 res!5603)))))))

(assert (=> b!20173 (= lt!3031 (level!28 (left!675 (right!678 (left!675 res!5603)))))))

(declare-fun d!12451 () Bool)

(declare-fun lt!3030 () Int)

(assert (=> d!12451 (>= lt!3030 0)))

(assert (=> d!12451 (= lt!3030 e!10592)))

(declare-fun c!4853 () Bool)

(assert (=> d!12451 (= c!4853 (or (is-Empty!41 (right!678 (left!675 res!5603))) (is-Single!30 (right!678 (left!675 res!5603)))))))

(assert (=> d!12451 (= (level!28 (right!678 (left!675 res!5603))) lt!3030)))

(declare-fun b!20172 () Bool)

(assert (=> b!20172 (= e!10592 0)))

(assert (= (and d!12451 c!4853) b!20172))

(assert (= (and d!12451 (not c!4853)) b!20173))

(declare-fun m!22237 () Bool)

(assert (=> b!20173 m!22237))

(declare-fun m!22239 () Bool)

(assert (=> b!20173 m!22239))

(assert (=> b!20046 d!12451))

(declare-fun b!20175 () Bool)

(declare-fun e!10593 () Int)

(declare-fun lt!3034 () Int)

(declare-fun lt!3032 () Int)

(assert (=> b!20175 (= e!10593 (+ 1 (ite (>= lt!3034 lt!3032) lt!3034 lt!3032)))))

(assert (=> b!20175 (= lt!3032 (level!28 (right!678 (left!675 (right!678 res!5603)))))))

(assert (=> b!20175 (= lt!3034 (level!28 (left!675 (left!675 (right!678 res!5603)))))))

(declare-fun d!12453 () Bool)

(declare-fun lt!3033 () Int)

(assert (=> d!12453 (>= lt!3033 0)))

(assert (=> d!12453 (= lt!3033 e!10593)))

(declare-fun c!4854 () Bool)

(assert (=> d!12453 (= c!4854 (or (is-Empty!41 (left!675 (right!678 res!5603))) (is-Single!30 (left!675 (right!678 res!5603)))))))

(assert (=> d!12453 (= (level!28 (left!675 (right!678 res!5603))) lt!3033)))

(declare-fun b!20174 () Bool)

(assert (=> b!20174 (= e!10593 0)))

(assert (= (and d!12453 c!4854) b!20174))

(assert (= (and d!12453 (not c!4854)) b!20175))

(declare-fun m!22241 () Bool)

(assert (=> b!20175 m!22241))

(declare-fun m!22243 () Bool)

(assert (=> b!20175 m!22243))

(assert (=> b!20110 d!12453))

(declare-fun b!20177 () Bool)

(declare-fun e!10594 () Int)

(declare-fun lt!3037 () Int)

(declare-fun lt!3035 () Int)

(assert (=> b!20177 (= e!10594 (+ 1 (ite (>= lt!3037 lt!3035) lt!3037 lt!3035)))))

(assert (=> b!20177 (= lt!3035 (level!28 (right!678 (right!678 (right!678 res!5603)))))))

(assert (=> b!20177 (= lt!3037 (level!28 (left!675 (right!678 (right!678 res!5603)))))))

(declare-fun d!12455 () Bool)

(declare-fun lt!3036 () Int)

(assert (=> d!12455 (>= lt!3036 0)))

(assert (=> d!12455 (= lt!3036 e!10594)))

(declare-fun c!4855 () Bool)

(assert (=> d!12455 (= c!4855 (or (is-Empty!41 (right!678 (right!678 res!5603))) (is-Single!30 (right!678 (right!678 res!5603)))))))

(assert (=> d!12455 (= (level!28 (right!678 (right!678 res!5603))) lt!3036)))

(declare-fun b!20176 () Bool)

(assert (=> b!20176 (= e!10594 0)))

(assert (= (and d!12455 c!4855) b!20176))

(assert (= (and d!12455 (not c!4855)) b!20177))

(declare-fun m!22245 () Bool)

(assert (=> b!20177 m!22245))

(declare-fun m!22247 () Bool)

(assert (=> b!20177 m!22247))

(assert (=> b!20110 d!12455))

(declare-fun b!20178 () Bool)

(declare-fun e!10595 () Bool)

(declare-fun e!10596 () Bool)

(assert (=> b!20178 (= e!10595 e!10596)))

(declare-fun res!8757 () Bool)

(assert (=> b!20178 (=> (not res!8757) (not e!10596))))

(assert (=> b!20178 (= res!8757 (>= (- (level!28 (left!675 (right!678 (right!678 res!5603)))) (level!28 (right!678 (right!678 (right!678 res!5603))))) (- 1)))))

(declare-fun b!20179 () Bool)

(declare-fun res!8758 () Bool)

(assert (=> b!20179 (=> (not res!8758) (not e!10596))))

(assert (=> b!20179 (= res!8758 (<= (- (level!28 (left!675 (right!678 (right!678 res!5603)))) (level!28 (right!678 (right!678 (right!678 res!5603))))) 1))))

(declare-fun b!20180 () Bool)

(declare-fun res!8759 () Bool)

(assert (=> b!20180 (=> (not res!8759) (not e!10596))))

(assert (=> b!20180 (= res!8759 (balanced!30 (left!675 (right!678 (right!678 res!5603)))))))

(declare-fun d!12457 () Bool)

(declare-fun res!8760 () Bool)

(assert (=> d!12457 (=> res!8760 e!10595)))

(assert (=> d!12457 (= res!8760 (not (is-CC!30 (right!678 (right!678 res!5603)))))))

(assert (=> d!12457 (= (balanced!30 (right!678 (right!678 res!5603))) e!10595)))

(declare-fun b!20181 () Bool)

(assert (=> b!20181 (= e!10596 (balanced!30 (right!678 (right!678 (right!678 res!5603)))))))

(assert (= (and d!12457 (not res!8760)) b!20178))

(assert (= (and b!20178 res!8757) b!20179))

(assert (= (and b!20179 res!8758) b!20180))

(assert (= (and b!20180 res!8759) b!20181))

(assert (=> b!20178 m!22247))

(assert (=> b!20178 m!22245))

(assert (=> b!20179 m!22247))

(assert (=> b!20179 m!22245))

(declare-fun m!22249 () Bool)

(assert (=> b!20180 m!22249))

(declare-fun m!22251 () Bool)

(assert (=> b!20181 m!22251))

(assert (=> b!20113 d!12457))

(declare-fun d!12459 () Bool)

(declare-fun e!10598 () Bool)

(assert (=> d!12459 e!10598))

(declare-fun res!8762 () Bool)

(assert (=> d!12459 (=> (not res!8762) (not e!10598))))

(declare-fun lt!3038 () List!336)

(assert (=> d!12459 (= res!8762 (= (content!57 lt!3038) (union (content!57 (toList!96 (left!675 (right!678 xs!604)))) (content!57 (toList!96 (right!678 (right!678 xs!604)))))))))

(declare-fun e!10597 () List!336)

(assert (=> d!12459 (= lt!3038 e!10597)))

(declare-fun c!4856 () Bool)

(assert (=> d!12459 (= c!4856 (is-Nil!331 (toList!96 (left!675 (right!678 xs!604)))))))

(assert (=> d!12459 (= (++!19 (toList!96 (left!675 (right!678 xs!604))) (toList!96 (right!678 (right!678 xs!604)))) lt!3038)))

(declare-fun b!20184 () Bool)

(declare-fun res!8761 () Bool)

(assert (=> b!20184 (=> (not res!8761) (not e!10598))))

(assert (=> b!20184 (= res!8761 (= (size!222 lt!3038) (+ (size!222 (toList!96 (left!675 (right!678 xs!604)))) (size!222 (toList!96 (right!678 (right!678 xs!604)))))))))

(declare-fun b!20183 () Bool)

(assert (=> b!20183 (= e!10597 (Cons!330 (h!244 (toList!96 (left!675 (right!678 xs!604)))) (++!19 (t!4331 (toList!96 (left!675 (right!678 xs!604)))) (toList!96 (right!678 (right!678 xs!604))))))))

(declare-fun b!20185 () Bool)

(assert (=> b!20185 (= e!10598 (or (not (= (toList!96 (right!678 (right!678 xs!604))) Nil!331)) (= lt!3038 (toList!96 (left!675 (right!678 xs!604))))))))

(declare-fun b!20182 () Bool)

(assert (=> b!20182 (= e!10597 (toList!96 (right!678 (right!678 xs!604))))))

(assert (= (and d!12459 c!4856) b!20182))

(assert (= (and d!12459 (not c!4856)) b!20183))

(assert (= (and d!12459 res!8762) b!20184))

(assert (= (and b!20184 res!8761) b!20185))

(declare-fun m!22253 () Bool)

(assert (=> d!12459 m!22253))

(assert (=> d!12459 m!22067))

(declare-fun m!22255 () Bool)

(assert (=> d!12459 m!22255))

(assert (=> d!12459 m!22069))

(declare-fun m!22257 () Bool)

(assert (=> d!12459 m!22257))

(declare-fun m!22259 () Bool)

(assert (=> b!20184 m!22259))

(assert (=> b!20184 m!22067))

(declare-fun m!22261 () Bool)

(assert (=> b!20184 m!22261))

(assert (=> b!20184 m!22069))

(declare-fun m!22263 () Bool)

(assert (=> b!20184 m!22263))

(assert (=> b!20183 m!22069))

(declare-fun m!22265 () Bool)

(assert (=> b!20183 m!22265))

(assert (=> b!20037 d!12459))

(declare-fun d!12461 () Bool)

(declare-fun lt!3039 () List!336)

(assert (=> d!12461 (= (size!222 lt!3039) (size!221 (left!675 (right!678 xs!604))))))

(declare-fun e!10599 () List!336)

(assert (=> d!12461 (= lt!3039 e!10599)))

(declare-fun c!4858 () Bool)

(assert (=> d!12461 (= c!4858 (is-Empty!41 (left!675 (right!678 xs!604))))))

(assert (=> d!12461 (= (toList!96 (left!675 (right!678 xs!604))) lt!3039)))

(declare-fun b!20186 () Bool)

(assert (=> b!20186 (= e!10599 Nil!331)))

(declare-fun b!20188 () Bool)

(declare-fun e!10600 () List!336)

(assert (=> b!20188 (= e!10600 (Cons!330 (x!8787 (left!675 (right!678 xs!604))) Nil!331))))

(declare-fun b!20189 () Bool)

(assert (=> b!20189 (= e!10600 (++!19 (toList!96 (left!675 (left!675 (right!678 xs!604)))) (toList!96 (right!678 (left!675 (right!678 xs!604))))))))

(declare-fun b!20187 () Bool)

(assert (=> b!20187 (= e!10599 e!10600)))

(declare-fun c!4857 () Bool)

(assert (=> b!20187 (= c!4857 (is-Single!30 (left!675 (right!678 xs!604))))))

(assert (= (and b!20187 c!4857) b!20188))

(assert (= (and b!20187 (not c!4857)) b!20189))

(assert (= (and d!12461 c!4858) b!20186))

(assert (= (and d!12461 (not c!4858)) b!20187))

(declare-fun m!22267 () Bool)

(assert (=> d!12461 m!22267))

(assert (=> d!12461 m!22191))

(declare-fun m!22269 () Bool)

(assert (=> b!20189 m!22269))

(declare-fun m!22271 () Bool)

(assert (=> b!20189 m!22271))

(assert (=> b!20189 m!22269))

(assert (=> b!20189 m!22271))

(declare-fun m!22273 () Bool)

(assert (=> b!20189 m!22273))

(assert (=> b!20037 d!12461))

(declare-fun d!12463 () Bool)

(declare-fun lt!3040 () List!336)

(assert (=> d!12463 (= (size!222 lt!3040) (size!221 (right!678 (right!678 xs!604))))))

(declare-fun e!10601 () List!336)

(assert (=> d!12463 (= lt!3040 e!10601)))

(declare-fun c!4860 () Bool)

(assert (=> d!12463 (= c!4860 (is-Empty!41 (right!678 (right!678 xs!604))))))

(assert (=> d!12463 (= (toList!96 (right!678 (right!678 xs!604))) lt!3040)))

(declare-fun b!20190 () Bool)

(assert (=> b!20190 (= e!10601 Nil!331)))

(declare-fun b!20192 () Bool)

(declare-fun e!10602 () List!336)

(assert (=> b!20192 (= e!10602 (Cons!330 (x!8787 (right!678 (right!678 xs!604))) Nil!331))))

(declare-fun b!20193 () Bool)

(assert (=> b!20193 (= e!10602 (++!19 (toList!96 (left!675 (right!678 (right!678 xs!604)))) (toList!96 (right!678 (right!678 (right!678 xs!604))))))))

(declare-fun b!20191 () Bool)

(assert (=> b!20191 (= e!10601 e!10602)))

(declare-fun c!4859 () Bool)

(assert (=> b!20191 (= c!4859 (is-Single!30 (right!678 (right!678 xs!604))))))

(assert (= (and b!20191 c!4859) b!20192))

(assert (= (and b!20191 (not c!4859)) b!20193))

(assert (= (and d!12463 c!4860) b!20190))

(assert (= (and d!12463 (not c!4860)) b!20191))

(declare-fun m!22275 () Bool)

(assert (=> d!12463 m!22275))

(assert (=> d!12463 m!22193))

(declare-fun m!22277 () Bool)

(assert (=> b!20193 m!22277))

(declare-fun m!22279 () Bool)

(assert (=> b!20193 m!22279))

(assert (=> b!20193 m!22277))

(assert (=> b!20193 m!22279))

(declare-fun m!22281 () Bool)

(assert (=> b!20193 m!22281))

(assert (=> b!20037 d!12463))

(declare-fun d!12465 () Bool)

(assert (=> d!12465 (= (isEmpty!293 (right!678 (left!675 res!5603))) (= (right!678 (left!675 res!5603)) Empty!41))))

(assert (=> b!20115 d!12465))

(declare-fun d!12467 () Bool)

(declare-fun res!8765 () Bool)

(declare-fun e!10603 () Bool)

(assert (=> d!12467 (=> res!8765 e!10603)))

(assert (=> d!12467 (= res!8765 (not (is-CC!30 (right!678 (right!678 xs!604)))))))

(assert (=> d!12467 (= (concInv!29 (right!678 (right!678 xs!604))) e!10603)))

(declare-fun b!20195 () Bool)

(declare-fun res!8766 () Bool)

(declare-fun e!10604 () Bool)

(assert (=> b!20195 (=> (not res!8766) (not e!10604))))

(assert (=> b!20195 (= res!8766 (not (isEmpty!293 (right!678 (right!678 (right!678 xs!604))))))))

(declare-fun b!20194 () Bool)

(assert (=> b!20194 (= e!10603 e!10604)))

(declare-fun res!8764 () Bool)

(assert (=> b!20194 (=> (not res!8764) (not e!10604))))

(assert (=> b!20194 (= res!8764 (not (isEmpty!293 (left!675 (right!678 (right!678 xs!604))))))))

(declare-fun b!20196 () Bool)

(declare-fun res!8763 () Bool)

(assert (=> b!20196 (=> (not res!8763) (not e!10604))))

(assert (=> b!20196 (= res!8763 (concInv!29 (left!675 (right!678 (right!678 xs!604)))))))

(declare-fun b!20197 () Bool)

(assert (=> b!20197 (= e!10604 (concInv!29 (right!678 (right!678 (right!678 xs!604)))))))

(assert (= (and d!12467 (not res!8765)) b!20194))

(assert (= (and b!20194 res!8764) b!20195))

(assert (= (and b!20195 res!8766) b!20196))

(assert (= (and b!20196 res!8763) b!20197))

(declare-fun m!22283 () Bool)

(assert (=> b!20195 m!22283))

(declare-fun m!22285 () Bool)

(assert (=> b!20194 m!22285))

(declare-fun m!22287 () Bool)

(assert (=> b!20196 m!22287))

(declare-fun m!22289 () Bool)

(assert (=> b!20197 m!22289))

(assert (=> b!20093 d!12467))

(declare-fun d!12469 () Bool)

(declare-fun res!8769 () Bool)

(declare-fun e!10605 () Bool)

(assert (=> d!12469 (=> res!8769 e!10605)))

(assert (=> d!12469 (= res!8769 (not (is-CC!30 (right!678 (left!675 xs!604)))))))

(assert (=> d!12469 (= (concInv!29 (right!678 (left!675 xs!604))) e!10605)))

(declare-fun b!20199 () Bool)

(declare-fun res!8770 () Bool)

(declare-fun e!10606 () Bool)

(assert (=> b!20199 (=> (not res!8770) (not e!10606))))

(assert (=> b!20199 (= res!8770 (not (isEmpty!293 (right!678 (right!678 (left!675 xs!604))))))))

(declare-fun b!20198 () Bool)

(assert (=> b!20198 (= e!10605 e!10606)))

(declare-fun res!8768 () Bool)

(assert (=> b!20198 (=> (not res!8768) (not e!10606))))

(assert (=> b!20198 (= res!8768 (not (isEmpty!293 (left!675 (right!678 (left!675 xs!604))))))))

(declare-fun b!20200 () Bool)

(declare-fun res!8767 () Bool)

(assert (=> b!20200 (=> (not res!8767) (not e!10606))))

(assert (=> b!20200 (= res!8767 (concInv!29 (left!675 (right!678 (left!675 xs!604)))))))

(declare-fun b!20201 () Bool)

(assert (=> b!20201 (= e!10606 (concInv!29 (right!678 (right!678 (left!675 xs!604)))))))

(assert (= (and d!12469 (not res!8769)) b!20198))

(assert (= (and b!20198 res!8768) b!20199))

(assert (= (and b!20199 res!8770) b!20200))

(assert (= (and b!20200 res!8767) b!20201))

(declare-fun m!22291 () Bool)

(assert (=> b!20199 m!22291))

(declare-fun m!22293 () Bool)

(assert (=> b!20198 m!22293))

(declare-fun m!22295 () Bool)

(assert (=> b!20200 m!22295))

(declare-fun m!22297 () Bool)

(assert (=> b!20201 m!22297))

(assert (=> b!20041 d!12469))

(declare-fun d!12471 () Bool)

(declare-fun lt!3041 () Int)

(assert (=> d!12471 (>= lt!3041 0)))

(declare-fun e!10607 () Int)

(assert (=> d!12471 (= lt!3041 e!10607)))

(declare-fun c!4861 () Bool)

(assert (=> d!12471 (= c!4861 (is-Nil!331 (t!4331 lt!2987)))))

(assert (=> d!12471 (= (size!222 (t!4331 lt!2987)) lt!3041)))

(declare-fun b!20202 () Bool)

(assert (=> b!20202 (= e!10607 0)))

(declare-fun b!20203 () Bool)

(assert (=> b!20203 (= e!10607 (+ 1 (size!222 (t!4331 (t!4331 lt!2987)))))))

(assert (= (and d!12471 c!4861) b!20202))

(assert (= (and d!12471 (not c!4861)) b!20203))

(declare-fun m!22299 () Bool)

(assert (=> b!20203 m!22299))

(assert (=> b!20085 d!12471))

(declare-fun b!20204 () Bool)

(declare-fun e!10608 () Bool)

(declare-fun e!10609 () Bool)

(assert (=> b!20204 (= e!10608 e!10609)))

(declare-fun res!8771 () Bool)

(assert (=> b!20204 (=> (not res!8771) (not e!10609))))

(assert (=> b!20204 (= res!8771 (>= (- (level!28 (left!675 (right!678 (left!675 xs!604)))) (level!28 (right!678 (right!678 (left!675 xs!604))))) (- 1)))))

(declare-fun b!20205 () Bool)

(declare-fun res!8772 () Bool)

(assert (=> b!20205 (=> (not res!8772) (not e!10609))))

(assert (=> b!20205 (= res!8772 (<= (- (level!28 (left!675 (right!678 (left!675 xs!604)))) (level!28 (right!678 (right!678 (left!675 xs!604))))) 1))))

(declare-fun b!20206 () Bool)

(declare-fun res!8773 () Bool)

(assert (=> b!20206 (=> (not res!8773) (not e!10609))))

(assert (=> b!20206 (= res!8773 (balanced!30 (left!675 (right!678 (left!675 xs!604)))))))

(declare-fun d!12473 () Bool)

(declare-fun res!8774 () Bool)

(assert (=> d!12473 (=> res!8774 e!10608)))

(assert (=> d!12473 (= res!8774 (not (is-CC!30 (right!678 (left!675 xs!604)))))))

(assert (=> d!12473 (= (balanced!30 (right!678 (left!675 xs!604))) e!10608)))

(declare-fun b!20207 () Bool)

(assert (=> b!20207 (= e!10609 (balanced!30 (right!678 (right!678 (left!675 xs!604)))))))

(assert (= (and d!12473 (not res!8774)) b!20204))

(assert (= (and b!20204 res!8771) b!20205))

(assert (= (and b!20205 res!8772) b!20206))

(assert (= (and b!20206 res!8773) b!20207))

(assert (=> b!20204 m!22231))

(assert (=> b!20204 m!22229))

(assert (=> b!20205 m!22231))

(assert (=> b!20205 m!22229))

(declare-fun m!22301 () Bool)

(assert (=> b!20206 m!22301))

(declare-fun m!22303 () Bool)

(assert (=> b!20207 m!22303))

(assert (=> b!20053 d!12473))

(declare-fun d!12475 () Bool)

(declare-fun e!10611 () Bool)

(assert (=> d!12475 e!10611))

(declare-fun res!8776 () Bool)

(assert (=> d!12475 (=> (not res!8776) (not e!10611))))

(declare-fun lt!3042 () List!336)

(assert (=> d!12475 (= res!8776 (= (content!57 lt!3042) (union (content!57 (toList!96 (left!675 (left!675 res!5603)))) (content!57 (toList!96 (right!678 (left!675 res!5603)))))))))

(declare-fun e!10610 () List!336)

(assert (=> d!12475 (= lt!3042 e!10610)))

(declare-fun c!4862 () Bool)

(assert (=> d!12475 (= c!4862 (is-Nil!331 (toList!96 (left!675 (left!675 res!5603)))))))

(assert (=> d!12475 (= (++!19 (toList!96 (left!675 (left!675 res!5603))) (toList!96 (right!678 (left!675 res!5603)))) lt!3042)))

(declare-fun b!20210 () Bool)

(declare-fun res!8775 () Bool)

(assert (=> b!20210 (=> (not res!8775) (not e!10611))))

(assert (=> b!20210 (= res!8775 (= (size!222 lt!3042) (+ (size!222 (toList!96 (left!675 (left!675 res!5603)))) (size!222 (toList!96 (right!678 (left!675 res!5603)))))))))

(declare-fun b!20209 () Bool)

(assert (=> b!20209 (= e!10610 (Cons!330 (h!244 (toList!96 (left!675 (left!675 res!5603)))) (++!19 (t!4331 (toList!96 (left!675 (left!675 res!5603)))) (toList!96 (right!678 (left!675 res!5603))))))))

(declare-fun b!20211 () Bool)

(assert (=> b!20211 (= e!10611 (or (not (= (toList!96 (right!678 (left!675 res!5603))) Nil!331)) (= lt!3042 (toList!96 (left!675 (left!675 res!5603))))))))

(declare-fun b!20208 () Bool)

(assert (=> b!20208 (= e!10610 (toList!96 (right!678 (left!675 res!5603))))))

(assert (= (and d!12475 c!4862) b!20208))

(assert (= (and d!12475 (not c!4862)) b!20209))

(assert (= (and d!12475 res!8776) b!20210))

(assert (= (and b!20210 res!8775) b!20211))

(declare-fun m!22305 () Bool)

(assert (=> d!12475 m!22305))

(assert (=> d!12475 m!22153))

(declare-fun m!22307 () Bool)

(assert (=> d!12475 m!22307))

(assert (=> d!12475 m!22155))

(declare-fun m!22309 () Bool)

(assert (=> d!12475 m!22309))

(declare-fun m!22311 () Bool)

(assert (=> b!20210 m!22311))

(assert (=> b!20210 m!22153))

(declare-fun m!22313 () Bool)

(assert (=> b!20210 m!22313))

(assert (=> b!20210 m!22155))

(declare-fun m!22315 () Bool)

(assert (=> b!20210 m!22315))

(assert (=> b!20209 m!22155))

(declare-fun m!22317 () Bool)

(assert (=> b!20209 m!22317))

(assert (=> b!20101 d!12475))

(declare-fun d!12477 () Bool)

(declare-fun lt!3043 () List!336)

(assert (=> d!12477 (= (size!222 lt!3043) (size!221 (left!675 (left!675 res!5603))))))

(declare-fun e!10612 () List!336)

(assert (=> d!12477 (= lt!3043 e!10612)))

(declare-fun c!4864 () Bool)

(assert (=> d!12477 (= c!4864 (is-Empty!41 (left!675 (left!675 res!5603))))))

(assert (=> d!12477 (= (toList!96 (left!675 (left!675 res!5603))) lt!3043)))

(declare-fun b!20212 () Bool)

(assert (=> b!20212 (= e!10612 Nil!331)))

(declare-fun b!20214 () Bool)

(declare-fun e!10613 () List!336)

(assert (=> b!20214 (= e!10613 (Cons!330 (x!8787 (left!675 (left!675 res!5603))) Nil!331))))

(declare-fun b!20215 () Bool)

(assert (=> b!20215 (= e!10613 (++!19 (toList!96 (left!675 (left!675 (left!675 res!5603)))) (toList!96 (right!678 (left!675 (left!675 res!5603))))))))

(declare-fun b!20213 () Bool)

(assert (=> b!20213 (= e!10612 e!10613)))

(declare-fun c!4863 () Bool)

(assert (=> b!20213 (= c!4863 (is-Single!30 (left!675 (left!675 res!5603))))))

(assert (= (and b!20213 c!4863) b!20214))

(assert (= (and b!20213 (not c!4863)) b!20215))

(assert (= (and d!12477 c!4864) b!20212))

(assert (= (and d!12477 (not c!4864)) b!20213))

(declare-fun m!22319 () Bool)

(assert (=> d!12477 m!22319))

(assert (=> d!12477 m!22213))

(declare-fun m!22321 () Bool)

(assert (=> b!20215 m!22321))

(declare-fun m!22323 () Bool)

(assert (=> b!20215 m!22323))

(assert (=> b!20215 m!22321))

(assert (=> b!20215 m!22323))

(declare-fun m!22325 () Bool)

(assert (=> b!20215 m!22325))

(assert (=> b!20101 d!12477))

(declare-fun d!12479 () Bool)

(declare-fun lt!3044 () List!336)

(assert (=> d!12479 (= (size!222 lt!3044) (size!221 (right!678 (left!675 res!5603))))))

(declare-fun e!10614 () List!336)

(assert (=> d!12479 (= lt!3044 e!10614)))

(declare-fun c!4866 () Bool)

(assert (=> d!12479 (= c!4866 (is-Empty!41 (right!678 (left!675 res!5603))))))

(assert (=> d!12479 (= (toList!96 (right!678 (left!675 res!5603))) lt!3044)))

(declare-fun b!20216 () Bool)

(assert (=> b!20216 (= e!10614 Nil!331)))

(declare-fun b!20218 () Bool)

(declare-fun e!10615 () List!336)

(assert (=> b!20218 (= e!10615 (Cons!330 (x!8787 (right!678 (left!675 res!5603))) Nil!331))))

(declare-fun b!20219 () Bool)

(assert (=> b!20219 (= e!10615 (++!19 (toList!96 (left!675 (right!678 (left!675 res!5603)))) (toList!96 (right!678 (right!678 (left!675 res!5603))))))))

(declare-fun b!20217 () Bool)

(assert (=> b!20217 (= e!10614 e!10615)))

(declare-fun c!4865 () Bool)

(assert (=> b!20217 (= c!4865 (is-Single!30 (right!678 (left!675 res!5603))))))

(assert (= (and b!20217 c!4865) b!20218))

(assert (= (and b!20217 (not c!4865)) b!20219))

(assert (= (and d!12479 c!4866) b!20216))

(assert (= (and d!12479 (not c!4866)) b!20217))

(declare-fun m!22327 () Bool)

(assert (=> d!12479 m!22327))

(assert (=> d!12479 m!22215))

(declare-fun m!22329 () Bool)

(assert (=> b!20219 m!22329))

(declare-fun m!22331 () Bool)

(assert (=> b!20219 m!22331))

(assert (=> b!20219 m!22329))

(assert (=> b!20219 m!22331))

(declare-fun m!22333 () Bool)

(assert (=> b!20219 m!22333))

(assert (=> b!20101 d!12479))

(declare-fun e!10618 () List!336)

(declare-fun b!20220 () Bool)

(assert (=> b!20220 (= e!10618 (++!19 (insertAtIndex!9 (t!4331 (toList!96 (left!675 xs!604))) (- i!298 1) y!824) (toList!96 (right!678 xs!604))))))

(declare-fun b!20221 () Bool)

(declare-fun e!10619 () Bool)

(assert (=> b!20221 (= e!10619 (<= (- i!298 1) (+ (size!222 (t!4331 (toList!96 (left!675 xs!604)))) (size!222 (toList!96 (right!678 xs!604))))))))

(declare-fun e!10616 () Bool)

(declare-fun b!20222 () Bool)

(assert (=> b!20222 (= e!10616 (= (insertAtIndex!9 (++!19 (t!4331 (toList!96 (left!675 xs!604))) (toList!96 (right!678 xs!604))) (- i!298 1) y!824) e!10618))))

(declare-fun c!4867 () Bool)

(assert (=> b!20222 (= c!4867 (< (- i!298 1) (size!222 (t!4331 (toList!96 (left!675 xs!604))))))))

(declare-fun e!10617 () Bool)

(declare-fun b!20223 () Bool)

(assert (=> b!20223 (= e!10617 (appendInsertIndex!10 (t!4331 (t!4331 (toList!96 (left!675 xs!604)))) (toList!96 (right!678 xs!604)) (- (- i!298 1) 1) y!824))))

(declare-fun d!12481 () Bool)

(assert (=> d!12481 e!10616))

(declare-fun res!8777 () Bool)

(assert (=> d!12481 (=> (not res!8777) (not e!10616))))

(assert (=> d!12481 (= res!8777 e!10617)))

(declare-fun res!8779 () Bool)

(assert (=> d!12481 (=> res!8779 e!10617)))

(assert (=> d!12481 (= res!8779 (or (is-Nil!331 (t!4331 (toList!96 (left!675 xs!604)))) (= (- i!298 1) 0)))))

(assert (=> d!12481 e!10619))

(declare-fun res!8778 () Bool)

(assert (=> d!12481 (=> (not res!8778) (not e!10619))))

(assert (=> d!12481 (= res!8778 (<= 0 (- i!298 1)))))

(assert (=> d!12481 (= (appendInsertIndex!10 (t!4331 (toList!96 (left!675 xs!604))) (toList!96 (right!678 xs!604)) (- i!298 1) y!824) true)))

(declare-fun b!20224 () Bool)

(assert (=> b!20224 (= e!10618 (++!19 (t!4331 (toList!96 (left!675 xs!604))) (insertAtIndex!9 (toList!96 (right!678 xs!604)) (- (- i!298 1) (size!222 (t!4331 (toList!96 (left!675 xs!604))))) y!824)))))

(assert (= (and d!12481 res!8778) b!20221))

(assert (= (and d!12481 (not res!8779)) b!20223))

(assert (= (and d!12481 res!8777) b!20222))

(assert (= (and b!20222 c!4867) b!20220))

(assert (= (and b!20222 (not c!4867)) b!20224))

(declare-fun m!22335 () Bool)

(assert (=> b!20221 m!22335))

(assert (=> b!20221 m!22019))

(assert (=> b!20221 m!22043))

(assert (=> b!20222 m!22019))

(assert (=> b!20222 m!22119))

(assert (=> b!20222 m!22119))

(declare-fun m!22337 () Bool)

(assert (=> b!20222 m!22337))

(assert (=> b!20222 m!22335))

(assert (=> b!20223 m!22019))

(declare-fun m!22339 () Bool)

(assert (=> b!20223 m!22339))

(assert (=> b!20224 m!22335))

(assert (=> b!20224 m!22019))

(declare-fun m!22341 () Bool)

(assert (=> b!20224 m!22341))

(assert (=> b!20224 m!22341))

(declare-fun m!22343 () Bool)

(assert (=> b!20224 m!22343))

(declare-fun m!22345 () Bool)

(assert (=> b!20220 m!22345))

(assert (=> b!20220 m!22345))

(assert (=> b!20220 m!22019))

(declare-fun m!22347 () Bool)

(assert (=> b!20220 m!22347))

(assert (=> b!20028 d!12481))

(declare-fun d!12483 () Bool)

(assert (=> d!12483 (= (isEmpty!293 (left!675 (left!675 xs!604))) (= (left!675 (left!675 xs!604)) Empty!41))))

(assert (=> b!20038 d!12483))

(declare-fun b!20225 () Bool)

(declare-fun e!10620 () Bool)

(declare-fun e!10621 () Bool)

(assert (=> b!20225 (= e!10620 e!10621)))

(declare-fun res!8780 () Bool)

(assert (=> b!20225 (=> (not res!8780) (not e!10621))))

(assert (=> b!20225 (= res!8780 (>= (- (level!28 (left!675 (left!675 (right!678 res!5603)))) (level!28 (right!678 (left!675 (right!678 res!5603))))) (- 1)))))

(declare-fun b!20226 () Bool)

(declare-fun res!8781 () Bool)

(assert (=> b!20226 (=> (not res!8781) (not e!10621))))

(assert (=> b!20226 (= res!8781 (<= (- (level!28 (left!675 (left!675 (right!678 res!5603)))) (level!28 (right!678 (left!675 (right!678 res!5603))))) 1))))

(declare-fun b!20227 () Bool)

(declare-fun res!8782 () Bool)

(assert (=> b!20227 (=> (not res!8782) (not e!10621))))

(assert (=> b!20227 (= res!8782 (balanced!30 (left!675 (left!675 (right!678 res!5603)))))))

(declare-fun d!12485 () Bool)

(declare-fun res!8783 () Bool)

(assert (=> d!12485 (=> res!8783 e!10620)))

(assert (=> d!12485 (= res!8783 (not (is-CC!30 (left!675 (right!678 res!5603)))))))

(assert (=> d!12485 (= (balanced!30 (left!675 (right!678 res!5603))) e!10620)))

(declare-fun b!20228 () Bool)

(assert (=> b!20228 (= e!10621 (balanced!30 (right!678 (left!675 (right!678 res!5603)))))))

(assert (= (and d!12485 (not res!8783)) b!20225))

(assert (= (and b!20225 res!8780) b!20226))

(assert (= (and b!20226 res!8781) b!20227))

(assert (= (and b!20227 res!8782) b!20228))

(assert (=> b!20225 m!22243))

(assert (=> b!20225 m!22241))

(assert (=> b!20226 m!22243))

(assert (=> b!20226 m!22241))

(declare-fun m!22349 () Bool)

(assert (=> b!20227 m!22349))

(declare-fun m!22351 () Bool)

(assert (=> b!20228 m!22351))

(assert (=> b!20112 d!12485))

(declare-fun d!12487 () Bool)

(declare-fun e!10623 () Bool)

(assert (=> d!12487 e!10623))

(declare-fun res!8785 () Bool)

(assert (=> d!12487 (=> (not res!8785) (not e!10623))))

(declare-fun lt!3045 () List!336)

(assert (=> d!12487 (= res!8785 (= (content!57 lt!3045) (union (content!57 (t!4331 (toList!96 (left!675 res!5603)))) (content!57 (toList!96 (right!678 res!5603))))))))

(declare-fun e!10622 () List!336)

(assert (=> d!12487 (= lt!3045 e!10622)))

(declare-fun c!4868 () Bool)

(assert (=> d!12487 (= c!4868 (is-Nil!331 (t!4331 (toList!96 (left!675 res!5603)))))))

(assert (=> d!12487 (= (++!19 (t!4331 (toList!96 (left!675 res!5603))) (toList!96 (right!678 res!5603))) lt!3045)))

(declare-fun b!20231 () Bool)

(declare-fun res!8784 () Bool)

(assert (=> b!20231 (=> (not res!8784) (not e!10623))))

(assert (=> b!20231 (= res!8784 (= (size!222 lt!3045) (+ (size!222 (t!4331 (toList!96 (left!675 res!5603)))) (size!222 (toList!96 (right!678 res!5603))))))))

(declare-fun b!20230 () Bool)

(assert (=> b!20230 (= e!10622 (Cons!330 (h!244 (t!4331 (toList!96 (left!675 res!5603)))) (++!19 (t!4331 (t!4331 (toList!96 (left!675 res!5603)))) (toList!96 (right!678 res!5603)))))))

(declare-fun b!20232 () Bool)

(assert (=> b!20232 (= e!10623 (or (not (= (toList!96 (right!678 res!5603)) Nil!331)) (= lt!3045 (t!4331 (toList!96 (left!675 res!5603))))))))

(declare-fun b!20229 () Bool)

(assert (=> b!20229 (= e!10622 (toList!96 (right!678 res!5603)))))

(assert (= (and d!12487 c!4868) b!20229))

(assert (= (and d!12487 (not c!4868)) b!20230))

(assert (= (and d!12487 res!8785) b!20231))

(assert (= (and b!20231 res!8784) b!20232))

(declare-fun m!22353 () Bool)

(assert (=> d!12487 m!22353))

(declare-fun m!22355 () Bool)

(assert (=> d!12487 m!22355))

(assert (=> d!12487 m!22009))

(assert (=> d!12487 m!22141))

(declare-fun m!22357 () Bool)

(assert (=> b!20231 m!22357))

(declare-fun m!22359 () Bool)

(assert (=> b!20231 m!22359))

(assert (=> b!20231 m!22009))

(assert (=> b!20231 m!22147))

(assert (=> b!20230 m!22009))

(declare-fun m!22361 () Bool)

(assert (=> b!20230 m!22361))

(assert (=> b!20095 d!12487))

(declare-fun b!20233 () Bool)

(declare-fun e!10624 () Bool)

(declare-fun e!10625 () Bool)

(assert (=> b!20233 (= e!10624 e!10625)))

(declare-fun res!8786 () Bool)

(assert (=> b!20233 (=> (not res!8786) (not e!10625))))

(assert (=> b!20233 (= res!8786 (>= (- (level!28 (left!675 (left!675 (right!678 xs!604)))) (level!28 (right!678 (left!675 (right!678 xs!604))))) (- 1)))))

(declare-fun b!20234 () Bool)

(declare-fun res!8787 () Bool)

(assert (=> b!20234 (=> (not res!8787) (not e!10625))))

(assert (=> b!20234 (= res!8787 (<= (- (level!28 (left!675 (left!675 (right!678 xs!604)))) (level!28 (right!678 (left!675 (right!678 xs!604))))) 1))))

(declare-fun b!20235 () Bool)

(declare-fun res!8788 () Bool)

(assert (=> b!20235 (=> (not res!8788) (not e!10625))))

(assert (=> b!20235 (= res!8788 (balanced!30 (left!675 (left!675 (right!678 xs!604)))))))

(declare-fun d!12489 () Bool)

(declare-fun res!8789 () Bool)

(assert (=> d!12489 (=> res!8789 e!10624)))

(assert (=> d!12489 (= res!8789 (not (is-CC!30 (left!675 (right!678 xs!604)))))))

(assert (=> d!12489 (= (balanced!30 (left!675 (right!678 xs!604))) e!10624)))

(declare-fun b!20236 () Bool)

(assert (=> b!20236 (= e!10625 (balanced!30 (right!678 (left!675 (right!678 xs!604)))))))

(assert (= (and d!12489 (not res!8789)) b!20233))

(assert (= (and b!20233 res!8786) b!20234))

(assert (= (and b!20234 res!8787) b!20235))

(assert (= (and b!20235 res!8788) b!20236))

(declare-fun m!22363 () Bool)

(assert (=> b!20233 m!22363))

(declare-fun m!22365 () Bool)

(assert (=> b!20233 m!22365))

(assert (=> b!20234 m!22363))

(assert (=> b!20234 m!22365))

(declare-fun m!22367 () Bool)

(assert (=> b!20235 m!22367))

(declare-fun m!22369 () Bool)

(assert (=> b!20236 m!22369))

(assert (=> b!20088 d!12489))

(declare-fun d!12491 () Bool)

(declare-fun lt!3046 () Int)

(assert (=> d!12491 (>= lt!3046 0)))

(declare-fun e!10626 () Int)

(assert (=> d!12491 (= lt!3046 e!10626)))

(declare-fun c!4869 () Bool)

(assert (=> d!12491 (= c!4869 (is-Nil!331 (t!4331 lt!2986)))))

(assert (=> d!12491 (= (size!222 (t!4331 lt!2986)) lt!3046)))

(declare-fun b!20237 () Bool)

(assert (=> b!20237 (= e!10626 0)))

(declare-fun b!20238 () Bool)

(assert (=> b!20238 (= e!10626 (+ 1 (size!222 (t!4331 (t!4331 lt!2986)))))))

(assert (= (and d!12491 c!4869) b!20237))

(assert (= (and d!12491 (not c!4869)) b!20238))

(declare-fun m!22371 () Bool)

(assert (=> b!20238 m!22371))

(assert (=> b!20063 d!12491))

(declare-fun b!20240 () Bool)

(declare-fun e!10627 () List!336)

(declare-fun e!10628 () List!336)

(assert (=> b!20240 (= e!10627 e!10628)))

(declare-fun c!4871 () Bool)

(assert (=> b!20240 (= c!4871 (= i!298 0))))

(declare-fun d!12493 () Bool)

(declare-fun c!4870 () Bool)

(assert (=> d!12493 (= c!4870 (is-Nil!331 (++!19 (toList!96 (left!675 xs!604)) (toList!96 (right!678 xs!604)))))))

(assert (=> d!12493 (= (insertAtIndex!9 (++!19 (toList!96 (left!675 xs!604)) (toList!96 (right!678 xs!604))) i!298 y!824) e!10627)))

(declare-fun b!20239 () Bool)

(assert (=> b!20239 (= e!10627 (Cons!330 y!824 Nil!331))))

(declare-fun b!20241 () Bool)

(assert (=> b!20241 (= e!10628 (Cons!330 y!824 (++!19 (toList!96 (left!675 xs!604)) (toList!96 (right!678 xs!604)))))))

(declare-fun b!20242 () Bool)

(assert (=> b!20242 (= e!10628 (Cons!330 (h!244 (++!19 (toList!96 (left!675 xs!604)) (toList!96 (right!678 xs!604)))) (insertAtIndex!9 (t!4331 (++!19 (toList!96 (left!675 xs!604)) (toList!96 (right!678 xs!604)))) (- i!298 1) y!824)))))

(assert (= (and b!20240 c!4871) b!20241))

(assert (= (and b!20240 (not c!4871)) b!20242))

(assert (= (and d!12493 c!4870) b!20239))

(assert (= (and d!12493 (not c!4870)) b!20240))

(declare-fun m!22373 () Bool)

(assert (=> b!20242 m!22373))

(assert (=> b!20027 d!12493))

(assert (=> b!20027 d!12397))

(declare-fun d!12495 () Bool)

(declare-fun lt!3047 () Int)

(assert (=> d!12495 (>= lt!3047 0)))

(declare-fun e!10629 () Int)

(assert (=> d!12495 (= lt!3047 e!10629)))

(declare-fun c!4872 () Bool)

(assert (=> d!12495 (= c!4872 (is-Nil!331 (toList!96 (left!675 xs!604))))))

(assert (=> d!12495 (= (size!222 (toList!96 (left!675 xs!604))) lt!3047)))

(declare-fun b!20243 () Bool)

(assert (=> b!20243 (= e!10629 0)))

(declare-fun b!20244 () Bool)

(assert (=> b!20244 (= e!10629 (+ 1 (size!222 (t!4331 (toList!96 (left!675 xs!604))))))))

(assert (= (and d!12495 c!4872) b!20243))

(assert (= (and d!12495 (not c!4872)) b!20244))

(assert (=> b!20244 m!22335))

(assert (=> b!20027 d!12495))

(declare-fun b!20246 () Bool)

(declare-fun e!10631 () Int)

(declare-fun e!10630 () Int)

(assert (=> b!20246 (= e!10631 e!10630)))

(declare-fun c!4874 () Bool)

(assert (=> b!20246 (= c!4874 (is-Single!30 (left!675 (left!675 xs!604))))))

(declare-fun b!20245 () Bool)

(assert (=> b!20245 (= e!10631 0)))

(declare-fun b!20247 () Bool)

(assert (=> b!20247 (= e!10630 1)))

(declare-fun b!20248 () Bool)

(assert (=> b!20248 (= e!10630 (+ (size!221 (left!675 (left!675 (left!675 xs!604)))) (size!221 (right!678 (left!675 (left!675 xs!604))))))))

(declare-fun d!12497 () Bool)

(declare-fun lt!3048 () Int)

(assert (=> d!12497 (>= lt!3048 0)))

(assert (=> d!12497 (= lt!3048 e!10631)))

(declare-fun c!4873 () Bool)

(assert (=> d!12497 (= c!4873 (is-Empty!41 (left!675 (left!675 xs!604))))))

(assert (=> d!12497 (= (size!221 (left!675 (left!675 xs!604))) lt!3048)))

(assert (= (and b!20246 c!4874) b!20247))

(assert (= (and b!20246 (not c!4874)) b!20248))

(assert (= (and d!12497 c!4873) b!20245))

(assert (= (and d!12497 (not c!4873)) b!20246))

(declare-fun m!22375 () Bool)

(assert (=> b!20248 m!22375))

(declare-fun m!22377 () Bool)

(assert (=> b!20248 m!22377))

(assert (=> b!20121 d!12497))

(declare-fun b!20250 () Bool)

(declare-fun e!10633 () Int)

(declare-fun e!10632 () Int)

(assert (=> b!20250 (= e!10633 e!10632)))

(declare-fun c!4876 () Bool)

(assert (=> b!20250 (= c!4876 (is-Single!30 (right!678 (left!675 xs!604))))))

(declare-fun b!20249 () Bool)

(assert (=> b!20249 (= e!10633 0)))

(declare-fun b!20251 () Bool)

(assert (=> b!20251 (= e!10632 1)))

(declare-fun b!20252 () Bool)

(assert (=> b!20252 (= e!10632 (+ (size!221 (left!675 (right!678 (left!675 xs!604)))) (size!221 (right!678 (right!678 (left!675 xs!604))))))))

(declare-fun d!12499 () Bool)

(declare-fun lt!3049 () Int)

(assert (=> d!12499 (>= lt!3049 0)))

(assert (=> d!12499 (= lt!3049 e!10633)))

(declare-fun c!4875 () Bool)

(assert (=> d!12499 (= c!4875 (is-Empty!41 (right!678 (left!675 xs!604))))))

(assert (=> d!12499 (= (size!221 (right!678 (left!675 xs!604))) lt!3049)))

(assert (= (and b!20250 c!4876) b!20251))

(assert (= (and b!20250 (not c!4876)) b!20252))

(assert (= (and d!12499 c!4875) b!20249))

(assert (= (and d!12499 (not c!4875)) b!20250))

(declare-fun m!22379 () Bool)

(assert (=> b!20252 m!22379))

(declare-fun m!22381 () Bool)

(assert (=> b!20252 m!22381))

(assert (=> b!20121 d!12499))

(declare-fun d!12501 () Bool)

(declare-fun e!10635 () Bool)

(assert (=> d!12501 e!10635))

(declare-fun res!8791 () Bool)

(assert (=> d!12501 (=> (not res!8791) (not e!10635))))

(declare-fun lt!3050 () List!336)

(assert (=> d!12501 (= res!8791 (= (content!57 lt!3050) (union (content!57 (t!4331 (toList!96 (left!675 xs!604)))) (content!57 (toList!96 (right!678 xs!604))))))))

(declare-fun e!10634 () List!336)

(assert (=> d!12501 (= lt!3050 e!10634)))

(declare-fun c!4877 () Bool)

(assert (=> d!12501 (= c!4877 (is-Nil!331 (t!4331 (toList!96 (left!675 xs!604)))))))

(assert (=> d!12501 (= (++!19 (t!4331 (toList!96 (left!675 xs!604))) (toList!96 (right!678 xs!604))) lt!3050)))

(declare-fun b!20255 () Bool)

(declare-fun res!8790 () Bool)

(assert (=> b!20255 (=> (not res!8790) (not e!10635))))

(assert (=> b!20255 (= res!8790 (= (size!222 lt!3050) (+ (size!222 (t!4331 (toList!96 (left!675 xs!604)))) (size!222 (toList!96 (right!678 xs!604))))))))

(declare-fun b!20254 () Bool)

(assert (=> b!20254 (= e!10634 (Cons!330 (h!244 (t!4331 (toList!96 (left!675 xs!604)))) (++!19 (t!4331 (t!4331 (toList!96 (left!675 xs!604)))) (toList!96 (right!678 xs!604)))))))

(declare-fun b!20256 () Bool)

(assert (=> b!20256 (= e!10635 (or (not (= (toList!96 (right!678 xs!604)) Nil!331)) (= lt!3050 (t!4331 (toList!96 (left!675 xs!604))))))))

(declare-fun b!20253 () Bool)

(assert (=> b!20253 (= e!10634 (toList!96 (right!678 xs!604)))))

(assert (= (and d!12501 c!4877) b!20253))

(assert (= (and d!12501 (not c!4877)) b!20254))

(assert (= (and d!12501 res!8791) b!20255))

(assert (= (and b!20255 res!8790) b!20256))

(declare-fun m!22383 () Bool)

(assert (=> d!12501 m!22383))

(declare-fun m!22385 () Bool)

(assert (=> d!12501 m!22385))

(assert (=> d!12501 m!22019))

(assert (=> d!12501 m!22115))

(declare-fun m!22387 () Bool)

(assert (=> b!20255 m!22387))

(assert (=> b!20255 m!22335))

(assert (=> b!20255 m!22019))

(assert (=> b!20255 m!22043))

(assert (=> b!20254 m!22019))

(declare-fun m!22389 () Bool)

(assert (=> b!20254 m!22389))

(assert (=> b!20077 d!12501))

(declare-fun d!12503 () Bool)

(declare-fun c!4880 () Bool)

(assert (=> d!12503 (= c!4880 (is-Nil!331 lt!3011))))

(declare-fun e!10638 () (Set T!1753))

(assert (=> d!12503 (= (content!57 lt!3011) e!10638)))

(declare-fun b!20261 () Bool)

(assert (=> b!20261 (= e!10638 (as emptyset (Set T!1753)))))

(declare-fun b!20262 () Bool)

(assert (=> b!20262 (= e!10638 (union (insert (h!244 lt!3011) (as emptyset (Set T!1753))) (content!57 (t!4331 lt!3011))))))

(assert (= (and d!12503 c!4880) b!20261))

(assert (= (and d!12503 (not c!4880)) b!20262))

(declare-fun m!22391 () Bool)

(assert (=> b!20262 m!22391))

(declare-fun m!22393 () Bool)

(assert (=> b!20262 m!22393))

(assert (=> d!12397 d!12503))

(declare-fun d!12505 () Bool)

(declare-fun c!4881 () Bool)

(assert (=> d!12505 (= c!4881 (is-Nil!331 (toList!96 (left!675 xs!604))))))

(declare-fun e!10639 () (Set T!1753))

(assert (=> d!12505 (= (content!57 (toList!96 (left!675 xs!604))) e!10639)))

(declare-fun b!20263 () Bool)

(assert (=> b!20263 (= e!10639 (as emptyset (Set T!1753)))))

(declare-fun b!20264 () Bool)

(assert (=> b!20264 (= e!10639 (union (insert (h!244 (toList!96 (left!675 xs!604))) (as emptyset (Set T!1753))) (content!57 (t!4331 (toList!96 (left!675 xs!604))))))))

(assert (= (and d!12505 c!4881) b!20263))

(assert (= (and d!12505 (not c!4881)) b!20264))

(declare-fun m!22395 () Bool)

(assert (=> b!20264 m!22395))

(assert (=> b!20264 m!22385))

(assert (=> d!12397 d!12505))

(declare-fun d!12507 () Bool)

(declare-fun c!4882 () Bool)

(assert (=> d!12507 (= c!4882 (is-Nil!331 (toList!96 (right!678 xs!604))))))

(declare-fun e!10640 () (Set T!1753))

(assert (=> d!12507 (= (content!57 (toList!96 (right!678 xs!604))) e!10640)))

(declare-fun b!20265 () Bool)

(assert (=> b!20265 (= e!10640 (as emptyset (Set T!1753)))))

(declare-fun b!20266 () Bool)

(assert (=> b!20266 (= e!10640 (union (insert (h!244 (toList!96 (right!678 xs!604))) (as emptyset (Set T!1753))) (content!57 (t!4331 (toList!96 (right!678 xs!604))))))))

(assert (= (and d!12507 c!4882) b!20265))

(assert (= (and d!12507 (not c!4882)) b!20266))

(declare-fun m!22397 () Bool)

(assert (=> b!20266 m!22397))

(declare-fun m!22399 () Bool)

(assert (=> b!20266 m!22399))

(assert (=> d!12397 d!12507))

(declare-fun b!20267 () Bool)

(declare-fun e!10641 () Bool)

(declare-fun e!10642 () Bool)

(assert (=> b!20267 (= e!10641 e!10642)))

(declare-fun res!8792 () Bool)

(assert (=> b!20267 (=> (not res!8792) (not e!10642))))

(assert (=> b!20267 (= res!8792 (>= (- (level!28 (left!675 (right!678 (right!678 xs!604)))) (level!28 (right!678 (right!678 (right!678 xs!604))))) (- 1)))))

(declare-fun b!20268 () Bool)

(declare-fun res!8793 () Bool)

(assert (=> b!20268 (=> (not res!8793) (not e!10642))))

(assert (=> b!20268 (= res!8793 (<= (- (level!28 (left!675 (right!678 (right!678 xs!604)))) (level!28 (right!678 (right!678 (right!678 xs!604))))) 1))))

(declare-fun b!20269 () Bool)

(declare-fun res!8794 () Bool)

(assert (=> b!20269 (=> (not res!8794) (not e!10642))))

(assert (=> b!20269 (= res!8794 (balanced!30 (left!675 (right!678 (right!678 xs!604)))))))

(declare-fun d!12509 () Bool)

(declare-fun res!8795 () Bool)

(assert (=> d!12509 (=> res!8795 e!10641)))

(assert (=> d!12509 (= res!8795 (not (is-CC!30 (right!678 (right!678 xs!604)))))))

(assert (=> d!12509 (= (balanced!30 (right!678 (right!678 xs!604))) e!10641)))

(declare-fun b!20270 () Bool)

(assert (=> b!20270 (= e!10642 (balanced!30 (right!678 (right!678 (right!678 xs!604)))))))

(assert (= (and d!12509 (not res!8795)) b!20267))

(assert (= (and b!20267 res!8792) b!20268))

(assert (= (and b!20268 res!8793) b!20269))

(assert (= (and b!20269 res!8794) b!20270))

(declare-fun m!22401 () Bool)

(assert (=> b!20267 m!22401))

(declare-fun m!22403 () Bool)

(assert (=> b!20267 m!22403))

(assert (=> b!20268 m!22401))

(assert (=> b!20268 m!22403))

(declare-fun m!22405 () Bool)

(assert (=> b!20269 m!22405))

(declare-fun m!22407 () Bool)

(assert (=> b!20270 m!22407))

(assert (=> b!20089 d!12509))

(declare-fun d!12511 () Bool)

(declare-fun lt!3051 () Int)

(assert (=> d!12511 (>= lt!3051 0)))

(declare-fun e!10643 () Int)

(assert (=> d!12511 (= lt!3051 e!10643)))

(declare-fun c!4883 () Bool)

(assert (=> d!12511 (= c!4883 (is-Nil!331 lt!3014))))

(assert (=> d!12511 (= (size!222 lt!3014) lt!3051)))

(declare-fun b!20271 () Bool)

(assert (=> b!20271 (= e!10643 0)))

(declare-fun b!20272 () Bool)

(assert (=> b!20272 (= e!10643 (+ 1 (size!222 (t!4331 lt!3014))))))

(assert (= (and d!12511 c!4883) b!20271))

(assert (= (and d!12511 (not c!4883)) b!20272))

(declare-fun m!22409 () Bool)

(assert (=> b!20272 m!22409))

(assert (=> d!12413 d!12511))

(assert (=> d!12413 d!12439))

(declare-fun d!12513 () Bool)

(assert (=> d!12513 (= (isEmpty!293 (right!678 (right!678 xs!604))) (= (right!678 (right!678 xs!604)) Empty!41))))

(assert (=> b!20091 d!12513))

(declare-fun d!12515 () Bool)

(declare-fun lt!3052 () Int)

(assert (=> d!12515 (>= lt!3052 0)))

(declare-fun e!10644 () Int)

(assert (=> d!12515 (= lt!3052 e!10644)))

(declare-fun c!4884 () Bool)

(assert (=> d!12515 (= c!4884 (is-Nil!331 lt!2992))))

(assert (=> d!12515 (= (size!222 lt!2992) lt!3052)))

(declare-fun b!20273 () Bool)

(assert (=> b!20273 (= e!10644 0)))

(declare-fun b!20274 () Bool)

(assert (=> b!20274 (= e!10644 (+ 1 (size!222 (t!4331 lt!2992))))))

(assert (= (and d!12515 c!4884) b!20273))

(assert (= (and d!12515 (not c!4884)) b!20274))

(declare-fun m!22411 () Bool)

(assert (=> b!20274 m!22411))

(assert (=> d!12377 d!12515))

(assert (=> d!12377 d!12429))

(declare-fun d!12517 () Bool)

(declare-fun e!10646 () Bool)

(assert (=> d!12517 e!10646))

(declare-fun res!8797 () Bool)

(assert (=> d!12517 (=> (not res!8797) (not e!10646))))

(declare-fun lt!3053 () List!336)

(assert (=> d!12517 (= res!8797 (= (content!57 lt!3053) (union (content!57 (toList!96 (left!675 (left!675 xs!604)))) (content!57 (toList!96 (right!678 (left!675 xs!604)))))))))

(declare-fun e!10645 () List!336)

(assert (=> d!12517 (= lt!3053 e!10645)))

(declare-fun c!4885 () Bool)

(assert (=> d!12517 (= c!4885 (is-Nil!331 (toList!96 (left!675 (left!675 xs!604)))))))

(assert (=> d!12517 (= (++!19 (toList!96 (left!675 (left!675 xs!604))) (toList!96 (right!678 (left!675 xs!604)))) lt!3053)))

(declare-fun b!20277 () Bool)

(declare-fun res!8796 () Bool)

(assert (=> b!20277 (=> (not res!8796) (not e!10646))))

(assert (=> b!20277 (= res!8796 (= (size!222 lt!3053) (+ (size!222 (toList!96 (left!675 (left!675 xs!604)))) (size!222 (toList!96 (right!678 (left!675 xs!604)))))))))

(declare-fun b!20276 () Bool)

(assert (=> b!20276 (= e!10645 (Cons!330 (h!244 (toList!96 (left!675 (left!675 xs!604)))) (++!19 (t!4331 (toList!96 (left!675 (left!675 xs!604)))) (toList!96 (right!678 (left!675 xs!604))))))))

(declare-fun b!20278 () Bool)

(assert (=> b!20278 (= e!10646 (or (not (= (toList!96 (right!678 (left!675 xs!604))) Nil!331)) (= lt!3053 (toList!96 (left!675 (left!675 xs!604))))))))

(declare-fun b!20275 () Bool)

(assert (=> b!20275 (= e!10645 (toList!96 (right!678 (left!675 xs!604))))))

(assert (= (and d!12517 c!4885) b!20275))

(assert (= (and d!12517 (not c!4885)) b!20276))

(assert (= (and d!12517 res!8797) b!20277))

(assert (= (and b!20277 res!8796) b!20278))

(declare-fun m!22413 () Bool)

(assert (=> d!12517 m!22413))

(assert (=> d!12517 m!22059))

(declare-fun m!22415 () Bool)

(assert (=> d!12517 m!22415))

(assert (=> d!12517 m!22061))

(declare-fun m!22417 () Bool)

(assert (=> d!12517 m!22417))

(declare-fun m!22419 () Bool)

(assert (=> b!20277 m!22419))

(assert (=> b!20277 m!22059))

(declare-fun m!22421 () Bool)

(assert (=> b!20277 m!22421))

(assert (=> b!20277 m!22061))

(declare-fun m!22423 () Bool)

(assert (=> b!20277 m!22423))

(assert (=> b!20276 m!22061))

(declare-fun m!22425 () Bool)

(assert (=> b!20276 m!22425))

(assert (=> b!20033 d!12517))

(declare-fun d!12519 () Bool)

(declare-fun lt!3054 () List!336)

(assert (=> d!12519 (= (size!222 lt!3054) (size!221 (left!675 (left!675 xs!604))))))

(declare-fun e!10647 () List!336)

(assert (=> d!12519 (= lt!3054 e!10647)))

(declare-fun c!4887 () Bool)

(assert (=> d!12519 (= c!4887 (is-Empty!41 (left!675 (left!675 xs!604))))))

(assert (=> d!12519 (= (toList!96 (left!675 (left!675 xs!604))) lt!3054)))

(declare-fun b!20279 () Bool)

(assert (=> b!20279 (= e!10647 Nil!331)))

(declare-fun b!20281 () Bool)

(declare-fun e!10648 () List!336)

(assert (=> b!20281 (= e!10648 (Cons!330 (x!8787 (left!675 (left!675 xs!604))) Nil!331))))

(declare-fun b!20282 () Bool)

(assert (=> b!20282 (= e!10648 (++!19 (toList!96 (left!675 (left!675 (left!675 xs!604)))) (toList!96 (right!678 (left!675 (left!675 xs!604))))))))

(declare-fun b!20280 () Bool)

(assert (=> b!20280 (= e!10647 e!10648)))

(declare-fun c!4886 () Bool)

(assert (=> b!20280 (= c!4886 (is-Single!30 (left!675 (left!675 xs!604))))))

(assert (= (and b!20280 c!4886) b!20281))

(assert (= (and b!20280 (not c!4886)) b!20282))

(assert (= (and d!12519 c!4887) b!20279))

(assert (= (and d!12519 (not c!4887)) b!20280))

(declare-fun m!22427 () Bool)

(assert (=> d!12519 m!22427))

(assert (=> d!12519 m!22187))

(declare-fun m!22429 () Bool)

(assert (=> b!20282 m!22429))

(declare-fun m!22431 () Bool)

(assert (=> b!20282 m!22431))

(assert (=> b!20282 m!22429))

(assert (=> b!20282 m!22431))

(declare-fun m!22433 () Bool)

(assert (=> b!20282 m!22433))

(assert (=> b!20033 d!12519))

(declare-fun d!12521 () Bool)

(declare-fun lt!3055 () List!336)

(assert (=> d!12521 (= (size!222 lt!3055) (size!221 (right!678 (left!675 xs!604))))))

(declare-fun e!10649 () List!336)

(assert (=> d!12521 (= lt!3055 e!10649)))

(declare-fun c!4889 () Bool)

(assert (=> d!12521 (= c!4889 (is-Empty!41 (right!678 (left!675 xs!604))))))

(assert (=> d!12521 (= (toList!96 (right!678 (left!675 xs!604))) lt!3055)))

(declare-fun b!20283 () Bool)

(assert (=> b!20283 (= e!10649 Nil!331)))

(declare-fun b!20285 () Bool)

(declare-fun e!10650 () List!336)

(assert (=> b!20285 (= e!10650 (Cons!330 (x!8787 (right!678 (left!675 xs!604))) Nil!331))))

(declare-fun b!20286 () Bool)

(assert (=> b!20286 (= e!10650 (++!19 (toList!96 (left!675 (right!678 (left!675 xs!604)))) (toList!96 (right!678 (right!678 (left!675 xs!604))))))))

(declare-fun b!20284 () Bool)

(assert (=> b!20284 (= e!10649 e!10650)))

(declare-fun c!4888 () Bool)

(assert (=> b!20284 (= c!4888 (is-Single!30 (right!678 (left!675 xs!604))))))

(assert (= (and b!20284 c!4888) b!20285))

(assert (= (and b!20284 (not c!4888)) b!20286))

(assert (= (and d!12521 c!4889) b!20283))

(assert (= (and d!12521 (not c!4889)) b!20284))

(declare-fun m!22435 () Bool)

(assert (=> d!12521 m!22435))

(assert (=> d!12521 m!22189))

(declare-fun m!22437 () Bool)

(assert (=> b!20286 m!22437))

(declare-fun m!22439 () Bool)

(assert (=> b!20286 m!22439))

(assert (=> b!20286 m!22437))

(assert (=> b!20286 m!22439))

(declare-fun m!22441 () Bool)

(assert (=> b!20286 m!22441))

(assert (=> b!20033 d!12521))

(declare-fun d!12523 () Bool)

(declare-fun e!10652 () Bool)

(assert (=> d!12523 e!10652))

(declare-fun res!8799 () Bool)

(assert (=> d!12523 (=> (not res!8799) (not e!10652))))

(declare-fun lt!3056 () List!336)

(assert (=> d!12523 (= res!8799 (= (content!57 lt!3056) (union (content!57 (toList!96 (left!675 xs!604))) (content!57 (insertAtIndex!9 (toList!96 (right!678 xs!604)) (- i!298 (size!222 (toList!96 (left!675 xs!604)))) y!824)))))))

(declare-fun e!10651 () List!336)

(assert (=> d!12523 (= lt!3056 e!10651)))

(declare-fun c!4890 () Bool)

(assert (=> d!12523 (= c!4890 (is-Nil!331 (toList!96 (left!675 xs!604))))))

(assert (=> d!12523 (= (++!19 (toList!96 (left!675 xs!604)) (insertAtIndex!9 (toList!96 (right!678 xs!604)) (- i!298 (size!222 (toList!96 (left!675 xs!604)))) y!824)) lt!3056)))

(declare-fun b!20289 () Bool)

(declare-fun res!8798 () Bool)

(assert (=> b!20289 (=> (not res!8798) (not e!10652))))

(assert (=> b!20289 (= res!8798 (= (size!222 lt!3056) (+ (size!222 (toList!96 (left!675 xs!604))) (size!222 (insertAtIndex!9 (toList!96 (right!678 xs!604)) (- i!298 (size!222 (toList!96 (left!675 xs!604)))) y!824)))))))

(declare-fun b!20288 () Bool)

(assert (=> b!20288 (= e!10651 (Cons!330 (h!244 (toList!96 (left!675 xs!604))) (++!19 (t!4331 (toList!96 (left!675 xs!604))) (insertAtIndex!9 (toList!96 (right!678 xs!604)) (- i!298 (size!222 (toList!96 (left!675 xs!604)))) y!824))))))

(declare-fun b!20290 () Bool)

(assert (=> b!20290 (= e!10652 (or (not (= (insertAtIndex!9 (toList!96 (right!678 xs!604)) (- i!298 (size!222 (toList!96 (left!675 xs!604)))) y!824) Nil!331)) (= lt!3056 (toList!96 (left!675 xs!604)))))))

(declare-fun b!20287 () Bool)

(assert (=> b!20287 (= e!10651 (insertAtIndex!9 (toList!96 (right!678 xs!604)) (- i!298 (size!222 (toList!96 (left!675 xs!604)))) y!824))))

(assert (= (and d!12523 c!4890) b!20287))

(assert (= (and d!12523 (not c!4890)) b!20288))

(assert (= (and d!12523 res!8799) b!20289))

(assert (= (and b!20289 res!8798) b!20290))

(declare-fun m!22443 () Bool)

(assert (=> d!12523 m!22443))

(assert (=> d!12523 m!22017))

(assert (=> d!12523 m!22113))

(assert (=> d!12523 m!22049))

(declare-fun m!22445 () Bool)

(assert (=> d!12523 m!22445))

(declare-fun m!22447 () Bool)

(assert (=> b!20289 m!22447))

(assert (=> b!20289 m!22017))

(assert (=> b!20289 m!22041))

(assert (=> b!20289 m!22049))

(declare-fun m!22449 () Bool)

(assert (=> b!20289 m!22449))

(assert (=> b!20288 m!22049))

(declare-fun m!22451 () Bool)

(assert (=> b!20288 m!22451))

(assert (=> b!20029 d!12523))

(declare-fun b!20292 () Bool)

(declare-fun e!10653 () List!336)

(declare-fun e!10654 () List!336)

(assert (=> b!20292 (= e!10653 e!10654)))

(declare-fun c!4892 () Bool)

(assert (=> b!20292 (= c!4892 (= (- i!298 (size!222 (toList!96 (left!675 xs!604)))) 0))))

(declare-fun d!12525 () Bool)

(declare-fun c!4891 () Bool)

(assert (=> d!12525 (= c!4891 (is-Nil!331 (toList!96 (right!678 xs!604))))))

(assert (=> d!12525 (= (insertAtIndex!9 (toList!96 (right!678 xs!604)) (- i!298 (size!222 (toList!96 (left!675 xs!604)))) y!824) e!10653)))

(declare-fun b!20291 () Bool)

(assert (=> b!20291 (= e!10653 (Cons!330 y!824 Nil!331))))

(declare-fun b!20293 () Bool)

(assert (=> b!20293 (= e!10654 (Cons!330 y!824 (toList!96 (right!678 xs!604))))))

(declare-fun b!20294 () Bool)

(assert (=> b!20294 (= e!10654 (Cons!330 (h!244 (toList!96 (right!678 xs!604))) (insertAtIndex!9 (t!4331 (toList!96 (right!678 xs!604))) (- (- i!298 (size!222 (toList!96 (left!675 xs!604)))) 1) y!824)))))

(assert (= (and b!20292 c!4892) b!20293))

(assert (= (and b!20292 (not c!4892)) b!20294))

(assert (= (and d!12525 c!4891) b!20291))

(assert (= (and d!12525 (not c!4891)) b!20292))

(declare-fun m!22453 () Bool)

(assert (=> b!20294 m!22453))

(assert (=> b!20029 d!12525))

(assert (=> b!20029 d!12495))

(assert (=> b!20050 d!12447))

(assert (=> b!20050 d!12445))

(declare-fun d!12527 () Bool)

(declare-fun lt!3057 () Int)

(assert (=> d!12527 (>= lt!3057 0)))

(declare-fun e!10655 () Int)

(assert (=> d!12527 (= lt!3057 e!10655)))

(declare-fun c!4893 () Bool)

(assert (=> d!12527 (= c!4893 (is-Nil!331 lt!2991))))

(assert (=> d!12527 (= (size!222 lt!2991) lt!3057)))

(declare-fun b!20295 () Bool)

(assert (=> b!20295 (= e!10655 0)))

(declare-fun b!20296 () Bool)

(assert (=> b!20296 (= e!10655 (+ 1 (size!222 (t!4331 lt!2991))))))

(assert (= (and d!12527 c!4893) b!20295))

(assert (= (and d!12527 (not c!4893)) b!20296))

(declare-fun m!22455 () Bool)

(assert (=> b!20296 m!22455))

(assert (=> d!12375 d!12527))

(assert (=> d!12375 d!12427))

(declare-fun b!20298 () Bool)

(declare-fun e!10656 () Int)

(declare-fun lt!3060 () Int)

(declare-fun lt!3058 () Int)

(assert (=> b!20298 (= e!10656 (+ 1 (ite (>= lt!3060 lt!3058) lt!3060 lt!3058)))))

(assert (=> b!20298 (= lt!3058 (level!28 (right!678 (right!678 (right!678 xs!604)))))))

(assert (=> b!20298 (= lt!3060 (level!28 (left!675 (right!678 (right!678 xs!604)))))))

(declare-fun d!12529 () Bool)

(declare-fun lt!3059 () Int)

(assert (=> d!12529 (>= lt!3059 0)))

(assert (=> d!12529 (= lt!3059 e!10656)))

(declare-fun c!4894 () Bool)

(assert (=> d!12529 (= c!4894 (or (is-Empty!41 (right!678 (right!678 xs!604))) (is-Single!30 (right!678 (right!678 xs!604)))))))

(assert (=> d!12529 (= (level!28 (right!678 (right!678 xs!604))) lt!3059)))

(declare-fun b!20297 () Bool)

(assert (=> b!20297 (= e!10656 0)))

(assert (= (and d!12529 c!4894) b!20297))

(assert (= (and d!12529 (not c!4894)) b!20298))

(assert (=> b!20298 m!22403))

(assert (=> b!20298 m!22401))

(assert (=> b!20043 d!12529))

(declare-fun b!20300 () Bool)

(declare-fun e!10657 () Int)

(declare-fun lt!3063 () Int)

(declare-fun lt!3061 () Int)

(assert (=> b!20300 (= e!10657 (+ 1 (ite (>= lt!3063 lt!3061) lt!3063 lt!3061)))))

(assert (=> b!20300 (= lt!3061 (level!28 (right!678 (left!675 (right!678 xs!604)))))))

(assert (=> b!20300 (= lt!3063 (level!28 (left!675 (left!675 (right!678 xs!604)))))))

(declare-fun d!12531 () Bool)

(declare-fun lt!3062 () Int)

(assert (=> d!12531 (>= lt!3062 0)))

(assert (=> d!12531 (= lt!3062 e!10657)))

(declare-fun c!4895 () Bool)

(assert (=> d!12531 (= c!4895 (or (is-Empty!41 (left!675 (right!678 xs!604))) (is-Single!30 (left!675 (right!678 xs!604)))))))

(assert (=> d!12531 (= (level!28 (left!675 (right!678 xs!604))) lt!3062)))

(declare-fun b!20299 () Bool)

(assert (=> b!20299 (= e!10657 0)))

(assert (= (and d!12531 c!4895) b!20299))

(assert (= (and d!12531 (not c!4895)) b!20300))

(assert (=> b!20300 m!22365))

(assert (=> b!20300 m!22363))

(assert (=> b!20043 d!12531))

(declare-fun d!12533 () Bool)

(declare-fun e!10659 () Bool)

(assert (=> d!12533 e!10659))

(declare-fun res!8801 () Bool)

(assert (=> d!12533 (=> (not res!8801) (not e!10659))))

(declare-fun lt!3064 () List!336)

(assert (=> d!12533 (= res!8801 (= (content!57 lt!3064) (union (content!57 (toList!96 (left!675 (right!678 res!5603)))) (content!57 (toList!96 (right!678 (right!678 res!5603)))))))))

(declare-fun e!10658 () List!336)

(assert (=> d!12533 (= lt!3064 e!10658)))

(declare-fun c!4896 () Bool)

(assert (=> d!12533 (= c!4896 (is-Nil!331 (toList!96 (left!675 (right!678 res!5603)))))))

(assert (=> d!12533 (= (++!19 (toList!96 (left!675 (right!678 res!5603))) (toList!96 (right!678 (right!678 res!5603)))) lt!3064)))

(declare-fun b!20303 () Bool)

(declare-fun res!8800 () Bool)

(assert (=> b!20303 (=> (not res!8800) (not e!10659))))

(assert (=> b!20303 (= res!8800 (= (size!222 lt!3064) (+ (size!222 (toList!96 (left!675 (right!678 res!5603)))) (size!222 (toList!96 (right!678 (right!678 res!5603)))))))))

(declare-fun b!20302 () Bool)

(assert (=> b!20302 (= e!10658 (Cons!330 (h!244 (toList!96 (left!675 (right!678 res!5603)))) (++!19 (t!4331 (toList!96 (left!675 (right!678 res!5603)))) (toList!96 (right!678 (right!678 res!5603))))))))

(declare-fun b!20304 () Bool)

(assert (=> b!20304 (= e!10659 (or (not (= (toList!96 (right!678 (right!678 res!5603))) Nil!331)) (= lt!3064 (toList!96 (left!675 (right!678 res!5603))))))))

(declare-fun b!20301 () Bool)

(assert (=> b!20301 (= e!10658 (toList!96 (right!678 (right!678 res!5603))))))

(assert (= (and d!12533 c!4896) b!20301))

(assert (= (and d!12533 (not c!4896)) b!20302))

(assert (= (and d!12533 res!8801) b!20303))

(assert (= (and b!20303 res!8800) b!20304))

(declare-fun m!22457 () Bool)

(assert (=> d!12533 m!22457))

(assert (=> d!12533 m!22161))

(declare-fun m!22459 () Bool)

(assert (=> d!12533 m!22459))

(assert (=> d!12533 m!22163))

(declare-fun m!22461 () Bool)

(assert (=> d!12533 m!22461))

(declare-fun m!22463 () Bool)

(assert (=> b!20303 m!22463))

(assert (=> b!20303 m!22161))

(declare-fun m!22465 () Bool)

(assert (=> b!20303 m!22465))

(assert (=> b!20303 m!22163))

(declare-fun m!22467 () Bool)

(assert (=> b!20303 m!22467))

(assert (=> b!20302 m!22163))

(declare-fun m!22469 () Bool)

(assert (=> b!20302 m!22469))

(assert (=> b!20105 d!12533))

(declare-fun d!12535 () Bool)

(declare-fun lt!3065 () List!336)

(assert (=> d!12535 (= (size!222 lt!3065) (size!221 (left!675 (right!678 res!5603))))))

(declare-fun e!10660 () List!336)

(assert (=> d!12535 (= lt!3065 e!10660)))

(declare-fun c!4898 () Bool)

(assert (=> d!12535 (= c!4898 (is-Empty!41 (left!675 (right!678 res!5603))))))

(assert (=> d!12535 (= (toList!96 (left!675 (right!678 res!5603))) lt!3065)))

(declare-fun b!20305 () Bool)

(assert (=> b!20305 (= e!10660 Nil!331)))

(declare-fun b!20307 () Bool)

(declare-fun e!10661 () List!336)

(assert (=> b!20307 (= e!10661 (Cons!330 (x!8787 (left!675 (right!678 res!5603))) Nil!331))))

(declare-fun b!20308 () Bool)

(assert (=> b!20308 (= e!10661 (++!19 (toList!96 (left!675 (left!675 (right!678 res!5603)))) (toList!96 (right!678 (left!675 (right!678 res!5603))))))))

(declare-fun b!20306 () Bool)

(assert (=> b!20306 (= e!10660 e!10661)))

(declare-fun c!4897 () Bool)

(assert (=> b!20306 (= c!4897 (is-Single!30 (left!675 (right!678 res!5603))))))

(assert (= (and b!20306 c!4897) b!20307))

(assert (= (and b!20306 (not c!4897)) b!20308))

(assert (= (and d!12535 c!4898) b!20305))

(assert (= (and d!12535 (not c!4898)) b!20306))

(declare-fun m!22471 () Bool)

(assert (=> d!12535 m!22471))

(assert (=> d!12535 m!22217))

(declare-fun m!22473 () Bool)

(assert (=> b!20308 m!22473))

(declare-fun m!22475 () Bool)

(assert (=> b!20308 m!22475))

(assert (=> b!20308 m!22473))

(assert (=> b!20308 m!22475))

(declare-fun m!22477 () Bool)

(assert (=> b!20308 m!22477))

(assert (=> b!20105 d!12535))

(declare-fun d!12537 () Bool)

(declare-fun lt!3066 () List!336)

(assert (=> d!12537 (= (size!222 lt!3066) (size!221 (right!678 (right!678 res!5603))))))

(declare-fun e!10662 () List!336)

(assert (=> d!12537 (= lt!3066 e!10662)))

(declare-fun c!4900 () Bool)

(assert (=> d!12537 (= c!4900 (is-Empty!41 (right!678 (right!678 res!5603))))))

(assert (=> d!12537 (= (toList!96 (right!678 (right!678 res!5603))) lt!3066)))

(declare-fun b!20309 () Bool)

(assert (=> b!20309 (= e!10662 Nil!331)))

(declare-fun b!20311 () Bool)

(declare-fun e!10663 () List!336)

(assert (=> b!20311 (= e!10663 (Cons!330 (x!8787 (right!678 (right!678 res!5603))) Nil!331))))

(declare-fun b!20312 () Bool)

(assert (=> b!20312 (= e!10663 (++!19 (toList!96 (left!675 (right!678 (right!678 res!5603)))) (toList!96 (right!678 (right!678 (right!678 res!5603))))))))

(declare-fun b!20310 () Bool)

(assert (=> b!20310 (= e!10662 e!10663)))

(declare-fun c!4899 () Bool)

(assert (=> b!20310 (= c!4899 (is-Single!30 (right!678 (right!678 res!5603))))))

(assert (= (and b!20310 c!4899) b!20311))

(assert (= (and b!20310 (not c!4899)) b!20312))

(assert (= (and d!12537 c!4900) b!20309))

(assert (= (and d!12537 (not c!4900)) b!20310))

(declare-fun m!22479 () Bool)

(assert (=> d!12537 m!22479))

(assert (=> d!12537 m!22219))

(declare-fun m!22481 () Bool)

(assert (=> b!20312 m!22481))

(declare-fun m!22483 () Bool)

(assert (=> b!20312 m!22483))

(assert (=> b!20312 m!22481))

(assert (=> b!20312 m!22483))

(declare-fun m!22485 () Bool)

(assert (=> b!20312 m!22485))

(assert (=> b!20105 d!12537))

(declare-fun d!12539 () Bool)

(declare-fun res!8804 () Bool)

(declare-fun e!10664 () Bool)

(assert (=> d!12539 (=> res!8804 e!10664)))

(assert (=> d!12539 (= res!8804 (not (is-CC!30 (left!675 (right!678 res!5603)))))))

(assert (=> d!12539 (= (concInv!29 (left!675 (right!678 res!5603))) e!10664)))

(declare-fun b!20314 () Bool)

(declare-fun res!8805 () Bool)

(declare-fun e!10665 () Bool)

(assert (=> b!20314 (=> (not res!8805) (not e!10665))))

(assert (=> b!20314 (= res!8805 (not (isEmpty!293 (right!678 (left!675 (right!678 res!5603))))))))

(declare-fun b!20313 () Bool)

(assert (=> b!20313 (= e!10664 e!10665)))

(declare-fun res!8803 () Bool)

(assert (=> b!20313 (=> (not res!8803) (not e!10665))))

(assert (=> b!20313 (= res!8803 (not (isEmpty!293 (left!675 (left!675 (right!678 res!5603))))))))

(declare-fun b!20315 () Bool)

(declare-fun res!8802 () Bool)

(assert (=> b!20315 (=> (not res!8802) (not e!10665))))

(assert (=> b!20315 (= res!8802 (concInv!29 (left!675 (left!675 (right!678 res!5603)))))))

(declare-fun b!20316 () Bool)

(assert (=> b!20316 (= e!10665 (concInv!29 (right!678 (left!675 (right!678 res!5603)))))))

(assert (= (and d!12539 (not res!8804)) b!20313))

(assert (= (and b!20313 res!8803) b!20314))

(assert (= (and b!20314 res!8805) b!20315))

(assert (= (and b!20315 res!8802) b!20316))

(declare-fun m!22487 () Bool)

(assert (=> b!20314 m!22487))

(declare-fun m!22489 () Bool)

(assert (=> b!20313 m!22489))

(declare-fun m!22491 () Bool)

(assert (=> b!20315 m!22491))

(declare-fun m!22493 () Bool)

(assert (=> b!20316 m!22493))

(assert (=> b!20108 d!12539))

(declare-fun d!12541 () Bool)

(assert (=> d!12541 (= (isEmpty!293 (right!678 (left!675 xs!604))) (= (right!678 (left!675 xs!604)) Empty!41))))

(assert (=> b!20039 d!12541))

(assert (=> b!20086 d!12531))

(assert (=> b!20086 d!12529))

(declare-fun d!12543 () Bool)

(declare-fun e!10667 () Bool)

(assert (=> d!12543 e!10667))

(declare-fun res!8807 () Bool)

(assert (=> d!12543 (=> (not res!8807) (not e!10667))))

(declare-fun lt!3067 () List!336)

(assert (=> d!12543 (= res!8807 (= (content!57 lt!3067) (union (content!57 (insertAtIndex!9 (toList!96 (left!675 xs!604)) i!298 y!824)) (content!57 (toList!96 (right!678 xs!604))))))))

(declare-fun e!10666 () List!336)

(assert (=> d!12543 (= lt!3067 e!10666)))

(declare-fun c!4901 () Bool)

(assert (=> d!12543 (= c!4901 (is-Nil!331 (insertAtIndex!9 (toList!96 (left!675 xs!604)) i!298 y!824)))))

(assert (=> d!12543 (= (++!19 (insertAtIndex!9 (toList!96 (left!675 xs!604)) i!298 y!824) (toList!96 (right!678 xs!604))) lt!3067)))

(declare-fun b!20319 () Bool)

(declare-fun res!8806 () Bool)

(assert (=> b!20319 (=> (not res!8806) (not e!10667))))

(assert (=> b!20319 (= res!8806 (= (size!222 lt!3067) (+ (size!222 (insertAtIndex!9 (toList!96 (left!675 xs!604)) i!298 y!824)) (size!222 (toList!96 (right!678 xs!604))))))))

(declare-fun b!20318 () Bool)

(assert (=> b!20318 (= e!10666 (Cons!330 (h!244 (insertAtIndex!9 (toList!96 (left!675 xs!604)) i!298 y!824)) (++!19 (t!4331 (insertAtIndex!9 (toList!96 (left!675 xs!604)) i!298 y!824)) (toList!96 (right!678 xs!604)))))))

(declare-fun b!20320 () Bool)

(assert (=> b!20320 (= e!10667 (or (not (= (toList!96 (right!678 xs!604)) Nil!331)) (= lt!3067 (insertAtIndex!9 (toList!96 (left!675 xs!604)) i!298 y!824))))))

(declare-fun b!20317 () Bool)

(assert (=> b!20317 (= e!10666 (toList!96 (right!678 xs!604)))))

(assert (= (and d!12543 c!4901) b!20317))

(assert (= (and d!12543 (not c!4901)) b!20318))

(assert (= (and d!12543 res!8807) b!20319))

(assert (= (and b!20319 res!8806) b!20320))

(declare-fun m!22495 () Bool)

(assert (=> d!12543 m!22495))

(assert (=> d!12543 m!22053))

(declare-fun m!22497 () Bool)

(assert (=> d!12543 m!22497))

(assert (=> d!12543 m!22019))

(assert (=> d!12543 m!22115))

(declare-fun m!22499 () Bool)

(assert (=> b!20319 m!22499))

(assert (=> b!20319 m!22053))

(declare-fun m!22501 () Bool)

(assert (=> b!20319 m!22501))

(assert (=> b!20319 m!22019))

(assert (=> b!20319 m!22043))

(assert (=> b!20318 m!22019))

(declare-fun m!22503 () Bool)

(assert (=> b!20318 m!22503))

(assert (=> b!20025 d!12543))

(declare-fun b!20322 () Bool)

(declare-fun e!10668 () List!336)

(declare-fun e!10669 () List!336)

(assert (=> b!20322 (= e!10668 e!10669)))

(declare-fun c!4903 () Bool)

(assert (=> b!20322 (= c!4903 (= i!298 0))))

(declare-fun d!12545 () Bool)

(declare-fun c!4902 () Bool)

(assert (=> d!12545 (= c!4902 (is-Nil!331 (toList!96 (left!675 xs!604))))))

(assert (=> d!12545 (= (insertAtIndex!9 (toList!96 (left!675 xs!604)) i!298 y!824) e!10668)))

(declare-fun b!20321 () Bool)

(assert (=> b!20321 (= e!10668 (Cons!330 y!824 Nil!331))))

(declare-fun b!20323 () Bool)

(assert (=> b!20323 (= e!10669 (Cons!330 y!824 (toList!96 (left!675 xs!604))))))

(declare-fun b!20324 () Bool)

(assert (=> b!20324 (= e!10669 (Cons!330 (h!244 (toList!96 (left!675 xs!604))) (insertAtIndex!9 (t!4331 (toList!96 (left!675 xs!604))) (- i!298 1) y!824)))))

(assert (= (and b!20322 c!4903) b!20323))

(assert (= (and b!20322 (not c!4903)) b!20324))

(assert (= (and d!12545 c!4902) b!20321))

(assert (= (and d!12545 (not c!4902)) b!20322))

(assert (=> b!20324 m!22345))

(assert (=> b!20025 d!12545))

(declare-fun d!12547 () Bool)

(declare-fun lt!3068 () Int)

(assert (=> d!12547 (>= lt!3068 0)))

(declare-fun e!10670 () Int)

(assert (=> d!12547 (= lt!3068 e!10670)))

(declare-fun c!4904 () Bool)

(assert (=> d!12547 (= c!4904 (is-Nil!331 lt!3013))))

(assert (=> d!12547 (= (size!222 lt!3013) lt!3068)))

(declare-fun b!20325 () Bool)

(assert (=> b!20325 (= e!10670 0)))

(declare-fun b!20326 () Bool)

(assert (=> b!20326 (= e!10670 (+ 1 (size!222 (t!4331 lt!3013))))))

(assert (= (and d!12547 c!4904) b!20325))

(assert (= (and d!12547 (not c!4904)) b!20326))

(declare-fun m!22505 () Bool)

(assert (=> b!20326 m!22505))

(assert (=> b!20096 d!12547))

(declare-fun d!12549 () Bool)

(declare-fun lt!3069 () Int)

(assert (=> d!12549 (>= lt!3069 0)))

(declare-fun e!10671 () Int)

(assert (=> d!12549 (= lt!3069 e!10671)))

(declare-fun c!4905 () Bool)

(assert (=> d!12549 (= c!4905 (is-Nil!331 (toList!96 (left!675 res!5603))))))

(assert (=> d!12549 (= (size!222 (toList!96 (left!675 res!5603))) lt!3069)))

(declare-fun b!20327 () Bool)

(assert (=> b!20327 (= e!10671 0)))

(declare-fun b!20328 () Bool)

(assert (=> b!20328 (= e!10671 (+ 1 (size!222 (t!4331 (toList!96 (left!675 res!5603))))))))

(assert (= (and d!12549 c!4905) b!20327))

(assert (= (and d!12549 (not c!4905)) b!20328))

(assert (=> b!20328 m!22359))

(assert (=> b!20096 d!12549))

(declare-fun d!12551 () Bool)

(declare-fun lt!3070 () Int)

(assert (=> d!12551 (>= lt!3070 0)))

(declare-fun e!10672 () Int)

(assert (=> d!12551 (= lt!3070 e!10672)))

(declare-fun c!4906 () Bool)

(assert (=> d!12551 (= c!4906 (is-Nil!331 (toList!96 (right!678 res!5603))))))

(assert (=> d!12551 (= (size!222 (toList!96 (right!678 res!5603))) lt!3070)))

(declare-fun b!20329 () Bool)

(assert (=> b!20329 (= e!10672 0)))

(declare-fun b!20330 () Bool)

(assert (=> b!20330 (= e!10672 (+ 1 (size!222 (t!4331 (toList!96 (right!678 res!5603))))))))

(assert (= (and d!12551 c!4906) b!20329))

(assert (= (and d!12551 (not c!4906)) b!20330))

(declare-fun m!22507 () Bool)

(assert (=> b!20330 m!22507))

(assert (=> b!20096 d!12551))

(assert (=> b!20055 d!12451))

(assert (=> b!20055 d!12449))

(declare-fun d!12553 () Bool)

(assert (=> d!12553 (= (isEmpty!293 (right!678 (right!678 res!5603))) (= (right!678 (right!678 res!5603)) Empty!41))))

(assert (=> b!20107 d!12553))

(declare-fun b!20331 () Bool)

(declare-fun e!10673 () Bool)

(declare-fun e!10674 () Bool)

(assert (=> b!20331 (= e!10673 e!10674)))

(declare-fun res!8808 () Bool)

(assert (=> b!20331 (=> (not res!8808) (not e!10674))))

(assert (=> b!20331 (= res!8808 (>= (- (level!28 (left!675 (right!678 (left!675 res!5603)))) (level!28 (right!678 (right!678 (left!675 res!5603))))) (- 1)))))

(declare-fun b!20332 () Bool)

(declare-fun res!8809 () Bool)

(assert (=> b!20332 (=> (not res!8809) (not e!10674))))

(assert (=> b!20332 (= res!8809 (<= (- (level!28 (left!675 (right!678 (left!675 res!5603)))) (level!28 (right!678 (right!678 (left!675 res!5603))))) 1))))

(declare-fun b!20333 () Bool)

(declare-fun res!8810 () Bool)

(assert (=> b!20333 (=> (not res!8810) (not e!10674))))

(assert (=> b!20333 (= res!8810 (balanced!30 (left!675 (right!678 (left!675 res!5603)))))))

(declare-fun d!12555 () Bool)

(declare-fun res!8811 () Bool)

(assert (=> d!12555 (=> res!8811 e!10673)))

(assert (=> d!12555 (= res!8811 (not (is-CC!30 (right!678 (left!675 res!5603)))))))

(assert (=> d!12555 (= (balanced!30 (right!678 (left!675 res!5603))) e!10673)))

(declare-fun b!20334 () Bool)

(assert (=> b!20334 (= e!10674 (balanced!30 (right!678 (right!678 (left!675 res!5603)))))))

(assert (= (and d!12555 (not res!8811)) b!20331))

(assert (= (and b!20331 res!8808) b!20332))

(assert (= (and b!20332 res!8809) b!20333))

(assert (= (and b!20333 res!8810) b!20334))

(assert (=> b!20331 m!22239))

(assert (=> b!20331 m!22237))

(assert (=> b!20332 m!22239))

(assert (=> b!20332 m!22237))

(declare-fun m!22509 () Bool)

(assert (=> b!20333 m!22509))

(declare-fun m!22511 () Bool)

(assert (=> b!20334 m!22511))

(assert (=> b!20049 d!12555))

(declare-fun d!12557 () Bool)

(assert (=> d!12557 (= (isEmpty!293 (left!675 (right!678 xs!604))) (= (left!675 (right!678 xs!604)) Empty!41))))

(assert (=> b!20090 d!12557))

(assert (=> b!20111 d!12453))

(assert (=> b!20111 d!12455))

(declare-fun d!12559 () Bool)

(declare-fun res!8814 () Bool)

(declare-fun e!10675 () Bool)

(assert (=> d!12559 (=> res!8814 e!10675)))

(assert (=> d!12559 (= res!8814 (not (is-CC!30 (left!675 (left!675 res!5603)))))))

(assert (=> d!12559 (= (concInv!29 (left!675 (left!675 res!5603))) e!10675)))

(declare-fun b!20336 () Bool)

(declare-fun res!8815 () Bool)

(declare-fun e!10676 () Bool)

(assert (=> b!20336 (=> (not res!8815) (not e!10676))))

(assert (=> b!20336 (= res!8815 (not (isEmpty!293 (right!678 (left!675 (left!675 res!5603))))))))

(declare-fun b!20335 () Bool)

(assert (=> b!20335 (= e!10675 e!10676)))

(declare-fun res!8813 () Bool)

(assert (=> b!20335 (=> (not res!8813) (not e!10676))))

(assert (=> b!20335 (= res!8813 (not (isEmpty!293 (left!675 (left!675 (left!675 res!5603))))))))

(declare-fun b!20337 () Bool)

(declare-fun res!8812 () Bool)

(assert (=> b!20337 (=> (not res!8812) (not e!10676))))

(assert (=> b!20337 (= res!8812 (concInv!29 (left!675 (left!675 (left!675 res!5603)))))))

(declare-fun b!20338 () Bool)

(assert (=> b!20338 (= e!10676 (concInv!29 (right!678 (left!675 (left!675 res!5603)))))))

(assert (= (and d!12559 (not res!8814)) b!20335))

(assert (= (and b!20335 res!8813) b!20336))

(assert (= (and b!20336 res!8815) b!20337))

(assert (= (and b!20337 res!8812) b!20338))

(declare-fun m!22513 () Bool)

(assert (=> b!20336 m!22513))

(declare-fun m!22515 () Bool)

(assert (=> b!20335 m!22515))

(declare-fun m!22517 () Bool)

(assert (=> b!20337 m!22517))

(declare-fun m!22519 () Bool)

(assert (=> b!20338 m!22519))

(assert (=> b!20116 d!12559))

(declare-fun b!20339 () Bool)

(declare-fun e!10677 () Bool)

(declare-fun e!10678 () Bool)

(assert (=> b!20339 (= e!10677 e!10678)))

(declare-fun res!8816 () Bool)

(assert (=> b!20339 (=> (not res!8816) (not e!10678))))

(assert (=> b!20339 (= res!8816 (>= (- (level!28 (left!675 (left!675 (left!675 xs!604)))) (level!28 (right!678 (left!675 (left!675 xs!604))))) (- 1)))))

(declare-fun b!20340 () Bool)

(declare-fun res!8817 () Bool)

(assert (=> b!20340 (=> (not res!8817) (not e!10678))))

(assert (=> b!20340 (= res!8817 (<= (- (level!28 (left!675 (left!675 (left!675 xs!604)))) (level!28 (right!678 (left!675 (left!675 xs!604))))) 1))))

(declare-fun b!20341 () Bool)

(declare-fun res!8818 () Bool)

(assert (=> b!20341 (=> (not res!8818) (not e!10678))))

(assert (=> b!20341 (= res!8818 (balanced!30 (left!675 (left!675 (left!675 xs!604)))))))

(declare-fun d!12561 () Bool)

(declare-fun res!8819 () Bool)

(assert (=> d!12561 (=> res!8819 e!10677)))

(assert (=> d!12561 (= res!8819 (not (is-CC!30 (left!675 (left!675 xs!604)))))))

(assert (=> d!12561 (= (balanced!30 (left!675 (left!675 xs!604))) e!10677)))

(declare-fun b!20342 () Bool)

(assert (=> b!20342 (= e!10678 (balanced!30 (right!678 (left!675 (left!675 xs!604)))))))

(assert (= (and d!12561 (not res!8819)) b!20339))

(assert (= (and b!20339 res!8816) b!20340))

(assert (= (and b!20340 res!8817) b!20341))

(assert (= (and b!20341 res!8818) b!20342))

(assert (=> b!20339 m!22235))

(assert (=> b!20339 m!22233))

(assert (=> b!20340 m!22235))

(assert (=> b!20340 m!22233))

(declare-fun m!22521 () Bool)

(assert (=> b!20341 m!22521))

(declare-fun m!22523 () Bool)

(assert (=> b!20342 m!22523))

(assert (=> b!20052 d!12561))

(assert (=> b!20047 d!12449))

(assert (=> b!20047 d!12451))

(declare-fun d!12563 () Bool)

(declare-fun res!8822 () Bool)

(declare-fun e!10679 () Bool)

(assert (=> d!12563 (=> res!8822 e!10679)))

(assert (=> d!12563 (= res!8822 (not (is-CC!30 (left!675 (right!678 xs!604)))))))

(assert (=> d!12563 (= (concInv!29 (left!675 (right!678 xs!604))) e!10679)))

(declare-fun b!20344 () Bool)

(declare-fun res!8823 () Bool)

(declare-fun e!10680 () Bool)

(assert (=> b!20344 (=> (not res!8823) (not e!10680))))

(assert (=> b!20344 (= res!8823 (not (isEmpty!293 (right!678 (left!675 (right!678 xs!604))))))))

(declare-fun b!20343 () Bool)

(assert (=> b!20343 (= e!10679 e!10680)))

(declare-fun res!8821 () Bool)

(assert (=> b!20343 (=> (not res!8821) (not e!10680))))

(assert (=> b!20343 (= res!8821 (not (isEmpty!293 (left!675 (left!675 (right!678 xs!604))))))))

(declare-fun b!20345 () Bool)

(declare-fun res!8820 () Bool)

(assert (=> b!20345 (=> (not res!8820) (not e!10680))))

(assert (=> b!20345 (= res!8820 (concInv!29 (left!675 (left!675 (right!678 xs!604)))))))

(declare-fun b!20346 () Bool)

(assert (=> b!20346 (= e!10680 (concInv!29 (right!678 (left!675 (right!678 xs!604)))))))

(assert (= (and d!12563 (not res!8822)) b!20343))

(assert (= (and b!20343 res!8821) b!20344))

(assert (= (and b!20344 res!8823) b!20345))

(assert (= (and b!20345 res!8820) b!20346))

(declare-fun m!22525 () Bool)

(assert (=> b!20344 m!22525))

(declare-fun m!22527 () Bool)

(assert (=> b!20343 m!22527))

(declare-fun m!22529 () Bool)

(assert (=> b!20345 m!22529))

(declare-fun m!22531 () Bool)

(assert (=> b!20346 m!22531))

(assert (=> b!20092 d!12563))

(declare-fun d!12565 () Bool)

(declare-fun lt!3071 () Int)

(assert (=> d!12565 (>= lt!3071 0)))

(declare-fun e!10681 () Int)

(assert (=> d!12565 (= lt!3071 e!10681)))

(declare-fun c!4907 () Bool)

(assert (=> d!12565 (= c!4907 (is-Nil!331 lt!3011))))

(assert (=> d!12565 (= (size!222 lt!3011) lt!3071)))

(declare-fun b!20347 () Bool)

(assert (=> b!20347 (= e!10681 0)))

(declare-fun b!20348 () Bool)

(assert (=> b!20348 (= e!10681 (+ 1 (size!222 (t!4331 lt!3011))))))

(assert (= (and d!12565 c!4907) b!20347))

(assert (= (and d!12565 (not c!4907)) b!20348))

(declare-fun m!22533 () Bool)

(assert (=> b!20348 m!22533))

(assert (=> b!20078 d!12565))

(assert (=> b!20078 d!12495))

(declare-fun d!12567 () Bool)

(declare-fun lt!3072 () Int)

(assert (=> d!12567 (>= lt!3072 0)))

(declare-fun e!10682 () Int)

(assert (=> d!12567 (= lt!3072 e!10682)))

(declare-fun c!4908 () Bool)

(assert (=> d!12567 (= c!4908 (is-Nil!331 (toList!96 (right!678 xs!604))))))

(assert (=> d!12567 (= (size!222 (toList!96 (right!678 xs!604))) lt!3072)))

(declare-fun b!20349 () Bool)

(assert (=> b!20349 (= e!10682 0)))

(declare-fun b!20350 () Bool)

(assert (=> b!20350 (= e!10682 (+ 1 (size!222 (t!4331 (toList!96 (right!678 xs!604))))))))

(assert (= (and d!12567 c!4908) b!20349))

(assert (= (and d!12567 (not c!4908)) b!20350))

(declare-fun m!22535 () Bool)

(assert (=> b!20350 m!22535))

(assert (=> b!20078 d!12567))

(assert (=> b!20087 d!12531))

(assert (=> b!20087 d!12529))

(assert (=> b!20051 d!12447))

(assert (=> b!20051 d!12445))

(assert (=> b!20057 d!12455))

(assert (=> b!20057 d!12453))

(declare-fun d!12569 () Bool)

(declare-fun lt!3073 () Int)

(assert (=> d!12569 (>= lt!3073 0)))

(declare-fun e!10683 () Int)

(assert (=> d!12569 (= lt!3073 e!10683)))

(declare-fun c!4909 () Bool)

(assert (=> d!12569 (= c!4909 (is-Nil!331 lt!3015))))

(assert (=> d!12569 (= (size!222 lt!3015) lt!3073)))

(declare-fun b!20351 () Bool)

(assert (=> b!20351 (= e!10683 0)))

(declare-fun b!20352 () Bool)

(assert (=> b!20352 (= e!10683 (+ 1 (size!222 (t!4331 lt!3015))))))

(assert (= (and d!12569 c!4909) b!20351))

(assert (= (and d!12569 (not c!4909)) b!20352))

(declare-fun m!22537 () Bool)

(assert (=> b!20352 m!22537))

(assert (=> d!12415 d!12569))

(assert (=> d!12415 d!12441))

(declare-fun d!12571 () Bool)

(assert (=> d!12571 (= (isEmpty!293 (left!675 (left!675 res!5603))) (= (left!675 (left!675 res!5603)) Empty!41))))

(assert (=> b!20114 d!12571))

(declare-fun b!20354 () Bool)

(declare-fun e!10685 () Int)

(declare-fun e!10684 () Int)

(assert (=> b!20354 (= e!10685 e!10684)))

(declare-fun c!4911 () Bool)

(assert (=> b!20354 (= c!4911 (is-Single!30 (left!675 (right!678 xs!604))))))

(declare-fun b!20353 () Bool)

(assert (=> b!20353 (= e!10685 0)))

(declare-fun b!20355 () Bool)

(assert (=> b!20355 (= e!10684 1)))

(declare-fun b!20356 () Bool)

(assert (=> b!20356 (= e!10684 (+ (size!221 (left!675 (left!675 (right!678 xs!604)))) (size!221 (right!678 (left!675 (right!678 xs!604))))))))

(declare-fun d!12573 () Bool)

(declare-fun lt!3074 () Int)

(assert (=> d!12573 (>= lt!3074 0)))

(assert (=> d!12573 (= lt!3074 e!10685)))

(declare-fun c!4910 () Bool)

(assert (=> d!12573 (= c!4910 (is-Empty!41 (left!675 (right!678 xs!604))))))

(assert (=> d!12573 (= (size!221 (left!675 (right!678 xs!604))) lt!3074)))

(assert (= (and b!20354 c!4911) b!20355))

(assert (= (and b!20354 (not c!4911)) b!20356))

(assert (= (and d!12573 c!4910) b!20353))

(assert (= (and d!12573 (not c!4910)) b!20354))

(declare-fun m!22539 () Bool)

(assert (=> b!20356 m!22539))

(declare-fun m!22541 () Bool)

(assert (=> b!20356 m!22541))

(assert (=> b!20125 d!12573))

(declare-fun b!20358 () Bool)

(declare-fun e!10687 () Int)

(declare-fun e!10686 () Int)

(assert (=> b!20358 (= e!10687 e!10686)))

(declare-fun c!4913 () Bool)

(assert (=> b!20358 (= c!4913 (is-Single!30 (right!678 (right!678 xs!604))))))

(declare-fun b!20357 () Bool)

(assert (=> b!20357 (= e!10687 0)))

(declare-fun b!20359 () Bool)

(assert (=> b!20359 (= e!10686 1)))

(declare-fun b!20360 () Bool)

(assert (=> b!20360 (= e!10686 (+ (size!221 (left!675 (right!678 (right!678 xs!604)))) (size!221 (right!678 (right!678 (right!678 xs!604))))))))

(declare-fun d!12575 () Bool)

(declare-fun lt!3075 () Int)

(assert (=> d!12575 (>= lt!3075 0)))

(assert (=> d!12575 (= lt!3075 e!10687)))

(declare-fun c!4912 () Bool)

(assert (=> d!12575 (= c!4912 (is-Empty!41 (right!678 (right!678 xs!604))))))

(assert (=> d!12575 (= (size!221 (right!678 (right!678 xs!604))) lt!3075)))

(assert (= (and b!20358 c!4913) b!20359))

(assert (= (and b!20358 (not c!4913)) b!20360))

(assert (= (and d!12575 c!4912) b!20357))

(assert (= (and d!12575 (not c!4912)) b!20358))

(declare-fun m!22543 () Bool)

(assert (=> b!20360 m!22543))

(declare-fun m!22545 () Bool)

(assert (=> b!20360 m!22545))

(assert (=> b!20125 d!12575))

(assert (=> b!20026 d!12495))

(assert (=> b!20026 d!12567))

(declare-fun d!12577 () Bool)

(declare-fun res!8826 () Bool)

(declare-fun e!10688 () Bool)

(assert (=> d!12577 (=> res!8826 e!10688)))

(assert (=> d!12577 (= res!8826 (not (is-CC!30 (left!675 (left!675 xs!604)))))))

(assert (=> d!12577 (= (concInv!29 (left!675 (left!675 xs!604))) e!10688)))

(declare-fun b!20362 () Bool)

(declare-fun res!8827 () Bool)

(declare-fun e!10689 () Bool)

(assert (=> b!20362 (=> (not res!8827) (not e!10689))))

(assert (=> b!20362 (= res!8827 (not (isEmpty!293 (right!678 (left!675 (left!675 xs!604))))))))

(declare-fun b!20361 () Bool)

(assert (=> b!20361 (= e!10688 e!10689)))

(declare-fun res!8825 () Bool)

(assert (=> b!20361 (=> (not res!8825) (not e!10689))))

(assert (=> b!20361 (= res!8825 (not (isEmpty!293 (left!675 (left!675 (left!675 xs!604))))))))

(declare-fun b!20363 () Bool)

(declare-fun res!8824 () Bool)

(assert (=> b!20363 (=> (not res!8824) (not e!10689))))

(assert (=> b!20363 (= res!8824 (concInv!29 (left!675 (left!675 (left!675 xs!604)))))))

(declare-fun b!20364 () Bool)

(assert (=> b!20364 (= e!10689 (concInv!29 (right!678 (left!675 (left!675 xs!604)))))))

(assert (= (and d!12577 (not res!8826)) b!20361))

(assert (= (and b!20361 res!8825) b!20362))

(assert (= (and b!20362 res!8827) b!20363))

(assert (= (and b!20363 res!8824) b!20364))

(declare-fun m!22547 () Bool)

(assert (=> b!20362 m!22547))

(declare-fun m!22549 () Bool)

(assert (=> b!20361 m!22549))

(declare-fun m!22551 () Bool)

(assert (=> b!20363 m!22551))

(declare-fun m!22553 () Bool)

(assert (=> b!20364 m!22553))

(assert (=> b!20040 d!12577))

(declare-fun d!12579 () Bool)

(declare-fun c!4914 () Bool)

(assert (=> d!12579 (= c!4914 (is-Nil!331 lt!3013))))

(declare-fun e!10690 () (Set T!1753))

(assert (=> d!12579 (= (content!57 lt!3013) e!10690)))

(declare-fun b!20365 () Bool)

(assert (=> b!20365 (= e!10690 (as emptyset (Set T!1753)))))

(declare-fun b!20366 () Bool)

(assert (=> b!20366 (= e!10690 (union (insert (h!244 lt!3013) (as emptyset (Set T!1753))) (content!57 (t!4331 lt!3013))))))

(assert (= (and d!12579 c!4914) b!20365))

(assert (= (and d!12579 (not c!4914)) b!20366))

(declare-fun m!22555 () Bool)

(assert (=> b!20366 m!22555))

(declare-fun m!22557 () Bool)

(assert (=> b!20366 m!22557))

(assert (=> d!12411 d!12579))

(declare-fun d!12581 () Bool)

(declare-fun c!4915 () Bool)

(assert (=> d!12581 (= c!4915 (is-Nil!331 (toList!96 (left!675 res!5603))))))

(declare-fun e!10691 () (Set T!1753))

(assert (=> d!12581 (= (content!57 (toList!96 (left!675 res!5603))) e!10691)))

(declare-fun b!20367 () Bool)

(assert (=> b!20367 (= e!10691 (as emptyset (Set T!1753)))))

(declare-fun b!20368 () Bool)

(assert (=> b!20368 (= e!10691 (union (insert (h!244 (toList!96 (left!675 res!5603))) (as emptyset (Set T!1753))) (content!57 (t!4331 (toList!96 (left!675 res!5603))))))))

(assert (= (and d!12581 c!4915) b!20367))

(assert (= (and d!12581 (not c!4915)) b!20368))

(declare-fun m!22559 () Bool)

(assert (=> b!20368 m!22559))

(assert (=> b!20368 m!22355))

(assert (=> d!12411 d!12581))

(declare-fun d!12583 () Bool)

(declare-fun c!4916 () Bool)

(assert (=> d!12583 (= c!4916 (is-Nil!331 (toList!96 (right!678 res!5603))))))

(declare-fun e!10692 () (Set T!1753))

(assert (=> d!12583 (= (content!57 (toList!96 (right!678 res!5603))) e!10692)))

(declare-fun b!20369 () Bool)

(assert (=> b!20369 (= e!10692 (as emptyset (Set T!1753)))))

(declare-fun b!20370 () Bool)

(assert (=> b!20370 (= e!10692 (union (insert (h!244 (toList!96 (right!678 res!5603))) (as emptyset (Set T!1753))) (content!57 (t!4331 (toList!96 (right!678 res!5603))))))))

(assert (= (and d!12583 c!4916) b!20369))

(assert (= (and d!12583 (not c!4916)) b!20370))

(declare-fun m!22561 () Bool)

(assert (=> b!20370 m!22561))

(declare-fun m!22563 () Bool)

(assert (=> b!20370 m!22563))

(assert (=> d!12411 d!12583))

(declare-fun b!20371 () Bool)

(declare-fun e!10693 () Bool)

(declare-fun tp!4637 () Bool)

(declare-fun tp!4638 () Bool)

(assert (=> b!20371 (= e!10693 (and tp!4637 tp!4638))))

(declare-fun b!20372 () Bool)

(assert (=> b!20372 (= e!10693 tp_is_empty!97)))

(assert (=> b!20128 (= tp!4623 e!10693)))

(assert (= (and b!20128 (is-CC!30 (left!675 (right!678 (left!675 res!5603))))) b!20371))

(assert (= (and b!20128 (is-Single!30 (left!675 (right!678 (left!675 res!5603))))) b!20372))

(declare-fun b!20373 () Bool)

(declare-fun e!10694 () Bool)

(declare-fun tp!4639 () Bool)

(declare-fun tp!4640 () Bool)

(assert (=> b!20373 (= e!10694 (and tp!4639 tp!4640))))

(declare-fun b!20374 () Bool)

(assert (=> b!20374 (= e!10694 tp_is_empty!97)))

(assert (=> b!20128 (= tp!4624 e!10694)))

(assert (= (and b!20128 (is-CC!30 (right!678 (right!678 (left!675 res!5603))))) b!20373))

(assert (= (and b!20128 (is-Single!30 (right!678 (right!678 (left!675 res!5603))))) b!20374))

(declare-fun b!20375 () Bool)

(declare-fun e!10695 () Bool)

(declare-fun tp!4641 () Bool)

(declare-fun tp!4642 () Bool)

(assert (=> b!20375 (= e!10695 (and tp!4641 tp!4642))))

(declare-fun b!20376 () Bool)

(assert (=> b!20376 (= e!10695 tp_is_empty!97)))

(assert (=> b!20136 (= tp!4631 e!10695)))

(assert (= (and b!20136 (is-CC!30 (left!675 (right!678 (left!675 xs!604))))) b!20375))

(assert (= (and b!20136 (is-Single!30 (left!675 (right!678 (left!675 xs!604))))) b!20376))

(declare-fun b!20377 () Bool)

(declare-fun e!10696 () Bool)

(declare-fun tp!4643 () Bool)

(declare-fun tp!4644 () Bool)

(assert (=> b!20377 (= e!10696 (and tp!4643 tp!4644))))

(declare-fun b!20378 () Bool)

(assert (=> b!20378 (= e!10696 tp_is_empty!97)))

(assert (=> b!20136 (= tp!4632 e!10696)))

(assert (= (and b!20136 (is-CC!30 (right!678 (right!678 (left!675 xs!604))))) b!20377))

(assert (= (and b!20136 (is-Single!30 (right!678 (right!678 (left!675 xs!604))))) b!20378))

(declare-fun b!20379 () Bool)

(declare-fun e!10697 () Bool)

(declare-fun tp!4645 () Bool)

(declare-fun tp!4646 () Bool)

(assert (=> b!20379 (= e!10697 (and tp!4645 tp!4646))))

(declare-fun b!20380 () Bool)

(assert (=> b!20380 (= e!10697 tp_is_empty!97)))

(assert (=> b!20140 (= tp!4635 e!10697)))

(assert (= (and b!20140 (is-CC!30 (left!675 (right!678 (right!678 res!5603))))) b!20379))

(assert (= (and b!20140 (is-Single!30 (left!675 (right!678 (right!678 res!5603))))) b!20380))

(declare-fun b!20381 () Bool)

(declare-fun e!10698 () Bool)

(declare-fun tp!4647 () Bool)

(declare-fun tp!4648 () Bool)

(assert (=> b!20381 (= e!10698 (and tp!4647 tp!4648))))

(declare-fun b!20382 () Bool)

(assert (=> b!20382 (= e!10698 tp_is_empty!97)))

(assert (=> b!20140 (= tp!4636 e!10698)))

(assert (= (and b!20140 (is-CC!30 (right!678 (right!678 (right!678 res!5603))))) b!20381))

(assert (= (and b!20140 (is-Single!30 (right!678 (right!678 (right!678 res!5603))))) b!20382))

(declare-fun b!20383 () Bool)

(declare-fun e!10699 () Bool)

(declare-fun tp!4649 () Bool)

(declare-fun tp!4650 () Bool)

(assert (=> b!20383 (= e!10699 (and tp!4649 tp!4650))))

(declare-fun b!20384 () Bool)

(assert (=> b!20384 (= e!10699 tp_is_empty!97)))

(assert (=> b!20126 (= tp!4621 e!10699)))

(assert (= (and b!20126 (is-CC!30 (left!675 (left!675 (left!675 res!5603))))) b!20383))

(assert (= (and b!20126 (is-Single!30 (left!675 (left!675 (left!675 res!5603))))) b!20384))

(declare-fun b!20385 () Bool)

(declare-fun e!10700 () Bool)

(declare-fun tp!4651 () Bool)

(declare-fun tp!4652 () Bool)

(assert (=> b!20385 (= e!10700 (and tp!4651 tp!4652))))

(declare-fun b!20386 () Bool)

(assert (=> b!20386 (= e!10700 tp_is_empty!97)))

(assert (=> b!20126 (= tp!4622 e!10700)))

(assert (= (and b!20126 (is-CC!30 (right!678 (left!675 (left!675 res!5603))))) b!20385))

(assert (= (and b!20126 (is-Single!30 (right!678 (left!675 (left!675 res!5603))))) b!20386))

(declare-fun b!20387 () Bool)

(declare-fun e!10701 () Bool)

(declare-fun tp!4653 () Bool)

(declare-fun tp!4654 () Bool)

(assert (=> b!20387 (= e!10701 (and tp!4653 tp!4654))))

(declare-fun b!20388 () Bool)

(assert (=> b!20388 (= e!10701 tp_is_empty!97)))

(assert (=> b!20132 (= tp!4627 e!10701)))

(assert (= (and b!20132 (is-CC!30 (left!675 (right!678 (right!678 xs!604))))) b!20387))

(assert (= (and b!20132 (is-Single!30 (left!675 (right!678 (right!678 xs!604))))) b!20388))

(declare-fun b!20389 () Bool)

(declare-fun e!10702 () Bool)

(declare-fun tp!4655 () Bool)

(declare-fun tp!4656 () Bool)

(assert (=> b!20389 (= e!10702 (and tp!4655 tp!4656))))

(declare-fun b!20390 () Bool)

(assert (=> b!20390 (= e!10702 tp_is_empty!97)))

(assert (=> b!20132 (= tp!4628 e!10702)))

(assert (= (and b!20132 (is-CC!30 (right!678 (right!678 (right!678 xs!604))))) b!20389))

(assert (= (and b!20132 (is-Single!30 (right!678 (right!678 (right!678 xs!604))))) b!20390))

(declare-fun b!20391 () Bool)

(declare-fun e!10703 () Bool)

(declare-fun tp!4657 () Bool)

(declare-fun tp!4658 () Bool)

(assert (=> b!20391 (= e!10703 (and tp!4657 tp!4658))))

(declare-fun b!20392 () Bool)

(assert (=> b!20392 (= e!10703 tp_is_empty!97)))

(assert (=> b!20130 (= tp!4625 e!10703)))

(assert (= (and b!20130 (is-CC!30 (left!675 (left!675 (right!678 xs!604))))) b!20391))

(assert (= (and b!20130 (is-Single!30 (left!675 (left!675 (right!678 xs!604))))) b!20392))

(declare-fun b!20393 () Bool)

(declare-fun e!10704 () Bool)

(declare-fun tp!4659 () Bool)

(declare-fun tp!4660 () Bool)

(assert (=> b!20393 (= e!10704 (and tp!4659 tp!4660))))

(declare-fun b!20394 () Bool)

(assert (=> b!20394 (= e!10704 tp_is_empty!97)))

(assert (=> b!20130 (= tp!4626 e!10704)))

(assert (= (and b!20130 (is-CC!30 (right!678 (left!675 (right!678 xs!604))))) b!20393))

(assert (= (and b!20130 (is-Single!30 (right!678 (left!675 (right!678 xs!604))))) b!20394))

(declare-fun b!20395 () Bool)

(declare-fun e!10705 () Bool)

(declare-fun tp!4661 () Bool)

(declare-fun tp!4662 () Bool)

(assert (=> b!20395 (= e!10705 (and tp!4661 tp!4662))))

(declare-fun b!20396 () Bool)

(assert (=> b!20396 (= e!10705 tp_is_empty!97)))

(assert (=> b!20134 (= tp!4629 e!10705)))

(assert (= (and b!20134 (is-CC!30 (left!675 (left!675 (left!675 xs!604))))) b!20395))

(assert (= (and b!20134 (is-Single!30 (left!675 (left!675 (left!675 xs!604))))) b!20396))

(declare-fun b!20397 () Bool)

(declare-fun e!10706 () Bool)

(declare-fun tp!4663 () Bool)

(declare-fun tp!4664 () Bool)

(assert (=> b!20397 (= e!10706 (and tp!4663 tp!4664))))

(declare-fun b!20398 () Bool)

(assert (=> b!20398 (= e!10706 tp_is_empty!97)))

(assert (=> b!20134 (= tp!4630 e!10706)))

(assert (= (and b!20134 (is-CC!30 (right!678 (left!675 (left!675 xs!604))))) b!20397))

(assert (= (and b!20134 (is-Single!30 (right!678 (left!675 (left!675 xs!604))))) b!20398))

(declare-fun b!20399 () Bool)

(declare-fun e!10707 () Bool)

(declare-fun tp!4665 () Bool)

(declare-fun tp!4666 () Bool)

(assert (=> b!20399 (= e!10707 (and tp!4665 tp!4666))))

(declare-fun b!20400 () Bool)

(assert (=> b!20400 (= e!10707 tp_is_empty!97)))

(assert (=> b!20138 (= tp!4633 e!10707)))

(assert (= (and b!20138 (is-CC!30 (left!675 (left!675 (right!678 res!5603))))) b!20399))

(assert (= (and b!20138 (is-Single!30 (left!675 (left!675 (right!678 res!5603))))) b!20400))

(declare-fun b!20401 () Bool)

(declare-fun e!10708 () Bool)

(declare-fun tp!4667 () Bool)

(declare-fun tp!4668 () Bool)

(assert (=> b!20401 (= e!10708 (and tp!4667 tp!4668))))

(declare-fun b!20402 () Bool)

(assert (=> b!20402 (= e!10708 tp_is_empty!97)))

(assert (=> b!20138 (= tp!4634 e!10708)))

(assert (= (and b!20138 (is-CC!30 (right!678 (left!675 (right!678 res!5603))))) b!20401))

(assert (= (and b!20138 (is-Single!30 (right!678 (left!675 (right!678 res!5603))))) b!20402))

(push 1)

(assert (not b!20189))

(assert (not b!20262))

(assert (not b!20227))

(assert (not b!20315))

(assert (not d!12519))

(assert (not b!20298))

(assert (not b!20375))

(assert (not b!20167))

(assert (not b!20387))

(assert (not b!20276))

(assert (not b!20308))

(assert (not b!20348))

(assert (not b!20178))

(assert (not b!20228))

(assert (not b!20231))

(assert (not b!20300))

(assert (not d!12461))

(assert (not b!20142))

(assert (not b!20157))

(assert (not b!20373))

(assert (not d!12521))

(assert (not b!20180))

(assert (not b!20235))

(assert (not b!20143))

(assert (not b!20318))

(assert (not b!20296))

(assert (not b!20242))

(assert (not b!20169))

(assert (not b!20288))

(assert (not b!20303))

(assert (not b!20171))

(assert (not b!20366))

(assert (not b!20162))

(assert (not b!20314))

(assert (not b!20266))

(assert (not d!12475))

(assert (not b!20173))

(assert (not b!20333))

(assert (not b!20331))

(assert (not b!20342))

(assert (not b!20194))

(assert (not b!20286))

(assert (not b!20205))

(assert (not b!20197))

(assert (not b!20377))

(assert (not b!20343))

(assert (not b!20177))

(assert (not b!20350))

(assert (not b!20230))

(assert (not b!20238))

(assert (not b!20175))

(assert (not b!20224))

(assert (not b!20149))

(assert (not b!20391))

(assert (not b!20244))

(assert (not b!20330))

(assert (not b!20270))

(assert (not b!20150))

(assert (not b!20226))

(assert (not b!20222))

(assert (not b!20344))

(assert (not b!20393))

(assert (not b!20277))

(assert (not b!20324))

(assert (not b!20201))

(assert (not b!20179))

(assert (not b!20203))

(assert (not b!20220))

(assert (not b!20352))

(assert (not b!20248))

(assert (not b!20183))

(assert (not d!12477))

(assert (not b!20272))

(assert (not b!20401))

(assert (not d!12501))

(assert (not d!12523))

(assert (not b!20379))

(assert (not b!20193))

(assert (not b!20199))

(assert (not b!20165))

(assert (not d!12533))

(assert (not b!20223))

(assert (not b!20294))

(assert (not b!20338))

(assert (not b!20336))

(assert (not b!20371))

(assert (not b!20326))

(assert (not b!20316))

(assert (not b!20383))

(assert (not b!20164))

(assert (not b!20319))

(assert (not b!20289))

(assert (not d!12543))

(assert (not b!20144))

(assert (not b!20346))

(assert (not b!20328))

(assert (not b!20335))

(assert (not b!20210))

(assert (not b!20200))

(assert (not b!20153))

(assert tp_is_empty!97)

(assert (not b!20339))

(assert (not b!20313))

(assert (not b!20207))

(assert (not d!12487))

(assert (not b!20267))

(assert (not b!20184))

(assert (not b!20221))

(assert (not b!20397))

(assert (not b!20332))

(assert (not b!20255))

(assert (not b!20254))

(assert (not b!20264))

(assert (not d!12479))

(assert (not b!20364))

(assert (not b!20274))

(assert (not b!20381))

(assert (not b!20370))

(assert (not b!20252))

(assert (not b!20356))

(assert (not b!20363))

(assert (not d!12463))

(assert (not b!20269))

(assert (not b!20282))

(assert (not b!20161))

(assert (not b!20215))

(assert (not b!20152))

(assert (not b!20163))

(assert (not d!12459))

(assert (not b!20268))

(assert (not b!20399))

(assert (not d!12535))

(assert (not b!20368))

(assert (not b!20334))

(assert (not d!12537))

(assert (not b!20362))

(assert (not b!20361))

(assert (not b!20196))

(assert (not b!20360))

(assert (not b!20302))

(assert (not b!20209))

(assert (not b!20341))

(assert (not b!20385))

(assert (not b!20145))

(assert (not b!20151))

(assert (not b!20395))

(assert (not b!20206))

(assert (not b!20234))

(assert (not b!20225))

(assert (not d!12517))

(assert (not b!20345))

(assert (not b!20204))

(assert (not b!20389))

(assert (not b!20233))

(assert (not b!20337))

(assert (not b!20195))

(assert (not b!20312))

(assert (not b!20340))

(assert (not b!20236))

(assert (not b!20198))

(assert (not b!20181))

(assert (not b!20219))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10978 () Bool)

(assert start!10978)

(declare-fun b!83875 () Bool)

(declare-fun e!45475 () Bool)

(declare-datatypes () ((List!681 (Cons!638 (h!1008 Int) (t!47933 List!681)) (Nil!640))))

(declare-fun l1!433 () List!681)

(declare-fun l2!426 () List!681)

(declare-fun last!28 (List!681) Int)

(declare-fun head!1064 (List!681) Int)

(assert (=> b!83875 (= e!45475 (<= (last!28 l1!433) (head!1064 l2!426)))))

(declare-fun res!43224 () Bool)

(declare-fun e!45472 () Bool)

(assert (=> start!10978 (=> (not res!43224) (not e!45472))))

(declare-fun isSorted!1 (List!681) Bool)

(assert (=> start!10978 (= res!43224 (isSorted!1 l1!433))))

(assert (=> start!10978 e!45472))

(assert (=> start!10978 true))

(declare-fun b!83876 () Bool)

(declare-fun res!43230 () Bool)

(assert (=> b!83876 (=> (not res!43230) (not e!45472))))

(assert (=> b!83876 (= res!43230 (isSorted!1 l2!426))))

(declare-fun b!83877 () Bool)

(declare-fun e!45473 () Bool)

(declare-fun e!45474 () Bool)

(assert (=> b!83877 (= e!45473 e!45474)))

(declare-fun res!43221 () Bool)

(assert (=> b!83877 (=> (not res!43221) (not e!45474))))

(declare-fun l1!434 () List!681)

(declare-fun isEmpty!690 (List!681) Bool)

(assert (=> b!83877 (= res!43221 (not (isEmpty!690 l1!434)))))

(declare-fun b!83878 () Bool)

(declare-fun l2!427 () List!681)

(assert (=> b!83878 (= e!45474 (> (last!28 l1!434) (head!1064 l2!427)))))

(declare-fun b!83879 () Bool)

(declare-fun res!43222 () Bool)

(assert (=> b!83879 (=> (not res!43222) (not e!45472))))

(assert (=> b!83879 (= res!43222 (and (is-Cons!638 l1!433) (= l1!434 (t!47933 l1!433)) (= l2!427 l2!426)))))

(declare-fun b!83880 () Bool)

(assert (=> b!83880 (= e!45472 e!45473)))

(declare-fun res!43225 () Bool)

(assert (=> b!83880 (=> res!43225 e!45473)))

(assert (=> b!83880 (= res!43225 (not (isSorted!1 l1!434)))))

(declare-fun b!83881 () Bool)

(declare-fun res!43227 () Bool)

(assert (=> b!83881 (=> res!43227 e!45475)))

(assert (=> b!83881 (= res!43227 (isEmpty!690 l2!426))))

(declare-fun b!83882 () Bool)

(declare-fun res!43226 () Bool)

(assert (=> b!83882 (=> res!43226 e!45473)))

(assert (=> b!83882 (= res!43226 (not (isSorted!1 l2!427)))))

(declare-fun b!83883 () Bool)

(declare-fun res!43228 () Bool)

(assert (=> b!83883 (=> (not res!43228) (not e!45472))))

(assert (=> b!83883 (= res!43228 e!45475)))

(declare-fun res!43229 () Bool)

(assert (=> b!83883 (=> res!43229 e!45475)))

(assert (=> b!83883 (= res!43229 (isEmpty!690 l1!433))))

(declare-fun b!83884 () Bool)

(declare-fun res!43223 () Bool)

(assert (=> b!83884 (=> (not res!43223) (not e!45474))))

(assert (=> b!83884 (= res!43223 (not (isEmpty!690 l2!427)))))

(assert (= (and start!10978 res!43224) b!83876))

(assert (= (and b!83876 res!43230) b!83883))

(assert (= (and b!83883 (not res!43229)) b!83881))

(assert (= (and b!83881 (not res!43227)) b!83875))

(assert (= (and b!83883 res!43228) b!83879))

(assert (= (and b!83879 res!43222) b!83880))

(assert (= (and b!83880 (not res!43225)) b!83882))

(assert (= (and b!83882 (not res!43226)) b!83877))

(assert (= (and b!83877 res!43221) b!83884))

(assert (= (and b!83884 res!43223) b!83878))

(declare-fun m!79750 () Bool)

(assert (=> b!83877 m!79750))

(declare-fun m!79752 () Bool)

(assert (=> start!10978 m!79752))

(declare-fun m!79754 () Bool)

(assert (=> b!83883 m!79754))

(declare-fun m!79756 () Bool)

(assert (=> b!83882 m!79756))

(declare-fun m!79758 () Bool)

(assert (=> b!83875 m!79758))

(declare-fun m!79760 () Bool)

(assert (=> b!83875 m!79760))

(declare-fun m!79762 () Bool)

(assert (=> b!83878 m!79762))

(declare-fun m!79764 () Bool)

(assert (=> b!83878 m!79764))

(declare-fun m!79766 () Bool)

(assert (=> b!83880 m!79766))

(declare-fun m!79768 () Bool)

(assert (=> b!83876 m!79768))

(declare-fun m!79770 () Bool)

(assert (=> b!83881 m!79770))

(declare-fun m!79772 () Bool)

(assert (=> b!83884 m!79772))

(push 1)

(assert (not b!83884))

(assert (not b!83880))

(assert (not b!83883))

(assert (not b!83882))

(assert (not b!83876))

(assert (not b!83877))

(assert (not b!83878))

(assert (not start!10978))

(assert (not b!83881))

(assert (not b!83875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!56617 () Bool)

(declare-fun lt!19561 () Int)

(declare-fun contains!58 (List!681 Int) Bool)

(assert (=> d!56617 (contains!58 l1!434 lt!19561)))

(declare-fun e!45478 () Int)

(assert (=> d!56617 (= lt!19561 e!45478)))

(declare-fun c!20980 () Bool)

(assert (=> d!56617 (= c!20980 (and (is-Cons!638 l1!434) (is-Nil!640 (t!47933 l1!434))))))

(assert (=> d!56617 (not (isEmpty!690 l1!434))))

(assert (=> d!56617 (= (last!28 l1!434) lt!19561)))

(declare-fun b!83889 () Bool)

(assert (=> b!83889 (= e!45478 (h!1008 l1!434))))

(declare-fun b!83890 () Bool)

(assert (=> b!83890 (= e!45478 (last!28 (t!47933 l1!434)))))

(assert (= (and d!56617 c!20980) b!83889))

(assert (= (and d!56617 (not c!20980)) b!83890))

(declare-fun m!79774 () Bool)

(assert (=> d!56617 m!79774))

(assert (=> d!56617 m!79750))

(declare-fun m!79776 () Bool)

(assert (=> b!83890 m!79776))

(assert (=> b!83878 d!56617))

(declare-fun d!56619 () Bool)

(assert (=> d!56619 (= (head!1064 l2!427) (h!1008 l2!427))))

(assert (=> b!83878 d!56619))

(declare-fun d!56621 () Bool)

(assert (=> d!56621 (= (isEmpty!690 l1!433) (is-Nil!640 l1!433))))

(assert (=> b!83883 d!56621))

(declare-fun d!56623 () Bool)

(declare-fun res!43235 () Bool)

(declare-fun e!45483 () Bool)

(assert (=> d!56623 (=> res!43235 e!45483)))

(assert (=> d!56623 (= res!43235 (not (and (is-Cons!638 l1!434) (is-Cons!638 (t!47933 l1!434)))))))

(assert (=> d!56623 (= (isSorted!1 l1!434) e!45483)))

(declare-fun b!83895 () Bool)

(declare-fun e!45484 () Bool)

(assert (=> b!83895 (= e!45483 e!45484)))

(declare-fun res!43236 () Bool)

(assert (=> b!83895 (=> (not res!43236) (not e!45484))))

(assert (=> b!83895 (= res!43236 (<= (h!1008 l1!434) (h!1008 (t!47933 l1!434))))))

(declare-fun b!83896 () Bool)

(assert (=> b!83896 (= e!45484 (isSorted!1 (t!47933 l1!434)))))

(assert (= (and d!56623 (not res!43235)) b!83895))

(assert (= (and b!83895 res!43236) b!83896))

(declare-fun m!79778 () Bool)

(assert (=> b!83896 m!79778))

(assert (=> b!83880 d!56623))

(declare-fun d!56625 () Bool)

(declare-fun res!43237 () Bool)

(declare-fun e!45485 () Bool)

(assert (=> d!56625 (=> res!43237 e!45485)))

(assert (=> d!56625 (= res!43237 (not (and (is-Cons!638 l2!427) (is-Cons!638 (t!47933 l2!427)))))))

(assert (=> d!56625 (= (isSorted!1 l2!427) e!45485)))

(declare-fun b!83897 () Bool)

(declare-fun e!45486 () Bool)

(assert (=> b!83897 (= e!45485 e!45486)))

(declare-fun res!43238 () Bool)

(assert (=> b!83897 (=> (not res!43238) (not e!45486))))

(assert (=> b!83897 (= res!43238 (<= (h!1008 l2!427) (h!1008 (t!47933 l2!427))))))

(declare-fun b!83898 () Bool)

(assert (=> b!83898 (= e!45486 (isSorted!1 (t!47933 l2!427)))))

(assert (= (and d!56625 (not res!43237)) b!83897))

(assert (= (and b!83897 res!43238) b!83898))

(declare-fun m!79780 () Bool)

(assert (=> b!83898 m!79780))

(assert (=> b!83882 d!56625))

(declare-fun d!56627 () Bool)

(assert (=> d!56627 (= (isEmpty!690 l2!427) (is-Nil!640 l2!427))))

(assert (=> b!83884 d!56627))

(declare-fun d!56629 () Bool)

(assert (=> d!56629 (= (isEmpty!690 l2!426) (is-Nil!640 l2!426))))

(assert (=> b!83881 d!56629))

(declare-fun d!56631 () Bool)

(assert (=> d!56631 (= (isEmpty!690 l1!434) (is-Nil!640 l1!434))))

(assert (=> b!83877 d!56631))

(declare-fun d!56633 () Bool)

(declare-fun lt!19562 () Int)

(assert (=> d!56633 (contains!58 l1!433 lt!19562)))

(declare-fun e!45487 () Int)

(assert (=> d!56633 (= lt!19562 e!45487)))

(declare-fun c!20981 () Bool)

(assert (=> d!56633 (= c!20981 (and (is-Cons!638 l1!433) (is-Nil!640 (t!47933 l1!433))))))

(assert (=> d!56633 (not (isEmpty!690 l1!433))))

(assert (=> d!56633 (= (last!28 l1!433) lt!19562)))

(declare-fun b!83899 () Bool)

(assert (=> b!83899 (= e!45487 (h!1008 l1!433))))

(declare-fun b!83900 () Bool)

(assert (=> b!83900 (= e!45487 (last!28 (t!47933 l1!433)))))

(assert (= (and d!56633 c!20981) b!83899))

(assert (= (and d!56633 (not c!20981)) b!83900))

(declare-fun m!79782 () Bool)

(assert (=> d!56633 m!79782))

(assert (=> d!56633 m!79754))

(declare-fun m!79784 () Bool)

(assert (=> b!83900 m!79784))

(assert (=> b!83875 d!56633))

(declare-fun d!56635 () Bool)

(assert (=> d!56635 (= (head!1064 l2!426) (h!1008 l2!426))))

(assert (=> b!83875 d!56635))

(declare-fun d!56637 () Bool)

(declare-fun res!43239 () Bool)

(declare-fun e!45488 () Bool)

(assert (=> d!56637 (=> res!43239 e!45488)))

(assert (=> d!56637 (= res!43239 (not (and (is-Cons!638 l2!426) (is-Cons!638 (t!47933 l2!426)))))))

(assert (=> d!56637 (= (isSorted!1 l2!426) e!45488)))

(declare-fun b!83901 () Bool)

(declare-fun e!45489 () Bool)

(assert (=> b!83901 (= e!45488 e!45489)))

(declare-fun res!43240 () Bool)

(assert (=> b!83901 (=> (not res!43240) (not e!45489))))

(assert (=> b!83901 (= res!43240 (<= (h!1008 l2!426) (h!1008 (t!47933 l2!426))))))

(declare-fun b!83902 () Bool)

(assert (=> b!83902 (= e!45489 (isSorted!1 (t!47933 l2!426)))))

(assert (= (and d!56637 (not res!43239)) b!83901))

(assert (= (and b!83901 res!43240) b!83902))

(declare-fun m!79786 () Bool)

(assert (=> b!83902 m!79786))

(assert (=> b!83876 d!56637))

(declare-fun d!56639 () Bool)

(declare-fun res!43241 () Bool)

(declare-fun e!45490 () Bool)

(assert (=> d!56639 (=> res!43241 e!45490)))

(assert (=> d!56639 (= res!43241 (not (and (is-Cons!638 l1!433) (is-Cons!638 (t!47933 l1!433)))))))

(assert (=> d!56639 (= (isSorted!1 l1!433) e!45490)))

(declare-fun b!83903 () Bool)

(declare-fun e!45491 () Bool)

(assert (=> b!83903 (= e!45490 e!45491)))

(declare-fun res!43242 () Bool)

(assert (=> b!83903 (=> (not res!43242) (not e!45491))))

(assert (=> b!83903 (= res!43242 (<= (h!1008 l1!433) (h!1008 (t!47933 l1!433))))))

(declare-fun b!83904 () Bool)

(assert (=> b!83904 (= e!45491 (isSorted!1 (t!47933 l1!433)))))

(assert (= (and d!56639 (not res!43241)) b!83903))

(assert (= (and b!83903 res!43242) b!83904))

(declare-fun m!79788 () Bool)

(assert (=> b!83904 m!79788))

(assert (=> start!10978 d!56639))

(push 1)

(assert (not b!83902))

(assert (not d!56617))

(assert (not b!83896))

(assert (not b!83898))

(assert (not b!83890))

(assert (not d!56633))

(assert (not b!83900))

(assert (not b!83904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


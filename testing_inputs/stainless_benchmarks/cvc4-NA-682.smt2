; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4814 () Bool)

(assert start!4814)

(declare-fun b!37660 () Bool)

(declare-datatypes () ((Unit!299 (Unit!300))))

(declare-fun e!19370 () Unit!299)

(declare-fun Unit!301 () Unit!299)

(assert (=> b!37660 (= e!19370 Unit!301)))

(declare-fun b!37661 () Bool)

(declare-fun res!17942 () Bool)

(declare-fun e!19369 () Bool)

(assert (=> b!37661 (=> (not res!17942) (not e!19369))))

(declare-fun tmp!175 () Unit!299)

(declare-datatypes () ((Nat!43 (Zero!27) (Succ!24 (n!1106 Nat!43)))))

(declare-fun p1!51 () Nat!43)

(declare-fun succ_<!0 (Nat!43 Nat!43) Unit!299)

(assert (=> b!37661 (= res!17942 (= tmp!175 (succ_<!0 p1!51 p1!51)))))

(declare-fun res!17940 () Bool)

(assert (=> start!4814 (=> (not res!17940) (not e!19369))))

(declare-fun n1!166 () Nat!43)

(declare-fun >!2 (Nat!43 Nat!43) Bool)

(assert (=> start!4814 (= res!17940 (>!2 n1!166 Zero!27))))

(assert (=> start!4814 e!19369))

(assert (=> start!4814 true))

(declare-fun n2!177 () Nat!43)

(declare-fun b!37662 () Bool)

(declare-fun transitive_<!0 (Nat!43 Nat!43 Nat!43) Unit!299)

(assert (=> b!37662 (= e!19370 (transitive_<!0 p1!51 n1!166 n2!177))))

(declare-fun t!5154 () Unit!299)

(declare-fun x$46!21 () Unit!299)

(declare-fun b!37663 () Bool)

(declare-fun res!17695 () Unit!299)

(assert (=> b!37663 (= e!19369 (and (= res!17695 t!5154) (= x$46!21 res!17695) (not (is-Succ!24 n1!166))))))

(declare-fun b!37664 () Bool)

(declare-fun res!17941 () Bool)

(assert (=> b!37664 (=> (not res!17941) (not e!19369))))

(declare-fun res!17692 () Nat!43)

(declare-fun t!5153 () Nat!43)

(assert (=> b!37664 (= res!17941 (and (= t!5153 (n!1106 n1!166)) (= res!17692 t!5153) (= p1!51 res!17692)))))

(declare-fun b!37665 () Bool)

(declare-fun res!17939 () Bool)

(assert (=> b!37665 (=> (not res!17939) (not e!19369))))

(declare-fun <=!2 (Nat!43 Nat!43) Bool)

(assert (=> b!37665 (= res!17939 (<=!2 n1!166 n2!177))))

(declare-fun b!37666 () Bool)

(declare-fun res!17938 () Bool)

(assert (=> b!37666 (=> (not res!17938) (not e!19369))))

(assert (=> b!37666 (= res!17938 (= t!5154 e!19370))))

(declare-fun c!8190 () Bool)

(assert (=> b!37666 (= c!8190 (not (= n1!166 n2!177)))))

(assert (= (and start!4814 res!17940) b!37665))

(assert (= (and b!37665 res!17939) b!37664))

(assert (= (and b!37664 res!17941) b!37661))

(assert (= (and b!37661 res!17942) b!37666))

(assert (= (and b!37666 c!8190) b!37662))

(assert (= (and b!37666 (not c!8190)) b!37660))

(assert (= (and b!37666 res!17938) b!37663))

(declare-fun m!38929 () Bool)

(assert (=> b!37661 m!38929))

(declare-fun m!38931 () Bool)

(assert (=> start!4814 m!38931))

(declare-fun m!38933 () Bool)

(assert (=> b!37662 m!38933))

(declare-fun m!38935 () Bool)

(assert (=> b!37665 m!38935))

(push 1)

(assert (not b!37665))

(assert (not b!37662))

(assert (not start!4814))

(assert (not b!37661))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18864 () Bool)

(declare-fun res!17945 () Bool)

(declare-fun e!19373 () Bool)

(assert (=> d!18864 (=> res!17945 e!19373)))

(declare-fun <!2 (Nat!43 Nat!43) Bool)

(assert (=> d!18864 (= res!17945 (<!2 n1!166 n2!177))))

(assert (=> d!18864 (= (<=!2 n1!166 n2!177) e!19373)))

(declare-fun b!37669 () Bool)

(assert (=> b!37669 (= e!19373 (= n1!166 n2!177))))

(assert (= (and d!18864 (not res!17945)) b!37669))

(declare-fun m!38937 () Bool)

(assert (=> d!18864 m!38937))

(assert (=> b!37665 d!18864))

(declare-fun d!18866 () Bool)

(assert (=> d!18866 (<!2 p1!51 n2!177)))

(assert (=> d!18866 true))

(declare-fun x$47!44 () Unit!299)

(assert (=> d!18866 (= (transitive_<!0 p1!51 n1!166 n2!177) x$47!44)))

(declare-fun bs!11553 () Bool)

(assert (= bs!11553 d!18866))

(declare-fun m!38939 () Bool)

(assert (=> bs!11553 m!38939))

(assert (=> b!37662 d!18866))

(declare-fun d!18868 () Bool)

(declare-fun res!17948 () Bool)

(declare-fun e!19376 () Bool)

(assert (=> d!18868 (=> (not res!17948) (not e!19376))))

(assert (=> d!18868 (= res!17948 (not (<!2 n1!166 Zero!27)))))

(assert (=> d!18868 (= (>!2 n1!166 Zero!27) e!19376)))

(declare-fun b!37672 () Bool)

(assert (=> b!37672 (= e!19376 (not (= n1!166 Zero!27)))))

(assert (= (and d!18868 res!17948) b!37672))

(declare-fun m!38941 () Bool)

(assert (=> d!18868 m!38941))

(assert (=> start!4814 d!18868))

(declare-fun d!18870 () Bool)

(assert (=> d!18870 (<!2 p1!51 (Succ!24 p1!51))))

(assert (=> d!18870 true))

(declare-fun x$43!34 () Unit!299)

(assert (=> d!18870 (= (succ_<!0 p1!51 p1!51) x$43!34)))

(declare-fun bs!11554 () Bool)

(assert (= bs!11554 d!18870))

(declare-fun m!38943 () Bool)

(assert (=> bs!11554 m!38943))

(assert (=> b!37661 d!18870))

(push 1)

(assert (not d!18870))

(assert (not d!18864))

(assert (not d!18868))

(assert (not d!18866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


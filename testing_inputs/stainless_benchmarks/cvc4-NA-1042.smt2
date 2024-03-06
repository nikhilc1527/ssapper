; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7674 () Bool)

(assert start!7674)

(declare-fun b!54959 () Bool)

(declare-fun e!28931 () Bool)

(declare-fun res!25235 () Bool)

(assert (=> b!54959 (= e!28931 res!25235)))

(assert (=> b!54959 true))

(declare-fun res!25233 () Bool)

(declare-fun e!28930 () Bool)

(assert (=> start!7674 (=> (not res!25233) (not e!28930))))

(declare-fun t!46840 () Bool)

(declare-fun e!28929 () Bool)

(assert (=> start!7674 (= res!25233 (= t!46840 e!28929))))

(declare-fun res!25232 () Bool)

(assert (=> start!7674 (=> res!25232 e!28929)))

(declare-datatypes () ((IntSet!46 (Empty!170) (Node!131 (left!1182 IntSet!46) (elem!250 (_ BitVec 32)) (right!1185 IntSet!46)))))

(declare-fun s!1745 () IntSet!46)

(assert (=> start!7674 (= res!25232 (is-Empty!170 s!1745))))

(assert (=> start!7674 e!28930))

(assert (=> start!7674 true))

(declare-fun b!54960 () Bool)

(declare-fun res!25234 () Bool)

(assert (=> b!54960 (=> (not res!25234) (not e!28930))))

(declare-fun res!25211 () Bool)

(declare-fun tmp!425 () Bool)

(assert (=> b!54960 (= res!25234 (and (= res!25211 t!46840) (= tmp!425 res!25211)))))

(declare-fun lt!9652 () Bool)

(declare-fun lt!9651 () Bool)

(declare-fun b!54961 () Bool)

(declare-fun x!21985 () (_ BitVec 32))

(assert (=> b!54961 (= e!28929 (ite lt!9651 lt!9652 (or (bvsle x!21985 (elem!250 s!1745)) lt!9652)))))

(assert (=> b!54961 (= lt!9652 e!28931)))

(declare-fun c!11913 () Bool)

(assert (=> b!54961 (= c!11913 (or lt!9651 (bvsgt x!21985 (elem!250 s!1745))))))

(assert (=> b!54961 (= lt!9651 (bvslt x!21985 (elem!250 s!1745)))))

(declare-fun b!54962 () Bool)

(declare-fun contains!10 (IntSet!46 (_ BitVec 32)) Bool)

(declare-fun incl!1 (IntSet!46 (_ BitVec 32)) IntSet!46)

(assert (=> b!54962 (= e!28930 (not (contains!10 (incl!1 s!1745 x!21985) x!21985)))))

(declare-fun b!54963 () Bool)

(declare-fun thiss!7779 () IntSet!46)

(declare-fun P2!1 (IntSet!46 IntSet!46 (_ BitVec 32)) Bool)

(assert (=> b!54963 (= e!28931 (P2!1 thiss!7779 (ite lt!9651 (left!1182 s!1745) (right!1185 s!1745)) x!21985))))

(assert (= (and start!7674 (not res!25232)) b!54961))

(assert (= (and b!54961 c!11913) b!54963))

(assert (= (and b!54961 (not c!11913)) b!54959))

(assert (= (and start!7674 res!25233) b!54960))

(assert (= (and b!54960 res!25234) b!54962))

(declare-fun m!59886 () Bool)

(assert (=> b!54962 m!59886))

(assert (=> b!54962 m!59886))

(declare-fun m!59888 () Bool)

(assert (=> b!54962 m!59888))

(declare-fun m!59890 () Bool)

(assert (=> b!54963 m!59890))

(push 1)

(assert (not b!54963))

(assert (not b!54962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45180 () Bool)

(assert (=> d!45180 (contains!10 (incl!1 (ite lt!9651 (left!1182 s!1745) (right!1185 s!1745)) x!21985) x!21985)))

(declare-fun lt!9659 () Bool)

(declare-fun e!28936 () Bool)

(assert (=> d!45180 (= lt!9659 e!28936)))

(declare-fun res!25246 () Bool)

(assert (=> d!45180 (=> res!25246 e!28936)))

(assert (=> d!45180 (= res!25246 (is-Empty!170 (ite lt!9651 (left!1182 s!1745) (right!1185 s!1745))))))

(assert (=> d!45180 (= (P2!1 thiss!7779 (ite lt!9651 (left!1182 s!1745) (right!1185 s!1745)) x!21985) true)))

(declare-fun lt!9660 () Bool)

(declare-fun lt!9661 () Bool)

(declare-fun b!54970 () Bool)

(assert (=> b!54970 (= e!28936 (ite lt!9661 lt!9660 (or (not (bvsgt x!21985 (elem!250 (ite lt!9651 (left!1182 s!1745) (right!1185 s!1745))))) lt!9660)))))

(declare-fun e!28937 () Bool)

(assert (=> b!54970 (= lt!9660 e!28937)))

(declare-fun c!11916 () Bool)

(assert (=> b!54970 (= c!11916 (or lt!9661 (bvsgt x!21985 (elem!250 (ite lt!9651 (left!1182 s!1745) (right!1185 s!1745))))))))

(assert (=> b!54970 (= lt!9661 (bvslt x!21985 (elem!250 (ite lt!9651 (left!1182 s!1745) (right!1185 s!1745)))))))

(declare-fun b!54972 () Bool)

(declare-fun res!25247 () Bool)

(assert (=> b!54972 (= e!28937 res!25247)))

(assert (=> b!54972 true))

(assert (=> b!54972 true))

(declare-fun b!54971 () Bool)

(assert (=> b!54971 (= e!28937 (P2!1 thiss!7779 (ite lt!9661 (left!1182 (ite lt!9651 (left!1182 s!1745) (right!1185 s!1745))) (right!1185 (ite lt!9651 (left!1182 s!1745) (right!1185 s!1745)))) x!21985))))

(assert (= (and d!45180 (not res!25246)) b!54970))

(assert (= (and b!54970 c!11916) b!54971))

(assert (= (and b!54970 (not c!11916)) b!54972))

(declare-fun m!59892 () Bool)

(assert (=> d!45180 m!59892))

(assert (=> d!45180 m!59892))

(declare-fun m!59894 () Bool)

(assert (=> d!45180 m!59894))

(declare-fun m!59896 () Bool)

(assert (=> b!54971 m!59896))

(assert (=> b!54963 d!45180))

(declare-fun d!45182 () Bool)

(declare-fun res!25255 () Bool)

(declare-fun e!28943 () Bool)

(assert (=> d!45182 (=> (not res!25255) (not e!28943))))

(assert (=> d!45182 (= res!25255 (not (is-Empty!170 (incl!1 s!1745 x!21985))))))

(assert (=> d!45182 (= (contains!10 (incl!1 s!1745 x!21985) x!21985) e!28943)))

(declare-fun b!54979 () Bool)

(declare-fun lt!9667 () Bool)

(declare-fun lt!9666 () Bool)

(assert (=> b!54979 (= e!28943 (ite lt!9667 lt!9666 (or (not (bvsgt x!21985 (elem!250 (incl!1 s!1745 x!21985)))) lt!9666)))))

(declare-fun e!28942 () Bool)

(assert (=> b!54979 (= lt!9666 e!28942)))

(declare-fun c!11919 () Bool)

(assert (=> b!54979 (= c!11919 (or lt!9667 (bvsgt x!21985 (elem!250 (incl!1 s!1745 x!21985)))))))

(assert (=> b!54979 (= lt!9667 (bvslt x!21985 (elem!250 (incl!1 s!1745 x!21985))))))

(declare-fun b!54981 () Bool)

(declare-fun res!25256 () Bool)

(assert (=> b!54981 (= e!28942 res!25256)))

(assert (=> b!54981 true))

(assert (=> b!54981 true))

(declare-fun b!54980 () Bool)

(assert (=> b!54980 (= e!28942 (contains!10 (ite lt!9667 (left!1182 (incl!1 s!1745 x!21985)) (right!1185 (incl!1 s!1745 x!21985))) x!21985))))

(assert (= (and d!45182 res!25255) b!54979))

(assert (= (and b!54979 c!11919) b!54980))

(assert (= (and b!54979 (not c!11919)) b!54981))

(declare-fun m!59898 () Bool)

(assert (=> b!54980 m!59898))

(assert (=> b!54962 d!45182))

(declare-fun b!54990 () Bool)

(declare-fun e!28949 () IntSet!46)

(assert (=> b!54990 (= e!28949 (Node!131 Empty!170 x!21985 Empty!170))))

(declare-fun d!45184 () Bool)

(declare-fun c!11924 () Bool)

(assert (=> d!45184 (= c!11924 (is-Empty!170 s!1745))))

(assert (=> d!45184 (= (incl!1 s!1745 x!21985) e!28949)))

(declare-fun lt!9673 () IntSet!46)

(declare-fun b!54991 () Bool)

(declare-fun lt!9672 () Bool)

(assert (=> b!54991 (= e!28949 (ite lt!9672 (Node!131 lt!9673 (elem!250 s!1745) (right!1185 s!1745)) (ite (bvsgt x!21985 (elem!250 s!1745)) (Node!131 (left!1182 s!1745) (elem!250 s!1745) lt!9673) s!1745)))))

(declare-fun e!28948 () IntSet!46)

(assert (=> b!54991 (= lt!9673 e!28948)))

(declare-fun c!11925 () Bool)

(assert (=> b!54991 (= c!11925 (or lt!9672 (bvsgt x!21985 (elem!250 s!1745))))))

(assert (=> b!54991 (= lt!9672 (bvslt x!21985 (elem!250 s!1745)))))

(declare-fun b!54992 () Bool)

(assert (=> b!54992 (= e!28948 (incl!1 (ite lt!9672 (left!1182 s!1745) (right!1185 s!1745)) x!21985))))

(declare-fun b!54993 () Bool)

(declare-fun res!25262 () IntSet!46)

(assert (=> b!54993 (= e!28948 res!25262)))

(assert (=> b!54993 true))

(assert (=> b!54993 true))

(assert (= (and b!54991 c!11925) b!54992))

(assert (= (and b!54991 (not c!11925)) b!54993))

(assert (= (and d!45184 c!11924) b!54990))

(assert (= (and d!45184 (not c!11924)) b!54991))

(declare-fun m!59900 () Bool)

(assert (=> b!54992 m!59900))

(assert (=> b!54962 d!45184))

(push 1)

(assert (not b!54992))

(assert (not d!45180))

(assert (not b!54971))

(assert (not b!54980))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


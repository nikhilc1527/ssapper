; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10208 () Bool)

(assert start!10208)

(declare-fun res!36312 () Bool)

(declare-fun e!39943 () Bool)

(assert (=> start!10208 (=> (not res!36312) (not e!39943))))

(declare-datatypes () ((Formula!73 (Implies!77 (lhs!1332 Formula!73) (rhs!1332 Formula!73)) (And!77 (lhs!1333 Formula!73) (rhs!1333 Formula!73)) (Or!77 (lhs!1334 Formula!73) (rhs!1334 Formula!73)) (Literal!71 (id!4934 (_ BitVec 32))) (Not!77 (f!4671 Formula!73)))))

(declare-fun f!4611 () Formula!73)

(declare-fun isNNF!0 (Formula!73) Bool)

(assert (=> start!10208 (= res!36312 (isNNF!0 f!4611))))

(assert (=> start!10208 e!39943))

(assert (=> start!10208 true))

(declare-fun b!73896 () Bool)

(declare-fun res!36313 () Bool)

(assert (=> b!73896 (=> (not res!36313) (not e!39943))))

(declare-fun f!4637 () Formula!73)

(assert (=> b!73896 (= res!36313 (and (not (is-Implies!77 f!4611)) (not (is-And!77 f!4611)) (not (is-Or!77 f!4611)) (not (is-Literal!71 f!4611)) (= f!4637 (f!4671 f!4611))))))

(declare-fun b!73897 () Bool)

(assert (=> b!73897 (= e!39943 (not (isNNF!0 f!4637)))))

(assert (= (and start!10208 res!36312) b!73896))

(assert (= (and b!73896 res!36313) b!73897))

(declare-fun m!72872 () Bool)

(assert (=> start!10208 m!72872))

(declare-fun m!72874 () Bool)

(assert (=> b!73897 m!72874))

(push 1)

(assert (not b!73897))

(assert (not start!10208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!73946 () Bool)

(declare-fun e!39980 () Bool)

(declare-fun e!39976 () Bool)

(assert (=> b!73946 (= e!39980 e!39976)))

(declare-fun res!36354 () Bool)

(assert (=> b!73946 (=> (not res!36354) (not e!39976))))

(declare-fun lt!15788 () Bool)

(assert (=> b!73946 (= res!36354 (not lt!15788))))

(declare-fun b!73947 () Bool)

(declare-fun e!39977 () Bool)

(declare-fun res!36351 () Bool)

(assert (=> b!73947 (= e!39977 res!36351)))

(assert (=> b!73947 true))

(declare-fun b!73948 () Bool)

(declare-fun e!39981 () Bool)

(declare-fun res!36350 () Bool)

(assert (=> b!73948 (= e!39981 res!36350)))

(assert (=> b!73948 true))

(declare-fun b!73949 () Bool)

(declare-fun e!39982 () Bool)

(declare-fun res!36353 () Bool)

(assert (=> b!73949 (= e!39982 res!36353)))

(assert (=> b!73949 true))

(assert (=> b!73949 true))

(declare-fun b!73950 () Bool)

(declare-fun lt!15789 () Bool)

(assert (=> b!73950 (= e!39982 lt!15789)))

(declare-fun b!73951 () Bool)

(declare-fun e!39975 () Bool)

(declare-fun lt!15795 () Bool)

(assert (=> b!73951 (= e!39975 (and lt!15795 lt!15789))))

(declare-fun b!73952 () Bool)

(declare-fun e!39983 () Bool)

(assert (=> b!73952 (= e!39983 lt!15795)))

(declare-fun b!73953 () Bool)

(declare-fun e!39974 () Bool)

(assert (=> b!73953 (= e!39974 e!39977)))

(declare-fun c!17918 () Bool)

(declare-fun lt!15793 () Bool)

(assert (=> b!73953 (= c!17918 (or lt!15793 (is-Implies!77 f!4637)))))

(declare-fun b!73954 () Bool)

(declare-fun e!39979 () Formula!73)

(assert (=> b!73954 (= e!39979 (rhs!1334 f!4637))))

(declare-fun b!73955 () Bool)

(declare-fun e!39985 () Bool)

(declare-fun res!36348 () Bool)

(assert (=> b!73955 (= e!39985 res!36348)))

(assert (=> b!73955 true))

(declare-fun b!73956 () Bool)

(declare-fun res!36352 () Bool)

(assert (=> b!73956 (= e!39983 res!36352)))

(assert (=> b!73956 true))

(declare-fun b!73957 () Bool)

(declare-fun e!39978 () Bool)

(declare-fun res!36355 () Bool)

(assert (=> b!73957 (= e!39978 res!36355)))

(assert (=> b!73957 true))

(declare-fun b!73958 () Bool)

(declare-fun e!39972 () Bool)

(assert (=> b!73958 (= e!39972 (or (and (is-Not!77 f!4637) (is-Literal!71 (f!4671 f!4637))) (not (is-Not!77 f!4637))))))

(declare-fun b!73959 () Bool)

(declare-fun e!39984 () Formula!73)

(assert (=> b!73959 (= e!39984 (rhs!1333 f!4637))))

(declare-fun lt!15787 () Bool)

(declare-fun b!73960 () Bool)

(declare-fun lt!15794 () Bool)

(assert (=> b!73960 (= e!39976 (or (and lt!15794 lt!15787) (and (not lt!15794) (is-Implies!77 f!4637) lt!15787)))))

(assert (=> b!73960 (= lt!15787 e!39983)))

(declare-fun c!17919 () Bool)

(assert (=> b!73960 (= c!17919 (or lt!15794 (is-Implies!77 f!4637)))))

(assert (=> b!73960 (= lt!15794 (is-Or!77 f!4637))))

(declare-fun d!54787 () Bool)

(declare-fun c!17920 () Bool)

(assert (=> d!54787 (= c!17920 lt!15788)))

(assert (=> d!54787 (= lt!15789 e!39985)))

(declare-fun c!17917 () Bool)

(assert (=> d!54787 (= c!17917 e!39980)))

(declare-fun res!36349 () Bool)

(assert (=> d!54787 (=> res!36349 e!39980)))

(declare-fun lt!15790 () Bool)

(assert (=> d!54787 (= res!36349 lt!15790)))

(assert (=> d!54787 (= lt!15790 (and lt!15788 lt!15795))))

(assert (=> d!54787 (= lt!15795 e!39978)))

(declare-fun c!17914 () Bool)

(assert (=> d!54787 (= c!17914 (or lt!15788 (is-Or!77 f!4637) (is-Implies!77 f!4637)))))

(assert (=> d!54787 (= lt!15788 (is-And!77 f!4637))))

(assert (=> d!54787 (= (isNNF!0 f!4637) e!39975)))

(declare-fun b!73961 () Bool)

(assert (=> b!73961 (= e!39981 lt!15795)))

(declare-fun b!73962 () Bool)

(assert (=> b!73962 (= e!39979 (rhs!1332 f!4637))))

(declare-fun b!73963 () Bool)

(assert (=> b!73963 (= e!39985 (isNNF!0 e!39984))))

(declare-fun c!17915 () Bool)

(assert (=> b!73963 (= c!17915 lt!15790)))

(declare-fun b!73964 () Bool)

(assert (=> b!73964 (= e!39975 e!39972)))

(declare-fun c!17921 () Bool)

(declare-fun lt!15791 () Bool)

(assert (=> b!73964 (= c!17921 (or lt!15791 (is-Implies!77 f!4637)))))

(declare-fun lt!15792 () Bool)

(assert (=> b!73964 (= lt!15792 e!39981)))

(declare-fun c!17923 () Bool)

(assert (=> b!73964 (= c!17923 (or lt!15791 (is-Implies!77 f!4637)))))

(assert (=> b!73964 (= lt!15791 (is-Or!77 f!4637))))

(declare-fun b!73965 () Bool)

(assert (=> b!73965 (= e!39978 (isNNF!0 (ite lt!15788 (lhs!1333 f!4637) (ite (is-Or!77 f!4637) (lhs!1334 f!4637) (lhs!1332 f!4637)))))))

(declare-fun b!73966 () Bool)

(declare-fun e!39973 () Bool)

(assert (=> b!73966 (= e!39973 e!39982)))

(declare-fun c!17922 () Bool)

(assert (=> b!73966 (= c!17922 (or (and lt!15791 lt!15792) (and (not lt!15791) (is-Implies!77 f!4637) lt!15792)))))

(declare-fun b!73967 () Bool)

(assert (=> b!73967 (= e!39972 e!39973)))

(declare-fun res!36356 () Bool)

(assert (=> b!73967 (=> (not res!36356) (not e!39973))))

(assert (=> b!73967 (= res!36356 lt!15792)))

(declare-fun b!73968 () Bool)

(assert (=> b!73968 (= e!39977 lt!15795)))

(declare-fun b!73969 () Bool)

(assert (=> b!73969 (= e!39984 e!39979)))

(declare-fun c!17916 () Bool)

(assert (=> b!73969 (= c!17916 e!39974)))

(declare-fun res!36357 () Bool)

(assert (=> b!73969 (=> (not res!36357) (not e!39974))))

(assert (=> b!73969 (= res!36357 lt!15793)))

(assert (=> b!73969 (= lt!15793 (is-Or!77 f!4637))))

(assert (= (and d!54787 c!17914) b!73965))

(assert (= (and d!54787 (not c!17914)) b!73957))

(assert (= (and d!54787 (not res!36349)) b!73946))

(assert (= (and b!73946 res!36354) b!73960))

(assert (= (and b!73960 c!17919) b!73952))

(assert (= (and b!73960 (not c!17919)) b!73956))

(assert (= (and b!73969 res!36357) b!73953))

(assert (= (and b!73953 c!17918) b!73968))

(assert (= (and b!73953 (not c!17918)) b!73947))

(assert (= (and b!73969 c!17916) b!73954))

(assert (= (and b!73969 (not c!17916)) b!73962))

(assert (= (and b!73963 c!17915) b!73959))

(assert (= (and b!73963 (not c!17915)) b!73969))

(assert (= (and d!54787 c!17917) b!73963))

(assert (= (and d!54787 (not c!17917)) b!73955))

(assert (= (and b!73964 c!17923) b!73961))

(assert (= (and b!73964 (not c!17923)) b!73948))

(assert (= (and b!73967 res!36356) b!73966))

(assert (= (and b!73966 c!17922) b!73950))

(assert (= (and b!73966 (not c!17922)) b!73949))

(assert (= (and b!73964 c!17921) b!73967))

(assert (= (and b!73964 (not c!17921)) b!73958))

(assert (= (and d!54787 c!17920) b!73951))

(assert (= (and d!54787 (not c!17920)) b!73964))

(declare-fun m!72876 () Bool)

(assert (=> b!73963 m!72876))

(declare-fun m!72878 () Bool)

(assert (=> b!73965 m!72878))

(assert (=> b!73897 d!54787))

(declare-fun b!73970 () Bool)

(declare-fun e!39994 () Bool)

(declare-fun e!39990 () Bool)

(assert (=> b!73970 (= e!39994 e!39990)))

(declare-fun res!36364 () Bool)

(assert (=> b!73970 (=> (not res!36364) (not e!39990))))

(declare-fun lt!15797 () Bool)

(assert (=> b!73970 (= res!36364 (not lt!15797))))

(declare-fun b!73971 () Bool)

(declare-fun e!39991 () Bool)

(declare-fun res!36361 () Bool)

(assert (=> b!73971 (= e!39991 res!36361)))

(assert (=> b!73971 true))

(declare-fun b!73972 () Bool)

(declare-fun e!39995 () Bool)

(declare-fun res!36360 () Bool)

(assert (=> b!73972 (= e!39995 res!36360)))

(assert (=> b!73972 true))

(declare-fun b!73973 () Bool)

(declare-fun e!39996 () Bool)

(declare-fun res!36363 () Bool)

(assert (=> b!73973 (= e!39996 res!36363)))

(assert (=> b!73973 true))

(assert (=> b!73973 true))

(declare-fun b!73974 () Bool)

(declare-fun lt!15798 () Bool)

(assert (=> b!73974 (= e!39996 lt!15798)))

(declare-fun b!73975 () Bool)

(declare-fun e!39989 () Bool)

(declare-fun lt!15804 () Bool)

(assert (=> b!73975 (= e!39989 (and lt!15804 lt!15798))))

(declare-fun b!73976 () Bool)

(declare-fun e!39997 () Bool)

(assert (=> b!73976 (= e!39997 lt!15804)))

(declare-fun b!73977 () Bool)

(declare-fun e!39988 () Bool)

(assert (=> b!73977 (= e!39988 e!39991)))

(declare-fun c!17928 () Bool)

(declare-fun lt!15802 () Bool)

(assert (=> b!73977 (= c!17928 (or lt!15802 (is-Implies!77 f!4611)))))

(declare-fun b!73978 () Bool)

(declare-fun e!39993 () Formula!73)

(assert (=> b!73978 (= e!39993 (rhs!1334 f!4611))))

(declare-fun b!73979 () Bool)

(declare-fun e!39999 () Bool)

(declare-fun res!36358 () Bool)

(assert (=> b!73979 (= e!39999 res!36358)))

(assert (=> b!73979 true))

(declare-fun b!73980 () Bool)

(declare-fun res!36362 () Bool)

(assert (=> b!73980 (= e!39997 res!36362)))

(assert (=> b!73980 true))

(declare-fun b!73981 () Bool)

(declare-fun e!39992 () Bool)

(declare-fun res!36365 () Bool)

(assert (=> b!73981 (= e!39992 res!36365)))

(assert (=> b!73981 true))

(declare-fun b!73982 () Bool)

(declare-fun e!39986 () Bool)

(assert (=> b!73982 (= e!39986 (or (and (is-Not!77 f!4611) (is-Literal!71 (f!4671 f!4611))) (not (is-Not!77 f!4611))))))

(declare-fun b!73983 () Bool)

(declare-fun e!39998 () Formula!73)

(assert (=> b!73983 (= e!39998 (rhs!1333 f!4611))))

(declare-fun lt!15796 () Bool)

(declare-fun b!73984 () Bool)

(declare-fun lt!15803 () Bool)

(assert (=> b!73984 (= e!39990 (or (and lt!15803 lt!15796) (and (not lt!15803) (is-Implies!77 f!4611) lt!15796)))))

(assert (=> b!73984 (= lt!15796 e!39997)))

(declare-fun c!17929 () Bool)

(assert (=> b!73984 (= c!17929 (or lt!15803 (is-Implies!77 f!4611)))))

(assert (=> b!73984 (= lt!15803 (is-Or!77 f!4611))))

(declare-fun d!54789 () Bool)

(declare-fun c!17930 () Bool)

(assert (=> d!54789 (= c!17930 lt!15797)))

(assert (=> d!54789 (= lt!15798 e!39999)))

(declare-fun c!17927 () Bool)

(assert (=> d!54789 (= c!17927 e!39994)))

(declare-fun res!36359 () Bool)

(assert (=> d!54789 (=> res!36359 e!39994)))

(declare-fun lt!15799 () Bool)

(assert (=> d!54789 (= res!36359 lt!15799)))

(assert (=> d!54789 (= lt!15799 (and lt!15797 lt!15804))))

(assert (=> d!54789 (= lt!15804 e!39992)))

(declare-fun c!17924 () Bool)

(assert (=> d!54789 (= c!17924 (or lt!15797 (is-Or!77 f!4611) (is-Implies!77 f!4611)))))

(assert (=> d!54789 (= lt!15797 (is-And!77 f!4611))))

(assert (=> d!54789 (= (isNNF!0 f!4611) e!39989)))

(declare-fun b!73985 () Bool)

(assert (=> b!73985 (= e!39995 lt!15804)))

(declare-fun b!73986 () Bool)

(assert (=> b!73986 (= e!39993 (rhs!1332 f!4611))))

(declare-fun b!73987 () Bool)

(assert (=> b!73987 (= e!39999 (isNNF!0 e!39998))))

(declare-fun c!17925 () Bool)

(assert (=> b!73987 (= c!17925 lt!15799)))

(declare-fun b!73988 () Bool)

(assert (=> b!73988 (= e!39989 e!39986)))

(declare-fun c!17931 () Bool)

(declare-fun lt!15800 () Bool)

(assert (=> b!73988 (= c!17931 (or lt!15800 (is-Implies!77 f!4611)))))

(declare-fun lt!15801 () Bool)

(assert (=> b!73988 (= lt!15801 e!39995)))

(declare-fun c!17933 () Bool)

(assert (=> b!73988 (= c!17933 (or lt!15800 (is-Implies!77 f!4611)))))

(assert (=> b!73988 (= lt!15800 (is-Or!77 f!4611))))

(declare-fun b!73989 () Bool)

(assert (=> b!73989 (= e!39992 (isNNF!0 (ite lt!15797 (lhs!1333 f!4611) (ite (is-Or!77 f!4611) (lhs!1334 f!4611) (lhs!1332 f!4611)))))))

(declare-fun b!73990 () Bool)

(declare-fun e!39987 () Bool)

(assert (=> b!73990 (= e!39987 e!39996)))

(declare-fun c!17932 () Bool)

(assert (=> b!73990 (= c!17932 (or (and lt!15800 lt!15801) (and (not lt!15800) (is-Implies!77 f!4611) lt!15801)))))

(declare-fun b!73991 () Bool)

(assert (=> b!73991 (= e!39986 e!39987)))

(declare-fun res!36366 () Bool)

(assert (=> b!73991 (=> (not res!36366) (not e!39987))))

(assert (=> b!73991 (= res!36366 lt!15801)))

(declare-fun b!73992 () Bool)

(assert (=> b!73992 (= e!39991 lt!15804)))

(declare-fun b!73993 () Bool)

(assert (=> b!73993 (= e!39998 e!39993)))

(declare-fun c!17926 () Bool)

(assert (=> b!73993 (= c!17926 e!39988)))

(declare-fun res!36367 () Bool)

(assert (=> b!73993 (=> (not res!36367) (not e!39988))))

(assert (=> b!73993 (= res!36367 lt!15802)))

(assert (=> b!73993 (= lt!15802 (is-Or!77 f!4611))))

(assert (= (and d!54789 c!17924) b!73989))

(assert (= (and d!54789 (not c!17924)) b!73981))

(assert (= (and d!54789 (not res!36359)) b!73970))

(assert (= (and b!73970 res!36364) b!73984))

(assert (= (and b!73984 c!17929) b!73976))

(assert (= (and b!73984 (not c!17929)) b!73980))

(assert (= (and b!73993 res!36367) b!73977))

(assert (= (and b!73977 c!17928) b!73992))

(assert (= (and b!73977 (not c!17928)) b!73971))

(assert (= (and b!73993 c!17926) b!73978))

(assert (= (and b!73993 (not c!17926)) b!73986))

(assert (= (and b!73987 c!17925) b!73983))

(assert (= (and b!73987 (not c!17925)) b!73993))

(assert (= (and d!54789 c!17927) b!73987))

(assert (= (and d!54789 (not c!17927)) b!73979))

(assert (= (and b!73988 c!17933) b!73985))

(assert (= (and b!73988 (not c!17933)) b!73972))

(assert (= (and b!73991 res!36366) b!73990))

(assert (= (and b!73990 c!17932) b!73974))

(assert (= (and b!73990 (not c!17932)) b!73973))

(assert (= (and b!73988 c!17931) b!73991))

(assert (= (and b!73988 (not c!17931)) b!73982))

(assert (= (and d!54789 c!17930) b!73975))

(assert (= (and d!54789 (not c!17930)) b!73988))

(declare-fun m!72880 () Bool)

(assert (=> b!73987 m!72880))

(declare-fun m!72882 () Bool)

(assert (=> b!73989 m!72882))

(assert (=> start!10208 d!54789))

(push 1)

(assert (not b!73987))

(assert (not b!73963))

(assert (not b!73965))

(assert (not b!73989))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


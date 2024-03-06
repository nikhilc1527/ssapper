; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!480 () Bool)

(assert start!480)

(declare-fun res!1167 () Bool)

(declare-fun e!2102 () Bool)

(assert (=> start!480 (=> (not res!1167) (not e!2102))))

(declare-datatypes () ((List!72 (Cons!72 (head!244 (_ BitVec 32)) (tail!256 List!72)) (Nil!73))))

(declare-datatypes () ((AbsQueue!21 (Queue!20 (front!71 List!72) (rear!73 List!72)))))

(declare-fun queue!34 () AbsQueue!21)

(declare-fun isEmpty!12 (AbsQueue!21) Bool)

(assert (=> start!480 (= res!1167 (not (isEmpty!12 queue!34)))))

(assert (=> start!480 e!2102))

(assert (=> start!480 true))

(declare-fun b!3772 () Bool)

(declare-fun tail!158 (List!72) List!72)

(declare-fun asList!0 (AbsQueue!21) List!72)

(declare-fun tail!159 (AbsQueue!21) AbsQueue!21)

(assert (=> b!3772 (= e!2102 (not (= (tail!158 (asList!0 queue!34)) (asList!0 (tail!159 queue!34)))))))

(declare-fun b!3770 () Bool)

(declare-fun res!1165 () Bool)

(assert (=> b!3770 (=> (not res!1165) (not e!2102))))

(declare-datatypes () ((tuple2!14 (tuple2!15 (_1!7 List!72) (_2!7 List!72)))))

(declare-fun x$7!13 () tuple2!14)

(declare-fun t!389 () tuple2!14)

(declare-fun rear!28 () List!72)

(declare-fun res!638 () tuple2!14)

(declare-fun front!29 () List!72)

(assert (=> b!3770 (= res!1165 (and (= t!389 (tuple2!15 (front!71 queue!34) (rear!73 queue!34))) (= res!638 t!389) (= x$7!13 res!638) (= front!29 (_1!7 x$7!13)) (= rear!28 (_2!7 x$7!13))))))

(declare-fun b!3769 () Bool)

(declare-fun res!1166 () Bool)

(assert (=> b!3769 (=> (not res!1166) (not e!2102))))

(declare-fun isAmortized!0 (AbsQueue!21) Bool)

(assert (=> b!3769 (= res!1166 (isAmortized!0 queue!34))))

(declare-fun b!3771 () Bool)

(declare-fun res!1164 () Bool)

(assert (=> b!3771 (=> (not res!1164) (not e!2102))))

(declare-datatypes () ((Unit!51 (Unit!52))))

(declare-fun tmp!10 () Unit!51)

(declare-fun Unit!53 () Unit!51)

(assert (=> b!3771 (= res!1164 (= tmp!10 Unit!53))))

(declare-fun concatNil!0 (List!72) Bool)

(declare-fun concat!2 (List!72 List!72) List!72)

(declare-fun reverse!5 (List!72) List!72)

(assert (=> b!3771 (concatNil!0 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))

(assert (= (and start!480 res!1167) b!3769))

(assert (= (and b!3769 res!1166) b!3770))

(assert (= (and b!3770 res!1165) b!3771))

(assert (= (and b!3771 res!1164) b!3772))

(declare-fun m!5871 () Bool)

(assert (=> start!480 m!5871))

(declare-fun m!5873 () Bool)

(assert (=> b!3772 m!5873))

(assert (=> b!3772 m!5873))

(declare-fun m!5875 () Bool)

(assert (=> b!3772 m!5875))

(declare-fun m!5877 () Bool)

(assert (=> b!3772 m!5877))

(assert (=> b!3772 m!5877))

(declare-fun m!5879 () Bool)

(assert (=> b!3772 m!5879))

(declare-fun m!5881 () Bool)

(assert (=> b!3769 m!5881))

(declare-fun m!5883 () Bool)

(assert (=> b!3771 m!5883))

(declare-fun m!5885 () Bool)

(assert (=> b!3771 m!5885))

(assert (=> b!3771 m!5883))

(assert (=> b!3771 m!5885))

(declare-fun m!5887 () Bool)

(assert (=> b!3771 m!5887))

(assert (=> b!3771 m!5887))

(declare-fun m!5889 () Bool)

(assert (=> b!3771 m!5889))

(push 1)

(assert (not b!3769))

(assert (not b!3771))

(assert (not start!480))

(assert (not b!3772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2732 () Bool)

(declare-fun size!23 (List!72) Int)

(assert (=> d!2732 (= (isAmortized!0 queue!34) (>= (size!23 (front!71 queue!34)) (size!23 (rear!73 queue!34))))))

(declare-fun bs!262 () Bool)

(assert (= bs!262 d!2732))

(declare-fun m!5891 () Bool)

(assert (=> bs!262 m!5891))

(declare-fun m!5893 () Bool)

(assert (=> bs!262 m!5893))

(assert (=> b!3769 d!2732))

(declare-fun b!3777 () Bool)

(declare-fun e!2105 () Bool)

(assert (=> b!3777 (= e!2105 (= (concat!2 (concat!2 (tail!158 front!29) (reverse!5 rear!28)) Nil!73) (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))

(declare-fun lt!1072 () Bool)

(assert (=> b!3777 (= lt!1072 (concatNil!0 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))))

(declare-fun d!2734 () Bool)

(assert (=> d!2734 e!2105))

(declare-fun c!1369 () Bool)

(assert (=> d!2734 (= c!1369 (is-Cons!72 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))

(assert (=> d!2734 (= (concatNil!0 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) true)))

(declare-fun b!3778 () Bool)

(assert (=> b!3778 (= e!2105 (= (concat!2 (concat!2 (tail!158 front!29) (reverse!5 rear!28)) Nil!73) (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))

(assert (= (and d!2734 c!1369) b!3777))

(assert (= (and d!2734 (not c!1369)) b!3778))

(assert (=> b!3777 m!5887))

(declare-fun m!5895 () Bool)

(assert (=> b!3777 m!5895))

(declare-fun m!5897 () Bool)

(assert (=> b!3777 m!5897))

(assert (=> b!3778 m!5887))

(assert (=> b!3778 m!5895))

(assert (=> b!3771 d!2734))

(declare-fun d!2736 () Bool)

(declare-fun e!2110 () Bool)

(assert (=> d!2736 e!2110))

(declare-fun res!1171 () Bool)

(assert (=> d!2736 (=> (not res!1171) (not e!2110))))

(declare-fun lt!1075 () List!72)

(assert (=> d!2736 (= res!1171 (= (size!23 lt!1075) (+ (size!23 (tail!158 front!29)) (size!23 (reverse!5 rear!28)))))))

(declare-fun e!2111 () List!72)

(assert (=> d!2736 (= lt!1075 e!2111)))

(declare-fun c!1372 () Bool)

(assert (=> d!2736 (= c!1372 (is-Nil!73 (tail!158 front!29)))))

(assert (=> d!2736 (= (concat!2 (tail!158 front!29) (reverse!5 rear!28)) lt!1075)))

(declare-fun b!3785 () Bool)

(assert (=> b!3785 (= e!2111 (reverse!5 rear!28))))

(declare-fun b!3786 () Bool)

(assert (=> b!3786 (= e!2111 (Cons!72 (head!244 (tail!158 front!29)) (concat!2 (tail!256 (tail!158 front!29)) (reverse!5 rear!28))))))

(declare-fun b!3787 () Bool)

(declare-fun content!22 (List!72) (Set (_ BitVec 32)))

(assert (=> b!3787 (= e!2110 (= (content!22 lt!1075) (union (content!22 (tail!158 front!29)) (content!22 (reverse!5 rear!28)))))))

(assert (= (and d!2736 c!1372) b!3785))

(assert (= (and d!2736 (not c!1372)) b!3786))

(assert (= (and d!2736 res!1171) b!3787))

(declare-fun m!5899 () Bool)

(assert (=> d!2736 m!5899))

(assert (=> d!2736 m!5883))

(declare-fun m!5901 () Bool)

(assert (=> d!2736 m!5901))

(assert (=> d!2736 m!5885))

(declare-fun m!5903 () Bool)

(assert (=> d!2736 m!5903))

(assert (=> b!3786 m!5885))

(declare-fun m!5905 () Bool)

(assert (=> b!3786 m!5905))

(declare-fun m!5907 () Bool)

(assert (=> b!3787 m!5907))

(assert (=> b!3787 m!5883))

(declare-fun m!5909 () Bool)

(assert (=> b!3787 m!5909))

(assert (=> b!3787 m!5885))

(declare-fun m!5911 () Bool)

(assert (=> b!3787 m!5911))

(assert (=> b!3771 d!2736))

(declare-fun d!2738 () Bool)

(assert (=> d!2738 (= (tail!158 front!29) (tail!256 front!29))))

(assert (=> b!3771 d!2738))

(declare-fun d!2740 () Bool)

(declare-fun lt!1078 () List!72)

(assert (=> d!2740 (= (content!22 lt!1078) (content!22 rear!28))))

(declare-fun e!2114 () List!72)

(assert (=> d!2740 (= lt!1078 e!2114)))

(declare-fun c!1375 () Bool)

(assert (=> d!2740 (= c!1375 (is-Nil!73 rear!28))))

(assert (=> d!2740 (= (reverse!5 rear!28) lt!1078)))

(declare-fun b!3792 () Bool)

(assert (=> b!3792 (= e!2114 Nil!73)))

(declare-fun b!3793 () Bool)

(assert (=> b!3793 (= e!2114 (concat!2 (reverse!5 (tail!256 rear!28)) (Cons!72 (head!244 rear!28) Nil!73)))))

(assert (= (and d!2740 c!1375) b!3792))

(assert (= (and d!2740 (not c!1375)) b!3793))

(declare-fun m!5913 () Bool)

(assert (=> d!2740 m!5913))

(declare-fun m!5915 () Bool)

(assert (=> d!2740 m!5915))

(declare-fun m!5917 () Bool)

(assert (=> b!3793 m!5917))

(assert (=> b!3793 m!5917))

(declare-fun m!5919 () Bool)

(assert (=> b!3793 m!5919))

(assert (=> b!3771 d!2740))

(declare-fun d!2742 () Bool)

(assert (=> d!2742 (= (isEmpty!12 queue!34) (and (is-Nil!73 (front!71 queue!34)) (is-Nil!73 (rear!73 queue!34))))))

(assert (=> start!480 d!2742))

(declare-fun d!2744 () Bool)

(assert (=> d!2744 (= (tail!158 (asList!0 queue!34)) (tail!256 (asList!0 queue!34)))))

(assert (=> b!3772 d!2744))

(declare-fun d!2746 () Bool)

(assert (=> d!2746 (= (asList!0 queue!34) (concat!2 (front!71 queue!34) (reverse!5 (rear!73 queue!34))))))

(declare-fun bs!263 () Bool)

(assert (= bs!263 d!2746))

(declare-fun m!5921 () Bool)

(assert (=> bs!263 m!5921))

(assert (=> bs!263 m!5921))

(declare-fun m!5923 () Bool)

(assert (=> bs!263 m!5923))

(assert (=> b!3772 d!2746))

(declare-fun d!2748 () Bool)

(assert (=> d!2748 (= (asList!0 (tail!159 queue!34)) (concat!2 (front!71 (tail!159 queue!34)) (reverse!5 (rear!73 (tail!159 queue!34)))))))

(declare-fun bs!264 () Bool)

(assert (= bs!264 d!2748))

(declare-fun m!5925 () Bool)

(assert (=> bs!264 m!5925))

(assert (=> bs!264 m!5925))

(declare-fun m!5927 () Bool)

(assert (=> bs!264 m!5927))

(assert (=> b!3772 d!2748))

(declare-fun d!2750 () Bool)

(declare-fun lt!1081 () AbsQueue!21)

(assert (=> d!2750 (isAmortized!0 lt!1081)))

(declare-fun amortizedQueue!0 (List!72 List!72) AbsQueue!21)

(assert (=> d!2750 (= lt!1081 (amortizedQueue!0 (tail!256 (front!71 queue!34)) (rear!73 queue!34)))))

(declare-fun e!2117 () Bool)

(assert (=> d!2750 e!2117))

(declare-fun res!1175 () Bool)

(assert (=> d!2750 (=> (not res!1175) (not e!2117))))

(assert (=> d!2750 (= res!1175 (isAmortized!0 queue!34))))

(assert (=> d!2750 (= (tail!159 queue!34) lt!1081)))

(declare-fun b!3796 () Bool)

(assert (=> b!3796 (= e!2117 (not (isEmpty!12 queue!34)))))

(assert (= (and d!2750 res!1175) b!3796))

(declare-fun m!5929 () Bool)

(assert (=> d!2750 m!5929))

(declare-fun m!5931 () Bool)

(assert (=> d!2750 m!5931))

(assert (=> d!2750 m!5881))

(assert (=> b!3796 m!5871))

(assert (=> b!3772 d!2750))

(push 1)

(assert (not d!2748))

(assert (not b!3778))

(assert (not b!3793))

(assert (not b!3777))

(assert (not b!3796))

(assert (not d!2736))

(assert (not d!2750))

(assert (not d!2732))

(assert (not b!3786))

(assert (not d!2746))

(assert (not b!3787))

(assert (not d!2740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2752 () Bool)

(declare-fun c!1378 () Bool)

(assert (=> d!2752 (= c!1378 (is-Nil!73 lt!1078))))

(declare-fun e!2120 () (Set (_ BitVec 32)))

(assert (=> d!2752 (= (content!22 lt!1078) e!2120)))

(declare-fun b!3801 () Bool)

(assert (=> b!3801 (= e!2120 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3802 () Bool)

(assert (=> b!3802 (= e!2120 (union (insert (head!244 lt!1078) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 lt!1078))))))

(assert (= (and d!2752 c!1378) b!3801))

(assert (= (and d!2752 (not c!1378)) b!3802))

(declare-fun m!5933 () Bool)

(assert (=> b!3802 m!5933))

(declare-fun m!5935 () Bool)

(assert (=> b!3802 m!5935))

(assert (=> d!2740 d!2752))

(declare-fun d!2754 () Bool)

(declare-fun c!1379 () Bool)

(assert (=> d!2754 (= c!1379 (is-Nil!73 rear!28))))

(declare-fun e!2121 () (Set (_ BitVec 32)))

(assert (=> d!2754 (= (content!22 rear!28) e!2121)))

(declare-fun b!3803 () Bool)

(assert (=> b!3803 (= e!2121 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3804 () Bool)

(assert (=> b!3804 (= e!2121 (union (insert (head!244 rear!28) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 rear!28))))))

(assert (= (and d!2754 c!1379) b!3803))

(assert (= (and d!2754 (not c!1379)) b!3804))

(declare-fun m!5937 () Bool)

(assert (=> b!3804 m!5937))

(declare-fun m!5939 () Bool)

(assert (=> b!3804 m!5939))

(assert (=> d!2740 d!2754))

(declare-fun d!2756 () Bool)

(declare-fun e!2122 () Bool)

(assert (=> d!2756 e!2122))

(declare-fun res!1176 () Bool)

(assert (=> d!2756 (=> (not res!1176) (not e!2122))))

(declare-fun lt!1082 () List!72)

(assert (=> d!2756 (= res!1176 (= (size!23 lt!1082) (+ (size!23 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) (size!23 Nil!73))))))

(declare-fun e!2123 () List!72)

(assert (=> d!2756 (= lt!1082 e!2123)))

(declare-fun c!1380 () Bool)

(assert (=> d!2756 (= c!1380 (is-Nil!73 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))

(assert (=> d!2756 (= (concat!2 (concat!2 (tail!158 front!29) (reverse!5 rear!28)) Nil!73) lt!1082)))

(declare-fun b!3805 () Bool)

(assert (=> b!3805 (= e!2123 Nil!73)))

(declare-fun b!3806 () Bool)

(assert (=> b!3806 (= e!2123 (Cons!72 (head!244 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) (concat!2 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) Nil!73)))))

(declare-fun b!3807 () Bool)

(assert (=> b!3807 (= e!2122 (= (content!22 lt!1082) (union (content!22 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) (content!22 Nil!73))))))

(assert (= (and d!2756 c!1380) b!3805))

(assert (= (and d!2756 (not c!1380)) b!3806))

(assert (= (and d!2756 res!1176) b!3807))

(declare-fun m!5941 () Bool)

(assert (=> d!2756 m!5941))

(assert (=> d!2756 m!5887))

(declare-fun m!5943 () Bool)

(assert (=> d!2756 m!5943))

(declare-fun m!5945 () Bool)

(assert (=> d!2756 m!5945))

(declare-fun m!5947 () Bool)

(assert (=> b!3806 m!5947))

(declare-fun m!5949 () Bool)

(assert (=> b!3807 m!5949))

(assert (=> b!3807 m!5887))

(declare-fun m!5951 () Bool)

(assert (=> b!3807 m!5951))

(declare-fun m!5953 () Bool)

(assert (=> b!3807 m!5953))

(assert (=> b!3778 d!2756))

(declare-fun d!2758 () Bool)

(declare-fun e!2124 () Bool)

(assert (=> d!2758 e!2124))

(declare-fun res!1177 () Bool)

(assert (=> d!2758 (=> (not res!1177) (not e!2124))))

(declare-fun lt!1083 () List!72)

(assert (=> d!2758 (= res!1177 (= (size!23 lt!1083) (+ (size!23 (tail!256 (tail!158 front!29))) (size!23 (reverse!5 rear!28)))))))

(declare-fun e!2125 () List!72)

(assert (=> d!2758 (= lt!1083 e!2125)))

(declare-fun c!1381 () Bool)

(assert (=> d!2758 (= c!1381 (is-Nil!73 (tail!256 (tail!158 front!29))))))

(assert (=> d!2758 (= (concat!2 (tail!256 (tail!158 front!29)) (reverse!5 rear!28)) lt!1083)))

(declare-fun b!3808 () Bool)

(assert (=> b!3808 (= e!2125 (reverse!5 rear!28))))

(declare-fun b!3809 () Bool)

(assert (=> b!3809 (= e!2125 (Cons!72 (head!244 (tail!256 (tail!158 front!29))) (concat!2 (tail!256 (tail!256 (tail!158 front!29))) (reverse!5 rear!28))))))

(declare-fun b!3810 () Bool)

(assert (=> b!3810 (= e!2124 (= (content!22 lt!1083) (union (content!22 (tail!256 (tail!158 front!29))) (content!22 (reverse!5 rear!28)))))))

(assert (= (and d!2758 c!1381) b!3808))

(assert (= (and d!2758 (not c!1381)) b!3809))

(assert (= (and d!2758 res!1177) b!3810))

(declare-fun m!5955 () Bool)

(assert (=> d!2758 m!5955))

(declare-fun m!5957 () Bool)

(assert (=> d!2758 m!5957))

(assert (=> d!2758 m!5885))

(assert (=> d!2758 m!5903))

(assert (=> b!3809 m!5885))

(declare-fun m!5959 () Bool)

(assert (=> b!3809 m!5959))

(declare-fun m!5961 () Bool)

(assert (=> b!3810 m!5961))

(declare-fun m!5963 () Bool)

(assert (=> b!3810 m!5963))

(assert (=> b!3810 m!5885))

(assert (=> b!3810 m!5911))

(assert (=> b!3786 d!2758))

(declare-fun d!2760 () Bool)

(declare-fun c!1382 () Bool)

(assert (=> d!2760 (= c!1382 (is-Nil!73 lt!1075))))

(declare-fun e!2126 () (Set (_ BitVec 32)))

(assert (=> d!2760 (= (content!22 lt!1075) e!2126)))

(declare-fun b!3811 () Bool)

(assert (=> b!3811 (= e!2126 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3812 () Bool)

(assert (=> b!3812 (= e!2126 (union (insert (head!244 lt!1075) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 lt!1075))))))

(assert (= (and d!2760 c!1382) b!3811))

(assert (= (and d!2760 (not c!1382)) b!3812))

(declare-fun m!5965 () Bool)

(assert (=> b!3812 m!5965))

(declare-fun m!5967 () Bool)

(assert (=> b!3812 m!5967))

(assert (=> b!3787 d!2760))

(declare-fun d!2762 () Bool)

(declare-fun c!1383 () Bool)

(assert (=> d!2762 (= c!1383 (is-Nil!73 (tail!158 front!29)))))

(declare-fun e!2127 () (Set (_ BitVec 32)))

(assert (=> d!2762 (= (content!22 (tail!158 front!29)) e!2127)))

(declare-fun b!3813 () Bool)

(assert (=> b!3813 (= e!2127 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3814 () Bool)

(assert (=> b!3814 (= e!2127 (union (insert (head!244 (tail!158 front!29)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (tail!158 front!29)))))))

(assert (= (and d!2762 c!1383) b!3813))

(assert (= (and d!2762 (not c!1383)) b!3814))

(declare-fun m!5969 () Bool)

(assert (=> b!3814 m!5969))

(assert (=> b!3814 m!5963))

(assert (=> b!3787 d!2762))

(declare-fun d!2764 () Bool)

(declare-fun c!1384 () Bool)

(assert (=> d!2764 (= c!1384 (is-Nil!73 (reverse!5 rear!28)))))

(declare-fun e!2128 () (Set (_ BitVec 32)))

(assert (=> d!2764 (= (content!22 (reverse!5 rear!28)) e!2128)))

(declare-fun b!3815 () Bool)

(assert (=> b!3815 (= e!2128 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3816 () Bool)

(assert (=> b!3816 (= e!2128 (union (insert (head!244 (reverse!5 rear!28)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (reverse!5 rear!28)))))))

(assert (= (and d!2764 c!1384) b!3815))

(assert (= (and d!2764 (not c!1384)) b!3816))

(declare-fun m!5971 () Bool)

(assert (=> b!3816 m!5971))

(declare-fun m!5973 () Bool)

(assert (=> b!3816 m!5973))

(assert (=> b!3787 d!2764))

(declare-fun d!2766 () Bool)

(assert (=> d!2766 (= (isAmortized!0 lt!1081) (>= (size!23 (front!71 lt!1081)) (size!23 (rear!73 lt!1081))))))

(declare-fun bs!265 () Bool)

(assert (= bs!265 d!2766))

(declare-fun m!5975 () Bool)

(assert (=> bs!265 m!5975))

(declare-fun m!5977 () Bool)

(assert (=> bs!265 m!5977))

(assert (=> d!2750 d!2766))

(declare-fun d!2768 () Bool)

(declare-fun lt!1086 () AbsQueue!21)

(assert (=> d!2768 (isAmortized!0 lt!1086)))

(declare-fun e!2131 () AbsQueue!21)

(assert (=> d!2768 (= lt!1086 e!2131)))

(declare-fun c!1387 () Bool)

(assert (=> d!2768 (= c!1387 (<= (size!23 (rear!73 queue!34)) (size!23 (tail!256 (front!71 queue!34)))))))

(assert (=> d!2768 (= (amortizedQueue!0 (tail!256 (front!71 queue!34)) (rear!73 queue!34)) lt!1086)))

(declare-fun b!3821 () Bool)

(assert (=> b!3821 (= e!2131 (Queue!20 (tail!256 (front!71 queue!34)) (rear!73 queue!34)))))

(declare-fun b!3822 () Bool)

(assert (=> b!3822 (= e!2131 (Queue!20 (concat!2 (tail!256 (front!71 queue!34)) (reverse!5 (rear!73 queue!34))) Nil!73))))

(assert (= (and d!2768 c!1387) b!3821))

(assert (= (and d!2768 (not c!1387)) b!3822))

(declare-fun m!5979 () Bool)

(assert (=> d!2768 m!5979))

(assert (=> d!2768 m!5893))

(declare-fun m!5981 () Bool)

(assert (=> d!2768 m!5981))

(assert (=> b!3822 m!5921))

(assert (=> b!3822 m!5921))

(declare-fun m!5983 () Bool)

(assert (=> b!3822 m!5983))

(assert (=> d!2750 d!2768))

(assert (=> d!2750 d!2732))

(assert (=> b!3777 d!2756))

(declare-fun b!3823 () Bool)

(declare-fun e!2132 () Bool)

(assert (=> b!3823 (= e!2132 (= (concat!2 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) Nil!73) (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))))

(declare-fun lt!1087 () Bool)

(assert (=> b!3823 (= lt!1087 (concatNil!0 (tail!256 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))))

(declare-fun d!2770 () Bool)

(assert (=> d!2770 e!2132))

(declare-fun c!1388 () Bool)

(assert (=> d!2770 (= c!1388 (is-Cons!72 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))))

(assert (=> d!2770 (= (concatNil!0 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))) true)))

(declare-fun b!3824 () Bool)

(assert (=> b!3824 (= e!2132 (= (concat!2 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) Nil!73) (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))))

(assert (= (and d!2770 c!1388) b!3823))

(assert (= (and d!2770 (not c!1388)) b!3824))

(assert (=> b!3823 m!5947))

(declare-fun m!5985 () Bool)

(assert (=> b!3823 m!5985))

(assert (=> b!3824 m!5947))

(assert (=> b!3777 d!2770))

(declare-fun d!2772 () Bool)

(declare-fun e!2133 () Bool)

(assert (=> d!2772 e!2133))

(declare-fun res!1178 () Bool)

(assert (=> d!2772 (=> (not res!1178) (not e!2133))))

(declare-fun lt!1088 () List!72)

(assert (=> d!2772 (= res!1178 (= (size!23 lt!1088) (+ (size!23 (front!71 queue!34)) (size!23 (reverse!5 (rear!73 queue!34))))))))

(declare-fun e!2134 () List!72)

(assert (=> d!2772 (= lt!1088 e!2134)))

(declare-fun c!1389 () Bool)

(assert (=> d!2772 (= c!1389 (is-Nil!73 (front!71 queue!34)))))

(assert (=> d!2772 (= (concat!2 (front!71 queue!34) (reverse!5 (rear!73 queue!34))) lt!1088)))

(declare-fun b!3825 () Bool)

(assert (=> b!3825 (= e!2134 (reverse!5 (rear!73 queue!34)))))

(declare-fun b!3826 () Bool)

(assert (=> b!3826 (= e!2134 (Cons!72 (head!244 (front!71 queue!34)) (concat!2 (tail!256 (front!71 queue!34)) (reverse!5 (rear!73 queue!34)))))))

(declare-fun b!3827 () Bool)

(assert (=> b!3827 (= e!2133 (= (content!22 lt!1088) (union (content!22 (front!71 queue!34)) (content!22 (reverse!5 (rear!73 queue!34))))))))

(assert (= (and d!2772 c!1389) b!3825))

(assert (= (and d!2772 (not c!1389)) b!3826))

(assert (= (and d!2772 res!1178) b!3827))

(declare-fun m!5987 () Bool)

(assert (=> d!2772 m!5987))

(assert (=> d!2772 m!5891))

(assert (=> d!2772 m!5921))

(declare-fun m!5989 () Bool)

(assert (=> d!2772 m!5989))

(assert (=> b!3826 m!5921))

(assert (=> b!3826 m!5983))

(declare-fun m!5991 () Bool)

(assert (=> b!3827 m!5991))

(declare-fun m!5993 () Bool)

(assert (=> b!3827 m!5993))

(assert (=> b!3827 m!5921))

(declare-fun m!5995 () Bool)

(assert (=> b!3827 m!5995))

(assert (=> d!2746 d!2772))

(declare-fun d!2774 () Bool)

(declare-fun lt!1089 () List!72)

(assert (=> d!2774 (= (content!22 lt!1089) (content!22 (rear!73 queue!34)))))

(declare-fun e!2135 () List!72)

(assert (=> d!2774 (= lt!1089 e!2135)))

(declare-fun c!1390 () Bool)

(assert (=> d!2774 (= c!1390 (is-Nil!73 (rear!73 queue!34)))))

(assert (=> d!2774 (= (reverse!5 (rear!73 queue!34)) lt!1089)))

(declare-fun b!3828 () Bool)

(assert (=> b!3828 (= e!2135 Nil!73)))

(declare-fun b!3829 () Bool)

(assert (=> b!3829 (= e!2135 (concat!2 (reverse!5 (tail!256 (rear!73 queue!34))) (Cons!72 (head!244 (rear!73 queue!34)) Nil!73)))))

(assert (= (and d!2774 c!1390) b!3828))

(assert (= (and d!2774 (not c!1390)) b!3829))

(declare-fun m!5997 () Bool)

(assert (=> d!2774 m!5997))

(declare-fun m!5999 () Bool)

(assert (=> d!2774 m!5999))

(declare-fun m!6001 () Bool)

(assert (=> b!3829 m!6001))

(assert (=> b!3829 m!6001))

(declare-fun m!6003 () Bool)

(assert (=> b!3829 m!6003))

(assert (=> d!2746 d!2774))

(declare-fun d!2776 () Bool)

(declare-fun lt!1092 () Int)

(assert (=> d!2776 (>= lt!1092 0)))

(declare-fun e!2138 () Int)

(assert (=> d!2776 (= lt!1092 e!2138)))

(declare-fun c!1393 () Bool)

(assert (=> d!2776 (= c!1393 (is-Nil!73 (front!71 queue!34)))))

(assert (=> d!2776 (= (size!23 (front!71 queue!34)) lt!1092)))

(declare-fun b!3834 () Bool)

(assert (=> b!3834 (= e!2138 0)))

(declare-fun b!3835 () Bool)

(assert (=> b!3835 (= e!2138 (+ 1 (size!23 (tail!256 (front!71 queue!34)))))))

(assert (= (and d!2776 c!1393) b!3834))

(assert (= (and d!2776 (not c!1393)) b!3835))

(assert (=> b!3835 m!5981))

(assert (=> d!2732 d!2776))

(declare-fun d!2778 () Bool)

(declare-fun lt!1093 () Int)

(assert (=> d!2778 (>= lt!1093 0)))

(declare-fun e!2139 () Int)

(assert (=> d!2778 (= lt!1093 e!2139)))

(declare-fun c!1394 () Bool)

(assert (=> d!2778 (= c!1394 (is-Nil!73 (rear!73 queue!34)))))

(assert (=> d!2778 (= (size!23 (rear!73 queue!34)) lt!1093)))

(declare-fun b!3836 () Bool)

(assert (=> b!3836 (= e!2139 0)))

(declare-fun b!3837 () Bool)

(assert (=> b!3837 (= e!2139 (+ 1 (size!23 (tail!256 (rear!73 queue!34)))))))

(assert (= (and d!2778 c!1394) b!3836))

(assert (= (and d!2778 (not c!1394)) b!3837))

(declare-fun m!6005 () Bool)

(assert (=> b!3837 m!6005))

(assert (=> d!2732 d!2778))

(declare-fun d!2780 () Bool)

(declare-fun e!2140 () Bool)

(assert (=> d!2780 e!2140))

(declare-fun res!1179 () Bool)

(assert (=> d!2780 (=> (not res!1179) (not e!2140))))

(declare-fun lt!1094 () List!72)

(assert (=> d!2780 (= res!1179 (= (size!23 lt!1094) (+ (size!23 (front!71 (tail!159 queue!34))) (size!23 (reverse!5 (rear!73 (tail!159 queue!34)))))))))

(declare-fun e!2141 () List!72)

(assert (=> d!2780 (= lt!1094 e!2141)))

(declare-fun c!1395 () Bool)

(assert (=> d!2780 (= c!1395 (is-Nil!73 (front!71 (tail!159 queue!34))))))

(assert (=> d!2780 (= (concat!2 (front!71 (tail!159 queue!34)) (reverse!5 (rear!73 (tail!159 queue!34)))) lt!1094)))

(declare-fun b!3838 () Bool)

(assert (=> b!3838 (= e!2141 (reverse!5 (rear!73 (tail!159 queue!34))))))

(declare-fun b!3839 () Bool)

(assert (=> b!3839 (= e!2141 (Cons!72 (head!244 (front!71 (tail!159 queue!34))) (concat!2 (tail!256 (front!71 (tail!159 queue!34))) (reverse!5 (rear!73 (tail!159 queue!34))))))))

(declare-fun b!3840 () Bool)

(assert (=> b!3840 (= e!2140 (= (content!22 lt!1094) (union (content!22 (front!71 (tail!159 queue!34))) (content!22 (reverse!5 (rear!73 (tail!159 queue!34)))))))))

(assert (= (and d!2780 c!1395) b!3838))

(assert (= (and d!2780 (not c!1395)) b!3839))

(assert (= (and d!2780 res!1179) b!3840))

(declare-fun m!6007 () Bool)

(assert (=> d!2780 m!6007))

(declare-fun m!6009 () Bool)

(assert (=> d!2780 m!6009))

(assert (=> d!2780 m!5925))

(declare-fun m!6011 () Bool)

(assert (=> d!2780 m!6011))

(assert (=> b!3839 m!5925))

(declare-fun m!6013 () Bool)

(assert (=> b!3839 m!6013))

(declare-fun m!6015 () Bool)

(assert (=> b!3840 m!6015))

(declare-fun m!6017 () Bool)

(assert (=> b!3840 m!6017))

(assert (=> b!3840 m!5925))

(declare-fun m!6019 () Bool)

(assert (=> b!3840 m!6019))

(assert (=> d!2748 d!2780))

(declare-fun d!2782 () Bool)

(declare-fun lt!1095 () List!72)

(assert (=> d!2782 (= (content!22 lt!1095) (content!22 (rear!73 (tail!159 queue!34))))))

(declare-fun e!2142 () List!72)

(assert (=> d!2782 (= lt!1095 e!2142)))

(declare-fun c!1396 () Bool)

(assert (=> d!2782 (= c!1396 (is-Nil!73 (rear!73 (tail!159 queue!34))))))

(assert (=> d!2782 (= (reverse!5 (rear!73 (tail!159 queue!34))) lt!1095)))

(declare-fun b!3841 () Bool)

(assert (=> b!3841 (= e!2142 Nil!73)))

(declare-fun b!3842 () Bool)

(assert (=> b!3842 (= e!2142 (concat!2 (reverse!5 (tail!256 (rear!73 (tail!159 queue!34)))) (Cons!72 (head!244 (rear!73 (tail!159 queue!34))) Nil!73)))))

(assert (= (and d!2782 c!1396) b!3841))

(assert (= (and d!2782 (not c!1396)) b!3842))

(declare-fun m!6021 () Bool)

(assert (=> d!2782 m!6021))

(declare-fun m!6023 () Bool)

(assert (=> d!2782 m!6023))

(declare-fun m!6025 () Bool)

(assert (=> b!3842 m!6025))

(assert (=> b!3842 m!6025))

(declare-fun m!6027 () Bool)

(assert (=> b!3842 m!6027))

(assert (=> d!2748 d!2782))

(assert (=> b!3796 d!2742))

(declare-fun d!2784 () Bool)

(declare-fun lt!1096 () Int)

(assert (=> d!2784 (>= lt!1096 0)))

(declare-fun e!2143 () Int)

(assert (=> d!2784 (= lt!1096 e!2143)))

(declare-fun c!1397 () Bool)

(assert (=> d!2784 (= c!1397 (is-Nil!73 lt!1075))))

(assert (=> d!2784 (= (size!23 lt!1075) lt!1096)))

(declare-fun b!3843 () Bool)

(assert (=> b!3843 (= e!2143 0)))

(declare-fun b!3844 () Bool)

(assert (=> b!3844 (= e!2143 (+ 1 (size!23 (tail!256 lt!1075))))))

(assert (= (and d!2784 c!1397) b!3843))

(assert (= (and d!2784 (not c!1397)) b!3844))

(declare-fun m!6029 () Bool)

(assert (=> b!3844 m!6029))

(assert (=> d!2736 d!2784))

(declare-fun d!2786 () Bool)

(declare-fun lt!1097 () Int)

(assert (=> d!2786 (>= lt!1097 0)))

(declare-fun e!2144 () Int)

(assert (=> d!2786 (= lt!1097 e!2144)))

(declare-fun c!1398 () Bool)

(assert (=> d!2786 (= c!1398 (is-Nil!73 (tail!158 front!29)))))

(assert (=> d!2786 (= (size!23 (tail!158 front!29)) lt!1097)))

(declare-fun b!3845 () Bool)

(assert (=> b!3845 (= e!2144 0)))

(declare-fun b!3846 () Bool)

(assert (=> b!3846 (= e!2144 (+ 1 (size!23 (tail!256 (tail!158 front!29)))))))

(assert (= (and d!2786 c!1398) b!3845))

(assert (= (and d!2786 (not c!1398)) b!3846))

(assert (=> b!3846 m!5957))

(assert (=> d!2736 d!2786))

(declare-fun d!2788 () Bool)

(declare-fun lt!1098 () Int)

(assert (=> d!2788 (>= lt!1098 0)))

(declare-fun e!2145 () Int)

(assert (=> d!2788 (= lt!1098 e!2145)))

(declare-fun c!1399 () Bool)

(assert (=> d!2788 (= c!1399 (is-Nil!73 (reverse!5 rear!28)))))

(assert (=> d!2788 (= (size!23 (reverse!5 rear!28)) lt!1098)))

(declare-fun b!3847 () Bool)

(assert (=> b!3847 (= e!2145 0)))

(declare-fun b!3848 () Bool)

(assert (=> b!3848 (= e!2145 (+ 1 (size!23 (tail!256 (reverse!5 rear!28)))))))

(assert (= (and d!2788 c!1399) b!3847))

(assert (= (and d!2788 (not c!1399)) b!3848))

(declare-fun m!6031 () Bool)

(assert (=> b!3848 m!6031))

(assert (=> d!2736 d!2788))

(declare-fun d!2790 () Bool)

(declare-fun e!2146 () Bool)

(assert (=> d!2790 e!2146))

(declare-fun res!1180 () Bool)

(assert (=> d!2790 (=> (not res!1180) (not e!2146))))

(declare-fun lt!1099 () List!72)

(assert (=> d!2790 (= res!1180 (= (size!23 lt!1099) (+ (size!23 (reverse!5 (tail!256 rear!28))) (size!23 (Cons!72 (head!244 rear!28) Nil!73)))))))

(declare-fun e!2147 () List!72)

(assert (=> d!2790 (= lt!1099 e!2147)))

(declare-fun c!1400 () Bool)

(assert (=> d!2790 (= c!1400 (is-Nil!73 (reverse!5 (tail!256 rear!28))))))

(assert (=> d!2790 (= (concat!2 (reverse!5 (tail!256 rear!28)) (Cons!72 (head!244 rear!28) Nil!73)) lt!1099)))

(declare-fun b!3849 () Bool)

(assert (=> b!3849 (= e!2147 (Cons!72 (head!244 rear!28) Nil!73))))

(declare-fun b!3850 () Bool)

(assert (=> b!3850 (= e!2147 (Cons!72 (head!244 (reverse!5 (tail!256 rear!28))) (concat!2 (tail!256 (reverse!5 (tail!256 rear!28))) (Cons!72 (head!244 rear!28) Nil!73))))))

(declare-fun b!3851 () Bool)

(assert (=> b!3851 (= e!2146 (= (content!22 lt!1099) (union (content!22 (reverse!5 (tail!256 rear!28))) (content!22 (Cons!72 (head!244 rear!28) Nil!73)))))))

(assert (= (and d!2790 c!1400) b!3849))

(assert (= (and d!2790 (not c!1400)) b!3850))

(assert (= (and d!2790 res!1180) b!3851))

(declare-fun m!6033 () Bool)

(assert (=> d!2790 m!6033))

(assert (=> d!2790 m!5917))

(declare-fun m!6035 () Bool)

(assert (=> d!2790 m!6035))

(declare-fun m!6037 () Bool)

(assert (=> d!2790 m!6037))

(declare-fun m!6039 () Bool)

(assert (=> b!3850 m!6039))

(declare-fun m!6041 () Bool)

(assert (=> b!3851 m!6041))

(assert (=> b!3851 m!5917))

(declare-fun m!6043 () Bool)

(assert (=> b!3851 m!6043))

(declare-fun m!6045 () Bool)

(assert (=> b!3851 m!6045))

(assert (=> b!3793 d!2790))

(declare-fun d!2792 () Bool)

(declare-fun lt!1100 () List!72)

(assert (=> d!2792 (= (content!22 lt!1100) (content!22 (tail!256 rear!28)))))

(declare-fun e!2148 () List!72)

(assert (=> d!2792 (= lt!1100 e!2148)))

(declare-fun c!1401 () Bool)

(assert (=> d!2792 (= c!1401 (is-Nil!73 (tail!256 rear!28)))))

(assert (=> d!2792 (= (reverse!5 (tail!256 rear!28)) lt!1100)))

(declare-fun b!3852 () Bool)

(assert (=> b!3852 (= e!2148 Nil!73)))

(declare-fun b!3853 () Bool)

(assert (=> b!3853 (= e!2148 (concat!2 (reverse!5 (tail!256 (tail!256 rear!28))) (Cons!72 (head!244 (tail!256 rear!28)) Nil!73)))))

(assert (= (and d!2792 c!1401) b!3852))

(assert (= (and d!2792 (not c!1401)) b!3853))

(declare-fun m!6047 () Bool)

(assert (=> d!2792 m!6047))

(assert (=> d!2792 m!5939))

(declare-fun m!6049 () Bool)

(assert (=> b!3853 m!6049))

(assert (=> b!3853 m!6049))

(declare-fun m!6051 () Bool)

(assert (=> b!3853 m!6051))

(assert (=> b!3793 d!2792))

(push 1)

(assert (not b!3850))

(assert (not b!3835))

(assert (not b!3822))

(assert (not b!3802))

(assert (not d!2756))

(assert (not b!3839))

(assert (not b!3853))

(assert (not b!3812))

(assert (not b!3816))

(assert (not d!2768))

(assert (not b!3846))

(assert (not d!2766))

(assert (not d!2782))

(assert (not d!2758))

(assert (not b!3826))

(assert (not d!2774))

(assert (not b!3810))

(assert (not b!3829))

(assert (not b!3851))

(assert (not b!3844))

(assert (not b!3809))

(assert (not b!3840))

(assert (not b!3824))

(assert (not b!3827))

(assert (not b!3848))

(assert (not b!3837))

(assert (not d!2780))

(assert (not b!3807))

(assert (not b!3814))

(assert (not b!3823))

(assert (not b!3806))

(assert (not d!2790))

(assert (not d!2792))

(assert (not b!3804))

(assert (not d!2772))

(assert (not b!3842))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2794 () Bool)

(declare-fun lt!1101 () Int)

(assert (=> d!2794 (>= lt!1101 0)))

(declare-fun e!2149 () Int)

(assert (=> d!2794 (= lt!1101 e!2149)))

(declare-fun c!1402 () Bool)

(assert (=> d!2794 (= c!1402 (is-Nil!73 lt!1088))))

(assert (=> d!2794 (= (size!23 lt!1088) lt!1101)))

(declare-fun b!3854 () Bool)

(assert (=> b!3854 (= e!2149 0)))

(declare-fun b!3855 () Bool)

(assert (=> b!3855 (= e!2149 (+ 1 (size!23 (tail!256 lt!1088))))))

(assert (= (and d!2794 c!1402) b!3854))

(assert (= (and d!2794 (not c!1402)) b!3855))

(declare-fun m!6053 () Bool)

(assert (=> b!3855 m!6053))

(assert (=> d!2772 d!2794))

(assert (=> d!2772 d!2776))

(declare-fun d!2796 () Bool)

(declare-fun lt!1102 () Int)

(assert (=> d!2796 (>= lt!1102 0)))

(declare-fun e!2150 () Int)

(assert (=> d!2796 (= lt!1102 e!2150)))

(declare-fun c!1403 () Bool)

(assert (=> d!2796 (= c!1403 (is-Nil!73 (reverse!5 (rear!73 queue!34))))))

(assert (=> d!2796 (= (size!23 (reverse!5 (rear!73 queue!34))) lt!1102)))

(declare-fun b!3856 () Bool)

(assert (=> b!3856 (= e!2150 0)))

(declare-fun b!3857 () Bool)

(assert (=> b!3857 (= e!2150 (+ 1 (size!23 (tail!256 (reverse!5 (rear!73 queue!34))))))))

(assert (= (and d!2796 c!1403) b!3856))

(assert (= (and d!2796 (not c!1403)) b!3857))

(declare-fun m!6055 () Bool)

(assert (=> b!3857 m!6055))

(assert (=> d!2772 d!2796))

(declare-fun d!2798 () Bool)

(declare-fun c!1404 () Bool)

(assert (=> d!2798 (= c!1404 (is-Nil!73 lt!1099))))

(declare-fun e!2151 () (Set (_ BitVec 32)))

(assert (=> d!2798 (= (content!22 lt!1099) e!2151)))

(declare-fun b!3858 () Bool)

(assert (=> b!3858 (= e!2151 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3859 () Bool)

(assert (=> b!3859 (= e!2151 (union (insert (head!244 lt!1099) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 lt!1099))))))

(assert (= (and d!2798 c!1404) b!3858))

(assert (= (and d!2798 (not c!1404)) b!3859))

(declare-fun m!6057 () Bool)

(assert (=> b!3859 m!6057))

(declare-fun m!6059 () Bool)

(assert (=> b!3859 m!6059))

(assert (=> b!3851 d!2798))

(declare-fun d!2800 () Bool)

(declare-fun c!1405 () Bool)

(assert (=> d!2800 (= c!1405 (is-Nil!73 (reverse!5 (tail!256 rear!28))))))

(declare-fun e!2152 () (Set (_ BitVec 32)))

(assert (=> d!2800 (= (content!22 (reverse!5 (tail!256 rear!28))) e!2152)))

(declare-fun b!3860 () Bool)

(assert (=> b!3860 (= e!2152 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3861 () Bool)

(assert (=> b!3861 (= e!2152 (union (insert (head!244 (reverse!5 (tail!256 rear!28))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (reverse!5 (tail!256 rear!28))))))))

(assert (= (and d!2800 c!1405) b!3860))

(assert (= (and d!2800 (not c!1405)) b!3861))

(declare-fun m!6061 () Bool)

(assert (=> b!3861 m!6061))

(declare-fun m!6063 () Bool)

(assert (=> b!3861 m!6063))

(assert (=> b!3851 d!2800))

(declare-fun d!2802 () Bool)

(declare-fun c!1406 () Bool)

(assert (=> d!2802 (= c!1406 (is-Nil!73 (Cons!72 (head!244 rear!28) Nil!73)))))

(declare-fun e!2153 () (Set (_ BitVec 32)))

(assert (=> d!2802 (= (content!22 (Cons!72 (head!244 rear!28) Nil!73)) e!2153)))

(declare-fun b!3862 () Bool)

(assert (=> b!3862 (= e!2153 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3863 () Bool)

(assert (=> b!3863 (= e!2153 (union (insert (head!244 (Cons!72 (head!244 rear!28) Nil!73)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (Cons!72 (head!244 rear!28) Nil!73)))))))

(assert (= (and d!2802 c!1406) b!3862))

(assert (= (and d!2802 (not c!1406)) b!3863))

(declare-fun m!6065 () Bool)

(assert (=> b!3863 m!6065))

(declare-fun m!6067 () Bool)

(assert (=> b!3863 m!6067))

(assert (=> b!3851 d!2802))

(declare-fun d!2804 () Bool)

(declare-fun e!2154 () Bool)

(assert (=> d!2804 e!2154))

(declare-fun res!1181 () Bool)

(assert (=> d!2804 (=> (not res!1181) (not e!2154))))

(declare-fun lt!1103 () List!72)

(assert (=> d!2804 (= res!1181 (= (size!23 lt!1103) (+ (size!23 (reverse!5 (tail!256 (tail!256 rear!28)))) (size!23 (Cons!72 (head!244 (tail!256 rear!28)) Nil!73)))))))

(declare-fun e!2155 () List!72)

(assert (=> d!2804 (= lt!1103 e!2155)))

(declare-fun c!1407 () Bool)

(assert (=> d!2804 (= c!1407 (is-Nil!73 (reverse!5 (tail!256 (tail!256 rear!28)))))))

(assert (=> d!2804 (= (concat!2 (reverse!5 (tail!256 (tail!256 rear!28))) (Cons!72 (head!244 (tail!256 rear!28)) Nil!73)) lt!1103)))

(declare-fun b!3864 () Bool)

(assert (=> b!3864 (= e!2155 (Cons!72 (head!244 (tail!256 rear!28)) Nil!73))))

(declare-fun b!3865 () Bool)

(assert (=> b!3865 (= e!2155 (Cons!72 (head!244 (reverse!5 (tail!256 (tail!256 rear!28)))) (concat!2 (tail!256 (reverse!5 (tail!256 (tail!256 rear!28)))) (Cons!72 (head!244 (tail!256 rear!28)) Nil!73))))))

(declare-fun b!3866 () Bool)

(assert (=> b!3866 (= e!2154 (= (content!22 lt!1103) (union (content!22 (reverse!5 (tail!256 (tail!256 rear!28)))) (content!22 (Cons!72 (head!244 (tail!256 rear!28)) Nil!73)))))))

(assert (= (and d!2804 c!1407) b!3864))

(assert (= (and d!2804 (not c!1407)) b!3865))

(assert (= (and d!2804 res!1181) b!3866))

(declare-fun m!6069 () Bool)

(assert (=> d!2804 m!6069))

(assert (=> d!2804 m!6049))

(declare-fun m!6071 () Bool)

(assert (=> d!2804 m!6071))

(declare-fun m!6073 () Bool)

(assert (=> d!2804 m!6073))

(declare-fun m!6075 () Bool)

(assert (=> b!3865 m!6075))

(declare-fun m!6077 () Bool)

(assert (=> b!3866 m!6077))

(assert (=> b!3866 m!6049))

(declare-fun m!6079 () Bool)

(assert (=> b!3866 m!6079))

(declare-fun m!6081 () Bool)

(assert (=> b!3866 m!6081))

(assert (=> b!3853 d!2804))

(declare-fun d!2806 () Bool)

(declare-fun lt!1104 () List!72)

(assert (=> d!2806 (= (content!22 lt!1104) (content!22 (tail!256 (tail!256 rear!28))))))

(declare-fun e!2156 () List!72)

(assert (=> d!2806 (= lt!1104 e!2156)))

(declare-fun c!1408 () Bool)

(assert (=> d!2806 (= c!1408 (is-Nil!73 (tail!256 (tail!256 rear!28))))))

(assert (=> d!2806 (= (reverse!5 (tail!256 (tail!256 rear!28))) lt!1104)))

(declare-fun b!3867 () Bool)

(assert (=> b!3867 (= e!2156 Nil!73)))

(declare-fun b!3868 () Bool)

(assert (=> b!3868 (= e!2156 (concat!2 (reverse!5 (tail!256 (tail!256 (tail!256 rear!28)))) (Cons!72 (head!244 (tail!256 (tail!256 rear!28))) Nil!73)))))

(assert (= (and d!2806 c!1408) b!3867))

(assert (= (and d!2806 (not c!1408)) b!3868))

(declare-fun m!6083 () Bool)

(assert (=> d!2806 m!6083))

(declare-fun m!6085 () Bool)

(assert (=> d!2806 m!6085))

(declare-fun m!6087 () Bool)

(assert (=> b!3868 m!6087))

(assert (=> b!3868 m!6087))

(declare-fun m!6089 () Bool)

(assert (=> b!3868 m!6089))

(assert (=> b!3853 d!2806))

(declare-fun d!2808 () Bool)

(declare-fun lt!1105 () Int)

(assert (=> d!2808 (>= lt!1105 0)))

(declare-fun e!2157 () Int)

(assert (=> d!2808 (= lt!1105 e!2157)))

(declare-fun c!1409 () Bool)

(assert (=> d!2808 (= c!1409 (is-Nil!73 (tail!256 (tail!158 front!29))))))

(assert (=> d!2808 (= (size!23 (tail!256 (tail!158 front!29))) lt!1105)))

(declare-fun b!3869 () Bool)

(assert (=> b!3869 (= e!2157 0)))

(declare-fun b!3870 () Bool)

(assert (=> b!3870 (= e!2157 (+ 1 (size!23 (tail!256 (tail!256 (tail!158 front!29))))))))

(assert (= (and d!2808 c!1409) b!3869))

(assert (= (and d!2808 (not c!1409)) b!3870))

(declare-fun m!6091 () Bool)

(assert (=> b!3870 m!6091))

(assert (=> b!3846 d!2808))

(declare-fun d!2810 () Bool)

(declare-fun e!2158 () Bool)

(assert (=> d!2810 e!2158))

(declare-fun res!1182 () Bool)

(assert (=> d!2810 (=> (not res!1182) (not e!2158))))

(declare-fun lt!1106 () List!72)

(assert (=> d!2810 (= res!1182 (= (size!23 lt!1106) (+ (size!23 (tail!256 (reverse!5 (tail!256 rear!28)))) (size!23 (Cons!72 (head!244 rear!28) Nil!73)))))))

(declare-fun e!2159 () List!72)

(assert (=> d!2810 (= lt!1106 e!2159)))

(declare-fun c!1410 () Bool)

(assert (=> d!2810 (= c!1410 (is-Nil!73 (tail!256 (reverse!5 (tail!256 rear!28)))))))

(assert (=> d!2810 (= (concat!2 (tail!256 (reverse!5 (tail!256 rear!28))) (Cons!72 (head!244 rear!28) Nil!73)) lt!1106)))

(declare-fun b!3871 () Bool)

(assert (=> b!3871 (= e!2159 (Cons!72 (head!244 rear!28) Nil!73))))

(declare-fun b!3872 () Bool)

(assert (=> b!3872 (= e!2159 (Cons!72 (head!244 (tail!256 (reverse!5 (tail!256 rear!28)))) (concat!2 (tail!256 (tail!256 (reverse!5 (tail!256 rear!28)))) (Cons!72 (head!244 rear!28) Nil!73))))))

(declare-fun b!3873 () Bool)

(assert (=> b!3873 (= e!2158 (= (content!22 lt!1106) (union (content!22 (tail!256 (reverse!5 (tail!256 rear!28)))) (content!22 (Cons!72 (head!244 rear!28) Nil!73)))))))

(assert (= (and d!2810 c!1410) b!3871))

(assert (= (and d!2810 (not c!1410)) b!3872))

(assert (= (and d!2810 res!1182) b!3873))

(declare-fun m!6093 () Bool)

(assert (=> d!2810 m!6093))

(declare-fun m!6095 () Bool)

(assert (=> d!2810 m!6095))

(assert (=> d!2810 m!6037))

(declare-fun m!6097 () Bool)

(assert (=> b!3872 m!6097))

(declare-fun m!6099 () Bool)

(assert (=> b!3873 m!6099))

(assert (=> b!3873 m!6063))

(assert (=> b!3873 m!6045))

(assert (=> b!3850 d!2810))

(declare-fun d!2812 () Bool)

(declare-fun lt!1107 () Int)

(assert (=> d!2812 (>= lt!1107 0)))

(declare-fun e!2160 () Int)

(assert (=> d!2812 (= lt!1107 e!2160)))

(declare-fun c!1411 () Bool)

(assert (=> d!2812 (= c!1411 (is-Nil!73 (tail!256 (front!71 queue!34))))))

(assert (=> d!2812 (= (size!23 (tail!256 (front!71 queue!34))) lt!1107)))

(declare-fun b!3874 () Bool)

(assert (=> b!3874 (= e!2160 0)))

(declare-fun b!3875 () Bool)

(assert (=> b!3875 (= e!2160 (+ 1 (size!23 (tail!256 (tail!256 (front!71 queue!34))))))))

(assert (= (and d!2812 c!1411) b!3874))

(assert (= (and d!2812 (not c!1411)) b!3875))

(declare-fun m!6101 () Bool)

(assert (=> b!3875 m!6101))

(assert (=> b!3835 d!2812))

(declare-fun d!2814 () Bool)

(declare-fun e!2161 () Bool)

(assert (=> d!2814 e!2161))

(declare-fun res!1183 () Bool)

(assert (=> d!2814 (=> (not res!1183) (not e!2161))))

(declare-fun lt!1108 () List!72)

(assert (=> d!2814 (= res!1183 (= (size!23 lt!1108) (+ (size!23 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))) (size!23 Nil!73))))))

(declare-fun e!2162 () List!72)

(assert (=> d!2814 (= lt!1108 e!2162)))

(declare-fun c!1412 () Bool)

(assert (=> d!2814 (= c!1412 (is-Nil!73 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))))

(assert (=> d!2814 (= (concat!2 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) Nil!73) lt!1108)))

(declare-fun b!3876 () Bool)

(assert (=> b!3876 (= e!2162 Nil!73)))

(declare-fun b!3877 () Bool)

(assert (=> b!3877 (= e!2162 (Cons!72 (head!244 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))) (concat!2 (tail!256 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))) Nil!73)))))

(declare-fun b!3878 () Bool)

(assert (=> b!3878 (= e!2161 (= (content!22 lt!1108) (union (content!22 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))) (content!22 Nil!73))))))

(assert (= (and d!2814 c!1412) b!3876))

(assert (= (and d!2814 (not c!1412)) b!3877))

(assert (= (and d!2814 res!1183) b!3878))

(declare-fun m!6103 () Bool)

(assert (=> d!2814 m!6103))

(declare-fun m!6105 () Bool)

(assert (=> d!2814 m!6105))

(assert (=> d!2814 m!5945))

(declare-fun m!6107 () Bool)

(assert (=> b!3877 m!6107))

(declare-fun m!6109 () Bool)

(assert (=> b!3878 m!6109))

(declare-fun m!6111 () Bool)

(assert (=> b!3878 m!6111))

(assert (=> b!3878 m!5953))

(assert (=> b!3806 d!2814))

(declare-fun d!2816 () Bool)

(declare-fun c!1413 () Bool)

(assert (=> d!2816 (= c!1413 (is-Nil!73 (tail!256 (tail!158 front!29))))))

(declare-fun e!2163 () (Set (_ BitVec 32)))

(assert (=> d!2816 (= (content!22 (tail!256 (tail!158 front!29))) e!2163)))

(declare-fun b!3879 () Bool)

(assert (=> b!3879 (= e!2163 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3880 () Bool)

(assert (=> b!3880 (= e!2163 (union (insert (head!244 (tail!256 (tail!158 front!29))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (tail!256 (tail!158 front!29))))))))

(assert (= (and d!2816 c!1413) b!3879))

(assert (= (and d!2816 (not c!1413)) b!3880))

(declare-fun m!6113 () Bool)

(assert (=> b!3880 m!6113))

(declare-fun m!6115 () Bool)

(assert (=> b!3880 m!6115))

(assert (=> b!3814 d!2816))

(declare-fun d!2818 () Bool)

(declare-fun e!2164 () Bool)

(assert (=> d!2818 e!2164))

(declare-fun res!1184 () Bool)

(assert (=> d!2818 (=> (not res!1184) (not e!2164))))

(declare-fun lt!1109 () List!72)

(assert (=> d!2818 (= res!1184 (= (size!23 lt!1109) (+ (size!23 (tail!256 (tail!256 (tail!158 front!29)))) (size!23 (reverse!5 rear!28)))))))

(declare-fun e!2165 () List!72)

(assert (=> d!2818 (= lt!1109 e!2165)))

(declare-fun c!1414 () Bool)

(assert (=> d!2818 (= c!1414 (is-Nil!73 (tail!256 (tail!256 (tail!158 front!29)))))))

(assert (=> d!2818 (= (concat!2 (tail!256 (tail!256 (tail!158 front!29))) (reverse!5 rear!28)) lt!1109)))

(declare-fun b!3881 () Bool)

(assert (=> b!3881 (= e!2165 (reverse!5 rear!28))))

(declare-fun b!3882 () Bool)

(assert (=> b!3882 (= e!2165 (Cons!72 (head!244 (tail!256 (tail!256 (tail!158 front!29)))) (concat!2 (tail!256 (tail!256 (tail!256 (tail!158 front!29)))) (reverse!5 rear!28))))))

(declare-fun b!3883 () Bool)

(assert (=> b!3883 (= e!2164 (= (content!22 lt!1109) (union (content!22 (tail!256 (tail!256 (tail!158 front!29)))) (content!22 (reverse!5 rear!28)))))))

(assert (= (and d!2818 c!1414) b!3881))

(assert (= (and d!2818 (not c!1414)) b!3882))

(assert (= (and d!2818 res!1184) b!3883))

(declare-fun m!6117 () Bool)

(assert (=> d!2818 m!6117))

(assert (=> d!2818 m!6091))

(assert (=> d!2818 m!5885))

(assert (=> d!2818 m!5903))

(assert (=> b!3882 m!5885))

(declare-fun m!6119 () Bool)

(assert (=> b!3882 m!6119))

(declare-fun m!6121 () Bool)

(assert (=> b!3883 m!6121))

(assert (=> b!3883 m!6115))

(assert (=> b!3883 m!5885))

(assert (=> b!3883 m!5911))

(assert (=> b!3809 d!2818))

(declare-fun d!2820 () Bool)

(declare-fun lt!1110 () Int)

(assert (=> d!2820 (>= lt!1110 0)))

(declare-fun e!2166 () Int)

(assert (=> d!2820 (= lt!1110 e!2166)))

(declare-fun c!1415 () Bool)

(assert (=> d!2820 (= c!1415 (is-Nil!73 (front!71 lt!1081)))))

(assert (=> d!2820 (= (size!23 (front!71 lt!1081)) lt!1110)))

(declare-fun b!3884 () Bool)

(assert (=> b!3884 (= e!2166 0)))

(declare-fun b!3885 () Bool)

(assert (=> b!3885 (= e!2166 (+ 1 (size!23 (tail!256 (front!71 lt!1081)))))))

(assert (= (and d!2820 c!1415) b!3884))

(assert (= (and d!2820 (not c!1415)) b!3885))

(declare-fun m!6123 () Bool)

(assert (=> b!3885 m!6123))

(assert (=> d!2766 d!2820))

(declare-fun d!2822 () Bool)

(declare-fun lt!1111 () Int)

(assert (=> d!2822 (>= lt!1111 0)))

(declare-fun e!2167 () Int)

(assert (=> d!2822 (= lt!1111 e!2167)))

(declare-fun c!1416 () Bool)

(assert (=> d!2822 (= c!1416 (is-Nil!73 (rear!73 lt!1081)))))

(assert (=> d!2822 (= (size!23 (rear!73 lt!1081)) lt!1111)))

(declare-fun b!3886 () Bool)

(assert (=> b!3886 (= e!2167 0)))

(declare-fun b!3887 () Bool)

(assert (=> b!3887 (= e!2167 (+ 1 (size!23 (tail!256 (rear!73 lt!1081)))))))

(assert (= (and d!2822 c!1416) b!3886))

(assert (= (and d!2822 (not c!1416)) b!3887))

(declare-fun m!6125 () Bool)

(assert (=> b!3887 m!6125))

(assert (=> d!2766 d!2822))

(declare-fun d!2824 () Bool)

(declare-fun e!2168 () Bool)

(assert (=> d!2824 e!2168))

(declare-fun res!1185 () Bool)

(assert (=> d!2824 (=> (not res!1185) (not e!2168))))

(declare-fun lt!1112 () List!72)

(assert (=> d!2824 (= res!1185 (= (size!23 lt!1112) (+ (size!23 (reverse!5 (tail!256 (rear!73 queue!34)))) (size!23 (Cons!72 (head!244 (rear!73 queue!34)) Nil!73)))))))

(declare-fun e!2169 () List!72)

(assert (=> d!2824 (= lt!1112 e!2169)))

(declare-fun c!1417 () Bool)

(assert (=> d!2824 (= c!1417 (is-Nil!73 (reverse!5 (tail!256 (rear!73 queue!34)))))))

(assert (=> d!2824 (= (concat!2 (reverse!5 (tail!256 (rear!73 queue!34))) (Cons!72 (head!244 (rear!73 queue!34)) Nil!73)) lt!1112)))

(declare-fun b!3888 () Bool)

(assert (=> b!3888 (= e!2169 (Cons!72 (head!244 (rear!73 queue!34)) Nil!73))))

(declare-fun b!3889 () Bool)

(assert (=> b!3889 (= e!2169 (Cons!72 (head!244 (reverse!5 (tail!256 (rear!73 queue!34)))) (concat!2 (tail!256 (reverse!5 (tail!256 (rear!73 queue!34)))) (Cons!72 (head!244 (rear!73 queue!34)) Nil!73))))))

(declare-fun b!3890 () Bool)

(assert (=> b!3890 (= e!2168 (= (content!22 lt!1112) (union (content!22 (reverse!5 (tail!256 (rear!73 queue!34)))) (content!22 (Cons!72 (head!244 (rear!73 queue!34)) Nil!73)))))))

(assert (= (and d!2824 c!1417) b!3888))

(assert (= (and d!2824 (not c!1417)) b!3889))

(assert (= (and d!2824 res!1185) b!3890))

(declare-fun m!6127 () Bool)

(assert (=> d!2824 m!6127))

(assert (=> d!2824 m!6001))

(declare-fun m!6129 () Bool)

(assert (=> d!2824 m!6129))

(declare-fun m!6131 () Bool)

(assert (=> d!2824 m!6131))

(declare-fun m!6133 () Bool)

(assert (=> b!3889 m!6133))

(declare-fun m!6135 () Bool)

(assert (=> b!3890 m!6135))

(assert (=> b!3890 m!6001))

(declare-fun m!6137 () Bool)

(assert (=> b!3890 m!6137))

(declare-fun m!6139 () Bool)

(assert (=> b!3890 m!6139))

(assert (=> b!3829 d!2824))

(declare-fun d!2826 () Bool)

(declare-fun lt!1113 () List!72)

(assert (=> d!2826 (= (content!22 lt!1113) (content!22 (tail!256 (rear!73 queue!34))))))

(declare-fun e!2170 () List!72)

(assert (=> d!2826 (= lt!1113 e!2170)))

(declare-fun c!1418 () Bool)

(assert (=> d!2826 (= c!1418 (is-Nil!73 (tail!256 (rear!73 queue!34))))))

(assert (=> d!2826 (= (reverse!5 (tail!256 (rear!73 queue!34))) lt!1113)))

(declare-fun b!3891 () Bool)

(assert (=> b!3891 (= e!2170 Nil!73)))

(declare-fun b!3892 () Bool)

(assert (=> b!3892 (= e!2170 (concat!2 (reverse!5 (tail!256 (tail!256 (rear!73 queue!34)))) (Cons!72 (head!244 (tail!256 (rear!73 queue!34))) Nil!73)))))

(assert (= (and d!2826 c!1418) b!3891))

(assert (= (and d!2826 (not c!1418)) b!3892))

(declare-fun m!6141 () Bool)

(assert (=> d!2826 m!6141))

(declare-fun m!6143 () Bool)

(assert (=> d!2826 m!6143))

(declare-fun m!6145 () Bool)

(assert (=> b!3892 m!6145))

(assert (=> b!3892 m!6145))

(declare-fun m!6147 () Bool)

(assert (=> b!3892 m!6147))

(assert (=> b!3829 d!2826))

(declare-fun d!2828 () Bool)

(declare-fun c!1419 () Bool)

(assert (=> d!2828 (= c!1419 (is-Nil!73 (tail!256 (reverse!5 rear!28))))))

(declare-fun e!2171 () (Set (_ BitVec 32)))

(assert (=> d!2828 (= (content!22 (tail!256 (reverse!5 rear!28))) e!2171)))

(declare-fun b!3893 () Bool)

(assert (=> b!3893 (= e!2171 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3894 () Bool)

(assert (=> b!3894 (= e!2171 (union (insert (head!244 (tail!256 (reverse!5 rear!28))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (tail!256 (reverse!5 rear!28))))))))

(assert (= (and d!2828 c!1419) b!3893))

(assert (= (and d!2828 (not c!1419)) b!3894))

(declare-fun m!6149 () Bool)

(assert (=> b!3894 m!6149))

(declare-fun m!6151 () Bool)

(assert (=> b!3894 m!6151))

(assert (=> b!3816 d!2828))

(declare-fun d!2830 () Bool)

(declare-fun lt!1114 () Int)

(assert (=> d!2830 (>= lt!1114 0)))

(declare-fun e!2172 () Int)

(assert (=> d!2830 (= lt!1114 e!2172)))

(declare-fun c!1420 () Bool)

(assert (=> d!2830 (= c!1420 (is-Nil!73 lt!1082))))

(assert (=> d!2830 (= (size!23 lt!1082) lt!1114)))

(declare-fun b!3895 () Bool)

(assert (=> b!3895 (= e!2172 0)))

(declare-fun b!3896 () Bool)

(assert (=> b!3896 (= e!2172 (+ 1 (size!23 (tail!256 lt!1082))))))

(assert (= (and d!2830 c!1420) b!3895))

(assert (= (and d!2830 (not c!1420)) b!3896))

(declare-fun m!6153 () Bool)

(assert (=> b!3896 m!6153))

(assert (=> d!2756 d!2830))

(declare-fun d!2832 () Bool)

(declare-fun lt!1115 () Int)

(assert (=> d!2832 (>= lt!1115 0)))

(declare-fun e!2173 () Int)

(assert (=> d!2832 (= lt!1115 e!2173)))

(declare-fun c!1421 () Bool)

(assert (=> d!2832 (= c!1421 (is-Nil!73 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))

(assert (=> d!2832 (= (size!23 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) lt!1115)))

(declare-fun b!3897 () Bool)

(assert (=> b!3897 (= e!2173 0)))

(declare-fun b!3898 () Bool)

(assert (=> b!3898 (= e!2173 (+ 1 (size!23 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))))

(assert (= (and d!2832 c!1421) b!3897))

(assert (= (and d!2832 (not c!1421)) b!3898))

(assert (=> b!3898 m!6105))

(assert (=> d!2756 d!2832))

(declare-fun d!2834 () Bool)

(declare-fun lt!1116 () Int)

(assert (=> d!2834 (>= lt!1116 0)))

(declare-fun e!2174 () Int)

(assert (=> d!2834 (= lt!1116 e!2174)))

(declare-fun c!1422 () Bool)

(assert (=> d!2834 (= c!1422 (is-Nil!73 Nil!73))))

(assert (=> d!2834 (= (size!23 Nil!73) lt!1116)))

(declare-fun b!3899 () Bool)

(assert (=> b!3899 (= e!2174 0)))

(declare-fun b!3900 () Bool)

(assert (=> b!3900 (= e!2174 (+ 1 (size!23 (tail!256 Nil!73))))))

(assert (= (and d!2834 c!1422) b!3899))

(assert (= (and d!2834 (not c!1422)) b!3900))

(declare-fun m!6155 () Bool)

(assert (=> b!3900 m!6155))

(assert (=> d!2756 d!2834))

(declare-fun d!2836 () Bool)

(declare-fun c!1423 () Bool)

(assert (=> d!2836 (= c!1423 (is-Nil!73 lt!1083))))

(declare-fun e!2175 () (Set (_ BitVec 32)))

(assert (=> d!2836 (= (content!22 lt!1083) e!2175)))

(declare-fun b!3901 () Bool)

(assert (=> b!3901 (= e!2175 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3902 () Bool)

(assert (=> b!3902 (= e!2175 (union (insert (head!244 lt!1083) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 lt!1083))))))

(assert (= (and d!2836 c!1423) b!3901))

(assert (= (and d!2836 (not c!1423)) b!3902))

(declare-fun m!6157 () Bool)

(assert (=> b!3902 m!6157))

(declare-fun m!6159 () Bool)

(assert (=> b!3902 m!6159))

(assert (=> b!3810 d!2836))

(assert (=> b!3810 d!2816))

(assert (=> b!3810 d!2764))

(assert (=> b!3824 d!2814))

(declare-fun d!2838 () Bool)

(declare-fun lt!1117 () Int)

(assert (=> d!2838 (>= lt!1117 0)))

(declare-fun e!2176 () Int)

(assert (=> d!2838 (= lt!1117 e!2176)))

(declare-fun c!1424 () Bool)

(assert (=> d!2838 (= c!1424 (is-Nil!73 (tail!256 (rear!73 queue!34))))))

(assert (=> d!2838 (= (size!23 (tail!256 (rear!73 queue!34))) lt!1117)))

(declare-fun b!3903 () Bool)

(assert (=> b!3903 (= e!2176 0)))

(declare-fun b!3904 () Bool)

(assert (=> b!3904 (= e!2176 (+ 1 (size!23 (tail!256 (tail!256 (rear!73 queue!34))))))))

(assert (= (and d!2838 c!1424) b!3903))

(assert (= (and d!2838 (not c!1424)) b!3904))

(declare-fun m!6161 () Bool)

(assert (=> b!3904 m!6161))

(assert (=> b!3837 d!2838))

(declare-fun d!2840 () Bool)

(declare-fun c!1425 () Bool)

(assert (=> d!2840 (= c!1425 (is-Nil!73 (tail!256 lt!1075)))))

(declare-fun e!2177 () (Set (_ BitVec 32)))

(assert (=> d!2840 (= (content!22 (tail!256 lt!1075)) e!2177)))

(declare-fun b!3905 () Bool)

(assert (=> b!3905 (= e!2177 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3906 () Bool)

(assert (=> b!3906 (= e!2177 (union (insert (head!244 (tail!256 lt!1075)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (tail!256 lt!1075)))))))

(assert (= (and d!2840 c!1425) b!3905))

(assert (= (and d!2840 (not c!1425)) b!3906))

(declare-fun m!6163 () Bool)

(assert (=> b!3906 m!6163))

(declare-fun m!6165 () Bool)

(assert (=> b!3906 m!6165))

(assert (=> b!3812 d!2840))

(declare-fun d!2842 () Bool)

(declare-fun c!1426 () Bool)

(assert (=> d!2842 (= c!1426 (is-Nil!73 (tail!256 lt!1078)))))

(declare-fun e!2178 () (Set (_ BitVec 32)))

(assert (=> d!2842 (= (content!22 (tail!256 lt!1078)) e!2178)))

(declare-fun b!3907 () Bool)

(assert (=> b!3907 (= e!2178 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3908 () Bool)

(assert (=> b!3908 (= e!2178 (union (insert (head!244 (tail!256 lt!1078)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (tail!256 lt!1078)))))))

(assert (= (and d!2842 c!1426) b!3907))

(assert (= (and d!2842 (not c!1426)) b!3908))

(declare-fun m!6167 () Bool)

(assert (=> b!3908 m!6167))

(declare-fun m!6169 () Bool)

(assert (=> b!3908 m!6169))

(assert (=> b!3802 d!2842))

(declare-fun d!2844 () Bool)

(declare-fun e!2179 () Bool)

(assert (=> d!2844 e!2179))

(declare-fun res!1186 () Bool)

(assert (=> d!2844 (=> (not res!1186) (not e!2179))))

(declare-fun lt!1118 () List!72)

(assert (=> d!2844 (= res!1186 (= (size!23 lt!1118) (+ (size!23 (reverse!5 (tail!256 (rear!73 (tail!159 queue!34))))) (size!23 (Cons!72 (head!244 (rear!73 (tail!159 queue!34))) Nil!73)))))))

(declare-fun e!2180 () List!72)

(assert (=> d!2844 (= lt!1118 e!2180)))

(declare-fun c!1427 () Bool)

(assert (=> d!2844 (= c!1427 (is-Nil!73 (reverse!5 (tail!256 (rear!73 (tail!159 queue!34))))))))

(assert (=> d!2844 (= (concat!2 (reverse!5 (tail!256 (rear!73 (tail!159 queue!34)))) (Cons!72 (head!244 (rear!73 (tail!159 queue!34))) Nil!73)) lt!1118)))

(declare-fun b!3909 () Bool)

(assert (=> b!3909 (= e!2180 (Cons!72 (head!244 (rear!73 (tail!159 queue!34))) Nil!73))))

(declare-fun b!3910 () Bool)

(assert (=> b!3910 (= e!2180 (Cons!72 (head!244 (reverse!5 (tail!256 (rear!73 (tail!159 queue!34))))) (concat!2 (tail!256 (reverse!5 (tail!256 (rear!73 (tail!159 queue!34))))) (Cons!72 (head!244 (rear!73 (tail!159 queue!34))) Nil!73))))))

(declare-fun b!3911 () Bool)

(assert (=> b!3911 (= e!2179 (= (content!22 lt!1118) (union (content!22 (reverse!5 (tail!256 (rear!73 (tail!159 queue!34))))) (content!22 (Cons!72 (head!244 (rear!73 (tail!159 queue!34))) Nil!73)))))))

(assert (= (and d!2844 c!1427) b!3909))

(assert (= (and d!2844 (not c!1427)) b!3910))

(assert (= (and d!2844 res!1186) b!3911))

(declare-fun m!6171 () Bool)

(assert (=> d!2844 m!6171))

(assert (=> d!2844 m!6025))

(declare-fun m!6173 () Bool)

(assert (=> d!2844 m!6173))

(declare-fun m!6175 () Bool)

(assert (=> d!2844 m!6175))

(declare-fun m!6177 () Bool)

(assert (=> b!3910 m!6177))

(declare-fun m!6179 () Bool)

(assert (=> b!3911 m!6179))

(assert (=> b!3911 m!6025))

(declare-fun m!6181 () Bool)

(assert (=> b!3911 m!6181))

(declare-fun m!6183 () Bool)

(assert (=> b!3911 m!6183))

(assert (=> b!3842 d!2844))

(declare-fun d!2846 () Bool)

(declare-fun lt!1119 () List!72)

(assert (=> d!2846 (= (content!22 lt!1119) (content!22 (tail!256 (rear!73 (tail!159 queue!34)))))))

(declare-fun e!2181 () List!72)

(assert (=> d!2846 (= lt!1119 e!2181)))

(declare-fun c!1428 () Bool)

(assert (=> d!2846 (= c!1428 (is-Nil!73 (tail!256 (rear!73 (tail!159 queue!34)))))))

(assert (=> d!2846 (= (reverse!5 (tail!256 (rear!73 (tail!159 queue!34)))) lt!1119)))

(declare-fun b!3912 () Bool)

(assert (=> b!3912 (= e!2181 Nil!73)))

(declare-fun b!3913 () Bool)

(assert (=> b!3913 (= e!2181 (concat!2 (reverse!5 (tail!256 (tail!256 (rear!73 (tail!159 queue!34))))) (Cons!72 (head!244 (tail!256 (rear!73 (tail!159 queue!34)))) Nil!73)))))

(assert (= (and d!2846 c!1428) b!3912))

(assert (= (and d!2846 (not c!1428)) b!3913))

(declare-fun m!6185 () Bool)

(assert (=> d!2846 m!6185))

(declare-fun m!6187 () Bool)

(assert (=> d!2846 m!6187))

(declare-fun m!6189 () Bool)

(assert (=> b!3913 m!6189))

(assert (=> b!3913 m!6189))

(declare-fun m!6191 () Bool)

(assert (=> b!3913 m!6191))

(assert (=> b!3842 d!2846))

(declare-fun d!2848 () Bool)

(declare-fun c!1429 () Bool)

(assert (=> d!2848 (= c!1429 (is-Nil!73 lt!1082))))

(declare-fun e!2182 () (Set (_ BitVec 32)))

(assert (=> d!2848 (= (content!22 lt!1082) e!2182)))

(declare-fun b!3914 () Bool)

(assert (=> b!3914 (= e!2182 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3915 () Bool)

(assert (=> b!3915 (= e!2182 (union (insert (head!244 lt!1082) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 lt!1082))))))

(assert (= (and d!2848 c!1429) b!3914))

(assert (= (and d!2848 (not c!1429)) b!3915))

(declare-fun m!6193 () Bool)

(assert (=> b!3915 m!6193))

(declare-fun m!6195 () Bool)

(assert (=> b!3915 m!6195))

(assert (=> b!3807 d!2848))

(declare-fun d!2850 () Bool)

(declare-fun c!1430 () Bool)

(assert (=> d!2850 (= c!1430 (is-Nil!73 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))

(declare-fun e!2183 () (Set (_ BitVec 32)))

(assert (=> d!2850 (= (content!22 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) e!2183)))

(declare-fun b!3916 () Bool)

(assert (=> b!3916 (= e!2183 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3917 () Bool)

(assert (=> b!3917 (= e!2183 (union (insert (head!244 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))))

(assert (= (and d!2850 c!1430) b!3916))

(assert (= (and d!2850 (not c!1430)) b!3917))

(declare-fun m!6197 () Bool)

(assert (=> b!3917 m!6197))

(assert (=> b!3917 m!6111))

(assert (=> b!3807 d!2850))

(declare-fun d!2852 () Bool)

(assert (=> d!2852 (= (content!22 Nil!73) (as emptyset (Set (_ BitVec 32))))))

(assert (=> b!3807 d!2852))

(declare-fun d!2854 () Bool)

(declare-fun e!2184 () Bool)

(assert (=> d!2854 e!2184))

(declare-fun res!1187 () Bool)

(assert (=> d!2854 (=> (not res!1187) (not e!2184))))

(declare-fun lt!1120 () List!72)

(assert (=> d!2854 (= res!1187 (= (size!23 lt!1120) (+ (size!23 (tail!256 (front!71 queue!34))) (size!23 (reverse!5 (rear!73 queue!34))))))))

(declare-fun e!2185 () List!72)

(assert (=> d!2854 (= lt!1120 e!2185)))

(declare-fun c!1431 () Bool)

(assert (=> d!2854 (= c!1431 (is-Nil!73 (tail!256 (front!71 queue!34))))))

(assert (=> d!2854 (= (concat!2 (tail!256 (front!71 queue!34)) (reverse!5 (rear!73 queue!34))) lt!1120)))

(declare-fun b!3918 () Bool)

(assert (=> b!3918 (= e!2185 (reverse!5 (rear!73 queue!34)))))

(declare-fun b!3919 () Bool)

(assert (=> b!3919 (= e!2185 (Cons!72 (head!244 (tail!256 (front!71 queue!34))) (concat!2 (tail!256 (tail!256 (front!71 queue!34))) (reverse!5 (rear!73 queue!34)))))))

(declare-fun b!3920 () Bool)

(assert (=> b!3920 (= e!2184 (= (content!22 lt!1120) (union (content!22 (tail!256 (front!71 queue!34))) (content!22 (reverse!5 (rear!73 queue!34))))))))

(assert (= (and d!2854 c!1431) b!3918))

(assert (= (and d!2854 (not c!1431)) b!3919))

(assert (= (and d!2854 res!1187) b!3920))

(declare-fun m!6199 () Bool)

(assert (=> d!2854 m!6199))

(assert (=> d!2854 m!5981))

(assert (=> d!2854 m!5921))

(assert (=> d!2854 m!5989))

(assert (=> b!3919 m!5921))

(declare-fun m!6201 () Bool)

(assert (=> b!3919 m!6201))

(declare-fun m!6203 () Bool)

(assert (=> b!3920 m!6203))

(declare-fun m!6205 () Bool)

(assert (=> b!3920 m!6205))

(assert (=> b!3920 m!5921))

(assert (=> b!3920 m!5995))

(assert (=> b!3822 d!2854))

(assert (=> b!3822 d!2774))

(declare-fun d!2856 () Bool)

(declare-fun c!1432 () Bool)

(assert (=> d!2856 (= c!1432 (is-Nil!73 (tail!256 rear!28)))))

(declare-fun e!2186 () (Set (_ BitVec 32)))

(assert (=> d!2856 (= (content!22 (tail!256 rear!28)) e!2186)))

(declare-fun b!3921 () Bool)

(assert (=> b!3921 (= e!2186 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3922 () Bool)

(assert (=> b!3922 (= e!2186 (union (insert (head!244 (tail!256 rear!28)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (tail!256 rear!28)))))))

(assert (= (and d!2856 c!1432) b!3921))

(assert (= (and d!2856 (not c!1432)) b!3922))

(declare-fun m!6207 () Bool)

(assert (=> b!3922 m!6207))

(assert (=> b!3922 m!6085))

(assert (=> b!3804 d!2856))

(declare-fun d!2858 () Bool)

(declare-fun c!1433 () Bool)

(assert (=> d!2858 (= c!1433 (is-Nil!73 lt!1089))))

(declare-fun e!2187 () (Set (_ BitVec 32)))

(assert (=> d!2858 (= (content!22 lt!1089) e!2187)))

(declare-fun b!3923 () Bool)

(assert (=> b!3923 (= e!2187 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3924 () Bool)

(assert (=> b!3924 (= e!2187 (union (insert (head!244 lt!1089) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 lt!1089))))))

(assert (= (and d!2858 c!1433) b!3923))

(assert (= (and d!2858 (not c!1433)) b!3924))

(declare-fun m!6209 () Bool)

(assert (=> b!3924 m!6209))

(declare-fun m!6211 () Bool)

(assert (=> b!3924 m!6211))

(assert (=> d!2774 d!2858))

(declare-fun d!2860 () Bool)

(declare-fun c!1434 () Bool)

(assert (=> d!2860 (= c!1434 (is-Nil!73 (rear!73 queue!34)))))

(declare-fun e!2188 () (Set (_ BitVec 32)))

(assert (=> d!2860 (= (content!22 (rear!73 queue!34)) e!2188)))

(declare-fun b!3925 () Bool)

(assert (=> b!3925 (= e!2188 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3926 () Bool)

(assert (=> b!3926 (= e!2188 (union (insert (head!244 (rear!73 queue!34)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (rear!73 queue!34)))))))

(assert (= (and d!2860 c!1434) b!3925))

(assert (= (and d!2860 (not c!1434)) b!3926))

(declare-fun m!6213 () Bool)

(assert (=> b!3926 m!6213))

(assert (=> b!3926 m!6143))

(assert (=> d!2774 d!2860))

(assert (=> b!3823 d!2814))

(declare-fun b!3927 () Bool)

(declare-fun e!2189 () Bool)

(assert (=> b!3927 (= e!2189 (= (concat!2 (tail!256 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))) Nil!73) (tail!256 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))))

(declare-fun lt!1121 () Bool)

(assert (=> b!3927 (= lt!1121 (concatNil!0 (tail!256 (tail!256 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))))))

(declare-fun d!2862 () Bool)

(assert (=> d!2862 e!2189))

(declare-fun c!1435 () Bool)

(assert (=> d!2862 (= c!1435 (is-Cons!72 (tail!256 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))))

(assert (=> d!2862 (= (concatNil!0 (tail!256 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))) true)))

(declare-fun b!3928 () Bool)

(assert (=> b!3928 (= e!2189 (= (concat!2 (tail!256 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))) Nil!73) (tail!256 (tail!256 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))))

(assert (= (and d!2862 c!1435) b!3927))

(assert (= (and d!2862 (not c!1435)) b!3928))

(assert (=> b!3927 m!6107))

(declare-fun m!6215 () Bool)

(assert (=> b!3927 m!6215))

(assert (=> b!3928 m!6107))

(assert (=> b!3823 d!2862))

(declare-fun d!2864 () Bool)

(declare-fun lt!1122 () Int)

(assert (=> d!2864 (>= lt!1122 0)))

(declare-fun e!2190 () Int)

(assert (=> d!2864 (= lt!1122 e!2190)))

(declare-fun c!1436 () Bool)

(assert (=> d!2864 (= c!1436 (is-Nil!73 lt!1094))))

(assert (=> d!2864 (= (size!23 lt!1094) lt!1122)))

(declare-fun b!3929 () Bool)

(assert (=> b!3929 (= e!2190 0)))

(declare-fun b!3930 () Bool)

(assert (=> b!3930 (= e!2190 (+ 1 (size!23 (tail!256 lt!1094))))))

(assert (= (and d!2864 c!1436) b!3929))

(assert (= (and d!2864 (not c!1436)) b!3930))

(declare-fun m!6217 () Bool)

(assert (=> b!3930 m!6217))

(assert (=> d!2780 d!2864))

(declare-fun d!2866 () Bool)

(declare-fun lt!1123 () Int)

(assert (=> d!2866 (>= lt!1123 0)))

(declare-fun e!2191 () Int)

(assert (=> d!2866 (= lt!1123 e!2191)))

(declare-fun c!1437 () Bool)

(assert (=> d!2866 (= c!1437 (is-Nil!73 (front!71 (tail!159 queue!34))))))

(assert (=> d!2866 (= (size!23 (front!71 (tail!159 queue!34))) lt!1123)))

(declare-fun b!3931 () Bool)

(assert (=> b!3931 (= e!2191 0)))

(declare-fun b!3932 () Bool)

(assert (=> b!3932 (= e!2191 (+ 1 (size!23 (tail!256 (front!71 (tail!159 queue!34))))))))

(assert (= (and d!2866 c!1437) b!3931))

(assert (= (and d!2866 (not c!1437)) b!3932))

(declare-fun m!6219 () Bool)

(assert (=> b!3932 m!6219))

(assert (=> d!2780 d!2866))

(declare-fun d!2868 () Bool)

(declare-fun lt!1124 () Int)

(assert (=> d!2868 (>= lt!1124 0)))

(declare-fun e!2192 () Int)

(assert (=> d!2868 (= lt!1124 e!2192)))

(declare-fun c!1438 () Bool)

(assert (=> d!2868 (= c!1438 (is-Nil!73 (reverse!5 (rear!73 (tail!159 queue!34)))))))

(assert (=> d!2868 (= (size!23 (reverse!5 (rear!73 (tail!159 queue!34)))) lt!1124)))

(declare-fun b!3933 () Bool)

(assert (=> b!3933 (= e!2192 0)))

(declare-fun b!3934 () Bool)

(assert (=> b!3934 (= e!2192 (+ 1 (size!23 (tail!256 (reverse!5 (rear!73 (tail!159 queue!34)))))))))

(assert (= (and d!2868 c!1438) b!3933))

(assert (= (and d!2868 (not c!1438)) b!3934))

(declare-fun m!6221 () Bool)

(assert (=> b!3934 m!6221))

(assert (=> d!2780 d!2868))

(declare-fun d!2870 () Bool)

(declare-fun lt!1125 () Int)

(assert (=> d!2870 (>= lt!1125 0)))

(declare-fun e!2193 () Int)

(assert (=> d!2870 (= lt!1125 e!2193)))

(declare-fun c!1439 () Bool)

(assert (=> d!2870 (= c!1439 (is-Nil!73 lt!1083))))

(assert (=> d!2870 (= (size!23 lt!1083) lt!1125)))

(declare-fun b!3935 () Bool)

(assert (=> b!3935 (= e!2193 0)))

(declare-fun b!3936 () Bool)

(assert (=> b!3936 (= e!2193 (+ 1 (size!23 (tail!256 lt!1083))))))

(assert (= (and d!2870 c!1439) b!3935))

(assert (= (and d!2870 (not c!1439)) b!3936))

(declare-fun m!6223 () Bool)

(assert (=> b!3936 m!6223))

(assert (=> d!2758 d!2870))

(assert (=> d!2758 d!2808))

(assert (=> d!2758 d!2788))

(declare-fun d!2872 () Bool)

(declare-fun e!2194 () Bool)

(assert (=> d!2872 e!2194))

(declare-fun res!1188 () Bool)

(assert (=> d!2872 (=> (not res!1188) (not e!2194))))

(declare-fun lt!1126 () List!72)

(assert (=> d!2872 (= res!1188 (= (size!23 lt!1126) (+ (size!23 (tail!256 (front!71 (tail!159 queue!34)))) (size!23 (reverse!5 (rear!73 (tail!159 queue!34)))))))))

(declare-fun e!2195 () List!72)

(assert (=> d!2872 (= lt!1126 e!2195)))

(declare-fun c!1440 () Bool)

(assert (=> d!2872 (= c!1440 (is-Nil!73 (tail!256 (front!71 (tail!159 queue!34)))))))

(assert (=> d!2872 (= (concat!2 (tail!256 (front!71 (tail!159 queue!34))) (reverse!5 (rear!73 (tail!159 queue!34)))) lt!1126)))

(declare-fun b!3937 () Bool)

(assert (=> b!3937 (= e!2195 (reverse!5 (rear!73 (tail!159 queue!34))))))

(declare-fun b!3938 () Bool)

(assert (=> b!3938 (= e!2195 (Cons!72 (head!244 (tail!256 (front!71 (tail!159 queue!34)))) (concat!2 (tail!256 (tail!256 (front!71 (tail!159 queue!34)))) (reverse!5 (rear!73 (tail!159 queue!34))))))))

(declare-fun b!3939 () Bool)

(assert (=> b!3939 (= e!2194 (= (content!22 lt!1126) (union (content!22 (tail!256 (front!71 (tail!159 queue!34)))) (content!22 (reverse!5 (rear!73 (tail!159 queue!34)))))))))

(assert (= (and d!2872 c!1440) b!3937))

(assert (= (and d!2872 (not c!1440)) b!3938))

(assert (= (and d!2872 res!1188) b!3939))

(declare-fun m!6225 () Bool)

(assert (=> d!2872 m!6225))

(assert (=> d!2872 m!6219))

(assert (=> d!2872 m!5925))

(assert (=> d!2872 m!6011))

(assert (=> b!3938 m!5925))

(declare-fun m!6227 () Bool)

(assert (=> b!3938 m!6227))

(declare-fun m!6229 () Bool)

(assert (=> b!3939 m!6229))

(declare-fun m!6231 () Bool)

(assert (=> b!3939 m!6231))

(assert (=> b!3939 m!5925))

(assert (=> b!3939 m!6019))

(assert (=> b!3839 d!2872))

(assert (=> b!3826 d!2854))

(declare-fun d!2874 () Bool)

(declare-fun c!1441 () Bool)

(assert (=> d!2874 (= c!1441 (is-Nil!73 lt!1088))))

(declare-fun e!2196 () (Set (_ BitVec 32)))

(assert (=> d!2874 (= (content!22 lt!1088) e!2196)))

(declare-fun b!3940 () Bool)

(assert (=> b!3940 (= e!2196 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3941 () Bool)

(assert (=> b!3941 (= e!2196 (union (insert (head!244 lt!1088) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 lt!1088))))))

(assert (= (and d!2874 c!1441) b!3940))

(assert (= (and d!2874 (not c!1441)) b!3941))

(declare-fun m!6233 () Bool)

(assert (=> b!3941 m!6233))

(declare-fun m!6235 () Bool)

(assert (=> b!3941 m!6235))

(assert (=> b!3827 d!2874))

(declare-fun d!2876 () Bool)

(declare-fun c!1442 () Bool)

(assert (=> d!2876 (= c!1442 (is-Nil!73 (front!71 queue!34)))))

(declare-fun e!2197 () (Set (_ BitVec 32)))

(assert (=> d!2876 (= (content!22 (front!71 queue!34)) e!2197)))

(declare-fun b!3942 () Bool)

(assert (=> b!3942 (= e!2197 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3943 () Bool)

(assert (=> b!3943 (= e!2197 (union (insert (head!244 (front!71 queue!34)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (front!71 queue!34)))))))

(assert (= (and d!2876 c!1442) b!3942))

(assert (= (and d!2876 (not c!1442)) b!3943))

(declare-fun m!6237 () Bool)

(assert (=> b!3943 m!6237))

(assert (=> b!3943 m!6205))

(assert (=> b!3827 d!2876))

(declare-fun d!2878 () Bool)

(declare-fun c!1443 () Bool)

(assert (=> d!2878 (= c!1443 (is-Nil!73 (reverse!5 (rear!73 queue!34))))))

(declare-fun e!2198 () (Set (_ BitVec 32)))

(assert (=> d!2878 (= (content!22 (reverse!5 (rear!73 queue!34))) e!2198)))

(declare-fun b!3944 () Bool)

(assert (=> b!3944 (= e!2198 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3945 () Bool)

(assert (=> b!3945 (= e!2198 (union (insert (head!244 (reverse!5 (rear!73 queue!34))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (reverse!5 (rear!73 queue!34))))))))

(assert (= (and d!2878 c!1443) b!3944))

(assert (= (and d!2878 (not c!1443)) b!3945))

(declare-fun m!6239 () Bool)

(assert (=> b!3945 m!6239))

(declare-fun m!6241 () Bool)

(assert (=> b!3945 m!6241))

(assert (=> b!3827 d!2878))

(declare-fun d!2880 () Bool)

(declare-fun c!1444 () Bool)

(assert (=> d!2880 (= c!1444 (is-Nil!73 lt!1094))))

(declare-fun e!2199 () (Set (_ BitVec 32)))

(assert (=> d!2880 (= (content!22 lt!1094) e!2199)))

(declare-fun b!3946 () Bool)

(assert (=> b!3946 (= e!2199 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3947 () Bool)

(assert (=> b!3947 (= e!2199 (union (insert (head!244 lt!1094) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 lt!1094))))))

(assert (= (and d!2880 c!1444) b!3946))

(assert (= (and d!2880 (not c!1444)) b!3947))

(declare-fun m!6243 () Bool)

(assert (=> b!3947 m!6243))

(declare-fun m!6245 () Bool)

(assert (=> b!3947 m!6245))

(assert (=> b!3840 d!2880))

(declare-fun d!2882 () Bool)

(declare-fun c!1445 () Bool)

(assert (=> d!2882 (= c!1445 (is-Nil!73 (front!71 (tail!159 queue!34))))))

(declare-fun e!2200 () (Set (_ BitVec 32)))

(assert (=> d!2882 (= (content!22 (front!71 (tail!159 queue!34))) e!2200)))

(declare-fun b!3948 () Bool)

(assert (=> b!3948 (= e!2200 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3949 () Bool)

(assert (=> b!3949 (= e!2200 (union (insert (head!244 (front!71 (tail!159 queue!34))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (front!71 (tail!159 queue!34))))))))

(assert (= (and d!2882 c!1445) b!3948))

(assert (= (and d!2882 (not c!1445)) b!3949))

(declare-fun m!6247 () Bool)

(assert (=> b!3949 m!6247))

(assert (=> b!3949 m!6231))

(assert (=> b!3840 d!2882))

(declare-fun d!2884 () Bool)

(declare-fun c!1446 () Bool)

(assert (=> d!2884 (= c!1446 (is-Nil!73 (reverse!5 (rear!73 (tail!159 queue!34)))))))

(declare-fun e!2201 () (Set (_ BitVec 32)))

(assert (=> d!2884 (= (content!22 (reverse!5 (rear!73 (tail!159 queue!34)))) e!2201)))

(declare-fun b!3950 () Bool)

(assert (=> b!3950 (= e!2201 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3951 () Bool)

(assert (=> b!3951 (= e!2201 (union (insert (head!244 (reverse!5 (rear!73 (tail!159 queue!34)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (reverse!5 (rear!73 (tail!159 queue!34)))))))))

(assert (= (and d!2884 c!1446) b!3950))

(assert (= (and d!2884 (not c!1446)) b!3951))

(declare-fun m!6249 () Bool)

(assert (=> b!3951 m!6249))

(declare-fun m!6251 () Bool)

(assert (=> b!3951 m!6251))

(assert (=> b!3840 d!2884))

(declare-fun d!2886 () Bool)

(assert (=> d!2886 (= (isAmortized!0 lt!1086) (>= (size!23 (front!71 lt!1086)) (size!23 (rear!73 lt!1086))))))

(declare-fun bs!266 () Bool)

(assert (= bs!266 d!2886))

(declare-fun m!6253 () Bool)

(assert (=> bs!266 m!6253))

(declare-fun m!6255 () Bool)

(assert (=> bs!266 m!6255))

(assert (=> d!2768 d!2886))

(assert (=> d!2768 d!2778))

(assert (=> d!2768 d!2812))

(declare-fun d!2888 () Bool)

(declare-fun c!1447 () Bool)

(assert (=> d!2888 (= c!1447 (is-Nil!73 lt!1095))))

(declare-fun e!2202 () (Set (_ BitVec 32)))

(assert (=> d!2888 (= (content!22 lt!1095) e!2202)))

(declare-fun b!3952 () Bool)

(assert (=> b!3952 (= e!2202 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3953 () Bool)

(assert (=> b!3953 (= e!2202 (union (insert (head!244 lt!1095) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 lt!1095))))))

(assert (= (and d!2888 c!1447) b!3952))

(assert (= (and d!2888 (not c!1447)) b!3953))

(declare-fun m!6257 () Bool)

(assert (=> b!3953 m!6257))

(declare-fun m!6259 () Bool)

(assert (=> b!3953 m!6259))

(assert (=> d!2782 d!2888))

(declare-fun d!2890 () Bool)

(declare-fun c!1448 () Bool)

(assert (=> d!2890 (= c!1448 (is-Nil!73 (rear!73 (tail!159 queue!34))))))

(declare-fun e!2203 () (Set (_ BitVec 32)))

(assert (=> d!2890 (= (content!22 (rear!73 (tail!159 queue!34))) e!2203)))

(declare-fun b!3954 () Bool)

(assert (=> b!3954 (= e!2203 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3955 () Bool)

(assert (=> b!3955 (= e!2203 (union (insert (head!244 (rear!73 (tail!159 queue!34))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 (rear!73 (tail!159 queue!34))))))))

(assert (= (and d!2890 c!1448) b!3954))

(assert (= (and d!2890 (not c!1448)) b!3955))

(declare-fun m!6261 () Bool)

(assert (=> b!3955 m!6261))

(assert (=> b!3955 m!6187))

(assert (=> d!2782 d!2890))

(declare-fun d!2892 () Bool)

(declare-fun lt!1127 () Int)

(assert (=> d!2892 (>= lt!1127 0)))

(declare-fun e!2204 () Int)

(assert (=> d!2892 (= lt!1127 e!2204)))

(declare-fun c!1449 () Bool)

(assert (=> d!2892 (= c!1449 (is-Nil!73 lt!1099))))

(assert (=> d!2892 (= (size!23 lt!1099) lt!1127)))

(declare-fun b!3956 () Bool)

(assert (=> b!3956 (= e!2204 0)))

(declare-fun b!3957 () Bool)

(assert (=> b!3957 (= e!2204 (+ 1 (size!23 (tail!256 lt!1099))))))

(assert (= (and d!2892 c!1449) b!3956))

(assert (= (and d!2892 (not c!1449)) b!3957))

(declare-fun m!6263 () Bool)

(assert (=> b!3957 m!6263))

(assert (=> d!2790 d!2892))

(declare-fun d!2894 () Bool)

(declare-fun lt!1128 () Int)

(assert (=> d!2894 (>= lt!1128 0)))

(declare-fun e!2205 () Int)

(assert (=> d!2894 (= lt!1128 e!2205)))

(declare-fun c!1450 () Bool)

(assert (=> d!2894 (= c!1450 (is-Nil!73 (reverse!5 (tail!256 rear!28))))))

(assert (=> d!2894 (= (size!23 (reverse!5 (tail!256 rear!28))) lt!1128)))

(declare-fun b!3958 () Bool)

(assert (=> b!3958 (= e!2205 0)))

(declare-fun b!3959 () Bool)

(assert (=> b!3959 (= e!2205 (+ 1 (size!23 (tail!256 (reverse!5 (tail!256 rear!28))))))))

(assert (= (and d!2894 c!1450) b!3958))

(assert (= (and d!2894 (not c!1450)) b!3959))

(assert (=> b!3959 m!6095))

(assert (=> d!2790 d!2894))

(declare-fun d!2896 () Bool)

(declare-fun lt!1129 () Int)

(assert (=> d!2896 (>= lt!1129 0)))

(declare-fun e!2206 () Int)

(assert (=> d!2896 (= lt!1129 e!2206)))

(declare-fun c!1451 () Bool)

(assert (=> d!2896 (= c!1451 (is-Nil!73 (Cons!72 (head!244 rear!28) Nil!73)))))

(assert (=> d!2896 (= (size!23 (Cons!72 (head!244 rear!28) Nil!73)) lt!1129)))

(declare-fun b!3960 () Bool)

(assert (=> b!3960 (= e!2206 0)))

(declare-fun b!3961 () Bool)

(assert (=> b!3961 (= e!2206 (+ 1 (size!23 (tail!256 (Cons!72 (head!244 rear!28) Nil!73)))))))

(assert (= (and d!2896 c!1451) b!3960))

(assert (= (and d!2896 (not c!1451)) b!3961))

(declare-fun m!6265 () Bool)

(assert (=> b!3961 m!6265))

(assert (=> d!2790 d!2896))

(declare-fun d!2898 () Bool)

(declare-fun c!1452 () Bool)

(assert (=> d!2898 (= c!1452 (is-Nil!73 lt!1100))))

(declare-fun e!2207 () (Set (_ BitVec 32)))

(assert (=> d!2898 (= (content!22 lt!1100) e!2207)))

(declare-fun b!3962 () Bool)

(assert (=> b!3962 (= e!2207 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3963 () Bool)

(assert (=> b!3963 (= e!2207 (union (insert (head!244 lt!1100) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!256 lt!1100))))))

(assert (= (and d!2898 c!1452) b!3962))

(assert (= (and d!2898 (not c!1452)) b!3963))

(declare-fun m!6267 () Bool)

(assert (=> b!3963 m!6267))

(declare-fun m!6269 () Bool)

(assert (=> b!3963 m!6269))

(assert (=> d!2792 d!2898))

(assert (=> d!2792 d!2856))

(declare-fun d!2900 () Bool)

(declare-fun lt!1130 () Int)

(assert (=> d!2900 (>= lt!1130 0)))

(declare-fun e!2208 () Int)

(assert (=> d!2900 (= lt!1130 e!2208)))

(declare-fun c!1453 () Bool)

(assert (=> d!2900 (= c!1453 (is-Nil!73 (tail!256 (reverse!5 rear!28))))))

(assert (=> d!2900 (= (size!23 (tail!256 (reverse!5 rear!28))) lt!1130)))

(declare-fun b!3964 () Bool)

(assert (=> b!3964 (= e!2208 0)))

(declare-fun b!3965 () Bool)

(assert (=> b!3965 (= e!2208 (+ 1 (size!23 (tail!256 (tail!256 (reverse!5 rear!28))))))))

(assert (= (and d!2900 c!1453) b!3964))

(assert (= (and d!2900 (not c!1453)) b!3965))

(declare-fun m!6271 () Bool)

(assert (=> b!3965 m!6271))

(assert (=> b!3848 d!2900))

(declare-fun d!2902 () Bool)

(declare-fun lt!1131 () Int)

(assert (=> d!2902 (>= lt!1131 0)))

(declare-fun e!2209 () Int)

(assert (=> d!2902 (= lt!1131 e!2209)))

(declare-fun c!1454 () Bool)

(assert (=> d!2902 (= c!1454 (is-Nil!73 (tail!256 lt!1075)))))

(assert (=> d!2902 (= (size!23 (tail!256 lt!1075)) lt!1131)))

(declare-fun b!3966 () Bool)

(assert (=> b!3966 (= e!2209 0)))

(declare-fun b!3967 () Bool)

(assert (=> b!3967 (= e!2209 (+ 1 (size!23 (tail!256 (tail!256 lt!1075)))))))

(assert (= (and d!2902 c!1454) b!3966))

(assert (= (and d!2902 (not c!1454)) b!3967))

(declare-fun m!6273 () Bool)

(assert (=> b!3967 m!6273))

(assert (=> b!3844 d!2902))

(push 1)

(assert (not b!3892))

(assert (not b!3882))

(assert (not b!3906))

(assert (not b!3915))

(assert (not b!3908))

(assert (not b!3963))

(assert (not b!3866))

(assert (not d!2810))

(assert (not b!3928))

(assert (not d!2886))

(assert (not b!3924))

(assert (not b!3943))

(assert (not b!3878))

(assert (not d!2872))

(assert (not b!3926))

(assert (not b!3965))

(assert (not b!3875))

(assert (not b!3873))

(assert (not b!3896))

(assert (not b!3910))

(assert (not b!3913))

(assert (not b!3870))

(assert (not b!3904))

(assert (not b!3855))

(assert (not d!2844))

(assert (not b!3911))

(assert (not b!3938))

(assert (not b!3920))

(assert (not d!2814))

(assert (not b!3936))

(assert (not d!2806))

(assert (not b!3930))

(assert (not b!3947))

(assert (not b!3898))

(assert (not b!3887))

(assert (not b!3967))

(assert (not b!3861))

(assert (not b!3865))

(assert (not b!3857))

(assert (not d!2818))

(assert (not b!3872))

(assert (not b!3919))

(assert (not b!3880))

(assert (not b!3951))

(assert (not b!3877))

(assert (not b!3900))

(assert (not b!3941))

(assert (not d!2824))

(assert (not b!3863))

(assert (not b!3957))

(assert (not b!3959))

(assert (not b!3889))

(assert (not b!3890))

(assert (not b!3859))

(assert (not d!2846))

(assert (not b!3927))

(assert (not b!3922))

(assert (not b!3955))

(assert (not b!3953))

(assert (not b!3932))

(assert (not b!3902))

(assert (not b!3883))

(assert (not b!3934))

(assert (not b!3894))

(assert (not d!2826))

(assert (not b!3917))

(assert (not b!3961))

(assert (not b!3939))

(assert (not b!3868))

(assert (not d!2854))

(assert (not b!3945))

(assert (not d!2804))

(assert (not b!3949))

(assert (not b!3885))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


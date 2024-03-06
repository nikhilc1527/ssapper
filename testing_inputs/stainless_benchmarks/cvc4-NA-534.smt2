; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3840 () Bool)

(assert start!3840)

(declare-fun b!25913 () Bool)

(declare-fun res!11768 () Bool)

(declare-fun e!13295 () Bool)

(assert (=> b!25913 (=> (not res!11768) (not e!13295))))

(declare-datatypes () ((T!1823 (T!1824 (val!84 Int)))))

(declare-datatypes () ((Conc!61 (CC!60 (left!705 Conc!61) (right!708 Conc!61)) (Single!60 (x!8911 T!1823)) (Empty!71))))

(declare-fun ys!77 () Conc!61)

(declare-fun concInv!55 (Conc!61) Bool)

(assert (=> b!25913 (= res!11768 (concInv!55 ys!77))))

(declare-fun b!25914 () Bool)

(declare-fun e!13292 () Bool)

(declare-fun tp!5699 () Bool)

(declare-fun tp!5702 () Bool)

(assert (=> b!25914 (= e!13292 (and tp!5699 tp!5702))))

(declare-fun b!25915 () Bool)

(declare-fun res!11760 () Bool)

(assert (=> b!25915 (=> (not res!11760) (not e!13295))))

(declare-fun xs!533 () Conc!61)

(declare-fun balanced!56 (Conc!61) Bool)

(assert (=> b!25915 (= res!11760 (balanced!56 xs!533))))

(declare-fun b!25916 () Bool)

(declare-fun res!11763 () Bool)

(declare-fun e!13294 () Bool)

(assert (=> b!25916 (=> (not res!11763) (not e!13294))))

(declare-fun res!5525 () Conc!61)

(assert (=> b!25916 (= res!11763 (concInv!55 res!5525))))

(declare-fun b!25917 () Bool)

(declare-fun res!11758 () Bool)

(assert (=> b!25917 (=> (not res!11758) (not e!13294))))

(declare-fun appendAssocInst!10 (Conc!61 Conc!61) Bool)

(assert (=> b!25917 (= res!11758 (appendAssocInst!10 xs!533 ys!77))))

(declare-fun b!25918 () Bool)

(declare-fun res!11764 () Bool)

(assert (=> b!25918 (=> (not res!11764) (not e!13294))))

(assert (=> b!25918 (= res!11764 (balanced!56 res!5525))))

(declare-fun b!25919 () Bool)

(declare-fun res!11765 () Bool)

(assert (=> b!25919 (=> (not res!11765) (not e!13295))))

(assert (=> b!25919 (= res!11765 (balanced!56 ys!77))))

(declare-fun b!25920 () Bool)

(declare-fun concatCorrectness!10 (Conc!61 Conc!61 Conc!61) Bool)

(assert (=> b!25920 (= e!13294 (concatCorrectness!10 res!5525 xs!533 ys!77))))

(declare-fun b!25921 () Bool)

(declare-fun res!11766 () Bool)

(assert (=> b!25921 (=> (not res!11766) (not e!13295))))

(declare-fun isEmpty!317 (Conc!61) Bool)

(assert (=> b!25921 (= res!11766 (not (isEmpty!317 ys!77)))))

(declare-fun b!25922 () Bool)

(declare-fun e!13291 () Bool)

(declare-fun tp!5703 () Bool)

(declare-fun tp!5701 () Bool)

(assert (=> b!25922 (= e!13291 (and tp!5703 tp!5701))))

(declare-fun b!25923 () Bool)

(declare-fun e!13293 () Bool)

(declare-fun tp!5698 () Bool)

(declare-fun tp!5700 () Bool)

(assert (=> b!25923 (= e!13293 (and tp!5698 tp!5700))))

(declare-fun b!25924 () Bool)

(declare-fun res!11767 () Bool)

(assert (=> b!25924 (=> (not res!11767) (not e!13295))))

(declare-fun diff!6 () Int)

(declare-fun level!49 (Conc!61) Int)

(assert (=> b!25924 (= res!11767 (= diff!6 (- (level!49 ys!77) (level!49 xs!533))))))

(declare-fun b!25925 () Bool)

(declare-fun tp_is_empty!167 () Bool)

(assert (=> b!25925 (= e!13291 tp_is_empty!167)))

(declare-fun res!11770 () Bool)

(assert (=> start!3840 (=> (not res!11770) (not e!13295))))

(assert (=> start!3840 (= res!11770 (concInv!55 xs!533))))

(assert (=> start!3840 e!13295))

(assert (=> start!3840 e!13292))

(assert (=> start!3840 e!13293))

(assert (=> start!3840 true))

(assert (=> start!3840 e!13291))

(declare-fun b!25926 () Bool)

(assert (=> b!25926 (= e!13293 tp_is_empty!167)))

(declare-fun b!25927 () Bool)

(declare-fun res!11762 () Bool)

(assert (=> b!25927 (=> (not res!11762) (not e!13294))))

(declare-fun lt!4101 () Int)

(declare-fun lt!4099 () Int)

(declare-fun lt!4098 () Int)

(assert (=> b!25927 (= res!11762 (>= lt!4099 (ite (>= lt!4098 lt!4101) lt!4098 lt!4101)))))

(assert (=> b!25927 (= lt!4101 (level!49 ys!77))))

(assert (=> b!25927 (= lt!4098 (level!49 xs!533))))

(assert (=> b!25927 (= lt!4099 (level!49 res!5525))))

(declare-fun b!25928 () Bool)

(declare-fun res!11759 () Bool)

(assert (=> b!25928 (=> (not res!11759) (not e!13295))))

(assert (=> b!25928 (= res!11759 (not (isEmpty!317 xs!533)))))

(declare-fun b!25929 () Bool)

(declare-fun res!11761 () Bool)

(assert (=> b!25929 (=> (not res!11761) (not e!13295))))

(assert (=> b!25929 (= res!11761 (and (>= diff!6 (- 1)) (<= diff!6 1) (= res!5525 (CC!60 xs!533 ys!77))))))

(declare-fun b!25930 () Bool)

(assert (=> b!25930 (= e!13295 (not e!13294))))

(declare-fun res!11769 () Bool)

(assert (=> b!25930 (=> (not res!11769) (not e!13294))))

(declare-fun lt!4097 () Int)

(declare-fun lt!4100 () Int)

(declare-fun lt!4096 () Int)

(assert (=> b!25930 (= res!11769 (<= lt!4100 (+ (ite (>= lt!4096 lt!4097) lt!4096 lt!4097) 1)))))

(assert (=> b!25930 (= lt!4097 (level!49 ys!77))))

(assert (=> b!25930 (= lt!4096 (level!49 xs!533))))

(assert (=> b!25930 (= lt!4100 (level!49 res!5525))))

(assert (=> b!25930 (is-CC!60 res!5525)))

(declare-fun b!25931 () Bool)

(assert (=> b!25931 (= e!13292 tp_is_empty!167)))

(assert (= (and start!3840 res!11770) b!25915))

(assert (= (and b!25915 res!11760) b!25913))

(assert (= (and b!25913 res!11768) b!25919))

(assert (= (and b!25919 res!11765) b!25928))

(assert (= (and b!25928 res!11759) b!25921))

(assert (= (and b!25921 res!11766) b!25924))

(assert (= (and b!25924 res!11767) b!25929))

(assert (= (and b!25929 res!11761) b!25930))

(assert (= (and b!25930 res!11769) b!25927))

(assert (= (and b!25927 res!11762) b!25916))

(assert (= (and b!25916 res!11763) b!25918))

(assert (= (and b!25918 res!11764) b!25917))

(assert (= (and b!25917 res!11758) b!25920))

(assert (= (and start!3840 (is-CC!60 xs!533)) b!25914))

(assert (= (and start!3840 (is-Single!60 xs!533)) b!25931))

(assert (= (and start!3840 (is-CC!60 ys!77)) b!25923))

(assert (= (and start!3840 (is-Single!60 ys!77)) b!25926))

(assert (= (and start!3840 (is-CC!60 res!5525)) b!25922))

(assert (= (and start!3840 (is-Single!60 res!5525)) b!25925))

(declare-fun m!26815 () Bool)

(assert (=> b!25916 m!26815))

(declare-fun m!26817 () Bool)

(assert (=> b!25920 m!26817))

(declare-fun m!26819 () Bool)

(assert (=> b!25919 m!26819))

(declare-fun m!26821 () Bool)

(assert (=> b!25930 m!26821))

(declare-fun m!26823 () Bool)

(assert (=> b!25930 m!26823))

(declare-fun m!26825 () Bool)

(assert (=> b!25930 m!26825))

(declare-fun m!26827 () Bool)

(assert (=> b!25913 m!26827))

(declare-fun m!26829 () Bool)

(assert (=> b!25928 m!26829))

(assert (=> b!25927 m!26821))

(assert (=> b!25927 m!26823))

(assert (=> b!25927 m!26825))

(assert (=> b!25924 m!26821))

(assert (=> b!25924 m!26823))

(declare-fun m!26831 () Bool)

(assert (=> b!25915 m!26831))

(declare-fun m!26833 () Bool)

(assert (=> b!25918 m!26833))

(declare-fun m!26835 () Bool)

(assert (=> b!25921 m!26835))

(declare-fun m!26837 () Bool)

(assert (=> b!25917 m!26837))

(declare-fun m!26839 () Bool)

(assert (=> start!3840 m!26839))

(push 1)

(assert (not start!3840))

(assert (not b!25927))

(assert (not b!25928))

(assert (not b!25915))

(assert (not b!25913))

(assert (not b!25917))

(assert (not b!25918))

(assert (not b!25921))

(assert (not b!25930))

(assert (not b!25916))

(assert (not b!25923))

(assert tp_is_empty!167)

(assert (not b!25914))

(assert (not b!25919))

(assert (not b!25922))

(assert (not b!25924))

(assert (not b!25920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!25937 () Bool)

(declare-fun e!13298 () Int)

(declare-fun lt!4110 () Int)

(declare-fun lt!4109 () Int)

(assert (=> b!25937 (= e!13298 (+ 1 (ite (>= lt!4110 lt!4109) lt!4110 lt!4109)))))

(assert (=> b!25937 (= lt!4109 (level!49 (right!708 ys!77)))))

(assert (=> b!25937 (= lt!4110 (level!49 (left!705 ys!77)))))

(declare-fun d!13957 () Bool)

(declare-fun lt!4108 () Int)

(assert (=> d!13957 (>= lt!4108 0)))

(assert (=> d!13957 (= lt!4108 e!13298)))

(declare-fun c!5750 () Bool)

(assert (=> d!13957 (= c!5750 (or (is-Empty!71 ys!77) (is-Single!60 ys!77)))))

(assert (=> d!13957 (= (level!49 ys!77) lt!4108)))

(declare-fun b!25936 () Bool)

(assert (=> b!25936 (= e!13298 0)))

(assert (= (and d!13957 c!5750) b!25936))

(assert (= (and d!13957 (not c!5750)) b!25937))

(declare-fun m!26841 () Bool)

(assert (=> b!25937 m!26841))

(declare-fun m!26843 () Bool)

(assert (=> b!25937 m!26843))

(assert (=> b!25930 d!13957))

(declare-fun b!25939 () Bool)

(declare-fun e!13299 () Int)

(declare-fun lt!4113 () Int)

(declare-fun lt!4112 () Int)

(assert (=> b!25939 (= e!13299 (+ 1 (ite (>= lt!4113 lt!4112) lt!4113 lt!4112)))))

(assert (=> b!25939 (= lt!4112 (level!49 (right!708 xs!533)))))

(assert (=> b!25939 (= lt!4113 (level!49 (left!705 xs!533)))))

(declare-fun d!13959 () Bool)

(declare-fun lt!4111 () Int)

(assert (=> d!13959 (>= lt!4111 0)))

(assert (=> d!13959 (= lt!4111 e!13299)))

(declare-fun c!5751 () Bool)

(assert (=> d!13959 (= c!5751 (or (is-Empty!71 xs!533) (is-Single!60 xs!533)))))

(assert (=> d!13959 (= (level!49 xs!533) lt!4111)))

(declare-fun b!25938 () Bool)

(assert (=> b!25938 (= e!13299 0)))

(assert (= (and d!13959 c!5751) b!25938))

(assert (= (and d!13959 (not c!5751)) b!25939))

(declare-fun m!26845 () Bool)

(assert (=> b!25939 m!26845))

(declare-fun m!26847 () Bool)

(assert (=> b!25939 m!26847))

(assert (=> b!25930 d!13959))

(declare-fun b!25941 () Bool)

(declare-fun e!13300 () Int)

(declare-fun lt!4116 () Int)

(declare-fun lt!4115 () Int)

(assert (=> b!25941 (= e!13300 (+ 1 (ite (>= lt!4116 lt!4115) lt!4116 lt!4115)))))

(assert (=> b!25941 (= lt!4115 (level!49 (right!708 res!5525)))))

(assert (=> b!25941 (= lt!4116 (level!49 (left!705 res!5525)))))

(declare-fun d!13961 () Bool)

(declare-fun lt!4114 () Int)

(assert (=> d!13961 (>= lt!4114 0)))

(assert (=> d!13961 (= lt!4114 e!13300)))

(declare-fun c!5752 () Bool)

(assert (=> d!13961 (= c!5752 (or (is-Empty!71 res!5525) (is-Single!60 res!5525)))))

(assert (=> d!13961 (= (level!49 res!5525) lt!4114)))

(declare-fun b!25940 () Bool)

(assert (=> b!25940 (= e!13300 0)))

(assert (= (and d!13961 c!5752) b!25940))

(assert (= (and d!13961 (not c!5752)) b!25941))

(declare-fun m!26849 () Bool)

(assert (=> b!25941 m!26849))

(declare-fun m!26851 () Bool)

(assert (=> b!25941 m!26851))

(assert (=> b!25930 d!13961))

(assert (=> b!25927 d!13957))

(assert (=> b!25927 d!13959))

(assert (=> b!25927 d!13961))

(assert (=> b!25924 d!13957))

(assert (=> b!25924 d!13959))

(declare-fun b!25952 () Bool)

(declare-fun res!11780 () Bool)

(declare-fun e!13306 () Bool)

(assert (=> b!25952 (=> (not res!11780) (not e!13306))))

(assert (=> b!25952 (= res!11780 (balanced!56 (left!705 xs!533)))))

(declare-fun d!13963 () Bool)

(declare-fun res!11782 () Bool)

(declare-fun e!13305 () Bool)

(assert (=> d!13963 (=> res!11782 e!13305)))

(assert (=> d!13963 (= res!11782 (not (is-CC!60 xs!533)))))

(assert (=> d!13963 (= (balanced!56 xs!533) e!13305)))

(declare-fun b!25950 () Bool)

(assert (=> b!25950 (= e!13305 e!13306)))

(declare-fun res!11781 () Bool)

(assert (=> b!25950 (=> (not res!11781) (not e!13306))))

(assert (=> b!25950 (= res!11781 (>= (- (level!49 (left!705 xs!533)) (level!49 (right!708 xs!533))) (- 1)))))

(declare-fun b!25953 () Bool)

(assert (=> b!25953 (= e!13306 (balanced!56 (right!708 xs!533)))))

(declare-fun b!25951 () Bool)

(declare-fun res!11779 () Bool)

(assert (=> b!25951 (=> (not res!11779) (not e!13306))))

(assert (=> b!25951 (= res!11779 (<= (- (level!49 (left!705 xs!533)) (level!49 (right!708 xs!533))) 1))))

(assert (= (and d!13963 (not res!11782)) b!25950))

(assert (= (and b!25950 res!11781) b!25951))

(assert (= (and b!25951 res!11779) b!25952))

(assert (= (and b!25952 res!11780) b!25953))

(declare-fun m!26853 () Bool)

(assert (=> b!25952 m!26853))

(assert (=> b!25950 m!26847))

(assert (=> b!25950 m!26845))

(declare-fun m!26855 () Bool)

(assert (=> b!25953 m!26855))

(assert (=> b!25951 m!26847))

(assert (=> b!25951 m!26845))

(assert (=> b!25915 d!13963))

(declare-fun b!25965 () Bool)

(declare-fun e!13311 () Bool)

(assert (=> b!25965 (= e!13311 (concInv!55 (right!708 xs!533)))))

(declare-fun b!25963 () Bool)

(declare-fun res!11792 () Bool)

(assert (=> b!25963 (=> (not res!11792) (not e!13311))))

(assert (=> b!25963 (= res!11792 (not (isEmpty!317 (right!708 xs!533))))))

(declare-fun b!25962 () Bool)

(declare-fun e!13312 () Bool)

(assert (=> b!25962 (= e!13312 e!13311)))

(declare-fun res!11793 () Bool)

(assert (=> b!25962 (=> (not res!11793) (not e!13311))))

(assert (=> b!25962 (= res!11793 (not (isEmpty!317 (left!705 xs!533))))))

(declare-fun d!13965 () Bool)

(declare-fun res!11791 () Bool)

(assert (=> d!13965 (=> res!11791 e!13312)))

(assert (=> d!13965 (= res!11791 (not (is-CC!60 xs!533)))))

(assert (=> d!13965 (= (concInv!55 xs!533) e!13312)))

(declare-fun b!25964 () Bool)

(declare-fun res!11794 () Bool)

(assert (=> b!25964 (=> (not res!11794) (not e!13311))))

(assert (=> b!25964 (= res!11794 (concInv!55 (left!705 xs!533)))))

(assert (= (and d!13965 (not res!11791)) b!25962))

(assert (= (and b!25962 res!11793) b!25963))

(assert (= (and b!25963 res!11792) b!25964))

(assert (= (and b!25964 res!11794) b!25965))

(declare-fun m!26857 () Bool)

(assert (=> b!25965 m!26857))

(declare-fun m!26859 () Bool)

(assert (=> b!25963 m!26859))

(declare-fun m!26861 () Bool)

(assert (=> b!25962 m!26861))

(declare-fun m!26863 () Bool)

(assert (=> b!25964 m!26863))

(assert (=> start!3840 d!13965))

(declare-fun d!13967 () Bool)

(assert (=> d!13967 (= (isEmpty!317 ys!77) (= ys!77 Empty!71))))

(assert (=> b!25921 d!13967))

(declare-fun d!13969 () Bool)

(declare-datatypes () ((List!358 (Cons!352 (h!269 T!1823) (t!4372 List!358)) (Nil!353))))

(declare-fun toList!113 (Conc!61) List!358)

(declare-fun ++!38 (List!358 List!358) List!358)

(assert (=> d!13969 (= (concatCorrectness!10 res!5525 xs!533 ys!77) (= (toList!113 res!5525) (++!38 (toList!113 xs!533) (toList!113 ys!77))))))

(declare-fun bs!5087 () Bool)

(assert (= bs!5087 d!13969))

(declare-fun m!26865 () Bool)

(assert (=> bs!5087 m!26865))

(declare-fun m!26867 () Bool)

(assert (=> bs!5087 m!26867))

(assert (=> bs!5087 m!26867))

(declare-fun m!26869 () Bool)

(assert (=> bs!5087 m!26869))

(declare-fun m!26871 () Bool)

(assert (=> bs!5087 m!26871))

(assert (=> bs!5087 m!26869))

(assert (=> b!25920 d!13969))

(declare-fun b!25968 () Bool)

(declare-fun res!11797 () Bool)

(declare-fun e!13314 () Bool)

(assert (=> b!25968 (=> (not res!11797) (not e!13314))))

(assert (=> b!25968 (= res!11797 (balanced!56 (left!705 res!5525)))))

(declare-fun d!13971 () Bool)

(declare-fun res!11799 () Bool)

(declare-fun e!13313 () Bool)

(assert (=> d!13971 (=> res!11799 e!13313)))

(assert (=> d!13971 (= res!11799 (not (is-CC!60 res!5525)))))

(assert (=> d!13971 (= (balanced!56 res!5525) e!13313)))

(declare-fun b!25966 () Bool)

(assert (=> b!25966 (= e!13313 e!13314)))

(declare-fun res!11798 () Bool)

(assert (=> b!25966 (=> (not res!11798) (not e!13314))))

(assert (=> b!25966 (= res!11798 (>= (- (level!49 (left!705 res!5525)) (level!49 (right!708 res!5525))) (- 1)))))

(declare-fun b!25969 () Bool)

(assert (=> b!25969 (= e!13314 (balanced!56 (right!708 res!5525)))))

(declare-fun b!25967 () Bool)

(declare-fun res!11796 () Bool)

(assert (=> b!25967 (=> (not res!11796) (not e!13314))))

(assert (=> b!25967 (= res!11796 (<= (- (level!49 (left!705 res!5525)) (level!49 (right!708 res!5525))) 1))))

(assert (= (and d!13971 (not res!11799)) b!25966))

(assert (= (and b!25966 res!11798) b!25967))

(assert (= (and b!25967 res!11796) b!25968))

(assert (= (and b!25968 res!11797) b!25969))

(declare-fun m!26873 () Bool)

(assert (=> b!25968 m!26873))

(assert (=> b!25966 m!26851))

(assert (=> b!25966 m!26849))

(declare-fun m!26875 () Bool)

(assert (=> b!25969 m!26875))

(assert (=> b!25967 m!26851))

(assert (=> b!25967 m!26849))

(assert (=> b!25918 d!13971))

(declare-fun d!13973 () Bool)

(assert (=> d!13973 (= (isEmpty!317 xs!533) (= xs!533 Empty!71))))

(assert (=> b!25928 d!13973))

(declare-fun b!25973 () Bool)

(declare-fun e!13315 () Bool)

(assert (=> b!25973 (= e!13315 (concInv!55 (right!708 ys!77)))))

(declare-fun b!25971 () Bool)

(declare-fun res!11801 () Bool)

(assert (=> b!25971 (=> (not res!11801) (not e!13315))))

(assert (=> b!25971 (= res!11801 (not (isEmpty!317 (right!708 ys!77))))))

(declare-fun b!25970 () Bool)

(declare-fun e!13316 () Bool)

(assert (=> b!25970 (= e!13316 e!13315)))

(declare-fun res!11802 () Bool)

(assert (=> b!25970 (=> (not res!11802) (not e!13315))))

(assert (=> b!25970 (= res!11802 (not (isEmpty!317 (left!705 ys!77))))))

(declare-fun d!13975 () Bool)

(declare-fun res!11800 () Bool)

(assert (=> d!13975 (=> res!11800 e!13316)))

(assert (=> d!13975 (= res!11800 (not (is-CC!60 ys!77)))))

(assert (=> d!13975 (= (concInv!55 ys!77) e!13316)))

(declare-fun b!25972 () Bool)

(declare-fun res!11803 () Bool)

(assert (=> b!25972 (=> (not res!11803) (not e!13315))))

(assert (=> b!25972 (= res!11803 (concInv!55 (left!705 ys!77)))))

(assert (= (and d!13975 (not res!11800)) b!25970))

(assert (= (and b!25970 res!11802) b!25971))

(assert (= (and b!25971 res!11801) b!25972))

(assert (= (and b!25972 res!11803) b!25973))

(declare-fun m!26877 () Bool)

(assert (=> b!25973 m!26877))

(declare-fun m!26879 () Bool)

(assert (=> b!25971 m!26879))

(declare-fun m!26881 () Bool)

(assert (=> b!25970 m!26881))

(declare-fun m!26883 () Bool)

(assert (=> b!25972 m!26883))

(assert (=> b!25913 d!13975))

(declare-fun b!25977 () Bool)

(declare-fun e!13317 () Bool)

(assert (=> b!25977 (= e!13317 (concInv!55 (right!708 res!5525)))))

(declare-fun b!25975 () Bool)

(declare-fun res!11805 () Bool)

(assert (=> b!25975 (=> (not res!11805) (not e!13317))))

(assert (=> b!25975 (= res!11805 (not (isEmpty!317 (right!708 res!5525))))))

(declare-fun b!25974 () Bool)

(declare-fun e!13318 () Bool)

(assert (=> b!25974 (= e!13318 e!13317)))

(declare-fun res!11806 () Bool)

(assert (=> b!25974 (=> (not res!11806) (not e!13317))))

(assert (=> b!25974 (= res!11806 (not (isEmpty!317 (left!705 res!5525))))))

(declare-fun d!13977 () Bool)

(declare-fun res!11804 () Bool)

(assert (=> d!13977 (=> res!11804 e!13318)))

(assert (=> d!13977 (= res!11804 (not (is-CC!60 res!5525)))))

(assert (=> d!13977 (= (concInv!55 res!5525) e!13318)))

(declare-fun b!25976 () Bool)

(declare-fun res!11807 () Bool)

(assert (=> b!25976 (=> (not res!11807) (not e!13317))))

(assert (=> b!25976 (= res!11807 (concInv!55 (left!705 res!5525)))))

(assert (= (and d!13977 (not res!11804)) b!25974))

(assert (= (and b!25974 res!11806) b!25975))

(assert (= (and b!25975 res!11805) b!25976))

(assert (= (and b!25976 res!11807) b!25977))

(declare-fun m!26885 () Bool)

(assert (=> b!25977 m!26885))

(declare-fun m!26887 () Bool)

(assert (=> b!25975 m!26887))

(declare-fun m!26889 () Bool)

(assert (=> b!25974 m!26889))

(declare-fun m!26891 () Bool)

(assert (=> b!25976 m!26891))

(assert (=> b!25916 d!13977))

(declare-fun b!25980 () Bool)

(declare-fun res!11809 () Bool)

(declare-fun e!13320 () Bool)

(assert (=> b!25980 (=> (not res!11809) (not e!13320))))

(assert (=> b!25980 (= res!11809 (balanced!56 (left!705 ys!77)))))

(declare-fun d!13979 () Bool)

(declare-fun res!11811 () Bool)

(declare-fun e!13319 () Bool)

(assert (=> d!13979 (=> res!11811 e!13319)))

(assert (=> d!13979 (= res!11811 (not (is-CC!60 ys!77)))))

(assert (=> d!13979 (= (balanced!56 ys!77) e!13319)))

(declare-fun b!25978 () Bool)

(assert (=> b!25978 (= e!13319 e!13320)))

(declare-fun res!11810 () Bool)

(assert (=> b!25978 (=> (not res!11810) (not e!13320))))

(assert (=> b!25978 (= res!11810 (>= (- (level!49 (left!705 ys!77)) (level!49 (right!708 ys!77))) (- 1)))))

(declare-fun b!25981 () Bool)

(assert (=> b!25981 (= e!13320 (balanced!56 (right!708 ys!77)))))

(declare-fun b!25979 () Bool)

(declare-fun res!11808 () Bool)

(assert (=> b!25979 (=> (not res!11808) (not e!13320))))

(assert (=> b!25979 (= res!11808 (<= (- (level!49 (left!705 ys!77)) (level!49 (right!708 ys!77))) 1))))

(assert (= (and d!13979 (not res!11811)) b!25978))

(assert (= (and b!25978 res!11810) b!25979))

(assert (= (and b!25979 res!11808) b!25980))

(assert (= (and b!25980 res!11809) b!25981))

(declare-fun m!26893 () Bool)

(assert (=> b!25980 m!26893))

(assert (=> b!25978 m!26843))

(assert (=> b!25978 m!26841))

(declare-fun m!26895 () Bool)

(assert (=> b!25981 m!26895))

(assert (=> b!25979 m!26843))

(assert (=> b!25979 m!26841))

(assert (=> b!25919 d!13979))

(declare-fun d!13981 () Bool)

(declare-fun e!13345 () Bool)

(assert (=> d!13981 e!13345))

(declare-fun res!11838 () Bool)

(assert (=> d!13981 (=> (not res!11838) (not e!13345))))

(declare-fun e!13344 () Bool)

(assert (=> d!13981 (= res!11838 e!13344)))

(declare-fun res!11835 () Bool)

(assert (=> d!13981 (=> res!11835 e!13344)))

(assert (=> d!13981 (= res!11835 (not (is-CC!60 xs!533)))))

(assert (=> d!13981 (= (appendAssocInst!10 xs!533 ys!77) true)))

(declare-fun b!26000 () Bool)

(declare-fun e!13341 () Bool)

(declare-fun appendAssoc!6 (List!358 List!358 List!358) Bool)

(assert (=> b!26000 (= e!13341 (appendAssoc!6 (++!38 (toList!113 xs!533) (toList!113 (left!705 (left!705 ys!77)))) (toList!113 (right!708 (left!705 ys!77))) (toList!113 (right!708 ys!77))))))

(declare-fun b!26001 () Bool)

(declare-fun e!13343 () Bool)

(declare-fun e!13347 () Bool)

(assert (=> b!26001 (= e!13343 e!13347)))

(declare-fun res!11837 () Bool)

(assert (=> b!26001 (=> res!11837 e!13347)))

(assert (=> b!26001 (= res!11837 (not (is-CC!60 (left!705 ys!77))))))

(declare-fun b!26002 () Bool)

(declare-fun e!13339 () Bool)

(assert (=> b!26002 (= e!13344 e!13339)))

(declare-fun res!11834 () Bool)

(assert (=> b!26002 (=> (not res!11834) (not e!13339))))

(assert (=> b!26002 (= res!11834 (appendAssoc!6 (toList!113 (left!705 xs!533)) (toList!113 (right!708 xs!533)) (toList!113 ys!77)))))

(declare-fun b!26003 () Bool)

(assert (=> b!26003 (= e!13347 e!13341)))

(declare-fun res!11830 () Bool)

(assert (=> b!26003 (=> (not res!11830) (not e!13341))))

(assert (=> b!26003 (= res!11830 (appendAssoc!6 (toList!113 xs!533) (toList!113 (left!705 (left!705 ys!77))) (toList!113 (right!708 (left!705 ys!77)))))))

(declare-fun b!26004 () Bool)

(declare-fun e!13340 () Bool)

(declare-fun e!13342 () Bool)

(assert (=> b!26004 (= e!13340 e!13342)))

(declare-fun res!11832 () Bool)

(assert (=> b!26004 (=> (not res!11832) (not e!13342))))

(assert (=> b!26004 (= res!11832 (appendAssoc!6 (toList!113 (left!705 (right!708 xs!533))) (toList!113 (right!708 (right!708 xs!533))) (toList!113 ys!77)))))

(declare-fun b!26005 () Bool)

(declare-fun e!13346 () Bool)

(assert (=> b!26005 (= e!13346 e!13343)))

(declare-fun res!11836 () Bool)

(assert (=> b!26005 (=> (not res!11836) (not e!13343))))

(assert (=> b!26005 (= res!11836 (appendAssoc!6 (toList!113 xs!533) (toList!113 (left!705 ys!77)) (toList!113 (right!708 ys!77))))))

(declare-fun b!26006 () Bool)

(assert (=> b!26006 (= e!13342 (appendAssoc!6 (toList!113 (left!705 xs!533)) (toList!113 (left!705 (right!708 xs!533))) (++!38 (toList!113 (right!708 (right!708 xs!533))) (toList!113 ys!77))))))

(declare-fun b!26007 () Bool)

(assert (=> b!26007 (= e!13345 e!13346)))

(declare-fun res!11831 () Bool)

(assert (=> b!26007 (=> res!11831 e!13346)))

(assert (=> b!26007 (= res!11831 (not (is-CC!60 ys!77)))))

(declare-fun b!26008 () Bool)

(assert (=> b!26008 (= e!13339 e!13340)))

(declare-fun res!11833 () Bool)

(assert (=> b!26008 (=> res!11833 e!13340)))

(assert (=> b!26008 (= res!11833 (not (is-CC!60 (right!708 xs!533))))))

(assert (= (and d!13981 (not res!11835)) b!26002))

(assert (= (and b!26002 res!11834) b!26008))

(assert (= (and b!26008 (not res!11833)) b!26004))

(assert (= (and b!26004 res!11832) b!26006))

(assert (= (and d!13981 res!11838) b!26007))

(assert (= (and b!26007 (not res!11831)) b!26005))

(assert (= (and b!26005 res!11836) b!26001))

(assert (= (and b!26001 (not res!11837)) b!26003))

(assert (= (and b!26003 res!11830) b!26000))

(declare-fun m!26897 () Bool)

(assert (=> b!26000 m!26897))

(declare-fun m!26899 () Bool)

(assert (=> b!26000 m!26899))

(declare-fun m!26901 () Bool)

(assert (=> b!26000 m!26901))

(declare-fun m!26903 () Bool)

(assert (=> b!26000 m!26903))

(declare-fun m!26905 () Bool)

(assert (=> b!26000 m!26905))

(assert (=> b!26000 m!26901))

(assert (=> b!26000 m!26899))

(assert (=> b!26000 m!26867))

(assert (=> b!26000 m!26867))

(assert (=> b!26000 m!26905))

(assert (=> b!26000 m!26897))

(declare-fun m!26907 () Bool)

(assert (=> b!26002 m!26907))

(declare-fun m!26909 () Bool)

(assert (=> b!26002 m!26909))

(assert (=> b!26002 m!26869))

(assert (=> b!26002 m!26907))

(assert (=> b!26002 m!26909))

(assert (=> b!26002 m!26869))

(declare-fun m!26911 () Bool)

(assert (=> b!26002 m!26911))

(assert (=> b!26006 m!26907))

(declare-fun m!26913 () Bool)

(assert (=> b!26006 m!26913))

(declare-fun m!26915 () Bool)

(assert (=> b!26006 m!26915))

(declare-fun m!26917 () Bool)

(assert (=> b!26006 m!26917))

(assert (=> b!26006 m!26869))

(assert (=> b!26006 m!26907))

(declare-fun m!26919 () Bool)

(assert (=> b!26006 m!26919))

(assert (=> b!26006 m!26869))

(assert (=> b!26006 m!26915))

(assert (=> b!26006 m!26913))

(assert (=> b!26006 m!26919))

(assert (=> b!26005 m!26867))

(declare-fun m!26921 () Bool)

(assert (=> b!26005 m!26921))

(assert (=> b!26005 m!26901))

(assert (=> b!26005 m!26867))

(assert (=> b!26005 m!26921))

(assert (=> b!26005 m!26901))

(declare-fun m!26923 () Bool)

(assert (=> b!26005 m!26923))

(assert (=> b!26003 m!26867))

(assert (=> b!26003 m!26905))

(assert (=> b!26003 m!26899))

(assert (=> b!26003 m!26867))

(assert (=> b!26003 m!26905))

(assert (=> b!26003 m!26899))

(declare-fun m!26925 () Bool)

(assert (=> b!26003 m!26925))

(assert (=> b!26004 m!26913))

(assert (=> b!26004 m!26919))

(assert (=> b!26004 m!26869))

(assert (=> b!26004 m!26913))

(assert (=> b!26004 m!26919))

(assert (=> b!26004 m!26869))

(declare-fun m!26927 () Bool)

(assert (=> b!26004 m!26927))

(assert (=> b!25917 d!13981))

(declare-fun b!26015 () Bool)

(declare-fun e!13350 () Bool)

(declare-fun tp!5708 () Bool)

(declare-fun tp!5709 () Bool)

(assert (=> b!26015 (= e!13350 (and tp!5708 tp!5709))))

(declare-fun b!26016 () Bool)

(assert (=> b!26016 (= e!13350 tp_is_empty!167)))

(assert (=> b!25923 (= tp!5698 e!13350)))

(assert (= (and b!25923 (is-CC!60 (left!705 ys!77))) b!26015))

(assert (= (and b!25923 (is-Single!60 (left!705 ys!77))) b!26016))

(declare-fun b!26017 () Bool)

(declare-fun e!13351 () Bool)

(declare-fun tp!5710 () Bool)

(declare-fun tp!5711 () Bool)

(assert (=> b!26017 (= e!13351 (and tp!5710 tp!5711))))

(declare-fun b!26018 () Bool)

(assert (=> b!26018 (= e!13351 tp_is_empty!167)))

(assert (=> b!25923 (= tp!5700 e!13351)))

(assert (= (and b!25923 (is-CC!60 (right!708 ys!77))) b!26017))

(assert (= (and b!25923 (is-Single!60 (right!708 ys!77))) b!26018))

(declare-fun b!26019 () Bool)

(declare-fun e!13352 () Bool)

(declare-fun tp!5712 () Bool)

(declare-fun tp!5713 () Bool)

(assert (=> b!26019 (= e!13352 (and tp!5712 tp!5713))))

(declare-fun b!26020 () Bool)

(assert (=> b!26020 (= e!13352 tp_is_empty!167)))

(assert (=> b!25922 (= tp!5703 e!13352)))

(assert (= (and b!25922 (is-CC!60 (left!705 res!5525))) b!26019))

(assert (= (and b!25922 (is-Single!60 (left!705 res!5525))) b!26020))

(declare-fun b!26021 () Bool)

(declare-fun e!13353 () Bool)

(declare-fun tp!5714 () Bool)

(declare-fun tp!5715 () Bool)

(assert (=> b!26021 (= e!13353 (and tp!5714 tp!5715))))

(declare-fun b!26022 () Bool)

(assert (=> b!26022 (= e!13353 tp_is_empty!167)))

(assert (=> b!25922 (= tp!5701 e!13353)))

(assert (= (and b!25922 (is-CC!60 (right!708 res!5525))) b!26021))

(assert (= (and b!25922 (is-Single!60 (right!708 res!5525))) b!26022))

(declare-fun b!26023 () Bool)

(declare-fun e!13354 () Bool)

(declare-fun tp!5716 () Bool)

(declare-fun tp!5717 () Bool)

(assert (=> b!26023 (= e!13354 (and tp!5716 tp!5717))))

(declare-fun b!26024 () Bool)

(assert (=> b!26024 (= e!13354 tp_is_empty!167)))

(assert (=> b!25914 (= tp!5699 e!13354)))

(assert (= (and b!25914 (is-CC!60 (left!705 xs!533))) b!26023))

(assert (= (and b!25914 (is-Single!60 (left!705 xs!533))) b!26024))

(declare-fun b!26025 () Bool)

(declare-fun e!13355 () Bool)

(declare-fun tp!5718 () Bool)

(declare-fun tp!5719 () Bool)

(assert (=> b!26025 (= e!13355 (and tp!5718 tp!5719))))

(declare-fun b!26026 () Bool)

(assert (=> b!26026 (= e!13355 tp_is_empty!167)))

(assert (=> b!25914 (= tp!5702 e!13355)))

(assert (= (and b!25914 (is-CC!60 (right!708 xs!533))) b!26025))

(assert (= (and b!25914 (is-Single!60 (right!708 xs!533))) b!26026))

(push 1)

(assert (not b!25972))

(assert (not b!26002))

(assert (not b!26005))

(assert (not b!25951))

(assert (not b!25965))

(assert (not b!25939))

(assert (not b!25941))

(assert (not b!25973))

(assert (not d!13969))

(assert (not b!26000))

(assert (not b!25971))

(assert (not b!26025))

(assert (not b!25962))

(assert (not b!25975))

(assert (not b!25981))

(assert (not b!25953))

(assert (not b!25974))

(assert (not b!25968))

(assert (not b!26017))

(assert (not b!25978))

(assert (not b!26021))

(assert (not b!26019))

(assert (not b!26015))

(assert (not b!25952))

(assert (not b!25963))

(assert (not b!25969))

(assert (not b!25937))

(assert (not b!25966))

(assert (not b!25977))

(assert (not b!25976))

(assert (not b!25950))

(assert (not b!25980))

(assert (not b!25970))

(assert tp_is_empty!167)

(assert (not b!26023))

(assert (not b!26006))

(assert (not b!25964))

(assert (not b!25979))

(assert (not b!26003))

(assert (not b!26004))

(assert (not b!25967))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13983 () Bool)

(assert (=> d!13983 (= (isEmpty!317 (right!708 res!5525)) (= (right!708 res!5525) Empty!71))))

(assert (=> b!25975 d!13983))

(declare-fun b!26029 () Bool)

(declare-fun res!11840 () Bool)

(declare-fun e!13357 () Bool)

(assert (=> b!26029 (=> (not res!11840) (not e!13357))))

(assert (=> b!26029 (= res!11840 (balanced!56 (left!705 (right!708 res!5525))))))

(declare-fun d!13985 () Bool)

(declare-fun res!11842 () Bool)

(declare-fun e!13356 () Bool)

(assert (=> d!13985 (=> res!11842 e!13356)))

(assert (=> d!13985 (= res!11842 (not (is-CC!60 (right!708 res!5525))))))

(assert (=> d!13985 (= (balanced!56 (right!708 res!5525)) e!13356)))

(declare-fun b!26027 () Bool)

(assert (=> b!26027 (= e!13356 e!13357)))

(declare-fun res!11841 () Bool)

(assert (=> b!26027 (=> (not res!11841) (not e!13357))))

(assert (=> b!26027 (= res!11841 (>= (- (level!49 (left!705 (right!708 res!5525))) (level!49 (right!708 (right!708 res!5525)))) (- 1)))))

(declare-fun b!26030 () Bool)

(assert (=> b!26030 (= e!13357 (balanced!56 (right!708 (right!708 res!5525))))))

(declare-fun b!26028 () Bool)

(declare-fun res!11839 () Bool)

(assert (=> b!26028 (=> (not res!11839) (not e!13357))))

(assert (=> b!26028 (= res!11839 (<= (- (level!49 (left!705 (right!708 res!5525))) (level!49 (right!708 (right!708 res!5525)))) 1))))

(assert (= (and d!13985 (not res!11842)) b!26027))

(assert (= (and b!26027 res!11841) b!26028))

(assert (= (and b!26028 res!11839) b!26029))

(assert (= (and b!26029 res!11840) b!26030))

(declare-fun m!26929 () Bool)

(assert (=> b!26029 m!26929))

(declare-fun m!26931 () Bool)

(assert (=> b!26027 m!26931))

(declare-fun m!26933 () Bool)

(assert (=> b!26027 m!26933))

(declare-fun m!26935 () Bool)

(assert (=> b!26030 m!26935))

(assert (=> b!26028 m!26931))

(assert (=> b!26028 m!26933))

(assert (=> b!25969 d!13985))

(declare-fun d!13987 () Bool)

(assert (=> d!13987 (= (isEmpty!317 (left!705 res!5525)) (= (left!705 res!5525) Empty!71))))

(assert (=> b!25974 d!13987))

(declare-fun b!26033 () Bool)

(declare-fun res!11844 () Bool)

(declare-fun e!13359 () Bool)

(assert (=> b!26033 (=> (not res!11844) (not e!13359))))

(assert (=> b!26033 (= res!11844 (balanced!56 (left!705 (left!705 ys!77))))))

(declare-fun d!13989 () Bool)

(declare-fun res!11846 () Bool)

(declare-fun e!13358 () Bool)

(assert (=> d!13989 (=> res!11846 e!13358)))

(assert (=> d!13989 (= res!11846 (not (is-CC!60 (left!705 ys!77))))))

(assert (=> d!13989 (= (balanced!56 (left!705 ys!77)) e!13358)))

(declare-fun b!26031 () Bool)

(assert (=> b!26031 (= e!13358 e!13359)))

(declare-fun res!11845 () Bool)

(assert (=> b!26031 (=> (not res!11845) (not e!13359))))

(assert (=> b!26031 (= res!11845 (>= (- (level!49 (left!705 (left!705 ys!77))) (level!49 (right!708 (left!705 ys!77)))) (- 1)))))

(declare-fun b!26034 () Bool)

(assert (=> b!26034 (= e!13359 (balanced!56 (right!708 (left!705 ys!77))))))

(declare-fun b!26032 () Bool)

(declare-fun res!11843 () Bool)

(assert (=> b!26032 (=> (not res!11843) (not e!13359))))

(assert (=> b!26032 (= res!11843 (<= (- (level!49 (left!705 (left!705 ys!77))) (level!49 (right!708 (left!705 ys!77)))) 1))))

(assert (= (and d!13989 (not res!11846)) b!26031))

(assert (= (and b!26031 res!11845) b!26032))

(assert (= (and b!26032 res!11843) b!26033))

(assert (= (and b!26033 res!11844) b!26034))

(declare-fun m!26937 () Bool)

(assert (=> b!26033 m!26937))

(declare-fun m!26939 () Bool)

(assert (=> b!26031 m!26939))

(declare-fun m!26941 () Bool)

(assert (=> b!26031 m!26941))

(declare-fun m!26943 () Bool)

(assert (=> b!26034 m!26943))

(assert (=> b!26032 m!26939))

(assert (=> b!26032 m!26941))

(assert (=> b!25980 d!13989))

(declare-fun b!26037 () Bool)

(declare-fun res!11848 () Bool)

(declare-fun e!13361 () Bool)

(assert (=> b!26037 (=> (not res!11848) (not e!13361))))

(assert (=> b!26037 (= res!11848 (balanced!56 (left!705 (left!705 xs!533))))))

(declare-fun d!13991 () Bool)

(declare-fun res!11850 () Bool)

(declare-fun e!13360 () Bool)

(assert (=> d!13991 (=> res!11850 e!13360)))

(assert (=> d!13991 (= res!11850 (not (is-CC!60 (left!705 xs!533))))))

(assert (=> d!13991 (= (balanced!56 (left!705 xs!533)) e!13360)))

(declare-fun b!26035 () Bool)

(assert (=> b!26035 (= e!13360 e!13361)))

(declare-fun res!11849 () Bool)

(assert (=> b!26035 (=> (not res!11849) (not e!13361))))

(assert (=> b!26035 (= res!11849 (>= (- (level!49 (left!705 (left!705 xs!533))) (level!49 (right!708 (left!705 xs!533)))) (- 1)))))

(declare-fun b!26038 () Bool)

(assert (=> b!26038 (= e!13361 (balanced!56 (right!708 (left!705 xs!533))))))

(declare-fun b!26036 () Bool)

(declare-fun res!11847 () Bool)

(assert (=> b!26036 (=> (not res!11847) (not e!13361))))

(assert (=> b!26036 (= res!11847 (<= (- (level!49 (left!705 (left!705 xs!533))) (level!49 (right!708 (left!705 xs!533)))) 1))))

(assert (= (and d!13991 (not res!11850)) b!26035))

(assert (= (and b!26035 res!11849) b!26036))

(assert (= (and b!26036 res!11847) b!26037))

(assert (= (and b!26037 res!11848) b!26038))

(declare-fun m!26945 () Bool)

(assert (=> b!26037 m!26945))

(declare-fun m!26947 () Bool)

(assert (=> b!26035 m!26947))

(declare-fun m!26949 () Bool)

(assert (=> b!26035 m!26949))

(declare-fun m!26951 () Bool)

(assert (=> b!26038 m!26951))

(assert (=> b!26036 m!26947))

(assert (=> b!26036 m!26949))

(assert (=> b!25952 d!13991))

(declare-fun b!26040 () Bool)

(declare-fun e!13362 () Int)

(declare-fun lt!4119 () Int)

(declare-fun lt!4118 () Int)

(assert (=> b!26040 (= e!13362 (+ 1 (ite (>= lt!4119 lt!4118) lt!4119 lt!4118)))))

(assert (=> b!26040 (= lt!4118 (level!49 (right!708 (left!705 ys!77))))))

(assert (=> b!26040 (= lt!4119 (level!49 (left!705 (left!705 ys!77))))))

(declare-fun d!13993 () Bool)

(declare-fun lt!4117 () Int)

(assert (=> d!13993 (>= lt!4117 0)))

(assert (=> d!13993 (= lt!4117 e!13362)))

(declare-fun c!5753 () Bool)

(assert (=> d!13993 (= c!5753 (or (is-Empty!71 (left!705 ys!77)) (is-Single!60 (left!705 ys!77))))))

(assert (=> d!13993 (= (level!49 (left!705 ys!77)) lt!4117)))

(declare-fun b!26039 () Bool)

(assert (=> b!26039 (= e!13362 0)))

(assert (= (and d!13993 c!5753) b!26039))

(assert (= (and d!13993 (not c!5753)) b!26040))

(assert (=> b!26040 m!26941))

(assert (=> b!26040 m!26939))

(assert (=> b!25978 d!13993))

(declare-fun b!26042 () Bool)

(declare-fun e!13363 () Int)

(declare-fun lt!4122 () Int)

(declare-fun lt!4121 () Int)

(assert (=> b!26042 (= e!13363 (+ 1 (ite (>= lt!4122 lt!4121) lt!4122 lt!4121)))))

(assert (=> b!26042 (= lt!4121 (level!49 (right!708 (right!708 ys!77))))))

(assert (=> b!26042 (= lt!4122 (level!49 (left!705 (right!708 ys!77))))))

(declare-fun d!13995 () Bool)

(declare-fun lt!4120 () Int)

(assert (=> d!13995 (>= lt!4120 0)))

(assert (=> d!13995 (= lt!4120 e!13363)))

(declare-fun c!5754 () Bool)

(assert (=> d!13995 (= c!5754 (or (is-Empty!71 (right!708 ys!77)) (is-Single!60 (right!708 ys!77))))))

(assert (=> d!13995 (= (level!49 (right!708 ys!77)) lt!4120)))

(declare-fun b!26041 () Bool)

(assert (=> b!26041 (= e!13363 0)))

(assert (= (and d!13995 c!5754) b!26041))

(assert (= (and d!13995 (not c!5754)) b!26042))

(declare-fun m!26953 () Bool)

(assert (=> b!26042 m!26953))

(declare-fun m!26955 () Bool)

(assert (=> b!26042 m!26955))

(assert (=> b!25978 d!13995))

(declare-fun d!13997 () Bool)

(assert (=> d!13997 (= (isEmpty!317 (right!708 ys!77)) (= (right!708 ys!77) Empty!71))))

(assert (=> b!25971 d!13997))

(declare-fun b!26047 () Bool)

(declare-fun e!13366 () Bool)

(assert (=> b!26047 (= e!13366 (= (++!38 (++!38 (toList!113 xs!533) (toList!113 (left!705 ys!77))) (toList!113 (right!708 ys!77))) (++!38 (toList!113 xs!533) (++!38 (toList!113 (left!705 ys!77)) (toList!113 (right!708 ys!77))))))))

(declare-fun lt!4125 () Bool)

(assert (=> b!26047 (= lt!4125 (appendAssoc!6 (t!4372 (toList!113 xs!533)) (toList!113 (left!705 ys!77)) (toList!113 (right!708 ys!77))))))

(declare-fun d!13999 () Bool)

(assert (=> d!13999 e!13366))

(declare-fun c!5757 () Bool)

(assert (=> d!13999 (= c!5757 (is-Cons!352 (toList!113 xs!533)))))

(assert (=> d!13999 (= (appendAssoc!6 (toList!113 xs!533) (toList!113 (left!705 ys!77)) (toList!113 (right!708 ys!77))) true)))

(declare-fun b!26048 () Bool)

(assert (=> b!26048 (= e!13366 (= (++!38 (++!38 (toList!113 xs!533) (toList!113 (left!705 ys!77))) (toList!113 (right!708 ys!77))) (++!38 (toList!113 xs!533) (++!38 (toList!113 (left!705 ys!77)) (toList!113 (right!708 ys!77))))))))

(assert (= (and d!13999 c!5757) b!26047))

(assert (= (and d!13999 (not c!5757)) b!26048))

(assert (=> b!26047 m!26867))

(declare-fun m!26957 () Bool)

(assert (=> b!26047 m!26957))

(declare-fun m!26959 () Bool)

(assert (=> b!26047 m!26959))

(declare-fun m!26961 () Bool)

(assert (=> b!26047 m!26961))

(assert (=> b!26047 m!26901))

(declare-fun m!26963 () Bool)

(assert (=> b!26047 m!26963))

(assert (=> b!26047 m!26867))

(assert (=> b!26047 m!26921))

(assert (=> b!26047 m!26961))

(assert (=> b!26047 m!26921))

(assert (=> b!26047 m!26901))

(assert (=> b!26047 m!26957))

(assert (=> b!26047 m!26921))

(assert (=> b!26047 m!26901))

(declare-fun m!26965 () Bool)

(assert (=> b!26047 m!26965))

(assert (=> b!26048 m!26867))

(assert (=> b!26048 m!26921))

(assert (=> b!26048 m!26961))

(assert (=> b!26048 m!26961))

(assert (=> b!26048 m!26901))

(assert (=> b!26048 m!26963))

(assert (=> b!26048 m!26921))

(assert (=> b!26048 m!26901))

(assert (=> b!26048 m!26957))

(assert (=> b!26048 m!26867))

(assert (=> b!26048 m!26957))

(assert (=> b!26048 m!26959))

(assert (=> b!26005 d!13999))

(declare-fun b!26057 () Bool)

(declare-fun e!13372 () List!358)

(assert (=> b!26057 (= e!13372 Nil!353)))

(declare-fun d!14001 () Bool)

(declare-fun lt!4128 () List!358)

(declare-fun size!265 (List!358) Int)

(declare-fun size!266 (Conc!61) Int)

(assert (=> d!14001 (= (size!265 lt!4128) (size!266 xs!533))))

(assert (=> d!14001 (= lt!4128 e!13372)))

(declare-fun c!5762 () Bool)

(assert (=> d!14001 (= c!5762 (is-Empty!71 xs!533))))

(assert (=> d!14001 (= (toList!113 xs!533) lt!4128)))

(declare-fun b!26059 () Bool)

(declare-fun e!13371 () List!358)

(assert (=> b!26059 (= e!13371 (Cons!352 (x!8911 xs!533) Nil!353))))

(declare-fun b!26060 () Bool)

(assert (=> b!26060 (= e!13371 (++!38 (toList!113 (left!705 xs!533)) (toList!113 (right!708 xs!533))))))

(declare-fun b!26058 () Bool)

(assert (=> b!26058 (= e!13372 e!13371)))

(declare-fun c!5763 () Bool)

(assert (=> b!26058 (= c!5763 (is-Single!60 xs!533))))

(assert (= (and b!26058 c!5763) b!26059))

(assert (= (and b!26058 (not c!5763)) b!26060))

(assert (= (and d!14001 c!5762) b!26057))

(assert (= (and d!14001 (not c!5762)) b!26058))

(declare-fun m!26967 () Bool)

(assert (=> d!14001 m!26967))

(declare-fun m!26969 () Bool)

(assert (=> d!14001 m!26969))

(assert (=> b!26060 m!26907))

(assert (=> b!26060 m!26909))

(assert (=> b!26060 m!26907))

(assert (=> b!26060 m!26909))

(declare-fun m!26971 () Bool)

(assert (=> b!26060 m!26971))

(assert (=> b!26005 d!14001))

(declare-fun b!26061 () Bool)

(declare-fun e!13374 () List!358)

(assert (=> b!26061 (= e!13374 Nil!353)))

(declare-fun d!14003 () Bool)

(declare-fun lt!4129 () List!358)

(assert (=> d!14003 (= (size!265 lt!4129) (size!266 (left!705 ys!77)))))

(assert (=> d!14003 (= lt!4129 e!13374)))

(declare-fun c!5764 () Bool)

(assert (=> d!14003 (= c!5764 (is-Empty!71 (left!705 ys!77)))))

(assert (=> d!14003 (= (toList!113 (left!705 ys!77)) lt!4129)))

(declare-fun b!26063 () Bool)

(declare-fun e!13373 () List!358)

(assert (=> b!26063 (= e!13373 (Cons!352 (x!8911 (left!705 ys!77)) Nil!353))))

(declare-fun b!26064 () Bool)

(assert (=> b!26064 (= e!13373 (++!38 (toList!113 (left!705 (left!705 ys!77))) (toList!113 (right!708 (left!705 ys!77)))))))

(declare-fun b!26062 () Bool)

(assert (=> b!26062 (= e!13374 e!13373)))

(declare-fun c!5765 () Bool)

(assert (=> b!26062 (= c!5765 (is-Single!60 (left!705 ys!77)))))

(assert (= (and b!26062 c!5765) b!26063))

(assert (= (and b!26062 (not c!5765)) b!26064))

(assert (= (and d!14003 c!5764) b!26061))

(assert (= (and d!14003 (not c!5764)) b!26062))

(declare-fun m!26973 () Bool)

(assert (=> d!14003 m!26973))

(declare-fun m!26975 () Bool)

(assert (=> d!14003 m!26975))

(assert (=> b!26064 m!26905))

(assert (=> b!26064 m!26899))

(assert (=> b!26064 m!26905))

(assert (=> b!26064 m!26899))

(declare-fun m!26977 () Bool)

(assert (=> b!26064 m!26977))

(assert (=> b!26005 d!14003))

(declare-fun b!26065 () Bool)

(declare-fun e!13376 () List!358)

(assert (=> b!26065 (= e!13376 Nil!353)))

(declare-fun d!14005 () Bool)

(declare-fun lt!4130 () List!358)

(assert (=> d!14005 (= (size!265 lt!4130) (size!266 (right!708 ys!77)))))

(assert (=> d!14005 (= lt!4130 e!13376)))

(declare-fun c!5766 () Bool)

(assert (=> d!14005 (= c!5766 (is-Empty!71 (right!708 ys!77)))))

(assert (=> d!14005 (= (toList!113 (right!708 ys!77)) lt!4130)))

(declare-fun b!26067 () Bool)

(declare-fun e!13375 () List!358)

(assert (=> b!26067 (= e!13375 (Cons!352 (x!8911 (right!708 ys!77)) Nil!353))))

(declare-fun b!26068 () Bool)

(assert (=> b!26068 (= e!13375 (++!38 (toList!113 (left!705 (right!708 ys!77))) (toList!113 (right!708 (right!708 ys!77)))))))

(declare-fun b!26066 () Bool)

(assert (=> b!26066 (= e!13376 e!13375)))

(declare-fun c!5767 () Bool)

(assert (=> b!26066 (= c!5767 (is-Single!60 (right!708 ys!77)))))

(assert (= (and b!26066 c!5767) b!26067))

(assert (= (and b!26066 (not c!5767)) b!26068))

(assert (= (and d!14005 c!5766) b!26065))

(assert (= (and d!14005 (not c!5766)) b!26066))

(declare-fun m!26979 () Bool)

(assert (=> d!14005 m!26979))

(declare-fun m!26981 () Bool)

(assert (=> d!14005 m!26981))

(declare-fun m!26983 () Bool)

(assert (=> b!26068 m!26983))

(declare-fun m!26985 () Bool)

(assert (=> b!26068 m!26985))

(assert (=> b!26068 m!26983))

(assert (=> b!26068 m!26985))

(declare-fun m!26987 () Bool)

(assert (=> b!26068 m!26987))

(assert (=> b!26005 d!14005))

(declare-fun b!26070 () Bool)

(declare-fun e!13377 () Int)

(declare-fun lt!4133 () Int)

(declare-fun lt!4132 () Int)

(assert (=> b!26070 (= e!13377 (+ 1 (ite (>= lt!4133 lt!4132) lt!4133 lt!4132)))))

(assert (=> b!26070 (= lt!4132 (level!49 (right!708 (left!705 res!5525))))))

(assert (=> b!26070 (= lt!4133 (level!49 (left!705 (left!705 res!5525))))))

(declare-fun d!14007 () Bool)

(declare-fun lt!4131 () Int)

(assert (=> d!14007 (>= lt!4131 0)))

(assert (=> d!14007 (= lt!4131 e!13377)))

(declare-fun c!5768 () Bool)

(assert (=> d!14007 (= c!5768 (or (is-Empty!71 (left!705 res!5525)) (is-Single!60 (left!705 res!5525))))))

(assert (=> d!14007 (= (level!49 (left!705 res!5525)) lt!4131)))

(declare-fun b!26069 () Bool)

(assert (=> b!26069 (= e!13377 0)))

(assert (= (and d!14007 c!5768) b!26069))

(assert (= (and d!14007 (not c!5768)) b!26070))

(declare-fun m!26989 () Bool)

(assert (=> b!26070 m!26989))

(declare-fun m!26991 () Bool)

(assert (=> b!26070 m!26991))

(assert (=> b!25966 d!14007))

(declare-fun b!26072 () Bool)

(declare-fun e!13378 () Int)

(declare-fun lt!4136 () Int)

(declare-fun lt!4135 () Int)

(assert (=> b!26072 (= e!13378 (+ 1 (ite (>= lt!4136 lt!4135) lt!4136 lt!4135)))))

(assert (=> b!26072 (= lt!4135 (level!49 (right!708 (right!708 res!5525))))))

(assert (=> b!26072 (= lt!4136 (level!49 (left!705 (right!708 res!5525))))))

(declare-fun d!14009 () Bool)

(declare-fun lt!4134 () Int)

(assert (=> d!14009 (>= lt!4134 0)))

(assert (=> d!14009 (= lt!4134 e!13378)))

(declare-fun c!5769 () Bool)

(assert (=> d!14009 (= c!5769 (or (is-Empty!71 (right!708 res!5525)) (is-Single!60 (right!708 res!5525))))))

(assert (=> d!14009 (= (level!49 (right!708 res!5525)) lt!4134)))

(declare-fun b!26071 () Bool)

(assert (=> b!26071 (= e!13378 0)))

(assert (= (and d!14009 c!5769) b!26071))

(assert (= (and d!14009 (not c!5769)) b!26072))

(assert (=> b!26072 m!26933))

(assert (=> b!26072 m!26931))

(assert (=> b!25966 d!14009))

(declare-fun b!26073 () Bool)

(declare-fun e!13380 () List!358)

(assert (=> b!26073 (= e!13380 Nil!353)))

(declare-fun d!14011 () Bool)

(declare-fun lt!4137 () List!358)

(assert (=> d!14011 (= (size!265 lt!4137) (size!266 (left!705 (left!705 ys!77))))))

(assert (=> d!14011 (= lt!4137 e!13380)))

(declare-fun c!5770 () Bool)

(assert (=> d!14011 (= c!5770 (is-Empty!71 (left!705 (left!705 ys!77))))))

(assert (=> d!14011 (= (toList!113 (left!705 (left!705 ys!77))) lt!4137)))

(declare-fun b!26075 () Bool)

(declare-fun e!13379 () List!358)

(assert (=> b!26075 (= e!13379 (Cons!352 (x!8911 (left!705 (left!705 ys!77))) Nil!353))))

(declare-fun b!26076 () Bool)

(assert (=> b!26076 (= e!13379 (++!38 (toList!113 (left!705 (left!705 (left!705 ys!77)))) (toList!113 (right!708 (left!705 (left!705 ys!77))))))))

(declare-fun b!26074 () Bool)

(assert (=> b!26074 (= e!13380 e!13379)))

(declare-fun c!5771 () Bool)

(assert (=> b!26074 (= c!5771 (is-Single!60 (left!705 (left!705 ys!77))))))

(assert (= (and b!26074 c!5771) b!26075))

(assert (= (and b!26074 (not c!5771)) b!26076))

(assert (= (and d!14011 c!5770) b!26073))

(assert (= (and d!14011 (not c!5770)) b!26074))

(declare-fun m!26993 () Bool)

(assert (=> d!14011 m!26993))

(declare-fun m!26995 () Bool)

(assert (=> d!14011 m!26995))

(declare-fun m!26997 () Bool)

(assert (=> b!26076 m!26997))

(declare-fun m!26999 () Bool)

(assert (=> b!26076 m!26999))

(assert (=> b!26076 m!26997))

(assert (=> b!26076 m!26999))

(declare-fun m!27001 () Bool)

(assert (=> b!26076 m!27001))

(assert (=> b!26000 d!14011))

(assert (=> b!26000 d!14005))

(declare-fun b!26077 () Bool)

(declare-fun e!13382 () List!358)

(assert (=> b!26077 (= e!13382 Nil!353)))

(declare-fun d!14013 () Bool)

(declare-fun lt!4138 () List!358)

(assert (=> d!14013 (= (size!265 lt!4138) (size!266 (right!708 (left!705 ys!77))))))

(assert (=> d!14013 (= lt!4138 e!13382)))

(declare-fun c!5772 () Bool)

(assert (=> d!14013 (= c!5772 (is-Empty!71 (right!708 (left!705 ys!77))))))

(assert (=> d!14013 (= (toList!113 (right!708 (left!705 ys!77))) lt!4138)))

(declare-fun b!26079 () Bool)

(declare-fun e!13381 () List!358)

(assert (=> b!26079 (= e!13381 (Cons!352 (x!8911 (right!708 (left!705 ys!77))) Nil!353))))

(declare-fun b!26080 () Bool)

(assert (=> b!26080 (= e!13381 (++!38 (toList!113 (left!705 (right!708 (left!705 ys!77)))) (toList!113 (right!708 (right!708 (left!705 ys!77))))))))

(declare-fun b!26078 () Bool)

(assert (=> b!26078 (= e!13382 e!13381)))

(declare-fun c!5773 () Bool)

(assert (=> b!26078 (= c!5773 (is-Single!60 (right!708 (left!705 ys!77))))))

(assert (= (and b!26078 c!5773) b!26079))

(assert (= (and b!26078 (not c!5773)) b!26080))

(assert (= (and d!14013 c!5772) b!26077))

(assert (= (and d!14013 (not c!5772)) b!26078))

(declare-fun m!27003 () Bool)

(assert (=> d!14013 m!27003))

(declare-fun m!27005 () Bool)

(assert (=> d!14013 m!27005))

(declare-fun m!27007 () Bool)

(assert (=> b!26080 m!27007))

(declare-fun m!27009 () Bool)

(assert (=> b!26080 m!27009))

(assert (=> b!26080 m!27007))

(assert (=> b!26080 m!27009))

(declare-fun m!27011 () Bool)

(assert (=> b!26080 m!27011))

(assert (=> b!26000 d!14013))

(assert (=> b!26000 d!14001))

(declare-fun d!14015 () Bool)

(declare-fun e!13388 () Bool)

(assert (=> d!14015 e!13388))

(declare-fun res!11857 () Bool)

(assert (=> d!14015 (=> (not res!11857) (not e!13388))))

(declare-fun lt!4141 () List!358)

(declare-fun content!68 (List!358) (Set T!1823))

(assert (=> d!14015 (= res!11857 (= (content!68 lt!4141) (union (content!68 (toList!113 xs!533)) (content!68 (toList!113 (left!705 (left!705 ys!77)))))))))

(declare-fun e!13387 () List!358)

(assert (=> d!14015 (= lt!4141 e!13387)))

(declare-fun c!5776 () Bool)

(assert (=> d!14015 (= c!5776 (is-Nil!353 (toList!113 xs!533)))))

(assert (=> d!14015 (= (++!38 (toList!113 xs!533) (toList!113 (left!705 (left!705 ys!77)))) lt!4141)))

(declare-fun b!26091 () Bool)

(declare-fun res!11858 () Bool)

(assert (=> b!26091 (=> (not res!11858) (not e!13388))))

(assert (=> b!26091 (= res!11858 (= (size!265 lt!4141) (+ (size!265 (toList!113 xs!533)) (size!265 (toList!113 (left!705 (left!705 ys!77)))))))))

(declare-fun b!26090 () Bool)

(assert (=> b!26090 (= e!13387 (Cons!352 (h!269 (toList!113 xs!533)) (++!38 (t!4372 (toList!113 xs!533)) (toList!113 (left!705 (left!705 ys!77))))))))

(declare-fun b!26089 () Bool)

(assert (=> b!26089 (= e!13387 (toList!113 (left!705 (left!705 ys!77))))))

(declare-fun b!26092 () Bool)

(assert (=> b!26092 (= e!13388 (or (not (= (toList!113 (left!705 (left!705 ys!77))) Nil!353)) (= lt!4141 (toList!113 xs!533))))))

(assert (= (and d!14015 c!5776) b!26089))

(assert (= (and d!14015 (not c!5776)) b!26090))

(assert (= (and d!14015 res!11857) b!26091))

(assert (= (and b!26091 res!11858) b!26092))

(declare-fun m!27013 () Bool)

(assert (=> d!14015 m!27013))

(assert (=> d!14015 m!26867))

(declare-fun m!27015 () Bool)

(assert (=> d!14015 m!27015))

(assert (=> d!14015 m!26905))

(declare-fun m!27017 () Bool)

(assert (=> d!14015 m!27017))

(declare-fun m!27019 () Bool)

(assert (=> b!26091 m!27019))

(assert (=> b!26091 m!26867))

(declare-fun m!27021 () Bool)

(assert (=> b!26091 m!27021))

(assert (=> b!26091 m!26905))

(declare-fun m!27023 () Bool)

(assert (=> b!26091 m!27023))

(assert (=> b!26090 m!26905))

(declare-fun m!27025 () Bool)

(assert (=> b!26090 m!27025))

(assert (=> b!26000 d!14015))

(declare-fun b!26093 () Bool)

(declare-fun e!13389 () Bool)

(assert (=> b!26093 (= e!13389 (= (++!38 (++!38 (++!38 (toList!113 xs!533) (toList!113 (left!705 (left!705 ys!77)))) (toList!113 (right!708 (left!705 ys!77)))) (toList!113 (right!708 ys!77))) (++!38 (++!38 (toList!113 xs!533) (toList!113 (left!705 (left!705 ys!77)))) (++!38 (toList!113 (right!708 (left!705 ys!77))) (toList!113 (right!708 ys!77))))))))

(declare-fun lt!4142 () Bool)

(assert (=> b!26093 (= lt!4142 (appendAssoc!6 (t!4372 (++!38 (toList!113 xs!533) (toList!113 (left!705 (left!705 ys!77))))) (toList!113 (right!708 (left!705 ys!77))) (toList!113 (right!708 ys!77))))))

(declare-fun d!14017 () Bool)

(assert (=> d!14017 e!13389))

(declare-fun c!5777 () Bool)

(assert (=> d!14017 (= c!5777 (is-Cons!352 (++!38 (toList!113 xs!533) (toList!113 (left!705 (left!705 ys!77))))))))

(assert (=> d!14017 (= (appendAssoc!6 (++!38 (toList!113 xs!533) (toList!113 (left!705 (left!705 ys!77)))) (toList!113 (right!708 (left!705 ys!77))) (toList!113 (right!708 ys!77))) true)))

(declare-fun b!26094 () Bool)

(assert (=> b!26094 (= e!13389 (= (++!38 (++!38 (++!38 (toList!113 xs!533) (toList!113 (left!705 (left!705 ys!77)))) (toList!113 (right!708 (left!705 ys!77)))) (toList!113 (right!708 ys!77))) (++!38 (++!38 (toList!113 xs!533) (toList!113 (left!705 (left!705 ys!77)))) (++!38 (toList!113 (right!708 (left!705 ys!77))) (toList!113 (right!708 ys!77))))))))

(assert (= (and d!14017 c!5777) b!26093))

(assert (= (and d!14017 (not c!5777)) b!26094))

(assert (=> b!26093 m!26897))

(declare-fun m!27027 () Bool)

(assert (=> b!26093 m!27027))

(declare-fun m!27029 () Bool)

(assert (=> b!26093 m!27029))

(declare-fun m!27031 () Bool)

(assert (=> b!26093 m!27031))

(assert (=> b!26093 m!26901))

(declare-fun m!27033 () Bool)

(assert (=> b!26093 m!27033))

(assert (=> b!26093 m!26897))

(assert (=> b!26093 m!26899))

(assert (=> b!26093 m!27031))

(assert (=> b!26093 m!26899))

(assert (=> b!26093 m!26901))

(assert (=> b!26093 m!27027))

(assert (=> b!26093 m!26899))

(assert (=> b!26093 m!26901))

(declare-fun m!27035 () Bool)

(assert (=> b!26093 m!27035))

(assert (=> b!26094 m!26897))

(assert (=> b!26094 m!26899))

(assert (=> b!26094 m!27031))

(assert (=> b!26094 m!27031))

(assert (=> b!26094 m!26901))

(assert (=> b!26094 m!27033))

(assert (=> b!26094 m!26899))

(assert (=> b!26094 m!26901))

(assert (=> b!26094 m!27027))

(assert (=> b!26094 m!26897))

(assert (=> b!26094 m!27027))

(assert (=> b!26094 m!27029))

(assert (=> b!26000 d!14017))

(declare-fun b!26098 () Bool)

(declare-fun e!13390 () Bool)

(assert (=> b!26098 (= e!13390 (concInv!55 (right!708 (right!708 xs!533))))))

(declare-fun b!26096 () Bool)

(declare-fun res!11860 () Bool)

(assert (=> b!26096 (=> (not res!11860) (not e!13390))))

(assert (=> b!26096 (= res!11860 (not (isEmpty!317 (right!708 (right!708 xs!533)))))))

(declare-fun b!26095 () Bool)

(declare-fun e!13391 () Bool)

(assert (=> b!26095 (= e!13391 e!13390)))

(declare-fun res!11861 () Bool)

(assert (=> b!26095 (=> (not res!11861) (not e!13390))))

(assert (=> b!26095 (= res!11861 (not (isEmpty!317 (left!705 (right!708 xs!533)))))))

(declare-fun d!14019 () Bool)

(declare-fun res!11859 () Bool)

(assert (=> d!14019 (=> res!11859 e!13391)))

(assert (=> d!14019 (= res!11859 (not (is-CC!60 (right!708 xs!533))))))

(assert (=> d!14019 (= (concInv!55 (right!708 xs!533)) e!13391)))

(declare-fun b!26097 () Bool)

(declare-fun res!11862 () Bool)

(assert (=> b!26097 (=> (not res!11862) (not e!13390))))

(assert (=> b!26097 (= res!11862 (concInv!55 (left!705 (right!708 xs!533))))))

(assert (= (and d!14019 (not res!11859)) b!26095))

(assert (= (and b!26095 res!11861) b!26096))

(assert (= (and b!26096 res!11860) b!26097))

(assert (= (and b!26097 res!11862) b!26098))

(declare-fun m!27037 () Bool)

(assert (=> b!26098 m!27037))

(declare-fun m!27039 () Bool)

(assert (=> b!26096 m!27039))

(declare-fun m!27041 () Bool)

(assert (=> b!26095 m!27041))

(declare-fun m!27043 () Bool)

(assert (=> b!26097 m!27043))

(assert (=> b!25965 d!14019))

(declare-fun b!26102 () Bool)

(declare-fun e!13392 () Bool)

(assert (=> b!26102 (= e!13392 (concInv!55 (right!708 (right!708 ys!77))))))

(declare-fun b!26100 () Bool)

(declare-fun res!11864 () Bool)

(assert (=> b!26100 (=> (not res!11864) (not e!13392))))

(assert (=> b!26100 (= res!11864 (not (isEmpty!317 (right!708 (right!708 ys!77)))))))

(declare-fun b!26099 () Bool)

(declare-fun e!13393 () Bool)

(assert (=> b!26099 (= e!13393 e!13392)))

(declare-fun res!11865 () Bool)

(assert (=> b!26099 (=> (not res!11865) (not e!13392))))

(assert (=> b!26099 (= res!11865 (not (isEmpty!317 (left!705 (right!708 ys!77)))))))

(declare-fun d!14021 () Bool)

(declare-fun res!11863 () Bool)

(assert (=> d!14021 (=> res!11863 e!13393)))

(assert (=> d!14021 (= res!11863 (not (is-CC!60 (right!708 ys!77))))))

(assert (=> d!14021 (= (concInv!55 (right!708 ys!77)) e!13393)))

(declare-fun b!26101 () Bool)

(declare-fun res!11866 () Bool)

(assert (=> b!26101 (=> (not res!11866) (not e!13392))))

(assert (=> b!26101 (= res!11866 (concInv!55 (left!705 (right!708 ys!77))))))

(assert (= (and d!14021 (not res!11863)) b!26099))

(assert (= (and b!26099 res!11865) b!26100))

(assert (= (and b!26100 res!11864) b!26101))

(assert (= (and b!26101 res!11866) b!26102))

(declare-fun m!27045 () Bool)

(assert (=> b!26102 m!27045))

(declare-fun m!27047 () Bool)

(assert (=> b!26100 m!27047))

(declare-fun m!27049 () Bool)

(assert (=> b!26099 m!27049))

(declare-fun m!27051 () Bool)

(assert (=> b!26101 m!27051))

(assert (=> b!25973 d!14021))

(declare-fun b!26106 () Bool)

(declare-fun e!13394 () Bool)

(assert (=> b!26106 (= e!13394 (concInv!55 (right!708 (left!705 ys!77))))))

(declare-fun b!26104 () Bool)

(declare-fun res!11868 () Bool)

(assert (=> b!26104 (=> (not res!11868) (not e!13394))))

(assert (=> b!26104 (= res!11868 (not (isEmpty!317 (right!708 (left!705 ys!77)))))))

(declare-fun b!26103 () Bool)

(declare-fun e!13395 () Bool)

(assert (=> b!26103 (= e!13395 e!13394)))

(declare-fun res!11869 () Bool)

(assert (=> b!26103 (=> (not res!11869) (not e!13394))))

(assert (=> b!26103 (= res!11869 (not (isEmpty!317 (left!705 (left!705 ys!77)))))))

(declare-fun d!14023 () Bool)

(declare-fun res!11867 () Bool)

(assert (=> d!14023 (=> res!11867 e!13395)))

(assert (=> d!14023 (= res!11867 (not (is-CC!60 (left!705 ys!77))))))

(assert (=> d!14023 (= (concInv!55 (left!705 ys!77)) e!13395)))

(declare-fun b!26105 () Bool)

(declare-fun res!11870 () Bool)

(assert (=> b!26105 (=> (not res!11870) (not e!13394))))

(assert (=> b!26105 (= res!11870 (concInv!55 (left!705 (left!705 ys!77))))))

(assert (= (and d!14023 (not res!11867)) b!26103))

(assert (= (and b!26103 res!11869) b!26104))

(assert (= (and b!26104 res!11868) b!26105))

(assert (= (and b!26105 res!11870) b!26106))

(declare-fun m!27053 () Bool)

(assert (=> b!26106 m!27053))

(declare-fun m!27055 () Bool)

(assert (=> b!26104 m!27055))

(declare-fun m!27057 () Bool)

(assert (=> b!26103 m!27057))

(declare-fun m!27059 () Bool)

(assert (=> b!26105 m!27059))

(assert (=> b!25972 d!14023))

(assert (=> b!25941 d!14009))

(assert (=> b!25941 d!14007))

(assert (=> b!25979 d!13993))

(assert (=> b!25979 d!13995))

(declare-fun d!14025 () Bool)

(assert (=> d!14025 (= (isEmpty!317 (left!705 xs!533)) (= (left!705 xs!533) Empty!71))))

(assert (=> b!25962 d!14025))

(declare-fun b!26110 () Bool)

(declare-fun e!13396 () Bool)

(assert (=> b!26110 (= e!13396 (concInv!55 (right!708 (left!705 res!5525))))))

(declare-fun b!26108 () Bool)

(declare-fun res!11872 () Bool)

(assert (=> b!26108 (=> (not res!11872) (not e!13396))))

(assert (=> b!26108 (= res!11872 (not (isEmpty!317 (right!708 (left!705 res!5525)))))))

(declare-fun b!26107 () Bool)

(declare-fun e!13397 () Bool)

(assert (=> b!26107 (= e!13397 e!13396)))

(declare-fun res!11873 () Bool)

(assert (=> b!26107 (=> (not res!11873) (not e!13396))))

(assert (=> b!26107 (= res!11873 (not (isEmpty!317 (left!705 (left!705 res!5525)))))))

(declare-fun d!14027 () Bool)

(declare-fun res!11871 () Bool)

(assert (=> d!14027 (=> res!11871 e!13397)))

(assert (=> d!14027 (= res!11871 (not (is-CC!60 (left!705 res!5525))))))

(assert (=> d!14027 (= (concInv!55 (left!705 res!5525)) e!13397)))

(declare-fun b!26109 () Bool)

(declare-fun res!11874 () Bool)

(assert (=> b!26109 (=> (not res!11874) (not e!13396))))

(assert (=> b!26109 (= res!11874 (concInv!55 (left!705 (left!705 res!5525))))))

(assert (= (and d!14027 (not res!11871)) b!26107))

(assert (= (and b!26107 res!11873) b!26108))

(assert (= (and b!26108 res!11872) b!26109))

(assert (= (and b!26109 res!11874) b!26110))

(declare-fun m!27061 () Bool)

(assert (=> b!26110 m!27061))

(declare-fun m!27063 () Bool)

(assert (=> b!26108 m!27063))

(declare-fun m!27065 () Bool)

(assert (=> b!26107 m!27065))

(declare-fun m!27067 () Bool)

(assert (=> b!26109 m!27067))

(assert (=> b!25976 d!14027))

(declare-fun d!14029 () Bool)

(assert (=> d!14029 (= (isEmpty!317 (left!705 ys!77)) (= (left!705 ys!77) Empty!71))))

(assert (=> b!25970 d!14029))

(declare-fun b!26111 () Bool)

(declare-fun e!13399 () List!358)

(assert (=> b!26111 (= e!13399 Nil!353)))

(declare-fun d!14031 () Bool)

(declare-fun lt!4143 () List!358)

(assert (=> d!14031 (= (size!265 lt!4143) (size!266 ys!77))))

(assert (=> d!14031 (= lt!4143 e!13399)))

(declare-fun c!5778 () Bool)

(assert (=> d!14031 (= c!5778 (is-Empty!71 ys!77))))

(assert (=> d!14031 (= (toList!113 ys!77) lt!4143)))

(declare-fun b!26113 () Bool)

(declare-fun e!13398 () List!358)

(assert (=> b!26113 (= e!13398 (Cons!352 (x!8911 ys!77) Nil!353))))

(declare-fun b!26114 () Bool)

(assert (=> b!26114 (= e!13398 (++!38 (toList!113 (left!705 ys!77)) (toList!113 (right!708 ys!77))))))

(declare-fun b!26112 () Bool)

(assert (=> b!26112 (= e!13399 e!13398)))

(declare-fun c!5779 () Bool)

(assert (=> b!26112 (= c!5779 (is-Single!60 ys!77))))

(assert (= (and b!26112 c!5779) b!26113))

(assert (= (and b!26112 (not c!5779)) b!26114))

(assert (= (and d!14031 c!5778) b!26111))

(assert (= (and d!14031 (not c!5778)) b!26112))

(declare-fun m!27069 () Bool)

(assert (=> d!14031 m!27069))

(declare-fun m!27071 () Bool)

(assert (=> d!14031 m!27071))

(assert (=> b!26114 m!26921))

(assert (=> b!26114 m!26901))

(assert (=> b!26114 m!26921))

(assert (=> b!26114 m!26901))

(assert (=> b!26114 m!26957))

(assert (=> b!26006 d!14031))

(declare-fun b!26115 () Bool)

(declare-fun e!13401 () List!358)

(assert (=> b!26115 (= e!13401 Nil!353)))

(declare-fun d!14033 () Bool)

(declare-fun lt!4144 () List!358)

(assert (=> d!14033 (= (size!265 lt!4144) (size!266 (right!708 (right!708 xs!533))))))

(assert (=> d!14033 (= lt!4144 e!13401)))

(declare-fun c!5780 () Bool)

(assert (=> d!14033 (= c!5780 (is-Empty!71 (right!708 (right!708 xs!533))))))

(assert (=> d!14033 (= (toList!113 (right!708 (right!708 xs!533))) lt!4144)))

(declare-fun b!26117 () Bool)

(declare-fun e!13400 () List!358)

(assert (=> b!26117 (= e!13400 (Cons!352 (x!8911 (right!708 (right!708 xs!533))) Nil!353))))

(declare-fun b!26118 () Bool)

(assert (=> b!26118 (= e!13400 (++!38 (toList!113 (left!705 (right!708 (right!708 xs!533)))) (toList!113 (right!708 (right!708 (right!708 xs!533))))))))

(declare-fun b!26116 () Bool)

(assert (=> b!26116 (= e!13401 e!13400)))

(declare-fun c!5781 () Bool)

(assert (=> b!26116 (= c!5781 (is-Single!60 (right!708 (right!708 xs!533))))))

(assert (= (and b!26116 c!5781) b!26117))

(assert (= (and b!26116 (not c!5781)) b!26118))

(assert (= (and d!14033 c!5780) b!26115))

(assert (= (and d!14033 (not c!5780)) b!26116))

(declare-fun m!27073 () Bool)

(assert (=> d!14033 m!27073))

(declare-fun m!27075 () Bool)

(assert (=> d!14033 m!27075))

(declare-fun m!27077 () Bool)

(assert (=> b!26118 m!27077))

(declare-fun m!27079 () Bool)

(assert (=> b!26118 m!27079))

(assert (=> b!26118 m!27077))

(assert (=> b!26118 m!27079))

(declare-fun m!27081 () Bool)

(assert (=> b!26118 m!27081))

(assert (=> b!26006 d!14033))

(declare-fun b!26119 () Bool)

(declare-fun e!13403 () List!358)

(assert (=> b!26119 (= e!13403 Nil!353)))

(declare-fun d!14035 () Bool)

(declare-fun lt!4145 () List!358)

(assert (=> d!14035 (= (size!265 lt!4145) (size!266 (left!705 (right!708 xs!533))))))

(assert (=> d!14035 (= lt!4145 e!13403)))

(declare-fun c!5782 () Bool)

(assert (=> d!14035 (= c!5782 (is-Empty!71 (left!705 (right!708 xs!533))))))

(assert (=> d!14035 (= (toList!113 (left!705 (right!708 xs!533))) lt!4145)))

(declare-fun b!26121 () Bool)

(declare-fun e!13402 () List!358)

(assert (=> b!26121 (= e!13402 (Cons!352 (x!8911 (left!705 (right!708 xs!533))) Nil!353))))

(declare-fun b!26122 () Bool)

(assert (=> b!26122 (= e!13402 (++!38 (toList!113 (left!705 (left!705 (right!708 xs!533)))) (toList!113 (right!708 (left!705 (right!708 xs!533))))))))

(declare-fun b!26120 () Bool)

(assert (=> b!26120 (= e!13403 e!13402)))

(declare-fun c!5783 () Bool)

(assert (=> b!26120 (= c!5783 (is-Single!60 (left!705 (right!708 xs!533))))))

(assert (= (and b!26120 c!5783) b!26121))

(assert (= (and b!26120 (not c!5783)) b!26122))

(assert (= (and d!14035 c!5782) b!26119))

(assert (= (and d!14035 (not c!5782)) b!26120))

(declare-fun m!27083 () Bool)

(assert (=> d!14035 m!27083))

(declare-fun m!27085 () Bool)

(assert (=> d!14035 m!27085))

(declare-fun m!27087 () Bool)

(assert (=> b!26122 m!27087))

(declare-fun m!27089 () Bool)

(assert (=> b!26122 m!27089))

(assert (=> b!26122 m!27087))

(assert (=> b!26122 m!27089))

(declare-fun m!27091 () Bool)

(assert (=> b!26122 m!27091))

(assert (=> b!26006 d!14035))

(declare-fun d!14037 () Bool)

(declare-fun e!13405 () Bool)

(assert (=> d!14037 e!13405))

(declare-fun res!11875 () Bool)

(assert (=> d!14037 (=> (not res!11875) (not e!13405))))

(declare-fun lt!4146 () List!358)

(assert (=> d!14037 (= res!11875 (= (content!68 lt!4146) (union (content!68 (toList!113 (right!708 (right!708 xs!533)))) (content!68 (toList!113 ys!77)))))))

(declare-fun e!13404 () List!358)

(assert (=> d!14037 (= lt!4146 e!13404)))

(declare-fun c!5784 () Bool)

(assert (=> d!14037 (= c!5784 (is-Nil!353 (toList!113 (right!708 (right!708 xs!533)))))))

(assert (=> d!14037 (= (++!38 (toList!113 (right!708 (right!708 xs!533))) (toList!113 ys!77)) lt!4146)))

(declare-fun b!26125 () Bool)

(declare-fun res!11876 () Bool)

(assert (=> b!26125 (=> (not res!11876) (not e!13405))))

(assert (=> b!26125 (= res!11876 (= (size!265 lt!4146) (+ (size!265 (toList!113 (right!708 (right!708 xs!533)))) (size!265 (toList!113 ys!77)))))))

(declare-fun b!26124 () Bool)

(assert (=> b!26124 (= e!13404 (Cons!352 (h!269 (toList!113 (right!708 (right!708 xs!533)))) (++!38 (t!4372 (toList!113 (right!708 (right!708 xs!533)))) (toList!113 ys!77))))))

(declare-fun b!26123 () Bool)

(assert (=> b!26123 (= e!13404 (toList!113 ys!77))))

(declare-fun b!26126 () Bool)

(assert (=> b!26126 (= e!13405 (or (not (= (toList!113 ys!77) Nil!353)) (= lt!4146 (toList!113 (right!708 (right!708 xs!533))))))))

(assert (= (and d!14037 c!5784) b!26123))

(assert (= (and d!14037 (not c!5784)) b!26124))

(assert (= (and d!14037 res!11875) b!26125))

(assert (= (and b!26125 res!11876) b!26126))

(declare-fun m!27093 () Bool)

(assert (=> d!14037 m!27093))

(assert (=> d!14037 m!26919))

(declare-fun m!27095 () Bool)

(assert (=> d!14037 m!27095))

(assert (=> d!14037 m!26869))

(declare-fun m!27097 () Bool)

(assert (=> d!14037 m!27097))

(declare-fun m!27099 () Bool)

(assert (=> b!26125 m!27099))

(assert (=> b!26125 m!26919))

(declare-fun m!27101 () Bool)

(assert (=> b!26125 m!27101))

(assert (=> b!26125 m!26869))

(declare-fun m!27103 () Bool)

(assert (=> b!26125 m!27103))

(assert (=> b!26124 m!26869))

(declare-fun m!27105 () Bool)

(assert (=> b!26124 m!27105))

(assert (=> b!26006 d!14037))

(declare-fun b!26127 () Bool)

(declare-fun e!13406 () Bool)

(assert (=> b!26127 (= e!13406 (= (++!38 (++!38 (toList!113 (left!705 xs!533)) (toList!113 (left!705 (right!708 xs!533)))) (++!38 (toList!113 (right!708 (right!708 xs!533))) (toList!113 ys!77))) (++!38 (toList!113 (left!705 xs!533)) (++!38 (toList!113 (left!705 (right!708 xs!533))) (++!38 (toList!113 (right!708 (right!708 xs!533))) (toList!113 ys!77))))))))

(declare-fun lt!4147 () Bool)

(assert (=> b!26127 (= lt!4147 (appendAssoc!6 (t!4372 (toList!113 (left!705 xs!533))) (toList!113 (left!705 (right!708 xs!533))) (++!38 (toList!113 (right!708 (right!708 xs!533))) (toList!113 ys!77))))))

(declare-fun d!14039 () Bool)

(assert (=> d!14039 e!13406))

(declare-fun c!5785 () Bool)

(assert (=> d!14039 (= c!5785 (is-Cons!352 (toList!113 (left!705 xs!533))))))

(assert (=> d!14039 (= (appendAssoc!6 (toList!113 (left!705 xs!533)) (toList!113 (left!705 (right!708 xs!533))) (++!38 (toList!113 (right!708 (right!708 xs!533))) (toList!113 ys!77))) true)))

(declare-fun b!26128 () Bool)

(assert (=> b!26128 (= e!13406 (= (++!38 (++!38 (toList!113 (left!705 xs!533)) (toList!113 (left!705 (right!708 xs!533)))) (++!38 (toList!113 (right!708 (right!708 xs!533))) (toList!113 ys!77))) (++!38 (toList!113 (left!705 xs!533)) (++!38 (toList!113 (left!705 (right!708 xs!533))) (++!38 (toList!113 (right!708 (right!708 xs!533))) (toList!113 ys!77))))))))

(assert (= (and d!14039 c!5785) b!26127))

(assert (= (and d!14039 (not c!5785)) b!26128))

(assert (=> b!26127 m!26907))

(declare-fun m!27107 () Bool)

(assert (=> b!26127 m!27107))

(declare-fun m!27109 () Bool)

(assert (=> b!26127 m!27109))

(declare-fun m!27111 () Bool)

(assert (=> b!26127 m!27111))

(assert (=> b!26127 m!26915))

(declare-fun m!27113 () Bool)

(assert (=> b!26127 m!27113))

(assert (=> b!26127 m!26907))

(assert (=> b!26127 m!26913))

(assert (=> b!26127 m!27111))

(assert (=> b!26127 m!26913))

(assert (=> b!26127 m!26915))

(assert (=> b!26127 m!27107))

(assert (=> b!26127 m!26913))

(assert (=> b!26127 m!26915))

(declare-fun m!27115 () Bool)

(assert (=> b!26127 m!27115))

(assert (=> b!26128 m!26907))

(assert (=> b!26128 m!26913))

(assert (=> b!26128 m!27111))

(assert (=> b!26128 m!27111))

(assert (=> b!26128 m!26915))

(assert (=> b!26128 m!27113))

(assert (=> b!26128 m!26913))

(assert (=> b!26128 m!26915))

(assert (=> b!26128 m!27107))

(assert (=> b!26128 m!26907))

(assert (=> b!26128 m!27107))

(assert (=> b!26128 m!27109))

(assert (=> b!26006 d!14039))

(declare-fun b!26129 () Bool)

(declare-fun e!13408 () List!358)

(assert (=> b!26129 (= e!13408 Nil!353)))

(declare-fun d!14041 () Bool)

(declare-fun lt!4148 () List!358)

(assert (=> d!14041 (= (size!265 lt!4148) (size!266 (left!705 xs!533)))))

(assert (=> d!14041 (= lt!4148 e!13408)))

(declare-fun c!5786 () Bool)

(assert (=> d!14041 (= c!5786 (is-Empty!71 (left!705 xs!533)))))

(assert (=> d!14041 (= (toList!113 (left!705 xs!533)) lt!4148)))

(declare-fun b!26131 () Bool)

(declare-fun e!13407 () List!358)

(assert (=> b!26131 (= e!13407 (Cons!352 (x!8911 (left!705 xs!533)) Nil!353))))

(declare-fun b!26132 () Bool)

(assert (=> b!26132 (= e!13407 (++!38 (toList!113 (left!705 (left!705 xs!533))) (toList!113 (right!708 (left!705 xs!533)))))))

(declare-fun b!26130 () Bool)

(assert (=> b!26130 (= e!13408 e!13407)))

(declare-fun c!5787 () Bool)

(assert (=> b!26130 (= c!5787 (is-Single!60 (left!705 xs!533)))))

(assert (= (and b!26130 c!5787) b!26131))

(assert (= (and b!26130 (not c!5787)) b!26132))

(assert (= (and d!14041 c!5786) b!26129))

(assert (= (and d!14041 (not c!5786)) b!26130))

(declare-fun m!27117 () Bool)

(assert (=> d!14041 m!27117))

(declare-fun m!27119 () Bool)

(assert (=> d!14041 m!27119))

(declare-fun m!27121 () Bool)

(assert (=> b!26132 m!27121))

(declare-fun m!27123 () Bool)

(assert (=> b!26132 m!27123))

(assert (=> b!26132 m!27121))

(assert (=> b!26132 m!27123))

(declare-fun m!27125 () Bool)

(assert (=> b!26132 m!27125))

(assert (=> b!26006 d!14041))

(assert (=> d!13969 d!14031))

(assert (=> d!13969 d!14001))

(declare-fun d!14043 () Bool)

(declare-fun e!13410 () Bool)

(assert (=> d!14043 e!13410))

(declare-fun res!11877 () Bool)

(assert (=> d!14043 (=> (not res!11877) (not e!13410))))

(declare-fun lt!4149 () List!358)

(assert (=> d!14043 (= res!11877 (= (content!68 lt!4149) (union (content!68 (toList!113 xs!533)) (content!68 (toList!113 ys!77)))))))

(declare-fun e!13409 () List!358)

(assert (=> d!14043 (= lt!4149 e!13409)))

(declare-fun c!5788 () Bool)

(assert (=> d!14043 (= c!5788 (is-Nil!353 (toList!113 xs!533)))))

(assert (=> d!14043 (= (++!38 (toList!113 xs!533) (toList!113 ys!77)) lt!4149)))

(declare-fun b!26135 () Bool)

(declare-fun res!11878 () Bool)

(assert (=> b!26135 (=> (not res!11878) (not e!13410))))

(assert (=> b!26135 (= res!11878 (= (size!265 lt!4149) (+ (size!265 (toList!113 xs!533)) (size!265 (toList!113 ys!77)))))))

(declare-fun b!26134 () Bool)

(assert (=> b!26134 (= e!13409 (Cons!352 (h!269 (toList!113 xs!533)) (++!38 (t!4372 (toList!113 xs!533)) (toList!113 ys!77))))))

(declare-fun b!26133 () Bool)

(assert (=> b!26133 (= e!13409 (toList!113 ys!77))))

(declare-fun b!26136 () Bool)

(assert (=> b!26136 (= e!13410 (or (not (= (toList!113 ys!77) Nil!353)) (= lt!4149 (toList!113 xs!533))))))

(assert (= (and d!14043 c!5788) b!26133))

(assert (= (and d!14043 (not c!5788)) b!26134))

(assert (= (and d!14043 res!11877) b!26135))

(assert (= (and b!26135 res!11878) b!26136))

(declare-fun m!27127 () Bool)

(assert (=> d!14043 m!27127))

(assert (=> d!14043 m!26867))

(assert (=> d!14043 m!27015))

(assert (=> d!14043 m!26869))

(assert (=> d!14043 m!27097))

(declare-fun m!27129 () Bool)

(assert (=> b!26135 m!27129))

(assert (=> b!26135 m!26867))

(assert (=> b!26135 m!27021))

(assert (=> b!26135 m!26869))

(assert (=> b!26135 m!27103))

(assert (=> b!26134 m!26869))

(declare-fun m!27131 () Bool)

(assert (=> b!26134 m!27131))

(assert (=> d!13969 d!14043))

(declare-fun b!26137 () Bool)

(declare-fun e!13412 () List!358)

(assert (=> b!26137 (= e!13412 Nil!353)))

(declare-fun d!14045 () Bool)

(declare-fun lt!4150 () List!358)

(assert (=> d!14045 (= (size!265 lt!4150) (size!266 res!5525))))

(assert (=> d!14045 (= lt!4150 e!13412)))

(declare-fun c!5789 () Bool)

(assert (=> d!14045 (= c!5789 (is-Empty!71 res!5525))))

(assert (=> d!14045 (= (toList!113 res!5525) lt!4150)))

(declare-fun b!26139 () Bool)

(declare-fun e!13411 () List!358)

(assert (=> b!26139 (= e!13411 (Cons!352 (x!8911 res!5525) Nil!353))))

(declare-fun b!26140 () Bool)

(assert (=> b!26140 (= e!13411 (++!38 (toList!113 (left!705 res!5525)) (toList!113 (right!708 res!5525))))))

(declare-fun b!26138 () Bool)

(assert (=> b!26138 (= e!13412 e!13411)))

(declare-fun c!5790 () Bool)

(assert (=> b!26138 (= c!5790 (is-Single!60 res!5525))))

(assert (= (and b!26138 c!5790) b!26139))

(assert (= (and b!26138 (not c!5790)) b!26140))

(assert (= (and d!14045 c!5789) b!26137))

(assert (= (and d!14045 (not c!5789)) b!26138))

(declare-fun m!27133 () Bool)

(assert (=> d!14045 m!27133))

(declare-fun m!27135 () Bool)

(assert (=> d!14045 m!27135))

(declare-fun m!27137 () Bool)

(assert (=> b!26140 m!27137))

(declare-fun m!27139 () Bool)

(assert (=> b!26140 m!27139))

(assert (=> b!26140 m!27137))

(assert (=> b!26140 m!27139))

(declare-fun m!27141 () Bool)

(assert (=> b!26140 m!27141))

(assert (=> d!13969 d!14045))

(declare-fun b!26143 () Bool)

(declare-fun res!11880 () Bool)

(declare-fun e!13414 () Bool)

(assert (=> b!26143 (=> (not res!11880) (not e!13414))))

(assert (=> b!26143 (= res!11880 (balanced!56 (left!705 (right!708 xs!533))))))

(declare-fun d!14047 () Bool)

(declare-fun res!11882 () Bool)

(declare-fun e!13413 () Bool)

(assert (=> d!14047 (=> res!11882 e!13413)))

(assert (=> d!14047 (= res!11882 (not (is-CC!60 (right!708 xs!533))))))

(assert (=> d!14047 (= (balanced!56 (right!708 xs!533)) e!13413)))

(declare-fun b!26141 () Bool)

(assert (=> b!26141 (= e!13413 e!13414)))

(declare-fun res!11881 () Bool)

(assert (=> b!26141 (=> (not res!11881) (not e!13414))))

(assert (=> b!26141 (= res!11881 (>= (- (level!49 (left!705 (right!708 xs!533))) (level!49 (right!708 (right!708 xs!533)))) (- 1)))))

(declare-fun b!26144 () Bool)

(assert (=> b!26144 (= e!13414 (balanced!56 (right!708 (right!708 xs!533))))))

(declare-fun b!26142 () Bool)

(declare-fun res!11879 () Bool)

(assert (=> b!26142 (=> (not res!11879) (not e!13414))))

(assert (=> b!26142 (= res!11879 (<= (- (level!49 (left!705 (right!708 xs!533))) (level!49 (right!708 (right!708 xs!533)))) 1))))

(assert (= (and d!14047 (not res!11882)) b!26141))

(assert (= (and b!26141 res!11881) b!26142))

(assert (= (and b!26142 res!11879) b!26143))

(assert (= (and b!26143 res!11880) b!26144))

(declare-fun m!27143 () Bool)

(assert (=> b!26143 m!27143))

(declare-fun m!27145 () Bool)

(assert (=> b!26141 m!27145))

(declare-fun m!27147 () Bool)

(assert (=> b!26141 m!27147))

(declare-fun m!27149 () Bool)

(assert (=> b!26144 m!27149))

(assert (=> b!26142 m!27145))

(assert (=> b!26142 m!27147))

(assert (=> b!25953 d!14047))

(assert (=> b!25967 d!14007))

(assert (=> b!25967 d!14009))

(declare-fun b!26146 () Bool)

(declare-fun e!13415 () Int)

(declare-fun lt!4153 () Int)

(declare-fun lt!4152 () Int)

(assert (=> b!26146 (= e!13415 (+ 1 (ite (>= lt!4153 lt!4152) lt!4153 lt!4152)))))

(assert (=> b!26146 (= lt!4152 (level!49 (right!708 (left!705 xs!533))))))

(assert (=> b!26146 (= lt!4153 (level!49 (left!705 (left!705 xs!533))))))

(declare-fun d!14049 () Bool)

(declare-fun lt!4151 () Int)

(assert (=> d!14049 (>= lt!4151 0)))

(assert (=> d!14049 (= lt!4151 e!13415)))

(declare-fun c!5791 () Bool)

(assert (=> d!14049 (= c!5791 (or (is-Empty!71 (left!705 xs!533)) (is-Single!60 (left!705 xs!533))))))

(assert (=> d!14049 (= (level!49 (left!705 xs!533)) lt!4151)))

(declare-fun b!26145 () Bool)

(assert (=> b!26145 (= e!13415 0)))

(assert (= (and d!14049 c!5791) b!26145))

(assert (= (and d!14049 (not c!5791)) b!26146))

(assert (=> b!26146 m!26949))

(assert (=> b!26146 m!26947))

(assert (=> b!25950 d!14049))

(declare-fun b!26148 () Bool)

(declare-fun e!13416 () Int)

(declare-fun lt!4156 () Int)

(declare-fun lt!4155 () Int)

(assert (=> b!26148 (= e!13416 (+ 1 (ite (>= lt!4156 lt!4155) lt!4156 lt!4155)))))

(assert (=> b!26148 (= lt!4155 (level!49 (right!708 (right!708 xs!533))))))

(assert (=> b!26148 (= lt!4156 (level!49 (left!705 (right!708 xs!533))))))

(declare-fun d!14051 () Bool)

(declare-fun lt!4154 () Int)

(assert (=> d!14051 (>= lt!4154 0)))

(assert (=> d!14051 (= lt!4154 e!13416)))

(declare-fun c!5792 () Bool)

(assert (=> d!14051 (= c!5792 (or (is-Empty!71 (right!708 xs!533)) (is-Single!60 (right!708 xs!533))))))

(assert (=> d!14051 (= (level!49 (right!708 xs!533)) lt!4154)))

(declare-fun b!26147 () Bool)

(assert (=> b!26147 (= e!13416 0)))

(assert (= (and d!14051 c!5792) b!26147))

(assert (= (and d!14051 (not c!5792)) b!26148))

(assert (=> b!26148 m!27147))

(assert (=> b!26148 m!27145))

(assert (=> b!25950 d!14051))

(declare-fun b!26151 () Bool)

(declare-fun res!11884 () Bool)

(declare-fun e!13418 () Bool)

(assert (=> b!26151 (=> (not res!11884) (not e!13418))))

(assert (=> b!26151 (= res!11884 (balanced!56 (left!705 (left!705 res!5525))))))

(declare-fun d!14053 () Bool)

(declare-fun res!11886 () Bool)

(declare-fun e!13417 () Bool)

(assert (=> d!14053 (=> res!11886 e!13417)))

(assert (=> d!14053 (= res!11886 (not (is-CC!60 (left!705 res!5525))))))

(assert (=> d!14053 (= (balanced!56 (left!705 res!5525)) e!13417)))

(declare-fun b!26149 () Bool)

(assert (=> b!26149 (= e!13417 e!13418)))

(declare-fun res!11885 () Bool)

(assert (=> b!26149 (=> (not res!11885) (not e!13418))))

(assert (=> b!26149 (= res!11885 (>= (- (level!49 (left!705 (left!705 res!5525))) (level!49 (right!708 (left!705 res!5525)))) (- 1)))))

(declare-fun b!26152 () Bool)

(assert (=> b!26152 (= e!13418 (balanced!56 (right!708 (left!705 res!5525))))))

(declare-fun b!26150 () Bool)

(declare-fun res!11883 () Bool)

(assert (=> b!26150 (=> (not res!11883) (not e!13418))))

(assert (=> b!26150 (= res!11883 (<= (- (level!49 (left!705 (left!705 res!5525))) (level!49 (right!708 (left!705 res!5525)))) 1))))

(assert (= (and d!14053 (not res!11886)) b!26149))

(assert (= (and b!26149 res!11885) b!26150))

(assert (= (and b!26150 res!11883) b!26151))

(assert (= (and b!26151 res!11884) b!26152))

(declare-fun m!27151 () Bool)

(assert (=> b!26151 m!27151))

(assert (=> b!26149 m!26991))

(assert (=> b!26149 m!26989))

(declare-fun m!27153 () Bool)

(assert (=> b!26152 m!27153))

(assert (=> b!26150 m!26991))

(assert (=> b!26150 m!26989))

(assert (=> b!25968 d!14053))

(declare-fun b!26156 () Bool)

(declare-fun e!13419 () Bool)

(assert (=> b!26156 (= e!13419 (concInv!55 (right!708 (right!708 res!5525))))))

(declare-fun b!26154 () Bool)

(declare-fun res!11888 () Bool)

(assert (=> b!26154 (=> (not res!11888) (not e!13419))))

(assert (=> b!26154 (= res!11888 (not (isEmpty!317 (right!708 (right!708 res!5525)))))))

(declare-fun b!26153 () Bool)

(declare-fun e!13420 () Bool)

(assert (=> b!26153 (= e!13420 e!13419)))

(declare-fun res!11889 () Bool)

(assert (=> b!26153 (=> (not res!11889) (not e!13419))))

(assert (=> b!26153 (= res!11889 (not (isEmpty!317 (left!705 (right!708 res!5525)))))))

(declare-fun d!14055 () Bool)

(declare-fun res!11887 () Bool)

(assert (=> d!14055 (=> res!11887 e!13420)))

(assert (=> d!14055 (= res!11887 (not (is-CC!60 (right!708 res!5525))))))

(assert (=> d!14055 (= (concInv!55 (right!708 res!5525)) e!13420)))

(declare-fun b!26155 () Bool)

(declare-fun res!11890 () Bool)

(assert (=> b!26155 (=> (not res!11890) (not e!13419))))

(assert (=> b!26155 (= res!11890 (concInv!55 (left!705 (right!708 res!5525))))))

(assert (= (and d!14055 (not res!11887)) b!26153))

(assert (= (and b!26153 res!11889) b!26154))

(assert (= (and b!26154 res!11888) b!26155))

(assert (= (and b!26155 res!11890) b!26156))

(declare-fun m!27155 () Bool)

(assert (=> b!26156 m!27155))

(declare-fun m!27157 () Bool)

(assert (=> b!26154 m!27157))

(declare-fun m!27159 () Bool)

(assert (=> b!26153 m!27159))

(declare-fun m!27161 () Bool)

(assert (=> b!26155 m!27161))

(assert (=> b!25977 d!14055))

(assert (=> b!25939 d!14051))

(assert (=> b!25939 d!14049))

(declare-fun b!26160 () Bool)

(declare-fun e!13421 () Bool)

(assert (=> b!26160 (= e!13421 (concInv!55 (right!708 (left!705 xs!533))))))

(declare-fun b!26158 () Bool)

(declare-fun res!11892 () Bool)

(assert (=> b!26158 (=> (not res!11892) (not e!13421))))

(assert (=> b!26158 (= res!11892 (not (isEmpty!317 (right!708 (left!705 xs!533)))))))

(declare-fun b!26157 () Bool)

(declare-fun e!13422 () Bool)

(assert (=> b!26157 (= e!13422 e!13421)))

(declare-fun res!11893 () Bool)

(assert (=> b!26157 (=> (not res!11893) (not e!13421))))

(assert (=> b!26157 (= res!11893 (not (isEmpty!317 (left!705 (left!705 xs!533)))))))

(declare-fun d!14057 () Bool)

(declare-fun res!11891 () Bool)

(assert (=> d!14057 (=> res!11891 e!13422)))

(assert (=> d!14057 (= res!11891 (not (is-CC!60 (left!705 xs!533))))))

(assert (=> d!14057 (= (concInv!55 (left!705 xs!533)) e!13422)))

(declare-fun b!26159 () Bool)

(declare-fun res!11894 () Bool)

(assert (=> b!26159 (=> (not res!11894) (not e!13421))))

(assert (=> b!26159 (= res!11894 (concInv!55 (left!705 (left!705 xs!533))))))

(assert (= (and d!14057 (not res!11891)) b!26157))

(assert (= (and b!26157 res!11893) b!26158))

(assert (= (and b!26158 res!11892) b!26159))

(assert (= (and b!26159 res!11894) b!26160))

(declare-fun m!27163 () Bool)

(assert (=> b!26160 m!27163))

(declare-fun m!27165 () Bool)

(assert (=> b!26158 m!27165))

(declare-fun m!27167 () Bool)

(assert (=> b!26157 m!27167))

(declare-fun m!27169 () Bool)

(assert (=> b!26159 m!27169))

(assert (=> b!25964 d!14057))

(assert (=> b!25937 d!13995))

(assert (=> b!25937 d!13993))

(declare-fun b!26161 () Bool)

(declare-fun e!13423 () Bool)

(assert (=> b!26161 (= e!13423 (= (++!38 (++!38 (toList!113 (left!705 xs!533)) (toList!113 (right!708 xs!533))) (toList!113 ys!77)) (++!38 (toList!113 (left!705 xs!533)) (++!38 (toList!113 (right!708 xs!533)) (toList!113 ys!77)))))))

(declare-fun lt!4157 () Bool)

(assert (=> b!26161 (= lt!4157 (appendAssoc!6 (t!4372 (toList!113 (left!705 xs!533))) (toList!113 (right!708 xs!533)) (toList!113 ys!77)))))

(declare-fun d!14059 () Bool)

(assert (=> d!14059 e!13423))

(declare-fun c!5793 () Bool)

(assert (=> d!14059 (= c!5793 (is-Cons!352 (toList!113 (left!705 xs!533))))))

(assert (=> d!14059 (= (appendAssoc!6 (toList!113 (left!705 xs!533)) (toList!113 (right!708 xs!533)) (toList!113 ys!77)) true)))

(declare-fun b!26162 () Bool)

(assert (=> b!26162 (= e!13423 (= (++!38 (++!38 (toList!113 (left!705 xs!533)) (toList!113 (right!708 xs!533))) (toList!113 ys!77)) (++!38 (toList!113 (left!705 xs!533)) (++!38 (toList!113 (right!708 xs!533)) (toList!113 ys!77)))))))

(assert (= (and d!14059 c!5793) b!26161))

(assert (= (and d!14059 (not c!5793)) b!26162))

(assert (=> b!26161 m!26907))

(declare-fun m!27171 () Bool)

(assert (=> b!26161 m!27171))

(declare-fun m!27173 () Bool)

(assert (=> b!26161 m!27173))

(assert (=> b!26161 m!26971))

(assert (=> b!26161 m!26869))

(declare-fun m!27175 () Bool)

(assert (=> b!26161 m!27175))

(assert (=> b!26161 m!26907))

(assert (=> b!26161 m!26909))

(assert (=> b!26161 m!26971))

(assert (=> b!26161 m!26909))

(assert (=> b!26161 m!26869))

(assert (=> b!26161 m!27171))

(assert (=> b!26161 m!26909))

(assert (=> b!26161 m!26869))

(declare-fun m!27177 () Bool)

(assert (=> b!26161 m!27177))

(assert (=> b!26162 m!26907))

(assert (=> b!26162 m!26909))

(assert (=> b!26162 m!26971))

(assert (=> b!26162 m!26971))

(assert (=> b!26162 m!26869))

(assert (=> b!26162 m!27175))

(assert (=> b!26162 m!26909))

(assert (=> b!26162 m!26869))

(assert (=> b!26162 m!27171))

(assert (=> b!26162 m!26907))

(assert (=> b!26162 m!27171))

(assert (=> b!26162 m!27173))

(assert (=> b!26002 d!14059))

(assert (=> b!26002 d!14041))

(declare-fun b!26163 () Bool)

(declare-fun e!13425 () List!358)

(assert (=> b!26163 (= e!13425 Nil!353)))

(declare-fun d!14061 () Bool)

(declare-fun lt!4158 () List!358)

(assert (=> d!14061 (= (size!265 lt!4158) (size!266 (right!708 xs!533)))))

(assert (=> d!14061 (= lt!4158 e!13425)))

(declare-fun c!5794 () Bool)

(assert (=> d!14061 (= c!5794 (is-Empty!71 (right!708 xs!533)))))

(assert (=> d!14061 (= (toList!113 (right!708 xs!533)) lt!4158)))

(declare-fun b!26165 () Bool)

(declare-fun e!13424 () List!358)

(assert (=> b!26165 (= e!13424 (Cons!352 (x!8911 (right!708 xs!533)) Nil!353))))

(declare-fun b!26166 () Bool)

(assert (=> b!26166 (= e!13424 (++!38 (toList!113 (left!705 (right!708 xs!533))) (toList!113 (right!708 (right!708 xs!533)))))))

(declare-fun b!26164 () Bool)

(assert (=> b!26164 (= e!13425 e!13424)))

(declare-fun c!5795 () Bool)

(assert (=> b!26164 (= c!5795 (is-Single!60 (right!708 xs!533)))))

(assert (= (and b!26164 c!5795) b!26165))

(assert (= (and b!26164 (not c!5795)) b!26166))

(assert (= (and d!14061 c!5794) b!26163))

(assert (= (and d!14061 (not c!5794)) b!26164))

(declare-fun m!27179 () Bool)

(assert (=> d!14061 m!27179))

(declare-fun m!27181 () Bool)

(assert (=> d!14061 m!27181))

(assert (=> b!26166 m!26913))

(assert (=> b!26166 m!26919))

(assert (=> b!26166 m!26913))

(assert (=> b!26166 m!26919))

(declare-fun m!27183 () Bool)

(assert (=> b!26166 m!27183))

(assert (=> b!26002 d!14061))

(assert (=> b!26002 d!14031))

(declare-fun b!26169 () Bool)

(declare-fun res!11896 () Bool)

(declare-fun e!13427 () Bool)

(assert (=> b!26169 (=> (not res!11896) (not e!13427))))

(assert (=> b!26169 (= res!11896 (balanced!56 (left!705 (right!708 ys!77))))))

(declare-fun d!14063 () Bool)

(declare-fun res!11898 () Bool)

(declare-fun e!13426 () Bool)

(assert (=> d!14063 (=> res!11898 e!13426)))

(assert (=> d!14063 (= res!11898 (not (is-CC!60 (right!708 ys!77))))))

(assert (=> d!14063 (= (balanced!56 (right!708 ys!77)) e!13426)))

(declare-fun b!26167 () Bool)

(assert (=> b!26167 (= e!13426 e!13427)))

(declare-fun res!11897 () Bool)

(assert (=> b!26167 (=> (not res!11897) (not e!13427))))

(assert (=> b!26167 (= res!11897 (>= (- (level!49 (left!705 (right!708 ys!77))) (level!49 (right!708 (right!708 ys!77)))) (- 1)))))

(declare-fun b!26170 () Bool)

(assert (=> b!26170 (= e!13427 (balanced!56 (right!708 (right!708 ys!77))))))

(declare-fun b!26168 () Bool)

(declare-fun res!11895 () Bool)

(assert (=> b!26168 (=> (not res!11895) (not e!13427))))

(assert (=> b!26168 (= res!11895 (<= (- (level!49 (left!705 (right!708 ys!77))) (level!49 (right!708 (right!708 ys!77)))) 1))))

(assert (= (and d!14063 (not res!11898)) b!26167))

(assert (= (and b!26167 res!11897) b!26168))

(assert (= (and b!26168 res!11895) b!26169))

(assert (= (and b!26169 res!11896) b!26170))

(declare-fun m!27185 () Bool)

(assert (=> b!26169 m!27185))

(assert (=> b!26167 m!26955))

(assert (=> b!26167 m!26953))

(declare-fun m!27187 () Bool)

(assert (=> b!26170 m!27187))

(assert (=> b!26168 m!26955))

(assert (=> b!26168 m!26953))

(assert (=> b!25981 d!14063))

(assert (=> b!25951 d!14049))

(assert (=> b!25951 d!14051))

(declare-fun d!14065 () Bool)

(assert (=> d!14065 (= (isEmpty!317 (right!708 xs!533)) (= (right!708 xs!533) Empty!71))))

(assert (=> b!25963 d!14065))

(declare-fun b!26171 () Bool)

(declare-fun e!13428 () Bool)

(assert (=> b!26171 (= e!13428 (= (++!38 (++!38 (toList!113 (left!705 (right!708 xs!533))) (toList!113 (right!708 (right!708 xs!533)))) (toList!113 ys!77)) (++!38 (toList!113 (left!705 (right!708 xs!533))) (++!38 (toList!113 (right!708 (right!708 xs!533))) (toList!113 ys!77)))))))

(declare-fun lt!4159 () Bool)

(assert (=> b!26171 (= lt!4159 (appendAssoc!6 (t!4372 (toList!113 (left!705 (right!708 xs!533)))) (toList!113 (right!708 (right!708 xs!533))) (toList!113 ys!77)))))

(declare-fun d!14067 () Bool)

(assert (=> d!14067 e!13428))

(declare-fun c!5796 () Bool)

(assert (=> d!14067 (= c!5796 (is-Cons!352 (toList!113 (left!705 (right!708 xs!533)))))))

(assert (=> d!14067 (= (appendAssoc!6 (toList!113 (left!705 (right!708 xs!533))) (toList!113 (right!708 (right!708 xs!533))) (toList!113 ys!77)) true)))

(declare-fun b!26172 () Bool)

(assert (=> b!26172 (= e!13428 (= (++!38 (++!38 (toList!113 (left!705 (right!708 xs!533))) (toList!113 (right!708 (right!708 xs!533)))) (toList!113 ys!77)) (++!38 (toList!113 (left!705 (right!708 xs!533))) (++!38 (toList!113 (right!708 (right!708 xs!533))) (toList!113 ys!77)))))))

(assert (= (and d!14067 c!5796) b!26171))

(assert (= (and d!14067 (not c!5796)) b!26172))

(assert (=> b!26171 m!26913))

(assert (=> b!26171 m!26915))

(assert (=> b!26171 m!27107))

(assert (=> b!26171 m!27183))

(assert (=> b!26171 m!26869))

(declare-fun m!27189 () Bool)

(assert (=> b!26171 m!27189))

(assert (=> b!26171 m!26913))

(assert (=> b!26171 m!26919))

(assert (=> b!26171 m!27183))

(assert (=> b!26171 m!26919))

(assert (=> b!26171 m!26869))

(assert (=> b!26171 m!26915))

(assert (=> b!26171 m!26919))

(assert (=> b!26171 m!26869))

(declare-fun m!27191 () Bool)

(assert (=> b!26171 m!27191))

(assert (=> b!26172 m!26913))

(assert (=> b!26172 m!26919))

(assert (=> b!26172 m!27183))

(assert (=> b!26172 m!27183))

(assert (=> b!26172 m!26869))

(assert (=> b!26172 m!27189))

(assert (=> b!26172 m!26919))

(assert (=> b!26172 m!26869))

(assert (=> b!26172 m!26915))

(assert (=> b!26172 m!26913))

(assert (=> b!26172 m!26915))

(assert (=> b!26172 m!27107))

(assert (=> b!26004 d!14067))

(assert (=> b!26004 d!14035))

(assert (=> b!26004 d!14033))

(assert (=> b!26004 d!14031))

(declare-fun b!26173 () Bool)

(declare-fun e!13429 () Bool)

(assert (=> b!26173 (= e!13429 (= (++!38 (++!38 (toList!113 xs!533) (toList!113 (left!705 (left!705 ys!77)))) (toList!113 (right!708 (left!705 ys!77)))) (++!38 (toList!113 xs!533) (++!38 (toList!113 (left!705 (left!705 ys!77))) (toList!113 (right!708 (left!705 ys!77)))))))))

(declare-fun lt!4160 () Bool)

(assert (=> b!26173 (= lt!4160 (appendAssoc!6 (t!4372 (toList!113 xs!533)) (toList!113 (left!705 (left!705 ys!77))) (toList!113 (right!708 (left!705 ys!77)))))))

(declare-fun d!14069 () Bool)

(assert (=> d!14069 e!13429))

(declare-fun c!5797 () Bool)

(assert (=> d!14069 (= c!5797 (is-Cons!352 (toList!113 xs!533)))))

(assert (=> d!14069 (= (appendAssoc!6 (toList!113 xs!533) (toList!113 (left!705 (left!705 ys!77))) (toList!113 (right!708 (left!705 ys!77)))) true)))

(declare-fun b!26174 () Bool)

(assert (=> b!26174 (= e!13429 (= (++!38 (++!38 (toList!113 xs!533) (toList!113 (left!705 (left!705 ys!77)))) (toList!113 (right!708 (left!705 ys!77)))) (++!38 (toList!113 xs!533) (++!38 (toList!113 (left!705 (left!705 ys!77))) (toList!113 (right!708 (left!705 ys!77)))))))))

(assert (= (and d!14069 c!5797) b!26173))

(assert (= (and d!14069 (not c!5797)) b!26174))

(assert (=> b!26173 m!26867))

(assert (=> b!26173 m!26977))

(declare-fun m!27193 () Bool)

(assert (=> b!26173 m!27193))

(assert (=> b!26173 m!26897))

(assert (=> b!26173 m!26899))

(assert (=> b!26173 m!27031))

(assert (=> b!26173 m!26867))

(assert (=> b!26173 m!26905))

(assert (=> b!26173 m!26897))

(assert (=> b!26173 m!26905))

(assert (=> b!26173 m!26899))

(assert (=> b!26173 m!26977))

(assert (=> b!26173 m!26905))

(assert (=> b!26173 m!26899))

(declare-fun m!27195 () Bool)

(assert (=> b!26173 m!27195))

(assert (=> b!26174 m!26867))

(assert (=> b!26174 m!26905))

(assert (=> b!26174 m!26897))

(assert (=> b!26174 m!26897))

(assert (=> b!26174 m!26899))

(assert (=> b!26174 m!27031))

(assert (=> b!26174 m!26905))

(assert (=> b!26174 m!26899))

(assert (=> b!26174 m!26977))

(assert (=> b!26174 m!26867))

(assert (=> b!26174 m!26977))

(assert (=> b!26174 m!27193))

(assert (=> b!26003 d!14069))

(assert (=> b!26003 d!14001))

(assert (=> b!26003 d!14011))

(assert (=> b!26003 d!14013))

(declare-fun b!26175 () Bool)

(declare-fun e!13430 () Bool)

(declare-fun tp!5720 () Bool)

(declare-fun tp!5721 () Bool)

(assert (=> b!26175 (= e!13430 (and tp!5720 tp!5721))))

(declare-fun b!26176 () Bool)

(assert (=> b!26176 (= e!13430 tp_is_empty!167)))

(assert (=> b!26017 (= tp!5710 e!13430)))

(assert (= (and b!26017 (is-CC!60 (left!705 (right!708 ys!77)))) b!26175))

(assert (= (and b!26017 (is-Single!60 (left!705 (right!708 ys!77)))) b!26176))

(declare-fun b!26177 () Bool)

(declare-fun e!13431 () Bool)

(declare-fun tp!5722 () Bool)

(declare-fun tp!5723 () Bool)

(assert (=> b!26177 (= e!13431 (and tp!5722 tp!5723))))

(declare-fun b!26178 () Bool)

(assert (=> b!26178 (= e!13431 tp_is_empty!167)))

(assert (=> b!26017 (= tp!5711 e!13431)))

(assert (= (and b!26017 (is-CC!60 (right!708 (right!708 ys!77)))) b!26177))

(assert (= (and b!26017 (is-Single!60 (right!708 (right!708 ys!77)))) b!26178))

(declare-fun b!26179 () Bool)

(declare-fun e!13432 () Bool)

(declare-fun tp!5724 () Bool)

(declare-fun tp!5725 () Bool)

(assert (=> b!26179 (= e!13432 (and tp!5724 tp!5725))))

(declare-fun b!26180 () Bool)

(assert (=> b!26180 (= e!13432 tp_is_empty!167)))

(assert (=> b!26019 (= tp!5712 e!13432)))

(assert (= (and b!26019 (is-CC!60 (left!705 (left!705 res!5525)))) b!26179))

(assert (= (and b!26019 (is-Single!60 (left!705 (left!705 res!5525)))) b!26180))

(declare-fun b!26181 () Bool)

(declare-fun e!13433 () Bool)

(declare-fun tp!5726 () Bool)

(declare-fun tp!5727 () Bool)

(assert (=> b!26181 (= e!13433 (and tp!5726 tp!5727))))

(declare-fun b!26182 () Bool)

(assert (=> b!26182 (= e!13433 tp_is_empty!167)))

(assert (=> b!26019 (= tp!5713 e!13433)))

(assert (= (and b!26019 (is-CC!60 (right!708 (left!705 res!5525)))) b!26181))

(assert (= (and b!26019 (is-Single!60 (right!708 (left!705 res!5525)))) b!26182))

(declare-fun b!26183 () Bool)

(declare-fun e!13434 () Bool)

(declare-fun tp!5728 () Bool)

(declare-fun tp!5729 () Bool)

(assert (=> b!26183 (= e!13434 (and tp!5728 tp!5729))))

(declare-fun b!26184 () Bool)

(assert (=> b!26184 (= e!13434 tp_is_empty!167)))

(assert (=> b!26025 (= tp!5718 e!13434)))

(assert (= (and b!26025 (is-CC!60 (left!705 (right!708 xs!533)))) b!26183))

(assert (= (and b!26025 (is-Single!60 (left!705 (right!708 xs!533)))) b!26184))

(declare-fun b!26185 () Bool)

(declare-fun e!13435 () Bool)

(declare-fun tp!5730 () Bool)

(declare-fun tp!5731 () Bool)

(assert (=> b!26185 (= e!13435 (and tp!5730 tp!5731))))

(declare-fun b!26186 () Bool)

(assert (=> b!26186 (= e!13435 tp_is_empty!167)))

(assert (=> b!26025 (= tp!5719 e!13435)))

(assert (= (and b!26025 (is-CC!60 (right!708 (right!708 xs!533)))) b!26185))

(assert (= (and b!26025 (is-Single!60 (right!708 (right!708 xs!533)))) b!26186))

(declare-fun b!26187 () Bool)

(declare-fun e!13436 () Bool)

(declare-fun tp!5732 () Bool)

(declare-fun tp!5733 () Bool)

(assert (=> b!26187 (= e!13436 (and tp!5732 tp!5733))))

(declare-fun b!26188 () Bool)

(assert (=> b!26188 (= e!13436 tp_is_empty!167)))

(assert (=> b!26015 (= tp!5708 e!13436)))

(assert (= (and b!26015 (is-CC!60 (left!705 (left!705 ys!77)))) b!26187))

(assert (= (and b!26015 (is-Single!60 (left!705 (left!705 ys!77)))) b!26188))

(declare-fun b!26189 () Bool)

(declare-fun e!13437 () Bool)

(declare-fun tp!5734 () Bool)

(declare-fun tp!5735 () Bool)

(assert (=> b!26189 (= e!13437 (and tp!5734 tp!5735))))

(declare-fun b!26190 () Bool)

(assert (=> b!26190 (= e!13437 tp_is_empty!167)))

(assert (=> b!26015 (= tp!5709 e!13437)))

(assert (= (and b!26015 (is-CC!60 (right!708 (left!705 ys!77)))) b!26189))

(assert (= (and b!26015 (is-Single!60 (right!708 (left!705 ys!77)))) b!26190))

(declare-fun b!26191 () Bool)

(declare-fun e!13438 () Bool)

(declare-fun tp!5736 () Bool)

(declare-fun tp!5737 () Bool)

(assert (=> b!26191 (= e!13438 (and tp!5736 tp!5737))))

(declare-fun b!26192 () Bool)

(assert (=> b!26192 (= e!13438 tp_is_empty!167)))

(assert (=> b!26023 (= tp!5716 e!13438)))

(assert (= (and b!26023 (is-CC!60 (left!705 (left!705 xs!533)))) b!26191))

(assert (= (and b!26023 (is-Single!60 (left!705 (left!705 xs!533)))) b!26192))

(declare-fun b!26193 () Bool)

(declare-fun e!13439 () Bool)

(declare-fun tp!5738 () Bool)

(declare-fun tp!5739 () Bool)

(assert (=> b!26193 (= e!13439 (and tp!5738 tp!5739))))

(declare-fun b!26194 () Bool)

(assert (=> b!26194 (= e!13439 tp_is_empty!167)))

(assert (=> b!26023 (= tp!5717 e!13439)))

(assert (= (and b!26023 (is-CC!60 (right!708 (left!705 xs!533)))) b!26193))

(assert (= (and b!26023 (is-Single!60 (right!708 (left!705 xs!533)))) b!26194))

(declare-fun b!26195 () Bool)

(declare-fun e!13440 () Bool)

(declare-fun tp!5740 () Bool)

(declare-fun tp!5741 () Bool)

(assert (=> b!26195 (= e!13440 (and tp!5740 tp!5741))))

(declare-fun b!26196 () Bool)

(assert (=> b!26196 (= e!13440 tp_is_empty!167)))

(assert (=> b!26021 (= tp!5714 e!13440)))

(assert (= (and b!26021 (is-CC!60 (left!705 (right!708 res!5525)))) b!26195))

(assert (= (and b!26021 (is-Single!60 (left!705 (right!708 res!5525)))) b!26196))

(declare-fun b!26197 () Bool)

(declare-fun e!13441 () Bool)

(declare-fun tp!5742 () Bool)

(declare-fun tp!5743 () Bool)

(assert (=> b!26197 (= e!13441 (and tp!5742 tp!5743))))

(declare-fun b!26198 () Bool)

(assert (=> b!26198 (= e!13441 tp_is_empty!167)))

(assert (=> b!26021 (= tp!5715 e!13441)))

(assert (= (and b!26021 (is-CC!60 (right!708 (right!708 res!5525)))) b!26197))

(assert (= (and b!26021 (is-Single!60 (right!708 (right!708 res!5525)))) b!26198))

(push 1)

(assert (not b!26110))

(assert (not b!26042))

(assert (not b!26091))

(assert (not b!26122))

(assert (not b!26090))

(assert (not b!26027))

(assert (not b!26187))

(assert (not d!14001))

(assert (not b!26170))

(assert (not b!26141))

(assert (not b!26028))

(assert (not d!14013))

(assert (not d!14061))

(assert (not b!26169))

(assert (not b!26154))

(assert (not b!26095))

(assert (not b!26183))

(assert (not d!14003))

(assert (not b!26094))

(assert (not b!26156))

(assert (not b!26093))

(assert (not b!26099))

(assert (not b!26151))

(assert (not b!26171))

(assert (not b!26127))

(assert (not b!26159))

(assert (not b!26038))

(assert (not b!26143))

(assert (not b!26150))

(assert (not b!26033))

(assert (not b!26036))

(assert (not d!14015))

(assert (not b!26144))

(assert (not b!26064))

(assert (not b!26108))

(assert (not b!26149))

(assert (not b!26173))

(assert (not d!14037))

(assert (not d!14035))

(assert (not b!26070))

(assert (not b!26103))

(assert (not b!26142))

(assert (not b!26118))

(assert (not b!26035))

(assert (not d!14041))

(assert (not b!26134))

(assert (not b!26105))

(assert (not b!26179))

(assert (not b!26097))

(assert (not b!26197))

(assert (not b!26158))

(assert (not b!26107))

(assert (not b!26172))

(assert (not d!14043))

(assert (not b!26167))

(assert (not b!26034))

(assert (not b!26060))

(assert (not d!14005))

(assert (not b!26076))

(assert (not b!26080))

(assert (not b!26124))

(assert (not b!26157))

(assert (not d!14033))

(assert (not d!14045))

(assert (not b!26125))

(assert (not b!26096))

(assert (not d!14031))

(assert (not b!26175))

(assert (not b!26104))

(assert (not b!26101))

(assert (not b!26155))

(assert (not b!26048))

(assert (not b!26109))

(assert (not b!26031))

(assert (not b!26189))

(assert (not b!26185))

(assert (not b!26100))

(assert (not b!26174))

(assert (not b!26193))

(assert (not b!26072))

(assert (not b!26181))

(assert (not b!26160))

(assert (not b!26102))

(assert (not b!26029))

(assert (not b!26030))

(assert (not b!26032))

(assert (not b!26098))

(assert (not b!26195))

(assert (not b!26114))

(assert (not b!26168))

(assert (not b!26162))

(assert tp_is_empty!167)

(assert (not b!26146))

(assert (not b!26047))

(assert (not b!26132))

(assert (not b!26037))

(assert (not d!14011))

(assert (not b!26161))

(assert (not b!26106))

(assert (not b!26191))

(assert (not b!26140))

(assert (not b!26068))

(assert (not b!26148))

(assert (not b!26153))

(assert (not b!26177))

(assert (not b!26135))

(assert (not b!26152))

(assert (not b!26040))

(assert (not b!26128))

(assert (not b!26166))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


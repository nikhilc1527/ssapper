; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3786 () Bool)

(assert start!3786)

(declare-fun b!24858 () Bool)

(declare-fun e!12857 () Bool)

(declare-fun tp!5401 () Bool)

(declare-fun tp!5399 () Bool)

(assert (=> b!24858 (= e!12857 (and tp!5401 tp!5399))))

(declare-fun b!24859 () Bool)

(declare-fun res!11102 () Bool)

(declare-fun e!12856 () Bool)

(assert (=> b!24859 (=> (not res!11102) (not e!12856))))

(declare-datatypes () ((T!1811 (T!1812 (val!78 Int)))))

(declare-datatypes () ((Conc!55 (CC!54 (left!699 Conc!55) (right!702 Conc!55)) (Single!54 (x!8886 T!1811)) (Empty!65))))

(declare-fun ys!119 () Conc!55)

(declare-fun balanced!50 (Conc!55) Bool)

(assert (=> b!24859 (= res!11102 (balanced!50 ys!119))))

(declare-fun b!24860 () Bool)

(declare-fun res!11106 () Bool)

(assert (=> b!24860 (=> (not res!11106) (not e!12856))))

(declare-fun concInv!49 (Conc!55) Bool)

(assert (=> b!24860 (= res!11106 (concInv!49 ys!119))))

(declare-fun b!24861 () Bool)

(declare-fun res!11101 () Bool)

(declare-fun e!12854 () Bool)

(assert (=> b!24861 (=> res!11101 e!12854)))

(declare-fun lt!3883 () Int)

(declare-fun lt!3884 () Int)

(declare-fun lt!3888 () Int)

(assert (=> b!24861 (= res!11101 (> lt!3884 (+ (ite (>= lt!3888 lt!3883) lt!3888 lt!3883) 1)))))

(declare-fun level!44 (Conc!55) Int)

(assert (=> b!24861 (= lt!3883 (level!44 ys!119))))

(declare-fun xs!625 () Conc!55)

(assert (=> b!24861 (= lt!3888 (level!44 xs!625))))

(declare-fun res!5631 () Conc!55)

(assert (=> b!24861 (= lt!3884 (level!44 res!5631))))

(declare-fun b!24862 () Bool)

(declare-fun res!11110 () Bool)

(assert (=> b!24862 (=> res!11110 e!12854)))

(declare-fun lt!3887 () Int)

(declare-fun lt!3886 () Int)

(declare-fun lt!3885 () Int)

(assert (=> b!24862 (= res!11110 (< lt!3887 (ite (>= lt!3885 lt!3886) lt!3885 lt!3886)))))

(assert (=> b!24862 (= lt!3886 (level!44 ys!119))))

(assert (=> b!24862 (= lt!3885 (level!44 xs!625))))

(assert (=> b!24862 (= lt!3887 (level!44 res!5631))))

(declare-fun b!24863 () Bool)

(assert (=> b!24863 (= e!12856 e!12854)))

(declare-fun res!11108 () Bool)

(assert (=> b!24863 (=> res!11108 e!12854)))

(assert (=> b!24863 (= res!11108 (not (concInv!49 res!5631)))))

(declare-fun b!24864 () Bool)

(declare-fun tp_is_empty!155 () Bool)

(assert (=> b!24864 (= e!12857 tp_is_empty!155)))

(declare-fun b!24865 () Bool)

(declare-fun e!12855 () Bool)

(assert (=> b!24865 (= e!12855 tp_is_empty!155)))

(declare-fun b!24866 () Bool)

(declare-fun res!11105 () Bool)

(assert (=> b!24866 (=> (not res!11105) (not e!12856))))

(declare-fun concatNonEmpty!13 (Conc!55 Conc!55) Conc!55)

(assert (=> b!24866 (= res!11105 (= res!5631 (concatNonEmpty!13 xs!625 ys!119)))))

(declare-fun b!24867 () Bool)

(declare-fun res!11103 () Bool)

(assert (=> b!24867 (=> (not res!11103) (not e!12856))))

(assert (=> b!24867 (= res!11103 (and (not (is-Empty!65 ys!119)) (not (is-Empty!65 xs!625))))))

(declare-fun b!24868 () Bool)

(declare-fun res!11107 () Bool)

(assert (=> b!24868 (=> (not res!11107) (not e!12856))))

(assert (=> b!24868 (= res!11107 (balanced!50 xs!625))))

(declare-fun b!24869 () Bool)

(declare-fun e!12858 () Bool)

(assert (=> b!24869 (= e!12858 tp_is_empty!155)))

(declare-fun b!24870 () Bool)

(declare-fun tp!5398 () Bool)

(declare-fun tp!5396 () Bool)

(assert (=> b!24870 (= e!12855 (and tp!5398 tp!5396))))

(declare-fun b!24871 () Bool)

(declare-fun tp!5400 () Bool)

(declare-fun tp!5397 () Bool)

(assert (=> b!24871 (= e!12858 (and tp!5400 tp!5397))))

(declare-fun b!24872 () Bool)

(declare-fun concatCorrectness!9 (Conc!55 Conc!55 Conc!55) Bool)

(assert (=> b!24872 (= e!12854 (not (concatCorrectness!9 res!5631 xs!625 ys!119)))))

(declare-fun b!24873 () Bool)

(declare-fun res!11109 () Bool)

(assert (=> b!24873 (=> res!11109 e!12854)))

(assert (=> b!24873 (= res!11109 (not (balanced!50 res!5631)))))

(declare-fun res!11104 () Bool)

(assert (=> start!3786 (=> (not res!11104) (not e!12856))))

(assert (=> start!3786 (= res!11104 (concInv!49 xs!625))))

(assert (=> start!3786 e!12856))

(assert (=> start!3786 e!12858))

(assert (=> start!3786 e!12857))

(assert (=> start!3786 e!12855))

(assert (= (and start!3786 res!11104) b!24868))

(assert (= (and b!24868 res!11107) b!24860))

(assert (= (and b!24860 res!11106) b!24859))

(assert (= (and b!24859 res!11102) b!24867))

(assert (= (and b!24867 res!11103) b!24866))

(assert (= (and b!24866 res!11105) b!24863))

(assert (= (and b!24863 (not res!11108)) b!24873))

(assert (= (and b!24873 (not res!11109)) b!24861))

(assert (= (and b!24861 (not res!11101)) b!24862))

(assert (= (and b!24862 (not res!11110)) b!24872))

(assert (= (and start!3786 (is-CC!54 xs!625)) b!24871))

(assert (= (and start!3786 (is-Single!54 xs!625)) b!24869))

(assert (= (and start!3786 (is-CC!54 ys!119)) b!24858))

(assert (= (and start!3786 (is-Single!54 ys!119)) b!24864))

(assert (= (and start!3786 (is-CC!54 res!5631)) b!24870))

(assert (= (and start!3786 (is-Single!54 res!5631)) b!24865))

(declare-fun m!26033 () Bool)

(assert (=> b!24866 m!26033))

(declare-fun m!26035 () Bool)

(assert (=> b!24861 m!26035))

(declare-fun m!26037 () Bool)

(assert (=> b!24861 m!26037))

(declare-fun m!26039 () Bool)

(assert (=> b!24861 m!26039))

(declare-fun m!26041 () Bool)

(assert (=> b!24872 m!26041))

(declare-fun m!26043 () Bool)

(assert (=> start!3786 m!26043))

(declare-fun m!26045 () Bool)

(assert (=> b!24863 m!26045))

(declare-fun m!26047 () Bool)

(assert (=> b!24859 m!26047))

(declare-fun m!26049 () Bool)

(assert (=> b!24868 m!26049))

(assert (=> b!24862 m!26035))

(assert (=> b!24862 m!26037))

(assert (=> b!24862 m!26039))

(declare-fun m!26051 () Bool)

(assert (=> b!24873 m!26051))

(declare-fun m!26053 () Bool)

(assert (=> b!24860 m!26053))

(push 1)

(assert (not b!24870))

(assert (not b!24860))

(assert (not b!24873))

(assert (not b!24871))

(assert tp_is_empty!155)

(assert (not b!24861))

(assert (not b!24872))

(assert (not b!24858))

(assert (not b!24859))

(assert (not b!24863))

(assert (not b!24862))

(assert (not b!24866))

(assert (not start!3786))

(assert (not b!24868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!24882 () Bool)

(declare-fun e!12863 () Bool)

(declare-fun e!12864 () Bool)

(assert (=> b!24882 (= e!12863 e!12864)))

(declare-fun res!11119 () Bool)

(assert (=> b!24882 (=> (not res!11119) (not e!12864))))

(assert (=> b!24882 (= res!11119 (>= (- (level!44 (left!699 ys!119)) (level!44 (right!702 ys!119))) (- 1)))))

(declare-fun b!24885 () Bool)

(assert (=> b!24885 (= e!12864 (balanced!50 (right!702 ys!119)))))

(declare-fun d!13671 () Bool)

(declare-fun res!11121 () Bool)

(assert (=> d!13671 (=> res!11121 e!12863)))

(assert (=> d!13671 (= res!11121 (not (is-CC!54 ys!119)))))

(assert (=> d!13671 (= (balanced!50 ys!119) e!12863)))

(declare-fun b!24883 () Bool)

(declare-fun res!11122 () Bool)

(assert (=> b!24883 (=> (not res!11122) (not e!12864))))

(assert (=> b!24883 (= res!11122 (<= (- (level!44 (left!699 ys!119)) (level!44 (right!702 ys!119))) 1))))

(declare-fun b!24884 () Bool)

(declare-fun res!11120 () Bool)

(assert (=> b!24884 (=> (not res!11120) (not e!12864))))

(assert (=> b!24884 (= res!11120 (balanced!50 (left!699 ys!119)))))

(assert (= (and d!13671 (not res!11121)) b!24882))

(assert (= (and b!24882 res!11119) b!24883))

(assert (= (and b!24883 res!11122) b!24884))

(assert (= (and b!24884 res!11120) b!24885))

(declare-fun m!26055 () Bool)

(assert (=> b!24882 m!26055))

(declare-fun m!26057 () Bool)

(assert (=> b!24882 m!26057))

(declare-fun m!26059 () Bool)

(assert (=> b!24885 m!26059))

(assert (=> b!24883 m!26055))

(assert (=> b!24883 m!26057))

(declare-fun m!26061 () Bool)

(assert (=> b!24884 m!26061))

(assert (=> b!24859 d!13671))

(declare-fun b!24891 () Bool)

(declare-fun e!12867 () Int)

(declare-fun lt!3896 () Int)

(declare-fun lt!3897 () Int)

(assert (=> b!24891 (= e!12867 (+ 1 (ite (>= lt!3896 lt!3897) lt!3896 lt!3897)))))

(assert (=> b!24891 (= lt!3897 (level!44 (right!702 ys!119)))))

(assert (=> b!24891 (= lt!3896 (level!44 (left!699 ys!119)))))

(declare-fun d!13673 () Bool)

(declare-fun lt!3895 () Int)

(assert (=> d!13673 (>= lt!3895 0)))

(assert (=> d!13673 (= lt!3895 e!12867)))

(declare-fun c!5689 () Bool)

(assert (=> d!13673 (= c!5689 (or (is-Empty!65 ys!119) (is-Single!54 ys!119)))))

(assert (=> d!13673 (= (level!44 ys!119) lt!3895)))

(declare-fun b!24890 () Bool)

(assert (=> b!24890 (= e!12867 0)))

(assert (= (and d!13673 c!5689) b!24890))

(assert (= (and d!13673 (not c!5689)) b!24891))

(assert (=> b!24891 m!26057))

(assert (=> b!24891 m!26055))

(assert (=> b!24861 d!13673))

(declare-fun b!24893 () Bool)

(declare-fun e!12868 () Int)

(declare-fun lt!3899 () Int)

(declare-fun lt!3900 () Int)

(assert (=> b!24893 (= e!12868 (+ 1 (ite (>= lt!3899 lt!3900) lt!3899 lt!3900)))))

(assert (=> b!24893 (= lt!3900 (level!44 (right!702 xs!625)))))

(assert (=> b!24893 (= lt!3899 (level!44 (left!699 xs!625)))))

(declare-fun d!13675 () Bool)

(declare-fun lt!3898 () Int)

(assert (=> d!13675 (>= lt!3898 0)))

(assert (=> d!13675 (= lt!3898 e!12868)))

(declare-fun c!5690 () Bool)

(assert (=> d!13675 (= c!5690 (or (is-Empty!65 xs!625) (is-Single!54 xs!625)))))

(assert (=> d!13675 (= (level!44 xs!625) lt!3898)))

(declare-fun b!24892 () Bool)

(assert (=> b!24892 (= e!12868 0)))

(assert (= (and d!13675 c!5690) b!24892))

(assert (= (and d!13675 (not c!5690)) b!24893))

(declare-fun m!26063 () Bool)

(assert (=> b!24893 m!26063))

(declare-fun m!26065 () Bool)

(assert (=> b!24893 m!26065))

(assert (=> b!24861 d!13675))

(declare-fun b!24895 () Bool)

(declare-fun e!12869 () Int)

(declare-fun lt!3902 () Int)

(declare-fun lt!3903 () Int)

(assert (=> b!24895 (= e!12869 (+ 1 (ite (>= lt!3902 lt!3903) lt!3902 lt!3903)))))

(assert (=> b!24895 (= lt!3903 (level!44 (right!702 res!5631)))))

(assert (=> b!24895 (= lt!3902 (level!44 (left!699 res!5631)))))

(declare-fun d!13677 () Bool)

(declare-fun lt!3901 () Int)

(assert (=> d!13677 (>= lt!3901 0)))

(assert (=> d!13677 (= lt!3901 e!12869)))

(declare-fun c!5691 () Bool)

(assert (=> d!13677 (= c!5691 (or (is-Empty!65 res!5631) (is-Single!54 res!5631)))))

(assert (=> d!13677 (= (level!44 res!5631) lt!3901)))

(declare-fun b!24894 () Bool)

(assert (=> b!24894 (= e!12869 0)))

(assert (= (and d!13677 c!5691) b!24894))

(assert (= (and d!13677 (not c!5691)) b!24895))

(declare-fun m!26067 () Bool)

(assert (=> b!24895 m!26067))

(declare-fun m!26069 () Bool)

(assert (=> b!24895 m!26069))

(assert (=> b!24861 d!13677))

(declare-fun b!24907 () Bool)

(declare-fun e!12875 () Bool)

(assert (=> b!24907 (= e!12875 (concInv!49 (right!702 ys!119)))))

(declare-fun b!24904 () Bool)

(declare-fun e!12874 () Bool)

(assert (=> b!24904 (= e!12874 e!12875)))

(declare-fun res!11134 () Bool)

(assert (=> b!24904 (=> (not res!11134) (not e!12875))))

(declare-fun isEmpty!312 (Conc!55) Bool)

(assert (=> b!24904 (= res!11134 (not (isEmpty!312 (left!699 ys!119))))))

(declare-fun b!24906 () Bool)

(declare-fun res!11132 () Bool)

(assert (=> b!24906 (=> (not res!11132) (not e!12875))))

(assert (=> b!24906 (= res!11132 (concInv!49 (left!699 ys!119)))))

(declare-fun b!24905 () Bool)

(declare-fun res!11131 () Bool)

(assert (=> b!24905 (=> (not res!11131) (not e!12875))))

(assert (=> b!24905 (= res!11131 (not (isEmpty!312 (right!702 ys!119))))))

(declare-fun d!13679 () Bool)

(declare-fun res!11133 () Bool)

(assert (=> d!13679 (=> res!11133 e!12874)))

(assert (=> d!13679 (= res!11133 (not (is-CC!54 ys!119)))))

(assert (=> d!13679 (= (concInv!49 ys!119) e!12874)))

(assert (= (and d!13679 (not res!11133)) b!24904))

(assert (= (and b!24904 res!11134) b!24905))

(assert (= (and b!24905 res!11131) b!24906))

(assert (= (and b!24906 res!11132) b!24907))

(declare-fun m!26071 () Bool)

(assert (=> b!24907 m!26071))

(declare-fun m!26073 () Bool)

(assert (=> b!24904 m!26073))

(declare-fun m!26075 () Bool)

(assert (=> b!24906 m!26075))

(declare-fun m!26077 () Bool)

(assert (=> b!24905 m!26077))

(assert (=> b!24860 d!13679))

(declare-fun b!24908 () Bool)

(declare-fun e!12876 () Bool)

(declare-fun e!12877 () Bool)

(assert (=> b!24908 (= e!12876 e!12877)))

(declare-fun res!11135 () Bool)

(assert (=> b!24908 (=> (not res!11135) (not e!12877))))

(assert (=> b!24908 (= res!11135 (>= (- (level!44 (left!699 res!5631)) (level!44 (right!702 res!5631))) (- 1)))))

(declare-fun b!24911 () Bool)

(assert (=> b!24911 (= e!12877 (balanced!50 (right!702 res!5631)))))

(declare-fun d!13681 () Bool)

(declare-fun res!11137 () Bool)

(assert (=> d!13681 (=> res!11137 e!12876)))

(assert (=> d!13681 (= res!11137 (not (is-CC!54 res!5631)))))

(assert (=> d!13681 (= (balanced!50 res!5631) e!12876)))

(declare-fun b!24909 () Bool)

(declare-fun res!11138 () Bool)

(assert (=> b!24909 (=> (not res!11138) (not e!12877))))

(assert (=> b!24909 (= res!11138 (<= (- (level!44 (left!699 res!5631)) (level!44 (right!702 res!5631))) 1))))

(declare-fun b!24910 () Bool)

(declare-fun res!11136 () Bool)

(assert (=> b!24910 (=> (not res!11136) (not e!12877))))

(assert (=> b!24910 (= res!11136 (balanced!50 (left!699 res!5631)))))

(assert (= (and d!13681 (not res!11137)) b!24908))

(assert (= (and b!24908 res!11135) b!24909))

(assert (= (and b!24909 res!11138) b!24910))

(assert (= (and b!24910 res!11136) b!24911))

(assert (=> b!24908 m!26069))

(assert (=> b!24908 m!26067))

(declare-fun m!26079 () Bool)

(assert (=> b!24911 m!26079))

(assert (=> b!24909 m!26069))

(assert (=> b!24909 m!26067))

(declare-fun m!26081 () Bool)

(assert (=> b!24910 m!26081))

(assert (=> b!24873 d!13681))

(declare-fun b!24954 () Bool)

(declare-fun res!11203 () Bool)

(declare-fun e!12898 () Bool)

(assert (=> b!24954 (=> (not res!11203) (not e!12898))))

(declare-fun lt!3947 () Int)

(declare-fun lt!3946 () Int)

(declare-fun lt!3948 () Int)

(assert (=> b!24954 (= res!11203 (>= lt!3947 (ite (>= lt!3946 lt!3948) lt!3946 lt!3948)))))

(assert (=> b!24954 (= lt!3948 (level!44 ys!119))))

(assert (=> b!24954 (= lt!3946 (level!44 xs!625))))

(declare-fun lt!3942 () Conc!55)

(assert (=> b!24954 (= lt!3947 (level!44 lt!3942))))

(declare-fun b!24955 () Bool)

(declare-fun res!11200 () Bool)

(assert (=> b!24955 (=> (not res!11200) (not e!12898))))

(assert (=> b!24955 (= res!11200 (balanced!50 lt!3942))))

(declare-fun b!24956 () Bool)

(declare-fun e!12904 () Bool)

(assert (=> b!24956 (= e!12904 (balanced!50 xs!625))))

(declare-fun b!24957 () Bool)

(assert (=> b!24957 (= e!12898 (concatCorrectness!9 lt!3942 xs!625 ys!119))))

(declare-fun b!24958 () Bool)

(declare-fun e!12897 () Int)

(declare-fun lt!3939 () Conc!55)

(assert (=> b!24958 (= e!12897 (level!44 lt!3939))))

(declare-fun b!24959 () Bool)

(declare-fun e!12896 () Int)

(declare-fun res!11193 () Int)

(assert (=> b!24959 (= e!12896 res!11193)))

(assert (=> b!24959 true))

(assert (=> b!24959 true))

(declare-fun b!24960 () Bool)

(declare-fun e!12899 () Bool)

(assert (=> b!24960 (= e!12899 tp_is_empty!155)))

(declare-fun b!24961 () Bool)

(declare-fun tp!5406 () Bool)

(declare-fun tp!5407 () Bool)

(assert (=> b!24961 (= e!12899 (and tp!5406 tp!5407))))

(declare-fun b!24962 () Bool)

(declare-fun res!11205 () Int)

(assert (=> b!24962 (= e!12897 res!11205)))

(assert (=> b!24962 true))

(declare-fun lt!3944 () Bool)

(declare-fun b!24963 () Bool)

(assert (=> b!24963 (= e!12896 (level!44 (ite lt!3944 xs!625 ys!119)))))

(declare-fun b!24964 () Bool)

(declare-fun e!12900 () Conc!55)

(declare-fun res!11199 () Conc!55)

(assert (=> b!24964 (= e!12900 res!11199)))

(assert (=> b!24964 true))

(assert (=> b!24964 e!12899))

(declare-fun d!13683 () Bool)

(declare-fun e!12902 () Bool)

(assert (=> d!13683 e!12902))

(declare-fun res!11201 () Bool)

(assert (=> d!13683 (=> (not res!11201) (not e!12902))))

(assert (=> d!13683 (= res!11201 (is-CC!54 lt!3942))))

(declare-fun e!12901 () Conc!55)

(assert (=> d!13683 (= lt!3942 e!12901)))

(declare-fun c!5703 () Bool)

(declare-fun lt!3938 () Int)

(assert (=> d!13683 (= c!5703 (and (>= lt!3938 (- 1)) (<= lt!3938 1)))))

(assert (=> d!13683 (= lt!3938 (- (level!44 ys!119) (level!44 xs!625)))))

(declare-fun e!12903 () Bool)

(assert (=> d!13683 e!12903))

(declare-fun res!11196 () Bool)

(assert (=> d!13683 (=> (not res!11196) (not e!12903))))

(assert (=> d!13683 (= res!11196 e!12904)))

(declare-fun res!11195 () Bool)

(assert (=> d!13683 (=> (not res!11195) (not e!12904))))

(assert (=> d!13683 (= res!11195 (concInv!49 xs!625))))

(assert (=> d!13683 (= (concatNonEmpty!13 xs!625 ys!119) lt!3942)))

(declare-fun b!24965 () Bool)

(assert (=> b!24965 (= e!12903 (not (isEmpty!312 ys!119)))))

(declare-fun b!24966 () Bool)

(declare-fun res!11204 () Bool)

(assert (=> b!24966 (=> (not res!11204) (not e!12903))))

(assert (=> b!24966 (= res!11204 (concInv!49 ys!119))))

(declare-fun b!24967 () Bool)

(assert (=> b!24967 (= e!12902 e!12898)))

(declare-fun res!11206 () Bool)

(assert (=> b!24967 (=> (not res!11206) (not e!12898))))

(declare-fun lt!3936 () Int)

(declare-fun lt!3937 () Int)

(declare-fun lt!3943 () Int)

(assert (=> b!24967 (= res!11206 (<= lt!3936 (+ (ite (>= lt!3943 lt!3937) lt!3943 lt!3937) 1)))))

(assert (=> b!24967 (= lt!3937 (level!44 ys!119))))

(assert (=> b!24967 (= lt!3943 (level!44 xs!625))))

(assert (=> b!24967 (= lt!3936 (level!44 lt!3942))))

(declare-fun lt!3940 () Int)

(declare-fun lt!3951 () Int)

(declare-fun lt!3950 () Bool)

(declare-fun b!24968 () Bool)

(assert (=> b!24968 (= e!12900 (concatNonEmpty!13 (ite lt!3950 (ite (>= lt!3951 lt!3940) (right!702 xs!625) (right!702 (right!702 xs!625))) xs!625) (ite lt!3950 ys!119 (ite (>= lt!3951 lt!3940) (left!699 ys!119) (left!699 (left!699 ys!119))))))))

(declare-fun b!24969 () Bool)

(declare-fun res!11194 () Bool)

(assert (=> b!24969 (=> (not res!11194) (not e!12903))))

(assert (=> b!24969 (= res!11194 (balanced!50 ys!119))))

(declare-fun b!24970 () Bool)

(declare-fun res!11198 () Bool)

(assert (=> b!24970 (=> (not res!11198) (not e!12903))))

(assert (=> b!24970 (= res!11198 (not (isEmpty!312 xs!625)))))

(declare-fun b!24971 () Bool)

(declare-fun res!11202 () Bool)

(assert (=> b!24971 (=> (not res!11202) (not e!12898))))

(assert (=> b!24971 (= res!11202 (concInv!49 lt!3942))))

(declare-fun lt!3945 () Int)

(declare-fun lt!3941 () Bool)

(declare-fun b!24972 () Bool)

(declare-fun lt!3949 () Int)

(assert (=> b!24972 (= e!12901 (ite lt!3941 (let ((res!11142 lt!3939)) (ite (>= lt!3951 lt!3940) (CC!54 (left!699 xs!625) res!11142) (ite (= lt!3945 (- lt!3949 3)) (CC!54 (left!699 xs!625) (CC!54 (left!699 (right!702 xs!625)) res!11142)) (CC!54 (CC!54 (left!699 xs!625) (left!699 (right!702 xs!625))) res!11142)))) (let ((res!11145 lt!3939)) (ite (>= lt!3951 lt!3940) (CC!54 res!11145 (right!702 ys!119)) (ite (= lt!3945 (- lt!3949 3)) (CC!54 (CC!54 res!11145 (right!702 (left!699 ys!119))) (right!702 ys!119)) (CC!54 res!11145 (CC!54 (right!702 (left!699 ys!119)) (right!702 ys!119))))))))))

(assert (=> b!24972 (= lt!3949 e!12896)))

(declare-fun c!5701 () Bool)

(assert (=> b!24972 (= c!5701 (or lt!3944 (and (not lt!3941) (not (>= lt!3951 lt!3940)))))))

(assert (=> b!24972 (= lt!3944 (and lt!3941 (not (>= lt!3951 lt!3940))))))

(assert (=> b!24972 (= lt!3945 e!12897)))

(declare-fun c!5702 () Bool)

(assert (=> b!24972 (= c!5702 (or (and lt!3941 (not (>= lt!3951 lt!3940))) (and (not lt!3941) (not (>= lt!3951 lt!3940)))))))

(assert (=> b!24972 (= lt!3939 e!12900)))

(declare-fun c!5700 () Bool)

(assert (=> b!24972 (= c!5700 (or lt!3950 (not lt!3941)))))

(assert (=> b!24972 (= lt!3950 lt!3941)))

(assert (=> b!24972 (= lt!3940 (level!44 (ite lt!3941 (right!702 xs!625) (left!699 ys!119))))))

(assert (=> b!24972 (= lt!3951 (level!44 (ite lt!3941 (left!699 xs!625) (right!702 ys!119))))))

(assert (=> b!24972 (= lt!3941 (< lt!3938 (- 1)))))

(declare-fun b!24973 () Bool)

(declare-fun res!11197 () Bool)

(assert (=> b!24973 (=> (not res!11197) (not e!12898))))

(declare-fun appendAssocInst!9 (Conc!55 Conc!55) Bool)

(assert (=> b!24973 (= res!11197 (appendAssocInst!9 xs!625 ys!119))))

(declare-fun b!24974 () Bool)

(assert (=> b!24974 (= e!12901 (CC!54 xs!625 ys!119))))

(assert (= (and d!13683 res!11195) b!24956))

(assert (= (and d!13683 res!11196) b!24966))

(assert (= (and b!24966 res!11204) b!24969))

(assert (= (and b!24969 res!11194) b!24970))

(assert (= (and b!24970 res!11198) b!24965))

(assert (= (and b!24964 (is-CC!54 res!11199)) b!24961))

(assert (= (and b!24964 (is-Single!54 res!11199)) b!24960))

(assert (= (and b!24972 c!5700) b!24968))

(assert (= (and b!24972 (not c!5700)) b!24964))

(assert (= (and b!24972 c!5702) b!24958))

(assert (= (and b!24972 (not c!5702)) b!24962))

(assert (= (and b!24972 c!5701) b!24963))

(assert (= (and b!24972 (not c!5701)) b!24959))

(assert (= (and d!13683 c!5703) b!24974))

(assert (= (and d!13683 (not c!5703)) b!24972))

(assert (= (and d!13683 res!11201) b!24967))

(assert (= (and b!24967 res!11206) b!24954))

(assert (= (and b!24954 res!11203) b!24971))

(assert (= (and b!24971 res!11202) b!24955))

(assert (= (and b!24955 res!11200) b!24973))

(assert (= (and b!24973 res!11197) b!24957))

(declare-fun m!26083 () Bool)

(assert (=> b!24973 m!26083))

(declare-fun m!26085 () Bool)

(assert (=> b!24957 m!26085))

(declare-fun m!26087 () Bool)

(assert (=> b!24971 m!26087))

(declare-fun m!26089 () Bool)

(assert (=> b!24958 m!26089))

(declare-fun m!26091 () Bool)

(assert (=> b!24972 m!26091))

(declare-fun m!26093 () Bool)

(assert (=> b!24972 m!26093))

(declare-fun m!26095 () Bool)

(assert (=> b!24968 m!26095))

(assert (=> b!24966 m!26053))

(declare-fun m!26097 () Bool)

(assert (=> b!24955 m!26097))

(declare-fun m!26099 () Bool)

(assert (=> b!24963 m!26099))

(assert (=> b!24967 m!26035))

(assert (=> b!24967 m!26037))

(declare-fun m!26101 () Bool)

(assert (=> b!24967 m!26101))

(assert (=> d!13683 m!26035))

(assert (=> d!13683 m!26037))

(assert (=> d!13683 m!26043))

(declare-fun m!26103 () Bool)

(assert (=> b!24965 m!26103))

(assert (=> b!24969 m!26047))

(declare-fun m!26105 () Bool)

(assert (=> b!24970 m!26105))

(assert (=> b!24954 m!26035))

(assert (=> b!24954 m!26037))

(assert (=> b!24954 m!26101))

(assert (=> b!24956 m!26049))

(assert (=> b!24866 d!13683))

(declare-fun b!24978 () Bool)

(declare-fun e!12906 () Bool)

(assert (=> b!24978 (= e!12906 (concInv!49 (right!702 res!5631)))))

(declare-fun b!24975 () Bool)

(declare-fun e!12905 () Bool)

(assert (=> b!24975 (= e!12905 e!12906)))

(declare-fun res!11210 () Bool)

(assert (=> b!24975 (=> (not res!11210) (not e!12906))))

(assert (=> b!24975 (= res!11210 (not (isEmpty!312 (left!699 res!5631))))))

(declare-fun b!24977 () Bool)

(declare-fun res!11208 () Bool)

(assert (=> b!24977 (=> (not res!11208) (not e!12906))))

(assert (=> b!24977 (= res!11208 (concInv!49 (left!699 res!5631)))))

(declare-fun b!24976 () Bool)

(declare-fun res!11207 () Bool)

(assert (=> b!24976 (=> (not res!11207) (not e!12906))))

(assert (=> b!24976 (= res!11207 (not (isEmpty!312 (right!702 res!5631))))))

(declare-fun d!13685 () Bool)

(declare-fun res!11209 () Bool)

(assert (=> d!13685 (=> res!11209 e!12905)))

(assert (=> d!13685 (= res!11209 (not (is-CC!54 res!5631)))))

(assert (=> d!13685 (= (concInv!49 res!5631) e!12905)))

(assert (= (and d!13685 (not res!11209)) b!24975))

(assert (= (and b!24975 res!11210) b!24976))

(assert (= (and b!24976 res!11207) b!24977))

(assert (= (and b!24977 res!11208) b!24978))

(declare-fun m!26107 () Bool)

(assert (=> b!24978 m!26107))

(declare-fun m!26109 () Bool)

(assert (=> b!24975 m!26109))

(declare-fun m!26111 () Bool)

(assert (=> b!24977 m!26111))

(declare-fun m!26113 () Bool)

(assert (=> b!24976 m!26113))

(assert (=> b!24863 d!13685))

(assert (=> b!24862 d!13673))

(assert (=> b!24862 d!13675))

(assert (=> b!24862 d!13677))

(declare-fun b!24982 () Bool)

(declare-fun e!12908 () Bool)

(assert (=> b!24982 (= e!12908 (concInv!49 (right!702 xs!625)))))

(declare-fun b!24979 () Bool)

(declare-fun e!12907 () Bool)

(assert (=> b!24979 (= e!12907 e!12908)))

(declare-fun res!11214 () Bool)

(assert (=> b!24979 (=> (not res!11214) (not e!12908))))

(assert (=> b!24979 (= res!11214 (not (isEmpty!312 (left!699 xs!625))))))

(declare-fun b!24981 () Bool)

(declare-fun res!11212 () Bool)

(assert (=> b!24981 (=> (not res!11212) (not e!12908))))

(assert (=> b!24981 (= res!11212 (concInv!49 (left!699 xs!625)))))

(declare-fun b!24980 () Bool)

(declare-fun res!11211 () Bool)

(assert (=> b!24980 (=> (not res!11211) (not e!12908))))

(assert (=> b!24980 (= res!11211 (not (isEmpty!312 (right!702 xs!625))))))

(declare-fun d!13687 () Bool)

(declare-fun res!11213 () Bool)

(assert (=> d!13687 (=> res!11213 e!12907)))

(assert (=> d!13687 (= res!11213 (not (is-CC!54 xs!625)))))

(assert (=> d!13687 (= (concInv!49 xs!625) e!12907)))

(assert (= (and d!13687 (not res!11213)) b!24979))

(assert (= (and b!24979 res!11214) b!24980))

(assert (= (and b!24980 res!11211) b!24981))

(assert (= (and b!24981 res!11212) b!24982))

(declare-fun m!26115 () Bool)

(assert (=> b!24982 m!26115))

(declare-fun m!26117 () Bool)

(assert (=> b!24979 m!26117))

(declare-fun m!26119 () Bool)

(assert (=> b!24981 m!26119))

(declare-fun m!26121 () Bool)

(assert (=> b!24980 m!26121))

(assert (=> start!3786 d!13687))

(declare-fun b!24983 () Bool)

(declare-fun e!12909 () Bool)

(declare-fun e!12910 () Bool)

(assert (=> b!24983 (= e!12909 e!12910)))

(declare-fun res!11215 () Bool)

(assert (=> b!24983 (=> (not res!11215) (not e!12910))))

(assert (=> b!24983 (= res!11215 (>= (- (level!44 (left!699 xs!625)) (level!44 (right!702 xs!625))) (- 1)))))

(declare-fun b!24986 () Bool)

(assert (=> b!24986 (= e!12910 (balanced!50 (right!702 xs!625)))))

(declare-fun d!13689 () Bool)

(declare-fun res!11217 () Bool)

(assert (=> d!13689 (=> res!11217 e!12909)))

(assert (=> d!13689 (= res!11217 (not (is-CC!54 xs!625)))))

(assert (=> d!13689 (= (balanced!50 xs!625) e!12909)))

(declare-fun b!24984 () Bool)

(declare-fun res!11218 () Bool)

(assert (=> b!24984 (=> (not res!11218) (not e!12910))))

(assert (=> b!24984 (= res!11218 (<= (- (level!44 (left!699 xs!625)) (level!44 (right!702 xs!625))) 1))))

(declare-fun b!24985 () Bool)

(declare-fun res!11216 () Bool)

(assert (=> b!24985 (=> (not res!11216) (not e!12910))))

(assert (=> b!24985 (= res!11216 (balanced!50 (left!699 xs!625)))))

(assert (= (and d!13689 (not res!11217)) b!24983))

(assert (= (and b!24983 res!11215) b!24984))

(assert (= (and b!24984 res!11218) b!24985))

(assert (= (and b!24985 res!11216) b!24986))

(assert (=> b!24983 m!26065))

(assert (=> b!24983 m!26063))

(declare-fun m!26123 () Bool)

(assert (=> b!24986 m!26123))

(assert (=> b!24984 m!26065))

(assert (=> b!24984 m!26063))

(declare-fun m!26125 () Bool)

(assert (=> b!24985 m!26125))

(assert (=> b!24868 d!13689))

(declare-fun d!13691 () Bool)

(declare-datatypes () ((List!357 (Cons!351 (h!268 T!1811) (t!4371 List!357)) (Nil!352))))

(declare-fun toList!112 (Conc!55) List!357)

(declare-fun ++!37 (List!357 List!357) List!357)

(assert (=> d!13691 (= (concatCorrectness!9 res!5631 xs!625 ys!119) (= (toList!112 res!5631) (++!37 (toList!112 xs!625) (toList!112 ys!119))))))

(declare-fun bs!5080 () Bool)

(assert (= bs!5080 d!13691))

(declare-fun m!26127 () Bool)

(assert (=> bs!5080 m!26127))

(declare-fun m!26129 () Bool)

(assert (=> bs!5080 m!26129))

(assert (=> bs!5080 m!26129))

(assert (=> bs!5080 m!26127))

(declare-fun m!26131 () Bool)

(assert (=> bs!5080 m!26131))

(declare-fun m!26133 () Bool)

(assert (=> bs!5080 m!26133))

(assert (=> b!24872 d!13691))

(declare-fun b!24993 () Bool)

(declare-fun e!12913 () Bool)

(declare-fun tp!5412 () Bool)

(declare-fun tp!5413 () Bool)

(assert (=> b!24993 (= e!12913 (and tp!5412 tp!5413))))

(declare-fun b!24994 () Bool)

(assert (=> b!24994 (= e!12913 tp_is_empty!155)))

(assert (=> b!24871 (= tp!5400 e!12913)))

(assert (= (and b!24871 (is-CC!54 (left!699 xs!625))) b!24993))

(assert (= (and b!24871 (is-Single!54 (left!699 xs!625))) b!24994))

(declare-fun b!24995 () Bool)

(declare-fun e!12914 () Bool)

(declare-fun tp!5414 () Bool)

(declare-fun tp!5415 () Bool)

(assert (=> b!24995 (= e!12914 (and tp!5414 tp!5415))))

(declare-fun b!24996 () Bool)

(assert (=> b!24996 (= e!12914 tp_is_empty!155)))

(assert (=> b!24871 (= tp!5397 e!12914)))

(assert (= (and b!24871 (is-CC!54 (right!702 xs!625))) b!24995))

(assert (= (and b!24871 (is-Single!54 (right!702 xs!625))) b!24996))

(declare-fun b!24997 () Bool)

(declare-fun e!12915 () Bool)

(declare-fun tp!5416 () Bool)

(declare-fun tp!5417 () Bool)

(assert (=> b!24997 (= e!12915 (and tp!5416 tp!5417))))

(declare-fun b!24998 () Bool)

(assert (=> b!24998 (= e!12915 tp_is_empty!155)))

(assert (=> b!24858 (= tp!5401 e!12915)))

(assert (= (and b!24858 (is-CC!54 (left!699 ys!119))) b!24997))

(assert (= (and b!24858 (is-Single!54 (left!699 ys!119))) b!24998))

(declare-fun b!24999 () Bool)

(declare-fun e!12916 () Bool)

(declare-fun tp!5418 () Bool)

(declare-fun tp!5419 () Bool)

(assert (=> b!24999 (= e!12916 (and tp!5418 tp!5419))))

(declare-fun b!25000 () Bool)

(assert (=> b!25000 (= e!12916 tp_is_empty!155)))

(assert (=> b!24858 (= tp!5399 e!12916)))

(assert (= (and b!24858 (is-CC!54 (right!702 ys!119))) b!24999))

(assert (= (and b!24858 (is-Single!54 (right!702 ys!119))) b!25000))

(declare-fun b!25001 () Bool)

(declare-fun e!12917 () Bool)

(declare-fun tp!5420 () Bool)

(declare-fun tp!5421 () Bool)

(assert (=> b!25001 (= e!12917 (and tp!5420 tp!5421))))

(declare-fun b!25002 () Bool)

(assert (=> b!25002 (= e!12917 tp_is_empty!155)))

(assert (=> b!24870 (= tp!5398 e!12917)))

(assert (= (and b!24870 (is-CC!54 (left!699 res!5631))) b!25001))

(assert (= (and b!24870 (is-Single!54 (left!699 res!5631))) b!25002))

(declare-fun b!25003 () Bool)

(declare-fun e!12918 () Bool)

(declare-fun tp!5422 () Bool)

(declare-fun tp!5423 () Bool)

(assert (=> b!25003 (= e!12918 (and tp!5422 tp!5423))))

(declare-fun b!25004 () Bool)

(assert (=> b!25004 (= e!12918 tp_is_empty!155)))

(assert (=> b!24870 (= tp!5396 e!12918)))

(assert (= (and b!24870 (is-CC!54 (right!702 res!5631))) b!25003))

(assert (= (and b!24870 (is-Single!54 (right!702 res!5631))) b!25004))

(push 1)

(assert (not b!24970))

(assert (not b!24908))

(assert (not b!24975))

(assert (not b!24957))

(assert (not b!25001))

(assert (not b!25003))

(assert (not d!13683))

(assert (not b!24995))

(assert (not b!24997))

(assert (not b!24986))

(assert (not b!24883))

(assert (not b!24999))

(assert (not b!24973))

(assert (not b!24954))

(assert (not b!24911))

(assert (not b!24893))

(assert (not b!24963))

(assert (not b!24984))

(assert (not b!24904))

(assert (not b!24983))

(assert (not b!24972))

(assert (not b!24885))

(assert (not b!24910))

(assert (not b!24993))

(assert tp_is_empty!155)

(assert (not b!24969))

(assert (not b!24982))

(assert (not b!24905))

(assert (not b!24955))

(assert (not b!24909))

(assert (not b!24956))

(assert (not b!24891))

(assert (not b!24985))

(assert (not b!24971))

(assert (not b!24976))

(assert (not b!24979))

(assert (not b!24968))

(assert (not b!24884))

(assert (not b!24980))

(assert (not b!24977))

(assert (not b!24906))

(assert (not b!24882))

(assert (not b!24966))

(assert (not b!24958))

(assert (not b!24895))

(assert (not b!24907))

(assert (not d!13691))

(assert (not b!24967))

(assert (not b!24978))

(assert (not b!24965))

(assert (not b!24981))

(assert (not b!24961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


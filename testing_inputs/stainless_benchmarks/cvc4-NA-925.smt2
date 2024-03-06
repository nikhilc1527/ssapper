; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7026 () Bool)

(assert start!7026)

(declare-fun res!23635 () Bool)

(declare-fun e!26921 () Bool)

(assert (=> start!7026 (=> (not res!23635) (not e!26921))))

(declare-datatypes () ((Node!60 (Node!61 (rank!22 Int) (elem!94 (_ BitVec 32)) (nodes!22 Heap!16))) (Heap!16 (Empty!118) (Nodes!15 (head!647 Node!60) (tail!671 Heap!16)))))

(declare-fun h0!3 () Heap!16)

(declare-fun insert!4 ((_ BitVec 32) Heap!16) Heap!16)

(assert (=> start!7026 (= res!23635 (= h0!3 (insert!4 #b00000000000000000000000000101010 Empty!118)))))

(assert (=> start!7026 e!26921))

(assert (=> start!7026 true))

(declare-fun b!51849 () Bool)

(declare-fun res!23636 () Bool)

(assert (=> b!51849 (=> (not res!23636) (not e!26921))))

(declare-fun h1!19 () Heap!16)

(assert (=> b!51849 (= res!23636 (= h1!19 (insert!4 #b00000000000000000000000000000000 Empty!118)))))

(declare-fun b!51850 () Bool)

(declare-fun res!23637 () Bool)

(assert (=> b!51850 (=> (not res!23637) (not e!26921))))

(declare-fun h2!14 () Heap!16)

(declare-fun merge!1 (Heap!16 Heap!16) Heap!16)

(assert (=> b!51850 (= res!23637 (= h2!14 (merge!1 h0!3 h1!19)))))

(declare-fun b!51851 () Bool)

(declare-datatypes () ((OptInt!6 (Some!230 (value!3242 (_ BitVec 32))) (None!231))))

(declare-fun findMin!0 (Heap!16) OptInt!6)

(assert (=> b!51851 (= e!26921 (not (= (findMin!0 h2!14) (Some!230 #b00000000000000000000000000000000))))))

(assert (= (and start!7026 res!23635) b!51849))

(assert (= (and b!51849 res!23636) b!51850))

(assert (= (and b!51850 res!23637) b!51851))

(declare-fun m!55839 () Bool)

(assert (=> start!7026 m!55839))

(declare-fun m!55841 () Bool)

(assert (=> b!51849 m!55841))

(declare-fun m!55843 () Bool)

(assert (=> b!51850 m!55843))

(declare-fun m!55845 () Bool)

(assert (=> b!51851 m!55845))

(push 1)

(assert (not b!51850))

(assert (not start!7026))

(assert (not b!51849))

(assert (not b!51851))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44058 () Bool)

(declare-fun lt!9095 () Heap!16)

(declare-fun heapContent!0 (Heap!16) (Set (_ BitVec 32)))

(assert (=> d!44058 (= (heapContent!0 lt!9095) (union (heapContent!0 h0!3) (heapContent!0 h1!19)))))

(declare-fun e!26932 () Heap!16)

(assert (=> d!44058 (= lt!9095 e!26932)))

(declare-fun c!11162 () Bool)

(assert (=> d!44058 (= c!11162 (is-Empty!118 h1!19))))

(assert (=> d!44058 (= (merge!1 h0!3 h1!19) lt!9095)))

(declare-fun b!51872 () Bool)

(declare-fun e!26933 () Heap!16)

(declare-fun lt!9094 () Heap!16)

(assert (=> b!51872 (= e!26933 (Nodes!15 (head!647 h0!3) lt!9094))))

(declare-fun b!51873 () Bool)

(declare-fun e!26936 () Heap!16)

(declare-fun insertNode!0 (Node!60 Heap!16) Heap!16)

(declare-fun link!0 (Node!60 Node!60) Node!60)

(assert (=> b!51873 (= e!26936 (insertNode!0 (link!0 (head!647 h0!3) (head!647 h1!19)) (merge!1 (tail!671 h0!3) (tail!671 h1!19))))))

(declare-fun b!51874 () Bool)

(declare-fun e!26935 () Heap!16)

(assert (=> b!51874 (= e!26935 h1!19)))

(declare-fun b!51875 () Bool)

(assert (=> b!51875 (= e!26936 (Nodes!15 (head!647 h1!19) lt!9094))))

(declare-fun b!51876 () Bool)

(assert (=> b!51876 (= e!26932 e!26935)))

(declare-fun c!11161 () Bool)

(assert (=> b!51876 (= c!11161 (is-Empty!118 h0!3))))

(declare-fun b!51877 () Bool)

(declare-fun lt!9093 () Bool)

(declare-fun e!26934 () Heap!16)

(assert (=> b!51877 (= e!26934 (merge!1 (ite lt!9093 (tail!671 h0!3) h0!3) (ite lt!9093 h1!19 (tail!671 h1!19))))))

(declare-fun b!51878 () Bool)

(assert (=> b!51878 (= e!26932 h0!3)))

(declare-fun b!51879 () Bool)

(assert (=> b!51879 (= e!26935 e!26933)))

(declare-fun c!11158 () Bool)

(assert (=> b!51879 (= c!11158 lt!9093)))

(assert (=> b!51879 (= lt!9094 e!26934)))

(declare-fun c!11159 () Bool)

(assert (=> b!51879 (= c!11159 (or lt!9093 (< (rank!22 (head!647 h1!19)) (rank!22 (head!647 h0!3)))))))

(assert (=> b!51879 (= lt!9093 (< (rank!22 (head!647 h0!3)) (rank!22 (head!647 h1!19))))))

(declare-fun b!51880 () Bool)

(assert (=> b!51880 (= e!26933 e!26936)))

(declare-fun c!11160 () Bool)

(assert (=> b!51880 (= c!11160 (< (rank!22 (head!647 h1!19)) (rank!22 (head!647 h0!3))))))

(declare-fun b!51881 () Bool)

(declare-fun res!23644 () Heap!16)

(assert (=> b!51881 (= e!26934 res!23644)))

(assert (=> b!51881 true))

(assert (=> b!51881 true))

(assert (= (and b!51879 c!11159) b!51877))

(assert (= (and b!51879 (not c!11159)) b!51881))

(assert (= (and b!51880 c!11160) b!51875))

(assert (= (and b!51880 (not c!11160)) b!51873))

(assert (= (and b!51879 c!11158) b!51872))

(assert (= (and b!51879 (not c!11158)) b!51880))

(assert (= (and b!51876 c!11161) b!51874))

(assert (= (and b!51876 (not c!11161)) b!51879))

(assert (= (and d!44058 c!11162) b!51878))

(assert (= (and d!44058 (not c!11162)) b!51876))

(declare-fun m!55847 () Bool)

(assert (=> d!44058 m!55847))

(declare-fun m!55849 () Bool)

(assert (=> d!44058 m!55849))

(declare-fun m!55851 () Bool)

(assert (=> d!44058 m!55851))

(declare-fun m!55853 () Bool)

(assert (=> b!51873 m!55853))

(declare-fun m!55855 () Bool)

(assert (=> b!51873 m!55855))

(assert (=> b!51873 m!55853))

(assert (=> b!51873 m!55855))

(declare-fun m!55857 () Bool)

(assert (=> b!51873 m!55857))

(declare-fun m!55859 () Bool)

(assert (=> b!51877 m!55859))

(assert (=> b!51850 d!44058))

(declare-fun d!44060 () Bool)

(declare-fun lt!9098 () Heap!16)

(assert (=> d!44060 (= (heapContent!0 lt!9098) (union (heapContent!0 Empty!118) (insert #b00000000000000000000000000101010 (as emptyset (Set (_ BitVec 32))))))))

(assert (=> d!44060 (= lt!9098 (insertNode!0 (Node!61 0 #b00000000000000000000000000101010 Empty!118) Empty!118))))

(assert (=> d!44060 (= (insert!4 #b00000000000000000000000000101010 Empty!118) lt!9098)))

(declare-fun bs!23793 () Bool)

(assert (= bs!23793 d!44060))

(declare-fun m!55861 () Bool)

(assert (=> bs!23793 m!55861))

(declare-fun m!55863 () Bool)

(assert (=> bs!23793 m!55863))

(declare-fun m!55865 () Bool)

(assert (=> bs!23793 m!55865))

(declare-fun m!55867 () Bool)

(assert (=> bs!23793 m!55867))

(assert (=> start!7026 d!44060))

(declare-fun d!44062 () Bool)

(declare-fun lt!9099 () Heap!16)

(assert (=> d!44062 (= (heapContent!0 lt!9099) (union (heapContent!0 Empty!118) (insert #b00000000000000000000000000000000 (as emptyset (Set (_ BitVec 32))))))))

(assert (=> d!44062 (= lt!9099 (insertNode!0 (Node!61 0 #b00000000000000000000000000000000 Empty!118) Empty!118))))

(assert (=> d!44062 (= (insert!4 #b00000000000000000000000000000000 Empty!118) lt!9099)))

(declare-fun bs!23794 () Bool)

(assert (= bs!23794 d!44062))

(declare-fun m!55869 () Bool)

(assert (=> bs!23794 m!55869))

(assert (=> bs!23794 m!55863))

(declare-fun m!55871 () Bool)

(assert (=> bs!23794 m!55871))

(declare-fun m!55873 () Bool)

(assert (=> bs!23794 m!55873))

(assert (=> b!51849 d!44062))

(declare-fun b!51898 () Bool)

(declare-fun e!26947 () OptInt!6)

(assert (=> b!51898 (= e!26947 (Some!230 (elem!94 (head!647 h2!14))))))

(declare-fun d!44064 () Bool)

(declare-fun e!26949 () Bool)

(assert (=> d!44064 e!26949))

(declare-fun c!11171 () Bool)

(declare-fun lt!9102 () OptInt!6)

(assert (=> d!44064 (= c!11171 (is-None!231 lt!9102))))

(declare-fun e!26948 () OptInt!6)

(assert (=> d!44064 (= lt!9102 e!26948)))

(declare-fun c!11174 () Bool)

(assert (=> d!44064 (= c!11174 (is-Empty!118 h2!14))))

(assert (=> d!44064 (= (findMin!0 h2!14) lt!9102)))

(declare-fun b!51899 () Bool)

(declare-fun e!26946 () (_ BitVec 32))

(assert (=> b!51899 (= e!26946 (elem!94 (head!647 h2!14)))))

(declare-fun b!51900 () Bool)

(assert (=> b!51900 (= e!26948 None!231)))

(declare-fun b!51901 () Bool)

(assert (=> b!51901 (= e!26947 (Some!230 e!26946))))

(declare-fun c!11172 () Bool)

(assert (=> b!51901 (= c!11172 (bvslt (elem!94 (head!647 h2!14)) (value!3242 (findMin!0 (tail!671 h2!14)))))))

(declare-fun b!51902 () Bool)

(assert (=> b!51902 (= e!26949 (member (value!3242 lt!9102) (heapContent!0 h2!14)))))

(declare-fun b!51903 () Bool)

(declare-fun isEmpty!6 (Heap!16) Bool)

(assert (=> b!51903 (= e!26949 (isEmpty!6 h2!14))))

(declare-fun b!51904 () Bool)

(assert (=> b!51904 (= e!26948 e!26947)))

(declare-fun c!11173 () Bool)

(assert (=> b!51904 (= c!11173 (is-None!231 (findMin!0 (tail!671 h2!14))))))

(declare-fun b!51905 () Bool)

(assert (=> b!51905 (= e!26946 (value!3242 (findMin!0 (tail!671 h2!14))))))

(assert (= (and b!51901 c!11172) b!51899))

(assert (= (and b!51901 (not c!11172)) b!51905))

(assert (= (and b!51904 c!11173) b!51898))

(assert (= (and b!51904 (not c!11173)) b!51901))

(assert (= (and d!44064 c!11174) b!51900))

(assert (= (and d!44064 (not c!11174)) b!51904))

(assert (= (and d!44064 c!11171) b!51903))

(assert (= (and d!44064 (not c!11171)) b!51902))

(declare-fun m!55875 () Bool)

(assert (=> b!51903 m!55875))

(declare-fun m!55877 () Bool)

(assert (=> b!51904 m!55877))

(declare-fun m!55879 () Bool)

(assert (=> b!51902 m!55879))

(declare-fun m!55881 () Bool)

(assert (=> b!51902 m!55881))

(assert (=> b!51905 m!55877))

(assert (=> b!51901 m!55877))

(assert (=> b!51851 d!44064))

(push 1)

(assert (not b!51905))

(assert (not b!51903))

(assert (not b!51901))

(assert (not d!44060))

(assert (not b!51904))

(assert (not b!51877))

(assert (not b!51902))

(assert (not b!51873))

(assert (not d!44058))

(assert (not d!44062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44066 () Bool)

(declare-fun c!11177 () Bool)

(assert (=> d!44066 (= c!11177 (is-Empty!118 lt!9099))))

(declare-fun e!26952 () (Set (_ BitVec 32)))

(assert (=> d!44066 (= (heapContent!0 lt!9099) e!26952)))

(declare-fun b!51910 () Bool)

(assert (=> b!51910 (= e!26952 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51911 () Bool)

(declare-fun nodeContent!0 (Node!60) (Set (_ BitVec 32)))

(assert (=> b!51911 (= e!26952 (union (nodeContent!0 (head!647 lt!9099)) (heapContent!0 (tail!671 lt!9099))))))

(assert (= (and d!44066 c!11177) b!51910))

(assert (= (and d!44066 (not c!11177)) b!51911))

(declare-fun m!55883 () Bool)

(assert (=> b!51911 m!55883))

(declare-fun m!55885 () Bool)

(assert (=> b!51911 m!55885))

(assert (=> d!44062 d!44066))

(declare-fun d!44068 () Bool)

(assert (=> d!44068 (= (heapContent!0 Empty!118) (as emptyset (Set (_ BitVec 32))))))

(assert (=> d!44062 d!44068))

(declare-fun b!51923 () Bool)

(declare-fun e!26958 () Heap!16)

(assert (=> b!51923 (= e!26958 (insertNode!0 (link!0 (Node!61 0 #b00000000000000000000000000000000 Empty!118) (head!647 Empty!118)) (tail!671 Empty!118)))))

(declare-fun b!51922 () Bool)

(assert (=> b!51922 (= e!26958 (Nodes!15 (Node!61 0 #b00000000000000000000000000000000 Empty!118) Empty!118))))

(declare-fun b!51921 () Bool)

(declare-fun e!26957 () Heap!16)

(assert (=> b!51921 (= e!26957 e!26958)))

(declare-fun c!11183 () Bool)

(assert (=> b!51921 (= c!11183 (< (rank!22 (Node!61 0 #b00000000000000000000000000000000 Empty!118)) (rank!22 (head!647 Empty!118))))))

(declare-fun d!44070 () Bool)

(declare-fun lt!9105 () Heap!16)

(assert (=> d!44070 (= (heapContent!0 lt!9105) (union (nodeContent!0 (Node!61 0 #b00000000000000000000000000000000 Empty!118)) (heapContent!0 Empty!118)))))

(assert (=> d!44070 (= lt!9105 e!26957)))

(declare-fun c!11182 () Bool)

(assert (=> d!44070 (= c!11182 (is-Empty!118 Empty!118))))

(assert (=> d!44070 (= (insertNode!0 (Node!61 0 #b00000000000000000000000000000000 Empty!118) Empty!118) lt!9105)))

(declare-fun b!51920 () Bool)

(assert (=> b!51920 (= e!26957 (Nodes!15 (Node!61 0 #b00000000000000000000000000000000 Empty!118) Empty!118))))

(assert (= (and b!51921 c!11183) b!51922))

(assert (= (and b!51921 (not c!11183)) b!51923))

(assert (= (and d!44070 c!11182) b!51920))

(assert (= (and d!44070 (not c!11182)) b!51921))

(declare-fun m!55887 () Bool)

(assert (=> b!51923 m!55887))

(assert (=> b!51923 m!55887))

(declare-fun m!55889 () Bool)

(assert (=> b!51923 m!55889))

(declare-fun m!55891 () Bool)

(assert (=> d!44070 m!55891))

(declare-fun m!55893 () Bool)

(assert (=> d!44070 m!55893))

(assert (=> d!44070 m!55863))

(assert (=> d!44062 d!44070))

(declare-fun lt!9108 () Heap!16)

(declare-fun d!44072 () Bool)

(assert (=> d!44072 (= (heapContent!0 lt!9108) (union (heapContent!0 (ite lt!9093 (tail!671 h0!3) h0!3)) (heapContent!0 (ite lt!9093 h1!19 (tail!671 h1!19)))))))

(declare-fun e!26959 () Heap!16)

(assert (=> d!44072 (= lt!9108 e!26959)))

(declare-fun c!11188 () Bool)

(assert (=> d!44072 (= c!11188 (is-Empty!118 (ite lt!9093 h1!19 (tail!671 h1!19))))))

(assert (=> d!44072 (= (merge!1 (ite lt!9093 (tail!671 h0!3) h0!3) (ite lt!9093 h1!19 (tail!671 h1!19))) lt!9108)))

(declare-fun b!51924 () Bool)

(declare-fun e!26960 () Heap!16)

(declare-fun lt!9107 () Heap!16)

(assert (=> b!51924 (= e!26960 (Nodes!15 (head!647 (ite lt!9093 (tail!671 h0!3) h0!3)) lt!9107))))

(declare-fun e!26963 () Heap!16)

(declare-fun b!51925 () Bool)

(assert (=> b!51925 (= e!26963 (insertNode!0 (link!0 (head!647 (ite lt!9093 (tail!671 h0!3) h0!3)) (head!647 (ite lt!9093 h1!19 (tail!671 h1!19)))) (merge!1 (tail!671 (ite lt!9093 (tail!671 h0!3) h0!3)) (tail!671 (ite lt!9093 h1!19 (tail!671 h1!19))))))))

(declare-fun b!51926 () Bool)

(declare-fun e!26962 () Heap!16)

(assert (=> b!51926 (= e!26962 (ite lt!9093 h1!19 (tail!671 h1!19)))))

(declare-fun b!51927 () Bool)

(assert (=> b!51927 (= e!26963 (Nodes!15 (head!647 (ite lt!9093 h1!19 (tail!671 h1!19))) lt!9107))))

(declare-fun b!51928 () Bool)

(assert (=> b!51928 (= e!26959 e!26962)))

(declare-fun c!11187 () Bool)

(assert (=> b!51928 (= c!11187 (is-Empty!118 (ite lt!9093 (tail!671 h0!3) h0!3)))))

(declare-fun lt!9106 () Bool)

(declare-fun b!51929 () Bool)

(declare-fun e!26961 () Heap!16)

(assert (=> b!51929 (= e!26961 (merge!1 (ite lt!9106 (tail!671 (ite lt!9093 (tail!671 h0!3) h0!3)) (ite lt!9093 (tail!671 h0!3) h0!3)) (ite lt!9106 (ite lt!9093 h1!19 (tail!671 h1!19)) (tail!671 (ite lt!9093 h1!19 (tail!671 h1!19))))))))

(declare-fun b!51930 () Bool)

(assert (=> b!51930 (= e!26959 (ite lt!9093 (tail!671 h0!3) h0!3))))

(declare-fun b!51931 () Bool)

(assert (=> b!51931 (= e!26962 e!26960)))

(declare-fun c!11184 () Bool)

(assert (=> b!51931 (= c!11184 lt!9106)))

(assert (=> b!51931 (= lt!9107 e!26961)))

(declare-fun c!11185 () Bool)

(assert (=> b!51931 (= c!11185 (or lt!9106 (< (rank!22 (head!647 (ite lt!9093 h1!19 (tail!671 h1!19)))) (rank!22 (head!647 (ite lt!9093 (tail!671 h0!3) h0!3))))))))

(assert (=> b!51931 (= lt!9106 (< (rank!22 (head!647 (ite lt!9093 (tail!671 h0!3) h0!3))) (rank!22 (head!647 (ite lt!9093 h1!19 (tail!671 h1!19))))))))

(declare-fun b!51932 () Bool)

(assert (=> b!51932 (= e!26960 e!26963)))

(declare-fun c!11186 () Bool)

(assert (=> b!51932 (= c!11186 (< (rank!22 (head!647 (ite lt!9093 h1!19 (tail!671 h1!19)))) (rank!22 (head!647 (ite lt!9093 (tail!671 h0!3) h0!3)))))))

(declare-fun b!51933 () Bool)

(declare-fun res!23647 () Heap!16)

(assert (=> b!51933 (= e!26961 res!23647)))

(assert (=> b!51933 true))

(assert (=> b!51933 true))

(assert (= (and b!51931 c!11185) b!51929))

(assert (= (and b!51931 (not c!11185)) b!51933))

(assert (= (and b!51932 c!11186) b!51927))

(assert (= (and b!51932 (not c!11186)) b!51925))

(assert (= (and b!51931 c!11184) b!51924))

(assert (= (and b!51931 (not c!11184)) b!51932))

(assert (= (and b!51928 c!11187) b!51926))

(assert (= (and b!51928 (not c!11187)) b!51931))

(assert (= (and d!44072 c!11188) b!51930))

(assert (= (and d!44072 (not c!11188)) b!51928))

(declare-fun m!55895 () Bool)

(assert (=> d!44072 m!55895))

(declare-fun m!55897 () Bool)

(assert (=> d!44072 m!55897))

(declare-fun m!55899 () Bool)

(assert (=> d!44072 m!55899))

(declare-fun m!55901 () Bool)

(assert (=> b!51925 m!55901))

(declare-fun m!55903 () Bool)

(assert (=> b!51925 m!55903))

(assert (=> b!51925 m!55901))

(assert (=> b!51925 m!55903))

(declare-fun m!55905 () Bool)

(assert (=> b!51925 m!55905))

(declare-fun m!55907 () Bool)

(assert (=> b!51929 m!55907))

(assert (=> b!51877 d!44072))

(declare-fun d!44074 () Bool)

(declare-fun c!11189 () Bool)

(assert (=> d!44074 (= c!11189 (is-Empty!118 lt!9095))))

(declare-fun e!26964 () (Set (_ BitVec 32)))

(assert (=> d!44074 (= (heapContent!0 lt!9095) e!26964)))

(declare-fun b!51934 () Bool)

(assert (=> b!51934 (= e!26964 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51935 () Bool)

(assert (=> b!51935 (= e!26964 (union (nodeContent!0 (head!647 lt!9095)) (heapContent!0 (tail!671 lt!9095))))))

(assert (= (and d!44074 c!11189) b!51934))

(assert (= (and d!44074 (not c!11189)) b!51935))

(declare-fun m!55909 () Bool)

(assert (=> b!51935 m!55909))

(declare-fun m!55911 () Bool)

(assert (=> b!51935 m!55911))

(assert (=> d!44058 d!44074))

(declare-fun d!44076 () Bool)

(declare-fun c!11190 () Bool)

(assert (=> d!44076 (= c!11190 (is-Empty!118 h0!3))))

(declare-fun e!26965 () (Set (_ BitVec 32)))

(assert (=> d!44076 (= (heapContent!0 h0!3) e!26965)))

(declare-fun b!51936 () Bool)

(assert (=> b!51936 (= e!26965 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51937 () Bool)

(assert (=> b!51937 (= e!26965 (union (nodeContent!0 (head!647 h0!3)) (heapContent!0 (tail!671 h0!3))))))

(assert (= (and d!44076 c!11190) b!51936))

(assert (= (and d!44076 (not c!11190)) b!51937))

(declare-fun m!55913 () Bool)

(assert (=> b!51937 m!55913))

(declare-fun m!55915 () Bool)

(assert (=> b!51937 m!55915))

(assert (=> d!44058 d!44076))

(declare-fun d!44078 () Bool)

(declare-fun c!11191 () Bool)

(assert (=> d!44078 (= c!11191 (is-Empty!118 h1!19))))

(declare-fun e!26966 () (Set (_ BitVec 32)))

(assert (=> d!44078 (= (heapContent!0 h1!19) e!26966)))

(declare-fun b!51938 () Bool)

(assert (=> b!51938 (= e!26966 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51939 () Bool)

(assert (=> b!51939 (= e!26966 (union (nodeContent!0 (head!647 h1!19)) (heapContent!0 (tail!671 h1!19))))))

(assert (= (and d!44078 c!11191) b!51938))

(assert (= (and d!44078 (not c!11191)) b!51939))

(declare-fun m!55917 () Bool)

(assert (=> b!51939 m!55917))

(declare-fun m!55919 () Bool)

(assert (=> b!51939 m!55919))

(assert (=> d!44058 d!44078))

(declare-fun d!44080 () Bool)

(declare-fun lt!9111 () Bool)

(assert (=> d!44080 (= lt!9111 (= (heapContent!0 h2!14) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!44080 (= lt!9111 (= h2!14 Empty!118))))

(assert (=> d!44080 (= (isEmpty!6 h2!14) lt!9111)))

(declare-fun bs!23795 () Bool)

(assert (= bs!23795 d!44080))

(assert (=> bs!23795 m!55879))

(assert (=> b!51903 d!44080))

(declare-fun b!51943 () Bool)

(declare-fun e!26968 () Heap!16)

(assert (=> b!51943 (= e!26968 (insertNode!0 (link!0 (link!0 (head!647 h0!3) (head!647 h1!19)) (head!647 (merge!1 (tail!671 h0!3) (tail!671 h1!19)))) (tail!671 (merge!1 (tail!671 h0!3) (tail!671 h1!19)))))))

(declare-fun b!51942 () Bool)

(assert (=> b!51942 (= e!26968 (Nodes!15 (link!0 (head!647 h0!3) (head!647 h1!19)) (merge!1 (tail!671 h0!3) (tail!671 h1!19))))))

(declare-fun b!51941 () Bool)

(declare-fun e!26967 () Heap!16)

(assert (=> b!51941 (= e!26967 e!26968)))

(declare-fun c!11193 () Bool)

(assert (=> b!51941 (= c!11193 (< (rank!22 (link!0 (head!647 h0!3) (head!647 h1!19))) (rank!22 (head!647 (merge!1 (tail!671 h0!3) (tail!671 h1!19))))))))

(declare-fun d!44082 () Bool)

(declare-fun lt!9112 () Heap!16)

(assert (=> d!44082 (= (heapContent!0 lt!9112) (union (nodeContent!0 (link!0 (head!647 h0!3) (head!647 h1!19))) (heapContent!0 (merge!1 (tail!671 h0!3) (tail!671 h1!19)))))))

(assert (=> d!44082 (= lt!9112 e!26967)))

(declare-fun c!11192 () Bool)

(assert (=> d!44082 (= c!11192 (is-Empty!118 (merge!1 (tail!671 h0!3) (tail!671 h1!19))))))

(assert (=> d!44082 (= (insertNode!0 (link!0 (head!647 h0!3) (head!647 h1!19)) (merge!1 (tail!671 h0!3) (tail!671 h1!19))) lt!9112)))

(declare-fun b!51940 () Bool)

(assert (=> b!51940 (= e!26967 (Nodes!15 (link!0 (head!647 h0!3) (head!647 h1!19)) Empty!118))))

(assert (= (and b!51941 c!11193) b!51942))

(assert (= (and b!51941 (not c!11193)) b!51943))

(assert (= (and d!44082 c!11192) b!51940))

(assert (= (and d!44082 (not c!11192)) b!51941))

(assert (=> b!51943 m!55853))

(declare-fun m!55921 () Bool)

(assert (=> b!51943 m!55921))

(assert (=> b!51943 m!55921))

(declare-fun m!55923 () Bool)

(assert (=> b!51943 m!55923))

(declare-fun m!55925 () Bool)

(assert (=> d!44082 m!55925))

(assert (=> d!44082 m!55853))

(declare-fun m!55927 () Bool)

(assert (=> d!44082 m!55927))

(assert (=> d!44082 m!55855))

(declare-fun m!55929 () Bool)

(assert (=> d!44082 m!55929))

(assert (=> b!51873 d!44082))

(declare-fun d!44084 () Bool)

(assert (=> d!44084 (= (link!0 (head!647 h0!3) (head!647 h1!19)) (ite (bvsle (elem!94 (head!647 h0!3)) (elem!94 (head!647 h1!19))) (Node!61 (+ (rank!22 (head!647 h0!3)) 1) (elem!94 (head!647 h0!3)) (Nodes!15 (head!647 h1!19) (nodes!22 (head!647 h0!3)))) (Node!61 (+ (rank!22 (head!647 h0!3)) 1) (elem!94 (head!647 h1!19)) (Nodes!15 (head!647 h0!3) (nodes!22 (head!647 h1!19))))))))

(assert (=> b!51873 d!44084))

(declare-fun d!44086 () Bool)

(declare-fun lt!9115 () Heap!16)

(assert (=> d!44086 (= (heapContent!0 lt!9115) (union (heapContent!0 (tail!671 h0!3)) (heapContent!0 (tail!671 h1!19))))))

(declare-fun e!26969 () Heap!16)

(assert (=> d!44086 (= lt!9115 e!26969)))

(declare-fun c!11198 () Bool)

(assert (=> d!44086 (= c!11198 (is-Empty!118 (tail!671 h1!19)))))

(assert (=> d!44086 (= (merge!1 (tail!671 h0!3) (tail!671 h1!19)) lt!9115)))

(declare-fun b!51944 () Bool)

(declare-fun e!26970 () Heap!16)

(declare-fun lt!9114 () Heap!16)

(assert (=> b!51944 (= e!26970 (Nodes!15 (head!647 (tail!671 h0!3)) lt!9114))))

(declare-fun b!51945 () Bool)

(declare-fun e!26973 () Heap!16)

(assert (=> b!51945 (= e!26973 (insertNode!0 (link!0 (head!647 (tail!671 h0!3)) (head!647 (tail!671 h1!19))) (merge!1 (tail!671 (tail!671 h0!3)) (tail!671 (tail!671 h1!19)))))))

(declare-fun b!51946 () Bool)

(declare-fun e!26972 () Heap!16)

(assert (=> b!51946 (= e!26972 (tail!671 h1!19))))

(declare-fun b!51947 () Bool)

(assert (=> b!51947 (= e!26973 (Nodes!15 (head!647 (tail!671 h1!19)) lt!9114))))

(declare-fun b!51948 () Bool)

(assert (=> b!51948 (= e!26969 e!26972)))

(declare-fun c!11197 () Bool)

(assert (=> b!51948 (= c!11197 (is-Empty!118 (tail!671 h0!3)))))

(declare-fun e!26971 () Heap!16)

(declare-fun lt!9113 () Bool)

(declare-fun b!51949 () Bool)

(assert (=> b!51949 (= e!26971 (merge!1 (ite lt!9113 (tail!671 (tail!671 h0!3)) (tail!671 h0!3)) (ite lt!9113 (tail!671 h1!19) (tail!671 (tail!671 h1!19)))))))

(declare-fun b!51950 () Bool)

(assert (=> b!51950 (= e!26969 (tail!671 h0!3))))

(declare-fun b!51951 () Bool)

(assert (=> b!51951 (= e!26972 e!26970)))

(declare-fun c!11194 () Bool)

(assert (=> b!51951 (= c!11194 lt!9113)))

(assert (=> b!51951 (= lt!9114 e!26971)))

(declare-fun c!11195 () Bool)

(assert (=> b!51951 (= c!11195 (or lt!9113 (< (rank!22 (head!647 (tail!671 h1!19))) (rank!22 (head!647 (tail!671 h0!3))))))))

(assert (=> b!51951 (= lt!9113 (< (rank!22 (head!647 (tail!671 h0!3))) (rank!22 (head!647 (tail!671 h1!19)))))))

(declare-fun b!51952 () Bool)

(assert (=> b!51952 (= e!26970 e!26973)))

(declare-fun c!11196 () Bool)

(assert (=> b!51952 (= c!11196 (< (rank!22 (head!647 (tail!671 h1!19))) (rank!22 (head!647 (tail!671 h0!3)))))))

(declare-fun b!51953 () Bool)

(declare-fun res!23649 () Heap!16)

(assert (=> b!51953 (= e!26971 res!23649)))

(assert (=> b!51953 true))

(assert (=> b!51953 true))

(assert (= (and b!51951 c!11195) b!51949))

(assert (= (and b!51951 (not c!11195)) b!51953))

(assert (= (and b!51952 c!11196) b!51947))

(assert (= (and b!51952 (not c!11196)) b!51945))

(assert (= (and b!51951 c!11194) b!51944))

(assert (= (and b!51951 (not c!11194)) b!51952))

(assert (= (and b!51948 c!11197) b!51946))

(assert (= (and b!51948 (not c!11197)) b!51951))

(assert (= (and d!44086 c!11198) b!51950))

(assert (= (and d!44086 (not c!11198)) b!51948))

(declare-fun m!55931 () Bool)

(assert (=> d!44086 m!55931))

(assert (=> d!44086 m!55915))

(assert (=> d!44086 m!55919))

(declare-fun m!55933 () Bool)

(assert (=> b!51945 m!55933))

(declare-fun m!55935 () Bool)

(assert (=> b!51945 m!55935))

(assert (=> b!51945 m!55933))

(assert (=> b!51945 m!55935))

(declare-fun m!55937 () Bool)

(assert (=> b!51945 m!55937))

(declare-fun m!55939 () Bool)

(assert (=> b!51949 m!55939))

(assert (=> b!51873 d!44086))

(declare-fun d!44088 () Bool)

(declare-fun c!11199 () Bool)

(assert (=> d!44088 (= c!11199 (is-Empty!118 h2!14))))

(declare-fun e!26974 () (Set (_ BitVec 32)))

(assert (=> d!44088 (= (heapContent!0 h2!14) e!26974)))

(declare-fun b!51954 () Bool)

(assert (=> b!51954 (= e!26974 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51955 () Bool)

(assert (=> b!51955 (= e!26974 (union (nodeContent!0 (head!647 h2!14)) (heapContent!0 (tail!671 h2!14))))))

(assert (= (and d!44088 c!11199) b!51954))

(assert (= (and d!44088 (not c!11199)) b!51955))

(declare-fun m!55941 () Bool)

(assert (=> b!51955 m!55941))

(declare-fun m!55943 () Bool)

(assert (=> b!51955 m!55943))

(assert (=> b!51902 d!44088))

(declare-fun b!51956 () Bool)

(declare-fun e!26976 () OptInt!6)

(assert (=> b!51956 (= e!26976 (Some!230 (elem!94 (head!647 (tail!671 h2!14)))))))

(declare-fun d!44090 () Bool)

(declare-fun e!26978 () Bool)

(assert (=> d!44090 e!26978))

(declare-fun c!11200 () Bool)

(declare-fun lt!9116 () OptInt!6)

(assert (=> d!44090 (= c!11200 (is-None!231 lt!9116))))

(declare-fun e!26977 () OptInt!6)

(assert (=> d!44090 (= lt!9116 e!26977)))

(declare-fun c!11203 () Bool)

(assert (=> d!44090 (= c!11203 (is-Empty!118 (tail!671 h2!14)))))

(assert (=> d!44090 (= (findMin!0 (tail!671 h2!14)) lt!9116)))

(declare-fun b!51957 () Bool)

(declare-fun e!26975 () (_ BitVec 32))

(assert (=> b!51957 (= e!26975 (elem!94 (head!647 (tail!671 h2!14))))))

(declare-fun b!51958 () Bool)

(assert (=> b!51958 (= e!26977 None!231)))

(declare-fun b!51959 () Bool)

(assert (=> b!51959 (= e!26976 (Some!230 e!26975))))

(declare-fun c!11201 () Bool)

(assert (=> b!51959 (= c!11201 (bvslt (elem!94 (head!647 (tail!671 h2!14))) (value!3242 (findMin!0 (tail!671 (tail!671 h2!14))))))))

(declare-fun b!51960 () Bool)

(assert (=> b!51960 (= e!26978 (member (value!3242 lt!9116) (heapContent!0 (tail!671 h2!14))))))

(declare-fun b!51961 () Bool)

(assert (=> b!51961 (= e!26978 (isEmpty!6 (tail!671 h2!14)))))

(declare-fun b!51962 () Bool)

(assert (=> b!51962 (= e!26977 e!26976)))

(declare-fun c!11202 () Bool)

(assert (=> b!51962 (= c!11202 (is-None!231 (findMin!0 (tail!671 (tail!671 h2!14)))))))

(declare-fun b!51963 () Bool)

(assert (=> b!51963 (= e!26975 (value!3242 (findMin!0 (tail!671 (tail!671 h2!14)))))))

(assert (= (and b!51959 c!11201) b!51957))

(assert (= (and b!51959 (not c!11201)) b!51963))

(assert (= (and b!51962 c!11202) b!51956))

(assert (= (and b!51962 (not c!11202)) b!51959))

(assert (= (and d!44090 c!11203) b!51958))

(assert (= (and d!44090 (not c!11203)) b!51962))

(assert (= (and d!44090 c!11200) b!51961))

(assert (= (and d!44090 (not c!11200)) b!51960))

(declare-fun m!55945 () Bool)

(assert (=> b!51961 m!55945))

(declare-fun m!55947 () Bool)

(assert (=> b!51962 m!55947))

(assert (=> b!51960 m!55943))

(declare-fun m!55949 () Bool)

(assert (=> b!51960 m!55949))

(assert (=> b!51963 m!55947))

(assert (=> b!51959 m!55947))

(assert (=> b!51905 d!44090))

(assert (=> b!51904 d!44090))

(declare-fun d!44092 () Bool)

(declare-fun c!11204 () Bool)

(assert (=> d!44092 (= c!11204 (is-Empty!118 lt!9098))))

(declare-fun e!26979 () (Set (_ BitVec 32)))

(assert (=> d!44092 (= (heapContent!0 lt!9098) e!26979)))

(declare-fun b!51964 () Bool)

(assert (=> b!51964 (= e!26979 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51965 () Bool)

(assert (=> b!51965 (= e!26979 (union (nodeContent!0 (head!647 lt!9098)) (heapContent!0 (tail!671 lt!9098))))))

(assert (= (and d!44092 c!11204) b!51964))

(assert (= (and d!44092 (not c!11204)) b!51965))

(declare-fun m!55951 () Bool)

(assert (=> b!51965 m!55951))

(declare-fun m!55953 () Bool)

(assert (=> b!51965 m!55953))

(assert (=> d!44060 d!44092))

(assert (=> d!44060 d!44068))

(declare-fun b!51969 () Bool)

(declare-fun e!26981 () Heap!16)

(assert (=> b!51969 (= e!26981 (insertNode!0 (link!0 (Node!61 0 #b00000000000000000000000000101010 Empty!118) (head!647 Empty!118)) (tail!671 Empty!118)))))

(declare-fun b!51968 () Bool)

(assert (=> b!51968 (= e!26981 (Nodes!15 (Node!61 0 #b00000000000000000000000000101010 Empty!118) Empty!118))))

(declare-fun b!51967 () Bool)

(declare-fun e!26980 () Heap!16)

(assert (=> b!51967 (= e!26980 e!26981)))

(declare-fun c!11206 () Bool)

(assert (=> b!51967 (= c!11206 (< (rank!22 (Node!61 0 #b00000000000000000000000000101010 Empty!118)) (rank!22 (head!647 Empty!118))))))

(declare-fun d!44094 () Bool)

(declare-fun lt!9117 () Heap!16)

(assert (=> d!44094 (= (heapContent!0 lt!9117) (union (nodeContent!0 (Node!61 0 #b00000000000000000000000000101010 Empty!118)) (heapContent!0 Empty!118)))))

(assert (=> d!44094 (= lt!9117 e!26980)))

(declare-fun c!11205 () Bool)

(assert (=> d!44094 (= c!11205 (is-Empty!118 Empty!118))))

(assert (=> d!44094 (= (insertNode!0 (Node!61 0 #b00000000000000000000000000101010 Empty!118) Empty!118) lt!9117)))

(declare-fun b!51966 () Bool)

(assert (=> b!51966 (= e!26980 (Nodes!15 (Node!61 0 #b00000000000000000000000000101010 Empty!118) Empty!118))))

(assert (= (and b!51967 c!11206) b!51968))

(assert (= (and b!51967 (not c!11206)) b!51969))

(assert (= (and d!44094 c!11205) b!51966))

(assert (= (and d!44094 (not c!11205)) b!51967))

(declare-fun m!55955 () Bool)

(assert (=> b!51969 m!55955))

(assert (=> b!51969 m!55955))

(declare-fun m!55957 () Bool)

(assert (=> b!51969 m!55957))

(declare-fun m!55959 () Bool)

(assert (=> d!44094 m!55959))

(declare-fun m!55961 () Bool)

(assert (=> d!44094 m!55961))

(assert (=> d!44094 m!55863))

(assert (=> d!44060 d!44094))

(assert (=> b!51901 d!44090))

(push 1)

(assert (not b!51937))

(assert (not b!51935))

(assert (not d!44094))

(assert (not b!51961))

(assert (not d!44072))

(assert (not b!51963))

(assert (not b!51959))

(assert (not b!51945))

(assert (not d!44086))

(assert (not b!51960))

(assert (not b!51923))

(assert (not b!51962))

(assert (not d!44070))

(assert (not b!51969))

(assert (not b!51949))

(assert (not b!51939))

(assert (not b!51929))

(assert (not b!51955))

(assert (not b!51965))

(assert (not b!51943))

(assert (not d!44082))

(assert (not b!51911))

(assert (not d!44080))

(assert (not b!51925))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


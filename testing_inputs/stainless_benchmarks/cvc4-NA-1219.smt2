; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8662 () Bool)

(assert start!8662)

(declare-fun b!60019 () Bool)

(declare-fun res!27883 () Bool)

(declare-fun e!32005 () Bool)

(assert (=> b!60019 (=> (not res!27883) (not e!32005))))

(declare-datatypes () ((List!536 (Cons!502 (head!843 (_ BitVec 32)) (tail!869 List!536)) (Nil!503))))

(declare-datatypes () ((LList!12 (LNil!11) (LCons!11 (head!844 List!536) (tail!870 LList!12)))))

(declare-fun llist!36 () LList!12)

(assert (=> b!60019 (= res!27883 (and (not (is-LNil!11 llist!36)) (not (is-LNil!11 (tail!870 llist!36)))))))

(declare-fun b!60021 () Bool)

(declare-fun res!27880 () Bool)

(assert (=> b!60021 (=> (not res!27880) (not e!32005))))

(declare-fun llist!63 () LList!12)

(assert (=> b!60021 (= res!27880 (= llist!63 (tail!870 (tail!870 llist!36))))))

(declare-fun b!60022 () Bool)

(declare-fun lIsSorted!0 (LList!12) Bool)

(assert (=> b!60022 (= e!32005 (not (lIsSorted!0 llist!63)))))

(declare-fun b!60020 () Bool)

(declare-fun res!27882 () Bool)

(assert (=> b!60020 (=> (not res!27882) (not e!32005))))

(declare-fun head!812 () List!536)

(declare-fun mergeFast!0 (List!536 List!536) List!536)

(assert (=> b!60020 (= res!27882 (= head!812 (mergeFast!0 (head!844 llist!36) (head!844 (tail!870 llist!36)))))))

(declare-fun res!27881 () Bool)

(assert (=> start!8662 (=> (not res!27881) (not e!32005))))

(assert (=> start!8662 (= res!27881 (lIsSorted!0 llist!36))))

(assert (=> start!8662 e!32005))

(assert (=> start!8662 true))

(assert (= (and start!8662 res!27881) b!60019))

(assert (= (and b!60019 res!27883) b!60020))

(assert (= (and b!60020 res!27882) b!60021))

(assert (= (and b!60021 res!27880) b!60022))

(declare-fun m!64876 () Bool)

(assert (=> b!60022 m!64876))

(declare-fun m!64878 () Bool)

(assert (=> b!60020 m!64878))

(declare-fun m!64880 () Bool)

(assert (=> start!8662 m!64880))

(push 1)

(assert (not b!60020))

(assert (not b!60022))

(assert (not start!8662))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!60033 () Bool)

(declare-fun e!32014 () List!536)

(assert (=> b!60033 (= e!32014 (head!844 llist!36))))

(declare-fun b!60034 () Bool)

(declare-fun e!32013 () List!536)

(assert (=> b!60034 (= e!32014 e!32013)))

(declare-fun c!13015 () Bool)

(assert (=> b!60034 (= c!13015 (is-Nil!503 (head!844 llist!36)))))

(declare-fun b!60035 () Bool)

(declare-fun e!32012 () Bool)

(declare-fun isSorted!4 (List!536) Bool)

(assert (=> b!60035 (= e!32012 (isSorted!4 (head!844 (tail!870 llist!36))))))

(declare-fun b!60036 () Bool)

(assert (=> b!60036 (= e!32013 (head!844 (tail!870 llist!36)))))

(declare-fun d!51329 () Bool)

(declare-fun lt!11106 () List!536)

(declare-fun mergeSpec!0 (List!536 List!536 List!536) Bool)

(assert (=> d!51329 (mergeSpec!0 (head!844 llist!36) (head!844 (tail!870 llist!36)) lt!11106)))

(assert (=> d!51329 (= lt!11106 e!32014)))

(declare-fun c!13014 () Bool)

(assert (=> d!51329 (= c!13014 (is-Nil!503 (head!844 (tail!870 llist!36))))))

(assert (=> d!51329 e!32012))

(declare-fun res!27890 () Bool)

(assert (=> d!51329 (=> (not res!27890) (not e!32012))))

(assert (=> d!51329 (= res!27890 (isSorted!4 (head!844 llist!36)))))

(assert (=> d!51329 (= (mergeFast!0 (head!844 llist!36) (head!844 (tail!870 llist!36))) lt!11106)))

(declare-fun lt!11107 () Bool)

(declare-fun lt!11105 () List!536)

(declare-fun b!60037 () Bool)

(assert (=> b!60037 (= e!32013 (ite lt!11107 (Cons!502 (head!843 (head!844 llist!36)) lt!11105) (Cons!502 (head!843 (head!844 (tail!870 llist!36))) lt!11105)))))

(assert (=> b!60037 (= lt!11105 (mergeFast!0 (ite lt!11107 (tail!869 (head!844 llist!36)) (head!844 llist!36)) (ite lt!11107 (head!844 (tail!870 llist!36)) (tail!869 (head!844 (tail!870 llist!36))))))))

(assert (=> b!60037 (= lt!11107 (bvsle (head!843 (head!844 llist!36)) (head!843 (head!844 (tail!870 llist!36)))))))

(assert (= (and d!51329 res!27890) b!60035))

(assert (= (and b!60034 c!13015) b!60036))

(assert (= (and b!60034 (not c!13015)) b!60037))

(assert (= (and d!51329 c!13014) b!60033))

(assert (= (and d!51329 (not c!13014)) b!60034))

(declare-fun m!64882 () Bool)

(assert (=> b!60035 m!64882))

(declare-fun m!64884 () Bool)

(assert (=> d!51329 m!64884))

(declare-fun m!64886 () Bool)

(assert (=> d!51329 m!64886))

(declare-fun m!64888 () Bool)

(assert (=> b!60037 m!64888))

(assert (=> b!60020 d!51329))

(declare-fun d!51331 () Bool)

(declare-fun res!27895 () Bool)

(declare-fun e!32019 () Bool)

(assert (=> d!51331 (=> res!27895 e!32019)))

(assert (=> d!51331 (= res!27895 (is-LNil!11 llist!63))))

(assert (=> d!51331 (= (lIsSorted!0 llist!63) e!32019)))

(declare-fun b!60042 () Bool)

(declare-fun e!32020 () Bool)

(assert (=> b!60042 (= e!32019 e!32020)))

(declare-fun res!27896 () Bool)

(assert (=> b!60042 (=> (not res!27896) (not e!32020))))

(assert (=> b!60042 (= res!27896 (isSorted!4 (head!844 llist!63)))))

(declare-fun b!60043 () Bool)

(assert (=> b!60043 (= e!32020 (lIsSorted!0 (tail!870 llist!63)))))

(assert (= (and d!51331 (not res!27895)) b!60042))

(assert (= (and b!60042 res!27896) b!60043))

(declare-fun m!64890 () Bool)

(assert (=> b!60042 m!64890))

(declare-fun m!64892 () Bool)

(assert (=> b!60043 m!64892))

(assert (=> b!60022 d!51331))

(declare-fun d!51333 () Bool)

(declare-fun res!27897 () Bool)

(declare-fun e!32021 () Bool)

(assert (=> d!51333 (=> res!27897 e!32021)))

(assert (=> d!51333 (= res!27897 (is-LNil!11 llist!36))))

(assert (=> d!51333 (= (lIsSorted!0 llist!36) e!32021)))

(declare-fun b!60044 () Bool)

(declare-fun e!32022 () Bool)

(assert (=> b!60044 (= e!32021 e!32022)))

(declare-fun res!27898 () Bool)

(assert (=> b!60044 (=> (not res!27898) (not e!32022))))

(assert (=> b!60044 (= res!27898 (isSorted!4 (head!844 llist!36)))))

(declare-fun b!60045 () Bool)

(assert (=> b!60045 (= e!32022 (lIsSorted!0 (tail!870 llist!36)))))

(assert (= (and d!51333 (not res!27897)) b!60044))

(assert (= (and b!60044 res!27898) b!60045))

(assert (=> b!60044 m!64886))

(declare-fun m!64894 () Bool)

(assert (=> b!60045 m!64894))

(assert (=> start!8662 d!51333))

(push 1)

(assert (not b!60035))

(assert (not b!60037))

(assert (not b!60042))

(assert (not b!60043))

(assert (not d!51329))

(assert (not b!60045))

(assert (not b!60044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51335 () Bool)

(declare-fun res!27903 () Bool)

(declare-fun e!32027 () Bool)

(assert (=> d!51335 (=> res!27903 e!32027)))

(assert (=> d!51335 (= res!27903 (or (is-Nil!503 (head!844 (tail!870 llist!36))) (and (is-Cons!502 (head!844 (tail!870 llist!36))) (is-Nil!503 (tail!869 (head!844 (tail!870 llist!36)))))))))

(assert (=> d!51335 (= (isSorted!4 (head!844 (tail!870 llist!36))) e!32027)))

(declare-fun b!60050 () Bool)

(declare-fun e!32028 () Bool)

(assert (=> b!60050 (= e!32027 e!32028)))

(declare-fun res!27904 () Bool)

(assert (=> b!60050 (=> (not res!27904) (not e!32028))))

(assert (=> b!60050 (= res!27904 (not (and (is-Cons!502 (head!844 (tail!870 llist!36))) (is-Cons!502 (tail!869 (head!844 (tail!870 llist!36)))) (bvsgt (head!843 (head!844 (tail!870 llist!36))) (head!843 (tail!869 (head!844 (tail!870 llist!36))))))))))

(declare-fun b!60051 () Bool)

(assert (=> b!60051 (= e!32028 (isSorted!4 (tail!869 (head!844 (tail!870 llist!36)))))))

(assert (= (and d!51335 (not res!27903)) b!60050))

(assert (= (and b!60050 res!27904) b!60051))

(declare-fun m!64896 () Bool)

(assert (=> b!60051 m!64896))

(assert (=> b!60035 d!51335))

(declare-fun b!60052 () Bool)

(declare-fun e!32031 () List!536)

(assert (=> b!60052 (= e!32031 (ite lt!11107 (tail!869 (head!844 llist!36)) (head!844 llist!36)))))

(declare-fun b!60053 () Bool)

(declare-fun e!32030 () List!536)

(assert (=> b!60053 (= e!32031 e!32030)))

(declare-fun c!13017 () Bool)

(assert (=> b!60053 (= c!13017 (is-Nil!503 (ite lt!11107 (tail!869 (head!844 llist!36)) (head!844 llist!36))))))

(declare-fun b!60054 () Bool)

(declare-fun e!32029 () Bool)

(assert (=> b!60054 (= e!32029 (isSorted!4 (ite lt!11107 (head!844 (tail!870 llist!36)) (tail!869 (head!844 (tail!870 llist!36))))))))

(declare-fun b!60055 () Bool)

(assert (=> b!60055 (= e!32030 (ite lt!11107 (head!844 (tail!870 llist!36)) (tail!869 (head!844 (tail!870 llist!36)))))))

(declare-fun d!51337 () Bool)

(declare-fun lt!11109 () List!536)

(assert (=> d!51337 (mergeSpec!0 (ite lt!11107 (tail!869 (head!844 llist!36)) (head!844 llist!36)) (ite lt!11107 (head!844 (tail!870 llist!36)) (tail!869 (head!844 (tail!870 llist!36)))) lt!11109)))

(assert (=> d!51337 (= lt!11109 e!32031)))

(declare-fun c!13016 () Bool)

(assert (=> d!51337 (= c!13016 (is-Nil!503 (ite lt!11107 (head!844 (tail!870 llist!36)) (tail!869 (head!844 (tail!870 llist!36))))))))

(assert (=> d!51337 e!32029))

(declare-fun res!27905 () Bool)

(assert (=> d!51337 (=> (not res!27905) (not e!32029))))

(assert (=> d!51337 (= res!27905 (isSorted!4 (ite lt!11107 (tail!869 (head!844 llist!36)) (head!844 llist!36))))))

(assert (=> d!51337 (= (mergeFast!0 (ite lt!11107 (tail!869 (head!844 llist!36)) (head!844 llist!36)) (ite lt!11107 (head!844 (tail!870 llist!36)) (tail!869 (head!844 (tail!870 llist!36))))) lt!11109)))

(declare-fun lt!11110 () Bool)

(declare-fun b!60056 () Bool)

(declare-fun lt!11108 () List!536)

(assert (=> b!60056 (= e!32030 (ite lt!11110 (Cons!502 (head!843 (ite lt!11107 (tail!869 (head!844 llist!36)) (head!844 llist!36))) lt!11108) (Cons!502 (head!843 (ite lt!11107 (head!844 (tail!870 llist!36)) (tail!869 (head!844 (tail!870 llist!36))))) lt!11108)))))

(assert (=> b!60056 (= lt!11108 (mergeFast!0 (ite lt!11110 (tail!869 (ite lt!11107 (tail!869 (head!844 llist!36)) (head!844 llist!36))) (ite lt!11107 (tail!869 (head!844 llist!36)) (head!844 llist!36))) (ite lt!11110 (ite lt!11107 (head!844 (tail!870 llist!36)) (tail!869 (head!844 (tail!870 llist!36)))) (tail!869 (ite lt!11107 (head!844 (tail!870 llist!36)) (tail!869 (head!844 (tail!870 llist!36))))))))))

(assert (=> b!60056 (= lt!11110 (bvsle (head!843 (ite lt!11107 (tail!869 (head!844 llist!36)) (head!844 llist!36))) (head!843 (ite lt!11107 (head!844 (tail!870 llist!36)) (tail!869 (head!844 (tail!870 llist!36)))))))))

(assert (= (and d!51337 res!27905) b!60054))

(assert (= (and b!60053 c!13017) b!60055))

(assert (= (and b!60053 (not c!13017)) b!60056))

(assert (= (and d!51337 c!13016) b!60052))

(assert (= (and d!51337 (not c!13016)) b!60053))

(declare-fun m!64898 () Bool)

(assert (=> b!60054 m!64898))

(declare-fun m!64900 () Bool)

(assert (=> d!51337 m!64900))

(declare-fun m!64902 () Bool)

(assert (=> d!51337 m!64902))

(declare-fun m!64904 () Bool)

(assert (=> b!60056 m!64904))

(assert (=> b!60037 d!51337))

(declare-fun d!51339 () Bool)

(declare-fun res!27906 () Bool)

(declare-fun e!32032 () Bool)

(assert (=> d!51339 (=> res!27906 e!32032)))

(assert (=> d!51339 (= res!27906 (or (is-Nil!503 (head!844 llist!36)) (and (is-Cons!502 (head!844 llist!36)) (is-Nil!503 (tail!869 (head!844 llist!36))))))))

(assert (=> d!51339 (= (isSorted!4 (head!844 llist!36)) e!32032)))

(declare-fun b!60057 () Bool)

(declare-fun e!32033 () Bool)

(assert (=> b!60057 (= e!32032 e!32033)))

(declare-fun res!27907 () Bool)

(assert (=> b!60057 (=> (not res!27907) (not e!32033))))

(assert (=> b!60057 (= res!27907 (not (and (is-Cons!502 (head!844 llist!36)) (is-Cons!502 (tail!869 (head!844 llist!36))) (bvsgt (head!843 (head!844 llist!36)) (head!843 (tail!869 (head!844 llist!36)))))))))

(declare-fun b!60058 () Bool)

(assert (=> b!60058 (= e!32033 (isSorted!4 (tail!869 (head!844 llist!36))))))

(assert (= (and d!51339 (not res!27906)) b!60057))

(assert (= (and b!60057 res!27907) b!60058))

(declare-fun m!64906 () Bool)

(assert (=> b!60058 m!64906))

(assert (=> b!60044 d!51339))

(declare-fun d!51341 () Bool)

(declare-fun res!27911 () Bool)

(declare-fun e!32036 () Bool)

(assert (=> d!51341 (=> (not res!27911) (not e!32036))))

(assert (=> d!51341 (= res!27911 (isSorted!4 lt!11106))))

(assert (=> d!51341 (= (mergeSpec!0 (head!844 llist!36) (head!844 (tail!870 llist!36)) lt!11106) e!32036)))

(declare-fun b!60061 () Bool)

(declare-fun content!15 (List!536) (Set (_ BitVec 32)))

(assert (=> b!60061 (= e!32036 (= (content!15 lt!11106) (union (content!15 (head!844 llist!36)) (content!15 (head!844 (tail!870 llist!36))))))))

(assert (= (and d!51341 res!27911) b!60061))

(declare-fun m!64908 () Bool)

(assert (=> d!51341 m!64908))

(declare-fun m!64910 () Bool)

(assert (=> b!60061 m!64910))

(declare-fun m!64912 () Bool)

(assert (=> b!60061 m!64912))

(declare-fun m!64914 () Bool)

(assert (=> b!60061 m!64914))

(assert (=> d!51329 d!51341))

(assert (=> d!51329 d!51339))

(declare-fun d!51343 () Bool)

(declare-fun res!27912 () Bool)

(declare-fun e!32037 () Bool)

(assert (=> d!51343 (=> res!27912 e!32037)))

(assert (=> d!51343 (= res!27912 (or (is-Nil!503 (head!844 llist!63)) (and (is-Cons!502 (head!844 llist!63)) (is-Nil!503 (tail!869 (head!844 llist!63))))))))

(assert (=> d!51343 (= (isSorted!4 (head!844 llist!63)) e!32037)))

(declare-fun b!60062 () Bool)

(declare-fun e!32038 () Bool)

(assert (=> b!60062 (= e!32037 e!32038)))

(declare-fun res!27913 () Bool)

(assert (=> b!60062 (=> (not res!27913) (not e!32038))))

(assert (=> b!60062 (= res!27913 (not (and (is-Cons!502 (head!844 llist!63)) (is-Cons!502 (tail!869 (head!844 llist!63))) (bvsgt (head!843 (head!844 llist!63)) (head!843 (tail!869 (head!844 llist!63)))))))))

(declare-fun b!60063 () Bool)

(assert (=> b!60063 (= e!32038 (isSorted!4 (tail!869 (head!844 llist!63))))))

(assert (= (and d!51343 (not res!27912)) b!60062))

(assert (= (and b!60062 res!27913) b!60063))

(declare-fun m!64916 () Bool)

(assert (=> b!60063 m!64916))

(assert (=> b!60042 d!51343))

(declare-fun d!51345 () Bool)

(declare-fun res!27914 () Bool)

(declare-fun e!32039 () Bool)

(assert (=> d!51345 (=> res!27914 e!32039)))

(assert (=> d!51345 (= res!27914 (is-LNil!11 (tail!870 llist!63)))))

(assert (=> d!51345 (= (lIsSorted!0 (tail!870 llist!63)) e!32039)))

(declare-fun b!60064 () Bool)

(declare-fun e!32040 () Bool)

(assert (=> b!60064 (= e!32039 e!32040)))

(declare-fun res!27915 () Bool)

(assert (=> b!60064 (=> (not res!27915) (not e!32040))))

(assert (=> b!60064 (= res!27915 (isSorted!4 (head!844 (tail!870 llist!63))))))

(declare-fun b!60065 () Bool)

(assert (=> b!60065 (= e!32040 (lIsSorted!0 (tail!870 (tail!870 llist!63))))))

(assert (= (and d!51345 (not res!27914)) b!60064))

(assert (= (and b!60064 res!27915) b!60065))

(declare-fun m!64918 () Bool)

(assert (=> b!60064 m!64918))

(declare-fun m!64920 () Bool)

(assert (=> b!60065 m!64920))

(assert (=> b!60043 d!51345))

(declare-fun d!51347 () Bool)

(declare-fun res!27916 () Bool)

(declare-fun e!32041 () Bool)

(assert (=> d!51347 (=> res!27916 e!32041)))

(assert (=> d!51347 (= res!27916 (is-LNil!11 (tail!870 llist!36)))))

(assert (=> d!51347 (= (lIsSorted!0 (tail!870 llist!36)) e!32041)))

(declare-fun b!60066 () Bool)

(declare-fun e!32042 () Bool)

(assert (=> b!60066 (= e!32041 e!32042)))

(declare-fun res!27917 () Bool)

(assert (=> b!60066 (=> (not res!27917) (not e!32042))))

(assert (=> b!60066 (= res!27917 (isSorted!4 (head!844 (tail!870 llist!36))))))

(declare-fun b!60067 () Bool)

(assert (=> b!60067 (= e!32042 (lIsSorted!0 (tail!870 (tail!870 llist!36))))))

(assert (= (and d!51347 (not res!27916)) b!60066))

(assert (= (and b!60066 res!27917) b!60067))

(assert (=> b!60066 m!64882))

(declare-fun m!64922 () Bool)

(assert (=> b!60067 m!64922))

(assert (=> b!60045 d!51347))

(push 1)

(assert (not b!60058))

(assert (not b!60066))

(assert (not b!60054))

(assert (not b!60051))

(assert (not b!60056))

(assert (not b!60065))

(assert (not b!60064))

(assert (not b!60061))

(assert (not b!60063))

(assert (not d!51337))

(assert (not d!51341))

(assert (not b!60067))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


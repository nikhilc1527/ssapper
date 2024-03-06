; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8492 () Bool)

(assert start!8492)

(declare-fun b!59139 () Bool)

(declare-fun res!27482 () Bool)

(declare-fun e!31461 () Bool)

(assert (=> b!59139 (=> (not res!27482) (not e!31461))))

(declare-datatypes () ((List!519 (Cons!485 (head!816 (_ BitVec 32)) (tail!842 List!519)) (Nil!486))))

(declare-fun in!15 () List!519)

(assert (=> b!59139 (= res!27482 (and (not (is-Nil!486 in!15)) (not (is-Nil!486 (tail!842 in!15)))))))

(declare-fun b!59140 () Bool)

(declare-fun res!27476 () Bool)

(assert (=> b!59140 (=> (not res!27476) (not e!31461))))

(declare-datatypes () ((tuple2!294 (tuple2!295 (_1!174 List!519) (_2!174 List!519)))))

(declare-fun x$5!66 () tuple2!294)

(declare-fun split!2 (List!519) tuple2!294)

(assert (=> b!59140 (= res!27476 (= x$5!66 (split!2 in!15)))))

(declare-fun b!59141 () Bool)

(declare-fun res!27479 () Bool)

(assert (=> b!59141 (=> (not res!27479) (not e!31461))))

(declare-fun list2!18 () List!519)

(declare-fun s2!50 () List!519)

(declare-fun weirdSort!0 (Int List!519) List!519)

(declare-fun size!16 (List!519) Int)

(assert (=> b!59141 (= res!27479 (= list2!18 (weirdSort!0 (size!16 s2!50) s2!50)))))

(declare-fun res!27481 () Bool)

(assert (=> start!8492 (=> (not res!27481) (not e!31461))))

(declare-fun s!1846 () Int)

(assert (=> start!8492 (= res!27481 (= s!1846 (size!16 in!15)))))

(assert (=> start!8492 e!31461))

(assert (=> start!8492 true))

(declare-fun b!59142 () Bool)

(declare-fun res!27477 () Bool)

(assert (=> b!59142 (=> (not res!27477) (not e!31461))))

(declare-fun s1!51 () List!519)

(assert (=> b!59142 (= res!27477 (and (= s1!51 (_1!174 x$5!66)) (= s2!50 (_2!174 x$5!66))))))

(declare-fun b!59143 () Bool)

(declare-fun e!31462 () Bool)

(assert (=> b!59143 (= e!31461 e!31462)))

(declare-fun res!27480 () Bool)

(assert (=> b!59143 (=> res!27480 e!31462)))

(declare-fun list1!18 () List!519)

(declare-fun isSorted!4 (List!519) Bool)

(assert (=> b!59143 (= res!27480 (not (isSorted!4 list1!18)))))

(declare-fun b!59144 () Bool)

(declare-fun res!27478 () Bool)

(assert (=> b!59144 (=> (not res!27478) (not e!31461))))

(assert (=> b!59144 (= res!27478 (= list1!18 (weirdSort!0 (size!16 s1!51) s1!51)))))

(declare-fun b!59145 () Bool)

(assert (=> b!59145 (= e!31462 (not (isSorted!4 list2!18)))))

(assert (= (and start!8492 res!27481) b!59139))

(assert (= (and b!59139 res!27482) b!59140))

(assert (= (and b!59140 res!27476) b!59142))

(assert (= (and b!59142 res!27477) b!59144))

(assert (= (and b!59144 res!27478) b!59141))

(assert (= (and b!59141 res!27479) b!59143))

(assert (= (and b!59143 (not res!27480)) b!59145))

(declare-fun m!63906 () Bool)

(assert (=> start!8492 m!63906))

(declare-fun m!63908 () Bool)

(assert (=> b!59143 m!63908))

(declare-fun m!63910 () Bool)

(assert (=> b!59141 m!63910))

(assert (=> b!59141 m!63910))

(declare-fun m!63912 () Bool)

(assert (=> b!59141 m!63912))

(declare-fun m!63914 () Bool)

(assert (=> b!59145 m!63914))

(declare-fun m!63916 () Bool)

(assert (=> b!59140 m!63916))

(declare-fun m!63918 () Bool)

(assert (=> b!59144 m!63918))

(assert (=> b!59144 m!63918))

(declare-fun m!63920 () Bool)

(assert (=> b!59144 m!63920))

(push 1)

(assert (not b!59144))

(assert (not b!59140))

(assert (not b!59145))

(assert (not b!59141))

(assert (not b!59143))

(assert (not start!8492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50967 () Bool)

(declare-fun res!27487 () Bool)

(declare-fun e!31467 () Bool)

(assert (=> d!50967 (=> res!27487 e!31467)))

(assert (=> d!50967 (= res!27487 (or (is-Nil!486 list2!18) (and (is-Cons!485 list2!18) (is-Nil!486 (tail!842 list2!18)))))))

(assert (=> d!50967 (= (isSorted!4 list2!18) e!31467)))

(declare-fun b!59150 () Bool)

(declare-fun e!31468 () Bool)

(assert (=> b!59150 (= e!31467 e!31468)))

(declare-fun res!27488 () Bool)

(assert (=> b!59150 (=> (not res!27488) (not e!31468))))

(assert (=> b!59150 (= res!27488 (not (and (is-Cons!485 list2!18) (is-Cons!485 (tail!842 list2!18)) (bvsgt (head!816 list2!18) (head!816 (tail!842 list2!18))))))))

(declare-fun b!59151 () Bool)

(assert (=> b!59151 (= e!31468 (isSorted!4 (tail!842 list2!18)))))

(assert (= (and d!50967 (not res!27487)) b!59150))

(assert (= (and b!59150 res!27488) b!59151))

(declare-fun m!63922 () Bool)

(assert (=> b!59151 m!63922))

(assert (=> b!59145 d!50967))

(declare-fun b!59163 () Bool)

(declare-fun e!31474 () tuple2!294)

(assert (=> b!59163 (= e!31474 (tuple2!295 (Cons!485 (head!816 in!15) (_1!174 (split!2 (tail!842 (tail!842 in!15))))) (Cons!485 (head!816 (tail!842 in!15)) (_2!174 (split!2 (tail!842 (tail!842 in!15)))))))))

(declare-fun b!59161 () Bool)

(declare-fun e!31473 () tuple2!294)

(assert (=> b!59161 (= e!31473 e!31474)))

(declare-fun c!12764 () Bool)

(assert (=> b!59161 (= c!12764 (and (is-Cons!485 in!15) (is-Nil!486 (tail!842 in!15))))))

(declare-fun b!59162 () Bool)

(assert (=> b!59162 (= e!31474 (tuple2!295 (Cons!485 (head!816 in!15) Nil!486) Nil!486))))

(declare-fun d!50969 () Bool)

(declare-fun lt!10854 () tuple2!294)

(declare-fun splitSpec!0 (List!519 tuple2!294) Bool)

(assert (=> d!50969 (splitSpec!0 in!15 lt!10854)))

(assert (=> d!50969 (= lt!10854 e!31473)))

(declare-fun c!12763 () Bool)

(assert (=> d!50969 (= c!12763 (is-Nil!486 in!15))))

(assert (=> d!50969 (= (split!2 in!15) lt!10854)))

(declare-fun b!59160 () Bool)

(assert (=> b!59160 (= e!31473 (tuple2!295 Nil!486 Nil!486))))

(assert (= (and b!59161 c!12764) b!59162))

(assert (= (and b!59161 (not c!12764)) b!59163))

(assert (= (and d!50969 c!12763) b!59160))

(assert (= (and d!50969 (not c!12763)) b!59161))

(declare-fun m!63924 () Bool)

(assert (=> b!59163 m!63924))

(declare-fun m!63926 () Bool)

(assert (=> d!50969 m!63926))

(assert (=> b!59140 d!50969))

(declare-fun d!50971 () Bool)

(declare-fun lt!10857 () Int)

(assert (=> d!50971 (>= lt!10857 0)))

(declare-fun e!31477 () Int)

(assert (=> d!50971 (= lt!10857 e!31477)))

(declare-fun c!12767 () Bool)

(assert (=> d!50971 (= c!12767 (is-Nil!486 in!15))))

(assert (=> d!50971 (= (size!16 in!15) lt!10857)))

(declare-fun b!59168 () Bool)

(assert (=> b!59168 (= e!31477 0)))

(declare-fun b!59169 () Bool)

(assert (=> b!59169 (= e!31477 (+ 1 (size!16 (tail!842 in!15))))))

(assert (= (and d!50971 c!12767) b!59168))

(assert (= (and d!50971 (not c!12767)) b!59169))

(declare-fun m!63928 () Bool)

(assert (=> b!59169 m!63928))

(assert (=> start!8492 d!50971))

(declare-fun d!50973 () Bool)

(declare-fun res!27490 () Bool)

(declare-fun e!31478 () Bool)

(assert (=> d!50973 (=> res!27490 e!31478)))

(assert (=> d!50973 (= res!27490 (or (is-Nil!486 list1!18) (and (is-Cons!485 list1!18) (is-Nil!486 (tail!842 list1!18)))))))

(assert (=> d!50973 (= (isSorted!4 list1!18) e!31478)))

(declare-fun b!59170 () Bool)

(declare-fun e!31479 () Bool)

(assert (=> b!59170 (= e!31478 e!31479)))

(declare-fun res!27491 () Bool)

(assert (=> b!59170 (=> (not res!27491) (not e!31479))))

(assert (=> b!59170 (= res!27491 (not (and (is-Cons!485 list1!18) (is-Cons!485 (tail!842 list1!18)) (bvsgt (head!816 list1!18) (head!816 (tail!842 list1!18))))))))

(declare-fun b!59171 () Bool)

(assert (=> b!59171 (= e!31479 (isSorted!4 (tail!842 list1!18)))))

(assert (= (and d!50973 (not res!27490)) b!59170))

(assert (= (and b!59170 res!27491) b!59171))

(declare-fun m!63930 () Bool)

(assert (=> b!59171 m!63930))

(assert (=> b!59143 d!50973))

(declare-fun b!59180 () Bool)

(declare-fun e!31484 () List!519)

(assert (=> b!59180 (= e!31484 Nil!486)))

(declare-fun b!59181 () Bool)

(declare-fun e!31485 () List!519)

(assert (=> b!59181 (= e!31484 e!31485)))

(declare-fun c!12773 () Bool)

(assert (=> b!59181 (= c!12773 (and (is-Cons!485 s1!51) (is-Nil!486 (tail!842 s1!51))))))

(declare-fun b!59182 () Bool)

(assert (=> b!59182 (= e!31485 (Cons!485 (head!816 s1!51) Nil!486))))

(declare-fun b!59183 () Bool)

(declare-fun lt!10871 () List!519)

(declare-fun lt!10872 () List!519)

(declare-fun mergeFast!0 (List!519 List!519) List!519)

(assert (=> b!59183 (= e!31485 (mergeFast!0 (weirdSort!0 (size!16 lt!10871) lt!10871) (weirdSort!0 (size!16 lt!10872) lt!10872)))))

(declare-fun lt!10870 () tuple2!294)

(assert (=> b!59183 (= lt!10872 (_2!174 lt!10870))))

(declare-fun lt!10868 () tuple2!294)

(assert (=> b!59183 (= lt!10871 (_1!174 lt!10868))))

(assert (=> b!59183 (= lt!10870 (split!2 s1!51))))

(assert (=> b!59183 (= lt!10868 (split!2 s1!51))))

(declare-fun d!50975 () Bool)

(declare-fun lt!10869 () List!519)

(declare-fun sortSpec!0 (List!519 List!519) Bool)

(assert (=> d!50975 (sortSpec!0 s1!51 lt!10869)))

(assert (=> d!50975 (= lt!10869 e!31484)))

(declare-fun c!12772 () Bool)

(assert (=> d!50975 (= c!12772 (is-Nil!486 s1!51))))

(assert (=> d!50975 (= (size!16 s1!51) (size!16 s1!51))))

(assert (=> d!50975 (= (weirdSort!0 (size!16 s1!51) s1!51) lt!10869)))

(assert (= (and b!59181 c!12773) b!59182))

(assert (= (and b!59181 (not c!12773)) b!59183))

(assert (= (and d!50975 c!12772) b!59180))

(assert (= (and d!50975 (not c!12772)) b!59181))

(declare-fun m!63932 () Bool)

(assert (=> b!59183 m!63932))

(declare-fun m!63934 () Bool)

(assert (=> b!59183 m!63934))

(declare-fun m!63936 () Bool)

(assert (=> b!59183 m!63936))

(declare-fun m!63938 () Bool)

(assert (=> b!59183 m!63938))

(declare-fun m!63940 () Bool)

(assert (=> b!59183 m!63940))

(assert (=> b!59183 m!63938))

(assert (=> b!59183 m!63932))

(declare-fun m!63942 () Bool)

(assert (=> b!59183 m!63942))

(assert (=> b!59183 m!63934))

(assert (=> b!59183 m!63942))

(declare-fun m!63944 () Bool)

(assert (=> d!50975 m!63944))

(assert (=> d!50975 m!63918))

(assert (=> b!59144 d!50975))

(declare-fun d!50977 () Bool)

(declare-fun lt!10873 () Int)

(assert (=> d!50977 (>= lt!10873 0)))

(declare-fun e!31486 () Int)

(assert (=> d!50977 (= lt!10873 e!31486)))

(declare-fun c!12774 () Bool)

(assert (=> d!50977 (= c!12774 (is-Nil!486 s1!51))))

(assert (=> d!50977 (= (size!16 s1!51) lt!10873)))

(declare-fun b!59184 () Bool)

(assert (=> b!59184 (= e!31486 0)))

(declare-fun b!59185 () Bool)

(assert (=> b!59185 (= e!31486 (+ 1 (size!16 (tail!842 s1!51))))))

(assert (= (and d!50977 c!12774) b!59184))

(assert (= (and d!50977 (not c!12774)) b!59185))

(declare-fun m!63946 () Bool)

(assert (=> b!59185 m!63946))

(assert (=> b!59144 d!50977))

(declare-fun b!59186 () Bool)

(declare-fun e!31487 () List!519)

(assert (=> b!59186 (= e!31487 Nil!486)))

(declare-fun b!59187 () Bool)

(declare-fun e!31488 () List!519)

(assert (=> b!59187 (= e!31487 e!31488)))

(declare-fun c!12776 () Bool)

(assert (=> b!59187 (= c!12776 (and (is-Cons!485 s2!50) (is-Nil!486 (tail!842 s2!50))))))

(declare-fun b!59188 () Bool)

(assert (=> b!59188 (= e!31488 (Cons!485 (head!816 s2!50) Nil!486))))

(declare-fun b!59189 () Bool)

(declare-fun lt!10877 () List!519)

(declare-fun lt!10878 () List!519)

(assert (=> b!59189 (= e!31488 (mergeFast!0 (weirdSort!0 (size!16 lt!10877) lt!10877) (weirdSort!0 (size!16 lt!10878) lt!10878)))))

(declare-fun lt!10876 () tuple2!294)

(assert (=> b!59189 (= lt!10878 (_2!174 lt!10876))))

(declare-fun lt!10874 () tuple2!294)

(assert (=> b!59189 (= lt!10877 (_1!174 lt!10874))))

(assert (=> b!59189 (= lt!10876 (split!2 s2!50))))

(assert (=> b!59189 (= lt!10874 (split!2 s2!50))))

(declare-fun d!50979 () Bool)

(declare-fun lt!10875 () List!519)

(assert (=> d!50979 (sortSpec!0 s2!50 lt!10875)))

(assert (=> d!50979 (= lt!10875 e!31487)))

(declare-fun c!12775 () Bool)

(assert (=> d!50979 (= c!12775 (is-Nil!486 s2!50))))

(assert (=> d!50979 (= (size!16 s2!50) (size!16 s2!50))))

(assert (=> d!50979 (= (weirdSort!0 (size!16 s2!50) s2!50) lt!10875)))

(assert (= (and b!59187 c!12776) b!59188))

(assert (= (and b!59187 (not c!12776)) b!59189))

(assert (= (and d!50979 c!12775) b!59186))

(assert (= (and d!50979 (not c!12775)) b!59187))

(declare-fun m!63948 () Bool)

(assert (=> b!59189 m!63948))

(declare-fun m!63950 () Bool)

(assert (=> b!59189 m!63950))

(declare-fun m!63952 () Bool)

(assert (=> b!59189 m!63952))

(declare-fun m!63954 () Bool)

(assert (=> b!59189 m!63954))

(declare-fun m!63956 () Bool)

(assert (=> b!59189 m!63956))

(assert (=> b!59189 m!63954))

(assert (=> b!59189 m!63948))

(declare-fun m!63958 () Bool)

(assert (=> b!59189 m!63958))

(assert (=> b!59189 m!63950))

(assert (=> b!59189 m!63958))

(declare-fun m!63960 () Bool)

(assert (=> d!50979 m!63960))

(assert (=> d!50979 m!63910))

(assert (=> b!59141 d!50979))

(declare-fun d!50981 () Bool)

(declare-fun lt!10879 () Int)

(assert (=> d!50981 (>= lt!10879 0)))

(declare-fun e!31489 () Int)

(assert (=> d!50981 (= lt!10879 e!31489)))

(declare-fun c!12777 () Bool)

(assert (=> d!50981 (= c!12777 (is-Nil!486 s2!50))))

(assert (=> d!50981 (= (size!16 s2!50) lt!10879)))

(declare-fun b!59190 () Bool)

(assert (=> b!59190 (= e!31489 0)))

(declare-fun b!59191 () Bool)

(assert (=> b!59191 (= e!31489 (+ 1 (size!16 (tail!842 s2!50))))))

(assert (= (and d!50981 c!12777) b!59190))

(assert (= (and d!50981 (not c!12777)) b!59191))

(declare-fun m!63962 () Bool)

(assert (=> b!59191 m!63962))

(assert (=> b!59141 d!50981))

(push 1)

(assert (not b!59183))

(assert (not b!59171))

(assert (not b!59169))

(assert (not d!50969))

(assert (not d!50979))

(assert (not b!59189))

(assert (not b!59185))

(assert (not b!59163))

(assert (not b!59191))

(assert (not d!50975))

(assert (not b!59151))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50983 () Bool)

(declare-fun lt!10880 () Int)

(assert (=> d!50983 (>= lt!10880 0)))

(declare-fun e!31490 () Int)

(assert (=> d!50983 (= lt!10880 e!31490)))

(declare-fun c!12778 () Bool)

(assert (=> d!50983 (= c!12778 (is-Nil!486 (tail!842 s2!50)))))

(assert (=> d!50983 (= (size!16 (tail!842 s2!50)) lt!10880)))

(declare-fun b!59192 () Bool)

(assert (=> b!59192 (= e!31490 0)))

(declare-fun b!59193 () Bool)

(assert (=> b!59193 (= e!31490 (+ 1 (size!16 (tail!842 (tail!842 s2!50)))))))

(assert (= (and d!50983 c!12778) b!59192))

(assert (= (and d!50983 (not c!12778)) b!59193))

(declare-fun m!63964 () Bool)

(assert (=> b!59193 m!63964))

(assert (=> b!59191 d!50983))

(declare-fun b!59204 () Bool)

(declare-fun e!31497 () Bool)

(assert (=> b!59204 (= e!31497 (isSorted!4 (weirdSort!0 (size!16 lt!10878) lt!10878)))))

(declare-fun b!59205 () Bool)

(declare-fun e!31498 () List!519)

(assert (=> b!59205 (= e!31498 (weirdSort!0 (size!16 lt!10878) lt!10878))))

(declare-fun b!59206 () Bool)

(declare-fun e!31499 () List!519)

(assert (=> b!59206 (= e!31499 e!31498)))

(declare-fun c!12784 () Bool)

(assert (=> b!59206 (= c!12784 (is-Nil!486 (weirdSort!0 (size!16 lt!10877) lt!10877)))))

(declare-fun b!59207 () Bool)

(assert (=> b!59207 (= e!31499 (weirdSort!0 (size!16 lt!10877) lt!10877))))

(declare-fun b!59208 () Bool)

(declare-fun lt!10887 () Bool)

(declare-fun lt!10889 () List!519)

(assert (=> b!59208 (= e!31498 (ite lt!10887 (Cons!485 (head!816 (weirdSort!0 (size!16 lt!10877) lt!10877)) lt!10889) (Cons!485 (head!816 (weirdSort!0 (size!16 lt!10878) lt!10878)) lt!10889)))))

(assert (=> b!59208 (= lt!10889 (mergeFast!0 (ite lt!10887 (tail!842 (weirdSort!0 (size!16 lt!10877) lt!10877)) (weirdSort!0 (size!16 lt!10877) lt!10877)) (ite lt!10887 (weirdSort!0 (size!16 lt!10878) lt!10878) (tail!842 (weirdSort!0 (size!16 lt!10878) lt!10878)))))))

(assert (=> b!59208 (= lt!10887 (bvsle (head!816 (weirdSort!0 (size!16 lt!10877) lt!10877)) (head!816 (weirdSort!0 (size!16 lt!10878) lt!10878))))))

(declare-fun d!50985 () Bool)

(declare-fun lt!10888 () List!519)

(declare-fun mergeSpec!0 (List!519 List!519 List!519) Bool)

(assert (=> d!50985 (mergeSpec!0 (weirdSort!0 (size!16 lt!10877) lt!10877) (weirdSort!0 (size!16 lt!10878) lt!10878) lt!10888)))

(assert (=> d!50985 (= lt!10888 e!31499)))

(declare-fun c!12783 () Bool)

(assert (=> d!50985 (= c!12783 (is-Nil!486 (weirdSort!0 (size!16 lt!10878) lt!10878)))))

(assert (=> d!50985 e!31497))

(declare-fun res!27499 () Bool)

(assert (=> d!50985 (=> (not res!27499) (not e!31497))))

(assert (=> d!50985 (= res!27499 (isSorted!4 (weirdSort!0 (size!16 lt!10877) lt!10877)))))

(assert (=> d!50985 (= (mergeFast!0 (weirdSort!0 (size!16 lt!10877) lt!10877) (weirdSort!0 (size!16 lt!10878) lt!10878)) lt!10888)))

(assert (= (and d!50985 res!27499) b!59204))

(assert (= (and b!59206 c!12784) b!59205))

(assert (= (and b!59206 (not c!12784)) b!59208))

(assert (= (and d!50985 c!12783) b!59207))

(assert (= (and d!50985 (not c!12783)) b!59206))

(assert (=> b!59204 m!63950))

(declare-fun m!63966 () Bool)

(assert (=> b!59204 m!63966))

(declare-fun m!63968 () Bool)

(assert (=> b!59208 m!63968))

(assert (=> d!50985 m!63948))

(assert (=> d!50985 m!63950))

(declare-fun m!63970 () Bool)

(assert (=> d!50985 m!63970))

(assert (=> d!50985 m!63948))

(declare-fun m!63972 () Bool)

(assert (=> d!50985 m!63972))

(assert (=> b!59189 d!50985))

(declare-fun d!50987 () Bool)

(declare-fun lt!10890 () Int)

(assert (=> d!50987 (>= lt!10890 0)))

(declare-fun e!31500 () Int)

(assert (=> d!50987 (= lt!10890 e!31500)))

(declare-fun c!12785 () Bool)

(assert (=> d!50987 (= c!12785 (is-Nil!486 lt!10877))))

(assert (=> d!50987 (= (size!16 lt!10877) lt!10890)))

(declare-fun b!59209 () Bool)

(assert (=> b!59209 (= e!31500 0)))

(declare-fun b!59210 () Bool)

(assert (=> b!59210 (= e!31500 (+ 1 (size!16 (tail!842 lt!10877))))))

(assert (= (and d!50987 c!12785) b!59209))

(assert (= (and d!50987 (not c!12785)) b!59210))

(declare-fun m!63974 () Bool)

(assert (=> b!59210 m!63974))

(assert (=> b!59189 d!50987))

(declare-fun d!50989 () Bool)

(declare-fun lt!10891 () Int)

(assert (=> d!50989 (>= lt!10891 0)))

(declare-fun e!31501 () Int)

(assert (=> d!50989 (= lt!10891 e!31501)))

(declare-fun c!12786 () Bool)

(assert (=> d!50989 (= c!12786 (is-Nil!486 lt!10878))))

(assert (=> d!50989 (= (size!16 lt!10878) lt!10891)))

(declare-fun b!59211 () Bool)

(assert (=> b!59211 (= e!31501 0)))

(declare-fun b!59212 () Bool)

(assert (=> b!59212 (= e!31501 (+ 1 (size!16 (tail!842 lt!10878))))))

(assert (= (and d!50989 c!12786) b!59211))

(assert (= (and d!50989 (not c!12786)) b!59212))

(declare-fun m!63976 () Bool)

(assert (=> b!59212 m!63976))

(assert (=> b!59189 d!50989))

(declare-fun b!59213 () Bool)

(declare-fun e!31502 () List!519)

(assert (=> b!59213 (= e!31502 Nil!486)))

(declare-fun b!59214 () Bool)

(declare-fun e!31503 () List!519)

(assert (=> b!59214 (= e!31502 e!31503)))

(declare-fun c!12788 () Bool)

(assert (=> b!59214 (= c!12788 (and (is-Cons!485 lt!10877) (is-Nil!486 (tail!842 lt!10877))))))

(declare-fun b!59215 () Bool)

(assert (=> b!59215 (= e!31503 (Cons!485 (head!816 lt!10877) Nil!486))))

(declare-fun b!59216 () Bool)

(declare-fun lt!10895 () List!519)

(declare-fun lt!10896 () List!519)

(assert (=> b!59216 (= e!31503 (mergeFast!0 (weirdSort!0 (size!16 lt!10895) lt!10895) (weirdSort!0 (size!16 lt!10896) lt!10896)))))

(declare-fun lt!10894 () tuple2!294)

(assert (=> b!59216 (= lt!10896 (_2!174 lt!10894))))

(declare-fun lt!10892 () tuple2!294)

(assert (=> b!59216 (= lt!10895 (_1!174 lt!10892))))

(assert (=> b!59216 (= lt!10894 (split!2 lt!10877))))

(assert (=> b!59216 (= lt!10892 (split!2 lt!10877))))

(declare-fun d!50991 () Bool)

(declare-fun lt!10893 () List!519)

(assert (=> d!50991 (sortSpec!0 lt!10877 lt!10893)))

(assert (=> d!50991 (= lt!10893 e!31502)))

(declare-fun c!12787 () Bool)

(assert (=> d!50991 (= c!12787 (is-Nil!486 lt!10877))))

(assert (=> d!50991 (= (size!16 lt!10877) (size!16 lt!10877))))

(assert (=> d!50991 (= (weirdSort!0 (size!16 lt!10877) lt!10877) lt!10893)))

(assert (= (and b!59214 c!12788) b!59215))

(assert (= (and b!59214 (not c!12788)) b!59216))

(assert (= (and d!50991 c!12787) b!59213))

(assert (= (and d!50991 (not c!12787)) b!59214))

(declare-fun m!63978 () Bool)

(assert (=> b!59216 m!63978))

(declare-fun m!63980 () Bool)

(assert (=> b!59216 m!63980))

(declare-fun m!63982 () Bool)

(assert (=> b!59216 m!63982))

(declare-fun m!63984 () Bool)

(assert (=> b!59216 m!63984))

(declare-fun m!63986 () Bool)

(assert (=> b!59216 m!63986))

(assert (=> b!59216 m!63984))

(assert (=> b!59216 m!63978))

(declare-fun m!63988 () Bool)

(assert (=> b!59216 m!63988))

(assert (=> b!59216 m!63980))

(assert (=> b!59216 m!63988))

(declare-fun m!63990 () Bool)

(assert (=> d!50991 m!63990))

(assert (=> d!50991 m!63954))

(assert (=> b!59189 d!50991))

(declare-fun b!59220 () Bool)

(declare-fun e!31505 () tuple2!294)

(assert (=> b!59220 (= e!31505 (tuple2!295 (Cons!485 (head!816 s2!50) (_1!174 (split!2 (tail!842 (tail!842 s2!50))))) (Cons!485 (head!816 (tail!842 s2!50)) (_2!174 (split!2 (tail!842 (tail!842 s2!50)))))))))

(declare-fun b!59218 () Bool)

(declare-fun e!31504 () tuple2!294)

(assert (=> b!59218 (= e!31504 e!31505)))

(declare-fun c!12790 () Bool)

(assert (=> b!59218 (= c!12790 (and (is-Cons!485 s2!50) (is-Nil!486 (tail!842 s2!50))))))

(declare-fun b!59219 () Bool)

(assert (=> b!59219 (= e!31505 (tuple2!295 (Cons!485 (head!816 s2!50) Nil!486) Nil!486))))

(declare-fun d!50993 () Bool)

(declare-fun lt!10897 () tuple2!294)

(assert (=> d!50993 (splitSpec!0 s2!50 lt!10897)))

(assert (=> d!50993 (= lt!10897 e!31504)))

(declare-fun c!12789 () Bool)

(assert (=> d!50993 (= c!12789 (is-Nil!486 s2!50))))

(assert (=> d!50993 (= (split!2 s2!50) lt!10897)))

(declare-fun b!59217 () Bool)

(assert (=> b!59217 (= e!31504 (tuple2!295 Nil!486 Nil!486))))

(assert (= (and b!59218 c!12790) b!59219))

(assert (= (and b!59218 (not c!12790)) b!59220))

(assert (= (and d!50993 c!12789) b!59217))

(assert (= (and d!50993 (not c!12789)) b!59218))

(declare-fun m!63992 () Bool)

(assert (=> b!59220 m!63992))

(declare-fun m!63994 () Bool)

(assert (=> d!50993 m!63994))

(assert (=> b!59189 d!50993))

(declare-fun b!59221 () Bool)

(declare-fun e!31506 () List!519)

(assert (=> b!59221 (= e!31506 Nil!486)))

(declare-fun b!59222 () Bool)

(declare-fun e!31507 () List!519)

(assert (=> b!59222 (= e!31506 e!31507)))

(declare-fun c!12792 () Bool)

(assert (=> b!59222 (= c!12792 (and (is-Cons!485 lt!10878) (is-Nil!486 (tail!842 lt!10878))))))

(declare-fun b!59223 () Bool)

(assert (=> b!59223 (= e!31507 (Cons!485 (head!816 lt!10878) Nil!486))))

(declare-fun b!59224 () Bool)

(declare-fun lt!10901 () List!519)

(declare-fun lt!10902 () List!519)

(assert (=> b!59224 (= e!31507 (mergeFast!0 (weirdSort!0 (size!16 lt!10901) lt!10901) (weirdSort!0 (size!16 lt!10902) lt!10902)))))

(declare-fun lt!10900 () tuple2!294)

(assert (=> b!59224 (= lt!10902 (_2!174 lt!10900))))

(declare-fun lt!10898 () tuple2!294)

(assert (=> b!59224 (= lt!10901 (_1!174 lt!10898))))

(assert (=> b!59224 (= lt!10900 (split!2 lt!10878))))

(assert (=> b!59224 (= lt!10898 (split!2 lt!10878))))

(declare-fun d!50995 () Bool)

(declare-fun lt!10899 () List!519)

(assert (=> d!50995 (sortSpec!0 lt!10878 lt!10899)))

(assert (=> d!50995 (= lt!10899 e!31506)))

(declare-fun c!12791 () Bool)

(assert (=> d!50995 (= c!12791 (is-Nil!486 lt!10878))))

(assert (=> d!50995 (= (size!16 lt!10878) (size!16 lt!10878))))

(assert (=> d!50995 (= (weirdSort!0 (size!16 lt!10878) lt!10878) lt!10899)))

(assert (= (and b!59222 c!12792) b!59223))

(assert (= (and b!59222 (not c!12792)) b!59224))

(assert (= (and d!50995 c!12791) b!59221))

(assert (= (and d!50995 (not c!12791)) b!59222))

(declare-fun m!63996 () Bool)

(assert (=> b!59224 m!63996))

(declare-fun m!63998 () Bool)

(assert (=> b!59224 m!63998))

(declare-fun m!64000 () Bool)

(assert (=> b!59224 m!64000))

(declare-fun m!64002 () Bool)

(assert (=> b!59224 m!64002))

(declare-fun m!64004 () Bool)

(assert (=> b!59224 m!64004))

(assert (=> b!59224 m!64002))

(assert (=> b!59224 m!63996))

(declare-fun m!64006 () Bool)

(assert (=> b!59224 m!64006))

(assert (=> b!59224 m!63998))

(assert (=> b!59224 m!64006))

(declare-fun m!64008 () Bool)

(assert (=> d!50995 m!64008))

(assert (=> d!50995 m!63958))

(assert (=> b!59189 d!50995))

(declare-fun d!50997 () Bool)

(declare-fun res!27500 () Bool)

(declare-fun e!31508 () Bool)

(assert (=> d!50997 (=> res!27500 e!31508)))

(assert (=> d!50997 (= res!27500 (or (is-Nil!486 (tail!842 list1!18)) (and (is-Cons!485 (tail!842 list1!18)) (is-Nil!486 (tail!842 (tail!842 list1!18))))))))

(assert (=> d!50997 (= (isSorted!4 (tail!842 list1!18)) e!31508)))

(declare-fun b!59225 () Bool)

(declare-fun e!31509 () Bool)

(assert (=> b!59225 (= e!31508 e!31509)))

(declare-fun res!27501 () Bool)

(assert (=> b!59225 (=> (not res!27501) (not e!31509))))

(assert (=> b!59225 (= res!27501 (not (and (is-Cons!485 (tail!842 list1!18)) (is-Cons!485 (tail!842 (tail!842 list1!18))) (bvsgt (head!816 (tail!842 list1!18)) (head!816 (tail!842 (tail!842 list1!18)))))))))

(declare-fun b!59226 () Bool)

(assert (=> b!59226 (= e!31509 (isSorted!4 (tail!842 (tail!842 list1!18))))))

(assert (= (and d!50997 (not res!27500)) b!59225))

(assert (= (and b!59225 res!27501) b!59226))

(declare-fun m!64010 () Bool)

(assert (=> b!59226 m!64010))

(assert (=> b!59171 d!50997))

(declare-fun d!50999 () Bool)

(declare-fun lt!10903 () Int)

(assert (=> d!50999 (>= lt!10903 0)))

(declare-fun e!31510 () Int)

(assert (=> d!50999 (= lt!10903 e!31510)))

(declare-fun c!12793 () Bool)

(assert (=> d!50999 (= c!12793 (is-Nil!486 (tail!842 s1!51)))))

(assert (=> d!50999 (= (size!16 (tail!842 s1!51)) lt!10903)))

(declare-fun b!59227 () Bool)

(assert (=> b!59227 (= e!31510 0)))

(declare-fun b!59228 () Bool)

(assert (=> b!59228 (= e!31510 (+ 1 (size!16 (tail!842 (tail!842 s1!51)))))))

(assert (= (and d!50999 c!12793) b!59227))

(assert (= (and d!50999 (not c!12793)) b!59228))

(declare-fun m!64012 () Bool)

(assert (=> b!59228 m!64012))

(assert (=> b!59185 d!50999))

(declare-fun d!51001 () Bool)

(declare-fun res!27504 () Bool)

(declare-fun e!31513 () Bool)

(assert (=> d!51001 (=> (not res!27504) (not e!31513))))

(declare-fun content!15 (List!519) (Set (_ BitVec 32)))

(assert (=> d!51001 (= res!27504 (= (content!15 lt!10875) (content!15 s2!50)))))

(assert (=> d!51001 (= (sortSpec!0 s2!50 lt!10875) e!31513)))

(declare-fun b!59231 () Bool)

(assert (=> b!59231 (= e!31513 (isSorted!4 lt!10875))))

(assert (= (and d!51001 res!27504) b!59231))

(declare-fun m!64014 () Bool)

(assert (=> d!51001 m!64014))

(declare-fun m!64016 () Bool)

(assert (=> d!51001 m!64016))

(declare-fun m!64018 () Bool)

(assert (=> b!59231 m!64018))

(assert (=> d!50979 d!51001))

(assert (=> d!50979 d!50981))

(declare-fun d!51003 () Bool)

(declare-fun res!27505 () Bool)

(declare-fun e!31514 () Bool)

(assert (=> d!51003 (=> (not res!27505) (not e!31514))))

(assert (=> d!51003 (= res!27505 (= (content!15 lt!10869) (content!15 s1!51)))))

(assert (=> d!51003 (= (sortSpec!0 s1!51 lt!10869) e!31514)))

(declare-fun b!59232 () Bool)

(assert (=> b!59232 (= e!31514 (isSorted!4 lt!10869))))

(assert (= (and d!51003 res!27505) b!59232))

(declare-fun m!64020 () Bool)

(assert (=> d!51003 m!64020))

(declare-fun m!64022 () Bool)

(assert (=> d!51003 m!64022))

(declare-fun m!64024 () Bool)

(assert (=> b!59232 m!64024))

(assert (=> d!50975 d!51003))

(assert (=> d!50975 d!50977))

(declare-fun d!51005 () Bool)

(declare-fun lt!10904 () Int)

(assert (=> d!51005 (>= lt!10904 0)))

(declare-fun e!31515 () Int)

(assert (=> d!51005 (= lt!10904 e!31515)))

(declare-fun c!12794 () Bool)

(assert (=> d!51005 (= c!12794 (is-Nil!486 (tail!842 in!15)))))

(assert (=> d!51005 (= (size!16 (tail!842 in!15)) lt!10904)))

(declare-fun b!59233 () Bool)

(assert (=> b!59233 (= e!31515 0)))

(declare-fun b!59234 () Bool)

(assert (=> b!59234 (= e!31515 (+ 1 (size!16 (tail!842 (tail!842 in!15)))))))

(assert (= (and d!51005 c!12794) b!59233))

(assert (= (and d!51005 (not c!12794)) b!59234))

(declare-fun m!64026 () Bool)

(assert (=> b!59234 m!64026))

(assert (=> b!59169 d!51005))

(declare-fun b!59238 () Bool)

(declare-fun e!31517 () tuple2!294)

(assert (=> b!59238 (= e!31517 (tuple2!295 (Cons!485 (head!816 (tail!842 (tail!842 in!15))) (_1!174 (split!2 (tail!842 (tail!842 (tail!842 (tail!842 in!15))))))) (Cons!485 (head!816 (tail!842 (tail!842 (tail!842 in!15)))) (_2!174 (split!2 (tail!842 (tail!842 (tail!842 (tail!842 in!15)))))))))))

(declare-fun b!59236 () Bool)

(declare-fun e!31516 () tuple2!294)

(assert (=> b!59236 (= e!31516 e!31517)))

(declare-fun c!12796 () Bool)

(assert (=> b!59236 (= c!12796 (and (is-Cons!485 (tail!842 (tail!842 in!15))) (is-Nil!486 (tail!842 (tail!842 (tail!842 in!15))))))))

(declare-fun b!59237 () Bool)

(assert (=> b!59237 (= e!31517 (tuple2!295 (Cons!485 (head!816 (tail!842 (tail!842 in!15))) Nil!486) Nil!486))))

(declare-fun d!51007 () Bool)

(declare-fun lt!10905 () tuple2!294)

(assert (=> d!51007 (splitSpec!0 (tail!842 (tail!842 in!15)) lt!10905)))

(assert (=> d!51007 (= lt!10905 e!31516)))

(declare-fun c!12795 () Bool)

(assert (=> d!51007 (= c!12795 (is-Nil!486 (tail!842 (tail!842 in!15))))))

(assert (=> d!51007 (= (split!2 (tail!842 (tail!842 in!15))) lt!10905)))

(declare-fun b!59235 () Bool)

(assert (=> b!59235 (= e!31516 (tuple2!295 Nil!486 Nil!486))))

(assert (= (and b!59236 c!12796) b!59237))

(assert (= (and b!59236 (not c!12796)) b!59238))

(assert (= (and d!51007 c!12795) b!59235))

(assert (= (and d!51007 (not c!12795)) b!59236))

(declare-fun m!64028 () Bool)

(assert (=> b!59238 m!64028))

(declare-fun m!64030 () Bool)

(assert (=> d!51007 m!64030))

(assert (=> b!59163 d!51007))

(declare-fun d!51009 () Bool)

(declare-fun res!27506 () Bool)

(declare-fun e!31518 () Bool)

(assert (=> d!51009 (=> res!27506 e!31518)))

(assert (=> d!51009 (= res!27506 (or (is-Nil!486 (tail!842 list2!18)) (and (is-Cons!485 (tail!842 list2!18)) (is-Nil!486 (tail!842 (tail!842 list2!18))))))))

(assert (=> d!51009 (= (isSorted!4 (tail!842 list2!18)) e!31518)))

(declare-fun b!59239 () Bool)

(declare-fun e!31519 () Bool)

(assert (=> b!59239 (= e!31518 e!31519)))

(declare-fun res!27507 () Bool)

(assert (=> b!59239 (=> (not res!27507) (not e!31519))))

(assert (=> b!59239 (= res!27507 (not (and (is-Cons!485 (tail!842 list2!18)) (is-Cons!485 (tail!842 (tail!842 list2!18))) (bvsgt (head!816 (tail!842 list2!18)) (head!816 (tail!842 (tail!842 list2!18)))))))))

(declare-fun b!59240 () Bool)

(assert (=> b!59240 (= e!31519 (isSorted!4 (tail!842 (tail!842 list2!18))))))

(assert (= (and d!51009 (not res!27506)) b!59239))

(assert (= (and b!59239 res!27507) b!59240))

(declare-fun m!64032 () Bool)

(assert (=> b!59240 m!64032))

(assert (=> b!59151 d!51009))

(declare-fun d!51011 () Bool)

(declare-fun res!27513 () Bool)

(declare-fun e!31522 () Bool)

(assert (=> d!51011 (=> (not res!27513) (not e!31522))))

(declare-fun lt!10910 () Int)

(declare-fun lt!10911 () Int)

(declare-fun abs!3 (Int) Int)

(assert (=> d!51011 (= res!27513 (<= (abs!3 (- lt!10910 lt!10911)) 1))))

(assert (=> d!51011 (= lt!10911 (size!16 (_2!174 lt!10854)))))

(assert (=> d!51011 (= lt!10910 (size!16 (_1!174 lt!10854)))))

(assert (=> d!51011 (= (splitSpec!0 in!15 lt!10854) e!31522)))

(declare-fun b!59245 () Bool)

(declare-fun res!27514 () Bool)

(assert (=> b!59245 (=> (not res!27514) (not e!31522))))

(assert (=> b!59245 (= res!27514 (= (+ lt!10910 lt!10911) (size!16 in!15)))))

(declare-fun b!59246 () Bool)

(assert (=> b!59246 (= e!31522 (= (union (content!15 (_1!174 lt!10854)) (content!15 (_2!174 lt!10854))) (content!15 in!15)))))

(assert (= (and d!51011 res!27513) b!59245))

(assert (= (and b!59245 res!27514) b!59246))

(declare-fun m!64034 () Bool)

(assert (=> d!51011 m!64034))

(declare-fun m!64036 () Bool)

(assert (=> d!51011 m!64036))

(declare-fun m!64038 () Bool)

(assert (=> d!51011 m!64038))

(assert (=> b!59245 m!63906))

(declare-fun m!64040 () Bool)

(assert (=> b!59246 m!64040))

(declare-fun m!64042 () Bool)

(assert (=> b!59246 m!64042))

(declare-fun m!64044 () Bool)

(assert (=> b!59246 m!64044))

(assert (=> d!50969 d!51011))

(declare-fun b!59247 () Bool)

(declare-fun e!31523 () Bool)

(assert (=> b!59247 (= e!31523 (isSorted!4 (weirdSort!0 (size!16 lt!10872) lt!10872)))))

(declare-fun b!59248 () Bool)

(declare-fun e!31524 () List!519)

(assert (=> b!59248 (= e!31524 (weirdSort!0 (size!16 lt!10872) lt!10872))))

(declare-fun b!59249 () Bool)

(declare-fun e!31525 () List!519)

(assert (=> b!59249 (= e!31525 e!31524)))

(declare-fun c!12798 () Bool)

(assert (=> b!59249 (= c!12798 (is-Nil!486 (weirdSort!0 (size!16 lt!10871) lt!10871)))))

(declare-fun b!59250 () Bool)

(assert (=> b!59250 (= e!31525 (weirdSort!0 (size!16 lt!10871) lt!10871))))

(declare-fun b!59251 () Bool)

(declare-fun lt!10912 () Bool)

(declare-fun lt!10914 () List!519)

(assert (=> b!59251 (= e!31524 (ite lt!10912 (Cons!485 (head!816 (weirdSort!0 (size!16 lt!10871) lt!10871)) lt!10914) (Cons!485 (head!816 (weirdSort!0 (size!16 lt!10872) lt!10872)) lt!10914)))))

(assert (=> b!59251 (= lt!10914 (mergeFast!0 (ite lt!10912 (tail!842 (weirdSort!0 (size!16 lt!10871) lt!10871)) (weirdSort!0 (size!16 lt!10871) lt!10871)) (ite lt!10912 (weirdSort!0 (size!16 lt!10872) lt!10872) (tail!842 (weirdSort!0 (size!16 lt!10872) lt!10872)))))))

(assert (=> b!59251 (= lt!10912 (bvsle (head!816 (weirdSort!0 (size!16 lt!10871) lt!10871)) (head!816 (weirdSort!0 (size!16 lt!10872) lt!10872))))))

(declare-fun d!51013 () Bool)

(declare-fun lt!10913 () List!519)

(assert (=> d!51013 (mergeSpec!0 (weirdSort!0 (size!16 lt!10871) lt!10871) (weirdSort!0 (size!16 lt!10872) lt!10872) lt!10913)))

(assert (=> d!51013 (= lt!10913 e!31525)))

(declare-fun c!12797 () Bool)

(assert (=> d!51013 (= c!12797 (is-Nil!486 (weirdSort!0 (size!16 lt!10872) lt!10872)))))

(assert (=> d!51013 e!31523))

(declare-fun res!27515 () Bool)

(assert (=> d!51013 (=> (not res!27515) (not e!31523))))

(assert (=> d!51013 (= res!27515 (isSorted!4 (weirdSort!0 (size!16 lt!10871) lt!10871)))))

(assert (=> d!51013 (= (mergeFast!0 (weirdSort!0 (size!16 lt!10871) lt!10871) (weirdSort!0 (size!16 lt!10872) lt!10872)) lt!10913)))

(assert (= (and d!51013 res!27515) b!59247))

(assert (= (and b!59249 c!12798) b!59248))

(assert (= (and b!59249 (not c!12798)) b!59251))

(assert (= (and d!51013 c!12797) b!59250))

(assert (= (and d!51013 (not c!12797)) b!59249))

(assert (=> b!59247 m!63934))

(declare-fun m!64046 () Bool)

(assert (=> b!59247 m!64046))

(declare-fun m!64048 () Bool)

(assert (=> b!59251 m!64048))

(assert (=> d!51013 m!63932))

(assert (=> d!51013 m!63934))

(declare-fun m!64050 () Bool)

(assert (=> d!51013 m!64050))

(assert (=> d!51013 m!63932))

(declare-fun m!64052 () Bool)

(assert (=> d!51013 m!64052))

(assert (=> b!59183 d!51013))

(declare-fun d!51015 () Bool)

(declare-fun lt!10915 () Int)

(assert (=> d!51015 (>= lt!10915 0)))

(declare-fun e!31526 () Int)

(assert (=> d!51015 (= lt!10915 e!31526)))

(declare-fun c!12799 () Bool)

(assert (=> d!51015 (= c!12799 (is-Nil!486 lt!10871))))

(assert (=> d!51015 (= (size!16 lt!10871) lt!10915)))

(declare-fun b!59252 () Bool)

(assert (=> b!59252 (= e!31526 0)))

(declare-fun b!59253 () Bool)

(assert (=> b!59253 (= e!31526 (+ 1 (size!16 (tail!842 lt!10871))))))

(assert (= (and d!51015 c!12799) b!59252))

(assert (= (and d!51015 (not c!12799)) b!59253))

(declare-fun m!64054 () Bool)

(assert (=> b!59253 m!64054))

(assert (=> b!59183 d!51015))

(declare-fun b!59254 () Bool)

(declare-fun e!31527 () List!519)

(assert (=> b!59254 (= e!31527 Nil!486)))

(declare-fun b!59255 () Bool)

(declare-fun e!31528 () List!519)

(assert (=> b!59255 (= e!31527 e!31528)))

(declare-fun c!12801 () Bool)

(assert (=> b!59255 (= c!12801 (and (is-Cons!485 lt!10871) (is-Nil!486 (tail!842 lt!10871))))))

(declare-fun b!59256 () Bool)

(assert (=> b!59256 (= e!31528 (Cons!485 (head!816 lt!10871) Nil!486))))

(declare-fun b!59257 () Bool)

(declare-fun lt!10919 () List!519)

(declare-fun lt!10920 () List!519)

(assert (=> b!59257 (= e!31528 (mergeFast!0 (weirdSort!0 (size!16 lt!10919) lt!10919) (weirdSort!0 (size!16 lt!10920) lt!10920)))))

(declare-fun lt!10918 () tuple2!294)

(assert (=> b!59257 (= lt!10920 (_2!174 lt!10918))))

(declare-fun lt!10916 () tuple2!294)

(assert (=> b!59257 (= lt!10919 (_1!174 lt!10916))))

(assert (=> b!59257 (= lt!10918 (split!2 lt!10871))))

(assert (=> b!59257 (= lt!10916 (split!2 lt!10871))))

(declare-fun d!51017 () Bool)

(declare-fun lt!10917 () List!519)

(assert (=> d!51017 (sortSpec!0 lt!10871 lt!10917)))

(assert (=> d!51017 (= lt!10917 e!31527)))

(declare-fun c!12800 () Bool)

(assert (=> d!51017 (= c!12800 (is-Nil!486 lt!10871))))

(assert (=> d!51017 (= (size!16 lt!10871) (size!16 lt!10871))))

(assert (=> d!51017 (= (weirdSort!0 (size!16 lt!10871) lt!10871) lt!10917)))

(assert (= (and b!59255 c!12801) b!59256))

(assert (= (and b!59255 (not c!12801)) b!59257))

(assert (= (and d!51017 c!12800) b!59254))

(assert (= (and d!51017 (not c!12800)) b!59255))

(declare-fun m!64056 () Bool)

(assert (=> b!59257 m!64056))

(declare-fun m!64058 () Bool)

(assert (=> b!59257 m!64058))

(declare-fun m!64060 () Bool)

(assert (=> b!59257 m!64060))

(declare-fun m!64062 () Bool)

(assert (=> b!59257 m!64062))

(declare-fun m!64064 () Bool)

(assert (=> b!59257 m!64064))

(assert (=> b!59257 m!64062))

(assert (=> b!59257 m!64056))

(declare-fun m!64066 () Bool)

(assert (=> b!59257 m!64066))

(assert (=> b!59257 m!64058))

(assert (=> b!59257 m!64066))

(declare-fun m!64068 () Bool)

(assert (=> d!51017 m!64068))

(assert (=> d!51017 m!63938))

(assert (=> b!59183 d!51017))

(declare-fun b!59258 () Bool)

(declare-fun e!31529 () List!519)

(assert (=> b!59258 (= e!31529 Nil!486)))

(declare-fun b!59259 () Bool)

(declare-fun e!31530 () List!519)

(assert (=> b!59259 (= e!31529 e!31530)))

(declare-fun c!12803 () Bool)

(assert (=> b!59259 (= c!12803 (and (is-Cons!485 lt!10872) (is-Nil!486 (tail!842 lt!10872))))))

(declare-fun b!59260 () Bool)

(assert (=> b!59260 (= e!31530 (Cons!485 (head!816 lt!10872) Nil!486))))

(declare-fun b!59261 () Bool)

(declare-fun lt!10924 () List!519)

(declare-fun lt!10925 () List!519)

(assert (=> b!59261 (= e!31530 (mergeFast!0 (weirdSort!0 (size!16 lt!10924) lt!10924) (weirdSort!0 (size!16 lt!10925) lt!10925)))))

(declare-fun lt!10923 () tuple2!294)

(assert (=> b!59261 (= lt!10925 (_2!174 lt!10923))))

(declare-fun lt!10921 () tuple2!294)

(assert (=> b!59261 (= lt!10924 (_1!174 lt!10921))))

(assert (=> b!59261 (= lt!10923 (split!2 lt!10872))))

(assert (=> b!59261 (= lt!10921 (split!2 lt!10872))))

(declare-fun d!51019 () Bool)

(declare-fun lt!10922 () List!519)

(assert (=> d!51019 (sortSpec!0 lt!10872 lt!10922)))

(assert (=> d!51019 (= lt!10922 e!31529)))

(declare-fun c!12802 () Bool)

(assert (=> d!51019 (= c!12802 (is-Nil!486 lt!10872))))

(assert (=> d!51019 (= (size!16 lt!10872) (size!16 lt!10872))))

(assert (=> d!51019 (= (weirdSort!0 (size!16 lt!10872) lt!10872) lt!10922)))

(assert (= (and b!59259 c!12803) b!59260))

(assert (= (and b!59259 (not c!12803)) b!59261))

(assert (= (and d!51019 c!12802) b!59258))

(assert (= (and d!51019 (not c!12802)) b!59259))

(declare-fun m!64070 () Bool)

(assert (=> b!59261 m!64070))

(declare-fun m!64072 () Bool)

(assert (=> b!59261 m!64072))

(declare-fun m!64074 () Bool)

(assert (=> b!59261 m!64074))

(declare-fun m!64076 () Bool)

(assert (=> b!59261 m!64076))

(declare-fun m!64078 () Bool)

(assert (=> b!59261 m!64078))

(assert (=> b!59261 m!64076))

(assert (=> b!59261 m!64070))

(declare-fun m!64080 () Bool)

(assert (=> b!59261 m!64080))

(assert (=> b!59261 m!64072))

(assert (=> b!59261 m!64080))

(declare-fun m!64082 () Bool)

(assert (=> d!51019 m!64082))

(assert (=> d!51019 m!63942))

(assert (=> b!59183 d!51019))

(declare-fun d!51021 () Bool)

(declare-fun lt!10926 () Int)

(assert (=> d!51021 (>= lt!10926 0)))

(declare-fun e!31531 () Int)

(assert (=> d!51021 (= lt!10926 e!31531)))

(declare-fun c!12804 () Bool)

(assert (=> d!51021 (= c!12804 (is-Nil!486 lt!10872))))

(assert (=> d!51021 (= (size!16 lt!10872) lt!10926)))

(declare-fun b!59262 () Bool)

(assert (=> b!59262 (= e!31531 0)))

(declare-fun b!59263 () Bool)

(assert (=> b!59263 (= e!31531 (+ 1 (size!16 (tail!842 lt!10872))))))

(assert (= (and d!51021 c!12804) b!59262))

(assert (= (and d!51021 (not c!12804)) b!59263))

(declare-fun m!64084 () Bool)

(assert (=> b!59263 m!64084))

(assert (=> b!59183 d!51021))

(declare-fun b!59267 () Bool)

(declare-fun e!31533 () tuple2!294)

(assert (=> b!59267 (= e!31533 (tuple2!295 (Cons!485 (head!816 s1!51) (_1!174 (split!2 (tail!842 (tail!842 s1!51))))) (Cons!485 (head!816 (tail!842 s1!51)) (_2!174 (split!2 (tail!842 (tail!842 s1!51)))))))))

(declare-fun b!59265 () Bool)

(declare-fun e!31532 () tuple2!294)

(assert (=> b!59265 (= e!31532 e!31533)))

(declare-fun c!12806 () Bool)

(assert (=> b!59265 (= c!12806 (and (is-Cons!485 s1!51) (is-Nil!486 (tail!842 s1!51))))))

(declare-fun b!59266 () Bool)

(assert (=> b!59266 (= e!31533 (tuple2!295 (Cons!485 (head!816 s1!51) Nil!486) Nil!486))))

(declare-fun d!51023 () Bool)

(declare-fun lt!10927 () tuple2!294)

(assert (=> d!51023 (splitSpec!0 s1!51 lt!10927)))

(assert (=> d!51023 (= lt!10927 e!31532)))

(declare-fun c!12805 () Bool)

(assert (=> d!51023 (= c!12805 (is-Nil!486 s1!51))))

(assert (=> d!51023 (= (split!2 s1!51) lt!10927)))

(declare-fun b!59264 () Bool)

(assert (=> b!59264 (= e!31532 (tuple2!295 Nil!486 Nil!486))))

(assert (= (and b!59265 c!12806) b!59266))

(assert (= (and b!59265 (not c!12806)) b!59267))

(assert (= (and d!51023 c!12805) b!59264))

(assert (= (and d!51023 (not c!12805)) b!59265))

(declare-fun m!64086 () Bool)

(assert (=> b!59267 m!64086))

(declare-fun m!64088 () Bool)

(assert (=> d!51023 m!64088))

(assert (=> b!59183 d!51023))

(push 1)

(assert (not b!59238))

(assert (not b!59261))

(assert (not b!59234))

(assert (not b!59220))

(assert (not d!51003))

(assert (not d!50993))

(assert (not b!59231))

(assert (not d!50995))

(assert (not b!59228))

(assert (not b!59247))

(assert (not b!59210))

(assert (not d!51013))

(assert (not b!59240))

(assert (not b!59208))

(assert (not b!59246))

(assert (not d!51007))

(assert (not b!59224))

(assert (not d!51017))

(assert (not d!51001))

(assert (not d!51023))

(assert (not b!59245))

(assert (not d!51011))

(assert (not b!59232))

(assert (not b!59193))

(assert (not d!51019))

(assert (not b!59226))

(assert (not b!59212))

(assert (not b!59257))

(assert (not b!59263))

(assert (not b!59216))

(assert (not d!50985))

(assert (not b!59267))

(assert (not b!59251))

(assert (not b!59204))

(assert (not b!59253))

(assert (not d!50991))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


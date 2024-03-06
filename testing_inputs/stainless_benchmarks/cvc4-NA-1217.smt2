; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8644 () Bool)

(assert start!8644)

(declare-fun res!27804 () Bool)

(declare-fun e!31919 () Bool)

(assert (=> start!8644 (=> (not res!27804) (not e!31919))))

(declare-datatypes () ((List!534 (Cons!500 (head!839 (_ BitVec 32)) (tail!865 List!534)) (Nil!501))))

(declare-fun list!462 () List!534)

(assert (=> start!8644 (= res!27804 (not (is-Nil!501 list!462)))))

(assert (=> start!8644 e!31919))

(assert (=> start!8644 true))

(declare-fun b!59900 () Bool)

(declare-fun res!27806 () Bool)

(assert (=> b!59900 (=> (not res!27806) (not e!31919))))

(declare-datatypes () ((LList!10 (LNil!9) (LCons!9 (head!840 List!534) (tail!866 LList!10)))))

(declare-fun res!27377 () LList!10)

(declare-fun toLList!0 (List!534) LList!10)

(assert (=> b!59900 (= res!27806 (= res!27377 (LCons!9 (Cons!500 (head!839 list!462) Nil!501) (toLList!0 (tail!865 list!462)))))))

(declare-fun b!59901 () Bool)

(declare-fun e!31918 () Bool)

(assert (=> b!59901 (= e!31919 e!31918)))

(declare-fun res!27805 () Bool)

(assert (=> b!59901 (=> res!27805 e!31918)))

(declare-fun lContent!0 (LList!10) (Set (_ BitVec 32)))

(declare-fun content!15 (List!534) (Set (_ BitVec 32)))

(assert (=> b!59901 (= res!27805 (not (= (lContent!0 res!27377) (content!15 list!462))))))

(declare-fun b!59902 () Bool)

(declare-fun lIsSorted!0 (LList!10) Bool)

(assert (=> b!59902 (= e!31918 (not (lIsSorted!0 res!27377)))))

(assert (= (and start!8644 res!27804) b!59900))

(assert (= (and b!59900 res!27806) b!59901))

(assert (= (and b!59901 (not res!27805)) b!59902))

(declare-fun m!64742 () Bool)

(assert (=> b!59900 m!64742))

(declare-fun m!64744 () Bool)

(assert (=> b!59901 m!64744))

(declare-fun m!64746 () Bool)

(assert (=> b!59901 m!64746))

(declare-fun m!64748 () Bool)

(assert (=> b!59902 m!64748))

(push 1)

(assert (not b!59902))

(assert (not b!59901))

(assert (not b!59900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51263 () Bool)

(declare-fun res!27811 () Bool)

(declare-fun e!31924 () Bool)

(assert (=> d!51263 (=> res!27811 e!31924)))

(assert (=> d!51263 (= res!27811 (is-LNil!9 res!27377))))

(assert (=> d!51263 (= (lIsSorted!0 res!27377) e!31924)))

(declare-fun b!59907 () Bool)

(declare-fun e!31925 () Bool)

(assert (=> b!59907 (= e!31924 e!31925)))

(declare-fun res!27812 () Bool)

(assert (=> b!59907 (=> (not res!27812) (not e!31925))))

(declare-fun isSorted!4 (List!534) Bool)

(assert (=> b!59907 (= res!27812 (isSorted!4 (head!840 res!27377)))))

(declare-fun b!59908 () Bool)

(assert (=> b!59908 (= e!31925 (lIsSorted!0 (tail!866 res!27377)))))

(assert (= (and d!51263 (not res!27811)) b!59907))

(assert (= (and b!59907 res!27812) b!59908))

(declare-fun m!64750 () Bool)

(assert (=> b!59907 m!64750))

(declare-fun m!64752 () Bool)

(assert (=> b!59908 m!64752))

(assert (=> b!59902 d!51263))

(declare-fun d!51265 () Bool)

(declare-fun c!12990 () Bool)

(assert (=> d!51265 (= c!12990 (is-LNil!9 res!27377))))

(declare-fun e!31928 () (Set (_ BitVec 32)))

(assert (=> d!51265 (= (lContent!0 res!27377) e!31928)))

(declare-fun b!59913 () Bool)

(assert (=> b!59913 (= e!31928 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59914 () Bool)

(assert (=> b!59914 (= e!31928 (union (content!15 (head!840 res!27377)) (lContent!0 (tail!866 res!27377))))))

(assert (= (and d!51265 c!12990) b!59913))

(assert (= (and d!51265 (not c!12990)) b!59914))

(declare-fun m!64754 () Bool)

(assert (=> b!59914 m!64754))

(declare-fun m!64756 () Bool)

(assert (=> b!59914 m!64756))

(assert (=> b!59901 d!51265))

(declare-fun d!51267 () Bool)

(declare-fun c!12993 () Bool)

(assert (=> d!51267 (= c!12993 (is-Nil!501 list!462))))

(declare-fun e!31931 () (Set (_ BitVec 32)))

(assert (=> d!51267 (= (content!15 list!462) e!31931)))

(declare-fun b!59919 () Bool)

(assert (=> b!59919 (= e!31931 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59920 () Bool)

(assert (=> b!59920 (= e!31931 (union (insert (head!839 list!462) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!865 list!462))))))

(assert (= (and d!51267 c!12993) b!59919))

(assert (= (and d!51267 (not c!12993)) b!59920))

(declare-fun m!64758 () Bool)

(assert (=> b!59920 m!64758))

(declare-fun m!64760 () Bool)

(assert (=> b!59920 m!64760))

(assert (=> b!59901 d!51267))

(declare-fun d!51269 () Bool)

(declare-fun e!31937 () Bool)

(assert (=> d!51269 e!31937))

(declare-fun res!27816 () Bool)

(assert (=> d!51269 (=> (not res!27816) (not e!31937))))

(declare-fun lt!11096 () LList!10)

(assert (=> d!51269 (= res!27816 (= (lContent!0 lt!11096) (content!15 (tail!865 list!462))))))

(declare-fun e!31936 () LList!10)

(assert (=> d!51269 (= lt!11096 e!31936)))

(declare-fun c!12996 () Bool)

(assert (=> d!51269 (= c!12996 (is-Nil!501 (tail!865 list!462)))))

(assert (=> d!51269 (= (toLList!0 (tail!865 list!462)) lt!11096)))

(declare-fun b!59927 () Bool)

(assert (=> b!59927 (= e!31936 LNil!9)))

(declare-fun b!59928 () Bool)

(assert (=> b!59928 (= e!31936 (LCons!9 (Cons!500 (head!839 (tail!865 list!462)) Nil!501) (toLList!0 (tail!865 (tail!865 list!462)))))))

(declare-fun b!59929 () Bool)

(assert (=> b!59929 (= e!31937 (lIsSorted!0 lt!11096))))

(assert (= (and d!51269 c!12996) b!59927))

(assert (= (and d!51269 (not c!12996)) b!59928))

(assert (= (and d!51269 res!27816) b!59929))

(declare-fun m!64762 () Bool)

(assert (=> d!51269 m!64762))

(assert (=> d!51269 m!64760))

(declare-fun m!64764 () Bool)

(assert (=> b!59928 m!64764))

(declare-fun m!64766 () Bool)

(assert (=> b!59929 m!64766))

(assert (=> b!59900 d!51269))

(push 1)

(assert (not b!59929))

(assert (not d!51269))

(assert (not b!59907))

(assert (not b!59928))

(assert (not b!59914))

(assert (not b!59908))

(assert (not b!59920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51271 () Bool)

(declare-fun c!12997 () Bool)

(assert (=> d!51271 (= c!12997 (is-LNil!9 lt!11096))))

(declare-fun e!31938 () (Set (_ BitVec 32)))

(assert (=> d!51271 (= (lContent!0 lt!11096) e!31938)))

(declare-fun b!59930 () Bool)

(assert (=> b!59930 (= e!31938 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59931 () Bool)

(assert (=> b!59931 (= e!31938 (union (content!15 (head!840 lt!11096)) (lContent!0 (tail!866 lt!11096))))))

(assert (= (and d!51271 c!12997) b!59930))

(assert (= (and d!51271 (not c!12997)) b!59931))

(declare-fun m!64768 () Bool)

(assert (=> b!59931 m!64768))

(declare-fun m!64770 () Bool)

(assert (=> b!59931 m!64770))

(assert (=> d!51269 d!51271))

(declare-fun d!51273 () Bool)

(declare-fun c!12998 () Bool)

(assert (=> d!51273 (= c!12998 (is-Nil!501 (tail!865 list!462)))))

(declare-fun e!31939 () (Set (_ BitVec 32)))

(assert (=> d!51273 (= (content!15 (tail!865 list!462)) e!31939)))

(declare-fun b!59932 () Bool)

(assert (=> b!59932 (= e!31939 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59933 () Bool)

(assert (=> b!59933 (= e!31939 (union (insert (head!839 (tail!865 list!462)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!865 (tail!865 list!462)))))))

(assert (= (and d!51273 c!12998) b!59932))

(assert (= (and d!51273 (not c!12998)) b!59933))

(declare-fun m!64772 () Bool)

(assert (=> b!59933 m!64772))

(declare-fun m!64774 () Bool)

(assert (=> b!59933 m!64774))

(assert (=> d!51269 d!51273))

(assert (=> b!59920 d!51273))

(declare-fun d!51275 () Bool)

(declare-fun c!12999 () Bool)

(assert (=> d!51275 (= c!12999 (is-Nil!501 (head!840 res!27377)))))

(declare-fun e!31940 () (Set (_ BitVec 32)))

(assert (=> d!51275 (= (content!15 (head!840 res!27377)) e!31940)))

(declare-fun b!59934 () Bool)

(assert (=> b!59934 (= e!31940 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59935 () Bool)

(assert (=> b!59935 (= e!31940 (union (insert (head!839 (head!840 res!27377)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!865 (head!840 res!27377)))))))

(assert (= (and d!51275 c!12999) b!59934))

(assert (= (and d!51275 (not c!12999)) b!59935))

(declare-fun m!64776 () Bool)

(assert (=> b!59935 m!64776))

(declare-fun m!64778 () Bool)

(assert (=> b!59935 m!64778))

(assert (=> b!59914 d!51275))

(declare-fun d!51277 () Bool)

(declare-fun c!13000 () Bool)

(assert (=> d!51277 (= c!13000 (is-LNil!9 (tail!866 res!27377)))))

(declare-fun e!31941 () (Set (_ BitVec 32)))

(assert (=> d!51277 (= (lContent!0 (tail!866 res!27377)) e!31941)))

(declare-fun b!59936 () Bool)

(assert (=> b!59936 (= e!31941 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59937 () Bool)

(assert (=> b!59937 (= e!31941 (union (content!15 (head!840 (tail!866 res!27377))) (lContent!0 (tail!866 (tail!866 res!27377)))))))

(assert (= (and d!51277 c!13000) b!59936))

(assert (= (and d!51277 (not c!13000)) b!59937))

(declare-fun m!64780 () Bool)

(assert (=> b!59937 m!64780))

(declare-fun m!64782 () Bool)

(assert (=> b!59937 m!64782))

(assert (=> b!59914 d!51277))

(declare-fun d!51279 () Bool)

(declare-fun res!27817 () Bool)

(declare-fun e!31942 () Bool)

(assert (=> d!51279 (=> res!27817 e!31942)))

(assert (=> d!51279 (= res!27817 (is-LNil!9 lt!11096))))

(assert (=> d!51279 (= (lIsSorted!0 lt!11096) e!31942)))

(declare-fun b!59938 () Bool)

(declare-fun e!31943 () Bool)

(assert (=> b!59938 (= e!31942 e!31943)))

(declare-fun res!27818 () Bool)

(assert (=> b!59938 (=> (not res!27818) (not e!31943))))

(assert (=> b!59938 (= res!27818 (isSorted!4 (head!840 lt!11096)))))

(declare-fun b!59939 () Bool)

(assert (=> b!59939 (= e!31943 (lIsSorted!0 (tail!866 lt!11096)))))

(assert (= (and d!51279 (not res!27817)) b!59938))

(assert (= (and b!59938 res!27818) b!59939))

(declare-fun m!64784 () Bool)

(assert (=> b!59938 m!64784))

(declare-fun m!64786 () Bool)

(assert (=> b!59939 m!64786))

(assert (=> b!59929 d!51279))

(declare-fun d!51281 () Bool)

(declare-fun e!31945 () Bool)

(assert (=> d!51281 e!31945))

(declare-fun res!27819 () Bool)

(assert (=> d!51281 (=> (not res!27819) (not e!31945))))

(declare-fun lt!11097 () LList!10)

(assert (=> d!51281 (= res!27819 (= (lContent!0 lt!11097) (content!15 (tail!865 (tail!865 list!462)))))))

(declare-fun e!31944 () LList!10)

(assert (=> d!51281 (= lt!11097 e!31944)))

(declare-fun c!13001 () Bool)

(assert (=> d!51281 (= c!13001 (is-Nil!501 (tail!865 (tail!865 list!462))))))

(assert (=> d!51281 (= (toLList!0 (tail!865 (tail!865 list!462))) lt!11097)))

(declare-fun b!59940 () Bool)

(assert (=> b!59940 (= e!31944 LNil!9)))

(declare-fun b!59941 () Bool)

(assert (=> b!59941 (= e!31944 (LCons!9 (Cons!500 (head!839 (tail!865 (tail!865 list!462))) Nil!501) (toLList!0 (tail!865 (tail!865 (tail!865 list!462))))))))

(declare-fun b!59942 () Bool)

(assert (=> b!59942 (= e!31945 (lIsSorted!0 lt!11097))))

(assert (= (and d!51281 c!13001) b!59940))

(assert (= (and d!51281 (not c!13001)) b!59941))

(assert (= (and d!51281 res!27819) b!59942))

(declare-fun m!64788 () Bool)

(assert (=> d!51281 m!64788))

(assert (=> d!51281 m!64774))

(declare-fun m!64790 () Bool)

(assert (=> b!59941 m!64790))

(declare-fun m!64792 () Bool)

(assert (=> b!59942 m!64792))

(assert (=> b!59928 d!51281))

(declare-fun d!51283 () Bool)

(declare-fun res!27824 () Bool)

(declare-fun e!31950 () Bool)

(assert (=> d!51283 (=> res!27824 e!31950)))

(assert (=> d!51283 (= res!27824 (or (is-Nil!501 (head!840 res!27377)) (and (is-Cons!500 (head!840 res!27377)) (is-Nil!501 (tail!865 (head!840 res!27377))))))))

(assert (=> d!51283 (= (isSorted!4 (head!840 res!27377)) e!31950)))

(declare-fun b!59947 () Bool)

(declare-fun e!31951 () Bool)

(assert (=> b!59947 (= e!31950 e!31951)))

(declare-fun res!27825 () Bool)

(assert (=> b!59947 (=> (not res!27825) (not e!31951))))

(assert (=> b!59947 (= res!27825 (not (and (is-Cons!500 (head!840 res!27377)) (is-Cons!500 (tail!865 (head!840 res!27377))) (bvsgt (head!839 (head!840 res!27377)) (head!839 (tail!865 (head!840 res!27377)))))))))

(declare-fun b!59948 () Bool)

(assert (=> b!59948 (= e!31951 (isSorted!4 (tail!865 (head!840 res!27377))))))

(assert (= (and d!51283 (not res!27824)) b!59947))

(assert (= (and b!59947 res!27825) b!59948))

(declare-fun m!64794 () Bool)

(assert (=> b!59948 m!64794))

(assert (=> b!59907 d!51283))

(declare-fun d!51285 () Bool)

(declare-fun res!27826 () Bool)

(declare-fun e!31952 () Bool)

(assert (=> d!51285 (=> res!27826 e!31952)))

(assert (=> d!51285 (= res!27826 (is-LNil!9 (tail!866 res!27377)))))

(assert (=> d!51285 (= (lIsSorted!0 (tail!866 res!27377)) e!31952)))

(declare-fun b!59949 () Bool)

(declare-fun e!31953 () Bool)

(assert (=> b!59949 (= e!31952 e!31953)))

(declare-fun res!27827 () Bool)

(assert (=> b!59949 (=> (not res!27827) (not e!31953))))

(assert (=> b!59949 (= res!27827 (isSorted!4 (head!840 (tail!866 res!27377))))))

(declare-fun b!59950 () Bool)

(assert (=> b!59950 (= e!31953 (lIsSorted!0 (tail!866 (tail!866 res!27377))))))

(assert (= (and d!51285 (not res!27826)) b!59949))

(assert (= (and b!59949 res!27827) b!59950))

(declare-fun m!64796 () Bool)

(assert (=> b!59949 m!64796))

(declare-fun m!64798 () Bool)

(assert (=> b!59950 m!64798))

(assert (=> b!59908 d!51285))

(push 1)

(assert (not b!59935))

(assert (not b!59931))

(assert (not d!51281))

(assert (not b!59938))

(assert (not b!59948))

(assert (not b!59939))

(assert (not b!59937))

(assert (not b!59933))

(assert (not b!59949))

(assert (not b!59941))

(assert (not b!59950))

(assert (not b!59942))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51287 () Bool)

(declare-fun res!27828 () Bool)

(declare-fun e!31954 () Bool)

(assert (=> d!51287 (=> res!27828 e!31954)))

(assert (=> d!51287 (= res!27828 (is-LNil!9 lt!11097))))

(assert (=> d!51287 (= (lIsSorted!0 lt!11097) e!31954)))

(declare-fun b!59951 () Bool)

(declare-fun e!31955 () Bool)

(assert (=> b!59951 (= e!31954 e!31955)))

(declare-fun res!27829 () Bool)

(assert (=> b!59951 (=> (not res!27829) (not e!31955))))

(assert (=> b!59951 (= res!27829 (isSorted!4 (head!840 lt!11097)))))

(declare-fun b!59952 () Bool)

(assert (=> b!59952 (= e!31955 (lIsSorted!0 (tail!866 lt!11097)))))

(assert (= (and d!51287 (not res!27828)) b!59951))

(assert (= (and b!59951 res!27829) b!59952))

(declare-fun m!64800 () Bool)

(assert (=> b!59951 m!64800))

(declare-fun m!64802 () Bool)

(assert (=> b!59952 m!64802))

(assert (=> b!59942 d!51287))

(declare-fun d!51289 () Bool)

(declare-fun c!13002 () Bool)

(assert (=> d!51289 (= c!13002 (is-LNil!9 lt!11097))))

(declare-fun e!31956 () (Set (_ BitVec 32)))

(assert (=> d!51289 (= (lContent!0 lt!11097) e!31956)))

(declare-fun b!59953 () Bool)

(assert (=> b!59953 (= e!31956 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59954 () Bool)

(assert (=> b!59954 (= e!31956 (union (content!15 (head!840 lt!11097)) (lContent!0 (tail!866 lt!11097))))))

(assert (= (and d!51289 c!13002) b!59953))

(assert (= (and d!51289 (not c!13002)) b!59954))

(declare-fun m!64804 () Bool)

(assert (=> b!59954 m!64804))

(declare-fun m!64806 () Bool)

(assert (=> b!59954 m!64806))

(assert (=> d!51281 d!51289))

(declare-fun d!51291 () Bool)

(declare-fun c!13003 () Bool)

(assert (=> d!51291 (= c!13003 (is-Nil!501 (tail!865 (tail!865 list!462))))))

(declare-fun e!31957 () (Set (_ BitVec 32)))

(assert (=> d!51291 (= (content!15 (tail!865 (tail!865 list!462))) e!31957)))

(declare-fun b!59955 () Bool)

(assert (=> b!59955 (= e!31957 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59956 () Bool)

(assert (=> b!59956 (= e!31957 (union (insert (head!839 (tail!865 (tail!865 list!462))) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!865 (tail!865 (tail!865 list!462))))))))

(assert (= (and d!51291 c!13003) b!59955))

(assert (= (and d!51291 (not c!13003)) b!59956))

(declare-fun m!64808 () Bool)

(assert (=> b!59956 m!64808))

(declare-fun m!64810 () Bool)

(assert (=> b!59956 m!64810))

(assert (=> d!51281 d!51291))

(assert (=> b!59933 d!51291))

(declare-fun d!51293 () Bool)

(declare-fun c!13004 () Bool)

(assert (=> d!51293 (= c!13004 (is-Nil!501 (head!840 lt!11096)))))

(declare-fun e!31958 () (Set (_ BitVec 32)))

(assert (=> d!51293 (= (content!15 (head!840 lt!11096)) e!31958)))

(declare-fun b!59957 () Bool)

(assert (=> b!59957 (= e!31958 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59958 () Bool)

(assert (=> b!59958 (= e!31958 (union (insert (head!839 (head!840 lt!11096)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!865 (head!840 lt!11096)))))))

(assert (= (and d!51293 c!13004) b!59957))

(assert (= (and d!51293 (not c!13004)) b!59958))

(declare-fun m!64812 () Bool)

(assert (=> b!59958 m!64812))

(declare-fun m!64814 () Bool)

(assert (=> b!59958 m!64814))

(assert (=> b!59931 d!51293))

(declare-fun d!51295 () Bool)

(declare-fun c!13005 () Bool)

(assert (=> d!51295 (= c!13005 (is-LNil!9 (tail!866 lt!11096)))))

(declare-fun e!31959 () (Set (_ BitVec 32)))

(assert (=> d!51295 (= (lContent!0 (tail!866 lt!11096)) e!31959)))

(declare-fun b!59959 () Bool)

(assert (=> b!59959 (= e!31959 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59960 () Bool)

(assert (=> b!59960 (= e!31959 (union (content!15 (head!840 (tail!866 lt!11096))) (lContent!0 (tail!866 (tail!866 lt!11096)))))))

(assert (= (and d!51295 c!13005) b!59959))

(assert (= (and d!51295 (not c!13005)) b!59960))

(declare-fun m!64816 () Bool)

(assert (=> b!59960 m!64816))

(declare-fun m!64818 () Bool)

(assert (=> b!59960 m!64818))

(assert (=> b!59931 d!51295))

(declare-fun d!51297 () Bool)

(declare-fun c!13006 () Bool)

(assert (=> d!51297 (= c!13006 (is-Nil!501 (head!840 (tail!866 res!27377))))))

(declare-fun e!31960 () (Set (_ BitVec 32)))

(assert (=> d!51297 (= (content!15 (head!840 (tail!866 res!27377))) e!31960)))

(declare-fun b!59961 () Bool)

(assert (=> b!59961 (= e!31960 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59962 () Bool)

(assert (=> b!59962 (= e!31960 (union (insert (head!839 (head!840 (tail!866 res!27377))) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!865 (head!840 (tail!866 res!27377))))))))

(assert (= (and d!51297 c!13006) b!59961))

(assert (= (and d!51297 (not c!13006)) b!59962))

(declare-fun m!64820 () Bool)

(assert (=> b!59962 m!64820))

(declare-fun m!64822 () Bool)

(assert (=> b!59962 m!64822))

(assert (=> b!59937 d!51297))

(declare-fun d!51299 () Bool)

(declare-fun c!13007 () Bool)

(assert (=> d!51299 (= c!13007 (is-LNil!9 (tail!866 (tail!866 res!27377))))))

(declare-fun e!31961 () (Set (_ BitVec 32)))

(assert (=> d!51299 (= (lContent!0 (tail!866 (tail!866 res!27377))) e!31961)))

(declare-fun b!59963 () Bool)

(assert (=> b!59963 (= e!31961 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59964 () Bool)

(assert (=> b!59964 (= e!31961 (union (content!15 (head!840 (tail!866 (tail!866 res!27377)))) (lContent!0 (tail!866 (tail!866 (tail!866 res!27377))))))))

(assert (= (and d!51299 c!13007) b!59963))

(assert (= (and d!51299 (not c!13007)) b!59964))

(declare-fun m!64824 () Bool)

(assert (=> b!59964 m!64824))

(declare-fun m!64826 () Bool)

(assert (=> b!59964 m!64826))

(assert (=> b!59937 d!51299))

(declare-fun d!51301 () Bool)

(declare-fun res!27830 () Bool)

(declare-fun e!31962 () Bool)

(assert (=> d!51301 (=> res!27830 e!31962)))

(assert (=> d!51301 (= res!27830 (or (is-Nil!501 (head!840 (tail!866 res!27377))) (and (is-Cons!500 (head!840 (tail!866 res!27377))) (is-Nil!501 (tail!865 (head!840 (tail!866 res!27377)))))))))

(assert (=> d!51301 (= (isSorted!4 (head!840 (tail!866 res!27377))) e!31962)))

(declare-fun b!59965 () Bool)

(declare-fun e!31963 () Bool)

(assert (=> b!59965 (= e!31962 e!31963)))

(declare-fun res!27831 () Bool)

(assert (=> b!59965 (=> (not res!27831) (not e!31963))))

(assert (=> b!59965 (= res!27831 (not (and (is-Cons!500 (head!840 (tail!866 res!27377))) (is-Cons!500 (tail!865 (head!840 (tail!866 res!27377)))) (bvsgt (head!839 (head!840 (tail!866 res!27377))) (head!839 (tail!865 (head!840 (tail!866 res!27377))))))))))

(declare-fun b!59966 () Bool)

(assert (=> b!59966 (= e!31963 (isSorted!4 (tail!865 (head!840 (tail!866 res!27377)))))))

(assert (= (and d!51301 (not res!27830)) b!59965))

(assert (= (and b!59965 res!27831) b!59966))

(declare-fun m!64828 () Bool)

(assert (=> b!59966 m!64828))

(assert (=> b!59949 d!51301))

(declare-fun d!51303 () Bool)

(declare-fun c!13008 () Bool)

(assert (=> d!51303 (= c!13008 (is-Nil!501 (tail!865 (head!840 res!27377))))))

(declare-fun e!31964 () (Set (_ BitVec 32)))

(assert (=> d!51303 (= (content!15 (tail!865 (head!840 res!27377))) e!31964)))

(declare-fun b!59967 () Bool)

(assert (=> b!59967 (= e!31964 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59968 () Bool)

(assert (=> b!59968 (= e!31964 (union (insert (head!839 (tail!865 (head!840 res!27377))) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!865 (tail!865 (head!840 res!27377))))))))

(assert (= (and d!51303 c!13008) b!59967))

(assert (= (and d!51303 (not c!13008)) b!59968))

(declare-fun m!64830 () Bool)

(assert (=> b!59968 m!64830))

(declare-fun m!64832 () Bool)

(assert (=> b!59968 m!64832))

(assert (=> b!59935 d!51303))

(declare-fun d!51305 () Bool)

(declare-fun e!31966 () Bool)

(assert (=> d!51305 e!31966))

(declare-fun res!27832 () Bool)

(assert (=> d!51305 (=> (not res!27832) (not e!31966))))

(declare-fun lt!11098 () LList!10)

(assert (=> d!51305 (= res!27832 (= (lContent!0 lt!11098) (content!15 (tail!865 (tail!865 (tail!865 list!462))))))))

(declare-fun e!31965 () LList!10)

(assert (=> d!51305 (= lt!11098 e!31965)))

(declare-fun c!13009 () Bool)

(assert (=> d!51305 (= c!13009 (is-Nil!501 (tail!865 (tail!865 (tail!865 list!462)))))))

(assert (=> d!51305 (= (toLList!0 (tail!865 (tail!865 (tail!865 list!462)))) lt!11098)))

(declare-fun b!59969 () Bool)

(assert (=> b!59969 (= e!31965 LNil!9)))

(declare-fun b!59970 () Bool)

(assert (=> b!59970 (= e!31965 (LCons!9 (Cons!500 (head!839 (tail!865 (tail!865 (tail!865 list!462)))) Nil!501) (toLList!0 (tail!865 (tail!865 (tail!865 (tail!865 list!462)))))))))

(declare-fun b!59971 () Bool)

(assert (=> b!59971 (= e!31966 (lIsSorted!0 lt!11098))))

(assert (= (and d!51305 c!13009) b!59969))

(assert (= (and d!51305 (not c!13009)) b!59970))

(assert (= (and d!51305 res!27832) b!59971))

(declare-fun m!64834 () Bool)

(assert (=> d!51305 m!64834))

(assert (=> d!51305 m!64810))

(declare-fun m!64836 () Bool)

(assert (=> b!59970 m!64836))

(declare-fun m!64838 () Bool)

(assert (=> b!59971 m!64838))

(assert (=> b!59941 d!51305))

(declare-fun d!51307 () Bool)

(declare-fun res!27833 () Bool)

(declare-fun e!31967 () Bool)

(assert (=> d!51307 (=> res!27833 e!31967)))

(assert (=> d!51307 (= res!27833 (or (is-Nil!501 (head!840 lt!11096)) (and (is-Cons!500 (head!840 lt!11096)) (is-Nil!501 (tail!865 (head!840 lt!11096))))))))

(assert (=> d!51307 (= (isSorted!4 (head!840 lt!11096)) e!31967)))

(declare-fun b!59972 () Bool)

(declare-fun e!31968 () Bool)

(assert (=> b!59972 (= e!31967 e!31968)))

(declare-fun res!27834 () Bool)

(assert (=> b!59972 (=> (not res!27834) (not e!31968))))

(assert (=> b!59972 (= res!27834 (not (and (is-Cons!500 (head!840 lt!11096)) (is-Cons!500 (tail!865 (head!840 lt!11096))) (bvsgt (head!839 (head!840 lt!11096)) (head!839 (tail!865 (head!840 lt!11096)))))))))

(declare-fun b!59973 () Bool)

(assert (=> b!59973 (= e!31968 (isSorted!4 (tail!865 (head!840 lt!11096))))))

(assert (= (and d!51307 (not res!27833)) b!59972))

(assert (= (and b!59972 res!27834) b!59973))

(declare-fun m!64840 () Bool)

(assert (=> b!59973 m!64840))

(assert (=> b!59938 d!51307))

(declare-fun d!51309 () Bool)

(declare-fun res!27835 () Bool)

(declare-fun e!31969 () Bool)

(assert (=> d!51309 (=> res!27835 e!31969)))

(assert (=> d!51309 (= res!27835 (or (is-Nil!501 (tail!865 (head!840 res!27377))) (and (is-Cons!500 (tail!865 (head!840 res!27377))) (is-Nil!501 (tail!865 (tail!865 (head!840 res!27377)))))))))

(assert (=> d!51309 (= (isSorted!4 (tail!865 (head!840 res!27377))) e!31969)))

(declare-fun b!59974 () Bool)

(declare-fun e!31970 () Bool)

(assert (=> b!59974 (= e!31969 e!31970)))

(declare-fun res!27836 () Bool)

(assert (=> b!59974 (=> (not res!27836) (not e!31970))))

(assert (=> b!59974 (= res!27836 (not (and (is-Cons!500 (tail!865 (head!840 res!27377))) (is-Cons!500 (tail!865 (tail!865 (head!840 res!27377)))) (bvsgt (head!839 (tail!865 (head!840 res!27377))) (head!839 (tail!865 (tail!865 (head!840 res!27377))))))))))

(declare-fun b!59975 () Bool)

(assert (=> b!59975 (= e!31970 (isSorted!4 (tail!865 (tail!865 (head!840 res!27377)))))))

(assert (= (and d!51309 (not res!27835)) b!59974))

(assert (= (and b!59974 res!27836) b!59975))

(declare-fun m!64842 () Bool)

(assert (=> b!59975 m!64842))

(assert (=> b!59948 d!51309))

(declare-fun d!51311 () Bool)

(declare-fun res!27837 () Bool)

(declare-fun e!31971 () Bool)

(assert (=> d!51311 (=> res!27837 e!31971)))

(assert (=> d!51311 (= res!27837 (is-LNil!9 (tail!866 (tail!866 res!27377))))))

(assert (=> d!51311 (= (lIsSorted!0 (tail!866 (tail!866 res!27377))) e!31971)))

(declare-fun b!59976 () Bool)

(declare-fun e!31972 () Bool)

(assert (=> b!59976 (= e!31971 e!31972)))

(declare-fun res!27838 () Bool)

(assert (=> b!59976 (=> (not res!27838) (not e!31972))))

(assert (=> b!59976 (= res!27838 (isSorted!4 (head!840 (tail!866 (tail!866 res!27377)))))))

(declare-fun b!59977 () Bool)

(assert (=> b!59977 (= e!31972 (lIsSorted!0 (tail!866 (tail!866 (tail!866 res!27377)))))))

(assert (= (and d!51311 (not res!27837)) b!59976))

(assert (= (and b!59976 res!27838) b!59977))

(declare-fun m!64844 () Bool)

(assert (=> b!59976 m!64844))

(declare-fun m!64846 () Bool)

(assert (=> b!59977 m!64846))

(assert (=> b!59950 d!51311))

(declare-fun d!51313 () Bool)

(declare-fun res!27839 () Bool)

(declare-fun e!31973 () Bool)

(assert (=> d!51313 (=> res!27839 e!31973)))

(assert (=> d!51313 (= res!27839 (is-LNil!9 (tail!866 lt!11096)))))

(assert (=> d!51313 (= (lIsSorted!0 (tail!866 lt!11096)) e!31973)))

(declare-fun b!59978 () Bool)

(declare-fun e!31974 () Bool)

(assert (=> b!59978 (= e!31973 e!31974)))

(declare-fun res!27840 () Bool)

(assert (=> b!59978 (=> (not res!27840) (not e!31974))))

(assert (=> b!59978 (= res!27840 (isSorted!4 (head!840 (tail!866 lt!11096))))))

(declare-fun b!59979 () Bool)

(assert (=> b!59979 (= e!31974 (lIsSorted!0 (tail!866 (tail!866 lt!11096))))))

(assert (= (and d!51313 (not res!27839)) b!59978))

(assert (= (and b!59978 res!27840) b!59979))

(declare-fun m!64848 () Bool)

(assert (=> b!59978 m!64848))

(declare-fun m!64850 () Bool)

(assert (=> b!59979 m!64850))

(assert (=> b!59939 d!51313))

(push 1)

(assert (not b!59952))

(assert (not b!59956))

(assert (not b!59966))

(assert (not b!59958))

(assert (not b!59979))

(assert (not b!59954))

(assert (not b!59970))

(assert (not b!59962))

(assert (not d!51305))

(assert (not b!59975))

(assert (not b!59977))

(assert (not b!59971))

(assert (not b!59968))

(assert (not b!59960))

(assert (not b!59964))

(assert (not b!59951))

(assert (not b!59976))

(assert (not b!59978))

(assert (not b!59973))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


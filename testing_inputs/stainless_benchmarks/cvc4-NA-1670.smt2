; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11592 () Bool)

(assert start!11592)

(declare-fun b_free!7517 () Bool)

(declare-fun b_next!39859 () Bool)

(assert (=> start!11592 (= b_free!7517 (not b_next!39859))))

(declare-fun tp!17335 () Bool)

(declare-fun b_and!60249 () Bool)

(assert (=> start!11592 (= tp!17335 b_and!60249)))

(declare-fun b!88737 () Bool)

(declare-fun e!48238 () Bool)

(declare-fun tp_is_empty!383 () Bool)

(declare-fun tp!17333 () Bool)

(assert (=> b!88737 (= e!48238 (and tp_is_empty!383 tp!17333))))

(declare-fun b!88738 () Bool)

(declare-fun res!46446 () Bool)

(declare-fun e!48236 () Bool)

(assert (=> b!88738 (=> (not res!46446) (not e!48236))))

(declare-datatypes () ((T!6003 (T!6004 (val!194 Int)))))

(declare-datatypes () ((List!738 (Cons!692 (h!1096 T!6003) (t!48737 List!738)) (Nil!694))))

(declare-fun l!1632 () List!738)

(declare-fun tlSorted!8 () List!738)

(declare-fun res!45969 () List!738)

(declare-fun key!546 () Int)

(declare-fun insert!31 (T!6003 List!738 Int) List!738)

(assert (=> b!88738 (= res!46446 (= res!45969 (insert!31 (h!1096 l!1632) tlSorted!8 key!546)))))

(declare-fun b!88739 () Bool)

(declare-fun res!46448 () Bool)

(assert (=> b!88739 (=> (not res!46448) (not e!48236))))

(declare-fun sort!8 (List!738 Int) List!738)

(assert (=> b!88739 (= res!46448 (= tlSorted!8 (sort!8 (t!48737 l!1632) key!546)))))

(declare-fun b!88740 () Bool)

(declare-fun e!48237 () Bool)

(declare-fun tp!17332 () Bool)

(assert (=> b!88740 (= e!48237 (and tp_is_empty!383 tp!17332))))

(declare-fun res!46445 () Bool)

(assert (=> start!11592 (=> (not res!46445) (not e!48236))))

(assert (=> start!11592 (= res!46445 (not (is-Nil!694 l!1632)))))

(assert (=> start!11592 e!48236))

(assert (=> start!11592 e!48237))

(assert (=> start!11592 e!48238))

(assert (=> start!11592 tp!17335))

(declare-fun e!48239 () Bool)

(assert (=> start!11592 e!48239))

(declare-fun b!88741 () Bool)

(declare-fun e!48235 () Bool)

(assert (=> b!88741 (= e!48236 e!48235)))

(declare-fun res!46447 () Bool)

(assert (=> b!88741 (=> res!46447 e!48235)))

(declare-fun content!162 (List!738) (Set T!6003))

(assert (=> b!88741 (= res!46447 (not (= (content!162 res!45969) (content!162 l!1632))))))

(declare-fun b!88742 () Bool)

(declare-fun tp!17334 () Bool)

(assert (=> b!88742 (= e!48239 (and tp_is_empty!383 tp!17334))))

(declare-fun b!88743 () Bool)

(declare-fun length!14 (List!738) Int)

(assert (=> b!88743 (= e!48235 (not (= (length!14 res!45969) (length!14 l!1632))))))

(assert (= (and start!11592 res!46445) b!88739))

(assert (= (and b!88739 res!46448) b!88738))

(assert (= (and b!88738 res!46446) b!88741))

(assert (= (and b!88741 (not res!46447)) b!88743))

(assert (= (and start!11592 (is-Cons!692 l!1632)) b!88740))

(assert (= (and start!11592 (is-Cons!692 tlSorted!8)) b!88737))

(assert (= (and start!11592 (is-Cons!692 res!45969)) b!88742))

(declare-fun m!84872 () Bool)

(assert (=> b!88738 m!84872))

(declare-fun m!84874 () Bool)

(assert (=> b!88739 m!84874))

(declare-fun m!84876 () Bool)

(assert (=> b!88741 m!84876))

(declare-fun m!84878 () Bool)

(assert (=> b!88741 m!84878))

(declare-fun m!84880 () Bool)

(assert (=> b!88743 m!84880))

(declare-fun m!84882 () Bool)

(assert (=> b!88743 m!84882))

(push 1)

(assert (not b!88737))

(assert (not b!88742))

(assert tp_is_empty!383)

(assert (not b!88743))

(assert (not b!88738))

(assert b_and!60249)

(assert (not b_next!39859))

(assert (not b!88741))

(assert (not b!88739))

(assert (not b!88740))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60249)

(assert (not b_next!39859))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58865 () Bool)

(declare-fun e!48244 () Bool)

(assert (=> d!58865 e!48244))

(declare-fun res!46452 () Bool)

(assert (=> d!58865 (=> (not res!46452) (not e!48244))))

(declare-fun lt!20328 () List!738)

(assert (=> d!58865 (= res!46452 (= (content!162 lt!20328) (content!162 (t!48737 l!1632))))))

(declare-fun e!48245 () List!738)

(assert (=> d!58865 (= lt!20328 e!48245)))

(declare-fun c!21834 () Bool)

(assert (=> d!58865 (= c!21834 (is-Nil!694 (t!48737 l!1632)))))

(assert (=> d!58865 (= (sort!8 (t!48737 l!1632) key!546) lt!20328)))

(declare-fun b!88750 () Bool)

(assert (=> b!88750 (= e!48245 (t!48737 l!1632))))

(declare-fun b!88751 () Bool)

(assert (=> b!88751 (= e!48245 (insert!31 (h!1096 (t!48737 l!1632)) (sort!8 (t!48737 (t!48737 l!1632)) key!546) key!546))))

(declare-fun b!88752 () Bool)

(assert (=> b!88752 (= e!48244 (= (length!14 lt!20328) (length!14 (t!48737 l!1632))))))

(assert (= (and d!58865 c!21834) b!88750))

(assert (= (and d!58865 (not c!21834)) b!88751))

(assert (= (and d!58865 res!46452) b!88752))

(declare-fun m!84884 () Bool)

(assert (=> d!58865 m!84884))

(declare-fun m!84886 () Bool)

(assert (=> d!58865 m!84886))

(declare-fun m!84888 () Bool)

(assert (=> b!88751 m!84888))

(assert (=> b!88751 m!84888))

(declare-fun m!84890 () Bool)

(assert (=> b!88751 m!84890))

(declare-fun m!84892 () Bool)

(assert (=> b!88752 m!84892))

(declare-fun m!84894 () Bool)

(assert (=> b!88752 m!84894))

(assert (=> b!88739 d!58865))

(declare-fun d!58867 () Bool)

(declare-fun c!21837 () Bool)

(assert (=> d!58867 (= c!21837 (is-Nil!694 res!45969))))

(declare-fun e!48248 () (Set T!6003))

(assert (=> d!58867 (= (content!162 res!45969) e!48248)))

(declare-fun b!88757 () Bool)

(assert (=> b!88757 (= e!48248 (as emptyset (Set T!6003)))))

(declare-fun b!88758 () Bool)

(assert (=> b!88758 (= e!48248 (union (insert (h!1096 res!45969) (as emptyset (Set T!6003))) (content!162 (t!48737 res!45969))))))

(assert (= (and d!58867 c!21837) b!88757))

(assert (= (and d!58867 (not c!21837)) b!88758))

(declare-fun m!84896 () Bool)

(assert (=> b!88758 m!84896))

(declare-fun m!84898 () Bool)

(assert (=> b!88758 m!84898))

(assert (=> b!88741 d!58867))

(declare-fun d!58869 () Bool)

(declare-fun c!21838 () Bool)

(assert (=> d!58869 (= c!21838 (is-Nil!694 l!1632))))

(declare-fun e!48249 () (Set T!6003))

(assert (=> d!58869 (= (content!162 l!1632) e!48249)))

(declare-fun b!88759 () Bool)

(assert (=> b!88759 (= e!48249 (as emptyset (Set T!6003)))))

(declare-fun b!88760 () Bool)

(assert (=> b!88760 (= e!48249 (union (insert (h!1096 l!1632) (as emptyset (Set T!6003))) (content!162 (t!48737 l!1632))))))

(assert (= (and d!58869 c!21838) b!88759))

(assert (= (and d!58869 (not c!21838)) b!88760))

(declare-fun m!84900 () Bool)

(assert (=> b!88760 m!84900))

(assert (=> b!88760 m!84886))

(assert (=> b!88741 d!58869))

(declare-fun d!58871 () Bool)

(declare-fun size!716 (List!738) Int)

(assert (=> d!58871 (= (length!14 res!45969) (size!716 res!45969))))

(declare-fun bs!41413 () Bool)

(assert (= bs!41413 d!58871))

(declare-fun m!84902 () Bool)

(assert (=> bs!41413 m!84902))

(assert (=> b!88743 d!58871))

(declare-fun d!58873 () Bool)

(assert (=> d!58873 (= (length!14 l!1632) (size!716 l!1632))))

(declare-fun bs!41414 () Bool)

(assert (= bs!41414 d!58873))

(declare-fun m!84904 () Bool)

(assert (=> bs!41414 m!84904))

(assert (=> b!88743 d!58873))

(declare-fun b!88781 () Bool)

(declare-fun e!48273 () List!738)

(declare-fun e!48271 () List!738)

(assert (=> b!88781 (= e!48273 e!48271)))

(declare-fun c!21843 () Bool)

(declare-fun e!48270 () Bool)

(assert (=> b!88781 (= c!21843 e!48270)))

(declare-fun res!46469 () Bool)

(assert (=> b!88781 (=> res!46469 e!48270)))

(declare-fun lt!20333 () Bool)

(assert (=> b!88781 (= res!46469 lt!20333)))

(declare-fun b!88782 () Bool)

(declare-fun e!48268 () Bool)

(assert (=> b!88782 (= e!48270 e!48268)))

(declare-fun res!46471 () Bool)

(assert (=> b!88782 (=> (not res!46471) (not e!48268))))

(assert (=> b!88782 (= res!46471 (and (not lt!20333) (is-Cons!692 tlSorted!8)))))

(declare-fun b!88783 () Bool)

(declare-fun $colon$colon!20 (List!738 T!6003) List!738)

(assert (=> b!88783 (= e!48271 ($colon$colon!20 tlSorted!8 (h!1096 l!1632)))))

(declare-fun b!88784 () Bool)

(declare-fun e!48269 () Bool)

(declare-fun dynLambda!1060 (Int T!6003) Int)

(assert (=> b!88784 (= e!48269 (<= (dynLambda!1060 key!546 (h!1096 l!1632)) (dynLambda!1060 key!546 (h!1096 tlSorted!8))))))

(declare-fun b!88785 () Bool)

(declare-fun e!48272 () Bool)

(declare-fun tp!17338 () Bool)

(assert (=> b!88785 (= e!48272 (and tp_is_empty!383 tp!17338))))

(declare-fun b!88786 () Bool)

(declare-fun e!48266 () Bool)

(declare-fun lt!20334 () List!738)

(assert (=> b!88786 (= e!48266 (= (length!14 lt!20334) (+ 1 (length!14 tlSorted!8))))))

(declare-fun d!58875 () Bool)

(assert (=> d!58875 e!48266))

(declare-fun res!46473 () Bool)

(assert (=> d!58875 (=> (not res!46473) (not e!48266))))

(assert (=> d!58875 (= res!46473 (= (content!162 lt!20334) (union (insert (h!1096 l!1632) (as emptyset (Set T!6003))) (content!162 tlSorted!8))))))

(assert (=> d!58875 (= lt!20334 e!48273)))

(declare-fun c!21844 () Bool)

(declare-fun e!48267 () Bool)

(assert (=> d!58875 (= c!21844 e!48267)))

(declare-fun res!46470 () Bool)

(assert (=> d!58875 (=> res!46470 e!48267)))

(assert (=> d!58875 (= res!46470 lt!20333)))

(assert (=> d!58875 (= lt!20333 (is-Nil!694 tlSorted!8))))

(assert (=> d!58875 (= (insert!31 (h!1096 l!1632) tlSorted!8 key!546) lt!20334)))

(declare-fun b!88787 () Bool)

(assert (=> b!88787 (= e!48268 (<= (dynLambda!1060 key!546 (h!1096 l!1632)) (dynLambda!1060 key!546 (h!1096 tlSorted!8))))))

(declare-fun b!88788 () Bool)

(assert (=> b!88788 (= e!48267 e!48269)))

(declare-fun res!46474 () Bool)

(assert (=> b!88788 (=> (not res!46474) (not e!48269))))

(assert (=> b!88788 (= res!46474 (is-Cons!692 tlSorted!8))))

(declare-fun b!88789 () Bool)

(assert (=> b!88789 (= e!48273 ($colon$colon!20 (insert!31 (h!1096 l!1632) (t!48737 tlSorted!8) key!546) (h!1096 tlSorted!8)))))

(declare-fun b!88790 () Bool)

(declare-fun res!46472 () List!738)

(assert (=> b!88790 (= e!48271 res!46472)))

(assert (=> b!88790 true))

(assert (=> b!88790 e!48272))

(assert (= (and d!58875 (not res!46470)) b!88788))

(assert (= (and b!88788 res!46474) b!88784))

(assert (= (and b!88781 (not res!46469)) b!88782))

(assert (= (and b!88782 res!46471) b!88787))

(assert (= (and b!88790 (is-Cons!692 res!46472)) b!88785))

(assert (= (and b!88781 c!21843) b!88783))

(assert (= (and b!88781 (not c!21843)) b!88790))

(assert (= (and d!58875 c!21844) b!88781))

(assert (= (and d!58875 (not c!21844)) b!88789))

(assert (= (and d!58875 res!46473) b!88786))

(declare-fun b_lambda!17743 () Bool)

(assert (=> (not b_lambda!17743) (not b!88784)))

(declare-fun t!48740 () Bool)

(declare-fun tb!46633 () Bool)

(assert (=> (and start!11592 (= key!546 key!546) t!48740) tb!46633))

(declare-fun result!47079 () Bool)

(assert (=> tb!46633 (= result!47079 true)))

(assert (=> b!88784 t!48740))

(declare-fun b_and!60251 () Bool)

(assert (= b_and!60249 (and (=> t!48740 result!47079) b_and!60251)))

(declare-fun b_lambda!17745 () Bool)

(assert (=> (not b_lambda!17745) (not b!88784)))

(declare-fun t!48742 () Bool)

(declare-fun tb!46635 () Bool)

(assert (=> (and start!11592 (= key!546 key!546) t!48742) tb!46635))

(declare-fun result!47081 () Bool)

(assert (=> tb!46635 (= result!47081 true)))

(assert (=> b!88784 t!48742))

(declare-fun b_and!60253 () Bool)

(assert (= b_and!60251 (and (=> t!48742 result!47081) b_and!60253)))

(declare-fun b_lambda!17747 () Bool)

(assert (=> (not b_lambda!17747) (not b!88787)))

(assert (=> b!88787 t!48740))

(declare-fun b_and!60255 () Bool)

(assert (= b_and!60253 (and (=> t!48740 result!47079) b_and!60255)))

(declare-fun b_lambda!17749 () Bool)

(assert (=> (not b_lambda!17749) (not b!88787)))

(assert (=> b!88787 t!48742))

(declare-fun b_and!60257 () Bool)

(assert (= b_and!60255 (and (=> t!48742 result!47081) b_and!60257)))

(declare-fun m!84906 () Bool)

(assert (=> b!88784 m!84906))

(declare-fun m!84908 () Bool)

(assert (=> b!88784 m!84908))

(declare-fun m!84910 () Bool)

(assert (=> d!58875 m!84910))

(assert (=> d!58875 m!84900))

(declare-fun m!84912 () Bool)

(assert (=> d!58875 m!84912))

(declare-fun m!84914 () Bool)

(assert (=> b!88786 m!84914))

(declare-fun m!84916 () Bool)

(assert (=> b!88786 m!84916))

(assert (=> b!88787 m!84906))

(assert (=> b!88787 m!84908))

(declare-fun m!84918 () Bool)

(assert (=> b!88789 m!84918))

(assert (=> b!88789 m!84918))

(declare-fun m!84920 () Bool)

(assert (=> b!88789 m!84920))

(declare-fun m!84922 () Bool)

(assert (=> b!88783 m!84922))

(assert (=> b!88738 d!58875))

(declare-fun b!88795 () Bool)

(declare-fun e!48276 () Bool)

(declare-fun tp!17341 () Bool)

(assert (=> b!88795 (= e!48276 (and tp_is_empty!383 tp!17341))))

(assert (=> b!88740 (= tp!17332 e!48276)))

(assert (= (and b!88740 (is-Cons!692 (t!48737 l!1632))) b!88795))

(declare-fun b!88796 () Bool)

(declare-fun e!48277 () Bool)

(declare-fun tp!17342 () Bool)

(assert (=> b!88796 (= e!48277 (and tp_is_empty!383 tp!17342))))

(assert (=> b!88742 (= tp!17334 e!48277)))

(assert (= (and b!88742 (is-Cons!692 (t!48737 res!45969))) b!88796))

(declare-fun b!88797 () Bool)

(declare-fun e!48278 () Bool)

(declare-fun tp!17343 () Bool)

(assert (=> b!88797 (= e!48278 (and tp_is_empty!383 tp!17343))))

(assert (=> b!88737 (= tp!17333 e!48278)))

(assert (= (and b!88737 (is-Cons!692 (t!48737 tlSorted!8))) b!88797))

(declare-fun b_lambda!17751 () Bool)

(assert (= b_lambda!17743 (or (and start!11592 b_free!7517) b_lambda!17751)))

(declare-fun b_lambda!17753 () Bool)

(assert (= b_lambda!17749 (or (and start!11592 b_free!7517) b_lambda!17753)))

(declare-fun b_lambda!17755 () Bool)

(assert (= b_lambda!17745 (or (and start!11592 b_free!7517) b_lambda!17755)))

(declare-fun b_lambda!17757 () Bool)

(assert (= b_lambda!17747 (or (and start!11592 b_free!7517) b_lambda!17757)))

(push 1)

(assert (not d!58873))

(assert (not b!88752))

(assert (not b!88797))

(assert (not b_lambda!17753))

(assert tp_is_empty!383)

(assert (not b!88789))

(assert (not b!88796))

(assert (not b_lambda!17757))

(assert (not b_lambda!17755))

(assert (not b!88785))

(assert (not b!88783))

(assert (not b!88758))

(assert (not d!58871))

(assert (not b_lambda!17751))

(assert (not b!88751))

(assert (not b!88760))

(assert (not d!58865))

(assert (not b_next!39859))

(assert b_and!60257)

(assert (not b!88795))

(assert (not b!88786))

(assert (not d!58875))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60257)

(assert (not b_next!39859))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58877 () Bool)

(declare-fun lt!20337 () Int)

(assert (=> d!58877 (>= lt!20337 0)))

(declare-fun e!48281 () Int)

(assert (=> d!58877 (= lt!20337 e!48281)))

(declare-fun c!21847 () Bool)

(assert (=> d!58877 (= c!21847 (is-Nil!694 l!1632))))

(assert (=> d!58877 (= (size!716 l!1632) lt!20337)))

(declare-fun b!88802 () Bool)

(assert (=> b!88802 (= e!48281 0)))

(declare-fun b!88803 () Bool)

(assert (=> b!88803 (= e!48281 (+ 1 (size!716 (t!48737 l!1632))))))

(assert (= (and d!58877 c!21847) b!88802))

(assert (= (and d!58877 (not c!21847)) b!88803))

(declare-fun m!84924 () Bool)

(assert (=> b!88803 m!84924))

(assert (=> d!58873 d!58877))

(declare-fun d!58879 () Bool)

(declare-fun c!21848 () Bool)

(assert (=> d!58879 (= c!21848 (is-Nil!694 lt!20334))))

(declare-fun e!48282 () (Set T!6003))

(assert (=> d!58879 (= (content!162 lt!20334) e!48282)))

(declare-fun b!88804 () Bool)

(assert (=> b!88804 (= e!48282 (as emptyset (Set T!6003)))))

(declare-fun b!88805 () Bool)

(assert (=> b!88805 (= e!48282 (union (insert (h!1096 lt!20334) (as emptyset (Set T!6003))) (content!162 (t!48737 lt!20334))))))

(assert (= (and d!58879 c!21848) b!88804))

(assert (= (and d!58879 (not c!21848)) b!88805))

(declare-fun m!84926 () Bool)

(assert (=> b!88805 m!84926))

(declare-fun m!84928 () Bool)

(assert (=> b!88805 m!84928))

(assert (=> d!58875 d!58879))

(declare-fun d!58881 () Bool)

(declare-fun c!21849 () Bool)

(assert (=> d!58881 (= c!21849 (is-Nil!694 tlSorted!8))))

(declare-fun e!48283 () (Set T!6003))

(assert (=> d!58881 (= (content!162 tlSorted!8) e!48283)))

(declare-fun b!88806 () Bool)

(assert (=> b!88806 (= e!48283 (as emptyset (Set T!6003)))))

(declare-fun b!88807 () Bool)

(assert (=> b!88807 (= e!48283 (union (insert (h!1096 tlSorted!8) (as emptyset (Set T!6003))) (content!162 (t!48737 tlSorted!8))))))

(assert (= (and d!58881 c!21849) b!88806))

(assert (= (and d!58881 (not c!21849)) b!88807))

(declare-fun m!84930 () Bool)

(assert (=> b!88807 m!84930))

(declare-fun m!84932 () Bool)

(assert (=> b!88807 m!84932))

(assert (=> d!58875 d!58881))

(declare-fun d!58883 () Bool)

(assert (=> d!58883 (= (length!14 lt!20334) (size!716 lt!20334))))

(declare-fun bs!41415 () Bool)

(assert (= bs!41415 d!58883))

(declare-fun m!84934 () Bool)

(assert (=> bs!41415 m!84934))

(assert (=> b!88786 d!58883))

(declare-fun d!58885 () Bool)

(assert (=> d!58885 (= (length!14 tlSorted!8) (size!716 tlSorted!8))))

(declare-fun bs!41416 () Bool)

(assert (= bs!41416 d!58885))

(declare-fun m!84936 () Bool)

(assert (=> bs!41416 m!84936))

(assert (=> b!88786 d!58885))

(declare-fun d!58887 () Bool)

(assert (=> d!58887 (= (length!14 lt!20328) (size!716 lt!20328))))

(declare-fun bs!41417 () Bool)

(assert (= bs!41417 d!58887))

(declare-fun m!84938 () Bool)

(assert (=> bs!41417 m!84938))

(assert (=> b!88752 d!58887))

(declare-fun d!58889 () Bool)

(assert (=> d!58889 (= (length!14 (t!48737 l!1632)) (size!716 (t!48737 l!1632)))))

(declare-fun bs!41418 () Bool)

(assert (= bs!41418 d!58889))

(assert (=> bs!41418 m!84924))

(assert (=> b!88752 d!58889))

(declare-fun d!58891 () Bool)

(assert (=> d!58891 (= ($colon$colon!20 (insert!31 (h!1096 l!1632) (t!48737 tlSorted!8) key!546) (h!1096 tlSorted!8)) (Cons!692 (h!1096 tlSorted!8) (insert!31 (h!1096 l!1632) (t!48737 tlSorted!8) key!546)))))

(assert (=> b!88789 d!58891))

(declare-fun b!88808 () Bool)

(declare-fun e!48291 () List!738)

(declare-fun e!48289 () List!738)

(assert (=> b!88808 (= e!48291 e!48289)))

(declare-fun c!21850 () Bool)

(declare-fun e!48288 () Bool)

(assert (=> b!88808 (= c!21850 e!48288)))

(declare-fun res!46475 () Bool)

(assert (=> b!88808 (=> res!46475 e!48288)))

(declare-fun lt!20338 () Bool)

(assert (=> b!88808 (= res!46475 lt!20338)))

(declare-fun b!88809 () Bool)

(declare-fun e!48286 () Bool)

(assert (=> b!88809 (= e!48288 e!48286)))

(declare-fun res!46477 () Bool)

(assert (=> b!88809 (=> (not res!46477) (not e!48286))))

(assert (=> b!88809 (= res!46477 (and (not lt!20338) (is-Cons!692 (t!48737 tlSorted!8))))))

(declare-fun b!88810 () Bool)

(assert (=> b!88810 (= e!48289 ($colon$colon!20 (t!48737 tlSorted!8) (h!1096 l!1632)))))

(declare-fun e!48287 () Bool)

(declare-fun b!88811 () Bool)

(assert (=> b!88811 (= e!48287 (<= (dynLambda!1060 key!546 (h!1096 l!1632)) (dynLambda!1060 key!546 (h!1096 (t!48737 tlSorted!8)))))))

(declare-fun b!88812 () Bool)

(declare-fun e!48290 () Bool)

(declare-fun tp!17344 () Bool)

(assert (=> b!88812 (= e!48290 (and tp_is_empty!383 tp!17344))))

(declare-fun b!88813 () Bool)

(declare-fun e!48284 () Bool)

(declare-fun lt!20339 () List!738)

(assert (=> b!88813 (= e!48284 (= (length!14 lt!20339) (+ 1 (length!14 (t!48737 tlSorted!8)))))))

(declare-fun d!58893 () Bool)

(assert (=> d!58893 e!48284))

(declare-fun res!46479 () Bool)

(assert (=> d!58893 (=> (not res!46479) (not e!48284))))

(assert (=> d!58893 (= res!46479 (= (content!162 lt!20339) (union (insert (h!1096 l!1632) (as emptyset (Set T!6003))) (content!162 (t!48737 tlSorted!8)))))))

(assert (=> d!58893 (= lt!20339 e!48291)))

(declare-fun c!21851 () Bool)

(declare-fun e!48285 () Bool)

(assert (=> d!58893 (= c!21851 e!48285)))

(declare-fun res!46476 () Bool)

(assert (=> d!58893 (=> res!46476 e!48285)))

(assert (=> d!58893 (= res!46476 lt!20338)))

(assert (=> d!58893 (= lt!20338 (is-Nil!694 (t!48737 tlSorted!8)))))

(assert (=> d!58893 (= (insert!31 (h!1096 l!1632) (t!48737 tlSorted!8) key!546) lt!20339)))

(declare-fun b!88814 () Bool)

(assert (=> b!88814 (= e!48286 (<= (dynLambda!1060 key!546 (h!1096 l!1632)) (dynLambda!1060 key!546 (h!1096 (t!48737 tlSorted!8)))))))

(declare-fun b!88815 () Bool)

(assert (=> b!88815 (= e!48285 e!48287)))

(declare-fun res!46480 () Bool)

(assert (=> b!88815 (=> (not res!46480) (not e!48287))))

(assert (=> b!88815 (= res!46480 (is-Cons!692 (t!48737 tlSorted!8)))))

(declare-fun b!88816 () Bool)

(assert (=> b!88816 (= e!48291 ($colon$colon!20 (insert!31 (h!1096 l!1632) (t!48737 (t!48737 tlSorted!8)) key!546) (h!1096 (t!48737 tlSorted!8))))))

(declare-fun b!88817 () Bool)

(declare-fun res!46478 () List!738)

(assert (=> b!88817 (= e!48289 res!46478)))

(assert (=> b!88817 true))

(assert (=> b!88817 e!48290))

(assert (= (and d!58893 (not res!46476)) b!88815))

(assert (= (and b!88815 res!46480) b!88811))

(assert (= (and b!88808 (not res!46475)) b!88809))

(assert (= (and b!88809 res!46477) b!88814))

(assert (= (and b!88817 (is-Cons!692 res!46478)) b!88812))

(assert (= (and b!88808 c!21850) b!88810))

(assert (= (and b!88808 (not c!21850)) b!88817))

(assert (= (and d!58893 c!21851) b!88808))

(assert (= (and d!58893 (not c!21851)) b!88816))

(assert (= (and d!58893 res!46479) b!88813))

(declare-fun b_lambda!17759 () Bool)

(assert (=> (not b_lambda!17759) (not b!88811)))

(assert (=> b!88811 t!48740))

(declare-fun b_and!60259 () Bool)

(assert (= b_and!60257 (and (=> t!48740 result!47079) b_and!60259)))

(declare-fun b_lambda!17761 () Bool)

(assert (=> (not b_lambda!17761) (not b!88811)))

(declare-fun t!48745 () Bool)

(declare-fun tb!46637 () Bool)

(assert (=> (and start!11592 (= key!546 key!546) t!48745) tb!46637))

(declare-fun result!47085 () Bool)

(assert (=> tb!46637 (= result!47085 true)))

(assert (=> b!88811 t!48745))

(declare-fun b_and!60261 () Bool)

(assert (= b_and!60259 (and (=> t!48745 result!47085) b_and!60261)))

(declare-fun b_lambda!17763 () Bool)

(assert (=> (not b_lambda!17763) (not b!88814)))

(assert (=> b!88814 t!48740))

(declare-fun b_and!60263 () Bool)

(assert (= b_and!60261 (and (=> t!48740 result!47079) b_and!60263)))

(declare-fun b_lambda!17765 () Bool)

(assert (=> (not b_lambda!17765) (not b!88814)))

(assert (=> b!88814 t!48745))

(declare-fun b_and!60265 () Bool)

(assert (= b_and!60263 (and (=> t!48745 result!47085) b_and!60265)))

(assert (=> b!88811 m!84906))

(declare-fun m!84940 () Bool)

(assert (=> b!88811 m!84940))

(declare-fun m!84942 () Bool)

(assert (=> d!58893 m!84942))

(assert (=> d!58893 m!84900))

(assert (=> d!58893 m!84932))

(declare-fun m!84944 () Bool)

(assert (=> b!88813 m!84944))

(declare-fun m!84946 () Bool)

(assert (=> b!88813 m!84946))

(assert (=> b!88814 m!84906))

(assert (=> b!88814 m!84940))

(declare-fun m!84948 () Bool)

(assert (=> b!88816 m!84948))

(assert (=> b!88816 m!84948))

(declare-fun m!84950 () Bool)

(assert (=> b!88816 m!84950))

(declare-fun m!84952 () Bool)

(assert (=> b!88810 m!84952))

(assert (=> b!88789 d!58893))

(declare-fun d!58895 () Bool)

(assert (=> d!58895 (= ($colon$colon!20 tlSorted!8 (h!1096 l!1632)) (Cons!692 (h!1096 l!1632) tlSorted!8))))

(assert (=> b!88783 d!58895))

(declare-fun d!58897 () Bool)

(declare-fun c!21852 () Bool)

(assert (=> d!58897 (= c!21852 (is-Nil!694 (t!48737 l!1632)))))

(declare-fun e!48292 () (Set T!6003))

(assert (=> d!58897 (= (content!162 (t!48737 l!1632)) e!48292)))

(declare-fun b!88818 () Bool)

(assert (=> b!88818 (= e!48292 (as emptyset (Set T!6003)))))

(declare-fun b!88819 () Bool)

(assert (=> b!88819 (= e!48292 (union (insert (h!1096 (t!48737 l!1632)) (as emptyset (Set T!6003))) (content!162 (t!48737 (t!48737 l!1632)))))))

(assert (= (and d!58897 c!21852) b!88818))

(assert (= (and d!58897 (not c!21852)) b!88819))

(declare-fun m!84954 () Bool)

(assert (=> b!88819 m!84954))

(declare-fun m!84956 () Bool)

(assert (=> b!88819 m!84956))

(assert (=> b!88760 d!58897))

(declare-fun b!88820 () Bool)

(declare-fun e!48300 () List!738)

(declare-fun e!48298 () List!738)

(assert (=> b!88820 (= e!48300 e!48298)))

(declare-fun c!21853 () Bool)

(declare-fun e!48297 () Bool)

(assert (=> b!88820 (= c!21853 e!48297)))

(declare-fun res!46481 () Bool)

(assert (=> b!88820 (=> res!46481 e!48297)))

(declare-fun lt!20340 () Bool)

(assert (=> b!88820 (= res!46481 lt!20340)))

(declare-fun b!88821 () Bool)

(declare-fun e!48295 () Bool)

(assert (=> b!88821 (= e!48297 e!48295)))

(declare-fun res!46483 () Bool)

(assert (=> b!88821 (=> (not res!46483) (not e!48295))))

(assert (=> b!88821 (= res!46483 (and (not lt!20340) (is-Cons!692 (sort!8 (t!48737 (t!48737 l!1632)) key!546))))))

(declare-fun b!88822 () Bool)

(assert (=> b!88822 (= e!48298 ($colon$colon!20 (sort!8 (t!48737 (t!48737 l!1632)) key!546) (h!1096 (t!48737 l!1632))))))

(declare-fun b!88823 () Bool)

(declare-fun e!48296 () Bool)

(assert (=> b!88823 (= e!48296 (<= (dynLambda!1060 key!546 (h!1096 (t!48737 l!1632))) (dynLambda!1060 key!546 (h!1096 (sort!8 (t!48737 (t!48737 l!1632)) key!546)))))))

(declare-fun b!88824 () Bool)

(declare-fun e!48299 () Bool)

(declare-fun tp!17345 () Bool)

(assert (=> b!88824 (= e!48299 (and tp_is_empty!383 tp!17345))))

(declare-fun lt!20341 () List!738)

(declare-fun b!88825 () Bool)

(declare-fun e!48293 () Bool)

(assert (=> b!88825 (= e!48293 (= (length!14 lt!20341) (+ 1 (length!14 (sort!8 (t!48737 (t!48737 l!1632)) key!546)))))))

(declare-fun d!58899 () Bool)

(assert (=> d!58899 e!48293))

(declare-fun res!46485 () Bool)

(assert (=> d!58899 (=> (not res!46485) (not e!48293))))

(assert (=> d!58899 (= res!46485 (= (content!162 lt!20341) (union (insert (h!1096 (t!48737 l!1632)) (as emptyset (Set T!6003))) (content!162 (sort!8 (t!48737 (t!48737 l!1632)) key!546)))))))

(assert (=> d!58899 (= lt!20341 e!48300)))

(declare-fun c!21854 () Bool)

(declare-fun e!48294 () Bool)

(assert (=> d!58899 (= c!21854 e!48294)))

(declare-fun res!46482 () Bool)

(assert (=> d!58899 (=> res!46482 e!48294)))

(assert (=> d!58899 (= res!46482 lt!20340)))

(assert (=> d!58899 (= lt!20340 (is-Nil!694 (sort!8 (t!48737 (t!48737 l!1632)) key!546)))))

(assert (=> d!58899 (= (insert!31 (h!1096 (t!48737 l!1632)) (sort!8 (t!48737 (t!48737 l!1632)) key!546) key!546) lt!20341)))

(declare-fun b!88826 () Bool)

(assert (=> b!88826 (= e!48295 (<= (dynLambda!1060 key!546 (h!1096 (t!48737 l!1632))) (dynLambda!1060 key!546 (h!1096 (sort!8 (t!48737 (t!48737 l!1632)) key!546)))))))

(declare-fun b!88827 () Bool)

(assert (=> b!88827 (= e!48294 e!48296)))

(declare-fun res!46486 () Bool)

(assert (=> b!88827 (=> (not res!46486) (not e!48296))))

(assert (=> b!88827 (= res!46486 (is-Cons!692 (sort!8 (t!48737 (t!48737 l!1632)) key!546)))))

(declare-fun b!88828 () Bool)

(assert (=> b!88828 (= e!48300 ($colon$colon!20 (insert!31 (h!1096 (t!48737 l!1632)) (t!48737 (sort!8 (t!48737 (t!48737 l!1632)) key!546)) key!546) (h!1096 (sort!8 (t!48737 (t!48737 l!1632)) key!546))))))

(declare-fun b!88829 () Bool)

(declare-fun res!46484 () List!738)

(assert (=> b!88829 (= e!48298 res!46484)))

(assert (=> b!88829 true))

(assert (=> b!88829 e!48299))

(assert (= (and d!58899 (not res!46482)) b!88827))

(assert (= (and b!88827 res!46486) b!88823))

(assert (= (and b!88820 (not res!46481)) b!88821))

(assert (= (and b!88821 res!46483) b!88826))

(assert (= (and b!88829 (is-Cons!692 res!46484)) b!88824))

(assert (= (and b!88820 c!21853) b!88822))

(assert (= (and b!88820 (not c!21853)) b!88829))

(assert (= (and d!58899 c!21854) b!88820))

(assert (= (and d!58899 (not c!21854)) b!88828))

(assert (= (and d!58899 res!46485) b!88825))

(declare-fun b_lambda!17767 () Bool)

(assert (=> (not b_lambda!17767) (not b!88823)))

(declare-fun t!48747 () Bool)

(declare-fun tb!46639 () Bool)

(assert (=> (and start!11592 (= key!546 key!546) t!48747) tb!46639))

(declare-fun result!47087 () Bool)

(assert (=> tb!46639 (= result!47087 true)))

(assert (=> b!88823 t!48747))

(declare-fun b_and!60267 () Bool)

(assert (= b_and!60265 (and (=> t!48747 result!47087) b_and!60267)))

(declare-fun b_lambda!17769 () Bool)

(assert (=> (not b_lambda!17769) (not b!88823)))

(declare-fun t!48749 () Bool)

(declare-fun tb!46641 () Bool)

(assert (=> (and start!11592 (= key!546 key!546) t!48749) tb!46641))

(declare-fun result!47089 () Bool)

(assert (=> tb!46641 (= result!47089 true)))

(assert (=> b!88823 t!48749))

(declare-fun b_and!60269 () Bool)

(assert (= b_and!60267 (and (=> t!48749 result!47089) b_and!60269)))

(declare-fun b_lambda!17771 () Bool)

(assert (=> (not b_lambda!17771) (not b!88826)))

(assert (=> b!88826 t!48747))

(declare-fun b_and!60271 () Bool)

(assert (= b_and!60269 (and (=> t!48747 result!47087) b_and!60271)))

(declare-fun b_lambda!17773 () Bool)

(assert (=> (not b_lambda!17773) (not b!88826)))

(assert (=> b!88826 t!48749))

(declare-fun b_and!60273 () Bool)

(assert (= b_and!60271 (and (=> t!48749 result!47089) b_and!60273)))

(declare-fun m!84958 () Bool)

(assert (=> b!88823 m!84958))

(declare-fun m!84960 () Bool)

(assert (=> b!88823 m!84960))

(declare-fun m!84962 () Bool)

(assert (=> d!58899 m!84962))

(assert (=> d!58899 m!84954))

(assert (=> d!58899 m!84888))

(declare-fun m!84964 () Bool)

(assert (=> d!58899 m!84964))

(declare-fun m!84966 () Bool)

(assert (=> b!88825 m!84966))

(assert (=> b!88825 m!84888))

(declare-fun m!84968 () Bool)

(assert (=> b!88825 m!84968))

(assert (=> b!88826 m!84958))

(assert (=> b!88826 m!84960))

(declare-fun m!84970 () Bool)

(assert (=> b!88828 m!84970))

(assert (=> b!88828 m!84970))

(declare-fun m!84972 () Bool)

(assert (=> b!88828 m!84972))

(assert (=> b!88822 m!84888))

(declare-fun m!84974 () Bool)

(assert (=> b!88822 m!84974))

(assert (=> b!88751 d!58899))

(declare-fun d!58901 () Bool)

(declare-fun e!48301 () Bool)

(assert (=> d!58901 e!48301))

(declare-fun res!46487 () Bool)

(assert (=> d!58901 (=> (not res!46487) (not e!48301))))

(declare-fun lt!20342 () List!738)

(assert (=> d!58901 (= res!46487 (= (content!162 lt!20342) (content!162 (t!48737 (t!48737 l!1632)))))))

(declare-fun e!48302 () List!738)

(assert (=> d!58901 (= lt!20342 e!48302)))

(declare-fun c!21855 () Bool)

(assert (=> d!58901 (= c!21855 (is-Nil!694 (t!48737 (t!48737 l!1632))))))

(assert (=> d!58901 (= (sort!8 (t!48737 (t!48737 l!1632)) key!546) lt!20342)))

(declare-fun b!88830 () Bool)

(assert (=> b!88830 (= e!48302 (t!48737 (t!48737 l!1632)))))

(declare-fun b!88831 () Bool)

(assert (=> b!88831 (= e!48302 (insert!31 (h!1096 (t!48737 (t!48737 l!1632))) (sort!8 (t!48737 (t!48737 (t!48737 l!1632))) key!546) key!546))))

(declare-fun b!88832 () Bool)

(assert (=> b!88832 (= e!48301 (= (length!14 lt!20342) (length!14 (t!48737 (t!48737 l!1632)))))))

(assert (= (and d!58901 c!21855) b!88830))

(assert (= (and d!58901 (not c!21855)) b!88831))

(assert (= (and d!58901 res!46487) b!88832))

(declare-fun m!84976 () Bool)

(assert (=> d!58901 m!84976))

(assert (=> d!58901 m!84956))

(declare-fun m!84978 () Bool)

(assert (=> b!88831 m!84978))

(assert (=> b!88831 m!84978))

(declare-fun m!84980 () Bool)

(assert (=> b!88831 m!84980))

(declare-fun m!84982 () Bool)

(assert (=> b!88832 m!84982))

(declare-fun m!84984 () Bool)

(assert (=> b!88832 m!84984))

(assert (=> b!88751 d!58901))

(declare-fun d!58903 () Bool)

(declare-fun lt!20343 () Int)

(assert (=> d!58903 (>= lt!20343 0)))

(declare-fun e!48303 () Int)

(assert (=> d!58903 (= lt!20343 e!48303)))

(declare-fun c!21856 () Bool)

(assert (=> d!58903 (= c!21856 (is-Nil!694 res!45969))))

(assert (=> d!58903 (= (size!716 res!45969) lt!20343)))

(declare-fun b!88833 () Bool)

(assert (=> b!88833 (= e!48303 0)))

(declare-fun b!88834 () Bool)

(assert (=> b!88834 (= e!48303 (+ 1 (size!716 (t!48737 res!45969))))))

(assert (= (and d!58903 c!21856) b!88833))

(assert (= (and d!58903 (not c!21856)) b!88834))

(declare-fun m!84986 () Bool)

(assert (=> b!88834 m!84986))

(assert (=> d!58871 d!58903))

(declare-fun d!58905 () Bool)

(declare-fun c!21857 () Bool)

(assert (=> d!58905 (= c!21857 (is-Nil!694 (t!48737 res!45969)))))

(declare-fun e!48304 () (Set T!6003))

(assert (=> d!58905 (= (content!162 (t!48737 res!45969)) e!48304)))

(declare-fun b!88835 () Bool)

(assert (=> b!88835 (= e!48304 (as emptyset (Set T!6003)))))

(declare-fun b!88836 () Bool)

(assert (=> b!88836 (= e!48304 (union (insert (h!1096 (t!48737 res!45969)) (as emptyset (Set T!6003))) (content!162 (t!48737 (t!48737 res!45969)))))))

(assert (= (and d!58905 c!21857) b!88835))

(assert (= (and d!58905 (not c!21857)) b!88836))

(declare-fun m!84988 () Bool)

(assert (=> b!88836 m!84988))

(declare-fun m!84990 () Bool)

(assert (=> b!88836 m!84990))

(assert (=> b!88758 d!58905))

(declare-fun d!58907 () Bool)

(declare-fun c!21858 () Bool)

(assert (=> d!58907 (= c!21858 (is-Nil!694 lt!20328))))

(declare-fun e!48305 () (Set T!6003))

(assert (=> d!58907 (= (content!162 lt!20328) e!48305)))

(declare-fun b!88837 () Bool)

(assert (=> b!88837 (= e!48305 (as emptyset (Set T!6003)))))

(declare-fun b!88838 () Bool)

(assert (=> b!88838 (= e!48305 (union (insert (h!1096 lt!20328) (as emptyset (Set T!6003))) (content!162 (t!48737 lt!20328))))))

(assert (= (and d!58907 c!21858) b!88837))

(assert (= (and d!58907 (not c!21858)) b!88838))

(declare-fun m!84992 () Bool)

(assert (=> b!88838 m!84992))

(declare-fun m!84994 () Bool)

(assert (=> b!88838 m!84994))

(assert (=> d!58865 d!58907))

(assert (=> d!58865 d!58897))

(declare-fun b!88839 () Bool)

(declare-fun e!48306 () Bool)

(declare-fun tp!17346 () Bool)

(assert (=> b!88839 (= e!48306 (and tp_is_empty!383 tp!17346))))

(assert (=> b!88785 (= tp!17338 e!48306)))

(assert (= (and b!88785 (is-Cons!692 (t!48737 res!46472))) b!88839))

(declare-fun b!88840 () Bool)

(declare-fun e!48307 () Bool)

(declare-fun tp!17347 () Bool)

(assert (=> b!88840 (= e!48307 (and tp_is_empty!383 tp!17347))))

(assert (=> b!88797 (= tp!17343 e!48307)))

(assert (= (and b!88797 (is-Cons!692 (t!48737 (t!48737 tlSorted!8)))) b!88840))

(declare-fun b!88841 () Bool)

(declare-fun e!48308 () Bool)

(declare-fun tp!17348 () Bool)

(assert (=> b!88841 (= e!48308 (and tp_is_empty!383 tp!17348))))

(assert (=> b!88796 (= tp!17342 e!48308)))

(assert (= (and b!88796 (is-Cons!692 (t!48737 (t!48737 res!45969)))) b!88841))

(declare-fun b!88842 () Bool)

(declare-fun e!48309 () Bool)

(declare-fun tp!17349 () Bool)

(assert (=> b!88842 (= e!48309 (and tp_is_empty!383 tp!17349))))

(assert (=> b!88795 (= tp!17341 e!48309)))

(assert (= (and b!88795 (is-Cons!692 (t!48737 (t!48737 l!1632)))) b!88842))

(declare-fun b_lambda!17775 () Bool)

(assert (= b_lambda!17767 (or (and start!11592 b_free!7517) b_lambda!17775)))

(declare-fun b_lambda!17777 () Bool)

(assert (= b_lambda!17773 (or (and start!11592 b_free!7517) b_lambda!17777)))

(declare-fun b_lambda!17779 () Bool)

(assert (= b_lambda!17769 (or (and start!11592 b_free!7517) b_lambda!17779)))

(declare-fun b_lambda!17781 () Bool)

(assert (= b_lambda!17771 (or (and start!11592 b_free!7517) b_lambda!17781)))

(declare-fun b_lambda!17783 () Bool)

(assert (= b_lambda!17763 (or (and start!11592 b_free!7517) b_lambda!17783)))

(declare-fun b_lambda!17785 () Bool)

(assert (= b_lambda!17759 (or (and start!11592 b_free!7517) b_lambda!17785)))

(declare-fun b_lambda!17787 () Bool)

(assert (= b_lambda!17765 (or (and start!11592 b_free!7517) b_lambda!17787)))

(declare-fun b_lambda!17789 () Bool)

(assert (= b_lambda!17761 (or (and start!11592 b_free!7517) b_lambda!17789)))

(push 1)

(assert (not b!88838))

(assert (not d!58885))

(assert (not b!88825))

(assert (not b_lambda!17753))

(assert tp_is_empty!383)

(assert (not b_lambda!17779))

(assert (not b!88836))

(assert (not b!88839))

(assert (not d!58899))

(assert (not b_lambda!17757))

(assert (not b!88828))

(assert (not b!88803))

(assert (not d!58893))

(assert (not b_lambda!17755))

(assert (not b!88812))

(assert (not b!88816))

(assert (not b!88805))

(assert (not b_lambda!17785))

(assert (not b!88810))

(assert (not b!88842))

(assert (not d!58887))

(assert (not b!88831))

(assert (not b!88841))

(assert (not d!58883))

(assert (not b!88807))

(assert (not b!88834))

(assert (not b_lambda!17787))

(assert (not b_lambda!17751))

(assert (not b!88840))

(assert (not b_lambda!17777))

(assert (not b!88824))

(assert (not b!88822))

(assert b_and!60273)

(assert (not b_next!39859))

(assert (not b!88819))

(assert (not b!88832))

(assert (not b_lambda!17783))

(assert (not b!88813))

(assert (not d!58889))

(assert (not b_lambda!17775))

(assert (not d!58901))

(assert (not b_lambda!17789))

(assert (not b_lambda!17781))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60273)

(assert (not b_next!39859))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10792 () Bool)

(assert start!10792)

(declare-fun b!82398 () Bool)

(assert (=> b!82398 true))

(declare-fun bs!39954 () Bool)

(declare-fun b!82394 () Bool)

(assert (= bs!39954 (and b!82394 b!82398)))

(declare-fun lambda!9879 () Int)

(declare-fun lambda!9878 () Int)

(assert (=> bs!39954 (not (= lambda!9879 lambda!9878))))

(assert (=> b!82394 true))

(declare-fun bs!39955 () Bool)

(declare-fun b!82397 () Bool)

(assert (= bs!39955 (and b!82397 b!82398)))

(declare-fun lambda!9880 () Int)

(assert (=> bs!39955 (not (= lambda!9880 lambda!9878))))

(declare-fun bs!39956 () Bool)

(assert (= bs!39956 (and b!82397 b!82394)))

(assert (=> bs!39956 (not (= lambda!9880 lambda!9879))))

(assert (=> b!82397 true))

(declare-fun b!82392 () Bool)

(declare-fun res!42202 () Bool)

(declare-fun e!44711 () Bool)

(assert (=> b!82392 (=> (not res!42202) (not e!44711))))

(declare-datatypes () ((List!669 (Cons!626 (h!996 Int) (t!47865 List!669)) (Nil!628))))

(declare-fun less!5 () List!669)

(declare-fun sorted_lemma!0 (List!669) Bool)

(assert (=> b!82392 (= res!42202 (sorted_lemma!0 less!5))))

(declare-fun b!82393 () Bool)

(declare-fun res!42199 () Bool)

(assert (=> b!82393 (=> (not res!42199) (not e!44711))))

(declare-fun forall_last!0 (List!669 Int) Bool)

(declare-fun quickSort!0 (List!669) List!669)

(assert (=> b!82393 (= res!42199 (forall_last!0 (quickSort!0 less!5) lambda!9878))))

(declare-fun res!42203 () Bool)

(assert (=> b!82394 (=> (not res!42203) (not e!44711))))

(declare-fun equal!10 () List!669)

(declare-fun ls!96 () List!669)

(declare-fun filter!22 (List!669 Int) List!669)

(assert (=> b!82394 (= res!42203 (= equal!10 (Cons!626 (h!996 ls!96) (filter!22 (t!47865 ls!96) lambda!9879))))))

(declare-fun b!82395 () Bool)

(declare-fun res!42198 () Bool)

(assert (=> b!82395 (=> (not res!42198) (not e!44711))))

(declare-fun sort_preserves_forall!0 (List!669 Int) Bool)

(assert (=> b!82395 (= res!42198 (sort_preserves_forall!0 less!5 lambda!9878))))

(declare-fun b!82396 () Bool)

(declare-fun cons_filter_equal_sorted!0 (List!669 Int) Bool)

(assert (=> b!82396 (= e!44711 (not (cons_filter_equal_sorted!0 (t!47865 ls!96) (h!996 ls!96))))))

(declare-fun res!42200 () Bool)

(assert (=> start!10792 (=> (not res!42200) (not e!44711))))

(assert (=> start!10792 (= res!42200 (and (not (is-Nil!628 ls!96)) (not (is-Nil!628 (t!47865 ls!96)))))))

(assert (=> start!10792 e!44711))

(assert (=> start!10792 true))

(declare-fun res!42201 () Bool)

(assert (=> b!82397 (=> (not res!42201) (not e!44711))))

(declare-fun more!5 () List!669)

(assert (=> b!82397 (= res!42201 (= more!5 (filter!22 (t!47865 ls!96) lambda!9880)))))

(declare-fun res!42204 () Bool)

(assert (=> b!82398 (=> (not res!42204) (not e!44711))))

(assert (=> b!82398 (= res!42204 (= less!5 (filter!22 (t!47865 ls!96) lambda!9878)))))

(assert (= (and start!10792 res!42200) b!82398))

(assert (= (and b!82398 res!42204) b!82394))

(assert (= (and b!82394 res!42203) b!82397))

(assert (= (and b!82397 res!42201) b!82392))

(assert (= (and b!82392 res!42202) b!82395))

(assert (= (and b!82395 res!42198) b!82393))

(assert (= (and b!82393 res!42199) b!82396))

(declare-fun m!77982 () Bool)

(assert (=> b!82392 m!77982))

(declare-fun m!77984 () Bool)

(assert (=> b!82397 m!77984))

(declare-fun m!77986 () Bool)

(assert (=> b!82396 m!77986))

(declare-fun m!77988 () Bool)

(assert (=> b!82394 m!77988))

(declare-fun m!77990 () Bool)

(assert (=> b!82398 m!77990))

(declare-fun m!77992 () Bool)

(assert (=> b!82393 m!77992))

(assert (=> b!82393 m!77992))

(declare-fun m!77994 () Bool)

(assert (=> b!82393 m!77994))

(declare-fun m!77996 () Bool)

(assert (=> b!82395 m!77996))

(push 1)

(assert (not b!82392))

(assert (not b!82398))

(assert (not b!82396))

(assert (not b!82395))

(assert (not b!82397))

(assert (not b!82393))

(assert (not b!82394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!39957 () Bool)

(declare-fun b!82415 () Bool)

(assert (= bs!39957 (and b!82415 b!82398)))

(declare-fun lambda!9893 () Int)

(assert (=> bs!39957 (= (= (h!996 less!5) (h!996 ls!96)) (= lambda!9893 lambda!9878))))

(declare-fun bs!39958 () Bool)

(assert (= bs!39958 (and b!82415 b!82394)))

(assert (=> bs!39958 (not (= lambda!9893 lambda!9879))))

(declare-fun bs!39959 () Bool)

(assert (= bs!39959 (and b!82415 b!82397)))

(assert (=> bs!39959 (not (= lambda!9893 lambda!9880))))

(assert (=> b!82415 true))

(declare-fun lambda!9894 () Int)

(assert (=> bs!39957 (not (= lambda!9894 lambda!9878))))

(assert (=> bs!39958 (= (= (h!996 less!5) (h!996 ls!96)) (= lambda!9894 lambda!9879))))

(assert (=> bs!39959 (not (= lambda!9894 lambda!9880))))

(assert (=> b!82415 (not (= lambda!9894 lambda!9893))))

(assert (=> b!82415 true))

(declare-fun lambda!9895 () Int)

(assert (=> b!82415 (not (= lambda!9895 lambda!9894))))

(assert (=> b!82415 (not (= lambda!9895 lambda!9893))))

(assert (=> bs!39959 (= (= (h!996 less!5) (h!996 ls!96)) (= lambda!9895 lambda!9880))))

(assert (=> bs!39958 (not (= lambda!9895 lambda!9879))))

(assert (=> bs!39957 (not (= lambda!9895 lambda!9878))))

(assert (=> b!82415 true))

(declare-fun b!82411 () Bool)

(declare-fun e!44725 () Bool)

(declare-fun lt!19051 () List!669)

(assert (=> b!82411 (= e!44725 (sort_preserves_forall!0 lt!19051 lambda!9878))))

(declare-fun b!82412 () Bool)

(declare-fun lt!19050 () List!669)

(declare-fun lt!19049 () List!669)

(declare-fun e!44722 () Bool)

(declare-fun append_preserves_forall!0 (List!669 List!669 Int) Bool)

(declare-fun ++!77 (List!669 List!669) List!669)

(assert (=> b!82412 (= e!44722 (append_preserves_forall!0 (++!77 (quickSort!0 lt!19049) lt!19050) (quickSort!0 lt!19051) lambda!9878))))

(declare-fun e!44726 () Bool)

(declare-fun b!82413 () Bool)

(declare-fun filter_preserves_forall!0 (List!669 Int Int) Bool)

(assert (=> b!82413 (= e!44726 (filter_preserves_forall!0 (t!47865 less!5) lambda!9894 lambda!9878))))

(declare-fun e!44724 () Bool)

(declare-fun b!82414 () Bool)

(assert (=> b!82414 (= e!44724 (filter_preserves_forall!0 (t!47865 less!5) lambda!9895 lambda!9878))))

(declare-fun d!56309 () Bool)

(declare-fun forall!24 (List!669 Int) Bool)

(assert (=> d!56309 (forall!24 (quickSort!0 less!5) lambda!9878)))

(declare-fun lt!19047 () Bool)

(declare-fun e!44723 () Bool)

(assert (=> d!56309 (= lt!19047 e!44723)))

(declare-fun res!42220 () Bool)

(assert (=> d!56309 (=> res!42220 e!44723)))

(assert (=> d!56309 (= res!42220 (or (is-Nil!628 less!5) (and (is-Cons!626 less!5) (is-Nil!628 (t!47865 less!5)))))))

(assert (=> d!56309 (forall!24 less!5 lambda!9878)))

(assert (=> d!56309 (= (sort_preserves_forall!0 less!5 lambda!9878) true)))

(assert (=> b!82415 (= e!44723 e!44722)))

(declare-fun res!42222 () Bool)

(assert (=> b!82415 (=> (not res!42222) (not e!44722))))

(assert (=> b!82415 (= res!42222 (append_preserves_forall!0 (quickSort!0 lt!19049) lt!19050 lambda!9878))))

(declare-fun lt!19048 () Bool)

(assert (=> b!82415 (= lt!19048 e!44725)))

(declare-fun res!42223 () Bool)

(assert (=> b!82415 (=> (not res!42223) (not e!44725))))

(assert (=> b!82415 (= res!42223 (sort_preserves_forall!0 lt!19049 lambda!9878))))

(declare-fun lt!19046 () Bool)

(assert (=> b!82415 (= lt!19046 e!44724)))

(declare-fun res!42221 () Bool)

(assert (=> b!82415 (=> (not res!42221) (not e!44724))))

(assert (=> b!82415 (= res!42221 e!44726)))

(declare-fun res!42224 () Bool)

(assert (=> b!82415 (=> (not res!42224) (not e!44726))))

(assert (=> b!82415 (= res!42224 (filter_preserves_forall!0 (t!47865 less!5) lambda!9893 lambda!9878))))

(assert (=> b!82415 (= lt!19051 (filter!22 (t!47865 less!5) lambda!9895))))

(assert (=> b!82415 (= lt!19050 (Cons!626 (h!996 less!5) (filter!22 (t!47865 less!5) lambda!9894)))))

(assert (=> b!82415 (= lt!19049 (filter!22 (t!47865 less!5) lambda!9893))))

(assert (= (and d!56309 (not res!42220)) b!82415))

(assert (= (and b!82415 res!42224) b!82413))

(assert (= (and b!82415 res!42221) b!82414))

(assert (= (and b!82415 res!42223) b!82411))

(assert (= (and b!82415 res!42222) b!82412))

(assert (=> d!56309 m!77992))

(assert (=> d!56309 m!77992))

(declare-fun m!77998 () Bool)

(assert (=> d!56309 m!77998))

(declare-fun m!78000 () Bool)

(assert (=> d!56309 m!78000))

(declare-fun m!78002 () Bool)

(assert (=> b!82411 m!78002))

(declare-fun m!78004 () Bool)

(assert (=> b!82412 m!78004))

(assert (=> b!82412 m!78004))

(declare-fun m!78006 () Bool)

(assert (=> b!82412 m!78006))

(declare-fun m!78008 () Bool)

(assert (=> b!82412 m!78008))

(assert (=> b!82412 m!78006))

(assert (=> b!82412 m!78008))

(declare-fun m!78010 () Bool)

(assert (=> b!82412 m!78010))

(declare-fun m!78012 () Bool)

(assert (=> b!82414 m!78012))

(declare-fun m!78014 () Bool)

(assert (=> b!82413 m!78014))

(declare-fun m!78016 () Bool)

(assert (=> b!82415 m!78016))

(declare-fun m!78018 () Bool)

(assert (=> b!82415 m!78018))

(declare-fun m!78020 () Bool)

(assert (=> b!82415 m!78020))

(assert (=> b!82415 m!78004))

(declare-fun m!78022 () Bool)

(assert (=> b!82415 m!78022))

(assert (=> b!82415 m!78004))

(declare-fun m!78024 () Bool)

(assert (=> b!82415 m!78024))

(declare-fun m!78026 () Bool)

(assert (=> b!82415 m!78026))

(assert (=> b!82395 d!56309))

(declare-fun bs!39960 () Bool)

(declare-fun d!56311 () Bool)

(assert (= bs!39960 (and d!56311 b!82415)))

(declare-fun lambda!9898 () Int)

(assert (=> bs!39960 (not (= lambda!9898 lambda!9895))))

(assert (=> bs!39960 (= (= (h!996 ls!96) (h!996 less!5)) (= lambda!9898 lambda!9894))))

(assert (=> bs!39960 (not (= lambda!9898 lambda!9893))))

(declare-fun bs!39961 () Bool)

(assert (= bs!39961 (and d!56311 b!82397)))

(assert (=> bs!39961 (not (= lambda!9898 lambda!9880))))

(declare-fun bs!39962 () Bool)

(assert (= bs!39962 (and d!56311 b!82394)))

(assert (=> bs!39962 (= lambda!9898 lambda!9879)))

(declare-fun bs!39963 () Bool)

(assert (= bs!39963 (and d!56311 b!82398)))

(assert (=> bs!39963 (not (= lambda!9898 lambda!9878))))

(assert (=> d!56311 true))

(declare-fun isSorted!1 (List!669) Bool)

(assert (=> d!56311 (isSorted!1 (Cons!626 (h!996 ls!96) (filter!22 (t!47865 ls!96) lambda!9898)))))

(declare-datatypes () ((Unit!1181 (Unit!1182))))

(declare-fun lt!19054 () Unit!1181)

(declare-fun Unit!1183 () Unit!1181)

(assert (=> d!56311 (= lt!19054 Unit!1183)))

(declare-fun filter_equal_sorted!0 (List!669 Int) Bool)

(assert (=> d!56311 (filter_equal_sorted!0 (t!47865 ls!96) (h!996 ls!96))))

(assert (=> d!56311 (= (cons_filter_equal_sorted!0 (t!47865 ls!96) (h!996 ls!96)) true)))

(declare-fun bs!39964 () Bool)

(assert (= bs!39964 d!56311))

(declare-fun m!78028 () Bool)

(assert (=> bs!39964 m!78028))

(declare-fun m!78030 () Bool)

(assert (=> bs!39964 m!78030))

(declare-fun m!78032 () Bool)

(assert (=> bs!39964 m!78032))

(assert (=> b!82396 d!56311))

(declare-fun bs!39965 () Bool)

(declare-fun b!82422 () Bool)

(assert (= bs!39965 (and b!82422 b!82415)))

(declare-fun lambda!9905 () Int)

(assert (=> bs!39965 (not (= lambda!9905 lambda!9895))))

(assert (=> bs!39965 (not (= lambda!9905 lambda!9894))))

(assert (=> bs!39965 (= lambda!9905 lambda!9893)))

(declare-fun bs!39966 () Bool)

(assert (= bs!39966 (and b!82422 b!82397)))

(assert (=> bs!39966 (not (= lambda!9905 lambda!9880))))

(declare-fun bs!39967 () Bool)

(assert (= bs!39967 (and b!82422 b!82394)))

(assert (=> bs!39967 (not (= lambda!9905 lambda!9879))))

(declare-fun bs!39968 () Bool)

(assert (= bs!39968 (and b!82422 b!82398)))

(assert (=> bs!39968 (= (= (h!996 less!5) (h!996 ls!96)) (= lambda!9905 lambda!9878))))

(declare-fun bs!39969 () Bool)

(assert (= bs!39969 (and b!82422 d!56311)))

(assert (=> bs!39969 (not (= lambda!9905 lambda!9898))))

(assert (=> b!82422 true))

(declare-fun lambda!9906 () Int)

(assert (=> bs!39965 (not (= lambda!9906 lambda!9895))))

(assert (=> bs!39965 (= lambda!9906 lambda!9894)))

(assert (=> bs!39965 (not (= lambda!9906 lambda!9893))))

(assert (=> bs!39966 (not (= lambda!9906 lambda!9880))))

(assert (=> bs!39967 (= (= (h!996 less!5) (h!996 ls!96)) (= lambda!9906 lambda!9879))))

(assert (=> bs!39968 (not (= lambda!9906 lambda!9878))))

(assert (=> b!82422 (not (= lambda!9906 lambda!9905))))

(assert (=> bs!39969 (= (= (h!996 less!5) (h!996 ls!96)) (= lambda!9906 lambda!9898))))

(assert (=> b!82422 true))

(declare-fun lambda!9907 () Int)

(assert (=> bs!39965 (= lambda!9907 lambda!9895)))

(assert (=> bs!39965 (not (= lambda!9907 lambda!9894))))

(assert (=> bs!39965 (not (= lambda!9907 lambda!9893))))

(assert (=> bs!39966 (= (= (h!996 less!5) (h!996 ls!96)) (= lambda!9907 lambda!9880))))

(assert (=> bs!39967 (not (= lambda!9907 lambda!9879))))

(assert (=> bs!39968 (not (= lambda!9907 lambda!9878))))

(assert (=> b!82422 (not (= lambda!9907 lambda!9906))))

(assert (=> b!82422 (not (= lambda!9907 lambda!9905))))

(assert (=> bs!39969 (not (= lambda!9907 lambda!9898))))

(assert (=> b!82422 true))

(declare-fun d!56313 () Bool)

(assert (=> d!56313 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!19065 () Bool)

(declare-fun e!44731 () Bool)

(assert (=> d!56313 (= lt!19065 e!44731)))

(declare-fun res!42231 () Bool)

(assert (=> d!56313 (=> res!42231 e!44731)))

(assert (=> d!56313 (= res!42231 (or (is-Nil!628 less!5) (and (is-Cons!626 less!5) (is-Nil!628 (t!47865 less!5)))))))

(assert (=> d!56313 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!44732 () Bool)

(assert (=> b!82422 (= e!44731 e!44732)))

(declare-fun res!42232 () Bool)

(assert (=> b!82422 (=> (not res!42232) (not e!44732))))

(declare-fun lt!19066 () List!669)

(declare-fun lt!19064 () List!669)

(declare-fun append_sorted!0 (List!669 List!669) Bool)

(assert (=> b!82422 (= res!42232 (append_sorted!0 (quickSort!0 lt!19066) lt!19064))))

(declare-fun lt!19063 () List!669)

(assert (=> b!82422 (= lt!19063 (filter!22 (t!47865 less!5) lambda!9907))))

(assert (=> b!82422 (= lt!19064 (Cons!626 (h!996 less!5) (filter!22 (t!47865 less!5) lambda!9906)))))

(assert (=> b!82422 (= lt!19066 (filter!22 (t!47865 less!5) lambda!9905))))

(declare-fun b!82423 () Bool)

(assert (=> b!82423 (= e!44732 (append_sorted!0 (++!77 (quickSort!0 lt!19066) lt!19064) (quickSort!0 lt!19063)))))

(assert (= (and d!56313 (not res!42231)) b!82422))

(assert (= (and b!82422 res!42232) b!82423))

(assert (=> d!56313 m!77992))

(assert (=> d!56313 m!77992))

(declare-fun m!78034 () Bool)

(assert (=> d!56313 m!78034))

(declare-fun m!78036 () Bool)

(assert (=> b!82422 m!78036))

(declare-fun m!78038 () Bool)

(assert (=> b!82422 m!78038))

(declare-fun m!78040 () Bool)

(assert (=> b!82422 m!78040))

(declare-fun m!78042 () Bool)

(assert (=> b!82422 m!78042))

(assert (=> b!82422 m!78040))

(declare-fun m!78044 () Bool)

(assert (=> b!82422 m!78044))

(assert (=> b!82423 m!78040))

(assert (=> b!82423 m!78040))

(declare-fun m!78046 () Bool)

(assert (=> b!82423 m!78046))

(declare-fun m!78048 () Bool)

(assert (=> b!82423 m!78048))

(assert (=> b!82423 m!78046))

(assert (=> b!82423 m!78048))

(declare-fun m!78050 () Bool)

(assert (=> b!82423 m!78050))

(assert (=> b!82392 d!56313))

(declare-fun b!82438 () Bool)

(declare-fun e!44744 () List!669)

(declare-fun lt!19071 () List!669)

(assert (=> b!82438 (= e!44744 lt!19071)))

(declare-fun b!82439 () Bool)

(assert (=> b!82439 (= e!44744 (Cons!626 (h!996 (t!47865 ls!96)) lt!19071))))

(declare-fun b!82440 () Bool)

(declare-fun res!42245 () Bool)

(declare-fun e!44743 () Bool)

(assert (=> b!82440 (=> (not res!42245) (not e!44743))))

(declare-fun lt!19072 () List!669)

(declare-fun content!128 (List!669) (Set Int))

(assert (=> b!82440 (= res!42245 (subset (content!128 lt!19072) (content!128 (t!47865 ls!96))))))

(declare-fun d!56315 () Bool)

(assert (=> d!56315 e!44743))

(declare-fun res!42243 () Bool)

(assert (=> d!56315 (=> (not res!42243) (not e!44743))))

(declare-fun size!657 (List!669) Int)

(assert (=> d!56315 (= res!42243 (<= (size!657 lt!19072) (size!657 (t!47865 ls!96))))))

(declare-fun e!44742 () List!669)

(assert (=> d!56315 (= lt!19072 e!44742)))

(declare-fun c!20723 () Bool)

(assert (=> d!56315 (= c!20723 (is-Nil!628 (t!47865 ls!96)))))

(assert (=> d!56315 (= (filter!22 (t!47865 ls!96) lambda!9880) lt!19072)))

(declare-fun b!82441 () Bool)

(assert (=> b!82441 (= e!44743 (forall!24 lt!19072 lambda!9880))))

(declare-fun b!82442 () Bool)

(assert (=> b!82442 (= e!44742 Nil!628)))

(declare-fun b!82443 () Bool)

(declare-fun e!44741 () Bool)

(declare-fun dynLambda!988 (Int Int) Bool)

(assert (=> b!82443 (= e!44741 (dynLambda!988 lambda!9880 (h!996 (t!47865 ls!96))))))

(declare-fun b!82444 () Bool)

(assert (=> b!82444 (= e!44742 e!44744)))

(declare-fun c!20722 () Bool)

(assert (=> b!82444 (= c!20722 e!44741)))

(declare-fun res!42244 () Bool)

(assert (=> b!82444 (=> (not res!42244) (not e!44741))))

(assert (=> b!82444 (= res!42244 (is-Cons!626 (t!47865 ls!96)))))

(assert (=> b!82444 (= lt!19071 (filter!22 (t!47865 (t!47865 ls!96)) lambda!9880))))

(assert (= (and b!82444 res!42244) b!82443))

(assert (= (and b!82444 c!20722) b!82439))

(assert (= (and b!82444 (not c!20722)) b!82438))

(assert (= (and d!56315 c!20723) b!82442))

(assert (= (and d!56315 (not c!20723)) b!82444))

(assert (= (and d!56315 res!42243) b!82440))

(assert (= (and b!82440 res!42245) b!82441))

(declare-fun b_lambda!16331 () Bool)

(assert (=> (not b_lambda!16331) (not b!82443)))

(declare-fun m!78052 () Bool)

(assert (=> b!82440 m!78052))

(declare-fun m!78054 () Bool)

(assert (=> b!82440 m!78054))

(declare-fun m!78056 () Bool)

(assert (=> d!56315 m!78056))

(declare-fun m!78058 () Bool)

(assert (=> d!56315 m!78058))

(declare-fun m!78060 () Bool)

(assert (=> b!82441 m!78060))

(declare-fun m!78062 () Bool)

(assert (=> b!82443 m!78062))

(declare-fun m!78064 () Bool)

(assert (=> b!82444 m!78064))

(assert (=> b!82397 d!56315))

(declare-fun b!82457 () Bool)

(declare-fun res!42257 () Bool)

(declare-fun e!44751 () Bool)

(assert (=> b!82457 (=> res!42257 e!44751)))

(declare-fun isEmpty!679 (List!669) Bool)

(assert (=> b!82457 (= res!42257 (isEmpty!679 (quickSort!0 less!5)))))

(declare-fun b!82458 () Bool)

(declare-fun res!42255 () Bool)

(declare-fun e!44753 () Bool)

(assert (=> b!82458 (=> res!42255 e!44753)))

(assert (=> b!82458 (= res!42255 (isEmpty!679 (quickSort!0 less!5)))))

(declare-fun d!56317 () Bool)

(declare-fun e!44752 () Bool)

(assert (=> d!56317 e!44752))

(declare-fun c!20726 () Bool)

(assert (=> d!56317 (= c!20726 (is-Cons!626 (quickSort!0 less!5)))))

(assert (=> d!56317 (= (forall_last!0 (quickSort!0 less!5) lambda!9878) true)))

(declare-fun b!82459 () Bool)

(assert (=> b!82459 (= e!44752 e!44753)))

(declare-fun res!42254 () Bool)

(assert (=> b!82459 (=> res!42254 e!44753)))

(assert (=> b!82459 (= res!42254 (not (forall!24 (quickSort!0 less!5) lambda!9878)))))

(declare-fun b!82460 () Bool)

(assert (=> b!82460 (= e!44752 e!44751)))

(declare-fun res!42256 () Bool)

(assert (=> b!82460 (=> res!42256 e!44751)))

(assert (=> b!82460 (= res!42256 (not (forall!24 (quickSort!0 less!5) lambda!9878)))))

(declare-fun lt!19075 () Bool)

(assert (=> b!82460 (= lt!19075 (forall_last!0 (t!47865 (quickSort!0 less!5)) lambda!9878))))

(declare-fun b!82461 () Bool)

(declare-fun last!19 (List!669) Int)

(assert (=> b!82461 (= e!44751 (dynLambda!988 lambda!9878 (last!19 (quickSort!0 less!5))))))

(declare-fun b!82462 () Bool)

(assert (=> b!82462 (= e!44753 (dynLambda!988 lambda!9878 (last!19 (quickSort!0 less!5))))))

(assert (= (and b!82460 (not res!42256)) b!82457))

(assert (= (and b!82457 (not res!42257)) b!82461))

(assert (= (and b!82459 (not res!42254)) b!82458))

(assert (= (and b!82458 (not res!42255)) b!82462))

(assert (= (and d!56317 c!20726) b!82460))

(assert (= (and d!56317 (not c!20726)) b!82459))

(declare-fun b_lambda!16333 () Bool)

(assert (=> (not b_lambda!16333) (not b!82461)))

(declare-fun b_lambda!16335 () Bool)

(assert (=> (not b_lambda!16335) (not b!82462)))

(assert (=> b!82458 m!77992))

(declare-fun m!78066 () Bool)

(assert (=> b!82458 m!78066))

(assert (=> b!82457 m!77992))

(assert (=> b!82457 m!78066))

(assert (=> b!82462 m!77992))

(declare-fun m!78068 () Bool)

(assert (=> b!82462 m!78068))

(assert (=> b!82462 m!78068))

(declare-fun m!78070 () Bool)

(assert (=> b!82462 m!78070))

(assert (=> b!82459 m!77992))

(assert (=> b!82459 m!77998))

(assert (=> b!82460 m!77992))

(assert (=> b!82460 m!77998))

(declare-fun m!78072 () Bool)

(assert (=> b!82460 m!78072))

(assert (=> b!82461 m!77992))

(assert (=> b!82461 m!78068))

(assert (=> b!82461 m!78068))

(assert (=> b!82461 m!78070))

(assert (=> b!82393 d!56317))

(declare-fun bs!39970 () Bool)

(declare-fun b!82474 () Bool)

(assert (= bs!39970 (and b!82474 b!82415)))

(declare-fun lambda!9914 () Int)

(assert (=> bs!39970 (not (= lambda!9914 lambda!9895))))

(assert (=> bs!39970 (not (= lambda!9914 lambda!9894))))

(assert (=> bs!39970 (= lambda!9914 lambda!9893)))

(declare-fun bs!39971 () Bool)

(assert (= bs!39971 (and b!82474 b!82397)))

(assert (=> bs!39971 (not (= lambda!9914 lambda!9880))))

(declare-fun bs!39972 () Bool)

(assert (= bs!39972 (and b!82474 b!82394)))

(assert (=> bs!39972 (not (= lambda!9914 lambda!9879))))

(declare-fun bs!39973 () Bool)

(assert (= bs!39973 (and b!82474 b!82398)))

(assert (=> bs!39973 (= (= (h!996 less!5) (h!996 ls!96)) (= lambda!9914 lambda!9878))))

(declare-fun bs!39974 () Bool)

(assert (= bs!39974 (and b!82474 b!82422)))

(assert (=> bs!39974 (not (= lambda!9914 lambda!9907))))

(assert (=> bs!39974 (not (= lambda!9914 lambda!9906))))

(assert (=> bs!39974 (= lambda!9914 lambda!9905)))

(declare-fun bs!39975 () Bool)

(assert (= bs!39975 (and b!82474 d!56311)))

(assert (=> bs!39975 (not (= lambda!9914 lambda!9898))))

(assert (=> b!82474 true))

(declare-fun lambda!9915 () Int)

(assert (=> bs!39970 (not (= lambda!9915 lambda!9895))))

(assert (=> bs!39970 (= lambda!9915 lambda!9894)))

(assert (=> bs!39970 (not (= lambda!9915 lambda!9893))))

(assert (=> bs!39971 (not (= lambda!9915 lambda!9880))))

(assert (=> bs!39972 (= (= (h!996 less!5) (h!996 ls!96)) (= lambda!9915 lambda!9879))))

(assert (=> bs!39973 (not (= lambda!9915 lambda!9878))))

(assert (=> bs!39974 (not (= lambda!9915 lambda!9907))))

(assert (=> bs!39974 (= lambda!9915 lambda!9906)))

(assert (=> bs!39974 (not (= lambda!9915 lambda!9905))))

(assert (=> bs!39975 (= (= (h!996 less!5) (h!996 ls!96)) (= lambda!9915 lambda!9898))))

(assert (=> b!82474 (not (= lambda!9915 lambda!9914))))

(assert (=> b!82474 true))

(declare-fun lambda!9916 () Int)

(assert (=> bs!39970 (= lambda!9916 lambda!9895)))

(assert (=> bs!39970 (not (= lambda!9916 lambda!9894))))

(assert (=> bs!39970 (not (= lambda!9916 lambda!9893))))

(assert (=> bs!39971 (= (= (h!996 less!5) (h!996 ls!96)) (= lambda!9916 lambda!9880))))

(assert (=> bs!39972 (not (= lambda!9916 lambda!9879))))

(assert (=> bs!39973 (not (= lambda!9916 lambda!9878))))

(assert (=> bs!39974 (= lambda!9916 lambda!9907)))

(assert (=> bs!39974 (not (= lambda!9916 lambda!9906))))

(assert (=> bs!39974 (not (= lambda!9916 lambda!9905))))

(assert (=> bs!39975 (not (= lambda!9916 lambda!9898))))

(assert (=> b!82474 (not (= lambda!9916 lambda!9915))))

(assert (=> b!82474 (not (= lambda!9916 lambda!9914))))

(assert (=> b!82474 true))

(declare-fun d!56319 () Bool)

(declare-fun c!20731 () Bool)

(assert (=> d!56319 (= c!20731 (is-Nil!628 less!5))))

(declare-fun e!44758 () List!669)

(assert (=> d!56319 (= (quickSort!0 less!5) e!44758)))

(declare-fun b!82472 () Bool)

(declare-fun e!44759 () List!669)

(assert (=> b!82472 (= e!44758 e!44759)))

(declare-fun c!20732 () Bool)

(assert (=> b!82472 (= c!20732 (and (is-Cons!626 less!5) (is-Nil!628 (t!47865 less!5))))))

(assert (=> b!82474 (= e!44759 (++!77 (++!77 (quickSort!0 (filter!22 (t!47865 less!5) lambda!9914)) (Cons!626 (h!996 less!5) (filter!22 (t!47865 less!5) lambda!9915))) (quickSort!0 (filter!22 (t!47865 less!5) lambda!9916))))))

(declare-fun b!82471 () Bool)

(assert (=> b!82471 (= e!44758 Nil!628)))

(declare-fun b!82473 () Bool)

(assert (=> b!82473 (= e!44759 less!5)))

(assert (= (and b!82472 c!20732) b!82473))

(assert (= (and b!82472 (not c!20732)) b!82474))

(assert (= (and d!56319 c!20731) b!82471))

(assert (= (and d!56319 (not c!20731)) b!82472))

(declare-fun m!78074 () Bool)

(assert (=> b!82474 m!78074))

(declare-fun m!78076 () Bool)

(assert (=> b!82474 m!78076))

(declare-fun m!78078 () Bool)

(assert (=> b!82474 m!78078))

(declare-fun m!78080 () Bool)

(assert (=> b!82474 m!78080))

(declare-fun m!78082 () Bool)

(assert (=> b!82474 m!78082))

(declare-fun m!78084 () Bool)

(assert (=> b!82474 m!78084))

(assert (=> b!82474 m!78078))

(assert (=> b!82474 m!78080))

(assert (=> b!82474 m!78076))

(declare-fun m!78086 () Bool)

(assert (=> b!82474 m!78086))

(assert (=> b!82474 m!78084))

(assert (=> b!82474 m!78074))

(assert (=> b!82393 d!56319))

(declare-fun b!82475 () Bool)

(declare-fun e!44763 () List!669)

(declare-fun lt!19076 () List!669)

(assert (=> b!82475 (= e!44763 lt!19076)))

(declare-fun b!82476 () Bool)

(assert (=> b!82476 (= e!44763 (Cons!626 (h!996 (t!47865 ls!96)) lt!19076))))

(declare-fun b!82477 () Bool)

(declare-fun res!42260 () Bool)

(declare-fun e!44762 () Bool)

(assert (=> b!82477 (=> (not res!42260) (not e!44762))))

(declare-fun lt!19077 () List!669)

(assert (=> b!82477 (= res!42260 (subset (content!128 lt!19077) (content!128 (t!47865 ls!96))))))

(declare-fun d!56321 () Bool)

(assert (=> d!56321 e!44762))

(declare-fun res!42258 () Bool)

(assert (=> d!56321 (=> (not res!42258) (not e!44762))))

(assert (=> d!56321 (= res!42258 (<= (size!657 lt!19077) (size!657 (t!47865 ls!96))))))

(declare-fun e!44761 () List!669)

(assert (=> d!56321 (= lt!19077 e!44761)))

(declare-fun c!20734 () Bool)

(assert (=> d!56321 (= c!20734 (is-Nil!628 (t!47865 ls!96)))))

(assert (=> d!56321 (= (filter!22 (t!47865 ls!96) lambda!9879) lt!19077)))

(declare-fun b!82478 () Bool)

(assert (=> b!82478 (= e!44762 (forall!24 lt!19077 lambda!9879))))

(declare-fun b!82479 () Bool)

(assert (=> b!82479 (= e!44761 Nil!628)))

(declare-fun b!82480 () Bool)

(declare-fun e!44760 () Bool)

(assert (=> b!82480 (= e!44760 (dynLambda!988 lambda!9879 (h!996 (t!47865 ls!96))))))

(declare-fun b!82481 () Bool)

(assert (=> b!82481 (= e!44761 e!44763)))

(declare-fun c!20733 () Bool)

(assert (=> b!82481 (= c!20733 e!44760)))

(declare-fun res!42259 () Bool)

(assert (=> b!82481 (=> (not res!42259) (not e!44760))))

(assert (=> b!82481 (= res!42259 (is-Cons!626 (t!47865 ls!96)))))

(assert (=> b!82481 (= lt!19076 (filter!22 (t!47865 (t!47865 ls!96)) lambda!9879))))

(assert (= (and b!82481 res!42259) b!82480))

(assert (= (and b!82481 c!20733) b!82476))

(assert (= (and b!82481 (not c!20733)) b!82475))

(assert (= (and d!56321 c!20734) b!82479))

(assert (= (and d!56321 (not c!20734)) b!82481))

(assert (= (and d!56321 res!42258) b!82477))

(assert (= (and b!82477 res!42260) b!82478))

(declare-fun b_lambda!16337 () Bool)

(assert (=> (not b_lambda!16337) (not b!82480)))

(declare-fun m!78088 () Bool)

(assert (=> b!82477 m!78088))

(assert (=> b!82477 m!78054))

(declare-fun m!78090 () Bool)

(assert (=> d!56321 m!78090))

(assert (=> d!56321 m!78058))

(declare-fun m!78092 () Bool)

(assert (=> b!82478 m!78092))

(declare-fun m!78094 () Bool)

(assert (=> b!82480 m!78094))

(declare-fun m!78096 () Bool)

(assert (=> b!82481 m!78096))

(assert (=> b!82394 d!56321))

(declare-fun b!82482 () Bool)

(declare-fun e!44767 () List!669)

(declare-fun lt!19078 () List!669)

(assert (=> b!82482 (= e!44767 lt!19078)))

(declare-fun b!82483 () Bool)

(assert (=> b!82483 (= e!44767 (Cons!626 (h!996 (t!47865 ls!96)) lt!19078))))

(declare-fun b!82484 () Bool)

(declare-fun res!42263 () Bool)

(declare-fun e!44766 () Bool)

(assert (=> b!82484 (=> (not res!42263) (not e!44766))))

(declare-fun lt!19079 () List!669)

(assert (=> b!82484 (= res!42263 (subset (content!128 lt!19079) (content!128 (t!47865 ls!96))))))

(declare-fun d!56323 () Bool)

(assert (=> d!56323 e!44766))

(declare-fun res!42261 () Bool)

(assert (=> d!56323 (=> (not res!42261) (not e!44766))))

(assert (=> d!56323 (= res!42261 (<= (size!657 lt!19079) (size!657 (t!47865 ls!96))))))

(declare-fun e!44765 () List!669)

(assert (=> d!56323 (= lt!19079 e!44765)))

(declare-fun c!20736 () Bool)

(assert (=> d!56323 (= c!20736 (is-Nil!628 (t!47865 ls!96)))))

(assert (=> d!56323 (= (filter!22 (t!47865 ls!96) lambda!9878) lt!19079)))

(declare-fun b!82485 () Bool)

(assert (=> b!82485 (= e!44766 (forall!24 lt!19079 lambda!9878))))

(declare-fun b!82486 () Bool)

(assert (=> b!82486 (= e!44765 Nil!628)))

(declare-fun b!82487 () Bool)

(declare-fun e!44764 () Bool)

(assert (=> b!82487 (= e!44764 (dynLambda!988 lambda!9878 (h!996 (t!47865 ls!96))))))

(declare-fun b!82488 () Bool)

(assert (=> b!82488 (= e!44765 e!44767)))

(declare-fun c!20735 () Bool)

(assert (=> b!82488 (= c!20735 e!44764)))

(declare-fun res!42262 () Bool)

(assert (=> b!82488 (=> (not res!42262) (not e!44764))))

(assert (=> b!82488 (= res!42262 (is-Cons!626 (t!47865 ls!96)))))

(assert (=> b!82488 (= lt!19078 (filter!22 (t!47865 (t!47865 ls!96)) lambda!9878))))

(assert (= (and b!82488 res!42262) b!82487))

(assert (= (and b!82488 c!20735) b!82483))

(assert (= (and b!82488 (not c!20735)) b!82482))

(assert (= (and d!56323 c!20736) b!82486))

(assert (= (and d!56323 (not c!20736)) b!82488))

(assert (= (and d!56323 res!42261) b!82484))

(assert (= (and b!82484 res!42263) b!82485))

(declare-fun b_lambda!16339 () Bool)

(assert (=> (not b_lambda!16339) (not b!82487)))

(declare-fun m!78098 () Bool)

(assert (=> b!82484 m!78098))

(assert (=> b!82484 m!78054))

(declare-fun m!78100 () Bool)

(assert (=> d!56323 m!78100))

(assert (=> d!56323 m!78058))

(declare-fun m!78102 () Bool)

(assert (=> b!82485 m!78102))

(declare-fun m!78104 () Bool)

(assert (=> b!82487 m!78104))

(declare-fun m!78106 () Bool)

(assert (=> b!82488 m!78106))

(assert (=> b!82398 d!56323))

(declare-fun b_lambda!16341 () Bool)

(assert (= b_lambda!16331 (or b!82397 b_lambda!16341)))

(declare-fun bs!39976 () Bool)

(declare-fun d!56325 () Bool)

(assert (= bs!39976 (and d!56325 b!82397)))

(assert (=> bs!39976 (= (dynLambda!988 lambda!9880 (h!996 (t!47865 ls!96))) (> (h!996 (t!47865 ls!96)) (h!996 ls!96)))))

(assert (=> b!82443 d!56325))

(declare-fun b_lambda!16343 () Bool)

(assert (= b_lambda!16337 (or b!82394 b_lambda!16343)))

(declare-fun bs!39977 () Bool)

(declare-fun d!56327 () Bool)

(assert (= bs!39977 (and d!56327 b!82394)))

(assert (=> bs!39977 (= (dynLambda!988 lambda!9879 (h!996 (t!47865 ls!96))) (= (h!996 (t!47865 ls!96)) (h!996 ls!96)))))

(assert (=> b!82480 d!56327))

(declare-fun b_lambda!16345 () Bool)

(assert (= b_lambda!16333 (or b!82398 b_lambda!16345)))

(declare-fun bs!39978 () Bool)

(declare-fun d!56329 () Bool)

(assert (= bs!39978 (and d!56329 b!82398)))

(assert (=> bs!39978 (= (dynLambda!988 lambda!9878 (last!19 (quickSort!0 less!5))) (< (last!19 (quickSort!0 less!5)) (h!996 ls!96)))))

(assert (=> b!82461 d!56329))

(declare-fun b_lambda!16347 () Bool)

(assert (= b_lambda!16335 (or b!82398 b_lambda!16347)))

(assert (=> b!82462 d!56329))

(declare-fun b_lambda!16349 () Bool)

(assert (= b_lambda!16339 (or b!82398 b_lambda!16349)))

(declare-fun bs!39979 () Bool)

(declare-fun d!56331 () Bool)

(assert (= bs!39979 (and d!56331 b!82398)))

(assert (=> bs!39979 (= (dynLambda!988 lambda!9878 (h!996 (t!47865 ls!96))) (< (h!996 (t!47865 ls!96)) (h!996 ls!96)))))

(assert (=> b!82487 d!56331))

(push 1)

(assert (not b!82477))

(assert (not b!82413))

(assert (not b!82460))

(assert (not b!82441))

(assert (not b!82440))

(assert (not b!82415))

(assert (not d!56315))

(assert (not b_lambda!16349))

(assert (not b!82457))

(assert (not d!56311))

(assert (not b!82474))

(assert (not d!56323))

(assert (not b!82488))

(assert (not d!56313))

(assert (not b!82478))

(assert (not b_lambda!16345))

(assert (not b!82484))

(assert (not b_lambda!16347))

(assert (not d!56321))

(assert (not b!82462))

(assert (not b!82423))

(assert (not b!82458))

(assert (not b!82414))

(assert (not b!82485))

(assert (not b_lambda!16343))

(assert (not b_lambda!16341))

(assert (not b!82411))

(assert (not b!82412))

(assert (not b!82459))

(assert (not b!82422))

(assert (not b!82444))

(assert (not d!56309))

(assert (not b!82481))

(assert (not b!82461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


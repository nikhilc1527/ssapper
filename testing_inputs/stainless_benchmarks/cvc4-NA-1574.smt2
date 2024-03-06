; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10842 () Bool)

(assert start!10842)

(declare-fun b!82803 () Bool)

(assert (=> b!82803 true))

(declare-fun bs!40104 () Bool)

(declare-fun b!82805 () Bool)

(assert (= bs!40104 (and b!82805 b!82803)))

(declare-fun lambda!10052 () Int)

(declare-fun lambda!10051 () Int)

(assert (=> bs!40104 (not (= lambda!10052 lambda!10051))))

(assert (=> b!82805 true))

(declare-fun bs!40105 () Bool)

(declare-fun b!82801 () Bool)

(assert (= bs!40105 (and b!82801 b!82803)))

(declare-fun lambda!10053 () Int)

(assert (=> bs!40105 (not (= lambda!10053 lambda!10051))))

(declare-fun bs!40106 () Bool)

(assert (= bs!40106 (and b!82801 b!82805)))

(assert (=> bs!40106 (not (= lambda!10053 lambda!10052))))

(assert (=> b!82801 true))

(declare-fun bs!40107 () Bool)

(declare-fun b!82806 () Bool)

(assert (= bs!40107 (and b!82806 b!82803)))

(declare-fun lambda!10054 () Int)

(assert (=> bs!40107 (not (= lambda!10054 lambda!10051))))

(declare-fun bs!40108 () Bool)

(assert (= bs!40108 (and b!82806 b!82805)))

(assert (=> bs!40108 (not (= lambda!10054 lambda!10052))))

(declare-fun bs!40109 () Bool)

(assert (= bs!40109 (and b!82806 b!82801)))

(assert (=> bs!40109 (not (= lambda!10054 lambda!10053))))

(assert (=> b!82806 true))

(declare-fun res!42497 () Bool)

(declare-fun e!44923 () Bool)

(assert (=> b!82801 (=> (not res!42497) (not e!44923))))

(declare-datatypes () ((List!672 (Cons!629 (h!999 Int) (t!47889 List!672)) (Nil!631))))

(declare-fun more!5 () List!672)

(declare-fun ls!96 () List!672)

(declare-fun filter!25 (List!672 Int) List!672)

(assert (=> b!82801 (= res!42497 (= more!5 (filter!25 (t!47889 ls!96) lambda!10053)))))

(declare-fun b!82802 () Bool)

(declare-fun res!42494 () Bool)

(assert (=> b!82802 (=> (not res!42494) (not e!44923))))

(declare-fun less!5 () List!672)

(declare-fun sorted_lemma!0 (List!672) Bool)

(assert (=> b!82802 (= res!42494 (sorted_lemma!0 less!5))))

(declare-fun res!42499 () Bool)

(assert (=> b!82803 (=> (not res!42499) (not e!44923))))

(assert (=> b!82803 (= res!42499 (= less!5 (filter!25 (t!47889 ls!96) lambda!10051)))))

(declare-fun res!42498 () Bool)

(assert (=> start!10842 (=> (not res!42498) (not e!44923))))

(assert (=> start!10842 (= res!42498 (and (not (is-Nil!631 ls!96)) (not (is-Nil!631 (t!47889 ls!96)))))))

(assert (=> start!10842 e!44923))

(assert (=> start!10842 true))

(declare-fun b!82804 () Bool)

(declare-fun res!42490 () Bool)

(assert (=> b!82804 (=> (not res!42490) (not e!44923))))

(declare-fun forall_lt_implies_le!0 (List!672 Int) Bool)

(assert (=> b!82804 (= res!42490 (forall_lt_implies_le!0 less!5 (h!999 ls!96)))))

(declare-fun res!42492 () Bool)

(assert (=> b!82805 (=> (not res!42492) (not e!44923))))

(declare-fun equal!10 () List!672)

(assert (=> b!82805 (= res!42492 (= equal!10 (Cons!629 (h!999 ls!96) (filter!25 (t!47889 ls!96) lambda!10052))))))

(declare-fun res!42500 () Bool)

(assert (=> b!82806 (=> (not res!42500) (not e!44923))))

(declare-fun sort_preserves_forall!0 (List!672 Int) Bool)

(assert (=> b!82806 (= res!42500 (sort_preserves_forall!0 less!5 lambda!10054))))

(declare-fun b!82807 () Bool)

(declare-fun res!42495 () Bool)

(assert (=> b!82807 (=> (not res!42495) (not e!44923))))

(declare-fun cons_filter_equal_sorted!0 (List!672 Int) Bool)

(assert (=> b!82807 (= res!42495 (cons_filter_equal_sorted!0 (t!47889 ls!96) (h!999 ls!96)))))

(declare-fun b!82808 () Bool)

(declare-fun forall_eq_implies_le!0 (List!672 Int) Bool)

(assert (=> b!82808 (= e!44923 (not (forall_eq_implies_le!0 equal!10 (h!999 ls!96))))))

(declare-fun b!82809 () Bool)

(declare-fun res!42493 () Bool)

(assert (=> b!82809 (=> (not res!42493) (not e!44923))))

(declare-fun forall_last!0 (List!672 Int) Bool)

(declare-fun quickSort!0 (List!672) List!672)

(assert (=> b!82809 (= res!42493 (forall_last!0 (quickSort!0 less!5) lambda!10051))))

(declare-fun b!82810 () Bool)

(declare-fun res!42491 () Bool)

(assert (=> b!82810 (=> (not res!42491) (not e!44923))))

(assert (=> b!82810 (= res!42491 (sort_preserves_forall!0 less!5 lambda!10051))))

(declare-fun b!82811 () Bool)

(declare-fun res!42496 () Bool)

(assert (=> b!82811 (=> (not res!42496) (not e!44923))))

(declare-fun append_sorted!0 (List!672 List!672) Bool)

(assert (=> b!82811 (= res!42496 (append_sorted!0 (quickSort!0 less!5) equal!10))))

(assert (= (and start!10842 res!42498) b!82803))

(assert (= (and b!82803 res!42499) b!82805))

(assert (= (and b!82805 res!42492) b!82801))

(assert (= (and b!82801 res!42497) b!82802))

(assert (= (and b!82802 res!42494) b!82810))

(assert (= (and b!82810 res!42491) b!82809))

(assert (= (and b!82809 res!42493) b!82807))

(assert (= (and b!82807 res!42495) b!82811))

(assert (= (and b!82811 res!42496) b!82804))

(assert (= (and b!82804 res!42490) b!82806))

(assert (= (and b!82806 res!42500) b!82808))

(declare-fun m!78440 () Bool)

(assert (=> b!82808 m!78440))

(declare-fun m!78442 () Bool)

(assert (=> b!82807 m!78442))

(declare-fun m!78444 () Bool)

(assert (=> b!82809 m!78444))

(assert (=> b!82809 m!78444))

(declare-fun m!78446 () Bool)

(assert (=> b!82809 m!78446))

(assert (=> b!82811 m!78444))

(assert (=> b!82811 m!78444))

(declare-fun m!78448 () Bool)

(assert (=> b!82811 m!78448))

(declare-fun m!78450 () Bool)

(assert (=> b!82804 m!78450))

(declare-fun m!78452 () Bool)

(assert (=> b!82806 m!78452))

(declare-fun m!78454 () Bool)

(assert (=> b!82805 m!78454))

(declare-fun m!78456 () Bool)

(assert (=> b!82803 m!78456))

(declare-fun m!78458 () Bool)

(assert (=> b!82802 m!78458))

(declare-fun m!78460 () Bool)

(assert (=> b!82810 m!78460))

(declare-fun m!78462 () Bool)

(assert (=> b!82801 m!78462))

(push 1)

(assert (not b!82802))

(assert (not b!82803))

(assert (not b!82801))

(assert (not b!82805))

(assert (not b!82809))

(assert (not b!82807))

(assert (not b!82811))

(assert (not b!82810))

(assert (not b!82806))

(assert (not b!82808))

(assert (not b!82804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!40110 () Bool)

(declare-fun d!56391 () Bool)

(assert (= bs!40110 (and d!56391 b!82803)))

(declare-fun lambda!10061 () Int)

(assert (=> bs!40110 (= lambda!10061 lambda!10051)))

(declare-fun bs!40111 () Bool)

(assert (= bs!40111 (and d!56391 b!82805)))

(assert (=> bs!40111 (not (= lambda!10061 lambda!10052))))

(declare-fun bs!40112 () Bool)

(assert (= bs!40112 (and d!56391 b!82801)))

(assert (=> bs!40112 (not (= lambda!10061 lambda!10053))))

(declare-fun bs!40113 () Bool)

(assert (= bs!40113 (and d!56391 b!82806)))

(assert (=> bs!40113 (not (= lambda!10061 lambda!10054))))

(assert (=> d!56391 true))

(declare-fun bs!40114 () Bool)

(declare-fun b!82818 () Bool)

(assert (= bs!40114 (and b!82818 b!82806)))

(declare-fun lambda!10062 () Int)

(assert (=> bs!40114 (= lambda!10062 lambda!10054)))

(declare-fun bs!40115 () Bool)

(assert (= bs!40115 (and b!82818 b!82803)))

(assert (=> bs!40115 (not (= lambda!10062 lambda!10051))))

(declare-fun bs!40116 () Bool)

(assert (= bs!40116 (and b!82818 b!82801)))

(assert (=> bs!40116 (not (= lambda!10062 lambda!10053))))

(declare-fun bs!40117 () Bool)

(assert (= bs!40117 (and b!82818 d!56391)))

(assert (=> bs!40117 (not (= lambda!10062 lambda!10061))))

(declare-fun bs!40118 () Bool)

(assert (= bs!40118 (and b!82818 b!82805)))

(assert (=> bs!40118 (not (= lambda!10062 lambda!10052))))

(assert (=> b!82818 true))

(declare-fun bs!40119 () Bool)

(declare-fun b!82819 () Bool)

(assert (= bs!40119 (and b!82819 b!82806)))

(declare-fun lambda!10063 () Int)

(assert (=> bs!40119 (= lambda!10063 lambda!10054)))

(declare-fun bs!40120 () Bool)

(assert (= bs!40120 (and b!82819 b!82803)))

(assert (=> bs!40120 (not (= lambda!10063 lambda!10051))))

(declare-fun bs!40121 () Bool)

(assert (= bs!40121 (and b!82819 b!82801)))

(assert (=> bs!40121 (not (= lambda!10063 lambda!10053))))

(declare-fun bs!40122 () Bool)

(assert (= bs!40122 (and b!82819 d!56391)))

(assert (=> bs!40122 (not (= lambda!10063 lambda!10061))))

(declare-fun bs!40123 () Bool)

(assert (= bs!40123 (and b!82819 b!82818)))

(assert (=> bs!40123 (= lambda!10063 lambda!10062)))

(declare-fun bs!40124 () Bool)

(assert (= bs!40124 (and b!82819 b!82805)))

(assert (=> bs!40124 (not (= lambda!10063 lambda!10052))))

(assert (=> b!82819 true))

(declare-fun e!44926 () Bool)

(assert (=> d!56391 e!44926))

(declare-fun c!20789 () Bool)

(assert (=> d!56391 (= c!20789 (is-Cons!629 less!5))))

(declare-fun forall!27 (List!672 Int) Bool)

(assert (=> d!56391 (forall!27 less!5 lambda!10061)))

(assert (=> d!56391 (= (forall_lt_implies_le!0 less!5 (h!999 ls!96)) true)))

(assert (=> b!82818 (= e!44926 (forall!27 less!5 lambda!10062))))

(declare-fun lt!19192 () Bool)

(assert (=> b!82818 (= lt!19192 (forall_lt_implies_le!0 (t!47889 less!5) (h!999 ls!96)))))

(assert (=> b!82819 (= e!44926 (forall!27 less!5 lambda!10063))))

(assert (= (and d!56391 c!20789) b!82818))

(assert (= (and d!56391 (not c!20789)) b!82819))

(declare-fun m!78464 () Bool)

(assert (=> d!56391 m!78464))

(declare-fun m!78466 () Bool)

(assert (=> b!82818 m!78466))

(declare-fun m!78468 () Bool)

(assert (=> b!82818 m!78468))

(declare-fun m!78470 () Bool)

(assert (=> b!82819 m!78470))

(assert (=> b!82804 d!56391))

(declare-fun bs!40125 () Bool)

(declare-fun d!56393 () Bool)

(assert (= bs!40125 (and d!56393 b!82819)))

(declare-fun lambda!10066 () Int)

(assert (=> bs!40125 (not (= lambda!10066 lambda!10063))))

(declare-fun bs!40126 () Bool)

(assert (= bs!40126 (and d!56393 b!82806)))

(assert (=> bs!40126 (not (= lambda!10066 lambda!10054))))

(declare-fun bs!40127 () Bool)

(assert (= bs!40127 (and d!56393 b!82803)))

(assert (=> bs!40127 (not (= lambda!10066 lambda!10051))))

(declare-fun bs!40128 () Bool)

(assert (= bs!40128 (and d!56393 b!82801)))

(assert (=> bs!40128 (not (= lambda!10066 lambda!10053))))

(declare-fun bs!40129 () Bool)

(assert (= bs!40129 (and d!56393 d!56391)))

(assert (=> bs!40129 (not (= lambda!10066 lambda!10061))))

(declare-fun bs!40130 () Bool)

(assert (= bs!40130 (and d!56393 b!82818)))

(assert (=> bs!40130 (not (= lambda!10066 lambda!10062))))

(declare-fun bs!40131 () Bool)

(assert (= bs!40131 (and d!56393 b!82805)))

(assert (=> bs!40131 (= lambda!10066 lambda!10052)))

(assert (=> d!56393 true))

(declare-fun isSorted!1 (List!672) Bool)

(assert (=> d!56393 (isSorted!1 (Cons!629 (h!999 ls!96) (filter!25 (t!47889 ls!96) lambda!10066)))))

(declare-datatypes () ((Unit!1190 (Unit!1191))))

(declare-fun lt!19195 () Unit!1190)

(declare-fun Unit!1192 () Unit!1190)

(assert (=> d!56393 (= lt!19195 Unit!1192)))

(declare-fun filter_equal_sorted!0 (List!672 Int) Bool)

(assert (=> d!56393 (filter_equal_sorted!0 (t!47889 ls!96) (h!999 ls!96))))

(assert (=> d!56393 (= (cons_filter_equal_sorted!0 (t!47889 ls!96) (h!999 ls!96)) true)))

(declare-fun bs!40132 () Bool)

(assert (= bs!40132 d!56393))

(declare-fun m!78472 () Bool)

(assert (=> bs!40132 m!78472))

(declare-fun m!78474 () Bool)

(assert (=> bs!40132 m!78474))

(declare-fun m!78476 () Bool)

(assert (=> bs!40132 m!78476))

(assert (=> b!82807 d!56393))

(declare-fun b!82836 () Bool)

(declare-fun e!44937 () Bool)

(declare-fun lt!19201 () List!672)

(assert (=> b!82836 (= e!44937 (forall!27 lt!19201 lambda!10053))))

(declare-fun d!56395 () Bool)

(assert (=> d!56395 e!44937))

(declare-fun res!42511 () Bool)

(assert (=> d!56395 (=> (not res!42511) (not e!44937))))

(declare-fun size!660 (List!672) Int)

(assert (=> d!56395 (= res!42511 (<= (size!660 lt!19201) (size!660 (t!47889 ls!96))))))

(declare-fun e!44935 () List!672)

(assert (=> d!56395 (= lt!19201 e!44935)))

(declare-fun c!20794 () Bool)

(assert (=> d!56395 (= c!20794 (is-Nil!631 (t!47889 ls!96)))))

(assert (=> d!56395 (= (filter!25 (t!47889 ls!96) lambda!10053) lt!19201)))

(declare-fun b!82837 () Bool)

(assert (=> b!82837 (= e!44935 Nil!631)))

(declare-fun b!82838 () Bool)

(declare-fun e!44936 () Bool)

(declare-fun dynLambda!991 (Int Int) Bool)

(assert (=> b!82838 (= e!44936 (dynLambda!991 lambda!10053 (h!999 (t!47889 ls!96))))))

(declare-fun b!82839 () Bool)

(declare-fun res!42512 () Bool)

(assert (=> b!82839 (=> (not res!42512) (not e!44937))))

(declare-fun content!131 (List!672) (Set Int))

(assert (=> b!82839 (= res!42512 (subset (content!131 lt!19201) (content!131 (t!47889 ls!96))))))

(declare-fun b!82840 () Bool)

(declare-fun e!44938 () List!672)

(declare-fun lt!19200 () List!672)

(assert (=> b!82840 (= e!44938 (Cons!629 (h!999 (t!47889 ls!96)) lt!19200))))

(declare-fun b!82841 () Bool)

(assert (=> b!82841 (= e!44938 lt!19200)))

(declare-fun b!82842 () Bool)

(assert (=> b!82842 (= e!44935 e!44938)))

(declare-fun c!20795 () Bool)

(assert (=> b!82842 (= c!20795 e!44936)))

(declare-fun res!42513 () Bool)

(assert (=> b!82842 (=> (not res!42513) (not e!44936))))

(assert (=> b!82842 (= res!42513 (is-Cons!629 (t!47889 ls!96)))))

(assert (=> b!82842 (= lt!19200 (filter!25 (t!47889 (t!47889 ls!96)) lambda!10053))))

(assert (= (and b!82842 res!42513) b!82838))

(assert (= (and b!82842 c!20795) b!82840))

(assert (= (and b!82842 (not c!20795)) b!82841))

(assert (= (and d!56395 c!20794) b!82837))

(assert (= (and d!56395 (not c!20794)) b!82842))

(assert (= (and d!56395 res!42511) b!82839))

(assert (= (and b!82839 res!42512) b!82836))

(declare-fun b_lambda!16391 () Bool)

(assert (=> (not b_lambda!16391) (not b!82838)))

(declare-fun m!78478 () Bool)

(assert (=> b!82836 m!78478))

(declare-fun m!78480 () Bool)

(assert (=> b!82838 m!78480))

(declare-fun m!78482 () Bool)

(assert (=> b!82839 m!78482))

(declare-fun m!78484 () Bool)

(assert (=> b!82839 m!78484))

(declare-fun m!78486 () Bool)

(assert (=> d!56395 m!78486))

(declare-fun m!78488 () Bool)

(assert (=> d!56395 m!78488))

(declare-fun m!78490 () Bool)

(assert (=> b!82842 m!78490))

(assert (=> b!82801 d!56395))

(declare-fun bs!40133 () Bool)

(declare-fun b!82856 () Bool)

(assert (= bs!40133 (and b!82856 b!82819)))

(declare-fun lambda!10079 () Int)

(assert (=> bs!40133 (not (= lambda!10079 lambda!10063))))

(declare-fun bs!40134 () Bool)

(assert (= bs!40134 (and b!82856 b!82806)))

(assert (=> bs!40134 (not (= lambda!10079 lambda!10054))))

(declare-fun bs!40135 () Bool)

(assert (= bs!40135 (and b!82856 b!82803)))

(assert (=> bs!40135 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10079 lambda!10051))))

(declare-fun bs!40136 () Bool)

(assert (= bs!40136 (and b!82856 b!82801)))

(assert (=> bs!40136 (not (= lambda!10079 lambda!10053))))

(declare-fun bs!40137 () Bool)

(assert (= bs!40137 (and b!82856 d!56391)))

(assert (=> bs!40137 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10079 lambda!10061))))

(declare-fun bs!40138 () Bool)

(assert (= bs!40138 (and b!82856 b!82818)))

(assert (=> bs!40138 (not (= lambda!10079 lambda!10062))))

(declare-fun bs!40139 () Bool)

(assert (= bs!40139 (and b!82856 b!82805)))

(assert (=> bs!40139 (not (= lambda!10079 lambda!10052))))

(declare-fun bs!40140 () Bool)

(assert (= bs!40140 (and b!82856 d!56393)))

(assert (=> bs!40140 (not (= lambda!10079 lambda!10066))))

(assert (=> b!82856 true))

(declare-fun lambda!10080 () Int)

(assert (=> bs!40133 (not (= lambda!10080 lambda!10063))))

(assert (=> bs!40134 (not (= lambda!10080 lambda!10054))))

(assert (=> b!82856 (not (= lambda!10080 lambda!10079))))

(assert (=> bs!40135 (not (= lambda!10080 lambda!10051))))

(assert (=> bs!40136 (not (= lambda!10080 lambda!10053))))

(assert (=> bs!40137 (not (= lambda!10080 lambda!10061))))

(assert (=> bs!40138 (not (= lambda!10080 lambda!10062))))

(assert (=> bs!40139 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10080 lambda!10052))))

(assert (=> bs!40140 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10080 lambda!10066))))

(assert (=> b!82856 true))

(declare-fun lambda!10081 () Int)

(assert (=> bs!40133 (not (= lambda!10081 lambda!10063))))

(assert (=> bs!40134 (not (= lambda!10081 lambda!10054))))

(assert (=> b!82856 (not (= lambda!10081 lambda!10080))))

(assert (=> b!82856 (not (= lambda!10081 lambda!10079))))

(assert (=> bs!40135 (not (= lambda!10081 lambda!10051))))

(assert (=> bs!40136 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10081 lambda!10053))))

(assert (=> bs!40137 (not (= lambda!10081 lambda!10061))))

(assert (=> bs!40138 (not (= lambda!10081 lambda!10062))))

(assert (=> bs!40139 (not (= lambda!10081 lambda!10052))))

(assert (=> bs!40140 (not (= lambda!10081 lambda!10066))))

(assert (=> b!82856 true))

(declare-fun e!44952 () Bool)

(declare-fun b!82853 () Bool)

(declare-fun filter_preserves_forall!0 (List!672 Int Int) Bool)

(assert (=> b!82853 (= e!44952 (filter_preserves_forall!0 (t!47889 less!5) lambda!10080 lambda!10054))))

(declare-fun b!82854 () Bool)

(declare-fun e!44950 () Bool)

(declare-fun lt!19217 () List!672)

(assert (=> b!82854 (= e!44950 (sort_preserves_forall!0 lt!19217 lambda!10054))))

(declare-fun e!44949 () Bool)

(declare-fun b!82855 () Bool)

(assert (=> b!82855 (= e!44949 (filter_preserves_forall!0 (t!47889 less!5) lambda!10081 lambda!10054))))

(declare-fun e!44951 () Bool)

(declare-fun e!44953 () Bool)

(assert (=> b!82856 (= e!44951 e!44953)))

(declare-fun res!42532 () Bool)

(assert (=> b!82856 (=> (not res!42532) (not e!44953))))

(declare-fun lt!19214 () List!672)

(declare-fun lt!19219 () List!672)

(declare-fun append_preserves_forall!0 (List!672 List!672 Int) Bool)

(assert (=> b!82856 (= res!42532 (append_preserves_forall!0 (quickSort!0 lt!19214) lt!19219 lambda!10054))))

(declare-fun lt!19215 () Bool)

(assert (=> b!82856 (= lt!19215 e!44950)))

(declare-fun res!42529 () Bool)

(assert (=> b!82856 (=> (not res!42529) (not e!44950))))

(assert (=> b!82856 (= res!42529 (sort_preserves_forall!0 lt!19214 lambda!10054))))

(declare-fun lt!19218 () Bool)

(assert (=> b!82856 (= lt!19218 e!44949)))

(declare-fun res!42533 () Bool)

(assert (=> b!82856 (=> (not res!42533) (not e!44949))))

(assert (=> b!82856 (= res!42533 e!44952)))

(declare-fun res!42531 () Bool)

(assert (=> b!82856 (=> (not res!42531) (not e!44952))))

(assert (=> b!82856 (= res!42531 (filter_preserves_forall!0 (t!47889 less!5) lambda!10079 lambda!10054))))

(assert (=> b!82856 (= lt!19217 (filter!25 (t!47889 less!5) lambda!10081))))

(assert (=> b!82856 (= lt!19219 (Cons!629 (h!999 less!5) (filter!25 (t!47889 less!5) lambda!10080)))))

(assert (=> b!82856 (= lt!19214 (filter!25 (t!47889 less!5) lambda!10079))))

(declare-fun b!82857 () Bool)

(declare-fun ++!80 (List!672 List!672) List!672)

(assert (=> b!82857 (= e!44953 (append_preserves_forall!0 (++!80 (quickSort!0 lt!19214) lt!19219) (quickSort!0 lt!19217) lambda!10054))))

(declare-fun d!56397 () Bool)

(assert (=> d!56397 (forall!27 (quickSort!0 less!5) lambda!10054)))

(declare-fun lt!19216 () Bool)

(assert (=> d!56397 (= lt!19216 e!44951)))

(declare-fun res!42530 () Bool)

(assert (=> d!56397 (=> res!42530 e!44951)))

(assert (=> d!56397 (= res!42530 (or (is-Nil!631 less!5) (and (is-Cons!629 less!5) (is-Nil!631 (t!47889 less!5)))))))

(assert (=> d!56397 (forall!27 less!5 lambda!10054)))

(assert (=> d!56397 (= (sort_preserves_forall!0 less!5 lambda!10054) true)))

(assert (= (and d!56397 (not res!42530)) b!82856))

(assert (= (and b!82856 res!42531) b!82853))

(assert (= (and b!82856 res!42533) b!82855))

(assert (= (and b!82856 res!42529) b!82854))

(assert (= (and b!82856 res!42532) b!82857))

(assert (=> d!56397 m!78444))

(assert (=> d!56397 m!78444))

(declare-fun m!78492 () Bool)

(assert (=> d!56397 m!78492))

(declare-fun m!78494 () Bool)

(assert (=> d!56397 m!78494))

(declare-fun m!78496 () Bool)

(assert (=> b!82853 m!78496))

(declare-fun m!78498 () Bool)

(assert (=> b!82857 m!78498))

(assert (=> b!82857 m!78498))

(declare-fun m!78500 () Bool)

(assert (=> b!82857 m!78500))

(declare-fun m!78502 () Bool)

(assert (=> b!82857 m!78502))

(assert (=> b!82857 m!78500))

(assert (=> b!82857 m!78502))

(declare-fun m!78504 () Bool)

(assert (=> b!82857 m!78504))

(declare-fun m!78506 () Bool)

(assert (=> b!82854 m!78506))

(declare-fun m!78508 () Bool)

(assert (=> b!82855 m!78508))

(declare-fun m!78510 () Bool)

(assert (=> b!82856 m!78510))

(assert (=> b!82856 m!78498))

(assert (=> b!82856 m!78498))

(declare-fun m!78512 () Bool)

(assert (=> b!82856 m!78512))

(declare-fun m!78514 () Bool)

(assert (=> b!82856 m!78514))

(declare-fun m!78516 () Bool)

(assert (=> b!82856 m!78516))

(declare-fun m!78518 () Bool)

(assert (=> b!82856 m!78518))

(declare-fun m!78520 () Bool)

(assert (=> b!82856 m!78520))

(assert (=> b!82806 d!56397))

(declare-fun d!56399 () Bool)

(declare-fun e!44962 () Bool)

(assert (=> d!56399 e!44962))

(declare-fun c!20798 () Bool)

(assert (=> d!56399 (= c!20798 (is-Cons!629 (quickSort!0 less!5)))))

(assert (=> d!56399 (= (forall_last!0 (quickSort!0 less!5) lambda!10051) true)))

(declare-fun b!82870 () Bool)

(declare-fun e!44961 () Bool)

(assert (=> b!82870 (= e!44962 e!44961)))

(declare-fun res!42543 () Bool)

(assert (=> b!82870 (=> res!42543 e!44961)))

(assert (=> b!82870 (= res!42543 (not (forall!27 (quickSort!0 less!5) lambda!10051)))))

(declare-fun b!82871 () Bool)

(declare-fun e!44960 () Bool)

(declare-fun last!22 (List!672) Int)

(assert (=> b!82871 (= e!44960 (dynLambda!991 lambda!10051 (last!22 (quickSort!0 less!5))))))

(declare-fun b!82872 () Bool)

(declare-fun res!42544 () Bool)

(assert (=> b!82872 (=> res!42544 e!44961)))

(declare-fun isEmpty!682 (List!672) Bool)

(assert (=> b!82872 (= res!42544 (isEmpty!682 (quickSort!0 less!5)))))

(declare-fun b!82873 () Bool)

(assert (=> b!82873 (= e!44962 e!44960)))

(declare-fun res!42545 () Bool)

(assert (=> b!82873 (=> res!42545 e!44960)))

(assert (=> b!82873 (= res!42545 (not (forall!27 (quickSort!0 less!5) lambda!10051)))))

(declare-fun lt!19222 () Bool)

(assert (=> b!82873 (= lt!19222 (forall_last!0 (t!47889 (quickSort!0 less!5)) lambda!10051))))

(declare-fun b!82874 () Bool)

(assert (=> b!82874 (= e!44961 (dynLambda!991 lambda!10051 (last!22 (quickSort!0 less!5))))))

(declare-fun b!82875 () Bool)

(declare-fun res!42542 () Bool)

(assert (=> b!82875 (=> res!42542 e!44960)))

(assert (=> b!82875 (= res!42542 (isEmpty!682 (quickSort!0 less!5)))))

(assert (= (and b!82873 (not res!42545)) b!82875))

(assert (= (and b!82875 (not res!42542)) b!82871))

(assert (= (and b!82870 (not res!42543)) b!82872))

(assert (= (and b!82872 (not res!42544)) b!82874))

(assert (= (and d!56399 c!20798) b!82873))

(assert (= (and d!56399 (not c!20798)) b!82870))

(declare-fun b_lambda!16393 () Bool)

(assert (=> (not b_lambda!16393) (not b!82871)))

(declare-fun b_lambda!16395 () Bool)

(assert (=> (not b_lambda!16395) (not b!82874)))

(assert (=> b!82870 m!78444))

(declare-fun m!78522 () Bool)

(assert (=> b!82870 m!78522))

(assert (=> b!82872 m!78444))

(declare-fun m!78524 () Bool)

(assert (=> b!82872 m!78524))

(assert (=> b!82874 m!78444))

(declare-fun m!78526 () Bool)

(assert (=> b!82874 m!78526))

(assert (=> b!82874 m!78526))

(declare-fun m!78528 () Bool)

(assert (=> b!82874 m!78528))

(assert (=> b!82875 m!78444))

(assert (=> b!82875 m!78524))

(assert (=> b!82873 m!78444))

(assert (=> b!82873 m!78522))

(declare-fun m!78530 () Bool)

(assert (=> b!82873 m!78530))

(assert (=> b!82871 m!78444))

(assert (=> b!82871 m!78526))

(assert (=> b!82871 m!78526))

(assert (=> b!82871 m!78528))

(assert (=> b!82809 d!56399))

(declare-fun bs!40141 () Bool)

(declare-fun b!82887 () Bool)

(assert (= bs!40141 (and b!82887 b!82819)))

(declare-fun lambda!10088 () Int)

(assert (=> bs!40141 (not (= lambda!10088 lambda!10063))))

(declare-fun bs!40142 () Bool)

(assert (= bs!40142 (and b!82887 b!82806)))

(assert (=> bs!40142 (not (= lambda!10088 lambda!10054))))

(declare-fun bs!40143 () Bool)

(assert (= bs!40143 (and b!82887 b!82856)))

(assert (=> bs!40143 (not (= lambda!10088 lambda!10081))))

(assert (=> bs!40143 (not (= lambda!10088 lambda!10080))))

(assert (=> bs!40143 (= lambda!10088 lambda!10079)))

(declare-fun bs!40144 () Bool)

(assert (= bs!40144 (and b!82887 b!82803)))

(assert (=> bs!40144 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10088 lambda!10051))))

(declare-fun bs!40145 () Bool)

(assert (= bs!40145 (and b!82887 b!82801)))

(assert (=> bs!40145 (not (= lambda!10088 lambda!10053))))

(declare-fun bs!40146 () Bool)

(assert (= bs!40146 (and b!82887 d!56391)))

(assert (=> bs!40146 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10088 lambda!10061))))

(declare-fun bs!40147 () Bool)

(assert (= bs!40147 (and b!82887 b!82818)))

(assert (=> bs!40147 (not (= lambda!10088 lambda!10062))))

(declare-fun bs!40148 () Bool)

(assert (= bs!40148 (and b!82887 b!82805)))

(assert (=> bs!40148 (not (= lambda!10088 lambda!10052))))

(declare-fun bs!40149 () Bool)

(assert (= bs!40149 (and b!82887 d!56393)))

(assert (=> bs!40149 (not (= lambda!10088 lambda!10066))))

(assert (=> b!82887 true))

(declare-fun lambda!10089 () Int)

(assert (=> bs!40141 (not (= lambda!10089 lambda!10063))))

(assert (=> bs!40142 (not (= lambda!10089 lambda!10054))))

(assert (=> bs!40143 (not (= lambda!10089 lambda!10081))))

(assert (=> bs!40143 (= lambda!10089 lambda!10080)))

(assert (=> bs!40143 (not (= lambda!10089 lambda!10079))))

(assert (=> bs!40144 (not (= lambda!10089 lambda!10051))))

(assert (=> bs!40145 (not (= lambda!10089 lambda!10053))))

(assert (=> bs!40146 (not (= lambda!10089 lambda!10061))))

(assert (=> b!82887 (not (= lambda!10089 lambda!10088))))

(assert (=> bs!40147 (not (= lambda!10089 lambda!10062))))

(assert (=> bs!40148 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10089 lambda!10052))))

(assert (=> bs!40149 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10089 lambda!10066))))

(assert (=> b!82887 true))

(declare-fun lambda!10090 () Int)

(assert (=> bs!40141 (not (= lambda!10090 lambda!10063))))

(assert (=> bs!40142 (not (= lambda!10090 lambda!10054))))

(assert (=> bs!40143 (= lambda!10090 lambda!10081)))

(assert (=> bs!40143 (not (= lambda!10090 lambda!10080))))

(assert (=> bs!40143 (not (= lambda!10090 lambda!10079))))

(assert (=> bs!40144 (not (= lambda!10090 lambda!10051))))

(assert (=> bs!40145 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10090 lambda!10053))))

(assert (=> bs!40146 (not (= lambda!10090 lambda!10061))))

(assert (=> b!82887 (not (= lambda!10090 lambda!10089))))

(assert (=> b!82887 (not (= lambda!10090 lambda!10088))))

(assert (=> bs!40147 (not (= lambda!10090 lambda!10062))))

(assert (=> bs!40148 (not (= lambda!10090 lambda!10052))))

(assert (=> bs!40149 (not (= lambda!10090 lambda!10066))))

(assert (=> b!82887 true))

(declare-fun d!56401 () Bool)

(declare-fun c!20803 () Bool)

(assert (=> d!56401 (= c!20803 (is-Nil!631 less!5))))

(declare-fun e!44967 () List!672)

(assert (=> d!56401 (= (quickSort!0 less!5) e!44967)))

(declare-fun b!82886 () Bool)

(declare-fun e!44968 () List!672)

(assert (=> b!82886 (= e!44968 less!5)))

(assert (=> b!82887 (= e!44968 (++!80 (++!80 (quickSort!0 (filter!25 (t!47889 less!5) lambda!10088)) (Cons!629 (h!999 less!5) (filter!25 (t!47889 less!5) lambda!10089))) (quickSort!0 (filter!25 (t!47889 less!5) lambda!10090))))))

(declare-fun b!82885 () Bool)

(assert (=> b!82885 (= e!44967 e!44968)))

(declare-fun c!20804 () Bool)

(assert (=> b!82885 (= c!20804 (and (is-Cons!629 less!5) (is-Nil!631 (t!47889 less!5))))))

(declare-fun b!82884 () Bool)

(assert (=> b!82884 (= e!44967 Nil!631)))

(assert (= (and b!82885 c!20804) b!82886))

(assert (= (and b!82885 (not c!20804)) b!82887))

(assert (= (and d!56401 c!20803) b!82884))

(assert (= (and d!56401 (not c!20803)) b!82885))

(declare-fun m!78532 () Bool)

(assert (=> b!82887 m!78532))

(declare-fun m!78534 () Bool)

(assert (=> b!82887 m!78534))

(declare-fun m!78536 () Bool)

(assert (=> b!82887 m!78536))

(declare-fun m!78538 () Bool)

(assert (=> b!82887 m!78538))

(declare-fun m!78540 () Bool)

(assert (=> b!82887 m!78540))

(assert (=> b!82887 m!78534))

(assert (=> b!82887 m!78538))

(assert (=> b!82887 m!78532))

(declare-fun m!78542 () Bool)

(assert (=> b!82887 m!78542))

(declare-fun m!78544 () Bool)

(assert (=> b!82887 m!78544))

(assert (=> b!82887 m!78542))

(assert (=> b!82887 m!78536))

(assert (=> b!82809 d!56401))

(declare-fun b!82888 () Bool)

(declare-fun e!44971 () Bool)

(declare-fun lt!19224 () List!672)

(assert (=> b!82888 (= e!44971 (forall!27 lt!19224 lambda!10051))))

(declare-fun d!56403 () Bool)

(assert (=> d!56403 e!44971))

(declare-fun res!42546 () Bool)

(assert (=> d!56403 (=> (not res!42546) (not e!44971))))

(assert (=> d!56403 (= res!42546 (<= (size!660 lt!19224) (size!660 (t!47889 ls!96))))))

(declare-fun e!44969 () List!672)

(assert (=> d!56403 (= lt!19224 e!44969)))

(declare-fun c!20805 () Bool)

(assert (=> d!56403 (= c!20805 (is-Nil!631 (t!47889 ls!96)))))

(assert (=> d!56403 (= (filter!25 (t!47889 ls!96) lambda!10051) lt!19224)))

(declare-fun b!82889 () Bool)

(assert (=> b!82889 (= e!44969 Nil!631)))

(declare-fun b!82890 () Bool)

(declare-fun e!44970 () Bool)

(assert (=> b!82890 (= e!44970 (dynLambda!991 lambda!10051 (h!999 (t!47889 ls!96))))))

(declare-fun b!82891 () Bool)

(declare-fun res!42547 () Bool)

(assert (=> b!82891 (=> (not res!42547) (not e!44971))))

(assert (=> b!82891 (= res!42547 (subset (content!131 lt!19224) (content!131 (t!47889 ls!96))))))

(declare-fun b!82892 () Bool)

(declare-fun e!44972 () List!672)

(declare-fun lt!19223 () List!672)

(assert (=> b!82892 (= e!44972 (Cons!629 (h!999 (t!47889 ls!96)) lt!19223))))

(declare-fun b!82893 () Bool)

(assert (=> b!82893 (= e!44972 lt!19223)))

(declare-fun b!82894 () Bool)

(assert (=> b!82894 (= e!44969 e!44972)))

(declare-fun c!20806 () Bool)

(assert (=> b!82894 (= c!20806 e!44970)))

(declare-fun res!42548 () Bool)

(assert (=> b!82894 (=> (not res!42548) (not e!44970))))

(assert (=> b!82894 (= res!42548 (is-Cons!629 (t!47889 ls!96)))))

(assert (=> b!82894 (= lt!19223 (filter!25 (t!47889 (t!47889 ls!96)) lambda!10051))))

(assert (= (and b!82894 res!42548) b!82890))

(assert (= (and b!82894 c!20806) b!82892))

(assert (= (and b!82894 (not c!20806)) b!82893))

(assert (= (and d!56403 c!20805) b!82889))

(assert (= (and d!56403 (not c!20805)) b!82894))

(assert (= (and d!56403 res!42546) b!82891))

(assert (= (and b!82891 res!42547) b!82888))

(declare-fun b_lambda!16397 () Bool)

(assert (=> (not b_lambda!16397) (not b!82890)))

(declare-fun m!78546 () Bool)

(assert (=> b!82888 m!78546))

(declare-fun m!78548 () Bool)

(assert (=> b!82890 m!78548))

(declare-fun m!78550 () Bool)

(assert (=> b!82891 m!78550))

(assert (=> b!82891 m!78484))

(declare-fun m!78552 () Bool)

(assert (=> d!56403 m!78552))

(assert (=> d!56403 m!78488))

(declare-fun m!78554 () Bool)

(assert (=> b!82894 m!78554))

(assert (=> b!82803 d!56403))

(declare-fun bs!40150 () Bool)

(declare-fun b!82899 () Bool)

(assert (= bs!40150 (and b!82899 b!82819)))

(declare-fun lambda!10097 () Int)

(assert (=> bs!40150 (not (= lambda!10097 lambda!10063))))

(declare-fun bs!40151 () Bool)

(assert (= bs!40151 (and b!82899 b!82806)))

(assert (=> bs!40151 (not (= lambda!10097 lambda!10054))))

(declare-fun bs!40152 () Bool)

(assert (= bs!40152 (and b!82899 b!82856)))

(assert (=> bs!40152 (not (= lambda!10097 lambda!10081))))

(assert (=> bs!40152 (not (= lambda!10097 lambda!10080))))

(assert (=> bs!40152 (= lambda!10097 lambda!10079)))

(declare-fun bs!40153 () Bool)

(assert (= bs!40153 (and b!82899 b!82803)))

(assert (=> bs!40153 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10097 lambda!10051))))

(declare-fun bs!40154 () Bool)

(assert (= bs!40154 (and b!82899 b!82801)))

(assert (=> bs!40154 (not (= lambda!10097 lambda!10053))))

(declare-fun bs!40155 () Bool)

(assert (= bs!40155 (and b!82899 d!56391)))

(assert (=> bs!40155 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10097 lambda!10061))))

(declare-fun bs!40156 () Bool)

(assert (= bs!40156 (and b!82899 b!82887)))

(assert (=> bs!40156 (not (= lambda!10097 lambda!10090))))

(assert (=> bs!40156 (not (= lambda!10097 lambda!10089))))

(assert (=> bs!40156 (= lambda!10097 lambda!10088)))

(declare-fun bs!40157 () Bool)

(assert (= bs!40157 (and b!82899 b!82818)))

(assert (=> bs!40157 (not (= lambda!10097 lambda!10062))))

(declare-fun bs!40158 () Bool)

(assert (= bs!40158 (and b!82899 b!82805)))

(assert (=> bs!40158 (not (= lambda!10097 lambda!10052))))

(declare-fun bs!40159 () Bool)

(assert (= bs!40159 (and b!82899 d!56393)))

(assert (=> bs!40159 (not (= lambda!10097 lambda!10066))))

(assert (=> b!82899 true))

(declare-fun lambda!10098 () Int)

(assert (=> bs!40150 (not (= lambda!10098 lambda!10063))))

(assert (=> bs!40151 (not (= lambda!10098 lambda!10054))))

(assert (=> bs!40152 (not (= lambda!10098 lambda!10081))))

(assert (=> bs!40152 (= lambda!10098 lambda!10080)))

(assert (=> bs!40152 (not (= lambda!10098 lambda!10079))))

(assert (=> bs!40153 (not (= lambda!10098 lambda!10051))))

(assert (=> bs!40154 (not (= lambda!10098 lambda!10053))))

(assert (=> bs!40155 (not (= lambda!10098 lambda!10061))))

(assert (=> bs!40156 (not (= lambda!10098 lambda!10090))))

(assert (=> bs!40156 (= lambda!10098 lambda!10089)))

(assert (=> bs!40156 (not (= lambda!10098 lambda!10088))))

(assert (=> bs!40157 (not (= lambda!10098 lambda!10062))))

(assert (=> bs!40158 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10098 lambda!10052))))

(assert (=> bs!40159 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10098 lambda!10066))))

(assert (=> b!82899 (not (= lambda!10098 lambda!10097))))

(assert (=> b!82899 true))

(declare-fun lambda!10099 () Int)

(assert (=> bs!40150 (not (= lambda!10099 lambda!10063))))

(assert (=> bs!40151 (not (= lambda!10099 lambda!10054))))

(assert (=> bs!40152 (= lambda!10099 lambda!10081)))

(assert (=> bs!40152 (not (= lambda!10099 lambda!10080))))

(assert (=> bs!40152 (not (= lambda!10099 lambda!10079))))

(assert (=> bs!40153 (not (= lambda!10099 lambda!10051))))

(assert (=> bs!40154 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10099 lambda!10053))))

(assert (=> bs!40155 (not (= lambda!10099 lambda!10061))))

(assert (=> bs!40156 (= lambda!10099 lambda!10090)))

(assert (=> bs!40156 (not (= lambda!10099 lambda!10089))))

(assert (=> bs!40156 (not (= lambda!10099 lambda!10088))))

(assert (=> bs!40157 (not (= lambda!10099 lambda!10062))))

(assert (=> bs!40158 (not (= lambda!10099 lambda!10052))))

(assert (=> bs!40159 (not (= lambda!10099 lambda!10066))))

(assert (=> b!82899 (not (= lambda!10099 lambda!10098))))

(assert (=> b!82899 (not (= lambda!10099 lambda!10097))))

(assert (=> b!82899 true))

(declare-fun d!56405 () Bool)

(assert (=> d!56405 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!19235 () Bool)

(declare-fun e!44978 () Bool)

(assert (=> d!56405 (= lt!19235 e!44978)))

(declare-fun res!42555 () Bool)

(assert (=> d!56405 (=> res!42555 e!44978)))

(assert (=> d!56405 (= res!42555 (or (is-Nil!631 less!5) (and (is-Cons!629 less!5) (is-Nil!631 (t!47889 less!5)))))))

(assert (=> d!56405 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!44977 () Bool)

(assert (=> b!82899 (= e!44978 e!44977)))

(declare-fun res!42556 () Bool)

(assert (=> b!82899 (=> (not res!42556) (not e!44977))))

(declare-fun lt!19234 () List!672)

(declare-fun lt!19233 () List!672)

(assert (=> b!82899 (= res!42556 (append_sorted!0 (quickSort!0 lt!19234) lt!19233))))

(declare-fun lt!19236 () List!672)

(assert (=> b!82899 (= lt!19236 (filter!25 (t!47889 less!5) lambda!10099))))

(assert (=> b!82899 (= lt!19233 (Cons!629 (h!999 less!5) (filter!25 (t!47889 less!5) lambda!10098)))))

(assert (=> b!82899 (= lt!19234 (filter!25 (t!47889 less!5) lambda!10097))))

(declare-fun b!82900 () Bool)

(assert (=> b!82900 (= e!44977 (append_sorted!0 (++!80 (quickSort!0 lt!19234) lt!19233) (quickSort!0 lt!19236)))))

(assert (= (and d!56405 (not res!42555)) b!82899))

(assert (= (and b!82899 res!42556) b!82900))

(assert (=> d!56405 m!78444))

(assert (=> d!56405 m!78444))

(declare-fun m!78556 () Bool)

(assert (=> d!56405 m!78556))

(declare-fun m!78558 () Bool)

(assert (=> b!82899 m!78558))

(declare-fun m!78560 () Bool)

(assert (=> b!82899 m!78560))

(declare-fun m!78562 () Bool)

(assert (=> b!82899 m!78562))

(declare-fun m!78564 () Bool)

(assert (=> b!82899 m!78564))

(assert (=> b!82899 m!78564))

(declare-fun m!78566 () Bool)

(assert (=> b!82899 m!78566))

(assert (=> b!82900 m!78564))

(assert (=> b!82900 m!78564))

(declare-fun m!78568 () Bool)

(assert (=> b!82900 m!78568))

(declare-fun m!78570 () Bool)

(assert (=> b!82900 m!78570))

(assert (=> b!82900 m!78568))

(assert (=> b!82900 m!78570))

(declare-fun m!78572 () Bool)

(assert (=> b!82900 m!78572))

(assert (=> b!82802 d!56405))

(declare-fun b!82913 () Bool)

(declare-fun res!42566 () Bool)

(declare-fun e!44987 () Bool)

(assert (=> b!82913 (=> res!42566 e!44987)))

(assert (=> b!82913 (= res!42566 (isEmpty!682 equal!10))))

(declare-fun b!82914 () Bool)

(declare-fun e!44985 () Bool)

(assert (=> b!82914 (= e!44985 (isSorted!1 (++!80 (quickSort!0 less!5) equal!10)))))

(declare-fun b!82915 () Bool)

(assert (=> b!82915 (= e!44985 (isSorted!1 (++!80 (quickSort!0 less!5) equal!10)))))

(declare-fun lt!19239 () Bool)

(assert (=> b!82915 (= lt!19239 (append_sorted!0 (t!47889 (quickSort!0 less!5)) equal!10))))

(declare-fun b!82916 () Bool)

(declare-fun head!1058 (List!672) Int)

(assert (=> b!82916 (= e!44987 (<= (last!22 (quickSort!0 less!5)) (head!1058 equal!10)))))

(declare-fun b!82917 () Bool)

(declare-fun res!42568 () Bool)

(declare-fun e!44986 () Bool)

(assert (=> b!82917 (=> (not res!42568) (not e!44986))))

(assert (=> b!82917 (= res!42568 (isSorted!1 equal!10))))

(declare-fun d!56407 () Bool)

(assert (=> d!56407 e!44985))

(declare-fun c!20809 () Bool)

(assert (=> d!56407 (= c!20809 (is-Cons!629 (quickSort!0 less!5)))))

(assert (=> d!56407 e!44986))

(declare-fun res!42565 () Bool)

(assert (=> d!56407 (=> (not res!42565) (not e!44986))))

(assert (=> d!56407 (= res!42565 (isSorted!1 (quickSort!0 less!5)))))

(assert (=> d!56407 (= (append_sorted!0 (quickSort!0 less!5) equal!10) true)))

(declare-fun b!82918 () Bool)

(assert (=> b!82918 (= e!44986 e!44987)))

(declare-fun res!42567 () Bool)

(assert (=> b!82918 (=> res!42567 e!44987)))

(assert (=> b!82918 (= res!42567 (isEmpty!682 (quickSort!0 less!5)))))

(assert (= (and d!56407 res!42565) b!82917))

(assert (= (and b!82917 res!42568) b!82918))

(assert (= (and b!82918 (not res!42567)) b!82913))

(assert (= (and b!82913 (not res!42566)) b!82916))

(assert (= (and d!56407 c!20809) b!82915))

(assert (= (and d!56407 (not c!20809)) b!82914))

(assert (=> b!82916 m!78444))

(assert (=> b!82916 m!78526))

(declare-fun m!78574 () Bool)

(assert (=> b!82916 m!78574))

(declare-fun m!78576 () Bool)

(assert (=> b!82917 m!78576))

(assert (=> b!82915 m!78444))

(declare-fun m!78578 () Bool)

(assert (=> b!82915 m!78578))

(assert (=> b!82915 m!78578))

(declare-fun m!78580 () Bool)

(assert (=> b!82915 m!78580))

(declare-fun m!78582 () Bool)

(assert (=> b!82915 m!78582))

(declare-fun m!78584 () Bool)

(assert (=> b!82913 m!78584))

(assert (=> b!82914 m!78444))

(assert (=> b!82914 m!78578))

(assert (=> b!82914 m!78578))

(assert (=> b!82914 m!78580))

(assert (=> b!82918 m!78444))

(assert (=> b!82918 m!78524))

(assert (=> d!56407 m!78444))

(assert (=> d!56407 m!78556))

(assert (=> b!82811 d!56407))

(assert (=> b!82811 d!56401))

(declare-fun bs!40160 () Bool)

(declare-fun d!56409 () Bool)

(assert (= bs!40160 (and d!56409 b!82819)))

(declare-fun lambda!10106 () Int)

(assert (=> bs!40160 (not (= lambda!10106 lambda!10063))))

(declare-fun bs!40161 () Bool)

(assert (= bs!40161 (and d!56409 b!82806)))

(assert (=> bs!40161 (not (= lambda!10106 lambda!10054))))

(declare-fun bs!40162 () Bool)

(assert (= bs!40162 (and d!56409 b!82856)))

(assert (=> bs!40162 (not (= lambda!10106 lambda!10081))))

(assert (=> bs!40162 (= (= (h!999 ls!96) (h!999 less!5)) (= lambda!10106 lambda!10080))))

(assert (=> bs!40162 (not (= lambda!10106 lambda!10079))))

(declare-fun bs!40163 () Bool)

(assert (= bs!40163 (and d!56409 b!82803)))

(assert (=> bs!40163 (not (= lambda!10106 lambda!10051))))

(declare-fun bs!40164 () Bool)

(assert (= bs!40164 (and d!56409 b!82801)))

(assert (=> bs!40164 (not (= lambda!10106 lambda!10053))))

(declare-fun bs!40165 () Bool)

(assert (= bs!40165 (and d!56409 d!56391)))

(assert (=> bs!40165 (not (= lambda!10106 lambda!10061))))

(declare-fun bs!40166 () Bool)

(assert (= bs!40166 (and d!56409 b!82887)))

(assert (=> bs!40166 (not (= lambda!10106 lambda!10090))))

(assert (=> bs!40166 (= (= (h!999 ls!96) (h!999 less!5)) (= lambda!10106 lambda!10089))))

(assert (=> bs!40166 (not (= lambda!10106 lambda!10088))))

(declare-fun bs!40167 () Bool)

(assert (= bs!40167 (and d!56409 b!82818)))

(assert (=> bs!40167 (not (= lambda!10106 lambda!10062))))

(declare-fun bs!40168 () Bool)

(assert (= bs!40168 (and d!56409 b!82805)))

(assert (=> bs!40168 (= lambda!10106 lambda!10052)))

(declare-fun bs!40169 () Bool)

(assert (= bs!40169 (and d!56409 d!56393)))

(assert (=> bs!40169 (= lambda!10106 lambda!10066)))

(declare-fun bs!40170 () Bool)

(assert (= bs!40170 (and d!56409 b!82899)))

(assert (=> bs!40170 (not (= lambda!10106 lambda!10099))))

(assert (=> bs!40170 (= (= (h!999 ls!96) (h!999 less!5)) (= lambda!10106 lambda!10098))))

(assert (=> bs!40170 (not (= lambda!10106 lambda!10097))))

(assert (=> d!56409 true))

(declare-fun bs!40171 () Bool)

(declare-fun b!82923 () Bool)

(assert (= bs!40171 (and b!82923 b!82819)))

(declare-fun lambda!10107 () Int)

(assert (=> bs!40171 (= lambda!10107 lambda!10063)))

(declare-fun bs!40172 () Bool)

(assert (= bs!40172 (and b!82923 b!82806)))

(assert (=> bs!40172 (= lambda!10107 lambda!10054)))

(declare-fun bs!40173 () Bool)

(assert (= bs!40173 (and b!82923 b!82856)))

(assert (=> bs!40173 (not (= lambda!10107 lambda!10081))))

(assert (=> bs!40173 (not (= lambda!10107 lambda!10080))))

(assert (=> bs!40173 (not (= lambda!10107 lambda!10079))))

(declare-fun bs!40174 () Bool)

(assert (= bs!40174 (and b!82923 b!82803)))

(assert (=> bs!40174 (not (= lambda!10107 lambda!10051))))

(declare-fun bs!40175 () Bool)

(assert (= bs!40175 (and b!82923 b!82801)))

(assert (=> bs!40175 (not (= lambda!10107 lambda!10053))))

(declare-fun bs!40176 () Bool)

(assert (= bs!40176 (and b!82923 d!56391)))

(assert (=> bs!40176 (not (= lambda!10107 lambda!10061))))

(declare-fun bs!40177 () Bool)

(assert (= bs!40177 (and b!82923 b!82887)))

(assert (=> bs!40177 (not (= lambda!10107 lambda!10090))))

(assert (=> bs!40177 (not (= lambda!10107 lambda!10089))))

(assert (=> bs!40177 (not (= lambda!10107 lambda!10088))))

(declare-fun bs!40178 () Bool)

(assert (= bs!40178 (and b!82923 b!82818)))

(assert (=> bs!40178 (= lambda!10107 lambda!10062)))

(declare-fun bs!40179 () Bool)

(assert (= bs!40179 (and b!82923 b!82805)))

(assert (=> bs!40179 (not (= lambda!10107 lambda!10052))))

(declare-fun bs!40180 () Bool)

(assert (= bs!40180 (and b!82923 d!56409)))

(assert (=> bs!40180 (not (= lambda!10107 lambda!10106))))

(declare-fun bs!40181 () Bool)

(assert (= bs!40181 (and b!82923 d!56393)))

(assert (=> bs!40181 (not (= lambda!10107 lambda!10066))))

(declare-fun bs!40182 () Bool)

(assert (= bs!40182 (and b!82923 b!82899)))

(assert (=> bs!40182 (not (= lambda!10107 lambda!10099))))

(assert (=> bs!40182 (not (= lambda!10107 lambda!10098))))

(assert (=> bs!40182 (not (= lambda!10107 lambda!10097))))

(assert (=> b!82923 true))

(declare-fun bs!40183 () Bool)

(declare-fun b!82924 () Bool)

(assert (= bs!40183 (and b!82924 b!82819)))

(declare-fun lambda!10108 () Int)

(assert (=> bs!40183 (= lambda!10108 lambda!10063)))

(declare-fun bs!40184 () Bool)

(assert (= bs!40184 (and b!82924 b!82923)))

(assert (=> bs!40184 (= lambda!10108 lambda!10107)))

(declare-fun bs!40185 () Bool)

(assert (= bs!40185 (and b!82924 b!82806)))

(assert (=> bs!40185 (= lambda!10108 lambda!10054)))

(declare-fun bs!40186 () Bool)

(assert (= bs!40186 (and b!82924 b!82856)))

(assert (=> bs!40186 (not (= lambda!10108 lambda!10081))))

(assert (=> bs!40186 (not (= lambda!10108 lambda!10080))))

(assert (=> bs!40186 (not (= lambda!10108 lambda!10079))))

(declare-fun bs!40187 () Bool)

(assert (= bs!40187 (and b!82924 b!82803)))

(assert (=> bs!40187 (not (= lambda!10108 lambda!10051))))

(declare-fun bs!40188 () Bool)

(assert (= bs!40188 (and b!82924 b!82801)))

(assert (=> bs!40188 (not (= lambda!10108 lambda!10053))))

(declare-fun bs!40189 () Bool)

(assert (= bs!40189 (and b!82924 d!56391)))

(assert (=> bs!40189 (not (= lambda!10108 lambda!10061))))

(declare-fun bs!40190 () Bool)

(assert (= bs!40190 (and b!82924 b!82887)))

(assert (=> bs!40190 (not (= lambda!10108 lambda!10090))))

(assert (=> bs!40190 (not (= lambda!10108 lambda!10089))))

(assert (=> bs!40190 (not (= lambda!10108 lambda!10088))))

(declare-fun bs!40191 () Bool)

(assert (= bs!40191 (and b!82924 b!82818)))

(assert (=> bs!40191 (= lambda!10108 lambda!10062)))

(declare-fun bs!40192 () Bool)

(assert (= bs!40192 (and b!82924 b!82805)))

(assert (=> bs!40192 (not (= lambda!10108 lambda!10052))))

(declare-fun bs!40193 () Bool)

(assert (= bs!40193 (and b!82924 d!56409)))

(assert (=> bs!40193 (not (= lambda!10108 lambda!10106))))

(declare-fun bs!40194 () Bool)

(assert (= bs!40194 (and b!82924 d!56393)))

(assert (=> bs!40194 (not (= lambda!10108 lambda!10066))))

(declare-fun bs!40195 () Bool)

(assert (= bs!40195 (and b!82924 b!82899)))

(assert (=> bs!40195 (not (= lambda!10108 lambda!10099))))

(assert (=> bs!40195 (not (= lambda!10108 lambda!10098))))

(assert (=> bs!40195 (not (= lambda!10108 lambda!10097))))

(assert (=> b!82924 true))

(declare-fun e!44990 () Bool)

(assert (=> d!56409 e!44990))

(declare-fun c!20812 () Bool)

(assert (=> d!56409 (= c!20812 (is-Cons!629 equal!10))))

(assert (=> d!56409 (forall!27 equal!10 lambda!10106)))

(assert (=> d!56409 (= (forall_eq_implies_le!0 equal!10 (h!999 ls!96)) true)))

(assert (=> b!82923 (= e!44990 (forall!27 equal!10 lambda!10107))))

(declare-fun lt!19242 () Bool)

(assert (=> b!82923 (= lt!19242 (forall_eq_implies_le!0 (t!47889 equal!10) (h!999 ls!96)))))

(assert (=> b!82924 (= e!44990 (forall!27 equal!10 lambda!10108))))

(assert (= (and d!56409 c!20812) b!82923))

(assert (= (and d!56409 (not c!20812)) b!82924))

(declare-fun m!78586 () Bool)

(assert (=> d!56409 m!78586))

(declare-fun m!78588 () Bool)

(assert (=> b!82923 m!78588))

(declare-fun m!78590 () Bool)

(assert (=> b!82923 m!78590))

(declare-fun m!78592 () Bool)

(assert (=> b!82924 m!78592))

(assert (=> b!82808 d!56409))

(declare-fun bs!40196 () Bool)

(declare-fun b!82928 () Bool)

(assert (= bs!40196 (and b!82928 b!82819)))

(declare-fun lambda!10109 () Int)

(assert (=> bs!40196 (not (= lambda!10109 lambda!10063))))

(declare-fun bs!40197 () Bool)

(assert (= bs!40197 (and b!82928 b!82923)))

(assert (=> bs!40197 (not (= lambda!10109 lambda!10107))))

(declare-fun bs!40198 () Bool)

(assert (= bs!40198 (and b!82928 b!82806)))

(assert (=> bs!40198 (not (= lambda!10109 lambda!10054))))

(declare-fun bs!40199 () Bool)

(assert (= bs!40199 (and b!82928 b!82856)))

(assert (=> bs!40199 (not (= lambda!10109 lambda!10081))))

(assert (=> bs!40199 (not (= lambda!10109 lambda!10080))))

(assert (=> bs!40199 (= lambda!10109 lambda!10079)))

(declare-fun bs!40200 () Bool)

(assert (= bs!40200 (and b!82928 b!82803)))

(assert (=> bs!40200 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10109 lambda!10051))))

(declare-fun bs!40201 () Bool)

(assert (= bs!40201 (and b!82928 b!82801)))

(assert (=> bs!40201 (not (= lambda!10109 lambda!10053))))

(declare-fun bs!40202 () Bool)

(assert (= bs!40202 (and b!82928 d!56391)))

(assert (=> bs!40202 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10109 lambda!10061))))

(declare-fun bs!40203 () Bool)

(assert (= bs!40203 (and b!82928 b!82887)))

(assert (=> bs!40203 (not (= lambda!10109 lambda!10090))))

(assert (=> bs!40203 (not (= lambda!10109 lambda!10089))))

(assert (=> bs!40203 (= lambda!10109 lambda!10088)))

(declare-fun bs!40204 () Bool)

(assert (= bs!40204 (and b!82928 b!82924)))

(assert (=> bs!40204 (not (= lambda!10109 lambda!10108))))

(declare-fun bs!40205 () Bool)

(assert (= bs!40205 (and b!82928 b!82818)))

(assert (=> bs!40205 (not (= lambda!10109 lambda!10062))))

(declare-fun bs!40206 () Bool)

(assert (= bs!40206 (and b!82928 b!82805)))

(assert (=> bs!40206 (not (= lambda!10109 lambda!10052))))

(declare-fun bs!40207 () Bool)

(assert (= bs!40207 (and b!82928 d!56409)))

(assert (=> bs!40207 (not (= lambda!10109 lambda!10106))))

(declare-fun bs!40208 () Bool)

(assert (= bs!40208 (and b!82928 d!56393)))

(assert (=> bs!40208 (not (= lambda!10109 lambda!10066))))

(declare-fun bs!40209 () Bool)

(assert (= bs!40209 (and b!82928 b!82899)))

(assert (=> bs!40209 (not (= lambda!10109 lambda!10099))))

(assert (=> bs!40209 (not (= lambda!10109 lambda!10098))))

(assert (=> bs!40209 (= lambda!10109 lambda!10097)))

(assert (=> b!82928 true))

(declare-fun lambda!10110 () Int)

(assert (=> bs!40196 (not (= lambda!10110 lambda!10063))))

(assert (=> bs!40197 (not (= lambda!10110 lambda!10107))))

(assert (=> bs!40198 (not (= lambda!10110 lambda!10054))))

(assert (=> bs!40199 (not (= lambda!10110 lambda!10081))))

(assert (=> bs!40199 (= lambda!10110 lambda!10080)))

(assert (=> bs!40199 (not (= lambda!10110 lambda!10079))))

(assert (=> bs!40200 (not (= lambda!10110 lambda!10051))))

(assert (=> bs!40201 (not (= lambda!10110 lambda!10053))))

(assert (=> bs!40202 (not (= lambda!10110 lambda!10061))))

(assert (=> bs!40203 (not (= lambda!10110 lambda!10090))))

(assert (=> bs!40203 (= lambda!10110 lambda!10089)))

(assert (=> bs!40203 (not (= lambda!10110 lambda!10088))))

(assert (=> bs!40204 (not (= lambda!10110 lambda!10108))))

(assert (=> bs!40205 (not (= lambda!10110 lambda!10062))))

(assert (=> bs!40206 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10110 lambda!10052))))

(assert (=> bs!40207 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10110 lambda!10106))))

(assert (=> bs!40208 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10110 lambda!10066))))

(assert (=> bs!40209 (not (= lambda!10110 lambda!10099))))

(assert (=> bs!40209 (= lambda!10110 lambda!10098)))

(assert (=> bs!40209 (not (= lambda!10110 lambda!10097))))

(assert (=> b!82928 (not (= lambda!10110 lambda!10109))))

(assert (=> b!82928 true))

(declare-fun lambda!10111 () Int)

(assert (=> bs!40196 (not (= lambda!10111 lambda!10063))))

(assert (=> bs!40197 (not (= lambda!10111 lambda!10107))))

(assert (=> bs!40198 (not (= lambda!10111 lambda!10054))))

(assert (=> bs!40199 (= lambda!10111 lambda!10081)))

(assert (=> bs!40199 (not (= lambda!10111 lambda!10080))))

(assert (=> bs!40199 (not (= lambda!10111 lambda!10079))))

(assert (=> bs!40200 (not (= lambda!10111 lambda!10051))))

(assert (=> bs!40201 (= (= (h!999 less!5) (h!999 ls!96)) (= lambda!10111 lambda!10053))))

(assert (=> bs!40202 (not (= lambda!10111 lambda!10061))))

(assert (=> bs!40203 (= lambda!10111 lambda!10090)))

(assert (=> bs!40203 (not (= lambda!10111 lambda!10089))))

(assert (=> bs!40203 (not (= lambda!10111 lambda!10088))))

(assert (=> bs!40204 (not (= lambda!10111 lambda!10108))))

(assert (=> bs!40205 (not (= lambda!10111 lambda!10062))))

(assert (=> bs!40206 (not (= lambda!10111 lambda!10052))))

(assert (=> bs!40207 (not (= lambda!10111 lambda!10106))))

(assert (=> bs!40208 (not (= lambda!10111 lambda!10066))))

(assert (=> bs!40209 (= lambda!10111 lambda!10099)))

(assert (=> bs!40209 (not (= lambda!10111 lambda!10098))))

(assert (=> bs!40209 (not (= lambda!10111 lambda!10097))))

(assert (=> b!82928 (not (= lambda!10111 lambda!10110))))

(assert (=> b!82928 (not (= lambda!10111 lambda!10109))))

(assert (=> b!82928 true))

(declare-fun b!82925 () Bool)

(declare-fun e!44994 () Bool)

(assert (=> b!82925 (= e!44994 (filter_preserves_forall!0 (t!47889 less!5) lambda!10110 lambda!10051))))

(declare-fun b!82926 () Bool)

(declare-fun e!44992 () Bool)

(declare-fun lt!19246 () List!672)

(assert (=> b!82926 (= e!44992 (sort_preserves_forall!0 lt!19246 lambda!10051))))

(declare-fun b!82927 () Bool)

(declare-fun e!44991 () Bool)

(assert (=> b!82927 (= e!44991 (filter_preserves_forall!0 (t!47889 less!5) lambda!10111 lambda!10051))))

(declare-fun e!44993 () Bool)

(declare-fun e!44995 () Bool)

(assert (=> b!82928 (= e!44993 e!44995)))

(declare-fun res!42572 () Bool)

(assert (=> b!82928 (=> (not res!42572) (not e!44995))))

(declare-fun lt!19243 () List!672)

(declare-fun lt!19248 () List!672)

(assert (=> b!82928 (= res!42572 (append_preserves_forall!0 (quickSort!0 lt!19243) lt!19248 lambda!10051))))

(declare-fun lt!19244 () Bool)

(assert (=> b!82928 (= lt!19244 e!44992)))

(declare-fun res!42569 () Bool)

(assert (=> b!82928 (=> (not res!42569) (not e!44992))))

(assert (=> b!82928 (= res!42569 (sort_preserves_forall!0 lt!19243 lambda!10051))))

(declare-fun lt!19247 () Bool)

(assert (=> b!82928 (= lt!19247 e!44991)))

(declare-fun res!42573 () Bool)

(assert (=> b!82928 (=> (not res!42573) (not e!44991))))

(assert (=> b!82928 (= res!42573 e!44994)))

(declare-fun res!42571 () Bool)

(assert (=> b!82928 (=> (not res!42571) (not e!44994))))

(assert (=> b!82928 (= res!42571 (filter_preserves_forall!0 (t!47889 less!5) lambda!10109 lambda!10051))))

(assert (=> b!82928 (= lt!19246 (filter!25 (t!47889 less!5) lambda!10111))))

(assert (=> b!82928 (= lt!19248 (Cons!629 (h!999 less!5) (filter!25 (t!47889 less!5) lambda!10110)))))

(assert (=> b!82928 (= lt!19243 (filter!25 (t!47889 less!5) lambda!10109))))

(declare-fun b!82929 () Bool)

(assert (=> b!82929 (= e!44995 (append_preserves_forall!0 (++!80 (quickSort!0 lt!19243) lt!19248) (quickSort!0 lt!19246) lambda!10051))))

(declare-fun d!56411 () Bool)

(assert (=> d!56411 (forall!27 (quickSort!0 less!5) lambda!10051)))

(declare-fun lt!19245 () Bool)

(assert (=> d!56411 (= lt!19245 e!44993)))

(declare-fun res!42570 () Bool)

(assert (=> d!56411 (=> res!42570 e!44993)))

(assert (=> d!56411 (= res!42570 (or (is-Nil!631 less!5) (and (is-Cons!629 less!5) (is-Nil!631 (t!47889 less!5)))))))

(assert (=> d!56411 (forall!27 less!5 lambda!10051)))

(assert (=> d!56411 (= (sort_preserves_forall!0 less!5 lambda!10051) true)))

(assert (= (and d!56411 (not res!42570)) b!82928))

(assert (= (and b!82928 res!42571) b!82925))

(assert (= (and b!82928 res!42573) b!82927))

(assert (= (and b!82928 res!42569) b!82926))

(assert (= (and b!82928 res!42572) b!82929))

(assert (=> d!56411 m!78444))

(assert (=> d!56411 m!78444))

(assert (=> d!56411 m!78522))

(declare-fun m!78594 () Bool)

(assert (=> d!56411 m!78594))

(declare-fun m!78596 () Bool)

(assert (=> b!82925 m!78596))

(declare-fun m!78598 () Bool)

(assert (=> b!82929 m!78598))

(assert (=> b!82929 m!78598))

(declare-fun m!78600 () Bool)

(assert (=> b!82929 m!78600))

(declare-fun m!78602 () Bool)

(assert (=> b!82929 m!78602))

(assert (=> b!82929 m!78600))

(assert (=> b!82929 m!78602))

(declare-fun m!78604 () Bool)

(assert (=> b!82929 m!78604))

(declare-fun m!78606 () Bool)

(assert (=> b!82926 m!78606))

(declare-fun m!78608 () Bool)

(assert (=> b!82927 m!78608))

(declare-fun m!78610 () Bool)

(assert (=> b!82928 m!78610))

(assert (=> b!82928 m!78598))

(assert (=> b!82928 m!78598))

(declare-fun m!78612 () Bool)

(assert (=> b!82928 m!78612))

(declare-fun m!78614 () Bool)

(assert (=> b!82928 m!78614))

(declare-fun m!78616 () Bool)

(assert (=> b!82928 m!78616))

(declare-fun m!78618 () Bool)

(assert (=> b!82928 m!78618))

(declare-fun m!78620 () Bool)

(assert (=> b!82928 m!78620))

(assert (=> b!82810 d!56411))

(declare-fun b!82930 () Bool)

(declare-fun e!44998 () Bool)

(declare-fun lt!19250 () List!672)

(assert (=> b!82930 (= e!44998 (forall!27 lt!19250 lambda!10052))))

(declare-fun d!56413 () Bool)

(assert (=> d!56413 e!44998))

(declare-fun res!42574 () Bool)

(assert (=> d!56413 (=> (not res!42574) (not e!44998))))

(assert (=> d!56413 (= res!42574 (<= (size!660 lt!19250) (size!660 (t!47889 ls!96))))))

(declare-fun e!44996 () List!672)

(assert (=> d!56413 (= lt!19250 e!44996)))

(declare-fun c!20813 () Bool)

(assert (=> d!56413 (= c!20813 (is-Nil!631 (t!47889 ls!96)))))

(assert (=> d!56413 (= (filter!25 (t!47889 ls!96) lambda!10052) lt!19250)))

(declare-fun b!82931 () Bool)

(assert (=> b!82931 (= e!44996 Nil!631)))

(declare-fun b!82932 () Bool)

(declare-fun e!44997 () Bool)

(assert (=> b!82932 (= e!44997 (dynLambda!991 lambda!10052 (h!999 (t!47889 ls!96))))))

(declare-fun b!82933 () Bool)

(declare-fun res!42575 () Bool)

(assert (=> b!82933 (=> (not res!42575) (not e!44998))))

(assert (=> b!82933 (= res!42575 (subset (content!131 lt!19250) (content!131 (t!47889 ls!96))))))

(declare-fun b!82934 () Bool)

(declare-fun e!44999 () List!672)

(declare-fun lt!19249 () List!672)

(assert (=> b!82934 (= e!44999 (Cons!629 (h!999 (t!47889 ls!96)) lt!19249))))

(declare-fun b!82935 () Bool)

(assert (=> b!82935 (= e!44999 lt!19249)))

(declare-fun b!82936 () Bool)

(assert (=> b!82936 (= e!44996 e!44999)))

(declare-fun c!20814 () Bool)

(assert (=> b!82936 (= c!20814 e!44997)))

(declare-fun res!42576 () Bool)

(assert (=> b!82936 (=> (not res!42576) (not e!44997))))

(assert (=> b!82936 (= res!42576 (is-Cons!629 (t!47889 ls!96)))))

(assert (=> b!82936 (= lt!19249 (filter!25 (t!47889 (t!47889 ls!96)) lambda!10052))))

(assert (= (and b!82936 res!42576) b!82932))

(assert (= (and b!82936 c!20814) b!82934))

(assert (= (and b!82936 (not c!20814)) b!82935))

(assert (= (and d!56413 c!20813) b!82931))

(assert (= (and d!56413 (not c!20813)) b!82936))

(assert (= (and d!56413 res!42574) b!82933))

(assert (= (and b!82933 res!42575) b!82930))

(declare-fun b_lambda!16399 () Bool)

(assert (=> (not b_lambda!16399) (not b!82932)))

(declare-fun m!78622 () Bool)

(assert (=> b!82930 m!78622))

(declare-fun m!78624 () Bool)

(assert (=> b!82932 m!78624))

(declare-fun m!78626 () Bool)

(assert (=> b!82933 m!78626))

(assert (=> b!82933 m!78484))

(declare-fun m!78628 () Bool)

(assert (=> d!56413 m!78628))

(assert (=> d!56413 m!78488))

(declare-fun m!78630 () Bool)

(assert (=> b!82936 m!78630))

(assert (=> b!82805 d!56413))

(declare-fun b_lambda!16401 () Bool)

(assert (= b_lambda!16399 (or b!82805 b_lambda!16401)))

(declare-fun bs!40210 () Bool)

(declare-fun d!56415 () Bool)

(assert (= bs!40210 (and d!56415 b!82805)))

(assert (=> bs!40210 (= (dynLambda!991 lambda!10052 (h!999 (t!47889 ls!96))) (= (h!999 (t!47889 ls!96)) (h!999 ls!96)))))

(assert (=> b!82932 d!56415))

(declare-fun b_lambda!16403 () Bool)

(assert (= b_lambda!16395 (or b!82803 b_lambda!16403)))

(declare-fun bs!40211 () Bool)

(declare-fun d!56417 () Bool)

(assert (= bs!40211 (and d!56417 b!82803)))

(assert (=> bs!40211 (= (dynLambda!991 lambda!10051 (last!22 (quickSort!0 less!5))) (< (last!22 (quickSort!0 less!5)) (h!999 ls!96)))))

(assert (=> b!82874 d!56417))

(declare-fun b_lambda!16405 () Bool)

(assert (= b_lambda!16393 (or b!82803 b_lambda!16405)))

(assert (=> b!82871 d!56417))

(declare-fun b_lambda!16407 () Bool)

(assert (= b_lambda!16391 (or b!82801 b_lambda!16407)))

(declare-fun bs!40212 () Bool)

(declare-fun d!56419 () Bool)

(assert (= bs!40212 (and d!56419 b!82801)))

(assert (=> bs!40212 (= (dynLambda!991 lambda!10053 (h!999 (t!47889 ls!96))) (> (h!999 (t!47889 ls!96)) (h!999 ls!96)))))

(assert (=> b!82838 d!56419))

(declare-fun b_lambda!16409 () Bool)

(assert (= b_lambda!16397 (or b!82803 b_lambda!16409)))

(declare-fun bs!40213 () Bool)

(declare-fun d!56421 () Bool)

(assert (= bs!40213 (and d!56421 b!82803)))

(assert (=> bs!40213 (= (dynLambda!991 lambda!10051 (h!999 (t!47889 ls!96))) (< (h!999 (t!47889 ls!96)) (h!999 ls!96)))))

(assert (=> b!82890 d!56421))

(push 1)

(assert (not b!82913))

(assert (not b!82933))

(assert (not b!82914))

(assert (not b!82930))

(assert (not b!82873))

(assert (not d!56403))

(assert (not d!56395))

(assert (not d!56411))

(assert (not b!82929))

(assert (not b!82900))

(assert (not b_lambda!16401))

(assert (not d!56397))

(assert (not d!56393))

(assert (not b!82875))

(assert (not b!82872))

(assert (not b!82916))

(assert (not b!82927))

(assert (not b!82854))

(assert (not d!56391))

(assert (not b!82936))

(assert (not b!82836))

(assert (not b_lambda!16409))

(assert (not b!82855))

(assert (not b!82917))

(assert (not b!82928))

(assert (not b!82818))

(assert (not d!56409))

(assert (not b!82926))

(assert (not b!82871))

(assert (not b!82857))

(assert (not b!82870))

(assert (not d!56405))

(assert (not d!56407))

(assert (not b!82918))

(assert (not b!82899))

(assert (not b!82925))

(assert (not d!56413))

(assert (not b!82874))

(assert (not b!82887))

(assert (not b!82888))

(assert (not b_lambda!16403))

(assert (not b_lambda!16407))

(assert (not b_lambda!16405))

(assert (not b!82891))

(assert (not b!82853))

(assert (not b!82924))

(assert (not b!82856))

(assert (not b!82842))

(assert (not b!82915))

(assert (not b!82819))

(assert (not b!82923))

(assert (not b!82839))

(assert (not b!82894))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


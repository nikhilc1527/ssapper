; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10350 () Bool)

(assert start!10350)

(declare-fun res!38422 () Bool)

(declare-fun e!41486 () Bool)

(assert (=> start!10350 (=> (not res!38422) (not e!41486))))

(declare-datatypes () ((Formula!96 (Implies!100 (lhs!1401 Formula!96) (rhs!1401 Formula!96)) (And!100 (lhs!1402 Formula!96) (rhs!1402 Formula!96)) (Or!100 (lhs!1403 Formula!96) (rhs!1403 Formula!96)) (Literal!94 (id!4957 (_ BitVec 32))) (Not!100 (f!4737 Formula!96)))))

(declare-fun f!4592 () Formula!96)

(declare-fun f!4591 () Formula!96)

(declare-fun nnf!0 (Formula!96) Formula!96)

(assert (=> start!10350 (= res!38422 (= f!4592 (nnf!0 f!4591)))))

(assert (=> start!10350 e!41486))

(assert (=> start!10350 true))

(declare-fun b!76775 () Bool)

(declare-fun isNNF!0 (Formula!96) Bool)

(assert (=> b!76775 (= e!41486 (not (isNNF!0 f!4592)))))

(assert (= (and start!10350 res!38422) b!76775))

(declare-fun m!73404 () Bool)

(assert (=> start!10350 m!73404))

(declare-fun m!73406 () Bool)

(assert (=> b!76775 m!73406))

(push 1)

(assert (not b!76775))

(assert (not start!10350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!76824 () Bool)

(declare-fun e!41519 () Bool)

(declare-fun e!41525 () Formula!96)

(assert (=> b!76824 (= e!41519 (isNNF!0 e!41525))))

(declare-fun c!19134 () Bool)

(declare-fun lt!17165 () Bool)

(assert (=> b!76824 (= c!19134 lt!17165)))

(declare-fun b!76825 () Bool)

(declare-fun e!41516 () Bool)

(declare-fun e!41528 () Bool)

(assert (=> b!76825 (= e!41516 e!41528)))

(declare-fun c!19129 () Bool)

(declare-fun lt!17169 () Bool)

(assert (=> b!76825 (= c!19129 (or lt!17169 (is-Implies!100 f!4592)))))

(declare-fun lt!17171 () Bool)

(declare-fun e!41521 () Bool)

(assert (=> b!76825 (= lt!17171 e!41521)))

(declare-fun c!19132 () Bool)

(assert (=> b!76825 (= c!19132 (or lt!17169 (is-Implies!100 f!4592)))))

(assert (=> b!76825 (= lt!17169 (is-Or!100 f!4592))))

(declare-fun b!76826 () Bool)

(declare-fun e!41522 () Formula!96)

(assert (=> b!76826 (= e!41522 (rhs!1401 f!4592))))

(declare-fun b!76827 () Bool)

(declare-fun e!41527 () Bool)

(declare-fun res!38458 () Bool)

(assert (=> b!76827 (= e!41527 res!38458)))

(assert (=> b!76827 true))

(declare-fun b!76828 () Bool)

(declare-fun e!41523 () Bool)

(declare-fun res!38464 () Bool)

(assert (=> b!76828 (= e!41523 res!38464)))

(assert (=> b!76828 true))

(declare-fun b!76829 () Bool)

(declare-fun res!38466 () Bool)

(assert (=> b!76829 (= e!41519 res!38466)))

(assert (=> b!76829 true))

(declare-fun b!76830 () Bool)

(assert (=> b!76830 (= e!41525 e!41522)))

(declare-fun c!19128 () Bool)

(declare-fun e!41518 () Bool)

(assert (=> b!76830 (= c!19128 e!41518)))

(declare-fun res!38457 () Bool)

(assert (=> b!76830 (=> (not res!38457) (not e!41518))))

(declare-fun lt!17163 () Bool)

(assert (=> b!76830 (= res!38457 lt!17163)))

(assert (=> b!76830 (= lt!17163 (is-Or!100 f!4592))))

(declare-fun b!76831 () Bool)

(declare-fun lt!17166 () Bool)

(assert (=> b!76831 (= e!41527 lt!17166)))

(declare-fun b!76832 () Bool)

(declare-fun e!41520 () Bool)

(declare-fun lt!17168 () Bool)

(assert (=> b!76832 (= e!41520 lt!17168)))

(declare-fun b!76833 () Bool)

(declare-fun res!38463 () Bool)

(assert (=> b!76833 (= e!41521 res!38463)))

(assert (=> b!76833 true))

(declare-fun lt!17164 () Bool)

(declare-fun e!41526 () Bool)

(declare-fun lt!17170 () Bool)

(declare-fun b!76834 () Bool)

(assert (=> b!76834 (= e!41526 (or (and lt!17164 lt!17170) (and (not lt!17164) (is-Implies!100 f!4592) lt!17170)))))

(assert (=> b!76834 (= lt!17170 e!41527)))

(declare-fun c!19133 () Bool)

(assert (=> b!76834 (= c!19133 (or lt!17164 (is-Implies!100 f!4592)))))

(assert (=> b!76834 (= lt!17164 (is-Or!100 f!4592))))

(declare-fun b!76835 () Bool)

(declare-fun e!41517 () Bool)

(declare-fun res!38460 () Bool)

(assert (=> b!76835 (= e!41517 res!38460)))

(assert (=> b!76835 true))

(declare-fun b!76836 () Bool)

(declare-fun e!41524 () Bool)

(assert (=> b!76836 (= e!41524 e!41520)))

(declare-fun c!19131 () Bool)

(assert (=> b!76836 (= c!19131 (or (and lt!17169 lt!17171) (and (not lt!17169) (is-Implies!100 f!4592) lt!17171)))))

(declare-fun b!76837 () Bool)

(declare-fun e!41515 () Bool)

(assert (=> b!76837 (= e!41515 e!41526)))

(declare-fun res!38462 () Bool)

(assert (=> b!76837 (=> (not res!38462) (not e!41526))))

(declare-fun lt!17167 () Bool)

(assert (=> b!76837 (= res!38462 (not lt!17167))))

(declare-fun b!76838 () Bool)

(assert (=> b!76838 (= e!41528 e!41524)))

(declare-fun res!38465 () Bool)

(assert (=> b!76838 (=> (not res!38465) (not e!41524))))

(assert (=> b!76838 (= res!38465 lt!17171)))

(declare-fun b!76839 () Bool)

(declare-fun res!38459 () Bool)

(assert (=> b!76839 (= e!41520 res!38459)))

(assert (=> b!76839 true))

(assert (=> b!76839 true))

(declare-fun b!76840 () Bool)

(assert (=> b!76840 (= e!41523 lt!17166)))

(declare-fun b!76841 () Bool)

(assert (=> b!76841 (= e!41517 (isNNF!0 (ite lt!17167 (lhs!1402 f!4592) (ite (is-Or!100 f!4592) (lhs!1403 f!4592) (lhs!1401 f!4592)))))))

(declare-fun d!54933 () Bool)

(declare-fun c!19127 () Bool)

(assert (=> d!54933 (= c!19127 lt!17167)))

(assert (=> d!54933 (= lt!17168 e!41519)))

(declare-fun c!19126 () Bool)

(assert (=> d!54933 (= c!19126 e!41515)))

(declare-fun res!38461 () Bool)

(assert (=> d!54933 (=> res!38461 e!41515)))

(assert (=> d!54933 (= res!38461 lt!17165)))

(assert (=> d!54933 (= lt!17165 (and lt!17167 lt!17166))))

(assert (=> d!54933 (= lt!17166 e!41517)))

(declare-fun c!19130 () Bool)

(assert (=> d!54933 (= c!19130 (or lt!17167 (is-Or!100 f!4592) (is-Implies!100 f!4592)))))

(assert (=> d!54933 (= lt!17167 (is-And!100 f!4592))))

(assert (=> d!54933 (= (isNNF!0 f!4592) e!41516)))

(declare-fun b!76842 () Bool)

(assert (=> b!76842 (= e!41528 (or (and (is-Not!100 f!4592) (is-Literal!94 (f!4737 f!4592))) (not (is-Not!100 f!4592))))))

(declare-fun b!76843 () Bool)

(assert (=> b!76843 (= e!41522 (rhs!1403 f!4592))))

(declare-fun b!76844 () Bool)

(assert (=> b!76844 (= e!41516 (and lt!17166 lt!17168))))

(declare-fun b!76845 () Bool)

(assert (=> b!76845 (= e!41521 lt!17166)))

(declare-fun b!76846 () Bool)

(assert (=> b!76846 (= e!41525 (rhs!1402 f!4592))))

(declare-fun b!76847 () Bool)

(assert (=> b!76847 (= e!41518 e!41523)))

(declare-fun c!19135 () Bool)

(assert (=> b!76847 (= c!19135 (or lt!17163 (is-Implies!100 f!4592)))))

(assert (= (and d!54933 c!19130) b!76841))

(assert (= (and d!54933 (not c!19130)) b!76835))

(assert (= (and d!54933 (not res!38461)) b!76837))

(assert (= (and b!76837 res!38462) b!76834))

(assert (= (and b!76834 c!19133) b!76831))

(assert (= (and b!76834 (not c!19133)) b!76827))

(assert (= (and b!76830 res!38457) b!76847))

(assert (= (and b!76847 c!19135) b!76840))

(assert (= (and b!76847 (not c!19135)) b!76828))

(assert (= (and b!76830 c!19128) b!76843))

(assert (= (and b!76830 (not c!19128)) b!76826))

(assert (= (and b!76824 c!19134) b!76846))

(assert (= (and b!76824 (not c!19134)) b!76830))

(assert (= (and d!54933 c!19126) b!76824))

(assert (= (and d!54933 (not c!19126)) b!76829))

(assert (= (and b!76825 c!19132) b!76845))

(assert (= (and b!76825 (not c!19132)) b!76833))

(assert (= (and b!76838 res!38465) b!76836))

(assert (= (and b!76836 c!19131) b!76832))

(assert (= (and b!76836 (not c!19131)) b!76839))

(assert (= (and b!76825 c!19129) b!76838))

(assert (= (and b!76825 (not c!19129)) b!76842))

(assert (= (and d!54933 c!19127) b!76844))

(assert (= (and d!54933 (not c!19127)) b!76825))

(declare-fun m!73408 () Bool)

(assert (=> b!76824 m!73408))

(declare-fun m!73410 () Bool)

(assert (=> b!76841 m!73410))

(assert (=> b!76775 d!54933))

(declare-fun b!76912 () Bool)

(declare-fun e!41575 () Formula!96)

(declare-fun res!38529 () Formula!96)

(assert (=> b!76912 (= e!41575 res!38529)))

(assert (=> b!76912 true))

(declare-fun b!76913 () Bool)

(declare-fun e!41566 () Formula!96)

(declare-fun res!38531 () Formula!96)

(assert (=> b!76913 (= e!41566 res!38531)))

(assert (=> b!76913 true))

(declare-fun b!76914 () Bool)

(declare-fun e!41573 () Formula!96)

(declare-fun lt!17216 () Bool)

(assert (=> b!76914 (= e!41573 (nnf!0 (ite lt!17216 (lhs!1402 f!4591) (ite (is-Or!100 f!4591) (lhs!1403 f!4591) (ite (is-Implies!100 f!4591) (lhs!1401 f!4591) (ite (and (is-Not!100 f!4591) (is-And!100 (f!4737 f!4591))) (Not!100 (lhs!1402 (f!4737 f!4591))) (ite (and (is-Not!100 f!4591) (is-Or!100 (f!4737 f!4591))) (Not!100 (lhs!1403 (f!4737 f!4591))) (ite (and (is-Not!100 f!4591) (is-Implies!100 (f!4737 f!4591))) (lhs!1401 (f!4737 f!4591)) (f!4737 (f!4737 f!4591))))))))))))

(declare-fun b!76915 () Bool)

(declare-fun e!41571 () Formula!96)

(declare-fun lt!17212 () Formula!96)

(assert (=> b!76915 (= e!41571 lt!17212)))

(declare-fun b!76916 () Bool)

(declare-fun e!41570 () Formula!96)

(declare-fun e!41567 () Formula!96)

(assert (=> b!76916 (= e!41570 e!41567)))

(declare-fun c!19175 () Bool)

(declare-fun lt!17220 () Bool)

(assert (=> b!76916 (= c!19175 lt!17220)))

(declare-fun lt!17214 () Formula!96)

(declare-fun e!41564 () Formula!96)

(assert (=> b!76916 (= lt!17214 e!41564)))

(declare-fun c!19177 () Bool)

(assert (=> b!76916 (= c!19177 (or lt!17220 (and (is-Not!100 f!4591) (is-Implies!100 (f!4737 f!4591)))))))

(declare-fun lt!17209 () Formula!96)

(declare-fun e!41565 () Formula!96)

(assert (=> b!76916 (= lt!17209 e!41565)))

(declare-fun c!19171 () Bool)

(assert (=> b!76916 (= c!19171 (or lt!17220 (and (is-Not!100 f!4591) (is-Implies!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Not!100 (f!4737 f!4591)))))))

(assert (=> b!76916 (= lt!17220 (and (is-Not!100 f!4591) (is-Or!100 (f!4737 f!4591))))))

(declare-fun b!76917 () Bool)

(declare-fun e!41572 () Formula!96)

(declare-fun res!38532 () Formula!96)

(assert (=> b!76917 (= e!41572 res!38532)))

(assert (=> b!76917 true))

(declare-fun b!76918 () Bool)

(declare-fun lt!17210 () Formula!96)

(assert (=> b!76918 (= e!41565 lt!17210)))

(declare-fun b!76919 () Bool)

(declare-fun lt!17218 () Formula!96)

(assert (=> b!76919 (= e!41575 lt!17218)))

(declare-fun b!76920 () Bool)

(declare-fun res!38527 () Formula!96)

(assert (=> b!76920 (= e!41565 res!38527)))

(assert (=> b!76920 true))

(declare-fun b!76921 () Bool)

(declare-fun e!41576 () Formula!96)

(assert (=> b!76921 (= e!41576 lt!17209)))

(declare-fun b!76922 () Bool)

(assert (=> b!76922 (= e!41567 (And!100 lt!17209 lt!17214))))

(declare-fun b!76923 () Bool)

(declare-fun e!41563 () Formula!96)

(declare-fun e!41574 () Formula!96)

(assert (=> b!76923 (= e!41563 e!41574)))

(declare-fun c!19176 () Bool)

(declare-fun lt!17213 () Bool)

(assert (=> b!76923 (= c!19176 lt!17213)))

(declare-fun lt!17225 () Formula!96)

(declare-fun e!41568 () Formula!96)

(assert (=> b!76923 (= lt!17225 e!41568)))

(declare-fun c!19172 () Bool)

(assert (=> b!76923 (= c!19172 (or lt!17213 (and (is-Not!100 f!4591) (is-And!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Or!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Implies!100 (f!4737 f!4591)))))))

(declare-fun lt!17221 () Formula!96)

(declare-fun e!41562 () Formula!96)

(assert (=> b!76923 (= lt!17221 e!41562)))

(declare-fun c!19181 () Bool)

(assert (=> b!76923 (= c!19181 (or lt!17213 (and (is-Not!100 f!4591) (is-And!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Or!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Implies!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Not!100 (f!4737 f!4591)))))))

(assert (=> b!76923 (= lt!17213 (is-Implies!100 f!4591))))

(declare-fun b!76924 () Bool)

(declare-fun e!41569 () Formula!96)

(assert (=> b!76924 (= e!41569 (nnf!0 (ite lt!17216 (rhs!1402 f!4591) (ite (is-Or!100 f!4591) (rhs!1403 f!4591) (ite (is-Implies!100 f!4591) (rhs!1401 f!4591) (ite (and (is-Not!100 f!4591) (is-And!100 (f!4737 f!4591))) (Not!100 (rhs!1402 (f!4737 f!4591))) (ite (and (is-Not!100 f!4591) (is-Or!100 (f!4737 f!4591))) (Not!100 (rhs!1403 (f!4737 f!4591))) (Not!100 (rhs!1401 (f!4737 f!4591))))))))))))

(declare-fun b!76925 () Bool)

(declare-fun lt!17211 () Formula!96)

(assert (=> b!76925 (= e!41568 lt!17211)))

(declare-fun b!76926 () Bool)

(assert (=> b!76926 (= e!41572 lt!17221)))

(declare-fun b!76927 () Bool)

(declare-fun lt!17217 () Formula!96)

(assert (=> b!76927 (= e!41564 lt!17217)))

(declare-fun b!76928 () Bool)

(declare-fun lt!17224 () Formula!96)

(assert (=> b!76928 (= e!41562 lt!17224)))

(declare-fun d!54935 () Bool)

(declare-fun lt!17208 () Formula!96)

(assert (=> d!54935 (isNNF!0 lt!17208)))

(declare-fun e!41561 () Formula!96)

(assert (=> d!54935 (= lt!17208 e!41561)))

(declare-fun c!19182 () Bool)

(assert (=> d!54935 (= c!19182 lt!17216)))

(assert (=> d!54935 (= lt!17212 e!41569)))

(declare-fun c!19180 () Bool)

(assert (=> d!54935 (= c!19180 (or lt!17216 (is-Or!100 f!4591) (is-Implies!100 f!4591) (and (is-Not!100 f!4591) (is-And!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Or!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Implies!100 (f!4737 f!4591)))))))

(assert (=> d!54935 (= lt!17218 e!41573)))

(declare-fun c!19179 () Bool)

(assert (=> d!54935 (= c!19179 (or lt!17216 (is-Or!100 f!4591) (is-Implies!100 f!4591) (and (is-Not!100 f!4591) (is-And!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Or!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Implies!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Not!100 (f!4737 f!4591)))))))

(assert (=> d!54935 (= lt!17216 (is-And!100 f!4591))))

(assert (=> d!54935 (= (nnf!0 f!4591) lt!17208)))

(declare-fun b!76929 () Bool)

(assert (=> b!76929 (= e!41561 e!41563)))

(declare-fun c!19174 () Bool)

(declare-fun lt!17222 () Bool)

(assert (=> b!76929 (= c!19174 lt!17222)))

(assert (=> b!76929 (= lt!17211 e!41571)))

(declare-fun c!19178 () Bool)

(assert (=> b!76929 (= c!19178 (or lt!17222 (is-Implies!100 f!4591) (and (is-Not!100 f!4591) (is-And!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Or!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Implies!100 (f!4737 f!4591)))))))

(assert (=> b!76929 (= lt!17224 e!41575)))

(declare-fun c!19173 () Bool)

(assert (=> b!76929 (= c!19173 (or lt!17222 (is-Implies!100 f!4591) (and (is-Not!100 f!4591) (is-And!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Or!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Implies!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Not!100 (f!4737 f!4591)))))))

(assert (=> b!76929 (= lt!17222 (is-Or!100 f!4591))))

(declare-fun b!76930 () Bool)

(declare-fun res!38525 () Formula!96)

(assert (=> b!76930 (= e!41562 res!38525)))

(assert (=> b!76930 true))

(declare-fun b!76931 () Bool)

(assert (=> b!76931 (= e!41563 (Or!100 lt!17224 lt!17211))))

(declare-fun b!76932 () Bool)

(declare-fun res!38528 () Formula!96)

(assert (=> b!76932 (= e!41571 res!38528)))

(assert (=> b!76932 true))

(declare-fun b!76933 () Bool)

(declare-fun lt!17219 () Formula!96)

(declare-fun lt!17223 () Bool)

(assert (=> b!76933 (= e!41567 (ite lt!17223 (And!100 lt!17219 lt!17214) (ite (and (is-Not!100 f!4591) (is-Not!100 (f!4737 f!4591))) lt!17219 f!4591)))))

(assert (=> b!76933 (= lt!17219 e!41576)))

(declare-fun c!19169 () Bool)

(assert (=> b!76933 (= c!19169 (or lt!17223 (and (is-Not!100 f!4591) (is-Not!100 (f!4737 f!4591)))))))

(assert (=> b!76933 (= lt!17223 (and (is-Not!100 f!4591) (is-Implies!100 (f!4737 f!4591))))))

(declare-fun b!76934 () Bool)

(declare-fun res!38522 () Formula!96)

(assert (=> b!76934 (= e!41564 res!38522)))

(assert (=> b!76934 true))

(declare-fun b!76935 () Bool)

(declare-fun res!38523 () Formula!96)

(assert (=> b!76935 (= e!41568 res!38523)))

(assert (=> b!76935 true))

(declare-fun b!76936 () Bool)

(assert (=> b!76936 (= e!41570 (Or!100 lt!17210 lt!17217))))

(declare-fun b!76937 () Bool)

(assert (=> b!76937 (= e!41561 (And!100 lt!17218 lt!17212))))

(declare-fun b!76938 () Bool)

(assert (=> b!76938 (= e!41566 lt!17225)))

(declare-fun b!76939 () Bool)

(assert (=> b!76939 (= e!41574 e!41570)))

(declare-fun c!19168 () Bool)

(declare-fun lt!17215 () Bool)

(assert (=> b!76939 (= c!19168 lt!17215)))

(assert (=> b!76939 (= lt!17217 e!41566)))

(declare-fun c!19183 () Bool)

(assert (=> b!76939 (= c!19183 (or lt!17215 (and (is-Not!100 f!4591) (is-Or!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Implies!100 (f!4737 f!4591)))))))

(assert (=> b!76939 (= lt!17210 e!41572)))

(declare-fun c!19170 () Bool)

(assert (=> b!76939 (= c!19170 (or lt!17215 (and (is-Not!100 f!4591) (is-Or!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Implies!100 (f!4737 f!4591))) (and (is-Not!100 f!4591) (is-Not!100 (f!4737 f!4591)))))))

(assert (=> b!76939 (= lt!17215 (and (is-Not!100 f!4591) (is-And!100 (f!4737 f!4591))))))

(declare-fun b!76940 () Bool)

(declare-fun res!38524 () Formula!96)

(assert (=> b!76940 (= e!41576 res!38524)))

(assert (=> b!76940 true))

(assert (=> b!76940 true))

(declare-fun b!76941 () Bool)

(declare-fun res!38526 () Formula!96)

(assert (=> b!76941 (= e!41569 res!38526)))

(assert (=> b!76941 true))

(declare-fun b!76942 () Bool)

(assert (=> b!76942 (= e!41574 (Implies!100 lt!17221 lt!17225))))

(declare-fun b!76943 () Bool)

(declare-fun res!38530 () Formula!96)

(assert (=> b!76943 (= e!41573 res!38530)))

(assert (=> b!76943 true))

(assert (= (and d!54935 c!19179) b!76914))

(assert (= (and d!54935 (not c!19179)) b!76943))

(assert (= (and d!54935 c!19180) b!76924))

(assert (= (and d!54935 (not c!19180)) b!76941))

(assert (= (and b!76929 c!19173) b!76919))

(assert (= (and b!76929 (not c!19173)) b!76912))

(assert (= (and b!76929 c!19178) b!76915))

(assert (= (and b!76929 (not c!19178)) b!76932))

(assert (= (and b!76923 c!19181) b!76928))

(assert (= (and b!76923 (not c!19181)) b!76930))

(assert (= (and b!76923 c!19172) b!76925))

(assert (= (and b!76923 (not c!19172)) b!76935))

(assert (= (and b!76939 c!19170) b!76926))

(assert (= (and b!76939 (not c!19170)) b!76917))

(assert (= (and b!76939 c!19183) b!76938))

(assert (= (and b!76939 (not c!19183)) b!76913))

(assert (= (and b!76916 c!19171) b!76918))

(assert (= (and b!76916 (not c!19171)) b!76920))

(assert (= (and b!76916 c!19177) b!76927))

(assert (= (and b!76916 (not c!19177)) b!76934))

(assert (= (and b!76933 c!19169) b!76921))

(assert (= (and b!76933 (not c!19169)) b!76940))

(assert (= (and b!76916 c!19175) b!76922))

(assert (= (and b!76916 (not c!19175)) b!76933))

(assert (= (and b!76939 c!19168) b!76936))

(assert (= (and b!76939 (not c!19168)) b!76916))

(assert (= (and b!76923 c!19176) b!76942))

(assert (= (and b!76923 (not c!19176)) b!76939))

(assert (= (and b!76929 c!19174) b!76931))

(assert (= (and b!76929 (not c!19174)) b!76923))

(assert (= (and d!54935 c!19182) b!76937))

(assert (= (and d!54935 (not c!19182)) b!76929))

(declare-fun m!73412 () Bool)

(assert (=> b!76914 m!73412))

(declare-fun m!73414 () Bool)

(assert (=> b!76924 m!73414))

(declare-fun m!73416 () Bool)

(assert (=> d!54935 m!73416))

(assert (=> start!10350 d!54935))

(push 1)

(assert (not d!54935))

(assert (not b!76824))

(assert (not b!76914))

(assert (not b!76924))

(assert (not b!76841))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


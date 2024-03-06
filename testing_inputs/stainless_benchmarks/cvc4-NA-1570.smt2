; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10780 () Bool)

(assert start!10780)

(declare-fun b!82285 () Bool)

(assert (=> b!82285 true))

(declare-fun bs!39934 () Bool)

(declare-fun b!82287 () Bool)

(assert (= bs!39934 (and b!82287 b!82285)))

(declare-fun lambda!9833 () Int)

(declare-fun lambda!9832 () Int)

(assert (=> bs!39934 (not (= lambda!9833 lambda!9832))))

(assert (=> b!82287 true))

(declare-fun bs!39935 () Bool)

(declare-fun b!82284 () Bool)

(assert (= bs!39935 (and b!82284 b!82285)))

(declare-fun lambda!9834 () Int)

(assert (=> bs!39935 (not (= lambda!9834 lambda!9832))))

(declare-fun bs!39936 () Bool)

(assert (= bs!39936 (and b!82284 b!82287)))

(assert (=> bs!39936 (not (= lambda!9834 lambda!9833))))

(assert (=> b!82284 true))

(declare-fun res!42122 () Bool)

(declare-fun e!44650 () Bool)

(assert (=> b!82284 (=> (not res!42122) (not e!44650))))

(declare-datatypes () ((List!668 (Cons!625 (h!995 Int) (t!47857 List!668)) (Nil!627))))

(declare-fun more!5 () List!668)

(declare-fun ls!96 () List!668)

(declare-fun filter!21 (List!668 Int) List!668)

(assert (=> b!82284 (= res!42122 (= more!5 (filter!21 (t!47857 ls!96) lambda!9834)))))

(declare-fun res!42121 () Bool)

(assert (=> start!10780 (=> (not res!42121) (not e!44650))))

(assert (=> start!10780 (= res!42121 (and (not (is-Nil!627 ls!96)) (not (is-Nil!627 (t!47857 ls!96)))))))

(assert (=> start!10780 e!44650))

(assert (=> start!10780 true))

(declare-fun res!42120 () Bool)

(assert (=> b!82285 (=> (not res!42120) (not e!44650))))

(declare-fun less!5 () List!668)

(assert (=> b!82285 (= res!42120 (= less!5 (filter!21 (t!47857 ls!96) lambda!9832)))))

(declare-fun b!82286 () Bool)

(declare-fun forall_last!0 (List!668 Int) Bool)

(declare-fun quickSort!0 (List!668) List!668)

(assert (=> b!82286 (= e!44650 (not (forall_last!0 (quickSort!0 less!5) lambda!9832)))))

(declare-fun res!42124 () Bool)

(assert (=> b!82287 (=> (not res!42124) (not e!44650))))

(declare-fun equal!10 () List!668)

(assert (=> b!82287 (= res!42124 (= equal!10 (Cons!625 (h!995 ls!96) (filter!21 (t!47857 ls!96) lambda!9833))))))

(declare-fun b!82288 () Bool)

(declare-fun res!42119 () Bool)

(assert (=> b!82288 (=> (not res!42119) (not e!44650))))

(declare-fun sorted_lemma!0 (List!668) Bool)

(assert (=> b!82288 (= res!42119 (sorted_lemma!0 less!5))))

(declare-fun b!82289 () Bool)

(declare-fun res!42123 () Bool)

(assert (=> b!82289 (=> (not res!42123) (not e!44650))))

(declare-fun sort_preserves_forall!0 (List!668 Int) Bool)

(assert (=> b!82289 (= res!42123 (sort_preserves_forall!0 less!5 lambda!9832))))

(assert (= (and start!10780 res!42121) b!82285))

(assert (= (and b!82285 res!42120) b!82287))

(assert (= (and b!82287 res!42124) b!82284))

(assert (= (and b!82284 res!42122) b!82288))

(assert (= (and b!82288 res!42119) b!82289))

(assert (= (and b!82289 res!42123) b!82286))

(declare-fun m!77864 () Bool)

(assert (=> b!82286 m!77864))

(assert (=> b!82286 m!77864))

(declare-fun m!77866 () Bool)

(assert (=> b!82286 m!77866))

(declare-fun m!77868 () Bool)

(assert (=> b!82284 m!77868))

(declare-fun m!77870 () Bool)

(assert (=> b!82287 m!77870))

(declare-fun m!77872 () Bool)

(assert (=> b!82288 m!77872))

(declare-fun m!77874 () Bool)

(assert (=> b!82289 m!77874))

(declare-fun m!77876 () Bool)

(assert (=> b!82285 m!77876))

(push 1)

(assert (not b!82287))

(assert (not b!82285))

(assert (not b!82289))

(assert (not b!82284))

(assert (not b!82288))

(assert (not b!82286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!82304 () Bool)

(declare-fun e!44658 () Bool)

(declare-fun dynLambda!987 (Int Int) Bool)

(declare-fun last!18 (List!668) Int)

(assert (=> b!82304 (= e!44658 (dynLambda!987 lambda!9832 (last!18 (quickSort!0 less!5))))))

(declare-fun b!82305 () Bool)

(declare-fun e!44659 () Bool)

(declare-fun e!44657 () Bool)

(assert (=> b!82305 (= e!44659 e!44657)))

(declare-fun res!42135 () Bool)

(assert (=> b!82305 (=> res!42135 e!44657)))

(declare-fun forall!23 (List!668 Int) Bool)

(assert (=> b!82305 (= res!42135 (not (forall!23 (quickSort!0 less!5) lambda!9832)))))

(declare-fun lt!18993 () Bool)

(assert (=> b!82305 (= lt!18993 (forall_last!0 (t!47857 (quickSort!0 less!5)) lambda!9832))))

(declare-fun b!82306 () Bool)

(assert (=> b!82306 (= e!44657 (dynLambda!987 lambda!9832 (last!18 (quickSort!0 less!5))))))

(declare-fun b!82307 () Bool)

(declare-fun res!42133 () Bool)

(assert (=> b!82307 (=> res!42133 e!44658)))

(declare-fun isEmpty!678 (List!668) Bool)

(assert (=> b!82307 (= res!42133 (isEmpty!678 (quickSort!0 less!5)))))

(declare-fun d!56287 () Bool)

(assert (=> d!56287 e!44659))

(declare-fun c!20701 () Bool)

(assert (=> d!56287 (= c!20701 (is-Cons!625 (quickSort!0 less!5)))))

(assert (=> d!56287 (= (forall_last!0 (quickSort!0 less!5) lambda!9832) true)))

(declare-fun b!82308 () Bool)

(declare-fun res!42134 () Bool)

(assert (=> b!82308 (=> res!42134 e!44657)))

(assert (=> b!82308 (= res!42134 (isEmpty!678 (quickSort!0 less!5)))))

(declare-fun b!82309 () Bool)

(assert (=> b!82309 (= e!44659 e!44658)))

(declare-fun res!42136 () Bool)

(assert (=> b!82309 (=> res!42136 e!44658)))

(assert (=> b!82309 (= res!42136 (not (forall!23 (quickSort!0 less!5) lambda!9832)))))

(assert (= (and b!82305 (not res!42135)) b!82308))

(assert (= (and b!82308 (not res!42134)) b!82306))

(assert (= (and b!82309 (not res!42136)) b!82307))

(assert (= (and b!82307 (not res!42133)) b!82304))

(assert (= (and d!56287 c!20701) b!82305))

(assert (= (and d!56287 (not c!20701)) b!82309))

(declare-fun b_lambda!16311 () Bool)

(assert (=> (not b_lambda!16311) (not b!82304)))

(declare-fun b_lambda!16313 () Bool)

(assert (=> (not b_lambda!16313) (not b!82306)))

(assert (=> b!82309 m!77864))

(declare-fun m!77878 () Bool)

(assert (=> b!82309 m!77878))

(assert (=> b!82308 m!77864))

(declare-fun m!77880 () Bool)

(assert (=> b!82308 m!77880))

(assert (=> b!82305 m!77864))

(assert (=> b!82305 m!77878))

(declare-fun m!77882 () Bool)

(assert (=> b!82305 m!77882))

(assert (=> b!82304 m!77864))

(declare-fun m!77884 () Bool)

(assert (=> b!82304 m!77884))

(assert (=> b!82304 m!77884))

(declare-fun m!77886 () Bool)

(assert (=> b!82304 m!77886))

(assert (=> b!82306 m!77864))

(assert (=> b!82306 m!77884))

(assert (=> b!82306 m!77884))

(assert (=> b!82306 m!77886))

(assert (=> b!82307 m!77864))

(assert (=> b!82307 m!77880))

(assert (=> b!82286 d!56287))

(declare-fun bs!39937 () Bool)

(declare-fun b!82321 () Bool)

(assert (= bs!39937 (and b!82321 b!82285)))

(declare-fun lambda!9841 () Int)

(assert (=> bs!39937 (= (= (h!995 less!5) (h!995 ls!96)) (= lambda!9841 lambda!9832))))

(declare-fun bs!39938 () Bool)

(assert (= bs!39938 (and b!82321 b!82287)))

(assert (=> bs!39938 (not (= lambda!9841 lambda!9833))))

(declare-fun bs!39939 () Bool)

(assert (= bs!39939 (and b!82321 b!82284)))

(assert (=> bs!39939 (not (= lambda!9841 lambda!9834))))

(assert (=> b!82321 true))

(declare-fun lambda!9842 () Int)

(assert (=> bs!39937 (not (= lambda!9842 lambda!9832))))

(assert (=> bs!39938 (= (= (h!995 less!5) (h!995 ls!96)) (= lambda!9842 lambda!9833))))

(assert (=> bs!39939 (not (= lambda!9842 lambda!9834))))

(assert (=> b!82321 (not (= lambda!9842 lambda!9841))))

(assert (=> b!82321 true))

(declare-fun lambda!9843 () Int)

(assert (=> bs!39937 (not (= lambda!9843 lambda!9832))))

(assert (=> bs!39939 (= (= (h!995 less!5) (h!995 ls!96)) (= lambda!9843 lambda!9834))))

(assert (=> b!82321 (not (= lambda!9843 lambda!9842))))

(assert (=> b!82321 (not (= lambda!9843 lambda!9841))))

(assert (=> bs!39938 (not (= lambda!9843 lambda!9833))))

(assert (=> b!82321 true))

(declare-fun d!56289 () Bool)

(declare-fun c!20706 () Bool)

(assert (=> d!56289 (= c!20706 (is-Nil!627 less!5))))

(declare-fun e!44664 () List!668)

(assert (=> d!56289 (= (quickSort!0 less!5) e!44664)))

(declare-fun b!82318 () Bool)

(assert (=> b!82318 (= e!44664 Nil!627)))

(declare-fun b!82320 () Bool)

(declare-fun e!44665 () List!668)

(assert (=> b!82320 (= e!44665 less!5)))

(declare-fun ++!76 (List!668 List!668) List!668)

(assert (=> b!82321 (= e!44665 (++!76 (++!76 (quickSort!0 (filter!21 (t!47857 less!5) lambda!9841)) (Cons!625 (h!995 less!5) (filter!21 (t!47857 less!5) lambda!9842))) (quickSort!0 (filter!21 (t!47857 less!5) lambda!9843))))))

(declare-fun b!82319 () Bool)

(assert (=> b!82319 (= e!44664 e!44665)))

(declare-fun c!20707 () Bool)

(assert (=> b!82319 (= c!20707 (and (is-Cons!625 less!5) (is-Nil!627 (t!47857 less!5))))))

(assert (= (and b!82319 c!20707) b!82320))

(assert (= (and b!82319 (not c!20707)) b!82321))

(assert (= (and d!56289 c!20706) b!82318))

(assert (= (and d!56289 (not c!20706)) b!82319))

(declare-fun m!77888 () Bool)

(assert (=> b!82321 m!77888))

(declare-fun m!77890 () Bool)

(assert (=> b!82321 m!77890))

(declare-fun m!77892 () Bool)

(assert (=> b!82321 m!77892))

(assert (=> b!82321 m!77892))

(declare-fun m!77894 () Bool)

(assert (=> b!82321 m!77894))

(declare-fun m!77896 () Bool)

(assert (=> b!82321 m!77896))

(assert (=> b!82321 m!77888))

(assert (=> b!82321 m!77890))

(declare-fun m!77898 () Bool)

(assert (=> b!82321 m!77898))

(assert (=> b!82321 m!77894))

(assert (=> b!82321 m!77898))

(declare-fun m!77900 () Bool)

(assert (=> b!82321 m!77900))

(assert (=> b!82286 d!56289))

(declare-fun b!82336 () Bool)

(declare-fun e!44674 () List!668)

(assert (=> b!82336 (= e!44674 Nil!627)))

(declare-fun b!82337 () Bool)

(declare-fun e!44676 () Bool)

(assert (=> b!82337 (= e!44676 (dynLambda!987 lambda!9833 (h!995 (t!47857 ls!96))))))

(declare-fun b!82338 () Bool)

(declare-fun e!44677 () List!668)

(assert (=> b!82338 (= e!44674 e!44677)))

(declare-fun c!20712 () Bool)

(assert (=> b!82338 (= c!20712 e!44676)))

(declare-fun res!42149 () Bool)

(assert (=> b!82338 (=> (not res!42149) (not e!44676))))

(assert (=> b!82338 (= res!42149 (is-Cons!625 (t!47857 ls!96)))))

(declare-fun lt!18999 () List!668)

(assert (=> b!82338 (= lt!18999 (filter!21 (t!47857 (t!47857 ls!96)) lambda!9833))))

(declare-fun d!56291 () Bool)

(declare-fun e!44675 () Bool)

(assert (=> d!56291 e!44675))

(declare-fun res!42148 () Bool)

(assert (=> d!56291 (=> (not res!42148) (not e!44675))))

(declare-fun lt!18998 () List!668)

(declare-fun size!656 (List!668) Int)

(assert (=> d!56291 (= res!42148 (<= (size!656 lt!18998) (size!656 (t!47857 ls!96))))))

(assert (=> d!56291 (= lt!18998 e!44674)))

(declare-fun c!20713 () Bool)

(assert (=> d!56291 (= c!20713 (is-Nil!627 (t!47857 ls!96)))))

(assert (=> d!56291 (= (filter!21 (t!47857 ls!96) lambda!9833) lt!18998)))

(declare-fun b!82339 () Bool)

(assert (=> b!82339 (= e!44677 (Cons!625 (h!995 (t!47857 ls!96)) lt!18999))))

(declare-fun b!82340 () Bool)

(assert (=> b!82340 (= e!44675 (forall!23 lt!18998 lambda!9833))))

(declare-fun b!82341 () Bool)

(declare-fun res!42147 () Bool)

(assert (=> b!82341 (=> (not res!42147) (not e!44675))))

(declare-fun content!127 (List!668) (Set Int))

(assert (=> b!82341 (= res!42147 (subset (content!127 lt!18998) (content!127 (t!47857 ls!96))))))

(declare-fun b!82342 () Bool)

(assert (=> b!82342 (= e!44677 lt!18999)))

(assert (= (and b!82338 res!42149) b!82337))

(assert (= (and b!82338 c!20712) b!82339))

(assert (= (and b!82338 (not c!20712)) b!82342))

(assert (= (and d!56291 c!20713) b!82336))

(assert (= (and d!56291 (not c!20713)) b!82338))

(assert (= (and d!56291 res!42148) b!82341))

(assert (= (and b!82341 res!42147) b!82340))

(declare-fun b_lambda!16315 () Bool)

(assert (=> (not b_lambda!16315) (not b!82337)))

(declare-fun m!77902 () Bool)

(assert (=> b!82340 m!77902))

(declare-fun m!77904 () Bool)

(assert (=> b!82337 m!77904))

(declare-fun m!77906 () Bool)

(assert (=> d!56291 m!77906))

(declare-fun m!77908 () Bool)

(assert (=> d!56291 m!77908))

(declare-fun m!77910 () Bool)

(assert (=> b!82338 m!77910))

(declare-fun m!77912 () Bool)

(assert (=> b!82341 m!77912))

(declare-fun m!77914 () Bool)

(assert (=> b!82341 m!77914))

(assert (=> b!82287 d!56291))

(declare-fun b!82343 () Bool)

(declare-fun e!44678 () List!668)

(assert (=> b!82343 (= e!44678 Nil!627)))

(declare-fun b!82344 () Bool)

(declare-fun e!44680 () Bool)

(assert (=> b!82344 (= e!44680 (dynLambda!987 lambda!9834 (h!995 (t!47857 ls!96))))))

(declare-fun b!82345 () Bool)

(declare-fun e!44681 () List!668)

(assert (=> b!82345 (= e!44678 e!44681)))

(declare-fun c!20714 () Bool)

(assert (=> b!82345 (= c!20714 e!44680)))

(declare-fun res!42152 () Bool)

(assert (=> b!82345 (=> (not res!42152) (not e!44680))))

(assert (=> b!82345 (= res!42152 (is-Cons!625 (t!47857 ls!96)))))

(declare-fun lt!19001 () List!668)

(assert (=> b!82345 (= lt!19001 (filter!21 (t!47857 (t!47857 ls!96)) lambda!9834))))

(declare-fun d!56293 () Bool)

(declare-fun e!44679 () Bool)

(assert (=> d!56293 e!44679))

(declare-fun res!42151 () Bool)

(assert (=> d!56293 (=> (not res!42151) (not e!44679))))

(declare-fun lt!19000 () List!668)

(assert (=> d!56293 (= res!42151 (<= (size!656 lt!19000) (size!656 (t!47857 ls!96))))))

(assert (=> d!56293 (= lt!19000 e!44678)))

(declare-fun c!20715 () Bool)

(assert (=> d!56293 (= c!20715 (is-Nil!627 (t!47857 ls!96)))))

(assert (=> d!56293 (= (filter!21 (t!47857 ls!96) lambda!9834) lt!19000)))

(declare-fun b!82346 () Bool)

(assert (=> b!82346 (= e!44681 (Cons!625 (h!995 (t!47857 ls!96)) lt!19001))))

(declare-fun b!82347 () Bool)

(assert (=> b!82347 (= e!44679 (forall!23 lt!19000 lambda!9834))))

(declare-fun b!82348 () Bool)

(declare-fun res!42150 () Bool)

(assert (=> b!82348 (=> (not res!42150) (not e!44679))))

(assert (=> b!82348 (= res!42150 (subset (content!127 lt!19000) (content!127 (t!47857 ls!96))))))

(declare-fun b!82349 () Bool)

(assert (=> b!82349 (= e!44681 lt!19001)))

(assert (= (and b!82345 res!42152) b!82344))

(assert (= (and b!82345 c!20714) b!82346))

(assert (= (and b!82345 (not c!20714)) b!82349))

(assert (= (and d!56293 c!20715) b!82343))

(assert (= (and d!56293 (not c!20715)) b!82345))

(assert (= (and d!56293 res!42151) b!82348))

(assert (= (and b!82348 res!42150) b!82347))

(declare-fun b_lambda!16317 () Bool)

(assert (=> (not b_lambda!16317) (not b!82344)))

(declare-fun m!77916 () Bool)

(assert (=> b!82347 m!77916))

(declare-fun m!77918 () Bool)

(assert (=> b!82344 m!77918))

(declare-fun m!77920 () Bool)

(assert (=> d!56293 m!77920))

(assert (=> d!56293 m!77908))

(declare-fun m!77922 () Bool)

(assert (=> b!82345 m!77922))

(declare-fun m!77924 () Bool)

(assert (=> b!82348 m!77924))

(assert (=> b!82348 m!77914))

(assert (=> b!82284 d!56293))

(declare-fun bs!39940 () Bool)

(declare-fun b!82362 () Bool)

(assert (= bs!39940 (and b!82362 b!82285)))

(declare-fun lambda!9856 () Int)

(assert (=> bs!39940 (= (= (h!995 less!5) (h!995 ls!96)) (= lambda!9856 lambda!9832))))

(declare-fun bs!39941 () Bool)

(assert (= bs!39941 (and b!82362 b!82284)))

(assert (=> bs!39941 (not (= lambda!9856 lambda!9834))))

(declare-fun bs!39942 () Bool)

(assert (= bs!39942 (and b!82362 b!82321)))

(assert (=> bs!39942 (not (= lambda!9856 lambda!9843))))

(assert (=> bs!39942 (not (= lambda!9856 lambda!9842))))

(assert (=> bs!39942 (= lambda!9856 lambda!9841)))

(declare-fun bs!39943 () Bool)

(assert (= bs!39943 (and b!82362 b!82287)))

(assert (=> bs!39943 (not (= lambda!9856 lambda!9833))))

(assert (=> b!82362 true))

(declare-fun lambda!9857 () Int)

(assert (=> b!82362 (not (= lambda!9857 lambda!9856))))

(assert (=> bs!39940 (not (= lambda!9857 lambda!9832))))

(assert (=> bs!39941 (not (= lambda!9857 lambda!9834))))

(assert (=> bs!39942 (not (= lambda!9857 lambda!9843))))

(assert (=> bs!39942 (= lambda!9857 lambda!9842)))

(assert (=> bs!39942 (not (= lambda!9857 lambda!9841))))

(assert (=> bs!39943 (= (= (h!995 less!5) (h!995 ls!96)) (= lambda!9857 lambda!9833))))

(assert (=> b!82362 true))

(declare-fun lambda!9858 () Int)

(assert (=> b!82362 (not (= lambda!9858 lambda!9857))))

(assert (=> b!82362 (not (= lambda!9858 lambda!9856))))

(assert (=> bs!39940 (not (= lambda!9858 lambda!9832))))

(assert (=> bs!39941 (= (= (h!995 less!5) (h!995 ls!96)) (= lambda!9858 lambda!9834))))

(assert (=> bs!39942 (= lambda!9858 lambda!9843)))

(assert (=> bs!39942 (not (= lambda!9858 lambda!9842))))

(assert (=> bs!39942 (not (= lambda!9858 lambda!9841))))

(assert (=> bs!39943 (not (= lambda!9858 lambda!9833))))

(assert (=> b!82362 true))

(declare-fun d!56295 () Bool)

(assert (=> d!56295 (forall!23 (quickSort!0 less!5) lambda!9832)))

(declare-fun lt!19016 () Bool)

(declare-fun e!44694 () Bool)

(assert (=> d!56295 (= lt!19016 e!44694)))

(declare-fun res!42172 () Bool)

(assert (=> d!56295 (=> res!42172 e!44694)))

(assert (=> d!56295 (= res!42172 (or (is-Nil!627 less!5) (and (is-Cons!625 less!5) (is-Nil!627 (t!47857 less!5)))))))

(assert (=> d!56295 (forall!23 less!5 lambda!9832)))

(assert (=> d!56295 (= (sort_preserves_forall!0 less!5 lambda!9832) true)))

(declare-fun e!44692 () Bool)

(declare-fun b!82360 () Bool)

(declare-fun filter_preserves_forall!0 (List!668 Int Int) Bool)

(assert (=> b!82360 (= e!44692 (filter_preserves_forall!0 (t!47857 less!5) lambda!9858 lambda!9832))))

(declare-fun b!82361 () Bool)

(declare-fun e!44695 () Bool)

(declare-fun lt!19019 () List!668)

(assert (=> b!82361 (= e!44695 (sort_preserves_forall!0 lt!19019 lambda!9832))))

(declare-fun e!44696 () Bool)

(assert (=> b!82362 (= e!44694 e!44696)))

(declare-fun res!42171 () Bool)

(assert (=> b!82362 (=> (not res!42171) (not e!44696))))

(declare-fun lt!19015 () List!668)

(declare-fun lt!19017 () List!668)

(declare-fun append_preserves_forall!0 (List!668 List!668 Int) Bool)

(assert (=> b!82362 (= res!42171 (append_preserves_forall!0 (quickSort!0 lt!19017) lt!19015 lambda!9832))))

(declare-fun lt!19014 () Bool)

(assert (=> b!82362 (= lt!19014 e!44695)))

(declare-fun res!42169 () Bool)

(assert (=> b!82362 (=> (not res!42169) (not e!44695))))

(assert (=> b!82362 (= res!42169 (sort_preserves_forall!0 lt!19017 lambda!9832))))

(declare-fun lt!19018 () Bool)

(assert (=> b!82362 (= lt!19018 e!44692)))

(declare-fun res!42168 () Bool)

(assert (=> b!82362 (=> (not res!42168) (not e!44692))))

(declare-fun e!44693 () Bool)

(assert (=> b!82362 (= res!42168 e!44693)))

(declare-fun res!42170 () Bool)

(assert (=> b!82362 (=> (not res!42170) (not e!44693))))

(assert (=> b!82362 (= res!42170 (filter_preserves_forall!0 (t!47857 less!5) lambda!9856 lambda!9832))))

(assert (=> b!82362 (= lt!19019 (filter!21 (t!47857 less!5) lambda!9858))))

(assert (=> b!82362 (= lt!19015 (Cons!625 (h!995 less!5) (filter!21 (t!47857 less!5) lambda!9857)))))

(assert (=> b!82362 (= lt!19017 (filter!21 (t!47857 less!5) lambda!9856))))

(declare-fun b!82363 () Bool)

(assert (=> b!82363 (= e!44696 (append_preserves_forall!0 (++!76 (quickSort!0 lt!19017) lt!19015) (quickSort!0 lt!19019) lambda!9832))))

(declare-fun b!82364 () Bool)

(assert (=> b!82364 (= e!44693 (filter_preserves_forall!0 (t!47857 less!5) lambda!9857 lambda!9832))))

(assert (= (and d!56295 (not res!42172)) b!82362))

(assert (= (and b!82362 res!42170) b!82364))

(assert (= (and b!82362 res!42168) b!82360))

(assert (= (and b!82362 res!42169) b!82361))

(assert (= (and b!82362 res!42171) b!82363))

(declare-fun m!77926 () Bool)

(assert (=> b!82360 m!77926))

(declare-fun m!77928 () Bool)

(assert (=> b!82361 m!77928))

(assert (=> d!56295 m!77864))

(assert (=> d!56295 m!77864))

(assert (=> d!56295 m!77878))

(declare-fun m!77930 () Bool)

(assert (=> d!56295 m!77930))

(declare-fun m!77932 () Bool)

(assert (=> b!82362 m!77932))

(declare-fun m!77934 () Bool)

(assert (=> b!82362 m!77934))

(declare-fun m!77936 () Bool)

(assert (=> b!82362 m!77936))

(declare-fun m!77938 () Bool)

(assert (=> b!82362 m!77938))

(declare-fun m!77940 () Bool)

(assert (=> b!82362 m!77940))

(declare-fun m!77942 () Bool)

(assert (=> b!82362 m!77942))

(declare-fun m!77944 () Bool)

(assert (=> b!82362 m!77944))

(assert (=> b!82362 m!77942))

(declare-fun m!77946 () Bool)

(assert (=> b!82364 m!77946))

(assert (=> b!82363 m!77942))

(assert (=> b!82363 m!77942))

(declare-fun m!77948 () Bool)

(assert (=> b!82363 m!77948))

(declare-fun m!77950 () Bool)

(assert (=> b!82363 m!77950))

(assert (=> b!82363 m!77948))

(assert (=> b!82363 m!77950))

(declare-fun m!77952 () Bool)

(assert (=> b!82363 m!77952))

(assert (=> b!82289 d!56295))

(declare-fun bs!39944 () Bool)

(declare-fun b!82369 () Bool)

(assert (= bs!39944 (and b!82369 b!82362)))

(declare-fun lambda!9865 () Int)

(assert (=> bs!39944 (not (= lambda!9865 lambda!9858))))

(assert (=> bs!39944 (not (= lambda!9865 lambda!9857))))

(assert (=> bs!39944 (= lambda!9865 lambda!9856)))

(declare-fun bs!39945 () Bool)

(assert (= bs!39945 (and b!82369 b!82285)))

(assert (=> bs!39945 (= (= (h!995 less!5) (h!995 ls!96)) (= lambda!9865 lambda!9832))))

(declare-fun bs!39946 () Bool)

(assert (= bs!39946 (and b!82369 b!82284)))

(assert (=> bs!39946 (not (= lambda!9865 lambda!9834))))

(declare-fun bs!39947 () Bool)

(assert (= bs!39947 (and b!82369 b!82321)))

(assert (=> bs!39947 (not (= lambda!9865 lambda!9843))))

(assert (=> bs!39947 (not (= lambda!9865 lambda!9842))))

(assert (=> bs!39947 (= lambda!9865 lambda!9841)))

(declare-fun bs!39948 () Bool)

(assert (= bs!39948 (and b!82369 b!82287)))

(assert (=> bs!39948 (not (= lambda!9865 lambda!9833))))

(assert (=> b!82369 true))

(declare-fun lambda!9866 () Int)

(assert (=> bs!39944 (not (= lambda!9866 lambda!9858))))

(assert (=> bs!39944 (= lambda!9866 lambda!9857)))

(assert (=> bs!39944 (not (= lambda!9866 lambda!9856))))

(assert (=> bs!39945 (not (= lambda!9866 lambda!9832))))

(assert (=> bs!39946 (not (= lambda!9866 lambda!9834))))

(assert (=> bs!39947 (not (= lambda!9866 lambda!9843))))

(assert (=> bs!39947 (= lambda!9866 lambda!9842)))

(assert (=> bs!39947 (not (= lambda!9866 lambda!9841))))

(assert (=> b!82369 (not (= lambda!9866 lambda!9865))))

(assert (=> bs!39948 (= (= (h!995 less!5) (h!995 ls!96)) (= lambda!9866 lambda!9833))))

(assert (=> b!82369 true))

(declare-fun lambda!9867 () Int)

(assert (=> bs!39944 (= lambda!9867 lambda!9858)))

(assert (=> bs!39944 (not (= lambda!9867 lambda!9857))))

(assert (=> bs!39944 (not (= lambda!9867 lambda!9856))))

(assert (=> bs!39945 (not (= lambda!9867 lambda!9832))))

(assert (=> bs!39946 (= (= (h!995 less!5) (h!995 ls!96)) (= lambda!9867 lambda!9834))))

(assert (=> bs!39947 (= lambda!9867 lambda!9843)))

(assert (=> bs!39947 (not (= lambda!9867 lambda!9842))))

(assert (=> bs!39947 (not (= lambda!9867 lambda!9841))))

(assert (=> b!82369 (not (= lambda!9867 lambda!9866))))

(assert (=> b!82369 (not (= lambda!9867 lambda!9865))))

(assert (=> bs!39948 (not (= lambda!9867 lambda!9833))))

(assert (=> b!82369 true))

(declare-fun d!56297 () Bool)

(declare-fun isSorted!1 (List!668) Bool)

(assert (=> d!56297 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!19029 () Bool)

(declare-fun e!44701 () Bool)

(assert (=> d!56297 (= lt!19029 e!44701)))

(declare-fun res!42179 () Bool)

(assert (=> d!56297 (=> res!42179 e!44701)))

(assert (=> d!56297 (= res!42179 (or (is-Nil!627 less!5) (and (is-Cons!625 less!5) (is-Nil!627 (t!47857 less!5)))))))

(assert (=> d!56297 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!44702 () Bool)

(assert (=> b!82369 (= e!44701 e!44702)))

(declare-fun res!42180 () Bool)

(assert (=> b!82369 (=> (not res!42180) (not e!44702))))

(declare-fun lt!19030 () List!668)

(declare-fun lt!19031 () List!668)

(declare-fun append_sorted!0 (List!668 List!668) Bool)

(assert (=> b!82369 (= res!42180 (append_sorted!0 (quickSort!0 lt!19030) lt!19031))))

(declare-fun lt!19028 () List!668)

(assert (=> b!82369 (= lt!19028 (filter!21 (t!47857 less!5) lambda!9867))))

(assert (=> b!82369 (= lt!19031 (Cons!625 (h!995 less!5) (filter!21 (t!47857 less!5) lambda!9866)))))

(assert (=> b!82369 (= lt!19030 (filter!21 (t!47857 less!5) lambda!9865))))

(declare-fun b!82370 () Bool)

(assert (=> b!82370 (= e!44702 (append_sorted!0 (++!76 (quickSort!0 lt!19030) lt!19031) (quickSort!0 lt!19028)))))

(assert (= (and d!56297 (not res!42179)) b!82369))

(assert (= (and b!82369 res!42180) b!82370))

(assert (=> d!56297 m!77864))

(assert (=> d!56297 m!77864))

(declare-fun m!77954 () Bool)

(assert (=> d!56297 m!77954))

(declare-fun m!77956 () Bool)

(assert (=> b!82369 m!77956))

(declare-fun m!77958 () Bool)

(assert (=> b!82369 m!77958))

(declare-fun m!77960 () Bool)

(assert (=> b!82369 m!77960))

(assert (=> b!82369 m!77958))

(declare-fun m!77962 () Bool)

(assert (=> b!82369 m!77962))

(declare-fun m!77964 () Bool)

(assert (=> b!82369 m!77964))

(assert (=> b!82370 m!77958))

(assert (=> b!82370 m!77958))

(declare-fun m!77966 () Bool)

(assert (=> b!82370 m!77966))

(declare-fun m!77968 () Bool)

(assert (=> b!82370 m!77968))

(assert (=> b!82370 m!77966))

(assert (=> b!82370 m!77968))

(declare-fun m!77970 () Bool)

(assert (=> b!82370 m!77970))

(assert (=> b!82288 d!56297))

(declare-fun b!82371 () Bool)

(declare-fun e!44703 () List!668)

(assert (=> b!82371 (= e!44703 Nil!627)))

(declare-fun b!82372 () Bool)

(declare-fun e!44705 () Bool)

(assert (=> b!82372 (= e!44705 (dynLambda!987 lambda!9832 (h!995 (t!47857 ls!96))))))

(declare-fun b!82373 () Bool)

(declare-fun e!44706 () List!668)

(assert (=> b!82373 (= e!44703 e!44706)))

(declare-fun c!20716 () Bool)

(assert (=> b!82373 (= c!20716 e!44705)))

(declare-fun res!42183 () Bool)

(assert (=> b!82373 (=> (not res!42183) (not e!44705))))

(assert (=> b!82373 (= res!42183 (is-Cons!625 (t!47857 ls!96)))))

(declare-fun lt!19033 () List!668)

(assert (=> b!82373 (= lt!19033 (filter!21 (t!47857 (t!47857 ls!96)) lambda!9832))))

(declare-fun d!56299 () Bool)

(declare-fun e!44704 () Bool)

(assert (=> d!56299 e!44704))

(declare-fun res!42182 () Bool)

(assert (=> d!56299 (=> (not res!42182) (not e!44704))))

(declare-fun lt!19032 () List!668)

(assert (=> d!56299 (= res!42182 (<= (size!656 lt!19032) (size!656 (t!47857 ls!96))))))

(assert (=> d!56299 (= lt!19032 e!44703)))

(declare-fun c!20717 () Bool)

(assert (=> d!56299 (= c!20717 (is-Nil!627 (t!47857 ls!96)))))

(assert (=> d!56299 (= (filter!21 (t!47857 ls!96) lambda!9832) lt!19032)))

(declare-fun b!82374 () Bool)

(assert (=> b!82374 (= e!44706 (Cons!625 (h!995 (t!47857 ls!96)) lt!19033))))

(declare-fun b!82375 () Bool)

(assert (=> b!82375 (= e!44704 (forall!23 lt!19032 lambda!9832))))

(declare-fun b!82376 () Bool)

(declare-fun res!42181 () Bool)

(assert (=> b!82376 (=> (not res!42181) (not e!44704))))

(assert (=> b!82376 (= res!42181 (subset (content!127 lt!19032) (content!127 (t!47857 ls!96))))))

(declare-fun b!82377 () Bool)

(assert (=> b!82377 (= e!44706 lt!19033)))

(assert (= (and b!82373 res!42183) b!82372))

(assert (= (and b!82373 c!20716) b!82374))

(assert (= (and b!82373 (not c!20716)) b!82377))

(assert (= (and d!56299 c!20717) b!82371))

(assert (= (and d!56299 (not c!20717)) b!82373))

(assert (= (and d!56299 res!42182) b!82376))

(assert (= (and b!82376 res!42181) b!82375))

(declare-fun b_lambda!16319 () Bool)

(assert (=> (not b_lambda!16319) (not b!82372)))

(declare-fun m!77972 () Bool)

(assert (=> b!82375 m!77972))

(declare-fun m!77974 () Bool)

(assert (=> b!82372 m!77974))

(declare-fun m!77976 () Bool)

(assert (=> d!56299 m!77976))

(assert (=> d!56299 m!77908))

(declare-fun m!77978 () Bool)

(assert (=> b!82373 m!77978))

(declare-fun m!77980 () Bool)

(assert (=> b!82376 m!77980))

(assert (=> b!82376 m!77914))

(assert (=> b!82285 d!56299))

(declare-fun b_lambda!16321 () Bool)

(assert (= b_lambda!16311 (or b!82285 b_lambda!16321)))

(declare-fun bs!39949 () Bool)

(declare-fun d!56301 () Bool)

(assert (= bs!39949 (and d!56301 b!82285)))

(assert (=> bs!39949 (= (dynLambda!987 lambda!9832 (last!18 (quickSort!0 less!5))) (< (last!18 (quickSort!0 less!5)) (h!995 ls!96)))))

(assert (=> b!82304 d!56301))

(declare-fun b_lambda!16323 () Bool)

(assert (= b_lambda!16319 (or b!82285 b_lambda!16323)))

(declare-fun bs!39950 () Bool)

(declare-fun d!56303 () Bool)

(assert (= bs!39950 (and d!56303 b!82285)))

(assert (=> bs!39950 (= (dynLambda!987 lambda!9832 (h!995 (t!47857 ls!96))) (< (h!995 (t!47857 ls!96)) (h!995 ls!96)))))

(assert (=> b!82372 d!56303))

(declare-fun b_lambda!16325 () Bool)

(assert (= b_lambda!16315 (or b!82287 b_lambda!16325)))

(declare-fun bs!39951 () Bool)

(declare-fun d!56305 () Bool)

(assert (= bs!39951 (and d!56305 b!82287)))

(assert (=> bs!39951 (= (dynLambda!987 lambda!9833 (h!995 (t!47857 ls!96))) (= (h!995 (t!47857 ls!96)) (h!995 ls!96)))))

(assert (=> b!82337 d!56305))

(declare-fun b_lambda!16327 () Bool)

(assert (= b_lambda!16317 (or b!82284 b_lambda!16327)))

(declare-fun bs!39952 () Bool)

(declare-fun d!56307 () Bool)

(assert (= bs!39952 (and d!56307 b!82284)))

(assert (=> bs!39952 (= (dynLambda!987 lambda!9834 (h!995 (t!47857 ls!96))) (> (h!995 (t!47857 ls!96)) (h!995 ls!96)))))

(assert (=> b!82344 d!56307))

(declare-fun b_lambda!16329 () Bool)

(assert (= b_lambda!16313 (or b!82285 b_lambda!16329)))

(assert (=> b!82306 d!56301))

(push 1)

(assert (not b!82304))

(assert (not b!82369))

(assert (not b!82364))

(assert (not b!82308))

(assert (not b!82363))

(assert (not b_lambda!16321))

(assert (not b_lambda!16325))

(assert (not b!82362))

(assert (not b!82305))

(assert (not b!82360))

(assert (not b!82376))

(assert (not b!82340))

(assert (not d!56295))

(assert (not d!56293))

(assert (not b!82347))

(assert (not b!82338))

(assert (not b!82321))

(assert (not d!56291))

(assert (not b_lambda!16329))

(assert (not b!82373))

(assert (not b!82375))

(assert (not d!56299))

(assert (not b!82348))

(assert (not b!82345))

(assert (not b!82309))

(assert (not b!82361))

(assert (not d!56297))

(assert (not b!82341))

(assert (not b!82307))

(assert (not b!82370))

(assert (not b!82306))

(assert (not b_lambda!16327))

(assert (not b_lambda!16323))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


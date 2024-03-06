; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10766 () Bool)

(assert start!10766)

(declare-fun b!82152 () Bool)

(assert (=> b!82152 true))

(declare-fun bs!39910 () Bool)

(declare-fun b!82153 () Bool)

(assert (= bs!39910 (and b!82153 b!82152)))

(declare-fun lambda!9776 () Int)

(declare-fun lambda!9775 () Int)

(assert (=> bs!39910 (not (= lambda!9776 lambda!9775))))

(assert (=> b!82153 true))

(declare-fun bs!39911 () Bool)

(declare-fun b!82154 () Bool)

(assert (= bs!39911 (and b!82154 b!82152)))

(declare-fun lambda!9777 () Int)

(assert (=> bs!39911 (not (= lambda!9777 lambda!9775))))

(declare-fun bs!39912 () Bool)

(assert (= bs!39912 (and b!82154 b!82153)))

(assert (=> bs!39912 (not (= lambda!9777 lambda!9776))))

(assert (=> b!82154 true))

(declare-fun b!82155 () Bool)

(declare-fun e!44573 () Bool)

(declare-datatypes () ((List!666 (Cons!623 (h!993 Int) (t!47846 List!666)) (Nil!625))))

(declare-fun less!5 () List!666)

(declare-fun sorted_lemma!0 (List!666) Bool)

(assert (=> b!82155 (= e!44573 (not (sorted_lemma!0 less!5)))))

(declare-fun res!42016 () Bool)

(assert (=> b!82153 (=> (not res!42016) (not e!44573))))

(declare-fun equal!10 () List!666)

(declare-fun ls!96 () List!666)

(declare-fun filter!19 (List!666 Int) List!666)

(assert (=> b!82153 (= res!42016 (= equal!10 (Cons!623 (h!993 ls!96) (filter!19 (t!47846 ls!96) lambda!9776))))))

(declare-fun res!42017 () Bool)

(assert (=> b!82152 (=> (not res!42017) (not e!44573))))

(assert (=> b!82152 (= res!42017 (= less!5 (filter!19 (t!47846 ls!96) lambda!9775)))))

(declare-fun res!42015 () Bool)

(assert (=> start!10766 (=> (not res!42015) (not e!44573))))

(assert (=> start!10766 (= res!42015 (and (not (is-Nil!625 ls!96)) (not (is-Nil!625 (t!47846 ls!96)))))))

(assert (=> start!10766 e!44573))

(assert (=> start!10766 true))

(declare-fun res!42014 () Bool)

(assert (=> b!82154 (=> (not res!42014) (not e!44573))))

(declare-fun more!5 () List!666)

(assert (=> b!82154 (= res!42014 (= more!5 (filter!19 (t!47846 ls!96) lambda!9777)))))

(assert (= (and start!10766 res!42015) b!82152))

(assert (= (and b!82152 res!42017) b!82153))

(assert (= (and b!82153 res!42016) b!82154))

(assert (= (and b!82154 res!42014) b!82155))

(declare-fun m!77708 () Bool)

(assert (=> b!82155 m!77708))

(declare-fun m!77710 () Bool)

(assert (=> b!82153 m!77710))

(declare-fun m!77712 () Bool)

(assert (=> b!82152 m!77712))

(declare-fun m!77714 () Bool)

(assert (=> b!82154 m!77714))

(push 1)

(assert (not b!82154))

(assert (not b!82153))

(assert (not b!82155))

(assert (not b!82152))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!82172 () Bool)

(declare-fun e!44582 () Bool)

(declare-fun lt!18933 () List!666)

(declare-fun forall!21 (List!666 Int) Bool)

(assert (=> b!82172 (= e!44582 (forall!21 lt!18933 lambda!9777))))

(declare-fun b!82173 () Bool)

(declare-fun e!44583 () List!666)

(assert (=> b!82173 (= e!44583 Nil!625)))

(declare-fun b!82174 () Bool)

(declare-fun e!44584 () List!666)

(declare-fun lt!18934 () List!666)

(assert (=> b!82174 (= e!44584 lt!18934)))

(declare-fun b!82175 () Bool)

(declare-fun res!42029 () Bool)

(assert (=> b!82175 (=> (not res!42029) (not e!44582))))

(declare-fun content!125 (List!666) (Set Int))

(assert (=> b!82175 (= res!42029 (subset (content!125 lt!18933) (content!125 (t!47846 ls!96))))))

(declare-fun b!82176 () Bool)

(assert (=> b!82176 (= e!44584 (Cons!623 (h!993 (t!47846 ls!96)) lt!18934))))

(declare-fun d!56257 () Bool)

(assert (=> d!56257 e!44582))

(declare-fun res!42028 () Bool)

(assert (=> d!56257 (=> (not res!42028) (not e!44582))))

(declare-fun size!654 (List!666) Int)

(assert (=> d!56257 (= res!42028 (<= (size!654 lt!18933) (size!654 (t!47846 ls!96))))))

(assert (=> d!56257 (= lt!18933 e!44583)))

(declare-fun c!20684 () Bool)

(assert (=> d!56257 (= c!20684 (is-Nil!625 (t!47846 ls!96)))))

(assert (=> d!56257 (= (filter!19 (t!47846 ls!96) lambda!9777) lt!18933)))

(declare-fun b!82177 () Bool)

(declare-fun e!44585 () Bool)

(declare-fun dynLambda!985 (Int Int) Bool)

(assert (=> b!82177 (= e!44585 (dynLambda!985 lambda!9777 (h!993 (t!47846 ls!96))))))

(declare-fun b!82178 () Bool)

(assert (=> b!82178 (= e!44583 e!44584)))

(declare-fun c!20683 () Bool)

(assert (=> b!82178 (= c!20683 e!44585)))

(declare-fun res!42030 () Bool)

(assert (=> b!82178 (=> (not res!42030) (not e!44585))))

(assert (=> b!82178 (= res!42030 (is-Cons!623 (t!47846 ls!96)))))

(assert (=> b!82178 (= lt!18934 (filter!19 (t!47846 (t!47846 ls!96)) lambda!9777))))

(assert (= (and b!82178 res!42030) b!82177))

(assert (= (and b!82178 c!20683) b!82176))

(assert (= (and b!82178 (not c!20683)) b!82174))

(assert (= (and d!56257 c!20684) b!82173))

(assert (= (and d!56257 (not c!20684)) b!82178))

(assert (= (and d!56257 res!42028) b!82175))

(assert (= (and b!82175 res!42029) b!82172))

(declare-fun b_lambda!16287 () Bool)

(assert (=> (not b_lambda!16287) (not b!82177)))

(declare-fun m!77716 () Bool)

(assert (=> b!82175 m!77716))

(declare-fun m!77718 () Bool)

(assert (=> b!82175 m!77718))

(declare-fun m!77720 () Bool)

(assert (=> b!82178 m!77720))

(declare-fun m!77722 () Bool)

(assert (=> d!56257 m!77722))

(declare-fun m!77724 () Bool)

(assert (=> d!56257 m!77724))

(declare-fun m!77726 () Bool)

(assert (=> b!82172 m!77726))

(declare-fun m!77728 () Bool)

(assert (=> b!82177 m!77728))

(assert (=> b!82154 d!56257))

(declare-fun b!82179 () Bool)

(declare-fun e!44586 () Bool)

(declare-fun lt!18935 () List!666)

(assert (=> b!82179 (= e!44586 (forall!21 lt!18935 lambda!9776))))

(declare-fun b!82180 () Bool)

(declare-fun e!44587 () List!666)

(assert (=> b!82180 (= e!44587 Nil!625)))

(declare-fun b!82181 () Bool)

(declare-fun e!44588 () List!666)

(declare-fun lt!18936 () List!666)

(assert (=> b!82181 (= e!44588 lt!18936)))

(declare-fun b!82182 () Bool)

(declare-fun res!42032 () Bool)

(assert (=> b!82182 (=> (not res!42032) (not e!44586))))

(assert (=> b!82182 (= res!42032 (subset (content!125 lt!18935) (content!125 (t!47846 ls!96))))))

(declare-fun b!82183 () Bool)

(assert (=> b!82183 (= e!44588 (Cons!623 (h!993 (t!47846 ls!96)) lt!18936))))

(declare-fun d!56259 () Bool)

(assert (=> d!56259 e!44586))

(declare-fun res!42031 () Bool)

(assert (=> d!56259 (=> (not res!42031) (not e!44586))))

(assert (=> d!56259 (= res!42031 (<= (size!654 lt!18935) (size!654 (t!47846 ls!96))))))

(assert (=> d!56259 (= lt!18935 e!44587)))

(declare-fun c!20686 () Bool)

(assert (=> d!56259 (= c!20686 (is-Nil!625 (t!47846 ls!96)))))

(assert (=> d!56259 (= (filter!19 (t!47846 ls!96) lambda!9776) lt!18935)))

(declare-fun b!82184 () Bool)

(declare-fun e!44589 () Bool)

(assert (=> b!82184 (= e!44589 (dynLambda!985 lambda!9776 (h!993 (t!47846 ls!96))))))

(declare-fun b!82185 () Bool)

(assert (=> b!82185 (= e!44587 e!44588)))

(declare-fun c!20685 () Bool)

(assert (=> b!82185 (= c!20685 e!44589)))

(declare-fun res!42033 () Bool)

(assert (=> b!82185 (=> (not res!42033) (not e!44589))))

(assert (=> b!82185 (= res!42033 (is-Cons!623 (t!47846 ls!96)))))

(assert (=> b!82185 (= lt!18936 (filter!19 (t!47846 (t!47846 ls!96)) lambda!9776))))

(assert (= (and b!82185 res!42033) b!82184))

(assert (= (and b!82185 c!20685) b!82183))

(assert (= (and b!82185 (not c!20685)) b!82181))

(assert (= (and d!56259 c!20686) b!82180))

(assert (= (and d!56259 (not c!20686)) b!82185))

(assert (= (and d!56259 res!42031) b!82182))

(assert (= (and b!82182 res!42032) b!82179))

(declare-fun b_lambda!16289 () Bool)

(assert (=> (not b_lambda!16289) (not b!82184)))

(declare-fun m!77730 () Bool)

(assert (=> b!82182 m!77730))

(assert (=> b!82182 m!77718))

(declare-fun m!77732 () Bool)

(assert (=> b!82185 m!77732))

(declare-fun m!77734 () Bool)

(assert (=> d!56259 m!77734))

(assert (=> d!56259 m!77724))

(declare-fun m!77736 () Bool)

(assert (=> b!82179 m!77736))

(declare-fun m!77738 () Bool)

(assert (=> b!82184 m!77738))

(assert (=> b!82153 d!56259))

(declare-fun bs!39913 () Bool)

(declare-fun b!82190 () Bool)

(assert (= bs!39913 (and b!82190 b!82152)))

(declare-fun lambda!9784 () Int)

(assert (=> bs!39913 (= (= (h!993 less!5) (h!993 ls!96)) (= lambda!9784 lambda!9775))))

(declare-fun bs!39914 () Bool)

(assert (= bs!39914 (and b!82190 b!82153)))

(assert (=> bs!39914 (not (= lambda!9784 lambda!9776))))

(declare-fun bs!39915 () Bool)

(assert (= bs!39915 (and b!82190 b!82154)))

(assert (=> bs!39915 (not (= lambda!9784 lambda!9777))))

(assert (=> b!82190 true))

(declare-fun lambda!9785 () Int)

(assert (=> bs!39913 (not (= lambda!9785 lambda!9775))))

(assert (=> bs!39914 (= (= (h!993 less!5) (h!993 ls!96)) (= lambda!9785 lambda!9776))))

(assert (=> bs!39915 (not (= lambda!9785 lambda!9777))))

(assert (=> b!82190 (not (= lambda!9785 lambda!9784))))

(assert (=> b!82190 true))

(declare-fun lambda!9786 () Int)

(assert (=> bs!39914 (not (= lambda!9786 lambda!9776))))

(assert (=> bs!39913 (not (= lambda!9786 lambda!9775))))

(assert (=> b!82190 (not (= lambda!9786 lambda!9785))))

(assert (=> b!82190 (not (= lambda!9786 lambda!9784))))

(assert (=> bs!39915 (= (= (h!993 less!5) (h!993 ls!96)) (= lambda!9786 lambda!9777))))

(assert (=> b!82190 true))

(declare-fun d!56261 () Bool)

(declare-fun isSorted!1 (List!666) Bool)

(declare-fun quickSort!0 (List!666) List!666)

(assert (=> d!56261 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!18946 () Bool)

(declare-fun e!44595 () Bool)

(assert (=> d!56261 (= lt!18946 e!44595)))

(declare-fun res!42040 () Bool)

(assert (=> d!56261 (=> res!42040 e!44595)))

(assert (=> d!56261 (= res!42040 (or (is-Nil!625 less!5) (and (is-Cons!623 less!5) (is-Nil!625 (t!47846 less!5)))))))

(assert (=> d!56261 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!44594 () Bool)

(assert (=> b!82190 (= e!44595 e!44594)))

(declare-fun res!42041 () Bool)

(assert (=> b!82190 (=> (not res!42041) (not e!44594))))

(declare-fun lt!18948 () List!666)

(declare-fun lt!18947 () List!666)

(declare-fun append_sorted!0 (List!666 List!666) Bool)

(assert (=> b!82190 (= res!42041 (append_sorted!0 (quickSort!0 lt!18948) lt!18947))))

(declare-fun lt!18945 () List!666)

(assert (=> b!82190 (= lt!18945 (filter!19 (t!47846 less!5) lambda!9786))))

(assert (=> b!82190 (= lt!18947 (Cons!623 (h!993 less!5) (filter!19 (t!47846 less!5) lambda!9785)))))

(assert (=> b!82190 (= lt!18948 (filter!19 (t!47846 less!5) lambda!9784))))

(declare-fun b!82191 () Bool)

(declare-fun ++!74 (List!666 List!666) List!666)

(assert (=> b!82191 (= e!44594 (append_sorted!0 (++!74 (quickSort!0 lt!18948) lt!18947) (quickSort!0 lt!18945)))))

(assert (= (and d!56261 (not res!42040)) b!82190))

(assert (= (and b!82190 res!42041) b!82191))

(declare-fun m!77740 () Bool)

(assert (=> d!56261 m!77740))

(assert (=> d!56261 m!77740))

(declare-fun m!77742 () Bool)

(assert (=> d!56261 m!77742))

(declare-fun m!77744 () Bool)

(assert (=> b!82190 m!77744))

(declare-fun m!77746 () Bool)

(assert (=> b!82190 m!77746))

(assert (=> b!82190 m!77744))

(declare-fun m!77748 () Bool)

(assert (=> b!82190 m!77748))

(declare-fun m!77750 () Bool)

(assert (=> b!82190 m!77750))

(declare-fun m!77752 () Bool)

(assert (=> b!82190 m!77752))

(assert (=> b!82191 m!77744))

(assert (=> b!82191 m!77744))

(declare-fun m!77754 () Bool)

(assert (=> b!82191 m!77754))

(declare-fun m!77756 () Bool)

(assert (=> b!82191 m!77756))

(assert (=> b!82191 m!77754))

(assert (=> b!82191 m!77756))

(declare-fun m!77758 () Bool)

(assert (=> b!82191 m!77758))

(assert (=> b!82155 d!56261))

(declare-fun b!82192 () Bool)

(declare-fun e!44596 () Bool)

(declare-fun lt!18949 () List!666)

(assert (=> b!82192 (= e!44596 (forall!21 lt!18949 lambda!9775))))

(declare-fun b!82193 () Bool)

(declare-fun e!44597 () List!666)

(assert (=> b!82193 (= e!44597 Nil!625)))

(declare-fun b!82194 () Bool)

(declare-fun e!44598 () List!666)

(declare-fun lt!18950 () List!666)

(assert (=> b!82194 (= e!44598 lt!18950)))

(declare-fun b!82195 () Bool)

(declare-fun res!42043 () Bool)

(assert (=> b!82195 (=> (not res!42043) (not e!44596))))

(assert (=> b!82195 (= res!42043 (subset (content!125 lt!18949) (content!125 (t!47846 ls!96))))))

(declare-fun b!82196 () Bool)

(assert (=> b!82196 (= e!44598 (Cons!623 (h!993 (t!47846 ls!96)) lt!18950))))

(declare-fun d!56263 () Bool)

(assert (=> d!56263 e!44596))

(declare-fun res!42042 () Bool)

(assert (=> d!56263 (=> (not res!42042) (not e!44596))))

(assert (=> d!56263 (= res!42042 (<= (size!654 lt!18949) (size!654 (t!47846 ls!96))))))

(assert (=> d!56263 (= lt!18949 e!44597)))

(declare-fun c!20688 () Bool)

(assert (=> d!56263 (= c!20688 (is-Nil!625 (t!47846 ls!96)))))

(assert (=> d!56263 (= (filter!19 (t!47846 ls!96) lambda!9775) lt!18949)))

(declare-fun b!82197 () Bool)

(declare-fun e!44599 () Bool)

(assert (=> b!82197 (= e!44599 (dynLambda!985 lambda!9775 (h!993 (t!47846 ls!96))))))

(declare-fun b!82198 () Bool)

(assert (=> b!82198 (= e!44597 e!44598)))

(declare-fun c!20687 () Bool)

(assert (=> b!82198 (= c!20687 e!44599)))

(declare-fun res!42044 () Bool)

(assert (=> b!82198 (=> (not res!42044) (not e!44599))))

(assert (=> b!82198 (= res!42044 (is-Cons!623 (t!47846 ls!96)))))

(assert (=> b!82198 (= lt!18950 (filter!19 (t!47846 (t!47846 ls!96)) lambda!9775))))

(assert (= (and b!82198 res!42044) b!82197))

(assert (= (and b!82198 c!20687) b!82196))

(assert (= (and b!82198 (not c!20687)) b!82194))

(assert (= (and d!56263 c!20688) b!82193))

(assert (= (and d!56263 (not c!20688)) b!82198))

(assert (= (and d!56263 res!42042) b!82195))

(assert (= (and b!82195 res!42043) b!82192))

(declare-fun b_lambda!16291 () Bool)

(assert (=> (not b_lambda!16291) (not b!82197)))

(declare-fun m!77760 () Bool)

(assert (=> b!82195 m!77760))

(assert (=> b!82195 m!77718))

(declare-fun m!77762 () Bool)

(assert (=> b!82198 m!77762))

(declare-fun m!77764 () Bool)

(assert (=> d!56263 m!77764))

(assert (=> d!56263 m!77724))

(declare-fun m!77766 () Bool)

(assert (=> b!82192 m!77766))

(declare-fun m!77768 () Bool)

(assert (=> b!82197 m!77768))

(assert (=> b!82152 d!56263))

(declare-fun b_lambda!16293 () Bool)

(assert (= b_lambda!16287 (or b!82154 b_lambda!16293)))

(declare-fun bs!39916 () Bool)

(declare-fun d!56265 () Bool)

(assert (= bs!39916 (and d!56265 b!82154)))

(assert (=> bs!39916 (= (dynLambda!985 lambda!9777 (h!993 (t!47846 ls!96))) (> (h!993 (t!47846 ls!96)) (h!993 ls!96)))))

(assert (=> b!82177 d!56265))

(declare-fun b_lambda!16295 () Bool)

(assert (= b_lambda!16291 (or b!82152 b_lambda!16295)))

(declare-fun bs!39917 () Bool)

(declare-fun d!56267 () Bool)

(assert (= bs!39917 (and d!56267 b!82152)))

(assert (=> bs!39917 (= (dynLambda!985 lambda!9775 (h!993 (t!47846 ls!96))) (< (h!993 (t!47846 ls!96)) (h!993 ls!96)))))

(assert (=> b!82197 d!56267))

(declare-fun b_lambda!16297 () Bool)

(assert (= b_lambda!16289 (or b!82153 b_lambda!16297)))

(declare-fun bs!39918 () Bool)

(declare-fun d!56269 () Bool)

(assert (= bs!39918 (and d!56269 b!82153)))

(assert (=> bs!39918 (= (dynLambda!985 lambda!9776 (h!993 (t!47846 ls!96))) (= (h!993 (t!47846 ls!96)) (h!993 ls!96)))))

(assert (=> b!82184 d!56269))

(push 1)

(assert (not b!82185))

(assert (not b!82175))

(assert (not b!82182))

(assert (not b!82172))

(assert (not b!82192))

(assert (not d!56261))

(assert (not b!82179))

(assert (not b_lambda!16293))

(assert (not b_lambda!16297))

(assert (not b!82198))

(assert (not b_lambda!16295))

(assert (not d!56257))

(assert (not b!82191))

(assert (not d!56263))

(assert (not d!56259))

(assert (not b!82190))

(assert (not b!82178))

(assert (not b!82195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


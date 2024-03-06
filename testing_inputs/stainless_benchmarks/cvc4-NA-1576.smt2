; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10884 () Bool)

(assert start!10884)

(declare-fun b!83135 () Bool)

(assert (=> b!83135 true))

(declare-fun bs!40326 () Bool)

(declare-fun b!83139 () Bool)

(assert (= bs!40326 (and b!83139 b!83135)))

(declare-fun lambda!10204 () Int)

(declare-fun lambda!10203 () Int)

(assert (=> bs!40326 (not (= lambda!10204 lambda!10203))))

(assert (=> b!83139 true))

(declare-fun bs!40327 () Bool)

(declare-fun b!83141 () Bool)

(assert (= bs!40327 (and b!83141 b!83135)))

(declare-fun lambda!10205 () Int)

(assert (=> bs!40327 (not (= lambda!10205 lambda!10203))))

(declare-fun bs!40328 () Bool)

(assert (= bs!40328 (and b!83141 b!83139)))

(assert (=> bs!40328 (not (= lambda!10205 lambda!10204))))

(assert (=> b!83141 true))

(declare-fun bs!40329 () Bool)

(declare-fun b!83137 () Bool)

(assert (= bs!40329 (and b!83137 b!83135)))

(declare-fun lambda!10206 () Int)

(assert (=> bs!40329 (not (= lambda!10206 lambda!10203))))

(declare-fun bs!40330 () Bool)

(assert (= bs!40330 (and b!83137 b!83139)))

(assert (=> bs!40330 (not (= lambda!10206 lambda!10204))))

(declare-fun bs!40331 () Bool)

(assert (= bs!40331 (and b!83137 b!83141)))

(assert (=> bs!40331 (not (= lambda!10206 lambda!10205))))

(assert (=> b!83137 true))

(declare-fun b!83133 () Bool)

(declare-fun res!42720 () Bool)

(declare-fun e!45091 () Bool)

(assert (=> b!83133 (=> (not res!42720) (not e!45091))))

(declare-datatypes () ((List!674 (Cons!631 (h!1001 Int) (t!47905 List!674)) (Nil!633))))

(declare-fun ls!96 () List!674)

(declare-fun cons_filter_equal_sorted!0 (List!674 Int) Bool)

(assert (=> b!83133 (= res!42720 (cons_filter_equal_sorted!0 (t!47905 ls!96) (h!1001 ls!96)))))

(declare-fun b!83134 () Bool)

(declare-fun res!42730 () Bool)

(assert (=> b!83134 (=> (not res!42730) (not e!45091))))

(declare-fun equal!10 () List!674)

(declare-fun forall_eq_implies_le!0 (List!674 Int) Bool)

(assert (=> b!83134 (= res!42730 (forall_eq_implies_le!0 equal!10 (h!1001 ls!96)))))

(declare-fun res!42727 () Bool)

(assert (=> b!83135 (=> (not res!42727) (not e!45091))))

(declare-fun less!5 () List!674)

(declare-fun filter!27 (List!674 Int) List!674)

(assert (=> b!83135 (= res!42727 (= less!5 (filter!27 (t!47905 ls!96) lambda!10203)))))

(declare-fun b!83136 () Bool)

(declare-fun res!42728 () Bool)

(assert (=> b!83136 (=> (not res!42728) (not e!45091))))

(declare-fun sort_preserves_forall!0 (List!674 Int) Bool)

(assert (=> b!83136 (= res!42728 (sort_preserves_forall!0 less!5 lambda!10203))))

(declare-fun res!42729 () Bool)

(assert (=> b!83137 (=> (not res!42729) (not e!45091))))

(assert (=> b!83137 (= res!42729 (sort_preserves_forall!0 less!5 lambda!10206))))

(declare-fun b!83138 () Bool)

(declare-fun forall_last!0 (List!674 Int) Bool)

(declare-fun ++!82 (List!674 List!674) List!674)

(declare-fun quickSort!0 (List!674) List!674)

(assert (=> b!83138 (= e!45091 (not (forall_last!0 (++!82 (quickSort!0 less!5) equal!10) lambda!10206)))))

(declare-fun res!42725 () Bool)

(assert (=> b!83139 (=> (not res!42725) (not e!45091))))

(assert (=> b!83139 (= res!42725 (= equal!10 (Cons!631 (h!1001 ls!96) (filter!27 (t!47905 ls!96) lambda!10204))))))

(declare-fun b!83140 () Bool)

(declare-fun res!42724 () Bool)

(assert (=> b!83140 (=> (not res!42724) (not e!45091))))

(declare-fun sorted_lemma!0 (List!674) Bool)

(assert (=> b!83140 (= res!42724 (sorted_lemma!0 less!5))))

(declare-fun res!42726 () Bool)

(assert (=> b!83141 (=> (not res!42726) (not e!45091))))

(declare-fun more!5 () List!674)

(assert (=> b!83141 (= res!42726 (= more!5 (filter!27 (t!47905 ls!96) lambda!10205)))))

(declare-fun b!83142 () Bool)

(declare-fun res!42718 () Bool)

(assert (=> b!83142 (=> (not res!42718) (not e!45091))))

(declare-fun append_preserves_forall!0 (List!674 List!674 Int) Bool)

(assert (=> b!83142 (= res!42718 (append_preserves_forall!0 (quickSort!0 less!5) equal!10 lambda!10206))))

(declare-fun b!83143 () Bool)

(declare-fun res!42723 () Bool)

(assert (=> b!83143 (=> (not res!42723) (not e!45091))))

(declare-fun append_sorted!0 (List!674 List!674) Bool)

(assert (=> b!83143 (= res!42723 (append_sorted!0 (quickSort!0 less!5) equal!10))))

(declare-fun res!42721 () Bool)

(assert (=> start!10884 (=> (not res!42721) (not e!45091))))

(assert (=> start!10884 (= res!42721 (and (not (is-Nil!633 ls!96)) (not (is-Nil!633 (t!47905 ls!96)))))))

(assert (=> start!10884 e!45091))

(assert (=> start!10884 true))

(declare-fun b!83144 () Bool)

(declare-fun res!42722 () Bool)

(assert (=> b!83144 (=> (not res!42722) (not e!45091))))

(assert (=> b!83144 (= res!42722 (forall_last!0 (quickSort!0 less!5) lambda!10203))))

(declare-fun b!83145 () Bool)

(declare-fun res!42719 () Bool)

(assert (=> b!83145 (=> (not res!42719) (not e!45091))))

(declare-fun forall_lt_implies_le!0 (List!674 Int) Bool)

(assert (=> b!83145 (= res!42719 (forall_lt_implies_le!0 less!5 (h!1001 ls!96)))))

(assert (= (and start!10884 res!42721) b!83135))

(assert (= (and b!83135 res!42727) b!83139))

(assert (= (and b!83139 res!42725) b!83141))

(assert (= (and b!83141 res!42726) b!83140))

(assert (= (and b!83140 res!42724) b!83136))

(assert (= (and b!83136 res!42728) b!83144))

(assert (= (and b!83144 res!42722) b!83133))

(assert (= (and b!83133 res!42720) b!83143))

(assert (= (and b!83143 res!42723) b!83145))

(assert (= (and b!83145 res!42719) b!83137))

(assert (= (and b!83137 res!42729) b!83134))

(assert (= (and b!83134 res!42730) b!83142))

(assert (= (and b!83142 res!42718) b!83138))

(declare-fun m!78832 () Bool)

(assert (=> b!83143 m!78832))

(assert (=> b!83143 m!78832))

(declare-fun m!78834 () Bool)

(assert (=> b!83143 m!78834))

(declare-fun m!78836 () Bool)

(assert (=> b!83136 m!78836))

(assert (=> b!83138 m!78832))

(assert (=> b!83138 m!78832))

(declare-fun m!78838 () Bool)

(assert (=> b!83138 m!78838))

(assert (=> b!83138 m!78838))

(declare-fun m!78840 () Bool)

(assert (=> b!83138 m!78840))

(declare-fun m!78842 () Bool)

(assert (=> b!83139 m!78842))

(declare-fun m!78844 () Bool)

(assert (=> b!83145 m!78844))

(declare-fun m!78846 () Bool)

(assert (=> b!83137 m!78846))

(assert (=> b!83144 m!78832))

(assert (=> b!83144 m!78832))

(declare-fun m!78848 () Bool)

(assert (=> b!83144 m!78848))

(declare-fun m!78850 () Bool)

(assert (=> b!83133 m!78850))

(declare-fun m!78852 () Bool)

(assert (=> b!83134 m!78852))

(declare-fun m!78854 () Bool)

(assert (=> b!83135 m!78854))

(declare-fun m!78856 () Bool)

(assert (=> b!83141 m!78856))

(declare-fun m!78858 () Bool)

(assert (=> b!83140 m!78858))

(assert (=> b!83142 m!78832))

(assert (=> b!83142 m!78832))

(declare-fun m!78860 () Bool)

(assert (=> b!83142 m!78860))

(push 1)

(assert (not b!83143))

(assert (not b!83136))

(assert (not b!83141))

(assert (not b!83134))

(assert (not b!83135))

(assert (not b!83144))

(assert (not b!83137))

(assert (not b!83145))

(assert (not b!83139))

(assert (not b!83142))

(assert (not b!83133))

(assert (not b!83140))

(assert (not b!83138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!83162 () Bool)

(declare-fun e!45100 () List!674)

(assert (=> b!83162 (= e!45100 Nil!633)))

(declare-fun b!83163 () Bool)

(declare-fun e!45101 () List!674)

(assert (=> b!83163 (= e!45100 e!45101)))

(declare-fun c!20850 () Bool)

(declare-fun e!45102 () Bool)

(assert (=> b!83163 (= c!20850 e!45102)))

(declare-fun res!42742 () Bool)

(assert (=> b!83163 (=> (not res!42742) (not e!45102))))

(assert (=> b!83163 (= res!42742 (is-Cons!631 (t!47905 ls!96)))))

(declare-fun lt!19319 () List!674)

(assert (=> b!83163 (= lt!19319 (filter!27 (t!47905 (t!47905 ls!96)) lambda!10203))))

(declare-fun b!83164 () Bool)

(declare-fun dynLambda!993 (Int Int) Bool)

(assert (=> b!83164 (= e!45102 (dynLambda!993 lambda!10203 (h!1001 (t!47905 ls!96))))))

(declare-fun b!83165 () Bool)

(declare-fun res!42741 () Bool)

(declare-fun e!45103 () Bool)

(assert (=> b!83165 (=> (not res!42741) (not e!45103))))

(declare-fun lt!19320 () List!674)

(declare-fun content!133 (List!674) (Set Int))

(assert (=> b!83165 (= res!42741 (subset (content!133 lt!19320) (content!133 (t!47905 ls!96))))))

(declare-fun b!83166 () Bool)

(declare-fun forall!29 (List!674 Int) Bool)

(assert (=> b!83166 (= e!45103 (forall!29 lt!19320 lambda!10203))))

(declare-fun b!83167 () Bool)

(assert (=> b!83167 (= e!45101 lt!19319)))

(declare-fun d!56457 () Bool)

(assert (=> d!56457 e!45103))

(declare-fun res!42743 () Bool)

(assert (=> d!56457 (=> (not res!42743) (not e!45103))))

(declare-fun size!662 (List!674) Int)

(assert (=> d!56457 (= res!42743 (<= (size!662 lt!19320) (size!662 (t!47905 ls!96))))))

(assert (=> d!56457 (= lt!19320 e!45100)))

(declare-fun c!20851 () Bool)

(assert (=> d!56457 (= c!20851 (is-Nil!633 (t!47905 ls!96)))))

(assert (=> d!56457 (= (filter!27 (t!47905 ls!96) lambda!10203) lt!19320)))

(declare-fun b!83168 () Bool)

(assert (=> b!83168 (= e!45101 (Cons!631 (h!1001 (t!47905 ls!96)) lt!19319))))

(assert (= (and b!83163 res!42742) b!83164))

(assert (= (and b!83163 c!20850) b!83168))

(assert (= (and b!83163 (not c!20850)) b!83167))

(assert (= (and d!56457 c!20851) b!83162))

(assert (= (and d!56457 (not c!20851)) b!83163))

(assert (= (and d!56457 res!42743) b!83165))

(assert (= (and b!83165 res!42741) b!83166))

(declare-fun b_lambda!16431 () Bool)

(assert (=> (not b_lambda!16431) (not b!83164)))

(declare-fun m!78862 () Bool)

(assert (=> b!83164 m!78862))

(declare-fun m!78864 () Bool)

(assert (=> d!56457 m!78864))

(declare-fun m!78866 () Bool)

(assert (=> d!56457 m!78866))

(declare-fun m!78868 () Bool)

(assert (=> b!83166 m!78868))

(declare-fun m!78870 () Bool)

(assert (=> b!83165 m!78870))

(declare-fun m!78872 () Bool)

(assert (=> b!83165 m!78872))

(declare-fun m!78874 () Bool)

(assert (=> b!83163 m!78874))

(assert (=> b!83135 d!56457))

(declare-fun bs!40332 () Bool)

(declare-fun d!56459 () Bool)

(assert (= bs!40332 (and d!56459 b!83135)))

(declare-fun lambda!10213 () Int)

(assert (=> bs!40332 (not (= lambda!10213 lambda!10203))))

(declare-fun bs!40333 () Bool)

(assert (= bs!40333 (and d!56459 b!83139)))

(assert (=> bs!40333 (= lambda!10213 lambda!10204)))

(declare-fun bs!40334 () Bool)

(assert (= bs!40334 (and d!56459 b!83141)))

(assert (=> bs!40334 (not (= lambda!10213 lambda!10205))))

(declare-fun bs!40335 () Bool)

(assert (= bs!40335 (and d!56459 b!83137)))

(assert (=> bs!40335 (not (= lambda!10213 lambda!10206))))

(assert (=> d!56459 true))

(declare-fun bs!40336 () Bool)

(declare-fun b!83173 () Bool)

(assert (= bs!40336 (and b!83173 d!56459)))

(declare-fun lambda!10214 () Int)

(assert (=> bs!40336 (not (= lambda!10214 lambda!10213))))

(declare-fun bs!40337 () Bool)

(assert (= bs!40337 (and b!83173 b!83139)))

(assert (=> bs!40337 (not (= lambda!10214 lambda!10204))))

(declare-fun bs!40338 () Bool)

(assert (= bs!40338 (and b!83173 b!83137)))

(assert (=> bs!40338 (= lambda!10214 lambda!10206)))

(declare-fun bs!40339 () Bool)

(assert (= bs!40339 (and b!83173 b!83135)))

(assert (=> bs!40339 (not (= lambda!10214 lambda!10203))))

(declare-fun bs!40340 () Bool)

(assert (= bs!40340 (and b!83173 b!83141)))

(assert (=> bs!40340 (not (= lambda!10214 lambda!10205))))

(assert (=> b!83173 true))

(declare-fun bs!40341 () Bool)

(declare-fun b!83174 () Bool)

(assert (= bs!40341 (and b!83174 d!56459)))

(declare-fun lambda!10215 () Int)

(assert (=> bs!40341 (not (= lambda!10215 lambda!10213))))

(declare-fun bs!40342 () Bool)

(assert (= bs!40342 (and b!83174 b!83139)))

(assert (=> bs!40342 (not (= lambda!10215 lambda!10204))))

(declare-fun bs!40343 () Bool)

(assert (= bs!40343 (and b!83174 b!83137)))

(assert (=> bs!40343 (= lambda!10215 lambda!10206)))

(declare-fun bs!40344 () Bool)

(assert (= bs!40344 (and b!83174 b!83173)))

(assert (=> bs!40344 (= lambda!10215 lambda!10214)))

(declare-fun bs!40345 () Bool)

(assert (= bs!40345 (and b!83174 b!83135)))

(assert (=> bs!40345 (not (= lambda!10215 lambda!10203))))

(declare-fun bs!40346 () Bool)

(assert (= bs!40346 (and b!83174 b!83141)))

(assert (=> bs!40346 (not (= lambda!10215 lambda!10205))))

(assert (=> b!83174 true))

(declare-fun e!45106 () Bool)

(assert (=> d!56459 e!45106))

(declare-fun c!20854 () Bool)

(assert (=> d!56459 (= c!20854 (is-Cons!631 equal!10))))

(assert (=> d!56459 (forall!29 equal!10 lambda!10213)))

(assert (=> d!56459 (= (forall_eq_implies_le!0 equal!10 (h!1001 ls!96)) true)))

(assert (=> b!83173 (= e!45106 (forall!29 equal!10 lambda!10214))))

(declare-fun lt!19323 () Bool)

(assert (=> b!83173 (= lt!19323 (forall_eq_implies_le!0 (t!47905 equal!10) (h!1001 ls!96)))))

(assert (=> b!83174 (= e!45106 (forall!29 equal!10 lambda!10215))))

(assert (= (and d!56459 c!20854) b!83173))

(assert (= (and d!56459 (not c!20854)) b!83174))

(declare-fun m!78876 () Bool)

(assert (=> d!56459 m!78876))

(declare-fun m!78878 () Bool)

(assert (=> b!83173 m!78878))

(declare-fun m!78880 () Bool)

(assert (=> b!83173 m!78880))

(declare-fun m!78882 () Bool)

(assert (=> b!83174 m!78882))

(assert (=> b!83134 d!56459))

(declare-fun b!83177 () Bool)

(declare-fun e!45107 () List!674)

(assert (=> b!83177 (= e!45107 Nil!633)))

(declare-fun b!83178 () Bool)

(declare-fun e!45108 () List!674)

(assert (=> b!83178 (= e!45107 e!45108)))

(declare-fun c!20855 () Bool)

(declare-fun e!45109 () Bool)

(assert (=> b!83178 (= c!20855 e!45109)))

(declare-fun res!42745 () Bool)

(assert (=> b!83178 (=> (not res!42745) (not e!45109))))

(assert (=> b!83178 (= res!42745 (is-Cons!631 (t!47905 ls!96)))))

(declare-fun lt!19324 () List!674)

(assert (=> b!83178 (= lt!19324 (filter!27 (t!47905 (t!47905 ls!96)) lambda!10205))))

(declare-fun b!83179 () Bool)

(assert (=> b!83179 (= e!45109 (dynLambda!993 lambda!10205 (h!1001 (t!47905 ls!96))))))

(declare-fun b!83180 () Bool)

(declare-fun res!42744 () Bool)

(declare-fun e!45110 () Bool)

(assert (=> b!83180 (=> (not res!42744) (not e!45110))))

(declare-fun lt!19325 () List!674)

(assert (=> b!83180 (= res!42744 (subset (content!133 lt!19325) (content!133 (t!47905 ls!96))))))

(declare-fun b!83181 () Bool)

(assert (=> b!83181 (= e!45110 (forall!29 lt!19325 lambda!10205))))

(declare-fun b!83182 () Bool)

(assert (=> b!83182 (= e!45108 lt!19324)))

(declare-fun d!56461 () Bool)

(assert (=> d!56461 e!45110))

(declare-fun res!42746 () Bool)

(assert (=> d!56461 (=> (not res!42746) (not e!45110))))

(assert (=> d!56461 (= res!42746 (<= (size!662 lt!19325) (size!662 (t!47905 ls!96))))))

(assert (=> d!56461 (= lt!19325 e!45107)))

(declare-fun c!20856 () Bool)

(assert (=> d!56461 (= c!20856 (is-Nil!633 (t!47905 ls!96)))))

(assert (=> d!56461 (= (filter!27 (t!47905 ls!96) lambda!10205) lt!19325)))

(declare-fun b!83183 () Bool)

(assert (=> b!83183 (= e!45108 (Cons!631 (h!1001 (t!47905 ls!96)) lt!19324))))

(assert (= (and b!83178 res!42745) b!83179))

(assert (= (and b!83178 c!20855) b!83183))

(assert (= (and b!83178 (not c!20855)) b!83182))

(assert (= (and d!56461 c!20856) b!83177))

(assert (= (and d!56461 (not c!20856)) b!83178))

(assert (= (and d!56461 res!42746) b!83180))

(assert (= (and b!83180 res!42744) b!83181))

(declare-fun b_lambda!16433 () Bool)

(assert (=> (not b_lambda!16433) (not b!83179)))

(declare-fun m!78884 () Bool)

(assert (=> b!83179 m!78884))

(declare-fun m!78886 () Bool)

(assert (=> d!56461 m!78886))

(assert (=> d!56461 m!78866))

(declare-fun m!78888 () Bool)

(assert (=> b!83181 m!78888))

(declare-fun m!78890 () Bool)

(assert (=> b!83180 m!78890))

(assert (=> b!83180 m!78872))

(declare-fun m!78892 () Bool)

(assert (=> b!83178 m!78892))

(assert (=> b!83141 d!56461))

(declare-fun bs!40347 () Bool)

(declare-fun b!83197 () Bool)

(assert (= bs!40347 (and b!83197 d!56459)))

(declare-fun lambda!10228 () Int)

(assert (=> bs!40347 (not (= lambda!10228 lambda!10213))))

(declare-fun bs!40348 () Bool)

(assert (= bs!40348 (and b!83197 b!83139)))

(assert (=> bs!40348 (not (= lambda!10228 lambda!10204))))

(declare-fun bs!40349 () Bool)

(assert (= bs!40349 (and b!83197 b!83137)))

(assert (=> bs!40349 (not (= lambda!10228 lambda!10206))))

(declare-fun bs!40350 () Bool)

(assert (= bs!40350 (and b!83197 b!83174)))

(assert (=> bs!40350 (not (= lambda!10228 lambda!10215))))

(declare-fun bs!40351 () Bool)

(assert (= bs!40351 (and b!83197 b!83173)))

(assert (=> bs!40351 (not (= lambda!10228 lambda!10214))))

(declare-fun bs!40352 () Bool)

(assert (= bs!40352 (and b!83197 b!83135)))

(assert (=> bs!40352 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10228 lambda!10203))))

(declare-fun bs!40353 () Bool)

(assert (= bs!40353 (and b!83197 b!83141)))

(assert (=> bs!40353 (not (= lambda!10228 lambda!10205))))

(assert (=> b!83197 true))

(declare-fun lambda!10229 () Int)

(assert (=> bs!40347 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10229 lambda!10213))))

(assert (=> bs!40348 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10229 lambda!10204))))

(assert (=> bs!40349 (not (= lambda!10229 lambda!10206))))

(assert (=> bs!40350 (not (= lambda!10229 lambda!10215))))

(assert (=> bs!40351 (not (= lambda!10229 lambda!10214))))

(assert (=> bs!40352 (not (= lambda!10229 lambda!10203))))

(assert (=> bs!40353 (not (= lambda!10229 lambda!10205))))

(assert (=> b!83197 (not (= lambda!10229 lambda!10228))))

(assert (=> b!83197 true))

(declare-fun lambda!10230 () Int)

(assert (=> bs!40347 (not (= lambda!10230 lambda!10213))))

(assert (=> bs!40348 (not (= lambda!10230 lambda!10204))))

(assert (=> bs!40349 (not (= lambda!10230 lambda!10206))))

(assert (=> bs!40350 (not (= lambda!10230 lambda!10215))))

(assert (=> bs!40351 (not (= lambda!10230 lambda!10214))))

(assert (=> bs!40352 (not (= lambda!10230 lambda!10203))))

(assert (=> bs!40353 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10230 lambda!10205))))

(assert (=> b!83197 (not (= lambda!10230 lambda!10229))))

(assert (=> b!83197 (not (= lambda!10230 lambda!10228))))

(assert (=> b!83197 true))

(declare-fun b!83194 () Bool)

(declare-fun e!45123 () Bool)

(declare-fun filter_preserves_forall!0 (List!674 Int Int) Bool)

(assert (=> b!83194 (= e!45123 (filter_preserves_forall!0 (t!47905 less!5) lambda!10229 lambda!10206))))

(declare-fun lt!19341 () List!674)

(declare-fun lt!19339 () List!674)

(declare-fun e!45122 () Bool)

(declare-fun b!83195 () Bool)

(declare-fun lt!19338 () List!674)

(assert (=> b!83195 (= e!45122 (append_preserves_forall!0 (++!82 (quickSort!0 lt!19338) lt!19339) (quickSort!0 lt!19341) lambda!10206))))

(declare-fun b!83196 () Bool)

(declare-fun e!45125 () Bool)

(assert (=> b!83196 (= e!45125 (sort_preserves_forall!0 lt!19341 lambda!10206))))

(declare-fun e!45124 () Bool)

(assert (=> b!83197 (= e!45124 e!45122)))

(declare-fun res!42763 () Bool)

(assert (=> b!83197 (=> (not res!42763) (not e!45122))))

(assert (=> b!83197 (= res!42763 (append_preserves_forall!0 (quickSort!0 lt!19338) lt!19339 lambda!10206))))

(declare-fun lt!19342 () Bool)

(assert (=> b!83197 (= lt!19342 e!45125)))

(declare-fun res!42766 () Bool)

(assert (=> b!83197 (=> (not res!42766) (not e!45125))))

(assert (=> b!83197 (= res!42766 (sort_preserves_forall!0 lt!19338 lambda!10206))))

(declare-fun lt!19340 () Bool)

(declare-fun e!45121 () Bool)

(assert (=> b!83197 (= lt!19340 e!45121)))

(declare-fun res!42764 () Bool)

(assert (=> b!83197 (=> (not res!42764) (not e!45121))))

(assert (=> b!83197 (= res!42764 e!45123)))

(declare-fun res!42762 () Bool)

(assert (=> b!83197 (=> (not res!42762) (not e!45123))))

(assert (=> b!83197 (= res!42762 (filter_preserves_forall!0 (t!47905 less!5) lambda!10228 lambda!10206))))

(assert (=> b!83197 (= lt!19341 (filter!27 (t!47905 less!5) lambda!10230))))

(assert (=> b!83197 (= lt!19339 (Cons!631 (h!1001 less!5) (filter!27 (t!47905 less!5) lambda!10229)))))

(assert (=> b!83197 (= lt!19338 (filter!27 (t!47905 less!5) lambda!10228))))

(declare-fun b!83198 () Bool)

(assert (=> b!83198 (= e!45121 (filter_preserves_forall!0 (t!47905 less!5) lambda!10230 lambda!10206))))

(declare-fun d!56463 () Bool)

(assert (=> d!56463 (forall!29 (quickSort!0 less!5) lambda!10206)))

(declare-fun lt!19343 () Bool)

(assert (=> d!56463 (= lt!19343 e!45124)))

(declare-fun res!42765 () Bool)

(assert (=> d!56463 (=> res!42765 e!45124)))

(assert (=> d!56463 (= res!42765 (or (is-Nil!633 less!5) (and (is-Cons!631 less!5) (is-Nil!633 (t!47905 less!5)))))))

(assert (=> d!56463 (forall!29 less!5 lambda!10206)))

(assert (=> d!56463 (= (sort_preserves_forall!0 less!5 lambda!10206) true)))

(assert (= (and d!56463 (not res!42765)) b!83197))

(assert (= (and b!83197 res!42762) b!83194))

(assert (= (and b!83197 res!42764) b!83198))

(assert (= (and b!83197 res!42766) b!83196))

(assert (= (and b!83197 res!42763) b!83195))

(declare-fun m!78894 () Bool)

(assert (=> b!83196 m!78894))

(declare-fun m!78896 () Bool)

(assert (=> b!83197 m!78896))

(declare-fun m!78898 () Bool)

(assert (=> b!83197 m!78898))

(declare-fun m!78900 () Bool)

(assert (=> b!83197 m!78900))

(declare-fun m!78902 () Bool)

(assert (=> b!83197 m!78902))

(declare-fun m!78904 () Bool)

(assert (=> b!83197 m!78904))

(assert (=> b!83197 m!78898))

(declare-fun m!78906 () Bool)

(assert (=> b!83197 m!78906))

(declare-fun m!78908 () Bool)

(assert (=> b!83197 m!78908))

(assert (=> d!56463 m!78832))

(assert (=> d!56463 m!78832))

(declare-fun m!78910 () Bool)

(assert (=> d!56463 m!78910))

(declare-fun m!78912 () Bool)

(assert (=> d!56463 m!78912))

(declare-fun m!78914 () Bool)

(assert (=> b!83198 m!78914))

(declare-fun m!78916 () Bool)

(assert (=> b!83194 m!78916))

(assert (=> b!83195 m!78898))

(assert (=> b!83195 m!78898))

(declare-fun m!78918 () Bool)

(assert (=> b!83195 m!78918))

(declare-fun m!78920 () Bool)

(assert (=> b!83195 m!78920))

(assert (=> b!83195 m!78918))

(assert (=> b!83195 m!78920))

(declare-fun m!78922 () Bool)

(assert (=> b!83195 m!78922))

(assert (=> b!83137 d!56463))

(declare-fun b!83199 () Bool)

(declare-fun e!45126 () List!674)

(assert (=> b!83199 (= e!45126 Nil!633)))

(declare-fun b!83200 () Bool)

(declare-fun e!45127 () List!674)

(assert (=> b!83200 (= e!45126 e!45127)))

(declare-fun c!20857 () Bool)

(declare-fun e!45128 () Bool)

(assert (=> b!83200 (= c!20857 e!45128)))

(declare-fun res!42768 () Bool)

(assert (=> b!83200 (=> (not res!42768) (not e!45128))))

(assert (=> b!83200 (= res!42768 (is-Cons!631 (t!47905 ls!96)))))

(declare-fun lt!19344 () List!674)

(assert (=> b!83200 (= lt!19344 (filter!27 (t!47905 (t!47905 ls!96)) lambda!10204))))

(declare-fun b!83201 () Bool)

(assert (=> b!83201 (= e!45128 (dynLambda!993 lambda!10204 (h!1001 (t!47905 ls!96))))))

(declare-fun b!83202 () Bool)

(declare-fun res!42767 () Bool)

(declare-fun e!45129 () Bool)

(assert (=> b!83202 (=> (not res!42767) (not e!45129))))

(declare-fun lt!19345 () List!674)

(assert (=> b!83202 (= res!42767 (subset (content!133 lt!19345) (content!133 (t!47905 ls!96))))))

(declare-fun b!83203 () Bool)

(assert (=> b!83203 (= e!45129 (forall!29 lt!19345 lambda!10204))))

(declare-fun b!83204 () Bool)

(assert (=> b!83204 (= e!45127 lt!19344)))

(declare-fun d!56465 () Bool)

(assert (=> d!56465 e!45129))

(declare-fun res!42769 () Bool)

(assert (=> d!56465 (=> (not res!42769) (not e!45129))))

(assert (=> d!56465 (= res!42769 (<= (size!662 lt!19345) (size!662 (t!47905 ls!96))))))

(assert (=> d!56465 (= lt!19345 e!45126)))

(declare-fun c!20858 () Bool)

(assert (=> d!56465 (= c!20858 (is-Nil!633 (t!47905 ls!96)))))

(assert (=> d!56465 (= (filter!27 (t!47905 ls!96) lambda!10204) lt!19345)))

(declare-fun b!83205 () Bool)

(assert (=> b!83205 (= e!45127 (Cons!631 (h!1001 (t!47905 ls!96)) lt!19344))))

(assert (= (and b!83200 res!42768) b!83201))

(assert (= (and b!83200 c!20857) b!83205))

(assert (= (and b!83200 (not c!20857)) b!83204))

(assert (= (and d!56465 c!20858) b!83199))

(assert (= (and d!56465 (not c!20858)) b!83200))

(assert (= (and d!56465 res!42769) b!83202))

(assert (= (and b!83202 res!42767) b!83203))

(declare-fun b_lambda!16435 () Bool)

(assert (=> (not b_lambda!16435) (not b!83201)))

(declare-fun m!78924 () Bool)

(assert (=> b!83201 m!78924))

(declare-fun m!78926 () Bool)

(assert (=> d!56465 m!78926))

(assert (=> d!56465 m!78866))

(declare-fun m!78928 () Bool)

(assert (=> b!83203 m!78928))

(declare-fun m!78930 () Bool)

(assert (=> b!83202 m!78930))

(assert (=> b!83202 m!78872))

(declare-fun m!78932 () Bool)

(assert (=> b!83200 m!78932))

(assert (=> b!83139 d!56465))

(declare-fun bs!40354 () Bool)

(declare-fun b!83210 () Bool)

(assert (= bs!40354 (and b!83210 d!56459)))

(declare-fun lambda!10237 () Int)

(assert (=> bs!40354 (not (= lambda!10237 lambda!10213))))

(declare-fun bs!40355 () Bool)

(assert (= bs!40355 (and b!83210 b!83139)))

(assert (=> bs!40355 (not (= lambda!10237 lambda!10204))))

(declare-fun bs!40356 () Bool)

(assert (= bs!40356 (and b!83210 b!83137)))

(assert (=> bs!40356 (not (= lambda!10237 lambda!10206))))

(declare-fun bs!40357 () Bool)

(assert (= bs!40357 (and b!83210 b!83174)))

(assert (=> bs!40357 (not (= lambda!10237 lambda!10215))))

(declare-fun bs!40358 () Bool)

(assert (= bs!40358 (and b!83210 b!83173)))

(assert (=> bs!40358 (not (= lambda!10237 lambda!10214))))

(declare-fun bs!40359 () Bool)

(assert (= bs!40359 (and b!83210 b!83135)))

(assert (=> bs!40359 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10237 lambda!10203))))

(declare-fun bs!40360 () Bool)

(assert (= bs!40360 (and b!83210 b!83141)))

(assert (=> bs!40360 (not (= lambda!10237 lambda!10205))))

(declare-fun bs!40361 () Bool)

(assert (= bs!40361 (and b!83210 b!83197)))

(assert (=> bs!40361 (not (= lambda!10237 lambda!10230))))

(assert (=> bs!40361 (not (= lambda!10237 lambda!10229))))

(assert (=> bs!40361 (= lambda!10237 lambda!10228)))

(assert (=> b!83210 true))

(declare-fun lambda!10238 () Int)

(assert (=> bs!40354 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10238 lambda!10213))))

(assert (=> bs!40355 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10238 lambda!10204))))

(assert (=> bs!40356 (not (= lambda!10238 lambda!10206))))

(assert (=> bs!40357 (not (= lambda!10238 lambda!10215))))

(assert (=> b!83210 (not (= lambda!10238 lambda!10237))))

(assert (=> bs!40358 (not (= lambda!10238 lambda!10214))))

(assert (=> bs!40359 (not (= lambda!10238 lambda!10203))))

(assert (=> bs!40360 (not (= lambda!10238 lambda!10205))))

(assert (=> bs!40361 (not (= lambda!10238 lambda!10230))))

(assert (=> bs!40361 (= lambda!10238 lambda!10229)))

(assert (=> bs!40361 (not (= lambda!10238 lambda!10228))))

(assert (=> b!83210 true))

(declare-fun lambda!10239 () Int)

(assert (=> bs!40354 (not (= lambda!10239 lambda!10213))))

(assert (=> bs!40355 (not (= lambda!10239 lambda!10204))))

(assert (=> bs!40356 (not (= lambda!10239 lambda!10206))))

(assert (=> bs!40357 (not (= lambda!10239 lambda!10215))))

(assert (=> b!83210 (not (= lambda!10239 lambda!10238))))

(assert (=> b!83210 (not (= lambda!10239 lambda!10237))))

(assert (=> bs!40358 (not (= lambda!10239 lambda!10214))))

(assert (=> bs!40359 (not (= lambda!10239 lambda!10203))))

(assert (=> bs!40360 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10239 lambda!10205))))

(assert (=> bs!40361 (= lambda!10239 lambda!10230)))

(assert (=> bs!40361 (not (= lambda!10239 lambda!10229))))

(assert (=> bs!40361 (not (= lambda!10239 lambda!10228))))

(assert (=> b!83210 true))

(declare-fun d!56467 () Bool)

(declare-fun isSorted!1 (List!674) Bool)

(assert (=> d!56467 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!19354 () Bool)

(declare-fun e!45134 () Bool)

(assert (=> d!56467 (= lt!19354 e!45134)))

(declare-fun res!42777 () Bool)

(assert (=> d!56467 (=> res!42777 e!45134)))

(assert (=> d!56467 (= res!42777 (or (is-Nil!633 less!5) (and (is-Cons!631 less!5) (is-Nil!633 (t!47905 less!5)))))))

(assert (=> d!56467 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!45135 () Bool)

(assert (=> b!83210 (= e!45134 e!45135)))

(declare-fun res!42776 () Bool)

(assert (=> b!83210 (=> (not res!42776) (not e!45135))))

(declare-fun lt!19355 () List!674)

(declare-fun lt!19356 () List!674)

(assert (=> b!83210 (= res!42776 (append_sorted!0 (quickSort!0 lt!19355) lt!19356))))

(declare-fun lt!19357 () List!674)

(assert (=> b!83210 (= lt!19357 (filter!27 (t!47905 less!5) lambda!10239))))

(assert (=> b!83210 (= lt!19356 (Cons!631 (h!1001 less!5) (filter!27 (t!47905 less!5) lambda!10238)))))

(assert (=> b!83210 (= lt!19355 (filter!27 (t!47905 less!5) lambda!10237))))

(declare-fun b!83211 () Bool)

(assert (=> b!83211 (= e!45135 (append_sorted!0 (++!82 (quickSort!0 lt!19355) lt!19356) (quickSort!0 lt!19357)))))

(assert (= (and d!56467 (not res!42777)) b!83210))

(assert (= (and b!83210 res!42776) b!83211))

(assert (=> d!56467 m!78832))

(assert (=> d!56467 m!78832))

(declare-fun m!78934 () Bool)

(assert (=> d!56467 m!78934))

(declare-fun m!78936 () Bool)

(assert (=> b!83210 m!78936))

(declare-fun m!78938 () Bool)

(assert (=> b!83210 m!78938))

(declare-fun m!78940 () Bool)

(assert (=> b!83210 m!78940))

(assert (=> b!83210 m!78936))

(declare-fun m!78942 () Bool)

(assert (=> b!83210 m!78942))

(declare-fun m!78944 () Bool)

(assert (=> b!83210 m!78944))

(assert (=> b!83211 m!78936))

(assert (=> b!83211 m!78936))

(declare-fun m!78946 () Bool)

(assert (=> b!83211 m!78946))

(declare-fun m!78948 () Bool)

(assert (=> b!83211 m!78948))

(assert (=> b!83211 m!78946))

(assert (=> b!83211 m!78948))

(declare-fun m!78950 () Bool)

(assert (=> b!83211 m!78950))

(assert (=> b!83140 d!56467))

(declare-fun d!56469 () Bool)

(declare-fun e!45141 () Bool)

(assert (=> d!56469 e!45141))

(declare-fun c!20861 () Bool)

(assert (=> d!56469 (= c!20861 (is-Cons!631 (quickSort!0 less!5)))))

(declare-fun e!45140 () Bool)

(assert (=> d!56469 e!45140))

(declare-fun res!42780 () Bool)

(assert (=> d!56469 (=> (not res!42780) (not e!45140))))

(assert (=> d!56469 (= res!42780 (forall!29 (quickSort!0 less!5) lambda!10206))))

(assert (=> d!56469 (= (append_preserves_forall!0 (quickSort!0 less!5) equal!10 lambda!10206) true)))

(declare-fun b!83218 () Bool)

(assert (=> b!83218 (= e!45140 (forall!29 equal!10 lambda!10206))))

(declare-fun b!83219 () Bool)

(assert (=> b!83219 (= e!45141 (forall!29 (++!82 (quickSort!0 less!5) equal!10) lambda!10206))))

(declare-fun lt!19360 () Bool)

(assert (=> b!83219 (= lt!19360 (append_preserves_forall!0 (t!47905 (quickSort!0 less!5)) equal!10 lambda!10206))))

(declare-fun b!83220 () Bool)

(assert (=> b!83220 (= e!45141 (forall!29 (++!82 (quickSort!0 less!5) equal!10) lambda!10206))))

(assert (= (and d!56469 res!42780) b!83218))

(assert (= (and d!56469 c!20861) b!83219))

(assert (= (and d!56469 (not c!20861)) b!83220))

(assert (=> d!56469 m!78832))

(assert (=> d!56469 m!78910))

(declare-fun m!78952 () Bool)

(assert (=> b!83218 m!78952))

(assert (=> b!83219 m!78832))

(assert (=> b!83219 m!78838))

(assert (=> b!83219 m!78838))

(declare-fun m!78954 () Bool)

(assert (=> b!83219 m!78954))

(declare-fun m!78956 () Bool)

(assert (=> b!83219 m!78956))

(assert (=> b!83220 m!78832))

(assert (=> b!83220 m!78838))

(assert (=> b!83220 m!78838))

(assert (=> b!83220 m!78954))

(assert (=> b!83142 d!56469))

(declare-fun bs!40362 () Bool)

(declare-fun b!83232 () Bool)

(assert (= bs!40362 (and b!83232 d!56459)))

(declare-fun lambda!10246 () Int)

(assert (=> bs!40362 (not (= lambda!10246 lambda!10213))))

(declare-fun bs!40363 () Bool)

(assert (= bs!40363 (and b!83232 b!83139)))

(assert (=> bs!40363 (not (= lambda!10246 lambda!10204))))

(declare-fun bs!40364 () Bool)

(assert (= bs!40364 (and b!83232 b!83137)))

(assert (=> bs!40364 (not (= lambda!10246 lambda!10206))))

(declare-fun bs!40365 () Bool)

(assert (= bs!40365 (and b!83232 b!83174)))

(assert (=> bs!40365 (not (= lambda!10246 lambda!10215))))

(declare-fun bs!40366 () Bool)

(assert (= bs!40366 (and b!83232 b!83210)))

(assert (=> bs!40366 (not (= lambda!10246 lambda!10239))))

(assert (=> bs!40366 (not (= lambda!10246 lambda!10238))))

(assert (=> bs!40366 (= lambda!10246 lambda!10237)))

(declare-fun bs!40367 () Bool)

(assert (= bs!40367 (and b!83232 b!83173)))

(assert (=> bs!40367 (not (= lambda!10246 lambda!10214))))

(declare-fun bs!40368 () Bool)

(assert (= bs!40368 (and b!83232 b!83135)))

(assert (=> bs!40368 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10246 lambda!10203))))

(declare-fun bs!40369 () Bool)

(assert (= bs!40369 (and b!83232 b!83141)))

(assert (=> bs!40369 (not (= lambda!10246 lambda!10205))))

(declare-fun bs!40370 () Bool)

(assert (= bs!40370 (and b!83232 b!83197)))

(assert (=> bs!40370 (not (= lambda!10246 lambda!10230))))

(assert (=> bs!40370 (not (= lambda!10246 lambda!10229))))

(assert (=> bs!40370 (= lambda!10246 lambda!10228)))

(assert (=> b!83232 true))

(declare-fun lambda!10247 () Int)

(assert (=> bs!40362 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10247 lambda!10213))))

(assert (=> b!83232 (not (= lambda!10247 lambda!10246))))

(assert (=> bs!40363 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10247 lambda!10204))))

(assert (=> bs!40364 (not (= lambda!10247 lambda!10206))))

(assert (=> bs!40365 (not (= lambda!10247 lambda!10215))))

(assert (=> bs!40366 (not (= lambda!10247 lambda!10239))))

(assert (=> bs!40366 (= lambda!10247 lambda!10238)))

(assert (=> bs!40366 (not (= lambda!10247 lambda!10237))))

(assert (=> bs!40367 (not (= lambda!10247 lambda!10214))))

(assert (=> bs!40368 (not (= lambda!10247 lambda!10203))))

(assert (=> bs!40369 (not (= lambda!10247 lambda!10205))))

(assert (=> bs!40370 (not (= lambda!10247 lambda!10230))))

(assert (=> bs!40370 (= lambda!10247 lambda!10229)))

(assert (=> bs!40370 (not (= lambda!10247 lambda!10228))))

(assert (=> b!83232 true))

(declare-fun lambda!10248 () Int)

(assert (=> bs!40362 (not (= lambda!10248 lambda!10213))))

(assert (=> b!83232 (not (= lambda!10248 lambda!10247))))

(assert (=> b!83232 (not (= lambda!10248 lambda!10246))))

(assert (=> bs!40363 (not (= lambda!10248 lambda!10204))))

(assert (=> bs!40364 (not (= lambda!10248 lambda!10206))))

(assert (=> bs!40365 (not (= lambda!10248 lambda!10215))))

(assert (=> bs!40366 (= lambda!10248 lambda!10239)))

(assert (=> bs!40366 (not (= lambda!10248 lambda!10238))))

(assert (=> bs!40366 (not (= lambda!10248 lambda!10237))))

(assert (=> bs!40367 (not (= lambda!10248 lambda!10214))))

(assert (=> bs!40368 (not (= lambda!10248 lambda!10203))))

(assert (=> bs!40369 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10248 lambda!10205))))

(assert (=> bs!40370 (= lambda!10248 lambda!10230)))

(assert (=> bs!40370 (not (= lambda!10248 lambda!10229))))

(assert (=> bs!40370 (not (= lambda!10248 lambda!10228))))

(assert (=> b!83232 true))

(declare-fun b!83231 () Bool)

(declare-fun e!45147 () List!674)

(assert (=> b!83231 (= e!45147 less!5)))

(declare-fun b!83229 () Bool)

(declare-fun e!45146 () List!674)

(assert (=> b!83229 (= e!45146 Nil!633)))

(declare-fun d!56471 () Bool)

(declare-fun c!20866 () Bool)

(assert (=> d!56471 (= c!20866 (is-Nil!633 less!5))))

(assert (=> d!56471 (= (quickSort!0 less!5) e!45146)))

(declare-fun b!83230 () Bool)

(assert (=> b!83230 (= e!45146 e!45147)))

(declare-fun c!20867 () Bool)

(assert (=> b!83230 (= c!20867 (and (is-Cons!631 less!5) (is-Nil!633 (t!47905 less!5))))))

(assert (=> b!83232 (= e!45147 (++!82 (++!82 (quickSort!0 (filter!27 (t!47905 less!5) lambda!10246)) (Cons!631 (h!1001 less!5) (filter!27 (t!47905 less!5) lambda!10247))) (quickSort!0 (filter!27 (t!47905 less!5) lambda!10248))))))

(assert (= (and b!83230 c!20867) b!83231))

(assert (= (and b!83230 (not c!20867)) b!83232))

(assert (= (and d!56471 c!20866) b!83229))

(assert (= (and d!56471 (not c!20866)) b!83230))

(declare-fun m!78958 () Bool)

(assert (=> b!83232 m!78958))

(declare-fun m!78960 () Bool)

(assert (=> b!83232 m!78960))

(declare-fun m!78962 () Bool)

(assert (=> b!83232 m!78962))

(declare-fun m!78964 () Bool)

(assert (=> b!83232 m!78964))

(declare-fun m!78966 () Bool)

(assert (=> b!83232 m!78966))

(declare-fun m!78968 () Bool)

(assert (=> b!83232 m!78968))

(assert (=> b!83232 m!78960))

(assert (=> b!83232 m!78962))

(assert (=> b!83232 m!78964))

(declare-fun m!78970 () Bool)

(assert (=> b!83232 m!78970))

(assert (=> b!83232 m!78958))

(assert (=> b!83232 m!78966))

(assert (=> b!83142 d!56471))

(declare-fun bs!40371 () Bool)

(declare-fun d!56473 () Bool)

(assert (= bs!40371 (and d!56473 d!56459)))

(declare-fun lambda!10255 () Int)

(assert (=> bs!40371 (not (= lambda!10255 lambda!10213))))

(declare-fun bs!40372 () Bool)

(assert (= bs!40372 (and d!56473 b!83232)))

(assert (=> bs!40372 (not (= lambda!10255 lambda!10248))))

(assert (=> bs!40372 (not (= lambda!10255 lambda!10247))))

(assert (=> bs!40372 (= (= (h!1001 ls!96) (h!1001 less!5)) (= lambda!10255 lambda!10246))))

(declare-fun bs!40373 () Bool)

(assert (= bs!40373 (and d!56473 b!83139)))

(assert (=> bs!40373 (not (= lambda!10255 lambda!10204))))

(declare-fun bs!40374 () Bool)

(assert (= bs!40374 (and d!56473 b!83137)))

(assert (=> bs!40374 (not (= lambda!10255 lambda!10206))))

(declare-fun bs!40375 () Bool)

(assert (= bs!40375 (and d!56473 b!83174)))

(assert (=> bs!40375 (not (= lambda!10255 lambda!10215))))

(declare-fun bs!40376 () Bool)

(assert (= bs!40376 (and d!56473 b!83210)))

(assert (=> bs!40376 (not (= lambda!10255 lambda!10239))))

(assert (=> bs!40376 (not (= lambda!10255 lambda!10238))))

(assert (=> bs!40376 (= (= (h!1001 ls!96) (h!1001 less!5)) (= lambda!10255 lambda!10237))))

(declare-fun bs!40377 () Bool)

(assert (= bs!40377 (and d!56473 b!83173)))

(assert (=> bs!40377 (not (= lambda!10255 lambda!10214))))

(declare-fun bs!40378 () Bool)

(assert (= bs!40378 (and d!56473 b!83135)))

(assert (=> bs!40378 (= lambda!10255 lambda!10203)))

(declare-fun bs!40379 () Bool)

(assert (= bs!40379 (and d!56473 b!83141)))

(assert (=> bs!40379 (not (= lambda!10255 lambda!10205))))

(declare-fun bs!40380 () Bool)

(assert (= bs!40380 (and d!56473 b!83197)))

(assert (=> bs!40380 (not (= lambda!10255 lambda!10230))))

(assert (=> bs!40380 (not (= lambda!10255 lambda!10229))))

(assert (=> bs!40380 (= (= (h!1001 ls!96) (h!1001 less!5)) (= lambda!10255 lambda!10228))))

(assert (=> d!56473 true))

(declare-fun bs!40381 () Bool)

(declare-fun b!83237 () Bool)

(assert (= bs!40381 (and b!83237 d!56459)))

(declare-fun lambda!10256 () Int)

(assert (=> bs!40381 (not (= lambda!10256 lambda!10213))))

(declare-fun bs!40382 () Bool)

(assert (= bs!40382 (and b!83237 b!83232)))

(assert (=> bs!40382 (not (= lambda!10256 lambda!10248))))

(assert (=> bs!40382 (not (= lambda!10256 lambda!10247))))

(assert (=> bs!40382 (not (= lambda!10256 lambda!10246))))

(declare-fun bs!40383 () Bool)

(assert (= bs!40383 (and b!83237 b!83139)))

(assert (=> bs!40383 (not (= lambda!10256 lambda!10204))))

(declare-fun bs!40384 () Bool)

(assert (= bs!40384 (and b!83237 b!83137)))

(assert (=> bs!40384 (= lambda!10256 lambda!10206)))

(declare-fun bs!40385 () Bool)

(assert (= bs!40385 (and b!83237 d!56473)))

(assert (=> bs!40385 (not (= lambda!10256 lambda!10255))))

(declare-fun bs!40386 () Bool)

(assert (= bs!40386 (and b!83237 b!83174)))

(assert (=> bs!40386 (= lambda!10256 lambda!10215)))

(declare-fun bs!40387 () Bool)

(assert (= bs!40387 (and b!83237 b!83210)))

(assert (=> bs!40387 (not (= lambda!10256 lambda!10239))))

(assert (=> bs!40387 (not (= lambda!10256 lambda!10238))))

(assert (=> bs!40387 (not (= lambda!10256 lambda!10237))))

(declare-fun bs!40388 () Bool)

(assert (= bs!40388 (and b!83237 b!83173)))

(assert (=> bs!40388 (= lambda!10256 lambda!10214)))

(declare-fun bs!40389 () Bool)

(assert (= bs!40389 (and b!83237 b!83135)))

(assert (=> bs!40389 (not (= lambda!10256 lambda!10203))))

(declare-fun bs!40390 () Bool)

(assert (= bs!40390 (and b!83237 b!83141)))

(assert (=> bs!40390 (not (= lambda!10256 lambda!10205))))

(declare-fun bs!40391 () Bool)

(assert (= bs!40391 (and b!83237 b!83197)))

(assert (=> bs!40391 (not (= lambda!10256 lambda!10230))))

(assert (=> bs!40391 (not (= lambda!10256 lambda!10229))))

(assert (=> bs!40391 (not (= lambda!10256 lambda!10228))))

(assert (=> b!83237 true))

(declare-fun bs!40392 () Bool)

(declare-fun b!83238 () Bool)

(assert (= bs!40392 (and b!83238 d!56459)))

(declare-fun lambda!10257 () Int)

(assert (=> bs!40392 (not (= lambda!10257 lambda!10213))))

(declare-fun bs!40393 () Bool)

(assert (= bs!40393 (and b!83238 b!83232)))

(assert (=> bs!40393 (not (= lambda!10257 lambda!10248))))

(assert (=> bs!40393 (not (= lambda!10257 lambda!10247))))

(assert (=> bs!40393 (not (= lambda!10257 lambda!10246))))

(declare-fun bs!40394 () Bool)

(assert (= bs!40394 (and b!83238 b!83139)))

(assert (=> bs!40394 (not (= lambda!10257 lambda!10204))))

(declare-fun bs!40395 () Bool)

(assert (= bs!40395 (and b!83238 b!83137)))

(assert (=> bs!40395 (= lambda!10257 lambda!10206)))

(declare-fun bs!40396 () Bool)

(assert (= bs!40396 (and b!83238 b!83237)))

(assert (=> bs!40396 (= lambda!10257 lambda!10256)))

(declare-fun bs!40397 () Bool)

(assert (= bs!40397 (and b!83238 d!56473)))

(assert (=> bs!40397 (not (= lambda!10257 lambda!10255))))

(declare-fun bs!40398 () Bool)

(assert (= bs!40398 (and b!83238 b!83174)))

(assert (=> bs!40398 (= lambda!10257 lambda!10215)))

(declare-fun bs!40399 () Bool)

(assert (= bs!40399 (and b!83238 b!83210)))

(assert (=> bs!40399 (not (= lambda!10257 lambda!10239))))

(assert (=> bs!40399 (not (= lambda!10257 lambda!10238))))

(assert (=> bs!40399 (not (= lambda!10257 lambda!10237))))

(declare-fun bs!40400 () Bool)

(assert (= bs!40400 (and b!83238 b!83173)))

(assert (=> bs!40400 (= lambda!10257 lambda!10214)))

(declare-fun bs!40401 () Bool)

(assert (= bs!40401 (and b!83238 b!83135)))

(assert (=> bs!40401 (not (= lambda!10257 lambda!10203))))

(declare-fun bs!40402 () Bool)

(assert (= bs!40402 (and b!83238 b!83141)))

(assert (=> bs!40402 (not (= lambda!10257 lambda!10205))))

(declare-fun bs!40403 () Bool)

(assert (= bs!40403 (and b!83238 b!83197)))

(assert (=> bs!40403 (not (= lambda!10257 lambda!10230))))

(assert (=> bs!40403 (not (= lambda!10257 lambda!10229))))

(assert (=> bs!40403 (not (= lambda!10257 lambda!10228))))

(assert (=> b!83238 true))

(declare-fun e!45150 () Bool)

(assert (=> d!56473 e!45150))

(declare-fun c!20870 () Bool)

(assert (=> d!56473 (= c!20870 (is-Cons!631 less!5))))

(assert (=> d!56473 (forall!29 less!5 lambda!10255)))

(assert (=> d!56473 (= (forall_lt_implies_le!0 less!5 (h!1001 ls!96)) true)))

(assert (=> b!83237 (= e!45150 (forall!29 less!5 lambda!10256))))

(declare-fun lt!19363 () Bool)

(assert (=> b!83237 (= lt!19363 (forall_lt_implies_le!0 (t!47905 less!5) (h!1001 ls!96)))))

(assert (=> b!83238 (= e!45150 (forall!29 less!5 lambda!10257))))

(assert (= (and d!56473 c!20870) b!83237))

(assert (= (and d!56473 (not c!20870)) b!83238))

(declare-fun m!78972 () Bool)

(assert (=> d!56473 m!78972))

(declare-fun m!78974 () Bool)

(assert (=> b!83237 m!78974))

(declare-fun m!78976 () Bool)

(assert (=> b!83237 m!78976))

(declare-fun m!78978 () Bool)

(assert (=> b!83238 m!78978))

(assert (=> b!83145 d!56473))

(declare-fun b!83251 () Bool)

(declare-fun res!42790 () Bool)

(declare-fun e!45159 () Bool)

(assert (=> b!83251 (=> res!42790 e!45159)))

(declare-fun isEmpty!684 (List!674) Bool)

(assert (=> b!83251 (= res!42790 (isEmpty!684 (quickSort!0 less!5)))))

(declare-fun b!83252 () Bool)

(declare-fun e!45158 () Bool)

(assert (=> b!83252 (= e!45158 e!45159)))

(declare-fun res!42789 () Bool)

(assert (=> b!83252 (=> res!42789 e!45159)))

(assert (=> b!83252 (= res!42789 (not (forall!29 (quickSort!0 less!5) lambda!10203)))))

(declare-fun lt!19366 () Bool)

(assert (=> b!83252 (= lt!19366 (forall_last!0 (t!47905 (quickSort!0 less!5)) lambda!10203))))

(declare-fun b!83253 () Bool)

(declare-fun e!45157 () Bool)

(declare-fun last!24 (List!674) Int)

(assert (=> b!83253 (= e!45157 (dynLambda!993 lambda!10203 (last!24 (quickSort!0 less!5))))))

(declare-fun b!83254 () Bool)

(declare-fun res!42791 () Bool)

(assert (=> b!83254 (=> res!42791 e!45157)))

(assert (=> b!83254 (= res!42791 (isEmpty!684 (quickSort!0 less!5)))))

(declare-fun d!56475 () Bool)

(assert (=> d!56475 e!45158))

(declare-fun c!20873 () Bool)

(assert (=> d!56475 (= c!20873 (is-Cons!631 (quickSort!0 less!5)))))

(assert (=> d!56475 (= (forall_last!0 (quickSort!0 less!5) lambda!10203) true)))

(declare-fun b!83255 () Bool)

(assert (=> b!83255 (= e!45159 (dynLambda!993 lambda!10203 (last!24 (quickSort!0 less!5))))))

(declare-fun b!83256 () Bool)

(assert (=> b!83256 (= e!45158 e!45157)))

(declare-fun res!42792 () Bool)

(assert (=> b!83256 (=> res!42792 e!45157)))

(assert (=> b!83256 (= res!42792 (not (forall!29 (quickSort!0 less!5) lambda!10203)))))

(assert (= (and b!83252 (not res!42789)) b!83251))

(assert (= (and b!83251 (not res!42790)) b!83255))

(assert (= (and b!83256 (not res!42792)) b!83254))

(assert (= (and b!83254 (not res!42791)) b!83253))

(assert (= (and d!56475 c!20873) b!83252))

(assert (= (and d!56475 (not c!20873)) b!83256))

(declare-fun b_lambda!16437 () Bool)

(assert (=> (not b_lambda!16437) (not b!83253)))

(declare-fun b_lambda!16439 () Bool)

(assert (=> (not b_lambda!16439) (not b!83255)))

(assert (=> b!83254 m!78832))

(declare-fun m!78980 () Bool)

(assert (=> b!83254 m!78980))

(assert (=> b!83255 m!78832))

(declare-fun m!78982 () Bool)

(assert (=> b!83255 m!78982))

(assert (=> b!83255 m!78982))

(declare-fun m!78984 () Bool)

(assert (=> b!83255 m!78984))

(assert (=> b!83256 m!78832))

(declare-fun m!78986 () Bool)

(assert (=> b!83256 m!78986))

(assert (=> b!83251 m!78832))

(assert (=> b!83251 m!78980))

(assert (=> b!83252 m!78832))

(assert (=> b!83252 m!78986))

(declare-fun m!78988 () Bool)

(assert (=> b!83252 m!78988))

(assert (=> b!83253 m!78832))

(assert (=> b!83253 m!78982))

(assert (=> b!83253 m!78982))

(assert (=> b!83253 m!78984))

(assert (=> b!83144 d!56475))

(assert (=> b!83144 d!56471))

(declare-fun bs!40404 () Bool)

(declare-fun b!83260 () Bool)

(assert (= bs!40404 (and b!83260 d!56459)))

(declare-fun lambda!10258 () Int)

(assert (=> bs!40404 (not (= lambda!10258 lambda!10213))))

(declare-fun bs!40405 () Bool)

(assert (= bs!40405 (and b!83260 b!83232)))

(assert (=> bs!40405 (not (= lambda!10258 lambda!10248))))

(assert (=> bs!40405 (not (= lambda!10258 lambda!10247))))

(assert (=> bs!40405 (= lambda!10258 lambda!10246)))

(declare-fun bs!40406 () Bool)

(assert (= bs!40406 (and b!83260 b!83139)))

(assert (=> bs!40406 (not (= lambda!10258 lambda!10204))))

(declare-fun bs!40407 () Bool)

(assert (= bs!40407 (and b!83260 b!83137)))

(assert (=> bs!40407 (not (= lambda!10258 lambda!10206))))

(declare-fun bs!40408 () Bool)

(assert (= bs!40408 (and b!83260 b!83237)))

(assert (=> bs!40408 (not (= lambda!10258 lambda!10256))))

(declare-fun bs!40409 () Bool)

(assert (= bs!40409 (and b!83260 d!56473)))

(assert (=> bs!40409 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10258 lambda!10255))))

(declare-fun bs!40410 () Bool)

(assert (= bs!40410 (and b!83260 b!83174)))

(assert (=> bs!40410 (not (= lambda!10258 lambda!10215))))

(declare-fun bs!40411 () Bool)

(assert (= bs!40411 (and b!83260 b!83210)))

(assert (=> bs!40411 (not (= lambda!10258 lambda!10239))))

(assert (=> bs!40411 (not (= lambda!10258 lambda!10238))))

(assert (=> bs!40411 (= lambda!10258 lambda!10237)))

(declare-fun bs!40412 () Bool)

(assert (= bs!40412 (and b!83260 b!83173)))

(assert (=> bs!40412 (not (= lambda!10258 lambda!10214))))

(declare-fun bs!40413 () Bool)

(assert (= bs!40413 (and b!83260 b!83135)))

(assert (=> bs!40413 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10258 lambda!10203))))

(declare-fun bs!40414 () Bool)

(assert (= bs!40414 (and b!83260 b!83141)))

(assert (=> bs!40414 (not (= lambda!10258 lambda!10205))))

(declare-fun bs!40415 () Bool)

(assert (= bs!40415 (and b!83260 b!83197)))

(assert (=> bs!40415 (not (= lambda!10258 lambda!10230))))

(assert (=> bs!40415 (not (= lambda!10258 lambda!10229))))

(assert (=> bs!40415 (= lambda!10258 lambda!10228)))

(declare-fun bs!40416 () Bool)

(assert (= bs!40416 (and b!83260 b!83238)))

(assert (=> bs!40416 (not (= lambda!10258 lambda!10257))))

(assert (=> b!83260 true))

(declare-fun lambda!10259 () Int)

(assert (=> bs!40404 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10259 lambda!10213))))

(assert (=> bs!40405 (not (= lambda!10259 lambda!10248))))

(assert (=> bs!40405 (= lambda!10259 lambda!10247)))

(assert (=> bs!40405 (not (= lambda!10259 lambda!10246))))

(assert (=> bs!40406 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10259 lambda!10204))))

(assert (=> bs!40407 (not (= lambda!10259 lambda!10206))))

(assert (=> bs!40408 (not (= lambda!10259 lambda!10256))))

(assert (=> bs!40409 (not (= lambda!10259 lambda!10255))))

(assert (=> bs!40410 (not (= lambda!10259 lambda!10215))))

(assert (=> bs!40411 (not (= lambda!10259 lambda!10239))))

(assert (=> bs!40411 (= lambda!10259 lambda!10238)))

(assert (=> bs!40411 (not (= lambda!10259 lambda!10237))))

(assert (=> bs!40412 (not (= lambda!10259 lambda!10214))))

(assert (=> bs!40413 (not (= lambda!10259 lambda!10203))))

(assert (=> bs!40414 (not (= lambda!10259 lambda!10205))))

(assert (=> b!83260 (not (= lambda!10259 lambda!10258))))

(assert (=> bs!40415 (not (= lambda!10259 lambda!10230))))

(assert (=> bs!40415 (= lambda!10259 lambda!10229)))

(assert (=> bs!40415 (not (= lambda!10259 lambda!10228))))

(assert (=> bs!40416 (not (= lambda!10259 lambda!10257))))

(assert (=> b!83260 true))

(declare-fun lambda!10260 () Int)

(assert (=> bs!40404 (not (= lambda!10260 lambda!10213))))

(assert (=> bs!40405 (= lambda!10260 lambda!10248)))

(assert (=> bs!40405 (not (= lambda!10260 lambda!10247))))

(assert (=> bs!40405 (not (= lambda!10260 lambda!10246))))

(assert (=> bs!40406 (not (= lambda!10260 lambda!10204))))

(assert (=> bs!40407 (not (= lambda!10260 lambda!10206))))

(assert (=> bs!40408 (not (= lambda!10260 lambda!10256))))

(assert (=> bs!40409 (not (= lambda!10260 lambda!10255))))

(assert (=> bs!40410 (not (= lambda!10260 lambda!10215))))

(assert (=> bs!40411 (= lambda!10260 lambda!10239)))

(assert (=> bs!40411 (not (= lambda!10260 lambda!10238))))

(assert (=> bs!40411 (not (= lambda!10260 lambda!10237))))

(assert (=> bs!40412 (not (= lambda!10260 lambda!10214))))

(assert (=> bs!40413 (not (= lambda!10260 lambda!10203))))

(assert (=> bs!40414 (= (= (h!1001 less!5) (h!1001 ls!96)) (= lambda!10260 lambda!10205))))

(assert (=> b!83260 (not (= lambda!10260 lambda!10259))))

(assert (=> b!83260 (not (= lambda!10260 lambda!10258))))

(assert (=> bs!40415 (= lambda!10260 lambda!10230)))

(assert (=> bs!40415 (not (= lambda!10260 lambda!10229))))

(assert (=> bs!40415 (not (= lambda!10260 lambda!10228))))

(assert (=> bs!40416 (not (= lambda!10260 lambda!10257))))

(assert (=> b!83260 true))

(declare-fun e!45162 () Bool)

(declare-fun b!83257 () Bool)

(assert (=> b!83257 (= e!45162 (filter_preserves_forall!0 (t!47905 less!5) lambda!10259 lambda!10203))))

(declare-fun b!83258 () Bool)

(declare-fun lt!19368 () List!674)

(declare-fun e!45161 () Bool)

(declare-fun lt!19370 () List!674)

(declare-fun lt!19367 () List!674)

(assert (=> b!83258 (= e!45161 (append_preserves_forall!0 (++!82 (quickSort!0 lt!19367) lt!19368) (quickSort!0 lt!19370) lambda!10203))))

(declare-fun b!83259 () Bool)

(declare-fun e!45164 () Bool)

(assert (=> b!83259 (= e!45164 (sort_preserves_forall!0 lt!19370 lambda!10203))))

(declare-fun e!45163 () Bool)

(assert (=> b!83260 (= e!45163 e!45161)))

(declare-fun res!42794 () Bool)

(assert (=> b!83260 (=> (not res!42794) (not e!45161))))

(assert (=> b!83260 (= res!42794 (append_preserves_forall!0 (quickSort!0 lt!19367) lt!19368 lambda!10203))))

(declare-fun lt!19371 () Bool)

(assert (=> b!83260 (= lt!19371 e!45164)))

(declare-fun res!42797 () Bool)

(assert (=> b!83260 (=> (not res!42797) (not e!45164))))

(assert (=> b!83260 (= res!42797 (sort_preserves_forall!0 lt!19367 lambda!10203))))

(declare-fun lt!19369 () Bool)

(declare-fun e!45160 () Bool)

(assert (=> b!83260 (= lt!19369 e!45160)))

(declare-fun res!42795 () Bool)

(assert (=> b!83260 (=> (not res!42795) (not e!45160))))

(assert (=> b!83260 (= res!42795 e!45162)))

(declare-fun res!42793 () Bool)

(assert (=> b!83260 (=> (not res!42793) (not e!45162))))

(assert (=> b!83260 (= res!42793 (filter_preserves_forall!0 (t!47905 less!5) lambda!10258 lambda!10203))))

(assert (=> b!83260 (= lt!19370 (filter!27 (t!47905 less!5) lambda!10260))))

(assert (=> b!83260 (= lt!19368 (Cons!631 (h!1001 less!5) (filter!27 (t!47905 less!5) lambda!10259)))))

(assert (=> b!83260 (= lt!19367 (filter!27 (t!47905 less!5) lambda!10258))))

(declare-fun b!83261 () Bool)

(assert (=> b!83261 (= e!45160 (filter_preserves_forall!0 (t!47905 less!5) lambda!10260 lambda!10203))))

(declare-fun d!56477 () Bool)

(assert (=> d!56477 (forall!29 (quickSort!0 less!5) lambda!10203)))

(declare-fun lt!19372 () Bool)

(assert (=> d!56477 (= lt!19372 e!45163)))

(declare-fun res!42796 () Bool)

(assert (=> d!56477 (=> res!42796 e!45163)))

(assert (=> d!56477 (= res!42796 (or (is-Nil!633 less!5) (and (is-Cons!631 less!5) (is-Nil!633 (t!47905 less!5)))))))

(assert (=> d!56477 (forall!29 less!5 lambda!10203)))

(assert (=> d!56477 (= (sort_preserves_forall!0 less!5 lambda!10203) true)))

(assert (= (and d!56477 (not res!42796)) b!83260))

(assert (= (and b!83260 res!42793) b!83257))

(assert (= (and b!83260 res!42795) b!83261))

(assert (= (and b!83260 res!42797) b!83259))

(assert (= (and b!83260 res!42794) b!83258))

(declare-fun m!78990 () Bool)

(assert (=> b!83259 m!78990))

(declare-fun m!78992 () Bool)

(assert (=> b!83260 m!78992))

(declare-fun m!78994 () Bool)

(assert (=> b!83260 m!78994))

(declare-fun m!78996 () Bool)

(assert (=> b!83260 m!78996))

(declare-fun m!78998 () Bool)

(assert (=> b!83260 m!78998))

(declare-fun m!79000 () Bool)

(assert (=> b!83260 m!79000))

(assert (=> b!83260 m!78994))

(declare-fun m!79002 () Bool)

(assert (=> b!83260 m!79002))

(declare-fun m!79004 () Bool)

(assert (=> b!83260 m!79004))

(assert (=> d!56477 m!78832))

(assert (=> d!56477 m!78832))

(assert (=> d!56477 m!78986))

(declare-fun m!79006 () Bool)

(assert (=> d!56477 m!79006))

(declare-fun m!79008 () Bool)

(assert (=> b!83261 m!79008))

(declare-fun m!79010 () Bool)

(assert (=> b!83257 m!79010))

(assert (=> b!83258 m!78994))

(assert (=> b!83258 m!78994))

(declare-fun m!79012 () Bool)

(assert (=> b!83258 m!79012))

(declare-fun m!79014 () Bool)

(assert (=> b!83258 m!79014))

(assert (=> b!83258 m!79012))

(assert (=> b!83258 m!79014))

(declare-fun m!79016 () Bool)

(assert (=> b!83258 m!79016))

(assert (=> b!83136 d!56477))

(declare-fun b!83262 () Bool)

(declare-fun res!42799 () Bool)

(declare-fun e!45167 () Bool)

(assert (=> b!83262 (=> res!42799 e!45167)))

(assert (=> b!83262 (= res!42799 (isEmpty!684 (++!82 (quickSort!0 less!5) equal!10)))))

(declare-fun b!83263 () Bool)

(declare-fun e!45166 () Bool)

(assert (=> b!83263 (= e!45166 e!45167)))

(declare-fun res!42798 () Bool)

(assert (=> b!83263 (=> res!42798 e!45167)))

(assert (=> b!83263 (= res!42798 (not (forall!29 (++!82 (quickSort!0 less!5) equal!10) lambda!10206)))))

(declare-fun lt!19373 () Bool)

(assert (=> b!83263 (= lt!19373 (forall_last!0 (t!47905 (++!82 (quickSort!0 less!5) equal!10)) lambda!10206))))

(declare-fun b!83264 () Bool)

(declare-fun e!45165 () Bool)

(assert (=> b!83264 (= e!45165 (dynLambda!993 lambda!10206 (last!24 (++!82 (quickSort!0 less!5) equal!10))))))

(declare-fun b!83265 () Bool)

(declare-fun res!42800 () Bool)

(assert (=> b!83265 (=> res!42800 e!45165)))

(assert (=> b!83265 (= res!42800 (isEmpty!684 (++!82 (quickSort!0 less!5) equal!10)))))

(declare-fun d!56479 () Bool)

(assert (=> d!56479 e!45166))

(declare-fun c!20874 () Bool)

(assert (=> d!56479 (= c!20874 (is-Cons!631 (++!82 (quickSort!0 less!5) equal!10)))))

(assert (=> d!56479 (= (forall_last!0 (++!82 (quickSort!0 less!5) equal!10) lambda!10206) true)))

(declare-fun b!83266 () Bool)

(assert (=> b!83266 (= e!45167 (dynLambda!993 lambda!10206 (last!24 (++!82 (quickSort!0 less!5) equal!10))))))

(declare-fun b!83267 () Bool)

(assert (=> b!83267 (= e!45166 e!45165)))

(declare-fun res!42801 () Bool)

(assert (=> b!83267 (=> res!42801 e!45165)))

(assert (=> b!83267 (= res!42801 (not (forall!29 (++!82 (quickSort!0 less!5) equal!10) lambda!10206)))))

(assert (= (and b!83263 (not res!42798)) b!83262))

(assert (= (and b!83262 (not res!42799)) b!83266))

(assert (= (and b!83267 (not res!42801)) b!83265))

(assert (= (and b!83265 (not res!42800)) b!83264))

(assert (= (and d!56479 c!20874) b!83263))

(assert (= (and d!56479 (not c!20874)) b!83267))

(declare-fun b_lambda!16441 () Bool)

(assert (=> (not b_lambda!16441) (not b!83264)))

(declare-fun b_lambda!16443 () Bool)

(assert (=> (not b_lambda!16443) (not b!83266)))

(assert (=> b!83265 m!78838))

(declare-fun m!79018 () Bool)

(assert (=> b!83265 m!79018))

(assert (=> b!83266 m!78838))

(declare-fun m!79020 () Bool)

(assert (=> b!83266 m!79020))

(assert (=> b!83266 m!79020))

(declare-fun m!79022 () Bool)

(assert (=> b!83266 m!79022))

(assert (=> b!83267 m!78838))

(assert (=> b!83267 m!78954))

(assert (=> b!83262 m!78838))

(assert (=> b!83262 m!79018))

(assert (=> b!83263 m!78838))

(assert (=> b!83263 m!78954))

(declare-fun m!79024 () Bool)

(assert (=> b!83263 m!79024))

(assert (=> b!83264 m!78838))

(assert (=> b!83264 m!79020))

(assert (=> b!83264 m!79020))

(assert (=> b!83264 m!79022))

(assert (=> b!83138 d!56479))

(declare-fun d!56481 () Bool)

(declare-fun e!45172 () Bool)

(assert (=> d!56481 e!45172))

(declare-fun res!42807 () Bool)

(assert (=> d!56481 (=> (not res!42807) (not e!45172))))

(declare-fun lt!19376 () List!674)

(assert (=> d!56481 (= res!42807 (= (content!133 lt!19376) (union (content!133 (quickSort!0 less!5)) (content!133 equal!10))))))

(declare-fun e!45173 () List!674)

(assert (=> d!56481 (= lt!19376 e!45173)))

(declare-fun c!20877 () Bool)

(assert (=> d!56481 (= c!20877 (is-Nil!633 (quickSort!0 less!5)))))

(assert (=> d!56481 (= (++!82 (quickSort!0 less!5) equal!10) lt!19376)))

(declare-fun b!83276 () Bool)

(assert (=> b!83276 (= e!45173 equal!10)))

(declare-fun b!83277 () Bool)

(assert (=> b!83277 (= e!45173 (Cons!631 (h!1001 (quickSort!0 less!5)) (++!82 (t!47905 (quickSort!0 less!5)) equal!10)))))

(declare-fun b!83279 () Bool)

(assert (=> b!83279 (= e!45172 (or (not (= equal!10 Nil!633)) (= lt!19376 (quickSort!0 less!5))))))

(declare-fun b!83278 () Bool)

(declare-fun res!42808 () Bool)

(assert (=> b!83278 (=> (not res!42808) (not e!45172))))

(assert (=> b!83278 (= res!42808 (= (size!662 lt!19376) (+ (size!662 (quickSort!0 less!5)) (size!662 equal!10))))))

(assert (= (and d!56481 c!20877) b!83276))

(assert (= (and d!56481 (not c!20877)) b!83277))

(assert (= (and d!56481 res!42807) b!83278))

(assert (= (and b!83278 res!42808) b!83279))

(declare-fun m!79026 () Bool)

(assert (=> d!56481 m!79026))

(assert (=> d!56481 m!78832))

(declare-fun m!79028 () Bool)

(assert (=> d!56481 m!79028))

(declare-fun m!79030 () Bool)

(assert (=> d!56481 m!79030))

(declare-fun m!79032 () Bool)

(assert (=> b!83277 m!79032))

(declare-fun m!79034 () Bool)

(assert (=> b!83278 m!79034))

(assert (=> b!83278 m!78832))

(declare-fun m!79036 () Bool)

(assert (=> b!83278 m!79036))

(declare-fun m!79038 () Bool)

(assert (=> b!83278 m!79038))

(assert (=> b!83138 d!56481))

(assert (=> b!83138 d!56471))

(declare-fun b!83292 () Bool)

(declare-fun res!42818 () Bool)

(declare-fun e!45181 () Bool)

(assert (=> b!83292 (=> (not res!42818) (not e!45181))))

(assert (=> b!83292 (= res!42818 (isSorted!1 equal!10))))

(declare-fun d!56483 () Bool)

(declare-fun e!45180 () Bool)

(assert (=> d!56483 e!45180))

(declare-fun c!20880 () Bool)

(assert (=> d!56483 (= c!20880 (is-Cons!631 (quickSort!0 less!5)))))

(assert (=> d!56483 e!45181))

(declare-fun res!42820 () Bool)

(assert (=> d!56483 (=> (not res!42820) (not e!45181))))

(assert (=> d!56483 (= res!42820 (isSorted!1 (quickSort!0 less!5)))))

(assert (=> d!56483 (= (append_sorted!0 (quickSort!0 less!5) equal!10) true)))

(declare-fun b!83293 () Bool)

(declare-fun e!45182 () Bool)

(declare-fun head!1060 (List!674) Int)

(assert (=> b!83293 (= e!45182 (<= (last!24 (quickSort!0 less!5)) (head!1060 equal!10)))))

(declare-fun b!83294 () Bool)

(declare-fun res!42819 () Bool)

(assert (=> b!83294 (=> res!42819 e!45182)))

(assert (=> b!83294 (= res!42819 (isEmpty!684 equal!10))))

(declare-fun b!83295 () Bool)

(assert (=> b!83295 (= e!45181 e!45182)))

(declare-fun res!42817 () Bool)

(assert (=> b!83295 (=> res!42817 e!45182)))

(assert (=> b!83295 (= res!42817 (isEmpty!684 (quickSort!0 less!5)))))

(declare-fun b!83296 () Bool)

(assert (=> b!83296 (= e!45180 (isSorted!1 (++!82 (quickSort!0 less!5) equal!10)))))

(declare-fun lt!19379 () Bool)

(assert (=> b!83296 (= lt!19379 (append_sorted!0 (t!47905 (quickSort!0 less!5)) equal!10))))

(declare-fun b!83297 () Bool)

(assert (=> b!83297 (= e!45180 (isSorted!1 (++!82 (quickSort!0 less!5) equal!10)))))

(assert (= (and d!56483 res!42820) b!83292))

(assert (= (and b!83292 res!42818) b!83295))

(assert (= (and b!83295 (not res!42817)) b!83294))

(assert (= (and b!83294 (not res!42819)) b!83293))

(assert (= (and d!56483 c!20880) b!83296))

(assert (= (and d!56483 (not c!20880)) b!83297))

(assert (=> b!83297 m!78832))

(assert (=> b!83297 m!78838))

(assert (=> b!83297 m!78838))

(declare-fun m!79040 () Bool)

(assert (=> b!83297 m!79040))

(assert (=> b!83296 m!78832))

(assert (=> b!83296 m!78838))

(assert (=> b!83296 m!78838))

(assert (=> b!83296 m!79040))

(declare-fun m!79042 () Bool)

(assert (=> b!83296 m!79042))

(assert (=> b!83293 m!78832))

(assert (=> b!83293 m!78982))

(declare-fun m!79044 () Bool)

(assert (=> b!83293 m!79044))

(assert (=> d!56483 m!78832))

(assert (=> d!56483 m!78934))

(declare-fun m!79046 () Bool)

(assert (=> b!83294 m!79046))

(assert (=> b!83295 m!78832))

(assert (=> b!83295 m!78980))

(declare-fun m!79048 () Bool)

(assert (=> b!83292 m!79048))

(assert (=> b!83143 d!56483))

(assert (=> b!83143 d!56471))

(declare-fun bs!40417 () Bool)

(declare-fun d!56485 () Bool)

(assert (= bs!40417 (and d!56485 d!56459)))

(declare-fun lambda!10263 () Int)

(assert (=> bs!40417 (= lambda!10263 lambda!10213)))

(declare-fun bs!40418 () Bool)

(assert (= bs!40418 (and d!56485 b!83232)))

(assert (=> bs!40418 (not (= lambda!10263 lambda!10248))))

(assert (=> bs!40418 (= (= (h!1001 ls!96) (h!1001 less!5)) (= lambda!10263 lambda!10247))))

(assert (=> bs!40418 (not (= lambda!10263 lambda!10246))))

(declare-fun bs!40419 () Bool)

(assert (= bs!40419 (and d!56485 b!83139)))

(assert (=> bs!40419 (= lambda!10263 lambda!10204)))

(declare-fun bs!40420 () Bool)

(assert (= bs!40420 (and d!56485 b!83137)))

(assert (=> bs!40420 (not (= lambda!10263 lambda!10206))))

(declare-fun bs!40421 () Bool)

(assert (= bs!40421 (and d!56485 b!83237)))

(assert (=> bs!40421 (not (= lambda!10263 lambda!10256))))

(declare-fun bs!40422 () Bool)

(assert (= bs!40422 (and d!56485 d!56473)))

(assert (=> bs!40422 (not (= lambda!10263 lambda!10255))))

(declare-fun bs!40423 () Bool)

(assert (= bs!40423 (and d!56485 b!83174)))

(assert (=> bs!40423 (not (= lambda!10263 lambda!10215))))

(declare-fun bs!40424 () Bool)

(assert (= bs!40424 (and d!56485 b!83210)))

(assert (=> bs!40424 (not (= lambda!10263 lambda!10239))))

(assert (=> bs!40424 (= (= (h!1001 ls!96) (h!1001 less!5)) (= lambda!10263 lambda!10238))))

(assert (=> bs!40424 (not (= lambda!10263 lambda!10237))))

(declare-fun bs!40425 () Bool)

(assert (= bs!40425 (and d!56485 b!83173)))

(assert (=> bs!40425 (not (= lambda!10263 lambda!10214))))

(declare-fun bs!40426 () Bool)

(assert (= bs!40426 (and d!56485 b!83135)))

(assert (=> bs!40426 (not (= lambda!10263 lambda!10203))))

(declare-fun bs!40427 () Bool)

(assert (= bs!40427 (and d!56485 b!83141)))

(assert (=> bs!40427 (not (= lambda!10263 lambda!10205))))

(declare-fun bs!40428 () Bool)

(assert (= bs!40428 (and d!56485 b!83260)))

(assert (=> bs!40428 (not (= lambda!10263 lambda!10260))))

(assert (=> bs!40428 (= (= (h!1001 ls!96) (h!1001 less!5)) (= lambda!10263 lambda!10259))))

(assert (=> bs!40428 (not (= lambda!10263 lambda!10258))))

(declare-fun bs!40429 () Bool)

(assert (= bs!40429 (and d!56485 b!83197)))

(assert (=> bs!40429 (not (= lambda!10263 lambda!10230))))

(assert (=> bs!40429 (= (= (h!1001 ls!96) (h!1001 less!5)) (= lambda!10263 lambda!10229))))

(assert (=> bs!40429 (not (= lambda!10263 lambda!10228))))

(declare-fun bs!40430 () Bool)

(assert (= bs!40430 (and d!56485 b!83238)))

(assert (=> bs!40430 (not (= lambda!10263 lambda!10257))))

(assert (=> d!56485 true))

(assert (=> d!56485 (isSorted!1 (Cons!631 (h!1001 ls!96) (filter!27 (t!47905 ls!96) lambda!10263)))))

(declare-datatypes () ((Unit!1196 (Unit!1197))))

(declare-fun lt!19382 () Unit!1196)

(declare-fun Unit!1198 () Unit!1196)

(assert (=> d!56485 (= lt!19382 Unit!1198)))

(declare-fun filter_equal_sorted!0 (List!674 Int) Bool)

(assert (=> d!56485 (filter_equal_sorted!0 (t!47905 ls!96) (h!1001 ls!96))))

(assert (=> d!56485 (= (cons_filter_equal_sorted!0 (t!47905 ls!96) (h!1001 ls!96)) true)))

(declare-fun bs!40431 () Bool)

(assert (= bs!40431 d!56485))

(declare-fun m!79050 () Bool)

(assert (=> bs!40431 m!79050))

(declare-fun m!79052 () Bool)

(assert (=> bs!40431 m!79052))

(declare-fun m!79054 () Bool)

(assert (=> bs!40431 m!79054))

(assert (=> b!83133 d!56485))

(declare-fun b_lambda!16445 () Bool)

(assert (= b_lambda!16443 (or b!83137 b_lambda!16445)))

(declare-fun bs!40432 () Bool)

(declare-fun d!56487 () Bool)

(assert (= bs!40432 (and d!56487 b!83137)))

(assert (=> bs!40432 (= (dynLambda!993 lambda!10206 (last!24 (++!82 (quickSort!0 less!5) equal!10))) (<= (last!24 (++!82 (quickSort!0 less!5) equal!10)) (h!1001 ls!96)))))

(assert (=> b!83266 d!56487))

(declare-fun b_lambda!16447 () Bool)

(assert (= b_lambda!16441 (or b!83137 b_lambda!16447)))

(assert (=> b!83264 d!56487))

(declare-fun b_lambda!16449 () Bool)

(assert (= b_lambda!16437 (or b!83135 b_lambda!16449)))

(declare-fun bs!40433 () Bool)

(declare-fun d!56489 () Bool)

(assert (= bs!40433 (and d!56489 b!83135)))

(assert (=> bs!40433 (= (dynLambda!993 lambda!10203 (last!24 (quickSort!0 less!5))) (< (last!24 (quickSort!0 less!5)) (h!1001 ls!96)))))

(assert (=> b!83253 d!56489))

(declare-fun b_lambda!16451 () Bool)

(assert (= b_lambda!16431 (or b!83135 b_lambda!16451)))

(declare-fun bs!40434 () Bool)

(declare-fun d!56491 () Bool)

(assert (= bs!40434 (and d!56491 b!83135)))

(assert (=> bs!40434 (= (dynLambda!993 lambda!10203 (h!1001 (t!47905 ls!96))) (< (h!1001 (t!47905 ls!96)) (h!1001 ls!96)))))

(assert (=> b!83164 d!56491))

(declare-fun b_lambda!16453 () Bool)

(assert (= b_lambda!16439 (or b!83135 b_lambda!16453)))

(assert (=> b!83255 d!56489))

(declare-fun b_lambda!16455 () Bool)

(assert (= b_lambda!16433 (or b!83141 b_lambda!16455)))

(declare-fun bs!40435 () Bool)

(declare-fun d!56493 () Bool)

(assert (= bs!40435 (and d!56493 b!83141)))

(assert (=> bs!40435 (= (dynLambda!993 lambda!10205 (h!1001 (t!47905 ls!96))) (> (h!1001 (t!47905 ls!96)) (h!1001 ls!96)))))

(assert (=> b!83179 d!56493))

(declare-fun b_lambda!16457 () Bool)

(assert (= b_lambda!16435 (or b!83139 b_lambda!16457)))

(declare-fun bs!40436 () Bool)

(declare-fun d!56495 () Bool)

(assert (= bs!40436 (and d!56495 b!83139)))

(assert (=> bs!40436 (= (dynLambda!993 lambda!10204 (h!1001 (t!47905 ls!96))) (= (h!1001 (t!47905 ls!96)) (h!1001 ls!96)))))

(assert (=> b!83201 d!56495))

(push 1)

(assert (not b!83255))

(assert (not b!83277))

(assert (not b_lambda!16449))

(assert (not b!83293))

(assert (not b_lambda!16451))

(assert (not b!83198))

(assert (not b_lambda!16445))

(assert (not b_lambda!16457))

(assert (not d!56459))

(assert (not b!83254))

(assert (not d!56481))

(assert (not b!83265))

(assert (not b!83258))

(assert (not b!83251))

(assert (not b!83278))

(assert (not d!56469))

(assert (not b!83232))

(assert (not b!83210))

(assert (not d!56457))

(assert (not b!83263))

(assert (not b!83194))

(assert (not b!83292))

(assert (not b!83173))

(assert (not b!83264))

(assert (not d!56483))

(assert (not d!56485))

(assert (not b_lambda!16453))

(assert (not b!83262))

(assert (not b!83253))

(assert (not b!83178))

(assert (not b!83295))

(assert (not b!83267))

(assert (not b!83259))

(assert (not d!56473))

(assert (not b!83266))

(assert (not b!83238))

(assert (not b!83220))

(assert (not b!83200))

(assert (not b!83211))

(assert (not d!56463))

(assert (not b!83252))

(assert (not b!83196))

(assert (not b!83166))

(assert (not d!56467))

(assert (not b!83180))

(assert (not b!83218))

(assert (not b!83174))

(assert (not b!83202))

(assert (not b!83165))

(assert (not b_lambda!16455))

(assert (not b!83203))

(assert (not b!83195))

(assert (not b!83294))

(assert (not b!83219))

(assert (not d!56465))

(assert (not b!83256))

(assert (not b!83163))

(assert (not b!83297))

(assert (not b!83261))

(assert (not b!83260))

(assert (not b!83257))

(assert (not b!83296))

(assert (not b!83237))

(assert (not b!83181))

(assert (not b_lambda!16447))

(assert (not b!83197))

(assert (not d!56461))

(assert (not d!56477))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


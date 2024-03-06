; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15478 () Bool)

(assert start!15478)

(declare-fun b!95125 () Bool)

(assert (=> b!95125 true))

(declare-fun bs!43347 () Bool)

(declare-fun b!95120 () Bool)

(assert (= bs!43347 (and b!95120 b!95125)))

(declare-fun lambda!11272 () Int)

(declare-fun lambda!11270 () Int)

(assert (=> bs!43347 (not (= lambda!11272 lambda!11270))))

(declare-fun b!95121 () Bool)

(assert (=> b!95121 true))

(declare-fun res!49513 () Bool)

(declare-fun e!51844 () Bool)

(assert (=> b!95120 (=> (not res!49513) (not e!51844))))

(declare-datatypes () ((P!93 (Charlie!93) (Alice!93) (Bob!93))))

(declare-datatypes () ((tuple2!522 (tuple2!523 (_1!300 P!93) (_2!300 P!93)))))

(declare-datatypes () ((tuple2!524 (tuple2!525 (_1!301 tuple2!522) (_2!301 Int)))))

(declare-datatypes () ((List!896 (Cons!834 (h!7729 tuple2!524) (t!56042 List!896)) (Nil!836))))

(declare-fun transfers!5 () List!896)

(declare-fun lambda!11271 () Int)

(declare-datatypes () ((List!897 (Cons!835 (h!7730 tuple2!522) (t!56043 List!897)) (Nil!837))))

(declare-fun forall!86 (List!897 Int) Bool)

(declare-fun map!730 (List!896 Int) List!897)

(assert (=> b!95120 (= res!49513 (forall!86 (map!730 transfers!5 lambda!11271) lambda!11272))))

(declare-fun res!49516 () Bool)

(assert (=> b!95121 (=> (not res!49516) (not e!51844))))

(declare-fun lambda!11273 () Int)

(declare-fun forall!87 (List!896 Int) Bool)

(assert (=> b!95121 (= res!49516 (forall!87 transfers!5 lambda!11273))))

(declare-fun b!95122 () Bool)

(declare-fun res!49517 () Bool)

(declare-fun e!51843 () Bool)

(assert (=> b!95122 (=> (not res!49517) (not e!51843))))

(declare-fun x$27!83 () Bool)

(assert (=> b!95122 (= res!49517 (= x$27!83 e!51844))))

(declare-fun res!49515 () Bool)

(assert (=> b!95122 (=> (not res!49515) (not e!51844))))

(declare-fun length!24 (List!896) Int)

(declare-fun length!25 (List!897) Int)

(assert (=> b!95122 (= res!49515 (= (length!24 transfers!5) (length!25 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))))

(declare-fun b!95123 () Bool)

(assert (=> b!95123 (= e!51843 x$27!83)))

(declare-fun b!95124 () Bool)

(declare-fun res!49518 () Bool)

(assert (=> b!95124 (=> (not res!49518) (not e!51844))))

(declare-fun sum!7 () Int)

(assert (=> b!95124 (= res!49518 (= sum!7 2000))))

(declare-fun res!49520 () Bool)

(assert (=> b!95125 (=> (not res!49520) (not e!51844))))

(assert (=> b!95125 (= res!49520 (forall!86 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)) lambda!11270))))

(declare-fun b!95126 () Bool)

(declare-fun negConstraints!0 (List!896) Bool)

(assert (=> b!95126 (= e!51844 (negConstraints!0 transfers!5))))

(declare-fun b!95127 () Bool)

(declare-fun res!49519 () Bool)

(assert (=> b!95127 (=> (not res!49519) (not e!51844))))

(declare-fun posConstraints!0 (List!896) Bool)

(assert (=> b!95127 (= res!49519 (posConstraints!0 transfers!5))))

(declare-fun res!49514 () Bool)

(assert (=> start!15478 (=> (not res!49514) (not e!51843))))

(declare-fun lambda!11269 () Int)

(declare-fun lambda!11268 () Int)

(declare-datatypes () ((List!898 (Cons!836 (h!7731 Int) (t!56044 List!898)) (Nil!838))))

(declare-fun foldLeft!11 (List!898 Int Int) Int)

(declare-fun map!731 (List!896 Int) List!898)

(assert (=> start!15478 (= res!49514 (= sum!7 (foldLeft!11 (map!731 transfers!5 lambda!11268) 0 lambda!11269)))))

(assert (=> start!15478 e!51843))

(assert (=> start!15478 true))

(assert (= (and start!15478 res!49514) b!95122))

(assert (= (and b!95122 res!49515) b!95125))

(assert (= (and b!95125 res!49520) b!95124))

(assert (= (and b!95124 res!49518) b!95120))

(assert (= (and b!95120 res!49513) b!95121))

(assert (= (and b!95121 res!49516) b!95127))

(assert (= (and b!95127 res!49519) b!95126))

(assert (= (and b!95122 res!49517) b!95123))

(declare-fun m!90289 () Bool)

(assert (=> b!95127 m!90289))

(declare-fun m!90291 () Bool)

(assert (=> b!95122 m!90291))

(declare-fun m!90293 () Bool)

(assert (=> b!95122 m!90293))

(declare-fun m!90295 () Bool)

(assert (=> b!95120 m!90295))

(assert (=> b!95120 m!90295))

(declare-fun m!90297 () Bool)

(assert (=> b!95120 m!90297))

(declare-fun m!90299 () Bool)

(assert (=> b!95125 m!90299))

(declare-fun m!90301 () Bool)

(assert (=> b!95126 m!90301))

(declare-fun m!90303 () Bool)

(assert (=> start!15478 m!90303))

(assert (=> start!15478 m!90303))

(declare-fun m!90305 () Bool)

(assert (=> start!15478 m!90305))

(declare-fun m!90307 () Bool)

(assert (=> b!95121 m!90307))

(push 1)

(assert (not b!95125))

(assert (not b!95122))

(assert (not b!95127))

(assert (not b!95121))

(assert (not b!95120))

(assert (not b!95126))

(assert (not start!15478))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61766 () Bool)

(declare-fun res!49525 () Bool)

(declare-fun e!51849 () Bool)

(assert (=> d!61766 (=> res!49525 e!51849)))

(assert (=> d!61766 (= res!49525 (is-Nil!837 (map!730 transfers!5 lambda!11271)))))

(assert (=> d!61766 (= (forall!86 (map!730 transfers!5 lambda!11271) lambda!11272) e!51849)))

(declare-fun b!95136 () Bool)

(declare-fun e!51850 () Bool)

(assert (=> b!95136 (= e!51849 e!51850)))

(declare-fun res!49526 () Bool)

(assert (=> b!95136 (=> (not res!49526) (not e!51850))))

(declare-fun dynLambda!1154 (Int tuple2!522) Bool)

(assert (=> b!95136 (= res!49526 (dynLambda!1154 lambda!11272 (h!7730 (map!730 transfers!5 lambda!11271))))))

(declare-fun b!95137 () Bool)

(assert (=> b!95137 (= e!51850 (forall!86 (t!56043 (map!730 transfers!5 lambda!11271)) lambda!11272))))

(assert (= (and d!61766 (not res!49525)) b!95136))

(assert (= (and b!95136 res!49526) b!95137))

(declare-fun b_lambda!19015 () Bool)

(assert (=> (not b_lambda!19015) (not b!95136)))

(declare-fun m!90309 () Bool)

(assert (=> b!95136 m!90309))

(declare-fun m!90311 () Bool)

(assert (=> b!95137 m!90311))

(assert (=> b!95120 d!61766))

(declare-fun d!61768 () Bool)

(declare-fun lt!21816 () List!897)

(declare-fun size!1001 (List!897) Int)

(declare-fun size!1002 (List!896) Int)

(assert (=> d!61768 (= (size!1001 lt!21816) (size!1002 transfers!5))))

(declare-fun e!51853 () List!897)

(assert (=> d!61768 (= lt!21816 e!51853)))

(declare-fun c!23345 () Bool)

(assert (=> d!61768 (= c!23345 (is-Nil!836 transfers!5))))

(assert (=> d!61768 (= (map!730 transfers!5 lambda!11271) lt!21816)))

(declare-fun b!95142 () Bool)

(assert (=> b!95142 (= e!51853 Nil!837)))

(declare-fun b!95143 () Bool)

(declare-fun $colon$colon!30 (List!897 tuple2!522) List!897)

(declare-fun dynLambda!1155 (Int tuple2!524) tuple2!522)

(assert (=> b!95143 (= e!51853 ($colon$colon!30 (map!730 (t!56042 transfers!5) lambda!11271) (dynLambda!1155 lambda!11271 (h!7729 transfers!5))))))

(assert (= (and d!61768 c!23345) b!95142))

(assert (= (and d!61768 (not c!23345)) b!95143))

(declare-fun b_lambda!19017 () Bool)

(assert (=> (not b_lambda!19017) (not b!95143)))

(declare-fun m!90313 () Bool)

(assert (=> d!61768 m!90313))

(declare-fun m!90315 () Bool)

(assert (=> d!61768 m!90315))

(declare-fun m!90317 () Bool)

(assert (=> b!95143 m!90317))

(declare-fun m!90319 () Bool)

(assert (=> b!95143 m!90319))

(assert (=> b!95143 m!90317))

(assert (=> b!95143 m!90319))

(declare-fun m!90321 () Bool)

(assert (=> b!95143 m!90321))

(assert (=> b!95120 d!61768))

(declare-fun d!61770 () Bool)

(assert (=> d!61770 (= (length!24 transfers!5) (size!1002 transfers!5))))

(declare-fun bs!43348 () Bool)

(assert (= bs!43348 d!61770))

(assert (=> bs!43348 m!90315))

(assert (=> b!95122 d!61770))

(declare-fun d!61772 () Bool)

(assert (=> d!61772 (= (length!25 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))) (size!1001 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))))

(declare-fun bs!43349 () Bool)

(assert (= bs!43349 d!61772))

(declare-fun m!90323 () Bool)

(assert (=> bs!43349 m!90323))

(assert (=> b!95122 d!61772))

(declare-fun d!61774 () Bool)

(declare-fun res!49531 () Bool)

(declare-fun e!51858 () Bool)

(assert (=> d!61774 (=> res!49531 e!51858)))

(assert (=> d!61774 (= res!49531 (is-Nil!836 transfers!5))))

(assert (=> d!61774 (= (forall!87 transfers!5 lambda!11273) e!51858)))

(declare-fun b!95148 () Bool)

(declare-fun e!51859 () Bool)

(assert (=> b!95148 (= e!51858 e!51859)))

(declare-fun res!49532 () Bool)

(assert (=> b!95148 (=> (not res!49532) (not e!51859))))

(declare-fun dynLambda!1156 (Int tuple2!524) Bool)

(assert (=> b!95148 (= res!49532 (dynLambda!1156 lambda!11273 (h!7729 transfers!5)))))

(declare-fun b!95149 () Bool)

(assert (=> b!95149 (= e!51859 (forall!87 (t!56042 transfers!5) lambda!11273))))

(assert (= (and d!61774 (not res!49531)) b!95148))

(assert (= (and b!95148 res!49532) b!95149))

(declare-fun b_lambda!19019 () Bool)

(assert (=> (not b_lambda!19019) (not b!95148)))

(declare-fun m!90325 () Bool)

(assert (=> b!95148 m!90325))

(declare-fun m!90327 () Bool)

(assert (=> b!95149 m!90327))

(assert (=> b!95121 d!61774))

(declare-fun d!61776 () Bool)

(declare-fun res!49533 () Bool)

(declare-fun e!51860 () Bool)

(assert (=> d!61776 (=> res!49533 e!51860)))

(assert (=> d!61776 (= res!49533 (is-Nil!837 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))))

(assert (=> d!61776 (= (forall!86 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)) lambda!11270) e!51860)))

(declare-fun b!95150 () Bool)

(declare-fun e!51861 () Bool)

(assert (=> b!95150 (= e!51860 e!51861)))

(declare-fun res!49534 () Bool)

(assert (=> b!95150 (=> (not res!49534) (not e!51861))))

(assert (=> b!95150 (= res!49534 (dynLambda!1154 lambda!11270 (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))))

(declare-fun b!95151 () Bool)

(assert (=> b!95151 (= e!51861 (forall!86 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))) lambda!11270))))

(assert (= (and d!61776 (not res!49533)) b!95150))

(assert (= (and b!95150 res!49534) b!95151))

(declare-fun b_lambda!19021 () Bool)

(assert (=> (not b_lambda!19021) (not b!95150)))

(declare-fun m!90329 () Bool)

(assert (=> b!95150 m!90329))

(declare-fun m!90331 () Bool)

(assert (=> b!95151 m!90331))

(assert (=> b!95125 d!61776))

(declare-fun d!61778 () Bool)

(declare-fun c!23348 () Bool)

(assert (=> d!61778 (= c!23348 (is-Nil!838 (map!731 transfers!5 lambda!11268)))))

(declare-fun e!51864 () Int)

(assert (=> d!61778 (= (foldLeft!11 (map!731 transfers!5 lambda!11268) 0 lambda!11269) e!51864)))

(declare-fun b!95156 () Bool)

(assert (=> b!95156 (= e!51864 0)))

(declare-fun b!95157 () Bool)

(declare-fun dynLambda!1157 (Int Int Int) Int)

(assert (=> b!95157 (= e!51864 (foldLeft!11 (t!56044 (map!731 transfers!5 lambda!11268)) (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) lambda!11269))))

(assert (= (and d!61778 c!23348) b!95156))

(assert (= (and d!61778 (not c!23348)) b!95157))

(declare-fun b_lambda!19023 () Bool)

(assert (=> (not b_lambda!19023) (not b!95157)))

(declare-fun m!90333 () Bool)

(assert (=> b!95157 m!90333))

(assert (=> b!95157 m!90333))

(declare-fun m!90335 () Bool)

(assert (=> b!95157 m!90335))

(assert (=> start!15478 d!61778))

(declare-fun d!61780 () Bool)

(declare-fun lt!21819 () List!898)

(declare-fun size!1003 (List!898) Int)

(assert (=> d!61780 (= (size!1003 lt!21819) (size!1002 transfers!5))))

(declare-fun e!51867 () List!898)

(assert (=> d!61780 (= lt!21819 e!51867)))

(declare-fun c!23351 () Bool)

(assert (=> d!61780 (= c!23351 (is-Nil!836 transfers!5))))

(assert (=> d!61780 (= (map!731 transfers!5 lambda!11268) lt!21819)))

(declare-fun b!95162 () Bool)

(assert (=> b!95162 (= e!51867 Nil!838)))

(declare-fun b!95163 () Bool)

(declare-fun $colon$colon!31 (List!898 Int) List!898)

(declare-fun dynLambda!1158 (Int tuple2!524) Int)

(assert (=> b!95163 (= e!51867 ($colon$colon!31 (map!731 (t!56042 transfers!5) lambda!11268) (dynLambda!1158 lambda!11268 (h!7729 transfers!5))))))

(assert (= (and d!61780 c!23351) b!95162))

(assert (= (and d!61780 (not c!23351)) b!95163))

(declare-fun b_lambda!19025 () Bool)

(assert (=> (not b_lambda!19025) (not b!95163)))

(declare-fun m!90337 () Bool)

(assert (=> d!61780 m!90337))

(assert (=> d!61780 m!90315))

(declare-fun m!90339 () Bool)

(assert (=> b!95163 m!90339))

(declare-fun m!90341 () Bool)

(assert (=> b!95163 m!90341))

(assert (=> b!95163 m!90339))

(assert (=> b!95163 m!90341))

(declare-fun m!90343 () Bool)

(assert (=> b!95163 m!90343))

(assert (=> start!15478 d!61780))

(declare-fun bs!43350 () Bool)

(declare-fun d!61782 () Bool)

(assert (= bs!43350 (and d!61782 start!15478)))

(declare-fun lambda!11283 () Int)

(assert (=> bs!43350 (= lambda!11283 lambda!11268)))

(declare-fun lambda!11284 () Int)

(assert (=> bs!43350 (= lambda!11284 lambda!11269)))

(assert (=> d!61782 true))

(declare-fun lambda!11282 () Int)

(declare-fun lambda!11285 () Int)

(declare-datatypes () ((List!899 (Cons!837 (h!7756 Bool) (t!56069 List!899)) (Nil!839))))

(declare-fun foldLeft!12 (List!899 Bool Int) Bool)

(declare-datatypes () ((S!137 (S!138 (who!3503 P!93) (amount!3503 Int)))))

(declare-datatypes () ((List!900 (Cons!838 (h!7757 S!137) (t!56070 List!900)) (Nil!840))))

(declare-fun map!732 (List!900 Int) List!899)

(assert (=> d!61782 (= (posConstraints!0 transfers!5) (foldLeft!12 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282) true lambda!11285))))

(declare-fun bs!43351 () Bool)

(assert (= bs!43351 d!61782))

(declare-fun m!90345 () Bool)

(assert (=> bs!43351 m!90345))

(assert (=> bs!43351 m!90345))

(declare-fun m!90347 () Bool)

(assert (=> bs!43351 m!90347))

(assert (=> b!95127 d!61782))

(declare-fun bs!43352 () Bool)

(declare-fun d!61785 () Bool)

(assert (= bs!43352 (and d!61785 start!15478)))

(declare-fun lambda!11294 () Int)

(assert (=> bs!43352 (= lambda!11294 lambda!11268)))

(declare-fun bs!43353 () Bool)

(assert (= bs!43353 (and d!61785 d!61782)))

(assert (=> bs!43353 (= lambda!11294 lambda!11283)))

(declare-fun lambda!11295 () Int)

(assert (=> bs!43352 (= lambda!11295 lambda!11269)))

(assert (=> bs!43353 (= lambda!11295 lambda!11284)))

(declare-fun lambda!11296 () Int)

(assert (=> bs!43353 (not (= lambda!11296 lambda!11282))))

(assert (=> d!61785 true))

(declare-fun lambda!11297 () Int)

(assert (=> bs!43353 (= lambda!11297 lambda!11285)))

(assert (=> d!61785 (= (negConstraints!0 transfers!5) (foldLeft!12 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296) true lambda!11297))))

(declare-fun bs!43354 () Bool)

(assert (= bs!43354 d!61785))

(declare-fun m!90349 () Bool)

(assert (=> bs!43354 m!90349))

(assert (=> bs!43354 m!90349))

(declare-fun m!90351 () Bool)

(assert (=> bs!43354 m!90351))

(assert (=> b!95126 d!61785))

(declare-fun b_lambda!19027 () Bool)

(assert (= b_lambda!19021 (or b!95125 b_lambda!19027)))

(declare-fun bs!43355 () Bool)

(declare-fun d!61788 () Bool)

(assert (= bs!43355 (and d!61788 b!95125)))

(declare-fun bs!43356 () Bool)

(assert (= bs!43356 (and d!61788 b!95125 b!95121)))

(declare-fun lambda!11298 () Int)

(assert (=> bs!43356 (not (= lambda!11298 lambda!11273))))

(assert (=> bs!43355 true))

(declare-fun exists!12 (List!896 Int) Bool)

(assert (=> bs!43355 (= (dynLambda!1154 lambda!11270 (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) (exists!12 transfers!5 lambda!11298))))

(declare-fun m!90353 () Bool)

(assert (=> bs!43355 m!90353))

(assert (=> b!95150 d!61788))

(declare-fun b_lambda!19029 () Bool)

(assert (= b_lambda!19025 (or start!15478 b_lambda!19029)))

(declare-fun bs!43357 () Bool)

(declare-fun d!61790 () Bool)

(assert (= bs!43357 (and d!61790 start!15478)))

(assert (=> bs!43357 (= (dynLambda!1158 lambda!11268 (h!7729 transfers!5)) (_2!301 (h!7729 transfers!5)))))

(assert (=> b!95163 d!61790))

(declare-fun b_lambda!19031 () Bool)

(assert (= b_lambda!19015 (or b!95120 b_lambda!19031)))

(declare-fun bs!43358 () Bool)

(declare-fun d!61792 () Bool)

(assert (= bs!43358 (and d!61792 b!95120)))

(assert (=> bs!43358 (= (dynLambda!1154 lambda!11272 (h!7730 (map!730 transfers!5 lambda!11271))) (not (= (_1!300 (h!7730 (map!730 transfers!5 lambda!11271))) (_2!300 (h!7730 (map!730 transfers!5 lambda!11271))))))))

(assert (=> b!95136 d!61792))

(declare-fun b_lambda!19033 () Bool)

(assert (= b_lambda!19023 (or start!15478 b_lambda!19033)))

(declare-fun bs!43359 () Bool)

(declare-fun d!61794 () Bool)

(assert (= bs!43359 (and d!61794 start!15478)))

(assert (=> bs!43359 (= (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (+ 0 (h!7731 (map!731 transfers!5 lambda!11268))))))

(assert (=> b!95157 d!61794))

(declare-fun b_lambda!19035 () Bool)

(assert (= b_lambda!19019 (or b!95121 b_lambda!19035)))

(declare-fun bs!43360 () Bool)

(declare-fun d!61796 () Bool)

(assert (= bs!43360 (and d!61796 b!95121)))

(declare-fun lambda!11299 () Int)

(assert (=> bs!43360 (not (= lambda!11299 lambda!11273))))

(declare-fun bs!43361 () Bool)

(assert (= bs!43361 (and d!61796 b!95121 d!61788 b!95125)))

(assert (=> bs!43361 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5)))) (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) (= lambda!11299 lambda!11298))))

(assert (=> bs!43360 true))

(declare-fun res!49535 () Bool)

(declare-fun e!51868 () Bool)

(assert (=> bs!43360 (=> (not res!49535) (not e!51868))))

(declare-datatypes () ((Option!768 (None!740) (Some!739 (v!3223 Int)))))

(declare-fun lt!21820 () Option!768)

(declare-fun isDefined!27 (Option!768) Bool)

(assert (=> bs!43360 (= res!49535 (isDefined!27 lt!21820))))

(declare-datatypes () ((Option!769 (None!741) (Some!740 (v!3224 tuple2!524)))))

(declare-fun map!733 (Option!769 Int) Option!768)

(declare-fun find!8 (List!896 Int) Option!769)

(assert (=> bs!43360 (= lt!21820 (map!733 (find!8 transfers!5 lambda!11299) lambda!11268))))

(declare-fun lt!21821 () Int)

(assert (=> bs!43360 (= lt!21821 (_2!301 (h!7729 transfers!5)))))

(assert (=> bs!43360 (= (dynLambda!1156 lambda!11273 (h!7729 transfers!5)) e!51868)))

(declare-fun b!95171 () Bool)

(declare-fun e!51869 () Bool)

(declare-fun get!1256 (Option!768) Int)

(assert (=> b!95171 (= e!51869 (> (get!1256 lt!21820) 0))))

(declare-fun b!95168 () Bool)

(declare-fun res!49538 () Bool)

(assert (=> b!95168 (=> (not res!49538) (not e!51868))))

(declare-fun e!51870 () Bool)

(assert (=> b!95168 (= res!49538 e!51870)))

(declare-fun res!49536 () Bool)

(assert (=> b!95168 (=> res!49536 e!51870)))

(assert (=> b!95168 (= res!49536 (= (get!1256 lt!21820) 0))))

(declare-fun b!95169 () Bool)

(assert (=> b!95169 (= e!51870 (= lt!21821 0))))

(declare-fun b!95170 () Bool)

(assert (=> b!95170 (= e!51868 e!51869)))

(declare-fun res!49537 () Bool)

(assert (=> b!95170 (=> res!49537 e!51869)))

(assert (=> b!95170 (= res!49537 (> lt!21821 0))))

(assert (= (and bs!43360 res!49535) b!95168))

(assert (= (and b!95168 (not res!49536)) b!95169))

(assert (= (and b!95168 res!49538) b!95170))

(assert (= (and b!95170 (not res!49537)) b!95171))

(declare-fun m!90355 () Bool)

(assert (=> bs!43360 m!90355))

(declare-fun m!90357 () Bool)

(assert (=> bs!43360 m!90357))

(assert (=> bs!43360 m!90357))

(declare-fun m!90359 () Bool)

(assert (=> bs!43360 m!90359))

(declare-fun m!90361 () Bool)

(assert (=> b!95171 m!90361))

(assert (=> b!95168 m!90361))

(assert (=> b!95148 d!61796))

(declare-fun b_lambda!19037 () Bool)

(assert (= b_lambda!19017 (or b!95120 b_lambda!19037)))

(declare-fun bs!43362 () Bool)

(declare-fun d!61798 () Bool)

(assert (= bs!43362 (and d!61798 b!95120)))

(assert (=> bs!43362 (= (dynLambda!1155 lambda!11271 (h!7729 transfers!5)) (_1!301 (h!7729 transfers!5)))))

(assert (=> b!95143 d!61798))

(push 1)

(assert (not d!61768))

(assert (not b_lambda!19035))

(assert (not bs!43360))

(assert (not bs!43355))

(assert (not b_lambda!19031))

(assert (not b!95149))

(assert (not b_lambda!19029))

(assert (not b_lambda!19033))

(assert (not b!95143))

(assert (not b!95157))

(assert (not b_lambda!19027))

(assert (not d!61770))

(assert (not d!61772))

(assert (not b!95171))

(assert (not d!61785))

(assert (not d!61782))

(assert (not b!95163))

(assert (not b_lambda!19037))

(assert (not b!95137))

(assert (not b!95168))

(assert (not d!61780))

(assert (not b!95151))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61800 () Bool)

(declare-fun lt!21824 () Int)

(assert (=> d!61800 (>= lt!21824 0)))

(declare-fun e!51873 () Int)

(assert (=> d!61800 (= lt!21824 e!51873)))

(declare-fun c!23354 () Bool)

(assert (=> d!61800 (= c!23354 (is-Nil!838 lt!21819))))

(assert (=> d!61800 (= (size!1003 lt!21819) lt!21824)))

(declare-fun b!95178 () Bool)

(assert (=> b!95178 (= e!51873 0)))

(declare-fun b!95179 () Bool)

(assert (=> b!95179 (= e!51873 (+ 1 (size!1003 (t!56044 lt!21819))))))

(assert (= (and d!61800 c!23354) b!95178))

(assert (= (and d!61800 (not c!23354)) b!95179))

(declare-fun m!90363 () Bool)

(assert (=> b!95179 m!90363))

(assert (=> d!61780 d!61800))

(declare-fun d!61802 () Bool)

(declare-fun lt!21827 () Int)

(assert (=> d!61802 (>= lt!21827 0)))

(declare-fun e!51876 () Int)

(assert (=> d!61802 (= lt!21827 e!51876)))

(declare-fun c!23357 () Bool)

(assert (=> d!61802 (= c!23357 (is-Nil!836 transfers!5))))

(assert (=> d!61802 (= (size!1002 transfers!5) lt!21827)))

(declare-fun b!95184 () Bool)

(assert (=> b!95184 (= e!51876 0)))

(declare-fun b!95185 () Bool)

(assert (=> b!95185 (= e!51876 (+ 1 (size!1002 (t!56042 transfers!5))))))

(assert (= (and d!61802 c!23357) b!95184))

(assert (= (and d!61802 (not c!23357)) b!95185))

(declare-fun m!90365 () Bool)

(assert (=> b!95185 m!90365))

(assert (=> d!61780 d!61802))

(declare-fun d!61804 () Bool)

(declare-fun c!23358 () Bool)

(assert (=> d!61804 (= c!23358 (is-Nil!838 (t!56044 (map!731 transfers!5 lambda!11268))))))

(declare-fun e!51877 () Int)

(assert (=> d!61804 (= (foldLeft!11 (t!56044 (map!731 transfers!5 lambda!11268)) (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) lambda!11269) e!51877)))

(declare-fun b!95186 () Bool)

(assert (=> b!95186 (= e!51877 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))))))

(declare-fun b!95187 () Bool)

(assert (=> b!95187 (= e!51877 (foldLeft!11 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))) (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) lambda!11269))))

(assert (= (and d!61804 c!23358) b!95186))

(assert (= (and d!61804 (not c!23358)) b!95187))

(declare-fun b_lambda!19039 () Bool)

(assert (=> (not b_lambda!19039) (not b!95187)))

(assert (=> b!95187 m!90333))

(declare-fun m!90367 () Bool)

(assert (=> b!95187 m!90367))

(assert (=> b!95187 m!90367))

(declare-fun m!90369 () Bool)

(assert (=> b!95187 m!90369))

(assert (=> b!95157 d!61804))

(declare-fun d!61806 () Bool)

(assert (=> d!61806 (= (get!1256 lt!21820) (v!3223 lt!21820))))

(assert (=> b!95171 d!61806))

(declare-fun d!61808 () Bool)

(declare-fun c!23361 () Bool)

(assert (=> d!61808 (= c!23361 (is-Nil!839 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))

(declare-fun e!51880 () Bool)

(assert (=> d!61808 (= (foldLeft!12 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282) true lambda!11285) e!51880)))

(declare-fun b!95192 () Bool)

(assert (=> b!95192 (= e!51880 true)))

(declare-fun b!95193 () Bool)

(declare-fun dynLambda!1159 (Int Bool Bool) Bool)

(assert (=> b!95193 (= e!51880 (foldLeft!12 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)) (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) lambda!11285))))

(assert (= (and d!61808 c!23361) b!95192))

(assert (= (and d!61808 (not c!23361)) b!95193))

(declare-fun b_lambda!19041 () Bool)

(assert (=> (not b_lambda!19041) (not b!95193)))

(declare-fun m!90371 () Bool)

(assert (=> b!95193 m!90371))

(assert (=> b!95193 m!90371))

(declare-fun m!90373 () Bool)

(assert (=> b!95193 m!90373))

(assert (=> d!61782 d!61808))

(declare-fun d!61810 () Bool)

(declare-fun lt!21830 () List!899)

(declare-fun size!1004 (List!899) Int)

(declare-fun size!1005 (List!900) Int)

(assert (=> d!61810 (= (size!1004 lt!21830) (size!1005 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))

(declare-fun e!51883 () List!899)

(assert (=> d!61810 (= lt!21830 e!51883)))

(declare-fun c!23364 () Bool)

(assert (=> d!61810 (= c!23364 (is-Nil!840 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))

(assert (=> d!61810 (= (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282) lt!21830)))

(declare-fun b!95198 () Bool)

(assert (=> b!95198 (= e!51883 Nil!839)))

(declare-fun b!95199 () Bool)

(declare-fun $colon$colon!32 (List!899 Bool) List!899)

(declare-fun dynLambda!1160 (Int S!137) Bool)

(assert (=> b!95199 (= e!51883 ($colon$colon!32 (map!732 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)) lambda!11282) (dynLambda!1160 lambda!11282 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))))

(assert (= (and d!61810 c!23364) b!95198))

(assert (= (and d!61810 (not c!23364)) b!95199))

(declare-fun b_lambda!19043 () Bool)

(assert (=> (not b_lambda!19043) (not b!95199)))

(declare-fun m!90375 () Bool)

(assert (=> d!61810 m!90375))

(declare-fun m!90377 () Bool)

(assert (=> d!61810 m!90377))

(declare-fun m!90379 () Bool)

(assert (=> b!95199 m!90379))

(declare-fun m!90381 () Bool)

(assert (=> b!95199 m!90381))

(assert (=> b!95199 m!90379))

(assert (=> b!95199 m!90381))

(declare-fun m!90383 () Bool)

(assert (=> b!95199 m!90383))

(assert (=> d!61782 d!61810))

(declare-fun d!61812 () Bool)

(declare-fun lt!21833 () Int)

(assert (=> d!61812 (>= lt!21833 0)))

(declare-fun e!51886 () Int)

(assert (=> d!61812 (= lt!21833 e!51886)))

(declare-fun c!23367 () Bool)

(assert (=> d!61812 (= c!23367 (is-Nil!837 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))))

(assert (=> d!61812 (= (size!1001 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))) lt!21833)))

(declare-fun b!95204 () Bool)

(assert (=> b!95204 (= e!51886 0)))

(declare-fun b!95205 () Bool)

(assert (=> b!95205 (= e!51886 (+ 1 (size!1001 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))))))

(assert (= (and d!61812 c!23367) b!95204))

(assert (= (and d!61812 (not c!23367)) b!95205))

(declare-fun m!90385 () Bool)

(assert (=> b!95205 m!90385))

(assert (=> d!61772 d!61812))

(declare-fun bs!43363 () Bool)

(declare-fun d!61814 () Bool)

(assert (= bs!43363 (and d!61814 b!95121)))

(declare-fun lambda!11302 () Int)

(assert (=> bs!43363 (not (= lambda!11302 lambda!11273))))

(declare-fun bs!43364 () Bool)

(assert (= bs!43364 (and d!61814 d!61788 b!95125)))

(assert (=> bs!43364 (not (= lambda!11302 lambda!11298))))

(declare-fun bs!43365 () Bool)

(assert (= bs!43365 (and d!61814 d!61796 b!95121)))

(assert (=> bs!43365 (not (= lambda!11302 lambda!11299))))

(assert (=> d!61814 true))

(declare-fun order!527 () Int)

(declare-fun dynLambda!1161 (Int Int) Int)

(assert (=> d!61814 (< (dynLambda!1161 order!527 lambda!11298) (dynLambda!1161 order!527 lambda!11302))))

(assert (=> d!61814 (= (exists!12 transfers!5 lambda!11298) (not (forall!87 transfers!5 lambda!11302)))))

(declare-fun bs!43366 () Bool)

(assert (= bs!43366 d!61814))

(declare-fun m!90387 () Bool)

(assert (=> bs!43366 m!90387))

(assert (=> bs!43355 d!61814))

(declare-fun d!61816 () Bool)

(assert (=> d!61816 (= ($colon$colon!31 (map!731 (t!56042 transfers!5) lambda!11268) (dynLambda!1158 lambda!11268 (h!7729 transfers!5))) (Cons!836 (dynLambda!1158 lambda!11268 (h!7729 transfers!5)) (map!731 (t!56042 transfers!5) lambda!11268)))))

(assert (=> b!95163 d!61816))

(declare-fun d!61818 () Bool)

(declare-fun lt!21834 () List!898)

(assert (=> d!61818 (= (size!1003 lt!21834) (size!1002 (t!56042 transfers!5)))))

(declare-fun e!51887 () List!898)

(assert (=> d!61818 (= lt!21834 e!51887)))

(declare-fun c!23368 () Bool)

(assert (=> d!61818 (= c!23368 (is-Nil!836 (t!56042 transfers!5)))))

(assert (=> d!61818 (= (map!731 (t!56042 transfers!5) lambda!11268) lt!21834)))

(declare-fun b!95208 () Bool)

(assert (=> b!95208 (= e!51887 Nil!838)))

(declare-fun b!95209 () Bool)

(assert (=> b!95209 (= e!51887 ($colon$colon!31 (map!731 (t!56042 (t!56042 transfers!5)) lambda!11268) (dynLambda!1158 lambda!11268 (h!7729 (t!56042 transfers!5)))))))

(assert (= (and d!61818 c!23368) b!95208))

(assert (= (and d!61818 (not c!23368)) b!95209))

(declare-fun b_lambda!19045 () Bool)

(assert (=> (not b_lambda!19045) (not b!95209)))

(declare-fun m!90389 () Bool)

(assert (=> d!61818 m!90389))

(assert (=> d!61818 m!90365))

(declare-fun m!90391 () Bool)

(assert (=> b!95209 m!90391))

(declare-fun m!90393 () Bool)

(assert (=> b!95209 m!90393))

(assert (=> b!95209 m!90391))

(assert (=> b!95209 m!90393))

(declare-fun m!90395 () Bool)

(assert (=> b!95209 m!90395))

(assert (=> b!95163 d!61818))

(declare-fun d!61820 () Bool)

(declare-fun res!49539 () Bool)

(declare-fun e!51888 () Bool)

(assert (=> d!61820 (=> res!49539 e!51888)))

(assert (=> d!61820 (= res!49539 (is-Nil!837 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))))

(assert (=> d!61820 (= (forall!86 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))) lambda!11270) e!51888)))

(declare-fun b!95210 () Bool)

(declare-fun e!51889 () Bool)

(assert (=> b!95210 (= e!51888 e!51889)))

(declare-fun res!49540 () Bool)

(assert (=> b!95210 (=> (not res!49540) (not e!51889))))

(assert (=> b!95210 (= res!49540 (dynLambda!1154 lambda!11270 (h!7730 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))))))

(declare-fun b!95211 () Bool)

(assert (=> b!95211 (= e!51889 (forall!86 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) lambda!11270))))

(assert (= (and d!61820 (not res!49539)) b!95210))

(assert (= (and b!95210 res!49540) b!95211))

(declare-fun b_lambda!19047 () Bool)

(assert (=> (not b_lambda!19047) (not b!95210)))

(declare-fun m!90397 () Bool)

(assert (=> b!95210 m!90397))

(declare-fun m!90399 () Bool)

(assert (=> b!95211 m!90399))

(assert (=> b!95151 d!61820))

(declare-fun d!61822 () Bool)

(declare-fun lt!21835 () Int)

(assert (=> d!61822 (>= lt!21835 0)))

(declare-fun e!51890 () Int)

(assert (=> d!61822 (= lt!21835 e!51890)))

(declare-fun c!23369 () Bool)

(assert (=> d!61822 (= c!23369 (is-Nil!837 lt!21816))))

(assert (=> d!61822 (= (size!1001 lt!21816) lt!21835)))

(declare-fun b!95212 () Bool)

(assert (=> b!95212 (= e!51890 0)))

(declare-fun b!95213 () Bool)

(assert (=> b!95213 (= e!51890 (+ 1 (size!1001 (t!56043 lt!21816))))))

(assert (= (and d!61822 c!23369) b!95212))

(assert (= (and d!61822 (not c!23369)) b!95213))

(declare-fun m!90401 () Bool)

(assert (=> b!95213 m!90401))

(assert (=> d!61768 d!61822))

(assert (=> d!61768 d!61802))

(assert (=> b!95168 d!61806))

(declare-fun d!61824 () Bool)

(declare-fun res!49541 () Bool)

(declare-fun e!51891 () Bool)

(assert (=> d!61824 (=> res!49541 e!51891)))

(assert (=> d!61824 (= res!49541 (is-Nil!837 (t!56043 (map!730 transfers!5 lambda!11271))))))

(assert (=> d!61824 (= (forall!86 (t!56043 (map!730 transfers!5 lambda!11271)) lambda!11272) e!51891)))

(declare-fun b!95214 () Bool)

(declare-fun e!51892 () Bool)

(assert (=> b!95214 (= e!51891 e!51892)))

(declare-fun res!49542 () Bool)

(assert (=> b!95214 (=> (not res!49542) (not e!51892))))

(assert (=> b!95214 (= res!49542 (dynLambda!1154 lambda!11272 (h!7730 (t!56043 (map!730 transfers!5 lambda!11271)))))))

(declare-fun b!95215 () Bool)

(assert (=> b!95215 (= e!51892 (forall!86 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))) lambda!11272))))

(assert (= (and d!61824 (not res!49541)) b!95214))

(assert (= (and b!95214 res!49542) b!95215))

(declare-fun b_lambda!19049 () Bool)

(assert (=> (not b_lambda!19049) (not b!95214)))

(declare-fun m!90403 () Bool)

(assert (=> b!95214 m!90403))

(declare-fun m!90405 () Bool)

(assert (=> b!95215 m!90405))

(assert (=> b!95137 d!61824))

(declare-fun d!61826 () Bool)

(declare-fun c!23370 () Bool)

(assert (=> d!61826 (= c!23370 (is-Nil!839 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))

(declare-fun e!51893 () Bool)

(assert (=> d!61826 (= (foldLeft!12 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296) true lambda!11297) e!51893)))

(declare-fun b!95216 () Bool)

(assert (=> b!95216 (= e!51893 true)))

(declare-fun b!95217 () Bool)

(assert (=> b!95217 (= e!51893 (foldLeft!12 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)) (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) lambda!11297))))

(assert (= (and d!61826 c!23370) b!95216))

(assert (= (and d!61826 (not c!23370)) b!95217))

(declare-fun b_lambda!19051 () Bool)

(assert (=> (not b_lambda!19051) (not b!95217)))

(declare-fun m!90407 () Bool)

(assert (=> b!95217 m!90407))

(assert (=> b!95217 m!90407))

(declare-fun m!90409 () Bool)

(assert (=> b!95217 m!90409))

(assert (=> d!61785 d!61826))

(declare-fun d!61828 () Bool)

(declare-fun lt!21836 () List!899)

(assert (=> d!61828 (= (size!1004 lt!21836) (size!1005 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))

(declare-fun e!51894 () List!899)

(assert (=> d!61828 (= lt!21836 e!51894)))

(declare-fun c!23371 () Bool)

(assert (=> d!61828 (= c!23371 (is-Nil!840 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))

(assert (=> d!61828 (= (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296) lt!21836)))

(declare-fun b!95218 () Bool)

(assert (=> b!95218 (= e!51894 Nil!839)))

(declare-fun b!95219 () Bool)

(assert (=> b!95219 (= e!51894 ($colon$colon!32 (map!732 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)) lambda!11296) (dynLambda!1160 lambda!11296 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))))

(assert (= (and d!61828 c!23371) b!95218))

(assert (= (and d!61828 (not c!23371)) b!95219))

(declare-fun b_lambda!19053 () Bool)

(assert (=> (not b_lambda!19053) (not b!95219)))

(declare-fun m!90411 () Bool)

(assert (=> d!61828 m!90411))

(declare-fun m!90413 () Bool)

(assert (=> d!61828 m!90413))

(declare-fun m!90415 () Bool)

(assert (=> b!95219 m!90415))

(declare-fun m!90417 () Bool)

(assert (=> b!95219 m!90417))

(assert (=> b!95219 m!90415))

(assert (=> b!95219 m!90417))

(declare-fun m!90419 () Bool)

(assert (=> b!95219 m!90419))

(assert (=> d!61785 d!61828))

(declare-fun d!61830 () Bool)

(declare-fun res!49543 () Bool)

(declare-fun e!51895 () Bool)

(assert (=> d!61830 (=> res!49543 e!51895)))

(assert (=> d!61830 (= res!49543 (is-Nil!836 (t!56042 transfers!5)))))

(assert (=> d!61830 (= (forall!87 (t!56042 transfers!5) lambda!11273) e!51895)))

(declare-fun b!95220 () Bool)

(declare-fun e!51896 () Bool)

(assert (=> b!95220 (= e!51895 e!51896)))

(declare-fun res!49544 () Bool)

(assert (=> b!95220 (=> (not res!49544) (not e!51896))))

(assert (=> b!95220 (= res!49544 (dynLambda!1156 lambda!11273 (h!7729 (t!56042 transfers!5))))))

(declare-fun b!95221 () Bool)

(assert (=> b!95221 (= e!51896 (forall!87 (t!56042 (t!56042 transfers!5)) lambda!11273))))

(assert (= (and d!61830 (not res!49543)) b!95220))

(assert (= (and b!95220 res!49544) b!95221))

(declare-fun b_lambda!19055 () Bool)

(assert (=> (not b_lambda!19055) (not b!95220)))

(declare-fun m!90421 () Bool)

(assert (=> b!95220 m!90421))

(declare-fun m!90423 () Bool)

(assert (=> b!95221 m!90423))

(assert (=> b!95149 d!61830))

(declare-fun d!61832 () Bool)

(assert (=> d!61832 (= ($colon$colon!30 (map!730 (t!56042 transfers!5) lambda!11271) (dynLambda!1155 lambda!11271 (h!7729 transfers!5))) (Cons!835 (dynLambda!1155 lambda!11271 (h!7729 transfers!5)) (map!730 (t!56042 transfers!5) lambda!11271)))))

(assert (=> b!95143 d!61832))

(declare-fun d!61834 () Bool)

(declare-fun lt!21837 () List!897)

(assert (=> d!61834 (= (size!1001 lt!21837) (size!1002 (t!56042 transfers!5)))))

(declare-fun e!51897 () List!897)

(assert (=> d!61834 (= lt!21837 e!51897)))

(declare-fun c!23372 () Bool)

(assert (=> d!61834 (= c!23372 (is-Nil!836 (t!56042 transfers!5)))))

(assert (=> d!61834 (= (map!730 (t!56042 transfers!5) lambda!11271) lt!21837)))

(declare-fun b!95222 () Bool)

(assert (=> b!95222 (= e!51897 Nil!837)))

(declare-fun b!95223 () Bool)

(assert (=> b!95223 (= e!51897 ($colon$colon!30 (map!730 (t!56042 (t!56042 transfers!5)) lambda!11271) (dynLambda!1155 lambda!11271 (h!7729 (t!56042 transfers!5)))))))

(assert (= (and d!61834 c!23372) b!95222))

(assert (= (and d!61834 (not c!23372)) b!95223))

(declare-fun b_lambda!19057 () Bool)

(assert (=> (not b_lambda!19057) (not b!95223)))

(declare-fun m!90425 () Bool)

(assert (=> d!61834 m!90425))

(assert (=> d!61834 m!90365))

(declare-fun m!90427 () Bool)

(assert (=> b!95223 m!90427))

(declare-fun m!90429 () Bool)

(assert (=> b!95223 m!90429))

(assert (=> b!95223 m!90427))

(assert (=> b!95223 m!90429))

(declare-fun m!90431 () Bool)

(assert (=> b!95223 m!90431))

(assert (=> b!95143 d!61834))

(declare-fun d!61836 () Bool)

(declare-fun isEmpty!911 (Option!768) Bool)

(assert (=> d!61836 (= (isDefined!27 lt!21820) (not (isEmpty!911 lt!21820)))))

(declare-fun bs!43367 () Bool)

(assert (= bs!43367 d!61836))

(declare-fun m!90433 () Bool)

(assert (=> bs!43367 m!90433))

(assert (=> bs!43360 d!61836))

(declare-fun d!61838 () Bool)

(declare-fun lt!21840 () Option!768)

(declare-fun isDefined!28 (Option!769) Bool)

(assert (=> d!61838 (= (isDefined!27 lt!21840) (isDefined!28 (find!8 transfers!5 lambda!11299)))))

(declare-fun e!51900 () Option!768)

(assert (=> d!61838 (= lt!21840 e!51900)))

(declare-fun c!23375 () Bool)

(assert (=> d!61838 (= c!23375 (is-None!741 (find!8 transfers!5 lambda!11299)))))

(assert (=> d!61838 (= (map!733 (find!8 transfers!5 lambda!11299) lambda!11268) lt!21840)))

(declare-fun b!95228 () Bool)

(assert (=> b!95228 (= e!51900 None!740)))

(declare-fun b!95229 () Bool)

(assert (=> b!95229 (= e!51900 (Some!739 (dynLambda!1158 lambda!11268 (v!3224 (find!8 transfers!5 lambda!11299)))))))

(assert (= (and d!61838 c!23375) b!95228))

(assert (= (and d!61838 (not c!23375)) b!95229))

(declare-fun b_lambda!19059 () Bool)

(assert (=> (not b_lambda!19059) (not b!95229)))

(declare-fun m!90435 () Bool)

(assert (=> d!61838 m!90435))

(assert (=> d!61838 m!90357))

(declare-fun m!90437 () Bool)

(assert (=> d!61838 m!90437))

(declare-fun m!90439 () Bool)

(assert (=> b!95229 m!90439))

(assert (=> bs!43360 d!61838))

(declare-fun b!95242 () Bool)

(declare-fun e!51909 () Bool)

(declare-fun lt!21843 () Option!769)

(assert (=> b!95242 (= e!51909 (dynLambda!1156 lambda!11299 (v!3224 lt!21843)))))

(declare-fun b!95243 () Bool)

(declare-fun e!51912 () Option!769)

(assert (=> b!95243 (= e!51912 (find!8 (t!56042 transfers!5) lambda!11299))))

(declare-fun d!61840 () Bool)

(declare-fun e!51911 () Bool)

(assert (=> d!61840 e!51911))

(declare-fun res!49550 () Bool)

(assert (=> d!61840 (=> res!49550 e!51911)))

(assert (=> d!61840 (= res!49550 (not (is-Some!740 lt!21843)))))

(declare-fun e!51910 () Option!769)

(assert (=> d!61840 (= lt!21843 e!51910)))

(declare-fun c!23381 () Bool)

(assert (=> d!61840 (= c!23381 (is-Nil!836 transfers!5))))

(assert (=> d!61840 (= (find!8 transfers!5 lambda!11299) lt!21843)))

(declare-fun b!95244 () Bool)

(assert (=> b!95244 (= e!51910 e!51912)))

(declare-fun c!23380 () Bool)

(assert (=> b!95244 (= c!23380 (dynLambda!1156 lambda!11299 (h!7729 transfers!5)))))

(declare-fun b!95245 () Bool)

(assert (=> b!95245 (= e!51911 e!51909)))

(declare-fun res!49551 () Bool)

(assert (=> b!95245 (=> (not res!49551) (not e!51909))))

(declare-fun content!207 (List!896) (Set tuple2!524))

(assert (=> b!95245 (= res!49551 (member (v!3224 lt!21843) (content!207 transfers!5)))))

(declare-fun b!95246 () Bool)

(assert (=> b!95246 (= e!51910 None!741)))

(declare-fun b!95247 () Bool)

(assert (=> b!95247 (= e!51912 (Some!740 (h!7729 transfers!5)))))

(assert (= (and b!95244 c!23380) b!95247))

(assert (= (and b!95244 (not c!23380)) b!95243))

(assert (= (and d!61840 c!23381) b!95246))

(assert (= (and d!61840 (not c!23381)) b!95244))

(assert (= (and d!61840 (not res!49550)) b!95245))

(assert (= (and b!95245 res!49551) b!95242))

(declare-fun b_lambda!19061 () Bool)

(assert (=> (not b_lambda!19061) (not b!95242)))

(declare-fun b_lambda!19063 () Bool)

(assert (=> (not b_lambda!19063) (not b!95244)))

(declare-fun m!90441 () Bool)

(assert (=> b!95242 m!90441))

(declare-fun m!90443 () Bool)

(assert (=> b!95243 m!90443))

(declare-fun m!90445 () Bool)

(assert (=> b!95244 m!90445))

(declare-fun m!90447 () Bool)

(assert (=> b!95245 m!90447))

(declare-fun m!90449 () Bool)

(assert (=> b!95245 m!90449))

(assert (=> bs!43360 d!61840))

(assert (=> d!61770 d!61802))

(declare-fun b_lambda!19065 () Bool)

(assert (= b_lambda!19039 (or start!15478 b_lambda!19065)))

(declare-fun bs!43368 () Bool)

(declare-fun d!61842 () Bool)

(assert (= bs!43368 (and d!61842 start!15478)))

(assert (=> bs!43368 (= (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (+ (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))))))

(assert (=> b!95187 d!61842))

(declare-fun b_lambda!19067 () Bool)

(assert (= b_lambda!19055 (or b!95121 b_lambda!19067)))

(declare-fun bs!43369 () Bool)

(declare-fun d!61844 () Bool)

(assert (= bs!43369 (and d!61844 b!95121)))

(declare-fun lambda!11303 () Int)

(assert (=> bs!43369 (not (= lambda!11303 lambda!11273))))

(declare-fun bs!43370 () Bool)

(assert (= bs!43370 (and d!61844 b!95121 d!61788 b!95125)))

(assert (=> bs!43370 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5))))) (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) (= lambda!11303 lambda!11298))))

(declare-fun bs!43371 () Bool)

(assert (= bs!43371 (and d!61844 b!95121 d!61796)))

(assert (=> bs!43371 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5))))) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))) (= lambda!11303 lambda!11299))))

(declare-fun bs!43372 () Bool)

(assert (= bs!43372 (and d!61844 b!95121 d!61814)))

(assert (=> bs!43372 (not (= lambda!11303 lambda!11302))))

(assert (=> bs!43369 true))

(declare-fun res!49552 () Bool)

(declare-fun e!51913 () Bool)

(assert (=> bs!43369 (=> (not res!49552) (not e!51913))))

(declare-fun lt!21844 () Option!768)

(assert (=> bs!43369 (= res!49552 (isDefined!27 lt!21844))))

(assert (=> bs!43369 (= lt!21844 (map!733 (find!8 transfers!5 lambda!11303) lambda!11268))))

(declare-fun lt!21845 () Int)

(assert (=> bs!43369 (= lt!21845 (_2!301 (h!7729 (t!56042 transfers!5))))))

(assert (=> bs!43369 (= (dynLambda!1156 lambda!11273 (h!7729 (t!56042 transfers!5))) e!51913)))

(declare-fun b!95251 () Bool)

(declare-fun e!51914 () Bool)

(assert (=> b!95251 (= e!51914 (> (get!1256 lt!21844) 0))))

(declare-fun b!95248 () Bool)

(declare-fun res!49555 () Bool)

(assert (=> b!95248 (=> (not res!49555) (not e!51913))))

(declare-fun e!51915 () Bool)

(assert (=> b!95248 (= res!49555 e!51915)))

(declare-fun res!49553 () Bool)

(assert (=> b!95248 (=> res!49553 e!51915)))

(assert (=> b!95248 (= res!49553 (= (get!1256 lt!21844) 0))))

(declare-fun b!95249 () Bool)

(assert (=> b!95249 (= e!51915 (= lt!21845 0))))

(declare-fun b!95250 () Bool)

(assert (=> b!95250 (= e!51913 e!51914)))

(declare-fun res!49554 () Bool)

(assert (=> b!95250 (=> res!49554 e!51914)))

(assert (=> b!95250 (= res!49554 (> lt!21845 0))))

(assert (= (and bs!43369 res!49552) b!95248))

(assert (= (and b!95248 (not res!49553)) b!95249))

(assert (= (and b!95248 res!49555) b!95250))

(assert (= (and b!95250 (not res!49554)) b!95251))

(declare-fun m!90451 () Bool)

(assert (=> bs!43369 m!90451))

(declare-fun m!90453 () Bool)

(assert (=> bs!43369 m!90453))

(assert (=> bs!43369 m!90453))

(declare-fun m!90455 () Bool)

(assert (=> bs!43369 m!90455))

(declare-fun m!90457 () Bool)

(assert (=> b!95251 m!90457))

(assert (=> b!95248 m!90457))

(assert (=> b!95220 d!61844))

(declare-fun b_lambda!19069 () Bool)

(assert (= b_lambda!19047 (or b!95125 b_lambda!19069)))

(declare-fun bs!43373 () Bool)

(declare-fun d!61846 () Bool)

(assert (= bs!43373 (and d!61846 b!95125)))

(declare-fun bs!43374 () Bool)

(assert (= bs!43374 (and d!61846 b!95125 b!95121)))

(declare-fun lambda!11304 () Int)

(assert (=> bs!43374 (not (= lambda!11304 lambda!11273))))

(declare-fun bs!43375 () Bool)

(assert (= bs!43375 (and d!61846 b!95125 d!61814)))

(assert (=> bs!43375 (not (= lambda!11304 lambda!11302))))

(declare-fun bs!43376 () Bool)

(assert (= bs!43376 (and d!61846 b!95125 d!61844 b!95121)))

(assert (=> bs!43376 (= (= (h!7730 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))) (= lambda!11304 lambda!11303))))

(declare-fun bs!43377 () Bool)

(assert (= bs!43377 (and d!61846 b!95125 d!61796 b!95121)))

(assert (=> bs!43377 (= (= (h!7730 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))) (= lambda!11304 lambda!11299))))

(declare-fun bs!43378 () Bool)

(assert (= bs!43378 (and d!61846 b!95125 d!61788)))

(assert (=> bs!43378 (= (= (h!7730 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) (= lambda!11304 lambda!11298))))

(assert (=> bs!43373 true))

(assert (=> bs!43373 (= (dynLambda!1154 lambda!11270 (h!7730 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))) (exists!12 transfers!5 lambda!11304))))

(declare-fun m!90459 () Bool)

(assert (=> bs!43373 m!90459))

(assert (=> b!95210 d!61846))

(declare-fun b_lambda!19071 () Bool)

(assert (= b_lambda!19057 (or b!95120 b_lambda!19071)))

(declare-fun bs!43379 () Bool)

(declare-fun d!61848 () Bool)

(assert (= bs!43379 (and d!61848 b!95120)))

(assert (=> bs!43379 (= (dynLambda!1155 lambda!11271 (h!7729 (t!56042 transfers!5))) (_1!301 (h!7729 (t!56042 transfers!5))))))

(assert (=> b!95223 d!61848))

(declare-fun b_lambda!19073 () Bool)

(assert (= b_lambda!19061 (or bs!43360 b_lambda!19073)))

(declare-fun bs!43380 () Bool)

(declare-fun d!61850 () Bool)

(assert (= bs!43380 (and d!61850 d!61796 b!95121)))

(assert (=> bs!43380 (= (dynLambda!1156 lambda!11299 (v!3224 lt!21843)) (= (_1!301 (v!3224 lt!21843)) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))))))

(assert (=> b!95242 d!61850))

(declare-fun b_lambda!19075 () Bool)

(assert (= b_lambda!19043 (or d!61782 b_lambda!19075)))

(declare-fun bs!43381 () Bool)

(declare-fun d!61852 () Bool)

(assert (= bs!43381 (and d!61852 d!61782)))

(declare-fun fuzEq!0 (Int Int) Bool)

(declare-fun from!4 (P!93 List!896) List!896)

(assert (=> bs!43381 (= (dynLambda!1160 lambda!11282 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) (fuzEq!0 (foldLeft!11 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283) 0 lambda!11284) (amount!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))))

(declare-fun m!90461 () Bool)

(assert (=> bs!43381 m!90461))

(declare-fun m!90463 () Bool)

(assert (=> bs!43381 m!90463))

(declare-fun m!90465 () Bool)

(assert (=> bs!43381 m!90465))

(declare-fun m!90467 () Bool)

(assert (=> bs!43381 m!90467))

(assert (=> bs!43381 m!90461))

(assert (=> bs!43381 m!90463))

(assert (=> bs!43381 m!90465))

(assert (=> b!95199 d!61852))

(declare-fun b_lambda!19077 () Bool)

(assert (= b_lambda!19051 (or d!61785 b_lambda!19077)))

(declare-fun bs!43382 () Bool)

(declare-fun d!61854 () Bool)

(assert (= bs!43382 (and d!61854 d!61785)))

(assert (=> bs!43382 (= (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))

(assert (=> b!95217 d!61854))

(declare-fun b_lambda!19079 () Bool)

(assert (= b_lambda!19063 (or bs!43360 b_lambda!19079)))

(declare-fun bs!43383 () Bool)

(declare-fun d!61856 () Bool)

(assert (= bs!43383 (and d!61856 d!61796 b!95121)))

(assert (=> bs!43383 (= (dynLambda!1156 lambda!11299 (h!7729 transfers!5)) (= (_1!301 (h!7729 transfers!5)) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))))))

(assert (=> b!95244 d!61856))

(declare-fun b_lambda!19081 () Bool)

(assert (= b_lambda!19045 (or start!15478 b_lambda!19081)))

(declare-fun bs!43384 () Bool)

(declare-fun d!61858 () Bool)

(assert (= bs!43384 (and d!61858 start!15478)))

(assert (=> bs!43384 (= (dynLambda!1158 lambda!11268 (h!7729 (t!56042 transfers!5))) (_2!301 (h!7729 (t!56042 transfers!5))))))

(assert (=> b!95209 d!61858))

(declare-fun b_lambda!19083 () Bool)

(assert (= b_lambda!19049 (or b!95120 b_lambda!19083)))

(declare-fun bs!43385 () Bool)

(declare-fun d!61860 () Bool)

(assert (= bs!43385 (and d!61860 b!95120)))

(assert (=> bs!43385 (= (dynLambda!1154 lambda!11272 (h!7730 (t!56043 (map!730 transfers!5 lambda!11271)))) (not (= (_1!300 (h!7730 (t!56043 (map!730 transfers!5 lambda!11271)))) (_2!300 (h!7730 (t!56043 (map!730 transfers!5 lambda!11271)))))))))

(assert (=> b!95214 d!61860))

(declare-fun b_lambda!19085 () Bool)

(assert (= b_lambda!19059 (or start!15478 b_lambda!19085)))

(declare-fun bs!43386 () Bool)

(declare-fun d!61862 () Bool)

(assert (= bs!43386 (and d!61862 start!15478)))

(assert (=> bs!43386 (= (dynLambda!1158 lambda!11268 (v!3224 (find!8 transfers!5 lambda!11299))) (_2!301 (v!3224 (find!8 transfers!5 lambda!11299))))))

(assert (=> b!95229 d!61862))

(declare-fun b_lambda!19087 () Bool)

(assert (= b_lambda!19053 (or d!61785 b_lambda!19087)))

(declare-fun bs!43387 () Bool)

(declare-fun d!61864 () Bool)

(assert (= bs!43387 (and d!61864 d!61785)))

(declare-fun to!4 (P!93 List!896) List!896)

(assert (=> bs!43387 (= (dynLambda!1160 lambda!11296 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) (fuzEq!0 (- (foldLeft!11 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294) 0 lambda!11295)) (amount!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))))

(declare-fun m!90469 () Bool)

(assert (=> bs!43387 m!90469))

(declare-fun m!90471 () Bool)

(assert (=> bs!43387 m!90471))

(declare-fun m!90473 () Bool)

(assert (=> bs!43387 m!90473))

(assert (=> bs!43387 m!90469))

(assert (=> bs!43387 m!90471))

(declare-fun m!90475 () Bool)

(assert (=> bs!43387 m!90475))

(assert (=> b!95219 d!61864))

(declare-fun b_lambda!19089 () Bool)

(assert (= b_lambda!19041 (or d!61782 b_lambda!19089)))

(declare-fun bs!43388 () Bool)

(declare-fun d!61866 () Bool)

(assert (= bs!43388 (and d!61866 d!61782)))

(assert (=> bs!43388 (= (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))

(assert (=> b!95193 d!61866))

(push 1)

(assert (not b!95217))

(assert (not b!95193))

(assert (not b!95209))

(assert (not b!95219))

(assert (not d!61834))

(assert (not b!95223))

(assert (not b_lambda!19083))

(assert (not b_lambda!19087))

(assert (not b_lambda!19035))

(assert (not b!95251))

(assert (not b!95199))

(assert (not b_lambda!19067))

(assert (not bs!43381))

(assert (not d!61836))

(assert (not d!61828))

(assert (not b_lambda!19031))

(assert (not b!95243))

(assert (not d!61814))

(assert (not b_lambda!19071))

(assert (not b!95248))

(assert (not bs!43373))

(assert (not b_lambda!19077))

(assert (not b_lambda!19081))

(assert (not b!95185))

(assert (not b_lambda!19075))

(assert (not b_lambda!19029))

(assert (not b_lambda!19033))

(assert (not d!61818))

(assert (not b_lambda!19069))

(assert (not b!95205))

(assert (not b_lambda!19065))

(assert (not d!61838))

(assert (not b_lambda!19027))

(assert (not bs!43369))

(assert (not b!95221))

(assert (not b!95211))

(assert (not b_lambda!19089))

(assert (not b!95179))

(assert (not b!95245))

(assert (not d!61810))

(assert (not b_lambda!19037))

(assert (not b_lambda!19085))

(assert (not bs!43387))

(assert (not b_lambda!19079))

(assert (not b!95187))

(assert (not b_lambda!19073))

(assert (not b!95215))

(assert (not b!95213))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!95252 () Bool)

(declare-fun e!51916 () Bool)

(declare-fun lt!21846 () Option!769)

(assert (=> b!95252 (= e!51916 (dynLambda!1156 lambda!11299 (v!3224 lt!21846)))))

(declare-fun b!95253 () Bool)

(declare-fun e!51919 () Option!769)

(assert (=> b!95253 (= e!51919 (find!8 (t!56042 (t!56042 transfers!5)) lambda!11299))))

(declare-fun d!61868 () Bool)

(declare-fun e!51918 () Bool)

(assert (=> d!61868 e!51918))

(declare-fun res!49556 () Bool)

(assert (=> d!61868 (=> res!49556 e!51918)))

(assert (=> d!61868 (= res!49556 (not (is-Some!740 lt!21846)))))

(declare-fun e!51917 () Option!769)

(assert (=> d!61868 (= lt!21846 e!51917)))

(declare-fun c!23383 () Bool)

(assert (=> d!61868 (= c!23383 (is-Nil!836 (t!56042 transfers!5)))))

(assert (=> d!61868 (= (find!8 (t!56042 transfers!5) lambda!11299) lt!21846)))

(declare-fun b!95254 () Bool)

(assert (=> b!95254 (= e!51917 e!51919)))

(declare-fun c!23382 () Bool)

(assert (=> b!95254 (= c!23382 (dynLambda!1156 lambda!11299 (h!7729 (t!56042 transfers!5))))))

(declare-fun b!95255 () Bool)

(assert (=> b!95255 (= e!51918 e!51916)))

(declare-fun res!49557 () Bool)

(assert (=> b!95255 (=> (not res!49557) (not e!51916))))

(assert (=> b!95255 (= res!49557 (member (v!3224 lt!21846) (content!207 (t!56042 transfers!5))))))

(declare-fun b!95256 () Bool)

(assert (=> b!95256 (= e!51917 None!741)))

(declare-fun b!95257 () Bool)

(assert (=> b!95257 (= e!51919 (Some!740 (h!7729 (t!56042 transfers!5))))))

(assert (= (and b!95254 c!23382) b!95257))

(assert (= (and b!95254 (not c!23382)) b!95253))

(assert (= (and d!61868 c!23383) b!95256))

(assert (= (and d!61868 (not c!23383)) b!95254))

(assert (= (and d!61868 (not res!49556)) b!95255))

(assert (= (and b!95255 res!49557) b!95252))

(declare-fun b_lambda!19091 () Bool)

(assert (=> (not b_lambda!19091) (not b!95252)))

(declare-fun b_lambda!19093 () Bool)

(assert (=> (not b_lambda!19093) (not b!95254)))

(declare-fun m!90477 () Bool)

(assert (=> b!95252 m!90477))

(declare-fun m!90479 () Bool)

(assert (=> b!95253 m!90479))

(declare-fun m!90481 () Bool)

(assert (=> b!95254 m!90481))

(declare-fun m!90483 () Bool)

(assert (=> b!95255 m!90483))

(declare-fun m!90485 () Bool)

(assert (=> b!95255 m!90485))

(assert (=> b!95243 d!61868))

(declare-fun d!61870 () Bool)

(declare-fun lt!21847 () Int)

(assert (=> d!61870 (>= lt!21847 0)))

(declare-fun e!51920 () Int)

(assert (=> d!61870 (= lt!21847 e!51920)))

(declare-fun c!23384 () Bool)

(assert (=> d!61870 (= c!23384 (is-Nil!837 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))))

(assert (=> d!61870 (= (size!1001 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) lt!21847)))

(declare-fun b!95258 () Bool)

(assert (=> b!95258 (= e!51920 0)))

(declare-fun b!95259 () Bool)

(assert (=> b!95259 (= e!51920 (+ 1 (size!1001 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))))))

(assert (= (and d!61870 c!23384) b!95258))

(assert (= (and d!61870 (not c!23384)) b!95259))

(declare-fun m!90487 () Bool)

(assert (=> b!95259 m!90487))

(assert (=> b!95205 d!61870))

(declare-fun d!61872 () Bool)

(declare-fun res!49558 () Bool)

(declare-fun e!51921 () Bool)

(assert (=> d!61872 (=> res!49558 e!51921)))

(assert (=> d!61872 (= res!49558 (is-Nil!836 transfers!5))))

(assert (=> d!61872 (= (forall!87 transfers!5 lambda!11302) e!51921)))

(declare-fun b!95260 () Bool)

(declare-fun e!51922 () Bool)

(assert (=> b!95260 (= e!51921 e!51922)))

(declare-fun res!49559 () Bool)

(assert (=> b!95260 (=> (not res!49559) (not e!51922))))

(assert (=> b!95260 (= res!49559 (dynLambda!1156 lambda!11302 (h!7729 transfers!5)))))

(declare-fun b!95261 () Bool)

(assert (=> b!95261 (= e!51922 (forall!87 (t!56042 transfers!5) lambda!11302))))

(assert (= (and d!61872 (not res!49558)) b!95260))

(assert (= (and b!95260 res!49559) b!95261))

(declare-fun b_lambda!19095 () Bool)

(assert (=> (not b_lambda!19095) (not b!95260)))

(declare-fun m!90489 () Bool)

(assert (=> b!95260 m!90489))

(declare-fun m!90491 () Bool)

(assert (=> b!95261 m!90491))

(assert (=> d!61814 d!61872))

(declare-fun d!61874 () Bool)

(assert (=> d!61874 (= (fuzEq!0 (foldLeft!11 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283) 0 lambda!11284) (amount!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) (and (>= (foldLeft!11 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283) 0 lambda!11284) (- (amount!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) 50)) (<= (foldLeft!11 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283) 0 lambda!11284) (+ (amount!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) 50))))))

(assert (=> bs!43381 d!61874))

(declare-fun d!61876 () Bool)

(declare-fun c!23385 () Bool)

(assert (=> d!61876 (= c!23385 (is-Nil!838 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))))

(declare-fun e!51923 () Int)

(assert (=> d!61876 (= (foldLeft!11 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283) 0 lambda!11284) e!51923)))

(declare-fun b!95263 () Bool)

(assert (=> b!95263 (= e!51923 0)))

(declare-fun b!95264 () Bool)

(assert (=> b!95264 (= e!51923 (foldLeft!11 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)) (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) lambda!11284))))

(assert (= (and d!61876 c!23385) b!95263))

(assert (= (and d!61876 (not c!23385)) b!95264))

(declare-fun b_lambda!19097 () Bool)

(assert (=> (not b_lambda!19097) (not b!95264)))

(declare-fun m!90493 () Bool)

(assert (=> b!95264 m!90493))

(assert (=> b!95264 m!90493))

(declare-fun m!90495 () Bool)

(assert (=> b!95264 m!90495))

(assert (=> bs!43381 d!61876))

(declare-fun d!61878 () Bool)

(declare-fun lt!21848 () List!898)

(assert (=> d!61878 (= (size!1003 lt!21848) (size!1002 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))

(declare-fun e!51924 () List!898)

(assert (=> d!61878 (= lt!21848 e!51924)))

(declare-fun c!23386 () Bool)

(assert (=> d!61878 (= c!23386 (is-Nil!836 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))

(assert (=> d!61878 (= (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283) lt!21848)))

(declare-fun b!95265 () Bool)

(assert (=> b!95265 (= e!51924 Nil!838)))

(declare-fun b!95266 () Bool)

(assert (=> b!95266 (= e!51924 ($colon$colon!31 (map!731 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))))

(assert (= (and d!61878 c!23386) b!95265))

(assert (= (and d!61878 (not c!23386)) b!95266))

(declare-fun b_lambda!19099 () Bool)

(assert (=> (not b_lambda!19099) (not b!95266)))

(declare-fun m!90497 () Bool)

(assert (=> d!61878 m!90497))

(assert (=> d!61878 m!90461))

(declare-fun m!90499 () Bool)

(assert (=> d!61878 m!90499))

(declare-fun m!90501 () Bool)

(assert (=> b!95266 m!90501))

(declare-fun m!90503 () Bool)

(assert (=> b!95266 m!90503))

(assert (=> b!95266 m!90501))

(assert (=> b!95266 m!90503))

(declare-fun m!90505 () Bool)

(assert (=> b!95266 m!90505))

(assert (=> bs!43381 d!61878))

(declare-fun bs!43389 () Bool)

(declare-fun d!61880 () Bool)

(assert (= bs!43389 (and d!61880 d!61846 b!95125)))

(declare-fun lambda!11307 () Int)

(assert (=> bs!43389 (not (= lambda!11307 lambda!11304))))

(declare-fun bs!43390 () Bool)

(assert (= bs!43390 (and d!61880 b!95121)))

(assert (=> bs!43390 (not (= lambda!11307 lambda!11273))))

(declare-fun bs!43391 () Bool)

(assert (= bs!43391 (and d!61880 d!61814)))

(assert (=> bs!43391 (not (= lambda!11307 lambda!11302))))

(declare-fun bs!43392 () Bool)

(assert (= bs!43392 (and d!61880 d!61844 b!95121)))

(assert (=> bs!43392 (not (= lambda!11307 lambda!11303))))

(declare-fun bs!43393 () Bool)

(assert (= bs!43393 (and d!61880 d!61796 b!95121)))

(assert (=> bs!43393 (not (= lambda!11307 lambda!11299))))

(declare-fun bs!43394 () Bool)

(assert (= bs!43394 (and d!61880 d!61788 b!95125)))

(assert (=> bs!43394 (not (= lambda!11307 lambda!11298))))

(assert (=> d!61880 true))

(declare-fun filter!49 (List!896 Int) List!896)

(assert (=> d!61880 (= (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) (filter!49 transfers!5 lambda!11307))))

(declare-fun bs!43395 () Bool)

(assert (= bs!43395 d!61880))

(declare-fun m!90507 () Bool)

(assert (=> bs!43395 m!90507))

(assert (=> bs!43381 d!61880))

(declare-fun d!61882 () Bool)

(declare-fun res!49560 () Bool)

(declare-fun e!51925 () Bool)

(assert (=> d!61882 (=> res!49560 e!51925)))

(assert (=> d!61882 (= res!49560 (is-Nil!837 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))))))

(assert (=> d!61882 (= (forall!86 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) lambda!11270) e!51925)))

(declare-fun b!95269 () Bool)

(declare-fun e!51926 () Bool)

(assert (=> b!95269 (= e!51925 e!51926)))

(declare-fun res!49561 () Bool)

(assert (=> b!95269 (=> (not res!49561) (not e!51926))))

(assert (=> b!95269 (= res!49561 (dynLambda!1154 lambda!11270 (h!7730 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))))))

(declare-fun b!95270 () Bool)

(assert (=> b!95270 (= e!51926 (forall!86 (t!56043 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))) lambda!11270))))

(assert (= (and d!61882 (not res!49560)) b!95269))

(assert (= (and b!95269 res!49561) b!95270))

(declare-fun b_lambda!19101 () Bool)

(assert (=> (not b_lambda!19101) (not b!95269)))

(declare-fun m!90509 () Bool)

(assert (=> b!95269 m!90509))

(declare-fun m!90511 () Bool)

(assert (=> b!95270 m!90511))

(assert (=> b!95211 d!61882))

(declare-fun d!61884 () Bool)

(declare-fun c!23387 () Bool)

(assert (=> d!61884 (= c!23387 (is-Nil!839 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))

(declare-fun e!51927 () Bool)

(assert (=> d!61884 (= (foldLeft!12 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)) (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) lambda!11297) e!51927)))

(declare-fun b!95271 () Bool)

(assert (=> b!95271 (= e!51927 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))

(declare-fun b!95272 () Bool)

(assert (=> b!95272 (= e!51927 (foldLeft!12 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) lambda!11297))))

(assert (= (and d!61884 c!23387) b!95271))

(assert (= (and d!61884 (not c!23387)) b!95272))

(declare-fun b_lambda!19103 () Bool)

(assert (=> (not b_lambda!19103) (not b!95272)))

(assert (=> b!95272 m!90407))

(declare-fun m!90513 () Bool)

(assert (=> b!95272 m!90513))

(assert (=> b!95272 m!90513))

(declare-fun m!90515 () Bool)

(assert (=> b!95272 m!90515))

(assert (=> b!95217 d!61884))

(declare-fun d!61886 () Bool)

(assert (=> d!61886 (= (isDefined!27 lt!21840) (not (isEmpty!911 lt!21840)))))

(declare-fun bs!43396 () Bool)

(assert (= bs!43396 d!61886))

(declare-fun m!90517 () Bool)

(assert (=> bs!43396 m!90517))

(assert (=> d!61838 d!61886))

(declare-fun d!61888 () Bool)

(declare-fun isEmpty!912 (Option!769) Bool)

(assert (=> d!61888 (= (isDefined!28 (find!8 transfers!5 lambda!11299)) (not (isEmpty!912 (find!8 transfers!5 lambda!11299))))))

(declare-fun bs!43397 () Bool)

(assert (= bs!43397 d!61888))

(assert (=> bs!43397 m!90357))

(declare-fun m!90519 () Bool)

(assert (=> bs!43397 m!90519))

(assert (=> d!61838 d!61888))

(declare-fun d!61890 () Bool)

(declare-fun res!49562 () Bool)

(declare-fun e!51928 () Bool)

(assert (=> d!61890 (=> res!49562 e!51928)))

(assert (=> d!61890 (= res!49562 (is-Nil!836 (t!56042 (t!56042 transfers!5))))))

(assert (=> d!61890 (= (forall!87 (t!56042 (t!56042 transfers!5)) lambda!11273) e!51928)))

(declare-fun b!95273 () Bool)

(declare-fun e!51929 () Bool)

(assert (=> b!95273 (= e!51928 e!51929)))

(declare-fun res!49563 () Bool)

(assert (=> b!95273 (=> (not res!49563) (not e!51929))))

(assert (=> b!95273 (= res!49563 (dynLambda!1156 lambda!11273 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(declare-fun b!95274 () Bool)

(assert (=> b!95274 (= e!51929 (forall!87 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11273))))

(assert (= (and d!61890 (not res!49562)) b!95273))

(assert (= (and b!95273 res!49563) b!95274))

(declare-fun b_lambda!19105 () Bool)

(assert (=> (not b_lambda!19105) (not b!95273)))

(declare-fun m!90521 () Bool)

(assert (=> b!95273 m!90521))

(declare-fun m!90523 () Bool)

(assert (=> b!95274 m!90523))

(assert (=> b!95221 d!61890))

(declare-fun d!61892 () Bool)

(declare-fun lt!21849 () Int)

(assert (=> d!61892 (>= lt!21849 0)))

(declare-fun e!51930 () Int)

(assert (=> d!61892 (= lt!21849 e!51930)))

(declare-fun c!23388 () Bool)

(assert (=> d!61892 (= c!23388 (is-Nil!837 (t!56043 lt!21816)))))

(assert (=> d!61892 (= (size!1001 (t!56043 lt!21816)) lt!21849)))

(declare-fun b!95275 () Bool)

(assert (=> b!95275 (= e!51930 0)))

(declare-fun b!95276 () Bool)

(assert (=> b!95276 (= e!51930 (+ 1 (size!1001 (t!56043 (t!56043 lt!21816)))))))

(assert (= (and d!61892 c!23388) b!95275))

(assert (= (and d!61892 (not c!23388)) b!95276))

(declare-fun m!90525 () Bool)

(assert (=> b!95276 m!90525))

(assert (=> b!95213 d!61892))

(declare-fun d!61894 () Bool)

(declare-fun lt!21850 () Int)

(assert (=> d!61894 (>= lt!21850 0)))

(declare-fun e!51931 () Int)

(assert (=> d!61894 (= lt!21850 e!51931)))

(declare-fun c!23389 () Bool)

(assert (=> d!61894 (= c!23389 (is-Nil!838 (t!56044 lt!21819)))))

(assert (=> d!61894 (= (size!1003 (t!56044 lt!21819)) lt!21850)))

(declare-fun b!95277 () Bool)

(assert (=> b!95277 (= e!51931 0)))

(declare-fun b!95278 () Bool)

(assert (=> b!95278 (= e!51931 (+ 1 (size!1003 (t!56044 (t!56044 lt!21819)))))))

(assert (= (and d!61894 c!23389) b!95277))

(assert (= (and d!61894 (not c!23389)) b!95278))

(declare-fun m!90527 () Bool)

(assert (=> b!95278 m!90527))

(assert (=> b!95179 d!61894))

(declare-fun d!61896 () Bool)

(assert (=> d!61896 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 transfers!5)) lambda!11268) (dynLambda!1158 lambda!11268 (h!7729 (t!56042 transfers!5)))) (Cons!836 (dynLambda!1158 lambda!11268 (h!7729 (t!56042 transfers!5))) (map!731 (t!56042 (t!56042 transfers!5)) lambda!11268)))))

(assert (=> b!95209 d!61896))

(declare-fun d!61898 () Bool)

(declare-fun lt!21851 () List!898)

(assert (=> d!61898 (= (size!1003 lt!21851) (size!1002 (t!56042 (t!56042 transfers!5))))))

(declare-fun e!51932 () List!898)

(assert (=> d!61898 (= lt!21851 e!51932)))

(declare-fun c!23390 () Bool)

(assert (=> d!61898 (= c!23390 (is-Nil!836 (t!56042 (t!56042 transfers!5))))))

(assert (=> d!61898 (= (map!731 (t!56042 (t!56042 transfers!5)) lambda!11268) lt!21851)))

(declare-fun b!95279 () Bool)

(assert (=> b!95279 (= e!51932 Nil!838)))

(declare-fun b!95280 () Bool)

(assert (=> b!95280 (= e!51932 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11268) (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 transfers!5))))))))

(assert (= (and d!61898 c!23390) b!95279))

(assert (= (and d!61898 (not c!23390)) b!95280))

(declare-fun b_lambda!19107 () Bool)

(assert (=> (not b_lambda!19107) (not b!95280)))

(declare-fun m!90529 () Bool)

(assert (=> d!61898 m!90529))

(declare-fun m!90531 () Bool)

(assert (=> d!61898 m!90531))

(declare-fun m!90533 () Bool)

(assert (=> b!95280 m!90533))

(declare-fun m!90535 () Bool)

(assert (=> b!95280 m!90535))

(assert (=> b!95280 m!90533))

(assert (=> b!95280 m!90535))

(declare-fun m!90537 () Bool)

(assert (=> b!95280 m!90537))

(assert (=> b!95209 d!61898))

(declare-fun d!61900 () Bool)

(declare-fun lt!21854 () Int)

(assert (=> d!61900 (>= lt!21854 0)))

(declare-fun e!51935 () Int)

(assert (=> d!61900 (= lt!21854 e!51935)))

(declare-fun c!23393 () Bool)

(assert (=> d!61900 (= c!23393 (is-Nil!839 lt!21830))))

(assert (=> d!61900 (= (size!1004 lt!21830) lt!21854)))

(declare-fun b!95285 () Bool)

(assert (=> b!95285 (= e!51935 0)))

(declare-fun b!95286 () Bool)

(assert (=> b!95286 (= e!51935 (+ 1 (size!1004 (t!56069 lt!21830))))))

(assert (= (and d!61900 c!23393) b!95285))

(assert (= (and d!61900 (not c!23393)) b!95286))

(declare-fun m!90539 () Bool)

(assert (=> b!95286 m!90539))

(assert (=> d!61810 d!61900))

(declare-fun d!61902 () Bool)

(declare-fun lt!21857 () Int)

(assert (=> d!61902 (>= lt!21857 0)))

(declare-fun e!51938 () Int)

(assert (=> d!61902 (= lt!21857 e!51938)))

(declare-fun c!23396 () Bool)

(assert (=> d!61902 (= c!23396 (is-Nil!840 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))

(assert (=> d!61902 (= (size!1005 (Cons!838 (S!138 Alice!93 2000) Nil!840)) lt!21857)))

(declare-fun b!95291 () Bool)

(assert (=> b!95291 (= e!51938 0)))

(declare-fun b!95292 () Bool)

(assert (=> b!95292 (= e!51938 (+ 1 (size!1005 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))))

(assert (= (and d!61902 c!23396) b!95291))

(assert (= (and d!61902 (not c!23396)) b!95292))

(declare-fun m!90541 () Bool)

(assert (=> b!95292 m!90541))

(assert (=> d!61810 d!61902))

(declare-fun bs!43398 () Bool)

(declare-fun d!61904 () Bool)

(assert (= bs!43398 (and d!61904 d!61880)))

(declare-fun lambda!11308 () Int)

(assert (=> bs!43398 (not (= lambda!11308 lambda!11307))))

(declare-fun bs!43399 () Bool)

(assert (= bs!43399 (and d!61904 d!61846 b!95125)))

(assert (=> bs!43399 (not (= lambda!11308 lambda!11304))))

(declare-fun bs!43400 () Bool)

(assert (= bs!43400 (and d!61904 b!95121)))

(assert (=> bs!43400 (not (= lambda!11308 lambda!11273))))

(declare-fun bs!43401 () Bool)

(assert (= bs!43401 (and d!61904 d!61814)))

(assert (=> bs!43401 (= (= lambda!11304 lambda!11298) (= lambda!11308 lambda!11302))))

(declare-fun bs!43402 () Bool)

(assert (= bs!43402 (and d!61904 d!61844 b!95121)))

(assert (=> bs!43402 (not (= lambda!11308 lambda!11303))))

(declare-fun bs!43403 () Bool)

(assert (= bs!43403 (and d!61904 d!61796 b!95121)))

(assert (=> bs!43403 (not (= lambda!11308 lambda!11299))))

(declare-fun bs!43404 () Bool)

(assert (= bs!43404 (and d!61904 d!61788 b!95125)))

(assert (=> bs!43404 (not (= lambda!11308 lambda!11298))))

(assert (=> d!61904 true))

(assert (=> d!61904 (< (dynLambda!1161 order!527 lambda!11304) (dynLambda!1161 order!527 lambda!11308))))

(assert (=> d!61904 (= (exists!12 transfers!5 lambda!11304) (not (forall!87 transfers!5 lambda!11308)))))

(declare-fun bs!43405 () Bool)

(assert (= bs!43405 d!61904))

(declare-fun m!90543 () Bool)

(assert (=> bs!43405 m!90543))

(assert (=> bs!43373 d!61904))

(declare-fun d!61906 () Bool)

(assert (=> d!61906 (= ($colon$colon!32 (map!732 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)) lambda!11296) (dynLambda!1160 lambda!11296 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) (Cons!837 (dynLambda!1160 lambda!11296 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) (map!732 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)) lambda!11296)))))

(assert (=> b!95219 d!61906))

(declare-fun d!61908 () Bool)

(declare-fun lt!21858 () List!899)

(assert (=> d!61908 (= (size!1004 lt!21858) (size!1005 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))))))

(declare-fun e!51939 () List!899)

(assert (=> d!61908 (= lt!21858 e!51939)))

(declare-fun c!23397 () Bool)

(assert (=> d!61908 (= c!23397 (is-Nil!840 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))))))

(assert (=> d!61908 (= (map!732 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)) lambda!11296) lt!21858)))

(declare-fun b!95293 () Bool)

(assert (=> b!95293 (= e!51939 Nil!839)))

(declare-fun b!95294 () Bool)

(assert (=> b!95294 (= e!51939 ($colon$colon!32 (map!732 (t!56070 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) lambda!11296) (dynLambda!1160 lambda!11296 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))))))))

(assert (= (and d!61908 c!23397) b!95293))

(assert (= (and d!61908 (not c!23397)) b!95294))

(declare-fun b_lambda!19109 () Bool)

(assert (=> (not b_lambda!19109) (not b!95294)))

(declare-fun m!90545 () Bool)

(assert (=> d!61908 m!90545))

(declare-fun m!90547 () Bool)

(assert (=> d!61908 m!90547))

(declare-fun m!90549 () Bool)

(assert (=> b!95294 m!90549))

(declare-fun m!90551 () Bool)

(assert (=> b!95294 m!90551))

(assert (=> b!95294 m!90549))

(assert (=> b!95294 m!90551))

(declare-fun m!90553 () Bool)

(assert (=> b!95294 m!90553))

(assert (=> b!95219 d!61908))

(declare-fun d!61910 () Bool)

(assert (=> d!61910 (= ($colon$colon!30 (map!730 (t!56042 (t!56042 transfers!5)) lambda!11271) (dynLambda!1155 lambda!11271 (h!7729 (t!56042 transfers!5)))) (Cons!835 (dynLambda!1155 lambda!11271 (h!7729 (t!56042 transfers!5))) (map!730 (t!56042 (t!56042 transfers!5)) lambda!11271)))))

(assert (=> b!95223 d!61910))

(declare-fun d!61912 () Bool)

(declare-fun lt!21859 () List!897)

(assert (=> d!61912 (= (size!1001 lt!21859) (size!1002 (t!56042 (t!56042 transfers!5))))))

(declare-fun e!51940 () List!897)

(assert (=> d!61912 (= lt!21859 e!51940)))

(declare-fun c!23398 () Bool)

(assert (=> d!61912 (= c!23398 (is-Nil!836 (t!56042 (t!56042 transfers!5))))))

(assert (=> d!61912 (= (map!730 (t!56042 (t!56042 transfers!5)) lambda!11271) lt!21859)))

(declare-fun b!95295 () Bool)

(assert (=> b!95295 (= e!51940 Nil!837)))

(declare-fun b!95296 () Bool)

(assert (=> b!95296 (= e!51940 ($colon$colon!30 (map!730 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11271) (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 transfers!5))))))))

(assert (= (and d!61912 c!23398) b!95295))

(assert (= (and d!61912 (not c!23398)) b!95296))

(declare-fun b_lambda!19111 () Bool)

(assert (=> (not b_lambda!19111) (not b!95296)))

(declare-fun m!90555 () Bool)

(assert (=> d!61912 m!90555))

(assert (=> d!61912 m!90531))

(declare-fun m!90557 () Bool)

(assert (=> b!95296 m!90557))

(declare-fun m!90559 () Bool)

(assert (=> b!95296 m!90559))

(assert (=> b!95296 m!90557))

(assert (=> b!95296 m!90559))

(declare-fun m!90561 () Bool)

(assert (=> b!95296 m!90561))

(assert (=> b!95223 d!61912))

(declare-fun d!61914 () Bool)

(declare-fun c!23401 () Bool)

(assert (=> d!61914 (= c!23401 (is-Nil!836 transfers!5))))

(declare-fun e!51943 () (Set tuple2!524))

(assert (=> d!61914 (= (content!207 transfers!5) e!51943)))

(declare-fun b!95301 () Bool)

(assert (=> b!95301 (= e!51943 (as emptyset (Set tuple2!524)))))

(declare-fun b!95302 () Bool)

(assert (=> b!95302 (= e!51943 (union (insert (h!7729 transfers!5) (as emptyset (Set tuple2!524))) (content!207 (t!56042 transfers!5))))))

(assert (= (and d!61914 c!23401) b!95301))

(assert (= (and d!61914 (not c!23401)) b!95302))

(declare-fun m!90563 () Bool)

(assert (=> b!95302 m!90563))

(assert (=> b!95302 m!90483))

(assert (=> b!95245 d!61914))

(declare-fun d!61916 () Bool)

(declare-fun c!23402 () Bool)

(assert (=> d!61916 (= c!23402 (is-Nil!838 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))))

(declare-fun e!51944 () Int)

(assert (=> d!61916 (= (foldLeft!11 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))) (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) lambda!11269) e!51944)))

(declare-fun b!95303 () Bool)

(assert (=> b!95303 (= e!51944 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))))))

(declare-fun b!95304 () Bool)

(assert (=> b!95304 (= e!51944 (foldLeft!11 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))) (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) lambda!11269))))

(assert (= (and d!61916 c!23402) b!95303))

(assert (= (and d!61916 (not c!23402)) b!95304))

(declare-fun b_lambda!19113 () Bool)

(assert (=> (not b_lambda!19113) (not b!95304)))

(assert (=> b!95304 m!90367))

(declare-fun m!90565 () Bool)

(assert (=> b!95304 m!90565))

(assert (=> b!95304 m!90565))

(declare-fun m!90567 () Bool)

(assert (=> b!95304 m!90567))

(assert (=> b!95187 d!61916))

(declare-fun d!61918 () Bool)

(declare-fun c!23403 () Bool)

(assert (=> d!61918 (= c!23403 (is-Nil!839 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))

(declare-fun e!51945 () Bool)

(assert (=> d!61918 (= (foldLeft!12 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)) (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) lambda!11285) e!51945)))

(declare-fun b!95305 () Bool)

(assert (=> b!95305 (= e!51945 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))

(declare-fun b!95306 () Bool)

(assert (=> b!95306 (= e!51945 (foldLeft!12 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) lambda!11285))))

(assert (= (and d!61918 c!23403) b!95305))

(assert (= (and d!61918 (not c!23403)) b!95306))

(declare-fun b_lambda!19115 () Bool)

(assert (=> (not b_lambda!19115) (not b!95306)))

(assert (=> b!95306 m!90371))

(declare-fun m!90569 () Bool)

(assert (=> b!95306 m!90569))

(assert (=> b!95306 m!90569))

(declare-fun m!90571 () Bool)

(assert (=> b!95306 m!90571))

(assert (=> b!95193 d!61918))

(declare-fun d!61920 () Bool)

(assert (=> d!61920 (= (get!1256 lt!21844) (v!3223 lt!21844))))

(assert (=> b!95251 d!61920))

(declare-fun d!61922 () Bool)

(assert (=> d!61922 (= (fuzEq!0 (- (foldLeft!11 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294) 0 lambda!11295)) (amount!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) (and (>= (- (foldLeft!11 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294) 0 lambda!11295)) (- (amount!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) 50)) (<= (- (foldLeft!11 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294) 0 lambda!11295)) (+ (amount!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) 50))))))

(assert (=> bs!43387 d!61922))

(declare-fun d!61924 () Bool)

(declare-fun c!23404 () Bool)

(assert (=> d!61924 (= c!23404 (is-Nil!838 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))))

(declare-fun e!51946 () Int)

(assert (=> d!61924 (= (foldLeft!11 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294) 0 lambda!11295) e!51946)))

(declare-fun b!95307 () Bool)

(assert (=> b!95307 (= e!51946 0)))

(declare-fun b!95308 () Bool)

(assert (=> b!95308 (= e!51946 (foldLeft!11 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)) (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) lambda!11295))))

(assert (= (and d!61924 c!23404) b!95307))

(assert (= (and d!61924 (not c!23404)) b!95308))

(declare-fun b_lambda!19117 () Bool)

(assert (=> (not b_lambda!19117) (not b!95308)))

(declare-fun m!90573 () Bool)

(assert (=> b!95308 m!90573))

(assert (=> b!95308 m!90573))

(declare-fun m!90575 () Bool)

(assert (=> b!95308 m!90575))

(assert (=> bs!43387 d!61924))

(declare-fun d!61926 () Bool)

(declare-fun lt!21860 () List!898)

(assert (=> d!61926 (= (size!1003 lt!21860) (size!1002 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))

(declare-fun e!51947 () List!898)

(assert (=> d!61926 (= lt!21860 e!51947)))

(declare-fun c!23405 () Bool)

(assert (=> d!61926 (= c!23405 (is-Nil!836 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))

(assert (=> d!61926 (= (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294) lt!21860)))

(declare-fun b!95309 () Bool)

(assert (=> b!95309 (= e!51947 Nil!838)))

(declare-fun b!95310 () Bool)

(assert (=> b!95310 (= e!51947 ($colon$colon!31 (map!731 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))))

(assert (= (and d!61926 c!23405) b!95309))

(assert (= (and d!61926 (not c!23405)) b!95310))

(declare-fun b_lambda!19119 () Bool)

(assert (=> (not b_lambda!19119) (not b!95310)))

(declare-fun m!90577 () Bool)

(assert (=> d!61926 m!90577))

(assert (=> d!61926 m!90469))

(declare-fun m!90579 () Bool)

(assert (=> d!61926 m!90579))

(declare-fun m!90581 () Bool)

(assert (=> b!95310 m!90581))

(declare-fun m!90583 () Bool)

(assert (=> b!95310 m!90583))

(assert (=> b!95310 m!90581))

(assert (=> b!95310 m!90583))

(declare-fun m!90585 () Bool)

(assert (=> b!95310 m!90585))

(assert (=> bs!43387 d!61926))

(declare-fun bs!43406 () Bool)

(declare-fun d!61928 () Bool)

(assert (= bs!43406 (and d!61928 d!61880)))

(declare-fun lambda!11311 () Int)

(assert (=> bs!43406 (not (= lambda!11311 lambda!11307))))

(declare-fun bs!43407 () Bool)

(assert (= bs!43407 (and d!61928 d!61846 b!95125)))

(assert (=> bs!43407 (not (= lambda!11311 lambda!11304))))

(declare-fun bs!43408 () Bool)

(assert (= bs!43408 (and d!61928 b!95121)))

(assert (=> bs!43408 (not (= lambda!11311 lambda!11273))))

(declare-fun bs!43409 () Bool)

(assert (= bs!43409 (and d!61928 d!61904)))

(assert (=> bs!43409 (not (= lambda!11311 lambda!11308))))

(declare-fun bs!43410 () Bool)

(assert (= bs!43410 (and d!61928 d!61814)))

(assert (=> bs!43410 (not (= lambda!11311 lambda!11302))))

(declare-fun bs!43411 () Bool)

(assert (= bs!43411 (and d!61928 d!61844 b!95121)))

(assert (=> bs!43411 (not (= lambda!11311 lambda!11303))))

(declare-fun bs!43412 () Bool)

(assert (= bs!43412 (and d!61928 d!61796 b!95121)))

(assert (=> bs!43412 (not (= lambda!11311 lambda!11299))))

(declare-fun bs!43413 () Bool)

(assert (= bs!43413 (and d!61928 d!61788 b!95125)))

(assert (=> bs!43413 (not (= lambda!11311 lambda!11298))))

(assert (=> d!61928 true))

(assert (=> d!61928 (= (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) (filter!49 transfers!5 lambda!11311))))

(declare-fun bs!43414 () Bool)

(assert (= bs!43414 d!61928))

(declare-fun m!90587 () Bool)

(assert (=> bs!43414 m!90587))

(assert (=> bs!43387 d!61928))

(declare-fun d!61930 () Bool)

(assert (=> d!61930 (= (isDefined!27 lt!21844) (not (isEmpty!911 lt!21844)))))

(declare-fun bs!43415 () Bool)

(assert (= bs!43415 d!61930))

(declare-fun m!90589 () Bool)

(assert (=> bs!43415 m!90589))

(assert (=> bs!43369 d!61930))

(declare-fun d!61932 () Bool)

(declare-fun lt!21861 () Option!768)

(assert (=> d!61932 (= (isDefined!27 lt!21861) (isDefined!28 (find!8 transfers!5 lambda!11303)))))

(declare-fun e!51948 () Option!768)

(assert (=> d!61932 (= lt!21861 e!51948)))

(declare-fun c!23406 () Bool)

(assert (=> d!61932 (= c!23406 (is-None!741 (find!8 transfers!5 lambda!11303)))))

(assert (=> d!61932 (= (map!733 (find!8 transfers!5 lambda!11303) lambda!11268) lt!21861)))

(declare-fun b!95311 () Bool)

(assert (=> b!95311 (= e!51948 None!740)))

(declare-fun b!95312 () Bool)

(assert (=> b!95312 (= e!51948 (Some!739 (dynLambda!1158 lambda!11268 (v!3224 (find!8 transfers!5 lambda!11303)))))))

(assert (= (and d!61932 c!23406) b!95311))

(assert (= (and d!61932 (not c!23406)) b!95312))

(declare-fun b_lambda!19121 () Bool)

(assert (=> (not b_lambda!19121) (not b!95312)))

(declare-fun m!90591 () Bool)

(assert (=> d!61932 m!90591))

(assert (=> d!61932 m!90453))

(declare-fun m!90593 () Bool)

(assert (=> d!61932 m!90593))

(declare-fun m!90595 () Bool)

(assert (=> b!95312 m!90595))

(assert (=> bs!43369 d!61932))

(declare-fun b!95313 () Bool)

(declare-fun e!51949 () Bool)

(declare-fun lt!21862 () Option!769)

(assert (=> b!95313 (= e!51949 (dynLambda!1156 lambda!11303 (v!3224 lt!21862)))))

(declare-fun b!95314 () Bool)

(declare-fun e!51952 () Option!769)

(assert (=> b!95314 (= e!51952 (find!8 (t!56042 transfers!5) lambda!11303))))

(declare-fun d!61934 () Bool)

(declare-fun e!51951 () Bool)

(assert (=> d!61934 e!51951))

(declare-fun res!49564 () Bool)

(assert (=> d!61934 (=> res!49564 e!51951)))

(assert (=> d!61934 (= res!49564 (not (is-Some!740 lt!21862)))))

(declare-fun e!51950 () Option!769)

(assert (=> d!61934 (= lt!21862 e!51950)))

(declare-fun c!23408 () Bool)

(assert (=> d!61934 (= c!23408 (is-Nil!836 transfers!5))))

(assert (=> d!61934 (= (find!8 transfers!5 lambda!11303) lt!21862)))

(declare-fun b!95315 () Bool)

(assert (=> b!95315 (= e!51950 e!51952)))

(declare-fun c!23407 () Bool)

(assert (=> b!95315 (= c!23407 (dynLambda!1156 lambda!11303 (h!7729 transfers!5)))))

(declare-fun b!95316 () Bool)

(assert (=> b!95316 (= e!51951 e!51949)))

(declare-fun res!49565 () Bool)

(assert (=> b!95316 (=> (not res!49565) (not e!51949))))

(assert (=> b!95316 (= res!49565 (member (v!3224 lt!21862) (content!207 transfers!5)))))

(declare-fun b!95317 () Bool)

(assert (=> b!95317 (= e!51950 None!741)))

(declare-fun b!95318 () Bool)

(assert (=> b!95318 (= e!51952 (Some!740 (h!7729 transfers!5)))))

(assert (= (and b!95315 c!23407) b!95318))

(assert (= (and b!95315 (not c!23407)) b!95314))

(assert (= (and d!61934 c!23408) b!95317))

(assert (= (and d!61934 (not c!23408)) b!95315))

(assert (= (and d!61934 (not res!49564)) b!95316))

(assert (= (and b!95316 res!49565) b!95313))

(declare-fun b_lambda!19123 () Bool)

(assert (=> (not b_lambda!19123) (not b!95313)))

(declare-fun b_lambda!19125 () Bool)

(assert (=> (not b_lambda!19125) (not b!95315)))

(declare-fun m!90597 () Bool)

(assert (=> b!95313 m!90597))

(declare-fun m!90599 () Bool)

(assert (=> b!95314 m!90599))

(declare-fun m!90601 () Bool)

(assert (=> b!95315 m!90601))

(assert (=> b!95316 m!90447))

(declare-fun m!90603 () Bool)

(assert (=> b!95316 m!90603))

(assert (=> bs!43369 d!61934))

(declare-fun d!61936 () Bool)

(assert (=> d!61936 (= (isEmpty!911 lt!21820) (not (is-Some!739 lt!21820)))))

(assert (=> d!61836 d!61936))

(declare-fun d!61938 () Bool)

(declare-fun lt!21863 () Int)

(assert (=> d!61938 (>= lt!21863 0)))

(declare-fun e!51953 () Int)

(assert (=> d!61938 (= lt!21863 e!51953)))

(declare-fun c!23409 () Bool)

(assert (=> d!61938 (= c!23409 (is-Nil!838 lt!21834))))

(assert (=> d!61938 (= (size!1003 lt!21834) lt!21863)))

(declare-fun b!95319 () Bool)

(assert (=> b!95319 (= e!51953 0)))

(declare-fun b!95320 () Bool)

(assert (=> b!95320 (= e!51953 (+ 1 (size!1003 (t!56044 lt!21834))))))

(assert (= (and d!61938 c!23409) b!95319))

(assert (= (and d!61938 (not c!23409)) b!95320))

(declare-fun m!90605 () Bool)

(assert (=> b!95320 m!90605))

(assert (=> d!61818 d!61938))

(declare-fun d!61940 () Bool)

(declare-fun lt!21864 () Int)

(assert (=> d!61940 (>= lt!21864 0)))

(declare-fun e!51954 () Int)

(assert (=> d!61940 (= lt!21864 e!51954)))

(declare-fun c!23410 () Bool)

(assert (=> d!61940 (= c!23410 (is-Nil!836 (t!56042 transfers!5)))))

(assert (=> d!61940 (= (size!1002 (t!56042 transfers!5)) lt!21864)))

(declare-fun b!95321 () Bool)

(assert (=> b!95321 (= e!51954 0)))

(declare-fun b!95322 () Bool)

(assert (=> b!95322 (= e!51954 (+ 1 (size!1002 (t!56042 (t!56042 transfers!5)))))))

(assert (= (and d!61940 c!23410) b!95321))

(assert (= (and d!61940 (not c!23410)) b!95322))

(assert (=> b!95322 m!90531))

(assert (=> d!61818 d!61940))

(assert (=> b!95185 d!61940))

(declare-fun d!61942 () Bool)

(declare-fun res!49566 () Bool)

(declare-fun e!51955 () Bool)

(assert (=> d!61942 (=> res!49566 e!51955)))

(assert (=> d!61942 (= res!49566 (is-Nil!837 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))))))

(assert (=> d!61942 (= (forall!86 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))) lambda!11272) e!51955)))

(declare-fun b!95323 () Bool)

(declare-fun e!51956 () Bool)

(assert (=> b!95323 (= e!51955 e!51956)))

(declare-fun res!49567 () Bool)

(assert (=> b!95323 (=> (not res!49567) (not e!51956))))

(assert (=> b!95323 (= res!49567 (dynLambda!1154 lambda!11272 (h!7730 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))))))

(declare-fun b!95324 () Bool)

(assert (=> b!95324 (= e!51956 (forall!86 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))) lambda!11272))))

(assert (= (and d!61942 (not res!49566)) b!95323))

(assert (= (and b!95323 res!49567) b!95324))

(declare-fun b_lambda!19127 () Bool)

(assert (=> (not b_lambda!19127) (not b!95323)))

(declare-fun m!90607 () Bool)

(assert (=> b!95323 m!90607))

(declare-fun m!90609 () Bool)

(assert (=> b!95324 m!90609))

(assert (=> b!95215 d!61942))

(declare-fun d!61944 () Bool)

(declare-fun lt!21865 () Int)

(assert (=> d!61944 (>= lt!21865 0)))

(declare-fun e!51957 () Int)

(assert (=> d!61944 (= lt!21865 e!51957)))

(declare-fun c!23411 () Bool)

(assert (=> d!61944 (= c!23411 (is-Nil!837 lt!21837))))

(assert (=> d!61944 (= (size!1001 lt!21837) lt!21865)))

(declare-fun b!95325 () Bool)

(assert (=> b!95325 (= e!51957 0)))

(declare-fun b!95326 () Bool)

(assert (=> b!95326 (= e!51957 (+ 1 (size!1001 (t!56043 lt!21837))))))

(assert (= (and d!61944 c!23411) b!95325))

(assert (= (and d!61944 (not c!23411)) b!95326))

(declare-fun m!90611 () Bool)

(assert (=> b!95326 m!90611))

(assert (=> d!61834 d!61944))

(assert (=> d!61834 d!61940))

(declare-fun d!61946 () Bool)

(assert (=> d!61946 (= ($colon$colon!32 (map!732 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)) lambda!11282) (dynLambda!1160 lambda!11282 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) (Cons!837 (dynLambda!1160 lambda!11282 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) (map!732 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)) lambda!11282)))))

(assert (=> b!95199 d!61946))

(declare-fun d!61948 () Bool)

(declare-fun lt!21866 () List!899)

(assert (=> d!61948 (= (size!1004 lt!21866) (size!1005 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840))))))

(declare-fun e!51958 () List!899)

(assert (=> d!61948 (= lt!21866 e!51958)))

(declare-fun c!23412 () Bool)

(assert (=> d!61948 (= c!23412 (is-Nil!840 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840))))))

(assert (=> d!61948 (= (map!732 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)) lambda!11282) lt!21866)))

(declare-fun b!95327 () Bool)

(assert (=> b!95327 (= e!51958 Nil!839)))

(declare-fun b!95328 () Bool)

(assert (=> b!95328 (= e!51958 ($colon$colon!32 (map!732 (t!56070 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840))) lambda!11282) (dynLambda!1160 lambda!11282 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840))))))))

(assert (= (and d!61948 c!23412) b!95327))

(assert (= (and d!61948 (not c!23412)) b!95328))

(declare-fun b_lambda!19129 () Bool)

(assert (=> (not b_lambda!19129) (not b!95328)))

(declare-fun m!90613 () Bool)

(assert (=> d!61948 m!90613))

(assert (=> d!61948 m!90541))

(declare-fun m!90615 () Bool)

(assert (=> b!95328 m!90615))

(declare-fun m!90617 () Bool)

(assert (=> b!95328 m!90617))

(assert (=> b!95328 m!90615))

(assert (=> b!95328 m!90617))

(declare-fun m!90619 () Bool)

(assert (=> b!95328 m!90619))

(assert (=> b!95199 d!61948))

(declare-fun d!61950 () Bool)

(declare-fun lt!21867 () Int)

(assert (=> d!61950 (>= lt!21867 0)))

(declare-fun e!51959 () Int)

(assert (=> d!61950 (= lt!21867 e!51959)))

(declare-fun c!23413 () Bool)

(assert (=> d!61950 (= c!23413 (is-Nil!839 lt!21836))))

(assert (=> d!61950 (= (size!1004 lt!21836) lt!21867)))

(declare-fun b!95329 () Bool)

(assert (=> b!95329 (= e!51959 0)))

(declare-fun b!95330 () Bool)

(assert (=> b!95330 (= e!51959 (+ 1 (size!1004 (t!56069 lt!21836))))))

(assert (= (and d!61950 c!23413) b!95329))

(assert (= (and d!61950 (not c!23413)) b!95330))

(declare-fun m!90621 () Bool)

(assert (=> b!95330 m!90621))

(assert (=> d!61828 d!61950))

(declare-fun d!61952 () Bool)

(declare-fun lt!21868 () Int)

(assert (=> d!61952 (>= lt!21868 0)))

(declare-fun e!51960 () Int)

(assert (=> d!61952 (= lt!21868 e!51960)))

(declare-fun c!23414 () Bool)

(assert (=> d!61952 (= c!23414 (is-Nil!840 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))

(assert (=> d!61952 (= (size!1005 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)) lt!21868)))

(declare-fun b!95331 () Bool)

(assert (=> b!95331 (= e!51960 0)))

(declare-fun b!95332 () Bool)

(assert (=> b!95332 (= e!51960 (+ 1 (size!1005 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))))

(assert (= (and d!61952 c!23414) b!95331))

(assert (= (and d!61952 (not c!23414)) b!95332))

(assert (=> b!95332 m!90547))

(assert (=> d!61828 d!61952))

(assert (=> b!95248 d!61920))

(declare-fun b_lambda!19131 () Bool)

(assert (= b_lambda!19129 (or d!61782 b_lambda!19131)))

(declare-fun bs!43416 () Bool)

(declare-fun d!61954 () Bool)

(assert (= bs!43416 (and d!61954 d!61782)))

(assert (=> bs!43416 (= (dynLambda!1160 lambda!11282 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) (fuzEq!0 (foldLeft!11 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283) 0 lambda!11284) (amount!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840))))))))

(declare-fun m!90623 () Bool)

(assert (=> bs!43416 m!90623))

(declare-fun m!90625 () Bool)

(assert (=> bs!43416 m!90625))

(declare-fun m!90627 () Bool)

(assert (=> bs!43416 m!90627))

(declare-fun m!90629 () Bool)

(assert (=> bs!43416 m!90629))

(assert (=> bs!43416 m!90623))

(assert (=> bs!43416 m!90625))

(assert (=> bs!43416 m!90627))

(assert (=> b!95328 d!61954))

(declare-fun b_lambda!19133 () Bool)

(assert (= b_lambda!19101 (or b!95125 b_lambda!19133)))

(declare-fun bs!43417 () Bool)

(declare-fun d!61956 () Bool)

(assert (= bs!43417 (and d!61956 b!95125)))

(declare-fun bs!43418 () Bool)

(assert (= bs!43418 (and d!61956 b!95125 d!61928)))

(declare-fun lambda!11312 () Int)

(assert (=> bs!43418 (not (= lambda!11312 lambda!11311))))

(declare-fun bs!43419 () Bool)

(assert (= bs!43419 (and d!61956 b!95125 d!61880)))

(assert (=> bs!43419 (not (= lambda!11312 lambda!11307))))

(declare-fun bs!43420 () Bool)

(assert (= bs!43420 (and d!61956 b!95125 d!61846)))

(assert (=> bs!43420 (= (= (h!7730 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))) (h!7730 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))) (= lambda!11312 lambda!11304))))

(declare-fun bs!43421 () Bool)

(assert (= bs!43421 (and d!61956 b!95125 b!95121)))

(assert (=> bs!43421 (not (= lambda!11312 lambda!11273))))

(declare-fun bs!43422 () Bool)

(assert (= bs!43422 (and d!61956 b!95125 d!61904)))

(assert (=> bs!43422 (not (= lambda!11312 lambda!11308))))

(declare-fun bs!43423 () Bool)

(assert (= bs!43423 (and d!61956 b!95125 d!61814)))

(assert (=> bs!43423 (not (= lambda!11312 lambda!11302))))

(declare-fun bs!43424 () Bool)

(assert (= bs!43424 (and d!61956 b!95125 d!61844 b!95121)))

(assert (=> bs!43424 (= (= (h!7730 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))) (= lambda!11312 lambda!11303))))

(declare-fun bs!43425 () Bool)

(assert (= bs!43425 (and d!61956 b!95125 d!61796 b!95121)))

(assert (=> bs!43425 (= (= (h!7730 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))) (= lambda!11312 lambda!11299))))

(declare-fun bs!43426 () Bool)

(assert (= bs!43426 (and d!61956 b!95125 d!61788)))

(assert (=> bs!43426 (= (= (h!7730 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))) (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) (= lambda!11312 lambda!11298))))

(assert (=> bs!43417 true))

(assert (=> bs!43417 (= (dynLambda!1154 lambda!11270 (h!7730 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))) (exists!12 transfers!5 lambda!11312))))

(declare-fun m!90631 () Bool)

(assert (=> bs!43417 m!90631))

(assert (=> b!95269 d!61956))

(declare-fun b_lambda!19135 () Bool)

(assert (= b_lambda!19097 (or d!61782 b_lambda!19135)))

(declare-fun bs!43427 () Bool)

(declare-fun d!61958 () Bool)

(assert (= bs!43427 (and d!61958 d!61782)))

(assert (=> bs!43427 (= (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (+ 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))))

(assert (=> b!95264 d!61958))

(declare-fun b_lambda!19137 () Bool)

(assert (= b_lambda!19117 (or d!61785 b_lambda!19137)))

(declare-fun bs!43428 () Bool)

(declare-fun d!61960 () Bool)

(assert (= bs!43428 (and d!61960 d!61785)))

(assert (=> bs!43428 (= (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (+ 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))))

(assert (=> b!95308 d!61960))

(declare-fun b_lambda!19139 () Bool)

(assert (= b_lambda!19109 (or d!61785 b_lambda!19139)))

(declare-fun bs!43429 () Bool)

(declare-fun d!61962 () Bool)

(assert (= bs!43429 (and d!61962 d!61785)))

(assert (=> bs!43429 (= (dynLambda!1160 lambda!11296 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) (fuzEq!0 (- (foldLeft!11 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294) 0 lambda!11295)) (amount!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))))))))

(declare-fun m!90633 () Bool)

(assert (=> bs!43429 m!90633))

(declare-fun m!90635 () Bool)

(assert (=> bs!43429 m!90635))

(declare-fun m!90637 () Bool)

(assert (=> bs!43429 m!90637))

(assert (=> bs!43429 m!90633))

(assert (=> bs!43429 m!90635))

(declare-fun m!90639 () Bool)

(assert (=> bs!43429 m!90639))

(assert (=> b!95294 d!61962))

(declare-fun b_lambda!19141 () Bool)

(assert (= b_lambda!19107 (or start!15478 b_lambda!19141)))

(declare-fun bs!43430 () Bool)

(declare-fun d!61964 () Bool)

(assert (= bs!43430 (and d!61964 start!15478)))

(assert (=> bs!43430 (= (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 transfers!5)))) (_2!301 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(assert (=> b!95280 d!61964))

(declare-fun b_lambda!19143 () Bool)

(assert (= b_lambda!19113 (or start!15478 b_lambda!19143)))

(declare-fun bs!43431 () Bool)

(declare-fun d!61966 () Bool)

(assert (= bs!43431 (and d!61966 start!15478)))

(assert (=> bs!43431 (= (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (+ (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))))

(assert (=> b!95304 d!61966))

(declare-fun b_lambda!19145 () Bool)

(assert (= b_lambda!19121 (or start!15478 b_lambda!19145)))

(declare-fun bs!43432 () Bool)

(declare-fun d!61968 () Bool)

(assert (= bs!43432 (and d!61968 start!15478)))

(assert (=> bs!43432 (= (dynLambda!1158 lambda!11268 (v!3224 (find!8 transfers!5 lambda!11303))) (_2!301 (v!3224 (find!8 transfers!5 lambda!11303))))))

(assert (=> b!95312 d!61968))

(declare-fun b_lambda!19147 () Bool)

(assert (= b_lambda!19119 (or d!61785 b_lambda!19147)))

(declare-fun bs!43433 () Bool)

(declare-fun d!61970 () Bool)

(assert (= bs!43433 (and d!61970 d!61785)))

(assert (=> bs!43433 (= (dynLambda!1158 lambda!11294 (h!7729 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))) (_2!301 (h!7729 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))

(assert (=> b!95310 d!61970))

(declare-fun b_lambda!19149 () Bool)

(assert (= b_lambda!19105 (or b!95121 b_lambda!19149)))

(declare-fun bs!43434 () Bool)

(declare-fun d!61972 () Bool)

(assert (= bs!43434 (and d!61972 b!95121)))

(declare-fun bs!43435 () Bool)

(assert (= bs!43435 (and d!61972 b!95121 d!61956 b!95125)))

(declare-fun lambda!11313 () Int)

(assert (=> bs!43435 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5)))))) (h!7730 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))) (= lambda!11313 lambda!11312))))

(declare-fun bs!43436 () Bool)

(assert (= bs!43436 (and d!61972 b!95121 d!61928)))

(assert (=> bs!43436 (not (= lambda!11313 lambda!11311))))

(declare-fun bs!43437 () Bool)

(assert (= bs!43437 (and d!61972 b!95121 d!61880)))

(assert (=> bs!43437 (not (= lambda!11313 lambda!11307))))

(declare-fun bs!43438 () Bool)

(assert (= bs!43438 (and d!61972 b!95121 d!61846 b!95125)))

(assert (=> bs!43438 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5)))))) (h!7730 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))) (= lambda!11313 lambda!11304))))

(assert (=> bs!43434 (not (= lambda!11313 lambda!11273))))

(declare-fun bs!43439 () Bool)

(assert (= bs!43439 (and d!61972 b!95121 d!61904)))

(assert (=> bs!43439 (not (= lambda!11313 lambda!11308))))

(declare-fun bs!43440 () Bool)

(assert (= bs!43440 (and d!61972 b!95121 d!61814)))

(assert (=> bs!43440 (not (= lambda!11313 lambda!11302))))

(declare-fun bs!43441 () Bool)

(assert (= bs!43441 (and d!61972 b!95121 d!61844)))

(assert (=> bs!43441 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5)))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))) (= lambda!11313 lambda!11303))))

(declare-fun bs!43442 () Bool)

(assert (= bs!43442 (and d!61972 b!95121 d!61796)))

(assert (=> bs!43442 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5)))))) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))) (= lambda!11313 lambda!11299))))

(declare-fun bs!43443 () Bool)

(assert (= bs!43443 (and d!61972 b!95121 d!61788 b!95125)))

(assert (=> bs!43443 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5)))))) (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) (= lambda!11313 lambda!11298))))

(assert (=> bs!43434 true))

(declare-fun res!49568 () Bool)

(declare-fun e!51961 () Bool)

(assert (=> bs!43434 (=> (not res!49568) (not e!51961))))

(declare-fun lt!21869 () Option!768)

(assert (=> bs!43434 (= res!49568 (isDefined!27 lt!21869))))

(assert (=> bs!43434 (= lt!21869 (map!733 (find!8 transfers!5 lambda!11313) lambda!11268))))

(declare-fun lt!21870 () Int)

(assert (=> bs!43434 (= lt!21870 (_2!301 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(assert (=> bs!43434 (= (dynLambda!1156 lambda!11273 (h!7729 (t!56042 (t!56042 transfers!5)))) e!51961)))

(declare-fun b!95336 () Bool)

(declare-fun e!51962 () Bool)

(assert (=> b!95336 (= e!51962 (> (get!1256 lt!21869) 0))))

(declare-fun b!95333 () Bool)

(declare-fun res!49571 () Bool)

(assert (=> b!95333 (=> (not res!49571) (not e!51961))))

(declare-fun e!51963 () Bool)

(assert (=> b!95333 (= res!49571 e!51963)))

(declare-fun res!49569 () Bool)

(assert (=> b!95333 (=> res!49569 e!51963)))

(assert (=> b!95333 (= res!49569 (= (get!1256 lt!21869) 0))))

(declare-fun b!95334 () Bool)

(assert (=> b!95334 (= e!51963 (= lt!21870 0))))

(declare-fun b!95335 () Bool)

(assert (=> b!95335 (= e!51961 e!51962)))

(declare-fun res!49570 () Bool)

(assert (=> b!95335 (=> res!49570 e!51962)))

(assert (=> b!95335 (= res!49570 (> lt!21870 0))))

(assert (= (and bs!43434 res!49568) b!95333))

(assert (= (and b!95333 (not res!49569)) b!95334))

(assert (= (and b!95333 res!49571) b!95335))

(assert (= (and b!95335 (not res!49570)) b!95336))

(declare-fun m!90641 () Bool)

(assert (=> bs!43434 m!90641))

(declare-fun m!90643 () Bool)

(assert (=> bs!43434 m!90643))

(assert (=> bs!43434 m!90643))

(declare-fun m!90645 () Bool)

(assert (=> bs!43434 m!90645))

(declare-fun m!90647 () Bool)

(assert (=> b!95336 m!90647))

(assert (=> b!95333 m!90647))

(assert (=> b!95273 d!61972))

(declare-fun b_lambda!19151 () Bool)

(assert (= b_lambda!19127 (or b!95120 b_lambda!19151)))

(declare-fun bs!43444 () Bool)

(declare-fun d!61974 () Bool)

(assert (= bs!43444 (and d!61974 b!95120)))

(assert (=> bs!43444 (= (dynLambda!1154 lambda!11272 (h!7730 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))) (not (= (_1!300 (h!7730 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))) (_2!300 (h!7730 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))))))))

(assert (=> b!95323 d!61974))

(declare-fun b_lambda!19153 () Bool)

(assert (= b_lambda!19125 (or bs!43369 b_lambda!19153)))

(declare-fun bs!43445 () Bool)

(declare-fun d!61976 () Bool)

(assert (= bs!43445 (and d!61976 d!61844 b!95121)))

(assert (=> bs!43445 (= (dynLambda!1156 lambda!11303 (h!7729 transfers!5)) (= (_1!301 (h!7729 transfers!5)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))))))

(assert (=> b!95315 d!61976))

(declare-fun b_lambda!19155 () Bool)

(assert (= b_lambda!19115 (or d!61782 b_lambda!19155)))

(declare-fun bs!43446 () Bool)

(declare-fun d!61978 () Bool)

(assert (= bs!43446 (and d!61978 d!61782)))

(assert (=> bs!43446 (= (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (and (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))))

(assert (=> b!95306 d!61978))

(declare-fun b_lambda!19157 () Bool)

(assert (= b_lambda!19103 (or d!61785 b_lambda!19157)))

(declare-fun bs!43447 () Bool)

(declare-fun d!61980 () Bool)

(assert (= bs!43447 (and d!61980 d!61785)))

(assert (=> bs!43447 (= (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (and (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))))

(assert (=> b!95272 d!61980))

(declare-fun b_lambda!19159 () Bool)

(assert (= b_lambda!19093 (or bs!43360 b_lambda!19159)))

(declare-fun bs!43448 () Bool)

(declare-fun d!61982 () Bool)

(assert (= bs!43448 (and d!61982 d!61796 b!95121)))

(assert (=> bs!43448 (= (dynLambda!1156 lambda!11299 (h!7729 (t!56042 transfers!5))) (= (_1!301 (h!7729 (t!56042 transfers!5))) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))))))

(assert (=> b!95254 d!61982))

(declare-fun b_lambda!19161 () Bool)

(assert (= b_lambda!19123 (or bs!43369 b_lambda!19161)))

(declare-fun bs!43449 () Bool)

(declare-fun d!61984 () Bool)

(assert (= bs!43449 (and d!61984 d!61844 b!95121)))

(assert (=> bs!43449 (= (dynLambda!1156 lambda!11303 (v!3224 lt!21862)) (= (_1!301 (v!3224 lt!21862)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))))))

(assert (=> b!95313 d!61984))

(declare-fun b_lambda!19163 () Bool)

(assert (= b_lambda!19091 (or bs!43360 b_lambda!19163)))

(declare-fun bs!43450 () Bool)

(declare-fun d!61986 () Bool)

(assert (= bs!43450 (and d!61986 d!61796 b!95121)))

(assert (=> bs!43450 (= (dynLambda!1156 lambda!11299 (v!3224 lt!21846)) (= (_1!301 (v!3224 lt!21846)) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))))))

(assert (=> b!95252 d!61986))

(declare-fun b_lambda!19165 () Bool)

(assert (= b_lambda!19099 (or d!61782 b_lambda!19165)))

(declare-fun bs!43451 () Bool)

(declare-fun d!61988 () Bool)

(assert (= bs!43451 (and d!61988 d!61782)))

(assert (=> bs!43451 (= (dynLambda!1158 lambda!11283 (h!7729 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))) (_2!301 (h!7729 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))

(assert (=> b!95266 d!61988))

(declare-fun b_lambda!19167 () Bool)

(assert (= b_lambda!19095 (or d!61814 b_lambda!19167)))

(declare-fun bs!43452 () Bool)

(declare-fun d!61990 () Bool)

(assert (= bs!43452 (and d!61990 d!61814)))

(assert (=> bs!43452 (= (dynLambda!1156 lambda!11302 (h!7729 transfers!5)) (not (dynLambda!1156 lambda!11298 (h!7729 transfers!5))))))

(declare-fun b_lambda!19171 () Bool)

(assert (=> (not b_lambda!19171) (not bs!43452)))

(declare-fun m!90649 () Bool)

(assert (=> bs!43452 m!90649))

(assert (=> b!95260 d!61990))

(declare-fun b_lambda!19169 () Bool)

(assert (= b_lambda!19111 (or b!95120 b_lambda!19169)))

(declare-fun bs!43453 () Bool)

(declare-fun d!61992 () Bool)

(assert (= bs!43453 (and d!61992 b!95120)))

(assert (=> bs!43453 (= (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 transfers!5)))) (_1!301 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(assert (=> b!95296 d!61992))

(push 1)

(assert (not b!95324))

(assert (not b_lambda!19083))

(assert (not b!95294))

(assert (not b!95276))

(assert (not b_lambda!19087))

(assert (not b_lambda!19151))

(assert (not b_lambda!19171))

(assert (not b!95296))

(assert (not d!61926))

(assert (not b_lambda!19035))

(assert (not b_lambda!19147))

(assert (not b!95304))

(assert (not b_lambda!19167))

(assert (not b!95255))

(assert (not b_lambda!19067))

(assert (not d!61886))

(assert (not b!95326))

(assert (not b_lambda!19137))

(assert (not b!95316))

(assert (not b_lambda!19149))

(assert (not b!95261))

(assert (not b_lambda!19031))

(assert (not b_lambda!19157))

(assert (not b_lambda!19139))

(assert (not b!95306))

(assert (not b_lambda!19071))

(assert (not b!95310))

(assert (not b_lambda!19077))

(assert (not b!95264))

(assert (not b_lambda!19081))

(assert (not b!95253))

(assert (not bs!43434))

(assert (not b_lambda!19075))

(assert (not b_lambda!19029))

(assert (not d!61932))

(assert (not b_lambda!19165))

(assert (not b_lambda!19033))

(assert (not b!95274))

(assert (not b_lambda!19155))

(assert (not b!95292))

(assert (not b!95330))

(assert (not d!61878))

(assert (not d!61888))

(assert (not b_lambda!19135))

(assert (not b_lambda!19069))

(assert (not b_lambda!19163))

(assert (not b_lambda!19065))

(assert (not b!95333))

(assert (not b_lambda!19161))

(assert (not d!61898))

(assert (not b_lambda!19169))

(assert (not b!95278))

(assert (not b!95320))

(assert (not d!61948))

(assert (not b_lambda!19027))

(assert (not bs!43429))

(assert (not b!95259))

(assert (not b_lambda!19153))

(assert (not b!95266))

(assert (not b_lambda!19159))

(assert (not b!95272))

(assert (not d!61904))

(assert (not b!95286))

(assert (not b!95280))

(assert (not d!61912))

(assert (not b_lambda!19145))

(assert (not b_lambda!19089))

(assert (not b!95270))

(assert (not b!95308))

(assert (not b!95328))

(assert (not b!95336))

(assert (not b!95314))

(assert (not b_lambda!19143))

(assert (not d!61880))

(assert (not b_lambda!19037))

(assert (not bs!43417))

(assert (not b_lambda!19085))

(assert (not b_lambda!19079))

(assert (not b!95322))

(assert (not b!95332))

(assert (not b_lambda!19131))

(assert (not d!61930))

(assert (not bs!43416))

(assert (not d!61928))

(assert (not b!95302))

(assert (not b_lambda!19073))

(assert (not d!61908))

(assert (not b_lambda!19133))

(assert (not b_lambda!19141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19173 () Bool)

(assert (= b_lambda!19171 (or bs!43355 b_lambda!19173)))

(declare-fun bs!43454 () Bool)

(declare-fun d!61994 () Bool)

(assert (= bs!43454 (and d!61994 d!61788 b!95125)))

(assert (=> bs!43454 (= (dynLambda!1156 lambda!11298 (h!7729 transfers!5)) (= (_1!301 (h!7729 transfers!5)) (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))))

(assert (=> bs!43452 d!61994))

(push 1)

(assert (not b!95324))

(assert (not b_lambda!19083))

(assert (not b!95294))

(assert (not b!95276))

(assert (not b_lambda!19087))

(assert (not b_lambda!19151))

(assert (not b!95296))

(assert (not d!61926))

(assert (not b_lambda!19035))

(assert (not b_lambda!19147))

(assert (not b!95304))

(assert (not b_lambda!19167))

(assert (not b!95255))

(assert (not b_lambda!19067))

(assert (not d!61886))

(assert (not b!95326))

(assert (not b_lambda!19137))

(assert (not b!95316))

(assert (not b_lambda!19149))

(assert (not b!95261))

(assert (not b_lambda!19031))

(assert (not b_lambda!19157))

(assert (not b_lambda!19139))

(assert (not b!95306))

(assert (not b_lambda!19071))

(assert (not b!95310))

(assert (not b_lambda!19077))

(assert (not b!95264))

(assert (not b_lambda!19081))

(assert (not b!95253))

(assert (not bs!43434))

(assert (not b_lambda!19075))

(assert (not b_lambda!19029))

(assert (not d!61932))

(assert (not b_lambda!19165))

(assert (not b_lambda!19033))

(assert (not b!95274))

(assert (not b_lambda!19155))

(assert (not b!95292))

(assert (not b!95330))

(assert (not d!61878))

(assert (not d!61888))

(assert (not b_lambda!19135))

(assert (not b_lambda!19069))

(assert (not b_lambda!19163))

(assert (not b_lambda!19065))

(assert (not b!95333))

(assert (not b_lambda!19161))

(assert (not d!61898))

(assert (not b_lambda!19169))

(assert (not b!95278))

(assert (not b!95320))

(assert (not d!61948))

(assert (not b_lambda!19027))

(assert (not bs!43429))

(assert (not b!95259))

(assert (not b_lambda!19153))

(assert (not b!95266))

(assert (not b_lambda!19159))

(assert (not b!95272))

(assert (not d!61904))

(assert (not b!95286))

(assert (not b!95280))

(assert (not d!61912))

(assert (not b_lambda!19145))

(assert (not b_lambda!19173))

(assert (not b_lambda!19089))

(assert (not b!95270))

(assert (not b!95308))

(assert (not b!95328))

(assert (not b!95336))

(assert (not b!95314))

(assert (not b_lambda!19143))

(assert (not d!61880))

(assert (not b_lambda!19037))

(assert (not bs!43417))

(assert (not b_lambda!19085))

(assert (not b_lambda!19079))

(assert (not b!95322))

(assert (not b!95332))

(assert (not b_lambda!19131))

(assert (not d!61930))

(assert (not bs!43416))

(assert (not d!61928))

(assert (not b!95302))

(assert (not b_lambda!19073))

(assert (not d!61908))

(assert (not b_lambda!19133))

(assert (not b_lambda!19141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61996 () Bool)

(declare-fun lt!21871 () Int)

(assert (=> d!61996 (>= lt!21871 0)))

(declare-fun e!51964 () Int)

(assert (=> d!61996 (= lt!21871 e!51964)))

(declare-fun c!23415 () Bool)

(assert (=> d!61996 (= c!23415 (is-Nil!838 (t!56044 (t!56044 lt!21819))))))

(assert (=> d!61996 (= (size!1003 (t!56044 (t!56044 lt!21819))) lt!21871)))

(declare-fun b!95337 () Bool)

(assert (=> b!95337 (= e!51964 0)))

(declare-fun b!95338 () Bool)

(assert (=> b!95338 (= e!51964 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 lt!21819))))))))

(assert (= (and d!61996 c!23415) b!95337))

(assert (= (and d!61996 (not c!23415)) b!95338))

(declare-fun m!90651 () Bool)

(assert (=> b!95338 m!90651))

(assert (=> b!95278 d!61996))

(declare-fun d!61998 () Bool)

(assert (not d!61998))

(assert (=> bs!43416 d!61998))

(declare-fun d!62000 () Bool)

(declare-fun c!23416 () Bool)

(assert (=> d!62000 (= c!23416 (is-Nil!838 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))))

(declare-fun e!51965 () Int)

(assert (=> d!62000 (= (foldLeft!11 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283) 0 lambda!11284) e!51965)))

(declare-fun b!95339 () Bool)

(assert (=> b!95339 (= e!51965 0)))

(declare-fun b!95340 () Bool)

(assert (=> b!95340 (= e!51965 (foldLeft!11 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)) (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) lambda!11284))))

(assert (= (and d!62000 c!23416) b!95339))

(assert (= (and d!62000 (not c!23416)) b!95340))

(declare-fun b_lambda!19175 () Bool)

(assert (=> (not b_lambda!19175) (not b!95340)))

(declare-fun m!90653 () Bool)

(assert (=> b!95340 m!90653))

(assert (=> b!95340 m!90653))

(declare-fun m!90655 () Bool)

(assert (=> b!95340 m!90655))

(assert (=> bs!43416 d!62000))

(declare-fun d!62002 () Bool)

(declare-fun lt!21872 () List!898)

(assert (=> d!62002 (= (size!1003 lt!21872) (size!1002 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))))

(declare-fun e!51966 () List!898)

(assert (=> d!62002 (= lt!21872 e!51966)))

(declare-fun c!23417 () Bool)

(assert (=> d!62002 (= c!23417 (is-Nil!836 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))))

(assert (=> d!62002 (= (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283) lt!21872)))

(declare-fun b!95341 () Bool)

(assert (=> b!95341 (= e!51966 Nil!838)))

(declare-fun b!95342 () Bool)

(assert (=> b!95342 (= e!51966 ($colon$colon!31 (map!731 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))))))

(assert (= (and d!62002 c!23417) b!95341))

(assert (= (and d!62002 (not c!23417)) b!95342))

(declare-fun b_lambda!19177 () Bool)

(assert (=> (not b_lambda!19177) (not b!95342)))

(declare-fun m!90657 () Bool)

(assert (=> d!62002 m!90657))

(assert (=> d!62002 m!90623))

(declare-fun m!90659 () Bool)

(assert (=> d!62002 m!90659))

(declare-fun m!90661 () Bool)

(assert (=> b!95342 m!90661))

(declare-fun m!90663 () Bool)

(assert (=> b!95342 m!90663))

(assert (=> b!95342 m!90661))

(assert (=> b!95342 m!90663))

(declare-fun m!90665 () Bool)

(assert (=> b!95342 m!90665))

(assert (=> bs!43416 d!62002))

(declare-fun d!62004 () Bool)

(assert (not d!62004))

(assert (=> bs!43416 d!62004))

(declare-fun b!95343 () Bool)

(declare-fun e!51967 () Bool)

(declare-fun lt!21873 () Option!769)

(assert (=> b!95343 (= e!51967 (dynLambda!1156 lambda!11299 (v!3224 lt!21873)))))

(declare-fun b!95344 () Bool)

(declare-fun e!51970 () Option!769)

(assert (=> b!95344 (= e!51970 (find!8 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11299))))

(declare-fun d!62006 () Bool)

(declare-fun e!51969 () Bool)

(assert (=> d!62006 e!51969))

(declare-fun res!49572 () Bool)

(assert (=> d!62006 (=> res!49572 e!51969)))

(assert (=> d!62006 (= res!49572 (not (is-Some!740 lt!21873)))))

(declare-fun e!51968 () Option!769)

(assert (=> d!62006 (= lt!21873 e!51968)))

(declare-fun c!23419 () Bool)

(assert (=> d!62006 (= c!23419 (is-Nil!836 (t!56042 (t!56042 transfers!5))))))

(assert (=> d!62006 (= (find!8 (t!56042 (t!56042 transfers!5)) lambda!11299) lt!21873)))

(declare-fun b!95345 () Bool)

(assert (=> b!95345 (= e!51968 e!51970)))

(declare-fun c!23418 () Bool)

(assert (=> b!95345 (= c!23418 (dynLambda!1156 lambda!11299 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(declare-fun b!95346 () Bool)

(assert (=> b!95346 (= e!51969 e!51967)))

(declare-fun res!49573 () Bool)

(assert (=> b!95346 (=> (not res!49573) (not e!51967))))

(assert (=> b!95346 (= res!49573 (member (v!3224 lt!21873) (content!207 (t!56042 (t!56042 transfers!5)))))))

(declare-fun b!95347 () Bool)

(assert (=> b!95347 (= e!51968 None!741)))

(declare-fun b!95348 () Bool)

(assert (=> b!95348 (= e!51970 (Some!740 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(assert (= (and b!95345 c!23418) b!95348))

(assert (= (and b!95345 (not c!23418)) b!95344))

(assert (= (and d!62006 c!23419) b!95347))

(assert (= (and d!62006 (not c!23419)) b!95345))

(assert (= (and d!62006 (not res!49572)) b!95346))

(assert (= (and b!95346 res!49573) b!95343))

(declare-fun b_lambda!19179 () Bool)

(assert (=> (not b_lambda!19179) (not b!95343)))

(declare-fun b_lambda!19181 () Bool)

(assert (=> (not b_lambda!19181) (not b!95345)))

(declare-fun m!90667 () Bool)

(assert (=> b!95343 m!90667))

(declare-fun m!90669 () Bool)

(assert (=> b!95344 m!90669))

(declare-fun m!90671 () Bool)

(assert (=> b!95345 m!90671))

(declare-fun m!90673 () Bool)

(assert (=> b!95346 m!90673))

(declare-fun m!90675 () Bool)

(assert (=> b!95346 m!90675))

(assert (=> b!95253 d!62006))

(declare-fun d!62008 () Bool)

(assert (not d!62008))

(assert (=> bs!43429 d!62008))

(declare-fun d!62010 () Bool)

(declare-fun c!23420 () Bool)

(assert (=> d!62010 (= c!23420 (is-Nil!838 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))))

(declare-fun e!51971 () Int)

(assert (=> d!62010 (= (foldLeft!11 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294) 0 lambda!11295) e!51971)))

(declare-fun b!95349 () Bool)

(assert (=> b!95349 (= e!51971 0)))

(declare-fun b!95350 () Bool)

(assert (=> b!95350 (= e!51971 (foldLeft!11 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)) (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) lambda!11295))))

(assert (= (and d!62010 c!23420) b!95349))

(assert (= (and d!62010 (not c!23420)) b!95350))

(declare-fun b_lambda!19183 () Bool)

(assert (=> (not b_lambda!19183) (not b!95350)))

(declare-fun m!90677 () Bool)

(assert (=> b!95350 m!90677))

(assert (=> b!95350 m!90677))

(declare-fun m!90679 () Bool)

(assert (=> b!95350 m!90679))

(assert (=> bs!43429 d!62010))

(declare-fun d!62012 () Bool)

(declare-fun lt!21874 () List!898)

(assert (=> d!62012 (= (size!1003 lt!21874) (size!1002 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))))

(declare-fun e!51972 () List!898)

(assert (=> d!62012 (= lt!21874 e!51972)))

(declare-fun c!23421 () Bool)

(assert (=> d!62012 (= c!23421 (is-Nil!836 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))))

(assert (=> d!62012 (= (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294) lt!21874)))

(declare-fun b!95351 () Bool)

(assert (=> b!95351 (= e!51972 Nil!838)))

(declare-fun b!95352 () Bool)

(assert (=> b!95352 (= e!51972 ($colon$colon!31 (map!731 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))))))

(assert (= (and d!62012 c!23421) b!95351))

(assert (= (and d!62012 (not c!23421)) b!95352))

(declare-fun b_lambda!19185 () Bool)

(assert (=> (not b_lambda!19185) (not b!95352)))

(declare-fun m!90681 () Bool)

(assert (=> d!62012 m!90681))

(assert (=> d!62012 m!90633))

(declare-fun m!90683 () Bool)

(assert (=> d!62012 m!90683))

(declare-fun m!90685 () Bool)

(assert (=> b!95352 m!90685))

(declare-fun m!90687 () Bool)

(assert (=> b!95352 m!90687))

(assert (=> b!95352 m!90685))

(assert (=> b!95352 m!90687))

(declare-fun m!90689 () Bool)

(assert (=> b!95352 m!90689))

(assert (=> bs!43429 d!62012))

(declare-fun d!62014 () Bool)

(assert (not d!62014))

(assert (=> bs!43429 d!62014))

(declare-fun d!62016 () Bool)

(declare-fun lt!21875 () Int)

(assert (=> d!62016 (>= lt!21875 0)))

(declare-fun e!51973 () Int)

(assert (=> d!62016 (= lt!21875 e!51973)))

(declare-fun c!23422 () Bool)

(assert (=> d!62016 (= c!23422 (is-Nil!837 lt!21859))))

(assert (=> d!62016 (= (size!1001 lt!21859) lt!21875)))

(declare-fun b!95353 () Bool)

(assert (=> b!95353 (= e!51973 0)))

(declare-fun b!95354 () Bool)

(assert (=> b!95354 (= e!51973 (+ 1 (size!1001 (t!56043 lt!21859))))))

(assert (= (and d!62016 c!23422) b!95353))

(assert (= (and d!62016 (not c!23422)) b!95354))

(declare-fun m!90691 () Bool)

(assert (=> b!95354 m!90691))

(assert (=> d!61912 d!62016))

(declare-fun d!62018 () Bool)

(declare-fun lt!21876 () Int)

(assert (=> d!62018 (>= lt!21876 0)))

(declare-fun e!51974 () Int)

(assert (=> d!62018 (= lt!21876 e!51974)))

(declare-fun c!23423 () Bool)

(assert (=> d!62018 (= c!23423 (is-Nil!836 (t!56042 (t!56042 transfers!5))))))

(assert (=> d!62018 (= (size!1002 (t!56042 (t!56042 transfers!5))) lt!21876)))

(declare-fun b!95355 () Bool)

(assert (=> b!95355 (= e!51974 0)))

(declare-fun b!95356 () Bool)

(assert (=> b!95356 (= e!51974 (+ 1 (size!1002 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (= (and d!62018 c!23423) b!95355))

(assert (= (and d!62018 (not c!23423)) b!95356))

(declare-fun m!90693 () Bool)

(assert (=> b!95356 m!90693))

(assert (=> d!61912 d!62018))

(declare-fun d!62020 () Bool)

(declare-fun res!49574 () Bool)

(declare-fun e!51975 () Bool)

(assert (=> d!62020 (=> res!49574 e!51975)))

(assert (=> d!62020 (= res!49574 (is-Nil!836 transfers!5))))

(assert (=> d!62020 (= (forall!87 transfers!5 lambda!11308) e!51975)))

(declare-fun b!95357 () Bool)

(declare-fun e!51976 () Bool)

(assert (=> b!95357 (= e!51975 e!51976)))

(declare-fun res!49575 () Bool)

(assert (=> b!95357 (=> (not res!49575) (not e!51976))))

(assert (=> b!95357 (= res!49575 (dynLambda!1156 lambda!11308 (h!7729 transfers!5)))))

(declare-fun b!95358 () Bool)

(assert (=> b!95358 (= e!51976 (forall!87 (t!56042 transfers!5) lambda!11308))))

(assert (= (and d!62020 (not res!49574)) b!95357))

(assert (= (and b!95357 res!49575) b!95358))

(declare-fun b_lambda!19187 () Bool)

(assert (=> (not b_lambda!19187) (not b!95357)))

(declare-fun m!90695 () Bool)

(assert (=> b!95357 m!90695))

(declare-fun m!90697 () Bool)

(assert (=> b!95358 m!90697))

(assert (=> d!61904 d!62020))

(declare-fun d!62022 () Bool)

(assert (=> d!62022 (= (get!1256 lt!21869) (v!3223 lt!21869))))

(assert (=> b!95336 d!62022))

(declare-fun b!95373 () Bool)

(declare-fun e!51988 () Bool)

(declare-fun lt!21882 () List!896)

(assert (=> b!95373 (= e!51988 (forall!87 lt!21882 lambda!11311))))

(declare-fun b!95374 () Bool)

(declare-fun e!51985 () List!896)

(assert (=> b!95374 (= e!51985 Nil!836)))

(declare-fun b!95375 () Bool)

(declare-fun res!49586 () Bool)

(assert (=> b!95375 (=> (not res!49586) (not e!51988))))

(assert (=> b!95375 (= res!49586 (subset (content!207 lt!21882) (content!207 transfers!5)))))

(declare-fun b!95376 () Bool)

(declare-fun e!51986 () List!896)

(declare-fun lt!21881 () List!896)

(assert (=> b!95376 (= e!51986 lt!21881)))

(declare-fun d!62024 () Bool)

(assert (=> d!62024 e!51988))

(declare-fun res!49588 () Bool)

(assert (=> d!62024 (=> (not res!49588) (not e!51988))))

(assert (=> d!62024 (= res!49588 (<= (size!1002 lt!21882) (size!1002 transfers!5)))))

(assert (=> d!62024 (= lt!21882 e!51985)))

(declare-fun c!23429 () Bool)

(assert (=> d!62024 (= c!23429 (is-Nil!836 transfers!5))))

(assert (=> d!62024 (= (filter!49 transfers!5 lambda!11311) lt!21882)))

(declare-fun b!95377 () Bool)

(assert (=> b!95377 (= e!51985 e!51986)))

(declare-fun c!23428 () Bool)

(declare-fun e!51987 () Bool)

(assert (=> b!95377 (= c!23428 e!51987)))

(declare-fun res!49587 () Bool)

(assert (=> b!95377 (=> (not res!49587) (not e!51987))))

(assert (=> b!95377 (= res!49587 (is-Cons!834 transfers!5))))

(assert (=> b!95377 (= lt!21881 (filter!49 (t!56042 transfers!5) lambda!11311))))

(declare-fun b!95378 () Bool)

(assert (=> b!95378 (= e!51986 (Cons!834 (h!7729 transfers!5) lt!21881))))

(declare-fun b!95379 () Bool)

(assert (=> b!95379 (= e!51987 (dynLambda!1156 lambda!11311 (h!7729 transfers!5)))))

(assert (= (and b!95377 res!49587) b!95379))

(assert (= (and b!95377 c!23428) b!95378))

(assert (= (and b!95377 (not c!23428)) b!95376))

(assert (= (and d!62024 c!23429) b!95374))

(assert (= (and d!62024 (not c!23429)) b!95377))

(assert (= (and d!62024 res!49588) b!95375))

(assert (= (and b!95375 res!49586) b!95373))

(declare-fun b_lambda!19189 () Bool)

(assert (=> (not b_lambda!19189) (not b!95379)))

(declare-fun m!90699 () Bool)

(assert (=> b!95375 m!90699))

(assert (=> b!95375 m!90447))

(declare-fun m!90701 () Bool)

(assert (=> b!95373 m!90701))

(declare-fun m!90703 () Bool)

(assert (=> b!95379 m!90703))

(declare-fun m!90705 () Bool)

(assert (=> b!95377 m!90705))

(declare-fun m!90707 () Bool)

(assert (=> d!62024 m!90707))

(assert (=> d!62024 m!90315))

(assert (=> d!61928 d!62024))

(declare-fun d!62026 () Bool)

(assert (=> d!62026 (= ($colon$colon!31 (map!731 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))) (Cons!836 (dynLambda!1158 lambda!11294 (h!7729 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))) (map!731 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)) lambda!11294)))))

(assert (=> b!95310 d!62026))

(declare-fun d!62028 () Bool)

(declare-fun lt!21883 () List!898)

(assert (=> d!62028 (= (size!1003 lt!21883) (size!1002 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))

(declare-fun e!51989 () List!898)

(assert (=> d!62028 (= lt!21883 e!51989)))

(declare-fun c!23430 () Bool)

(assert (=> d!62028 (= c!23430 (is-Nil!836 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))

(assert (=> d!62028 (= (map!731 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)) lambda!11294) lt!21883)))

(declare-fun b!95380 () Bool)

(assert (=> b!95380 (= e!51989 Nil!838)))

(declare-fun b!95381 () Bool)

(assert (=> b!95381 (= e!51989 ($colon$colon!31 (map!731 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))))

(assert (= (and d!62028 c!23430) b!95380))

(assert (= (and d!62028 (not c!23430)) b!95381))

(declare-fun b_lambda!19191 () Bool)

(assert (=> (not b_lambda!19191) (not b!95381)))

(declare-fun m!90709 () Bool)

(assert (=> d!62028 m!90709))

(declare-fun m!90711 () Bool)

(assert (=> d!62028 m!90711))

(declare-fun m!90713 () Bool)

(assert (=> b!95381 m!90713))

(declare-fun m!90715 () Bool)

(assert (=> b!95381 m!90715))

(assert (=> b!95381 m!90713))

(assert (=> b!95381 m!90715))

(declare-fun m!90717 () Bool)

(assert (=> b!95381 m!90717))

(assert (=> b!95310 d!62028))

(declare-fun d!62030 () Bool)

(declare-fun c!23431 () Bool)

(assert (=> d!62030 (= c!23431 (is-Nil!839 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))))

(declare-fun e!51990 () Bool)

(assert (=> d!62030 (= (foldLeft!12 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) lambda!11297) e!51990)))

(declare-fun b!95382 () Bool)

(assert (=> b!95382 (= e!51990 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))))

(declare-fun b!95383 () Bool)

(assert (=> b!95383 (= e!51990 (foldLeft!12 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) lambda!11297))))

(assert (= (and d!62030 c!23431) b!95382))

(assert (= (and d!62030 (not c!23431)) b!95383))

(declare-fun b_lambda!19193 () Bool)

(assert (=> (not b_lambda!19193) (not b!95383)))

(assert (=> b!95383 m!90513))

(declare-fun m!90719 () Bool)

(assert (=> b!95383 m!90719))

(assert (=> b!95383 m!90719))

(declare-fun m!90721 () Bool)

(assert (=> b!95383 m!90721))

(assert (=> b!95272 d!62030))

(declare-fun d!62032 () Bool)

(assert (=> d!62032 (= (isEmpty!912 (find!8 transfers!5 lambda!11299)) (not (is-Some!740 (find!8 transfers!5 lambda!11299))))))

(assert (=> d!61888 d!62032))

(declare-fun d!62034 () Bool)

(declare-fun c!23432 () Bool)

(assert (=> d!62034 (= c!23432 (is-Nil!838 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))))

(declare-fun e!51991 () Int)

(assert (=> d!62034 (= (foldLeft!11 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))) (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) lambda!11269) e!51991)))

(declare-fun b!95384 () Bool)

(assert (=> b!95384 (= e!51991 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))))

(declare-fun b!95385 () Bool)

(assert (=> b!95385 (= e!51991 (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) lambda!11269))))

(assert (= (and d!62034 c!23432) b!95384))

(assert (= (and d!62034 (not c!23432)) b!95385))

(declare-fun b_lambda!19195 () Bool)

(assert (=> (not b_lambda!19195) (not b!95385)))

(assert (=> b!95385 m!90565))

(declare-fun m!90723 () Bool)

(assert (=> b!95385 m!90723))

(assert (=> b!95385 m!90723))

(declare-fun m!90725 () Bool)

(assert (=> b!95385 m!90725))

(assert (=> b!95304 d!62034))

(declare-fun d!62036 () Bool)

(assert (=> d!62036 (= (isDefined!27 lt!21869) (not (isEmpty!911 lt!21869)))))

(declare-fun bs!43455 () Bool)

(assert (= bs!43455 d!62036))

(declare-fun m!90727 () Bool)

(assert (=> bs!43455 m!90727))

(assert (=> bs!43434 d!62036))

(declare-fun d!62038 () Bool)

(declare-fun lt!21884 () Option!768)

(assert (=> d!62038 (= (isDefined!27 lt!21884) (isDefined!28 (find!8 transfers!5 lambda!11313)))))

(declare-fun e!51992 () Option!768)

(assert (=> d!62038 (= lt!21884 e!51992)))

(declare-fun c!23433 () Bool)

(assert (=> d!62038 (= c!23433 (is-None!741 (find!8 transfers!5 lambda!11313)))))

(assert (=> d!62038 (= (map!733 (find!8 transfers!5 lambda!11313) lambda!11268) lt!21884)))

(declare-fun b!95386 () Bool)

(assert (=> b!95386 (= e!51992 None!740)))

(declare-fun b!95387 () Bool)

(assert (=> b!95387 (= e!51992 (Some!739 (dynLambda!1158 lambda!11268 (v!3224 (find!8 transfers!5 lambda!11313)))))))

(assert (= (and d!62038 c!23433) b!95386))

(assert (= (and d!62038 (not c!23433)) b!95387))

(declare-fun b_lambda!19197 () Bool)

(assert (=> (not b_lambda!19197) (not b!95387)))

(declare-fun m!90729 () Bool)

(assert (=> d!62038 m!90729))

(assert (=> d!62038 m!90643))

(declare-fun m!90731 () Bool)

(assert (=> d!62038 m!90731))

(declare-fun m!90733 () Bool)

(assert (=> b!95387 m!90733))

(assert (=> bs!43434 d!62038))

(declare-fun b!95388 () Bool)

(declare-fun e!51993 () Bool)

(declare-fun lt!21885 () Option!769)

(assert (=> b!95388 (= e!51993 (dynLambda!1156 lambda!11313 (v!3224 lt!21885)))))

(declare-fun b!95389 () Bool)

(declare-fun e!51996 () Option!769)

(assert (=> b!95389 (= e!51996 (find!8 (t!56042 transfers!5) lambda!11313))))

(declare-fun d!62040 () Bool)

(declare-fun e!51995 () Bool)

(assert (=> d!62040 e!51995))

(declare-fun res!49589 () Bool)

(assert (=> d!62040 (=> res!49589 e!51995)))

(assert (=> d!62040 (= res!49589 (not (is-Some!740 lt!21885)))))

(declare-fun e!51994 () Option!769)

(assert (=> d!62040 (= lt!21885 e!51994)))

(declare-fun c!23435 () Bool)

(assert (=> d!62040 (= c!23435 (is-Nil!836 transfers!5))))

(assert (=> d!62040 (= (find!8 transfers!5 lambda!11313) lt!21885)))

(declare-fun b!95390 () Bool)

(assert (=> b!95390 (= e!51994 e!51996)))

(declare-fun c!23434 () Bool)

(assert (=> b!95390 (= c!23434 (dynLambda!1156 lambda!11313 (h!7729 transfers!5)))))

(declare-fun b!95391 () Bool)

(assert (=> b!95391 (= e!51995 e!51993)))

(declare-fun res!49590 () Bool)

(assert (=> b!95391 (=> (not res!49590) (not e!51993))))

(assert (=> b!95391 (= res!49590 (member (v!3224 lt!21885) (content!207 transfers!5)))))

(declare-fun b!95392 () Bool)

(assert (=> b!95392 (= e!51994 None!741)))

(declare-fun b!95393 () Bool)

(assert (=> b!95393 (= e!51996 (Some!740 (h!7729 transfers!5)))))

(assert (= (and b!95390 c!23434) b!95393))

(assert (= (and b!95390 (not c!23434)) b!95389))

(assert (= (and d!62040 c!23435) b!95392))

(assert (= (and d!62040 (not c!23435)) b!95390))

(assert (= (and d!62040 (not res!49589)) b!95391))

(assert (= (and b!95391 res!49590) b!95388))

(declare-fun b_lambda!19199 () Bool)

(assert (=> (not b_lambda!19199) (not b!95388)))

(declare-fun b_lambda!19201 () Bool)

(assert (=> (not b_lambda!19201) (not b!95390)))

(declare-fun m!90735 () Bool)

(assert (=> b!95388 m!90735))

(declare-fun m!90737 () Bool)

(assert (=> b!95389 m!90737))

(declare-fun m!90739 () Bool)

(assert (=> b!95390 m!90739))

(assert (=> b!95391 m!90447))

(declare-fun m!90741 () Bool)

(assert (=> b!95391 m!90741))

(assert (=> bs!43434 d!62040))

(declare-fun d!62042 () Bool)

(assert (=> d!62042 (= (isDefined!27 lt!21861) (not (isEmpty!911 lt!21861)))))

(declare-fun bs!43456 () Bool)

(assert (= bs!43456 d!62042))

(declare-fun m!90743 () Bool)

(assert (=> bs!43456 m!90743))

(assert (=> d!61932 d!62042))

(declare-fun d!62044 () Bool)

(assert (=> d!62044 (= (isDefined!28 (find!8 transfers!5 lambda!11303)) (not (isEmpty!912 (find!8 transfers!5 lambda!11303))))))

(declare-fun bs!43457 () Bool)

(assert (= bs!43457 d!62044))

(assert (=> bs!43457 m!90453))

(declare-fun m!90745 () Bool)

(assert (=> bs!43457 m!90745))

(assert (=> d!61932 d!62044))

(declare-fun d!62046 () Bool)

(declare-fun res!49591 () Bool)

(declare-fun e!51997 () Bool)

(assert (=> d!62046 (=> res!49591 e!51997)))

(assert (=> d!62046 (= res!49591 (is-Nil!836 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(assert (=> d!62046 (= (forall!87 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11273) e!51997)))

(declare-fun b!95394 () Bool)

(declare-fun e!51998 () Bool)

(assert (=> b!95394 (= e!51997 e!51998)))

(declare-fun res!49592 () Bool)

(assert (=> b!95394 (=> (not res!49592) (not e!51998))))

(assert (=> b!95394 (= res!49592 (dynLambda!1156 lambda!11273 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(declare-fun b!95395 () Bool)

(assert (=> b!95395 (= e!51998 (forall!87 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11273))))

(assert (= (and d!62046 (not res!49591)) b!95394))

(assert (= (and b!95394 res!49592) b!95395))

(declare-fun b_lambda!19203 () Bool)

(assert (=> (not b_lambda!19203) (not b!95394)))

(declare-fun m!90747 () Bool)

(assert (=> b!95394 m!90747))

(declare-fun m!90749 () Bool)

(assert (=> b!95395 m!90749))

(assert (=> b!95274 d!62046))

(declare-fun d!62048 () Bool)

(declare-fun res!49593 () Bool)

(declare-fun e!51999 () Bool)

(assert (=> d!62048 (=> res!49593 e!51999)))

(assert (=> d!62048 (= res!49593 (is-Nil!836 (t!56042 transfers!5)))))

(assert (=> d!62048 (= (forall!87 (t!56042 transfers!5) lambda!11302) e!51999)))

(declare-fun b!95396 () Bool)

(declare-fun e!52000 () Bool)

(assert (=> b!95396 (= e!51999 e!52000)))

(declare-fun res!49594 () Bool)

(assert (=> b!95396 (=> (not res!49594) (not e!52000))))

(assert (=> b!95396 (= res!49594 (dynLambda!1156 lambda!11302 (h!7729 (t!56042 transfers!5))))))

(declare-fun b!95397 () Bool)

(assert (=> b!95397 (= e!52000 (forall!87 (t!56042 (t!56042 transfers!5)) lambda!11302))))

(assert (= (and d!62048 (not res!49593)) b!95396))

(assert (= (and b!95396 res!49594) b!95397))

(declare-fun b_lambda!19205 () Bool)

(assert (=> (not b_lambda!19205) (not b!95396)))

(declare-fun m!90751 () Bool)

(assert (=> b!95396 m!90751))

(declare-fun m!90753 () Bool)

(assert (=> b!95397 m!90753))

(assert (=> b!95261 d!62048))

(declare-fun d!62050 () Bool)

(assert (not d!62050))

(assert (=> b!95270 d!62050))

(declare-fun b!95398 () Bool)

(declare-fun e!52004 () Bool)

(declare-fun lt!21887 () List!896)

(assert (=> b!95398 (= e!52004 (forall!87 lt!21887 lambda!11307))))

(declare-fun b!95399 () Bool)

(declare-fun e!52001 () List!896)

(assert (=> b!95399 (= e!52001 Nil!836)))

(declare-fun b!95400 () Bool)

(declare-fun res!49595 () Bool)

(assert (=> b!95400 (=> (not res!49595) (not e!52004))))

(assert (=> b!95400 (= res!49595 (subset (content!207 lt!21887) (content!207 transfers!5)))))

(declare-fun b!95401 () Bool)

(declare-fun e!52002 () List!896)

(declare-fun lt!21886 () List!896)

(assert (=> b!95401 (= e!52002 lt!21886)))

(declare-fun d!62052 () Bool)

(assert (=> d!62052 e!52004))

(declare-fun res!49597 () Bool)

(assert (=> d!62052 (=> (not res!49597) (not e!52004))))

(assert (=> d!62052 (= res!49597 (<= (size!1002 lt!21887) (size!1002 transfers!5)))))

(assert (=> d!62052 (= lt!21887 e!52001)))

(declare-fun c!23437 () Bool)

(assert (=> d!62052 (= c!23437 (is-Nil!836 transfers!5))))

(assert (=> d!62052 (= (filter!49 transfers!5 lambda!11307) lt!21887)))

(declare-fun b!95402 () Bool)

(assert (=> b!95402 (= e!52001 e!52002)))

(declare-fun c!23436 () Bool)

(declare-fun e!52003 () Bool)

(assert (=> b!95402 (= c!23436 e!52003)))

(declare-fun res!49596 () Bool)

(assert (=> b!95402 (=> (not res!49596) (not e!52003))))

(assert (=> b!95402 (= res!49596 (is-Cons!834 transfers!5))))

(assert (=> b!95402 (= lt!21886 (filter!49 (t!56042 transfers!5) lambda!11307))))

(declare-fun b!95403 () Bool)

(assert (=> b!95403 (= e!52002 (Cons!834 (h!7729 transfers!5) lt!21886))))

(declare-fun b!95404 () Bool)

(assert (=> b!95404 (= e!52003 (dynLambda!1156 lambda!11307 (h!7729 transfers!5)))))

(assert (= (and b!95402 res!49596) b!95404))

(assert (= (and b!95402 c!23436) b!95403))

(assert (= (and b!95402 (not c!23436)) b!95401))

(assert (= (and d!62052 c!23437) b!95399))

(assert (= (and d!62052 (not c!23437)) b!95402))

(assert (= (and d!62052 res!49597) b!95400))

(assert (= (and b!95400 res!49595) b!95398))

(declare-fun b_lambda!19207 () Bool)

(assert (=> (not b_lambda!19207) (not b!95404)))

(declare-fun m!90755 () Bool)

(assert (=> b!95400 m!90755))

(assert (=> b!95400 m!90447))

(declare-fun m!90757 () Bool)

(assert (=> b!95398 m!90757))

(declare-fun m!90759 () Bool)

(assert (=> b!95404 m!90759))

(declare-fun m!90761 () Bool)

(assert (=> b!95402 m!90761))

(declare-fun m!90763 () Bool)

(assert (=> d!62052 m!90763))

(assert (=> d!62052 m!90315))

(assert (=> d!61880 d!62052))

(declare-fun d!62054 () Bool)

(assert (=> d!62054 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11268) (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 transfers!5))))) (Cons!836 (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 transfers!5)))) (map!731 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11268)))))

(assert (=> b!95280 d!62054))

(declare-fun d!62056 () Bool)

(declare-fun lt!21888 () List!898)

(assert (=> d!62056 (= (size!1003 lt!21888) (size!1002 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(declare-fun e!52005 () List!898)

(assert (=> d!62056 (= lt!21888 e!52005)))

(declare-fun c!23438 () Bool)

(assert (=> d!62056 (= c!23438 (is-Nil!836 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(assert (=> d!62056 (= (map!731 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11268) lt!21888)))

(declare-fun b!95405 () Bool)

(assert (=> b!95405 (= e!52005 Nil!838)))

(declare-fun b!95406 () Bool)

(assert (=> b!95406 (= e!52005 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11268) (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(assert (= (and d!62056 c!23438) b!95405))

(assert (= (and d!62056 (not c!23438)) b!95406))

(declare-fun b_lambda!19209 () Bool)

(assert (=> (not b_lambda!19209) (not b!95406)))

(declare-fun m!90765 () Bool)

(assert (=> d!62056 m!90765))

(assert (=> d!62056 m!90693))

(declare-fun m!90767 () Bool)

(assert (=> b!95406 m!90767))

(declare-fun m!90769 () Bool)

(assert (=> b!95406 m!90769))

(assert (=> b!95406 m!90767))

(assert (=> b!95406 m!90769))

(declare-fun m!90771 () Bool)

(assert (=> b!95406 m!90771))

(assert (=> b!95280 d!62056))

(declare-fun d!62058 () Bool)

(declare-fun lt!21889 () Int)

(assert (=> d!62058 (>= lt!21889 0)))

(declare-fun e!52006 () Int)

(assert (=> d!62058 (= lt!21889 e!52006)))

(declare-fun c!23439 () Bool)

(assert (=> d!62058 (= c!23439 (is-Nil!839 (t!56069 lt!21836)))))

(assert (=> d!62058 (= (size!1004 (t!56069 lt!21836)) lt!21889)))

(declare-fun b!95407 () Bool)

(assert (=> b!95407 (= e!52006 0)))

(declare-fun b!95408 () Bool)

(assert (=> b!95408 (= e!52006 (+ 1 (size!1004 (t!56069 (t!56069 lt!21836)))))))

(assert (= (and d!62058 c!23439) b!95407))

(assert (= (and d!62058 (not c!23439)) b!95408))

(declare-fun m!90773 () Bool)

(assert (=> b!95408 m!90773))

(assert (=> b!95330 d!62058))

(declare-fun d!62060 () Bool)

(declare-fun lt!21890 () Int)

(assert (=> d!62060 (>= lt!21890 0)))

(declare-fun e!52007 () Int)

(assert (=> d!62060 (= lt!21890 e!52007)))

(declare-fun c!23440 () Bool)

(assert (=> d!62060 (= c!23440 (is-Nil!838 lt!21851))))

(assert (=> d!62060 (= (size!1003 lt!21851) lt!21890)))

(declare-fun b!95409 () Bool)

(assert (=> b!95409 (= e!52007 0)))

(declare-fun b!95410 () Bool)

(assert (=> b!95410 (= e!52007 (+ 1 (size!1003 (t!56044 lt!21851))))))

(assert (= (and d!62060 c!23440) b!95409))

(assert (= (and d!62060 (not c!23440)) b!95410))

(declare-fun m!90775 () Bool)

(assert (=> b!95410 m!90775))

(assert (=> d!61898 d!62060))

(assert (=> d!61898 d!62018))

(assert (=> b!95316 d!61914))

(declare-fun d!62062 () Bool)

(assert (=> d!62062 (= (isEmpty!911 lt!21840) (not (is-Some!739 lt!21840)))))

(assert (=> d!61886 d!62062))

(declare-fun d!62064 () Bool)

(declare-fun lt!21891 () Int)

(assert (=> d!62064 (>= lt!21891 0)))

(declare-fun e!52008 () Int)

(assert (=> d!62064 (= lt!21891 e!52008)))

(declare-fun c!23441 () Bool)

(assert (=> d!62064 (= c!23441 (is-Nil!839 lt!21866))))

(assert (=> d!62064 (= (size!1004 lt!21866) lt!21891)))

(declare-fun b!95411 () Bool)

(assert (=> b!95411 (= e!52008 0)))

(declare-fun b!95412 () Bool)

(assert (=> b!95412 (= e!52008 (+ 1 (size!1004 (t!56069 lt!21866))))))

(assert (= (and d!62064 c!23441) b!95411))

(assert (= (and d!62064 (not c!23441)) b!95412))

(declare-fun m!90777 () Bool)

(assert (=> b!95412 m!90777))

(assert (=> d!61948 d!62064))

(declare-fun d!62066 () Bool)

(declare-fun lt!21892 () Int)

(assert (=> d!62066 (>= lt!21892 0)))

(declare-fun e!52009 () Int)

(assert (=> d!62066 (= lt!21892 e!52009)))

(declare-fun c!23442 () Bool)

(assert (=> d!62066 (= c!23442 (is-Nil!840 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840))))))

(assert (=> d!62066 (= (size!1005 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840))) lt!21892)))

(declare-fun b!95413 () Bool)

(assert (=> b!95413 (= e!52009 0)))

(declare-fun b!95414 () Bool)

(assert (=> b!95414 (= e!52009 (+ 1 (size!1005 (t!56070 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840))))))))

(assert (= (and d!62066 c!23442) b!95413))

(assert (= (and d!62066 (not c!23442)) b!95414))

(declare-fun m!90779 () Bool)

(assert (=> b!95414 m!90779))

(assert (=> d!61948 d!62066))

(declare-fun d!62068 () Bool)

(declare-fun c!23443 () Bool)

(assert (=> d!62068 (= c!23443 (is-Nil!836 (t!56042 transfers!5)))))

(declare-fun e!52010 () (Set tuple2!524))

(assert (=> d!62068 (= (content!207 (t!56042 transfers!5)) e!52010)))

(declare-fun b!95415 () Bool)

(assert (=> b!95415 (= e!52010 (as emptyset (Set tuple2!524)))))

(declare-fun b!95416 () Bool)

(assert (=> b!95416 (= e!52010 (union (insert (h!7729 (t!56042 transfers!5)) (as emptyset (Set tuple2!524))) (content!207 (t!56042 (t!56042 transfers!5)))))))

(assert (= (and d!62068 c!23443) b!95415))

(assert (= (and d!62068 (not c!23443)) b!95416))

(declare-fun m!90781 () Bool)

(assert (=> b!95416 m!90781))

(assert (=> b!95416 m!90673))

(assert (=> b!95302 d!62068))

(declare-fun d!62070 () Bool)

(declare-fun lt!21893 () Int)

(assert (=> d!62070 (>= lt!21893 0)))

(declare-fun e!52011 () Int)

(assert (=> d!62070 (= lt!21893 e!52011)))

(declare-fun c!23444 () Bool)

(assert (=> d!62070 (= c!23444 (is-Nil!838 lt!21848))))

(assert (=> d!62070 (= (size!1003 lt!21848) lt!21893)))

(declare-fun b!95417 () Bool)

(assert (=> b!95417 (= e!52011 0)))

(declare-fun b!95418 () Bool)

(assert (=> b!95418 (= e!52011 (+ 1 (size!1003 (t!56044 lt!21848))))))

(assert (= (and d!62070 c!23444) b!95417))

(assert (= (and d!62070 (not c!23444)) b!95418))

(declare-fun m!90783 () Bool)

(assert (=> b!95418 m!90783))

(assert (=> d!61878 d!62070))

(declare-fun d!62072 () Bool)

(declare-fun lt!21894 () Int)

(assert (=> d!62072 (>= lt!21894 0)))

(declare-fun e!52012 () Int)

(assert (=> d!62072 (= lt!21894 e!52012)))

(declare-fun c!23445 () Bool)

(assert (=> d!62072 (= c!23445 (is-Nil!836 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))

(assert (=> d!62072 (= (size!1002 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)) lt!21894)))

(declare-fun b!95419 () Bool)

(assert (=> b!95419 (= e!52012 0)))

(declare-fun b!95420 () Bool)

(assert (=> b!95420 (= e!52012 (+ 1 (size!1002 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))))

(assert (= (and d!62072 c!23445) b!95419))

(assert (= (and d!62072 (not c!23445)) b!95420))

(declare-fun m!90785 () Bool)

(assert (=> b!95420 m!90785))

(assert (=> d!61878 d!62072))

(declare-fun d!62074 () Bool)

(assert (=> d!62074 (= ($colon$colon!31 (map!731 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))) (Cons!836 (dynLambda!1158 lambda!11283 (h!7729 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))) (map!731 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)) lambda!11283)))))

(assert (=> b!95266 d!62074))

(declare-fun d!62076 () Bool)

(declare-fun lt!21895 () List!898)

(assert (=> d!62076 (= (size!1003 lt!21895) (size!1002 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))

(declare-fun e!52013 () List!898)

(assert (=> d!62076 (= lt!21895 e!52013)))

(declare-fun c!23446 () Bool)

(assert (=> d!62076 (= c!23446 (is-Nil!836 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))

(assert (=> d!62076 (= (map!731 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)) lambda!11283) lt!21895)))

(declare-fun b!95421 () Bool)

(assert (=> b!95421 (= e!52013 Nil!838)))

(declare-fun b!95422 () Bool)

(assert (=> b!95422 (= e!52013 ($colon$colon!31 (map!731 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))))

(assert (= (and d!62076 c!23446) b!95421))

(assert (= (and d!62076 (not c!23446)) b!95422))

(declare-fun b_lambda!19211 () Bool)

(assert (=> (not b_lambda!19211) (not b!95422)))

(declare-fun m!90787 () Bool)

(assert (=> d!62076 m!90787))

(assert (=> d!62076 m!90785))

(declare-fun m!90789 () Bool)

(assert (=> b!95422 m!90789))

(declare-fun m!90791 () Bool)

(assert (=> b!95422 m!90791))

(assert (=> b!95422 m!90789))

(assert (=> b!95422 m!90791))

(declare-fun m!90793 () Bool)

(assert (=> b!95422 m!90793))

(assert (=> b!95266 d!62076))

(declare-fun d!62078 () Bool)

(declare-fun lt!21896 () Int)

(assert (=> d!62078 (>= lt!21896 0)))

(declare-fun e!52014 () Int)

(assert (=> d!62078 (= lt!21896 e!52014)))

(declare-fun c!23447 () Bool)

(assert (=> d!62078 (= c!23447 (is-Nil!837 (t!56043 (t!56043 lt!21816))))))

(assert (=> d!62078 (= (size!1001 (t!56043 (t!56043 lt!21816))) lt!21896)))

(declare-fun b!95423 () Bool)

(assert (=> b!95423 (= e!52014 0)))

(declare-fun b!95424 () Bool)

(assert (=> b!95424 (= e!52014 (+ 1 (size!1001 (t!56043 (t!56043 (t!56043 lt!21816))))))))

(assert (= (and d!62078 c!23447) b!95423))

(assert (= (and d!62078 (not c!23447)) b!95424))

(declare-fun m!90795 () Bool)

(assert (=> b!95424 m!90795))

(assert (=> b!95276 d!62078))

(declare-fun d!62080 () Bool)

(declare-fun lt!21897 () Int)

(assert (=> d!62080 (>= lt!21897 0)))

(declare-fun e!52015 () Int)

(assert (=> d!62080 (= lt!21897 e!52015)))

(declare-fun c!23448 () Bool)

(assert (=> d!62080 (= c!23448 (is-Nil!838 lt!21860))))

(assert (=> d!62080 (= (size!1003 lt!21860) lt!21897)))

(declare-fun b!95425 () Bool)

(assert (=> b!95425 (= e!52015 0)))

(declare-fun b!95426 () Bool)

(assert (=> b!95426 (= e!52015 (+ 1 (size!1003 (t!56044 lt!21860))))))

(assert (= (and d!62080 c!23448) b!95425))

(assert (= (and d!62080 (not c!23448)) b!95426))

(declare-fun m!90797 () Bool)

(assert (=> b!95426 m!90797))

(assert (=> d!61926 d!62080))

(declare-fun d!62082 () Bool)

(declare-fun lt!21898 () Int)

(assert (=> d!62082 (>= lt!21898 0)))

(declare-fun e!52016 () Int)

(assert (=> d!62082 (= lt!21898 e!52016)))

(declare-fun c!23449 () Bool)

(assert (=> d!62082 (= c!23449 (is-Nil!836 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))

(assert (=> d!62082 (= (size!1002 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)) lt!21898)))

(declare-fun b!95427 () Bool)

(assert (=> b!95427 (= e!52016 0)))

(declare-fun b!95428 () Bool)

(assert (=> b!95428 (= e!52016 (+ 1 (size!1002 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))))

(assert (= (and d!62082 c!23449) b!95427))

(assert (= (and d!62082 (not c!23449)) b!95428))

(assert (=> b!95428 m!90711))

(assert (=> d!61926 d!62082))

(declare-fun d!62084 () Bool)

(assert (=> d!62084 (= ($colon$colon!32 (map!732 (t!56070 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840))) lambda!11282) (dynLambda!1160 lambda!11282 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840))))) (Cons!837 (dynLambda!1160 lambda!11282 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) (map!732 (t!56070 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840))) lambda!11282)))))

(assert (=> b!95328 d!62084))

(declare-fun d!62086 () Bool)

(assert (not d!62086))

(assert (=> b!95328 d!62086))

(declare-fun d!62088 () Bool)

(assert (=> d!62088 (= (isEmpty!911 lt!21844) (not (is-Some!739 lt!21844)))))

(assert (=> d!61930 d!62088))

(declare-fun d!62090 () Bool)

(declare-fun lt!21899 () Int)

(assert (=> d!62090 (>= lt!21899 0)))

(declare-fun e!52017 () Int)

(assert (=> d!62090 (= lt!21899 e!52017)))

(declare-fun c!23450 () Bool)

(assert (=> d!62090 (= c!23450 (is-Nil!840 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))))))

(assert (=> d!62090 (= (size!1005 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) lt!21899)))

(declare-fun b!95429 () Bool)

(assert (=> b!95429 (= e!52017 0)))

(declare-fun b!95430 () Bool)

(assert (=> b!95430 (= e!52017 (+ 1 (size!1005 (t!56070 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))))))))

(assert (= (and d!62090 c!23450) b!95429))

(assert (= (and d!62090 (not c!23450)) b!95430))

(declare-fun m!90799 () Bool)

(assert (=> b!95430 m!90799))

(assert (=> b!95332 d!62090))

(declare-fun d!62092 () Bool)

(declare-fun lt!21900 () Int)

(assert (=> d!62092 (>= lt!21900 0)))

(declare-fun e!52018 () Int)

(assert (=> d!62092 (= lt!21900 e!52018)))

(declare-fun c!23451 () Bool)

(assert (=> d!62092 (= c!23451 (is-Nil!837 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))))))

(assert (=> d!62092 (= (size!1001 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))) lt!21900)))

(declare-fun b!95431 () Bool)

(assert (=> b!95431 (= e!52018 0)))

(declare-fun b!95432 () Bool)

(assert (=> b!95432 (= e!52018 (+ 1 (size!1001 (t!56043 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))))))))

(assert (= (and d!62092 c!23451) b!95431))

(assert (= (and d!62092 (not c!23451)) b!95432))

(declare-fun m!90801 () Bool)

(assert (=> b!95432 m!90801))

(assert (=> b!95259 d!62092))

(declare-fun b!95433 () Bool)

(declare-fun e!52019 () Bool)

(declare-fun lt!21901 () Option!769)

(assert (=> b!95433 (= e!52019 (dynLambda!1156 lambda!11303 (v!3224 lt!21901)))))

(declare-fun b!95434 () Bool)

(declare-fun e!52022 () Option!769)

(assert (=> b!95434 (= e!52022 (find!8 (t!56042 (t!56042 transfers!5)) lambda!11303))))

(declare-fun d!62094 () Bool)

(declare-fun e!52021 () Bool)

(assert (=> d!62094 e!52021))

(declare-fun res!49598 () Bool)

(assert (=> d!62094 (=> res!49598 e!52021)))

(assert (=> d!62094 (= res!49598 (not (is-Some!740 lt!21901)))))

(declare-fun e!52020 () Option!769)

(assert (=> d!62094 (= lt!21901 e!52020)))

(declare-fun c!23453 () Bool)

(assert (=> d!62094 (= c!23453 (is-Nil!836 (t!56042 transfers!5)))))

(assert (=> d!62094 (= (find!8 (t!56042 transfers!5) lambda!11303) lt!21901)))

(declare-fun b!95435 () Bool)

(assert (=> b!95435 (= e!52020 e!52022)))

(declare-fun c!23452 () Bool)

(assert (=> b!95435 (= c!23452 (dynLambda!1156 lambda!11303 (h!7729 (t!56042 transfers!5))))))

(declare-fun b!95436 () Bool)

(assert (=> b!95436 (= e!52021 e!52019)))

(declare-fun res!49599 () Bool)

(assert (=> b!95436 (=> (not res!49599) (not e!52019))))

(assert (=> b!95436 (= res!49599 (member (v!3224 lt!21901) (content!207 (t!56042 transfers!5))))))

(declare-fun b!95437 () Bool)

(assert (=> b!95437 (= e!52020 None!741)))

(declare-fun b!95438 () Bool)

(assert (=> b!95438 (= e!52022 (Some!740 (h!7729 (t!56042 transfers!5))))))

(assert (= (and b!95435 c!23452) b!95438))

(assert (= (and b!95435 (not c!23452)) b!95434))

(assert (= (and d!62094 c!23453) b!95437))

(assert (= (and d!62094 (not c!23453)) b!95435))

(assert (= (and d!62094 (not res!49598)) b!95436))

(assert (= (and b!95436 res!49599) b!95433))

(declare-fun b_lambda!19213 () Bool)

(assert (=> (not b_lambda!19213) (not b!95433)))

(declare-fun b_lambda!19215 () Bool)

(assert (=> (not b_lambda!19215) (not b!95435)))

(declare-fun m!90803 () Bool)

(assert (=> b!95433 m!90803))

(declare-fun m!90805 () Bool)

(assert (=> b!95434 m!90805))

(declare-fun m!90807 () Bool)

(assert (=> b!95435 m!90807))

(assert (=> b!95436 m!90483))

(declare-fun m!90809 () Bool)

(assert (=> b!95436 m!90809))

(assert (=> b!95314 d!62094))

(assert (=> b!95333 d!62022))

(declare-fun d!62096 () Bool)

(declare-fun lt!21902 () Int)

(assert (=> d!62096 (>= lt!21902 0)))

(declare-fun e!52023 () Int)

(assert (=> d!62096 (= lt!21902 e!52023)))

(declare-fun c!23454 () Bool)

(assert (=> d!62096 (= c!23454 (is-Nil!838 (t!56044 lt!21834)))))

(assert (=> d!62096 (= (size!1003 (t!56044 lt!21834)) lt!21902)))

(declare-fun b!95439 () Bool)

(assert (=> b!95439 (= e!52023 0)))

(declare-fun b!95440 () Bool)

(assert (=> b!95440 (= e!52023 (+ 1 (size!1003 (t!56044 (t!56044 lt!21834)))))))

(assert (= (and d!62096 c!23454) b!95439))

(assert (= (and d!62096 (not c!23454)) b!95440))

(declare-fun m!90811 () Bool)

(assert (=> b!95440 m!90811))

(assert (=> b!95320 d!62096))

(declare-fun d!62098 () Bool)

(declare-fun c!23455 () Bool)

(assert (=> d!62098 (= c!23455 (is-Nil!839 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))))

(declare-fun e!52024 () Bool)

(assert (=> d!62098 (= (foldLeft!12 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) lambda!11285) e!52024)))

(declare-fun b!95441 () Bool)

(assert (=> b!95441 (= e!52024 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))))

(declare-fun b!95442 () Bool)

(assert (=> b!95442 (= e!52024 (foldLeft!12 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) lambda!11285))))

(assert (= (and d!62098 c!23455) b!95441))

(assert (= (and d!62098 (not c!23455)) b!95442))

(declare-fun b_lambda!19217 () Bool)

(assert (=> (not b_lambda!19217) (not b!95442)))

(assert (=> b!95442 m!90569))

(declare-fun m!90813 () Bool)

(assert (=> b!95442 m!90813))

(assert (=> b!95442 m!90813))

(declare-fun m!90815 () Bool)

(assert (=> b!95442 m!90815))

(assert (=> b!95306 d!62098))

(assert (=> b!95255 d!62068))

(declare-fun d!62100 () Bool)

(assert (=> d!62100 (= ($colon$colon!32 (map!732 (t!56070 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) lambda!11296) (dynLambda!1160 lambda!11296 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))))) (Cons!837 (dynLambda!1160 lambda!11296 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) (map!732 (t!56070 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) lambda!11296)))))

(assert (=> b!95294 d!62100))

(declare-fun d!62102 () Bool)

(assert (not d!62102))

(assert (=> b!95294 d!62102))

(assert (=> b!95322 d!62018))

(declare-fun bs!43458 () Bool)

(declare-fun d!62104 () Bool)

(assert (= bs!43458 (and d!62104 d!61956 b!95125)))

(declare-fun lambda!11314 () Int)

(assert (=> bs!43458 (not (= lambda!11314 lambda!11312))))

(declare-fun bs!43459 () Bool)

(assert (= bs!43459 (and d!62104 d!61972 b!95121)))

(assert (=> bs!43459 (not (= lambda!11314 lambda!11313))))

(declare-fun bs!43460 () Bool)

(assert (= bs!43460 (and d!62104 d!61928)))

(assert (=> bs!43460 (not (= lambda!11314 lambda!11311))))

(declare-fun bs!43461 () Bool)

(assert (= bs!43461 (and d!62104 d!61880)))

(assert (=> bs!43461 (not (= lambda!11314 lambda!11307))))

(declare-fun bs!43462 () Bool)

(assert (= bs!43462 (and d!62104 d!61846 b!95125)))

(assert (=> bs!43462 (not (= lambda!11314 lambda!11304))))

(declare-fun bs!43463 () Bool)

(assert (= bs!43463 (and d!62104 b!95121)))

(assert (=> bs!43463 (not (= lambda!11314 lambda!11273))))

(declare-fun bs!43464 () Bool)

(assert (= bs!43464 (and d!62104 d!61904)))

(assert (=> bs!43464 (= (= lambda!11312 lambda!11304) (= lambda!11314 lambda!11308))))

(declare-fun bs!43465 () Bool)

(assert (= bs!43465 (and d!62104 d!61814)))

(assert (=> bs!43465 (= (= lambda!11312 lambda!11298) (= lambda!11314 lambda!11302))))

(declare-fun bs!43466 () Bool)

(assert (= bs!43466 (and d!62104 d!61844 b!95121)))

(assert (=> bs!43466 (not (= lambda!11314 lambda!11303))))

(declare-fun bs!43467 () Bool)

(assert (= bs!43467 (and d!62104 d!61796 b!95121)))

(assert (=> bs!43467 (not (= lambda!11314 lambda!11299))))

(declare-fun bs!43468 () Bool)

(assert (= bs!43468 (and d!62104 d!61788 b!95125)))

(assert (=> bs!43468 (not (= lambda!11314 lambda!11298))))

(assert (=> d!62104 true))

(assert (=> d!62104 (< (dynLambda!1161 order!527 lambda!11312) (dynLambda!1161 order!527 lambda!11314))))

(assert (=> d!62104 (= (exists!12 transfers!5 lambda!11312) (not (forall!87 transfers!5 lambda!11314)))))

(declare-fun bs!43469 () Bool)

(assert (= bs!43469 d!62104))

(declare-fun m!90817 () Bool)

(assert (=> bs!43469 m!90817))

(assert (=> bs!43417 d!62104))

(declare-fun d!62106 () Bool)

(declare-fun lt!21903 () Int)

(assert (=> d!62106 (>= lt!21903 0)))

(declare-fun e!52025 () Int)

(assert (=> d!62106 (= lt!21903 e!52025)))

(declare-fun c!23456 () Bool)

(assert (=> d!62106 (= c!23456 (is-Nil!839 lt!21858))))

(assert (=> d!62106 (= (size!1004 lt!21858) lt!21903)))

(declare-fun b!95443 () Bool)

(assert (=> b!95443 (= e!52025 0)))

(declare-fun b!95444 () Bool)

(assert (=> b!95444 (= e!52025 (+ 1 (size!1004 (t!56069 lt!21858))))))

(assert (= (and d!62106 c!23456) b!95443))

(assert (= (and d!62106 (not c!23456)) b!95444))

(declare-fun m!90819 () Bool)

(assert (=> b!95444 m!90819))

(assert (=> d!61908 d!62106))

(assert (=> d!61908 d!62090))

(declare-fun d!62108 () Bool)

(declare-fun res!49600 () Bool)

(declare-fun e!52026 () Bool)

(assert (=> d!62108 (=> res!49600 e!52026)))

(assert (=> d!62108 (= res!49600 (is-Nil!837 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))))))

(assert (=> d!62108 (= (forall!86 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))) lambda!11272) e!52026)))

(declare-fun b!95445 () Bool)

(declare-fun e!52027 () Bool)

(assert (=> b!95445 (= e!52026 e!52027)))

(declare-fun res!49601 () Bool)

(assert (=> b!95445 (=> (not res!49601) (not e!52027))))

(assert (=> b!95445 (= res!49601 (dynLambda!1154 lambda!11272 (h!7730 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))))))))

(declare-fun b!95446 () Bool)

(assert (=> b!95446 (= e!52027 (forall!86 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))) lambda!11272))))

(assert (= (and d!62108 (not res!49600)) b!95445))

(assert (= (and b!95445 res!49601) b!95446))

(declare-fun b_lambda!19219 () Bool)

(assert (=> (not b_lambda!19219) (not b!95445)))

(declare-fun m!90821 () Bool)

(assert (=> b!95445 m!90821))

(declare-fun m!90823 () Bool)

(assert (=> b!95446 m!90823))

(assert (=> b!95324 d!62108))

(declare-fun d!62110 () Bool)

(declare-fun lt!21904 () Int)

(assert (=> d!62110 (>= lt!21904 0)))

(declare-fun e!52028 () Int)

(assert (=> d!62110 (= lt!21904 e!52028)))

(declare-fun c!23457 () Bool)

(assert (=> d!62110 (= c!23457 (is-Nil!837 (t!56043 lt!21837)))))

(assert (=> d!62110 (= (size!1001 (t!56043 lt!21837)) lt!21904)))

(declare-fun b!95447 () Bool)

(assert (=> b!95447 (= e!52028 0)))

(declare-fun b!95448 () Bool)

(assert (=> b!95448 (= e!52028 (+ 1 (size!1001 (t!56043 (t!56043 lt!21837)))))))

(assert (= (and d!62110 c!23457) b!95447))

(assert (= (and d!62110 (not c!23457)) b!95448))

(declare-fun m!90825 () Bool)

(assert (=> b!95448 m!90825))

(assert (=> b!95326 d!62110))

(declare-fun d!62112 () Bool)

(declare-fun c!23458 () Bool)

(assert (=> d!62112 (= c!23458 (is-Nil!838 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))))

(declare-fun e!52029 () Int)

(assert (=> d!62112 (= (foldLeft!11 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)) (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) lambda!11295) e!52029)))

(declare-fun b!95449 () Bool)

(assert (=> b!95449 (= e!52029 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))))

(declare-fun b!95450 () Bool)

(assert (=> b!95450 (= e!52029 (foldLeft!11 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) lambda!11295))))

(assert (= (and d!62112 c!23458) b!95449))

(assert (= (and d!62112 (not c!23458)) b!95450))

(declare-fun b_lambda!19221 () Bool)

(assert (=> (not b_lambda!19221) (not b!95450)))

(assert (=> b!95450 m!90573))

(declare-fun m!90827 () Bool)

(assert (=> b!95450 m!90827))

(assert (=> b!95450 m!90827))

(declare-fun m!90829 () Bool)

(assert (=> b!95450 m!90829))

(assert (=> b!95308 d!62112))

(declare-fun d!62114 () Bool)

(declare-fun lt!21905 () Int)

(assert (=> d!62114 (>= lt!21905 0)))

(declare-fun e!52030 () Int)

(assert (=> d!62114 (= lt!21905 e!52030)))

(declare-fun c!23459 () Bool)

(assert (=> d!62114 (= c!23459 (is-Nil!839 (t!56069 lt!21830)))))

(assert (=> d!62114 (= (size!1004 (t!56069 lt!21830)) lt!21905)))

(declare-fun b!95451 () Bool)

(assert (=> b!95451 (= e!52030 0)))

(declare-fun b!95452 () Bool)

(assert (=> b!95452 (= e!52030 (+ 1 (size!1004 (t!56069 (t!56069 lt!21830)))))))

(assert (= (and d!62114 c!23459) b!95451))

(assert (= (and d!62114 (not c!23459)) b!95452))

(declare-fun m!90831 () Bool)

(assert (=> b!95452 m!90831))

(assert (=> b!95286 d!62114))

(declare-fun d!62116 () Bool)

(assert (=> d!62116 (= ($colon$colon!30 (map!730 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11271) (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 transfers!5))))) (Cons!835 (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 transfers!5)))) (map!730 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11271)))))

(assert (=> b!95296 d!62116))

(declare-fun d!62118 () Bool)

(declare-fun lt!21906 () List!897)

(assert (=> d!62118 (= (size!1001 lt!21906) (size!1002 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(declare-fun e!52031 () List!897)

(assert (=> d!62118 (= lt!21906 e!52031)))

(declare-fun c!23460 () Bool)

(assert (=> d!62118 (= c!23460 (is-Nil!836 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(assert (=> d!62118 (= (map!730 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11271) lt!21906)))

(declare-fun b!95453 () Bool)

(assert (=> b!95453 (= e!52031 Nil!837)))

(declare-fun b!95454 () Bool)

(assert (=> b!95454 (= e!52031 ($colon$colon!30 (map!730 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11271) (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(assert (= (and d!62118 c!23460) b!95453))

(assert (= (and d!62118 (not c!23460)) b!95454))

(declare-fun b_lambda!19223 () Bool)

(assert (=> (not b_lambda!19223) (not b!95454)))

(declare-fun m!90833 () Bool)

(assert (=> d!62118 m!90833))

(assert (=> d!62118 m!90693))

(declare-fun m!90835 () Bool)

(assert (=> b!95454 m!90835))

(declare-fun m!90837 () Bool)

(assert (=> b!95454 m!90837))

(assert (=> b!95454 m!90835))

(assert (=> b!95454 m!90837))

(declare-fun m!90839 () Bool)

(assert (=> b!95454 m!90839))

(assert (=> b!95296 d!62118))

(assert (=> b!95292 d!62066))

(declare-fun d!62120 () Bool)

(declare-fun c!23461 () Bool)

(assert (=> d!62120 (= c!23461 (is-Nil!838 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))))

(declare-fun e!52032 () Int)

(assert (=> d!62120 (= (foldLeft!11 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)) (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) lambda!11284) e!52032)))

(declare-fun b!95455 () Bool)

(assert (=> b!95455 (= e!52032 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))))

(declare-fun b!95456 () Bool)

(assert (=> b!95456 (= e!52032 (foldLeft!11 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) lambda!11284))))

(assert (= (and d!62120 c!23461) b!95455))

(assert (= (and d!62120 (not c!23461)) b!95456))

(declare-fun b_lambda!19225 () Bool)

(assert (=> (not b_lambda!19225) (not b!95456)))

(assert (=> b!95456 m!90493))

(declare-fun m!90841 () Bool)

(assert (=> b!95456 m!90841))

(assert (=> b!95456 m!90841))

(declare-fun m!90843 () Bool)

(assert (=> b!95456 m!90843))

(assert (=> b!95264 d!62120))

(declare-fun b_lambda!19227 () Bool)

(assert (= b_lambda!19199 (or bs!43434 b_lambda!19227)))

(declare-fun bs!43470 () Bool)

(declare-fun d!62122 () Bool)

(assert (= bs!43470 (and d!62122 d!61972 b!95121)))

(assert (=> bs!43470 (= (dynLambda!1156 lambda!11313 (v!3224 lt!21885)) (= (_1!301 (v!3224 lt!21885)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))))))))

(assert (=> b!95388 d!62122))

(declare-fun b_lambda!19229 () Bool)

(assert (= b_lambda!19179 (or bs!43360 b_lambda!19229)))

(declare-fun bs!43471 () Bool)

(declare-fun d!62124 () Bool)

(assert (= bs!43471 (and d!62124 d!61796 b!95121)))

(assert (=> bs!43471 (= (dynLambda!1156 lambda!11299 (v!3224 lt!21873)) (= (_1!301 (v!3224 lt!21873)) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))))))

(assert (=> b!95343 d!62124))

(declare-fun b_lambda!19231 () Bool)

(assert (= b_lambda!19187 (or d!61904 b_lambda!19231)))

(declare-fun bs!43472 () Bool)

(declare-fun d!62126 () Bool)

(assert (= bs!43472 (and d!62126 d!61904)))

(assert (=> bs!43472 (= (dynLambda!1156 lambda!11308 (h!7729 transfers!5)) (not (dynLambda!1156 lambda!11304 (h!7729 transfers!5))))))

(declare-fun b_lambda!19279 () Bool)

(assert (=> (not b_lambda!19279) (not bs!43472)))

(declare-fun m!90845 () Bool)

(assert (=> bs!43472 m!90845))

(assert (=> b!95357 d!62126))

(declare-fun b_lambda!19233 () Bool)

(assert (= b_lambda!19193 (or d!61785 b_lambda!19233)))

(declare-fun bs!43473 () Bool)

(declare-fun d!62128 () Bool)

(assert (= bs!43473 (and d!62128 d!61785)))

(assert (=> bs!43473 (= (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (and (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))))

(assert (=> b!95383 d!62128))

(declare-fun b_lambda!19235 () Bool)

(assert (= b_lambda!19215 (or bs!43369 b_lambda!19235)))

(declare-fun bs!43474 () Bool)

(declare-fun d!62130 () Bool)

(assert (= bs!43474 (and d!62130 d!61844 b!95121)))

(assert (=> bs!43474 (= (dynLambda!1156 lambda!11303 (h!7729 (t!56042 transfers!5))) (= (_1!301 (h!7729 (t!56042 transfers!5))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))))))

(assert (=> b!95435 d!62130))

(declare-fun b_lambda!19237 () Bool)

(assert (= b_lambda!19175 (or d!61782 b_lambda!19237)))

(declare-fun bs!43475 () Bool)

(declare-fun d!62132 () Bool)

(assert (= bs!43475 (and d!62132 d!61782)))

(assert (=> bs!43475 (= (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (+ 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))))))

(assert (=> b!95340 d!62132))

(declare-fun b_lambda!19239 () Bool)

(assert (= b_lambda!19225 (or d!61782 b_lambda!19239)))

(declare-fun bs!43476 () Bool)

(declare-fun d!62134 () Bool)

(assert (= bs!43476 (and d!62134 d!61782)))

(assert (=> bs!43476 (= (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (+ (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))))))

(assert (=> b!95456 d!62134))

(declare-fun b_lambda!19241 () Bool)

(assert (= b_lambda!19181 (or bs!43360 b_lambda!19241)))

(declare-fun bs!43477 () Bool)

(declare-fun d!62136 () Bool)

(assert (= bs!43477 (and d!62136 d!61796 b!95121)))

(assert (=> bs!43477 (= (dynLambda!1156 lambda!11299 (h!7729 (t!56042 (t!56042 transfers!5)))) (= (_1!301 (h!7729 (t!56042 (t!56042 transfers!5)))) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))))))

(assert (=> b!95345 d!62136))

(declare-fun b_lambda!19243 () Bool)

(assert (= b_lambda!19223 (or b!95120 b_lambda!19243)))

(declare-fun bs!43478 () Bool)

(declare-fun d!62138 () Bool)

(assert (= bs!43478 (and d!62138 b!95120)))

(assert (=> bs!43478 (= (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (=> b!95454 d!62138))

(declare-fun b_lambda!19245 () Bool)

(assert (= b_lambda!19195 (or start!15478 b_lambda!19245)))

(declare-fun bs!43479 () Bool)

(declare-fun d!62140 () Bool)

(assert (= bs!43479 (and d!62140 start!15478)))

(assert (=> bs!43479 (= (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (+ (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))))))

(assert (=> b!95385 d!62140))

(declare-fun b_lambda!19247 () Bool)

(assert (= b_lambda!19203 (or b!95121 b_lambda!19247)))

(declare-fun bs!43480 () Bool)

(declare-fun d!62142 () Bool)

(assert (= bs!43480 (and d!62142 b!95121)))

(declare-fun bs!43481 () Bool)

(assert (= bs!43481 (and d!62142 b!95121 d!61956 b!95125)))

(declare-fun lambda!11315 () Int)

(assert (=> bs!43481 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))) (h!7730 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))) (= lambda!11315 lambda!11312))))

(declare-fun bs!43482 () Bool)

(assert (= bs!43482 (and d!62142 b!95121 d!61972)))

(assert (=> bs!43482 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))))) (= lambda!11315 lambda!11313))))

(declare-fun bs!43483 () Bool)

(assert (= bs!43483 (and d!62142 b!95121 d!61928)))

(assert (=> bs!43483 (not (= lambda!11315 lambda!11311))))

(declare-fun bs!43484 () Bool)

(assert (= bs!43484 (and d!62142 b!95121 d!61880)))

(assert (=> bs!43484 (not (= lambda!11315 lambda!11307))))

(declare-fun bs!43485 () Bool)

(assert (= bs!43485 (and d!62142 b!95121 d!61846 b!95125)))

(assert (=> bs!43485 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))) (h!7730 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))) (= lambda!11315 lambda!11304))))

(declare-fun bs!43486 () Bool)

(assert (= bs!43486 (and d!62142 b!95121 d!62104)))

(assert (=> bs!43486 (not (= lambda!11315 lambda!11314))))

(assert (=> bs!43480 (not (= lambda!11315 lambda!11273))))

(declare-fun bs!43487 () Bool)

(assert (= bs!43487 (and d!62142 b!95121 d!61904)))

(assert (=> bs!43487 (not (= lambda!11315 lambda!11308))))

(declare-fun bs!43488 () Bool)

(assert (= bs!43488 (and d!62142 b!95121 d!61814)))

(assert (=> bs!43488 (not (= lambda!11315 lambda!11302))))

(declare-fun bs!43489 () Bool)

(assert (= bs!43489 (and d!62142 b!95121 d!61844)))

(assert (=> bs!43489 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))) (= lambda!11315 lambda!11303))))

(declare-fun bs!43490 () Bool)

(assert (= bs!43490 (and d!62142 b!95121 d!61796)))

(assert (=> bs!43490 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))) (= lambda!11315 lambda!11299))))

(declare-fun bs!43491 () Bool)

(assert (= bs!43491 (and d!62142 b!95121 d!61788 b!95125)))

(assert (=> bs!43491 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))) (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) (= lambda!11315 lambda!11298))))

(assert (=> bs!43480 true))

(declare-fun res!49602 () Bool)

(declare-fun e!52033 () Bool)

(assert (=> bs!43480 (=> (not res!49602) (not e!52033))))

(declare-fun lt!21907 () Option!768)

(assert (=> bs!43480 (= res!49602 (isDefined!27 lt!21907))))

(assert (=> bs!43480 (= lt!21907 (map!733 (find!8 transfers!5 lambda!11315) lambda!11268))))

(declare-fun lt!21908 () Int)

(assert (=> bs!43480 (= lt!21908 (_2!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (=> bs!43480 (= (dynLambda!1156 lambda!11273 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) e!52033)))

(declare-fun b!95460 () Bool)

(declare-fun e!52034 () Bool)

(assert (=> b!95460 (= e!52034 (> (get!1256 lt!21907) 0))))

(declare-fun b!95457 () Bool)

(declare-fun res!49605 () Bool)

(assert (=> b!95457 (=> (not res!49605) (not e!52033))))

(declare-fun e!52035 () Bool)

(assert (=> b!95457 (= res!49605 e!52035)))

(declare-fun res!49603 () Bool)

(assert (=> b!95457 (=> res!49603 e!52035)))

(assert (=> b!95457 (= res!49603 (= (get!1256 lt!21907) 0))))

(declare-fun b!95458 () Bool)

(assert (=> b!95458 (= e!52035 (= lt!21908 0))))

(declare-fun b!95459 () Bool)

(assert (=> b!95459 (= e!52033 e!52034)))

(declare-fun res!49604 () Bool)

(assert (=> b!95459 (=> res!49604 e!52034)))

(assert (=> b!95459 (= res!49604 (> lt!21908 0))))

(assert (= (and bs!43480 res!49602) b!95457))

(assert (= (and b!95457 (not res!49603)) b!95458))

(assert (= (and b!95457 res!49605) b!95459))

(assert (= (and b!95459 (not res!49604)) b!95460))

(declare-fun m!90847 () Bool)

(assert (=> bs!43480 m!90847))

(declare-fun m!90849 () Bool)

(assert (=> bs!43480 m!90849))

(assert (=> bs!43480 m!90849))

(declare-fun m!90851 () Bool)

(assert (=> bs!43480 m!90851))

(declare-fun m!90853 () Bool)

(assert (=> b!95460 m!90853))

(assert (=> b!95457 m!90853))

(assert (=> b!95394 d!62142))

(declare-fun b_lambda!19249 () Bool)

(assert (= b_lambda!19205 (or d!61814 b_lambda!19249)))

(declare-fun bs!43492 () Bool)

(declare-fun d!62144 () Bool)

(assert (= bs!43492 (and d!62144 d!61814)))

(assert (=> bs!43492 (= (dynLambda!1156 lambda!11302 (h!7729 (t!56042 transfers!5))) (not (dynLambda!1156 lambda!11298 (h!7729 (t!56042 transfers!5)))))))

(declare-fun b_lambda!19281 () Bool)

(assert (=> (not b_lambda!19281) (not bs!43492)))

(declare-fun m!90855 () Bool)

(assert (=> bs!43492 m!90855))

(assert (=> b!95396 d!62144))

(declare-fun b_lambda!19251 () Bool)

(assert (= b_lambda!19183 (or d!61785 b_lambda!19251)))

(declare-fun bs!43493 () Bool)

(declare-fun d!62146 () Bool)

(assert (= bs!43493 (and d!62146 d!61785)))

(assert (=> bs!43493 (= (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (+ 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))))))

(assert (=> b!95350 d!62146))

(declare-fun b_lambda!19253 () Bool)

(assert (= b_lambda!19189 (or d!61928 b_lambda!19253)))

(declare-fun bs!43494 () Bool)

(declare-fun d!62148 () Bool)

(assert (= bs!43494 (and d!62148 d!61928)))

(assert (=> bs!43494 (= (dynLambda!1156 lambda!11311 (h!7729 transfers!5)) (= (_2!300 (_1!301 (h!7729 transfers!5))) (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))))

(assert (=> b!95379 d!62148))

(declare-fun b_lambda!19255 () Bool)

(assert (= b_lambda!19197 (or start!15478 b_lambda!19255)))

(declare-fun bs!43495 () Bool)

(declare-fun d!62150 () Bool)

(assert (= bs!43495 (and d!62150 start!15478)))

(assert (=> bs!43495 (= (dynLambda!1158 lambda!11268 (v!3224 (find!8 transfers!5 lambda!11313))) (_2!301 (v!3224 (find!8 transfers!5 lambda!11313))))))

(assert (=> b!95387 d!62150))

(declare-fun b_lambda!19257 () Bool)

(assert (= b_lambda!19213 (or bs!43369 b_lambda!19257)))

(declare-fun bs!43496 () Bool)

(declare-fun d!62152 () Bool)

(assert (= bs!43496 (and d!62152 d!61844 b!95121)))

(assert (=> bs!43496 (= (dynLambda!1156 lambda!11303 (v!3224 lt!21901)) (= (_1!301 (v!3224 lt!21901)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))))))

(assert (=> b!95433 d!62152))

(declare-fun b_lambda!19259 () Bool)

(assert (= b_lambda!19221 (or d!61785 b_lambda!19259)))

(declare-fun bs!43497 () Bool)

(declare-fun d!62154 () Bool)

(assert (= bs!43497 (and d!62154 d!61785)))

(assert (=> bs!43497 (= (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (+ (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))))))

(assert (=> b!95450 d!62154))

(declare-fun b_lambda!19261 () Bool)

(assert (= b_lambda!19201 (or bs!43434 b_lambda!19261)))

(declare-fun bs!43498 () Bool)

(declare-fun d!62156 () Bool)

(assert (= bs!43498 (and d!62156 d!61972 b!95121)))

(assert (=> bs!43498 (= (dynLambda!1156 lambda!11313 (h!7729 transfers!5)) (= (_1!301 (h!7729 transfers!5)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))))))))

(assert (=> b!95390 d!62156))

(declare-fun b_lambda!19263 () Bool)

(assert (= b_lambda!19209 (or start!15478 b_lambda!19263)))

(declare-fun bs!43499 () Bool)

(declare-fun d!62158 () Bool)

(assert (= bs!43499 (and d!62158 start!15478)))

(assert (=> bs!43499 (= (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (_2!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (=> b!95406 d!62158))

(declare-fun b_lambda!19265 () Bool)

(assert (= b_lambda!19177 (or d!61782 b_lambda!19265)))

(declare-fun bs!43500 () Bool)

(declare-fun d!62160 () Bool)

(assert (= bs!43500 (and d!62160 d!61782)))

(assert (=> bs!43500 (= (dynLambda!1158 lambda!11283 (h!7729 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))) (_2!301 (h!7729 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))))))

(assert (=> b!95342 d!62160))

(declare-fun b_lambda!19267 () Bool)

(assert (= b_lambda!19185 (or d!61785 b_lambda!19267)))

(declare-fun bs!43501 () Bool)

(declare-fun d!62162 () Bool)

(assert (= bs!43501 (and d!62162 d!61785)))

(assert (=> bs!43501 (= (dynLambda!1158 lambda!11294 (h!7729 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))) (_2!301 (h!7729 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))))))

(assert (=> b!95352 d!62162))

(declare-fun b_lambda!19269 () Bool)

(assert (= b_lambda!19207 (or d!61880 b_lambda!19269)))

(declare-fun bs!43502 () Bool)

(declare-fun d!62164 () Bool)

(assert (= bs!43502 (and d!62164 d!61880)))

(assert (=> bs!43502 (= (dynLambda!1156 lambda!11307 (h!7729 transfers!5)) (= (_1!300 (_1!301 (h!7729 transfers!5))) (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))))

(assert (=> b!95404 d!62164))

(declare-fun b_lambda!19271 () Bool)

(assert (= b_lambda!19217 (or d!61782 b_lambda!19271)))

(declare-fun bs!43503 () Bool)

(declare-fun d!62166 () Bool)

(assert (= bs!43503 (and d!62166 d!61782)))

(assert (=> bs!43503 (= (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (and (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))))

(assert (=> b!95442 d!62166))

(declare-fun b_lambda!19273 () Bool)

(assert (= b_lambda!19211 (or d!61782 b_lambda!19273)))

(declare-fun bs!43504 () Bool)

(declare-fun d!62168 () Bool)

(assert (= bs!43504 (and d!62168 d!61782)))

(assert (=> bs!43504 (= (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))) (_2!301 (h!7729 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))))

(assert (=> b!95422 d!62168))

(declare-fun b_lambda!19275 () Bool)

(assert (= b_lambda!19219 (or b!95120 b_lambda!19275)))

(declare-fun bs!43505 () Bool)

(declare-fun d!62170 () Bool)

(assert (= bs!43505 (and d!62170 b!95120)))

(assert (=> bs!43505 (= (dynLambda!1154 lambda!11272 (h!7730 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))))) (not (= (_1!300 (h!7730 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))))) (_2!300 (h!7730 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))))))))))

(assert (=> b!95445 d!62170))

(declare-fun b_lambda!19277 () Bool)

(assert (= b_lambda!19191 (or d!61785 b_lambda!19277)))

(declare-fun bs!43506 () Bool)

(declare-fun d!62172 () Bool)

(assert (= bs!43506 (and d!62172 d!61785)))

(assert (=> bs!43506 (= (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))) (_2!301 (h!7729 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))))

(assert (=> b!95381 d!62172))

(push 1)

(assert (not b_lambda!19271))

(assert (not d!62056))

(assert (not b!95426))

(assert (not b_lambda!19237))

(assert (not b!95446))

(assert (not b!95418))

(assert (not b!95400))

(assert (not d!62002))

(assert (not b_lambda!19083))

(assert (not b_lambda!19279))

(assert (not b!95397))

(assert (not b_lambda!19087))

(assert (not b_lambda!19151))

(assert (not b!95452))

(assert (not b_lambda!19227))

(assert (not b!95460))

(assert (not b_lambda!19255))

(assert (not b_lambda!19035))

(assert (not b!95428))

(assert (not b_lambda!19147))

(assert (not b_lambda!19267))

(assert (not bs!43480))

(assert (not d!62104))

(assert (not b_lambda!19167))

(assert (not b_lambda!19067))

(assert (not b!95352))

(assert (not b!95420))

(assert (not b_lambda!19251))

(assert (not d!62042))

(assert (not b_lambda!19243))

(assert (not b_lambda!19137))

(assert (not b!95414))

(assert (not b_lambda!19149))

(assert (not b!95377))

(assert (not b_lambda!19275))

(assert (not b_lambda!19031))

(assert (not b_lambda!19157))

(assert (not b_lambda!19139))

(assert (not b_lambda!19239))

(assert (not b_lambda!19233))

(assert (not b_lambda!19263))

(assert (not b!95398))

(assert (not b_lambda!19071))

(assert (not b_lambda!19277))

(assert (not d!62044))

(assert (not b!95432))

(assert (not d!62038))

(assert (not b_lambda!19259))

(assert (not b_lambda!19253))

(assert (not d!62052))

(assert (not d!62118))

(assert (not b_lambda!19077))

(assert (not d!62076))

(assert (not b!95456))

(assert (not b!95406))

(assert (not b_lambda!19081))

(assert (not b!95354))

(assert (not b!95373))

(assert (not b_lambda!19273))

(assert (not b!95346))

(assert (not b_lambda!19075))

(assert (not b!95416))

(assert (not b_lambda!19029))

(assert (not b!95340))

(assert (not b_lambda!19247))

(assert (not b!95391))

(assert (not b_lambda!19165))

(assert (not b!95389))

(assert (not b_lambda!19033))

(assert (not b_lambda!19155))

(assert (not b!95385))

(assert (not b!95410))

(assert (not b_lambda!19257))

(assert (not b!95350))

(assert (not b!95412))

(assert (not b_lambda!19241))

(assert (not b_lambda!19135))

(assert (not b_lambda!19069))

(assert (not b_lambda!19163))

(assert (not b_lambda!19065))

(assert (not b!95448))

(assert (not d!62012))

(assert (not b_lambda!19161))

(assert (not b_lambda!19261))

(assert (not b!95408))

(assert (not b_lambda!19169))

(assert (not b_lambda!19027))

(assert (not b!95375))

(assert (not b!95457))

(assert (not b!95434))

(assert (not b!95430))

(assert (not b!95454))

(assert (not b_lambda!19153))

(assert (not b_lambda!19159))

(assert (not b!95444))

(assert (not d!62024))

(assert (not b!95436))

(assert (not b_lambda!19145))

(assert (not b!95358))

(assert (not b_lambda!19173))

(assert (not b!95344))

(assert (not b_lambda!19089))

(assert (not d!62036))

(assert (not b_lambda!19281))

(assert (not b_lambda!19269))

(assert (not b_lambda!19245))

(assert (not b!95424))

(assert (not b!95442))

(assert (not b!95450))

(assert (not b!95395))

(assert (not b_lambda!19235))

(assert (not b!95440))

(assert (not b_lambda!19143))

(assert (not b_lambda!19037))

(assert (not d!62028))

(assert (not b!95383))

(assert (not b!95381))

(assert (not b!95338))

(assert (not b_lambda!19085))

(assert (not b_lambda!19079))

(assert (not b_lambda!19131))

(assert (not b_lambda!19231))

(assert (not b!95356))

(assert (not b!95402))

(assert (not b!95342))

(assert (not b_lambda!19265))

(assert (not b_lambda!19073))

(assert (not b_lambda!19133))

(assert (not b_lambda!19229))

(assert (not b!95422))

(assert (not b_lambda!19141))

(assert (not b_lambda!19249))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19283 () Bool)

(assert (= b_lambda!19281 (or bs!43355 b_lambda!19283)))

(declare-fun bs!43507 () Bool)

(declare-fun d!62174 () Bool)

(assert (= bs!43507 (and d!62174 d!61788 b!95125)))

(assert (=> bs!43507 (= (dynLambda!1156 lambda!11298 (h!7729 (t!56042 transfers!5))) (= (_1!301 (h!7729 (t!56042 transfers!5))) (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))))

(assert (=> bs!43492 d!62174))

(declare-fun b_lambda!19285 () Bool)

(assert (= b_lambda!19279 (or bs!43373 b_lambda!19285)))

(declare-fun bs!43508 () Bool)

(declare-fun d!62176 () Bool)

(assert (= bs!43508 (and d!62176 d!61846 b!95125)))

(assert (=> bs!43508 (= (dynLambda!1156 lambda!11304 (h!7729 transfers!5)) (= (_1!301 (h!7729 transfers!5)) (h!7730 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))))))

(assert (=> bs!43472 d!62176))

(push 1)

(assert (not b_lambda!19271))

(assert (not d!62056))

(assert (not b!95426))

(assert (not b_lambda!19237))

(assert (not b!95446))

(assert (not b!95418))

(assert (not b!95400))

(assert (not d!62002))

(assert (not b_lambda!19083))

(assert (not b!95397))

(assert (not b_lambda!19087))

(assert (not b_lambda!19151))

(assert (not b!95452))

(assert (not b_lambda!19227))

(assert (not b!95460))

(assert (not b_lambda!19255))

(assert (not b_lambda!19035))

(assert (not b!95428))

(assert (not b_lambda!19147))

(assert (not b_lambda!19267))

(assert (not bs!43480))

(assert (not d!62104))

(assert (not b_lambda!19167))

(assert (not b_lambda!19067))

(assert (not b!95352))

(assert (not b!95420))

(assert (not b_lambda!19251))

(assert (not d!62042))

(assert (not b_lambda!19243))

(assert (not b_lambda!19137))

(assert (not b!95414))

(assert (not b_lambda!19149))

(assert (not b!95377))

(assert (not b_lambda!19275))

(assert (not b_lambda!19031))

(assert (not b_lambda!19157))

(assert (not b_lambda!19139))

(assert (not b_lambda!19239))

(assert (not b_lambda!19233))

(assert (not b_lambda!19263))

(assert (not b!95398))

(assert (not b_lambda!19071))

(assert (not b_lambda!19277))

(assert (not d!62044))

(assert (not b!95432))

(assert (not d!62038))

(assert (not b_lambda!19259))

(assert (not b_lambda!19253))

(assert (not d!62052))

(assert (not d!62118))

(assert (not b_lambda!19077))

(assert (not d!62076))

(assert (not b!95456))

(assert (not b!95406))

(assert (not b_lambda!19283))

(assert (not b_lambda!19081))

(assert (not b!95354))

(assert (not b!95373))

(assert (not b_lambda!19273))

(assert (not b!95346))

(assert (not b_lambda!19075))

(assert (not b!95416))

(assert (not b_lambda!19029))

(assert (not b!95340))

(assert (not b_lambda!19247))

(assert (not b!95391))

(assert (not b_lambda!19165))

(assert (not b!95389))

(assert (not b_lambda!19033))

(assert (not b_lambda!19155))

(assert (not b!95385))

(assert (not b!95410))

(assert (not b_lambda!19257))

(assert (not b!95350))

(assert (not b!95412))

(assert (not b_lambda!19241))

(assert (not b_lambda!19135))

(assert (not b_lambda!19069))

(assert (not b_lambda!19163))

(assert (not b_lambda!19065))

(assert (not b!95448))

(assert (not d!62012))

(assert (not b_lambda!19161))

(assert (not b_lambda!19261))

(assert (not b!95408))

(assert (not b_lambda!19169))

(assert (not b_lambda!19027))

(assert (not b!95375))

(assert (not b!95457))

(assert (not b!95434))

(assert (not b!95430))

(assert (not b!95454))

(assert (not b_lambda!19153))

(assert (not b_lambda!19159))

(assert (not b!95444))

(assert (not b_lambda!19285))

(assert (not d!62024))

(assert (not b!95436))

(assert (not b_lambda!19145))

(assert (not b!95358))

(assert (not b_lambda!19173))

(assert (not b!95344))

(assert (not b_lambda!19089))

(assert (not d!62036))

(assert (not b_lambda!19269))

(assert (not b_lambda!19245))

(assert (not b!95424))

(assert (not b!95442))

(assert (not b!95450))

(assert (not b!95395))

(assert (not b_lambda!19235))

(assert (not b!95440))

(assert (not b_lambda!19143))

(assert (not b_lambda!19037))

(assert (not d!62028))

(assert (not b!95383))

(assert (not b!95381))

(assert (not b!95338))

(assert (not b_lambda!19085))

(assert (not b_lambda!19079))

(assert (not b_lambda!19131))

(assert (not b_lambda!19231))

(assert (not b!95356))

(assert (not b!95402))

(assert (not b!95342))

(assert (not b_lambda!19265))

(assert (not b_lambda!19073))

(assert (not b_lambda!19133))

(assert (not b_lambda!19229))

(assert (not b!95422))

(assert (not b_lambda!19141))

(assert (not b_lambda!19249))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!62178 () Bool)

(assert (=> d!62178 (= ($colon$colon!30 (map!730 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11271) (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (Cons!835 (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (map!730 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11271)))))

(assert (=> b!95454 d!62178))

(declare-fun d!62180 () Bool)

(declare-fun lt!21909 () List!897)

(assert (=> d!62180 (= (size!1001 lt!21909) (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(declare-fun e!52036 () List!897)

(assert (=> d!62180 (= lt!21909 e!52036)))

(declare-fun c!23462 () Bool)

(assert (=> d!62180 (= c!23462 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (=> d!62180 (= (map!730 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11271) lt!21909)))

(declare-fun b!95461 () Bool)

(assert (=> b!95461 (= e!52036 Nil!837)))

(declare-fun b!95462 () Bool)

(assert (=> b!95462 (= e!52036 ($colon$colon!30 (map!730 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lambda!11271) (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(assert (= (and d!62180 c!23462) b!95461))

(assert (= (and d!62180 (not c!23462)) b!95462))

(declare-fun b_lambda!19287 () Bool)

(assert (=> (not b_lambda!19287) (not b!95462)))

(declare-fun m!90857 () Bool)

(assert (=> d!62180 m!90857))

(declare-fun m!90859 () Bool)

(assert (=> d!62180 m!90859))

(declare-fun m!90861 () Bool)

(assert (=> b!95462 m!90861))

(declare-fun m!90863 () Bool)

(assert (=> b!95462 m!90863))

(assert (=> b!95462 m!90861))

(assert (=> b!95462 m!90863))

(declare-fun m!90865 () Bool)

(assert (=> b!95462 m!90865))

(assert (=> b!95454 d!62180))

(declare-fun d!62182 () Bool)

(declare-fun c!23463 () Bool)

(assert (=> d!62182 (= c!23463 (is-Nil!838 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))))))

(declare-fun e!52037 () Int)

(assert (=> d!62182 (= (foldLeft!11 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)) (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) lambda!11295) e!52037)))

(declare-fun b!95463 () Bool)

(assert (=> b!95463 (= e!52037 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))))))

(declare-fun b!95464 () Bool)

(assert (=> b!95464 (= e!52037 (foldLeft!11 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))) lambda!11295))))

(assert (= (and d!62182 c!23463) b!95463))

(assert (= (and d!62182 (not c!23463)) b!95464))

(declare-fun b_lambda!19289 () Bool)

(assert (=> (not b_lambda!19289) (not b!95464)))

(assert (=> b!95464 m!90677))

(declare-fun m!90867 () Bool)

(assert (=> b!95464 m!90867))

(assert (=> b!95464 m!90867))

(declare-fun m!90869 () Bool)

(assert (=> b!95464 m!90869))

(assert (=> b!95350 d!62182))

(declare-fun d!62184 () Bool)

(declare-fun lt!21910 () Int)

(assert (=> d!62184 (>= lt!21910 0)))

(declare-fun e!52038 () Int)

(assert (=> d!62184 (= lt!21910 e!52038)))

(declare-fun c!23464 () Bool)

(assert (=> d!62184 (= c!23464 (is-Nil!838 lt!21883))))

(assert (=> d!62184 (= (size!1003 lt!21883) lt!21910)))

(declare-fun b!95465 () Bool)

(assert (=> b!95465 (= e!52038 0)))

(declare-fun b!95466 () Bool)

(assert (=> b!95466 (= e!52038 (+ 1 (size!1003 (t!56044 lt!21883))))))

(assert (= (and d!62184 c!23464) b!95465))

(assert (= (and d!62184 (not c!23464)) b!95466))

(declare-fun m!90871 () Bool)

(assert (=> b!95466 m!90871))

(assert (=> d!62028 d!62184))

(declare-fun d!62186 () Bool)

(declare-fun lt!21911 () Int)

(assert (=> d!62186 (>= lt!21911 0)))

(declare-fun e!52039 () Int)

(assert (=> d!62186 (= lt!21911 e!52039)))

(declare-fun c!23465 () Bool)

(assert (=> d!62186 (= c!23465 (is-Nil!836 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))

(assert (=> d!62186 (= (size!1002 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))) lt!21911)))

(declare-fun b!95467 () Bool)

(assert (=> b!95467 (= e!52039 0)))

(declare-fun b!95468 () Bool)

(assert (=> b!95468 (= e!52039 (+ 1 (size!1002 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))))

(assert (= (and d!62186 c!23465) b!95467))

(assert (= (and d!62186 (not c!23465)) b!95468))

(declare-fun m!90873 () Bool)

(assert (=> b!95468 m!90873))

(assert (=> d!62028 d!62186))

(declare-fun d!62188 () Bool)

(assert (=> d!62188 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))) (Cons!836 (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))) (map!731 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))) lambda!11283)))))

(assert (=> b!95422 d!62188))

(declare-fun d!62190 () Bool)

(declare-fun lt!21912 () List!898)

(assert (=> d!62190 (= (size!1003 lt!21912) (size!1002 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))))

(declare-fun e!52040 () List!898)

(assert (=> d!62190 (= lt!21912 e!52040)))

(declare-fun c!23466 () Bool)

(assert (=> d!62190 (= c!23466 (is-Nil!836 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))))

(assert (=> d!62190 (= (map!731 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))) lambda!11283) lt!21912)))

(declare-fun b!95469 () Bool)

(assert (=> b!95469 (= e!52040 Nil!838)))

(declare-fun b!95470 () Bool)

(assert (=> b!95470 (= e!52040 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))))))

(assert (= (and d!62190 c!23466) b!95469))

(assert (= (and d!62190 (not c!23466)) b!95470))

(declare-fun b_lambda!19291 () Bool)

(assert (=> (not b_lambda!19291) (not b!95470)))

(declare-fun m!90875 () Bool)

(assert (=> d!62190 m!90875))

(declare-fun m!90877 () Bool)

(assert (=> d!62190 m!90877))

(declare-fun m!90879 () Bool)

(assert (=> b!95470 m!90879))

(declare-fun m!90881 () Bool)

(assert (=> b!95470 m!90881))

(assert (=> b!95470 m!90879))

(assert (=> b!95470 m!90881))

(declare-fun m!90883 () Bool)

(assert (=> b!95470 m!90883))

(assert (=> b!95422 d!62190))

(declare-fun d!62192 () Bool)

(declare-fun lt!21913 () Int)

(assert (=> d!62192 (>= lt!21913 0)))

(declare-fun e!52041 () Int)

(assert (=> d!62192 (= lt!21913 e!52041)))

(declare-fun c!23467 () Bool)

(assert (=> d!62192 (= c!23467 (is-Nil!839 (t!56069 (t!56069 lt!21830))))))

(assert (=> d!62192 (= (size!1004 (t!56069 (t!56069 lt!21830))) lt!21913)))

(declare-fun b!95471 () Bool)

(assert (=> b!95471 (= e!52041 0)))

(declare-fun b!95472 () Bool)

(assert (=> b!95472 (= e!52041 (+ 1 (size!1004 (t!56069 (t!56069 (t!56069 lt!21830))))))))

(assert (= (and d!62192 c!23467) b!95471))

(assert (= (and d!62192 (not c!23467)) b!95472))

(declare-fun m!90885 () Bool)

(assert (=> b!95472 m!90885))

(assert (=> b!95452 d!62192))

(declare-fun d!62194 () Bool)

(declare-fun lt!21914 () Int)

(assert (=> d!62194 (>= lt!21914 0)))

(declare-fun e!52042 () Int)

(assert (=> d!62194 (= lt!21914 e!52042)))

(declare-fun c!23468 () Bool)

(assert (=> d!62194 (= c!23468 (is-Nil!837 (t!56043 (t!56043 (t!56043 lt!21816)))))))

(assert (=> d!62194 (= (size!1001 (t!56043 (t!56043 (t!56043 lt!21816)))) lt!21914)))

(declare-fun b!95473 () Bool)

(assert (=> b!95473 (= e!52042 0)))

(declare-fun b!95474 () Bool)

(assert (=> b!95474 (= e!52042 (+ 1 (size!1001 (t!56043 (t!56043 (t!56043 (t!56043 lt!21816)))))))))

(assert (= (and d!62194 c!23468) b!95473))

(assert (= (and d!62194 (not c!23468)) b!95474))

(declare-fun m!90887 () Bool)

(assert (=> b!95474 m!90887))

(assert (=> b!95424 d!62194))

(declare-fun d!62196 () Bool)

(assert (=> d!62196 (= (isEmpty!912 (find!8 transfers!5 lambda!11303)) (not (is-Some!740 (find!8 transfers!5 lambda!11303))))))

(assert (=> d!62044 d!62196))

(assert (=> b!95428 d!62186))

(declare-fun d!62198 () Bool)

(declare-fun c!23469 () Bool)

(assert (=> d!62198 (= c!23469 (is-Nil!839 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))))

(declare-fun e!52043 () Bool)

(assert (=> d!62198 (= (foldLeft!12 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) lambda!11285) e!52043)))

(declare-fun b!95475 () Bool)

(assert (=> b!95475 (= e!52043 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))))

(declare-fun b!95476 () Bool)

(assert (=> b!95476 (= e!52043 (foldLeft!12 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))) lambda!11285))))

(assert (= (and d!62198 c!23469) b!95475))

(assert (= (and d!62198 (not c!23469)) b!95476))

(declare-fun b_lambda!19293 () Bool)

(assert (=> (not b_lambda!19293) (not b!95476)))

(assert (=> b!95476 m!90813))

(declare-fun m!90889 () Bool)

(assert (=> b!95476 m!90889))

(assert (=> b!95476 m!90889))

(declare-fun m!90891 () Bool)

(assert (=> b!95476 m!90891))

(assert (=> b!95442 d!62198))

(declare-fun d!62200 () Bool)

(assert (=> d!62200 (= (isEmpty!911 lt!21869) (not (is-Some!739 lt!21869)))))

(assert (=> d!62036 d!62200))

(declare-fun d!62202 () Bool)

(assert (=> d!62202 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11268) (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (Cons!836 (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (map!731 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11268)))))

(assert (=> b!95406 d!62202))

(declare-fun d!62204 () Bool)

(declare-fun lt!21915 () List!898)

(assert (=> d!62204 (= (size!1003 lt!21915) (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(declare-fun e!52044 () List!898)

(assert (=> d!62204 (= lt!21915 e!52044)))

(declare-fun c!23470 () Bool)

(assert (=> d!62204 (= c!23470 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (=> d!62204 (= (map!731 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11268) lt!21915)))

(declare-fun b!95477 () Bool)

(assert (=> b!95477 (= e!52044 Nil!838)))

(declare-fun b!95478 () Bool)

(assert (=> b!95478 (= e!52044 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lambda!11268) (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(assert (= (and d!62204 c!23470) b!95477))

(assert (= (and d!62204 (not c!23470)) b!95478))

(declare-fun b_lambda!19295 () Bool)

(assert (=> (not b_lambda!19295) (not b!95478)))

(declare-fun m!90893 () Bool)

(assert (=> d!62204 m!90893))

(assert (=> d!62204 m!90859))

(declare-fun m!90895 () Bool)

(assert (=> b!95478 m!90895))

(declare-fun m!90897 () Bool)

(assert (=> b!95478 m!90897))

(assert (=> b!95478 m!90895))

(assert (=> b!95478 m!90897))

(declare-fun m!90899 () Bool)

(assert (=> b!95478 m!90899))

(assert (=> b!95406 d!62204))

(declare-fun d!62206 () Bool)

(declare-fun c!23471 () Bool)

(assert (=> d!62206 (= c!23471 (is-Nil!836 lt!21887))))

(declare-fun e!52045 () (Set tuple2!524))

(assert (=> d!62206 (= (content!207 lt!21887) e!52045)))

(declare-fun b!95479 () Bool)

(assert (=> b!95479 (= e!52045 (as emptyset (Set tuple2!524)))))

(declare-fun b!95480 () Bool)

(assert (=> b!95480 (= e!52045 (union (insert (h!7729 lt!21887) (as emptyset (Set tuple2!524))) (content!207 (t!56042 lt!21887))))))

(assert (= (and d!62206 c!23471) b!95479))

(assert (= (and d!62206 (not c!23471)) b!95480))

(declare-fun m!90901 () Bool)

(assert (=> b!95480 m!90901))

(declare-fun m!90903 () Bool)

(assert (=> b!95480 m!90903))

(assert (=> b!95400 d!62206))

(assert (=> b!95400 d!61914))

(declare-fun d!62208 () Bool)

(assert (=> d!62208 (= (isDefined!27 lt!21884) (not (isEmpty!911 lt!21884)))))

(declare-fun bs!43509 () Bool)

(assert (= bs!43509 d!62208))

(declare-fun m!90905 () Bool)

(assert (=> bs!43509 m!90905))

(assert (=> d!62038 d!62208))

(declare-fun d!62210 () Bool)

(assert (=> d!62210 (= (isDefined!28 (find!8 transfers!5 lambda!11313)) (not (isEmpty!912 (find!8 transfers!5 lambda!11313))))))

(declare-fun bs!43510 () Bool)

(assert (= bs!43510 d!62210))

(assert (=> bs!43510 m!90643))

(declare-fun m!90907 () Bool)

(assert (=> bs!43510 m!90907))

(assert (=> d!62038 d!62210))

(declare-fun d!62212 () Bool)

(declare-fun res!49606 () Bool)

(declare-fun e!52046 () Bool)

(assert (=> d!62212 (=> res!49606 e!52046)))

(assert (=> d!62212 (= res!49606 (is-Nil!836 (t!56042 (t!56042 transfers!5))))))

(assert (=> d!62212 (= (forall!87 (t!56042 (t!56042 transfers!5)) lambda!11302) e!52046)))

(declare-fun b!95481 () Bool)

(declare-fun e!52047 () Bool)

(assert (=> b!95481 (= e!52046 e!52047)))

(declare-fun res!49607 () Bool)

(assert (=> b!95481 (=> (not res!49607) (not e!52047))))

(assert (=> b!95481 (= res!49607 (dynLambda!1156 lambda!11302 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(declare-fun b!95482 () Bool)

(assert (=> b!95482 (= e!52047 (forall!87 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11302))))

(assert (= (and d!62212 (not res!49606)) b!95481))

(assert (= (and b!95481 res!49607) b!95482))

(declare-fun b_lambda!19297 () Bool)

(assert (=> (not b_lambda!19297) (not b!95481)))

(declare-fun m!90909 () Bool)

(assert (=> b!95481 m!90909))

(declare-fun m!90911 () Bool)

(assert (=> b!95482 m!90911))

(assert (=> b!95397 d!62212))

(declare-fun d!62214 () Bool)

(assert (not d!62214))

(assert (=> b!95430 d!62214))

(declare-fun d!62216 () Bool)

(declare-fun c!23472 () Bool)

(assert (=> d!62216 (= c!23472 (is-Nil!839 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))))

(declare-fun e!52048 () Bool)

(assert (=> d!62216 (= (foldLeft!12 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) lambda!11297) e!52048)))

(declare-fun b!95483 () Bool)

(assert (=> b!95483 (= e!52048 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))))

(declare-fun b!95484 () Bool)

(assert (=> b!95484 (= e!52048 (foldLeft!12 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))) lambda!11297))))

(assert (= (and d!62216 c!23472) b!95483))

(assert (= (and d!62216 (not c!23472)) b!95484))

(declare-fun b_lambda!19299 () Bool)

(assert (=> (not b_lambda!19299) (not b!95484)))

(assert (=> b!95484 m!90719))

(declare-fun m!90913 () Bool)

(assert (=> b!95484 m!90913))

(assert (=> b!95484 m!90913))

(declare-fun m!90915 () Bool)

(assert (=> b!95484 m!90915))

(assert (=> b!95383 d!62216))

(declare-fun b!95485 () Bool)

(declare-fun e!52052 () Bool)

(declare-fun lt!21917 () List!896)

(assert (=> b!95485 (= e!52052 (forall!87 lt!21917 lambda!11307))))

(declare-fun b!95486 () Bool)

(declare-fun e!52049 () List!896)

(assert (=> b!95486 (= e!52049 Nil!836)))

(declare-fun b!95487 () Bool)

(declare-fun res!49608 () Bool)

(assert (=> b!95487 (=> (not res!49608) (not e!52052))))

(assert (=> b!95487 (= res!49608 (subset (content!207 lt!21917) (content!207 (t!56042 transfers!5))))))

(declare-fun b!95488 () Bool)

(declare-fun e!52050 () List!896)

(declare-fun lt!21916 () List!896)

(assert (=> b!95488 (= e!52050 lt!21916)))

(declare-fun d!62218 () Bool)

(assert (=> d!62218 e!52052))

(declare-fun res!49610 () Bool)

(assert (=> d!62218 (=> (not res!49610) (not e!52052))))

(assert (=> d!62218 (= res!49610 (<= (size!1002 lt!21917) (size!1002 (t!56042 transfers!5))))))

(assert (=> d!62218 (= lt!21917 e!52049)))

(declare-fun c!23474 () Bool)

(assert (=> d!62218 (= c!23474 (is-Nil!836 (t!56042 transfers!5)))))

(assert (=> d!62218 (= (filter!49 (t!56042 transfers!5) lambda!11307) lt!21917)))

(declare-fun b!95489 () Bool)

(assert (=> b!95489 (= e!52049 e!52050)))

(declare-fun c!23473 () Bool)

(declare-fun e!52051 () Bool)

(assert (=> b!95489 (= c!23473 e!52051)))

(declare-fun res!49609 () Bool)

(assert (=> b!95489 (=> (not res!49609) (not e!52051))))

(assert (=> b!95489 (= res!49609 (is-Cons!834 (t!56042 transfers!5)))))

(assert (=> b!95489 (= lt!21916 (filter!49 (t!56042 (t!56042 transfers!5)) lambda!11307))))

(declare-fun b!95490 () Bool)

(assert (=> b!95490 (= e!52050 (Cons!834 (h!7729 (t!56042 transfers!5)) lt!21916))))

(declare-fun b!95491 () Bool)

(assert (=> b!95491 (= e!52051 (dynLambda!1156 lambda!11307 (h!7729 (t!56042 transfers!5))))))

(assert (= (and b!95489 res!49609) b!95491))

(assert (= (and b!95489 c!23473) b!95490))

(assert (= (and b!95489 (not c!23473)) b!95488))

(assert (= (and d!62218 c!23474) b!95486))

(assert (= (and d!62218 (not c!23474)) b!95489))

(assert (= (and d!62218 res!49610) b!95487))

(assert (= (and b!95487 res!49608) b!95485))

(declare-fun b_lambda!19301 () Bool)

(assert (=> (not b_lambda!19301) (not b!95491)))

(declare-fun m!90917 () Bool)

(assert (=> b!95487 m!90917))

(assert (=> b!95487 m!90483))

(declare-fun m!90919 () Bool)

(assert (=> b!95485 m!90919))

(declare-fun m!90921 () Bool)

(assert (=> b!95491 m!90921))

(declare-fun m!90923 () Bool)

(assert (=> b!95489 m!90923))

(declare-fun m!90925 () Bool)

(assert (=> d!62218 m!90925))

(assert (=> d!62218 m!90365))

(assert (=> b!95402 d!62218))

(declare-fun d!62220 () Bool)

(declare-fun c!23475 () Bool)

(assert (=> d!62220 (= c!23475 (is-Nil!836 (t!56042 (t!56042 transfers!5))))))

(declare-fun e!52053 () (Set tuple2!524))

(assert (=> d!62220 (= (content!207 (t!56042 (t!56042 transfers!5))) e!52053)))

(declare-fun b!95492 () Bool)

(assert (=> b!95492 (= e!52053 (as emptyset (Set tuple2!524)))))

(declare-fun b!95493 () Bool)

(assert (=> b!95493 (= e!52053 (union (insert (h!7729 (t!56042 (t!56042 transfers!5))) (as emptyset (Set tuple2!524))) (content!207 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (= (and d!62220 c!23475) b!95492))

(assert (= (and d!62220 (not c!23475)) b!95493))

(declare-fun m!90927 () Bool)

(assert (=> b!95493 m!90927))

(declare-fun m!90929 () Bool)

(assert (=> b!95493 m!90929))

(assert (=> b!95346 d!62220))

(declare-fun b!95494 () Bool)

(declare-fun e!52054 () Bool)

(declare-fun lt!21918 () Option!769)

(assert (=> b!95494 (= e!52054 (dynLambda!1156 lambda!11303 (v!3224 lt!21918)))))

(declare-fun b!95495 () Bool)

(declare-fun e!52057 () Option!769)

(assert (=> b!95495 (= e!52057 (find!8 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11303))))

(declare-fun d!62222 () Bool)

(declare-fun e!52056 () Bool)

(assert (=> d!62222 e!52056))

(declare-fun res!49611 () Bool)

(assert (=> d!62222 (=> res!49611 e!52056)))

(assert (=> d!62222 (= res!49611 (not (is-Some!740 lt!21918)))))

(declare-fun e!52055 () Option!769)

(assert (=> d!62222 (= lt!21918 e!52055)))

(declare-fun c!23477 () Bool)

(assert (=> d!62222 (= c!23477 (is-Nil!836 (t!56042 (t!56042 transfers!5))))))

(assert (=> d!62222 (= (find!8 (t!56042 (t!56042 transfers!5)) lambda!11303) lt!21918)))

(declare-fun b!95496 () Bool)

(assert (=> b!95496 (= e!52055 e!52057)))

(declare-fun c!23476 () Bool)

(assert (=> b!95496 (= c!23476 (dynLambda!1156 lambda!11303 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(declare-fun b!95497 () Bool)

(assert (=> b!95497 (= e!52056 e!52054)))

(declare-fun res!49612 () Bool)

(assert (=> b!95497 (=> (not res!49612) (not e!52054))))

(assert (=> b!95497 (= res!49612 (member (v!3224 lt!21918) (content!207 (t!56042 (t!56042 transfers!5)))))))

(declare-fun b!95498 () Bool)

(assert (=> b!95498 (= e!52055 None!741)))

(declare-fun b!95499 () Bool)

(assert (=> b!95499 (= e!52057 (Some!740 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(assert (= (and b!95496 c!23476) b!95499))

(assert (= (and b!95496 (not c!23476)) b!95495))

(assert (= (and d!62222 c!23477) b!95498))

(assert (= (and d!62222 (not c!23477)) b!95496))

(assert (= (and d!62222 (not res!49611)) b!95497))

(assert (= (and b!95497 res!49612) b!95494))

(declare-fun b_lambda!19303 () Bool)

(assert (=> (not b_lambda!19303) (not b!95494)))

(declare-fun b_lambda!19305 () Bool)

(assert (=> (not b_lambda!19305) (not b!95496)))

(declare-fun m!90931 () Bool)

(assert (=> b!95494 m!90931))

(declare-fun m!90933 () Bool)

(assert (=> b!95495 m!90933))

(declare-fun m!90935 () Bool)

(assert (=> b!95496 m!90935))

(assert (=> b!95497 m!90673))

(declare-fun m!90937 () Bool)

(assert (=> b!95497 m!90937))

(assert (=> b!95434 d!62222))

(declare-fun d!62224 () Bool)

(declare-fun lt!21919 () Int)

(assert (=> d!62224 (>= lt!21919 0)))

(declare-fun e!52058 () Int)

(assert (=> d!62224 (= lt!21919 e!52058)))

(declare-fun c!23478 () Bool)

(assert (=> d!62224 (= c!23478 (is-Nil!838 lt!21872))))

(assert (=> d!62224 (= (size!1003 lt!21872) lt!21919)))

(declare-fun b!95500 () Bool)

(assert (=> b!95500 (= e!52058 0)))

(declare-fun b!95501 () Bool)

(assert (=> b!95501 (= e!52058 (+ 1 (size!1003 (t!56044 lt!21872))))))

(assert (= (and d!62224 c!23478) b!95500))

(assert (= (and d!62224 (not c!23478)) b!95501))

(declare-fun m!90939 () Bool)

(assert (=> b!95501 m!90939))

(assert (=> d!62002 d!62224))

(declare-fun d!62226 () Bool)

(declare-fun lt!21920 () Int)

(assert (=> d!62226 (>= lt!21920 0)))

(declare-fun e!52059 () Int)

(assert (=> d!62226 (= lt!21920 e!52059)))

(declare-fun c!23479 () Bool)

(assert (=> d!62226 (= c!23479 (is-Nil!836 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))))

(assert (=> d!62226 (= (size!1002 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)) lt!21920)))

(declare-fun b!95502 () Bool)

(assert (=> b!95502 (= e!52059 0)))

(declare-fun b!95503 () Bool)

(assert (=> b!95503 (= e!52059 (+ 1 (size!1002 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))))))

(assert (= (and d!62226 c!23479) b!95502))

(assert (= (and d!62226 (not c!23479)) b!95503))

(declare-fun m!90941 () Bool)

(assert (=> b!95503 m!90941))

(assert (=> d!62002 d!62226))

(declare-fun b!95504 () Bool)

(declare-fun e!52060 () Bool)

(declare-fun lt!21921 () Option!769)

(assert (=> b!95504 (= e!52060 (dynLambda!1156 lambda!11299 (v!3224 lt!21921)))))

(declare-fun b!95505 () Bool)

(declare-fun e!52063 () Option!769)

(assert (=> b!95505 (= e!52063 (find!8 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11299))))

(declare-fun d!62228 () Bool)

(declare-fun e!52062 () Bool)

(assert (=> d!62228 e!52062))

(declare-fun res!49613 () Bool)

(assert (=> d!62228 (=> res!49613 e!52062)))

(assert (=> d!62228 (= res!49613 (not (is-Some!740 lt!21921)))))

(declare-fun e!52061 () Option!769)

(assert (=> d!62228 (= lt!21921 e!52061)))

(declare-fun c!23481 () Bool)

(assert (=> d!62228 (= c!23481 (is-Nil!836 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(assert (=> d!62228 (= (find!8 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11299) lt!21921)))

(declare-fun b!95506 () Bool)

(assert (=> b!95506 (= e!52061 e!52063)))

(declare-fun c!23480 () Bool)

(assert (=> b!95506 (= c!23480 (dynLambda!1156 lambda!11299 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(declare-fun b!95507 () Bool)

(assert (=> b!95507 (= e!52062 e!52060)))

(declare-fun res!49614 () Bool)

(assert (=> b!95507 (=> (not res!49614) (not e!52060))))

(assert (=> b!95507 (= res!49614 (member (v!3224 lt!21921) (content!207 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(declare-fun b!95508 () Bool)

(assert (=> b!95508 (= e!52061 None!741)))

(declare-fun b!95509 () Bool)

(assert (=> b!95509 (= e!52063 (Some!740 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (= (and b!95506 c!23480) b!95509))

(assert (= (and b!95506 (not c!23480)) b!95505))

(assert (= (and d!62228 c!23481) b!95508))

(assert (= (and d!62228 (not c!23481)) b!95506))

(assert (= (and d!62228 (not res!49613)) b!95507))

(assert (= (and b!95507 res!49614) b!95504))

(declare-fun b_lambda!19307 () Bool)

(assert (=> (not b_lambda!19307) (not b!95504)))

(declare-fun b_lambda!19309 () Bool)

(assert (=> (not b_lambda!19309) (not b!95506)))

(declare-fun m!90943 () Bool)

(assert (=> b!95504 m!90943))

(declare-fun m!90945 () Bool)

(assert (=> b!95505 m!90945))

(declare-fun m!90947 () Bool)

(assert (=> b!95506 m!90947))

(assert (=> b!95507 m!90929))

(declare-fun m!90949 () Bool)

(assert (=> b!95507 m!90949))

(assert (=> b!95344 d!62228))

(declare-fun d!62230 () Bool)

(assert (=> d!62230 (= ($colon$colon!31 (map!731 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))) (Cons!836 (dynLambda!1158 lambda!11283 (h!7729 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))) (map!731 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)) lambda!11283)))))

(assert (=> b!95342 d!62230))

(declare-fun d!62232 () Bool)

(declare-fun lt!21922 () List!898)

(assert (=> d!62232 (= (size!1003 lt!21922) (size!1002 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))))))

(declare-fun e!52064 () List!898)

(assert (=> d!62232 (= lt!21922 e!52064)))

(declare-fun c!23482 () Bool)

(assert (=> d!62232 (= c!23482 (is-Nil!836 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))))))

(assert (=> d!62232 (= (map!731 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)) lambda!11283) lt!21922)))

(declare-fun b!95510 () Bool)

(assert (=> b!95510 (= e!52064 Nil!838)))

(declare-fun b!95511 () Bool)

(assert (=> b!95511 (= e!52064 ($colon$colon!31 (map!731 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))))))))

(assert (= (and d!62232 c!23482) b!95510))

(assert (= (and d!62232 (not c!23482)) b!95511))

(declare-fun b_lambda!19311 () Bool)

(assert (=> (not b_lambda!19311) (not b!95511)))

(declare-fun m!90951 () Bool)

(assert (=> d!62232 m!90951))

(assert (=> d!62232 m!90941))

(declare-fun m!90953 () Bool)

(assert (=> b!95511 m!90953))

(declare-fun m!90955 () Bool)

(assert (=> b!95511 m!90955))

(assert (=> b!95511 m!90953))

(assert (=> b!95511 m!90955))

(declare-fun m!90957 () Bool)

(assert (=> b!95511 m!90957))

(assert (=> b!95342 d!62232))

(declare-fun d!62234 () Bool)

(declare-fun lt!21923 () Int)

(assert (=> d!62234 (>= lt!21923 0)))

(declare-fun e!52065 () Int)

(assert (=> d!62234 (= lt!21923 e!52065)))

(declare-fun c!23483 () Bool)

(assert (=> d!62234 (= c!23483 (is-Nil!839 (t!56069 lt!21858)))))

(assert (=> d!62234 (= (size!1004 (t!56069 lt!21858)) lt!21923)))

(declare-fun b!95512 () Bool)

(assert (=> b!95512 (= e!52065 0)))

(declare-fun b!95513 () Bool)

(assert (=> b!95513 (= e!52065 (+ 1 (size!1004 (t!56069 (t!56069 lt!21858)))))))

(assert (= (and d!62234 c!23483) b!95512))

(assert (= (and d!62234 (not c!23483)) b!95513))

(declare-fun m!90959 () Bool)

(assert (=> b!95513 m!90959))

(assert (=> b!95444 d!62234))

(declare-fun b!95514 () Bool)

(declare-fun e!52069 () Bool)

(declare-fun lt!21925 () List!896)

(assert (=> b!95514 (= e!52069 (forall!87 lt!21925 lambda!11311))))

(declare-fun b!95515 () Bool)

(declare-fun e!52066 () List!896)

(assert (=> b!95515 (= e!52066 Nil!836)))

(declare-fun b!95516 () Bool)

(declare-fun res!49615 () Bool)

(assert (=> b!95516 (=> (not res!49615) (not e!52069))))

(assert (=> b!95516 (= res!49615 (subset (content!207 lt!21925) (content!207 (t!56042 transfers!5))))))

(declare-fun b!95517 () Bool)

(declare-fun e!52067 () List!896)

(declare-fun lt!21924 () List!896)

(assert (=> b!95517 (= e!52067 lt!21924)))

(declare-fun d!62236 () Bool)

(assert (=> d!62236 e!52069))

(declare-fun res!49617 () Bool)

(assert (=> d!62236 (=> (not res!49617) (not e!52069))))

(assert (=> d!62236 (= res!49617 (<= (size!1002 lt!21925) (size!1002 (t!56042 transfers!5))))))

(assert (=> d!62236 (= lt!21925 e!52066)))

(declare-fun c!23485 () Bool)

(assert (=> d!62236 (= c!23485 (is-Nil!836 (t!56042 transfers!5)))))

(assert (=> d!62236 (= (filter!49 (t!56042 transfers!5) lambda!11311) lt!21925)))

(declare-fun b!95518 () Bool)

(assert (=> b!95518 (= e!52066 e!52067)))

(declare-fun c!23484 () Bool)

(declare-fun e!52068 () Bool)

(assert (=> b!95518 (= c!23484 e!52068)))

(declare-fun res!49616 () Bool)

(assert (=> b!95518 (=> (not res!49616) (not e!52068))))

(assert (=> b!95518 (= res!49616 (is-Cons!834 (t!56042 transfers!5)))))

(assert (=> b!95518 (= lt!21924 (filter!49 (t!56042 (t!56042 transfers!5)) lambda!11311))))

(declare-fun b!95519 () Bool)

(assert (=> b!95519 (= e!52067 (Cons!834 (h!7729 (t!56042 transfers!5)) lt!21924))))

(declare-fun b!95520 () Bool)

(assert (=> b!95520 (= e!52068 (dynLambda!1156 lambda!11311 (h!7729 (t!56042 transfers!5))))))

(assert (= (and b!95518 res!49616) b!95520))

(assert (= (and b!95518 c!23484) b!95519))

(assert (= (and b!95518 (not c!23484)) b!95517))

(assert (= (and d!62236 c!23485) b!95515))

(assert (= (and d!62236 (not c!23485)) b!95518))

(assert (= (and d!62236 res!49617) b!95516))

(assert (= (and b!95516 res!49615) b!95514))

(declare-fun b_lambda!19313 () Bool)

(assert (=> (not b_lambda!19313) (not b!95520)))

(declare-fun m!90961 () Bool)

(assert (=> b!95516 m!90961))

(assert (=> b!95516 m!90483))

(declare-fun m!90963 () Bool)

(assert (=> b!95514 m!90963))

(declare-fun m!90965 () Bool)

(assert (=> b!95520 m!90965))

(declare-fun m!90967 () Bool)

(assert (=> b!95518 m!90967))

(declare-fun m!90969 () Bool)

(assert (=> d!62236 m!90969))

(assert (=> d!62236 m!90365))

(assert (=> b!95377 d!62236))

(assert (=> b!95416 d!62220))

(declare-fun d!62238 () Bool)

(assert (=> d!62238 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))) (Cons!836 (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))) (map!731 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))) lambda!11294)))))

(assert (=> b!95381 d!62238))

(declare-fun d!62240 () Bool)

(declare-fun lt!21926 () List!898)

(assert (=> d!62240 (= (size!1003 lt!21926) (size!1002 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))))

(declare-fun e!52070 () List!898)

(assert (=> d!62240 (= lt!21926 e!52070)))

(declare-fun c!23486 () Bool)

(assert (=> d!62240 (= c!23486 (is-Nil!836 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))))

(assert (=> d!62240 (= (map!731 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))) lambda!11294) lt!21926)))

(declare-fun b!95521 () Bool)

(assert (=> b!95521 (= e!52070 Nil!838)))

(declare-fun b!95522 () Bool)

(assert (=> b!95522 (= e!52070 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))))))

(assert (= (and d!62240 c!23486) b!95521))

(assert (= (and d!62240 (not c!23486)) b!95522))

(declare-fun b_lambda!19315 () Bool)

(assert (=> (not b_lambda!19315) (not b!95522)))

(declare-fun m!90971 () Bool)

(assert (=> d!62240 m!90971))

(assert (=> d!62240 m!90873))

(declare-fun m!90973 () Bool)

(assert (=> b!95522 m!90973))

(declare-fun m!90975 () Bool)

(assert (=> b!95522 m!90975))

(assert (=> b!95522 m!90973))

(assert (=> b!95522 m!90975))

(declare-fun m!90977 () Bool)

(assert (=> b!95522 m!90977))

(assert (=> b!95381 d!62240))

(declare-fun d!62242 () Bool)

(declare-fun c!23487 () Bool)

(assert (=> d!62242 (= c!23487 (is-Nil!836 lt!21882))))

(declare-fun e!52071 () (Set tuple2!524))

(assert (=> d!62242 (= (content!207 lt!21882) e!52071)))

(declare-fun b!95523 () Bool)

(assert (=> b!95523 (= e!52071 (as emptyset (Set tuple2!524)))))

(declare-fun b!95524 () Bool)

(assert (=> b!95524 (= e!52071 (union (insert (h!7729 lt!21882) (as emptyset (Set tuple2!524))) (content!207 (t!56042 lt!21882))))))

(assert (= (and d!62242 c!23487) b!95523))

(assert (= (and d!62242 (not c!23487)) b!95524))

(declare-fun m!90979 () Bool)

(assert (=> b!95524 m!90979))

(declare-fun m!90981 () Bool)

(assert (=> b!95524 m!90981))

(assert (=> b!95375 d!62242))

(assert (=> b!95375 d!61914))

(declare-fun d!62244 () Bool)

(declare-fun c!23488 () Bool)

(assert (=> d!62244 (= c!23488 (is-Nil!838 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))))))

(declare-fun e!52072 () Int)

(assert (=> d!62244 (= (foldLeft!11 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) lambda!11295) e!52072)))

(declare-fun b!95525 () Bool)

(assert (=> b!95525 (= e!52072 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))))))

(declare-fun b!95526 () Bool)

(assert (=> b!95526 (= e!52072 (foldLeft!11 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))) lambda!11295))))

(assert (= (and d!62244 c!23488) b!95525))

(assert (= (and d!62244 (not c!23488)) b!95526))

(declare-fun b_lambda!19317 () Bool)

(assert (=> (not b_lambda!19317) (not b!95526)))

(assert (=> b!95526 m!90827))

(declare-fun m!90983 () Bool)

(assert (=> b!95526 m!90983))

(assert (=> b!95526 m!90983))

(declare-fun m!90985 () Bool)

(assert (=> b!95526 m!90985))

(assert (=> b!95450 d!62244))

(declare-fun d!62246 () Bool)

(declare-fun lt!21927 () Int)

(assert (=> d!62246 (>= lt!21927 0)))

(declare-fun e!52073 () Int)

(assert (=> d!62246 (= lt!21927 e!52073)))

(declare-fun c!23489 () Bool)

(assert (=> d!62246 (= c!23489 (is-Nil!839 (t!56069 (t!56069 lt!21836))))))

(assert (=> d!62246 (= (size!1004 (t!56069 (t!56069 lt!21836))) lt!21927)))

(declare-fun b!95527 () Bool)

(assert (=> b!95527 (= e!52073 0)))

(declare-fun b!95528 () Bool)

(assert (=> b!95528 (= e!52073 (+ 1 (size!1004 (t!56069 (t!56069 (t!56069 lt!21836))))))))

(assert (= (and d!62246 c!23489) b!95527))

(assert (= (and d!62246 (not c!23489)) b!95528))

(declare-fun m!90987 () Bool)

(assert (=> b!95528 m!90987))

(assert (=> b!95408 d!62246))

(declare-fun d!62248 () Bool)

(declare-fun res!49618 () Bool)

(declare-fun e!52074 () Bool)

(assert (=> d!62248 (=> res!49618 e!52074)))

(assert (=> d!62248 (= res!49618 (is-Nil!836 lt!21887))))

(assert (=> d!62248 (= (forall!87 lt!21887 lambda!11307) e!52074)))

(declare-fun b!95529 () Bool)

(declare-fun e!52075 () Bool)

(assert (=> b!95529 (= e!52074 e!52075)))

(declare-fun res!49619 () Bool)

(assert (=> b!95529 (=> (not res!49619) (not e!52075))))

(assert (=> b!95529 (= res!49619 (dynLambda!1156 lambda!11307 (h!7729 lt!21887)))))

(declare-fun b!95530 () Bool)

(assert (=> b!95530 (= e!52075 (forall!87 (t!56042 lt!21887) lambda!11307))))

(assert (= (and d!62248 (not res!49618)) b!95529))

(assert (= (and b!95529 res!49619) b!95530))

(declare-fun b_lambda!19319 () Bool)

(assert (=> (not b_lambda!19319) (not b!95529)))

(declare-fun m!90989 () Bool)

(assert (=> b!95529 m!90989))

(declare-fun m!90991 () Bool)

(assert (=> b!95530 m!90991))

(assert (=> b!95398 d!62248))

(declare-fun d!62250 () Bool)

(declare-fun lt!21928 () Int)

(assert (=> d!62250 (>= lt!21928 0)))

(declare-fun e!52076 () Int)

(assert (=> d!62250 (= lt!21928 e!52076)))

(declare-fun c!23490 () Bool)

(assert (=> d!62250 (= c!23490 (is-Nil!838 (t!56044 lt!21860)))))

(assert (=> d!62250 (= (size!1003 (t!56044 lt!21860)) lt!21928)))

(declare-fun b!95531 () Bool)

(assert (=> b!95531 (= e!52076 0)))

(declare-fun b!95532 () Bool)

(assert (=> b!95532 (= e!52076 (+ 1 (size!1003 (t!56044 (t!56044 lt!21860)))))))

(assert (= (and d!62250 c!23490) b!95531))

(assert (= (and d!62250 (not c!23490)) b!95532))

(declare-fun m!90993 () Bool)

(assert (=> b!95532 m!90993))

(assert (=> b!95426 d!62250))

(declare-fun d!62252 () Bool)

(assert (=> d!62252 (= (get!1256 lt!21907) (v!3223 lt!21907))))

(assert (=> b!95460 d!62252))

(declare-fun d!62254 () Bool)

(assert (not d!62254))

(assert (=> b!95414 d!62254))

(declare-fun d!62256 () Bool)

(assert (not d!62256))

(assert (=> b!95432 d!62256))

(assert (=> b!95391 d!61914))

(declare-fun d!62258 () Bool)

(declare-fun lt!21929 () Int)

(assert (=> d!62258 (>= lt!21929 0)))

(declare-fun e!52077 () Int)

(assert (=> d!62258 (= lt!21929 e!52077)))

(declare-fun c!23491 () Bool)

(assert (=> d!62258 (= c!23491 (is-Nil!837 lt!21906))))

(assert (=> d!62258 (= (size!1001 lt!21906) lt!21929)))

(declare-fun b!95533 () Bool)

(assert (=> b!95533 (= e!52077 0)))

(declare-fun b!95534 () Bool)

(assert (=> b!95534 (= e!52077 (+ 1 (size!1001 (t!56043 lt!21906))))))

(assert (= (and d!62258 c!23491) b!95533))

(assert (= (and d!62258 (not c!23491)) b!95534))

(declare-fun m!90995 () Bool)

(assert (=> b!95534 m!90995))

(assert (=> d!62118 d!62258))

(declare-fun d!62260 () Bool)

(declare-fun lt!21930 () Int)

(assert (=> d!62260 (>= lt!21930 0)))

(declare-fun e!52078 () Int)

(assert (=> d!62260 (= lt!21930 e!52078)))

(declare-fun c!23492 () Bool)

(assert (=> d!62260 (= c!23492 (is-Nil!836 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(assert (=> d!62260 (= (size!1002 (t!56042 (t!56042 (t!56042 transfers!5)))) lt!21930)))

(declare-fun b!95535 () Bool)

(assert (=> b!95535 (= e!52078 0)))

(declare-fun b!95536 () Bool)

(assert (=> b!95536 (= e!52078 (+ 1 (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(assert (= (and d!62260 c!23492) b!95535))

(assert (= (and d!62260 (not c!23492)) b!95536))

(assert (=> b!95536 m!90859))

(assert (=> d!62118 d!62260))

(assert (=> b!95457 d!62252))

(declare-fun d!62262 () Bool)

(declare-fun lt!21931 () Int)

(assert (=> d!62262 (>= lt!21931 0)))

(declare-fun e!52079 () Int)

(assert (=> d!62262 (= lt!21931 e!52079)))

(declare-fun c!23493 () Bool)

(assert (=> d!62262 (= c!23493 (is-Nil!836 lt!21887))))

(assert (=> d!62262 (= (size!1002 lt!21887) lt!21931)))

(declare-fun b!95537 () Bool)

(assert (=> b!95537 (= e!52079 0)))

(declare-fun b!95538 () Bool)

(assert (=> b!95538 (= e!52079 (+ 1 (size!1002 (t!56042 lt!21887))))))

(assert (= (and d!62262 c!23493) b!95537))

(assert (= (and d!62262 (not c!23493)) b!95538))

(declare-fun m!90997 () Bool)

(assert (=> b!95538 m!90997))

(assert (=> d!62052 d!62262))

(assert (=> d!62052 d!61802))

(declare-fun d!62264 () Bool)

(declare-fun lt!21932 () Int)

(assert (=> d!62264 (>= lt!21932 0)))

(declare-fun e!52080 () Int)

(assert (=> d!62264 (= lt!21932 e!52080)))

(declare-fun c!23494 () Bool)

(assert (=> d!62264 (= c!23494 (is-Nil!837 (t!56043 lt!21859)))))

(assert (=> d!62264 (= (size!1001 (t!56043 lt!21859)) lt!21932)))

(declare-fun b!95539 () Bool)

(assert (=> b!95539 (= e!52080 0)))

(declare-fun b!95540 () Bool)

(assert (=> b!95540 (= e!52080 (+ 1 (size!1001 (t!56043 (t!56043 lt!21859)))))))

(assert (= (and d!62264 c!23494) b!95539))

(assert (= (and d!62264 (not c!23494)) b!95540))

(declare-fun m!90999 () Bool)

(assert (=> b!95540 m!90999))

(assert (=> b!95354 d!62264))

(declare-fun d!62266 () Bool)

(declare-fun lt!21933 () Int)

(assert (=> d!62266 (>= lt!21933 0)))

(declare-fun e!52081 () Int)

(assert (=> d!62266 (= lt!21933 e!52081)))

(declare-fun c!23495 () Bool)

(assert (=> d!62266 (= c!23495 (is-Nil!838 (t!56044 lt!21851)))))

(assert (=> d!62266 (= (size!1003 (t!56044 lt!21851)) lt!21933)))

(declare-fun b!95541 () Bool)

(assert (=> b!95541 (= e!52081 0)))

(declare-fun b!95542 () Bool)

(assert (=> b!95542 (= e!52081 (+ 1 (size!1003 (t!56044 (t!56044 lt!21851)))))))

(assert (= (and d!62266 c!23495) b!95541))

(assert (= (and d!62266 (not c!23495)) b!95542))

(declare-fun m!91001 () Bool)

(assert (=> b!95542 m!91001))

(assert (=> b!95410 d!62266))

(declare-fun d!62268 () Bool)

(declare-fun lt!21934 () Int)

(assert (=> d!62268 (>= lt!21934 0)))

(declare-fun e!52082 () Int)

(assert (=> d!62268 (= lt!21934 e!52082)))

(declare-fun c!23496 () Bool)

(assert (=> d!62268 (= c!23496 (is-Nil!838 lt!21895))))

(assert (=> d!62268 (= (size!1003 lt!21895) lt!21934)))

(declare-fun b!95543 () Bool)

(assert (=> b!95543 (= e!52082 0)))

(declare-fun b!95544 () Bool)

(assert (=> b!95544 (= e!52082 (+ 1 (size!1003 (t!56044 lt!21895))))))

(assert (= (and d!62268 c!23496) b!95543))

(assert (= (and d!62268 (not c!23496)) b!95544))

(declare-fun m!91003 () Bool)

(assert (=> b!95544 m!91003))

(assert (=> d!62076 d!62268))

(declare-fun d!62270 () Bool)

(declare-fun lt!21935 () Int)

(assert (=> d!62270 (>= lt!21935 0)))

(declare-fun e!52083 () Int)

(assert (=> d!62270 (= lt!21935 e!52083)))

(declare-fun c!23497 () Bool)

(assert (=> d!62270 (= c!23497 (is-Nil!836 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))

(assert (=> d!62270 (= (size!1002 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))) lt!21935)))

(declare-fun b!95545 () Bool)

(assert (=> b!95545 (= e!52083 0)))

(declare-fun b!95546 () Bool)

(assert (=> b!95546 (= e!52083 (+ 1 (size!1002 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))))

(assert (= (and d!62270 c!23497) b!95545))

(assert (= (and d!62270 (not c!23497)) b!95546))

(assert (=> b!95546 m!90877))

(assert (=> d!62076 d!62270))

(assert (=> b!95420 d!62270))

(declare-fun b!95547 () Bool)

(declare-fun e!52084 () Bool)

(declare-fun lt!21936 () Option!769)

(assert (=> b!95547 (= e!52084 (dynLambda!1156 lambda!11313 (v!3224 lt!21936)))))

(declare-fun b!95548 () Bool)

(declare-fun e!52087 () Option!769)

(assert (=> b!95548 (= e!52087 (find!8 (t!56042 (t!56042 transfers!5)) lambda!11313))))

(declare-fun d!62272 () Bool)

(declare-fun e!52086 () Bool)

(assert (=> d!62272 e!52086))

(declare-fun res!49620 () Bool)

(assert (=> d!62272 (=> res!49620 e!52086)))

(assert (=> d!62272 (= res!49620 (not (is-Some!740 lt!21936)))))

(declare-fun e!52085 () Option!769)

(assert (=> d!62272 (= lt!21936 e!52085)))

(declare-fun c!23499 () Bool)

(assert (=> d!62272 (= c!23499 (is-Nil!836 (t!56042 transfers!5)))))

(assert (=> d!62272 (= (find!8 (t!56042 transfers!5) lambda!11313) lt!21936)))

(declare-fun b!95549 () Bool)

(assert (=> b!95549 (= e!52085 e!52087)))

(declare-fun c!23498 () Bool)

(assert (=> b!95549 (= c!23498 (dynLambda!1156 lambda!11313 (h!7729 (t!56042 transfers!5))))))

(declare-fun b!95550 () Bool)

(assert (=> b!95550 (= e!52086 e!52084)))

(declare-fun res!49621 () Bool)

(assert (=> b!95550 (=> (not res!49621) (not e!52084))))

(assert (=> b!95550 (= res!49621 (member (v!3224 lt!21936) (content!207 (t!56042 transfers!5))))))

(declare-fun b!95551 () Bool)

(assert (=> b!95551 (= e!52085 None!741)))

(declare-fun b!95552 () Bool)

(assert (=> b!95552 (= e!52087 (Some!740 (h!7729 (t!56042 transfers!5))))))

(assert (= (and b!95549 c!23498) b!95552))

(assert (= (and b!95549 (not c!23498)) b!95548))

(assert (= (and d!62272 c!23499) b!95551))

(assert (= (and d!62272 (not c!23499)) b!95549))

(assert (= (and d!62272 (not res!49620)) b!95550))

(assert (= (and b!95550 res!49621) b!95547))

(declare-fun b_lambda!19321 () Bool)

(assert (=> (not b_lambda!19321) (not b!95547)))

(declare-fun b_lambda!19323 () Bool)

(assert (=> (not b_lambda!19323) (not b!95549)))

(declare-fun m!91005 () Bool)

(assert (=> b!95547 m!91005))

(declare-fun m!91007 () Bool)

(assert (=> b!95548 m!91007))

(declare-fun m!91009 () Bool)

(assert (=> b!95549 m!91009))

(assert (=> b!95550 m!90483))

(declare-fun m!91011 () Bool)

(assert (=> b!95550 m!91011))

(assert (=> b!95389 d!62272))

(assert (=> b!95356 d!62260))

(declare-fun d!62274 () Bool)

(declare-fun lt!21937 () Int)

(assert (=> d!62274 (>= lt!21937 0)))

(declare-fun e!52088 () Int)

(assert (=> d!62274 (= lt!21937 e!52088)))

(declare-fun c!23500 () Bool)

(assert (=> d!62274 (= c!23500 (is-Nil!838 lt!21888))))

(assert (=> d!62274 (= (size!1003 lt!21888) lt!21937)))

(declare-fun b!95553 () Bool)

(assert (=> b!95553 (= e!52088 0)))

(declare-fun b!95554 () Bool)

(assert (=> b!95554 (= e!52088 (+ 1 (size!1003 (t!56044 lt!21888))))))

(assert (= (and d!62274 c!23500) b!95553))

(assert (= (and d!62274 (not c!23500)) b!95554))

(declare-fun m!91013 () Bool)

(assert (=> b!95554 m!91013))

(assert (=> d!62056 d!62274))

(assert (=> d!62056 d!62260))

(declare-fun d!62276 () Bool)

(declare-fun res!49622 () Bool)

(declare-fun e!52089 () Bool)

(assert (=> d!62276 (=> res!49622 e!52089)))

(assert (=> d!62276 (= res!49622 (is-Nil!836 lt!21882))))

(assert (=> d!62276 (= (forall!87 lt!21882 lambda!11311) e!52089)))

(declare-fun b!95555 () Bool)

(declare-fun e!52090 () Bool)

(assert (=> b!95555 (= e!52089 e!52090)))

(declare-fun res!49623 () Bool)

(assert (=> b!95555 (=> (not res!49623) (not e!52090))))

(assert (=> b!95555 (= res!49623 (dynLambda!1156 lambda!11311 (h!7729 lt!21882)))))

(declare-fun b!95556 () Bool)

(assert (=> b!95556 (= e!52090 (forall!87 (t!56042 lt!21882) lambda!11311))))

(assert (= (and d!62276 (not res!49622)) b!95555))

(assert (= (and b!95555 res!49623) b!95556))

(declare-fun b_lambda!19325 () Bool)

(assert (=> (not b_lambda!19325) (not b!95555)))

(declare-fun m!91015 () Bool)

(assert (=> b!95555 m!91015))

(declare-fun m!91017 () Bool)

(assert (=> b!95556 m!91017))

(assert (=> b!95373 d!62276))

(declare-fun d!62278 () Bool)

(declare-fun lt!21938 () Int)

(assert (=> d!62278 (>= lt!21938 0)))

(declare-fun e!52091 () Int)

(assert (=> d!62278 (= lt!21938 e!52091)))

(declare-fun c!23501 () Bool)

(assert (=> d!62278 (= c!23501 (is-Nil!838 (t!56044 (t!56044 lt!21834))))))

(assert (=> d!62278 (= (size!1003 (t!56044 (t!56044 lt!21834))) lt!21938)))

(declare-fun b!95557 () Bool)

(assert (=> b!95557 (= e!52091 0)))

(declare-fun b!95558 () Bool)

(assert (=> b!95558 (= e!52091 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 lt!21834))))))))

(assert (= (and d!62278 c!23501) b!95557))

(assert (= (and d!62278 (not c!23501)) b!95558))

(declare-fun m!91019 () Bool)

(assert (=> b!95558 m!91019))

(assert (=> b!95440 d!62278))

(declare-fun d!62280 () Bool)

(assert (=> d!62280 (= (isDefined!27 lt!21907) (not (isEmpty!911 lt!21907)))))

(declare-fun bs!43511 () Bool)

(assert (= bs!43511 d!62280))

(declare-fun m!91021 () Bool)

(assert (=> bs!43511 m!91021))

(assert (=> bs!43480 d!62280))

(declare-fun d!62282 () Bool)

(declare-fun lt!21939 () Option!768)

(assert (=> d!62282 (= (isDefined!27 lt!21939) (isDefined!28 (find!8 transfers!5 lambda!11315)))))

(declare-fun e!52092 () Option!768)

(assert (=> d!62282 (= lt!21939 e!52092)))

(declare-fun c!23502 () Bool)

(assert (=> d!62282 (= c!23502 (is-None!741 (find!8 transfers!5 lambda!11315)))))

(assert (=> d!62282 (= (map!733 (find!8 transfers!5 lambda!11315) lambda!11268) lt!21939)))

(declare-fun b!95559 () Bool)

(assert (=> b!95559 (= e!52092 None!740)))

(declare-fun b!95560 () Bool)

(assert (=> b!95560 (= e!52092 (Some!739 (dynLambda!1158 lambda!11268 (v!3224 (find!8 transfers!5 lambda!11315)))))))

(assert (= (and d!62282 c!23502) b!95559))

(assert (= (and d!62282 (not c!23502)) b!95560))

(declare-fun b_lambda!19327 () Bool)

(assert (=> (not b_lambda!19327) (not b!95560)))

(declare-fun m!91023 () Bool)

(assert (=> d!62282 m!91023))

(assert (=> d!62282 m!90849))

(declare-fun m!91025 () Bool)

(assert (=> d!62282 m!91025))

(declare-fun m!91027 () Bool)

(assert (=> b!95560 m!91027))

(assert (=> bs!43480 d!62282))

(declare-fun b!95561 () Bool)

(declare-fun e!52093 () Bool)

(declare-fun lt!21940 () Option!769)

(assert (=> b!95561 (= e!52093 (dynLambda!1156 lambda!11315 (v!3224 lt!21940)))))

(declare-fun b!95562 () Bool)

(declare-fun e!52096 () Option!769)

(assert (=> b!95562 (= e!52096 (find!8 (t!56042 transfers!5) lambda!11315))))

(declare-fun d!62284 () Bool)

(declare-fun e!52095 () Bool)

(assert (=> d!62284 e!52095))

(declare-fun res!49624 () Bool)

(assert (=> d!62284 (=> res!49624 e!52095)))

(assert (=> d!62284 (= res!49624 (not (is-Some!740 lt!21940)))))

(declare-fun e!52094 () Option!769)

(assert (=> d!62284 (= lt!21940 e!52094)))

(declare-fun c!23504 () Bool)

(assert (=> d!62284 (= c!23504 (is-Nil!836 transfers!5))))

(assert (=> d!62284 (= (find!8 transfers!5 lambda!11315) lt!21940)))

(declare-fun b!95563 () Bool)

(assert (=> b!95563 (= e!52094 e!52096)))

(declare-fun c!23503 () Bool)

(assert (=> b!95563 (= c!23503 (dynLambda!1156 lambda!11315 (h!7729 transfers!5)))))

(declare-fun b!95564 () Bool)

(assert (=> b!95564 (= e!52095 e!52093)))

(declare-fun res!49625 () Bool)

(assert (=> b!95564 (=> (not res!49625) (not e!52093))))

(assert (=> b!95564 (= res!49625 (member (v!3224 lt!21940) (content!207 transfers!5)))))

(declare-fun b!95565 () Bool)

(assert (=> b!95565 (= e!52094 None!741)))

(declare-fun b!95566 () Bool)

(assert (=> b!95566 (= e!52096 (Some!740 (h!7729 transfers!5)))))

(assert (= (and b!95563 c!23503) b!95566))

(assert (= (and b!95563 (not c!23503)) b!95562))

(assert (= (and d!62284 c!23504) b!95565))

(assert (= (and d!62284 (not c!23504)) b!95563))

(assert (= (and d!62284 (not res!49624)) b!95564))

(assert (= (and b!95564 res!49625) b!95561))

(declare-fun b_lambda!19329 () Bool)

(assert (=> (not b_lambda!19329) (not b!95561)))

(declare-fun b_lambda!19331 () Bool)

(assert (=> (not b_lambda!19331) (not b!95563)))

(declare-fun m!91029 () Bool)

(assert (=> b!95561 m!91029))

(declare-fun m!91031 () Bool)

(assert (=> b!95562 m!91031))

(declare-fun m!91033 () Bool)

(assert (=> b!95563 m!91033))

(assert (=> b!95564 m!90447))

(declare-fun m!91035 () Bool)

(assert (=> b!95564 m!91035))

(assert (=> bs!43480 d!62284))

(declare-fun d!62286 () Bool)

(assert (=> d!62286 (= (isEmpty!911 lt!21861) (not (is-Some!739 lt!21861)))))

(assert (=> d!62042 d!62286))

(declare-fun d!62288 () Bool)

(declare-fun res!49626 () Bool)

(declare-fun e!52097 () Bool)

(assert (=> d!62288 (=> res!49626 e!52097)))

(assert (=> d!62288 (= res!49626 (is-Nil!836 (t!56042 transfers!5)))))

(assert (=> d!62288 (= (forall!87 (t!56042 transfers!5) lambda!11308) e!52097)))

(declare-fun b!95567 () Bool)

(declare-fun e!52098 () Bool)

(assert (=> b!95567 (= e!52097 e!52098)))

(declare-fun res!49627 () Bool)

(assert (=> b!95567 (=> (not res!49627) (not e!52098))))

(assert (=> b!95567 (= res!49627 (dynLambda!1156 lambda!11308 (h!7729 (t!56042 transfers!5))))))

(declare-fun b!95568 () Bool)

(assert (=> b!95568 (= e!52098 (forall!87 (t!56042 (t!56042 transfers!5)) lambda!11308))))

(assert (= (and d!62288 (not res!49626)) b!95567))

(assert (= (and b!95567 res!49627) b!95568))

(declare-fun b_lambda!19333 () Bool)

(assert (=> (not b_lambda!19333) (not b!95567)))

(declare-fun m!91037 () Bool)

(assert (=> b!95567 m!91037))

(declare-fun m!91039 () Bool)

(assert (=> b!95568 m!91039))

(assert (=> b!95358 d!62288))

(declare-fun d!62290 () Bool)

(declare-fun lt!21941 () Int)

(assert (=> d!62290 (>= lt!21941 0)))

(declare-fun e!52099 () Int)

(assert (=> d!62290 (= lt!21941 e!52099)))

(declare-fun c!23505 () Bool)

(assert (=> d!62290 (= c!23505 (is-Nil!838 (t!56044 (t!56044 (t!56044 lt!21819)))))))

(assert (=> d!62290 (= (size!1003 (t!56044 (t!56044 (t!56044 lt!21819)))) lt!21941)))

(declare-fun b!95569 () Bool)

(assert (=> b!95569 (= e!52099 0)))

(declare-fun b!95570 () Bool)

(assert (=> b!95570 (= e!52099 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 (t!56044 lt!21819)))))))))

(assert (= (and d!62290 c!23505) b!95569))

(assert (= (and d!62290 (not c!23505)) b!95570))

(declare-fun m!91041 () Bool)

(assert (=> b!95570 m!91041))

(assert (=> b!95338 d!62290))

(declare-fun d!62292 () Bool)

(assert (=> d!62292 (= ($colon$colon!31 (map!731 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))) (Cons!836 (dynLambda!1158 lambda!11294 (h!7729 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))) (map!731 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)) lambda!11294)))))

(assert (=> b!95352 d!62292))

(declare-fun d!62294 () Bool)

(declare-fun lt!21942 () List!898)

(assert (=> d!62294 (= (size!1003 lt!21942) (size!1002 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))))))

(declare-fun e!52100 () List!898)

(assert (=> d!62294 (= lt!21942 e!52100)))

(declare-fun c!23506 () Bool)

(assert (=> d!62294 (= c!23506 (is-Nil!836 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))))))

(assert (=> d!62294 (= (map!731 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)) lambda!11294) lt!21942)))

(declare-fun b!95571 () Bool)

(assert (=> b!95571 (= e!52100 Nil!838)))

(declare-fun b!95572 () Bool)

(assert (=> b!95572 (= e!52100 ($colon$colon!31 (map!731 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))))))))

(assert (= (and d!62294 c!23506) b!95571))

(assert (= (and d!62294 (not c!23506)) b!95572))

(declare-fun b_lambda!19335 () Bool)

(assert (=> (not b_lambda!19335) (not b!95572)))

(declare-fun m!91043 () Bool)

(assert (=> d!62294 m!91043))

(declare-fun m!91045 () Bool)

(assert (=> d!62294 m!91045))

(declare-fun m!91047 () Bool)

(assert (=> b!95572 m!91047))

(declare-fun m!91049 () Bool)

(assert (=> b!95572 m!91049))

(assert (=> b!95572 m!91047))

(assert (=> b!95572 m!91049))

(declare-fun m!91051 () Bool)

(assert (=> b!95572 m!91051))

(assert (=> b!95352 d!62294))

(assert (=> b!95436 d!62068))

(declare-fun d!62296 () Bool)

(declare-fun c!23507 () Bool)

(assert (=> d!62296 (= c!23507 (is-Nil!838 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))))))

(declare-fun e!52101 () Int)

(assert (=> d!62296 (= (foldLeft!11 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) lambda!11284) e!52101)))

(declare-fun b!95573 () Bool)

(assert (=> b!95573 (= e!52101 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))))))

(declare-fun b!95574 () Bool)

(assert (=> b!95574 (= e!52101 (foldLeft!11 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))) lambda!11284))))

(assert (= (and d!62296 c!23507) b!95573))

(assert (= (and d!62296 (not c!23507)) b!95574))

(declare-fun b_lambda!19337 () Bool)

(assert (=> (not b_lambda!19337) (not b!95574)))

(assert (=> b!95574 m!90841))

(declare-fun m!91053 () Bool)

(assert (=> b!95574 m!91053))

(assert (=> b!95574 m!91053))

(declare-fun m!91055 () Bool)

(assert (=> b!95574 m!91055))

(assert (=> b!95456 d!62296))

(declare-fun d!62298 () Bool)

(declare-fun lt!21943 () Int)

(assert (=> d!62298 (>= lt!21943 0)))

(declare-fun e!52102 () Int)

(assert (=> d!62298 (= lt!21943 e!52102)))

(declare-fun c!23508 () Bool)

(assert (=> d!62298 (= c!23508 (is-Nil!838 lt!21874))))

(assert (=> d!62298 (= (size!1003 lt!21874) lt!21943)))

(declare-fun b!95575 () Bool)

(assert (=> b!95575 (= e!52102 0)))

(declare-fun b!95576 () Bool)

(assert (=> b!95576 (= e!52102 (+ 1 (size!1003 (t!56044 lt!21874))))))

(assert (= (and d!62298 c!23508) b!95575))

(assert (= (and d!62298 (not c!23508)) b!95576))

(declare-fun m!91057 () Bool)

(assert (=> b!95576 m!91057))

(assert (=> d!62012 d!62298))

(declare-fun d!62300 () Bool)

(declare-fun lt!21944 () Int)

(assert (=> d!62300 (>= lt!21944 0)))

(declare-fun e!52103 () Int)

(assert (=> d!62300 (= lt!21944 e!52103)))

(declare-fun c!23509 () Bool)

(assert (=> d!62300 (= c!23509 (is-Nil!836 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))))

(assert (=> d!62300 (= (size!1002 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)) lt!21944)))

(declare-fun b!95577 () Bool)

(assert (=> b!95577 (= e!52103 0)))

(declare-fun b!95578 () Bool)

(assert (=> b!95578 (= e!52103 (+ 1 (size!1002 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))))))

(assert (= (and d!62300 c!23509) b!95577))

(assert (= (and d!62300 (not c!23509)) b!95578))

(assert (=> b!95578 m!91045))

(assert (=> d!62012 d!62300))

(declare-fun d!62302 () Bool)

(declare-fun res!49628 () Bool)

(declare-fun e!52104 () Bool)

(assert (=> d!62302 (=> res!49628 e!52104)))

(assert (=> d!62302 (= res!49628 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (=> d!62302 (= (forall!87 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11273) e!52104)))

(declare-fun b!95579 () Bool)

(declare-fun e!52105 () Bool)

(assert (=> b!95579 (= e!52104 e!52105)))

(declare-fun res!49629 () Bool)

(assert (=> b!95579 (=> (not res!49629) (not e!52105))))

(assert (=> b!95579 (= res!49629 (dynLambda!1156 lambda!11273 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(declare-fun b!95580 () Bool)

(assert (=> b!95580 (= e!52105 (forall!87 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lambda!11273))))

(assert (= (and d!62302 (not res!49628)) b!95579))

(assert (= (and b!95579 res!49629) b!95580))

(declare-fun b_lambda!19339 () Bool)

(assert (=> (not b_lambda!19339) (not b!95579)))

(declare-fun m!91059 () Bool)

(assert (=> b!95579 m!91059))

(declare-fun m!91061 () Bool)

(assert (=> b!95580 m!91061))

(assert (=> b!95395 d!62302))

(declare-fun d!62304 () Bool)

(declare-fun c!23510 () Bool)

(assert (=> d!62304 (= c!23510 (is-Nil!838 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))))))

(declare-fun e!52106 () Int)

(assert (=> d!62304 (= (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) lambda!11269) e!52106)))

(declare-fun b!95581 () Bool)

(assert (=> b!95581 (= e!52106 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))))))

(declare-fun b!95582 () Bool)

(assert (=> b!95582 (= e!52106 (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))) lambda!11269))))

(assert (= (and d!62304 c!23510) b!95581))

(assert (= (and d!62304 (not c!23510)) b!95582))

(declare-fun b_lambda!19341 () Bool)

(assert (=> (not b_lambda!19341) (not b!95582)))

(assert (=> b!95582 m!90723))

(declare-fun m!91063 () Bool)

(assert (=> b!95582 m!91063))

(assert (=> b!95582 m!91063))

(declare-fun m!91065 () Bool)

(assert (=> b!95582 m!91065))

(assert (=> b!95385 d!62304))

(declare-fun d!62306 () Bool)

(declare-fun lt!21945 () Int)

(assert (=> d!62306 (>= lt!21945 0)))

(declare-fun e!52107 () Int)

(assert (=> d!62306 (= lt!21945 e!52107)))

(declare-fun c!23511 () Bool)

(assert (=> d!62306 (= c!23511 (is-Nil!837 (t!56043 (t!56043 lt!21837))))))

(assert (=> d!62306 (= (size!1001 (t!56043 (t!56043 lt!21837))) lt!21945)))

(declare-fun b!95583 () Bool)

(assert (=> b!95583 (= e!52107 0)))

(declare-fun b!95584 () Bool)

(assert (=> b!95584 (= e!52107 (+ 1 (size!1001 (t!56043 (t!56043 (t!56043 lt!21837))))))))

(assert (= (and d!62306 c!23511) b!95583))

(assert (= (and d!62306 (not c!23511)) b!95584))

(declare-fun m!91067 () Bool)

(assert (=> b!95584 m!91067))

(assert (=> b!95448 d!62306))

(declare-fun d!62308 () Bool)

(declare-fun lt!21946 () Int)

(assert (=> d!62308 (>= lt!21946 0)))

(declare-fun e!52108 () Int)

(assert (=> d!62308 (= lt!21946 e!52108)))

(declare-fun c!23512 () Bool)

(assert (=> d!62308 (= c!23512 (is-Nil!839 (t!56069 lt!21866)))))

(assert (=> d!62308 (= (size!1004 (t!56069 lt!21866)) lt!21946)))

(declare-fun b!95585 () Bool)

(assert (=> b!95585 (= e!52108 0)))

(declare-fun b!95586 () Bool)

(assert (=> b!95586 (= e!52108 (+ 1 (size!1004 (t!56069 (t!56069 lt!21866)))))))

(assert (= (and d!62308 c!23512) b!95585))

(assert (= (and d!62308 (not c!23512)) b!95586))

(declare-fun m!91069 () Bool)

(assert (=> b!95586 m!91069))

(assert (=> b!95412 d!62308))

(declare-fun d!62310 () Bool)

(declare-fun lt!21947 () Int)

(assert (=> d!62310 (>= lt!21947 0)))

(declare-fun e!52109 () Int)

(assert (=> d!62310 (= lt!21947 e!52109)))

(declare-fun c!23513 () Bool)

(assert (=> d!62310 (= c!23513 (is-Nil!836 lt!21882))))

(assert (=> d!62310 (= (size!1002 lt!21882) lt!21947)))

(declare-fun b!95587 () Bool)

(assert (=> b!95587 (= e!52109 0)))

(declare-fun b!95588 () Bool)

(assert (=> b!95588 (= e!52109 (+ 1 (size!1002 (t!56042 lt!21882))))))

(assert (= (and d!62310 c!23513) b!95587))

(assert (= (and d!62310 (not c!23513)) b!95588))

(declare-fun m!91071 () Bool)

(assert (=> b!95588 m!91071))

(assert (=> d!62024 d!62310))

(assert (=> d!62024 d!61802))

(declare-fun d!62312 () Bool)

(declare-fun lt!21948 () Int)

(assert (=> d!62312 (>= lt!21948 0)))

(declare-fun e!52110 () Int)

(assert (=> d!62312 (= lt!21948 e!52110)))

(declare-fun c!23514 () Bool)

(assert (=> d!62312 (= c!23514 (is-Nil!838 (t!56044 lt!21848)))))

(assert (=> d!62312 (= (size!1003 (t!56044 lt!21848)) lt!21948)))

(declare-fun b!95589 () Bool)

(assert (=> b!95589 (= e!52110 0)))

(declare-fun b!95590 () Bool)

(assert (=> b!95590 (= e!52110 (+ 1 (size!1003 (t!56044 (t!56044 lt!21848)))))))

(assert (= (and d!62312 c!23514) b!95589))

(assert (= (and d!62312 (not c!23514)) b!95590))

(declare-fun m!91073 () Bool)

(assert (=> b!95590 m!91073))

(assert (=> b!95418 d!62312))

(declare-fun d!62314 () Bool)

(declare-fun c!23515 () Bool)

(assert (=> d!62314 (= c!23515 (is-Nil!838 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))))))

(declare-fun e!52111 () Int)

(assert (=> d!62314 (= (foldLeft!11 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)) (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) lambda!11284) e!52111)))

(declare-fun b!95591 () Bool)

(assert (=> b!95591 (= e!52111 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))))))

(declare-fun b!95592 () Bool)

(assert (=> b!95592 (= e!52111 (foldLeft!11 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))) lambda!11284))))

(assert (= (and d!62314 c!23515) b!95591))

(assert (= (and d!62314 (not c!23515)) b!95592))

(declare-fun b_lambda!19343 () Bool)

(assert (=> (not b_lambda!19343) (not b!95592)))

(assert (=> b!95592 m!90653))

(declare-fun m!91075 () Bool)

(assert (=> b!95592 m!91075))

(assert (=> b!95592 m!91075))

(declare-fun m!91077 () Bool)

(assert (=> b!95592 m!91077))

(assert (=> b!95340 d!62314))

(declare-fun d!62316 () Bool)

(declare-fun res!49630 () Bool)

(declare-fun e!52112 () Bool)

(assert (=> d!62316 (=> res!49630 e!52112)))

(assert (=> d!62316 (= res!49630 (is-Nil!836 transfers!5))))

(assert (=> d!62316 (= (forall!87 transfers!5 lambda!11314) e!52112)))

(declare-fun b!95593 () Bool)

(declare-fun e!52113 () Bool)

(assert (=> b!95593 (= e!52112 e!52113)))

(declare-fun res!49631 () Bool)

(assert (=> b!95593 (=> (not res!49631) (not e!52113))))

(assert (=> b!95593 (= res!49631 (dynLambda!1156 lambda!11314 (h!7729 transfers!5)))))

(declare-fun b!95594 () Bool)

(assert (=> b!95594 (= e!52113 (forall!87 (t!56042 transfers!5) lambda!11314))))

(assert (= (and d!62316 (not res!49630)) b!95593))

(assert (= (and b!95593 res!49631) b!95594))

(declare-fun b_lambda!19345 () Bool)

(assert (=> (not b_lambda!19345) (not b!95593)))

(declare-fun m!91079 () Bool)

(assert (=> b!95593 m!91079))

(declare-fun m!91081 () Bool)

(assert (=> b!95594 m!91081))

(assert (=> d!62104 d!62316))

(declare-fun d!62318 () Bool)

(declare-fun res!49632 () Bool)

(declare-fun e!52114 () Bool)

(assert (=> d!62318 (=> res!49632 e!52114)))

(assert (=> d!62318 (= res!49632 (is-Nil!837 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))))))))

(assert (=> d!62318 (= (forall!86 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))) lambda!11272) e!52114)))

(declare-fun b!95595 () Bool)

(declare-fun e!52115 () Bool)

(assert (=> b!95595 (= e!52114 e!52115)))

(declare-fun res!49633 () Bool)

(assert (=> b!95595 (=> (not res!49633) (not e!52115))))

(assert (=> b!95595 (= res!49633 (dynLambda!1154 lambda!11272 (h!7730 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))))))))

(declare-fun b!95596 () Bool)

(assert (=> b!95596 (= e!52115 (forall!86 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))))) lambda!11272))))

(assert (= (and d!62318 (not res!49632)) b!95595))

(assert (= (and b!95595 res!49633) b!95596))

(declare-fun b_lambda!19347 () Bool)

(assert (=> (not b_lambda!19347) (not b!95595)))

(declare-fun m!91083 () Bool)

(assert (=> b!95595 m!91083))

(declare-fun m!91085 () Bool)

(assert (=> b!95596 m!91085))

(assert (=> b!95446 d!62318))

(declare-fun b_lambda!19349 () Bool)

(assert (= b_lambda!19337 (or d!61782 b_lambda!19349)))

(declare-fun bs!43512 () Bool)

(declare-fun d!62320 () Bool)

(assert (= bs!43512 (and d!62320 d!61782)))

(assert (=> bs!43512 (= (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))) (+ (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))))))

(assert (=> b!95574 d!62320))

(declare-fun b_lambda!19351 () Bool)

(assert (= b_lambda!19347 (or b!95120 b_lambda!19351)))

(declare-fun bs!43513 () Bool)

(declare-fun d!62322 () Bool)

(assert (= bs!43513 (and d!62322 b!95120)))

(assert (=> bs!43513 (= (dynLambda!1154 lambda!11272 (h!7730 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))))) (not (= (_1!300 (h!7730 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))))) (_2!300 (h!7730 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))))))))))

(assert (=> b!95595 d!62322))

(declare-fun b_lambda!19353 () Bool)

(assert (= b_lambda!19293 (or d!61782 b_lambda!19353)))

(declare-fun bs!43514 () Bool)

(declare-fun d!62324 () Bool)

(assert (= bs!43514 (and d!62324 d!61782)))

(assert (=> bs!43514 (= (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))) (and (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))))))

(assert (=> b!95476 d!62324))

(declare-fun b_lambda!19355 () Bool)

(assert (= b_lambda!19309 (or bs!43360 b_lambda!19355)))

(declare-fun bs!43515 () Bool)

(declare-fun d!62326 () Bool)

(assert (= bs!43515 (and d!62326 d!61796 b!95121)))

(assert (=> bs!43515 (= (dynLambda!1156 lambda!11299 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (= (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))))))

(assert (=> b!95506 d!62326))

(declare-fun b_lambda!19357 () Bool)

(assert (= b_lambda!19289 (or d!61785 b_lambda!19357)))

(declare-fun bs!43516 () Bool)

(declare-fun d!62328 () Bool)

(assert (= bs!43516 (and d!62328 d!61785)))

(assert (=> bs!43516 (= (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))) (+ (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))))))

(assert (=> b!95464 d!62328))

(declare-fun b_lambda!19359 () Bool)

(assert (= b_lambda!19321 (or bs!43434 b_lambda!19359)))

(declare-fun bs!43517 () Bool)

(declare-fun d!62330 () Bool)

(assert (= bs!43517 (and d!62330 d!61972 b!95121)))

(assert (=> bs!43517 (= (dynLambda!1156 lambda!11313 (v!3224 lt!21936)) (= (_1!301 (v!3224 lt!21936)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))))))))

(assert (=> b!95547 d!62330))

(declare-fun b_lambda!19361 () Bool)

(assert (= b_lambda!19305 (or bs!43369 b_lambda!19361)))

(declare-fun bs!43518 () Bool)

(declare-fun d!62332 () Bool)

(assert (= bs!43518 (and d!62332 d!61844 b!95121)))

(assert (=> bs!43518 (= (dynLambda!1156 lambda!11303 (h!7729 (t!56042 (t!56042 transfers!5)))) (= (_1!301 (h!7729 (t!56042 (t!56042 transfers!5)))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))))))

(assert (=> b!95496 d!62332))

(declare-fun b_lambda!19363 () Bool)

(assert (= b_lambda!19345 (or d!62104 b_lambda!19363)))

(declare-fun bs!43519 () Bool)

(declare-fun d!62334 () Bool)

(assert (= bs!43519 (and d!62334 d!62104)))

(assert (=> bs!43519 (= (dynLambda!1156 lambda!11314 (h!7729 transfers!5)) (not (dynLambda!1156 lambda!11312 (h!7729 transfers!5))))))

(declare-fun b_lambda!19411 () Bool)

(assert (=> (not b_lambda!19411) (not bs!43519)))

(declare-fun m!91087 () Bool)

(assert (=> bs!43519 m!91087))

(assert (=> b!95593 d!62334))

(declare-fun b_lambda!19365 () Bool)

(assert (= b_lambda!19297 (or d!61814 b_lambda!19365)))

(declare-fun bs!43520 () Bool)

(declare-fun d!62336 () Bool)

(assert (= bs!43520 (and d!62336 d!61814)))

(assert (=> bs!43520 (= (dynLambda!1156 lambda!11302 (h!7729 (t!56042 (t!56042 transfers!5)))) (not (dynLambda!1156 lambda!11298 (h!7729 (t!56042 (t!56042 transfers!5))))))))

(declare-fun b_lambda!19413 () Bool)

(assert (=> (not b_lambda!19413) (not bs!43520)))

(declare-fun m!91089 () Bool)

(assert (=> bs!43520 m!91089))

(assert (=> b!95481 d!62336))

(declare-fun b_lambda!19367 () Bool)

(assert (= b_lambda!19331 (or bs!43480 b_lambda!19367)))

(declare-fun bs!43521 () Bool)

(declare-fun d!62338 () Bool)

(assert (= bs!43521 (and d!62338 d!62142 b!95121)))

(assert (=> bs!43521 (= (dynLambda!1156 lambda!11315 (h!7729 transfers!5)) (= (_1!301 (h!7729 transfers!5)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))

(assert (=> b!95563 d!62338))

(declare-fun b_lambda!19369 () Bool)

(assert (= b_lambda!19317 (or d!61785 b_lambda!19369)))

(declare-fun bs!43522 () Bool)

(declare-fun d!62340 () Bool)

(assert (= bs!43522 (and d!62340 d!61785)))

(assert (=> bs!43522 (= (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))) (+ (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))))))

(assert (=> b!95526 d!62340))

(declare-fun b_lambda!19371 () Bool)

(assert (= b_lambda!19291 (or d!61782 b_lambda!19371)))

(declare-fun bs!43523 () Bool)

(declare-fun d!62342 () Bool)

(assert (= bs!43523 (and d!62342 d!61782)))

(assert (=> bs!43523 (= (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))) (_2!301 (h!7729 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))))

(assert (=> b!95470 d!62342))

(declare-fun b_lambda!19373 () Bool)

(assert (= b_lambda!19307 (or bs!43360 b_lambda!19373)))

(declare-fun bs!43524 () Bool)

(declare-fun d!62344 () Bool)

(assert (= bs!43524 (and d!62344 d!61796 b!95121)))

(assert (=> bs!43524 (= (dynLambda!1156 lambda!11299 (v!3224 lt!21921)) (= (_1!301 (v!3224 lt!21921)) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))))))

(assert (=> b!95504 d!62344))

(declare-fun b_lambda!19375 () Bool)

(assert (= b_lambda!19339 (or b!95121 b_lambda!19375)))

(declare-fun bs!43525 () Bool)

(declare-fun d!62346 () Bool)

(assert (= bs!43525 (and d!62346 b!95121)))

(declare-fun bs!43526 () Bool)

(assert (= bs!43526 (and d!62346 b!95121 d!61956 b!95125)))

(declare-fun lambda!11316 () Int)

(assert (=> bs!43526 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (h!7730 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))) (= lambda!11316 lambda!11312))))

(declare-fun bs!43527 () Bool)

(assert (= bs!43527 (and d!62346 b!95121 d!61972)))

(assert (=> bs!43527 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))))) (= lambda!11316 lambda!11313))))

(declare-fun bs!43528 () Bool)

(assert (= bs!43528 (and d!62346 b!95121 d!61928)))

(assert (=> bs!43528 (not (= lambda!11316 lambda!11311))))

(declare-fun bs!43529 () Bool)

(assert (= bs!43529 (and d!62346 b!95121 d!62142)))

(assert (=> bs!43529 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (= lambda!11316 lambda!11315))))

(declare-fun bs!43530 () Bool)

(assert (= bs!43530 (and d!62346 b!95121 d!61880)))

(assert (=> bs!43530 (not (= lambda!11316 lambda!11307))))

(declare-fun bs!43531 () Bool)

(assert (= bs!43531 (and d!62346 b!95121 d!61846 b!95125)))

(assert (=> bs!43531 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (h!7730 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))) (= lambda!11316 lambda!11304))))

(declare-fun bs!43532 () Bool)

(assert (= bs!43532 (and d!62346 b!95121 d!62104)))

(assert (=> bs!43532 (not (= lambda!11316 lambda!11314))))

(assert (=> bs!43525 (not (= lambda!11316 lambda!11273))))

(declare-fun bs!43533 () Bool)

(assert (= bs!43533 (and d!62346 b!95121 d!61904)))

(assert (=> bs!43533 (not (= lambda!11316 lambda!11308))))

(declare-fun bs!43534 () Bool)

(assert (= bs!43534 (and d!62346 b!95121 d!61814)))

(assert (=> bs!43534 (not (= lambda!11316 lambda!11302))))

(declare-fun bs!43535 () Bool)

(assert (= bs!43535 (and d!62346 b!95121 d!61844)))

(assert (=> bs!43535 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))) (= lambda!11316 lambda!11303))))

(declare-fun bs!43536 () Bool)

(assert (= bs!43536 (and d!62346 b!95121 d!61796)))

(assert (=> bs!43536 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))) (= lambda!11316 lambda!11299))))

(declare-fun bs!43537 () Bool)

(assert (= bs!43537 (and d!62346 b!95121 d!61788 b!95125)))

(assert (=> bs!43537 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) (= lambda!11316 lambda!11298))))

(assert (=> bs!43525 true))

(declare-fun res!49634 () Bool)

(declare-fun e!52116 () Bool)

(assert (=> bs!43525 (=> (not res!49634) (not e!52116))))

(declare-fun lt!21949 () Option!768)

(assert (=> bs!43525 (= res!49634 (isDefined!27 lt!21949))))

(assert (=> bs!43525 (= lt!21949 (map!733 (find!8 transfers!5 lambda!11316) lambda!11268))))

(declare-fun lt!21950 () Int)

(assert (=> bs!43525 (= lt!21950 (_2!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(assert (=> bs!43525 (= (dynLambda!1156 lambda!11273 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) e!52116)))

(declare-fun b!95600 () Bool)

(declare-fun e!52117 () Bool)

(assert (=> b!95600 (= e!52117 (> (get!1256 lt!21949) 0))))

(declare-fun b!95597 () Bool)

(declare-fun res!49637 () Bool)

(assert (=> b!95597 (=> (not res!49637) (not e!52116))))

(declare-fun e!52118 () Bool)

(assert (=> b!95597 (= res!49637 e!52118)))

(declare-fun res!49635 () Bool)

(assert (=> b!95597 (=> res!49635 e!52118)))

(assert (=> b!95597 (= res!49635 (= (get!1256 lt!21949) 0))))

(declare-fun b!95598 () Bool)

(assert (=> b!95598 (= e!52118 (= lt!21950 0))))

(declare-fun b!95599 () Bool)

(assert (=> b!95599 (= e!52116 e!52117)))

(declare-fun res!49636 () Bool)

(assert (=> b!95599 (=> res!49636 e!52117)))

(assert (=> b!95599 (= res!49636 (> lt!21950 0))))

(assert (= (and bs!43525 res!49634) b!95597))

(assert (= (and b!95597 (not res!49635)) b!95598))

(assert (= (and b!95597 res!49637) b!95599))

(assert (= (and b!95599 (not res!49636)) b!95600))

(declare-fun m!91091 () Bool)

(assert (=> bs!43525 m!91091))

(declare-fun m!91093 () Bool)

(assert (=> bs!43525 m!91093))

(assert (=> bs!43525 m!91093))

(declare-fun m!91095 () Bool)

(assert (=> bs!43525 m!91095))

(declare-fun m!91097 () Bool)

(assert (=> b!95600 m!91097))

(assert (=> b!95597 m!91097))

(assert (=> b!95579 d!62346))

(declare-fun b_lambda!19377 () Bool)

(assert (= b_lambda!19319 (or d!61880 b_lambda!19377)))

(declare-fun bs!43538 () Bool)

(declare-fun d!62348 () Bool)

(assert (= bs!43538 (and d!62348 d!61880)))

(assert (=> bs!43538 (= (dynLambda!1156 lambda!11307 (h!7729 lt!21887)) (= (_1!300 (_1!301 (h!7729 lt!21887))) (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))))

(assert (=> b!95529 d!62348))

(declare-fun b_lambda!19379 () Bool)

(assert (= b_lambda!19335 (or d!61785 b_lambda!19379)))

(declare-fun bs!43539 () Bool)

(declare-fun d!62350 () Bool)

(assert (= bs!43539 (and d!62350 d!61785)))

(assert (=> bs!43539 (= (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))) (_2!301 (h!7729 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))))))

(assert (=> b!95572 d!62350))

(declare-fun b_lambda!19381 () Bool)

(assert (= b_lambda!19329 (or bs!43480 b_lambda!19381)))

(declare-fun bs!43540 () Bool)

(declare-fun d!62352 () Bool)

(assert (= bs!43540 (and d!62352 d!62142 b!95121)))

(assert (=> bs!43540 (= (dynLambda!1156 lambda!11315 (v!3224 lt!21940)) (= (_1!301 (v!3224 lt!21940)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))

(assert (=> b!95561 d!62352))

(declare-fun b_lambda!19383 () Bool)

(assert (= b_lambda!19313 (or d!61928 b_lambda!19383)))

(declare-fun bs!43541 () Bool)

(declare-fun d!62354 () Bool)

(assert (= bs!43541 (and d!62354 d!61928)))

(assert (=> bs!43541 (= (dynLambda!1156 lambda!11311 (h!7729 (t!56042 transfers!5))) (= (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))))

(assert (=> b!95520 d!62354))

(declare-fun b_lambda!19385 () Bool)

(assert (= b_lambda!19311 (or d!61782 b_lambda!19385)))

(declare-fun bs!43542 () Bool)

(declare-fun d!62356 () Bool)

(assert (= bs!43542 (and d!62356 d!61782)))

(assert (=> bs!43542 (= (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))) (_2!301 (h!7729 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))))))

(assert (=> b!95511 d!62356))

(declare-fun b_lambda!19387 () Bool)

(assert (= b_lambda!19343 (or d!61782 b_lambda!19387)))

(declare-fun bs!43543 () Bool)

(declare-fun d!62358 () Bool)

(assert (= bs!43543 (and d!62358 d!61782)))

(assert (=> bs!43543 (= (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))) (+ (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))))))

(assert (=> b!95592 d!62358))

(declare-fun b_lambda!19389 () Bool)

(assert (= b_lambda!19341 (or start!15478 b_lambda!19389)))

(declare-fun bs!43544 () Bool)

(declare-fun d!62360 () Bool)

(assert (= bs!43544 (and d!62360 start!15478)))

(assert (=> bs!43544 (= (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))) (+ (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))))))

(assert (=> b!95582 d!62360))

(declare-fun b_lambda!19391 () Bool)

(assert (= b_lambda!19315 (or d!61785 b_lambda!19391)))

(declare-fun bs!43545 () Bool)

(declare-fun d!62362 () Bool)

(assert (= bs!43545 (and d!62362 d!61785)))

(assert (=> bs!43545 (= (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))) (_2!301 (h!7729 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))))

(assert (=> b!95522 d!62362))

(declare-fun b_lambda!19393 () Bool)

(assert (= b_lambda!19295 (or start!15478 b_lambda!19393)))

(declare-fun bs!43546 () Bool)

(declare-fun d!62364 () Bool)

(assert (= bs!43546 (and d!62364 start!15478)))

(assert (=> bs!43546 (= (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_2!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(assert (=> b!95478 d!62364))

(declare-fun b_lambda!19395 () Bool)

(assert (= b_lambda!19323 (or bs!43434 b_lambda!19395)))

(declare-fun bs!43547 () Bool)

(declare-fun d!62366 () Bool)

(assert (= bs!43547 (and d!62366 d!61972 b!95121)))

(assert (=> bs!43547 (= (dynLambda!1156 lambda!11313 (h!7729 (t!56042 transfers!5))) (= (_1!301 (h!7729 (t!56042 transfers!5))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))))))))

(assert (=> b!95549 d!62366))

(declare-fun b_lambda!19397 () Bool)

(assert (= b_lambda!19327 (or start!15478 b_lambda!19397)))

(declare-fun bs!43548 () Bool)

(declare-fun d!62368 () Bool)

(assert (= bs!43548 (and d!62368 start!15478)))

(assert (=> bs!43548 (= (dynLambda!1158 lambda!11268 (v!3224 (find!8 transfers!5 lambda!11315))) (_2!301 (v!3224 (find!8 transfers!5 lambda!11315))))))

(assert (=> b!95560 d!62368))

(declare-fun b_lambda!19399 () Bool)

(assert (= b_lambda!19303 (or bs!43369 b_lambda!19399)))

(declare-fun bs!43549 () Bool)

(declare-fun d!62370 () Bool)

(assert (= bs!43549 (and d!62370 d!61844 b!95121)))

(assert (=> bs!43549 (= (dynLambda!1156 lambda!11303 (v!3224 lt!21918)) (= (_1!301 (v!3224 lt!21918)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))))))

(assert (=> b!95494 d!62370))

(declare-fun b_lambda!19401 () Bool)

(assert (= b_lambda!19287 (or b!95120 b_lambda!19401)))

(declare-fun bs!43550 () Bool)

(declare-fun d!62372 () Bool)

(assert (= bs!43550 (and d!62372 b!95120)))

(assert (=> bs!43550 (= (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(assert (=> b!95462 d!62372))

(declare-fun b_lambda!19403 () Bool)

(assert (= b_lambda!19299 (or d!61785 b_lambda!19403)))

(declare-fun bs!43551 () Bool)

(declare-fun d!62374 () Bool)

(assert (= bs!43551 (and d!62374 d!61785)))

(assert (=> bs!43551 (= (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))) (and (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))))))

(assert (=> b!95484 d!62374))

(declare-fun b_lambda!19405 () Bool)

(assert (= b_lambda!19301 (or d!61880 b_lambda!19405)))

(declare-fun bs!43552 () Bool)

(declare-fun d!62376 () Bool)

(assert (= bs!43552 (and d!62376 d!61880)))

(assert (=> bs!43552 (= (dynLambda!1156 lambda!11307 (h!7729 (t!56042 transfers!5))) (= (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))))

(assert (=> b!95491 d!62376))

(declare-fun b_lambda!19407 () Bool)

(assert (= b_lambda!19333 (or d!61904 b_lambda!19407)))

(declare-fun bs!43553 () Bool)

(declare-fun d!62378 () Bool)

(assert (= bs!43553 (and d!62378 d!61904)))

(assert (=> bs!43553 (= (dynLambda!1156 lambda!11308 (h!7729 (t!56042 transfers!5))) (not (dynLambda!1156 lambda!11304 (h!7729 (t!56042 transfers!5)))))))

(declare-fun b_lambda!19415 () Bool)

(assert (=> (not b_lambda!19415) (not bs!43553)))

(declare-fun m!91099 () Bool)

(assert (=> bs!43553 m!91099))

(assert (=> b!95567 d!62378))

(declare-fun b_lambda!19409 () Bool)

(assert (= b_lambda!19325 (or d!61928 b_lambda!19409)))

(declare-fun bs!43554 () Bool)

(declare-fun d!62380 () Bool)

(assert (= bs!43554 (and d!62380 d!61928)))

(assert (=> bs!43554 (= (dynLambda!1156 lambda!11311 (h!7729 lt!21882)) (= (_2!300 (_1!301 (h!7729 lt!21882))) (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))))

(assert (=> b!95555 d!62380))

(push 1)

(assert (not b!95580))

(assert (not b!95592))

(assert (not b!95540))

(assert (not b_lambda!19271))

(assert (not b!95590))

(assert (not b!95534))

(assert (not b_lambda!19237))

(assert (not b!95522))

(assert (not b_lambda!19359))

(assert (not d!62218))

(assert (not b!95503))

(assert (not b_lambda!19083))

(assert (not b!95480))

(assert (not b_lambda!19087))

(assert (not b_lambda!19151))

(assert (not b!95518))

(assert (not d!62204))

(assert (not b_lambda!19227))

(assert (not b_lambda!19403))

(assert (not b!95487))

(assert (not d!62282))

(assert (not b_lambda!19255))

(assert (not b!95472))

(assert (not b_lambda!19035))

(assert (not b_lambda!19147))

(assert (not b_lambda!19357))

(assert (not b_lambda!19267))

(assert (not b_lambda!19363))

(assert (not b_lambda!19167))

(assert (not b_lambda!19369))

(assert (not b!95536))

(assert (not b_lambda!19067))

(assert (not b!95548))

(assert (not b!95554))

(assert (not b!95511))

(assert (not b_lambda!19373))

(assert (not b!95562))

(assert (not b_lambda!19251))

(assert (not b_lambda!19243))

(assert (not b_lambda!19137))

(assert (not b_lambda!19381))

(assert (not b_lambda!19149))

(assert (not b!95489))

(assert (not b_lambda!19379))

(assert (not b_lambda!19275))

(assert (not b!95484))

(assert (not b_lambda!19031))

(assert (not b_lambda!19157))

(assert (not b!95544))

(assert (not b!95476))

(assert (not b_lambda!19139))

(assert (not b_lambda!19351))

(assert (not b_lambda!19239))

(assert (not b!95497))

(assert (not b!95588))

(assert (not b_lambda!19233))

(assert (not b_lambda!19365))

(assert (not b_lambda!19263))

(assert (not b!95530))

(assert (not b!95478))

(assert (not b_lambda!19071))

(assert (not b_lambda!19277))

(assert (not b!95462))

(assert (not b!95474))

(assert (not b!95464))

(assert (not b!95576))

(assert (not b!95528))

(assert (not b!95482))

(assert (not b_lambda!19259))

(assert (not b!95546))

(assert (not b_lambda!19411))

(assert (not b_lambda!19253))

(assert (not b_lambda!19377))

(assert (not b_lambda!19077))

(assert (not d!62236))

(assert (not b_lambda!19283))

(assert (not d!62294))

(assert (not b_lambda!19081))

(assert (not b_lambda!19393))

(assert (not b_lambda!19355))

(assert (not b!95470))

(assert (not b_lambda!19273))

(assert (not b!95572))

(assert (not b_lambda!19075))

(assert (not b!95466))

(assert (not b_lambda!19029))

(assert (not b!95558))

(assert (not b_lambda!19247))

(assert (not b!95516))

(assert (not b_lambda!19165))

(assert (not b_lambda!19033))

(assert (not b_lambda!19155))

(assert (not b!95468))

(assert (not b_lambda!19413))

(assert (not b_lambda!19257))

(assert (not b_lambda!19241))

(assert (not b_lambda!19405))

(assert (not d!62208))

(assert (not b_lambda!19135))

(assert (not b_lambda!19069))

(assert (not b_lambda!19163))

(assert (not b!95596))

(assert (not b_lambda!19349))

(assert (not b!95507))

(assert (not b_lambda!19065))

(assert (not b!95568))

(assert (not b_lambda!19161))

(assert (not b_lambda!19261))

(assert (not b_lambda!19169))

(assert (not b_lambda!19387))

(assert (not b!95594))

(assert (not b!95495))

(assert (not b_lambda!19027))

(assert (not b_lambda!19371))

(assert (not b!95550))

(assert (not b!95542))

(assert (not b!95493))

(assert (not d!62280))

(assert (not b!95578))

(assert (not d!62180))

(assert (not b_lambda!19153))

(assert (not b!95514))

(assert (not b_lambda!19159))

(assert (not b!95584))

(assert (not b!95501))

(assert (not b!95600))

(assert (not b!95505))

(assert (not b_lambda!19397))

(assert (not b_lambda!19285))

(assert (not b_lambda!19395))

(assert (not b_lambda!19361))

(assert (not b!95526))

(assert (not b_lambda!19389))

(assert (not b_lambda!19145))

(assert (not b_lambda!19173))

(assert (not b_lambda!19089))

(assert (not b_lambda!19409))

(assert (not d!62240))

(assert (not b_lambda!19383))

(assert (not b!95564))

(assert (not b!95582))

(assert (not b_lambda!19269))

(assert (not b_lambda!19385))

(assert (not b_lambda!19407))

(assert (not b_lambda!19245))

(assert (not b!95586))

(assert (not b_lambda!19399))

(assert (not b_lambda!19375))

(assert (not b!95574))

(assert (not bs!43525))

(assert (not b_lambda!19235))

(assert (not d!62232))

(assert (not b_lambda!19143))

(assert (not d!62190))

(assert (not b!95524))

(assert (not b_lambda!19037))

(assert (not b_lambda!19415))

(assert (not b!95485))

(assert (not b!95513))

(assert (not b!95556))

(assert (not b_lambda!19085))

(assert (not b!95597))

(assert (not b_lambda!19079))

(assert (not b_lambda!19131))

(assert (not b!95538))

(assert (not b_lambda!19231))

(assert (not b_lambda!19353))

(assert (not b!95532))

(assert (not b_lambda!19401))

(assert (not b_lambda!19265))

(assert (not b_lambda!19073))

(assert (not b_lambda!19133))

(assert (not b_lambda!19229))

(assert (not b_lambda!19367))

(assert (not b!95570))

(assert (not b_lambda!19141))

(assert (not b_lambda!19249))

(assert (not d!62210))

(assert (not b_lambda!19391))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19417 () Bool)

(assert (= b_lambda!19411 (or bs!43417 b_lambda!19417)))

(declare-fun bs!43555 () Bool)

(declare-fun d!62382 () Bool)

(assert (= bs!43555 (and d!62382 d!61956 b!95125)))

(assert (=> bs!43555 (= (dynLambda!1156 lambda!11312 (h!7729 transfers!5)) (= (_1!301 (h!7729 transfers!5)) (h!7730 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))))))

(assert (=> bs!43519 d!62382))

(declare-fun b_lambda!19419 () Bool)

(assert (= b_lambda!19415 (or bs!43373 b_lambda!19419)))

(declare-fun bs!43556 () Bool)

(declare-fun d!62384 () Bool)

(assert (= bs!43556 (and d!62384 d!61846 b!95125)))

(assert (=> bs!43556 (= (dynLambda!1156 lambda!11304 (h!7729 (t!56042 transfers!5))) (= (_1!301 (h!7729 (t!56042 transfers!5))) (h!7730 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))))))

(assert (=> bs!43553 d!62384))

(declare-fun b_lambda!19421 () Bool)

(assert (= b_lambda!19413 (or bs!43355 b_lambda!19421)))

(declare-fun bs!43557 () Bool)

(declare-fun d!62386 () Bool)

(assert (= bs!43557 (and d!62386 d!61788 b!95125)))

(assert (=> bs!43557 (= (dynLambda!1156 lambda!11298 (h!7729 (t!56042 (t!56042 transfers!5)))) (= (_1!301 (h!7729 (t!56042 (t!56042 transfers!5)))) (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))))

(assert (=> bs!43520 d!62386))

(push 1)

(assert (not b!95580))

(assert (not b!95592))

(assert (not b!95540))

(assert (not b_lambda!19271))

(assert (not b!95590))

(assert (not b!95534))

(assert (not b_lambda!19237))

(assert (not b!95522))

(assert (not b_lambda!19359))

(assert (not d!62218))

(assert (not b!95503))

(assert (not b_lambda!19083))

(assert (not b!95480))

(assert (not b_lambda!19087))

(assert (not b_lambda!19151))

(assert (not b!95518))

(assert (not d!62204))

(assert (not b_lambda!19227))

(assert (not b_lambda!19403))

(assert (not b!95487))

(assert (not d!62282))

(assert (not b_lambda!19255))

(assert (not b!95472))

(assert (not b_lambda!19035))

(assert (not b_lambda!19147))

(assert (not b_lambda!19357))

(assert (not b_lambda!19267))

(assert (not b_lambda!19363))

(assert (not b_lambda!19167))

(assert (not b_lambda!19369))

(assert (not b!95536))

(assert (not b_lambda!19067))

(assert (not b!95548))

(assert (not b!95554))

(assert (not b!95511))

(assert (not b_lambda!19373))

(assert (not b!95562))

(assert (not b_lambda!19251))

(assert (not b_lambda!19243))

(assert (not b_lambda!19137))

(assert (not b_lambda!19381))

(assert (not b_lambda!19149))

(assert (not b!95489))

(assert (not b_lambda!19379))

(assert (not b_lambda!19275))

(assert (not b!95484))

(assert (not b_lambda!19031))

(assert (not b_lambda!19157))

(assert (not b_lambda!19421))

(assert (not b!95544))

(assert (not b!95476))

(assert (not b_lambda!19139))

(assert (not b_lambda!19351))

(assert (not b_lambda!19239))

(assert (not b!95497))

(assert (not b!95588))

(assert (not b_lambda!19233))

(assert (not b_lambda!19365))

(assert (not b_lambda!19263))

(assert (not b!95530))

(assert (not b!95478))

(assert (not b_lambda!19071))

(assert (not b_lambda!19277))

(assert (not b!95462))

(assert (not b!95474))

(assert (not b!95464))

(assert (not b!95576))

(assert (not b!95528))

(assert (not b!95482))

(assert (not b_lambda!19259))

(assert (not b!95546))

(assert (not b_lambda!19253))

(assert (not b_lambda!19377))

(assert (not b_lambda!19077))

(assert (not d!62236))

(assert (not b_lambda!19283))

(assert (not d!62294))

(assert (not b_lambda!19081))

(assert (not b_lambda!19393))

(assert (not b_lambda!19355))

(assert (not b!95470))

(assert (not b_lambda!19273))

(assert (not b!95572))

(assert (not b_lambda!19075))

(assert (not b!95466))

(assert (not b_lambda!19029))

(assert (not b!95558))

(assert (not b_lambda!19247))

(assert (not b!95516))

(assert (not b_lambda!19165))

(assert (not b_lambda!19033))

(assert (not b_lambda!19155))

(assert (not b!95468))

(assert (not b_lambda!19257))

(assert (not b_lambda!19241))

(assert (not b_lambda!19405))

(assert (not d!62208))

(assert (not b_lambda!19135))

(assert (not b_lambda!19069))

(assert (not b_lambda!19163))

(assert (not b!95596))

(assert (not b_lambda!19349))

(assert (not b!95507))

(assert (not b_lambda!19065))

(assert (not b!95568))

(assert (not b_lambda!19161))

(assert (not b_lambda!19261))

(assert (not b_lambda!19169))

(assert (not b_lambda!19387))

(assert (not b!95594))

(assert (not b!95495))

(assert (not b_lambda!19027))

(assert (not b_lambda!19371))

(assert (not b!95550))

(assert (not b!95542))

(assert (not b!95493))

(assert (not d!62280))

(assert (not b!95578))

(assert (not d!62180))

(assert (not b_lambda!19153))

(assert (not b!95514))

(assert (not b_lambda!19159))

(assert (not b!95584))

(assert (not b!95501))

(assert (not b!95600))

(assert (not b!95505))

(assert (not b_lambda!19397))

(assert (not b_lambda!19285))

(assert (not b_lambda!19395))

(assert (not b_lambda!19361))

(assert (not b!95526))

(assert (not b_lambda!19389))

(assert (not b_lambda!19145))

(assert (not b_lambda!19173))

(assert (not b_lambda!19089))

(assert (not b_lambda!19409))

(assert (not d!62240))

(assert (not b_lambda!19419))

(assert (not b_lambda!19383))

(assert (not b!95564))

(assert (not b!95582))

(assert (not b_lambda!19269))

(assert (not b_lambda!19385))

(assert (not b_lambda!19407))

(assert (not b_lambda!19245))

(assert (not b!95586))

(assert (not b_lambda!19399))

(assert (not b_lambda!19375))

(assert (not b!95574))

(assert (not bs!43525))

(assert (not b_lambda!19235))

(assert (not d!62232))

(assert (not b_lambda!19143))

(assert (not d!62190))

(assert (not b!95524))

(assert (not b_lambda!19037))

(assert (not b!95485))

(assert (not b!95513))

(assert (not b!95556))

(assert (not b_lambda!19085))

(assert (not b!95597))

(assert (not b_lambda!19079))

(assert (not b_lambda!19131))

(assert (not b_lambda!19417))

(assert (not b!95538))

(assert (not b_lambda!19231))

(assert (not b_lambda!19353))

(assert (not b!95532))

(assert (not b_lambda!19401))

(assert (not b_lambda!19265))

(assert (not b_lambda!19073))

(assert (not b_lambda!19133))

(assert (not b_lambda!19229))

(assert (not b_lambda!19367))

(assert (not b!95570))

(assert (not b_lambda!19141))

(assert (not b_lambda!19249))

(assert (not d!62210))

(assert (not b_lambda!19391))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!62388 () Bool)

(assert (=> d!62388 (= (get!1256 lt!21949) (v!3223 lt!21949))))

(assert (=> b!95597 d!62388))

(declare-fun d!62390 () Bool)

(declare-fun res!49638 () Bool)

(declare-fun e!52119 () Bool)

(assert (=> d!62390 (=> res!49638 e!52119)))

(assert (=> d!62390 (= res!49638 (is-Nil!836 (t!56042 lt!21887)))))

(assert (=> d!62390 (= (forall!87 (t!56042 lt!21887) lambda!11307) e!52119)))

(declare-fun b!95601 () Bool)

(declare-fun e!52120 () Bool)

(assert (=> b!95601 (= e!52119 e!52120)))

(declare-fun res!49639 () Bool)

(assert (=> b!95601 (=> (not res!49639) (not e!52120))))

(assert (=> b!95601 (= res!49639 (dynLambda!1156 lambda!11307 (h!7729 (t!56042 lt!21887))))))

(declare-fun b!95602 () Bool)

(assert (=> b!95602 (= e!52120 (forall!87 (t!56042 (t!56042 lt!21887)) lambda!11307))))

(assert (= (and d!62390 (not res!49638)) b!95601))

(assert (= (and b!95601 res!49639) b!95602))

(declare-fun b_lambda!19423 () Bool)

(assert (=> (not b_lambda!19423) (not b!95601)))

(declare-fun m!91101 () Bool)

(assert (=> b!95601 m!91101))

(declare-fun m!91103 () Bool)

(assert (=> b!95602 m!91103))

(assert (=> b!95530 d!62390))

(declare-fun d!62392 () Bool)

(declare-fun lt!21951 () Int)

(assert (=> d!62392 (>= lt!21951 0)))

(declare-fun e!52121 () Int)

(assert (=> d!62392 (= lt!21951 e!52121)))

(declare-fun c!23516 () Bool)

(assert (=> d!62392 (= c!23516 (is-Nil!837 lt!21909))))

(assert (=> d!62392 (= (size!1001 lt!21909) lt!21951)))

(declare-fun b!95603 () Bool)

(assert (=> b!95603 (= e!52121 0)))

(declare-fun b!95604 () Bool)

(assert (=> b!95604 (= e!52121 (+ 1 (size!1001 (t!56043 lt!21909))))))

(assert (= (and d!62392 c!23516) b!95603))

(assert (= (and d!62392 (not c!23516)) b!95604))

(declare-fun m!91105 () Bool)

(assert (=> b!95604 m!91105))

(assert (=> d!62180 d!62392))

(declare-fun d!62394 () Bool)

(declare-fun lt!21952 () Int)

(assert (=> d!62394 (>= lt!21952 0)))

(declare-fun e!52122 () Int)

(assert (=> d!62394 (= lt!21952 e!52122)))

(declare-fun c!23517 () Bool)

(assert (=> d!62394 (= c!23517 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (=> d!62394 (= (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lt!21952)))

(declare-fun b!95605 () Bool)

(assert (=> b!95605 (= e!52122 0)))

(declare-fun b!95606 () Bool)

(assert (=> b!95606 (= e!52122 (+ 1 (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(assert (= (and d!62394 c!23517) b!95605))

(assert (= (and d!62394 (not c!23517)) b!95606))

(declare-fun m!91107 () Bool)

(assert (=> b!95606 m!91107))

(assert (=> d!62180 d!62394))

(declare-fun d!62396 () Bool)

(declare-fun lt!21953 () Int)

(assert (=> d!62396 (>= lt!21953 0)))

(declare-fun e!52123 () Int)

(assert (=> d!62396 (= lt!21953 e!52123)))

(declare-fun c!23518 () Bool)

(assert (=> d!62396 (= c!23518 (is-Nil!838 (t!56044 (t!56044 (t!56044 (t!56044 lt!21819))))))))

(assert (=> d!62396 (= (size!1003 (t!56044 (t!56044 (t!56044 (t!56044 lt!21819))))) lt!21953)))

(declare-fun b!95607 () Bool)

(assert (=> b!95607 (= e!52123 0)))

(declare-fun b!95608 () Bool)

(assert (=> b!95608 (= e!52123 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 lt!21819))))))))))

(assert (= (and d!62396 c!23518) b!95607))

(assert (= (and d!62396 (not c!23518)) b!95608))

(declare-fun m!91109 () Bool)

(assert (=> b!95608 m!91109))

(assert (=> b!95570 d!62396))

(declare-fun d!62398 () Bool)

(declare-fun res!49640 () Bool)

(declare-fun e!52124 () Bool)

(assert (=> d!62398 (=> res!49640 e!52124)))

(assert (=> d!62398 (= res!49640 (is-Nil!836 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(assert (=> d!62398 (= (forall!87 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11302) e!52124)))

(declare-fun b!95609 () Bool)

(declare-fun e!52125 () Bool)

(assert (=> b!95609 (= e!52124 e!52125)))

(declare-fun res!49641 () Bool)

(assert (=> b!95609 (=> (not res!49641) (not e!52125))))

(assert (=> b!95609 (= res!49641 (dynLambda!1156 lambda!11302 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(declare-fun b!95610 () Bool)

(assert (=> b!95610 (= e!52125 (forall!87 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11302))))

(assert (= (and d!62398 (not res!49640)) b!95609))

(assert (= (and b!95609 res!49641) b!95610))

(declare-fun b_lambda!19425 () Bool)

(assert (=> (not b_lambda!19425) (not b!95609)))

(declare-fun m!91111 () Bool)

(assert (=> b!95609 m!91111))

(declare-fun m!91113 () Bool)

(assert (=> b!95610 m!91113))

(assert (=> b!95482 d!62398))

(declare-fun d!62400 () Bool)

(assert (=> d!62400 (= ($colon$colon!30 (map!730 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lambda!11271) (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (Cons!835 (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) (map!730 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lambda!11271)))))

(assert (=> b!95462 d!62400))

(declare-fun d!62402 () Bool)

(declare-fun lt!21954 () List!897)

(assert (=> d!62402 (= (size!1001 lt!21954) (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(declare-fun e!52126 () List!897)

(assert (=> d!62402 (= lt!21954 e!52126)))

(declare-fun c!23519 () Bool)

(assert (=> d!62402 (= c!23519 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(assert (=> d!62402 (= (map!730 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lambda!11271) lt!21954)))

(declare-fun b!95611 () Bool)

(assert (=> b!95611 (= e!52126 Nil!837)))

(declare-fun b!95612 () Bool)

(assert (=> b!95612 (= e!52126 ($colon$colon!30 (map!730 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) lambda!11271) (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))

(assert (= (and d!62402 c!23519) b!95611))

(assert (= (and d!62402 (not c!23519)) b!95612))

(declare-fun b_lambda!19427 () Bool)

(assert (=> (not b_lambda!19427) (not b!95612)))

(declare-fun m!91115 () Bool)

(assert (=> d!62402 m!91115))

(assert (=> d!62402 m!91107))

(declare-fun m!91117 () Bool)

(assert (=> b!95612 m!91117))

(declare-fun m!91119 () Bool)

(assert (=> b!95612 m!91119))

(assert (=> b!95612 m!91117))

(assert (=> b!95612 m!91119))

(declare-fun m!91121 () Bool)

(assert (=> b!95612 m!91121))

(assert (=> b!95462 d!62402))

(declare-fun d!62404 () Bool)

(declare-fun lt!21955 () Int)

(assert (=> d!62404 (>= lt!21955 0)))

(declare-fun e!52127 () Int)

(assert (=> d!62404 (= lt!21955 e!52127)))

(declare-fun c!23520 () Bool)

(assert (=> d!62404 (= c!23520 (is-Nil!838 (t!56044 lt!21888)))))

(assert (=> d!62404 (= (size!1003 (t!56044 lt!21888)) lt!21955)))

(declare-fun b!95613 () Bool)

(assert (=> b!95613 (= e!52127 0)))

(declare-fun b!95614 () Bool)

(assert (=> b!95614 (= e!52127 (+ 1 (size!1003 (t!56044 (t!56044 lt!21888)))))))

(assert (= (and d!62404 c!23520) b!95613))

(assert (= (and d!62404 (not c!23520)) b!95614))

(declare-fun m!91123 () Bool)

(assert (=> b!95614 m!91123))

(assert (=> b!95554 d!62404))

(declare-fun b!95615 () Bool)

(declare-fun e!52128 () Bool)

(declare-fun lt!21956 () Option!769)

(assert (=> b!95615 (= e!52128 (dynLambda!1156 lambda!11299 (v!3224 lt!21956)))))

(declare-fun b!95616 () Bool)

(declare-fun e!52131 () Option!769)

(assert (=> b!95616 (= e!52131 (find!8 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lambda!11299))))

(declare-fun d!62406 () Bool)

(declare-fun e!52130 () Bool)

(assert (=> d!62406 e!52130))

(declare-fun res!49642 () Bool)

(assert (=> d!62406 (=> res!49642 e!52130)))

(assert (=> d!62406 (= res!49642 (not (is-Some!740 lt!21956)))))

(declare-fun e!52129 () Option!769)

(assert (=> d!62406 (= lt!21956 e!52129)))

(declare-fun c!23522 () Bool)

(assert (=> d!62406 (= c!23522 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (=> d!62406 (= (find!8 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11299) lt!21956)))

(declare-fun b!95617 () Bool)

(assert (=> b!95617 (= e!52129 e!52131)))

(declare-fun c!23521 () Bool)

(assert (=> b!95617 (= c!23521 (dynLambda!1156 lambda!11299 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(declare-fun b!95618 () Bool)

(assert (=> b!95618 (= e!52130 e!52128)))

(declare-fun res!49643 () Bool)

(assert (=> b!95618 (=> (not res!49643) (not e!52128))))

(assert (=> b!95618 (= res!49643 (member (v!3224 lt!21956) (content!207 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(declare-fun b!95619 () Bool)

(assert (=> b!95619 (= e!52129 None!741)))

(declare-fun b!95620 () Bool)

(assert (=> b!95620 (= e!52131 (Some!740 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(assert (= (and b!95617 c!23521) b!95620))

(assert (= (and b!95617 (not c!23521)) b!95616))

(assert (= (and d!62406 c!23522) b!95619))

(assert (= (and d!62406 (not c!23522)) b!95617))

(assert (= (and d!62406 (not res!49642)) b!95618))

(assert (= (and b!95618 res!49643) b!95615))

(declare-fun b_lambda!19429 () Bool)

(assert (=> (not b_lambda!19429) (not b!95615)))

(declare-fun b_lambda!19431 () Bool)

(assert (=> (not b_lambda!19431) (not b!95617)))

(declare-fun m!91125 () Bool)

(assert (=> b!95615 m!91125))

(declare-fun m!91127 () Bool)

(assert (=> b!95616 m!91127))

(declare-fun m!91129 () Bool)

(assert (=> b!95617 m!91129))

(declare-fun m!91131 () Bool)

(assert (=> b!95618 m!91131))

(declare-fun m!91133 () Bool)

(assert (=> b!95618 m!91133))

(assert (=> b!95505 d!62406))

(declare-fun b!95621 () Bool)

(declare-fun e!52132 () Bool)

(declare-fun lt!21957 () Option!769)

(assert (=> b!95621 (= e!52132 (dynLambda!1156 lambda!11303 (v!3224 lt!21957)))))

(declare-fun b!95622 () Bool)

(declare-fun e!52135 () Option!769)

(assert (=> b!95622 (= e!52135 (find!8 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11303))))

(declare-fun d!62408 () Bool)

(declare-fun e!52134 () Bool)

(assert (=> d!62408 e!52134))

(declare-fun res!49644 () Bool)

(assert (=> d!62408 (=> res!49644 e!52134)))

(assert (=> d!62408 (= res!49644 (not (is-Some!740 lt!21957)))))

(declare-fun e!52133 () Option!769)

(assert (=> d!62408 (= lt!21957 e!52133)))

(declare-fun c!23524 () Bool)

(assert (=> d!62408 (= c!23524 (is-Nil!836 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(assert (=> d!62408 (= (find!8 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11303) lt!21957)))

(declare-fun b!95623 () Bool)

(assert (=> b!95623 (= e!52133 e!52135)))

(declare-fun c!23523 () Bool)

(assert (=> b!95623 (= c!23523 (dynLambda!1156 lambda!11303 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(declare-fun b!95624 () Bool)

(assert (=> b!95624 (= e!52134 e!52132)))

(declare-fun res!49645 () Bool)

(assert (=> b!95624 (=> (not res!49645) (not e!52132))))

(assert (=> b!95624 (= res!49645 (member (v!3224 lt!21957) (content!207 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(declare-fun b!95625 () Bool)

(assert (=> b!95625 (= e!52133 None!741)))

(declare-fun b!95626 () Bool)

(assert (=> b!95626 (= e!52135 (Some!740 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (= (and b!95623 c!23523) b!95626))

(assert (= (and b!95623 (not c!23523)) b!95622))

(assert (= (and d!62408 c!23524) b!95625))

(assert (= (and d!62408 (not c!23524)) b!95623))

(assert (= (and d!62408 (not res!49644)) b!95624))

(assert (= (and b!95624 res!49645) b!95621))

(declare-fun b_lambda!19433 () Bool)

(assert (=> (not b_lambda!19433) (not b!95621)))

(declare-fun b_lambda!19435 () Bool)

(assert (=> (not b_lambda!19435) (not b!95623)))

(declare-fun m!91135 () Bool)

(assert (=> b!95621 m!91135))

(declare-fun m!91137 () Bool)

(assert (=> b!95622 m!91137))

(declare-fun m!91139 () Bool)

(assert (=> b!95623 m!91139))

(assert (=> b!95624 m!90929))

(declare-fun m!91141 () Bool)

(assert (=> b!95624 m!91141))

(assert (=> b!95495 d!62408))

(declare-fun d!62410 () Bool)

(declare-fun lt!21958 () Int)

(assert (=> d!62410 (>= lt!21958 0)))

(declare-fun e!52136 () Int)

(assert (=> d!62410 (= lt!21958 e!52136)))

(declare-fun c!23525 () Bool)

(assert (=> d!62410 (= c!23525 (is-Nil!838 lt!21922))))

(assert (=> d!62410 (= (size!1003 lt!21922) lt!21958)))

(declare-fun b!95627 () Bool)

(assert (=> b!95627 (= e!52136 0)))

(declare-fun b!95628 () Bool)

(assert (=> b!95628 (= e!52136 (+ 1 (size!1003 (t!56044 lt!21922))))))

(assert (= (and d!62410 c!23525) b!95627))

(assert (= (and d!62410 (not c!23525)) b!95628))

(declare-fun m!91143 () Bool)

(assert (=> b!95628 m!91143))

(assert (=> d!62232 d!62410))

(declare-fun d!62412 () Bool)

(declare-fun lt!21959 () Int)

(assert (=> d!62412 (>= lt!21959 0)))

(declare-fun e!52137 () Int)

(assert (=> d!62412 (= lt!21959 e!52137)))

(declare-fun c!23526 () Bool)

(assert (=> d!62412 (= c!23526 (is-Nil!836 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))))))

(assert (=> d!62412 (= (size!1002 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))) lt!21959)))

(declare-fun b!95629 () Bool)

(assert (=> b!95629 (= e!52137 0)))

(declare-fun b!95630 () Bool)

(assert (=> b!95630 (= e!52137 (+ 1 (size!1002 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))))))))

(assert (= (and d!62412 c!23526) b!95629))

(assert (= (and d!62412 (not c!23526)) b!95630))

(declare-fun m!91145 () Bool)

(assert (=> b!95630 m!91145))

(assert (=> d!62232 d!62412))

(declare-fun d!62414 () Bool)

(declare-fun lt!21960 () Int)

(assert (=> d!62414 (>= lt!21960 0)))

(declare-fun e!52138 () Int)

(assert (=> d!62414 (= lt!21960 e!52138)))

(declare-fun c!23527 () Bool)

(assert (=> d!62414 (= c!23527 (is-Nil!838 (t!56044 (t!56044 lt!21848))))))

(assert (=> d!62414 (= (size!1003 (t!56044 (t!56044 lt!21848))) lt!21960)))

(declare-fun b!95631 () Bool)

(assert (=> b!95631 (= e!52138 0)))

(declare-fun b!95632 () Bool)

(assert (=> b!95632 (= e!52138 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 lt!21848))))))))

(assert (= (and d!62414 c!23527) b!95631))

(assert (= (and d!62414 (not c!23527)) b!95632))

(declare-fun m!91147 () Bool)

(assert (=> b!95632 m!91147))

(assert (=> b!95590 d!62414))

(declare-fun b!95633 () Bool)

(declare-fun e!52142 () Bool)

(declare-fun lt!21962 () List!896)

(assert (=> b!95633 (= e!52142 (forall!87 lt!21962 lambda!11307))))

(declare-fun b!95634 () Bool)

(declare-fun e!52139 () List!896)

(assert (=> b!95634 (= e!52139 Nil!836)))

(declare-fun b!95635 () Bool)

(declare-fun res!49646 () Bool)

(assert (=> b!95635 (=> (not res!49646) (not e!52142))))

(assert (=> b!95635 (= res!49646 (subset (content!207 lt!21962) (content!207 (t!56042 (t!56042 transfers!5)))))))

(declare-fun b!95636 () Bool)

(declare-fun e!52140 () List!896)

(declare-fun lt!21961 () List!896)

(assert (=> b!95636 (= e!52140 lt!21961)))

(declare-fun d!62416 () Bool)

(assert (=> d!62416 e!52142))

(declare-fun res!49648 () Bool)

(assert (=> d!62416 (=> (not res!49648) (not e!52142))))

(assert (=> d!62416 (= res!49648 (<= (size!1002 lt!21962) (size!1002 (t!56042 (t!56042 transfers!5)))))))

(assert (=> d!62416 (= lt!21962 e!52139)))

(declare-fun c!23529 () Bool)

(assert (=> d!62416 (= c!23529 (is-Nil!836 (t!56042 (t!56042 transfers!5))))))

(assert (=> d!62416 (= (filter!49 (t!56042 (t!56042 transfers!5)) lambda!11307) lt!21962)))

(declare-fun b!95637 () Bool)

(assert (=> b!95637 (= e!52139 e!52140)))

(declare-fun c!23528 () Bool)

(declare-fun e!52141 () Bool)

(assert (=> b!95637 (= c!23528 e!52141)))

(declare-fun res!49647 () Bool)

(assert (=> b!95637 (=> (not res!49647) (not e!52141))))

(assert (=> b!95637 (= res!49647 (is-Cons!834 (t!56042 (t!56042 transfers!5))))))

(assert (=> b!95637 (= lt!21961 (filter!49 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11307))))

(declare-fun b!95638 () Bool)

(assert (=> b!95638 (= e!52140 (Cons!834 (h!7729 (t!56042 (t!56042 transfers!5))) lt!21961))))

(declare-fun b!95639 () Bool)

(assert (=> b!95639 (= e!52141 (dynLambda!1156 lambda!11307 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(assert (= (and b!95637 res!49647) b!95639))

(assert (= (and b!95637 c!23528) b!95638))

(assert (= (and b!95637 (not c!23528)) b!95636))

(assert (= (and d!62416 c!23529) b!95634))

(assert (= (and d!62416 (not c!23529)) b!95637))

(assert (= (and d!62416 res!49648) b!95635))

(assert (= (and b!95635 res!49646) b!95633))

(declare-fun b_lambda!19437 () Bool)

(assert (=> (not b_lambda!19437) (not b!95639)))

(declare-fun m!91149 () Bool)

(assert (=> b!95635 m!91149))

(assert (=> b!95635 m!90673))

(declare-fun m!91151 () Bool)

(assert (=> b!95633 m!91151))

(declare-fun m!91153 () Bool)

(assert (=> b!95639 m!91153))

(declare-fun m!91155 () Bool)

(assert (=> b!95637 m!91155))

(declare-fun m!91157 () Bool)

(assert (=> d!62416 m!91157))

(assert (=> d!62416 m!90531))

(assert (=> b!95489 d!62416))

(declare-fun d!62418 () Bool)

(assert (=> d!62418 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lambda!11268) (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (Cons!836 (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lambda!11268)))))

(assert (=> b!95478 d!62418))

(declare-fun d!62420 () Bool)

(declare-fun lt!21963 () List!898)

(assert (=> d!62420 (= (size!1003 lt!21963) (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(declare-fun e!52143 () List!898)

(assert (=> d!62420 (= lt!21963 e!52143)))

(declare-fun c!23530 () Bool)

(assert (=> d!62420 (= c!23530 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(assert (=> d!62420 (= (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lambda!11268) lt!21963)))

(declare-fun b!95640 () Bool)

(assert (=> b!95640 (= e!52143 Nil!838)))

(declare-fun b!95641 () Bool)

(assert (=> b!95641 (= e!52143 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) lambda!11268) (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))

(assert (= (and d!62420 c!23530) b!95640))

(assert (= (and d!62420 (not c!23530)) b!95641))

(declare-fun b_lambda!19439 () Bool)

(assert (=> (not b_lambda!19439) (not b!95641)))

(declare-fun m!91159 () Bool)

(assert (=> d!62420 m!91159))

(assert (=> d!62420 m!91107))

(declare-fun m!91161 () Bool)

(assert (=> b!95641 m!91161))

(declare-fun m!91163 () Bool)

(assert (=> b!95641 m!91163))

(assert (=> b!95641 m!91161))

(assert (=> b!95641 m!91163))

(declare-fun m!91165 () Bool)

(assert (=> b!95641 m!91165))

(assert (=> b!95478 d!62420))

(assert (=> b!95503 d!62412))

(declare-fun d!62422 () Bool)

(declare-fun lt!21964 () Int)

(assert (=> d!62422 (>= lt!21964 0)))

(declare-fun e!52144 () Int)

(assert (=> d!62422 (= lt!21964 e!52144)))

(declare-fun c!23531 () Bool)

(assert (=> d!62422 (= c!23531 (is-Nil!838 (t!56044 (t!56044 (t!56044 lt!21834)))))))

(assert (=> d!62422 (= (size!1003 (t!56044 (t!56044 (t!56044 lt!21834)))) lt!21964)))

(declare-fun b!95642 () Bool)

(assert (=> b!95642 (= e!52144 0)))

(declare-fun b!95643 () Bool)

(assert (=> b!95643 (= e!52144 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 (t!56044 lt!21834)))))))))

(assert (= (and d!62422 c!23531) b!95642))

(assert (= (and d!62422 (not c!23531)) b!95643))

(declare-fun m!91167 () Bool)

(assert (=> b!95643 m!91167))

(assert (=> b!95558 d!62422))

(declare-fun d!62424 () Bool)

(declare-fun lt!21965 () Int)

(assert (=> d!62424 (>= lt!21965 0)))

(declare-fun e!52145 () Int)

(assert (=> d!62424 (= lt!21965 e!52145)))

(declare-fun c!23532 () Bool)

(assert (=> d!62424 (= c!23532 (is-Nil!838 (t!56044 (t!56044 lt!21860))))))

(assert (=> d!62424 (= (size!1003 (t!56044 (t!56044 lt!21860))) lt!21965)))

(declare-fun b!95644 () Bool)

(assert (=> b!95644 (= e!52145 0)))

(declare-fun b!95645 () Bool)

(assert (=> b!95645 (= e!52145 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 lt!21860))))))))

(assert (= (and d!62424 c!23532) b!95644))

(assert (= (and d!62424 (not c!23532)) b!95645))

(declare-fun m!91169 () Bool)

(assert (=> b!95645 m!91169))

(assert (=> b!95532 d!62424))

(declare-fun d!62426 () Bool)

(declare-fun lt!21966 () Int)

(assert (=> d!62426 (>= lt!21966 0)))

(declare-fun e!52146 () Int)

(assert (=> d!62426 (= lt!21966 e!52146)))

(declare-fun c!23533 () Bool)

(assert (=> d!62426 (= c!23533 (is-Nil!836 (t!56042 lt!21882)))))

(assert (=> d!62426 (= (size!1002 (t!56042 lt!21882)) lt!21966)))

(declare-fun b!95646 () Bool)

(assert (=> b!95646 (= e!52146 0)))

(declare-fun b!95647 () Bool)

(assert (=> b!95647 (= e!52146 (+ 1 (size!1002 (t!56042 (t!56042 lt!21882)))))))

(assert (= (and d!62426 c!23533) b!95646))

(assert (= (and d!62426 (not c!23533)) b!95647))

(declare-fun m!91171 () Bool)

(assert (=> b!95647 m!91171))

(assert (=> b!95588 d!62426))

(declare-fun d!62428 () Bool)

(declare-fun lt!21967 () Int)

(assert (=> d!62428 (>= lt!21967 0)))

(declare-fun e!52147 () Int)

(assert (=> d!62428 (= lt!21967 e!52147)))

(declare-fun c!23534 () Bool)

(assert (=> d!62428 (= c!23534 (is-Nil!838 (t!56044 lt!21872)))))

(assert (=> d!62428 (= (size!1003 (t!56044 lt!21872)) lt!21967)))

(declare-fun b!95648 () Bool)

(assert (=> b!95648 (= e!52147 0)))

(declare-fun b!95649 () Bool)

(assert (=> b!95649 (= e!52147 (+ 1 (size!1003 (t!56044 (t!56044 lt!21872)))))))

(assert (= (and d!62428 c!23534) b!95648))

(assert (= (and d!62428 (not c!23534)) b!95649))

(declare-fun m!91173 () Bool)

(assert (=> b!95649 m!91173))

(assert (=> b!95501 d!62428))

(declare-fun d!62430 () Bool)

(declare-fun c!23535 () Bool)

(assert (=> d!62430 (= c!23535 (is-Nil!838 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))))))

(declare-fun e!52148 () Int)

(assert (=> d!62430 (= (foldLeft!11 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))) lambda!11284) e!52148)))

(declare-fun b!95650 () Bool)

(assert (=> b!95650 (= e!52148 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))))))

(declare-fun b!95651 () Bool)

(assert (=> b!95651 (= e!52148 (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))) (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))))) lambda!11284))))

(assert (= (and d!62430 c!23535) b!95650))

(assert (= (and d!62430 (not c!23535)) b!95651))

(declare-fun b_lambda!19441 () Bool)

(assert (=> (not b_lambda!19441) (not b!95651)))

(assert (=> b!95651 m!91053))

(declare-fun m!91175 () Bool)

(assert (=> b!95651 m!91175))

(assert (=> b!95651 m!91175))

(declare-fun m!91177 () Bool)

(assert (=> b!95651 m!91177))

(assert (=> b!95574 d!62430))

(declare-fun b!95652 () Bool)

(declare-fun e!52149 () Bool)

(declare-fun lt!21968 () Option!769)

(assert (=> b!95652 (= e!52149 (dynLambda!1156 lambda!11313 (v!3224 lt!21968)))))

(declare-fun b!95653 () Bool)

(declare-fun e!52152 () Option!769)

(assert (=> b!95653 (= e!52152 (find!8 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11313))))

(declare-fun d!62432 () Bool)

(declare-fun e!52151 () Bool)

(assert (=> d!62432 e!52151))

(declare-fun res!49649 () Bool)

(assert (=> d!62432 (=> res!49649 e!52151)))

(assert (=> d!62432 (= res!49649 (not (is-Some!740 lt!21968)))))

(declare-fun e!52150 () Option!769)

(assert (=> d!62432 (= lt!21968 e!52150)))

(declare-fun c!23537 () Bool)

(assert (=> d!62432 (= c!23537 (is-Nil!836 (t!56042 (t!56042 transfers!5))))))

(assert (=> d!62432 (= (find!8 (t!56042 (t!56042 transfers!5)) lambda!11313) lt!21968)))

(declare-fun b!95654 () Bool)

(assert (=> b!95654 (= e!52150 e!52152)))

(declare-fun c!23536 () Bool)

(assert (=> b!95654 (= c!23536 (dynLambda!1156 lambda!11313 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(declare-fun b!95655 () Bool)

(assert (=> b!95655 (= e!52151 e!52149)))

(declare-fun res!49650 () Bool)

(assert (=> b!95655 (=> (not res!49650) (not e!52149))))

(assert (=> b!95655 (= res!49650 (member (v!3224 lt!21968) (content!207 (t!56042 (t!56042 transfers!5)))))))

(declare-fun b!95656 () Bool)

(assert (=> b!95656 (= e!52150 None!741)))

(declare-fun b!95657 () Bool)

(assert (=> b!95657 (= e!52152 (Some!740 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(assert (= (and b!95654 c!23536) b!95657))

(assert (= (and b!95654 (not c!23536)) b!95653))

(assert (= (and d!62432 c!23537) b!95656))

(assert (= (and d!62432 (not c!23537)) b!95654))

(assert (= (and d!62432 (not res!49649)) b!95655))

(assert (= (and b!95655 res!49650) b!95652))

(declare-fun b_lambda!19443 () Bool)

(assert (=> (not b_lambda!19443) (not b!95652)))

(declare-fun b_lambda!19445 () Bool)

(assert (=> (not b_lambda!19445) (not b!95654)))

(declare-fun m!91179 () Bool)

(assert (=> b!95652 m!91179))

(declare-fun m!91181 () Bool)

(assert (=> b!95653 m!91181))

(declare-fun m!91183 () Bool)

(assert (=> b!95654 m!91183))

(assert (=> b!95655 m!90673))

(declare-fun m!91185 () Bool)

(assert (=> b!95655 m!91185))

(assert (=> b!95548 d!62432))

(assert (=> b!95564 d!61914))

(declare-fun b!95658 () Bool)

(declare-fun e!52153 () Bool)

(declare-fun lt!21969 () Option!769)

(assert (=> b!95658 (= e!52153 (dynLambda!1156 lambda!11315 (v!3224 lt!21969)))))

(declare-fun b!95659 () Bool)

(declare-fun e!52156 () Option!769)

(assert (=> b!95659 (= e!52156 (find!8 (t!56042 (t!56042 transfers!5)) lambda!11315))))

(declare-fun d!62434 () Bool)

(declare-fun e!52155 () Bool)

(assert (=> d!62434 e!52155))

(declare-fun res!49651 () Bool)

(assert (=> d!62434 (=> res!49651 e!52155)))

(assert (=> d!62434 (= res!49651 (not (is-Some!740 lt!21969)))))

(declare-fun e!52154 () Option!769)

(assert (=> d!62434 (= lt!21969 e!52154)))

(declare-fun c!23539 () Bool)

(assert (=> d!62434 (= c!23539 (is-Nil!836 (t!56042 transfers!5)))))

(assert (=> d!62434 (= (find!8 (t!56042 transfers!5) lambda!11315) lt!21969)))

(declare-fun b!95660 () Bool)

(assert (=> b!95660 (= e!52154 e!52156)))

(declare-fun c!23538 () Bool)

(assert (=> b!95660 (= c!23538 (dynLambda!1156 lambda!11315 (h!7729 (t!56042 transfers!5))))))

(declare-fun b!95661 () Bool)

(assert (=> b!95661 (= e!52155 e!52153)))

(declare-fun res!49652 () Bool)

(assert (=> b!95661 (=> (not res!49652) (not e!52153))))

(assert (=> b!95661 (= res!49652 (member (v!3224 lt!21969) (content!207 (t!56042 transfers!5))))))

(declare-fun b!95662 () Bool)

(assert (=> b!95662 (= e!52154 None!741)))

(declare-fun b!95663 () Bool)

(assert (=> b!95663 (= e!52156 (Some!740 (h!7729 (t!56042 transfers!5))))))

(assert (= (and b!95660 c!23538) b!95663))

(assert (= (and b!95660 (not c!23538)) b!95659))

(assert (= (and d!62434 c!23539) b!95662))

(assert (= (and d!62434 (not c!23539)) b!95660))

(assert (= (and d!62434 (not res!49651)) b!95661))

(assert (= (and b!95661 res!49652) b!95658))

(declare-fun b_lambda!19447 () Bool)

(assert (=> (not b_lambda!19447) (not b!95658)))

(declare-fun b_lambda!19449 () Bool)

(assert (=> (not b_lambda!19449) (not b!95660)))

(declare-fun m!91187 () Bool)

(assert (=> b!95658 m!91187))

(declare-fun m!91189 () Bool)

(assert (=> b!95659 m!91189))

(declare-fun m!91191 () Bool)

(assert (=> b!95660 m!91191))

(assert (=> b!95661 m!90483))

(declare-fun m!91193 () Bool)

(assert (=> b!95661 m!91193))

(assert (=> b!95562 d!62434))

(declare-fun d!62436 () Bool)

(declare-fun lt!21970 () Int)

(assert (=> d!62436 (>= lt!21970 0)))

(declare-fun e!52157 () Int)

(assert (=> d!62436 (= lt!21970 e!52157)))

(declare-fun c!23540 () Bool)

(assert (=> d!62436 (= c!23540 (is-Nil!838 (t!56044 lt!21874)))))

(assert (=> d!62436 (= (size!1003 (t!56044 lt!21874)) lt!21970)))

(declare-fun b!95664 () Bool)

(assert (=> b!95664 (= e!52157 0)))

(declare-fun b!95665 () Bool)

(assert (=> b!95665 (= e!52157 (+ 1 (size!1003 (t!56044 (t!56044 lt!21874)))))))

(assert (= (and d!62436 c!23540) b!95664))

(assert (= (and d!62436 (not c!23540)) b!95665))

(declare-fun m!91195 () Bool)

(assert (=> b!95665 m!91195))

(assert (=> b!95576 d!62436))

(declare-fun d!62438 () Bool)

(declare-fun lt!21971 () Int)

(assert (=> d!62438 (>= lt!21971 0)))

(declare-fun e!52158 () Int)

(assert (=> d!62438 (= lt!21971 e!52158)))

(declare-fun c!23541 () Bool)

(assert (=> d!62438 (= c!23541 (is-Nil!839 (t!56069 (t!56069 lt!21858))))))

(assert (=> d!62438 (= (size!1004 (t!56069 (t!56069 lt!21858))) lt!21971)))

(declare-fun b!95666 () Bool)

(assert (=> b!95666 (= e!52158 0)))

(declare-fun b!95667 () Bool)

(assert (=> b!95667 (= e!52158 (+ 1 (size!1004 (t!56069 (t!56069 (t!56069 lt!21858))))))))

(assert (= (and d!62438 c!23541) b!95666))

(assert (= (and d!62438 (not c!23541)) b!95667))

(declare-fun m!91197 () Bool)

(assert (=> b!95667 m!91197))

(assert (=> b!95513 d!62438))

(declare-fun d!62440 () Bool)

(declare-fun res!49653 () Bool)

(declare-fun e!52159 () Bool)

(assert (=> d!62440 (=> res!49653 e!52159)))

(assert (=> d!62440 (= res!49653 (is-Nil!836 lt!21925))))

(assert (=> d!62440 (= (forall!87 lt!21925 lambda!11311) e!52159)))

(declare-fun b!95668 () Bool)

(declare-fun e!52160 () Bool)

(assert (=> b!95668 (= e!52159 e!52160)))

(declare-fun res!49654 () Bool)

(assert (=> b!95668 (=> (not res!49654) (not e!52160))))

(assert (=> b!95668 (= res!49654 (dynLambda!1156 lambda!11311 (h!7729 lt!21925)))))

(declare-fun b!95669 () Bool)

(assert (=> b!95669 (= e!52160 (forall!87 (t!56042 lt!21925) lambda!11311))))

(assert (= (and d!62440 (not res!49653)) b!95668))

(assert (= (and b!95668 res!49654) b!95669))

(declare-fun b_lambda!19451 () Bool)

(assert (=> (not b_lambda!19451) (not b!95668)))

(declare-fun m!91199 () Bool)

(assert (=> b!95668 m!91199))

(declare-fun m!91201 () Bool)

(assert (=> b!95669 m!91201))

(assert (=> b!95514 d!62440))

(declare-fun d!62442 () Bool)

(declare-fun c!23542 () Bool)

(assert (=> d!62442 (= c!23542 (is-Nil!838 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))))))

(declare-fun e!52161 () Int)

(assert (=> d!62442 (= (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))) lambda!11269) e!52161)))

(declare-fun b!95670 () Bool)

(assert (=> b!95670 (= e!52161 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))))))

(declare-fun b!95671 () Bool)

(assert (=> b!95671 (= e!52161 (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))) (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))))) lambda!11269))))

(assert (= (and d!62442 c!23542) b!95670))

(assert (= (and d!62442 (not c!23542)) b!95671))

(declare-fun b_lambda!19453 () Bool)

(assert (=> (not b_lambda!19453) (not b!95671)))

(assert (=> b!95671 m!91063))

(declare-fun m!91203 () Bool)

(assert (=> b!95671 m!91203))

(assert (=> b!95671 m!91203))

(declare-fun m!91205 () Bool)

(assert (=> b!95671 m!91205))

(assert (=> b!95582 d!62442))

(declare-fun d!62444 () Bool)

(declare-fun res!49655 () Bool)

(declare-fun e!52162 () Bool)

(assert (=> d!62444 (=> res!49655 e!52162)))

(assert (=> d!62444 (= res!49655 (is-Nil!836 lt!21917))))

(assert (=> d!62444 (= (forall!87 lt!21917 lambda!11307) e!52162)))

(declare-fun b!95672 () Bool)

(declare-fun e!52163 () Bool)

(assert (=> b!95672 (= e!52162 e!52163)))

(declare-fun res!49656 () Bool)

(assert (=> b!95672 (=> (not res!49656) (not e!52163))))

(assert (=> b!95672 (= res!49656 (dynLambda!1156 lambda!11307 (h!7729 lt!21917)))))

(declare-fun b!95673 () Bool)

(assert (=> b!95673 (= e!52163 (forall!87 (t!56042 lt!21917) lambda!11307))))

(assert (= (and d!62444 (not res!49655)) b!95672))

(assert (= (and b!95672 res!49656) b!95673))

(declare-fun b_lambda!19455 () Bool)

(assert (=> (not b_lambda!19455) (not b!95672)))

(declare-fun m!91207 () Bool)

(assert (=> b!95672 m!91207))

(declare-fun m!91209 () Bool)

(assert (=> b!95673 m!91209))

(assert (=> b!95485 d!62444))

(declare-fun d!62446 () Bool)

(declare-fun lt!21972 () Int)

(assert (=> d!62446 (>= lt!21972 0)))

(declare-fun e!52164 () Int)

(assert (=> d!62446 (= lt!21972 e!52164)))

(declare-fun c!23543 () Bool)

(assert (=> d!62446 (= c!23543 (is-Nil!836 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))))

(assert (=> d!62446 (= (size!1002 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))) lt!21972)))

(declare-fun b!95674 () Bool)

(assert (=> b!95674 (= e!52164 0)))

(declare-fun b!95675 () Bool)

(assert (=> b!95675 (= e!52164 (+ 1 (size!1002 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))))))

(assert (= (and d!62446 c!23543) b!95674))

(assert (= (and d!62446 (not c!23543)) b!95675))

(declare-fun m!91211 () Bool)

(assert (=> b!95675 m!91211))

(assert (=> b!95546 d!62446))

(declare-fun d!62448 () Bool)

(declare-fun c!23544 () Bool)

(assert (=> d!62448 (= c!23544 (is-Nil!836 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(declare-fun e!52165 () (Set tuple2!524))

(assert (=> d!62448 (= (content!207 (t!56042 (t!56042 (t!56042 transfers!5)))) e!52165)))

(declare-fun b!95676 () Bool)

(assert (=> b!95676 (= e!52165 (as emptyset (Set tuple2!524)))))

(declare-fun b!95677 () Bool)

(assert (=> b!95677 (= e!52165 (union (insert (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))) (as emptyset (Set tuple2!524))) (content!207 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(assert (= (and d!62448 c!23544) b!95676))

(assert (= (and d!62448 (not c!23544)) b!95677))

(declare-fun m!91213 () Bool)

(assert (=> b!95677 m!91213))

(assert (=> b!95677 m!91131))

(assert (=> b!95493 d!62448))

(declare-fun d!62450 () Bool)

(assert (=> d!62450 (= (isEmpty!911 lt!21884) (not (is-Some!739 lt!21884)))))

(assert (=> d!62208 d!62450))

(declare-fun d!62452 () Bool)

(declare-fun lt!21973 () Int)

(assert (=> d!62452 (>= lt!21973 0)))

(declare-fun e!52166 () Int)

(assert (=> d!62452 (= lt!21973 e!52166)))

(declare-fun c!23545 () Bool)

(assert (=> d!62452 (= c!23545 (is-Nil!838 lt!21926))))

(assert (=> d!62452 (= (size!1003 lt!21926) lt!21973)))

(declare-fun b!95678 () Bool)

(assert (=> b!95678 (= e!52166 0)))

(declare-fun b!95679 () Bool)

(assert (=> b!95679 (= e!52166 (+ 1 (size!1003 (t!56044 lt!21926))))))

(assert (= (and d!62452 c!23545) b!95678))

(assert (= (and d!62452 (not c!23545)) b!95679))

(declare-fun m!91215 () Bool)

(assert (=> b!95679 m!91215))

(assert (=> d!62240 d!62452))

(declare-fun d!62454 () Bool)

(declare-fun lt!21974 () Int)

(assert (=> d!62454 (>= lt!21974 0)))

(declare-fun e!52167 () Int)

(assert (=> d!62454 (= lt!21974 e!52167)))

(declare-fun c!23546 () Bool)

(assert (=> d!62454 (= c!23546 (is-Nil!836 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))))

(assert (=> d!62454 (= (size!1002 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))) lt!21974)))

(declare-fun b!95680 () Bool)

(assert (=> b!95680 (= e!52167 0)))

(declare-fun b!95681 () Bool)

(assert (=> b!95681 (= e!52167 (+ 1 (size!1002 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))))))

(assert (= (and d!62454 c!23546) b!95680))

(assert (= (and d!62454 (not c!23546)) b!95681))

(declare-fun m!91217 () Bool)

(assert (=> b!95681 m!91217))

(assert (=> d!62240 d!62454))

(declare-fun d!62456 () Bool)

(declare-fun lt!21975 () Int)

(assert (=> d!62456 (>= lt!21975 0)))

(declare-fun e!52168 () Int)

(assert (=> d!62456 (= lt!21975 e!52168)))

(declare-fun c!23547 () Bool)

(assert (=> d!62456 (= c!23547 (is-Nil!839 (t!56069 (t!56069 lt!21866))))))

(assert (=> d!62456 (= (size!1004 (t!56069 (t!56069 lt!21866))) lt!21975)))

(declare-fun b!95682 () Bool)

(assert (=> b!95682 (= e!52168 0)))

(declare-fun b!95683 () Bool)

(assert (=> b!95683 (= e!52168 (+ 1 (size!1004 (t!56069 (t!56069 (t!56069 lt!21866))))))))

(assert (= (and d!62456 c!23547) b!95682))

(assert (= (and d!62456 (not c!23547)) b!95683))

(declare-fun m!91219 () Bool)

(assert (=> b!95683 m!91219))

(assert (=> b!95586 d!62456))

(declare-fun d!62458 () Bool)

(assert (=> d!62458 (= (isEmpty!911 lt!21907) (not (is-Some!739 lt!21907)))))

(assert (=> d!62280 d!62458))

(declare-fun d!62460 () Bool)

(declare-fun res!49657 () Bool)

(declare-fun e!52169 () Bool)

(assert (=> d!62460 (=> res!49657 e!52169)))

(assert (=> d!62460 (= res!49657 (is-Nil!836 (t!56042 transfers!5)))))

(assert (=> d!62460 (= (forall!87 (t!56042 transfers!5) lambda!11314) e!52169)))

(declare-fun b!95684 () Bool)

(declare-fun e!52170 () Bool)

(assert (=> b!95684 (= e!52169 e!52170)))

(declare-fun res!49658 () Bool)

(assert (=> b!95684 (=> (not res!49658) (not e!52170))))

(assert (=> b!95684 (= res!49658 (dynLambda!1156 lambda!11314 (h!7729 (t!56042 transfers!5))))))

(declare-fun b!95685 () Bool)

(assert (=> b!95685 (= e!52170 (forall!87 (t!56042 (t!56042 transfers!5)) lambda!11314))))

(assert (= (and d!62460 (not res!49657)) b!95684))

(assert (= (and b!95684 res!49658) b!95685))

(declare-fun b_lambda!19457 () Bool)

(assert (=> (not b_lambda!19457) (not b!95684)))

(declare-fun m!91221 () Bool)

(assert (=> b!95684 m!91221))

(declare-fun m!91223 () Bool)

(assert (=> b!95685 m!91223))

(assert (=> b!95594 d!62460))

(declare-fun d!62462 () Bool)

(declare-fun c!23548 () Bool)

(assert (=> d!62462 (= c!23548 (is-Nil!839 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))))))

(declare-fun e!52171 () Bool)

(assert (=> d!62462 (= (foldLeft!12 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))) lambda!11285) e!52171)))

(declare-fun b!95686 () Bool)

(assert (=> b!95686 (= e!52171 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))))))

(declare-fun b!95687 () Bool)

(assert (=> b!95687 (= e!52171 (foldLeft!12 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))) (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))) lambda!11285))))

(assert (= (and d!62462 c!23548) b!95686))

(assert (= (and d!62462 (not c!23548)) b!95687))

(declare-fun b_lambda!19459 () Bool)

(assert (=> (not b_lambda!19459) (not b!95687)))

(assert (=> b!95687 m!90889))

(declare-fun m!91225 () Bool)

(assert (=> b!95687 m!91225))

(assert (=> b!95687 m!91225))

(declare-fun m!91227 () Bool)

(assert (=> b!95687 m!91227))

(assert (=> b!95476 d!62462))

(declare-fun d!62464 () Bool)

(declare-fun c!23549 () Bool)

(assert (=> d!62464 (= c!23549 (is-Nil!838 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))))))

(declare-fun e!52172 () Int)

(assert (=> d!62464 (= (foldLeft!11 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))) lambda!11295) e!52172)))

(declare-fun b!95688 () Bool)

(assert (=> b!95688 (= e!52172 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))))))

(declare-fun b!95689 () Bool)

(assert (=> b!95689 (= e!52172 (foldLeft!11 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))) (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))))) lambda!11295))))

(assert (= (and d!62464 c!23549) b!95688))

(assert (= (and d!62464 (not c!23549)) b!95689))

(declare-fun b_lambda!19461 () Bool)

(assert (=> (not b_lambda!19461) (not b!95689)))

(assert (=> b!95689 m!90867))

(declare-fun m!91229 () Bool)

(assert (=> b!95689 m!91229))

(assert (=> b!95689 m!91229))

(declare-fun m!91231 () Bool)

(assert (=> b!95689 m!91231))

(assert (=> b!95464 d!62464))

(declare-fun d!62466 () Bool)

(declare-fun c!23550 () Bool)

(assert (=> d!62466 (= c!23550 (is-Nil!839 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))))))

(declare-fun e!52173 () Bool)

(assert (=> d!62466 (= (foldLeft!12 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))) lambda!11297) e!52173)))

(declare-fun b!95690 () Bool)

(assert (=> b!95690 (= e!52173 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))))))

(declare-fun b!95691 () Bool)

(assert (=> b!95691 (= e!52173 (foldLeft!12 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))) (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))) lambda!11297))))

(assert (= (and d!62466 c!23550) b!95690))

(assert (= (and d!62466 (not c!23550)) b!95691))

(declare-fun b_lambda!19463 () Bool)

(assert (=> (not b_lambda!19463) (not b!95691)))

(assert (=> b!95691 m!90913))

(declare-fun m!91233 () Bool)

(assert (=> b!95691 m!91233))

(assert (=> b!95691 m!91233))

(declare-fun m!91235 () Bool)

(assert (=> b!95691 m!91235))

(assert (=> b!95484 d!62466))

(declare-fun d!62468 () Bool)

(declare-fun lt!21976 () Int)

(assert (=> d!62468 (>= lt!21976 0)))

(declare-fun e!52174 () Int)

(assert (=> d!62468 (= lt!21976 e!52174)))

(declare-fun c!23551 () Bool)

(assert (=> d!62468 (= c!23551 (is-Nil!837 (t!56043 (t!56043 (t!56043 lt!21837)))))))

(assert (=> d!62468 (= (size!1001 (t!56043 (t!56043 (t!56043 lt!21837)))) lt!21976)))

(declare-fun b!95692 () Bool)

(assert (=> b!95692 (= e!52174 0)))

(declare-fun b!95693 () Bool)

(assert (=> b!95693 (= e!52174 (+ 1 (size!1001 (t!56043 (t!56043 (t!56043 (t!56043 lt!21837)))))))))

(assert (= (and d!62468 c!23551) b!95692))

(assert (= (and d!62468 (not c!23551)) b!95693))

(declare-fun m!91237 () Bool)

(assert (=> b!95693 m!91237))

(assert (=> b!95584 d!62468))

(assert (=> b!95600 d!62388))

(declare-fun d!62470 () Bool)

(declare-fun c!23552 () Bool)

(assert (=> d!62470 (= c!23552 (is-Nil!838 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))))))

(declare-fun e!52175 () Int)

(assert (=> d!62470 (= (foldLeft!11 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))) lambda!11295) e!52175)))

(declare-fun b!95694 () Bool)

(assert (=> b!95694 (= e!52175 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))))))

(declare-fun b!95695 () Bool)

(assert (=> b!95695 (= e!52175 (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))) (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))))) lambda!11295))))

(assert (= (and d!62470 c!23552) b!95694))

(assert (= (and d!62470 (not c!23552)) b!95695))

(declare-fun b_lambda!19465 () Bool)

(assert (=> (not b_lambda!19465) (not b!95695)))

(assert (=> b!95695 m!90983))

(declare-fun m!91239 () Bool)

(assert (=> b!95695 m!91239))

(assert (=> b!95695 m!91239))

(declare-fun m!91241 () Bool)

(assert (=> b!95695 m!91241))

(assert (=> b!95526 d!62470))

(declare-fun d!62472 () Bool)

(declare-fun lt!21977 () Int)

(assert (=> d!62472 (>= lt!21977 0)))

(declare-fun e!52176 () Int)

(assert (=> d!62472 (= lt!21977 e!52176)))

(declare-fun c!23553 () Bool)

(assert (=> d!62472 (= c!23553 (is-Nil!836 lt!21925))))

(assert (=> d!62472 (= (size!1002 lt!21925) lt!21977)))

(declare-fun b!95696 () Bool)

(assert (=> b!95696 (= e!52176 0)))

(declare-fun b!95697 () Bool)

(assert (=> b!95697 (= e!52176 (+ 1 (size!1002 (t!56042 lt!21925))))))

(assert (= (and d!62472 c!23553) b!95696))

(assert (= (and d!62472 (not c!23553)) b!95697))

(declare-fun m!91243 () Bool)

(assert (=> b!95697 m!91243))

(assert (=> d!62236 d!62472))

(assert (=> d!62236 d!61940))

(declare-fun d!62474 () Bool)

(assert (=> d!62474 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))))) (Cons!836 (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))) (map!731 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))) lambda!11283)))))

(assert (=> b!95511 d!62474))

(declare-fun d!62476 () Bool)

(declare-fun lt!21978 () List!898)

(assert (=> d!62476 (= (size!1003 lt!21978) (size!1002 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))))))

(declare-fun e!52177 () List!898)

(assert (=> d!62476 (= lt!21978 e!52177)))

(declare-fun c!23554 () Bool)

(assert (=> d!62476 (= c!23554 (is-Nil!836 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))))))

(assert (=> d!62476 (= (map!731 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))) lambda!11283) lt!21978)))

(declare-fun b!95698 () Bool)

(assert (=> b!95698 (= e!52177 Nil!838)))

(declare-fun b!95699 () Bool)

(assert (=> b!95699 (= e!52177 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))))))))

(assert (= (and d!62476 c!23554) b!95698))

(assert (= (and d!62476 (not c!23554)) b!95699))

(declare-fun b_lambda!19467 () Bool)

(assert (=> (not b_lambda!19467) (not b!95699)))

(declare-fun m!91245 () Bool)

(assert (=> d!62476 m!91245))

(assert (=> d!62476 m!91145))

(declare-fun m!91247 () Bool)

(assert (=> b!95699 m!91247))

(declare-fun m!91249 () Bool)

(assert (=> b!95699 m!91249))

(assert (=> b!95699 m!91247))

(assert (=> b!95699 m!91249))

(declare-fun m!91251 () Bool)

(assert (=> b!95699 m!91251))

(assert (=> b!95511 d!62476))

(declare-fun d!62478 () Bool)

(assert (=> d!62478 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))))) (Cons!836 (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))) (map!731 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))) lambda!11294)))))

(assert (=> b!95572 d!62478))

(declare-fun d!62480 () Bool)

(declare-fun lt!21979 () List!898)

(assert (=> d!62480 (= (size!1003 lt!21979) (size!1002 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))))))

(declare-fun e!52178 () List!898)

(assert (=> d!62480 (= lt!21979 e!52178)))

(declare-fun c!23555 () Bool)

(assert (=> d!62480 (= c!23555 (is-Nil!836 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))))))

(assert (=> d!62480 (= (map!731 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))) lambda!11294) lt!21979)))

(declare-fun b!95700 () Bool)

(assert (=> b!95700 (= e!52178 Nil!838)))

(declare-fun b!95701 () Bool)

(assert (=> b!95701 (= e!52178 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))))))))

(assert (= (and d!62480 c!23555) b!95700))

(assert (= (and d!62480 (not c!23555)) b!95701))

(declare-fun b_lambda!19469 () Bool)

(assert (=> (not b_lambda!19469) (not b!95701)))

(declare-fun m!91253 () Bool)

(assert (=> d!62480 m!91253))

(declare-fun m!91255 () Bool)

(assert (=> d!62480 m!91255))

(declare-fun m!91257 () Bool)

(assert (=> b!95701 m!91257))

(declare-fun m!91259 () Bool)

(assert (=> b!95701 m!91259))

(assert (=> b!95701 m!91257))

(assert (=> b!95701 m!91259))

(declare-fun m!91261 () Bool)

(assert (=> b!95701 m!91261))

(assert (=> b!95572 d!62480))

(declare-fun d!62482 () Bool)

(assert (=> d!62482 (= (isEmpty!912 (find!8 transfers!5 lambda!11313)) (not (is-Some!740 (find!8 transfers!5 lambda!11313))))))

(assert (=> d!62210 d!62482))

(assert (=> b!95497 d!62220))

(assert (=> b!95536 d!62394))

(declare-fun d!62484 () Bool)

(assert (=> d!62484 (= (isDefined!27 lt!21949) (not (isEmpty!911 lt!21949)))))

(declare-fun bs!43558 () Bool)

(assert (= bs!43558 d!62484))

(declare-fun m!91263 () Bool)

(assert (=> bs!43558 m!91263))

(assert (=> bs!43525 d!62484))

(declare-fun d!62486 () Bool)

(declare-fun lt!21980 () Option!768)

(assert (=> d!62486 (= (isDefined!27 lt!21980) (isDefined!28 (find!8 transfers!5 lambda!11316)))))

(declare-fun e!52179 () Option!768)

(assert (=> d!62486 (= lt!21980 e!52179)))

(declare-fun c!23556 () Bool)

(assert (=> d!62486 (= c!23556 (is-None!741 (find!8 transfers!5 lambda!11316)))))

(assert (=> d!62486 (= (map!733 (find!8 transfers!5 lambda!11316) lambda!11268) lt!21980)))

(declare-fun b!95702 () Bool)

(assert (=> b!95702 (= e!52179 None!740)))

(declare-fun b!95703 () Bool)

(assert (=> b!95703 (= e!52179 (Some!739 (dynLambda!1158 lambda!11268 (v!3224 (find!8 transfers!5 lambda!11316)))))))

(assert (= (and d!62486 c!23556) b!95702))

(assert (= (and d!62486 (not c!23556)) b!95703))

(declare-fun b_lambda!19471 () Bool)

(assert (=> (not b_lambda!19471) (not b!95703)))

(declare-fun m!91265 () Bool)

(assert (=> d!62486 m!91265))

(assert (=> d!62486 m!91093))

(declare-fun m!91267 () Bool)

(assert (=> d!62486 m!91267))

(declare-fun m!91269 () Bool)

(assert (=> b!95703 m!91269))

(assert (=> bs!43525 d!62486))

(declare-fun b!95704 () Bool)

(declare-fun e!52180 () Bool)

(declare-fun lt!21981 () Option!769)

(assert (=> b!95704 (= e!52180 (dynLambda!1156 lambda!11316 (v!3224 lt!21981)))))

(declare-fun b!95705 () Bool)

(declare-fun e!52183 () Option!769)

(assert (=> b!95705 (= e!52183 (find!8 (t!56042 transfers!5) lambda!11316))))

(declare-fun d!62488 () Bool)

(declare-fun e!52182 () Bool)

(assert (=> d!62488 e!52182))

(declare-fun res!49659 () Bool)

(assert (=> d!62488 (=> res!49659 e!52182)))

(assert (=> d!62488 (= res!49659 (not (is-Some!740 lt!21981)))))

(declare-fun e!52181 () Option!769)

(assert (=> d!62488 (= lt!21981 e!52181)))

(declare-fun c!23558 () Bool)

(assert (=> d!62488 (= c!23558 (is-Nil!836 transfers!5))))

(assert (=> d!62488 (= (find!8 transfers!5 lambda!11316) lt!21981)))

(declare-fun b!95706 () Bool)

(assert (=> b!95706 (= e!52181 e!52183)))

(declare-fun c!23557 () Bool)

(assert (=> b!95706 (= c!23557 (dynLambda!1156 lambda!11316 (h!7729 transfers!5)))))

(declare-fun b!95707 () Bool)

(assert (=> b!95707 (= e!52182 e!52180)))

(declare-fun res!49660 () Bool)

(assert (=> b!95707 (=> (not res!49660) (not e!52180))))

(assert (=> b!95707 (= res!49660 (member (v!3224 lt!21981) (content!207 transfers!5)))))

(declare-fun b!95708 () Bool)

(assert (=> b!95708 (= e!52181 None!741)))

(declare-fun b!95709 () Bool)

(assert (=> b!95709 (= e!52183 (Some!740 (h!7729 transfers!5)))))

(assert (= (and b!95706 c!23557) b!95709))

(assert (= (and b!95706 (not c!23557)) b!95705))

(assert (= (and d!62488 c!23558) b!95708))

(assert (= (and d!62488 (not c!23558)) b!95706))

(assert (= (and d!62488 (not res!49659)) b!95707))

(assert (= (and b!95707 res!49660) b!95704))

(declare-fun b_lambda!19473 () Bool)

(assert (=> (not b_lambda!19473) (not b!95704)))

(declare-fun b_lambda!19475 () Bool)

(assert (=> (not b_lambda!19475) (not b!95706)))

(declare-fun m!91271 () Bool)

(assert (=> b!95704 m!91271))

(declare-fun m!91273 () Bool)

(assert (=> b!95705 m!91273))

(declare-fun m!91275 () Bool)

(assert (=> b!95706 m!91275))

(assert (=> b!95707 m!90447))

(declare-fun m!91277 () Bool)

(assert (=> b!95707 m!91277))

(assert (=> bs!43525 d!62488))

(declare-fun d!62490 () Bool)

(declare-fun lt!21982 () Int)

(assert (=> d!62490 (>= lt!21982 0)))

(declare-fun e!52184 () Int)

(assert (=> d!62490 (= lt!21982 e!52184)))

(declare-fun c!23559 () Bool)

(assert (=> d!62490 (= c!23559 (is-Nil!838 lt!21942))))

(assert (=> d!62490 (= (size!1003 lt!21942) lt!21982)))

(declare-fun b!95710 () Bool)

(assert (=> b!95710 (= e!52184 0)))

(declare-fun b!95711 () Bool)

(assert (=> b!95711 (= e!52184 (+ 1 (size!1003 (t!56044 lt!21942))))))

(assert (= (and d!62490 c!23559) b!95710))

(assert (= (and d!62490 (not c!23559)) b!95711))

(declare-fun m!91279 () Bool)

(assert (=> b!95711 m!91279))

(assert (=> d!62294 d!62490))

(declare-fun d!62492 () Bool)

(declare-fun lt!21983 () Int)

(assert (=> d!62492 (>= lt!21983 0)))

(declare-fun e!52185 () Int)

(assert (=> d!62492 (= lt!21983 e!52185)))

(declare-fun c!23560 () Bool)

(assert (=> d!62492 (= c!23560 (is-Nil!836 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))))))

(assert (=> d!62492 (= (size!1002 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))) lt!21983)))

(declare-fun b!95712 () Bool)

(assert (=> b!95712 (= e!52185 0)))

(declare-fun b!95713 () Bool)

(assert (=> b!95713 (= e!52185 (+ 1 (size!1002 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))))))))

(assert (= (and d!62492 c!23560) b!95712))

(assert (= (and d!62492 (not c!23560)) b!95713))

(assert (=> b!95713 m!91255))

(assert (=> d!62294 d!62492))

(assert (=> b!95468 d!62454))

(declare-fun d!62494 () Bool)

(declare-fun lt!21984 () Int)

(assert (=> d!62494 (>= lt!21984 0)))

(declare-fun e!52186 () Int)

(assert (=> d!62494 (= lt!21984 e!52186)))

(declare-fun c!23561 () Bool)

(assert (=> d!62494 (= c!23561 (is-Nil!838 lt!21912))))

(assert (=> d!62494 (= (size!1003 lt!21912) lt!21984)))

(declare-fun b!95714 () Bool)

(assert (=> b!95714 (= e!52186 0)))

(declare-fun b!95715 () Bool)

(assert (=> b!95715 (= e!52186 (+ 1 (size!1003 (t!56044 lt!21912))))))

(assert (= (and d!62494 c!23561) b!95714))

(assert (= (and d!62494 (not c!23561)) b!95715))

(declare-fun m!91281 () Bool)

(assert (=> b!95715 m!91281))

(assert (=> d!62190 d!62494))

(assert (=> d!62190 d!62446))

(declare-fun d!62496 () Bool)

(declare-fun res!49661 () Bool)

(declare-fun e!52187 () Bool)

(assert (=> d!62496 (=> res!49661 e!52187)))

(assert (=> d!62496 (= res!49661 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(assert (=> d!62496 (= (forall!87 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lambda!11273) e!52187)))

(declare-fun b!95716 () Bool)

(declare-fun e!52188 () Bool)

(assert (=> b!95716 (= e!52187 e!52188)))

(declare-fun res!49662 () Bool)

(assert (=> b!95716 (=> (not res!49662) (not e!52188))))

(assert (=> b!95716 (= res!49662 (dynLambda!1156 lambda!11273 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(declare-fun b!95717 () Bool)

(assert (=> b!95717 (= e!52188 (forall!87 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) lambda!11273))))

(assert (= (and d!62496 (not res!49661)) b!95716))

(assert (= (and b!95716 res!49662) b!95717))

(declare-fun b_lambda!19477 () Bool)

(assert (=> (not b_lambda!19477) (not b!95716)))

(declare-fun m!91283 () Bool)

(assert (=> b!95716 m!91283))

(declare-fun m!91285 () Bool)

(assert (=> b!95717 m!91285))

(assert (=> b!95580 d!62496))

(declare-fun d!62498 () Bool)

(declare-fun lt!21985 () Int)

(assert (=> d!62498 (>= lt!21985 0)))

(declare-fun e!52189 () Int)

(assert (=> d!62498 (= lt!21985 e!52189)))

(declare-fun c!23562 () Bool)

(assert (=> d!62498 (= c!23562 (is-Nil!836 (t!56042 lt!21887)))))

(assert (=> d!62498 (= (size!1002 (t!56042 lt!21887)) lt!21985)))

(declare-fun b!95718 () Bool)

(assert (=> b!95718 (= e!52189 0)))

(declare-fun b!95719 () Bool)

(assert (=> b!95719 (= e!52189 (+ 1 (size!1002 (t!56042 (t!56042 lt!21887)))))))

(assert (= (and d!62498 c!23562) b!95718))

(assert (= (and d!62498 (not c!23562)) b!95719))

(declare-fun m!91287 () Bool)

(assert (=> b!95719 m!91287))

(assert (=> b!95538 d!62498))

(declare-fun d!62500 () Bool)

(declare-fun lt!21986 () Int)

(assert (=> d!62500 (>= lt!21986 0)))

(declare-fun e!52190 () Int)

(assert (=> d!62500 (= lt!21986 e!52190)))

(declare-fun c!23563 () Bool)

(assert (=> d!62500 (= c!23563 (is-Nil!839 (t!56069 (t!56069 (t!56069 lt!21836)))))))

(assert (=> d!62500 (= (size!1004 (t!56069 (t!56069 (t!56069 lt!21836)))) lt!21986)))

(declare-fun b!95720 () Bool)

(assert (=> b!95720 (= e!52190 0)))

(declare-fun b!95721 () Bool)

(assert (=> b!95721 (= e!52190 (+ 1 (size!1004 (t!56069 (t!56069 (t!56069 (t!56069 lt!21836)))))))))

(assert (= (and d!62500 c!23563) b!95720))

(assert (= (and d!62500 (not c!23563)) b!95721))

(declare-fun m!91289 () Bool)

(assert (=> b!95721 m!91289))

(assert (=> b!95528 d!62500))

(declare-fun d!62502 () Bool)

(declare-fun c!23564 () Bool)

(assert (=> d!62502 (= c!23564 (is-Nil!836 lt!21917))))

(declare-fun e!52191 () (Set tuple2!524))

(assert (=> d!62502 (= (content!207 lt!21917) e!52191)))

(declare-fun b!95722 () Bool)

(assert (=> b!95722 (= e!52191 (as emptyset (Set tuple2!524)))))

(declare-fun b!95723 () Bool)

(assert (=> b!95723 (= e!52191 (union (insert (h!7729 lt!21917) (as emptyset (Set tuple2!524))) (content!207 (t!56042 lt!21917))))))

(assert (= (and d!62502 c!23564) b!95722))

(assert (= (and d!62502 (not c!23564)) b!95723))

(declare-fun m!91291 () Bool)

(assert (=> b!95723 m!91291))

(declare-fun m!91293 () Bool)

(assert (=> b!95723 m!91293))

(assert (=> b!95487 d!62502))

(assert (=> b!95487 d!62068))

(declare-fun b!95724 () Bool)

(declare-fun e!52195 () Bool)

(declare-fun lt!21988 () List!896)

(assert (=> b!95724 (= e!52195 (forall!87 lt!21988 lambda!11311))))

(declare-fun b!95725 () Bool)

(declare-fun e!52192 () List!896)

(assert (=> b!95725 (= e!52192 Nil!836)))

(declare-fun b!95726 () Bool)

(declare-fun res!49663 () Bool)

(assert (=> b!95726 (=> (not res!49663) (not e!52195))))

(assert (=> b!95726 (= res!49663 (subset (content!207 lt!21988) (content!207 (t!56042 (t!56042 transfers!5)))))))

(declare-fun b!95727 () Bool)

(declare-fun e!52193 () List!896)

(declare-fun lt!21987 () List!896)

(assert (=> b!95727 (= e!52193 lt!21987)))

(declare-fun d!62504 () Bool)

(assert (=> d!62504 e!52195))

(declare-fun res!49665 () Bool)

(assert (=> d!62504 (=> (not res!49665) (not e!52195))))

(assert (=> d!62504 (= res!49665 (<= (size!1002 lt!21988) (size!1002 (t!56042 (t!56042 transfers!5)))))))

(assert (=> d!62504 (= lt!21988 e!52192)))

(declare-fun c!23566 () Bool)

(assert (=> d!62504 (= c!23566 (is-Nil!836 (t!56042 (t!56042 transfers!5))))))

(assert (=> d!62504 (= (filter!49 (t!56042 (t!56042 transfers!5)) lambda!11311) lt!21988)))

(declare-fun b!95728 () Bool)

(assert (=> b!95728 (= e!52192 e!52193)))

(declare-fun c!23565 () Bool)

(declare-fun e!52194 () Bool)

(assert (=> b!95728 (= c!23565 e!52194)))

(declare-fun res!49664 () Bool)

(assert (=> b!95728 (=> (not res!49664) (not e!52194))))

(assert (=> b!95728 (= res!49664 (is-Cons!834 (t!56042 (t!56042 transfers!5))))))

(assert (=> b!95728 (= lt!21987 (filter!49 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11311))))

(declare-fun b!95729 () Bool)

(assert (=> b!95729 (= e!52193 (Cons!834 (h!7729 (t!56042 (t!56042 transfers!5))) lt!21987))))

(declare-fun b!95730 () Bool)

(assert (=> b!95730 (= e!52194 (dynLambda!1156 lambda!11311 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(assert (= (and b!95728 res!49664) b!95730))

(assert (= (and b!95728 c!23565) b!95729))

(assert (= (and b!95728 (not c!23565)) b!95727))

(assert (= (and d!62504 c!23566) b!95725))

(assert (= (and d!62504 (not c!23566)) b!95728))

(assert (= (and d!62504 res!49665) b!95726))

(assert (= (and b!95726 res!49663) b!95724))

(declare-fun b_lambda!19479 () Bool)

(assert (=> (not b_lambda!19479) (not b!95730)))

(declare-fun m!91295 () Bool)

(assert (=> b!95726 m!91295))

(assert (=> b!95726 m!90673))

(declare-fun m!91297 () Bool)

(assert (=> b!95724 m!91297))

(declare-fun m!91299 () Bool)

(assert (=> b!95730 m!91299))

(declare-fun m!91301 () Bool)

(assert (=> b!95728 m!91301))

(declare-fun m!91303 () Bool)

(assert (=> d!62504 m!91303))

(assert (=> d!62504 m!90531))

(assert (=> b!95518 d!62504))

(declare-fun d!62506 () Bool)

(declare-fun lt!21989 () Int)

(assert (=> d!62506 (>= lt!21989 0)))

(declare-fun e!52196 () Int)

(assert (=> d!62506 (= lt!21989 e!52196)))

(declare-fun c!23567 () Bool)

(assert (=> d!62506 (= c!23567 (is-Nil!837 (t!56043 lt!21906)))))

(assert (=> d!62506 (= (size!1001 (t!56043 lt!21906)) lt!21989)))

(declare-fun b!95731 () Bool)

(assert (=> b!95731 (= e!52196 0)))

(declare-fun b!95732 () Bool)

(assert (=> b!95732 (= e!52196 (+ 1 (size!1001 (t!56043 (t!56043 lt!21906)))))))

(assert (= (and d!62506 c!23567) b!95731))

(assert (= (and d!62506 (not c!23567)) b!95732))

(declare-fun m!91305 () Bool)

(assert (=> b!95732 m!91305))

(assert (=> b!95534 d!62506))

(declare-fun d!62508 () Bool)

(declare-fun c!23568 () Bool)

(assert (=> d!62508 (= c!23568 (is-Nil!836 (t!56042 lt!21882)))))

(declare-fun e!52197 () (Set tuple2!524))

(assert (=> d!62508 (= (content!207 (t!56042 lt!21882)) e!52197)))

(declare-fun b!95733 () Bool)

(assert (=> b!95733 (= e!52197 (as emptyset (Set tuple2!524)))))

(declare-fun b!95734 () Bool)

(assert (=> b!95734 (= e!52197 (union (insert (h!7729 (t!56042 lt!21882)) (as emptyset (Set tuple2!524))) (content!207 (t!56042 (t!56042 lt!21882)))))))

(assert (= (and d!62508 c!23568) b!95733))

(assert (= (and d!62508 (not c!23568)) b!95734))

(declare-fun m!91307 () Bool)

(assert (=> b!95734 m!91307))

(declare-fun m!91309 () Bool)

(assert (=> b!95734 m!91309))

(assert (=> b!95524 d!62508))

(assert (=> b!95578 d!62492))

(declare-fun d!62510 () Bool)

(assert (=> d!62510 (= (isDefined!27 lt!21939) (not (isEmpty!911 lt!21939)))))

(declare-fun bs!43559 () Bool)

(assert (= bs!43559 d!62510))

(declare-fun m!91311 () Bool)

(assert (=> bs!43559 m!91311))

(assert (=> d!62282 d!62510))

(declare-fun d!62512 () Bool)

(assert (=> d!62512 (= (isDefined!28 (find!8 transfers!5 lambda!11315)) (not (isEmpty!912 (find!8 transfers!5 lambda!11315))))))

(declare-fun bs!43560 () Bool)

(assert (= bs!43560 d!62512))

(assert (=> bs!43560 m!90849))

(declare-fun m!91313 () Bool)

(assert (=> bs!43560 m!91313))

(assert (=> d!62282 d!62512))

(declare-fun d!62514 () Bool)

(declare-fun res!49666 () Bool)

(declare-fun e!52198 () Bool)

(assert (=> d!62514 (=> res!49666 e!52198)))

(assert (=> d!62514 (= res!49666 (is-Nil!836 (t!56042 lt!21882)))))

(assert (=> d!62514 (= (forall!87 (t!56042 lt!21882) lambda!11311) e!52198)))

(declare-fun b!95735 () Bool)

(declare-fun e!52199 () Bool)

(assert (=> b!95735 (= e!52198 e!52199)))

(declare-fun res!49667 () Bool)

(assert (=> b!95735 (=> (not res!49667) (not e!52199))))

(assert (=> b!95735 (= res!49667 (dynLambda!1156 lambda!11311 (h!7729 (t!56042 lt!21882))))))

(declare-fun b!95736 () Bool)

(assert (=> b!95736 (= e!52199 (forall!87 (t!56042 (t!56042 lt!21882)) lambda!11311))))

(assert (= (and d!62514 (not res!49666)) b!95735))

(assert (= (and b!95735 res!49667) b!95736))

(declare-fun b_lambda!19481 () Bool)

(assert (=> (not b_lambda!19481) (not b!95735)))

(declare-fun m!91315 () Bool)

(assert (=> b!95735 m!91315))

(declare-fun m!91317 () Bool)

(assert (=> b!95736 m!91317))

(assert (=> b!95556 d!62514))

(declare-fun d!62516 () Bool)

(declare-fun res!49668 () Bool)

(declare-fun e!52200 () Bool)

(assert (=> d!62516 (=> res!49668 e!52200)))

(assert (=> d!62516 (= res!49668 (is-Nil!836 (t!56042 (t!56042 transfers!5))))))

(assert (=> d!62516 (= (forall!87 (t!56042 (t!56042 transfers!5)) lambda!11308) e!52200)))

(declare-fun b!95737 () Bool)

(declare-fun e!52201 () Bool)

(assert (=> b!95737 (= e!52200 e!52201)))

(declare-fun res!49669 () Bool)

(assert (=> b!95737 (=> (not res!49669) (not e!52201))))

(assert (=> b!95737 (= res!49669 (dynLambda!1156 lambda!11308 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(declare-fun b!95738 () Bool)

(assert (=> b!95738 (= e!52201 (forall!87 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11308))))

(assert (= (and d!62516 (not res!49668)) b!95737))

(assert (= (and b!95737 res!49669) b!95738))

(declare-fun b_lambda!19483 () Bool)

(assert (=> (not b_lambda!19483) (not b!95737)))

(declare-fun m!91319 () Bool)

(assert (=> b!95737 m!91319))

(declare-fun m!91321 () Bool)

(assert (=> b!95738 m!91321))

(assert (=> b!95568 d!62516))

(declare-fun d!62518 () Bool)

(declare-fun lt!21990 () Int)

(assert (=> d!62518 (>= lt!21990 0)))

(declare-fun e!52202 () Int)

(assert (=> d!62518 (= lt!21990 e!52202)))

(declare-fun c!23569 () Bool)

(assert (=> d!62518 (= c!23569 (is-Nil!837 (t!56043 (t!56043 lt!21859))))))

(assert (=> d!62518 (= (size!1001 (t!56043 (t!56043 lt!21859))) lt!21990)))

(declare-fun b!95739 () Bool)

(assert (=> b!95739 (= e!52202 0)))

(declare-fun b!95740 () Bool)

(assert (=> b!95740 (= e!52202 (+ 1 (size!1001 (t!56043 (t!56043 (t!56043 lt!21859))))))))

(assert (= (and d!62518 c!23569) b!95739))

(assert (= (and d!62518 (not c!23569)) b!95740))

(declare-fun m!91323 () Bool)

(assert (=> b!95740 m!91323))

(assert (=> b!95540 d!62518))

(assert (=> b!95550 d!62068))

(declare-fun d!62520 () Bool)

(declare-fun c!23570 () Bool)

(assert (=> d!62520 (= c!23570 (is-Nil!836 (t!56042 lt!21887)))))

(declare-fun e!52203 () (Set tuple2!524))

(assert (=> d!62520 (= (content!207 (t!56042 lt!21887)) e!52203)))

(declare-fun b!95741 () Bool)

(assert (=> b!95741 (= e!52203 (as emptyset (Set tuple2!524)))))

(declare-fun b!95742 () Bool)

(assert (=> b!95742 (= e!52203 (union (insert (h!7729 (t!56042 lt!21887)) (as emptyset (Set tuple2!524))) (content!207 (t!56042 (t!56042 lt!21887)))))))

(assert (= (and d!62520 c!23570) b!95741))

(assert (= (and d!62520 (not c!23570)) b!95742))

(declare-fun m!91325 () Bool)

(assert (=> b!95742 m!91325))

(declare-fun m!91327 () Bool)

(assert (=> b!95742 m!91327))

(assert (=> b!95480 d!62520))

(declare-fun d!62522 () Bool)

(assert (=> d!62522 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))) (Cons!836 (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))) (map!731 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))) lambda!11294)))))

(assert (=> b!95522 d!62522))

(declare-fun d!62524 () Bool)

(declare-fun lt!21991 () List!898)

(assert (=> d!62524 (= (size!1003 lt!21991) (size!1002 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))))

(declare-fun e!52204 () List!898)

(assert (=> d!62524 (= lt!21991 e!52204)))

(declare-fun c!23571 () Bool)

(assert (=> d!62524 (= c!23571 (is-Nil!836 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))))

(assert (=> d!62524 (= (map!731 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))) lambda!11294) lt!21991)))

(declare-fun b!95743 () Bool)

(assert (=> b!95743 (= e!52204 Nil!838)))

(declare-fun b!95744 () Bool)

(assert (=> b!95744 (= e!52204 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))))))

(assert (= (and d!62524 c!23571) b!95743))

(assert (= (and d!62524 (not c!23571)) b!95744))

(declare-fun b_lambda!19485 () Bool)

(assert (=> (not b_lambda!19485) (not b!95744)))

(declare-fun m!91329 () Bool)

(assert (=> d!62524 m!91329))

(assert (=> d!62524 m!91217))

(declare-fun m!91331 () Bool)

(assert (=> b!95744 m!91331))

(declare-fun m!91333 () Bool)

(assert (=> b!95744 m!91333))

(assert (=> b!95744 m!91331))

(assert (=> b!95744 m!91333))

(declare-fun m!91335 () Bool)

(assert (=> b!95744 m!91335))

(assert (=> b!95522 d!62524))

(declare-fun d!62526 () Bool)

(declare-fun lt!21992 () Int)

(assert (=> d!62526 (>= lt!21992 0)))

(declare-fun e!52205 () Int)

(assert (=> d!62526 (= lt!21992 e!52205)))

(declare-fun c!23572 () Bool)

(assert (=> d!62526 (= c!23572 (is-Nil!838 (t!56044 lt!21883)))))

(assert (=> d!62526 (= (size!1003 (t!56044 lt!21883)) lt!21992)))

(declare-fun b!95745 () Bool)

(assert (=> b!95745 (= e!52205 0)))

(declare-fun b!95746 () Bool)

(assert (=> b!95746 (= e!52205 (+ 1 (size!1003 (t!56044 (t!56044 lt!21883)))))))

(assert (= (and d!62526 c!23572) b!95745))

(assert (= (and d!62526 (not c!23572)) b!95746))

(declare-fun m!91337 () Bool)

(assert (=> b!95746 m!91337))

(assert (=> b!95466 d!62526))

(declare-fun d!62528 () Bool)

(declare-fun lt!21993 () Int)

(assert (=> d!62528 (>= lt!21993 0)))

(declare-fun e!52206 () Int)

(assert (=> d!62528 (= lt!21993 e!52206)))

(declare-fun c!23573 () Bool)

(assert (=> d!62528 (= c!23573 (is-Nil!838 (t!56044 lt!21895)))))

(assert (=> d!62528 (= (size!1003 (t!56044 lt!21895)) lt!21993)))

(declare-fun b!95747 () Bool)

(assert (=> b!95747 (= e!52206 0)))

(declare-fun b!95748 () Bool)

(assert (=> b!95748 (= e!52206 (+ 1 (size!1003 (t!56044 (t!56044 lt!21895)))))))

(assert (= (and d!62528 c!23573) b!95747))

(assert (= (and d!62528 (not c!23573)) b!95748))

(declare-fun m!91339 () Bool)

(assert (=> b!95748 m!91339))

(assert (=> b!95544 d!62528))

(declare-fun d!62530 () Bool)

(declare-fun c!23574 () Bool)

(assert (=> d!62530 (= c!23574 (is-Nil!836 lt!21925))))

(declare-fun e!52207 () (Set tuple2!524))

(assert (=> d!62530 (= (content!207 lt!21925) e!52207)))

(declare-fun b!95749 () Bool)

(assert (=> b!95749 (= e!52207 (as emptyset (Set tuple2!524)))))

(declare-fun b!95750 () Bool)

(assert (=> b!95750 (= e!52207 (union (insert (h!7729 lt!21925) (as emptyset (Set tuple2!524))) (content!207 (t!56042 lt!21925))))))

(assert (= (and d!62530 c!23574) b!95749))

(assert (= (and d!62530 (not c!23574)) b!95750))

(declare-fun m!91341 () Bool)

(assert (=> b!95750 m!91341))

(declare-fun m!91343 () Bool)

(assert (=> b!95750 m!91343))

(assert (=> b!95516 d!62530))

(assert (=> b!95516 d!62068))

(declare-fun d!62532 () Bool)

(declare-fun lt!21994 () Int)

(assert (=> d!62532 (>= lt!21994 0)))

(declare-fun e!52208 () Int)

(assert (=> d!62532 (= lt!21994 e!52208)))

(declare-fun c!23575 () Bool)

(assert (=> d!62532 (= c!23575 (is-Nil!837 (t!56043 (t!56043 (t!56043 (t!56043 lt!21816))))))))

(assert (=> d!62532 (= (size!1001 (t!56043 (t!56043 (t!56043 (t!56043 lt!21816))))) lt!21994)))

(declare-fun b!95751 () Bool)

(assert (=> b!95751 (= e!52208 0)))

(declare-fun b!95752 () Bool)

(assert (=> b!95752 (= e!52208 (+ 1 (size!1001 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 lt!21816))))))))))

(assert (= (and d!62532 c!23575) b!95751))

(assert (= (and d!62532 (not c!23575)) b!95752))

(declare-fun m!91345 () Bool)

(assert (=> b!95752 m!91345))

(assert (=> b!95474 d!62532))

(declare-fun d!62534 () Bool)

(declare-fun res!49670 () Bool)

(declare-fun e!52209 () Bool)

(assert (=> d!62534 (=> res!49670 e!52209)))

(assert (=> d!62534 (= res!49670 (is-Nil!837 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))))))))

(assert (=> d!62534 (= (forall!86 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))))) lambda!11272) e!52209)))

(declare-fun b!95753 () Bool)

(declare-fun e!52210 () Bool)

(assert (=> b!95753 (= e!52209 e!52210)))

(declare-fun res!49671 () Bool)

(assert (=> b!95753 (=> (not res!49671) (not e!52210))))

(assert (=> b!95753 (= res!49671 (dynLambda!1154 lambda!11272 (h!7730 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))))))))))

(declare-fun b!95754 () Bool)

(assert (=> b!95754 (= e!52210 (forall!86 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))))) lambda!11272))))

(assert (= (and d!62534 (not res!49670)) b!95753))

(assert (= (and b!95753 res!49671) b!95754))

(declare-fun b_lambda!19487 () Bool)

(assert (=> (not b_lambda!19487) (not b!95753)))

(declare-fun m!91347 () Bool)

(assert (=> b!95753 m!91347))

(declare-fun m!91349 () Bool)

(assert (=> b!95754 m!91349))

(assert (=> b!95596 d!62534))

(declare-fun d!62536 () Bool)

(declare-fun lt!21995 () Int)

(assert (=> d!62536 (>= lt!21995 0)))

(declare-fun e!52211 () Int)

(assert (=> d!62536 (= lt!21995 e!52211)))

(declare-fun c!23576 () Bool)

(assert (=> d!62536 (= c!23576 (is-Nil!839 (t!56069 (t!56069 (t!56069 lt!21830)))))))

(assert (=> d!62536 (= (size!1004 (t!56069 (t!56069 (t!56069 lt!21830)))) lt!21995)))

(declare-fun b!95755 () Bool)

(assert (=> b!95755 (= e!52211 0)))

(declare-fun b!95756 () Bool)

(assert (=> b!95756 (= e!52211 (+ 1 (size!1004 (t!56069 (t!56069 (t!56069 (t!56069 lt!21830)))))))))

(assert (= (and d!62536 c!23576) b!95755))

(assert (= (and d!62536 (not c!23576)) b!95756))

(declare-fun m!91351 () Bool)

(assert (=> b!95756 m!91351))

(assert (=> b!95472 d!62536))

(assert (=> b!95507 d!62448))

(declare-fun d!62538 () Bool)

(declare-fun lt!21996 () Int)

(assert (=> d!62538 (>= lt!21996 0)))

(declare-fun e!52212 () Int)

(assert (=> d!62538 (= lt!21996 e!52212)))

(declare-fun c!23577 () Bool)

(assert (=> d!62538 (= c!23577 (is-Nil!838 lt!21915))))

(assert (=> d!62538 (= (size!1003 lt!21915) lt!21996)))

(declare-fun b!95757 () Bool)

(assert (=> b!95757 (= e!52212 0)))

(declare-fun b!95758 () Bool)

(assert (=> b!95758 (= e!52212 (+ 1 (size!1003 (t!56044 lt!21915))))))

(assert (= (and d!62538 c!23577) b!95757))

(assert (= (and d!62538 (not c!23577)) b!95758))

(declare-fun m!91353 () Bool)

(assert (=> b!95758 m!91353))

(assert (=> d!62204 d!62538))

(assert (=> d!62204 d!62394))

(declare-fun d!62540 () Bool)

(assert (=> d!62540 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))) (Cons!836 (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))) (map!731 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))) lambda!11283)))))

(assert (=> b!95470 d!62540))

(declare-fun d!62542 () Bool)

(declare-fun lt!21997 () List!898)

(assert (=> d!62542 (= (size!1003 lt!21997) (size!1002 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))))

(declare-fun e!52213 () List!898)

(assert (=> d!62542 (= lt!21997 e!52213)))

(declare-fun c!23578 () Bool)

(assert (=> d!62542 (= c!23578 (is-Nil!836 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))))

(assert (=> d!62542 (= (map!731 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))) lambda!11283) lt!21997)))

(declare-fun b!95759 () Bool)

(assert (=> b!95759 (= e!52213 Nil!838)))

(declare-fun b!95760 () Bool)

(assert (=> b!95760 (= e!52213 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))))))

(assert (= (and d!62542 c!23578) b!95759))

(assert (= (and d!62542 (not c!23578)) b!95760))

(declare-fun b_lambda!19489 () Bool)

(assert (=> (not b_lambda!19489) (not b!95760)))

(declare-fun m!91355 () Bool)

(assert (=> d!62542 m!91355))

(assert (=> d!62542 m!91211))

(declare-fun m!91357 () Bool)

(assert (=> b!95760 m!91357))

(declare-fun m!91359 () Bool)

(assert (=> b!95760 m!91359))

(assert (=> b!95760 m!91357))

(assert (=> b!95760 m!91359))

(declare-fun m!91361 () Bool)

(assert (=> b!95760 m!91361))

(assert (=> b!95470 d!62542))

(declare-fun d!62544 () Bool)

(declare-fun c!23579 () Bool)

(assert (=> d!62544 (= c!23579 (is-Nil!838 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))))))

(declare-fun e!52214 () Int)

(assert (=> d!62544 (= (foldLeft!11 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))) lambda!11284) e!52214)))

(declare-fun b!95761 () Bool)

(assert (=> b!95761 (= e!52214 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))))))

(declare-fun b!95762 () Bool)

(assert (=> b!95762 (= e!52214 (foldLeft!11 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))) (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))))) lambda!11284))))

(assert (= (and d!62544 c!23579) b!95761))

(assert (= (and d!62544 (not c!23579)) b!95762))

(declare-fun b_lambda!19491 () Bool)

(assert (=> (not b_lambda!19491) (not b!95762)))

(assert (=> b!95762 m!91075))

(declare-fun m!91363 () Bool)

(assert (=> b!95762 m!91363))

(assert (=> b!95762 m!91363))

(declare-fun m!91365 () Bool)

(assert (=> b!95762 m!91365))

(assert (=> b!95592 d!62544))

(declare-fun d!62546 () Bool)

(declare-fun lt!21998 () Int)

(assert (=> d!62546 (>= lt!21998 0)))

(declare-fun e!52215 () Int)

(assert (=> d!62546 (= lt!21998 e!52215)))

(declare-fun c!23580 () Bool)

(assert (=> d!62546 (= c!23580 (is-Nil!838 (t!56044 (t!56044 lt!21851))))))

(assert (=> d!62546 (= (size!1003 (t!56044 (t!56044 lt!21851))) lt!21998)))

(declare-fun b!95763 () Bool)

(assert (=> b!95763 (= e!52215 0)))

(declare-fun b!95764 () Bool)

(assert (=> b!95764 (= e!52215 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 lt!21851))))))))

(assert (= (and d!62546 c!23580) b!95763))

(assert (= (and d!62546 (not c!23580)) b!95764))

(declare-fun m!91367 () Bool)

(assert (=> b!95764 m!91367))

(assert (=> b!95542 d!62546))

(declare-fun d!62548 () Bool)

(declare-fun lt!21999 () Int)

(assert (=> d!62548 (>= lt!21999 0)))

(declare-fun e!52216 () Int)

(assert (=> d!62548 (= lt!21999 e!52216)))

(declare-fun c!23581 () Bool)

(assert (=> d!62548 (= c!23581 (is-Nil!836 lt!21917))))

(assert (=> d!62548 (= (size!1002 lt!21917) lt!21999)))

(declare-fun b!95765 () Bool)

(assert (=> b!95765 (= e!52216 0)))

(declare-fun b!95766 () Bool)

(assert (=> b!95766 (= e!52216 (+ 1 (size!1002 (t!56042 lt!21917))))))

(assert (= (and d!62548 c!23581) b!95765))

(assert (= (and d!62548 (not c!23581)) b!95766))

(declare-fun m!91369 () Bool)

(assert (=> b!95766 m!91369))

(assert (=> d!62218 d!62548))

(assert (=> d!62218 d!61940))

(declare-fun b_lambda!19493 () Bool)

(assert (= b_lambda!19471 (or start!15478 b_lambda!19493)))

(declare-fun bs!43561 () Bool)

(declare-fun d!62550 () Bool)

(assert (= bs!43561 (and d!62550 start!15478)))

(assert (=> bs!43561 (= (dynLambda!1158 lambda!11268 (v!3224 (find!8 transfers!5 lambda!11316))) (_2!301 (v!3224 (find!8 transfers!5 lambda!11316))))))

(assert (=> b!95703 d!62550))

(declare-fun b_lambda!19495 () Bool)

(assert (= b_lambda!19441 (or d!61782 b_lambda!19495)))

(declare-fun bs!43562 () Bool)

(declare-fun d!62552 () Bool)

(assert (= bs!43562 (and d!62552 d!61782)))

(assert (=> bs!43562 (= (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))))) (+ (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))))))))

(assert (=> b!95651 d!62552))

(declare-fun b_lambda!19497 () Bool)

(assert (= b_lambda!19427 (or b!95120 b_lambda!19497)))

(declare-fun bs!43563 () Bool)

(declare-fun d!62554 () Bool)

(assert (= bs!43563 (and d!62554 b!95120)))

(assert (=> bs!43563 (= (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(assert (=> b!95612 d!62554))

(declare-fun b_lambda!19499 () Bool)

(assert (= b_lambda!19483 (or d!61904 b_lambda!19499)))

(declare-fun bs!43564 () Bool)

(declare-fun d!62556 () Bool)

(assert (= bs!43564 (and d!62556 d!61904)))

(assert (=> bs!43564 (= (dynLambda!1156 lambda!11308 (h!7729 (t!56042 (t!56042 transfers!5)))) (not (dynLambda!1156 lambda!11304 (h!7729 (t!56042 (t!56042 transfers!5))))))))

(declare-fun b_lambda!19563 () Bool)

(assert (=> (not b_lambda!19563) (not bs!43564)))

(declare-fun m!91371 () Bool)

(assert (=> bs!43564 m!91371))

(assert (=> b!95737 d!62556))

(declare-fun b_lambda!19501 () Bool)

(assert (= b_lambda!19453 (or start!15478 b_lambda!19501)))

(declare-fun bs!43565 () Bool)

(declare-fun d!62558 () Bool)

(assert (= bs!43565 (and d!62558 start!15478)))

(assert (=> bs!43565 (= (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))))) (+ (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))))))))

(assert (=> b!95671 d!62558))

(declare-fun b_lambda!19503 () Bool)

(assert (= b_lambda!19489 (or d!61782 b_lambda!19503)))

(declare-fun bs!43566 () Bool)

(declare-fun d!62560 () Bool)

(assert (= bs!43566 (and d!62560 d!61782)))

(assert (=> bs!43566 (= (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))) (_2!301 (h!7729 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))))))

(assert (=> b!95760 d!62560))

(declare-fun b_lambda!19505 () Bool)

(assert (= b_lambda!19491 (or d!61782 b_lambda!19505)))

(declare-fun bs!43567 () Bool)

(declare-fun d!62562 () Bool)

(assert (= bs!43567 (and d!62562 d!61782)))

(assert (=> bs!43567 (= (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))))) (+ (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))))))))

(assert (=> b!95762 d!62562))

(declare-fun b_lambda!19507 () Bool)

(assert (= b_lambda!19461 (or d!61785 b_lambda!19507)))

(declare-fun bs!43568 () Bool)

(declare-fun d!62564 () Bool)

(assert (= bs!43568 (and d!62564 d!61785)))

(assert (=> bs!43568 (= (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))))) (+ (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))))))))

(assert (=> b!95689 d!62564))

(declare-fun b_lambda!19509 () Bool)

(assert (= b_lambda!19475 (or bs!43525 b_lambda!19509)))

(declare-fun bs!43569 () Bool)

(declare-fun d!62566 () Bool)

(assert (= bs!43569 (and d!62566 d!62346 b!95121)))

(assert (=> bs!43569 (= (dynLambda!1156 lambda!11316 (h!7729 transfers!5)) (= (_1!301 (h!7729 transfers!5)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))))

(assert (=> b!95706 d!62566))

(declare-fun b_lambda!19511 () Bool)

(assert (= b_lambda!19449 (or bs!43480 b_lambda!19511)))

(declare-fun bs!43570 () Bool)

(declare-fun d!62568 () Bool)

(assert (= bs!43570 (and d!62568 d!62142 b!95121)))

(assert (=> bs!43570 (= (dynLambda!1156 lambda!11315 (h!7729 (t!56042 transfers!5))) (= (_1!301 (h!7729 (t!56042 transfers!5))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))

(assert (=> b!95660 d!62568))

(declare-fun b_lambda!19513 () Bool)

(assert (= b_lambda!19451 (or d!61928 b_lambda!19513)))

(declare-fun bs!43571 () Bool)

(declare-fun d!62570 () Bool)

(assert (= bs!43571 (and d!62570 d!61928)))

(assert (=> bs!43571 (= (dynLambda!1156 lambda!11311 (h!7729 lt!21925)) (= (_2!300 (_1!301 (h!7729 lt!21925))) (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))))

(assert (=> b!95668 d!62570))

(declare-fun b_lambda!19515 () Bool)

(assert (= b_lambda!19469 (or d!61785 b_lambda!19515)))

(declare-fun bs!43572 () Bool)

(declare-fun d!62572 () Bool)

(assert (= bs!43572 (and d!62572 d!61785)))

(assert (=> bs!43572 (= (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))))) (_2!301 (h!7729 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))))))))

(assert (=> b!95701 d!62572))

(declare-fun b_lambda!19517 () Bool)

(assert (= b_lambda!19431 (or bs!43360 b_lambda!19517)))

(declare-fun bs!43573 () Bool)

(declare-fun d!62574 () Bool)

(assert (= bs!43573 (and d!62574 d!61796 b!95121)))

(assert (=> bs!43573 (= (dynLambda!1156 lambda!11299 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) (= (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))))))

(assert (=> b!95617 d!62574))

(declare-fun b_lambda!19519 () Bool)

(assert (= b_lambda!19425 (or d!61814 b_lambda!19519)))

(declare-fun bs!43574 () Bool)

(declare-fun d!62576 () Bool)

(assert (= bs!43574 (and d!62576 d!61814)))

(assert (=> bs!43574 (= (dynLambda!1156 lambda!11302 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (not (dynLambda!1156 lambda!11298 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(declare-fun b_lambda!19565 () Bool)

(assert (=> (not b_lambda!19565) (not bs!43574)))

(declare-fun m!91373 () Bool)

(assert (=> bs!43574 m!91373))

(assert (=> b!95609 d!62576))

(declare-fun b_lambda!19521 () Bool)

(assert (= b_lambda!19447 (or bs!43480 b_lambda!19521)))

(declare-fun bs!43575 () Bool)

(declare-fun d!62578 () Bool)

(assert (= bs!43575 (and d!62578 d!62142 b!95121)))

(assert (=> bs!43575 (= (dynLambda!1156 lambda!11315 (v!3224 lt!21969)) (= (_1!301 (v!3224 lt!21969)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))

(assert (=> b!95658 d!62578))

(declare-fun b_lambda!19523 () Bool)

(assert (= b_lambda!19437 (or d!61880 b_lambda!19523)))

(declare-fun bs!43576 () Bool)

(declare-fun d!62580 () Bool)

(assert (= bs!43576 (and d!62580 d!61880)))

(assert (=> bs!43576 (= (dynLambda!1156 lambda!11307 (h!7729 (t!56042 (t!56042 transfers!5)))) (= (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))))

(assert (=> b!95639 d!62580))

(declare-fun b_lambda!19525 () Bool)

(assert (= b_lambda!19487 (or b!95120 b_lambda!19525)))

(declare-fun bs!43577 () Bool)

(declare-fun d!62582 () Bool)

(assert (= bs!43577 (and d!62582 b!95120)))

(assert (=> bs!43577 (= (dynLambda!1154 lambda!11272 (h!7730 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))))))) (not (= (_1!300 (h!7730 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))))))) (_2!300 (h!7730 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))))))))))))

(assert (=> b!95753 d!62582))

(declare-fun b_lambda!19527 () Bool)

(assert (= b_lambda!19473 (or bs!43525 b_lambda!19527)))

(declare-fun bs!43578 () Bool)

(declare-fun d!62584 () Bool)

(assert (= bs!43578 (and d!62584 d!62346 b!95121)))

(assert (=> bs!43578 (= (dynLambda!1156 lambda!11316 (v!3224 lt!21981)) (= (_1!301 (v!3224 lt!21981)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))))

(assert (=> b!95704 d!62584))

(declare-fun b_lambda!19529 () Bool)

(assert (= b_lambda!19459 (or d!61782 b_lambda!19529)))

(declare-fun bs!43579 () Bool)

(declare-fun d!62586 () Bool)

(assert (= bs!43579 (and d!62586 d!61782)))

(assert (=> bs!43579 (= (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))) (and (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))))))

(assert (=> b!95687 d!62586))

(declare-fun b_lambda!19531 () Bool)

(assert (= b_lambda!19455 (or d!61880 b_lambda!19531)))

(declare-fun bs!43580 () Bool)

(declare-fun d!62588 () Bool)

(assert (= bs!43580 (and d!62588 d!61880)))

(assert (=> bs!43580 (= (dynLambda!1156 lambda!11307 (h!7729 lt!21917)) (= (_1!300 (_1!301 (h!7729 lt!21917))) (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))))

(assert (=> b!95672 d!62588))

(declare-fun b_lambda!19533 () Bool)

(assert (= b_lambda!19445 (or bs!43434 b_lambda!19533)))

(declare-fun bs!43581 () Bool)

(declare-fun d!62590 () Bool)

(assert (= bs!43581 (and d!62590 d!61972 b!95121)))

(assert (=> bs!43581 (= (dynLambda!1156 lambda!11313 (h!7729 (t!56042 (t!56042 transfers!5)))) (= (_1!301 (h!7729 (t!56042 (t!56042 transfers!5)))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))))))))

(assert (=> b!95654 d!62590))

(declare-fun b_lambda!19535 () Bool)

(assert (= b_lambda!19439 (or start!15478 b_lambda!19535)))

(declare-fun bs!43582 () Bool)

(declare-fun d!62592 () Bool)

(assert (= bs!43582 (and d!62592 start!15478)))

(assert (=> bs!43582 (= (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_2!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(assert (=> b!95641 d!62592))

(declare-fun b_lambda!19537 () Bool)

(assert (= b_lambda!19433 (or bs!43369 b_lambda!19537)))

(declare-fun bs!43583 () Bool)

(declare-fun d!62594 () Bool)

(assert (= bs!43583 (and d!62594 d!61844 b!95121)))

(assert (=> bs!43583 (= (dynLambda!1156 lambda!11303 (v!3224 lt!21957)) (= (_1!301 (v!3224 lt!21957)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))))))

(assert (=> b!95621 d!62594))

(declare-fun b_lambda!19539 () Bool)

(assert (= b_lambda!19485 (or d!61785 b_lambda!19539)))

(declare-fun bs!43584 () Bool)

(declare-fun d!62596 () Bool)

(assert (= bs!43584 (and d!62596 d!61785)))

(assert (=> bs!43584 (= (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))) (_2!301 (h!7729 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))))))

(assert (=> b!95744 d!62596))

(declare-fun b_lambda!19541 () Bool)

(assert (= b_lambda!19467 (or d!61782 b_lambda!19541)))

(declare-fun bs!43585 () Bool)

(declare-fun d!62598 () Bool)

(assert (= bs!43585 (and d!62598 d!61782)))

(assert (=> bs!43585 (= (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))))) (_2!301 (h!7729 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))))))))

(assert (=> b!95699 d!62598))

(declare-fun b_lambda!19543 () Bool)

(assert (= b_lambda!19481 (or d!61928 b_lambda!19543)))

(declare-fun bs!43586 () Bool)

(declare-fun d!62600 () Bool)

(assert (= bs!43586 (and d!62600 d!61928)))

(assert (=> bs!43586 (= (dynLambda!1156 lambda!11311 (h!7729 (t!56042 lt!21882))) (= (_2!300 (_1!301 (h!7729 (t!56042 lt!21882)))) (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))))

(assert (=> b!95735 d!62600))

(declare-fun b_lambda!19545 () Bool)

(assert (= b_lambda!19435 (or bs!43369 b_lambda!19545)))

(declare-fun bs!43587 () Bool)

(declare-fun d!62602 () Bool)

(assert (= bs!43587 (and d!62602 d!61844 b!95121)))

(assert (=> bs!43587 (= (dynLambda!1156 lambda!11303 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (= (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))))))

(assert (=> b!95623 d!62602))

(declare-fun b_lambda!19547 () Bool)

(assert (= b_lambda!19477 (or b!95121 b_lambda!19547)))

(declare-fun bs!43588 () Bool)

(declare-fun d!62604 () Bool)

(assert (= bs!43588 (and d!62604 b!95121)))

(declare-fun bs!43589 () Bool)

(assert (= bs!43589 (and d!62604 b!95121 d!61956 b!95125)))

(declare-fun lambda!11317 () Int)

(assert (=> bs!43589 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (h!7730 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))) (= lambda!11317 lambda!11312))))

(declare-fun bs!43590 () Bool)

(assert (= bs!43590 (and d!62604 b!95121 d!61972)))

(assert (=> bs!43590 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))))) (= lambda!11317 lambda!11313))))

(declare-fun bs!43591 () Bool)

(assert (= bs!43591 (and d!62604 b!95121 d!61928)))

(assert (=> bs!43591 (not (= lambda!11317 lambda!11311))))

(declare-fun bs!43592 () Bool)

(assert (= bs!43592 (and d!62604 b!95121 d!62142)))

(assert (=> bs!43592 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (= lambda!11317 lambda!11315))))

(declare-fun bs!43593 () Bool)

(assert (= bs!43593 (and d!62604 b!95121 d!61880)))

(assert (=> bs!43593 (not (= lambda!11317 lambda!11307))))

(declare-fun bs!43594 () Bool)

(assert (= bs!43594 (and d!62604 b!95121 d!62346)))

(assert (=> bs!43594 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (= lambda!11317 lambda!11316))))

(declare-fun bs!43595 () Bool)

(assert (= bs!43595 (and d!62604 b!95121 d!61846 b!95125)))

(assert (=> bs!43595 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (h!7730 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))) (= lambda!11317 lambda!11304))))

(declare-fun bs!43596 () Bool)

(assert (= bs!43596 (and d!62604 b!95121 d!62104)))

(assert (=> bs!43596 (not (= lambda!11317 lambda!11314))))

(assert (=> bs!43588 (not (= lambda!11317 lambda!11273))))

(declare-fun bs!43597 () Bool)

(assert (= bs!43597 (and d!62604 b!95121 d!61904)))

(assert (=> bs!43597 (not (= lambda!11317 lambda!11308))))

(declare-fun bs!43598 () Bool)

(assert (= bs!43598 (and d!62604 b!95121 d!61814)))

(assert (=> bs!43598 (not (= lambda!11317 lambda!11302))))

(declare-fun bs!43599 () Bool)

(assert (= bs!43599 (and d!62604 b!95121 d!61844)))

(assert (=> bs!43599 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))) (= lambda!11317 lambda!11303))))

(declare-fun bs!43600 () Bool)

(assert (= bs!43600 (and d!62604 b!95121 d!61796)))

(assert (=> bs!43600 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))) (= lambda!11317 lambda!11299))))

(declare-fun bs!43601 () Bool)

(assert (= bs!43601 (and d!62604 b!95121 d!61788 b!95125)))

(assert (=> bs!43601 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) (= lambda!11317 lambda!11298))))

(assert (=> bs!43588 true))

(declare-fun res!49672 () Bool)

(declare-fun e!52217 () Bool)

(assert (=> bs!43588 (=> (not res!49672) (not e!52217))))

(declare-fun lt!22000 () Option!768)

(assert (=> bs!43588 (= res!49672 (isDefined!27 lt!22000))))

(assert (=> bs!43588 (= lt!22000 (map!733 (find!8 transfers!5 lambda!11317) lambda!11268))))

(declare-fun lt!22001 () Int)

(assert (=> bs!43588 (= lt!22001 (_2!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(assert (=> bs!43588 (= (dynLambda!1156 lambda!11273 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) e!52217)))

(declare-fun b!95770 () Bool)

(declare-fun e!52218 () Bool)

(assert (=> b!95770 (= e!52218 (> (get!1256 lt!22000) 0))))

(declare-fun b!95767 () Bool)

(declare-fun res!49675 () Bool)

(assert (=> b!95767 (=> (not res!49675) (not e!52217))))

(declare-fun e!52219 () Bool)

(assert (=> b!95767 (= res!49675 e!52219)))

(declare-fun res!49673 () Bool)

(assert (=> b!95767 (=> res!49673 e!52219)))

(assert (=> b!95767 (= res!49673 (= (get!1256 lt!22000) 0))))

(declare-fun b!95768 () Bool)

(assert (=> b!95768 (= e!52219 (= lt!22001 0))))

(declare-fun b!95769 () Bool)

(assert (=> b!95769 (= e!52217 e!52218)))

(declare-fun res!49674 () Bool)

(assert (=> b!95769 (=> res!49674 e!52218)))

(assert (=> b!95769 (= res!49674 (> lt!22001 0))))

(assert (= (and bs!43588 res!49672) b!95767))

(assert (= (and b!95767 (not res!49673)) b!95768))

(assert (= (and b!95767 res!49675) b!95769))

(assert (= (and b!95769 (not res!49674)) b!95770))

(declare-fun m!91375 () Bool)

(assert (=> bs!43588 m!91375))

(declare-fun m!91377 () Bool)

(assert (=> bs!43588 m!91377))

(assert (=> bs!43588 m!91377))

(declare-fun m!91379 () Bool)

(assert (=> bs!43588 m!91379))

(declare-fun m!91381 () Bool)

(assert (=> b!95770 m!91381))

(assert (=> b!95767 m!91381))

(assert (=> b!95716 d!62604))

(declare-fun b_lambda!19549 () Bool)

(assert (= b_lambda!19463 (or d!61785 b_lambda!19549)))

(declare-fun bs!43602 () Bool)

(declare-fun d!62606 () Bool)

(assert (= bs!43602 (and d!62606 d!61785)))

(assert (=> bs!43602 (= (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))) (and (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))))))

(assert (=> b!95691 d!62606))

(declare-fun b_lambda!19551 () Bool)

(assert (= b_lambda!19465 (or d!61785 b_lambda!19551)))

(declare-fun bs!43603 () Bool)

(declare-fun d!62608 () Bool)

(assert (= bs!43603 (and d!62608 d!61785)))

(assert (=> bs!43603 (= (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))))) (+ (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))))))))

(assert (=> b!95695 d!62608))

(declare-fun b_lambda!19553 () Bool)

(assert (= b_lambda!19457 (or d!62104 b_lambda!19553)))

(declare-fun bs!43604 () Bool)

(declare-fun d!62610 () Bool)

(assert (= bs!43604 (and d!62610 d!62104)))

(assert (=> bs!43604 (= (dynLambda!1156 lambda!11314 (h!7729 (t!56042 transfers!5))) (not (dynLambda!1156 lambda!11312 (h!7729 (t!56042 transfers!5)))))))

(declare-fun b_lambda!19567 () Bool)

(assert (=> (not b_lambda!19567) (not bs!43604)))

(declare-fun m!91383 () Bool)

(assert (=> bs!43604 m!91383))

(assert (=> b!95684 d!62610))

(declare-fun b_lambda!19555 () Bool)

(assert (= b_lambda!19429 (or bs!43360 b_lambda!19555)))

(declare-fun bs!43605 () Bool)

(declare-fun d!62612 () Bool)

(assert (= bs!43605 (and d!62612 d!61796 b!95121)))

(assert (=> bs!43605 (= (dynLambda!1156 lambda!11299 (v!3224 lt!21956)) (= (_1!301 (v!3224 lt!21956)) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))))))

(assert (=> b!95615 d!62612))

(declare-fun b_lambda!19557 () Bool)

(assert (= b_lambda!19423 (or d!61880 b_lambda!19557)))

(declare-fun bs!43606 () Bool)

(declare-fun d!62614 () Bool)

(assert (= bs!43606 (and d!62614 d!61880)))

(assert (=> bs!43606 (= (dynLambda!1156 lambda!11307 (h!7729 (t!56042 lt!21887))) (= (_1!300 (_1!301 (h!7729 (t!56042 lt!21887)))) (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))))

(assert (=> b!95601 d!62614))

(declare-fun b_lambda!19559 () Bool)

(assert (= b_lambda!19479 (or d!61928 b_lambda!19559)))

(declare-fun bs!43607 () Bool)

(declare-fun d!62616 () Bool)

(assert (= bs!43607 (and d!62616 d!61928)))

(assert (=> bs!43607 (= (dynLambda!1156 lambda!11311 (h!7729 (t!56042 (t!56042 transfers!5)))) (= (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))))

(assert (=> b!95730 d!62616))

(declare-fun b_lambda!19561 () Bool)

(assert (= b_lambda!19443 (or bs!43434 b_lambda!19561)))

(declare-fun bs!43608 () Bool)

(declare-fun d!62618 () Bool)

(assert (= bs!43608 (and d!62618 d!61972 b!95121)))

(assert (=> bs!43608 (= (dynLambda!1156 lambda!11313 (v!3224 lt!21968)) (= (_1!301 (v!3224 lt!21968)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))))))))

(assert (=> b!95652 d!62618))

(push 1)

(assert (not b!95667))

(assert (not b!95606))

(assert (not b_lambda!19271))

(assert (not b_lambda!19237))

(assert (not b!95689))

(assert (not b!95756))

(assert (not b!95742))

(assert (not b_lambda!19359))

(assert (not b!95711))

(assert (not b!95608))

(assert (not b_lambda!19513))

(assert (not b_lambda!19493))

(assert (not b!95758))

(assert (not b!95697))

(assert (not b!95701))

(assert (not b_lambda!19083))

(assert (not b_lambda!19087))

(assert (not b_lambda!19151))

(assert (not b_lambda!19555))

(assert (not b!95744))

(assert (not b_lambda!19227))

(assert (not b_lambda!19403))

(assert (not b!95651))

(assert (not b_lambda!19255))

(assert (not b!95665))

(assert (not b!95738))

(assert (not b_lambda!19035))

(assert (not b_lambda!19523))

(assert (not b_lambda!19147))

(assert (not b_lambda!19357))

(assert (not b_lambda!19267))

(assert (not b_lambda!19363))

(assert (not bs!43588))

(assert (not b_lambda!19167))

(assert (not b_lambda!19521))

(assert (not b_lambda!19369))

(assert (not b!95707))

(assert (not b_lambda!19515))

(assert (not b_lambda!19067))

(assert (not b!95687))

(assert (not b!95655))

(assert (not b_lambda!19373))

(assert (not b_lambda!19537))

(assert (not b!95746))

(assert (not b_lambda!19251))

(assert (not b_lambda!19243))

(assert (not b_lambda!19137))

(assert (not b_lambda!19381))

(assert (not b_lambda!19149))

(assert (not b_lambda!19379))

(assert (not b!95675))

(assert (not b_lambda!19275))

(assert (not b_lambda!19031))

(assert (not b_lambda!19157))

(assert (not b_lambda!19421))

(assert (not b_lambda!19505))

(assert (not d!62476))

(assert (not b!95748))

(assert (not b_lambda!19139))

(assert (not b_lambda!19351))

(assert (not b_lambda!19499))

(assert (not b_lambda!19239))

(assert (not b!95643))

(assert (not b_lambda!19233))

(assert (not b_lambda!19365))

(assert (not b_lambda!19263))

(assert (not d!62480))

(assert (not b_lambda!19071))

(assert (not b_lambda!19277))

(assert (not d!62524))

(assert (not b_lambda!19525))

(assert (not b_lambda!19509))

(assert (not b!95624))

(assert (not b_lambda!19551))

(assert (not b!95770))

(assert (not b_lambda!19259))

(assert (not b!95637))

(assert (not b_lambda!19507))

(assert (not b_lambda!19253))

(assert (not b!95732))

(assert (not b_lambda!19377))

(assert (not b_lambda!19541))

(assert (not b_lambda!19077))

(assert (not b_lambda!19497))

(assert (not b!95604))

(assert (not b_lambda!19283))

(assert (not d!62510))

(assert (not b_lambda!19081))

(assert (not b_lambda!19561))

(assert (not b_lambda!19393))

(assert (not b_lambda!19519))

(assert (not b!95691))

(assert (not b_lambda!19355))

(assert (not b!95717))

(assert (not b_lambda!19273))

(assert (not b!95647))

(assert (not d!62542))

(assert (not b_lambda!19075))

(assert (not b_lambda!19029))

(assert (not b_lambda!19247))

(assert (not b!95705))

(assert (not b!95740))

(assert (not b!95736))

(assert (not b_lambda!19559))

(assert (not b!95767))

(assert (not b!95653))

(assert (not b_lambda!19165))

(assert (not b_lambda!19033))

(assert (not b_lambda!19511))

(assert (not b_lambda!19155))

(assert (not b_lambda!19257))

(assert (not b_lambda!19501))

(assert (not b!95764))

(assert (not b_lambda!19241))

(assert (not b_lambda!19405))

(assert (not b_lambda!19135))

(assert (not b_lambda!19069))

(assert (not b_lambda!19163))

(assert (not b_lambda!19349))

(assert (not b_lambda!19065))

(assert (not b_lambda!19563))

(assert (not b_lambda!19161))

(assert (not b!95750))

(assert (not b_lambda!19261))

(assert (not d!62420))

(assert (not b_lambda!19169))

(assert (not b_lambda!19387))

(assert (not b!95610))

(assert (not b_lambda!19027))

(assert (not b!95752))

(assert (not b_lambda!19371))

(assert (not b!95618))

(assert (not b!95760))

(assert (not b!95633))

(assert (not b_lambda!19553))

(assert (not b_lambda!19153))

(assert (not b!95693))

(assert (not b!95728))

(assert (not b_lambda!19159))

(assert (not b!95673))

(assert (not b!95726))

(assert (not b_lambda!19503))

(assert (not d!62416))

(assert (not b!95695))

(assert (not b_lambda!19545))

(assert (not b_lambda!19397))

(assert (not b_lambda!19527))

(assert (not b_lambda!19285))

(assert (not b_lambda!19395))

(assert (not b!95661))

(assert (not b_lambda!19361))

(assert (not b!95649))

(assert (not b!95766))

(assert (not b!95622))

(assert (not b_lambda!19389))

(assert (not b_lambda!19145))

(assert (not b!95635))

(assert (not b!95762))

(assert (not b_lambda!19535))

(assert (not b_lambda!19173))

(assert (not b!95683))

(assert (not b!95754))

(assert (not d!62402))

(assert (not b_lambda!19089))

(assert (not b_lambda!19529))

(assert (not b!95699))

(assert (not b!95645))

(assert (not b_lambda!19409))

(assert (not b_lambda!19419))

(assert (not b!95612))

(assert (not b_lambda!19383))

(assert (not b!95671))

(assert (not b_lambda!19269))

(assert (not b_lambda!19385))

(assert (not b_lambda!19407))

(assert (not b_lambda!19557))

(assert (not b!95734))

(assert (not b_lambda!19245))

(assert (not b!95614))

(assert (not b_lambda!19399))

(assert (not b_lambda!19543))

(assert (not b_lambda!19375))

(assert (not b!95724))

(assert (not b_lambda!19567))

(assert (not b_lambda!19547))

(assert (not b!95681))

(assert (not b_lambda!19235))

(assert (not b_lambda!19143))

(assert (not b!95677))

(assert (not b!95723))

(assert (not b_lambda!19565))

(assert (not d!62484))

(assert (not b_lambda!19037))

(assert (not b!95669))

(assert (not b!95616))

(assert (not d!62512))

(assert (not d!62486))

(assert (not b_lambda!19085))

(assert (not b!95715))

(assert (not b_lambda!19079))

(assert (not b_lambda!19517))

(assert (not b!95685))

(assert (not b_lambda!19131))

(assert (not b!95679))

(assert (not b_lambda!19549))

(assert (not b_lambda!19417))

(assert (not b!95632))

(assert (not b!95630))

(assert (not b_lambda!19231))

(assert (not b_lambda!19533))

(assert (not b!95719))

(assert (not b_lambda!19531))

(assert (not b!95713))

(assert (not b_lambda!19353))

(assert (not b_lambda!19401))

(assert (not b_lambda!19265))

(assert (not b_lambda!19073))

(assert (not d!62504))

(assert (not b!95641))

(assert (not b_lambda!19133))

(assert (not b!95602))

(assert (not b_lambda!19229))

(assert (not b_lambda!19367))

(assert (not b!95721))

(assert (not b_lambda!19495))

(assert (not b_lambda!19539))

(assert (not b_lambda!19141))

(assert (not b!95659))

(assert (not b_lambda!19249))

(assert (not b_lambda!19391))

(assert (not b!95628))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19569 () Bool)

(assert (= b_lambda!19567 (or bs!43417 b_lambda!19569)))

(declare-fun bs!43609 () Bool)

(declare-fun d!62620 () Bool)

(assert (= bs!43609 (and d!62620 d!61956 b!95125)))

(assert (=> bs!43609 (= (dynLambda!1156 lambda!11312 (h!7729 (t!56042 transfers!5))) (= (_1!301 (h!7729 (t!56042 transfers!5))) (h!7730 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))))))

(assert (=> bs!43604 d!62620))

(declare-fun b_lambda!19571 () Bool)

(assert (= b_lambda!19565 (or bs!43355 b_lambda!19571)))

(declare-fun bs!43610 () Bool)

(declare-fun d!62622 () Bool)

(assert (= bs!43610 (and d!62622 d!61788 b!95125)))

(assert (=> bs!43610 (= (dynLambda!1156 lambda!11298 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (= (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))))

(assert (=> bs!43574 d!62622))

(declare-fun b_lambda!19573 () Bool)

(assert (= b_lambda!19563 (or bs!43373 b_lambda!19573)))

(declare-fun bs!43611 () Bool)

(declare-fun d!62624 () Bool)

(assert (= bs!43611 (and d!62624 d!61846 b!95125)))

(assert (=> bs!43611 (= (dynLambda!1156 lambda!11304 (h!7729 (t!56042 (t!56042 transfers!5)))) (= (_1!301 (h!7729 (t!56042 (t!56042 transfers!5)))) (h!7730 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))))))

(assert (=> bs!43564 d!62624))

(push 1)

(assert (not b!95667))

(assert (not b!95606))

(assert (not b_lambda!19271))

(assert (not b_lambda!19237))

(assert (not b!95689))

(assert (not b!95756))

(assert (not b!95742))

(assert (not b_lambda!19359))

(assert (not b!95711))

(assert (not b!95608))

(assert (not b_lambda!19513))

(assert (not b_lambda!19493))

(assert (not b!95758))

(assert (not b!95697))

(assert (not b!95701))

(assert (not b_lambda!19083))

(assert (not b_lambda!19087))

(assert (not b_lambda!19151))

(assert (not b_lambda!19555))

(assert (not b!95744))

(assert (not b_lambda!19227))

(assert (not b_lambda!19403))

(assert (not b!95651))

(assert (not b_lambda!19255))

(assert (not b!95665))

(assert (not b!95738))

(assert (not b_lambda!19035))

(assert (not b_lambda!19523))

(assert (not b_lambda!19147))

(assert (not b_lambda!19357))

(assert (not b_lambda!19267))

(assert (not b_lambda!19573))

(assert (not b_lambda!19363))

(assert (not bs!43588))

(assert (not b_lambda!19167))

(assert (not b_lambda!19521))

(assert (not b_lambda!19369))

(assert (not b!95707))

(assert (not b_lambda!19515))

(assert (not b_lambda!19067))

(assert (not b!95687))

(assert (not b!95655))

(assert (not b_lambda!19373))

(assert (not b_lambda!19537))

(assert (not b!95746))

(assert (not b_lambda!19251))

(assert (not b_lambda!19243))

(assert (not b_lambda!19137))

(assert (not b_lambda!19381))

(assert (not b_lambda!19149))

(assert (not b_lambda!19379))

(assert (not b!95675))

(assert (not b_lambda!19275))

(assert (not b_lambda!19031))

(assert (not b_lambda!19157))

(assert (not b_lambda!19421))

(assert (not b_lambda!19505))

(assert (not d!62476))

(assert (not b!95748))

(assert (not b_lambda!19139))

(assert (not b_lambda!19351))

(assert (not b_lambda!19499))

(assert (not b_lambda!19239))

(assert (not b!95643))

(assert (not b_lambda!19233))

(assert (not b_lambda!19365))

(assert (not b_lambda!19263))

(assert (not d!62480))

(assert (not b_lambda!19071))

(assert (not b_lambda!19277))

(assert (not d!62524))

(assert (not b_lambda!19525))

(assert (not b_lambda!19509))

(assert (not b!95624))

(assert (not b_lambda!19551))

(assert (not b!95770))

(assert (not b_lambda!19259))

(assert (not b!95637))

(assert (not b_lambda!19507))

(assert (not b_lambda!19253))

(assert (not b!95732))

(assert (not b_lambda!19377))

(assert (not b_lambda!19541))

(assert (not b_lambda!19077))

(assert (not b_lambda!19497))

(assert (not b!95604))

(assert (not b_lambda!19283))

(assert (not d!62510))

(assert (not b_lambda!19081))

(assert (not b_lambda!19561))

(assert (not b_lambda!19393))

(assert (not b_lambda!19519))

(assert (not b!95691))

(assert (not b_lambda!19355))

(assert (not b!95717))

(assert (not b_lambda!19273))

(assert (not b!95647))

(assert (not d!62542))

(assert (not b_lambda!19075))

(assert (not b_lambda!19029))

(assert (not b_lambda!19247))

(assert (not b!95705))

(assert (not b!95740))

(assert (not b!95736))

(assert (not b_lambda!19559))

(assert (not b!95767))

(assert (not b!95653))

(assert (not b_lambda!19165))

(assert (not b_lambda!19033))

(assert (not b_lambda!19511))

(assert (not b_lambda!19155))

(assert (not b_lambda!19257))

(assert (not b_lambda!19501))

(assert (not b!95764))

(assert (not b_lambda!19241))

(assert (not b_lambda!19405))

(assert (not b_lambda!19569))

(assert (not b_lambda!19135))

(assert (not b_lambda!19069))

(assert (not b_lambda!19163))

(assert (not b_lambda!19349))

(assert (not b_lambda!19065))

(assert (not b_lambda!19161))

(assert (not b!95750))

(assert (not b_lambda!19261))

(assert (not d!62420))

(assert (not b_lambda!19169))

(assert (not b_lambda!19387))

(assert (not b!95610))

(assert (not b_lambda!19027))

(assert (not b!95752))

(assert (not b_lambda!19371))

(assert (not b!95618))

(assert (not b!95760))

(assert (not b_lambda!19571))

(assert (not b!95633))

(assert (not b_lambda!19553))

(assert (not b_lambda!19153))

(assert (not b!95693))

(assert (not b!95728))

(assert (not b_lambda!19159))

(assert (not b!95673))

(assert (not b!95726))

(assert (not b_lambda!19503))

(assert (not d!62416))

(assert (not b!95695))

(assert (not b_lambda!19545))

(assert (not b_lambda!19397))

(assert (not b_lambda!19527))

(assert (not b_lambda!19285))

(assert (not b_lambda!19395))

(assert (not b!95661))

(assert (not b_lambda!19361))

(assert (not b!95649))

(assert (not b!95766))

(assert (not b!95622))

(assert (not b_lambda!19389))

(assert (not b_lambda!19145))

(assert (not b!95635))

(assert (not b!95762))

(assert (not b_lambda!19535))

(assert (not b_lambda!19173))

(assert (not b!95683))

(assert (not b!95754))

(assert (not d!62402))

(assert (not b_lambda!19089))

(assert (not b_lambda!19529))

(assert (not b!95699))

(assert (not b!95645))

(assert (not b_lambda!19409))

(assert (not b_lambda!19419))

(assert (not b!95612))

(assert (not b_lambda!19383))

(assert (not b!95671))

(assert (not b_lambda!19269))

(assert (not b_lambda!19385))

(assert (not b_lambda!19407))

(assert (not b_lambda!19557))

(assert (not b!95734))

(assert (not b_lambda!19245))

(assert (not b!95614))

(assert (not b_lambda!19399))

(assert (not b_lambda!19543))

(assert (not b_lambda!19375))

(assert (not b!95724))

(assert (not b_lambda!19547))

(assert (not b!95681))

(assert (not b_lambda!19235))

(assert (not b_lambda!19143))

(assert (not b!95677))

(assert (not b!95723))

(assert (not d!62484))

(assert (not b_lambda!19037))

(assert (not b!95669))

(assert (not b!95616))

(assert (not d!62512))

(assert (not d!62486))

(assert (not b_lambda!19085))

(assert (not b!95715))

(assert (not b_lambda!19079))

(assert (not b_lambda!19517))

(assert (not b!95685))

(assert (not b_lambda!19131))

(assert (not b!95679))

(assert (not b_lambda!19549))

(assert (not b_lambda!19417))

(assert (not b!95632))

(assert (not b!95630))

(assert (not b_lambda!19231))

(assert (not b_lambda!19533))

(assert (not b!95719))

(assert (not b_lambda!19531))

(assert (not b!95713))

(assert (not b_lambda!19353))

(assert (not b_lambda!19401))

(assert (not b_lambda!19265))

(assert (not b_lambda!19073))

(assert (not d!62504))

(assert (not b!95641))

(assert (not b_lambda!19133))

(assert (not b!95602))

(assert (not b_lambda!19229))

(assert (not b_lambda!19367))

(assert (not b!95721))

(assert (not b_lambda!19495))

(assert (not b_lambda!19539))

(assert (not b_lambda!19141))

(assert (not b!95659))

(assert (not b_lambda!19249))

(assert (not b_lambda!19391))

(assert (not b!95628))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!62626 () Bool)

(assert (=> d!62626 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))))) (Cons!836 (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))))) (map!731 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))) lambda!11283)))))

(assert (=> b!95699 d!62626))

(declare-fun d!62628 () Bool)

(declare-fun lt!22002 () List!898)

(assert (=> d!62628 (= (size!1003 lt!22002) (size!1002 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))))))))

(declare-fun e!52220 () List!898)

(assert (=> d!62628 (= lt!22002 e!52220)))

(declare-fun c!23582 () Bool)

(assert (=> d!62628 (= c!23582 (is-Nil!836 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))))))))

(assert (=> d!62628 (= (map!731 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))) lambda!11283) lt!22002)))

(declare-fun b!95771 () Bool)

(assert (=> b!95771 (= e!52220 Nil!838)))

(declare-fun b!95772 () Bool)

(assert (=> b!95772 (= e!52220 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))))) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5))))))))))

(assert (= (and d!62628 c!23582) b!95771))

(assert (= (and d!62628 (not c!23582)) b!95772))

(declare-fun b_lambda!19575 () Bool)

(assert (=> (not b_lambda!19575) (not b!95772)))

(declare-fun m!91385 () Bool)

(assert (=> d!62628 m!91385))

(declare-fun m!91387 () Bool)

(assert (=> d!62628 m!91387))

(declare-fun m!91389 () Bool)

(assert (=> b!95772 m!91389))

(declare-fun m!91391 () Bool)

(assert (=> b!95772 m!91391))

(assert (=> b!95772 m!91389))

(assert (=> b!95772 m!91391))

(declare-fun m!91393 () Bool)

(assert (=> b!95772 m!91393))

(assert (=> b!95699 d!62628))

(declare-fun d!62630 () Bool)

(declare-fun lt!22003 () Int)

(assert (=> d!62630 (>= lt!22003 0)))

(declare-fun e!52221 () Int)

(assert (=> d!62630 (= lt!22003 e!52221)))

(declare-fun c!23583 () Bool)

(assert (=> d!62630 (= c!23583 (is-Nil!838 (t!56044 (t!56044 (t!56044 lt!21851)))))))

(assert (=> d!62630 (= (size!1003 (t!56044 (t!56044 (t!56044 lt!21851)))) lt!22003)))

(declare-fun b!95773 () Bool)

(assert (=> b!95773 (= e!52221 0)))

(declare-fun b!95774 () Bool)

(assert (=> b!95774 (= e!52221 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 (t!56044 lt!21851)))))))))

(assert (= (and d!62630 c!23583) b!95773))

(assert (= (and d!62630 (not c!23583)) b!95774))

(declare-fun m!91395 () Bool)

(assert (=> b!95774 m!91395))

(assert (=> b!95764 d!62630))

(declare-fun d!62632 () Bool)

(declare-fun lt!22004 () Int)

(assert (=> d!62632 (>= lt!22004 0)))

(declare-fun e!52222 () Int)

(assert (=> d!62632 (= lt!22004 e!52222)))

(declare-fun c!23584 () Bool)

(assert (=> d!62632 (= c!23584 (is-Nil!837 (t!56043 lt!21909)))))

(assert (=> d!62632 (= (size!1001 (t!56043 lt!21909)) lt!22004)))

(declare-fun b!95775 () Bool)

(assert (=> b!95775 (= e!52222 0)))

(declare-fun b!95776 () Bool)

(assert (=> b!95776 (= e!52222 (+ 1 (size!1001 (t!56043 (t!56043 lt!21909)))))))

(assert (= (and d!62632 c!23584) b!95775))

(assert (= (and d!62632 (not c!23584)) b!95776))

(declare-fun m!91397 () Bool)

(assert (=> b!95776 m!91397))

(assert (=> b!95604 d!62632))

(declare-fun b!95777 () Bool)

(declare-fun e!52223 () Bool)

(declare-fun lt!22005 () Option!769)

(assert (=> b!95777 (= e!52223 (dynLambda!1156 lambda!11315 (v!3224 lt!22005)))))

(declare-fun b!95778 () Bool)

(declare-fun e!52226 () Option!769)

(assert (=> b!95778 (= e!52226 (find!8 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11315))))

(declare-fun d!62634 () Bool)

(declare-fun e!52225 () Bool)

(assert (=> d!62634 e!52225))

(declare-fun res!49676 () Bool)

(assert (=> d!62634 (=> res!49676 e!52225)))

(assert (=> d!62634 (= res!49676 (not (is-Some!740 lt!22005)))))

(declare-fun e!52224 () Option!769)

(assert (=> d!62634 (= lt!22005 e!52224)))

(declare-fun c!23586 () Bool)

(assert (=> d!62634 (= c!23586 (is-Nil!836 (t!56042 (t!56042 transfers!5))))))

(assert (=> d!62634 (= (find!8 (t!56042 (t!56042 transfers!5)) lambda!11315) lt!22005)))

(declare-fun b!95779 () Bool)

(assert (=> b!95779 (= e!52224 e!52226)))

(declare-fun c!23585 () Bool)

(assert (=> b!95779 (= c!23585 (dynLambda!1156 lambda!11315 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(declare-fun b!95780 () Bool)

(assert (=> b!95780 (= e!52225 e!52223)))

(declare-fun res!49677 () Bool)

(assert (=> b!95780 (=> (not res!49677) (not e!52223))))

(assert (=> b!95780 (= res!49677 (member (v!3224 lt!22005) (content!207 (t!56042 (t!56042 transfers!5)))))))

(declare-fun b!95781 () Bool)

(assert (=> b!95781 (= e!52224 None!741)))

(declare-fun b!95782 () Bool)

(assert (=> b!95782 (= e!52226 (Some!740 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(assert (= (and b!95779 c!23585) b!95782))

(assert (= (and b!95779 (not c!23585)) b!95778))

(assert (= (and d!62634 c!23586) b!95781))

(assert (= (and d!62634 (not c!23586)) b!95779))

(assert (= (and d!62634 (not res!49676)) b!95780))

(assert (= (and b!95780 res!49677) b!95777))

(declare-fun b_lambda!19577 () Bool)

(assert (=> (not b_lambda!19577) (not b!95777)))

(declare-fun b_lambda!19579 () Bool)

(assert (=> (not b_lambda!19579) (not b!95779)))

(declare-fun m!91399 () Bool)

(assert (=> b!95777 m!91399))

(declare-fun m!91401 () Bool)

(assert (=> b!95778 m!91401))

(declare-fun m!91403 () Bool)

(assert (=> b!95779 m!91403))

(assert (=> b!95780 m!90673))

(declare-fun m!91405 () Bool)

(assert (=> b!95780 m!91405))

(assert (=> b!95659 d!62634))

(declare-fun d!62636 () Bool)

(declare-fun lt!22006 () Int)

(assert (=> d!62636 (>= lt!22006 0)))

(declare-fun e!52227 () Int)

(assert (=> d!62636 (= lt!22006 e!52227)))

(declare-fun c!23587 () Bool)

(assert (=> d!62636 (= c!23587 (is-Nil!836 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))))))

(assert (=> d!62636 (= (size!1002 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))) lt!22006)))

(declare-fun b!95783 () Bool)

(assert (=> b!95783 (= e!52227 0)))

(declare-fun b!95784 () Bool)

(assert (=> b!95784 (= e!52227 (+ 1 (size!1002 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))))))))

(assert (= (and d!62636 c!23587) b!95783))

(assert (= (and d!62636 (not c!23587)) b!95784))

(assert (=> b!95784 m!91387))

(assert (=> b!95630 d!62636))

(assert (=> b!95624 d!62448))

(declare-fun d!62638 () Bool)

(declare-fun c!23588 () Bool)

(assert (=> d!62638 (= c!23588 (is-Nil!838 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))))))))

(declare-fun e!52228 () Int)

(assert (=> d!62638 (= (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))) (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))))) lambda!11284) e!52228)))

(declare-fun b!95785 () Bool)

(assert (=> b!95785 (= e!52228 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))))))))

(declare-fun b!95786 () Bool)

(assert (=> b!95786 (= e!52228 (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))))) (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))))) lambda!11284))))

(assert (= (and d!62638 c!23588) b!95785))

(assert (= (and d!62638 (not c!23588)) b!95786))

(declare-fun b_lambda!19581 () Bool)

(assert (=> (not b_lambda!19581) (not b!95786)))

(assert (=> b!95786 m!91175))

(declare-fun m!91407 () Bool)

(assert (=> b!95786 m!91407))

(assert (=> b!95786 m!91407))

(declare-fun m!91409 () Bool)

(assert (=> b!95786 m!91409))

(assert (=> b!95651 d!62638))

(declare-fun d!62640 () Bool)

(declare-fun c!23589 () Bool)

(assert (=> d!62640 (= c!23589 (is-Nil!838 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))))))))

(declare-fun e!52229 () Int)

(assert (=> d!62640 (= (foldLeft!11 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))) (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))))) lambda!11295) e!52229)))

(declare-fun b!95787 () Bool)

(assert (=> b!95787 (= e!52229 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))))))))

(declare-fun b!95788 () Bool)

(assert (=> b!95788 (= e!52229 (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))))) (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))))) lambda!11295))))

(assert (= (and d!62640 c!23589) b!95787))

(assert (= (and d!62640 (not c!23589)) b!95788))

(declare-fun b_lambda!19583 () Bool)

(assert (=> (not b_lambda!19583) (not b!95788)))

(assert (=> b!95788 m!91229))

(declare-fun m!91411 () Bool)

(assert (=> b!95788 m!91411))

(assert (=> b!95788 m!91411))

(declare-fun m!91413 () Bool)

(assert (=> b!95788 m!91413))

(assert (=> b!95689 d!62640))

(declare-fun d!62642 () Bool)

(assert (=> d!62642 (= (get!1256 lt!22000) (v!3223 lt!22000))))

(assert (=> b!95770 d!62642))

(declare-fun b!95789 () Bool)

(declare-fun e!52230 () Bool)

(declare-fun lt!22007 () Option!769)

(assert (=> b!95789 (= e!52230 (dynLambda!1156 lambda!11313 (v!3224 lt!22007)))))

(declare-fun b!95790 () Bool)

(declare-fun e!52233 () Option!769)

(assert (=> b!95790 (= e!52233 (find!8 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11313))))

(declare-fun d!62644 () Bool)

(declare-fun e!52232 () Bool)

(assert (=> d!62644 e!52232))

(declare-fun res!49678 () Bool)

(assert (=> d!62644 (=> res!49678 e!52232)))

(assert (=> d!62644 (= res!49678 (not (is-Some!740 lt!22007)))))

(declare-fun e!52231 () Option!769)

(assert (=> d!62644 (= lt!22007 e!52231)))

(declare-fun c!23591 () Bool)

(assert (=> d!62644 (= c!23591 (is-Nil!836 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(assert (=> d!62644 (= (find!8 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11313) lt!22007)))

(declare-fun b!95791 () Bool)

(assert (=> b!95791 (= e!52231 e!52233)))

(declare-fun c!23590 () Bool)

(assert (=> b!95791 (= c!23590 (dynLambda!1156 lambda!11313 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(declare-fun b!95792 () Bool)

(assert (=> b!95792 (= e!52232 e!52230)))

(declare-fun res!49679 () Bool)

(assert (=> b!95792 (=> (not res!49679) (not e!52230))))

(assert (=> b!95792 (= res!49679 (member (v!3224 lt!22007) (content!207 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(declare-fun b!95793 () Bool)

(assert (=> b!95793 (= e!52231 None!741)))

(declare-fun b!95794 () Bool)

(assert (=> b!95794 (= e!52233 (Some!740 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (= (and b!95791 c!23590) b!95794))

(assert (= (and b!95791 (not c!23590)) b!95790))

(assert (= (and d!62644 c!23591) b!95793))

(assert (= (and d!62644 (not c!23591)) b!95791))

(assert (= (and d!62644 (not res!49678)) b!95792))

(assert (= (and b!95792 res!49679) b!95789))

(declare-fun b_lambda!19585 () Bool)

(assert (=> (not b_lambda!19585) (not b!95789)))

(declare-fun b_lambda!19587 () Bool)

(assert (=> (not b_lambda!19587) (not b!95791)))

(declare-fun m!91415 () Bool)

(assert (=> b!95789 m!91415))

(declare-fun m!91417 () Bool)

(assert (=> b!95790 m!91417))

(declare-fun m!91419 () Bool)

(assert (=> b!95791 m!91419))

(assert (=> b!95792 m!90929))

(declare-fun m!91421 () Bool)

(assert (=> b!95792 m!91421))

(assert (=> b!95653 d!62644))

(declare-fun d!62646 () Bool)

(declare-fun lt!22008 () Int)

(assert (=> d!62646 (>= lt!22008 0)))

(declare-fun e!52234 () Int)

(assert (=> d!62646 (= lt!22008 e!52234)))

(declare-fun c!23592 () Bool)

(assert (=> d!62646 (= c!23592 (is-Nil!838 (t!56044 (t!56044 (t!56044 lt!21848)))))))

(assert (=> d!62646 (= (size!1003 (t!56044 (t!56044 (t!56044 lt!21848)))) lt!22008)))

(declare-fun b!95795 () Bool)

(assert (=> b!95795 (= e!52234 0)))

(declare-fun b!95796 () Bool)

(assert (=> b!95796 (= e!52234 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 (t!56044 lt!21848)))))))))

(assert (= (and d!62646 c!23592) b!95795))

(assert (= (and d!62646 (not c!23592)) b!95796))

(declare-fun m!91423 () Bool)

(assert (=> b!95796 m!91423))

(assert (=> b!95632 d!62646))

(declare-fun d!62648 () Bool)

(declare-fun lt!22009 () Int)

(assert (=> d!62648 (>= lt!22009 0)))

(declare-fun e!52235 () Int)

(assert (=> d!62648 (= lt!22009 e!52235)))

(declare-fun c!23593 () Bool)

(assert (=> d!62648 (= c!23593 (is-Nil!836 (t!56042 lt!21925)))))

(assert (=> d!62648 (= (size!1002 (t!56042 lt!21925)) lt!22009)))

(declare-fun b!95797 () Bool)

(assert (=> b!95797 (= e!52235 0)))

(declare-fun b!95798 () Bool)

(assert (=> b!95798 (= e!52235 (+ 1 (size!1002 (t!56042 (t!56042 lt!21925)))))))

(assert (= (and d!62648 c!23593) b!95797))

(assert (= (and d!62648 (not c!23593)) b!95798))

(declare-fun m!91425 () Bool)

(assert (=> b!95798 m!91425))

(assert (=> b!95697 d!62648))

(declare-fun d!62650 () Bool)

(declare-fun lt!22010 () Int)

(assert (=> d!62650 (>= lt!22010 0)))

(declare-fun e!52236 () Int)

(assert (=> d!62650 (= lt!22010 e!52236)))

(declare-fun c!23594 () Bool)

(assert (=> d!62650 (= c!23594 (is-Nil!839 (t!56069 (t!56069 (t!56069 lt!21866)))))))

(assert (=> d!62650 (= (size!1004 (t!56069 (t!56069 (t!56069 lt!21866)))) lt!22010)))

(declare-fun b!95799 () Bool)

(assert (=> b!95799 (= e!52236 0)))

(declare-fun b!95800 () Bool)

(assert (=> b!95800 (= e!52236 (+ 1 (size!1004 (t!56069 (t!56069 (t!56069 (t!56069 lt!21866)))))))))

(assert (= (and d!62650 c!23594) b!95799))

(assert (= (and d!62650 (not c!23594)) b!95800))

(declare-fun m!91427 () Bool)

(assert (=> b!95800 m!91427))

(assert (=> b!95683 d!62650))

(declare-fun d!62652 () Bool)

(declare-fun lt!22011 () Int)

(assert (=> d!62652 (>= lt!22011 0)))

(declare-fun e!52237 () Int)

(assert (=> d!62652 (= lt!22011 e!52237)))

(declare-fun c!23595 () Bool)

(assert (=> d!62652 (= c!23595 (is-Nil!837 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 lt!21816)))))))))

(assert (=> d!62652 (= (size!1001 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 lt!21816)))))) lt!22011)))

(declare-fun b!95801 () Bool)

(assert (=> b!95801 (= e!52237 0)))

(declare-fun b!95802 () Bool)

(assert (=> b!95802 (= e!52237 (+ 1 (size!1001 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 lt!21816)))))))))))

(assert (= (and d!62652 c!23595) b!95801))

(assert (= (and d!62652 (not c!23595)) b!95802))

(declare-fun m!91429 () Bool)

(assert (=> b!95802 m!91429))

(assert (=> b!95752 d!62652))

(declare-fun d!62654 () Bool)

(declare-fun lt!22012 () Int)

(assert (=> d!62654 (>= lt!22012 0)))

(declare-fun e!52238 () Int)

(assert (=> d!62654 (= lt!22012 e!52238)))

(declare-fun c!23596 () Bool)

(assert (=> d!62654 (= c!23596 (is-Nil!836 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))))))

(assert (=> d!62654 (= (size!1002 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))) lt!22012)))

(declare-fun b!95803 () Bool)

(assert (=> b!95803 (= e!52238 0)))

(declare-fun b!95804 () Bool)

(assert (=> b!95804 (= e!52238 (+ 1 (size!1002 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))))))))

(assert (= (and d!62654 c!23596) b!95803))

(assert (= (and d!62654 (not c!23596)) b!95804))

(declare-fun m!91431 () Bool)

(assert (=> b!95804 m!91431))

(assert (=> b!95713 d!62654))

(declare-fun d!62656 () Bool)

(declare-fun lt!22013 () Int)

(assert (=> d!62656 (>= lt!22013 0)))

(declare-fun e!52239 () Int)

(assert (=> d!62656 (= lt!22013 e!52239)))

(declare-fun c!23597 () Bool)

(assert (=> d!62656 (= c!23597 (is-Nil!838 (t!56044 (t!56044 (t!56044 (t!56044 lt!21834))))))))

(assert (=> d!62656 (= (size!1003 (t!56044 (t!56044 (t!56044 (t!56044 lt!21834))))) lt!22013)))

(declare-fun b!95805 () Bool)

(assert (=> b!95805 (= e!52239 0)))

(declare-fun b!95806 () Bool)

(assert (=> b!95806 (= e!52239 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 lt!21834))))))))))

(assert (= (and d!62656 c!23597) b!95805))

(assert (= (and d!62656 (not c!23597)) b!95806))

(declare-fun m!91433 () Bool)

(assert (=> b!95806 m!91433))

(assert (=> b!95643 d!62656))

(declare-fun d!62658 () Bool)

(declare-fun c!23598 () Bool)

(assert (=> d!62658 (= c!23598 (is-Nil!836 lt!21988))))

(declare-fun e!52240 () (Set tuple2!524))

(assert (=> d!62658 (= (content!207 lt!21988) e!52240)))

(declare-fun b!95807 () Bool)

(assert (=> b!95807 (= e!52240 (as emptyset (Set tuple2!524)))))

(declare-fun b!95808 () Bool)

(assert (=> b!95808 (= e!52240 (union (insert (h!7729 lt!21988) (as emptyset (Set tuple2!524))) (content!207 (t!56042 lt!21988))))))

(assert (= (and d!62658 c!23598) b!95807))

(assert (= (and d!62658 (not c!23598)) b!95808))

(declare-fun m!91435 () Bool)

(assert (=> b!95808 m!91435))

(declare-fun m!91437 () Bool)

(assert (=> b!95808 m!91437))

(assert (=> b!95726 d!62658))

(assert (=> b!95726 d!62220))

(declare-fun d!62660 () Bool)

(declare-fun lt!22014 () Int)

(assert (=> d!62660 (>= lt!22014 0)))

(declare-fun e!52241 () Int)

(assert (=> d!62660 (= lt!22014 e!52241)))

(declare-fun c!23599 () Bool)

(assert (=> d!62660 (= c!23599 (is-Nil!839 (t!56069 (t!56069 (t!56069 lt!21858)))))))

(assert (=> d!62660 (= (size!1004 (t!56069 (t!56069 (t!56069 lt!21858)))) lt!22014)))

(declare-fun b!95809 () Bool)

(assert (=> b!95809 (= e!52241 0)))

(declare-fun b!95810 () Bool)

(assert (=> b!95810 (= e!52241 (+ 1 (size!1004 (t!56069 (t!56069 (t!56069 (t!56069 lt!21858)))))))))

(assert (= (and d!62660 c!23599) b!95809))

(assert (= (and d!62660 (not c!23599)) b!95810))

(declare-fun m!91439 () Bool)

(assert (=> b!95810 m!91439))

(assert (=> b!95667 d!62660))

(declare-fun d!62662 () Bool)

(declare-fun c!23600 () Bool)

(assert (=> d!62662 (= c!23600 (is-Nil!838 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))))))))

(declare-fun e!52242 () Int)

(assert (=> d!62662 (= (foldLeft!11 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))) (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))))) lambda!11284) e!52242)))

(declare-fun b!95811 () Bool)

(assert (=> b!95811 (= e!52242 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))))))))

(declare-fun b!95812 () Bool)

(assert (=> b!95812 (= e!52242 (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))))) (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))))) lambda!11284))))

(assert (= (and d!62662 c!23600) b!95811))

(assert (= (and d!62662 (not c!23600)) b!95812))

(declare-fun b_lambda!19589 () Bool)

(assert (=> (not b_lambda!19589) (not b!95812)))

(assert (=> b!95812 m!91363))

(declare-fun m!91441 () Bool)

(assert (=> b!95812 m!91441))

(assert (=> b!95812 m!91441))

(declare-fun m!91443 () Bool)

(assert (=> b!95812 m!91443))

(assert (=> b!95762 d!62662))

(declare-fun d!62664 () Bool)

(declare-fun res!49680 () Bool)

(declare-fun e!52243 () Bool)

(assert (=> d!62664 (=> res!49680 e!52243)))

(assert (=> d!62664 (= res!49680 (is-Nil!836 lt!21962))))

(assert (=> d!62664 (= (forall!87 lt!21962 lambda!11307) e!52243)))

(declare-fun b!95813 () Bool)

(declare-fun e!52244 () Bool)

(assert (=> b!95813 (= e!52243 e!52244)))

(declare-fun res!49681 () Bool)

(assert (=> b!95813 (=> (not res!49681) (not e!52244))))

(assert (=> b!95813 (= res!49681 (dynLambda!1156 lambda!11307 (h!7729 lt!21962)))))

(declare-fun b!95814 () Bool)

(assert (=> b!95814 (= e!52244 (forall!87 (t!56042 lt!21962) lambda!11307))))

(assert (= (and d!62664 (not res!49680)) b!95813))

(assert (= (and b!95813 res!49681) b!95814))

(declare-fun b_lambda!19591 () Bool)

(assert (=> (not b_lambda!19591) (not b!95813)))

(declare-fun m!91445 () Bool)

(assert (=> b!95813 m!91445))

(declare-fun m!91447 () Bool)

(assert (=> b!95814 m!91447))

(assert (=> b!95633 d!62664))

(declare-fun d!62666 () Bool)

(declare-fun res!49682 () Bool)

(declare-fun e!52245 () Bool)

(assert (=> d!62666 (=> res!49682 e!52245)))

(assert (=> d!62666 (= res!49682 (is-Nil!836 lt!21988))))

(assert (=> d!62666 (= (forall!87 lt!21988 lambda!11311) e!52245)))

(declare-fun b!95815 () Bool)

(declare-fun e!52246 () Bool)

(assert (=> b!95815 (= e!52245 e!52246)))

(declare-fun res!49683 () Bool)

(assert (=> b!95815 (=> (not res!49683) (not e!52246))))

(assert (=> b!95815 (= res!49683 (dynLambda!1156 lambda!11311 (h!7729 lt!21988)))))

(declare-fun b!95816 () Bool)

(assert (=> b!95816 (= e!52246 (forall!87 (t!56042 lt!21988) lambda!11311))))

(assert (= (and d!62666 (not res!49682)) b!95815))

(assert (= (and b!95815 res!49683) b!95816))

(declare-fun b_lambda!19593 () Bool)

(assert (=> (not b_lambda!19593) (not b!95815)))

(declare-fun m!91449 () Bool)

(assert (=> b!95815 m!91449))

(declare-fun m!91451 () Bool)

(assert (=> b!95816 m!91451))

(assert (=> b!95724 d!62666))

(declare-fun d!62668 () Bool)

(declare-fun lt!22015 () Int)

(assert (=> d!62668 (>= lt!22015 0)))

(declare-fun e!52247 () Int)

(assert (=> d!62668 (= lt!22015 e!52247)))

(declare-fun c!23601 () Bool)

(assert (=> d!62668 (= c!23601 (is-Nil!838 (t!56044 (t!56044 lt!21895))))))

(assert (=> d!62668 (= (size!1003 (t!56044 (t!56044 lt!21895))) lt!22015)))

(declare-fun b!95817 () Bool)

(assert (=> b!95817 (= e!52247 0)))

(declare-fun b!95818 () Bool)

(assert (=> b!95818 (= e!52247 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 lt!21895))))))))

(assert (= (and d!62668 c!23601) b!95817))

(assert (= (and d!62668 (not c!23601)) b!95818))

(declare-fun m!91453 () Bool)

(assert (=> b!95818 m!91453))

(assert (=> b!95748 d!62668))

(declare-fun d!62670 () Bool)

(declare-fun lt!22016 () Int)

(assert (=> d!62670 (>= lt!22016 0)))

(declare-fun e!52248 () Int)

(assert (=> d!62670 (= lt!22016 e!52248)))

(declare-fun c!23602 () Bool)

(assert (=> d!62670 (= c!23602 (is-Nil!836 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))))

(assert (=> d!62670 (= (size!1002 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))) lt!22016)))

(declare-fun b!95819 () Bool)

(assert (=> b!95819 (= e!52248 0)))

(declare-fun b!95820 () Bool)

(assert (=> b!95820 (= e!52248 (+ 1 (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))))))

(assert (= (and d!62670 c!23602) b!95819))

(assert (= (and d!62670 (not c!23602)) b!95820))

(declare-fun m!91455 () Bool)

(assert (=> b!95820 m!91455))

(assert (=> b!95681 d!62670))

(declare-fun d!62672 () Bool)

(declare-fun lt!22017 () Int)

(assert (=> d!62672 (>= lt!22017 0)))

(declare-fun e!52249 () Int)

(assert (=> d!62672 (= lt!22017 e!52249)))

(declare-fun c!23603 () Bool)

(assert (=> d!62672 (= c!23603 (is-Nil!839 (t!56069 (t!56069 (t!56069 (t!56069 lt!21836))))))))

(assert (=> d!62672 (= (size!1004 (t!56069 (t!56069 (t!56069 (t!56069 lt!21836))))) lt!22017)))

(declare-fun b!95821 () Bool)

(assert (=> b!95821 (= e!52249 0)))

(declare-fun b!95822 () Bool)

(assert (=> b!95822 (= e!52249 (+ 1 (size!1004 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 lt!21836))))))))))

(assert (= (and d!62672 c!23603) b!95821))

(assert (= (and d!62672 (not c!23603)) b!95822))

(declare-fun m!91457 () Bool)

(assert (=> b!95822 m!91457))

(assert (=> b!95721 d!62672))

(declare-fun d!62674 () Bool)

(assert (=> d!62674 (= ($colon$colon!30 (map!730 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) lambda!11271) (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (Cons!835 (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (map!730 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) lambda!11271)))))

(assert (=> b!95612 d!62674))

(declare-fun d!62676 () Bool)

(declare-fun lt!22018 () List!897)

(assert (=> d!62676 (= (size!1001 lt!22018) (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(declare-fun e!52250 () List!897)

(assert (=> d!62676 (= lt!22018 e!52250)))

(declare-fun c!23604 () Bool)

(assert (=> d!62676 (= c!23604 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(assert (=> d!62676 (= (map!730 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) lambda!11271) lt!22018)))

(declare-fun b!95823 () Bool)

(assert (=> b!95823 (= e!52250 Nil!837)))

(declare-fun b!95824 () Bool)

(assert (=> b!95824 (= e!52250 ($colon$colon!30 (map!730 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) lambda!11271) (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))))

(assert (= (and d!62676 c!23604) b!95823))

(assert (= (and d!62676 (not c!23604)) b!95824))

(declare-fun b_lambda!19595 () Bool)

(assert (=> (not b_lambda!19595) (not b!95824)))

(declare-fun m!91459 () Bool)

(assert (=> d!62676 m!91459))

(declare-fun m!91461 () Bool)

(assert (=> d!62676 m!91461))

(declare-fun m!91463 () Bool)

(assert (=> b!95824 m!91463))

(declare-fun m!91465 () Bool)

(assert (=> b!95824 m!91465))

(assert (=> b!95824 m!91463))

(assert (=> b!95824 m!91465))

(declare-fun m!91467 () Bool)

(assert (=> b!95824 m!91467))

(assert (=> b!95612 d!62676))

(declare-fun d!62678 () Bool)

(declare-fun res!49684 () Bool)

(declare-fun e!52251 () Bool)

(assert (=> d!62678 (=> res!49684 e!52251)))

(assert (=> d!62678 (= res!49684 (is-Nil!837 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))))))))))

(assert (=> d!62678 (= (forall!86 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))))) lambda!11272) e!52251)))

(declare-fun b!95825 () Bool)

(declare-fun e!52252 () Bool)

(assert (=> b!95825 (= e!52251 e!52252)))

(declare-fun res!49685 () Bool)

(assert (=> b!95825 (=> (not res!49685) (not e!52252))))

(assert (=> b!95825 (= res!49685 (dynLambda!1154 lambda!11272 (h!7730 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))))))))))

(declare-fun b!95826 () Bool)

(assert (=> b!95826 (= e!52252 (forall!86 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271)))))))) lambda!11272))))

(assert (= (and d!62678 (not res!49684)) b!95825))

(assert (= (and b!95825 res!49685) b!95826))

(declare-fun b_lambda!19597 () Bool)

(assert (=> (not b_lambda!19597) (not b!95825)))

(declare-fun m!91469 () Bool)

(assert (=> b!95825 m!91469))

(declare-fun m!91471 () Bool)

(assert (=> b!95826 m!91471))

(assert (=> b!95754 d!62678))

(declare-fun d!62680 () Bool)

(declare-fun c!23605 () Bool)

(assert (=> d!62680 (= c!23605 (is-Nil!839 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))))))

(declare-fun e!52253 () Bool)

(assert (=> d!62680 (= (foldLeft!12 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))) (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))) lambda!11285) e!52253)))

(declare-fun b!95827 () Bool)

(assert (=> b!95827 (= e!52253 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))))))

(declare-fun b!95828 () Bool)

(assert (=> b!95828 (= e!52253 (foldLeft!12 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))) (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))))) lambda!11285))))

(assert (= (and d!62680 c!23605) b!95827))

(assert (= (and d!62680 (not c!23605)) b!95828))

(declare-fun b_lambda!19599 () Bool)

(assert (=> (not b_lambda!19599) (not b!95828)))

(assert (=> b!95828 m!91225))

(declare-fun m!91473 () Bool)

(assert (=> b!95828 m!91473))

(assert (=> b!95828 m!91473))

(declare-fun m!91475 () Bool)

(assert (=> b!95828 m!91475))

(assert (=> b!95687 d!62680))

(declare-fun d!62682 () Bool)

(declare-fun lt!22019 () Int)

(assert (=> d!62682 (>= lt!22019 0)))

(declare-fun e!52254 () Int)

(assert (=> d!62682 (= lt!22019 e!52254)))

(declare-fun c!23606 () Bool)

(assert (=> d!62682 (= c!23606 (is-Nil!836 lt!21988))))

(assert (=> d!62682 (= (size!1002 lt!21988) lt!22019)))

(declare-fun b!95829 () Bool)

(assert (=> b!95829 (= e!52254 0)))

(declare-fun b!95830 () Bool)

(assert (=> b!95830 (= e!52254 (+ 1 (size!1002 (t!56042 lt!21988))))))

(assert (= (and d!62682 c!23606) b!95829))

(assert (= (and d!62682 (not c!23606)) b!95830))

(declare-fun m!91477 () Bool)

(assert (=> b!95830 m!91477))

(assert (=> d!62504 d!62682))

(assert (=> d!62504 d!62018))

(declare-fun d!62684 () Bool)

(declare-fun c!23607 () Bool)

(assert (=> d!62684 (= c!23607 (is-Nil!838 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))))))))

(declare-fun e!52255 () Int)

(assert (=> d!62684 (= (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))) (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))))) lambda!11295) e!52255)))

(declare-fun b!95831 () Bool)

(assert (=> b!95831 (= e!52255 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))))))))

(declare-fun b!95832 () Bool)

(assert (=> b!95832 (= e!52255 (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))))) (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))))) lambda!11295))))

(assert (= (and d!62684 c!23607) b!95831))

(assert (= (and d!62684 (not c!23607)) b!95832))

(declare-fun b_lambda!19601 () Bool)

(assert (=> (not b_lambda!19601) (not b!95832)))

(assert (=> b!95832 m!91239))

(declare-fun m!91479 () Bool)

(assert (=> b!95832 m!91479))

(assert (=> b!95832 m!91479))

(declare-fun m!91481 () Bool)

(assert (=> b!95832 m!91481))

(assert (=> b!95695 d!62684))

(declare-fun d!62686 () Bool)

(assert (=> d!62686 (= (isDefined!27 lt!21980) (not (isEmpty!911 lt!21980)))))

(declare-fun bs!43612 () Bool)

(assert (= bs!43612 d!62686))

(declare-fun m!91483 () Bool)

(assert (=> bs!43612 m!91483))

(assert (=> d!62486 d!62686))

(declare-fun d!62688 () Bool)

(assert (=> d!62688 (= (isDefined!28 (find!8 transfers!5 lambda!11316)) (not (isEmpty!912 (find!8 transfers!5 lambda!11316))))))

(declare-fun bs!43613 () Bool)

(assert (= bs!43613 d!62688))

(assert (=> bs!43613 m!91093))

(declare-fun m!91485 () Bool)

(assert (=> bs!43613 m!91485))

(assert (=> d!62486 d!62688))

(declare-fun b!95833 () Bool)

(declare-fun e!52256 () Bool)

(declare-fun lt!22020 () Option!769)

(assert (=> b!95833 (= e!52256 (dynLambda!1156 lambda!11303 (v!3224 lt!22020)))))

(declare-fun b!95834 () Bool)

(declare-fun e!52259 () Option!769)

(assert (=> b!95834 (= e!52259 (find!8 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lambda!11303))))

(declare-fun d!62690 () Bool)

(declare-fun e!52258 () Bool)

(assert (=> d!62690 e!52258))

(declare-fun res!49686 () Bool)

(assert (=> d!62690 (=> res!49686 e!52258)))

(assert (=> d!62690 (= res!49686 (not (is-Some!740 lt!22020)))))

(declare-fun e!52257 () Option!769)

(assert (=> d!62690 (= lt!22020 e!52257)))

(declare-fun c!23609 () Bool)

(assert (=> d!62690 (= c!23609 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (=> d!62690 (= (find!8 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11303) lt!22020)))

(declare-fun b!95835 () Bool)

(assert (=> b!95835 (= e!52257 e!52259)))

(declare-fun c!23608 () Bool)

(assert (=> b!95835 (= c!23608 (dynLambda!1156 lambda!11303 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(declare-fun b!95836 () Bool)

(assert (=> b!95836 (= e!52258 e!52256)))

(declare-fun res!49687 () Bool)

(assert (=> b!95836 (=> (not res!49687) (not e!52256))))

(assert (=> b!95836 (= res!49687 (member (v!3224 lt!22020) (content!207 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(declare-fun b!95837 () Bool)

(assert (=> b!95837 (= e!52257 None!741)))

(declare-fun b!95838 () Bool)

(assert (=> b!95838 (= e!52259 (Some!740 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(assert (= (and b!95835 c!23608) b!95838))

(assert (= (and b!95835 (not c!23608)) b!95834))

(assert (= (and d!62690 c!23609) b!95837))

(assert (= (and d!62690 (not c!23609)) b!95835))

(assert (= (and d!62690 (not res!49686)) b!95836))

(assert (= (and b!95836 res!49687) b!95833))

(declare-fun b_lambda!19603 () Bool)

(assert (=> (not b_lambda!19603) (not b!95833)))

(declare-fun b_lambda!19605 () Bool)

(assert (=> (not b_lambda!19605) (not b!95835)))

(declare-fun m!91487 () Bool)

(assert (=> b!95833 m!91487))

(declare-fun m!91489 () Bool)

(assert (=> b!95834 m!91489))

(declare-fun m!91491 () Bool)

(assert (=> b!95835 m!91491))

(assert (=> b!95836 m!91131))

(declare-fun m!91493 () Bool)

(assert (=> b!95836 m!91493))

(assert (=> b!95622 d!62690))

(declare-fun d!62692 () Bool)

(declare-fun lt!22021 () Int)

(assert (=> d!62692 (>= lt!22021 0)))

(declare-fun e!52260 () Int)

(assert (=> d!62692 (= lt!22021 e!52260)))

(declare-fun c!23610 () Bool)

(assert (=> d!62692 (= c!23610 (is-Nil!836 (t!56042 lt!21917)))))

(assert (=> d!62692 (= (size!1002 (t!56042 lt!21917)) lt!22021)))

(declare-fun b!95839 () Bool)

(assert (=> b!95839 (= e!52260 0)))

(declare-fun b!95840 () Bool)

(assert (=> b!95840 (= e!52260 (+ 1 (size!1002 (t!56042 (t!56042 lt!21917)))))))

(assert (= (and d!62692 c!23610) b!95839))

(assert (= (and d!62692 (not c!23610)) b!95840))

(declare-fun m!91495 () Bool)

(assert (=> b!95840 m!91495))

(assert (=> b!95766 d!62692))

(declare-fun d!62694 () Bool)

(declare-fun res!49688 () Bool)

(declare-fun e!52261 () Bool)

(assert (=> d!62694 (=> res!49688 e!52261)))

(assert (=> d!62694 (= res!49688 (is-Nil!836 (t!56042 (t!56042 transfers!5))))))

(assert (=> d!62694 (= (forall!87 (t!56042 (t!56042 transfers!5)) lambda!11314) e!52261)))

(declare-fun b!95841 () Bool)

(declare-fun e!52262 () Bool)

(assert (=> b!95841 (= e!52261 e!52262)))

(declare-fun res!49689 () Bool)

(assert (=> b!95841 (=> (not res!49689) (not e!52262))))

(assert (=> b!95841 (= res!49689 (dynLambda!1156 lambda!11314 (h!7729 (t!56042 (t!56042 transfers!5)))))))

(declare-fun b!95842 () Bool)

(assert (=> b!95842 (= e!52262 (forall!87 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11314))))

(assert (= (and d!62694 (not res!49688)) b!95841))

(assert (= (and b!95841 res!49689) b!95842))

(declare-fun b_lambda!19607 () Bool)

(assert (=> (not b_lambda!19607) (not b!95841)))

(declare-fun m!91497 () Bool)

(assert (=> b!95841 m!91497))

(declare-fun m!91499 () Bool)

(assert (=> b!95842 m!91499))

(assert (=> b!95685 d!62694))

(declare-fun d!62696 () Bool)

(declare-fun lt!22022 () Int)

(assert (=> d!62696 (>= lt!22022 0)))

(declare-fun e!52263 () Int)

(assert (=> d!62696 (= lt!22022 e!52263)))

(declare-fun c!23611 () Bool)

(assert (=> d!62696 (= c!23611 (is-Nil!838 (t!56044 (t!56044 (t!56044 lt!21860)))))))

(assert (=> d!62696 (= (size!1003 (t!56044 (t!56044 (t!56044 lt!21860)))) lt!22022)))

(declare-fun b!95843 () Bool)

(assert (=> b!95843 (= e!52263 0)))

(declare-fun b!95844 () Bool)

(assert (=> b!95844 (= e!52263 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 (t!56044 lt!21860)))))))))

(assert (= (and d!62696 c!23611) b!95843))

(assert (= (and d!62696 (not c!23611)) b!95844))

(declare-fun m!91501 () Bool)

(assert (=> b!95844 m!91501))

(assert (=> b!95645 d!62696))

(declare-fun d!62698 () Bool)

(declare-fun lt!22023 () Int)

(assert (=> d!62698 (>= lt!22023 0)))

(declare-fun e!52264 () Int)

(assert (=> d!62698 (= lt!22023 e!52264)))

(declare-fun c!23612 () Bool)

(assert (=> d!62698 (= c!23612 (is-Nil!838 (t!56044 lt!21942)))))

(assert (=> d!62698 (= (size!1003 (t!56044 lt!21942)) lt!22023)))

(declare-fun b!95845 () Bool)

(assert (=> b!95845 (= e!52264 0)))

(declare-fun b!95846 () Bool)

(assert (=> b!95846 (= e!52264 (+ 1 (size!1003 (t!56044 (t!56044 lt!21942)))))))

(assert (= (and d!62698 c!23612) b!95845))

(assert (= (and d!62698 (not c!23612)) b!95846))

(declare-fun m!91503 () Bool)

(assert (=> b!95846 m!91503))

(assert (=> b!95711 d!62698))

(declare-fun d!62700 () Bool)

(declare-fun lt!22024 () Int)

(assert (=> d!62700 (>= lt!22024 0)))

(declare-fun e!52265 () Int)

(assert (=> d!62700 (= lt!22024 e!52265)))

(declare-fun c!23613 () Bool)

(assert (=> d!62700 (= c!23613 (is-Nil!836 (t!56042 (t!56042 lt!21882))))))

(assert (=> d!62700 (= (size!1002 (t!56042 (t!56042 lt!21882))) lt!22024)))

(declare-fun b!95847 () Bool)

(assert (=> b!95847 (= e!52265 0)))

(declare-fun b!95848 () Bool)

(assert (=> b!95848 (= e!52265 (+ 1 (size!1002 (t!56042 (t!56042 (t!56042 lt!21882))))))))

(assert (= (and d!62700 c!23613) b!95847))

(assert (= (and d!62700 (not c!23613)) b!95848))

(declare-fun m!91505 () Bool)

(assert (=> b!95848 m!91505))

(assert (=> b!95647 d!62700))

(declare-fun d!62702 () Bool)

(assert (=> d!62702 (= (isEmpty!911 lt!21939) (not (is-Some!739 lt!21939)))))

(assert (=> d!62510 d!62702))

(declare-fun d!62704 () Bool)

(declare-fun lt!22025 () Int)

(assert (=> d!62704 (>= lt!22025 0)))

(declare-fun e!52266 () Int)

(assert (=> d!62704 (= lt!22025 e!52266)))

(declare-fun c!23614 () Bool)

(assert (=> d!62704 (= c!23614 (is-Nil!838 lt!21997))))

(assert (=> d!62704 (= (size!1003 lt!21997) lt!22025)))

(declare-fun b!95849 () Bool)

(assert (=> b!95849 (= e!52266 0)))

(declare-fun b!95850 () Bool)

(assert (=> b!95850 (= e!52266 (+ 1 (size!1003 (t!56044 lt!21997))))))

(assert (= (and d!62704 c!23614) b!95849))

(assert (= (and d!62704 (not c!23614)) b!95850))

(declare-fun m!91507 () Bool)

(assert (=> b!95850 m!91507))

(assert (=> d!62542 d!62704))

(declare-fun d!62706 () Bool)

(declare-fun lt!22026 () Int)

(assert (=> d!62706 (>= lt!22026 0)))

(declare-fun e!52267 () Int)

(assert (=> d!62706 (= lt!22026 e!52267)))

(declare-fun c!23615 () Bool)

(assert (=> d!62706 (= c!23615 (is-Nil!836 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))))

(assert (=> d!62706 (= (size!1002 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))) lt!22026)))

(declare-fun b!95851 () Bool)

(assert (=> b!95851 (= e!52267 0)))

(declare-fun b!95852 () Bool)

(assert (=> b!95852 (= e!52267 (+ 1 (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))))))

(assert (= (and d!62706 c!23615) b!95851))

(assert (= (and d!62706 (not c!23615)) b!95852))

(declare-fun m!91509 () Bool)

(assert (=> b!95852 m!91509))

(assert (=> d!62542 d!62706))

(declare-fun d!62708 () Bool)

(declare-fun lt!22027 () Int)

(assert (=> d!62708 (>= lt!22027 0)))

(declare-fun e!52268 () Int)

(assert (=> d!62708 (= lt!22027 e!52268)))

(declare-fun c!23616 () Bool)

(assert (=> d!62708 (= c!23616 (is-Nil!837 (t!56043 (t!56043 (t!56043 (t!56043 lt!21837))))))))

(assert (=> d!62708 (= (size!1001 (t!56043 (t!56043 (t!56043 (t!56043 lt!21837))))) lt!22027)))

(declare-fun b!95853 () Bool)

(assert (=> b!95853 (= e!52268 0)))

(declare-fun b!95854 () Bool)

(assert (=> b!95854 (= e!52268 (+ 1 (size!1001 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 lt!21837))))))))))

(assert (= (and d!62708 c!23616) b!95853))

(assert (= (and d!62708 (not c!23616)) b!95854))

(declare-fun m!91511 () Bool)

(assert (=> b!95854 m!91511))

(assert (=> b!95693 d!62708))

(declare-fun d!62710 () Bool)

(declare-fun c!23617 () Bool)

(assert (=> d!62710 (= c!23617 (is-Nil!836 (t!56042 lt!21925)))))

(declare-fun e!52269 () (Set tuple2!524))

(assert (=> d!62710 (= (content!207 (t!56042 lt!21925)) e!52269)))

(declare-fun b!95855 () Bool)

(assert (=> b!95855 (= e!52269 (as emptyset (Set tuple2!524)))))

(declare-fun b!95856 () Bool)

(assert (=> b!95856 (= e!52269 (union (insert (h!7729 (t!56042 lt!21925)) (as emptyset (Set tuple2!524))) (content!207 (t!56042 (t!56042 lt!21925)))))))

(assert (= (and d!62710 c!23617) b!95855))

(assert (= (and d!62710 (not c!23617)) b!95856))

(declare-fun m!91513 () Bool)

(assert (=> b!95856 m!91513))

(declare-fun m!91515 () Bool)

(assert (=> b!95856 m!91515))

(assert (=> b!95750 d!62710))

(declare-fun d!62712 () Bool)

(declare-fun res!49690 () Bool)

(declare-fun e!52270 () Bool)

(assert (=> d!62712 (=> res!49690 e!52270)))

(assert (=> d!62712 (= res!49690 (is-Nil!836 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(assert (=> d!62712 (= (forall!87 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11308) e!52270)))

(declare-fun b!95857 () Bool)

(declare-fun e!52271 () Bool)

(assert (=> b!95857 (= e!52270 e!52271)))

(declare-fun res!49691 () Bool)

(assert (=> b!95857 (=> (not res!49691) (not e!52271))))

(assert (=> b!95857 (= res!49691 (dynLambda!1156 lambda!11308 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(declare-fun b!95858 () Bool)

(assert (=> b!95858 (= e!52271 (forall!87 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11308))))

(assert (= (and d!62712 (not res!49690)) b!95857))

(assert (= (and b!95857 res!49691) b!95858))

(declare-fun b_lambda!19609 () Bool)

(assert (=> (not b_lambda!19609) (not b!95857)))

(declare-fun m!91517 () Bool)

(assert (=> b!95857 m!91517))

(declare-fun m!91519 () Bool)

(assert (=> b!95858 m!91519))

(assert (=> b!95738 d!62712))

(assert (=> b!95661 d!62068))

(declare-fun d!62714 () Bool)

(declare-fun res!49692 () Bool)

(declare-fun e!52272 () Bool)

(assert (=> d!62714 (=> res!49692 e!52272)))

(assert (=> d!62714 (= res!49692 (is-Nil!836 (t!56042 lt!21917)))))

(assert (=> d!62714 (= (forall!87 (t!56042 lt!21917) lambda!11307) e!52272)))

(declare-fun b!95859 () Bool)

(declare-fun e!52273 () Bool)

(assert (=> b!95859 (= e!52272 e!52273)))

(declare-fun res!49693 () Bool)

(assert (=> b!95859 (=> (not res!49693) (not e!52273))))

(assert (=> b!95859 (= res!49693 (dynLambda!1156 lambda!11307 (h!7729 (t!56042 lt!21917))))))

(declare-fun b!95860 () Bool)

(assert (=> b!95860 (= e!52273 (forall!87 (t!56042 (t!56042 lt!21917)) lambda!11307))))

(assert (= (and d!62714 (not res!49692)) b!95859))

(assert (= (and b!95859 res!49693) b!95860))

(declare-fun b_lambda!19611 () Bool)

(assert (=> (not b_lambda!19611) (not b!95859)))

(declare-fun m!91521 () Bool)

(assert (=> b!95859 m!91521))

(declare-fun m!91523 () Bool)

(assert (=> b!95860 m!91523))

(assert (=> b!95673 d!62714))

(declare-fun d!62716 () Bool)

(declare-fun c!23618 () Bool)

(assert (=> d!62716 (= c!23618 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(declare-fun e!52274 () (Set tuple2!524))

(assert (=> d!62716 (= (content!207 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) e!52274)))

(declare-fun b!95861 () Bool)

(assert (=> b!95861 (= e!52274 (as emptyset (Set tuple2!524)))))

(declare-fun b!95862 () Bool)

(assert (=> b!95862 (= e!52274 (union (insert (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) (as emptyset (Set tuple2!524))) (content!207 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(assert (= (and d!62716 c!23618) b!95861))

(assert (= (and d!62716 (not c!23618)) b!95862))

(declare-fun m!91525 () Bool)

(assert (=> b!95862 m!91525))

(declare-fun m!91527 () Bool)

(assert (=> b!95862 m!91527))

(assert (=> b!95677 d!62716))

(assert (=> b!95675 d!62706))

(declare-fun d!62718 () Bool)

(declare-fun lt!22028 () Int)

(assert (=> d!62718 (>= lt!22028 0)))

(declare-fun e!52275 () Int)

(assert (=> d!62718 (= lt!22028 e!52275)))

(declare-fun c!23619 () Bool)

(assert (=> d!62718 (= c!23619 (is-Nil!838 lt!21991))))

(assert (=> d!62718 (= (size!1003 lt!21991) lt!22028)))

(declare-fun b!95863 () Bool)

(assert (=> b!95863 (= e!52275 0)))

(declare-fun b!95864 () Bool)

(assert (=> b!95864 (= e!52275 (+ 1 (size!1003 (t!56044 lt!21991))))))

(assert (= (and d!62718 c!23619) b!95863))

(assert (= (and d!62718 (not c!23619)) b!95864))

(declare-fun m!91529 () Bool)

(assert (=> b!95864 m!91529))

(assert (=> d!62524 d!62718))

(assert (=> d!62524 d!62670))

(declare-fun d!62720 () Bool)

(declare-fun res!49694 () Bool)

(declare-fun e!52276 () Bool)

(assert (=> d!62720 (=> res!49694 e!52276)))

(assert (=> d!62720 (= res!49694 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(assert (=> d!62720 (= (forall!87 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) lambda!11273) e!52276)))

(declare-fun b!95865 () Bool)

(declare-fun e!52277 () Bool)

(assert (=> b!95865 (= e!52276 e!52277)))

(declare-fun res!49695 () Bool)

(assert (=> b!95865 (=> (not res!49695) (not e!52277))))

(assert (=> b!95865 (= res!49695 (dynLambda!1156 lambda!11273 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))

(declare-fun b!95866 () Bool)

(assert (=> b!95866 (= e!52277 (forall!87 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) lambda!11273))))

(assert (= (and d!62720 (not res!49694)) b!95865))

(assert (= (and b!95865 res!49695) b!95866))

(declare-fun b_lambda!19613 () Bool)

(assert (=> (not b_lambda!19613) (not b!95865)))

(declare-fun m!91531 () Bool)

(assert (=> b!95865 m!91531))

(declare-fun m!91533 () Bool)

(assert (=> b!95866 m!91533))

(assert (=> b!95717 d!62720))

(declare-fun d!62722 () Bool)

(declare-fun lt!22029 () Int)

(assert (=> d!62722 (>= lt!22029 0)))

(declare-fun e!52278 () Int)

(assert (=> d!62722 (= lt!22029 e!52278)))

(declare-fun c!23620 () Bool)

(assert (=> d!62722 (= c!23620 (is-Nil!838 (t!56044 lt!21915)))))

(assert (=> d!62722 (= (size!1003 (t!56044 lt!21915)) lt!22029)))

(declare-fun b!95867 () Bool)

(assert (=> b!95867 (= e!52278 0)))

(declare-fun b!95868 () Bool)

(assert (=> b!95868 (= e!52278 (+ 1 (size!1003 (t!56044 (t!56044 lt!21915)))))))

(assert (= (and d!62722 c!23620) b!95867))

(assert (= (and d!62722 (not c!23620)) b!95868))

(declare-fun m!91535 () Bool)

(assert (=> b!95868 m!91535))

(assert (=> b!95758 d!62722))

(assert (=> b!95655 d!62220))

(declare-fun d!62724 () Bool)

(declare-fun lt!22030 () Int)

(assert (=> d!62724 (>= lt!22030 0)))

(declare-fun e!52279 () Int)

(assert (=> d!62724 (= lt!22030 e!52279)))

(declare-fun c!23621 () Bool)

(assert (=> d!62724 (= c!23621 (is-Nil!838 lt!21963))))

(assert (=> d!62724 (= (size!1003 lt!21963) lt!22030)))

(declare-fun b!95869 () Bool)

(assert (=> b!95869 (= e!52279 0)))

(declare-fun b!95870 () Bool)

(assert (=> b!95870 (= e!52279 (+ 1 (size!1003 (t!56044 lt!21963))))))

(assert (= (and d!62724 c!23621) b!95869))

(assert (= (and d!62724 (not c!23621)) b!95870))

(declare-fun m!91537 () Bool)

(assert (=> b!95870 m!91537))

(assert (=> d!62420 d!62724))

(declare-fun d!62726 () Bool)

(declare-fun lt!22031 () Int)

(assert (=> d!62726 (>= lt!22031 0)))

(declare-fun e!52280 () Int)

(assert (=> d!62726 (= lt!22031 e!52280)))

(declare-fun c!23622 () Bool)

(assert (=> d!62726 (= c!23622 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(assert (=> d!62726 (= (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) lt!22031)))

(declare-fun b!95871 () Bool)

(assert (=> b!95871 (= e!52280 0)))

(declare-fun b!95872 () Bool)

(assert (=> b!95872 (= e!52280 (+ 1 (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))

(assert (= (and d!62726 c!23622) b!95871))

(assert (= (and d!62726 (not c!23622)) b!95872))

(assert (=> b!95872 m!91461))

(assert (=> d!62420 d!62726))

(declare-fun d!62728 () Bool)

(declare-fun lt!22032 () Int)

(assert (=> d!62728 (>= lt!22032 0)))

(declare-fun e!52281 () Int)

(assert (=> d!62728 (= lt!22032 e!52281)))

(declare-fun c!23623 () Bool)

(assert (=> d!62728 (= c!23623 (is-Nil!838 (t!56044 lt!21912)))))

(assert (=> d!62728 (= (size!1003 (t!56044 lt!21912)) lt!22032)))

(declare-fun b!95873 () Bool)

(assert (=> b!95873 (= e!52281 0)))

(declare-fun b!95874 () Bool)

(assert (=> b!95874 (= e!52281 (+ 1 (size!1003 (t!56044 (t!56044 lt!21912)))))))

(assert (= (and d!62728 c!23623) b!95873))

(assert (= (and d!62728 (not c!23623)) b!95874))

(declare-fun m!91539 () Bool)

(assert (=> b!95874 m!91539))

(assert (=> b!95715 d!62728))

(declare-fun d!62730 () Bool)

(declare-fun lt!22033 () Int)

(assert (=> d!62730 (>= lt!22033 0)))

(declare-fun e!52282 () Int)

(assert (=> d!62730 (= lt!22033 e!52282)))

(declare-fun c!23624 () Bool)

(assert (=> d!62730 (= c!23624 (is-Nil!836 lt!21962))))

(assert (=> d!62730 (= (size!1002 lt!21962) lt!22033)))

(declare-fun b!95875 () Bool)

(assert (=> b!95875 (= e!52282 0)))

(declare-fun b!95876 () Bool)

(assert (=> b!95876 (= e!52282 (+ 1 (size!1002 (t!56042 lt!21962))))))

(assert (= (and d!62730 c!23624) b!95875))

(assert (= (and d!62730 (not c!23624)) b!95876))

(declare-fun m!91541 () Bool)

(assert (=> b!95876 m!91541))

(assert (=> d!62416 d!62730))

(assert (=> d!62416 d!62018))

(declare-fun d!62732 () Bool)

(assert (=> d!62732 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))))) (Cons!836 (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))))) (map!731 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))) lambda!11294)))))

(assert (=> b!95701 d!62732))

(declare-fun d!62734 () Bool)

(declare-fun lt!22034 () List!898)

(assert (=> d!62734 (= (size!1003 lt!22034) (size!1002 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))))))))

(declare-fun e!52283 () List!898)

(assert (=> d!62734 (= lt!22034 e!52283)))

(declare-fun c!23625 () Bool)

(assert (=> d!62734 (= c!23625 (is-Nil!836 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))))))))

(assert (=> d!62734 (= (map!731 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))) lambda!11294) lt!22034)))

(declare-fun b!95877 () Bool)

(assert (=> b!95877 (= e!52283 Nil!838)))

(declare-fun b!95878 () Bool)

(assert (=> b!95878 (= e!52283 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))))) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5))))))))))

(assert (= (and d!62734 c!23625) b!95877))

(assert (= (and d!62734 (not c!23625)) b!95878))

(declare-fun b_lambda!19615 () Bool)

(assert (=> (not b_lambda!19615) (not b!95878)))

(declare-fun m!91543 () Bool)

(assert (=> d!62734 m!91543))

(assert (=> d!62734 m!91431))

(declare-fun m!91545 () Bool)

(assert (=> b!95878 m!91545))

(declare-fun m!91547 () Bool)

(assert (=> b!95878 m!91547))

(assert (=> b!95878 m!91545))

(assert (=> b!95878 m!91547))

(declare-fun m!91549 () Bool)

(assert (=> b!95878 m!91549))

(assert (=> b!95701 d!62734))

(declare-fun d!62736 () Bool)

(declare-fun c!23626 () Bool)

(assert (=> d!62736 (= c!23626 (is-Nil!838 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))))))))

(declare-fun e!52284 () Int)

(assert (=> d!62736 (= (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))) (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))))) lambda!11269) e!52284)))

(declare-fun b!95879 () Bool)

(assert (=> b!95879 (= e!52284 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))))))))

(declare-fun b!95880 () Bool)

(assert (=> b!95880 (= e!52284 (foldLeft!11 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))))) (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))))) lambda!11269))))

(assert (= (and d!62736 c!23626) b!95879))

(assert (= (and d!62736 (not c!23626)) b!95880))

(declare-fun b_lambda!19617 () Bool)

(assert (=> (not b_lambda!19617) (not b!95880)))

(assert (=> b!95880 m!91203))

(declare-fun m!91551 () Bool)

(assert (=> b!95880 m!91551))

(assert (=> b!95880 m!91551))

(declare-fun m!91553 () Bool)

(assert (=> b!95880 m!91553))

(assert (=> b!95671 d!62736))

(declare-fun d!62738 () Bool)

(assert (=> d!62738 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) lambda!11268) (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (Cons!836 (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) lambda!11268)))))

(assert (=> b!95641 d!62738))

(declare-fun d!62740 () Bool)

(declare-fun lt!22035 () List!898)

(assert (=> d!62740 (= (size!1003 lt!22035) (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(declare-fun e!52285 () List!898)

(assert (=> d!62740 (= lt!22035 e!52285)))

(declare-fun c!23627 () Bool)

(assert (=> d!62740 (= c!23627 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(assert (=> d!62740 (= (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) lambda!11268) lt!22035)))

(declare-fun b!95881 () Bool)

(assert (=> b!95881 (= e!52285 Nil!838)))

(declare-fun b!95882 () Bool)

(assert (=> b!95882 (= e!52285 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) lambda!11268) (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))))

(assert (= (and d!62740 c!23627) b!95881))

(assert (= (and d!62740 (not c!23627)) b!95882))

(declare-fun b_lambda!19619 () Bool)

(assert (=> (not b_lambda!19619) (not b!95882)))

(declare-fun m!91555 () Bool)

(assert (=> d!62740 m!91555))

(assert (=> d!62740 m!91461))

(declare-fun m!91557 () Bool)

(assert (=> b!95882 m!91557))

(declare-fun m!91559 () Bool)

(assert (=> b!95882 m!91559))

(assert (=> b!95882 m!91557))

(assert (=> b!95882 m!91559))

(declare-fun m!91561 () Bool)

(assert (=> b!95882 m!91561))

(assert (=> b!95641 d!62740))

(declare-fun d!62742 () Bool)

(assert (=> d!62742 (= (isEmpty!912 (find!8 transfers!5 lambda!11315)) (not (is-Some!740 (find!8 transfers!5 lambda!11315))))))

(assert (=> d!62512 d!62742))

(declare-fun d!62744 () Bool)

(declare-fun c!23628 () Bool)

(assert (=> d!62744 (= c!23628 (is-Nil!836 (t!56042 lt!21917)))))

(declare-fun e!52286 () (Set tuple2!524))

(assert (=> d!62744 (= (content!207 (t!56042 lt!21917)) e!52286)))

(declare-fun b!95883 () Bool)

(assert (=> b!95883 (= e!52286 (as emptyset (Set tuple2!524)))))

(declare-fun b!95884 () Bool)

(assert (=> b!95884 (= e!52286 (union (insert (h!7729 (t!56042 lt!21917)) (as emptyset (Set tuple2!524))) (content!207 (t!56042 (t!56042 lt!21917)))))))

(assert (= (and d!62744 c!23628) b!95883))

(assert (= (and d!62744 (not c!23628)) b!95884))

(declare-fun m!91563 () Bool)

(assert (=> b!95884 m!91563))

(declare-fun m!91565 () Bool)

(assert (=> b!95884 m!91565))

(assert (=> b!95723 d!62744))

(declare-fun d!62746 () Bool)

(declare-fun c!23629 () Bool)

(assert (=> d!62746 (= c!23629 (is-Nil!836 (t!56042 (t!56042 lt!21882))))))

(declare-fun e!52287 () (Set tuple2!524))

(assert (=> d!62746 (= (content!207 (t!56042 (t!56042 lt!21882))) e!52287)))

(declare-fun b!95885 () Bool)

(assert (=> b!95885 (= e!52287 (as emptyset (Set tuple2!524)))))

(declare-fun b!95886 () Bool)

(assert (=> b!95886 (= e!52287 (union (insert (h!7729 (t!56042 (t!56042 lt!21882))) (as emptyset (Set tuple2!524))) (content!207 (t!56042 (t!56042 (t!56042 lt!21882))))))))

(assert (= (and d!62746 c!23629) b!95885))

(assert (= (and d!62746 (not c!23629)) b!95886))

(declare-fun m!91567 () Bool)

(assert (=> b!95886 m!91567))

(declare-fun m!91569 () Bool)

(assert (=> b!95886 m!91569))

(assert (=> b!95734 d!62746))

(declare-fun d!62748 () Bool)

(assert (=> d!62748 (= (isEmpty!911 lt!21949) (not (is-Some!739 lt!21949)))))

(assert (=> d!62484 d!62748))

(declare-fun d!62750 () Bool)

(declare-fun lt!22036 () Int)

(assert (=> d!62750 (>= lt!22036 0)))

(declare-fun e!52288 () Int)

(assert (=> d!62750 (= lt!22036 e!52288)))

(declare-fun c!23630 () Bool)

(assert (=> d!62750 (= c!23630 (is-Nil!838 lt!21978))))

(assert (=> d!62750 (= (size!1003 lt!21978) lt!22036)))

(declare-fun b!95887 () Bool)

(assert (=> b!95887 (= e!52288 0)))

(declare-fun b!95888 () Bool)

(assert (=> b!95888 (= e!52288 (+ 1 (size!1003 (t!56044 lt!21978))))))

(assert (= (and d!62750 c!23630) b!95887))

(assert (= (and d!62750 (not c!23630)) b!95888))

(declare-fun m!91571 () Bool)

(assert (=> b!95888 m!91571))

(assert (=> d!62476 d!62750))

(assert (=> d!62476 d!62636))

(declare-fun d!62752 () Bool)

(declare-fun lt!22037 () Int)

(assert (=> d!62752 (>= lt!22037 0)))

(declare-fun e!52289 () Int)

(assert (=> d!62752 (= lt!22037 e!52289)))

(declare-fun c!23631 () Bool)

(assert (=> d!62752 (= c!23631 (is-Nil!837 (t!56043 (t!56043 (t!56043 lt!21859)))))))

(assert (=> d!62752 (= (size!1001 (t!56043 (t!56043 (t!56043 lt!21859)))) lt!22037)))

(declare-fun b!95889 () Bool)

(assert (=> b!95889 (= e!52289 0)))

(declare-fun b!95890 () Bool)

(assert (=> b!95890 (= e!52289 (+ 1 (size!1001 (t!56043 (t!56043 (t!56043 (t!56043 lt!21859)))))))))

(assert (= (and d!62752 c!23631) b!95889))

(assert (= (and d!62752 (not c!23631)) b!95890))

(declare-fun m!91573 () Bool)

(assert (=> b!95890 m!91573))

(assert (=> b!95740 d!62752))

(declare-fun d!62754 () Bool)

(declare-fun lt!22038 () Int)

(assert (=> d!62754 (>= lt!22038 0)))

(declare-fun e!52290 () Int)

(assert (=> d!62754 (= lt!22038 e!52290)))

(declare-fun c!23632 () Bool)

(assert (=> d!62754 (= c!23632 (is-Nil!838 (t!56044 (t!56044 lt!21888))))))

(assert (=> d!62754 (= (size!1003 (t!56044 (t!56044 lt!21888))) lt!22038)))

(declare-fun b!95891 () Bool)

(assert (=> b!95891 (= e!52290 0)))

(declare-fun b!95892 () Bool)

(assert (=> b!95892 (= e!52290 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 lt!21888))))))))

(assert (= (and d!62754 c!23632) b!95891))

(assert (= (and d!62754 (not c!23632)) b!95892))

(declare-fun m!91575 () Bool)

(assert (=> b!95892 m!91575))

(assert (=> b!95614 d!62754))

(declare-fun b!95893 () Bool)

(declare-fun e!52291 () Bool)

(declare-fun lt!22039 () Option!769)

(assert (=> b!95893 (= e!52291 (dynLambda!1156 lambda!11299 (v!3224 lt!22039)))))

(declare-fun b!95894 () Bool)

(declare-fun e!52294 () Option!769)

(assert (=> b!95894 (= e!52294 (find!8 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) lambda!11299))))

(declare-fun d!62756 () Bool)

(declare-fun e!52293 () Bool)

(assert (=> d!62756 e!52293))

(declare-fun res!49696 () Bool)

(assert (=> d!62756 (=> res!49696 e!52293)))

(assert (=> d!62756 (= res!49696 (not (is-Some!740 lt!22039)))))

(declare-fun e!52292 () Option!769)

(assert (=> d!62756 (= lt!22039 e!52292)))

(declare-fun c!23634 () Bool)

(assert (=> d!62756 (= c!23634 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(assert (=> d!62756 (= (find!8 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lambda!11299) lt!22039)))

(declare-fun b!95895 () Bool)

(assert (=> b!95895 (= e!52292 e!52294)))

(declare-fun c!23633 () Bool)

(assert (=> b!95895 (= c!23633 (dynLambda!1156 lambda!11299 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(declare-fun b!95896 () Bool)

(assert (=> b!95896 (= e!52293 e!52291)))

(declare-fun res!49697 () Bool)

(assert (=> b!95896 (=> (not res!49697) (not e!52291))))

(assert (=> b!95896 (= res!49697 (member (v!3224 lt!22039) (content!207 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(declare-fun b!95897 () Bool)

(assert (=> b!95897 (= e!52292 None!741)))

(declare-fun b!95898 () Bool)

(assert (=> b!95898 (= e!52294 (Some!740 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(assert (= (and b!95895 c!23633) b!95898))

(assert (= (and b!95895 (not c!23633)) b!95894))

(assert (= (and d!62756 c!23634) b!95897))

(assert (= (and d!62756 (not c!23634)) b!95895))

(assert (= (and d!62756 (not res!49696)) b!95896))

(assert (= (and b!95896 res!49697) b!95893))

(declare-fun b_lambda!19621 () Bool)

(assert (=> (not b_lambda!19621) (not b!95893)))

(declare-fun b_lambda!19623 () Bool)

(assert (=> (not b_lambda!19623) (not b!95895)))

(declare-fun m!91577 () Bool)

(assert (=> b!95893 m!91577))

(declare-fun m!91579 () Bool)

(assert (=> b!95894 m!91579))

(declare-fun m!91581 () Bool)

(assert (=> b!95895 m!91581))

(assert (=> b!95896 m!91527))

(declare-fun m!91583 () Bool)

(assert (=> b!95896 m!91583))

(assert (=> b!95616 d!62756))

(assert (=> b!95618 d!62716))

(declare-fun d!62758 () Bool)

(declare-fun c!23635 () Bool)

(assert (=> d!62758 (= c!23635 (is-Nil!836 (t!56042 (t!56042 lt!21887))))))

(declare-fun e!52295 () (Set tuple2!524))

(assert (=> d!62758 (= (content!207 (t!56042 (t!56042 lt!21887))) e!52295)))

(declare-fun b!95899 () Bool)

(assert (=> b!95899 (= e!52295 (as emptyset (Set tuple2!524)))))

(declare-fun b!95900 () Bool)

(assert (=> b!95900 (= e!52295 (union (insert (h!7729 (t!56042 (t!56042 lt!21887))) (as emptyset (Set tuple2!524))) (content!207 (t!56042 (t!56042 (t!56042 lt!21887))))))))

(assert (= (and d!62758 c!23635) b!95899))

(assert (= (and d!62758 (not c!23635)) b!95900))

(declare-fun m!91585 () Bool)

(assert (=> b!95900 m!91585))

(declare-fun m!91587 () Bool)

(assert (=> b!95900 m!91587))

(assert (=> b!95742 d!62758))

(declare-fun d!62760 () Bool)

(declare-fun lt!22040 () Int)

(assert (=> d!62760 (>= lt!22040 0)))

(declare-fun e!52296 () Int)

(assert (=> d!62760 (= lt!22040 e!52296)))

(declare-fun c!23636 () Bool)

(assert (=> d!62760 (= c!23636 (is-Nil!837 lt!21954))))

(assert (=> d!62760 (= (size!1001 lt!21954) lt!22040)))

(declare-fun b!95901 () Bool)

(assert (=> b!95901 (= e!52296 0)))

(declare-fun b!95902 () Bool)

(assert (=> b!95902 (= e!52296 (+ 1 (size!1001 (t!56043 lt!21954))))))

(assert (= (and d!62760 c!23636) b!95901))

(assert (= (and d!62760 (not c!23636)) b!95902))

(declare-fun m!91589 () Bool)

(assert (=> b!95902 m!91589))

(assert (=> d!62402 d!62760))

(assert (=> d!62402 d!62726))

(declare-fun d!62762 () Bool)

(declare-fun c!23637 () Bool)

(assert (=> d!62762 (= c!23637 (is-Nil!836 lt!21962))))

(declare-fun e!52297 () (Set tuple2!524))

(assert (=> d!62762 (= (content!207 lt!21962) e!52297)))

(declare-fun b!95903 () Bool)

(assert (=> b!95903 (= e!52297 (as emptyset (Set tuple2!524)))))

(declare-fun b!95904 () Bool)

(assert (=> b!95904 (= e!52297 (union (insert (h!7729 lt!21962) (as emptyset (Set tuple2!524))) (content!207 (t!56042 lt!21962))))))

(assert (= (and d!62762 c!23637) b!95903))

(assert (= (and d!62762 (not c!23637)) b!95904))

(declare-fun m!91591 () Bool)

(assert (=> b!95904 m!91591))

(declare-fun m!91593 () Bool)

(assert (=> b!95904 m!91593))

(assert (=> b!95635 d!62762))

(assert (=> b!95635 d!62220))

(declare-fun d!62764 () Bool)

(declare-fun res!49698 () Bool)

(declare-fun e!52298 () Bool)

(assert (=> d!62764 (=> res!49698 e!52298)))

(assert (=> d!62764 (= res!49698 (is-Nil!836 (t!56042 lt!21925)))))

(assert (=> d!62764 (= (forall!87 (t!56042 lt!21925) lambda!11311) e!52298)))

(declare-fun b!95905 () Bool)

(declare-fun e!52299 () Bool)

(assert (=> b!95905 (= e!52298 e!52299)))

(declare-fun res!49699 () Bool)

(assert (=> b!95905 (=> (not res!49699) (not e!52299))))

(assert (=> b!95905 (= res!49699 (dynLambda!1156 lambda!11311 (h!7729 (t!56042 lt!21925))))))

(declare-fun b!95906 () Bool)

(assert (=> b!95906 (= e!52299 (forall!87 (t!56042 (t!56042 lt!21925)) lambda!11311))))

(assert (= (and d!62764 (not res!49698)) b!95905))

(assert (= (and b!95905 res!49699) b!95906))

(declare-fun b_lambda!19625 () Bool)

(assert (=> (not b_lambda!19625) (not b!95905)))

(declare-fun m!91595 () Bool)

(assert (=> b!95905 m!91595))

(declare-fun m!91597 () Bool)

(assert (=> b!95906 m!91597))

(assert (=> b!95669 d!62764))

(declare-fun d!62766 () Bool)

(declare-fun res!49700 () Bool)

(declare-fun e!52300 () Bool)

(assert (=> d!62766 (=> res!49700 e!52300)))

(assert (=> d!62766 (= res!49700 (is-Nil!836 (t!56042 (t!56042 lt!21887))))))

(assert (=> d!62766 (= (forall!87 (t!56042 (t!56042 lt!21887)) lambda!11307) e!52300)))

(declare-fun b!95907 () Bool)

(declare-fun e!52301 () Bool)

(assert (=> b!95907 (= e!52300 e!52301)))

(declare-fun res!49701 () Bool)

(assert (=> b!95907 (=> (not res!49701) (not e!52301))))

(assert (=> b!95907 (= res!49701 (dynLambda!1156 lambda!11307 (h!7729 (t!56042 (t!56042 lt!21887)))))))

(declare-fun b!95908 () Bool)

(assert (=> b!95908 (= e!52301 (forall!87 (t!56042 (t!56042 (t!56042 lt!21887))) lambda!11307))))

(assert (= (and d!62766 (not res!49700)) b!95907))

(assert (= (and b!95907 res!49701) b!95908))

(declare-fun b_lambda!19627 () Bool)

(assert (=> (not b_lambda!19627) (not b!95907)))

(declare-fun m!91599 () Bool)

(assert (=> b!95907 m!91599))

(declare-fun m!91601 () Bool)

(assert (=> b!95908 m!91601))

(assert (=> b!95602 d!62766))

(declare-fun d!62768 () Bool)

(declare-fun res!49702 () Bool)

(declare-fun e!52302 () Bool)

(assert (=> d!62768 (=> res!49702 e!52302)))

(assert (=> d!62768 (= res!49702 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (=> d!62768 (= (forall!87 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11302) e!52302)))

(declare-fun b!95909 () Bool)

(declare-fun e!52303 () Bool)

(assert (=> b!95909 (= e!52302 e!52303)))

(declare-fun res!49703 () Bool)

(assert (=> b!95909 (=> (not res!49703) (not e!52303))))

(assert (=> b!95909 (= res!49703 (dynLambda!1156 lambda!11302 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(declare-fun b!95910 () Bool)

(assert (=> b!95910 (= e!52303 (forall!87 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))) lambda!11302))))

(assert (= (and d!62768 (not res!49702)) b!95909))

(assert (= (and b!95909 res!49703) b!95910))

(declare-fun b_lambda!19629 () Bool)

(assert (=> (not b_lambda!19629) (not b!95909)))

(declare-fun m!91603 () Bool)

(assert (=> b!95909 m!91603))

(declare-fun m!91605 () Bool)

(assert (=> b!95910 m!91605))

(assert (=> b!95610 d!62768))

(declare-fun d!62770 () Bool)

(declare-fun c!23638 () Bool)

(assert (=> d!62770 (= c!23638 (is-Nil!839 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))))))

(declare-fun e!52304 () Bool)

(assert (=> d!62770 (= (foldLeft!12 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))) (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))) lambda!11297) e!52304)))

(declare-fun b!95911 () Bool)

(assert (=> b!95911 (= e!52304 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))))))

(declare-fun b!95912 () Bool)

(assert (=> b!95912 (= e!52304 (foldLeft!12 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))) (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))))) lambda!11297))))

(assert (= (and d!62770 c!23638) b!95911))

(assert (= (and d!62770 (not c!23638)) b!95912))

(declare-fun b_lambda!19631 () Bool)

(assert (=> (not b_lambda!19631) (not b!95912)))

(assert (=> b!95912 m!91233))

(declare-fun m!91607 () Bool)

(assert (=> b!95912 m!91607))

(assert (=> b!95912 m!91607))

(declare-fun m!91609 () Bool)

(assert (=> b!95912 m!91609))

(assert (=> b!95691 d!62770))

(declare-fun d!62772 () Bool)

(declare-fun res!49704 () Bool)

(declare-fun e!52305 () Bool)

(assert (=> d!62772 (=> res!49704 e!52305)))

(assert (=> d!62772 (= res!49704 (is-Nil!836 (t!56042 (t!56042 lt!21882))))))

(assert (=> d!62772 (= (forall!87 (t!56042 (t!56042 lt!21882)) lambda!11311) e!52305)))

(declare-fun b!95913 () Bool)

(declare-fun e!52306 () Bool)

(assert (=> b!95913 (= e!52305 e!52306)))

(declare-fun res!49705 () Bool)

(assert (=> b!95913 (=> (not res!49705) (not e!52306))))

(assert (=> b!95913 (= res!49705 (dynLambda!1156 lambda!11311 (h!7729 (t!56042 (t!56042 lt!21882)))))))

(declare-fun b!95914 () Bool)

(assert (=> b!95914 (= e!52306 (forall!87 (t!56042 (t!56042 (t!56042 lt!21882))) lambda!11311))))

(assert (= (and d!62772 (not res!49704)) b!95913))

(assert (= (and b!95913 res!49705) b!95914))

(declare-fun b_lambda!19633 () Bool)

(assert (=> (not b_lambda!19633) (not b!95913)))

(declare-fun m!91611 () Bool)

(assert (=> b!95913 m!91611))

(declare-fun m!91613 () Bool)

(assert (=> b!95914 m!91613))

(assert (=> b!95736 d!62772))

(declare-fun b!95915 () Bool)

(declare-fun e!52310 () Bool)

(declare-fun lt!22042 () List!896)

(assert (=> b!95915 (= e!52310 (forall!87 lt!22042 lambda!11307))))

(declare-fun b!95916 () Bool)

(declare-fun e!52307 () List!896)

(assert (=> b!95916 (= e!52307 Nil!836)))

(declare-fun b!95917 () Bool)

(declare-fun res!49706 () Bool)

(assert (=> b!95917 (=> (not res!49706) (not e!52310))))

(assert (=> b!95917 (= res!49706 (subset (content!207 lt!22042) (content!207 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(declare-fun b!95918 () Bool)

(declare-fun e!52308 () List!896)

(declare-fun lt!22041 () List!896)

(assert (=> b!95918 (= e!52308 lt!22041)))

(declare-fun d!62774 () Bool)

(assert (=> d!62774 e!52310))

(declare-fun res!49708 () Bool)

(assert (=> d!62774 (=> (not res!49708) (not e!52310))))

(assert (=> d!62774 (= res!49708 (<= (size!1002 lt!22042) (size!1002 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (=> d!62774 (= lt!22042 e!52307)))

(declare-fun c!23640 () Bool)

(assert (=> d!62774 (= c!23640 (is-Nil!836 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(assert (=> d!62774 (= (filter!49 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11307) lt!22042)))

(declare-fun b!95919 () Bool)

(assert (=> b!95919 (= e!52307 e!52308)))

(declare-fun c!23639 () Bool)

(declare-fun e!52309 () Bool)

(assert (=> b!95919 (= c!23639 e!52309)))

(declare-fun res!49707 () Bool)

(assert (=> b!95919 (=> (not res!49707) (not e!52309))))

(assert (=> b!95919 (= res!49707 (is-Cons!834 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(assert (=> b!95919 (= lt!22041 (filter!49 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11307))))

(declare-fun b!95920 () Bool)

(assert (=> b!95920 (= e!52308 (Cons!834 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))) lt!22041))))

(declare-fun b!95921 () Bool)

(assert (=> b!95921 (= e!52309 (dynLambda!1156 lambda!11307 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (= (and b!95919 res!49707) b!95921))

(assert (= (and b!95919 c!23639) b!95920))

(assert (= (and b!95919 (not c!23639)) b!95918))

(assert (= (and d!62774 c!23640) b!95916))

(assert (= (and d!62774 (not c!23640)) b!95919))

(assert (= (and d!62774 res!49708) b!95917))

(assert (= (and b!95917 res!49706) b!95915))

(declare-fun b_lambda!19635 () Bool)

(assert (=> (not b_lambda!19635) (not b!95921)))

(declare-fun m!91615 () Bool)

(assert (=> b!95917 m!91615))

(assert (=> b!95917 m!90929))

(declare-fun m!91617 () Bool)

(assert (=> b!95915 m!91617))

(declare-fun m!91619 () Bool)

(assert (=> b!95921 m!91619))

(declare-fun m!91621 () Bool)

(assert (=> b!95919 m!91621))

(declare-fun m!91623 () Bool)

(assert (=> d!62774 m!91623))

(assert (=> d!62774 m!90693))

(assert (=> b!95637 d!62774))

(declare-fun d!62776 () Bool)

(declare-fun lt!22043 () Int)

(assert (=> d!62776 (>= lt!22043 0)))

(declare-fun e!52311 () Int)

(assert (=> d!62776 (= lt!22043 e!52311)))

(declare-fun c!23641 () Bool)

(assert (=> d!62776 (= c!23641 (is-Nil!837 (t!56043 (t!56043 lt!21906))))))

(assert (=> d!62776 (= (size!1001 (t!56043 (t!56043 lt!21906))) lt!22043)))

(declare-fun b!95922 () Bool)

(assert (=> b!95922 (= e!52311 0)))

(declare-fun b!95923 () Bool)

(assert (=> b!95923 (= e!52311 (+ 1 (size!1001 (t!56043 (t!56043 (t!56043 lt!21906))))))))

(assert (= (and d!62776 c!23641) b!95922))

(assert (= (and d!62776 (not c!23641)) b!95923))

(declare-fun m!91625 () Bool)

(assert (=> b!95923 m!91625))

(assert (=> b!95732 d!62776))

(assert (=> b!95606 d!62726))

(declare-fun d!62778 () Bool)

(assert (=> d!62778 (= (isDefined!27 lt!22000) (not (isEmpty!911 lt!22000)))))

(declare-fun bs!43614 () Bool)

(assert (= bs!43614 d!62778))

(declare-fun m!91627 () Bool)

(assert (=> bs!43614 m!91627))

(assert (=> bs!43588 d!62778))

(declare-fun d!62780 () Bool)

(declare-fun lt!22044 () Option!768)

(assert (=> d!62780 (= (isDefined!27 lt!22044) (isDefined!28 (find!8 transfers!5 lambda!11317)))))

(declare-fun e!52312 () Option!768)

(assert (=> d!62780 (= lt!22044 e!52312)))

(declare-fun c!23642 () Bool)

(assert (=> d!62780 (= c!23642 (is-None!741 (find!8 transfers!5 lambda!11317)))))

(assert (=> d!62780 (= (map!733 (find!8 transfers!5 lambda!11317) lambda!11268) lt!22044)))

(declare-fun b!95924 () Bool)

(assert (=> b!95924 (= e!52312 None!740)))

(declare-fun b!95925 () Bool)

(assert (=> b!95925 (= e!52312 (Some!739 (dynLambda!1158 lambda!11268 (v!3224 (find!8 transfers!5 lambda!11317)))))))

(assert (= (and d!62780 c!23642) b!95924))

(assert (= (and d!62780 (not c!23642)) b!95925))

(declare-fun b_lambda!19637 () Bool)

(assert (=> (not b_lambda!19637) (not b!95925)))

(declare-fun m!91629 () Bool)

(assert (=> d!62780 m!91629))

(assert (=> d!62780 m!91377))

(declare-fun m!91631 () Bool)

(assert (=> d!62780 m!91631))

(declare-fun m!91633 () Bool)

(assert (=> b!95925 m!91633))

(assert (=> bs!43588 d!62780))

(declare-fun b!95926 () Bool)

(declare-fun e!52313 () Bool)

(declare-fun lt!22045 () Option!769)

(assert (=> b!95926 (= e!52313 (dynLambda!1156 lambda!11317 (v!3224 lt!22045)))))

(declare-fun b!95927 () Bool)

(declare-fun e!52316 () Option!769)

(assert (=> b!95927 (= e!52316 (find!8 (t!56042 transfers!5) lambda!11317))))

(declare-fun d!62782 () Bool)

(declare-fun e!52315 () Bool)

(assert (=> d!62782 e!52315))

(declare-fun res!49709 () Bool)

(assert (=> d!62782 (=> res!49709 e!52315)))

(assert (=> d!62782 (= res!49709 (not (is-Some!740 lt!22045)))))

(declare-fun e!52314 () Option!769)

(assert (=> d!62782 (= lt!22045 e!52314)))

(declare-fun c!23644 () Bool)

(assert (=> d!62782 (= c!23644 (is-Nil!836 transfers!5))))

(assert (=> d!62782 (= (find!8 transfers!5 lambda!11317) lt!22045)))

(declare-fun b!95928 () Bool)

(assert (=> b!95928 (= e!52314 e!52316)))

(declare-fun c!23643 () Bool)

(assert (=> b!95928 (= c!23643 (dynLambda!1156 lambda!11317 (h!7729 transfers!5)))))

(declare-fun b!95929 () Bool)

(assert (=> b!95929 (= e!52315 e!52313)))

(declare-fun res!49710 () Bool)

(assert (=> b!95929 (=> (not res!49710) (not e!52313))))

(assert (=> b!95929 (= res!49710 (member (v!3224 lt!22045) (content!207 transfers!5)))))

(declare-fun b!95930 () Bool)

(assert (=> b!95930 (= e!52314 None!741)))

(declare-fun b!95931 () Bool)

(assert (=> b!95931 (= e!52316 (Some!740 (h!7729 transfers!5)))))

(assert (= (and b!95928 c!23643) b!95931))

(assert (= (and b!95928 (not c!23643)) b!95927))

(assert (= (and d!62782 c!23644) b!95930))

(assert (= (and d!62782 (not c!23644)) b!95928))

(assert (= (and d!62782 (not res!49709)) b!95929))

(assert (= (and b!95929 res!49710) b!95926))

(declare-fun b_lambda!19639 () Bool)

(assert (=> (not b_lambda!19639) (not b!95926)))

(declare-fun b_lambda!19641 () Bool)

(assert (=> (not b_lambda!19641) (not b!95928)))

(declare-fun m!91635 () Bool)

(assert (=> b!95926 m!91635))

(declare-fun m!91637 () Bool)

(assert (=> b!95927 m!91637))

(declare-fun m!91639 () Bool)

(assert (=> b!95928 m!91639))

(assert (=> b!95929 m!90447))

(declare-fun m!91641 () Bool)

(assert (=> b!95929 m!91641))

(assert (=> bs!43588 d!62782))

(declare-fun d!62784 () Bool)

(declare-fun lt!22046 () Int)

(assert (=> d!62784 (>= lt!22046 0)))

(declare-fun e!52317 () Int)

(assert (=> d!62784 (= lt!22046 e!52317)))

(declare-fun c!23645 () Bool)

(assert (=> d!62784 (= c!23645 (is-Nil!838 lt!21979))))

(assert (=> d!62784 (= (size!1003 lt!21979) lt!22046)))

(declare-fun b!95932 () Bool)

(assert (=> b!95932 (= e!52317 0)))

(declare-fun b!95933 () Bool)

(assert (=> b!95933 (= e!52317 (+ 1 (size!1003 (t!56044 lt!21979))))))

(assert (= (and d!62784 c!23645) b!95932))

(assert (= (and d!62784 (not c!23645)) b!95933))

(declare-fun m!91643 () Bool)

(assert (=> b!95933 m!91643))

(assert (=> d!62480 d!62784))

(assert (=> d!62480 d!62654))

(declare-fun d!62786 () Bool)

(declare-fun lt!22047 () Int)

(assert (=> d!62786 (>= lt!22047 0)))

(declare-fun e!52318 () Int)

(assert (=> d!62786 (= lt!22047 e!52318)))

(declare-fun c!23646 () Bool)

(assert (=> d!62786 (= c!23646 (is-Nil!838 (t!56044 (t!56044 lt!21883))))))

(assert (=> d!62786 (= (size!1003 (t!56044 (t!56044 lt!21883))) lt!22047)))

(declare-fun b!95934 () Bool)

(assert (=> b!95934 (= e!52318 0)))

(declare-fun b!95935 () Bool)

(assert (=> b!95935 (= e!52318 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 lt!21883))))))))

(assert (= (and d!62786 c!23646) b!95934))

(assert (= (and d!62786 (not c!23646)) b!95935))

(declare-fun m!91645 () Bool)

(assert (=> b!95935 m!91645))

(assert (=> b!95746 d!62786))

(declare-fun d!62788 () Bool)

(assert (=> d!62788 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))) (Cons!836 (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))) (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))) lambda!11294)))))

(assert (=> b!95744 d!62788))

(declare-fun d!62790 () Bool)

(declare-fun lt!22048 () List!898)

(assert (=> d!62790 (= (size!1003 lt!22048) (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))))))

(declare-fun e!52319 () List!898)

(assert (=> d!62790 (= lt!22048 e!52319)))

(declare-fun c!23647 () Bool)

(assert (=> d!62790 (= c!23647 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))))))

(assert (=> d!62790 (= (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))) lambda!11294) lt!22048)))

(declare-fun b!95936 () Bool)

(assert (=> b!95936 (= e!52319 Nil!838)))

(declare-fun b!95937 () Bool)

(assert (=> b!95937 (= e!52319 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))) lambda!11294) (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5)))))))))))

(assert (= (and d!62790 c!23647) b!95936))

(assert (= (and d!62790 (not c!23647)) b!95937))

(declare-fun b_lambda!19643 () Bool)

(assert (=> (not b_lambda!19643) (not b!95937)))

(declare-fun m!91647 () Bool)

(assert (=> d!62790 m!91647))

(assert (=> d!62790 m!91455))

(declare-fun m!91649 () Bool)

(assert (=> b!95937 m!91649))

(declare-fun m!91651 () Bool)

(assert (=> b!95937 m!91651))

(assert (=> b!95937 m!91649))

(assert (=> b!95937 m!91651))

(declare-fun m!91653 () Bool)

(assert (=> b!95937 m!91653))

(assert (=> b!95744 d!62790))

(declare-fun d!62792 () Bool)

(declare-fun lt!22049 () Int)

(assert (=> d!62792 (>= lt!22049 0)))

(declare-fun e!52320 () Int)

(assert (=> d!62792 (= lt!22049 e!52320)))

(declare-fun c!23648 () Bool)

(assert (=> d!62792 (= c!23648 (is-Nil!838 (t!56044 lt!21926)))))

(assert (=> d!62792 (= (size!1003 (t!56044 lt!21926)) lt!22049)))

(declare-fun b!95938 () Bool)

(assert (=> b!95938 (= e!52320 0)))

(declare-fun b!95939 () Bool)

(assert (=> b!95939 (= e!52320 (+ 1 (size!1003 (t!56044 (t!56044 lt!21926)))))))

(assert (= (and d!62792 c!23648) b!95938))

(assert (= (and d!62792 (not c!23648)) b!95939))

(declare-fun m!91655 () Bool)

(assert (=> b!95939 m!91655))

(assert (=> b!95679 d!62792))

(assert (=> b!95767 d!62642))

(declare-fun d!62794 () Bool)

(declare-fun lt!22050 () Int)

(assert (=> d!62794 (>= lt!22050 0)))

(declare-fun e!52321 () Int)

(assert (=> d!62794 (= lt!22050 e!52321)))

(declare-fun c!23649 () Bool)

(assert (=> d!62794 (= c!23649 (is-Nil!838 (t!56044 lt!21922)))))

(assert (=> d!62794 (= (size!1003 (t!56044 lt!21922)) lt!22050)))

(declare-fun b!95940 () Bool)

(assert (=> b!95940 (= e!52321 0)))

(declare-fun b!95941 () Bool)

(assert (=> b!95941 (= e!52321 (+ 1 (size!1003 (t!56044 (t!56044 lt!21922)))))))

(assert (= (and d!62794 c!23649) b!95940))

(assert (= (and d!62794 (not c!23649)) b!95941))

(declare-fun m!91657 () Bool)

(assert (=> b!95941 m!91657))

(assert (=> b!95628 d!62794))

(declare-fun d!62796 () Bool)

(declare-fun lt!22051 () Int)

(assert (=> d!62796 (>= lt!22051 0)))

(declare-fun e!52322 () Int)

(assert (=> d!62796 (= lt!22051 e!52322)))

(declare-fun c!23650 () Bool)

(assert (=> d!62796 (= c!23650 (is-Nil!839 (t!56069 (t!56069 (t!56069 (t!56069 lt!21830))))))))

(assert (=> d!62796 (= (size!1004 (t!56069 (t!56069 (t!56069 (t!56069 lt!21830))))) lt!22051)))

(declare-fun b!95942 () Bool)

(assert (=> b!95942 (= e!52322 0)))

(declare-fun b!95943 () Bool)

(assert (=> b!95943 (= e!52322 (+ 1 (size!1004 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 lt!21830))))))))))

(assert (= (and d!62796 c!23650) b!95942))

(assert (= (and d!62796 (not c!23650)) b!95943))

(declare-fun m!91659 () Bool)

(assert (=> b!95943 m!91659))

(assert (=> b!95756 d!62796))

(declare-fun d!62798 () Bool)

(declare-fun lt!22052 () Int)

(assert (=> d!62798 (>= lt!22052 0)))

(declare-fun e!52323 () Int)

(assert (=> d!62798 (= lt!22052 e!52323)))

(declare-fun c!23651 () Bool)

(assert (=> d!62798 (= c!23651 (is-Nil!838 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 lt!21819)))))))))

(assert (=> d!62798 (= (size!1003 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 lt!21819)))))) lt!22052)))

(declare-fun b!95944 () Bool)

(assert (=> b!95944 (= e!52323 0)))

(declare-fun b!95945 () Bool)

(assert (=> b!95945 (= e!52323 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 lt!21819)))))))))))

(assert (= (and d!62798 c!23651) b!95944))

(assert (= (and d!62798 (not c!23651)) b!95945))

(declare-fun m!91661 () Bool)

(assert (=> b!95945 m!91661))

(assert (=> b!95608 d!62798))

(declare-fun d!62800 () Bool)

(declare-fun lt!22053 () Int)

(assert (=> d!62800 (>= lt!22053 0)))

(declare-fun e!52324 () Int)

(assert (=> d!62800 (= lt!22053 e!52324)))

(declare-fun c!23652 () Bool)

(assert (=> d!62800 (= c!23652 (is-Nil!838 (t!56044 (t!56044 lt!21872))))))

(assert (=> d!62800 (= (size!1003 (t!56044 (t!56044 lt!21872))) lt!22053)))

(declare-fun b!95946 () Bool)

(assert (=> b!95946 (= e!52324 0)))

(declare-fun b!95947 () Bool)

(assert (=> b!95947 (= e!52324 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 lt!21872))))))))

(assert (= (and d!62800 c!23652) b!95946))

(assert (= (and d!62800 (not c!23652)) b!95947))

(declare-fun m!91663 () Bool)

(assert (=> b!95947 m!91663))

(assert (=> b!95649 d!62800))

(declare-fun d!62802 () Bool)

(declare-fun lt!22054 () Int)

(assert (=> d!62802 (>= lt!22054 0)))

(declare-fun e!52325 () Int)

(assert (=> d!62802 (= lt!22054 e!52325)))

(declare-fun c!23653 () Bool)

(assert (=> d!62802 (= c!23653 (is-Nil!838 (t!56044 (t!56044 lt!21874))))))

(assert (=> d!62802 (= (size!1003 (t!56044 (t!56044 lt!21874))) lt!22054)))

(declare-fun b!95948 () Bool)

(assert (=> b!95948 (= e!52325 0)))

(declare-fun b!95949 () Bool)

(assert (=> b!95949 (= e!52325 (+ 1 (size!1003 (t!56044 (t!56044 (t!56044 lt!21874))))))))

(assert (= (and d!62802 c!23653) b!95948))

(assert (= (and d!62802 (not c!23653)) b!95949))

(declare-fun m!91665 () Bool)

(assert (=> b!95949 m!91665))

(assert (=> b!95665 d!62802))

(declare-fun b!95950 () Bool)

(declare-fun e!52326 () Bool)

(declare-fun lt!22055 () Option!769)

(assert (=> b!95950 (= e!52326 (dynLambda!1156 lambda!11316 (v!3224 lt!22055)))))

(declare-fun b!95951 () Bool)

(declare-fun e!52329 () Option!769)

(assert (=> b!95951 (= e!52329 (find!8 (t!56042 (t!56042 transfers!5)) lambda!11316))))

(declare-fun d!62804 () Bool)

(declare-fun e!52328 () Bool)

(assert (=> d!62804 e!52328))

(declare-fun res!49711 () Bool)

(assert (=> d!62804 (=> res!49711 e!52328)))

(assert (=> d!62804 (= res!49711 (not (is-Some!740 lt!22055)))))

(declare-fun e!52327 () Option!769)

(assert (=> d!62804 (= lt!22055 e!52327)))

(declare-fun c!23655 () Bool)

(assert (=> d!62804 (= c!23655 (is-Nil!836 (t!56042 transfers!5)))))

(assert (=> d!62804 (= (find!8 (t!56042 transfers!5) lambda!11316) lt!22055)))

(declare-fun b!95952 () Bool)

(assert (=> b!95952 (= e!52327 e!52329)))

(declare-fun c!23654 () Bool)

(assert (=> b!95952 (= c!23654 (dynLambda!1156 lambda!11316 (h!7729 (t!56042 transfers!5))))))

(declare-fun b!95953 () Bool)

(assert (=> b!95953 (= e!52328 e!52326)))

(declare-fun res!49712 () Bool)

(assert (=> b!95953 (=> (not res!49712) (not e!52326))))

(assert (=> b!95953 (= res!49712 (member (v!3224 lt!22055) (content!207 (t!56042 transfers!5))))))

(declare-fun b!95954 () Bool)

(assert (=> b!95954 (= e!52327 None!741)))

(declare-fun b!95955 () Bool)

(assert (=> b!95955 (= e!52329 (Some!740 (h!7729 (t!56042 transfers!5))))))

(assert (= (and b!95952 c!23654) b!95955))

(assert (= (and b!95952 (not c!23654)) b!95951))

(assert (= (and d!62804 c!23655) b!95954))

(assert (= (and d!62804 (not c!23655)) b!95952))

(assert (= (and d!62804 (not res!49711)) b!95953))

(assert (= (and b!95953 res!49712) b!95950))

(declare-fun b_lambda!19645 () Bool)

(assert (=> (not b_lambda!19645) (not b!95950)))

(declare-fun b_lambda!19647 () Bool)

(assert (=> (not b_lambda!19647) (not b!95952)))

(declare-fun m!91667 () Bool)

(assert (=> b!95950 m!91667))

(declare-fun m!91669 () Bool)

(assert (=> b!95951 m!91669))

(declare-fun m!91671 () Bool)

(assert (=> b!95952 m!91671))

(assert (=> b!95953 m!90483))

(declare-fun m!91673 () Bool)

(assert (=> b!95953 m!91673))

(assert (=> b!95705 d!62804))

(declare-fun d!62806 () Bool)

(declare-fun lt!22056 () Int)

(assert (=> d!62806 (>= lt!22056 0)))

(declare-fun e!52330 () Int)

(assert (=> d!62806 (= lt!22056 e!52330)))

(declare-fun c!23656 () Bool)

(assert (=> d!62806 (= c!23656 (is-Nil!836 (t!56042 (t!56042 lt!21887))))))

(assert (=> d!62806 (= (size!1002 (t!56042 (t!56042 lt!21887))) lt!22056)))

(declare-fun b!95956 () Bool)

(assert (=> b!95956 (= e!52330 0)))

(declare-fun b!95957 () Bool)

(assert (=> b!95957 (= e!52330 (+ 1 (size!1002 (t!56042 (t!56042 (t!56042 lt!21887))))))))

(assert (= (and d!62806 c!23656) b!95956))

(assert (= (and d!62806 (not c!23656)) b!95957))

(declare-fun m!91675 () Bool)

(assert (=> b!95957 m!91675))

(assert (=> b!95719 d!62806))

(declare-fun d!62808 () Bool)

(assert (=> d!62808 (= ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))) (Cons!836 (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))) (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))) lambda!11283)))))

(assert (=> b!95760 d!62808))

(declare-fun d!62810 () Bool)

(declare-fun lt!22057 () List!898)

(assert (=> d!62810 (= (size!1003 lt!22057) (size!1002 (t!56042 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))))))

(declare-fun e!52331 () List!898)

(assert (=> d!62810 (= lt!22057 e!52331)))

(declare-fun c!23657 () Bool)

(assert (=> d!62810 (= c!23657 (is-Nil!836 (t!56042 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))))))

(assert (=> d!62810 (= (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))) lambda!11283) lt!22057)))

(declare-fun b!95958 () Bool)

(assert (=> b!95958 (= e!52331 Nil!838)))

(declare-fun b!95959 () Bool)

(assert (=> b!95959 (= e!52331 ($colon$colon!31 (map!731 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))) lambda!11283) (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5)))))))))))

(assert (= (and d!62810 c!23657) b!95958))

(assert (= (and d!62810 (not c!23657)) b!95959))

(declare-fun b_lambda!19649 () Bool)

(assert (=> (not b_lambda!19649) (not b!95959)))

(declare-fun m!91677 () Bool)

(assert (=> d!62810 m!91677))

(assert (=> d!62810 m!91509))

(declare-fun m!91679 () Bool)

(assert (=> b!95959 m!91679))

(declare-fun m!91681 () Bool)

(assert (=> b!95959 m!91681))

(assert (=> b!95959 m!91679))

(assert (=> b!95959 m!91681))

(declare-fun m!91683 () Bool)

(assert (=> b!95959 m!91683))

(assert (=> b!95760 d!62810))

(assert (=> b!95707 d!61914))

(declare-fun b!95960 () Bool)

(declare-fun e!52335 () Bool)

(declare-fun lt!22059 () List!896)

(assert (=> b!95960 (= e!52335 (forall!87 lt!22059 lambda!11311))))

(declare-fun b!95961 () Bool)

(declare-fun e!52332 () List!896)

(assert (=> b!95961 (= e!52332 Nil!836)))

(declare-fun b!95962 () Bool)

(declare-fun res!49713 () Bool)

(assert (=> b!95962 (=> (not res!49713) (not e!52335))))

(assert (=> b!95962 (= res!49713 (subset (content!207 lt!22059) (content!207 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(declare-fun b!95963 () Bool)

(declare-fun e!52333 () List!896)

(declare-fun lt!22058 () List!896)

(assert (=> b!95963 (= e!52333 lt!22058)))

(declare-fun d!62812 () Bool)

(assert (=> d!62812 e!52335))

(declare-fun res!49715 () Bool)

(assert (=> d!62812 (=> (not res!49715) (not e!52335))))

(assert (=> d!62812 (= res!49715 (<= (size!1002 lt!22059) (size!1002 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (=> d!62812 (= lt!22059 e!52332)))

(declare-fun c!23659 () Bool)

(assert (=> d!62812 (= c!23659 (is-Nil!836 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(assert (=> d!62812 (= (filter!49 (t!56042 (t!56042 (t!56042 transfers!5))) lambda!11311) lt!22059)))

(declare-fun b!95964 () Bool)

(assert (=> b!95964 (= e!52332 e!52333)))

(declare-fun c!23658 () Bool)

(declare-fun e!52334 () Bool)

(assert (=> b!95964 (= c!23658 e!52334)))

(declare-fun res!49714 () Bool)

(assert (=> b!95964 (=> (not res!49714) (not e!52334))))

(assert (=> b!95964 (= res!49714 (is-Cons!834 (t!56042 (t!56042 (t!56042 transfers!5)))))))

(assert (=> b!95964 (= lt!22058 (filter!49 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))) lambda!11311))))

(declare-fun b!95965 () Bool)

(assert (=> b!95965 (= e!52333 (Cons!834 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))) lt!22058))))

(declare-fun b!95966 () Bool)

(assert (=> b!95966 (= e!52334 (dynLambda!1156 lambda!11311 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))))))

(assert (= (and b!95964 res!49714) b!95966))

(assert (= (and b!95964 c!23658) b!95965))

(assert (= (and b!95964 (not c!23658)) b!95963))

(assert (= (and d!62812 c!23659) b!95961))

(assert (= (and d!62812 (not c!23659)) b!95964))

(assert (= (and d!62812 res!49715) b!95962))

(assert (= (and b!95962 res!49713) b!95960))

(declare-fun b_lambda!19651 () Bool)

(assert (=> (not b_lambda!19651) (not b!95966)))

(declare-fun m!91685 () Bool)

(assert (=> b!95962 m!91685))

(assert (=> b!95962 m!90929))

(declare-fun m!91687 () Bool)

(assert (=> b!95960 m!91687))

(declare-fun m!91689 () Bool)

(assert (=> b!95966 m!91689))

(declare-fun m!91691 () Bool)

(assert (=> b!95964 m!91691))

(declare-fun m!91693 () Bool)

(assert (=> d!62812 m!91693))

(assert (=> d!62812 m!90693))

(assert (=> b!95728 d!62812))

(declare-fun b_lambda!19653 () Bool)

(assert (= b_lambda!19633 (or d!61928 b_lambda!19653)))

(declare-fun bs!43615 () Bool)

(declare-fun d!62814 () Bool)

(assert (= bs!43615 (and d!62814 d!61928)))

(assert (=> bs!43615 (= (dynLambda!1156 lambda!11311 (h!7729 (t!56042 (t!56042 lt!21882)))) (= (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 lt!21882))))) (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))))

(assert (=> b!95913 d!62814))

(declare-fun b_lambda!19655 () Bool)

(assert (= b_lambda!19635 (or d!61880 b_lambda!19655)))

(declare-fun bs!43616 () Bool)

(declare-fun d!62816 () Bool)

(assert (= bs!43616 (and d!62816 d!61880)))

(assert (=> bs!43616 (= (dynLambda!1156 lambda!11307 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (= (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))))

(assert (=> b!95921 d!62816))

(declare-fun b_lambda!19657 () Bool)

(assert (= b_lambda!19599 (or d!61782 b_lambda!19657)))

(declare-fun bs!43617 () Bool)

(declare-fun d!62818 () Bool)

(assert (= bs!43617 (and d!62818 d!61782)))

(assert (=> bs!43617 (= (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))))) (and (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 (dynLambda!1159 lambda!11285 true (h!7756 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282))))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Alice!93 2000) Nil!840) lambda!11282)))))))))))

(assert (=> b!95828 d!62818))

(declare-fun b_lambda!19659 () Bool)

(assert (= b_lambda!19589 (or d!61782 b_lambda!19659)))

(declare-fun bs!43618 () Bool)

(declare-fun d!62820 () Bool)

(assert (= bs!43618 (and d!62820 d!61782)))

(assert (=> bs!43618 (= (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))))) (+ (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5) lambda!11283)))))))))

(assert (=> b!95812 d!62820))

(declare-fun b_lambda!19661 () Bool)

(assert (= b_lambda!19613 (or b!95121 b_lambda!19661)))

(declare-fun bs!43619 () Bool)

(declare-fun d!62822 () Bool)

(assert (= bs!43619 (and d!62822 b!95121)))

(declare-fun bs!43620 () Bool)

(assert (= bs!43620 (and d!62822 b!95121 d!61956 b!95125)))

(declare-fun lambda!11318 () Int)

(assert (=> bs!43620 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))) (h!7730 (t!56043 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))))) (= lambda!11318 lambda!11312))))

(declare-fun bs!43621 () Bool)

(assert (= bs!43621 (and d!62822 b!95121 d!61972)))

(assert (=> bs!43621 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))))) (= lambda!11318 lambda!11313))))

(declare-fun bs!43622 () Bool)

(assert (= bs!43622 (and d!62822 b!95121 d!61928)))

(assert (=> bs!43622 (not (= lambda!11318 lambda!11311))))

(declare-fun bs!43623 () Bool)

(assert (= bs!43623 (and d!62822 b!95121 d!62142)))

(assert (=> bs!43623 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (= lambda!11318 lambda!11315))))

(declare-fun bs!43624 () Bool)

(assert (= bs!43624 (and d!62822 b!95121 d!61880)))

(assert (=> bs!43624 (not (= lambda!11318 lambda!11307))))

(declare-fun bs!43625 () Bool)

(assert (= bs!43625 (and d!62822 b!95121 d!62346)))

(assert (=> bs!43625 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (= lambda!11318 lambda!11316))))

(declare-fun bs!43626 () Bool)

(assert (= bs!43626 (and d!62822 b!95121 d!61846 b!95125)))

(assert (=> bs!43626 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))) (h!7730 (t!56043 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837))))) (= lambda!11318 lambda!11304))))

(declare-fun bs!43627 () Bool)

(assert (= bs!43627 (and d!62822 b!95121 d!62104)))

(assert (=> bs!43627 (not (= lambda!11318 lambda!11314))))

(declare-fun bs!43628 () Bool)

(assert (= bs!43628 (and d!62822 b!95121 d!62604)))

(assert (=> bs!43628 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))) (= lambda!11318 lambda!11317))))

(assert (=> bs!43619 (not (= lambda!11318 lambda!11273))))

(declare-fun bs!43629 () Bool)

(assert (= bs!43629 (and d!62822 b!95121 d!61904)))

(assert (=> bs!43629 (not (= lambda!11318 lambda!11308))))

(declare-fun bs!43630 () Bool)

(assert (= bs!43630 (and d!62822 b!95121 d!61814)))

(assert (=> bs!43630 (not (= lambda!11318 lambda!11302))))

(declare-fun bs!43631 () Bool)

(assert (= bs!43631 (and d!62822 b!95121 d!61844)))

(assert (=> bs!43631 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))) (= lambda!11318 lambda!11303))))

(declare-fun bs!43632 () Bool)

(assert (= bs!43632 (and d!62822 b!95121 d!61796)))

(assert (=> bs!43632 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))) (= lambda!11318 lambda!11299))))

(declare-fun bs!43633 () Bool)

(assert (= bs!43633 (and d!62822 b!95121 d!61788 b!95125)))

(assert (=> bs!43633 (= (= (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))) (h!7730 (Cons!835 (tuple2!523 Alice!93 Charlie!93) (Cons!835 (tuple2!523 Charlie!93 Alice!93) Nil!837)))) (= lambda!11318 lambda!11298))))

(assert (=> bs!43619 true))

(declare-fun res!49716 () Bool)

(declare-fun e!52336 () Bool)

(assert (=> bs!43619 (=> (not res!49716) (not e!52336))))

(declare-fun lt!22060 () Option!768)

(assert (=> bs!43619 (= res!49716 (isDefined!27 lt!22060))))

(assert (=> bs!43619 (= lt!22060 (map!733 (find!8 transfers!5 lambda!11318) lambda!11268))))

(declare-fun lt!22061 () Int)

(assert (=> bs!43619 (= lt!22061 (_2!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))

(assert (=> bs!43619 (= (dynLambda!1156 lambda!11273 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) e!52336)))

(declare-fun b!95970 () Bool)

(declare-fun e!52337 () Bool)

(assert (=> b!95970 (= e!52337 (> (get!1256 lt!22060) 0))))

(declare-fun b!95967 () Bool)

(declare-fun res!49719 () Bool)

(assert (=> b!95967 (=> (not res!49719) (not e!52336))))

(declare-fun e!52338 () Bool)

(assert (=> b!95967 (= res!49719 e!52338)))

(declare-fun res!49717 () Bool)

(assert (=> b!95967 (=> res!49717 e!52338)))

(assert (=> b!95967 (= res!49717 (= (get!1256 lt!22060) 0))))

(declare-fun b!95968 () Bool)

(assert (=> b!95968 (= e!52338 (= lt!22061 0))))

(declare-fun b!95969 () Bool)

(assert (=> b!95969 (= e!52336 e!52337)))

(declare-fun res!49718 () Bool)

(assert (=> b!95969 (=> res!49718 e!52337)))

(assert (=> b!95969 (= res!49718 (> lt!22061 0))))

(assert (= (and bs!43619 res!49716) b!95967))

(assert (= (and b!95967 (not res!49717)) b!95968))

(assert (= (and b!95967 res!49719) b!95969))

(assert (= (and b!95969 (not res!49718)) b!95970))

(declare-fun m!91695 () Bool)

(assert (=> bs!43619 m!91695))

(declare-fun m!91697 () Bool)

(assert (=> bs!43619 m!91697))

(assert (=> bs!43619 m!91697))

(declare-fun m!91699 () Bool)

(assert (=> bs!43619 m!91699))

(declare-fun m!91701 () Bool)

(assert (=> b!95970 m!91701))

(assert (=> b!95967 m!91701))

(assert (=> b!95865 d!62822))

(declare-fun b_lambda!19663 () Bool)

(assert (= b_lambda!19591 (or d!61880 b_lambda!19663)))

(declare-fun bs!43634 () Bool)

(declare-fun d!62824 () Bool)

(assert (= bs!43634 (and d!62824 d!61880)))

(assert (=> bs!43634 (= (dynLambda!1156 lambda!11307 (h!7729 lt!21962)) (= (_1!300 (_1!301 (h!7729 lt!21962))) (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))))

(assert (=> b!95813 d!62824))

(declare-fun b_lambda!19665 () Bool)

(assert (= b_lambda!19621 (or bs!43360 b_lambda!19665)))

(declare-fun bs!43635 () Bool)

(declare-fun d!62826 () Bool)

(assert (= bs!43635 (and d!62826 d!61796 b!95121)))

(assert (=> bs!43635 (= (dynLambda!1156 lambda!11299 (v!3224 lt!22039)) (= (_1!301 (v!3224 lt!22039)) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))))))

(assert (=> b!95893 d!62826))

(declare-fun b_lambda!19667 () Bool)

(assert (= b_lambda!19609 (or d!61904 b_lambda!19667)))

(declare-fun bs!43636 () Bool)

(declare-fun d!62828 () Bool)

(assert (= bs!43636 (and d!62828 d!61904)))

(assert (=> bs!43636 (= (dynLambda!1156 lambda!11308 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (not (dynLambda!1156 lambda!11304 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))))))

(declare-fun b_lambda!19731 () Bool)

(assert (=> (not b_lambda!19731) (not bs!43636)))

(declare-fun m!91703 () Bool)

(assert (=> bs!43636 m!91703))

(assert (=> b!95857 d!62828))

(declare-fun b_lambda!19669 () Bool)

(assert (= b_lambda!19623 (or bs!43360 b_lambda!19669)))

(declare-fun bs!43637 () Bool)

(declare-fun d!62830 () Bool)

(assert (= bs!43637 (and d!62830 d!61796 b!95121)))

(assert (=> bs!43637 (= (dynLambda!1156 lambda!11299 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (= (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (tuple2!523 (_2!300 (_1!301 (h!7729 transfers!5))) (_1!300 (_1!301 (h!7729 transfers!5))))))))

(assert (=> b!95895 d!62830))

(declare-fun b_lambda!19671 () Bool)

(assert (= b_lambda!19641 (or bs!43588 b_lambda!19671)))

(declare-fun bs!43638 () Bool)

(declare-fun d!62832 () Bool)

(assert (= bs!43638 (and d!62832 d!62604 b!95121)))

(assert (=> bs!43638 (= (dynLambda!1156 lambda!11317 (h!7729 transfers!5)) (= (_1!301 (h!7729 transfers!5)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))))

(assert (=> b!95928 d!62832))

(declare-fun b_lambda!19673 () Bool)

(assert (= b_lambda!19587 (or bs!43434 b_lambda!19673)))

(declare-fun bs!43639 () Bool)

(declare-fun d!62834 () Bool)

(assert (= bs!43639 (and d!62834 d!61972 b!95121)))

(assert (=> bs!43639 (= (dynLambda!1156 lambda!11313 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (= (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))))))))

(assert (=> b!95791 d!62834))

(declare-fun b_lambda!19675 () Bool)

(assert (= b_lambda!19603 (or bs!43369 b_lambda!19675)))

(declare-fun bs!43640 () Bool)

(declare-fun d!62836 () Bool)

(assert (= bs!43640 (and d!62836 d!61844 b!95121)))

(assert (=> bs!43640 (= (dynLambda!1156 lambda!11303 (v!3224 lt!22020)) (= (_1!301 (v!3224 lt!22020)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))))))

(assert (=> b!95833 d!62836))

(declare-fun b_lambda!19677 () Bool)

(assert (= b_lambda!19627 (or d!61880 b_lambda!19677)))

(declare-fun bs!43641 () Bool)

(declare-fun d!62838 () Bool)

(assert (= bs!43641 (and d!62838 d!61880)))

(assert (=> bs!43641 (= (dynLambda!1156 lambda!11307 (h!7729 (t!56042 (t!56042 lt!21887)))) (= (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 lt!21887))))) (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))))

(assert (=> b!95907 d!62838))

(declare-fun b_lambda!19679 () Bool)

(assert (= b_lambda!19617 (or start!15478 b_lambda!19679)))

(declare-fun bs!43642 () Bool)

(declare-fun d!62840 () Bool)

(assert (= bs!43642 (and d!62840 start!15478)))

(assert (=> bs!43642 (= (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))))) (+ (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 (dynLambda!1157 lambda!11269 0 (h!7731 (map!731 transfers!5 lambda!11268))) (h!7731 (t!56044 (map!731 transfers!5 lambda!11268)))) (h!7731 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268)))))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 transfers!5 lambda!11268))))))))))))

(assert (=> b!95880 d!62840))

(declare-fun b_lambda!19681 () Bool)

(assert (= b_lambda!19607 (or d!62104 b_lambda!19681)))

(declare-fun bs!43643 () Bool)

(declare-fun d!62842 () Bool)

(assert (= bs!43643 (and d!62842 d!62104)))

(assert (=> bs!43643 (= (dynLambda!1156 lambda!11314 (h!7729 (t!56042 (t!56042 transfers!5)))) (not (dynLambda!1156 lambda!11312 (h!7729 (t!56042 (t!56042 transfers!5))))))))

(declare-fun b_lambda!19733 () Bool)

(assert (=> (not b_lambda!19733) (not bs!43643)))

(declare-fun m!91705 () Bool)

(assert (=> bs!43643 m!91705))

(assert (=> b!95841 d!62842))

(declare-fun b_lambda!19683 () Bool)

(assert (= b_lambda!19595 (or b!95120 b_lambda!19683)))

(declare-fun bs!43644 () Bool)

(declare-fun d!62844 () Bool)

(assert (= bs!43644 (and d!62844 b!95120)))

(assert (=> bs!43644 (= (dynLambda!1155 lambda!11271 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))

(assert (=> b!95824 d!62844))

(declare-fun b_lambda!19685 () Bool)

(assert (= b_lambda!19651 (or d!61928 b_lambda!19685)))

(declare-fun bs!43645 () Bool)

(declare-fun d!62846 () Bool)

(assert (= bs!43645 (and d!62846 d!61928)))

(assert (=> bs!43645 (= (dynLambda!1156 lambda!11311 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5))))) (= (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))))

(assert (=> b!95966 d!62846))

(declare-fun b_lambda!19687 () Bool)

(assert (= b_lambda!19577 (or bs!43480 b_lambda!19687)))

(declare-fun bs!43646 () Bool)

(declare-fun d!62848 () Bool)

(assert (= bs!43646 (and d!62848 d!62142 b!95121)))

(assert (=> bs!43646 (= (dynLambda!1156 lambda!11315 (v!3224 lt!22005)) (= (_1!301 (v!3224 lt!22005)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))

(assert (=> b!95777 d!62848))

(declare-fun b_lambda!19689 () Bool)

(assert (= b_lambda!19575 (or d!61782 b_lambda!19689)))

(declare-fun bs!43647 () Bool)

(declare-fun d!62850 () Bool)

(assert (= bs!43647 (and d!62850 d!61782)))

(assert (=> bs!43647 (= (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))))) (_2!301 (h!7729 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Alice!93 2000) Nil!840)))) transfers!5)))))))))

(assert (=> b!95772 d!62850))

(declare-fun b_lambda!19691 () Bool)

(assert (= b_lambda!19611 (or d!61880 b_lambda!19691)))

(declare-fun bs!43648 () Bool)

(declare-fun d!62852 () Bool)

(assert (= bs!43648 (and d!62852 d!61880)))

(assert (=> bs!43648 (= (dynLambda!1156 lambda!11307 (h!7729 (t!56042 lt!21917))) (= (_1!300 (_1!301 (h!7729 (t!56042 lt!21917)))) (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840)))))))

(assert (=> b!95859 d!62852))

(declare-fun b_lambda!19693 () Bool)

(assert (= b_lambda!19581 (or d!61782 b_lambda!19693)))

(declare-fun bs!43649 () Bool)

(declare-fun d!62854 () Bool)

(assert (= bs!43649 (and d!62854 d!61782)))

(assert (=> bs!43649 (= (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))))) (+ (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 (dynLambda!1157 lambda!11284 0 (h!7731 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))) (h!7731 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))) (h!7731 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5) lambda!11283))))))))))

(assert (=> b!95786 d!62854))

(declare-fun b_lambda!19695 () Bool)

(assert (= b_lambda!19639 (or bs!43588 b_lambda!19695)))

(declare-fun bs!43650 () Bool)

(declare-fun d!62856 () Bool)

(assert (= bs!43650 (and d!62856 d!62604 b!95121)))

(assert (=> bs!43650 (= (dynLambda!1156 lambda!11317 (v!3224 lt!22045)) (= (_1!301 (v!3224 lt!22045)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))))

(assert (=> b!95926 d!62856))

(declare-fun b_lambda!19697 () Bool)

(assert (= b_lambda!19619 (or start!15478 b_lambda!19697)))

(declare-fun bs!43651 () Bool)

(declare-fun d!62858 () Bool)

(assert (= bs!43651 (and d!62858 start!15478)))

(assert (=> bs!43651 (= (dynLambda!1158 lambda!11268 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))) (_2!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))

(assert (=> b!95882 d!62858))

(declare-fun b_lambda!19699 () Bool)

(assert (= b_lambda!19601 (or d!61785 b_lambda!19699)))

(declare-fun bs!43652 () Bool)

(declare-fun d!62860 () Bool)

(assert (= bs!43652 (and d!62860 d!61785)))

(assert (=> bs!43652 (= (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))))) (+ (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294)))))) (h!7731 (t!56044 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5) lambda!11294))))))))))

(assert (=> b!95832 d!62860))

(declare-fun b_lambda!19701 () Bool)

(assert (= b_lambda!19645 (or bs!43525 b_lambda!19701)))

(declare-fun bs!43653 () Bool)

(declare-fun d!62862 () Bool)

(assert (= bs!43653 (and d!62862 d!62346 b!95121)))

(assert (=> bs!43653 (= (dynLambda!1156 lambda!11316 (v!3224 lt!22055)) (= (_1!301 (v!3224 lt!22055)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))))

(assert (=> b!95950 d!62862))

(declare-fun b_lambda!19703 () Bool)

(assert (= b_lambda!19597 (or b!95120 b_lambda!19703)))

(declare-fun bs!43654 () Bool)

(declare-fun d!62864 () Bool)

(assert (= bs!43654 (and d!62864 b!95120)))

(assert (=> bs!43654 (= (dynLambda!1154 lambda!11272 (h!7730 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))))))) (not (= (_1!300 (h!7730 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))))))) (_2!300 (h!7730 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (t!56043 (map!730 transfers!5 lambda!11271))))))))))))))

(assert (=> b!95825 d!62864))

(declare-fun b_lambda!19705 () Bool)

(assert (= b_lambda!19625 (or d!61928 b_lambda!19705)))

(declare-fun bs!43655 () Bool)

(declare-fun d!62866 () Bool)

(assert (= bs!43655 (and d!62866 d!61928)))

(assert (=> bs!43655 (= (dynLambda!1156 lambda!11311 (h!7729 (t!56042 lt!21925))) (= (_2!300 (_1!301 (h!7729 (t!56042 lt!21925)))) (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))))

(assert (=> b!95905 d!62866))

(declare-fun b_lambda!19707 () Bool)

(assert (= b_lambda!19629 (or d!61814 b_lambda!19707)))

(declare-fun bs!43656 () Bool)

(declare-fun d!62868 () Bool)

(assert (= bs!43656 (and d!62868 d!61814)))

(assert (=> bs!43656 (= (dynLambda!1156 lambda!11302 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) (not (dynLambda!1156 lambda!11298 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))

(declare-fun b_lambda!19735 () Bool)

(assert (=> (not b_lambda!19735) (not bs!43656)))

(declare-fun m!91707 () Bool)

(assert (=> bs!43656 m!91707))

(assert (=> b!95909 d!62868))

(declare-fun b_lambda!19709 () Bool)

(assert (= b_lambda!19593 (or d!61928 b_lambda!19709)))

(declare-fun bs!43657 () Bool)

(declare-fun d!62870 () Bool)

(assert (= bs!43657 (and d!62870 d!61928)))

(assert (=> bs!43657 (= (dynLambda!1156 lambda!11311 (h!7729 lt!21988)) (= (_2!300 (_1!301 (h!7729 lt!21988))) (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))))))

(assert (=> b!95815 d!62870))

(declare-fun b_lambda!19711 () Bool)

(assert (= b_lambda!19649 (or d!61782 b_lambda!19711)))

(declare-fun bs!43658 () Bool)

(declare-fun d!62872 () Bool)

(assert (= bs!43658 (and d!62872 d!61782)))

(assert (=> bs!43658 (= (dynLambda!1158 lambda!11283 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))) (_2!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (from!4 (who!3503 (h!7757 (Cons!838 (S!138 Alice!93 2000) Nil!840))) transfers!5))))))))))

(assert (=> b!95959 d!62872))

(declare-fun b_lambda!19713 () Bool)

(assert (= b_lambda!19583 (or d!61785 b_lambda!19713)))

(declare-fun bs!43659 () Bool)

(declare-fun d!62874 () Bool)

(assert (= bs!43659 (and d!62874 d!61785)))

(assert (=> bs!43659 (= (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))))) (+ (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 (dynLambda!1157 lambda!11295 0 (h!7731 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))) (h!7731 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))) (h!7731 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294))))) (h!7731 (t!56044 (t!56044 (t!56044 (map!731 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5) lambda!11294)))))))))

(assert (=> b!95788 d!62874))

(declare-fun b_lambda!19715 () Bool)

(assert (= b_lambda!19647 (or bs!43525 b_lambda!19715)))

(declare-fun bs!43660 () Bool)

(declare-fun d!62876 () Bool)

(assert (= bs!43660 (and d!62876 d!62346 b!95121)))

(assert (=> bs!43660 (= (dynLambda!1156 lambda!11316 (h!7729 (t!56042 transfers!5))) (= (_1!301 (h!7729 (t!56042 transfers!5))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5))))))))))))

(assert (=> b!95952 d!62876))

(declare-fun b_lambda!19717 () Bool)

(assert (= b_lambda!19579 (or bs!43480 b_lambda!19717)))

(declare-fun bs!43661 () Bool)

(declare-fun d!62878 () Bool)

(assert (= bs!43661 (and d!62878 d!62142 b!95121)))

(assert (=> bs!43661 (= (dynLambda!1156 lambda!11315 (h!7729 (t!56042 (t!56042 transfers!5)))) (= (_1!301 (h!7729 (t!56042 (t!56042 transfers!5)))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 transfers!5)))))))))))

(assert (=> b!95779 d!62878))

(declare-fun b_lambda!19719 () Bool)

(assert (= b_lambda!19585 (or bs!43434 b_lambda!19719)))

(declare-fun bs!43662 () Bool)

(declare-fun d!62880 () Bool)

(assert (= bs!43662 (and d!62880 d!61972 b!95121)))

(assert (=> bs!43662 (= (dynLambda!1156 lambda!11313 (v!3224 lt!22007)) (= (_1!301 (v!3224 lt!22007)) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))) (_1!300 (_1!301 (h!7729 (t!56042 (t!56042 transfers!5))))))))))

(assert (=> b!95789 d!62880))

(declare-fun b_lambda!19721 () Bool)

(assert (= b_lambda!19631 (or d!61785 b_lambda!19721)))

(declare-fun bs!43663 () Bool)

(declare-fun d!62882 () Bool)

(assert (= bs!43663 (and d!62882 d!61785)))

(assert (=> bs!43663 (= (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))))) (and (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 (dynLambda!1159 lambda!11297 true (h!7756 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))) (h!7756 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))) (h!7756 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))) (h!7756 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296))))))) (h!7756 (t!56069 (t!56069 (t!56069 (t!56069 (t!56069 (map!732 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840) lambda!11296)))))))))))

(assert (=> b!95912 d!62882))

(declare-fun b_lambda!19723 () Bool)

(assert (= b_lambda!19643 (or d!61785 b_lambda!19723)))

(declare-fun bs!43664 () Bool)

(declare-fun d!62884 () Bool)

(assert (= bs!43664 (and d!62884 d!61785)))

(assert (=> bs!43664 (= (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))) (_2!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840))) transfers!5))))))))))

(assert (=> b!95937 d!62884))

(declare-fun b_lambda!19725 () Bool)

(assert (= b_lambda!19637 (or start!15478 b_lambda!19725)))

(declare-fun bs!43665 () Bool)

(declare-fun d!62886 () Bool)

(assert (= bs!43665 (and d!62886 start!15478)))

(assert (=> bs!43665 (= (dynLambda!1158 lambda!11268 (v!3224 (find!8 transfers!5 lambda!11317))) (_2!301 (v!3224 (find!8 transfers!5 lambda!11317))))))

(assert (=> b!95925 d!62886))

(declare-fun b_lambda!19727 () Bool)

(assert (= b_lambda!19615 (or d!61785 b_lambda!19727)))

(declare-fun bs!43666 () Bool)

(declare-fun d!62888 () Bool)

(assert (= bs!43666 (and d!62888 d!61785)))

(assert (=> bs!43666 (= (dynLambda!1158 lambda!11294 (h!7729 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))))) (_2!301 (h!7729 (t!56042 (t!56042 (t!56042 (to!4 (who!3503 (h!7757 (t!56070 (Cons!838 (S!138 Charlie!93 (- 2000)) Nil!840)))) transfers!5)))))))))

(assert (=> b!95878 d!62888))

(declare-fun b_lambda!19729 () Bool)

(assert (= b_lambda!19605 (or bs!43369 b_lambda!19729)))

(declare-fun bs!43667 () Bool)

(declare-fun d!62890 () Bool)

(assert (= bs!43667 (and d!62890 d!61844 b!95121)))

(assert (=> bs!43667 (= (dynLambda!1156 lambda!11303 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) (= (_1!301 (h!7729 (t!56042 (t!56042 (t!56042 (t!56042 transfers!5)))))) (tuple2!523 (_2!300 (_1!301 (h!7729 (t!56042 transfers!5)))) (_1!300 (_1!301 (h!7729 (t!56042 transfers!5)))))))))

(assert (=> b!95835 d!62890))

(push 1)

(assert (not b_lambda!19693))

(assert (not b!95870))

(assert (not b!95810))

(assert (not b_lambda!19271))

(assert (not b!95774))

(assert (not b_lambda!19237))

(assert (not b_lambda!19359))

(assert (not b!95951))

(assert (not b!95846))

(assert (not b_lambda!19513))

(assert (not b_lambda!19493))

(assert (not b!95939))

(assert (not b_lambda!19083))

(assert (not b!95814))

(assert (not b_lambda!19695))

(assert (not b!95943))

(assert (not b_lambda!19087))

(assert (not b_lambda!19151))

(assert (not b!95912))

(assert (not b_lambda!19555))

(assert (not b_lambda!19711))

(assert (not b_lambda!19227))

(assert (not b_lambda!19403))

(assert (not b!95772))

(assert (not b!95904))

(assert (not b!95856))

(assert (not b_lambda!19255))

(assert (not b_lambda!19723))

(assert (not b_lambda!19035))

(assert (not b_lambda!19523))

(assert (not b_lambda!19147))

(assert (not b_lambda!19357))

(assert (not b_lambda!19267))

(assert (not b!95798))

(assert (not b_lambda!19679))

(assert (not b_lambda!19573))

(assert (not d!62810))

(assert (not b_lambda!19363))

(assert (not b_lambda!19167))

(assert (not b_lambda!19521))

(assert (not b_lambda!19369))

(assert (not b_lambda!19515))

(assert (not b_lambda!19067))

(assert (not b!95796))

(assert (not b!95806))

(assert (not b!95792))

(assert (not b!95915))

(assert (not b_lambda!19373))

(assert (not b_lambda!19537))

(assert (not b_lambda!19659))

(assert (not b!95844))

(assert (not b_lambda!19251))

(assert (not b_lambda!19243))

(assert (not b!95816))

(assert (not b_lambda!19137))

(assert (not b_lambda!19381))

(assert (not b_lambda!19149))

(assert (not b_lambda!19721))

(assert (not b_lambda!19379))

(assert (not b_lambda!19275))

(assert (not b_lambda!19031))

(assert (not b_lambda!19157))

(assert (not b!95953))

(assert (not b_lambda!19421))

(assert (not b!95970))

(assert (not b_lambda!19505))

(assert (not b!95937))

(assert (not b!95818))

(assert (not b_lambda!19139))

(assert (not b_lambda!19351))

(assert (not b!95868))

(assert (not b_lambda!19499))

(assert (not b_lambda!19239))

(assert (not b!95808))

(assert (not b_lambda!19719))

(assert (not b_lambda!19691))

(assert (not b_lambda!19233))

(assert (not b_lambda!19365))

(assert (not b_lambda!19263))

(assert (not b_lambda!19071))

(assert (not b!95786))

(assert (not b_lambda!19277))

(assert (not d!62790))

(assert (not b!95960))

(assert (not b!95935))

(assert (not b!95864))

(assert (not b_lambda!19525))

(assert (not b_lambda!19509))

(assert (not b_lambda!19681))

(assert (not b_lambda!19727))

(assert (not d!62812))

(assert (not b_lambda!19551))

(assert (not b_lambda!19697))

(assert (not b!95890))

(assert (not b_lambda!19259))

(assert (not b_lambda!19507))

(assert (not b!95840))

(assert (not b_lambda!19253))

(assert (not b_lambda!19377))

(assert (not b_lambda!19541))

(assert (not b_lambda!19077))

(assert (not b_lambda!19497))

(assert (not b!95941))

(assert (not b_lambda!19735))

(assert (not b!95927))

(assert (not b_lambda!19283))

(assert (not b!95894))

(assert (not b_lambda!19081))

(assert (not b_lambda!19561))

(assert (not b_lambda!19393))

(assert (not b_lambda!19519))

(assert (not b!95959))

(assert (not b!95949))

(assert (not b!95967))

(assert (not b!95836))

(assert (not b_lambda!19663))

(assert (not b_lambda!19355))

(assert (not b_lambda!19273))

(assert (not b!95908))

(assert (not d!62628))

(assert (not b_lambda!19075))

(assert (not b_lambda!19029))

(assert (not b_lambda!19247))

(assert (not b_lambda!19713))

(assert (not b_lambda!19677))

(assert (not b!95896))

(assert (not b!95848))

(assert (not b_lambda!19559))

(assert (not b!95858))

(assert (not b_lambda!19657))

(assert (not b_lambda!19165))

(assert (not b_lambda!19653))

(assert (not b_lambda!19033))

(assert (not b_lambda!19511))

(assert (not b_lambda!19703))

(assert (not b_lambda!19717))

(assert (not b_lambda!19155))

(assert (not b_lambda!19671))

(assert (not b_lambda!19675))

(assert (not b!95828))

(assert (not b_lambda!19699))

(assert (not b_lambda!19257))

(assert (not b_lambda!19501))

(assert (not b_lambda!19241))

(assert (not b_lambda!19405))

(assert (not b_lambda!19569))

(assert (not b_lambda!19135))

(assert (not b_lambda!19069))

(assert (not b_lambda!19725))

(assert (not b_lambda!19163))

(assert (not b!95917))

(assert (not b_lambda!19349))

(assert (not b!95910))

(assert (not b_lambda!19065))

(assert (not b_lambda!19161))

(assert (not b_lambda!19261))

(assert (not b_lambda!19169))

(assert (not b_lambda!19387))

(assert (not b!95888))

(assert (not b_lambda!19701))

(assert (not b_lambda!19027))

(assert (not b_lambda!19371))

(assert (not b!95850))

(assert (not b!95947))

(assert (not b_lambda!19571))

(assert (not b_lambda!19553))

(assert (not b_lambda!19707))

(assert (not b_lambda!19153))

(assert (not b!95900))

(assert (not b_lambda!19159))

(assert (not b!95824))

(assert (not b!95788))

(assert (not b_lambda!19503))

(assert (not b!95964))

(assert (not b!95802))

(assert (not b!95933))

(assert (not b!95854))

(assert (not b!95852))

(assert (not b_lambda!19545))

(assert (not b!95784))

(assert (not b_lambda!19397))

(assert (not b!95832))

(assert (not b_lambda!19527))

(assert (not b_lambda!19285))

(assert (not b!95872))

(assert (not b!95822))

(assert (not b_lambda!19395))

(assert (not b!95820))

(assert (not b_lambda!19683))

(assert (not b!95776))

(assert (not b!95876))

(assert (not b_lambda!19361))

(assert (not b!95860))

(assert (not d!62676))

(assert (not b_lambda!19673))

(assert (not b!95878))

(assert (not b_lambda!19389))

(assert (not b_lambda!19689))

(assert (not b!95882))

(assert (not b_lambda!19145))

(assert (not b_lambda!19535))

(assert (not b_lambda!19173))

(assert (not b_lambda!19089))

(assert (not bs!43619))

(assert (not b!95874))

(assert (not b!95957))

(assert (not b_lambda!19529))

(assert (not b!95800))

(assert (not b!95862))

(assert (not b_lambda!19409))

(assert (not d!62740))

(assert (not b!95914))

(assert (not b!95919))

(assert (not d!62688))

(assert (not b_lambda!19665))

(assert (not b_lambda!19419))

(assert (not b_lambda!19383))

(assert (not b_lambda!19269))

(assert (not b!95790))

(assert (not b_lambda!19685))

(assert (not b!95962))

(assert (not b_lambda!19385))

(assert (not b!95778))

(assert (not b_lambda!19407))

(assert (not b_lambda!19667))

(assert (not b_lambda!19557))

(assert (not b!95866))

(assert (not b_lambda!19245))

(assert (not b_lambda!19399))

(assert (not b_lambda!19543))

(assert (not b_lambda!19375))

(assert (not b!95880))

(assert (not b_lambda!19547))

(assert (not b!95884))

(assert (not b_lambda!19235))

(assert (not b_lambda!19655))

(assert (not b_lambda!19143))

(assert (not b_lambda!19687))

(assert (not b_lambda!19733))

(assert (not d!62686))

(assert (not b!95892))

(assert (not b_lambda!19037))

(assert (not b!95780))

(assert (not b_lambda!19669))

(assert (not b!95945))

(assert (not b_lambda!19715))

(assert (not b!95923))

(assert (not b!95906))

(assert (not d!62734))

(assert (not b!95826))

(assert (not b_lambda!19661))

(assert (not b_lambda!19085))

(assert (not b_lambda!19709))

(assert (not b_lambda!19079))

(assert (not b_lambda!19517))

(assert (not b_lambda!19131))

(assert (not b_lambda!19549))

(assert (not b_lambda!19417))

(assert (not b!95886))

(assert (not b_lambda!19231))

(assert (not b_lambda!19705))

(assert (not b!95902))

(assert (not b_lambda!19533))

(assert (not b_lambda!19531))

(assert (not b!95842))

(assert (not b_lambda!19729))

(assert (not b_lambda!19353))

(assert (not b!95812))

(assert (not b_lambda!19401))

(assert (not b_lambda!19265))

(assert (not b_lambda!19073))

(assert (not b_lambda!19133))

(assert (not d!62780))

(assert (not b_lambda!19229))

(assert (not b_lambda!19367))

(assert (not d!62778))

(assert (not b_lambda!19731))

(assert (not b_lambda!19495))

(assert (not b!95929))

(assert (not b!95804))

(assert (not b_lambda!19539))

(assert (not b_lambda!19141))

(assert (not b_lambda!19249))

(assert (not b!95834))

(assert (not d!62774))

(assert (not b_lambda!19391))

(assert (not b!95830))

(check-sat)

(get-model)

(pop 1)


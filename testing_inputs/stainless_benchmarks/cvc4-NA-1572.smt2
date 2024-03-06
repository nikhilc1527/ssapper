; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10806 () Bool)

(assert start!10806)

(declare-fun b!82507 () Bool)

(assert (=> b!82507 true))

(declare-fun bs!39981 () Bool)

(declare-fun b!82510 () Bool)

(assert (= bs!39981 (and b!82510 b!82507)))

(declare-fun lambda!9928 () Int)

(declare-fun lambda!9927 () Int)

(assert (=> bs!39981 (not (= lambda!9928 lambda!9927))))

(assert (=> b!82510 true))

(declare-fun bs!39982 () Bool)

(declare-fun b!82513 () Bool)

(assert (= bs!39982 (and b!82513 b!82507)))

(declare-fun lambda!9929 () Int)

(assert (=> bs!39982 (not (= lambda!9929 lambda!9927))))

(declare-fun bs!39983 () Bool)

(assert (= bs!39983 (and b!82513 b!82510)))

(assert (=> bs!39983 (not (= lambda!9929 lambda!9928))))

(assert (=> b!82513 true))

(declare-fun res!42288 () Bool)

(declare-fun e!44772 () Bool)

(assert (=> b!82507 (=> (not res!42288) (not e!44772))))

(declare-datatypes () ((List!670 (Cons!627 (h!997 Int) (t!47873 List!670)) (Nil!629))))

(declare-fun ls!96 () List!670)

(declare-fun less!5 () List!670)

(declare-fun filter!23 (List!670 Int) List!670)

(assert (=> b!82507 (= res!42288 (= less!5 (filter!23 (t!47873 ls!96) lambda!9927)))))

(declare-fun b!82508 () Bool)

(declare-fun res!42289 () Bool)

(assert (=> b!82508 (=> (not res!42289) (not e!44772))))

(declare-fun cons_filter_equal_sorted!0 (List!670 Int) Bool)

(assert (=> b!82508 (= res!42289 (cons_filter_equal_sorted!0 (t!47873 ls!96) (h!997 ls!96)))))

(declare-fun b!82509 () Bool)

(declare-fun res!42285 () Bool)

(assert (=> b!82509 (=> (not res!42285) (not e!44772))))

(declare-fun sort_preserves_forall!0 (List!670 Int) Bool)

(assert (=> b!82509 (= res!42285 (sort_preserves_forall!0 less!5 lambda!9927))))

(declare-fun res!42282 () Bool)

(assert (=> b!82510 (=> (not res!42282) (not e!44772))))

(declare-fun equal!10 () List!670)

(assert (=> b!82510 (= res!42282 (= equal!10 (Cons!627 (h!997 ls!96) (filter!23 (t!47873 ls!96) lambda!9928))))))

(declare-fun b!82511 () Bool)

(declare-fun res!42286 () Bool)

(assert (=> b!82511 (=> (not res!42286) (not e!44772))))

(declare-fun forall_last!0 (List!670 Int) Bool)

(declare-fun quickSort!0 (List!670) List!670)

(assert (=> b!82511 (= res!42286 (forall_last!0 (quickSort!0 less!5) lambda!9927))))

(declare-fun b!82512 () Bool)

(declare-fun res!42284 () Bool)

(assert (=> b!82512 (=> (not res!42284) (not e!44772))))

(declare-fun append_sorted!0 (List!670 List!670) Bool)

(assert (=> b!82512 (= res!42284 (append_sorted!0 (quickSort!0 less!5) equal!10))))

(declare-fun res!42283 () Bool)

(assert (=> start!10806 (=> (not res!42283) (not e!44772))))

(assert (=> start!10806 (= res!42283 (and (not (is-Nil!629 ls!96)) (not (is-Nil!629 (t!47873 ls!96)))))))

(assert (=> start!10806 e!44772))

(assert (=> start!10806 true))

(declare-fun res!42290 () Bool)

(assert (=> b!82513 (=> (not res!42290) (not e!44772))))

(declare-fun more!5 () List!670)

(assert (=> b!82513 (= res!42290 (= more!5 (filter!23 (t!47873 ls!96) lambda!9929)))))

(declare-fun b!82514 () Bool)

(declare-fun forall_lt_implies_le!0 (List!670 Int) Bool)

(assert (=> b!82514 (= e!44772 (not (forall_lt_implies_le!0 less!5 (h!997 ls!96))))))

(declare-fun b!82515 () Bool)

(declare-fun res!42287 () Bool)

(assert (=> b!82515 (=> (not res!42287) (not e!44772))))

(declare-fun sorted_lemma!0 (List!670) Bool)

(assert (=> b!82515 (= res!42287 (sorted_lemma!0 less!5))))

(assert (= (and start!10806 res!42283) b!82507))

(assert (= (and b!82507 res!42288) b!82510))

(assert (= (and b!82510 res!42282) b!82513))

(assert (= (and b!82513 res!42290) b!82515))

(assert (= (and b!82515 res!42287) b!82509))

(assert (= (and b!82509 res!42285) b!82511))

(assert (= (and b!82511 res!42286) b!82508))

(assert (= (and b!82508 res!42289) b!82512))

(assert (= (and b!82512 res!42284) b!82514))

(declare-fun m!78108 () Bool)

(assert (=> b!82514 m!78108))

(declare-fun m!78110 () Bool)

(assert (=> b!82515 m!78110))

(declare-fun m!78112 () Bool)

(assert (=> b!82507 m!78112))

(declare-fun m!78114 () Bool)

(assert (=> b!82512 m!78114))

(assert (=> b!82512 m!78114))

(declare-fun m!78116 () Bool)

(assert (=> b!82512 m!78116))

(declare-fun m!78118 () Bool)

(assert (=> b!82510 m!78118))

(assert (=> b!82511 m!78114))

(assert (=> b!82511 m!78114))

(declare-fun m!78120 () Bool)

(assert (=> b!82511 m!78120))

(declare-fun m!78122 () Bool)

(assert (=> b!82513 m!78122))

(declare-fun m!78124 () Bool)

(assert (=> b!82509 m!78124))

(declare-fun m!78126 () Bool)

(assert (=> b!82508 m!78126))

(push 1)

(assert (not b!82513))

(assert (not b!82510))

(assert (not b!82508))

(assert (not b!82514))

(assert (not b!82507))

(assert (not b!82509))

(assert (not b!82515))

(assert (not b!82511))

(assert (not b!82512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!39984 () Bool)

(declare-fun d!56333 () Bool)

(assert (= bs!39984 (and d!56333 b!82507)))

(declare-fun lambda!9936 () Int)

(assert (=> bs!39984 (= lambda!9936 lambda!9927)))

(declare-fun bs!39985 () Bool)

(assert (= bs!39985 (and d!56333 b!82510)))

(assert (=> bs!39985 (not (= lambda!9936 lambda!9928))))

(declare-fun bs!39986 () Bool)

(assert (= bs!39986 (and d!56333 b!82513)))

(assert (=> bs!39986 (not (= lambda!9936 lambda!9929))))

(assert (=> d!56333 true))

(declare-fun bs!39987 () Bool)

(declare-fun b!82522 () Bool)

(assert (= bs!39987 (and b!82522 b!82507)))

(declare-fun lambda!9937 () Int)

(assert (=> bs!39987 (not (= lambda!9937 lambda!9927))))

(declare-fun bs!39988 () Bool)

(assert (= bs!39988 (and b!82522 b!82510)))

(assert (=> bs!39988 (not (= lambda!9937 lambda!9928))))

(declare-fun bs!39989 () Bool)

(assert (= bs!39989 (and b!82522 b!82513)))

(assert (=> bs!39989 (not (= lambda!9937 lambda!9929))))

(declare-fun bs!39990 () Bool)

(assert (= bs!39990 (and b!82522 d!56333)))

(assert (=> bs!39990 (not (= lambda!9937 lambda!9936))))

(assert (=> b!82522 true))

(declare-fun bs!39991 () Bool)

(declare-fun b!82523 () Bool)

(assert (= bs!39991 (and b!82523 b!82507)))

(declare-fun lambda!9938 () Int)

(assert (=> bs!39991 (not (= lambda!9938 lambda!9927))))

(declare-fun bs!39992 () Bool)

(assert (= bs!39992 (and b!82523 b!82522)))

(assert (=> bs!39992 (= lambda!9938 lambda!9937)))

(declare-fun bs!39993 () Bool)

(assert (= bs!39993 (and b!82523 d!56333)))

(assert (=> bs!39993 (not (= lambda!9938 lambda!9936))))

(declare-fun bs!39994 () Bool)

(assert (= bs!39994 (and b!82523 b!82513)))

(assert (=> bs!39994 (not (= lambda!9938 lambda!9929))))

(declare-fun bs!39995 () Bool)

(assert (= bs!39995 (and b!82523 b!82510)))

(assert (=> bs!39995 (not (= lambda!9938 lambda!9928))))

(assert (=> b!82523 true))

(declare-fun e!44775 () Bool)

(assert (=> d!56333 e!44775))

(declare-fun c!20739 () Bool)

(assert (=> d!56333 (= c!20739 (is-Cons!627 less!5))))

(declare-fun forall!25 (List!670 Int) Bool)

(assert (=> d!56333 (forall!25 less!5 lambda!9936)))

(assert (=> d!56333 (= (forall_lt_implies_le!0 less!5 (h!997 ls!96)) true)))

(assert (=> b!82522 (= e!44775 (forall!25 less!5 lambda!9937))))

(declare-fun lt!19082 () Bool)

(assert (=> b!82522 (= lt!19082 (forall_lt_implies_le!0 (t!47873 less!5) (h!997 ls!96)))))

(assert (=> b!82523 (= e!44775 (forall!25 less!5 lambda!9938))))

(assert (= (and d!56333 c!20739) b!82522))

(assert (= (and d!56333 (not c!20739)) b!82523))

(declare-fun m!78128 () Bool)

(assert (=> d!56333 m!78128))

(declare-fun m!78130 () Bool)

(assert (=> b!82522 m!78130))

(declare-fun m!78132 () Bool)

(assert (=> b!82522 m!78132))

(declare-fun m!78134 () Bool)

(assert (=> b!82523 m!78134))

(assert (=> b!82514 d!56333))

(declare-fun bs!39996 () Bool)

(declare-fun b!82530 () Bool)

(assert (= bs!39996 (and b!82530 b!82507)))

(declare-fun lambda!9945 () Int)

(assert (=> bs!39996 (= (= (h!997 less!5) (h!997 ls!96)) (= lambda!9945 lambda!9927))))

(declare-fun bs!39997 () Bool)

(assert (= bs!39997 (and b!82530 b!82522)))

(assert (=> bs!39997 (not (= lambda!9945 lambda!9937))))

(declare-fun bs!39998 () Bool)

(assert (= bs!39998 (and b!82530 d!56333)))

(assert (=> bs!39998 (= (= (h!997 less!5) (h!997 ls!96)) (= lambda!9945 lambda!9936))))

(declare-fun bs!39999 () Bool)

(assert (= bs!39999 (and b!82530 b!82513)))

(assert (=> bs!39999 (not (= lambda!9945 lambda!9929))))

(declare-fun bs!40000 () Bool)

(assert (= bs!40000 (and b!82530 b!82523)))

(assert (=> bs!40000 (not (= lambda!9945 lambda!9938))))

(declare-fun bs!40001 () Bool)

(assert (= bs!40001 (and b!82530 b!82510)))

(assert (=> bs!40001 (not (= lambda!9945 lambda!9928))))

(assert (=> b!82530 true))

(declare-fun lambda!9946 () Int)

(assert (=> bs!39996 (not (= lambda!9946 lambda!9927))))

(assert (=> bs!39997 (not (= lambda!9946 lambda!9937))))

(assert (=> bs!39998 (not (= lambda!9946 lambda!9936))))

(assert (=> bs!39999 (not (= lambda!9946 lambda!9929))))

(assert (=> bs!40000 (not (= lambda!9946 lambda!9938))))

(assert (=> bs!40001 (= (= (h!997 less!5) (h!997 ls!96)) (= lambda!9946 lambda!9928))))

(assert (=> b!82530 (not (= lambda!9946 lambda!9945))))

(assert (=> b!82530 true))

(declare-fun lambda!9947 () Int)

(assert (=> bs!39996 (not (= lambda!9947 lambda!9927))))

(assert (=> bs!39997 (not (= lambda!9947 lambda!9937))))

(assert (=> bs!39998 (not (= lambda!9947 lambda!9936))))

(assert (=> bs!39999 (= (= (h!997 less!5) (h!997 ls!96)) (= lambda!9947 lambda!9929))))

(assert (=> bs!40000 (not (= lambda!9947 lambda!9938))))

(assert (=> bs!40001 (not (= lambda!9947 lambda!9928))))

(assert (=> b!82530 (not (= lambda!9947 lambda!9946))))

(assert (=> b!82530 (not (= lambda!9947 lambda!9945))))

(assert (=> b!82530 true))

(declare-fun d!56335 () Bool)

(declare-fun isSorted!1 (List!670) Bool)

(assert (=> d!56335 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!19092 () Bool)

(declare-fun e!44781 () Bool)

(assert (=> d!56335 (= lt!19092 e!44781)))

(declare-fun res!42298 () Bool)

(assert (=> d!56335 (=> res!42298 e!44781)))

(assert (=> d!56335 (= res!42298 (or (is-Nil!629 less!5) (and (is-Cons!627 less!5) (is-Nil!629 (t!47873 less!5)))))))

(assert (=> d!56335 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!44780 () Bool)

(assert (=> b!82530 (= e!44781 e!44780)))

(declare-fun res!42297 () Bool)

(assert (=> b!82530 (=> (not res!42297) (not e!44780))))

(declare-fun lt!19094 () List!670)

(declare-fun lt!19093 () List!670)

(assert (=> b!82530 (= res!42297 (append_sorted!0 (quickSort!0 lt!19094) lt!19093))))

(declare-fun lt!19091 () List!670)

(assert (=> b!82530 (= lt!19091 (filter!23 (t!47873 less!5) lambda!9947))))

(assert (=> b!82530 (= lt!19093 (Cons!627 (h!997 less!5) (filter!23 (t!47873 less!5) lambda!9946)))))

(assert (=> b!82530 (= lt!19094 (filter!23 (t!47873 less!5) lambda!9945))))

(declare-fun b!82531 () Bool)

(declare-fun ++!78 (List!670 List!670) List!670)

(assert (=> b!82531 (= e!44780 (append_sorted!0 (++!78 (quickSort!0 lt!19094) lt!19093) (quickSort!0 lt!19091)))))

(assert (= (and d!56335 (not res!42298)) b!82530))

(assert (= (and b!82530 res!42297) b!82531))

(assert (=> d!56335 m!78114))

(assert (=> d!56335 m!78114))

(declare-fun m!78136 () Bool)

(assert (=> d!56335 m!78136))

(declare-fun m!78138 () Bool)

(assert (=> b!82530 m!78138))

(declare-fun m!78140 () Bool)

(assert (=> b!82530 m!78140))

(declare-fun m!78142 () Bool)

(assert (=> b!82530 m!78142))

(assert (=> b!82530 m!78140))

(declare-fun m!78144 () Bool)

(assert (=> b!82530 m!78144))

(declare-fun m!78146 () Bool)

(assert (=> b!82530 m!78146))

(assert (=> b!82531 m!78140))

(assert (=> b!82531 m!78140))

(declare-fun m!78148 () Bool)

(assert (=> b!82531 m!78148))

(declare-fun m!78150 () Bool)

(assert (=> b!82531 m!78150))

(assert (=> b!82531 m!78148))

(assert (=> b!82531 m!78150))

(declare-fun m!78152 () Bool)

(assert (=> b!82531 m!78152))

(assert (=> b!82515 d!56335))

(declare-fun bs!40002 () Bool)

(declare-fun b!82544 () Bool)

(assert (= bs!40002 (and b!82544 b!82507)))

(declare-fun lambda!9960 () Int)

(assert (=> bs!40002 (= (= (h!997 less!5) (h!997 ls!96)) (= lambda!9960 lambda!9927))))

(declare-fun bs!40003 () Bool)

(assert (= bs!40003 (and b!82544 b!82522)))

(assert (=> bs!40003 (not (= lambda!9960 lambda!9937))))

(declare-fun bs!40004 () Bool)

(assert (= bs!40004 (and b!82544 d!56333)))

(assert (=> bs!40004 (= (= (h!997 less!5) (h!997 ls!96)) (= lambda!9960 lambda!9936))))

(declare-fun bs!40005 () Bool)

(assert (= bs!40005 (and b!82544 b!82513)))

(assert (=> bs!40005 (not (= lambda!9960 lambda!9929))))

(declare-fun bs!40006 () Bool)

(assert (= bs!40006 (and b!82544 b!82523)))

(assert (=> bs!40006 (not (= lambda!9960 lambda!9938))))

(declare-fun bs!40007 () Bool)

(assert (= bs!40007 (and b!82544 b!82510)))

(assert (=> bs!40007 (not (= lambda!9960 lambda!9928))))

(declare-fun bs!40008 () Bool)

(assert (= bs!40008 (and b!82544 b!82530)))

(assert (=> bs!40008 (not (= lambda!9960 lambda!9947))))

(assert (=> bs!40008 (not (= lambda!9960 lambda!9946))))

(assert (=> bs!40008 (= lambda!9960 lambda!9945)))

(assert (=> b!82544 true))

(declare-fun lambda!9961 () Int)

(assert (=> b!82544 (not (= lambda!9961 lambda!9960))))

(assert (=> bs!40002 (not (= lambda!9961 lambda!9927))))

(assert (=> bs!40003 (not (= lambda!9961 lambda!9937))))

(assert (=> bs!40004 (not (= lambda!9961 lambda!9936))))

(assert (=> bs!40005 (not (= lambda!9961 lambda!9929))))

(assert (=> bs!40006 (not (= lambda!9961 lambda!9938))))

(assert (=> bs!40007 (= (= (h!997 less!5) (h!997 ls!96)) (= lambda!9961 lambda!9928))))

(assert (=> bs!40008 (not (= lambda!9961 lambda!9947))))

(assert (=> bs!40008 (= lambda!9961 lambda!9946)))

(assert (=> bs!40008 (not (= lambda!9961 lambda!9945))))

(assert (=> b!82544 true))

(declare-fun lambda!9962 () Int)

(assert (=> b!82544 (not (= lambda!9962 lambda!9961))))

(assert (=> b!82544 (not (= lambda!9962 lambda!9960))))

(assert (=> bs!40002 (not (= lambda!9962 lambda!9927))))

(assert (=> bs!40003 (not (= lambda!9962 lambda!9937))))

(assert (=> bs!40004 (not (= lambda!9962 lambda!9936))))

(assert (=> bs!40005 (= (= (h!997 less!5) (h!997 ls!96)) (= lambda!9962 lambda!9929))))

(assert (=> bs!40006 (not (= lambda!9962 lambda!9938))))

(assert (=> bs!40007 (not (= lambda!9962 lambda!9928))))

(assert (=> bs!40008 (= lambda!9962 lambda!9947)))

(assert (=> bs!40008 (not (= lambda!9962 lambda!9946))))

(assert (=> bs!40008 (not (= lambda!9962 lambda!9945))))

(assert (=> b!82544 true))

(declare-fun b!82542 () Bool)

(declare-fun e!44796 () Bool)

(declare-fun filter_preserves_forall!0 (List!670 Int Int) Bool)

(assert (=> b!82542 (= e!44796 (filter_preserves_forall!0 (t!47873 less!5) lambda!9962 lambda!9927))))

(declare-fun lt!19111 () List!670)

(declare-fun e!44792 () Bool)

(declare-fun lt!19112 () List!670)

(declare-fun b!82543 () Bool)

(declare-fun lt!19109 () List!670)

(declare-fun append_preserves_forall!0 (List!670 List!670 Int) Bool)

(assert (=> b!82543 (= e!44792 (append_preserves_forall!0 (++!78 (quickSort!0 lt!19109) lt!19111) (quickSort!0 lt!19112) lambda!9927))))

(declare-fun d!56337 () Bool)

(assert (=> d!56337 (forall!25 (quickSort!0 less!5) lambda!9927)))

(declare-fun lt!19110 () Bool)

(declare-fun e!44795 () Bool)

(assert (=> d!56337 (= lt!19110 e!44795)))

(declare-fun res!42317 () Bool)

(assert (=> d!56337 (=> res!42317 e!44795)))

(assert (=> d!56337 (= res!42317 (or (is-Nil!629 less!5) (and (is-Cons!627 less!5) (is-Nil!629 (t!47873 less!5)))))))

(assert (=> d!56337 (forall!25 less!5 lambda!9927)))

(assert (=> d!56337 (= (sort_preserves_forall!0 less!5 lambda!9927) true)))

(assert (=> b!82544 (= e!44795 e!44792)))

(declare-fun res!42315 () Bool)

(assert (=> b!82544 (=> (not res!42315) (not e!44792))))

(assert (=> b!82544 (= res!42315 (append_preserves_forall!0 (quickSort!0 lt!19109) lt!19111 lambda!9927))))

(declare-fun lt!19107 () Bool)

(declare-fun e!44793 () Bool)

(assert (=> b!82544 (= lt!19107 e!44793)))

(declare-fun res!42314 () Bool)

(assert (=> b!82544 (=> (not res!42314) (not e!44793))))

(assert (=> b!82544 (= res!42314 (sort_preserves_forall!0 lt!19109 lambda!9927))))

(declare-fun lt!19108 () Bool)

(assert (=> b!82544 (= lt!19108 e!44796)))

(declare-fun res!42316 () Bool)

(assert (=> b!82544 (=> (not res!42316) (not e!44796))))

(declare-fun e!44794 () Bool)

(assert (=> b!82544 (= res!42316 e!44794)))

(declare-fun res!42318 () Bool)

(assert (=> b!82544 (=> (not res!42318) (not e!44794))))

(assert (=> b!82544 (= res!42318 (filter_preserves_forall!0 (t!47873 less!5) lambda!9960 lambda!9927))))

(assert (=> b!82544 (= lt!19112 (filter!23 (t!47873 less!5) lambda!9962))))

(assert (=> b!82544 (= lt!19111 (Cons!627 (h!997 less!5) (filter!23 (t!47873 less!5) lambda!9961)))))

(assert (=> b!82544 (= lt!19109 (filter!23 (t!47873 less!5) lambda!9960))))

(declare-fun b!82545 () Bool)

(assert (=> b!82545 (= e!44793 (sort_preserves_forall!0 lt!19112 lambda!9927))))

(declare-fun b!82546 () Bool)

(assert (=> b!82546 (= e!44794 (filter_preserves_forall!0 (t!47873 less!5) lambda!9961 lambda!9927))))

(assert (= (and d!56337 (not res!42317)) b!82544))

(assert (= (and b!82544 res!42318) b!82546))

(assert (= (and b!82544 res!42316) b!82542))

(assert (= (and b!82544 res!42314) b!82545))

(assert (= (and b!82544 res!42315) b!82543))

(declare-fun m!78154 () Bool)

(assert (=> b!82542 m!78154))

(declare-fun m!78156 () Bool)

(assert (=> b!82544 m!78156))

(declare-fun m!78158 () Bool)

(assert (=> b!82544 m!78158))

(declare-fun m!78160 () Bool)

(assert (=> b!82544 m!78160))

(declare-fun m!78162 () Bool)

(assert (=> b!82544 m!78162))

(declare-fun m!78164 () Bool)

(assert (=> b!82544 m!78164))

(assert (=> b!82544 m!78160))

(declare-fun m!78166 () Bool)

(assert (=> b!82544 m!78166))

(declare-fun m!78168 () Bool)

(assert (=> b!82544 m!78168))

(declare-fun m!78170 () Bool)

(assert (=> b!82546 m!78170))

(declare-fun m!78172 () Bool)

(assert (=> b!82545 m!78172))

(assert (=> b!82543 m!78160))

(assert (=> b!82543 m!78160))

(declare-fun m!78174 () Bool)

(assert (=> b!82543 m!78174))

(declare-fun m!78176 () Bool)

(assert (=> b!82543 m!78176))

(assert (=> b!82543 m!78174))

(assert (=> b!82543 m!78176))

(declare-fun m!78178 () Bool)

(assert (=> b!82543 m!78178))

(assert (=> d!56337 m!78114))

(assert (=> d!56337 m!78114))

(declare-fun m!78180 () Bool)

(assert (=> d!56337 m!78180))

(declare-fun m!78182 () Bool)

(assert (=> d!56337 m!78182))

(assert (=> b!82509 d!56337))

(declare-fun b!82561 () Bool)

(declare-fun e!44808 () Bool)

(declare-fun dynLambda!989 (Int Int) Bool)

(assert (=> b!82561 (= e!44808 (dynLambda!989 lambda!9928 (h!997 (t!47873 ls!96))))))

(declare-fun b!82562 () Bool)

(declare-fun e!44807 () List!670)

(declare-fun lt!19118 () List!670)

(assert (=> b!82562 (= e!44807 (Cons!627 (h!997 (t!47873 ls!96)) lt!19118))))

(declare-fun b!82563 () Bool)

(declare-fun e!44805 () Bool)

(declare-fun lt!19117 () List!670)

(assert (=> b!82563 (= e!44805 (forall!25 lt!19117 lambda!9928))))

(declare-fun b!82564 () Bool)

(declare-fun e!44806 () List!670)

(assert (=> b!82564 (= e!44806 Nil!629)))

(declare-fun b!82565 () Bool)

(assert (=> b!82565 (= e!44807 lt!19118)))

(declare-fun d!56339 () Bool)

(assert (=> d!56339 e!44805))

(declare-fun res!42329 () Bool)

(assert (=> d!56339 (=> (not res!42329) (not e!44805))))

(declare-fun size!658 (List!670) Int)

(assert (=> d!56339 (= res!42329 (<= (size!658 lt!19117) (size!658 (t!47873 ls!96))))))

(assert (=> d!56339 (= lt!19117 e!44806)))

(declare-fun c!20744 () Bool)

(assert (=> d!56339 (= c!20744 (is-Nil!629 (t!47873 ls!96)))))

(assert (=> d!56339 (= (filter!23 (t!47873 ls!96) lambda!9928) lt!19117)))

(declare-fun b!82566 () Bool)

(declare-fun res!42330 () Bool)

(assert (=> b!82566 (=> (not res!42330) (not e!44805))))

(declare-fun content!129 (List!670) (Set Int))

(assert (=> b!82566 (= res!42330 (subset (content!129 lt!19117) (content!129 (t!47873 ls!96))))))

(declare-fun b!82567 () Bool)

(assert (=> b!82567 (= e!44806 e!44807)))

(declare-fun c!20745 () Bool)

(assert (=> b!82567 (= c!20745 e!44808)))

(declare-fun res!42331 () Bool)

(assert (=> b!82567 (=> (not res!42331) (not e!44808))))

(assert (=> b!82567 (= res!42331 (is-Cons!627 (t!47873 ls!96)))))

(assert (=> b!82567 (= lt!19118 (filter!23 (t!47873 (t!47873 ls!96)) lambda!9928))))

(assert (= (and b!82567 res!42331) b!82561))

(assert (= (and b!82567 c!20745) b!82562))

(assert (= (and b!82567 (not c!20745)) b!82565))

(assert (= (and d!56339 c!20744) b!82564))

(assert (= (and d!56339 (not c!20744)) b!82567))

(assert (= (and d!56339 res!42329) b!82566))

(assert (= (and b!82566 res!42330) b!82563))

(declare-fun b_lambda!16351 () Bool)

(assert (=> (not b_lambda!16351) (not b!82561)))

(declare-fun m!78184 () Bool)

(assert (=> b!82567 m!78184))

(declare-fun m!78186 () Bool)

(assert (=> b!82563 m!78186))

(declare-fun m!78188 () Bool)

(assert (=> b!82561 m!78188))

(declare-fun m!78190 () Bool)

(assert (=> d!56339 m!78190))

(declare-fun m!78192 () Bool)

(assert (=> d!56339 m!78192))

(declare-fun m!78194 () Bool)

(assert (=> b!82566 m!78194))

(declare-fun m!78196 () Bool)

(assert (=> b!82566 m!78196))

(assert (=> b!82510 d!56339))

(declare-fun d!56341 () Bool)

(declare-fun e!44815 () Bool)

(assert (=> d!56341 e!44815))

(declare-fun c!20748 () Bool)

(assert (=> d!56341 (= c!20748 (is-Cons!627 (quickSort!0 less!5)))))

(assert (=> d!56341 (= (forall_last!0 (quickSort!0 less!5) lambda!9927) true)))

(declare-fun b!82580 () Bool)

(declare-fun res!42342 () Bool)

(declare-fun e!44816 () Bool)

(assert (=> b!82580 (=> res!42342 e!44816)))

(declare-fun isEmpty!680 (List!670) Bool)

(assert (=> b!82580 (= res!42342 (isEmpty!680 (quickSort!0 less!5)))))

(declare-fun b!82581 () Bool)

(declare-fun e!44817 () Bool)

(declare-fun last!20 (List!670) Int)

(assert (=> b!82581 (= e!44817 (dynLambda!989 lambda!9927 (last!20 (quickSort!0 less!5))))))

(declare-fun b!82582 () Bool)

(assert (=> b!82582 (= e!44815 e!44816)))

(declare-fun res!42341 () Bool)

(assert (=> b!82582 (=> res!42341 e!44816)))

(assert (=> b!82582 (= res!42341 (not (forall!25 (quickSort!0 less!5) lambda!9927)))))

(declare-fun lt!19121 () Bool)

(assert (=> b!82582 (= lt!19121 (forall_last!0 (t!47873 (quickSort!0 less!5)) lambda!9927))))

(declare-fun b!82583 () Bool)

(assert (=> b!82583 (= e!44816 (dynLambda!989 lambda!9927 (last!20 (quickSort!0 less!5))))))

(declare-fun b!82584 () Bool)

(declare-fun res!42343 () Bool)

(assert (=> b!82584 (=> res!42343 e!44817)))

(assert (=> b!82584 (= res!42343 (isEmpty!680 (quickSort!0 less!5)))))

(declare-fun b!82585 () Bool)

(assert (=> b!82585 (= e!44815 e!44817)))

(declare-fun res!42340 () Bool)

(assert (=> b!82585 (=> res!42340 e!44817)))

(assert (=> b!82585 (= res!42340 (not (forall!25 (quickSort!0 less!5) lambda!9927)))))

(assert (= (and b!82582 (not res!42341)) b!82580))

(assert (= (and b!82580 (not res!42342)) b!82583))

(assert (= (and b!82585 (not res!42340)) b!82584))

(assert (= (and b!82584 (not res!42343)) b!82581))

(assert (= (and d!56341 c!20748) b!82582))

(assert (= (and d!56341 (not c!20748)) b!82585))

(declare-fun b_lambda!16353 () Bool)

(assert (=> (not b_lambda!16353) (not b!82581)))

(declare-fun b_lambda!16355 () Bool)

(assert (=> (not b_lambda!16355) (not b!82583)))

(assert (=> b!82583 m!78114))

(declare-fun m!78198 () Bool)

(assert (=> b!82583 m!78198))

(assert (=> b!82583 m!78198))

(declare-fun m!78200 () Bool)

(assert (=> b!82583 m!78200))

(assert (=> b!82582 m!78114))

(assert (=> b!82582 m!78180))

(declare-fun m!78202 () Bool)

(assert (=> b!82582 m!78202))

(assert (=> b!82581 m!78114))

(assert (=> b!82581 m!78198))

(assert (=> b!82581 m!78198))

(assert (=> b!82581 m!78200))

(assert (=> b!82585 m!78114))

(assert (=> b!82585 m!78180))

(assert (=> b!82584 m!78114))

(declare-fun m!78204 () Bool)

(assert (=> b!82584 m!78204))

(assert (=> b!82580 m!78114))

(assert (=> b!82580 m!78204))

(assert (=> b!82511 d!56341))

(declare-fun bs!40009 () Bool)

(declare-fun b!82597 () Bool)

(assert (= bs!40009 (and b!82597 b!82544)))

(declare-fun lambda!9969 () Int)

(assert (=> bs!40009 (not (= lambda!9969 lambda!9962))))

(assert (=> bs!40009 (not (= lambda!9969 lambda!9961))))

(assert (=> bs!40009 (= lambda!9969 lambda!9960)))

(declare-fun bs!40010 () Bool)

(assert (= bs!40010 (and b!82597 b!82507)))

(assert (=> bs!40010 (= (= (h!997 less!5) (h!997 ls!96)) (= lambda!9969 lambda!9927))))

(declare-fun bs!40011 () Bool)

(assert (= bs!40011 (and b!82597 b!82522)))

(assert (=> bs!40011 (not (= lambda!9969 lambda!9937))))

(declare-fun bs!40012 () Bool)

(assert (= bs!40012 (and b!82597 d!56333)))

(assert (=> bs!40012 (= (= (h!997 less!5) (h!997 ls!96)) (= lambda!9969 lambda!9936))))

(declare-fun bs!40013 () Bool)

(assert (= bs!40013 (and b!82597 b!82513)))

(assert (=> bs!40013 (not (= lambda!9969 lambda!9929))))

(declare-fun bs!40014 () Bool)

(assert (= bs!40014 (and b!82597 b!82523)))

(assert (=> bs!40014 (not (= lambda!9969 lambda!9938))))

(declare-fun bs!40015 () Bool)

(assert (= bs!40015 (and b!82597 b!82510)))

(assert (=> bs!40015 (not (= lambda!9969 lambda!9928))))

(declare-fun bs!40016 () Bool)

(assert (= bs!40016 (and b!82597 b!82530)))

(assert (=> bs!40016 (not (= lambda!9969 lambda!9947))))

(assert (=> bs!40016 (not (= lambda!9969 lambda!9946))))

(assert (=> bs!40016 (= lambda!9969 lambda!9945)))

(assert (=> b!82597 true))

(declare-fun lambda!9970 () Int)

(assert (=> bs!40009 (not (= lambda!9970 lambda!9962))))

(assert (=> bs!40009 (= lambda!9970 lambda!9961)))

(assert (=> bs!40009 (not (= lambda!9970 lambda!9960))))

(assert (=> bs!40010 (not (= lambda!9970 lambda!9927))))

(assert (=> b!82597 (not (= lambda!9970 lambda!9969))))

(assert (=> bs!40011 (not (= lambda!9970 lambda!9937))))

(assert (=> bs!40012 (not (= lambda!9970 lambda!9936))))

(assert (=> bs!40013 (not (= lambda!9970 lambda!9929))))

(assert (=> bs!40014 (not (= lambda!9970 lambda!9938))))

(assert (=> bs!40015 (= (= (h!997 less!5) (h!997 ls!96)) (= lambda!9970 lambda!9928))))

(assert (=> bs!40016 (not (= lambda!9970 lambda!9947))))

(assert (=> bs!40016 (= lambda!9970 lambda!9946)))

(assert (=> bs!40016 (not (= lambda!9970 lambda!9945))))

(assert (=> b!82597 true))

(declare-fun lambda!9971 () Int)

(assert (=> bs!40009 (= lambda!9971 lambda!9962)))

(assert (=> bs!40009 (not (= lambda!9971 lambda!9961))))

(assert (=> bs!40009 (not (= lambda!9971 lambda!9960))))

(assert (=> bs!40010 (not (= lambda!9971 lambda!9927))))

(assert (=> b!82597 (not (= lambda!9971 lambda!9970))))

(assert (=> b!82597 (not (= lambda!9971 lambda!9969))))

(assert (=> bs!40011 (not (= lambda!9971 lambda!9937))))

(assert (=> bs!40012 (not (= lambda!9971 lambda!9936))))

(assert (=> bs!40013 (= (= (h!997 less!5) (h!997 ls!96)) (= lambda!9971 lambda!9929))))

(assert (=> bs!40014 (not (= lambda!9971 lambda!9938))))

(assert (=> bs!40015 (not (= lambda!9971 lambda!9928))))

(assert (=> bs!40016 (= lambda!9971 lambda!9947)))

(assert (=> bs!40016 (not (= lambda!9971 lambda!9946))))

(assert (=> bs!40016 (not (= lambda!9971 lambda!9945))))

(assert (=> b!82597 true))

(declare-fun b!82596 () Bool)

(declare-fun e!44823 () List!670)

(assert (=> b!82596 (= e!44823 less!5)))

(declare-fun b!82594 () Bool)

(declare-fun e!44822 () List!670)

(assert (=> b!82594 (= e!44822 Nil!629)))

(assert (=> b!82597 (= e!44823 (++!78 (++!78 (quickSort!0 (filter!23 (t!47873 less!5) lambda!9969)) (Cons!627 (h!997 less!5) (filter!23 (t!47873 less!5) lambda!9970))) (quickSort!0 (filter!23 (t!47873 less!5) lambda!9971))))))

(declare-fun b!82595 () Bool)

(assert (=> b!82595 (= e!44822 e!44823)))

(declare-fun c!20754 () Bool)

(assert (=> b!82595 (= c!20754 (and (is-Cons!627 less!5) (is-Nil!629 (t!47873 less!5))))))

(declare-fun d!56343 () Bool)

(declare-fun c!20753 () Bool)

(assert (=> d!56343 (= c!20753 (is-Nil!629 less!5))))

(assert (=> d!56343 (= (quickSort!0 less!5) e!44822)))

(assert (= (and b!82595 c!20754) b!82596))

(assert (= (and b!82595 (not c!20754)) b!82597))

(assert (= (and d!56343 c!20753) b!82594))

(assert (= (and d!56343 (not c!20753)) b!82595))

(declare-fun m!78206 () Bool)

(assert (=> b!82597 m!78206))

(declare-fun m!78208 () Bool)

(assert (=> b!82597 m!78208))

(assert (=> b!82597 m!78208))

(declare-fun m!78210 () Bool)

(assert (=> b!82597 m!78210))

(declare-fun m!78212 () Bool)

(assert (=> b!82597 m!78212))

(declare-fun m!78214 () Bool)

(assert (=> b!82597 m!78214))

(declare-fun m!78216 () Bool)

(assert (=> b!82597 m!78216))

(assert (=> b!82597 m!78206))

(assert (=> b!82597 m!78216))

(declare-fun m!78218 () Bool)

(assert (=> b!82597 m!78218))

(assert (=> b!82597 m!78214))

(assert (=> b!82597 m!78210))

(assert (=> b!82511 d!56343))

(declare-fun bs!40017 () Bool)

(declare-fun d!56345 () Bool)

(assert (= bs!40017 (and d!56345 b!82544)))

(declare-fun lambda!9974 () Int)

(assert (=> bs!40017 (not (= lambda!9974 lambda!9962))))

(assert (=> bs!40017 (= (= (h!997 ls!96) (h!997 less!5)) (= lambda!9974 lambda!9961))))

(assert (=> bs!40017 (not (= lambda!9974 lambda!9960))))

(declare-fun bs!40018 () Bool)

(assert (= bs!40018 (and d!56345 b!82507)))

(assert (=> bs!40018 (not (= lambda!9974 lambda!9927))))

(declare-fun bs!40019 () Bool)

(assert (= bs!40019 (and d!56345 b!82597)))

(assert (=> bs!40019 (not (= lambda!9974 lambda!9971))))

(assert (=> bs!40019 (= (= (h!997 ls!96) (h!997 less!5)) (= lambda!9974 lambda!9970))))

(assert (=> bs!40019 (not (= lambda!9974 lambda!9969))))

(declare-fun bs!40020 () Bool)

(assert (= bs!40020 (and d!56345 b!82522)))

(assert (=> bs!40020 (not (= lambda!9974 lambda!9937))))

(declare-fun bs!40021 () Bool)

(assert (= bs!40021 (and d!56345 d!56333)))

(assert (=> bs!40021 (not (= lambda!9974 lambda!9936))))

(declare-fun bs!40022 () Bool)

(assert (= bs!40022 (and d!56345 b!82513)))

(assert (=> bs!40022 (not (= lambda!9974 lambda!9929))))

(declare-fun bs!40023 () Bool)

(assert (= bs!40023 (and d!56345 b!82523)))

(assert (=> bs!40023 (not (= lambda!9974 lambda!9938))))

(declare-fun bs!40024 () Bool)

(assert (= bs!40024 (and d!56345 b!82510)))

(assert (=> bs!40024 (= lambda!9974 lambda!9928)))

(declare-fun bs!40025 () Bool)

(assert (= bs!40025 (and d!56345 b!82530)))

(assert (=> bs!40025 (not (= lambda!9974 lambda!9947))))

(assert (=> bs!40025 (= (= (h!997 ls!96) (h!997 less!5)) (= lambda!9974 lambda!9946))))

(assert (=> bs!40025 (not (= lambda!9974 lambda!9945))))

(assert (=> d!56345 true))

(assert (=> d!56345 (isSorted!1 (Cons!627 (h!997 ls!96) (filter!23 (t!47873 ls!96) lambda!9974)))))

(declare-datatypes () ((Unit!1184 (Unit!1185))))

(declare-fun lt!19124 () Unit!1184)

(declare-fun Unit!1186 () Unit!1184)

(assert (=> d!56345 (= lt!19124 Unit!1186)))

(declare-fun filter_equal_sorted!0 (List!670 Int) Bool)

(assert (=> d!56345 (filter_equal_sorted!0 (t!47873 ls!96) (h!997 ls!96))))

(assert (=> d!56345 (= (cons_filter_equal_sorted!0 (t!47873 ls!96) (h!997 ls!96)) true)))

(declare-fun bs!40026 () Bool)

(assert (= bs!40026 d!56345))

(declare-fun m!78220 () Bool)

(assert (=> bs!40026 m!78220))

(declare-fun m!78222 () Bool)

(assert (=> bs!40026 m!78222))

(declare-fun m!78224 () Bool)

(assert (=> bs!40026 m!78224))

(assert (=> b!82508 d!56345))

(declare-fun b!82610 () Bool)

(declare-fun res!42353 () Bool)

(declare-fun e!44832 () Bool)

(assert (=> b!82610 (=> (not res!42353) (not e!44832))))

(assert (=> b!82610 (= res!42353 (isSorted!1 equal!10))))

(declare-fun d!56347 () Bool)

(declare-fun e!44831 () Bool)

(assert (=> d!56347 e!44831))

(declare-fun c!20757 () Bool)

(assert (=> d!56347 (= c!20757 (is-Cons!627 (quickSort!0 less!5)))))

(assert (=> d!56347 e!44832))

(declare-fun res!42352 () Bool)

(assert (=> d!56347 (=> (not res!42352) (not e!44832))))

(assert (=> d!56347 (= res!42352 (isSorted!1 (quickSort!0 less!5)))))

(assert (=> d!56347 (= (append_sorted!0 (quickSort!0 less!5) equal!10) true)))

(declare-fun b!82611 () Bool)

(assert (=> b!82611 (= e!44831 (isSorted!1 (++!78 (quickSort!0 less!5) equal!10)))))

(declare-fun lt!19127 () Bool)

(assert (=> b!82611 (= lt!19127 (append_sorted!0 (t!47873 (quickSort!0 less!5)) equal!10))))

(declare-fun b!82612 () Bool)

(declare-fun e!44830 () Bool)

(assert (=> b!82612 (= e!44832 e!44830)))

(declare-fun res!42355 () Bool)

(assert (=> b!82612 (=> res!42355 e!44830)))

(assert (=> b!82612 (= res!42355 (isEmpty!680 (quickSort!0 less!5)))))

(declare-fun b!82613 () Bool)

(declare-fun res!42354 () Bool)

(assert (=> b!82613 (=> res!42354 e!44830)))

(assert (=> b!82613 (= res!42354 (isEmpty!680 equal!10))))

(declare-fun b!82614 () Bool)

(declare-fun head!1056 (List!670) Int)

(assert (=> b!82614 (= e!44830 (<= (last!20 (quickSort!0 less!5)) (head!1056 equal!10)))))

(declare-fun b!82615 () Bool)

(assert (=> b!82615 (= e!44831 (isSorted!1 (++!78 (quickSort!0 less!5) equal!10)))))

(assert (= (and d!56347 res!42352) b!82610))

(assert (= (and b!82610 res!42353) b!82612))

(assert (= (and b!82612 (not res!42355)) b!82613))

(assert (= (and b!82613 (not res!42354)) b!82614))

(assert (= (and d!56347 c!20757) b!82611))

(assert (= (and d!56347 (not c!20757)) b!82615))

(assert (=> b!82612 m!78114))

(assert (=> b!82612 m!78204))

(assert (=> b!82614 m!78114))

(assert (=> b!82614 m!78198))

(declare-fun m!78226 () Bool)

(assert (=> b!82614 m!78226))

(declare-fun m!78228 () Bool)

(assert (=> b!82613 m!78228))

(declare-fun m!78230 () Bool)

(assert (=> b!82610 m!78230))

(assert (=> d!56347 m!78114))

(assert (=> d!56347 m!78136))

(assert (=> b!82611 m!78114))

(declare-fun m!78232 () Bool)

(assert (=> b!82611 m!78232))

(assert (=> b!82611 m!78232))

(declare-fun m!78234 () Bool)

(assert (=> b!82611 m!78234))

(declare-fun m!78236 () Bool)

(assert (=> b!82611 m!78236))

(assert (=> b!82615 m!78114))

(assert (=> b!82615 m!78232))

(assert (=> b!82615 m!78232))

(assert (=> b!82615 m!78234))

(assert (=> b!82512 d!56347))

(assert (=> b!82512 d!56343))

(declare-fun b!82616 () Bool)

(declare-fun e!44836 () Bool)

(assert (=> b!82616 (= e!44836 (dynLambda!989 lambda!9927 (h!997 (t!47873 ls!96))))))

(declare-fun b!82617 () Bool)

(declare-fun e!44835 () List!670)

(declare-fun lt!19129 () List!670)

(assert (=> b!82617 (= e!44835 (Cons!627 (h!997 (t!47873 ls!96)) lt!19129))))

(declare-fun b!82618 () Bool)

(declare-fun e!44833 () Bool)

(declare-fun lt!19128 () List!670)

(assert (=> b!82618 (= e!44833 (forall!25 lt!19128 lambda!9927))))

(declare-fun b!82619 () Bool)

(declare-fun e!44834 () List!670)

(assert (=> b!82619 (= e!44834 Nil!629)))

(declare-fun b!82620 () Bool)

(assert (=> b!82620 (= e!44835 lt!19129)))

(declare-fun d!56349 () Bool)

(assert (=> d!56349 e!44833))

(declare-fun res!42356 () Bool)

(assert (=> d!56349 (=> (not res!42356) (not e!44833))))

(assert (=> d!56349 (= res!42356 (<= (size!658 lt!19128) (size!658 (t!47873 ls!96))))))

(assert (=> d!56349 (= lt!19128 e!44834)))

(declare-fun c!20758 () Bool)

(assert (=> d!56349 (= c!20758 (is-Nil!629 (t!47873 ls!96)))))

(assert (=> d!56349 (= (filter!23 (t!47873 ls!96) lambda!9927) lt!19128)))

(declare-fun b!82621 () Bool)

(declare-fun res!42357 () Bool)

(assert (=> b!82621 (=> (not res!42357) (not e!44833))))

(assert (=> b!82621 (= res!42357 (subset (content!129 lt!19128) (content!129 (t!47873 ls!96))))))

(declare-fun b!82622 () Bool)

(assert (=> b!82622 (= e!44834 e!44835)))

(declare-fun c!20759 () Bool)

(assert (=> b!82622 (= c!20759 e!44836)))

(declare-fun res!42358 () Bool)

(assert (=> b!82622 (=> (not res!42358) (not e!44836))))

(assert (=> b!82622 (= res!42358 (is-Cons!627 (t!47873 ls!96)))))

(assert (=> b!82622 (= lt!19129 (filter!23 (t!47873 (t!47873 ls!96)) lambda!9927))))

(assert (= (and b!82622 res!42358) b!82616))

(assert (= (and b!82622 c!20759) b!82617))

(assert (= (and b!82622 (not c!20759)) b!82620))

(assert (= (and d!56349 c!20758) b!82619))

(assert (= (and d!56349 (not c!20758)) b!82622))

(assert (= (and d!56349 res!42356) b!82621))

(assert (= (and b!82621 res!42357) b!82618))

(declare-fun b_lambda!16357 () Bool)

(assert (=> (not b_lambda!16357) (not b!82616)))

(declare-fun m!78238 () Bool)

(assert (=> b!82622 m!78238))

(declare-fun m!78240 () Bool)

(assert (=> b!82618 m!78240))

(declare-fun m!78242 () Bool)

(assert (=> b!82616 m!78242))

(declare-fun m!78244 () Bool)

(assert (=> d!56349 m!78244))

(assert (=> d!56349 m!78192))

(declare-fun m!78246 () Bool)

(assert (=> b!82621 m!78246))

(assert (=> b!82621 m!78196))

(assert (=> b!82507 d!56349))

(declare-fun b!82623 () Bool)

(declare-fun e!44840 () Bool)

(assert (=> b!82623 (= e!44840 (dynLambda!989 lambda!9929 (h!997 (t!47873 ls!96))))))

(declare-fun b!82624 () Bool)

(declare-fun e!44839 () List!670)

(declare-fun lt!19131 () List!670)

(assert (=> b!82624 (= e!44839 (Cons!627 (h!997 (t!47873 ls!96)) lt!19131))))

(declare-fun b!82625 () Bool)

(declare-fun e!44837 () Bool)

(declare-fun lt!19130 () List!670)

(assert (=> b!82625 (= e!44837 (forall!25 lt!19130 lambda!9929))))

(declare-fun b!82626 () Bool)

(declare-fun e!44838 () List!670)

(assert (=> b!82626 (= e!44838 Nil!629)))

(declare-fun b!82627 () Bool)

(assert (=> b!82627 (= e!44839 lt!19131)))

(declare-fun d!56351 () Bool)

(assert (=> d!56351 e!44837))

(declare-fun res!42359 () Bool)

(assert (=> d!56351 (=> (not res!42359) (not e!44837))))

(assert (=> d!56351 (= res!42359 (<= (size!658 lt!19130) (size!658 (t!47873 ls!96))))))

(assert (=> d!56351 (= lt!19130 e!44838)))

(declare-fun c!20760 () Bool)

(assert (=> d!56351 (= c!20760 (is-Nil!629 (t!47873 ls!96)))))

(assert (=> d!56351 (= (filter!23 (t!47873 ls!96) lambda!9929) lt!19130)))

(declare-fun b!82628 () Bool)

(declare-fun res!42360 () Bool)

(assert (=> b!82628 (=> (not res!42360) (not e!44837))))

(assert (=> b!82628 (= res!42360 (subset (content!129 lt!19130) (content!129 (t!47873 ls!96))))))

(declare-fun b!82629 () Bool)

(assert (=> b!82629 (= e!44838 e!44839)))

(declare-fun c!20761 () Bool)

(assert (=> b!82629 (= c!20761 e!44840)))

(declare-fun res!42361 () Bool)

(assert (=> b!82629 (=> (not res!42361) (not e!44840))))

(assert (=> b!82629 (= res!42361 (is-Cons!627 (t!47873 ls!96)))))

(assert (=> b!82629 (= lt!19131 (filter!23 (t!47873 (t!47873 ls!96)) lambda!9929))))

(assert (= (and b!82629 res!42361) b!82623))

(assert (= (and b!82629 c!20761) b!82624))

(assert (= (and b!82629 (not c!20761)) b!82627))

(assert (= (and d!56351 c!20760) b!82626))

(assert (= (and d!56351 (not c!20760)) b!82629))

(assert (= (and d!56351 res!42359) b!82628))

(assert (= (and b!82628 res!42360) b!82625))

(declare-fun b_lambda!16359 () Bool)

(assert (=> (not b_lambda!16359) (not b!82623)))

(declare-fun m!78248 () Bool)

(assert (=> b!82629 m!78248))

(declare-fun m!78250 () Bool)

(assert (=> b!82625 m!78250))

(declare-fun m!78252 () Bool)

(assert (=> b!82623 m!78252))

(declare-fun m!78254 () Bool)

(assert (=> d!56351 m!78254))

(assert (=> d!56351 m!78192))

(declare-fun m!78256 () Bool)

(assert (=> b!82628 m!78256))

(assert (=> b!82628 m!78196))

(assert (=> b!82513 d!56351))

(declare-fun b_lambda!16361 () Bool)

(assert (= b_lambda!16359 (or b!82513 b_lambda!16361)))

(declare-fun bs!40027 () Bool)

(declare-fun d!56353 () Bool)

(assert (= bs!40027 (and d!56353 b!82513)))

(assert (=> bs!40027 (= (dynLambda!989 lambda!9929 (h!997 (t!47873 ls!96))) (> (h!997 (t!47873 ls!96)) (h!997 ls!96)))))

(assert (=> b!82623 d!56353))

(declare-fun b_lambda!16363 () Bool)

(assert (= b_lambda!16353 (or b!82507 b_lambda!16363)))

(declare-fun bs!40028 () Bool)

(declare-fun d!56355 () Bool)

(assert (= bs!40028 (and d!56355 b!82507)))

(assert (=> bs!40028 (= (dynLambda!989 lambda!9927 (last!20 (quickSort!0 less!5))) (< (last!20 (quickSort!0 less!5)) (h!997 ls!96)))))

(assert (=> b!82581 d!56355))

(declare-fun b_lambda!16365 () Bool)

(assert (= b_lambda!16355 (or b!82507 b_lambda!16365)))

(assert (=> b!82583 d!56355))

(declare-fun b_lambda!16367 () Bool)

(assert (= b_lambda!16351 (or b!82510 b_lambda!16367)))

(declare-fun bs!40029 () Bool)

(declare-fun d!56357 () Bool)

(assert (= bs!40029 (and d!56357 b!82510)))

(assert (=> bs!40029 (= (dynLambda!989 lambda!9928 (h!997 (t!47873 ls!96))) (= (h!997 (t!47873 ls!96)) (h!997 ls!96)))))

(assert (=> b!82561 d!56357))

(declare-fun b_lambda!16369 () Bool)

(assert (= b_lambda!16357 (or b!82507 b_lambda!16369)))

(declare-fun bs!40030 () Bool)

(declare-fun d!56359 () Bool)

(assert (= bs!40030 (and d!56359 b!82507)))

(assert (=> bs!40030 (= (dynLambda!989 lambda!9927 (h!997 (t!47873 ls!96))) (< (h!997 (t!47873 ls!96)) (h!997 ls!96)))))

(assert (=> b!82616 d!56359))

(push 1)

(assert (not b!82583))

(assert (not b!82618))

(assert (not b!82523))

(assert (not b!82622))

(assert (not b!82545))

(assert (not b!82612))

(assert (not b!82610))

(assert (not b!82581))

(assert (not b_lambda!16361))

(assert (not d!56347))

(assert (not b!82542))

(assert (not b!82628))

(assert (not b!82611))

(assert (not b!82613))

(assert (not d!56337))

(assert (not b!82544))

(assert (not b!82580))

(assert (not b!82582))

(assert (not b!82621))

(assert (not b!82625))

(assert (not b!82567))

(assert (not b!82563))

(assert (not b!82522))

(assert (not d!56351))

(assert (not b!82543))

(assert (not b!82584))

(assert (not b!82530))

(assert (not b!82615))

(assert (not b!82531))

(assert (not b_lambda!16367))

(assert (not d!56345))

(assert (not d!56339))

(assert (not b_lambda!16363))

(assert (not b!82597))

(assert (not b!82566))

(assert (not b!82546))

(assert (not b!82614))

(assert (not b_lambda!16369))

(assert (not d!56335))

(assert (not b!82629))

(assert (not d!56333))

(assert (not b!82585))

(assert (not b_lambda!16365))

(assert (not d!56349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


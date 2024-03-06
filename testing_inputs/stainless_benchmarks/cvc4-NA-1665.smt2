; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11524 () Bool)

(assert start!11524)

(declare-fun b_free!7499 () Bool)

(declare-fun b_next!39809 () Bool)

(assert (=> start!11524 (= b_free!7499 (not b_next!39809))))

(declare-fun tp!17213 () Bool)

(declare-fun b_and!60001 () Bool)

(assert (=> start!11524 (= tp!17213 b_and!60001)))

(declare-fun b_free!7501 () Bool)

(declare-fun b_next!39811 () Bool)

(assert (=> start!11524 (= b_free!7501 (not b_next!39811))))

(declare-fun tp!17217 () Bool)

(declare-fun b_and!60003 () Bool)

(assert (=> start!11524 (= tp!17217 b_and!60003)))

(declare-fun b_free!7503 () Bool)

(declare-fun b_next!39813 () Bool)

(assert (=> start!11524 (= b_free!7503 (not b_next!39813))))

(declare-fun tp!17218 () Bool)

(declare-fun b_and!60005 () Bool)

(assert (=> start!11524 (= tp!17218 b_and!60005)))

(declare-fun b!88104 () Bool)

(assert (=> b!88104 true))

(declare-fun order!491 () Int)

(declare-fun lambda!10864 () Int)

(declare-fun key!514 () Int)

(declare-fun order!489 () Int)

(declare-fun dynLambda!1047 (Int Int) Int)

(declare-fun dynLambda!1048 (Int Int) Int)

(assert (=> b!88104 (< (dynLambda!1047 order!489 key!514) (dynLambda!1048 order!491 lambda!10864))))

(declare-fun b_next!39815 () Bool)

(declare-fun keyAnn!5 () Int)

(assert (=> start!11524 (= b_next!39811 (or (and b!88104 (= lambda!10864 keyAnn!5)) b_next!39815))))

(declare-fun b!88093 () Bool)

(declare-fun res!46075 () Bool)

(declare-fun e!47820 () Bool)

(assert (=> b!88093 (=> (not res!46075) (not e!47820))))

(declare-fun n!1722 () Int)

(declare-datatypes () ((T!5993 (T!5994 (val!189 Int)))))

(declare-datatypes () ((tuple2!402 (tuple2!403 (_1!236 T!5993) (_2!236 Int)))))

(declare-datatypes () ((List!729 (Cons!683 (h!1087 tuple2!402) (t!48652 List!729)) (Nil!685))))

(declare-fun lAnn!4 () List!729)

(assert (=> b!88093 (= res!46075 (= n!1722 (_2!236 (h!1087 lAnn!4))))))

(declare-fun b!88094 () Bool)

(declare-fun res!46082 () Bool)

(assert (=> b!88094 (=> (not res!46082) (not e!47820))))

(declare-datatypes () ((List!730 (Cons!684 (h!1088 T!5993) (t!48653 List!730)) (Nil!686))))

(declare-fun l!1571 () List!730)

(declare-fun xs!1094 () List!730)

(assert (=> b!88094 (= res!46082 (and (not (is-Nil!685 lAnn!4)) (= xs!1094 (t!48653 l!1571))))))

(declare-fun b!88095 () Bool)

(declare-fun res!46073 () Bool)

(assert (=> b!88095 (=> (not res!46073) (not e!47820))))

(declare-fun tlAnnSorted!2 () List!729)

(declare-fun sort!4 (List!729 Int) List!729)

(assert (=> b!88095 (= res!46073 (= tlAnnSorted!2 (sort!4 (t!48652 lAnn!4) keyAnn!5)))))

(declare-fun b!88096 () Bool)

(declare-fun e!47824 () Bool)

(declare-fun tp_is_empty!373 () Bool)

(declare-fun tp!17219 () Bool)

(assert (=> b!88096 (= e!47824 (and tp_is_empty!373 tp!17219))))

(declare-fun b!88097 () Bool)

(declare-fun e!47822 () Bool)

(declare-fun l!1590 () List!729)

(declare-fun n!1735 () Int)

(declare-fun l2AtLeast!3 (List!729 Int) Bool)

(assert (=> b!88097 (= e!47822 (not (l2AtLeast!3 l!1590 n!1735)))))

(declare-fun b!88098 () Bool)

(declare-fun res!46079 () Bool)

(assert (=> b!88098 (=> (not res!46079) (not e!47820))))

(declare-fun lAnnSorted!4 () List!729)

(assert (=> b!88098 (= res!46079 (= lAnnSorted!4 (sort!4 lAnn!4 keyAnn!5)))))

(declare-fun b!88099 () Bool)

(declare-fun e!47825 () Bool)

(declare-fun tp!17216 () Bool)

(assert (=> b!88099 (= e!47825 (and tp_is_empty!373 tp!17216))))

(declare-fun b!88100 () Bool)

(declare-fun res!46074 () Bool)

(assert (=> b!88100 (=> (not res!46074) (not e!47820))))

(assert (=> b!88100 (= res!46074 (l2AtLeast!3 tlAnnSorted!2 n!1722))))

(declare-fun b!88101 () Bool)

(declare-fun e!47823 () Bool)

(declare-fun tp!17214 () Bool)

(assert (=> b!88101 (= e!47823 (and tp_is_empty!373 tp!17214))))

(declare-fun b!88102 () Bool)

(declare-fun e!47821 () Bool)

(declare-fun tp!17212 () Bool)

(assert (=> b!88102 (= e!47821 (and tp_is_empty!373 tp!17212))))

(declare-fun b!88103 () Bool)

(declare-fun res!46078 () Bool)

(assert (=> b!88103 (=> (not res!46078) (not e!47820))))

(declare-fun t!48608 () T!5993)

(declare-fun key!523 () Int)

(assert (=> b!88103 (= res!46078 (and (= t!48608 (_1!236 (h!1087 lAnn!4))) (= n!1735 (_2!236 (h!1087 lAnn!4))) (= l!1590 tlAnnSorted!2) (= key!523 key!514)))))

(declare-fun res!46083 () Bool)

(assert (=> b!88104 (=> (not res!46083) (not e!47820))))

(assert (=> b!88104 (= res!46083 (= keyAnn!5 lambda!10864))))

(declare-fun res!46077 () Bool)

(assert (=> start!11524 (=> (not res!46077) (not e!47820))))

(declare-fun annotateList!3 (List!730 Int) List!729)

(assert (=> start!11524 (= res!46077 (= lAnn!4 (annotateList!3 l!1571 n!1722)))))

(assert (=> start!11524 e!47820))

(assert (=> start!11524 tp_is_empty!373))

(declare-fun e!47827 () Bool)

(assert (=> start!11524 e!47827))

(assert (=> start!11524 e!47821))

(assert (=> start!11524 tp!17213))

(assert (=> start!11524 e!47823))

(assert (=> start!11524 true))

(assert (=> start!11524 e!47824))

(assert (=> start!11524 tp!17217))

(assert (=> start!11524 e!47825))

(declare-fun e!47826 () Bool)

(assert (=> start!11524 e!47826))

(assert (=> start!11524 tp!17218))

(declare-fun b!88105 () Bool)

(declare-fun tp!17211 () Bool)

(assert (=> b!88105 (= e!47826 (and tp_is_empty!373 tp!17211))))

(declare-fun b!88106 () Bool)

(declare-fun res!46081 () Bool)

(assert (=> b!88106 (=> (not res!46081) (not e!47820))))

(declare-fun sortStablePropInt!3 (List!730 Int Int) Bool)

(assert (=> b!88106 (= res!46081 (sortStablePropInt!3 xs!1094 (+ n!1722 1) key!514))))

(declare-fun b!88107 () Bool)

(declare-fun res!46071 () Bool)

(assert (=> b!88107 (=> (not res!46071) (not e!47820))))

(assert (=> b!88107 (= res!46071 (l2AtLeast!3 (t!48652 lAnn!4) n!1722))))

(declare-fun b!88108 () Bool)

(declare-fun tp!17215 () Bool)

(assert (=> b!88108 (= e!47827 (and tp_is_empty!373 tp!17215))))

(declare-fun b!88109 () Bool)

(assert (=> b!88109 (= e!47820 e!47822)))

(declare-fun res!46076 () Bool)

(assert (=> b!88109 (=> res!46076 e!47822)))

(declare-fun isStableSorted!2 (List!729 Int) Bool)

(assert (=> b!88109 (= res!46076 (not (isStableSorted!2 l!1590 key!523)))))

(declare-fun b!88110 () Bool)

(declare-fun res!46072 () Bool)

(assert (=> b!88110 (=> (not res!46072) (not e!47820))))

(declare-fun trivProp2!2 (List!729 Int) Bool)

(assert (=> b!88110 (= res!46072 (trivProp2!2 tlAnnSorted!2 n!1722))))

(declare-fun b!88111 () Bool)

(declare-fun res!46080 () Bool)

(assert (=> b!88111 (=> (not res!46080) (not e!47820))))

(assert (=> b!88111 (= res!46080 (l2AtLeast!3 tlAnnSorted!2 (+ n!1722 1)))))

(assert (= (and start!11524 res!46077) b!88104))

(assert (= (and b!88104 res!46083) b!88098))

(assert (= (and b!88098 res!46079) b!88094))

(assert (= (and b!88094 res!46082) b!88095))

(assert (= (and b!88095 res!46073) b!88106))

(assert (= (and b!88106 res!46081) b!88093))

(assert (= (and b!88093 res!46075) b!88107))

(assert (= (and b!88107 res!46071) b!88111))

(assert (= (and b!88111 res!46080) b!88110))

(assert (= (and b!88110 res!46072) b!88100))

(assert (= (and b!88100 res!46074) b!88103))

(assert (= (and b!88103 res!46078) b!88109))

(assert (= (and b!88109 (not res!46076)) b!88097))

(assert (= (and start!11524 (is-Cons!683 lAnn!4)) b!88108))

(assert (= (and start!11524 (is-Cons!683 l!1590)) b!88102))

(assert (= (and start!11524 (is-Cons!684 l!1571)) b!88101))

(assert (= (and start!11524 (is-Cons!683 tlAnnSorted!2)) b!88096))

(assert (= (and start!11524 (is-Cons!683 lAnnSorted!4)) b!88099))

(assert (= (and start!11524 (is-Cons!684 xs!1094)) b!88105))

(declare-fun m!84180 () Bool)

(assert (=> b!88109 m!84180))

(declare-fun m!84182 () Bool)

(assert (=> b!88107 m!84182))

(declare-fun m!84184 () Bool)

(assert (=> b!88097 m!84184))

(declare-fun m!84186 () Bool)

(assert (=> b!88098 m!84186))

(declare-fun m!84188 () Bool)

(assert (=> b!88100 m!84188))

(declare-fun m!84190 () Bool)

(assert (=> b!88110 m!84190))

(declare-fun m!84192 () Bool)

(assert (=> b!88111 m!84192))

(declare-fun m!84194 () Bool)

(assert (=> start!11524 m!84194))

(declare-fun m!84196 () Bool)

(assert (=> b!88095 m!84196))

(declare-fun m!84198 () Bool)

(assert (=> b!88106 m!84198))

(push 1)

(assert (not b!88101))

(assert (not b!88097))

(assert (not b!88111))

(assert (not b_next!39815))

(assert (not b!88108))

(assert (not b!88105))

(assert tp_is_empty!373)

(assert b_and!60003)

(assert (not b!88107))

(assert (not start!11524))

(assert (not b_next!39809))

(assert (not b!88099))

(assert (not b!88098))

(assert b_and!60005)

(assert (not b!88095))

(assert (not b!88100))

(assert (not b!88102))

(assert b_and!60001)

(assert (not b!88106))

(assert (not b!88110))

(assert (not b_next!39813))

(assert (not b!88109))

(assert (not b!88096))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39815))

(assert b_and!60003)

(assert (not b_next!39809))

(assert b_and!60005)

(assert b_and!60001)

(assert (not b_next!39813))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58547 () Bool)

(declare-fun res!46088 () Bool)

(declare-fun e!47832 () Bool)

(assert (=> d!58547 (=> res!46088 e!47832)))

(assert (=> d!58547 (= res!46088 (is-Nil!685 tlAnnSorted!2))))

(assert (=> d!58547 (= (l2AtLeast!3 tlAnnSorted!2 (+ n!1722 1)) e!47832)))

(declare-fun b!88118 () Bool)

(declare-fun e!47833 () Bool)

(assert (=> b!88118 (= e!47832 e!47833)))

(declare-fun res!46089 () Bool)

(assert (=> b!88118 (=> (not res!46089) (not e!47833))))

(assert (=> b!88118 (= res!46089 (<= (+ n!1722 1) (_2!236 (h!1087 tlAnnSorted!2))))))

(declare-fun b!88119 () Bool)

(assert (=> b!88119 (= e!47833 (l2AtLeast!3 (t!48652 tlAnnSorted!2) (+ n!1722 1)))))

(assert (= (and d!58547 (not res!46088)) b!88118))

(assert (= (and b!88118 res!46089) b!88119))

(declare-fun m!84200 () Bool)

(assert (=> b!88119 m!84200))

(assert (=> b!88111 d!58547))

(declare-fun d!58549 () Bool)

(declare-fun e!47836 () Bool)

(assert (=> d!58549 e!47836))

(declare-fun c!21744 () Bool)

(assert (=> d!58549 (= c!21744 (is-Cons!683 tlAnnSorted!2))))

(assert (=> d!58549 (l2AtLeast!3 tlAnnSorted!2 (+ n!1722 1))))

(assert (=> d!58549 (= (trivProp2!2 tlAnnSorted!2 n!1722) true)))

(declare-fun b!88124 () Bool)

(assert (=> b!88124 (= e!47836 (l2AtLeast!3 tlAnnSorted!2 n!1722))))

(declare-fun lt!20218 () Bool)

(assert (=> b!88124 (= lt!20218 (trivProp2!2 (t!48652 tlAnnSorted!2) n!1722))))

(declare-fun b!88125 () Bool)

(assert (=> b!88125 (= e!47836 (l2AtLeast!3 tlAnnSorted!2 n!1722))))

(assert (= (and d!58549 c!21744) b!88124))

(assert (= (and d!58549 (not c!21744)) b!88125))

(assert (=> d!58549 m!84192))

(assert (=> b!88124 m!84188))

(declare-fun m!84202 () Bool)

(assert (=> b!88124 m!84202))

(assert (=> b!88125 m!84188))

(assert (=> b!88110 d!58549))

(declare-fun d!58551 () Bool)

(declare-fun lt!20221 () List!729)

(assert (=> d!58551 (l2AtLeast!3 lt!20221 n!1722)))

(declare-fun e!47839 () List!729)

(assert (=> d!58551 (= lt!20221 e!47839)))

(declare-fun c!21747 () Bool)

(assert (=> d!58551 (= c!21747 (is-Nil!686 l!1571))))

(assert (=> d!58551 (= (annotateList!3 l!1571 n!1722) lt!20221)))

(declare-fun b!88130 () Bool)

(assert (=> b!88130 (= e!47839 Nil!685)))

(declare-fun b!88131 () Bool)

(declare-fun hint!2 (List!729 Bool) List!729)

(declare-fun $colon$colon!17 (List!729 tuple2!402) List!729)

(assert (=> b!88131 (= e!47839 (hint!2 ($colon$colon!17 (annotateList!3 (t!48653 l!1571) (+ n!1722 1)) (tuple2!403 (h!1088 l!1571) n!1722)) (trivProp2!2 (annotateList!3 (t!48653 l!1571) (+ n!1722 1)) n!1722)))))

(assert (= (and d!58551 c!21747) b!88130))

(assert (= (and d!58551 (not c!21747)) b!88131))

(declare-fun m!84204 () Bool)

(assert (=> d!58551 m!84204))

(declare-fun m!84206 () Bool)

(assert (=> b!88131 m!84206))

(assert (=> b!88131 m!84206))

(declare-fun m!84208 () Bool)

(assert (=> b!88131 m!84208))

(assert (=> b!88131 m!84206))

(declare-fun m!84210 () Bool)

(assert (=> b!88131 m!84210))

(assert (=> b!88131 m!84208))

(assert (=> b!88131 m!84210))

(declare-fun m!84212 () Bool)

(assert (=> b!88131 m!84212))

(assert (=> start!11524 d!58551))

(declare-fun d!58553 () Bool)

(declare-fun res!46093 () Bool)

(declare-fun e!47842 () Bool)

(assert (=> d!58553 (=> res!46093 e!47842)))

(assert (=> d!58553 (= res!46093 (is-Nil!685 l!1590))))

(assert (=> d!58553 (= (isStableSorted!2 l!1590 key!523) e!47842)))

(declare-fun b!88134 () Bool)

(declare-fun isStableSortedAndAtLeast!2 (List!729 Int Int Int) Bool)

(declare-fun dynLambda!1049 (Int T!5993) Int)

(assert (=> b!88134 (= e!47842 (isStableSortedAndAtLeast!2 (t!48652 l!1590) key!523 (dynLambda!1049 key!523 (_1!236 (h!1087 l!1590))) (_2!236 (h!1087 l!1590))))))

(assert (= (and d!58553 (not res!46093)) b!88134))

(declare-fun b_lambda!17471 () Bool)

(assert (=> (not b_lambda!17471) (not b!88134)))

(declare-fun t!48655 () Bool)

(declare-fun tb!46565 () Bool)

(assert (=> (and start!11524 (= key!514 key!523) t!48655) tb!46565))

(declare-fun result!46999 () Bool)

(assert (=> tb!46565 (= result!46999 true)))

(assert (=> b!88134 t!48655))

(declare-fun b_and!60007 () Bool)

(assert (= b_and!60001 (and (=> t!48655 result!46999) b_and!60007)))

(declare-fun t!48657 () Bool)

(declare-fun tb!46567 () Bool)

(assert (=> (and start!11524 (= key!523 key!523) t!48657) tb!46567))

(declare-fun result!47001 () Bool)

(assert (=> tb!46567 (= result!47001 true)))

(assert (=> b!88134 t!48657))

(declare-fun b_and!60009 () Bool)

(assert (= b_and!60005 (and (=> t!48657 result!47001) b_and!60009)))

(declare-fun m!84214 () Bool)

(assert (=> b!88134 m!84214))

(assert (=> b!88134 m!84214))

(declare-fun m!84216 () Bool)

(assert (=> b!88134 m!84216))

(assert (=> b!88109 d!58553))

(declare-fun d!58555 () Bool)

(declare-fun res!46094 () Bool)

(declare-fun e!47843 () Bool)

(assert (=> d!58555 (=> res!46094 e!47843)))

(assert (=> d!58555 (= res!46094 (is-Nil!685 (t!48652 lAnn!4)))))

(assert (=> d!58555 (= (l2AtLeast!3 (t!48652 lAnn!4) n!1722) e!47843)))

(declare-fun b!88135 () Bool)

(declare-fun e!47844 () Bool)

(assert (=> b!88135 (= e!47843 e!47844)))

(declare-fun res!46095 () Bool)

(assert (=> b!88135 (=> (not res!46095) (not e!47844))))

(assert (=> b!88135 (= res!46095 (<= n!1722 (_2!236 (h!1087 (t!48652 lAnn!4)))))))

(declare-fun b!88136 () Bool)

(assert (=> b!88136 (= e!47844 (l2AtLeast!3 (t!48652 (t!48652 lAnn!4)) n!1722))))

(assert (= (and d!58555 (not res!46094)) b!88135))

(assert (= (and b!88135 res!46095) b!88136))

(declare-fun m!84218 () Bool)

(assert (=> b!88136 m!84218))

(assert (=> b!88107 d!58555))

(declare-fun d!58557 () Bool)

(declare-fun e!47850 () Bool)

(assert (=> d!58557 e!47850))

(declare-fun res!46099 () Bool)

(assert (=> d!58557 (=> (not res!46099) (not e!47850))))

(declare-fun lt!20224 () List!729)

(declare-fun content!158 (List!729) (Set tuple2!402))

(assert (=> d!58557 (= res!46099 (= (content!158 lt!20224) (content!158 (t!48652 lAnn!4))))))

(declare-fun e!47849 () List!729)

(assert (=> d!58557 (= lt!20224 e!47849)))

(declare-fun c!21750 () Bool)

(assert (=> d!58557 (= c!21750 (is-Nil!685 (t!48652 lAnn!4)))))

(assert (=> d!58557 (= (sort!4 (t!48652 lAnn!4) keyAnn!5) lt!20224)))

(declare-fun b!88143 () Bool)

(assert (=> b!88143 (= e!47849 (t!48652 lAnn!4))))

(declare-fun b!88144 () Bool)

(declare-fun insert!28 (tuple2!402 List!729 Int) List!729)

(assert (=> b!88144 (= e!47849 (insert!28 (h!1087 (t!48652 lAnn!4)) (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5) keyAnn!5))))

(declare-fun b!88145 () Bool)

(declare-fun length!10 (List!729) Int)

(assert (=> b!88145 (= e!47850 (= (length!10 lt!20224) (length!10 (t!48652 lAnn!4))))))

(assert (= (and d!58557 c!21750) b!88143))

(assert (= (and d!58557 (not c!21750)) b!88144))

(assert (= (and d!58557 res!46099) b!88145))

(declare-fun m!84220 () Bool)

(assert (=> d!58557 m!84220))

(declare-fun m!84222 () Bool)

(assert (=> d!58557 m!84222))

(declare-fun m!84224 () Bool)

(assert (=> b!88144 m!84224))

(assert (=> b!88144 m!84224))

(declare-fun m!84226 () Bool)

(assert (=> b!88144 m!84226))

(declare-fun m!84228 () Bool)

(assert (=> b!88145 m!84228))

(declare-fun m!84230 () Bool)

(assert (=> b!88145 m!84230))

(assert (=> b!88095 d!58557))

(declare-fun d!58559 () Bool)

(declare-fun res!46100 () Bool)

(declare-fun e!47851 () Bool)

(assert (=> d!58559 (=> res!46100 e!47851)))

(assert (=> d!58559 (= res!46100 (is-Nil!685 tlAnnSorted!2))))

(assert (=> d!58559 (= (l2AtLeast!3 tlAnnSorted!2 n!1722) e!47851)))

(declare-fun b!88146 () Bool)

(declare-fun e!47852 () Bool)

(assert (=> b!88146 (= e!47851 e!47852)))

(declare-fun res!46101 () Bool)

(assert (=> b!88146 (=> (not res!46101) (not e!47852))))

(assert (=> b!88146 (= res!46101 (<= n!1722 (_2!236 (h!1087 tlAnnSorted!2))))))

(declare-fun b!88147 () Bool)

(assert (=> b!88147 (= e!47852 (l2AtLeast!3 (t!48652 tlAnnSorted!2) n!1722))))

(assert (= (and d!58559 (not res!46100)) b!88146))

(assert (= (and b!88146 res!46101) b!88147))

(declare-fun m!84232 () Bool)

(assert (=> b!88147 m!84232))

(assert (=> b!88100 d!58559))

(declare-fun d!58561 () Bool)

(declare-fun e!47854 () Bool)

(assert (=> d!58561 e!47854))

(declare-fun res!46102 () Bool)

(assert (=> d!58561 (=> (not res!46102) (not e!47854))))

(declare-fun lt!20225 () List!729)

(assert (=> d!58561 (= res!46102 (= (content!158 lt!20225) (content!158 lAnn!4)))))

(declare-fun e!47853 () List!729)

(assert (=> d!58561 (= lt!20225 e!47853)))

(declare-fun c!21751 () Bool)

(assert (=> d!58561 (= c!21751 (is-Nil!685 lAnn!4))))

(assert (=> d!58561 (= (sort!4 lAnn!4 keyAnn!5) lt!20225)))

(declare-fun b!88148 () Bool)

(assert (=> b!88148 (= e!47853 lAnn!4)))

(declare-fun b!88149 () Bool)

(assert (=> b!88149 (= e!47853 (insert!28 (h!1087 lAnn!4) (sort!4 (t!48652 lAnn!4) keyAnn!5) keyAnn!5))))

(declare-fun b!88150 () Bool)

(assert (=> b!88150 (= e!47854 (= (length!10 lt!20225) (length!10 lAnn!4)))))

(assert (= (and d!58561 c!21751) b!88148))

(assert (= (and d!58561 (not c!21751)) b!88149))

(assert (= (and d!58561 res!46102) b!88150))

(declare-fun m!84234 () Bool)

(assert (=> d!58561 m!84234))

(declare-fun m!84236 () Bool)

(assert (=> d!58561 m!84236))

(assert (=> b!88149 m!84196))

(assert (=> b!88149 m!84196))

(declare-fun m!84238 () Bool)

(assert (=> b!88149 m!84238))

(declare-fun m!84240 () Bool)

(assert (=> b!88150 m!84240))

(declare-fun m!84242 () Bool)

(assert (=> b!88150 m!84242))

(assert (=> b!88098 d!58561))

(declare-fun bs!41294 () Bool)

(declare-fun d!58563 () Bool)

(assert (= bs!41294 (and d!58563 b!88104)))

(declare-fun lambda!10867 () Int)

(assert (=> bs!41294 (= lambda!10867 lambda!10864)))

(assert (=> d!58563 true))

(assert (=> d!58563 (< (dynLambda!1047 order!489 key!514) (dynLambda!1048 order!491 lambda!10867))))

(declare-fun b_next!39817 () Bool)

(assert (=> start!11524 (= b_next!39815 (or (and d!58563 (= lambda!10867 keyAnn!5)) b_next!39817))))

(declare-fun b!88171 () Bool)

(declare-fun res!46126 () Bool)

(declare-fun e!47860 () Bool)

(assert (=> b!88171 (=> (not res!46126) (not e!47860))))

(declare-fun lt!20233 () List!729)

(assert (=> b!88171 (= res!46126 (isStableSorted!2 lt!20233 key!514))))

(declare-fun b!88172 () Bool)

(declare-fun e!47859 () Bool)

(assert (=> b!88172 (= e!47859 e!47860)))

(declare-fun res!46124 () Bool)

(assert (=> b!88172 (=> (not res!46124) (not e!47860))))

(assert (=> b!88172 (= res!46124 (sortStablePropInt!3 (t!48653 xs!1094) (+ (+ n!1722 1) 1) key!514))))

(declare-fun lt!20232 () List!729)

(declare-fun lt!20234 () List!729)

(assert (=> b!88172 (= lt!20232 (sort!4 (t!48652 lt!20234) lambda!10867))))

(declare-fun b!88173 () Bool)

(assert (=> b!88173 (= e!47860 (l2AtLeast!3 lt!20233 (+ n!1722 1)))))

(declare-fun b!88174 () Bool)

(declare-fun res!46120 () Bool)

(assert (=> b!88174 (=> (not res!46120) (not e!47860))))

(assert (=> b!88174 (= res!46120 (l2AtLeast!3 lt!20232 (+ (+ n!1722 1) 1)))))

(declare-fun b!88175 () Bool)

(declare-fun res!46121 () Bool)

(assert (=> b!88175 (=> (not res!46121) (not e!47860))))

(assert (=> b!88175 (= res!46121 (trivProp2!2 lt!20232 (+ n!1722 1)))))

(assert (=> d!58563 e!47859))

(declare-fun c!21754 () Bool)

(assert (=> d!58563 (= c!21754 (is-Nil!685 lt!20234))))

(assert (=> d!58563 (= lt!20233 (sort!4 lt!20234 lambda!10867))))

(assert (=> d!58563 (= lt!20234 (annotateList!3 xs!1094 (+ n!1722 1)))))

(assert (=> d!58563 (= (sortStablePropInt!3 xs!1094 (+ n!1722 1) key!514) true)))

(declare-fun b!88176 () Bool)

(declare-fun res!46125 () Bool)

(assert (=> b!88176 (=> (not res!46125) (not e!47860))))

(declare-fun insertStableProp!2 (T!5993 Int List!729 Int) Bool)

(assert (=> b!88176 (= res!46125 (insertStableProp!2 (_1!236 (h!1087 lt!20234)) (_2!236 (h!1087 lt!20234)) lt!20232 key!514))))

(declare-fun b!88177 () Bool)

(declare-fun res!46122 () Bool)

(assert (=> b!88177 (=> (not res!46122) (not e!47860))))

(assert (=> b!88177 (= res!46122 (l2AtLeast!3 lt!20232 (+ n!1722 1)))))

(declare-fun b!88178 () Bool)

(declare-fun res!46123 () Bool)

(assert (=> b!88178 (=> (not res!46123) (not e!47860))))

(assert (=> b!88178 (= res!46123 (l2AtLeast!3 (t!48652 lt!20234) (+ n!1722 1)))))

(declare-fun b!88179 () Bool)

(declare-fun res!46119 () Bool)

(assert (=> b!88179 (=> (not res!46119) (not e!47860))))

(assert (=> b!88179 (= res!46119 (= (+ n!1722 1) (_2!236 (h!1087 lt!20234))))))

(declare-fun b!88180 () Bool)

(assert (=> b!88180 (= e!47859 (isStableSorted!2 lt!20233 key!514))))

(assert (= (and b!88172 res!46124) b!88179))

(assert (= (and b!88179 res!46119) b!88178))

(assert (= (and b!88178 res!46123) b!88174))

(assert (= (and b!88174 res!46120) b!88175))

(assert (= (and b!88175 res!46121) b!88177))

(assert (= (and b!88177 res!46122) b!88176))

(assert (= (and b!88176 res!46125) b!88171))

(assert (= (and b!88171 res!46126) b!88173))

(assert (= (and d!58563 c!21754) b!88180))

(assert (= (and d!58563 (not c!21754)) b!88172))

(declare-fun m!84244 () Bool)

(assert (=> b!88177 m!84244))

(declare-fun m!84246 () Bool)

(assert (=> b!88174 m!84246))

(declare-fun m!84248 () Bool)

(assert (=> b!88173 m!84248))

(declare-fun m!84250 () Bool)

(assert (=> b!88175 m!84250))

(declare-fun m!84252 () Bool)

(assert (=> b!88172 m!84252))

(declare-fun m!84254 () Bool)

(assert (=> b!88172 m!84254))

(declare-fun m!84256 () Bool)

(assert (=> b!88180 m!84256))

(declare-fun m!84258 () Bool)

(assert (=> b!88178 m!84258))

(declare-fun m!84260 () Bool)

(assert (=> b!88176 m!84260))

(declare-fun m!84262 () Bool)

(assert (=> d!58563 m!84262))

(declare-fun m!84264 () Bool)

(assert (=> d!58563 m!84264))

(assert (=> b!88171 m!84256))

(assert (=> b!88106 d!58563))

(declare-fun d!58565 () Bool)

(declare-fun res!46127 () Bool)

(declare-fun e!47861 () Bool)

(assert (=> d!58565 (=> res!46127 e!47861)))

(assert (=> d!58565 (= res!46127 (is-Nil!685 l!1590))))

(assert (=> d!58565 (= (l2AtLeast!3 l!1590 n!1735) e!47861)))

(declare-fun b!88181 () Bool)

(declare-fun e!47862 () Bool)

(assert (=> b!88181 (= e!47861 e!47862)))

(declare-fun res!46128 () Bool)

(assert (=> b!88181 (=> (not res!46128) (not e!47862))))

(assert (=> b!88181 (= res!46128 (<= n!1735 (_2!236 (h!1087 l!1590))))))

(declare-fun b!88182 () Bool)

(assert (=> b!88182 (= e!47862 (l2AtLeast!3 (t!48652 l!1590) n!1735))))

(assert (= (and d!58565 (not res!46127)) b!88181))

(assert (= (and b!88181 res!46128) b!88182))

(declare-fun m!84266 () Bool)

(assert (=> b!88182 m!84266))

(assert (=> b!88097 d!58565))

(declare-fun b!88187 () Bool)

(declare-fun e!47865 () Bool)

(declare-fun tp!17222 () Bool)

(assert (=> b!88187 (= e!47865 (and tp_is_empty!373 tp!17222))))

(assert (=> b!88099 (= tp!17216 e!47865)))

(assert (= (and b!88099 (is-Cons!683 (t!48652 lAnnSorted!4))) b!88187))

(declare-fun b!88188 () Bool)

(declare-fun e!47866 () Bool)

(declare-fun tp!17223 () Bool)

(assert (=> b!88188 (= e!47866 (and tp_is_empty!373 tp!17223))))

(assert (=> b!88096 (= tp!17219 e!47866)))

(assert (= (and b!88096 (is-Cons!683 (t!48652 tlAnnSorted!2))) b!88188))

(declare-fun b!88189 () Bool)

(declare-fun e!47867 () Bool)

(declare-fun tp!17224 () Bool)

(assert (=> b!88189 (= e!47867 (and tp_is_empty!373 tp!17224))))

(assert (=> b!88102 (= tp!17212 e!47867)))

(assert (= (and b!88102 (is-Cons!683 (t!48652 l!1590))) b!88189))

(declare-fun b!88194 () Bool)

(declare-fun e!47870 () Bool)

(declare-fun tp!17227 () Bool)

(assert (=> b!88194 (= e!47870 (and tp_is_empty!373 tp!17227))))

(assert (=> b!88105 (= tp!17211 e!47870)))

(assert (= (and b!88105 (is-Cons!684 (t!48653 xs!1094))) b!88194))

(declare-fun b!88195 () Bool)

(declare-fun e!47871 () Bool)

(declare-fun tp!17228 () Bool)

(assert (=> b!88195 (= e!47871 (and tp_is_empty!373 tp!17228))))

(assert (=> b!88101 (= tp!17214 e!47871)))

(assert (= (and b!88101 (is-Cons!684 (t!48653 l!1571))) b!88195))

(declare-fun b!88196 () Bool)

(declare-fun e!47872 () Bool)

(declare-fun tp!17229 () Bool)

(assert (=> b!88196 (= e!47872 (and tp_is_empty!373 tp!17229))))

(assert (=> b!88108 (= tp!17215 e!47872)))

(assert (= (and b!88108 (is-Cons!683 (t!48652 lAnn!4))) b!88196))

(declare-fun b_lambda!17473 () Bool)

(assert (= b_lambda!17471 (or (and start!11524 b_free!7499 (= key!514 key!523)) (and start!11524 b_free!7503) b_lambda!17473)))

(push 1)

(assert (not b!88173))

(assert (not b!88144))

(assert (not b!88174))

(assert (not b!88172))

(assert (not b_next!39817))

(assert (not b!88188))

(assert (not b!88150))

(assert (not b!88196))

(assert (not d!58551))

(assert (not b!88189))

(assert (not b!88178))

(assert (not b!88147))

(assert (not b!88136))

(assert (not b_lambda!17473))

(assert tp_is_empty!373)

(assert (not b!88195))

(assert b_and!60003)

(assert (not b!88149))

(assert (not d!58563))

(assert (not b_next!39809))

(assert (not b!88145))

(assert (not b!88175))

(assert (not d!58557))

(assert b_and!60009)

(assert (not b!88176))

(assert b_and!60007)

(assert (not b!88119))

(assert (not b!88180))

(assert (not b!88134))

(assert (not b!88125))

(assert (not b!88182))

(assert (not b!88187))

(assert (not b!88171))

(assert (not b!88131))

(assert (not b!88194))

(assert (not d!58549))

(assert (not b!88124))

(assert (not d!58561))

(assert (not b_next!39813))

(assert (not b!88177))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39817))

(assert b_and!60003)

(assert (not b_next!39809))

(assert b_and!60009)

(assert b_and!60007)

(assert (not b_next!39813))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58567 () Bool)

(declare-fun c!21757 () Bool)

(assert (=> d!58567 (= c!21757 (is-Nil!685 lt!20225))))

(declare-fun e!47875 () (Set tuple2!402))

(assert (=> d!58567 (= (content!158 lt!20225) e!47875)))

(declare-fun b!88201 () Bool)

(assert (=> b!88201 (= e!47875 (as emptyset (Set tuple2!402)))))

(declare-fun b!88202 () Bool)

(assert (=> b!88202 (= e!47875 (union (insert (h!1087 lt!20225) (as emptyset (Set tuple2!402))) (content!158 (t!48652 lt!20225))))))

(assert (= (and d!58567 c!21757) b!88201))

(assert (= (and d!58567 (not c!21757)) b!88202))

(declare-fun m!84268 () Bool)

(assert (=> b!88202 m!84268))

(declare-fun m!84270 () Bool)

(assert (=> b!88202 m!84270))

(assert (=> d!58561 d!58567))

(declare-fun d!58569 () Bool)

(declare-fun c!21758 () Bool)

(assert (=> d!58569 (= c!21758 (is-Nil!685 lAnn!4))))

(declare-fun e!47876 () (Set tuple2!402))

(assert (=> d!58569 (= (content!158 lAnn!4) e!47876)))

(declare-fun b!88203 () Bool)

(assert (=> b!88203 (= e!47876 (as emptyset (Set tuple2!402)))))

(declare-fun b!88204 () Bool)

(assert (=> b!88204 (= e!47876 (union (insert (h!1087 lAnn!4) (as emptyset (Set tuple2!402))) (content!158 (t!48652 lAnn!4))))))

(assert (= (and d!58569 c!21758) b!88203))

(assert (= (and d!58569 (not c!21758)) b!88204))

(declare-fun m!84272 () Bool)

(assert (=> b!88204 m!84272))

(assert (=> b!88204 m!84222))

(assert (=> d!58561 d!58569))

(assert (=> b!88125 d!58559))

(declare-fun b!88225 () Bool)

(declare-fun e!47896 () List!729)

(assert (=> b!88225 (= e!47896 ($colon$colon!17 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5) (h!1087 (t!48652 lAnn!4))))))

(declare-fun b!88226 () Bool)

(declare-fun e!47895 () Bool)

(declare-fun e!47894 () Bool)

(assert (=> b!88226 (= e!47895 e!47894)))

(declare-fun res!46145 () Bool)

(assert (=> b!88226 (=> (not res!46145) (not e!47894))))

(assert (=> b!88226 (= res!46145 (is-Cons!683 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5)))))

(declare-fun b!88227 () Bool)

(declare-fun e!47898 () Bool)

(declare-fun e!47893 () Bool)

(assert (=> b!88227 (= e!47898 e!47893)))

(declare-fun res!46147 () Bool)

(assert (=> b!88227 (=> (not res!46147) (not e!47893))))

(declare-fun lt!20240 () Bool)

(assert (=> b!88227 (= res!46147 (and (not lt!20240) (is-Cons!683 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5))))))

(declare-fun b!88228 () Bool)

(declare-fun e!47899 () List!729)

(assert (=> b!88228 (= e!47899 ($colon$colon!17 (insert!28 (h!1087 (t!48652 lAnn!4)) (t!48652 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5)) keyAnn!5) (h!1087 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5))))))

(declare-fun b!88229 () Bool)

(assert (=> b!88229 (= e!47899 e!47896)))

(declare-fun c!21764 () Bool)

(assert (=> b!88229 (= c!21764 e!47898)))

(declare-fun res!46148 () Bool)

(assert (=> b!88229 (=> res!46148 e!47898)))

(assert (=> b!88229 (= res!46148 lt!20240)))

(declare-fun d!58571 () Bool)

(declare-fun e!47900 () Bool)

(assert (=> d!58571 e!47900))

(declare-fun res!46150 () Bool)

(assert (=> d!58571 (=> (not res!46150) (not e!47900))))

(declare-fun lt!20239 () List!729)

(assert (=> d!58571 (= res!46150 (= (content!158 lt!20239) (union (insert (h!1087 (t!48652 lAnn!4)) (as emptyset (Set tuple2!402))) (content!158 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5)))))))

(assert (=> d!58571 (= lt!20239 e!47899)))

(declare-fun c!21763 () Bool)

(assert (=> d!58571 (= c!21763 e!47895)))

(declare-fun res!46149 () Bool)

(assert (=> d!58571 (=> res!46149 e!47895)))

(assert (=> d!58571 (= res!46149 lt!20240)))

(assert (=> d!58571 (= lt!20240 (is-Nil!685 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5)))))

(assert (=> d!58571 (= (insert!28 (h!1087 (t!48652 lAnn!4)) (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5) keyAnn!5) lt!20239)))

(declare-fun b!88230 () Bool)

(declare-fun dynLambda!1050 (Int tuple2!402) Int)

(assert (=> b!88230 (= e!47893 (<= (dynLambda!1050 keyAnn!5 (h!1087 (t!48652 lAnn!4))) (dynLambda!1050 keyAnn!5 (h!1087 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5)))))))

(declare-fun b!88231 () Bool)

(assert (=> b!88231 (= e!47900 (= (length!10 lt!20239) (+ 1 (length!10 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5)))))))

(declare-fun b!88232 () Bool)

(declare-fun res!46146 () List!729)

(assert (=> b!88232 (= e!47896 res!46146)))

(assert (=> b!88232 true))

(declare-fun e!47897 () Bool)

(assert (=> b!88232 e!47897))

(declare-fun b!88233 () Bool)

(declare-fun tp!17232 () Bool)

(assert (=> b!88233 (= e!47897 (and tp_is_empty!373 tp!17232))))

(declare-fun b!88234 () Bool)

(assert (=> b!88234 (= e!47894 (<= (dynLambda!1050 keyAnn!5 (h!1087 (t!48652 lAnn!4))) (dynLambda!1050 keyAnn!5 (h!1087 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5)))))))

(assert (= (and d!58571 (not res!46149)) b!88226))

(assert (= (and b!88226 res!46145) b!88234))

(assert (= (and b!88229 (not res!46148)) b!88227))

(assert (= (and b!88227 res!46147) b!88230))

(assert (= (and b!88232 (is-Cons!683 res!46146)) b!88233))

(assert (= (and b!88229 c!21764) b!88225))

(assert (= (and b!88229 (not c!21764)) b!88232))

(assert (= (and d!58571 c!21763) b!88229))

(assert (= (and d!58571 (not c!21763)) b!88228))

(assert (= (and d!58571 res!46150) b!88231))

(declare-fun b_lambda!17475 () Bool)

(assert (=> (not b_lambda!17475) (not b!88230)))

(declare-fun t!48660 () Bool)

(declare-fun tb!46569 () Bool)

(assert (=> (and start!11524 (= keyAnn!5 keyAnn!5) t!48660) tb!46569))

(declare-fun result!47007 () Bool)

(assert (=> tb!46569 (= result!47007 true)))

(assert (=> b!88230 t!48660))

(declare-fun b_and!60011 () Bool)

(assert (= b_and!60003 (and (=> t!48660 result!47007) b_and!60011)))

(declare-fun b_lambda!17477 () Bool)

(assert (=> (not b_lambda!17477) (not b!88230)))

(declare-fun t!48662 () Bool)

(declare-fun tb!46571 () Bool)

(assert (=> (and start!11524 (= keyAnn!5 keyAnn!5) t!48662) tb!46571))

(declare-fun result!47009 () Bool)

(assert (=> tb!46571 (= result!47009 true)))

(assert (=> b!88230 t!48662))

(declare-fun b_and!60013 () Bool)

(assert (= b_and!60011 (and (=> t!48662 result!47009) b_and!60013)))

(declare-fun b_lambda!17479 () Bool)

(assert (=> (not b_lambda!17479) (not b!88234)))

(assert (=> b!88234 t!48660))

(declare-fun b_and!60015 () Bool)

(assert (= b_and!60013 (and (=> t!48660 result!47007) b_and!60015)))

(declare-fun b_lambda!17481 () Bool)

(assert (=> (not b_lambda!17481) (not b!88234)))

(assert (=> b!88234 t!48662))

(declare-fun b_and!60017 () Bool)

(assert (= b_and!60015 (and (=> t!48662 result!47009) b_and!60017)))

(declare-fun m!84274 () Bool)

(assert (=> b!88234 m!84274))

(declare-fun m!84276 () Bool)

(assert (=> b!88234 m!84276))

(declare-fun m!84278 () Bool)

(assert (=> b!88228 m!84278))

(assert (=> b!88228 m!84278))

(declare-fun m!84280 () Bool)

(assert (=> b!88228 m!84280))

(assert (=> b!88230 m!84274))

(assert (=> b!88230 m!84276))

(declare-fun m!84282 () Bool)

(assert (=> b!88231 m!84282))

(assert (=> b!88231 m!84224))

(declare-fun m!84284 () Bool)

(assert (=> b!88231 m!84284))

(assert (=> b!88225 m!84224))

(declare-fun m!84286 () Bool)

(assert (=> b!88225 m!84286))

(declare-fun m!84288 () Bool)

(assert (=> d!58571 m!84288))

(declare-fun m!84290 () Bool)

(assert (=> d!58571 m!84290))

(assert (=> d!58571 m!84224))

(declare-fun m!84292 () Bool)

(assert (=> d!58571 m!84292))

(assert (=> b!88144 d!58571))

(declare-fun d!58573 () Bool)

(declare-fun e!47902 () Bool)

(assert (=> d!58573 e!47902))

(declare-fun res!46151 () Bool)

(assert (=> d!58573 (=> (not res!46151) (not e!47902))))

(declare-fun lt!20241 () List!729)

(assert (=> d!58573 (= res!46151 (= (content!158 lt!20241) (content!158 (t!48652 (t!48652 lAnn!4)))))))

(declare-fun e!47901 () List!729)

(assert (=> d!58573 (= lt!20241 e!47901)))

(declare-fun c!21765 () Bool)

(assert (=> d!58573 (= c!21765 (is-Nil!685 (t!48652 (t!48652 lAnn!4))))))

(assert (=> d!58573 (= (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5) lt!20241)))

(declare-fun b!88235 () Bool)

(assert (=> b!88235 (= e!47901 (t!48652 (t!48652 lAnn!4)))))

(declare-fun b!88236 () Bool)

(assert (=> b!88236 (= e!47901 (insert!28 (h!1087 (t!48652 (t!48652 lAnn!4))) (sort!4 (t!48652 (t!48652 (t!48652 lAnn!4))) keyAnn!5) keyAnn!5))))

(declare-fun b!88237 () Bool)

(assert (=> b!88237 (= e!47902 (= (length!10 lt!20241) (length!10 (t!48652 (t!48652 lAnn!4)))))))

(assert (= (and d!58573 c!21765) b!88235))

(assert (= (and d!58573 (not c!21765)) b!88236))

(assert (= (and d!58573 res!46151) b!88237))

(declare-fun m!84294 () Bool)

(assert (=> d!58573 m!84294))

(declare-fun m!84296 () Bool)

(assert (=> d!58573 m!84296))

(declare-fun m!84298 () Bool)

(assert (=> b!88236 m!84298))

(assert (=> b!88236 m!84298))

(declare-fun m!84300 () Bool)

(assert (=> b!88236 m!84300))

(declare-fun m!84302 () Bool)

(assert (=> b!88237 m!84302))

(declare-fun m!84304 () Bool)

(assert (=> b!88237 m!84304))

(assert (=> b!88144 d!58573))

(declare-fun d!58575 () Bool)

(declare-fun e!47904 () Bool)

(assert (=> d!58575 e!47904))

(declare-fun res!46152 () Bool)

(assert (=> d!58575 (=> (not res!46152) (not e!47904))))

(declare-fun lt!20242 () List!729)

(assert (=> d!58575 (= res!46152 (= (content!158 lt!20242) (content!158 lt!20234)))))

(declare-fun e!47903 () List!729)

(assert (=> d!58575 (= lt!20242 e!47903)))

(declare-fun c!21766 () Bool)

(assert (=> d!58575 (= c!21766 (is-Nil!685 lt!20234))))

(assert (=> d!58575 (= (sort!4 lt!20234 lambda!10867) lt!20242)))

(declare-fun b!88238 () Bool)

(assert (=> b!88238 (= e!47903 lt!20234)))

(declare-fun b!88239 () Bool)

(assert (=> b!88239 (= e!47903 (insert!28 (h!1087 lt!20234) (sort!4 (t!48652 lt!20234) lambda!10867) lambda!10867))))

(declare-fun b!88240 () Bool)

(assert (=> b!88240 (= e!47904 (= (length!10 lt!20242) (length!10 lt!20234)))))

(assert (= (and d!58575 c!21766) b!88238))

(assert (= (and d!58575 (not c!21766)) b!88239))

(assert (= (and d!58575 res!46152) b!88240))

(declare-fun m!84306 () Bool)

(assert (=> d!58575 m!84306))

(declare-fun m!84308 () Bool)

(assert (=> d!58575 m!84308))

(assert (=> b!88239 m!84254))

(assert (=> b!88239 m!84254))

(declare-fun m!84310 () Bool)

(assert (=> b!88239 m!84310))

(declare-fun m!84312 () Bool)

(assert (=> b!88240 m!84312))

(declare-fun m!84314 () Bool)

(assert (=> b!88240 m!84314))

(assert (=> d!58563 d!58575))

(declare-fun d!58577 () Bool)

(declare-fun lt!20243 () List!729)

(assert (=> d!58577 (l2AtLeast!3 lt!20243 (+ n!1722 1))))

(declare-fun e!47905 () List!729)

(assert (=> d!58577 (= lt!20243 e!47905)))

(declare-fun c!21767 () Bool)

(assert (=> d!58577 (= c!21767 (is-Nil!686 xs!1094))))

(assert (=> d!58577 (= (annotateList!3 xs!1094 (+ n!1722 1)) lt!20243)))

(declare-fun b!88241 () Bool)

(assert (=> b!88241 (= e!47905 Nil!685)))

(declare-fun b!88242 () Bool)

(assert (=> b!88242 (= e!47905 (hint!2 ($colon$colon!17 (annotateList!3 (t!48653 xs!1094) (+ (+ n!1722 1) 1)) (tuple2!403 (h!1088 xs!1094) (+ n!1722 1))) (trivProp2!2 (annotateList!3 (t!48653 xs!1094) (+ (+ n!1722 1) 1)) (+ n!1722 1))))))

(assert (= (and d!58577 c!21767) b!88241))

(assert (= (and d!58577 (not c!21767)) b!88242))

(declare-fun m!84316 () Bool)

(assert (=> d!58577 m!84316))

(declare-fun m!84318 () Bool)

(assert (=> b!88242 m!84318))

(assert (=> b!88242 m!84318))

(declare-fun m!84320 () Bool)

(assert (=> b!88242 m!84320))

(assert (=> b!88242 m!84318))

(declare-fun m!84322 () Bool)

(assert (=> b!88242 m!84322))

(assert (=> b!88242 m!84320))

(assert (=> b!88242 m!84322))

(declare-fun m!84324 () Bool)

(assert (=> b!88242 m!84324))

(assert (=> d!58563 d!58577))

(declare-fun bs!41295 () Bool)

(declare-fun d!58579 () Bool)

(assert (= bs!41295 (and d!58579 b!88104)))

(declare-fun lambda!10868 () Int)

(assert (=> bs!41295 (= lambda!10868 lambda!10864)))

(declare-fun bs!41296 () Bool)

(assert (= bs!41296 (and d!58579 d!58563)))

(assert (=> bs!41296 (= lambda!10868 lambda!10867)))

(assert (=> d!58579 true))

(assert (=> d!58579 (< (dynLambda!1047 order!489 key!514) (dynLambda!1048 order!491 lambda!10868))))

(declare-fun b_next!39819 () Bool)

(assert (=> start!11524 (= b_next!39817 (or (and d!58579 (= lambda!10868 keyAnn!5)) b_next!39819))))

(declare-fun b!88243 () Bool)

(declare-fun res!46160 () Bool)

(declare-fun e!47907 () Bool)

(assert (=> b!88243 (=> (not res!46160) (not e!47907))))

(declare-fun lt!20245 () List!729)

(assert (=> b!88243 (= res!46160 (isStableSorted!2 lt!20245 key!514))))

(declare-fun b!88244 () Bool)

(declare-fun e!47906 () Bool)

(assert (=> b!88244 (= e!47906 e!47907)))

(declare-fun res!46158 () Bool)

(assert (=> b!88244 (=> (not res!46158) (not e!47907))))

(assert (=> b!88244 (= res!46158 (sortStablePropInt!3 (t!48653 (t!48653 xs!1094)) (+ (+ (+ n!1722 1) 1) 1) key!514))))

(declare-fun lt!20244 () List!729)

(declare-fun lt!20246 () List!729)

(assert (=> b!88244 (= lt!20244 (sort!4 (t!48652 lt!20246) lambda!10868))))

(declare-fun b!88245 () Bool)

(assert (=> b!88245 (= e!47907 (l2AtLeast!3 lt!20245 (+ (+ n!1722 1) 1)))))

(declare-fun b!88246 () Bool)

(declare-fun res!46154 () Bool)

(assert (=> b!88246 (=> (not res!46154) (not e!47907))))

(assert (=> b!88246 (= res!46154 (l2AtLeast!3 lt!20244 (+ (+ (+ n!1722 1) 1) 1)))))

(declare-fun b!88247 () Bool)

(declare-fun res!46155 () Bool)

(assert (=> b!88247 (=> (not res!46155) (not e!47907))))

(assert (=> b!88247 (= res!46155 (trivProp2!2 lt!20244 (+ (+ n!1722 1) 1)))))

(assert (=> d!58579 e!47906))

(declare-fun c!21768 () Bool)

(assert (=> d!58579 (= c!21768 (is-Nil!685 lt!20246))))

(assert (=> d!58579 (= lt!20245 (sort!4 lt!20246 lambda!10868))))

(assert (=> d!58579 (= lt!20246 (annotateList!3 (t!48653 xs!1094) (+ (+ n!1722 1) 1)))))

(assert (=> d!58579 (= (sortStablePropInt!3 (t!48653 xs!1094) (+ (+ n!1722 1) 1) key!514) true)))

(declare-fun b!88248 () Bool)

(declare-fun res!46159 () Bool)

(assert (=> b!88248 (=> (not res!46159) (not e!47907))))

(assert (=> b!88248 (= res!46159 (insertStableProp!2 (_1!236 (h!1087 lt!20246)) (_2!236 (h!1087 lt!20246)) lt!20244 key!514))))

(declare-fun b!88249 () Bool)

(declare-fun res!46156 () Bool)

(assert (=> b!88249 (=> (not res!46156) (not e!47907))))

(assert (=> b!88249 (= res!46156 (l2AtLeast!3 lt!20244 (+ (+ n!1722 1) 1)))))

(declare-fun b!88250 () Bool)

(declare-fun res!46157 () Bool)

(assert (=> b!88250 (=> (not res!46157) (not e!47907))))

(assert (=> b!88250 (= res!46157 (l2AtLeast!3 (t!48652 lt!20246) (+ (+ n!1722 1) 1)))))

(declare-fun b!88251 () Bool)

(declare-fun res!46153 () Bool)

(assert (=> b!88251 (=> (not res!46153) (not e!47907))))

(assert (=> b!88251 (= res!46153 (= (+ (+ n!1722 1) 1) (_2!236 (h!1087 lt!20246))))))

(declare-fun b!88252 () Bool)

(assert (=> b!88252 (= e!47906 (isStableSorted!2 lt!20245 key!514))))

(assert (= (and b!88244 res!46158) b!88251))

(assert (= (and b!88251 res!46153) b!88250))

(assert (= (and b!88250 res!46157) b!88246))

(assert (= (and b!88246 res!46154) b!88247))

(assert (= (and b!88247 res!46155) b!88249))

(assert (= (and b!88249 res!46156) b!88248))

(assert (= (and b!88248 res!46159) b!88243))

(assert (= (and b!88243 res!46160) b!88245))

(assert (= (and d!58579 c!21768) b!88252))

(assert (= (and d!58579 (not c!21768)) b!88244))

(declare-fun m!84326 () Bool)

(assert (=> b!88249 m!84326))

(declare-fun m!84328 () Bool)

(assert (=> b!88246 m!84328))

(declare-fun m!84330 () Bool)

(assert (=> b!88245 m!84330))

(declare-fun m!84332 () Bool)

(assert (=> b!88247 m!84332))

(declare-fun m!84334 () Bool)

(assert (=> b!88244 m!84334))

(declare-fun m!84336 () Bool)

(assert (=> b!88244 m!84336))

(declare-fun m!84338 () Bool)

(assert (=> b!88252 m!84338))

(declare-fun m!84340 () Bool)

(assert (=> b!88250 m!84340))

(declare-fun m!84342 () Bool)

(assert (=> b!88248 m!84342))

(declare-fun m!84344 () Bool)

(assert (=> d!58579 m!84344))

(assert (=> d!58579 m!84318))

(assert (=> b!88243 m!84338))

(assert (=> b!88172 d!58579))

(declare-fun d!58581 () Bool)

(declare-fun e!47909 () Bool)

(assert (=> d!58581 e!47909))

(declare-fun res!46161 () Bool)

(assert (=> d!58581 (=> (not res!46161) (not e!47909))))

(declare-fun lt!20247 () List!729)

(assert (=> d!58581 (= res!46161 (= (content!158 lt!20247) (content!158 (t!48652 lt!20234))))))

(declare-fun e!47908 () List!729)

(assert (=> d!58581 (= lt!20247 e!47908)))

(declare-fun c!21769 () Bool)

(assert (=> d!58581 (= c!21769 (is-Nil!685 (t!48652 lt!20234)))))

(assert (=> d!58581 (= (sort!4 (t!48652 lt!20234) lambda!10867) lt!20247)))

(declare-fun b!88253 () Bool)

(assert (=> b!88253 (= e!47908 (t!48652 lt!20234))))

(declare-fun b!88254 () Bool)

(assert (=> b!88254 (= e!47908 (insert!28 (h!1087 (t!48652 lt!20234)) (sort!4 (t!48652 (t!48652 lt!20234)) lambda!10867) lambda!10867))))

(declare-fun b!88255 () Bool)

(assert (=> b!88255 (= e!47909 (= (length!10 lt!20247) (length!10 (t!48652 lt!20234))))))

(assert (= (and d!58581 c!21769) b!88253))

(assert (= (and d!58581 (not c!21769)) b!88254))

(assert (= (and d!58581 res!46161) b!88255))

(declare-fun m!84346 () Bool)

(assert (=> d!58581 m!84346))

(declare-fun m!84348 () Bool)

(assert (=> d!58581 m!84348))

(declare-fun m!84350 () Bool)

(assert (=> b!88254 m!84350))

(assert (=> b!88254 m!84350))

(declare-fun m!84352 () Bool)

(assert (=> b!88254 m!84352))

(declare-fun m!84354 () Bool)

(assert (=> b!88255 m!84354))

(declare-fun m!84356 () Bool)

(assert (=> b!88255 m!84356))

(assert (=> b!88172 d!58581))

(declare-fun d!58583 () Bool)

(declare-fun res!46162 () Bool)

(declare-fun e!47910 () Bool)

(assert (=> d!58583 (=> res!46162 e!47910)))

(assert (=> d!58583 (= res!46162 (is-Nil!685 (t!48652 (t!48652 lAnn!4))))))

(assert (=> d!58583 (= (l2AtLeast!3 (t!48652 (t!48652 lAnn!4)) n!1722) e!47910)))

(declare-fun b!88256 () Bool)

(declare-fun e!47911 () Bool)

(assert (=> b!88256 (= e!47910 e!47911)))

(declare-fun res!46163 () Bool)

(assert (=> b!88256 (=> (not res!46163) (not e!47911))))

(assert (=> b!88256 (= res!46163 (<= n!1722 (_2!236 (h!1087 (t!48652 (t!48652 lAnn!4))))))))

(declare-fun b!88257 () Bool)

(assert (=> b!88257 (= e!47911 (l2AtLeast!3 (t!48652 (t!48652 (t!48652 lAnn!4))) n!1722))))

(assert (= (and d!58583 (not res!46162)) b!88256))

(assert (= (and b!88256 res!46163) b!88257))

(declare-fun m!84358 () Bool)

(assert (=> b!88257 m!84358))

(assert (=> b!88136 d!58583))

(declare-fun d!58585 () Bool)

(declare-fun size!714 (List!729) Int)

(assert (=> d!58585 (= (length!10 lt!20225) (size!714 lt!20225))))

(declare-fun bs!41297 () Bool)

(assert (= bs!41297 d!58585))

(declare-fun m!84360 () Bool)

(assert (=> bs!41297 m!84360))

(assert (=> b!88150 d!58585))

(declare-fun d!58587 () Bool)

(assert (=> d!58587 (= (length!10 lAnn!4) (size!714 lAnn!4))))

(declare-fun bs!41298 () Bool)

(assert (= bs!41298 d!58587))

(declare-fun m!84362 () Bool)

(assert (=> bs!41298 m!84362))

(assert (=> b!88150 d!58587))

(declare-fun d!58589 () Bool)

(declare-fun res!46164 () Bool)

(declare-fun e!47912 () Bool)

(assert (=> d!58589 (=> res!46164 e!47912)))

(assert (=> d!58589 (= res!46164 (is-Nil!685 lt!20232))))

(assert (=> d!58589 (= (l2AtLeast!3 lt!20232 (+ n!1722 1)) e!47912)))

(declare-fun b!88258 () Bool)

(declare-fun e!47913 () Bool)

(assert (=> b!88258 (= e!47912 e!47913)))

(declare-fun res!46165 () Bool)

(assert (=> b!88258 (=> (not res!46165) (not e!47913))))

(assert (=> b!88258 (= res!46165 (<= (+ n!1722 1) (_2!236 (h!1087 lt!20232))))))

(declare-fun b!88259 () Bool)

(assert (=> b!88259 (= e!47913 (l2AtLeast!3 (t!48652 lt!20232) (+ n!1722 1)))))

(assert (= (and d!58589 (not res!46164)) b!88258))

(assert (= (and b!88258 res!46165) b!88259))

(declare-fun m!84364 () Bool)

(assert (=> b!88259 m!84364))

(assert (=> b!88177 d!58589))

(declare-fun bs!41299 () Bool)

(declare-fun b!88273 () Bool)

(assert (= bs!41299 (and b!88273 b!88104)))

(declare-fun lambda!10873 () Int)

(assert (=> bs!41299 (= lambda!10873 lambda!10864)))

(declare-fun bs!41300 () Bool)

(assert (= bs!41300 (and b!88273 d!58563)))

(assert (=> bs!41300 (= lambda!10873 lambda!10867)))

(declare-fun bs!41301 () Bool)

(assert (= bs!41301 (and b!88273 d!58579)))

(assert (=> bs!41301 (= lambda!10873 lambda!10868)))

(assert (=> b!88273 true))

(assert (=> b!88273 (< (dynLambda!1047 order!489 key!514) (dynLambda!1048 order!491 lambda!10873))))

(declare-fun b_next!39821 () Bool)

(assert (=> start!11524 (= b_next!39819 (or (and b!88273 (= lambda!10873 keyAnn!5)) b_next!39821))))

(declare-fun bs!41302 () Bool)

(declare-fun b!88272 () Bool)

(assert (= bs!41302 (and b!88272 b!88104)))

(declare-fun lambda!10874 () Int)

(assert (=> bs!41302 (= lambda!10874 lambda!10864)))

(declare-fun bs!41303 () Bool)

(assert (= bs!41303 (and b!88272 d!58563)))

(assert (=> bs!41303 (= lambda!10874 lambda!10867)))

(declare-fun bs!41304 () Bool)

(assert (= bs!41304 (and b!88272 d!58579)))

(assert (=> bs!41304 (= lambda!10874 lambda!10868)))

(declare-fun bs!41305 () Bool)

(assert (= bs!41305 (and b!88272 b!88273)))

(assert (=> bs!41305 (= lambda!10874 lambda!10873)))

(assert (=> b!88272 true))

(assert (=> b!88272 (< (dynLambda!1047 order!489 key!514) (dynLambda!1048 order!491 lambda!10874))))

(declare-fun b_next!39823 () Bool)

(assert (=> start!11524 (= b_next!39821 (or (and b!88272 (= lambda!10874 keyAnn!5)) b_next!39823))))

(declare-fun b!88270 () Bool)

(declare-fun e!47925 () Bool)

(assert (=> b!88270 (= e!47925 (l2AtLeast!3 lt!20232 (_2!236 (h!1087 lt!20234))))))

(declare-fun b!88271 () Bool)

(declare-fun e!47922 () Bool)

(declare-fun lt!20255 () List!729)

(assert (=> b!88271 (= e!47922 (l2AtLeast!3 lt!20255 (_2!236 (h!1087 lt!20234))))))

(declare-fun e!47923 () Bool)

(assert (=> b!88272 (= e!47923 e!47922)))

(declare-fun res!46174 () Bool)

(assert (=> b!88272 (=> (not res!46174) (not e!47922))))

(assert (=> b!88272 (= res!46174 (isStableSorted!2 lt!20255 key!514))))

(assert (=> b!88272 (= lt!20255 (insert!28 (tuple2!403 (_1!236 (h!1087 lt!20234)) (_2!236 (h!1087 lt!20234))) lt!20232 lambda!10874))))

(declare-fun d!58591 () Bool)

(assert (=> d!58591 e!47923))

(declare-fun c!21772 () Bool)

(assert (=> d!58591 (= c!21772 (is-Cons!683 lt!20232))))

(assert (=> d!58591 e!47925))

(declare-fun res!46175 () Bool)

(assert (=> d!58591 (=> (not res!46175) (not e!47925))))

(assert (=> d!58591 (= res!46175 (isStableSorted!2 lt!20232 key!514))))

(assert (=> d!58591 (= (insertStableProp!2 (_1!236 (h!1087 lt!20234)) (_2!236 (h!1087 lt!20234)) lt!20232 key!514) true)))

(declare-fun e!47924 () Bool)

(assert (=> b!88273 (= e!47923 e!47924)))

(declare-fun res!46176 () Bool)

(assert (=> b!88273 (=> (not res!46176) (not e!47924))))

(declare-fun lt!20254 () List!729)

(assert (=> b!88273 (= res!46176 (isStableSorted!2 lt!20254 key!514))))

(assert (=> b!88273 (= lt!20254 (insert!28 (tuple2!403 (_1!236 (h!1087 lt!20234)) (_2!236 (h!1087 lt!20234))) lt!20232 lambda!10873))))

(declare-fun lt!20256 () Bool)

(assert (=> b!88273 (= lt!20256 (insertStableProp!2 (_1!236 (h!1087 lt!20234)) (_2!236 (h!1087 lt!20234)) (t!48652 lt!20232) key!514))))

(declare-fun b!88274 () Bool)

(assert (=> b!88274 (= e!47924 (l2AtLeast!3 lt!20254 (_2!236 (h!1087 lt!20234))))))

(assert (= (and d!58591 res!46175) b!88270))

(assert (= (and b!88273 res!46176) b!88274))

(assert (= (and b!88272 res!46174) b!88271))

(assert (= (and d!58591 c!21772) b!88273))

(assert (= (and d!58591 (not c!21772)) b!88272))

(declare-fun m!84366 () Bool)

(assert (=> b!88271 m!84366))

(declare-fun m!84368 () Bool)

(assert (=> b!88270 m!84368))

(declare-fun m!84370 () Bool)

(assert (=> b!88272 m!84370))

(declare-fun m!84372 () Bool)

(assert (=> b!88272 m!84372))

(declare-fun m!84374 () Bool)

(assert (=> d!58591 m!84374))

(declare-fun m!84376 () Bool)

(assert (=> b!88274 m!84376))

(declare-fun m!84378 () Bool)

(assert (=> b!88273 m!84378))

(declare-fun m!84380 () Bool)

(assert (=> b!88273 m!84380))

(declare-fun m!84382 () Bool)

(assert (=> b!88273 m!84382))

(assert (=> b!88176 d!58591))

(assert (=> b!88124 d!58559))

(declare-fun d!58593 () Bool)

(declare-fun e!47926 () Bool)

(assert (=> d!58593 e!47926))

(declare-fun c!21773 () Bool)

(assert (=> d!58593 (= c!21773 (is-Cons!683 (t!48652 tlAnnSorted!2)))))

(assert (=> d!58593 (l2AtLeast!3 (t!48652 tlAnnSorted!2) (+ n!1722 1))))

(assert (=> d!58593 (= (trivProp2!2 (t!48652 tlAnnSorted!2) n!1722) true)))

(declare-fun b!88275 () Bool)

(assert (=> b!88275 (= e!47926 (l2AtLeast!3 (t!48652 tlAnnSorted!2) n!1722))))

(declare-fun lt!20257 () Bool)

(assert (=> b!88275 (= lt!20257 (trivProp2!2 (t!48652 (t!48652 tlAnnSorted!2)) n!1722))))

(declare-fun b!88276 () Bool)

(assert (=> b!88276 (= e!47926 (l2AtLeast!3 (t!48652 tlAnnSorted!2) n!1722))))

(assert (= (and d!58593 c!21773) b!88275))

(assert (= (and d!58593 (not c!21773)) b!88276))

(assert (=> d!58593 m!84200))

(assert (=> b!88275 m!84232))

(declare-fun m!84384 () Bool)

(assert (=> b!88275 m!84384))

(assert (=> b!88276 m!84232))

(assert (=> b!88124 d!58593))

(declare-fun d!58595 () Bool)

(declare-fun res!46177 () Bool)

(declare-fun e!47927 () Bool)

(assert (=> d!58595 (=> res!46177 e!47927)))

(assert (=> d!58595 (= res!46177 (is-Nil!685 lt!20233))))

(assert (=> d!58595 (= (isStableSorted!2 lt!20233 key!514) e!47927)))

(declare-fun b!88277 () Bool)

(assert (=> b!88277 (= e!47927 (isStableSortedAndAtLeast!2 (t!48652 lt!20233) key!514 (dynLambda!1049 key!514 (_1!236 (h!1087 lt!20233))) (_2!236 (h!1087 lt!20233))))))

(assert (= (and d!58595 (not res!46177)) b!88277))

(declare-fun b_lambda!17483 () Bool)

(assert (=> (not b_lambda!17483) (not b!88277)))

(declare-fun t!48665 () Bool)

(declare-fun tb!46573 () Bool)

(assert (=> (and start!11524 (= key!514 key!514) t!48665) tb!46573))

(declare-fun result!47011 () Bool)

(assert (=> tb!46573 (= result!47011 true)))

(assert (=> b!88277 t!48665))

(declare-fun b_and!60019 () Bool)

(assert (= b_and!60007 (and (=> t!48665 result!47011) b_and!60019)))

(declare-fun t!48667 () Bool)

(declare-fun tb!46575 () Bool)

(assert (=> (and start!11524 (= key!523 key!514) t!48667) tb!46575))

(declare-fun result!47013 () Bool)

(assert (=> tb!46575 (= result!47013 true)))

(assert (=> b!88277 t!48667))

(declare-fun b_and!60021 () Bool)

(assert (= b_and!60009 (and (=> t!48667 result!47013) b_and!60021)))

(declare-fun m!84386 () Bool)

(assert (=> b!88277 m!84386))

(assert (=> b!88277 m!84386))

(declare-fun m!84388 () Bool)

(assert (=> b!88277 m!84388))

(assert (=> b!88180 d!58595))

(declare-fun d!58597 () Bool)

(declare-fun res!46178 () Bool)

(declare-fun e!47928 () Bool)

(assert (=> d!58597 (=> res!46178 e!47928)))

(assert (=> d!58597 (= res!46178 (is-Nil!685 lt!20232))))

(assert (=> d!58597 (= (l2AtLeast!3 lt!20232 (+ (+ n!1722 1) 1)) e!47928)))

(declare-fun b!88278 () Bool)

(declare-fun e!47929 () Bool)

(assert (=> b!88278 (= e!47928 e!47929)))

(declare-fun res!46179 () Bool)

(assert (=> b!88278 (=> (not res!46179) (not e!47929))))

(assert (=> b!88278 (= res!46179 (<= (+ (+ n!1722 1) 1) (_2!236 (h!1087 lt!20232))))))

(declare-fun b!88279 () Bool)

(assert (=> b!88279 (= e!47929 (l2AtLeast!3 (t!48652 lt!20232) (+ (+ n!1722 1) 1)))))

(assert (= (and d!58597 (not res!46178)) b!88278))

(assert (= (and b!88278 res!46179) b!88279))

(declare-fun m!84390 () Bool)

(assert (=> b!88279 m!84390))

(assert (=> b!88174 d!58597))

(declare-fun d!58599 () Bool)

(declare-fun res!46180 () Bool)

(declare-fun e!47930 () Bool)

(assert (=> d!58599 (=> res!46180 e!47930)))

(assert (=> d!58599 (= res!46180 (is-Nil!685 (t!48652 l!1590)))))

(assert (=> d!58599 (= (l2AtLeast!3 (t!48652 l!1590) n!1735) e!47930)))

(declare-fun b!88280 () Bool)

(declare-fun e!47931 () Bool)

(assert (=> b!88280 (= e!47930 e!47931)))

(declare-fun res!46181 () Bool)

(assert (=> b!88280 (=> (not res!46181) (not e!47931))))

(assert (=> b!88280 (= res!46181 (<= n!1735 (_2!236 (h!1087 (t!48652 l!1590)))))))

(declare-fun b!88281 () Bool)

(assert (=> b!88281 (= e!47931 (l2AtLeast!3 (t!48652 (t!48652 l!1590)) n!1735))))

(assert (= (and d!58599 (not res!46180)) b!88280))

(assert (= (and b!88280 res!46181) b!88281))

(declare-fun m!84392 () Bool)

(assert (=> b!88281 m!84392))

(assert (=> b!88182 d!58599))

(assert (=> b!88171 d!58595))

(declare-fun b!88282 () Bool)

(declare-fun e!47935 () List!729)

(assert (=> b!88282 (= e!47935 ($colon$colon!17 (sort!4 (t!48652 lAnn!4) keyAnn!5) (h!1087 lAnn!4)))))

(declare-fun b!88283 () Bool)

(declare-fun e!47934 () Bool)

(declare-fun e!47933 () Bool)

(assert (=> b!88283 (= e!47934 e!47933)))

(declare-fun res!46182 () Bool)

(assert (=> b!88283 (=> (not res!46182) (not e!47933))))

(assert (=> b!88283 (= res!46182 (is-Cons!683 (sort!4 (t!48652 lAnn!4) keyAnn!5)))))

(declare-fun b!88284 () Bool)

(declare-fun e!47937 () Bool)

(declare-fun e!47932 () Bool)

(assert (=> b!88284 (= e!47937 e!47932)))

(declare-fun res!46184 () Bool)

(assert (=> b!88284 (=> (not res!46184) (not e!47932))))

(declare-fun lt!20259 () Bool)

(assert (=> b!88284 (= res!46184 (and (not lt!20259) (is-Cons!683 (sort!4 (t!48652 lAnn!4) keyAnn!5))))))

(declare-fun b!88285 () Bool)

(declare-fun e!47938 () List!729)

(assert (=> b!88285 (= e!47938 ($colon$colon!17 (insert!28 (h!1087 lAnn!4) (t!48652 (sort!4 (t!48652 lAnn!4) keyAnn!5)) keyAnn!5) (h!1087 (sort!4 (t!48652 lAnn!4) keyAnn!5))))))

(declare-fun b!88286 () Bool)

(assert (=> b!88286 (= e!47938 e!47935)))

(declare-fun c!21775 () Bool)

(assert (=> b!88286 (= c!21775 e!47937)))

(declare-fun res!46185 () Bool)

(assert (=> b!88286 (=> res!46185 e!47937)))

(assert (=> b!88286 (= res!46185 lt!20259)))

(declare-fun d!58601 () Bool)

(declare-fun e!47939 () Bool)

(assert (=> d!58601 e!47939))

(declare-fun res!46187 () Bool)

(assert (=> d!58601 (=> (not res!46187) (not e!47939))))

(declare-fun lt!20258 () List!729)

(assert (=> d!58601 (= res!46187 (= (content!158 lt!20258) (union (insert (h!1087 lAnn!4) (as emptyset (Set tuple2!402))) (content!158 (sort!4 (t!48652 lAnn!4) keyAnn!5)))))))

(assert (=> d!58601 (= lt!20258 e!47938)))

(declare-fun c!21774 () Bool)

(assert (=> d!58601 (= c!21774 e!47934)))

(declare-fun res!46186 () Bool)

(assert (=> d!58601 (=> res!46186 e!47934)))

(assert (=> d!58601 (= res!46186 lt!20259)))

(assert (=> d!58601 (= lt!20259 (is-Nil!685 (sort!4 (t!48652 lAnn!4) keyAnn!5)))))

(assert (=> d!58601 (= (insert!28 (h!1087 lAnn!4) (sort!4 (t!48652 lAnn!4) keyAnn!5) keyAnn!5) lt!20258)))

(declare-fun b!88287 () Bool)

(assert (=> b!88287 (= e!47932 (<= (dynLambda!1050 keyAnn!5 (h!1087 lAnn!4)) (dynLambda!1050 keyAnn!5 (h!1087 (sort!4 (t!48652 lAnn!4) keyAnn!5)))))))

(declare-fun b!88288 () Bool)

(assert (=> b!88288 (= e!47939 (= (length!10 lt!20258) (+ 1 (length!10 (sort!4 (t!48652 lAnn!4) keyAnn!5)))))))

(declare-fun b!88289 () Bool)

(declare-fun res!46183 () List!729)

(assert (=> b!88289 (= e!47935 res!46183)))

(assert (=> b!88289 true))

(declare-fun e!47936 () Bool)

(assert (=> b!88289 e!47936))

(declare-fun b!88290 () Bool)

(declare-fun tp!17233 () Bool)

(assert (=> b!88290 (= e!47936 (and tp_is_empty!373 tp!17233))))

(declare-fun b!88291 () Bool)

(assert (=> b!88291 (= e!47933 (<= (dynLambda!1050 keyAnn!5 (h!1087 lAnn!4)) (dynLambda!1050 keyAnn!5 (h!1087 (sort!4 (t!48652 lAnn!4) keyAnn!5)))))))

(assert (= (and d!58601 (not res!46186)) b!88283))

(assert (= (and b!88283 res!46182) b!88291))

(assert (= (and b!88286 (not res!46185)) b!88284))

(assert (= (and b!88284 res!46184) b!88287))

(assert (= (and b!88289 (is-Cons!683 res!46183)) b!88290))

(assert (= (and b!88286 c!21775) b!88282))

(assert (= (and b!88286 (not c!21775)) b!88289))

(assert (= (and d!58601 c!21774) b!88286))

(assert (= (and d!58601 (not c!21774)) b!88285))

(assert (= (and d!58601 res!46187) b!88288))

(declare-fun b_lambda!17485 () Bool)

(assert (=> (not b_lambda!17485) (not b!88287)))

(declare-fun t!48669 () Bool)

(declare-fun tb!46577 () Bool)

(assert (=> (and start!11524 (= keyAnn!5 keyAnn!5) t!48669) tb!46577))

(declare-fun result!47015 () Bool)

(assert (=> tb!46577 (= result!47015 true)))

(assert (=> b!88287 t!48669))

(declare-fun b_and!60023 () Bool)

(assert (= b_and!60017 (and (=> t!48669 result!47015) b_and!60023)))

(declare-fun b_lambda!17487 () Bool)

(assert (=> (not b_lambda!17487) (not b!88287)))

(declare-fun t!48671 () Bool)

(declare-fun tb!46579 () Bool)

(assert (=> (and start!11524 (= keyAnn!5 keyAnn!5) t!48671) tb!46579))

(declare-fun result!47017 () Bool)

(assert (=> tb!46579 (= result!47017 true)))

(assert (=> b!88287 t!48671))

(declare-fun b_and!60025 () Bool)

(assert (= b_and!60023 (and (=> t!48671 result!47017) b_and!60025)))

(declare-fun b_lambda!17489 () Bool)

(assert (=> (not b_lambda!17489) (not b!88291)))

(assert (=> b!88291 t!48669))

(declare-fun b_and!60027 () Bool)

(assert (= b_and!60025 (and (=> t!48669 result!47015) b_and!60027)))

(declare-fun b_lambda!17491 () Bool)

(assert (=> (not b_lambda!17491) (not b!88291)))

(assert (=> b!88291 t!48671))

(declare-fun b_and!60029 () Bool)

(assert (= b_and!60027 (and (=> t!48671 result!47017) b_and!60029)))

(declare-fun m!84394 () Bool)

(assert (=> b!88291 m!84394))

(declare-fun m!84396 () Bool)

(assert (=> b!88291 m!84396))

(declare-fun m!84398 () Bool)

(assert (=> b!88285 m!84398))

(assert (=> b!88285 m!84398))

(declare-fun m!84400 () Bool)

(assert (=> b!88285 m!84400))

(assert (=> b!88287 m!84394))

(assert (=> b!88287 m!84396))

(declare-fun m!84402 () Bool)

(assert (=> b!88288 m!84402))

(assert (=> b!88288 m!84196))

(declare-fun m!84404 () Bool)

(assert (=> b!88288 m!84404))

(assert (=> b!88282 m!84196))

(declare-fun m!84406 () Bool)

(assert (=> b!88282 m!84406))

(declare-fun m!84408 () Bool)

(assert (=> d!58601 m!84408))

(assert (=> d!58601 m!84272))

(assert (=> d!58601 m!84196))

(declare-fun m!84410 () Bool)

(assert (=> d!58601 m!84410))

(assert (=> b!88149 d!58601))

(assert (=> b!88149 d!58557))

(declare-fun d!58603 () Bool)

(assert (=> d!58603 (= (length!10 lt!20224) (size!714 lt!20224))))

(declare-fun bs!41306 () Bool)

(assert (= bs!41306 d!58603))

(declare-fun m!84412 () Bool)

(assert (=> bs!41306 m!84412))

(assert (=> b!88145 d!58603))

(declare-fun d!58605 () Bool)

(assert (=> d!58605 (= (length!10 (t!48652 lAnn!4)) (size!714 (t!48652 lAnn!4)))))

(declare-fun bs!41307 () Bool)

(assert (= bs!41307 d!58605))

(declare-fun m!84414 () Bool)

(assert (=> bs!41307 m!84414))

(assert (=> b!88145 d!58605))

(declare-fun b!88302 () Bool)

(declare-fun e!47950 () Bool)

(assert (=> b!88302 (= e!47950 (<= (_2!236 (h!1087 l!1590)) (_2!236 (h!1087 (t!48652 l!1590)))))))

(declare-fun d!58607 () Bool)

(declare-fun res!46197 () Bool)

(declare-fun e!47951 () Bool)

(assert (=> d!58607 (=> res!46197 e!47951)))

(assert (=> d!58607 (= res!46197 (is-Nil!685 (t!48652 l!1590)))))

(assert (=> d!58607 (= (isStableSortedAndAtLeast!2 (t!48652 l!1590) key!523 (dynLambda!1049 key!523 (_1!236 (h!1087 l!1590))) (_2!236 (h!1087 l!1590))) e!47951)))

(declare-fun b!88300 () Bool)

(declare-fun e!47948 () Bool)

(assert (=> b!88300 (= e!47951 e!47948)))

(declare-fun res!46198 () Bool)

(assert (=> b!88300 (=> (not res!46198) (not e!47948))))

(declare-fun e!47949 () Bool)

(assert (=> b!88300 (= res!46198 e!47949)))

(declare-fun res!46196 () Bool)

(assert (=> b!88300 (=> res!46196 e!47949)))

(assert (=> b!88300 (= res!46196 (< (dynLambda!1049 key!523 (_1!236 (h!1087 l!1590))) (dynLambda!1049 key!523 (_1!236 (h!1087 (t!48652 l!1590))))))))

(declare-fun b!88301 () Bool)

(assert (=> b!88301 (= e!47949 e!47950)))

(declare-fun res!46199 () Bool)

(assert (=> b!88301 (=> (not res!46199) (not e!47950))))

(assert (=> b!88301 (= res!46199 (= (dynLambda!1049 key!523 (_1!236 (h!1087 l!1590))) (dynLambda!1049 key!523 (_1!236 (h!1087 (t!48652 l!1590))))))))

(declare-fun b!88303 () Bool)

(assert (=> b!88303 (= e!47948 (isStableSortedAndAtLeast!2 (t!48652 (t!48652 l!1590)) key!523 (dynLambda!1049 key!523 (_1!236 (h!1087 (t!48652 l!1590)))) (_2!236 (h!1087 (t!48652 l!1590)))))))

(assert (= (and d!58607 (not res!46197)) b!88300))

(assert (= (and b!88300 (not res!46196)) b!88301))

(assert (= (and b!88301 res!46199) b!88302))

(assert (= (and b!88300 res!46198) b!88303))

(declare-fun b_lambda!17493 () Bool)

(assert (=> (not b_lambda!17493) (not b!88300)))

(declare-fun t!48673 () Bool)

(declare-fun tb!46581 () Bool)

(assert (=> (and start!11524 (= key!514 key!523) t!48673) tb!46581))

(declare-fun result!47019 () Bool)

(assert (=> tb!46581 (= result!47019 true)))

(assert (=> b!88300 t!48673))

(declare-fun b_and!60031 () Bool)

(assert (= b_and!60019 (and (=> t!48673 result!47019) b_and!60031)))

(declare-fun t!48675 () Bool)

(declare-fun tb!46583 () Bool)

(assert (=> (and start!11524 (= key!523 key!523) t!48675) tb!46583))

(declare-fun result!47021 () Bool)

(assert (=> tb!46583 (= result!47021 true)))

(assert (=> b!88300 t!48675))

(declare-fun b_and!60033 () Bool)

(assert (= b_and!60021 (and (=> t!48675 result!47021) b_and!60033)))

(declare-fun b_lambda!17495 () Bool)

(assert (=> (not b_lambda!17495) (not b!88301)))

(assert (=> b!88301 t!48673))

(declare-fun b_and!60035 () Bool)

(assert (= b_and!60031 (and (=> t!48673 result!47019) b_and!60035)))

(assert (=> b!88301 t!48675))

(declare-fun b_and!60037 () Bool)

(assert (= b_and!60033 (and (=> t!48675 result!47021) b_and!60037)))

(declare-fun b_lambda!17497 () Bool)

(assert (=> (not b_lambda!17497) (not b!88303)))

(assert (=> b!88303 t!48673))

(declare-fun b_and!60039 () Bool)

(assert (= b_and!60035 (and (=> t!48673 result!47019) b_and!60039)))

(assert (=> b!88303 t!48675))

(declare-fun b_and!60041 () Bool)

(assert (= b_and!60037 (and (=> t!48675 result!47021) b_and!60041)))

(declare-fun m!84416 () Bool)

(assert (=> b!88300 m!84416))

(assert (=> b!88301 m!84416))

(assert (=> b!88303 m!84416))

(assert (=> b!88303 m!84416))

(declare-fun m!84418 () Bool)

(assert (=> b!88303 m!84418))

(assert (=> b!88134 d!58607))

(declare-fun d!58609 () Bool)

(declare-fun res!46200 () Bool)

(declare-fun e!47952 () Bool)

(assert (=> d!58609 (=> res!46200 e!47952)))

(assert (=> d!58609 (= res!46200 (is-Nil!685 (t!48652 lt!20234)))))

(assert (=> d!58609 (= (l2AtLeast!3 (t!48652 lt!20234) (+ n!1722 1)) e!47952)))

(declare-fun b!88304 () Bool)

(declare-fun e!47953 () Bool)

(assert (=> b!88304 (= e!47952 e!47953)))

(declare-fun res!46201 () Bool)

(assert (=> b!88304 (=> (not res!46201) (not e!47953))))

(assert (=> b!88304 (= res!46201 (<= (+ n!1722 1) (_2!236 (h!1087 (t!48652 lt!20234)))))))

(declare-fun b!88305 () Bool)

(assert (=> b!88305 (= e!47953 (l2AtLeast!3 (t!48652 (t!48652 lt!20234)) (+ n!1722 1)))))

(assert (= (and d!58609 (not res!46200)) b!88304))

(assert (= (and b!88304 res!46201) b!88305))

(declare-fun m!84420 () Bool)

(assert (=> b!88305 m!84420))

(assert (=> b!88178 d!58609))

(declare-fun d!58611 () Bool)

(declare-fun e!47954 () Bool)

(assert (=> d!58611 e!47954))

(declare-fun c!21776 () Bool)

(assert (=> d!58611 (= c!21776 (is-Cons!683 lt!20232))))

(assert (=> d!58611 (l2AtLeast!3 lt!20232 (+ (+ n!1722 1) 1))))

(assert (=> d!58611 (= (trivProp2!2 lt!20232 (+ n!1722 1)) true)))

(declare-fun b!88306 () Bool)

(assert (=> b!88306 (= e!47954 (l2AtLeast!3 lt!20232 (+ n!1722 1)))))

(declare-fun lt!20260 () Bool)

(assert (=> b!88306 (= lt!20260 (trivProp2!2 (t!48652 lt!20232) (+ n!1722 1)))))

(declare-fun b!88307 () Bool)

(assert (=> b!88307 (= e!47954 (l2AtLeast!3 lt!20232 (+ n!1722 1)))))

(assert (= (and d!58611 c!21776) b!88306))

(assert (= (and d!58611 (not c!21776)) b!88307))

(assert (=> d!58611 m!84246))

(assert (=> b!88306 m!84244))

(declare-fun m!84422 () Bool)

(assert (=> b!88306 m!84422))

(assert (=> b!88307 m!84244))

(assert (=> b!88175 d!58611))

(declare-fun d!58613 () Bool)

(declare-fun res!46202 () Bool)

(declare-fun e!47955 () Bool)

(assert (=> d!58613 (=> res!46202 e!47955)))

(assert (=> d!58613 (= res!46202 (is-Nil!685 lt!20233))))

(assert (=> d!58613 (= (l2AtLeast!3 lt!20233 (+ n!1722 1)) e!47955)))

(declare-fun b!88308 () Bool)

(declare-fun e!47956 () Bool)

(assert (=> b!88308 (= e!47955 e!47956)))

(declare-fun res!46203 () Bool)

(assert (=> b!88308 (=> (not res!46203) (not e!47956))))

(assert (=> b!88308 (= res!46203 (<= (+ n!1722 1) (_2!236 (h!1087 lt!20233))))))

(declare-fun b!88309 () Bool)

(assert (=> b!88309 (= e!47956 (l2AtLeast!3 (t!48652 lt!20233) (+ n!1722 1)))))

(assert (= (and d!58613 (not res!46202)) b!88308))

(assert (= (and b!88308 res!46203) b!88309))

(declare-fun m!84424 () Bool)

(assert (=> b!88309 m!84424))

(assert (=> b!88173 d!58613))

(assert (=> d!58549 d!58547))

(declare-fun d!58615 () Bool)

(declare-fun res!46204 () Bool)

(declare-fun e!47957 () Bool)

(assert (=> d!58615 (=> res!46204 e!47957)))

(assert (=> d!58615 (= res!46204 (is-Nil!685 (t!48652 tlAnnSorted!2)))))

(assert (=> d!58615 (= (l2AtLeast!3 (t!48652 tlAnnSorted!2) (+ n!1722 1)) e!47957)))

(declare-fun b!88310 () Bool)

(declare-fun e!47958 () Bool)

(assert (=> b!88310 (= e!47957 e!47958)))

(declare-fun res!46205 () Bool)

(assert (=> b!88310 (=> (not res!46205) (not e!47958))))

(assert (=> b!88310 (= res!46205 (<= (+ n!1722 1) (_2!236 (h!1087 (t!48652 tlAnnSorted!2)))))))

(declare-fun b!88311 () Bool)

(assert (=> b!88311 (= e!47958 (l2AtLeast!3 (t!48652 (t!48652 tlAnnSorted!2)) (+ n!1722 1)))))

(assert (= (and d!58615 (not res!46204)) b!88310))

(assert (= (and b!88310 res!46205) b!88311))

(declare-fun m!84426 () Bool)

(assert (=> b!88311 m!84426))

(assert (=> b!88119 d!58615))

(declare-fun d!58617 () Bool)

(declare-fun c!21777 () Bool)

(assert (=> d!58617 (= c!21777 (is-Nil!685 lt!20224))))

(declare-fun e!47959 () (Set tuple2!402))

(assert (=> d!58617 (= (content!158 lt!20224) e!47959)))

(declare-fun b!88312 () Bool)

(assert (=> b!88312 (= e!47959 (as emptyset (Set tuple2!402)))))

(declare-fun b!88313 () Bool)

(assert (=> b!88313 (= e!47959 (union (insert (h!1087 lt!20224) (as emptyset (Set tuple2!402))) (content!158 (t!48652 lt!20224))))))

(assert (= (and d!58617 c!21777) b!88312))

(assert (= (and d!58617 (not c!21777)) b!88313))

(declare-fun m!84428 () Bool)

(assert (=> b!88313 m!84428))

(declare-fun m!84430 () Bool)

(assert (=> b!88313 m!84430))

(assert (=> d!58557 d!58617))

(declare-fun d!58619 () Bool)

(declare-fun c!21778 () Bool)

(assert (=> d!58619 (= c!21778 (is-Nil!685 (t!48652 lAnn!4)))))

(declare-fun e!47960 () (Set tuple2!402))

(assert (=> d!58619 (= (content!158 (t!48652 lAnn!4)) e!47960)))

(declare-fun b!88314 () Bool)

(assert (=> b!88314 (= e!47960 (as emptyset (Set tuple2!402)))))

(declare-fun b!88315 () Bool)

(assert (=> b!88315 (= e!47960 (union (insert (h!1087 (t!48652 lAnn!4)) (as emptyset (Set tuple2!402))) (content!158 (t!48652 (t!48652 lAnn!4)))))))

(assert (= (and d!58619 c!21778) b!88314))

(assert (= (and d!58619 (not c!21778)) b!88315))

(assert (=> b!88315 m!84290))

(assert (=> b!88315 m!84296))

(assert (=> d!58557 d!58619))

(declare-fun d!58621 () Bool)

(assert (=> d!58621 (= (hint!2 ($colon$colon!17 (annotateList!3 (t!48653 l!1571) (+ n!1722 1)) (tuple2!403 (h!1088 l!1571) n!1722)) (trivProp2!2 (annotateList!3 (t!48653 l!1571) (+ n!1722 1)) n!1722)) ($colon$colon!17 (annotateList!3 (t!48653 l!1571) (+ n!1722 1)) (tuple2!403 (h!1088 l!1571) n!1722)))))

(assert (=> b!88131 d!58621))

(declare-fun d!58623 () Bool)

(assert (=> d!58623 (= ($colon$colon!17 (annotateList!3 (t!48653 l!1571) (+ n!1722 1)) (tuple2!403 (h!1088 l!1571) n!1722)) (Cons!683 (tuple2!403 (h!1088 l!1571) n!1722) (annotateList!3 (t!48653 l!1571) (+ n!1722 1))))))

(assert (=> b!88131 d!58623))

(declare-fun d!58625 () Bool)

(declare-fun lt!20261 () List!729)

(assert (=> d!58625 (l2AtLeast!3 lt!20261 (+ n!1722 1))))

(declare-fun e!47961 () List!729)

(assert (=> d!58625 (= lt!20261 e!47961)))

(declare-fun c!21779 () Bool)

(assert (=> d!58625 (= c!21779 (is-Nil!686 (t!48653 l!1571)))))

(assert (=> d!58625 (= (annotateList!3 (t!48653 l!1571) (+ n!1722 1)) lt!20261)))

(declare-fun b!88316 () Bool)

(assert (=> b!88316 (= e!47961 Nil!685)))

(declare-fun b!88317 () Bool)

(assert (=> b!88317 (= e!47961 (hint!2 ($colon$colon!17 (annotateList!3 (t!48653 (t!48653 l!1571)) (+ (+ n!1722 1) 1)) (tuple2!403 (h!1088 (t!48653 l!1571)) (+ n!1722 1))) (trivProp2!2 (annotateList!3 (t!48653 (t!48653 l!1571)) (+ (+ n!1722 1) 1)) (+ n!1722 1))))))

(assert (= (and d!58625 c!21779) b!88316))

(assert (= (and d!58625 (not c!21779)) b!88317))

(declare-fun m!84432 () Bool)

(assert (=> d!58625 m!84432))

(declare-fun m!84434 () Bool)

(assert (=> b!88317 m!84434))

(assert (=> b!88317 m!84434))

(declare-fun m!84436 () Bool)

(assert (=> b!88317 m!84436))

(assert (=> b!88317 m!84434))

(declare-fun m!84438 () Bool)

(assert (=> b!88317 m!84438))

(assert (=> b!88317 m!84436))

(assert (=> b!88317 m!84438))

(declare-fun m!84440 () Bool)

(assert (=> b!88317 m!84440))

(assert (=> b!88131 d!58625))

(declare-fun d!58627 () Bool)

(declare-fun e!47962 () Bool)

(assert (=> d!58627 e!47962))

(declare-fun c!21780 () Bool)

(assert (=> d!58627 (= c!21780 (is-Cons!683 (annotateList!3 (t!48653 l!1571) (+ n!1722 1))))))

(assert (=> d!58627 (l2AtLeast!3 (annotateList!3 (t!48653 l!1571) (+ n!1722 1)) (+ n!1722 1))))

(assert (=> d!58627 (= (trivProp2!2 (annotateList!3 (t!48653 l!1571) (+ n!1722 1)) n!1722) true)))

(declare-fun b!88318 () Bool)

(assert (=> b!88318 (= e!47962 (l2AtLeast!3 (annotateList!3 (t!48653 l!1571) (+ n!1722 1)) n!1722))))

(declare-fun lt!20262 () Bool)

(assert (=> b!88318 (= lt!20262 (trivProp2!2 (t!48652 (annotateList!3 (t!48653 l!1571) (+ n!1722 1))) n!1722))))

(declare-fun b!88319 () Bool)

(assert (=> b!88319 (= e!47962 (l2AtLeast!3 (annotateList!3 (t!48653 l!1571) (+ n!1722 1)) n!1722))))

(assert (= (and d!58627 c!21780) b!88318))

(assert (= (and d!58627 (not c!21780)) b!88319))

(assert (=> d!58627 m!84206))

(declare-fun m!84442 () Bool)

(assert (=> d!58627 m!84442))

(assert (=> b!88318 m!84206))

(declare-fun m!84444 () Bool)

(assert (=> b!88318 m!84444))

(declare-fun m!84446 () Bool)

(assert (=> b!88318 m!84446))

(assert (=> b!88319 m!84206))

(assert (=> b!88319 m!84444))

(assert (=> b!88131 d!58627))

(declare-fun d!58629 () Bool)

(declare-fun res!46206 () Bool)

(declare-fun e!47963 () Bool)

(assert (=> d!58629 (=> res!46206 e!47963)))

(assert (=> d!58629 (= res!46206 (is-Nil!685 (t!48652 tlAnnSorted!2)))))

(assert (=> d!58629 (= (l2AtLeast!3 (t!48652 tlAnnSorted!2) n!1722) e!47963)))

(declare-fun b!88320 () Bool)

(declare-fun e!47964 () Bool)

(assert (=> b!88320 (= e!47963 e!47964)))

(declare-fun res!46207 () Bool)

(assert (=> b!88320 (=> (not res!46207) (not e!47964))))

(assert (=> b!88320 (= res!46207 (<= n!1722 (_2!236 (h!1087 (t!48652 tlAnnSorted!2)))))))

(declare-fun b!88321 () Bool)

(assert (=> b!88321 (= e!47964 (l2AtLeast!3 (t!48652 (t!48652 tlAnnSorted!2)) n!1722))))

(assert (= (and d!58629 (not res!46206)) b!88320))

(assert (= (and b!88320 res!46207) b!88321))

(declare-fun m!84448 () Bool)

(assert (=> b!88321 m!84448))

(assert (=> b!88147 d!58629))

(declare-fun d!58631 () Bool)

(declare-fun res!46208 () Bool)

(declare-fun e!47965 () Bool)

(assert (=> d!58631 (=> res!46208 e!47965)))

(assert (=> d!58631 (= res!46208 (is-Nil!685 lt!20221))))

(assert (=> d!58631 (= (l2AtLeast!3 lt!20221 n!1722) e!47965)))

(declare-fun b!88322 () Bool)

(declare-fun e!47966 () Bool)

(assert (=> b!88322 (= e!47965 e!47966)))

(declare-fun res!46209 () Bool)

(assert (=> b!88322 (=> (not res!46209) (not e!47966))))

(assert (=> b!88322 (= res!46209 (<= n!1722 (_2!236 (h!1087 lt!20221))))))

(declare-fun b!88323 () Bool)

(assert (=> b!88323 (= e!47966 (l2AtLeast!3 (t!48652 lt!20221) n!1722))))

(assert (= (and d!58631 (not res!46208)) b!88322))

(assert (= (and b!88322 res!46209) b!88323))

(declare-fun m!84450 () Bool)

(assert (=> b!88323 m!84450))

(assert (=> d!58551 d!58631))

(declare-fun b!88324 () Bool)

(declare-fun e!47967 () Bool)

(declare-fun tp!17234 () Bool)

(assert (=> b!88324 (= e!47967 (and tp_is_empty!373 tp!17234))))

(assert (=> b!88188 (= tp!17223 e!47967)))

(assert (= (and b!88188 (is-Cons!683 (t!48652 (t!48652 tlAnnSorted!2)))) b!88324))

(declare-fun b!88325 () Bool)

(declare-fun e!47968 () Bool)

(declare-fun tp!17235 () Bool)

(assert (=> b!88325 (= e!47968 (and tp_is_empty!373 tp!17235))))

(assert (=> b!88194 (= tp!17227 e!47968)))

(assert (= (and b!88194 (is-Cons!684 (t!48653 (t!48653 xs!1094)))) b!88325))

(declare-fun b!88326 () Bool)

(declare-fun e!47969 () Bool)

(declare-fun tp!17236 () Bool)

(assert (=> b!88326 (= e!47969 (and tp_is_empty!373 tp!17236))))

(assert (=> b!88196 (= tp!17229 e!47969)))

(assert (= (and b!88196 (is-Cons!683 (t!48652 (t!48652 lAnn!4)))) b!88326))

(declare-fun b!88327 () Bool)

(declare-fun e!47970 () Bool)

(declare-fun tp!17237 () Bool)

(assert (=> b!88327 (= e!47970 (and tp_is_empty!373 tp!17237))))

(assert (=> b!88189 (= tp!17224 e!47970)))

(assert (= (and b!88189 (is-Cons!683 (t!48652 (t!48652 l!1590)))) b!88327))

(declare-fun b!88328 () Bool)

(declare-fun e!47971 () Bool)

(declare-fun tp!17238 () Bool)

(assert (=> b!88328 (= e!47971 (and tp_is_empty!373 tp!17238))))

(assert (=> b!88195 (= tp!17228 e!47971)))

(assert (= (and b!88195 (is-Cons!684 (t!48653 (t!48653 l!1571)))) b!88328))

(declare-fun b!88329 () Bool)

(declare-fun e!47972 () Bool)

(declare-fun tp!17239 () Bool)

(assert (=> b!88329 (= e!47972 (and tp_is_empty!373 tp!17239))))

(assert (=> b!88187 (= tp!17222 e!47972)))

(assert (= (and b!88187 (is-Cons!683 (t!48652 (t!48652 lAnnSorted!4)))) b!88329))

(declare-fun b_lambda!17499 () Bool)

(assert (= b_lambda!17495 (or (and start!11524 b_free!7499 (= key!514 key!523)) (and start!11524 b_free!7503) b_lambda!17499)))

(declare-fun b_lambda!17501 () Bool)

(assert (= b_lambda!17487 (or (and d!58563 (= lambda!10867 keyAnn!5)) (and b!88273 (= lambda!10873 keyAnn!5)) (and b!88104 (= lambda!10864 keyAnn!5)) (and d!58579 (= lambda!10868 keyAnn!5)) (and b!88272 (= lambda!10874 keyAnn!5)) (and start!11524 b_free!7501) b_lambda!17501)))

(declare-fun bs!41308 () Bool)

(declare-fun d!58633 () Bool)

(assert (= bs!41308 (and d!58633 b!88272)))

(assert (=> bs!41308 (= (dynLambda!1050 lambda!10874 (h!1087 (sort!4 (t!48652 lAnn!4) keyAnn!5))) (dynLambda!1049 key!514 (_1!236 (h!1087 (sort!4 (t!48652 lAnn!4) keyAnn!5)))))))

(declare-fun b_lambda!17523 () Bool)

(assert (=> (not b_lambda!17523) (not bs!41308)))

(declare-fun t!48679 () Bool)

(declare-fun tb!46585 () Bool)

(assert (=> (and start!11524 (= key!514 key!514) t!48679) tb!46585))

(declare-fun result!47023 () Bool)

(assert (=> tb!46585 (= result!47023 true)))

(assert (=> bs!41308 t!48679))

(declare-fun b_and!60043 () Bool)

(assert (= b_and!60039 (and (=> t!48679 result!47023) b_and!60043)))

(declare-fun t!48681 () Bool)

(declare-fun tb!46587 () Bool)

(assert (=> (and start!11524 (= key!523 key!514) t!48681) tb!46587))

(declare-fun result!47025 () Bool)

(assert (=> tb!46587 (= result!47025 true)))

(assert (=> bs!41308 t!48681))

(declare-fun b_and!60045 () Bool)

(assert (= b_and!60041 (and (=> t!48681 result!47025) b_and!60045)))

(declare-fun m!84452 () Bool)

(assert (=> bs!41308 m!84452))

(assert (=> (and b!88272 (= lambda!10874 keyAnn!5) b!88287) d!58633))

(declare-fun bs!41309 () Bool)

(declare-fun d!58635 () Bool)

(assert (= bs!41309 (and d!58635 b!88104)))

(assert (=> bs!41309 (= (dynLambda!1050 lambda!10864 (h!1087 (sort!4 (t!48652 lAnn!4) keyAnn!5))) (dynLambda!1049 key!514 (_1!236 (h!1087 (sort!4 (t!48652 lAnn!4) keyAnn!5)))))))

(declare-fun b_lambda!17525 () Bool)

(assert (=> (not b_lambda!17525) (not bs!41309)))

(assert (=> bs!41309 t!48679))

(declare-fun b_and!60047 () Bool)

(assert (= b_and!60043 (and (=> t!48679 result!47023) b_and!60047)))

(assert (=> bs!41309 t!48681))

(declare-fun b_and!60049 () Bool)

(assert (= b_and!60045 (and (=> t!48681 result!47025) b_and!60049)))

(assert (=> bs!41309 m!84452))

(assert (=> (and b!88104 (= lambda!10864 keyAnn!5) b!88287) d!58635))

(declare-fun bs!41310 () Bool)

(declare-fun d!58637 () Bool)

(assert (= bs!41310 (and d!58637 d!58563)))

(assert (=> bs!41310 (= (dynLambda!1050 lambda!10867 (h!1087 (sort!4 (t!48652 lAnn!4) keyAnn!5))) (dynLambda!1049 key!514 (_1!236 (h!1087 (sort!4 (t!48652 lAnn!4) keyAnn!5)))))))

(declare-fun b_lambda!17527 () Bool)

(assert (=> (not b_lambda!17527) (not bs!41310)))

(assert (=> bs!41310 t!48679))

(declare-fun b_and!60051 () Bool)

(assert (= b_and!60047 (and (=> t!48679 result!47023) b_and!60051)))

(assert (=> bs!41310 t!48681))

(declare-fun b_and!60053 () Bool)

(assert (= b_and!60049 (and (=> t!48681 result!47025) b_and!60053)))

(assert (=> bs!41310 m!84452))

(assert (=> (and d!58563 (= lambda!10867 keyAnn!5) b!88287) d!58637))

(declare-fun bs!41311 () Bool)

(declare-fun d!58639 () Bool)

(assert (= bs!41311 (and d!58639 b!88273)))

(assert (=> bs!41311 (= (dynLambda!1050 lambda!10873 (h!1087 (sort!4 (t!48652 lAnn!4) keyAnn!5))) (dynLambda!1049 key!514 (_1!236 (h!1087 (sort!4 (t!48652 lAnn!4) keyAnn!5)))))))

(declare-fun b_lambda!17529 () Bool)

(assert (=> (not b_lambda!17529) (not bs!41311)))

(assert (=> bs!41311 t!48679))

(declare-fun b_and!60055 () Bool)

(assert (= b_and!60051 (and (=> t!48679 result!47023) b_and!60055)))

(assert (=> bs!41311 t!48681))

(declare-fun b_and!60057 () Bool)

(assert (= b_and!60053 (and (=> t!48681 result!47025) b_and!60057)))

(assert (=> bs!41311 m!84452))

(assert (=> (and b!88273 (= lambda!10873 keyAnn!5) b!88287) d!58639))

(declare-fun bs!41312 () Bool)

(declare-fun d!58641 () Bool)

(assert (= bs!41312 (and d!58641 d!58579)))

(assert (=> bs!41312 (= (dynLambda!1050 lambda!10868 (h!1087 (sort!4 (t!48652 lAnn!4) keyAnn!5))) (dynLambda!1049 key!514 (_1!236 (h!1087 (sort!4 (t!48652 lAnn!4) keyAnn!5)))))))

(declare-fun b_lambda!17531 () Bool)

(assert (=> (not b_lambda!17531) (not bs!41312)))

(assert (=> bs!41312 t!48679))

(declare-fun b_and!60059 () Bool)

(assert (= b_and!60055 (and (=> t!48679 result!47023) b_and!60059)))

(assert (=> bs!41312 t!48681))

(declare-fun b_and!60061 () Bool)

(assert (= b_and!60057 (and (=> t!48681 result!47025) b_and!60061)))

(assert (=> bs!41312 m!84452))

(assert (=> (and d!58579 (= lambda!10868 keyAnn!5) b!88287) d!58641))

(declare-fun b_lambda!17503 () Bool)

(assert (= b_lambda!17477 (or (and d!58563 (= lambda!10867 keyAnn!5)) (and b!88273 (= lambda!10873 keyAnn!5)) (and b!88104 (= lambda!10864 keyAnn!5)) (and d!58579 (= lambda!10868 keyAnn!5)) (and b!88272 (= lambda!10874 keyAnn!5)) (and start!11524 b_free!7501) b_lambda!17503)))

(declare-fun bs!41313 () Bool)

(declare-fun d!58643 () Bool)

(assert (= bs!41313 (and d!58643 b!88272)))

(assert (=> bs!41313 (= (dynLambda!1050 lambda!10874 (h!1087 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5))) (dynLambda!1049 key!514 (_1!236 (h!1087 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5)))))))

(declare-fun b_lambda!17533 () Bool)

(assert (=> (not b_lambda!17533) (not bs!41313)))

(declare-fun t!48683 () Bool)

(declare-fun tb!46589 () Bool)

(assert (=> (and start!11524 (= key!514 key!514) t!48683) tb!46589))

(declare-fun result!47027 () Bool)

(assert (=> tb!46589 (= result!47027 true)))

(assert (=> bs!41313 t!48683))

(declare-fun b_and!60063 () Bool)

(assert (= b_and!60059 (and (=> t!48683 result!47027) b_and!60063)))

(declare-fun tb!46591 () Bool)

(declare-fun t!48685 () Bool)

(assert (=> (and start!11524 (= key!523 key!514) t!48685) tb!46591))

(declare-fun result!47029 () Bool)

(assert (=> tb!46591 (= result!47029 true)))

(assert (=> bs!41313 t!48685))

(declare-fun b_and!60065 () Bool)

(assert (= b_and!60061 (and (=> t!48685 result!47029) b_and!60065)))

(declare-fun m!84454 () Bool)

(assert (=> bs!41313 m!84454))

(assert (=> (and b!88272 (= lambda!10874 keyAnn!5) b!88230) d!58643))

(declare-fun bs!41314 () Bool)

(declare-fun d!58645 () Bool)

(assert (= bs!41314 (and d!58645 d!58563)))

(assert (=> bs!41314 (= (dynLambda!1050 lambda!10867 (h!1087 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5))) (dynLambda!1049 key!514 (_1!236 (h!1087 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5)))))))

(declare-fun b_lambda!17535 () Bool)

(assert (=> (not b_lambda!17535) (not bs!41314)))

(assert (=> bs!41314 t!48683))

(declare-fun b_and!60067 () Bool)

(assert (= b_and!60063 (and (=> t!48683 result!47027) b_and!60067)))

(assert (=> bs!41314 t!48685))

(declare-fun b_and!60069 () Bool)

(assert (= b_and!60065 (and (=> t!48685 result!47029) b_and!60069)))

(assert (=> bs!41314 m!84454))

(assert (=> (and d!58563 (= lambda!10867 keyAnn!5) b!88230) d!58645))

(declare-fun bs!41315 () Bool)

(declare-fun d!58647 () Bool)

(assert (= bs!41315 (and d!58647 b!88104)))

(assert (=> bs!41315 (= (dynLambda!1050 lambda!10864 (h!1087 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5))) (dynLambda!1049 key!514 (_1!236 (h!1087 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5)))))))

(declare-fun b_lambda!17537 () Bool)

(assert (=> (not b_lambda!17537) (not bs!41315)))

(assert (=> bs!41315 t!48683))

(declare-fun b_and!60071 () Bool)

(assert (= b_and!60067 (and (=> t!48683 result!47027) b_and!60071)))

(assert (=> bs!41315 t!48685))

(declare-fun b_and!60073 () Bool)

(assert (= b_and!60069 (and (=> t!48685 result!47029) b_and!60073)))

(assert (=> bs!41315 m!84454))

(assert (=> (and b!88104 (= lambda!10864 keyAnn!5) b!88230) d!58647))

(declare-fun bs!41316 () Bool)

(declare-fun d!58649 () Bool)

(assert (= bs!41316 (and d!58649 d!58579)))

(assert (=> bs!41316 (= (dynLambda!1050 lambda!10868 (h!1087 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5))) (dynLambda!1049 key!514 (_1!236 (h!1087 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5)))))))

(declare-fun b_lambda!17539 () Bool)

(assert (=> (not b_lambda!17539) (not bs!41316)))

(assert (=> bs!41316 t!48683))

(declare-fun b_and!60075 () Bool)

(assert (= b_and!60071 (and (=> t!48683 result!47027) b_and!60075)))

(assert (=> bs!41316 t!48685))

(declare-fun b_and!60077 () Bool)

(assert (= b_and!60073 (and (=> t!48685 result!47029) b_and!60077)))

(assert (=> bs!41316 m!84454))

(assert (=> (and d!58579 (= lambda!10868 keyAnn!5) b!88230) d!58649))

(declare-fun bs!41317 () Bool)

(declare-fun d!58651 () Bool)

(assert (= bs!41317 (and d!58651 b!88273)))

(assert (=> bs!41317 (= (dynLambda!1050 lambda!10873 (h!1087 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5))) (dynLambda!1049 key!514 (_1!236 (h!1087 (sort!4 (t!48652 (t!48652 lAnn!4)) keyAnn!5)))))))

(declare-fun b_lambda!17541 () Bool)

(assert (=> (not b_lambda!17541) (not bs!41317)))

(assert (=> bs!41317 t!48683))

(declare-fun b_and!60079 () Bool)

(assert (= b_and!60075 (and (=> t!48683 result!47027) b_and!60079)))

(assert (=> bs!41317 t!48685))

(declare-fun b_and!60081 () Bool)

(assert (= b_and!60077 (and (=> t!48685 result!47029) b_and!60081)))

(assert (=> bs!41317 m!84454))

(assert (=> (and b!88273 (= lambda!10873 keyAnn!5) b!88230) d!58651))

(declare-fun b_lambda!17505 () Bool)

(assert (= b_lambda!17481 (or (and d!58563 (= lambda!10867 keyAnn!5)) (and b!88273 (= lambda!10873 keyAnn!5)) (and b!88104 (= lambda!10864 keyAnn!5)) (and d!58579 (= lambda!10868 keyAnn!5)) (and b!88272 (= lambda!10874 keyAnn!5)) (and start!11524 b_free!7501) b_lambda!17505)))

(assert (=> (and b!88272 (= lambda!10874 keyAnn!5) b!88234) d!58643))

(assert (=> (and d!58563 (= lambda!10867 keyAnn!5) b!88234) d!58645))

(assert (=> (and b!88104 (= lambda!10864 keyAnn!5) b!88234) d!58647))

(assert (=> (and d!58579 (= lambda!10868 keyAnn!5) b!88234) d!58649))

(assert (=> (and b!88273 (= lambda!10873 keyAnn!5) b!88234) d!58651))

(declare-fun b_lambda!17507 () Bool)

(assert (= b_lambda!17491 (or (and d!58563 (= lambda!10867 keyAnn!5)) (and b!88273 (= lambda!10873 keyAnn!5)) (and b!88104 (= lambda!10864 keyAnn!5)) (and d!58579 (= lambda!10868 keyAnn!5)) (and b!88272 (= lambda!10874 keyAnn!5)) (and start!11524 b_free!7501) b_lambda!17507)))

(assert (=> (and b!88272 (= lambda!10874 keyAnn!5) b!88291) d!58633))

(assert (=> (and b!88104 (= lambda!10864 keyAnn!5) b!88291) d!58635))

(assert (=> (and d!58563 (= lambda!10867 keyAnn!5) b!88291) d!58637))

(assert (=> (and b!88273 (= lambda!10873 keyAnn!5) b!88291) d!58639))

(assert (=> (and d!58579 (= lambda!10868 keyAnn!5) b!88291) d!58641))

(declare-fun b_lambda!17509 () Bool)

(assert (= b_lambda!17475 (or (and d!58563 (= lambda!10867 keyAnn!5)) (and b!88273 (= lambda!10873 keyAnn!5)) (and b!88104 (= lambda!10864 keyAnn!5)) (and d!58579 (= lambda!10868 keyAnn!5)) (and b!88272 (= lambda!10874 keyAnn!5)) (and start!11524 b_free!7501) b_lambda!17509)))

(declare-fun bs!41318 () Bool)

(declare-fun d!58653 () Bool)

(assert (= bs!41318 (and d!58653 d!58563)))

(assert (=> bs!41318 (= (dynLambda!1050 lambda!10867 (h!1087 (t!48652 lAnn!4))) (dynLambda!1049 key!514 (_1!236 (h!1087 (t!48652 lAnn!4)))))))

(declare-fun b_lambda!17543 () Bool)

(assert (=> (not b_lambda!17543) (not bs!41318)))

(declare-fun t!48687 () Bool)

(declare-fun tb!46593 () Bool)

(assert (=> (and start!11524 (= key!514 key!514) t!48687) tb!46593))

(declare-fun result!47031 () Bool)

(assert (=> tb!46593 (= result!47031 true)))

(assert (=> bs!41318 t!48687))

(declare-fun b_and!60083 () Bool)

(assert (= b_and!60079 (and (=> t!48687 result!47031) b_and!60083)))

(declare-fun t!48689 () Bool)

(declare-fun tb!46595 () Bool)

(assert (=> (and start!11524 (= key!523 key!514) t!48689) tb!46595))

(declare-fun result!47033 () Bool)

(assert (=> tb!46595 (= result!47033 true)))

(assert (=> bs!41318 t!48689))

(declare-fun b_and!60085 () Bool)

(assert (= b_and!60081 (and (=> t!48689 result!47033) b_and!60085)))

(declare-fun m!84456 () Bool)

(assert (=> bs!41318 m!84456))

(assert (=> (and d!58563 (= lambda!10867 keyAnn!5) b!88230) d!58653))

(declare-fun bs!41319 () Bool)

(declare-fun d!58655 () Bool)

(assert (= bs!41319 (and d!58655 b!88104)))

(assert (=> bs!41319 (= (dynLambda!1050 lambda!10864 (h!1087 (t!48652 lAnn!4))) (dynLambda!1049 key!514 (_1!236 (h!1087 (t!48652 lAnn!4)))))))

(declare-fun b_lambda!17545 () Bool)

(assert (=> (not b_lambda!17545) (not bs!41319)))

(assert (=> bs!41319 t!48687))

(declare-fun b_and!60087 () Bool)

(assert (= b_and!60083 (and (=> t!48687 result!47031) b_and!60087)))

(assert (=> bs!41319 t!48689))

(declare-fun b_and!60089 () Bool)

(assert (= b_and!60085 (and (=> t!48689 result!47033) b_and!60089)))

(assert (=> bs!41319 m!84456))

(assert (=> (and b!88104 (= lambda!10864 keyAnn!5) b!88230) d!58655))

(declare-fun bs!41320 () Bool)

(declare-fun d!58657 () Bool)

(assert (= bs!41320 (and d!58657 b!88272)))

(assert (=> bs!41320 (= (dynLambda!1050 lambda!10874 (h!1087 (t!48652 lAnn!4))) (dynLambda!1049 key!514 (_1!236 (h!1087 (t!48652 lAnn!4)))))))

(declare-fun b_lambda!17547 () Bool)

(assert (=> (not b_lambda!17547) (not bs!41320)))

(assert (=> bs!41320 t!48687))

(declare-fun b_and!60091 () Bool)

(assert (= b_and!60087 (and (=> t!48687 result!47031) b_and!60091)))

(assert (=> bs!41320 t!48689))

(declare-fun b_and!60093 () Bool)

(assert (= b_and!60089 (and (=> t!48689 result!47033) b_and!60093)))

(assert (=> bs!41320 m!84456))

(assert (=> (and b!88272 (= lambda!10874 keyAnn!5) b!88230) d!58657))

(declare-fun bs!41321 () Bool)

(declare-fun d!58659 () Bool)

(assert (= bs!41321 (and d!58659 d!58579)))

(assert (=> bs!41321 (= (dynLambda!1050 lambda!10868 (h!1087 (t!48652 lAnn!4))) (dynLambda!1049 key!514 (_1!236 (h!1087 (t!48652 lAnn!4)))))))

(declare-fun b_lambda!17549 () Bool)

(assert (=> (not b_lambda!17549) (not bs!41321)))

(assert (=> bs!41321 t!48687))

(declare-fun b_and!60095 () Bool)

(assert (= b_and!60091 (and (=> t!48687 result!47031) b_and!60095)))

(assert (=> bs!41321 t!48689))

(declare-fun b_and!60097 () Bool)

(assert (= b_and!60093 (and (=> t!48689 result!47033) b_and!60097)))

(assert (=> bs!41321 m!84456))

(assert (=> (and d!58579 (= lambda!10868 keyAnn!5) b!88230) d!58659))

(declare-fun bs!41322 () Bool)

(declare-fun d!58661 () Bool)

(assert (= bs!41322 (and d!58661 b!88273)))

(assert (=> bs!41322 (= (dynLambda!1050 lambda!10873 (h!1087 (t!48652 lAnn!4))) (dynLambda!1049 key!514 (_1!236 (h!1087 (t!48652 lAnn!4)))))))

(declare-fun b_lambda!17551 () Bool)

(assert (=> (not b_lambda!17551) (not bs!41322)))

(assert (=> bs!41322 t!48687))

(declare-fun b_and!60099 () Bool)

(assert (= b_and!60095 (and (=> t!48687 result!47031) b_and!60099)))

(assert (=> bs!41322 t!48689))

(declare-fun b_and!60101 () Bool)

(assert (= b_and!60097 (and (=> t!48689 result!47033) b_and!60101)))

(assert (=> bs!41322 m!84456))

(assert (=> (and b!88273 (= lambda!10873 keyAnn!5) b!88230) d!58661))

(declare-fun b_lambda!17511 () Bool)

(assert (= b_lambda!17489 (or (and d!58563 (= lambda!10867 keyAnn!5)) (and b!88273 (= lambda!10873 keyAnn!5)) (and b!88104 (= lambda!10864 keyAnn!5)) (and d!58579 (= lambda!10868 keyAnn!5)) (and b!88272 (= lambda!10874 keyAnn!5)) (and start!11524 b_free!7501) b_lambda!17511)))

(declare-fun bs!41323 () Bool)

(declare-fun d!58663 () Bool)

(assert (= bs!41323 (and d!58663 b!88273)))

(assert (=> bs!41323 (= (dynLambda!1050 lambda!10873 (h!1087 lAnn!4)) (dynLambda!1049 key!514 (_1!236 (h!1087 lAnn!4))))))

(declare-fun b_lambda!17553 () Bool)

(assert (=> (not b_lambda!17553) (not bs!41323)))

(declare-fun t!48691 () Bool)

(declare-fun tb!46597 () Bool)

(assert (=> (and start!11524 (= key!514 key!514) t!48691) tb!46597))

(declare-fun result!47035 () Bool)

(assert (=> tb!46597 (= result!47035 true)))

(assert (=> bs!41323 t!48691))

(declare-fun b_and!60103 () Bool)

(assert (= b_and!60099 (and (=> t!48691 result!47035) b_and!60103)))

(declare-fun t!48693 () Bool)

(declare-fun tb!46599 () Bool)

(assert (=> (and start!11524 (= key!523 key!514) t!48693) tb!46599))

(declare-fun result!47037 () Bool)

(assert (=> tb!46599 (= result!47037 true)))

(assert (=> bs!41323 t!48693))

(declare-fun b_and!60105 () Bool)

(assert (= b_and!60101 (and (=> t!48693 result!47037) b_and!60105)))

(declare-fun m!84458 () Bool)

(assert (=> bs!41323 m!84458))

(assert (=> (and b!88273 (= lambda!10873 keyAnn!5) b!88291) d!58663))

(declare-fun bs!41324 () Bool)

(declare-fun d!58665 () Bool)

(assert (= bs!41324 (and d!58665 b!88104)))

(assert (=> bs!41324 (= (dynLambda!1050 lambda!10864 (h!1087 lAnn!4)) (dynLambda!1049 key!514 (_1!236 (h!1087 lAnn!4))))))

(declare-fun b_lambda!17555 () Bool)

(assert (=> (not b_lambda!17555) (not bs!41324)))

(assert (=> bs!41324 t!48691))

(declare-fun b_and!60107 () Bool)

(assert (= b_and!60103 (and (=> t!48691 result!47035) b_and!60107)))

(assert (=> bs!41324 t!48693))

(declare-fun b_and!60109 () Bool)

(assert (= b_and!60105 (and (=> t!48693 result!47037) b_and!60109)))

(assert (=> bs!41324 m!84458))

(assert (=> (and b!88104 (= lambda!10864 keyAnn!5) b!88291) d!58665))

(declare-fun bs!41325 () Bool)

(declare-fun d!58667 () Bool)

(assert (= bs!41325 (and d!58667 d!58563)))

(assert (=> bs!41325 (= (dynLambda!1050 lambda!10867 (h!1087 lAnn!4)) (dynLambda!1049 key!514 (_1!236 (h!1087 lAnn!4))))))

(declare-fun b_lambda!17557 () Bool)

(assert (=> (not b_lambda!17557) (not bs!41325)))

(assert (=> bs!41325 t!48691))

(declare-fun b_and!60111 () Bool)

(assert (= b_and!60107 (and (=> t!48691 result!47035) b_and!60111)))

(assert (=> bs!41325 t!48693))

(declare-fun b_and!60113 () Bool)

(assert (= b_and!60109 (and (=> t!48693 result!47037) b_and!60113)))

(assert (=> bs!41325 m!84458))

(assert (=> (and d!58563 (= lambda!10867 keyAnn!5) b!88291) d!58667))

(declare-fun bs!41326 () Bool)

(declare-fun d!58669 () Bool)

(assert (= bs!41326 (and d!58669 b!88272)))

(assert (=> bs!41326 (= (dynLambda!1050 lambda!10874 (h!1087 lAnn!4)) (dynLambda!1049 key!514 (_1!236 (h!1087 lAnn!4))))))

(declare-fun b_lambda!17559 () Bool)

(assert (=> (not b_lambda!17559) (not bs!41326)))

(assert (=> bs!41326 t!48691))

(declare-fun b_and!60115 () Bool)

(assert (= b_and!60111 (and (=> t!48691 result!47035) b_and!60115)))

(assert (=> bs!41326 t!48693))

(declare-fun b_and!60117 () Bool)

(assert (= b_and!60113 (and (=> t!48693 result!47037) b_and!60117)))

(assert (=> bs!41326 m!84458))

(assert (=> (and b!88272 (= lambda!10874 keyAnn!5) b!88291) d!58669))

(declare-fun bs!41327 () Bool)

(declare-fun d!58671 () Bool)

(assert (= bs!41327 (and d!58671 d!58579)))

(assert (=> bs!41327 (= (dynLambda!1050 lambda!10868 (h!1087 lAnn!4)) (dynLambda!1049 key!514 (_1!236 (h!1087 lAnn!4))))))

(declare-fun b_lambda!17561 () Bool)

(assert (=> (not b_lambda!17561) (not bs!41327)))

(assert (=> bs!41327 t!48691))

(declare-fun b_and!60119 () Bool)

(assert (= b_and!60115 (and (=> t!48691 result!47035) b_and!60119)))

(assert (=> bs!41327 t!48693))

(declare-fun b_and!60121 () Bool)

(assert (= b_and!60117 (and (=> t!48693 result!47037) b_and!60121)))

(assert (=> bs!41327 m!84458))

(assert (=> (and d!58579 (= lambda!10868 keyAnn!5) b!88291) d!58671))

(declare-fun b_lambda!17513 () Bool)

(assert (= b_lambda!17497 (or (and start!11524 b_free!7499 (= key!514 key!523)) (and start!11524 b_free!7503) b_lambda!17513)))

(declare-fun b_lambda!17515 () Bool)

(assert (= b_lambda!17485 (or (and d!58563 (= lambda!10867 keyAnn!5)) (and b!88273 (= lambda!10873 keyAnn!5)) (and b!88104 (= lambda!10864 keyAnn!5)) (and d!58579 (= lambda!10868 keyAnn!5)) (and b!88272 (= lambda!10874 keyAnn!5)) (and start!11524 b_free!7501) b_lambda!17515)))

(assert (=> (and b!88273 (= lambda!10873 keyAnn!5) b!88287) d!58663))

(assert (=> (and b!88104 (= lambda!10864 keyAnn!5) b!88287) d!58665))

(assert (=> (and d!58563 (= lambda!10867 keyAnn!5) b!88287) d!58667))

(assert (=> (and b!88272 (= lambda!10874 keyAnn!5) b!88287) d!58669))

(assert (=> (and d!58579 (= lambda!10868 keyAnn!5) b!88287) d!58671))

(declare-fun b_lambda!17517 () Bool)

(assert (= b_lambda!17479 (or (and d!58563 (= lambda!10867 keyAnn!5)) (and b!88273 (= lambda!10873 keyAnn!5)) (and b!88104 (= lambda!10864 keyAnn!5)) (and d!58579 (= lambda!10868 keyAnn!5)) (and b!88272 (= lambda!10874 keyAnn!5)) (and start!11524 b_free!7501) b_lambda!17517)))

(assert (=> (and d!58563 (= lambda!10867 keyAnn!5) b!88234) d!58653))

(assert (=> (and b!88104 (= lambda!10864 keyAnn!5) b!88234) d!58655))

(assert (=> (and b!88272 (= lambda!10874 keyAnn!5) b!88234) d!58657))

(assert (=> (and d!58579 (= lambda!10868 keyAnn!5) b!88234) d!58659))

(assert (=> (and b!88273 (= lambda!10873 keyAnn!5) b!88234) d!58661))

(declare-fun b_lambda!17519 () Bool)

(assert (= b_lambda!17493 (or (and start!11524 b_free!7499 (= key!514 key!523)) (and start!11524 b_free!7503) b_lambda!17519)))

(declare-fun b_lambda!17521 () Bool)

(assert (= b_lambda!17483 (or (and start!11524 b_free!7499) (and start!11524 b_free!7503 (= key!523 key!514)) b_lambda!17521)))

(push 1)

(assert (not b_lambda!17547))

(assert (not b!88257))

(assert (not b!88248))

(assert (not b_lambda!17557))

(assert (not b!88240))

(assert (not b!88233))

(assert (not b_lambda!17529))

(assert (not b_lambda!17531))

(assert (not b!88329))

(assert (not b!88326))

(assert (not b_lambda!17527))

(assert (not d!58581))

(assert (not b_lambda!17525))

(assert (not b!88309))

(assert (not b!88328))

(assert (not b!88249))

(assert (not b!88228))

(assert (not b_lambda!17499))

(assert (not b!88323))

(assert (not b_lambda!17551))

(assert (not b_lambda!17555))

(assert (not b!88245))

(assert (not b!88225))

(assert (not b!88303))

(assert (not d!58625))

(assert (not b_lambda!17559))

(assert (not b!88204))

(assert (not d!58573))

(assert (not b!88317))

(assert (not b_lambda!17545))

(assert (not b!88273))

(assert (not d!58571))

(assert (not b!88246))

(assert (not d!58575))

(assert (not d!58611))

(assert (not b_lambda!17473))

(assert (not d!58627))

(assert (not b!88272))

(assert (not d!58593))

(assert (not b_lambda!17561))

(assert (not b!88202))

(assert tp_is_empty!373)

(assert (not b!88285))

(assert (not b!88313))

(assert (not b_lambda!17541))

(assert (not b_lambda!17513))

(assert (not b!88290))

(assert b_and!60029)

(assert (not b!88282))

(assert (not b_lambda!17553))

(assert (not b!88277))

(assert b_and!60121)

(assert (not b_next!39809))

(assert (not b!88319))

(assert (not b_lambda!17517))

(assert (not d!58603))

(assert (not b!88275))

(assert (not d!58591))

(assert (not b!88244))

(assert (not b!88324))

(assert (not b_lambda!17501))

(assert b_and!60119)

(assert (not b_lambda!17507))

(assert (not b!88311))

(assert (not b!88327))

(assert (not b_lambda!17539))

(assert (not b_lambda!17521))

(assert (not b!88237))

(assert (not b!88305))

(assert (not b_lambda!17533))

(assert (not b_lambda!17549))

(assert (not b!88239))

(assert (not b!88274))

(assert (not b_lambda!17519))

(assert (not b!88271))

(assert (not d!58577))

(assert (not b!88236))

(assert (not b_next!39823))

(assert (not b!88321))

(assert (not b!88247))

(assert (not b!88288))

(assert (not b!88281))

(assert (not d!58579))

(assert (not b!88315))

(assert (not b!88307))

(assert (not b!88255))

(assert (not b_lambda!17505))

(assert (not b_lambda!17503))

(assert (not b!88318))

(assert (not b!88254))

(assert (not b!88231))

(assert (not b!88259))

(assert (not b!88242))

(assert (not b!88276))

(assert (not b!88279))

(assert (not b_lambda!17509))

(assert (not b_lambda!17511))

(assert (not b_lambda!17515))

(assert (not b!88325))

(assert (not b!88243))

(assert (not d!58585))

(assert (not b!88252))

(assert (not b!88250))

(assert (not d!58601))

(assert (not d!58587))

(assert (not b_next!39813))

(assert (not b!88270))

(assert (not b_lambda!17535))

(assert (not b_lambda!17537))

(assert (not b_lambda!17543))

(assert (not b!88306))

(assert (not d!58605))

(assert (not b_lambda!17523))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60029)

(assert b_and!60121)

(assert (not b_next!39809))

(assert b_and!60119)

(assert (not b_next!39823))

(assert (not b_next!39813))

(check-sat)

(pop 1)


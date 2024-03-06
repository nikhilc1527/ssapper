; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11512 () Bool)

(assert start!11512)

(declare-fun b_free!7491 () Bool)

(declare-fun b_next!39795 () Bool)

(assert (=> start!11512 (= b_free!7491 (not b_next!39795))))

(declare-fun tp!17158 () Bool)

(declare-fun b_and!59991 () Bool)

(assert (=> start!11512 (= tp!17158 b_and!59991)))

(declare-fun b_free!7493 () Bool)

(declare-fun b_next!39797 () Bool)

(assert (=> start!11512 (= b_free!7493 (not b_next!39797))))

(declare-fun tp!17159 () Bool)

(declare-fun b_and!59993 () Bool)

(assert (=> start!11512 (= tp!17159 b_and!59993)))

(declare-fun b!87943 () Bool)

(assert (=> b!87943 true))

(declare-fun order!483 () Int)

(declare-fun order!481 () Int)

(declare-fun lambda!10855 () Int)

(declare-fun key!504 () Int)

(declare-fun dynLambda!1042 (Int Int) Int)

(declare-fun dynLambda!1043 (Int Int) Int)

(assert (=> b!87943 (< (dynLambda!1042 order!481 key!504) (dynLambda!1043 order!483 lambda!10855))))

(declare-fun keyAnn!4 () Int)

(declare-fun b_next!39799 () Bool)

(assert (=> start!11512 (= b_next!39795 (or (and b!87943 (= lambda!10855 keyAnn!4)) b_next!39799))))

(declare-fun b!87937 () Bool)

(declare-fun res!45981 () Bool)

(declare-fun e!47754 () Bool)

(assert (=> b!87937 (=> (not res!45981) (not e!47754))))

(declare-datatypes () ((T!5989 (T!5990 (val!187 Int)))))

(declare-datatypes () ((tuple2!398 (tuple2!399 (_1!234 T!5989) (_2!234 Int)))))

(declare-datatypes () ((List!725 (Cons!679 (h!1083 tuple2!398) (t!48646 List!725)) (Nil!681))))

(declare-fun lAnn!3 () List!725)

(declare-fun lAnnSorted!3 () List!725)

(declare-fun sort!2 (List!725 Int) List!725)

(assert (=> b!87937 (= res!45981 (= lAnnSorted!3 (sort!2 lAnn!3 keyAnn!4)))))

(declare-fun b!87938 () Bool)

(declare-fun res!45982 () Bool)

(assert (=> b!87938 (=> (not res!45982) (not e!47754))))

(declare-datatypes () ((List!726 (Cons!680 (h!1084 T!5989) (t!48647 List!726)) (Nil!682))))

(declare-fun l!1547 () List!726)

(declare-fun annotateList!1 (List!726 Int) List!725)

(assert (=> b!87938 (= res!45982 (= lAnn!3 (annotateList!1 l!1547 0)))))

(declare-fun b!87939 () Bool)

(declare-fun e!47756 () Bool)

(declare-fun tp_is_empty!369 () Bool)

(declare-fun tp!17157 () Bool)

(assert (=> b!87939 (= e!47756 (and tp_is_empty!369 tp!17157))))

(declare-fun b!87940 () Bool)

(declare-fun isStableSorted!1 (List!725 Int) Bool)

(assert (=> b!87940 (= e!47754 (not (isStableSorted!1 lAnnSorted!3 key!504)))))

(declare-fun res!45979 () Bool)

(assert (=> start!11512 (=> (not res!45979) (not e!47754))))

(declare-fun sortStablePropInt!1 (List!726 Int Int) Bool)

(assert (=> start!11512 (= res!45979 (sortStablePropInt!1 l!1547 0 key!504))))

(assert (=> start!11512 e!47754))

(declare-fun e!47755 () Bool)

(assert (=> start!11512 e!47755))

(declare-fun e!47757 () Bool)

(assert (=> start!11512 e!47757))

(assert (=> start!11512 tp!17158))

(assert (=> start!11512 e!47756))

(assert (=> start!11512 tp!17159))

(declare-fun b!87941 () Bool)

(declare-fun tp!17161 () Bool)

(assert (=> b!87941 (= e!47755 (and tp_is_empty!369 tp!17161))))

(declare-fun b!87942 () Bool)

(declare-fun tp!17160 () Bool)

(assert (=> b!87942 (= e!47757 (and tp_is_empty!369 tp!17160))))

(declare-fun res!45980 () Bool)

(assert (=> b!87943 (=> (not res!45980) (not e!47754))))

(assert (=> b!87943 (= res!45980 (= keyAnn!4 lambda!10855))))

(assert (= (and start!11512 res!45979) b!87938))

(assert (= (and b!87938 res!45982) b!87943))

(assert (= (and b!87943 res!45980) b!87937))

(assert (= (and b!87937 res!45981) b!87940))

(assert (= (and start!11512 (is-Cons!679 lAnn!3)) b!87941))

(assert (= (and start!11512 (is-Cons!680 l!1547)) b!87942))

(assert (= (and start!11512 (is-Cons!679 lAnnSorted!3)) b!87939))

(declare-fun m!84112 () Bool)

(assert (=> b!87937 m!84112))

(declare-fun m!84114 () Bool)

(assert (=> b!87938 m!84114))

(declare-fun m!84116 () Bool)

(assert (=> b!87940 m!84116))

(declare-fun m!84118 () Bool)

(assert (=> start!11512 m!84118))

(push 1)

(assert (not b!87940))

(assert (not b_next!39797))

(assert (not b!87942))

(assert b_and!59993)

(assert (not b!87941))

(assert b_and!59991)

(assert tp_is_empty!369)

(assert (not start!11512))

(assert (not b!87939))

(assert (not b_next!39799))

(assert (not b!87937))

(assert (not b!87938))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59993)

(assert b_and!59991)

(assert (not b_next!39799))

(assert (not b_next!39797))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58539 () Bool)

(declare-fun lt!20203 () List!725)

(declare-fun l2AtLeast!1 (List!725 Int) Bool)

(assert (=> d!58539 (l2AtLeast!1 lt!20203 0)))

(declare-fun e!47760 () List!725)

(assert (=> d!58539 (= lt!20203 e!47760)))

(declare-fun c!21735 () Bool)

(assert (=> d!58539 (= c!21735 (is-Nil!682 l!1547))))

(assert (=> d!58539 (= (annotateList!1 l!1547 0) lt!20203)))

(declare-fun b!87950 () Bool)

(assert (=> b!87950 (= e!47760 Nil!681)))

(declare-fun b!87951 () Bool)

(declare-fun hint!1 (List!725 Bool) List!725)

(declare-fun $colon$colon!16 (List!725 tuple2!398) List!725)

(declare-fun trivProp2!1 (List!725 Int) Bool)

(assert (=> b!87951 (= e!47760 (hint!1 ($colon$colon!16 (annotateList!1 (t!48647 l!1547) (+ 0 1)) (tuple2!399 (h!1084 l!1547) 0)) (trivProp2!1 (annotateList!1 (t!48647 l!1547) (+ 0 1)) 0)))))

(assert (= (and d!58539 c!21735) b!87950))

(assert (= (and d!58539 (not c!21735)) b!87951))

(declare-fun m!84120 () Bool)

(assert (=> d!58539 m!84120))

(declare-fun m!84122 () Bool)

(assert (=> b!87951 m!84122))

(assert (=> b!87951 m!84122))

(declare-fun m!84124 () Bool)

(assert (=> b!87951 m!84124))

(assert (=> b!87951 m!84122))

(declare-fun m!84126 () Bool)

(assert (=> b!87951 m!84126))

(assert (=> b!87951 m!84124))

(assert (=> b!87951 m!84126))

(declare-fun m!84128 () Bool)

(assert (=> b!87951 m!84128))

(assert (=> b!87938 d!58539))

(declare-fun d!58541 () Bool)

(declare-fun res!45986 () Bool)

(declare-fun e!47763 () Bool)

(assert (=> d!58541 (=> res!45986 e!47763)))

(assert (=> d!58541 (= res!45986 (is-Nil!681 lAnnSorted!3))))

(assert (=> d!58541 (= (isStableSorted!1 lAnnSorted!3 key!504) e!47763)))

(declare-fun b!87954 () Bool)

(declare-fun isStableSortedAndAtLeast!1 (List!725 Int Int Int) Bool)

(declare-fun dynLambda!1044 (Int T!5989) Int)

(assert (=> b!87954 (= e!47763 (isStableSortedAndAtLeast!1 (t!48646 lAnnSorted!3) key!504 (dynLambda!1044 key!504 (_1!234 (h!1083 lAnnSorted!3))) (_2!234 (h!1083 lAnnSorted!3))))))

(assert (= (and d!58541 (not res!45986)) b!87954))

(declare-fun b_lambda!17467 () Bool)

(assert (=> (not b_lambda!17467) (not b!87954)))

(declare-fun t!48649 () Bool)

(declare-fun tb!46563 () Bool)

(assert (=> (and start!11512 (= key!504 key!504) t!48649) tb!46563))

(declare-fun result!46993 () Bool)

(assert (=> tb!46563 (= result!46993 true)))

(assert (=> b!87954 t!48649))

(declare-fun b_and!59995 () Bool)

(assert (= b_and!59993 (and (=> t!48649 result!46993) b_and!59995)))

(declare-fun m!84130 () Bool)

(assert (=> b!87954 m!84130))

(assert (=> b!87954 m!84130))

(declare-fun m!84132 () Bool)

(assert (=> b!87954 m!84132))

(assert (=> b!87940 d!58541))

(declare-fun d!58543 () Bool)

(declare-fun e!47768 () Bool)

(assert (=> d!58543 e!47768))

(declare-fun res!45990 () Bool)

(assert (=> d!58543 (=> (not res!45990) (not e!47768))))

(declare-fun lt!20206 () List!725)

(declare-fun content!157 (List!725) (Set tuple2!398))

(assert (=> d!58543 (= res!45990 (= (content!157 lt!20206) (content!157 lAnn!3)))))

(declare-fun e!47769 () List!725)

(assert (=> d!58543 (= lt!20206 e!47769)))

(declare-fun c!21738 () Bool)

(assert (=> d!58543 (= c!21738 (is-Nil!681 lAnn!3))))

(assert (=> d!58543 (= (sort!2 lAnn!3 keyAnn!4) lt!20206)))

(declare-fun b!87961 () Bool)

(assert (=> b!87961 (= e!47769 lAnn!3)))

(declare-fun b!87962 () Bool)

(declare-fun insert!27 (tuple2!398 List!725 Int) List!725)

(assert (=> b!87962 (= e!47769 (insert!27 (h!1083 lAnn!3) (sort!2 (t!48646 lAnn!3) keyAnn!4) keyAnn!4))))

(declare-fun b!87963 () Bool)

(declare-fun length!9 (List!725) Int)

(assert (=> b!87963 (= e!47768 (= (length!9 lt!20206) (length!9 lAnn!3)))))

(assert (= (and d!58543 c!21738) b!87961))

(assert (= (and d!58543 (not c!21738)) b!87962))

(assert (= (and d!58543 res!45990) b!87963))

(declare-fun m!84134 () Bool)

(assert (=> d!58543 m!84134))

(declare-fun m!84136 () Bool)

(assert (=> d!58543 m!84136))

(declare-fun m!84138 () Bool)

(assert (=> b!87962 m!84138))

(assert (=> b!87962 m!84138))

(declare-fun m!84140 () Bool)

(assert (=> b!87962 m!84140))

(declare-fun m!84142 () Bool)

(assert (=> b!87963 m!84142))

(declare-fun m!84144 () Bool)

(assert (=> b!87963 m!84144))

(assert (=> b!87937 d!58543))

(declare-fun bs!41291 () Bool)

(declare-fun d!58545 () Bool)

(assert (= bs!41291 (and d!58545 b!87943)))

(declare-fun lambda!10858 () Int)

(assert (=> bs!41291 (= lambda!10858 lambda!10855)))

(assert (=> d!58545 true))

(assert (=> d!58545 (< (dynLambda!1042 order!481 key!504) (dynLambda!1043 order!483 lambda!10858))))

(declare-fun b_next!39801 () Bool)

(assert (=> start!11512 (= b_next!39799 (or (and d!58545 (= lambda!10858 keyAnn!4)) b_next!39801))))

(declare-fun b!87984 () Bool)

(declare-fun res!46010 () Bool)

(declare-fun e!47774 () Bool)

(assert (=> b!87984 (=> (not res!46010) (not e!47774))))

(declare-fun lt!20214 () List!725)

(assert (=> b!87984 (= res!46010 (l2AtLeast!1 lt!20214 0))))

(declare-fun b!87985 () Bool)

(declare-fun e!47775 () Bool)

(assert (=> b!87985 (= e!47775 e!47774)))

(declare-fun res!46007 () Bool)

(assert (=> b!87985 (=> (not res!46007) (not e!47774))))

(assert (=> b!87985 (= res!46007 (sortStablePropInt!1 (t!48647 l!1547) (+ 0 1) key!504))))

(declare-fun lt!20213 () List!725)

(assert (=> b!87985 (= lt!20214 (sort!2 (t!48646 lt!20213) lambda!10858))))

(declare-fun b!87986 () Bool)

(declare-fun res!46009 () Bool)

(assert (=> b!87986 (=> (not res!46009) (not e!47774))))

(assert (=> b!87986 (= res!46009 (l2AtLeast!1 lt!20214 (+ 0 1)))))

(declare-fun b!87987 () Bool)

(declare-fun res!46011 () Bool)

(assert (=> b!87987 (=> (not res!46011) (not e!47774))))

(assert (=> b!87987 (= res!46011 (trivProp2!1 lt!20214 0))))

(declare-fun b!87988 () Bool)

(declare-fun res!46013 () Bool)

(assert (=> b!87988 (=> (not res!46013) (not e!47774))))

(declare-fun lt!20215 () List!725)

(assert (=> b!87988 (= res!46013 (isStableSorted!1 lt!20215 key!504))))

(declare-fun b!87989 () Bool)

(declare-fun res!46014 () Bool)

(assert (=> b!87989 (=> (not res!46014) (not e!47774))))

(declare-fun insertStableProp!1 (T!5989 Int List!725 Int) Bool)

(assert (=> b!87989 (= res!46014 (insertStableProp!1 (_1!234 (h!1083 lt!20213)) (_2!234 (h!1083 lt!20213)) lt!20214 key!504))))

(assert (=> d!58545 e!47775))

(declare-fun c!21741 () Bool)

(assert (=> d!58545 (= c!21741 (is-Nil!681 lt!20213))))

(assert (=> d!58545 (= lt!20215 (sort!2 lt!20213 lambda!10858))))

(assert (=> d!58545 (= lt!20213 (annotateList!1 l!1547 0))))

(assert (=> d!58545 (= (sortStablePropInt!1 l!1547 0 key!504) true)))

(declare-fun b!87990 () Bool)

(declare-fun res!46012 () Bool)

(assert (=> b!87990 (=> (not res!46012) (not e!47774))))

(assert (=> b!87990 (= res!46012 (= 0 (_2!234 (h!1083 lt!20213))))))

(declare-fun b!87991 () Bool)

(assert (=> b!87991 (= e!47775 (isStableSorted!1 lt!20215 key!504))))

(declare-fun b!87992 () Bool)

(assert (=> b!87992 (= e!47774 (l2AtLeast!1 lt!20215 0))))

(declare-fun b!87993 () Bool)

(declare-fun res!46008 () Bool)

(assert (=> b!87993 (=> (not res!46008) (not e!47774))))

(assert (=> b!87993 (= res!46008 (l2AtLeast!1 (t!48646 lt!20213) 0))))

(assert (= (and b!87985 res!46007) b!87990))

(assert (= (and b!87990 res!46012) b!87993))

(assert (= (and b!87993 res!46008) b!87986))

(assert (= (and b!87986 res!46009) b!87987))

(assert (= (and b!87987 res!46011) b!87984))

(assert (= (and b!87984 res!46010) b!87989))

(assert (= (and b!87989 res!46014) b!87988))

(assert (= (and b!87988 res!46013) b!87992))

(assert (= (and d!58545 c!21741) b!87991))

(assert (= (and d!58545 (not c!21741)) b!87985))

(declare-fun m!84146 () Bool)

(assert (=> b!87993 m!84146))

(declare-fun m!84148 () Bool)

(assert (=> b!87984 m!84148))

(declare-fun m!84150 () Bool)

(assert (=> b!87988 m!84150))

(declare-fun m!84152 () Bool)

(assert (=> b!87992 m!84152))

(declare-fun m!84154 () Bool)

(assert (=> b!87986 m!84154))

(declare-fun m!84156 () Bool)

(assert (=> b!87989 m!84156))

(assert (=> b!87991 m!84150))

(declare-fun m!84158 () Bool)

(assert (=> b!87985 m!84158))

(declare-fun m!84160 () Bool)

(assert (=> b!87985 m!84160))

(declare-fun m!84162 () Bool)

(assert (=> b!87987 m!84162))

(declare-fun m!84164 () Bool)

(assert (=> d!58545 m!84164))

(assert (=> d!58545 m!84114))

(assert (=> start!11512 d!58545))

(declare-fun b!87998 () Bool)

(declare-fun e!47778 () Bool)

(declare-fun tp!17164 () Bool)

(assert (=> b!87998 (= e!47778 (and tp_is_empty!369 tp!17164))))

(assert (=> b!87939 (= tp!17157 e!47778)))

(assert (= (and b!87939 (is-Cons!679 (t!48646 lAnnSorted!3))) b!87998))

(declare-fun b!87999 () Bool)

(declare-fun e!47779 () Bool)

(declare-fun tp!17165 () Bool)

(assert (=> b!87999 (= e!47779 (and tp_is_empty!369 tp!17165))))

(assert (=> b!87941 (= tp!17161 e!47779)))

(assert (= (and b!87941 (is-Cons!679 (t!48646 lAnn!3))) b!87999))

(declare-fun b!88004 () Bool)

(declare-fun e!47782 () Bool)

(declare-fun tp!17168 () Bool)

(assert (=> b!88004 (= e!47782 (and tp_is_empty!369 tp!17168))))

(assert (=> b!87942 (= tp!17160 e!47782)))

(assert (= (and b!87942 (is-Cons!680 (t!48647 l!1547))) b!88004))

(declare-fun b_lambda!17469 () Bool)

(assert (= b_lambda!17467 (or (and start!11512 b_free!7493) b_lambda!17469)))

(push 1)

(assert (not b_next!39797))

(assert (not b!87993))

(assert (not b!87989))

(assert (not b!87986))

(assert (not b!87962))

(assert (not d!58545))

(assert (not b!87985))

(assert (not b_next!39801))

(assert b_and!59991)

(assert (not b!87954))

(assert tp_is_empty!369)

(assert (not d!58539))

(assert (not b!87963))

(assert (not b!87988))

(assert (not b!87987))

(assert (not b!87999))

(assert (not b!88004))

(assert (not d!58543))

(assert b_and!59995)

(assert (not b!87984))

(assert (not b!87992))

(assert (not b!87998))

(assert (not b!87951))

(assert (not b_lambda!17469))

(assert (not b!87991))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59995)

(assert b_and!59991)

(assert (not b_next!39801))

(assert (not b_next!39797))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11110 () Bool)

(assert start!11110)

(declare-fun b_free!7399 () Bool)

(declare-fun b_next!39547 () Bool)

(assert (=> start!11110 (= b_free!7399 (not b_next!39547))))

(declare-fun tp!17011 () Bool)

(declare-fun b_and!59009 () Bool)

(assert (=> start!11110 (= tp!17011 b_and!59009)))

(declare-fun b!85044 () Bool)

(assert (=> b!85044 true))

(declare-fun lambda!10696 () Int)

(declare-fun p!821 () Int)

(declare-fun b_next!39549 () Bool)

(assert (=> start!11110 (= b_next!39547 (or (and b!85044 (= lambda!10696 p!821)) b_next!39549))))

(declare-fun lambda!10697 () Int)

(assert (=> b!85044 (not (= lambda!10697 lambda!10696))))

(assert (=> b!85044 true))

(declare-fun b_next!39551 () Bool)

(assert (=> start!11110 (= b_next!39549 (or (and b!85044 (= lambda!10697 p!821)) b_next!39551))))

(declare-fun lambda!10698 () Int)

(assert (=> b!85044 (not (= lambda!10698 lambda!10696))))

(assert (=> b!85044 (not (= lambda!10698 lambda!10697))))

(assert (=> b!85044 true))

(declare-fun b_next!39553 () Bool)

(assert (=> start!11110 (= b_next!39551 (or (and b!85044 (= lambda!10698 p!821)) b_next!39553))))

(declare-fun b!85042 () Bool)

(declare-fun e!46078 () Bool)

(declare-datatypes () ((List!695 (Cons!652 (h!1025 Int) (t!48049 List!695)) (Nil!654))))

(declare-fun ls!77 () List!695)

(declare-fun filter_preserves_forall!0 (List!695 Int Int) Bool)

(assert (=> b!85042 (= e!46078 (filter_preserves_forall!0 (t!48049 ls!77) lambda!10698 p!821))))

(declare-fun b!85043 () Bool)

(declare-fun e!46077 () Bool)

(declare-fun lt!19825 () List!695)

(declare-fun lt!19826 () List!695)

(declare-fun lt!19822 () List!695)

(declare-fun append_preserves_forall!0 (List!695 List!695 Int) Bool)

(declare-fun ++!92 (List!695 List!695) List!695)

(declare-fun quickSort!0 (List!695) List!695)

(assert (=> b!85043 (= e!46077 (append_preserves_forall!0 (++!92 (quickSort!0 lt!19825) lt!19822) (quickSort!0 lt!19826) p!821))))

(declare-fun e!46076 () Bool)

(assert (=> b!85044 (= e!46076 e!46077)))

(declare-fun res!44070 () Bool)

(assert (=> b!85044 (=> (not res!44070) (not e!46077))))

(assert (=> b!85044 (= res!44070 (append_preserves_forall!0 (quickSort!0 lt!19825) lt!19822 p!821))))

(declare-fun lt!19823 () Bool)

(declare-fun e!46080 () Bool)

(assert (=> b!85044 (= lt!19823 e!46080)))

(declare-fun res!44072 () Bool)

(assert (=> b!85044 (=> (not res!44072) (not e!46080))))

(declare-fun sort_preserves_forall!0 (List!695 Int) Bool)

(assert (=> b!85044 (= res!44072 (sort_preserves_forall!0 lt!19825 p!821))))

(declare-fun lt!19824 () Bool)

(assert (=> b!85044 (= lt!19824 e!46078)))

(declare-fun res!44074 () Bool)

(assert (=> b!85044 (=> (not res!44074) (not e!46078))))

(assert (=> b!85044 (= res!44074 (filter_preserves_forall!0 (t!48049 ls!77) lambda!10696 p!821))))

(declare-fun filter!42 (List!695 Int) List!695)

(assert (=> b!85044 (= lt!19826 (filter!42 (t!48049 ls!77) lambda!10698))))

(assert (=> b!85044 (= lt!19822 (Cons!652 (h!1025 ls!77) (filter!42 (t!48049 ls!77) lambda!10697)))))

(assert (=> b!85044 (= lt!19825 (filter!42 (t!48049 ls!77) lambda!10696))))

(declare-fun b!85045 () Bool)

(assert (=> b!85045 (= e!46080 (sort_preserves_forall!0 lt!19826 p!821))))

(declare-fun b!85046 () Bool)

(declare-fun e!46079 () Bool)

(declare-fun forall!43 (List!695 Int) Bool)

(assert (=> b!85046 (= e!46079 (not (forall!43 (quickSort!0 ls!77) p!821)))))

(declare-fun b!85047 () Bool)

(declare-fun res!44076 () Bool)

(assert (=> b!85047 (=> (not res!44076) (not e!46079))))

(declare-fun tmp!527 () Bool)

(declare-fun t!47713 () Bool)

(declare-fun res!40808 () Bool)

(assert (=> b!85047 (= res!44076 (and (= res!40808 t!47713) (= tmp!527 res!40808)))))

(declare-fun b!85048 () Bool)

(declare-fun res!44071 () Bool)

(assert (=> b!85048 (=> (not res!44071) (not e!46079))))

(assert (=> b!85048 (= res!44071 (= t!47713 e!46076))))

(declare-fun res!44073 () Bool)

(assert (=> b!85048 (=> res!44073 e!46076)))

(assert (=> b!85048 (= res!44073 (or (is-Nil!654 ls!77) (and (is-Cons!652 ls!77) (is-Nil!654 (t!48049 ls!77)))))))

(declare-fun b!85049 () Bool)

(declare-fun res!44075 () Bool)

(assert (=> b!85049 (=> (not res!44075) (not e!46078))))

(assert (=> b!85049 (= res!44075 (filter_preserves_forall!0 (t!48049 ls!77) lambda!10697 p!821))))

(declare-fun res!44069 () Bool)

(assert (=> start!11110 (=> (not res!44069) (not e!46079))))

(assert (=> start!11110 (= res!44069 (forall!43 ls!77 p!821))))

(assert (=> start!11110 e!46079))

(assert (=> start!11110 true))

(assert (=> start!11110 tp!17011))

(assert (= (and start!11110 res!44069) b!85048))

(assert (= (and b!85048 (not res!44073)) b!85044))

(assert (= (and b!85044 res!44074) b!85049))

(assert (= (and b!85049 res!44075) b!85042))

(assert (= (and b!85044 res!44072) b!85045))

(assert (= (and b!85044 res!44070) b!85043))

(assert (= (and b!85048 res!44071) b!85047))

(assert (= (and b!85047 res!44076) b!85046))

(declare-fun m!80840 () Bool)

(assert (=> b!85042 m!80840))

(declare-fun m!80842 () Bool)

(assert (=> b!85043 m!80842))

(assert (=> b!85043 m!80842))

(declare-fun m!80844 () Bool)

(assert (=> b!85043 m!80844))

(declare-fun m!80846 () Bool)

(assert (=> b!85043 m!80846))

(assert (=> b!85043 m!80844))

(assert (=> b!85043 m!80846))

(declare-fun m!80848 () Bool)

(assert (=> b!85043 m!80848))

(declare-fun m!80850 () Bool)

(assert (=> start!11110 m!80850))

(declare-fun m!80852 () Bool)

(assert (=> b!85049 m!80852))

(declare-fun m!80854 () Bool)

(assert (=> b!85045 m!80854))

(declare-fun m!80856 () Bool)

(assert (=> b!85046 m!80856))

(assert (=> b!85046 m!80856))

(declare-fun m!80858 () Bool)

(assert (=> b!85046 m!80858))

(declare-fun m!80860 () Bool)

(assert (=> b!85044 m!80860))

(declare-fun m!80862 () Bool)

(assert (=> b!85044 m!80862))

(declare-fun m!80864 () Bool)

(assert (=> b!85044 m!80864))

(assert (=> b!85044 m!80842))

(declare-fun m!80866 () Bool)

(assert (=> b!85044 m!80866))

(assert (=> b!85044 m!80842))

(declare-fun m!80868 () Bool)

(assert (=> b!85044 m!80868))

(declare-fun m!80870 () Bool)

(assert (=> b!85044 m!80870))

(push 1)

(assert (not b!85044))

(assert (not b!85045))

(assert (not b!85046))

(assert (not b!85049))

(assert (not b!85043))

(assert (not b_next!39553))

(assert (not b!85042))

(assert b_and!59009)

(assert (not start!11110))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59009)

(assert (not b_next!39553))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57173 () Bool)

(declare-fun res!44081 () Bool)

(declare-fun e!46085 () Bool)

(assert (=> d!57173 (=> res!44081 e!46085)))

(assert (=> d!57173 (= res!44081 (is-Nil!654 ls!77))))

(assert (=> d!57173 (= (forall!43 ls!77 p!821) e!46085)))

(declare-fun b!85056 () Bool)

(declare-fun e!46086 () Bool)

(assert (=> b!85056 (= e!46085 e!46086)))

(declare-fun res!44082 () Bool)

(assert (=> b!85056 (=> (not res!44082) (not e!46086))))

(declare-fun dynLambda!1006 (Int Int) Bool)

(assert (=> b!85056 (= res!44082 (dynLambda!1006 p!821 (h!1025 ls!77)))))

(declare-fun b!85057 () Bool)

(assert (=> b!85057 (= e!46086 (forall!43 (t!48049 ls!77) p!821))))

(assert (= (and d!57173 (not res!44081)) b!85056))

(assert (= (and b!85056 res!44082) b!85057))

(declare-fun b_lambda!16707 () Bool)

(assert (=> (not b_lambda!16707) (not b!85056)))

(declare-fun t!48051 () Bool)

(declare-fun tb!46289 () Bool)

(assert (=> (and start!11110 (= p!821 p!821) t!48051) tb!46289))

(declare-fun result!46719 () Bool)

(assert (=> tb!46289 (= result!46719 true)))

(assert (=> b!85056 t!48051))

(declare-fun b_and!59011 () Bool)

(assert (= b_and!59009 (and (=> t!48051 result!46719) b_and!59011)))

(declare-fun m!80872 () Bool)

(assert (=> b!85056 m!80872))

(declare-fun m!80874 () Bool)

(assert (=> b!85057 m!80874))

(assert (=> start!11110 d!57173))

(declare-fun d!57175 () Bool)

(declare-fun e!46092 () Bool)

(assert (=> d!57175 e!46092))

(declare-fun c!21159 () Bool)

(assert (=> d!57175 (= c!21159 (is-Cons!652 (++!92 (quickSort!0 lt!19825) lt!19822)))))

(declare-fun e!46091 () Bool)

(assert (=> d!57175 e!46091))

(declare-fun res!44085 () Bool)

(assert (=> d!57175 (=> (not res!44085) (not e!46091))))

(assert (=> d!57175 (= res!44085 (forall!43 (++!92 (quickSort!0 lt!19825) lt!19822) p!821))))

(assert (=> d!57175 (= (append_preserves_forall!0 (++!92 (quickSort!0 lt!19825) lt!19822) (quickSort!0 lt!19826) p!821) true)))

(declare-fun b!85064 () Bool)

(assert (=> b!85064 (= e!46091 (forall!43 (quickSort!0 lt!19826) p!821))))

(declare-fun b!85065 () Bool)

(assert (=> b!85065 (= e!46092 (forall!43 (++!92 (++!92 (quickSort!0 lt!19825) lt!19822) (quickSort!0 lt!19826)) p!821))))

(declare-fun lt!19829 () Bool)

(assert (=> b!85065 (= lt!19829 (append_preserves_forall!0 (t!48049 (++!92 (quickSort!0 lt!19825) lt!19822)) (quickSort!0 lt!19826) p!821))))

(declare-fun b!85066 () Bool)

(assert (=> b!85066 (= e!46092 (forall!43 (++!92 (++!92 (quickSort!0 lt!19825) lt!19822) (quickSort!0 lt!19826)) p!821))))

(assert (= (and d!57175 res!44085) b!85064))

(assert (= (and d!57175 c!21159) b!85065))

(assert (= (and d!57175 (not c!21159)) b!85066))

(assert (=> d!57175 m!80844))

(declare-fun m!80876 () Bool)

(assert (=> d!57175 m!80876))

(assert (=> b!85064 m!80846))

(declare-fun m!80878 () Bool)

(assert (=> b!85064 m!80878))

(assert (=> b!85065 m!80844))

(assert (=> b!85065 m!80846))

(declare-fun m!80880 () Bool)

(assert (=> b!85065 m!80880))

(assert (=> b!85065 m!80880))

(declare-fun m!80882 () Bool)

(assert (=> b!85065 m!80882))

(assert (=> b!85065 m!80846))

(declare-fun m!80884 () Bool)

(assert (=> b!85065 m!80884))

(assert (=> b!85066 m!80844))

(assert (=> b!85066 m!80846))

(assert (=> b!85066 m!80880))

(assert (=> b!85066 m!80880))

(assert (=> b!85066 m!80882))

(assert (=> b!85043 d!57175))

(declare-fun b!85075 () Bool)

(declare-fun e!46098 () List!695)

(assert (=> b!85075 (= e!46098 lt!19822)))

(declare-fun b!85077 () Bool)

(declare-fun res!44092 () Bool)

(declare-fun e!46097 () Bool)

(assert (=> b!85077 (=> (not res!44092) (not e!46097))))

(declare-fun lt!19832 () List!695)

(declare-fun size!677 (List!695) Int)

(assert (=> b!85077 (= res!44092 (= (size!677 lt!19832) (+ (size!677 (quickSort!0 lt!19825)) (size!677 lt!19822))))))

(declare-fun b!85076 () Bool)

(assert (=> b!85076 (= e!46098 (Cons!652 (h!1025 (quickSort!0 lt!19825)) (++!92 (t!48049 (quickSort!0 lt!19825)) lt!19822)))))

(declare-fun d!57177 () Bool)

(assert (=> d!57177 e!46097))

(declare-fun res!44091 () Bool)

(assert (=> d!57177 (=> (not res!44091) (not e!46097))))

(declare-fun content!148 (List!695) (Set Int))

(assert (=> d!57177 (= res!44091 (= (content!148 lt!19832) (union (content!148 (quickSort!0 lt!19825)) (content!148 lt!19822))))))

(assert (=> d!57177 (= lt!19832 e!46098)))

(declare-fun c!21162 () Bool)

(assert (=> d!57177 (= c!21162 (is-Nil!654 (quickSort!0 lt!19825)))))

(assert (=> d!57177 (= (++!92 (quickSort!0 lt!19825) lt!19822) lt!19832)))

(declare-fun b!85078 () Bool)

(assert (=> b!85078 (= e!46097 (or (not (= lt!19822 Nil!654)) (= lt!19832 (quickSort!0 lt!19825))))))

(assert (= (and d!57177 c!21162) b!85075))

(assert (= (and d!57177 (not c!21162)) b!85076))

(assert (= (and d!57177 res!44091) b!85077))

(assert (= (and b!85077 res!44092) b!85078))

(declare-fun m!80886 () Bool)

(assert (=> b!85077 m!80886))

(assert (=> b!85077 m!80842))

(declare-fun m!80888 () Bool)

(assert (=> b!85077 m!80888))

(declare-fun m!80890 () Bool)

(assert (=> b!85077 m!80890))

(declare-fun m!80892 () Bool)

(assert (=> b!85076 m!80892))

(declare-fun m!80894 () Bool)

(assert (=> d!57177 m!80894))

(assert (=> d!57177 m!80842))

(declare-fun m!80896 () Bool)

(assert (=> d!57177 m!80896))

(declare-fun m!80898 () Bool)

(assert (=> d!57177 m!80898))

(assert (=> b!85043 d!57177))

(declare-fun bs!40960 () Bool)

(declare-fun b!85090 () Bool)

(assert (= bs!40960 (and b!85090 b!85044)))

(declare-fun lambda!10705 () Int)

(assert (=> bs!40960 (= (= (h!1025 lt!19825) (h!1025 ls!77)) (= lambda!10705 lambda!10696))))

(assert (=> bs!40960 (not (= lambda!10705 lambda!10697))))

(assert (=> bs!40960 (not (= lambda!10705 lambda!10698))))

(assert (=> b!85090 true))

(declare-fun b_next!39555 () Bool)

(assert (=> start!11110 (= b_next!39553 (or (and b!85090 (= lambda!10705 p!821)) b_next!39555))))

(declare-fun lambda!10706 () Int)

(assert (=> bs!40960 (not (= lambda!10706 lambda!10696))))

(assert (=> bs!40960 (= (= (h!1025 lt!19825) (h!1025 ls!77)) (= lambda!10706 lambda!10697))))

(assert (=> bs!40960 (not (= lambda!10706 lambda!10698))))

(assert (=> b!85090 (not (= lambda!10706 lambda!10705))))

(assert (=> b!85090 true))

(declare-fun b_next!39557 () Bool)

(assert (=> start!11110 (= b_next!39555 (or (and b!85090 (= lambda!10706 p!821)) b_next!39557))))

(declare-fun lambda!10707 () Int)

(assert (=> bs!40960 (= (= (h!1025 lt!19825) (h!1025 ls!77)) (= lambda!10707 lambda!10698))))

(assert (=> bs!40960 (not (= lambda!10707 lambda!10697))))

(assert (=> bs!40960 (not (= lambda!10707 lambda!10696))))

(assert (=> b!85090 (not (= lambda!10707 lambda!10706))))

(assert (=> b!85090 (not (= lambda!10707 lambda!10705))))

(assert (=> b!85090 true))

(declare-fun b_next!39559 () Bool)

(assert (=> start!11110 (= b_next!39557 (or (and b!85090 (= lambda!10707 p!821)) b_next!39559))))

(declare-fun e!46104 () List!695)

(assert (=> b!85090 (= e!46104 (++!92 (++!92 (quickSort!0 (filter!42 (t!48049 lt!19825) lambda!10705)) (Cons!652 (h!1025 lt!19825) (filter!42 (t!48049 lt!19825) lambda!10706))) (quickSort!0 (filter!42 (t!48049 lt!19825) lambda!10707))))))

(declare-fun b!85088 () Bool)

(declare-fun e!46103 () List!695)

(assert (=> b!85088 (= e!46103 e!46104)))

(declare-fun c!21168 () Bool)

(assert (=> b!85088 (= c!21168 (and (is-Cons!652 lt!19825) (is-Nil!654 (t!48049 lt!19825))))))

(declare-fun b!85089 () Bool)

(assert (=> b!85089 (= e!46104 lt!19825)))

(declare-fun b!85087 () Bool)

(assert (=> b!85087 (= e!46103 Nil!654)))

(declare-fun d!57179 () Bool)

(declare-fun c!21167 () Bool)

(assert (=> d!57179 (= c!21167 (is-Nil!654 lt!19825))))

(assert (=> d!57179 (= (quickSort!0 lt!19825) e!46103)))

(assert (= (and b!85088 c!21168) b!85089))

(assert (= (and b!85088 (not c!21168)) b!85090))

(assert (= (and d!57179 c!21167) b!85087))

(assert (= (and d!57179 (not c!21167)) b!85088))

(declare-fun m!80900 () Bool)

(assert (=> b!85090 m!80900))

(declare-fun m!80902 () Bool)

(assert (=> b!85090 m!80902))

(declare-fun m!80904 () Bool)

(assert (=> b!85090 m!80904))

(assert (=> b!85090 m!80900))

(declare-fun m!80906 () Bool)

(assert (=> b!85090 m!80906))

(declare-fun m!80908 () Bool)

(assert (=> b!85090 m!80908))

(declare-fun m!80910 () Bool)

(assert (=> b!85090 m!80910))

(assert (=> b!85090 m!80904))

(declare-fun m!80912 () Bool)

(assert (=> b!85090 m!80912))

(assert (=> b!85090 m!80906))

(assert (=> b!85090 m!80910))

(assert (=> b!85090 m!80902))

(assert (=> b!85043 d!57179))

(declare-fun bs!40961 () Bool)

(declare-fun b!85094 () Bool)

(assert (= bs!40961 (and b!85094 b!85044)))

(declare-fun lambda!10708 () Int)

(assert (=> bs!40961 (not (= lambda!10708 lambda!10698))))

(assert (=> bs!40961 (not (= lambda!10708 lambda!10697))))

(assert (=> bs!40961 (= (= (h!1025 lt!19826) (h!1025 ls!77)) (= lambda!10708 lambda!10696))))

(declare-fun bs!40962 () Bool)

(assert (= bs!40962 (and b!85094 b!85090)))

(assert (=> bs!40962 (not (= lambda!10708 lambda!10707))))

(assert (=> bs!40962 (not (= lambda!10708 lambda!10706))))

(assert (=> bs!40962 (= (= (h!1025 lt!19826) (h!1025 lt!19825)) (= lambda!10708 lambda!10705))))

(assert (=> b!85094 true))

(declare-fun b_next!39561 () Bool)

(assert (=> start!11110 (= b_next!39559 (or (and b!85094 (= lambda!10708 p!821)) b_next!39561))))

(declare-fun lambda!10709 () Int)

(assert (=> bs!40961 (not (= lambda!10709 lambda!10698))))

(assert (=> bs!40961 (= (= (h!1025 lt!19826) (h!1025 ls!77)) (= lambda!10709 lambda!10697))))

(assert (=> bs!40961 (not (= lambda!10709 lambda!10696))))

(assert (=> b!85094 (not (= lambda!10709 lambda!10708))))

(assert (=> bs!40962 (not (= lambda!10709 lambda!10707))))

(assert (=> bs!40962 (= (= (h!1025 lt!19826) (h!1025 lt!19825)) (= lambda!10709 lambda!10706))))

(assert (=> bs!40962 (not (= lambda!10709 lambda!10705))))

(assert (=> b!85094 true))

(declare-fun b_next!39563 () Bool)

(assert (=> start!11110 (= b_next!39561 (or (and b!85094 (= lambda!10709 p!821)) b_next!39563))))

(declare-fun lambda!10710 () Int)

(assert (=> bs!40961 (= (= (h!1025 lt!19826) (h!1025 ls!77)) (= lambda!10710 lambda!10698))))

(assert (=> bs!40961 (not (= lambda!10710 lambda!10697))))

(assert (=> bs!40961 (not (= lambda!10710 lambda!10696))))

(assert (=> b!85094 (not (= lambda!10710 lambda!10709))))

(assert (=> b!85094 (not (= lambda!10710 lambda!10708))))

(assert (=> bs!40962 (= (= (h!1025 lt!19826) (h!1025 lt!19825)) (= lambda!10710 lambda!10707))))

(assert (=> bs!40962 (not (= lambda!10710 lambda!10706))))

(assert (=> bs!40962 (not (= lambda!10710 lambda!10705))))

(assert (=> b!85094 true))

(declare-fun b_next!39565 () Bool)

(assert (=> start!11110 (= b_next!39563 (or (and b!85094 (= lambda!10710 p!821)) b_next!39565))))

(declare-fun e!46106 () List!695)

(assert (=> b!85094 (= e!46106 (++!92 (++!92 (quickSort!0 (filter!42 (t!48049 lt!19826) lambda!10708)) (Cons!652 (h!1025 lt!19826) (filter!42 (t!48049 lt!19826) lambda!10709))) (quickSort!0 (filter!42 (t!48049 lt!19826) lambda!10710))))))

(declare-fun b!85092 () Bool)

(declare-fun e!46105 () List!695)

(assert (=> b!85092 (= e!46105 e!46106)))

(declare-fun c!21170 () Bool)

(assert (=> b!85092 (= c!21170 (and (is-Cons!652 lt!19826) (is-Nil!654 (t!48049 lt!19826))))))

(declare-fun b!85093 () Bool)

(assert (=> b!85093 (= e!46106 lt!19826)))

(declare-fun b!85091 () Bool)

(assert (=> b!85091 (= e!46105 Nil!654)))

(declare-fun d!57181 () Bool)

(declare-fun c!21169 () Bool)

(assert (=> d!57181 (= c!21169 (is-Nil!654 lt!19826))))

(assert (=> d!57181 (= (quickSort!0 lt!19826) e!46105)))

(assert (= (and b!85092 c!21170) b!85093))

(assert (= (and b!85092 (not c!21170)) b!85094))

(assert (= (and d!57181 c!21169) b!85091))

(assert (= (and d!57181 (not c!21169)) b!85092))

(declare-fun m!80914 () Bool)

(assert (=> b!85094 m!80914))

(declare-fun m!80916 () Bool)

(assert (=> b!85094 m!80916))

(declare-fun m!80918 () Bool)

(assert (=> b!85094 m!80918))

(assert (=> b!85094 m!80914))

(declare-fun m!80920 () Bool)

(assert (=> b!85094 m!80920))

(declare-fun m!80922 () Bool)

(assert (=> b!85094 m!80922))

(declare-fun m!80924 () Bool)

(assert (=> b!85094 m!80924))

(assert (=> b!85094 m!80918))

(declare-fun m!80926 () Bool)

(assert (=> b!85094 m!80926))

(assert (=> b!85094 m!80920))

(assert (=> b!85094 m!80924))

(assert (=> b!85094 m!80916))

(assert (=> b!85043 d!57181))

(declare-fun d!57183 () Bool)

(declare-fun e!46109 () Bool)

(assert (=> d!57183 e!46109))

(declare-fun c!21173 () Bool)

(assert (=> d!57183 (= c!21173 (is-Cons!652 (t!48049 ls!77)))))

(assert (=> d!57183 (forall!43 (t!48049 ls!77) p!821)))

(assert (=> d!57183 (= (filter_preserves_forall!0 (t!48049 ls!77) lambda!10698 p!821) true)))

(declare-fun b!85099 () Bool)

(assert (=> b!85099 (= e!46109 (forall!43 (filter!42 (t!48049 ls!77) lambda!10698) p!821))))

(declare-fun lt!19835 () Bool)

(assert (=> b!85099 (= lt!19835 (filter_preserves_forall!0 (t!48049 (t!48049 ls!77)) lambda!10698 p!821))))

(declare-fun b!85100 () Bool)

(assert (=> b!85100 (= e!46109 (forall!43 (filter!42 (t!48049 ls!77) lambda!10698) p!821))))

(assert (= (and d!57183 c!21173) b!85099))

(assert (= (and d!57183 (not c!21173)) b!85100))

(assert (=> d!57183 m!80874))

(assert (=> b!85099 m!80860))

(assert (=> b!85099 m!80860))

(declare-fun m!80928 () Bool)

(assert (=> b!85099 m!80928))

(declare-fun m!80930 () Bool)

(assert (=> b!85099 m!80930))

(assert (=> b!85100 m!80860))

(assert (=> b!85100 m!80860))

(assert (=> b!85100 m!80928))

(assert (=> b!85042 d!57183))

(declare-fun bs!40963 () Bool)

(declare-fun b!85115 () Bool)

(assert (= bs!40963 (and b!85115 b!85044)))

(declare-fun lambda!10723 () Int)

(assert (=> bs!40963 (not (= lambda!10723 lambda!10698))))

(assert (=> bs!40963 (not (= lambda!10723 lambda!10697))))

(assert (=> bs!40963 (= (= (h!1025 lt!19826) (h!1025 ls!77)) (= lambda!10723 lambda!10696))))

(declare-fun bs!40964 () Bool)

(assert (= bs!40964 (and b!85115 b!85094)))

(assert (=> bs!40964 (not (= lambda!10723 lambda!10710))))

(assert (=> bs!40964 (not (= lambda!10723 lambda!10709))))

(assert (=> bs!40964 (= lambda!10723 lambda!10708)))

(declare-fun bs!40965 () Bool)

(assert (= bs!40965 (and b!85115 b!85090)))

(assert (=> bs!40965 (not (= lambda!10723 lambda!10707))))

(assert (=> bs!40965 (not (= lambda!10723 lambda!10706))))

(assert (=> bs!40965 (= (= (h!1025 lt!19826) (h!1025 lt!19825)) (= lambda!10723 lambda!10705))))

(assert (=> b!85115 true))

(declare-fun b_next!39567 () Bool)

(assert (=> start!11110 (= b_next!39565 (or (and b!85115 (= lambda!10723 p!821)) b_next!39567))))

(declare-fun lambda!10724 () Int)

(assert (=> bs!40963 (not (= lambda!10724 lambda!10698))))

(assert (=> bs!40963 (= (= (h!1025 lt!19826) (h!1025 ls!77)) (= lambda!10724 lambda!10697))))

(assert (=> bs!40963 (not (= lambda!10724 lambda!10696))))

(assert (=> bs!40964 (not (= lambda!10724 lambda!10710))))

(assert (=> bs!40964 (= lambda!10724 lambda!10709)))

(assert (=> bs!40964 (not (= lambda!10724 lambda!10708))))

(assert (=> b!85115 (not (= lambda!10724 lambda!10723))))

(assert (=> bs!40965 (not (= lambda!10724 lambda!10707))))

(assert (=> bs!40965 (= (= (h!1025 lt!19826) (h!1025 lt!19825)) (= lambda!10724 lambda!10706))))

(assert (=> bs!40965 (not (= lambda!10724 lambda!10705))))

(assert (=> b!85115 true))

(declare-fun b_next!39569 () Bool)

(assert (=> start!11110 (= b_next!39567 (or (and b!85115 (= lambda!10724 p!821)) b_next!39569))))

(declare-fun lambda!10725 () Int)

(assert (=> bs!40963 (= (= (h!1025 lt!19826) (h!1025 ls!77)) (= lambda!10725 lambda!10698))))

(assert (=> bs!40963 (not (= lambda!10725 lambda!10697))))

(assert (=> bs!40963 (not (= lambda!10725 lambda!10696))))

(assert (=> bs!40964 (= lambda!10725 lambda!10710)))

(assert (=> bs!40964 (not (= lambda!10725 lambda!10709))))

(assert (=> bs!40964 (not (= lambda!10725 lambda!10708))))

(assert (=> b!85115 (not (= lambda!10725 lambda!10724))))

(assert (=> b!85115 (not (= lambda!10725 lambda!10723))))

(assert (=> bs!40965 (= (= (h!1025 lt!19826) (h!1025 lt!19825)) (= lambda!10725 lambda!10707))))

(assert (=> bs!40965 (not (= lambda!10725 lambda!10706))))

(assert (=> bs!40965 (not (= lambda!10725 lambda!10705))))

(assert (=> b!85115 true))

(declare-fun b_next!39571 () Bool)

(assert (=> start!11110 (= b_next!39569 (or (and b!85115 (= lambda!10725 p!821)) b_next!39571))))

(declare-fun b!85111 () Bool)

(declare-fun e!46124 () Bool)

(declare-fun lt!19851 () List!695)

(assert (=> b!85111 (= e!46124 (sort_preserves_forall!0 lt!19851 p!821))))

(declare-fun e!46122 () Bool)

(declare-fun b!85112 () Bool)

(assert (=> b!85112 (= e!46122 (filter_preserves_forall!0 (t!48049 lt!19826) lambda!10725 p!821))))

(declare-fun e!46121 () Bool)

(declare-fun b!85113 () Bool)

(assert (=> b!85113 (= e!46121 (filter_preserves_forall!0 (t!48049 lt!19826) lambda!10724 p!821))))

(declare-fun e!46123 () Bool)

(declare-fun lt!19849 () List!695)

(declare-fun b!85114 () Bool)

(declare-fun lt!19850 () List!695)

(assert (=> b!85114 (= e!46123 (append_preserves_forall!0 (++!92 (quickSort!0 lt!19849) lt!19850) (quickSort!0 lt!19851) p!821))))

(declare-fun e!46120 () Bool)

(assert (=> b!85115 (= e!46120 e!46123)))

(declare-fun res!44109 () Bool)

(assert (=> b!85115 (=> (not res!44109) (not e!46123))))

(assert (=> b!85115 (= res!44109 (append_preserves_forall!0 (quickSort!0 lt!19849) lt!19850 p!821))))

(declare-fun lt!19852 () Bool)

(assert (=> b!85115 (= lt!19852 e!46124)))

(declare-fun res!44110 () Bool)

(assert (=> b!85115 (=> (not res!44110) (not e!46124))))

(assert (=> b!85115 (= res!44110 (sort_preserves_forall!0 lt!19849 p!821))))

(declare-fun lt!19848 () Bool)

(assert (=> b!85115 (= lt!19848 e!46122)))

(declare-fun res!44111 () Bool)

(assert (=> b!85115 (=> (not res!44111) (not e!46122))))

(assert (=> b!85115 (= res!44111 e!46121)))

(declare-fun res!44108 () Bool)

(assert (=> b!85115 (=> (not res!44108) (not e!46121))))

(assert (=> b!85115 (= res!44108 (filter_preserves_forall!0 (t!48049 lt!19826) lambda!10723 p!821))))

(assert (=> b!85115 (= lt!19851 (filter!42 (t!48049 lt!19826) lambda!10725))))

(assert (=> b!85115 (= lt!19850 (Cons!652 (h!1025 lt!19826) (filter!42 (t!48049 lt!19826) lambda!10724)))))

(assert (=> b!85115 (= lt!19849 (filter!42 (t!48049 lt!19826) lambda!10723))))

(declare-fun d!57185 () Bool)

(assert (=> d!57185 (forall!43 (quickSort!0 lt!19826) p!821)))

(declare-fun lt!19853 () Bool)

(assert (=> d!57185 (= lt!19853 e!46120)))

(declare-fun res!44112 () Bool)

(assert (=> d!57185 (=> res!44112 e!46120)))

(assert (=> d!57185 (= res!44112 (or (is-Nil!654 lt!19826) (and (is-Cons!652 lt!19826) (is-Nil!654 (t!48049 lt!19826)))))))

(assert (=> d!57185 (forall!43 lt!19826 p!821)))

(assert (=> d!57185 (= (sort_preserves_forall!0 lt!19826 p!821) true)))

(assert (= (and d!57185 (not res!44112)) b!85115))

(assert (= (and b!85115 res!44108) b!85113))

(assert (= (and b!85115 res!44111) b!85112))

(assert (= (and b!85115 res!44110) b!85111))

(assert (= (and b!85115 res!44109) b!85114))

(declare-fun m!80932 () Bool)

(assert (=> b!85115 m!80932))

(declare-fun m!80934 () Bool)

(assert (=> b!85115 m!80934))

(declare-fun m!80936 () Bool)

(assert (=> b!85115 m!80936))

(declare-fun m!80938 () Bool)

(assert (=> b!85115 m!80938))

(assert (=> b!85115 m!80934))

(declare-fun m!80940 () Bool)

(assert (=> b!85115 m!80940))

(declare-fun m!80942 () Bool)

(assert (=> b!85115 m!80942))

(declare-fun m!80944 () Bool)

(assert (=> b!85115 m!80944))

(declare-fun m!80946 () Bool)

(assert (=> b!85111 m!80946))

(assert (=> d!57185 m!80846))

(assert (=> d!57185 m!80846))

(assert (=> d!57185 m!80878))

(declare-fun m!80948 () Bool)

(assert (=> d!57185 m!80948))

(declare-fun m!80950 () Bool)

(assert (=> b!85112 m!80950))

(declare-fun m!80952 () Bool)

(assert (=> b!85113 m!80952))

(assert (=> b!85114 m!80934))

(assert (=> b!85114 m!80934))

(declare-fun m!80954 () Bool)

(assert (=> b!85114 m!80954))

(declare-fun m!80956 () Bool)

(assert (=> b!85114 m!80956))

(assert (=> b!85114 m!80954))

(assert (=> b!85114 m!80956))

(declare-fun m!80958 () Bool)

(assert (=> b!85114 m!80958))

(assert (=> b!85045 d!57185))

(declare-fun d!57187 () Bool)

(declare-fun e!46125 () Bool)

(assert (=> d!57187 e!46125))

(declare-fun c!21174 () Bool)

(assert (=> d!57187 (= c!21174 (is-Cons!652 (t!48049 ls!77)))))

(assert (=> d!57187 (forall!43 (t!48049 ls!77) p!821)))

(assert (=> d!57187 (= (filter_preserves_forall!0 (t!48049 ls!77) lambda!10697 p!821) true)))

(declare-fun b!85116 () Bool)

(assert (=> b!85116 (= e!46125 (forall!43 (filter!42 (t!48049 ls!77) lambda!10697) p!821))))

(declare-fun lt!19854 () Bool)

(assert (=> b!85116 (= lt!19854 (filter_preserves_forall!0 (t!48049 (t!48049 ls!77)) lambda!10697 p!821))))

(declare-fun b!85117 () Bool)

(assert (=> b!85117 (= e!46125 (forall!43 (filter!42 (t!48049 ls!77) lambda!10697) p!821))))

(assert (= (and d!57187 c!21174) b!85116))

(assert (= (and d!57187 (not c!21174)) b!85117))

(assert (=> d!57187 m!80874))

(assert (=> b!85116 m!80864))

(assert (=> b!85116 m!80864))

(declare-fun m!80960 () Bool)

(assert (=> b!85116 m!80960))

(declare-fun m!80962 () Bool)

(assert (=> b!85116 m!80962))

(assert (=> b!85117 m!80864))

(assert (=> b!85117 m!80864))

(assert (=> b!85117 m!80960))

(assert (=> b!85049 d!57187))

(declare-fun d!57189 () Bool)

(declare-fun res!44113 () Bool)

(declare-fun e!46126 () Bool)

(assert (=> d!57189 (=> res!44113 e!46126)))

(assert (=> d!57189 (= res!44113 (is-Nil!654 (quickSort!0 ls!77)))))

(assert (=> d!57189 (= (forall!43 (quickSort!0 ls!77) p!821) e!46126)))

(declare-fun b!85118 () Bool)

(declare-fun e!46127 () Bool)

(assert (=> b!85118 (= e!46126 e!46127)))

(declare-fun res!44114 () Bool)

(assert (=> b!85118 (=> (not res!44114) (not e!46127))))

(assert (=> b!85118 (= res!44114 (dynLambda!1006 p!821 (h!1025 (quickSort!0 ls!77))))))

(declare-fun b!85119 () Bool)

(assert (=> b!85119 (= e!46127 (forall!43 (t!48049 (quickSort!0 ls!77)) p!821))))

(assert (= (and d!57189 (not res!44113)) b!85118))

(assert (= (and b!85118 res!44114) b!85119))

(declare-fun b_lambda!16709 () Bool)

(assert (=> (not b_lambda!16709) (not b!85118)))

(declare-fun t!48058 () Bool)

(declare-fun tb!46291 () Bool)

(assert (=> (and start!11110 (= p!821 p!821) t!48058) tb!46291))

(declare-fun result!46721 () Bool)

(assert (=> tb!46291 (= result!46721 true)))

(assert (=> b!85118 t!48058))

(declare-fun b_and!59013 () Bool)

(assert (= b_and!59011 (and (=> t!48058 result!46721) b_and!59013)))

(declare-fun m!80964 () Bool)

(assert (=> b!85118 m!80964))

(declare-fun m!80966 () Bool)

(assert (=> b!85119 m!80966))

(assert (=> b!85046 d!57189))

(declare-fun bs!40966 () Bool)

(declare-fun b!85123 () Bool)

(assert (= bs!40966 (and b!85123 b!85044)))

(declare-fun lambda!10726 () Int)

(assert (=> bs!40966 (not (= lambda!10726 lambda!10698))))

(assert (=> bs!40966 (not (= lambda!10726 lambda!10697))))

(assert (=> bs!40966 (= lambda!10726 lambda!10696)))

(declare-fun bs!40967 () Bool)

(assert (= bs!40967 (and b!85123 b!85094)))

(assert (=> bs!40967 (not (= lambda!10726 lambda!10710))))

(assert (=> bs!40967 (not (= lambda!10726 lambda!10709))))

(assert (=> bs!40967 (= (= (h!1025 ls!77) (h!1025 lt!19826)) (= lambda!10726 lambda!10708))))

(declare-fun bs!40968 () Bool)

(assert (= bs!40968 (and b!85123 b!85115)))

(assert (=> bs!40968 (not (= lambda!10726 lambda!10725))))

(assert (=> bs!40968 (not (= lambda!10726 lambda!10724))))

(assert (=> bs!40968 (= (= (h!1025 ls!77) (h!1025 lt!19826)) (= lambda!10726 lambda!10723))))

(declare-fun bs!40969 () Bool)

(assert (= bs!40969 (and b!85123 b!85090)))

(assert (=> bs!40969 (not (= lambda!10726 lambda!10707))))

(assert (=> bs!40969 (not (= lambda!10726 lambda!10706))))

(assert (=> bs!40969 (= (= (h!1025 ls!77) (h!1025 lt!19825)) (= lambda!10726 lambda!10705))))

(assert (=> b!85123 true))

(declare-fun b_next!39573 () Bool)

(assert (=> start!11110 (= b_next!39571 (or (and b!85123 (= lambda!10726 p!821)) b_next!39573))))

(declare-fun lambda!10727 () Int)

(assert (=> b!85123 (not (= lambda!10727 lambda!10726))))

(assert (=> bs!40966 (not (= lambda!10727 lambda!10698))))

(assert (=> bs!40966 (= lambda!10727 lambda!10697)))

(assert (=> bs!40966 (not (= lambda!10727 lambda!10696))))

(assert (=> bs!40967 (not (= lambda!10727 lambda!10710))))

(assert (=> bs!40967 (= (= (h!1025 ls!77) (h!1025 lt!19826)) (= lambda!10727 lambda!10709))))

(assert (=> bs!40967 (not (= lambda!10727 lambda!10708))))

(assert (=> bs!40968 (not (= lambda!10727 lambda!10725))))

(assert (=> bs!40968 (= (= (h!1025 ls!77) (h!1025 lt!19826)) (= lambda!10727 lambda!10724))))

(assert (=> bs!40968 (not (= lambda!10727 lambda!10723))))

(assert (=> bs!40969 (not (= lambda!10727 lambda!10707))))

(assert (=> bs!40969 (= (= (h!1025 ls!77) (h!1025 lt!19825)) (= lambda!10727 lambda!10706))))

(assert (=> bs!40969 (not (= lambda!10727 lambda!10705))))

(assert (=> b!85123 true))

(declare-fun b_next!39575 () Bool)

(assert (=> start!11110 (= b_next!39573 (or (and b!85123 (= lambda!10727 p!821)) b_next!39575))))

(declare-fun lambda!10728 () Int)

(assert (=> b!85123 (not (= lambda!10728 lambda!10727))))

(assert (=> b!85123 (not (= lambda!10728 lambda!10726))))

(assert (=> bs!40966 (= lambda!10728 lambda!10698)))

(assert (=> bs!40966 (not (= lambda!10728 lambda!10697))))

(assert (=> bs!40966 (not (= lambda!10728 lambda!10696))))

(assert (=> bs!40967 (= (= (h!1025 ls!77) (h!1025 lt!19826)) (= lambda!10728 lambda!10710))))

(assert (=> bs!40967 (not (= lambda!10728 lambda!10709))))

(assert (=> bs!40967 (not (= lambda!10728 lambda!10708))))

(assert (=> bs!40968 (= (= (h!1025 ls!77) (h!1025 lt!19826)) (= lambda!10728 lambda!10725))))

(assert (=> bs!40968 (not (= lambda!10728 lambda!10724))))

(assert (=> bs!40968 (not (= lambda!10728 lambda!10723))))

(assert (=> bs!40969 (= (= (h!1025 ls!77) (h!1025 lt!19825)) (= lambda!10728 lambda!10707))))

(assert (=> bs!40969 (not (= lambda!10728 lambda!10706))))

(assert (=> bs!40969 (not (= lambda!10728 lambda!10705))))

(assert (=> b!85123 true))

(declare-fun b_next!39577 () Bool)

(assert (=> start!11110 (= b_next!39575 (or (and b!85123 (= lambda!10728 p!821)) b_next!39577))))

(declare-fun e!46129 () List!695)

(assert (=> b!85123 (= e!46129 (++!92 (++!92 (quickSort!0 (filter!42 (t!48049 ls!77) lambda!10726)) (Cons!652 (h!1025 ls!77) (filter!42 (t!48049 ls!77) lambda!10727))) (quickSort!0 (filter!42 (t!48049 ls!77) lambda!10728))))))

(declare-fun b!85121 () Bool)

(declare-fun e!46128 () List!695)

(assert (=> b!85121 (= e!46128 e!46129)))

(declare-fun c!21176 () Bool)

(assert (=> b!85121 (= c!21176 (and (is-Cons!652 ls!77) (is-Nil!654 (t!48049 ls!77))))))

(declare-fun b!85122 () Bool)

(assert (=> b!85122 (= e!46129 ls!77)))

(declare-fun b!85120 () Bool)

(assert (=> b!85120 (= e!46128 Nil!654)))

(declare-fun d!57191 () Bool)

(declare-fun c!21175 () Bool)

(assert (=> d!57191 (= c!21175 (is-Nil!654 ls!77))))

(assert (=> d!57191 (= (quickSort!0 ls!77) e!46128)))

(assert (= (and b!85121 c!21176) b!85122))

(assert (= (and b!85121 (not c!21176)) b!85123))

(assert (= (and d!57191 c!21175) b!85120))

(assert (= (and d!57191 (not c!21175)) b!85121))

(declare-fun m!80968 () Bool)

(assert (=> b!85123 m!80968))

(declare-fun m!80970 () Bool)

(assert (=> b!85123 m!80970))

(declare-fun m!80972 () Bool)

(assert (=> b!85123 m!80972))

(assert (=> b!85123 m!80968))

(declare-fun m!80974 () Bool)

(assert (=> b!85123 m!80974))

(declare-fun m!80976 () Bool)

(assert (=> b!85123 m!80976))

(declare-fun m!80978 () Bool)

(assert (=> b!85123 m!80978))

(assert (=> b!85123 m!80972))

(declare-fun m!80980 () Bool)

(assert (=> b!85123 m!80980))

(assert (=> b!85123 m!80974))

(assert (=> b!85123 m!80978))

(assert (=> b!85123 m!80970))

(assert (=> b!85046 d!57191))

(declare-fun d!57193 () Bool)

(declare-fun e!46130 () Bool)

(assert (=> d!57193 e!46130))

(declare-fun c!21177 () Bool)

(assert (=> d!57193 (= c!21177 (is-Cons!652 (t!48049 ls!77)))))

(assert (=> d!57193 (forall!43 (t!48049 ls!77) p!821)))

(assert (=> d!57193 (= (filter_preserves_forall!0 (t!48049 ls!77) lambda!10696 p!821) true)))

(declare-fun b!85124 () Bool)

(assert (=> b!85124 (= e!46130 (forall!43 (filter!42 (t!48049 ls!77) lambda!10696) p!821))))

(declare-fun lt!19855 () Bool)

(assert (=> b!85124 (= lt!19855 (filter_preserves_forall!0 (t!48049 (t!48049 ls!77)) lambda!10696 p!821))))

(declare-fun b!85125 () Bool)

(assert (=> b!85125 (= e!46130 (forall!43 (filter!42 (t!48049 ls!77) lambda!10696) p!821))))

(assert (= (and d!57193 c!21177) b!85124))

(assert (= (and d!57193 (not c!21177)) b!85125))

(assert (=> d!57193 m!80874))

(assert (=> b!85124 m!80868))

(assert (=> b!85124 m!80868))

(declare-fun m!80982 () Bool)

(assert (=> b!85124 m!80982))

(declare-fun m!80984 () Bool)

(assert (=> b!85124 m!80984))

(assert (=> b!85125 m!80868))

(assert (=> b!85125 m!80868))

(assert (=> b!85125 m!80982))

(assert (=> b!85044 d!57193))

(declare-fun d!57195 () Bool)

(declare-fun e!46132 () Bool)

(assert (=> d!57195 e!46132))

(declare-fun c!21178 () Bool)

(assert (=> d!57195 (= c!21178 (is-Cons!652 (quickSort!0 lt!19825)))))

(declare-fun e!46131 () Bool)

(assert (=> d!57195 e!46131))

(declare-fun res!44115 () Bool)

(assert (=> d!57195 (=> (not res!44115) (not e!46131))))

(assert (=> d!57195 (= res!44115 (forall!43 (quickSort!0 lt!19825) p!821))))

(assert (=> d!57195 (= (append_preserves_forall!0 (quickSort!0 lt!19825) lt!19822 p!821) true)))

(declare-fun b!85126 () Bool)

(assert (=> b!85126 (= e!46131 (forall!43 lt!19822 p!821))))

(declare-fun b!85127 () Bool)

(assert (=> b!85127 (= e!46132 (forall!43 (++!92 (quickSort!0 lt!19825) lt!19822) p!821))))

(declare-fun lt!19856 () Bool)

(assert (=> b!85127 (= lt!19856 (append_preserves_forall!0 (t!48049 (quickSort!0 lt!19825)) lt!19822 p!821))))

(declare-fun b!85128 () Bool)

(assert (=> b!85128 (= e!46132 (forall!43 (++!92 (quickSort!0 lt!19825) lt!19822) p!821))))

(assert (= (and d!57195 res!44115) b!85126))

(assert (= (and d!57195 c!21178) b!85127))

(assert (= (and d!57195 (not c!21178)) b!85128))

(assert (=> d!57195 m!80842))

(declare-fun m!80986 () Bool)

(assert (=> d!57195 m!80986))

(declare-fun m!80988 () Bool)

(assert (=> b!85126 m!80988))

(assert (=> b!85127 m!80842))

(assert (=> b!85127 m!80844))

(assert (=> b!85127 m!80844))

(assert (=> b!85127 m!80876))

(declare-fun m!80990 () Bool)

(assert (=> b!85127 m!80990))

(assert (=> b!85128 m!80842))

(assert (=> b!85128 m!80844))

(assert (=> b!85128 m!80844))

(assert (=> b!85128 m!80876))

(assert (=> b!85044 d!57195))

(declare-fun bs!40970 () Bool)

(declare-fun b!85133 () Bool)

(assert (= bs!40970 (and b!85133 b!85123)))

(declare-fun lambda!10729 () Int)

(assert (=> bs!40970 (not (= lambda!10729 lambda!10728))))

(assert (=> bs!40970 (not (= lambda!10729 lambda!10727))))

(assert (=> bs!40970 (= (= (h!1025 lt!19825) (h!1025 ls!77)) (= lambda!10729 lambda!10726))))

(declare-fun bs!40971 () Bool)

(assert (= bs!40971 (and b!85133 b!85044)))

(assert (=> bs!40971 (not (= lambda!10729 lambda!10698))))

(assert (=> bs!40971 (not (= lambda!10729 lambda!10697))))

(assert (=> bs!40971 (= (= (h!1025 lt!19825) (h!1025 ls!77)) (= lambda!10729 lambda!10696))))

(declare-fun bs!40972 () Bool)

(assert (= bs!40972 (and b!85133 b!85094)))

(assert (=> bs!40972 (not (= lambda!10729 lambda!10710))))

(assert (=> bs!40972 (not (= lambda!10729 lambda!10709))))

(assert (=> bs!40972 (= (= (h!1025 lt!19825) (h!1025 lt!19826)) (= lambda!10729 lambda!10708))))

(declare-fun bs!40973 () Bool)

(assert (= bs!40973 (and b!85133 b!85115)))

(assert (=> bs!40973 (not (= lambda!10729 lambda!10725))))

(assert (=> bs!40973 (not (= lambda!10729 lambda!10724))))

(assert (=> bs!40973 (= (= (h!1025 lt!19825) (h!1025 lt!19826)) (= lambda!10729 lambda!10723))))

(declare-fun bs!40974 () Bool)

(assert (= bs!40974 (and b!85133 b!85090)))

(assert (=> bs!40974 (not (= lambda!10729 lambda!10707))))

(assert (=> bs!40974 (not (= lambda!10729 lambda!10706))))

(assert (=> bs!40974 (= lambda!10729 lambda!10705)))

(assert (=> b!85133 true))

(declare-fun b_next!39579 () Bool)

(assert (=> start!11110 (= b_next!39577 (or (and b!85133 (= lambda!10729 p!821)) b_next!39579))))

(declare-fun lambda!10730 () Int)

(assert (=> bs!40970 (not (= lambda!10730 lambda!10728))))

(assert (=> bs!40970 (= (= (h!1025 lt!19825) (h!1025 ls!77)) (= lambda!10730 lambda!10727))))

(assert (=> bs!40970 (not (= lambda!10730 lambda!10726))))

(assert (=> bs!40971 (not (= lambda!10730 lambda!10698))))

(assert (=> bs!40971 (= (= (h!1025 lt!19825) (h!1025 ls!77)) (= lambda!10730 lambda!10697))))

(assert (=> bs!40971 (not (= lambda!10730 lambda!10696))))

(assert (=> bs!40972 (not (= lambda!10730 lambda!10710))))

(assert (=> bs!40972 (= (= (h!1025 lt!19825) (h!1025 lt!19826)) (= lambda!10730 lambda!10709))))

(assert (=> bs!40972 (not (= lambda!10730 lambda!10708))))

(assert (=> b!85133 (not (= lambda!10730 lambda!10729))))

(assert (=> bs!40973 (not (= lambda!10730 lambda!10725))))

(assert (=> bs!40973 (= (= (h!1025 lt!19825) (h!1025 lt!19826)) (= lambda!10730 lambda!10724))))

(assert (=> bs!40973 (not (= lambda!10730 lambda!10723))))

(assert (=> bs!40974 (not (= lambda!10730 lambda!10707))))

(assert (=> bs!40974 (= lambda!10730 lambda!10706)))

(assert (=> bs!40974 (not (= lambda!10730 lambda!10705))))

(assert (=> b!85133 true))

(declare-fun b_next!39581 () Bool)

(assert (=> start!11110 (= b_next!39579 (or (and b!85133 (= lambda!10730 p!821)) b_next!39581))))

(declare-fun lambda!10731 () Int)

(assert (=> bs!40970 (= (= (h!1025 lt!19825) (h!1025 ls!77)) (= lambda!10731 lambda!10728))))

(assert (=> bs!40970 (not (= lambda!10731 lambda!10727))))

(assert (=> bs!40970 (not (= lambda!10731 lambda!10726))))

(assert (=> bs!40971 (= (= (h!1025 lt!19825) (h!1025 ls!77)) (= lambda!10731 lambda!10698))))

(assert (=> bs!40971 (not (= lambda!10731 lambda!10697))))

(assert (=> bs!40971 (not (= lambda!10731 lambda!10696))))

(assert (=> bs!40972 (= (= (h!1025 lt!19825) (h!1025 lt!19826)) (= lambda!10731 lambda!10710))))

(assert (=> bs!40972 (not (= lambda!10731 lambda!10709))))

(assert (=> bs!40972 (not (= lambda!10731 lambda!10708))))

(assert (=> b!85133 (not (= lambda!10731 lambda!10730))))

(assert (=> b!85133 (not (= lambda!10731 lambda!10729))))

(assert (=> bs!40973 (= (= (h!1025 lt!19825) (h!1025 lt!19826)) (= lambda!10731 lambda!10725))))

(assert (=> bs!40973 (not (= lambda!10731 lambda!10724))))

(assert (=> bs!40973 (not (= lambda!10731 lambda!10723))))

(assert (=> bs!40974 (= lambda!10731 lambda!10707)))

(assert (=> bs!40974 (not (= lambda!10731 lambda!10706))))

(assert (=> bs!40974 (not (= lambda!10731 lambda!10705))))

(assert (=> b!85133 true))

(declare-fun b_next!39583 () Bool)

(assert (=> start!11110 (= b_next!39581 (or (and b!85133 (= lambda!10731 p!821)) b_next!39583))))

(declare-fun b!85129 () Bool)

(declare-fun e!46137 () Bool)

(declare-fun lt!19860 () List!695)

(assert (=> b!85129 (= e!46137 (sort_preserves_forall!0 lt!19860 p!821))))

(declare-fun e!46135 () Bool)

(declare-fun b!85130 () Bool)

(assert (=> b!85130 (= e!46135 (filter_preserves_forall!0 (t!48049 lt!19825) lambda!10731 p!821))))

(declare-fun b!85131 () Bool)

(declare-fun e!46134 () Bool)

(assert (=> b!85131 (= e!46134 (filter_preserves_forall!0 (t!48049 lt!19825) lambda!10730 p!821))))

(declare-fun lt!19859 () List!695)

(declare-fun b!85132 () Bool)

(declare-fun e!46136 () Bool)

(declare-fun lt!19858 () List!695)

(assert (=> b!85132 (= e!46136 (append_preserves_forall!0 (++!92 (quickSort!0 lt!19858) lt!19859) (quickSort!0 lt!19860) p!821))))

(declare-fun e!46133 () Bool)

(assert (=> b!85133 (= e!46133 e!46136)))

(declare-fun res!44117 () Bool)

(assert (=> b!85133 (=> (not res!44117) (not e!46136))))

(assert (=> b!85133 (= res!44117 (append_preserves_forall!0 (quickSort!0 lt!19858) lt!19859 p!821))))

(declare-fun lt!19861 () Bool)

(assert (=> b!85133 (= lt!19861 e!46137)))

(declare-fun res!44118 () Bool)

(assert (=> b!85133 (=> (not res!44118) (not e!46137))))

(assert (=> b!85133 (= res!44118 (sort_preserves_forall!0 lt!19858 p!821))))

(declare-fun lt!19857 () Bool)

(assert (=> b!85133 (= lt!19857 e!46135)))

(declare-fun res!44119 () Bool)

(assert (=> b!85133 (=> (not res!44119) (not e!46135))))

(assert (=> b!85133 (= res!44119 e!46134)))

(declare-fun res!44116 () Bool)

(assert (=> b!85133 (=> (not res!44116) (not e!46134))))

(assert (=> b!85133 (= res!44116 (filter_preserves_forall!0 (t!48049 lt!19825) lambda!10729 p!821))))

(assert (=> b!85133 (= lt!19860 (filter!42 (t!48049 lt!19825) lambda!10731))))

(assert (=> b!85133 (= lt!19859 (Cons!652 (h!1025 lt!19825) (filter!42 (t!48049 lt!19825) lambda!10730)))))

(assert (=> b!85133 (= lt!19858 (filter!42 (t!48049 lt!19825) lambda!10729))))

(declare-fun d!57197 () Bool)

(assert (=> d!57197 (forall!43 (quickSort!0 lt!19825) p!821)))

(declare-fun lt!19862 () Bool)

(assert (=> d!57197 (= lt!19862 e!46133)))

(declare-fun res!44120 () Bool)

(assert (=> d!57197 (=> res!44120 e!46133)))

(assert (=> d!57197 (= res!44120 (or (is-Nil!654 lt!19825) (and (is-Cons!652 lt!19825) (is-Nil!654 (t!48049 lt!19825)))))))

(assert (=> d!57197 (forall!43 lt!19825 p!821)))

(assert (=> d!57197 (= (sort_preserves_forall!0 lt!19825 p!821) true)))

(assert (= (and d!57197 (not res!44120)) b!85133))

(assert (= (and b!85133 res!44116) b!85131))

(assert (= (and b!85133 res!44119) b!85130))

(assert (= (and b!85133 res!44118) b!85129))

(assert (= (and b!85133 res!44117) b!85132))

(declare-fun m!80992 () Bool)

(assert (=> b!85133 m!80992))

(declare-fun m!80994 () Bool)

(assert (=> b!85133 m!80994))

(declare-fun m!80996 () Bool)

(assert (=> b!85133 m!80996))

(declare-fun m!80998 () Bool)

(assert (=> b!85133 m!80998))

(assert (=> b!85133 m!80994))

(declare-fun m!81000 () Bool)

(assert (=> b!85133 m!81000))

(declare-fun m!81002 () Bool)

(assert (=> b!85133 m!81002))

(declare-fun m!81004 () Bool)

(assert (=> b!85133 m!81004))

(declare-fun m!81006 () Bool)

(assert (=> b!85129 m!81006))

(assert (=> d!57197 m!80842))

(assert (=> d!57197 m!80842))

(assert (=> d!57197 m!80986))

(declare-fun m!81008 () Bool)

(assert (=> d!57197 m!81008))

(declare-fun m!81010 () Bool)

(assert (=> b!85130 m!81010))

(declare-fun m!81012 () Bool)

(assert (=> b!85131 m!81012))

(assert (=> b!85132 m!80994))

(assert (=> b!85132 m!80994))

(declare-fun m!81014 () Bool)

(assert (=> b!85132 m!81014))

(declare-fun m!81016 () Bool)

(assert (=> b!85132 m!81016))

(assert (=> b!85132 m!81014))

(assert (=> b!85132 m!81016))

(declare-fun m!81018 () Bool)

(assert (=> b!85132 m!81018))

(assert (=> b!85044 d!57197))

(declare-fun b!85148 () Bool)

(declare-fun e!46148 () List!695)

(assert (=> b!85148 (= e!46148 Nil!654)))

(declare-fun b!85149 () Bool)

(declare-fun e!46147 () List!695)

(assert (=> b!85149 (= e!46148 e!46147)))

(declare-fun c!21184 () Bool)

(declare-fun e!46149 () Bool)

(assert (=> b!85149 (= c!21184 e!46149)))

(declare-fun res!44131 () Bool)

(assert (=> b!85149 (=> (not res!44131) (not e!46149))))

(assert (=> b!85149 (= res!44131 (is-Cons!652 (t!48049 ls!77)))))

(declare-fun lt!19868 () List!695)

(assert (=> b!85149 (= lt!19868 (filter!42 (t!48049 (t!48049 ls!77)) lambda!10697))))

(declare-fun b!85150 () Bool)

(declare-fun e!46146 () Bool)

(declare-fun lt!19867 () List!695)

(assert (=> b!85150 (= e!46146 (forall!43 lt!19867 lambda!10697))))

(declare-fun b!85151 () Bool)

(declare-fun res!44133 () Bool)

(assert (=> b!85151 (=> (not res!44133) (not e!46146))))

(assert (=> b!85151 (= res!44133 (subset (content!148 lt!19867) (content!148 (t!48049 ls!77))))))

(declare-fun d!57199 () Bool)

(assert (=> d!57199 e!46146))

(declare-fun res!44132 () Bool)

(assert (=> d!57199 (=> (not res!44132) (not e!46146))))

(assert (=> d!57199 (= res!44132 (<= (size!677 lt!19867) (size!677 (t!48049 ls!77))))))

(assert (=> d!57199 (= lt!19867 e!46148)))

(declare-fun c!21183 () Bool)

(assert (=> d!57199 (= c!21183 (is-Nil!654 (t!48049 ls!77)))))

(assert (=> d!57199 (= (filter!42 (t!48049 ls!77) lambda!10697) lt!19867)))

(declare-fun b!85152 () Bool)

(assert (=> b!85152 (= e!46147 (Cons!652 (h!1025 (t!48049 ls!77)) lt!19868))))

(declare-fun b!85153 () Bool)

(assert (=> b!85153 (= e!46149 (dynLambda!1006 lambda!10697 (h!1025 (t!48049 ls!77))))))

(declare-fun b!85154 () Bool)

(assert (=> b!85154 (= e!46147 lt!19868)))

(assert (= (and b!85149 res!44131) b!85153))

(assert (= (and b!85149 c!21184) b!85152))

(assert (= (and b!85149 (not c!21184)) b!85154))

(assert (= (and d!57199 c!21183) b!85148))

(assert (= (and d!57199 (not c!21183)) b!85149))

(assert (= (and d!57199 res!44132) b!85151))

(assert (= (and b!85151 res!44133) b!85150))

(declare-fun b_lambda!16711 () Bool)

(assert (=> (not b_lambda!16711) (not b!85153)))

(declare-fun m!81020 () Bool)

(assert (=> b!85151 m!81020))

(declare-fun m!81022 () Bool)

(assert (=> b!85151 m!81022))

(declare-fun m!81024 () Bool)

(assert (=> d!57199 m!81024))

(declare-fun m!81026 () Bool)

(assert (=> d!57199 m!81026))

(declare-fun m!81028 () Bool)

(assert (=> b!85149 m!81028))

(declare-fun m!81030 () Bool)

(assert (=> b!85150 m!81030))

(declare-fun m!81032 () Bool)

(assert (=> b!85153 m!81032))

(assert (=> b!85044 d!57199))

(declare-fun b!85155 () Bool)

(declare-fun e!46152 () List!695)

(assert (=> b!85155 (= e!46152 Nil!654)))

(declare-fun b!85156 () Bool)

(declare-fun e!46151 () List!695)

(assert (=> b!85156 (= e!46152 e!46151)))

(declare-fun c!21186 () Bool)

(declare-fun e!46153 () Bool)

(assert (=> b!85156 (= c!21186 e!46153)))

(declare-fun res!44134 () Bool)

(assert (=> b!85156 (=> (not res!44134) (not e!46153))))

(assert (=> b!85156 (= res!44134 (is-Cons!652 (t!48049 ls!77)))))

(declare-fun lt!19870 () List!695)

(assert (=> b!85156 (= lt!19870 (filter!42 (t!48049 (t!48049 ls!77)) lambda!10698))))

(declare-fun b!85157 () Bool)

(declare-fun e!46150 () Bool)

(declare-fun lt!19869 () List!695)

(assert (=> b!85157 (= e!46150 (forall!43 lt!19869 lambda!10698))))

(declare-fun b!85158 () Bool)

(declare-fun res!44136 () Bool)

(assert (=> b!85158 (=> (not res!44136) (not e!46150))))

(assert (=> b!85158 (= res!44136 (subset (content!148 lt!19869) (content!148 (t!48049 ls!77))))))

(declare-fun d!57201 () Bool)

(assert (=> d!57201 e!46150))

(declare-fun res!44135 () Bool)

(assert (=> d!57201 (=> (not res!44135) (not e!46150))))

(assert (=> d!57201 (= res!44135 (<= (size!677 lt!19869) (size!677 (t!48049 ls!77))))))

(assert (=> d!57201 (= lt!19869 e!46152)))

(declare-fun c!21185 () Bool)

(assert (=> d!57201 (= c!21185 (is-Nil!654 (t!48049 ls!77)))))

(assert (=> d!57201 (= (filter!42 (t!48049 ls!77) lambda!10698) lt!19869)))

(declare-fun b!85159 () Bool)

(assert (=> b!85159 (= e!46151 (Cons!652 (h!1025 (t!48049 ls!77)) lt!19870))))

(declare-fun b!85160 () Bool)

(assert (=> b!85160 (= e!46153 (dynLambda!1006 lambda!10698 (h!1025 (t!48049 ls!77))))))

(declare-fun b!85161 () Bool)

(assert (=> b!85161 (= e!46151 lt!19870)))

(assert (= (and b!85156 res!44134) b!85160))

(assert (= (and b!85156 c!21186) b!85159))

(assert (= (and b!85156 (not c!21186)) b!85161))

(assert (= (and d!57201 c!21185) b!85155))

(assert (= (and d!57201 (not c!21185)) b!85156))

(assert (= (and d!57201 res!44135) b!85158))

(assert (= (and b!85158 res!44136) b!85157))

(declare-fun b_lambda!16713 () Bool)

(assert (=> (not b_lambda!16713) (not b!85160)))

(declare-fun m!81034 () Bool)

(assert (=> b!85158 m!81034))

(assert (=> b!85158 m!81022))

(declare-fun m!81036 () Bool)

(assert (=> d!57201 m!81036))

(assert (=> d!57201 m!81026))

(declare-fun m!81038 () Bool)

(assert (=> b!85156 m!81038))

(declare-fun m!81040 () Bool)

(assert (=> b!85157 m!81040))

(declare-fun m!81042 () Bool)

(assert (=> b!85160 m!81042))

(assert (=> b!85044 d!57201))

(declare-fun b!85162 () Bool)

(declare-fun e!46156 () List!695)

(assert (=> b!85162 (= e!46156 Nil!654)))

(declare-fun b!85163 () Bool)

(declare-fun e!46155 () List!695)

(assert (=> b!85163 (= e!46156 e!46155)))

(declare-fun c!21188 () Bool)

(declare-fun e!46157 () Bool)

(assert (=> b!85163 (= c!21188 e!46157)))

(declare-fun res!44137 () Bool)

(assert (=> b!85163 (=> (not res!44137) (not e!46157))))

(assert (=> b!85163 (= res!44137 (is-Cons!652 (t!48049 ls!77)))))

(declare-fun lt!19872 () List!695)

(assert (=> b!85163 (= lt!19872 (filter!42 (t!48049 (t!48049 ls!77)) lambda!10696))))

(declare-fun b!85164 () Bool)

(declare-fun e!46154 () Bool)

(declare-fun lt!19871 () List!695)

(assert (=> b!85164 (= e!46154 (forall!43 lt!19871 lambda!10696))))

(declare-fun b!85165 () Bool)

(declare-fun res!44139 () Bool)

(assert (=> b!85165 (=> (not res!44139) (not e!46154))))

(assert (=> b!85165 (= res!44139 (subset (content!148 lt!19871) (content!148 (t!48049 ls!77))))))

(declare-fun d!57203 () Bool)

(assert (=> d!57203 e!46154))

(declare-fun res!44138 () Bool)

(assert (=> d!57203 (=> (not res!44138) (not e!46154))))

(assert (=> d!57203 (= res!44138 (<= (size!677 lt!19871) (size!677 (t!48049 ls!77))))))

(assert (=> d!57203 (= lt!19871 e!46156)))

(declare-fun c!21187 () Bool)

(assert (=> d!57203 (= c!21187 (is-Nil!654 (t!48049 ls!77)))))

(assert (=> d!57203 (= (filter!42 (t!48049 ls!77) lambda!10696) lt!19871)))

(declare-fun b!85166 () Bool)

(assert (=> b!85166 (= e!46155 (Cons!652 (h!1025 (t!48049 ls!77)) lt!19872))))

(declare-fun b!85167 () Bool)

(assert (=> b!85167 (= e!46157 (dynLambda!1006 lambda!10696 (h!1025 (t!48049 ls!77))))))

(declare-fun b!85168 () Bool)

(assert (=> b!85168 (= e!46155 lt!19872)))

(assert (= (and b!85163 res!44137) b!85167))

(assert (= (and b!85163 c!21188) b!85166))

(assert (= (and b!85163 (not c!21188)) b!85168))

(assert (= (and d!57203 c!21187) b!85162))

(assert (= (and d!57203 (not c!21187)) b!85163))

(assert (= (and d!57203 res!44138) b!85165))

(assert (= (and b!85165 res!44139) b!85164))

(declare-fun b_lambda!16715 () Bool)

(assert (=> (not b_lambda!16715) (not b!85167)))

(declare-fun m!81044 () Bool)

(assert (=> b!85165 m!81044))

(assert (=> b!85165 m!81022))

(declare-fun m!81046 () Bool)

(assert (=> d!57203 m!81046))

(assert (=> d!57203 m!81026))

(declare-fun m!81048 () Bool)

(assert (=> b!85163 m!81048))

(declare-fun m!81050 () Bool)

(assert (=> b!85164 m!81050))

(declare-fun m!81052 () Bool)

(assert (=> b!85167 m!81052))

(assert (=> b!85044 d!57203))

(assert (=> b!85044 d!57179))

(declare-fun b_lambda!16717 () Bool)

(assert (= b_lambda!16713 (or b!85044 b_lambda!16717)))

(declare-fun bs!40975 () Bool)

(declare-fun d!57205 () Bool)

(assert (= bs!40975 (and d!57205 b!85044)))

(assert (=> bs!40975 (= (dynLambda!1006 lambda!10698 (h!1025 (t!48049 ls!77))) (> (h!1025 (t!48049 ls!77)) (h!1025 ls!77)))))

(assert (=> b!85160 d!57205))

(declare-fun b_lambda!16719 () Bool)

(assert (= b_lambda!16709 (or (and b!85115 (= lambda!10725 p!821)) (and b!85090 (= lambda!10706 p!821)) (and b!85044 (= lambda!10698 p!821)) (and start!11110 b_free!7399) (and b!85094 (= lambda!10710 p!821)) (and b!85133 (= lambda!10729 p!821)) (and b!85090 (= lambda!10705 p!821)) (and b!85115 (= lambda!10724 p!821)) (and b!85044 (= lambda!10697 p!821)) (and b!85094 (= lambda!10709 p!821)) (and b!85133 (= lambda!10730 p!821)) (and b!85133 (= lambda!10731 p!821)) (and b!85044 (= lambda!10696 p!821)) (and b!85094 (= lambda!10708 p!821)) (and b!85123 (= lambda!10728 p!821)) (and b!85123 (= lambda!10727 p!821)) (and b!85090 (= lambda!10707 p!821)) (and b!85123 (= lambda!10726 p!821)) (and b!85115 (= lambda!10723 p!821)) b_lambda!16719)))

(declare-fun bs!40976 () Bool)

(declare-fun d!57207 () Bool)

(assert (= bs!40976 (and d!57207 b!85133)))

(assert (=> bs!40976 (= (dynLambda!1006 lambda!10730 (h!1025 (quickSort!0 ls!77))) (= (h!1025 (quickSort!0 ls!77)) (h!1025 lt!19825)))))

(assert (=> (and b!85133 (= lambda!10730 p!821) b!85118) d!57207))

(declare-fun bs!40977 () Bool)

(declare-fun d!57209 () Bool)

(assert (= bs!40977 (and d!57209 b!85133)))

(assert (=> bs!40977 (= (dynLambda!1006 lambda!10731 (h!1025 (quickSort!0 ls!77))) (> (h!1025 (quickSort!0 ls!77)) (h!1025 lt!19825)))))

(assert (=> (and b!85133 (= lambda!10731 p!821) b!85118) d!57209))

(declare-fun bs!40978 () Bool)

(declare-fun d!57211 () Bool)

(assert (= bs!40978 (and d!57211 b!85044)))

(assert (=> bs!40978 (= (dynLambda!1006 lambda!10697 (h!1025 (quickSort!0 ls!77))) (= (h!1025 (quickSort!0 ls!77)) (h!1025 ls!77)))))

(assert (=> (and b!85044 (= lambda!10697 p!821) b!85118) d!57211))

(declare-fun bs!40979 () Bool)

(declare-fun d!57213 () Bool)

(assert (= bs!40979 (and d!57213 b!85094)))

(assert (=> bs!40979 (= (dynLambda!1006 lambda!10709 (h!1025 (quickSort!0 ls!77))) (= (h!1025 (quickSort!0 ls!77)) (h!1025 lt!19826)))))

(assert (=> (and b!85094 (= lambda!10709 p!821) b!85118) d!57213))

(declare-fun bs!40980 () Bool)

(declare-fun d!57215 () Bool)

(assert (= bs!40980 (and d!57215 b!85090)))

(assert (=> bs!40980 (= (dynLambda!1006 lambda!10706 (h!1025 (quickSort!0 ls!77))) (= (h!1025 (quickSort!0 ls!77)) (h!1025 lt!19825)))))

(assert (=> (and b!85090 (= lambda!10706 p!821) b!85118) d!57215))

(declare-fun bs!40981 () Bool)

(declare-fun d!57217 () Bool)

(assert (= bs!40981 (and d!57217 b!85123)))

(assert (=> bs!40981 (= (dynLambda!1006 lambda!10727 (h!1025 (quickSort!0 ls!77))) (= (h!1025 (quickSort!0 ls!77)) (h!1025 ls!77)))))

(assert (=> (and b!85123 (= lambda!10727 p!821) b!85118) d!57217))

(declare-fun bs!40982 () Bool)

(declare-fun d!57219 () Bool)

(assert (= bs!40982 (and d!57219 b!85115)))

(assert (=> bs!40982 (= (dynLambda!1006 lambda!10724 (h!1025 (quickSort!0 ls!77))) (= (h!1025 (quickSort!0 ls!77)) (h!1025 lt!19826)))))

(assert (=> (and b!85115 (= lambda!10724 p!821) b!85118) d!57219))

(declare-fun bs!40983 () Bool)

(declare-fun d!57221 () Bool)

(assert (= bs!40983 (and d!57221 b!85123)))

(assert (=> bs!40983 (= (dynLambda!1006 lambda!10726 (h!1025 (quickSort!0 ls!77))) (< (h!1025 (quickSort!0 ls!77)) (h!1025 ls!77)))))

(assert (=> (and b!85123 (= lambda!10726 p!821) b!85118) d!57221))

(declare-fun bs!40984 () Bool)

(declare-fun d!57223 () Bool)

(assert (= bs!40984 (and d!57223 b!85115)))

(assert (=> bs!40984 (= (dynLambda!1006 lambda!10723 (h!1025 (quickSort!0 ls!77))) (< (h!1025 (quickSort!0 ls!77)) (h!1025 lt!19826)))))

(assert (=> (and b!85115 (= lambda!10723 p!821) b!85118) d!57223))

(declare-fun bs!40985 () Bool)

(declare-fun d!57225 () Bool)

(assert (= bs!40985 (and d!57225 b!85133)))

(assert (=> bs!40985 (= (dynLambda!1006 lambda!10729 (h!1025 (quickSort!0 ls!77))) (< (h!1025 (quickSort!0 ls!77)) (h!1025 lt!19825)))))

(assert (=> (and b!85133 (= lambda!10729 p!821) b!85118) d!57225))

(declare-fun bs!40986 () Bool)

(declare-fun d!57227 () Bool)

(assert (= bs!40986 (and d!57227 b!85123)))

(assert (=> bs!40986 (= (dynLambda!1006 lambda!10728 (h!1025 (quickSort!0 ls!77))) (> (h!1025 (quickSort!0 ls!77)) (h!1025 ls!77)))))

(assert (=> (and b!85123 (= lambda!10728 p!821) b!85118) d!57227))

(declare-fun bs!40987 () Bool)

(declare-fun d!57229 () Bool)

(assert (= bs!40987 (and d!57229 b!85090)))

(assert (=> bs!40987 (= (dynLambda!1006 lambda!10705 (h!1025 (quickSort!0 ls!77))) (< (h!1025 (quickSort!0 ls!77)) (h!1025 lt!19825)))))

(assert (=> (and b!85090 (= lambda!10705 p!821) b!85118) d!57229))

(declare-fun bs!40988 () Bool)

(declare-fun d!57231 () Bool)

(assert (= bs!40988 (and d!57231 b!85044)))

(assert (=> bs!40988 (= (dynLambda!1006 lambda!10696 (h!1025 (quickSort!0 ls!77))) (< (h!1025 (quickSort!0 ls!77)) (h!1025 ls!77)))))

(assert (=> (and b!85044 (= lambda!10696 p!821) b!85118) d!57231))

(declare-fun bs!40989 () Bool)

(declare-fun d!57233 () Bool)

(assert (= bs!40989 (and d!57233 b!85044)))

(assert (=> bs!40989 (= (dynLambda!1006 lambda!10698 (h!1025 (quickSort!0 ls!77))) (> (h!1025 (quickSort!0 ls!77)) (h!1025 ls!77)))))

(assert (=> (and b!85044 (= lambda!10698 p!821) b!85118) d!57233))

(declare-fun bs!40990 () Bool)

(declare-fun d!57235 () Bool)

(assert (= bs!40990 (and d!57235 b!85094)))

(assert (=> bs!40990 (= (dynLambda!1006 lambda!10710 (h!1025 (quickSort!0 ls!77))) (> (h!1025 (quickSort!0 ls!77)) (h!1025 lt!19826)))))

(assert (=> (and b!85094 (= lambda!10710 p!821) b!85118) d!57235))

(declare-fun bs!40991 () Bool)

(declare-fun d!57237 () Bool)

(assert (= bs!40991 (and d!57237 b!85090)))

(assert (=> bs!40991 (= (dynLambda!1006 lambda!10707 (h!1025 (quickSort!0 ls!77))) (> (h!1025 (quickSort!0 ls!77)) (h!1025 lt!19825)))))

(assert (=> (and b!85090 (= lambda!10707 p!821) b!85118) d!57237))

(declare-fun bs!40992 () Bool)

(declare-fun d!57239 () Bool)

(assert (= bs!40992 (and d!57239 b!85115)))

(assert (=> bs!40992 (= (dynLambda!1006 lambda!10725 (h!1025 (quickSort!0 ls!77))) (> (h!1025 (quickSort!0 ls!77)) (h!1025 lt!19826)))))

(assert (=> (and b!85115 (= lambda!10725 p!821) b!85118) d!57239))

(declare-fun bs!40993 () Bool)

(declare-fun d!57241 () Bool)

(assert (= bs!40993 (and d!57241 b!85094)))

(assert (=> bs!40993 (= (dynLambda!1006 lambda!10708 (h!1025 (quickSort!0 ls!77))) (< (h!1025 (quickSort!0 ls!77)) (h!1025 lt!19826)))))

(assert (=> (and b!85094 (= lambda!10708 p!821) b!85118) d!57241))

(declare-fun b_lambda!16721 () Bool)

(assert (= b_lambda!16715 (or b!85044 b_lambda!16721)))

(declare-fun bs!40994 () Bool)

(declare-fun d!57243 () Bool)

(assert (= bs!40994 (and d!57243 b!85044)))

(assert (=> bs!40994 (= (dynLambda!1006 lambda!10696 (h!1025 (t!48049 ls!77))) (< (h!1025 (t!48049 ls!77)) (h!1025 ls!77)))))

(assert (=> b!85167 d!57243))

(declare-fun b_lambda!16723 () Bool)

(assert (= b_lambda!16707 (or (and b!85115 (= lambda!10725 p!821)) (and b!85090 (= lambda!10706 p!821)) (and b!85044 (= lambda!10698 p!821)) (and start!11110 b_free!7399) (and b!85094 (= lambda!10710 p!821)) (and b!85133 (= lambda!10729 p!821)) (and b!85090 (= lambda!10705 p!821)) (and b!85115 (= lambda!10724 p!821)) (and b!85044 (= lambda!10697 p!821)) (and b!85094 (= lambda!10709 p!821)) (and b!85133 (= lambda!10730 p!821)) (and b!85133 (= lambda!10731 p!821)) (and b!85044 (= lambda!10696 p!821)) (and b!85094 (= lambda!10708 p!821)) (and b!85123 (= lambda!10728 p!821)) (and b!85123 (= lambda!10727 p!821)) (and b!85090 (= lambda!10707 p!821)) (and b!85123 (= lambda!10726 p!821)) (and b!85115 (= lambda!10723 p!821)) b_lambda!16723)))

(declare-fun bs!40995 () Bool)

(declare-fun d!57245 () Bool)

(assert (= bs!40995 (and d!57245 b!85090)))

(assert (=> bs!40995 (= (dynLambda!1006 lambda!10706 (h!1025 ls!77)) (= (h!1025 ls!77) (h!1025 lt!19825)))))

(assert (=> (and b!85090 (= lambda!10706 p!821) b!85056) d!57245))

(declare-fun bs!40996 () Bool)

(declare-fun d!57247 () Bool)

(assert (= bs!40996 (and d!57247 b!85044)))

(assert (=> bs!40996 (= (dynLambda!1006 lambda!10698 (h!1025 ls!77)) (> (h!1025 ls!77) (h!1025 ls!77)))))

(assert (=> (and b!85044 (= lambda!10698 p!821) b!85056) d!57247))

(declare-fun bs!40997 () Bool)

(declare-fun d!57249 () Bool)

(assert (= bs!40997 (and d!57249 b!85123)))

(assert (=> bs!40997 (= (dynLambda!1006 lambda!10728 (h!1025 ls!77)) (> (h!1025 ls!77) (h!1025 ls!77)))))

(assert (=> (and b!85123 (= lambda!10728 p!821) b!85056) d!57249))

(declare-fun bs!40998 () Bool)

(declare-fun d!57251 () Bool)

(assert (= bs!40998 (and d!57251 b!85115)))

(assert (=> bs!40998 (= (dynLambda!1006 lambda!10723 (h!1025 ls!77)) (< (h!1025 ls!77) (h!1025 lt!19826)))))

(assert (=> (and b!85115 (= lambda!10723 p!821) b!85056) d!57251))

(declare-fun bs!40999 () Bool)

(declare-fun d!57253 () Bool)

(assert (= bs!40999 (and d!57253 b!85115)))

(assert (=> bs!40999 (= (dynLambda!1006 lambda!10724 (h!1025 ls!77)) (= (h!1025 ls!77) (h!1025 lt!19826)))))

(assert (=> (and b!85115 (= lambda!10724 p!821) b!85056) d!57253))

(declare-fun bs!41000 () Bool)

(declare-fun d!57255 () Bool)

(assert (= bs!41000 (and d!57255 b!85133)))

(assert (=> bs!41000 (= (dynLambda!1006 lambda!10731 (h!1025 ls!77)) (> (h!1025 ls!77) (h!1025 lt!19825)))))

(assert (=> (and b!85133 (= lambda!10731 p!821) b!85056) d!57255))

(declare-fun bs!41001 () Bool)

(declare-fun d!57257 () Bool)

(assert (= bs!41001 (and d!57257 b!85090)))

(assert (=> bs!41001 (= (dynLambda!1006 lambda!10705 (h!1025 ls!77)) (< (h!1025 ls!77) (h!1025 lt!19825)))))

(assert (=> (and b!85090 (= lambda!10705 p!821) b!85056) d!57257))

(declare-fun bs!41002 () Bool)

(declare-fun d!57259 () Bool)

(assert (= bs!41002 (and d!57259 b!85094)))

(assert (=> bs!41002 (= (dynLambda!1006 lambda!10710 (h!1025 ls!77)) (> (h!1025 ls!77) (h!1025 lt!19826)))))

(assert (=> (and b!85094 (= lambda!10710 p!821) b!85056) d!57259))

(declare-fun bs!41003 () Bool)

(declare-fun d!57261 () Bool)

(assert (= bs!41003 (and d!57261 b!85123)))

(assert (=> bs!41003 (= (dynLambda!1006 lambda!10727 (h!1025 ls!77)) (= (h!1025 ls!77) (h!1025 ls!77)))))

(assert (=> (and b!85123 (= lambda!10727 p!821) b!85056) d!57261))

(declare-fun bs!41004 () Bool)

(declare-fun d!57263 () Bool)

(assert (= bs!41004 (and d!57263 b!85133)))

(assert (=> bs!41004 (= (dynLambda!1006 lambda!10729 (h!1025 ls!77)) (< (h!1025 ls!77) (h!1025 lt!19825)))))

(assert (=> (and b!85133 (= lambda!10729 p!821) b!85056) d!57263))

(declare-fun bs!41005 () Bool)

(declare-fun d!57265 () Bool)

(assert (= bs!41005 (and d!57265 b!85044)))

(assert (=> bs!41005 (= (dynLambda!1006 lambda!10696 (h!1025 ls!77)) (< (h!1025 ls!77) (h!1025 ls!77)))))

(assert (=> (and b!85044 (= lambda!10696 p!821) b!85056) d!57265))

(declare-fun bs!41006 () Bool)

(declare-fun d!57267 () Bool)

(assert (= bs!41006 (and d!57267 b!85094)))

(assert (=> bs!41006 (= (dynLambda!1006 lambda!10708 (h!1025 ls!77)) (< (h!1025 ls!77) (h!1025 lt!19826)))))

(assert (=> (and b!85094 (= lambda!10708 p!821) b!85056) d!57267))

(declare-fun bs!41007 () Bool)

(declare-fun d!57269 () Bool)

(assert (= bs!41007 (and d!57269 b!85115)))

(assert (=> bs!41007 (= (dynLambda!1006 lambda!10725 (h!1025 ls!77)) (> (h!1025 ls!77) (h!1025 lt!19826)))))

(assert (=> (and b!85115 (= lambda!10725 p!821) b!85056) d!57269))

(declare-fun bs!41008 () Bool)

(declare-fun d!57271 () Bool)

(assert (= bs!41008 (and d!57271 b!85090)))

(assert (=> bs!41008 (= (dynLambda!1006 lambda!10707 (h!1025 ls!77)) (> (h!1025 ls!77) (h!1025 lt!19825)))))

(assert (=> (and b!85090 (= lambda!10707 p!821) b!85056) d!57271))

(declare-fun bs!41009 () Bool)

(declare-fun d!57273 () Bool)

(assert (= bs!41009 (and d!57273 b!85133)))

(assert (=> bs!41009 (= (dynLambda!1006 lambda!10730 (h!1025 ls!77)) (= (h!1025 ls!77) (h!1025 lt!19825)))))

(assert (=> (and b!85133 (= lambda!10730 p!821) b!85056) d!57273))

(declare-fun bs!41010 () Bool)

(declare-fun d!57275 () Bool)

(assert (= bs!41010 (and d!57275 b!85094)))

(assert (=> bs!41010 (= (dynLambda!1006 lambda!10709 (h!1025 ls!77)) (= (h!1025 ls!77) (h!1025 lt!19826)))))

(assert (=> (and b!85094 (= lambda!10709 p!821) b!85056) d!57275))

(declare-fun bs!41011 () Bool)

(declare-fun d!57277 () Bool)

(assert (= bs!41011 (and d!57277 b!85044)))

(assert (=> bs!41011 (= (dynLambda!1006 lambda!10697 (h!1025 ls!77)) (= (h!1025 ls!77) (h!1025 ls!77)))))

(assert (=> (and b!85044 (= lambda!10697 p!821) b!85056) d!57277))

(declare-fun bs!41012 () Bool)

(declare-fun d!57279 () Bool)

(assert (= bs!41012 (and d!57279 b!85123)))

(assert (=> bs!41012 (= (dynLambda!1006 lambda!10726 (h!1025 ls!77)) (< (h!1025 ls!77) (h!1025 ls!77)))))

(assert (=> (and b!85123 (= lambda!10726 p!821) b!85056) d!57279))

(declare-fun b_lambda!16725 () Bool)

(assert (= b_lambda!16711 (or b!85044 b_lambda!16725)))

(declare-fun bs!41013 () Bool)

(declare-fun d!57281 () Bool)

(assert (= bs!41013 (and d!57281 b!85044)))

(assert (=> bs!41013 (= (dynLambda!1006 lambda!10697 (h!1025 (t!48049 ls!77))) (= (h!1025 (t!48049 ls!77)) (h!1025 ls!77)))))

(assert (=> b!85153 d!57281))

(push 1)

(assert (not b!85066))

(assert (not b!85119))

(assert (not b!85100))

(assert (not b!85126))

(assert (not b!85090))

(assert (not b_lambda!16721))

(assert (not b!85151))

(assert (not b!85157))

(assert (not b!85064))

(assert (not b!85123))

(assert (not b!85065))

(assert (not d!57185))

(assert (not d!57199))

(assert (not d!57195))

(assert (not b_lambda!16725))

(assert (not b!85156))

(assert (not b!85129))

(assert (not d!57175))

(assert (not b_next!39583))

(assert (not b!85112))

(assert (not b!85127))

(assert (not b_lambda!16719))

(assert (not b!85133))

(assert (not b!85114))

(assert (not d!57193))

(assert (not b!85132))

(assert (not d!57203))

(assert (not b!85111))

(assert (not b!85149))

(assert (not b!85117))

(assert (not b_lambda!16717))

(assert (not b!85099))

(assert (not d!57201))

(assert b_and!59013)

(assert (not d!57197))

(assert (not b!85158))

(assert (not d!57187))

(assert (not b!85125))

(assert (not d!57177))

(assert (not b!85077))

(assert (not b!85124))

(assert (not b!85115))

(assert (not b!85094))

(assert (not b!85116))

(assert (not b!85057))

(assert (not b!85128))

(assert (not b!85164))

(assert (not b!85165))

(assert (not b!85113))

(assert (not b!85150))

(assert (not b!85163))

(assert (not d!57183))

(assert (not b!85130))

(assert (not b!85131))

(assert (not b_lambda!16723))

(assert (not b!85076))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59013)

(assert (not b_next!39583))

(check-sat)

(pop 1)


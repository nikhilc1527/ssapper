; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10862 () Bool)

(assert start!10862)

(declare-fun b!82971 () Bool)

(assert (=> b!82971 true))

(declare-fun bs!40215 () Bool)

(declare-fun b!82963 () Bool)

(assert (= bs!40215 (and b!82963 b!82971)))

(declare-fun lambda!10127 () Int)

(declare-fun lambda!10126 () Int)

(assert (=> bs!40215 (not (= lambda!10127 lambda!10126))))

(assert (=> b!82963 true))

(declare-fun bs!40216 () Bool)

(declare-fun b!82961 () Bool)

(assert (= bs!40216 (and b!82961 b!82971)))

(declare-fun lambda!10128 () Int)

(assert (=> bs!40216 (not (= lambda!10128 lambda!10126))))

(declare-fun bs!40217 () Bool)

(assert (= bs!40217 (and b!82961 b!82963)))

(assert (=> bs!40217 (not (= lambda!10128 lambda!10127))))

(assert (=> b!82961 true))

(declare-fun bs!40218 () Bool)

(declare-fun b!82965 () Bool)

(assert (= bs!40218 (and b!82965 b!82971)))

(declare-fun lambda!10129 () Int)

(assert (=> bs!40218 (not (= lambda!10129 lambda!10126))))

(declare-fun bs!40219 () Bool)

(assert (= bs!40219 (and b!82965 b!82963)))

(assert (=> bs!40219 (not (= lambda!10129 lambda!10127))))

(declare-fun bs!40220 () Bool)

(assert (= bs!40220 (and b!82965 b!82961)))

(assert (=> bs!40220 (not (= lambda!10129 lambda!10128))))

(assert (=> b!82965 true))

(declare-fun res!42601 () Bool)

(declare-fun e!45004 () Bool)

(assert (=> b!82961 (=> (not res!42601) (not e!45004))))

(declare-datatypes () ((List!673 (Cons!630 (h!1000 Int) (t!47897 List!673)) (Nil!632))))

(declare-fun more!5 () List!673)

(declare-fun ls!96 () List!673)

(declare-fun filter!26 (List!673 Int) List!673)

(assert (=> b!82961 (= res!42601 (= more!5 (filter!26 (t!47897 ls!96) lambda!10128)))))

(declare-fun b!82962 () Bool)

(declare-fun res!42607 () Bool)

(assert (=> b!82962 (=> (not res!42607) (not e!45004))))

(declare-fun less!5 () List!673)

(declare-fun equal!10 () List!673)

(declare-fun append_sorted!0 (List!673 List!673) Bool)

(declare-fun quickSort!0 (List!673) List!673)

(assert (=> b!82962 (= res!42607 (append_sorted!0 (quickSort!0 less!5) equal!10))))

(declare-fun res!42602 () Bool)

(assert (=> b!82963 (=> (not res!42602) (not e!45004))))

(assert (=> b!82963 (= res!42602 (= equal!10 (Cons!630 (h!1000 ls!96) (filter!26 (t!47897 ls!96) lambda!10127))))))

(declare-fun b!82964 () Bool)

(declare-fun append_preserves_forall!0 (List!673 List!673 Int) Bool)

(assert (=> b!82964 (= e!45004 (not (append_preserves_forall!0 (quickSort!0 less!5) equal!10 lambda!10129)))))

(declare-fun res!42609 () Bool)

(assert (=> b!82965 (=> (not res!42609) (not e!45004))))

(declare-fun sort_preserves_forall!0 (List!673 Int) Bool)

(assert (=> b!82965 (= res!42609 (sort_preserves_forall!0 less!5 lambda!10129))))

(declare-fun res!42611 () Bool)

(assert (=> start!10862 (=> (not res!42611) (not e!45004))))

(assert (=> start!10862 (= res!42611 (and (not (is-Nil!632 ls!96)) (not (is-Nil!632 (t!47897 ls!96)))))))

(assert (=> start!10862 e!45004))

(assert (=> start!10862 true))

(declare-fun b!82966 () Bool)

(declare-fun res!42605 () Bool)

(assert (=> b!82966 (=> (not res!42605) (not e!45004))))

(declare-fun sorted_lemma!0 (List!673) Bool)

(assert (=> b!82966 (= res!42605 (sorted_lemma!0 less!5))))

(declare-fun b!82967 () Bool)

(declare-fun res!42604 () Bool)

(assert (=> b!82967 (=> (not res!42604) (not e!45004))))

(declare-fun forall_last!0 (List!673 Int) Bool)

(assert (=> b!82967 (= res!42604 (forall_last!0 (quickSort!0 less!5) lambda!10126))))

(declare-fun b!82968 () Bool)

(declare-fun res!42610 () Bool)

(assert (=> b!82968 (=> (not res!42610) (not e!45004))))

(declare-fun forall_lt_implies_le!0 (List!673 Int) Bool)

(assert (=> b!82968 (= res!42610 (forall_lt_implies_le!0 less!5 (h!1000 ls!96)))))

(declare-fun b!82969 () Bool)

(declare-fun res!42612 () Bool)

(assert (=> b!82969 (=> (not res!42612) (not e!45004))))

(declare-fun forall_eq_implies_le!0 (List!673 Int) Bool)

(assert (=> b!82969 (= res!42612 (forall_eq_implies_le!0 equal!10 (h!1000 ls!96)))))

(declare-fun b!82970 () Bool)

(declare-fun res!42603 () Bool)

(assert (=> b!82970 (=> (not res!42603) (not e!45004))))

(declare-fun cons_filter_equal_sorted!0 (List!673 Int) Bool)

(assert (=> b!82970 (= res!42603 (cons_filter_equal_sorted!0 (t!47897 ls!96) (h!1000 ls!96)))))

(declare-fun res!42608 () Bool)

(assert (=> b!82971 (=> (not res!42608) (not e!45004))))

(assert (=> b!82971 (= res!42608 (= less!5 (filter!26 (t!47897 ls!96) lambda!10126)))))

(declare-fun b!82972 () Bool)

(declare-fun res!42606 () Bool)

(assert (=> b!82972 (=> (not res!42606) (not e!45004))))

(assert (=> b!82972 (= res!42606 (sort_preserves_forall!0 less!5 lambda!10126))))

(assert (= (and start!10862 res!42611) b!82971))

(assert (= (and b!82971 res!42608) b!82963))

(assert (= (and b!82963 res!42602) b!82961))

(assert (= (and b!82961 res!42601) b!82966))

(assert (= (and b!82966 res!42605) b!82972))

(assert (= (and b!82972 res!42606) b!82967))

(assert (= (and b!82967 res!42604) b!82970))

(assert (= (and b!82970 res!42603) b!82962))

(assert (= (and b!82962 res!42607) b!82968))

(assert (= (and b!82968 res!42610) b!82965))

(assert (= (and b!82965 res!42609) b!82969))

(assert (= (and b!82969 res!42612) b!82964))

(declare-fun m!78632 () Bool)

(assert (=> b!82971 m!78632))

(declare-fun m!78634 () Bool)

(assert (=> b!82963 m!78634))

(declare-fun m!78636 () Bool)

(assert (=> b!82965 m!78636))

(declare-fun m!78638 () Bool)

(assert (=> b!82970 m!78638))

(declare-fun m!78640 () Bool)

(assert (=> b!82962 m!78640))

(assert (=> b!82962 m!78640))

(declare-fun m!78642 () Bool)

(assert (=> b!82962 m!78642))

(declare-fun m!78644 () Bool)

(assert (=> b!82969 m!78644))

(declare-fun m!78646 () Bool)

(assert (=> b!82961 m!78646))

(declare-fun m!78648 () Bool)

(assert (=> b!82966 m!78648))

(declare-fun m!78650 () Bool)

(assert (=> b!82968 m!78650))

(assert (=> b!82967 m!78640))

(assert (=> b!82967 m!78640))

(declare-fun m!78652 () Bool)

(assert (=> b!82967 m!78652))

(assert (=> b!82964 m!78640))

(assert (=> b!82964 m!78640))

(declare-fun m!78654 () Bool)

(assert (=> b!82964 m!78654))

(declare-fun m!78656 () Bool)

(assert (=> b!82972 m!78656))

(push 1)

(assert (not b!82972))

(assert (not b!82966))

(assert (not b!82968))

(assert (not b!82967))

(assert (not b!82970))

(assert (not b!82971))

(assert (not b!82964))

(assert (not b!82963))

(assert (not b!82961))

(assert (not b!82965))

(assert (not b!82969))

(assert (not b!82962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!40221 () Bool)

(declare-fun b!82987 () Bool)

(assert (= bs!40221 (and b!82987 b!82971)))

(declare-fun lambda!10142 () Int)

(assert (=> bs!40221 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10142 lambda!10126))))

(declare-fun bs!40222 () Bool)

(assert (= bs!40222 (and b!82987 b!82963)))

(assert (=> bs!40222 (not (= lambda!10142 lambda!10127))))

(declare-fun bs!40223 () Bool)

(assert (= bs!40223 (and b!82987 b!82961)))

(assert (=> bs!40223 (not (= lambda!10142 lambda!10128))))

(declare-fun bs!40224 () Bool)

(assert (= bs!40224 (and b!82987 b!82965)))

(assert (=> bs!40224 (not (= lambda!10142 lambda!10129))))

(assert (=> b!82987 true))

(declare-fun lambda!10143 () Int)

(assert (=> bs!40223 (not (= lambda!10143 lambda!10128))))

(assert (=> bs!40221 (not (= lambda!10143 lambda!10126))))

(assert (=> bs!40222 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10143 lambda!10127))))

(assert (=> bs!40224 (not (= lambda!10143 lambda!10129))))

(assert (=> b!82987 (not (= lambda!10143 lambda!10142))))

(assert (=> b!82987 true))

(declare-fun lambda!10144 () Int)

(assert (=> bs!40223 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10144 lambda!10128))))

(assert (=> bs!40221 (not (= lambda!10144 lambda!10126))))

(assert (=> bs!40222 (not (= lambda!10144 lambda!10127))))

(assert (=> bs!40224 (not (= lambda!10144 lambda!10129))))

(assert (=> b!82987 (not (= lambda!10144 lambda!10143))))

(assert (=> b!82987 (not (= lambda!10144 lambda!10142))))

(assert (=> b!82987 true))

(declare-fun b!82985 () Bool)

(declare-fun e!45017 () Bool)

(declare-fun lt!19265 () List!673)

(assert (=> b!82985 (= e!45017 (sort_preserves_forall!0 lt!19265 lambda!10129))))

(declare-fun e!45019 () Bool)

(declare-fun b!82986 () Bool)

(declare-fun filter_preserves_forall!0 (List!673 Int Int) Bool)

(assert (=> b!82986 (= e!45019 (filter_preserves_forall!0 (t!47897 less!5) lambda!10143 lambda!10129))))

(declare-fun e!45016 () Bool)

(declare-fun e!45015 () Bool)

(assert (=> b!82987 (= e!45016 e!45015)))

(declare-fun res!42629 () Bool)

(assert (=> b!82987 (=> (not res!42629) (not e!45015))))

(declare-fun lt!19263 () List!673)

(declare-fun lt!19264 () List!673)

(assert (=> b!82987 (= res!42629 (append_preserves_forall!0 (quickSort!0 lt!19263) lt!19264 lambda!10129))))

(declare-fun lt!19267 () Bool)

(assert (=> b!82987 (= lt!19267 e!45017)))

(declare-fun res!42630 () Bool)

(assert (=> b!82987 (=> (not res!42630) (not e!45017))))

(assert (=> b!82987 (= res!42630 (sort_preserves_forall!0 lt!19263 lambda!10129))))

(declare-fun lt!19266 () Bool)

(declare-fun e!45018 () Bool)

(assert (=> b!82987 (= lt!19266 e!45018)))

(declare-fun res!42628 () Bool)

(assert (=> b!82987 (=> (not res!42628) (not e!45018))))

(assert (=> b!82987 (= res!42628 e!45019)))

(declare-fun res!42631 () Bool)

(assert (=> b!82987 (=> (not res!42631) (not e!45019))))

(assert (=> b!82987 (= res!42631 (filter_preserves_forall!0 (t!47897 less!5) lambda!10142 lambda!10129))))

(assert (=> b!82987 (= lt!19265 (filter!26 (t!47897 less!5) lambda!10144))))

(assert (=> b!82987 (= lt!19264 (Cons!630 (h!1000 less!5) (filter!26 (t!47897 less!5) lambda!10143)))))

(assert (=> b!82987 (= lt!19263 (filter!26 (t!47897 less!5) lambda!10142))))

(declare-fun b!82988 () Bool)

(assert (=> b!82988 (= e!45018 (filter_preserves_forall!0 (t!47897 less!5) lambda!10144 lambda!10129))))

(declare-fun b!82989 () Bool)

(declare-fun ++!81 (List!673 List!673) List!673)

(assert (=> b!82989 (= e!45015 (append_preserves_forall!0 (++!81 (quickSort!0 lt!19263) lt!19264) (quickSort!0 lt!19265) lambda!10129))))

(declare-fun d!56423 () Bool)

(declare-fun forall!28 (List!673 Int) Bool)

(assert (=> d!56423 (forall!28 (quickSort!0 less!5) lambda!10129)))

(declare-fun lt!19268 () Bool)

(assert (=> d!56423 (= lt!19268 e!45016)))

(declare-fun res!42632 () Bool)

(assert (=> d!56423 (=> res!42632 e!45016)))

(assert (=> d!56423 (= res!42632 (or (is-Nil!632 less!5) (and (is-Cons!630 less!5) (is-Nil!632 (t!47897 less!5)))))))

(assert (=> d!56423 (forall!28 less!5 lambda!10129)))

(assert (=> d!56423 (= (sort_preserves_forall!0 less!5 lambda!10129) true)))

(assert (= (and d!56423 (not res!42632)) b!82987))

(assert (= (and b!82987 res!42631) b!82986))

(assert (= (and b!82987 res!42628) b!82988))

(assert (= (and b!82987 res!42630) b!82985))

(assert (= (and b!82987 res!42629) b!82989))

(declare-fun m!78658 () Bool)

(assert (=> b!82986 m!78658))

(declare-fun m!78660 () Bool)

(assert (=> b!82987 m!78660))

(declare-fun m!78662 () Bool)

(assert (=> b!82987 m!78662))

(declare-fun m!78664 () Bool)

(assert (=> b!82987 m!78664))

(declare-fun m!78666 () Bool)

(assert (=> b!82987 m!78666))

(assert (=> b!82987 m!78660))

(declare-fun m!78668 () Bool)

(assert (=> b!82987 m!78668))

(declare-fun m!78670 () Bool)

(assert (=> b!82987 m!78670))

(declare-fun m!78672 () Bool)

(assert (=> b!82987 m!78672))

(declare-fun m!78674 () Bool)

(assert (=> b!82988 m!78674))

(declare-fun m!78676 () Bool)

(assert (=> b!82985 m!78676))

(assert (=> d!56423 m!78640))

(assert (=> d!56423 m!78640))

(declare-fun m!78678 () Bool)

(assert (=> d!56423 m!78678))

(declare-fun m!78680 () Bool)

(assert (=> d!56423 m!78680))

(assert (=> b!82989 m!78660))

(assert (=> b!82989 m!78660))

(declare-fun m!78682 () Bool)

(assert (=> b!82989 m!78682))

(declare-fun m!78684 () Bool)

(assert (=> b!82989 m!78684))

(assert (=> b!82989 m!78682))

(assert (=> b!82989 m!78684))

(declare-fun m!78686 () Bool)

(assert (=> b!82989 m!78686))

(assert (=> b!82965 d!56423))

(declare-fun b!83002 () Bool)

(declare-fun e!45026 () Bool)

(declare-fun dynLambda!992 (Int Int) Bool)

(declare-fun last!23 (List!673) Int)

(assert (=> b!83002 (= e!45026 (dynLambda!992 lambda!10126 (last!23 (quickSort!0 less!5))))))

(declare-fun b!83003 () Bool)

(declare-fun e!45027 () Bool)

(assert (=> b!83003 (= e!45027 (dynLambda!992 lambda!10126 (last!23 (quickSort!0 less!5))))))

(declare-fun b!83004 () Bool)

(declare-fun e!45028 () Bool)

(assert (=> b!83004 (= e!45028 e!45027)))

(declare-fun res!42643 () Bool)

(assert (=> b!83004 (=> res!42643 e!45027)))

(assert (=> b!83004 (= res!42643 (not (forall!28 (quickSort!0 less!5) lambda!10126)))))

(declare-fun lt!19271 () Bool)

(assert (=> b!83004 (= lt!19271 (forall_last!0 (t!47897 (quickSort!0 less!5)) lambda!10126))))

(declare-fun b!83005 () Bool)

(declare-fun res!42644 () Bool)

(assert (=> b!83005 (=> res!42644 e!45026)))

(declare-fun isEmpty!683 (List!673) Bool)

(assert (=> b!83005 (= res!42644 (isEmpty!683 (quickSort!0 less!5)))))

(declare-fun d!56425 () Bool)

(assert (=> d!56425 e!45028))

(declare-fun c!20817 () Bool)

(assert (=> d!56425 (= c!20817 (is-Cons!630 (quickSort!0 less!5)))))

(assert (=> d!56425 (= (forall_last!0 (quickSort!0 less!5) lambda!10126) true)))

(declare-fun b!83006 () Bool)

(declare-fun res!42641 () Bool)

(assert (=> b!83006 (=> res!42641 e!45027)))

(assert (=> b!83006 (= res!42641 (isEmpty!683 (quickSort!0 less!5)))))

(declare-fun b!83007 () Bool)

(assert (=> b!83007 (= e!45028 e!45026)))

(declare-fun res!42642 () Bool)

(assert (=> b!83007 (=> res!42642 e!45026)))

(assert (=> b!83007 (= res!42642 (not (forall!28 (quickSort!0 less!5) lambda!10126)))))

(assert (= (and b!83004 (not res!42643)) b!83006))

(assert (= (and b!83006 (not res!42641)) b!83003))

(assert (= (and b!83007 (not res!42642)) b!83005))

(assert (= (and b!83005 (not res!42644)) b!83002))

(assert (= (and d!56425 c!20817) b!83004))

(assert (= (and d!56425 (not c!20817)) b!83007))

(declare-fun b_lambda!16411 () Bool)

(assert (=> (not b_lambda!16411) (not b!83002)))

(declare-fun b_lambda!16413 () Bool)

(assert (=> (not b_lambda!16413) (not b!83003)))

(assert (=> b!83007 m!78640))

(declare-fun m!78688 () Bool)

(assert (=> b!83007 m!78688))

(assert (=> b!83005 m!78640))

(declare-fun m!78690 () Bool)

(assert (=> b!83005 m!78690))

(assert (=> b!83006 m!78640))

(assert (=> b!83006 m!78690))

(assert (=> b!83002 m!78640))

(declare-fun m!78692 () Bool)

(assert (=> b!83002 m!78692))

(assert (=> b!83002 m!78692))

(declare-fun m!78694 () Bool)

(assert (=> b!83002 m!78694))

(assert (=> b!83003 m!78640))

(assert (=> b!83003 m!78692))

(assert (=> b!83003 m!78692))

(assert (=> b!83003 m!78694))

(assert (=> b!83004 m!78640))

(assert (=> b!83004 m!78688))

(declare-fun m!78696 () Bool)

(assert (=> b!83004 m!78696))

(assert (=> b!82967 d!56425))

(declare-fun bs!40225 () Bool)

(declare-fun b!83019 () Bool)

(assert (= bs!40225 (and b!83019 b!82961)))

(declare-fun lambda!10151 () Int)

(assert (=> bs!40225 (not (= lambda!10151 lambda!10128))))

(declare-fun bs!40226 () Bool)

(assert (= bs!40226 (and b!83019 b!82971)))

(assert (=> bs!40226 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10151 lambda!10126))))

(declare-fun bs!40227 () Bool)

(assert (= bs!40227 (and b!83019 b!82963)))

(assert (=> bs!40227 (not (= lambda!10151 lambda!10127))))

(declare-fun bs!40228 () Bool)

(assert (= bs!40228 (and b!83019 b!82965)))

(assert (=> bs!40228 (not (= lambda!10151 lambda!10129))))

(declare-fun bs!40229 () Bool)

(assert (= bs!40229 (and b!83019 b!82987)))

(assert (=> bs!40229 (not (= lambda!10151 lambda!10144))))

(assert (=> bs!40229 (not (= lambda!10151 lambda!10143))))

(assert (=> bs!40229 (= lambda!10151 lambda!10142)))

(assert (=> b!83019 true))

(declare-fun lambda!10152 () Int)

(assert (=> b!83019 (not (= lambda!10152 lambda!10151))))

(assert (=> bs!40225 (not (= lambda!10152 lambda!10128))))

(assert (=> bs!40226 (not (= lambda!10152 lambda!10126))))

(assert (=> bs!40227 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10152 lambda!10127))))

(assert (=> bs!40228 (not (= lambda!10152 lambda!10129))))

(assert (=> bs!40229 (not (= lambda!10152 lambda!10144))))

(assert (=> bs!40229 (= lambda!10152 lambda!10143)))

(assert (=> bs!40229 (not (= lambda!10152 lambda!10142))))

(assert (=> b!83019 true))

(declare-fun lambda!10153 () Int)

(assert (=> b!83019 (not (= lambda!10153 lambda!10152))))

(assert (=> b!83019 (not (= lambda!10153 lambda!10151))))

(assert (=> bs!40225 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10153 lambda!10128))))

(assert (=> bs!40226 (not (= lambda!10153 lambda!10126))))

(assert (=> bs!40227 (not (= lambda!10153 lambda!10127))))

(assert (=> bs!40228 (not (= lambda!10153 lambda!10129))))

(assert (=> bs!40229 (= lambda!10153 lambda!10144)))

(assert (=> bs!40229 (not (= lambda!10153 lambda!10143))))

(assert (=> bs!40229 (not (= lambda!10153 lambda!10142))))

(assert (=> b!83019 true))

(declare-fun e!45034 () List!673)

(assert (=> b!83019 (= e!45034 (++!81 (++!81 (quickSort!0 (filter!26 (t!47897 less!5) lambda!10151)) (Cons!630 (h!1000 less!5) (filter!26 (t!47897 less!5) lambda!10152))) (quickSort!0 (filter!26 (t!47897 less!5) lambda!10153))))))

(declare-fun d!56427 () Bool)

(declare-fun c!20822 () Bool)

(assert (=> d!56427 (= c!20822 (is-Nil!632 less!5))))

(declare-fun e!45033 () List!673)

(assert (=> d!56427 (= (quickSort!0 less!5) e!45033)))

(declare-fun b!83016 () Bool)

(assert (=> b!83016 (= e!45033 Nil!632)))

(declare-fun b!83018 () Bool)

(assert (=> b!83018 (= e!45034 less!5)))

(declare-fun b!83017 () Bool)

(assert (=> b!83017 (= e!45033 e!45034)))

(declare-fun c!20823 () Bool)

(assert (=> b!83017 (= c!20823 (and (is-Cons!630 less!5) (is-Nil!632 (t!47897 less!5))))))

(assert (= (and b!83017 c!20823) b!83018))

(assert (= (and b!83017 (not c!20823)) b!83019))

(assert (= (and d!56427 c!20822) b!83016))

(assert (= (and d!56427 (not c!20822)) b!83017))

(declare-fun m!78698 () Bool)

(assert (=> b!83019 m!78698))

(declare-fun m!78700 () Bool)

(assert (=> b!83019 m!78700))

(declare-fun m!78702 () Bool)

(assert (=> b!83019 m!78702))

(declare-fun m!78704 () Bool)

(assert (=> b!83019 m!78704))

(declare-fun m!78706 () Bool)

(assert (=> b!83019 m!78706))

(declare-fun m!78708 () Bool)

(assert (=> b!83019 m!78708))

(assert (=> b!83019 m!78702))

(assert (=> b!83019 m!78698))

(assert (=> b!83019 m!78708))

(declare-fun m!78710 () Bool)

(assert (=> b!83019 m!78710))

(assert (=> b!83019 m!78704))

(assert (=> b!83019 m!78710))

(assert (=> b!82967 d!56427))

(declare-fun bs!40230 () Bool)

(declare-fun d!56429 () Bool)

(assert (= bs!40230 (and d!56429 b!83019)))

(declare-fun lambda!10156 () Int)

(assert (=> bs!40230 (not (= lambda!10156 lambda!10153))))

(assert (=> bs!40230 (= (= (h!1000 ls!96) (h!1000 less!5)) (= lambda!10156 lambda!10152))))

(assert (=> bs!40230 (not (= lambda!10156 lambda!10151))))

(declare-fun bs!40231 () Bool)

(assert (= bs!40231 (and d!56429 b!82961)))

(assert (=> bs!40231 (not (= lambda!10156 lambda!10128))))

(declare-fun bs!40232 () Bool)

(assert (= bs!40232 (and d!56429 b!82971)))

(assert (=> bs!40232 (not (= lambda!10156 lambda!10126))))

(declare-fun bs!40233 () Bool)

(assert (= bs!40233 (and d!56429 b!82963)))

(assert (=> bs!40233 (= lambda!10156 lambda!10127)))

(declare-fun bs!40234 () Bool)

(assert (= bs!40234 (and d!56429 b!82965)))

(assert (=> bs!40234 (not (= lambda!10156 lambda!10129))))

(declare-fun bs!40235 () Bool)

(assert (= bs!40235 (and d!56429 b!82987)))

(assert (=> bs!40235 (not (= lambda!10156 lambda!10144))))

(assert (=> bs!40235 (= (= (h!1000 ls!96) (h!1000 less!5)) (= lambda!10156 lambda!10143))))

(assert (=> bs!40235 (not (= lambda!10156 lambda!10142))))

(assert (=> d!56429 true))

(declare-fun isSorted!1 (List!673) Bool)

(assert (=> d!56429 (isSorted!1 (Cons!630 (h!1000 ls!96) (filter!26 (t!47897 ls!96) lambda!10156)))))

(declare-datatypes () ((Unit!1193 (Unit!1194))))

(declare-fun lt!19274 () Unit!1193)

(declare-fun Unit!1195 () Unit!1193)

(assert (=> d!56429 (= lt!19274 Unit!1195)))

(declare-fun filter_equal_sorted!0 (List!673 Int) Bool)

(assert (=> d!56429 (filter_equal_sorted!0 (t!47897 ls!96) (h!1000 ls!96))))

(assert (=> d!56429 (= (cons_filter_equal_sorted!0 (t!47897 ls!96) (h!1000 ls!96)) true)))

(declare-fun bs!40236 () Bool)

(assert (= bs!40236 d!56429))

(declare-fun m!78712 () Bool)

(assert (=> bs!40236 m!78712))

(declare-fun m!78714 () Bool)

(assert (=> bs!40236 m!78714))

(declare-fun m!78716 () Bool)

(assert (=> bs!40236 m!78716))

(assert (=> b!82970 d!56429))

(declare-fun bs!40237 () Bool)

(declare-fun b!83026 () Bool)

(assert (= bs!40237 (and b!83026 b!83019)))

(declare-fun lambda!10163 () Int)

(assert (=> bs!40237 (not (= lambda!10163 lambda!10153))))

(assert (=> bs!40237 (not (= lambda!10163 lambda!10152))))

(assert (=> bs!40237 (= lambda!10163 lambda!10151)))

(declare-fun bs!40238 () Bool)

(assert (= bs!40238 (and b!83026 b!82961)))

(assert (=> bs!40238 (not (= lambda!10163 lambda!10128))))

(declare-fun bs!40239 () Bool)

(assert (= bs!40239 (and b!83026 b!82971)))

(assert (=> bs!40239 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10163 lambda!10126))))

(declare-fun bs!40240 () Bool)

(assert (= bs!40240 (and b!83026 b!82963)))

(assert (=> bs!40240 (not (= lambda!10163 lambda!10127))))

(declare-fun bs!40241 () Bool)

(assert (= bs!40241 (and b!83026 d!56429)))

(assert (=> bs!40241 (not (= lambda!10163 lambda!10156))))

(declare-fun bs!40242 () Bool)

(assert (= bs!40242 (and b!83026 b!82965)))

(assert (=> bs!40242 (not (= lambda!10163 lambda!10129))))

(declare-fun bs!40243 () Bool)

(assert (= bs!40243 (and b!83026 b!82987)))

(assert (=> bs!40243 (not (= lambda!10163 lambda!10144))))

(assert (=> bs!40243 (not (= lambda!10163 lambda!10143))))

(assert (=> bs!40243 (= lambda!10163 lambda!10142)))

(assert (=> b!83026 true))

(declare-fun lambda!10164 () Int)

(assert (=> bs!40237 (not (= lambda!10164 lambda!10153))))

(assert (=> bs!40237 (= lambda!10164 lambda!10152)))

(assert (=> bs!40237 (not (= lambda!10164 lambda!10151))))

(assert (=> bs!40238 (not (= lambda!10164 lambda!10128))))

(assert (=> bs!40239 (not (= lambda!10164 lambda!10126))))

(assert (=> bs!40240 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10164 lambda!10127))))

(assert (=> b!83026 (not (= lambda!10164 lambda!10163))))

(assert (=> bs!40241 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10164 lambda!10156))))

(assert (=> bs!40242 (not (= lambda!10164 lambda!10129))))

(assert (=> bs!40243 (not (= lambda!10164 lambda!10144))))

(assert (=> bs!40243 (= lambda!10164 lambda!10143)))

(assert (=> bs!40243 (not (= lambda!10164 lambda!10142))))

(assert (=> b!83026 true))

(declare-fun lambda!10165 () Int)

(assert (=> bs!40237 (= lambda!10165 lambda!10153)))

(assert (=> bs!40237 (not (= lambda!10165 lambda!10152))))

(assert (=> bs!40237 (not (= lambda!10165 lambda!10151))))

(assert (=> bs!40238 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10165 lambda!10128))))

(assert (=> bs!40239 (not (= lambda!10165 lambda!10126))))

(assert (=> bs!40240 (not (= lambda!10165 lambda!10127))))

(assert (=> b!83026 (not (= lambda!10165 lambda!10164))))

(assert (=> b!83026 (not (= lambda!10165 lambda!10163))))

(assert (=> bs!40241 (not (= lambda!10165 lambda!10156))))

(assert (=> bs!40242 (not (= lambda!10165 lambda!10129))))

(assert (=> bs!40243 (= lambda!10165 lambda!10144)))

(assert (=> bs!40243 (not (= lambda!10165 lambda!10143))))

(assert (=> bs!40243 (not (= lambda!10165 lambda!10142))))

(assert (=> b!83026 true))

(declare-fun d!56431 () Bool)

(assert (=> d!56431 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!19285 () Bool)

(declare-fun e!45039 () Bool)

(assert (=> d!56431 (= lt!19285 e!45039)))

(declare-fun res!42652 () Bool)

(assert (=> d!56431 (=> res!42652 e!45039)))

(assert (=> d!56431 (= res!42652 (or (is-Nil!632 less!5) (and (is-Cons!630 less!5) (is-Nil!632 (t!47897 less!5)))))))

(assert (=> d!56431 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!45040 () Bool)

(assert (=> b!83026 (= e!45039 e!45040)))

(declare-fun res!42651 () Bool)

(assert (=> b!83026 (=> (not res!42651) (not e!45040))))

(declare-fun lt!19283 () List!673)

(declare-fun lt!19286 () List!673)

(assert (=> b!83026 (= res!42651 (append_sorted!0 (quickSort!0 lt!19283) lt!19286))))

(declare-fun lt!19284 () List!673)

(assert (=> b!83026 (= lt!19284 (filter!26 (t!47897 less!5) lambda!10165))))

(assert (=> b!83026 (= lt!19286 (Cons!630 (h!1000 less!5) (filter!26 (t!47897 less!5) lambda!10164)))))

(assert (=> b!83026 (= lt!19283 (filter!26 (t!47897 less!5) lambda!10163))))

(declare-fun b!83027 () Bool)

(assert (=> b!83027 (= e!45040 (append_sorted!0 (++!81 (quickSort!0 lt!19283) lt!19286) (quickSort!0 lt!19284)))))

(assert (= (and d!56431 (not res!42652)) b!83026))

(assert (= (and b!83026 res!42651) b!83027))

(assert (=> d!56431 m!78640))

(assert (=> d!56431 m!78640))

(declare-fun m!78718 () Bool)

(assert (=> d!56431 m!78718))

(declare-fun m!78720 () Bool)

(assert (=> b!83026 m!78720))

(declare-fun m!78722 () Bool)

(assert (=> b!83026 m!78722))

(declare-fun m!78724 () Bool)

(assert (=> b!83026 m!78724))

(declare-fun m!78726 () Bool)

(assert (=> b!83026 m!78726))

(assert (=> b!83026 m!78724))

(declare-fun m!78728 () Bool)

(assert (=> b!83026 m!78728))

(assert (=> b!83027 m!78724))

(assert (=> b!83027 m!78724))

(declare-fun m!78730 () Bool)

(assert (=> b!83027 m!78730))

(declare-fun m!78732 () Bool)

(assert (=> b!83027 m!78732))

(assert (=> b!83027 m!78730))

(assert (=> b!83027 m!78732))

(declare-fun m!78734 () Bool)

(assert (=> b!83027 m!78734))

(assert (=> b!82966 d!56431))

(declare-fun b!83042 () Bool)

(declare-fun e!45052 () List!673)

(declare-fun lt!19291 () List!673)

(assert (=> b!83042 (= e!45052 lt!19291)))

(declare-fun d!56433 () Bool)

(declare-fun e!45049 () Bool)

(assert (=> d!56433 e!45049))

(declare-fun res!42664 () Bool)

(assert (=> d!56433 (=> (not res!42664) (not e!45049))))

(declare-fun lt!19292 () List!673)

(declare-fun size!661 (List!673) Int)

(assert (=> d!56433 (= res!42664 (<= (size!661 lt!19292) (size!661 (t!47897 ls!96))))))

(declare-fun e!45050 () List!673)

(assert (=> d!56433 (= lt!19292 e!45050)))

(declare-fun c!20828 () Bool)

(assert (=> d!56433 (= c!20828 (is-Nil!632 (t!47897 ls!96)))))

(assert (=> d!56433 (= (filter!26 (t!47897 ls!96) lambda!10127) lt!19292)))

(declare-fun b!83043 () Bool)

(assert (=> b!83043 (= e!45052 (Cons!630 (h!1000 (t!47897 ls!96)) lt!19291))))

(declare-fun b!83044 () Bool)

(assert (=> b!83044 (= e!45050 e!45052)))

(declare-fun c!20829 () Bool)

(declare-fun e!45051 () Bool)

(assert (=> b!83044 (= c!20829 e!45051)))

(declare-fun res!42663 () Bool)

(assert (=> b!83044 (=> (not res!42663) (not e!45051))))

(assert (=> b!83044 (= res!42663 (is-Cons!630 (t!47897 ls!96)))))

(assert (=> b!83044 (= lt!19291 (filter!26 (t!47897 (t!47897 ls!96)) lambda!10127))))

(declare-fun b!83045 () Bool)

(assert (=> b!83045 (= e!45051 (dynLambda!992 lambda!10127 (h!1000 (t!47897 ls!96))))))

(declare-fun b!83046 () Bool)

(assert (=> b!83046 (= e!45050 Nil!632)))

(declare-fun b!83047 () Bool)

(declare-fun res!42665 () Bool)

(assert (=> b!83047 (=> (not res!42665) (not e!45049))))

(declare-fun content!132 (List!673) (Set Int))

(assert (=> b!83047 (= res!42665 (subset (content!132 lt!19292) (content!132 (t!47897 ls!96))))))

(declare-fun b!83048 () Bool)

(assert (=> b!83048 (= e!45049 (forall!28 lt!19292 lambda!10127))))

(assert (= (and b!83044 res!42663) b!83045))

(assert (= (and b!83044 c!20829) b!83043))

(assert (= (and b!83044 (not c!20829)) b!83042))

(assert (= (and d!56433 c!20828) b!83046))

(assert (= (and d!56433 (not c!20828)) b!83044))

(assert (= (and d!56433 res!42664) b!83047))

(assert (= (and b!83047 res!42665) b!83048))

(declare-fun b_lambda!16415 () Bool)

(assert (=> (not b_lambda!16415) (not b!83045)))

(declare-fun m!78736 () Bool)

(assert (=> b!83047 m!78736))

(declare-fun m!78738 () Bool)

(assert (=> b!83047 m!78738))

(declare-fun m!78740 () Bool)

(assert (=> b!83048 m!78740))

(declare-fun m!78742 () Bool)

(assert (=> d!56433 m!78742))

(declare-fun m!78744 () Bool)

(assert (=> d!56433 m!78744))

(declare-fun m!78746 () Bool)

(assert (=> b!83044 m!78746))

(declare-fun m!78748 () Bool)

(assert (=> b!83045 m!78748))

(assert (=> b!82963 d!56433))

(declare-fun bs!40244 () Bool)

(declare-fun d!56435 () Bool)

(assert (= bs!40244 (and d!56435 b!83019)))

(declare-fun lambda!10172 () Int)

(assert (=> bs!40244 (not (= lambda!10172 lambda!10153))))

(assert (=> bs!40244 (= (= (h!1000 ls!96) (h!1000 less!5)) (= lambda!10172 lambda!10152))))

(assert (=> bs!40244 (not (= lambda!10172 lambda!10151))))

(declare-fun bs!40245 () Bool)

(assert (= bs!40245 (and d!56435 b!82961)))

(assert (=> bs!40245 (not (= lambda!10172 lambda!10128))))

(declare-fun bs!40246 () Bool)

(assert (= bs!40246 (and d!56435 b!82971)))

(assert (=> bs!40246 (not (= lambda!10172 lambda!10126))))

(declare-fun bs!40247 () Bool)

(assert (= bs!40247 (and d!56435 b!82963)))

(assert (=> bs!40247 (= lambda!10172 lambda!10127)))

(declare-fun bs!40248 () Bool)

(assert (= bs!40248 (and d!56435 b!83026)))

(assert (=> bs!40248 (not (= lambda!10172 lambda!10165))))

(assert (=> bs!40248 (= (= (h!1000 ls!96) (h!1000 less!5)) (= lambda!10172 lambda!10164))))

(assert (=> bs!40248 (not (= lambda!10172 lambda!10163))))

(declare-fun bs!40249 () Bool)

(assert (= bs!40249 (and d!56435 d!56429)))

(assert (=> bs!40249 (= lambda!10172 lambda!10156)))

(declare-fun bs!40250 () Bool)

(assert (= bs!40250 (and d!56435 b!82965)))

(assert (=> bs!40250 (not (= lambda!10172 lambda!10129))))

(declare-fun bs!40251 () Bool)

(assert (= bs!40251 (and d!56435 b!82987)))

(assert (=> bs!40251 (not (= lambda!10172 lambda!10144))))

(assert (=> bs!40251 (= (= (h!1000 ls!96) (h!1000 less!5)) (= lambda!10172 lambda!10143))))

(assert (=> bs!40251 (not (= lambda!10172 lambda!10142))))

(assert (=> d!56435 true))

(declare-fun bs!40252 () Bool)

(declare-fun b!83053 () Bool)

(assert (= bs!40252 (and b!83053 b!83019)))

(declare-fun lambda!10173 () Int)

(assert (=> bs!40252 (not (= lambda!10173 lambda!10153))))

(assert (=> bs!40252 (not (= lambda!10173 lambda!10152))))

(assert (=> bs!40252 (not (= lambda!10173 lambda!10151))))

(declare-fun bs!40253 () Bool)

(assert (= bs!40253 (and b!83053 b!82961)))

(assert (=> bs!40253 (not (= lambda!10173 lambda!10128))))

(declare-fun bs!40254 () Bool)

(assert (= bs!40254 (and b!83053 b!82971)))

(assert (=> bs!40254 (not (= lambda!10173 lambda!10126))))

(declare-fun bs!40255 () Bool)

(assert (= bs!40255 (and b!83053 b!82963)))

(assert (=> bs!40255 (not (= lambda!10173 lambda!10127))))

(declare-fun bs!40256 () Bool)

(assert (= bs!40256 (and b!83053 b!83026)))

(assert (=> bs!40256 (not (= lambda!10173 lambda!10165))))

(assert (=> bs!40256 (not (= lambda!10173 lambda!10164))))

(assert (=> bs!40256 (not (= lambda!10173 lambda!10163))))

(declare-fun bs!40257 () Bool)

(assert (= bs!40257 (and b!83053 d!56429)))

(assert (=> bs!40257 (not (= lambda!10173 lambda!10156))))

(declare-fun bs!40258 () Bool)

(assert (= bs!40258 (and b!83053 b!82965)))

(assert (=> bs!40258 (= lambda!10173 lambda!10129)))

(declare-fun bs!40259 () Bool)

(assert (= bs!40259 (and b!83053 b!82987)))

(assert (=> bs!40259 (not (= lambda!10173 lambda!10144))))

(assert (=> bs!40259 (not (= lambda!10173 lambda!10143))))

(assert (=> bs!40259 (not (= lambda!10173 lambda!10142))))

(declare-fun bs!40260 () Bool)

(assert (= bs!40260 (and b!83053 d!56435)))

(assert (=> bs!40260 (not (= lambda!10173 lambda!10172))))

(assert (=> b!83053 true))

(declare-fun bs!40261 () Bool)

(declare-fun b!83054 () Bool)

(assert (= bs!40261 (and b!83054 b!83053)))

(declare-fun lambda!10174 () Int)

(assert (=> bs!40261 (= lambda!10174 lambda!10173)))

(declare-fun bs!40262 () Bool)

(assert (= bs!40262 (and b!83054 b!83019)))

(assert (=> bs!40262 (not (= lambda!10174 lambda!10153))))

(assert (=> bs!40262 (not (= lambda!10174 lambda!10152))))

(assert (=> bs!40262 (not (= lambda!10174 lambda!10151))))

(declare-fun bs!40263 () Bool)

(assert (= bs!40263 (and b!83054 b!82961)))

(assert (=> bs!40263 (not (= lambda!10174 lambda!10128))))

(declare-fun bs!40264 () Bool)

(assert (= bs!40264 (and b!83054 b!82971)))

(assert (=> bs!40264 (not (= lambda!10174 lambda!10126))))

(declare-fun bs!40265 () Bool)

(assert (= bs!40265 (and b!83054 b!82963)))

(assert (=> bs!40265 (not (= lambda!10174 lambda!10127))))

(declare-fun bs!40266 () Bool)

(assert (= bs!40266 (and b!83054 b!83026)))

(assert (=> bs!40266 (not (= lambda!10174 lambda!10165))))

(assert (=> bs!40266 (not (= lambda!10174 lambda!10164))))

(assert (=> bs!40266 (not (= lambda!10174 lambda!10163))))

(declare-fun bs!40267 () Bool)

(assert (= bs!40267 (and b!83054 d!56429)))

(assert (=> bs!40267 (not (= lambda!10174 lambda!10156))))

(declare-fun bs!40268 () Bool)

(assert (= bs!40268 (and b!83054 b!82965)))

(assert (=> bs!40268 (= lambda!10174 lambda!10129)))

(declare-fun bs!40269 () Bool)

(assert (= bs!40269 (and b!83054 b!82987)))

(assert (=> bs!40269 (not (= lambda!10174 lambda!10144))))

(assert (=> bs!40269 (not (= lambda!10174 lambda!10143))))

(assert (=> bs!40269 (not (= lambda!10174 lambda!10142))))

(declare-fun bs!40270 () Bool)

(assert (= bs!40270 (and b!83054 d!56435)))

(assert (=> bs!40270 (not (= lambda!10174 lambda!10172))))

(assert (=> b!83054 true))

(declare-fun e!45055 () Bool)

(assert (=> d!56435 e!45055))

(declare-fun c!20832 () Bool)

(assert (=> d!56435 (= c!20832 (is-Cons!630 equal!10))))

(assert (=> d!56435 (forall!28 equal!10 lambda!10172)))

(assert (=> d!56435 (= (forall_eq_implies_le!0 equal!10 (h!1000 ls!96)) true)))

(assert (=> b!83053 (= e!45055 (forall!28 equal!10 lambda!10173))))

(declare-fun lt!19295 () Bool)

(assert (=> b!83053 (= lt!19295 (forall_eq_implies_le!0 (t!47897 equal!10) (h!1000 ls!96)))))

(assert (=> b!83054 (= e!45055 (forall!28 equal!10 lambda!10174))))

(assert (= (and d!56435 c!20832) b!83053))

(assert (= (and d!56435 (not c!20832)) b!83054))

(declare-fun m!78750 () Bool)

(assert (=> d!56435 m!78750))

(declare-fun m!78752 () Bool)

(assert (=> b!83053 m!78752))

(declare-fun m!78754 () Bool)

(assert (=> b!83053 m!78754))

(declare-fun m!78756 () Bool)

(assert (=> b!83054 m!78756))

(assert (=> b!82969 d!56435))

(declare-fun d!56437 () Bool)

(declare-fun e!45060 () Bool)

(assert (=> d!56437 e!45060))

(declare-fun c!20835 () Bool)

(assert (=> d!56437 (= c!20835 (is-Cons!630 (quickSort!0 less!5)))))

(declare-fun e!45061 () Bool)

(assert (=> d!56437 e!45061))

(declare-fun res!42668 () Bool)

(assert (=> d!56437 (=> (not res!42668) (not e!45061))))

(assert (=> d!56437 (= res!42668 (forall!28 (quickSort!0 less!5) lambda!10129))))

(assert (=> d!56437 (= (append_preserves_forall!0 (quickSort!0 less!5) equal!10 lambda!10129) true)))

(declare-fun b!83061 () Bool)

(assert (=> b!83061 (= e!45061 (forall!28 equal!10 lambda!10129))))

(declare-fun b!83062 () Bool)

(assert (=> b!83062 (= e!45060 (forall!28 (++!81 (quickSort!0 less!5) equal!10) lambda!10129))))

(declare-fun lt!19298 () Bool)

(assert (=> b!83062 (= lt!19298 (append_preserves_forall!0 (t!47897 (quickSort!0 less!5)) equal!10 lambda!10129))))

(declare-fun b!83063 () Bool)

(assert (=> b!83063 (= e!45060 (forall!28 (++!81 (quickSort!0 less!5) equal!10) lambda!10129))))

(assert (= (and d!56437 res!42668) b!83061))

(assert (= (and d!56437 c!20835) b!83062))

(assert (= (and d!56437 (not c!20835)) b!83063))

(assert (=> d!56437 m!78640))

(assert (=> d!56437 m!78678))

(declare-fun m!78758 () Bool)

(assert (=> b!83061 m!78758))

(assert (=> b!83062 m!78640))

(declare-fun m!78760 () Bool)

(assert (=> b!83062 m!78760))

(assert (=> b!83062 m!78760))

(declare-fun m!78762 () Bool)

(assert (=> b!83062 m!78762))

(declare-fun m!78764 () Bool)

(assert (=> b!83062 m!78764))

(assert (=> b!83063 m!78640))

(assert (=> b!83063 m!78760))

(assert (=> b!83063 m!78760))

(assert (=> b!83063 m!78762))

(assert (=> b!82964 d!56437))

(assert (=> b!82964 d!56427))

(declare-fun bs!40271 () Bool)

(declare-fun b!83066 () Bool)

(assert (= bs!40271 (and b!83066 b!83054)))

(declare-fun lambda!10175 () Int)

(assert (=> bs!40271 (not (= lambda!10175 lambda!10174))))

(declare-fun bs!40272 () Bool)

(assert (= bs!40272 (and b!83066 b!83053)))

(assert (=> bs!40272 (not (= lambda!10175 lambda!10173))))

(declare-fun bs!40273 () Bool)

(assert (= bs!40273 (and b!83066 b!83019)))

(assert (=> bs!40273 (not (= lambda!10175 lambda!10153))))

(assert (=> bs!40273 (not (= lambda!10175 lambda!10152))))

(assert (=> bs!40273 (= lambda!10175 lambda!10151)))

(declare-fun bs!40274 () Bool)

(assert (= bs!40274 (and b!83066 b!82961)))

(assert (=> bs!40274 (not (= lambda!10175 lambda!10128))))

(declare-fun bs!40275 () Bool)

(assert (= bs!40275 (and b!83066 b!82971)))

(assert (=> bs!40275 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10175 lambda!10126))))

(declare-fun bs!40276 () Bool)

(assert (= bs!40276 (and b!83066 b!82963)))

(assert (=> bs!40276 (not (= lambda!10175 lambda!10127))))

(declare-fun bs!40277 () Bool)

(assert (= bs!40277 (and b!83066 b!83026)))

(assert (=> bs!40277 (not (= lambda!10175 lambda!10165))))

(assert (=> bs!40277 (not (= lambda!10175 lambda!10164))))

(assert (=> bs!40277 (= lambda!10175 lambda!10163)))

(declare-fun bs!40278 () Bool)

(assert (= bs!40278 (and b!83066 d!56429)))

(assert (=> bs!40278 (not (= lambda!10175 lambda!10156))))

(declare-fun bs!40279 () Bool)

(assert (= bs!40279 (and b!83066 b!82965)))

(assert (=> bs!40279 (not (= lambda!10175 lambda!10129))))

(declare-fun bs!40280 () Bool)

(assert (= bs!40280 (and b!83066 b!82987)))

(assert (=> bs!40280 (not (= lambda!10175 lambda!10144))))

(assert (=> bs!40280 (not (= lambda!10175 lambda!10143))))

(assert (=> bs!40280 (= lambda!10175 lambda!10142)))

(declare-fun bs!40281 () Bool)

(assert (= bs!40281 (and b!83066 d!56435)))

(assert (=> bs!40281 (not (= lambda!10175 lambda!10172))))

(assert (=> b!83066 true))

(declare-fun lambda!10176 () Int)

(assert (=> bs!40271 (not (= lambda!10176 lambda!10174))))

(assert (=> bs!40272 (not (= lambda!10176 lambda!10173))))

(assert (=> bs!40273 (not (= lambda!10176 lambda!10153))))

(assert (=> bs!40273 (= lambda!10176 lambda!10152)))

(assert (=> bs!40273 (not (= lambda!10176 lambda!10151))))

(assert (=> bs!40274 (not (= lambda!10176 lambda!10128))))

(assert (=> bs!40275 (not (= lambda!10176 lambda!10126))))

(assert (=> bs!40276 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10176 lambda!10127))))

(assert (=> bs!40277 (not (= lambda!10176 lambda!10165))))

(assert (=> bs!40277 (= lambda!10176 lambda!10164)))

(assert (=> bs!40277 (not (= lambda!10176 lambda!10163))))

(assert (=> bs!40278 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10176 lambda!10156))))

(assert (=> bs!40279 (not (= lambda!10176 lambda!10129))))

(assert (=> b!83066 (not (= lambda!10176 lambda!10175))))

(assert (=> bs!40280 (not (= lambda!10176 lambda!10144))))

(assert (=> bs!40280 (= lambda!10176 lambda!10143)))

(assert (=> bs!40280 (not (= lambda!10176 lambda!10142))))

(assert (=> bs!40281 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10176 lambda!10172))))

(assert (=> b!83066 true))

(declare-fun lambda!10177 () Int)

(assert (=> bs!40271 (not (= lambda!10177 lambda!10174))))

(assert (=> bs!40272 (not (= lambda!10177 lambda!10173))))

(assert (=> bs!40273 (= lambda!10177 lambda!10153)))

(assert (=> bs!40273 (not (= lambda!10177 lambda!10152))))

(assert (=> bs!40273 (not (= lambda!10177 lambda!10151))))

(assert (=> bs!40274 (= (= (h!1000 less!5) (h!1000 ls!96)) (= lambda!10177 lambda!10128))))

(assert (=> bs!40275 (not (= lambda!10177 lambda!10126))))

(assert (=> bs!40276 (not (= lambda!10177 lambda!10127))))

(assert (=> bs!40277 (= lambda!10177 lambda!10165)))

(assert (=> bs!40277 (not (= lambda!10177 lambda!10164))))

(assert (=> bs!40277 (not (= lambda!10177 lambda!10163))))

(assert (=> bs!40278 (not (= lambda!10177 lambda!10156))))

(assert (=> bs!40279 (not (= lambda!10177 lambda!10129))))

(assert (=> b!83066 (not (= lambda!10177 lambda!10176))))

(assert (=> b!83066 (not (= lambda!10177 lambda!10175))))

(assert (=> bs!40280 (= lambda!10177 lambda!10144)))

(assert (=> bs!40280 (not (= lambda!10177 lambda!10143))))

(assert (=> bs!40280 (not (= lambda!10177 lambda!10142))))

(assert (=> bs!40281 (not (= lambda!10177 lambda!10172))))

(assert (=> b!83066 true))

(declare-fun b!83064 () Bool)

(declare-fun e!45064 () Bool)

(declare-fun lt!19301 () List!673)

(assert (=> b!83064 (= e!45064 (sort_preserves_forall!0 lt!19301 lambda!10126))))

(declare-fun b!83065 () Bool)

(declare-fun e!45066 () Bool)

(assert (=> b!83065 (= e!45066 (filter_preserves_forall!0 (t!47897 less!5) lambda!10176 lambda!10126))))

(declare-fun e!45063 () Bool)

(declare-fun e!45062 () Bool)

(assert (=> b!83066 (= e!45063 e!45062)))

(declare-fun res!42670 () Bool)

(assert (=> b!83066 (=> (not res!42670) (not e!45062))))

(declare-fun lt!19300 () List!673)

(declare-fun lt!19299 () List!673)

(assert (=> b!83066 (= res!42670 (append_preserves_forall!0 (quickSort!0 lt!19299) lt!19300 lambda!10126))))

(declare-fun lt!19303 () Bool)

(assert (=> b!83066 (= lt!19303 e!45064)))

(declare-fun res!42671 () Bool)

(assert (=> b!83066 (=> (not res!42671) (not e!45064))))

(assert (=> b!83066 (= res!42671 (sort_preserves_forall!0 lt!19299 lambda!10126))))

(declare-fun lt!19302 () Bool)

(declare-fun e!45065 () Bool)

(assert (=> b!83066 (= lt!19302 e!45065)))

(declare-fun res!42669 () Bool)

(assert (=> b!83066 (=> (not res!42669) (not e!45065))))

(assert (=> b!83066 (= res!42669 e!45066)))

(declare-fun res!42672 () Bool)

(assert (=> b!83066 (=> (not res!42672) (not e!45066))))

(assert (=> b!83066 (= res!42672 (filter_preserves_forall!0 (t!47897 less!5) lambda!10175 lambda!10126))))

(assert (=> b!83066 (= lt!19301 (filter!26 (t!47897 less!5) lambda!10177))))

(assert (=> b!83066 (= lt!19300 (Cons!630 (h!1000 less!5) (filter!26 (t!47897 less!5) lambda!10176)))))

(assert (=> b!83066 (= lt!19299 (filter!26 (t!47897 less!5) lambda!10175))))

(declare-fun b!83067 () Bool)

(assert (=> b!83067 (= e!45065 (filter_preserves_forall!0 (t!47897 less!5) lambda!10177 lambda!10126))))

(declare-fun b!83068 () Bool)

(assert (=> b!83068 (= e!45062 (append_preserves_forall!0 (++!81 (quickSort!0 lt!19299) lt!19300) (quickSort!0 lt!19301) lambda!10126))))

(declare-fun d!56439 () Bool)

(assert (=> d!56439 (forall!28 (quickSort!0 less!5) lambda!10126)))

(declare-fun lt!19304 () Bool)

(assert (=> d!56439 (= lt!19304 e!45063)))

(declare-fun res!42673 () Bool)

(assert (=> d!56439 (=> res!42673 e!45063)))

(assert (=> d!56439 (= res!42673 (or (is-Nil!632 less!5) (and (is-Cons!630 less!5) (is-Nil!632 (t!47897 less!5)))))))

(assert (=> d!56439 (forall!28 less!5 lambda!10126)))

(assert (=> d!56439 (= (sort_preserves_forall!0 less!5 lambda!10126) true)))

(assert (= (and d!56439 (not res!42673)) b!83066))

(assert (= (and b!83066 res!42672) b!83065))

(assert (= (and b!83066 res!42669) b!83067))

(assert (= (and b!83066 res!42671) b!83064))

(assert (= (and b!83066 res!42670) b!83068))

(declare-fun m!78766 () Bool)

(assert (=> b!83065 m!78766))

(declare-fun m!78768 () Bool)

(assert (=> b!83066 m!78768))

(declare-fun m!78770 () Bool)

(assert (=> b!83066 m!78770))

(declare-fun m!78772 () Bool)

(assert (=> b!83066 m!78772))

(declare-fun m!78774 () Bool)

(assert (=> b!83066 m!78774))

(assert (=> b!83066 m!78768))

(declare-fun m!78776 () Bool)

(assert (=> b!83066 m!78776))

(declare-fun m!78778 () Bool)

(assert (=> b!83066 m!78778))

(declare-fun m!78780 () Bool)

(assert (=> b!83066 m!78780))

(declare-fun m!78782 () Bool)

(assert (=> b!83067 m!78782))

(declare-fun m!78784 () Bool)

(assert (=> b!83064 m!78784))

(assert (=> d!56439 m!78640))

(assert (=> d!56439 m!78640))

(assert (=> d!56439 m!78688))

(declare-fun m!78786 () Bool)

(assert (=> d!56439 m!78786))

(assert (=> b!83068 m!78768))

(assert (=> b!83068 m!78768))

(declare-fun m!78788 () Bool)

(assert (=> b!83068 m!78788))

(declare-fun m!78790 () Bool)

(assert (=> b!83068 m!78790))

(assert (=> b!83068 m!78788))

(assert (=> b!83068 m!78790))

(declare-fun m!78792 () Bool)

(assert (=> b!83068 m!78792))

(assert (=> b!82972 d!56439))

(declare-fun b!83069 () Bool)

(declare-fun e!45070 () List!673)

(declare-fun lt!19305 () List!673)

(assert (=> b!83069 (= e!45070 lt!19305)))

(declare-fun d!56441 () Bool)

(declare-fun e!45067 () Bool)

(assert (=> d!56441 e!45067))

(declare-fun res!42675 () Bool)

(assert (=> d!56441 (=> (not res!42675) (not e!45067))))

(declare-fun lt!19306 () List!673)

(assert (=> d!56441 (= res!42675 (<= (size!661 lt!19306) (size!661 (t!47897 ls!96))))))

(declare-fun e!45068 () List!673)

(assert (=> d!56441 (= lt!19306 e!45068)))

(declare-fun c!20836 () Bool)

(assert (=> d!56441 (= c!20836 (is-Nil!632 (t!47897 ls!96)))))

(assert (=> d!56441 (= (filter!26 (t!47897 ls!96) lambda!10128) lt!19306)))

(declare-fun b!83070 () Bool)

(assert (=> b!83070 (= e!45070 (Cons!630 (h!1000 (t!47897 ls!96)) lt!19305))))

(declare-fun b!83071 () Bool)

(assert (=> b!83071 (= e!45068 e!45070)))

(declare-fun c!20837 () Bool)

(declare-fun e!45069 () Bool)

(assert (=> b!83071 (= c!20837 e!45069)))

(declare-fun res!42674 () Bool)

(assert (=> b!83071 (=> (not res!42674) (not e!45069))))

(assert (=> b!83071 (= res!42674 (is-Cons!630 (t!47897 ls!96)))))

(assert (=> b!83071 (= lt!19305 (filter!26 (t!47897 (t!47897 ls!96)) lambda!10128))))

(declare-fun b!83072 () Bool)

(assert (=> b!83072 (= e!45069 (dynLambda!992 lambda!10128 (h!1000 (t!47897 ls!96))))))

(declare-fun b!83073 () Bool)

(assert (=> b!83073 (= e!45068 Nil!632)))

(declare-fun b!83074 () Bool)

(declare-fun res!42676 () Bool)

(assert (=> b!83074 (=> (not res!42676) (not e!45067))))

(assert (=> b!83074 (= res!42676 (subset (content!132 lt!19306) (content!132 (t!47897 ls!96))))))

(declare-fun b!83075 () Bool)

(assert (=> b!83075 (= e!45067 (forall!28 lt!19306 lambda!10128))))

(assert (= (and b!83071 res!42674) b!83072))

(assert (= (and b!83071 c!20837) b!83070))

(assert (= (and b!83071 (not c!20837)) b!83069))

(assert (= (and d!56441 c!20836) b!83073))

(assert (= (and d!56441 (not c!20836)) b!83071))

(assert (= (and d!56441 res!42675) b!83074))

(assert (= (and b!83074 res!42676) b!83075))

(declare-fun b_lambda!16417 () Bool)

(assert (=> (not b_lambda!16417) (not b!83072)))

(declare-fun m!78794 () Bool)

(assert (=> b!83074 m!78794))

(assert (=> b!83074 m!78738))

(declare-fun m!78796 () Bool)

(assert (=> b!83075 m!78796))

(declare-fun m!78798 () Bool)

(assert (=> d!56441 m!78798))

(assert (=> d!56441 m!78744))

(declare-fun m!78800 () Bool)

(assert (=> b!83071 m!78800))

(declare-fun m!78802 () Bool)

(assert (=> b!83072 m!78802))

(assert (=> b!82961 d!56441))

(declare-fun b!83076 () Bool)

(declare-fun e!45074 () List!673)

(declare-fun lt!19307 () List!673)

(assert (=> b!83076 (= e!45074 lt!19307)))

(declare-fun d!56443 () Bool)

(declare-fun e!45071 () Bool)

(assert (=> d!56443 e!45071))

(declare-fun res!42678 () Bool)

(assert (=> d!56443 (=> (not res!42678) (not e!45071))))

(declare-fun lt!19308 () List!673)

(assert (=> d!56443 (= res!42678 (<= (size!661 lt!19308) (size!661 (t!47897 ls!96))))))

(declare-fun e!45072 () List!673)

(assert (=> d!56443 (= lt!19308 e!45072)))

(declare-fun c!20838 () Bool)

(assert (=> d!56443 (= c!20838 (is-Nil!632 (t!47897 ls!96)))))

(assert (=> d!56443 (= (filter!26 (t!47897 ls!96) lambda!10126) lt!19308)))

(declare-fun b!83077 () Bool)

(assert (=> b!83077 (= e!45074 (Cons!630 (h!1000 (t!47897 ls!96)) lt!19307))))

(declare-fun b!83078 () Bool)

(assert (=> b!83078 (= e!45072 e!45074)))

(declare-fun c!20839 () Bool)

(declare-fun e!45073 () Bool)

(assert (=> b!83078 (= c!20839 e!45073)))

(declare-fun res!42677 () Bool)

(assert (=> b!83078 (=> (not res!42677) (not e!45073))))

(assert (=> b!83078 (= res!42677 (is-Cons!630 (t!47897 ls!96)))))

(assert (=> b!83078 (= lt!19307 (filter!26 (t!47897 (t!47897 ls!96)) lambda!10126))))

(declare-fun b!83079 () Bool)

(assert (=> b!83079 (= e!45073 (dynLambda!992 lambda!10126 (h!1000 (t!47897 ls!96))))))

(declare-fun b!83080 () Bool)

(assert (=> b!83080 (= e!45072 Nil!632)))

(declare-fun b!83081 () Bool)

(declare-fun res!42679 () Bool)

(assert (=> b!83081 (=> (not res!42679) (not e!45071))))

(assert (=> b!83081 (= res!42679 (subset (content!132 lt!19308) (content!132 (t!47897 ls!96))))))

(declare-fun b!83082 () Bool)

(assert (=> b!83082 (= e!45071 (forall!28 lt!19308 lambda!10126))))

(assert (= (and b!83078 res!42677) b!83079))

(assert (= (and b!83078 c!20839) b!83077))

(assert (= (and b!83078 (not c!20839)) b!83076))

(assert (= (and d!56443 c!20838) b!83080))

(assert (= (and d!56443 (not c!20838)) b!83078))

(assert (= (and d!56443 res!42678) b!83081))

(assert (= (and b!83081 res!42679) b!83082))

(declare-fun b_lambda!16419 () Bool)

(assert (=> (not b_lambda!16419) (not b!83079)))

(declare-fun m!78804 () Bool)

(assert (=> b!83081 m!78804))

(assert (=> b!83081 m!78738))

(declare-fun m!78806 () Bool)

(assert (=> b!83082 m!78806))

(declare-fun m!78808 () Bool)

(assert (=> d!56443 m!78808))

(assert (=> d!56443 m!78744))

(declare-fun m!78810 () Bool)

(assert (=> b!83078 m!78810))

(declare-fun m!78812 () Bool)

(assert (=> b!83079 m!78812))

(assert (=> b!82971 d!56443))

(declare-fun bs!40282 () Bool)

(declare-fun d!56445 () Bool)

(assert (= bs!40282 (and d!56445 b!83054)))

(declare-fun lambda!10184 () Int)

(assert (=> bs!40282 (not (= lambda!10184 lambda!10174))))

(declare-fun bs!40283 () Bool)

(assert (= bs!40283 (and d!56445 b!83053)))

(assert (=> bs!40283 (not (= lambda!10184 lambda!10173))))

(declare-fun bs!40284 () Bool)

(assert (= bs!40284 (and d!56445 b!83019)))

(assert (=> bs!40284 (not (= lambda!10184 lambda!10153))))

(assert (=> bs!40284 (not (= lambda!10184 lambda!10152))))

(assert (=> bs!40284 (= (= (h!1000 ls!96) (h!1000 less!5)) (= lambda!10184 lambda!10151))))

(declare-fun bs!40285 () Bool)

(assert (= bs!40285 (and d!56445 b!82961)))

(assert (=> bs!40285 (not (= lambda!10184 lambda!10128))))

(declare-fun bs!40286 () Bool)

(assert (= bs!40286 (and d!56445 b!82971)))

(assert (=> bs!40286 (= lambda!10184 lambda!10126)))

(declare-fun bs!40287 () Bool)

(assert (= bs!40287 (and d!56445 b!82963)))

(assert (=> bs!40287 (not (= lambda!10184 lambda!10127))))

(declare-fun bs!40288 () Bool)

(assert (= bs!40288 (and d!56445 b!83026)))

(assert (=> bs!40288 (not (= lambda!10184 lambda!10165))))

(assert (=> bs!40288 (not (= lambda!10184 lambda!10164))))

(assert (=> bs!40288 (= (= (h!1000 ls!96) (h!1000 less!5)) (= lambda!10184 lambda!10163))))

(declare-fun bs!40289 () Bool)

(assert (= bs!40289 (and d!56445 d!56429)))

(assert (=> bs!40289 (not (= lambda!10184 lambda!10156))))

(declare-fun bs!40290 () Bool)

(assert (= bs!40290 (and d!56445 b!82965)))

(assert (=> bs!40290 (not (= lambda!10184 lambda!10129))))

(declare-fun bs!40291 () Bool)

(assert (= bs!40291 (and d!56445 b!83066)))

(assert (=> bs!40291 (not (= lambda!10184 lambda!10177))))

(assert (=> bs!40291 (not (= lambda!10184 lambda!10176))))

(assert (=> bs!40291 (= (= (h!1000 ls!96) (h!1000 less!5)) (= lambda!10184 lambda!10175))))

(declare-fun bs!40292 () Bool)

(assert (= bs!40292 (and d!56445 b!82987)))

(assert (=> bs!40292 (not (= lambda!10184 lambda!10144))))

(assert (=> bs!40292 (not (= lambda!10184 lambda!10143))))

(assert (=> bs!40292 (= (= (h!1000 ls!96) (h!1000 less!5)) (= lambda!10184 lambda!10142))))

(declare-fun bs!40293 () Bool)

(assert (= bs!40293 (and d!56445 d!56435)))

(assert (=> bs!40293 (not (= lambda!10184 lambda!10172))))

(assert (=> d!56445 true))

(declare-fun bs!40294 () Bool)

(declare-fun b!83087 () Bool)

(assert (= bs!40294 (and b!83087 b!83054)))

(declare-fun lambda!10185 () Int)

(assert (=> bs!40294 (= lambda!10185 lambda!10174)))

(declare-fun bs!40295 () Bool)

(assert (= bs!40295 (and b!83087 b!83053)))

(assert (=> bs!40295 (= lambda!10185 lambda!10173)))

(declare-fun bs!40296 () Bool)

(assert (= bs!40296 (and b!83087 b!83019)))

(assert (=> bs!40296 (not (= lambda!10185 lambda!10153))))

(assert (=> bs!40296 (not (= lambda!10185 lambda!10152))))

(assert (=> bs!40296 (not (= lambda!10185 lambda!10151))))

(declare-fun bs!40297 () Bool)

(assert (= bs!40297 (and b!83087 b!82961)))

(assert (=> bs!40297 (not (= lambda!10185 lambda!10128))))

(declare-fun bs!40298 () Bool)

(assert (= bs!40298 (and b!83087 b!82971)))

(assert (=> bs!40298 (not (= lambda!10185 lambda!10126))))

(declare-fun bs!40299 () Bool)

(assert (= bs!40299 (and b!83087 b!82963)))

(assert (=> bs!40299 (not (= lambda!10185 lambda!10127))))

(declare-fun bs!40300 () Bool)

(assert (= bs!40300 (and b!83087 b!83026)))

(assert (=> bs!40300 (not (= lambda!10185 lambda!10165))))

(assert (=> bs!40300 (not (= lambda!10185 lambda!10164))))

(assert (=> bs!40300 (not (= lambda!10185 lambda!10163))))

(declare-fun bs!40301 () Bool)

(assert (= bs!40301 (and b!83087 d!56429)))

(assert (=> bs!40301 (not (= lambda!10185 lambda!10156))))

(declare-fun bs!40302 () Bool)

(assert (= bs!40302 (and b!83087 b!82965)))

(assert (=> bs!40302 (= lambda!10185 lambda!10129)))

(declare-fun bs!40303 () Bool)

(assert (= bs!40303 (and b!83087 b!83066)))

(assert (=> bs!40303 (not (= lambda!10185 lambda!10177))))

(assert (=> bs!40303 (not (= lambda!10185 lambda!10176))))

(assert (=> bs!40303 (not (= lambda!10185 lambda!10175))))

(declare-fun bs!40304 () Bool)

(assert (= bs!40304 (and b!83087 b!82987)))

(assert (=> bs!40304 (not (= lambda!10185 lambda!10144))))

(assert (=> bs!40304 (not (= lambda!10185 lambda!10143))))

(assert (=> bs!40304 (not (= lambda!10185 lambda!10142))))

(declare-fun bs!40305 () Bool)

(assert (= bs!40305 (and b!83087 d!56445)))

(assert (=> bs!40305 (not (= lambda!10185 lambda!10184))))

(declare-fun bs!40306 () Bool)

(assert (= bs!40306 (and b!83087 d!56435)))

(assert (=> bs!40306 (not (= lambda!10185 lambda!10172))))

(assert (=> b!83087 true))

(declare-fun bs!40307 () Bool)

(declare-fun b!83088 () Bool)

(assert (= bs!40307 (and b!83088 b!83054)))

(declare-fun lambda!10186 () Int)

(assert (=> bs!40307 (= lambda!10186 lambda!10174)))

(declare-fun bs!40308 () Bool)

(assert (= bs!40308 (and b!83088 b!83053)))

(assert (=> bs!40308 (= lambda!10186 lambda!10173)))

(declare-fun bs!40309 () Bool)

(assert (= bs!40309 (and b!83088 b!83019)))

(assert (=> bs!40309 (not (= lambda!10186 lambda!10153))))

(assert (=> bs!40309 (not (= lambda!10186 lambda!10152))))

(assert (=> bs!40309 (not (= lambda!10186 lambda!10151))))

(declare-fun bs!40310 () Bool)

(assert (= bs!40310 (and b!83088 b!83087)))

(assert (=> bs!40310 (= lambda!10186 lambda!10185)))

(declare-fun bs!40311 () Bool)

(assert (= bs!40311 (and b!83088 b!82961)))

(assert (=> bs!40311 (not (= lambda!10186 lambda!10128))))

(declare-fun bs!40312 () Bool)

(assert (= bs!40312 (and b!83088 b!82971)))

(assert (=> bs!40312 (not (= lambda!10186 lambda!10126))))

(declare-fun bs!40313 () Bool)

(assert (= bs!40313 (and b!83088 b!82963)))

(assert (=> bs!40313 (not (= lambda!10186 lambda!10127))))

(declare-fun bs!40314 () Bool)

(assert (= bs!40314 (and b!83088 b!83026)))

(assert (=> bs!40314 (not (= lambda!10186 lambda!10165))))

(assert (=> bs!40314 (not (= lambda!10186 lambda!10164))))

(assert (=> bs!40314 (not (= lambda!10186 lambda!10163))))

(declare-fun bs!40315 () Bool)

(assert (= bs!40315 (and b!83088 d!56429)))

(assert (=> bs!40315 (not (= lambda!10186 lambda!10156))))

(declare-fun bs!40316 () Bool)

(assert (= bs!40316 (and b!83088 b!82965)))

(assert (=> bs!40316 (= lambda!10186 lambda!10129)))

(declare-fun bs!40317 () Bool)

(assert (= bs!40317 (and b!83088 b!83066)))

(assert (=> bs!40317 (not (= lambda!10186 lambda!10177))))

(assert (=> bs!40317 (not (= lambda!10186 lambda!10176))))

(assert (=> bs!40317 (not (= lambda!10186 lambda!10175))))

(declare-fun bs!40318 () Bool)

(assert (= bs!40318 (and b!83088 b!82987)))

(assert (=> bs!40318 (not (= lambda!10186 lambda!10144))))

(assert (=> bs!40318 (not (= lambda!10186 lambda!10143))))

(assert (=> bs!40318 (not (= lambda!10186 lambda!10142))))

(declare-fun bs!40319 () Bool)

(assert (= bs!40319 (and b!83088 d!56445)))

(assert (=> bs!40319 (not (= lambda!10186 lambda!10184))))

(declare-fun bs!40320 () Bool)

(assert (= bs!40320 (and b!83088 d!56435)))

(assert (=> bs!40320 (not (= lambda!10186 lambda!10172))))

(assert (=> b!83088 true))

(declare-fun e!45077 () Bool)

(assert (=> d!56445 e!45077))

(declare-fun c!20842 () Bool)

(assert (=> d!56445 (= c!20842 (is-Cons!630 less!5))))

(assert (=> d!56445 (forall!28 less!5 lambda!10184)))

(assert (=> d!56445 (= (forall_lt_implies_le!0 less!5 (h!1000 ls!96)) true)))

(assert (=> b!83087 (= e!45077 (forall!28 less!5 lambda!10185))))

(declare-fun lt!19311 () Bool)

(assert (=> b!83087 (= lt!19311 (forall_lt_implies_le!0 (t!47897 less!5) (h!1000 ls!96)))))

(assert (=> b!83088 (= e!45077 (forall!28 less!5 lambda!10186))))

(assert (= (and d!56445 c!20842) b!83087))

(assert (= (and d!56445 (not c!20842)) b!83088))

(declare-fun m!78814 () Bool)

(assert (=> d!56445 m!78814))

(declare-fun m!78816 () Bool)

(assert (=> b!83087 m!78816))

(declare-fun m!78818 () Bool)

(assert (=> b!83087 m!78818))

(declare-fun m!78820 () Bool)

(assert (=> b!83088 m!78820))

(assert (=> b!82968 d!56445))

(declare-fun b!83101 () Bool)

(declare-fun res!42690 () Bool)

(declare-fun e!45086 () Bool)

(assert (=> b!83101 (=> (not res!42690) (not e!45086))))

(assert (=> b!83101 (= res!42690 (isSorted!1 equal!10))))

(declare-fun b!83102 () Bool)

(declare-fun e!45084 () Bool)

(assert (=> b!83102 (= e!45084 (isSorted!1 (++!81 (quickSort!0 less!5) equal!10)))))

(declare-fun lt!19314 () Bool)

(assert (=> b!83102 (= lt!19314 (append_sorted!0 (t!47897 (quickSort!0 less!5)) equal!10))))

(declare-fun b!83103 () Bool)

(declare-fun e!45085 () Bool)

(assert (=> b!83103 (= e!45086 e!45085)))

(declare-fun res!42688 () Bool)

(assert (=> b!83103 (=> res!42688 e!45085)))

(assert (=> b!83103 (= res!42688 (isEmpty!683 (quickSort!0 less!5)))))

(declare-fun d!56447 () Bool)

(assert (=> d!56447 e!45084))

(declare-fun c!20845 () Bool)

(assert (=> d!56447 (= c!20845 (is-Cons!630 (quickSort!0 less!5)))))

(assert (=> d!56447 e!45086))

(declare-fun res!42691 () Bool)

(assert (=> d!56447 (=> (not res!42691) (not e!45086))))

(assert (=> d!56447 (= res!42691 (isSorted!1 (quickSort!0 less!5)))))

(assert (=> d!56447 (= (append_sorted!0 (quickSort!0 less!5) equal!10) true)))

(declare-fun b!83104 () Bool)

(assert (=> b!83104 (= e!45084 (isSorted!1 (++!81 (quickSort!0 less!5) equal!10)))))

(declare-fun b!83105 () Bool)

(declare-fun res!42689 () Bool)

(assert (=> b!83105 (=> res!42689 e!45085)))

(assert (=> b!83105 (= res!42689 (isEmpty!683 equal!10))))

(declare-fun b!83106 () Bool)

(declare-fun head!1059 (List!673) Int)

(assert (=> b!83106 (= e!45085 (<= (last!23 (quickSort!0 less!5)) (head!1059 equal!10)))))

(assert (= (and d!56447 res!42691) b!83101))

(assert (= (and b!83101 res!42690) b!83103))

(assert (= (and b!83103 (not res!42688)) b!83105))

(assert (= (and b!83105 (not res!42689)) b!83106))

(assert (= (and d!56447 c!20845) b!83102))

(assert (= (and d!56447 (not c!20845)) b!83104))

(assert (=> b!83104 m!78640))

(assert (=> b!83104 m!78760))

(assert (=> b!83104 m!78760))

(declare-fun m!78822 () Bool)

(assert (=> b!83104 m!78822))

(declare-fun m!78824 () Bool)

(assert (=> b!83105 m!78824))

(assert (=> b!83102 m!78640))

(assert (=> b!83102 m!78760))

(assert (=> b!83102 m!78760))

(assert (=> b!83102 m!78822))

(declare-fun m!78826 () Bool)

(assert (=> b!83102 m!78826))

(assert (=> d!56447 m!78640))

(assert (=> d!56447 m!78718))

(assert (=> b!83106 m!78640))

(assert (=> b!83106 m!78692))

(declare-fun m!78828 () Bool)

(assert (=> b!83106 m!78828))

(declare-fun m!78830 () Bool)

(assert (=> b!83101 m!78830))

(assert (=> b!83103 m!78640))

(assert (=> b!83103 m!78690))

(assert (=> b!82962 d!56447))

(assert (=> b!82962 d!56427))

(declare-fun b_lambda!16421 () Bool)

(assert (= b_lambda!16415 (or b!82963 b_lambda!16421)))

(declare-fun bs!40321 () Bool)

(declare-fun d!56449 () Bool)

(assert (= bs!40321 (and d!56449 b!82963)))

(assert (=> bs!40321 (= (dynLambda!992 lambda!10127 (h!1000 (t!47897 ls!96))) (= (h!1000 (t!47897 ls!96)) (h!1000 ls!96)))))

(assert (=> b!83045 d!56449))

(declare-fun b_lambda!16423 () Bool)

(assert (= b_lambda!16413 (or b!82971 b_lambda!16423)))

(declare-fun bs!40322 () Bool)

(declare-fun d!56451 () Bool)

(assert (= bs!40322 (and d!56451 b!82971)))

(assert (=> bs!40322 (= (dynLambda!992 lambda!10126 (last!23 (quickSort!0 less!5))) (< (last!23 (quickSort!0 less!5)) (h!1000 ls!96)))))

(assert (=> b!83003 d!56451))

(declare-fun b_lambda!16425 () Bool)

(assert (= b_lambda!16419 (or b!82971 b_lambda!16425)))

(declare-fun bs!40323 () Bool)

(declare-fun d!56453 () Bool)

(assert (= bs!40323 (and d!56453 b!82971)))

(assert (=> bs!40323 (= (dynLambda!992 lambda!10126 (h!1000 (t!47897 ls!96))) (< (h!1000 (t!47897 ls!96)) (h!1000 ls!96)))))

(assert (=> b!83079 d!56453))

(declare-fun b_lambda!16427 () Bool)

(assert (= b_lambda!16417 (or b!82961 b_lambda!16427)))

(declare-fun bs!40324 () Bool)

(declare-fun d!56455 () Bool)

(assert (= bs!40324 (and d!56455 b!82961)))

(assert (=> bs!40324 (= (dynLambda!992 lambda!10128 (h!1000 (t!47897 ls!96))) (> (h!1000 (t!47897 ls!96)) (h!1000 ls!96)))))

(assert (=> b!83072 d!56455))

(declare-fun b_lambda!16429 () Bool)

(assert (= b_lambda!16411 (or b!82971 b_lambda!16429)))

(assert (=> b!83002 d!56451))

(push 1)

(assert (not b!83078))

(assert (not b!82986))

(assert (not b!83003))

(assert (not d!56423))

(assert (not b_lambda!16429))

(assert (not d!56445))

(assert (not b!83071))

(assert (not b!83027))

(assert (not d!56437))

(assert (not d!56439))

(assert (not b!83019))

(assert (not b!82988))

(assert (not b!83074))

(assert (not b!83061))

(assert (not b!83002))

(assert (not b!83082))

(assert (not b!83067))

(assert (not b!83102))

(assert (not b!83104))

(assert (not b!83048))

(assert (not b!83075))

(assert (not d!56435))

(assert (not b!83068))

(assert (not b!83087))

(assert (not b!83054))

(assert (not b!83004))

(assert (not b!83065))

(assert (not b!83053))

(assert (not b_lambda!16425))

(assert (not b!83088))

(assert (not b!83063))

(assert (not b!83081))

(assert (not b!83066))

(assert (not b!82989))

(assert (not b!83101))

(assert (not b!83062))

(assert (not b!83044))

(assert (not b!82987))

(assert (not b!83006))

(assert (not b!83064))

(assert (not b!83103))

(assert (not b!83047))

(assert (not b_lambda!16423))

(assert (not b!83026))

(assert (not d!56433))

(assert (not d!56443))

(assert (not b!83106))

(assert (not b_lambda!16421))

(assert (not b!82985))

(assert (not d!56431))

(assert (not b!83105))

(assert (not d!56447))

(assert (not b_lambda!16427))

(assert (not d!56441))

(assert (not b!83005))

(assert (not b!83007))

(assert (not d!56429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10634 () Bool)

(assert start!10634)

(declare-fun b_free!7353 () Bool)

(declare-fun b_next!39143 () Bool)

(assert (=> start!10634 (= b_free!7353 (not b_next!39143))))

(declare-fun tp!16942 () Bool)

(declare-fun b_and!58875 () Bool)

(assert (=> start!10634 (= tp!16942 b_and!58875)))

(declare-fun b!80728 () Bool)

(assert (=> b!80728 true))

(declare-fun lambda!9336 () Int)

(declare-fun b_next!39145 () Bool)

(declare-fun p!850 () Int)

(assert (=> start!10634 (= b_next!39143 (or (and b!80728 (= lambda!9336 p!850)) b_next!39145))))

(declare-fun bs!38351 () Bool)

(declare-fun b!80723 () Bool)

(assert (= bs!38351 (and b!80723 b!80728)))

(declare-fun lambda!9337 () Int)

(assert (=> bs!38351 (not (= lambda!9337 lambda!9336))))

(assert (=> b!80723 true))

(declare-fun b_next!39147 () Bool)

(assert (=> start!10634 (= b_next!39145 (or (and b!80723 (= lambda!9337 p!850)) b_next!39147))))

(declare-fun bs!38352 () Bool)

(declare-fun b!80726 () Bool)

(assert (= bs!38352 (and b!80726 b!80728)))

(declare-fun lambda!9338 () Int)

(assert (=> bs!38352 (not (= lambda!9338 lambda!9336))))

(declare-fun bs!38353 () Bool)

(assert (= bs!38353 (and b!80726 b!80723)))

(assert (=> bs!38353 (not (= lambda!9338 lambda!9337))))

(assert (=> b!80726 true))

(declare-fun b_next!39149 () Bool)

(assert (=> start!10634 (= b_next!39147 (or (and b!80726 (= lambda!9338 p!850)) b_next!39149))))

(declare-fun bs!38354 () Bool)

(declare-fun b!80730 () Bool)

(assert (= bs!38354 (and b!80730 b!80728)))

(declare-fun lambda!9339 () Int)

(assert (=> bs!38354 (not (= lambda!9339 lambda!9336))))

(declare-fun bs!38355 () Bool)

(assert (= bs!38355 (and b!80730 b!80723)))

(assert (=> bs!38355 (not (= lambda!9339 lambda!9337))))

(declare-fun bs!38356 () Bool)

(assert (= bs!38356 (and b!80730 b!80726)))

(assert (=> bs!38356 (not (= lambda!9339 lambda!9338))))

(assert (=> b!80730 true))

(declare-fun b_next!39151 () Bool)

(assert (=> start!10634 (= b_next!39149 (or (and b!80730 (= lambda!9339 p!850)) b_next!39151))))

(declare-fun res!41139 () Bool)

(declare-fun e!43784 () Bool)

(assert (=> start!10634 (=> (not res!41139) (not e!43784))))

(declare-datatypes () ((List!661 (Cons!618 (h!987 Int) (t!47798 List!661)) (Nil!620))))

(declare-fun ls!96 () List!661)

(assert (=> start!10634 (= res!41139 (and (not (is-Nil!620 ls!96)) (not (is-Nil!620 (t!47798 ls!96)))))))

(assert (=> start!10634 e!43784))

(assert (=> start!10634 true))

(assert (=> start!10634 tp!16942))

(declare-fun b!80720 () Bool)

(declare-fun res!41136 () Bool)

(assert (=> b!80720 (=> (not res!41136) (not e!43784))))

(declare-fun ls!111 () List!661)

(declare-fun less!5 () List!661)

(assert (=> b!80720 (= res!41136 (= ls!111 less!5))))

(declare-fun b!80721 () Bool)

(declare-fun res!41137 () Bool)

(assert (=> b!80721 (=> (not res!41137) (not e!43784))))

(declare-fun forall_last!0 (List!661 Int) Bool)

(declare-fun quickSort!0 (List!661) List!661)

(assert (=> b!80721 (= res!41137 (forall_last!0 (quickSort!0 less!5) lambda!9336))))

(declare-fun b!80722 () Bool)

(declare-fun res!41131 () Bool)

(assert (=> b!80722 (=> (not res!41131) (not e!43784))))

(declare-fun forall_lt_implies_le!0 (List!661 Int) Bool)

(assert (=> b!80722 (= res!41131 (forall_lt_implies_le!0 less!5 (h!987 ls!96)))))

(declare-fun res!41132 () Bool)

(assert (=> b!80723 (=> (not res!41132) (not e!43784))))

(declare-fun equal!10 () List!661)

(declare-fun filter!14 (List!661 Int) List!661)

(assert (=> b!80723 (= res!41132 (= equal!10 (Cons!618 (h!987 ls!96) (filter!14 (t!47798 ls!96) lambda!9337))))))

(declare-fun b!80724 () Bool)

(declare-fun res!41130 () Bool)

(assert (=> b!80724 (=> (not res!41130) (not e!43784))))

(declare-fun sort_preserves_forall!0 (List!661 Int) Bool)

(assert (=> b!80724 (= res!41130 (sort_preserves_forall!0 less!5 lambda!9336))))

(declare-fun b!80725 () Bool)

(declare-fun res!41138 () Bool)

(assert (=> b!80725 (=> (not res!41138) (not e!43784))))

(declare-fun cons_filter_equal_sorted!0 (List!661 Int) Bool)

(assert (=> b!80725 (= res!41138 (cons_filter_equal_sorted!0 (t!47798 ls!96) (h!987 ls!96)))))

(declare-fun res!41134 () Bool)

(assert (=> b!80726 (=> (not res!41134) (not e!43784))))

(declare-fun more!5 () List!661)

(assert (=> b!80726 (= res!41134 (= more!5 (filter!14 (t!47798 ls!96) lambda!9338)))))

(declare-fun b!80727 () Bool)

(declare-fun res!41129 () Bool)

(assert (=> b!80727 (=> (not res!41129) (not e!43784))))

(declare-fun sorted_lemma!0 (List!661) Bool)

(assert (=> b!80727 (= res!41129 (sorted_lemma!0 less!5))))

(declare-fun res!41135 () Bool)

(assert (=> b!80728 (=> (not res!41135) (not e!43784))))

(assert (=> b!80728 (= res!41135 (= less!5 (filter!14 (t!47798 ls!96) lambda!9336)))))

(declare-fun b!80729 () Bool)

(declare-fun res!41133 () Bool)

(assert (=> b!80729 (=> (not res!41133) (not e!43784))))

(declare-fun append_sorted!0 (List!661 List!661) Bool)

(assert (=> b!80729 (= res!41133 (append_sorted!0 (quickSort!0 less!5) equal!10))))

(declare-fun res!41140 () Bool)

(assert (=> b!80730 (=> (not res!41140) (not e!43784))))

(assert (=> b!80730 (= res!41140 (= p!850 lambda!9339))))

(declare-fun b!80731 () Bool)

(declare-fun forall!16 (List!661 Int) Bool)

(assert (=> b!80731 (= e!43784 (not (forall!16 ls!111 p!850)))))

(assert (= (and start!10634 res!41139) b!80728))

(assert (= (and b!80728 res!41135) b!80723))

(assert (= (and b!80723 res!41132) b!80726))

(assert (= (and b!80726 res!41134) b!80727))

(assert (= (and b!80727 res!41129) b!80724))

(assert (= (and b!80724 res!41130) b!80721))

(assert (= (and b!80721 res!41137) b!80725))

(assert (= (and b!80725 res!41138) b!80729))

(assert (= (and b!80729 res!41133) b!80722))

(assert (= (and b!80722 res!41131) b!80720))

(assert (= (and b!80720 res!41136) b!80730))

(assert (= (and b!80730 res!41140) b!80731))

(declare-fun m!75504 () Bool)

(assert (=> b!80722 m!75504))

(declare-fun m!75506 () Bool)

(assert (=> b!80728 m!75506))

(declare-fun m!75508 () Bool)

(assert (=> b!80723 m!75508))

(declare-fun m!75510 () Bool)

(assert (=> b!80731 m!75510))

(declare-fun m!75512 () Bool)

(assert (=> b!80729 m!75512))

(assert (=> b!80729 m!75512))

(declare-fun m!75514 () Bool)

(assert (=> b!80729 m!75514))

(declare-fun m!75516 () Bool)

(assert (=> b!80725 m!75516))

(declare-fun m!75518 () Bool)

(assert (=> b!80727 m!75518))

(declare-fun m!75520 () Bool)

(assert (=> b!80724 m!75520))

(declare-fun m!75522 () Bool)

(assert (=> b!80726 m!75522))

(assert (=> b!80721 m!75512))

(assert (=> b!80721 m!75512))

(declare-fun m!75524 () Bool)

(assert (=> b!80721 m!75524))

(push 1)

(assert (not b!80721))

(assert (not b_next!39151))

(assert (not b!80727))

(assert (not b!80728))

(assert (not b!80724))

(assert (not b!80729))

(assert b_and!58875)

(assert (not b!80723))

(assert (not b!80725))

(assert (not b!80731))

(assert (not b!80726))

(assert (not b!80722))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58875)

(assert (not b_next!39151))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!80748 () Bool)

(declare-fun e!43796 () List!661)

(declare-fun e!43794 () List!661)

(assert (=> b!80748 (= e!43796 e!43794)))

(declare-fun c!20392 () Bool)

(declare-fun e!43795 () Bool)

(assert (=> b!80748 (= c!20392 e!43795)))

(declare-fun res!41152 () Bool)

(assert (=> b!80748 (=> (not res!41152) (not e!43795))))

(assert (=> b!80748 (= res!41152 (is-Cons!618 (t!47798 ls!96)))))

(declare-fun lt!18469 () List!661)

(assert (=> b!80748 (= lt!18469 (filter!14 (t!47798 (t!47798 ls!96)) lambda!9336))))

(declare-fun b!80749 () Bool)

(assert (=> b!80749 (= e!43796 Nil!620)))

(declare-fun b!80750 () Bool)

(declare-fun dynLambda!980 (Int Int) Bool)

(assert (=> b!80750 (= e!43795 (dynLambda!980 lambda!9336 (h!987 (t!47798 ls!96))))))

(declare-fun b!80751 () Bool)

(declare-fun res!41153 () Bool)

(declare-fun e!43793 () Bool)

(assert (=> b!80751 (=> (not res!41153) (not e!43793))))

(declare-fun lt!18468 () List!661)

(declare-fun content!120 (List!661) (Set Int))

(assert (=> b!80751 (= res!41153 (subset (content!120 lt!18468) (content!120 (t!47798 ls!96))))))

(declare-fun d!55535 () Bool)

(assert (=> d!55535 e!43793))

(declare-fun res!41151 () Bool)

(assert (=> d!55535 (=> (not res!41151) (not e!43793))))

(declare-fun size!649 (List!661) Int)

(assert (=> d!55535 (= res!41151 (<= (size!649 lt!18468) (size!649 (t!47798 ls!96))))))

(assert (=> d!55535 (= lt!18468 e!43796)))

(declare-fun c!20391 () Bool)

(assert (=> d!55535 (= c!20391 (is-Nil!620 (t!47798 ls!96)))))

(assert (=> d!55535 (= (filter!14 (t!47798 ls!96) lambda!9336) lt!18468)))

(declare-fun b!80752 () Bool)

(assert (=> b!80752 (= e!43794 lt!18469)))

(declare-fun b!80753 () Bool)

(assert (=> b!80753 (= e!43793 (forall!16 lt!18468 lambda!9336))))

(declare-fun b!80754 () Bool)

(assert (=> b!80754 (= e!43794 (Cons!618 (h!987 (t!47798 ls!96)) lt!18469))))

(assert (= (and b!80748 res!41152) b!80750))

(assert (= (and b!80748 c!20392) b!80754))

(assert (= (and b!80748 (not c!20392)) b!80752))

(assert (= (and d!55535 c!20391) b!80749))

(assert (= (and d!55535 (not c!20391)) b!80748))

(assert (= (and d!55535 res!41151) b!80751))

(assert (= (and b!80751 res!41153) b!80753))

(declare-fun b_lambda!15967 () Bool)

(assert (=> (not b_lambda!15967) (not b!80750)))

(declare-fun m!75526 () Bool)

(assert (=> b!80750 m!75526))

(declare-fun m!75528 () Bool)

(assert (=> b!80751 m!75528))

(declare-fun m!75530 () Bool)

(assert (=> b!80751 m!75530))

(declare-fun m!75532 () Bool)

(assert (=> b!80753 m!75532))

(declare-fun m!75534 () Bool)

(assert (=> b!80748 m!75534))

(declare-fun m!75536 () Bool)

(assert (=> d!55535 m!75536))

(declare-fun m!75538 () Bool)

(assert (=> d!55535 m!75538))

(assert (=> b!80728 d!55535))

(declare-fun b!80767 () Bool)

(declare-fun e!43803 () Bool)

(declare-fun isSorted!1 (List!661) Bool)

(declare-fun ++!69 (List!661 List!661) List!661)

(assert (=> b!80767 (= e!43803 (isSorted!1 (++!69 (quickSort!0 less!5) equal!10)))))

(declare-fun b!80768 () Bool)

(declare-fun res!41165 () Bool)

(declare-fun e!43804 () Bool)

(assert (=> b!80768 (=> res!41165 e!43804)))

(declare-fun isEmpty!673 (List!661) Bool)

(assert (=> b!80768 (= res!41165 (isEmpty!673 equal!10))))

(declare-fun b!80769 () Bool)

(declare-fun res!41162 () Bool)

(declare-fun e!43805 () Bool)

(assert (=> b!80769 (=> (not res!41162) (not e!43805))))

(assert (=> b!80769 (= res!41162 (isSorted!1 equal!10))))

(declare-fun b!80770 () Bool)

(declare-fun last!13 (List!661) Int)

(declare-fun head!1051 (List!661) Int)

(assert (=> b!80770 (= e!43804 (<= (last!13 (quickSort!0 less!5)) (head!1051 equal!10)))))

(declare-fun b!80771 () Bool)

(assert (=> b!80771 (= e!43803 (isSorted!1 (++!69 (quickSort!0 less!5) equal!10)))))

(declare-fun lt!18472 () Bool)

(assert (=> b!80771 (= lt!18472 (append_sorted!0 (t!47798 (quickSort!0 less!5)) equal!10))))

(declare-fun b!80772 () Bool)

(assert (=> b!80772 (= e!43805 e!43804)))

(declare-fun res!41164 () Bool)

(assert (=> b!80772 (=> res!41164 e!43804)))

(assert (=> b!80772 (= res!41164 (isEmpty!673 (quickSort!0 less!5)))))

(declare-fun d!55537 () Bool)

(assert (=> d!55537 e!43803))

(declare-fun c!20395 () Bool)

(assert (=> d!55537 (= c!20395 (is-Cons!618 (quickSort!0 less!5)))))

(assert (=> d!55537 e!43805))

(declare-fun res!41163 () Bool)

(assert (=> d!55537 (=> (not res!41163) (not e!43805))))

(assert (=> d!55537 (= res!41163 (isSorted!1 (quickSort!0 less!5)))))

(assert (=> d!55537 (= (append_sorted!0 (quickSort!0 less!5) equal!10) true)))

(assert (= (and d!55537 res!41163) b!80769))

(assert (= (and b!80769 res!41162) b!80772))

(assert (= (and b!80772 (not res!41164)) b!80768))

(assert (= (and b!80768 (not res!41165)) b!80770))

(assert (= (and d!55537 c!20395) b!80771))

(assert (= (and d!55537 (not c!20395)) b!80767))

(assert (=> b!80771 m!75512))

(declare-fun m!75540 () Bool)

(assert (=> b!80771 m!75540))

(assert (=> b!80771 m!75540))

(declare-fun m!75542 () Bool)

(assert (=> b!80771 m!75542))

(declare-fun m!75544 () Bool)

(assert (=> b!80771 m!75544))

(assert (=> b!80772 m!75512))

(declare-fun m!75546 () Bool)

(assert (=> b!80772 m!75546))

(assert (=> b!80767 m!75512))

(assert (=> b!80767 m!75540))

(assert (=> b!80767 m!75540))

(assert (=> b!80767 m!75542))

(assert (=> b!80770 m!75512))

(declare-fun m!75548 () Bool)

(assert (=> b!80770 m!75548))

(declare-fun m!75550 () Bool)

(assert (=> b!80770 m!75550))

(declare-fun m!75552 () Bool)

(assert (=> b!80769 m!75552))

(assert (=> d!55537 m!75512))

(declare-fun m!75554 () Bool)

(assert (=> d!55537 m!75554))

(declare-fun m!75556 () Bool)

(assert (=> b!80768 m!75556))

(assert (=> b!80729 d!55537))

(declare-fun bs!38357 () Bool)

(declare-fun b!80784 () Bool)

(assert (= bs!38357 (and b!80784 b!80728)))

(declare-fun lambda!9346 () Int)

(assert (=> bs!38357 (= (= (h!987 less!5) (h!987 ls!96)) (= lambda!9346 lambda!9336))))

(declare-fun bs!38358 () Bool)

(assert (= bs!38358 (and b!80784 b!80723)))

(assert (=> bs!38358 (not (= lambda!9346 lambda!9337))))

(declare-fun bs!38359 () Bool)

(assert (= bs!38359 (and b!80784 b!80726)))

(assert (=> bs!38359 (not (= lambda!9346 lambda!9338))))

(declare-fun bs!38360 () Bool)

(assert (= bs!38360 (and b!80784 b!80730)))

(assert (=> bs!38360 (not (= lambda!9346 lambda!9339))))

(assert (=> b!80784 true))

(declare-fun b_next!39153 () Bool)

(assert (=> start!10634 (= b_next!39151 (or (and b!80784 (= lambda!9346 p!850)) b_next!39153))))

(declare-fun lambda!9347 () Int)

(assert (=> b!80784 (not (= lambda!9347 lambda!9346))))

(assert (=> bs!38358 (= (= (h!987 less!5) (h!987 ls!96)) (= lambda!9347 lambda!9337))))

(assert (=> bs!38360 (not (= lambda!9347 lambda!9339))))

(assert (=> bs!38357 (not (= lambda!9347 lambda!9336))))

(assert (=> bs!38359 (not (= lambda!9347 lambda!9338))))

(assert (=> b!80784 true))

(declare-fun b_next!39155 () Bool)

(assert (=> start!10634 (= b_next!39153 (or (and b!80784 (= lambda!9347 p!850)) b_next!39155))))

(declare-fun lambda!9348 () Int)

(assert (=> b!80784 (not (= lambda!9348 lambda!9347))))

(assert (=> b!80784 (not (= lambda!9348 lambda!9346))))

(assert (=> bs!38358 (not (= lambda!9348 lambda!9337))))

(assert (=> bs!38360 (not (= lambda!9348 lambda!9339))))

(assert (=> bs!38357 (not (= lambda!9348 lambda!9336))))

(assert (=> bs!38359 (= (= (h!987 less!5) (h!987 ls!96)) (= lambda!9348 lambda!9338))))

(assert (=> b!80784 true))

(declare-fun b_next!39157 () Bool)

(assert (=> start!10634 (= b_next!39155 (or (and b!80784 (= lambda!9348 p!850)) b_next!39157))))

(declare-fun b!80782 () Bool)

(declare-fun e!43810 () List!661)

(declare-fun e!43811 () List!661)

(assert (=> b!80782 (= e!43810 e!43811)))

(declare-fun c!20401 () Bool)

(assert (=> b!80782 (= c!20401 (and (is-Cons!618 less!5) (is-Nil!620 (t!47798 less!5))))))

(declare-fun d!55539 () Bool)

(declare-fun c!20400 () Bool)

(assert (=> d!55539 (= c!20400 (is-Nil!620 less!5))))

(assert (=> d!55539 (= (quickSort!0 less!5) e!43810)))

(assert (=> b!80784 (= e!43811 (++!69 (++!69 (quickSort!0 (filter!14 (t!47798 less!5) lambda!9346)) (Cons!618 (h!987 less!5) (filter!14 (t!47798 less!5) lambda!9347))) (quickSort!0 (filter!14 (t!47798 less!5) lambda!9348))))))

(declare-fun b!80783 () Bool)

(assert (=> b!80783 (= e!43811 less!5)))

(declare-fun b!80781 () Bool)

(assert (=> b!80781 (= e!43810 Nil!620)))

(assert (= (and b!80782 c!20401) b!80783))

(assert (= (and b!80782 (not c!20401)) b!80784))

(assert (= (and d!55539 c!20400) b!80781))

(assert (= (and d!55539 (not c!20400)) b!80782))

(declare-fun m!75558 () Bool)

(assert (=> b!80784 m!75558))

(declare-fun m!75560 () Bool)

(assert (=> b!80784 m!75560))

(declare-fun m!75562 () Bool)

(assert (=> b!80784 m!75562))

(declare-fun m!75564 () Bool)

(assert (=> b!80784 m!75564))

(declare-fun m!75566 () Bool)

(assert (=> b!80784 m!75566))

(declare-fun m!75568 () Bool)

(assert (=> b!80784 m!75568))

(declare-fun m!75570 () Bool)

(assert (=> b!80784 m!75570))

(assert (=> b!80784 m!75562))

(assert (=> b!80784 m!75558))

(assert (=> b!80784 m!75570))

(assert (=> b!80784 m!75560))

(assert (=> b!80784 m!75564))

(assert (=> b!80729 d!55539))

(declare-fun b!80797 () Bool)

(declare-fun res!41174 () Bool)

(declare-fun e!43818 () Bool)

(assert (=> b!80797 (=> res!41174 e!43818)))

(assert (=> b!80797 (= res!41174 (isEmpty!673 (quickSort!0 less!5)))))

(declare-fun b!80798 () Bool)

(declare-fun e!43819 () Bool)

(assert (=> b!80798 (= e!43819 e!43818)))

(declare-fun res!41175 () Bool)

(assert (=> b!80798 (=> res!41175 e!43818)))

(assert (=> b!80798 (= res!41175 (not (forall!16 (quickSort!0 less!5) lambda!9336)))))

(declare-fun lt!18475 () Bool)

(assert (=> b!80798 (= lt!18475 (forall_last!0 (t!47798 (quickSort!0 less!5)) lambda!9336))))

(declare-fun d!55541 () Bool)

(assert (=> d!55541 e!43819))

(declare-fun c!20404 () Bool)

(assert (=> d!55541 (= c!20404 (is-Cons!618 (quickSort!0 less!5)))))

(assert (=> d!55541 (= (forall_last!0 (quickSort!0 less!5) lambda!9336) true)))

(declare-fun b!80799 () Bool)

(declare-fun e!43820 () Bool)

(assert (=> b!80799 (= e!43820 (dynLambda!980 lambda!9336 (last!13 (quickSort!0 less!5))))))

(declare-fun b!80800 () Bool)

(declare-fun res!41176 () Bool)

(assert (=> b!80800 (=> res!41176 e!43820)))

(assert (=> b!80800 (= res!41176 (isEmpty!673 (quickSort!0 less!5)))))

(declare-fun b!80801 () Bool)

(assert (=> b!80801 (= e!43819 e!43820)))

(declare-fun res!41177 () Bool)

(assert (=> b!80801 (=> res!41177 e!43820)))

(assert (=> b!80801 (= res!41177 (not (forall!16 (quickSort!0 less!5) lambda!9336)))))

(declare-fun b!80802 () Bool)

(assert (=> b!80802 (= e!43818 (dynLambda!980 lambda!9336 (last!13 (quickSort!0 less!5))))))

(assert (= (and b!80798 (not res!41175)) b!80797))

(assert (= (and b!80797 (not res!41174)) b!80802))

(assert (= (and b!80801 (not res!41177)) b!80800))

(assert (= (and b!80800 (not res!41176)) b!80799))

(assert (= (and d!55541 c!20404) b!80798))

(assert (= (and d!55541 (not c!20404)) b!80801))

(declare-fun b_lambda!15969 () Bool)

(assert (=> (not b_lambda!15969) (not b!80799)))

(declare-fun b_lambda!15971 () Bool)

(assert (=> (not b_lambda!15971) (not b!80802)))

(assert (=> b!80800 m!75512))

(assert (=> b!80800 m!75546))

(assert (=> b!80797 m!75512))

(assert (=> b!80797 m!75546))

(assert (=> b!80799 m!75512))

(assert (=> b!80799 m!75548))

(assert (=> b!80799 m!75548))

(declare-fun m!75572 () Bool)

(assert (=> b!80799 m!75572))

(assert (=> b!80801 m!75512))

(declare-fun m!75574 () Bool)

(assert (=> b!80801 m!75574))

(assert (=> b!80802 m!75512))

(assert (=> b!80802 m!75548))

(assert (=> b!80802 m!75548))

(assert (=> b!80802 m!75572))

(assert (=> b!80798 m!75512))

(assert (=> b!80798 m!75574))

(declare-fun m!75576 () Bool)

(assert (=> b!80798 m!75576))

(assert (=> b!80721 d!55541))

(assert (=> b!80721 d!55539))

(declare-fun bs!38361 () Bool)

(declare-fun b!80807 () Bool)

(assert (= bs!38361 (and b!80807 b!80784)))

(declare-fun lambda!9355 () Int)

(assert (=> bs!38361 (not (= lambda!9355 lambda!9348))))

(assert (=> bs!38361 (not (= lambda!9355 lambda!9347))))

(assert (=> bs!38361 (= lambda!9355 lambda!9346)))

(declare-fun bs!38362 () Bool)

(assert (= bs!38362 (and b!80807 b!80723)))

(assert (=> bs!38362 (not (= lambda!9355 lambda!9337))))

(declare-fun bs!38363 () Bool)

(assert (= bs!38363 (and b!80807 b!80730)))

(assert (=> bs!38363 (not (= lambda!9355 lambda!9339))))

(declare-fun bs!38364 () Bool)

(assert (= bs!38364 (and b!80807 b!80728)))

(assert (=> bs!38364 (= (= (h!987 less!5) (h!987 ls!96)) (= lambda!9355 lambda!9336))))

(declare-fun bs!38365 () Bool)

(assert (= bs!38365 (and b!80807 b!80726)))

(assert (=> bs!38365 (not (= lambda!9355 lambda!9338))))

(assert (=> b!80807 true))

(declare-fun b_next!39159 () Bool)

(assert (=> start!10634 (= b_next!39157 (or (and b!80807 (= lambda!9355 p!850)) b_next!39159))))

(declare-fun lambda!9356 () Int)

(assert (=> bs!38361 (not (= lambda!9356 lambda!9348))))

(assert (=> bs!38361 (= lambda!9356 lambda!9347)))

(assert (=> bs!38361 (not (= lambda!9356 lambda!9346))))

(assert (=> bs!38362 (= (= (h!987 less!5) (h!987 ls!96)) (= lambda!9356 lambda!9337))))

(assert (=> b!80807 (not (= lambda!9356 lambda!9355))))

(assert (=> bs!38363 (not (= lambda!9356 lambda!9339))))

(assert (=> bs!38364 (not (= lambda!9356 lambda!9336))))

(assert (=> bs!38365 (not (= lambda!9356 lambda!9338))))

(assert (=> b!80807 true))

(declare-fun b_next!39161 () Bool)

(assert (=> start!10634 (= b_next!39159 (or (and b!80807 (= lambda!9356 p!850)) b_next!39161))))

(declare-fun lambda!9357 () Int)

(assert (=> bs!38361 (= lambda!9357 lambda!9348)))

(assert (=> bs!38361 (not (= lambda!9357 lambda!9347))))

(assert (=> bs!38361 (not (= lambda!9357 lambda!9346))))

(assert (=> bs!38362 (not (= lambda!9357 lambda!9337))))

(assert (=> b!80807 (not (= lambda!9357 lambda!9356))))

(assert (=> b!80807 (not (= lambda!9357 lambda!9355))))

(assert (=> bs!38363 (not (= lambda!9357 lambda!9339))))

(assert (=> bs!38364 (not (= lambda!9357 lambda!9336))))

(assert (=> bs!38365 (= (= (h!987 less!5) (h!987 ls!96)) (= lambda!9357 lambda!9338))))

(assert (=> b!80807 true))

(declare-fun b_next!39163 () Bool)

(assert (=> start!10634 (= b_next!39161 (or (and b!80807 (= lambda!9357 p!850)) b_next!39163))))

(declare-fun d!55543 () Bool)

(assert (=> d!55543 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!18485 () Bool)

(declare-fun e!43826 () Bool)

(assert (=> d!55543 (= lt!18485 e!43826)))

(declare-fun res!41185 () Bool)

(assert (=> d!55543 (=> res!41185 e!43826)))

(assert (=> d!55543 (= res!41185 (or (is-Nil!620 less!5) (and (is-Cons!618 less!5) (is-Nil!620 (t!47798 less!5)))))))

(assert (=> d!55543 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!43825 () Bool)

(assert (=> b!80807 (= e!43826 e!43825)))

(declare-fun res!41184 () Bool)

(assert (=> b!80807 (=> (not res!41184) (not e!43825))))

(declare-fun lt!18487 () List!661)

(declare-fun lt!18484 () List!661)

(assert (=> b!80807 (= res!41184 (append_sorted!0 (quickSort!0 lt!18487) lt!18484))))

(declare-fun lt!18486 () List!661)

(assert (=> b!80807 (= lt!18486 (filter!14 (t!47798 less!5) lambda!9357))))

(assert (=> b!80807 (= lt!18484 (Cons!618 (h!987 less!5) (filter!14 (t!47798 less!5) lambda!9356)))))

(assert (=> b!80807 (= lt!18487 (filter!14 (t!47798 less!5) lambda!9355))))

(declare-fun b!80808 () Bool)

(assert (=> b!80808 (= e!43825 (append_sorted!0 (++!69 (quickSort!0 lt!18487) lt!18484) (quickSort!0 lt!18486)))))

(assert (= (and d!55543 (not res!41185)) b!80807))

(assert (= (and b!80807 res!41184) b!80808))

(assert (=> d!55543 m!75512))

(assert (=> d!55543 m!75512))

(assert (=> d!55543 m!75554))

(declare-fun m!75578 () Bool)

(assert (=> b!80807 m!75578))

(declare-fun m!75580 () Bool)

(assert (=> b!80807 m!75580))

(declare-fun m!75582 () Bool)

(assert (=> b!80807 m!75582))

(declare-fun m!75584 () Bool)

(assert (=> b!80807 m!75584))

(assert (=> b!80807 m!75582))

(declare-fun m!75586 () Bool)

(assert (=> b!80807 m!75586))

(assert (=> b!80808 m!75582))

(assert (=> b!80808 m!75582))

(declare-fun m!75588 () Bool)

(assert (=> b!80808 m!75588))

(declare-fun m!75590 () Bool)

(assert (=> b!80808 m!75590))

(assert (=> b!80808 m!75588))

(assert (=> b!80808 m!75590))

(declare-fun m!75592 () Bool)

(assert (=> b!80808 m!75592))

(assert (=> b!80727 d!55543))

(declare-fun b!80809 () Bool)

(declare-fun e!43830 () List!661)

(declare-fun e!43828 () List!661)

(assert (=> b!80809 (= e!43830 e!43828)))

(declare-fun c!20406 () Bool)

(declare-fun e!43829 () Bool)

(assert (=> b!80809 (= c!20406 e!43829)))

(declare-fun res!41187 () Bool)

(assert (=> b!80809 (=> (not res!41187) (not e!43829))))

(assert (=> b!80809 (= res!41187 (is-Cons!618 (t!47798 ls!96)))))

(declare-fun lt!18489 () List!661)

(assert (=> b!80809 (= lt!18489 (filter!14 (t!47798 (t!47798 ls!96)) lambda!9338))))

(declare-fun b!80810 () Bool)

(assert (=> b!80810 (= e!43830 Nil!620)))

(declare-fun b!80811 () Bool)

(assert (=> b!80811 (= e!43829 (dynLambda!980 lambda!9338 (h!987 (t!47798 ls!96))))))

(declare-fun b!80812 () Bool)

(declare-fun res!41188 () Bool)

(declare-fun e!43827 () Bool)

(assert (=> b!80812 (=> (not res!41188) (not e!43827))))

(declare-fun lt!18488 () List!661)

(assert (=> b!80812 (= res!41188 (subset (content!120 lt!18488) (content!120 (t!47798 ls!96))))))

(declare-fun d!55545 () Bool)

(assert (=> d!55545 e!43827))

(declare-fun res!41186 () Bool)

(assert (=> d!55545 (=> (not res!41186) (not e!43827))))

(assert (=> d!55545 (= res!41186 (<= (size!649 lt!18488) (size!649 (t!47798 ls!96))))))

(assert (=> d!55545 (= lt!18488 e!43830)))

(declare-fun c!20405 () Bool)

(assert (=> d!55545 (= c!20405 (is-Nil!620 (t!47798 ls!96)))))

(assert (=> d!55545 (= (filter!14 (t!47798 ls!96) lambda!9338) lt!18488)))

(declare-fun b!80813 () Bool)

(assert (=> b!80813 (= e!43828 lt!18489)))

(declare-fun b!80814 () Bool)

(assert (=> b!80814 (= e!43827 (forall!16 lt!18488 lambda!9338))))

(declare-fun b!80815 () Bool)

(assert (=> b!80815 (= e!43828 (Cons!618 (h!987 (t!47798 ls!96)) lt!18489))))

(assert (= (and b!80809 res!41187) b!80811))

(assert (= (and b!80809 c!20406) b!80815))

(assert (= (and b!80809 (not c!20406)) b!80813))

(assert (= (and d!55545 c!20405) b!80810))

(assert (= (and d!55545 (not c!20405)) b!80809))

(assert (= (and d!55545 res!41186) b!80812))

(assert (= (and b!80812 res!41188) b!80814))

(declare-fun b_lambda!15973 () Bool)

(assert (=> (not b_lambda!15973) (not b!80811)))

(declare-fun m!75594 () Bool)

(assert (=> b!80811 m!75594))

(declare-fun m!75596 () Bool)

(assert (=> b!80812 m!75596))

(assert (=> b!80812 m!75530))

(declare-fun m!75598 () Bool)

(assert (=> b!80814 m!75598))

(declare-fun m!75600 () Bool)

(assert (=> b!80809 m!75600))

(declare-fun m!75602 () Bool)

(assert (=> d!55545 m!75602))

(assert (=> d!55545 m!75538))

(assert (=> b!80726 d!55545))

(declare-fun bs!38366 () Bool)

(declare-fun b!80826 () Bool)

(assert (= bs!38366 (and b!80826 b!80784)))

(declare-fun lambda!9370 () Int)

(assert (=> bs!38366 (not (= lambda!9370 lambda!9348))))

(assert (=> bs!38366 (not (= lambda!9370 lambda!9347))))

(assert (=> bs!38366 (= lambda!9370 lambda!9346)))

(declare-fun bs!38367 () Bool)

(assert (= bs!38367 (and b!80826 b!80723)))

(assert (=> bs!38367 (not (= lambda!9370 lambda!9337))))

(declare-fun bs!38368 () Bool)

(assert (= bs!38368 (and b!80826 b!80807)))

(assert (=> bs!38368 (not (= lambda!9370 lambda!9357))))

(assert (=> bs!38368 (not (= lambda!9370 lambda!9356))))

(assert (=> bs!38368 (= lambda!9370 lambda!9355)))

(declare-fun bs!38369 () Bool)

(assert (= bs!38369 (and b!80826 b!80730)))

(assert (=> bs!38369 (not (= lambda!9370 lambda!9339))))

(declare-fun bs!38370 () Bool)

(assert (= bs!38370 (and b!80826 b!80728)))

(assert (=> bs!38370 (= (= (h!987 less!5) (h!987 ls!96)) (= lambda!9370 lambda!9336))))

(declare-fun bs!38371 () Bool)

(assert (= bs!38371 (and b!80826 b!80726)))

(assert (=> bs!38371 (not (= lambda!9370 lambda!9338))))

(assert (=> b!80826 true))

(declare-fun b_next!39165 () Bool)

(assert (=> start!10634 (= b_next!39163 (or (and b!80826 (= lambda!9370 p!850)) b_next!39165))))

(declare-fun lambda!9371 () Int)

(assert (=> bs!38366 (not (= lambda!9371 lambda!9348))))

(assert (=> bs!38366 (= lambda!9371 lambda!9347)))

(assert (=> bs!38366 (not (= lambda!9371 lambda!9346))))

(assert (=> bs!38367 (= (= (h!987 less!5) (h!987 ls!96)) (= lambda!9371 lambda!9337))))

(assert (=> bs!38368 (not (= lambda!9371 lambda!9357))))

(assert (=> bs!38368 (= lambda!9371 lambda!9356)))

(assert (=> bs!38368 (not (= lambda!9371 lambda!9355))))

(assert (=> b!80826 (not (= lambda!9371 lambda!9370))))

(assert (=> bs!38369 (not (= lambda!9371 lambda!9339))))

(assert (=> bs!38370 (not (= lambda!9371 lambda!9336))))

(assert (=> bs!38371 (not (= lambda!9371 lambda!9338))))

(assert (=> b!80826 true))

(declare-fun b_next!39167 () Bool)

(assert (=> start!10634 (= b_next!39165 (or (and b!80826 (= lambda!9371 p!850)) b_next!39167))))

(declare-fun lambda!9372 () Int)

(assert (=> bs!38366 (= lambda!9372 lambda!9348)))

(assert (=> bs!38366 (not (= lambda!9372 lambda!9347))))

(assert (=> bs!38366 (not (= lambda!9372 lambda!9346))))

(assert (=> bs!38367 (not (= lambda!9372 lambda!9337))))

(assert (=> bs!38368 (= lambda!9372 lambda!9357)))

(assert (=> bs!38368 (not (= lambda!9372 lambda!9356))))

(assert (=> bs!38368 (not (= lambda!9372 lambda!9355))))

(assert (=> b!80826 (not (= lambda!9372 lambda!9371))))

(assert (=> b!80826 (not (= lambda!9372 lambda!9370))))

(assert (=> bs!38369 (not (= lambda!9372 lambda!9339))))

(assert (=> bs!38370 (not (= lambda!9372 lambda!9336))))

(assert (=> bs!38371 (= (= (h!987 less!5) (h!987 ls!96)) (= lambda!9372 lambda!9338))))

(assert (=> b!80826 true))

(declare-fun b_next!39169 () Bool)

(assert (=> start!10634 (= b_next!39167 (or (and b!80826 (= lambda!9372 p!850)) b_next!39169))))

(declare-fun e!43845 () Bool)

(declare-fun e!43844 () Bool)

(assert (=> b!80826 (= e!43845 e!43844)))

(declare-fun res!41205 () Bool)

(assert (=> b!80826 (=> (not res!41205) (not e!43844))))

(declare-fun lt!18504 () List!661)

(declare-fun lt!18502 () List!661)

(declare-fun append_preserves_forall!0 (List!661 List!661 Int) Bool)

(assert (=> b!80826 (= res!41205 (append_preserves_forall!0 (quickSort!0 lt!18504) lt!18502 lambda!9336))))

(declare-fun lt!18503 () Bool)

(declare-fun e!43843 () Bool)

(assert (=> b!80826 (= lt!18503 e!43843)))

(declare-fun res!41207 () Bool)

(assert (=> b!80826 (=> (not res!41207) (not e!43843))))

(assert (=> b!80826 (= res!41207 (sort_preserves_forall!0 lt!18504 lambda!9336))))

(declare-fun lt!18507 () Bool)

(declare-fun e!43841 () Bool)

(assert (=> b!80826 (= lt!18507 e!43841)))

(declare-fun res!41204 () Bool)

(assert (=> b!80826 (=> (not res!41204) (not e!43841))))

(declare-fun e!43842 () Bool)

(assert (=> b!80826 (= res!41204 e!43842)))

(declare-fun res!41206 () Bool)

(assert (=> b!80826 (=> (not res!41206) (not e!43842))))

(declare-fun filter_preserves_forall!0 (List!661 Int Int) Bool)

(assert (=> b!80826 (= res!41206 (filter_preserves_forall!0 (t!47798 less!5) lambda!9370 lambda!9336))))

(declare-fun lt!18505 () List!661)

(assert (=> b!80826 (= lt!18505 (filter!14 (t!47798 less!5) lambda!9372))))

(assert (=> b!80826 (= lt!18502 (Cons!618 (h!987 less!5) (filter!14 (t!47798 less!5) lambda!9371)))))

(assert (=> b!80826 (= lt!18504 (filter!14 (t!47798 less!5) lambda!9370))))

(declare-fun b!80827 () Bool)

(assert (=> b!80827 (= e!43843 (sort_preserves_forall!0 lt!18505 lambda!9336))))

(declare-fun b!80828 () Bool)

(assert (=> b!80828 (= e!43841 (filter_preserves_forall!0 (t!47798 less!5) lambda!9372 lambda!9336))))

(declare-fun b!80829 () Bool)

(assert (=> b!80829 (= e!43842 (filter_preserves_forall!0 (t!47798 less!5) lambda!9371 lambda!9336))))

(declare-fun b!80830 () Bool)

(assert (=> b!80830 (= e!43844 (append_preserves_forall!0 (++!69 (quickSort!0 lt!18504) lt!18502) (quickSort!0 lt!18505) lambda!9336))))

(declare-fun d!55547 () Bool)

(assert (=> d!55547 (forall!16 (quickSort!0 less!5) lambda!9336)))

(declare-fun lt!18506 () Bool)

(assert (=> d!55547 (= lt!18506 e!43845)))

(declare-fun res!41208 () Bool)

(assert (=> d!55547 (=> res!41208 e!43845)))

(assert (=> d!55547 (= res!41208 (or (is-Nil!620 less!5) (and (is-Cons!618 less!5) (is-Nil!620 (t!47798 less!5)))))))

(assert (=> d!55547 (forall!16 less!5 lambda!9336)))

(assert (=> d!55547 (= (sort_preserves_forall!0 less!5 lambda!9336) true)))

(assert (= (and d!55547 (not res!41208)) b!80826))

(assert (= (and b!80826 res!41206) b!80829))

(assert (= (and b!80826 res!41204) b!80828))

(assert (= (and b!80826 res!41207) b!80827))

(assert (= (and b!80826 res!41205) b!80830))

(declare-fun m!75604 () Bool)

(assert (=> b!80826 m!75604))

(declare-fun m!75606 () Bool)

(assert (=> b!80826 m!75606))

(declare-fun m!75608 () Bool)

(assert (=> b!80826 m!75608))

(declare-fun m!75610 () Bool)

(assert (=> b!80826 m!75610))

(declare-fun m!75612 () Bool)

(assert (=> b!80826 m!75612))

(declare-fun m!75614 () Bool)

(assert (=> b!80826 m!75614))

(assert (=> b!80826 m!75612))

(declare-fun m!75616 () Bool)

(assert (=> b!80826 m!75616))

(assert (=> b!80830 m!75612))

(assert (=> b!80830 m!75612))

(declare-fun m!75618 () Bool)

(assert (=> b!80830 m!75618))

(declare-fun m!75620 () Bool)

(assert (=> b!80830 m!75620))

(assert (=> b!80830 m!75618))

(assert (=> b!80830 m!75620))

(declare-fun m!75622 () Bool)

(assert (=> b!80830 m!75622))

(declare-fun m!75624 () Bool)

(assert (=> b!80827 m!75624))

(assert (=> d!55547 m!75512))

(assert (=> d!55547 m!75512))

(assert (=> d!55547 m!75574))

(declare-fun m!75626 () Bool)

(assert (=> d!55547 m!75626))

(declare-fun m!75628 () Bool)

(assert (=> b!80828 m!75628))

(declare-fun m!75630 () Bool)

(assert (=> b!80829 m!75630))

(assert (=> b!80724 d!55547))

(declare-fun bs!38372 () Bool)

(declare-fun d!55549 () Bool)

(assert (= bs!38372 (and d!55549 b!80784)))

(declare-fun lambda!9379 () Int)

(assert (=> bs!38372 (not (= lambda!9379 lambda!9348))))

(assert (=> bs!38372 (not (= lambda!9379 lambda!9347))))

(assert (=> bs!38372 (= (= (h!987 ls!96) (h!987 less!5)) (= lambda!9379 lambda!9346))))

(declare-fun bs!38373 () Bool)

(assert (= bs!38373 (and d!55549 b!80723)))

(assert (=> bs!38373 (not (= lambda!9379 lambda!9337))))

(declare-fun bs!38374 () Bool)

(assert (= bs!38374 (and d!55549 b!80807)))

(assert (=> bs!38374 (not (= lambda!9379 lambda!9357))))

(assert (=> bs!38374 (not (= lambda!9379 lambda!9356))))

(assert (=> bs!38374 (= (= (h!987 ls!96) (h!987 less!5)) (= lambda!9379 lambda!9355))))

(declare-fun bs!38375 () Bool)

(assert (= bs!38375 (and d!55549 b!80826)))

(assert (=> bs!38375 (not (= lambda!9379 lambda!9372))))

(assert (=> bs!38375 (not (= lambda!9379 lambda!9371))))

(assert (=> bs!38375 (= (= (h!987 ls!96) (h!987 less!5)) (= lambda!9379 lambda!9370))))

(declare-fun bs!38376 () Bool)

(assert (= bs!38376 (and d!55549 b!80730)))

(assert (=> bs!38376 (not (= lambda!9379 lambda!9339))))

(declare-fun bs!38377 () Bool)

(assert (= bs!38377 (and d!55549 b!80728)))

(assert (=> bs!38377 (= lambda!9379 lambda!9336)))

(declare-fun bs!38378 () Bool)

(assert (= bs!38378 (and d!55549 b!80726)))

(assert (=> bs!38378 (not (= lambda!9379 lambda!9338))))

(assert (=> d!55549 true))

(declare-fun b_next!39171 () Bool)

(assert (=> start!10634 (= b_next!39169 (or (and d!55549 (= lambda!9379 p!850)) b_next!39171))))

(declare-fun bs!38379 () Bool)

(declare-fun b!80835 () Bool)

(assert (= bs!38379 (and b!80835 b!80784)))

(declare-fun lambda!9380 () Int)

(assert (=> bs!38379 (not (= lambda!9380 lambda!9348))))

(assert (=> bs!38379 (not (= lambda!9380 lambda!9347))))

(assert (=> bs!38379 (not (= lambda!9380 lambda!9346))))

(declare-fun bs!38380 () Bool)

(assert (= bs!38380 (and b!80835 b!80723)))

(assert (=> bs!38380 (not (= lambda!9380 lambda!9337))))

(declare-fun bs!38381 () Bool)

(assert (= bs!38381 (and b!80835 b!80807)))

(assert (=> bs!38381 (not (= lambda!9380 lambda!9357))))

(assert (=> bs!38381 (not (= lambda!9380 lambda!9356))))

(assert (=> bs!38381 (not (= lambda!9380 lambda!9355))))

(declare-fun bs!38382 () Bool)

(assert (= bs!38382 (and b!80835 b!80826)))

(assert (=> bs!38382 (not (= lambda!9380 lambda!9372))))

(assert (=> bs!38382 (not (= lambda!9380 lambda!9371))))

(assert (=> bs!38382 (not (= lambda!9380 lambda!9370))))

(declare-fun bs!38383 () Bool)

(assert (= bs!38383 (and b!80835 d!55549)))

(assert (=> bs!38383 (not (= lambda!9380 lambda!9379))))

(declare-fun bs!38384 () Bool)

(assert (= bs!38384 (and b!80835 b!80730)))

(assert (=> bs!38384 (= lambda!9380 lambda!9339)))

(declare-fun bs!38385 () Bool)

(assert (= bs!38385 (and b!80835 b!80728)))

(assert (=> bs!38385 (not (= lambda!9380 lambda!9336))))

(declare-fun bs!38386 () Bool)

(assert (= bs!38386 (and b!80835 b!80726)))

(assert (=> bs!38386 (not (= lambda!9380 lambda!9338))))

(assert (=> b!80835 true))

(declare-fun b_next!39173 () Bool)

(assert (=> start!10634 (= b_next!39171 (or (and b!80835 (= lambda!9380 p!850)) b_next!39173))))

(declare-fun bs!38387 () Bool)

(declare-fun b!80836 () Bool)

(assert (= bs!38387 (and b!80836 b!80784)))

(declare-fun lambda!9381 () Int)

(assert (=> bs!38387 (not (= lambda!9381 lambda!9348))))

(assert (=> bs!38387 (not (= lambda!9381 lambda!9347))))

(assert (=> bs!38387 (not (= lambda!9381 lambda!9346))))

(declare-fun bs!38388 () Bool)

(assert (= bs!38388 (and b!80836 b!80723)))

(assert (=> bs!38388 (not (= lambda!9381 lambda!9337))))

(declare-fun bs!38389 () Bool)

(assert (= bs!38389 (and b!80836 b!80807)))

(assert (=> bs!38389 (not (= lambda!9381 lambda!9357))))

(assert (=> bs!38389 (not (= lambda!9381 lambda!9356))))

(assert (=> bs!38389 (not (= lambda!9381 lambda!9355))))

(declare-fun bs!38390 () Bool)

(assert (= bs!38390 (and b!80836 b!80826)))

(assert (=> bs!38390 (not (= lambda!9381 lambda!9372))))

(assert (=> bs!38390 (not (= lambda!9381 lambda!9371))))

(assert (=> bs!38390 (not (= lambda!9381 lambda!9370))))

(declare-fun bs!38391 () Bool)

(assert (= bs!38391 (and b!80836 d!55549)))

(assert (=> bs!38391 (not (= lambda!9381 lambda!9379))))

(declare-fun bs!38392 () Bool)

(assert (= bs!38392 (and b!80836 b!80730)))

(assert (=> bs!38392 (= lambda!9381 lambda!9339)))

(declare-fun bs!38393 () Bool)

(assert (= bs!38393 (and b!80836 b!80728)))

(assert (=> bs!38393 (not (= lambda!9381 lambda!9336))))

(declare-fun bs!38394 () Bool)

(assert (= bs!38394 (and b!80836 b!80835)))

(assert (=> bs!38394 (= lambda!9381 lambda!9380)))

(declare-fun bs!38395 () Bool)

(assert (= bs!38395 (and b!80836 b!80726)))

(assert (=> bs!38395 (not (= lambda!9381 lambda!9338))))

(assert (=> b!80836 true))

(declare-fun b_next!39175 () Bool)

(assert (=> start!10634 (= b_next!39173 (or (and b!80836 (= lambda!9381 p!850)) b_next!39175))))

(declare-fun e!43848 () Bool)

(assert (=> d!55549 e!43848))

(declare-fun c!20409 () Bool)

(assert (=> d!55549 (= c!20409 (is-Cons!618 less!5))))

(assert (=> d!55549 (forall!16 less!5 lambda!9379)))

(assert (=> d!55549 (= (forall_lt_implies_le!0 less!5 (h!987 ls!96)) true)))

(assert (=> b!80835 (= e!43848 (forall!16 less!5 lambda!9380))))

(declare-fun lt!18510 () Bool)

(assert (=> b!80835 (= lt!18510 (forall_lt_implies_le!0 (t!47798 less!5) (h!987 ls!96)))))

(assert (=> b!80836 (= e!43848 (forall!16 less!5 lambda!9381))))

(assert (= (and d!55549 c!20409) b!80835))

(assert (= (and d!55549 (not c!20409)) b!80836))

(declare-fun m!75632 () Bool)

(assert (=> d!55549 m!75632))

(declare-fun m!75634 () Bool)

(assert (=> b!80835 m!75634))

(declare-fun m!75636 () Bool)

(assert (=> b!80835 m!75636))

(declare-fun m!75638 () Bool)

(assert (=> b!80836 m!75638))

(assert (=> b!80722 d!55549))

(declare-fun d!55551 () Bool)

(declare-fun res!41213 () Bool)

(declare-fun e!43853 () Bool)

(assert (=> d!55551 (=> res!41213 e!43853)))

(assert (=> d!55551 (= res!41213 (is-Nil!620 ls!111))))

(assert (=> d!55551 (= (forall!16 ls!111 p!850) e!43853)))

(declare-fun b!80843 () Bool)

(declare-fun e!43854 () Bool)

(assert (=> b!80843 (= e!43853 e!43854)))

(declare-fun res!41214 () Bool)

(assert (=> b!80843 (=> (not res!41214) (not e!43854))))

(assert (=> b!80843 (= res!41214 (dynLambda!980 p!850 (h!987 ls!111)))))

(declare-fun b!80844 () Bool)

(assert (=> b!80844 (= e!43854 (forall!16 (t!47798 ls!111) p!850))))

(assert (= (and d!55551 (not res!41213)) b!80843))

(assert (= (and b!80843 res!41214) b!80844))

(declare-fun b_lambda!15975 () Bool)

(assert (=> (not b_lambda!15975) (not b!80843)))

(declare-fun t!47807 () Bool)

(declare-fun tb!46201 () Bool)

(assert (=> (and start!10634 (= p!850 p!850) t!47807) tb!46201))

(declare-fun result!46631 () Bool)

(assert (=> tb!46201 (= result!46631 true)))

(assert (=> b!80843 t!47807))

(declare-fun b_and!58877 () Bool)

(assert (= b_and!58875 (and (=> t!47807 result!46631) b_and!58877)))

(declare-fun m!75640 () Bool)

(assert (=> b!80843 m!75640))

(declare-fun m!75642 () Bool)

(assert (=> b!80844 m!75642))

(assert (=> b!80731 d!55551))

(declare-fun bs!38396 () Bool)

(declare-fun d!55553 () Bool)

(assert (= bs!38396 (and d!55553 b!80784)))

(declare-fun lambda!9384 () Int)

(assert (=> bs!38396 (not (= lambda!9384 lambda!9348))))

(assert (=> bs!38396 (= (= (h!987 ls!96) (h!987 less!5)) (= lambda!9384 lambda!9347))))

(assert (=> bs!38396 (not (= lambda!9384 lambda!9346))))

(declare-fun bs!38397 () Bool)

(assert (= bs!38397 (and d!55553 b!80723)))

(assert (=> bs!38397 (= lambda!9384 lambda!9337)))

(declare-fun bs!38398 () Bool)

(assert (= bs!38398 (and d!55553 b!80807)))

(assert (=> bs!38398 (not (= lambda!9384 lambda!9357))))

(assert (=> bs!38398 (= (= (h!987 ls!96) (h!987 less!5)) (= lambda!9384 lambda!9356))))

(assert (=> bs!38398 (not (= lambda!9384 lambda!9355))))

(declare-fun bs!38399 () Bool)

(assert (= bs!38399 (and d!55553 b!80826)))

(assert (=> bs!38399 (not (= lambda!9384 lambda!9372))))

(assert (=> bs!38399 (= (= (h!987 ls!96) (h!987 less!5)) (= lambda!9384 lambda!9371))))

(assert (=> bs!38399 (not (= lambda!9384 lambda!9370))))

(declare-fun bs!38400 () Bool)

(assert (= bs!38400 (and d!55553 d!55549)))

(assert (=> bs!38400 (not (= lambda!9384 lambda!9379))))

(declare-fun bs!38401 () Bool)

(assert (= bs!38401 (and d!55553 b!80730)))

(assert (=> bs!38401 (not (= lambda!9384 lambda!9339))))

(declare-fun bs!38402 () Bool)

(assert (= bs!38402 (and d!55553 b!80728)))

(assert (=> bs!38402 (not (= lambda!9384 lambda!9336))))

(declare-fun bs!38403 () Bool)

(assert (= bs!38403 (and d!55553 b!80835)))

(assert (=> bs!38403 (not (= lambda!9384 lambda!9380))))

(declare-fun bs!38404 () Bool)

(assert (= bs!38404 (and d!55553 b!80726)))

(assert (=> bs!38404 (not (= lambda!9384 lambda!9338))))

(declare-fun bs!38405 () Bool)

(assert (= bs!38405 (and d!55553 b!80836)))

(assert (=> bs!38405 (not (= lambda!9384 lambda!9381))))

(assert (=> d!55553 true))

(declare-fun b_next!39177 () Bool)

(assert (=> start!10634 (= b_next!39175 (or (and d!55553 (= lambda!9384 p!850)) b_next!39177))))

(assert (=> d!55553 (isSorted!1 (Cons!618 (h!987 ls!96) (filter!14 (t!47798 ls!96) lambda!9384)))))

(declare-datatypes () ((Unit!1166 (Unit!1167))))

(declare-fun lt!18513 () Unit!1166)

(declare-fun Unit!1168 () Unit!1166)

(assert (=> d!55553 (= lt!18513 Unit!1168)))

(declare-fun filter_equal_sorted!0 (List!661 Int) Bool)

(assert (=> d!55553 (filter_equal_sorted!0 (t!47798 ls!96) (h!987 ls!96))))

(assert (=> d!55553 (= (cons_filter_equal_sorted!0 (t!47798 ls!96) (h!987 ls!96)) true)))

(declare-fun bs!38406 () Bool)

(assert (= bs!38406 d!55553))

(declare-fun m!75644 () Bool)

(assert (=> bs!38406 m!75644))

(declare-fun m!75646 () Bool)

(assert (=> bs!38406 m!75646))

(declare-fun m!75648 () Bool)

(assert (=> bs!38406 m!75648))

(assert (=> b!80725 d!55553))

(declare-fun b!80845 () Bool)

(declare-fun e!43858 () List!661)

(declare-fun e!43856 () List!661)

(assert (=> b!80845 (= e!43858 e!43856)))

(declare-fun c!20411 () Bool)

(declare-fun e!43857 () Bool)

(assert (=> b!80845 (= c!20411 e!43857)))

(declare-fun res!41216 () Bool)

(assert (=> b!80845 (=> (not res!41216) (not e!43857))))

(assert (=> b!80845 (= res!41216 (is-Cons!618 (t!47798 ls!96)))))

(declare-fun lt!18515 () List!661)

(assert (=> b!80845 (= lt!18515 (filter!14 (t!47798 (t!47798 ls!96)) lambda!9337))))

(declare-fun b!80846 () Bool)

(assert (=> b!80846 (= e!43858 Nil!620)))

(declare-fun b!80847 () Bool)

(assert (=> b!80847 (= e!43857 (dynLambda!980 lambda!9337 (h!987 (t!47798 ls!96))))))

(declare-fun b!80848 () Bool)

(declare-fun res!41217 () Bool)

(declare-fun e!43855 () Bool)

(assert (=> b!80848 (=> (not res!41217) (not e!43855))))

(declare-fun lt!18514 () List!661)

(assert (=> b!80848 (= res!41217 (subset (content!120 lt!18514) (content!120 (t!47798 ls!96))))))

(declare-fun d!55555 () Bool)

(assert (=> d!55555 e!43855))

(declare-fun res!41215 () Bool)

(assert (=> d!55555 (=> (not res!41215) (not e!43855))))

(assert (=> d!55555 (= res!41215 (<= (size!649 lt!18514) (size!649 (t!47798 ls!96))))))

(assert (=> d!55555 (= lt!18514 e!43858)))

(declare-fun c!20410 () Bool)

(assert (=> d!55555 (= c!20410 (is-Nil!620 (t!47798 ls!96)))))

(assert (=> d!55555 (= (filter!14 (t!47798 ls!96) lambda!9337) lt!18514)))

(declare-fun b!80849 () Bool)

(assert (=> b!80849 (= e!43856 lt!18515)))

(declare-fun b!80850 () Bool)

(assert (=> b!80850 (= e!43855 (forall!16 lt!18514 lambda!9337))))

(declare-fun b!80851 () Bool)

(assert (=> b!80851 (= e!43856 (Cons!618 (h!987 (t!47798 ls!96)) lt!18515))))

(assert (= (and b!80845 res!41216) b!80847))

(assert (= (and b!80845 c!20411) b!80851))

(assert (= (and b!80845 (not c!20411)) b!80849))

(assert (= (and d!55555 c!20410) b!80846))

(assert (= (and d!55555 (not c!20410)) b!80845))

(assert (= (and d!55555 res!41215) b!80848))

(assert (= (and b!80848 res!41217) b!80850))

(declare-fun b_lambda!15977 () Bool)

(assert (=> (not b_lambda!15977) (not b!80847)))

(declare-fun m!75650 () Bool)

(assert (=> b!80847 m!75650))

(declare-fun m!75652 () Bool)

(assert (=> b!80848 m!75652))

(assert (=> b!80848 m!75530))

(declare-fun m!75654 () Bool)

(assert (=> b!80850 m!75654))

(declare-fun m!75656 () Bool)

(assert (=> b!80845 m!75656))

(declare-fun m!75658 () Bool)

(assert (=> d!55555 m!75658))

(assert (=> d!55555 m!75538))

(assert (=> b!80723 d!55555))

(declare-fun b_lambda!15979 () Bool)

(assert (= b_lambda!15975 (or (and b!80726 (= lambda!9338 p!850)) (and b!80784 (= lambda!9347 p!850)) (and b!80730 (= lambda!9339 p!850)) (and b!80723 (= lambda!9337 p!850)) (and b!80784 (= lambda!9346 p!850)) (and b!80807 (= lambda!9355 p!850)) (and d!55553 (= lambda!9384 p!850)) (and b!80728 (= lambda!9336 p!850)) (and b!80807 (= lambda!9356 p!850)) (and b!80836 (= lambda!9381 p!850)) (and b!80826 (= lambda!9372 p!850)) (and b!80826 (= lambda!9371 p!850)) (and b!80784 (= lambda!9348 p!850)) (and start!10634 b_free!7353) (and b!80826 (= lambda!9370 p!850)) (and b!80807 (= lambda!9357 p!850)) (and b!80835 (= lambda!9380 p!850)) (and d!55549 (= lambda!9379 p!850)) b_lambda!15979)))

(declare-fun bs!38407 () Bool)

(declare-fun d!55557 () Bool)

(assert (= bs!38407 (and d!55557 b!80807)))

(assert (=> bs!38407 (= (dynLambda!980 lambda!9356 (h!987 ls!111)) (= (h!987 ls!111) (h!987 less!5)))))

(assert (=> (and b!80807 (= lambda!9356 p!850) b!80843) d!55557))

(declare-fun bs!38408 () Bool)

(declare-fun d!55559 () Bool)

(assert (= bs!38408 (and d!55559 b!80826)))

(assert (=> bs!38408 (= (dynLambda!980 lambda!9370 (h!987 ls!111)) (< (h!987 ls!111) (h!987 less!5)))))

(assert (=> (and b!80826 (= lambda!9370 p!850) b!80843) d!55559))

(declare-fun bs!38409 () Bool)

(declare-fun d!55561 () Bool)

(assert (= bs!38409 (and d!55561 b!80807)))

(assert (=> bs!38409 (= (dynLambda!980 lambda!9355 (h!987 ls!111)) (< (h!987 ls!111) (h!987 less!5)))))

(assert (=> (and b!80807 (= lambda!9355 p!850) b!80843) d!55561))

(declare-fun bs!38410 () Bool)

(declare-fun d!55563 () Bool)

(assert (= bs!38410 (and d!55563 b!80784)))

(assert (=> bs!38410 (= (dynLambda!980 lambda!9346 (h!987 ls!111)) (< (h!987 ls!111) (h!987 less!5)))))

(assert (=> (and b!80784 (= lambda!9346 p!850) b!80843) d!55563))

(declare-fun bs!38411 () Bool)

(declare-fun d!55565 () Bool)

(assert (= bs!38411 (and d!55565 b!80826)))

(assert (=> bs!38411 (= (dynLambda!980 lambda!9372 (h!987 ls!111)) (> (h!987 ls!111) (h!987 less!5)))))

(assert (=> (and b!80826 (= lambda!9372 p!850) b!80843) d!55565))

(declare-fun bs!38412 () Bool)

(declare-fun d!55567 () Bool)

(assert (= bs!38412 (and d!55567 d!55549)))

(assert (=> bs!38412 (= (dynLambda!980 lambda!9379 (h!987 ls!111)) (< (h!987 ls!111) (h!987 ls!96)))))

(assert (=> (and d!55549 (= lambda!9379 p!850) b!80843) d!55567))

(declare-fun bs!38413 () Bool)

(declare-fun d!55569 () Bool)

(assert (= bs!38413 (and d!55569 b!80728)))

(assert (=> bs!38413 (= (dynLambda!980 lambda!9336 (h!987 ls!111)) (< (h!987 ls!111) (h!987 ls!96)))))

(assert (=> (and b!80728 (= lambda!9336 p!850) b!80843) d!55569))

(declare-fun bs!38414 () Bool)

(declare-fun d!55571 () Bool)

(assert (= bs!38414 (and d!55571 d!55553)))

(assert (=> bs!38414 (= (dynLambda!980 lambda!9384 (h!987 ls!111)) (= (h!987 ls!111) (h!987 ls!96)))))

(assert (=> (and d!55553 (= lambda!9384 p!850) b!80843) d!55571))

(declare-fun bs!38415 () Bool)

(declare-fun d!55573 () Bool)

(assert (= bs!38415 (and d!55573 b!80784)))

(assert (=> bs!38415 (= (dynLambda!980 lambda!9348 (h!987 ls!111)) (> (h!987 ls!111) (h!987 less!5)))))

(assert (=> (and b!80784 (= lambda!9348 p!850) b!80843) d!55573))

(declare-fun bs!38416 () Bool)

(declare-fun d!55575 () Bool)

(assert (= bs!38416 (and d!55575 b!80726)))

(assert (=> bs!38416 (= (dynLambda!980 lambda!9338 (h!987 ls!111)) (> (h!987 ls!111) (h!987 ls!96)))))

(assert (=> (and b!80726 (= lambda!9338 p!850) b!80843) d!55575))

(declare-fun bs!38417 () Bool)

(declare-fun d!55577 () Bool)

(assert (= bs!38417 (and d!55577 b!80784)))

(assert (=> bs!38417 (= (dynLambda!980 lambda!9347 (h!987 ls!111)) (= (h!987 ls!111) (h!987 less!5)))))

(assert (=> (and b!80784 (= lambda!9347 p!850) b!80843) d!55577))

(declare-fun bs!38418 () Bool)

(declare-fun d!55579 () Bool)

(assert (= bs!38418 (and d!55579 b!80826)))

(assert (=> bs!38418 (= (dynLambda!980 lambda!9371 (h!987 ls!111)) (= (h!987 ls!111) (h!987 less!5)))))

(assert (=> (and b!80826 (= lambda!9371 p!850) b!80843) d!55579))

(declare-fun bs!38419 () Bool)

(declare-fun d!55581 () Bool)

(assert (= bs!38419 (and d!55581 b!80730)))

(assert (=> bs!38419 (= (dynLambda!980 lambda!9339 (h!987 ls!111)) (<= (h!987 ls!111) (h!987 ls!96)))))

(assert (=> (and b!80730 (= lambda!9339 p!850) b!80843) d!55581))

(declare-fun bs!38420 () Bool)

(declare-fun d!55583 () Bool)

(assert (= bs!38420 (and d!55583 b!80836)))

(assert (=> bs!38420 (= (dynLambda!980 lambda!9381 (h!987 ls!111)) (<= (h!987 ls!111) (h!987 ls!96)))))

(assert (=> (and b!80836 (= lambda!9381 p!850) b!80843) d!55583))

(declare-fun bs!38421 () Bool)

(declare-fun d!55585 () Bool)

(assert (= bs!38421 (and d!55585 b!80723)))

(assert (=> bs!38421 (= (dynLambda!980 lambda!9337 (h!987 ls!111)) (= (h!987 ls!111) (h!987 ls!96)))))

(assert (=> (and b!80723 (= lambda!9337 p!850) b!80843) d!55585))

(declare-fun bs!38422 () Bool)

(declare-fun d!55587 () Bool)

(assert (= bs!38422 (and d!55587 b!80835)))

(assert (=> bs!38422 (= (dynLambda!980 lambda!9380 (h!987 ls!111)) (<= (h!987 ls!111) (h!987 ls!96)))))

(assert (=> (and b!80835 (= lambda!9380 p!850) b!80843) d!55587))

(declare-fun bs!38423 () Bool)

(declare-fun d!55589 () Bool)

(assert (= bs!38423 (and d!55589 b!80807)))

(assert (=> bs!38423 (= (dynLambda!980 lambda!9357 (h!987 ls!111)) (> (h!987 ls!111) (h!987 less!5)))))

(assert (=> (and b!80807 (= lambda!9357 p!850) b!80843) d!55589))

(declare-fun b_lambda!15981 () Bool)

(assert (= b_lambda!15973 (or b!80726 b_lambda!15981)))

(declare-fun bs!38424 () Bool)

(declare-fun d!55591 () Bool)

(assert (= bs!38424 (and d!55591 b!80726)))

(assert (=> bs!38424 (= (dynLambda!980 lambda!9338 (h!987 (t!47798 ls!96))) (> (h!987 (t!47798 ls!96)) (h!987 ls!96)))))

(assert (=> b!80811 d!55591))

(declare-fun b_lambda!15983 () Bool)

(assert (= b_lambda!15969 (or b!80728 b_lambda!15983)))

(declare-fun bs!38425 () Bool)

(declare-fun d!55593 () Bool)

(assert (= bs!38425 (and d!55593 b!80728)))

(assert (=> bs!38425 (= (dynLambda!980 lambda!9336 (last!13 (quickSort!0 less!5))) (< (last!13 (quickSort!0 less!5)) (h!987 ls!96)))))

(assert (=> b!80799 d!55593))

(declare-fun b_lambda!15985 () Bool)

(assert (= b_lambda!15967 (or b!80728 b_lambda!15985)))

(declare-fun bs!38426 () Bool)

(declare-fun d!55595 () Bool)

(assert (= bs!38426 (and d!55595 b!80728)))

(assert (=> bs!38426 (= (dynLambda!980 lambda!9336 (h!987 (t!47798 ls!96))) (< (h!987 (t!47798 ls!96)) (h!987 ls!96)))))

(assert (=> b!80750 d!55595))

(declare-fun b_lambda!15987 () Bool)

(assert (= b_lambda!15977 (or b!80723 b_lambda!15987)))

(declare-fun bs!38427 () Bool)

(declare-fun d!55597 () Bool)

(assert (= bs!38427 (and d!55597 b!80723)))

(assert (=> bs!38427 (= (dynLambda!980 lambda!9337 (h!987 (t!47798 ls!96))) (= (h!987 (t!47798 ls!96)) (h!987 ls!96)))))

(assert (=> b!80847 d!55597))

(declare-fun b_lambda!15989 () Bool)

(assert (= b_lambda!15971 (or b!80728 b_lambda!15989)))

(assert (=> b!80802 d!55593))

(push 1)

(assert b_and!58877)

(assert (not d!55535))

(assert (not b_lambda!15987))

(assert (not b!80807))

(assert (not b!80767))

(assert (not d!55537))

(assert (not b!80797))

(assert (not b!80798))

(assert (not b!80830))

(assert (not d!55555))

(assert (not b!80800))

(assert (not b!80769))

(assert (not b!80814))

(assert (not b!80845))

(assert (not b!80828))

(assert (not d!55549))

(assert (not b!80748))

(assert (not b!80799))

(assert (not b!80812))

(assert (not d!55547))

(assert (not d!55553))

(assert (not b_lambda!15983))

(assert (not b!80753))

(assert (not b!80827))

(assert (not b!80829))

(assert (not b_lambda!15985))

(assert (not b!80836))

(assert (not b!80770))

(assert (not b!80848))

(assert (not b!80850))

(assert (not b!80751))

(assert (not b_lambda!15989))

(assert (not b!80771))

(assert (not b!80802))

(assert (not b!80808))

(assert (not b!80801))

(assert (not b_lambda!15979))

(assert (not b_lambda!15981))

(assert (not b!80768))

(assert (not b_next!39177))

(assert (not b!80809))

(assert (not d!55545))

(assert (not d!55543))

(assert (not b!80772))

(assert (not b!80844))

(assert (not b!80826))

(assert (not b!80784))

(assert (not b!80835))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58877)

(assert (not b_next!39177))

(check-sat)

(pop 1)


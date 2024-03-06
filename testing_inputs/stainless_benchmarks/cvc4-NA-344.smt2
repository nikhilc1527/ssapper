; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2620 () Bool)

(assert start!2620)

(declare-fun b!12875 () Bool)

(declare-fun e!7061 () Bool)

(declare-fun tp_is_empty!41 () Bool)

(assert (=> b!12875 (= e!7061 tp_is_empty!41)))

(declare-fun b!12876 () Bool)

(declare-fun res!4766 () Bool)

(declare-fun e!7062 () Bool)

(assert (=> b!12876 (=> (not res!4766) (not e!7062))))

(declare-datatypes () ((A!940 (A!941 (val!21 Int)))))

(declare-datatypes () ((List!303 (Nil!301) (Cons!300 (head!518 A!940) (tail!530 List!303)))))

(declare-fun res!1485 () List!303)

(declare-datatypes () ((Tree!81 (Branch!72 (left!550 Tree!81) (right!553 Tree!81)) (Leaf!154 (value!1323 A!940)))))

(declare-fun thiss!1092 () Tree!81)

(declare-fun append!145 (List!303 List!303) List!303)

(declare-fun toList!80 (Tree!81) List!303)

(assert (=> b!12876 (= res!4766 (= res!1485 (append!145 (toList!80 (left!550 thiss!1092)) (toList!80 (right!553 thiss!1092)))))))

(declare-fun b!12877 () Bool)

(declare-fun e!7063 () Bool)

(declare-fun tp!3230 () Bool)

(assert (=> b!12877 (= e!7063 (and tp_is_empty!41 tp!3230))))

(declare-fun b!12878 () Bool)

(declare-fun isEmpty!227 (List!303) Bool)

(assert (=> b!12878 (= e!7062 (isEmpty!227 res!1485))))

(declare-fun b!12879 () Bool)

(declare-fun tp!3231 () Bool)

(declare-fun tp!3232 () Bool)

(assert (=> b!12879 (= e!7061 (and tp!3231 tp!3232))))

(declare-fun res!4767 () Bool)

(assert (=> start!2620 (=> (not res!4767) (not e!7062))))

(assert (=> start!2620 (= res!4767 (not (is-Leaf!154 thiss!1092)))))

(assert (=> start!2620 e!7062))

(assert (=> start!2620 e!7061))

(assert (=> start!2620 e!7063))

(assert (= (and start!2620 res!4767) b!12876))

(assert (= (and b!12876 res!4766) b!12878))

(assert (= (and start!2620 (is-Branch!72 thiss!1092)) b!12879))

(assert (= (and start!2620 (is-Leaf!154 thiss!1092)) b!12875))

(assert (= (and start!2620 (is-Cons!300 res!1485)) b!12877))

(declare-fun m!16217 () Bool)

(assert (=> b!12876 m!16217))

(declare-fun m!16219 () Bool)

(assert (=> b!12876 m!16219))

(assert (=> b!12876 m!16217))

(assert (=> b!12876 m!16219))

(declare-fun m!16221 () Bool)

(assert (=> b!12876 m!16221))

(declare-fun m!16223 () Bool)

(assert (=> b!12878 m!16223))

(push 1)

(assert (not b!12879))

(assert (not b!12876))

(assert tp_is_empty!41)

(assert (not b!12877))

(assert (not b!12878))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10135 () Bool)

(declare-fun c!3640 () Bool)

(assert (=> d!10135 (= c!3640 (is-Nil!301 (toList!80 (left!550 thiss!1092))))))

(declare-fun e!7066 () List!303)

(assert (=> d!10135 (= (append!145 (toList!80 (left!550 thiss!1092)) (toList!80 (right!553 thiss!1092))) e!7066)))

(declare-fun b!12884 () Bool)

(assert (=> b!12884 (= e!7066 (toList!80 (right!553 thiss!1092)))))

(declare-fun b!12885 () Bool)

(assert (=> b!12885 (= e!7066 (Cons!300 (head!518 (toList!80 (left!550 thiss!1092))) (append!145 (tail!530 (toList!80 (left!550 thiss!1092))) (toList!80 (right!553 thiss!1092)))))))

(assert (= (and d!10135 c!3640) b!12884))

(assert (= (and d!10135 (not c!3640)) b!12885))

(assert (=> b!12885 m!16219))

(declare-fun m!16225 () Bool)

(assert (=> b!12885 m!16225))

(assert (=> b!12876 d!10135))

(declare-fun d!10137 () Bool)

(declare-fun lt!1877 () List!303)

(assert (=> d!10137 (not (isEmpty!227 lt!1877))))

(declare-fun e!7069 () List!303)

(assert (=> d!10137 (= lt!1877 e!7069)))

(declare-fun c!3643 () Bool)

(assert (=> d!10137 (= c!3643 (is-Leaf!154 (left!550 thiss!1092)))))

(assert (=> d!10137 (= (toList!80 (left!550 thiss!1092)) lt!1877)))

(declare-fun b!12890 () Bool)

(assert (=> b!12890 (= e!7069 (Cons!300 (value!1323 (left!550 thiss!1092)) Nil!301))))

(declare-fun b!12891 () Bool)

(assert (=> b!12891 (= e!7069 (append!145 (toList!80 (left!550 (left!550 thiss!1092))) (toList!80 (right!553 (left!550 thiss!1092)))))))

(assert (= (and d!10137 c!3643) b!12890))

(assert (= (and d!10137 (not c!3643)) b!12891))

(declare-fun m!16227 () Bool)

(assert (=> d!10137 m!16227))

(declare-fun m!16229 () Bool)

(assert (=> b!12891 m!16229))

(declare-fun m!16231 () Bool)

(assert (=> b!12891 m!16231))

(assert (=> b!12891 m!16229))

(assert (=> b!12891 m!16231))

(declare-fun m!16233 () Bool)

(assert (=> b!12891 m!16233))

(assert (=> b!12876 d!10137))

(declare-fun d!10139 () Bool)

(declare-fun lt!1878 () List!303)

(assert (=> d!10139 (not (isEmpty!227 lt!1878))))

(declare-fun e!7070 () List!303)

(assert (=> d!10139 (= lt!1878 e!7070)))

(declare-fun c!3644 () Bool)

(assert (=> d!10139 (= c!3644 (is-Leaf!154 (right!553 thiss!1092)))))

(assert (=> d!10139 (= (toList!80 (right!553 thiss!1092)) lt!1878)))

(declare-fun b!12892 () Bool)

(assert (=> b!12892 (= e!7070 (Cons!300 (value!1323 (right!553 thiss!1092)) Nil!301))))

(declare-fun b!12893 () Bool)

(assert (=> b!12893 (= e!7070 (append!145 (toList!80 (left!550 (right!553 thiss!1092))) (toList!80 (right!553 (right!553 thiss!1092)))))))

(assert (= (and d!10139 c!3644) b!12892))

(assert (= (and d!10139 (not c!3644)) b!12893))

(declare-fun m!16235 () Bool)

(assert (=> d!10139 m!16235))

(declare-fun m!16237 () Bool)

(assert (=> b!12893 m!16237))

(declare-fun m!16239 () Bool)

(assert (=> b!12893 m!16239))

(assert (=> b!12893 m!16237))

(assert (=> b!12893 m!16239))

(declare-fun m!16241 () Bool)

(assert (=> b!12893 m!16241))

(assert (=> b!12876 d!10139))

(declare-fun d!10141 () Bool)

(assert (=> d!10141 (= (isEmpty!227 res!1485) (is-Nil!301 res!1485))))

(assert (=> b!12878 d!10141))

(declare-fun b!12898 () Bool)

(declare-fun e!7073 () Bool)

(declare-fun tp!3235 () Bool)

(assert (=> b!12898 (= e!7073 (and tp_is_empty!41 tp!3235))))

(assert (=> b!12877 (= tp!3230 e!7073)))

(assert (= (and b!12877 (is-Cons!300 (tail!530 res!1485))) b!12898))

(declare-fun b!12905 () Bool)

(declare-fun e!7076 () Bool)

(declare-fun tp!3240 () Bool)

(declare-fun tp!3241 () Bool)

(assert (=> b!12905 (= e!7076 (and tp!3240 tp!3241))))

(declare-fun b!12906 () Bool)

(assert (=> b!12906 (= e!7076 tp_is_empty!41)))

(assert (=> b!12879 (= tp!3231 e!7076)))

(assert (= (and b!12879 (is-Branch!72 (left!550 thiss!1092))) b!12905))

(assert (= (and b!12879 (is-Leaf!154 (left!550 thiss!1092))) b!12906))

(declare-fun b!12907 () Bool)

(declare-fun e!7077 () Bool)

(declare-fun tp!3242 () Bool)

(declare-fun tp!3243 () Bool)

(assert (=> b!12907 (= e!7077 (and tp!3242 tp!3243))))

(declare-fun b!12908 () Bool)

(assert (=> b!12908 (= e!7077 tp_is_empty!41)))

(assert (=> b!12879 (= tp!3232 e!7077)))

(assert (= (and b!12879 (is-Branch!72 (right!553 thiss!1092))) b!12907))

(assert (= (and b!12879 (is-Leaf!154 (right!553 thiss!1092))) b!12908))

(push 1)

(assert (not d!10139))

(assert (not b!12891))

(assert (not b!12893))

(assert tp_is_empty!41)

(assert (not b!12905))

(assert (not d!10137))

(assert (not b!12885))

(assert (not b!12907))

(assert (not b!12898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


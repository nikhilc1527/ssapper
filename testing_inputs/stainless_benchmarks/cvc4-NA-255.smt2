; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1958 () Bool)

(assert start!1958)

(declare-fun b!9701 () Bool)

(declare-fun b_free!1193 () Bool)

(declare-fun b_next!2961 () Bool)

(assert (=> b!9701 (= b_free!1193 (not b_next!2961))))

(declare-fun tp!1923 () Bool)

(declare-fun b_and!4365 () Bool)

(assert (=> b!9701 (= tp!1923 b_and!4365)))

(declare-fun b_free!1195 () Bool)

(declare-fun b_next!2963 () Bool)

(assert (=> b!9701 (= b_free!1195 (not b_next!2963))))

(declare-fun tp!1924 () Bool)

(declare-fun b_and!4367 () Bool)

(assert (=> b!9701 (= tp!1924 b_and!4367)))

(declare-fun b_free!1197 () Bool)

(declare-fun b_next!2965 () Bool)

(assert (=> b!9701 (= b_free!1197 (not b_next!2965))))

(declare-fun tp!1922 () Bool)

(declare-fun b_and!4369 () Bool)

(assert (=> b!9701 (= tp!1922 b_and!4369)))

(declare-fun b!9713 () Bool)

(declare-fun b_free!1199 () Bool)

(declare-fun b_next!2967 () Bool)

(assert (=> b!9713 (= b_free!1199 (not b_next!2967))))

(declare-fun tp!1921 () Bool)

(declare-fun b_and!4371 () Bool)

(assert (=> b!9713 (= tp!1921 b_and!4371)))

(declare-fun b_free!1201 () Bool)

(declare-fun b_next!2969 () Bool)

(assert (=> b!9713 (= b_free!1201 (not b_next!2969))))

(declare-fun tp!1920 () Bool)

(declare-fun b_and!4373 () Bool)

(assert (=> b!9713 (= tp!1920 b_and!4373)))

(declare-fun b!9707 () Bool)

(declare-fun m!12899 () Bool)

(assert (=> b!9707 m!12899))

(assert (=> b!9707 true))

(declare-fun lambda!2482 () Int)

(declare-datatypes () ((EqEvidence!186 (EqEvidence!187 (x!5482 Int) (y!595 Int) (evidence!160 Int)))))

(declare-fun thiss!673 () EqEvidence!186)

(declare-fun dynLambda!317 (Int) Int)

(assert (=> (and b!9701 b!9707 (= (dynLambda!317 lambda!2482) (dynLambda!317 (x!5482 thiss!673)))) (= lambda!2482 (x!5482 thiss!673))))

(assert (=> (and b!9701 b!9707 (= (dynLambda!317 lambda!2482) (dynLambda!317 (y!595 thiss!673)))) (= lambda!2482 (y!595 thiss!673))))

(declare-datatypes () ((EqProof!86 (EqProof!87 (x!5483 Int) (y!596 Int)))))

(declare-fun thiss!675 () EqProof!86)

(assert (=> (and b!9713 b!9707 (= (dynLambda!317 lambda!2482) (dynLambda!317 (x!5483 thiss!675)))) (= lambda!2482 (x!5483 thiss!675))))

(assert (=> (and b!9713 b!9707 (= (dynLambda!317 lambda!2482) (dynLambda!317 (y!596 thiss!675)))) (= lambda!2482 (y!596 thiss!675))))

(declare-fun b_next!2971 () Bool)

(assert (=> b!9701 (= b_next!2961 (or (and b!9707 (= lambda!2482 (x!5482 thiss!673))) b_next!2971))))

(declare-fun b_next!2973 () Bool)

(assert (=> b!9701 (= b_next!2963 (or (and b!9707 (= lambda!2482 (y!595 thiss!673))) b_next!2973))))

(declare-fun b_next!2975 () Bool)

(assert (=> b!9713 (= b_next!2967 (or (and b!9707 (= lambda!2482 (x!5483 thiss!675))) b_next!2975))))

(declare-fun b_next!2977 () Bool)

(assert (=> b!9713 (= b_next!2969 (or (and b!9707 (= lambda!2482 (y!596 thiss!675))) b_next!2977))))

(declare-fun m!12901 () Bool)

(assert (=> b!9707 m!12901))

(declare-fun lambda!2483 () Int)

(declare-fun dynLambda!318 (Int) Bool)

(assert (=> (and b!9701 b!9707 (= (dynLambda!318 lambda!2483) (dynLambda!318 (evidence!160 thiss!673)))) (= lambda!2483 (evidence!160 thiss!673))))

(declare-fun b_next!2979 () Bool)

(assert (=> b!9701 (= b_next!2965 (or (and b!9707 (= lambda!2483 (evidence!160 thiss!673))) b_next!2979))))

(declare-fun bs!2639 () Bool)

(declare-fun b!9709 () Bool)

(assert (= bs!2639 (and b!9709 b!9707)))

(declare-fun lambda!2484 () Int)

(assert (=> bs!2639 (not (= lambda!2484 lambda!2482))))

(assert (=> b!9709 true))

(declare-fun b_next!2981 () Bool)

(assert (=> b!9701 (= b_next!2971 (or (and b!9709 (= lambda!2484 (x!5482 thiss!673))) b_next!2981))))

(declare-fun b_next!2983 () Bool)

(assert (=> b!9701 (= b_next!2973 (or (and b!9709 (= lambda!2484 (y!595 thiss!673))) b_next!2983))))

(declare-fun b_next!2985 () Bool)

(assert (=> b!9713 (= b_next!2975 (or (and b!9709 (= lambda!2484 (x!5483 thiss!675))) b_next!2985))))

(declare-fun b_next!2987 () Bool)

(assert (=> b!9713 (= b_next!2977 (or (and b!9709 (= lambda!2484 (y!596 thiss!675))) b_next!2987))))

(declare-fun e!5772 () Bool)

(assert (=> b!9701 (= e!5772 (and tp!1923 tp!1924 tp!1922))))

(declare-fun b!9702 () Bool)

(declare-fun res!3204 () Bool)

(declare-fun e!5769 () Bool)

(assert (=> b!9702 (=> (not res!3204) (not e!5769))))

(declare-fun lambda!2481 () Int)

(declare-datatypes () ((Parenthesis!54 (CloseParenthesis!53) (OpenParenthesis!53))))

(declare-datatypes () ((List!231 (Nil!229) (Cons!228 (head!446 Parenthesis!54) (tail!458 List!231)))))

(declare-fun xs!280 () List!231)

(declare-fun counter!4 () Int)

(declare-fun foldRight!31 (List!231 Int Int) Int)

(assert (=> b!9702 (= res!3204 (= counter!4 (foldRight!31 xs!280 0 lambda!2481)))))

(declare-fun b!9703 () Bool)

(declare-fun res!3208 () Bool)

(assert (=> b!9703 (=> (not res!3208) (not e!5769))))

(assert (=> b!9703 (= res!3208 (not (is-Nil!229 xs!280)))))

(declare-fun b!9704 () Bool)

(declare-fun res!3206 () Bool)

(assert (=> b!9704 (=> (not res!3206) (not e!5769))))

(declare-datatypes () ((ProofOps!176 (ProofOps!177 (prop!213 Bool)))))

(declare-fun thiss!651 () ProofOps!176)

(declare-fun e!5771 () Bool)

(assert (=> b!9704 (= res!3206 (= thiss!651 (ProofOps!177 e!5771)))))

(declare-fun res!3202 () Bool)

(assert (=> b!9704 (=> (not res!3202) (not e!5771))))

(declare-datatypes () ((Balance!229 (Balance!230 (extraOpen!155 Int) (extraClose!155 Int)))))

(declare-fun balance!3 () Balance!229)

(declare-fun balanceToCounter!0 (Balance!229) Int)

(assert (=> b!9704 (= res!3202 (= (balanceToCounter!0 balance!3) counter!4))))

(declare-fun b!9705 () Bool)

(declare-fun res!3207 () Bool)

(assert (=> b!9705 (=> (not res!3207) (not e!5769))))

(declare-fun lambda!2480 () Int)

(declare-fun nonNegative!0 (Balance!229) Bool)

(declare-fun foldRight!32 (List!231 Balance!229 Int) Balance!229)

(assert (=> b!9705 (= res!3207 (nonNegative!0 (foldRight!32 (tail!458 xs!280) (Balance!230 0 0) lambda!2480)))))

(declare-fun b!9706 () Bool)

(declare-fun res!3205 () Bool)

(assert (=> b!9706 (=> (not res!3205) (not e!5769))))

(declare-fun b!5615 () Balance!229)

(assert (=> b!9706 (= res!3205 (= b!5615 (foldRight!32 (tail!458 xs!280) (Balance!230 0 0) lambda!2480)))))

(declare-fun res!3203 () Bool)

(assert (=> b!9707 (=> (not res!3203) (not e!5769))))

(assert (=> b!9707 (= res!3203 (= thiss!673 (EqEvidence!187 lambda!2482 lambda!2482 lambda!2483)))))

(declare-fun b!9708 () Bool)

(assert (=> b!9708 (= e!5771 (nonNegative!0 balance!3))))

(declare-fun res!3212 () Bool)

(assert (=> b!9709 (=> (not res!3212) (not e!5769))))

(assert (=> b!9709 (= res!3212 (= thiss!675 (EqProof!87 lambda!2484 lambda!2484)))))

(declare-fun b!9710 () Bool)

(declare-fun res!3210 () Bool)

(assert (=> b!9710 (=> (not res!3210) (not e!5769))))

(declare-fun p!234 () Parenthesis!54)

(assert (=> b!9710 (= res!3210 (= p!234 (head!446 xs!280)))))

(declare-fun b!9711 () Bool)

(declare-fun res!3211 () Bool)

(assert (=> b!9711 (=> (not res!3211) (not e!5769))))

(declare-fun original_sequential_helper!0 (List!231) Bool)

(assert (=> b!9711 (= res!3211 (original_sequential_helper!0 (tail!458 xs!280)))))

(declare-fun b!9712 () Bool)

(assert (=> b!9712 (= e!5769 (not (nonNegative!0 b!5615)))))

(declare-fun e!5770 () Bool)

(assert (=> b!9713 (= e!5770 (and tp!1921 tp!1920))))

(declare-fun res!3209 () Bool)

(assert (=> start!1958 (=> (not res!3209) (not e!5769))))

(assert (=> start!1958 (= res!3209 (= balance!3 (foldRight!32 xs!280 (Balance!230 0 0) lambda!2480)))))

(assert (=> start!1958 e!5769))

(assert (=> start!1958 true))

(declare-fun inv!340 (EqEvidence!186) Bool)

(assert (=> start!1958 (and (inv!340 thiss!673) e!5772)))

(declare-fun inv!341 (EqProof!86) Bool)

(assert (=> start!1958 (and (inv!341 thiss!675) e!5770)))

(assert (= (and start!1958 res!3209) b!9702))

(assert (= (and b!9702 res!3204) b!9704))

(assert (= (and b!9704 res!3202) b!9708))

(assert (= (and b!9704 res!3206) b!9703))

(assert (= (and b!9703 res!3208) b!9711))

(assert (= (and b!9711 res!3211) b!9705))

(assert (= (and b!9705 res!3207) b!9707))

(assert (= (and b!9707 res!3203) b!9709))

(assert (= (and b!9709 res!3212) b!9706))

(assert (= (and b!9706 res!3205) b!9710))

(assert (= (and b!9710 res!3210) b!9712))

(assert (= start!1958 b!9701))

(assert (= start!1958 b!9713))

(declare-fun m!12903 () Bool)

(assert (=> b!9705 m!12903))

(assert (=> b!9705 m!12903))

(declare-fun m!12905 () Bool)

(assert (=> b!9705 m!12905))

(declare-fun m!12907 () Bool)

(assert (=> b!9702 m!12907))

(declare-fun m!12909 () Bool)

(assert (=> b!9711 m!12909))

(declare-fun m!12911 () Bool)

(assert (=> b!9712 m!12911))

(assert (=> b!9704 m!12899))

(declare-fun m!12913 () Bool)

(assert (=> start!1958 m!12913))

(declare-fun m!12915 () Bool)

(assert (=> start!1958 m!12915))

(declare-fun m!12917 () Bool)

(assert (=> start!1958 m!12917))

(assert (=> b!9706 m!12903))

(declare-fun m!12919 () Bool)

(assert (=> b!9708 m!12919))

(push 1)

(assert (not b_next!2987))

(assert (not b!9708))

(assert b_and!4369)

(assert (not b!9712))

(assert (not b!9707))

(assert (not b_next!2985))

(assert (not b_next!2981))

(assert (not b!9705))

(assert b_and!4373)

(assert (not b!9711))

(assert b_and!4365)

(assert (not b!9702))

(assert b_and!4367)

(assert (not b!9704))

(assert (not b_next!2979))

(assert (not start!1958))

(assert (not b!9706))

(assert b_and!4371)

(assert (not b_next!2983))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2987))

(assert b_and!4369)

(assert (not b_next!2985))

(assert (not b_next!2981))

(assert b_and!4373)

(assert b_and!4365)

(assert b_and!4367)

(assert (not b_next!2979))

(assert b_and!4371)

(assert (not b_next!2983))

(check-sat)

(pop 1)


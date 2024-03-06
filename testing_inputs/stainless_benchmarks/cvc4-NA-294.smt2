; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2234 () Bool)

(assert start!2234)

(declare-fun b!11138 () Bool)

(declare-fun b_free!1497 () Bool)

(declare-fun b_next!3601 () Bool)

(assert (=> b!11138 (= b_free!1497 (not b_next!3601))))

(declare-fun tp!2419 () Bool)

(declare-fun b_and!5183 () Bool)

(assert (=> b!11138 (= tp!2419 b_and!5183)))

(declare-fun b_free!1499 () Bool)

(declare-fun b_next!3603 () Bool)

(assert (=> b!11138 (= b_free!1499 (not b_next!3603))))

(declare-fun tp!2415 () Bool)

(declare-fun b_and!5185 () Bool)

(assert (=> b!11138 (= tp!2415 b_and!5185)))

(declare-fun b_free!1501 () Bool)

(declare-fun b_next!3605 () Bool)

(assert (=> b!11138 (= b_free!1501 (not b_next!3605))))

(declare-fun tp!2417 () Bool)

(declare-fun b_and!5187 () Bool)

(assert (=> b!11138 (= tp!2417 b_and!5187)))

(declare-fun b_free!1503 () Bool)

(declare-fun b_next!3607 () Bool)

(assert (=> start!2234 (= b_free!1503 (not b_next!3607))))

(declare-fun tp!2414 () Bool)

(declare-fun b_and!5189 () Bool)

(assert (=> start!2234 (= tp!2414 b_and!5189)))

(declare-fun b_free!1505 () Bool)

(declare-fun b_next!3609 () Bool)

(assert (=> start!2234 (= b_free!1505 (not b_next!3609))))

(declare-fun tp!2416 () Bool)

(declare-fun b_and!5191 () Bool)

(assert (=> start!2234 (= tp!2416 b_and!5191)))

(declare-fun b!11132 () Bool)

(declare-fun b_free!1507 () Bool)

(declare-fun b_next!3611 () Bool)

(assert (=> b!11132 (= b_free!1507 (not b_next!3611))))

(declare-fun tp!2418 () Bool)

(declare-fun b_and!5193 () Bool)

(assert (=> b!11132 (= tp!2418 b_and!5193)))

(declare-fun b_free!1509 () Bool)

(declare-fun b_next!3613 () Bool)

(assert (=> b!11132 (= b_free!1509 (not b_next!3613))))

(declare-fun tp!2413 () Bool)

(declare-fun b_and!5195 () Bool)

(assert (=> b!11132 (= tp!2413 b_and!5195)))

(declare-fun f!539 () Int)

(declare-fun b!11133 () Bool)

(declare-fun b_next!3615 () Bool)

(declare-fun lambda!2961 () Int)

(assert (=> start!2234 (= b_next!3607 (or (and b!11133 (= lambda!2961 f!539)) b_next!3615))))

(declare-fun b_next!3617 () Bool)

(declare-fun f!570 () Int)

(assert (=> start!2234 (= b_next!3609 (or (and b!11133 (= lambda!2961 f!570)) b_next!3617))))

(declare-fun b!11136 () Bool)

(assert (=> b!11136 true))

(declare-fun order!201 () Int)

(declare-fun order!199 () Int)

(declare-fun lambda!2962 () Int)

(declare-fun dynLambda!394 (Int Int) Int)

(declare-fun dynLambda!395 (Int Int) Int)

(assert (=> b!11136 (< (dynLambda!394 order!199 f!539) (dynLambda!395 order!201 lambda!2962))))

(assert (=> b!11136 true))

(assert (=> b!11136 true))

(declare-datatypes () ((Balance!297 (Balance!298 (extraOpen!189 Int) (extraClose!189 Int)))))

(declare-datatypes () ((EqEvidence!228 (EqEvidence!229 (x!6267 Int) (y!627 Int) (evidence!181 Int)))))

(declare-fun thiss!747 () EqEvidence!228)

(declare-fun b_next!3619 () Bool)

(assert (=> b!11138 (= b_next!3601 (or (and b!11136 (= lambda!2962 (x!6267 thiss!747))) b_next!3619))))

(declare-fun b_next!3621 () Bool)

(assert (=> b!11138 (= b_next!3603 (or (and b!11136 (= lambda!2962 (y!627 thiss!747))) b_next!3621))))

(declare-fun b_next!3623 () Bool)

(declare-datatypes () ((EqProof!108 (EqProof!109 (x!6268 Int) (y!628 Int)))))

(declare-fun thiss!757 () EqProof!108)

(assert (=> b!11132 (= b_next!3611 (or (and b!11136 (= lambda!2962 (x!6268 thiss!757))) b_next!3623))))

(declare-fun b_next!3625 () Bool)

(assert (=> b!11132 (= b_next!3613 (or (and b!11136 (= lambda!2962 (y!628 thiss!757))) b_next!3625))))

(assert (=> b!11136 true))

(declare-fun order!203 () Int)

(declare-fun lambda!2964 () Int)

(declare-fun dynLambda!396 (Int Int) Int)

(assert (=> b!11136 (< (dynLambda!394 order!199 f!539) (dynLambda!396 order!203 lambda!2964))))

(assert (=> b!11136 true))

(assert (=> b!11136 true))

(declare-fun lambda!2963 () Int)

(declare-fun order!205 () Int)

(declare-fun dynLambda!397 (Int Int) Int)

(assert (=> b!11136 (< (dynLambda!394 order!199 f!539) (dynLambda!397 order!205 lambda!2963))))

(assert (=> b!11136 true))

(declare-fun b_next!3627 () Bool)

(assert (=> b!11138 (= b_next!3605 (or (and b!11136 (= lambda!2963 (evidence!181 thiss!747))) b_next!3627))))

(declare-fun bs!2867 () Bool)

(declare-fun b!11137 () Bool)

(assert (= bs!2867 (and b!11137 b!11136)))

(declare-fun lambda!2965 () Int)

(assert (=> bs!2867 (not (= lambda!2965 lambda!2962))))

(assert (=> b!11137 true))

(assert (=> b!11137 (< (dynLambda!394 order!199 f!539) (dynLambda!395 order!201 lambda!2965))))

(assert (=> b!11137 true))

(assert (=> b!11137 true))

(declare-fun b_next!3629 () Bool)

(assert (=> b!11138 (= b_next!3619 (or (and b!11137 (= lambda!2965 (x!6267 thiss!747))) b_next!3629))))

(declare-fun b_next!3631 () Bool)

(assert (=> b!11138 (= b_next!3621 (or (and b!11137 (= lambda!2965 (y!627 thiss!747))) b_next!3631))))

(declare-fun b_next!3633 () Bool)

(assert (=> b!11132 (= b_next!3623 (or (and b!11137 (= lambda!2965 (x!6268 thiss!757))) b_next!3633))))

(declare-fun b_next!3635 () Bool)

(assert (=> b!11132 (= b_next!3625 (or (and b!11137 (= lambda!2965 (y!628 thiss!757))) b_next!3635))))

(declare-fun e!6336 () Bool)

(assert (=> b!11132 (= e!6336 (and tp!2418 tp!2413))))

(declare-fun res!4035 () Bool)

(declare-fun e!6337 () Bool)

(assert (=> b!11133 (=> (not res!4035) (not e!6337))))

(assert (=> b!11133 (= res!4035 (= f!539 lambda!2961))))

(declare-fun b!11134 () Bool)

(declare-datatypes () ((List!268 (Nil!266) (Cons!265 (head!483 Balance!297) (tail!495 List!268)))))

(declare-fun thiss!762 () List!268)

(declare-fun isEmpty!196 (List!268) Bool)

(assert (=> b!11134 (= e!6337 (isEmpty!196 thiss!762))))

(declare-fun b!11135 () Bool)

(declare-fun res!4033 () Bool)

(assert (=> b!11135 (=> (not res!4033) (not e!6337))))

(declare-fun ys!54 () List!268)

(declare-datatypes () ((ProofOps!236 (ProofOps!237 (prop!251 Bool)))))

(declare-fun thiss!710 () ProofOps!236)

(declare-fun xs!292 () List!268)

(declare-fun dynLambda!398 (Int Balance!297 Balance!297) Balance!297)

(declare-fun foldRight1!98 (List!268 Int) Balance!297)

(declare-fun append!117 (List!268 List!268) List!268)

(assert (=> b!11135 (= res!4033 (= thiss!710 (ProofOps!237 (= (dynLambda!398 f!539 (foldRight1!98 xs!292 f!539) (foldRight1!98 ys!54 f!539)) (foldRight1!98 (append!117 xs!292 ys!54) f!539)))))))

(declare-fun res!4039 () Bool)

(assert (=> b!11136 (=> (not res!4039) (not e!6337))))

(assert (=> b!11136 (= res!4039 (= thiss!747 (EqEvidence!229 lambda!2962 lambda!2962 lambda!2963)))))

(declare-fun res!4038 () Bool)

(assert (=> b!11137 (=> (not res!4038) (not e!6337))))

(assert (=> b!11137 (= res!4038 (= thiss!757 (EqProof!109 lambda!2965 lambda!2965)))))

(declare-fun e!6335 () Bool)

(assert (=> b!11138 (= e!6335 (and tp!2419 tp!2415 tp!2417))))

(declare-fun b!11139 () Bool)

(declare-fun res!4036 () Bool)

(assert (=> b!11139 (=> (not res!4036) (not e!6337))))

(declare-fun a!347 () Balance!297)

(assert (=> b!11139 (= res!4036 (and (= a!347 (head!483 xs!292)) (= thiss!762 (tail!495 xs!292)) (= f!570 f!539)))))

(declare-fun res!4040 () Bool)

(assert (=> start!2234 (=> (not res!4040) (not e!6337))))

(assert (=> start!2234 (= res!4040 (not (isEmpty!196 xs!292)))))

(assert (=> start!2234 e!6337))

(declare-fun inv!372 (EqEvidence!228) Bool)

(assert (=> start!2234 (and (inv!372 thiss!747) e!6335)))

(assert (=> start!2234 tp!2414))

(assert (=> start!2234 true))

(declare-fun inv!373 (EqProof!108) Bool)

(assert (=> start!2234 (and (inv!373 thiss!757) e!6336)))

(assert (=> start!2234 tp!2416))

(declare-fun b!11140 () Bool)

(declare-fun res!4037 () Bool)

(assert (=> b!11140 (=> (not res!4037) (not e!6337))))

(assert (=> b!11140 (= res!4037 (not (isEmpty!196 ys!54)))))

(declare-fun b!11141 () Bool)

(declare-fun res!4034 () Bool)

(assert (=> b!11141 (=> (not res!4034) (not e!6337))))

(assert (=> b!11141 (= res!4034 (or (not (is-Cons!265 xs!292)) (not (is-Nil!266 (tail!495 xs!292)))))))

(assert (= (and start!2234 res!4040) b!11140))

(assert (= (and b!11140 res!4037) b!11133))

(assert (= (and b!11133 res!4035) b!11135))

(assert (= (and b!11135 res!4033) b!11141))

(assert (= (and b!11141 res!4034) b!11136))

(assert (= (and b!11136 res!4039) b!11137))

(assert (= (and b!11137 res!4038) b!11139))

(assert (= (and b!11139 res!4036) b!11134))

(assert (= start!2234 b!11138))

(assert (= start!2234 b!11132))

(declare-fun b_lambda!5725 () Bool)

(assert (=> (not b_lambda!5725) (not b!11135)))

(declare-fun t!3083 () Bool)

(declare-fun tb!2743 () Bool)

(assert (=> (and start!2234 (= f!539 f!539) t!3083) tb!2743))

(declare-fun result!2795 () Bool)

(assert (=> tb!2743 (= result!2795 true)))

(assert (=> b!11135 t!3083))

(declare-fun b_and!5197 () Bool)

(assert (= b_and!5189 (and (=> t!3083 result!2795) b_and!5197)))

(declare-fun tb!2745 () Bool)

(declare-fun t!3085 () Bool)

(assert (=> (and start!2234 (= f!570 f!539) t!3085) tb!2745))

(declare-fun result!2797 () Bool)

(assert (=> tb!2745 (= result!2797 true)))

(assert (=> b!11135 t!3085))

(declare-fun b_and!5199 () Bool)

(assert (= b_and!5191 (and (=> t!3085 result!2797) b_and!5199)))

(declare-fun m!14069 () Bool)

(assert (=> b!11134 m!14069))

(declare-fun m!14071 () Bool)

(assert (=> b!11135 m!14071))

(declare-fun m!14073 () Bool)

(assert (=> b!11135 m!14073))

(declare-fun m!14075 () Bool)

(assert (=> b!11135 m!14075))

(assert (=> b!11135 m!14073))

(assert (=> b!11135 m!14075))

(declare-fun m!14077 () Bool)

(assert (=> b!11135 m!14077))

(assert (=> b!11135 m!14071))

(declare-fun m!14079 () Bool)

(assert (=> b!11135 m!14079))

(declare-fun m!14081 () Bool)

(assert (=> start!2234 m!14081))

(declare-fun m!14083 () Bool)

(assert (=> start!2234 m!14083))

(declare-fun m!14085 () Bool)

(assert (=> start!2234 m!14085))

(declare-fun m!14087 () Bool)

(assert (=> b!11140 m!14087))

(push 1)

(assert (not b!11140))

(assert b_and!5199)

(assert b_and!5195)

(assert (not b!11135))

(assert (not b_next!3635))

(assert (not b_next!3629))

(assert (not b_next!3633))

(assert (not b_next!3631))

(assert (not b_next!3617))

(assert b_and!5185)

(assert b_and!5187)

(assert b_and!5183)

(assert (not b_next!3615))

(assert b_and!5197)

(assert (not b_lambda!5725))

(assert (not b!11134))

(assert b_and!5193)

(assert (not b_next!3627))

(assert (not start!2234))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5199)

(assert b_and!5195)

(assert (not b_next!3635))

(assert (not b_next!3629))

(assert (not b_next!3633))

(assert (not b_next!3631))

(assert (not b_next!3617))

(assert b_and!5185)

(assert b_and!5187)

(assert b_and!5183)

(assert (not b_next!3615))

(assert b_and!5197)

(assert b_and!5193)

(assert (not b_next!3627))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5727 () Bool)

(assert (= b_lambda!5725 (or (and b!11133 (= lambda!2961 f!539)) (and start!2234 b_free!1503) (and start!2234 b_free!1505 (= f!570 f!539)) b_lambda!5727)))

(declare-fun bs!2868 () Bool)

(declare-fun d!8651 () Bool)

(assert (= bs!2868 (and d!8651 b!11133)))

(declare-fun ++!3 (Balance!297 Balance!297) Balance!297)

(assert (=> bs!2868 (= (dynLambda!398 lambda!2961 (foldRight1!98 xs!292 f!539) (foldRight1!98 ys!54 f!539)) (++!3 (foldRight1!98 xs!292 f!539) (foldRight1!98 ys!54 f!539)))))

(assert (=> bs!2868 m!14073))

(assert (=> bs!2868 m!14075))

(declare-fun m!14089 () Bool)

(assert (=> bs!2868 m!14089))

(assert (=> (and b!11133 (= lambda!2961 f!539) b!11135) d!8651))

(push 1)

(assert (not b!11140))

(assert b_and!5199)

(assert b_and!5195)

(assert (not b!11135))

(assert (not b_next!3635))

(assert (not b_next!3629))

(assert (not b_next!3633))

(assert (not b_next!3631))

(assert (not b_next!3617))

(assert b_and!5185)

(assert (not bs!2868))

(assert b_and!5187)

(assert b_and!5183)

(assert (not b_next!3615))

(assert b_and!5197)

(assert (not b!11134))

(assert b_and!5193)

(assert (not b_lambda!5727))

(assert (not b_next!3627))

(assert (not start!2234))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5199)

(assert b_and!5195)

(assert (not b_next!3635))

(assert (not b_next!3629))

(assert (not b_next!3633))

(assert (not b_next!3631))

(assert (not b_next!3617))

(assert b_and!5185)

(assert b_and!5187)

(assert b_and!5183)

(assert (not b_next!3615))

(assert b_and!5197)

(assert b_and!5193)

(assert (not b_next!3627))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8653 () Bool)

(assert (=> d!8653 (= (isEmpty!196 xs!292) (is-Nil!266 xs!292))))

(assert (=> start!2234 d!8653))

(declare-fun d!8655 () Bool)

(declare-fun res!4043 () Bool)

(declare-fun e!6340 () Bool)

(assert (=> d!8655 (=> (not res!4043) (not e!6340))))

(declare-fun dynLambda!399 (Int) Balance!297)

(assert (=> d!8655 (= res!4043 (= (dynLambda!399 (x!6267 thiss!747)) (dynLambda!399 (y!627 thiss!747))))))

(assert (=> d!8655 (= (inv!372 thiss!747) e!6340)))

(declare-fun b!11156 () Bool)

(declare-fun dynLambda!400 (Int) Bool)

(assert (=> b!11156 (= e!6340 (dynLambda!400 (evidence!181 thiss!747)))))

(assert (= (and d!8655 res!4043) b!11156))

(declare-fun b_lambda!5729 () Bool)

(assert (=> (not b_lambda!5729) (not d!8655)))

(declare-fun t!3087 () Bool)

(declare-fun tb!2747 () Bool)

(assert (=> (and b!11138 (= (x!6267 thiss!747) (x!6267 thiss!747)) t!3087) tb!2747))

(declare-fun result!2799 () Bool)

(assert (=> tb!2747 (= result!2799 true)))

(assert (=> d!8655 t!3087))

(declare-fun b_and!5201 () Bool)

(assert (= b_and!5183 (and (=> t!3087 result!2799) b_and!5201)))

(declare-fun t!3089 () Bool)

(declare-fun tb!2749 () Bool)

(assert (=> (and b!11138 (= (y!627 thiss!747) (x!6267 thiss!747)) t!3089) tb!2749))

(declare-fun result!2801 () Bool)

(assert (=> tb!2749 (= result!2801 true)))

(assert (=> d!8655 t!3089))

(declare-fun b_and!5203 () Bool)

(assert (= b_and!5185 (and (=> t!3089 result!2801) b_and!5203)))

(declare-fun t!3091 () Bool)

(declare-fun tb!2751 () Bool)

(assert (=> (and b!11132 (= (x!6268 thiss!757) (x!6267 thiss!747)) t!3091) tb!2751))

(declare-fun result!2803 () Bool)

(assert (=> tb!2751 (= result!2803 true)))

(assert (=> d!8655 t!3091))

(declare-fun b_and!5205 () Bool)

(assert (= b_and!5193 (and (=> t!3091 result!2803) b_and!5205)))

(declare-fun t!3093 () Bool)

(declare-fun tb!2753 () Bool)

(assert (=> (and b!11132 (= (y!628 thiss!757) (x!6267 thiss!747)) t!3093) tb!2753))

(declare-fun result!2805 () Bool)

(assert (=> tb!2753 (= result!2805 true)))

(assert (=> d!8655 t!3093))

(declare-fun b_and!5207 () Bool)

(assert (= b_and!5195 (and (=> t!3093 result!2805) b_and!5207)))

(declare-fun b_lambda!5731 () Bool)

(assert (=> (not b_lambda!5731) (not d!8655)))

(declare-fun t!3095 () Bool)

(declare-fun tb!2755 () Bool)

(assert (=> (and b!11138 (= (x!6267 thiss!747) (y!627 thiss!747)) t!3095) tb!2755))

(declare-fun result!2807 () Bool)

(assert (=> tb!2755 (= result!2807 true)))

(assert (=> d!8655 t!3095))

(declare-fun b_and!5209 () Bool)

(assert (= b_and!5201 (and (=> t!3095 result!2807) b_and!5209)))

(declare-fun t!3097 () Bool)

(declare-fun tb!2757 () Bool)

(assert (=> (and b!11138 (= (y!627 thiss!747) (y!627 thiss!747)) t!3097) tb!2757))

(declare-fun result!2809 () Bool)

(assert (=> tb!2757 (= result!2809 true)))

(assert (=> d!8655 t!3097))

(declare-fun b_and!5211 () Bool)

(assert (= b_and!5203 (and (=> t!3097 result!2809) b_and!5211)))

(declare-fun t!3099 () Bool)

(declare-fun tb!2759 () Bool)

(assert (=> (and b!11132 (= (x!6268 thiss!757) (y!627 thiss!747)) t!3099) tb!2759))

(declare-fun result!2811 () Bool)

(assert (=> tb!2759 (= result!2811 true)))

(assert (=> d!8655 t!3099))

(declare-fun b_and!5213 () Bool)

(assert (= b_and!5205 (and (=> t!3099 result!2811) b_and!5213)))

(declare-fun tb!2761 () Bool)

(declare-fun t!3101 () Bool)

(assert (=> (and b!11132 (= (y!628 thiss!757) (y!627 thiss!747)) t!3101) tb!2761))

(declare-fun result!2813 () Bool)

(assert (=> tb!2761 (= result!2813 true)))

(assert (=> d!8655 t!3101))

(declare-fun b_and!5215 () Bool)

(assert (= b_and!5207 (and (=> t!3101 result!2813) b_and!5215)))

(declare-fun b_lambda!5733 () Bool)

(assert (=> (not b_lambda!5733) (not b!11156)))

(declare-fun t!3103 () Bool)

(declare-fun tb!2763 () Bool)

(assert (=> (and b!11138 (= (evidence!181 thiss!747) (evidence!181 thiss!747)) t!3103) tb!2763))

(declare-fun result!2815 () Bool)

(assert (=> tb!2763 (= result!2815 true)))

(assert (=> b!11156 t!3103))

(declare-fun b_and!5217 () Bool)

(assert (= b_and!5187 (and (=> t!3103 result!2815) b_and!5217)))

(declare-fun m!14091 () Bool)

(assert (=> d!8655 m!14091))

(declare-fun m!14093 () Bool)

(assert (=> d!8655 m!14093))

(declare-fun m!14095 () Bool)

(assert (=> b!11156 m!14095))

(assert (=> start!2234 d!8655))

(declare-fun d!8657 () Bool)

(assert (=> d!8657 (= (inv!373 thiss!757) (= (dynLambda!399 (x!6268 thiss!757)) (dynLambda!399 (y!628 thiss!757))))))

(declare-fun b_lambda!5735 () Bool)

(assert (=> (not b_lambda!5735) (not d!8657)))

(declare-fun tb!2765 () Bool)

(declare-fun t!3105 () Bool)

(assert (=> (and b!11138 (= (x!6267 thiss!747) (x!6268 thiss!757)) t!3105) tb!2765))

(declare-fun result!2817 () Bool)

(assert (=> tb!2765 (= result!2817 true)))

(assert (=> d!8657 t!3105))

(declare-fun b_and!5219 () Bool)

(assert (= b_and!5209 (and (=> t!3105 result!2817) b_and!5219)))

(declare-fun t!3107 () Bool)

(declare-fun tb!2767 () Bool)

(assert (=> (and b!11138 (= (y!627 thiss!747) (x!6268 thiss!757)) t!3107) tb!2767))

(declare-fun result!2819 () Bool)

(assert (=> tb!2767 (= result!2819 true)))

(assert (=> d!8657 t!3107))

(declare-fun b_and!5221 () Bool)

(assert (= b_and!5211 (and (=> t!3107 result!2819) b_and!5221)))

(declare-fun t!3109 () Bool)

(declare-fun tb!2769 () Bool)

(assert (=> (and b!11132 (= (x!6268 thiss!757) (x!6268 thiss!757)) t!3109) tb!2769))

(declare-fun result!2821 () Bool)

(assert (=> tb!2769 (= result!2821 true)))

(assert (=> d!8657 t!3109))

(declare-fun b_and!5223 () Bool)

(assert (= b_and!5213 (and (=> t!3109 result!2821) b_and!5223)))

(declare-fun t!3111 () Bool)

(declare-fun tb!2771 () Bool)

(assert (=> (and b!11132 (= (y!628 thiss!757) (x!6268 thiss!757)) t!3111) tb!2771))

(declare-fun result!2823 () Bool)

(assert (=> tb!2771 (= result!2823 true)))

(assert (=> d!8657 t!3111))

(declare-fun b_and!5225 () Bool)

(assert (= b_and!5215 (and (=> t!3111 result!2823) b_and!5225)))

(declare-fun b_lambda!5737 () Bool)

(assert (=> (not b_lambda!5737) (not d!8657)))

(declare-fun tb!2773 () Bool)

(declare-fun t!3113 () Bool)

(assert (=> (and b!11138 (= (x!6267 thiss!747) (y!628 thiss!757)) t!3113) tb!2773))

(declare-fun result!2825 () Bool)

(assert (=> tb!2773 (= result!2825 true)))

(assert (=> d!8657 t!3113))

(declare-fun b_and!5227 () Bool)

(assert (= b_and!5219 (and (=> t!3113 result!2825) b_and!5227)))

(declare-fun t!3115 () Bool)

(declare-fun tb!2775 () Bool)

(assert (=> (and b!11138 (= (y!627 thiss!747) (y!628 thiss!757)) t!3115) tb!2775))

(declare-fun result!2827 () Bool)

(assert (=> tb!2775 (= result!2827 true)))

(assert (=> d!8657 t!3115))

(declare-fun b_and!5229 () Bool)

(assert (= b_and!5221 (and (=> t!3115 result!2827) b_and!5229)))

(declare-fun t!3117 () Bool)

(declare-fun tb!2777 () Bool)

(assert (=> (and b!11132 (= (x!6268 thiss!757) (y!628 thiss!757)) t!3117) tb!2777))

(declare-fun result!2829 () Bool)

(assert (=> tb!2777 (= result!2829 true)))

(assert (=> d!8657 t!3117))

(declare-fun b_and!5231 () Bool)

(assert (= b_and!5223 (and (=> t!3117 result!2829) b_and!5231)))

(declare-fun t!3119 () Bool)

(declare-fun tb!2779 () Bool)

(assert (=> (and b!11132 (= (y!628 thiss!757) (y!628 thiss!757)) t!3119) tb!2779))

(declare-fun result!2831 () Bool)

(assert (=> tb!2779 (= result!2831 true)))

(assert (=> d!8657 t!3119))

(declare-fun b_and!5233 () Bool)

(assert (= b_and!5225 (and (=> t!3119 result!2831) b_and!5233)))

(declare-fun m!14097 () Bool)

(assert (=> d!8657 m!14097))

(declare-fun m!14099 () Bool)

(assert (=> d!8657 m!14099))

(assert (=> start!2234 d!8657))

(declare-fun d!8659 () Bool)

(declare-fun lt!1754 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!8659 (= lt!1754 (min!4 (extraOpen!189 (foldRight1!98 xs!292 f!539)) (extraClose!189 (foldRight1!98 ys!54 f!539))))))

(assert (=> d!8659 (= (++!3 (foldRight1!98 xs!292 f!539) (foldRight1!98 ys!54 f!539)) (Balance!298 (- (+ (extraOpen!189 (foldRight1!98 xs!292 f!539)) (extraOpen!189 (foldRight1!98 ys!54 f!539))) lt!1754) (- (+ (extraClose!189 (foldRight1!98 xs!292 f!539)) (extraClose!189 (foldRight1!98 ys!54 f!539))) lt!1754)))))

(declare-fun bs!2869 () Bool)

(assert (= bs!2869 d!8659))

(declare-fun m!14101 () Bool)

(assert (=> bs!2869 m!14101))

(assert (=> bs!2868 d!8659))

(declare-fun d!8661 () Bool)

(declare-fun c!3349 () Bool)

(assert (=> d!8661 (= c!3349 (and (is-Cons!265 xs!292) (is-Nil!266 (tail!495 xs!292))))))

(declare-fun e!6343 () Balance!297)

(assert (=> d!8661 (= (foldRight1!98 xs!292 f!539) e!6343)))

(declare-fun b!11161 () Bool)

(assert (=> b!11161 (= e!6343 (head!483 xs!292))))

(declare-fun b!11162 () Bool)

(assert (=> b!11162 (= e!6343 (dynLambda!398 f!539 (head!483 xs!292) (foldRight1!98 (tail!495 xs!292) f!539)))))

(assert (= (and d!8661 c!3349) b!11161))

(assert (= (and d!8661 (not c!3349)) b!11162))

(declare-fun b_lambda!5739 () Bool)

(assert (=> (not b_lambda!5739) (not b!11162)))

(declare-fun t!3121 () Bool)

(declare-fun tb!2781 () Bool)

(assert (=> (and start!2234 (= f!539 f!539) t!3121) tb!2781))

(declare-fun result!2833 () Bool)

(assert (=> tb!2781 (= result!2833 true)))

(assert (=> b!11162 t!3121))

(declare-fun b_and!5235 () Bool)

(assert (= b_and!5197 (and (=> t!3121 result!2833) b_and!5235)))

(declare-fun t!3123 () Bool)

(declare-fun tb!2783 () Bool)

(assert (=> (and start!2234 (= f!570 f!539) t!3123) tb!2783))

(declare-fun result!2835 () Bool)

(assert (=> tb!2783 (= result!2835 true)))

(assert (=> b!11162 t!3123))

(declare-fun b_and!5237 () Bool)

(assert (= b_and!5199 (and (=> t!3123 result!2835) b_and!5237)))

(declare-fun m!14103 () Bool)

(assert (=> b!11162 m!14103))

(assert (=> b!11162 m!14103))

(declare-fun m!14105 () Bool)

(assert (=> b!11162 m!14105))

(assert (=> b!11135 d!8661))

(declare-fun d!8663 () Bool)

(declare-fun c!3350 () Bool)

(assert (=> d!8663 (= c!3350 (and (is-Cons!265 ys!54) (is-Nil!266 (tail!495 ys!54))))))

(declare-fun e!6344 () Balance!297)

(assert (=> d!8663 (= (foldRight1!98 ys!54 f!539) e!6344)))

(declare-fun b!11163 () Bool)

(assert (=> b!11163 (= e!6344 (head!483 ys!54))))

(declare-fun b!11164 () Bool)

(assert (=> b!11164 (= e!6344 (dynLambda!398 f!539 (head!483 ys!54) (foldRight1!98 (tail!495 ys!54) f!539)))))

(assert (= (and d!8663 c!3350) b!11163))

(assert (= (and d!8663 (not c!3350)) b!11164))

(declare-fun b_lambda!5741 () Bool)

(assert (=> (not b_lambda!5741) (not b!11164)))

(declare-fun t!3125 () Bool)

(declare-fun tb!2785 () Bool)

(assert (=> (and start!2234 (= f!539 f!539) t!3125) tb!2785))

(declare-fun result!2837 () Bool)

(assert (=> tb!2785 (= result!2837 true)))

(assert (=> b!11164 t!3125))

(declare-fun b_and!5239 () Bool)

(assert (= b_and!5235 (and (=> t!3125 result!2837) b_and!5239)))

(declare-fun tb!2787 () Bool)

(declare-fun t!3127 () Bool)

(assert (=> (and start!2234 (= f!570 f!539) t!3127) tb!2787))

(declare-fun result!2839 () Bool)

(assert (=> tb!2787 (= result!2839 true)))

(assert (=> b!11164 t!3127))

(declare-fun b_and!5241 () Bool)

(assert (= b_and!5237 (and (=> t!3127 result!2839) b_and!5241)))

(declare-fun m!14107 () Bool)

(assert (=> b!11164 m!14107))

(assert (=> b!11164 m!14107))

(declare-fun m!14109 () Bool)

(assert (=> b!11164 m!14109))

(assert (=> b!11135 d!8663))

(declare-fun d!8665 () Bool)

(declare-fun c!3351 () Bool)

(assert (=> d!8665 (= c!3351 (and (is-Cons!265 (append!117 xs!292 ys!54)) (is-Nil!266 (tail!495 (append!117 xs!292 ys!54)))))))

(declare-fun e!6345 () Balance!297)

(assert (=> d!8665 (= (foldRight1!98 (append!117 xs!292 ys!54) f!539) e!6345)))

(declare-fun b!11165 () Bool)

(assert (=> b!11165 (= e!6345 (head!483 (append!117 xs!292 ys!54)))))

(declare-fun b!11166 () Bool)

(assert (=> b!11166 (= e!6345 (dynLambda!398 f!539 (head!483 (append!117 xs!292 ys!54)) (foldRight1!98 (tail!495 (append!117 xs!292 ys!54)) f!539)))))

(assert (= (and d!8665 c!3351) b!11165))

(assert (= (and d!8665 (not c!3351)) b!11166))

(declare-fun b_lambda!5743 () Bool)

(assert (=> (not b_lambda!5743) (not b!11166)))

(declare-fun t!3129 () Bool)

(declare-fun tb!2789 () Bool)

(assert (=> (and start!2234 (= f!539 f!539) t!3129) tb!2789))

(declare-fun result!2841 () Bool)

(assert (=> tb!2789 (= result!2841 true)))

(assert (=> b!11166 t!3129))

(declare-fun b_and!5243 () Bool)

(assert (= b_and!5239 (and (=> t!3129 result!2841) b_and!5243)))

(declare-fun tb!2791 () Bool)

(declare-fun t!3131 () Bool)

(assert (=> (and start!2234 (= f!570 f!539) t!3131) tb!2791))

(declare-fun result!2843 () Bool)

(assert (=> tb!2791 (= result!2843 true)))

(assert (=> b!11166 t!3131))

(declare-fun b_and!5245 () Bool)

(assert (= b_and!5241 (and (=> t!3131 result!2843) b_and!5245)))

(declare-fun m!14111 () Bool)

(assert (=> b!11166 m!14111))

(assert (=> b!11166 m!14111))

(declare-fun m!14113 () Bool)

(assert (=> b!11166 m!14113))

(assert (=> b!11135 d!8665))

(declare-fun d!8667 () Bool)

(declare-fun c!3354 () Bool)

(assert (=> d!8667 (= c!3354 (is-Nil!266 xs!292))))

(declare-fun e!6348 () List!268)

(assert (=> d!8667 (= (append!117 xs!292 ys!54) e!6348)))

(declare-fun b!11171 () Bool)

(assert (=> b!11171 (= e!6348 ys!54)))

(declare-fun b!11172 () Bool)

(assert (=> b!11172 (= e!6348 (Cons!265 (head!483 xs!292) (append!117 (tail!495 xs!292) ys!54)))))

(assert (= (and d!8667 c!3354) b!11171))

(assert (= (and d!8667 (not c!3354)) b!11172))

(declare-fun m!14115 () Bool)

(assert (=> b!11172 m!14115))

(assert (=> b!11135 d!8667))

(declare-fun d!8669 () Bool)

(assert (=> d!8669 (= (isEmpty!196 thiss!762) (is-Nil!266 thiss!762))))

(assert (=> b!11134 d!8669))

(declare-fun d!8671 () Bool)

(assert (=> d!8671 (= (isEmpty!196 ys!54) (is-Nil!266 ys!54))))

(assert (=> b!11140 d!8671))

(declare-fun b_lambda!5745 () Bool)

(assert (= b_lambda!5733 (or (and b!11136 (= lambda!2963 (evidence!181 thiss!747))) (and b!11138 b_free!1501) b_lambda!5745)))

(declare-fun bs!2870 () Bool)

(declare-fun d!8673 () Bool)

(assert (= bs!2870 (and d!8673 b!11136)))

(declare-fun dynLambda!401 (Int Balance!297) Balance!297)

(assert (=> bs!2870 (= (dynLambda!400 lambda!2963) (= (foldRight1!98 xs!292 f!539) (dynLambda!401 lambda!2964 (foldRight1!98 (tail!495 xs!292) f!539))))))

(declare-fun b_lambda!5761 () Bool)

(assert (=> (not b_lambda!5761) (not bs!2870)))

(assert (=> bs!2870 m!14073))

(assert (=> bs!2870 m!14103))

(assert (=> bs!2870 m!14103))

(declare-fun m!14117 () Bool)

(assert (=> bs!2870 m!14117))

(assert (=> (and b!11136 (= lambda!2963 (evidence!181 thiss!747)) b!11156) d!8673))

(declare-fun b_lambda!5747 () Bool)

(assert (= b_lambda!5743 (or (and b!11133 (= lambda!2961 f!539)) (and start!2234 b_free!1503) (and start!2234 b_free!1505 (= f!570 f!539)) b_lambda!5747)))

(declare-fun bs!2871 () Bool)

(declare-fun d!8675 () Bool)

(assert (= bs!2871 (and d!8675 b!11133)))

(assert (=> bs!2871 (= (dynLambda!398 lambda!2961 (head!483 (append!117 xs!292 ys!54)) (foldRight1!98 (tail!495 (append!117 xs!292 ys!54)) f!539)) (++!3 (head!483 (append!117 xs!292 ys!54)) (foldRight1!98 (tail!495 (append!117 xs!292 ys!54)) f!539)))))

(assert (=> bs!2871 m!14111))

(declare-fun m!14119 () Bool)

(assert (=> bs!2871 m!14119))

(assert (=> (and b!11133 (= lambda!2961 f!539) b!11166) d!8675))

(declare-fun b_lambda!5749 () Bool)

(assert (= b_lambda!5739 (or (and b!11133 (= lambda!2961 f!539)) (and start!2234 b_free!1503) (and start!2234 b_free!1505 (= f!570 f!539)) b_lambda!5749)))

(declare-fun bs!2872 () Bool)

(declare-fun d!8677 () Bool)

(assert (= bs!2872 (and d!8677 b!11133)))

(assert (=> bs!2872 (= (dynLambda!398 lambda!2961 (head!483 xs!292) (foldRight1!98 (tail!495 xs!292) f!539)) (++!3 (head!483 xs!292) (foldRight1!98 (tail!495 xs!292) f!539)))))

(assert (=> bs!2872 m!14103))

(declare-fun m!14121 () Bool)

(assert (=> bs!2872 m!14121))

(assert (=> (and b!11133 (= lambda!2961 f!539) b!11162) d!8677))

(declare-fun b_lambda!5751 () Bool)

(assert (= b_lambda!5735 (or (and b!11136 (= lambda!2962 (x!6268 thiss!757))) (and b!11132 b_free!1507) (and b!11138 b_free!1499 (= (y!627 thiss!747) (x!6268 thiss!757))) (and b!11137 (= lambda!2965 (x!6268 thiss!757))) (and b!11138 b_free!1497 (= (x!6267 thiss!747) (x!6268 thiss!757))) (and b!11132 b_free!1509 (= (y!628 thiss!757) (x!6268 thiss!757))) b_lambda!5751)))

(declare-fun bs!2873 () Bool)

(declare-fun d!8679 () Bool)

(assert (= bs!2873 (and d!8679 b!11137)))

(assert (=> bs!2873 (= (dynLambda!399 lambda!2965) (dynLambda!398 f!539 (dynLambda!401 lambda!2964 (foldRight1!98 (tail!495 xs!292) f!539)) (foldRight1!98 ys!54 f!539)))))

(declare-fun b_lambda!5763 () Bool)

(assert (=> (not b_lambda!5763) (not bs!2873)))

(declare-fun t!3133 () Bool)

(declare-fun tb!2793 () Bool)

(assert (=> (and start!2234 (= f!539 f!539) t!3133) tb!2793))

(declare-fun result!2845 () Bool)

(assert (=> tb!2793 (= result!2845 true)))

(assert (=> bs!2873 t!3133))

(declare-fun b_and!5247 () Bool)

(assert (= b_and!5243 (and (=> t!3133 result!2845) b_and!5247)))

(declare-fun tb!2795 () Bool)

(declare-fun t!3135 () Bool)

(assert (=> (and start!2234 (= f!570 f!539) t!3135) tb!2795))

(declare-fun result!2847 () Bool)

(assert (=> tb!2795 (= result!2847 true)))

(assert (=> bs!2873 t!3135))

(declare-fun b_and!5249 () Bool)

(assert (= b_and!5245 (and (=> t!3135 result!2847) b_and!5249)))

(declare-fun b_lambda!5765 () Bool)

(assert (=> (not b_lambda!5765) (not bs!2873)))

(assert (=> bs!2873 m!14103))

(assert (=> bs!2873 m!14117))

(assert (=> bs!2873 m!14075))

(declare-fun m!14123 () Bool)

(assert (=> bs!2873 m!14123))

(assert (=> bs!2873 m!14103))

(assert (=> bs!2873 m!14117))

(assert (=> bs!2873 m!14075))

(assert (=> (and b!11137 (= lambda!2965 (x!6268 thiss!757)) d!8657) d!8679))

(declare-fun bs!2874 () Bool)

(declare-fun d!8681 () Bool)

(assert (= bs!2874 (and d!8681 b!11136)))

(assert (=> bs!2874 (= (dynLambda!399 lambda!2962) (dynLambda!398 f!539 (foldRight1!98 xs!292 f!539) (foldRight1!98 ys!54 f!539)))))

(declare-fun b_lambda!5767 () Bool)

(assert (=> (not b_lambda!5767) (not bs!2874)))

(assert (=> bs!2874 t!3083))

(declare-fun b_and!5251 () Bool)

(assert (= b_and!5247 (and (=> t!3083 result!2795) b_and!5251)))

(assert (=> bs!2874 t!3085))

(declare-fun b_and!5253 () Bool)

(assert (= b_and!5249 (and (=> t!3085 result!2797) b_and!5253)))

(assert (=> bs!2874 m!14073))

(assert (=> bs!2874 m!14075))

(assert (=> bs!2874 m!14073))

(assert (=> bs!2874 m!14075))

(assert (=> bs!2874 m!14077))

(assert (=> (and b!11136 (= lambda!2962 (x!6268 thiss!757)) d!8657) d!8681))

(declare-fun b_lambda!5753 () Bool)

(assert (= b_lambda!5729 (or (and b!11136 (= lambda!2962 (x!6267 thiss!747))) (and b!11132 b_free!1507 (= (x!6268 thiss!757) (x!6267 thiss!747))) (and b!11132 b_free!1509 (= (y!628 thiss!757) (x!6267 thiss!747))) (and b!11137 (= lambda!2965 (x!6267 thiss!747))) (and b!11138 b_free!1497) (and b!11138 b_free!1499 (= (y!627 thiss!747) (x!6267 thiss!747))) b_lambda!5753)))

(declare-fun bs!2875 () Bool)

(declare-fun d!8683 () Bool)

(assert (= bs!2875 (and d!8683 b!11137)))

(assert (=> bs!2875 (= (dynLambda!399 lambda!2965) (dynLambda!398 f!539 (dynLambda!401 lambda!2964 (foldRight1!98 (tail!495 xs!292) f!539)) (foldRight1!98 ys!54 f!539)))))

(declare-fun b_lambda!5769 () Bool)

(assert (=> (not b_lambda!5769) (not bs!2875)))

(assert (=> bs!2875 t!3133))

(declare-fun b_and!5255 () Bool)

(assert (= b_and!5251 (and (=> t!3133 result!2845) b_and!5255)))

(assert (=> bs!2875 t!3135))

(declare-fun b_and!5257 () Bool)

(assert (= b_and!5253 (and (=> t!3135 result!2847) b_and!5257)))

(declare-fun b_lambda!5771 () Bool)

(assert (=> (not b_lambda!5771) (not bs!2875)))

(assert (=> bs!2875 m!14103))

(assert (=> bs!2875 m!14117))

(assert (=> bs!2875 m!14075))

(assert (=> bs!2875 m!14123))

(assert (=> bs!2875 m!14103))

(assert (=> bs!2875 m!14117))

(assert (=> bs!2875 m!14075))

(assert (=> (and b!11137 (= lambda!2965 (x!6267 thiss!747)) d!8655) d!8683))

(declare-fun bs!2876 () Bool)

(declare-fun d!8685 () Bool)

(assert (= bs!2876 (and d!8685 b!11136)))

(assert (=> bs!2876 (= (dynLambda!399 lambda!2962) (dynLambda!398 f!539 (foldRight1!98 xs!292 f!539) (foldRight1!98 ys!54 f!539)))))

(declare-fun b_lambda!5773 () Bool)

(assert (=> (not b_lambda!5773) (not bs!2876)))

(assert (=> bs!2876 t!3083))

(declare-fun b_and!5259 () Bool)

(assert (= b_and!5255 (and (=> t!3083 result!2795) b_and!5259)))

(assert (=> bs!2876 t!3085))

(declare-fun b_and!5261 () Bool)

(assert (= b_and!5257 (and (=> t!3085 result!2797) b_and!5261)))

(assert (=> bs!2876 m!14073))

(assert (=> bs!2876 m!14075))

(assert (=> bs!2876 m!14073))

(assert (=> bs!2876 m!14075))

(assert (=> bs!2876 m!14077))

(assert (=> (and b!11136 (= lambda!2962 (x!6267 thiss!747)) d!8655) d!8685))

(declare-fun b_lambda!5755 () Bool)

(assert (= b_lambda!5741 (or (and b!11133 (= lambda!2961 f!539)) (and start!2234 b_free!1503) (and start!2234 b_free!1505 (= f!570 f!539)) b_lambda!5755)))

(declare-fun bs!2877 () Bool)

(declare-fun d!8687 () Bool)

(assert (= bs!2877 (and d!8687 b!11133)))

(assert (=> bs!2877 (= (dynLambda!398 lambda!2961 (head!483 ys!54) (foldRight1!98 (tail!495 ys!54) f!539)) (++!3 (head!483 ys!54) (foldRight1!98 (tail!495 ys!54) f!539)))))

(assert (=> bs!2877 m!14107))

(declare-fun m!14125 () Bool)

(assert (=> bs!2877 m!14125))

(assert (=> (and b!11133 (= lambda!2961 f!539) b!11164) d!8687))

(declare-fun b_lambda!5757 () Bool)

(assert (= b_lambda!5737 (or (and b!11138 b_free!1497 (= (x!6267 thiss!747) (y!628 thiss!757))) (and b!11136 (= lambda!2962 (y!628 thiss!757))) (and b!11132 b_free!1509) (and b!11138 b_free!1499 (= (y!627 thiss!747) (y!628 thiss!757))) (and b!11132 b_free!1507 (= (x!6268 thiss!757) (y!628 thiss!757))) (and b!11137 (= lambda!2965 (y!628 thiss!757))) b_lambda!5757)))

(declare-fun bs!2878 () Bool)

(declare-fun d!8689 () Bool)

(assert (= bs!2878 (and d!8689 b!11137)))

(assert (=> bs!2878 (= (dynLambda!399 lambda!2965) (dynLambda!398 f!539 (dynLambda!401 lambda!2964 (foldRight1!98 (tail!495 xs!292) f!539)) (foldRight1!98 ys!54 f!539)))))

(declare-fun b_lambda!5775 () Bool)

(assert (=> (not b_lambda!5775) (not bs!2878)))

(assert (=> bs!2878 t!3133))

(declare-fun b_and!5263 () Bool)

(assert (= b_and!5259 (and (=> t!3133 result!2845) b_and!5263)))

(assert (=> bs!2878 t!3135))

(declare-fun b_and!5265 () Bool)

(assert (= b_and!5261 (and (=> t!3135 result!2847) b_and!5265)))

(declare-fun b_lambda!5777 () Bool)

(assert (=> (not b_lambda!5777) (not bs!2878)))

(assert (=> bs!2878 m!14103))

(assert (=> bs!2878 m!14117))

(assert (=> bs!2878 m!14075))

(assert (=> bs!2878 m!14123))

(assert (=> bs!2878 m!14103))

(assert (=> bs!2878 m!14117))

(assert (=> bs!2878 m!14075))

(assert (=> (and b!11137 (= lambda!2965 (y!628 thiss!757)) d!8657) d!8689))

(declare-fun bs!2879 () Bool)

(declare-fun d!8691 () Bool)

(assert (= bs!2879 (and d!8691 b!11136)))

(assert (=> bs!2879 (= (dynLambda!399 lambda!2962) (dynLambda!398 f!539 (foldRight1!98 xs!292 f!539) (foldRight1!98 ys!54 f!539)))))

(declare-fun b_lambda!5779 () Bool)

(assert (=> (not b_lambda!5779) (not bs!2879)))

(assert (=> bs!2879 t!3083))

(declare-fun b_and!5267 () Bool)

(assert (= b_and!5263 (and (=> t!3083 result!2795) b_and!5267)))

(assert (=> bs!2879 t!3085))

(declare-fun b_and!5269 () Bool)

(assert (= b_and!5265 (and (=> t!3085 result!2797) b_and!5269)))

(assert (=> bs!2879 m!14073))

(assert (=> bs!2879 m!14075))

(assert (=> bs!2879 m!14073))

(assert (=> bs!2879 m!14075))

(assert (=> bs!2879 m!14077))

(assert (=> (and b!11136 (= lambda!2962 (y!628 thiss!757)) d!8657) d!8691))

(declare-fun b_lambda!5759 () Bool)

(assert (= b_lambda!5731 (or (and b!11138 b_free!1497 (= (x!6267 thiss!747) (y!627 thiss!747))) (and b!11132 b_free!1507 (= (x!6268 thiss!757) (y!627 thiss!747))) (and b!11137 (= lambda!2965 (y!627 thiss!747))) (and b!11132 b_free!1509 (= (y!628 thiss!757) (y!627 thiss!747))) (and b!11138 b_free!1499) (and b!11136 (= lambda!2962 (y!627 thiss!747))) b_lambda!5759)))

(declare-fun bs!2880 () Bool)

(declare-fun d!8693 () Bool)

(assert (= bs!2880 (and d!8693 b!11136)))

(assert (=> bs!2880 (= (dynLambda!399 lambda!2962) (dynLambda!398 f!539 (foldRight1!98 xs!292 f!539) (foldRight1!98 ys!54 f!539)))))

(declare-fun b_lambda!5781 () Bool)

(assert (=> (not b_lambda!5781) (not bs!2880)))

(assert (=> bs!2880 t!3083))

(declare-fun b_and!5271 () Bool)

(assert (= b_and!5267 (and (=> t!3083 result!2795) b_and!5271)))

(assert (=> bs!2880 t!3085))

(declare-fun b_and!5273 () Bool)

(assert (= b_and!5269 (and (=> t!3085 result!2797) b_and!5273)))

(assert (=> bs!2880 m!14073))

(assert (=> bs!2880 m!14075))

(assert (=> bs!2880 m!14073))

(assert (=> bs!2880 m!14075))

(assert (=> bs!2880 m!14077))

(assert (=> (and b!11136 (= lambda!2962 (y!627 thiss!747)) d!8655) d!8693))

(declare-fun bs!2881 () Bool)

(declare-fun d!8695 () Bool)

(assert (= bs!2881 (and d!8695 b!11137)))

(assert (=> bs!2881 (= (dynLambda!399 lambda!2965) (dynLambda!398 f!539 (dynLambda!401 lambda!2964 (foldRight1!98 (tail!495 xs!292) f!539)) (foldRight1!98 ys!54 f!539)))))

(declare-fun b_lambda!5783 () Bool)

(assert (=> (not b_lambda!5783) (not bs!2881)))

(assert (=> bs!2881 t!3133))

(declare-fun b_and!5275 () Bool)

(assert (= b_and!5271 (and (=> t!3133 result!2845) b_and!5275)))

(assert (=> bs!2881 t!3135))

(declare-fun b_and!5277 () Bool)

(assert (= b_and!5273 (and (=> t!3135 result!2847) b_and!5277)))

(declare-fun b_lambda!5785 () Bool)

(assert (=> (not b_lambda!5785) (not bs!2881)))

(assert (=> bs!2881 m!14103))

(assert (=> bs!2881 m!14117))

(assert (=> bs!2881 m!14075))

(assert (=> bs!2881 m!14123))

(assert (=> bs!2881 m!14103))

(assert (=> bs!2881 m!14117))

(assert (=> bs!2881 m!14075))

(assert (=> (and b!11137 (= lambda!2965 (y!627 thiss!747)) d!8655) d!8695))

(push 1)

(assert (not b_lambda!5769))

(assert (not b_lambda!5751))

(assert (not b!11172))

(assert b_and!5231)

(assert (not bs!2881))

(assert (not b!11164))

(assert b_and!5275)

(assert (not bs!2877))

(assert (not b_lambda!5785))

(assert (not b!11162))

(assert (not b_lambda!5745))

(assert (not b_next!3635))

(assert b_and!5233)

(assert (not b_next!3629))

(assert (not b_next!3633))

(assert b_and!5229)

(assert (not b_lambda!5761))

(assert (not b_lambda!5757))

(assert (not b_lambda!5765))

(assert (not bs!2873))

(assert (not bs!2878))

(assert (not bs!2879))

(assert (not bs!2871))

(assert (not b_lambda!5759))

(assert (not bs!2876))

(assert (not b_next!3631))

(assert b_and!5277)

(assert (not b_next!3617))

(assert (not b_lambda!5749))

(assert (not b_lambda!5763))

(assert (not bs!2870))

(assert (not b!11166))

(assert (not b_lambda!5783))

(assert (not b_lambda!5775))

(assert b_and!5227)

(assert (not b_lambda!5781))

(assert (not b_lambda!5767))

(assert (not b_lambda!5747))

(assert (not b_next!3615))

(assert (not bs!2880))

(assert (not bs!2874))

(assert (not b_lambda!5777))

(assert (not bs!2872))

(assert b_and!5217)

(assert (not b_lambda!5727))

(assert (not bs!2875))

(assert (not b_lambda!5779))

(assert (not b_lambda!5771))

(assert (not b_lambda!5773))

(assert (not b_next!3627))

(assert (not d!8659))

(assert (not b_lambda!5753))

(assert (not b_lambda!5755))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5231)

(assert b_and!5275)

(assert (not b_next!3635))

(assert b_and!5233)

(assert (not b_next!3629))

(assert (not b_next!3633))

(assert b_and!5229)

(assert (not b_next!3631))

(assert b_and!5277)

(assert (not b_next!3617))

(assert b_and!5227)

(assert (not b_next!3615))

(assert b_and!5217)

(assert (not b_next!3627))

(check-sat)

(pop 1)


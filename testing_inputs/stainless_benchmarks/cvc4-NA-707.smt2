; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5044 () Bool)

(assert start!5044)

(declare-fun b!39031 () Bool)

(declare-fun b_free!3051 () Bool)

(declare-fun b_next!7617 () Bool)

(assert (=> b!39031 (= b_free!3051 (not b_next!7617))))

(declare-fun tp!8656 () Bool)

(declare-fun b_and!10631 () Bool)

(assert (=> b!39031 (= tp!8656 b_and!10631)))

(declare-fun b_free!3053 () Bool)

(declare-fun b_next!7619 () Bool)

(assert (=> b!39031 (= b_free!3053 (not b_next!7619))))

(declare-fun tp!8648 () Bool)

(declare-fun b_and!10633 () Bool)

(assert (=> b!39031 (= tp!8648 b_and!10633)))

(declare-fun b_free!3055 () Bool)

(declare-fun b_next!7621 () Bool)

(assert (=> b!39031 (= b_free!3055 (not b_next!7621))))

(declare-fun tp!8649 () Bool)

(declare-fun b_and!10635 () Bool)

(assert (=> b!39031 (= tp!8649 b_and!10635)))

(declare-fun b!39026 () Bool)

(declare-fun b_free!3057 () Bool)

(declare-fun b_next!7623 () Bool)

(assert (=> b!39026 (= b_free!3057 (not b_next!7623))))

(declare-fun tp!8650 () Bool)

(declare-fun b_and!10637 () Bool)

(assert (=> b!39026 (= tp!8650 b_and!10637)))

(declare-fun b_free!3059 () Bool)

(declare-fun b_next!7625 () Bool)

(assert (=> b!39026 (= b_free!3059 (not b_next!7625))))

(declare-fun tp!8655 () Bool)

(declare-fun b_and!10639 () Bool)

(assert (=> b!39026 (= tp!8655 b_and!10639)))

(declare-fun b_free!3061 () Bool)

(declare-fun b_next!7627 () Bool)

(assert (=> b!39026 (= b_free!3061 (not b_next!7627))))

(declare-fun tp!8653 () Bool)

(declare-fun b_and!10641 () Bool)

(assert (=> b!39026 (= tp!8653 b_and!10641)))

(declare-fun b!39030 () Bool)

(declare-fun b_free!3063 () Bool)

(declare-fun b_next!7629 () Bool)

(assert (=> b!39030 (= b_free!3063 (not b_next!7629))))

(declare-fun tp!8654 () Bool)

(declare-fun b_and!10643 () Bool)

(assert (=> b!39030 (= tp!8654 b_and!10643)))

(declare-fun b_free!3065 () Bool)

(declare-fun b_next!7631 () Bool)

(assert (=> b!39030 (= b_free!3065 (not b_next!7631))))

(declare-fun tp!8651 () Bool)

(declare-fun b_and!10645 () Bool)

(assert (=> b!39030 (= tp!8651 b_and!10645)))

(declare-fun b_free!3067 () Bool)

(declare-fun b_next!7633 () Bool)

(assert (=> b!39030 (= b_free!3067 (not b_next!7633))))

(declare-fun tp!8652 () Bool)

(declare-fun b_and!10647 () Bool)

(assert (=> b!39030 (= tp!8652 b_and!10647)))

(declare-fun b!39032 () Bool)

(assert (=> b!39032 true))

(assert (=> b!39032 true))

(declare-datatypes () ((Nat!68 (Zero!52) (Succ!49 (n!1143 Nat!68)))))

(declare-datatypes () ((tuple2!214 (tuple2!215 (_1!133 Nat!68) (_2!133 Nat!68)))))

(declare-datatypes () ((RAEqEvidence!122 (RAEqEvidence!123 (x!13531 Int) (y!1400 Int) (evidence!513 Int)))))

(declare-fun thiss!6212 () RAEqEvidence!122)

(declare-fun b_next!7635 () Bool)

(declare-fun lambda!4685 () Int)

(assert (=> b!39026 (= b_next!7625 (or (and b!39032 (= lambda!4685 (y!1400 thiss!6212))) b_next!7635))))

(declare-fun b_next!7637 () Bool)

(declare-fun x$104!2 () RAEqEvidence!122)

(assert (=> b!39030 (= b_next!7629 (or (and b!39032 (= lambda!4685 (x!13531 x$104!2))) b_next!7637))))

(declare-fun b_next!7639 () Bool)

(assert (=> b!39026 (= b_next!7623 (or (and b!39032 (= lambda!4685 (x!13531 thiss!6212))) b_next!7639))))

(declare-fun b_next!7641 () Bool)

(assert (=> b!39030 (= b_next!7631 (or (and b!39032 (= lambda!4685 (y!1400 x$104!2))) b_next!7641))))

(declare-fun prev!740 () RAEqEvidence!122)

(declare-fun b_next!7643 () Bool)

(assert (=> b!39031 (= b_next!7619 (or (and b!39032 (= lambda!4685 (y!1400 prev!740))) b_next!7643))))

(declare-fun b_next!7645 () Bool)

(assert (=> b!39031 (= b_next!7617 (or (and b!39032 (= lambda!4685 (x!13531 prev!740))) b_next!7645))))

(declare-fun m!40209 () Bool)

(assert (=> b!39032 m!40209))

(declare-fun lambda!4686 () Int)

(declare-fun dynLambda!703 (Int) Bool)

(assert (=> (and b!39031 b!39032 (= (dynLambda!703 lambda!4686) (dynLambda!703 (evidence!513 prev!740)))) (= lambda!4686 (evidence!513 prev!740))))

(assert (=> (and b!39026 b!39032 (= (dynLambda!703 lambda!4686) (dynLambda!703 (evidence!513 thiss!6212)))) (= lambda!4686 (evidence!513 thiss!6212))))

(assert (=> (and b!39030 b!39032 (= (dynLambda!703 lambda!4686) (dynLambda!703 (evidence!513 x$104!2)))) (= lambda!4686 (evidence!513 x$104!2))))

(declare-fun b_next!7647 () Bool)

(assert (=> b!39031 (= b_next!7621 (or (and b!39032 (= lambda!4686 (evidence!513 prev!740))) b_next!7647))))

(declare-fun b_next!7649 () Bool)

(assert (=> b!39026 (= b_next!7627 (or (and b!39032 (= lambda!4686 (evidence!513 thiss!6212))) b_next!7649))))

(declare-fun b_next!7651 () Bool)

(assert (=> b!39030 (= b_next!7633 (or (and b!39032 (= lambda!4686 (evidence!513 x$104!2))) b_next!7651))))

(declare-fun bs!12038 () Bool)

(declare-fun b!39025 () Bool)

(assert (= bs!12038 (and b!39025 b!39032)))

(declare-fun lambda!4687 () Int)

(assert (=> bs!12038 (not (= lambda!4687 lambda!4685))))

(assert (=> b!39025 true))

(assert (=> b!39025 true))

(declare-fun dynLambda!704 (Int) tuple2!214)

(assert (=> (and b!39026 b!39025 (= (dynLambda!704 lambda!4687) (dynLambda!704 (y!1400 thiss!6212)))) (= lambda!4687 (y!1400 thiss!6212))))

(assert (=> (and b!39030 b!39025 (= (dynLambda!704 lambda!4687) (dynLambda!704 (x!13531 x$104!2)))) (= lambda!4687 (x!13531 x$104!2))))

(assert (=> (and b!39026 b!39025 (= (dynLambda!704 lambda!4687) (dynLambda!704 (x!13531 thiss!6212)))) (= lambda!4687 (x!13531 thiss!6212))))

(assert (=> (and b!39030 b!39025 (= (dynLambda!704 lambda!4687) (dynLambda!704 (y!1400 x$104!2)))) (= lambda!4687 (y!1400 x$104!2))))

(assert (=> (and b!39031 b!39025 (= (dynLambda!704 lambda!4687) (dynLambda!704 (y!1400 prev!740)))) (= lambda!4687 (y!1400 prev!740))))

(assert (=> (and b!39031 b!39025 (= (dynLambda!704 lambda!4687) (dynLambda!704 (x!13531 prev!740)))) (= lambda!4687 (x!13531 prev!740))))

(declare-fun b_next!7653 () Bool)

(assert (=> b!39026 (= b_next!7635 (or (and b!39025 (= lambda!4687 (y!1400 thiss!6212))) b_next!7653))))

(declare-fun b_next!7655 () Bool)

(assert (=> b!39030 (= b_next!7637 (or (and b!39025 (= lambda!4687 (x!13531 x$104!2))) b_next!7655))))

(declare-fun b_next!7657 () Bool)

(assert (=> b!39026 (= b_next!7639 (or (and b!39025 (= lambda!4687 (x!13531 thiss!6212))) b_next!7657))))

(declare-fun b_next!7659 () Bool)

(assert (=> b!39030 (= b_next!7641 (or (and b!39025 (= lambda!4687 (y!1400 x$104!2))) b_next!7659))))

(declare-fun b_next!7661 () Bool)

(assert (=> b!39031 (= b_next!7643 (or (and b!39025 (= lambda!4687 (y!1400 prev!740))) b_next!7661))))

(declare-fun b_next!7663 () Bool)

(assert (=> b!39031 (= b_next!7645 (or (and b!39025 (= lambda!4687 (x!13531 prev!740))) b_next!7663))))

(declare-fun lambda!4688 () Int)

(assert (=> bs!12038 (not (= lambda!4688 lambda!4685))))

(declare-fun p2!66 () Nat!68)

(declare-fun n2!332 () Nat!68)

(declare-fun n1!316 () Nat!68)

(declare-fun p1!72 () Nat!68)

(assert (=> b!39025 (= (= (tuple2!215 n1!316 n2!332) (tuple2!215 p1!72 p2!66)) (= lambda!4688 lambda!4687))))

(assert (=> b!39025 true))

(assert (=> b!39025 true))

(assert (=> (and b!39026 b!39025 (= (dynLambda!704 lambda!4688) (dynLambda!704 (y!1400 thiss!6212)))) (= lambda!4688 (y!1400 thiss!6212))))

(assert (=> (and b!39030 b!39025 (= (dynLambda!704 lambda!4688) (dynLambda!704 (x!13531 x$104!2)))) (= lambda!4688 (x!13531 x$104!2))))

(assert (=> (and b!39026 b!39025 (= (dynLambda!704 lambda!4688) (dynLambda!704 (x!13531 thiss!6212)))) (= lambda!4688 (x!13531 thiss!6212))))

(assert (=> (and b!39030 b!39025 (= (dynLambda!704 lambda!4688) (dynLambda!704 (y!1400 x$104!2)))) (= lambda!4688 (y!1400 x$104!2))))

(assert (=> (and b!39031 b!39025 (= (dynLambda!704 lambda!4688) (dynLambda!704 (y!1400 prev!740)))) (= lambda!4688 (y!1400 prev!740))))

(assert (=> (and b!39031 b!39025 (= (dynLambda!704 lambda!4688) (dynLambda!704 (x!13531 prev!740)))) (= lambda!4688 (x!13531 prev!740))))

(declare-fun b_next!7665 () Bool)

(assert (=> b!39026 (= b_next!7653 (or (and b!39025 (= lambda!4688 (y!1400 thiss!6212))) b_next!7665))))

(declare-fun b_next!7667 () Bool)

(assert (=> b!39030 (= b_next!7655 (or (and b!39025 (= lambda!4688 (x!13531 x$104!2))) b_next!7667))))

(declare-fun b_next!7669 () Bool)

(assert (=> b!39026 (= b_next!7657 (or (and b!39025 (= lambda!4688 (x!13531 thiss!6212))) b_next!7669))))

(declare-fun b_next!7671 () Bool)

(assert (=> b!39030 (= b_next!7659 (or (and b!39025 (= lambda!4688 (y!1400 x$104!2))) b_next!7671))))

(declare-fun b_next!7673 () Bool)

(assert (=> b!39031 (= b_next!7661 (or (and b!39025 (= lambda!4688 (y!1400 prev!740))) b_next!7673))))

(declare-fun b_next!7675 () Bool)

(assert (=> b!39031 (= b_next!7663 (or (and b!39025 (= lambda!4688 (x!13531 prev!740))) b_next!7675))))

(declare-fun b!39023 () Bool)

(declare-fun res!18634 () Bool)

(declare-fun e!20122 () Bool)

(assert (=> b!39023 (=> (not res!18634) (not e!20122))))

(declare-fun remainder!2 () Nat!68)

(declare-fun /!2 (Nat!68 Nat!68) Nat!68)

(declare-fun -!4 (Nat!68 Nat!68) Nat!68)

(assert (=> b!39023 (= res!18634 (= p2!66 (/!2 (-!4 remainder!2 (Succ!49 Zero!52)) (Succ!49 (Succ!49 Zero!52)))))))

(declare-fun b!39024 () Bool)

(declare-fun res!18636 () Bool)

(assert (=> b!39024 (=> (not res!18636) (not e!20122))))

(declare-fun x$98!1 () tuple2!214)

(assert (=> b!39024 (= res!18636 (and (= p1!72 (_1!133 x$98!1)) (= remainder!2 (_2!133 x$98!1))))))

(declare-fun res!18635 () Bool)

(assert (=> b!39025 (=> (not res!18635) (not e!20122))))

(assert (=> b!39025 (= res!18635 (= thiss!6212 (RAEqEvidence!123 lambda!4687 lambda!4688 lambda!4686)))))

(declare-fun e!20119 () Bool)

(assert (=> b!39026 (= e!20119 (and tp!8650 tp!8655 tp!8653))))

(declare-fun b!39027 () Bool)

(assert (=> b!39027 (= e!20122 (not (= (dynLambda!704 (y!1400 prev!740)) (dynLambda!704 (x!13531 thiss!6212)))))))

(declare-fun b!39028 () Bool)

(declare-fun res!18637 () Bool)

(assert (=> b!39028 (=> (not res!18637) (not e!20122))))

(assert (=> b!39028 (= res!18637 (= prev!740 x$104!2))))

(declare-fun b!39029 () Bool)

(declare-fun res!18639 () Bool)

(assert (=> b!39029 (=> (not res!18639) (not e!20122))))

(declare-fun keepEvidence!12 (Bool) Bool)

(assert (=> b!39029 (= res!18639 (keepEvidence!12 (dynLambda!703 (evidence!513 prev!740))))))

(declare-fun e!20121 () Bool)

(assert (=> b!39030 (= e!20121 (and tp!8654 tp!8651 tp!8652))))

(declare-fun e!20120 () Bool)

(assert (=> b!39031 (= e!20120 (and tp!8656 tp!8648 tp!8649))))

(declare-fun res!18638 () Bool)

(assert (=> b!39032 (=> (not res!18638) (not e!20122))))

(assert (=> b!39032 (= res!18638 (= x$104!2 (RAEqEvidence!123 lambda!4685 lambda!4685 lambda!4686)))))

(declare-fun res!18640 () Bool)

(assert (=> start!5044 (=> (not res!18640) (not e!20122))))

(declare-fun log2_and_remainder!0 (Nat!68) tuple2!214)

(declare-fun pair!0 (Nat!68 Nat!68) Nat!68)

(assert (=> start!5044 (= res!18640 (= x$98!1 (tuple2!215 (_1!133 (log2_and_remainder!0 (Succ!49 (pair!0 n1!316 n2!332)))) (_2!133 (log2_and_remainder!0 (Succ!49 (pair!0 n1!316 n2!332)))))))))

(assert (=> start!5044 e!20122))

(declare-fun inv!710 (RAEqEvidence!122) Bool)

(assert (=> start!5044 (and (inv!710 prev!740) e!20120)))

(assert (=> start!5044 true))

(assert (=> start!5044 (and (inv!710 thiss!6212) e!20119)))

(assert (=> start!5044 (and (inv!710 x$104!2) e!20121)))

(assert (= (and start!5044 res!18640) b!39024))

(assert (= (and b!39024 res!18636) b!39023))

(assert (= (and b!39023 res!18634) b!39032))

(assert (= (and b!39032 res!18638) b!39025))

(assert (= (and b!39025 res!18635) b!39028))

(assert (= (and b!39028 res!18637) b!39029))

(assert (= (and b!39029 res!18639) b!39027))

(assert (= start!5044 b!39031))

(assert (= start!5044 b!39026))

(assert (= start!5044 b!39030))

(declare-fun b_lambda!10301 () Bool)

(assert (=> (not b_lambda!10301) (not b!39027)))

(declare-fun t!6732 () Bool)

(declare-fun tb!5911 () Bool)

(assert (=> (and b!39031 (= (x!13531 prev!740) (y!1400 prev!740)) t!6732) tb!5911))

(declare-fun result!6187 () Bool)

(assert (=> tb!5911 (= result!6187 true)))

(assert (=> b!39027 t!6732))

(declare-fun b_and!10649 () Bool)

(assert (= b_and!10631 (and (=> t!6732 result!6187) b_and!10649)))

(declare-fun tb!5913 () Bool)

(declare-fun t!6734 () Bool)

(assert (=> (and b!39030 (= (x!13531 x$104!2) (y!1400 prev!740)) t!6734) tb!5913))

(declare-fun result!6189 () Bool)

(assert (=> tb!5913 (= result!6189 true)))

(assert (=> b!39027 t!6734))

(declare-fun b_and!10651 () Bool)

(assert (= b_and!10643 (and (=> t!6734 result!6189) b_and!10651)))

(declare-fun t!6736 () Bool)

(declare-fun tb!5915 () Bool)

(assert (=> (and b!39031 (= (y!1400 prev!740) (y!1400 prev!740)) t!6736) tb!5915))

(declare-fun result!6191 () Bool)

(assert (=> tb!5915 (= result!6191 true)))

(assert (=> b!39027 t!6736))

(declare-fun b_and!10653 () Bool)

(assert (= b_and!10633 (and (=> t!6736 result!6191) b_and!10653)))

(declare-fun t!6738 () Bool)

(declare-fun tb!5917 () Bool)

(assert (=> (and b!39026 (= (y!1400 thiss!6212) (y!1400 prev!740)) t!6738) tb!5917))

(declare-fun result!6193 () Bool)

(assert (=> tb!5917 (= result!6193 true)))

(assert (=> b!39027 t!6738))

(declare-fun b_and!10655 () Bool)

(assert (= b_and!10639 (and (=> t!6738 result!6193) b_and!10655)))

(declare-fun t!6740 () Bool)

(declare-fun tb!5919 () Bool)

(assert (=> (and b!39026 (= (x!13531 thiss!6212) (y!1400 prev!740)) t!6740) tb!5919))

(declare-fun result!6195 () Bool)

(assert (=> tb!5919 (= result!6195 true)))

(assert (=> b!39027 t!6740))

(declare-fun b_and!10657 () Bool)

(assert (= b_and!10637 (and (=> t!6740 result!6195) b_and!10657)))

(declare-fun tb!5921 () Bool)

(declare-fun t!6742 () Bool)

(assert (=> (and b!39030 (= (y!1400 x$104!2) (y!1400 prev!740)) t!6742) tb!5921))

(declare-fun result!6197 () Bool)

(assert (=> tb!5921 (= result!6197 true)))

(assert (=> b!39027 t!6742))

(declare-fun b_and!10659 () Bool)

(assert (= b_and!10645 (and (=> t!6742 result!6197) b_and!10659)))

(declare-fun b_lambda!10303 () Bool)

(assert (=> (not b_lambda!10303) (not b!39027)))

(declare-fun tb!5923 () Bool)

(declare-fun t!6744 () Bool)

(assert (=> (and b!39030 (= (x!13531 x$104!2) (x!13531 thiss!6212)) t!6744) tb!5923))

(declare-fun result!6199 () Bool)

(assert (=> tb!5923 (= result!6199 true)))

(assert (=> b!39027 t!6744))

(declare-fun b_and!10661 () Bool)

(assert (= b_and!10651 (and (=> t!6744 result!6199) b_and!10661)))

(declare-fun t!6746 () Bool)

(declare-fun tb!5925 () Bool)

(assert (=> (and b!39026 (= (x!13531 thiss!6212) (x!13531 thiss!6212)) t!6746) tb!5925))

(declare-fun result!6201 () Bool)

(assert (=> tb!5925 (= result!6201 true)))

(assert (=> b!39027 t!6746))

(declare-fun b_and!10663 () Bool)

(assert (= b_and!10657 (and (=> t!6746 result!6201) b_and!10663)))

(declare-fun t!6748 () Bool)

(declare-fun tb!5927 () Bool)

(assert (=> (and b!39026 (= (y!1400 thiss!6212) (x!13531 thiss!6212)) t!6748) tb!5927))

(declare-fun result!6203 () Bool)

(assert (=> tb!5927 (= result!6203 true)))

(assert (=> b!39027 t!6748))

(declare-fun b_and!10665 () Bool)

(assert (= b_and!10655 (and (=> t!6748 result!6203) b_and!10665)))

(declare-fun t!6750 () Bool)

(declare-fun tb!5929 () Bool)

(assert (=> (and b!39031 (= (y!1400 prev!740) (x!13531 thiss!6212)) t!6750) tb!5929))

(declare-fun result!6205 () Bool)

(assert (=> tb!5929 (= result!6205 true)))

(assert (=> b!39027 t!6750))

(declare-fun b_and!10667 () Bool)

(assert (= b_and!10653 (and (=> t!6750 result!6205) b_and!10667)))

(declare-fun tb!5931 () Bool)

(declare-fun t!6752 () Bool)

(assert (=> (and b!39031 (= (x!13531 prev!740) (x!13531 thiss!6212)) t!6752) tb!5931))

(declare-fun result!6207 () Bool)

(assert (=> tb!5931 (= result!6207 true)))

(assert (=> b!39027 t!6752))

(declare-fun b_and!10669 () Bool)

(assert (= b_and!10649 (and (=> t!6752 result!6207) b_and!10669)))

(declare-fun tb!5933 () Bool)

(declare-fun t!6754 () Bool)

(assert (=> (and b!39030 (= (y!1400 x$104!2) (x!13531 thiss!6212)) t!6754) tb!5933))

(declare-fun result!6209 () Bool)

(assert (=> tb!5933 (= result!6209 true)))

(assert (=> b!39027 t!6754))

(declare-fun b_and!10671 () Bool)

(assert (= b_and!10659 (and (=> t!6754 result!6209) b_and!10671)))

(declare-fun b_lambda!10305 () Bool)

(assert (=> (not b_lambda!10305) (not b!39029)))

(declare-fun t!6756 () Bool)

(declare-fun tb!5935 () Bool)

(assert (=> (and b!39031 (= (evidence!513 prev!740) (evidence!513 prev!740)) t!6756) tb!5935))

(declare-fun result!6211 () Bool)

(assert (=> tb!5935 (= result!6211 true)))

(assert (=> b!39029 t!6756))

(declare-fun b_and!10673 () Bool)

(assert (= b_and!10635 (and (=> t!6756 result!6211) b_and!10673)))

(declare-fun t!6758 () Bool)

(declare-fun tb!5937 () Bool)

(assert (=> (and b!39026 (= (evidence!513 thiss!6212) (evidence!513 prev!740)) t!6758) tb!5937))

(declare-fun result!6213 () Bool)

(assert (=> tb!5937 (= result!6213 true)))

(assert (=> b!39029 t!6758))

(declare-fun b_and!10675 () Bool)

(assert (= b_and!10641 (and (=> t!6758 result!6213) b_and!10675)))

(declare-fun t!6760 () Bool)

(declare-fun tb!5939 () Bool)

(assert (=> (and b!39030 (= (evidence!513 x$104!2) (evidence!513 prev!740)) t!6760) tb!5939))

(declare-fun result!6215 () Bool)

(assert (=> tb!5939 (= result!6215 true)))

(assert (=> b!39029 t!6760))

(declare-fun b_and!10677 () Bool)

(assert (= b_and!10647 (and (=> t!6760 result!6215) b_and!10677)))

(declare-fun m!40211 () Bool)

(assert (=> b!39023 m!40211))

(assert (=> b!39023 m!40211))

(declare-fun m!40213 () Bool)

(assert (=> b!39023 m!40213))

(declare-fun m!40215 () Bool)

(assert (=> b!39027 m!40215))

(declare-fun m!40217 () Bool)

(assert (=> b!39027 m!40217))

(declare-fun m!40219 () Bool)

(assert (=> b!39029 m!40219))

(assert (=> b!39029 m!40219))

(declare-fun m!40221 () Bool)

(assert (=> b!39029 m!40221))

(declare-fun m!40223 () Bool)

(assert (=> start!5044 m!40223))

(declare-fun m!40225 () Bool)

(assert (=> start!5044 m!40225))

(declare-fun m!40227 () Bool)

(assert (=> start!5044 m!40227))

(declare-fun m!40229 () Bool)

(assert (=> start!5044 m!40229))

(declare-fun m!40231 () Bool)

(assert (=> start!5044 m!40231))

(push 1)

(assert (not b_next!7673))

(assert (not b_next!7647))

(assert (not b_lambda!10305))

(assert (not b!39032))

(assert (not start!5044))

(assert (not b_next!7649))

(assert (not b_next!7651))

(assert (not b!39025))

(assert b_and!10671)

(assert (not b_next!7665))

(assert (not b_lambda!10301))

(assert b_and!10661)

(assert (not b!39023))

(assert (not b_next!7669))

(assert b_and!10677)

(assert (not b_next!7671))

(assert b_and!10673)

(assert (not b_next!7675))

(assert b_and!10675)

(assert b_and!10665)

(assert b_and!10663)

(assert b_and!10669)

(assert (not b!39029))

(assert (not b_next!7667))

(assert (not b_lambda!10303))

(assert b_and!10667)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!7673))

(assert (not b_next!7647))

(assert (not b_next!7649))

(assert (not b_next!7651))

(assert b_and!10671)

(assert (not b_next!7665))

(assert b_and!10661)

(assert (not b_next!7669))

(assert b_and!10677)

(assert (not b_next!7671))

(assert b_and!10673)

(assert (not b_next!7675))

(assert b_and!10675)

(assert b_and!10665)

(assert b_and!10663)

(assert b_and!10669)

(assert (not b_next!7667))

(assert b_and!10667)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!10307 () Bool)

(assert (= b_lambda!10303 (or (and b!39031 b_free!3051 (= (x!13531 prev!740) (x!13531 thiss!6212))) (and b!39032 (= lambda!4685 (x!13531 thiss!6212))) (and b!39030 b_free!3065 (= (y!1400 x$104!2) (x!13531 thiss!6212))) (and b!39031 b_free!3053 (= (y!1400 prev!740) (x!13531 thiss!6212))) (and b!39025 (= lambda!4688 (x!13531 thiss!6212))) (and b!39026 b_free!3059 (= (y!1400 thiss!6212) (x!13531 thiss!6212))) (and b!39030 b_free!3063 (= (x!13531 x$104!2) (x!13531 thiss!6212))) (and b!39025 (= lambda!4687 (x!13531 thiss!6212))) (and b!39026 b_free!3057) b_lambda!10307)))

(declare-fun bs!12039 () Bool)

(declare-fun d!19826 () Bool)

(assert (= bs!12039 (and d!19826 b!39032)))

(declare-fun project!0 (Nat!68) tuple2!214)

(assert (=> bs!12039 (= (dynLambda!704 lambda!4685) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!12039 m!40229))

(assert (=> bs!12039 m!40229))

(declare-fun m!40233 () Bool)

(assert (=> bs!12039 m!40233))

(assert (=> (and b!39032 (= lambda!4685 (x!13531 thiss!6212)) b!39027) d!19826))

(declare-fun bs!12040 () Bool)

(declare-fun d!19828 () Bool)

(assert (= bs!12040 (and d!19828 b!39025)))

(assert (=> bs!12040 (= (dynLambda!704 lambda!4688) (tuple2!215 n1!316 n2!332))))

(assert (=> (and b!39025 (= lambda!4688 (x!13531 thiss!6212)) b!39027) d!19828))

(declare-fun bs!12041 () Bool)

(declare-fun d!19830 () Bool)

(assert (= bs!12041 (and d!19830 b!39025)))

(assert (=> bs!12041 (= (dynLambda!704 lambda!4687) (tuple2!215 p1!72 p2!66))))

(assert (=> (and b!39025 (= lambda!4687 (x!13531 thiss!6212)) b!39027) d!19830))

(declare-fun b_lambda!10309 () Bool)

(assert (= b_lambda!10305 (or (and b!39032 (= lambda!4686 (evidence!513 prev!740))) (and b!39031 b_free!3055) (and b!39026 b_free!3061 (= (evidence!513 thiss!6212) (evidence!513 prev!740))) (and b!39030 b_free!3067 (= (evidence!513 x$104!2) (evidence!513 prev!740))) b_lambda!10309)))

(declare-fun bs!12042 () Bool)

(declare-fun d!19832 () Bool)

(assert (= bs!12042 (and d!19832 b!39032)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!12042 (= (dynLambda!703 lambda!4686) trivial!1)))

(assert (=> (and b!39032 (= lambda!4686 (evidence!513 prev!740)) b!39029) d!19832))

(declare-fun b_lambda!10311 () Bool)

(assert (= b_lambda!10301 (or (and b!39031 b_free!3051 (= (x!13531 prev!740) (y!1400 prev!740))) (and b!39030 b_free!3063 (= (x!13531 x$104!2) (y!1400 prev!740))) (and b!39025 (= lambda!4688 (y!1400 prev!740))) (and b!39031 b_free!3053) (and b!39026 b_free!3059 (= (y!1400 thiss!6212) (y!1400 prev!740))) (and b!39026 b_free!3057 (= (x!13531 thiss!6212) (y!1400 prev!740))) (and b!39032 (= lambda!4685 (y!1400 prev!740))) (and b!39025 (= lambda!4687 (y!1400 prev!740))) (and b!39030 b_free!3065 (= (y!1400 x$104!2) (y!1400 prev!740))) b_lambda!10311)))

(declare-fun bs!12043 () Bool)

(declare-fun d!19834 () Bool)

(assert (= bs!12043 (and d!19834 b!39032)))

(assert (=> bs!12043 (= (dynLambda!704 lambda!4685) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!12043 m!40229))

(assert (=> bs!12043 m!40229))

(assert (=> bs!12043 m!40233))

(assert (=> (and b!39032 (= lambda!4685 (y!1400 prev!740)) b!39027) d!19834))

(declare-fun bs!12044 () Bool)

(declare-fun d!19836 () Bool)

(assert (= bs!12044 (and d!19836 b!39025)))

(assert (=> bs!12044 (= (dynLambda!704 lambda!4687) (tuple2!215 p1!72 p2!66))))

(assert (=> (and b!39025 (= lambda!4687 (y!1400 prev!740)) b!39027) d!19836))

(declare-fun bs!12045 () Bool)

(declare-fun d!19838 () Bool)

(assert (= bs!12045 (and d!19838 b!39025)))

(assert (=> bs!12045 (= (dynLambda!704 lambda!4688) (tuple2!215 n1!316 n2!332))))

(assert (=> (and b!39025 (= lambda!4688 (y!1400 prev!740)) b!39027) d!19838))

(push 1)

(assert (not b_next!7673))

(assert (not b_next!7647))

(assert (not b!39032))

(assert (not start!5044))

(assert (not b_next!7649))

(assert (not b_next!7651))

(assert (not b!39025))

(assert b_and!10671)

(assert (not b_lambda!10309))

(assert (not b_next!7665))

(assert (not b_lambda!10307))

(assert b_and!10661)

(assert (not b!39023))

(assert (not bs!12039))

(assert (not bs!12043))

(assert (not b_next!7669))

(assert b_and!10677)

(assert (not b_lambda!10311))

(assert (not b_next!7671))

(assert b_and!10673)

(assert (not b_next!7675))

(assert b_and!10675)

(assert b_and!10665)

(assert b_and!10663)

(assert b_and!10669)

(assert (not b!39029))

(assert (not b_next!7667))

(assert b_and!10667)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!7673))

(assert (not b_next!7647))

(assert (not b_next!7649))

(assert (not b_next!7651))

(assert b_and!10671)

(assert (not b_next!7665))

(assert b_and!10661)

(assert (not b_next!7669))

(assert b_and!10677)

(assert (not b_next!7671))

(assert b_and!10673)

(assert (not b_next!7675))

(assert b_and!10675)

(assert b_and!10665)

(assert b_and!10663)

(assert b_and!10669)

(assert (not b_next!7667))

(assert b_and!10667)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!19840 () Bool)

(assert (=> d!19840 (= (project!0 (pair!0 n1!316 n2!332)) (tuple2!215 (_1!133 (log2_and_remainder!0 (Succ!49 (pair!0 n1!316 n2!332)))) (/!2 (-!4 (_2!133 (log2_and_remainder!0 (Succ!49 (pair!0 n1!316 n2!332)))) (Succ!49 Zero!52)) (Succ!49 (Succ!49 Zero!52)))))))

(declare-fun bs!12046 () Bool)

(assert (= bs!12046 d!19840))

(assert (=> bs!12046 m!40225))

(declare-fun m!40235 () Bool)

(assert (=> bs!12046 m!40235))

(assert (=> bs!12046 m!40235))

(declare-fun m!40237 () Bool)

(assert (=> bs!12046 m!40237))

(assert (=> bs!12043 d!19840))

(declare-fun d!19842 () Bool)

(declare-fun *!4 (Nat!68 Nat!68) Nat!68)

(declare-fun pow!0 (Nat!68 Nat!68) Nat!68)

(declare-fun +!5 (Nat!68 Nat!68) Nat!68)

(assert (=> d!19842 (= (pair!0 n1!316 n2!332) (-!4 (*!4 (pow!0 (Succ!49 (Succ!49 Zero!52)) n1!316) (+!5 (*!4 (Succ!49 (Succ!49 Zero!52)) n2!332) (Succ!49 Zero!52))) (Succ!49 Zero!52)))))

(declare-fun bs!12047 () Bool)

(assert (= bs!12047 d!19842))

(declare-fun m!40239 () Bool)

(assert (=> bs!12047 m!40239))

(declare-fun m!40241 () Bool)

(assert (=> bs!12047 m!40241))

(declare-fun m!40243 () Bool)

(assert (=> bs!12047 m!40243))

(assert (=> bs!12047 m!40239))

(declare-fun m!40245 () Bool)

(assert (=> bs!12047 m!40245))

(declare-fun m!40247 () Bool)

(assert (=> bs!12047 m!40247))

(assert (=> bs!12047 m!40245))

(assert (=> bs!12047 m!40241))

(assert (=> bs!12047 m!40247))

(assert (=> bs!12043 d!19842))

(assert (=> start!5044 d!19842))

(declare-fun d!19844 () Bool)

(assert (=> d!19844 (= (inv!710 x$104!2) (= (dynLambda!704 (x!13531 x$104!2)) (dynLambda!704 (y!1400 x$104!2))))))

(declare-fun b_lambda!10313 () Bool)

(assert (=> (not b_lambda!10313) (not d!19844)))

(declare-fun t!6762 () Bool)

(declare-fun tb!5941 () Bool)

(assert (=> (and b!39031 (= (y!1400 prev!740) (x!13531 x$104!2)) t!6762) tb!5941))

(declare-fun result!6217 () Bool)

(assert (=> tb!5941 (= result!6217 true)))

(assert (=> d!19844 t!6762))

(declare-fun b_and!10679 () Bool)

(assert (= b_and!10667 (and (=> t!6762 result!6217) b_and!10679)))

(declare-fun t!6764 () Bool)

(declare-fun tb!5943 () Bool)

(assert (=> (and b!39026 (= (y!1400 thiss!6212) (x!13531 x$104!2)) t!6764) tb!5943))

(declare-fun result!6219 () Bool)

(assert (=> tb!5943 (= result!6219 true)))

(assert (=> d!19844 t!6764))

(declare-fun b_and!10681 () Bool)

(assert (= b_and!10665 (and (=> t!6764 result!6219) b_and!10681)))

(declare-fun tb!5945 () Bool)

(declare-fun t!6766 () Bool)

(assert (=> (and b!39026 (= (x!13531 thiss!6212) (x!13531 x$104!2)) t!6766) tb!5945))

(declare-fun result!6221 () Bool)

(assert (=> tb!5945 (= result!6221 true)))

(assert (=> d!19844 t!6766))

(declare-fun b_and!10683 () Bool)

(assert (= b_and!10663 (and (=> t!6766 result!6221) b_and!10683)))

(declare-fun tb!5947 () Bool)

(declare-fun t!6768 () Bool)

(assert (=> (and b!39031 (= (x!13531 prev!740) (x!13531 x$104!2)) t!6768) tb!5947))

(declare-fun result!6223 () Bool)

(assert (=> tb!5947 (= result!6223 true)))

(assert (=> d!19844 t!6768))

(declare-fun b_and!10685 () Bool)

(assert (= b_and!10669 (and (=> t!6768 result!6223) b_and!10685)))

(declare-fun t!6770 () Bool)

(declare-fun tb!5949 () Bool)

(assert (=> (and b!39030 (= (y!1400 x$104!2) (x!13531 x$104!2)) t!6770) tb!5949))

(declare-fun result!6225 () Bool)

(assert (=> tb!5949 (= result!6225 true)))

(assert (=> d!19844 t!6770))

(declare-fun b_and!10687 () Bool)

(assert (= b_and!10671 (and (=> t!6770 result!6225) b_and!10687)))

(declare-fun t!6772 () Bool)

(declare-fun tb!5951 () Bool)

(assert (=> (and b!39030 (= (x!13531 x$104!2) (x!13531 x$104!2)) t!6772) tb!5951))

(declare-fun result!6227 () Bool)

(assert (=> tb!5951 (= result!6227 true)))

(assert (=> d!19844 t!6772))

(declare-fun b_and!10689 () Bool)

(assert (= b_and!10661 (and (=> t!6772 result!6227) b_and!10689)))

(declare-fun b_lambda!10315 () Bool)

(assert (=> (not b_lambda!10315) (not d!19844)))

(declare-fun t!6774 () Bool)

(declare-fun tb!5953 () Bool)

(assert (=> (and b!39026 (= (x!13531 thiss!6212) (y!1400 x$104!2)) t!6774) tb!5953))

(declare-fun result!6229 () Bool)

(assert (=> tb!5953 (= result!6229 true)))

(assert (=> d!19844 t!6774))

(declare-fun b_and!10691 () Bool)

(assert (= b_and!10683 (and (=> t!6774 result!6229) b_and!10691)))

(declare-fun tb!5955 () Bool)

(declare-fun t!6776 () Bool)

(assert (=> (and b!39026 (= (y!1400 thiss!6212) (y!1400 x$104!2)) t!6776) tb!5955))

(declare-fun result!6231 () Bool)

(assert (=> tb!5955 (= result!6231 true)))

(assert (=> d!19844 t!6776))

(declare-fun b_and!10693 () Bool)

(assert (= b_and!10681 (and (=> t!6776 result!6231) b_and!10693)))

(declare-fun t!6778 () Bool)

(declare-fun tb!5957 () Bool)

(assert (=> (and b!39030 (= (y!1400 x$104!2) (y!1400 x$104!2)) t!6778) tb!5957))

(declare-fun result!6233 () Bool)

(assert (=> tb!5957 (= result!6233 true)))

(assert (=> d!19844 t!6778))

(declare-fun b_and!10695 () Bool)

(assert (= b_and!10687 (and (=> t!6778 result!6233) b_and!10695)))

(declare-fun t!6780 () Bool)

(declare-fun tb!5959 () Bool)

(assert (=> (and b!39031 (= (x!13531 prev!740) (y!1400 x$104!2)) t!6780) tb!5959))

(declare-fun result!6235 () Bool)

(assert (=> tb!5959 (= result!6235 true)))

(assert (=> d!19844 t!6780))

(declare-fun b_and!10697 () Bool)

(assert (= b_and!10685 (and (=> t!6780 result!6235) b_and!10697)))

(declare-fun t!6782 () Bool)

(declare-fun tb!5961 () Bool)

(assert (=> (and b!39031 (= (y!1400 prev!740) (y!1400 x$104!2)) t!6782) tb!5961))

(declare-fun result!6237 () Bool)

(assert (=> tb!5961 (= result!6237 true)))

(assert (=> d!19844 t!6782))

(declare-fun b_and!10699 () Bool)

(assert (= b_and!10679 (and (=> t!6782 result!6237) b_and!10699)))

(declare-fun t!6784 () Bool)

(declare-fun tb!5963 () Bool)

(assert (=> (and b!39030 (= (x!13531 x$104!2) (y!1400 x$104!2)) t!6784) tb!5963))

(declare-fun result!6239 () Bool)

(assert (=> tb!5963 (= result!6239 true)))

(assert (=> d!19844 t!6784))

(declare-fun b_and!10701 () Bool)

(assert (= b_and!10689 (and (=> t!6784 result!6239) b_and!10701)))

(declare-fun m!40249 () Bool)

(assert (=> d!19844 m!40249))

(declare-fun m!40251 () Bool)

(assert (=> d!19844 m!40251))

(assert (=> start!5044 d!19844))

(declare-fun d!19846 () Bool)

(assert (=> d!19846 (= (inv!710 prev!740) (= (dynLambda!704 (x!13531 prev!740)) (dynLambda!704 (y!1400 prev!740))))))

(declare-fun b_lambda!10317 () Bool)

(assert (=> (not b_lambda!10317) (not d!19846)))

(declare-fun t!6786 () Bool)

(declare-fun tb!5965 () Bool)

(assert (=> (and b!39026 (= (x!13531 thiss!6212) (x!13531 prev!740)) t!6786) tb!5965))

(declare-fun result!6241 () Bool)

(assert (=> tb!5965 (= result!6241 true)))

(assert (=> d!19846 t!6786))

(declare-fun b_and!10703 () Bool)

(assert (= b_and!10691 (and (=> t!6786 result!6241) b_and!10703)))

(declare-fun t!6788 () Bool)

(declare-fun tb!5967 () Bool)

(assert (=> (and b!39031 (= (x!13531 prev!740) (x!13531 prev!740)) t!6788) tb!5967))

(declare-fun result!6243 () Bool)

(assert (=> tb!5967 (= result!6243 true)))

(assert (=> d!19846 t!6788))

(declare-fun b_and!10705 () Bool)

(assert (= b_and!10697 (and (=> t!6788 result!6243) b_and!10705)))

(declare-fun t!6790 () Bool)

(declare-fun tb!5969 () Bool)

(assert (=> (and b!39030 (= (y!1400 x$104!2) (x!13531 prev!740)) t!6790) tb!5969))

(declare-fun result!6245 () Bool)

(assert (=> tb!5969 (= result!6245 true)))

(assert (=> d!19846 t!6790))

(declare-fun b_and!10707 () Bool)

(assert (= b_and!10695 (and (=> t!6790 result!6245) b_and!10707)))

(declare-fun t!6792 () Bool)

(declare-fun tb!5971 () Bool)

(assert (=> (and b!39026 (= (y!1400 thiss!6212) (x!13531 prev!740)) t!6792) tb!5971))

(declare-fun result!6247 () Bool)

(assert (=> tb!5971 (= result!6247 true)))

(assert (=> d!19846 t!6792))

(declare-fun b_and!10709 () Bool)

(assert (= b_and!10693 (and (=> t!6792 result!6247) b_and!10709)))

(declare-fun t!6794 () Bool)

(declare-fun tb!5973 () Bool)

(assert (=> (and b!39031 (= (y!1400 prev!740) (x!13531 prev!740)) t!6794) tb!5973))

(declare-fun result!6249 () Bool)

(assert (=> tb!5973 (= result!6249 true)))

(assert (=> d!19846 t!6794))

(declare-fun b_and!10711 () Bool)

(assert (= b_and!10699 (and (=> t!6794 result!6249) b_and!10711)))

(declare-fun t!6796 () Bool)

(declare-fun tb!5975 () Bool)

(assert (=> (and b!39030 (= (x!13531 x$104!2) (x!13531 prev!740)) t!6796) tb!5975))

(declare-fun result!6251 () Bool)

(assert (=> tb!5975 (= result!6251 true)))

(assert (=> d!19846 t!6796))

(declare-fun b_and!10713 () Bool)

(assert (= b_and!10701 (and (=> t!6796 result!6251) b_and!10713)))

(declare-fun b_lambda!10319 () Bool)

(assert (=> (not b_lambda!10319) (not d!19846)))

(assert (=> d!19846 t!6740))

(declare-fun b_and!10715 () Bool)

(assert (= b_and!10703 (and (=> t!6740 result!6195) b_and!10715)))

(assert (=> d!19846 t!6742))

(declare-fun b_and!10717 () Bool)

(assert (= b_and!10707 (and (=> t!6742 result!6197) b_and!10717)))

(assert (=> d!19846 t!6734))

(declare-fun b_and!10719 () Bool)

(assert (= b_and!10713 (and (=> t!6734 result!6189) b_and!10719)))

(assert (=> d!19846 t!6732))

(declare-fun b_and!10721 () Bool)

(assert (= b_and!10705 (and (=> t!6732 result!6187) b_and!10721)))

(assert (=> d!19846 t!6738))

(declare-fun b_and!10723 () Bool)

(assert (= b_and!10709 (and (=> t!6738 result!6193) b_and!10723)))

(assert (=> d!19846 t!6736))

(declare-fun b_and!10725 () Bool)

(assert (= b_and!10711 (and (=> t!6736 result!6191) b_and!10725)))

(declare-fun m!40253 () Bool)

(assert (=> d!19846 m!40253))

(assert (=> d!19846 m!40215))

(assert (=> start!5044 d!19846))

(declare-fun d!19848 () Bool)

(assert (=> d!19848 (= (inv!710 thiss!6212) (= (dynLambda!704 (x!13531 thiss!6212)) (dynLambda!704 (y!1400 thiss!6212))))))

(declare-fun b_lambda!10321 () Bool)

(assert (=> (not b_lambda!10321) (not d!19848)))

(assert (=> d!19848 t!6750))

(declare-fun b_and!10727 () Bool)

(assert (= b_and!10725 (and (=> t!6750 result!6205) b_and!10727)))

(assert (=> d!19848 t!6754))

(declare-fun b_and!10729 () Bool)

(assert (= b_and!10717 (and (=> t!6754 result!6209) b_and!10729)))

(assert (=> d!19848 t!6744))

(declare-fun b_and!10731 () Bool)

(assert (= b_and!10719 (and (=> t!6744 result!6199) b_and!10731)))

(assert (=> d!19848 t!6746))

(declare-fun b_and!10733 () Bool)

(assert (= b_and!10715 (and (=> t!6746 result!6201) b_and!10733)))

(assert (=> d!19848 t!6748))

(declare-fun b_and!10735 () Bool)

(assert (= b_and!10723 (and (=> t!6748 result!6203) b_and!10735)))

(assert (=> d!19848 t!6752))

(declare-fun b_and!10737 () Bool)

(assert (= b_and!10721 (and (=> t!6752 result!6207) b_and!10737)))

(declare-fun b_lambda!10323 () Bool)

(assert (=> (not b_lambda!10323) (not d!19848)))

(declare-fun t!6798 () Bool)

(declare-fun tb!5977 () Bool)

(assert (=> (and b!39026 (= (y!1400 thiss!6212) (y!1400 thiss!6212)) t!6798) tb!5977))

(declare-fun result!6253 () Bool)

(assert (=> tb!5977 (= result!6253 true)))

(assert (=> d!19848 t!6798))

(declare-fun b_and!10739 () Bool)

(assert (= b_and!10735 (and (=> t!6798 result!6253) b_and!10739)))

(declare-fun t!6800 () Bool)

(declare-fun tb!5979 () Bool)

(assert (=> (and b!39031 (= (y!1400 prev!740) (y!1400 thiss!6212)) t!6800) tb!5979))

(declare-fun result!6255 () Bool)

(assert (=> tb!5979 (= result!6255 true)))

(assert (=> d!19848 t!6800))

(declare-fun b_and!10741 () Bool)

(assert (= b_and!10727 (and (=> t!6800 result!6255) b_and!10741)))

(declare-fun tb!5981 () Bool)

(declare-fun t!6802 () Bool)

(assert (=> (and b!39031 (= (x!13531 prev!740) (y!1400 thiss!6212)) t!6802) tb!5981))

(declare-fun result!6257 () Bool)

(assert (=> tb!5981 (= result!6257 true)))

(assert (=> d!19848 t!6802))

(declare-fun b_and!10743 () Bool)

(assert (= b_and!10737 (and (=> t!6802 result!6257) b_and!10743)))

(declare-fun t!6804 () Bool)

(declare-fun tb!5983 () Bool)

(assert (=> (and b!39030 (= (y!1400 x$104!2) (y!1400 thiss!6212)) t!6804) tb!5983))

(declare-fun result!6259 () Bool)

(assert (=> tb!5983 (= result!6259 true)))

(assert (=> d!19848 t!6804))

(declare-fun b_and!10745 () Bool)

(assert (= b_and!10729 (and (=> t!6804 result!6259) b_and!10745)))

(declare-fun t!6806 () Bool)

(declare-fun tb!5985 () Bool)

(assert (=> (and b!39026 (= (x!13531 thiss!6212) (y!1400 thiss!6212)) t!6806) tb!5985))

(declare-fun result!6261 () Bool)

(assert (=> tb!5985 (= result!6261 true)))

(assert (=> d!19848 t!6806))

(declare-fun b_and!10747 () Bool)

(assert (= b_and!10733 (and (=> t!6806 result!6261) b_and!10747)))

(declare-fun tb!5987 () Bool)

(declare-fun t!6808 () Bool)

(assert (=> (and b!39030 (= (x!13531 x$104!2) (y!1400 thiss!6212)) t!6808) tb!5987))

(declare-fun result!6263 () Bool)

(assert (=> tb!5987 (= result!6263 true)))

(assert (=> d!19848 t!6808))

(declare-fun b_and!10749 () Bool)

(assert (= b_and!10731 (and (=> t!6808 result!6263) b_and!10749)))

(assert (=> d!19848 m!40217))

(declare-fun m!40255 () Bool)

(assert (=> d!19848 m!40255))

(assert (=> start!5044 d!19848))

(declare-fun d!19850 () Bool)

(declare-fun c!8332 () Bool)

(declare-fun e!20128 () Bool)

(assert (=> d!19850 (= c!8332 e!20128)))

(declare-fun res!18643 () Bool)

(assert (=> d!19850 (=> (not res!18643) (not e!20128))))

(declare-fun isEven!1 (Nat!68) Bool)

(assert (=> d!19850 (= res!18643 (isEven!1 (Succ!49 (pair!0 n1!316 n2!332))))))

(declare-fun e!20127 () tuple2!214)

(assert (=> d!19850 (= (log2_and_remainder!0 (Succ!49 (pair!0 n1!316 n2!332))) e!20127)))

(declare-fun b!39045 () Bool)

(declare-fun >!2 (Nat!68 Nat!68) Bool)

(assert (=> b!39045 (= e!20128 (>!2 (Succ!49 (pair!0 n1!316 n2!332)) Zero!52))))

(declare-fun b!39043 () Bool)

(assert (=> b!39043 (= e!20127 (tuple2!215 (Succ!49 (_1!133 (log2_and_remainder!0 (/!2 (Succ!49 (pair!0 n1!316 n2!332)) (Succ!49 (Succ!49 Zero!52)))))) (_2!133 (log2_and_remainder!0 (/!2 (Succ!49 (pair!0 n1!316 n2!332)) (Succ!49 (Succ!49 Zero!52)))))))))

(declare-fun b!39044 () Bool)

(assert (=> b!39044 (= e!20127 (tuple2!215 Zero!52 (Succ!49 (pair!0 n1!316 n2!332))))))

(assert (= (and d!19850 res!18643) b!39045))

(assert (= (and d!19850 c!8332) b!39043))

(assert (= (and d!19850 (not c!8332)) b!39044))

(declare-fun m!40257 () Bool)

(assert (=> d!19850 m!40257))

(declare-fun m!40259 () Bool)

(assert (=> b!39045 m!40259))

(declare-fun m!40261 () Bool)

(assert (=> b!39043 m!40261))

(assert (=> b!39043 m!40261))

(declare-fun m!40263 () Bool)

(assert (=> b!39043 m!40263))

(assert (=> start!5044 d!19850))

(declare-fun d!19852 () Bool)

(assert (=> d!19852 (= trivial!1 true)))

(assert (=> b!39032 d!19852))

(declare-fun b!39056 () Bool)

(declare-fun e!20136 () Bool)

(declare-fun lt!7569 () Nat!68)

(declare-fun repr!0 (Nat!68) Int)

(assert (=> b!39056 (= e!20136 (< (repr!0 lt!7569) (repr!0 (-!4 remainder!2 (Succ!49 Zero!52)))))))

(declare-fun b!39057 () Bool)

(declare-fun e!20137 () Nat!68)

(assert (=> b!39057 (= e!20137 (Succ!49 (/!2 (-!4 (-!4 remainder!2 (Succ!49 Zero!52)) (Succ!49 (Succ!49 Zero!52))) (Succ!49 (Succ!49 Zero!52)))))))

(declare-fun b!39058 () Bool)

(declare-fun e!20135 () Bool)

(assert (=> b!39058 (= e!20135 e!20136)))

(declare-fun res!18652 () Bool)

(assert (=> b!39058 (=> res!18652 e!20136)))

(assert (=> b!39058 (= res!18652 (not (>!2 (-!4 remainder!2 (Succ!49 Zero!52)) Zero!52)))))

(declare-fun d!19854 () Bool)

(assert (=> d!19854 e!20135))

(declare-fun res!18653 () Bool)

(assert (=> d!19854 (=> (not res!18653) (not e!20135))))

(assert (=> d!19854 (= res!18653 (<= (repr!0 lt!7569) (repr!0 (-!4 remainder!2 (Succ!49 Zero!52)))))))

(assert (=> d!19854 (= lt!7569 e!20137)))

(declare-fun c!8335 () Bool)

(declare-fun <!2 (Nat!68 Nat!68) Bool)

(assert (=> d!19854 (= c!8335 (<!2 (-!4 remainder!2 (Succ!49 Zero!52)) (Succ!49 (Succ!49 Zero!52))))))

(assert (=> d!19854 (>!2 (Succ!49 (Succ!49 Zero!52)) Zero!52)))

(assert (=> d!19854 (= (/!2 (-!4 remainder!2 (Succ!49 Zero!52)) (Succ!49 (Succ!49 Zero!52))) lt!7569)))

(declare-fun b!39059 () Bool)

(declare-fun res!18651 () Bool)

(assert (=> b!39059 (=> res!18651 e!20136)))

(assert (=> b!39059 (= res!18651 (not (>!2 (Succ!49 (Succ!49 Zero!52)) (Succ!49 Zero!52))))))

(declare-fun b!39060 () Bool)

(assert (=> b!39060 (= e!20137 Zero!52)))

(assert (= (and d!19854 c!8335) b!39060))

(assert (= (and d!19854 (not c!8335)) b!39057))

(assert (= (and d!19854 res!18653) b!39058))

(assert (= (and b!39058 (not res!18652)) b!39059))

(assert (= (and b!39059 (not res!18651)) b!39056))

(assert (=> b!39057 m!40211))

(declare-fun m!40265 () Bool)

(assert (=> b!39057 m!40265))

(assert (=> b!39057 m!40265))

(declare-fun m!40267 () Bool)

(assert (=> b!39057 m!40267))

(declare-fun m!40269 () Bool)

(assert (=> b!39056 m!40269))

(assert (=> b!39056 m!40211))

(declare-fun m!40271 () Bool)

(assert (=> b!39056 m!40271))

(assert (=> b!39058 m!40211))

(declare-fun m!40273 () Bool)

(assert (=> b!39058 m!40273))

(assert (=> d!19854 m!40269))

(assert (=> d!19854 m!40211))

(assert (=> d!19854 m!40271))

(assert (=> d!19854 m!40211))

(declare-fun m!40275 () Bool)

(assert (=> d!19854 m!40275))

(declare-fun m!40277 () Bool)

(assert (=> d!19854 m!40277))

(declare-fun m!40279 () Bool)

(assert (=> b!39059 m!40279))

(assert (=> b!39023 d!19854))

(declare-fun b!39071 () Bool)

(declare-fun res!18661 () Bool)

(declare-fun e!20145 () Bool)

(assert (=> b!39071 (=> res!18661 e!20145)))

(assert (=> b!39071 (= res!18661 (not (>!2 (Succ!49 Zero!52) Zero!52)))))

(declare-fun d!19856 () Bool)

(declare-fun e!20146 () Bool)

(assert (=> d!19856 e!20146))

(declare-fun res!18662 () Bool)

(assert (=> d!19856 (=> (not res!18662) (not e!20146))))

(declare-fun lt!7572 () Nat!68)

(assert (=> d!19856 (= res!18662 (<= (repr!0 lt!7572) (repr!0 remainder!2)))))

(declare-fun e!20144 () Nat!68)

(assert (=> d!19856 (= lt!7572 e!20144)))

(declare-fun c!8338 () Bool)

(assert (=> d!19856 (= c!8338 (and (is-Succ!49 remainder!2) (is-Succ!49 (Succ!49 Zero!52))))))

(assert (=> d!19856 (= (-!4 remainder!2 (Succ!49 Zero!52)) lt!7572)))

(declare-fun b!39072 () Bool)

(assert (=> b!39072 (= e!20144 remainder!2)))

(declare-fun b!39073 () Bool)

(assert (=> b!39073 (= e!20144 (-!4 (n!1143 remainder!2) (n!1143 (Succ!49 Zero!52))))))

(declare-fun b!39074 () Bool)

(assert (=> b!39074 (= e!20146 e!20145)))

(declare-fun res!18663 () Bool)

(assert (=> b!39074 (=> res!18663 e!20145)))

(assert (=> b!39074 (= res!18663 (not (>!2 remainder!2 Zero!52)))))

(declare-fun b!39075 () Bool)

(assert (=> b!39075 (= e!20145 (< (repr!0 lt!7572) (repr!0 remainder!2)))))

(assert (= (and d!19856 c!8338) b!39073))

(assert (= (and d!19856 (not c!8338)) b!39072))

(assert (= (and d!19856 res!18662) b!39074))

(assert (= (and b!39074 (not res!18663)) b!39071))

(assert (= (and b!39071 (not res!18661)) b!39075))

(declare-fun m!40281 () Bool)

(assert (=> b!39075 m!40281))

(declare-fun m!40283 () Bool)

(assert (=> b!39075 m!40283))

(declare-fun m!40285 () Bool)

(assert (=> b!39073 m!40285))

(assert (=> d!19856 m!40281))

(assert (=> d!19856 m!40283))

(declare-fun m!40287 () Bool)

(assert (=> b!39071 m!40287))

(declare-fun m!40289 () Bool)

(assert (=> b!39074 m!40289))

(assert (=> b!39023 d!19856))

(assert (=> bs!12039 d!19840))

(assert (=> bs!12039 d!19842))

(declare-fun d!19858 () Bool)

(assert (=> d!19858 (= (keepEvidence!12 (dynLambda!703 (evidence!513 prev!740))) true)))

(assert (=> b!39029 d!19858))

(assert (=> b!39025 d!19852))

(declare-fun b_lambda!10325 () Bool)

(assert (= b_lambda!10319 (or (and b!39031 b_free!3051 (= (x!13531 prev!740) (y!1400 prev!740))) (and b!39030 b_free!3063 (= (x!13531 x$104!2) (y!1400 prev!740))) (and b!39025 (= lambda!4688 (y!1400 prev!740))) (and b!39031 b_free!3053) (and b!39026 b_free!3059 (= (y!1400 thiss!6212) (y!1400 prev!740))) (and b!39026 b_free!3057 (= (x!13531 thiss!6212) (y!1400 prev!740))) (and b!39032 (= lambda!4685 (y!1400 prev!740))) (and b!39025 (= lambda!4687 (y!1400 prev!740))) (and b!39030 b_free!3065 (= (y!1400 x$104!2) (y!1400 prev!740))) b_lambda!10325)))

(assert (=> (and b!39032 (= lambda!4685 (y!1400 prev!740)) d!19846) d!19834))

(assert (=> (and b!39025 (= lambda!4687 (y!1400 prev!740)) d!19846) d!19836))

(assert (=> (and b!39025 (= lambda!4688 (y!1400 prev!740)) d!19846) d!19838))

(declare-fun b_lambda!10327 () Bool)

(assert (= b_lambda!10321 (or (and b!39031 b_free!3051 (= (x!13531 prev!740) (x!13531 thiss!6212))) (and b!39032 (= lambda!4685 (x!13531 thiss!6212))) (and b!39030 b_free!3065 (= (y!1400 x$104!2) (x!13531 thiss!6212))) (and b!39031 b_free!3053 (= (y!1400 prev!740) (x!13531 thiss!6212))) (and b!39025 (= lambda!4688 (x!13531 thiss!6212))) (and b!39026 b_free!3059 (= (y!1400 thiss!6212) (x!13531 thiss!6212))) (and b!39030 b_free!3063 (= (x!13531 x$104!2) (x!13531 thiss!6212))) (and b!39025 (= lambda!4687 (x!13531 thiss!6212))) (and b!39026 b_free!3057) b_lambda!10327)))

(assert (=> (and b!39032 (= lambda!4685 (x!13531 thiss!6212)) d!19848) d!19826))

(assert (=> (and b!39025 (= lambda!4688 (x!13531 thiss!6212)) d!19848) d!19828))

(assert (=> (and b!39025 (= lambda!4687 (x!13531 thiss!6212)) d!19848) d!19830))

(declare-fun b_lambda!10329 () Bool)

(assert (= b_lambda!10317 (or (and b!39031 b_free!3051) (and b!39026 b_free!3059 (= (y!1400 thiss!6212) (x!13531 prev!740))) (and b!39025 (= lambda!4687 (x!13531 prev!740))) (and b!39026 b_free!3057 (= (x!13531 thiss!6212) (x!13531 prev!740))) (and b!39025 (= lambda!4688 (x!13531 prev!740))) (and b!39030 b_free!3065 (= (y!1400 x$104!2) (x!13531 prev!740))) (and b!39030 b_free!3063 (= (x!13531 x$104!2) (x!13531 prev!740))) (and b!39031 b_free!3053 (= (y!1400 prev!740) (x!13531 prev!740))) (and b!39032 (= lambda!4685 (x!13531 prev!740))) b_lambda!10329)))

(declare-fun bs!12048 () Bool)

(declare-fun d!19860 () Bool)

(assert (= bs!12048 (and d!19860 b!39025)))

(assert (=> bs!12048 (= (dynLambda!704 lambda!4688) (tuple2!215 n1!316 n2!332))))

(assert (=> (and b!39025 (= lambda!4688 (x!13531 prev!740)) d!19846) d!19860))

(declare-fun bs!12049 () Bool)

(declare-fun d!19862 () Bool)

(assert (= bs!12049 (and d!19862 b!39025)))

(assert (=> bs!12049 (= (dynLambda!704 lambda!4687) (tuple2!215 p1!72 p2!66))))

(assert (=> (and b!39025 (= lambda!4687 (x!13531 prev!740)) d!19846) d!19862))

(declare-fun bs!12050 () Bool)

(declare-fun d!19864 () Bool)

(assert (= bs!12050 (and d!19864 b!39032)))

(assert (=> bs!12050 (= (dynLambda!704 lambda!4685) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!12050 m!40229))

(assert (=> bs!12050 m!40229))

(assert (=> bs!12050 m!40233))

(assert (=> (and b!39032 (= lambda!4685 (x!13531 prev!740)) d!19846) d!19864))

(declare-fun b_lambda!10331 () Bool)

(assert (= b_lambda!10315 (or (and b!39025 (= lambda!4688 (y!1400 x$104!2))) (and b!39031 b_free!3053 (= (y!1400 prev!740) (y!1400 x$104!2))) (and b!39031 b_free!3051 (= (x!13531 prev!740) (y!1400 x$104!2))) (and b!39026 b_free!3059 (= (y!1400 thiss!6212) (y!1400 x$104!2))) (and b!39030 b_free!3065) (and b!39025 (= lambda!4687 (y!1400 x$104!2))) (and b!39030 b_free!3063 (= (x!13531 x$104!2) (y!1400 x$104!2))) (and b!39032 (= lambda!4685 (y!1400 x$104!2))) (and b!39026 b_free!3057 (= (x!13531 thiss!6212) (y!1400 x$104!2))) b_lambda!10331)))

(declare-fun bs!12051 () Bool)

(declare-fun d!19866 () Bool)

(assert (= bs!12051 (and d!19866 b!39025)))

(assert (=> bs!12051 (= (dynLambda!704 lambda!4688) (tuple2!215 n1!316 n2!332))))

(assert (=> (and b!39025 (= lambda!4688 (y!1400 x$104!2)) d!19844) d!19866))

(declare-fun bs!12052 () Bool)

(declare-fun d!19868 () Bool)

(assert (= bs!12052 (and d!19868 b!39025)))

(assert (=> bs!12052 (= (dynLambda!704 lambda!4687) (tuple2!215 p1!72 p2!66))))

(assert (=> (and b!39025 (= lambda!4687 (y!1400 x$104!2)) d!19844) d!19868))

(declare-fun bs!12053 () Bool)

(declare-fun d!19870 () Bool)

(assert (= bs!12053 (and d!19870 b!39032)))

(assert (=> bs!12053 (= (dynLambda!704 lambda!4685) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!12053 m!40229))

(assert (=> bs!12053 m!40229))

(assert (=> bs!12053 m!40233))

(assert (=> (and b!39032 (= lambda!4685 (y!1400 x$104!2)) d!19844) d!19870))

(declare-fun b_lambda!10333 () Bool)

(assert (= b_lambda!10313 (or (and b!39030 b_free!3065 (= (y!1400 x$104!2) (x!13531 x$104!2))) (and b!39025 (= lambda!4688 (x!13531 x$104!2))) (and b!39026 b_free!3059 (= (y!1400 thiss!6212) (x!13531 x$104!2))) (and b!39026 b_free!3057 (= (x!13531 thiss!6212) (x!13531 x$104!2))) (and b!39025 (= lambda!4687 (x!13531 x$104!2))) (and b!39031 b_free!3051 (= (x!13531 prev!740) (x!13531 x$104!2))) (and b!39032 (= lambda!4685 (x!13531 x$104!2))) (and b!39031 b_free!3053 (= (y!1400 prev!740) (x!13531 x$104!2))) (and b!39030 b_free!3063) b_lambda!10333)))

(declare-fun bs!12054 () Bool)

(declare-fun d!19872 () Bool)

(assert (= bs!12054 (and d!19872 b!39032)))

(assert (=> bs!12054 (= (dynLambda!704 lambda!4685) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!12054 m!40229))

(assert (=> bs!12054 m!40229))

(assert (=> bs!12054 m!40233))

(assert (=> (and b!39032 (= lambda!4685 (x!13531 x$104!2)) d!19844) d!19872))

(declare-fun bs!12055 () Bool)

(declare-fun d!19874 () Bool)

(assert (= bs!12055 (and d!19874 b!39025)))

(assert (=> bs!12055 (= (dynLambda!704 lambda!4687) (tuple2!215 p1!72 p2!66))))

(assert (=> (and b!39025 (= lambda!4687 (x!13531 x$104!2)) d!19844) d!19874))

(declare-fun bs!12056 () Bool)

(declare-fun d!19876 () Bool)

(assert (= bs!12056 (and d!19876 b!39025)))

(assert (=> bs!12056 (= (dynLambda!704 lambda!4688) (tuple2!215 n1!316 n2!332))))

(assert (=> (and b!39025 (= lambda!4688 (x!13531 x$104!2)) d!19844) d!19876))

(declare-fun b_lambda!10335 () Bool)

(assert (= b_lambda!10323 (or (and b!39025 (= lambda!4687 (y!1400 thiss!6212))) (and b!39025 (= lambda!4688 (y!1400 thiss!6212))) (and b!39030 b_free!3065 (= (y!1400 x$104!2) (y!1400 thiss!6212))) (and b!39032 (= lambda!4685 (y!1400 thiss!6212))) (and b!39026 b_free!3059) (and b!39031 b_free!3051 (= (x!13531 prev!740) (y!1400 thiss!6212))) (and b!39030 b_free!3063 (= (x!13531 x$104!2) (y!1400 thiss!6212))) (and b!39026 b_free!3057 (= (x!13531 thiss!6212) (y!1400 thiss!6212))) (and b!39031 b_free!3053 (= (y!1400 prev!740) (y!1400 thiss!6212))) b_lambda!10335)))

(declare-fun bs!12057 () Bool)

(declare-fun d!19878 () Bool)

(assert (= bs!12057 (and d!19878 b!39032)))

(assert (=> bs!12057 (= (dynLambda!704 lambda!4685) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!12057 m!40229))

(assert (=> bs!12057 m!40229))

(assert (=> bs!12057 m!40233))

(assert (=> (and b!39032 (= lambda!4685 (y!1400 thiss!6212)) d!19848) d!19878))

(declare-fun bs!12058 () Bool)

(declare-fun d!19880 () Bool)

(assert (= bs!12058 (and d!19880 b!39025)))

(assert (=> bs!12058 (= (dynLambda!704 lambda!4687) (tuple2!215 p1!72 p2!66))))

(assert (=> (and b!39025 (= lambda!4687 (y!1400 thiss!6212)) d!19848) d!19880))

(declare-fun bs!12059 () Bool)

(declare-fun d!19882 () Bool)

(assert (= bs!12059 (and d!19882 b!39025)))

(assert (=> bs!12059 (= (dynLambda!704 lambda!4688) (tuple2!215 n1!316 n2!332))))

(assert (=> (and b!39025 (= lambda!4688 (y!1400 thiss!6212)) d!19848) d!19882))

(push 1)

(assert (not b!39045))

(assert (not d!19854))

(assert (not b_next!7673))

(assert (not b_next!7647))

(assert (not d!19840))

(assert (not d!19856))

(assert (not b!39071))

(assert (not b_lambda!10329))

(assert (not b_next!7649))

(assert (not b_next!7651))

(assert b_and!10741)

(assert (not bs!12053))

(assert (not b_lambda!10335))

(assert (not b_lambda!10327))

(assert b_and!10739)

(assert (not b!39043))

(assert (not b!39056))

(assert (not bs!12054))

(assert (not b_lambda!10309))

(assert (not b!39074))

(assert b_and!10745)

(assert (not b_next!7665))

(assert (not b_lambda!10333))

(assert (not b_lambda!10307))

(assert (not b!39057))

(assert (not b!39073))

(assert b_and!10743)

(assert (not b!39075))

(assert (not d!19842))

(assert (not b_lambda!10331))

(assert (not bs!12050))

(assert b_and!10747)

(assert (not b_next!7669))

(assert b_and!10677)

(assert (not b_lambda!10311))

(assert (not b_next!7671))

(assert b_and!10673)

(assert (not b_next!7675))

(assert b_and!10675)

(assert b_and!10749)

(assert (not b_lambda!10325))

(assert (not b!39058))

(assert (not bs!12057))

(assert (not b!39059))

(assert (not b_next!7667))

(assert (not d!19850))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!7673))

(assert (not b_next!7647))

(assert (not b_next!7649))

(assert (not b_next!7651))

(assert b_and!10741)

(assert b_and!10739)

(assert b_and!10745)

(assert (not b_next!7665))

(assert b_and!10743)

(assert b_and!10747)

(assert (not b_next!7669))

(assert b_and!10677)

(assert (not b_next!7671))

(assert b_and!10673)

(assert (not b_next!7675))

(assert b_and!10675)

(assert b_and!10749)

(assert (not b_next!7667))

(check-sat)

(pop 1)


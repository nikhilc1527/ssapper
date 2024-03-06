; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3220 () Bool)

(assert start!3220)

(declare-fun res!7391 () Bool)

(declare-fun e!9612 () Bool)

(assert (=> start!3220 (=> (not res!7391) (not e!9612))))

(declare-datatypes () ((T!1721 (T!1722 (val!33 Int)))))

(declare-datatypes () ((Conc!15 (CC!14 (left!659 Conc!15) (right!662 Conc!15)) (Single!14 (x!8729 T!1721)) (Empty!25))))

(declare-fun xs!584 () Conc!15)

(assert (=> start!3220 (= res!7391 (is-CC!14 xs!584))))

(assert (=> start!3220 e!9612))

(declare-fun e!9613 () Bool)

(assert (=> start!3220 e!9613))

(assert (=> start!3220 true))

(declare-fun b!17804 () Bool)

(declare-fun n!311 () Int)

(declare-datatypes () ((List!327 (Cons!321 (h!235 T!1721) (t!4315 List!327)) (Nil!322))))

(declare-fun appendTakeDrop!8 (List!327 List!327 Int) Bool)

(declare-fun toList!87 (Conc!15) List!327)

(assert (=> b!17804 (= e!9612 (not (appendTakeDrop!8 (toList!87 (left!659 xs!584)) (toList!87 (right!662 xs!584)) n!311)))))

(declare-fun b!17805 () Bool)

(declare-fun tp!4185 () Bool)

(declare-fun tp!4186 () Bool)

(assert (=> b!17805 (= e!9613 (and tp!4185 tp!4186))))

(declare-fun b!17806 () Bool)

(declare-fun tp_is_empty!65 () Bool)

(assert (=> b!17806 (= e!9613 tp_is_empty!65)))

(assert (= (and start!3220 res!7391) b!17804))

(assert (= (and start!3220 (is-CC!14 xs!584)) b!17805))

(assert (= (and start!3220 (is-Single!14 xs!584)) b!17806))

(declare-fun m!20945 () Bool)

(assert (=> b!17804 m!20945))

(declare-fun m!20947 () Bool)

(assert (=> b!17804 m!20947))

(assert (=> b!17804 m!20945))

(assert (=> b!17804 m!20947))

(declare-fun m!20949 () Bool)

(assert (=> b!17804 m!20949))

(push 1)

(assert (not b!17804))

(assert (not b!17805))

(assert tp_is_empty!65)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!17827 () Bool)

(declare-fun e!9626 () List!327)

(declare-fun ++!12 (List!327 List!327) List!327)

(declare-fun drop!10 (List!327 Int) List!327)

(assert (=> b!17827 (= e!9626 (++!12 (drop!10 (toList!87 (left!659 xs!584)) n!311) (toList!87 (right!662 xs!584))))))

(declare-fun b!17828 () Bool)

(declare-fun e!9628 () List!327)

(declare-fun take!12 (List!327 Int) List!327)

(assert (=> b!17828 (= e!9628 (take!12 (toList!87 (left!659 xs!584)) n!311))))

(declare-fun b!17829 () Bool)

(declare-fun e!9629 () List!327)

(assert (=> b!17829 (= e!9629 (toList!87 (left!659 xs!584)))))

(declare-fun b!17830 () Bool)

(declare-fun e!9627 () List!327)

(declare-fun size!198 (List!327) Int)

(assert (=> b!17830 (= e!9627 (drop!10 (toList!87 (right!662 xs!584)) (- n!311 (size!198 (toList!87 (left!659 xs!584))))))))

(declare-fun b!17831 () Bool)

(assert (=> b!17831 (= e!9629 (++!12 (toList!87 (left!659 xs!584)) (take!12 (toList!87 (right!662 xs!584)) (- n!311 (size!198 (toList!87 (left!659 xs!584)))))))))

(declare-fun b!17832 () Bool)

(assert (=> b!17832 (= e!9627 (toList!87 (right!662 xs!584)))))

(declare-fun d!12125 () Bool)

(declare-fun e!9630 () Bool)

(assert (=> d!12125 e!9630))

(declare-fun res!7403 () Bool)

(assert (=> d!12125 (=> (not res!7403) (not e!9630))))

(assert (=> d!12125 (= res!7403 (= (take!12 (++!12 (toList!87 (left!659 xs!584)) (toList!87 (right!662 xs!584))) n!311) e!9628))))

(declare-fun c!4560 () Bool)

(assert (=> d!12125 (= c!4560 (< n!311 (size!198 (toList!87 (left!659 xs!584)))))))

(declare-fun lt!2715 () Bool)

(declare-fun e!9631 () Bool)

(assert (=> d!12125 (= lt!2715 e!9631)))

(declare-fun res!7404 () Bool)

(assert (=> d!12125 (=> res!7404 e!9631)))

(assert (=> d!12125 (= res!7404 (or (is-Nil!322 (toList!87 (left!659 xs!584))) (<= n!311 0)))))

(assert (=> d!12125 (= (appendTakeDrop!8 (toList!87 (left!659 xs!584)) (toList!87 (right!662 xs!584)) n!311) true)))

(declare-fun b!17833 () Bool)

(assert (=> b!17833 (= e!9631 (appendTakeDrop!8 (t!4315 (toList!87 (left!659 xs!584))) (toList!87 (right!662 xs!584)) (- n!311 1)))))

(declare-fun b!17834 () Bool)

(assert (=> b!17834 (= e!9626 e!9627)))

(declare-fun c!4558 () Bool)

(assert (=> b!17834 (= c!4558 (> n!311 (size!198 (toList!87 (left!659 xs!584)))))))

(declare-fun b!17835 () Bool)

(assert (=> b!17835 (= e!9628 e!9629)))

(declare-fun c!4559 () Bool)

(assert (=> b!17835 (= c!4559 (> n!311 (size!198 (toList!87 (left!659 xs!584)))))))

(declare-fun b!17836 () Bool)

(assert (=> b!17836 (= e!9630 (= (drop!10 (++!12 (toList!87 (left!659 xs!584)) (toList!87 (right!662 xs!584))) n!311) e!9626))))

(declare-fun c!4561 () Bool)

(assert (=> b!17836 (= c!4561 (< n!311 (size!198 (toList!87 (left!659 xs!584)))))))

(assert (= (and d!12125 (not res!7404)) b!17833))

(assert (= (and b!17835 c!4559) b!17831))

(assert (= (and b!17835 (not c!4559)) b!17829))

(assert (= (and d!12125 c!4560) b!17828))

(assert (= (and d!12125 (not c!4560)) b!17835))

(assert (= (and d!12125 res!7403) b!17836))

(assert (= (and b!17834 c!4558) b!17830))

(assert (= (and b!17834 (not c!4558)) b!17832))

(assert (= (and b!17836 c!4561) b!17827))

(assert (= (and b!17836 (not c!4561)) b!17834))

(assert (=> d!12125 m!20945))

(assert (=> d!12125 m!20947))

(declare-fun m!20951 () Bool)

(assert (=> d!12125 m!20951))

(assert (=> d!12125 m!20951))

(declare-fun m!20953 () Bool)

(assert (=> d!12125 m!20953))

(assert (=> d!12125 m!20945))

(declare-fun m!20955 () Bool)

(assert (=> d!12125 m!20955))

(assert (=> b!17833 m!20947))

(declare-fun m!20957 () Bool)

(assert (=> b!17833 m!20957))

(assert (=> b!17828 m!20945))

(declare-fun m!20959 () Bool)

(assert (=> b!17828 m!20959))

(assert (=> b!17831 m!20945))

(assert (=> b!17831 m!20955))

(assert (=> b!17831 m!20947))

(declare-fun m!20961 () Bool)

(assert (=> b!17831 m!20961))

(assert (=> b!17831 m!20945))

(assert (=> b!17831 m!20961))

(declare-fun m!20963 () Bool)

(assert (=> b!17831 m!20963))

(assert (=> b!17827 m!20945))

(declare-fun m!20965 () Bool)

(assert (=> b!17827 m!20965))

(assert (=> b!17827 m!20965))

(assert (=> b!17827 m!20947))

(declare-fun m!20967 () Bool)

(assert (=> b!17827 m!20967))

(assert (=> b!17835 m!20945))

(assert (=> b!17835 m!20955))

(assert (=> b!17830 m!20945))

(assert (=> b!17830 m!20955))

(assert (=> b!17830 m!20947))

(declare-fun m!20969 () Bool)

(assert (=> b!17830 m!20969))

(assert (=> b!17836 m!20945))

(assert (=> b!17836 m!20947))

(assert (=> b!17836 m!20951))

(assert (=> b!17836 m!20951))

(declare-fun m!20971 () Bool)

(assert (=> b!17836 m!20971))

(assert (=> b!17836 m!20945))

(assert (=> b!17836 m!20955))

(assert (=> b!17834 m!20945))

(assert (=> b!17834 m!20955))

(assert (=> b!17804 d!12125))

(declare-fun b!17848 () Bool)

(declare-fun e!9636 () List!327)

(assert (=> b!17848 (= e!9636 (++!12 (toList!87 (left!659 (left!659 xs!584))) (toList!87 (right!662 (left!659 xs!584)))))))

(declare-fun d!12127 () Bool)

(declare-fun lt!2718 () List!327)

(declare-fun size!199 (Conc!15) Int)

(assert (=> d!12127 (= (size!198 lt!2718) (size!199 (left!659 xs!584)))))

(declare-fun e!9637 () List!327)

(assert (=> d!12127 (= lt!2718 e!9637)))

(declare-fun c!4567 () Bool)

(assert (=> d!12127 (= c!4567 (is-Empty!25 (left!659 xs!584)))))

(assert (=> d!12127 (= (toList!87 (left!659 xs!584)) lt!2718)))

(declare-fun b!17846 () Bool)

(assert (=> b!17846 (= e!9637 e!9636)))

(declare-fun c!4566 () Bool)

(assert (=> b!17846 (= c!4566 (is-Single!14 (left!659 xs!584)))))

(declare-fun b!17845 () Bool)

(assert (=> b!17845 (= e!9637 Nil!322)))

(declare-fun b!17847 () Bool)

(assert (=> b!17847 (= e!9636 (Cons!321 (x!8729 (left!659 xs!584)) Nil!322))))

(assert (= (and b!17846 c!4566) b!17847))

(assert (= (and b!17846 (not c!4566)) b!17848))

(assert (= (and d!12127 c!4567) b!17845))

(assert (= (and d!12127 (not c!4567)) b!17846))

(declare-fun m!20973 () Bool)

(assert (=> b!17848 m!20973))

(declare-fun m!20975 () Bool)

(assert (=> b!17848 m!20975))

(assert (=> b!17848 m!20973))

(assert (=> b!17848 m!20975))

(declare-fun m!20977 () Bool)

(assert (=> b!17848 m!20977))

(declare-fun m!20979 () Bool)

(assert (=> d!12127 m!20979))

(declare-fun m!20981 () Bool)

(assert (=> d!12127 m!20981))

(assert (=> b!17804 d!12127))

(declare-fun b!17852 () Bool)

(declare-fun e!9638 () List!327)

(assert (=> b!17852 (= e!9638 (++!12 (toList!87 (left!659 (right!662 xs!584))) (toList!87 (right!662 (right!662 xs!584)))))))

(declare-fun d!12129 () Bool)

(declare-fun lt!2719 () List!327)

(assert (=> d!12129 (= (size!198 lt!2719) (size!199 (right!662 xs!584)))))

(declare-fun e!9639 () List!327)

(assert (=> d!12129 (= lt!2719 e!9639)))

(declare-fun c!4569 () Bool)

(assert (=> d!12129 (= c!4569 (is-Empty!25 (right!662 xs!584)))))

(assert (=> d!12129 (= (toList!87 (right!662 xs!584)) lt!2719)))

(declare-fun b!17850 () Bool)

(assert (=> b!17850 (= e!9639 e!9638)))

(declare-fun c!4568 () Bool)

(assert (=> b!17850 (= c!4568 (is-Single!14 (right!662 xs!584)))))

(declare-fun b!17849 () Bool)

(assert (=> b!17849 (= e!9639 Nil!322)))

(declare-fun b!17851 () Bool)

(assert (=> b!17851 (= e!9638 (Cons!321 (x!8729 (right!662 xs!584)) Nil!322))))

(assert (= (and b!17850 c!4568) b!17851))

(assert (= (and b!17850 (not c!4568)) b!17852))

(assert (= (and d!12129 c!4569) b!17849))

(assert (= (and d!12129 (not c!4569)) b!17850))

(declare-fun m!20983 () Bool)

(assert (=> b!17852 m!20983))

(declare-fun m!20985 () Bool)

(assert (=> b!17852 m!20985))

(assert (=> b!17852 m!20983))

(assert (=> b!17852 m!20985))

(declare-fun m!20987 () Bool)

(assert (=> b!17852 m!20987))

(declare-fun m!20989 () Bool)

(assert (=> d!12129 m!20989))

(declare-fun m!20991 () Bool)

(assert (=> d!12129 m!20991))

(assert (=> b!17804 d!12129))

(declare-fun b!17859 () Bool)

(declare-fun e!9642 () Bool)

(declare-fun tp!4191 () Bool)

(declare-fun tp!4192 () Bool)

(assert (=> b!17859 (= e!9642 (and tp!4191 tp!4192))))

(declare-fun b!17860 () Bool)

(assert (=> b!17860 (= e!9642 tp_is_empty!65)))

(assert (=> b!17805 (= tp!4185 e!9642)))

(assert (= (and b!17805 (is-CC!14 (left!659 xs!584))) b!17859))

(assert (= (and b!17805 (is-Single!14 (left!659 xs!584))) b!17860))

(declare-fun b!17861 () Bool)

(declare-fun e!9643 () Bool)

(declare-fun tp!4193 () Bool)

(declare-fun tp!4194 () Bool)

(assert (=> b!17861 (= e!9643 (and tp!4193 tp!4194))))

(declare-fun b!17862 () Bool)

(assert (=> b!17862 (= e!9643 tp_is_empty!65)))

(assert (=> b!17805 (= tp!4186 e!9643)))

(assert (= (and b!17805 (is-CC!14 (right!662 xs!584))) b!17861))

(assert (= (and b!17805 (is-Single!14 (right!662 xs!584))) b!17862))

(push 1)

(assert (not b!17836))

(assert (not d!12129))

(assert (not b!17835))

(assert (not d!12125))

(assert (not d!12127))

(assert (not b!17852))

(assert (not b!17859))

(assert (not b!17827))

(assert (not b!17831))

(assert (not b!17828))

(assert tp_is_empty!65)

(assert (not b!17833))

(assert (not b!17834))

(assert (not b!17830))

(assert (not b!17861))

(assert (not b!17848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


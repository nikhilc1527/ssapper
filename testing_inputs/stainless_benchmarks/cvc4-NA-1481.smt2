; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10116 () Bool)

(assert start!10116)

(declare-fun b_free!7321 () Bool)

(declare-fun b_next!39097 () Bool)

(assert (=> start!10116 (= b_free!7321 (not b_next!39097))))

(declare-fun tp!16894 () Bool)

(declare-fun b_and!58767 () Bool)

(assert (=> start!10116 (= tp!16894 b_and!58767)))

(declare-fun b!72949 () Bool)

(declare-fun res!35633 () Bool)

(declare-fun e!39418 () Bool)

(assert (=> b!72949 (=> (not res!35633) (not e!39418))))

(declare-fun nh!3 () Int)

(declare-fun fh!3 () Int)

(assert (=> b!72949 (= res!35633 (= nh!3 (ite (<= fh!3 0) (- fh!3) fh!3)))))

(declare-fun b!72951 () Bool)

(declare-datatypes () ((List!631 (Cons!592 (head!1021 Int) (tail!1042 List!631)) (Nil!594))))

(declare-fun res!35618 () List!631)

(declare-fun positive!1 (List!631) Bool)

(assert (=> b!72951 (= e!39418 (not (positive!1 res!35618)))))

(declare-fun res!35635 () Bool)

(assert (=> start!10116 (=> (not res!35635) (not e!39418))))

(declare-fun list!955 () List!631)

(assert (=> start!10116 (= res!35635 (is-Cons!592 list!955))))

(assert (=> start!10116 e!39418))

(assert (=> start!10116 true))

(assert (=> start!10116 tp!16894))

(declare-fun b!72948 () Bool)

(declare-fun res!35632 () Bool)

(assert (=> b!72948 (=> (not res!35632) (not e!39418))))

(declare-fun f!4401 () Int)

(declare-fun dynLambda!965 (Int Int) Int)

(assert (=> b!72948 (= res!35632 (= fh!3 (dynLambda!965 f!4401 (head!1021 list!955))))))

(declare-fun b!72950 () Bool)

(declare-fun res!35634 () Bool)

(assert (=> b!72950 (=> (not res!35634) (not e!39418))))

(declare-fun positiveMap_passing_1!1 (Int List!631) List!631)

(assert (=> b!72950 (= res!35634 (= res!35618 (Cons!592 nh!3 (positiveMap_passing_1!1 f!4401 (tail!1042 list!955)))))))

(assert (= (and start!10116 res!35635) b!72948))

(assert (= (and b!72948 res!35632) b!72949))

(assert (= (and b!72949 res!35633) b!72950))

(assert (= (and b!72950 res!35634) b!72951))

(declare-fun b_lambda!15813 () Bool)

(assert (=> (not b_lambda!15813) (not b!72948)))

(declare-fun t!47536 () Bool)

(declare-fun tb!46153 () Bool)

(assert (=> (and start!10116 (= f!4401 f!4401) t!47536) tb!46153))

(declare-fun result!46583 () Bool)

(assert (=> tb!46153 (= result!46583 true)))

(assert (=> b!72948 t!47536))

(declare-fun b_and!58769 () Bool)

(assert (= b_and!58767 (and (=> t!47536 result!46583) b_and!58769)))

(declare-fun m!72674 () Bool)

(assert (=> b!72951 m!72674))

(declare-fun m!72676 () Bool)

(assert (=> b!72948 m!72676))

(declare-fun m!72678 () Bool)

(assert (=> b!72950 m!72678))

(push 1)

(assert (not b!72951))

(assert (not b_lambda!15813))

(assert (not b_next!39097))

(assert (not b!72950))

(assert b_and!58769)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58769)

(assert (not b_next!39097))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15815 () Bool)

(assert (= b_lambda!15813 (or (and start!10116 b_free!7321) b_lambda!15815)))

(push 1)

(assert (not b!72951))

(assert (not b_next!39097))

(assert (not b!72950))

(assert (not b_lambda!15815))

(assert b_and!58769)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58769)

(assert (not b_next!39097))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54715 () Bool)

(declare-fun res!35640 () Bool)

(declare-fun e!39423 () Bool)

(assert (=> d!54715 (=> res!35640 e!39423)))

(assert (=> d!54715 (= res!35640 (not (is-Cons!592 res!35618)))))

(assert (=> d!54715 (= (positive!1 res!35618) e!39423)))

(declare-fun b!72956 () Bool)

(declare-fun e!39424 () Bool)

(assert (=> b!72956 (= e!39423 e!39424)))

(declare-fun res!35641 () Bool)

(assert (=> b!72956 (=> (not res!35641) (not e!39424))))

(assert (=> b!72956 (= res!35641 (not (< (head!1021 res!35618) 0)))))

(declare-fun b!72957 () Bool)

(assert (=> b!72957 (= e!39424 (positive!1 (tail!1042 res!35618)))))

(assert (= (and d!54715 (not res!35640)) b!72956))

(assert (= (and b!72956 res!35641) b!72957))

(declare-fun m!72680 () Bool)

(assert (=> b!72957 m!72680))

(assert (=> b!72951 d!54715))

(declare-fun lt!15495 () Int)

(declare-fun e!39427 () List!631)

(declare-fun b!72962 () Bool)

(assert (=> b!72962 (= e!39427 (Cons!592 (ite (<= lt!15495 0) (- lt!15495) lt!15495) (positiveMap_passing_1!1 f!4401 (tail!1042 (tail!1042 list!955)))))))

(assert (=> b!72962 (= lt!15495 (dynLambda!965 f!4401 (head!1021 (tail!1042 list!955))))))

(declare-fun d!54717 () Bool)

(declare-fun lt!15494 () List!631)

(assert (=> d!54717 (positive!1 lt!15494)))

(assert (=> d!54717 (= lt!15494 e!39427)))

(declare-fun c!17590 () Bool)

(assert (=> d!54717 (= c!17590 (is-Cons!592 (tail!1042 list!955)))))

(assert (=> d!54717 (= (positiveMap_passing_1!1 f!4401 (tail!1042 list!955)) lt!15494)))

(declare-fun b!72963 () Bool)

(assert (=> b!72963 (= e!39427 Nil!594)))

(assert (= (and d!54717 c!17590) b!72962))

(assert (= (and d!54717 (not c!17590)) b!72963))

(declare-fun b_lambda!15817 () Bool)

(assert (=> (not b_lambda!15817) (not b!72962)))

(declare-fun t!47538 () Bool)

(declare-fun tb!46155 () Bool)

(assert (=> (and start!10116 (= f!4401 f!4401) t!47538) tb!46155))

(declare-fun result!46585 () Bool)

(assert (=> tb!46155 (= result!46585 true)))

(assert (=> b!72962 t!47538))

(declare-fun b_and!58771 () Bool)

(assert (= b_and!58769 (and (=> t!47538 result!46585) b_and!58771)))

(declare-fun m!72682 () Bool)

(assert (=> b!72962 m!72682))

(declare-fun m!72684 () Bool)

(assert (=> b!72962 m!72684))

(declare-fun m!72686 () Bool)

(assert (=> d!54717 m!72686))

(assert (=> b!72950 d!54717))

(declare-fun b_lambda!15819 () Bool)

(assert (= b_lambda!15817 (or (and start!10116 b_free!7321) b_lambda!15819)))

(push 1)

(assert (not b!72962))

(assert (not b_next!39097))

(assert (not b!72957))

(assert b_and!58771)

(assert (not b_lambda!15815))

(assert (not b_lambda!15819))

(assert (not d!54717))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58771)

(assert (not b_next!39097))

(check-sat)

(pop 1)


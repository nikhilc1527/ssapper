; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12172 () Bool)

(assert start!12172)

(declare-fun lt!20530 () Bool)

(declare-datatypes () ((A!3913 (A!3914 (val!232 Int)))))

(declare-datatypes () ((List!770 (Cons!719 (h!1145 A!3913) (t!49057 List!770)) (Nil!721))))

(declare-fun l!1713 () List!770)

(declare-fun x!804 () A!3913)

(declare-fun contains!66 (List!770 A!3913) Bool)

(assert (=> start!12172 (= lt!20530 (contains!66 l!1713 x!804))))

(assert (=> start!12172 false))

(declare-fun e!49687 () Bool)

(assert (=> start!12172 e!49687))

(declare-fun tp_is_empty!469 () Bool)

(assert (=> start!12172 tp_is_empty!469))

(declare-fun b!90934 () Bool)

(declare-fun tp!17916 () Bool)

(assert (=> b!90934 (= e!49687 (and tp_is_empty!469 tp!17916))))

(assert (= (and start!12172 (is-Cons!719 l!1713)) b!90934))

(declare-fun m!86756 () Bool)

(assert (=> start!12172 m!86756))

(push 1)

(assert (not start!12172))

(assert (not b!90934))

(assert tp_is_empty!469)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


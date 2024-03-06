; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6194 () Bool)

(assert start!6194)

(declare-fun res!21704 () Bool)

(declare-fun e!23825 () Bool)

(assert (=> start!6194 (=> (not res!21704) (not e!23825))))

(declare-datatypes () ((Nat!184 (Zero!168) (Succ!165 (n!1319 Nat!184)))))

(declare-fun n!591 () Nat!184)

(assert (=> start!6194 (= res!21704 (not (is-Zero!168 n!591)))))

(assert (=> start!6194 e!23825))

(assert (=> start!6194 true))

(declare-fun b!45921 () Bool)

(declare-fun res!21705 () Bool)

(assert (=> b!45921 (=> (not res!21705) (not e!23825))))

(declare-datatypes () ((Unit!578 (Unit!579))))

(declare-fun inductVal!88 () Unit!578)

(declare-fun minus_identity!0 (Nat!184) Unit!578)

(assert (=> b!45921 (= res!21705 (= inductVal!88 (minus_identity!0 (n!1319 n!591))))))

(declare-fun b!45922 () Bool)

(declare-fun res!21706 () Bool)

(assert (=> b!45922 (=> (not res!21706) (not e!23825))))

(declare-fun x$5!56 () Unit!578)

(declare-fun Unit!580 () Unit!578)

(assert (=> b!45922 (= res!21706 (= x$5!56 Unit!580))))

(declare-fun b!45923 () Bool)

(declare-fun -!4 (Nat!184 Nat!184) Nat!184)

(assert (=> b!45923 (= e!23825 (not (= (-!4 n!591 n!591) Zero!168)))))

(assert (= (and start!6194 res!21704) b!45921))

(assert (= (and b!45921 res!21705) b!45922))

(assert (= (and b!45922 res!21706) b!45923))

(declare-fun m!48805 () Bool)

(assert (=> b!45921 m!48805))

(declare-fun m!48807 () Bool)

(assert (=> b!45923 m!48807))

(push 1)

(assert (not b!45921))

(assert (not b!45923))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!45929 () Bool)

(declare-fun e!23828 () Unit!578)

(declare-fun Unit!581 () Unit!578)

(assert (=> b!45929 (= e!23828 Unit!581)))

(declare-fun lt!8369 () Unit!578)

(assert (=> b!45929 (= lt!8369 (minus_identity!0 (n!1319 (n!1319 n!591))))))

(declare-fun d!32064 () Bool)

(assert (=> d!32064 (= (-!4 (n!1319 n!591) (n!1319 n!591)) Zero!168)))

(declare-fun lt!8368 () Unit!578)

(assert (=> d!32064 (= lt!8368 e!23828)))

(declare-fun c!9707 () Bool)

(assert (=> d!32064 (= c!9707 (is-Zero!168 (n!1319 n!591)))))

(assert (=> d!32064 (= (minus_identity!0 (n!1319 n!591)) lt!8368)))

(declare-fun b!45928 () Bool)

(declare-fun Unit!582 () Unit!578)

(assert (=> b!45928 (= e!23828 Unit!582)))

(assert (= (and d!32064 c!9707) b!45928))

(assert (= (and d!32064 (not c!9707)) b!45929))

(declare-fun m!48809 () Bool)

(assert (=> b!45929 m!48809))

(declare-fun m!48811 () Bool)

(assert (=> d!32064 m!48811))

(assert (=> b!45921 d!32064))

(declare-fun b!45940 () Bool)

(declare-fun res!21716 () Bool)

(declare-fun e!23835 () Bool)

(assert (=> b!45940 (=> res!21716 e!23835)))

(declare-fun >!2 (Nat!184 Nat!184) Bool)

(assert (=> b!45940 (= res!21716 (not (>!2 n!591 Zero!168)))))

(declare-fun b!45941 () Bool)

(declare-fun e!23836 () Nat!184)

(assert (=> b!45941 (= e!23836 (-!4 (n!1319 n!591) (n!1319 n!591)))))

(declare-fun b!45942 () Bool)

(declare-fun e!23837 () Bool)

(assert (=> b!45942 (= e!23837 e!23835)))

(declare-fun res!21714 () Bool)

(assert (=> b!45942 (=> res!21714 e!23835)))

(assert (=> b!45942 (= res!21714 (not (>!2 n!591 Zero!168)))))

(declare-fun b!45943 () Bool)

(declare-fun lt!8372 () Nat!184)

(declare-fun repr!0 (Nat!184) Int)

(assert (=> b!45943 (= e!23835 (< (repr!0 lt!8372) (repr!0 n!591)))))

(declare-fun b!45944 () Bool)

(assert (=> b!45944 (= e!23836 n!591)))

(declare-fun d!32066 () Bool)

(assert (=> d!32066 e!23837))

(declare-fun res!21715 () Bool)

(assert (=> d!32066 (=> (not res!21715) (not e!23837))))

(assert (=> d!32066 (= res!21715 (<= (repr!0 lt!8372) (repr!0 n!591)))))

(assert (=> d!32066 (= lt!8372 e!23836)))

(declare-fun c!9710 () Bool)

(assert (=> d!32066 (= c!9710 (and (is-Succ!165 n!591) (is-Succ!165 n!591)))))

(assert (=> d!32066 (= (-!4 n!591 n!591) lt!8372)))

(assert (= (and d!32066 c!9710) b!45941))

(assert (= (and d!32066 (not c!9710)) b!45944))

(assert (= (and d!32066 res!21715) b!45942))

(assert (= (and b!45942 (not res!21714)) b!45940))

(assert (= (and b!45940 (not res!21716)) b!45943))

(declare-fun m!48813 () Bool)

(assert (=> b!45943 m!48813))

(declare-fun m!48815 () Bool)

(assert (=> b!45943 m!48815))

(declare-fun m!48817 () Bool)

(assert (=> b!45942 m!48817))

(assert (=> b!45940 m!48817))

(assert (=> b!45941 m!48811))

(assert (=> d!32066 m!48813))

(assert (=> d!32066 m!48815))

(assert (=> b!45923 d!32066))

(push 1)

(assert (not b!45942))

(assert (not b!45943))

(assert (not d!32066))

(assert (not b!45940))

(assert (not d!32064))

(assert (not b!45929))

(assert (not b!45941))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


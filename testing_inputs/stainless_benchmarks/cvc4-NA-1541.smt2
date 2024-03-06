; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10420 () Bool)

(assert start!10420)

(declare-fun res!39706 () Bool)

(declare-fun e!42632 () Bool)

(assert (=> start!10420 (=> (not res!39706) (not e!42632))))

(declare-datatypes () ((Formula!110 (Implies!114 (lhs!1443 Formula!110) (rhs!1443 Formula!110)) (And!114 (lhs!1444 Formula!110) (rhs!1444 Formula!110)) (Or!114 (lhs!1445 Formula!110) (rhs!1445 Formula!110)) (Literal!108 (id!4971 (_ BitVec 32))) (Not!114 (f!4765 Formula!110)))))

(declare-fun formula!94 () Formula!110)

(assert (=> start!10420 (= res!39706 (and (not (is-And!114 formula!94)) (not (is-Or!114 formula!94)) (not (is-Implies!114 formula!94)) (or (not (is-Not!114 formula!94)) (not (is-And!114 (f!4765 formula!94)))) (or (not (is-Not!114 formula!94)) (not (is-Or!114 (f!4765 formula!94)))) (or (not (is-Not!114 formula!94)) (not (is-Implies!114 (f!4765 formula!94)))) (is-Not!114 formula!94) (is-Not!114 (f!4765 formula!94))))))

(assert (=> start!10420 e!42632))

(assert (=> start!10420 true))

(declare-fun b!78871 () Bool)

(declare-fun res!39707 () Bool)

(assert (=> b!78871 (=> (not res!39707) (not e!42632))))

(declare-fun x$2!431 () Formula!110)

(declare-fun nnf!0 (Formula!110) Formula!110)

(assert (=> b!78871 (= res!39707 (= x$2!431 (nnf!0 (f!4765 (f!4765 formula!94)))))))

(declare-fun b!78872 () Bool)

(declare-fun isNNF!0 (Formula!110) Bool)

(assert (=> b!78872 (= e!42632 (not (isNNF!0 x$2!431)))))

(assert (= (and start!10420 res!39706) b!78871))

(assert (= (and b!78871 res!39707) b!78872))

(declare-fun m!73628 () Bool)

(assert (=> b!78871 m!73628))

(declare-fun m!73630 () Bool)

(assert (=> b!78872 m!73630))

(push 1)

(assert (not b!78871))

(assert (not b!78872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!78937 () Bool)

(declare-fun e!42674 () Formula!110)

(declare-fun lt!18111 () Bool)

(assert (=> b!78937 (= e!42674 (nnf!0 (ite lt!18111 (lhs!1444 (f!4765 (f!4765 formula!94))) (ite (is-Or!114 (f!4765 (f!4765 formula!94))) (lhs!1445 (f!4765 (f!4765 formula!94))) (ite (is-Implies!114 (f!4765 (f!4765 formula!94))) (lhs!1443 (f!4765 (f!4765 formula!94))) (ite (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-And!114 (f!4765 (f!4765 (f!4765 formula!94))))) (Not!114 (lhs!1444 (f!4765 (f!4765 (f!4765 formula!94))))) (ite (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Or!114 (f!4765 (f!4765 (f!4765 formula!94))))) (Not!114 (lhs!1445 (f!4765 (f!4765 (f!4765 formula!94))))) (ite (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Implies!114 (f!4765 (f!4765 (f!4765 formula!94))))) (lhs!1443 (f!4765 (f!4765 (f!4765 formula!94)))) (f!4765 (f!4765 (f!4765 (f!4765 formula!94))))))))))))))

(declare-fun b!78938 () Bool)

(declare-fun e!42678 () Formula!110)

(declare-fun e!42669 () Formula!110)

(assert (=> b!78938 (= e!42678 e!42669)))

(declare-fun c!20055 () Bool)

(declare-fun lt!18101 () Bool)

(assert (=> b!78938 (= c!20055 lt!18101)))

(declare-fun lt!18103 () Formula!110)

(declare-fun e!42675 () Formula!110)

(assert (=> b!78938 (= lt!18103 e!42675)))

(declare-fun c!20050 () Bool)

(assert (=> b!78938 (= c!20050 (or lt!18101 (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-And!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Or!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Implies!114 (f!4765 (f!4765 (f!4765 formula!94)))))))))

(declare-fun lt!18099 () Formula!110)

(declare-fun e!42665 () Formula!110)

(assert (=> b!78938 (= lt!18099 e!42665)))

(declare-fun c!20059 () Bool)

(assert (=> b!78938 (= c!20059 (or lt!18101 (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-And!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Or!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Implies!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Not!114 (f!4765 (f!4765 (f!4765 formula!94)))))))))

(assert (=> b!78938 (= lt!18101 (is-Implies!114 (f!4765 (f!4765 formula!94))))))

(declare-fun b!78939 () Bool)

(declare-fun res!39769 () Formula!110)

(assert (=> b!78939 (= e!42675 res!39769)))

(assert (=> b!78939 true))

(declare-fun b!78940 () Bool)

(declare-fun e!42679 () Formula!110)

(declare-fun lt!18109 () Formula!110)

(declare-fun lt!18115 () Formula!110)

(assert (=> b!78940 (= e!42679 (And!114 lt!18109 lt!18115))))

(declare-fun b!78941 () Bool)

(declare-fun e!42672 () Formula!110)

(declare-fun lt!18116 () Formula!110)

(assert (=> b!78941 (= e!42672 lt!18116)))

(declare-fun b!78942 () Bool)

(declare-fun lt!18112 () Formula!110)

(declare-fun lt!18100 () Formula!110)

(assert (=> b!78942 (= e!42678 (Or!114 lt!18112 lt!18100))))

(declare-fun b!78943 () Bool)

(declare-fun lt!18104 () Bool)

(declare-fun lt!18102 () Formula!110)

(assert (=> b!78943 (= e!42679 (ite lt!18104 (And!114 lt!18102 lt!18115) (ite (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Not!114 (f!4765 (f!4765 (f!4765 formula!94))))) lt!18102 (f!4765 (f!4765 formula!94)))))))

(declare-fun e!42668 () Formula!110)

(assert (=> b!78943 (= lt!18102 e!42668)))

(declare-fun c!20061 () Bool)

(assert (=> b!78943 (= c!20061 (or lt!18104 (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Not!114 (f!4765 (f!4765 (f!4765 formula!94)))))))))

(assert (=> b!78943 (= lt!18104 (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Implies!114 (f!4765 (f!4765 (f!4765 formula!94))))))))

(declare-fun b!78944 () Bool)

(declare-fun e!42673 () Formula!110)

(assert (=> b!78944 (= e!42673 lt!18099)))

(declare-fun b!78945 () Bool)

(declare-fun e!42680 () Formula!110)

(declare-fun lt!18107 () Formula!110)

(assert (=> b!78945 (= e!42680 lt!18107)))

(declare-fun b!78946 () Bool)

(declare-fun res!39764 () Formula!110)

(assert (=> b!78946 (= e!42665 res!39764)))

(assert (=> b!78946 true))

(declare-fun d!54999 () Bool)

(declare-fun lt!18105 () Formula!110)

(assert (=> d!54999 (isNNF!0 lt!18105)))

(declare-fun e!42667 () Formula!110)

(assert (=> d!54999 (= lt!18105 e!42667)))

(declare-fun c!20052 () Bool)

(assert (=> d!54999 (= c!20052 lt!18111)))

(declare-fun lt!18108 () Formula!110)

(declare-fun e!42670 () Formula!110)

(assert (=> d!54999 (= lt!18108 e!42670)))

(declare-fun c!20065 () Bool)

(assert (=> d!54999 (= c!20065 (or lt!18111 (is-Or!114 (f!4765 (f!4765 formula!94))) (is-Implies!114 (f!4765 (f!4765 formula!94))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-And!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Or!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Implies!114 (f!4765 (f!4765 (f!4765 formula!94)))))))))

(assert (=> d!54999 (= lt!18107 e!42674)))

(declare-fun c!20062 () Bool)

(assert (=> d!54999 (= c!20062 (or lt!18111 (is-Or!114 (f!4765 (f!4765 formula!94))) (is-Implies!114 (f!4765 (f!4765 formula!94))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-And!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Or!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Implies!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Not!114 (f!4765 (f!4765 (f!4765 formula!94)))))))))

(assert (=> d!54999 (= lt!18111 (is-And!114 (f!4765 (f!4765 formula!94))))))

(assert (=> d!54999 (= (nnf!0 (f!4765 (f!4765 formula!94))) lt!18105)))

(declare-fun b!78947 () Bool)

(declare-fun e!42676 () Formula!110)

(declare-fun res!39766 () Formula!110)

(assert (=> b!78947 (= e!42676 res!39766)))

(assert (=> b!78947 true))

(declare-fun b!78948 () Bool)

(assert (=> b!78948 (= e!42669 (Implies!114 lt!18099 lt!18103))))

(declare-fun b!78949 () Bool)

(declare-fun e!42666 () Formula!110)

(assert (=> b!78949 (= e!42666 lt!18103)))

(declare-fun b!78950 () Bool)

(declare-fun e!42671 () Formula!110)

(declare-fun res!39772 () Formula!110)

(assert (=> b!78950 (= e!42671 res!39772)))

(assert (=> b!78950 true))

(declare-fun b!78951 () Bool)

(assert (=> b!78951 (= e!42667 (And!114 lt!18107 lt!18108))))

(declare-fun b!78952 () Bool)

(assert (=> b!78952 (= e!42671 lt!18108)))

(declare-fun b!78953 () Bool)

(assert (=> b!78953 (= e!42668 lt!18109)))

(declare-fun b!78954 () Bool)

(declare-fun lt!18110 () Formula!110)

(assert (=> b!78954 (= e!42676 lt!18110)))

(declare-fun b!78955 () Bool)

(assert (=> b!78955 (= e!42667 e!42678)))

(declare-fun c!20057 () Bool)

(declare-fun lt!18113 () Bool)

(assert (=> b!78955 (= c!20057 lt!18113)))

(assert (=> b!78955 (= lt!18100 e!42671)))

(declare-fun c!20064 () Bool)

(assert (=> b!78955 (= c!20064 (or lt!18113 (is-Implies!114 (f!4765 (f!4765 formula!94))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-And!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Or!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Implies!114 (f!4765 (f!4765 (f!4765 formula!94)))))))))

(assert (=> b!78955 (= lt!18112 e!42680)))

(declare-fun c!20054 () Bool)

(assert (=> b!78955 (= c!20054 (or lt!18113 (is-Implies!114 (f!4765 (f!4765 formula!94))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-And!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Or!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Implies!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Not!114 (f!4765 (f!4765 (f!4765 formula!94)))))))))

(assert (=> b!78955 (= lt!18113 (is-Or!114 (f!4765 (f!4765 formula!94))))))

(declare-fun b!78956 () Bool)

(declare-fun res!39768 () Formula!110)

(assert (=> b!78956 (= e!42668 res!39768)))

(assert (=> b!78956 true))

(assert (=> b!78956 true))

(declare-fun b!78957 () Bool)

(declare-fun res!39770 () Formula!110)

(assert (=> b!78957 (= e!42666 res!39770)))

(assert (=> b!78957 true))

(declare-fun b!78958 () Bool)

(declare-fun e!42677 () Formula!110)

(assert (=> b!78958 (= e!42669 e!42677)))

(declare-fun c!20051 () Bool)

(declare-fun lt!18114 () Bool)

(assert (=> b!78958 (= c!20051 lt!18114)))

(assert (=> b!78958 (= lt!18116 e!42666)))

(declare-fun c!20063 () Bool)

(assert (=> b!78958 (= c!20063 (or lt!18114 (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Or!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Implies!114 (f!4765 (f!4765 (f!4765 formula!94)))))))))

(assert (=> b!78958 (= lt!18110 e!42673)))

(declare-fun c!20060 () Bool)

(assert (=> b!78958 (= c!20060 (or lt!18114 (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Or!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Implies!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Not!114 (f!4765 (f!4765 (f!4765 formula!94)))))))))

(assert (=> b!78958 (= lt!18114 (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-And!114 (f!4765 (f!4765 (f!4765 formula!94))))))))

(declare-fun b!78959 () Bool)

(assert (=> b!78959 (= e!42670 (nnf!0 (ite lt!18111 (rhs!1444 (f!4765 (f!4765 formula!94))) (ite (is-Or!114 (f!4765 (f!4765 formula!94))) (rhs!1445 (f!4765 (f!4765 formula!94))) (ite (is-Implies!114 (f!4765 (f!4765 formula!94))) (rhs!1443 (f!4765 (f!4765 formula!94))) (ite (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-And!114 (f!4765 (f!4765 (f!4765 formula!94))))) (Not!114 (rhs!1444 (f!4765 (f!4765 (f!4765 formula!94))))) (ite (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Or!114 (f!4765 (f!4765 (f!4765 formula!94))))) (Not!114 (rhs!1445 (f!4765 (f!4765 (f!4765 formula!94))))) (Not!114 (rhs!1443 (f!4765 (f!4765 (f!4765 formula!94))))))))))))))

(declare-fun b!78960 () Bool)

(assert (=> b!78960 (= e!42675 lt!18100)))

(declare-fun b!78961 () Bool)

(declare-fun res!39771 () Formula!110)

(assert (=> b!78961 (= e!42680 res!39771)))

(assert (=> b!78961 true))

(declare-fun b!78962 () Bool)

(assert (=> b!78962 (= e!42677 (Or!114 lt!18110 lt!18116))))

(declare-fun b!78963 () Bool)

(assert (=> b!78963 (= e!42665 lt!18112)))

(declare-fun b!78964 () Bool)

(declare-fun res!39763 () Formula!110)

(assert (=> b!78964 (= e!42670 res!39763)))

(assert (=> b!78964 true))

(declare-fun b!78965 () Bool)

(assert (=> b!78965 (= e!42677 e!42679)))

(declare-fun c!20056 () Bool)

(declare-fun lt!18106 () Bool)

(assert (=> b!78965 (= c!20056 lt!18106)))

(assert (=> b!78965 (= lt!18115 e!42672)))

(declare-fun c!20058 () Bool)

(assert (=> b!78965 (= c!20058 (or lt!18106 (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Implies!114 (f!4765 (f!4765 (f!4765 formula!94)))))))))

(assert (=> b!78965 (= lt!18109 e!42676)))

(declare-fun c!20053 () Bool)

(assert (=> b!78965 (= c!20053 (or lt!18106 (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Implies!114 (f!4765 (f!4765 (f!4765 formula!94))))) (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Not!114 (f!4765 (f!4765 (f!4765 formula!94)))))))))

(assert (=> b!78965 (= lt!18106 (and (is-Not!114 (f!4765 (f!4765 formula!94))) (is-Or!114 (f!4765 (f!4765 (f!4765 formula!94))))))))

(declare-fun b!78966 () Bool)

(declare-fun res!39765 () Formula!110)

(assert (=> b!78966 (= e!42674 res!39765)))

(assert (=> b!78966 true))

(declare-fun b!78967 () Bool)

(declare-fun res!39773 () Formula!110)

(assert (=> b!78967 (= e!42673 res!39773)))

(assert (=> b!78967 true))

(declare-fun b!78968 () Bool)

(declare-fun res!39767 () Formula!110)

(assert (=> b!78968 (= e!42672 res!39767)))

(assert (=> b!78968 true))

(assert (= (and d!54999 c!20062) b!78937))

(assert (= (and d!54999 (not c!20062)) b!78966))

(assert (= (and d!54999 c!20065) b!78959))

(assert (= (and d!54999 (not c!20065)) b!78964))

(assert (= (and b!78955 c!20054) b!78945))

(assert (= (and b!78955 (not c!20054)) b!78961))

(assert (= (and b!78955 c!20064) b!78952))

(assert (= (and b!78955 (not c!20064)) b!78950))

(assert (= (and b!78938 c!20059) b!78963))

(assert (= (and b!78938 (not c!20059)) b!78946))

(assert (= (and b!78938 c!20050) b!78960))

(assert (= (and b!78938 (not c!20050)) b!78939))

(assert (= (and b!78958 c!20060) b!78944))

(assert (= (and b!78958 (not c!20060)) b!78967))

(assert (= (and b!78958 c!20063) b!78949))

(assert (= (and b!78958 (not c!20063)) b!78957))

(assert (= (and b!78965 c!20053) b!78954))

(assert (= (and b!78965 (not c!20053)) b!78947))

(assert (= (and b!78965 c!20058) b!78941))

(assert (= (and b!78965 (not c!20058)) b!78968))

(assert (= (and b!78943 c!20061) b!78953))

(assert (= (and b!78943 (not c!20061)) b!78956))

(assert (= (and b!78965 c!20056) b!78940))

(assert (= (and b!78965 (not c!20056)) b!78943))

(assert (= (and b!78958 c!20051) b!78962))

(assert (= (and b!78958 (not c!20051)) b!78965))

(assert (= (and b!78938 c!20055) b!78948))

(assert (= (and b!78938 (not c!20055)) b!78958))

(assert (= (and b!78955 c!20057) b!78942))

(assert (= (and b!78955 (not c!20057)) b!78938))

(assert (= (and d!54999 c!20052) b!78951))

(assert (= (and d!54999 (not c!20052)) b!78955))

(declare-fun m!73632 () Bool)

(assert (=> b!78937 m!73632))

(declare-fun m!73634 () Bool)

(assert (=> d!54999 m!73634))

(declare-fun m!73636 () Bool)

(assert (=> b!78959 m!73636))

(assert (=> b!78871 d!54999))

(declare-fun b!79017 () Bool)

(declare-fun e!42717 () Bool)

(declare-fun e!42712 () Bool)

(assert (=> b!79017 (= e!42717 e!42712)))

(declare-fun res!39817 () Bool)

(assert (=> b!79017 (=> (not res!39817) (not e!42712))))

(declare-fun lt!18143 () Bool)

(assert (=> b!79017 (= res!39817 lt!18143)))

(declare-fun b!79018 () Bool)

(declare-fun e!42709 () Bool)

(assert (=> b!79018 (= e!42712 e!42709)))

(declare-fun lt!18137 () Bool)

(declare-fun c!20091 () Bool)

(assert (=> b!79018 (= c!20091 (or (and lt!18137 lt!18143) (and (not lt!18137) (is-Implies!114 x$2!431) lt!18143)))))

(declare-fun b!79019 () Bool)

(declare-fun e!42718 () Bool)

(declare-fun lt!18135 () Bool)

(assert (=> b!79019 (= e!42718 lt!18135)))

(declare-fun b!79020 () Bool)

(declare-fun e!42714 () Formula!110)

(assert (=> b!79020 (= e!42714 (rhs!1445 x$2!431))))

(declare-fun b!79021 () Bool)

(declare-fun e!42711 () Bool)

(assert (=> b!79021 (= e!42711 e!42717)))

(declare-fun c!20089 () Bool)

(assert (=> b!79021 (= c!20089 (or lt!18137 (is-Implies!114 x$2!431)))))

(assert (=> b!79021 (= lt!18143 e!42718)))

(declare-fun c!20090 () Bool)

(assert (=> b!79021 (= c!20090 (or lt!18137 (is-Implies!114 x$2!431)))))

(assert (=> b!79021 (= lt!18137 (is-Or!114 x$2!431))))

(declare-fun b!79022 () Bool)

(declare-fun e!42715 () Bool)

(declare-fun lt!18141 () Bool)

(assert (=> b!79022 (= e!42715 (isNNF!0 (ite lt!18141 (lhs!1444 x$2!431) (ite (is-Or!114 x$2!431) (lhs!1445 x$2!431) (lhs!1443 x$2!431)))))))

(declare-fun b!79023 () Bool)

(declare-fun e!42716 () Bool)

(declare-fun res!39815 () Bool)

(assert (=> b!79023 (= e!42716 res!39815)))

(assert (=> b!79023 true))

(declare-fun b!79024 () Bool)

(declare-fun e!42713 () Bool)

(declare-fun e!42722 () Bool)

(assert (=> b!79024 (= e!42713 e!42722)))

(declare-fun res!39808 () Bool)

(assert (=> b!79024 (=> (not res!39808) (not e!42722))))

(assert (=> b!79024 (= res!39808 (not lt!18141))))

(declare-fun b!79025 () Bool)

(declare-fun e!42721 () Formula!110)

(assert (=> b!79025 (= e!42716 (isNNF!0 e!42721))))

(declare-fun c!20087 () Bool)

(declare-fun lt!18138 () Bool)

(assert (=> b!79025 (= c!20087 lt!18138)))

(declare-fun d!55001 () Bool)

(declare-fun c!20086 () Bool)

(assert (=> d!55001 (= c!20086 lt!18141)))

(declare-fun lt!18142 () Bool)

(assert (=> d!55001 (= lt!18142 e!42716)))

(declare-fun c!20095 () Bool)

(assert (=> d!55001 (= c!20095 e!42713)))

(declare-fun res!39813 () Bool)

(assert (=> d!55001 (=> res!39813 e!42713)))

(assert (=> d!55001 (= res!39813 lt!18138)))

(assert (=> d!55001 (= lt!18138 (and lt!18141 lt!18135))))

(assert (=> d!55001 (= lt!18135 e!42715)))

(declare-fun c!20092 () Bool)

(assert (=> d!55001 (= c!20092 (or lt!18141 (is-Or!114 x$2!431) (is-Implies!114 x$2!431)))))

(assert (=> d!55001 (= lt!18141 (is-And!114 x$2!431))))

(assert (=> d!55001 (= (isNNF!0 x$2!431) e!42711)))

(declare-fun b!79026 () Bool)

(declare-fun res!39812 () Bool)

(assert (=> b!79026 (= e!42715 res!39812)))

(assert (=> b!79026 true))

(declare-fun b!79027 () Bool)

(declare-fun e!42710 () Bool)

(declare-fun res!39809 () Bool)

(assert (=> b!79027 (= e!42710 res!39809)))

(assert (=> b!79027 true))

(declare-fun b!79028 () Bool)

(declare-fun res!39816 () Bool)

(assert (=> b!79028 (= e!42718 res!39816)))

(assert (=> b!79028 true))

(declare-fun b!79029 () Bool)

(assert (=> b!79029 (= e!42721 (rhs!1444 x$2!431))))

(declare-fun b!79030 () Bool)

(declare-fun e!42719 () Bool)

(declare-fun res!39810 () Bool)

(assert (=> b!79030 (= e!42719 res!39810)))

(assert (=> b!79030 true))

(declare-fun b!79031 () Bool)

(assert (=> b!79031 (= e!42717 (or (and (is-Not!114 x$2!431) (is-Literal!108 (f!4765 x$2!431))) (not (is-Not!114 x$2!431))))))

(declare-fun lt!18140 () Bool)

(declare-fun b!79032 () Bool)

(declare-fun lt!18139 () Bool)

(assert (=> b!79032 (= e!42722 (or (and lt!18140 lt!18139) (and (not lt!18140) (is-Implies!114 x$2!431) lt!18139)))))

(assert (=> b!79032 (= lt!18139 e!42719)))

(declare-fun c!20094 () Bool)

(assert (=> b!79032 (= c!20094 (or lt!18140 (is-Implies!114 x$2!431)))))

(assert (=> b!79032 (= lt!18140 (is-Or!114 x$2!431))))

(declare-fun b!79033 () Bool)

(assert (=> b!79033 (= e!42711 (and lt!18135 lt!18142))))

(declare-fun b!79034 () Bool)

(assert (=> b!79034 (= e!42714 (rhs!1443 x$2!431))))

(declare-fun b!79035 () Bool)

(assert (=> b!79035 (= e!42709 lt!18142)))

(declare-fun b!79036 () Bool)

(declare-fun res!39814 () Bool)

(assert (=> b!79036 (= e!42709 res!39814)))

(assert (=> b!79036 true))

(assert (=> b!79036 true))

(declare-fun b!79037 () Bool)

(assert (=> b!79037 (= e!42721 e!42714)))

(declare-fun c!20093 () Bool)

(declare-fun e!42720 () Bool)

(assert (=> b!79037 (= c!20093 e!42720)))

(declare-fun res!39811 () Bool)

(assert (=> b!79037 (=> (not res!39811) (not e!42720))))

(declare-fun lt!18136 () Bool)

(assert (=> b!79037 (= res!39811 lt!18136)))

(assert (=> b!79037 (= lt!18136 (is-Or!114 x$2!431))))

(declare-fun b!79038 () Bool)

(assert (=> b!79038 (= e!42710 lt!18135)))

(declare-fun b!79039 () Bool)

(assert (=> b!79039 (= e!42720 e!42710)))

(declare-fun c!20088 () Bool)

(assert (=> b!79039 (= c!20088 (or lt!18136 (is-Implies!114 x$2!431)))))

(declare-fun b!79040 () Bool)

(assert (=> b!79040 (= e!42719 lt!18135)))

(assert (= (and d!55001 c!20092) b!79022))

(assert (= (and d!55001 (not c!20092)) b!79026))

(assert (= (and d!55001 (not res!39813)) b!79024))

(assert (= (and b!79024 res!39808) b!79032))

(assert (= (and b!79032 c!20094) b!79040))

(assert (= (and b!79032 (not c!20094)) b!79030))

(assert (= (and b!79037 res!39811) b!79039))

(assert (= (and b!79039 c!20088) b!79038))

(assert (= (and b!79039 (not c!20088)) b!79027))

(assert (= (and b!79037 c!20093) b!79020))

(assert (= (and b!79037 (not c!20093)) b!79034))

(assert (= (and b!79025 c!20087) b!79029))

(assert (= (and b!79025 (not c!20087)) b!79037))

(assert (= (and d!55001 c!20095) b!79025))

(assert (= (and d!55001 (not c!20095)) b!79023))

(assert (= (and b!79021 c!20090) b!79019))

(assert (= (and b!79021 (not c!20090)) b!79028))

(assert (= (and b!79017 res!39817) b!79018))

(assert (= (and b!79018 c!20091) b!79035))

(assert (= (and b!79018 (not c!20091)) b!79036))

(assert (= (and b!79021 c!20089) b!79017))

(assert (= (and b!79021 (not c!20089)) b!79031))

(assert (= (and d!55001 c!20086) b!79033))

(assert (= (and d!55001 (not c!20086)) b!79021))

(declare-fun m!73638 () Bool)

(assert (=> b!79022 m!73638))

(declare-fun m!73640 () Bool)

(assert (=> b!79025 m!73640))

(assert (=> b!78872 d!55001))

(push 1)

(assert (not b!79025))

(assert (not d!54999))

(assert (not b!78959))

(assert (not b!78937))

(assert (not b!79022))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


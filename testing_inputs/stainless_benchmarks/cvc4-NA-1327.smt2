; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9328 () Bool)

(assert start!9328)

(declare-fun b!66784 () Bool)

(declare-fun e!36171 () Bool)

(declare-datatypes () ((Formula!28 (And!33 (lhs!887 Formula!28) (rhs!887 Formula!28)) (Literal!27 (id!4808 Int)) (Implies!33 (lhs!888 Formula!28) (rhs!888 Formula!28)) (Or!33 (lhs!889 Formula!28) (rhs!889 Formula!28)) (Not!33 (f!4138 Formula!28)))))

(declare-fun f!3758 () Formula!28)

(declare-fun isNNF!1 (Formula!28) Bool)

(assert (=> b!66784 (= e!36171 (not (isNNF!1 f!3758)))))

(declare-fun b!66781 () Bool)

(declare-fun res!31807 () Bool)

(assert (=> b!66781 (=> (not res!31807) (not e!36171))))

(declare-fun f!3724 () Formula!28)

(assert (=> b!66781 (= res!31807 (and (not (is-And!33 f!3724)) (not (is-Literal!27 f!3724)) (not (is-Implies!33 f!3724)) (is-Or!33 f!3724)))))

(declare-fun res!31806 () Bool)

(assert (=> start!9328 (=> (not res!31806) (not e!36171))))

(assert (=> start!9328 (= res!31806 (isNNF!1 f!3724))))

(assert (=> start!9328 e!36171))

(assert (=> start!9328 true))

(declare-fun b!66783 () Bool)

(declare-fun res!31804 () Bool)

(assert (=> b!66783 (=> (not res!31804) (not e!36171))))

(assert (=> b!66783 (= res!31804 (= f!3758 (lhs!889 f!3724)))))

(declare-fun b!66782 () Bool)

(declare-fun res!31805 () Bool)

(assert (=> b!66782 (=> (not res!31805) (not e!36171))))

(declare-fun inductVal!284 () Bool)

(declare-fun simplifyPreservesNNF!0 (Formula!28) Bool)

(assert (=> b!66782 (= res!31805 (= inductVal!284 (simplifyPreservesNNF!0 (rhs!889 f!3724))))))

(assert (= (and start!9328 res!31806) b!66781))

(assert (= (and b!66781 res!31807) b!66782))

(assert (= (and b!66782 res!31805) b!66783))

(assert (= (and b!66783 res!31804) b!66784))

(declare-fun m!69753 () Bool)

(assert (=> b!66784 m!69753))

(declare-fun m!69755 () Bool)

(assert (=> start!9328 m!69755))

(declare-fun m!69757 () Bool)

(assert (=> b!66782 m!69757))

(push 1)

(assert (not b!66782))

(assert (not b!66784))

(assert (not start!9328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!66817 () Bool)

(declare-fun e!36194 () Bool)

(declare-fun lt!13165 () Formula!28)

(assert (=> b!66817 (= e!36194 (isNNF!1 lt!13165))))

(declare-fun b!66818 () Bool)

(declare-fun e!36191 () Bool)

(declare-fun lt!13167 () Bool)

(assert (=> b!66818 (= e!36191 (simplifyPreservesNNF!0 (ite lt!13167 (lhs!887 (rhs!889 f!3724)) (ite (is-Implies!33 (rhs!889 f!3724)) (lhs!888 (rhs!889 f!3724)) (lhs!889 (rhs!889 f!3724))))))))

(declare-fun b!66819 () Bool)

(declare-fun e!36193 () Bool)

(declare-fun e!36188 () Bool)

(assert (=> b!66819 (= e!36193 e!36188)))

(declare-fun c!15246 () Bool)

(declare-fun lt!13163 () Bool)

(assert (=> b!66819 (= c!15246 (or lt!13163 (is-Or!33 (rhs!889 f!3724))))))

(declare-fun e!36190 () Formula!28)

(assert (=> b!66819 (= lt!13165 e!36190)))

(declare-fun c!15251 () Bool)

(assert (=> b!66819 (= c!15251 (or lt!13163 (is-Or!33 (rhs!889 f!3724))))))

(assert (=> b!66819 (= lt!13163 (is-Implies!33 (rhs!889 f!3724)))))

(declare-fun b!66820 () Bool)

(declare-fun e!36189 () Bool)

(declare-fun res!31852 () Bool)

(assert (=> b!66820 (= e!36189 res!31852)))

(assert (=> b!66820 true))

(declare-fun b!66821 () Bool)

(declare-fun e!36192 () Bool)

(declare-fun res!31848 () Bool)

(assert (=> b!66821 (= e!36192 res!31848)))

(assert (=> b!66821 true))

(declare-fun b!66822 () Bool)

(assert (=> b!66822 (= e!36193 e!36189)))

(declare-fun c!15249 () Bool)

(assert (=> b!66822 (= c!15249 (or lt!13167 (and (not lt!13167) (is-Literal!27 (rhs!889 f!3724)))))))

(declare-fun b!66823 () Bool)

(assert (=> b!66823 (= e!36192 (simplifyPreservesNNF!0 (ite lt!13167 (rhs!887 (rhs!889 f!3724)) (ite (is-Implies!33 (rhs!889 f!3724)) (rhs!888 (rhs!889 f!3724)) (ite (is-Or!33 (rhs!889 f!3724)) (rhs!889 (rhs!889 f!3724)) (f!4138 (rhs!889 f!3724)))))))))

(declare-fun b!66824 () Bool)

(declare-fun lt!13166 () Formula!28)

(assert (=> b!66824 (= e!36189 (isNNF!1 lt!13166))))

(declare-fun d!53440 () Bool)

(assert (=> d!53440 e!36193))

(declare-fun c!15247 () Bool)

(assert (=> d!53440 (= c!15247 (or lt!13167 (is-Literal!27 (rhs!889 f!3724))))))

(declare-fun e!36195 () Formula!28)

(assert (=> d!53440 (= lt!13166 e!36195)))

(declare-fun c!15244 () Bool)

(assert (=> d!53440 (= c!15244 (or lt!13167 (is-Literal!27 (rhs!889 f!3724))))))

(declare-fun lt!13168 () Bool)

(assert (=> d!53440 (= lt!13168 e!36191)))

(declare-fun c!15250 () Bool)

(assert (=> d!53440 (= c!15250 (or lt!13167 (and (not (is-Literal!27 (rhs!889 f!3724))) (or (is-Implies!33 (rhs!889 f!3724)) (is-Or!33 (rhs!889 f!3724))))))))

(declare-fun lt!13164 () Bool)

(assert (=> d!53440 (= lt!13164 e!36192)))

(declare-fun c!15245 () Bool)

(assert (=> d!53440 (= c!15245 (or lt!13167 (not (is-Literal!27 (rhs!889 f!3724)))))))

(assert (=> d!53440 (= lt!13167 (is-And!33 (rhs!889 f!3724)))))

(assert (=> d!53440 (isNNF!1 (rhs!889 f!3724))))

(assert (=> d!53440 (= (simplifyPreservesNNF!0 (rhs!889 f!3724)) true)))

(declare-fun b!66825 () Bool)

(declare-fun simplify!1 (Formula!28) Formula!28)

(assert (=> b!66825 (= e!36190 (simplify!1 (rhs!889 f!3724)))))

(declare-fun b!66826 () Bool)

(assert (=> b!66826 (= e!36195 (simplify!1 (rhs!889 f!3724)))))

(declare-fun b!66827 () Bool)

(declare-fun res!31847 () Bool)

(assert (=> b!66827 (= e!36191 res!31847)))

(assert (=> b!66827 true))

(declare-fun b!66828 () Bool)

(declare-fun res!31850 () Formula!28)

(assert (=> b!66828 (= e!36195 res!31850)))

(assert (=> b!66828 true))

(declare-fun b!66829 () Bool)

(assert (=> b!66829 (= e!36188 e!36194)))

(declare-fun c!15248 () Bool)

(assert (=> b!66829 (= c!15248 (or lt!13163 (and (not lt!13163) (is-Or!33 (rhs!889 f!3724)))))))

(declare-fun b!66830 () Bool)

(declare-fun res!31849 () Formula!28)

(assert (=> b!66830 (= e!36190 res!31849)))

(assert (=> b!66830 true))

(declare-fun b!66831 () Bool)

(assert (=> b!66831 (= e!36188 (isNNF!1 (simplify!1 (rhs!889 f!3724))))))

(declare-fun b!66832 () Bool)

(declare-fun res!31851 () Bool)

(assert (=> b!66832 (= e!36194 res!31851)))

(assert (=> b!66832 true))

(assert (=> b!66832 true))

(assert (= (and d!53440 c!15245) b!66823))

(assert (= (and d!53440 (not c!15245)) b!66821))

(assert (= (and d!53440 c!15250) b!66818))

(assert (= (and d!53440 (not c!15250)) b!66827))

(assert (= (and d!53440 c!15244) b!66826))

(assert (= (and d!53440 (not c!15244)) b!66828))

(assert (= (and b!66822 c!15249) b!66824))

(assert (= (and b!66822 (not c!15249)) b!66820))

(assert (= (and b!66819 c!15251) b!66825))

(assert (= (and b!66819 (not c!15251)) b!66830))

(assert (= (and b!66829 c!15248) b!66817))

(assert (= (and b!66829 (not c!15248)) b!66832))

(assert (= (and b!66819 c!15246) b!66829))

(assert (= (and b!66819 (not c!15246)) b!66831))

(assert (= (and d!53440 c!15247) b!66822))

(assert (= (and d!53440 (not c!15247)) b!66819))

(declare-fun m!69759 () Bool)

(assert (=> d!53440 m!69759))

(declare-fun m!69761 () Bool)

(assert (=> b!66818 m!69761))

(declare-fun m!69763 () Bool)

(assert (=> b!66823 m!69763))

(declare-fun m!69765 () Bool)

(assert (=> b!66824 m!69765))

(declare-fun m!69767 () Bool)

(assert (=> b!66825 m!69767))

(declare-fun m!69769 () Bool)

(assert (=> b!66817 m!69769))

(assert (=> b!66831 m!69767))

(assert (=> b!66831 m!69767))

(declare-fun m!69771 () Bool)

(assert (=> b!66831 m!69771))

(assert (=> b!66826 m!69767))

(assert (=> b!66782 d!53440))

(declare-fun b!66847 () Bool)

(declare-fun e!36207 () Bool)

(declare-fun e!36204 () Bool)

(assert (=> b!66847 (= e!36207 e!36204)))

(declare-fun res!31866 () Bool)

(assert (=> b!66847 (=> (not res!31866) (not e!36204))))

(declare-fun lt!13177 () Bool)

(assert (=> b!66847 (= res!31866 lt!13177)))

(declare-fun b!66848 () Bool)

(declare-fun e!36206 () Bool)

(declare-fun lt!13175 () Bool)

(assert (=> b!66848 (= e!36206 (isNNF!1 (ite lt!13175 (lhs!887 f!3758) (lhs!889 f!3758))))))

(declare-fun d!53442 () Bool)

(declare-fun c!15260 () Bool)

(assert (=> d!53442 (= c!15260 (or lt!13175 (is-Or!33 f!3758)))))

(declare-fun lt!13176 () Bool)

(assert (=> d!53442 (= lt!13176 (and lt!13175 lt!13177))))

(assert (=> d!53442 (= lt!13177 e!36206)))

(declare-fun c!15258 () Bool)

(assert (=> d!53442 (= c!15258 (or lt!13175 (is-Or!33 f!3758)))))

(assert (=> d!53442 (= lt!13175 (is-And!33 f!3758))))

(assert (=> d!53442 (= (isNNF!1 f!3758) e!36207)))

(declare-fun b!66849 () Bool)

(declare-fun e!36205 () Bool)

(assert (=> b!66849 (= e!36204 e!36205)))

(declare-fun c!15259 () Bool)

(assert (=> b!66849 (= c!15259 (or lt!13176 (and (not lt!13175) (is-Or!33 f!3758) lt!13177)))))

(declare-fun b!66850 () Bool)

(declare-fun res!31867 () Bool)

(assert (=> b!66850 (= e!36206 res!31867)))

(assert (=> b!66850 true))

(declare-fun b!66851 () Bool)

(assert (=> b!66851 (= e!36205 (isNNF!1 (ite lt!13176 (rhs!887 f!3758) (rhs!889 f!3758))))))

(declare-fun b!66852 () Bool)

(assert (=> b!66852 (= e!36207 (and (not (is-Implies!33 f!3758)) (or (and (is-Not!33 f!3758) (is-Literal!27 (f!4138 f!3758))) (not (is-Not!33 f!3758)))))))

(declare-fun b!66853 () Bool)

(declare-fun res!31865 () Bool)

(assert (=> b!66853 (= e!36205 res!31865)))

(assert (=> b!66853 true))

(assert (=> b!66853 true))

(assert (= (and d!53442 c!15258) b!66848))

(assert (= (and d!53442 (not c!15258)) b!66850))

(assert (= (and b!66847 res!31866) b!66849))

(assert (= (and b!66849 c!15259) b!66851))

(assert (= (and b!66849 (not c!15259)) b!66853))

(assert (= (and d!53442 c!15260) b!66847))

(assert (= (and d!53442 (not c!15260)) b!66852))

(declare-fun m!69773 () Bool)

(assert (=> b!66848 m!69773))

(declare-fun m!69775 () Bool)

(assert (=> b!66851 m!69775))

(assert (=> b!66784 d!53442))

(declare-fun b!66854 () Bool)

(declare-fun e!36211 () Bool)

(declare-fun e!36208 () Bool)

(assert (=> b!66854 (= e!36211 e!36208)))

(declare-fun res!31869 () Bool)

(assert (=> b!66854 (=> (not res!31869) (not e!36208))))

(declare-fun lt!13180 () Bool)

(assert (=> b!66854 (= res!31869 lt!13180)))

(declare-fun b!66855 () Bool)

(declare-fun e!36210 () Bool)

(declare-fun lt!13178 () Bool)

(assert (=> b!66855 (= e!36210 (isNNF!1 (ite lt!13178 (lhs!887 f!3724) (lhs!889 f!3724))))))

(declare-fun d!53444 () Bool)

(declare-fun c!15263 () Bool)

(assert (=> d!53444 (= c!15263 (or lt!13178 (is-Or!33 f!3724)))))

(declare-fun lt!13179 () Bool)

(assert (=> d!53444 (= lt!13179 (and lt!13178 lt!13180))))

(assert (=> d!53444 (= lt!13180 e!36210)))

(declare-fun c!15261 () Bool)

(assert (=> d!53444 (= c!15261 (or lt!13178 (is-Or!33 f!3724)))))

(assert (=> d!53444 (= lt!13178 (is-And!33 f!3724))))

(assert (=> d!53444 (= (isNNF!1 f!3724) e!36211)))

(declare-fun b!66856 () Bool)

(declare-fun e!36209 () Bool)

(assert (=> b!66856 (= e!36208 e!36209)))

(declare-fun c!15262 () Bool)

(assert (=> b!66856 (= c!15262 (or lt!13179 (and (not lt!13178) (is-Or!33 f!3724) lt!13180)))))

(declare-fun b!66857 () Bool)

(declare-fun res!31870 () Bool)

(assert (=> b!66857 (= e!36210 res!31870)))

(assert (=> b!66857 true))

(declare-fun b!66858 () Bool)

(assert (=> b!66858 (= e!36209 (isNNF!1 (ite lt!13179 (rhs!887 f!3724) (rhs!889 f!3724))))))

(declare-fun b!66859 () Bool)

(assert (=> b!66859 (= e!36211 (and (not (is-Implies!33 f!3724)) (or (and (is-Not!33 f!3724) (is-Literal!27 (f!4138 f!3724))) (not (is-Not!33 f!3724)))))))

(declare-fun b!66860 () Bool)

(declare-fun res!31868 () Bool)

(assert (=> b!66860 (= e!36209 res!31868)))

(assert (=> b!66860 true))

(assert (=> b!66860 true))

(assert (= (and d!53444 c!15261) b!66855))

(assert (= (and d!53444 (not c!15261)) b!66857))

(assert (= (and b!66854 res!31869) b!66856))

(assert (= (and b!66856 c!15262) b!66858))

(assert (= (and b!66856 (not c!15262)) b!66860))

(assert (= (and d!53444 c!15263) b!66854))

(assert (= (and d!53444 (not c!15263)) b!66859))

(declare-fun m!69777 () Bool)

(assert (=> b!66855 m!69777))

(declare-fun m!69779 () Bool)

(assert (=> b!66858 m!69779))

(assert (=> start!9328 d!53444))

(push 1)

(assert (not b!66848))

(assert (not b!66858))

(assert (not b!66824))

(assert (not b!66851))

(assert (not b!66818))

(assert (not b!66855))

(assert (not b!66825))

(assert (not b!66831))

(assert (not d!53440))

(assert (not b!66823))

(assert (not b!66817))

(assert (not b!66826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


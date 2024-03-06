; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3572 () Bool)

(assert start!3572)

(declare-fun res!10017 () Bool)

(declare-fun e!11906 () Bool)

(assert (=> start!3572 (=> (not res!10017) (not e!11906))))

(declare-datatypes () ((T!1781 (T!1782 (val!63 Int)))))

(declare-datatypes () ((Conc!40 (CC!39 (left!684 Conc!40) (right!687 Conc!40)) (Single!39 (x!8828 T!1781)) (Empty!50))))

(declare-fun xs!572 () Conc!40)

(declare-fun concInv!36 (Conc!40) Bool)

(assert (=> start!3572 (= res!10017 (concInv!36 xs!572))))

(assert (=> start!3572 e!11906))

(declare-fun e!11905 () Bool)

(assert (=> start!3572 e!11905))

(assert (=> start!3572 true))

(declare-fun e!11904 () Bool)

(assert (=> start!3572 e!11904))

(declare-fun b!22781 () Bool)

(declare-fun res!10010 () Bool)

(assert (=> b!22781 (=> (not res!10010) (not e!11906))))

(declare-fun xs!575 () Conc!40)

(declare-fun i!252 () Int)

(declare-fun i!255 () Int)

(assert (=> b!22781 (= res!10010 (and (= xs!575 (left!684 xs!572)) (= i!255 i!252)))))

(declare-fun b!22782 () Bool)

(declare-fun res!10020 () Bool)

(assert (=> b!22782 (=> (not res!10020) (not e!11906))))

(declare-fun size!242 (Conc!40) Int)

(assert (=> b!22782 (= res!10020 (< i!252 (size!242 (left!684 xs!572))))))

(declare-fun b!22783 () Bool)

(declare-fun res!10019 () Bool)

(assert (=> b!22783 (=> (not res!10019) (not e!11906))))

(declare-fun isEmpty!299 (Conc!40) Bool)

(assert (=> b!22783 (= res!10019 (not (isEmpty!299 xs!572)))))

(declare-fun b!22784 () Bool)

(declare-fun res!10011 () Bool)

(declare-fun e!11903 () Bool)

(assert (=> b!22784 (=> res!10011 e!11903)))

(assert (=> b!22784 (= res!10011 (isEmpty!299 xs!575))))

(declare-fun b!22785 () Bool)

(declare-fun res!10014 () Bool)

(assert (=> b!22785 (=> (not res!10014) (not e!11906))))

(assert (=> b!22785 (= res!10014 (< i!252 (size!242 xs!572)))))

(declare-fun b!22786 () Bool)

(declare-fun res!10013 () Bool)

(assert (=> b!22786 (=> (not res!10013) (not e!11906))))

(assert (=> b!22786 (= res!10013 (>= i!252 0))))

(declare-fun b!22787 () Bool)

(declare-fun res!10016 () Bool)

(assert (=> b!22787 (=> res!10016 e!11903)))

(assert (=> b!22787 (= res!10016 (< i!255 0))))

(declare-fun b!22788 () Bool)

(declare-fun tp!5004 () Bool)

(declare-fun tp!5005 () Bool)

(assert (=> b!22788 (= e!11904 (and tp!5004 tp!5005))))

(declare-fun b!22789 () Bool)

(assert (=> b!22789 (= e!11903 (>= i!255 (size!242 xs!575)))))

(declare-fun b!22790 () Bool)

(declare-fun tp_is_empty!125 () Bool)

(assert (=> b!22790 (= e!11904 tp_is_empty!125)))

(declare-fun b!22791 () Bool)

(declare-fun res!10015 () Bool)

(assert (=> b!22791 (=> res!10015 e!11903)))

(declare-fun balanced!37 (Conc!40) Bool)

(assert (=> b!22791 (= res!10015 (not (balanced!37 xs!575)))))

(declare-fun b!22792 () Bool)

(assert (=> b!22792 (= e!11906 e!11903)))

(declare-fun res!10012 () Bool)

(assert (=> b!22792 (=> res!10012 e!11903)))

(assert (=> b!22792 (= res!10012 (not (concInv!36 xs!575)))))

(declare-fun b!22793 () Bool)

(assert (=> b!22793 (= e!11905 tp_is_empty!125)))

(declare-fun b!22794 () Bool)

(declare-fun res!10021 () Bool)

(assert (=> b!22794 (=> (not res!10021) (not e!11906))))

(assert (=> b!22794 (= res!10021 (balanced!37 xs!572))))

(declare-fun b!22795 () Bool)

(declare-fun tp!5002 () Bool)

(declare-fun tp!5003 () Bool)

(assert (=> b!22795 (= e!11905 (and tp!5002 tp!5003))))

(declare-fun b!22796 () Bool)

(declare-fun res!10018 () Bool)

(assert (=> b!22796 (=> (not res!10018) (not e!11906))))

(assert (=> b!22796 (= res!10018 (not (is-Single!39 xs!572)))))

(assert (= (and start!3572 res!10017) b!22794))

(assert (= (and b!22794 res!10021) b!22783))

(assert (= (and b!22783 res!10019) b!22786))

(assert (= (and b!22786 res!10013) b!22785))

(assert (= (and b!22785 res!10014) b!22796))

(assert (= (and b!22796 res!10018) b!22782))

(assert (= (and b!22782 res!10020) b!22781))

(assert (= (and b!22781 res!10010) b!22792))

(assert (= (and b!22792 (not res!10012)) b!22791))

(assert (= (and b!22791 (not res!10015)) b!22784))

(assert (= (and b!22784 (not res!10011)) b!22787))

(assert (= (and b!22787 (not res!10016)) b!22789))

(assert (= (and start!3572 (is-CC!39 xs!572)) b!22795))

(assert (= (and start!3572 (is-Single!39 xs!572)) b!22793))

(assert (= (and start!3572 (is-CC!39 xs!575)) b!22788))

(assert (= (and start!3572 (is-Single!39 xs!575)) b!22790))

(declare-fun m!24647 () Bool)

(assert (=> b!22782 m!24647))

(declare-fun m!24649 () Bool)

(assert (=> b!22792 m!24649))

(declare-fun m!24651 () Bool)

(assert (=> b!22791 m!24651))

(declare-fun m!24653 () Bool)

(assert (=> b!22783 m!24653))

(declare-fun m!24655 () Bool)

(assert (=> start!3572 m!24655))

(declare-fun m!24657 () Bool)

(assert (=> b!22794 m!24657))

(declare-fun m!24659 () Bool)

(assert (=> b!22785 m!24659))

(declare-fun m!24661 () Bool)

(assert (=> b!22789 m!24661))

(declare-fun m!24663 () Bool)

(assert (=> b!22784 m!24663))

(push 1)

(assert (not b!22785))

(assert (not start!3572))

(assert (not b!22792))

(assert tp_is_empty!125)

(assert (not b!22782))

(assert (not b!22784))

(assert (not b!22783))

(assert (not b!22795))

(assert (not b!22788))

(assert (not b!22791))

(assert (not b!22789))

(assert (not b!22794))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!22805 () Bool)

(declare-fun e!11912 () Int)

(assert (=> b!22805 (= e!11912 0)))

(declare-fun b!22807 () Bool)

(declare-fun e!11911 () Int)

(assert (=> b!22807 (= e!11911 1)))

(declare-fun b!22806 () Bool)

(assert (=> b!22806 (= e!11912 e!11911)))

(declare-fun c!5393 () Bool)

(assert (=> b!22806 (= c!5393 (is-Single!39 xs!575))))

(declare-fun d!13221 () Bool)

(declare-fun lt!3587 () Int)

(assert (=> d!13221 (>= lt!3587 0)))

(assert (=> d!13221 (= lt!3587 e!11912)))

(declare-fun c!5394 () Bool)

(assert (=> d!13221 (= c!5394 (is-Empty!50 xs!575))))

(assert (=> d!13221 (= (size!242 xs!575) lt!3587)))

(declare-fun b!22808 () Bool)

(assert (=> b!22808 (= e!11911 (+ (size!242 (left!684 xs!575)) (size!242 (right!687 xs!575))))))

(assert (= (and b!22806 c!5393) b!22807))

(assert (= (and b!22806 (not c!5393)) b!22808))

(assert (= (and d!13221 c!5394) b!22805))

(assert (= (and d!13221 (not c!5394)) b!22806))

(declare-fun m!24665 () Bool)

(assert (=> b!22808 m!24665))

(declare-fun m!24667 () Bool)

(assert (=> b!22808 m!24667))

(assert (=> b!22789 d!13221))

(declare-fun b!22819 () Bool)

(declare-fun res!10030 () Bool)

(declare-fun e!11917 () Bool)

(assert (=> b!22819 (=> (not res!10030) (not e!11917))))

(assert (=> b!22819 (= res!10030 (balanced!37 (left!684 xs!572)))))

(declare-fun d!13223 () Bool)

(declare-fun res!10032 () Bool)

(declare-fun e!11918 () Bool)

(assert (=> d!13223 (=> res!10032 e!11918)))

(assert (=> d!13223 (= res!10032 (not (is-CC!39 xs!572)))))

(assert (=> d!13223 (= (balanced!37 xs!572) e!11918)))

(declare-fun b!22817 () Bool)

(assert (=> b!22817 (= e!11918 e!11917)))

(declare-fun res!10031 () Bool)

(assert (=> b!22817 (=> (not res!10031) (not e!11917))))

(declare-fun level!33 (Conc!40) Int)

(assert (=> b!22817 (= res!10031 (>= (- (level!33 (left!684 xs!572)) (level!33 (right!687 xs!572))) (- 1)))))

(declare-fun b!22818 () Bool)

(declare-fun res!10033 () Bool)

(assert (=> b!22818 (=> (not res!10033) (not e!11917))))

(assert (=> b!22818 (= res!10033 (<= (- (level!33 (left!684 xs!572)) (level!33 (right!687 xs!572))) 1))))

(declare-fun b!22820 () Bool)

(assert (=> b!22820 (= e!11917 (balanced!37 (right!687 xs!572)))))

(assert (= (and d!13223 (not res!10032)) b!22817))

(assert (= (and b!22817 res!10031) b!22818))

(assert (= (and b!22818 res!10033) b!22819))

(assert (= (and b!22819 res!10030) b!22820))

(declare-fun m!24669 () Bool)

(assert (=> b!22819 m!24669))

(declare-fun m!24671 () Bool)

(assert (=> b!22817 m!24671))

(declare-fun m!24673 () Bool)

(assert (=> b!22817 m!24673))

(assert (=> b!22818 m!24671))

(assert (=> b!22818 m!24673))

(declare-fun m!24675 () Bool)

(assert (=> b!22820 m!24675))

(assert (=> b!22794 d!13223))

(declare-fun b!22831 () Bool)

(declare-fun res!10043 () Bool)

(declare-fun e!11924 () Bool)

(assert (=> b!22831 (=> (not res!10043) (not e!11924))))

(assert (=> b!22831 (= res!10043 (concInv!36 (left!684 xs!572)))))

(declare-fun b!22832 () Bool)

(assert (=> b!22832 (= e!11924 (concInv!36 (right!687 xs!572)))))

(declare-fun b!22830 () Bool)

(declare-fun res!10042 () Bool)

(assert (=> b!22830 (=> (not res!10042) (not e!11924))))

(assert (=> b!22830 (= res!10042 (not (isEmpty!299 (right!687 xs!572))))))

(declare-fun d!13225 () Bool)

(declare-fun res!10044 () Bool)

(declare-fun e!11923 () Bool)

(assert (=> d!13225 (=> res!10044 e!11923)))

(assert (=> d!13225 (= res!10044 (not (is-CC!39 xs!572)))))

(assert (=> d!13225 (= (concInv!36 xs!572) e!11923)))

(declare-fun b!22829 () Bool)

(assert (=> b!22829 (= e!11923 e!11924)))

(declare-fun res!10045 () Bool)

(assert (=> b!22829 (=> (not res!10045) (not e!11924))))

(assert (=> b!22829 (= res!10045 (not (isEmpty!299 (left!684 xs!572))))))

(assert (= (and d!13225 (not res!10044)) b!22829))

(assert (= (and b!22829 res!10045) b!22830))

(assert (= (and b!22830 res!10042) b!22831))

(assert (= (and b!22831 res!10043) b!22832))

(declare-fun m!24677 () Bool)

(assert (=> b!22831 m!24677))

(declare-fun m!24679 () Bool)

(assert (=> b!22832 m!24679))

(declare-fun m!24681 () Bool)

(assert (=> b!22830 m!24681))

(declare-fun m!24683 () Bool)

(assert (=> b!22829 m!24683))

(assert (=> start!3572 d!13225))

(declare-fun b!22833 () Bool)

(declare-fun e!11926 () Int)

(assert (=> b!22833 (= e!11926 0)))

(declare-fun b!22835 () Bool)

(declare-fun e!11925 () Int)

(assert (=> b!22835 (= e!11925 1)))

(declare-fun b!22834 () Bool)

(assert (=> b!22834 (= e!11926 e!11925)))

(declare-fun c!5395 () Bool)

(assert (=> b!22834 (= c!5395 (is-Single!39 xs!572))))

(declare-fun d!13227 () Bool)

(declare-fun lt!3588 () Int)

(assert (=> d!13227 (>= lt!3588 0)))

(assert (=> d!13227 (= lt!3588 e!11926)))

(declare-fun c!5396 () Bool)

(assert (=> d!13227 (= c!5396 (is-Empty!50 xs!572))))

(assert (=> d!13227 (= (size!242 xs!572) lt!3588)))

(declare-fun b!22836 () Bool)

(assert (=> b!22836 (= e!11925 (+ (size!242 (left!684 xs!572)) (size!242 (right!687 xs!572))))))

(assert (= (and b!22834 c!5395) b!22835))

(assert (= (and b!22834 (not c!5395)) b!22836))

(assert (= (and d!13227 c!5396) b!22833))

(assert (= (and d!13227 (not c!5396)) b!22834))

(assert (=> b!22836 m!24647))

(declare-fun m!24685 () Bool)

(assert (=> b!22836 m!24685))

(assert (=> b!22785 d!13227))

(declare-fun d!13229 () Bool)

(assert (=> d!13229 (= (isEmpty!299 xs!575) (= xs!575 Empty!50))))

(assert (=> b!22784 d!13229))

(declare-fun b!22837 () Bool)

(declare-fun e!11928 () Int)

(assert (=> b!22837 (= e!11928 0)))

(declare-fun b!22839 () Bool)

(declare-fun e!11927 () Int)

(assert (=> b!22839 (= e!11927 1)))

(declare-fun b!22838 () Bool)

(assert (=> b!22838 (= e!11928 e!11927)))

(declare-fun c!5397 () Bool)

(assert (=> b!22838 (= c!5397 (is-Single!39 (left!684 xs!572)))))

(declare-fun d!13231 () Bool)

(declare-fun lt!3589 () Int)

(assert (=> d!13231 (>= lt!3589 0)))

(assert (=> d!13231 (= lt!3589 e!11928)))

(declare-fun c!5398 () Bool)

(assert (=> d!13231 (= c!5398 (is-Empty!50 (left!684 xs!572)))))

(assert (=> d!13231 (= (size!242 (left!684 xs!572)) lt!3589)))

(declare-fun b!22840 () Bool)

(assert (=> b!22840 (= e!11927 (+ (size!242 (left!684 (left!684 xs!572))) (size!242 (right!687 (left!684 xs!572)))))))

(assert (= (and b!22838 c!5397) b!22839))

(assert (= (and b!22838 (not c!5397)) b!22840))

(assert (= (and d!13231 c!5398) b!22837))

(assert (= (and d!13231 (not c!5398)) b!22838))

(declare-fun m!24687 () Bool)

(assert (=> b!22840 m!24687))

(declare-fun m!24689 () Bool)

(assert (=> b!22840 m!24689))

(assert (=> b!22782 d!13231))

(declare-fun b!22843 () Bool)

(declare-fun res!10046 () Bool)

(declare-fun e!11929 () Bool)

(assert (=> b!22843 (=> (not res!10046) (not e!11929))))

(assert (=> b!22843 (= res!10046 (balanced!37 (left!684 xs!575)))))

(declare-fun d!13233 () Bool)

(declare-fun res!10048 () Bool)

(declare-fun e!11930 () Bool)

(assert (=> d!13233 (=> res!10048 e!11930)))

(assert (=> d!13233 (= res!10048 (not (is-CC!39 xs!575)))))

(assert (=> d!13233 (= (balanced!37 xs!575) e!11930)))

(declare-fun b!22841 () Bool)

(assert (=> b!22841 (= e!11930 e!11929)))

(declare-fun res!10047 () Bool)

(assert (=> b!22841 (=> (not res!10047) (not e!11929))))

(assert (=> b!22841 (= res!10047 (>= (- (level!33 (left!684 xs!575)) (level!33 (right!687 xs!575))) (- 1)))))

(declare-fun b!22842 () Bool)

(declare-fun res!10049 () Bool)

(assert (=> b!22842 (=> (not res!10049) (not e!11929))))

(assert (=> b!22842 (= res!10049 (<= (- (level!33 (left!684 xs!575)) (level!33 (right!687 xs!575))) 1))))

(declare-fun b!22844 () Bool)

(assert (=> b!22844 (= e!11929 (balanced!37 (right!687 xs!575)))))

(assert (= (and d!13233 (not res!10048)) b!22841))

(assert (= (and b!22841 res!10047) b!22842))

(assert (= (and b!22842 res!10049) b!22843))

(assert (= (and b!22843 res!10046) b!22844))

(declare-fun m!24691 () Bool)

(assert (=> b!22843 m!24691))

(declare-fun m!24693 () Bool)

(assert (=> b!22841 m!24693))

(declare-fun m!24695 () Bool)

(assert (=> b!22841 m!24695))

(assert (=> b!22842 m!24693))

(assert (=> b!22842 m!24695))

(declare-fun m!24697 () Bool)

(assert (=> b!22844 m!24697))

(assert (=> b!22791 d!13233))

(declare-fun d!13235 () Bool)

(assert (=> d!13235 (= (isEmpty!299 xs!572) (= xs!572 Empty!50))))

(assert (=> b!22783 d!13235))

(declare-fun b!22847 () Bool)

(declare-fun res!10051 () Bool)

(declare-fun e!11932 () Bool)

(assert (=> b!22847 (=> (not res!10051) (not e!11932))))

(assert (=> b!22847 (= res!10051 (concInv!36 (left!684 xs!575)))))

(declare-fun b!22848 () Bool)

(assert (=> b!22848 (= e!11932 (concInv!36 (right!687 xs!575)))))

(declare-fun b!22846 () Bool)

(declare-fun res!10050 () Bool)

(assert (=> b!22846 (=> (not res!10050) (not e!11932))))

(assert (=> b!22846 (= res!10050 (not (isEmpty!299 (right!687 xs!575))))))

(declare-fun d!13237 () Bool)

(declare-fun res!10052 () Bool)

(declare-fun e!11931 () Bool)

(assert (=> d!13237 (=> res!10052 e!11931)))

(assert (=> d!13237 (= res!10052 (not (is-CC!39 xs!575)))))

(assert (=> d!13237 (= (concInv!36 xs!575) e!11931)))

(declare-fun b!22845 () Bool)

(assert (=> b!22845 (= e!11931 e!11932)))

(declare-fun res!10053 () Bool)

(assert (=> b!22845 (=> (not res!10053) (not e!11932))))

(assert (=> b!22845 (= res!10053 (not (isEmpty!299 (left!684 xs!575))))))

(assert (= (and d!13237 (not res!10052)) b!22845))

(assert (= (and b!22845 res!10053) b!22846))

(assert (= (and b!22846 res!10050) b!22847))

(assert (= (and b!22847 res!10051) b!22848))

(declare-fun m!24699 () Bool)

(assert (=> b!22847 m!24699))

(declare-fun m!24701 () Bool)

(assert (=> b!22848 m!24701))

(declare-fun m!24703 () Bool)

(assert (=> b!22846 m!24703))

(declare-fun m!24705 () Bool)

(assert (=> b!22845 m!24705))

(assert (=> b!22792 d!13237))

(declare-fun b!22855 () Bool)

(declare-fun e!11935 () Bool)

(declare-fun tp!5010 () Bool)

(declare-fun tp!5011 () Bool)

(assert (=> b!22855 (= e!11935 (and tp!5010 tp!5011))))

(declare-fun b!22856 () Bool)

(assert (=> b!22856 (= e!11935 tp_is_empty!125)))

(assert (=> b!22788 (= tp!5004 e!11935)))

(assert (= (and b!22788 (is-CC!39 (left!684 xs!575))) b!22855))

(assert (= (and b!22788 (is-Single!39 (left!684 xs!575))) b!22856))

(declare-fun b!22857 () Bool)

(declare-fun e!11936 () Bool)

(declare-fun tp!5012 () Bool)

(declare-fun tp!5013 () Bool)

(assert (=> b!22857 (= e!11936 (and tp!5012 tp!5013))))

(declare-fun b!22858 () Bool)

(assert (=> b!22858 (= e!11936 tp_is_empty!125)))

(assert (=> b!22788 (= tp!5005 e!11936)))

(assert (= (and b!22788 (is-CC!39 (right!687 xs!575))) b!22857))

(assert (= (and b!22788 (is-Single!39 (right!687 xs!575))) b!22858))

(declare-fun b!22859 () Bool)

(declare-fun e!11937 () Bool)

(declare-fun tp!5014 () Bool)

(declare-fun tp!5015 () Bool)

(assert (=> b!22859 (= e!11937 (and tp!5014 tp!5015))))

(declare-fun b!22860 () Bool)

(assert (=> b!22860 (= e!11937 tp_is_empty!125)))

(assert (=> b!22795 (= tp!5002 e!11937)))

(assert (= (and b!22795 (is-CC!39 (left!684 xs!572))) b!22859))

(assert (= (and b!22795 (is-Single!39 (left!684 xs!572))) b!22860))

(declare-fun b!22861 () Bool)

(declare-fun e!11938 () Bool)

(declare-fun tp!5016 () Bool)

(declare-fun tp!5017 () Bool)

(assert (=> b!22861 (= e!11938 (and tp!5016 tp!5017))))

(declare-fun b!22862 () Bool)

(assert (=> b!22862 (= e!11938 tp_is_empty!125)))

(assert (=> b!22795 (= tp!5003 e!11938)))

(assert (= (and b!22795 (is-CC!39 (right!687 xs!572))) b!22861))

(assert (= (and b!22795 (is-Single!39 (right!687 xs!572))) b!22862))

(push 1)

(assert (not b!22846))

(assert (not b!22857))

(assert (not b!22817))

(assert (not b!22847))

(assert (not b!22844))

(assert (not b!22836))

(assert (not b!22819))

(assert (not b!22859))

(assert (not b!22861))

(assert (not b!22831))

(assert (not b!22843))

(assert tp_is_empty!125)

(assert (not b!22832))

(assert (not b!22818))

(assert (not b!22841))

(assert (not b!22842))

(assert (not b!22820))

(assert (not b!22848))

(assert (not b!22808))

(assert (not b!22840))

(assert (not b!22855))

(assert (not b!22829))

(assert (not b!22845))

(assert (not b!22830))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


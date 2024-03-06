; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4098 () Bool)

(assert start!4098)

(declare-fun b!32604 () Bool)

(declare-fun e!16553 () Bool)

(declare-fun tp!6768 () Bool)

(declare-fun tp!6765 () Bool)

(assert (=> b!32604 (= e!16553 (and tp!6768 tp!6765))))

(declare-fun b!32605 () Bool)

(declare-fun res!15016 () Bool)

(declare-fun e!16557 () Bool)

(assert (=> b!32605 (=> res!15016 e!16557)))

(declare-datatypes () ((T!1855 (T!1856 (val!100 Int)))))

(declare-datatypes () ((Conc!77 (CC!76 (left!721 Conc!77) (right!724 Conc!77)) (Single!76 (x!8992 T!1855)) (Empty!87))))

(declare-fun xs!593 () Conc!77)

(declare-fun isEmpty!331 (Conc!77) Bool)

(assert (=> b!32605 (= res!15016 (isEmpty!331 xs!593))))

(declare-fun b!32606 () Bool)

(declare-fun e!16556 () Bool)

(declare-fun tp_is_empty!199 () Bool)

(assert (=> b!32606 (= e!16556 tp_is_empty!199)))

(declare-fun b!32607 () Bool)

(declare-fun e!16555 () Bool)

(declare-fun tp!6764 () Bool)

(declare-fun tp!6766 () Bool)

(assert (=> b!32607 (= e!16555 (and tp!6764 tp!6766))))

(declare-fun b!32608 () Bool)

(declare-fun res!15006 () Bool)

(assert (=> b!32608 (=> res!15006 e!16557)))

(declare-fun balanced!70 (Conc!77) Bool)

(assert (=> b!32608 (= res!15006 (not (balanced!70 xs!593)))))

(declare-fun b!32609 () Bool)

(declare-fun res!15003 () Bool)

(declare-fun e!16554 () Bool)

(assert (=> b!32609 (=> (not res!15003) (not e!16554))))

(declare-fun i!263 () Int)

(declare-fun xs!586 () Conc!77)

(declare-fun size!288 (Conc!77) Int)

(assert (=> b!32609 (= res!15003 (< i!263 (size!288 xs!586)))))

(declare-fun b!32610 () Bool)

(declare-fun res!15011 () Bool)

(assert (=> b!32610 (=> (not res!15011) (not e!16554))))

(assert (=> b!32610 (= res!15011 (>= i!263 (size!288 (left!721 xs!586))))))

(declare-fun b!32611 () Bool)

(declare-fun res!15014 () Bool)

(assert (=> b!32611 (=> (not res!15014) (not e!16554))))

(assert (=> b!32611 (= res!15014 (balanced!70 xs!586))))

(declare-fun b!32612 () Bool)

(declare-fun res!15015 () Bool)

(assert (=> b!32612 (=> (not res!15015) (not e!16554))))

(assert (=> b!32612 (= res!15015 (not (isEmpty!331 xs!586)))))

(declare-fun b!32613 () Bool)

(assert (=> b!32613 (= e!16555 tp_is_empty!199)))

(declare-fun b!32614 () Bool)

(declare-fun res!15009 () Bool)

(assert (=> b!32614 (=> (not res!15009) (not e!16554))))

(assert (=> b!32614 (= res!15009 (>= i!263 0))))

(declare-fun b!32615 () Bool)

(assert (=> b!32615 (= e!16554 e!16557)))

(declare-fun res!15008 () Bool)

(assert (=> b!32615 (=> res!15008 e!16557)))

(declare-fun concInv!69 (Conc!77) Bool)

(assert (=> b!32615 (= res!15008 (not (concInv!69 xs!593)))))

(declare-fun b!32616 () Bool)

(declare-fun tp!6769 () Bool)

(declare-fun tp!6767 () Bool)

(assert (=> b!32616 (= e!16556 (and tp!6769 tp!6767))))

(declare-fun b!32617 () Bool)

(declare-fun i!274 () Int)

(assert (=> b!32617 (= e!16557 (>= i!274 (size!288 xs!593)))))

(declare-fun b!32618 () Bool)

(declare-fun res!15004 () Bool)

(assert (=> b!32618 (=> (not res!15004) (not e!16554))))

(declare-fun left!644 () Conc!77)

(assert (=> b!32618 (= res!15004 (and (= left!644 (left!721 xs!586)) (= xs!593 (right!724 xs!586))))))

(declare-fun b!32619 () Bool)

(declare-fun res!15010 () Bool)

(assert (=> b!32619 (=> (not res!15010) (not e!16554))))

(assert (=> b!32619 (= res!15010 (not (is-Single!76 xs!586)))))

(declare-fun b!32620 () Bool)

(declare-fun res!15013 () Bool)

(assert (=> b!32620 (=> (not res!15013) (not e!16554))))

(declare-fun y!800 () T!1855)

(declare-fun y!785 () T!1855)

(assert (=> b!32620 (= res!15013 (= y!800 y!785))))

(declare-fun res!15005 () Bool)

(assert (=> start!4098 (=> (not res!15005) (not e!16554))))

(assert (=> start!4098 (= res!15005 (concInv!69 xs!586))))

(assert (=> start!4098 e!16554))

(assert (=> start!4098 e!16555))

(assert (=> start!4098 true))

(assert (=> start!4098 tp_is_empty!199))

(assert (=> start!4098 e!16553))

(assert (=> start!4098 e!16556))

(declare-fun b!32621 () Bool)

(assert (=> b!32621 (= e!16553 tp_is_empty!199)))

(declare-fun b!32622 () Bool)

(declare-fun res!15007 () Bool)

(assert (=> b!32622 (=> res!15007 e!16557)))

(assert (=> b!32622 (= res!15007 (< i!274 0))))

(declare-fun b!32623 () Bool)

(declare-fun res!15012 () Bool)

(assert (=> b!32623 (=> (not res!15012) (not e!16554))))

(assert (=> b!32623 (= res!15012 (= i!274 (- i!263 (size!288 (left!721 xs!586)))))))

(assert (= (and start!4098 res!15005) b!32611))

(assert (= (and b!32611 res!15014) b!32612))

(assert (= (and b!32612 res!15015) b!32614))

(assert (= (and b!32614 res!15009) b!32609))

(assert (= (and b!32609 res!15003) b!32619))

(assert (= (and b!32619 res!15010) b!32610))

(assert (= (and b!32610 res!15011) b!32618))

(assert (= (and b!32618 res!15004) b!32623))

(assert (= (and b!32623 res!15012) b!32620))

(assert (= (and b!32620 res!15013) b!32615))

(assert (= (and b!32615 (not res!15008)) b!32608))

(assert (= (and b!32608 (not res!15006)) b!32605))

(assert (= (and b!32605 (not res!15016)) b!32622))

(assert (= (and b!32622 (not res!15007)) b!32617))

(assert (= (and start!4098 (is-CC!76 xs!586)) b!32607))

(assert (= (and start!4098 (is-Single!76 xs!586)) b!32613))

(assert (= (and start!4098 (is-CC!76 xs!593)) b!32604))

(assert (= (and start!4098 (is-Single!76 xs!593)) b!32621))

(assert (= (and start!4098 (is-CC!76 left!644)) b!32616))

(assert (= (and start!4098 (is-Single!76 left!644)) b!32606))

(declare-fun m!35141 () Bool)

(assert (=> b!32615 m!35141))

(declare-fun m!35143 () Bool)

(assert (=> b!32612 m!35143))

(declare-fun m!35145 () Bool)

(assert (=> b!32605 m!35145))

(declare-fun m!35147 () Bool)

(assert (=> b!32609 m!35147))

(declare-fun m!35149 () Bool)

(assert (=> b!32623 m!35149))

(declare-fun m!35151 () Bool)

(assert (=> b!32611 m!35151))

(declare-fun m!35153 () Bool)

(assert (=> start!4098 m!35153))

(declare-fun m!35155 () Bool)

(assert (=> b!32608 m!35155))

(declare-fun m!35157 () Bool)

(assert (=> b!32617 m!35157))

(assert (=> b!32610 m!35149))

(push 1)

(assert (not b!32604))

(assert (not b!32623))

(assert tp_is_empty!199)

(assert (not b!32607))

(assert (not b!32605))

(assert (not b!32611))

(assert (not start!4098))

(assert (not b!32609))

(assert (not b!32616))

(assert (not b!32608))

(assert (not b!32615))

(assert (not b!32617))

(assert (not b!32610))

(assert (not b!32612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!32634 () Bool)

(declare-fun res!15028 () Bool)

(declare-fun e!16562 () Bool)

(assert (=> b!32634 (=> (not res!15028) (not e!16562))))

(assert (=> b!32634 (= res!15028 (balanced!70 (left!721 xs!593)))))

(declare-fun b!32635 () Bool)

(assert (=> b!32635 (= e!16562 (balanced!70 (right!724 xs!593)))))

(declare-fun b!32633 () Bool)

(declare-fun res!15025 () Bool)

(assert (=> b!32633 (=> (not res!15025) (not e!16562))))

(declare-fun level!61 (Conc!77) Int)

(assert (=> b!32633 (= res!15025 (<= (- (level!61 (left!721 xs!593)) (level!61 (right!724 xs!593))) 1))))

(declare-fun b!32632 () Bool)

(declare-fun e!16563 () Bool)

(assert (=> b!32632 (= e!16563 e!16562)))

(declare-fun res!15026 () Bool)

(assert (=> b!32632 (=> (not res!15026) (not e!16562))))

(assert (=> b!32632 (= res!15026 (>= (- (level!61 (left!721 xs!593)) (level!61 (right!724 xs!593))) (- 1)))))

(declare-fun d!16637 () Bool)

(declare-fun res!15027 () Bool)

(assert (=> d!16637 (=> res!15027 e!16563)))

(assert (=> d!16637 (= res!15027 (not (is-CC!76 xs!593)))))

(assert (=> d!16637 (= (balanced!70 xs!593) e!16563)))

(assert (= (and d!16637 (not res!15027)) b!32632))

(assert (= (and b!32632 res!15026) b!32633))

(assert (= (and b!32633 res!15025) b!32634))

(assert (= (and b!32634 res!15028) b!32635))

(declare-fun m!35159 () Bool)

(assert (=> b!32634 m!35159))

(declare-fun m!35161 () Bool)

(assert (=> b!32635 m!35161))

(declare-fun m!35163 () Bool)

(assert (=> b!32633 m!35163))

(declare-fun m!35165 () Bool)

(assert (=> b!32633 m!35165))

(assert (=> b!32632 m!35163))

(assert (=> b!32632 m!35165))

(assert (=> b!32608 d!16637))

(declare-fun d!16639 () Bool)

(assert (=> d!16639 (= (isEmpty!331 xs!593) (= xs!593 Empty!87))))

(assert (=> b!32605 d!16639))

(declare-fun b!32638 () Bool)

(declare-fun res!15032 () Bool)

(declare-fun e!16564 () Bool)

(assert (=> b!32638 (=> (not res!15032) (not e!16564))))

(assert (=> b!32638 (= res!15032 (balanced!70 (left!721 xs!586)))))

(declare-fun b!32639 () Bool)

(assert (=> b!32639 (= e!16564 (balanced!70 (right!724 xs!586)))))

(declare-fun b!32637 () Bool)

(declare-fun res!15029 () Bool)

(assert (=> b!32637 (=> (not res!15029) (not e!16564))))

(assert (=> b!32637 (= res!15029 (<= (- (level!61 (left!721 xs!586)) (level!61 (right!724 xs!586))) 1))))

(declare-fun b!32636 () Bool)

(declare-fun e!16565 () Bool)

(assert (=> b!32636 (= e!16565 e!16564)))

(declare-fun res!15030 () Bool)

(assert (=> b!32636 (=> (not res!15030) (not e!16564))))

(assert (=> b!32636 (= res!15030 (>= (- (level!61 (left!721 xs!586)) (level!61 (right!724 xs!586))) (- 1)))))

(declare-fun d!16641 () Bool)

(declare-fun res!15031 () Bool)

(assert (=> d!16641 (=> res!15031 e!16565)))

(assert (=> d!16641 (= res!15031 (not (is-CC!76 xs!586)))))

(assert (=> d!16641 (= (balanced!70 xs!586) e!16565)))

(assert (= (and d!16641 (not res!15031)) b!32636))

(assert (= (and b!32636 res!15030) b!32637))

(assert (= (and b!32637 res!15029) b!32638))

(assert (= (and b!32638 res!15032) b!32639))

(declare-fun m!35167 () Bool)

(assert (=> b!32638 m!35167))

(declare-fun m!35169 () Bool)

(assert (=> b!32639 m!35169))

(declare-fun m!35171 () Bool)

(assert (=> b!32637 m!35171))

(declare-fun m!35173 () Bool)

(assert (=> b!32637 m!35173))

(assert (=> b!32636 m!35171))

(assert (=> b!32636 m!35173))

(assert (=> b!32611 d!16641))

(declare-fun b!32650 () Bool)

(declare-fun res!15042 () Bool)

(declare-fun e!16570 () Bool)

(assert (=> b!32650 (=> (not res!15042) (not e!16570))))

(assert (=> b!32650 (= res!15042 (concInv!69 (left!721 xs!586)))))

(declare-fun d!16643 () Bool)

(declare-fun res!15043 () Bool)

(declare-fun e!16571 () Bool)

(assert (=> d!16643 (=> res!15043 e!16571)))

(assert (=> d!16643 (= res!15043 (not (is-CC!76 xs!586)))))

(assert (=> d!16643 (= (concInv!69 xs!586) e!16571)))

(declare-fun b!32648 () Bool)

(assert (=> b!32648 (= e!16571 e!16570)))

(declare-fun res!15044 () Bool)

(assert (=> b!32648 (=> (not res!15044) (not e!16570))))

(assert (=> b!32648 (= res!15044 (not (isEmpty!331 (left!721 xs!586))))))

(declare-fun b!32649 () Bool)

(declare-fun res!15041 () Bool)

(assert (=> b!32649 (=> (not res!15041) (not e!16570))))

(assert (=> b!32649 (= res!15041 (not (isEmpty!331 (right!724 xs!586))))))

(declare-fun b!32651 () Bool)

(assert (=> b!32651 (= e!16570 (concInv!69 (right!724 xs!586)))))

(assert (= (and d!16643 (not res!15043)) b!32648))

(assert (= (and b!32648 res!15044) b!32649))

(assert (= (and b!32649 res!15041) b!32650))

(assert (= (and b!32650 res!15042) b!32651))

(declare-fun m!35175 () Bool)

(assert (=> b!32650 m!35175))

(declare-fun m!35177 () Bool)

(assert (=> b!32648 m!35177))

(declare-fun m!35179 () Bool)

(assert (=> b!32649 m!35179))

(declare-fun m!35181 () Bool)

(assert (=> b!32651 m!35181))

(assert (=> start!4098 d!16643))

(declare-fun b!32662 () Bool)

(declare-fun e!16576 () Int)

(assert (=> b!32662 (= e!16576 1)))

(declare-fun b!32661 () Bool)

(declare-fun e!16577 () Int)

(assert (=> b!32661 (= e!16577 e!16576)))

(declare-fun c!7061 () Bool)

(assert (=> b!32661 (= c!7061 (is-Single!76 (left!721 xs!586)))))

(declare-fun d!16645 () Bool)

(declare-fun lt!6190 () Int)

(assert (=> d!16645 (>= lt!6190 0)))

(assert (=> d!16645 (= lt!6190 e!16577)))

(declare-fun c!7060 () Bool)

(assert (=> d!16645 (= c!7060 (is-Empty!87 (left!721 xs!586)))))

(assert (=> d!16645 (= (size!288 (left!721 xs!586)) lt!6190)))

(declare-fun b!32663 () Bool)

(assert (=> b!32663 (= e!16576 (+ (size!288 (left!721 (left!721 xs!586))) (size!288 (right!724 (left!721 xs!586)))))))

(declare-fun b!32660 () Bool)

(assert (=> b!32660 (= e!16577 0)))

(assert (= (and b!32661 c!7061) b!32662))

(assert (= (and b!32661 (not c!7061)) b!32663))

(assert (= (and d!16645 c!7060) b!32660))

(assert (= (and d!16645 (not c!7060)) b!32661))

(declare-fun m!35183 () Bool)

(assert (=> b!32663 m!35183))

(declare-fun m!35185 () Bool)

(assert (=> b!32663 m!35185))

(assert (=> b!32610 d!16645))

(declare-fun b!32666 () Bool)

(declare-fun res!15046 () Bool)

(declare-fun e!16578 () Bool)

(assert (=> b!32666 (=> (not res!15046) (not e!16578))))

(assert (=> b!32666 (= res!15046 (concInv!69 (left!721 xs!593)))))

(declare-fun d!16647 () Bool)

(declare-fun res!15047 () Bool)

(declare-fun e!16579 () Bool)

(assert (=> d!16647 (=> res!15047 e!16579)))

(assert (=> d!16647 (= res!15047 (not (is-CC!76 xs!593)))))

(assert (=> d!16647 (= (concInv!69 xs!593) e!16579)))

(declare-fun b!32664 () Bool)

(assert (=> b!32664 (= e!16579 e!16578)))

(declare-fun res!15048 () Bool)

(assert (=> b!32664 (=> (not res!15048) (not e!16578))))

(assert (=> b!32664 (= res!15048 (not (isEmpty!331 (left!721 xs!593))))))

(declare-fun b!32665 () Bool)

(declare-fun res!15045 () Bool)

(assert (=> b!32665 (=> (not res!15045) (not e!16578))))

(assert (=> b!32665 (= res!15045 (not (isEmpty!331 (right!724 xs!593))))))

(declare-fun b!32667 () Bool)

(assert (=> b!32667 (= e!16578 (concInv!69 (right!724 xs!593)))))

(assert (= (and d!16647 (not res!15047)) b!32664))

(assert (= (and b!32664 res!15048) b!32665))

(assert (= (and b!32665 res!15045) b!32666))

(assert (= (and b!32666 res!15046) b!32667))

(declare-fun m!35187 () Bool)

(assert (=> b!32666 m!35187))

(declare-fun m!35189 () Bool)

(assert (=> b!32664 m!35189))

(declare-fun m!35191 () Bool)

(assert (=> b!32665 m!35191))

(declare-fun m!35193 () Bool)

(assert (=> b!32667 m!35193))

(assert (=> b!32615 d!16647))

(assert (=> b!32623 d!16645))

(declare-fun b!32670 () Bool)

(declare-fun e!16580 () Int)

(assert (=> b!32670 (= e!16580 1)))

(declare-fun b!32669 () Bool)

(declare-fun e!16581 () Int)

(assert (=> b!32669 (= e!16581 e!16580)))

(declare-fun c!7063 () Bool)

(assert (=> b!32669 (= c!7063 (is-Single!76 xs!593))))

(declare-fun d!16649 () Bool)

(declare-fun lt!6191 () Int)

(assert (=> d!16649 (>= lt!6191 0)))

(assert (=> d!16649 (= lt!6191 e!16581)))

(declare-fun c!7062 () Bool)

(assert (=> d!16649 (= c!7062 (is-Empty!87 xs!593))))

(assert (=> d!16649 (= (size!288 xs!593) lt!6191)))

(declare-fun b!32671 () Bool)

(assert (=> b!32671 (= e!16580 (+ (size!288 (left!721 xs!593)) (size!288 (right!724 xs!593))))))

(declare-fun b!32668 () Bool)

(assert (=> b!32668 (= e!16581 0)))

(assert (= (and b!32669 c!7063) b!32670))

(assert (= (and b!32669 (not c!7063)) b!32671))

(assert (= (and d!16649 c!7062) b!32668))

(assert (= (and d!16649 (not c!7062)) b!32669))

(declare-fun m!35195 () Bool)

(assert (=> b!32671 m!35195))

(declare-fun m!35197 () Bool)

(assert (=> b!32671 m!35197))

(assert (=> b!32617 d!16649))

(declare-fun b!32674 () Bool)

(declare-fun e!16582 () Int)

(assert (=> b!32674 (= e!16582 1)))

(declare-fun b!32673 () Bool)

(declare-fun e!16583 () Int)

(assert (=> b!32673 (= e!16583 e!16582)))

(declare-fun c!7065 () Bool)

(assert (=> b!32673 (= c!7065 (is-Single!76 xs!586))))

(declare-fun d!16651 () Bool)

(declare-fun lt!6192 () Int)

(assert (=> d!16651 (>= lt!6192 0)))

(assert (=> d!16651 (= lt!6192 e!16583)))

(declare-fun c!7064 () Bool)

(assert (=> d!16651 (= c!7064 (is-Empty!87 xs!586))))

(assert (=> d!16651 (= (size!288 xs!586) lt!6192)))

(declare-fun b!32675 () Bool)

(assert (=> b!32675 (= e!16582 (+ (size!288 (left!721 xs!586)) (size!288 (right!724 xs!586))))))

(declare-fun b!32672 () Bool)

(assert (=> b!32672 (= e!16583 0)))

(assert (= (and b!32673 c!7065) b!32674))

(assert (= (and b!32673 (not c!7065)) b!32675))

(assert (= (and d!16651 c!7064) b!32672))

(assert (= (and d!16651 (not c!7064)) b!32673))

(assert (=> b!32675 m!35149))

(declare-fun m!35199 () Bool)

(assert (=> b!32675 m!35199))

(assert (=> b!32609 d!16651))

(declare-fun d!16653 () Bool)

(assert (=> d!16653 (= (isEmpty!331 xs!586) (= xs!586 Empty!87))))

(assert (=> b!32612 d!16653))

(declare-fun b!32682 () Bool)

(declare-fun e!16586 () Bool)

(declare-fun tp!6774 () Bool)

(declare-fun tp!6775 () Bool)

(assert (=> b!32682 (= e!16586 (and tp!6774 tp!6775))))

(declare-fun b!32683 () Bool)

(assert (=> b!32683 (= e!16586 tp_is_empty!199)))

(assert (=> b!32607 (= tp!6764 e!16586)))

(assert (= (and b!32607 (is-CC!76 (left!721 xs!586))) b!32682))

(assert (= (and b!32607 (is-Single!76 (left!721 xs!586))) b!32683))

(declare-fun b!32684 () Bool)

(declare-fun e!16587 () Bool)

(declare-fun tp!6776 () Bool)

(declare-fun tp!6777 () Bool)

(assert (=> b!32684 (= e!16587 (and tp!6776 tp!6777))))

(declare-fun b!32685 () Bool)

(assert (=> b!32685 (= e!16587 tp_is_empty!199)))

(assert (=> b!32607 (= tp!6766 e!16587)))

(assert (= (and b!32607 (is-CC!76 (right!724 xs!586))) b!32684))

(assert (= (and b!32607 (is-Single!76 (right!724 xs!586))) b!32685))

(declare-fun b!32686 () Bool)

(declare-fun e!16588 () Bool)

(declare-fun tp!6778 () Bool)

(declare-fun tp!6779 () Bool)

(assert (=> b!32686 (= e!16588 (and tp!6778 tp!6779))))

(declare-fun b!32687 () Bool)

(assert (=> b!32687 (= e!16588 tp_is_empty!199)))

(assert (=> b!32604 (= tp!6768 e!16588)))

(assert (= (and b!32604 (is-CC!76 (left!721 xs!593))) b!32686))

(assert (= (and b!32604 (is-Single!76 (left!721 xs!593))) b!32687))

(declare-fun b!32688 () Bool)

(declare-fun e!16589 () Bool)

(declare-fun tp!6780 () Bool)

(declare-fun tp!6781 () Bool)

(assert (=> b!32688 (= e!16589 (and tp!6780 tp!6781))))

(declare-fun b!32689 () Bool)

(assert (=> b!32689 (= e!16589 tp_is_empty!199)))

(assert (=> b!32604 (= tp!6765 e!16589)))

(assert (= (and b!32604 (is-CC!76 (right!724 xs!593))) b!32688))

(assert (= (and b!32604 (is-Single!76 (right!724 xs!593))) b!32689))

(declare-fun b!32690 () Bool)

(declare-fun e!16590 () Bool)

(declare-fun tp!6782 () Bool)

(declare-fun tp!6783 () Bool)

(assert (=> b!32690 (= e!16590 (and tp!6782 tp!6783))))

(declare-fun b!32691 () Bool)

(assert (=> b!32691 (= e!16590 tp_is_empty!199)))

(assert (=> b!32616 (= tp!6769 e!16590)))

(assert (= (and b!32616 (is-CC!76 (left!721 left!644))) b!32690))

(assert (= (and b!32616 (is-Single!76 (left!721 left!644))) b!32691))

(declare-fun b!32692 () Bool)

(declare-fun e!16591 () Bool)

(declare-fun tp!6784 () Bool)

(declare-fun tp!6785 () Bool)

(assert (=> b!32692 (= e!16591 (and tp!6784 tp!6785))))

(declare-fun b!32693 () Bool)

(assert (=> b!32693 (= e!16591 tp_is_empty!199)))

(assert (=> b!32616 (= tp!6767 e!16591)))

(assert (= (and b!32616 (is-CC!76 (right!724 left!644))) b!32692))

(assert (= (and b!32616 (is-Single!76 (right!724 left!644))) b!32693))

(push 1)

(assert (not b!32666))

(assert (not b!32650))

(assert (not b!32682))

(assert (not b!32638))

(assert tp_is_empty!199)

(assert (not b!32671))

(assert (not b!32690))

(assert (not b!32651))

(assert (not b!32636))

(assert (not b!32686))

(assert (not b!32649))

(assert (not b!32648))

(assert (not b!32684))

(assert (not b!32663))

(assert (not b!32664))

(assert (not b!32688))

(assert (not b!32634))

(assert (not b!32637))

(assert (not b!32639))

(assert (not b!32635))

(assert (not b!32675))

(assert (not b!32633))

(assert (not b!32667))

(assert (not b!32632))

(assert (not b!32665))

(assert (not b!32692))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


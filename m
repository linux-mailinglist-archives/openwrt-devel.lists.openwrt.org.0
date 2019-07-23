Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989B07196D
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 15:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=urvGu19Pz6Dd91zLljBQ3COFfmbVCnQl2Ej2uWeoD0A=; b=TgUHWtmeAuYFq7
	oPHHgptXBBxzGeqvDJRBAwG9E6JdRTFbSciDnVYvkr8sqhkZCQ8+SBxbIEWHOIBmdSfJZ2xDRIFjC
	Q5MymDblL91gOjwq7V8rN4/Pv85go94AEV6SmL0jXjhSKhoM0TA9HUbVXLens8mj3o902D19fxr2c
	dN+iVF0vuWzC3YWhO46TAZWzGb5H0QR/zxEtLcgGtILCA+yAnqE49/7kkxSqxXnb5IpfB+qjRVA6q
	9ZzxGdP9sCRDzMN9KR44IgYbDLbaeq1+53kVMpkpKG+2Iu/ccKyaJNglNYWy3aZZgFBDkvuajX9Qo
	RmTB+USB54aDTTCLzEvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuz2-0004YK-DP; Tue, 23 Jul 2019 13:37:36 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuyr-0004X4-Fj
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 13:37:27 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6197043B0;
 Tue, 23 Jul 2019 15:37:22 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 812628b2;
 Tue, 23 Jul 2019 15:37:14 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 23 Jul 2019 15:37:16 +0200
Message-Id: <20190723133717.20010-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_063725_822865_726EFD24 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] base-files: make USE_PROCD=1 default
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VHJhbnNpdGlvbiBwZXJpb2QgZm9yIGluaXQgc2NyaXB0IG1pZ3JhdGlvbiB3YXMgbG9uZyBlbm91
Z2gsIGxldCdzCm1ha2UgVVNFX1BST0NEPTEgZGVmYXVsdCBub3cgc28gdGhlcmUncyBlbm91Z2gg
dGltZSB0byBjb252ZXJ0IHRoZQpyZW1haW5pbmcgc2VydmljZXMvaW5pdCBzY3JpcHRzIGZvciB0
aGUgbmV4dCByZWxlYXNlLgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4KLS0tCiBwYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvZXRjL3JjLmNvbW1vbiB8IDExMyAr
KysrKysrKysrLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygr
KSwgNjYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVz
L2V0Yy9yYy5jb21tb24gYi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvZXRjL3JjLmNvbW1vbgpp
bmRleCA0ZmRmNzQ4NTA5NmMuLmI4ZGJlMTIzY2ExOCAxMDA3NTUKLS0tIGEvcGFja2FnZS9iYXNl
LWZpbGVzL2ZpbGVzL2V0Yy9yYy5jb21tb24KKysrIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVz
L2V0Yy9yYy5jb21tb24KQEAgLTEsMjUgKzEsMTUgQEAKICMhL2Jpbi9zaAogIyBDb3B5cmlnaHQg
KEMpIDIwMDYtMjAxMiBPcGVuV3J0Lm9yZwogCitpbml0c2NyaXB0PSQxCisKIC4gJElQS0dfSU5T
VFJPT1QvbGliL2Z1bmN0aW9ucy5zaAogLiAkSVBLR19JTlNUUk9PVC9saWIvZnVuY3Rpb25zL3Nl
cnZpY2Uuc2gKKy4gJElQS0dfSU5TVFJPT1QvbGliL2Z1bmN0aW9ucy9wcm9jZC5zaAogCi1pbml0
c2NyaXB0PSQxCiBhY3Rpb249JHsyOi1oZWxwfQogc2hpZnQgMgogCi1zdGFydCgpIHsKLQlyZXR1
cm4gMAotfQotCi1zdG9wKCkgewotCXJldHVybiAwCi19Ci0KLXJlbG9hZCgpIHsKLQlyZXN0YXJ0
Ci19Ci0KIHJlc3RhcnQoKSB7CiAJdHJhcCAnJyBURVJNCiAJc3RvcCAiJEAiCkBAIC03MywxMSAr
NjMsMTAgQEAgQXZhaWxhYmxlIGNvbW1hbmRzOgogCXJlbG9hZAlSZWxvYWQgY29uZmlndXJhdGlv
biBmaWxlcyAob3IgcmVzdGFydCBpZiBzZXJ2aWNlIGRvZXMgbm90IGltcGxlbWVudCByZWxvYWQp
CiAJZW5hYmxlCUVuYWJsZSBzZXJ2aWNlIGF1dG9zdGFydAogCWRpc2FibGUJRGlzYWJsZSBzZXJ2
aWNlIGF1dG9zdGFydAotJEVYVFJBX0hFTFAKKwlydW5uaW5nCUNoZWNrIGlmIHNlcnZpY2UgaXMg
cnVubmluZwogRU9GCiB9CiAKLSMgZm9yIHByb2NkCiBzdGFydF9zZXJ2aWNlKCkgewogCXJldHVy
biAwCiB9CkBAIC0xMDQsNTcgKzkzLDQ5IEBAICR7SU5JVF9UUkFDRTorc2V0IC14fQogCiAuICIk
aW5pdHNjcmlwdCIKIAotWyAtbiAiJFVTRV9QUk9DRCIgXSAmJiB7Ci0JRVhUUkFfQ09NTUFORFM9
IiR7RVhUUkFfQ09NTUFORFN9IHJ1bm5pbmcgdHJhY2UiCi0JRVhUUkFfSEVMUD0iXAotCXJ1bm5p
bmcJQ2hlY2sgaWYgc2VydmljZSBpcyBydW5uaW5nCi0JIgotCi0JLiAkSVBLR19JTlNUUk9PVC9s
aWIvZnVuY3Rpb25zL3Byb2NkLnNoCi0JYmFzZXNjcmlwdD0kKHJlYWRsaW5rICIkaW5pdHNjcmlw
dCIpCi0JcmNfcHJvY2QoKSB7Ci0JCWxvY2FsIG1ldGhvZD0ic2V0IgotCQlbIC1uICIkMiIgXSAm
JiBtZXRob2Q9ImFkZCIKLQkJcHJvY2Rfb3Blbl9zZXJ2aWNlICIkKGJhc2VuYW1lICR7YmFzZXNj
cmlwdDotJGluaXRzY3JpcHR9KSIgIiRpbml0c2NyaXB0IgotCQkiJEAiCi0JCXByb2NkX2Nsb3Nl
X3NlcnZpY2UgIiRtZXRob2QiCi0JfQotCi0Jc3RhcnQoKSB7Ci0JCXJjX3Byb2NkIHN0YXJ0X3Nl
cnZpY2UgIiRAIgotCQlpZiBldmFsICJ0eXBlIHNlcnZpY2Vfc3RhcnRlZCIgMj4vZGV2L251bGwg
Pi9kZXYvbnVsbDsgdGhlbgotCQkJc2VydmljZV9zdGFydGVkCi0JCWZpCi0JfQotCi0JdHJhY2Uo
KSB7Ci0JCVRSQUNFX1NZU0NBTExTPTEKLQkJc3RhcnQgIiRAIgotCX0KLQotCXN0b3AoKSB7Citi
YXNlc2NyaXB0PSQocmVhZGxpbmsgIiRpbml0c2NyaXB0IikKK3JjX3Byb2NkKCkgeworCWxvY2Fs
IG1ldGhvZD0ic2V0IgorCVsgLW4gIiQyIiBdICYmIG1ldGhvZD0iYWRkIgorCXByb2NkX29wZW5f
c2VydmljZSAiJChiYXNlbmFtZSAke2Jhc2VzY3JpcHQ6LSRpbml0c2NyaXB0fSkiICIkaW5pdHNj
cmlwdCIKKwkiJEAiCisJcHJvY2RfY2xvc2Vfc2VydmljZSAiJG1ldGhvZCIKK30KKworc3RhcnQo
KSB7CisJcmNfcHJvY2Qgc3RhcnRfc2VydmljZSAiJEAiCisJaWYgZXZhbCAidHlwZSBzZXJ2aWNl
X3N0YXJ0ZWQiIDI+L2Rldi9udWxsID4vZGV2L251bGw7IHRoZW4KKwkJc2VydmljZV9zdGFydGVk
CisJZmkKK30KKwordHJhY2UoKSB7CisJVFJBQ0VfU1lTQ0FMTFM9MQorCXN0YXJ0ICIkQCIKK30K
Kworc3RvcCgpIHsKKwlwcm9jZF9sb2NrCisJc3RvcF9zZXJ2aWNlICIkQCIKKwlwcm9jZF9raWxs
ICIkKGJhc2VuYW1lICR7YmFzZXNjcmlwdDotJGluaXRzY3JpcHR9KSIgIiQxIgorCWlmIGV2YWwg
InR5cGUgc2VydmljZV9zdG9wcGVkIiAyPi9kZXYvbnVsbCA+L2Rldi9udWxsOyB0aGVuCisJCXNl
cnZpY2Vfc3RvcHBlZAorCWZpCit9CisKK3JlbG9hZCgpIHsKKwlpZiBldmFsICJ0eXBlIHJlbG9h
ZF9zZXJ2aWNlIiAyPi9kZXYvbnVsbCA+L2Rldi9udWxsOyB0aGVuCiAJCXByb2NkX2xvY2sKLQkJ
c3RvcF9zZXJ2aWNlICIkQCIKLQkJcHJvY2Rfa2lsbCAiJChiYXNlbmFtZSAke2Jhc2VzY3JpcHQ6
LSRpbml0c2NyaXB0fSkiICIkMSIKLQkJaWYgZXZhbCAidHlwZSBzZXJ2aWNlX3N0b3BwZWQiIDI+
L2Rldi9udWxsID4vZGV2L251bGw7IHRoZW4KLQkJCXNlcnZpY2Vfc3RvcHBlZAotCQlmaQotCX0K
LQotCXJlbG9hZCgpIHsKLQkJaWYgZXZhbCAidHlwZSByZWxvYWRfc2VydmljZSIgMj4vZGV2L251
bGwgPi9kZXYvbnVsbDsgdGhlbgotCQkJcHJvY2RfbG9jawotCQkJcmVsb2FkX3NlcnZpY2UgIiRA
IgotCQllbHNlCi0JCQlzdGFydAotCQlmaQotCX0KLQotCXJ1bm5pbmcoKSB7Ci0JCXNlcnZpY2Vf
cnVubmluZyAiJEAiCi0JfQotfQotCi1BTExfQ09NTUFORFM9InN0YXJ0IHN0b3AgcmVsb2FkIHJl
c3RhcnQgYm9vdCBzaHV0ZG93biBlbmFibGUgZGlzYWJsZSBlbmFibGVkIGRlcGVuZHMgJHtFWFRS
QV9DT01NQU5EU30iCisJCXJlbG9hZF9zZXJ2aWNlICIkQCIKKwllbHNlCisJCXN0YXJ0CisJZmkK
K30KKworcnVubmluZygpIHsKKwlzZXJ2aWNlX3J1bm5pbmcgIiRAIgorfQorCitBTExfQ09NTUFO
RFM9InN0YXJ0IHN0b3AgcmVsb2FkIHJlc3RhcnQgYm9vdCBzaHV0ZG93biBlbmFibGUgZGlzYWJs
ZSBlbmFibGVkIGRlcGVuZHMgcnVubmluZyB0cmFjZSIKIGxpc3RfY29udGFpbnMgQUxMX0NPTU1B
TkRTICIkYWN0aW9uIiB8fCBhY3Rpb249aGVscAogJGFjdGlvbiAiJEAiCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C2BEF223
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:40:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rEkDBuT8neiUC9dRGy5+yZxV3Lp5H926FltosFCdhTY=; b=c982HkgNRNd4M6
	EzSpVll71jhS6P4fku9H7E/wsYT89Wo946hfDQ0D/ybZTZRMW7FWZvlsyWFDdVvJX9Zw7KnyvCJEu
	+AMtBwAy0k58v29vCP3wZMhYXgx+81xZ1c5OTmoq/R8pi5+AcpAqouM/nWWirSSFDPYJP/voXy/4A
	yh44AeeLHB6PRP6FvLred9KP5sXzkfA5N/G0SmdtNLqBUIZKaxfTJ8Fg5azjQ0OqH30e3IHBHnsEN
	jM3p2Z1blW34P5T/H+6RPW/U2oXWt48wjeKlUiqOL0MgZp3hLJ4dcYtUxGrUxUhmf0IcvEPhyDLmm
	u2RZ36/G/A0v72RxjCDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmth-0004wD-Px; Tue, 05 Nov 2019 00:40:37 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmqS-0008CL-VQ
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:37:19 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 627614D8E;
 Tue,  5 Nov 2019 01:37:15 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 5a97419d;
 Tue, 5 Nov 2019 01:37:04 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 01:36:57 +0100
Message-Id: <20191105003657.16540-19-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-1-ynezz@true.cz>
References: <20191105003657.16540-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_163717_435663_EDBFF209 
X-CRM114-Status: UNSURE (   7.64  )
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
Subject: [OpenWrt-Devel] [PATCH uci 18/18] lua: fix error handling
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

c2Nhbi1idWlsZCBmcm9tIGNsYW5nIHZlcnNpb24gOSBoYXMgcmVwb3J0ZWQgZm9sbG93aW5nIGlz
c3VlczoKCiB1Y2kuYzozODk6Mzogd2FybmluZzogVmFsdWUgc3RvcmVkIHRvICdlcnInIGlzIG5l
dmVyIHJlYWQKICAgICAgICAgICAgICAgIGVyciA9IFVDSV9FUlJfSU5WQUw7CiAgICAgICAgICAg
ICAgICBeICAgICB+fn5+fn5+fn5+fn5+CiB1Y2kuYzozOTM6Mzogd2FybmluZzogVmFsdWUgc3Rv
cmVkIHRvICdlcnInIGlzIG5ldmVyIHJlYWQKICAgICAgICAgICAgICAgIGVyciA9IFVDSV9FUlJf
Tk9URk9VTkQ7CiAgICAgICAgICAgICAgICBeICAgICB+fn5+fn5+fn5+fn5+fn5+CiB1Y2kuYzo0
MTc6NDogd2FybmluZzogVmFsdWUgc3RvcmVkIHRvICdlcnInIGlzIG5ldmVyIHJlYWQKICAgICAg
ICAgICAgICAgICAgICAgICAgZXJyID0gVUNJX0VSUl9JTlZBTDsKICAgICAgICAgICAgICAgICAg
ICAgICAgXiAgICAgfn5+fn5+fn5+fn5+fgogdWNpLmM6NTI0OjM6IHdhcm5pbmc6IFZhbHVlIHN0
b3JlZCB0byAnZXJyJyBpcyBuZXZlciByZWFkCiAgICAgICAgICAgICAgICBlcnIgPSBVQ0lfRVJS
X0lOVkFMOwogICAgICAgICAgICAgICAgXiAgICAgfn5+fn5+fn5+fn5+fgogdWNpLmM6NTMzOjM6
IHdhcm5pbmc6IFZhbHVlIHN0b3JlZCB0byAnZXJyJyBpcyBuZXZlciByZWFkCiAgICAgICAgICAg
ICAgICBlcnIgPSBVQ0lfRVJSX0lOVkFMOwogICAgICAgICAgICAgICAgXiAgICAgfn5+fn5+fn5+
fn5+fgogdWNpLmM6NTY1OjQ6IHdhcm5pbmc6IFZhbHVlIHN0b3JlZCB0byAnZXJyJyBpcyBuZXZl
ciByZWFkCiAgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IFVDSV9FUlJfSU5WQUw7CiAgICAg
ICAgICAgICAgICAgICAgICAgIF4gICAgIH5+fn5+fn5+fn5+fn4KIHVjaS5jOjU3NTozOiB3YXJu
aW5nOiBWYWx1ZSBzdG9yZWQgdG8gJ2VycicgaXMgbmV2ZXIgcmVhZAogICAgICAgICAgICAgICAg
ZXJyID0gVUNJX0VSUl9JTlZBTDsKICAgICAgICAgICAgICAgIF4gICAgIH5+fn5+fn5+fn5+fn4K
IHVjaS5jOjU4NDozOiB3YXJuaW5nOiBWYWx1ZSBzdG9yZWQgdG8gJ2VycicgaXMgbmV2ZXIgcmVh
ZAogICAgICAgICAgICAgICAgZXJyID0gVUNJX0VSUl9JTlZBTDsKICAgICAgICAgICAgICAgIF4g
ICAgIH5+fn5+fn5+fn5+fn4KIHVjaS5jOjY0MjozOiB3YXJuaW5nOiBWYWx1ZSBzdG9yZWQgdG8g
J2VycicgaXMgbmV2ZXIgcmVhZAogICAgICAgICAgICAgICAgZXJyID0gVUNJX0VSUl9JTlZBTDsK
ICAgICAgICAgICAgICAgIF4gICAgIH5+fn5+fn5+fn5+fn4KIHVjaS5jOjY1MTozOiB3YXJuaW5n
OiBWYWx1ZSBzdG9yZWQgdG8gJ2VycicgaXMgbmV2ZXIgcmVhZAogICAgICAgICAgICAgICAgZXJy
ID0gVUNJX0VSUl9JTlZBTDsKICAgICAgICAgICAgICAgIF4gICAgIH5+fn5+fn5+fn5+fn4KClNp
Z25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogbHVhL3VjaS5j
IHwgMjAgKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25z
KCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9sdWEvdWNpLmMgYi9sdWEvdWNpLmMK
aW5kZXggYTdhYWFkMzc1YzIwLi4xZWQ3M2U0ZjY3ZGMgMTAwNjQ0Ci0tLSBhL2x1YS91Y2kuYwor
KysgYi9sdWEvdWNpLmMKQEAgLTM4NiwxMSArMzg2LDExIEBAIHVjaV9sdWFfZ2V0X2FueShsdWFf
U3RhdGUgKkwsIGJvb2wgYWxsKQogCiAJbG9va3VwX3B0cihjdHgsICZwdHIsIE5VTEwsIHRydWUp
OwogCWlmICghYWxsICYmICFwdHIucykgewotCQllcnIgPSBVQ0lfRVJSX0lOVkFMOworCQljdHgt
PmVyciA9IFVDSV9FUlJfSU5WQUw7CiAJCWdvdG8gZXJyb3I7CiAJfQogCWlmICghKHB0ci5mbGFn
cyAmIFVDSV9MT09LVVBfQ09NUExFVEUpKSB7Ci0JCWVyciA9IFVDSV9FUlJfTk9URk9VTkQ7CisJ
CWN0eC0+ZXJyID0gVUNJX0VSUl9OT1RGT1VORDsKIAkJZ290byBlcnJvcjsKIAl9CiAKQEAgLTQx
NCw3ICs0MTQsNyBAQCB1Y2lfbHVhX2dldF9hbnkobHVhX1N0YXRlICpMLCBib29sIGFsbCkKIAkJ
CXVjaV9wdXNoX29wdGlvbihMLCBwdHIubyk7CiAJCQlicmVhazsKIAkJZGVmYXVsdDoKLQkJCWVy
ciA9IFVDSV9FUlJfSU5WQUw7CisJCQljdHgtPmVyciA9IFVDSV9FUlJfSU5WQUw7CiAJCQlnb3Rv
IGVycm9yOwogCX0KIAlpZiAocykKQEAgLTUyMSw3ICs1MjEsNyBAQCB1Y2lfbHVhX3JlbmFtZShs
dWFfU3RhdGUgKkwpCiAJCXB0ci5vcHRpb24gPSBOVUxMOwogCQlicmVhazsKIAlkZWZhdWx0Ogot
CQllcnIgPSBVQ0lfRVJSX0lOVkFMOworCQljdHgtPmVyciA9IFVDSV9FUlJfSU5WQUw7CiAJCWdv
dG8gZXJyb3I7CiAJfQogCkBAIC01MzAsNyArNTMwLDcgQEAgdWNpX2x1YV9yZW5hbWUobHVhX1N0
YXRlICpMKQogCQlnb3RvIGVycm9yOwogCiAJaWYgKCgocHRyLnMgPT0gTlVMTCkgJiYgKHB0ci5v
cHRpb24gIT0gTlVMTCkpIHx8IChwdHIudmFsdWUgPT0gTlVMTCkpIHsKLQkJZXJyID0gVUNJX0VS
Ul9JTlZBTDsKKwkJY3R4LT5lcnIgPSBVQ0lfRVJSX0lOVkFMOwogCQlnb3RvIGVycm9yOwogCX0K
IApAQCAtNTYyLDcgKzU2Miw3IEBAIHVjaV9sdWFfcmVvcmRlcihsdWFfU3RhdGUgKkwpCiAJY2Fz
ZSAxOgogCQkvKiBGb3JtYXQ6IHVjaS5zZXQoInAucz12Iikgb3IgdWNpLnNldCgicC5zPXYiKSAq
LwogCQlpZiAocHRyLm9wdGlvbikgewotCQkJZXJyID0gVUNJX0VSUl9JTlZBTDsKKwkJCWN0eC0+
ZXJyID0gVUNJX0VSUl9JTlZBTDsKIAkJCWdvdG8gZXJyb3I7CiAJCX0KIAkJYnJlYWs7CkBAIC01
NzIsNyArNTcyLDcgQEAgdWNpX2x1YV9yZW9yZGVyKGx1YV9TdGF0ZSAqTCkKIAkJcHRyLm9wdGlv
biA9IE5VTEw7CiAJCWJyZWFrOwogCWRlZmF1bHQ6Ci0JCWVyciA9IFVDSV9FUlJfSU5WQUw7CisJ
CWN0eC0+ZXJyID0gVUNJX0VSUl9JTlZBTDsKIAkJZ290byBlcnJvcjsKIAl9CiAKQEAgLTU4MSw3
ICs1ODEsNyBAQCB1Y2lfbHVhX3Jlb3JkZXIobHVhX1N0YXRlICpMKQogCQlnb3RvIGVycm9yOwog
CiAJaWYgKChwdHIucyA9PSBOVUxMKSB8fCAocHRyLnZhbHVlID09IE5VTEwpKSB7Ci0JCWVyciA9
IFVDSV9FUlJfSU5WQUw7CisJCWN0eC0+ZXJyID0gVUNJX0VSUl9JTlZBTDsKIAkJZ290byBlcnJv
cjsKIAl9CiAKQEAgLTYzOSw3ICs2MzksNyBAQCB1Y2lfbHVhX3NldChsdWFfU3RhdGUgKkwpCiAJ
CXB0ci5vcHRpb24gPSBOVUxMOwogCQlicmVhazsKIAlkZWZhdWx0OgotCQllcnIgPSBVQ0lfRVJS
X0lOVkFMOworCQljdHgtPmVyciA9IFVDSV9FUlJfSU5WQUw7CiAJCWdvdG8gZXJyb3I7CiAJfQog
CkBAIC02NDgsNyArNjQ4LDcgQEAgdWNpX2x1YV9zZXQobHVhX1N0YXRlICpMKQogCQlnb3RvIGVy
cm9yOwogCiAJaWYgKCgocHRyLnMgPT0gTlVMTCkgJiYgKHB0ci5vcHRpb24gIT0gTlVMTCkpIHx8
IChwdHIudmFsdWUgPT0gTlVMTCkpIHsKLQkJZXJyID0gVUNJX0VSUl9JTlZBTDsKKwkJY3R4LT5l
cnIgPSBVQ0lfRVJSX0lOVkFMOwogCQlnb3RvIGVycm9yOwogCX0KIAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

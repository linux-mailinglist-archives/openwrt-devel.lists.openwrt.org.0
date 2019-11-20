Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6721045FF
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 22:46:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/MzT65amkqXMixkmLWEnfCf+PkI8WcHwFhcW3m3gLc=; b=GX2lr8Cd5KPEhN
	nPh+N1CNE/fajr4DOMZ25zWIZPUEq9GUFyrTUM1VJcV/RKChZvSFnH6LopOoqJ5PHRToSsVGIpxIw
	67gyacN/6XTj4lkVs5/eF44TGb3mpL63nQVCeXKhnMf+ScUN2UM9sA26Thi3cyAeas0gV1qU3NM5I
	4bkrqr0k40hzQ8/VYHrUyMz9bwLJhh5JpuUShpIQPAT26ouMEjxY18KRJtgKHVafQhwcIDhF/HNjy
	zUW/Z7um2nBbnzE33njvz0I/Vl/IR3cmVx2VA43lWiIbHbVO3tNxc+XkidqAKBy5Wxfu7MQZx5RUX
	pRP8Ixa/ZUS1uNgwpwwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXXnV-0000bJ-AB; Wed, 20 Nov 2019 21:46:01 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXXld-0005p3-58
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 21:44:07 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 046454ADA;
 Wed, 20 Nov 2019 22:44:01 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id b4899f54;
 Wed, 20 Nov 2019 22:43:52 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 Nov 2019 22:43:49 +0100
Message-Id: <20191120214353.27652-7-ynezz@true.cz>
In-Reply-To: <20191120214353.27652-1-ynezz@true.cz>
References: <20191120214353.27652-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_134405_516179_BD2BACCA 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 libubox 06/10] base64: fix possible null
 pointer dereference
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

Y2xhbmctMTAgYW5hbHl6ZXIgcmVwb3J0cyBmb2xsb3dpbmc6CgogYmFzZTY0LmM6MzI1OjIwOiB3
YXJuaW5nOiBBcnJheSBhY2Nlc3MgKGZyb20gdmFyaWFibGUgJ3RhcmdldCcpIHJlc3VsdHMgaW4g
YSBudWxsIHBvaW50ZXIgZGVyZWZlcmVuY2UKICAgICAgICAgICAgICAgICB0YXJnZXRbdGFyaW5k
ZXhdID0gMDsKICAgICAgICAgICAgICAgICB+fn5+fn4gICAgICAgICAgIF4KCmFuZCBwcmVwYXJl
ZCB0ZXN0IGNhc2UgY29uZmlybXMgaXQ6CgogSW52YWxpZCB3cml0ZSBvZiBzaXplIDEKICAgIGF0
IDB4NEU0NDYzRjogYjY0X2RlY29kZSAoYmFzZTY0LmM6MzI1KQogICAgYnkgMHg0MDA4OEM6IHRl
c3RfaW52YWxpZF9pbnB1dHMgKHRlc3RzL3Rlc3QtYmFzZTY0LmM6MjYpCiAgICBieSAweDQwMDg4
QzogbWFpbiAodGVzdHMvdGVzdC1iYXNlNjQuYzozMikKICBBZGRyZXNzIDB4MSBpcyBub3Qgc3Rh
Y2snZCwgbWFsbG9jJ2Qgb3IgKHJlY2VudGx5KSBmcmVlJ2QKCiBQcm9jZXNzIHRlcm1pbmF0aW5n
IHdpdGggZGVmYXVsdCBhY3Rpb24gb2Ygc2lnbmFsIDExIChTSUdTRUdWKQogIEFjY2VzcyBub3Qg
d2l0aGluIG1hcHBlZCByZWdpb24gYXQgYWRkcmVzcyAweDEKICAgIGF0IDB4NEU0NDYzRjogYjY0
X2RlY29kZSAoYmFzZTY0LmM6MzI1KQogICAgYnkgMHg0MDA4OEM6IHRlc3RfaW52YWxpZF9pbnB1
dHMgKHRlc3RzL3Rlc3QtYmFzZTY0LmM6MjYpCiAgICBieSAweDQwMDg4QzogbWFpbiAodGVzdHMv
dGVzdC1iYXNlNjQuYzozMikKClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRy
dWUuY3o+Ci0tLQogYmFzZTY0LmMgICAgICAgICAgICAgICAgICB8IDYgKysrKysrCiB0ZXN0cy9D
TWFrZUxpc3RzLnR4dCAgICAgIHwgMiArKwogdGVzdHMvY3JhbS9DTWFrZUxpc3RzLnR4dCB8IDIg
KysKIHRlc3RzL2NyYW0vdGVzdF9iYXNlNjQudCAgfCA4ICsrKysrKysrCiB0ZXN0cy90ZXN0LWI2
NF9kZWNvZGUuYyAgIHwgNyArKysrKysrCiB0ZXN0cy90ZXN0LWI2NF9lbmNvZGUuYyAgIHwgNyAr
KysrKysrCiA2IGZpbGVzIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEw
MDY0NCB0ZXN0cy90ZXN0LWI2NF9kZWNvZGUuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IHRlc3RzL3Rl
c3QtYjY0X2VuY29kZS5jCgpkaWZmIC0tZ2l0IGEvYmFzZTY0LmMgYi9iYXNlNjQuYwppbmRleCA0
NzU5ZWRlMDFlN2MuLjFiZjIxNzcyZmJlZCAxMDA2NDQKLS0tIGEvYmFzZTY0LmMKKysrIGIvYmFz
ZTY0LmMKQEAgLTY1LDYgKzY1LDggQEAKICNpbmNsdWRlIDxzdGRpby5oPgogI2luY2x1ZGUgPHN0
ZGxpYi5oPgogI2luY2x1ZGUgPHN0cmluZy5oPgorCisjaW5jbHVkZSAiYXNzZXJ0LmgiCiAjaW5j
bHVkZSAidXRpbHMuaCIKIAogc3RhdGljIGNvbnN0IGNoYXIgQmFzZTY0W10gPQpAQCAtMTQ0LDYg
KzE0Niw4IEBAIGludCBiNjRfZW5jb2RlKGNvbnN0IHZvaWQgKl9zcmMsIHNpemVfdCBzcmNsZW5n
dGgsCiAJdV9jaGFyIG91dHB1dFs0XTsKIAlzaXplX3QgaTsKIAorCWFzc2VydChkZXN0ICYmIHRh
cmdzaXplID4gMCk7CisKIAl3aGlsZSAoMiA8IHNyY2xlbmd0aCkgewogCQlpbnB1dFswXSA9ICpz
cmMrKzsKIAkJaW5wdXRbMV0gPSAqc3JjKys7CkBAIC0yMDgsNiArMjEyLDggQEAgaW50IGI2NF9k
ZWNvZGUoY29uc3Qgdm9pZCAqX3NyYywgdm9pZCAqZGVzdCwgc2l6ZV90IHRhcmdzaXplKQogCXN0
YXRlID0gMDsKIAl0YXJpbmRleCA9IDA7CiAKKwlhc3NlcnQoZGVzdCAmJiB0YXJnc2l6ZSA+IDAp
OworCiAJd2hpbGUgKChjaCA9ICh1bnNpZ25lZCBjaGFyKSpzcmMrKykgIT0gJ1wwJykgewogCQlp
ZiAoaXNzcGFjZShjaCkpCS8qIFNraXAgd2hpdGVzcGFjZSBhbnl3aGVyZS4gKi8KIAkJCWNvbnRp
bnVlOwpkaWZmIC0tZ2l0IGEvdGVzdHMvQ01ha2VMaXN0cy50eHQgYi90ZXN0cy9DTWFrZUxpc3Rz
LnR4dAppbmRleCA2ODMyYjNmNTJjMzAuLjYwZDdiOTgzOWFkNCAxMDA2NDQKLS0tIGEvdGVzdHMv
Q01ha2VMaXN0cy50eHQKKysrIGIvdGVzdHMvQ01ha2VMaXN0cy50eHQKQEAgLTgsMyArOCw1IEBA
IEVORE1BQ1JPKEFERF9VTklUX1RFU1QpCiAKIEFERF9VTklUX1RFU1QoYXZsKQogQUREX1VOSVRf
VEVTVChiNjQpCitBRERfVU5JVF9URVNUKGI2NF9lbmNvZGUpCitBRERfVU5JVF9URVNUKGI2NF9k
ZWNvZGUpCmRpZmYgLS1naXQgYS90ZXN0cy9jcmFtL0NNYWtlTGlzdHMudHh0IGIvdGVzdHMvY3Jh
bS9DTWFrZUxpc3RzLnR4dAppbmRleCBjYTAwZDExZGQ2ODYuLjJkZWI0ZWYzZGQxZiAxMDA2NDQK
LS0tIGEvdGVzdHMvY3JhbS9DTWFrZUxpc3RzLnR4dAorKysgYi90ZXN0cy9jcmFtL0NNYWtlTGlz
dHMudHh0CkBAIC0yNSwzICsyNSw1IEBAIEVORE1BQ1JPKEFERF9DUkFNX1RFU1RfRU5WKQogQURE
X0NSQU1fVEVTVF9FTlYoSlNITiBqc2huKQogQUREX0NSQU1fVEVTVF9FTlYoVEVTVF9BVkwgdGVz
dC1hdmwpCiBBRERfQ1JBTV9URVNUX0VOVihURVNUX0I2NCB0ZXN0LWI2NCkKK0FERF9DUkFNX1RF
U1RfRU5WKFRFU1RfQjY0X0VOQ09ERSB0ZXN0LWI2NF9lbmNvZGUpCitBRERfQ1JBTV9URVNUX0VO
VihURVNUX0I2NF9ERUNPREUgdGVzdC1iNjRfZGVjb2RlKQpkaWZmIC0tZ2l0IGEvdGVzdHMvY3Jh
bS90ZXN0X2Jhc2U2NC50IGIvdGVzdHMvY3JhbS90ZXN0X2Jhc2U2NC50CmluZGV4IDdlNDE0NDI3
NDZkOC4uZjU4YmJhYTcxYWNiIDEwMDY0NAotLS0gYS90ZXN0cy9jcmFtL3Rlc3RfYmFzZTY0LnQK
KysrIGIvdGVzdHMvY3JhbS90ZXN0X2Jhc2U2NC50CkBAIC0xNSwzICsxNSwxMSBAQCBjaGVjayB0
aGF0IGJhc2U2NCBpcyBwcm9kdWNpbmcgZXhwZWN0ZWQgcmVzdWx0czoKICAgNCBmb29iCiAgIDUg
Zm9vYmEKICAgNiBmb29iYXIKKworICAkICRURVNUX0I2NF9ERUNPREUgMj4mMSB8IGN1dCAtZCA6
IC1mNC0KKyAgIGI2NF9kZWNvZGU6IEFzc2VydGlvbiBgZGVzdCAmJiB0YXJnc2l6ZSA+IDAnIGZh
aWxlZC4KKyAgQWJvcnRlZCAoY29yZSBkdW1wZWQpCisKKyAgJCAkVEVTVF9CNjRfRU5DT0RFIDI+
JjEgfCBjdXQgLWQgOiAtZjQtCisgICBiNjRfZW5jb2RlOiBBc3NlcnRpb24gYGRlc3QgJiYgdGFy
Z3NpemUgPiAwJyBmYWlsZWQuCisgIEFib3J0ZWQgKGNvcmUgZHVtcGVkKQpkaWZmIC0tZ2l0IGEv
dGVzdHMvdGVzdC1iNjRfZGVjb2RlLmMgYi90ZXN0cy90ZXN0LWI2NF9kZWNvZGUuYwpuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjQ3OThmYThkYTM4MAotLS0gL2Rldi9u
dWxsCisrKyBiL3Rlc3RzL3Rlc3QtYjY0X2RlY29kZS5jCkBAIC0wLDAgKzEsNyBAQAorI2luY2x1
ZGUgInV0aWxzLmgiCisKK2ludCBtYWluKCkKK3sKKwliNjRfZGVjb2RlKCJaZz09IiwgTlVMTCwg
Mik7CisJcmV0dXJuIDA7Cit9CmRpZmYgLS1naXQgYS90ZXN0cy90ZXN0LWI2NF9lbmNvZGUuYyBi
L3Rlc3RzL3Rlc3QtYjY0X2VuY29kZS5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAw
MDAwMDAwMC4uNWYwMTFlNTJkZWM2Ci0tLSAvZGV2L251bGwKKysrIGIvdGVzdHMvdGVzdC1iNjRf
ZW5jb2RlLmMKQEAgLTAsMCArMSw3IEBACisjaW5jbHVkZSAidXRpbHMuaCIKKworaW50IG1haW4o
KQoreworCWI2NF9lbmNvZGUoImZvbyIsIDMsIE5VTEwsIDIpOworCXJldHVybiAwOworfQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

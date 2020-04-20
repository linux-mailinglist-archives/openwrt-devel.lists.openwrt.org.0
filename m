Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 961EF1B0E5F
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 16:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HvE977d37VxbJMGsIzDHjOhM5AfNJr/o+lrljB50zPc=; b=hMnTqCVDhvrZeg
	W1sqD5huD2fnQ+03Ikano4NL1bG/3OnPnLv972T7tQCEH5/ZsTclSdtHVo1pCjrmDpgHRe0oGPwTY
	rNEx0i3nv1pzSFAwUXMHChskut1YtXXG/icxgln4a84P3VRZ/Dc/UKiTfynxcyi1gikCH0N153aj/
	wLUzZ9WO8Q237T4QcVMwYloxaRyhKW6pXtLp+ta8w6eDArun9C4Xn7EvoEmY3cpDrn5195QZbTje+
	hWfoXS6sxre+GTdde+TZrZSSJGx6tgKJpI9Q4Mz+pc0SI24l6FPj43U+COcpklaKLUXUhpP4ZliJx
	OzoO5oLsn1WYnqxcMTmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXQj-0001aQ-Rx; Mon, 20 Apr 2020 14:29:49 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXQb-0001Xj-FQ
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 14:29:43 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 07FE94FCB;
 Mon, 20 Apr 2020 16:29:36 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id bfabcff8;
 Mon, 20 Apr 2020 16:29:21 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 16:29:32 +0200
Message-Id: <20200420142932.12056-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_072941_664431_FD98F6A5 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] arm-trusted-firmware-sunxi: bump to
 v2.3-rc1 and use atf-builds binaries
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Zoltan HERPAI <wigyori@uid0.hu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VXBkYXRlIEFURiB0byBsYXRlc3QgdjIuMy1yYzEgdmVyc2lvbiBhbmQgdXNlIHJlcHJvZHVjaWJs
ZSBibDMxIGJpbmFyaWVzCmZyb20gYXRmLWJ1aWxkcyBwcm9qZWN0LgoKYXRmLWJ1aWxkcyBwcm9q
ZWN0IHN0YXJ0ZWQgcmVjZW50bHkgb2ZmZXJpbmcgcmVwcm9kdWNpYmxlIEFURiBiaW5hcmllcwp3
aGljaCBpcyBtb3JlIGNvbnZlbmllbnQgdGhlbiBidWlsZGluZyB2ZXJ5IHRpbnkgQVRGIGFydGlm
YWN0cyBmcm9tCnNjcmF0Y2ggZHVyaW5nIGVhY2ggYnVpbGQsIHRodXMgc2F2aW5nIGNvbnNpZGVy
YWJsZSBidWlsZCByZXNvdXJjZXMuICBJdApoYXMgcmVkdWNlZCBidWlsZCBmcm9tIHNjcmF0Y2gg
dGltZSBvbiBteSBDSSBidWlsZGVyIGZvciBzdW54aS9jb3J0ZXhhNTMKdGFyZ2V0IGZyb20gNTdt
aW4gZG93biB0byAyOW1pbi4KClJ1biB0ZXN0ZWQgb24gYTY0LW9saW51eGluby1lbW1jLgoKIFUt
Qm9vdCBTUEwgMjAyMC4wNCAoQXByIDIwIDIwMjAgLSAwODoyODowNSArMDAwMCkKIERSQU06IDEw
MjQgTWlCCiBUcnlpbmcgdG8gYm9vdCBmcm9tIE1NQzEKIE5PVElDRTogIEJMMzE6IHYyLjIoKTp2
Mi4zLXJjMQogTk9USUNFOiAgQkwzMTogQnVpbHQgOiAxOToyMDo1NywgQXByIDE1IDIwMjAKIE5P
VElDRTogIEJMMzE6IERldGVjdGVkIEFsbHdpbm5lciBBNjQvSDY0L1IxOCBTb0MgKDE2ODkpCiBO
T1RJQ0U6ICBCTDMxOiBGb3VuZCBVLUJvb3QgRFRCIGF0IDB4NDA5MGRjMCwgbW9kZWw6IE9saW1l
eCBBNjQtT2xpbnV4aW5vLWVNTUMKCkNjOiBab2x0YW4gSEVSUEFJIDx3aWd5b3JpQHVpZDAuaHU+
CkNjOiBIYXVrZSBNZWhydGVucyA8aGF1a2VAaGF1a2UtbS5kZT4KU2lnbmVkLW9mZi1ieTogUGV0
ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiAuLi4vYm9vdC9hcm0tdHJ1c3RlZC1maXJt
d2FyZS1zdW54aS9NYWtlZmlsZSAgfCAyNSArKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvcGFj
a2FnZS9ib290L2FybS10cnVzdGVkLWZpcm13YXJlLXN1bnhpL01ha2VmaWxlIGIvcGFja2FnZS9i
b290L2FybS10cnVzdGVkLWZpcm13YXJlLXN1bnhpL01ha2VmaWxlCmluZGV4IDAyMTFlNWUwMzA0
OS4uMDE4YWViOTBmNDYxIDEwMDY0NAotLS0gYS9wYWNrYWdlL2Jvb3QvYXJtLXRydXN0ZWQtZmly
bXdhcmUtc3VueGkvTWFrZWZpbGUKKysrIGIvcGFja2FnZS9ib290L2FybS10cnVzdGVkLWZpcm13
YXJlLXN1bnhpL01ha2VmaWxlCkBAIC04LDE5ICs4LDIwIEBACiBpbmNsdWRlICQoVE9QRElSKS9y
dWxlcy5tawogCiBQS0dfTkFNRTo9YXJtLXRydXN0ZWQtZmlybXdhcmUtc3VueGkKK1BLR19WRVJT
SU9OOj0yLjMtcmMxCiBQS0dfUkVMRUFTRTo9MQogCi1QS0dfU09VUkNFX1BST1RPOj1naXQKLVBL
R19TT1VSQ0VfVVJMPWh0dHBzOi8vZ2l0aHViLmNvbS9BUk0tc29mdHdhcmUvYXJtLXRydXN0ZWQt
ZmlybXdhcmUKLVBLR19TT1VSQ0VfREFURTo9MjAxOC0xMC0wMgotUEtHX1NPVVJDRV9WRVJTSU9O
Oj1kYmM4ZDk0OTZlYWQ5ZWNkZDdjMmEyNzZiNTQyYTRmYmJiZjY0MDI3Ci1QS0dfTUlSUk9SX0hB
U0g6PWM4MTUyMWEyN2I4NmY2MDZlOTI3YjRlMzQ2Mjg2NTQwYjg2MjgyOGM4ZDQ5MjkyZWFlMWY1
YzZhZGZjMjQwMDEKK1BLR19TT1VSQ0U6PWF0Zi12JChQS0dfVkVSU0lPTikudGFyLmd6CitQS0df
U09VUkNFX1VSTDo9aHR0cHM6Ly9naXRodWIuY29tL2F0Zi1idWlsZHMvYXRmL3JlbGVhc2VzL2Rv
d25sb2FkL3YkKFBLR19WRVJTSU9OKS9hdGYtdiQoUEtHX1ZFUlNJT04pLnRhci5nej8KK1BLR19I
QVNIOj1kM2JkMWUzZDJkZmU0YmE1YmM3NTc4NTY3NDY5NWFhYzU2NTU0NzliNTQxNTlmYjNkN2Jm
YTcyNTNkYTUyMjE2CiAKIFBLR19MSUNFTlNFOj1CU0QtMy1DbGF1c2UKIFBLR19MSUNFTlNFX0ZJ
TEVTOj1saWNlbnNlLm1kCiAKIFBLR19NQUlOVEFJTkVSOj1IYXVrZSBNZWhydGVucyA8aGF1a2VA
aGF1a2UtbS5kZT4KIAorTUFLRV9QQVRIOj0kKFBLR19OQU1FKQorCiBpbmNsdWRlICQoSU5DTFVE
RV9ESVIpL3BhY2thZ2UubWsKIAogCkBAIC0zMSwxOCArMzIsMTYgQEAgZGVmaW5lIFBhY2thZ2Uv
YXJtLXRydXN0ZWQtZmlybXdhcmUtc3VueGkKICAgICBERVBFTkRTOj1AVEFSR0VUX3N1bnhpX2Nv
cnRleGE1MwogZW5kZWYKIAotZXhwb3J0IEdDQ19IT05PVVJfQ09QVFM9cwotCi1NQUtFX1ZBUlMg
PSBcCi0JQ1JPU1NfQ09NUElMRT0iJChUQVJHRVRfQ1JPU1MpIgorZGVmaW5lIEJ1aWxkL1ByZXBh
cmUKKwkkKFRBUikgLUMgJChQS0dfQlVJTERfRElSKSAteGYgJChETF9ESVIpLyQoUEtHX1NPVVJD
RSkKK2VuZGVmCiAKLU1BS0VfRkxBR1MgKz0gXAotCVBMQVQ9c3VuNTBpX2E2NCBcCi0JYmwzMQor
ZGVmaW5lIEJ1aWxkL0NvbXBpbGUKK2VuZGVmCiAKIGRlZmluZSBCdWlsZC9JbnN0YWxsRGV2CiAJ
JChJTlNUQUxMX0RJUikgJChTVEFHSU5HX0RJUl9JTUFHRSkKLQkkKENQKSAkKFBLR19CVUlMRF9E
SVIpL2J1aWxkL3N1bjUwaV9hNjQvcmVsZWFzZS9ibDMxLmJpbiAkKFNUQUdJTkdfRElSX0lNQUdF
KS9ibDMxLmJpbgorCSQoQ1ApICQoUEtHX0JVSUxEX0RJUikvc3VuNTBpX2E2NF9ibDMxLmJpbiAk
KFNUQUdJTkdfRElSX0lNQUdFKS9ibDMxLmJpbgogZW5kZWYKIAogZGVmaW5lIFBhY2thZ2UvYXJt
LXRydXN0ZWQtZmlybXdhcmUtc3VueGkvaW5zdGFsbAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

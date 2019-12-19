Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A13127030
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:01:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4Lie//25bvnfoBklvRe68C5ymSo4ssraYXdoKkFaYM=; b=F+nfCkdxE8sW/L
	YVxV+63rGvyGasTSiFj3rFqIbPCEx/U1flo3QVwdJH5YXpZmxBMmCrmjd1f8FPdRkuNgnx7DPN6Y0
	kkdtuhgSdqeYDp35IF35zptc572DNavpiyadmYIuHcI1BLxORT66jFDPMRjyZbVNwkynvICzclojq
	3aplKfi5nCDcg1ev+pyHBmt6VznJZTV0UeLsuIx40/LOHlMDYVNmXjxBH5lIvfTFOePsTjsTuNcrO
	JIIg7ocdEH6dK0DCAXpAKg13SQmLHyebo1cNuzvZV2gkehjmodbuBlMBhD1i4azu43zywbGAlMUVv
	X1Ij1p+1LrRZq0m0ea2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3rb-000620-3B; Thu, 19 Dec 2019 22:01:43 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3oq-0000tb-K2
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:58:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8802A4B4D;
 Thu, 19 Dec 2019 22:58:47 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 3b448435;
 Thu, 19 Dec 2019 22:58:36 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:26 +0100
Message-Id: <20191219215836.21773-11-ynezz@true.cz>
In-Reply-To: <20191219215836.21773-1-ynezz@true.cz>
References: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135852_830120_A7DF318A 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH libubox 10/20] tests: use
 blob_parse_untrusted variant
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

SW4gb3JkZXIgdG8gYmUgYWJsZSB0byB1c2UgaW52YWxpZCBpbnB1dCBmb3IgdGVzdGluZyBhcyB3
ZWxsLgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB0
ZXN0cy9mdXp6L3Rlc3QtZnV6ei5jICB8IDIgKy0KIHRlc3RzL3Rlc3QtYmxvYi1wYXJzZS5jIHwg
MiArLQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvdGVzdHMvZnV6ei90ZXN0LWZ1enouYyBiL3Rlc3RzL2Z1enovdGVzdC1mdXp6
LmMKaW5kZXggNzE1Mzg0N2UwODI1Li41MmYyYmJjZTg3OGYgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2Z1
enovdGVzdC1mdXp6LmMKKysrIGIvdGVzdHMvZnV6ei90ZXN0LWZ1enouYwpAQCAtNjQsNyArNjQs
NyBAQCBzdGF0aWMgdm9pZCBmdXp6X2Jsb2JfcGFyc2UoY29uc3QgdWludDhfdCAqZGF0YSwgc2l6
ZV90IHNpemUpCiAJc3RydWN0IGJsb2JfYXR0ciAqZm9vW19fRk9PX0FUVFJfTUFYXTsKIAlzdHJ1
Y3QgYmxvYl9hdHRyICpidWYgPSAoc3RydWN0IGJsb2JfYXR0ciAqKWRhdGE7CiAKLQlibG9iX3Bh
cnNlKGJ1ZiwgZm9vLCBmb29fcG9saWN5LCBfX0ZPT19BVFRSX01BWCk7CisJYmxvYl9wYXJzZV91
bnRydXN0ZWQoYnVmLCBzaXplLCBmb28sIGZvb19wb2xpY3ksIF9fRk9PX0FUVFJfTUFYKTsKIH0K
IAogaW50IExMVk1GdXp6ZXJUZXN0T25lSW5wdXQoY29uc3QgdWludDhfdCAqZGF0YSwgc2l6ZV90
IHNpemUpCmRpZmYgLS1naXQgYS90ZXN0cy90ZXN0LWJsb2ItcGFyc2UuYyBiL3Rlc3RzL3Rlc3Qt
YmxvYi1wYXJzZS5jCmluZGV4IDZiMWZiNTY0ODVkYS4uNmQ2NWViNDk5NWI1IDEwMDY0NAotLS0g
YS90ZXN0cy90ZXN0LWJsb2ItcGFyc2UuYworKysgYi90ZXN0cy90ZXN0LWJsb2ItcGFyc2UuYwpA
QCAtODcsNyArODcsNyBAQCBzdGF0aWMgaW50IGNlcnRfbG9hZChjb25zdCBjaGFyICpjZXJ0Zmls
ZSwgc3RydWN0IGxpc3RfaGVhZCAqY2hhaW4pCiAKIAlidWZwdCA9IChzdHJ1Y3QgYmxvYl9hdHRy
ICopZmlsZWJ1ZjsKIAlkbyB7Ci0JCXByZXQgPSBibG9iX3BhcnNlKGJ1ZnB0LCBjZXJ0dGIsIGNl
cnRfcG9saWN5LCBDRVJUX0FUVFJfTUFYKTsKKwkJcHJldCA9IGJsb2JfcGFyc2VfdW50cnVzdGVk
KGJ1ZnB0LCBsZW4sIGNlcnR0YiwgY2VydF9wb2xpY3ksIENFUlRfQVRUUl9NQVgpOwogCQlpZiAo
cHJldCA8PSAwKQogCQkJLyogbm8gYXR0cmlidXRlcyBmb3VuZCAqLwogCQkJYnJlYWs7CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

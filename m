Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85516DE83B
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 11:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ONgXjm+adtcw+gFhzA2+G9HjJ3VtqwjEnWa1nB32EQ=; b=N0h9dUKTc4xx+A
	h1KJVUlRuGf9mRI1hupCcx5K3iGKAe4xrkcVHnGh/TxzuHWabEhIGtqEzaIQmH8WoqLUR+t7C70KU
	vsueuS1+DT0liBpZcNC4qxpSPABXpJM/NbNzE/+WgYVOgK/rTkmuiKd3bkErcW9bw43sQOsPkL7ow
	RR/+KHfosrvEawCLRJ5PX9PUwh3uTVDdb1+d7MuJ+YAnROi35Rug91kpXHcv0F8LRNV4427yvw7mF
	J68BIdkmKfiYycwvJppIbE7MaZwGnpdpgnD9Gna23o2E9SszPZVAYZxaw/reRcVoY/yknCuQSYR2y
	Pm5o8YbuurwziqRcYjpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMU7o-00067y-MU; Mon, 21 Oct 2019 09:37:16 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMU7O-0005tL-QU
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 09:36:52 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B62CB35DB;
 Mon, 21 Oct 2019 11:36:45 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 91b1d8eb;
 Mon, 21 Oct 2019 11:36:35 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 11:36:39 +0200
Message-Id: <20191021093642.3118-2-ynezz@true.cz>
In-Reply-To: <20191021093642.3118-1-ynezz@true.cz>
References: <20191021093642.3118-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_023651_015239_099B908C 
X-CRM114-Status: UNSURE (   7.72  )
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
Subject: [OpenWrt-Devel] [PATCH libnl-tiny 2/5] convert into CMake project
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

QWxpZ25pbmcgaXQgd2l0aCBvdGhlciBDIGJhc2VkIHByb2plY3RzLgoKU2lnbmVkLW9mZi1ieTog
UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBDTWFrZUxpc3RzLnR4dCAgIHwgMzgg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIE1ha2VmaWxlICAgICAgICAg
fCAxNyAtLS0tLS0tLS0tLS0tLS0tLQogbGlibmwtdGlueS5wYyAgICB8IDEwIC0tLS0tLS0tLS0K
IGxpYm5sLXRpbnkucGMuaW4gfCAxMCArKysrKysrKysrCiA0IGZpbGVzIGNoYW5nZWQsIDQ4IGlu
c2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IENNYWtlTGlz
dHMudHh0CiBkZWxldGUgbW9kZSAxMDA2NDQgTWFrZWZpbGUKIGRlbGV0ZSBtb2RlIDEwMDY0NCBs
aWJubC10aW55LnBjCiBjcmVhdGUgbW9kZSAxMDA2NDQgbGlibmwtdGlueS5wYy5pbgoKZGlmZiAt
LWdpdCBhL0NNYWtlTGlzdHMudHh0IGIvQ01ha2VMaXN0cy50eHQKbmV3IGZpbGUgbW9kZSAxMDA2
NDQKaW5kZXggMDAwMDAwMDAwMDAwLi40OTI0NTg2ZTg5M2MKLS0tIC9kZXYvbnVsbAorKysgYi9D
TWFrZUxpc3RzLnR4dApAQCAtMCwwICsxLDM4IEBACitDTUFLRV9NSU5JTVVNX1JFUVVJUkVEKFZF
UlNJT04gMy4wKQorCitQUk9KRUNUKGxpYm5sLXRpbnkgQykKK0lOQ0xVREUoR05VSW5zdGFsbERp
cnMpCisKK0lOQ0xVREVfRElSRUNUT1JJRVMoaW5jbHVkZSkKKworQUREX0RFRklOSVRJT05TKC1X
YWxsIC1XZXJyb3IpCisKK0FERF9MSUJSQVJZKG5sLXRpbnkgU0hBUkVECisJYXR0ci5jCisJY2Fj
aGUuYworCWNhY2hlX21uZ3QuYworCWVycm9yLmMKKwlnZW5sLmMKKwlnZW5sX2N0cmwuYworCWdl
bmxfZmFtaWx5LmMKKwlnZW5sX21uZ3QuYworCWhhbmRsZXJzLmMKKwltc2cuYworCW5sLmMKKwlv
YmplY3QuYworCXNvY2tldC5jCisJdW5sLmMKKykKKworQ09ORklHVVJFX0ZJTEUoCisJIiR7Q01B
S0VfQ1VSUkVOVF9TT1VSQ0VfRElSfS9saWJubC10aW55LnBjLmluIgorCSIke0NNQUtFX0NVUlJF
TlRfQklOQVJZX0RJUn0vbGlibmwtdGlueS5wYyIKKwlAT05MWQorKQorCitJTlNUQUxMKFRBUkdF
VFMgbmwtdGlueSBMSUJSQVJZIERFU1RJTkFUSU9OICR7Q01BS0VfSU5TVEFMTF9MSUJESVJ9KQor
SU5TVEFMTCgKKwlESVJFQ1RPUlkgJHtDTUFLRV9TT1VSQ0VfRElSfS9pbmNsdWRlLworCURFU1RJ
TkFUSU9OICR7Q01BS0VfSU5TVEFMTF9JTkNMVURFRElSfS9saWJubC10aW55CisJRklMRVNfTUFU
Q0hJTkcgUEFUVEVSTiAiKi5oIgorKQpkaWZmIC0tZ2l0IGEvTWFrZWZpbGUgYi9NYWtlZmlsZQpk
ZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggNmYzNzE2MGE4YzM1Li4wMDAwMDAwMDAwMDAK
LS0tIGEvTWFrZWZpbGUKKysrIC9kZXYvbnVsbApAQCAtMSwxNyArMCwwIEBACi1DQz1nY2MKLVdG
TEFHUz0tV2FsbAotQ0ZMQUdTPS1PMgotSU5DTFVERVM9LUlpbmNsdWRlCi0KLUxJQk5BTUU9bGli
bmwtdGlueS5zbwotCi1hbGw6ICQoTElCTkFNRSkKLQotJS5vOiAlLmMKLQkkKENDKSAkKFdGTEFH
UykgLWMgLW8gJEAgJChJTkNMVURFUykgJChDRkxBR1MpICQ8Ci0KLUxJQk5MX09CSj1ubC5vIGhh
bmRsZXJzLm8gbXNnLm8gYXR0ci5vIGNhY2hlLm8gY2FjaGVfbW5ndC5vIG9iamVjdC5vIHNvY2tl
dC5vIGVycm9yLm8KLUdFTkxfT0JKPWdlbmwubyBnZW5sX2ZhbWlseS5vIGdlbmxfY3RybC5vIGdl
bmxfbW5ndC5vIHVubC5vCi0KLSQoTElCTkFNRSk6ICQoTElCTkxfT0JKKSAkKEdFTkxfT0JKKQot
CSQoQ0MpICQoQ0ZMQUdTKSAtV2wsLUJzeW1ib2xpYy1mdW5jdGlvbnMgLXNoYXJlZCAtbyAkQCAk
XgpkaWZmIC0tZ2l0IGEvbGlibmwtdGlueS5wYyBiL2xpYm5sLXRpbnkucGMKZGVsZXRlZCBmaWxl
IG1vZGUgMTAwNjQ0CmluZGV4IGFmNzljZDMwMWUyMy4uMDAwMDAwMDAwMDAwCi0tLSBhL2xpYm5s
LXRpbnkucGMKKysrIC9kZXYvbnVsbApAQCAtMSwxMCArMCwwIEBACi1wcmVmaXg9L3VzcgotZXhl
Y19wcmVmaXg9L3VzcgotbGliZGlyPSR7ZXhlY19wcmVmaXh9L2xpYgotaW5jbHVkZWRpcj0ke3By
ZWZpeH0vaW5jbHVkZS9saWJubC10aW55Ci0KLU5hbWU6IGxpYm5sLXRpbnkKLURlc2NyaXB0aW9u
OiBDb252ZW5pZW5jZSBsaWJyYXJ5IGZvciBuZXRsaW5rIHNvY2tldHMKLVZlcnNpb246IDIuMAot
TGliczogLUwke2xpYmRpcn0gLWxubC10aW55Ci1DZmxhZ3M6IC1JJHtpbmNsdWRlZGlyfQpkaWZm
IC0tZ2l0IGEvbGlibmwtdGlueS5wYy5pbiBiL2xpYm5sLXRpbnkucGMuaW4KbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi42OTFiYTgyNjFiMjgKLS0tIC9kZXYvbnVsbAor
KysgYi9saWJubC10aW55LnBjLmluCkBAIC0wLDAgKzEsMTAgQEAKK3ByZWZpeD1AQ01BS0VfSU5T
VEFMTF9QUkVGSVhACitleGVjX3ByZWZpeD0ke3ByZWZpeH0KK2xpYmRpcj0ke3ByZWZpeH0vQENN
QUtFX0lOU1RBTExfTElCRElSQAoraW5jbHVkZWRpcj0ke3ByZWZpeH0vQENNQUtFX0lOU1RBTExf
SU5DTFVERURJUkAvbGlibmwtdGlueQorCitOYW1lOiBsaWJubC10aW55CitEZXNjcmlwdGlvbjog
Q29udmVuaWVuY2UgbGlicmFyeSBmb3IgbmV0bGluayBzb2NrZXRzCitWZXJzaW9uOiAyLjAKK0xp
YnM6IC1MJHtsaWJkaXJ9IC1sbmwtdGlueQorQ2ZsYWdzOiAtSSR7aW5jbHVkZWRpcn0KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

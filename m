Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BABD2A44E
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 May 2019 14:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvnu60jZT6pO6V3s+kg+ozDU+Ij3Gza4/BflvftA+oU=; b=pmWFd7lkw8SzWJ
	dQJYTgpeA/tAT5Fo/KL9lDZ6ASzL6aVq24Ev31XRF7R4H3TN6S/bHuQQp/RyusX8AGOL6EGlUA4n9
	+I0/o/t5aWWYZV8dk6uvAxgN1bbMb6reCE0TO5djyGXzNZibI2c7cHixunfp2egnG9Nr92hBide4K
	SgqyhoCKlj12SCi5+ozIQJdFPl+4MdsiUCvMzgqMKdv0Z0j93eMvgezrLFvqUc9lhnOShxu+9vRtq
	NUZA9TyZB9FXrAMm4aCEAzXRH8Eh+rCVFrNnOT6bRUbxN49HNV2gPXGGhmExYo9IXEISgiZyhdqSW
	hQj7A0F7nQ2gr3PIU+oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUVLQ-0004NC-MO; Sat, 25 May 2019 12:00:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUVKI-0002zn-W6
 for openwrt-devel@lists.openwrt.org; Sat, 25 May 2019 11:59:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 259883A35;
 Sat, 25 May 2019 13:58:58 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 5d957f7b;
 Sat, 25 May 2019 13:58:57 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 25 May 2019 13:58:40 +0200
Message-Id: <1558785521-31779-6-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558785521-31779-1-git-send-email-ynezz@true.cz>
References: <1558785521-31779-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_045903_230934_CA15CFBE 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 5/6] ath79: ag71xx: update ethtool support
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

ZXRodG9vbCBkb2Vzbid0IHdvcmsgY3VycmVudGx5IGFzIHBoeV9ldGh0b29sX2lvY3RsIGV4cGVj
dHMgdXNlciBzcGFjZQpwb2ludGVyLCBidXQgaXQncyBiZWluZyBwYXNzZWQga2VybmVsIG9uZS4g
Rml4aW5nIGl0IGRvZXNuJ3QgbWFrZSBzZW5zZQphcyB7cyxnfWV0X3NldHRpbmdzIHdlcmUgZGVw
cmVjYXRlZCBhbnl3YXkuICBTbyBsZXQncyByYXRoZXIgcmVtb3ZlCnBoeV9ldGh0b29sX2lvY3Rs
IGFuZCB1c2UgbmV3IHtzLGd9ZXRfbGlua19rc2V0dGluZ3MgaW5zdGVhZC4gV2hpbGUgYXQKaXQs
IHVwZGF0ZSBud2F5X3Jlc2V0IGFzIHdlbGwuCgpDYzogSm9obiBDcmlzcGluIDxqb2huQHBocm96
ZW4ub3JnPgpSZWY6IGh0dHBzOi8vYnVncy5vcGVud3J0Lm9yZy9pbmRleC5waHA/ZG89ZGV0YWls
cyZ0YXNrX2lkPTE5ODIKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4KLS0tCiAuLi4vbmV0L2V0aGVybmV0L2F0aGVyb3MvYWc3MXh4L2FnNzF4eF9ldGh0b29sLmMg
ICB8IDQwICsrKysrKysrLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRp
b25zKCspLCAyNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXRoNzkv
ZmlsZXMvZHJpdmVycy9uZXQvZXRoZXJuZXQvYXRoZXJvcy9hZzcxeHgvYWc3MXh4X2V0aHRvb2wu
YyBiL3RhcmdldC9saW51eC9hdGg3OS9maWxlcy9kcml2ZXJzL25ldC9ldGhlcm5ldC9hdGhlcm9z
L2FnNzF4eC9hZzcxeHhfZXRodG9vbC5jCmluZGV4IDZmMzdmZGEzODc2Yy4uMmNkN2IxYmU4Mzg4
IDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvYXRoNzkvZmlsZXMvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvYXRoZXJvcy9hZzcxeHgvYWc3MXh4X2V0aHRvb2wuYworKysgYi90YXJnZXQvbGludXgvYXRo
NzkvZmlsZXMvZHJpdmVycy9uZXQvZXRoZXJuZXQvYXRoZXJvcy9hZzcxeHgvYWc3MXh4X2V0aHRv
b2wuYwpAQCAtMTMsMzAgKzEzLDYgQEAKIAogI2luY2x1ZGUgImFnNzF4eC5oIgogCi1zdGF0aWMg
aW50IGFnNzF4eF9ldGh0b29sX2dldF9zZXR0aW5ncyhzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LAot
CQkJCSAgICAgICBzdHJ1Y3QgZXRodG9vbF9jbWQgKmNtZCkKLXsKLQlzdHJ1Y3QgYWc3MXh4ICph
ZyA9IG5ldGRldl9wcml2KGRldik7Ci0Jc3RydWN0IHBoeV9kZXZpY2UgKnBoeWRldiA9IGFnLT5w
aHlfZGV2OwotCi0JaWYgKCFwaHlkZXYpCi0JCXJldHVybiAtRU5PREVWOwotCi0JcmV0dXJuIHBo
eV9ldGh0b29sX2lvY3RsKHBoeWRldiwgY21kKTsKLX0KLQotc3RhdGljIGludCBhZzcxeHhfZXRo
dG9vbF9zZXRfc2V0dGluZ3Moc3RydWN0IG5ldF9kZXZpY2UgKmRldiwKLQkJCQkgICAgICAgc3Ry
dWN0IGV0aHRvb2xfY21kICpjbWQpCi17Ci0Jc3RydWN0IGFnNzF4eCAqYWcgPSBuZXRkZXZfcHJp
dihkZXYpOwotCXN0cnVjdCBwaHlfZGV2aWNlICpwaHlkZXYgPSBhZy0+cGh5X2RldjsKLQotCWlm
ICghcGh5ZGV2KQotCQlyZXR1cm4gLUVOT0RFVjsKLQotCXJldHVybiBwaHlfZXRodG9vbF9pb2N0
bChwaHlkZXYsIGNtZCk7Ci19Ci0KIHN0YXRpYyB1MzIgYWc3MXh4X2V0aHRvb2xfZ2V0X21zZ2xl
dmVsKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYpCiB7CiAJc3RydWN0IGFnNzF4eCAqYWcgPSBuZXRk
ZXZfcHJpdihkZXYpOwpAQCAtMTA4LDEzICs4NCwyNSBAQCBzdGF0aWMgaW50IGFnNzF4eF9ldGh0
b29sX3NldF9yaW5ncGFyYW0oc3RydWN0IG5ldF9kZXZpY2UgKmRldiwKIAlyZXR1cm4gZXJyOwog
fQogCitzdGF0aWMgaW50IGFnNzF4eF9ldGh0b29sX253YXlfcmVzZXQoc3RydWN0IG5ldF9kZXZp
Y2UgKmRldikKK3sKKwlzdHJ1Y3QgYWc3MXh4ICphZyA9IG5ldGRldl9wcml2KGRldik7CisJc3Ry
dWN0IHBoeV9kZXZpY2UgKnBoeWRldiA9IGFnLT5waHlfZGV2OworCisJaWYgKCFwaHlkZXYpCisJ
CXJldHVybiAtRU5PREVWOworCisJcmV0dXJuIGdlbnBoeV9yZXN0YXJ0X2FuZWcocGh5ZGV2KTsK
K30KKwogc3RydWN0IGV0aHRvb2xfb3BzIGFnNzF4eF9ldGh0b29sX29wcyA9IHsKLQkuc2V0X3Nl
dHRpbmdzCT0gYWc3MXh4X2V0aHRvb2xfc2V0X3NldHRpbmdzLAotCS5nZXRfc2V0dGluZ3MJPSBh
ZzcxeHhfZXRodG9vbF9nZXRfc2V0dGluZ3MsCiAJLmdldF9tc2dsZXZlbAk9IGFnNzF4eF9ldGh0
b29sX2dldF9tc2dsZXZlbCwKIAkuc2V0X21zZ2xldmVsCT0gYWc3MXh4X2V0aHRvb2xfc2V0X21z
Z2xldmVsLAogCS5nZXRfcmluZ3BhcmFtCT0gYWc3MXh4X2V0aHRvb2xfZ2V0X3JpbmdwYXJhbSwK
IAkuc2V0X3JpbmdwYXJhbQk9IGFnNzF4eF9ldGh0b29sX3NldF9yaW5ncGFyYW0sCisJLmdldF9s
aW5rX2tzZXR0aW5ncyA9IHBoeV9ldGh0b29sX2dldF9saW5rX2tzZXR0aW5ncywKKwkuc2V0X2xp
bmtfa3NldHRpbmdzID0gcGh5X2V0aHRvb2xfc2V0X2xpbmtfa3NldHRpbmdzLAogCS5nZXRfbGlu
awk9IGV0aHRvb2xfb3BfZ2V0X2xpbmssCiAJLmdldF90c19pbmZvCT0gZXRodG9vbF9vcF9nZXRf
dHNfaW5mbywKKwkubndheV9yZXNldAk9IGFnNzF4eF9ldGh0b29sX253YXlfcmVzZXQsCiB9Owot
LSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==

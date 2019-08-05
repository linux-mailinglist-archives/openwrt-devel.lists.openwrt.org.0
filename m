Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4E482151
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 18:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4PcMuLf1GTCWqsrKsZ1ctRlj3I2182tWF6Tvpx5smkM=; b=btiWSMXsIE8flq
	4dlZEBLb170SPvzfbkTR+D7ZKHm1qDnV52N4dpYPUaWCcPGa18gY9kJeUqo/3GUsjwe09RHORcgZK
	PYw0xB4PT8nJ1pll+KoRcAaFZMoF9rEUR4DMC2XsDgJCtEMDndkdh8qVhyb536AhTFkDu9/LnVegO
	/Ct5o0nvOdDm7jUKukvQ4YtOgmWV1ybX1e5VFd0H1JFfzEa0Cz/tbEdVZ9Cy4g9lUO/caile16T7B
	mHtt2aPW5QEiltm/gU2xgJ5/H9zhh772E9r1RkWVTGL5riaf/ngLWYqc5i9C513QKuUiJ3KiijnZZ
	iHJYjDkjl9FkI6vQ+1uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufY7-0000J3-TG; Mon, 05 Aug 2019 16:09:27 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufXy-0000Ix-Nn
 for openwrt-devel@bombadil.infradead.org; Mon, 05 Aug 2019 16:09:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=48HTbX/bDwlFLUqITJdECzikFMqLqagn+XvllsqVpJo=; b=2EBJdW7x3x8GVCct7KF8Cg+P+P
 ERUyxiN2VWpGomQAtrJDj4AM9cRTQkZ0krmFyeO8KCrNWMRzPlw59HYvUPp62HXp5hBoPK1+d2gaB
 2TwBjrdQTsW1+T+UUIwtYw3NVsU20vvvVTrUM1uKMg8ecY1kELhIkQRb/oPmJwx5ZuiufjvKvSr9N
 msq/TIWkB6crr9tn3u5CpIufKHwqJWW839rjBjmeLroehdcKRZpDWPHw4cRL8qZ6vn5YjTK82nYAY
 rbjkP7tqZaYB+p/qk0li8m81IdJwqRqJqhfKMP8Oo/5P1Zz9fKFaann629wYH/Y9lGlW/nW2uHmyY
 qB9Lk7TA==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufXu-0002As-DC
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 16:09:15 +0000
X-Originating-IP: 46.183.103.8
Received: from localhost.localdomain (unknown [46.183.103.8])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id A1790FF807;
 Mon,  5 Aug 2019 16:08:17 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  5 Aug 2019 18:07:45 +0200
Message-Id: <20190805160745.4269-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] procd: fix shutdown when running in a
 container
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
Cc: Mikael Magnusson <mikma@users.sourceforge.net>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QXBwbGllcyBwYXRjaCBmcm9tIEBtaWttYSBbMF0gdG8gZml4IERvY2tlciBzaHV0ZG93bi4gQWRk
ZWQgZGV0ZWN0aW9uIHRvCnN0YXRlLmMgaWYgcnVubmluZyBpbiBhIGNvbnRhaW5yZSBvciBub3Qu
CgpUZXN0ZWQgd2l0aCBhIHg4Ni82NCBEb2NrZXIgaW1hZ2UuCgpGaXhlcyBGUyMyNDI1CgpDQzog
TWlrYWVsIE1hZ251c3NvbiA8bWlrbWFAdXNlcnMuc291cmNlZm9yZ2UubmV0PgpDQzogUGV0ciDF
oHRldGlhciA8eW5lenpAdHJ1ZS5jej4KClswXTogaHR0cHM6Ly9naXRodWIuY29tL21pa21hL2x4
ZC1vcGVud3J0L2Jsb2IvbWFzdGVyL3BhdGNoZXMvcHJvY2QtbWFzdGVyLzAwMDMtZG9ja2VyLWZp
eC1wcm9ibGVtLXN0b3BwaW5nLWNvbnRhaW5lci5wYXRjaAoKU2lnbmVkLW9mZi1ieTogUGF1bCBT
cG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPgotLS0KIHN0YXRlLmMgfCAyNSArKysrKysrKysrKysr
KystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvc3RhdGUuYyBiL3N0YXRlLmMKaW5kZXggY2NmNDEwNC4uYjdj
YmE4OCAxMDA2NDQKLS0tIGEvc3RhdGUuYworKysgYi9zdGF0ZS5jCkBAIC0yMCw2ICsyMCw3IEBA
CiAjaW5jbHVkZSA8c3lzL3R5cGVzLmg+CiAjaW5jbHVkZSA8c2lnbmFsLmg+CiAKKyNpbmNsdWRl
ICJjb250YWluZXIuaCIKICNpbmNsdWRlICJwcm9jZC5oIgogI2luY2x1ZGUgInN5c2xvZy5oIgog
I2luY2x1ZGUgInBsdWcvaG90cGx1Zy5oIgpAQCAtMTU3LDE4ICsxNTgsMjIgQEAgc3RhdGljIHZv
aWQgc3RhdGVfZW50ZXIodm9pZCkKIAkJZWxzZQogCQkJTE9HKCItIHJlYm9vdCAtXG4iKTsKIAot
CQkvKiBBbGxvdyB0aW1lIGZvciBsYXN0IG1lc3NhZ2UgdG8gcmVhY2ggc2VyaWFsIGNvbnNvbGUs
IGV0YyAqLwotCQlzbGVlcCgxKTsKKwkJaWYoIWlzX2NvbnRhaW5lcigpKSB7CisJCQkvKiBBbGxv
dyB0aW1lIGZvciBsYXN0IG1lc3NhZ2UgdG8gcmVhY2ggc2VyaWFsIGNvbnNvbGUsIGV0YyAqLwor
CQkJc2xlZXAoMSk7CiAKLQkJLyogV2UgaGF2ZSB0byBmb3JrIGhlcmUsIHNpbmNlIHRoZSBrZXJu
ZWwgY2FsbHMgZG9fZXhpdChFWElUX1NVQ0NFU1MpCi0JCSAqIGluIGxpbnV4L2tlcm5lbC9zeXMu
Yywgd2hpY2ggY2FuIGNhdXNlIHRoZSBtYWNoaW5lIHRvIHBhbmljIHdoZW4KLQkJICogdGhlIGlu
aXQgcHJvY2VzcyBleGl0cy4uLiAqLwotCQlpZiAoIXZmb3JrKCApKSB7IC8qIGNoaWxkICovCi0J
CQlyZWJvb3QocmVib290X2V2ZW50KTsKLQkJCV9leGl0KEVYSVRfU1VDQ0VTUyk7CisJCQkvKiBX
ZSBoYXZlIHRvIGZvcmsgaGVyZSwgc2luY2UgdGhlIGtlcm5lbCBjYWxscyBkb19leGl0KEVYSVRf
U1VDQ0VTUykKKwkJCSAqIGluIGxpbnV4L2tlcm5lbC9zeXMuYywgd2hpY2ggY2FuIGNhdXNlIHRo
ZSBtYWNoaW5lIHRvIHBhbmljIHdoZW4KKwkJCSAqIHRoZSBpbml0IHByb2Nlc3MgZXhpdHMuLi4g
Ki8KKwkJCWlmICghdmZvcmsoICkpIHsgLyogY2hpbGQgKi8KKwkJCQlyZWJvb3QocmVib290X2V2
ZW50KTsKKwkJCQlfZXhpdChFWElUX1NVQ0NFU1MpOworCQkJfQorCQkJd2hpbGUgKDEpCisJCQkJ
c2xlZXAoMSk7CisJCX0gZWxzZSB7CisJCQlleGl0KDApOwogCQl9Ci0JCXdoaWxlICgxKQotCQkJ
c2xlZXAoMSk7CiAjZWxzZQogCQlleGl0KDApOwogI2VuZGlmCi0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

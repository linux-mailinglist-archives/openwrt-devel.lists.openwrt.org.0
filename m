Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D060814688B
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 13:59:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqed6+LUFOGobATrdWDf7kDd9XnYmVoM59zXYdhMMlc=; b=PAJbFzt/vhiNQr
	J/+yi/uWSy77cKIXqYSANp0nEqbwlU3Ms6A27qdMnU6VTQ1wBBhC3fU8Pmb+jxcfdu9tIJV4oFesN
	C34Km5iEuYMjeLCx8PgFsnzkFZpCKxLaLSiMQxpxeakDlk77LXw/JaXsUr36mtEn8oUTbXWBUex49
	yH5HF9w6GIuUX9Lh9VTvtKeN7gy0nzNsi3UDsUk9idFBUHFqrm9QQyxm7aBoywU9/KgdfaqE9XE4Q
	yrG3cKU1jyYiGm0o27NdkKrrGxaEi5sbTmzEnF8iwZ9pkN14hh0drIqyrs6mTsd3fM7TJhHdDvX+T
	zYD6p3fVxHP1dwGZQz9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuc5B-0005OA-CP; Thu, 23 Jan 2020 12:59:37 +0000
Received: from max.feld.cvut.cz ([147.32.192.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuc4z-0005Ng-4V
 for openwrt-devel@lists.openwrt.org; Thu, 23 Jan 2020 12:59:27 +0000
Received: from localhost (unknown [192.168.200.7])
 by max.feld.cvut.cz (Postfix) with ESMTP id 4876919F441D;
 Thu, 23 Jan 2020 13:59:17 +0100 (CET)
X-Virus-Scanned: IMAP STYX AMAVIS
Received: from max.feld.cvut.cz ([192.168.200.1])
 by localhost (styx.feld.cvut.cz [192.168.200.7]) (amavisd-new, port 10044)
 with ESMTP id Nh5EZaUiNnvI; Thu, 23 Jan 2020 13:59:15 +0100 (CET)
Received: from localhost.localdomain (labsitronics.feld.cvut.cz
 [147.32.211.25])
 by max.feld.cvut.cz (Postfix) with ESMTP id DAA4219F44A7;
 Thu, 23 Jan 2020 13:59:14 +0100 (CET)
From: ondrej.votava@cvut.cz
To: ynezz@true.cz
Date: Thu, 23 Jan 2020 13:58:36 +0100
Message-Id: <89b60b46ca8a9ab015ffd22c4954d19bc9b3bba0.1579783992.git.ondrej.votava@cvut.cz>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
In-Reply-To: <20200120230504.GH69327@meh.true.cz>
References: <20200120230504.GH69327@meh.true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_045925_343385_BEEA223E 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.32.192.36 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [147.32.192.36 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] procd: show process's exit code
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
Cc: openwrt-devel@lists.openwrt.org,
 =?UTF-8?q?Ond=C5=99ej=20Votava?= <ondrej.votava@cvut.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogT25kxZllaiBWb3RhdmEgPG9uZHJlai52b3RhdmFAY3Z1dC5jej4KCkFkZHMgZmVhdHVy
ZSB0byBzaG93IGV4aXQgY29kZSBvZiBwcm9jZXNzZXMgbGF1bmNoZWQgYnkgcHJvY2QuClRoZSBl
eGl0IGNvZGUgaXMgc2hvd24gZm9yIGZpbmlzaGVkIHByb2Nlc3Mgd2hlbiB1YnVzJ3MKc2Vydmlj
ZSBsaXN0IG1ldGhvZCBpcyBjYWxsZWQuCgpUaGUgZXhpdCBjb2RlIHZhbHVlIGlzIGNvbXB1dGVk
IGFjY29yZGluZyB0byB3YWl0cGlkKDIpCmFuZCBodHRwOi8vdGxkcC5vcmcvTERQL2Ficy9odG1s
L2V4aXRjb2Rlcy5odG1sCgpTaWduZWQtb2ZmLWJ5OiBPbmTFmWVqIFZvdGF2YSA8b25kcmVqLnZv
dGF2YUBjdnV0LmN6PgotLS0KIHNlcnZpY2UvaW5zdGFuY2UuYyB8IDE3ICsrKysrKysrKysrKysr
KysrCiBzZXJ2aWNlL2luc3RhbmNlLmggfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9zZXJ2aWNlL2luc3RhbmNlLmMgYi9zZXJ2aWNlL2luc3Rh
bmNlLmMKaW5kZXggYWJkMWYzNC4uNTFlNDljNCAxMDA2NDQKLS0tIGEvc2VydmljZS9pbnN0YW5j
ZS5jCisrKyBiL3NlcnZpY2UvaW5zdGFuY2UuYwpAQCAtNTYwLDYgKzU2MCwxOSBAQCBpbnN0YW5j
ZV9kZWxldGUoc3RydWN0IHNlcnZpY2VfaW5zdGFuY2UgKmluKQogCXNlcnZpY2Vfc3RvcHBlZChz
KTsKIH0KIAorc3RhdGljIGludAoraW5zdGFuY2VfZXhpdF9jb2RlKGludCByZXQpeworCWlmKFdJ
RkVYSVRFRChyZXQpKQorCXsKKwkJcmV0dXJuIFdFWElUU1RBVFVTKHJldCk7CisJfQorCWVsc2Ug
aWYgKFdJRlNJR05BTEVEKHJldCkpCisJeworCQlyZXR1cm4gMTI4ICsgV1RFUk1TSUcocmV0KTsK
Kwl9CisJcmV0dXJuIDE7Cit9CisKIHN0YXRpYyB2b2lkCiBpbnN0YW5jZV9leGl0KHN0cnVjdCB1
bG9vcF9wcm9jZXNzICpwLCBpbnQgcmV0KQogewpAQCAtNTc0LDYgKzU4Nyw3IEBAIGluc3RhbmNl
X2V4aXQoc3RydWN0IHVsb29wX3Byb2Nlc3MgKnAsIGludCByZXQpCiAKIAlERUJVRygyLCAiSW5z
dGFuY2UgJXM6OiVzIGV4aXQgd2l0aCBlcnJvciBjb2RlICVkIGFmdGVyICVsZCBzZWNvbmRzXG4i
LCBpbi0+c3J2LT5uYW1lLCBpbi0+bmFtZSwgcmV0LCBydW50aW1lKTsKIAorCWluLT5leGl0X2Nv
ZGUgPSBpbnN0YW5jZV9leGl0X2NvZGUocmV0KTsKIAl1bG9vcF90aW1lb3V0X2NhbmNlbCgmaW4t
PnRpbWVvdXQpOwogCXNlcnZpY2VfZXZlbnQoImluc3RhbmNlLnN0b3AiLCBpbi0+c3J2LT5uYW1l
LCBpbi0+bmFtZSk7CiAKQEAgLTEwOTEsNiArMTEwNSw3IEBAIGluc3RhbmNlX2luaXQoc3RydWN0
IHNlcnZpY2VfaW5zdGFuY2UgKmluLCBzdHJ1Y3Qgc2VydmljZSAqcywgc3RydWN0IGJsb2JfYXR0
ciAqCiAJaW4tPnByb2MuY2IgPSBpbnN0YW5jZV9leGl0OwogCWluLT50ZXJtX3RpbWVvdXQgPSA1
OwogCWluLT5zeXNsb2dfZmFjaWxpdHkgPSBMT0dfREFFTU9OOworCWluLT5leGl0X2NvZGUgPSAw
OwogCiAJaW4tPl9zdGRvdXQuZmQuZmQgPSAtMjsKIAlpbi0+X3N0ZG91dC5zdHJlYW0uc3RyaW5n
X2RhdGEgPSB0cnVlOwpAQCAtMTEyNCw2ICsxMTM5LDggQEAgdm9pZCBpbnN0YW5jZV9kdW1wKHN0
cnVjdCBibG9iX2J1ZiAqYiwgc3RydWN0IHNlcnZpY2VfaW5zdGFuY2UgKmluLCBpbnQgdmVyYm9z
ZSkKIAlpZiAoaW4tPmNvbW1hbmQpCiAJCWJsb2Jtc2dfYWRkX2Jsb2IoYiwgaW4tPmNvbW1hbmQp
OwogCWJsb2Jtc2dfYWRkX3UzMihiLCAidGVybV90aW1lb3V0IiwgaW4tPnRlcm1fdGltZW91dCk7
CisJaWYgKCFpbi0+cHJvYy5wZW5kaW5nKQorCQlibG9ibXNnX2FkZF91MzIoYiwgImV4aXRfY29k
ZSIsIGluLT5leGl0X2NvZGUpOwogCiAJaWYgKCFhdmxfaXNfZW1wdHkoJmluLT5lcnJvcnMuYXZs
KSkgewogCQlzdHJ1Y3QgYmxvYm1zZ19saXN0X25vZGUgKnZhcjsKZGlmZiAtLWdpdCBhL3NlcnZp
Y2UvaW5zdGFuY2UuaCBiL3NlcnZpY2UvaW5zdGFuY2UuaAppbmRleCA0MmNjNGJlLi4wNWEyZmMz
IDEwMDY0NAotLS0gYS9zZXJ2aWNlL2luc3RhbmNlLmgKKysrIGIvc2VydmljZS9pbnN0YW5jZS5o
CkBAIC02Miw2ICs2Miw3IEBAIHN0cnVjdCBzZXJ2aWNlX2luc3RhbmNlIHsKIAljaGFyICpzZWNj
b21wOwogCWNoYXIgKnBpZGZpbGU7CiAJaW50IHN5c2xvZ19mYWNpbGl0eTsKKwlpbnQgZXhpdF9j
b2RlOwogCiAJdWludDMyX3QgdGVybV90aW1lb3V0OwogCXVpbnQzMl90IHJlc3Bhd25fdGltZW91
dDsKLS0gCjIuMjEuMCAoQXBwbGUgR2l0LTEyMi4yKQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

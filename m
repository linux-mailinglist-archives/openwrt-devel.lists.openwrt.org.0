Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6E8EF217
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:39:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pjCI1Y25sukpCb3JNFjMffJbila1uPIdCBqIpVFcDS0=; b=KKq671pxKZ4aPw
	wrMAVXLSwYzELpdz9XAWv3tZnqVeuI1nQWtPldiBwdHgVbVXqq0kDehcXE8EUGFfAb+zbEpzP+VSS
	uAM5Q6xeXUHsj7YoUamLikmnyYsCFkb9kBgfZC1icx/XVBQyaJv9/yPUjsTeSv6mC+4ydBB8fB0Rq
	7FxY8v4eFPUV57t9uMlcOO8LvhDdhSF+U3hvAteV2k+O+ydTTX/Bj7GaAHY/ZtHYJ+GWTEUqqwXOg
	LMXb8Z4fc+L+tdyoUbHtjqmm54dfdLsmPHwWLwWYiC+iHP69nbjdo8APFQptm/IVoBBpNSwb5hajx
	VLmv4f0+BLnOUBIaq8og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRms7-0001fT-KF; Tue, 05 Nov 2019 00:38:59 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmqQ-000882-98
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:37:16 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4C3274D86;
 Tue,  5 Nov 2019 01:37:12 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id ffe19414;
 Tue, 5 Nov 2019 01:37:01 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 01:36:49 +0100
Message-Id: <20191105003657.16540-11-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-1-ynezz@true.cz>
References: <20191105003657.16540-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_163714_563889_5506B3D1 
X-CRM114-Status: UNSURE (   7.91  )
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
Subject: [OpenWrt-Devel] [PATCH uci 10/18] cli: fix realloc issue spotted by
 cppcheck
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

Q3BwY2hlY2sgMS45MCBkZXYgcmVwb3J0cyBmb2xsb3dpbmc6CgogY2xpLmM6MTE3OjQ6IGVycm9y
OiBDb21tb24gcmVhbGxvYyBtaXN0YWtlOiAndHlwZXN0cicgbnVsbGVkIGJ1dCBub3QgZnJlZWQg
dXBvbiBmYWlsdXJlIFttZW1sZWFrT25SZWFsbG9jXQogICAgdHlwZXN0ciA9IHJlYWxsb2ModHlw
ZXN0ciwgbWF4bGVuKTsKICAgIF4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6
QHRydWUuY3o+Ci0tLQogY2xpLmMgfCAxMCArKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgOSBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvY2xpLmMgYi9jbGkuYwpp
bmRleCBmOGI0NWRiYTA5MWYuLjFjZTRkNWVkMWQzMyAxMDA2NDQKLS0tIGEvY2xpLmMKKysrIGIv
Y2xpLmMKQEAgLTExMyw4ICsxMTMsMTYgQEAgdWNpX2xvb2t1cF9zZWN0aW9uX3JlZihzdHJ1Y3Qg
dWNpX3NlY3Rpb24gKnMpCiAJCW1heGxlbiA9IHN0cmxlbihzLT50eXBlKSArIDEgKyAyICsgMTA7
CiAJCWlmICghdHlwZXN0cikgewogCQkJdHlwZXN0ciA9IG1hbGxvYyhtYXhsZW4pOworCQkJaWYg
KCF0eXBlc3RyKQorCQkJCXJldHVybiBOVUxMOwogCQl9IGVsc2UgewotCQkJdHlwZXN0ciA9IHJl
YWxsb2ModHlwZXN0ciwgbWF4bGVuKTsKKwkJCXZvaWQgKnAgPSByZWFsbG9jKHR5cGVzdHIsIG1h
eGxlbik7CisJCQlpZiAoIXApIHsKKwkJCQlmcmVlKHR5cGVzdHIpOworCQkJCXJldHVybiBOVUxM
OworCQkJfQorCisJCQl0eXBlc3RyID0gcDsKIAkJfQogCiAJCWlmICh0eXBlc3RyKQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DA3F0A25
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 00:24:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/dwBRv+LoKxBZ5IDyMDBlPnkj1uaMCzPnJOWUBOgySk=; b=ttaO1zakA35I9c
	owCwprZOLm7qfcddtnFa6+dUWvGxtXHmcBRu72GHbbtGIYNIg/7MvoeiwD87eNI7F8jubWFfU2kVj
	IDNBsYUBaLMVaplvi+UCxDAUQz7lSWSw0at7C6aJLx5ABy91NgdXA54rvEtQUUi+hKrBU4Jko1nkL
	LMXacEcCgstZ6jTeSNRInpkpxxcjQSy/pqcHjmBu2ZS8/Y2lONglQs4PeImZ3B3g7OB7cY14gsGF6
	x6M08heQJkwFELPY3i+jS63dBdetuQtiWoeNvGUkAnIC6klWKVtnRDWfJ0XR9RJBCvLQDmZLc09U+
	3oU0I41G8Mfh8xEzq2Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8BD-00037H-R1; Tue, 05 Nov 2019 23:24:07 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8B2-00036Q-NK
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 23:23:58 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D02DA4B41;
 Wed,  6 Nov 2019 00:23:52 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id ee36b47a;
 Wed, 6 Nov 2019 00:23:42 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 00:23:48 +0100
Message-Id: <20191105232348.4710-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_152356_913493_13F47D93 
X-CRM114-Status: UNSURE (   5.31  )
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
Subject: [OpenWrt-Devel] [PATCH] build: image: fix build breakage of some
 images
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

Q29tbWl0IDg4MWVkMDllZTZlMiAoImJ1aWxkOiBjcmVhdGUgSlNPTiBmaWxlcyBjb250YWluaW5n
IGltYWdlIGluZm8iKQpoYXMgcmVtb3ZlZCB0aGUgY3J1Y2lhbCBlbXB0eSBuZXcgbGluZSBmcm9t
IHRoZSBpbWFnZSBjb3B5IHN0ZXAKcmVzdWx0aW5nIGluIHRoZSBmb2xsb3dpbmcgZXJyb3JzIGR1
cmluZyBtYWtlIGZ1bmN0aW9uIGV4cGFuc2lvbjoKCiBHWl9TVUZGSVggOj0KIGJhc2g6IEdaX1NV
RkZJWDogY29tbWFuZCBub3QgZm91bmQKIE1ha2VmaWxlOjg2OiByZWNpcGUgZm9yIHRhcmdldCAn
b3BlbndydC1hdGg3OS1nZW5lcmljLXRwbGlua19hcmNoZXItYzctdjUtc3F1YXNoZnMtc3lzdXBn
cmFkZS5iaW4nIGZhaWxlZAoKRml4ZXM6IDg4MWVkMDllZTZlMiAoImJ1aWxkOiBjcmVhdGUgSlNP
TiBmaWxlcyBjb250YWluaW5nIGltYWdlIGluZm8iKQpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0
aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIGluY2x1ZGUvaW1hZ2UubWsgfCAxICsKIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvaW1hZ2UubWsgYi9p
bmNsdWRlL2ltYWdlLm1rCmluZGV4IDk0MGFlODEyZWE5NS4uNzdkNDU2NzE5NzExIDEwMDY0NAot
LS0gYS9pbmNsdWRlL2ltYWdlLm1rCisrKyBiL2luY2x1ZGUvaW1hZ2UubWsKQEAgLTU5Nyw2ICs1
OTcsNyBAQCBkZWZpbmUgRGV2aWNlL0J1aWxkL2ltYWdlCiAJCVNVUFBPUlRFRF9ERVZJQ0VTPSIk
KFNVUFBPUlRFRF9ERVZJQ0VTKSIgXAogCQkkKFRPUERJUikvc2NyaXB0cy9qc29uX2FkZF9pbWFn
ZV9pbmZvLnB5IFwKIAkpCisKIGVuZGVmCiAKIGRlZmluZSBEZXZpY2UvQnVpbGQvYXJ0aWZhY3QK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

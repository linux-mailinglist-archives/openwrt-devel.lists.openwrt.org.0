Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDE9127083
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:15:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkBHdFeRilPuVWe71ujPKBAZ4PuvcJanOCBz07bNNgA=; b=Wvip70TlutY0em
	wNic/j7MHyLprAKwFmJPvAQZGbb6fRmaBo0sd90JP6+MJgbOppK9/1kA9322iHgvtx/mkZLSDvr9t
	jT5fqiLFDEbSErlfFeDtYhoeyObn/xVucSav8chEx0kCeuhOY/QzruwfTIych9xh+8mCZDZU8TOxY
	mc+8yvNKjuyaFBWZDeTtwUqh0TAqFNqSftJG5DLnbM4eNOK0dSQ3H+I/xZoJ3DQuVplPterEFuMEm
	yKdjmjvvpEuZCMnlxfxp1VBEa0B/oXZnfMEBTOjCOIbH4slDMfEO5qcfKIHcnMJx5SIj3C7l5xmNr
	SwHra9R0vXBn3ktzi7Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii44q-0003hh-48; Thu, 19 Dec 2019 22:15:24 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii41N-000578-6f
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:11:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B6E3C4BD4;
 Thu, 19 Dec 2019 23:11:47 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 34ac4c80;
 Thu, 19 Dec 2019 23:11:37 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:11:24 +0100
Message-Id: <20191219221125.22646-16-ynezz@true.cz>
In-Reply-To: <20191219221125.22646-1-ynezz@true.cz>
References: <20191219221125.22646-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_141149_454843_0CB2D6EF 
X-CRM114-Status: UNSURE (   7.89  )
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
Subject: [OpenWrt-Devel] [PATCH ubus 15/16] ubus_monitor: workaround
 possibly false positive uses of memory after it is freed
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

c2Nhbi1idWlsZCBmcm9tIGNsYW5nLTkgaGFzIHJlcG9ydGVkIGZvbGxvd2luZzoKCiBsaWJ1Ym94
L2xpc3QuaDoxNDE6Mjogd2FybmluZzogVXNlIG9mIG1lbW9yeSBhZnRlciBpdCBpcyBmcmVlZAog
ICAgICAgIF9saXN0X2FkZChfbmV3LCBoZWFkLCBoZWFkLT5uZXh0KTsKClNpZ25lZC1vZmYtYnk6
IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogdWJ1c2RfbW9uaXRvci5jIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvdWJ1c2RfbW9uaXRvci5jIGIvdWJ1c2RfbW9uaXRvci5jCmluZGV4IDUwMWUwNmQwNzE2
Yy4uYmJhNzQxZTg2OTg3IDEwMDY0NAotLS0gYS91YnVzZF9tb25pdG9yLmMKKysrIGIvdWJ1c2Rf
bW9uaXRvci5jCkBAIC00MSw3ICs0MSw3IEBAIHVidXNkX21vbml0b3JfY29ubmVjdChzdHJ1Y3Qg
dWJ1c19jbGllbnQgKmNsLCBzdHJ1Y3QgdWJ1c19tc2dfYnVmICp1YikKIAkJcmV0dXJuIGZhbHNl
OwogCiAJbS0+Y2wgPSBjbDsKLQlsaXN0X2FkZCgmbS0+bGlzdCwgJm1vbml0b3JzKTsKKwlsaXN0
X2FkZF90YWlsKCZtLT5saXN0LCAmbW9uaXRvcnMpOwogCiAJcmV0dXJuIHRydWU7CiB9CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

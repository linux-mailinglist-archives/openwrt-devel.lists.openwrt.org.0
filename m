Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBB41388A2
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 23:55:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lzmAtMfqBEx9nRF2bt5a3NmtZVw+zTvboKZ4rEhzlWo=; b=RqyhACBfuINPeW
	HRZgvTHCEHgpO4akjMKCZ1T0aAncpPhouQTHEYO5Zr8kOpotMXc7h+RYkmi4d5QBnlc2W+UmpIoPc
	+GDuL9F12yBaAFKNPmmIpPuUx/p2COrYnrQP+Mz1fGFipTfwbyWKYG0kTwoaZhsI22X8UeK5Q2a2W
	/fE9nIFAUEsyFavwLyOVbsfjCLJCkSjfdx0DcbzT3NT+s+iRVhJRMBTfpK8BcvDD0gSi9mpTHQ57D
	fISrRAuv0YZKT2M7mLZjs5eRBi7dXe4duex5XjjDMhMxrfnX4YjFfo8Y+pwfbl9OTVlwUHWdGc7Nl
	DDoG4vhjc/wOZ3K+vfBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqm8u-0001E4-Dk; Sun, 12 Jan 2020 22:55:36 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqm8m-0001CW-LA
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 22:55:30 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A4F0B3788;
 Sun, 12 Jan 2020 23:55:21 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 27c2e937;
 Sun, 12 Jan 2020 23:55:10 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 Jan 2020 23:55:11 +0100
Message-Id: <20200112225515.11654-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_145528_846118_5A9A3D4C 
X-CRM114-Status: UNSURE (   5.34  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 0/4] more tests and fixes
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

SGksCgp0aGlzIHBhdGNoIHNlcmllcyBpbmNyZWFzZXMgdW5pdCB0ZXN0IGNvdmVyYWdlIGFuZCBm
aXhlcyBpbnQxNi9pbnQ2NCBKU09OCnNlcmlhbGl6YXRpb24uCgpEYWluaXMgSm9uaXRpcyAoMSk6
CiAgYmxvYm1zZzogYmxvYm1zZ19hZGRfanNvbl9lbGVtZW50KCkgNjQtYml0IHZhbHVlcwoKUGV0
ciDFoHRldGlhciAoMyk6CiAgdGVzdHM6IGluY2x1ZGUganNvbiBzY3JpcHQgc2h1bml0MiBiYXNl
ZCB0ZXN0aW5nCiAgdGVzdHM6IGJsb2Jtc2cvanNvbjogYWRkIG1vcmUgdGVzdCBjYXNlcwogIGJs
b2Jtc2dfanNvbjogZml4IGludDE2IHNlcmlhbGl6YXRpb24KCiBibG9ibXNnX2pzb24uYyAgICAg
ICAgICAgICAgICB8ICAgMTIgKy0KIHRlc3RzL0NNYWtlTGlzdHMudHh0ICAgICAgICAgIHwgICAg
MSArCiB0ZXN0cy9jcmFtL3Rlc3RfYmxvYm1zZy50ICAgICB8ICAyNTUgKysrKysrKy0KIHRlc3Rz
L3NodW5pdDIvQ01ha2VMaXN0cy50eHQgIHwgICAgNyArCiB0ZXN0cy9zaHVuaXQyL3NodW5pdDIv
c2h1bml0MiB8IDEwNDAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiB0ZXN0cy9z
aHVuaXQyL3Rlc3RzLnNoICAgICAgICB8ICAyODcgKysrKysrKysrCiB0ZXN0cy90ZXN0LWJsb2Jt
c2cuYyAgICAgICAgICB8ICAgNDcgKy0KIDcgZmlsZXMgY2hhbmdlZCwgMTYxOSBpbnNlcnRpb25z
KCspLCAzMCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9zaHVuaXQyL0NN
YWtlTGlzdHMudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvc2h1bml0Mi9zaHVuaXQyL3No
dW5pdDIKIGNyZWF0ZSBtb2RlIDEwMDc1NSB0ZXN0cy9zaHVuaXQyL3Rlc3RzLnNoCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

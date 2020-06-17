Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C77C1FD7FE
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 23:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8V4wZpFp0X0K1p1h/GTBx5sblrc/MXCNq2tH5ni/n3E=; b=RqYLK3vCsUY/aG
	XhuqqUNly9p1myBxoek+o0Quk853tvQMPHvj4lAqJnh705nEkSFd0KzFJg4ynse7B8BcakyqLPih6
	QMnRWMgAUCO2cyqBuSt21CqnIhTfteeU2E5Tbhk7mVU4e5K5/nV5O+mP0XqNOnLmBMzX7LfYITR64
	0j1gv7fsVZUE7BOQsDScAh1NKH1SkiEbyaRrQmdK3Jwf8uMTYTZfyKWvm8m/YGWHV/P/O4ZWA7/I8
	maPObGnSjfYRqrEP7qEpDJAajx6m7VetGHY0HvSi+1ECECkHoxM9OnhhVckKa+YnzQergJSzuicvN
	GDfChLqGSUKeC8XZ2cJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlg3c-0000GP-8L; Wed, 17 Jun 2020 21:57:20 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlg3U-0000FT-EM
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 21:57:14 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3593118DA3;
 Wed, 17 Jun 2020 23:57:01 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id aeb723ec;
 Wed, 17 Jun 2020 23:56:43 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 17 Jun 2020 23:56:57 +0200
Message-Id: <20200617215657.4330-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_145712_636875_71AC7864 
X-CRM114-Status: UNSURE (   5.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: archer-c7-v5: fix initramfs image
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

Q3VycmVudGx5IGl0J3Mgbm90IHBvc3NpYmxlIHRvIHRmdHBib290IGluaXRyYW1mcyBpbWFnZSBh
cyB0aGUgaW1hZ2UKY29udGFpbnMgdHBsaW5rLXYxLWhlYWRlciB3aGljaCBsZWFkcyB0bzoKCiBh
dGg+IGJvb3RtCiAjIyBCb290aW5nIGltYWdlIGF0IDgxMDAwMDAwIC4uLgogQmFkIE1hZ2ljIE51
bWJlcgoKRml4IHRoaXMgYnkgdXNpbmcgdUltYWdlIHdyYXBwZWQgaW5pdHJhbWZzIGltYWdlLgoK
U2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB0YXJnZXQv
bGludXgvYXRoNzkvaW1hZ2UvZ2VuZXJpYy10cC1saW5rLm1rIHwgMSArCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXRoNzkvaW1hZ2Uv
Z2VuZXJpYy10cC1saW5rLm1rIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL2dlbmVyaWMtdHAt
bGluay5tawppbmRleCBiZDdlYjNmYzc2MDguLmFiYjI0YmZiOWE5ZSAxMDA2NDQKLS0tIGEvdGFy
Z2V0L2xpbnV4L2F0aDc5L2ltYWdlL2dlbmVyaWMtdHAtbGluay5taworKysgYi90YXJnZXQvbGlu
dXgvYXRoNzkvaW1hZ2UvZ2VuZXJpYy10cC1saW5rLm1rCkBAIC0xOTcsNiArMTk3LDcgQEAgZGVm
aW5lIERldmljZS90cGxpbmtfYXJjaGVyLWM3LXY1CiAgIFRQTElOS19CT0FSRF9JRCA6PSBBUkNI
RVItQzctVjUKICAgQk9BUkROQU1FIDo9IEFSQ0hFUi1DNy1WNQogICBTVVBQT1JURURfREVWSUNF
UyArPSBhcmNoZXItYzctdjUKKyAgS0VSTkVMX0lOSVRSQU1GUyA6PSBrZXJuZWwtYmluIHwgYXBw
ZW5kLWR0YiB8IGx6bWEgfCB1SW1hZ2VBcmNoZXIgbHptYQogZW5kZWYKIFRBUkdFVF9ERVZJQ0VT
ICs9IHRwbGlua19hcmNoZXItYzctdjUKIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=

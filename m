Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3A81B9FC
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 May 2019 17:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c33i2d5XQf+Ue2DVS+89EVFyRxHtOj4//OK88j245lk=; b=gLZ6NjNewWZX3T
	a2xRwXVonVDsOW3d4Nmu2cPhzOa69DxCO2SCkvVVQ3MD6Ija9eIRBHm3ziwIxpusmyWJJzDIU3eUX
	m/02dxN1W70HYLngdBY0oTUBqwcSd1McLcWnLGiG4mqgHeDixiRIIQZk61+dt8jQAw6p6HMkyfz/Z
	r2yoaN2U+jlv6IUnGjqZvGxDL/CWdr0O0EgKEbV3mSDWDgF1KQng3+n47axn2HPtl9PBn9wP2wVbD
	jyPYSdsKI4MK4P+sgfHrsGnNyigxLBbRLFZ5c6an/3kIwT2LGfSZ0sTRibb2SswA5eOx9OrDsfq+c
	S0VioSDUP2jFACJfUkvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCsm-00064k-EC; Mon, 13 May 2019 15:28:52 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCsU-0005m0-5A
 for openwrt-devel@lists.openwrt.org; Mon, 13 May 2019 15:28:38 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4D0D1377D;
 Mon, 13 May 2019 17:28:28 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f838b790;
 Mon, 13 May 2019 17:28:26 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 13 May 2019 17:28:24 +0200
Message-Id: <1557761304-5994-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_082834_612706_15DAF1EE 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH] imx6: apalis: fix config survival after
 sysupgrade -n
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBwYXRjaCBmaXhlcyBgc3lzdXBncmFkZSAtbmAgd2hlbiBmbGFzaGVkIHdpdGggcm9vdGZz
IG9mIHRoZSBzYW1lCnNpemUgYXMgY3VycmVudGx5IHJ1bm5pbmcsIHNvIHRoZSByb290ZnNfZGF0
YSB3b3VsZG4ndCBnZXQgZGVzdHJveWVkIGFuZAp0aHVzIHN1cnZpdmUgcmVib290LiBTbyBsZXQn
cyBmaXggaXQgYnkgYWx3YXlzIGNsZWFuaW5nIHVwIHRoZSBjb250ZW50Cm9mIHRoZSByb290ZnNf
ZGF0YSBkdXJpbmcgc3lzdXBncmFkZS4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHlu
ZXp6QHRydWUuY3o+Ci0tLQogdGFyZ2V0L2xpbnV4L2lteDYvYmFzZS1maWxlcy9saWIvdXBncmFk
ZS9wbGF0Zm9ybS5zaCB8IDEwICsrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2lteDYvYmFzZS1maWxlcy9saWIvdXBn
cmFkZS9wbGF0Zm9ybS5zaCBiL3RhcmdldC9saW51eC9pbXg2L2Jhc2UtZmlsZXMvbGliL3VwZ3Jh
ZGUvcGxhdGZvcm0uc2gKaW5kZXggMmQ3NmI2YjRhZjMzLi5mZTNiZjIxODRmYzcgMTAwNzU1Ci0t
LSBhL3RhcmdldC9saW51eC9pbXg2L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gK
KysrIGIvdGFyZ2V0L2xpbnV4L2lteDYvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9ybS5z
aApAQCAtNzIsMyArNzIsMTMgQEAgcGxhdGZvcm1fY29weV9jb25maWcoKSB7CiAJCTs7CiAJZXNh
YwogfQorCitwbGF0Zm9ybV9wcmVfdXBncmFkZSgpIHsKKwlsb2NhbCBib2FyZD0kKGJvYXJkX25h
bWUpCisKKwljYXNlICIkYm9hcmQiIGluCisJYXBhbGlzKikKKwkJWyAiJFNBVkVfQ09ORklHIiAt
ZXEgMCBdICYmIGpmZnMycmVzZXQgLXkKKwkJOzsKKwllc2FjCit9Ci0tIAoxLjkuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

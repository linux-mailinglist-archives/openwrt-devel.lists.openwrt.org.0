Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A6D13BD75
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 11:31:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ooaVajV26bjt8rDzOZAjGyUcyaxo9L4OSjH4ACDM6Pc=; b=MorqzGzuosBE0F
	WpX4FBQo0w61t8hF/9qGyc+fv1OrycqrW6pWMhY3NzGouRWD1DnrymrVrSBp1O8Q+0UlP9RQKYPGr
	AQtUlVMnQh4bvcdKc1bpeq1V2hJHrxq3vzlYgmlOstXH2Te/9QKQXO07uSwaIHI4kkv8hxv2TUfEp
	PReGLh/GxiROk+KbH5bIfRF666f0Tq44pHtwn3eVgyLJ8OC3mc2++jKBUkKxSl2tIrT6eU1RZtIKC
	Wk1y6l2qJJ5fTnsaWYwegXDwO8+LxJ2+B8XLS50PIB/0gUbWj5MLOwvATwrICro3OPvTSuTPJTVHo
	hJwMYDBhcJxM4jlKoxBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irfxU-0008VR-Ek; Wed, 15 Jan 2020 10:31:32 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfx5-00089V-HQ
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 10:31:12 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1F70D6909;
 Wed, 15 Jan 2020 11:31:06 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id cce76c03;
 Wed, 15 Jan 2020 11:30:55 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 Jan 2020 11:30:56 +0100
Message-Id: <20200115103057.7665-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_023107_729454_2BF7BA05 
X-CRM114-Status: UNSURE (   8.04  )
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
Subject: [OpenWrt-Devel] [PATCH procd 1/2] instance: fix typo in error
 message
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

Rml4ZXMgYHJlbW92ZWRgIHRvIHByb3BlciBgcmVtb3ZlYCBpbiAiRmFpbGVkIHRvIHJlbW92ZWQg
cGlkZmlsZSIuCgpGaXhlczogYjEyYmIxNTBlZDM4ICgicHJvY2Q6IHNlcnZpY2U6IFN1cHBvcnQg
d3JpdGluZyBwaWRmaWxlcyIpClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRy
dWUuY3o+Ci0tLQogc2VydmljZS9pbnN0YW5jZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmljZS9pbnN0YW5j
ZS5jIGIvc2VydmljZS9pbnN0YW5jZS5jCmluZGV4IGIwYzk4MDc5ZDViOS4uY2U1MjMzODA3ZGJi
IDEwMDY0NAotLS0gYS9zZXJ2aWNlL2luc3RhbmNlLmMKKysrIGIvc2VydmljZS9pbnN0YW5jZS5j
CkBAIC0yNzAsNyArMjcwLDcgQEAgaW5zdGFuY2VfcmVtb3ZlcGlkKHN0cnVjdCBzZXJ2aWNlX2lu
c3RhbmNlICppbikgewogCWlmICghaW4tPnBpZGZpbGUpCiAJCXJldHVybiAwOwogCWlmICh1bmxp
bmsoaW4tPnBpZGZpbGUpKSB7Ci0JCUVSUk9SKCJGYWlsZWQgdG8gcmVtb3ZlZCBwaWRmaWxlOiAl
czogJW1cbiIsIGluLT5waWRmaWxlKTsKKwkJRVJST1IoIkZhaWxlZCB0byByZW1vdmUgcGlkZmls
ZTogJXM6ICVtXG4iLCBpbi0+cGlkZmlsZSk7CiAJCXJldHVybiAxOwogCX0KIAlyZXR1cm4gMDsK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBDB86ACE
	for <lists+openwrt-devel@lfdr.de>; Thu,  8 Aug 2019 21:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aXyRS6u4VSH1IspAnY3u/I/gXGGJjKjtYsEygMU4f9Q=; b=mFoZ3CMhjSXcUR
	ymATFh2cWPRQcDQJpoG/nxqyKKM3Tj+grsCHXBkKjpTdhZ03GNUjfPNnwDJa+rIVBnDhvv/E1EHOc
	jIitTFTmry37bn9U1PFvEz2u4zdD1p2JlmGY0ydufGhNSAiuPTMjowmY8Cj/FO4fTgGqrZCo2895M
	brPhqSlggFDHCiEHvSKV6/vx8L2GQYCbhMZ+KRuFwjmli0r+9/622gf3kRwwcAXfB9Ea2lfzbMhku
	pysG88Lr+y2opm2kC0mupz9aVUymCFhGdwc59NAf+1DEJC35+dGUo7RIGdiNemwP7z+C5p0fO7Y9X
	L1saqVm/CgBFiemjX0fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvoSV-0005JH-5F; Thu, 08 Aug 2019 19:52:23 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvoSL-0005Iv-17
 for openwrt-devel@lists.openwrt.org; Thu, 08 Aug 2019 19:52:17 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2351438AB;
 Thu,  8 Aug 2019 21:52:09 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 1628f9e5;
 Thu, 8 Aug 2019 21:52:01 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  8 Aug 2019 21:52:02 +0200
Message-Id: <20190808195202.12236-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_125213_223345_609B9C90 
X-CRM114-Status: UNSURE (   6.46  )
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
Subject: [OpenWrt-Devel] [PATCH] sdk: fix GCC and Python dangling symlinks
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

Rm9yY2UgcHJlcmVxIGFnYWluIGluIFNESyBpbiBvcmRlciB0byBmaXggR0NDIGFuZCBQeXRob24g
ZGFuZ2xpbmcKc3ltbGlua3M6Cgogc3RhZ2luZ19kaXIvaG9zdC9iaW4vZysrIC0+IC9idWlsZGVy
L2F0aDc5X2dlbmVyaWMvY2NhY2hlX2N4eC5zaAogc3RhZ2luZ19kaXIvaG9zdC9iaW4vZ2NjIC0+
IC9idWlsZGVyL2F0aDc5X2dlbmVyaWMvY2NhY2hlX2NjLnNoCiBzdGFnaW5nX2Rpci9ob3N0L2Jp
bi9weXRob24gLT4gL3Vzci9iaW4vcHl0aG9uMy41CiBzdGFnaW5nX2Rpci9ob3N0L2Jpbi9weXRo
b24zIC0+IC91c3IvYmluL3B5dGhvbjMuNQoKUmVmOiBGUyMyNDI0ClNpZ25lZC1vZmYtYnk6IFBl
dHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogdGFyZ2V0L3Nkay9NYWtlZmlsZSB8IDMg
KystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvdGFyZ2V0L3Nkay9NYWtlZmlsZSBiL3RhcmdldC9zZGsvTWFrZWZpbGUKaW5kZXgg
MGJlZDY2NmQyMTcyLi4yYmFkYzMxNDI5N2MgMTAwNjQ0Ci0tLSBhL3RhcmdldC9zZGsvTWFrZWZp
bGUKKysrIGIvdGFyZ2V0L3Nkay9NYWtlZmlsZQpAQCAtMTQ0LDcgKzE0NCw4IEBAICQoQklOX0RJ
UikvJChTREtfTkFNRSkudGFyLnh6OiBjbGVhbgogCS1ybSAtcmYgXAogCQkkKFNES19CVUlMRF9E
SVIpLyQoU1RBR0lOR19TVUJESVJfSE9TVCkvY2NhY2hlIFwKIAkJJChTREtfQlVJTERfRElSKS8k
KFNUQUdJTkdfU1VCRElSX1RBUkdFVCkvY2NhY2hlIFwKLQkJJChTREtfQlVJTERfRElSKS8kKFNU
QUdJTkdfU1VCRElSX1RPT0xDSEFJTikvY2NhY2hlCisJCSQoU0RLX0JVSUxEX0RJUikvJChTVEFH
SU5HX1NVQkRJUl9UT09MQ0hBSU4pL2NjYWNoZSBcCisJCSQoU0RLX0JVSUxEX0RJUikvJChTVEFH
SU5HX1NVQkRJUl9IT1NUKS8ucHJlcmVxLWJ1aWxkCiAKIAktcm0gLWYgJChTREtfQlVJTERfRElS
KS9mZWVkcy5jb25mLmRlZmF1bHQKIAkkKGlmICQoQkFTRV9GRUVEKSxlY2hvICIkKEJBU0VfRkVF
RCkiID4gJChTREtfQlVJTERfRElSKS9mZWVkcy5jb25mLmRlZmF1bHQpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

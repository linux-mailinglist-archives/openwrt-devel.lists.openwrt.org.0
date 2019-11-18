Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB20B10091B
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 17:22:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HQj5+pe2FoO/OXmTtNOvdw+joHcs2AG5Wh2PsrQaTc0=; b=kZqAVhreGPwexy
	8ZKhKJ7uYCuyJrymg7UvD8U8n4LBLdu4Zn/J/OUazcxlrwJQ2LmIO7otmD4KRJeWG7pP709rf6/vl
	z9H/iMMizOIRRLubTgw3RSnDZ9D6cscplheQKiNHEiqTJKAk4UHPmUIyPmWf57eJKsOLh8JR9vttO
	XQOcM+e93+g3Y0q1osxjE1RW1rMAW0qjWFOjpfxv9whYWRH5yX19Z90J7UCDov1f36XyWQd9lJYOE
	7X5RP1heEqjbXNHHntoMEjK+CEl/4oA4zW1LarJIbpoY5THK2AUMyeOudqNtd5SgeC1mL56RYfYDU
	rfcyAlCGfl3etBvDQnNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWjnJ-0001Yq-AJ; Mon, 18 Nov 2019 16:22:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWjnB-0001Xn-P5
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 16:22:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EAFAD4EF7;
 Mon, 18 Nov 2019 17:22:15 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 6c5c9fdd;
 Mon, 18 Nov 2019 17:22:05 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 18 Nov 2019 17:22:12 +0100
Message-Id: <20191118162213.32485-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_082221_970065_95438667 
X-CRM114-Status: UNSURE (   6.48  )
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
Subject: [OpenWrt-Devel] [PATCH 1/2] kernel-build: ignore runtime config
 options during reconfig
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

RG9uJ3QgcHV0IENDX0hBU19BU01fR09UTywgSVNfR0NDLCBJU19DTEFORyBhbmQgR0NDX1ZFUlNJ
T04gcnVudGltZQpjb25maWcgb3B0aW9ucyBpbnRvIHRoZSBrZXJuZWwgY29uZmlncyBkdXJpbmcg
cmVjb25maWd1cmF0aW9uIGFzIGl0Cm1ha2VzIG5vIHNlbnNlLCBzaW5jZSB0aGVzZSBvcHRpb25z
IHNob3VsZCBiZSBzZXQgYXQgcnVudGltZS4KCkZpeGVzOiBGUyMyNTg4ClNpZ25lZC1vZmYtYnk6
IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogaW5jbHVkZS9rZXJuZWwtYnVpbGQu
bWsgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2tlcm5lbC1idWlsZC5tayBiL2luY2x1ZGUva2VybmVs
LWJ1aWxkLm1rCmluZGV4IDY4NGZiZDM0ZDNjMC4uYjFkM2ZjMDdmZDIzIDEwMDY0NAotLS0gYS9p
bmNsdWRlL2tlcm5lbC1idWlsZC5taworKysgYi9pbmNsdWRlL2tlcm5lbC1idWlsZC5tawpAQCAt
MTY1LDcgKzE2NSw5IEBAIGRlZmluZSBCdWlsZEtlcm5lbAogCQkkKGlmICQoZmluZHN0cmluZyBE
YXJ3aW4sJChIT1NUX09TKSksSE9TVF9MT0FETElCRVM9Ii1MJChTVEFHSU5HX0RJUl9IT1NUKS9s
aWIgLWxuY3Vyc2VzIikgXAogCQlZQUNDPSQoU1RBR0lOR19ESVJfSE9TVCkvYmluL2Jpc29uIFwK
IAkJJCRACi0JJChMSU5VWF9SRUNPTkZfRElGRikgJChMSU5VWF9ESVIpLy5jb25maWcgPiAkKExJ
TlVYX1JFQ09ORklHX1RBUkdFVCkKKwkkKExJTlVYX1JFQ09ORl9ESUZGKSAkKExJTlVYX0RJUikv
LmNvbmZpZyB8IFwKKwkJZ3JlcCAtdkUgJyhDT05GSUdfQ0NfKEhBU19BU01fR09UT3xJU19HQ0N8
SVNfQ0xBTkcpfEdDQ19WRVJTSU9OKT0nIFwKKwkJPiAkKExJTlVYX1JFQ09ORklHX1RBUkdFVCkK
IAogICBpbnN0YWxsOiAkKExJTlVYX0RJUikvLmltYWdlCiAJKyQoTUFLRSkgLUMgaW1hZ2UgY29t
cGlsZSBpbnN0YWxsIFRBUkdFVF9CVUlMRD0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK

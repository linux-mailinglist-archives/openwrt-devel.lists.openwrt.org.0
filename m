Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D40AA0F0
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 13:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BTlEJ8WJK0Xa2owoVeXW5CPo+QY57LFpxGBVSjqHz+g=; b=budFlYLmoq1fYh
	ZazVk4Gm579CMsCbpuihf1DcDPtglnRiD9oQPgykVrgNdJvneTozaIddi06cDltv8sptVhfWP9pK8
	z/wVYSzR/vi8l0uDQHEmkw+aR/JE9VmRWGli6kEOGrHKPUmD8GN6VjTl9EVHWgKP9CfRsvywq4qs1
	PMxt7zTGVo/6aV984/krFkcHsNc9vuKtmgR4SV1jF4pIIrg+RDEOsYM7Ec+RSQKaMco60u665me5J
	cnaKJwUFqYWLOJC2kRcGbvcxV1Rt7HUX358XAUSnDUHhjCCXg0jYCFIPbY0S6UCcYs/Vadt/LrUE3
	JSIe74JXSxArlF/D21wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pdT-0006Fz-KV; Thu, 05 Sep 2019 11:09:07 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pcr-0006Fa-JL
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 11:08:30 +0000
Received: by mail-lf1-x135.google.com with SMTP id j4so1648122lfh.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Sep 2019 04:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GS+9iHOVGCzgKSJrtAsllVCzfywG9uLjXc4rXrB+vPs=;
 b=VyrnJ0MeKDbmE4hLQIdqHHvADaq6B60fxa7oYbawKeBes1KR8bT7sUHBDU5p5oEbUV
 FbjDOew7dNdy7hi8My3QiM5917S4GsOoVweyruLLtfCLhBfFg1mNLbLTPt85/0Oa+6Sh
 ZFtAP6UUA1KG68vXAZikYrb1qNKElxjFiLAzdAr66Sgnw4GnNWaPA4N5LfOk9cYGaRQg
 AYZbEJdiVx+lhzNfvE4tj/I7J4656ws+EEHOBqZpgPZCGIQqaex/o/EfbpOlbO/MLivL
 1lf4BWbu6jNP4wSAt06gSme6OdGbaUJzWTdVU5aEZJlaQg4t7p7qXsh98lj2QvRYzVya
 Fl5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GS+9iHOVGCzgKSJrtAsllVCzfywG9uLjXc4rXrB+vPs=;
 b=JLxO9Ogq0AI1fE/s7NOOBYTq/12RJS7zvqh7A4hly64Pp+VIYBmgiueZsvo2FSfNx4
 QkurVaKnFVNHdLfkhLUoYZEcD4OwkrRnwLudOsPK9FEByl3LnTIvkm1IDVWSifMwLTbB
 Og3QSEjcQ62xULhnudUAWF5P8Vd1Vw1eJDIBaG1F8K3mzyrFH7NisieyuLlToQ0oDyB0
 Az/FzwtYQBkkUKfks2k7FaEaFazqQl6asG42BXtKP3ORuUkhMqI4MZra3Slx0R1p7DBE
 dV1WT/+nPo1bVBmrHfmgUfZ9kgnT/IjWziAsbYFLev7Lu5XqzlHIJuFAkytfteWZbesC
 E4Jw==
X-Gm-Message-State: APjAAAWKtUFE8wK3mYLwDt1Xa+YHpIiD9cslVPIVcz6frevw5XHnQQaq
 sEvTcl9sUK+/jaRi4uBg/I4bUZHw
X-Google-Smtp-Source: APXvYqzrUlQsXJeViS/fSZIIHqVD0jRIq1rROuuLl9WV8Xr+8kZhWxR+68mGC004SVmjxXeTz3uYmw==
X-Received: by 2002:ac2:558a:: with SMTP id v10mr1857661lfg.162.1567681707531; 
 Thu, 05 Sep 2019 04:08:27 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id o17sm347903ljd.9.2019.09.05.04.08.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 04:08:26 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Sep 2019 13:08:13 +0200
Message-Id: <20190905110813.21922-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_040829_664997_4E8D1B69 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:135 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] base-files: validate firmware for
 compatibility with backup
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Luis Araneda <luaraneda@gmail.com>, Jo-Philipp Wich <jo@mein.io>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBhbGxvd3MgcGxh
dGZvcm0gY29kZSB0byBjaGVjayBpZiBmaXJtd2FyZSBpbWFnZSBjYW4gYmUgdXNlZCB3aXRoCnBy
ZXNlcnZpbmcgYSBiYWNrdXAuIEl0IG1heSBiZSB1c2VkIGUuZy4gd2hlbiBpbnN0YWxsaW5nIHZl
bmRvcgpmaXJtd2FyZXMgdGhhdCB3b24ndCByZXN0b3JlIGFwcGVuZGVkIGJhY2t1cCBhcmNoaXZl
LgoKU3VnZ2VzdGVkLWJ5OiBMdWlzIEFyYW5lZGEgPGx1YXJhbmVkYUBnbWFpbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiAuLi4vYmFz
ZS1maWxlcy9maWxlcy91c3IvbGliZXhlYy92YWxpZGF0ZV9maXJtd2FyZV9pbWFnZSAgIHwgNyAr
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvcGFj
a2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3Vzci9saWJleGVjL3ZhbGlkYXRlX2Zpcm13YXJlX2ltYWdl
IGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3Vzci9saWJleGVjL3ZhbGlkYXRlX2Zpcm13YXJl
X2ltYWdlCmluZGV4IGEwNzc5NmM5ZGMuLmY4NWZiOWU0YjQgMTAwNzU1Ci0tLSBhL3BhY2thZ2Uv
YmFzZS1maWxlcy9maWxlcy91c3IvbGliZXhlYy92YWxpZGF0ZV9maXJtd2FyZV9pbWFnZQorKysg
Yi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvdXNyL2xpYmV4ZWMvdmFsaWRhdGVfZmlybXdhcmVf
aW1hZ2UKQEAgLTgsNiArOCw3IEBAIGluY2x1ZGUgL2xpYi91cGdyYWRlCiAKIFZBTElEPTEKIEZP
UkNFQUJMRT0xCitBTExPV19CQUNLVVA9MQogCiAjIE1hcmsgaW1hZ2UgYXMgaW52YWxpZCBidXQg
c3RpbGwgcG9zc2libGUgdG8gaW5zdGFsbAogbm90aWZ5X2Zpcm13YXJlX2ludmFsaWQoKSB7CkBA
IC0yMCw2ICsyMSwxMSBAQCBub3RpZnlfZmlybXdhcmVfYnJva2VuKCkgewogCUZPUkNFQUJMRT0w
CiB9CiAKKyMgTWFyayBpbWFnZSBhcyBpbmNvbXBhdGlibGUgd2l0aCBwcmVzZXJ2aW5nIGEgYmFj
a3VwCitub3RpZnlfZmlybXdhcmVfbm9fYmFja3VwKCkgeworCUFMTE9XX0JBQ0tVUD0wCit9CisK
ICMgQWRkIHJlc3VsdCBvZiB2YWxpZGF0aW9uIHRlc3QKIG5vdGlmeV9maXJtd2FyZV90ZXN0X3Jl
c3VsdCgpIHsKIAlsb2NhbCBvbGRfbnMKQEAgLTU1LDUgKzYxLDYgQEAganNvbl9pbml0CiAJanNv
bl9jbG9zZV9vYmplY3QKIAlqc29uX2FkZF9ib29sZWFuIHZhbGlkICIkVkFMSUQiCiAJanNvbl9h
ZGRfYm9vbGVhbiBmb3JjZWFibGUgIiRGT1JDRUFCTEUiCisJanNvbl9hZGRfYm9vbGVhbiBhbGxv
d19iYWNrdXAgIiRBTExPV19CQUNLVVAiCiBqc29uX2R1bXAgLWkKIGpzb25fc2V0X25hbWVzcGFj
ZSAkb2xkX25zCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==

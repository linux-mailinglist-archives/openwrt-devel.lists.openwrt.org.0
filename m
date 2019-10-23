Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6489DE185B
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 12:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATnSytBdMPcwWOfOt2QFRy74OD4naJ7xc3qNucIba3A=; b=meB96C6Y32lE4N
	kUaVGwzEsnJCz5fexslY/aXzKINEPS8n1NJcDiCcezJM3sai0560ixytW8UnSCku9TZlPt07jJUsj
	WHXK8MYOrRFWREr1fbhBHJZV3EFy0BUuaGP/gniPs9wRdcswkZSh29FULN+ZeXYJ5oX4SPE25UQTO
	f90L0wcBJnLusprXw9/pf9xHaMhIsnRzSXgy/HoDkCx2N/C2hGJkXljwLotjeXwBwwmjEr4vq+jil
	HSu/SOFt2at15lajO0pzYxAWPV/h/yz/IMcE6i5g+INMPDKOC0B8Rlbr7S++hmvmOlB/Iky/evizc
	D4HkZsdPH/UPV5c+bBWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNEIL-0002W1-6T; Wed, 23 Oct 2019 10:55:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNEH5-00010r-6o
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 10:53:56 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 748265241;
 Wed, 23 Oct 2019 12:53:46 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 9d582418;
 Wed, 23 Oct 2019 12:53:36 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 12:53:37 +0200
Message-Id: <20191023105339.16326-7-ynezz@true.cz>
In-Reply-To: <20191023105339.16326-1-ynezz@true.cz>
References: <20191023105339.16326-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_035355_429451_703D04A5 
X-CRM114-Status: UNSURE (   5.50  )
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
Subject: [OpenWrt-Devel] [PATCH fwtool 6/8] crc32: add missing stdint.h
 dependency
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

SW4gb3JkZXIgdG8gZml4IGNvbXBpbGUgZXJyb3IgaWYgdXNpbmcgdGhpcyBoZWFkZXIgc3RhbmRh
bG9uZSwgaW4gdW5pdAp0ZXN0cyBmb3IgZXhhbXBsZS4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0
ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogY3JjMzIuaCB8IDIgKysKIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9jcmMzMi5oIGIvY3JjMzIuaAppbmRleCAw
MjJjNjlmYzdmZDAuLjU0YzIzMjkwMzU0OSAxMDA2NDQKLS0tIGEvY3JjMzIuaAorKysgYi9jcmMz
Mi5oCkBAIC0xNyw2ICsxNyw4IEBACiAjaWZuZGVmIF9fQkJfQ1JDMzJfSAogI2RlZmluZSBfX0JC
X0NSQzMyX0gKIAorI2luY2x1ZGUgPHN0ZGludC5oPgorCiBzdGF0aWMgaW5saW5lIHZvaWQKIGNy
YzMyX2ZpbGx0YWJsZSh1aW50MzJfdCAqY3JjX3RhYmxlKQogewoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

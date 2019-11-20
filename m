Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC471045FC
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 22:45:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dui7Kp7NfLPREeBQdgODDD6OuugyGJQQM1PXFASeKHY=; b=N9T6L7Z6u5/row
	igT4srcStqFD84teGhfa/M5GKtXdfm0Wzf4JZ7YEMkZmfnTvNY0uWM5e1F/HIgDQMLv3FnHma48ur
	1iDxCc/KXVE3/pLgAbWNO4LJcd8Pf8f2JiPajfXfMuGRY8YzlEx5v6d6fuZabEtKuiCvTCy7+1GV/
	heXF7yurePa+2JotdasRn6k9hEwjgAH+cC+F4fBxOy5t15FXE7mHBftMqTqg86FbYQhjLaDoCiCoy
	B+8tm+OerNVX7TfXcXT0sCuKDzHhN1ZrUklC4CG/J5Gobd9CgfxqJyC1CChJsSdq+4uZoVOmy9qHF
	yVxSvbYly8XEGyl37J8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXXmw-0008Eo-1w; Wed, 20 Nov 2019 21:45:26 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXXld-0005p2-4g
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 21:44:06 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8F8AE4AD9;
 Wed, 20 Nov 2019 22:44:01 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 6a28f81c;
 Wed, 20 Nov 2019 22:43:51 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 Nov 2019 22:43:48 +0100
Message-Id: <20191120214353.27652-6-ynezz@true.cz>
In-Reply-To: <20191120214353.27652-1-ynezz@true.cz>
References: <20191120214353.27652-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_134405_329018_FDDB1258 
X-CRM114-Status: UNSURE (   6.86  )
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
Subject: [OpenWrt-Devel] [PATCH v2 libubox 05/10] add assert.h component
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

SW4gb3JkZXIgdG8gYWxsb3cgc2VhbWxlc3MgYXNzZXJ0KCkgdXNhZ2UgaW4gcmVsZWFzZSBidWls
ZHMgd2l0aG91dCB0aGUKbmVlZCBmb3IgZmlkZGxpbmcgd2l0aCBDTWFrZSBDIGZsYWdzIGFzIENN
YWtlIGFkZHMgLUROREVCVUcgc3dpdGNoIGluCnJlbGVhc2UgYnVpbGRzIHdoaWNoIGRpc2FibGUg
YXNzZXJ0KCkuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgot
LS0KIGFzc2VydC5oIHwgOSArKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhc3NlcnQuaAoKZGlmZiAtLWdpdCBhL2Fzc2VydC5oIGIv
YXNzZXJ0LmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi44NGY1NDcx
ODM2NmEKLS0tIC9kZXYvbnVsbAorKysgYi9hc3NlcnQuaApAQCAtMCwwICsxLDkgQEAKKyNwcmFn
bWEgb25jZQorCisjaWZkZWYgTkRFQlVHCisjdW5kZWYgTkRFQlVHCisjaW5jbHVkZSA8YXNzZXJ0
Lmg+CisjZGVmaW5lIE5ERUJVRworI2Vsc2UKKyNpbmNsdWRlIDxhc3NlcnQuaD4KKyNlbmRpZgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

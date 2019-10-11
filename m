Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7737D3B6E
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 10:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tqO1ogsFXr81ORZ/GjDUK+w+ci1W4x3K/Z/bcyMURsQ=; b=qdnpTwZwkLLUvG
	2FRjM9D/qv7uOX+evLl/T544L5cojf2gaEV1YeOTfJN6ija0d0jgujaNnWhWpORGMMzA1h7WzjcIV
	Oks8hp/pH50JS+lQsej80sROdHKXr7XzjkyNbrf0VYuCGGYviXg4PgLVg6CrwlVMUmho39VfiYcUQ
	VaXU2i6Y7gYtF0EyMlBrWWz68mf3pw8tDD+kISBqg6VE6/2S5qtD9p4NwZk4b04dXzrfNUjfuxQDD
	sVKH/Vm38yFCJj7106E+yVfQJlK2xxH683RyfGCk5cSjYD94Edju85kChSVbBTOpZX8ispz7+YXYQ
	orY9AtvBgE1q/lOroKfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqVn-00047M-1i; Fri, 11 Oct 2019 08:42:59 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqVA-0003fe-Va
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 08:42:22 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B575E3FEE;
 Fri, 11 Oct 2019 10:42:18 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 66876616;
 Fri, 11 Oct 2019 10:42:09 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 11 Oct 2019 10:42:04 +0200
Message-Id: <20191011084204.19790-5-ynezz@true.cz>
In-Reply-To: <20191011084204.19790-1-ynezz@true.cz>
References: <20191011084204.19790-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_014221_164118_C82DFA3F 
X-CRM114-Status: UNSURE (   7.12  )
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
Subject: [OpenWrt-Devel] [PATCH urngd 4/4] Tag version 1.0.1
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

TGV0cyB0YWcgdmVyc2lvbiAxLjAuMS4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHlu
ZXp6QHRydWUuY3o+Ci0tLQogQ01ha2VMaXN0cy50eHQgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9DTWFrZUxpc3RzLnR4
dCBiL0NNYWtlTGlzdHMudHh0CmluZGV4IGJjOWEyZjY4ZDA1My4uN2EzYmUyN2M0MTg5IDEwMDY0
NAotLS0gYS9DTWFrZUxpc3RzLnR4dAorKysgYi9DTWFrZUxpc3RzLnR4dApAQCAtNCw3ICs0LDcg
QEAgUFJPSkVDVCh1cm5nZCkKIElOQ0xVREUoR05VSW5zdGFsbERpcnMpCiBJTkNMVURFIChGaW5k
UGtnQ29uZmlnKQogCi1TRVQoVVJOR0RfVkVSU0lPTiAxLjAuMCkKK1NFVChVUk5HRF9WRVJTSU9O
IDEuMC4xKQogU0VUKEpURU5fRElSIDNyZHBhcnR5L2ppdHRlcmVudHJvcHktcm5nZCkKIAogRklO
RF9QQVRIKHVib3hfaW5jbHVkZV9kaXIgTkFNRVMgbGlidWJveC91c29jay5oKQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

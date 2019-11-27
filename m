Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8DD10AEE7
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 12:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Date:Message-Id:MIME-Version:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5UY8HNilFfYPuGsIBZkdY2Ad+rDwmiyKb/1EKWhW8w8=; b=FYgQSQAblOk3US
	vvhEEw4X/i/RdI+tbeiANjTOAiGC0CeOr5zq8NksCatt6yTiimeXcyFAxT/MorZJC/g9dy3LhTanj
	jw7HvtL4H1m8Vw52UBQW3eu4gUnjYvmQwQnmzZTuJAk36kR/HkULvmSeGaXKOmeb/7pp/DaRVWeNa
	wkB+KGBG4WU+rli+e1fKHx5pt5ZoLH7gOZxBMY2iqq9Qb6njgjBCwqCGrKimcfmngrdeJ+2rCj0Ir
	yExGcNDp6p6zS+h7nIi++NrJLiaJqhXgLRkyOqJZBH4EYVwUqDojkxXodrAIlSNKGpsh3tNBYglRy
	YL5qph/MLkS6sYRjO1aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZvoA-0000XC-8y; Wed, 27 Nov 2019 11:48:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvnd-0008U5-6g
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 11:48:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:Reply-To:Cc:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bpPDEON3CZtkZMc3tv1sjN2gouQDtwanBtfzJluFH/E=; b=NC/2pDcZsRWDJ4pACHpMIZotcV
 jwgBRBjU30oav+tudwSsw96bCDG+4XavkCKY89IeyFERKRB2BzCSdOcvme9ofIsCboch0r/bgNU+L
 n+FixZ8FFQV/RLVP0SJJp9u+4NIx2hwNes+/RCtBbd/WJAP2ClaOxRDnE8FTgd+rCKAP51b0dsPOb
 MsY1i5ISTmiVYmCUw+gg5cdQaWOk88dXtCmdP44a7ShN264zUyeOf9BIT00c0VA9N0GZbXtL8wo11
 n7R8LSdoqZa0gOhu245WeDgDhAiLMqytLraY+vCPF/0WgoHx34N8OJlwKAmtxeWut2paM4H/Qwc6Y
 o6LJQNjg==;
Received: from [2002:4e20:1eda:1:d263:b4ff:fe43:3701] (port=45920
 helo=cex7.armlinux.org.uk) by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1iZvnU-00037L-Qs; Wed, 27 Nov 2019 11:47:53 +0000
Received: from rmk by ed063b4433701.dyn.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@ed063b4433701.dyn.armlinux.org.uk>)
 id 1iZvl2-0001R8-7Z; Wed, 27 Nov 2019 11:45:20 +0000
From: Russell King <linux@armlinux.org.uk>
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1iZvl2-0001R8-7Z@ed063b4433701.dyn.armlinux.org.uk>
Date: Wed, 27 Nov 2019 11:45:20 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_034801_282760_C7B6B7FC 
X-CRM114-Status: UNSURE (   4.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 2/5] kernel: move phylink patches from
 mvebu to generic
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Move two phylink patches from mvebu to generic, so that everyone can
benefit from them.

Signed-off-by: Russell King <linux@armlinux.org.uk>
---
 ...00-net-phylink-only-call-mac_config-during-resolve-when.patch} | 0
 .../701-net-phylink-ensure-inband-AN-works-correctly.patch}       | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename target/linux/{mvebu/patches-4.19/402-net-phylink-only-call-mac_config-during-resolve-when.patch => generic/backport-4.19/700-net-phylink-only-call-mac_config-during-resolve-when.patch} (100%)
 rename target/linux/{mvebu/patches-4.19/403-net-phylink-ensure-inband-AN-works-correctly.patch => generic/backport-4.19/701-net-phylink-ensure-inband-AN-works-correctly.patch} (100%)

diff --git a/target/linux/mvebu/patches-4.19/402-net-phylink-only-call-mac_config-during-resolve-when.patch b/target/linux/generic/backport-4.19/700-net-phylink-only-call-mac_config-during-resolve-when.patch
similarity index 100%
rename from target/linux/mvebu/patches-4.19/402-net-phylink-only-call-mac_config-during-resolve-when.patch
rename to target/linux/generic/backport-4.19/700-net-phylink-only-call-mac_config-during-resolve-when.patch
diff --git a/target/linux/mvebu/patches-4.19/403-net-phylink-ensure-inband-AN-works-correctly.patch b/target/linux/generic/backport-4.19/701-net-phylink-ensure-inband-AN-works-correctly.patch
similarity index 100%
rename from target/linux/mvebu/patches-4.19/403-net-phylink-ensure-inband-AN-works-correctly.patch
rename to target/linux/generic/backport-4.19/701-net-phylink-ensure-inband-AN-works-correctly.patch
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

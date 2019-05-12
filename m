Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF5F1AE1F
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 May 2019 22:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:To:From:Date:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bHJptdeo79CJbGocdYGBh3G7qAqCNlKHL/jQWg+ie+c=; b=Vy6+OFUIKYqQHw9G7DzWnIuO4l
	BX4G2j0+63hi1JswKg3WW4XW4PEWoLQNr6uA/iV9iPRjZ35sLnetXVq7/wMEpADP/hCzvKzTr00ln
	58Klpg5g83HT0YFtD4X1Eo2McK2b68B0WnRm4eab04ETX3C64kmosKeCkEb1JH5mPBAkebzZAkZCr
	jpf3wT6r/fDwM9pLMrC5xjfMaexkY9jOl1gxLprj8VthL0qvg/OnZxapPdNGPFWKW1vNKTbWjKndi
	5RBET0Csr+DVYnn9WDCxjMmme8yMRP08tMFBHLtoI+dHvEdjex1P5qb/TFqcvlR9cl7K3YaSx5TLI
	9A4DMbnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPv1K-0006R3-BD; Sun, 12 May 2019 20:24:30 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPv1E-0006Li-TS
 for openwrt-devel@lists.openwrt.org; Sun, 12 May 2019 20:24:26 +0000
Received: from webmail.gandi.net (webmail23.sd4.0x35.net [10.200.201.23])
 (Authenticated sender: daniel.engberg@pyret.net)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPA id 51B191C0002;
 Sun, 12 May 2019 20:24:12 +0000 (UTC)
MIME-Version: 1.0
Date: Sun, 12 May 2019 22:24:12 +0200
From: Daniel Engberg <daniel.engberg.lists@pyret.net>
To: openwrt-devel@lists.openwrt.org
Message-ID: <2c19e9b8e7eb06e7ba90cab488a75829@pyret.net>
X-Sender: daniel.engberg.lists@pyret.net
User-Agent: Roundcube Webmail/1.3.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_132425_107360_714867FE 
X-CRM114-Status: UNSURE (   4.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.3 AC_FROM_MANY_DOTS      Multiple periods in From user name
Subject: [OpenWrt-Devel] [PATCH 1/2] octeon: Deactivate MIPS O32 and N32
 support
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
Cc: hauke@hauke-m.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

This patch seems to touch more things that just that... (4.19)

+CONFIG_ARCH_HIBERNATION_POSSIBLE=y
+CONFIG_ARCH_SUSPEND_POSSIBLE=y
Both these are optional and no supported hardware have these 
capatibilities to my knowledge

+CONFIG_HAVE_DEBUG_KMEMLEAK=y
+CONFIG_HAVE_DEBUG_STACKOVERFLOW=y
Why are these needed?

+CONFIG_HAVE_IDE=y
+CONFIG_HAVE_KVM=y
+CONFIG_MIPS_EBPF_JIT=y
These seems to be forced by the mips kernel config

+CONFIG_ZLIB_INFLATE=y
Where does this come from?

In general I think we need to come up with a better way of handling 
kernel configs as many doesn't seem to be correct (see GitHub PRs) even 
though the kernel compiles and it's very hard to get a good overview not 
to mention maintain.

Best regards,
Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

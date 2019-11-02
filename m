Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A0FED046
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 Nov 2019 19:50:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:Date:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZFtkQtXwYAHvdoWfRqTJMumxtGdi79rtX1qyDWkJOl4=; b=hQN
	igEexeTSi2Tx8bt1cEZSU97y7omL5bJrPi4NNe3b4vSTS4P/NoB/ySewx8V6FPZdLuGg9M86c6iFj
	PRr1IywuXrxQ4SIeSpDW1g7/9l7l7ISZJJHwUEbCeYY+F3EYAo2Kwv3HF+xlJ7q8aq35LqRBJDSr+
	Z+f37u8D+DnmJxww18+quRPEDeuFXmzP8XJtFxwl+HBB8cYyOUeJ4anoiB/UdykbUQbjlAuUBzFq/
	96dEZH8SDEpgvq9MQ1Q9abEyKlIxHAZA/884MSOdIz/ZX6qBDW4h3wy1npnNKpcb61D7VyHw9FF4K
	y7jTzETzkEhQkpcWlcKhbtXae4iUJxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQyTb-0003xf-K1; Sat, 02 Nov 2019 18:50:19 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQyTU-0003Rv-Mw
 for openwrt-devel@lists.openwrt.org; Sat, 02 Nov 2019 18:50:14 +0000
Received: from bilbo.ozlabs.org (localhost [IPv6:::1])
 by ozlabs.org (Postfix) with ESMTP id 4757R10ZXWz9sPF
 for <openwrt-devel@lists.openwrt.org>; Sun,  3 Nov 2019 05:50:04 +1100 (AEDT)
Authentication-Results: ozlabs.org; dmarc=none (p=none dis=none)
 header.from=patchwork.ozlabs.org
MIME-Version: 1.0
From: Patchwork <patchwork@patchwork.ozlabs.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 02 Nov 2019 18:50:04 -0000
Message-ID: <20191102185004.23100.41722@bilbo.ozlabs.org>
Precedence: bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_115012_910508_EBE4254A 
X-CRM114-Status: UNSURE (   4.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [openwrt] Patch notification: 1 patch updated
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
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

Hello,

The following patch (submitted by you) has been updated in Patchwork:

 * openwrt: [OpenWrt-Devel,v2] hostapd: add IEEE 802.11k support
     - http://patchwork.ozlabs.org/patch/1187696/
     - for: OpenWrt development
    was: New
    now: Accepted

This email is a notification only - you do not need to respond.

Happy patchworking.

--

This is an automated mail sent by the Patchwork system at
patchwork.ozlabs.org. To stop receiving these notifications, edit
your mail settings at:
  http://patchwork.ozlabs.org/mail/

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

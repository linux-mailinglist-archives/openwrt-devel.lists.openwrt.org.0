Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DD92ABEB
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 21:30:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:Date:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=g1TCR3tYxNyoQoUwsqacJ6n70U8vfDxi9RFR2Ldr9uY=; b=pb0
	cvJDEuKjNeWWaT4Lw/wmSoTIwA/eSukFo9kE4u0vgNMeQ5n2NZ4bDYgP+nj13RLwyA3joexYjh/0I
	oYvgR2477Uyd4lUeX1Wx7cMNOnhq/5lXwIWk/3eFNINw+ZGeQxAth3DR5x6x/VnsC79e2nEZtSEPI
	epWZ2R0ezR1GtjhUs4AMIDMPeoRw+qime4OrbrKVJcylYjE0aVGYciMI+vvJ59JvTgMQ3CzVtFYjc
	A+awMC9KLqP7gsYWQoBcN2NzjfAckVKdOx1PntH9WhN/zQFx0kRPQvOG9srkKB9hmuPKlSq48M6bw
	4ZhLK/KIJbTZsh/UitlaUfAw1CU8DRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUyqW-0006Ry-1w; Sun, 26 May 2019 19:30:16 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUyqN-000508-4P
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 19:30:08 +0000
Received: from bilbo.ozlabs.org (localhost [IPv6:::1])
 by ozlabs.org (Postfix) with ESMTP id 45Bqty49YRz9s3Z
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 May 2019 05:30:02 +1000 (AEST)
Authentication-Results: ozlabs.org; dmarc=none (p=none dis=none)
 header.from=patchwork.ozlabs.org
MIME-Version: 1.0
From: Patchwork <patchwork@patchwork.ozlabs.org>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 26 May 2019 19:30:02 -0000
Message-ID: <20190526193002.8252.62543@bilbo.ozlabs.org>
Precedence: bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_123007_375884_580D2AC0 
X-CRM114-Status: UNSURE (   3.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [openwrt] Patch notification: 1 patch updated
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

 * openwrt: [OpenWrt-Devel] gre: introduce 'nohostroute' option
     - http://patchwork.ozlabs.org/patch/1105538/
     - for: OpenWrt development
    was: New
    now: Changes Requested

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

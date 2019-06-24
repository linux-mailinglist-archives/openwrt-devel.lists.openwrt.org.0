Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E0F50F2A
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 16:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:Date:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZEf5dvLuLS7zvLu+S21O+dNLDc0rHJqVWQv6REwlDNw=; b=ftB
	5ri8JJ43VkSNeO/Z4T83281WSws3p9b48LghEsasBmewHJqKgjty53kfFY9PDcNKgfPFBwD5NEEKT
	aLmOdje3KSgoTXhRDrAxSxLxL25H1mvwN1wWHLoIky7jfR956xjhP7LCnEe2xVqWEFA5uuCuUea8d
	kN1JEAWi6Rwj081DjXc8vpHg1ADktHn8TV05s+Z0qqvPp4tqX0MlizdTyt9optkjry/c3n9m/HLxe
	7Ei7dRjkoNYigElG4I76K/UeiOITIloezJ/uIcRwzd53YvL2NmPG/ZGo0eJSmVX//cpeoXGJ39df8
	Vpx5nbo2EN0FKTUJI9ypXWDMVnAWJPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQL4-00041V-1l; Mon, 24 Jun 2019 14:52:58 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQIL-0000uV-6u
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 14:50:15 +0000
Received: from bilbo.ozlabs.org (localhost [IPv6:::1])
 by ozlabs.org (Postfix) with ESMTP id 45XXJW2z0Zz9s4Y
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Jun 2019 00:50:03 +1000 (AEST)
Authentication-Results: ozlabs.org; dmarc=none (p=none dis=none)
 header.from=patchwork.ozlabs.org
MIME-Version: 1.0
From: Patchwork <patchwork@patchwork.ozlabs.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 24 Jun 2019 14:50:03 -0000
Message-ID: <20190624145003.9337.29741@bilbo.ozlabs.org>
Precedence: bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_075009_540913_402C2B8E 
X-CRM114-Status: UNSURE (   3.28  )
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

 * openwrt: [OpenWrt-Devel,v2,1/1] ustream-ssl: mbedtls: use chacha-poly ciphersuites
     - http://patchwork.ozlabs.org/patch/952204/
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

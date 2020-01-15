Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA8F13CD1F
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 20:30:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:Date:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aw0jDVy2l3G8nnoQe3Ll7NI3nevgYYvsKnqFhxkRtv8=; b=iR5
	LbXco0sLXUIeWn1rPiZfvt4KT04Ba4QnSpZ5/EyEr3HcRWCWDgF0Rfu/PswhcozScUVyFUk3AE2MC
	RoOcPN2VKu6zLR6jlgHHaA212QvQJbhs3MLsySFD4CJQAHJlBsvZVOmOfVDEbdoMiIaSLD13cjgnE
	Lr46KduN0Rp+6tNNlY/vS/mNg0r9vZKJi1HvXDyldM/n2qnqOW/Gl6u3ou6/CHItfmXYACRecD3Kh
	HHm1HxwMg/zEW9wF9mT4JwhKIY7eqhIe24lewN4G59IFKyAeHhi0pD3kOpqOheXcyasUuFMH61BWV
	pOYu4vxmGQYTfscvB7es9CzofCNI0cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iroMr-0000rn-Hd; Wed, 15 Jan 2020 19:30:17 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iroMj-0000Es-Hm
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 19:30:11 +0000
Received: from bilbo.ozlabs.org (localhost [IPv6:::1])
 by ozlabs.org (Postfix) with ESMTP id 47ycpz0VhCz9sR8
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Jan 2020 06:30:03 +1100 (AEDT)
Authentication-Results: ozlabs.org; dmarc=none (p=none dis=none)
 header.from=patchwork.ozlabs.org
MIME-Version: 1.0
From: Patchwork <patchwork@patchwork.ozlabs.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 Jan 2020 19:30:03 -0000
Message-ID: <20200115193003.27855.93032@bilbo.ozlabs.org>
Precedence: bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_113009_755012_ABF70E1C 
X-CRM114-Status: UNSURE (   3.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [openwrt] Patch notification: 5 patches updated
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

The following patches (submitted by you) have been updated in Patchwork:

 * openwrt: [OpenWrt-Devel,v3] dropbear: move failsafe code out of base-files
     - http://patchwork.ozlabs.org/patch/1197588/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,v2] dropbear: move failsafe code out of base-files
     - http://patchwork.ozlabs.org/patch/1192366/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel] dropbear: move failsafe code out of base-files
     - http://patchwork.ozlabs.org/patch/1192364/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel,1/2] hostapd: add dtim_period, local_pwr_constraint, spectrum_mgmt_required
     - http://patchwork.ozlabs.org/patch/1192362/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,2/2] hostapd: add wpa_strict_rekey support
     - http://patchwork.ozlabs.org/patch/1192361/
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

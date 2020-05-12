Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E76D1D0114
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 23:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9ydncGQcNeT4DUhAqhQBxO0VFwM6bRFrRQHDumBcCBU=; b=ld8ksoXizNUaVU
	Y5vU6Fr7nefBA9seMmk+1LE87kBiTkjgu13I9wZv2osiCRCJEKGtq3NPLsGE2eT6vgoMVJnSa1YRU
	EZAjOng1E81XVY7cZ0ImMpgFADjLqlmhOBt1SnFrTTgxO+443hAYeN3VDy/1dqWbpXgW+aI8Rf6SI
	OH92hf3KuE33vj7cy48Lc6Gmb/UrEWi3p/uKJn16bz6ZtVDFho8VeWJflRnD+JRQ315sHFWPeFGft
	uQozR/8FQ2PCrL586V7T+6d2F+9hOzZ6kd5YXapzClMg9E8Wp2iECXDiyRUKwEHFDZoz41+4sKvJa
	k4r9pD96r0VSBM91ZP4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYcja-0003xR-Ne; Tue, 12 May 2020 21:46:42 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYcjR-0003tS-1O
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 21:46:34 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jYcjF-0003NQ-IV; Tue, 12 May 2020 23:46:22 +0200
Date: Tue, 12 May 2020 22:46:12 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: hostap@lists.infradead.org, Jouni Malinen <j@w1.fi>,
 Sean Parkinson <sean@wolfssl.com>
Message-ID: <20200512214612.GF1636@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_144633_080589_31982A39 
X-CRM114-Status: UNSURE (   4.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] hostap commit 6c9543fcb breaks MESH-SAE with wolfssl
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
Cc: ringelrobbe <ringelrobbe@riseup.net>, openwrt-devel@lists.openwrt.org,
 Antonio Quartulli <a@unstable.cc>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

After hours of bisecting which change between hostapd_2_8 and
hostapd_2_9 broke SAE in mesh mode with WolfSSL we got a result:

> commit 6c9543fcb7962e26c2a91c43089abe171d073b44
> Author: Jouni Malinen <jouni@codeaurora.org>
> Date:   Thu Apr 25 20:18:27 2019 +0300
> 
> Share common SAE and EAP-pwd functionality: random qr/qnr creation
> 
> Use a shared helper function to create random qr/qnr values.
> 
> Signed-off-by: Jouni Malinen <jouni@codeaurora.org>

While when building against OpenSSL, things keep working also after
the above commit, when building against WolfSSL, the node hangs in
LISTEN state for a long time and then ends up BLOCKED.
I've tried with WolfSSL 3.14.4 and WolfSSL 4.3.0-stable-1 with
identical results.
Going back to commit 2b84ca4dd
("Share common SAE and EAP-pwd functionality: suitable groups") makes
things working again also with WolfSSL.

On first sight there seems nothing wrong with that commit to me, but
apparently it does break things :(

Any ideas helping to fix this would be highly appreciated!


Best regards


Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

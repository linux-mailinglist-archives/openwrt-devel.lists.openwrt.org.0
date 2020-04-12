Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6331A6018
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Apr 2020 21:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U+Yunv6j08h0h5b/4Xx1btrKceogyEQHKtZWXc5By5Y=; b=kL05YaJ94JPHYP
	/iYlgxcVDNyxwh8CgYCF65psAL+ErcMNW4wHlDuNDtui82GEpH0l7LuBsHVbuEk3Og1MGC6o0pVTt
	gBN4W6qSO6sCfkGih4VpYosA7zJJYHFOnyT+VXSO9sXVPl0VsCyYPaLTAtkXjcqPuI0zwcx3PjhgZ
	/w3d+PvU6nzyTJLuLwnekIhWJ0aMeqgMmxewyLg4GBNhWhObE11ZiN+1Wf1DBDWa/bM8YFijnqwGR
	B1wWfrf8NBG+y3zqyFVs2RELFPbAo3EylZ66W3yK2PpGtgQNm60IBlnTHBXNICpk1ezMH/xBnf1I3
	z5gcrmwkt/nObICe1aqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNicV-0000VR-1E; Sun, 12 Apr 2020 19:50:19 +0000
Received: from out-28.smtp.github.com ([192.30.252.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNic7-0000Kl-Jb
 for lede-dev@lists.infradead.org; Sun, 12 Apr 2020 19:49:57 +0000
Date: Sun, 12 Apr 2020 12:49:51 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1586720991;
 bh=WoMT+Og5VY9MvjviNPUM/rAWYGFRYno16/yflG9G/p8=;
 h=Date:From:To:Subject:From;
 b=tA0Rts1nyaOQs9njccK7IDxIbspSd4YIqbMRfRKClYv+wvyA+XzbrMBHCEMtnmLCg
 jlOw4yoe2KSavBgL+dn9mjoOMcP76onqo7rEaZsooWJgdIGa2MRXPuGi91HWxZEXrD
 P9iFAXP7QNANz9wPdcRej7OTdeXktskDavQPxGds=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/79caae-6b8b60@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_124955_718167_F447CE37 
X-CRM114-Status: UNSURE (   2.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.30.252.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 6b8b60: This week's
 update
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

  Branch: refs/heads/master
  Home:   https://github.com/sdwalker/sdwalker.github.io
  Commit: 6b8b60f7ea824f78052f45aefa18eba10f968783
      https://github.com/sdwalker/sdwalker.github.io/commit/6b8b60f7ea824f78052f45aefa18eba10f968783
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-04-12 (Sun, 12 Apr 2020)

  Changed paths:
    M uscan/index-18.06.html
    M uscan/index-19.07.html
    M uscan/index.html

  Log Message:
  -----------
  This week's update



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

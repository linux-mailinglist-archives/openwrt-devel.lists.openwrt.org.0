Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A25FAE64EF
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 19:46:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nIXynLiYFjwAH8FdU69pnPR0StIy8AJhRGE5psu9eJU=; b=ja794wn7BBavph
	pOwFgeNrtBMIKgGsJ8+j7RnSAuQWu7XtEt5Wx4eOInNhIFAyUIk3seMKw+yw0OdjauhIzeIfUNdeb
	6YcNtHTud4Ihf+9Mogdh33zB+vZzpV4aKjlC4SkcKBhRtqnkO0xzdAutlEBXKqJWxP1sD/CRolKSL
	YY+JPS3ijI57VhfyI/o9u20F6mZjuv32EmNNcRZg7umFGZOHOE3zmM8XkPM1uD5/TkaDw2wx+EaCh
	VZ3K3z2FjorhT1BOAmSPYgrWavjRmSP2qA//n7ObH7BWr/n7Xz5Asn+Y5mo8zY1MN18fwFZ27gSsQ
	3x/xPeo1NZ28tMP2jeAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOnYW-0001Rp-Ou; Sun, 27 Oct 2019 18:46:24 +0000
Received: from out-3.smtp.github.com ([192.30.252.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOnYP-0001RP-88
 for lede-dev@lists.infradead.org; Sun, 27 Oct 2019 18:46:18 +0000
Received: from github-lowworker-19d82f6.ac4-iad.github.net
 (github-lowworker-19d82f6.ac4-iad.github.net [10.52.16.75])
 by smtp.github.com (Postfix) with ESMTP id A649E2C0AC0;
 Sun, 27 Oct 2019 11:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1572201973;
 bh=8e/CM3yqUlvLZic226MQEFPFgC6NQiO5UbHBXUQoQIo=;
 h=Date:From:To:Subject:From;
 b=GftPAkeLD+CqkjN/AvL9T+etFV5CTwZm9gR6rlC29tCN3CFdK4eYmf12QKOTMR2Jv
 l5gPTn8Gqo+e0+wr0YLwxOXJj9tMZ6064TY495pMTmmZVBZuMVevpVMSvDKHCiUH56
 UEnXrA/2ft41yt6kbGh5/11fJ+MWUmeBW6XilYX8=
Date: Sun, 27 Oct 2019 11:46:13 -0700
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/15f8ae-081922@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_114617_354167_34592F80 
X-CRM114-Status: UNSURE (   2.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.194 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 081922: This week's
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
  Commit: 08192241d007180f6e9a5638993d36b9927e9fb5
      https://github.com/sdwalker/sdwalker.github.io/commit/08192241d007180f6e9a5638993d36b9927e9fb5
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-10-27 (Sun, 27 Oct 2019)

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

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DC49C5A9
	for <lists+openwrt-devel@lfdr.de>; Sun, 25 Aug 2019 20:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NHVE0k6Z1OJoQu9gcd/K0y0D3C2wrX04v0eZNDon9xc=; b=tkP1MmD4Yr/Q95
	GL/89987m8d1z50jMHUfHgNYh5IK9b7MRXHenkwRw9oQtmor5yZcgMBhH9/40bIbbIOcX03ToKRBO
	dqf0eShgZXbuPToSjQGZ80Qx6yBmU6dyQ+BaFvSsKqEVrYxdwvO6jtM9veW8GGv/4iWbZVWTUfYA/
	6fgL7NEV7uP/yBcFUfZ1I3B0MjWwaocihX7UJM4Tblse2axPNEr57GE2NDns/t3RWjP+fBY9A5i0X
	Q+mA1JAHhdXNcr22w1j786Ms/8ht+QTl5R/CmycgZq8TkdvCViuIkoI2fVP57fGLMC3jOLTbSvWkP
	2p+BPSiTY09Sjqe8dPJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1xdV-0001cN-2i; Sun, 25 Aug 2019 18:53:09 +0000
Received: from out-19.smtp.github.com ([192.30.252.202])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1xdE-0001Lr-54
 for lede-dev@lists.infradead.org; Sun, 25 Aug 2019 18:52:54 +0000
Date: Sun, 25 Aug 2019 11:52:49 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1566759169;
 bh=hRZqwcEqwr6cnDP63UZW/zH0yctBQ9ZtNuD5dR2+Eig=;
 h=Date:From:To:Subject:From;
 b=1+tW7h/QiAbb7kEMAqhOGZco/Ahr2usiuvBEgZV/VyNpKoI9smaPtZXICmCjjefmi
 ZZy5myWlUp+oNygkSvQ/4p77cDrOZWrcNDX9Bt2gZGBNJS3sacCd/jL/vi98fVIUnn
 IonptnT3oqbEqwPfDwhJAneruV7bwCfs6cFIkcUM=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/aa423b-08cab0@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_115252_263989_879B5855 
X-CRM114-Status: UNSURE (   1.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.202 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 08cab0: This week's
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
  Commit: 08cab0a76c31d9d619bc6ef55ef77ffa113578ee
      https://github.com/sdwalker/sdwalker.github.io/commit/08cab0a76c31d9d619bc6ef55ef77ffa113578ee
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-08-25 (Sun, 25 Aug 2019)

  Changed paths:
    M uscan/index-18.06.html
    M uscan/index.html

  Log Message:
  -----------
  This week's update



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

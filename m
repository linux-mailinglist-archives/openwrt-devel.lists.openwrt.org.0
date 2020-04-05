Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF1019EDE4
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Apr 2020 22:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ED94DzqaM7RF4nO81L5JkVeVif1AbQ4SRm58xmPr5Z0=; b=EYciGSwIU5L+uU
	0sajBInIRxw3UEtJyTrSqcnGu49tcQQDQFwGMqcqp1t3Jh87vmtpz+Hxq46UPK0hC8Q4ZgW1p649G
	p8NzAqJBKonaWTAxlWRTrLAh4t4vClwiKYN7E68VKTms2KTJ1klvunE4N7tqYRggLxObbKTt8xt9w
	qggEoBkkkhyUxAjNrS8Vorj8s+MYBflK/pLHd3whprcu3LN1L1lp/vdZHydHJXMMz3SgiiNBiYtKe
	7Ec/GEzNAb6G8+FHrnFQB+wv0XRnl2FZHB3RXvt9lDprjcIbO2YzYd9wzoJ4QiCGv+MPzu6gv0Glg
	wZLTV9EJEfspmiVKkx/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLBgj-0006wF-Qj; Sun, 05 Apr 2020 20:16:13 +0000
Received: from out-28.smtp.github.com ([192.30.252.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLBgc-0006v2-Sr
 for lede-dev@lists.infradead.org; Sun, 05 Apr 2020 20:16:09 +0000
Date: Sun, 05 Apr 2020 13:16:05 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1586117765;
 bh=QtA1VV2hBPRDfW1XIK1sb5F20h8ByEFkd3b2Y2xR42c=;
 h=Date:From:To:Subject:From;
 b=w6ETZ9WmXWBHnAk1ePZ0SQ72Yi+NLFWgqVuFSbgkhYlAaqup2hSssW8WLZaDcbL26
 HgOe/oVRvL/3w3FwQfJsxOLutW3boRrmTLFptFLJMtdF8GxsLgg6zg616uDU09iO3S
 kbSqoXS4Dnc4uhN0B3pweqJiaHuPpUOA5k9rFv64=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/2d2288-79caae@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_131607_017766_43E8F67E 
X-CRM114-Status: UNSURE (   2.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.30.252.211 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 79caae: This week's
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
  Commit: 79caae75421a27295894ff666b778e1fc81c8594
      https://github.com/sdwalker/sdwalker.github.io/commit/79caae75421a27295894ff666b778e1fc81c8594
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-04-05 (Sun, 05 Apr 2020)

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

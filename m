Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6341578074
	for <lists+openwrt-devel@lfdr.de>; Sun, 28 Jul 2019 18:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KYkEMrRNhcPaR1yiWpw5Z7qvHROVuHVuxqqIYnJCcxQ=; b=K/D2E3J1zs/iT+
	yxcd1MpkP8DRqvyyL/8AyOT4VhXVRLvxma4Ww7D+HjZH+j3zuOK/VklHdbY4A2AxtormePbe+oFrt
	TITYvKIcOQcmkr8ua2A67GzIcw5Xuh5s8fvDfNj5xpziGPgaqv2Qw9RThR/dxFGh8g/5WZBhs6sca
	2UNmnav3Nrao/ncWZHu9TTDAbvOm5MLZLJxL3jk1stOTVCeYkDqA+WbKHJhZlvzGMR62YGziOnqlO
	U1Y8dRG6xKv5OSBAUKgJ8kj/fH1QIuOgq0MEXRgr9KzMA3hsJEbNZXyXdAyxV4sTEVP9R1m+LYfh1
	wSjuXuIN/0yiXP+oU14Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrmDB-0003Nm-57; Sun, 28 Jul 2019 16:39:53 +0000
Received: from out-7.smtp.github.com ([192.30.252.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrmCt-0003NL-77
 for lede-dev@lists.infradead.org; Sun, 28 Jul 2019 16:39:37 +0000
Date: Sun, 28 Jul 2019 09:39:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1564331967;
 bh=+3pIPYGsMnb2tyu74F3XpbS5UhZCiJ2ErG47oIcZytc=;
 h=Date:From:To:Subject:From;
 b=emqJeg30ZXgZiHPg1+Wg0fRn2bMxMN/3k7PhMSAS2s1d72/t689VZsHev3ohZYI+2
 Nz5/xCAHc/VPSACS6uI13cDCFw10wDgbJ4CvjLDzdfDcelwtpQeVYqDHk9Xg+W6X22
 KKti0w1ALAKXw2ZlBxA9nNorPve9NSNuKmV0gek0=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/3d13a8-7d9b0b@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_093935_325697_38D33608 
X-CRM114-Status: UNSURE (   1.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.198 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 7d9b0b: This week's
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
  Commit: 7d9b0b87b23f0be5e8b96e9f00aa6cb4cb69368b
      https://github.com/sdwalker/sdwalker.github.io/commit/7d9b0b87b23f0be5e8b96e9f00aa6cb4cb69368b
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-07-28 (Sun, 28 Jul 2019)

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

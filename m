Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD8C2ABEC
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 21:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/h6iplcMA+SIyZe6tunjollavUbDAWxIQdpr0b6T1Po=; b=I03MobYsQn3XgQ
	JZvSmkDPIrqLfOLmhYZuFnD0G0ol59Ub4VCufj8kBJQi8TE9pgfe7UOokTFOUWUe2XVoLheCKLrV+
	poRYzCNBV0WDC1/7ErP8QoQgAYDlg2LBV1tPvlZ7BMq4emZqNfK42qrTG51/AD1Fae7Aper8yk6LA
	flwoSIVksunJgfsMbUX4kKuUYIA2S89RAH3sPj2dN8LBQ8tCbH/HtxGH6VEK9K7MDwkJar0qdJamA
	wRjA25Zi7J8CStMiXMHf+UWNHKfqNseh+VKDK0sipGLvyV6h0U6xz2MapQnOwEhi79RhsYoC8zMKm
	+DnKqMZXxMf8vwKGWS7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUys8-00070H-Iv; Sun, 26 May 2019 19:31:56 +0000
Received: from out-1.smtp.github.com ([192.30.252.192])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUys0-0006za-E7
 for lede-dev@lists.infradead.org; Sun, 26 May 2019 19:31:49 +0000
Date: Sun, 26 May 2019 12:31:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1558899106;
 bh=ugb5yj1kaacWVih/p+9IDSnuIVAvDpTA8YITgZUC320=;
 h=Date:From:To:Subject:From;
 b=UN8M0apnrMzp/jCYsVhMakKJDO6/YpfQhnh0KRBPOGic1gzRoGXvTJwPgHwHQrN5N
 22ZfeXJDExJBXoOoh3Eguu2OvbBAd6Dn+aXxHcpI0sL/hu7+AXiANvwO6AdlD2IiLK
 QbJd9XzatbzSooeIyqLns37jtKgzuJ+PrOU8MRi0=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/905c0b-472bd4@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_123148_541140_C3B79544 
X-CRM114-Status: UNSURE (   2.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.192 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 472bd4: This week's
 update
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
  Commit: 472bd4d62f450cf7a17584fd6213c42b38dfd6d3
      https://github.com/sdwalker/sdwalker.github.io/commit/472bd4d62f450cf7a17584fd6213c42b38dfd6d3
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-05-26 (Sun, 26 May 2019)

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

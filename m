Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B471614121
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 18:35:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N7GvNPRi0B2OIAcigVwJ/o8ENKjoyEjBOEq8bTXI/L8=; b=RuLEMB8/x+dERL
	trohSZWoPkRrbifUW0ANMU/uNRbS/RchNUvdo6uAs2wS20UaECFyXmOfX7gG+o2q2edM3jxaWcXio
	a+qUCy38n/ocRQhext4IzGlu88J18QkYQnHlN54MGAnzaxSZZGyGyzsjrw3gLVrcB+7irWA+ZBI/a
	ru0IEiTI9mfMeNSfCdYG+44VRt2W1L9ytqiemD7ysF7C9Rk8d7B3MvVMqusr3p/SS6EZv3GOB5c8s
	WWmKV+1BiPKFz2vKngN/9b+FBck+DEWNqRYMs8tXn/P8KTYIGZaHFH4Z8re1Mt93JmSrOnr/LkElK
	I8/NhGW4vFHJdLlgKZJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNK73-0007or-TP; Sun, 05 May 2019 16:35:41 +0000
Received: from out-12.smtp.github.com ([192.30.254.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNK6v-0007oa-M5
 for lede-dev@lists.infradead.org; Sun, 05 May 2019 16:35:35 +0000
Date: Sun, 05 May 2019 09:35:32 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1557074132;
 bh=0cmY4nJokRWMPn5dyZ5v0JJr+9pdx+rCKEaIzWb1hb8=;
 h=Date:From:To:Subject:From;
 b=Xsk00eEQ3dLENIYfkQ57dsqQyJkHEEJYsc3m18ruKM3B0FGgc2Snrlf57kIivW1F0
 uL69qVr/iRw325WekYHYLUAuBclvlEOUYxSem2sGvun+0zeCB3Ij+r+dPUCmanrgX3
 Mf5oULzXHy8m07XKOgfI8y9YtOE0dsVGqMNs0ekY=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/56e97d-0bc963@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_093533_745922_7530EE01 
X-CRM114-Status: UNSURE (   2.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.254.195 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 0bc963: This week's
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
  Commit: 0bc96348a78eda66f9a81e4b1f65f955eda8f9a7
      https://github.com/sdwalker/sdwalker.github.io/commit/0bc96348a78eda66f9a81e4b1f65f955eda8f9a7
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-05-05 (Sun, 05 May 2019)

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

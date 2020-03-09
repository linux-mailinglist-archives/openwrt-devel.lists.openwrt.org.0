Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDF817D7AC
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Mar 2020 02:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q7Sqbf42w035Cp/UG3+46u2O34BjMoobxoKdYIeP6xM=; b=syak+Mm3SZlbCZ
	e3dgMV+1ArJVr1viRp8ysIZy8jb75MZHuyTJgP3XxEVaaQBRBfAlgBNynaf5iv9LBI9ch98D1P97l
	XU4cQO85r4ymByKUUO3ndcdM1YbtO1rX5t7cOqpKVrrJTT3WzZh90oNuvBvRhVJ06zu1DbvZ/V0xw
	nObnxvBsBjSjmg9xtHOtjFi6jcPfccxaFXfeo894QmqWwRdEtAcRtgd6c0IgC/97mJqEKmvQePJw3
	hwxC+uYtvjbc+YTbrrLqlNwdUyc3VKeVHLtFdJc/03ZGg+ZQfjBVQtllcKPmaxUqFqhACUA2MIbjn
	FIk6ptaM8XJ6ZejKXcEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB701-0007ES-My; Mon, 09 Mar 2020 01:14:29 +0000
Received: from out-19.smtp.github.com ([192.30.252.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB6zs-0007DM-GQ
 for lede-dev@lists.infradead.org; Mon, 09 Mar 2020 01:14:22 +0000
Received: from github-lowworker-ca5950c.va3-iad.github.net
 (github-lowworker-ca5950c.va3-iad.github.net [10.48.17.57])
 by smtp.github.com (Postfix) with ESMTP id 38597520603;
 Sun,  8 Mar 2020 18:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1583716458;
 bh=cNgdwfKkUsM8OhjAFkvlgBVa8NsaUGxSjSyJxopUM2U=;
 h=Date:From:To:Subject:From;
 b=pTjVpKWSNkq0WxxLZnwVhi/YTEO7nUOC6EUdex56SeA4xxz3xU3nvyQqfaMa0OqwF
 LP+APNbHDpLQVS0TnBYVDVJGgUXqlX1H4IFox3QuMVISPeEow3+i/jbKO+eNTE2dla
 voVKLQtje7uK8gAt3RwS9GV7WCuzVdPWMnwkFyUo=
Date: Sun, 08 Mar 2020 18:14:18 -0700
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/d19be5-629076@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_181420_611134_FE039D0A 
X-CRM114-Status: UNSURE (   2.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.202 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 629076: This week's
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
  Commit: 6290764d2d45f19ea041863c8744ee3641d08476
      https://github.com/sdwalker/sdwalker.github.io/commit/6290764d2d45f19ea041863c8744ee3641d08476
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-03-08 (Sun, 08 Mar 2020)

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

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A59E047641
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 19:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O880GQ9FnFTSsVCXsjzFiHpO+ZxyaANu0El1CHVMOIs=; b=tpm4P60s8IdNjP
	2u4ERPxdJgdI1WSBIIZOeUJANYgEfThuRoHT+mxPdhEhBkvS5NJiTySiZM1tm9yhTjJzLweQrXwRR
	lmhVHss+GlNrdqnKEBvRjNaEnhfaLRQ7Mp62pm0PBQ254CoL1oQCltTIClctCJMV5osIY8ZIsnkDs
	MdI4UXvJYwdaHR/LvoGlBqse1PTPiQxNk4war3H4luof5aP1fySp3ahNRuTasqwugOSalDZEZCvql
	k+z3DWCp0kQFuqvkFd8l4h0Q2dBver2LzQ97+/VcgbiXbnAHeF7WkkhfkVEL9HWLTaumFY1FKEFXJ
	5WqieEcg71vkAHh80QMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcZN2-00028b-28; Sun, 16 Jun 2019 17:55:12 +0000
Received: from out-7.smtp.github.com ([192.30.252.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcZMn-00028F-DZ
 for lede-dev@lists.infradead.org; Sun, 16 Jun 2019 17:54:58 +0000
Date: Sun, 16 Jun 2019 10:54:54 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1560707694;
 bh=3z7JhPiz+TYrTRkWI8xGcWNb9mb3mTAYAWA/0m+NDC4=;
 h=Date:From:To:Subject:From;
 b=p7+u33esq9mQqNc8gCSaUv46uV3ed0RUekrUSxzmWbPZ4BRxP2ZM0P9cEWtws37eE
 Ad2l3VxxWdkMLiJnfqOw5077PeVqSwEt06LDB+0TMcfAtf77E7IIMAfVh09rd7lfyH
 eZBlZ47J789JwpBDKJkz4UspCrt0Qvv+fYiXk8Ow=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/8b0b62-413a1f@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_105457_524494_64BAA818 
X-CRM114-Status: UNSURE (   1.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.198 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 413a1f: This week's
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
  Commit: 413a1fe72fb176c718b887612db8174684d1038a
      https://github.com/sdwalker/sdwalker.github.io/commit/413a1fe72fb176c718b887612db8174684d1038a
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-06-16 (Sun, 16 Jun 2019)

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

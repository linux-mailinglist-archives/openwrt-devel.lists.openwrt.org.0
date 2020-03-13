Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE83D1840AD
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 06:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cXWzAEIleC79VwzavuWU2WEcDVZSCrrDF5yD2iEKfvk=; b=EoDoa1nESeMmAe
	BRJt71qHWoY81Z7CVVy/6iiXZM8b/ub+vPEcd8VVa/BS5q11pAuFReOrfMy5xAF1Sn6lBR4bH24wY
	MTrC2+xMgdj77gCxCYjmISK4W7wvEyYD5R55ukuZcDMTBedV3vQJRv2/zKWbkfHzjcNZJomY/CL4z
	Z6T6F4F7iNdmYRBdlqY6SvllaHtP4/fDYqgWMW9f9CeZXQCJQptaUIULjHLQrYAtWn0Uz8JexiXVH
	nXMcITW+gdclrEBrYioRmUbwxwxnj9omTL+WbYm3Y6r5Hv5VsQwnZ5kcXoQIQ9RFFFqo1LHY9LZ2a
	26hl5kXDS+eyj08J1LaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCdEy-0005hK-GH; Fri, 13 Mar 2020 05:52:12 +0000
Received: from atl4mhob19.registeredsite.com ([209.17.115.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCdEp-0005gZ-9N
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 05:52:04 +0000
Received: from mailpod.hostingplatform.com
 (atl4qobmail01pod5.registeredsite.com [10.30.71.94])
 by atl4mhob19.registeredsite.com (8.14.4/8.14.4) with ESMTP id 02D5pr0H008491
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Mar 2020 01:51:53 -0400
Received: (qmail 178638 invoked by uid 0); 13 Mar 2020 05:51:53 -0000
X-TCPREMOTEIP: 65.41.18.216
X-Authenticated-UID: sbrown@opensat.com
Received: from unknown (HELO 155-15-85-208.altiusbb.net)
 (sbrown@opensat.com@65.41.18.216)
 by 0 with ESMTPA; 13 Mar 2020 05:51:53 -0000
Received: from localhost (localhost [127.0.0.1])
 by 155-15-85-208.altiusbb.net (Postfix) with ESMTP id 398D715403C4;
 Fri, 13 Mar 2020 01:51:52 -0400 (EDT)
X-Virus-Scanned: Debian amavisd-new at ewol.com
X-Spam-Flag: NO
X-Spam-Score: -2.9
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 tagged_above=-999 required=6.31
 tests=[ALL_TRUSTED=-1, BAYES_00=-1.9] autolearn=ham autolearn_force=no
Received: from 155-15-85-208.altiusbb.net ([127.0.0.1])
 by localhost (fl-server.ewol.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 53zpt_HHqgfh; Fri, 13 Mar 2020 01:51:50 -0400 (EDT)
Received: from w7.lan (w7.lan [192.168.1.9])
 by 155-15-85-208.altiusbb.net (Postfix) with ESMTP id 61B6615401BE;
 Fri, 13 Mar 2020 01:51:50 -0400 (EDT)
Message-ID: <4fbf6123418614ae00a7e409b8d044a6dc676866.camel@ewol.com>
From: Steve Brown <sbrown@ewol.com>
To: David Bauer <mail@david-bauer.net>, openwrt-devel@lists.openwrt.org
Date: Fri, 13 Mar 2020 01:51:50 -0400
In-Reply-To: <20200313000739.62880-1-mail@david-bauer.net>
References: <20200313000739.62880-1-mail@david-bauer.net>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_225203_452798_04F17A6C 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.17.115.112 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: use downstream ag71xx for Kernel
 5.4
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi David,

On Fri, 2020-03-13 at 01:07 +0100, David Bauer wrote:
> The ag71xx driver from Linux 5.4 currently has various shortcomings
> when used with OpenWrt compared to our downstream version.
> 
> For example, the upstream driver does not support modifying the
> ethernet
> clock and configuring RGMII delays on the MAC side.
> 
> While we should certainly switch to the upstream driver, the amount
> of
> necessary patches would make it cumbersome to work with. It's also
> highly likely we won't be able to finish patching the upstream driver
> in
> time for a Linux 5.4 release.
> 
> Tested on Siemens WS-AP3610.
> 
> CC: Hauke Mehrtens <hauke@hauke-m.de>
> Signed-off-by: David Bauer <mail@david-bauer.net>

This patch also resolved the ethernet issue with my TP-Link a7-v5 that
I reported earlier.

Thanks,

Steve



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D8F10A66D
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 Nov 2019 23:15:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DUpzah3VjlO5PR5ahvc2JAjthCfnnC+R1XCtwOR/AI=; b=e84btlcdI7Wq58
	CyvhDhHu/tsod84SG1uxOoFnZSgBtJHNRWJbV3SOdYGWK2IifjM+7PsEkOqB5gKhr4R+SBg3XGsxz
	YaNeSX5Ih3l6QROaYQdGLrrmqYOp+d5KWokAl2sa8MMrNxqHHrIzhjH4cQwx1M92I8OUMdUSVK9vP
	MyMv9YZhQ+kwZSZEayqKXIeFblUx9mgqCgBWvS9tSqHeFCcyxhRJHQ6osdPjFWA2Is6q0GADj4jXu
	h9c2PpaCHKQhr6V9qaacX9SqYjtZJLZoQTCdoGv9nhVgjG99g5lOtoMOwnsYYhCNuTHn2lXRsgF5Z
	uYKdcCcrcHHC+30DR6Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZj7M-00045I-HW; Tue, 26 Nov 2019 22:15:32 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZj7G-00044C-3X
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 22:15:27 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iZj7A-00072i-0P; Tue, 26 Nov 2019 23:15:20 +0100
Date: Tue, 26 Nov 2019 23:15:08 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: blu.italia@mail.ru
Message-ID: <20191126221508.GA6011@makrotopia.org>
References: <44fc758a-3302-2083-f9b9-106ca500fa1a@mail.ru>
 <mailman.14105.1574804672.2486.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.14105.1574804672.2486.openwrt-devel@lists.openwrt.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_141526_150927_A7EA1E38 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] LEDE > OpenWrt > TP-Link TL-WDR4900 1.0
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Falko,

On Tue, Nov 26, 2019 at 10:44:12PM +0100, blu.italia--- via openwrt-devel wrote:
> The sender domain has a DMARC Reject/Quarantine policy which disallows
> sending mailing list messages using the original "From" header.
> 
> To mitigate this problem, the original message has been wrapped
> automatically by the mailing list software.

> Date: Tue, 26 Nov 2019 22:44:12 +0100
> From: blu.italia@mail.ru
> To: openwrt-devel@lists.openwrt.org, contact@openwrt.org
> Subject: LEDE > OpenWrt > TP-Link TL-WDR4900 1.0
> User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0)
>  Gecko/20100101 Thunderbird/71.0
> 
> Hello Team!
> 
> Since the last update from 18.06 to 19.07.0-rc1 my 5 GHz radio / wireless
> controller doesn't work. Please can you help me (log in the attachment)?

Not having spaces as part of the ifname might help. I'm quite surprised
that worked with 18.06... Probably we should do some more sanity-
checking when entering ifnames via LuCI...

Can you share your /etc/config/wireless and /etc/config/network as well?
(make sure to remove passwords before posting!)


Cheers


Daniel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

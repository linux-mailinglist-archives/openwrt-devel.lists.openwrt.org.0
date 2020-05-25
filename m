Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F021E0C8D
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 13:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ExwguFB+JwBd5uliPpebzzc6NCRLHOlzwlqX2XPcEJs=; b=OSsHbZqO0s1Udld8Z5/nYWwfw
	ZQCSuehJXeHnsu2rfy0x8BG65qIGCeqbqJFQqk718+l5ctKNzTRhac7xhy+85HU2bw2jJaVjdTP7e
	Lm1E7ZAL+LHiZ0mumXQaiY7OilEY5Wz33RHei8Ilcd4nd+0y8azAoie5ZsA2h1e3/WXYPnyJmysIA
	wBF6mtWDFZStdVKl93nAKVuyOEluFp1+9vfF0Y8QlZizsMUTc/9OIO+BDl+VGpdI2C2y0rXZIA2JN
	awTl7JoEqg+abeCUwFd2+ubUxVAzzNrEgfMOjCw453x8bA+A0Tf98wFb8XWRMrkd+yJ/tH9eMTh4U
	iuKIV+37A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdB11-0005NS-4E; Mon, 25 May 2020 11:11:31 +0000
Received: from tunnel231050-pt.tunnel.tserv1.bud1.ipv6.he.net
 ([2001:470:1f1a:93::2] helo=trabant.uid0.hu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdB0q-0005MR-Qh
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 11:11:25 +0000
Received: from catv-178-48-146-20.catv.broadband.hu ([178.48.146.20]:56175
 helo=[10.1.1.1])
 by trabant.uid0.hu with esmtpsa (Exim 4.89 #1 (Debian))
 id 1jdB0k-0008Lm-Kv
 from <wigyori@uid0.hu>; Mon, 25 May 2020 13:11:17 +0200
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <00e701d63281$400bbf50$c0233df0$@adrianschmutzler.de>
From: Zoltan HERPAI <wigyori@uid0.hu>
Message-ID: <9e1169be-896c-28e7-af00-b5991de3ed12@uid0.hu>
Date: Mon, 25 May 2020 13:11:12 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <00e701d63281$400bbf50$c0233df0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_041121_011329_7FD7EBB4 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Targets without 5.4 support yet
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On 5/25/2020 12:42, mail@adrianschmutzler.de wrote:
> Hi all,
>
> while there has been a lot of progress during the last months, there are still a few target that have not been updated to 5.4 (at least as testing kernel) yet:
>
> 4.19:
> cns3xxx
>
> 4.14:
> ar71xx (to be removed)
> arc770 (RFT patch: https://patchwork.ozlabs.org/project/openwrt/patch/20200413103352.7429-1-freifunk@adrianschmutzler.de/)
> at91
> ath25 (patchset crashing at Ethernet init: https://patchwork.ozlabs.org/project/openwrt/list/?series=169991)
> pistachio
> rb532
> samsung
> uml
>
> This is meant as an invitation for those caring about/using these targets to consider updating them; in best case they should receive some testing before a 5.4 stable branch is made (whenever that might be).
>
> At least for the 4.14 targets, I expect them to be archived if there is no update until after the next release (or at the latest after the one following it).
>
I'm working on bringing pistachio up to 5.4, apart from the spi-nand 
(which is quite a core item obviously, so I thought about reaching out 
to Boris for some guidance) it's looking good so far. If anyone's 
interested in helping, I'll share what I have. Also, if there is no one 
else interested in cns3xxx, I'm happy to take a look at that, I've got 
two devboards in the shed for that.

Regards,
Zoltan H

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E46421E81E8
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 17:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULYnOfO30tpPQkiul8+5rwxqUUy3bCYfbWXjfTn8598=; b=QOka8ZAopvTN7n
	RvIJ0rJiu5gUaK2APE9UDhMPHOJ+chpKTdL6XU46X2PRB9QWiz9KRDByFexqOmvGsOmSDa3tTjt2t
	myO5G6DjrzbWYhzC4W/0+3urhwNVqXppmV0w6wciPWXgearTcl6N33xMcNXzsqrfB4MpQjLfEmxI+
	CtXeaS593Jd8rSvrdcUbGe+lTq9uL2hO4iYZQi4Cp2N3aEWZM6p1DEJanu2hVXgS1m2Zva0tMivpB
	71fWYZmxR+dFU9qKleo/dia+GsrUWO5tfwx7mnftcVG2EAm28kqqxGRb1JvByEcn5WO+xAGT/ns33
	SaYIrldlCVQMP9omRplQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeh1q-0000KS-Sx; Fri, 29 May 2020 15:34:38 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeh1V-00009O-DR
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 15:34:19 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590766457; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=4h6mUhCfTn/PPwY0CqyuZa1NJ92KFZY1OPYa8ryUDI0=;
 b=Ff5DFVKucs6/9xTKypgTrKdwuPHRMkfmS4/UQu/M4qoNNf8JnABclhJIzou8hZmMxKtbue63
 6SLfnBbyAObDeKHjXcNeQESgkAzgYQZoXeVcXgJxmWr0lMzEwCL2h2w6aahmQndT67hmXKvX
 H0JgAQXiZMRWv05Nq1ySCu1dc+I=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI4NWIzMiIsICJvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-east-1.postgun.com with SMTP id
 5ed12b7744a25e0052d5f7c9 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 29 May 2020 15:34:15
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7D26CC43391; Fri, 29 May 2020 15:34:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5B55AC433CB;
 Fri, 29 May 2020 15:34:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5B55AC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Sven Eckelmann <sven@narfation.org>
References: <1523027875-5143-1-git-send-email-kvalo@codeaurora.org>
 <b23e65cf-4be7-72db-7955-32eae196953e@dd-wrt.com>
 <3608947.bSrYYtX6KI@bentobox> <3445075.COMLMNsY4U@bentobox>
Date: Fri, 29 May 2020 18:34:07 +0300
In-Reply-To: <3445075.COMLMNsY4U@bentobox> (Sven Eckelmann's message of "Mon, 
 25 May 2020 18:04:49 +0200")
Message-ID: <87k10usqkw.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_083417_529257_58B4D269 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH v13] ath10k: add LED and GPIO
 controlling support for various chipsets
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Sebastian Gottschall <s.gottschall@dd-wrt.com>,
 John Crispin <john@phrozen.org>,
 Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 openwrt-devel@lists.openwrt.org, Ansuel Smith <ansuelsmth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Sven Eckelmann <sven@narfation.org> writes:

> On Monday, 25 May 2020 11:22:13 CEST Sven Eckelmann wrote:
> [...]
>> And it still can with this OpenWrt version. But it doesn't seem to happen with 
>> the most recent OpenWrt reboot-13353-gb1604b744b. But there are nearly 4000 
>> commits inbetween. So no idea what changed (just a timing thing or an actual 
>> fix - no idea).
>
> Seems like there is a fix which solves some lost interrupt problems for 
> IPQ40xx. Without this change, I see the reported problem. And with the patch, 
> it is gone. Or in commits:
>
> * creates timeout problems: 46b949a067e5 ("ipq40xx: enlarge PCIe BAR size")
> * works fine: 18e942b6c4e5 ("ipq40xx: fix pcie msi IRQ trigger level")
>
> If you look in the git logs [1], you can see that the working commit is a 
> child of the broken one. So at least from my point of view, my initial report 
> is no blocker anymore for Sebastian's patch (or Kalle's version of it).

Great. If the patch is good to take can someone rebase the latest
version and resubmit, please?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

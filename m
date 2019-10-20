Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5F0DDE36
	for <lists+openwrt-devel@lfdr.de>; Sun, 20 Oct 2019 13:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5W+5xX8Rj01qEhc5nF059ldt6gNtQKi4mjP8m457c5I=; b=RB6tamzgfCzghjgpE41rzjwCK
	CU+ZQUWElxdJLNOqcSNKb37BMgKHlVaraVpOwrKub01LHdLyjIREG1tKv3ph5H1ADy7jHptmuWfYU
	yuVKqBjFTjHojvzyq0c7l/d6NEjPutPnRFHeLukmGyuaDS5Cr/6lFkLRo5xaVQb8IHBgZCe7DtR/p
	mAQiVPw8kzDcUBQZRXct3jPdiAciWWfHw6it8kysOSSPmXn86dDXscMRHswRYWsBQ0xJGcecMsoOW
	ZZVmuEdZDTmSyY5XVF3Q+Q7yQ4lU+gtn8hSbnipgm5YtkcCW7U4ZPeamTlr3N264QsmSpit7S7qqk
	qo4AuCsMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM9EP-0001rl-7y; Sun, 20 Oct 2019 11:18:41 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM9EE-0001rM-Mw
 for openwrt-devel@lists.openwrt.org; Sun, 20 Oct 2019 11:18:32 +0000
Received: from p5dcfb3ca.dip0.t-ipconnect.de ([93.207.179.202]
 helo=[10.255.231.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iM9EA-0006jx-Hv; Sun, 20 Oct 2019 13:18:26 +0200
To: Christian Lamparter <chunkeey@gmail.com>, openwrt-devel@lists.openwrt.org
References: <1569923958-99413-1-git-send-email-mutsugi@allied-telesis.co.jp>
 <89c14047-2cb8-79b0-da9e-690ca71abc1c@phrozen.org>
 <2298960.buRTO3r5SO@debian64>
From: John Crispin <john@phrozen.org>
Message-ID: <be030394-83e6-e8be-4642-ac87831c2324@phrozen.org>
Date: Sun, 20 Oct 2019 13:18:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <2298960.buRTO3r5SO@debian64>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_041830_907747_EFF1E761 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: essedma: Fix dead lock
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

On 20/10/2019 13:07, Christian Lamparter wrote:
> On Sunday, October 20, 2019 11:39:41 AM CEST John Crispin wrote:
>> On 01/10/2019 11:59, Masafumi UTSUGI wrote:
>>> edma_read_append_stats() is called from kernel timer
>>> (Bottom half context) but it used spin_lock() to take a lock.
>>> Using ethtool command rarely causes deadlock because of this.
>>> Change lock function to spin_lock_bh() to avoid this.
>>>
>>
>> Hi,
>> patch looks good, could you please rebase it for v4.19 and merge the fix
>> directly into the essedma patch ?
> 
> Oh, I've already done that yesterday?
> 
> https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=3e8fc768f78c6b7f7025dd15264d113da9ad81b2
> 
> 
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 

Ok, the patchwork ticket was still open :-)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

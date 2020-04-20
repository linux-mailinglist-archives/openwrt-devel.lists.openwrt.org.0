Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 444D11B1660
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 21:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2ajwh4oKu3p+YWuOHklnN/v/hqbbNomY4KKrvyNrefM=; b=pik6gaeQIfMoS0LqUJNOefjES
	EJOBu7/LeQSWUcbCa9+CwGmCTUbqDEFKc05xRiMH1lWAryUtg13ua//ZWE7HTlWwoivesJfjaAple
	n7Tp6jI4q8/Ijkc5waXLijjVhoXAbMr9ZN7LXgzDeMGjFcvHiBiuveQOaaOPg6mCREoWJLMB8RwEi
	aNnJ6MszmH9xEHC1FYLaOcdRtR2pOg9FiTrsHAVAKrsozYo0B3YlFfDT9motre4pscDc9Q/hub7kp
	7GMrLB7+SfG//i2P8nbR8ToohtmOxclSO/XV7zV0/Hw4HUJggtj9HubTLDSOzt0XAJOeeB5MVuAiW
	YfaK8ju2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQcYt-00049h-Fj; Mon, 20 Apr 2020 19:58:35 +0000
Received: from mail.navigue.com ([74.117.40.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQcYi-00048T-LS
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 19:58:26 +0000
Received: from [192.168.34.234] (squal.net [74.117.40.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.navigue.com (Postfix) with ESMTPSA id DB4BA1400C3;
 Mon, 20 Apr 2020 15:59:19 -0400 (EDT)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
From: Jonathan Thibault <jonathan@navigue.com>
Message-ID: <d8f20979-daef-99f2-677c-6a1bf229177f@navigue.com>
Date: Mon, 20 Apr 2020 15:58:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
Content-Language: en-CA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_125824_882540_23CD2FB4 
X-CRM114-Status: GOOD (  22.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.117.40.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Port labels for DSA targets/devices
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

On 2020-04-20 3:42 p.m., mail@adrianschmutzler.de wrote:
> Hi all,
> 
> recently, ramips/mt7621 has switched to DSA and mvebu [1] and kirkwood [2] are waiting for it.
> 
> On ramips, port names have mostly been chosen to be lanX (lan1, lan2, ...) and wan.
> 
> On other targets using DT files from kernel, there doesn't seem to be a particular rule. Sometimes the same pattern is used, sometimes "wan" is replaced by "internet" and for kirkwood, we had two cases where ethernetX was used for lan ports.
> 
> Being a pedantic person, this bothers me. Despite, having the conversion on several targets now seems to be a good chance to agree on a guideline for this _before_ it is done differently everywhere across OpenWrt.
> 
> Currently, I see the following options:
> 
> 1. Stick to what the kernel does:
> Where the kernel defines names, just use them. Add them to 02_network and have them exposed to the user.
> For "our" targets, we will still have to decide. For other targets, just do what similar devices have done (though kernel might be inconsistent there even for related devices).
> Adjusting them in kernel seems no option, as we've learned from Linksys nicknames discussion that labels might be considered ABI.
> This will be the cheapest way.
> 
> 2. Use a common scheme
> We may define a common scheme, e.g. the lanX and wan names as used on ramips/mt7621 after bump to 5.4.
> That will require to change corresponding DTS files with other names from kernel and keep those patches forever. They will be trivial to make and very easy to rebase/refresh, but we have to keep them.
> On the plus side: User experience (for most users) will be improved. While there still is inconsistency between swconfig and DSA, at least DSA won't have subspecies then. So, the average user could expect a lan port to be called lan1, lan2, ... etc. instead of having to look it up. Our user-space config files (board.d) would be easier/more unified.
> Of course, some advanced users switching between distros (where this is possible) would have changing interface names, but a lot else will change for them as well.
> 
> 3. Care for vendor names
> In particular cases, e.g. for EdgeRouter X [3], we are currently using labels following the vendor scheme (eth0 to eth4 instead of lan0 to lan4).
> This could represent an additional option, both in case of using scheme 2 or for our own targets if we stick to scheme 1.
> This would break the "unified user experience" as in scheme 2, but would fulfill "what the user expects from vendor", like we do it for MAC address, LED behavior etc.
> 
> Personally, I have a preference for 2 (and am unsure about 3), as to me the user experience is the most valuable asset in this context and I do not want to have to stick to some name the kernel have agreed on in a single case 10 years ago (exaggerating here, no offense ...).

While I don't have any strong opinion, I believe that from a 'product' 
standpoint, it may be best to just match the actual port name when 
available.  The main drawback to this would be when we have the same 
image for devices that have different labels though I am not sure how 
often that actually happens.

 From a management perspective, having names that make it obvious that 
you are dealing with DSA ports (swXpY) would likely make most sense. 
Edgerouter X is a good example of this.  Calling ports ethX leads to 
confusion because it makes the port sound like an ethernet device when 
in reality it is a switch port.

I think trying to standardize to wan/lanX names could lead to 
unnecessary confusion and pain in the long run.

> 
> Please share your thoughts.
> 
> Best
> 
> Adrian
> 
> [1] https://github.com/openwrt/openwrt/pull/2935
> [2] https://github.com/openwrt/openwrt/pull/2944
> [3] https://github.com/openwrt/openwrt/commit/5acd1ed0be0d78847cd7d9d5599526f59babaf4d
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

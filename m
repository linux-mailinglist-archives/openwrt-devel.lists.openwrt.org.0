Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F4F1E907B
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 12:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RmjGXMuz2WNzCbsD/s0Lh29qoOeAFlSWsGmYZU6sQD0=; b=fhKvHNDBvbpTVJ7/jsqeo98R/
	dTpsGNHzeBbNaxBXcHc7bYRjlKQuCZRb3QJEsJ50a6giU69Hz1LjBWezsWYDwFJd66JacyL9FLnAr
	Qz/W1m9+1F/DgZcRB8b0JJZA3WvU45GG0MyatZDI2igoObeqNHkaV/V4SUFpzDL0QUpqqp0A7po7J
	vnsp1GiY4gEZICSyLRUJgK4BcVarvwdonHtkqFvErV2Z8CilP+Q/hxfUUVHFhRhuGxoogMqmgm/r7
	rCRWS4nF3dYAMyRslts/v+kNLEqdZS2kPXI+VeZBXsjX4I/031q3d4Dz5CZqMhljLBzRKVubMCl6C
	NwLbifp0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeybg-00035S-U1; Sat, 30 May 2020 10:20:48 +0000
Received: from mout-p-103.mailbox.org ([80.241.56.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeyba-00034C-Eq
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 10:20:44 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-103.mailbox.org (Postfix) with ESMTPS id 49YyB51VrRzKm8H;
 Sat, 30 May 2020 12:20:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1590834027;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VogJ56RkpN/yShQAJlhfl3U1Z40pRkqKo/cNFnKG6LY=;
 b=hWyhaw0e5IzXAfvs82DOc7ihkGfAj2YRJ6ttq1k9iGKMQoRQms0NqoQb/hGNZTikO+Thdi
 Q2SSsPJ9IQtp7jucRWiSE9ARKp9fK3oRvjI+cMONGAgxfUiXqBNyFRMuWxUu/UCUrE/mJI
 t56q12WvCxq6E0dikTCRf1HEc6hwLMM70Xd+OrLBP4HLLjVba7BeYiSGqPY/z4CE2B/xUu
 +hsMn2Ohkp3ScgcQFIbGg5pTyCiRXdhJinSbMTWzHzb5PF1hUxiikzXtfMx2aqc+clPH8X
 ervxvP7xQ1pOAie26IPHaaLBVtABKjiB3L0Qbbcvb9OMAxV2Oq1/4fGo5FbXoA==
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id 40DZWuO9fodJ; Sat, 30 May 2020 12:20:25 +0200 (CEST)
To: 'Matthias Schiffer' <mschiffer@universe-factory.net>,
 mail@adrianschmutzler.de
References: <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
From: mans0n <mans0n@gorani.run>
Message-ID: <f960c103-c4f2-260b-6d8d-a34dcd5f47fb@gorani.run>
Date: Sat, 30 May 2020 19:20:19 +0900
MIME-Version: 1.0
In-Reply-To: <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
Content-Language: en-US
X-Rspamd-Queue-Id: E4B911673
X-Rspamd-Score: -4.01 / 15.00 / 15.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_032042_826636_375B0622 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.241.56.161 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
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
Cc: 'Linus Walleij' <linus.walleij@linaro.org>, openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian, Matthias,

I was preparing my own patch for converting DEVICE_TYPE to a 
device-specific variable.
https://github.com/mans0n/openwrt/commit/4d41dd963ae8d595ef38ea0a38ea08abdac1415d
But I stumbled on some blockers so I left it behind...

One of the blockers was the busybox hdparm.
I'd also found that DEVICE_TYPE in the busybox Makefile does not work as 
intended, thanks to Linus for dealing with this.

> On 5/29/20 10:52 PM, mail at adrianschmutzler.de wrote:
>>> Or we just drop the variable at all, and do 
>>> DEFAULT_PACKAGES := DEFAULT_PACKAGES.basic DEFAULT_PACKAGES.router 
>>> at the beginning (!) of target.mk, so targets (effectively just 3 of them) can just overwrite it with 
>>> DEFAULT_PACKAGES := DEFAULT_PACKAGES.basic DEFAULT_PACKAGES.nas 
>>> directly in the few cases where that is necessary (I'd rather use DEFAULT_PACKAGES_BASIC etc. as names then). 
>> 
>> I've pushed a quick draft of this approach here:
>> 
>> https://git.openwrt.org/?p=openwrt/staging/adrian.git;a=shortlog;h=refs/heads/devicetypedrop
>> 
>> Only the most topmost patch is relevant. From "make menuconfig" it seems to work as expected.
> 
> I would prefer to find a solution that doesn't require adding
> $(DEFAULT_PACKAGES_BASIC) to the other default package lists. I'll have to
> ponder over this a bit more. Posting the patch - possibly marked as [RFC] -
> would make discussing this easier.
> 
> 
>> 
>> The if/else in busybox is not considered in this patch.
>> 
> 
> Meanwhile I've found another target-specific config setting in the busybox
> package: BUSYBOX_DEFAULT_TRUNCATE is enabled for TARGET_bcm53xx only.
> 
> I assume "truncate" is tiny enough that it doesn't really justify making
> busybox non-shared, we could just build in truncate unconditionally. I
> don't know how contrained some of the "nas" targets are, but maybe we
> should just replace the busybox hack with a full-featured hdparm on these
> targets?

Busybox hdparm is about 8k and full hdparm is about 93k. I think most 
NAS devices can manage that space, so I agree with Matthias.
But the problem is that full hdparm is in the package feed, so it 
shouldn't be included in DEFAULT_PACKAGES (unless we move the package 
into the main repo).

Now I prefer removing DEVICE_TYPE entirely as Adrian suggested. I can't 
see any use case of it other than package selections.
Perhaps we can create some meta packges (only containing dependencies) 
as an alternative?

Thanks.

> 
> Matthias
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

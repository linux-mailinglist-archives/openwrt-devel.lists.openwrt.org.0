Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E871186FAB
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 17:08:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fu65j3pTFFnn8QrYii+mBQV1f4jRzEvbIMnSBmqYY28=; b=fpTOAqn97K4NDcwtwqWF2CHsQ
	DxCiBRVNtcTtxPSvMBj1msqkgopflqqF43Ufi3D7sDL8TiJv4JyCwJqNDzmEiK4qrlIwkpikH/hho
	CBCXfBm+fsYYgW36NTuaAb+NcrMoLtFzcCn5+12nY0P4BG6/6Z65KUbLcRyOMkxjW4hILXslfnDgS
	RLSiTbN3Df+8NuDAQkyig2t61eKAZGj9HigeHN2MTyRfhxyrTEayLXbTiwImvmJOGetTQv6LFZEz7
	XCp8+xgdcZbrQjvTEqWmyUdgLgztvmnvkv3gBDElNPWfaz0M34mLk6NvhzywqIfLSxv3GoK6Mn4Vd
	SV8g+1Vpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDsHj-0003QA-1p; Mon, 16 Mar 2020 16:08:11 +0000
Received: from mout-u-204.mailbox.org ([2001:67c:2050:1::465:204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDsHc-0003Ox-FN
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 16:08:06 +0000
Received: from mout-u-107.mailbox.org (mout-u-107.mailbox.org [91.198.250.252])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 48h1Rh136ZzQlG1;
 Mon, 16 Mar 2020 17:08:00 +0100 (CET)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 48h1Rh0fSLzKnt8;
 Mon, 16 Mar 2020 17:08:00 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1584374878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HYUG5196xsqNZofqJoXfmMv3FVrmBfIusyKBBc6XOf8=;
 b=vp8MnQIPvPvV/shWZkRwPKz+RTYMPvg/oR39zMXcNlzzVG0wUIan5AMmqzz8lUAz3dpUVU
 aVSnkuL1uhnxNL/jOXQaQQYYw+BkjkzR6cjRmbMppPNlH7o4XKvZzPooVPY99UN1rolqxZ
 L5RSUDj+okbAl3n83qFnQxlByHGEsoXi+VZ9Yn9h/Yg1VW/Vi9URxLFOugZBub9EXhVjuC
 dHOSMpnztzF/rE8Pz+EbFiKZd4LU8Bp4AtB0qBCubCHzNdMehZoBY6mhm93q1FHkQjTN1v
 OY6GVb3lvGPmaJL580r8UO03o3/h6bf/WixdMackL8NUn8ZutmLYRN/mwyYifQ==
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id 9U-34Dhk8KVv; Mon, 16 Mar 2020 17:07:57 +0100 (CET)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200313161122.32858-1-freifunk@adrianschmutzler.de>
 <20200313161122.32858-3-freifunk@adrianschmutzler.de>
From: mans0n <mans0n@gorani.run>
Message-ID: <2d217455-d7e1-f75d-ae2c-c045bff04d3f@gorani.run>
Date: Tue, 17 Mar 2020 01:07:50 +0900
MIME-Version: 1.0
In-Reply-To: <20200313161122.32858-3-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_090804_691815_B8466B30 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] base-files: move find_mtd_chardev()
 to /lib/functions.sh
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

On 2020-03-14 01:11, Adrian Schmutzler wrote:
> While find_mtd_index() and find_mtd_part() are located in
> /lib/functions.sh, find_mtd_chardev() has been located in
> /lib/functions/system.sh.
> 
> Move the latter to the former file to keep similar functions
> together.

Umm, what about mtd_get_part_size()? It also seems more related to mtd 
rather than macaddr.

> 
> While at it, fix some corresponding includes.
> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>   package/base-files/Makefile                               | 2 +-
>   package/base-files/files/lib/functions.sh                 | 8 ++++++++
>   package/base-files/files/lib/functions/system.sh          | 8 --------
>   .../ath79/base-files/lib/functions/mikrotik-caldata.sh    | 2 ++
>   .../linux/lantiq/xrx200/base-files/etc/board.d/02_network | 1 +
>   5 files changed, 12 insertions(+), 9 deletions(-)
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

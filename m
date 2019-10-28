Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F62E6EC4
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 10:15:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v9zQjxqoKN7ttMlY4+0izu42Gw6n0NrWTHvo0XarxP8=; b=rryPSAzx5o9vkhDEPV+osBhJF
	ZJx+MbxcydsVbARpBl0QzShUD6cp/Q601jP3frdyiYjzegJ+g4Q9usYbpuEWIvwYQkQ13P8SZlZ/r
	hYtu5LN18nIUq706p78cDWCOXBKTsZQGoR0RWU3WMTRW62n4J33z/9/peZk6pSl5nb0MzA5P1GbZr
	aEAR2UVxGOkIVw8j75JpxYbZoANJa1EEiBcKJlWDNgl1t2eRDa5tQ/VXRH0SdMZlcHKZZuv7lwnLe
	M77dS+wwZ44OoJkBWsFnb3dneg0DwrEaGW0pgEG0ecTcAW0M6+eVhB1AChziNJVS9sXiTSufTOng8
	WMg+L67Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP174-0002Om-E5; Mon, 28 Oct 2019 09:14:58 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP16v-0002O5-Sy
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 09:14:51 +0000
Received: from webmail.gandi.net (webmail23.sd4.0x35.net [10.200.201.23])
 (Authenticated sender: daniel.engberg@pyret.net)
 by relay10.mail.gandi.net (Postfix) with ESMTPA id 6997E240007;
 Mon, 28 Oct 2019 09:14:38 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 28 Oct 2019 10:14:38 +0100
From: Daniel Engberg <daniel.engberg.lists@pyret.net>
To: Hauke Mehrtens <hauke@hauke-m.de>
In-Reply-To: <20191027174438.25795-1-hauke@hauke-m.de>
References: <20191027174438.25795-1-hauke@hauke-m.de>
Message-ID: <1fe0ec3f6f8ca7700a29ade5ca32d563@pyret.net>
X-Sender: daniel.engberg.lists@pyret.net
User-Agent: Roundcube Webmail/1.3.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_021450_070074_036884C2 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 0/6] buildsystem: Activate PIE ASLR for
 some packages
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
Cc: openwrt-devel@lists.openwrt.org, lynxis@fe80.eu, dave@taht.net,
 nbd@nbd.name
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2019-10-27 18:44, Hauke Mehrtens wrote:
> This is a follow up patch on this discussion on the mailing list:
> https://patchwork.ozlabs.org/patch/1041647/
> 
> This allows to activate PIE only for some packages where we thing it is
> necessary and not only globally for all of them.
> 
> Hauke Mehrtens (6):
>   buildsystem: Make PIE ASLR option tristate
>   dnsmasq: Activate PIE by default
>   dropbear: Activate PIE by default
>   hostapd: Activate PIE by default
>   uhttpd: Activate PIE by default
>   lantiq: Allow PKG_ASLR_PIE for DSL and voice drivers
> 
>  config/Config-build.in                       | 22 ++++++++++++++++----
>  include/hardening.mk                         |  9 +++++++-
>  package/kernel/lantiq/ltq-adsl/Makefile      |  1 -
>  package/kernel/lantiq/ltq-ifxos/Makefile     |  1 -
>  package/kernel/lantiq/ltq-tapi/Makefile      |  1 -
>  package/kernel/lantiq/ltq-vdsl-mei/Makefile  |  2 --
>  package/kernel/lantiq/ltq-vdsl/Makefile      |  1 -
>  package/kernel/lantiq/ltq-vmmc/Makefile      |  1 -
>  package/network/config/ltq-vdsl-app/Makefile |  1 -
>  package/network/services/dnsmasq/Makefile    |  1 +
>  package/network/services/dropbear/Makefile   |  1 +
>  package/network/services/hostapd/Makefile    |  1 +
>  package/network/services/uhttpd/Makefile     |  1 +
>  13 files changed, 30 insertions(+), 13 deletions(-)

I think ASLRs value needs to be evaluated especially due to the 
performance penalty (hostapd mainly in that regard) and not to forget 
size increase depending on for how long OpenWrt intends to keep 8Mbyte 
devices around as 4Mbyte devices are more or less unsupported by now. 
It's probably a better idea to only enable it on aarch64 and x86-64 
where size isn't as much of a concern and where it probably(?) receives 
most exposure to avoid uncessary breakage.

http://intx0x80.blogspot.com/2018/04/bypass-aslrnx-part-1.html
https://svnweb.freebsd.org/base?view=revision&revision=343964
Might also be worth taking into consideration.

Best regards,
Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

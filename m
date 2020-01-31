Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D35D014E980
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 09:21:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4JQ6bkzqdjOzE2a12X1EFAD7vYlLyRKgLBs7BxYhFR8=; b=NGfgc9ACpT4i/e02MlbfwYy/l9
	lb8b2bYsdQywBjli8F0qe4ZEt1TMbCLKgHolJ8PKfD/RxbmDETX0dnvugr9bciF/vB5eRnhZ0HkgO
	4D2ZXNcQSrVs5zljsDIJ0kXjhnMVCNFsnzABcfyNhQ+F3G8WHSUWrl0MaHDHeaYqAFtjuqZDEVd7f
	9NwziJqPqoripLPefbUbDcJqsTUIyNGrDv63q5N+W4pPbRlweChtJcWQAnJd5mCVw3y5cs6zbhvly
	RGgPAWEl8QvEUTPJTJzA8pnyozTeXXTUQccEUsNFVzbzdERxLTVRpPjibIuNIW3aDNhYlC5LV5G19
	hdCyl0Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixRYX-0007WL-E0; Fri, 31 Jan 2020 08:21:37 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixRYM-0007Vz-9S
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 08:21:28 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 797504189;
 Fri, 31 Jan 2020 09:21:20 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 5929e0d4;
 Fri, 31 Jan 2020 09:21:08 +0100 (CET)
Date: Fri, 31 Jan 2020 09:21:08 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Message-ID: <20200131082108.GB78186@meh.true.cz>
References: <20200130173722.75554-1-ldir@darbyshire-bryant.me.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130173722.75554-1-ldir@darbyshire-bryant.me.uk>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_002126_480759_79182AC8 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH procd] instance: Improve missing jail
 binary message
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk> [2020-01-30 17:37:23]:

Hi Kevin,

thanks for looking into that.

> Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
> ---
>  service/instance.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/service/instance.c b/service/instance.c
> index e872ba0..b78a65f 100644
> --- a/service/instance.c
> +++ b/service/instance.c
> @@ -824,7 +824,8 @@ instance_jail_parse(struct service_instance *in, struct blob_attr *attr)
>  
>  	r = stat(UJAIL_BIN_PATH, &s);
>  	if (r < 0) {
> -		ERROR("unable to find %s: %m (%d)\n", UJAIL_BIN_PATH, r);
> +		ULOG_WARN("Cannot jail service %s::%s. %s: %m (%d) Are jails enabled?\n",
> +				in->srv->name, in->name, UJAIL_BIN_PATH, r);

I added this message in commit 557f11b3a20f ("instance: provide error feedback
if ujail binary is missing") because I've spent non trivial amount of time on
finding this, but back then I actually didn't realized, that this code path is
probed every time, leading to this error messages in cases where the ujail
binary is absent (most of the time as of now).

This change with service name/instance is indeed helpful, but it doesn't solve
current issue, that we produce this perhaps misleading error/warning every
time when procd (re)starts service which contains jails features in its init
script.

I'm not sure if it makes sense to waste more time on this as there is a plan
to make jails enabled by default soon. If there is a will to make the UX
better, then I see following solutions:

 1. turn that ULOG_WARN into DEBUG, because I think, that most of us increases
    procd's debug level while debugging the init foo issues, we wont pollute
    logs anymore

 2. move the ujail detection logic into procd's init library and send service jail
    params to procd only if it makes sense and adjust procd code accordingly
    if necessary

Just my two cents.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

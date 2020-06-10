Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C9B1F5C4E
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 21:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8la412/0+kCfpX/ZkgCNQ+/xfwNuYIv3zTipFF5fXY=; b=etIudN3yyCT8xE
	c9joTTnWXI7CWVPq9tuiT97GNbSSQE9lg345/Zi51GNVayOyX1tZgbBWrKZlmKx/+nnkV2rs9pkas
	1QmmI8WI4jAUKZeYlDcUzIu4opbgrIM6QrqdPjco2+0fnEI6f2kCEu7uhSCEmNYGibcE7E9sSjwpi
	MhQghO80rVTE9FP1dEJi/zLx/+s18H7xiOdw/QRl22UdNKWom2tRtjsK6bG/hFnvhQf3EC1nL/RxO
	sBn1mxCqFpnETuOL6nVwOXmlkwgodN/scq51Icqw+lPcoE2DfV15LU/p9jW5hHlbYABl5HiRxCVcN
	zCPHbAuYJHSIL6HpJUSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj6sL-00028i-Ut; Wed, 10 Jun 2020 19:59:05 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj6sD-000287-Ds
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 19:58:58 +0000
Received: by mail-qt1-x842.google.com with SMTP id w9so2825355qtv.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 10 Jun 2020 12:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q9cwhi6LQ51nvpkZe90nxN76xYzM1vxlLBVforrEmQ4=;
 b=G0sBeJv288ajTr07v7e1/NnhtSWrIYfeBQOSLATtJAgrbCaWIrymqQJGHJ6Quv9N0t
 hUqB2gJDIW/MNqXUQ7BhsQi/zX/bJInqP1m0p6zrii3FyE6ajlb9UhiRan2fWdfRC650
 p7qJvEHRAaBlEkrzGKpekWF2VKP8CObLLADH5Uo1SOABnE0iAfO+BhkbQnRJ9tKuhJNc
 9Fy3QYp8R8ktr/Nu2v++qObOQC4VsBUQQgsmE536V5nNAupfLzAllH3KDRWJj3lj5Rh4
 C9hPn3R15ScMRiZYMT3qD7QpmHJTmVM+BIBI77YQ8haL52/OxtCD4D3dRhgCLh0fdetr
 wYuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q9cwhi6LQ51nvpkZe90nxN76xYzM1vxlLBVforrEmQ4=;
 b=ZDRqf7LOS2YyONDKWcOCLD9bxIcbJrbFBwVARMOGvKXaWvWXDhnA09tFCWP/00nWWF
 hbdyCAs5s/EDbLqwUp65n/4l/X/YEnIHd59KfzDSR/fCOFExdmpZ5R6HCB3RNgD4p2OG
 L/0CPYBxLR0+g95f4X/BMwiKYTvppZxyfntM/fzxP3NORUs45BkcKBwqEMvNDhAZ+j3y
 jttuvAegLotSU3IeR5jvOZXRUapruYDS7wLIUaIaXXK95QlC8dcATbqRfQtY1xzHcWis
 ZmbP3Th7z3qRo4Jt5DJNorHNgKKFCyKsf9JSXomuT7AySHzgPjezBN4D3BgPFktKovc4
 mGfw==
X-Gm-Message-State: AOAM531WFT8K3NHTSFlSGlKqUmd5XIeNBqFTEDzgvQA80jU2XazJ1FE5
 RXxltgBXR5YgAIizShcXpxtcraanFcyQdx3WC/M=
X-Google-Smtp-Source: ABdhPJy9uQfr6zvVeYEzUngMKmkhaw/p7CiEGbyUXiV9ZfWYX0dqBsUGPplZ3hrQfc6igZhF1ZqTfxYhHuLo0bBXaL8=
X-Received: by 2002:ac8:339b:: with SMTP id c27mr4841641qtb.210.1591819135414; 
 Wed, 10 Jun 2020 12:58:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200610162727.19344-1-ldir@darbyshire-bryant.me.uk>
In-Reply-To: <20200610162727.19344-1-ldir@darbyshire-bryant.me.uk>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Wed, 10 Jun 2020 21:58:44 +0200
Message-ID: <CAJLcKsFnkPJOOmpamcob-cJVG08-Z+9+=BdGbizLKNErTs+E=Q@mail.gmail.com>
To: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_125857_471684_95247BC3 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] odhcpd: remove bogus IPKG_INSTROOT
 reference
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Jun 10, 2020 at 6:27 PM Kevin Darbyshire-Bryant
<ldir@darbyshire-bryant.me.uk> wrote:
>
> IPKG_INSTROOT is only set under image builder and we won't be running
> this script at build time either, so remove the reference before it gets
> cargo-culted into other scripts.
>
> Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Acked-by: Hans Dedecker <dedeckeh@gmail.com>
> ---
>  package/network/services/odhcpd/Makefile            | 2 +-
>  package/network/services/odhcpd/files/odhcpd-update | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/package/network/services/odhcpd/Makefile b/package/network/services/odhcpd/Makefile
> index 6510ce6c80..07d7d7d673 100644
> --- a/package/network/services/odhcpd/Makefile
> +++ b/package/network/services/odhcpd/Makefile
> @@ -8,7 +8,7 @@
>  include $(TOPDIR)/rules.mk
>
>  PKG_NAME:=odhcpd
> -PKG_RELEASE:=3
> +PKG_RELEASE:=4
>
>  PKG_SOURCE_PROTO:=git
>  PKG_SOURCE_URL=$(PROJECT_GIT)/project/odhcpd.git
> diff --git a/package/network/services/odhcpd/files/odhcpd-update b/package/network/services/odhcpd/files/odhcpd-update
> index 9bc7abcc1c..c1814e00b0 100755
> --- a/package/network/services/odhcpd/files/odhcpd-update
> +++ b/package/network/services/odhcpd/files/odhcpd-update
> @@ -1,6 +1,6 @@
>  #!/bin/sh
>  # Make dnsmasq reread hostfile by sending SIGHUP signal
>
> -. $IPKG_INSTROOT/lib/functions/procd.sh
> +. /lib/functions/procd.sh
>
>  procd_send_signal dnsmasq
> --
> 2.24.3 (Apple Git-128)
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

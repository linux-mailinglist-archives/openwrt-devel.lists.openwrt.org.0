Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D8B116390
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 20:15:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eiEkYHLtPNqP/va8+A2Tu3zVGfgr6PgeHvELaIDoMj4=; b=ZtEzI7qozQX4Ny
	vXJILo/cxWIQp+jPeaC1r3FgI/1bMrwjKinznWxdUyBh3wu7yzFLyBPri6YUkilIM7jCxAaoDfx4K
	6nPuBqbZLoU5IGjhFIIqVd9Y4phPBo5oTyfpN9dM2L1Yl2Jk8CvLFW/+vG7ZEE8sjV77vaNgGkjia
	4CS3GaGgurEKr/1d3kf1bhziH41L9Hb44kpeRbBoceVd0UyL9qDw6WLkRcjP7Jf7VFxaG2nJ0M+0b
	7PCmdlq9NT4HFFIG5eIRga0F/FDmg2WJ8AtuKk+FjKYywvs8aeyeyVtH2QQOmeIR148Rxxl/mX0TV
	cU6NO6u+rIsY0Q95ZT1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie21a-0008Gv-3y; Sun, 08 Dec 2019 19:15:22 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie21U-00087k-47
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 19:15:17 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1ie21C-00069l-AW; Sun, 08 Dec 2019 20:15:00 +0100
Date: Sun, 8 Dec 2019 20:14:44 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Daniel Danzberger <daniel@dd-wrt.com>
Message-ID: <20191208191444.GC33463@makrotopia.org>
References: <20191208161419.124991-1-daniel@dd-wrt.com>
 <20191208161419.124991-2-daniel@dd-wrt.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191208161419.124991-2-daniel@dd-wrt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_111516_163655_D8BFCA5B 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ustream-ssl: mbedtls: fix ssl
 client verification
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

Hi Daniel,

On Sun, Dec 08, 2019 at 05:14:19PM +0100, Daniel Danzberger wrote:
> Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
> ---
>  ustream-mbedtls.c | 7 -------
>  1 file changed, 7 deletions(-)

Please provide a more elaborate commit description as it is not obvious
why those lines need to be removed.

> 
> diff --git a/ustream-mbedtls.c b/ustream-mbedtls.c
> index 85bbb1c..74c27a5 100644
> --- a/ustream-mbedtls.c
> +++ b/ustream-mbedtls.c
> @@ -182,16 +182,9 @@ static void ustream_ssl_update_own_cert(struct ustream_ssl_ctx *ctx)
>  	if (!ctx->cert.version)
>  		return;
>  
> -	if (!ctx->server) {
> -		mbedtls_ssl_conf_ca_chain(&ctx->conf, &ctx->cert, NULL);
> -		return;
> -	}
> -
>  	if (!ctx->key.pk_info)
>  		return;
>  
> -	if (ctx->cert.next)
> -		mbedtls_ssl_conf_ca_chain(&ctx->conf, ctx->cert.next, NULL);
>  	mbedtls_ssl_conf_own_cert(&ctx->conf, &ctx->cert, &ctx->key);
>  }
>  
> -- 
> 2.24.0
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

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFD61F846
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 18:14:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1urypEi6SSiKGcvon0bafJTeP53rwyxmYYSDt3OE0bU=; b=hJBRQY+UYL96vg
	0kMAoCslWKkwDgeF8tJ262JT1Rj63LPByXqFCawtEhqh2sh/u6h5Cxlhd+X2LmDPUzrUzrlHMcsW3
	dC12Z+r0a/A84AY36B6DX/r1FsaupW+X3ONabd06KvvggpsC65vOOoZlYs65z1fzTOr2MI4/o/y8f
	sb690j6RMABJU73C0dVlzU/FC+ZWCkafU6xiNrNFCsaEEyNfyhgvAgGXCWUIeoK93lfPGP9hH0bqP
	cZmpfVA4PWJ6tLSjdrp5JRcuXajBnkWdcHH/oIbysKNqzlHNhmeaj55YIQduoantOf7E+oxX6VKnU
	Vanl+D4y3//AacifCKtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQwY7-0004ZQ-LS; Wed, 15 May 2019 16:14:35 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwXz-0004Z4-Ud
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 16:14:29 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FGELPt047606
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 18:14:21 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 01CCC37DA;
 Wed, 15 May 2019 18:14:18 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 48ec00e6;
 Wed, 15 May 2019 18:14:18 +0200 (CEST)
Date: Wed, 15 May 2019 18:14:17 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Patrick McDermott <patrick.mcdermott@libiquity.com>
Message-ID: <20190515161417.GA90321@meh.true.cz>
References: <20190417175611.4351-1-patrick.mcdermott@libiquity.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190417175611.4351-1-patrick.mcdermott@libiquity.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_091428_302247_B76BACEC 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH][opkg-lede] libopkg: Detect gzipped pkg
 lists by magic number
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org, Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Patrick McDermott <patrick.mcdermott@libiquity.com> [2019-04-17 13:56:11]:

You've probably forget to add commit description, which would explain us why
you need this changes or what problem it fixes as requested in 

 https://openwrt.org/submitting-patches

> Signed-off-by: Patrick McDermott <patrick.mcdermott@libiquity.com>
> ---
>  libbb/gzip.h       |  2 ++
>  libopkg/pkg_hash.c | 27 ++++++++++++++++++++-------
>  2 files changed, 22 insertions(+), 7 deletions(-)
> 
> diff --git a/libbb/gzip.h b/libbb/gzip.h
> index 3a61a1d..28e3a50 100644
> --- a/libbb/gzip.h
> +++ b/libbb/gzip.h
> @@ -22,6 +22,8 @@
>  #include <signal.h>
>  #include <pthread.h>
>  
> +#define GZIP_MAGIC "\037\213" /* gzip magic number, 1F 8B */
> +
>  struct gzip_handle {
>  	FILE *file;
>  	struct gzip_handle *gzip;
> diff --git a/libopkg/pkg_hash.c b/libopkg/pkg_hash.c
> index 611f3b9..b536db7 100644
> --- a/libopkg/pkg_hash.c
> +++ b/libopkg/pkg_hash.c
> @@ -99,21 +99,34 @@ pkg_hash_add_from_file(const char *file_name,
>  {
>  	pkg_t *pkg;
>  	FILE *fp;
> +	char magic[2];
> +	int is_gzip = 0;
>  	char *buf;
>  	const size_t len = 4096;
>  	int ret = 0;
>  	struct gzip_handle zh;
>  
> -	if (src && src->gzip) {
> -		fp = gzip_fdopen(&zh, file_name);
> -	} else {
> -		fp = fopen(file_name, "r");
> -	}
> -
> +	fp = fopen(file_name, "r");
>  	if (fp == NULL) {
>  		opkg_perror(ERROR, "Failed to open %s", file_name);
>  		return -1;
>  	}
> +	if (fread(magic, 1, 2, fp) != 2) {
> +		opkg_perror(ERROR, "Failed to read %s", file_name);
> +		fclose(fp);
> +		return -1;
> +	}
> +	(void)fseek(fp, 0L, SEEK_SET);
> +
> +	if (src && src->gzip && memcmp(magic, GZIP_MAGIC, 2) == 0) {
> +		fclose(fp);
> +		fp = gzip_fdopen(&zh, file_name);
> +		if (fp == NULL) {
> +			opkg_perror(ERROR, "Failed to open %s", file_name);
> +			return -1;
> +		}
> +		is_gzip = 1;
> +	}
>  
>  	buf = xmalloc(len);
>  
> @@ -165,7 +178,7 @@ pkg_hash_add_from_file(const char *file_name,
>  	free(buf);
>  	fclose(fp);
>  
> -	if (src && src->gzip)
> +	if (is_gzip)
>  		gzip_close(&zh);
>  
>  	return ret;

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

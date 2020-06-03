Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE71A1ECDA8
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 12:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TcnM3uQ9bu/z7fhVX2tmfkiC3oablywc0+W2fRbmaOY=; b=Tie1/bRzidXFSUhUak3vL6CScU
	PDBLrXibY/rmQV9qm/0i+sAzsFl/VJ8zrA8VvuEZfYs/hW1nL2kj0Ci3vm2jvRZJgNJ1a1Gf0G24r
	jRdBOajNezQ4oFMDe8NlX0RQZDnkDkMBnhCIUKLpE4u03xlrYMbbIGhbzIJx3+c7Kg7Z9U8FaSIl1
	fdKvleNf1lM1f8lW2nJpd9kqzXAtYH0DkrjCYqXjFCgo32wSi55RidComWLOMkzZ70gJncTRAgbP2
	ZfNnfhJLg4bjQTNtP+71rP5oYyJQ4b4vljkuZHpHXWPOFLK/0sGCOEUJYfvG2O8F1Q2xPUt0OANRg
	yI+zY7bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgQkM-0004D3-UA; Wed, 03 Jun 2020 10:35:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgQkF-0004CN-CM
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 10:35:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id AD54140B9;
 Wed,  3 Jun 2020 12:35:26 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 7e0e9d7d;
 Wed, 3 Jun 2020 12:35:10 +0200 (CEST)
Date: Wed, 3 Jun 2020 12:35:25 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Eric Masson <emss@free.fr>
Message-ID: <20200603103525.GC3056@meh.true.cz>
References: <20200426124645.7457-1-emss@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200426124645.7457-1-emss@free.fr>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_033539_568309_E945686F 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] Add basic instance support to nsd init
 script
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
Cc: Eric Masson <emss@srvbsdfenssv.interne.associated-bears.org>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

please follow https://github.com/openwrt/packages/blob/master/CONTRIBUTING.md

-- ynezz

Eric Masson <emss@free.fr> [2020-04-26 14:46:45]:

> From: Eric Masson <emss@srvbsdfenssv.interne.associated-bears.org>
> 
> ---
>  net/nsd/files/nsd.init | 31 +++++++++++++++++++++++++++----
>  1 file changed, 27 insertions(+), 4 deletions(-)
> 
> diff --git a/net/nsd/files/nsd.init b/net/nsd/files/nsd.init
> index 8b1cf1deb..69fdce512 100644
> --- a/net/nsd/files/nsd.init
> +++ b/net/nsd/files/nsd.init
> @@ -5,12 +5,35 @@ START=60
>  USE_PROCD=1
>  PROG=/usr/sbin/nsd
>  
> +append_arg() {
> +	local cfg="$1"
> +	local var="$2"
> +	local opt="$3"
> +	local def="$4"
> +	local val
> +
> +	config_get val "$cfg" "$var"
> +	[ -n "$val" -o -n "$def" ] && procd_append_param command "$opt" "${val:-$def}"
> +}
> +
> +start_instance()
> +{
> +	local cfg="$1"
> +	procd_open_instance
> +	procd_set_param respawn
> +	procd_set_param stderr 1
> +	procd_set_param command "$PROG" -d
> +	append_arg "$cfg" config_file "-c"
> +	append_arg "$cfg" db_file "-f"
> +	append_arg "$cfg" pid_file "-P"
> +	procd_close_instance
> +}
> +
>  start_service() {
>  	mkdir -p /var/db/nsd
>  	chown network /var/db/nsd
>  	chmod 640 /etc/nsd/*.conf 2>/dev/null
>  	chgrp network /etc/nsd/*.conf 2>/dev/null
> -	procd_open_instance
> -	procd_set_param command "$PROG" -d
> -	procd_close_instance
> -}
> +	config_load nsd
> +	config_foreach start_instance nsd
> +}
> \ No newline at end of file
> -- 
> 2.26.2
> 
> 

-- 
ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

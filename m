Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973D5103576
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 08:45:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDRbjgG3DxA7PLIZ0a312Qa4FUeu5lWd0+r9Tiri8TM=; b=nJT9jQAP2qFpBM
	KvYfyg66t1PnBJ50UEgMQKW1xWhYARV9fSqRFQlOVz0YXNKmZVcG1V/f6h+oiDhd6+esOfvJHkFt5
	enu0pxvh8mjklODJ/zSVXjCwLHOQTbvQ7XHnmEdacPVjHrbZb13iJyHfGNuM6cWzk4MLEqxNU55CC
	MYMFdILCgee86nbrEPEilVdyiHa3S21zVcOSDJnPQTBhUBDqJhZLunqs9FwhRCdjZdahZ0qIaNrpx
	wcOft2GOXY1Xaep7RMC13v02NxIyV2aJmdjpdSI6kIHz7PrO5jam1zMBVKMz8bLLOm7meR/5oS+M+
	KUdRavTC30IWKQHMr6pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXKfd-00033K-LI; Wed, 20 Nov 2019 07:45:01 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXKfW-00032o-KT
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 07:44:56 +0000
Received: by mail-qt1-x841.google.com with SMTP id t20so27924723qtn.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 Nov 2019 23:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KrQKpZpiTVXXd1gLqV1gIaaG0EPczII2K8b/FHbiN64=;
 b=fEonk9Ui5a9w5sryTcsioImPoJ/6MNWZtQS2L5xULd6Yg+iKn3LfRedYO7gsspzi03
 TqGAphivt8071GvNFX3IpIIzoKwOQlFXO/Yip5Qp/Q66Oid5+8nbFfd/o3B3LOwVmTc7
 N046MbbE9JCsCZ76hl2xlaeg3xkkQ0415ei/MZGMbMGWnygnhA8o9QdIGyXR7YuXChlH
 p38GrUMb7w5t+yVSQqWqS9f7qB500Fmr5iNLDT+jixvi6+X+6nBJ1cYbwt4mZzHmShPs
 GcPlHNXHuCs7JLt3QSKpOlNt1MydC8GnCTpG6RbLPQKAn66D4/oaBBpPoiKSBVUFZsTW
 oIAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KrQKpZpiTVXXd1gLqV1gIaaG0EPczII2K8b/FHbiN64=;
 b=C78teyxK1a+cGU9pbVvwFi9ir1AYBHS1siB05RyAAqWBxyDqNFNDO1dtMOQDCAY+BY
 NTUC3Cn/8VfOblzM6UEiV7Aizci4zwepqZwSLsjG+1CoO5b7z363/jvgTp8MW/aZY2c+
 aa98JVLhkfVdn1wAIGNZH6G8EXGUIQAdw0k0dPpVbZoQlzP1R2bAPyFDa9WDy4NHiG5q
 RoYYymj9f0/80JXeHodAZCgYffzW5lk0RK6Ay6OayVb2yMuoaxAp9rUzIJgU/CkEZQgb
 okj7boGNUJyEksFqjK9ZnQzK1j6az2OpHTd2Jv6/jCBkNJCqVIWj2Zx8TeHiDsgPAjIa
 bKNQ==
X-Gm-Message-State: APjAAAX3EiuZ2/O3GjAfUoO8KFGOFHx/GuxK5Nsdb0v0mecAFF9qT5ni
 srd1LMQtA+cvMkmlXmyNoCn23yegAbtpuAoieG8=
X-Google-Smtp-Source: APXvYqyWFqSqQcPBOK/STs5qVT3ZNnXeLmTPAr/N8G9BPLQ9d9UH16bfwwabbIGDFCqXHhJLEx16WHXN+Lf/yUISOBg=
X-Received: by 2002:ac8:2655:: with SMTP id v21mr1432228qtv.0.1574235892491;
 Tue, 19 Nov 2019 23:44:52 -0800 (PST)
MIME-Version: 1.0
References: <20191119151242.96019-1-ldir@darbyshire-bryant.me.uk>
In-Reply-To: <20191119151242.96019-1-ldir@darbyshire-bryant.me.uk>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Wed, 20 Nov 2019 08:44:41 +0100
Message-ID: <CAJLcKsHFaZuM9htTwhgYhi5=BW2hJS4NmuHuBVTn2b=am=OEXg@mail.gmail.com>
To: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_234454_673360_340B2E4A 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: dhcp proto convert release to
 norelease
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

On Tue, Nov 19, 2019 at 4:12 PM Kevin Darbyshire-Bryant
<ldir@darbyshire-bryant.me.uk> wrote:
>
> Change dhcp no/release on shutdown to 'norelease' uci option to match
> existing proto dhcpv6 usage.
>
> Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Acked-by: Hans Dedecker <dedeckeh@gmail.com>
> ---
> v2 - store the migrate script under netifd structure instead of as part
> of base-files
>
>  package/network/config/netifd/Makefile        |  2 +-
>  .../etc/uci-defaults/14_migrate-dhcp-release  | 23 +++++++++++++++++++
>  .../netifd/files/lib/netifd/proto/dhcp.sh     | 10 ++++----
>  3 files changed, 29 insertions(+), 6 deletions(-)
>  create mode 100644 package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release
>
> diff --git a/package/network/config/netifd/Makefile b/package/network/config/netifd/Makefile
> index 875628f66a..e24ebaba30 100644
> --- a/package/network/config/netifd/Makefile
> +++ b/package/network/config/netifd/Makefile
> @@ -1,7 +1,7 @@
>  include $(TOPDIR)/rules.mk
>
>  PKG_NAME:=netifd
> -PKG_RELEASE:=1
> +PKG_RELEASE:=2
>
>  PKG_SOURCE_PROTO:=git
>  PKG_SOURCE_URL=$(PROJECT_GIT)/project/netifd.git
> diff --git a/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release b/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release
> new file mode 100644
> index 0000000000..651c437cb2
> --- /dev/null
> +++ b/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release
> @@ -0,0 +1,23 @@
> +. /lib/functions.sh
> +
> +migrate_release() {
> +       local config="$1"
> +       local proto
> +       local release
> +
> +       config_get proto "$config" proto
> +       config_get release "$config" release
> +
> +       [ "$proto" = "dhcp" ] && [ -n "$release" ] && {
> +               norelease="$((!$release))"
> +               uci_set network "$config" norelease "$norelease"
> +               uci_remove network "$config" release
> +       }
> +
> +}
> +
> +config_load network
> +config_foreach migrate_release interface
> +commit network
> +
> +exit 0
> diff --git a/package/network/config/netifd/files/lib/netifd/proto/dhcp.sh b/package/network/config/netifd/files/lib/netifd/proto/dhcp.sh
> index 0d06eba06e..3034b2ba68 100755
> --- a/package/network/config/netifd/files/lib/netifd/proto/dhcp.sh
> +++ b/package/network/config/netifd/files/lib/netifd/proto/dhcp.sh
> @@ -14,7 +14,7 @@ proto_dhcp_init_config() {
>         proto_config_add_string clientid
>         proto_config_add_string vendorid
>         proto_config_add_boolean 'broadcast:bool'
> -       proto_config_add_boolean 'release:bool'
> +       proto_config_add_boolean 'norelease:bool'
>         proto_config_add_string 'reqopts:list(string)'
>         proto_config_add_boolean 'defaultreqopts:bool'
>         proto_config_add_string iface6rd
> @@ -35,8 +35,8 @@ proto_dhcp_setup() {
>         local config="$1"
>         local iface="$2"
>
> -       local ipaddr hostname clientid vendorid broadcast release reqopts defaultreqopts iface6rd sendopts delegate zone6rd zone mtu6rd customroutes classlessroute
> -       json_get_vars ipaddr hostname clientid vendorid broadcast release reqopts defaultreqopts iface6rd delegate zone6rd zone mtu6rd customroutes classlessroute
> +       local ipaddr hostname clientid vendorid broadcast norelease reqopts defaultreqopts iface6rd sendopts delegate zone6rd zone mtu6rd customroutes classlessroute
> +       json_get_vars ipaddr hostname clientid vendorid broadcast norelease reqopts defaultreqopts iface6rd delegate zone6rd zone mtu6rd customroutes classlessroute
>
>         local opt dhcpopts
>         for opt in $reqopts; do
> @@ -50,7 +50,7 @@ proto_dhcp_setup() {
>
>         [ "$defaultreqopts" = 0 ] && defaultreqopts="-o" || defaultreqopts=
>         [ "$broadcast" = 1 ] && broadcast="-B" || broadcast=
> -       [ "$release" = 1 ] && release="-R" || release=
> +       [ "$norelease" = 1 ] && norelease="" || norelease="-R"
>         [ -n "$clientid" ] && clientid="-x 0x3d:${clientid//:/}" || clientid="-C"
>         [ -n "$iface6rd" ] && proto_export "IFACE6RD=$iface6rd"
>         [ "$iface6rd" != 0 -a -f /lib/netifd/proto/6rd.sh ] && append dhcpopts "-O 212"
> @@ -70,7 +70,7 @@ proto_dhcp_setup() {
>                 ${ipaddr:+-r $ipaddr} \
>                 ${hostname:+-x "hostname:$hostname"} \
>                 ${vendorid:+-V "$vendorid"} \
> -               $clientid $defaultreqopts $broadcast $release $dhcpopts
> +               $clientid $defaultreqopts $broadcast $norelease $dhcpopts
>  }
>
>  proto_dhcp_renew() {
> --
> 2.21.0 (Apple Git-122.2)
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

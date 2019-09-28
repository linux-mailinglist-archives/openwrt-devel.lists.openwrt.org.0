Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BACC114E
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Sep 2019 18:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nr/1XOZuDCbMGCRFArrDEU05IGtr8ocIu5Zz4xIryPI=; b=QhKINZCrviiqKl
	OMP2+upALtQPPaYeXVN6BnvrK/0oLfaEOz1CemcVLXdYrEabus6Xd21nJQmZgxS6KIedybYgiuhc3
	bQRH7xkAys9vPEN/gzWjhnI2d69pA+Lnz9eturHNmLB48O9wrwEpsM535ATIOWAvS8kPm+7tgw51U
	q0lAqcQcPcnth5j6vqNWe+5/j59SxZtiNvUhX4QqR9Zu+HXfFD5ecWHr0ibdJgxok/jyIkyy760O6
	+CBPH/lr/jhJXxoNPxyzcEjAxmpePR6PhUsomhJvorZlEiZzYA01ej0M8QxJYp2Eqfibb3lhIIDdk
	7zUTDAfz/bTXOoGDWxkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEFi8-0002sS-5K; Sat, 28 Sep 2019 16:36:44 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEFi0-0002s1-B2
 for openwrt-devel@lists.openwrt.org; Sat, 28 Sep 2019 16:36:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id w12so6395466wro.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Sep 2019 09:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CXojr5C1OBZob2J7aUh58vE3oGuNgyJaC0XAmz4nmWs=;
 b=i17r/wL3rYeQrx7vu/kIXa1x4RJgbgyH7quCxQPCt8+g2db/xflAQQgAZuxOSZxN0C
 4MQ9lfNk62D+IhKh6zUneYgZ1xFnrUqWWbB6R4QKQgTtE/Qm5xAjmQwaifz0fPnzQv1T
 DHWLagncRrW2+vyntPNgu6WabGBrKujAMHczo2R+0mTRVKSe/ly5MuE4YCOT/rrVjlCI
 Gq3195KfE1lQSF2EXeQsiiwwbjsdwfCNdJXQBeQ0eObB8BDaEYObEvHujCj7sTP0a7d4
 S6ZAQMb8rQQtQwVjObgVWzDRhheE1CDjGPwYZ2KOvtWNwuzXsiVCO+eNiXMtMN25jMBk
 RaMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CXojr5C1OBZob2J7aUh58vE3oGuNgyJaC0XAmz4nmWs=;
 b=c6vHTMgE29k2lKxcPKeHCgODLcETEbx5AcXbTonP1WQSnmF8vD7sWmiR61fXoDio07
 4Rg2ttJo15Dq85a71b8mQ7kb53yqC85iu4ISEYqzLomzTHU6j2Nq3+/XrBnNsjUV4HBb
 X1zneBRvb1QXqvSLE2m9AYq7ttzO2qXxPhMVV0bCraQ2NBbRCGQpfRNdHT+9AGAiotXJ
 AeCOuYJbVI89qFjGaywYlm16TeoXtzFVcacjVgkia3fdP/mgola4hXl5UaMneEknvtZr
 sWsqX77T+sYtZUOu8Cav52EwCLPKaM9cmTFY9qDa8PiL4J3NxfxthNCekTKsuy7PLMpk
 sTmw==
X-Gm-Message-State: APjAAAW7ioD8kVO8H0b2V24YSZLDWflXfdrV2biJtuDr4cfqupGX5ruG
 NL+a1YIIzXwofVSg88nZLIYJPNir
X-Google-Smtp-Source: APXvYqxGriuJ2iHmZAilLYaNKXVIVxx9pOhBHn4hEfvlu+fkThOF9nnPSI+B1xaMHeCF3FZb5CNZTw==
X-Received: by 2002:a5d:430f:: with SMTP id h15mr7381698wrq.177.1569688593596; 
 Sat, 28 Sep 2019 09:36:33 -0700 (PDT)
Received: from debian64.daheim (p5B0D7F22.dip0.t-ipconnect.de. [91.13.127.34])
 by smtp.gmail.com with ESMTPSA id
 b186sm25438619wmd.16.2019.09.28.09.36.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Sep 2019 09:36:32 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92.2)
 (envelope-from <chunkeey@gmail.com>)
 id 1iEFhv-0005JT-Vc; Sat, 28 Sep 2019 18:36:31 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Sep 2019 18:36:31 +0200
Message-ID: <2787752.gk3AGoonP1@debian64>
In-Reply-To: <20190923143138.2976-1-freifunk@adrianschmutzler.de>
References: <20190923143138.2976-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_093636_380277_F0739C61 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: add label MAC address for
 FritzBox 4040
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Monday, September 23, 2019 4:31:38 PM CEST Adrian Schmutzler wrote:
> This adds label MAC address for the AVM FritzBox 4040, the first
> device in ipq40xx target.

I had to look this up a bit more, since my (broken) retail-unit
Fritz!Box 4040 does not have the MAC-Address on the sticker labeled
as "MAC Address" (or something like that).
Instead there is a "CWMP-Account" String/Number which displays the
Address as a "part" of it.

Wouldn't it be better to just go with the "serial number" of the device 
in this case then?

Going deeper: The patch that introduced ucidef_set_label_macaddr describes it as

|commit 469e347f19ce9eefdc16f421b8e1f18ed60c310c
|Author: Adrian Schmutzler <freifunk@adrianschmutzler.de>
|Date:   Thu Aug 15 15:13:27 2019 +0200
|
|    base-files: provide option to specify label MAC address in board.d
|    
|    For many devices, MAC addresses cannot be retrieved via the
|    device tree alias.
| [...]

... This is somewhat strange in the context of the Fritz!Box 4040.
This is because the extra u-boot we use for the Fritz!Box 4040 makes
a real effort to patch the real mac-address into the device tree
before handing it off to the kernel.

https://github.com/chunkeey/FritzBox-4040-UBOOT/blob/master/board/qcom/ipq40xx_cdp/ipq40xx_cdp.c#L455

So, everything should just "click" with this alias added.

	label-mac-device = &gmac0;

Or does it not?

Cheers,
Christian

> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>  target/linux/ipq40xx/base-files/etc/board.d/02_network | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/target/linux/ipq40xx/base-files/etc/board.d/02_network b/target/linux/ipq40xx/base-files/etc/board.d/02_network
> index e5ba7260f3..082724ebfc 100755
> --- a/target/linux/ipq40xx/base-files/etc/board.d/02_network
> +++ b/target/linux/ipq40xx/base-files/etc/board.d/02_network
> @@ -77,6 +77,9 @@ ipq40xx_setup_macs()
>  		wan_mac=$(mtd_get_mac_binary_ubi Factory 0x5006)
>  		lan_mac=$(mtd_get_mac_binary_ubi Factory 0x1006)
>  		;;
> +	avm,fritzbox-4040)
> +		label_mac=$(cat /sys/class/net/eth0/address)
> +		;;
>  	engenius,ens620ext)
>  		wan_mac=$(mtd_get_mac_ascii u-boot-env ethaddr)
>  		lan_mac=$(macaddr_add "$wan_mac" 1)
> @@ -89,6 +92,7 @@ ipq40xx_setup_macs()
>  
>  	[ -n "$lan_mac" ] && ucidef_set_interface_macaddr "lan" $lan_mac
>  	[ -n "$wan_mac" ] && ucidef_set_interface_macaddr "wan" $wan_mac
> +	[ -n "$label_mac" ] && ucidef_set_label_macaddr $label_mac
>  }
>  
>  board_config_update
> 





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BA42E874
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 May 2019 00:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9L2SpaqevHBuMZIjlqSQuZm0x/lea5KDMwMC759A/w=; b=pZ/oE9MLBtDQSH
	E+9MhBLp68LY+dmYA4o+QoyYmg7WZpx98OKLM0Wtx+Beu8w/PrIj0s6yFgmDKee0PM4vc9UoHWBs2
	ji0pOkdw/4wc6HkHq4YbdZ/2AchKQEXaVjoqVpVKVkIH3YhgBoynDyeS0XvOicx0vl5SpfJvbk+gL
	Gi5PZQMAXfI4H7MdEpFirRb8FdsCWMpynStxosLlJS5lxPhz4lAyI5N4O/Py7E+wsX3lPzFRdymBH
	+3vTHPpXAX5HFieAqMnL0xutIZ4l0TJDkIpjqspNY35VJoAfhxvIBxBECfQ/x3QUhhUU/86mb+uus
	kio/iYN88xKFecjQUoPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW7LG-0007Gc-Q6; Wed, 29 May 2019 22:46:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW7LB-0007G2-4F
 for openwrt-devel@lists.openwrt.org; Wed, 29 May 2019 22:46:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id t4so2840262wrx.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 May 2019 15:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c7gdBnCfXUVdEk0+kfUiSPeP/n95kcBT0Jg/EvmDC6k=;
 b=taKolcPTL163jq+ZFNfwD/dXLM4XbC8WWVTe4DlJ0u7OwYN28jmTp8zNBxXHLMWTqI
 Vkp5PsOwOVEp5mx3MjddPAz1/LL5MqTwNQcA7KqrXI0+fjvZjHNnQkHgCDtId0oHS/uN
 986l4fk/+t7jyjEDSRWTZGqLt3Wwl8u2/jZxEaF4btC8eqEb0UbhsTZgDlswOMUoNLrP
 dbeJdY9QdQiMUk2ILC+qveA7wpZvh1V4+EKHFYDsoj4ddJ5EZOfYAslklQZJFAYPa47v
 +oHlyLbgtzGGpLEB7BxRYZhyotS8du9nyT9R0pr8hrRwkZ1F3UIl2ZjBtE9tkwo69Q4F
 PnhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c7gdBnCfXUVdEk0+kfUiSPeP/n95kcBT0Jg/EvmDC6k=;
 b=CAn8aWCE3+MPgXdYIvlHNSpryP3ph9g/V3VN+vmg2+DdqkGTWKC0shiX1jIv94Ijlf
 ZO5XK8EAucEvULIly1xXum4ocuE6navR/n4DlFH1kWtyz1blwhAQ7fA31eZYYSvNKeUp
 P9GoktZR2V2jmKCsg4b2TsssuKDaKy2XlCbggPdmBKYvlwAtRqCePOADlNJjDlntG0SB
 mAdN14eMyyhLG79VHOfjKk4gAm7Ct3DTARJmwIANQpp5Gx/ctRDYD8kolPm/HcJjNrU2
 NMa4MR3NfKkLwCzIJ7OS46zfr9oCaYnOcXj9kOkronfjZcdxfZ1wdWUInRt5wxk5fgVJ
 eXQg==
X-Gm-Message-State: APjAAAUFMX8qpNT5crenJY6UqtU2Efy4Z//C5K0s9Ry7DUUfpEjB8X0V
 3X4WE24fgUj0uhdILF0cMBk=
X-Google-Smtp-Source: APXvYqxOz/9uvGJ/P12+4XHBvZXaZU/GR1k6v2bznXOhiP66kuP2467NKyAsJqLMCm9AwfuOPi+XQw==
X-Received: by 2002:adf:cf0c:: with SMTP id o12mr271925wrj.182.1559169992881; 
 Wed, 29 May 2019 15:46:32 -0700 (PDT)
Received: from debian64.daheim (pD9E29593.dip0.t-ipconnect.de.
 [217.226.149.147])
 by smtp.gmail.com with ESMTPSA id p16sm1835428wrg.49.2019.05.29.15.46.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 15:46:31 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hW7L5-0000yu-7P; Thu, 30 May 2019 00:46:31 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 30 May 2019 00:46:31 +0200
Message-ID: <2143459.csVk10Y2R9@debian64>
In-Reply-To: <20190524212719.30694-1-linus.walleij@linaro.org>
References: <20190524212719.30694-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_154637_202295_4CAE0956 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] gemini: Make a per-board case for
 ethernet MAC
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello, 

I have a few suggestions inline below.

On Friday, May 24, 2019 11:27:17 PM CEST Linus Walleij wrote:
> The DNS-313 isn't the only special board so let's bite the
> bullet and create a case ladder in preparation for DIR-685.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../lib/preinit/05_set_ether_mac_gemini       | 30 ++++++++++++-------
>  1 file changed, 19 insertions(+), 11 deletions(-)
> 
> diff --git a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
> index 1ce5c8067ef0..ebd3ae0f55c5 100644
> --- a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
> +++ b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
> @@ -1,6 +1,25 @@
>  #!/bin/sh
>  
>  set_ether_mac() {
> +
> +	. /lib/functions.sh
> +
> +	case $(board_name) in
> +	dlink,dns-313)
> +		# The DNS-313 has a special field in its RedBoot
> +		# binary that we need to check
> +		CONFIG_PARTITION="$(grep "RedBoot" /proc/mtd | cut -d: -f1)"
> +		if [ ! -z $CONFIG_PARTITION ] ; then
This looks familiar. From afar, this is almost like
package/base-files/files/lib/functions.sh's find_mtd_part with an extra check.

> +			DEVID="$(dd if=/dev/mtdblock0 bs=1 skip=119508 count=7 2>/dev/null)"
I think find_mtd_part's result from above would be the perfect input
for dd if=... 
> +			if [ "x$DEVID" = "xdns-313" ] ; then
> +				MAC1="$(dd if=/dev/mtdblock0 bs=1 skip=119540 count=6 2>/dev/null | hexdump -n6 -e '/1 ":%02X"' | sed s/^://g)"
Isn't this like package/base-files/files/lib/functions/system.sh's
mtd_get_mac_binary function?

What does 

. /lib/functions.sh
. /lib/functions/system.sh
echo $(mtd_get_mac_binary RedBoot 119540)

produce? it should be the same MAC.

if it is you could use the get_mac_binary with the find_mtd_part from above
and get the mac this way.

> +				ifconfig eth0 hw ether $MAC1 2>/dev/null
I guess while we are at it, why not change it to
"ip link set dev eth0 address $MAC1"

in case the ifconfig deprecation ever materializes.

> +				return 0
> +			fi
> +		fi
> +		;;
> +	esac
> +
>  	# Most devices have a standard "VCTL" partition
>  	CONFIG_PARTITION="$(grep "VCTL" /proc/mtd | cut -d: -f1)"
>  	if [ ! -z $CONFIG_PARTITION ] ; then
> @@ -12,17 +31,6 @@ set_ether_mac() {
>  		return 0
>  	fi
>  
> -	# The DNS-313 has a special field in its RedBoot
> -	# binary that we need to check
> -	CONFIG_PARTITION="$(grep "RedBoot" /proc/mtd | cut -d: -f1)"
> -	if [ ! -z $CONFIG_PARTITION ] ; then
> -		DEVID="$(dd if=/dev/mtdblock0 bs=1 skip=119508 count=7 2>/dev/null)"
> -		if [ "x$DEVID" = "xdns-313" ] ; then
> -			MAC1="$(dd if=/dev/mtdblock0 bs=1 skip=119540 count=6 2>/dev/null | hexdump -n6 -e '/1 ":%02X"' | sed s/^://g)"
> -			ifconfig eth0 hw ether $MAC1 2>/dev/null
> -			return 0
> -		fi
> -	fi
>  }
>  
>  boot_hook_add preinit_main set_ether_mac
> 





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

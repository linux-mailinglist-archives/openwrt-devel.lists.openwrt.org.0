Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83194177480
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Mar 2020 11:50:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzUWbOYHTOYoMUMka+BpY3IM4RlAqvyHVxH1RzGoeyM=; b=Ea6ZS9k52tznF2
	cmmPkfh46XWK/ivK8yf6naqB2H43x5fWX/HVd+wnA3N2GLrP9ctkVUkIh97kO3ynw3ROajryrrttB
	h1LywhXUhNPpwd8myobIKuyoUGM354lOOa8wkRrx+4xvaXBwD+YRGniTpQLjOV4lXsplLw+k4QuI4
	XJGmwfSaD8GNOSGfYBaYRcdrJa4P2EoqcGnjcxZ0CcMCcMX6Q+qc650TDMRRei47/1U4f36tW1Ty1
	i3ZiYQZ2jKDAy2Nz/z+adOsc4qHpKWImNURQKGwYgf+8iSRvDCjWJvGzDlB/pwOu29No6hN07Bc9z
	GAU+qUwNTQixm+jSJfUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9585-0000IK-AH; Tue, 03 Mar 2020 10:50:25 +0000
Received: from mail.tintel.eu ([2001:41d0:8:1644:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j957r-0007Wp-4L
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 10:50:17 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 53BBD472FE52;
 Tue,  3 Mar 2020 11:49:48 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id S6YEgpv7YHH0; Tue,  3 Mar 2020 11:49:47 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 94F11472FE54;
 Tue,  3 Mar 2020 11:49:47 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 94F11472FE54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1583232587;
 bh=f9mFgEMSh8FOgRv1CA86oE2RNUGO5hhwdONRS3Alzh0=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=XuVnvSkOJrimc78snR41XWhujBiu5tEoBcxZe2OXXMQ34FgHDRdqvsvxmAb+HhJI0
 vCazcpqUJ56s3ASZ/73StvRgwAsxKPJcDSnDLFOQZYkOLbbOOUhstmyYEgHvbmZU0p
 AibnAh6t69GYBWk8rbdDZTlJZfj8m+ZBmglm2z1M=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id OBiHP_WHAZCC; Tue,  3 Mar 2020 11:49:47 +0100 (CET)
Received: from [IPv6:2001:67c:21bc:24:92a0:d683:3fa4:10c7] (unknown
 [IPv6:2001:67c:21bc:24:92a0:d683:3fa4:10c7])
 (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 0924B46D19A2;
 Tue,  3 Mar 2020 11:49:46 +0100 (CET)
To: Tim Harvey <tharvey@gateworks.com>, openwrt-devel@lists.openwrt.org
References: <1582909004-2383-1-git-send-email-tharvey@gateworks.com>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <3aa97de0-f938-cf78-1b1a-9c8307ee0569@linux-ipv6.be>
Date: Tue, 3 Mar 2020 12:49:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1582909004-2383-1-git-send-email-tharvey@gateworks.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_025011_496947_CE13AFB9 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: can: add MCP251x CAN controller
 module support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 28/02/2020 18:56, Tim Harvey wrote:
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  package/kernel/linux/modules/can.mk | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/package/kernel/linux/modules/can.mk b/package/kernel/linux/modules/can.mk
> index c2c7411..3bf0359 100644
> --- a/package/kernel/linux/modules/can.mk
> +++ b/package/kernel/linux/modules/can.mk
> @@ -146,6 +146,23 @@ endef
>  $(eval $(call KernelPackage,can-gw))
>  
>  
> +define KernelPackage/can-mcp251x
> +  TITLE:=MCP251x SPI CAN controller
> +  KCONFIG:=\
> +	CONFIG_SPI=y \
> +	CONFIG_CAN_MCP251X
> +  FILES:=$(LINUX_DIR)/drivers/net/can/spi/mcp251x.ko
> +  AUTOLOAD:=$(call AutoProbe,can-mcp251x)
> +  $(call AddDepends/can)
> +endef
> +
> +define KernelPackage/can-mcp251x/description
> + Microchip MCP251x SPI CAN controller
> +endef
> +
> +$(eval $(call KernelPackage,can-mcp251x))
> +
> +
>  define KernelPackage/can-raw
>    TITLE:=Raw CAN Protcol
>    KCONFIG:=CONFIG_CAN_RAW

I would have preferred if the name of this new kmod package included the
bus type, as with the kmod-can-usb-* packages. I actually had this one
queued in my staging tree as kmod-can-spi-mcp251x. Also, does AutoProbe
work for devices attached to the SPI bus?

Stijn


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

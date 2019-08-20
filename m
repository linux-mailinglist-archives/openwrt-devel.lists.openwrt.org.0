Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D1A969C6
	for <lists+openwrt-devel@lfdr.de>; Tue, 20 Aug 2019 21:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ld9SYi/1xDbEcmsEYgqfgQbq2o8b6NJSeTDWVGeYRXQ=; b=KzJsZ4hdWNniLN+c7bIns/P6J
	5rlTnOB+GpRr6wpPJfnXN81S7jbSAxK21WlrjlcudzeKz6DskVMgl+2h9Oq922WB2VAV9BYx1vhld
	ySx2RWtIMfQ+hNHq2/R7oZNKZRJmdXmDHBsfxQhI6eoBFbnDgOulMNj8ixiL4vzsAyyy5kGhidPij
	ho1mQ3lM93b6rx2M1VmheR7NZnjgjd8aBQ4CR32jtI6rWtPjpA7AAB6JVUHh02VDC5qfLGI3mg12z
	bixwaOXQ4k2LFoKMwiNdWC58XjiVXCTTvmW830o7dfO3GWj/6Zym7iw4+wGJKc/eU02CF4bowwrrr
	edI/a237A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ABJ-0006iK-CU; Tue, 20 Aug 2019 19:52:37 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ABD-0006hq-5k
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 19:52:32 +0000
Received: by mail-wr1-x441.google.com with SMTP id t16so13613453wra.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 20 Aug 2019 12:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=0HwZb7VsS7e+/y9SxdPZvyZzwiTJ7sn0lctyUp/zPt0=;
 b=q/zgndZZ6tssDg5veWJd99/MR3eYdZCE+bnCrVB3xKg1bTPIY0qZeU9sNlRHXIW8Wj
 M7fXz2gmtvEoB96SkfJrxFUZUchcaC8EM5k4gfjglZ4aM0TZQ0Dz3gy+sjUktejb56Gx
 4ZSHbTIOH0YOtBTpNBVE36vN2PYmta2TecqlqtCSAxtZd9EG0Jlc/JqEDSd6gW3Wt1L/
 Rv07CtPS6HQq0jv/tgUnWXE38rd1Io9zFYY12djq/8acDu5naz/qW6nj8yB2eBp+FUgj
 z2fpeuZ8VlYZiEiIXxuyXcT0q8jj9SidPk+WtiefEPM+NxWGmfETV1qLQ3c5rpTaO7W1
 Qj1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=0HwZb7VsS7e+/y9SxdPZvyZzwiTJ7sn0lctyUp/zPt0=;
 b=pByhKIAFPGo3CQ/D9SzcLBFJ8XMRqsmkcOLkzEsuSFwPwOqU9R+RrQqWF7EnyxEygW
 e6QkcfMlgFc81JLHtcV71zghgCfp+k1TQ7SdtXQ7s8Pn+Qb+Jn6xMZn4e419kW888V7d
 GSs1fDG5sLHtNiyrotE+QhffD637VDlSZvhDwcKDvLmglD19C/+tBXIGlLjuwJQs29ws
 yDKpnzVA3IxRTmiObo5zlcN1oXUEhoc3OsefQ10VFv4Ec6scfTKVBwJIIIG+/zVaXYw1
 rkkQHr7AcAxwJanljpgolcZ+mspWLAEoB1C6kNlJVVsXg7bOXLQvSdjmN2bLNEETC9FE
 nL6g==
X-Gm-Message-State: APjAAAUKr+ZKcgFSPAS+ofFJyrF6P+2N8wqiTgX1NtNTJMYOI+VLfWup
 in0Hp2UrQrsbSSEEm/VZOa0=
X-Google-Smtp-Source: APXvYqzON2OXe1J+dcTAPSz3kNBj9XHHLjXaG/dzoyvhmNtenMegnyymgsRz8GuBPdp6QXzhRR8B4Q==
X-Received: by 2002:adf:e78c:: with SMTP id n12mr35334960wrm.83.1566330749320; 
 Tue, 20 Aug 2019 12:52:29 -0700 (PDT)
Received: from localhost.localdomain
 (host215-91-dynamic.45-79-r.retail.telecomitalia.it. [79.45.91.215])
 by smtp.gmail.com with ESMTPSA id x6sm902158wmf.6.2019.08.20.12.52.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 12:52:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 19ddd7f8;
 Tue, 20 Aug 2019 19:52:26 +0000 (UTC)
Date: Tue, 20 Aug 2019 21:52:26 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Yousong Zhou <yszhou4tech@gmail.com>
In-Reply-To: <20190820135159.15632-1-yszhou4tech@gmail.com>
Message-ID: <alpine.LNX.2.21.99999.352.1908202151110.8021@localhost.localdomain>
References: <20190820135159.15632-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_125231_245464_BEC87B86 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Northbound
 Networks Zodiac GX
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
Cc: openwrt-devel@lists.openwrt.org, paul@northboundnetworks.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,
thank you for your work guys! It's very good to see vendors helping out in open-sourcing firmware / support for their devices.
Just a single / simple question: does the device provide for any recovery procedure?
If so, may you list them in your commit?
Thanks!!

Enrico

On Tue, 20 Aug 2019, Yousong Zhou wrote:

> Date: Tue, 20 Aug 2019 15:51:59
> From: Yousong Zhou <yszhou4tech@gmail.com>
> To: john@phrozen.org
> Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org,
>     paul@northboundnetworks.com
> Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Northbound Networks
>     Zodiac GX
> 
> Hardware spec
>
> - MT7621A dual-core 880MHz
> - 16MB Flash
> - 256MB RAM
> - 5 GbE ports
>
> Vendor device page: https://northboundnetworks.com/products/zodiac-gx
>
> Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
> ---
> .../ramips/base-files/etc/board.d/02_network  |  1 +
> .../dts/mt7621_northbound_zodiac-gx.dts       | 97 +++++++++++++++++++
> target/linux/ramips/image/mt7621.mk           |  9 ++
> 3 files changed, 107 insertions(+)
> create mode 100644 target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts
>
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
> index c0de9d4e50..2e3e5fbba7 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -392,6 +392,7 @@ ramips_setup_interfaces()
> 			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
> 		;;
> 	linksys,re6500)
> +	northbound,zodiac-gx)
> 		ucidef_add_switch "switch0" \
> 			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "6@eth0"
> 		;;
> diff --git a/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts b/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts
> new file mode 100644
> index 0000000000..51f2298d06
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts
> @@ -0,0 +1,97 @@
> +/dts-v1/;
> +
> +#include "mt7621.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible = "northbound,zodiac-gx", "mediatek,mt7621-soc";
> +	model = "Zodiac GX";
> +
> +	aliases {
> +		led-boot = &led_status;
> +		led-failsafe = &led_status;
> +		led-running = &led_status;
> +		led-upgrade = &led_status;
> +	};
> +
> +	chosen {
> +		bootargs = "console=ttyS0,57600";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led_status: status {
> +			label = "zodiac:green:status";
> +			gpios = <&gpio0 15 1>;
> +		};
> +	};
> +
> +	gpio-keys-polled {
> +		compatible = "gpio-keys-polled";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		poll-interval = <20>;
> +
> +		reset {
> +			label = "reset";
> +			gpios = <&gpio0 18 1>;
> +			linux,code = <KEY_RESTART>;
> +		};
> +	};
> +};
> +
> +&spi0 {
> +	status = "okay";
> +
> +	m25p80@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <10000000>;
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			partition@0 {
> +				label = "u-boot";
> +				reg = <0x0 0x30000>;
> +				read-only;
> +			};
> +
> +			partition@30000 {
> +				label = "u-boot-env";
> +				reg = <0x30000 0x10000>;
> +				read-only;
> +			};
> +
> +			factory: partition@40000 {
> +				label = "factory";
> +				reg = <0x40000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@50000 {
> +				compatible = "denx,uimage";
> +				label = "firmware";
> +				reg = <0x50000 0xfb0000>;
> +			};
> +		};
> +	};
> +};
> +
> +&ethernet {
> +	mtd-mac-address = <&factory 0xe000>;
> +};
> +
> +&pinctrl {
> +	state_default: pinctrl0 {
> +		gpio {
> +			ralink,group = "wdt", "rgmii2", "jtag", "mdio";
> +			ralink,function = "gpio";
> +		};
> +	};
> +};
> diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
> index d32feb7eab..e52b1eba19 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -464,6 +464,15 @@ define Device/netis_wf-2881
> endef
> TARGET_DEVICES += netis_wf-2881
>
> +define Device/northbound_zodiac-gx
> +  MTK_SOC := mt7621
> +  IMAGE_SIZE := 16064k
> +  DEVICE_VENDOR := Northbound Networks
> +  DEVICE_MODEL := Zodiac GX
> +  SUPPORTED_DEVICES += zodiac-gx
> +endef
> +TARGET_DEVICES += northbound_zodiac-gx
> +
> define Device/phicomm_k2p
>   MTK_SOC := mt7621
>   IMAGE_SIZE := 15744k
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

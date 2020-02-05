Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F53E15364F
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 18:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbhxOUgD8PIbqVZJS9TrO1Vt2rQKYM+RymkRU/bCtE4=; b=Q7ia6JWUu5O7Fg
	CWHygZ+cPd98FmNQuXOjSskruI1OsTLTK17BrfoDRl3EciBZVaFSFT9XMCx1B3m9J/PshzGLE5TKa
	NByAxSKrfI+N8Mb6DRaQ9q3gLXKne1wdeexbjQ+Gu2P38x6CBzOefxpwE0iUm2010E3YlzrFnz7Vn
	pbjk7WBfT6Po51Ps6h10WJLw3RKqIEeDXo6MKhc9b5AQy+xd5gmFz0zGy6JWID/3YGpCNBGMa/RFN
	xhD4wlIM0JDRrdbaCTumx4FazOP9OOPUaAwL7eV0wG4WeQka/NHO5dcRYZGUeYV0nJNKayVGdZ1/r
	GGhj8gRGouHZ23brMU4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izOPA-0006LN-7z; Wed, 05 Feb 2020 17:24:00 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izOP0-0006L4-V9
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 17:23:52 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MqJuN-1jKvVQ0GpP-00nSYT; Wed, 05
 Feb 2020 18:23:47 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Daniel Golle'" <daniel@makrotopia.org>, <openwrt-devel@lists.openwrt.org>
References: <20200205170651.GA879610@makrotopia.org>
In-Reply-To: <20200205170651.GA879610@makrotopia.org>
Date: Wed, 5 Feb 2020 18:23:46 +0100
Message-ID: <00d401d5dc49$062096a0$1261c3e0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQFpItzt0sW1W2ThBmMl3plCjORfTajmSeDg
X-Provags-ID: V03:K1:e/WtGjm0CfZz1OLlw4pRecWeSrrUj10BcBQewtMW2HkgkALGP7p
 9xC0fhqS8kVKkUqPbSGeslUKQRAQ2jWuHUWT1oYVIf/49NQB3xv7WMx/HQIMcf9rL7Yy7fI
 WNFhEjhX261FHzHt5m7qN5bx0VRLx1FUtKMWTTW0seez6mm0PhDGEqgNj+xHnz37YnnXFjo
 KSUQzlj+TiG2ldXW7nCGA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GG+JDBubYLk=:9MA7XLLVayuO6zH0TlfNqL
 xf4lqYemzYZiUU0x7tdELwW7TBgYWL2awermi7q2NuGHgXXDfKK1RTWdenjZnoG2CYrLmY2N5
 19Gn1X2CYtsbRcvHopBS2XNg1Rq8NUWJBsMe7GeVbAhzo/qQC5fUPOevinZZD0A7eEkg8YZXl
 OAURAbFyRDHf221uiMKsDdvGbUCKIFoPC17d/Fh228lTEmPM7Bm1kwhEUaZ2T6tPX/2nQX0f5
 yPK8ChQnau5bkbRqZLUR5gJ2nPEaLgYPF4a4dk395fL3il6FQs3tNg8MnX7m0UFPN7hwuNZik
 ZseRgmBoD6jb47GOHUZx5uQ4iv6lmsozakvWQxa05BmMALuWbI46+TjedKWID3Wem3CuKx0TX
 4uUaq1EMjOUWR8aVYOdGUACNlwBTI5nCNCzc9VYcU/PRmfNfVqUq5l0KgbAr+xJhGjvoiFICm
 yOMLDwoCfrjlT8YU7IcR4lXN/z8UONLFwAMDU45m4wunxshkkTqY+SlaYngLxHEJqOnInAE1U
 /H1UidCRiUpeYJuNw3PgNWDaWrBQkRhtLZlwUSLWcQuvVPrLyj7VrnrstrCZMVyQR6TDdVOHx
 DNVDUGMaKB89zmICPpw2A6OVhjhflD2Ui2EliGV+u1p4sKeVPXU+7M0baXoQwfVmI2kQT9CJC
 9GeksrJDN5vNO+dQyQZoMKTd8Z2SUxPEZ1y7y7ozAu1cJe7BmEjv3S+itTMGFW7SOZlo2PgFZ
 lPBEWbETE+R+0qP562SAnI2Gve/EihBRs/q1KaGbWhGQl4pudyQKRDNnesLZWwvlko+zP3Yip
 RTB02g6Q0/jYSCb3J/9b73LBW6AHkI25gbBOVul+D3+GVfp2fHO2/by31xWsgIAJ2Hawds1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_092351_291926_A5EAE5DE 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] ath79: add support for Teltonika
 RUT955
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
Cc: 'Piotr Dymacz' <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> +	leds {
> +		compatible = "gpio-leds";
> +
> +		signal0 {
> +			label = "rut955:green:signal1";

Still signalX not matching here.

> +			gpios = <&gpio_ext 0 GPIO_ACTIVE_HIGH>;
> +		};

[...]

> +
> +		led_system_green: system_green {
> +			label = "rut955:green:system";
> +			gpios = <&gpio_ext 6 GPIO_ACTIVE_HIGH>;
> +			default-state = "on";
> +			linux,default-trigger = "phy0tpt";

tpt trigger to the system LED? Don't think that would be really helpful, maybe
one can use one of the signal leds for that?

> +		};
> +	};
> +

[...]

> +define Build/teltonika-fw-fake-checksum
> +	# Teltonika U-Boot web based firmware upgrade/recovery routine
> compares
> +	# 16 bytes from md5sum1[16] field in TP-Link v1 header (offset: 76 bytes
> +	# from begin of the firmware file) with 16 bytes stored just before
> +	# 0xdeadc0de marker. Values are only compared, MD5 sum is not
> verified.
> +	let \
> +		offs="$$(stat -c%s $@) - 20"; \
> +		dd if=$@ bs=1 count=16 skip=76 |\
> +		dd of=$@ bs=1 count=16 seek=$$offs conv=notrunc

Maybe change to bs=16 count=1 for both? (Don't forget seek_bytes/skip_bytes
flags in this case.)

Best

Adrian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

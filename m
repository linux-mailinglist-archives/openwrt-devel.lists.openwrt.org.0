Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E160614F294
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 20:12:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUTVdUYrJIRbGnx7UqAyo15mlapWgXfWziRFX/uLXcE=; b=VEvB0s2bYdsRF9
	XiigogbrxFXgzD6ABTiz5W1mE0rF8JC1Vfa91+bFznHnlftolBANXeuGmlIW7yrKbD9y75iRZJcG3
	mXNJnfjrQuSn8SSTTpApZiN8j/TT7hOhDVVDTbcbBpMw7OG6CGZX7N11aC3H/L8HJPpGYyOUQCP8u
	sDm0J1K1L2j4xKUaTehaJGVXphuD+DsFNjCm42jAzmdU+QxW/Ys3o369sH5ZYO+55TUvd4tpYzlFe
	e0QtkZt9j7NQFuNxZAVK+2XhZzvjX6g33aypfIQWxvsgFvhIMQXWUtjeQK4qPTs8RTyb7HizdFxmd
	UzMkZNS41gZSwj7Xt8Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixbiU-0005JG-Uw; Fri, 31 Jan 2020 19:12:34 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixbiN-0005Iv-KN
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 19:12:29 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MSqbe-1j7wXO1nB8-00UFhX; Fri, 31
 Jan 2020 20:12:24 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>, <openwrt-devel@lists.openwrt.org>
References: <20200131154620.25773-1-tomek_n@o2.pl>
 <20200131154620.25773-5-tomek_n@o2.pl>
 <010401d5d84f$cc88c8b0$659a5a10$@adrianschmutzler.de>
 <55432b84-6089-6701-cf72-d7b64c95b793@o2.pl>
 <019601d5d866$f0f5c4c0$d2e14e40$@adrianschmutzler.de>
 <3824a008-0848-0ee6-9f97-fe7fc6136046@o2.pl>
In-Reply-To: <3824a008-0848-0ee6-9f97-fe7fc6136046@o2.pl>
Date: Fri, 31 Jan 2020 20:12:24 +0100
Message-ID: <019801d5d86a$5eb37590$1c1a60b0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQIg9Z1HjtTSr13X0aN4mb1BSdO/fgGAo88YAV8LIz4CQuQQCwJo2YVlAeOcxbqnI3CHwA==
X-Provags-ID: V03:K1:sp2dQElU4uH/SrQXd5WGiyxH3ehR1Mu4J715R09LUlGULPxXYza
 oBZkdE8oisu2SLD5sKSyWrrfxxdGdqInCfwc+f35sDnGLsVdD8C+8s2YxtsI4ey49KFeklj
 Fzb4/nuHu8Z6zoQpYoGeFzVfUVcAI3zwkd++wYiQe4aP9yM0mHPZfh9RaVp+PNA+pphpnER
 +KTwAQH5W7kqFuiJXsZpw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1GvlQglFTjA=:4/HdOOd95DmeMyFLtLt4np
 fZ3q99O1iHSOXywqa5bcdqan+CpYqbbKTpeVLyUx0P3kftKnfbw6XRtxDUslmkrysrmU6msVq
 kJ6E9fF6hlkm2p2wMauyE4B3eZVG5NFg/r0kPuhpjAGs1Tqcb3Honsv/gI2eGk1pPCq0+oauC
 T0uuAI/O3K7jExyYsD8W++B9YKQ71g9iMS8tDcYiAAT1t6ave2/KMrVCIWXcldFhD+lrZSCOI
 21JMwtPUzipZP4KJ73Ry5lAw62kmT2s7vDc+NXSzeWAHYCuO4a/k1tB78QhH2hSQLc09BzhwM
 CnsmxfogXIlf0Olm9g3Mb+xRb/vebNvCfLYu0HxblsgQ3Ml7DjriwXxk9HlboI75mwKNL7pYC
 NB4qiSBSbbb0Ihjwn8h2mz4vKMb/n2oWsi3PBRyz0XO/aX94hG0rjymJFSPKxYN/inJZH1Uw+
 0Bk05Um5Z8i5xYlU7T29742SLeYEMQXuHfuvkcLNviw+VyrienZwmllLNYH/rbSJD+2IzPX69
 QLv95rZBQybUiKv6XIaNWhDvDKeo6D63QEOsytM+7ICDFZK+r/xkeQZ1uL4c03YwnN+hv+lrV
 CHuVGZLSECCja3D/L34xpO3sf71TRVdTeQW0rmjca+65rfnYDkjgFIvYpPUugD/AgB4AiUcKO
 t8t0cmLP1RZV4JuX42HQxkdHW+p864ixch8T2gNsnppi55q44uJjumF96R9xSqi9ScL64FBIF
 xoYtUKW775WUKThQEbRNM/SMsGaEH5/qa68XVJmyOyv0EoBBNeVGCoWGwWm75MbMZ+pD7LDgC
 Fxla6gathlIYhR2uMueBLb+l9tnetF/uZ2b7abjU5VC7zVbt9fNYyh7SMuUqqRBEZlgR4MR
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_111227_957017_67F6DF04 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 4/8] mvebu: image: keep global DTS_DIR
 intact
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

> Ok, will send this as part of v2.

I will mark 3/8 as rejected.

I'd merge 1, 2 and 4 tomorrow or on Sunday, so if you want to wait for additional input on 5-8 you can also only send the former as smaller v2 patchset.

Best

Adrian

> 
> Regards
> 
> >
> >>
> >>> DEVICE_DTS_DIR and DTS_DIR might behave differently
> >>> when it comes to includes in DTS files.
> >>> That's why I couldn't replace SUNXI_DTS_DIR with DEVICE_DTS_DIR when
> >> touching
> >>> this some months ago.
> >>
> >> The issue might stem from DEVICE_VARS defined inside the profile, which
> might
> >> be exported too late? I'm not so good at Makefile syntax so maybe others can
> >> comment on that.
> >
> > For sunxi, no. There the problem is that DEVICE_DTS_DIR is present in
> conditions in image.mk (or one of those files), and the device setup in sunxi itself
> assumes that subdirs are part of DEVICE_DTS. But this effectively might be a
> separate issue, as it is connected to the setup in sunxi.
> > It's not easy to fix that in a proper way.
> >
> > Best
> >
> > Adrian
> >
> >>
> >>>
> >>> Best
> >>>
> >>> Adrian
> >>
> >> Regards
> >>
> >>>
> >>>>
> >>>> Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
> >>>> ---
> >>>>  target/linux/mvebu/image/Makefile | 2 +-
> >>>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/target/linux/mvebu/image/Makefile
> >>>> b/target/linux/mvebu/image/Makefile
> >>>> index d9e4b1acce..ae4d3b9594 100644
> >>>> --- a/target/linux/mvebu/image/Makefile
> >>>> +++ b/target/linux/mvebu/image/Makefile
> >>>> @@ -91,7 +91,7 @@ endef
> >>>>
> >>>>  define Device/Default-arm64
> >>>>    BOOT_SCRIPT := generic-arm64
> >>>> -  DTS_DIR := $(DTS_DIR)/marvell
> >>>> +  DEVICE_DTS_DIR := $(DTS_DIR)/marvell
> >>>>    IMAGES := sdcard.img.gz
> >>>>    IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip
> |
> >>>> append-metadata
> >>>>    KERNEL_NAME := Image
> >>>> --
> >>>> 2.25.0
> >>>>
> >>>>
> >>>> _______________________________________________
> >>>> openwrt-devel mailing list
> >>>> openwrt-devel@lists.openwrt.org
> >>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >>>
> >>
> >>
> >> --
> >> TMN
> >
> 
> 
> --
> TMN


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

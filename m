Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAF51E0AA5
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 11:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c6jPci6p80SZnt0NZl09xrTBlXgk9KU1pTSj/Lpg9eo=; b=DwLQ/E8yYPm1a4nTRGeqRoEG/
	K0Dt+FMGbjZqApWFg3hdxDwZq49+1CWeTbN9Aba6p+scHbCMJF4sfH8VJPA7UYWfaSgwZyzf5PLjY
	luokDpw9ZXMkx67fenBHgR+flpozVYTged3i0a2K+BtPhm0tptiGGt+DvptkbFPdCEBJ1ZFHj8IyQ
	qmwMkkTIGESri35LeG1XG3hwzvmZ4lf7PbIh/61TSm67csZj0lYBoch8n9XYj5y5QfUoZztWxgcKm
	rF6l6Ki7X5TtOT4uxN96/840/EnDk8o1bUecb/RVPGK3xC5neINYlwQleOD19giukyZOTDmEF9dnb
	4CEaGeUWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9TD-00020i-G1; Mon, 25 May 2020 09:32:31 +0000
Received: from mail.as201155.net ([185.84.6.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9Oa-0003uI-DT
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 09:27:48 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]:39664
 helo=webmail.newmedia-net.de)
 by mail.as201155.net with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.82_1-5b7a7c0-XX) (envelope-from <s.gottschall@dd-wrt.com>)
 id 1jd9OT-0002hK-0v; Mon, 25 May 2020 11:27:37 +0200
X-CTCH-RefID: str=0001.0A782F27.5ECB8F3C.0059, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=183n2q30X9kt5G1Y+EJed/eLG0YBkkzBC4KGB3jOM8E=; 
 b=CpCBJMCjF0CH1RHbOed5fvJfZz5JbQs6vDFdd0ehaqdRUCA2u+P2ai4e9llzsjTejNUcloORBir7nOCARXV0gCn0F/Od3Q0TrzQGiWH1S9A1adgueSsV7cbsyOFWRv7C1eOWOT5YJSnAAOEGvIyxc5sget8tv/TRyb+h+ogMajU=;
To: Sven Eckelmann <sven@narfation.org>
References: <1523027875-5143-1-git-send-email-kvalo@codeaurora.org>
 <2468724.JaAZLprVu6@bentobox>
 <b23e65cf-4be7-72db-7955-32eae196953e@dd-wrt.com>
 <3608947.bSrYYtX6KI@bentobox>
From: Sebastian Gottschall <s.gottschall@dd-wrt.com>
Message-ID: <309af858-7e38-17fa-a1db-6b9ce8544ef5@dd-wrt.com>
Date: Mon, 25 May 2020 11:27:34 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101
 Thunderbird/77.0
MIME-Version: 1.0
In-Reply-To: <3608947.bSrYYtX6KI@bentobox>
X-Received: from [2a01:7700:8040:4000:a1fd:236:8557:c23a]
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <s.gottschall@dd-wrt.com>)
 id 1jd9KM-00053m-6T; Mon, 25 May 2020 11:23:22 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_022744_707028_F9071053 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v13] ath10k: add LED and GPIO
 controlling support for various chipsets
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>,
 Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 openwrt-devel@lists.openwrt.org, Ansuel Smith <ansuelsmth@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


Am 25.05.2020 um 11:22 schrieb Sven Eckelmann:
> On Wednesday, 20 May 2020 09:39:45 CEST Sebastian Gottschall wrote:
> [...]
>> could somone clarify the state here and why it was dropped?
>> the original patch i wrote does exclude the soc chipsets, but the patch
>> was later reorganized and some part have been rewritten
>> so i'm not sure if it covers the scenario mentioned here, which i did
> [...]
>>> This patch was imported to OpenWrt in commit 61d57a2f88b9 ("mac80211: ath10k
>>> add leds support") and broke the 11s support for IPQ4019 and QCA4019 (5GHz)
>>> firmware versions 10.4-3.5.3-00053, 10.4-3.5.3-00057, 10.4-3.6-00140:
> Just noticed that there was a copy and paste error in my message. The 5GHz was
> an QCA9888 [1,2] and not an QCA4019. Otherwise the _pci error wouldn't have made
> any sense.
>
> And I can only say at the moment (remember that this was observer 14 months
> ago), that it could be reproduced easily on IPQ40xx with an QCA9888 and the
> given config running OpenWrt reboot-9440-g0f89c17b57. The diffconfig (seed) of
> the installation was:
>
>      CONFIG_TARGET_ipq40xx=y
>      CONFIG_TARGET_ipq40xx_generic=y
>      CONFIG_TARGET_ipq40xx_generic_DEVICE_openmesh_a62=y
>      CONFIG_ATH10K_LEDS=y
>      CONFIG_PACKAGE_ath10k-firmware-qca4019=y
>      # CONFIG_PACKAGE_ath10k-firmware-qca4019-ct is not set
>      CONFIG_PACKAGE_ath10k-firmware-qca9888=y
>      # CONFIG_PACKAGE_ath10k-firmware-qca9888-ct is not set
>      CONFIG_PACKAGE_kmod-ath10k=y
>      # CONFIG_PACKAGE_kmod-ath10k-ct is not set
>      # CONFIG_PACKAGE_kmod-hwmon-core is not set
>
> And it still can with this OpenWrt version. But it doesn't seem to happen with
> the most recent OpenWrt reboot-13353-gb1604b744b. But there are nearly 4000
> commits inbetween. So no idea what changed (just a timing thing or an actual
> fix - no idea).
>
> Btw. the wireless config was given in the original mail [2,3]
>
> Kind regards,
> 	Sven
maybe openwrt installs a default trigger which doesnt make sense if 
nothing is connected to the cards gpio.
we can also modify the patch to exclude the 9888 from led support. you 
just need to remove the led_pin defintion from the hw definition.
this patch is mainly for wireless routers like the netgear r7800, r9000 
and some tplink archer models. it also works on mikrotik qca988x cards.
but even if the led_pin is set, it should not trigger any action until a 
led trigger is set with sysfs. such configurations should be 
architecture specific in any way

Sebastian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A09130F82
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 10:34:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hTeif3A8868ADI0n8a4irjaBFxY/rJqp/eLXowdZWYU=; b=krPqLhJd7oFCylgc1LTx/oYdG
	7QmJBNuPHy7997LG49lCxlA+RlcbtaFVyfFOYSsKRs6kq7WPPpGhIa/tNBHTkbNieBnCmxqzv1v1r
	dyqv77JxNmxsXm02N//i280jZxFYoK9cWO+JV6itC+l6IMcJnSnDh7bDSeCvpfKV25b5ifmz+yPoW
	aSMAIwtN4ktXeyf/EvSqKLmJDyrGbrQraOoWWDXRPhFhiaSCh0LERO6Iiw8oatLWv8qUeBFsRbXtb
	SflpFboUT1NDe4kIZEKto17afp3IgcjNs44HtX99QyctKUroNMt8kVRBZdcyaa2UgONILPW8XvH6W
	++GwJ3fHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOm2-00010E-Am; Mon, 06 Jan 2020 09:34:10 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOlp-0000yb-8X
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 09:33:58 +0000
Received: by mail-wm1-x342.google.com with SMTP id d139so11564177wmd.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Jan 2020 01:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1AUwVuT8AM+b9QHnYOBohLoKYOfDKT036r3LFoLATy4=;
 b=X8K8PwirjqmEJNuIsN9mZjzISY7n/40VVypqcOOEHiozsADWaoUgvVSsHgs7GNGYi5
 +D5c6AWJmnoE8Oe7473z4eqzYd9DoFm7m9GI1SxspL2FieA7yUBu9rhYxDZW7hR9iGaf
 7snefvcJCnmM2Wwuc+VfMLkdTtmjj765KIegC2BSYWsBYMWwtkMVDzWgcM/gTvX4tMUU
 py+vKKuD/X8EdeLvJ2/oYGV90FC4uqGqTzktxK+R9uOrtDvbCV9v2R9muH9ZnFzdYG5Q
 +iVG4odb6ZfZNu1xWn8t3zcA0114qPp6H5FfrHK+pgid+doECsGAcaB961ZXoBTT6BVh
 hqXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1AUwVuT8AM+b9QHnYOBohLoKYOfDKT036r3LFoLATy4=;
 b=t2ImozHfUSb6TdduWQQGG6o4O1fiTJO8W34spDt8DoT+dgUzj8gBs440DVk6J+useU
 dHKdMaXbH6RJlO3mVm+wEBDWfyRcS3ySitHoIvcOInqsYjupe8bYYcokLrCuI/xcvPSj
 +c6NBj8TGamgG6BBA4740gMtqPJnd+HlUnmR4o5xp3A1ejskjrRofWvLHF3emDgFLblL
 FyNRNgz72vO6l5WsaumE5VO8TmSPY+Qviqq22R5EMn3f6ge5AOAc949//VAom0C6WVwc
 oeCm11HWOYfj1CNzLYzHxVU7X3/Llc68Em5gKcOxuAWTt0H422FasCwvsA5UWpc6WOkn
 bklw==
X-Gm-Message-State: APjAAAV/9zFXhBGGKX1RP9IkTS1QAP6+vepz/XX8v1+Jz0QF6dqUM8PZ
 IlYUNBt9vgXvtOC8KDKeQBpksA==
X-Google-Smtp-Source: APXvYqxlcvqBwYlyh3XS8YLqTSKpNP7/mLjEwk05/8scxLjXZ87dLBH4HMa2f87zoq+VFqifcwe6BQ==
X-Received: by 2002:a1c:2504:: with SMTP id l4mr33687234wml.134.1578303235297; 
 Mon, 06 Jan 2020 01:33:55 -0800 (PST)
Received: from ?IPv6:2003:ec:2f0e:7600:f8ce:236f:3521:251?
 (p200300EC2F0E7600F8CE236F35210251.dip0.t-ipconnect.de.
 [2003:ec:2f0e:7600:f8ce:236f:3521:251])
 by smtp.gmail.com with ESMTPSA id h2sm70976657wrv.66.2020.01.06.01.33.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 01:33:54 -0800 (PST)
To: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
References: <20200105141756.23473-1-hauke@hauke-m.de>
From: Mathias Kresin <dev@kresin.me>
Message-ID: <93c68973-35b9-2dd1-70fb-2d15c12fa8ec@kresin.me>
Date: Mon, 6 Jan 2020 10:33:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200105141756.23473-1-hauke@hauke-m.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_013357_347348_EED346F4 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: Fix sysupgrade for Xiaomi mir3g
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
Cc: mail@adrianschmutzler.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

05/01/2020 15:17, Hauke Mehrtens:
> Without this change sysupgrade from 18.06 to 19.07 is only possible with
> the -F option.
> In OpenWrt 18.06 the nand_do_platform_check() function is called with
> the board name mir3g only, if the tar does not use mir3g it will fail.
> OpenWrt 19.07 and later support the metadata with the supported_devices
> attribute to allow renaming. Do the renaming of the target between 19.07
> and master like it is done for some other boards.
> 
> I tested the following sysupgrades successfully without -F
> 18.06 -> 19.07
> 19.07 -> master
> master -> 19.07
> 
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
>   target/linux/ramips/image/mt7621.mk | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
> index 7eb59188fb..39017a48e1 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -269,7 +269,7 @@ define Device/xiaomi_mir3p
>   endef
>   TARGET_DEVICES += xiaomi_mir3p
>   
> -define Device/xiaomi_mir3g
> +define Device/mir3g
>     DTS := MIR3G
>     BLOCKSIZE := 128k
>     PAGESIZE := 2048
> @@ -282,12 +282,12 @@ define Device/xiaomi_mir3g
>     IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
>     DEVICE_TITLE := Xiaomi Mi Router 3G
>     SUPPORTED_DEVICES += R3G
> -  SUPPORTED_DEVICES += mir3g
> +  SUPPORTED_DEVICES += xiaomi,mir3g
>     DEVICE_PACKAGES := \
>   	kmod-mt7603 kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic \
>   	uboot-envtools
>   endef
> -TARGET_DEVICES += xiaomi_mir3g
> +TARGET_DEVICES += mir3g
>   
>   define Device/mt7621
>     DTS := MT7621
> 

Wouldn't it be the easiest to force the name used for the directory in 
the sysupgrade.tar to "sysupgrade-mir3g", to be compatible with 18.06 
and earlier?

It can be done by adding "BOARD_NAME := mir3g" to the device define in 
the 19.07 branch as well as master.

Beginning with 19.07, nand_do_platform_check() isn't used for ramips and 
nand_upgrade_tar() doesn't rely on the boardname either any longer. 
Instead, nand_upgrade_tar() will grab the kernel and rootfs from the 
first found directory matching the pattern "sysupgrade-.*". Means, we 
wouldn't introduce another compatibility issue.

Of course, a downgrade from master to 19.07 and earlier would still 
require the force argument due to the not matching name in the image 
metadata. Considering that we don't adjust the running config to be 
compatible with earlier releases during downgrade, I rather see this as 
a pro than as con.

Mathias

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B67115D4D
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 16:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kt5uJxmlMUOa+SBcY/QPp563kB2f3t0hFUeCJ06vOZ4=; b=FdQ0kBYRUoD724
	ho0FDkoNITSnjTWlX/Dowi/9Zzl9mU8FjeBl0CN+GfVT9v2BX5TeOA2PU9wO3dT6jKYp7x7CzDTEG
	iATg0W7SpCRoXkM+9AAu5HY7Sc2b66L2wfXApRgt/Hg7TdPTf9I1FAivOiPWV3oA5W93ZwR43f2nv
	yclU5lOaeADfmbb++zx8yQCWoZtXwXXN2CmN8lGRZnBfAUL1O98ZhBVaiAQILt1y9Z/dC82diGsBt
	pazbpu260+65tX5hezl6450gSZVdtHfBCJLK195gVJn5w34nPpf5TkXKcPBRJCxKhX/4jFHQW5L26
	7HtaGCeh7SRKwypOJdPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idbhv-0000dN-Gk; Sat, 07 Dec 2019 15:09:19 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idbho-0000d0-QB
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 15:09:14 +0000
Received: by mail-io1-xd43.google.com with SMTP id c16so10349174ioh.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 07 Dec 2019 07:09:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GiIpN1Me9yWmvX30a4UtUyBInvgoynkXDM14iaZ1XuU=;
 b=Zz5O2OSu57/y3oVUMwGGnYBmyj9vuyl+hx6UMltX8H8KwMHCA+Tjmnmr5IPOywcgrS
 G3o1EtRpz1sQOUzO5vopx5ZXnOjSRUM48qhfF+0mj1yGSNE3XxGZUAsif+EwzcgdxhHP
 f8AQdD/ZFin4QTxR/Z+1oMAtW4s29s9HXwS+v7+ClRiiq7NB+HVyhfrqQ6lnZ7yRmml4
 KyAtzpXVSDIU4Gbqv5RRLj0e6mi9RCGMbrLC2HyK47sIBEMbq31p6HkCyDMeriQwNSFa
 Pu+YRYzR/Wq+zeGd90SVyiYpehCq17K+oEPvD+lkpOhKrQ0b2hDPB2dJ5VoqKTHC47fL
 0ppw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GiIpN1Me9yWmvX30a4UtUyBInvgoynkXDM14iaZ1XuU=;
 b=e0FocyRPRoAUSraPb2kRA4hTYGQbgT90jG8SpecKaMDRoP/hZatrewhshk7Af1q4/i
 7y5P6Bni3vSMr9ZuNXFQRMVnEzQzuZya6jCk9jFufCG3VcjFAOLhJJ0aPCCcVJ06F8eL
 alQnFzEZZhRaHZGKDplkP3C8uYwMjPO0jb8DVD4ASlPi3zxUxUBlZZxzVPdbz0KRe4Ar
 K+fHhl9EX1Xur8NhDrOejakZG39qCbARSDR1DIk1xf8dAbCe8/QbrgftkTyhp1dYPzqS
 kf1ZI6ayfqGMzVghV9IvJNQKBUs6geRPD42nKHw3DxLPGHrbGoxI/uU0DoIPUzRSaxZy
 hhxQ==
X-Gm-Message-State: APjAAAVNyjgJUHYZykmkJ1YjKrFd9eulAoLgOikBu3mYUZRyC3WzyKwe
 0Bf0H2DDsnjaOKrvnIrbgvpdBAnct10La+bGG4gglDF7dzI=
X-Google-Smtp-Source: APXvYqzkNBKUirJJtH+l55Wrxh9IgZok09AANeoPc3NEss4lKSOwiXdzVxumpgG+ITfrGkVDE17/OkUnGswLjUZr9Ys=
X-Received: by 2002:a05:6602:114:: with SMTP id
 s20mr4704712iot.131.1575731351345; 
 Sat, 07 Dec 2019 07:09:11 -0800 (PST)
MIME-Version: 1.0
References: <CAALvt2MKiCHmZb5neZqjawnr-R1VAHpTK+LQafPrUj=i_UJ05w@mail.gmail.com>
 <20191203143434.GF8181@meh.true.cz>
 <CAALvt2POG3isiKH+2aHjSGRoh-+HADtamD9O2VLOCKO=73byGw@mail.gmail.com>
 <20191205200036.GD71465@meh.true.cz>
 <CAALvt2NygyiyJ3iV82B3DXLr+hWsW_7T=iL=9=7xnyUHxD8UdA@mail.gmail.com>
 <069ab5b0-f9ea-8700-afc6-3514ea2dba99@candelatech.com>
 <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
In-Reply-To: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
From: Joe Ayers <joe@ayerscasa.com>
Date: Sat, 7 Dec 2019 07:09:02 -0800
Message-ID: <CAALvt2MkCyqQQBoObB4-cD4xVt=AONfiar6Q5isF=znY1E4BdA@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_070912_872663_CA10551B 
X-CRM114-Status: GOOD (  21.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ath10k memory leak on 19.07 branch and mikrotik
 RB952Ui-5ac2nD?
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
Cc: Ben Greear <greearb@candelatech.com>, openwrt-devel@lists.openwrt.org,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Dec 7, 2019 at 5:19 AM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> On 12/6/19 7:02 PM, Ben Greear wrote:
> > On 12/6/19 9:44 AM, Joe Ayers wrote:
> >>>
> >>>
> >>>> Possibly the same symptoms don't exist on 128MB RAM devices.
> >>>
> >>> Like there is some if condition, which is doing some nasty things on 64M
> >>> devices? I admit, that I don't have ath10k-ct source code under my
> >>> pillow, but
> >>> it doesn't make much sense to me.
> >>>
> >>>> Comparable results between above and my 64MB device.   However, if the
> >>>> sleep time is extended the consumption is more
> >>>
> >>> Ok, I'll let it run overnight with 120s sleep in between.
> >>>
> >>>> I suspect this is not the intended behavior.
> >>>
> >>> No its not and it's even strange, that I'm not seeing it here if it
> >>> should
> >>> happen in the "default setup". Maybe its because:
> >>>
> >>> 1. You're using custom image (I'm using official prebuilt images)
> >>> 2. You're not providing all the steps needed to reproduce the issue
> >>> 3. I've way different hardware
> >>>
> >>> Every detail could make huge difference.
> >>>
> >>> -- ynezz
> >>
> >> On the device I am testing, it is both (2GHz) ath9k and (5GHz) ath10k.
> >>    These look to be related patches to this issue:
> >>
> >> 960-0010-ath10k-limit-htt-rx-ring-size.patch
> >> 960-0011-ath10k-limit-pci-buffer-size.patch
> >>
> >> In the v19.07.0-rc2 build for the rb-nor-flash-16M-ac ar71xx image,
> >> these patches are applied to backports-4.19.85-1, but don't seem to be
> >> applied to ath10k-ct-2019-09-09-5e8cd86f.    Should ath10k-ct have
> >> these and other patches?    The device's installed packages do include
> >> ath10k-ct (from downloads.openwrt.org installed image).
> >
> > I think that if you need the patches for upstream ath10k, then you
> > should also apply
> > the patches to ath10k-ct.
> >
> > Platforms with more memory probably do not need or benefit from those
> > patches.
> >
> > Thanks,
> > Ben
> >
> Hi,
>
> I am fine with adding these patches to ath10k-ct if they solve problems.
>
> It would be nice if a description could be added to the patches so I
> know what kind of buffers are reduced there.
>
> Will someone send a patch?
>
> Hauke
>

Are there other patches that should be applied?

package/kernel/mac80211/patches/ath:
080-ath10k_thermal_config.patch
921-ath10k_init_devices_synchronously.patch
930-ath10k_add_tpt_led_trigger.patch
960-0010-ath10k-limit-htt-rx-ring-size.patch
960-0011-ath10k-limit-pci-buffer-size.patch
972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch
973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch
974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
975-ath10k-use-tpt-trigger-by-default.patch
977-ath10k-add-support-for-configuring-management-packet.patch
978-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
979-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
980-ath10k-fix-max-antenna-gain-unit.patch
981-ath10k-adjust-tx-power-reduction-for-US-regulatory-d.patch

package/kernel/ath10k-ct/patches:
161-ath10k-add-support-for-configuring-management-packet.patch
162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
164-ath10k-commit-rates-from-mac80211.patch
201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
202-ath10k-4.16-use-tpt-trigger-by-default.patch
203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

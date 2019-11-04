Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF92EE53D
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 17:54:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lqtk/MFH5Znq79LJb1v/Bhl0s/ebYMp0z3iCFwaKNis=; b=du1/0BxXp+hGFg
	5IAhiFNcOBnXxSRMroFMzapDwMG9b3ZZNjcm7+uwovV8C2qPHCm8voW2KjzQ2sKS3vgMfvzHT0PKq
	wy9YvJYqQDYav528zoi4QmgixH/H8sxmOm4WxCZvrShAaFC+eWo8RX7epqhNxciIMrCq4y4sRfw9x
	+zg6DBuFMyjw7EgQW2b8JuyIYIfu9mrtxAo/fPK/j/PbWCXGwoqjrjgEUFfvAqEdWFF8Z4VHf5WdB
	8X4rI4EmQf1UCUB0CjWoXIhPKfLn38jbFZlDg0XMVyGBvWWVAphgnxRq8V4kQlFyCbpAP5Ivf2y5X
	TtXFz/4bEciAQorC013g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRfcq-0006RY-Ow; Mon, 04 Nov 2019 16:54:44 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfch-0006Qu-EJ
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 16:54:37 +0000
Received: by mail-lf1-x144.google.com with SMTP id b20so12794544lfp.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 Nov 2019 08:54:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mbCyG9p1yecJ4sKYrXfvmQxbcbn9oPUMcdRLcs+xjN4=;
 b=ndn2jPdVxeQ00gDQNNoggxVc4xAa/os/bJWxKZj66Tf8HfsscC9Ak2bcQxE+24Zdyz
 r8aVlplYM5Ife7Pm9kFqAKxqgwF5JPA9c7ub0cwb23ZEzEb0aAYiYDaVj9UChqK/pwgS
 fkO4D+Rzu0UfhG1Nt2CbiGZA1fDWfqUCPowKFYU2gWHaeVKTV1uCjPdfqRFN6GE0amDT
 8rXkbh7Nd14jNMUAZJYjMUhvlSTEtoqJlxVIqizHehQ0XA+atQ2LR3n501QD7rO3Gx9l
 4PC+poJ6Kt5Qq8HoXtmihyfWvFWDsSTU/Kt+1u42Kx4OO1XhmKKRKY2qk1NqB26LhlY3
 rnJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mbCyG9p1yecJ4sKYrXfvmQxbcbn9oPUMcdRLcs+xjN4=;
 b=kwZhynrGUyTtpVRTO5JsZNR44Qid6IuOa1C1LaXZDLD6vbhykPRmw0jWpDUTfcMLbn
 LNzZPh7iywCSl1pbnEC6Qcl7jgPhZKz5MjdjbkVBtiJgkOA6OFXkDpYgDgPxgzZga6sY
 Z2qcYP1zXwPO6y65/MzXex2xka+tUY4Mr83VOaDVX8YXZRbHZ0jjVkDR4m6vMVpsU0Rl
 9j/n95VrufPjY2ZWuanDhvBjQCRS/qGFU4q5VaQ8iQDb6YMZP07LjKnTSjgWXUgVpPpZ
 xSkGc6undtQj93vJuYgz+mGSwFGxjaUEqoOhz1nPkfKrT+ms+89DVjJRo3ERJEGkh3VB
 /LkA==
X-Gm-Message-State: APjAAAU6HEH5R3/0OWf7GkhnVQSTUU1Pt5HAlafAEBjQLgyviAXm6U3H
 B0lj+Wqwz1waWNBY7nsbZ+Q=
X-Google-Smtp-Source: APXvYqwpcmLAXiasffXTH0b6oE+iPRfXWhKSd+6rxE+v1nAMa5XeDwV8mTVBJe30gjKY4WHuj9Ovgg==
X-Received: by 2002:ac2:424c:: with SMTP id m12mr17520065lfl.140.1572886473350; 
 Mon, 04 Nov 2019 08:54:33 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id a26sm8818136lfg.50.2019.11.04.08.54.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 08:54:32 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xA4GsTb9013654; Mon, 4 Nov 2019 19:54:30 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xA4GsT48013653;
 Mon, 4 Nov 2019 19:54:29 +0300
Date: Mon, 4 Nov 2019 19:54:29 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20191104165429.GT1190@home.paul.comp>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <024701d5932b$2eba0f40$8c2e2dc0$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <024701d5932b$2eba0f40$8c2e2dc0$@adrianschmutzler.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_085435_508217_951D0D91 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add D-Link DIR-615 rev. E4
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

Thank you for the review indeed!

On Mon, Nov 04, 2019 at 05:16:15PM +0100, Adrian Schmutzler wrote:
> > +		power_green: power_green {
> > +			label = "d-link:green:power";
> 
> It's policy to use boardname instead of "d-link" here, except for tplink as far as I know.

My bad, I was using tp-link 741 code for inspiration.

> > +			firmware: partition@40000 {
> > +				compatible = "denx,uimage";
> > +				reg = <0x40000 0x370000>;
> 
> 3520k? Does this even build with standard buildbot settings?

I did not know I need to check with standard buildbot settings, I
haven't noticed anything like that in the patch guide.

That said, I find these settings meaningful for a home AP+router:

CONFIG_TARGET_ath79=y
CONFIG_TARGET_ath79_tiny=y
CONFIG_TARGET_ath79_tiny_DEVICE_dlink_dir-615-e4=y
CONFIG_PACKAGE_6in4=y
# CONFIG_PACKAGE_iwinfo is not set
CONFIG_PACKAGE_kmod-iptunnel=y
CONFIG_PACKAGE_kmod-iptunnel4=y
# CONFIG_PACKAGE_kmod-ppp is not set
CONFIG_PACKAGE_kmod-sit=y
# CONFIG_PACKAGE_libiwinfo is not set
# CONFIG_PACKAGE_openwrt-keyring is not set
# CONFIG_PACKAGE_ppp is not set
# CONFIG_PACKAGE_uboot-envtools is not set
# CONFIG_PACKAGE_usign is not set
# CONFIG_SIGNATURE_CHECK is not set
# CONFIG_SIGNED_PACKAGES is not set

With that I have 6 eraseblocks left for the rootfs_data partition (5
is the absolute minimum jffs2 allows).
 
> Be aware that you might not find someone willing to merge this.

I do not think this device is any worse than the other 4M devices
supported by ath79. Moreover, it can easily (two usb pulldown
resistors and two series) be modded to add a USB port (much easier
than TL-WR741ND).

Regarding the firmware partition size, it can be made 4 eraseblocks
more if the next two useless partitions are merged into it.

> > +			mac: partition@3b0000 {
> > +				reg = <0x3b0000 0x10000>;
> > +				label = "mac";
> 
> Why is there a partition labelled mac that is not used for MAC
> addresses? Have you checked the partition for MAC addresses?

I have, and it certainly doesn't have the address printed on device
label. I would guess the partition is a rudiment of Cameo99 reference
design or something like that, and D-Link in their wisdom decided to
store MACs elsewhere.

> > +			lp: partition@3c0000 {
> > +				reg = <0x3c0000 0x30000>;
> > +				label = "lp";
> > +				read-only;
> > +			};

This I have no idea what can be used for. hexdumping it reveals some
filenames and "whiteout" strings which might hint at using it as some
kind of a writeable overlay. I can't be sure I still have the factory
data in it though, but I do not remember specifically overwriting or
anyhow abusing it either, probably it was done before me.

Anyway, I do not see any good reason to care much about running
factory (old, buggy and flawed) vendor firmware on this ancient device
(it came with an old-school 50Hz transformer PSU, you can imagine how
old it is!)

> >  	case "$board" in
> > +	dlink,dir-615-e4)
> > +		lan_mac=$(mtd_get_mac_ascii "nvram" "lan_mac")
> > +		wan_mac=$(mtd_get_mac_ascii "nvram" "wan_mac")
> > +		;;
> 
> I didn't find a reference to "wan_mac" in nvram in ar71xx. Did you deduce that by yourself?

Yes, that's where I deviate from code in ar71xx. I grepped strings in
nvram partition and noticed lan_mac and wan_mac, both made perfect
sense. Regarding wlan mac in vendor firmware, I do not think I've ever
seen vendor firmware running on this board so I can't tell. Guess
whoever added support for it (and the other 3 almost identical boards)
in ar71xx have checked all the options.

All your other points noted, thanks a lot!

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

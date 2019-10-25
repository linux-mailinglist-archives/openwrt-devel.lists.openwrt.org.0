Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9DBE488E
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 12:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=clDqF8q1FDr+eIQ4e3bzM2K32NrNeTNifgAlawRheN8=; b=fRWTPX4IoVyW+E
	yeBc4DGsX7BGhtxMEAXInzlPD92SNLDI49qpA73P3VcSYedbtdRZgQS6d55eCemswSdh0rGy4khsn
	A5DAcApVo/D/hO/wpITyjwLp9AxMMIjaUriY8VOpkl2wYW9wX8gNVndKUpdesL1To6lB325N5h9Gu
	5D2p0Um0WZBP35Npq8ue4oVt1R048HiDZ8KAVVjTIlhto+tQESuMU3LkG0aRyqt7+Cnv6b5H25sen
	gwWHkENz54UlR1owtnJyVU4A93iflH+JgIxM34ANpo4SmIv+jUUSxUCX4JBrZz1a4kXXyxZXxCylx
	UzB632sfF6SOmosjAUww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwmx-0003q5-HU; Fri, 25 Oct 2019 10:25:47 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwmb-0003eB-VU
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 10:25:27 +0000
Received: by mail-lf1-x12e.google.com with SMTP id b20so1299521lfp.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 25 Oct 2019 03:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YHfKJPVzFQ8NA7Py1vaxcc4rXn8p8MUg2Hg/0s3kgwY=;
 b=ijtnZKe1Yn4wo7hbNN1vhoZtw+SeAUXeV+jLLJFJK82Ss2ozYHKbDUb20wTFXurlRN
 MCABz4Z250EiB2W9QLre8THezoH18I6DJJ2e29U7Rb+pnC7BlOFgD5Ng5LrYlvR/Jc2u
 6PeFNNOoBzjAf4xtmx0s1hHurm1pdmVKIUv/4tvtTYHwNGra4eEOyHMZxGct6Y+1GLV2
 AwWe2Q7k7jQBgNKPQxAgdx6Ep4GZnvzmyEEBBkwuOxxJDUnCTEl/yljg0FgLHTnFVlHq
 oJde3HAdMNv9QXAGcNrOQEb03vx1QDiFy7y+tuXEgkIOoO3suuMCXRqxVEmFPxuo8MTF
 ltUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YHfKJPVzFQ8NA7Py1vaxcc4rXn8p8MUg2Hg/0s3kgwY=;
 b=uOBSgTfixDePEqKWphl/wEaD4oAnjPK6Zu4NwOkSlmZqvq5SGjI4NASQGp4SmTCt9H
 7nzWh7MN1RhROPjUzP/9hj5TLn4oE2v1r8SmgH5zMXohOga6wpLiiQWrUCKV68nePTUz
 vInPnTi+WCvQCD1MgDbcUwI3+0B6tvs4qX709wH8IU24bv/DmM7h9NI5U+7PYshQgMrM
 N18CJuV361OTuuDDp9y+t7Wdva1i92QGN34LsTggu4MLN9sTGWbfSH+ETLaHKo3YzHhn
 ny4y6dVTS05fY6k6L4aIWn8OYBv8N8WVpsh4/nGCLaFWJ3NJu7VO0mnq1nvK8ZGgf2zm
 cdnA==
X-Gm-Message-State: APjAAAWBxMz7P3BPpaR1t18Nv6swSvF1HojS1rpRiXkEA8X6MSThxKzJ
 MlOqSoM1/rcGC6Wqf1kUuio=
X-Google-Smtp-Source: APXvYqyogg30cE4vnrN4P5KVZIVOMnK4pYxsF77MAMvia5aYE6f4/scBmcQbqxgB36FKO6Lk1pI4gA==
X-Received: by 2002:a19:651b:: with SMTP id z27mr2104449lfb.117.1571999123787; 
 Fri, 25 Oct 2019 03:25:23 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id 30sm673900lju.52.2019.10.25.03.25.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 03:25:23 -0700 (PDT)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 x9PAPLGN019239; Fri, 25 Oct 2019 13:25:21 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id x9PAPLTT019238;
 Fri, 25 Oct 2019 13:25:21 +0300
Date: Fri, 25 Oct 2019 13:25:20 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Message-ID: <20191025102520.GE1190@home.paul.comp>
References: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
 <20190828090924.14695-1-fercerpav@gmail.com>
 <038201d56043$9a8a7c20$cf9f7460$@adrianschmutzler.de>
 <20190901073349.ekh6zvtuovseshoq@home.paul.comp>
 <e81da978-ed2d-d1e9-e160-879314523210@guifi.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e81da978-ed2d-d1e9-e160-879314523210@guifi.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_032526_060938_A8A130DC 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for Xiaomi Mi
 Wi-Fi Router 3G v2
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

Hi Roger,

Thank you for the review!

On Fri, Oct 11, 2019 at 07:14:25PM +0200, Roger Pueyo Centelles | Guifi.net wrote:
>  +       xiaomi,mir3g-v2)
>  +               wan_mac=$(mtd_get_mac_binary factory 0xe006)
>  +               ;;
> 
> You may want to add "label_mac=$wan_mac" there, if the MAC address on the back
> label matches the WAN interface (on the R4G it does).

Indeed, done.

> Also, it looks like a newline should be added at the end of the .dts file.

I've checked and I see there's already a newline present at the end of
the file.

> Since there are two Xiaomi Router 4A variants, the 100m and the Gigabit Edition,
> you may want to use:
> 
> +  DEVICE_ALT0_VENDOR := Xiaomi
> +  DEVICE_ALT0_MODEL := Mi Router 4A
> +  DEVICE_ALT0_VARIANT := Gigabit Edition

Done.

> Last, I added the device to uboot-envtools. Feel free to copy it:
> [2]https://github.com/openwrt/openwrt/pull/2486/commits/2625499ca554449e7a19bb5f6f61acdefb5a69e1

Since the uboot partition is not writeable by default, and there's no
way to install OpenWrt without changing it first by some other means
(such as an external SPI flash programmer) I have a feeling adding it
to uboot-envtools wouldn't be useful.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

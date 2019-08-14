Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBAB8D2BA
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 14:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiggRaiiLLq1+RKohFCfybGF8gQEQKkG0Ye0CUFR9Yw=; b=MzA7L+GHAMgAwU
	9syWIJtFKGAMi6C0HZ0Ii7HFt12HAUiiHRsItsWjcvNE0+VsNMLGy6MzKed2+/6OlgVBZ2ZYqbX1f
	XeGPr1Qj1nAa1ZBiqaRiQfVCKSxqWyFw0RoYcSkkFgfmHZ5R1Vzv3EzaWkWz6MdaH89Fjg+JYPyei
	ky8sNqFEzj57a/6gKAaU0y6TJUp0NBpVV/bfNn2S+H1QBrM6qIHg87FodoAPVbkMiUu86n5Gs1yJT
	l1EK6S+VAFkP4lqIpaemkGkh4F0gtNzDmetHHzMqYr0dxMY4uQwpO26m7EQR8kE3gpALoE4IZowA6
	11ee6/HoXDL3M+OPO8og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxs3G-0005Wx-QQ; Wed, 14 Aug 2019 12:06:50 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxs2y-0005WK-1z
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 12:06:33 +0000
Received: by mail-oi1-x22b.google.com with SMTP id t24so3308442oij.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 14 Aug 2019 05:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/ZOieLqtCyYIUz2OmeyO2wOQWddrBxg+FzS2rNUYnkE=;
 b=FBc9UtWDSSslQtNow2RF+d4VJI1xkk5qYbUWL6BQNgUuAY/KTcVCYJweVI/RDhLXMi
 FYuWuBEkAeALM1ywZqHkPZc2Q+szLAfUj/iKzGLPWmOyjCoF42k6ZM/ah37tCUsih4WO
 4XKhE00mmapWoJq5aplSzX/hhr8RbIyVI0jKXjfe2mghGZgcBy0Pd133Q7fjtD4GrYG0
 iNmyfrBNUBJUvInGBhf43RykVhvSTizEp3BZghZldh8q6XK1B27Z7pXYQP+9Bvo7kjzp
 TsCxg2oQjiFnv0L+UiVjQKWKneG95Ldd6hEIL0w3D6lEech59xx0xx7/F5ahN2fOGgKb
 l1mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/ZOieLqtCyYIUz2OmeyO2wOQWddrBxg+FzS2rNUYnkE=;
 b=HenqC8LWt10HPWqfJPnje+w3YlSvq8Vt9JucPjM8FR6bh8SbDOKXhDUdh3LrbAg6SQ
 4gJjLC4tGP7OeTbOy6pJqqcUaMxu4mVEp2TcSWJvBp3m/ZF1T/cZ0RPX8JQfmwRF2qOw
 GjYqHOqtqzjEBwlRN4on4BkcMXJWfhLoVKC8nvVddG3VOhNMmb5jqcF3eECTXbJp1s3s
 N+S2AoiMT8PqorPQeCY0+JgLwidoqEC3DK6sw5qXBQzHOmndaf12ersUjM7MCC6pngJ0
 77vHPqEAvPncmQ8bOEv/Hszh7vReGkYR2NhWP25qpUm0DBr0R9Dpn0zQ8RoCecQJ7oar
 jEYQ==
X-Gm-Message-State: APjAAAVrMvJ1ngukOIww14+EvRCFDFyrKgE398WWigyUgJGD7ET2/re+
 dYIvZlxT2pot9uBoqmOL7Imlw7ozwnd2azo8zWPBOtwG
X-Google-Smtp-Source: APXvYqzmNnBM2ZwJpYTrlp+YY7cv3E6cwiNbGvPlY3CwnmRNbDlmC2z527DjVKAEY8MNORrrQ66k+JXfASUxK7AIDvU=
X-Received: by 2002:aca:3fc2:: with SMTP id m185mr5208948oia.24.1565784390507; 
 Wed, 14 Aug 2019 05:06:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190811223921.572cda5b@kosmio.komorska>
 <20190811224446.3334b7e6@kosmio.komorska>
 <000b01d55108$a98631f0$fc9295d0$@adrianschmutzler.de>
 <20190814105922.1c713789@kosmio.komorska>
In-Reply-To: <20190814105922.1c713789@kosmio.komorska>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Wed, 14 Aug 2019 20:06:19 +0800
Message-ID: <CAJsYDV+_ap86GqCJTPwcQ815BJKyHBM3MabfG7aGAbBHo8cO_g@mail.gmail.com>
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_050632_126835_90F94CAB 
X-CRM114-Status: UNSURE (   6.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22b listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ath9k: mtd-cal-data vs firmware bin file
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
Cc: openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Wed, Aug 14, 2019 at 4:59 PM Michal Cieslakiewicz
<michal.cieslakiewicz@wp.pl> wrote:
> /etc/hotplug.d/firmware/10-ath9k-eeprom for these routers just extracts
> 4k of calibration data from ART to bin file in /lib/firmware. I
> compared bin file to mtd area and they are identical. Why ath9k cannot
> use this data directly accessing /dev/mtd6? Is that 'mtd-cal-data' dts
> option for? If so, why does it not work in this case? (tested, ath9k
> initialization ends with error)

mtd-cal-data is part of a local hack for wmac devices only:
https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=package/kernel/mac80211/patches/ath/552-ahb_of.patch;h=1170fc64bd9092d374ee78285060b504a699b720;hb=HEAD
It loads calibration data and create an ath9k_platform_data struct.

>I recall there was no such operation in ar71xx target

In ar71xx, calibration data is loaded through ath9k_platform_data for
newer wifi cards and for older cards, there's a piece of code feeding
caldata in arch/mips/ath79/pci-ath9k-fixup.c before ath9k loads (in
ath79 and lantiq this is replaced by owl-loader).

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

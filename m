Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD38D9AF15
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 14:20:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cPoB2TmejuVAMvdYlwk+zzPr+VkHqrin8seKUfqU0JU=; b=pmfYhMZz1ZPJtc
	hbAmYAyWIrJVD+FtP0LHeBRyWMpeAdKwNDULnfP8QKn73Y3+3JeYLGVh9ej9xEJYdg+lqpQe7/kKk
	dhSWgAsArT0C+Myyi+/nHaDynSzW4x9CDOgzdUWSrqR7mYqgvXH0LKFr7yvwu4WilKTN+HjLYDxtL
	XGWWfS3/YbrD5+jSYDRiC7f6QE1t8+ryvwFJiEcpuiXI1M1hZVdY6bpkKqzlXPAIyjIQo7mtUHu2l
	ONiw9sdiQt+HUI7nSijOi70BBxzg3kYftkl5+eSkyeKnsSBfQoHbqkeOCaUU8Z5OQbAQ7aT0c3FyB
	vHkWO+9iCUyXEO3QdkKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18Xl-0005aX-4T; Fri, 23 Aug 2019 12:19:49 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18Xe-0005a3-Se
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 12:19:44 +0000
Received: by mail-io1-xd42.google.com with SMTP id o9so19595953iom.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 23 Aug 2019 05:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z5Xbyh4BtLrYAg3Loq5rx3qgHOjuiqr3AahWH8HJlic=;
 b=rW1OpC5qt975LJLtCOonzCMb7AHamdC2qoMzp98716gEiUdqlbjd6lppQEQRMOsk4F
 /q35Y60Ihd3Unu1TUpSs8Qs8IZJfvLYgnlcvOAAyjcQS6UkHKROSoGTWrBF0ppon+0Yb
 zc1/dzuxfPeDAAS3//ieh5aK25YcSUsnxeFGsodWRtqxK/aqYO0pSkBrE1TQ+sWTTkS9
 YnM6WEzHKEL6+0H3movbR0HZY32hss0ZR4WCU6v8+NbXq531ctfZ/+9JM/NCy/XOumPX
 9NM7oOZHt+5NkJVgHTxYVoC5+spmaZK1I+toq1TN8NLfed0CnBd+lIo5GPJ2LVv7wJ/5
 jB3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z5Xbyh4BtLrYAg3Loq5rx3qgHOjuiqr3AahWH8HJlic=;
 b=GbtlpLvb4GAUX5sKKwk+wnhkXrSieS6X85q4iVkoIPXJWIJ5FHxOTOJV0+GVVLzVSi
 xziCkQSeRb78ak38b0+u5iYg3F5miDc6kYLOyvP5bYe5kFFA8rMnqM1yx1sQz2PRzvbZ
 Kvc9+yC6LP9AtC1GOqkiAHxlcR57a69bvkzdIQuvSYWxedQqwssxxNsnXUEOBR4N78+p
 pSyr7zWGYQZS8oPWiPh8ngMvRkisQ9zS36sfmw2qx+Abxd8wMaJHAGywTjE7v3JpChoU
 GDfkFGrFv/5Xlpl1mbBrkdZSAsBtuDMX/4jxgB/mSi4DhDyKJGpHHs+cL3AAxDcMk4V7
 QhOQ==
X-Gm-Message-State: APjAAAVwGqE1EFJ/C7cAaALBYa4zduVptpzwvAxomqqYe+PxsralKtar
 GCBJORpAR8uBqgVtRScZujz1rJepxiAdaJ2f8ME=
X-Google-Smtp-Source: APXvYqwa7EGw++z2HPZymOkpH3Bf9suzFgxPRLS0F9Mamf+i/Msr3COKaZ5ETZRsf6qpBsoMZpVKeRhrPsjgM5YISQc=
X-Received: by 2002:a05:6602:2593:: with SMTP id
 p19mr6730125ioo.138.1566562780528; 
 Fri, 23 Aug 2019 05:19:40 -0700 (PDT)
MIME-Version: 1.0
References: <6772c2c9-89ca-bac0-01a9-148e8505a5c3@birger-koblitz.de>
In-Reply-To: <6772c2c9-89ca-bac0-01a9-148e8505a5c3@birger-koblitz.de>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Fri, 23 Aug 2019 14:19:29 +0200
Message-ID: <CAKfDRXjyRAJDZrwr7if610_6FvnGuWCa3XMrX683c8Qbpa78eg@mail.gmail.com>
To: Birger Koblitz <mail@birger-koblitz.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_051942_952748_350B83C5 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: use gpio_hog instead of
 gpio-exp
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Fri, Aug 23, 2019 at 1:40 PM Birger Koblitz <mail@birger-koblitz.de> wrote:
>
> ramips: use gpio_hog instead of gpio-export
>
> The `gpio-export` functionality is a hack for
> missing kernel functionality, which was rejected in upstream kernel long
> time
> ago, for details see this email
> http://lists.infradead.org/pipermail/openwrt-devel/2019-February/015772.html,
> discussion in PR#1366 or
> https://github.com/openwrt/openwrt/pull/1814#issuecomment-462942022.
>
> This patch converts all ramips .dts(i) files which were
> using export-gpio for powering USB/SATA ports to using gpio_hog instead

While clean-ups are nice, the patch in its current form will break a
lot of functionality that users depend on. By changing for example the
D240 power_mpcieX nodes to gpio-hog, it is no longer possible to
power-cycle the devices inserted in these slots. Power-cycling is for
example convenient when recovering LTE-modems that have crashed/hung
due to firmware bugs. While I am not familiar with some of the other
devices, I suspect a lot of the nodes names "power_usb" or similar
have the same functionality.

I would start by moving the GPIOs used for power-control of USB to
03_gpio_switches and then take a look at the GPIOs that are left. This
probably requires going through the commits adding support for the
different devices.

BR,
Kristian

BR,
Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

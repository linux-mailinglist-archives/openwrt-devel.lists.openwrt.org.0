Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CA317608A
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Mar 2020 17:57:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3zxzggtZnEASPUqh5qi+fn6eU5/TxgAUh4qHTvQ/uI=; b=KgbXlTpnpq6vtN
	GP0im33k45dSHJGD4bfUw1r2oUNHFS8PCAm5ClVpOU+hAXDLi17kAb/KxZpk/Pd5yVe/6W6yi8R6g
	20Ujf42NmFw6J2VELcwjjIrZpKwgsCKuBibDr7DDQameKR6n7uICHCXrOknDQplMgT40aVifdfpGC
	4HNGWXrBO3wkUvyWXn0tjsSHIIGMpxbiusNDSF5LYDs+e1rp+RJAjR5Sit+gqlCRFfrUsQceWS0g9
	EZbYflI0U4NDDbi2hSjuHjl14zafYyATOcuTeolAmeZTGg93CTDk8dSQrlSX7oXG64DgYGxmL39A5
	rqN+o61BYg/0hxUoCHzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8oND-0008OL-SE; Mon, 02 Mar 2020 16:56:55 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8oN5-0008Np-9T
 for openwrt-devel@lists.openwrt.org; Mon, 02 Mar 2020 16:56:48 +0000
Received: by mail-ot1-x344.google.com with SMTP id v22so5873920otq.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 02 Mar 2020 08:56:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n6XYdPgdR8kXWVP0Ykn9zA3lz5pw5G3ASiClfU0g8A8=;
 b=yEb3/T8NVEhNGm6Cqdk6ZT/HQ9FyZgwQ1rmDthFSSI9rA8eMtdXn7ZujjFd0yb9sW2
 lBW5pq1nJ5mAQbUiX7JgOcAdhoATRNLjzbXLEHuHgwBEafqw6dVMFHF3wethL/hLEvXU
 jJEBFTe6BoSQHNf1Dg8AoDzaFdAr4WMUYwBEa9S053L8A3zVCfu+1EzDBFUZ/T9qS00u
 LV5gg+qRW0d+j8LBrmh/w6bxtI9IcWg93Oz5XVn5OgEyT6INMC/uYrSOxm9dfb1AmsF6
 4tSuNXrkMQcYNR9be295vnkGfTaltH7Ih+xYyN3RvsKyKRjLk0oya67JmiTeZjvRBKID
 s/6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n6XYdPgdR8kXWVP0Ykn9zA3lz5pw5G3ASiClfU0g8A8=;
 b=aq04roSJUbfmBlNv0/MqhWIBq/DMcw7OCsuhqR04/K/EJEYR1j69knSKFGbqsx4sKW
 bJir1Jr3UHkIweOli1trQzf1T5/6EV9RwsJkrc/gSpktIfJ1A09RzAE7zEeKcWtww6wW
 IQhazgshbNnHmJ2d4m6VfvF/3RGzTX5S/8bEhOq+ay3uCoq3L1FT6goXZJS2mvWRlsyT
 pfuMtGKNkamXubw0uUxHIbYwXKJa5FEtnO8iHCRBqfHYQtLiMqjDs2UlocgV51OxMQm6
 QDpQVZ2BX5hFlAX9eqHl0JTBUY/1oE8CoOL0ecv5WdTuHYNSIp9uweOg1Oat3AVipzNX
 vUcw==
X-Gm-Message-State: ANhLgQ1GgUWx8dpji/1kqEWaEp1sOTl614D2853mNsBG/0eMo1L0XvSK
 rdP5quDMyemNMOgMcxFhlvFJso2hTeEE2rkhbmxUTaTb
X-Google-Smtp-Source: ADFU+vvFSKdGAbV8Twqsx1ry502xQaCLedZlu9axCkQsg6DjKuRyaZruajLe8kpczWXYjyNpeG2HUsucd8xCcGSHK3U=
X-Received: by 2002:a9d:7842:: with SMTP id c2mr99427otm.252.1583168206450;
 Mon, 02 Mar 2020 08:56:46 -0800 (PST)
MIME-Version: 1.0
References: <1582918410-12875-1-git-send-email-tharvey@gateworks.com>
 <009701d5efb8$f257a9f0$d706fdd0$@adrianschmutzler.de>
 <CAJ+vNU0w6OiUqvxMS3V-Dk=Rdps8kmShKhrjKrhm-w5xjkb8HQ@mail.gmail.com>
In-Reply-To: <CAJ+vNU0w6OiUqvxMS3V-Dk=Rdps8kmShKhrjKrhm-w5xjkb8HQ@mail.gmail.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Mon, 2 Mar 2020 08:56:35 -0800
Message-ID: <CAJ+vNU2LUU=zB_vJPzzO9OVZjYTpcoOUorifuzNzW7kmgQRvYw@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_085647_331976_8F8EAE9B 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: add support for Gateworks
 GW5907/GW5910/GW5912/GW5913
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

On Mon, Mar 2, 2020 at 8:53 AM Tim Harvey <tharvey@gateworks.com> wrote:
>
> On Sun, Mar 1, 2020 at 3:02 AM Adrian Schmutzler
> <mail@adrianschmutzler.de> wrote:
> >
> > Hi,
> >
> > > --- a/target/linux/imx6/base-files/etc/board.d/02_network
> > > +++ b/target/linux/imx6/base-files/etc/board.d/02_network
> > > @@ -13,7 +13,11 @@ case "$board" in
> > >  cubox-i |\
> > >  *gw51xx |\
> > >  *gw52xx |\
> > > -*gw5904)
> > > +*gw5904 |\
> > > +*gw5907 |\
> > > +*gw5910 |\
> > > +*gw5912 |\
> > > +*gw5913)
> >
> > Is there any actual need for the wildcards here? Shouldn't just gw5912,
> > gw5913 etc. be enough?
> >
>
> Adrian,
>
> Doesn't look like it... probably something that used to matter if
> board names used to have imx6q vs imx6dl but they clearly don't
> anymore.
>
> I will re-submit.
>

Adrian,

Actually, it may look cleaner if this patch is accepted and I
follow-up with one that removes the unnecessary wildcards as they have
been there for a while for other board models.

Any other issues with the original patch?

Tim

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

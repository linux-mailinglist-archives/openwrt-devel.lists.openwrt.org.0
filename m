Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFF87AE7E
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Jul 2019 18:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KZSxNomFqFqGMipa0ZI8XILl3Ngz/JBn0IN7R9xxT8=; b=uxfixNg5YK4Zmk
	dgy8x/T0eOpHHFhY3tUsG7cajPiygd/hlzeOvzIq+vhSsl8iCgTEj1izgWlk7li8OndRa2/J6to+D
	L/Pb3AqaKjhKW0FQ4w0Ck7JeJXiHBnog5TWqmKwlE5Cpks9YmAexhbZNkKUoouni1el9kuyDc5i1a
	Gq04jjg9V1tGR/74nOpGd9KJ6ZC71ZOVMqgMij0I/uqi2/uGWd4g8pDhVPKtYl3rLVLdIZxk8D5Dn
	ngywuc1n7edVCsdZnMyPzrYLhSwE8kbaIDzMGA9WVtOWzdep3T+yjCiwsPbvLYc7UgJJglAlrT33x
	mcPhB5e9imVsXH9K1LlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVR4-00048w-BB; Tue, 30 Jul 2019 16:57:14 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVQx-00048a-7p
 for openwrt-devel@lists.openwrt.org; Tue, 30 Jul 2019 16:57:08 +0000
Received: by mail-io1-xd42.google.com with SMTP id q22so9951330iog.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 30 Jul 2019 09:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6o7NiewFuFUcmfOhQ61bDJ2i5tcp87cUhxyNCpoQrcU=;
 b=ev4nd/Ner0yKZtur4lwLsBCpvF4D9IF5p6NVCavai3yp96I0cOzQtmEQxSZO2wbBfv
 mgfjE45ZaA5STUI7AW8n5F8UquivqGok5VmB5xSisguVJpjJmSI0FC995lmpB1/t4WMY
 ySzOrXpZ6uESD4h2FYzAiNQFDaeR4fYKdc+YInbGbUN9SfkeHjFxJ4FEnNO9ZxBd7u2V
 qqRe9cnq8xv4D3sIjWrsGPfkh02tAVIpF6GK4e+Hou8QetvQWZSq6QQjLerihtqyYFE+
 gqZAs26EFVfCc1c/Y0ddPzkXRgp3/SsRol8elGh9wuz7rhR7mxu3dJkNeCNPWXKDMS8p
 o2Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6o7NiewFuFUcmfOhQ61bDJ2i5tcp87cUhxyNCpoQrcU=;
 b=rcBBiFzwk+vdzMCRuSauJZOpn94ZWqbXDS/An7O9VkyiOBD911VHOvF8oFUZOs/byY
 VWc5wa1VtH3dChzSaz6f1i03FIoC/SnO7BcZO0npcyDV+Xa47HiMYBTJf2DYPB9yfVxV
 OtnrqWYwlf1X5nb8FGSMR3TK4FtPFT6sF4NffdeGeU1amr2xCQL1HfKYPaS3faIDW5Cj
 JkuyZIxeo/zAbboGGfv3Xcyn7t8lY4l4Ys1Kr/uFTZHLrFzoBNLauQQI6HwI4LTQtIOa
 +4/p5tnX6HnrZzttnttLvCwzcc9sXF+IG0SIkwhtrK+KF5bm2zNLQDR4+GFeVpBiOHLJ
 8dAA==
X-Gm-Message-State: APjAAAUdLnynVtaYMKb4MXJUB1zCWvY8wwcV7vh7gVOcH4qkxGIoze1E
 GMSkkuz14a+lX+RZ4IQCq2ahTIdcRoVlwj+dxDQ=
X-Google-Smtp-Source: APXvYqzKD1Te1lSiTdh8W/qa+5sa9sUyG9B+IFeQAlJaoFdfpXGULj5ECYmXP/ll4gATcvKRRqs+dZWaNZ7y5hP0Dns=
X-Received: by 2002:a5d:940b:: with SMTP id v11mr33931378ion.69.1564505826087; 
 Tue, 30 Jul 2019 09:57:06 -0700 (PDT)
MIME-Version: 1.0
References: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
 <20190730093705.GF74752@meh.true.cz>
 <CANoib0F=xguA9aAqO-AgAJ43YWWvAT36kBgsQRcTFNPGyvcP3g@mail.gmail.com>
 <20190730160735.GG74752@meh.true.cz>
In-Reply-To: <20190730160735.GG74752@meh.true.cz>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Tue, 30 Jul 2019 19:56:55 +0300
Message-ID: <CANoib0FJVJF8e7y=xs8w6UYaFG5FZz69rTkK_fMPn19gDSMYEw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_095707_285079_04E4A5F3 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Why ath79 has been made source-only on 19.07?
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

> Can you explain why not? I'm not aware about any critical issues on ath79. How
> are we going to prepare ath79 in possibly best shape for the next release, if
> we now provide ath79 images in 19.07? Users would simply stick to stable
> images and snapshots would get less testing.
There are some issues on the 4.19 kernel not only on ath79.
But now ath79 is in a perfect shape to be released on the 4.14. If
disk space is so crucial, I would prefer making ar71xx source-only.
That would also encourage porting more devices to ath79.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

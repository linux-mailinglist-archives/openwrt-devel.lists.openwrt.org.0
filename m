Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C831092E3
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 18:34:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0bC086Tne7Ugr5zXkdh9eHrRIhZ6AmR6QSfFp4g9X8=; b=l1YV7mJIk16CRM
	vIOxaLf3X/yiQlecgugWbmXqS45x4ldt2XdghbZmf2lBmIhFQPhNfwZJjDZk51cVw1ulMH+XPvxjL
	Eh+cttBo0z2PZaKWowKVGp7AtDcSYp47Pdu7fe7pEkOjgWJ3o9C/rGWGzyfvQg3FRdsoiINsbZZsT
	wWFqWTyPCQUqtQ40T2NjcwrnfXd4mkuq9M7GLt5IP8mz+5hCXUkmwIDFJO9UiQA2pGArYyPlBinGR
	/5QfWR7a/BfJWcQsWxYh5UdHvJSSuDBJAB+JGbTGaGS1cR1KvwcV4rtgiyM63eSxxqjlpOf8hoyoj
	CMmN0UCv6/IBwNCz8L9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZIFL-0006kY-QC; Mon, 25 Nov 2019 17:33:59 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZIFD-0006k8-Jf
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 17:33:53 +0000
Received: by mail-wm1-x342.google.com with SMTP id z19so182395wmk.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 09:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ekQmZBRTYTJVypVOSbWx8jcHfUaJrG+ZtkVzoUyhHmw=;
 b=nbRtkoYOEAPxogj3lO9lQqEnCY/NJeQRirurERxSsV8kNJLr6BEYiV/l7i3PKG8gtK
 xjGxYpqd3hN8LJlRFceWoEh5WTmv9rMH89CPKYFl8b8T5eoQHFfKPs8409l0osp/OlBy
 woUsu6y/Ju46/dvwAQ1FI4d2gMYvA1Z844UaESie2MvCNIIxHd+WYXDhqKFWKHdmUbP4
 XrLaS61/p1HHYHqr/49Vhi4QGFDt/GIDr+iRK58boe17MLQJJYir35o7PuAXQ0jrLuOk
 LQKskw/7GJJN/82j7I1MatxAnTpx+z0zS4xudVSvi6oZqBbe9ypFPuMjYPgEem+lrIoZ
 7ZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ekQmZBRTYTJVypVOSbWx8jcHfUaJrG+ZtkVzoUyhHmw=;
 b=lcsNr2yAG5E19jRB30UmMWvQAzP4gilzBfOwAcCtIXYFhfmHz70fZRdOAt5pzYI6uz
 BzID3uuxoaRVVA50LCMjJ07YuU6W6KMnCccC61oW8bSokNKFlEX6zMVbuIhLmODrilA4
 yAxCKHzje9qJ7WeQUhZOcvYoX6gNVTHC187WVdpGbiPlcrGyyyi3pw1P12oSRdSLQDdu
 eQWqp5UgA73e5lEew30oFvJGQf4TelhO7i70sOiS+96aUI8UuxXRSH0Uy7HG4Q+5g+Ur
 eSfyagNQwkrbI04bYJfbi0U4Nx9jUp7s9zLu/duVXxD0MZC+Fkafn9l+bguRXdb03qQk
 fJ0g==
X-Gm-Message-State: APjAAAVssVy7TlAE+yw1mCunVHTy/lX8E871py8dnGmeaOd0jKyo9Jyi
 1IVHc42veccZASRhAN0nAI3EdaMZxI1imu8RZqcLSg==
X-Google-Smtp-Source: APXvYqxKxkVSbP/zvwDhXEO3M7iIgPMQJScw7EKTyQrm4DhIGCUsyj1zWGK1BVXh5GVglMSygVH6JFtPYu4NWvbrlwo=
X-Received: by 2002:a1c:1904:: with SMTP id 4mr13085444wmz.151.1574703229998; 
 Mon, 25 Nov 2019 09:33:49 -0800 (PST)
MIME-Version: 1.0
References: <E1iZHVW-0001Ji-VK@rmk-PC.armlinux.org.uk>
 <CAOiHx=kE_sLtz3O5-RsmGNFb4zmUd2aKfcQxkDomrfnVtjTiyA@mail.gmail.com>
 <20191125172909.GU25745@shell.armlinux.org.uk>
In-Reply-To: <20191125172909.GU25745@shell.armlinux.org.uk>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Mon, 25 Nov 2019 18:33:34 +0100
Message-ID: <CAOiHx=naYE-8eBC=YEOeSzHfoVieFE9Xwn-YQ2aWOahiL4HogA@mail.gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_093351_649428_0F46B819 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/4] kernel: remove obsolete phylink/SFP
 patches
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

On Mon, 25 Nov 2019 at 18:29, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Mon, Nov 25, 2019 at 06:10:18PM +0100, Jonas Gorski wrote:
> > On Mon, 25 Nov 2019 at 17:49, Russell King <linux@armlinux.org.uk> wrote:
> > >
> > > Remove the old phylink/SFP patches from the OpenWRT build; these will
> > > be updated with a new set in subsequent.
> > >
> > > 450-reprobe_sfp_phy is also removed for several reasons:
> > > 1) it is not in mainline.
> > > 2) it breaks copper modules that do not have a PHY.
> > > 3) it makes backporting the current patch set harder.
> > >
> > > Discussion is ongoing with the patch author for a mainline Linux kernel
> > > patch for this.
> >
> > You can also just put me in Cc ;P
> >
> > Is using this patchset enough for the tests you asked, or are there
> > some additional changes in your branch?
>
> Hi,
>
> Yes, for the test I've asked for.  The series basically brings OpenWRT
> 4.19 kernel to parity on SFP stuff with the current state of play.

Nice! Thanks for the work. That makes testing a lot easier for me.

Regards
Jonas

P.S: it's OpenWrt, not OpenWRT ;p

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

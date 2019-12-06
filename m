Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A481156B0
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Dec 2019 18:45:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iymQelTjFocEMGhivNK/XkJGpnigwdcELv+mhHwWJ8A=; b=gOvkVHozXuE32V
	QDhswZ+BztmyI4Wa3IvdiIaoC7Xkl5FoB4P3fp+ZGZ9k6E7hskMXmulImz6mZEI2+ON2XaWNeHfQt
	X7lvU/pfDth7temV8fMRuleZW34v4fVSzBDUA2jNyrdiwgx078D3HIEUnF43aKHIehJaBPssai2hN
	VxsSVF3O+oC2rEsr6w3KIrAT3w48YBFafGuI99pZKJMoVpAC81RZWEmrXtIIaf7r/bR3KGCl4riBm
	t4cjcVnVrYnw8gZdvSMdhiqZ6a1r6KxbN9rNgsFMZ3OM3lld8Pctc6t7R6eSru6NPdOHUmHseHLle
	3zchEA/0QyNwgG5WulEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idHfI-0006QE-8B; Fri, 06 Dec 2019 17:45:16 +0000
Received: from mail-il1-x12e.google.com ([2607:f8b0:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idHf7-0005gZ-Ow
 for openwrt-devel@lists.openwrt.org; Fri, 06 Dec 2019 17:45:07 +0000
Received: by mail-il1-x12e.google.com with SMTP id b15so6967638iln.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 06 Dec 2019 09:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vyacsPEfofZ/bzXGzvLqvJCYrljxE5OYSUXPJGDKxCw=;
 b=kd6o62huHNLIuZRey0pvPc+MM4SZ7+byN4jqpkX7aAsmNR3SJI+5CnfhrcC6w4pivW
 0mcosrdOh8RoZ1ZbNgqhg1tMP+r4aMrqhHwnYuRuebCfasLUfkhEegiPweLjizfxiN1l
 As4eIiHlylR4u6nrnGSn5K6Z1UZ0UJslX/1uPFOsXywBkLelGsz2DfjhY0lmsJ9JT3TM
 +LfU2qsWu0Cpji14K205dxrYoRWUihjDGNfb7azSaNl2pmRCHNVBKcVM66itpJgo0/F1
 dU+dmL/AJ7096fukO63X4Ww23Atu2ci20ZgUDD3RJi62S9hfzJzaTL4uLblPDdbdVYXx
 i09A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vyacsPEfofZ/bzXGzvLqvJCYrljxE5OYSUXPJGDKxCw=;
 b=sUyjTImSgfk60TcS6bA/tpwFCeRGJDE8h+DQubKPOvtWzb4DiTqeNZUJLVb2VyxS/G
 qaGLtvFe9f/nvEB3a4REtLGpGwqHyvjbjKWenolgHjD81gXPLG28LssF46MIcNTAS8J0
 pSH52AnsjJO72mxEa2Mok5VBXvTqfexoHngy1E93tIiMe6FxpCau63El4Vg3xf8IyzKN
 Tljf0yHa8/v/wRsGx+fmvfx8NTWR63l3nEdUYz033eL8ofKFavhYRNJmYa+zlUgTc0cf
 SX+u5yu0OXoYQfXJzi6ZIiYqke/5i82VGGuF9Qy9GaCZdIquLpkRR+SenZl/yTR+hvY4
 CLog==
X-Gm-Message-State: APjAAAUy5B8AbRDj8s1jmwobrlKa8uYK6xCoFi1SGQAft3SFuXQOGDTe
 wGNy3P4K7TDtsiZe7rHAShp35oaBQLkWLkvYjI/3IkwyEKw=
X-Google-Smtp-Source: APXvYqynHuUWq55ZxSJZblI43niKQTe+jJGQQf1Zj9L2GZAz2NUWt8UjpB5J4C3ouwFoStb1Dm4QBq8MLuwbwtDIrok=
X-Received: by 2002:a92:4013:: with SMTP id n19mr15400200ila.279.1575654303545; 
 Fri, 06 Dec 2019 09:45:03 -0800 (PST)
MIME-Version: 1.0
References: <CAALvt2MKiCHmZb5neZqjawnr-R1VAHpTK+LQafPrUj=i_UJ05w@mail.gmail.com>
 <20191203143434.GF8181@meh.true.cz>
 <CAALvt2POG3isiKH+2aHjSGRoh-+HADtamD9O2VLOCKO=73byGw@mail.gmail.com>
 <20191205200036.GD71465@meh.true.cz>
In-Reply-To: <20191205200036.GD71465@meh.true.cz>
From: Joe Ayers <joe@ayerscasa.com>
Date: Fri, 6 Dec 2019 09:44:54 -0800
Message-ID: <CAALvt2NygyiyJ3iV82B3DXLr+hWsW_7T=iL=9=7xnyUHxD8UdA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_094505_863127_6FE12CE1 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

>
>
> > Possibly the same symptoms don't exist on 128MB RAM devices.
>
> Like there is some if condition, which is doing some nasty things on 64M
> devices? I admit, that I don't have ath10k-ct source code under my pillow, but
> it doesn't make much sense to me.
>
> > Comparable results between above and my 64MB device.   However, if the
> > sleep time is extended the consumption is more
>
> Ok, I'll let it run overnight with 120s sleep in between.
>
> > I suspect this is not the intended behavior.
>
> No its not and it's even strange, that I'm not seeing it here if it should
> happen in the "default setup". Maybe its because:
>
> 1. You're using custom image (I'm using official prebuilt images)
> 2. You're not providing all the steps needed to reproduce the issue
> 3. I've way different hardware
>
> Every detail could make huge difference.
>
> -- ynezz

On the device I am testing, it is both (2GHz) ath9k and (5GHz) ath10k.
  These look to be related patches to this issue:

960-0010-ath10k-limit-htt-rx-ring-size.patch
960-0011-ath10k-limit-pci-buffer-size.patch

In the v19.07.0-rc2 build for the rb-nor-flash-16M-ac ar71xx image,
these patches are applied to backports-4.19.85-1, but don't seem to be
applied to ath10k-ct-2019-09-09-5e8cd86f.    Should ath10k-ct have
these and other patches?    The device's installed packages do include
ath10k-ct (from downloads.openwrt.org installed image).

Joe AE6XE

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

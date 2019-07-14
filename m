Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EC768131
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 22:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qd8IIV8vaeu4ozaCrL1SlNebYTuwk8V8hREyc0nifKE=; b=uEL4kQKOLv9F1E
	D/6/DCWT1bjVg90ibdmSK7HmT66RpbRaCAhGMmm3Z8QOPS1o6guLO4yM75Dhvznuwm7dvJjB5omd2
	AoMcVPl14ktbhOIxrY3KgbiCx1ycD2jJc8sQVioRCcyqWVp79tE6YWWegwGPs6lrvJIp1EXj/fLro
	r77U2ECpdq8tENOk8G9NmEaCVaDxeiY1tjFInlDOlQmkM8cdpzJ1eSWoFmauxgrTwkuNFY9Rj3duN
	XTDGGpC5fEYukltVfQJv0lD6akXOWJRTO9SBn0NbE0KxZeClO5dTGI3oE/QaETTZVX2cAYQ+JOpCX
	N8kn31Qf2cTBSoDciu9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmlO8-0000xA-Qc; Sun, 14 Jul 2019 20:46:28 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmlNz-0000wa-S8
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 20:46:21 +0000
Received: by mail-lf1-x143.google.com with SMTP id c9so9595022lfh.4
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 13:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kDtQLYb//e9krpk2CYI8P7mXQNcIf6XzsA09Ku4x8Lc=;
 b=gNyS+A53ZZaprpbz6lhBMe/9Bt7eYQQrVhdWSjeCW+lu3leR0z2M52dVnYjyvy7xbX
 NCjeW7hIhICK/DRqFux3b2+hZ6zFVOJ/R98dum3ao/jZFRKer4M1w7WMUMaUH/NkDmCL
 k5ev+d2Oa4Isz+qouXoLw/8AAfeEzfe5HbA6XbJC4FnAeoBMeyRDXv+2mdntKq2wjA2N
 4BBatL5jFd3+EFOTt4kY4eLC6VdoLjbViLdEsYLZvvxrYO//sp045zHuh53agky+YX/L
 ldGRXvi+trJrDJUvBrLd1Rey6/d98hxnb6jZwwUTR8tzpo3GBlc+6PbYOhWPySQCLSw/
 DJSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kDtQLYb//e9krpk2CYI8P7mXQNcIf6XzsA09Ku4x8Lc=;
 b=ON/U4C59Upr/DwOo2pSV3LBuuBYUzmEweQQiVDQub4xPiKSJMVriY+US31/dKQahRS
 Epo4Sz0dNg2Y7f/eZWN8+AVssg6gQbxQsWxoMSuUeEpALm2n/G47NSvC4T/3gmPgQCj9
 guHwAHXfP1oFgQtJKBDSSZvjGk/MrVbsaah3wT0SXafJ+TdcqODDtluz9Zz+4WAh1jwa
 zzGTEjQ61wjLCcQUao0lXnE44avuE47txVoMxqoFMu0Fy4DEvS3XZ7zapRT7phIzQRZg
 JeNvfz7hYC/q9Mz2AAM4bp1TWJJ4527Sn9yFYPT7y2XFRAsDHmxhGXhtnrZSfvlouReu
 pWFA==
X-Gm-Message-State: APjAAAVIPwVbj8aIIzgWSkit97820dd472rJdv12L2Qrwe8qJFtnY8Qq
 ErJ1U1sUsZ51DlSa4UxqXHmmNvYcO6ibL9JZ+Erv3g==
X-Google-Smtp-Source: APXvYqxhHjFpjEPqtU3V+YcOC8iLZxD27HdFVx5u6+kiYFgGy/1hzr2ZNG32U3CDY1QRodE5p0grE0+r4svRLhtCpxw=
X-Received: by 2002:a19:7616:: with SMTP id c22mr9933089lff.115.1563137176872; 
 Sun, 14 Jul 2019 13:46:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190714135037.18471-1-linus.walleij@linaro.org>
 <79ce4232-ea93-e9ee-a59d-b9b828b73be8@gmail.com>
In-Reply-To: <79ce4232-ea93-e9ee-a59d-b9b828b73be8@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 14 Jul 2019 22:46:05 +0200
Message-ID: <CACRpkdazsAQ9guJUtqYdxnB-HjCY0jStZM=e5vGkfFVZbbLgjg@mail.gmail.com>
To: Pawel Dembicki <paweldembicki@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_134619_938625_7BC3FA11 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] gemini: Bring up DSA switches
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Jul 14, 2019 at 5:15 PM Pawel Dembicki <paweldembicki@gmail.com> wrote:

> > +storlink,gemini324)
> > +     # These are all connected to eth1 thru VSC7385
> > +     ucidef_set_interface "eth" ifname "eth1" protocol "none"
> > +     ucidef_set_interfaces_lan_wan "eth1 lan1 lan2 lan3 lan4" "eth0"
> > +     ;;

Ooops I say I shall fix it then I don't. eth1 is still there.

OK I fix a v3. The switch is working fine on the VSC7385 like
this.

> I can't reproduce working state on P2020RDB with this two methods.
> In my device work this sequence:
>
> ip link set eth0 up
> ip link set lan1 up
> ip link set lan2 up
> ip link set lan3 up
> ip link set lan4 up
> ip link add name br-lan type bridge
> ip link set dev lan1 master br-lan
> ip link set dev lan2 master br-lan
> ip link set dev lan3 master br-lan
> ip link set dev lan4 master br-lan
> ip addr add 192.168.1.1/24 dev br-lan
> ip link set dev br-lan up
> ip link set dev eth0 master br-lan
>
> I think, vsc73xx without vlan filtering is very tricky now.

I think you should have it like this:

ucidef_set_interface "eth" ifname "eth0" protocol "none"
ucidef_set_interfaces_lan "lan1 lan2 lan3 lan4"

If you don't have any WAN interface (uplink) on the device.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

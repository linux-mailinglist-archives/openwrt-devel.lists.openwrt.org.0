Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29D9153151
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 13:57:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19x+ztvytxkJaOYVdce3tbvlIN+bbIfMrvhxjQyEAtU=; b=caragW+nsxYrH8
	/X4T1XcMIOuVAi8JAdXEMgOJRZ0b1kOw2Qci4GNpc8f6q2NZyWCvg1D4NWQ0cTcicczudQ8IJTs2N
	d6Pg/djlG+Y0ICe3fx9dX1W+ieSqzbXbTV0OLtFC5yq/zUOPCA9nX3mizAjNQuaegLomn6+DAdsA7
	GmQJLc9F46kRrDqlq59HPga7Vr+lRbHiylAIR+t8FqknJreYbUWpMZKKbzis7N0wvWNkVcbZx7z9l
	wHRZSwqDPjWSXWD8WWrQrSPvdl5Z+1TS5XSCPi2JZ+wVQTMNJlXMM28iyxfUkPk8xVeyjesD6MS7k
	aErqKBLcLeNSqsoSawUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izKEr-0005g4-NX; Wed, 05 Feb 2020 12:57:05 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKEn-0005fw-IB
 for openwrt-devel@bombadil.infradead.org; Wed, 05 Feb 2020 12:57:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=FPxWkcXbihFWIlurB5DMpNiAQIrl1QktUOZ4BHpiOTs=; b=z2OfS/1oOfCvVqseNYJMWqAxCj
 Uo7eRdaA+KIG1kmTvYLwDE6B9cE0W3sa87YgYp6g2wKhQxjmjrrJRMKo0w1/Kgtu6RTY9mliyVwzn
 4ND9oJz1FpCClTfiG1jrpQ8jbWKLUh1mAzYlnJm4YBJKscjZvciAS79WDVU7dn1UTbK3aMQ1SCmV5
 mlMSmXJr2tfPFVlGNhSHl7n+qRlO59RTq3P7KEv7inGtVGT2PIV1W0Jzmoq0gP2hvyCp5kzNJWy9V
 VCf+J/z6fWg7dzK9hOFfrPdDtBZ8LQuqYVwzeLep4Bgj4J3twdjIxT93LR7KWC7yYQMZma27s42Jk
 PpGSy/1Q==;
Received: from mout.kundenserver.de ([217.72.192.73])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKEk-0002dN-N9
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 12:56:59 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N0X4c-1jmjxi1pfY-00wYyb; Wed, 05
 Feb 2020 13:56:46 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?iso-8859-2?Q?'Alin_N=E3stac'?= <alin.nastac@gmail.com>,
 "'Hans Dedecker'" <dedeckeh@gmail.com>
References: <1580743613-29482-1-git-send-email-alin.nastac@technicolor.com>
 <CAJLcKsEWM3RBQQqGU9ESRAd=N7ObvdSSgAgNpewr52gmx+JD=A@mail.gmail.com>
 <CAF1oqRBa5vabU4Am+Q-Fqr+2mp-LUsLyjYqWzrzMnWSF3PQ4Cw@mail.gmail.com>
In-Reply-To: <CAF1oqRBa5vabU4Am+Q-Fqr+2mp-LUsLyjYqWzrzMnWSF3PQ4Cw@mail.gmail.com>
Date: Wed, 5 Feb 2020 13:56:44 +0100
Message-ID: <007e01d5dc23$b9107fd0$2b317f70$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQMms56D32+A8G7+0r2QD0LMBZ9EqAKVco6PAtmEJwWlP2gC8A==
X-Provags-ID: V03:K1:RgUOozJUgVRut9uI9eR3b8HNxyJRiCL0zNsnauyv7RGI5Jt9cUZ
 dBw7xdZeNHT1qQL4jjveZEQhHmbQiCbBWoZFvwhN9tkFtQp/yE8eGFa3w4oP2vnQ38xpm59
 s4iV+1NhGhEAwbMEBnIowBr4zPrseaq02yBIjzl4ybf2myRdasE1UjIovRQh1+X1npoA38D
 qTB8vVzGYOXnXcbLxyE/Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ILlFIPdPcIs=:L1HClUa8vKzXJFYvC7F1Sd
 oW/UWIebY9tTbJsRtyKlq2Q9tteeiyyaXD7nHok6RBtVDJUZ2AlPbAb5Dl1x0WrSVzIaIdmCI
 +0+nIfbjkBvmsTZJ/uvKRIVcYPNmRd8B+9MKgTAzSkgRRpROuG7Jr1oIvlPFyOqLdnNVZ8wOk
 veQkxTEpvh2cBDCe89Oqiiw9ZRuMn+V4OJqlwbyi7ZOeZ2dlkQK27KxI073f1tv/IVv82FMjG
 kYpflvaTVRqcpQ4gtHr85oxWgeJjkg/Asu8zaNRCqTJPBwDJrLwXq5PkF2a2dTXj/5oJmKfQP
 igkv4nTv3EPPWVgSnASidIvdtRc8Dbq14u26n2TM9CZVPdyzGw+T+FEfwr6R93CmeorEvrn9T
 JrG4P7hXXwscseJAKKu/6B8Hfrxk2zQq8B6fN/Lkt2Kv/aSI5fbm8D6ceTF/JT8ei0k8x6eeN
 VGcj6LkLMJ1ViaidLSO4QQG1P0Cgz8tnV8Z9V1sZ9s9tH1EEGoDHgIL09fFtZq2f8aKdtGm5k
 M1sg2hToBH+hfn8E8aZeHLkgP8SaFXkjahH9vKsV+2JxY85NYJColP/Qo5ew0Mj9dCuFqJ1qh
 ruZlqGq3WEDi7TFCe1fA0bT5FtD4LQRgKiqALfU2QtFRLaQ/b+SG9/44lUNWsL4i3hh/cFagB
 8eY9jSLhiuqduY3AAkNGajg92bufYvg6EohrtUDVvlE5Za1SJbELwaBmRy0Dh9symwLbVSzLP
 JXy5gAVMd+kFuH+FdK/ZsdvKIr6tVv8RLrNfEqHjo45mziGVC3F97A51xB/ek+TNjU8Yq9vZ1
 85AcpOD8iY07i0JycfoJzfMMwfgez79GFXt2+Q26qSbORwvCLshT4NuNWh9pxRK4bZ7vBoU
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [netifd][PATCH] interface-ip: transfer prefix
 route ownership to kernel when IPv6 address becomes deprecated
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
Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

works for me as well.

However, I'd prefer a shorter commit title, e.g.

interface-ip: transfer prefix route ownership for deprecated ipv6addr to kernel

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Alin Nastac
> Sent: Mittwoch, 5. Februar 2020 09:34
> To: Hans Dedecker <dedeckeh@gmail.com>
> Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [netifd][PATCH] interface-ip: transfer prefix
route
> ownership to kernel when IPv6 address becomes deprecated
> 
> Hi Hans,
> 
> On Tue, Feb 4, 2020 at 10:49 PM Hans Dedecker <dedeckeh@gmail.com> wrote:
> >
> > Hi Alin,
> > On Mon, Feb 3, 2020 at 4:27 PM Alin Nastac <alin.nastac@gmail.com> wrote:
> > >
> > > From: Alin Nastac <alin.nastac@gmail.com>
> > >
> > > When netifd manages the prefix route directly, it will remove it
> > > the moment prefix gets deprecated. This will make it impossible
> > > for the target to send ICMPv6 errors back to LAN devices still
> > > using the deprecated prefix, thus breaking the L-14 requirement
> > > of RFC 7084.
> > >
> > > Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
> > The patch fails to apply with the following error message :
> >
> > Applying: interface-ip: transfer prefix route ownership to kernel when
> > IPv6 address becomes deprecated
> > error: sha1 information is lacking or useless (interface-ip.c).
> > error: could not build fake ancestor
> > Patch failed at 0001 interface-ip: transfer prefix route ownership to
> > kernel when IPv6 address becomes deprecated
> >
> > >                         route.addr = addr.addr;
> > >                 }
> > >
> > > +               addr.flags |= DEVADDR_OFFLINK;
> > >                 if (system_add_address(l3_downlink, &addr))
> > >                         return;
> > >
> > > --
> > > 2.7.4
> > >
> 
> I've downloaded the patch from
> https://patchwork.ozlabs.org/patch/1232885/ and applied it
> successfully with a git am command line:
> 
> nastaca@cplx1037:/usr/localdisk/openwrt/netifd$ git am
> ~/Downloads/OpenWrt-Devel-netifd-interface-ip-transfer-prefix-route-
> ownership-to-kernel-when-IPv6-address-becomes
> -deprecated.patch
> Applying: interface-ip: transfer prefix route ownership to kernel when
> IPv6 address becomes deprecated
> 
> Alin
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

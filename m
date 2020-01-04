Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B366130282
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Jan 2020 14:26:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ydYTJMbE1IFShlzXt80glkrky/ok5Gh79NI28XyXr+g=; b=jK7TGgfylvXm7v
	noCE3VYfNSJQqlYPqv1GVGBWbtHDu7wMcLpA8/xepsBw69L2QC3oTuLtU8267m0tOogro6O0R+Rn4
	SVXQ4liJm5PMIuXynBPEGhM+GBloQr/8y4EVvx/pAmMKwNf0Vecy7JUw4K0y8B+hSy+qGEn+/zz4J
	FeIIByVzRG4xQywMUT3LJ1Bj7bt2GlNSiVlgC4PU7jB9JK7xlCOWDbwlNRmZU7BeYZ+z2lUtqSmm5
	tlLIkifj07NMz9gCKo4UM0VNqV4JKU8XMfw7B4RjZ4xqXNOdAazGeDHpgWqcyU3FP+M5pzR40Djzw
	DMlY5peogQ6io+Uz857g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1injRk-0005XN-Ec; Sat, 04 Jan 2020 13:26:28 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1injRd-0005Wv-AU
 for openwrt-devel@lists.openwrt.org; Sat, 04 Jan 2020 13:26:22 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1injQf-0002ZC-Ne; Sat, 04 Jan 2020 14:26:17 +0100
Date: Sat, 4 Jan 2020 15:25:02 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Message-ID: <20200104132502.GE1301@makrotopia.org>
References: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
 <20191122095541.688125-2-thomas.petazzoni@bootlin.com>
 <20200104130638.GD1301@makrotopia.org>
 <20200104141538.4074552a@windsurf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104141538.4074552a@windsurf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_052621_362746_D1F0CA14 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/7] package/utils/busybox: add optional
 selinux support
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

Hi Thomas,

On Sat, Jan 04, 2020 at 02:15:38PM +0100, Thomas Petazzoni wrote:
> Hello,
> 
> On Sat, 4 Jan 2020 15:06:38 +0200
> Daniel Golle <daniel@makrotopia.org> wrote:
> 
> > > @@ -76,6 +76,9 @@ LDLIBS += $(call BUSYBOX_IF_ENABLED,PAM,pam pam_misc pthread)
> > >  ifeq ($(CONFIG_USE_GLIBC),y)
> > >    LDLIBS += $(call BUSYBOX_IF_ENABLED,NSLOOKUP_OPENWRT,resolv)
> > >  endif
> > > +ifeq ($(CONFIG_BUSYBOX_CONFIG_SELINUX),y)
> > > +  LDLIBS += selinux sepol
> > > +endif  
> > 
> > also here, it would be better to have a build-variant of busybox with
> > has selinux enabled instead of a buildroot compile option.
> 
> Thanks for your feedback. Could you give some initial hints on what you
> mean by "build-variant", or at least point at some existing examples ?

See package/utils/px5g/Makefile, in that case px5g is build two times,
once with built-in crypto and once with libmbedtls linked. The result
are two binary packages 'px5g'(-standalone) and 'px5g-mbedtls'.
Doing the same for SELinux-enabled busybox and procd will potentially
allow building SELinux-enabled images using the ImageBuilder (as
opposed to building them entirely from source).
And similar to how we do for seccomp-policies (see
package/network/services/umdns/Makefile) we could ship SELinux policies
with packages or as add-on packages like in other distributions (given
we will add support for that in the build system as well as in opkg).


Cheers


Daniel

> 
> Thanks a lot,
> 
> Thomas
> -- 
> Thomas Petazzoni, CTO, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

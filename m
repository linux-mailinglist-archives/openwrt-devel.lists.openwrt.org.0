Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4181ED73D
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 22:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2v3Y/cSJlAtSxSs9ZJIeoPGFg40CAO+RRYIgIyIGIZ8=; b=pHZ4LN5BixytWc
	P/nZASmKz7dI1zMSCZxPGSPdAkuyZ1y1Ri5fPMtFFzh30Q9Fsh6N9TwIs5A5KOYMsvpbCDnKG/QeB
	F97ptqqATOcNYREksCY/TgorbjPcnJjYJlrciRpPU66GUG40h4XAsO1yFRpjFAA9ORy3tqNk97dHO
	do7O7rxfvYbA+u2t54kJKAQ5HSp/zYLbm4mXw8THwNFpZLLWk4fQ3TyY55cTp4zDBRcnnWT0A0+Uh
	Ec+t/P2epO4NJgqZ9Ffl2TRWOEHwG1sju7YgMcgGEcLF/xJos9rAnxlunmGtJMLZwjUteJnP88QB7
	DBAowWsxCuhSO1BA/Jvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgZoS-00019I-0I; Wed, 03 Jun 2020 20:16:36 +0000
Received: from mail-oo1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgZoM-00018m-Bn
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 20:16:32 +0000
Received: by mail-oo1-xc41.google.com with SMTP id v1so793234ooh.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jun 2020 13:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wm/LmraWPalYSTL8XApQl+SjuHy5jVkf5eF/2qSi8n0=;
 b=z/nOnJ+0KTvTaM/26cJdslBDRrn7wSQ/VRZMWYp58lFv4eh3Z2a3lwLiRgbptf1i+y
 iiXKnSXW+HM85gyeMRQwRWZqFFMbbKJ+rJmZo1vv01OeurluR6Fai0rbxyT4/DIFh7gF
 A2zJhhq87SIu6knYl7jeUtp6q+gc1oMJ15MdVv9wXzex7PQlSgOqg8JPuGFDFESAfQEK
 kIfL2AvvFAwQOzJGfJpj+zPZ5zn2LC8a8S9G29MeO4UagZWl9NzWLMjb++5P8U1t1e3F
 SQXJd6t5cKNaZPyealMd6zd/spIIhZxFlFOQqM6a4WVWFo/j0eq4lZJ1XDuh6IIhN5Mf
 XWqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wm/LmraWPalYSTL8XApQl+SjuHy5jVkf5eF/2qSi8n0=;
 b=YjNqqdebjFZ4B/XgxAyzzQ3KyE7Uyl9oS2xv5+Ezo/ry26ZN1AwCRGyyr7R9GDWqkW
 UM3ikfZzjM5yoeshYpFj6HYCIJuQLr2DOl8fqvn0qYSBNqVKyAJUpvIDgm4UQqmI86Qe
 KhXheI/sXROPrgYetD1ULQvfIjcRlysmPhakrNDybzxtKn41Eb4RQX6GKNQJ/GLnS3z/
 n8MzyynJUfqlnGwuM/UOfwsS1jGj+Onzv0NjGZu4CNIxb9fUJSeHobfF+Kw3EmGuVu6a
 97bDE5zSLVVJkNYicX+sKqCyaaQXP/jLPonvN3AjsY1LXUNJoxTiPKSuWwPM/hPed6mv
 n+nQ==
X-Gm-Message-State: AOAM531jBUK7pS+PTiV8xiOTtwQK8fp6pRrO60x+xocMq34g4pY9L313
 RmPO8PwZU1crNpHCQuBOgDwl+mGEUPgObIR0Z4nlj/R/eJGb5w==
X-Google-Smtp-Source: ABdhPJxC5+4ETNyyx06qA5JUIM63TXpEsgLb+O52BqurC0aC7SJ5tL2PgYcsMpxUeBCBBHmQkWq1FiMEZxSjPC8F/yE=
X-Received: by 2002:a4a:b40d:: with SMTP id y13mr1304560oon.58.1591215388845; 
 Wed, 03 Jun 2020 13:16:28 -0700 (PDT)
MIME-Version: 1.0
References: <1591117502-28100-1-git-send-email-tharvey@gateworks.com>
 <1591117502-28100-2-git-send-email-tharvey@gateworks.com>
 <d2daae4b-28ed-b783-2eed-3caf42f15288@hauke-m.de>
In-Reply-To: <d2daae4b-28ed-b783-2eed-3caf42f15288@hauke-m.de>
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 3 Jun 2020 13:16:17 -0700
Message-ID: <CAJ+vNU2-0k_MHf8cwXNBD+NMYjCJG7Gb=UFMFHyfBicPcM=ANQ@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_131630_454000_B61D907B 
X-CRM114-Status: GOOD (  28.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] octeontx: enable Cavium CPT and
 ZIP drivers
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

On Tue, Jun 2, 2020 at 3:21 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> On 6/2/20 7:05 PM, Tim Harvey wrote:
> > The CPT module requires firmware which we add here as well.
> >
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > ---
> > v2: added license file for firmware
> > ---
> >  target/linux/octeontx/config-5.4                     |  11 +++++++++++
> >  target/linux/octeontx/files/firmware/cpt8x-mc-ae.out | Bin 0 -> 9760 bytes
> >  target/linux/octeontx/files/firmware/cpt8x-mc-se.out | Bin 0 -> 35584 bytes
> >  target/linux/octeontx/files/firmware/license.txt     |  11 +++++++++++
> >  4 files changed, 22 insertions(+)
> >  create mode 100644 target/linux/octeontx/files/firmware/cpt8x-mc-ae.out
> >  create mode 100644 target/linux/octeontx/files/firmware/cpt8x-mc-se.out
> >  create mode 100644 target/linux/octeontx/files/firmware/license.txt
> >
> > diff --git a/target/linux/octeontx/config-5.4 b/target/linux/octeontx/config-5.4
> > index cfb8b19..9fcd12b 100644
> > --- a/target/linux/octeontx/config-5.4
> > +++ b/target/linux/octeontx/config-5.4
> ......
> > @@ -233,6 +239,8 @@ CONFIG_EEPROM_AT24=y
> >  CONFIG_EFI_EARLYCON=y
> >  CONFIG_EXT4_FS=y
> >  CONFIG_EXT4_FS_POSIX_ACL=y
> > +CONFIG_EXTRA_FIRMWARE="cpt8x-mc-ae.out cpt8x-mc-se.out"
> > +CONFIG_EXTRA_FIRMWARE_DIR="firmware"
> >  CONFIG_F2FS_FS=y
> >  CONFIG_F2FS_FS_XATTR=y
> >  CONFIG_F2FS_STAT_FS=y
> ....
> >
> > diff --git a/target/linux/octeontx/files/firmware/license.txt b/target/linux/octeontx/files/firmware/license.txt
> > new file mode 100644
> > index 0000000..531eaba
> > --- /dev/null
> > +++ b/target/linux/octeontx/files/firmware/license.txt
>
> Hi,
>
> I think this is not compatible with the OpenWrt license or at least goes
> into a gray area.
>
> > @@ -0,0 +1,11 @@
> > +Copyright (C) 2019 Marvell International Ltd.
> > +
> > +The software package is subject to the Marvell binary license that prohibits the
> > +licensee to modify the software, in any manner and that prohibits to distribute
> > +the software as a stand-alone product.
>
> Is the distribution in
> target/linux/octeontx/files/firmware/cpt8x-mc-se.out not a standalone
> product?

Hauke,

I agree that this is a gray area for sure. I don't like the wording at
all either.

> You can create a link to https://git.openwrt.org where you can directly
> download it when we push it into openwrt master.
>

I'm not sure what you mean by this. Are you saying we can still push
the firmware binaries 'somewhere' on https://git.openwrt.org but not
include the build process?

> > +Any use of the software, in all or in
> > +part, shall not be made subject to or otherwise contaminated by, a copyleft open
> > +source license (as defined by the Open Source Initiative), such as without
> > +limitation, GNU GPL or LGPL licenses.
>
> Adding this file in CONFIG_EXTRA_FIRMWARE could be seen as bundeling it
> with GPL code.
>
> The CONFIG_EXTRA_FIRMWARE option says this:
>   WARNING: If you include additional firmware files into your binary
>   kernel image that are not available under the terms of the GPL,
>   then it may be a violation of the GPL to distribute the resulting
>   image since it combines both GPL and non-GPL work. You should
>   consult a lawyer of your own before distributing such an image.
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/base/firmware_loader/Kconfig#n32
>
> > +Any software which integrates this code or any part of it thereof, should
> > +include in its header the above license.
>
> We would have to extend the license information for all our octeontx
> binaries to add this information.
>

I can replace this with a patch that enables the cpt driver as a
module to make it easier for people to use but they will have to go
get firmware and place it in their /lib/firmware on their rootfs this
way.

>
> If this firmware contains cryptography we could also violate some export
> control regulation, but normally no one cares.
>

agreed.

Tim

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

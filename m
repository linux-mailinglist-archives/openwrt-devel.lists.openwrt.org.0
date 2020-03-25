Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BDF19296C
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 14:19:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Xkkeh4nFcsg6WmQ5DS52z7ZzIYnQNU+jeelsShUrP8=; b=uxJIlYW0ZZMORj
	+lXigeDRaoqL2KpFHWGjHKIFPULE8ivQL+M8PQg3AX8V9MXAEPjxW1M8kBgW7Q3W82fbHwMJT+JbR
	QVE5bQ7eCPYhnvsvW6NNJNTLpYPJr5frGuG9IqWKPf1O/vkfx955TaUl9mW7ICAeCxu9WlAqIzthq
	Ey1f9VWsEer+UswPIVwSnWL+cmQ1nLdeTAqj2igjo9SzaYNyRuzxEXmkjQeLxkbh5fAmjpcd4M8g8
	MibRNSQYPveLBWCDTUoCGvMiZ86c+KhiPf8s3VMR9lmaXmvIJqQLSfahRyfvDES2MxjYGfL67Qb6x
	EaYDRmaitsqYOuOysU9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH5wD-0000SM-H1; Wed, 25 Mar 2020 13:19:17 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5w7-0000Rb-Lp
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 13:19:13 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jH5vx-0007D4-TZ; Wed, 25 Mar 2020 14:19:04 +0100
Date: Wed, 25 Mar 2020 13:18:50 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: mail@adrianschmutzler.de
Message-ID: <20200325131850.GA2612@makrotopia.org>
References: <20200325070657.528739-1-mail@aparcar.org>
 <004701d6029a$d6146bd0$823d4370$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <004701d6029a$d6146bd0$823d4370$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_061911_714595_833F43C2 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] x86: fix virutalbox squashfs images
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
Cc: openwrt-devel@lists.openwrt.org, russell@personaltelco.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Wed, Mar 25, 2020 at 12:45:08PM +0100, mail@adrianschmutzler.de wrote:
> Hi,
> =

> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> > On Behalf Of Paul Spooren
> > Sent: Mittwoch, 25. M=E4rz 2020 08:07
> > To: openwrt-devel@lists.openwrt.org
> > Cc: russell@personaltelco.net
> > Subject: [OpenWrt-Devel] [PATCH] x86: fix virutalbox squashfs images
> > =

> > The previous rework of x86 image creation broke the `vdi` images. ussell
> =

> typo in title and missing "R" in name directly above.
> =

> Best
> =

> Adrian
> =

> > Senior <russell@personaltelco.net> came up with this patch to fix the
> > padding.
> > =

> > Tested with x86/64 with Docker (squashfs), qemustart (ext4/squashfs) and
> > virtualbox (ext4/squashfs).
> > =

> > Signed-off-by: Paul Spooren <mail@aparcar.org>
> > ---
> >  target/linux/x86/image/Makefile | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> > =

> > diff --git a/target/linux/x86/image/Makefile
> > b/target/linux/x86/image/Makefile index 81a8f73efc..6d12494f54 100644
> > --- a/target/linux/x86/image/Makefile
> > +++ b/target/linux/x86/image/Makefile
> > @@ -47,7 +47,7 @@ BOOTOPTS:=3D$(call qstrip,$(CONFIG_GRUB_BOOTOPTS))
> > define Build/combined
> >  	$(CP) $(KDIR)/$(KERNEL_NAME) $@.boot/boot/vmlinuz
> >  	-$(CP) $(STAGING_DIR_ROOT)/boot/. $@.boot/boot/
> > -	PADDING=3D"$(CONFIG_TARGET_IMAGES_PAD)"
> > SIGNATURE=3D"$(IMG_PART_SIGNATURE)"
> > $(SCRIPT_DIR)/gen_image_generic.sh \
> > +	PADDING=3D"1" SIGNATURE=3D"$(IMG_PART_SIGNATURE)"

Enabling padding unconditionally wastes space on targets which do not
need it (ie. small size NOR flash devices).
Looks like you should rather fix the logic setting
CONFIG_TARGET_IMAGE_PAD.


> > +$(SCRIPT_DIR)/gen_image_generic.sh \
> >  		$@ \
> >  		$(CONFIG_TARGET_KERNEL_PARTSIZE) $@.boot \
> >  		$(CONFIG_TARGET_ROOTFS_PARTSIZE) $(IMAGE_ROOTFS) \
> > @@ -95,10 +95,10 @@ endef  DEVICE_VARS +=3D GRUB2_VARIANT  define
> > Device/Default
> >    ARTIFACT/image.iso :=3D grub-config iso | iso
> > -  IMAGE/combined.img :=3D append-rootfs | pad-extra 128k | grub-config=
 pc |
> > combined | grub-install
> > -  IMAGE/combined.img.gz :=3D append-rootfs | pad-extra 128k | grub-con=
fig
> > pc | combined | grub-install | gzip
> > -  IMAGE/combined.vdi :=3D append-rootfs | pad-extra 128k | grub-config=
 pc |
> > combined | grub-install | qemu-image vdi
> > -  IMAGE/combined.vmdk :=3D append-rootfs | pad-extra 128k | grub-confi=
g pc
> > | combined | grub-install | qemu-image vmdk
> > +  IMAGE/combined.img :=3D grub-config pc | combined | grub-install
> > + IMAGE/combined.img.gz :=3D grub-config pc | combined | grub-install |
> > + gzip  IMAGE/combined.vdi :=3D grub-config pc | combined | grub-instal=
l |
> > + qemu-image vdi  IMAGE/combined.vmdk :=3D grub-config pc | combined |
> > + grub-install | qemu-image vmdk
> >    ifeq ($(CONFIG_TARGET_IMAGES_GZIP),y)
> >      IMAGES :=3D combined.img.gz
> >    else
> > --
> > 2.25.1
> > =

> > =

> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel



> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

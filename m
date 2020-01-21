Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA7A143B74
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 11:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mRqRSASan8ldk5EkNseonKabMuNFwVee9dFNnmsURY=; b=ksuCeOfrR2fUdX
	QP4ig5UAmTNulDexYt/zW8SD02eNiAzWhoJ4KuIei2Y9yqIw/90plL8OuXF309X5ClkNy+l3sUME7
	cGpjUk/gAZuK4nYjuxjJpGywBCxRNRafvq5akGWxDwfdtLTlaQJoerLM7te0BnF4VC87ExjNBAlPN
	cO8INnUyL+LbgwzDFzZuEagVmpIszMo09Jgv+iYfiTuK4Gb3lgaIuuGO3Y0MvIiiG2yexMVhsOXVd
	dxV2ALD474CJzLMm3y6JlSe45kqfbyJtVruBehXD7y8I/sEAcCHjXzoOgkSD5hv5N8BVXrQOv+EKr
	VsvTaLg8x3id6+TxtQUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itrBz-0002Ai-RS; Tue, 21 Jan 2020 10:55:31 +0000
Received: from jax4mhob24.registeredsite.com ([64.69.218.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itrBn-0002A6-9f
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 10:55:23 +0000
Received: from mailpod.hostingplatform.com ([10.30.71.94])
 by jax4mhob24.registeredsite.com (8.14.4/8.14.4) with ESMTP id 00LAtGJP073266
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 05:55:16 -0500
Received: (qmail 15044 invoked by uid 0); 21 Jan 2020 10:55:16 -0000
X-TCPREMOTEIP: 65.41.18.216
X-Authenticated-UID: sbrown@opensat.com
Received: from unknown (HELO 155-15-85-208.altiusbb.net)
 (sbrown@opensat.com@65.41.18.216)
 by 0 with ESMTPA; 21 Jan 2020 10:55:16 -0000
Received: from localhost (localhost [127.0.0.1])
 by 155-15-85-208.altiusbb.net (Postfix) with ESMTP id 7764A154054E;
 Tue, 21 Jan 2020 05:55:15 -0500 (EST)
X-Virus-Scanned: Debian amavisd-new at ewol.com
X-Spam-Flag: NO
X-Spam-Score: -2.9
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 tagged_above=-999 required=6.31
 tests=[ALL_TRUSTED=-1, BAYES_00=-1.9] autolearn=ham autolearn_force=no
Received: from 155-15-85-208.altiusbb.net ([127.0.0.1])
 by localhost (fl-server.ewol.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1wsDfFx_8goS; Tue, 21 Jan 2020 05:55:09 -0500 (EST)
Received: from w7.lan (w7.lan [192.168.1.9])
 by 155-15-85-208.altiusbb.net (Postfix) with ESMTP id 345B815404F1;
 Tue, 21 Jan 2020 05:55:09 -0500 (EST)
Message-ID: <a787f32fbf7d5b495fbe99a514341d7b3f6d0868.camel@ewol.com>
From: Steve Brown <sbrown@ewol.com>
To: Bruno Pena <brunompena@gmail.com>
Date: Tue, 21 Jan 2020 05:55:09 -0500
In-Reply-To: <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
References: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
 <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
 <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_025519_491119_115DD62C 
X-CRM114-Status: GOOD (  27.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.69.218.112 listed in wl.mailspike.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] fstools: Add support to read-only
 MTD partitions (eg. recovery images)
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

Hi Bruno,

The device is a TPLink Archer A7V5 
(MIPS Qualcomm Atheros QCA956X ver 1 rev 0)

The flash layout is:

[    0.403133] m25p80 spi0.0: w25q128 (16384 Kbytes)
[    0.408045] 7 fixed-partitions partitions found on MTD device spi0.0
[    0.414637] Creating 7 MTD partitions on "spi0.0":
[    0.419613] 0x000000000000-0x000000020000 : "factory-uboot"
[    0.426045] 0x000000020000-0x000000040000 : "u-boot"
[    0.431864] 0x000000040000-0x000000f00000 : "firmware"
[    0.439731] 2 uimage-fw partitions found on MTD device firmware
[    0.445848] Creating 2 MTD partitions on "firmware":
[    0.451022] 0x000000000000-0x0000001a38de : "kernel"
[    0.456798] 0x0000001a38de-0x000000ec0000 : "rootfs"
[    0.462602] mtd: device 4 (rootfs) set to be root filesystem
[    0.469713] 1 squashfs-split partitions found on MTD device rootfs
[    0.476108] 0x0000004d0000-0x000000ec0000 : "rootfs_data"
[    0.482403] 0x000000f40000-0x000000f60000 : "info"
[    0.488005] 0x000000f60000-0x000000fb0000 : "config"
[    0.493837] 0x000000fc0000-0x000000fd0000 : "partition-table"
[    0.500477] 0x000000ff0000-0x000001000000 : "art"

The problem partition seems to be rootfs_data
The mount says "/dev/mtdblock5 on /overlay type jffs2 (rw,noatime)"

Interestingly rootfs and rootfs_data overlap. The former is mounted
R/O.
[    1.912343] VFS: Mounted root (squashfs filesystem) readonly on device 31:4.

Thanks,

Steve

On Tue, 2020-01-21 at 11:01 +0100, Bruno Pena wrote:
> Hi Steve,
> 
> These patches should only impact partitions that are marked as read
> only.
> Can you please provide more details about your configuration?
> (architecture, device profile, mtd layout, the mtd partition
> generating the error)
> 
> Best regards,
> Bruno Pena
> 
> On Tue, Jan 21, 2020, 10:51 Steve Brown <sbrown@ewol.com> wrote:
> > Hi Bruno,
> > 
> > On Sat, 2020-01-04 at 12:52 +0100, Bruno Pena wrote:
> > > This patch enables fstools to open read-only MTD partitions,
> > which in
> > > turn also enables OpenWrt to boot from read-only partitions.
> > > 
> > > The use of read-only partitions is of special importance for
> > WiFi-
> > > only
> > > devices, where a protected read-only recovery image can be used
> > in
> > > case
> > > something goes wrong with the main firmware (eg. user gets locked
> > out
> > > due to bad settings, flash of an unbootable dev firmware, etc).
> > > 
> > > Signed-off-by: Bruno Pena <brunompena@gmail.com>
> > > ---
> > >  libfstools/mtd.c | 19 +++++++++++++++----
> > >  1 file changed, 15 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/libfstools/mtd.c b/libfstools/mtd.c
> > > index 77c71ee..aae633e 100644
> > > --- a/libfstools/mtd.c
> > > +++ b/libfstools/mtd.c
> > > @@ -36,20 +36,31 @@ struct mtd_volume {
> > >  
> > >  static struct driver mtd_driver;
> > >  
> > > +static int mtd_open_device(const char *dev)
> > > +{
> > > +     int ret;
> > > +
> > > +     ret = open(dev, O_RDWR | O_SYNC);
> > > +     if (ret < 0)
> > > +             ret = open(dev, O_RDONLY);
> > > +
> > > +     return ret;
> > > +}
> > > +
> > >  static int mtd_open(const char *mtd, int block)
> > >  {
> > >       FILE *fp;
> > >       char dev[PATH_MAX];
> > > -     int i, ret, flags = O_RDWR | O_SYNC;
> > > +     int i, ret;
> > >  
> > >       if ((fp = fopen("/proc/mtd", "r"))) {
> > >               while (fgets(dev, sizeof(dev), fp)) {
> > >                       if (sscanf(dev, "mtd%d:", &i) &&
> > strstr(dev,
> > > mtd)) {
> > >                               snprintf(dev, sizeof(dev),
> > > "/dev/mtd%s/%d", (block ? "block" : ""), i);
> > > -                             ret = open(dev, flags);
> > > +                             ret = mtd_open_device(dev);
> > >                               if (ret < 0) {
> > >                                       snprintf(dev, sizeof(dev),
> > > "/dev/mtd%s%d", (block ? "block" : ""), i);
> > > -                                     ret = open(dev, flags);
> > > +                                     ret = mtd_open_device(dev);
> > >                               }
> > >                               fclose(fp);
> > >                               return ret;
> > > @@ -58,7 +69,7 @@ static int mtd_open(const char *mtd, int block)
> > >               fclose(fp);
> > >       }
> > >  
> > > -     return open(mtd, flags);
> > > +     return mtd_open_device(mtd);
> > >  }
> > >  
> > >  static void mtd_volume_close(struct mtd_volume *p)
> > 
> > 
> > This patch and related commit
> > de80424f706682e8bba27c60bcd2a9c1b4a5e875
> > break the jffs erase on my Archer a7 v5.
> > 
> >     [   11.787856] jffs2_scan_eraseblock(): End of filesystem
> > marker found at 0x10000
> >     [   11.795357] jffs2_build_filesystem(): unlocking the mtd
> > device...
> >     [   11.795390] done.
> >     [   11.803771] jffs2_build_filesystem(): erasing all blocks
> > after the end marker...
> >     [   11.803781] jffs2: Erase at 0x009e0000 failed immediately:
> > -EROFS. Is the sector locked?
> >          -------------
> >     [   13.138841] jffs2: Erase at 0x00010000 failed immediately:
> > -EROFS. Is the sector locked?
> >     [   13.147188] done.
> >     [   13.149202] jffs2: notice: (487)
> > jffs2_build_xattr_subsystem: complete building xattr subsystem, 0
> > of xdatum (0 unchecked, 0 orphan) and 0 of xref (0 .
> >     [   13.165896] mount_root: unable to set filesystem state
> >     [   13.171443] mount_root: switching to jffs2 overlay
> >     [   13.201867] overlayfs: failed to resolve '/overlay/upper':
> > -2
> >     [   13.223939] mount_root: mount failed:
> > lowerdir=/,upperdir=/overlay/upper,workdir=/overlay/work, options
> > No such device
> >     [   13.235145] mount_root: switching to jffs2 failed - fallback
> > to ramoverlay
> > 
> > Verified by reverting de80424f7. 
> > 
> > Steve
> > 
> > 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

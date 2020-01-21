Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B07AC143B75
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 11:56:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eeq+qqSZKEbiLaROPxt7lDvyqW+y+Q4rYmR0zZbmnbA=; b=N+C2CHVdl0rVv8
	h0S/ZlrecawkW4Nr7SaKBp5qJm4MizDLJlnVOepi84GRZe8gscgII0PsmgTiVamzuPffqimxiSpPv
	W64pbmG5m92Kd5hpMoZAHNuo9LOrnDMVEmjK3YOubUOME9S01jSYECk7WDj5JpzK0XtpB+/a3OpFl
	eBZWNaVU9+c8INTGEQF8GmBkTl86kIcZ6fdHfDoNcbpSGry4MGTcPSRWxhUyVgP3JTB5PKk4np0CQ
	renLRa7y6MUYMeFJe7W1nTNJYY4vim+d9PpLrqmLwagYHvsQG+SF93HrPmHdheTk++4AKfkPsboM4
	R8BcSOQ52Xv89s5Zo22w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itrCS-0002QO-TF; Tue, 21 Jan 2020 10:56:00 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itrCC-0002OG-Vs
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 10:55:49 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1itrC6-0002rv-LJ; Tue, 21 Jan 2020 11:55:40 +0100
Date: Tue, 21 Jan 2020 12:55:27 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Bruno Pena <brunompena@gmail.com>
Message-ID: <20200121104934.GA2465@makrotopia.org>
References: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
 <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
 <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_025545_026394_20125AAD 
X-CRM114-Status: GOOD (  25.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: openwrt-devel@lists.openwrt.org, Steve Brown <sbrown@ewol.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Bruno,
Hi Steve,

On Tue, Jan 21, 2020 at 11:24:28AM +0100, Bruno Pena wrote:
> Please also include the contents of "dmesg" and of the files
> "/proc/cmdline" and "/proc/mtd".
> 
> Best regards,
> Bruno Pena
> 
> On Tue, Jan 21, 2020, 11:01 Bruno Pena <brunompena@gmail.com> wrote:
> 
> > Hi Steve,
> >
> > These patches should only impact partitions that are marked as read only.
> > Can you please provide more details about your configuration?
> > (architecture, device profile, mtd layout, the mtd partition generating the
> > error)

I think this is because opening /dev/mtdX will fail as read-write
but will succeed in read-only mode. Hence /dev/mtdblockX is not even
considered which is a change from the previous behaviour.

> >
> > Best regards,
> > Bruno Pena
> >
> > On Tue, Jan 21, 2020, 10:51 Steve Brown <sbrown@ewol.com> wrote:
> >
> >> Hi Bruno,
> >>
> >> On Sat, 2020-01-04 at 12:52 +0100, Bruno Pena wrote:
> >> > This patch enables fstools to open read-only MTD partitions, which in
> >> > turn also enables OpenWrt to boot from read-only partitions.
> >> >
> >> > The use of read-only partitions is of special importance for WiFi-
> >> > only
> >> > devices, where a protected read-only recovery image can be used in
> >> > case
> >> > something goes wrong with the main firmware (eg. user gets locked out
> >> > due to bad settings, flash of an unbootable dev firmware, etc).
> >> >
> >> > Signed-off-by: Bruno Pena <brunompena@gmail.com>
> >> > ---
> >> >  libfstools/mtd.c | 19 +++++++++++++++----
> >> >  1 file changed, 15 insertions(+), 4 deletions(-)
> >> >
> >> > diff --git a/libfstools/mtd.c b/libfstools/mtd.c
> >> > index 77c71ee..aae633e 100644
> >> > --- a/libfstools/mtd.c
> >> > +++ b/libfstools/mtd.c
> >> > @@ -36,20 +36,31 @@ struct mtd_volume {
> >> >
> >> >  static struct driver mtd_driver;
> >> >
> >> > +static int mtd_open_device(const char *dev)
> >> > +{
> >> > +     int ret;
> >> > +
> >> > +     ret = open(dev, O_RDWR | O_SYNC);
> >> > +     if (ret < 0)
> >> > +             ret = open(dev, O_RDONLY);
> >> > +
> >> > +     return ret;
> >> > +}
> >> > +
> >> >  static int mtd_open(const char *mtd, int block)
> >> >  {
> >> >       FILE *fp;
> >> >       char dev[PATH_MAX];
> >> > -     int i, ret, flags = O_RDWR | O_SYNC;
> >> > +     int i, ret;
> >> >
> >> >       if ((fp = fopen("/proc/mtd", "r"))) {
> >> >               while (fgets(dev, sizeof(dev), fp)) {
> >> >                       if (sscanf(dev, "mtd%d:", &i) && strstr(dev,
> >> > mtd)) {
> >> >                               snprintf(dev, sizeof(dev),
> >> > "/dev/mtd%s/%d", (block ? "block" : ""), i);
> >> > -                             ret = open(dev, flags);
> >> > +                             ret = mtd_open_device(dev);
> >> >                               if (ret < 0) {
> >> >                                       snprintf(dev, sizeof(dev),
> >> > "/dev/mtd%s%d", (block ? "block" : ""), i);
> >> > -                                     ret = open(dev, flags);
> >> > +                                     ret = mtd_open_device(dev);
> >> >                               }
> >> >                               fclose(fp);
> >> >                               return ret;
> >> > @@ -58,7 +69,7 @@ static int mtd_open(const char *mtd, int block)
> >> >               fclose(fp);
> >> >       }
> >> >
> >> > -     return open(mtd, flags);
> >> > +     return mtd_open_device(mtd);
> >> >  }
> >> >
> >> >  static void mtd_volume_close(struct mtd_volume *p)
> >>
> >>
> >> This patch and related commit de80424f706682e8bba27c60bcd2a9c1b4a5e875
> >> break the jffs erase on my Archer a7 v5.
> >>
> >>     [   11.787856] jffs2_scan_eraseblock(): End of filesystem marker
> >> found at 0x10000
> >>     [   11.795357] jffs2_build_filesystem(): unlocking the mtd device...
> >>     [   11.795390] done.
> >>     [   11.803771] jffs2_build_filesystem(): erasing all blocks after the
> >> end marker...
> >>     [   11.803781] jffs2: Erase at 0x009e0000 failed immediately: -EROFS.
> >> Is the sector locked?
> >>          -------------
> >>     [   13.138841] jffs2: Erase at 0x00010000 failed immediately: -EROFS.
> >> Is the sector locked?
> >>     [   13.147188] done.
> >>     [   13.149202] jffs2: notice: (487) jffs2_build_xattr_subsystem:
> >> complete building xattr subsystem, 0 of xdatum (0 unchecked, 0 orphan) and
> >> 0 of xref (0 .
> >>     [   13.165896] mount_root: unable to set filesystem state
> >>     [   13.171443] mount_root: switching to jffs2 overlay
> >>     [   13.201867] overlayfs: failed to resolve '/overlay/upper': -2
> >>     [   13.223939] mount_root: mount failed:
> >> lowerdir=/,upperdir=/overlay/upper,workdir=/overlay/work, options No such
> >> device
> >>     [   13.235145] mount_root: switching to jffs2 failed - fallback to
> >> ramoverlay
> >>
> >> Verified by reverting de80424f7.
> >>
> >> Steve
> >>
> >>
> >>

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

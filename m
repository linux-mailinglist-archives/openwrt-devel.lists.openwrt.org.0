Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F0B145430
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 13:04:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTrBqw9lgIdJ4Kh7J+rmYkoRlqQkYcBo+xSSlV+un2c=; b=nIhY23oguy9Nyj
	Nsp5QbrIvMMY+xwKSu9i/4zmEX3KyG4SmMDkTBf69akXnXPguYEyEZw55GY/ENDEMqa8xV0ge99FU
	7DiL8cmPculRFZQGBjRnMEDySyrh35mVvr7rJmcBu9SFWBR5KBJEg3CyEXjCO7ld6jAeG4yjJFx2N
	gdBVMJjsXocs4FVxntMiG3KpAi5fe/SbbnkTgmPt1IQzzpuDF221RaQz+hbuTa72zRsRvDf2R/ltE
	dqAFPOeXDKuq/7mEn8bL/XwgIjLtwa8yTaNUoKEM33uYyWghuhPuZHleG+kiQGbOpTrtuk4pPdcZX
	ajK+gsqbsVjlSR/B9g1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuEjr-0002kY-SC; Wed, 22 Jan 2020 12:04:03 +0000
Received: from jax4mhob07.myregisteredsite.com ([64.69.218.87])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuEjj-0002jz-4C
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 12:03:56 +0000
Received: from mailpod.hostingplatform.com
 (atl4qobmail01pod5.registeredsite.com [10.30.71.94])
 by jax4mhob07.myregisteredsite.com (8.14.4/8.14.4) with ESMTP id
 00MC3p1D022231
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <openwrt-devel@lists.openwrt.org>; Wed, 22 Jan 2020 07:03:51 -0500
Received: (qmail 172380 invoked by uid 0); 22 Jan 2020 12:03:51 -0000
X-TCPREMOTEIP: 208.85.15.155
X-Authenticated-UID: sbrown@opensat.com
Received: from unknown (HELO 155-15-85-208.altiusbb.net)
 (sbrown@opensat.com@208.85.15.155)
 by 0 with ESMTPA; 22 Jan 2020 12:03:51 -0000
Received: from localhost (localhost [127.0.0.1])
 by 155-15-85-208.altiusbb.net (Postfix) with ESMTP id 9548415402C2;
 Wed, 22 Jan 2020 07:03:50 -0500 (EST)
X-Virus-Scanned: Debian amavisd-new at ewol.com
X-Spam-Flag: NO
X-Spam-Score: -2.899
X-Spam-Level: 
X-Spam-Status: No, score=-2.899 tagged_above=-999 required=6.31
 tests=[ALL_TRUSTED=-1, BAYES_00=-1.9, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from 155-15-85-208.altiusbb.net ([127.0.0.1])
 by localhost (fl-server.ewol.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oaU144X6zKRU; Wed, 22 Jan 2020 07:03:44 -0500 (EST)
Received: from w7.lan (w7.lan [192.168.1.9])
 by 155-15-85-208.altiusbb.net (Postfix) with ESMTP id 3823C1540086;
 Wed, 22 Jan 2020 07:03:44 -0500 (EST)
Message-ID: <7d754443de8da7e27c944241aca5c804bd22e961.camel@ewol.com>
From: Steve Brown <sbrown@ewol.com>
To: Bruno Pena <brunompena@gmail.com>
Date: Wed, 22 Jan 2020 07:03:44 -0500
In-Reply-To: <CADwgkMVz=EkUrD+55u4QqGw2b3tLH8ePh5nQPrrbnngnGwE3RQ@mail.gmail.com>
References: <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
 <20200121104934.GA2465@makrotopia.org>
 <CADwgkMWQxN5WLeG9oyR0RdeahC+ZHeykLNGj0PfKtCvG81Qxxw@mail.gmail.com>
 <20200121185716.GL69327@meh.true.cz>
 <CADwgkMVVX_kX8w18AtGwhvwoY=MOW=_7chPScey-7T32+g1uDA@mail.gmail.com>
 <CADwgkMUy5--GR3du_-qj+m0Ag=fTA9pfOhDJO0DCbWcDtvHjZg@mail.gmail.com>
 <989a2a224ceac0368c713ecc537af005eb45f035.camel@ewol.com>
 <CADwgkMXLgcnJ0_KBCto+oS3o4PpQeQThH7qp=DwE0JWYAoz7eQ@mail.gmail.com>
 <CADwgkMXf2q3uuyTFrce2NL_Z3EGVW8OC9tVeh6MRxdiAMu7CvQ@mail.gmail.com>
 <20200122094051.GC1406@makrotopia.org>
 <CADwgkMWVL6g_=xkGyMbK4Xj-EEfx10tQYwtF1ZgFq6x-QnhhfA@mail.gmail.com>
 <CADwgkMXayQZ5f7sLiz0dEBv4CigJS=Gchsa2xw3OTSuUf7B7dQ@mail.gmail.com>
 <CADwgkMVz=EkUrD+55u4QqGw2b3tLH8ePh5nQPrrbnngnGwE3RQ@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_040355_312795_02E21DF2 
X-CRM114-Status: GOOD (  28.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [64.69.218.87 listed in list.dnswl.org]
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
Cc: Petr =?UTF-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org, Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Bruno,

Your suggested fix works on my TPLink A7-V5.

diff --git a/target/linux/ath79/image/common-tp-link.mk b/target/linux/ath79/image/common-tp-link.mk
index 9048e8340c..8aa6a5a2be 100644
--- a/target/linux/ath79/image/common-tp-link.mk
+++ b/target/linux/ath79/image/common-tp-link.mk
@@ -71,7 +71,7 @@ endef
 
 define Device/tplink-safeloader-uimage
   $(Device/tplink-safeloader)
-  KERNEL := kernel-bin | append-dtb | lzma | uImageArcher lzma | pad-to 64k
+  KERNEL := kernel-bin | append-dtb | lzma | uImageArcher lzma
 endef
 
 define Device/tplink-loader-okli
diff --git a/target/linux/generic/hack-4.19/401-inherit-parent-partition-access-mode.patch b/target/linux/generic/hack-4.19/401-inherit-parent-partition-access-mode.patch
index 61dd0369a6..85e958acff 100644
--- a/target/linux/generic/hack-4.19/401-inherit-parent-partition-access-mode.patch
+++ b/target/linux/generic/hack-4.19/401-inherit-parent-partition-access-mode.patch
@@ -36,7 +36,7 @@
                parts[i].offset += slave->offset;
  
 +              /* adjust partition mask */
-+              parts[i].mask_flags = !(slave->mtd.flags & MTD_WRITEABLE) ? MTD_WRITEABLE : 0;
++              parts[i].mask_flags = !(slave->mtd.orig_flags & MTD_WRITEABLE) ? MTD_WRITEABLE : 0;
 +
                mtd_add_partition(slave->parent,
                                  parts[i].name,

Thanks,
Steve

On Wed, 2020-01-22 at 12:18 +0100, Bruno Pena wrote:
> Hi Steve,
> 
> Don't waste your time with the previous test request.
> I'll try to test either today/tomorrow the "mtd.orig_flags" approach
> on my device and - if successful - I'll then ask if you can try it on
> your TP-Link.
> 
> Thank you and best regards,
> Bruno Pena
> 
> On Wed, Jan 22, 2020, 11:34 Bruno Pena <brunompena@gmail.com> wrote:
> > Just a small correction on the previous email, there's actually no
> > padding requirement since everything will be read-only!
> > 
> > On Wed, Jan 22, 2020, 11:25 Bruno Pena <brunompena@gmail.com>
> > wrote:
> > > Hi Daniel,
> > > 
> > > I was looking at the code and I think it's possible to relax the
> > > enforcement of the parent access mode.
> > > We can switch from a strict enforcement of the resulting mtd
> > > access mode, to only enforcing the configured access mode (from
> > > the DTS file).
> > > 
> > > This can be achieved by changing from using mtd.flags to
> > > mtd.orig_flags:
> > >     parts[i].mask_flags = !(slave->mtd.orig_flags &
> > > MTD_WRITEABLE) ? MTD_WRITEABLE : 0;
> > > 
> > > With this change we no longer impact builds that do not have a
> > > read-only firmware partition, but we can still enforce it for
> > > those that need it.
> > > One thing to keep in mind is that the padding is still a
> > > requirement for those devices which are building a read-only
> > > firmware partition!
> > > 
> > > Also please note this is not tested, these conclusions are only
> > > based on the analysis of the kernel source code.
> > > 
> > > Best regards,
> > > Bruno Pena
> > > 
> > > 
> > > On Wed, Jan 22, 2020, 10:40 Daniel Golle <daniel@makrotopia.org>
> > > wrote:
> > > > Hi Bruno,
> > > > 
> > > > On Wed, Jan 22, 2020 at 10:22:01AM +0100, Bruno Pena wrote:
> > > > > I would also like to take the opportunity to ask if it's
> > > > worth pursuing
> > > > > this patch if it means that all devices (using mtd) will
> > > > require their
> > > > > partitions to be padded to the blocksize?
> > > > 
> > > > Please try not to introduce that padding, it's quite a big
> > > > impact on
> > > > all devices while only very few (wifi-only device) really need
> > > > that
> > > > change. Instead of wasting flash space by additional padding
> > > > I'd rather
> > > > want to see an OpenWrt-specific kernel-patch to allow a rw
> > > > subpartition
> > > > sitting inside an ro partition or just flatten the mtd
> > > > partitioning.
> > > > What I mean by flatteing is this:
> > > > 
> > > > yout current approach:
> > > > +-----------------------------+
> > > > |          firmware           |
> > > > +--------+--------------------+ 
> > > > |        $       rootfs       |
> > > > | kernel +------+-------------+
> > > > |        $ rom  | rootfs_data |
> > > > +--------+------+-------------+
> > > > 
> > > > here rootfs_data inherigs the read-only from rootfs not being
> > > > block-
> > > > aligned. a better/flat approach would be:
> > > > +-----------------------------+
> > > > |          firmware           |
> > > > +--------+------+-------------+ 
> > > > | kernel $ rom  | rootfs_data |
> > > > +--------+------+-------------+
> > > > 
> > > > Now this would require major changes to our mtd-splitting
> > > > subsystem
> > > > which is quite a big amount of work...
> > > > 
> > > > 
> > > > Cheers
> > > > 
> > > > 
> > > > Daniel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

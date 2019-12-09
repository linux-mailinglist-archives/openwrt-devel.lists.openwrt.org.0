Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01089116680
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Dec 2019 06:43:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kdg/pT37ZqzIrnc6WSL0Bzt40OCsPkRkHCUOd3OXDW0=; b=YNR2XN1tpT+W5I
	+5RKOxSUX3DhONl/9YJAiQ8DI0uU3FcFBD9iH+MNoIFX5rmRlCaSnT7I1X8yRON+OA7uEvNB/qM4P
	56QDj2fDVAU1u08KGA5Su2CGFZVPHiN7MbKGPZCwIAjOdBnxla9L5/Ew2amE/dfXyfzn6CjeNc6Ng
	wJriaX7uHZA2rYT/j0m+wW6aDP8MS8g9pfBsHZwrRxjzIb/+dCIU5mFOjGD+bU5HSNhCG69snv80Q
	ShpXKzvXxnM0J7JFI0PjzG/G0qrcvf6/d489G49lT0fWR6Kcm/yEVJfBHx9Ld08iLzDOEMNvzvEgt
	PCYgOiTDUKOcwS5CjhMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieBp9-0000oj-J1; Mon, 09 Dec 2019 05:43:11 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieBoy-0000nr-OY
 for openwrt-devel@lists.openwrt.org; Mon, 09 Dec 2019 05:43:02 +0000
Received: by mail-il1-x143.google.com with SMTP id z90so11637825ilc.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 08 Dec 2019 21:43:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iSl927tBDX9pUhl43FG040IvxYCl534l4GrF0KraQv4=;
 b=Aq5j3sEnPxSchEHcuPgyht78CoJFyYADBYeRpwvHMMcZyQiBQ4Q4pz2g0Yao1bcGJz
 B/umG5g/Biwwx/vA1i41qhivGeTZqRa9e0l5tUZvyrsiR625MYfhoa3hQVaxctE7Yi1a
 DKzIpjB6hxN303KBIc3o7iNMe4X797t2hxatxnWlHvk/ckwQFOAPh7/vkwXVFqWJz7UF
 a67pwJ1RUo73N9F73ZtxA3gKcH6ZaxUIB5DnVXw29dkpzR37muTBw7aRyBrtWJE8e+b1
 1j0qMjT6x8wUJErzDrLKBg6xgY/0JkV322ZZNuM+4Uja4Vp6r4mNTOhXC3GVJLn7tNIr
 X4Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iSl927tBDX9pUhl43FG040IvxYCl534l4GrF0KraQv4=;
 b=h4q64xj3blx6FCrZzDy0iLYPsgslHdlaBZkQC9YmuvhBg1nrqLztTa1Ly3DAEgF41V
 8OTrewQMR+dTIKUGOvBAisqi5HSaPEd5AvLDTa8pbkZIUX6OUwZ3+CApWz53FSJOxf12
 5y4Vvoite/IC3I8jBsHVAwCrjZtkCYhd1AIvnKZnuceWeR55BAVvM68REwqHFLMJwmEe
 Zk2271s3hIEMda1hhQ5OLqVLK2oZZqyQGC/El+b0Xj1b49FeCfZ5UlUm9E369hPV7vGM
 OQs3LKlpNRP05M60OssCqN66eCkAvzvvwYGxSxpsrgGatMi2K8pX6frlcrKk5IRYuL3n
 qIDA==
X-Gm-Message-State: APjAAAV67+1+c4t2Cz8UEVHfY28T/yKpI6cFv0dxxKvryrFYpGZaaXIj
 Hj026vzmA9uFuJZhu1873er0b+qL4PR1+0Mkhat4oFoJyro=
X-Google-Smtp-Source: APXvYqyrhawMYl9YhGgVAU+BWc4i3nBbip0thBfUE8q4qo0IbxrVirfuTbvhubKggkzsJ5BVTXpZ1NUvy/Imni8yxqY=
X-Received: by 2002:a92:5805:: with SMTP id m5mr25215051ilb.59.1575870179135; 
 Sun, 08 Dec 2019 21:42:59 -0800 (PST)
MIME-Version: 1.0
References: <CAALvt2MKiCHmZb5neZqjawnr-R1VAHpTK+LQafPrUj=i_UJ05w@mail.gmail.com>
 <20191203143434.GF8181@meh.true.cz>
 <CAALvt2POG3isiKH+2aHjSGRoh-+HADtamD9O2VLOCKO=73byGw@mail.gmail.com>
 <20191205200036.GD71465@meh.true.cz>
 <CAALvt2NygyiyJ3iV82B3DXLr+hWsW_7T=iL=9=7xnyUHxD8UdA@mail.gmail.com>
 <069ab5b0-f9ea-8700-afc6-3514ea2dba99@candelatech.com>
 <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
In-Reply-To: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
From: Joe Ayers <joe@ayerscasa.com>
Date: Sun, 8 Dec 2019 21:42:48 -0800
Message-ID: <CAALvt2M2r6q2xHX+t9-wa3yOFJ2WNdnSaU6gAjymQQwEy-85jA@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_214300_844652_FA9FC033 
X-CRM114-Status: GOOD (  25.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ben Greear <greearb@candelatech.com>, openwrt-devel@lists.openwrt.org,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Dec 7, 2019 at 5:19 AM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> On 12/6/19 7:02 PM, Ben Greear wrote:
> > On 12/6/19 9:44 AM, Joe Ayers wrote:
> >>>
> >>>
> >>>> Possibly the same symptoms don't exist on 128MB RAM devices.
> >>>
> >>> Like there is some if condition, which is doing some nasty things on 64M
> >>> devices? I admit, that I don't have ath10k-ct source code under my
> >>> pillow, but
> >>> it doesn't make much sense to me.
> >>>
> >>>> Comparable results between above and my 64MB device.   However, if the
> >>>> sleep time is extended the consumption is more
> >>>
> >>> Ok, I'll let it run overnight with 120s sleep in between.
> >>>
> >>>> I suspect this is not the intended behavior.
> >>>
> >>> No its not and it's even strange, that I'm not seeing it here if it
> >>> should
> >>> happen in the "default setup". Maybe its because:
> >>>
> >>> 1. You're using custom image (I'm using official prebuilt images)
> >>> 2. You're not providing all the steps needed to reproduce the issue
> >>> 3. I've way different hardware
> >>>
> >>> Every detail could make huge difference.
> >>>
> >>> -- ynezz
> >>
> >> On the device I am testing, it is both (2GHz) ath9k and (5GHz) ath10k.
> >>    These look to be related patches to this issue:
> >>
> >> 960-0010-ath10k-limit-htt-rx-ring-size.patch
> >> 960-0011-ath10k-limit-pci-buffer-size.patch
> >>
> >> In the v19.07.0-rc2 build for the rb-nor-flash-16M-ac ar71xx image,
> >> these patches are applied to backports-4.19.85-1, but don't seem to be
> >> applied to ath10k-ct-2019-09-09-5e8cd86f.    Should ath10k-ct have
> >> these and other patches?    The device's installed packages do include
> >> ath10k-ct (from downloads.openwrt.org installed image).
> >
> > I think that if you need the patches for upstream ath10k, then you
> > should also apply
> > the patches to ath10k-ct.
> >
> > Platforms with more memory probably do not need or benefit from those
> > patches.
> >
> > Thanks,
> > Ben
> >
> Hi,
>
> I am fine with adding these patches to ath10k-ct if they solve problems.
>
> It would be nice if a description could be added to the patches so I
> know what kind of buffers are reduced there.
>
> Will someone send a patch?
>
> Hauke
>

I'm currently testing with the following patches with openwrt-19.07 on
RB952Ui-5ac2nD (hAP ac lite).   Sorry, I know enough to be dangerous
to  provide a description.    I am seeing ~15M of RAM consumed, but
have not seen OOM kick in yet, like before.  These patches are an
improvement so far -- usable 64M device.

Joe

Index: openwrt/package/kernel/ath10k-ct/patches/960-0010-ath10k-limit-htt-rx-ring-size.patch
===================================================================
--- /dev/null
+++ openwrt/package/kernel/ath10k-ct/patches/960-0010-ath10k-limit-htt-rx-ring-size.patch
@@ -0,0 +1,11 @@
+--- a/ath10k-4.19/htt.h
++++ b/ath10k-4.19/htt.h
+@@ -238,7 +238,7 @@ enum htt_rx_ring_flags {
+ };
+
+ #define HTT_RX_RING_SIZE_MIN 128
+-#define HTT_RX_RING_SIZE_MAX 2048
++#define HTT_RX_RING_SIZE_MAX 512
+ #define HTT_RX_RING_SIZE HTT_RX_RING_SIZE_MAX
+ #define HTT_RX_RING_FILL_LEVEL (((HTT_RX_RING_SIZE) / 2) - 1)
+ #define HTT_RX_RING_FILL_LEVEL_DUAL_MAC (HTT_RX_RING_SIZE - 1)
Index: openwrt/package/kernel/ath10k-ct/patches/960-0011-ath10k-limit-pci-buffer-size.patch
===================================================================
--- /dev/null
+++ openwrt/package/kernel/ath10k-ct/patches/960-0011-ath10k-limit-pci-buffer-size.patch
@@ -0,0 +1,38 @@
+--- a/ath10k-4.19/pci.c
++++ b/ath10k-4.19/pci.c
+@@ -142,7 +142,7 @@ static struct ce_attr host_ce_config_wla
+               .flags = CE_ATTR_FLAGS,
+               .src_nentries = 0,
+               .src_sz_max = 2048,
+-              .dest_nentries = 512,
++              .dest_nentries = 128,
+               .recv_cb = ath10k_pci_htt_htc_rx_cb,
+       },
+
+@@ -151,7 +151,7 @@ static struct ce_attr host_ce_config_wla
+               .flags = CE_ATTR_FLAGS,
+               .src_nentries = 0,
+               .src_sz_max = 2048,
+-              .dest_nentries = 128,
++              .dest_nentries = 64,
+               .recv_cb = ath10k_pci_htc_rx_cb,
+       },
+
+@@ -178,7 +178,7 @@ static struct ce_attr host_ce_config_wla
+               .flags = CE_ATTR_FLAGS,
+               .src_nentries = 0,
+               .src_sz_max = 512,
+-              .dest_nentries = 512,
++              .dest_nentries = 128,
+               .recv_cb = ath10k_pci_htt_rx_cb,
+       },
+
+@@ -203,7 +203,7 @@ static struct ce_attr host_ce_config_wla
+               .flags = CE_ATTR_FLAGS,
+               .src_nentries = 0,
+               .src_sz_max = 2048,
+-              .dest_nentries = 128,
++              .dest_nentries = 96,
+               .recv_cb = ath10k_pci_pktlog_rx_cb,
+       },
+

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BA81D876B
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 May 2020 20:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zIOwyroNYg7FnbbPz81xKjeoxHC+TmEU1607l1g7vXI=; b=hNE+AGcpEp3QyO
	hhixNiNP4V20cDaDLMBKC2cXuu0+BdNe+YxN2ttOAsAtpo7eCwMati9Fa5DqW8CJ71SHd3fthxVea
	p0LXyJdlkVtFxncmjbV8cNKFrPt6Fb0Fb0x/34dirQed3KgM601BEGcWnGAhAdop3NydqMdt4QFSi
	N1SA8WT9362pKlE34L3UDmcvg4drYTwo8eTXP0Xehl79ouif49AYQEsMztalZsF00smvckXaNAQbj
	GqBrNXpEKKUXexeek3sLVCduGiB5AWwG+RiiA4AZw9NjQO0cpb2Sum3arHJA9d2iZOML4E6ObUqxJ
	W4YGpU4kmP44EmnvhXiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaki4-0002ji-Dc; Mon, 18 May 2020 18:41:56 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jakhv-0002ZF-Qc
 for openwrt-devel@lists.openwrt.org; Mon, 18 May 2020 18:41:49 +0000
Received: by mail-qk1-x743.google.com with SMTP id i5so11279490qkl.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 18 May 2020 11:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wKr2S+FqqwTsC4xUIFscdeInZG/w3g61is5D2VcIw1w=;
 b=kCB9SdHvzg8MDXvjWi8rjRfATEe1jEDqsovUDQYBFp8N5uwU+wi8I8NRYTarAGeYxo
 zaqq2jKLiNK+jMLSMcnArw/EtU2AiZK8OubLcfIlbIrJaMKfHBh6l9BsE4lfuLV1Lcfl
 8t6T4iQ4dCvLyzS3WC4h4RPDQBAAq+42fha8M2jEkHc79jMMZmh2ukWcyrMr/Q3bp/Ts
 zMTfQoEv8piya2NRyVe9IigLNLwi+mgcS6LeecAG8df7n9djdlRuVINBkAxLbXBP6TUj
 /k5ZHRBDEnN8dxFcvh+HHG3MjNbaqMcNIbHV8qHpSqmZT6SiP1Lpg1zVZ9o+G/oEw6k9
 gzcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wKr2S+FqqwTsC4xUIFscdeInZG/w3g61is5D2VcIw1w=;
 b=MiKASxKwk2CzeG5t8oUdMDBi3l+yZ7fC4/HxLmMBcznQzmIOzM4M9guvU7YXI3D2kC
 IKdnvJqlQNYDKW7vJguED7S74fwkiMDerHAIelmOVsS4QU7xoy2DVgB5WXv+izS9eTzt
 8WbHK8qyB9iwTPHJFQ+eV9KHOX2AC2QoYb7K7cJQPaot9MrI4NzVd6jCasWvxaHt0vER
 20IpOSsUdn0ncSEJU8gkmXrWF2gGhYLiyk4RDIkTo8nCoi2Cw5BdG2OtbXe/ncmH2fJ9
 iHwB5WPFl71BQavGaM0o3K9TusA3ovXbxl9+IZe05QIyaDvfIg3dSEGvoq4ltC7FtaCc
 1rBw==
X-Gm-Message-State: AOAM530na42x0b1HjndYd1PcCwndL0Jp2GLdTSO33deSDWozBchPVRN3
 etZ5MGx51uVsIW4RjzOE+TUbWg==
X-Google-Smtp-Source: ABdhPJwq9lWG6n7nAhF4NiolbKBZe3ja69XHeIQgOPykjmzu8xQng0lsmukE0zZWgsYuGNTXuUisHg==
X-Received: by 2002:a05:620a:12f6:: with SMTP id
 f22mr15691901qkl.76.1589827305656; 
 Mon, 18 May 2020 11:41:45 -0700 (PDT)
Received: from localhost (c-98-213-55-3.hsd1.il.comcast.net. [98.213.55.3])
 by smtp.gmail.com with ESMTPSA id l133sm8932922qke.105.2020.05.18.11.41.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:41:45 -0700 (PDT)
Date: Mon, 18 May 2020 13:41:41 -0500
From: Alex Ballmer <alexb@meshplusplus.com>
To: Aleksander Morgado <aleksander@aleksander.es>
Message-ID: <20200518134141.61e4ebc4@meshplusplus.com>
In-Reply-To: <CAAP7ucLznRNioDaJQWu8q3ui_ZN1soLLvde34s0v6sZZfeqH+w@mail.gmail.com>
References: <20200511185653.1f81ee9c@meshplusplus.com>
 <CAAP7uc+Tyfg8nmk=3qrPK4xeCOMx-m62JKMSdgxpbwA5h_4+6Q@mail.gmail.com>
 <20200513163357.5e2f924b@meshplusplus.com>
 <20200515161702.427a83aa@meshplusplus.com>
 <CAAP7ucLznRNioDaJQWu8q3ui_ZN1soLLvde34s0v6sZZfeqH+w@mail.gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_114147_929739_0D7FA5DE 
X-CRM114-Status: GOOD (  20.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Quectel RM500Q failing to get ip address
 assignment with netifd and modemmanager
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
Cc: "ModemManager \(development\)" <modemmanager-devel@lists.freedesktop.org>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, 16 May 2020 09:18:46 +0200
Aleksander Morgado <aleksander@aleksander.es> wrote:

> Hey!
> 
> > > > > root@localhost:~# mmcli -b 2
> > > > >   --------------------------------
> > > > >   General            |  dbus path:
> > > > > /org/freedesktop/ModemManager1/Bearer/2
> > > > >                      |       type: default
> > > > >   --------------------------------
> > > > >   Status             |  connected: yes
> > > > >                      |  suspended: no
> > > > >                      |  interface: wwan0
> > > > >                      | ip timeout: 20
> > > > >   --------------------------------
> > > > >   Properties         |    roaming: allowed
> > > > >   --------------------------------
> > > > >   IPv4 configuration |     method: dhcp
> > > >
> > > > This is the issue here. It shouldn't say DHCP, it should say
> > > > "static", because the WWAN network interface of all the new 5G
> > > > modules are always in raw-ip instead of 802.3, and therefore MM
> > > > should fallback to request static IP addressing instead of DHCP.
> > > >
> > > > Please try to backport the following fix:
> > > > https://gitlab.freedesktop.org/mobile-broadband/ModemManager/-/commit/a8fd33ebaa80a0844c375fdb39173736d18f71cb
> > > >
> > > > I really haven't spent much time backporting 5G related fixes
> > > > to the 1.12 branch, because they will all be released together
> > > > in 1.14 soon.
> > > >
> > >
> > > I found it easier to switch my own setup to use the libqmi master
> > > branch and modemmanager from the commit you mentioned. It works
> > > just fine so far, wwan0 gets the correct address and the modem
> > > can ping fine now.
> > >
> > > I attached the makefiles and patches I used for my openwrt build
> > > if anyone needs them. In order to build the master branch, I also
> > > needed to add
> > >
> > > https://github.com/autoconf-archive/autoconf-archive
> > >
> > > as a build dependency.
> >
> >
> >
> >
> >
> > I have another quick question about modemmanager support for the
> > Quectel RM500Q. The commit a8fd33ebaa80a0844c375fdb39173736d18f71cb
> > on the modemmanager git isn't in the current release. Will it be
> > slated for the next release, and if so is there a rough time
> > estimate as to when that will be?
> >
> 
> If enough testing gets done with git master in the following weeks, we
> can probably have a new stable 1.14 release at the beginning of June
> or so. Please test with git master as much as you can!
> 


Ok, thanks a lot. I will let everyone here know if I find anything
wrong with master.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

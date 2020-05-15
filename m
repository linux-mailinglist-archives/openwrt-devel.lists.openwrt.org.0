Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F97E1D5B4D
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 May 2020 23:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=swjKyTkhXL+Fp3pKix3r4b6EML+yKWkeIRfna9Ai450=; b=CKavoxCW1Kmelt
	sA1oN1LQShT0n4DhQSr3QHwVA5+RgA3/FcVXL6bbdBWN4zBMZmea8K02HC40PNloT5PdEf1lqpwJH
	64YXWJCyCCa7/2RoNviCOqqyX4JLD4mJcjzY8sI6ONx8eyYhMe9/EUXX967s4u4dhFOW+fgqYN+SZ
	XeoNUa7aWBnTyo+0v4OVtrV+JW8mQEEJTH3isiZAScSMrRjhDu97dqvvLuW5I9+QMJDV3BLvr0BEa
	D+T0OeB+PQM55e1uE+mXvWrm9pDnMR+HaBKycsKknJ9Z8qtirBMyEs4887egldWwfrzt+6FWXYtRt
	yYxHSt5jnHOIxawSMwDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZhho-0002WV-9h; Fri, 15 May 2020 21:17:20 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZhhe-0002VF-II
 for openwrt-devel@lists.openwrt.org; Fri, 15 May 2020 21:17:14 +0000
Received: by mail-qk1-x744.google.com with SMTP id m11so4153163qka.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 15 May 2020 14:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CfEvJDpi03uynaAfeugmi7VM8BGdYQuopt61jrtGipk=;
 b=yGF43sZ1KkCZmG3pKCd0+34frIc9Z/pVf4ND3sbzuOHqzzJbRO8NqHd+RS+cztZH9B
 uFzdatWZrbMOA/PGxpPYj9Bpi4O8k3aWyQG6J7lF2ljNEZZsO+WWuRxJOO9cSDQLiPF2
 7MdrUQ+MNE59pFSV1d7QhfSpJzfABpzJG5mjbFB2wIGy/bywcXFvyr7wDZnGa+yvcHOa
 rSbu/aUIzx+pVan4QgQF53lXSqO82ysvP6s9/Pmid0bjAcBZed/0DzDewvsWrK15NXnD
 8j8JvZ1mXNFzWAzUxBhbzY7fdgD2mjQfk7zAiTkYp2Ss7Njr38IByB6OCuyuUac4d9A/
 rjaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CfEvJDpi03uynaAfeugmi7VM8BGdYQuopt61jrtGipk=;
 b=WJ4wACNv3o+6NfhmmvjvJutQtL/S0CLteW5g7Q9UDAp0nnOnaGGOV3+Gc74Fdu4vIJ
 V2KPRL3AuNq/v0GHUoTsrRDC1iARggF5UrrFsqEe0CfccfVLg2LtteMOVy9mWoAtZTMr
 cpGQ4hwE7nw4Cn6lchEeRNya0JERlvq7txCU3aK8Y7zznHD6bPuW5rgmrAmvFFox6iP1
 0peDxJwH6/pLZymwMrSDQTy7bHaPKwGxx/vshZSEA10f7z4ltkHfQv3krEvkodILwISw
 NfhGr56WEW23BG8aaeLvYWXp7ZKYWv/K6KW0PJ9YmkfeySkX3tPiCMSOJfTBQ7dNZmE0
 GidA==
X-Gm-Message-State: AOAM531YyXO9ePhxWrzbnoY7hb8hIeUjUxg8dtUQ69JQvgBoX4EQTnwB
 gLUMDKcyH/clNtAcLHDPIpjkRQ==
X-Google-Smtp-Source: ABdhPJwXRy88wPgu8Fr9Fm/kE+V7Sht2u+387c5NNgU/Rj4r3BdddzpAvXbw/Sg4HZJ7Y63y2QK61w==
X-Received: by 2002:a37:668b:: with SMTP id a133mr5213726qkc.488.1589577428709; 
 Fri, 15 May 2020 14:17:08 -0700 (PDT)
Received: from localhost (c-98-213-55-3.hsd1.il.comcast.net. [98.213.55.3])
 by smtp.gmail.com with ESMTPSA id u3sm2997883qtk.63.2020.05.15.14.17.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 14:17:08 -0700 (PDT)
Date: Fri, 15 May 2020 16:17:02 -0500
From: Alex Ballmer <alexb@meshplusplus.com>
To: "ModemManager (development)" <modemmanager-devel@lists.freedesktop.org>
Message-ID: <20200515161702.427a83aa@meshplusplus.com>
In-Reply-To: <20200513163357.5e2f924b@meshplusplus.com>
References: <20200511185653.1f81ee9c@meshplusplus.com>
 <CAAP7uc+Tyfg8nmk=3qrPK4xeCOMx-m62JKMSdgxpbwA5h_4+6Q@mail.gmail.com>
 <20200513163357.5e2f924b@meshplusplus.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_141710_675067_2BD5A109 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, 13 May 2020 16:33:57 -0500
Alex Ballmer <alexb@meshplusplus.com> wrote:

> On Tue, 12 May 2020 10:41:36 +0200
> Aleksander Morgado <aleksander@aleksander.es> wrote:
> 
> > Hey,
> > 
> > >
> > > root@localhost:~# mmcli -b 2
> > >   --------------------------------
> > >   General            |  dbus path:
> > > /org/freedesktop/ModemManager1/Bearer/2
> > >                      |       type: default
> > >   --------------------------------
> > >   Status             |  connected: yes
> > >                      |  suspended: no
> > >                      |  interface: wwan0
> > >                      | ip timeout: 20
> > >   --------------------------------
> > >   Properties         |    roaming: allowed
> > >   --------------------------------
> > >   IPv4 configuration |     method: dhcp
> > 
> > This is the issue here. It shouldn't say DHCP, it should say
> > "static", because the WWAN network interface of all the new 5G
> > modules are always in raw-ip instead of 802.3, and therefore MM
> > should fallback to request static IP addressing instead of DHCP.
> > 
> > Please try to backport the following fix:
> > https://gitlab.freedesktop.org/mobile-broadband/ModemManager/-/commit/a8fd33ebaa80a0844c375fdb39173736d18f71cb
> > 
> > I really haven't spent much time backporting 5G related fixes to the
> > 1.12 branch, because they will all be released together in 1.14
> > soon.
> > 
> 
> I found it easier to switch my own setup to use the libqmi master
> branch and modemmanager from the commit you mentioned. It works just
> fine so far, wwan0 gets the correct address and the modem can ping
> fine now. 
> 
> I attached the makefiles and patches I used for my openwrt build if
> anyone needs them. In order to build the master branch, I also needed
> to add 
> 
> https://github.com/autoconf-archive/autoconf-archive
> 
> as a build dependency. 





I have another quick question about modemmanager support for the
Quectel RM500Q. The commit a8fd33ebaa80a0844c375fdb39173736d18f71cb on
the modemmanager git isn't in the current release. Will it be slated
for the next release, and if so is there a rough time estimate as to
when that will be?


Thanks

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

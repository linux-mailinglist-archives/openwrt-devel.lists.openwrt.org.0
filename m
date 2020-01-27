Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D65714AA1F
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 19:58:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGrZKYnbxOoK9WsQfN39uVPcxaJjQcKG/pV1gq+8X7E=; b=OycHaNojP0PhDL
	/limPU4cTY2zgCoH2/UAD4wIWCSTLA61X0YXtQedyxuQgTCiC0tSOhDCa8zFQtbk3Xp4lkpxc9aHU
	hos4f677aN23/7I8spOVODR0X5RPzRBvT0E1IHbEBWouHzKHQSByocamFFjL32rqx9M91geYd16kx
	bcC5OYvt/YNs8QK5RDJqs48A7m3lBqaxYd7ZQhdkJjkneNpycOWc6kChY9MTV9aACQkS805YpaHwl
	ib/7NEhj85WHcP/h1vi/yrF4PIZ8ACYEvYrZqRaAOEHqn+1bXOezbH/4le551AXzMOgRskUdYBjP2
	lpYypjL+14mhyU8xKI2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw9a6-0006nP-7g; Mon, 27 Jan 2020 18:57:54 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw9Zx-0006n4-Tf
 for openwrt-devel@lists.openwrt.org; Mon, 27 Jan 2020 18:57:47 +0000
Received: by mail-qk1-x736.google.com with SMTP id h23so10743391qkh.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Jan 2020 10:57:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2P4sJ4DttCLwLv0NFLi0MhxYJpLv9Aw1XrEZw9LJXDM=;
 b=JxZ0P3gTcZcU3pGVeHnzEjv8u684RW/Yoq+8yeWcgzwl8nhoUQ81L5d3HAgrbjoIw+
 /yIDa1/3tHme91S1DtPescjIIpHH0ex0O/IWFswpEwfAGFt61KWLakMXOXkPcHyx5fkC
 1eHGNH8yjG+SHzy+CfVCJwjbgoekI8px+KYDc/KWk3mAKUvMe3pJHSpY6TE4aWe/lTpY
 nf7kbsxE9ICK+CjqC3gja3nIjIHgFMJPqdrjU1RCzOpk0yM/Ww8Dg3df7Tjjai0ga3VC
 XZ7s40PtAG1DI6ZNtSFcGeYPpSuNXoDJNz4hDyzNr0gOydoqNinalQf92RZc+7MQwgOA
 7oeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2P4sJ4DttCLwLv0NFLi0MhxYJpLv9Aw1XrEZw9LJXDM=;
 b=aplXTDHUEWxUrJWQljOgOYRXKdzju/uGq8uKlydowD6D4N9Fw5Fec9+tT8YSdq9AfT
 4orBQkOKnn/WwVF6dR/qmsrrIiMfxtEVXwfR1baWOA1XdupTDdL4BUrk43hphnHog2YZ
 0Pg/pIhdqO3gMn1iOfbmCqynk4N6nW2oirdjyBYCR1wjmfbMNNuZMyGuAQ7ggb6AS0g9
 +3D/QiZVHF146tQPf/2tXMAax1qAwBUoCAv/T2G/VkbMAneCYE/3vM8jEGjbZFVSqERu
 aJKUeiUN4pm4cMJcRioTEF3iVDonGth+6oAMaDS8Tg/AhL3VyCxj5xNZuJFbabV+xrD5
 CW5Q==
X-Gm-Message-State: APjAAAWp26NyqPFG2OkgJh0Bl5PmMg/47a8nqVgbBmGiXQCQbKK8tbx9
 PyMTH+INe0dMaNJJf1jj5gaomD5aFrkzvZP25Vo=
X-Google-Smtp-Source: APXvYqy79S1szuDByUi0kV/LvsmtEbOIJ7fxLRwimSiHNHC5xrq4In5FbgTAWgyojOimBoOIud9cOrpyac+kQu8QHic=
X-Received: by 2002:a05:620a:143b:: with SMTP id
 k27mr17439195qkj.262.1580151464432; 
 Mon, 27 Jan 2020 10:57:44 -0800 (PST)
MIME-Version: 1.0
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
 <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
 <81df4caf-8f04-74a1-dd1c-0beea3fca222@gmail.com>
 <02b701d5d540$8eee1ad0$acca5070$@adrianschmutzler.de>
In-Reply-To: <02b701d5d540$8eee1ad0$acca5070$@adrianschmutzler.de>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 27 Jan 2020 13:57:07 -0500
Message-ID: <CAMdYzYrWaxjP_UMASDjw1Y-PbdHgVzWWfRc9o3cBiiOLWa=+5w@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_105745_982558_A6E68F7E 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:736 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pgwipeout[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 gch981213@gmail.com, ansuelsmth@gmail.com, Piotr Dymacz <pepe2k@gmail.com>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Jan 27, 2020 at 1:35 PM Adrian Schmutzler
<mail@adrianschmutzler.de> wrote:
>
> Just a quick one:
>
> > > So, no matter what we do, there is no easy way forward.
> >
> > We could remove all ar71xx -> ath79 migration helper scripts, ar71xx
> > board names from supported devices lists in ath79 images and make the
> > target a brand new, without any concerns about soon-to-be obsolete ar71xx ;)
>
> At the moment, I'm actually mostly inclined towards this solution.
>
> However, for me personally SUPPORTED_DEVICES was always more a "don't brick entirely" flag, so I never expected it to ensure 100 % config compatibility. More like preventing me from flashing ubnt,unifi image onto tplink,wdr-4300-v1. This impression might have been wrong, though.
>
> But as mentioned by Ansuel, there are other incompatible switches to come (and some are already waiting), and unless we want to create new targets or rename devices in these cases, we have to think about different "levels" of compatibility anyway beyond ar71xx->ath79.

Wouldn't it be reasonable to put up a warning that migrating from
ar71xx->ath79 will require a reset of networking configuration?
Then all you need to do is detect when that sort of upgrade is
occurring and nuke the requisite files.

Also I don't know bout y'all, but I usually take a major revision
upgrade as an opportunity to hard reset and rebuild anyways. (Years of
ingrained ddwrt habits)

>
> Best
>
> Adrian
>
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

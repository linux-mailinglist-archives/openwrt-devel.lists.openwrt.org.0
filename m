Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EA8AD06D
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Sep 2019 21:19:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BtxOTgy4gl/tYk2OPHy1u2ZLUOr6ZNPWP+Kjrsz9pCE=; b=uUXKvjHyqVMbRR
	+tkfoZMdQYBn2kjP7UFXt6JcdAeCx5tNEksfLzRgcj8gmsaUYanoz5kcoJb2x7xDIH76Bto9MEXOt
	Bjqich/djVJ83SOFNhG/cEvYSCYsm40GX7xodA2kvecSWvLRgwCh0irMtFOcO/Mftlt5otlk+XSe2
	Ak96RiKkXw6BllYS66IaIGa2i6ywvrkZOdMQprI2thqR83XVsMYwjFWVZk9JvPPH8MTl0oR3C8I0E
	f/1YabZKF6xNdWTJBTGODpLCFFWz/ATkbW+cBkaW1bLrahvM5oOvfZZj+fZrdzX1Mv21wnKWNvNrC
	A8W/9/oTbOJovhluWh0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i72iF-0002bJ-NQ; Sun, 08 Sep 2019 19:19:03 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i72i9-0002ay-QW; Sun, 08 Sep 2019 19:18:59 +0000
Received: by mail-oi1-x22e.google.com with SMTP id t84so8876771oih.10;
 Sun, 08 Sep 2019 12:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=Ixkk7m1Fh0zWlLxdp9SZ0XdurjiqZH6EIUg9nbSwD1Y=;
 b=BnWGIGUl7iCWGdRE2WOWa9OT5wPM4PmuW2OpXhFE+v3FviOAn9/YNeJl64m155fgwI
 lP7bF7gUK2uV1igxb5Ih/bR8cir6GSMQvqFIaSeY5lQVhlKSWAQixVHTinuzfN+NKIj9
 ncJRbwcmpRDJwOEoPKssElIqwUuO1f3gHf4CIQYZw7KadMjXB8y0eLQCOTBH++tr/BgC
 /VdmY79CqJlB0ejkZJ/RPm+I+tv3HRXbzNwhZ/qjKj8vhJ01O1vOzyqPEVci7tYKutuM
 tKPeV0ysYgV3ySKqYbh+0L/jkHsHfF/AiWiRtentJgKJbUcGkt0ApNQg77ADgSU+qc+E
 UIDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=Ixkk7m1Fh0zWlLxdp9SZ0XdurjiqZH6EIUg9nbSwD1Y=;
 b=IlonRtHcCSyQ8W61fhuXIwb2KPFSPsc9K5XWUkMZAjoKKK4ksEdps2QA6JqFkwJpMq
 KtRPU1rX2CvVL6ot+js5Al8h/1lbY5ikcp6Z/R2dG6UzqQq1Uu5QqGlcVBSRwh46YWsI
 s6yqS7CKpMw+KwStmJ1GBA78Ei4y0NJsLuQGa3MDWNE7orXX8n0n5EoOaCeEJtJUiC/8
 olOZAjQKqVCIJXcdvZqzn4+sK/CFbqdiMfC6Q1F6tPrUNVfPiRr1kISAauzfO2L/S1Fg
 dGbQFoZto80KQlP1pVJNMGyWjjmJLgCXruAtfOgRmaV5L6gimXho13qB3VeNFXgSHeVr
 RtNQ==
X-Gm-Message-State: APjAAAXOMdr3HBhQyA7tlIzznX6Frm4QeCYyeFPwGiHAyZV8QYPenZ2n
 TojEqr4nGY7MojsxoUCReFrHxPnXoFYmrxRRcWF3Yg==
X-Google-Smtp-Source: APXvYqxQKUh6V7nGa4iKaZDpRq7SI0vZ/n9TkFu8C6zagBuqFRHs0wgJxjcDoOHZfkKdf8O+Gr7/3hnM+b4n/Eu1ueQ=
X-Received: by 2002:aca:fdc9:: with SMTP id b192mr14030324oii.50.1567970336603; 
 Sun, 08 Sep 2019 12:18:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:2286:0:0:0:0:0 with HTTP;
 Sun, 8 Sep 2019 12:18:56 -0700 (PDT)
In-Reply-To: <d3b729a9-21a6-5e20-2150-7b138df0680b@ironai.com>
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <250c8e36-3f42-d9c0-25ce-607f0e62ddac@mein.io>
 <87tv9psnyv.fsf@miraculix.mork.no>
 <d3b729a9-21a6-5e20-2150-7b138df0680b@ironai.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Sun, 8 Sep 2019 21:18:56 +0200
Message-ID: <CAKR_QV+7GNkU+z4XsfPj8gbtT+tUqE8uYEwGqDedLZ4sH2X=wQ@mail.gmail.com>
To: Vincent Wiemann <vincent.wiemann@ironai.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_121857_885956_97D7842F 
X-CRM114-Status: UNSURE (   5.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>, openwrt-adm@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

there seem to exist at least a dozen of critical bugs that one would
not like to have as a part of final release, to name a few:

Mainline ath10k causes crahes in ipq806x / R7800 ->
https://bugs.openwrt.org/index.php?do=details&task_id=2480

TP-Link CPE210v3 wifi not working ->
https://bugs.openwrt.org/index.php?do=details&task_id=2478 (there are
multiple reports for CPE v2 too)

eth0 doesn't work on ath79 and AR7240 Rev 2 for ubnt-bullet-m ->
https://bugs.openwrt.org/index.php?do=details&task_id=2442

ath79: sysupgrade will brick devices with RedBoot bootloader ->
https://bugs.openwrt.org/index.php?do=details&task_id=2428

TD-W8980: Kernel panic - not syncing: Fatal exception in interrupt ->
https://bugs.openwrt.org/index.php?do=details&task_id=2410

Flow offload regression with 4.19 kernel ->
https://bugs.openwrt.org/index.php?do=details&task_id=2389

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

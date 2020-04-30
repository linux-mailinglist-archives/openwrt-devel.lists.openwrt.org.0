Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2069F1C0A75
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 00:36:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvsWAcUii7E2DopULQj2ZYjaZIrFWdMG0bf1iHLFdq4=; b=aTM4caNBVGWtYu
	ThJdbGlKH6kX2iZTuC7SF752xUFBubxE1P4M0xSh6t8WG5gbh9c0ZR/39IFRM6ER2R2j7BA5GhG1w
	0dO1QG0DUBELqo/rx7BbpXn3lWAE78SHryL58ASayxJ7n3QIiC/SMs6MMxGOacU/k3M0pDxJVmLNg
	rRNhULDIgjpxPsw326u/cH8Oq0Tjg6z9/ZCY2+ycM6Yt8hfFcN2lcPtiK9egNoZjbsl4rPQtBKHhZ
	hGTBr1/lXmRum3hcswG1DAX4AK2GL9d+vKrzLOzcqY3N8jljVe0FgY2eHLY8fvp+cp1FRcvcmh07+
	RXS++zm3yKdgd9wTMOXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUHmm-0008FT-IX; Thu, 30 Apr 2020 22:36:04 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUHmg-0008F7-WD
 for Lede-dev@lists.infradead.org; Thu, 30 Apr 2020 22:36:00 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id v10so4057427ybk.3
 for <Lede-dev@lists.infradead.org>; Thu, 30 Apr 2020 15:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NapPo7fFYRWXzwg0aMqPWyw7bkUL+al+gESIzBOFOkc=;
 b=SZTmlJMar4VW/0LBffJEw1h2n+zsGNaLZZFkAVHCimorR4INzNutlS6bMiYH+Dz15t
 EhtZ2Ei+/7qO5st79ZqDMEBMGx/S2YC6szOIupgk3CFRIEk4HCQ6XpACwrn9Y+4wJc0z
 RinhF/yYuHDhTUXRw9Ur0u41Xykvgs5iI7ECrkhhiRohdPix/fd3zfjI8zy8y93CBcEY
 RIXiDt/O6xl6bsTRDzKctOD35LdZ89osuSNjgNTo8YxQNMcV6tzEarY48lLw7b+9qPh/
 ehytwxmeZx+lsdLTkn5jTY938VpEgpryNnBj6tj41p+GIW0MWxOBVnQVM/oVVrI1TSTO
 tObg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NapPo7fFYRWXzwg0aMqPWyw7bkUL+al+gESIzBOFOkc=;
 b=ILtEImFOCozJqnuRdWLI3JW2CuvBT5qnpr9t3XisUBvYDqp33E77LOVPydtl0U1AOv
 k6qN8jSSW4D8QbsqIzteRjUObluhWs5HP6PiAGhiF1vB/57qRtKIcyQVHnjczs6ivK9P
 ngMooXY/ZbRtyVB4skO19EUEXUkbaqXZotSmur/vSrdeTRrVzAaRgHK8ppjsmoJxbJnx
 mhTDZp3SHmSxqYJXY/vsKWFgkSSNe40hl0vMFkTXZ3hGNndo5DWd6RIRhw5/jLZH5tJ+
 yFLtu9ew7dA9n1g4EETfLL3oZJRBNubRNSSeljLhBLTtPytMu6VJpzg7tlKZgHWFaR9o
 DS0Q==
X-Gm-Message-State: AGi0PuY1v6QfxhpJdlkGutqGriNMj7ht5UmmLlQKM/Co3fb+bvc/BSSb
 pLzag0jHhTyu44Qa7L1XW+7w9Rb0s1BrAkfXUyHm0Jyr
X-Google-Smtp-Source: APiQypKpNZS5zzUGlITzpkn+RQ2yiQeUvSK3PM8C8wGZ14DLfl1dqEmcOgQVp4x5Qgx4r8GFZFfgfdel+kQrKxNRgis=
X-Received: by 2002:a25:3c83:: with SMTP id j125mr1765129yba.348.1588286157390; 
 Thu, 30 Apr 2020 15:35:57 -0700 (PDT)
MIME-Version: 1.0
References: <5c39c498-ae37-268d-24a0-57be4073283a@lucabert.de>
In-Reply-To: <5c39c498-ae37-268d-24a0-57be4073283a@lucabert.de>
From: Aaron Z <aczlan+ledev@gmail.com>
Date: Thu, 30 Apr 2020 18:35:28 -0400
Message-ID: <CAKNoO9rwWkSZNkCYBXZ-ZpO2MVzTa7Q4G877BFN1ZnenYYSGHQ@mail.gmail.com>
To: Luca Bertoncello <lucabert@lucabert.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_153559_057416_126FEEB8 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b2c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aczlan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] After upgrading to 19.07 WLAN does not work
 anymore...
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
Cc: LEDE Development List <Lede-dev@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, Apr 30, 2020, 2:36 AM Luca Bertoncello <lucabert@lucabert.de> wrote:
>
> Hi list!
>
> I upgraded my WLAN Switch to 19.07.
> OpenWRT works, but WLAN is off...
>
> In the "Wireless Overview" page I see:
>
> radio0 Generic 802.11bg
>        Device is not active
>
> and all WLAN i configured are "disabled"...
> Could someone help me? I really don't understand why radio0 is not active...

What version did you upgrade from?
What hardware are you running?
Did you do a clean install, or a "upgrade" install keeping your settings?
There are issues with upgrading (telling OpenWRT to keep your settings
when it upgrades) on platforms that were switched from ar71xx to ath79
with 19.07 and the settings not transferring or causing problems (see:
https://openwrt.org/releases/19.07/notes-19.07.0 ),.
If you haven't yet done this, I would start with restoring to factory
defaults and see if that fixes it.

Aaron Z

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0526431900
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Jun 2019 04:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6vR+d8uZcJ6VkF9SuRh7aKoo+xOWVbUBLqom0mpcp88=; b=VbPy/RSEaN1rvM
	2xzLvlo8PiFck0kAhXml59AOo6851L4gcg09334GdAzKIZFHgCeZWUsokN6/0pWYxIddVftYrGsja
	tWoRzVjosa0bQLJ07w+/j2VD55OyF2r10r2CcBVWcKYL5UERjjjrE1M+T39RSIgZmrRZE28pVWbc0
	7EjefmbYRf4p3YR9iGgsFLGqZPxgWXZ8TZSXqvS6OnWt6/IduAIvP5PvvCxBbmxxsrKj/SEtQHBNG
	c3MJ8i0v2h9AIoPdLq2hyELXgaK1WxXVDOsrrtsS/Fo8+pAkLQ4ECOpUQNqi4a7O+wgGmnGm2ZxWV
	IjTx+co1BKllAE8eOK0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWtZ4-00062N-Ek; Sat, 01 Jun 2019 02:16:10 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWtYw-00061o-7o
 for openwrt-devel@lists.openwrt.org; Sat, 01 Jun 2019 02:16:03 +0000
Received: by mail-ot1-x341.google.com with SMTP id d17so350576oth.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 31 May 2019 19:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+lNQJcxJLZ7PChVlPYUkorY2K45RBiGMUkFXTEzjpaw=;
 b=p/Ooy8ALVKsGOJBpXRE9DywOLGAGIEMorrA/HrIpVyzPeWo4htC5/WY2WRxqM80r3G
 dSnmIlraT0Sw1hz0hvoFZI4Pqbgq0aQyjVcCzdMZMW2Af9WjpGUgXrNqYqR5a7y25kCC
 +fB9pTc45fxdMPF3NUrxjDJyFKAxhy0dyxGVh9QBIUnd2x84XpiEuq38whgZ25Q6fQOO
 m5qg5ipiHkAKfXw1fSo+u6OhBzWedng1qf3pTztOXcolp7q7SPoB9xSyt6RgjaJWoh4N
 AH6l5mUeAqW4DcZhO6YTYIWF7gWd6rvyO1Ck2buIM7XIrsoNfPUxopudpmZd50227fIo
 r0fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+lNQJcxJLZ7PChVlPYUkorY2K45RBiGMUkFXTEzjpaw=;
 b=pkU9UbYoJ0yFig8AzFIsGlFOZXZMignrLEg4vHLa5lnITXTgSbUM11s8fSoTEoyUmX
 6fKBXgYj1xFqc8CpEoyXLavUi108rdNzb7DbXcdOFa0qgzGXkdah1tfOtv2NpDlZthbs
 2CNrYWFgT6dXKISjhsEwWJurNA4NC2U1wI3QKCiKAtgGdxqGhn++HRR59RngsL1x7bPf
 ahcu5W5iqj46NjX0+H7NPGSjPHw9KCa6DxpCZcfhSODUMeYURH/o1xxyLVY+Pj4o8vLk
 jMuCNTNkgatKOKCy0ZnJ0cHgGvIqNh7/lh4dQ5aL/RJfqT8Sjh6Y0i8aebiEUf/pMSUb
 pxoA==
X-Gm-Message-State: APjAAAWEs2UA9azvbXwu+I6IP/gZM9kG27SxuK/Qy4bJ9VYeSEL858Xe
 sKHxQbuEZojFHfHYZjRyTXy0CHO9EaIK5OFMkHc=
X-Google-Smtp-Source: APXvYqzD0xCZpQ+yOrl5y+SJ8beXkF1Jqy49aWXUjsNJW81LmR/kOwjHeHver5S5nDtES7XgC9wSrk+XVAWLMXCQePA=
X-Received: by 2002:a9d:32c2:: with SMTP id u60mr3935563otb.70.1559355360728; 
 Fri, 31 May 2019 19:16:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190411155945.28600-1-mail@david-bauer.net>
 <2850061.LOaScECSic@debian64>
 <CAJsYDV+yTFZafgzz0H42sfnzKYoB32ycxRBEht_XHXs4CzEcJg@mail.gmail.com>
 <2607811.gNoC5flUSi@debian64>
In-Reply-To: <2607811.gNoC5flUSi@debian64>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sat, 1 Jun 2019 10:15:49 +0800
Message-ID: <CAJsYDVLBD6WK6ZdCPCoBO8w2cyKSC_DOhNmOTbKi3o9uUXvjDw@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_191602_282903_9115BCCD 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] ath79: add QCA955x SGMII link loss
 workaround
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Jun 1, 2019 at 12:26 AM Christian Lamparter <chunkeey@gmail.com> wrote:
>
> On Friday, May 31, 2019 4:44:50 PM CEST Chuanhong Guo wrote:
> > Hi!
> >
> > On Fri, May 31, 2019 at 9:34 PM Christian Lamparter <chunkeey@gmail.com> wrote:
> > >
> > > Not to be a party pooper. The ag71xx is well on its way to upstream.
> > > https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/drivers/net/ethernet/atheros/ag71xx.c?id=d51b6ce441d356369387d20bc1de5f2edb0ab71e
> > >
> > > So sadly this all would need to be somehow upstreamed first and then
> > > backported again. *sight* :(
> > >
> > The upstream driver is pretty much broken on every SoCs with external
> > PHY/switch. Getting every ath79 SoC working with that driver is
> > already a headache.
> >
> > I think we should just keep maintaining our ag71xx driver until
> > someone having a pile of ath79 routers get that driver working.
>
> Well, look what happend to ar71xx then. The development on it is being
> defered in favor of the upstream ath79 dts. So what do you think will
> happen to the special out-of-tree ag71xx drivers now?

That happens after we got ath79 target working. There is a period of
time when ath79 has broken wireless support, during which ar71xx
patches were still accepted.

Author of upstream ag71xx driver did a 'rework' of OpenWrt ag71xx
driver dropped all mii interface configuration stuff. Unless someone
patches it back, it won't work on qca9558 in this case.
To upstream this particular patch, we need to:
1. patch mii interface configuration code back. (Somehow we named it
PLL and the author thought it's a clock register that doesn't belong
to ethernet driver.)
2. patch the miscellaneous ethernet-related configuration code back.
(gmac-config in our driver which is used by this patch.)
Our current code for both of them will have little chance being
accepted by upstream.

Since this patch depends on gmac-config that doesn't exist in upstream
ag71xx yet and we won't be using the upstream driver in upcoming 19.x
release, I think it's fine to have this problem fixed in our driver
and then port it upstream (likely to be a rework) with gmac-config
code.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

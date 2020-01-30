Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C85314D5EB
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 06:19:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j397mVCZrpANkdGuAmFKirQFGgq8hIA0dZa04crHDSI=; b=I4TH379nPv2ujN
	PnhZreUm/9hqGlD+614KTDsH3jZTx8Hc7X2dpFfNR01gMws3Kvet8XMQVKQF5vOty23KOlPOrDrhi
	8QxWt4BvpSxXZx4Ci9aiMSsB48474R1aCe3PQuCXbnY7h/ePjnoSO2IGgZpzkMLeoOkO88iDV10dJ
	vMRwvrmDEoJw7ZAGMp27FM5moCm4s233QsnhpPpC0xUOiLOi8gP86JijAw0pHsUuEZ/tpswR7jpYx
	oPGI26BPja+vr9NkizxdENjMS71aXYVmhDcAbotQ2TwaGlRHL2dtFB9GBdpfIRizeeMz4hWe9aZTN
	ow0YQuB7utM8DRn5Kx0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix2Eq-00062L-8m; Thu, 30 Jan 2020 05:19:36 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix2Eh-00061y-4s
 for openwrt-devel@lists.openwrt.org; Thu, 30 Jan 2020 05:19:28 +0000
Received: by mail-ot1-x344.google.com with SMTP id b18so2029999otp.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Jan 2020 21:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P0vJYYWEJmTzBqWN4kEsPdLr60ZhbiFYActgYOGx2Dk=;
 b=iaa3zva3S3DIMu2+jnCmrURKSZhTepV4PmAk3lhS8CLLQtpcbtuOE49pRiIMUtDyOm
 3qLgRneUMG2UyeAU8SfeTPXopQWWjRSM435T/3YJPtBKaEfBNuq9oriB6pFx2JnQU8FA
 EmHRsZyIR0dLJgFUf/0oPov95AdL6VEpvu2j7YJXtWIF43d8ApDq0NICosKZ4mt/WjL+
 JGz3ypSIbvxgLPszcyoUDkJp4bbHCwh6QKWXVsrKx5PAtPvpc1TeLxX0NItOR11TTFAT
 /wDZWWpQMbm56Wy2YyIFHUVuub1hSu3g+q63wFK1eFeAtO5JFPzqAq54rF+PDU32ZySZ
 xsng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P0vJYYWEJmTzBqWN4kEsPdLr60ZhbiFYActgYOGx2Dk=;
 b=ehbiI4RzX+/I1+R7BeHfyiee3n/pfcHnWAaG/bqsPEhao2JWRztMaqDC3u3BzVMqyN
 hOtlljxJWakDFsOkt7L8Wwk0L6gsFLmciTssZjF6pWXL+NOjrQSXsdNLoQ+5maUlutHU
 BdL0z0BVzj/5p1K6QaovaiqG1FdqtxJp7b/5UYwP+wLFlKAThaj5nVcleA4Kbh4g5ZjD
 Z6kc8giMLrI8utrb9Qd5vjf3cH2N0qZJIARNQkXrdYD9xutym+gk30TEMa2I09SexCzF
 KwPKzbkWzJFHM78bUSZR+0Am4H5SwEK6IQwCg2vf96T/OYD6vG4KAFrg1tnGFO9pzBzU
 TfSA==
X-Gm-Message-State: APjAAAW2vv6QVp+WABKoIPdZSuy89wkn0mkhAezdhPgywiH1LmLeeyEa
 jCRkgenMmoXkZMPIT5DWgSJE3iWsg6zt1m8v52w=
X-Google-Smtp-Source: APXvYqxv9XWy0wKkYHVqha2t6wmy9yIYlD/sgfzv14a3Yis9iUXvfX7yoTek1UNkoSdgPbak207glT7LQfCQMqCZVHI=
X-Received: by 2002:a9d:6a4f:: with SMTP id h15mr2290299otn.86.1580361563945; 
 Wed, 29 Jan 2020 21:19:23 -0800 (PST)
MIME-Version: 1.0
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
 <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
 <81df4caf-8f04-74a1-dd1c-0beea3fca222@gmail.com>
 <00c201d5d5f3$ec9b5630$c5d20290$@adrianschmutzler.de>
 <543fab1e-e112-f643-32bb-e8aece69d9ac@gmail.com>
In-Reply-To: <543fab1e-e112-f643-32bb-e8aece69d9ac@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Thu, 30 Jan 2020 13:19:12 +0800
Message-ID: <CAJsYDVJw2d2bVuMBWU7-n++LXy4nP5F2mSyYm3YhvBoSosa5MQ@mail.gmail.com>
To: Piotr Dymacz <pepe2k@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_211927_189971_DA8CFC52 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>, ansuelsmth@gmail.com,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!
Sorry for the late reply.

On Wed, Jan 29, 2020 at 11:18 PM Piotr Dymacz <pepe2k@gmail.com> wrote:
> AFAIK, there wasn't any official or general rule about what should be
> LAN and WAN (in terms of mapping ethX to 'our' LAN/WAN), so it was
> always up to the device support author (personally I preferred to have
> LAN on eth0). And as you can see above, ar71xx allowed two different
> orders in which ethX interfaces where registered in kernel.
>
> > Despite, from what I understand our current problem is the driver implementation
> > in ath79, which needs to skip/delay initialization in certain cases.
> > So, it's not so much about finding out the situation on ar71xx, but
> > understanding the situation in ath79 as well. All-in-all, I think this will come
> > down to having to check each device manually.
>
> More or less, yes.

on ath79 chips with builtin switch, the phy used by gmac0 is wired to mdio on
gmac1. we need to get mdio1 ready before we can probe gmac0.

ar71xx do peripheral resets in mach-xxx.c code, and have mdio/gmac in separate
drivers. This inspired me to make a commit:
83d2dbc599 ath79: ag71xx: Split mdio driver into an independent platform device.

But it was later discovered that even though atheros provided separated
mdio/gmac reset, we still have to assert both resets together, or gmac register
values won't be restored to default. Some devices got broken ethernet because of
this.

In order to do this reset sequence in ath79, mdio and gmac can't be treated as
two separated drivers, so gmac1 must be probed before gmac0 to have mdio1
ready.

Since probing order is fixed in ath79, I think the only way to specify interface
names is to add a device tree property and fill the corresponding name field in
netdev structure. This has no chance to be accepted upstream and can only
be our local hack forever.

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

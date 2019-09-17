Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB63B4BEC
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 12:25:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAC/zs66QrS1zbB2K0xScH0feSw3lZwS2JuTuvJtbEI=; b=EFYIUXENHMEmPS
	PwWS1OLIkBhLK6vQftuYykbb1YJgcYT634lfzYLr20UznqpDHnuXnvkWBGmOQo2T/ouxBrh/G7BvO
	WAaLZa8lmbR7tzI7geEhOO2fsvVWKBxbZjoQjBCpX/wFJKgCO8d/hMVaAPHThqT+kxxEt70p40PZZ
	JA1LOkRxS8+TE//JMIwHA5q7keeeEc2VcgJ8ej5uUeHtw0QJjglMWwQdWsX0Hp8zBiET7AtuwzwV+
	xQO9gaOVAS6YNeLRG8pMZbxJ6bIjRalUOlGo9Et+AbJ+vXtmYiLE7UAQjGvvWZ9NWMgR7GwORm+ad
	Tpe7WoQ/TJXXbFPXSiVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAAfv-0001Dn-M7; Tue, 17 Sep 2019 10:25:35 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAAfp-0001DE-6Z
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 10:25:30 +0000
Received: by mail-wr1-x444.google.com with SMTP id r5so2481559wrm.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Sep 2019 03:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=a7Lg9Pnw2fsOXX9fiJYV4HuTcFZR3rInB6cQVfnlK8k=;
 b=X56nrTjeMYzkTFNsW6TQYhJN35NrQhSCVasGx7zC/wYWJOutkBpmut760086qtrsbr
 VMU99M7CfukkTzINyqRrMlzlh1BR/Mrau5hdMvGIPjdww4Yd+m5OmgtLgkvsviQRKCCK
 uKKu/EhTlNhb/ihejdH0HqvIBRwBQAVnPOdIz3fyqh4/0ycDghASwLUQKWF//5/yxihs
 sQ8HtI5k1XRuZ12pHdV87okV4oysZspnZ5roxcKwIJjnRmqvWCZzO+OL5QErwhPGdQNQ
 OrG4p3dB16LWHoUDUnRgjEAUyVbdIAqZg5eccLFZgxmKgYxfJio6NI0qi/6BpXgtKfvm
 yC1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=a7Lg9Pnw2fsOXX9fiJYV4HuTcFZR3rInB6cQVfnlK8k=;
 b=cQStI2DhIg7DP/uOXNG2KfibO36fhsRJwa+PDSdpD/V36ZRF31+T3xUMSAwP/EEllL
 oCmwyplJH7l9fQtXoxJJxBtsZOuHPBkYh4QQGj7yYQtD9GhTgSNwkzoiWFwu0I8XY4hg
 F0VGnZwQlmK63Kp+hKuwgYYQWg+uxHltCDfL430SGMRAeGxEFAnQv/va1ZspwCy/nxi0
 jyXfYqISMxOwfU0dEI/2k+qlhA0hDHSkvCtlH1lPaMZH/Fx6aBkCcGQscKfFPacUGw1y
 IawtKnT05CFb3Kz3l+mbYAvxmcIsXbgJlHF5VKluK5oiFE2tP4n6jDoVgayt9r1WhkeG
 jXoQ==
X-Gm-Message-State: APjAAAViv7qKthIryzumwn0mmE+hi/ZPhQbPeeeRGCNQd7QKqfCZtQuA
 tyf1sRPoyLK6S5ueS038habQ74HS4TbrIsYeREs=
X-Google-Smtp-Source: APXvYqxF+PFPTSDFdwgK9joTAKMWejjymArNEJrNmq9pua1hJBi8LsZz9C+WvHLp3vHGc86anFQ4l4ju85ZedCimMJ4=
X-Received: by 2002:adf:db47:: with SMTP id f7mr2306951wrj.1.1568715925082;
 Tue, 17 Sep 2019 03:25:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190823090237.9471-1-mail@aparcar.org>
 <CAOiHx=mT7i73+=B-_OXQD4SUHpd3goAsGJoaFncOKcFFqKgrbw@mail.gmail.com>
 <006601d56bb2$09c12020$1d436060$@adrianschmutzler.de>
 <a1f113cb-2c53-d49a-a4f6-0780678851ed@aparcar.org>
In-Reply-To: <a1f113cb-2c53-d49a-a4f6-0780678851ed@aparcar.org>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Tue, 17 Sep 2019 12:25:17 +0200
Message-ID: <CAOiHx=mpf8VL6J9_T29kE7JGKNZ_N4Sd0qbxfCU08ga6O0pqHA@mail.gmail.com>
To: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_032529_272873_FF5F1A7B 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: add Generic subtarget if
 missing
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
Cc: Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Tomasz Maciej Nowak <tomek_n@o2.pl>, Roman Yeryomin <roman@advem.lv>,
 Tim Harvey <tharvey@gateworks.com>, Jason Wu <jason.wu.misc@gmail.com>,
 mail@adrianschmutzler.de, John Crispin <john@phrozen.org>,
 Alexander Couzens <lynxis@fe80.eu>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, 15 Sep 2019 at 12:49, Paul Spooren <mail@aparcar.org> wrote:
> > What you suggest is about what we have right now. This kind of creates a misleading situation where for some targets subtargets are present, while for others paths and image names are "fixed" in several places to include a "generic". The reason for Paul's patch was to get rid of the fixes at individual places (which was/is applied somewhat inconsistently) by just making all targets apply to the same logic (i.e. that there is at least one subtarget).
> > So, the empty files are introduced to make the process of building and creating images afterwards simpler (to follow/understand).
> >
> > I was suffering from the same problem when I dealt with OpenWrt-derived firmware, where I suddenly encountered a target without subtargets and had to implement extra code to work around that.
> >
> > However, I also wondered whether one couldn't code around the necessity of the empty file, and just add the SUBTARGET/SUBTARGETS variables here...
>
> Thanks for commenting, that's very much my point!
>
> Maybe the easiest solution is to add `SUBTARGET ?= generic` to
> include/image.mk instead of introducing empty files. Will try that tomorrow.

Thanks, this is what I meant, providing some sensible default value(s).

I have to admit, even after reading your changelog and Adrian's email
twice, I still don't quite grasp what issue this change is trying to
fix. An example might be nice in the changelog.


Regards
Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

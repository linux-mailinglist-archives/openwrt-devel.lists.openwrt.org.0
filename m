Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F7F15D549
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Feb 2020 11:13:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MS8+ROUa84usYM/JkF5ucOnbVvKJ6WXNqbRgy1k2Es=; b=ebyP/OAUCy2vMV
	YBLVmE/BaC+qxX5ZruSMjZDfVHerDWDP8NZFFaaDX+3QXddRzCVjN9iChgI1RgC5AIix1Z+bo5x/O
	H8dgksZQWj3TJyLYgiN3aqUbtCQ+c0HvbShTITpDBYJIAQrKexAXyYGvrlBC09Q+GyEDmRpius7hC
	XbvCAH8QS98CvdqBROzYioLw/ZzIigHoy4T5X/zl41q1efFdjRFWQlagtalJweQkw3ZezNor5nXMB
	SFNkdT4d62sU7gC3MELJ8s0w6IColpuf8W6EiJNbRvihlIcW5tnZdkUq/BtjMtkj/YRt5Jxdhvtyt
	Kcng/pBSLyHNyiwNo85Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Xyq-0007LI-4g; Fri, 14 Feb 2020 10:13:52 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Xyc-0007JJ-C9
 for openwrt-devel@lists.openwrt.org; Fri, 14 Feb 2020 10:13:40 +0000
Received: by mail-ot1-x343.google.com with SMTP id r27so8611946otc.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 14 Feb 2020 02:13:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9lZINYm0KtTwecadR0AThaefQw2+QqlEoJ1W54Dlo8Y=;
 b=Dsm7Zscsd6CfZbnxvCAR19ZKXV0E1mURBh4/v42YaUOvd16EASCmBzu8TH0CZ+U0ym
 /17IQe7ayJFMNqPMrWVfAaLuK2UdLEZRgTWY4UJwdhmn28mbE4GR1BIFEqDT6l3kPhoI
 Qzi8ePfe3Evoy0fnKR+8+RkjeNGa9rFSnEApXKkf1omNp/+vL0v3Lc0zWwjNvlNRuhrR
 9z6hbCor0jE59Cfp2sITSBmnaJvUeJr5ox19LqBKYltxZ31DkzOY277Bgl9GpzAMTClO
 Pg7HJ8npiURM+VzdQuUSStTjHCYiPFfa4qmG89/qRTgFmFi3/l+9GuuRpBtPkr5oikWm
 SYgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9lZINYm0KtTwecadR0AThaefQw2+QqlEoJ1W54Dlo8Y=;
 b=RF+QgmgEpPMFH+klXYiJSf0KW1p9XsJCguhcQiitbYLL3jymF5zeh3ZYZ9nissvJFk
 SPhyWLTcc8HUYmvAsNmcRRaYnhwRX6morbysiPbGRmKNYs0GmsL0odvhh+PkZaZDOHVo
 u5V4A/XQAwhnsm/Sca0JnDISQetsNbEguLvvir1jGnov57y70hApDrNChAGbv85T+qEU
 xKtq625JcRr3X/6o4+xom0Vx7fmI2TU780bhjHQiGV+tZL5I1M4dli8XTYaAz4e2Xsk+
 C2MYM/nF+RIW5J66gRMcutb+DJr2p3cnmjZBU1ENm87TolcZIv3YgMBHz9o7r0V9ojPR
 sIfg==
X-Gm-Message-State: APjAAAVsvXUB+COF14ivywSS9Cf++6TFQ0e2R8+YZUVhk61cQYXP7DxN
 n5qv17UaO+vYYDXbJnPtIR1brUQOlUYUfPxE8HVqW88j
X-Google-Smtp-Source: APXvYqy4uhf7wVpGvjVBRvB5d9r5XhWCx3gKH7ms3U87n9Keo0b0wYVTAxfI7srYpCPOpGgKoDdUHtAPGc+JbNBvTgM=
X-Received: by 2002:a9d:20c1:: with SMTP id x59mr1713669ota.286.1581675216434; 
 Fri, 14 Feb 2020 02:13:36 -0800 (PST)
MIME-Version: 1.0
References: <47e09723-651a-abc6-2c2f-9552c3944e3c@nbd.name>
 <20200211101741.17350-1-ynezz@true.cz>
 <mailman.29925.1581436801.2486.openwrt-devel@lists.openwrt.org>
 <20200211195022.GF38853@meh.true.cz>
 <20200211212335.Horde.PPY4r-vXyYaWZToNCxd9jYH@www.vdorst.com>
 <20200212000444.Horde.lKaETCidKpI1mec-f8m0O4d@www.vdorst.com>
 <mailman.30468.1581606859.2486.openwrt-devel@lists.openwrt.org>
 <20200213154354.GD4966@meh.true.cz>
In-Reply-To: <20200213154354.GD4966@meh.true.cz>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Fri, 14 Feb 2020 11:13:25 +0100
Message-ID: <CAKfDRXhfb+LP67F=JGFZ5MbCX_aKz+Gpd8kKZEOV=OEP5qamdQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_021338_462809_5B14565D 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kristian.evensen[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: gsw_mt7621: disable PORT 5 MAC
 RX/TX flow control by default
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
Cc: =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi everyone,

I am sorry for my late reply to this thread. My email provider flagged
it as spam, so I only saw the conversation now. It seems that you have
reached a conclusion on how to proceed, but I thought I should anyway
share my notes/observations on this issue (in case they can be
useful).

My employer has a large number of Mediatek-based (mt7620 and mt7621)
routers in production. Most routers have a minimum of two internet
connections - one fixed and one using mobile broadband. Some time in
2017 we started receiving reports from a few customers that the switch
would stop working. The link was up, but no data would go through.
Looking at the logs, we could always see the "TX timeout" error
message and we started to look for a cause.

We quickly ruled out any kind of crash, as the LTE was still up and
wifi worked fine. After getting a few of these reports, we started
looking for things that were common between the different
installations. We struggled to find any, there were all sorts of
devices connected to the different ports on the routers. The only
thing the different cases had in common, was that the problem
disappeared when whatever was connected to the WAN port was
disconnected. However, again, the equipment that provided the fixed
connection came from all sorts of vendors.

After scratching our heads for a while and not getting anywhere, I
asked here on the mailing list and was told that restarting networking
should at least make the switch works fine again. We added a watchdog
doing exactly that when the TX timeout message would appear.
Restarting networking improved the situation considerably, but the
switch would still sometimes get stuck and never recover.

This triggered us to make a second attempt at recreating the problem.
Our test was the same as what Rene described. We assumed the problem
had something to do with sending large amounts of traffic and at a
high speed, so we used iperf3 as a traffic generator and sent traffic
between different machines connected to the switch. One of these
machines were quite unstable and prone to crash, and we noticed that
whenever that machine would crash the TX timeout issue would trigger
and no traffic would pass through the switch.

A normal packet capture didn't reveal anything interesting, but
connecting a network tap did. Looking at the packets captured from the
tap, we could see a flood of pause frames from the crashed machine.
When this flood occurred, the switch stopped transmitting packets on
all the ports and not just the one that the crashed machine was
connected to. This caught us by surprise, but doing some research it
seems to be a common behavior among "normal" switches. Also, if we
waited long enough, the switch would never recover.

After discovering that pause frames seemed to be at least one trigger
for TX timeout, we added support to the driver for enabling/disabling
flow control on each of the ports + an init script that does the
disabling. Since we deployed this change on our routers, we have not
had a single report about switches that stop working. We do sometimes
still see the "TX timeout" error, but it is no longer critical.

We never tried to disable flow control on the CPU-port only, which
seems like a more elegant approach than disabling each port
individually. I do agree that disabling pause frames is more a
work-around than a solution, but it has at least eradicated the
problem for us. I never got around to submitting our patch, but if
anyone would find it useful I can do it quite soon.

BR,
Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

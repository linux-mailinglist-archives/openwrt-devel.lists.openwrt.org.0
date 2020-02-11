Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74F1159420
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 17:00:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:References:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1zHnPzwARvdw4Q8E3XuLSVDeO4Qb8WW4hpZJmmLRaE=; b=aFn5ehLWrWsunfFK60qOEuB3K
	LWD5B8u+nCR7TAHFXzxqN1ON9dwYJe97ngRAnLt3flgTHc7imMJxV6Io5Rn0vSmeWazJiEC7XeS5w
	vOZq/USdaw3WCf3ggEMTXc/bz6aLv7KrqjZSkrQp2/bv4mrzsQCI/ZV1d+6OuR/zWDRt0xBhQ0h18
	NqnUZrpGWWNS9Q1lLPestqycDXdgbTQI6EARMPRSFjkAryvqM675RluuLapK/sN+bO6aB4xTgkTuY
	xET6CZDoX4tCHsqYee05R7jmPIGIvXf+U0c64o9gs+jHtjadZQzhQlm3AqAQCWxWierzoQ5YHdvTW
	rWxal/Sdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1XxQ-0000q0-H8; Tue, 11 Feb 2020 16:00:16 +0000
Date: Tue, 11 Feb 2020 15:59:52 +0000
To: openwrt-devel@lists.openwrt.org
References: <47e09723-651a-abc6-2c2f-9552c3944e3c@nbd.name>
 <20200211101741.17350-1-ynezz@true.cz>
In-Reply-To: <20200211101741.17350-1-ynezz@true.cz>
MIME-Version: 1.0
Message-ID: <mailman.29925.1581436801.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Ren=C3=A9_van_Dorst_via_openwrt-devel?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: gsw_mt7621: disable PORT 5 MAC
 RX/TX flow control by default
Content-Type: multipart/mixed; boundary="===============7376878714491548492=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7376878714491548492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7376878714491548492==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Xx8-0000pd-CQ
	for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 16:00:00 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx.0dd.nl (Postfix) with ESMTPS id D1AD95FB81
	for <openwrt-devel@lists.openwrt.org>; Tue, 11 Feb 2020 16:59:52 +0100 (CET)
Authentication-Results: mx.0dd.nl;
	dkim=pass (2048-bit key; secure) header.d=vdorst.com header.i=@vdorst.com header.b="EmWENtzs";
	dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.vdorst.com (Postfix) with ESMTPSA id 97D321DCAC8
	for <openwrt-devel@lists.openwrt.org>; Tue, 11 Feb 2020 16:59:52 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 97D321DCAC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
	s=default; t=1581436792;
	bh=jd4jLy3u7YHhgxz6kGMHrftpgvkXb35fKo2cqDB9DZY=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=EmWENtzsFqZtwkGGIdyO0QBo24mUSnfQR6khWJhD6tYF74CoCio+egyfPiBLQRMPz
	 FvPSkI76zxjUkl3YbMXxDXipCJ+K/ggx2HEuwF9pJTPkr9/4b3RYpZQlWvmp1Pv7Q3
	 NFs1A68MBkO9IaCc5aeYlPql7n8lZxbEfWxUiPUyGdb4BezqrTt3u/+bYcfTr1PA8J
	 +Wsp+0ptne/XFAlDqZVCWUNjCoBlLhzUAAcwkDVKG8lcuWx9gF6XPw5mh/2dw9cmMW
	 GxXH4EHuE6iMkXyDkLv5rjXqjSCfybgebrY7pcnL1EEsYN4XmQ+E/zM5a6p2iU2dHf
	 KIPcMpgoszPRg==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Tue, 11 Feb 2020 15:59:52 +0000
Date: Tue, 11 Feb 2020 15:59:52 +0000
Message-ID: <20200211155952.Horde.dm_DAH87BEMYgTsmE9Z2GIy@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: openwrt-devel@lists.openwrt.org
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: gsw_mt7621: disable PORT 5 MAC
 RX/TX flow control by default
References: <47e09723-651a-abc6-2c2f-9552c3944e3c@nbd.name>
 <20200211101741.17350-1-ynezz@true.cz>
In-Reply-To: <20200211101741.17350-1-ynezz@true.cz>
User-Agent: Horde Application Framework 5
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_075958_696753_E1678191 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

Hi Petr,

Quoting Petr Štetiar <ynezz@true.cz>:

> Looking at the current upstream driver implementation, it seems like the
> TX/RX flow control is enabled only if the flow control pause option is
> resolved from the device/link partner advertisements (or otherwise set).
>

With upstream you mean mainline 5.5 kernel?
In the DTS the CPU port is defined as a fixed-link with pause enabled.
So the pause bits are always resolved/set.

I can't tell if the mainline kernel driver encounters the same issue.
I don't use my device daily.

I still wonder if there is any race condition in the TX path/handling.
I see in the mainline kernel version they are using the same lock in  
tx_map and
tx_poll. And also checking the DMA owner bit in the descriptor.

So I think that the following is happening.

The hardware can't send the frames fast enough because of the PAUSE frames,
maybe to a slower device? The CPU is filling the tx ring faster then the
hardware sending it and eventually CPU overtakes the DMA head. Which causes an
issue/race/deadlock.

By disabling the PAUSE/flow control, it is less likely that is overtake is
going happen. But may result in more packet loss.

> On the other hand, our current in-tree driver force enables TX/RX
> flow control by default, thus possibly leading to TX timeouts if the
> other end sends pause frames (which are not properly handled?):
>
> WARNING: CPU: 3 PID: 0 at net/sched/sch_generic.c:320  
> dev_watchdog+0x1ac/0x324
> NETDEV WATCHDOG: eth0 (mtk_soc_eth): transmit queue 0 timed out
>
> Disabling the flow control on PORT 5 MAC seems to fix this issues as the
> pause frames are then filtered out. While at it, I'm removing the if
> condition completely as suggested, since this code is run only on mt7621
> SoC, so there is no need to check for the silicon revisions.
>

Port 6 is connected to the first GMAC of the SOC, not port 5.
So it should be PORT 6 in your description also you change the first GMAC
settings, maybe mention that too.

Greats,

René

> Ref:  
> https://lists.openwrt.org/pipermail/openwrt-devel/2017-November/009882.html
> Ref:  
> https://forum.openwrt.org/t/mtk-soc-eth-watchdog-timeout-after-r11573/50000/12
> Suggested-by: Felix Fietkau <nbd@nbd.name>
> Reported-by: Rosen Penev <rosenp@gmail.com>
> Signed-off-by: Petr Štetiar <ynezz@true.cz>
> ---
> .../drivers/net/ethernet/mediatek/gsw_mt7621.c       | 12 +++---------
> 1 file changed, 3 insertions(+), 9 deletions(-)
>
> diff --git  
> a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/gsw_mt7621.c  
> b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/gsw_mt7621.c
> index 89be23900738..232bcd8cf4ea 100644
> ---  
> a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/gsw_mt7621.c
> +++  
> b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/gsw_mt7621.c
> @@ -98,15 +98,9 @@ static void mt7621_hw_init(struct mt7620_gsw  
> *gsw, struct device_node *np)
> 	mt7530_mdio_w32(gsw, 0x7000, 0x3);
> 	usleep_range(10, 20);
>
> -	if ((rt_sysc_r32(SYSC_REG_CHIP_REV_ID) & 0xFFFF) == 0x0101) {
> -		/* (GE1, Force 1000M/FD, FC ON, MAX_RX_LENGTH 1536) */
> -		mtk_switch_w32(gsw, 0x2305e30b, GSW_REG_MAC_P0_MCR);
> -		mt7530_mdio_w32(gsw, 0x3600, 0x5e30b);
> -	} else {
> -		/* (GE1, Force 1000M/FD, FC ON, MAX_RX_LENGTH 1536) */
> -		mtk_switch_w32(gsw, 0x2305e33b, GSW_REG_MAC_P0_MCR);
> -		mt7530_mdio_w32(gsw, 0x3600, 0x5e33b);
> -	}
> +	/* (GE1, Force 1000M/FD, FC OFF, MAX_RX_LENGTH 1536) */
> +	mtk_switch_w32(gsw, 0x2305e30b, GSW_REG_MAC_P0_MCR);
> +	mt7530_mdio_w32(gsw, 0x3600, 0x5e30b);
>
> 	/* (GE2, Link down) */
> 	mtk_switch_w32(gsw, 0x8000, GSW_REG_MAC_P1_MCR);
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel




--===============7376878714491548492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7376878714491548492==--

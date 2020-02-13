Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31F415C127
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Feb 2020 16:14:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:References:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/IexvCzy3th7WUMazQJ38VsAo/RoJVo7eyvLSrOKGJo=; b=VJ40GLbWg8m+ljlf9baKU21l+
	lZw4F1BBSiT0KFVWFnQvE33msn2J/QEzKZlWkT3KFJN/w0dVUfoFx4C+xhooJI4wAmOMjrvgXJD8X
	XZN5xxQEVm74NCoOr7huaqgSkHxNzvrsWf7tFQCsPO5mDeurVtY7ApCk3UTn8I/nmlX5VhvJwjn09
	5Wso8l4WO9Xd1Z+yNja9HQTssxqyGU9U8I1BCq5PL2qDdwfIBDVt6taOgUyDzNrp3uN4FI6Yv5NPA
	FG6RNJPU/Li+2lNf6BJPUEqSnP8Xxqa+xEo4T90CXNhVTR6sXh3bsfF8yxMt2s6UUHLuLoMoM0Qei
	aPFM6/MVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2GC6-0007Pa-SZ; Thu, 13 Feb 2020 15:14:22 +0000
Date: Thu, 13 Feb 2020 15:14:09 +0000
To: Petr =?utf-8?b?xaB0ZXRpYXI=?= <ynezz@true.cz>
References: <47e09723-651a-abc6-2c2f-9552c3944e3c@nbd.name>
 <20200211101741.17350-1-ynezz@true.cz>
 <mailman.29925.1581436801.2486.openwrt-devel@lists.openwrt.org>
 <20200211195022.GF38853@meh.true.cz>
 <20200211212335.Horde.PPY4r-vXyYaWZToNCxd9jYH@www.vdorst.com>
 <20200212000444.Horde.lKaETCidKpI1mec-f8m0O4d@www.vdorst.com>
In-Reply-To: <20200212000444.Horde.lKaETCidKpI1mec-f8m0O4d@www.vdorst.com>
MIME-Version: 1.0
Message-ID: <mailman.30468.1581606859.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Ren=C3=A9_van_Dorst_via_openwrt-devel?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org,
 Kristian Evensen <kristian.evensen@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2077062485230522897=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2077062485230522897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2077062485230522897==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2GC0-0007Os-1o
	for openwrt-devel@lists.openwrt.org; Thu, 13 Feb 2020 15:14:18 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx.0dd.nl (Postfix) with ESMTPS id B3CFE5FA7A;
	Thu, 13 Feb 2020 16:14:09 +0100 (CET)
Authentication-Results: mx.0dd.nl;
	dkim=pass (2048-bit key; secure) header.d=vdorst.com header.i=@vdorst.com header.b="McCxttUK";
	dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.vdorst.com (Postfix) with ESMTPSA id 6A5E01E1277;
	Thu, 13 Feb 2020 16:14:09 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 6A5E01E1277
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
	s=default; t=1581606849;
	bh=ewkhx26PLChwL8t5gWgvzs0cxHUu1Qf960GUPLVZ8G0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=McCxttUKlggUdOLgFZt7x9/LESEQsAbYdsRmSXFYr1V6e2qrQe/ST1zOa/FYxfECB
	 MCUu7TNi/sbpo9znQ6oy1wWNRf42RUJG4XMnwuL+hH0CG5/vLu24MR9dXbUbVZi10B
	 2VUuYYzBkNZ/iwo7bQEssHLh0pd/iiQxVEsyx4NkvV9G2urIj+H4I89/hecEeYN/ru
	 4b1ilJecxvDTK+fSTiUDAtFvcKSvSe2AylvOM0H0A6xCQcKqWHNSjbCIBJ5sVKjDcb
	 45/Tu7zB3l+2ivKEXJAi8jdRLQnevM7MPTE4ChRdfblT+fQgxFEtdSRswzQSiBgsGH
	 KyRqWhYk11ddA==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Thu, 13 Feb 2020 15:14:09 +0000
Date: Thu, 13 Feb 2020 15:14:09 +0000
Message-ID: <20200213151409.Horde.rh7ySNZbUb7cA6WELTco7ui@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Petr =?utf-8?b?xaB0ZXRpYXI=?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, Kristian Evensen
 <kristian.evensen@gmail.com>
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: gsw_mt7621: disable PORT 5 MAC
 RX/TX flow control by default
References: <47e09723-651a-abc6-2c2f-9552c3944e3c@nbd.name>
 <20200211101741.17350-1-ynezz@true.cz>
 <mailman.29925.1581436801.2486.openwrt-devel@lists.openwrt.org>
 <20200211195022.GF38853@meh.true.cz>
 <20200211212335.Horde.PPY4r-vXyYaWZToNCxd9jYH@www.vdorst.com>
 <20200212000444.Horde.lKaETCidKpI1mec-f8m0O4d@www.vdorst.com>
In-Reply-To: <20200212000444.Horde.lKaETCidKpI1mec-f8m0O4d@www.vdorst.com>
User-Agent: Horde Application Framework 5
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_071416_652678_5A14C6EF 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Quoting René van Dorst <opensource@vdorst.com>:

> Quoting René van Dorst <opensource@vdorst.com>:
>
>> Quoting Petr Štetiar <ynezz@true.cz>:
>>
>>> René van Dorst via openwrt-devel <openwrt-devel@lists.openwrt.org>  
>>> [2020-02-11 15:59:52]:
>>>
>>> [adding Kristian to the Cc: loop]
>>>
>>>>> Looking at the current upstream driver implementation, it seems like the
>>>>> TX/RX flow control is enabled only if the flow control pause option is
>>>>> resolved from the device/link partner advertisements (or otherwise set).
>>>>>
>>>>
>>>> With upstream you mean mainline 5.5 kernel?
>>>
>>> Yes, 5.6-rc1
>>>
>>>> In the DTS the CPU port is defined as a fixed-link with pause enabled.
>>>> So the pause bits are always resolved/set.
>>>
>>> I see[1] port@6 with fixed-link, without pause property.
>>
>> Here is more information I wrote [1] about the mt7530 switch and it  
>> modes and also
>> the mt7621 example below. I used the pause because AFAIK there  
>> was/is no pause issue.
>>
>>>
>>>> The hardware can't send the frames fast enough because of the  
>>>> PAUSE frames,
>>>> maybe to a slower device? The CPU is filling the tx ring faster then the
>>>> hardware sending it and eventually CPU overtakes the DMA head.  
>>>> Which causes an
>>>> issue/race/deadlock.
>>>
>>> Probably, I didn't tried to reproduce it or planning to do so.
>>>
>>
>> I hope to reproduce it quick by reducing the TX ring size from 4096 to 256.
>>
>
> Hi Petr,
>
> I thing I looking in the right direction.
> With this patch, reducing the tx_ring size to 4 * 4 = 16 packets, I  
> can easily
> trigger a transmit timeout.
> Just create some traffic.
>

Hi Petr,

Although it triggers the timeout, it seems the driver/functions don't expected
such small dma sizes. With some extra debug code added, I see that only the
first 2 entries are filled and a timeout hits. By increasing the size  
to 8*4=32
packets the drivers works as expected.
I tried to flood the device with packets. Iperf3 (LAN->WAN) through the device
with and in parallel iperf3 from device to LAN. After more then +500GBytes it
was still going.

So I am not sure about my theory.

Maybe we could add some extra debug code in the timeout().
FE can set the flag "DMA DONE" for every packet that was send.
Debug code should show that bit for every entry.
Maybe this gives a bit more info.

Greats,

René

>
> rene@pc-rene:~/dev/openwrt$ git diff
> diff --git  
> a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c  
> b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
> index c6f4d90193b3..09d5e75ec0b0 100644
> ---  
> a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
> +++  
> b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
> @@ -1658,7 +1658,7 @@ static int fe_probe(struct platform_device *pdev)
>         priv->msg_enable = netif_msg_init(fe_msg_level,  
> FE_DEFAULT_MSG_ENABLE);
>         priv->rx_ring.frag_size = fe_max_frag_size(ETH_DATA_LEN);
>         priv->rx_ring.rx_buf_size = fe_max_buf_size(priv->rx_ring.frag_size);
> -       priv->tx_ring.tx_ring_size = NUM_DMA_DESC;
> +       priv->tx_ring.tx_ring_size = 4;
>         priv->rx_ring.rx_ring_size = NUM_DMA_DESC;
>         INIT_WORK(&priv->pending_work, fe_pending_work);
>         u64_stats_init(&priv->hw_stats->syncp);
>
> Greats,
>
> René
>
>>>>> Disabling the flow control on PORT 5 MAC seems to fix this issues as the
>>>>> pause frames are then filtered out. While at it, I'm removing the if
>>>>> condition completely as suggested, since this code is run only on mt7621
>>>>> SoC, so there is no need to check for the silicon revisions.
>>>>>
>>>>
>>>> Port 6 is connected to the first GMAC of the SOC, not port 5.
>>>> So it should be PORT 6 in your description also
>>>
>>> Ok, I took that "PMCR_P5/PORT 5 MAC Control Register" from
>>> MT7621_ProgrammingGuide_GSW_v01.pdf. Couldnt find anything about P6, it's
>>> quite confusing.
>>
>> I totally understand that. Lack of complete documentation is an issue.
>>
>> P6 = MAC6 in the documentation. AFAIK all the MACs do have the same register
>> layout. So MAC6 = PORT 6 and is connected to the first GMAC of the SOC.
>> PORT 5 = MAC5 and can be used as 2nd CPU port or connect to an external phy.
>> So MAC5, 2nd GMAC of the SOC and an external PHY share the same RGMII bus.
>> Depending on GPIO/PORT settings they are connected to the BUS. See  
>> also mt7530.txt
>> kernel doc for more info.
>>
>>>
>>> 1.  
>>> https://elixir.bootlin.com/linux/v5.6-rc1/source/drivers/staging/mt7621-dts/mt7621.dtsi#L489
>>>
>>> -- ynezz
>>>
>>> _______________________________________________
>>> openwrt-devel mailing list
>>> openwrt-devel@lists.openwrt.org
>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
>> [1]:  
>> https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/net/dsa/mt7530.txt#L38
>>
>> Greats,
>>
>> René





--===============2077062485230522897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2077062485230522897==--

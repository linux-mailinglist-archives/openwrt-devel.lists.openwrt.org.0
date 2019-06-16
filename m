Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEF7473E9
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 11:12:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:References:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HZJUA1Jvqa5O626O2bf8rfIzs0Vbu6/QtHCb61/rUy8=; b=H1JcjKT3w5QhSgNi9Wxdd3IUt
	aD//NFrX11b/+6FhoWGtBYh3lqU9lSdWOHQHFexEv9K2V5XiV5AtLT3oXoGpES/ci9042wFeEebnS
	3ihkiB00TKSR6B2QrncOytgqCPeJGvk3jYrkVztPYWhIiGjQTdTu2kOXY/OYnjMPcCVwlSLXc3PMJ
	rGBDPQb/frDe58rUkRJ4XTlF34UqC/6yl5Lwe52MwjZ2+D0Tuk8sfbE4qwfipK7gm7xAC/qTFCkZP
	AlKhGv3o5sZ5FMTecwRGVEMFR/Fb5w386kcbG/2Ra/7xD2rKD5OIX4k3SlvG51Zy1nMxSyFHSQAK8
	r+vhFDnhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcRCv-0003LY-Mu; Sun, 16 Jun 2019 09:12:13 +0000
Date: Sun, 16 Jun 2019 09:11:58 +0000
To: Daniel Santos <daniel.santos@pobox.com>
References: <2766c2b3-3262-78f5-d736-990aaa385eeb@pobox.com>
 <6f21e283-60ef-7e0f-359b-fbd547ea7e2a@pobox.com>
In-Reply-To: <6f21e283-60ef-7e0f-359b-fbd547ea7e2a@pobox.com>
MIME-Version: 1.0
Message-ID: <mailman.2218.1560676326.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Ren=C3=A9_van_Dorst_via_openwrt-devel?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Michael Lee <igvtee@gmail.com>, netdev@vger.kernel.org,
 Daniel Golle <daniel@makrotopia.org>, Felix Fietkau <nbd@nbd.name>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>,
 John Crispin <blogic@openwrt.org>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: =?utf-8?b?UmVuw6k=?= van Dorst <rene@vdorst.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Understanding Ethernet Architecture (I/O -->
 MDIO --> MII vs I/O --> MAC) for mt7620 (OpenWRT)
Content-Type: multipart/mixed; boundary="===============0127620530608560054=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0127620530608560054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0127620530608560054==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mx.0dd.nl ([5.2.79.48])
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcRCk-0003L5-Qf
	for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 09:12:05 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx.0dd.nl (Postfix) with ESMTPS id D0DE05FC18;
	Sun, 16 Jun 2019 11:11:58 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
	dkim=pass (2048-bit key; secure) header.d=vdorst.com header.i=@vdorst.com header.b="Nld4QN7J";
	dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.vdorst.com (Postfix) with ESMTPSA id 950331C5D435;
	Sun, 16 Jun 2019 11:11:58 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 950331C5D435
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
	s=default; t=1560676318;
	bh=QA2GaIAdcuc6GUp52PQ+9FOjLG/vjaQE48cxIlecqck=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nld4QN7Jl8JlZS0hRmlrAQbS7OqmeRi8L0RlFK0w+8ybM7q9RoOyEBysXw6Jgbbb3
	 z0RG1kbJ2UkQxaiFrMG1yxDQT9eqEh05z7ouBjxJWeORQO2sSaJOv3Isc6i5oZkTYa
	 m/fdZk8+qQF72x/RQ+JtZfe8KhgpJch04ivrYvmGEmcj7y8iII4ydY/a9x9F2v368+
	 l6DxwVU2F+3qzFANPcSyHgvzI20D3YAqpMD73jf8i1/+JxI2WaopvhY8vXzQ6WmfSX
	 IW+Mve3Le5Iutnywtb9j187NzsUOKgXQEbtCVMhLN0TrtRt/y0AB5cifuKoipEYUq0
	 XQ3k3R8+QQrHg==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Sun, 16 Jun 2019 09:11:58 +0000
Date: Sun, 16 Jun 2019 09:11:58 +0000
Message-ID: <20190616091158.Horde.-Ajc7bdOXS4MeR2iDYzdOyd@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <rene@vdorst.com>
To: Daniel Santos <daniel.santos@pobox.com>
Cc: Daniel Golle <daniel@makrotopia.org>, Felix Fietkau <nbd@nbd.name>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>, John Crispin
 <blogic@openwrt.org>, Michael Lee <igvtee@gmail.com>, netdev@vger.kernel.org
Subject: Re: Understanding Ethernet Architecture (I/O --> MDIO --> MII vs
 I/O --> MAC) for mt7620 (OpenWRT)
References: <2766c2b3-3262-78f5-d736-990aaa385eeb@pobox.com>
 <6f21e283-60ef-7e0f-359b-fbd547ea7e2a@pobox.com>
In-Reply-To: <6f21e283-60ef-7e0f-359b-fbd547ea7e2a@pobox.com>
User-Agent: Horde Application Framework 5
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_021203_720304_8DA303B5 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily

Quoting Daniel Santos <daniel.santos@pobox.com>:

Hi Daniel,

> Ah hah! I've found my answer on page 340 (414. PIAC: PHY Indirect Access
> Control(offset:0x7004)) and in mt7620_gsw_config:
>
> static int mt7620_gsw_config(struct fe_priv *priv)
> {
> 	struct mt7620_gsw *gsw = (struct mt7620_gsw *) priv->soc->swpriv;
>
> 	/* is the mt7530 internal or external */
> 	if (priv->mii_bus && mdiobus_get_phy(priv->mii_bus, 0x1f)) {
> 		mt7530_probe(priv->dev, gsw->base, NULL, 0);
> 		mt7530_probe(priv->dev, NULL, priv->mii_bus, 1);
> 	} else {
> 		mt7530_probe(priv->dev, gsw->base, NULL, 1);
> 	}
>
> 	return 0;
> }
>
> So priv->mii_bus is non-null when the chip's network hardware is
> external because the similarly (and confusingly) named mt7530 is only
> the switch hardware, where as the mt7620 is a full µC that has an mt7530
> integrated into it.  Which leads me to the question of what "GSW"
> means?  This is the name of the hardware that has the PIAC register, but
> nowhere in the data sheet or programming guide can I find a definition.

GSW = Gigabit Switch.

Quote out of an old patch see https://lkml.org/lkml/2018/3/14/1044

"Although the builtin MT7530 is gbit capable, the builtin PHYs are  
only 100mbit."

Greats,

René

>
> Thanks,
> Daniel
>
>
> On 6/14/19 5:53 PM, Daniel Santos wrote:
>> Hello,
>>
>> I'm still fairly new to Ethernet drivers and there are a lot of
>> interesting pieces.  What I need help with is understanding MDIO -->
>> (R)MII vs direct I/O to the MAC (e.g., via ioread32, iowrite32).  Why is
>> there not always a struct mii_bus to talk to this hardware?  Is it
>> because the PHY and/or MAC hardware sometimes attached via an MDIO
>> device and sometimes directly to the I/O bus?  Or does some type of
>> "indirect access" need to be enabled for that to work?
>>
>> I might be trying to do something that's unnecessary however, I'm not
>> sure yet.  I need to add functionality to change a port's
>> auto-negotiate, duplex, etc.  I'm adding it to the swconfig first and
>> then will look at adding it for DSA afterwards.  When I run "swconfig
>> dev switch0 port 0 show", the current mt7530 / mt7620 driver is querying
>> the MAC status register (at base + 0x3008 + 0x100 * port, described on
>> pages 323-324 of the MT7620 Programming Guide), so I implemented the
>> "set" functionality by modifying the MAC's control register (offset
>> 0x3000 on page 321), but it doesn't seem to change anything.  So I
>> figured maybe I need to modify the MII interface's control register for
>> the port (page 350), but upon debugging I can see that the struct
>> mii_bus *bus member is NULL.
>>
>> So should I be able to change it via the MAC's control register and
>> something else is wrong?  Why is there no struct mii_bus?  Can I talk to
>> the MII hardware in some other way?
>>
>> Thanks,
>> Daniel
>>
>> https://download.villagetelco.org/hardware/MT7620/MT7620_ProgrammingGuide.pdf
>>



-- 
Met vriendelijke groet,

René van Dorst



--===============0127620530608560054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0127620530608560054==--

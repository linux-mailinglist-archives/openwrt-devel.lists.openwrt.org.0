Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0C25A6C1
	for <lists+openwrt-devel@lfdr.de>; Sat, 29 Jun 2019 00:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CyCLkPPufY0aR6LFj6uIhL+c7WTJuwi6O+RPQ1m7T2A=; b=s3E
	kG0sSip2yIZqcIg07FxnKOWXSt80evn9/bG+MfLqkO1wWNa9a+mOetLm5OHfV1nKTOgphoh7nxbJo
	/DVxjfFn7pAL6mSvIbUqbm9li0MRf/eIW+13LFfL3T0JeFmJk2NF8GWdshN3kYbxNxKKTXnYJyCVA
	1hRjrBXoozjutwREiRIsmn31Q8EGKeZcECNzgMmjzs34Vibaxt2ZE7ZCUXC3bYDySxojFNh8FUQEH
	SZ7AKz+MW+AHNSztkq0AFEtBRlk1+9JXuWvDN8IV97Eh3WbVp5nLeKVcmXMz200YNZ4Q7JIS/gFnX
	ZRpIz1VpmK/v5MIkSWDHw4PcV4bre9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgz4o-000806-Tk; Fri, 28 Jun 2019 22:10:39 +0000
To: John Crispin <blogic@openwrt.org>, Sean Wang <sean.wang@mediatek.com>,
 Felix Fietkau <nbd@nbd.name>, openwrt-devel
 <openwrt-devel@lists.openwrt.org>, Michael Lee <igvtee@gmail.com>,
 linux-mediatek@lists.infradead.org
Date: Fri, 28 Jun 2019 17:08:45 -0500
MIME-Version: 1.0
Message-ID: <mailman.5986.1561759829.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Daniel Santos via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Daniel Santos <daniel@gsat.us>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] mt7620/1,
 mt7530: Where are these MAC and MII registers documented?
Content-Type: multipart/mixed; boundary="===============3126849556331903625=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3126849556331903625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3126849556331903625==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail.gsat.us ([66.165.183.93])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1hgz4d-0007zZ-5o
	for openwrt-devel@lists.openwrt.org; Fri, 28 Jun 2019 22:10:28 +0000
Received: from [192.168.1.134] (70-142-57-80.lightspeed.rcsntx.sbcglobal.net [70.142.57.80])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailgse.com (Postfix) with ESMTPSA id 2534AFA41D9;
	Fri, 28 Jun 2019 22:10:25 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gsat.us; s=default;
	t=1561759826; bh=O/6igsGHu3CNdxxLoDWCgpHt5xXBeQPxeyTohasL2MY=;
	h=From:Subject:To:Date;
	b=t0N8OUEo0Z+QL/1TgNu0QI1I7gHuvMe1JrjHiyPHEP50Eeo6eDAVSIxASVpVGmKvh
	 O9bWJCsNt3uBv+6FqqFAnFxV2HmZBRMEAov8cRk8zn6GjXNG+QfPbFBoHgvvtSPLKC
	 ct35QlnOzDREoVBc2t6wqnr5qhfOvfzguTWSIoXw=
From: Daniel Santos <daniel@gsat.us>
Subject: mt7620/1, mt7530: Where are these MAC and MII registers documented?
To: John Crispin <blogic@openwrt.org>, Sean Wang <sean.wang@mediatek.com>,
 Felix Fietkau <nbd@nbd.name>, openwrt-devel
 <openwrt-devel@lists.openwrt.org>, Michael Lee <igvtee@gmail.com>,
 linux-mediatek@lists.infradead.org
Message-ID: <969a5fe6-2fa6-e8f0-a66e-d4aabbe937cd@gsat.us>
Date: Fri, 28 Jun 2019 17:08:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_151027_362079_9A04FD3D 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

Hello,

I'm looking at the mt7620 Ethernet driver and I see a lot of magic
happening for which I cannot find documentation anywhere.  Can anybody
tell me where I can get the datasheets / programmer's guide that
document these registers please?

Examples:
I/O to 0x7830, 0x7a40 -- Entries in the WAPI table?  That seems strange.

_mt7620_mii_write(gsw, gsw->ephy_base + 1, 22, 0x10cf);  The mt7620
programming guide only documents 0-6, while the 802.3-2005 has
everything from 16-31 marked as "vendor specific".  Also, what does port
31 do?

From the current OpenWRT head:

static void mt7620_hw_init(struct mt7620_gsw *gsw, int mdio_mode)
{
	u32 i;
	u32 val;
	u32 is_BGA = (rt_sysc_r32(0x0c) >> 16) & 1;

	rt_sysc_w32(rt_sysc_r32(SYSC_REG_CFG1) | BIT(8), SYSC_REG_CFG1);
	mtk_switch_w32(gsw, mtk_switch_r32(gsw, GSW_REG_CKGCR) & ~(0x3 << 4), GSW_REG_CKGCR);

	/* Enable MIB stats */
	mtk_switch_w32(gsw, mtk_switch_r32(gsw, GSW_REG_MIB_CNT_EN) | (1 << 1), GSW_REG_MIB_CNT_EN);

	if (mdio_mode) {
		u32 val;

		/* turn off ephy and set phy base addr to 12 */
		mtk_switch_w32(gsw, mtk_switch_r32(gsw, GSW_REG_GPC1) |
			(0x1f << 24) | (0xc << 16),
			GSW_REG_GPC1);

		/* set MT7530 central align */
		val = mt7530_mdio_r32(gsw, 0x7830);
		val &= ~BIT(0);
		val |= BIT(1);
		mt7530_mdio_w32(gsw, 0x7830, val);

		val = mt7530_mdio_r32(gsw, 0x7a40);
		val &= ~BIT(30);
		mt7530_mdio_w32(gsw, 0x7a40, val);

		mt7530_mdio_w32(gsw, 0x7a78, 0x855);
	} else {

		if (gsw->ephy_base) {
			/* set phy base addr to ephy_base */
			mtk_switch_w32(gsw, mtk_switch_r32(gsw, GSW_REG_GPC1) |
				(gsw->ephy_base << 16),
				GSW_REG_GPC1);
			fe_reset(BIT(24)); /* Resets the Ethernet PHY block. */
		}

		/* global page 4 */
		_mt7620_mii_write(gsw, gsw->ephy_base + 1, 31, 0x4000);

		_mt7620_mii_write(gsw, gsw->ephy_base + 1, 17, 0x7444);
		if (is_BGA)
			_mt7620_mii_write(gsw, gsw->ephy_base + 1, 19, 0x0114);
		else
			_mt7620_mii_write(gsw, gsw->ephy_base + 1, 19, 0x0117);

		_mt7620_mii_write(gsw, gsw->ephy_base + 1, 22, 0x10cf);
		_mt7620_mii_write(gsw, gsw->ephy_base + 1, 25, 0x6212);
		_mt7620_mii_write(gsw, gsw->ephy_base + 1, 26, 0x0777);
		_mt7620_mii_write(gsw, gsw->ephy_base + 1, 29, 0x4000);
		_mt7620_mii_write(gsw, gsw->ephy_base + 1, 28, 0xc077);
		_mt7620_mii_write(gsw, gsw->ephy_base + 1, 24, 0x0000);

		/* global page 3 */
		_mt7620_mii_write(gsw, gsw->ephy_base + 1, 31, 0x3000);
		_mt7620_mii_write(gsw, gsw->ephy_base + 1, 17, 0x4838);

		/* global page 2 */
		_mt7620_mii_write(gsw, gsw->ephy_base + 1, 31, 0x2000);
		if (is_BGA) {
			_mt7620_mii_write(gsw, gsw->ephy_base + 1, 21, 0x0515);
			_mt7620_mii_write(gsw, gsw->ephy_base + 1, 22, 0x0053);
			_mt7620_mii_write(gsw, gsw->ephy_base + 1, 23, 0x00bf);
			_mt7620_mii_write(gsw, gsw->ephy_base + 1, 24, 0x0aaf);
			_mt7620_mii_write(gsw, gsw->ephy_base + 1, 25, 0x0fad);
			_mt7620_mii_write(gsw, gsw->ephy_base + 1, 26, 0x0fc1);
		} else {
			_mt7620_mii_write(gsw, gsw->ephy_base + 1, 21, 0x0517);
			_mt7620_mii_write(gsw, gsw->ephy_base + 1, 22, 0x0fd2);
			_mt7620_mii_write(gsw, gsw->ephy_base + 1, 23, 0x00bf);
			_mt7620_mii_write(gsw, gsw->ephy_base + 1, 24, 0x0aab);
			_mt7620_mii_write(gsw, gsw->ephy_base + 1, 25, 0x00ae);
			_mt7620_mii_write(gsw, gsw->ephy_base + 1, 26, 0x0fff);
		}
		/* global page 1 */
		_mt7620_mii_write(gsw, gsw->ephy_base + 1, 31, 0x1000);
		_mt7620_mii_write(gsw, gsw->ephy_base + 1, 17, 0xe7f8);

		/* turn on all PHYs */
		for (i = 0; i <= 4; i++) {
			val = _mt7620_mii_read(gsw, gsw->ephy_base + i, 0);
			val &= ~BIT(11);
			_mt7620_mii_write(gsw, gsw->ephy_base + i, 0, val);
		}
	}

	/* global page 0 */
	_mt7620_mii_write(gsw, gsw->ephy_base + 1, 31, 0x8000);
	_mt7620_mii_write(gsw, gsw->ephy_base + 0, 30, 0xa000);
	_mt7620_mii_write(gsw, gsw->ephy_base + 1, 30, 0xa000);
	_mt7620_mii_write(gsw, gsw->ephy_base + 2, 30, 0xa000);
	_mt7620_mii_write(gsw, gsw->ephy_base + 3, 30, 0xa000);

	_mt7620_mii_write(gsw, gsw->ephy_base + 0, 4, 0x05e1);
	_mt7620_mii_write(gsw, gsw->ephy_base + 1, 4, 0x05e1);
	_mt7620_mii_write(gsw, gsw->ephy_base + 2, 4, 0x05e1);
	_mt7620_mii_write(gsw, gsw->ephy_base + 3, 4, 0x05e1);

	/* global page 2 */
	_mt7620_mii_write(gsw, gsw->ephy_base + 1, 31, 0xa000);
	_mt7620_mii_write(gsw, gsw->ephy_base + 0, 16, 0x1111);
	_mt7620_mii_write(gsw, gsw->ephy_base + 1, 16, 0x1010);
	_mt7620_mii_write(gsw, gsw->ephy_base + 2, 16, 0x1515);
	_mt7620_mii_write(gsw, gsw->ephy_base + 3, 16, 0x0f0f);

	/* CPU Port6 Force Link 1G, FC ON */
	mtk_switch_w32(gsw, 0x5e33b, GSW_REG_PORT_PMCR(6));

	/* Set Port 6 as CPU Port */
	mtk_switch_w32(gsw, 0x7f7f7fe0, 0x0010);

	/* setup port 4 */
	if (gsw->port4 == PORT4_EPHY) {
		u32 val = rt_sysc_r32(SYSC_REG_CFG1);

		val |= 3 << 14;
		rt_sysc_w32(val, SYSC_REG_CFG1);
		_mt7620_mii_write(gsw, gsw->ephy_base + 4, 30, 0xa000);
		_mt7620_mii_write(gsw, gsw->ephy_base + 4, 4, 0x05e1);
		_mt7620_mii_write(gsw, gsw->ephy_base + 4, 16, 0x1313);
		pr_info("gsw: setting port4 to ephy mode\n");
	} else if (!mdio_mode) {
		u32 val = rt_sysc_r32(SYSC_REG_CFG1);

		val &= ~(3 << 14);
		rt_sysc_w32(val, SYSC_REG_CFG1);
		pr_info("gsw: setting port4 to gmac mode\n");
	}
}


Thanks,
Daniel



--===============3126849556331903625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3126849556331903625==--

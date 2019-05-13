Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 296801BEE5
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 May 2019 22:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=c73EPEdMRLcqbxT+4BN6uApqjfEicK2UdyFEfMPEz+o=; b=lXh
	tDnp1lQuUnXjaowqpYHKSGYj/V3yaLBlsWzxJJURVaEIfOJs2++DBGrPGgaYrtKvjcHyWxjyKUxEh
	eX+ik7y8fiGuf5Za/ybBFwjwJvwmOE4ZzvtCp04FQ3/lkospMzXdTLThVEHohYoES0kdHl9aA7voP
	eonIpKbaRRcsm1uOtixxi/gb44brduw3aXSVcazc6Od6G66Xehu/qfIjEtsxyiFCowLo65EF8TWFT
	YasCLNUv/YefLXImLb2gJxNVfj2IJWlk+g2OFVR70h91ja0MdibIfNLKh06H8588DzdmJdU8pKwK6
	/BK07ddfArTWT5mfGSTV5v+SjtyWVNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQI1b-0004Li-W8; Mon, 13 May 2019 20:58:20 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQI1U-0004Ks-QN
 for openwrt-devel@lists.openwrt.org; Mon, 13 May 2019 20:58:14 +0000
Received: by mail-pg1-x52a.google.com with SMTP id w22so7384129pgi.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 13 May 2019 13:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=hrcGfKfC/PgcOhD8UExjK96mmrGgKIOhd/y2vgV/fYQ=;
 b=f5No8Tbm1VhUAxlADK5SafrwS7A0el0fVl9qR5LdGCqSQt3eT2aYlSABTAgvasDy8u
 JdQMD2br3WgZtjTk76YbQfRjjojDWwIOhAzpKmOx5MtRW0HOzuTR6MWe8NsAZ3Mk1eH8
 e4t7WXTz/6cGMBEqd0RM053nOMtcl9c7gncKd3pdHF7nJz3BFWcMJtqTdvMTpI8izTD7
 Jok5bG7NzL3soC9oroqX0hKVQN4vPk8gmo8BD/B6qhyTK4rXsDJ38stb9moybIeRoR4f
 mPGJhUJcEh7G+BMWHWfUblfhbLklo0wHkmtgqWTlumx867vq3AxhZfWsa3yM9/rbyD83
 A1Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=hrcGfKfC/PgcOhD8UExjK96mmrGgKIOhd/y2vgV/fYQ=;
 b=dibQW8w3WaPr+UAetrcD6USpoSfjIQf0Zo0dXkpuQc9o3ZpDapUG7wx8sRn97VR/Il
 tfmOQ/LEeUL2GWxEXH6w5ET+WCYEdxO8ef0Gc6qOH+x8i9h3gSUkVamwmTmTpK2lMbXU
 KqIR0rVodvXvUmQxHSDBvMZBH5eiMh9LnrjxqJFQdX3IPRIdv1QbQLrfehm8fLbB9NQ0
 QRuHvUFX45+hkLRXlREY4WdstCPeHyOe2+yxVxTGvvX1rNjTj7kMq99Z73SNEEohjs5+
 ZR1CiKBr2vr4mIRgZihDWSKZbuNOcVz4ojEvDoIbf1+5MLKLARxWl9/0PQ7stpPPn5yL
 5gmQ==
X-Gm-Message-State: APjAAAWH4qyNvF9NgqVlAySV4fNO85yFBGb8ia/yf9RZmR+yUXjPnrnc
 mZetS0tycxM4+/athNY0T2+cOGkAFOzeFiMw7c8naubOcA==
X-Google-Smtp-Source: APXvYqw71xotUHloojumIC+yoo4zBt/N2vPHs9nyhq1LO23Eub19LpyuasEzBPGOgEFZoz3qo0+by2KSmzdsOucKdSY=
X-Received: by 2002:a63:c64c:: with SMTP id x12mr33953243pgg.379.1557781091412; 
 Mon, 13 May 2019 13:58:11 -0700 (PDT)
MIME-Version: 1.0
From: Sam Samy <to.swami1@gmail.com>
Date: Mon, 13 May 2019 13:58:00 -0700
Message-ID: <CAPGJ1o-fdnMVqoSL-8jDQUQJqBzzFDWttTPomFvm30R=iM-fkQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_135812_898269_C979232F 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (to.swami1[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (to.swami1[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] ath10k TPC reg. domain incorrect?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,
 I installed master branch openwrt onto Asus MAP-AC2200 AP. It has tri
band. Its based on IPQ4019 DK04 QCA reference platform. 2 radios
(2Ghz/5Ghz) on AHB bus and one 5GHZ on PCIe bus. Its generally working
fine except one problem in 5Ghz. On both the 5Ghz radios the RSSI is
pretty low on any 5Ghz channel I put it in.  In one feet range I see -60dB
RSSI, where as the stock firmware that came with the AP gives an RSSI
of -36dB at one foot distance.The downstream transmit rates are MCS8/9
for most part. The 2Ghz is working fine. Both radios seem to use the
cal data from
the flash that came with the AP.

After some discussion with ath10k firmware folks and looking at TPC
dump I noticed some differences in TPC between the Asus stock image
and openwrt image:

Here is the snippet from stock firmware:

TPC Config for channel 5765 mode 10
**************************************************
CTL           = 0x10   Reg. Domain           = 20
Antenna Gain  =  0     Reg. Max Antenna Gain = 12
Power Limit   = 63     Reg. Max Power        = 60
Num tx chains =  2    Num  Supported Rates  = 109
**************************************************
**************** CDD  POWER TABLE ****************
**************************************************

Where as in openwrt it is:

*************************************
TPC config for channel 5765 mode 10
*************************************
CTL        =  0x10 Reg. Domain        = 58
Antenna Gain    =  0 Reg. Max Antenna Gain    =   0
Power Limit    = 60 Reg. Max Power        = 30
Num tx chains    =  2 Num supported rates    = 109
********************************

So looks like reg domain is different even though both are set to US
countrycode?
(Although I didnt set anything on stock firmware. The countrycode from
iwpriv get_countrycode says its 841.)

Also, the antenna gain seems different between stock and openwrt firmware..

How to change the reg. domain like in stock firmware in openwrt
although I set the country code to US in the uci.

root@OpenWrt:/sys# uci show | grep country
uhttpd.defaults.country='ZZ'
wireless.radio0.country='US'
wireless.radio1.country='US'
wireless.radio2.country='US'
root@OpenWrt:/sys#


Thanks for your help!

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

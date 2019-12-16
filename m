Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FC7121E8A
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Dec 2019 23:48:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w12EbSFojNTZKvLDW5YQThBrJXVBt+t17Wuy46l7WZc=; b=uxtSYonBMLTcGF
	haNx4K08AN29YNr/75iHkV0Apwue1rp5RIZDL6iYSatuSUzOF1NRFttwVq/yK24EdAp73PXBW0RIB
	PcciWSEFaRzsXJAu3lMqBND3/euCYyYptb3sXwlZECIKYQwPMvPWf31bEa86zBBPRiuHgkdPlCH+o
	FohAZw4TNXMFDAz9aOWCx6IoztlYz7+bmwS2uJFj3FVTn59Qn5vqrrrWKM6vQZimITSs7b7zBVBSN
	ZywEaKMGE8E3Wo0uMmwSoPATjU+5qY1fM1OS1ltH3LoM1oJ8sd1R0I+iS3QSSErqbxJJbD/AxI2lh
	0EG2/Yc/CcCNUymJKZ3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igz9v-0003Lj-3O; Mon, 16 Dec 2019 22:48:11 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igz9n-0003LR-3q
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 22:48:04 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 4818E13C283
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Dec 2019 14:48:02 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 4818E13C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1576536482;
 bh=BWfg5DkS9pmu4maY580ZAGObEnFPDsba9pgV8s20zl8=;
 h=To:From:Subject:Date:From;
 b=lMfH7KeIjjJ+4/vQ9iMIkG951MEobWzZWli+jXuolqQfgOfeEL+kUsk3Y57k0Kv24
 S8E9kS1/bRgnrTJIkY4KH/H7iry9qC8RtzT4lTHr6rpS3CgeTEiKJ8QFWRykwf9AdS
 ycfa3+5We9vn3qUwxLcEick9vkzT2C+/Yx/IaLdk=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <2402695f-1854-5317-9acc-732e08526720@candelatech.com>
Date: Mon, 16 Dec 2019 14:48:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_144803_179692_E2754021 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] New ath10k-ct wave-2 firmware available
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

No changes to wave-1, but I make a version .014 copy anyway to keep the makefile in
sync.

Wave-2 has a fix to make setting txpower work better.  Before setting the power was
ignored at least some of the time (it also appeared to work mostly, so I guess it
was being correctly set in other ways).

988x
19db86003509dedb8ace339c183813ca637d65af24d00666411d1590efe33e13  firmware-2-ct-full-community-22.bin.lede.014
454e67dab545e720369a07be2fee16de008c76db4ab3119e7760bf9f7504c066  firmware-2-ct-full-htt-mgt-community-22.bin.lede.014
/home/greearb/candela_html/downloads
9887
b3c738328427e124701a5735d65cde0f60e4172ae5bc23b00e5b16df7995dbd4  firmware-2-ct-full-community-22.bin.lede.014
4432ccee23133bbaa4a5552e50a1e7e889b257362603e05530e751b67c29b7b5  firmware-2-ct-full-htt-mgt-community-22.bin.lede.014
/home/greearb/candela_html/downloads
9980
9a908f743604a468b651a5f73c49e6b0ba11a05c677b9726fbf041b849d88b25  firmware-5-ct-full-community-12.bin-lede.014
800dd0816702aaca75f3eb5436c2ea724a6c24833838cd54399b9286b4d4fbe8  firmware-5-ct-full-htt-mgt-community-12.bin-lede.014
/home/greearb/candela_html/downloads
9984
a8b12dba478e8c9d4a215f82324382c7554a900e83c31775f8511af84e59fef7  firmware-5-ct-full-community-12.bin-lede.014
d185651b5d3d1f0082720bc6c2bbe43b2a00cdb6333403fac9336a720b1d93ae  firmware-5-ct-full-htt-mgt-community-12.bin-lede.014
/home/greearb/candela_html/downloads
4019
4c2e48835219f420b18dc58e31d1387dae0da70d8170c3fc5e7bce39c06cf355  firmware-5-ct-full-community-12.bin-lede.014
743da4d537d094a7839bd8e1f792e4cb8b517101f66777c84fd84585f0b85e64  firmware-5-ct-full-htt-mgt-community-12.bin-lede.014
/home/greearb/candela_html/downloads
9888
5809c8a6b3bd81cbc829b5e90af3c0a3300488fe194524a90e260448158016b6  firmware-5-ct-full-community-12.bin-lede.014
a284943c203ff66ec2e865f20ae2d2aa049b450801d7205b53c9163862228f15  firmware-5-ct-full-htt-mgt-community-12.bin-lede.014
/home/greearb/candela_html/downloads


Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

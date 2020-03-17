Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A3D188B96
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Mar 2020 18:06:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZrIRJ/HyxEVJgniyj6SpFQkPDEdWwrtG73thAqRjIag=; b=WSTYutmTnHrkyy
	Nvjs8kDGXe9LOjPStnR03l9bU5SrnpmmQzZmOVgb6oKBOZDsYns0BheGvgXmGY+2pucduuRbJ+lwt
	wtXY+RTfuwPBuMs2xiOg9c9d1yxGhd6vMApSs9fqB3FlATzdZ1s9zh/Q5cJ/9A8hHdIGjiu7PW+EB
	su7SkWdnbB6tDPx58QrC0NTU7UaXj9MrTbGOQfBRmdjYVeS8u9YEGbiRNDkbfGdGrWr5lcg3I/l+E
	akC5fnDu6B5730Pv6SSU1nFrsgFs4NUYyOSVFtoJzEFx8iZKDdfnQYLBvBzsiH4sCW6OQ5qLi8qKJ
	WXKL2UAC5ZE9++hpHRcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFfa-0000jf-5m; Tue, 17 Mar 2020 17:06:22 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFfP-0000iq-5v
 for openwrt-devel@lists.openwrt.org; Tue, 17 Mar 2020 17:06:12 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id D175B13C346
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Mar 2020 10:06:10 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com D175B13C346
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1584464770;
 bh=SzTDElNwA/Z2MdlStAa8DzAUclW7hqwpt5lF+UvB8TM=;
 h=To:From:Subject:Date:From;
 b=M3iUcm0kNUkLJ+lofP49TUDvpfOGalOFq2W4pq1KzGYemkwuZZg1Dp3EybIneydTq
 DaQi1mZGOIjW+fuog685BQRY5ii7r084Tq60e2RowR/qHgp31Usnl99dVSGg3+ze0+
 rQfkAkciZWuLm7vWgKchpETFVTWxKosrzmDFhHG4=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <1a791f2c-2174-6653-ccac-4d59b7ad4472@candelatech.com>
Date: Tue, 17 Mar 2020 10:06:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_100611_246012_69D0D2FE 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] New ath10k-ct firmware available
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

Wave-1 changes, some debugging code for a crash someone reported, plus:

  *  February 28, 2020:  Fix custom-tx path when sending in 0x0 for rate-code.  Have tries == 0 mean
                          one try but NO-ACK (similar to how wave-2 does it).

wave-2:

   * Fixed some long-ago regressions related to powersave and/or multicast.  Maybe fix some
     additional multicast and/or tx-scheduling bugs.

If someone can test and add this into OpenWRT I'd appreciate it.


[greearb@ww2 downloads]$ ~/bin/fw_lede.bash
988x
76a371af99aedae45c4ab41f2a012e74efbbe57cba79cc3c8c66cb9f25974a7e  firmware-2-ct-full-community-22.bin.lede.016
bbe20d981283bef454ccb80c33f40ef7ff60e33b1445ec8d740a34547bd3148c  firmware-2-ct-full-htt-mgt-community-22.bin.lede.016
/home/greearb/candela_html/downloads
9887
beb795edd55698bfc2f32bdf9cda95bc1224eed9661f9cb61adeb64e0ec6b919  firmware-2-ct-full-community-22.bin.lede.016
4fcc630358b01675211556c7d7f3ff2bf9e6a58e06d56c3a633404558a44ece5  firmware-2-ct-full-htt-mgt-community-22.bin.lede.016
/home/greearb/candela_html/downloads
9980
289ea845d4bbae6f36b3af2a13a5eaa07097f52d10f7b7306cfc9e2dd394f889  firmware-5-ct-full-community-12.bin-lede.016
adedcd3d379a910bc3a5257d75f8970e11319f4cd9c1b34440d35821602a8b9c  firmware-5-ct-full-htt-mgt-community-12.bin-lede.016
/home/greearb/candela_html/downloads
9984
8175be5b3946bddc042be018ff7713e67b41b59374ef4cdd183185b59274c91a  firmware-5-ct-full-community-12.bin-lede.016
eb8b894cfe0d1aaa87f130bb7fd1815ef07b951c14df8a2ceaeb780df8f640e0  firmware-5-ct-full-htt-mgt-community-12.bin-lede.016
/home/greearb/candela_html/downloads
4019
29e9f662c4cd287213877abfbb90fbabb5e32dd3710d3ade82aa94a0921972ae  firmware-5-ct-full-community-12.bin-lede.016
559c911f23856b1d3d864ce714d1bef7262bf6638e93e057ecf8d5dba48ca1e6  firmware-5-ct-full-htt-mgt-community-12.bin-lede.016
/home/greearb/candela_html/downloads
9888
b295880a8b08ec2680d85daaf5f20232a0e73d9cc579bf3efd7ffae24ea340d7  firmware-5-ct-full-community-12.bin-lede.016
26fe7c00df10e93373a0f9f105e85d02bb8b1cdd629183ce22a5147138336aec  firmware-5-ct-full-htt-mgt-community-12.bin-lede.016
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

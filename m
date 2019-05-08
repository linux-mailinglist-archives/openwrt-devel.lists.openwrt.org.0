Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 524C5181AB
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 May 2019 23:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gttQGvNP3H00l9JQ7c7NNAM8Ei04CPEP+zer3IzI+DI=; b=fqOVnDvUxbclAo
	qGXgnRxyBZ58ZCx1gKQTQE6R8fCpQkP2g9GK16fhSp/pu38L4LzFE5hJkphZTe90MhQg6hAomweNX
	vy9AH6n59E62nwcAc4vb+epKCBWReFaOQ1JUb6jzgkg3qN14SxrT5E5Z0rxNMHTQMdXYeSC5t4Eai
	Scs3R9o/8beaQxOtGrXXzB7S6TrOuzGWlcu44m2zKfINmkEjWp8SpRBdLsfE1ZiDI/K6274irR5BU
	r9YOa9YWqu2ttt4VtQFm9zxbtZFT94he8eiE56KOBwfFrL+mS9cllevo46qQ4QTaeexFYrwV4t4GW
	a7PNlqwJ3CtjVsMX3INw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOUHd-0006yt-8E; Wed, 08 May 2019 21:39:25 +0000
Received: from [208.74.158.174] (helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOUHV-0006yA-Hw
 for openwrt-devel@lists.openwrt.org; Wed, 08 May 2019 21:39:19 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 9933A13C283
 for <openwrt-devel@lists.openwrt.org>; Wed,  8 May 2019 14:39:15 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 9933A13C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1557351555;
 bh=2oXogfEIp2/QBYWezpVwwnzN3H1QfZLBXMPMTAqWsTg=;
 h=To:From:Subject:Date:From;
 b=aS6Bu1cYePxP+3n3LMAKLpJf10jnf2WQsyz9ZNPYJT6TLfh7Jj0NbVk4GjzyjNmCd
 Gmwr6aeSlLPeGNKVygRSjMUAFszexFNUm757Aqc9Fpq7rbxUGlch69eiM4Q/E7U/F2
 GEflbZY5BKGideo1WuEEmVpb3DQKqPGrJMmvm60Y=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <01baedc8-d056-86d9-7edd-ad2f2f2a208b@candelatech.com>
Date: Wed, 8 May 2019 14:39:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_143917_687912_A597D779 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: [OpenWrt-Devel] New ath10k-ct firmware and driver available
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Here are recent release notes:

wave-1:

   *  April 2, 2019:  Support some get/set API for eeprom rate power tables.  Mostly
                      backported from 10.2

   *  April 2, 2019:  Support adaptive-CCA, backported from 10.2

   *  April 3, 2019:  Support adding eeprom configAddr pairs via the set-special API.
                      These configAddrs can be used to change the default register settings
                      for up to 12 registers.

   *  May 3, 2019:  Fix tx-power settings for 2x2, 3x3 rates.  Original logic I put in back in
                    2016 set 2x2 and 3x3 lower than the needed to be when using most NICs (very
                    high powered NICs would not have been affected I think, not sure any of those
                    exist though.)  This improves throughput for 2x2 and 3x3 devices,
                    especially when the signal is weaker.

wave-2:

   *  April 8, 2019:   When setting keys, if high bit of high value of  key_rsc_counter is set to 0x1,
                       then the lower 48 bits will be used as the PN value.  By default, PN is set to
                       1 each time the key is set.

   *  April 8, 2019:   Pack PN into un-used 'excretries' aka 'num_pkt_loss_excess_retry' high
                       16 bits.  This lets us report peer PN, but *only* if driver has previously
                       set a PN when setting key (or set-special cmd is used to enable PN reporting).
                       This is done so that we know the driver is recent
                       enough to deal with the PN stat reporting.

   *  April 16, 2019:  Support specifying tx rate on a per-beacon packet.
                       See ath10k_wmi_op_gen_beacon_dma and ath10k_convert_hw_rate_to_rate_info
                       for API details.  Driver needs additional work to actually enable this
                       feature currently.

   *  April 30, 2019   Compile out tx-prefetch caching logic.  It is full of tricky bugs that cause
                       tx hangs.  I fixed at least one, but more remain and I have wasted too much
                       time on this already.

   *  May 8, 2019  Start rate-ctrl at mcs-3 instead of mcs-5.  This significantly helps DHCP happen
                   quickly, probably because the initial rate being too high would take a while to
                   ramp down, especially since there are few packets sent by the time DHCP needs to
                   start.  This bug was triggered by me decreasing retries of 0x1e (upstream default)
                   to 0x4.  But, I think it is better to start with lower initial MCS instead
                   of always having a very high retry count.



988x
c2407cbdaaf143c9796e654aed026f0aa70fc93a82dd1244c62e95ede894e829  firmware-2-ct-full-community-22.bin.lede.008
789c4d1c8ac5edeb43d507157944102b564cd6970c365a14b50cab08ffa4e3b5  firmware-2-ct-full-htt-mgt-community-22.bin.lede.008
/home/greearb/candela_html/downloads
9887
07692a63ab9d11a65c17cc896aff89ea33b7af4e0e1e51ae100651291afe3a4d  firmware-2-ct-full-community-22.bin.lede.008
ef336462d4a44ab9a0d89e83064124e647a9fb4a8af8be9df5724378611d2e82  firmware-2-ct-full-htt-mgt-community-22.bin.lede.008
/home/greearb/candela_html/downloads
9980
3357d7ba739512619ccd14043338cfe8e148d5d8e99343e3ccf7a2ff0d07d05f  firmware-5-ct-full-community-12.bin-lede.008
ce81e1b9b80b30263e9d5010e38fac3f005214fd955dc2cff95e7fe633796212  firmware-5-ct-full-htt-mgt-community-12.bin-lede.008
/home/greearb/candela_html/downloads
9984
e2794ce577ff7942dc5f767a77fa52167f323bc8f50f04570fc5efe92ed761cf  firmware-5-ct-full-community-12.bin-lede.008
1f90555963c2e52ac8fc5581b2a0f9c658e3f5205844898bdc48c78d009bb6eb  firmware-5-ct-full-htt-mgt-community-12.bin-lede.008
/home/greearb/candela_html/downloads
4019
4e73cf8e24e83df87d6dce2038e350b3f67753ccca37a8c0d1b861818991e6aa  firmware-5-ct-full-community-12.bin-lede.008
8f6434856d6f0207bc3f519cf50d2bf45df1bfcbc69b864ed02fcb5cd5ef6f4b  firmware-5-ct-full-htt-mgt-community-12.bin-lede.008
/home/greearb/candela_html/downloads
9888
6b627746f88c1bfecb872e72c61d6097192e389592e391630d2661b44f13b10d  firmware-5-ct-full-community-12.bin-lede.008
4ef46b2bdd3ddc894f79da2dbf90ee04cb58781f3eb193840bd5fdb8624b447b  firmware-5-ct-full-htt-mgt-community-12.bin-lede.008
/home/greearb/candela_html/downloads


ath10k-ct HEAD:

commit f98b6dc4d27ea2d79a1577285d1d5cb0641b3eb4 (HEAD -> master, origin/master)
Author: Ben Greear <greearb@candelatech.com>
Date:   Wed May 8 13:46:51 2019 -0700

     ath10k-ct:  Fix printing PN in peer stats.

     Previous logic was incorrect.  Also add set-special API to enable
     returning PN.


Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

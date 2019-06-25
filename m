Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F86550DD
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 15:54:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OA530QH9e3Hq7RaV/8It7U5apKlafEAwZqvHqxryYhI=; b=IpNzTxD20q4tt+TNij6itiiEv
	W7/F2g3nt6b8PQbT3ksg9ZIeyrN0RUJthVmAiZYETrVGZGt/78dMgCW52NpQ/Bv7V9nELII3GKsKJ
	Nwk84V+sJ+9Y5Kd6IBWN67GUjHarDfiyLOHe4PRzw6rgA2YgRyxnf7ksb2wEPp2s4FN4HgNBpI2iz
	/YQFf5+/AKotUmqWOhFaocMHxDekGzGhBwIg+RavGpdg4enY2r1qSI4ixcogcbYHUCln0l84Leh5z
	EZ1vRPLqCdrz1LB0RXVUH071kWlmrmKperGSk1Eqy+o70gszcSBrvZbvmnkpoFeF1pQcnAe+XguIf
	qRv7rvarQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfluC-0002ui-TR; Tue, 25 Jun 2019 13:54:40 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hflu5-0002u2-1M
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 13:54:34 +0000
Received: from [192.168.1.47] (unknown [50.34.200.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 89C66137560;
 Tue, 25 Jun 2019 06:54:29 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 89C66137560
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1561470869;
 bh=a/t12z+4krLGp39Wryviv0m6mTtWMUGIvbUrP/mM7e4=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=ot13TtuXyRrZu8rpmVmnBp48m4b0UVZQ0Hul07+VeFcSzZEWPfMGm+FMnTxo8ILXK
 RkbYHHvk7p9p9h0ZqT7Bs+28JZ/HXDsy9A06v0PCAL2wgE6XLHfAF0FniCaRf5LTiD
 ykTTjtwZ+bQI6PcDhGQIfgUErCRlCbZ2Wh5OGuN0=
To: Koen Vandeputte <koen.vandeputte@ncentric.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <abe6feb7-80a9-4587-db0b-7f3a37a792d8@ncentric.com>
 <7a68db11-1026-e576-2c26-425ea85ef609@candelatech.com>
 <93bc6089-e313-f51f-06e9-4c0b8f36f7e7@ncentric.com>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <3d95432a-db21-d4ef-24c4-fc3659fee0a1@candelatech.com>
Date: Tue, 25 Jun 2019 06:54:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <93bc6089-e313-f51f-06e9-4c0b8f36f7e7@ncentric.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_065433_161565_89B6F79D 
X-CRM114-Status: GOOD (  24.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ath10k-ct 4.19 and IBSS
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



On 06/25/2019 02:53 AM, Koen Vandeputte wrote:
>
> On 24.06.19 22:04, Ben Greear wrote:
>> On 6/24/19 8:32 AM, Koen Vandeputte wrote:
>>> Hi Ben,
>>> Hi All,
>>>
>>> So I'm going to give this another try ..
>>> As the IBSS functionality is heavily advertised as a delta to mainline, it would be very nice to get it working also :)
>>>
>>> Testing the latest ath10k-ct driver and firmware seems to be a step back compared to roughly a month ago.
>>>
>>> I'm currently seeing the firmware crashing, which was not the case before:
>>>
>>>
>>> ath10k-ct + htt-fw:
>>>
>>> https://pastebin.com/raw/7Sy9yx6s
>>
>> Looks like firmware ran out of some WMI event buffers and crashed instead of handling
>> it more gracefully.
>>
>> Please try the attached (untested) firmware and see if it behaves better.
>>
> Hi Ben,
>
> 1 step forward here.
>
> I'm not seeing crashes anymore using the test-firmware.
>
> https://pastebin.com/raw/4ZeXu7iw
>
>
> I've linked up 2 IBSS devices (wave 1, VHT80)
>
> OLSR traffic (UDP) works and packets here are nicely going back & forth.
>
> Simply pinging (ICMP) between the 2 devices does not work.
>
> When sending 100 pings, (64 byte large)  sometimes 1 gets through .. but with a latency of > 500ms
>
>
> I think if the splat and the beacon spam below could be fixed .. this would be a major step forward:
>
> [   30.328423] ------------[ cut here ]------------
> [   30.333251] WARNING: CPU: 0 PID: 1578 at /mnt/ramdisk/koen/firmware/builds/generic_rb922/build_dir/target-mips_24kc_musl/linux-ar71xx_mikrotik/ath10k-ct-2019-05-08-f98b6dc4/ath10k-4.19/mac.c:6563 ath10k_mac_vif_beacon_free+0xc7c/0x115c [ath10k_core]
> [   30.355636] Modules linked in: mbt ath9k ath9k_common qcserial pppoe ppp_async option cdc_mbim ath9k_hw ath10k_pci ath10k_core ath usb_wwan sierra_net sierra rndis_host qmi_wwan pppox ppp_generic mac80211 iptable_nat iptable_mangle iptable_filter ipt_REJECT ipt_MASQUERADE ip_tables huawei_cdc_ncm ftdi_sio cfg80211 cdc_subset cdc_ncm cdc_ether xt_time xt_tcpudp xt_state xt_nat xt_multiport xt_mark xt_mac xt_limt
> [   30.427331]  nls_utf8 nls_iso8859_1 nls_cp437 authenc ehci_platform sd_mod scsi_mod ehci_hcd gpio_button_hotplug ext4 mbcache jbd2 usbcore nls_base usb_common ptp pps_core mii aead crypto_null cryptomgr crc32c_generic crypto_hash
> [   30.448017] CPU: 0 PID: 1578 Comm: wpa_supplicant Not tainted 4.14.129 #0

Please look in your code and let me know the source around the line in mac.c (6563) that is splatting.

Also, you might grab the latest ath10k-ct repo, it has a tweak that might fix the SWBA overrun
messages.

https://github.com/greearb/ath10k-ct

Thanks,
Ben

> [   30.454906] Stack : 80500000 804c0870 00000000 00000000 80495404 86fc5a24 8606485c 804e7307
> [   30.463402]         804915c8 0000062a 805437d0 000019a3 87d1ed28 00000001 86fc59d8 ebb059e8
> [   30.471880]         00000000 00000000 80540000 000068e8 00000000 00000000 00000007 00000000
> [   30.480373]         00000123 f55b2536 00000122 00000000 80000000 00000000 87152504 8710ccc4
> [   30.488863]         00000009 000019a3 87d1ed28 876fd000 00000000 802a3964 00000000 80540000
> [   30.497355]         ...
> [   30.499839] Call Trace:
> [   30.502320] [<8006c7ac>] show_stack+0x58/0x100
> [   30.506838] [<80086de0>] __warn+0xe4/0x118
> [   30.510994] [<80086ea4>] warn_slowpath_null+0x1c/0x28
> [   30.516158] [<8710ccc4>] ath10k_mac_vif_beacon_free+0xc7c/0x115c [ath10k_core]
> [   30.523505] ---[ end trace 83fd3571e310245a ]---
> [   33.172852] wlan0: Trigger new scan to find an IBSS to join
> [   33.237416] wlan0: Trigger new scan to find an IBSS to join
> [   33.243317] wlan0: Trigger new scan to find an IBSS to join
> [   33.249205] wlan0: Trigger new scan to find an IBSS to join
> [   33.305210] wlan0: Trigger new scan to find an IBSS to join
> [   34.049614] wlan0: Trigger new scan to find an IBSS to join
> [   34.115369] wlan0: Trigger new scan to find an IBSS to join
> [   34.189823] wlan0: Selected IBSS BSSID fa:77:78:55:af:7b based on configured SSID
> [   34.280540] ath10k_pci 0000:01:00.0: SWBA overrun on vdev 0, skipped old beacon
> [   34.288002] ath10k_pci 0000:01:00.0: SWBA overrun on vdev 0, skipped old beacon
> [   34.295924] ath10k_pci 0000:01:00.0: SWBA overrun on vdev 0, skipped old beacon
> [   34.303406] ath10k_pci 0000:01:00.0: SWBA overrun on vdev 0, skipped old beacon
> [   34.310839] ath10k_pci 0000:01:00.0: SWBA overrun on vdev 0, skipped old beacon
> [   34.318280] ath10k_pci 0000:01:00.0: SWBA overrun on vdev 0, skipped old beacon
> [   34.325714] ath10k_pci 0000:01:00.0: SWBA overrun on vdev 0, skipped old beacon
> [   34.333148] ath10k_pci 0000:01:00.0: SWBA overrun on vdev 0, skipped old beacon
> [   34.340567] ath10k_pci 0000:01:00.0: SWBA overrun on vdev 0, skipped old beacon
> [   34.348003] ath10k_pci 0000:01:00.0: SWBA overrun on vdev 0, skipped old beacon
> ...
> ...
>
> Thanks for your swift reply so far and the test-firmware.
>
> Regards,
>
> Koen
>
>>
>>> ath10k-ct + non-htt-fw:
>>>
>>> https://pastebin.com/raw/bqVqQmXq
>>>
>>>
>>> Mixing upstream ath10k driver with the non-htt CT fw does not work.
>>>
>>> Errors are seen here regarding missing IE's and stuff.
>>> Also IBSS functionality is not shown when running 'iw list'
>>
>> IBSS requires ct driver plus ct firmware, at least.
>
> Ah, ok. :-)
>
> Thought it was possible based on this one :
>
> https://www.spinics.net/lists/linux-wireless/msg137827.html
>
>
>>
>> I'd expect the regular driver to work in normal STA/AP mode, though it would likely
>> warn about IEs.  Should be warning only though.
>>
>> Thanks,
>> Ben
>>
>>>
>>>
>>> Kind Regards,
>>>
>>> Koen
>>>
>>
>>
>

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

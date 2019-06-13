Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9723943F09
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 17:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/HqkuJpkczSd3fPuq6ZbMefgjwMukSIDCF6UxpYObBo=; b=RpeWsUBYJs6jcF
	YIlrUV0PBQuIRjvFKnAaBPtxpT/2NYrKuunWAUxZ0w0VraIbwQpKOlbEHOvElQ9URZ3IzXhjq9hYo
	Z/T1olX6LnyRj+tX2//gacnNa7Ea1b1imHpd0AmiVGXBSVNqxvXNnRu/b3uf2bD5vJ63+wfnsM2Ig
	RHlFy1yfsu8/H/AuRDMa3s0P/4tnf3rz5MLYo50+dTnUFDTPlXRqDkTJQoBQ5EwxfFu4bM4qJsHmt
	CACsxcRNQ25ftLQYIQVS+C+Gq2bWLgbnXiX452E3syiNDCLs/dBI8ZYfKIgufjXcflsUmtLXO4Q/b
	78r4MBZcb7JMIPAPHZfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbS3r-0002zC-BD; Thu, 13 Jun 2019 15:54:47 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbS3i-0002yY-0d
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 15:54:39 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id D295ED92C
 for <openwrt-devel@lists.openwrt.org>; Thu, 13 Jun 2019 08:54:36 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com D295ED92C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1560441276;
 bh=hxeHp3yB/tHcY6O24QVBmLLecRvTw46ru0aynoskJC4=;
 h=From:Subject:To:Date:From;
 b=cb9MOovJ7rRG74y6AI3xcq063vJOAfnjV/V9CCrgMGCdzUQA5aorQC2L+7iqYuwwS
 ShNzAVy9aUWs0eYvruWj6HfO8bFmolNMkXrD9tabLmfusx1pY+9TVgJkypahdPJrnP
 Jt4nbzcwJoRGIxvecW9D0UahvgGcqJhCQUy6kMJQ=
From: Ben Greear <greearb@candelatech.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Organization: Candela Technologies
Message-ID: <740907f4-b38b-2a1b-9b82-2975b2f08c91@candelatech.com>
Date: Thu, 13 Jun 2019 08:54:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_085438_175907_81BE8AD7 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] New ath10k-ct firmware and driver available
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


Here are recent release notes:

wave-1:

   *  May 9, 2019:  Tweak rate-ctrl:  Ramp PER up faster, down slower.  This helps throughput
                    in rate-vs-range test, especially with nss1.

   *  May 20, 2019:  Disable adaptive-CCA.  I am not sure it helps, and it may make it slower
                     to detect noise that should tell the system to stop transmitting.  If someone
                     has means to test this properly, I'd be happy to work with them.

wave-2:

   *  May 15, 2019  Fix problem where rate-ctrl sometimes used rix of 0x0.

   *  May 15, 2019  Allow raw-tx of encrypted frame.  Requires a patch to the driver to use
                    raw mode when skb has WEP flag enabled AND skb is flagged to not be
                    encrypted.  Lightly tested.

   *  May 16, 2019  Fix tx-hang that happened when rate-ctrl chose an OFDM rate for 20Mhz
                    and sent that as AMPDU.  To fix, limit to (V)HT rates if peer is (V)HT.
                    It seems that MCS0 (V)HT20 should have as good of a chance of being
                    detected as CCK or OFDM.

   *  June 6, 2019  Disable TX-BFEE, TX-BFER for IBSS connections.  I suspect this is part of the tx-hang
                    issue seen with IBSS between two 9984 radios.

   *  June 12, 2019  Fix rx-rate reporting in 'fw_stats' logic.  This was at least partly due to regressions
                     I had added earlier when working on some multi-vdev enhancements.

   *  June 12, 2019  Fix case where extd peer-stats were not always populated.  The stats gathering
                     code did not handle error conditions well.


Driver changes include:
* Fixing mfp/pmf for management frames (in htt-mgt mode)
* Sven's txpower related fixes
* raw tx of encrypted frames works (on wave 2, at least)


Here are the new locations and checksums for the firmware images.

988x
d4ba8b386be0eda7e1e0ea1653e40a9776c9a5eeb4e7fef656466da30628b17b  firmware-2-ct-full-community-22.bin.lede.009
12155e9599194c8274d6a96c603f00723b5f036fe8e4c1518ee64cac529a9b34  firmware-2-ct-full-htt-mgt-community-22.bin.lede.009
/home/greearb/candela_html/downloads
9887
9e1a2b30fc9f680ab1a42335b0091953fa600573a7376b2d67f1b4032f518644  firmware-2-ct-full-community-22.bin.lede.009
a19ea4bad001c1781d064114322502d5a612fb917e02480f971412e090d7f452  firmware-2-ct-full-htt-mgt-community-22.bin.lede.009
/home/greearb/candela_html/downloads
9980
5ad3315297ce3a9cce8706b79eae7783d269b76a56063685100c7e8cd3ff47e5  firmware-5-ct-full-community-12.bin-lede.009
52c5eebde1ef130273353630e7e91e4dfb638a7e9a3a74aaef44cdccb5ce5412  firmware-5-ct-full-htt-mgt-community-12.bin-lede.009
/home/greearb/candela_html/downloads
9984
c54a53821d9b4fb36e69adb53277ad16e126afa692e5e488121c53cc39c7c4ba  firmware-5-ct-full-community-12.bin-lede.009
7613d3387dc2d83759759bb14e25312c33f3984a11cd59e66ab2b0470f32abb6  firmware-5-ct-full-htt-mgt-community-12.bin-lede.009
/home/greearb/candela_html/downloads
4019
cec771a2f5f911a77b1f254a113de67cc68edc5d02dc06c7fddbccb448340b55  firmware-5-ct-full-community-12.bin-lede.009
aff872b4e6f4f7eb000518d3ff4056565a076b81a9dd3ce8f382ceeab7f069c3  firmware-5-ct-full-htt-mgt-community-12.bin-lede.009
/home/greearb/candela_html/downloads
9888
c307c9cd44f650be9504b44786245381b0b88a4348fce85c76a6993fdc8e9e13  firmware-5-ct-full-community-12.bin-lede.009
1a419f99d8283042434ed2de86e8aba85b9941ff3c75ab0805d71f4c108e272f  firmware-5-ct-full-htt-mgt-community-12.bin-lede.009
/home/greearb/candela_html/downloads


ath10k-ct HEAD:
commit a045b1ce61fe0908468c019e17a3848f7842c927 (HEAD -> master, origin/master)
Author: Ben Greear <greearb@candelatech.com>
Date:   Thu Jun 13 08:45:12 2019 -0700

     ath10k:  Improve PMF/MPF mgt frame check

     And add a driver for 5.2 (beta, not even tested yet) kernel.


Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

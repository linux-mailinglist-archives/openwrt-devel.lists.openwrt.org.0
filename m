Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFC3ADFBB
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Sep 2019 21:55:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JE6JmdsO0Ns/hwwFvovsXVWeEf7sCgvUkNGUybexIFY=; b=TjtdbxYd1gnWJ2
	/aytrlmmfVUf2ldokoNTjbCd8ohqfEOAJD1OWab2bikRBsuV2CEFRQ9B5lGNUD+RR3CKitEINBuXM
	NH64o2Lp651mnijnm7ujuYzA16Ue1oe+HFvtDDCPkQlYQL7P4ow+Z2ku8xxiT9JnplBOWcs2JC1t8
	LB/FDQo+CPEgSRO22S4zL+fLrapcf63V7e8fqYAyKVjc4SjeZMMYieaOG3t8LHt+6+gaEQx6CZlkU
	PoPKk3ADI9lsiWFWQpcWV/PTZtjeEVrUvK7xG6cbZ2lrZMw2rRhJQM3cxydypcvRA/lNkPJ1qS3sK
	v0u8MfeSs//OZNwdCTjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7PlC-0007sA-IH; Mon, 09 Sep 2019 19:55:38 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Pl6-0007rs-5K
 for openwrt-devel@lists.openwrt.org; Mon, 09 Sep 2019 19:55:33 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id DC273104B
 for <openwrt-devel@lists.openwrt.org>; Mon,  9 Sep 2019 12:55:30 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com DC273104B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1568058930;
 bh=4ysanA2yI2vcZNYZ/eQLVPf67iyFR4XIYwM9ku9CH7Y=;
 h=To:From:Subject:Date:From;
 b=sqqCYa4Sc91297wPNY2ldI/Xcu8Zzc5qlRRTCRupt6cX9ROWadUoqskQWztij/jqo
 c5efusnLoYboWO61C4BHXguk/StiPfzuyKNh9ULHb2E+uMikjbQrj5Bmwp/x6YpmvG
 vbvXOfPib4dahEIQLGTo0Wjx/qPOAgi1ZwAiFdtY=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <f5bcb39a-bcc3-58c7-0b9a-622b0c386fff@candelatech.com>
Date: Mon, 9 Sep 2019 12:55:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_125532_254687_E54A0F52 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] New ath10k-ct firmware available.
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

This enables a feature flag in the wave-2 firmware wmi-services indicating it can send
software-encrypted raw frames.  This should in turn allow the AP-VLAN feature to work.

For those that know how to use AP-VLANs, please try this wave-2 FW and the latest ath10k-ct
driver(commit:  5e8cd86f90dac966d12df6ece84ac41458d0e95f) and let me know if it works as expected
or not.

988x
5872fe046d90d844a6d3e232e47a6865bac551d7043b2874147c077e356b35d8  firmware-2-ct-full-community-22.bin.lede.011
4568c3895a101ad28363491ea935f56a48bddea4c1be1889a6ba8d151902062a  firmware-2-ct-full-htt-mgt-community-22.bin.lede.011
/home/greearb/candela_html/downloads
9887
2c64ab22159d04cd345b8caffdd76ac95c0409729121a7a4095c5192f46013b2  firmware-2-ct-full-community-22.bin.lede.011
c806b8894faf3bbb11004f77196c6d711b9a6c187b1512d84e05fa98a5aba2ab  firmware-2-ct-full-htt-mgt-community-22.bin.lede.011
/home/greearb/candela_html/downloads
9980
4ed106dbe8431945afc6a995765f245f574713095b567df35f1397bba5f6fa2e  firmware-5-ct-full-community-12.bin-lede.011
7434c84c501e00a24cbca338569ba150a9ec137ee2b9fa52d13484794300924c  firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
/home/greearb/candela_html/downloads
9984
9af817e65dc9f195517f05ad25f0eca693632ea03b55739a2e0f0fc82e810405  firmware-5-ct-full-community-12.bin-lede.011
11e116631555550185e712f70bd29ac41b495bf0ecbfc3334cada8a8c10a42f0  firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
/home/greearb/candela_html/downloads
4019
21a6b5b69e3c1591cb9fe6077971ddadb003cac698f2962d4d8d73bc04038bbf  firmware-5-ct-full-community-12.bin-lede.011
87111717ec5279125d397bea45386707684ee707a91f6c58298818fd02bf567f  firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
/home/greearb/candela_html/downloads
9888
3c9f2e914d2a5eb3a413872239045dfcca105483ba83dd9b293e6b8855fda883  firmware-5-ct-full-community-12.bin-lede.011
dcb1bd826e5e1ef266fd7ee04410b44d4474d59f6eca0cc634e6432aaf326426  firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
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

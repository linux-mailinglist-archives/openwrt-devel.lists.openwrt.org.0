Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB541B7E62
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Apr 2020 20:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0/PXKW/Kz+0VGr5wlW/uXqaZOk2xAPwh2IMyvGzaV4E=; b=XgGFgtX3pLK9TX
	eCVZNyvjeTFwAWBCzZKqD9Xt5xORlHoSb0s8XLxhJiuzMj/Fldpw0C7odBXvlg2QBVH7h1UNsFbUb
	GwrTCTe7RRClOAeiANWq5O9rnaYiu8MeH4M5ePsLs/eZspZ8Zb+eB7FBdi1q9h8TMBsxqn2VS0Kv1
	igoP/6dhh2UxoHxzrwM7KBi8IaeypR6DmM172mD6+4k+/+MdHU+RjADEtv6MZdEtEpr5vuZjd02sE
	sJL5cIsg/4ZCcYJxk72qrPUMM9x6AcphCQsbnybSUjkIMSTddgm5SH+/7xLdTuzNMxtIMye0K9WRm
	gOxMDnbbb57ZV8uxL/1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS3U7-0006c4-Sd; Fri, 24 Apr 2020 18:55:35 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS3N1-0004Cr-Uu
 for openwrt-devel@lists.openwrt.org; Fri, 24 Apr 2020 18:48:22 +0000
Received: from [192.168.254.4] (unknown [50.34.219.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 758BE13C2B0
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 Apr 2020 11:48:14 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 758BE13C2B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1587754094;
 bh=F8PjnsQBN25mVbRVP7Ek0DuRFQS/O8IDUDJvo3SKIUI=;
 h=To:From:Subject:Date:From;
 b=ngLcs2Ck4G9oqITddVeNTppbVPeRZqBOjPGvUMztQg2MyTulLI03V6iJcFBLm8jHW
 +/AJ9uokS2Ws9/+gkK/meAWE4jPCzJA4K/wGYD2gVtUe04fucivfvujYir2RhjOnLS
 EA+nBWzAwDQPp+6GvdW9ZG4bKK+rsNERIjfI86dA=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <c66aa83d-54a8-711e-2899-7c0335db49aa@candelatech.com>
Date: Fri, 24 Apr 2020 11:48:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_114816_081451_817E8FBD 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

For the wave-2, there is now a new variant:  htt-mgt-community (vs the old full-htt-mgt-community)
the non-full one (hence forth 'diet') compiles out a lot of firmware features that ath10k does not use (and/or which I
consider unimportant).  This saves a lot of resources and lets one configure more stations/vdevs/etc
using fwcfg.

I also tuned the 9886/8 and 4019 firmware to make better use of memory.  With proper fwcfg,
the 9888 supports 200 stations and the 4019 supports 162.  I have not yet fully tested this
of course, but will be doing so over the coming days.  I did previously test 228 total stations
on a Linksys MR8300 (aka EA8300) and it did fine in a torture test.

My suggestion is to use the diet compile in place of the 'full-htt-mgt' one, but another option is
to give the user another option to pick they file they want in the openwrt makefile.

I am hoping someone will be able to do the openwrt patch, here is the raw info below.


988x
8b4c99253aa309d35f2e060c190091b8db1b84dbda06a6a15c83ac0f9a938126  firmware-2-ct-full-community-22.bin.lede.018
a7168916d6aa5e4d7858f8b620c0c980c76d03f390929db6f4077685ce2051e7  firmware-2-ct-full-htt-mgt-community-22.bin.lede.018
/home/greearb/candela_html/downloads
9887
459692deb186a63ab8eeddb7ad5d54779266e68ca686e7c46062554db6dca12b  firmware-2-ct-full-community-22.bin.lede.018
fd126a457d0927d0c8ea10d66ef5b67d5e1e0741f8692bb3016bb602d0af3098  firmware-2-ct-full-htt-mgt-community-22.bin.lede.018
/home/greearb/candela_html/downloads
9980
cf26eb37524de54af51fe9b2efffc85e0e70ab849e8607ef63ce5a8ecffeaa42  firmware-5-ct-full-community-12.bin-lede.018
e9737538d7379e13ad4e4c8c519a63659b5e34a35455ed9ac4399ae8097caabc  firmware-5-ct-full-htt-mgt-community-12.bin-lede.018
4d4f74afca487d452f244cd48304cf9710d8941eb97a6346a949ed6b6877d657  firmware-5-ct-htt-mgt-community-12.bin-lede.018
/home/greearb/candela_html/downloads
9984
a6b3d66efe640a430a837f238e91eddcd423eed6b887d3ae19716d87a71fd0b1  firmware-5-ct-full-community-12.bin-lede.018
96060227e372b3b210badccbe6b0bd75d9a35335a7a0f2966964e9e89f66b00f  firmware-5-ct-full-htt-mgt-community-12.bin-lede.018
ee593fb5724d75c372de02ac7894e1630ee9f909fcb2e2bbf17aadef67cb9d43  firmware-5-ct-htt-mgt-community-12.bin-lede.018
/home/greearb/candela_html/downloads
4019
46d8f8f1e780813299dc8780eedcfceda103c6b4d8908589ad1adbef921714c0  firmware-5-ct-full-community-12.bin-lede.018
d884624fc34f4b5de7a3ec0534627c46cea25fca45657f3a2f6bb85f6c5893d7  firmware-5-ct-full-htt-mgt-community-12.bin-lede.018
51fe06f66365771647d16039cca8b541de3d642c45271977a4cfd433c2c5d45b  firmware-5-ct-htt-mgt-community-12.bin-lede.018
/home/greearb/candela_html/downloads
9888
d01f1429aaf0bfac07eee3547e5821d19136840b2f983e75e76979a5ac19b6f0  firmware-5-ct-full-community-12.bin-lede.018
68c42f8e0dcf77f18d4813ac93174bf06ff5cf5aa4f69befe7f35f9fae1de1e3  firmware-5-ct-full-htt-mgt-community-12.bin-lede.018
6c692141155f5bb74c0117553d5d48ff2aaba73bd4d5e90a5044a5e2ec0faab0  firmware-5-ct-htt-mgt-community-12.bin-lede.018
/home/greearb/candela_html/downloads

Example fwcfg files for 9888 and 4019 using the diet htt mgt builds:

root@OpenWrt:/lib/firmware/ath10k# cat fwcfg-pci-0000\:01\:00.0.txt
# For 9888
vdevs = 8
peers = 202
active_peers = 202
stations = 202
rate_ctrl_objs = 7
regdom = 840
#fwname = firmware-5-htt-mgt-b.bin
fwver = 5
nohwcrypt = 0
ct_sta_mode = 0
tx_desc = 2200
#max_nss = 3
tids = 450
skid_limit = 360
max_amsdus = 3

root@OpenWrt:/lib/firmware/ath10k# cat fwcfg-ahb-a000000.wifi.txt
vdevs = 8
peers = 164
active_peers = 164
stations = 164
rate_ctrl_objs = 7
regdom = 840
#fwname = firmware-5-htt-mgt-b.bin
fwver = 5
nohwcrypt = 0
ct_sta_mode = 0
tx_desc = 2000
#max_nss = 3
tids = 260
skid_limit = 360
max_amsdus = 3

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

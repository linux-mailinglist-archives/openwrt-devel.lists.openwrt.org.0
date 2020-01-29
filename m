Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A387114CE5B
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 17:24:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DnYJv5jhU0QITfy34S2qve0vtmVUWC87sahdEDDDNVc=; b=P+mUtbm536XDyk
	65W/m8UAuNgOVPdKGqraO9V2keSJsM4LgXXXWuhRXxxFzlm9MoNcUIWYun9J8+nScwH3aVN93XEkW
	z9D9N5zB6MZdJ1pUJieuwHo1QgYbwYWFK0i/yonIJOMrHd+WahFUkKArCfuLhMXWYJ3yNbQ/+jIwh
	UpwUD2AERgSooM6sZsZHcJp9lUjMuU3KFRjHJzHBumYtRKcmMvVXARQithk/mJ6lCnWL+0rrVTV9m
	EjOBmW/sTBkIa2Cso0hl2XJ1l2RvYXLiWakHgcPm5H8AfXXNBiDVokaqGk1MteDOXXp6DbxqAXV41
	KvhTmjX0faUCgrHiLemg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwq8p-0008PB-O8; Wed, 29 Jan 2020 16:24:35 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwq8h-0008Ou-D4
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 16:24:28 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id E88F1137585
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Jan 2020 08:24:26 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com E88F1137585
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1580315067;
 bh=OOzTDgLWfIg7QT8rYa0PD87XHP/evIIJPGDnVfQGAJ0=;
 h=To:From:Subject:Date:From;
 b=lLZ7OJ0bkk9xk1ogwB5EJoAm0uozoLpFaaH96E+48ERaiG63hAx66Qy2O7xMHvGhf
 Dp8SxCsmWMqA/V5EKmbEGpvi5TEN08yURlRXUywQdJbykLLzu3Wn6jB/OGUpmn3ybe
 fVyS9cCG7xaUOzMR2VH2ddlAb9hKwxCjssQBxO28=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <0ca9d820-8ae1-045f-4cc1-b8872dd12213@candelatech.com>
Date: Wed, 29 Jan 2020 08:24:26 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_082427_464485_265E20E5 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This supports better per-chain noise floor reporting, which in turn allows for
better RSSI reporting in the driver.

Wave-2 fixes a long-standing rate-ctrl problem when connected to xbox (and probably other devices).

Wave-2 has fix for crash likely related to rekeying.

Wave-1 has some debugging code added where a user reported a crash.

If someone can test and push to upstream OpenWRT I'd appreciate it.

988x
a3a760d0d72707feffa496b6d2266bd9195f09806553b36420b60c0f12b8b87e  firmware-2-ct-full-community-22.bin.lede.015
3114a54103d2b492fa1ef903769721f59953c829020d62502a1ec411ab4146d5  firmware-2-ct-full-htt-mgt-community-22.bin.lede.015
/home/greearb/candela_html/downloads
9887
71e8b76dfd7c786d2f57bb7df207dcd13a91d3b492cfbd28916f084d0d1bb5e7  firmware-2-ct-full-community-22.bin.lede.015
b085e5d2239727b72bc647a76864431b8ac48438e6a33b1d55edc2222468f6ff  firmware-2-ct-full-htt-mgt-community-22.bin.lede.015
/home/greearb/candela_html/downloads
9980
edebe2f6f169cdd05c81a8a78156fb3426a66f415e7946af2ae4b7310fca5fe3  firmware-5-ct-full-community-12.bin-lede.015
1ef67fb07da9082886e4dd554dfc19256e10b500faf9e4b2a5774d0238130bae  firmware-5-ct-full-htt-mgt-community-12.bin-lede.015
/home/greearb/candela_html/downloads
9984
c2f04da3285aad37baef9c37c9905a31927175dd234cd4378fd56c106e5c9379  firmware-5-ct-full-community-12.bin-lede.015
0c9ede1036750d68885e6481fa84f3cb72192b8440b47719344f7327a030f05d  firmware-5-ct-full-htt-mgt-community-12.bin-lede.015
/home/greearb/candela_html/downloads
4019
1acbb7e7a6300091715a3dfe1b248c7833734961de52cc3465c1ed231a4d84f1  firmware-5-ct-full-community-12.bin-lede.015
1065e4d3e55da84ec9e69268a4c5dba55ea33827c48a7c14bb8f0c167eb11b4c  firmware-5-ct-full-htt-mgt-community-12.bin-lede.015
/home/greearb/candela_html/downloads
9888
559ebd16872a8b43443c51bb4b7d021e5b75e65893d333d9393f3f6012f4ac79  firmware-5-ct-full-community-12.bin-lede.015
4feaf5e7c4c1745f499ba8c3125db41675800ebedaea455c418c117805c5b372  firmware-5-ct-full-htt-mgt-community-12.bin-lede.015
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

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DE0193254
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 22:06:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=15ro+EpmrUwCg195OW4+XFaeOVBsn1qXwkdYvrxKuF8=; b=LSL5PYPHQ8ZJKo
	JSDcu+EgzXdgUuupLlUYn5ay+R3ZaWQLd9B3Cd9+F8z2gdDtHHpBl2s0nUZFdZtAT+2lE2tGXaQRk
	bxUNouZ4a8T0uxG+WEtwwzNEye/yBklGYv/gAzuEZR4CCLB2SUDttG/JiukpYOEOqNYzGp8UBO3AL
	kLqqLdG70Qrn1RAqnL3vEMdBJuqmGZUaNTlcrIdErBmzvt1edcjrQXTIiYgRWI/kZFVha30tnRhgo
	HT9nP0Dl+ayfqCAanv5ToZOtwtzZJNafMfNMxVP5Ex5dNwfOy0AQkyb47shuBntjLsW0J/m9b52rN
	inIPOeJ9fSS6c+SE3Gtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHDE3-0003qE-3u; Wed, 25 Mar 2020 21:06:11 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHDDw-0003pN-PW
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 21:06:06 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 3E70713C341
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 14:06:03 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 3E70713C341
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1585170363;
 bh=FEjISlIxpZYfFs+M6C3hErE0E3XgjAp7yLRxKkygbh4=;
 h=To:From:Subject:Date:From;
 b=foBnUtSDPtsL8S9tPBM1OdCtYhFIEV3nd+E5+QExmpAr6ZEM6LzcD0wN5dqzcfhNJ
 aPua8Sx13R/p6iw1qHu3oxE6zHx8S5BInd4Rr7roIB5hzIEVXOsvJCqJua/scvQhnt
 HCeQ/HJLtLoaVDV8+8jzvNB+NQy4dDQMo3wFHuxk=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <50816a6c-8978-ddef-3b43-d973e566aab8@candelatech.com>
Date: Wed, 25 Mar 2020 14:06:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_140604_864972_445D6820 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] ath10k-ct firmware update
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

Wave-1:

   *  March 19, 2020:  Fix problem where power-save was not enabled when going off-channel to scan.
                       The problem was a boolean logic inversion in the chmgr code, a regression I introduced
                       a long time ago.

   *  March 19, 2020:  When scanning only on current working channel, do not bother with disable/enable
                       powersave.  This should make an on-channel scan less obtrusive than it was previously.

   *  March 23, 2020:  Fix channel-mgr use-after-free problem that caused crashes in some cases.  The crash
                       was exacerbated by recent power-save changes.

   *  March 23, 2020:  Fix station-mode power-save related crash:  backported the fix from 10.2 QCA firmware.

   *  March 23, 2020:  Attempt to better clean up power-save objects and state, especially in station mode.


Wave-2:  No changes since last time I posted.

If someone can get these patched into OpenWrt I'd appreciate it.

988x
2f0bf766e400a4c5726e77b128eb8c141ebaa778526fe2c7c5083f3b17659dbf  firmware-2-ct-full-community-22.bin.lede.017
5e4285d5c6eee159a25ca14c6ce26022c32380bd7bafaedfc0c5de1510119007  firmware-2-ct-full-htt-mgt-community-22.bin.lede.017
/home/greearb/candela_html/downloads
9887
4fa30e0e1972ca3b06225a731df0f93a1b73ac67fea5bf54bb55dea3bbc0da6a  firmware-2-ct-full-community-22.bin.lede.017
dc681b6b1e45956e7c2e418ab05eee5c943d13e775209196d9bd931ff6493935  firmware-2-ct-full-htt-mgt-community-22.bin.lede.017
/home/greearb/candela_html/downloads
9980
289ea845d4bbae6f36b3af2a13a5eaa07097f52d10f7b7306cfc9e2dd394f889  firmware-5-ct-full-community-12.bin-lede.017
adedcd3d379a910bc3a5257d75f8970e11319f4cd9c1b34440d35821602a8b9c  firmware-5-ct-full-htt-mgt-community-12.bin-lede.017
/home/greearb/candela_html/downloads
9984
8175be5b3946bddc042be018ff7713e67b41b59374ef4cdd183185b59274c91a  firmware-5-ct-full-community-12.bin-lede.017
eb8b894cfe0d1aaa87f130bb7fd1815ef07b951c14df8a2ceaeb780df8f640e0  firmware-5-ct-full-htt-mgt-community-12.bin-lede.017
/home/greearb/candela_html/downloads
4019
29e9f662c4cd287213877abfbb90fbabb5e32dd3710d3ade82aa94a0921972ae  firmware-5-ct-full-community-12.bin-lede.017
559c911f23856b1d3d864ce714d1bef7262bf6638e93e057ecf8d5dba48ca1e6  firmware-5-ct-full-htt-mgt-community-12.bin-lede.017
/home/greearb/candela_html/downloads
9888
b295880a8b08ec2680d85daaf5f20232a0e73d9cc579bf3efd7ffae24ea340d7  firmware-5-ct-full-community-12.bin-lede.017
26fe7c00df10e93373a0f9f105e85d02bb8b1cdd629183ce22a5147138336aec  firmware-5-ct-full-htt-mgt-community-12.bin-lede.017

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

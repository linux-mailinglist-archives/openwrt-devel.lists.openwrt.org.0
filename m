Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D99646F9
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jul 2019 15:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7lHHZ7ic+NzHaY6GsNygGqajkeJsmogQzkqgm/X64aU=; b=SDfFIKDnMU3HUkoV9CFVTfOsH
	sCN1fcbk+QPWv8PdWntZKeIQpKJAaoPn4S1jsPEs17XDdtBrs6wvsWXcLvDZv/TeIDstjkoBLA6nZ
	7HGWbavT9OcdfxdJiTfFVPecNOu5m5xtAZ8wR/Ymuoj5IbCVETBL40BaxMnHO5LpZiCd0oDCdr36Y
	A42SfgopfuPCFzrJKR6Dw/1j9EMLhZafTF8TagOxCURRJQP8O6+F78K0h21Bg+mV8QJvRj/6fmOJb
	rfJfoyhBFa7Z//nunTSG+Mfi8E7otabZytjxyh0nSs0qrs+izyPlOtAi05EDkCAV2XN4M87ueHiVl
	JXkPWL8RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlCdC-0002WE-Sg; Wed, 10 Jul 2019 13:27:34 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlCcn-0002Vb-AR
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jul 2019 13:27:10 +0000
Received: from [192.168.1.47] (unknown [50.34.200.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id E439E279F0;
 Wed, 10 Jul 2019 06:27:07 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com E439E279F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1562765228;
 bh=0oLD9T4L0zWCbZuqBFVOp3+TBIBaKuTnvAxFJ80W0/0=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=D834uBbnE33RQLmW81O0hY4kUACz/tBwa+XBrbvbhBhOrV4x1v27CvaBAykUj7dA8
 JS4JOhbP3Sg/OQ1h21Bmqe39+A5RkG5ibA99BvOvBukxLb0kWy2yIRJdLxoGdvOvCf
 n5Vbz34eyfvyxGtkM7hWVVR4tge7+4sehOTObfEQ=
To: Matej Kupljen <matej.kupljen@gmail.com>, openwrt-devel@lists.openwrt.org
References: <CAHMF36G6N0iqn_JjsRx4Qywxg+8086dxRLQDccwE6biW_ze=NA@mail.gmail.com>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <a99d24bd-d11b-c731-f5be-57c0e7c96cca@candelatech.com>
Date: Wed, 10 Jul 2019 06:27:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAHMF36G6N0iqn_JjsRx4Qywxg+8086dxRLQDccwE6biW_ze=NA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_062709_421444_BBDCE07D 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Subject: Re: [OpenWrt-Devel] ath10k on ipq4019 crashes and hitting WAN_ON
 macro
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



On 07/09/2019 11:09 PM, Matej Kupljen wrote:
> Hi,
>
> I have a custom image build from OpenWRT 18.06 and also have updated
> ath10k driver and ath10k firmware to the latest master version. The
> device is based on IPQ4019 and the image can be build using "QCA
> AP-DK04.1-C1" target profile (with some modifications).
>
> The device works O.K. and also the wireless is working. However, when
> there are high number of stations connected to this AP, like over 60,
> we are experiencing very unstable wireless connection. Looking at the
> logs we see messages like:
>
> ath10k_ahb a800000.wifi: failed to set beacon mode for vdev 0: -11
> ath10k_ahb a800000.wifi: failed to set dtim period for vdev 0: -11
> nl80211: wpa_driver_nl80211_event_receive->nl_recvmsgs failed: -5
> WARNING: CPU: 3 PID: 9327 at
> backports-2017-11-01/net/mac80211/sta_info.c:1001
> sta_set_sinfo+0x9f4/0xa94 [mac80211]
>
> (Unfortunately I do not have the whole log, but I'll try to reproduce
> this again).
>
> It seems like that there was something wrong with the firmware, since
> we were getting errors that the driver practically cannot set any of
> the parameters. Those messages were for 5GHZ, on 2.4GHz everything
> seemed to be normal.
>
> We also tried with the ath10k-ct driver and we didn't see any errors
> there. But there is a huge difference between the drivers, since
> ath10k-ct only allows up to 32 devices to connect, while ath10k driver
> allows up to 512 devices.
> Any idea why?

I compile out the swap-to-host-ram logic for peer objects in the ath10k-ct firmware,
so it probably cannot handle 512 peers no matter what.

But, you can use fwcfg to configure more than 32.  We routinely test with
128-ish peers on 9984 and 9880 chips with our firmware, and have not tried
to optimize for more peers.

https://www.candelatech.com/ath10k-10.4.php#config

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

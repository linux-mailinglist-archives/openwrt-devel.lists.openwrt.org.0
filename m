Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CF910A561
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 Nov 2019 21:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TFLr9+1O5OleNXxXJOJvQfsog9Nr9aDJVnP3jJtiH80=; b=u/huRhTFGudJ1W2NoEOr4aGHG
	oeOclzj+I3t1+2yAJc2rS84TCHfGzQVsgf9lh7ySToei9nPCqC9884Fkq20RAVTKyDpsJYbBPj8XM
	EGGtPN62aybmsUaEPvXhpJFxnBIt80cddEDRdqA0SR9qIeuuK2EILQ18MEvR/UPdZ3rrzzGt0kAi8
	k0w+pE8UK4cn8pxGQK/7uU3jmwmN5vRnF3TKdh9u2H/t94PG0ZeQpfXe1mfpvD/xL7Q/Ag4EWWP12
	uYqmLTvp0CJpwtXmgNxfaxgmvDmcT4HzxZirlzI952GutLkzTrJs2WGPM5qllrFTefKpUVBe/ysP4
	BmxVDGwow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZhME-0006WQ-3A; Tue, 26 Nov 2019 20:22:46 +0000
Received: from [2001:41d0:305:2100::8f39] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZhM4-0006W0-CB
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 20:22:38 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id D7208FA825; Tue, 26 Nov 2019 21:22:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1574799729;
 bh=dIWwgB310AZ61fWppbdi5So/TGslfpnideMJIh7aE7g=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=Kja/LXb65+8hufDfvVOwS2HYp+eHHf58RNWpz4kjOaTZOto17AhpCy4cWcJDgRQLT
 FuTpb6gs+EUfmfrKySz5RrOp0vjgD2ywNOMvdpTjV3Ro6ZyVe7lhnOVRITx4WN41Xs
 wLeQiID8b+UIPXAKh0xCOrjPyqpV4iO0kmCLbTCI=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=unavailable
 autolearn_force=no version=3.4.2
Received: from [10.0.0.5] (213.219.161.238.adsl.dyn.edpnet.net
 [213.219.161.238])
 by volatilesystems.org (Postfix) with ESMTPSA id A1774FA823;
 Tue, 26 Nov 2019 21:22:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1574799726;
 bh=dIWwgB310AZ61fWppbdi5So/TGslfpnideMJIh7aE7g=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=UcTXfWhdAf/aMw8ibWdDymj9EFC+2qISpiTd/rEselPXSTynO4dPI3iKUWS87fUsR
 pL7UN5gaaGg5np1RmLsf5zZMoK87e8+GF901vvkgbvMlnQDgsqQp6GtcP43oBrGtZp
 mMboyEp4G1XmLqIpM7nEGn2lPMBwawPzApyVS+8Y=
Date: Tue, 26 Nov 2019 21:22:05 +0100
From: Stijn Segers <foss@volatilesystems.org>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-Id: <1574799725.1719.0@volatilesystems.org>
In-Reply-To: <003001d5a470$72a2c520$57e84f60$@adrianschmutzler.de>
References: <20191126130111.31134-1-fercerpav@gmail.com>
 <003001d5a470$72a2c520$57e84f60$@adrianschmutzler.de>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_122236_578236_D7E3E3D6 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] [RFC][PATCH] ath79-tiny: enable 4k sectors
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
Cc: 'Paul Fertser' <fercerpav@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



Op dinsdag 26 november 2019 om 16:44 schreef Adrian Schmutzler 
<mail@adrianschmutzler.de>:
> Hi,
> 
>>  -----Original Message-----
>>  From: openwrt-devel 
>> [mailto:openwrt-devel-bounces@lists.openwrt.org] On
>>  Behalf Of Paul Fertser
>>  Sent: Dienstag, 26. November 2019 14:01
>>  To: openwrt-devel@lists.openwrt.org
>>  Cc: Paul Fertser <fercerpav@gmail.com>
>>  Subject: [OpenWrt-Devel] [RFC][PATCH] ath79-tiny: enable 4k sectors
>> 
>>  This enables using 4kiB sectors as erase blocks for 4MiB NOR flash 
>> ICs
>>  that support it.
>> 
>>  Writeable jffs2 overlay used to store settings requires a partition 
>> with
>>  at least 5 erase blocks, so using small sectors is essential for 
>> devices
>>  with 4MiB flash.
>> 
>>  Sysupgrading a device running firmware without this feature will 
>> likely
>>  not allow to preserve configs automatically but since ath79 is
>>  considered to be in a "technology preview" state it shouldn't be a
>>  problem.
> 
> Because of this reason, we should ask ourselves whether we want to 
> backport this to 19.07, so all (non-RC) released ath79-tiny images 
> have 4k sectors, while we still can.
> Otherwise, with 20.xx having different sectors than 19.xx, users will 
> be more confused than with us now changing behavior during rc-period.

As a non-voting small time contributor I'd say: yes to pushing it to 
19.07 now. People are already being encouraged not to keep settings 
migrating from pre-19.07 ar71xx to 19.07 ath79, so two birds with one 
stone.

Cheers

Stijn

> 
> Best
> 
> Adrian
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10388E8962
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 14:24:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9av+68/mi4WU8TUqCQICddd4vp4QuS2NA5iYWN6VR4s=; b=pgaG1xE0OQZT4zIpdk6VM5H8H
	yFQ0SSixwID30jAsnyjNW6FVUd9/2hPqosUQq5JqHggZ/tEHMMI0/imp607EQGOv+sH8RBGnniGAP
	Dl4hC5ohqU+qkMl1DrigtSTMaHm6PrsttlZOU4PZeCQTyEZXcyzKKPVOCOnnFZkiMf67Byi06aJhd
	7aHPv05tEk//qYgPty4xHAiILuGMuUur09Y1DwGlafhoLerCh1YGBHR6h3LCnPFWrWMBiWRqFLCwR
	GECsZYoea0q/tAiFzyoJo3VtGN1FpidVQvoyt8/uGa9XN/07MuSJKzVhWl4lSFyb19n6UiY1t45K4
	rSLykYPOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRTj-0007l6-O6; Tue, 29 Oct 2019 13:24:07 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRTX-0007kA-DL
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 13:23:56 +0000
Received: from [192.168.1.47] (unknown [50.34.216.97])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id B0329137562;
 Tue, 29 Oct 2019 06:23:53 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com B0329137562
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1572355434;
 bh=slz+swJRx4sFbhub5zid4t+p4c/7Xg4CIay7n7NJ5+U=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
 b=SMGO3DUaBagcT3xPSpomfWarJznqlXrPyx43ut/P2dQcguF6fEtJO9pyyZ4EE5OVm
 g850qYTeisPGtwVxJGmGXfcJ2YbqznCGoO05SVYOCR/Ce/cySVn7cbK/lBTrWuq+gd
 8PCNcgGNUhfnMFRbzS2BV1uVRGIGiaV7qBN2s0lM=
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <fa883a60-0d29-5cb9-7b54-3cab5485ec84@candelatech.com>
 <20191029061412.GF22393@meh.true.cz>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <7364b927-20ae-1f46-2151-4a0266cd5463@candelatech.com>
Date: Tue, 29 Oct 2019 06:23:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20191029061412.GF22393@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_062355_477041_A748A1CD 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Any interest in a 'ct' iperf3?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



On 10/28/2019 11:14 PM, Petr =8Atetiar wrote:
> Ben Greear <greearb@candelatech.com> [2019-10-28 14:42:32]:
>
> Hi Ben,
>
>> found and fixed a bunch of issues
>
> apart from lack of time, do you've any other good reason to not upstream =
those
> changes? :-)

The original SO_BINDTODEVICE patches were offered upstream
and there is no interest.  My recent changes would need
rebasing to clean them up before upstreaming, and I am not going
to spend any serious time on that since I'd still have to run
my own tree to get the SO_BINDTODEVICE patches and anything
else not accepted upstream.

Thanks,
Ben

>
>> and of course possibly added some new bugs.
>
> As always, those could be probably spotted by another pair of eyes during
> upstream review process.
>
>> Is there any interest in adding an iperf3-ct option to openwrt?
>
> I can't speak for the rest, but from my point of view we don't need extra
> package for that purpose.
>
>>   * Support SO_BINDTODEVICE.
>>   * Make sockets non-blocking to fix various ways the client and server =
can hang.
>>   * Server will recover from client doing bad things or dying unexpected=
ly.
>>   * Fix socket leaks
>>   * Allow compiling for win32 using mingw cross-compiler.
>>   * Report summary stats in all cases on both client and server.
>
> Those changes looks like a good upstream material.
>
> -- ynezz
>

-- =

Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC075C1121
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Sep 2019 17:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NClUP8SbSnb9gmhD5ZFRtVZZ3fkp9XqADzuwJhCuvc0=; b=Ae2S7jmB96xI9x3Diro6NKCjF
	CxaFC8lmv6k1O821rodEoxue0ZBvB1Mrn7YUQ0DBx05JHxHu+JbGYLurTbjqHqYz5O+vLaAihOQKL
	WO6C+FQX2Nl+Nhc9q3u5E9OSuUxAb5PPHEQe4rISGWLumVMI7tDLRiGXRdrZEY2awHqyjjQgpiiOC
	fi/AMyIgLa+lLyTYphCgxQwkqaEh3rMxE4jc0DlI6YhUUkWWmkSmDEY5EpW3HVU9SZCJjUp4+MLzw
	Hwxuzd3Z+PF4hwsBUdhJ0jSKIZ7Tj4GZ9Ppddfy/g75qwxR42oCghFmxHMF3+3Yp5BQhunMOnwXBd
	M+1piIYBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEELt-0007t0-8d; Sat, 28 Sep 2019 15:09:41 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEELm-0007sY-Pe
 for openwrt-devel@lists.openwrt.org; Sat, 28 Sep 2019 15:09:36 +0000
Received: from ubuntu.pn.wagsky.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 596A63DCCE;
 Sat, 28 Sep 2019 08:09:32 -0700 (PDT)
To: Chuanhong Guo <gch981213@gmail.com>
References: <20190927163322.10386-1-lede@allycomm.com>
 <CAJsYDV+OexhmkTSN4KppYzr_LSUdzapEAooPJBMRZ7tKrDy+kA@mail.gmail.com>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <11317f9a-5954-5793-3f02-a1de0a85c54a@allycomm.com>
Date: Sat, 28 Sep 2019 08:09:32 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAJsYDV+OexhmkTSN4KppYzr_LSUdzapEAooPJBMRZ7tKrDy+kA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_080934_834669_C635488E 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 0/1] ath79: Restore GL.iNet
 GL-AR300M-Lite first-boot connectivity
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 9/27/19 6:39 PM, Chuanhong Guo wrote:
> Hi!
>
> On Sat, Sep 28, 2019 at 12:33 AM Jeff Kletsky <lede@allycomm.com> wrote:
>> [...]
>> As suggested by Alberto Bursi in the linked thread, one approach to
>> resolution would be to disable the "unused" interface, GMAC1. This
>> would have the additional advantage of removing the unconnected
>> interface from the kernel and end-user visibility. By disabling GMAC1,
>> it was expected that GMAC0 would be identified by the kernel as "eth0"
>> as the sole Ethernet interface visible.
>>
>> &eth1 {
>>         status = "disabled";
>> };
>>
> To disable GMAC1, you should use the following:
> &eth1 {
>         compatible = "syscon", "simple-mfd";
> }
>
Thanks, yes, setting it as a MFD results in GMAC0 being able to connect 
to the phy.

Initial version of patch withdrawn. Will submit a v2 later on.

Jeff



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

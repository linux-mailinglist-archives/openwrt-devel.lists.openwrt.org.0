Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C20C0138CAD
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Jan 2020 09:14:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o1YW7o0jjBbkPFoM3D5tGYncElhBtS+H6b6ZxMNz90Y=; b=fZuh7C7/ZDBYEsvfSXT7NNINT
	pogviqj0xmYMgd6NwzgCyEz363Xb/HpIMq2CL0sDwkAVu1sVbePzJEHdzl6PHQ/QyBu0L0jVID2tr
	Cef2o2HMAxBramyFEe0bRKB5c19ef8fEbi1G965TyZL7gnOnfC8sT/iQiLNxO5BvtUjTc8wS1YxWX
	EjMWfIFVHk51AWQNNH7LREOVXle6zkS0UB6VT1w5V7Bp/lYR4zi4MYuL2O99xwyxgwHeR0kZ3ky6N
	dpJ8YHCdmmfke2xU41bsa0DtQXWDFMmOqRGmgMnqR+whtoH1q1Js72Y+1gjwns6p04L7r3nxDgTdB
	Ze7blR6LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqurI-0006w2-F3; Mon, 13 Jan 2020 08:14:00 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqurA-0006vc-Oy
 for openwrt-devel@lists.openwrt.org; Mon, 13 Jan 2020 08:13:54 +0000
X-Originating-IP: 72.234.165.80
Received: from [192.168.200.110] (udp050203uds.hawaiiantel.net [72.234.165.80])
 (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 5697340005;
 Mon, 13 Jan 2020 08:13:44 +0000 (UTC)
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
 <CAFBinCByt2Jukn5ZgtrABF2OtqduT733LEvvZLqd97j60Vj9dQ@mail.gmail.com>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <4f4382fd-ab37-cccb-5bca-b20ab13c1f96@aparcar.org>
Date: Sun, 12 Jan 2020 22:13:42 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAFBinCByt2Jukn5ZgtrABF2OtqduT733LEvvZLqd97j60Vj9dQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_001352_949101_A0BFD807 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [RFC] commit message in YAML format for new
 devices
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On 1/12/20 1:05 PM, Martin Blumenstingl wrote:
> Hi Paul,
>
> On Sun, Jan 12, 2020 at 10:47 PM Paul Spooren <mail@aparcar.org> wrote:
>> Hi all,
>>
>> some time ago I created a (now outdated) device overview[0] based on
>> YAML meta data. This approach could simplify maintaining an device
>> overview and device specific pages[1].
>>
>> All commits adding new devices already include most relevant information
>> for creating the overview. However it would be convenient if developers
>> would format their commit messages in a generic format, therefore I'd
>> propose the following:
>>
>> Every commit message for newly added devices must contain a number of
>> hardware information and steps for an initial installation.
>> The hardware information should contain at least the following
>> information, maybe more:
>>
>> SoC, flash, ram, wifi, LEDs, buttons, USB, serial, vendor, model, device
>> tree ID, Ethernet ports
> can we automate this somehow?
> the device tree files already contain most of that information.

If you have a tool to extract such data or ideas on how to create such, 
that'd be great.

As an alternative I could also create a shell script that extracts data 
on a running machine, but that might miss some details.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
